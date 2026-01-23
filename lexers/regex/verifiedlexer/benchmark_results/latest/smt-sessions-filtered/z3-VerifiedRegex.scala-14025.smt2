; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740686 () Bool)

(assert start!740686)

(declare-fun b!7784329 () Bool)

(declare-fun e!4610706 () Bool)

(declare-fun tp!2288754 () Bool)

(assert (=> b!7784329 (= e!4610706 tp!2288754)))

(declare-fun res!3102621 () Bool)

(declare-fun e!4610705 () Bool)

(assert (=> start!740686 (=> (not res!3102621) (not e!4610705))))

(declare-datatypes ((C!42016 0))(
  ( (C!42017 (val!31448 Int)) )
))
(declare-datatypes ((Regex!20845 0))(
  ( (ElementMatch!20845 (c!1434158 C!42016)) (Concat!29690 (regOne!42202 Regex!20845) (regTwo!42202 Regex!20845)) (EmptyExpr!20845) (Star!20845 (reg!21174 Regex!20845)) (EmptyLang!20845) (Union!20845 (regOne!42203 Regex!20845) (regTwo!42203 Regex!20845)) )
))
(declare-fun r1!6279 () Regex!20845)

(declare-fun validRegex!11259 (Regex!20845) Bool)

(assert (=> start!740686 (= res!3102621 (validRegex!11259 r1!6279))))

(assert (=> start!740686 e!4610705))

(declare-fun e!4610704 () Bool)

(assert (=> start!740686 e!4610704))

(assert (=> start!740686 e!4610706))

(declare-fun e!4610709 () Bool)

(assert (=> start!740686 e!4610709))

(declare-fun b!7784330 () Bool)

(declare-fun tp_is_empty!52045 () Bool)

(assert (=> b!7784330 (= e!4610704 tp_is_empty!52045)))

(declare-fun b!7784331 () Bool)

(declare-fun tp!2288762 () Bool)

(assert (=> b!7784331 (= e!4610709 (and tp_is_empty!52045 tp!2288762))))

(declare-fun b!7784332 () Bool)

(declare-fun tp!2288761 () Bool)

(assert (=> b!7784332 (= e!4610704 tp!2288761)))

(declare-fun b!7784333 () Bool)

(declare-fun tp!2288758 () Bool)

(declare-fun tp!2288757 () Bool)

(assert (=> b!7784333 (= e!4610704 (and tp!2288758 tp!2288757))))

(declare-fun b!7784334 () Bool)

(declare-fun tp!2288756 () Bool)

(declare-fun tp!2288759 () Bool)

(assert (=> b!7784334 (= e!4610706 (and tp!2288756 tp!2288759))))

(declare-fun b!7784335 () Bool)

(assert (=> b!7784335 (= e!4610706 tp_is_empty!52045)))

(declare-fun b!7784336 () Bool)

(declare-fun res!3102619 () Bool)

(declare-fun e!4610708 () Bool)

(assert (=> b!7784336 (=> (not res!3102619) (not e!4610708))))

(declare-datatypes ((List!73684 0))(
  ( (Nil!73560) (Cons!73560 (h!80008 C!42016) (t!388419 List!73684)) )
))
(declare-fun s!14292 () List!73684)

(get-info :version)

(assert (=> b!7784336 (= res!3102619 ((_ is Cons!73560) s!14292))))

(declare-fun b!7784337 () Bool)

(declare-fun e!4610707 () Bool)

(assert (=> b!7784337 (= e!4610708 e!4610707)))

(declare-fun res!3102617 () Bool)

(assert (=> b!7784337 (=> (not res!3102617) (not e!4610707))))

(declare-fun lt!2673318 () Regex!20845)

(declare-fun matchR!10305 (Regex!20845 List!73684) Bool)

(assert (=> b!7784337 (= res!3102617 (matchR!10305 lt!2673318 (t!388419 s!14292)))))

(declare-fun lt!2673317 () Regex!20845)

(declare-fun derivativeStep!6182 (Regex!20845 C!42016) Regex!20845)

(assert (=> b!7784337 (= lt!2673318 (derivativeStep!6182 lt!2673317 (h!80008 s!14292)))))

(declare-fun b!7784338 () Bool)

(declare-fun res!3102622 () Bool)

(assert (=> b!7784338 (=> (not res!3102622) (not e!4610707))))

(declare-fun nullable!9229 (Regex!20845) Bool)

(assert (=> b!7784338 (= res!3102622 (not (nullable!9229 r1!6279)))))

(declare-fun b!7784339 () Bool)

(declare-fun tp!2288755 () Bool)

(declare-fun tp!2288753 () Bool)

(assert (=> b!7784339 (= e!4610706 (and tp!2288755 tp!2288753))))

(declare-fun b!7784340 () Bool)

(assert (=> b!7784340 (= e!4610705 e!4610708)))

(declare-fun res!3102620 () Bool)

(assert (=> b!7784340 (=> (not res!3102620) (not e!4610708))))

(assert (=> b!7784340 (= res!3102620 (matchR!10305 lt!2673317 s!14292))))

(declare-fun r2!6217 () Regex!20845)

(assert (=> b!7784340 (= lt!2673317 (Concat!29690 r1!6279 r2!6217))))

(declare-fun b!7784341 () Bool)

(declare-fun tp!2288760 () Bool)

(declare-fun tp!2288763 () Bool)

(assert (=> b!7784341 (= e!4610704 (and tp!2288760 tp!2288763))))

(declare-fun b!7784342 () Bool)

(declare-fun res!3102618 () Bool)

(assert (=> b!7784342 (=> (not res!3102618) (not e!4610705))))

(assert (=> b!7784342 (= res!3102618 (validRegex!11259 r2!6217))))

(declare-fun b!7784343 () Bool)

(assert (=> b!7784343 (= e!4610707 (not (= lt!2673318 (Union!20845 (Concat!29690 (derivativeStep!6182 r1!6279 (h!80008 s!14292)) r2!6217) EmptyLang!20845))))))

(assert (= (and start!740686 res!3102621) b!7784342))

(assert (= (and b!7784342 res!3102618) b!7784340))

(assert (= (and b!7784340 res!3102620) b!7784336))

(assert (= (and b!7784336 res!3102619) b!7784337))

(assert (= (and b!7784337 res!3102617) b!7784338))

(assert (= (and b!7784338 res!3102622) b!7784343))

(assert (= (and start!740686 ((_ is ElementMatch!20845) r1!6279)) b!7784330))

(assert (= (and start!740686 ((_ is Concat!29690) r1!6279)) b!7784333))

(assert (= (and start!740686 ((_ is Star!20845) r1!6279)) b!7784332))

(assert (= (and start!740686 ((_ is Union!20845) r1!6279)) b!7784341))

(assert (= (and start!740686 ((_ is ElementMatch!20845) r2!6217)) b!7784335))

(assert (= (and start!740686 ((_ is Concat!29690) r2!6217)) b!7784339))

(assert (= (and start!740686 ((_ is Star!20845) r2!6217)) b!7784329))

(assert (= (and start!740686 ((_ is Union!20845) r2!6217)) b!7784334))

(assert (= (and start!740686 ((_ is Cons!73560) s!14292)) b!7784331))

(declare-fun m!8230328 () Bool)

(assert (=> b!7784338 m!8230328))

(declare-fun m!8230330 () Bool)

(assert (=> b!7784340 m!8230330))

(declare-fun m!8230332 () Bool)

(assert (=> b!7784343 m!8230332))

(declare-fun m!8230334 () Bool)

(assert (=> b!7784342 m!8230334))

(declare-fun m!8230336 () Bool)

(assert (=> start!740686 m!8230336))

(declare-fun m!8230338 () Bool)

(assert (=> b!7784337 m!8230338))

(declare-fun m!8230340 () Bool)

(assert (=> b!7784337 m!8230340))

(check-sat (not b!7784331) (not b!7784340) (not b!7784329) (not b!7784332) tp_is_empty!52045 (not b!7784342) (not b!7784333) (not b!7784337) (not start!740686) (not b!7784339) (not b!7784338) (not b!7784334) (not b!7784343) (not b!7784341))
(check-sat)
(get-model)

(declare-fun b!7784414 () Bool)

(declare-fun e!4610750 () Bool)

(declare-fun e!4610745 () Bool)

(assert (=> b!7784414 (= e!4610750 e!4610745)))

(declare-fun c!1434175 () Bool)

(assert (=> b!7784414 (= c!1434175 ((_ is EmptyLang!20845) lt!2673318))))

(declare-fun b!7784415 () Bool)

(declare-fun res!3102666 () Bool)

(declare-fun e!4610747 () Bool)

(assert (=> b!7784415 (=> res!3102666 e!4610747)))

(declare-fun e!4610746 () Bool)

(assert (=> b!7784415 (= res!3102666 e!4610746)))

(declare-fun res!3102667 () Bool)

(assert (=> b!7784415 (=> (not res!3102667) (not e!4610746))))

(declare-fun lt!2673324 () Bool)

(assert (=> b!7784415 (= res!3102667 lt!2673324)))

(declare-fun b!7784416 () Bool)

(assert (=> b!7784416 (= e!4610745 (not lt!2673324))))

(declare-fun bm!721525 () Bool)

(declare-fun call!721530 () Bool)

(declare-fun isEmpty!42197 (List!73684) Bool)

(assert (=> bm!721525 (= call!721530 (isEmpty!42197 (t!388419 s!14292)))))

(declare-fun b!7784417 () Bool)

(declare-fun e!4610749 () Bool)

(assert (=> b!7784417 (= e!4610749 (nullable!9229 lt!2673318))))

(declare-fun b!7784418 () Bool)

(assert (=> b!7784418 (= e!4610750 (= lt!2673324 call!721530))))

(declare-fun b!7784419 () Bool)

(declare-fun res!3102663 () Bool)

(assert (=> b!7784419 (=> res!3102663 e!4610747)))

(assert (=> b!7784419 (= res!3102663 (not ((_ is ElementMatch!20845) lt!2673318)))))

(assert (=> b!7784419 (= e!4610745 e!4610747)))

(declare-fun b!7784420 () Bool)

(declare-fun e!4610751 () Bool)

(declare-fun head!15924 (List!73684) C!42016)

(assert (=> b!7784420 (= e!4610751 (not (= (head!15924 (t!388419 s!14292)) (c!1434158 lt!2673318))))))

(declare-fun b!7784421 () Bool)

(declare-fun res!3102669 () Bool)

(assert (=> b!7784421 (=> (not res!3102669) (not e!4610746))))

(assert (=> b!7784421 (= res!3102669 (not call!721530))))

(declare-fun d!2345436 () Bool)

(assert (=> d!2345436 e!4610750))

(declare-fun c!1434176 () Bool)

(assert (=> d!2345436 (= c!1434176 ((_ is EmptyExpr!20845) lt!2673318))))

(assert (=> d!2345436 (= lt!2673324 e!4610749)))

(declare-fun c!1434174 () Bool)

(assert (=> d!2345436 (= c!1434174 (isEmpty!42197 (t!388419 s!14292)))))

(assert (=> d!2345436 (validRegex!11259 lt!2673318)))

(assert (=> d!2345436 (= (matchR!10305 lt!2673318 (t!388419 s!14292)) lt!2673324)))

(declare-fun b!7784422 () Bool)

(assert (=> b!7784422 (= e!4610746 (= (head!15924 (t!388419 s!14292)) (c!1434158 lt!2673318)))))

(declare-fun b!7784423 () Bool)

(declare-fun e!4610748 () Bool)

(assert (=> b!7784423 (= e!4610748 e!4610751)))

(declare-fun res!3102665 () Bool)

(assert (=> b!7784423 (=> res!3102665 e!4610751)))

(assert (=> b!7784423 (= res!3102665 call!721530)))

(declare-fun b!7784424 () Bool)

(declare-fun res!3102668 () Bool)

(assert (=> b!7784424 (=> res!3102668 e!4610751)))

(declare-fun tail!15465 (List!73684) List!73684)

(assert (=> b!7784424 (= res!3102668 (not (isEmpty!42197 (tail!15465 (t!388419 s!14292)))))))

(declare-fun b!7784425 () Bool)

(assert (=> b!7784425 (= e!4610747 e!4610748)))

(declare-fun res!3102670 () Bool)

(assert (=> b!7784425 (=> (not res!3102670) (not e!4610748))))

(assert (=> b!7784425 (= res!3102670 (not lt!2673324))))

(declare-fun b!7784426 () Bool)

(declare-fun res!3102664 () Bool)

(assert (=> b!7784426 (=> (not res!3102664) (not e!4610746))))

(assert (=> b!7784426 (= res!3102664 (isEmpty!42197 (tail!15465 (t!388419 s!14292))))))

(declare-fun b!7784427 () Bool)

(assert (=> b!7784427 (= e!4610749 (matchR!10305 (derivativeStep!6182 lt!2673318 (head!15924 (t!388419 s!14292))) (tail!15465 (t!388419 s!14292))))))

(assert (= (and d!2345436 c!1434174) b!7784417))

(assert (= (and d!2345436 (not c!1434174)) b!7784427))

(assert (= (and d!2345436 c!1434176) b!7784418))

(assert (= (and d!2345436 (not c!1434176)) b!7784414))

(assert (= (and b!7784414 c!1434175) b!7784416))

(assert (= (and b!7784414 (not c!1434175)) b!7784419))

(assert (= (and b!7784419 (not res!3102663)) b!7784415))

(assert (= (and b!7784415 res!3102667) b!7784421))

(assert (= (and b!7784421 res!3102669) b!7784426))

(assert (= (and b!7784426 res!3102664) b!7784422))

(assert (= (and b!7784415 (not res!3102666)) b!7784425))

(assert (= (and b!7784425 res!3102670) b!7784423))

(assert (= (and b!7784423 (not res!3102665)) b!7784424))

(assert (= (and b!7784424 (not res!3102668)) b!7784420))

(assert (= (or b!7784418 b!7784421 b!7784423) bm!721525))

(declare-fun m!8230358 () Bool)

(assert (=> b!7784426 m!8230358))

(assert (=> b!7784426 m!8230358))

(declare-fun m!8230360 () Bool)

(assert (=> b!7784426 m!8230360))

(assert (=> b!7784424 m!8230358))

(assert (=> b!7784424 m!8230358))

(assert (=> b!7784424 m!8230360))

(declare-fun m!8230362 () Bool)

(assert (=> b!7784420 m!8230362))

(assert (=> b!7784427 m!8230362))

(assert (=> b!7784427 m!8230362))

(declare-fun m!8230364 () Bool)

(assert (=> b!7784427 m!8230364))

(assert (=> b!7784427 m!8230358))

(assert (=> b!7784427 m!8230364))

(assert (=> b!7784427 m!8230358))

(declare-fun m!8230366 () Bool)

(assert (=> b!7784427 m!8230366))

(assert (=> b!7784422 m!8230362))

(declare-fun m!8230368 () Bool)

(assert (=> bm!721525 m!8230368))

(declare-fun m!8230370 () Bool)

(assert (=> b!7784417 m!8230370))

(assert (=> d!2345436 m!8230368))

(declare-fun m!8230372 () Bool)

(assert (=> d!2345436 m!8230372))

(assert (=> b!7784337 d!2345436))

(declare-fun b!7784505 () Bool)

(declare-fun e!4610800 () Regex!20845)

(assert (=> b!7784505 (= e!4610800 EmptyLang!20845)))

(declare-fun call!721560 () Regex!20845)

(declare-fun c!1434210 () Bool)

(declare-fun bm!721555 () Bool)

(assert (=> bm!721555 (= call!721560 (derivativeStep!6182 (ite c!1434210 (regOne!42203 lt!2673317) (regOne!42202 lt!2673317)) (h!80008 s!14292)))))

(declare-fun b!7784506 () Bool)

(declare-fun c!1434208 () Bool)

(assert (=> b!7784506 (= c!1434208 (nullable!9229 (regOne!42202 lt!2673317)))))

(declare-fun e!4610799 () Regex!20845)

(declare-fun e!4610801 () Regex!20845)

(assert (=> b!7784506 (= e!4610799 e!4610801)))

(declare-fun b!7784507 () Bool)

(declare-fun e!4610798 () Regex!20845)

(assert (=> b!7784507 (= e!4610800 e!4610798)))

(declare-fun c!1434211 () Bool)

(assert (=> b!7784507 (= c!1434211 ((_ is ElementMatch!20845) lt!2673317))))

(declare-fun d!2345440 () Bool)

(declare-fun lt!2673330 () Regex!20845)

(assert (=> d!2345440 (validRegex!11259 lt!2673330)))

(assert (=> d!2345440 (= lt!2673330 e!4610800)))

(declare-fun c!1434212 () Bool)

(assert (=> d!2345440 (= c!1434212 (or ((_ is EmptyExpr!20845) lt!2673317) ((_ is EmptyLang!20845) lt!2673317)))))

(assert (=> d!2345440 (validRegex!11259 lt!2673317)))

(assert (=> d!2345440 (= (derivativeStep!6182 lt!2673317 (h!80008 s!14292)) lt!2673330)))

(declare-fun bm!721556 () Bool)

(declare-fun call!721563 () Regex!20845)

(declare-fun call!721562 () Regex!20845)

(assert (=> bm!721556 (= call!721563 call!721562)))

(declare-fun b!7784508 () Bool)

(declare-fun call!721561 () Regex!20845)

(assert (=> b!7784508 (= e!4610801 (Union!20845 (Concat!29690 call!721561 (regTwo!42202 lt!2673317)) EmptyLang!20845))))

(declare-fun b!7784509 () Bool)

(assert (=> b!7784509 (= e!4610801 (Union!20845 (Concat!29690 call!721560 (regTwo!42202 lt!2673317)) call!721561))))

(declare-fun b!7784510 () Bool)

(declare-fun e!4610802 () Regex!20845)

(assert (=> b!7784510 (= e!4610802 e!4610799)))

(declare-fun c!1434209 () Bool)

(assert (=> b!7784510 (= c!1434209 ((_ is Star!20845) lt!2673317))))

(declare-fun bm!721557 () Bool)

(assert (=> bm!721557 (= call!721561 call!721563)))

(declare-fun b!7784511 () Bool)

(assert (=> b!7784511 (= e!4610802 (Union!20845 call!721560 call!721562))))

(declare-fun bm!721558 () Bool)

(assert (=> bm!721558 (= call!721562 (derivativeStep!6182 (ite c!1434210 (regTwo!42203 lt!2673317) (ite c!1434209 (reg!21174 lt!2673317) (ite c!1434208 (regTwo!42202 lt!2673317) (regOne!42202 lt!2673317)))) (h!80008 s!14292)))))

(declare-fun b!7784512 () Bool)

(assert (=> b!7784512 (= e!4610798 (ite (= (h!80008 s!14292) (c!1434158 lt!2673317)) EmptyExpr!20845 EmptyLang!20845))))

(declare-fun b!7784513 () Bool)

(assert (=> b!7784513 (= c!1434210 ((_ is Union!20845) lt!2673317))))

(assert (=> b!7784513 (= e!4610798 e!4610802)))

(declare-fun b!7784514 () Bool)

(assert (=> b!7784514 (= e!4610799 (Concat!29690 call!721563 lt!2673317))))

(assert (= (and d!2345440 c!1434212) b!7784505))

(assert (= (and d!2345440 (not c!1434212)) b!7784507))

(assert (= (and b!7784507 c!1434211) b!7784512))

(assert (= (and b!7784507 (not c!1434211)) b!7784513))

(assert (= (and b!7784513 c!1434210) b!7784511))

(assert (= (and b!7784513 (not c!1434210)) b!7784510))

(assert (= (and b!7784510 c!1434209) b!7784514))

(assert (= (and b!7784510 (not c!1434209)) b!7784506))

(assert (= (and b!7784506 c!1434208) b!7784509))

(assert (= (and b!7784506 (not c!1434208)) b!7784508))

(assert (= (or b!7784509 b!7784508) bm!721557))

(assert (= (or b!7784514 bm!721557) bm!721556))

(assert (= (or b!7784511 bm!721556) bm!721558))

(assert (= (or b!7784511 b!7784509) bm!721555))

(declare-fun m!8230396 () Bool)

(assert (=> bm!721555 m!8230396))

(declare-fun m!8230398 () Bool)

(assert (=> b!7784506 m!8230398))

(declare-fun m!8230400 () Bool)

(assert (=> d!2345440 m!8230400))

(declare-fun m!8230402 () Bool)

(assert (=> d!2345440 m!8230402))

(declare-fun m!8230404 () Bool)

(assert (=> bm!721558 m!8230404))

(assert (=> b!7784337 d!2345440))

(declare-fun b!7784621 () Bool)

(declare-fun e!4610856 () Bool)

(declare-fun call!721578 () Bool)

(assert (=> b!7784621 (= e!4610856 call!721578)))

(declare-fun b!7784622 () Bool)

(declare-fun e!4610857 () Bool)

(declare-fun call!721580 () Bool)

(assert (=> b!7784622 (= e!4610857 call!721580)))

(declare-fun b!7784623 () Bool)

(declare-fun e!4610855 () Bool)

(declare-fun e!4610851 () Bool)

(assert (=> b!7784623 (= e!4610855 e!4610851)))

(declare-fun c!1434228 () Bool)

(assert (=> b!7784623 (= c!1434228 ((_ is Star!20845) r2!6217))))

(declare-fun bm!721573 () Bool)

(declare-fun c!1434227 () Bool)

(assert (=> bm!721573 (= call!721578 (validRegex!11259 (ite c!1434227 (regTwo!42203 r2!6217) (regTwo!42202 r2!6217))))))

(declare-fun b!7784624 () Bool)

(assert (=> b!7784624 (= e!4610851 e!4610857)))

(declare-fun res!3102709 () Bool)

(assert (=> b!7784624 (= res!3102709 (not (nullable!9229 (reg!21174 r2!6217))))))

(assert (=> b!7784624 (=> (not res!3102709) (not e!4610857))))

(declare-fun b!7784625 () Bool)

(declare-fun res!3102712 () Bool)

(declare-fun e!4610853 () Bool)

(assert (=> b!7784625 (=> res!3102712 e!4610853)))

(assert (=> b!7784625 (= res!3102712 (not ((_ is Concat!29690) r2!6217)))))

(declare-fun e!4610854 () Bool)

(assert (=> b!7784625 (= e!4610854 e!4610853)))

(declare-fun b!7784626 () Bool)

(declare-fun e!4610852 () Bool)

(assert (=> b!7784626 (= e!4610853 e!4610852)))

(declare-fun res!3102713 () Bool)

(assert (=> b!7784626 (=> (not res!3102713) (not e!4610852))))

(declare-fun call!721579 () Bool)

(assert (=> b!7784626 (= res!3102713 call!721579)))

(declare-fun b!7784627 () Bool)

(assert (=> b!7784627 (= e!4610851 e!4610854)))

(assert (=> b!7784627 (= c!1434227 ((_ is Union!20845) r2!6217))))

(declare-fun b!7784628 () Bool)

(assert (=> b!7784628 (= e!4610852 call!721578)))

(declare-fun bm!721574 () Bool)

(assert (=> bm!721574 (= call!721579 call!721580)))

(declare-fun b!7784629 () Bool)

(declare-fun res!3102710 () Bool)

(assert (=> b!7784629 (=> (not res!3102710) (not e!4610856))))

(assert (=> b!7784629 (= res!3102710 call!721579)))

(assert (=> b!7784629 (= e!4610854 e!4610856)))

(declare-fun d!2345448 () Bool)

(declare-fun res!3102711 () Bool)

(assert (=> d!2345448 (=> res!3102711 e!4610855)))

(assert (=> d!2345448 (= res!3102711 ((_ is ElementMatch!20845) r2!6217))))

(assert (=> d!2345448 (= (validRegex!11259 r2!6217) e!4610855)))

(declare-fun bm!721575 () Bool)

(assert (=> bm!721575 (= call!721580 (validRegex!11259 (ite c!1434228 (reg!21174 r2!6217) (ite c!1434227 (regOne!42203 r2!6217) (regOne!42202 r2!6217)))))))

(assert (= (and d!2345448 (not res!3102711)) b!7784623))

(assert (= (and b!7784623 c!1434228) b!7784624))

(assert (= (and b!7784623 (not c!1434228)) b!7784627))

(assert (= (and b!7784624 res!3102709) b!7784622))

(assert (= (and b!7784627 c!1434227) b!7784629))

(assert (= (and b!7784627 (not c!1434227)) b!7784625))

(assert (= (and b!7784629 res!3102710) b!7784621))

(assert (= (and b!7784625 (not res!3102712)) b!7784626))

(assert (= (and b!7784626 res!3102713) b!7784628))

(assert (= (or b!7784629 b!7784626) bm!721574))

(assert (= (or b!7784621 b!7784628) bm!721573))

(assert (= (or b!7784622 bm!721574) bm!721575))

(declare-fun m!8230430 () Bool)

(assert (=> bm!721573 m!8230430))

(declare-fun m!8230432 () Bool)

(assert (=> b!7784624 m!8230432))

(declare-fun m!8230434 () Bool)

(assert (=> bm!721575 m!8230434))

(assert (=> b!7784342 d!2345448))

(declare-fun b!7784630 () Bool)

(declare-fun e!4610863 () Bool)

(declare-fun e!4610858 () Bool)

(assert (=> b!7784630 (= e!4610863 e!4610858)))

(declare-fun c!1434230 () Bool)

(assert (=> b!7784630 (= c!1434230 ((_ is EmptyLang!20845) lt!2673317))))

(declare-fun b!7784631 () Bool)

(declare-fun res!3102717 () Bool)

(declare-fun e!4610860 () Bool)

(assert (=> b!7784631 (=> res!3102717 e!4610860)))

(declare-fun e!4610859 () Bool)

(assert (=> b!7784631 (= res!3102717 e!4610859)))

(declare-fun res!3102718 () Bool)

(assert (=> b!7784631 (=> (not res!3102718) (not e!4610859))))

(declare-fun lt!2673333 () Bool)

(assert (=> b!7784631 (= res!3102718 lt!2673333)))

(declare-fun b!7784632 () Bool)

(assert (=> b!7784632 (= e!4610858 (not lt!2673333))))

(declare-fun bm!721576 () Bool)

(declare-fun call!721581 () Bool)

(assert (=> bm!721576 (= call!721581 (isEmpty!42197 s!14292))))

(declare-fun b!7784633 () Bool)

(declare-fun e!4610862 () Bool)

(assert (=> b!7784633 (= e!4610862 (nullable!9229 lt!2673317))))

(declare-fun b!7784634 () Bool)

(assert (=> b!7784634 (= e!4610863 (= lt!2673333 call!721581))))

(declare-fun b!7784635 () Bool)

(declare-fun res!3102714 () Bool)

(assert (=> b!7784635 (=> res!3102714 e!4610860)))

(assert (=> b!7784635 (= res!3102714 (not ((_ is ElementMatch!20845) lt!2673317)))))

(assert (=> b!7784635 (= e!4610858 e!4610860)))

(declare-fun b!7784636 () Bool)

(declare-fun e!4610864 () Bool)

(assert (=> b!7784636 (= e!4610864 (not (= (head!15924 s!14292) (c!1434158 lt!2673317))))))

(declare-fun b!7784637 () Bool)

(declare-fun res!3102720 () Bool)

(assert (=> b!7784637 (=> (not res!3102720) (not e!4610859))))

(assert (=> b!7784637 (= res!3102720 (not call!721581))))

(declare-fun d!2345454 () Bool)

(assert (=> d!2345454 e!4610863))

(declare-fun c!1434231 () Bool)

(assert (=> d!2345454 (= c!1434231 ((_ is EmptyExpr!20845) lt!2673317))))

(assert (=> d!2345454 (= lt!2673333 e!4610862)))

(declare-fun c!1434229 () Bool)

(assert (=> d!2345454 (= c!1434229 (isEmpty!42197 s!14292))))

(assert (=> d!2345454 (validRegex!11259 lt!2673317)))

(assert (=> d!2345454 (= (matchR!10305 lt!2673317 s!14292) lt!2673333)))

(declare-fun b!7784638 () Bool)

(assert (=> b!7784638 (= e!4610859 (= (head!15924 s!14292) (c!1434158 lt!2673317)))))

(declare-fun b!7784639 () Bool)

(declare-fun e!4610861 () Bool)

(assert (=> b!7784639 (= e!4610861 e!4610864)))

(declare-fun res!3102716 () Bool)

(assert (=> b!7784639 (=> res!3102716 e!4610864)))

(assert (=> b!7784639 (= res!3102716 call!721581)))

(declare-fun b!7784640 () Bool)

(declare-fun res!3102719 () Bool)

(assert (=> b!7784640 (=> res!3102719 e!4610864)))

(assert (=> b!7784640 (= res!3102719 (not (isEmpty!42197 (tail!15465 s!14292))))))

(declare-fun b!7784641 () Bool)

(assert (=> b!7784641 (= e!4610860 e!4610861)))

(declare-fun res!3102721 () Bool)

(assert (=> b!7784641 (=> (not res!3102721) (not e!4610861))))

(assert (=> b!7784641 (= res!3102721 (not lt!2673333))))

(declare-fun b!7784642 () Bool)

(declare-fun res!3102715 () Bool)

(assert (=> b!7784642 (=> (not res!3102715) (not e!4610859))))

(assert (=> b!7784642 (= res!3102715 (isEmpty!42197 (tail!15465 s!14292)))))

(declare-fun b!7784643 () Bool)

(assert (=> b!7784643 (= e!4610862 (matchR!10305 (derivativeStep!6182 lt!2673317 (head!15924 s!14292)) (tail!15465 s!14292)))))

(assert (= (and d!2345454 c!1434229) b!7784633))

(assert (= (and d!2345454 (not c!1434229)) b!7784643))

(assert (= (and d!2345454 c!1434231) b!7784634))

(assert (= (and d!2345454 (not c!1434231)) b!7784630))

(assert (= (and b!7784630 c!1434230) b!7784632))

(assert (= (and b!7784630 (not c!1434230)) b!7784635))

(assert (= (and b!7784635 (not res!3102714)) b!7784631))

(assert (= (and b!7784631 res!3102718) b!7784637))

(assert (= (and b!7784637 res!3102720) b!7784642))

(assert (= (and b!7784642 res!3102715) b!7784638))

(assert (= (and b!7784631 (not res!3102717)) b!7784641))

(assert (= (and b!7784641 res!3102721) b!7784639))

(assert (= (and b!7784639 (not res!3102716)) b!7784640))

(assert (= (and b!7784640 (not res!3102719)) b!7784636))

(assert (= (or b!7784634 b!7784637 b!7784639) bm!721576))

(declare-fun m!8230436 () Bool)

(assert (=> b!7784642 m!8230436))

(assert (=> b!7784642 m!8230436))

(declare-fun m!8230438 () Bool)

(assert (=> b!7784642 m!8230438))

(assert (=> b!7784640 m!8230436))

(assert (=> b!7784640 m!8230436))

(assert (=> b!7784640 m!8230438))

(declare-fun m!8230440 () Bool)

(assert (=> b!7784636 m!8230440))

(assert (=> b!7784643 m!8230440))

(assert (=> b!7784643 m!8230440))

(declare-fun m!8230442 () Bool)

(assert (=> b!7784643 m!8230442))

(assert (=> b!7784643 m!8230436))

(assert (=> b!7784643 m!8230442))

(assert (=> b!7784643 m!8230436))

(declare-fun m!8230444 () Bool)

(assert (=> b!7784643 m!8230444))

(assert (=> b!7784638 m!8230440))

(declare-fun m!8230446 () Bool)

(assert (=> bm!721576 m!8230446))

(declare-fun m!8230448 () Bool)

(assert (=> b!7784633 m!8230448))

(assert (=> d!2345454 m!8230446))

(assert (=> d!2345454 m!8230402))

(assert (=> b!7784340 d!2345454))

(declare-fun b!7784644 () Bool)

(declare-fun e!4610870 () Bool)

(declare-fun call!721582 () Bool)

(assert (=> b!7784644 (= e!4610870 call!721582)))

(declare-fun b!7784645 () Bool)

(declare-fun e!4610871 () Bool)

(declare-fun call!721584 () Bool)

(assert (=> b!7784645 (= e!4610871 call!721584)))

(declare-fun b!7784646 () Bool)

(declare-fun e!4610869 () Bool)

(declare-fun e!4610865 () Bool)

(assert (=> b!7784646 (= e!4610869 e!4610865)))

(declare-fun c!1434233 () Bool)

(assert (=> b!7784646 (= c!1434233 ((_ is Star!20845) r1!6279))))

(declare-fun bm!721577 () Bool)

(declare-fun c!1434232 () Bool)

(assert (=> bm!721577 (= call!721582 (validRegex!11259 (ite c!1434232 (regTwo!42203 r1!6279) (regTwo!42202 r1!6279))))))

(declare-fun b!7784647 () Bool)

(assert (=> b!7784647 (= e!4610865 e!4610871)))

(declare-fun res!3102722 () Bool)

(assert (=> b!7784647 (= res!3102722 (not (nullable!9229 (reg!21174 r1!6279))))))

(assert (=> b!7784647 (=> (not res!3102722) (not e!4610871))))

(declare-fun b!7784648 () Bool)

(declare-fun res!3102725 () Bool)

(declare-fun e!4610867 () Bool)

(assert (=> b!7784648 (=> res!3102725 e!4610867)))

(assert (=> b!7784648 (= res!3102725 (not ((_ is Concat!29690) r1!6279)))))

(declare-fun e!4610868 () Bool)

(assert (=> b!7784648 (= e!4610868 e!4610867)))

(declare-fun b!7784649 () Bool)

(declare-fun e!4610866 () Bool)

(assert (=> b!7784649 (= e!4610867 e!4610866)))

(declare-fun res!3102726 () Bool)

(assert (=> b!7784649 (=> (not res!3102726) (not e!4610866))))

(declare-fun call!721583 () Bool)

(assert (=> b!7784649 (= res!3102726 call!721583)))

(declare-fun b!7784650 () Bool)

(assert (=> b!7784650 (= e!4610865 e!4610868)))

(assert (=> b!7784650 (= c!1434232 ((_ is Union!20845) r1!6279))))

(declare-fun b!7784651 () Bool)

(assert (=> b!7784651 (= e!4610866 call!721582)))

(declare-fun bm!721578 () Bool)

(assert (=> bm!721578 (= call!721583 call!721584)))

(declare-fun b!7784652 () Bool)

(declare-fun res!3102723 () Bool)

(assert (=> b!7784652 (=> (not res!3102723) (not e!4610870))))

(assert (=> b!7784652 (= res!3102723 call!721583)))

(assert (=> b!7784652 (= e!4610868 e!4610870)))

(declare-fun d!2345456 () Bool)

(declare-fun res!3102724 () Bool)

(assert (=> d!2345456 (=> res!3102724 e!4610869)))

(assert (=> d!2345456 (= res!3102724 ((_ is ElementMatch!20845) r1!6279))))

(assert (=> d!2345456 (= (validRegex!11259 r1!6279) e!4610869)))

(declare-fun bm!721579 () Bool)

(assert (=> bm!721579 (= call!721584 (validRegex!11259 (ite c!1434233 (reg!21174 r1!6279) (ite c!1434232 (regOne!42203 r1!6279) (regOne!42202 r1!6279)))))))

(assert (= (and d!2345456 (not res!3102724)) b!7784646))

(assert (= (and b!7784646 c!1434233) b!7784647))

(assert (= (and b!7784646 (not c!1434233)) b!7784650))

(assert (= (and b!7784647 res!3102722) b!7784645))

(assert (= (and b!7784650 c!1434232) b!7784652))

(assert (= (and b!7784650 (not c!1434232)) b!7784648))

(assert (= (and b!7784652 res!3102723) b!7784644))

(assert (= (and b!7784648 (not res!3102725)) b!7784649))

(assert (= (and b!7784649 res!3102726) b!7784651))

(assert (= (or b!7784652 b!7784649) bm!721578))

(assert (= (or b!7784644 b!7784651) bm!721577))

(assert (= (or b!7784645 bm!721578) bm!721579))

(declare-fun m!8230450 () Bool)

(assert (=> bm!721577 m!8230450))

(declare-fun m!8230452 () Bool)

(assert (=> b!7784647 m!8230452))

(declare-fun m!8230454 () Bool)

(assert (=> bm!721579 m!8230454))

(assert (=> start!740686 d!2345456))

(declare-fun b!7784653 () Bool)

(declare-fun e!4610874 () Regex!20845)

(assert (=> b!7784653 (= e!4610874 EmptyLang!20845)))

(declare-fun c!1434236 () Bool)

(declare-fun call!721585 () Regex!20845)

(declare-fun bm!721580 () Bool)

(assert (=> bm!721580 (= call!721585 (derivativeStep!6182 (ite c!1434236 (regOne!42203 r1!6279) (regOne!42202 r1!6279)) (h!80008 s!14292)))))

(declare-fun b!7784654 () Bool)

(declare-fun c!1434234 () Bool)

(assert (=> b!7784654 (= c!1434234 (nullable!9229 (regOne!42202 r1!6279)))))

(declare-fun e!4610873 () Regex!20845)

(declare-fun e!4610875 () Regex!20845)

(assert (=> b!7784654 (= e!4610873 e!4610875)))

(declare-fun b!7784655 () Bool)

(declare-fun e!4610872 () Regex!20845)

(assert (=> b!7784655 (= e!4610874 e!4610872)))

(declare-fun c!1434237 () Bool)

(assert (=> b!7784655 (= c!1434237 ((_ is ElementMatch!20845) r1!6279))))

(declare-fun d!2345458 () Bool)

(declare-fun lt!2673334 () Regex!20845)

(assert (=> d!2345458 (validRegex!11259 lt!2673334)))

(assert (=> d!2345458 (= lt!2673334 e!4610874)))

(declare-fun c!1434238 () Bool)

(assert (=> d!2345458 (= c!1434238 (or ((_ is EmptyExpr!20845) r1!6279) ((_ is EmptyLang!20845) r1!6279)))))

(assert (=> d!2345458 (validRegex!11259 r1!6279)))

(assert (=> d!2345458 (= (derivativeStep!6182 r1!6279 (h!80008 s!14292)) lt!2673334)))

(declare-fun bm!721581 () Bool)

(declare-fun call!721588 () Regex!20845)

(declare-fun call!721587 () Regex!20845)

(assert (=> bm!721581 (= call!721588 call!721587)))

(declare-fun b!7784656 () Bool)

(declare-fun call!721586 () Regex!20845)

(assert (=> b!7784656 (= e!4610875 (Union!20845 (Concat!29690 call!721586 (regTwo!42202 r1!6279)) EmptyLang!20845))))

(declare-fun b!7784657 () Bool)

(assert (=> b!7784657 (= e!4610875 (Union!20845 (Concat!29690 call!721585 (regTwo!42202 r1!6279)) call!721586))))

(declare-fun b!7784658 () Bool)

(declare-fun e!4610876 () Regex!20845)

(assert (=> b!7784658 (= e!4610876 e!4610873)))

(declare-fun c!1434235 () Bool)

(assert (=> b!7784658 (= c!1434235 ((_ is Star!20845) r1!6279))))

(declare-fun bm!721582 () Bool)

(assert (=> bm!721582 (= call!721586 call!721588)))

(declare-fun b!7784659 () Bool)

(assert (=> b!7784659 (= e!4610876 (Union!20845 call!721585 call!721587))))

(declare-fun bm!721583 () Bool)

(assert (=> bm!721583 (= call!721587 (derivativeStep!6182 (ite c!1434236 (regTwo!42203 r1!6279) (ite c!1434235 (reg!21174 r1!6279) (ite c!1434234 (regTwo!42202 r1!6279) (regOne!42202 r1!6279)))) (h!80008 s!14292)))))

(declare-fun b!7784660 () Bool)

(assert (=> b!7784660 (= e!4610872 (ite (= (h!80008 s!14292) (c!1434158 r1!6279)) EmptyExpr!20845 EmptyLang!20845))))

(declare-fun b!7784661 () Bool)

(assert (=> b!7784661 (= c!1434236 ((_ is Union!20845) r1!6279))))

(assert (=> b!7784661 (= e!4610872 e!4610876)))

(declare-fun b!7784662 () Bool)

(assert (=> b!7784662 (= e!4610873 (Concat!29690 call!721588 r1!6279))))

(assert (= (and d!2345458 c!1434238) b!7784653))

(assert (= (and d!2345458 (not c!1434238)) b!7784655))

(assert (= (and b!7784655 c!1434237) b!7784660))

(assert (= (and b!7784655 (not c!1434237)) b!7784661))

(assert (= (and b!7784661 c!1434236) b!7784659))

(assert (= (and b!7784661 (not c!1434236)) b!7784658))

(assert (= (and b!7784658 c!1434235) b!7784662))

(assert (= (and b!7784658 (not c!1434235)) b!7784654))

(assert (= (and b!7784654 c!1434234) b!7784657))

(assert (= (and b!7784654 (not c!1434234)) b!7784656))

(assert (= (or b!7784657 b!7784656) bm!721582))

(assert (= (or b!7784662 bm!721582) bm!721581))

(assert (= (or b!7784659 bm!721581) bm!721583))

(assert (= (or b!7784659 b!7784657) bm!721580))

(declare-fun m!8230456 () Bool)

(assert (=> bm!721580 m!8230456))

(declare-fun m!8230458 () Bool)

(assert (=> b!7784654 m!8230458))

(declare-fun m!8230460 () Bool)

(assert (=> d!2345458 m!8230460))

(assert (=> d!2345458 m!8230336))

(declare-fun m!8230462 () Bool)

(assert (=> bm!721583 m!8230462))

(assert (=> b!7784343 d!2345458))

(declare-fun d!2345460 () Bool)

(declare-fun nullableFct!3614 (Regex!20845) Bool)

(assert (=> d!2345460 (= (nullable!9229 r1!6279) (nullableFct!3614 r1!6279))))

(declare-fun bs!1966275 () Bool)

(assert (= bs!1966275 d!2345460))

(declare-fun m!8230464 () Bool)

(assert (=> bs!1966275 m!8230464))

(assert (=> b!7784338 d!2345460))

(declare-fun b!7784673 () Bool)

(declare-fun e!4610879 () Bool)

(assert (=> b!7784673 (= e!4610879 tp_is_empty!52045)))

(declare-fun b!7784676 () Bool)

(declare-fun tp!2288838 () Bool)

(declare-fun tp!2288840 () Bool)

(assert (=> b!7784676 (= e!4610879 (and tp!2288838 tp!2288840))))

(declare-fun b!7784674 () Bool)

(declare-fun tp!2288841 () Bool)

(declare-fun tp!2288837 () Bool)

(assert (=> b!7784674 (= e!4610879 (and tp!2288841 tp!2288837))))

(declare-fun b!7784675 () Bool)

(declare-fun tp!2288839 () Bool)

(assert (=> b!7784675 (= e!4610879 tp!2288839)))

(assert (=> b!7784332 (= tp!2288761 e!4610879)))

(assert (= (and b!7784332 ((_ is ElementMatch!20845) (reg!21174 r1!6279))) b!7784673))

(assert (= (and b!7784332 ((_ is Concat!29690) (reg!21174 r1!6279))) b!7784674))

(assert (= (and b!7784332 ((_ is Star!20845) (reg!21174 r1!6279))) b!7784675))

(assert (= (and b!7784332 ((_ is Union!20845) (reg!21174 r1!6279))) b!7784676))

(declare-fun b!7784681 () Bool)

(declare-fun e!4610882 () Bool)

(declare-fun tp!2288844 () Bool)

(assert (=> b!7784681 (= e!4610882 (and tp_is_empty!52045 tp!2288844))))

(assert (=> b!7784331 (= tp!2288762 e!4610882)))

(assert (= (and b!7784331 ((_ is Cons!73560) (t!388419 s!14292))) b!7784681))

(declare-fun b!7784682 () Bool)

(declare-fun e!4610883 () Bool)

(assert (=> b!7784682 (= e!4610883 tp_is_empty!52045)))

(declare-fun b!7784685 () Bool)

(declare-fun tp!2288846 () Bool)

(declare-fun tp!2288848 () Bool)

(assert (=> b!7784685 (= e!4610883 (and tp!2288846 tp!2288848))))

(declare-fun b!7784683 () Bool)

(declare-fun tp!2288849 () Bool)

(declare-fun tp!2288845 () Bool)

(assert (=> b!7784683 (= e!4610883 (and tp!2288849 tp!2288845))))

(declare-fun b!7784684 () Bool)

(declare-fun tp!2288847 () Bool)

(assert (=> b!7784684 (= e!4610883 tp!2288847)))

(assert (=> b!7784341 (= tp!2288760 e!4610883)))

(assert (= (and b!7784341 ((_ is ElementMatch!20845) (regOne!42203 r1!6279))) b!7784682))

(assert (= (and b!7784341 ((_ is Concat!29690) (regOne!42203 r1!6279))) b!7784683))

(assert (= (and b!7784341 ((_ is Star!20845) (regOne!42203 r1!6279))) b!7784684))

(assert (= (and b!7784341 ((_ is Union!20845) (regOne!42203 r1!6279))) b!7784685))

(declare-fun b!7784686 () Bool)

(declare-fun e!4610884 () Bool)

(assert (=> b!7784686 (= e!4610884 tp_is_empty!52045)))

(declare-fun b!7784689 () Bool)

(declare-fun tp!2288851 () Bool)

(declare-fun tp!2288853 () Bool)

(assert (=> b!7784689 (= e!4610884 (and tp!2288851 tp!2288853))))

(declare-fun b!7784687 () Bool)

(declare-fun tp!2288854 () Bool)

(declare-fun tp!2288850 () Bool)

(assert (=> b!7784687 (= e!4610884 (and tp!2288854 tp!2288850))))

(declare-fun b!7784688 () Bool)

(declare-fun tp!2288852 () Bool)

(assert (=> b!7784688 (= e!4610884 tp!2288852)))

(assert (=> b!7784341 (= tp!2288763 e!4610884)))

(assert (= (and b!7784341 ((_ is ElementMatch!20845) (regTwo!42203 r1!6279))) b!7784686))

(assert (= (and b!7784341 ((_ is Concat!29690) (regTwo!42203 r1!6279))) b!7784687))

(assert (= (and b!7784341 ((_ is Star!20845) (regTwo!42203 r1!6279))) b!7784688))

(assert (= (and b!7784341 ((_ is Union!20845) (regTwo!42203 r1!6279))) b!7784689))

(declare-fun b!7784690 () Bool)

(declare-fun e!4610885 () Bool)

(assert (=> b!7784690 (= e!4610885 tp_is_empty!52045)))

(declare-fun b!7784693 () Bool)

(declare-fun tp!2288856 () Bool)

(declare-fun tp!2288858 () Bool)

(assert (=> b!7784693 (= e!4610885 (and tp!2288856 tp!2288858))))

(declare-fun b!7784691 () Bool)

(declare-fun tp!2288859 () Bool)

(declare-fun tp!2288855 () Bool)

(assert (=> b!7784691 (= e!4610885 (and tp!2288859 tp!2288855))))

(declare-fun b!7784692 () Bool)

(declare-fun tp!2288857 () Bool)

(assert (=> b!7784692 (= e!4610885 tp!2288857)))

(assert (=> b!7784329 (= tp!2288754 e!4610885)))

(assert (= (and b!7784329 ((_ is ElementMatch!20845) (reg!21174 r2!6217))) b!7784690))

(assert (= (and b!7784329 ((_ is Concat!29690) (reg!21174 r2!6217))) b!7784691))

(assert (= (and b!7784329 ((_ is Star!20845) (reg!21174 r2!6217))) b!7784692))

(assert (= (and b!7784329 ((_ is Union!20845) (reg!21174 r2!6217))) b!7784693))

(declare-fun b!7784694 () Bool)

(declare-fun e!4610886 () Bool)

(assert (=> b!7784694 (= e!4610886 tp_is_empty!52045)))

(declare-fun b!7784697 () Bool)

(declare-fun tp!2288861 () Bool)

(declare-fun tp!2288863 () Bool)

(assert (=> b!7784697 (= e!4610886 (and tp!2288861 tp!2288863))))

(declare-fun b!7784695 () Bool)

(declare-fun tp!2288864 () Bool)

(declare-fun tp!2288860 () Bool)

(assert (=> b!7784695 (= e!4610886 (and tp!2288864 tp!2288860))))

(declare-fun b!7784696 () Bool)

(declare-fun tp!2288862 () Bool)

(assert (=> b!7784696 (= e!4610886 tp!2288862)))

(assert (=> b!7784339 (= tp!2288755 e!4610886)))

(assert (= (and b!7784339 ((_ is ElementMatch!20845) (regOne!42202 r2!6217))) b!7784694))

(assert (= (and b!7784339 ((_ is Concat!29690) (regOne!42202 r2!6217))) b!7784695))

(assert (= (and b!7784339 ((_ is Star!20845) (regOne!42202 r2!6217))) b!7784696))

(assert (= (and b!7784339 ((_ is Union!20845) (regOne!42202 r2!6217))) b!7784697))

(declare-fun b!7784698 () Bool)

(declare-fun e!4610887 () Bool)

(assert (=> b!7784698 (= e!4610887 tp_is_empty!52045)))

(declare-fun b!7784701 () Bool)

(declare-fun tp!2288866 () Bool)

(declare-fun tp!2288868 () Bool)

(assert (=> b!7784701 (= e!4610887 (and tp!2288866 tp!2288868))))

(declare-fun b!7784699 () Bool)

(declare-fun tp!2288869 () Bool)

(declare-fun tp!2288865 () Bool)

(assert (=> b!7784699 (= e!4610887 (and tp!2288869 tp!2288865))))

(declare-fun b!7784700 () Bool)

(declare-fun tp!2288867 () Bool)

(assert (=> b!7784700 (= e!4610887 tp!2288867)))

(assert (=> b!7784339 (= tp!2288753 e!4610887)))

(assert (= (and b!7784339 ((_ is ElementMatch!20845) (regTwo!42202 r2!6217))) b!7784698))

(assert (= (and b!7784339 ((_ is Concat!29690) (regTwo!42202 r2!6217))) b!7784699))

(assert (= (and b!7784339 ((_ is Star!20845) (regTwo!42202 r2!6217))) b!7784700))

(assert (= (and b!7784339 ((_ is Union!20845) (regTwo!42202 r2!6217))) b!7784701))

(declare-fun b!7784702 () Bool)

(declare-fun e!4610888 () Bool)

(assert (=> b!7784702 (= e!4610888 tp_is_empty!52045)))

(declare-fun b!7784705 () Bool)

(declare-fun tp!2288871 () Bool)

(declare-fun tp!2288873 () Bool)

(assert (=> b!7784705 (= e!4610888 (and tp!2288871 tp!2288873))))

(declare-fun b!7784703 () Bool)

(declare-fun tp!2288874 () Bool)

(declare-fun tp!2288870 () Bool)

(assert (=> b!7784703 (= e!4610888 (and tp!2288874 tp!2288870))))

(declare-fun b!7784704 () Bool)

(declare-fun tp!2288872 () Bool)

(assert (=> b!7784704 (= e!4610888 tp!2288872)))

(assert (=> b!7784334 (= tp!2288756 e!4610888)))

(assert (= (and b!7784334 ((_ is ElementMatch!20845) (regOne!42203 r2!6217))) b!7784702))

(assert (= (and b!7784334 ((_ is Concat!29690) (regOne!42203 r2!6217))) b!7784703))

(assert (= (and b!7784334 ((_ is Star!20845) (regOne!42203 r2!6217))) b!7784704))

(assert (= (and b!7784334 ((_ is Union!20845) (regOne!42203 r2!6217))) b!7784705))

(declare-fun b!7784706 () Bool)

(declare-fun e!4610889 () Bool)

(assert (=> b!7784706 (= e!4610889 tp_is_empty!52045)))

(declare-fun b!7784709 () Bool)

(declare-fun tp!2288876 () Bool)

(declare-fun tp!2288878 () Bool)

(assert (=> b!7784709 (= e!4610889 (and tp!2288876 tp!2288878))))

(declare-fun b!7784707 () Bool)

(declare-fun tp!2288879 () Bool)

(declare-fun tp!2288875 () Bool)

(assert (=> b!7784707 (= e!4610889 (and tp!2288879 tp!2288875))))

(declare-fun b!7784708 () Bool)

(declare-fun tp!2288877 () Bool)

(assert (=> b!7784708 (= e!4610889 tp!2288877)))

(assert (=> b!7784334 (= tp!2288759 e!4610889)))

(assert (= (and b!7784334 ((_ is ElementMatch!20845) (regTwo!42203 r2!6217))) b!7784706))

(assert (= (and b!7784334 ((_ is Concat!29690) (regTwo!42203 r2!6217))) b!7784707))

(assert (= (and b!7784334 ((_ is Star!20845) (regTwo!42203 r2!6217))) b!7784708))

(assert (= (and b!7784334 ((_ is Union!20845) (regTwo!42203 r2!6217))) b!7784709))

(declare-fun b!7784710 () Bool)

(declare-fun e!4610890 () Bool)

(assert (=> b!7784710 (= e!4610890 tp_is_empty!52045)))

(declare-fun b!7784713 () Bool)

(declare-fun tp!2288881 () Bool)

(declare-fun tp!2288883 () Bool)

(assert (=> b!7784713 (= e!4610890 (and tp!2288881 tp!2288883))))

(declare-fun b!7784711 () Bool)

(declare-fun tp!2288884 () Bool)

(declare-fun tp!2288880 () Bool)

(assert (=> b!7784711 (= e!4610890 (and tp!2288884 tp!2288880))))

(declare-fun b!7784712 () Bool)

(declare-fun tp!2288882 () Bool)

(assert (=> b!7784712 (= e!4610890 tp!2288882)))

(assert (=> b!7784333 (= tp!2288758 e!4610890)))

(assert (= (and b!7784333 ((_ is ElementMatch!20845) (regOne!42202 r1!6279))) b!7784710))

(assert (= (and b!7784333 ((_ is Concat!29690) (regOne!42202 r1!6279))) b!7784711))

(assert (= (and b!7784333 ((_ is Star!20845) (regOne!42202 r1!6279))) b!7784712))

(assert (= (and b!7784333 ((_ is Union!20845) (regOne!42202 r1!6279))) b!7784713))

(declare-fun b!7784714 () Bool)

(declare-fun e!4610891 () Bool)

(assert (=> b!7784714 (= e!4610891 tp_is_empty!52045)))

(declare-fun b!7784717 () Bool)

(declare-fun tp!2288886 () Bool)

(declare-fun tp!2288888 () Bool)

(assert (=> b!7784717 (= e!4610891 (and tp!2288886 tp!2288888))))

(declare-fun b!7784715 () Bool)

(declare-fun tp!2288889 () Bool)

(declare-fun tp!2288885 () Bool)

(assert (=> b!7784715 (= e!4610891 (and tp!2288889 tp!2288885))))

(declare-fun b!7784716 () Bool)

(declare-fun tp!2288887 () Bool)

(assert (=> b!7784716 (= e!4610891 tp!2288887)))

(assert (=> b!7784333 (= tp!2288757 e!4610891)))

(assert (= (and b!7784333 ((_ is ElementMatch!20845) (regTwo!42202 r1!6279))) b!7784714))

(assert (= (and b!7784333 ((_ is Concat!29690) (regTwo!42202 r1!6279))) b!7784715))

(assert (= (and b!7784333 ((_ is Star!20845) (regTwo!42202 r1!6279))) b!7784716))

(assert (= (and b!7784333 ((_ is Union!20845) (regTwo!42202 r1!6279))) b!7784717))

(check-sat (not b!7784506) (not b!7784715) (not b!7784697) (not b!7784716) (not b!7784420) (not bm!721575) (not b!7784693) (not d!2345458) (not b!7784703) (not b!7784708) (not b!7784643) (not b!7784711) (not b!7784713) (not bm!721558) (not bm!721576) (not bm!721555) (not b!7784640) (not d!2345436) (not b!7784681) (not b!7784704) (not b!7784624) (not bm!721573) (not b!7784692) (not b!7784422) (not b!7784638) (not b!7784642) (not b!7784633) (not b!7784647) (not b!7784654) (not b!7784688) (not b!7784700) (not b!7784676) tp_is_empty!52045 (not b!7784712) (not b!7784424) (not b!7784689) (not bm!721525) (not b!7784683) (not bm!721579) (not d!2345460) (not b!7784709) (not b!7784675) (not b!7784684) (not d!2345454) (not b!7784705) (not b!7784426) (not b!7784674) (not bm!721580) (not b!7784699) (not b!7784685) (not d!2345440) (not b!7784717) (not b!7784417) (not b!7784427) (not bm!721583) (not b!7784695) (not b!7784636) (not b!7784687) (not bm!721577) (not b!7784701) (not b!7784691) (not b!7784696) (not b!7784707))
(check-sat)
