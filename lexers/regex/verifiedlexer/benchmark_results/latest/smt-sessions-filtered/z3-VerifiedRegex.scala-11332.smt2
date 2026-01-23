; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!598108 () Bool)

(assert start!598108)

(declare-fun b!5842182 () Bool)

(declare-fun res!2461010 () Bool)

(declare-fun e!3583366 () Bool)

(assert (=> b!5842182 (=> res!2461010 e!3583366)))

(declare-datatypes ((C!32092 0))(
  ( (C!32093 (val!25748 Int)) )
))
(declare-datatypes ((Regex!15911 0))(
  ( (ElementMatch!15911 (c!1035181 C!32092)) (Concat!24756 (regOne!32334 Regex!15911) (regTwo!32334 Regex!15911)) (EmptyExpr!15911) (Star!15911 (reg!16240 Regex!15911)) (EmptyLang!15911) (Union!15911 (regOne!32335 Regex!15911) (regTwo!32335 Regex!15911)) )
))
(declare-fun r!7292 () Regex!15911)

(get-info :version)

(assert (=> b!5842182 (= res!2461010 (or ((_ is EmptyExpr!15911) r!7292) ((_ is EmptyLang!15911) r!7292) ((_ is ElementMatch!15911) r!7292) (not ((_ is Union!15911) r!7292))))))

(declare-fun b!5842183 () Bool)

(declare-fun e!3583363 () Bool)

(declare-fun tp!1615552 () Bool)

(assert (=> b!5842183 (= e!3583363 tp!1615552)))

(declare-fun b!5842184 () Bool)

(declare-fun res!2461009 () Bool)

(assert (=> b!5842184 (=> res!2461009 e!3583366)))

(declare-datatypes ((List!64032 0))(
  ( (Nil!63908) (Cons!63908 (h!70356 Regex!15911) (t!377387 List!64032)) )
))
(declare-datatypes ((Context!10590 0))(
  ( (Context!10591 (exprs!5795 List!64032)) )
))
(declare-datatypes ((List!64033 0))(
  ( (Nil!63909) (Cons!63909 (h!70357 Context!10590) (t!377388 List!64033)) )
))
(declare-fun zl!343 () List!64033)

(declare-fun isEmpty!35766 (List!64033) Bool)

(assert (=> b!5842184 (= res!2461009 (not (isEmpty!35766 (t!377388 zl!343))))))

(declare-fun res!2461007 () Bool)

(declare-fun e!3583360 () Bool)

(assert (=> start!598108 (=> (not res!2461007) (not e!3583360))))

(declare-fun validRegex!7647 (Regex!15911) Bool)

(assert (=> start!598108 (= res!2461007 (validRegex!7647 r!7292))))

(assert (=> start!598108 e!3583360))

(assert (=> start!598108 e!3583363))

(declare-fun condSetEmpty!39586 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10590))

(assert (=> start!598108 (= condSetEmpty!39586 (= z!1189 ((as const (Array Context!10590 Bool)) false)))))

(declare-fun setRes!39586 () Bool)

(assert (=> start!598108 setRes!39586))

(declare-fun e!3583364 () Bool)

(assert (=> start!598108 e!3583364))

(declare-fun e!3583367 () Bool)

(assert (=> start!598108 e!3583367))

(declare-fun b!5842185 () Bool)

(declare-fun tp_is_empty!41075 () Bool)

(assert (=> b!5842185 (= e!3583363 tp_is_empty!41075)))

(declare-fun e!3583362 () Bool)

(declare-fun b!5842186 () Bool)

(declare-fun tp!1615554 () Bool)

(declare-fun inv!83024 (Context!10590) Bool)

(assert (=> b!5842186 (= e!3583364 (and (inv!83024 (h!70357 zl!343)) e!3583362 tp!1615554))))

(declare-fun b!5842187 () Bool)

(declare-fun e!3583359 () Bool)

(assert (=> b!5842187 (= e!3583366 e!3583359)))

(declare-fun res!2461014 () Bool)

(assert (=> b!5842187 (=> res!2461014 e!3583359)))

(declare-datatypes ((List!64034 0))(
  ( (Nil!63910) (Cons!63910 (h!70358 C!32092) (t!377389 List!64034)) )
))
(declare-fun s!2326 () List!64034)

(declare-fun lt!2303859 () Bool)

(declare-fun lt!2303862 () Bool)

(declare-fun lt!2303863 () Bool)

(assert (=> b!5842187 (= res!2461014 (or (not (= lt!2303859 (or lt!2303863 lt!2303862))) ((_ is Nil!63910) s!2326)))))

(declare-fun matchRSpec!3012 (Regex!15911 List!64034) Bool)

(assert (=> b!5842187 (= lt!2303862 (matchRSpec!3012 (regTwo!32335 r!7292) s!2326))))

(declare-fun matchR!8094 (Regex!15911 List!64034) Bool)

(assert (=> b!5842187 (= lt!2303862 (matchR!8094 (regTwo!32335 r!7292) s!2326))))

(declare-datatypes ((Unit!157093 0))(
  ( (Unit!157094) )
))
(declare-fun lt!2303860 () Unit!157093)

(declare-fun mainMatchTheorem!3012 (Regex!15911 List!64034) Unit!157093)

(assert (=> b!5842187 (= lt!2303860 (mainMatchTheorem!3012 (regTwo!32335 r!7292) s!2326))))

(assert (=> b!5842187 (= lt!2303863 (matchRSpec!3012 (regOne!32335 r!7292) s!2326))))

(assert (=> b!5842187 (= lt!2303863 (matchR!8094 (regOne!32335 r!7292) s!2326))))

(declare-fun lt!2303861 () Unit!157093)

(assert (=> b!5842187 (= lt!2303861 (mainMatchTheorem!3012 (regOne!32335 r!7292) s!2326))))

(declare-fun b!5842188 () Bool)

(declare-fun res!2461015 () Bool)

(assert (=> b!5842188 (=> res!2461015 e!3583366)))

(assert (=> b!5842188 (= res!2461015 (not ((_ is Cons!63908) (exprs!5795 (h!70357 zl!343)))))))

(declare-fun b!5842189 () Bool)

(declare-fun e!3583361 () Bool)

(assert (=> b!5842189 (= e!3583359 e!3583361)))

(declare-fun res!2461016 () Bool)

(assert (=> b!5842189 (=> res!2461016 e!3583361)))

(declare-fun lt!2303864 () Context!10590)

(declare-fun derivationStepZipperUp!1103 (Context!10590 C!32092) (InoxSet Context!10590))

(declare-fun derivationStepZipperDown!1177 (Regex!15911 Context!10590 C!32092) (InoxSet Context!10590))

(assert (=> b!5842189 (= res!2461016 (not (= (derivationStepZipperUp!1103 (Context!10591 (Cons!63908 r!7292 Nil!63908)) (h!70358 s!2326)) (derivationStepZipperDown!1177 r!7292 lt!2303864 (h!70358 s!2326)))))))

(assert (=> b!5842189 (= lt!2303864 (Context!10591 Nil!63908))))

(declare-fun b!5842190 () Bool)

(declare-fun tp!1615549 () Bool)

(assert (=> b!5842190 (= e!3583362 tp!1615549)))

(declare-fun setIsEmpty!39586 () Bool)

(assert (=> setIsEmpty!39586 setRes!39586))

(declare-fun tp!1615556 () Bool)

(declare-fun setElem!39586 () Context!10590)

(declare-fun e!3583365 () Bool)

(declare-fun setNonEmpty!39586 () Bool)

(assert (=> setNonEmpty!39586 (= setRes!39586 (and tp!1615556 (inv!83024 setElem!39586) e!3583365))))

(declare-fun setRest!39586 () (InoxSet Context!10590))

(assert (=> setNonEmpty!39586 (= z!1189 ((_ map or) (store ((as const (Array Context!10590 Bool)) false) setElem!39586 true) setRest!39586))))

(declare-fun b!5842191 () Bool)

(declare-fun res!2461011 () Bool)

(assert (=> b!5842191 (=> (not res!2461011) (not e!3583360))))

(declare-fun toList!9695 ((InoxSet Context!10590)) List!64033)

(assert (=> b!5842191 (= res!2461011 (= (toList!9695 z!1189) zl!343))))

(declare-fun b!5842192 () Bool)

(assert (=> b!5842192 (= e!3583360 (not e!3583366))))

(declare-fun res!2461012 () Bool)

(assert (=> b!5842192 (=> res!2461012 e!3583366)))

(assert (=> b!5842192 (= res!2461012 (not ((_ is Cons!63909) zl!343)))))

(assert (=> b!5842192 (= lt!2303859 (matchRSpec!3012 r!7292 s!2326))))

(assert (=> b!5842192 (= lt!2303859 (matchR!8094 r!7292 s!2326))))

(declare-fun lt!2303858 () Unit!157093)

(assert (=> b!5842192 (= lt!2303858 (mainMatchTheorem!3012 r!7292 s!2326))))

(declare-fun b!5842193 () Bool)

(declare-fun tp!1615555 () Bool)

(declare-fun tp!1615547 () Bool)

(assert (=> b!5842193 (= e!3583363 (and tp!1615555 tp!1615547))))

(declare-fun b!5842194 () Bool)

(declare-fun tp!1615550 () Bool)

(assert (=> b!5842194 (= e!3583367 (and tp_is_empty!41075 tp!1615550))))

(declare-fun b!5842195 () Bool)

(declare-fun res!2461013 () Bool)

(assert (=> b!5842195 (=> res!2461013 e!3583366)))

(declare-fun generalisedUnion!1755 (List!64032) Regex!15911)

(declare-fun unfocusZipperList!1332 (List!64033) List!64032)

(assert (=> b!5842195 (= res!2461013 (not (= r!7292 (generalisedUnion!1755 (unfocusZipperList!1332 zl!343)))))))

(declare-fun b!5842196 () Bool)

(declare-fun tp!1615553 () Bool)

(assert (=> b!5842196 (= e!3583365 tp!1615553)))

(declare-fun b!5842197 () Bool)

(declare-fun res!2461008 () Bool)

(assert (=> b!5842197 (=> res!2461008 e!3583366)))

(declare-fun generalisedConcat!1508 (List!64032) Regex!15911)

(assert (=> b!5842197 (= res!2461008 (not (= r!7292 (generalisedConcat!1508 (exprs!5795 (h!70357 zl!343))))))))

(declare-fun b!5842198 () Bool)

(declare-fun res!2461006 () Bool)

(assert (=> b!5842198 (=> (not res!2461006) (not e!3583360))))

(declare-fun unfocusZipper!1653 (List!64033) Regex!15911)

(assert (=> b!5842198 (= res!2461006 (= r!7292 (unfocusZipper!1653 zl!343)))))

(declare-fun b!5842199 () Bool)

(declare-fun tp!1615551 () Bool)

(declare-fun tp!1615548 () Bool)

(assert (=> b!5842199 (= e!3583363 (and tp!1615551 tp!1615548))))

(declare-fun b!5842200 () Bool)

(assert (=> b!5842200 (= e!3583361 (inv!83024 lt!2303864))))

(assert (= (and start!598108 res!2461007) b!5842191))

(assert (= (and b!5842191 res!2461011) b!5842198))

(assert (= (and b!5842198 res!2461006) b!5842192))

(assert (= (and b!5842192 (not res!2461012)) b!5842184))

(assert (= (and b!5842184 (not res!2461009)) b!5842197))

(assert (= (and b!5842197 (not res!2461008)) b!5842188))

(assert (= (and b!5842188 (not res!2461015)) b!5842195))

(assert (= (and b!5842195 (not res!2461013)) b!5842182))

(assert (= (and b!5842182 (not res!2461010)) b!5842187))

(assert (= (and b!5842187 (not res!2461014)) b!5842189))

(assert (= (and b!5842189 (not res!2461016)) b!5842200))

(assert (= (and start!598108 ((_ is ElementMatch!15911) r!7292)) b!5842185))

(assert (= (and start!598108 ((_ is Concat!24756) r!7292)) b!5842199))

(assert (= (and start!598108 ((_ is Star!15911) r!7292)) b!5842183))

(assert (= (and start!598108 ((_ is Union!15911) r!7292)) b!5842193))

(assert (= (and start!598108 condSetEmpty!39586) setIsEmpty!39586))

(assert (= (and start!598108 (not condSetEmpty!39586)) setNonEmpty!39586))

(assert (= setNonEmpty!39586 b!5842196))

(assert (= b!5842186 b!5842190))

(assert (= (and start!598108 ((_ is Cons!63909) zl!343)) b!5842186))

(assert (= (and start!598108 ((_ is Cons!63910) s!2326)) b!5842194))

(declare-fun m!6765918 () Bool)

(assert (=> b!5842198 m!6765918))

(declare-fun m!6765920 () Bool)

(assert (=> setNonEmpty!39586 m!6765920))

(declare-fun m!6765922 () Bool)

(assert (=> b!5842197 m!6765922))

(declare-fun m!6765924 () Bool)

(assert (=> b!5842191 m!6765924))

(declare-fun m!6765926 () Bool)

(assert (=> b!5842192 m!6765926))

(declare-fun m!6765928 () Bool)

(assert (=> b!5842192 m!6765928))

(declare-fun m!6765930 () Bool)

(assert (=> b!5842192 m!6765930))

(declare-fun m!6765932 () Bool)

(assert (=> b!5842184 m!6765932))

(declare-fun m!6765934 () Bool)

(assert (=> start!598108 m!6765934))

(declare-fun m!6765936 () Bool)

(assert (=> b!5842195 m!6765936))

(assert (=> b!5842195 m!6765936))

(declare-fun m!6765938 () Bool)

(assert (=> b!5842195 m!6765938))

(declare-fun m!6765940 () Bool)

(assert (=> b!5842186 m!6765940))

(declare-fun m!6765942 () Bool)

(assert (=> b!5842187 m!6765942))

(declare-fun m!6765944 () Bool)

(assert (=> b!5842187 m!6765944))

(declare-fun m!6765946 () Bool)

(assert (=> b!5842187 m!6765946))

(declare-fun m!6765948 () Bool)

(assert (=> b!5842187 m!6765948))

(declare-fun m!6765950 () Bool)

(assert (=> b!5842187 m!6765950))

(declare-fun m!6765952 () Bool)

(assert (=> b!5842187 m!6765952))

(declare-fun m!6765954 () Bool)

(assert (=> b!5842200 m!6765954))

(declare-fun m!6765956 () Bool)

(assert (=> b!5842189 m!6765956))

(declare-fun m!6765958 () Bool)

(assert (=> b!5842189 m!6765958))

(check-sat (not setNonEmpty!39586) (not b!5842191) (not start!598108) (not b!5842184) (not b!5842183) (not b!5842196) (not b!5842189) (not b!5842187) (not b!5842193) (not b!5842192) (not b!5842194) (not b!5842190) (not b!5842197) (not b!5842199) tp_is_empty!41075 (not b!5842198) (not b!5842186) (not b!5842200) (not b!5842195))
(check-sat)
(get-model)

(declare-fun b!5842376 () Bool)

(assert (=> b!5842376 true))

(assert (=> b!5842376 true))

(declare-fun bs!1376501 () Bool)

(declare-fun b!5842383 () Bool)

(assert (= bs!1376501 (and b!5842383 b!5842376)))

(declare-fun lambda!319602 () Int)

(declare-fun lambda!319601 () Int)

(assert (=> bs!1376501 (not (= lambda!319602 lambda!319601))))

(assert (=> b!5842383 true))

(assert (=> b!5842383 true))

(declare-fun d!1835583 () Bool)

(declare-fun c!1035229 () Bool)

(assert (=> d!1835583 (= c!1035229 ((_ is EmptyExpr!15911) r!7292))))

(declare-fun e!3583472 () Bool)

(assert (=> d!1835583 (= (matchRSpec!3012 r!7292 s!2326) e!3583472)))

(declare-fun b!5842374 () Bool)

(declare-fun e!3583475 () Bool)

(assert (=> b!5842374 (= e!3583475 (matchRSpec!3012 (regTwo!32335 r!7292) s!2326))))

(declare-fun b!5842375 () Bool)

(declare-fun e!3583473 () Bool)

(assert (=> b!5842375 (= e!3583472 e!3583473)))

(declare-fun res!2461093 () Bool)

(assert (=> b!5842375 (= res!2461093 (not ((_ is EmptyLang!15911) r!7292)))))

(assert (=> b!5842375 (=> (not res!2461093) (not e!3583473))))

(declare-fun e!3583474 () Bool)

(declare-fun call!456395 () Bool)

(assert (=> b!5842376 (= e!3583474 call!456395)))

(declare-fun b!5842377 () Bool)

(declare-fun c!1035231 () Bool)

(assert (=> b!5842377 (= c!1035231 ((_ is ElementMatch!15911) r!7292))))

(declare-fun e!3583471 () Bool)

(assert (=> b!5842377 (= e!3583473 e!3583471)))

(declare-fun b!5842378 () Bool)

(declare-fun res!2461092 () Bool)

(assert (=> b!5842378 (=> res!2461092 e!3583474)))

(declare-fun call!456394 () Bool)

(assert (=> b!5842378 (= res!2461092 call!456394)))

(declare-fun e!3583476 () Bool)

(assert (=> b!5842378 (= e!3583476 e!3583474)))

(declare-fun b!5842379 () Bool)

(assert (=> b!5842379 (= e!3583471 (= s!2326 (Cons!63910 (c!1035181 r!7292) Nil!63910)))))

(declare-fun b!5842380 () Bool)

(assert (=> b!5842380 (= e!3583472 call!456394)))

(declare-fun bm!456389 () Bool)

(declare-fun c!1035230 () Bool)

(declare-fun Exists!2983 (Int) Bool)

(assert (=> bm!456389 (= call!456395 (Exists!2983 (ite c!1035230 lambda!319601 lambda!319602)))))

(declare-fun bm!456390 () Bool)

(declare-fun isEmpty!35769 (List!64034) Bool)

(assert (=> bm!456390 (= call!456394 (isEmpty!35769 s!2326))))

(declare-fun b!5842381 () Bool)

(declare-fun c!1035232 () Bool)

(assert (=> b!5842381 (= c!1035232 ((_ is Union!15911) r!7292))))

(declare-fun e!3583470 () Bool)

(assert (=> b!5842381 (= e!3583471 e!3583470)))

(declare-fun b!5842382 () Bool)

(assert (=> b!5842382 (= e!3583470 e!3583475)))

(declare-fun res!2461094 () Bool)

(assert (=> b!5842382 (= res!2461094 (matchRSpec!3012 (regOne!32335 r!7292) s!2326))))

(assert (=> b!5842382 (=> res!2461094 e!3583475)))

(assert (=> b!5842383 (= e!3583476 call!456395)))

(declare-fun b!5842384 () Bool)

(assert (=> b!5842384 (= e!3583470 e!3583476)))

(assert (=> b!5842384 (= c!1035230 ((_ is Star!15911) r!7292))))

(assert (= (and d!1835583 c!1035229) b!5842380))

(assert (= (and d!1835583 (not c!1035229)) b!5842375))

(assert (= (and b!5842375 res!2461093) b!5842377))

(assert (= (and b!5842377 c!1035231) b!5842379))

(assert (= (and b!5842377 (not c!1035231)) b!5842381))

(assert (= (and b!5842381 c!1035232) b!5842382))

(assert (= (and b!5842381 (not c!1035232)) b!5842384))

(assert (= (and b!5842382 (not res!2461094)) b!5842374))

(assert (= (and b!5842384 c!1035230) b!5842378))

(assert (= (and b!5842384 (not c!1035230)) b!5842383))

(assert (= (and b!5842378 (not res!2461092)) b!5842376))

(assert (= (or b!5842376 b!5842383) bm!456389))

(assert (= (or b!5842380 b!5842378) bm!456390))

(assert (=> b!5842374 m!6765942))

(declare-fun m!6766014 () Bool)

(assert (=> bm!456389 m!6766014))

(declare-fun m!6766016 () Bool)

(assert (=> bm!456390 m!6766016))

(assert (=> b!5842382 m!6765948))

(assert (=> b!5842192 d!1835583))

(declare-fun b!5842456 () Bool)

(declare-fun e!3583515 () Bool)

(declare-fun head!12375 (List!64034) C!32092)

(assert (=> b!5842456 (= e!3583515 (not (= (head!12375 s!2326) (c!1035181 r!7292))))))

(declare-fun b!5842457 () Bool)

(declare-fun e!3583517 () Bool)

(declare-fun lt!2303887 () Bool)

(assert (=> b!5842457 (= e!3583517 (not lt!2303887))))

(declare-fun d!1835607 () Bool)

(declare-fun e!3583512 () Bool)

(assert (=> d!1835607 e!3583512))

(declare-fun c!1035250 () Bool)

(assert (=> d!1835607 (= c!1035250 ((_ is EmptyExpr!15911) r!7292))))

(declare-fun e!3583518 () Bool)

(assert (=> d!1835607 (= lt!2303887 e!3583518)))

(declare-fun c!1035249 () Bool)

(assert (=> d!1835607 (= c!1035249 (isEmpty!35769 s!2326))))

(assert (=> d!1835607 (validRegex!7647 r!7292)))

(assert (=> d!1835607 (= (matchR!8094 r!7292 s!2326) lt!2303887)))

(declare-fun b!5842458 () Bool)

(declare-fun res!2461134 () Bool)

(declare-fun e!3583516 () Bool)

(assert (=> b!5842458 (=> (not res!2461134) (not e!3583516))))

(declare-fun call!456404 () Bool)

(assert (=> b!5842458 (= res!2461134 (not call!456404))))

(declare-fun b!5842459 () Bool)

(assert (=> b!5842459 (= e!3583516 (= (head!12375 s!2326) (c!1035181 r!7292)))))

(declare-fun b!5842460 () Bool)

(declare-fun res!2461130 () Bool)

(declare-fun e!3583514 () Bool)

(assert (=> b!5842460 (=> res!2461130 e!3583514)))

(assert (=> b!5842460 (= res!2461130 (not ((_ is ElementMatch!15911) r!7292)))))

(assert (=> b!5842460 (= e!3583517 e!3583514)))

(declare-fun b!5842461 () Bool)

(declare-fun e!3583513 () Bool)

(assert (=> b!5842461 (= e!3583513 e!3583515)))

(declare-fun res!2461133 () Bool)

(assert (=> b!5842461 (=> res!2461133 e!3583515)))

(assert (=> b!5842461 (= res!2461133 call!456404)))

(declare-fun bm!456399 () Bool)

(assert (=> bm!456399 (= call!456404 (isEmpty!35769 s!2326))))

(declare-fun b!5842462 () Bool)

(declare-fun derivativeStep!4648 (Regex!15911 C!32092) Regex!15911)

(declare-fun tail!11460 (List!64034) List!64034)

(assert (=> b!5842462 (= e!3583518 (matchR!8094 (derivativeStep!4648 r!7292 (head!12375 s!2326)) (tail!11460 s!2326)))))

(declare-fun b!5842463 () Bool)

(declare-fun nullable!5911 (Regex!15911) Bool)

(assert (=> b!5842463 (= e!3583518 (nullable!5911 r!7292))))

(declare-fun b!5842464 () Bool)

(assert (=> b!5842464 (= e!3583514 e!3583513)))

(declare-fun res!2461136 () Bool)

(assert (=> b!5842464 (=> (not res!2461136) (not e!3583513))))

(assert (=> b!5842464 (= res!2461136 (not lt!2303887))))

(declare-fun b!5842465 () Bool)

(assert (=> b!5842465 (= e!3583512 (= lt!2303887 call!456404))))

(declare-fun b!5842466 () Bool)

(declare-fun res!2461137 () Bool)

(assert (=> b!5842466 (=> (not res!2461137) (not e!3583516))))

(assert (=> b!5842466 (= res!2461137 (isEmpty!35769 (tail!11460 s!2326)))))

(declare-fun b!5842467 () Bool)

(declare-fun res!2461132 () Bool)

(assert (=> b!5842467 (=> res!2461132 e!3583514)))

(assert (=> b!5842467 (= res!2461132 e!3583516)))

(declare-fun res!2461135 () Bool)

(assert (=> b!5842467 (=> (not res!2461135) (not e!3583516))))

(assert (=> b!5842467 (= res!2461135 lt!2303887)))

(declare-fun b!5842468 () Bool)

(declare-fun res!2461131 () Bool)

(assert (=> b!5842468 (=> res!2461131 e!3583515)))

(assert (=> b!5842468 (= res!2461131 (not (isEmpty!35769 (tail!11460 s!2326))))))

(declare-fun b!5842469 () Bool)

(assert (=> b!5842469 (= e!3583512 e!3583517)))

(declare-fun c!1035251 () Bool)

(assert (=> b!5842469 (= c!1035251 ((_ is EmptyLang!15911) r!7292))))

(assert (= (and d!1835607 c!1035249) b!5842463))

(assert (= (and d!1835607 (not c!1035249)) b!5842462))

(assert (= (and d!1835607 c!1035250) b!5842465))

(assert (= (and d!1835607 (not c!1035250)) b!5842469))

(assert (= (and b!5842469 c!1035251) b!5842457))

(assert (= (and b!5842469 (not c!1035251)) b!5842460))

(assert (= (and b!5842460 (not res!2461130)) b!5842467))

(assert (= (and b!5842467 res!2461135) b!5842458))

(assert (= (and b!5842458 res!2461134) b!5842466))

(assert (= (and b!5842466 res!2461137) b!5842459))

(assert (= (and b!5842467 (not res!2461132)) b!5842464))

(assert (= (and b!5842464 res!2461136) b!5842461))

(assert (= (and b!5842461 (not res!2461133)) b!5842468))

(assert (= (and b!5842468 (not res!2461131)) b!5842456))

(assert (= (or b!5842465 b!5842458 b!5842461) bm!456399))

(assert (=> bm!456399 m!6766016))

(assert (=> d!1835607 m!6766016))

(assert (=> d!1835607 m!6765934))

(declare-fun m!6766048 () Bool)

(assert (=> b!5842466 m!6766048))

(assert (=> b!5842466 m!6766048))

(declare-fun m!6766050 () Bool)

(assert (=> b!5842466 m!6766050))

(declare-fun m!6766052 () Bool)

(assert (=> b!5842462 m!6766052))

(assert (=> b!5842462 m!6766052))

(declare-fun m!6766054 () Bool)

(assert (=> b!5842462 m!6766054))

(assert (=> b!5842462 m!6766048))

(assert (=> b!5842462 m!6766054))

(assert (=> b!5842462 m!6766048))

(declare-fun m!6766056 () Bool)

(assert (=> b!5842462 m!6766056))

(assert (=> b!5842459 m!6766052))

(declare-fun m!6766058 () Bool)

(assert (=> b!5842463 m!6766058))

(assert (=> b!5842456 m!6766052))

(assert (=> b!5842468 m!6766048))

(assert (=> b!5842468 m!6766048))

(assert (=> b!5842468 m!6766050))

(assert (=> b!5842192 d!1835607))

(declare-fun d!1835619 () Bool)

(assert (=> d!1835619 (= (matchR!8094 r!7292 s!2326) (matchRSpec!3012 r!7292 s!2326))))

(declare-fun lt!2303893 () Unit!157093)

(declare-fun choose!44348 (Regex!15911 List!64034) Unit!157093)

(assert (=> d!1835619 (= lt!2303893 (choose!44348 r!7292 s!2326))))

(assert (=> d!1835619 (validRegex!7647 r!7292)))

(assert (=> d!1835619 (= (mainMatchTheorem!3012 r!7292 s!2326) lt!2303893)))

(declare-fun bs!1376518 () Bool)

(assert (= bs!1376518 d!1835619))

(assert (=> bs!1376518 m!6765928))

(assert (=> bs!1376518 m!6765926))

(declare-fun m!6766060 () Bool)

(assert (=> bs!1376518 m!6766060))

(assert (=> bs!1376518 m!6765934))

(assert (=> b!5842192 d!1835619))

(declare-fun d!1835621 () Bool)

(assert (=> d!1835621 (= (isEmpty!35766 (t!377388 zl!343)) ((_ is Nil!63909) (t!377388 zl!343)))))

(assert (=> b!5842184 d!1835621))

(declare-fun d!1835623 () Bool)

(declare-fun res!2461165 () Bool)

(declare-fun e!3583570 () Bool)

(assert (=> d!1835623 (=> res!2461165 e!3583570)))

(assert (=> d!1835623 (= res!2461165 ((_ is ElementMatch!15911) r!7292))))

(assert (=> d!1835623 (= (validRegex!7647 r!7292) e!3583570)))

(declare-fun b!5842543 () Bool)

(declare-fun e!3583565 () Bool)

(declare-fun e!3583569 () Bool)

(assert (=> b!5842543 (= e!3583565 e!3583569)))

(declare-fun res!2461168 () Bool)

(assert (=> b!5842543 (= res!2461168 (not (nullable!5911 (reg!16240 r!7292))))))

(assert (=> b!5842543 (=> (not res!2461168) (not e!3583569))))

(declare-fun b!5842544 () Bool)

(declare-fun e!3583566 () Bool)

(assert (=> b!5842544 (= e!3583565 e!3583566)))

(declare-fun c!1035276 () Bool)

(assert (=> b!5842544 (= c!1035276 ((_ is Union!15911) r!7292))))

(declare-fun b!5842545 () Bool)

(declare-fun res!2461166 () Bool)

(declare-fun e!3583567 () Bool)

(assert (=> b!5842545 (=> res!2461166 e!3583567)))

(assert (=> b!5842545 (= res!2461166 (not ((_ is Concat!24756) r!7292)))))

(assert (=> b!5842545 (= e!3583566 e!3583567)))

(declare-fun b!5842546 () Bool)

(declare-fun e!3583568 () Bool)

(assert (=> b!5842546 (= e!3583567 e!3583568)))

(declare-fun res!2461167 () Bool)

(assert (=> b!5842546 (=> (not res!2461167) (not e!3583568))))

(declare-fun call!456416 () Bool)

(assert (=> b!5842546 (= res!2461167 call!456416)))

(declare-fun bm!456409 () Bool)

(declare-fun call!456415 () Bool)

(assert (=> bm!456409 (= call!456415 (validRegex!7647 (ite c!1035276 (regTwo!32335 r!7292) (regTwo!32334 r!7292))))))

(declare-fun b!5842547 () Bool)

(declare-fun res!2461169 () Bool)

(declare-fun e!3583571 () Bool)

(assert (=> b!5842547 (=> (not res!2461169) (not e!3583571))))

(assert (=> b!5842547 (= res!2461169 call!456416)))

(assert (=> b!5842547 (= e!3583566 e!3583571)))

(declare-fun b!5842548 () Bool)

(assert (=> b!5842548 (= e!3583570 e!3583565)))

(declare-fun c!1035275 () Bool)

(assert (=> b!5842548 (= c!1035275 ((_ is Star!15911) r!7292))))

(declare-fun call!456414 () Bool)

(declare-fun bm!456410 () Bool)

(assert (=> bm!456410 (= call!456414 (validRegex!7647 (ite c!1035275 (reg!16240 r!7292) (ite c!1035276 (regOne!32335 r!7292) (regOne!32334 r!7292)))))))

(declare-fun bm!456411 () Bool)

(assert (=> bm!456411 (= call!456416 call!456414)))

(declare-fun b!5842549 () Bool)

(assert (=> b!5842549 (= e!3583571 call!456415)))

(declare-fun b!5842550 () Bool)

(assert (=> b!5842550 (= e!3583569 call!456414)))

(declare-fun b!5842551 () Bool)

(assert (=> b!5842551 (= e!3583568 call!456415)))

(assert (= (and d!1835623 (not res!2461165)) b!5842548))

(assert (= (and b!5842548 c!1035275) b!5842543))

(assert (= (and b!5842548 (not c!1035275)) b!5842544))

(assert (= (and b!5842543 res!2461168) b!5842550))

(assert (= (and b!5842544 c!1035276) b!5842547))

(assert (= (and b!5842544 (not c!1035276)) b!5842545))

(assert (= (and b!5842547 res!2461169) b!5842549))

(assert (= (and b!5842545 (not res!2461166)) b!5842546))

(assert (= (and b!5842546 res!2461167) b!5842551))

(assert (= (or b!5842549 b!5842551) bm!456409))

(assert (= (or b!5842547 b!5842546) bm!456411))

(assert (= (or b!5842550 bm!456411) bm!456410))

(declare-fun m!6766092 () Bool)

(assert (=> b!5842543 m!6766092))

(declare-fun m!6766094 () Bool)

(assert (=> bm!456409 m!6766094))

(declare-fun m!6766096 () Bool)

(assert (=> bm!456410 m!6766096))

(assert (=> start!598108 d!1835623))

(declare-fun d!1835633 () Bool)

(declare-fun lambda!319613 () Int)

(declare-fun forall!14998 (List!64032 Int) Bool)

(assert (=> d!1835633 (= (inv!83024 lt!2303864) (forall!14998 (exprs!5795 lt!2303864) lambda!319613))))

(declare-fun bs!1376529 () Bool)

(assert (= bs!1376529 d!1835633))

(declare-fun m!6766098 () Bool)

(assert (=> bs!1376529 m!6766098))

(assert (=> b!5842200 d!1835633))

(declare-fun bs!1376530 () Bool)

(declare-fun d!1835635 () Bool)

(assert (= bs!1376530 (and d!1835635 d!1835633)))

(declare-fun lambda!319614 () Int)

(assert (=> bs!1376530 (= lambda!319614 lambda!319613)))

(assert (=> d!1835635 (= (inv!83024 setElem!39586) (forall!14998 (exprs!5795 setElem!39586) lambda!319614))))

(declare-fun bs!1376531 () Bool)

(assert (= bs!1376531 d!1835635))

(declare-fun m!6766100 () Bool)

(assert (=> bs!1376531 m!6766100))

(assert (=> setNonEmpty!39586 d!1835635))

(declare-fun d!1835637 () Bool)

(declare-fun e!3583583 () Bool)

(assert (=> d!1835637 e!3583583))

(declare-fun res!2461175 () Bool)

(assert (=> d!1835637 (=> (not res!2461175) (not e!3583583))))

(declare-fun lt!2303898 () List!64033)

(declare-fun noDuplicate!1776 (List!64033) Bool)

(assert (=> d!1835637 (= res!2461175 (noDuplicate!1776 lt!2303898))))

(declare-fun choose!44349 ((InoxSet Context!10590)) List!64033)

(assert (=> d!1835637 (= lt!2303898 (choose!44349 z!1189))))

(assert (=> d!1835637 (= (toList!9695 z!1189) lt!2303898)))

(declare-fun b!5842569 () Bool)

(declare-fun content!11741 (List!64033) (InoxSet Context!10590))

(assert (=> b!5842569 (= e!3583583 (= (content!11741 lt!2303898) z!1189))))

(assert (= (and d!1835637 res!2461175) b!5842569))

(declare-fun m!6766108 () Bool)

(assert (=> d!1835637 m!6766108))

(declare-fun m!6766110 () Bool)

(assert (=> d!1835637 m!6766110))

(declare-fun m!6766112 () Bool)

(assert (=> b!5842569 m!6766112))

(assert (=> b!5842191 d!1835637))

(declare-fun bs!1376532 () Bool)

(declare-fun d!1835641 () Bool)

(assert (= bs!1376532 (and d!1835641 d!1835633)))

(declare-fun lambda!319617 () Int)

(assert (=> bs!1376532 (= lambda!319617 lambda!319613)))

(declare-fun bs!1376533 () Bool)

(assert (= bs!1376533 (and d!1835641 d!1835635)))

(assert (=> bs!1376533 (= lambda!319617 lambda!319614)))

(declare-fun b!5842612 () Bool)

(declare-fun e!3583609 () Bool)

(declare-fun lt!2303901 () Regex!15911)

(declare-fun isConcat!868 (Regex!15911) Bool)

(assert (=> b!5842612 (= e!3583609 (isConcat!868 lt!2303901))))

(declare-fun b!5842613 () Bool)

(declare-fun e!3583610 () Bool)

(declare-fun isEmpty!35770 (List!64032) Bool)

(assert (=> b!5842613 (= e!3583610 (isEmpty!35770 (t!377387 (exprs!5795 (h!70357 zl!343)))))))

(declare-fun b!5842614 () Bool)

(declare-fun e!3583612 () Regex!15911)

(assert (=> b!5842614 (= e!3583612 (Concat!24756 (h!70356 (exprs!5795 (h!70357 zl!343))) (generalisedConcat!1508 (t!377387 (exprs!5795 (h!70357 zl!343))))))))

(declare-fun b!5842616 () Bool)

(declare-fun e!3583608 () Regex!15911)

(assert (=> b!5842616 (= e!3583608 (h!70356 (exprs!5795 (h!70357 zl!343))))))

(declare-fun b!5842617 () Bool)

(declare-fun e!3583613 () Bool)

(declare-fun e!3583611 () Bool)

(assert (=> b!5842617 (= e!3583613 e!3583611)))

(declare-fun c!1035301 () Bool)

(assert (=> b!5842617 (= c!1035301 (isEmpty!35770 (exprs!5795 (h!70357 zl!343))))))

(declare-fun b!5842618 () Bool)

(assert (=> b!5842618 (= e!3583611 e!3583609)))

(declare-fun c!1035302 () Bool)

(declare-fun tail!11462 (List!64032) List!64032)

(assert (=> b!5842618 (= c!1035302 (isEmpty!35770 (tail!11462 (exprs!5795 (h!70357 zl!343)))))))

(declare-fun b!5842619 () Bool)

(declare-fun head!12377 (List!64032) Regex!15911)

(assert (=> b!5842619 (= e!3583609 (= lt!2303901 (head!12377 (exprs!5795 (h!70357 zl!343)))))))

(declare-fun b!5842615 () Bool)

(assert (=> b!5842615 (= e!3583608 e!3583612)))

(declare-fun c!1035303 () Bool)

(assert (=> b!5842615 (= c!1035303 ((_ is Cons!63908) (exprs!5795 (h!70357 zl!343))))))

(assert (=> d!1835641 e!3583613))

(declare-fun res!2461182 () Bool)

(assert (=> d!1835641 (=> (not res!2461182) (not e!3583613))))

(assert (=> d!1835641 (= res!2461182 (validRegex!7647 lt!2303901))))

(assert (=> d!1835641 (= lt!2303901 e!3583608)))

(declare-fun c!1035304 () Bool)

(assert (=> d!1835641 (= c!1035304 e!3583610)))

(declare-fun res!2461183 () Bool)

(assert (=> d!1835641 (=> (not res!2461183) (not e!3583610))))

(assert (=> d!1835641 (= res!2461183 ((_ is Cons!63908) (exprs!5795 (h!70357 zl!343))))))

(assert (=> d!1835641 (forall!14998 (exprs!5795 (h!70357 zl!343)) lambda!319617)))

(assert (=> d!1835641 (= (generalisedConcat!1508 (exprs!5795 (h!70357 zl!343))) lt!2303901)))

(declare-fun b!5842620 () Bool)

(declare-fun isEmptyExpr!1345 (Regex!15911) Bool)

(assert (=> b!5842620 (= e!3583611 (isEmptyExpr!1345 lt!2303901))))

(declare-fun b!5842621 () Bool)

(assert (=> b!5842621 (= e!3583612 EmptyExpr!15911)))

(assert (= (and d!1835641 res!2461183) b!5842613))

(assert (= (and d!1835641 c!1035304) b!5842616))

(assert (= (and d!1835641 (not c!1035304)) b!5842615))

(assert (= (and b!5842615 c!1035303) b!5842614))

(assert (= (and b!5842615 (not c!1035303)) b!5842621))

(assert (= (and d!1835641 res!2461182) b!5842617))

(assert (= (and b!5842617 c!1035301) b!5842620))

(assert (= (and b!5842617 (not c!1035301)) b!5842618))

(assert (= (and b!5842618 c!1035302) b!5842619))

(assert (= (and b!5842618 (not c!1035302)) b!5842612))

(declare-fun m!6766114 () Bool)

(assert (=> d!1835641 m!6766114))

(declare-fun m!6766116 () Bool)

(assert (=> d!1835641 m!6766116))

(declare-fun m!6766118 () Bool)

(assert (=> b!5842618 m!6766118))

(assert (=> b!5842618 m!6766118))

(declare-fun m!6766120 () Bool)

(assert (=> b!5842618 m!6766120))

(declare-fun m!6766122 () Bool)

(assert (=> b!5842617 m!6766122))

(declare-fun m!6766124 () Bool)

(assert (=> b!5842612 m!6766124))

(declare-fun m!6766126 () Bool)

(assert (=> b!5842620 m!6766126))

(declare-fun m!6766128 () Bool)

(assert (=> b!5842613 m!6766128))

(declare-fun m!6766130 () Bool)

(assert (=> b!5842619 m!6766130))

(declare-fun m!6766132 () Bool)

(assert (=> b!5842614 m!6766132))

(assert (=> b!5842197 d!1835641))

(declare-fun d!1835643 () Bool)

(declare-fun lt!2303904 () Regex!15911)

(assert (=> d!1835643 (validRegex!7647 lt!2303904)))

(assert (=> d!1835643 (= lt!2303904 (generalisedUnion!1755 (unfocusZipperList!1332 zl!343)))))

(assert (=> d!1835643 (= (unfocusZipper!1653 zl!343) lt!2303904)))

(declare-fun bs!1376534 () Bool)

(assert (= bs!1376534 d!1835643))

(declare-fun m!6766144 () Bool)

(assert (=> bs!1376534 m!6766144))

(assert (=> bs!1376534 m!6765936))

(assert (=> bs!1376534 m!6765936))

(assert (=> bs!1376534 m!6765938))

(assert (=> b!5842198 d!1835643))

(declare-fun b!5842693 () Bool)

(declare-fun e!3583648 () (InoxSet Context!10590))

(declare-fun e!3583650 () (InoxSet Context!10590))

(assert (=> b!5842693 (= e!3583648 e!3583650)))

(declare-fun c!1035315 () Bool)

(assert (=> b!5842693 (= c!1035315 ((_ is Cons!63908) (exprs!5795 (Context!10591 (Cons!63908 r!7292 Nil!63908)))))))

(declare-fun b!5842694 () Bool)

(assert (=> b!5842694 (= e!3583650 ((as const (Array Context!10590 Bool)) false))))

(declare-fun b!5842695 () Bool)

(declare-fun e!3583649 () Bool)

(assert (=> b!5842695 (= e!3583649 (nullable!5911 (h!70356 (exprs!5795 (Context!10591 (Cons!63908 r!7292 Nil!63908))))))))

(declare-fun call!456440 () (InoxSet Context!10590))

(declare-fun b!5842696 () Bool)

(assert (=> b!5842696 (= e!3583648 ((_ map or) call!456440 (derivationStepZipperUp!1103 (Context!10591 (t!377387 (exprs!5795 (Context!10591 (Cons!63908 r!7292 Nil!63908))))) (h!70358 s!2326))))))

(declare-fun b!5842697 () Bool)

(assert (=> b!5842697 (= e!3583650 call!456440)))

(declare-fun d!1835645 () Bool)

(declare-fun c!1035314 () Bool)

(assert (=> d!1835645 (= c!1035314 e!3583649)))

(declare-fun res!2461187 () Bool)

(assert (=> d!1835645 (=> (not res!2461187) (not e!3583649))))

(assert (=> d!1835645 (= res!2461187 ((_ is Cons!63908) (exprs!5795 (Context!10591 (Cons!63908 r!7292 Nil!63908)))))))

(assert (=> d!1835645 (= (derivationStepZipperUp!1103 (Context!10591 (Cons!63908 r!7292 Nil!63908)) (h!70358 s!2326)) e!3583648)))

(declare-fun bm!456435 () Bool)

(assert (=> bm!456435 (= call!456440 (derivationStepZipperDown!1177 (h!70356 (exprs!5795 (Context!10591 (Cons!63908 r!7292 Nil!63908)))) (Context!10591 (t!377387 (exprs!5795 (Context!10591 (Cons!63908 r!7292 Nil!63908))))) (h!70358 s!2326)))))

(assert (= (and d!1835645 res!2461187) b!5842695))

(assert (= (and d!1835645 c!1035314) b!5842696))

(assert (= (and d!1835645 (not c!1035314)) b!5842693))

(assert (= (and b!5842693 c!1035315) b!5842697))

(assert (= (and b!5842693 (not c!1035315)) b!5842694))

(assert (= (or b!5842696 b!5842697) bm!456435))

(declare-fun m!6766150 () Bool)

(assert (=> b!5842695 m!6766150))

(declare-fun m!6766152 () Bool)

(assert (=> b!5842696 m!6766152))

(declare-fun m!6766154 () Bool)

(assert (=> bm!456435 m!6766154))

(assert (=> b!5842189 d!1835645))

(declare-fun b!5842724 () Bool)

(declare-fun e!3583669 () (InoxSet Context!10590))

(declare-fun e!3583666 () (InoxSet Context!10590))

(assert (=> b!5842724 (= e!3583669 e!3583666)))

(declare-fun c!1035330 () Bool)

(assert (=> b!5842724 (= c!1035330 ((_ is Concat!24756) r!7292))))

(declare-fun b!5842725 () Bool)

(declare-fun call!456453 () (InoxSet Context!10590))

(declare-fun call!456457 () (InoxSet Context!10590))

(assert (=> b!5842725 (= e!3583669 ((_ map or) call!456453 call!456457))))

(declare-fun bm!456448 () Bool)

(declare-fun c!1035328 () Bool)

(declare-fun c!1035327 () Bool)

(declare-fun call!456454 () (InoxSet Context!10590))

(declare-fun call!456455 () List!64032)

(assert (=> bm!456448 (= call!456454 (derivationStepZipperDown!1177 (ite c!1035328 (regTwo!32335 r!7292) (ite c!1035327 (regTwo!32334 r!7292) (ite c!1035330 (regOne!32334 r!7292) (reg!16240 r!7292)))) (ite (or c!1035328 c!1035327) lt!2303864 (Context!10591 call!456455)) (h!70358 s!2326)))))

(declare-fun call!456456 () List!64032)

(declare-fun bm!456449 () Bool)

(assert (=> bm!456449 (= call!456453 (derivationStepZipperDown!1177 (ite c!1035328 (regOne!32335 r!7292) (regOne!32334 r!7292)) (ite c!1035328 lt!2303864 (Context!10591 call!456456)) (h!70358 s!2326)))))

(declare-fun b!5842726 () Bool)

(declare-fun c!1035326 () Bool)

(assert (=> b!5842726 (= c!1035326 ((_ is Star!15911) r!7292))))

(declare-fun e!3583667 () (InoxSet Context!10590))

(assert (=> b!5842726 (= e!3583666 e!3583667)))

(declare-fun b!5842727 () Bool)

(declare-fun call!456458 () (InoxSet Context!10590))

(assert (=> b!5842727 (= e!3583666 call!456458)))

(declare-fun b!5842728 () Bool)

(declare-fun e!3583664 () (InoxSet Context!10590))

(assert (=> b!5842728 (= e!3583664 (store ((as const (Array Context!10590 Bool)) false) lt!2303864 true))))

(declare-fun b!5842729 () Bool)

(declare-fun e!3583668 () (InoxSet Context!10590))

(assert (=> b!5842729 (= e!3583668 ((_ map or) call!456453 call!456454))))

(declare-fun b!5842730 () Bool)

(declare-fun e!3583665 () Bool)

(assert (=> b!5842730 (= e!3583665 (nullable!5911 (regOne!32334 r!7292)))))

(declare-fun bm!456450 () Bool)

(assert (=> bm!456450 (= call!456458 call!456457)))

(declare-fun d!1835647 () Bool)

(declare-fun c!1035329 () Bool)

(assert (=> d!1835647 (= c!1035329 (and ((_ is ElementMatch!15911) r!7292) (= (c!1035181 r!7292) (h!70358 s!2326))))))

(assert (=> d!1835647 (= (derivationStepZipperDown!1177 r!7292 lt!2303864 (h!70358 s!2326)) e!3583664)))

(declare-fun b!5842731 () Bool)

(assert (=> b!5842731 (= e!3583664 e!3583668)))

(assert (=> b!5842731 (= c!1035328 ((_ is Union!15911) r!7292))))

(declare-fun bm!456451 () Bool)

(declare-fun $colon$colon!1815 (List!64032 Regex!15911) List!64032)

(assert (=> bm!456451 (= call!456456 ($colon$colon!1815 (exprs!5795 lt!2303864) (ite (or c!1035327 c!1035330) (regTwo!32334 r!7292) r!7292)))))

(declare-fun bm!456452 () Bool)

(assert (=> bm!456452 (= call!456457 call!456454)))

(declare-fun b!5842732 () Bool)

(assert (=> b!5842732 (= e!3583667 ((as const (Array Context!10590 Bool)) false))))

(declare-fun b!5842733 () Bool)

(assert (=> b!5842733 (= c!1035327 e!3583665)))

(declare-fun res!2461190 () Bool)

(assert (=> b!5842733 (=> (not res!2461190) (not e!3583665))))

(assert (=> b!5842733 (= res!2461190 ((_ is Concat!24756) r!7292))))

(assert (=> b!5842733 (= e!3583668 e!3583669)))

(declare-fun b!5842734 () Bool)

(assert (=> b!5842734 (= e!3583667 call!456458)))

(declare-fun bm!456453 () Bool)

(assert (=> bm!456453 (= call!456455 call!456456)))

(assert (= (and d!1835647 c!1035329) b!5842728))

(assert (= (and d!1835647 (not c!1035329)) b!5842731))

(assert (= (and b!5842731 c!1035328) b!5842729))

(assert (= (and b!5842731 (not c!1035328)) b!5842733))

(assert (= (and b!5842733 res!2461190) b!5842730))

(assert (= (and b!5842733 c!1035327) b!5842725))

(assert (= (and b!5842733 (not c!1035327)) b!5842724))

(assert (= (and b!5842724 c!1035330) b!5842727))

(assert (= (and b!5842724 (not c!1035330)) b!5842726))

(assert (= (and b!5842726 c!1035326) b!5842734))

(assert (= (and b!5842726 (not c!1035326)) b!5842732))

(assert (= (or b!5842727 b!5842734) bm!456453))

(assert (= (or b!5842727 b!5842734) bm!456450))

(assert (= (or b!5842725 bm!456453) bm!456451))

(assert (= (or b!5842725 bm!456450) bm!456452))

(assert (= (or b!5842729 bm!456452) bm!456448))

(assert (= (or b!5842729 b!5842725) bm!456449))

(declare-fun m!6766156 () Bool)

(assert (=> b!5842730 m!6766156))

(declare-fun m!6766158 () Bool)

(assert (=> b!5842728 m!6766158))

(declare-fun m!6766160 () Bool)

(assert (=> bm!456449 m!6766160))

(declare-fun m!6766162 () Bool)

(assert (=> bm!456448 m!6766162))

(declare-fun m!6766164 () Bool)

(assert (=> bm!456451 m!6766164))

(assert (=> b!5842189 d!1835647))

(declare-fun bs!1376535 () Bool)

(declare-fun d!1835649 () Bool)

(assert (= bs!1376535 (and d!1835649 d!1835633)))

(declare-fun lambda!319618 () Int)

(assert (=> bs!1376535 (= lambda!319618 lambda!319613)))

(declare-fun bs!1376536 () Bool)

(assert (= bs!1376536 (and d!1835649 d!1835635)))

(assert (=> bs!1376536 (= lambda!319618 lambda!319614)))

(declare-fun bs!1376537 () Bool)

(assert (= bs!1376537 (and d!1835649 d!1835641)))

(assert (=> bs!1376537 (= lambda!319618 lambda!319617)))

(assert (=> d!1835649 (= (inv!83024 (h!70357 zl!343)) (forall!14998 (exprs!5795 (h!70357 zl!343)) lambda!319618))))

(declare-fun bs!1376538 () Bool)

(assert (= bs!1376538 d!1835649))

(declare-fun m!6766166 () Bool)

(assert (=> bs!1376538 m!6766166))

(assert (=> b!5842186 d!1835649))

(declare-fun bs!1376539 () Bool)

(declare-fun d!1835651 () Bool)

(assert (= bs!1376539 (and d!1835651 d!1835633)))

(declare-fun lambda!319621 () Int)

(assert (=> bs!1376539 (= lambda!319621 lambda!319613)))

(declare-fun bs!1376540 () Bool)

(assert (= bs!1376540 (and d!1835651 d!1835635)))

(assert (=> bs!1376540 (= lambda!319621 lambda!319614)))

(declare-fun bs!1376541 () Bool)

(assert (= bs!1376541 (and d!1835651 d!1835641)))

(assert (=> bs!1376541 (= lambda!319621 lambda!319617)))

(declare-fun bs!1376542 () Bool)

(assert (= bs!1376542 (and d!1835651 d!1835649)))

(assert (=> bs!1376542 (= lambda!319621 lambda!319618)))

(declare-fun b!5842755 () Bool)

(declare-fun e!3583683 () Bool)

(assert (=> b!5842755 (= e!3583683 (isEmpty!35770 (t!377387 (unfocusZipperList!1332 zl!343))))))

(declare-fun b!5842756 () Bool)

(declare-fun e!3583687 () Bool)

(declare-fun e!3583685 () Bool)

(assert (=> b!5842756 (= e!3583687 e!3583685)))

(declare-fun c!1035341 () Bool)

(assert (=> b!5842756 (= c!1035341 (isEmpty!35770 (unfocusZipperList!1332 zl!343)))))

(assert (=> d!1835651 e!3583687))

(declare-fun res!2461196 () Bool)

(assert (=> d!1835651 (=> (not res!2461196) (not e!3583687))))

(declare-fun lt!2303907 () Regex!15911)

(assert (=> d!1835651 (= res!2461196 (validRegex!7647 lt!2303907))))

(declare-fun e!3583684 () Regex!15911)

(assert (=> d!1835651 (= lt!2303907 e!3583684)))

(declare-fun c!1035339 () Bool)

(assert (=> d!1835651 (= c!1035339 e!3583683)))

(declare-fun res!2461195 () Bool)

(assert (=> d!1835651 (=> (not res!2461195) (not e!3583683))))

(assert (=> d!1835651 (= res!2461195 ((_ is Cons!63908) (unfocusZipperList!1332 zl!343)))))

(assert (=> d!1835651 (forall!14998 (unfocusZipperList!1332 zl!343) lambda!319621)))

(assert (=> d!1835651 (= (generalisedUnion!1755 (unfocusZipperList!1332 zl!343)) lt!2303907)))

(declare-fun b!5842757 () Bool)

(declare-fun e!3583686 () Bool)

(assert (=> b!5842757 (= e!3583685 e!3583686)))

(declare-fun c!1035342 () Bool)

(assert (=> b!5842757 (= c!1035342 (isEmpty!35770 (tail!11462 (unfocusZipperList!1332 zl!343))))))

(declare-fun b!5842758 () Bool)

(assert (=> b!5842758 (= e!3583686 (= lt!2303907 (head!12377 (unfocusZipperList!1332 zl!343))))))

(declare-fun b!5842759 () Bool)

(declare-fun e!3583682 () Regex!15911)

(assert (=> b!5842759 (= e!3583682 EmptyLang!15911)))

(declare-fun b!5842760 () Bool)

(assert (=> b!5842760 (= e!3583684 (h!70356 (unfocusZipperList!1332 zl!343)))))

(declare-fun b!5842761 () Bool)

(declare-fun isUnion!784 (Regex!15911) Bool)

(assert (=> b!5842761 (= e!3583686 (isUnion!784 lt!2303907))))

(declare-fun b!5842762 () Bool)

(assert (=> b!5842762 (= e!3583684 e!3583682)))

(declare-fun c!1035340 () Bool)

(assert (=> b!5842762 (= c!1035340 ((_ is Cons!63908) (unfocusZipperList!1332 zl!343)))))

(declare-fun b!5842763 () Bool)

(declare-fun isEmptyLang!1354 (Regex!15911) Bool)

(assert (=> b!5842763 (= e!3583685 (isEmptyLang!1354 lt!2303907))))

(declare-fun b!5842764 () Bool)

(assert (=> b!5842764 (= e!3583682 (Union!15911 (h!70356 (unfocusZipperList!1332 zl!343)) (generalisedUnion!1755 (t!377387 (unfocusZipperList!1332 zl!343)))))))

(assert (= (and d!1835651 res!2461195) b!5842755))

(assert (= (and d!1835651 c!1035339) b!5842760))

(assert (= (and d!1835651 (not c!1035339)) b!5842762))

(assert (= (and b!5842762 c!1035340) b!5842764))

(assert (= (and b!5842762 (not c!1035340)) b!5842759))

(assert (= (and d!1835651 res!2461196) b!5842756))

(assert (= (and b!5842756 c!1035341) b!5842763))

(assert (= (and b!5842756 (not c!1035341)) b!5842757))

(assert (= (and b!5842757 c!1035342) b!5842758))

(assert (= (and b!5842757 (not c!1035342)) b!5842761))

(assert (=> b!5842757 m!6765936))

(declare-fun m!6766168 () Bool)

(assert (=> b!5842757 m!6766168))

(assert (=> b!5842757 m!6766168))

(declare-fun m!6766170 () Bool)

(assert (=> b!5842757 m!6766170))

(assert (=> b!5842756 m!6765936))

(declare-fun m!6766172 () Bool)

(assert (=> b!5842756 m!6766172))

(assert (=> b!5842758 m!6765936))

(declare-fun m!6766174 () Bool)

(assert (=> b!5842758 m!6766174))

(declare-fun m!6766176 () Bool)

(assert (=> b!5842764 m!6766176))

(declare-fun m!6766178 () Bool)

(assert (=> b!5842755 m!6766178))

(declare-fun m!6766180 () Bool)

(assert (=> d!1835651 m!6766180))

(assert (=> d!1835651 m!6765936))

(declare-fun m!6766182 () Bool)

(assert (=> d!1835651 m!6766182))

(declare-fun m!6766184 () Bool)

(assert (=> b!5842763 m!6766184))

(declare-fun m!6766186 () Bool)

(assert (=> b!5842761 m!6766186))

(assert (=> b!5842195 d!1835651))

(declare-fun bs!1376543 () Bool)

(declare-fun d!1835653 () Bool)

(assert (= bs!1376543 (and d!1835653 d!1835641)))

(declare-fun lambda!319624 () Int)

(assert (=> bs!1376543 (= lambda!319624 lambda!319617)))

(declare-fun bs!1376544 () Bool)

(assert (= bs!1376544 (and d!1835653 d!1835633)))

(assert (=> bs!1376544 (= lambda!319624 lambda!319613)))

(declare-fun bs!1376545 () Bool)

(assert (= bs!1376545 (and d!1835653 d!1835649)))

(assert (=> bs!1376545 (= lambda!319624 lambda!319618)))

(declare-fun bs!1376546 () Bool)

(assert (= bs!1376546 (and d!1835653 d!1835651)))

(assert (=> bs!1376546 (= lambda!319624 lambda!319621)))

(declare-fun bs!1376547 () Bool)

(assert (= bs!1376547 (and d!1835653 d!1835635)))

(assert (=> bs!1376547 (= lambda!319624 lambda!319614)))

(declare-fun lt!2303910 () List!64032)

(assert (=> d!1835653 (forall!14998 lt!2303910 lambda!319624)))

(declare-fun e!3583690 () List!64032)

(assert (=> d!1835653 (= lt!2303910 e!3583690)))

(declare-fun c!1035345 () Bool)

(assert (=> d!1835653 (= c!1035345 ((_ is Cons!63909) zl!343))))

(assert (=> d!1835653 (= (unfocusZipperList!1332 zl!343) lt!2303910)))

(declare-fun b!5842769 () Bool)

(assert (=> b!5842769 (= e!3583690 (Cons!63908 (generalisedConcat!1508 (exprs!5795 (h!70357 zl!343))) (unfocusZipperList!1332 (t!377388 zl!343))))))

(declare-fun b!5842770 () Bool)

(assert (=> b!5842770 (= e!3583690 Nil!63908)))

(assert (= (and d!1835653 c!1035345) b!5842769))

(assert (= (and d!1835653 (not c!1035345)) b!5842770))

(declare-fun m!6766188 () Bool)

(assert (=> d!1835653 m!6766188))

(assert (=> b!5842769 m!6765922))

(declare-fun m!6766190 () Bool)

(assert (=> b!5842769 m!6766190))

(assert (=> b!5842195 d!1835653))

(declare-fun bs!1376548 () Bool)

(declare-fun b!5842773 () Bool)

(assert (= bs!1376548 (and b!5842773 b!5842376)))

(declare-fun lambda!319625 () Int)

(assert (=> bs!1376548 (= (and (= (reg!16240 (regTwo!32335 r!7292)) (reg!16240 r!7292)) (= (regTwo!32335 r!7292) r!7292)) (= lambda!319625 lambda!319601))))

(declare-fun bs!1376549 () Bool)

(assert (= bs!1376549 (and b!5842773 b!5842383)))

(assert (=> bs!1376549 (not (= lambda!319625 lambda!319602))))

(assert (=> b!5842773 true))

(assert (=> b!5842773 true))

(declare-fun bs!1376550 () Bool)

(declare-fun b!5842780 () Bool)

(assert (= bs!1376550 (and b!5842780 b!5842376)))

(declare-fun lambda!319626 () Int)

(assert (=> bs!1376550 (not (= lambda!319626 lambda!319601))))

(declare-fun bs!1376551 () Bool)

(assert (= bs!1376551 (and b!5842780 b!5842383)))

(assert (=> bs!1376551 (= (and (= (regOne!32334 (regTwo!32335 r!7292)) (regOne!32334 r!7292)) (= (regTwo!32334 (regTwo!32335 r!7292)) (regTwo!32334 r!7292))) (= lambda!319626 lambda!319602))))

(declare-fun bs!1376552 () Bool)

(assert (= bs!1376552 (and b!5842780 b!5842773)))

(assert (=> bs!1376552 (not (= lambda!319626 lambda!319625))))

(assert (=> b!5842780 true))

(assert (=> b!5842780 true))

(declare-fun d!1835655 () Bool)

(declare-fun c!1035346 () Bool)

(assert (=> d!1835655 (= c!1035346 ((_ is EmptyExpr!15911) (regTwo!32335 r!7292)))))

(declare-fun e!3583693 () Bool)

(assert (=> d!1835655 (= (matchRSpec!3012 (regTwo!32335 r!7292) s!2326) e!3583693)))

(declare-fun b!5842771 () Bool)

(declare-fun e!3583696 () Bool)

(assert (=> b!5842771 (= e!3583696 (matchRSpec!3012 (regTwo!32335 (regTwo!32335 r!7292)) s!2326))))

(declare-fun b!5842772 () Bool)

(declare-fun e!3583694 () Bool)

(assert (=> b!5842772 (= e!3583693 e!3583694)))

(declare-fun res!2461198 () Bool)

(assert (=> b!5842772 (= res!2461198 (not ((_ is EmptyLang!15911) (regTwo!32335 r!7292))))))

(assert (=> b!5842772 (=> (not res!2461198) (not e!3583694))))

(declare-fun e!3583695 () Bool)

(declare-fun call!456460 () Bool)

(assert (=> b!5842773 (= e!3583695 call!456460)))

(declare-fun b!5842774 () Bool)

(declare-fun c!1035348 () Bool)

(assert (=> b!5842774 (= c!1035348 ((_ is ElementMatch!15911) (regTwo!32335 r!7292)))))

(declare-fun e!3583692 () Bool)

(assert (=> b!5842774 (= e!3583694 e!3583692)))

(declare-fun b!5842775 () Bool)

(declare-fun res!2461197 () Bool)

(assert (=> b!5842775 (=> res!2461197 e!3583695)))

(declare-fun call!456459 () Bool)

(assert (=> b!5842775 (= res!2461197 call!456459)))

(declare-fun e!3583697 () Bool)

(assert (=> b!5842775 (= e!3583697 e!3583695)))

(declare-fun b!5842776 () Bool)

(assert (=> b!5842776 (= e!3583692 (= s!2326 (Cons!63910 (c!1035181 (regTwo!32335 r!7292)) Nil!63910)))))

(declare-fun b!5842777 () Bool)

(assert (=> b!5842777 (= e!3583693 call!456459)))

(declare-fun c!1035347 () Bool)

(declare-fun bm!456454 () Bool)

(assert (=> bm!456454 (= call!456460 (Exists!2983 (ite c!1035347 lambda!319625 lambda!319626)))))

(declare-fun bm!456455 () Bool)

(assert (=> bm!456455 (= call!456459 (isEmpty!35769 s!2326))))

(declare-fun b!5842778 () Bool)

(declare-fun c!1035349 () Bool)

(assert (=> b!5842778 (= c!1035349 ((_ is Union!15911) (regTwo!32335 r!7292)))))

(declare-fun e!3583691 () Bool)

(assert (=> b!5842778 (= e!3583692 e!3583691)))

(declare-fun b!5842779 () Bool)

(assert (=> b!5842779 (= e!3583691 e!3583696)))

(declare-fun res!2461199 () Bool)

(assert (=> b!5842779 (= res!2461199 (matchRSpec!3012 (regOne!32335 (regTwo!32335 r!7292)) s!2326))))

(assert (=> b!5842779 (=> res!2461199 e!3583696)))

(assert (=> b!5842780 (= e!3583697 call!456460)))

(declare-fun b!5842781 () Bool)

(assert (=> b!5842781 (= e!3583691 e!3583697)))

(assert (=> b!5842781 (= c!1035347 ((_ is Star!15911) (regTwo!32335 r!7292)))))

(assert (= (and d!1835655 c!1035346) b!5842777))

(assert (= (and d!1835655 (not c!1035346)) b!5842772))

(assert (= (and b!5842772 res!2461198) b!5842774))

(assert (= (and b!5842774 c!1035348) b!5842776))

(assert (= (and b!5842774 (not c!1035348)) b!5842778))

(assert (= (and b!5842778 c!1035349) b!5842779))

(assert (= (and b!5842778 (not c!1035349)) b!5842781))

(assert (= (and b!5842779 (not res!2461199)) b!5842771))

(assert (= (and b!5842781 c!1035347) b!5842775))

(assert (= (and b!5842781 (not c!1035347)) b!5842780))

(assert (= (and b!5842775 (not res!2461197)) b!5842773))

(assert (= (or b!5842773 b!5842780) bm!456454))

(assert (= (or b!5842777 b!5842775) bm!456455))

(declare-fun m!6766192 () Bool)

(assert (=> b!5842771 m!6766192))

(declare-fun m!6766194 () Bool)

(assert (=> bm!456454 m!6766194))

(assert (=> bm!456455 m!6766016))

(declare-fun m!6766196 () Bool)

(assert (=> b!5842779 m!6766196))

(assert (=> b!5842187 d!1835655))

(declare-fun d!1835657 () Bool)

(assert (=> d!1835657 (= (matchR!8094 (regOne!32335 r!7292) s!2326) (matchRSpec!3012 (regOne!32335 r!7292) s!2326))))

(declare-fun lt!2303911 () Unit!157093)

(assert (=> d!1835657 (= lt!2303911 (choose!44348 (regOne!32335 r!7292) s!2326))))

(assert (=> d!1835657 (validRegex!7647 (regOne!32335 r!7292))))

(assert (=> d!1835657 (= (mainMatchTheorem!3012 (regOne!32335 r!7292) s!2326) lt!2303911)))

(declare-fun bs!1376553 () Bool)

(assert (= bs!1376553 d!1835657))

(assert (=> bs!1376553 m!6765952))

(assert (=> bs!1376553 m!6765948))

(declare-fun m!6766198 () Bool)

(assert (=> bs!1376553 m!6766198))

(declare-fun m!6766200 () Bool)

(assert (=> bs!1376553 m!6766200))

(assert (=> b!5842187 d!1835657))

(declare-fun b!5842782 () Bool)

(declare-fun e!3583701 () Bool)

(assert (=> b!5842782 (= e!3583701 (not (= (head!12375 s!2326) (c!1035181 (regTwo!32335 r!7292)))))))

(declare-fun b!5842783 () Bool)

(declare-fun e!3583703 () Bool)

(declare-fun lt!2303912 () Bool)

(assert (=> b!5842783 (= e!3583703 (not lt!2303912))))

(declare-fun d!1835659 () Bool)

(declare-fun e!3583698 () Bool)

(assert (=> d!1835659 e!3583698))

(declare-fun c!1035351 () Bool)

(assert (=> d!1835659 (= c!1035351 ((_ is EmptyExpr!15911) (regTwo!32335 r!7292)))))

(declare-fun e!3583704 () Bool)

(assert (=> d!1835659 (= lt!2303912 e!3583704)))

(declare-fun c!1035350 () Bool)

(assert (=> d!1835659 (= c!1035350 (isEmpty!35769 s!2326))))

(assert (=> d!1835659 (validRegex!7647 (regTwo!32335 r!7292))))

(assert (=> d!1835659 (= (matchR!8094 (regTwo!32335 r!7292) s!2326) lt!2303912)))

(declare-fun b!5842784 () Bool)

(declare-fun res!2461204 () Bool)

(declare-fun e!3583702 () Bool)

(assert (=> b!5842784 (=> (not res!2461204) (not e!3583702))))

(declare-fun call!456461 () Bool)

(assert (=> b!5842784 (= res!2461204 (not call!456461))))

(declare-fun b!5842785 () Bool)

(assert (=> b!5842785 (= e!3583702 (= (head!12375 s!2326) (c!1035181 (regTwo!32335 r!7292))))))

(declare-fun b!5842786 () Bool)

(declare-fun res!2461200 () Bool)

(declare-fun e!3583700 () Bool)

(assert (=> b!5842786 (=> res!2461200 e!3583700)))

(assert (=> b!5842786 (= res!2461200 (not ((_ is ElementMatch!15911) (regTwo!32335 r!7292))))))

(assert (=> b!5842786 (= e!3583703 e!3583700)))

(declare-fun b!5842787 () Bool)

(declare-fun e!3583699 () Bool)

(assert (=> b!5842787 (= e!3583699 e!3583701)))

(declare-fun res!2461203 () Bool)

(assert (=> b!5842787 (=> res!2461203 e!3583701)))

(assert (=> b!5842787 (= res!2461203 call!456461)))

(declare-fun bm!456456 () Bool)

(assert (=> bm!456456 (= call!456461 (isEmpty!35769 s!2326))))

(declare-fun b!5842788 () Bool)

(assert (=> b!5842788 (= e!3583704 (matchR!8094 (derivativeStep!4648 (regTwo!32335 r!7292) (head!12375 s!2326)) (tail!11460 s!2326)))))

(declare-fun b!5842789 () Bool)

(assert (=> b!5842789 (= e!3583704 (nullable!5911 (regTwo!32335 r!7292)))))

(declare-fun b!5842790 () Bool)

(assert (=> b!5842790 (= e!3583700 e!3583699)))

(declare-fun res!2461206 () Bool)

(assert (=> b!5842790 (=> (not res!2461206) (not e!3583699))))

(assert (=> b!5842790 (= res!2461206 (not lt!2303912))))

(declare-fun b!5842791 () Bool)

(assert (=> b!5842791 (= e!3583698 (= lt!2303912 call!456461))))

(declare-fun b!5842792 () Bool)

(declare-fun res!2461207 () Bool)

(assert (=> b!5842792 (=> (not res!2461207) (not e!3583702))))

(assert (=> b!5842792 (= res!2461207 (isEmpty!35769 (tail!11460 s!2326)))))

(declare-fun b!5842793 () Bool)

(declare-fun res!2461202 () Bool)

(assert (=> b!5842793 (=> res!2461202 e!3583700)))

(assert (=> b!5842793 (= res!2461202 e!3583702)))

(declare-fun res!2461205 () Bool)

(assert (=> b!5842793 (=> (not res!2461205) (not e!3583702))))

(assert (=> b!5842793 (= res!2461205 lt!2303912)))

(declare-fun b!5842794 () Bool)

(declare-fun res!2461201 () Bool)

(assert (=> b!5842794 (=> res!2461201 e!3583701)))

(assert (=> b!5842794 (= res!2461201 (not (isEmpty!35769 (tail!11460 s!2326))))))

(declare-fun b!5842795 () Bool)

(assert (=> b!5842795 (= e!3583698 e!3583703)))

(declare-fun c!1035352 () Bool)

(assert (=> b!5842795 (= c!1035352 ((_ is EmptyLang!15911) (regTwo!32335 r!7292)))))

(assert (= (and d!1835659 c!1035350) b!5842789))

(assert (= (and d!1835659 (not c!1035350)) b!5842788))

(assert (= (and d!1835659 c!1035351) b!5842791))

(assert (= (and d!1835659 (not c!1035351)) b!5842795))

(assert (= (and b!5842795 c!1035352) b!5842783))

(assert (= (and b!5842795 (not c!1035352)) b!5842786))

(assert (= (and b!5842786 (not res!2461200)) b!5842793))

(assert (= (and b!5842793 res!2461205) b!5842784))

(assert (= (and b!5842784 res!2461204) b!5842792))

(assert (= (and b!5842792 res!2461207) b!5842785))

(assert (= (and b!5842793 (not res!2461202)) b!5842790))

(assert (= (and b!5842790 res!2461206) b!5842787))

(assert (= (and b!5842787 (not res!2461203)) b!5842794))

(assert (= (and b!5842794 (not res!2461201)) b!5842782))

(assert (= (or b!5842791 b!5842784 b!5842787) bm!456456))

(assert (=> bm!456456 m!6766016))

(assert (=> d!1835659 m!6766016))

(declare-fun m!6766202 () Bool)

(assert (=> d!1835659 m!6766202))

(assert (=> b!5842792 m!6766048))

(assert (=> b!5842792 m!6766048))

(assert (=> b!5842792 m!6766050))

(assert (=> b!5842788 m!6766052))

(assert (=> b!5842788 m!6766052))

(declare-fun m!6766204 () Bool)

(assert (=> b!5842788 m!6766204))

(assert (=> b!5842788 m!6766048))

(assert (=> b!5842788 m!6766204))

(assert (=> b!5842788 m!6766048))

(declare-fun m!6766206 () Bool)

(assert (=> b!5842788 m!6766206))

(assert (=> b!5842785 m!6766052))

(declare-fun m!6766208 () Bool)

(assert (=> b!5842789 m!6766208))

(assert (=> b!5842782 m!6766052))

(assert (=> b!5842794 m!6766048))

(assert (=> b!5842794 m!6766048))

(assert (=> b!5842794 m!6766050))

(assert (=> b!5842187 d!1835659))

(declare-fun d!1835661 () Bool)

(assert (=> d!1835661 (= (matchR!8094 (regTwo!32335 r!7292) s!2326) (matchRSpec!3012 (regTwo!32335 r!7292) s!2326))))

(declare-fun lt!2303913 () Unit!157093)

(assert (=> d!1835661 (= lt!2303913 (choose!44348 (regTwo!32335 r!7292) s!2326))))

(assert (=> d!1835661 (validRegex!7647 (regTwo!32335 r!7292))))

(assert (=> d!1835661 (= (mainMatchTheorem!3012 (regTwo!32335 r!7292) s!2326) lt!2303913)))

(declare-fun bs!1376554 () Bool)

(assert (= bs!1376554 d!1835661))

(assert (=> bs!1376554 m!6765946))

(assert (=> bs!1376554 m!6765942))

(declare-fun m!6766210 () Bool)

(assert (=> bs!1376554 m!6766210))

(assert (=> bs!1376554 m!6766202))

(assert (=> b!5842187 d!1835661))

(declare-fun bs!1376555 () Bool)

(declare-fun b!5842798 () Bool)

(assert (= bs!1376555 (and b!5842798 b!5842376)))

(declare-fun lambda!319627 () Int)

(assert (=> bs!1376555 (= (and (= (reg!16240 (regOne!32335 r!7292)) (reg!16240 r!7292)) (= (regOne!32335 r!7292) r!7292)) (= lambda!319627 lambda!319601))))

(declare-fun bs!1376556 () Bool)

(assert (= bs!1376556 (and b!5842798 b!5842383)))

(assert (=> bs!1376556 (not (= lambda!319627 lambda!319602))))

(declare-fun bs!1376557 () Bool)

(assert (= bs!1376557 (and b!5842798 b!5842773)))

(assert (=> bs!1376557 (= (and (= (reg!16240 (regOne!32335 r!7292)) (reg!16240 (regTwo!32335 r!7292))) (= (regOne!32335 r!7292) (regTwo!32335 r!7292))) (= lambda!319627 lambda!319625))))

(declare-fun bs!1376558 () Bool)

(assert (= bs!1376558 (and b!5842798 b!5842780)))

(assert (=> bs!1376558 (not (= lambda!319627 lambda!319626))))

(assert (=> b!5842798 true))

(assert (=> b!5842798 true))

(declare-fun bs!1376559 () Bool)

(declare-fun b!5842805 () Bool)

(assert (= bs!1376559 (and b!5842805 b!5842383)))

(declare-fun lambda!319628 () Int)

(assert (=> bs!1376559 (= (and (= (regOne!32334 (regOne!32335 r!7292)) (regOne!32334 r!7292)) (= (regTwo!32334 (regOne!32335 r!7292)) (regTwo!32334 r!7292))) (= lambda!319628 lambda!319602))))

(declare-fun bs!1376560 () Bool)

(assert (= bs!1376560 (and b!5842805 b!5842773)))

(assert (=> bs!1376560 (not (= lambda!319628 lambda!319625))))

(declare-fun bs!1376561 () Bool)

(assert (= bs!1376561 (and b!5842805 b!5842376)))

(assert (=> bs!1376561 (not (= lambda!319628 lambda!319601))))

(declare-fun bs!1376562 () Bool)

(assert (= bs!1376562 (and b!5842805 b!5842780)))

(assert (=> bs!1376562 (= (and (= (regOne!32334 (regOne!32335 r!7292)) (regOne!32334 (regTwo!32335 r!7292))) (= (regTwo!32334 (regOne!32335 r!7292)) (regTwo!32334 (regTwo!32335 r!7292)))) (= lambda!319628 lambda!319626))))

(declare-fun bs!1376563 () Bool)

(assert (= bs!1376563 (and b!5842805 b!5842798)))

(assert (=> bs!1376563 (not (= lambda!319628 lambda!319627))))

(assert (=> b!5842805 true))

(assert (=> b!5842805 true))

(declare-fun d!1835663 () Bool)

(declare-fun c!1035353 () Bool)

(assert (=> d!1835663 (= c!1035353 ((_ is EmptyExpr!15911) (regOne!32335 r!7292)))))

(declare-fun e!3583707 () Bool)

(assert (=> d!1835663 (= (matchRSpec!3012 (regOne!32335 r!7292) s!2326) e!3583707)))

(declare-fun b!5842796 () Bool)

(declare-fun e!3583710 () Bool)

(assert (=> b!5842796 (= e!3583710 (matchRSpec!3012 (regTwo!32335 (regOne!32335 r!7292)) s!2326))))

(declare-fun b!5842797 () Bool)

(declare-fun e!3583708 () Bool)

(assert (=> b!5842797 (= e!3583707 e!3583708)))

(declare-fun res!2461209 () Bool)

(assert (=> b!5842797 (= res!2461209 (not ((_ is EmptyLang!15911) (regOne!32335 r!7292))))))

(assert (=> b!5842797 (=> (not res!2461209) (not e!3583708))))

(declare-fun e!3583709 () Bool)

(declare-fun call!456463 () Bool)

(assert (=> b!5842798 (= e!3583709 call!456463)))

(declare-fun b!5842799 () Bool)

(declare-fun c!1035355 () Bool)

(assert (=> b!5842799 (= c!1035355 ((_ is ElementMatch!15911) (regOne!32335 r!7292)))))

(declare-fun e!3583706 () Bool)

(assert (=> b!5842799 (= e!3583708 e!3583706)))

(declare-fun b!5842800 () Bool)

(declare-fun res!2461208 () Bool)

(assert (=> b!5842800 (=> res!2461208 e!3583709)))

(declare-fun call!456462 () Bool)

(assert (=> b!5842800 (= res!2461208 call!456462)))

(declare-fun e!3583711 () Bool)

(assert (=> b!5842800 (= e!3583711 e!3583709)))

(declare-fun b!5842801 () Bool)

(assert (=> b!5842801 (= e!3583706 (= s!2326 (Cons!63910 (c!1035181 (regOne!32335 r!7292)) Nil!63910)))))

(declare-fun b!5842802 () Bool)

(assert (=> b!5842802 (= e!3583707 call!456462)))

(declare-fun bm!456457 () Bool)

(declare-fun c!1035354 () Bool)

(assert (=> bm!456457 (= call!456463 (Exists!2983 (ite c!1035354 lambda!319627 lambda!319628)))))

(declare-fun bm!456458 () Bool)

(assert (=> bm!456458 (= call!456462 (isEmpty!35769 s!2326))))

(declare-fun b!5842803 () Bool)

(declare-fun c!1035356 () Bool)

(assert (=> b!5842803 (= c!1035356 ((_ is Union!15911) (regOne!32335 r!7292)))))

(declare-fun e!3583705 () Bool)

(assert (=> b!5842803 (= e!3583706 e!3583705)))

(declare-fun b!5842804 () Bool)

(assert (=> b!5842804 (= e!3583705 e!3583710)))

(declare-fun res!2461210 () Bool)

(assert (=> b!5842804 (= res!2461210 (matchRSpec!3012 (regOne!32335 (regOne!32335 r!7292)) s!2326))))

(assert (=> b!5842804 (=> res!2461210 e!3583710)))

(assert (=> b!5842805 (= e!3583711 call!456463)))

(declare-fun b!5842806 () Bool)

(assert (=> b!5842806 (= e!3583705 e!3583711)))

(assert (=> b!5842806 (= c!1035354 ((_ is Star!15911) (regOne!32335 r!7292)))))

(assert (= (and d!1835663 c!1035353) b!5842802))

(assert (= (and d!1835663 (not c!1035353)) b!5842797))

(assert (= (and b!5842797 res!2461209) b!5842799))

(assert (= (and b!5842799 c!1035355) b!5842801))

(assert (= (and b!5842799 (not c!1035355)) b!5842803))

(assert (= (and b!5842803 c!1035356) b!5842804))

(assert (= (and b!5842803 (not c!1035356)) b!5842806))

(assert (= (and b!5842804 (not res!2461210)) b!5842796))

(assert (= (and b!5842806 c!1035354) b!5842800))

(assert (= (and b!5842806 (not c!1035354)) b!5842805))

(assert (= (and b!5842800 (not res!2461208)) b!5842798))

(assert (= (or b!5842798 b!5842805) bm!456457))

(assert (= (or b!5842802 b!5842800) bm!456458))

(declare-fun m!6766212 () Bool)

(assert (=> b!5842796 m!6766212))

(declare-fun m!6766214 () Bool)

(assert (=> bm!456457 m!6766214))

(assert (=> bm!456458 m!6766016))

(declare-fun m!6766216 () Bool)

(assert (=> b!5842804 m!6766216))

(assert (=> b!5842187 d!1835663))

(declare-fun b!5842807 () Bool)

(declare-fun e!3583715 () Bool)

(assert (=> b!5842807 (= e!3583715 (not (= (head!12375 s!2326) (c!1035181 (regOne!32335 r!7292)))))))

(declare-fun b!5842808 () Bool)

(declare-fun e!3583717 () Bool)

(declare-fun lt!2303914 () Bool)

(assert (=> b!5842808 (= e!3583717 (not lt!2303914))))

(declare-fun d!1835665 () Bool)

(declare-fun e!3583712 () Bool)

(assert (=> d!1835665 e!3583712))

(declare-fun c!1035358 () Bool)

(assert (=> d!1835665 (= c!1035358 ((_ is EmptyExpr!15911) (regOne!32335 r!7292)))))

(declare-fun e!3583718 () Bool)

(assert (=> d!1835665 (= lt!2303914 e!3583718)))

(declare-fun c!1035357 () Bool)

(assert (=> d!1835665 (= c!1035357 (isEmpty!35769 s!2326))))

(assert (=> d!1835665 (validRegex!7647 (regOne!32335 r!7292))))

(assert (=> d!1835665 (= (matchR!8094 (regOne!32335 r!7292) s!2326) lt!2303914)))

(declare-fun b!5842809 () Bool)

(declare-fun res!2461215 () Bool)

(declare-fun e!3583716 () Bool)

(assert (=> b!5842809 (=> (not res!2461215) (not e!3583716))))

(declare-fun call!456464 () Bool)

(assert (=> b!5842809 (= res!2461215 (not call!456464))))

(declare-fun b!5842810 () Bool)

(assert (=> b!5842810 (= e!3583716 (= (head!12375 s!2326) (c!1035181 (regOne!32335 r!7292))))))

(declare-fun b!5842811 () Bool)

(declare-fun res!2461211 () Bool)

(declare-fun e!3583714 () Bool)

(assert (=> b!5842811 (=> res!2461211 e!3583714)))

(assert (=> b!5842811 (= res!2461211 (not ((_ is ElementMatch!15911) (regOne!32335 r!7292))))))

(assert (=> b!5842811 (= e!3583717 e!3583714)))

(declare-fun b!5842812 () Bool)

(declare-fun e!3583713 () Bool)

(assert (=> b!5842812 (= e!3583713 e!3583715)))

(declare-fun res!2461214 () Bool)

(assert (=> b!5842812 (=> res!2461214 e!3583715)))

(assert (=> b!5842812 (= res!2461214 call!456464)))

(declare-fun bm!456459 () Bool)

(assert (=> bm!456459 (= call!456464 (isEmpty!35769 s!2326))))

(declare-fun b!5842813 () Bool)

(assert (=> b!5842813 (= e!3583718 (matchR!8094 (derivativeStep!4648 (regOne!32335 r!7292) (head!12375 s!2326)) (tail!11460 s!2326)))))

(declare-fun b!5842814 () Bool)

(assert (=> b!5842814 (= e!3583718 (nullable!5911 (regOne!32335 r!7292)))))

(declare-fun b!5842815 () Bool)

(assert (=> b!5842815 (= e!3583714 e!3583713)))

(declare-fun res!2461217 () Bool)

(assert (=> b!5842815 (=> (not res!2461217) (not e!3583713))))

(assert (=> b!5842815 (= res!2461217 (not lt!2303914))))

(declare-fun b!5842816 () Bool)

(assert (=> b!5842816 (= e!3583712 (= lt!2303914 call!456464))))

(declare-fun b!5842817 () Bool)

(declare-fun res!2461218 () Bool)

(assert (=> b!5842817 (=> (not res!2461218) (not e!3583716))))

(assert (=> b!5842817 (= res!2461218 (isEmpty!35769 (tail!11460 s!2326)))))

(declare-fun b!5842818 () Bool)

(declare-fun res!2461213 () Bool)

(assert (=> b!5842818 (=> res!2461213 e!3583714)))

(assert (=> b!5842818 (= res!2461213 e!3583716)))

(declare-fun res!2461216 () Bool)

(assert (=> b!5842818 (=> (not res!2461216) (not e!3583716))))

(assert (=> b!5842818 (= res!2461216 lt!2303914)))

(declare-fun b!5842819 () Bool)

(declare-fun res!2461212 () Bool)

(assert (=> b!5842819 (=> res!2461212 e!3583715)))

(assert (=> b!5842819 (= res!2461212 (not (isEmpty!35769 (tail!11460 s!2326))))))

(declare-fun b!5842820 () Bool)

(assert (=> b!5842820 (= e!3583712 e!3583717)))

(declare-fun c!1035359 () Bool)

(assert (=> b!5842820 (= c!1035359 ((_ is EmptyLang!15911) (regOne!32335 r!7292)))))

(assert (= (and d!1835665 c!1035357) b!5842814))

(assert (= (and d!1835665 (not c!1035357)) b!5842813))

(assert (= (and d!1835665 c!1035358) b!5842816))

(assert (= (and d!1835665 (not c!1035358)) b!5842820))

(assert (= (and b!5842820 c!1035359) b!5842808))

(assert (= (and b!5842820 (not c!1035359)) b!5842811))

(assert (= (and b!5842811 (not res!2461211)) b!5842818))

(assert (= (and b!5842818 res!2461216) b!5842809))

(assert (= (and b!5842809 res!2461215) b!5842817))

(assert (= (and b!5842817 res!2461218) b!5842810))

(assert (= (and b!5842818 (not res!2461213)) b!5842815))

(assert (= (and b!5842815 res!2461217) b!5842812))

(assert (= (and b!5842812 (not res!2461214)) b!5842819))

(assert (= (and b!5842819 (not res!2461212)) b!5842807))

(assert (= (or b!5842816 b!5842809 b!5842812) bm!456459))

(assert (=> bm!456459 m!6766016))

(assert (=> d!1835665 m!6766016))

(assert (=> d!1835665 m!6766200))

(assert (=> b!5842817 m!6766048))

(assert (=> b!5842817 m!6766048))

(assert (=> b!5842817 m!6766050))

(assert (=> b!5842813 m!6766052))

(assert (=> b!5842813 m!6766052))

(declare-fun m!6766218 () Bool)

(assert (=> b!5842813 m!6766218))

(assert (=> b!5842813 m!6766048))

(assert (=> b!5842813 m!6766218))

(assert (=> b!5842813 m!6766048))

(declare-fun m!6766220 () Bool)

(assert (=> b!5842813 m!6766220))

(assert (=> b!5842810 m!6766052))

(declare-fun m!6766222 () Bool)

(assert (=> b!5842814 m!6766222))

(assert (=> b!5842807 m!6766052))

(assert (=> b!5842819 m!6766048))

(assert (=> b!5842819 m!6766048))

(assert (=> b!5842819 m!6766050))

(assert (=> b!5842187 d!1835665))

(declare-fun b!5842833 () Bool)

(declare-fun e!3583721 () Bool)

(declare-fun tp!1615628 () Bool)

(assert (=> b!5842833 (= e!3583721 tp!1615628)))

(declare-fun b!5842832 () Bool)

(declare-fun tp!1615626 () Bool)

(declare-fun tp!1615627 () Bool)

(assert (=> b!5842832 (= e!3583721 (and tp!1615626 tp!1615627))))

(assert (=> b!5842183 (= tp!1615552 e!3583721)))

(declare-fun b!5842834 () Bool)

(declare-fun tp!1615629 () Bool)

(declare-fun tp!1615625 () Bool)

(assert (=> b!5842834 (= e!3583721 (and tp!1615629 tp!1615625))))

(declare-fun b!5842831 () Bool)

(assert (=> b!5842831 (= e!3583721 tp_is_empty!41075)))

(assert (= (and b!5842183 ((_ is ElementMatch!15911) (reg!16240 r!7292))) b!5842831))

(assert (= (and b!5842183 ((_ is Concat!24756) (reg!16240 r!7292))) b!5842832))

(assert (= (and b!5842183 ((_ is Star!15911) (reg!16240 r!7292))) b!5842833))

(assert (= (and b!5842183 ((_ is Union!15911) (reg!16240 r!7292))) b!5842834))

(declare-fun b!5842839 () Bool)

(declare-fun e!3583724 () Bool)

(declare-fun tp!1615634 () Bool)

(declare-fun tp!1615635 () Bool)

(assert (=> b!5842839 (= e!3583724 (and tp!1615634 tp!1615635))))

(assert (=> b!5842190 (= tp!1615549 e!3583724)))

(assert (= (and b!5842190 ((_ is Cons!63908) (exprs!5795 (h!70357 zl!343)))) b!5842839))

(declare-fun b!5842842 () Bool)

(declare-fun e!3583725 () Bool)

(declare-fun tp!1615639 () Bool)

(assert (=> b!5842842 (= e!3583725 tp!1615639)))

(declare-fun b!5842841 () Bool)

(declare-fun tp!1615637 () Bool)

(declare-fun tp!1615638 () Bool)

(assert (=> b!5842841 (= e!3583725 (and tp!1615637 tp!1615638))))

(assert (=> b!5842193 (= tp!1615555 e!3583725)))

(declare-fun b!5842843 () Bool)

(declare-fun tp!1615640 () Bool)

(declare-fun tp!1615636 () Bool)

(assert (=> b!5842843 (= e!3583725 (and tp!1615640 tp!1615636))))

(declare-fun b!5842840 () Bool)

(assert (=> b!5842840 (= e!3583725 tp_is_empty!41075)))

(assert (= (and b!5842193 ((_ is ElementMatch!15911) (regOne!32335 r!7292))) b!5842840))

(assert (= (and b!5842193 ((_ is Concat!24756) (regOne!32335 r!7292))) b!5842841))

(assert (= (and b!5842193 ((_ is Star!15911) (regOne!32335 r!7292))) b!5842842))

(assert (= (and b!5842193 ((_ is Union!15911) (regOne!32335 r!7292))) b!5842843))

(declare-fun b!5842846 () Bool)

(declare-fun e!3583726 () Bool)

(declare-fun tp!1615644 () Bool)

(assert (=> b!5842846 (= e!3583726 tp!1615644)))

(declare-fun b!5842845 () Bool)

(declare-fun tp!1615642 () Bool)

(declare-fun tp!1615643 () Bool)

(assert (=> b!5842845 (= e!3583726 (and tp!1615642 tp!1615643))))

(assert (=> b!5842193 (= tp!1615547 e!3583726)))

(declare-fun b!5842847 () Bool)

(declare-fun tp!1615645 () Bool)

(declare-fun tp!1615641 () Bool)

(assert (=> b!5842847 (= e!3583726 (and tp!1615645 tp!1615641))))

(declare-fun b!5842844 () Bool)

(assert (=> b!5842844 (= e!3583726 tp_is_empty!41075)))

(assert (= (and b!5842193 ((_ is ElementMatch!15911) (regTwo!32335 r!7292))) b!5842844))

(assert (= (and b!5842193 ((_ is Concat!24756) (regTwo!32335 r!7292))) b!5842845))

(assert (= (and b!5842193 ((_ is Star!15911) (regTwo!32335 r!7292))) b!5842846))

(assert (= (and b!5842193 ((_ is Union!15911) (regTwo!32335 r!7292))) b!5842847))

(declare-fun b!5842852 () Bool)

(declare-fun e!3583729 () Bool)

(declare-fun tp!1615648 () Bool)

(assert (=> b!5842852 (= e!3583729 (and tp_is_empty!41075 tp!1615648))))

(assert (=> b!5842194 (= tp!1615550 e!3583729)))

(assert (= (and b!5842194 ((_ is Cons!63910) (t!377389 s!2326))) b!5842852))

(declare-fun b!5842855 () Bool)

(declare-fun e!3583730 () Bool)

(declare-fun tp!1615652 () Bool)

(assert (=> b!5842855 (= e!3583730 tp!1615652)))

(declare-fun b!5842854 () Bool)

(declare-fun tp!1615650 () Bool)

(declare-fun tp!1615651 () Bool)

(assert (=> b!5842854 (= e!3583730 (and tp!1615650 tp!1615651))))

(assert (=> b!5842199 (= tp!1615551 e!3583730)))

(declare-fun b!5842856 () Bool)

(declare-fun tp!1615653 () Bool)

(declare-fun tp!1615649 () Bool)

(assert (=> b!5842856 (= e!3583730 (and tp!1615653 tp!1615649))))

(declare-fun b!5842853 () Bool)

(assert (=> b!5842853 (= e!3583730 tp_is_empty!41075)))

(assert (= (and b!5842199 ((_ is ElementMatch!15911) (regOne!32334 r!7292))) b!5842853))

(assert (= (and b!5842199 ((_ is Concat!24756) (regOne!32334 r!7292))) b!5842854))

(assert (= (and b!5842199 ((_ is Star!15911) (regOne!32334 r!7292))) b!5842855))

(assert (= (and b!5842199 ((_ is Union!15911) (regOne!32334 r!7292))) b!5842856))

(declare-fun b!5842859 () Bool)

(declare-fun e!3583731 () Bool)

(declare-fun tp!1615657 () Bool)

(assert (=> b!5842859 (= e!3583731 tp!1615657)))

(declare-fun b!5842858 () Bool)

(declare-fun tp!1615655 () Bool)

(declare-fun tp!1615656 () Bool)

(assert (=> b!5842858 (= e!3583731 (and tp!1615655 tp!1615656))))

(assert (=> b!5842199 (= tp!1615548 e!3583731)))

(declare-fun b!5842860 () Bool)

(declare-fun tp!1615658 () Bool)

(declare-fun tp!1615654 () Bool)

(assert (=> b!5842860 (= e!3583731 (and tp!1615658 tp!1615654))))

(declare-fun b!5842857 () Bool)

(assert (=> b!5842857 (= e!3583731 tp_is_empty!41075)))

(assert (= (and b!5842199 ((_ is ElementMatch!15911) (regTwo!32334 r!7292))) b!5842857))

(assert (= (and b!5842199 ((_ is Concat!24756) (regTwo!32334 r!7292))) b!5842858))

(assert (= (and b!5842199 ((_ is Star!15911) (regTwo!32334 r!7292))) b!5842859))

(assert (= (and b!5842199 ((_ is Union!15911) (regTwo!32334 r!7292))) b!5842860))

(declare-fun b!5842868 () Bool)

(declare-fun e!3583737 () Bool)

(declare-fun tp!1615663 () Bool)

(assert (=> b!5842868 (= e!3583737 tp!1615663)))

(declare-fun tp!1615664 () Bool)

(declare-fun b!5842867 () Bool)

(declare-fun e!3583736 () Bool)

(assert (=> b!5842867 (= e!3583736 (and (inv!83024 (h!70357 (t!377388 zl!343))) e!3583737 tp!1615664))))

(assert (=> b!5842186 (= tp!1615554 e!3583736)))

(assert (= b!5842867 b!5842868))

(assert (= (and b!5842186 ((_ is Cons!63909) (t!377388 zl!343))) b!5842867))

(declare-fun m!6766224 () Bool)

(assert (=> b!5842867 m!6766224))

(declare-fun condSetEmpty!39592 () Bool)

(assert (=> setNonEmpty!39586 (= condSetEmpty!39592 (= setRest!39586 ((as const (Array Context!10590 Bool)) false)))))

(declare-fun setRes!39592 () Bool)

(assert (=> setNonEmpty!39586 (= tp!1615556 setRes!39592)))

(declare-fun setIsEmpty!39592 () Bool)

(assert (=> setIsEmpty!39592 setRes!39592))

(declare-fun setElem!39592 () Context!10590)

(declare-fun e!3583740 () Bool)

(declare-fun setNonEmpty!39592 () Bool)

(declare-fun tp!1615669 () Bool)

(assert (=> setNonEmpty!39592 (= setRes!39592 (and tp!1615669 (inv!83024 setElem!39592) e!3583740))))

(declare-fun setRest!39592 () (InoxSet Context!10590))

(assert (=> setNonEmpty!39592 (= setRest!39586 ((_ map or) (store ((as const (Array Context!10590 Bool)) false) setElem!39592 true) setRest!39592))))

(declare-fun b!5842873 () Bool)

(declare-fun tp!1615670 () Bool)

(assert (=> b!5842873 (= e!3583740 tp!1615670)))

(assert (= (and setNonEmpty!39586 condSetEmpty!39592) setIsEmpty!39592))

(assert (= (and setNonEmpty!39586 (not condSetEmpty!39592)) setNonEmpty!39592))

(assert (= setNonEmpty!39592 b!5842873))

(declare-fun m!6766226 () Bool)

(assert (=> setNonEmpty!39592 m!6766226))

(declare-fun b!5842874 () Bool)

(declare-fun e!3583741 () Bool)

(declare-fun tp!1615671 () Bool)

(declare-fun tp!1615672 () Bool)

(assert (=> b!5842874 (= e!3583741 (and tp!1615671 tp!1615672))))

(assert (=> b!5842196 (= tp!1615553 e!3583741)))

(assert (= (and b!5842196 ((_ is Cons!63908) (exprs!5795 setElem!39586))) b!5842874))

(check-sat (not b!5842832) (not b!5842463) (not d!1835649) (not b!5842792) (not b!5842696) (not bm!456399) (not d!1835641) (not b!5842804) (not b!5842755) (not b!5842462) (not b!5842730) (not bm!456456) (not b!5842855) (not bm!456390) (not d!1835661) (not b!5842617) (not b!5842758) (not b!5842695) (not b!5842846) (not bm!456410) (not b!5842860) (not b!5842779) (not bm!456454) (not b!5842771) (not d!1835637) (not bm!456409) (not b!5842814) (not b!5842858) (not b!5842796) (not b!5842817) (not b!5842620) (not b!5842874) (not bm!456435) (not b!5842763) (not b!5842613) (not b!5842834) (not d!1835633) (not bm!456457) (not b!5842374) (not d!1835619) (not bm!456455) (not b!5842618) (not d!1835643) (not b!5842619) (not b!5842839) (not bm!456389) (not b!5842756) (not b!5842757) (not b!5842868) (not d!1835651) (not b!5842769) (not b!5842764) (not b!5842468) (not b!5842382) (not b!5842852) (not b!5842807) (not bm!456459) (not b!5842810) (not b!5842782) (not b!5842856) (not d!1835607) (not b!5842789) (not d!1835665) (not b!5842833) (not b!5842873) (not b!5842612) tp_is_empty!41075 (not b!5842543) (not b!5842859) (not bm!456458) (not b!5842841) (not b!5842785) (not b!5842794) (not bm!456451) (not b!5842867) (not d!1835635) (not d!1835653) (not b!5842614) (not bm!456448) (not b!5842761) (not setNonEmpty!39592) (not b!5842466) (not bm!456449) (not b!5842854) (not d!1835657) (not b!5842456) (not b!5842845) (not b!5842569) (not b!5842788) (not b!5842459) (not b!5842847) (not b!5842842) (not b!5842819) (not b!5842813) (not b!5842843) (not d!1835659))
(check-sat)
(get-model)

(declare-fun d!1835667 () Bool)

(assert (=> d!1835667 (= (head!12375 s!2326) (h!70358 s!2326))))

(assert (=> b!5842785 d!1835667))

(declare-fun d!1835669 () Bool)

(assert (=> d!1835669 (= (isEmpty!35769 (tail!11460 s!2326)) ((_ is Nil!63910) (tail!11460 s!2326)))))

(assert (=> b!5842466 d!1835669))

(declare-fun d!1835671 () Bool)

(assert (=> d!1835671 (= (tail!11460 s!2326) (t!377389 s!2326))))

(assert (=> b!5842466 d!1835671))

(declare-fun b!5842875 () Bool)

(declare-fun e!3583745 () Bool)

(assert (=> b!5842875 (= e!3583745 (not (= (head!12375 (tail!11460 s!2326)) (c!1035181 (derivativeStep!4648 (regTwo!32335 r!7292) (head!12375 s!2326))))))))

(declare-fun b!5842876 () Bool)

(declare-fun e!3583747 () Bool)

(declare-fun lt!2303915 () Bool)

(assert (=> b!5842876 (= e!3583747 (not lt!2303915))))

(declare-fun d!1835673 () Bool)

(declare-fun e!3583742 () Bool)

(assert (=> d!1835673 e!3583742))

(declare-fun c!1035361 () Bool)

(assert (=> d!1835673 (= c!1035361 ((_ is EmptyExpr!15911) (derivativeStep!4648 (regTwo!32335 r!7292) (head!12375 s!2326))))))

(declare-fun e!3583748 () Bool)

(assert (=> d!1835673 (= lt!2303915 e!3583748)))

(declare-fun c!1035360 () Bool)

(assert (=> d!1835673 (= c!1035360 (isEmpty!35769 (tail!11460 s!2326)))))

(assert (=> d!1835673 (validRegex!7647 (derivativeStep!4648 (regTwo!32335 r!7292) (head!12375 s!2326)))))

(assert (=> d!1835673 (= (matchR!8094 (derivativeStep!4648 (regTwo!32335 r!7292) (head!12375 s!2326)) (tail!11460 s!2326)) lt!2303915)))

(declare-fun b!5842877 () Bool)

(declare-fun res!2461223 () Bool)

(declare-fun e!3583746 () Bool)

(assert (=> b!5842877 (=> (not res!2461223) (not e!3583746))))

(declare-fun call!456465 () Bool)

(assert (=> b!5842877 (= res!2461223 (not call!456465))))

(declare-fun b!5842878 () Bool)

(assert (=> b!5842878 (= e!3583746 (= (head!12375 (tail!11460 s!2326)) (c!1035181 (derivativeStep!4648 (regTwo!32335 r!7292) (head!12375 s!2326)))))))

(declare-fun b!5842879 () Bool)

(declare-fun res!2461219 () Bool)

(declare-fun e!3583744 () Bool)

(assert (=> b!5842879 (=> res!2461219 e!3583744)))

(assert (=> b!5842879 (= res!2461219 (not ((_ is ElementMatch!15911) (derivativeStep!4648 (regTwo!32335 r!7292) (head!12375 s!2326)))))))

(assert (=> b!5842879 (= e!3583747 e!3583744)))

(declare-fun b!5842880 () Bool)

(declare-fun e!3583743 () Bool)

(assert (=> b!5842880 (= e!3583743 e!3583745)))

(declare-fun res!2461222 () Bool)

(assert (=> b!5842880 (=> res!2461222 e!3583745)))

(assert (=> b!5842880 (= res!2461222 call!456465)))

(declare-fun bm!456460 () Bool)

(assert (=> bm!456460 (= call!456465 (isEmpty!35769 (tail!11460 s!2326)))))

(declare-fun b!5842881 () Bool)

(assert (=> b!5842881 (= e!3583748 (matchR!8094 (derivativeStep!4648 (derivativeStep!4648 (regTwo!32335 r!7292) (head!12375 s!2326)) (head!12375 (tail!11460 s!2326))) (tail!11460 (tail!11460 s!2326))))))

(declare-fun b!5842882 () Bool)

(assert (=> b!5842882 (= e!3583748 (nullable!5911 (derivativeStep!4648 (regTwo!32335 r!7292) (head!12375 s!2326))))))

(declare-fun b!5842883 () Bool)

(assert (=> b!5842883 (= e!3583744 e!3583743)))

(declare-fun res!2461225 () Bool)

(assert (=> b!5842883 (=> (not res!2461225) (not e!3583743))))

(assert (=> b!5842883 (= res!2461225 (not lt!2303915))))

(declare-fun b!5842884 () Bool)

(assert (=> b!5842884 (= e!3583742 (= lt!2303915 call!456465))))

(declare-fun b!5842885 () Bool)

(declare-fun res!2461226 () Bool)

(assert (=> b!5842885 (=> (not res!2461226) (not e!3583746))))

(assert (=> b!5842885 (= res!2461226 (isEmpty!35769 (tail!11460 (tail!11460 s!2326))))))

(declare-fun b!5842886 () Bool)

(declare-fun res!2461221 () Bool)

(assert (=> b!5842886 (=> res!2461221 e!3583744)))

(assert (=> b!5842886 (= res!2461221 e!3583746)))

(declare-fun res!2461224 () Bool)

(assert (=> b!5842886 (=> (not res!2461224) (not e!3583746))))

(assert (=> b!5842886 (= res!2461224 lt!2303915)))

(declare-fun b!5842887 () Bool)

(declare-fun res!2461220 () Bool)

(assert (=> b!5842887 (=> res!2461220 e!3583745)))

(assert (=> b!5842887 (= res!2461220 (not (isEmpty!35769 (tail!11460 (tail!11460 s!2326)))))))

(declare-fun b!5842888 () Bool)

(assert (=> b!5842888 (= e!3583742 e!3583747)))

(declare-fun c!1035362 () Bool)

(assert (=> b!5842888 (= c!1035362 ((_ is EmptyLang!15911) (derivativeStep!4648 (regTwo!32335 r!7292) (head!12375 s!2326))))))

(assert (= (and d!1835673 c!1035360) b!5842882))

(assert (= (and d!1835673 (not c!1035360)) b!5842881))

(assert (= (and d!1835673 c!1035361) b!5842884))

(assert (= (and d!1835673 (not c!1035361)) b!5842888))

(assert (= (and b!5842888 c!1035362) b!5842876))

(assert (= (and b!5842888 (not c!1035362)) b!5842879))

(assert (= (and b!5842879 (not res!2461219)) b!5842886))

(assert (= (and b!5842886 res!2461224) b!5842877))

(assert (= (and b!5842877 res!2461223) b!5842885))

(assert (= (and b!5842885 res!2461226) b!5842878))

(assert (= (and b!5842886 (not res!2461221)) b!5842883))

(assert (= (and b!5842883 res!2461225) b!5842880))

(assert (= (and b!5842880 (not res!2461222)) b!5842887))

(assert (= (and b!5842887 (not res!2461220)) b!5842875))

(assert (= (or b!5842884 b!5842877 b!5842880) bm!456460))

(assert (=> bm!456460 m!6766048))

(assert (=> bm!456460 m!6766050))

(assert (=> d!1835673 m!6766048))

(assert (=> d!1835673 m!6766050))

(assert (=> d!1835673 m!6766204))

(declare-fun m!6766228 () Bool)

(assert (=> d!1835673 m!6766228))

(assert (=> b!5842885 m!6766048))

(declare-fun m!6766230 () Bool)

(assert (=> b!5842885 m!6766230))

(assert (=> b!5842885 m!6766230))

(declare-fun m!6766232 () Bool)

(assert (=> b!5842885 m!6766232))

(assert (=> b!5842881 m!6766048))

(declare-fun m!6766234 () Bool)

(assert (=> b!5842881 m!6766234))

(assert (=> b!5842881 m!6766204))

(assert (=> b!5842881 m!6766234))

(declare-fun m!6766236 () Bool)

(assert (=> b!5842881 m!6766236))

(assert (=> b!5842881 m!6766048))

(assert (=> b!5842881 m!6766230))

(assert (=> b!5842881 m!6766236))

(assert (=> b!5842881 m!6766230))

(declare-fun m!6766238 () Bool)

(assert (=> b!5842881 m!6766238))

(assert (=> b!5842878 m!6766048))

(assert (=> b!5842878 m!6766234))

(assert (=> b!5842882 m!6766204))

(declare-fun m!6766240 () Bool)

(assert (=> b!5842882 m!6766240))

(assert (=> b!5842875 m!6766048))

(assert (=> b!5842875 m!6766234))

(assert (=> b!5842887 m!6766048))

(assert (=> b!5842887 m!6766230))

(assert (=> b!5842887 m!6766230))

(assert (=> b!5842887 m!6766232))

(assert (=> b!5842788 d!1835673))

(declare-fun b!5842909 () Bool)

(declare-fun e!3583763 () Regex!15911)

(declare-fun call!456475 () Regex!15911)

(declare-fun call!456476 () Regex!15911)

(assert (=> b!5842909 (= e!3583763 (Union!15911 call!456475 call!456476))))

(declare-fun b!5842910 () Bool)

(declare-fun e!3583761 () Regex!15911)

(assert (=> b!5842910 (= e!3583763 e!3583761)))

(declare-fun c!1035373 () Bool)

(assert (=> b!5842910 (= c!1035373 ((_ is Star!15911) (regTwo!32335 r!7292)))))

(declare-fun d!1835675 () Bool)

(declare-fun lt!2303918 () Regex!15911)

(assert (=> d!1835675 (validRegex!7647 lt!2303918)))

(declare-fun e!3583760 () Regex!15911)

(assert (=> d!1835675 (= lt!2303918 e!3583760)))

(declare-fun c!1035377 () Bool)

(assert (=> d!1835675 (= c!1035377 (or ((_ is EmptyExpr!15911) (regTwo!32335 r!7292)) ((_ is EmptyLang!15911) (regTwo!32335 r!7292))))))

(assert (=> d!1835675 (validRegex!7647 (regTwo!32335 r!7292))))

(assert (=> d!1835675 (= (derivativeStep!4648 (regTwo!32335 r!7292) (head!12375 s!2326)) lt!2303918)))

(declare-fun b!5842911 () Bool)

(declare-fun c!1035376 () Bool)

(assert (=> b!5842911 (= c!1035376 (nullable!5911 (regOne!32334 (regTwo!32335 r!7292))))))

(declare-fun e!3583759 () Regex!15911)

(assert (=> b!5842911 (= e!3583761 e!3583759)))

(declare-fun b!5842912 () Bool)

(declare-fun call!456474 () Regex!15911)

(assert (=> b!5842912 (= e!3583759 (Union!15911 (Concat!24756 call!456474 (regTwo!32334 (regTwo!32335 r!7292))) EmptyLang!15911))))

(declare-fun bm!456469 () Bool)

(declare-fun call!456477 () Regex!15911)

(assert (=> bm!456469 (= call!456474 call!456477)))

(declare-fun b!5842913 () Bool)

(assert (=> b!5842913 (= e!3583759 (Union!15911 (Concat!24756 call!456475 (regTwo!32334 (regTwo!32335 r!7292))) call!456474))))

(declare-fun b!5842914 () Bool)

(declare-fun e!3583762 () Regex!15911)

(assert (=> b!5842914 (= e!3583762 (ite (= (head!12375 s!2326) (c!1035181 (regTwo!32335 r!7292))) EmptyExpr!15911 EmptyLang!15911))))

(declare-fun b!5842915 () Bool)

(assert (=> b!5842915 (= e!3583760 e!3583762)))

(declare-fun c!1035374 () Bool)

(assert (=> b!5842915 (= c!1035374 ((_ is ElementMatch!15911) (regTwo!32335 r!7292)))))

(declare-fun bm!456470 () Bool)

(assert (=> bm!456470 (= call!456477 call!456476)))

(declare-fun c!1035375 () Bool)

(declare-fun bm!456471 () Bool)

(assert (=> bm!456471 (= call!456475 (derivativeStep!4648 (ite c!1035375 (regOne!32335 (regTwo!32335 r!7292)) (regOne!32334 (regTwo!32335 r!7292))) (head!12375 s!2326)))))

(declare-fun bm!456472 () Bool)

(assert (=> bm!456472 (= call!456476 (derivativeStep!4648 (ite c!1035375 (regTwo!32335 (regTwo!32335 r!7292)) (ite c!1035373 (reg!16240 (regTwo!32335 r!7292)) (ite c!1035376 (regTwo!32334 (regTwo!32335 r!7292)) (regOne!32334 (regTwo!32335 r!7292))))) (head!12375 s!2326)))))

(declare-fun b!5842916 () Bool)

(assert (=> b!5842916 (= e!3583761 (Concat!24756 call!456477 (regTwo!32335 r!7292)))))

(declare-fun b!5842917 () Bool)

(assert (=> b!5842917 (= e!3583760 EmptyLang!15911)))

(declare-fun b!5842918 () Bool)

(assert (=> b!5842918 (= c!1035375 ((_ is Union!15911) (regTwo!32335 r!7292)))))

(assert (=> b!5842918 (= e!3583762 e!3583763)))

(assert (= (and d!1835675 c!1035377) b!5842917))

(assert (= (and d!1835675 (not c!1035377)) b!5842915))

(assert (= (and b!5842915 c!1035374) b!5842914))

(assert (= (and b!5842915 (not c!1035374)) b!5842918))

(assert (= (and b!5842918 c!1035375) b!5842909))

(assert (= (and b!5842918 (not c!1035375)) b!5842910))

(assert (= (and b!5842910 c!1035373) b!5842916))

(assert (= (and b!5842910 (not c!1035373)) b!5842911))

(assert (= (and b!5842911 c!1035376) b!5842913))

(assert (= (and b!5842911 (not c!1035376)) b!5842912))

(assert (= (or b!5842913 b!5842912) bm!456469))

(assert (= (or b!5842916 bm!456469) bm!456470))

(assert (= (or b!5842909 bm!456470) bm!456472))

(assert (= (or b!5842909 b!5842913) bm!456471))

(declare-fun m!6766242 () Bool)

(assert (=> d!1835675 m!6766242))

(assert (=> d!1835675 m!6766202))

(declare-fun m!6766244 () Bool)

(assert (=> b!5842911 m!6766244))

(assert (=> bm!456471 m!6766052))

(declare-fun m!6766246 () Bool)

(assert (=> bm!456471 m!6766246))

(assert (=> bm!456472 m!6766052))

(declare-fun m!6766248 () Bool)

(assert (=> bm!456472 m!6766248))

(assert (=> b!5842788 d!1835675))

(assert (=> b!5842788 d!1835667))

(assert (=> b!5842788 d!1835671))

(declare-fun b!5842919 () Bool)

(declare-fun e!3583767 () Bool)

(assert (=> b!5842919 (= e!3583767 (not (= (head!12375 (tail!11460 s!2326)) (c!1035181 (derivativeStep!4648 r!7292 (head!12375 s!2326))))))))

(declare-fun b!5842920 () Bool)

(declare-fun e!3583769 () Bool)

(declare-fun lt!2303919 () Bool)

(assert (=> b!5842920 (= e!3583769 (not lt!2303919))))

(declare-fun d!1835677 () Bool)

(declare-fun e!3583764 () Bool)

(assert (=> d!1835677 e!3583764))

(declare-fun c!1035379 () Bool)

(assert (=> d!1835677 (= c!1035379 ((_ is EmptyExpr!15911) (derivativeStep!4648 r!7292 (head!12375 s!2326))))))

(declare-fun e!3583770 () Bool)

(assert (=> d!1835677 (= lt!2303919 e!3583770)))

(declare-fun c!1035378 () Bool)

(assert (=> d!1835677 (= c!1035378 (isEmpty!35769 (tail!11460 s!2326)))))

(assert (=> d!1835677 (validRegex!7647 (derivativeStep!4648 r!7292 (head!12375 s!2326)))))

(assert (=> d!1835677 (= (matchR!8094 (derivativeStep!4648 r!7292 (head!12375 s!2326)) (tail!11460 s!2326)) lt!2303919)))

(declare-fun b!5842921 () Bool)

(declare-fun res!2461231 () Bool)

(declare-fun e!3583768 () Bool)

(assert (=> b!5842921 (=> (not res!2461231) (not e!3583768))))

(declare-fun call!456478 () Bool)

(assert (=> b!5842921 (= res!2461231 (not call!456478))))

(declare-fun b!5842922 () Bool)

(assert (=> b!5842922 (= e!3583768 (= (head!12375 (tail!11460 s!2326)) (c!1035181 (derivativeStep!4648 r!7292 (head!12375 s!2326)))))))

(declare-fun b!5842923 () Bool)

(declare-fun res!2461227 () Bool)

(declare-fun e!3583766 () Bool)

(assert (=> b!5842923 (=> res!2461227 e!3583766)))

(assert (=> b!5842923 (= res!2461227 (not ((_ is ElementMatch!15911) (derivativeStep!4648 r!7292 (head!12375 s!2326)))))))

(assert (=> b!5842923 (= e!3583769 e!3583766)))

(declare-fun b!5842924 () Bool)

(declare-fun e!3583765 () Bool)

(assert (=> b!5842924 (= e!3583765 e!3583767)))

(declare-fun res!2461230 () Bool)

(assert (=> b!5842924 (=> res!2461230 e!3583767)))

(assert (=> b!5842924 (= res!2461230 call!456478)))

(declare-fun bm!456473 () Bool)

(assert (=> bm!456473 (= call!456478 (isEmpty!35769 (tail!11460 s!2326)))))

(declare-fun b!5842925 () Bool)

(assert (=> b!5842925 (= e!3583770 (matchR!8094 (derivativeStep!4648 (derivativeStep!4648 r!7292 (head!12375 s!2326)) (head!12375 (tail!11460 s!2326))) (tail!11460 (tail!11460 s!2326))))))

(declare-fun b!5842926 () Bool)

(assert (=> b!5842926 (= e!3583770 (nullable!5911 (derivativeStep!4648 r!7292 (head!12375 s!2326))))))

(declare-fun b!5842927 () Bool)

(assert (=> b!5842927 (= e!3583766 e!3583765)))

(declare-fun res!2461233 () Bool)

(assert (=> b!5842927 (=> (not res!2461233) (not e!3583765))))

(assert (=> b!5842927 (= res!2461233 (not lt!2303919))))

(declare-fun b!5842928 () Bool)

(assert (=> b!5842928 (= e!3583764 (= lt!2303919 call!456478))))

(declare-fun b!5842929 () Bool)

(declare-fun res!2461234 () Bool)

(assert (=> b!5842929 (=> (not res!2461234) (not e!3583768))))

(assert (=> b!5842929 (= res!2461234 (isEmpty!35769 (tail!11460 (tail!11460 s!2326))))))

(declare-fun b!5842930 () Bool)

(declare-fun res!2461229 () Bool)

(assert (=> b!5842930 (=> res!2461229 e!3583766)))

(assert (=> b!5842930 (= res!2461229 e!3583768)))

(declare-fun res!2461232 () Bool)

(assert (=> b!5842930 (=> (not res!2461232) (not e!3583768))))

(assert (=> b!5842930 (= res!2461232 lt!2303919)))

(declare-fun b!5842931 () Bool)

(declare-fun res!2461228 () Bool)

(assert (=> b!5842931 (=> res!2461228 e!3583767)))

(assert (=> b!5842931 (= res!2461228 (not (isEmpty!35769 (tail!11460 (tail!11460 s!2326)))))))

(declare-fun b!5842932 () Bool)

(assert (=> b!5842932 (= e!3583764 e!3583769)))

(declare-fun c!1035380 () Bool)

(assert (=> b!5842932 (= c!1035380 ((_ is EmptyLang!15911) (derivativeStep!4648 r!7292 (head!12375 s!2326))))))

(assert (= (and d!1835677 c!1035378) b!5842926))

(assert (= (and d!1835677 (not c!1035378)) b!5842925))

(assert (= (and d!1835677 c!1035379) b!5842928))

(assert (= (and d!1835677 (not c!1035379)) b!5842932))

(assert (= (and b!5842932 c!1035380) b!5842920))

(assert (= (and b!5842932 (not c!1035380)) b!5842923))

(assert (= (and b!5842923 (not res!2461227)) b!5842930))

(assert (= (and b!5842930 res!2461232) b!5842921))

(assert (= (and b!5842921 res!2461231) b!5842929))

(assert (= (and b!5842929 res!2461234) b!5842922))

(assert (= (and b!5842930 (not res!2461229)) b!5842927))

(assert (= (and b!5842927 res!2461233) b!5842924))

(assert (= (and b!5842924 (not res!2461230)) b!5842931))

(assert (= (and b!5842931 (not res!2461228)) b!5842919))

(assert (= (or b!5842928 b!5842921 b!5842924) bm!456473))

(assert (=> bm!456473 m!6766048))

(assert (=> bm!456473 m!6766050))

(assert (=> d!1835677 m!6766048))

(assert (=> d!1835677 m!6766050))

(assert (=> d!1835677 m!6766054))

(declare-fun m!6766250 () Bool)

(assert (=> d!1835677 m!6766250))

(assert (=> b!5842929 m!6766048))

(assert (=> b!5842929 m!6766230))

(assert (=> b!5842929 m!6766230))

(assert (=> b!5842929 m!6766232))

(assert (=> b!5842925 m!6766048))

(assert (=> b!5842925 m!6766234))

(assert (=> b!5842925 m!6766054))

(assert (=> b!5842925 m!6766234))

(declare-fun m!6766252 () Bool)

(assert (=> b!5842925 m!6766252))

(assert (=> b!5842925 m!6766048))

(assert (=> b!5842925 m!6766230))

(assert (=> b!5842925 m!6766252))

(assert (=> b!5842925 m!6766230))

(declare-fun m!6766254 () Bool)

(assert (=> b!5842925 m!6766254))

(assert (=> b!5842922 m!6766048))

(assert (=> b!5842922 m!6766234))

(assert (=> b!5842926 m!6766054))

(declare-fun m!6766256 () Bool)

(assert (=> b!5842926 m!6766256))

(assert (=> b!5842919 m!6766048))

(assert (=> b!5842919 m!6766234))

(assert (=> b!5842931 m!6766048))

(assert (=> b!5842931 m!6766230))

(assert (=> b!5842931 m!6766230))

(assert (=> b!5842931 m!6766232))

(assert (=> b!5842462 d!1835677))

(declare-fun b!5842933 () Bool)

(declare-fun e!3583775 () Regex!15911)

(declare-fun call!456480 () Regex!15911)

(declare-fun call!456481 () Regex!15911)

(assert (=> b!5842933 (= e!3583775 (Union!15911 call!456480 call!456481))))

(declare-fun b!5842934 () Bool)

(declare-fun e!3583773 () Regex!15911)

(assert (=> b!5842934 (= e!3583775 e!3583773)))

(declare-fun c!1035381 () Bool)

(assert (=> b!5842934 (= c!1035381 ((_ is Star!15911) r!7292))))

(declare-fun d!1835679 () Bool)

(declare-fun lt!2303920 () Regex!15911)

(assert (=> d!1835679 (validRegex!7647 lt!2303920)))

(declare-fun e!3583772 () Regex!15911)

(assert (=> d!1835679 (= lt!2303920 e!3583772)))

(declare-fun c!1035385 () Bool)

(assert (=> d!1835679 (= c!1035385 (or ((_ is EmptyExpr!15911) r!7292) ((_ is EmptyLang!15911) r!7292)))))

(assert (=> d!1835679 (validRegex!7647 r!7292)))

(assert (=> d!1835679 (= (derivativeStep!4648 r!7292 (head!12375 s!2326)) lt!2303920)))

(declare-fun b!5842935 () Bool)

(declare-fun c!1035384 () Bool)

(assert (=> b!5842935 (= c!1035384 (nullable!5911 (regOne!32334 r!7292)))))

(declare-fun e!3583771 () Regex!15911)

(assert (=> b!5842935 (= e!3583773 e!3583771)))

(declare-fun b!5842936 () Bool)

(declare-fun call!456479 () Regex!15911)

(assert (=> b!5842936 (= e!3583771 (Union!15911 (Concat!24756 call!456479 (regTwo!32334 r!7292)) EmptyLang!15911))))

(declare-fun bm!456474 () Bool)

(declare-fun call!456482 () Regex!15911)

(assert (=> bm!456474 (= call!456479 call!456482)))

(declare-fun b!5842937 () Bool)

(assert (=> b!5842937 (= e!3583771 (Union!15911 (Concat!24756 call!456480 (regTwo!32334 r!7292)) call!456479))))

(declare-fun b!5842938 () Bool)

(declare-fun e!3583774 () Regex!15911)

(assert (=> b!5842938 (= e!3583774 (ite (= (head!12375 s!2326) (c!1035181 r!7292)) EmptyExpr!15911 EmptyLang!15911))))

(declare-fun b!5842939 () Bool)

(assert (=> b!5842939 (= e!3583772 e!3583774)))

(declare-fun c!1035382 () Bool)

(assert (=> b!5842939 (= c!1035382 ((_ is ElementMatch!15911) r!7292))))

(declare-fun bm!456475 () Bool)

(assert (=> bm!456475 (= call!456482 call!456481)))

(declare-fun c!1035383 () Bool)

(declare-fun bm!456476 () Bool)

(assert (=> bm!456476 (= call!456480 (derivativeStep!4648 (ite c!1035383 (regOne!32335 r!7292) (regOne!32334 r!7292)) (head!12375 s!2326)))))

(declare-fun bm!456477 () Bool)

(assert (=> bm!456477 (= call!456481 (derivativeStep!4648 (ite c!1035383 (regTwo!32335 r!7292) (ite c!1035381 (reg!16240 r!7292) (ite c!1035384 (regTwo!32334 r!7292) (regOne!32334 r!7292)))) (head!12375 s!2326)))))

(declare-fun b!5842940 () Bool)

(assert (=> b!5842940 (= e!3583773 (Concat!24756 call!456482 r!7292))))

(declare-fun b!5842941 () Bool)

(assert (=> b!5842941 (= e!3583772 EmptyLang!15911)))

(declare-fun b!5842942 () Bool)

(assert (=> b!5842942 (= c!1035383 ((_ is Union!15911) r!7292))))

(assert (=> b!5842942 (= e!3583774 e!3583775)))

(assert (= (and d!1835679 c!1035385) b!5842941))

(assert (= (and d!1835679 (not c!1035385)) b!5842939))

(assert (= (and b!5842939 c!1035382) b!5842938))

(assert (= (and b!5842939 (not c!1035382)) b!5842942))

(assert (= (and b!5842942 c!1035383) b!5842933))

(assert (= (and b!5842942 (not c!1035383)) b!5842934))

(assert (= (and b!5842934 c!1035381) b!5842940))

(assert (= (and b!5842934 (not c!1035381)) b!5842935))

(assert (= (and b!5842935 c!1035384) b!5842937))

(assert (= (and b!5842935 (not c!1035384)) b!5842936))

(assert (= (or b!5842937 b!5842936) bm!456474))

(assert (= (or b!5842940 bm!456474) bm!456475))

(assert (= (or b!5842933 bm!456475) bm!456477))

(assert (= (or b!5842933 b!5842937) bm!456476))

(declare-fun m!6766258 () Bool)

(assert (=> d!1835679 m!6766258))

(assert (=> d!1835679 m!6765934))

(assert (=> b!5842935 m!6766156))

(assert (=> bm!456476 m!6766052))

(declare-fun m!6766260 () Bool)

(assert (=> bm!456476 m!6766260))

(assert (=> bm!456477 m!6766052))

(declare-fun m!6766262 () Bool)

(assert (=> bm!456477 m!6766262))

(assert (=> b!5842462 d!1835679))

(assert (=> b!5842462 d!1835667))

(assert (=> b!5842462 d!1835671))

(declare-fun d!1835681 () Bool)

(declare-fun res!2461239 () Bool)

(declare-fun e!3583780 () Bool)

(assert (=> d!1835681 (=> res!2461239 e!3583780)))

(assert (=> d!1835681 (= res!2461239 ((_ is Nil!63909) lt!2303898))))

(assert (=> d!1835681 (= (noDuplicate!1776 lt!2303898) e!3583780)))

(declare-fun b!5842947 () Bool)

(declare-fun e!3583781 () Bool)

(assert (=> b!5842947 (= e!3583780 e!3583781)))

(declare-fun res!2461240 () Bool)

(assert (=> b!5842947 (=> (not res!2461240) (not e!3583781))))

(declare-fun contains!19917 (List!64033 Context!10590) Bool)

(assert (=> b!5842947 (= res!2461240 (not (contains!19917 (t!377388 lt!2303898) (h!70357 lt!2303898))))))

(declare-fun b!5842948 () Bool)

(assert (=> b!5842948 (= e!3583781 (noDuplicate!1776 (t!377388 lt!2303898)))))

(assert (= (and d!1835681 (not res!2461239)) b!5842947))

(assert (= (and b!5842947 res!2461240) b!5842948))

(declare-fun m!6766264 () Bool)

(assert (=> b!5842947 m!6766264))

(declare-fun m!6766266 () Bool)

(assert (=> b!5842948 m!6766266))

(assert (=> d!1835637 d!1835681))

(declare-fun d!1835683 () Bool)

(declare-fun e!3583788 () Bool)

(assert (=> d!1835683 e!3583788))

(declare-fun res!2461246 () Bool)

(assert (=> d!1835683 (=> (not res!2461246) (not e!3583788))))

(declare-fun res!2461245 () List!64033)

(assert (=> d!1835683 (= res!2461246 (noDuplicate!1776 res!2461245))))

(declare-fun e!3583790 () Bool)

(assert (=> d!1835683 e!3583790))

(assert (=> d!1835683 (= (choose!44349 z!1189) res!2461245)))

(declare-fun b!5842956 () Bool)

(declare-fun e!3583789 () Bool)

(declare-fun tp!1615677 () Bool)

(assert (=> b!5842956 (= e!3583789 tp!1615677)))

(declare-fun tp!1615678 () Bool)

(declare-fun b!5842955 () Bool)

(assert (=> b!5842955 (= e!3583790 (and (inv!83024 (h!70357 res!2461245)) e!3583789 tp!1615678))))

(declare-fun b!5842957 () Bool)

(assert (=> b!5842957 (= e!3583788 (= (content!11741 res!2461245) z!1189))))

(assert (= b!5842955 b!5842956))

(assert (= (and d!1835683 ((_ is Cons!63909) res!2461245)) b!5842955))

(assert (= (and d!1835683 res!2461246) b!5842957))

(declare-fun m!6766268 () Bool)

(assert (=> d!1835683 m!6766268))

(declare-fun m!6766270 () Bool)

(assert (=> b!5842955 m!6766270))

(declare-fun m!6766272 () Bool)

(assert (=> b!5842957 m!6766272))

(assert (=> d!1835637 d!1835683))

(declare-fun d!1835685 () Bool)

(assert (=> d!1835685 (= (head!12377 (exprs!5795 (h!70357 zl!343))) (h!70356 (exprs!5795 (h!70357 zl!343))))))

(assert (=> b!5842619 d!1835685))

(declare-fun d!1835687 () Bool)

(declare-fun res!2461247 () Bool)

(declare-fun e!3583796 () Bool)

(assert (=> d!1835687 (=> res!2461247 e!3583796)))

(assert (=> d!1835687 (= res!2461247 ((_ is ElementMatch!15911) lt!2303901))))

(assert (=> d!1835687 (= (validRegex!7647 lt!2303901) e!3583796)))

(declare-fun b!5842958 () Bool)

(declare-fun e!3583791 () Bool)

(declare-fun e!3583795 () Bool)

(assert (=> b!5842958 (= e!3583791 e!3583795)))

(declare-fun res!2461250 () Bool)

(assert (=> b!5842958 (= res!2461250 (not (nullable!5911 (reg!16240 lt!2303901))))))

(assert (=> b!5842958 (=> (not res!2461250) (not e!3583795))))

(declare-fun b!5842959 () Bool)

(declare-fun e!3583792 () Bool)

(assert (=> b!5842959 (= e!3583791 e!3583792)))

(declare-fun c!1035387 () Bool)

(assert (=> b!5842959 (= c!1035387 ((_ is Union!15911) lt!2303901))))

(declare-fun b!5842960 () Bool)

(declare-fun res!2461248 () Bool)

(declare-fun e!3583793 () Bool)

(assert (=> b!5842960 (=> res!2461248 e!3583793)))

(assert (=> b!5842960 (= res!2461248 (not ((_ is Concat!24756) lt!2303901)))))

(assert (=> b!5842960 (= e!3583792 e!3583793)))

(declare-fun b!5842961 () Bool)

(declare-fun e!3583794 () Bool)

(assert (=> b!5842961 (= e!3583793 e!3583794)))

(declare-fun res!2461249 () Bool)

(assert (=> b!5842961 (=> (not res!2461249) (not e!3583794))))

(declare-fun call!456485 () Bool)

(assert (=> b!5842961 (= res!2461249 call!456485)))

(declare-fun bm!456478 () Bool)

(declare-fun call!456484 () Bool)

(assert (=> bm!456478 (= call!456484 (validRegex!7647 (ite c!1035387 (regTwo!32335 lt!2303901) (regTwo!32334 lt!2303901))))))

(declare-fun b!5842962 () Bool)

(declare-fun res!2461251 () Bool)

(declare-fun e!3583797 () Bool)

(assert (=> b!5842962 (=> (not res!2461251) (not e!3583797))))

(assert (=> b!5842962 (= res!2461251 call!456485)))

(assert (=> b!5842962 (= e!3583792 e!3583797)))

(declare-fun b!5842963 () Bool)

(assert (=> b!5842963 (= e!3583796 e!3583791)))

(declare-fun c!1035386 () Bool)

(assert (=> b!5842963 (= c!1035386 ((_ is Star!15911) lt!2303901))))

(declare-fun bm!456479 () Bool)

(declare-fun call!456483 () Bool)

(assert (=> bm!456479 (= call!456483 (validRegex!7647 (ite c!1035386 (reg!16240 lt!2303901) (ite c!1035387 (regOne!32335 lt!2303901) (regOne!32334 lt!2303901)))))))

(declare-fun bm!456480 () Bool)

(assert (=> bm!456480 (= call!456485 call!456483)))

(declare-fun b!5842964 () Bool)

(assert (=> b!5842964 (= e!3583797 call!456484)))

(declare-fun b!5842965 () Bool)

(assert (=> b!5842965 (= e!3583795 call!456483)))

(declare-fun b!5842966 () Bool)

(assert (=> b!5842966 (= e!3583794 call!456484)))

(assert (= (and d!1835687 (not res!2461247)) b!5842963))

(assert (= (and b!5842963 c!1035386) b!5842958))

(assert (= (and b!5842963 (not c!1035386)) b!5842959))

(assert (= (and b!5842958 res!2461250) b!5842965))

(assert (= (and b!5842959 c!1035387) b!5842962))

(assert (= (and b!5842959 (not c!1035387)) b!5842960))

(assert (= (and b!5842962 res!2461251) b!5842964))

(assert (= (and b!5842960 (not res!2461248)) b!5842961))

(assert (= (and b!5842961 res!2461249) b!5842966))

(assert (= (or b!5842964 b!5842966) bm!456478))

(assert (= (or b!5842962 b!5842961) bm!456480))

(assert (= (or b!5842965 bm!456480) bm!456479))

(declare-fun m!6766274 () Bool)

(assert (=> b!5842958 m!6766274))

(declare-fun m!6766276 () Bool)

(assert (=> bm!456478 m!6766276))

(declare-fun m!6766278 () Bool)

(assert (=> bm!456479 m!6766278))

(assert (=> d!1835641 d!1835687))

(declare-fun d!1835689 () Bool)

(declare-fun res!2461256 () Bool)

(declare-fun e!3583802 () Bool)

(assert (=> d!1835689 (=> res!2461256 e!3583802)))

(assert (=> d!1835689 (= res!2461256 ((_ is Nil!63908) (exprs!5795 (h!70357 zl!343))))))

(assert (=> d!1835689 (= (forall!14998 (exprs!5795 (h!70357 zl!343)) lambda!319617) e!3583802)))

(declare-fun b!5842971 () Bool)

(declare-fun e!3583803 () Bool)

(assert (=> b!5842971 (= e!3583802 e!3583803)))

(declare-fun res!2461257 () Bool)

(assert (=> b!5842971 (=> (not res!2461257) (not e!3583803))))

(declare-fun dynLambda!24981 (Int Regex!15911) Bool)

(assert (=> b!5842971 (= res!2461257 (dynLambda!24981 lambda!319617 (h!70356 (exprs!5795 (h!70357 zl!343)))))))

(declare-fun b!5842972 () Bool)

(assert (=> b!5842972 (= e!3583803 (forall!14998 (t!377387 (exprs!5795 (h!70357 zl!343))) lambda!319617))))

(assert (= (and d!1835689 (not res!2461256)) b!5842971))

(assert (= (and b!5842971 res!2461257) b!5842972))

(declare-fun b_lambda!220005 () Bool)

(assert (=> (not b_lambda!220005) (not b!5842971)))

(declare-fun m!6766280 () Bool)

(assert (=> b!5842971 m!6766280))

(declare-fun m!6766282 () Bool)

(assert (=> b!5842972 m!6766282))

(assert (=> d!1835641 d!1835689))

(declare-fun d!1835691 () Bool)

(assert (=> d!1835691 (= (head!12377 (unfocusZipperList!1332 zl!343)) (h!70356 (unfocusZipperList!1332 zl!343)))))

(assert (=> b!5842758 d!1835691))

(assert (=> b!5842382 d!1835663))

(declare-fun bs!1376564 () Bool)

(declare-fun b!5842975 () Bool)

(assert (= bs!1376564 (and b!5842975 b!5842383)))

(declare-fun lambda!319629 () Int)

(assert (=> bs!1376564 (not (= lambda!319629 lambda!319602))))

(declare-fun bs!1376565 () Bool)

(assert (= bs!1376565 (and b!5842975 b!5842773)))

(assert (=> bs!1376565 (= (and (= (reg!16240 (regTwo!32335 (regTwo!32335 r!7292))) (reg!16240 (regTwo!32335 r!7292))) (= (regTwo!32335 (regTwo!32335 r!7292)) (regTwo!32335 r!7292))) (= lambda!319629 lambda!319625))))

(declare-fun bs!1376566 () Bool)

(assert (= bs!1376566 (and b!5842975 b!5842805)))

(assert (=> bs!1376566 (not (= lambda!319629 lambda!319628))))

(declare-fun bs!1376567 () Bool)

(assert (= bs!1376567 (and b!5842975 b!5842376)))

(assert (=> bs!1376567 (= (and (= (reg!16240 (regTwo!32335 (regTwo!32335 r!7292))) (reg!16240 r!7292)) (= (regTwo!32335 (regTwo!32335 r!7292)) r!7292)) (= lambda!319629 lambda!319601))))

(declare-fun bs!1376568 () Bool)

(assert (= bs!1376568 (and b!5842975 b!5842780)))

(assert (=> bs!1376568 (not (= lambda!319629 lambda!319626))))

(declare-fun bs!1376569 () Bool)

(assert (= bs!1376569 (and b!5842975 b!5842798)))

(assert (=> bs!1376569 (= (and (= (reg!16240 (regTwo!32335 (regTwo!32335 r!7292))) (reg!16240 (regOne!32335 r!7292))) (= (regTwo!32335 (regTwo!32335 r!7292)) (regOne!32335 r!7292))) (= lambda!319629 lambda!319627))))

(assert (=> b!5842975 true))

(assert (=> b!5842975 true))

(declare-fun bs!1376570 () Bool)

(declare-fun b!5842982 () Bool)

(assert (= bs!1376570 (and b!5842982 b!5842383)))

(declare-fun lambda!319630 () Int)

(assert (=> bs!1376570 (= (and (= (regOne!32334 (regTwo!32335 (regTwo!32335 r!7292))) (regOne!32334 r!7292)) (= (regTwo!32334 (regTwo!32335 (regTwo!32335 r!7292))) (regTwo!32334 r!7292))) (= lambda!319630 lambda!319602))))

(declare-fun bs!1376571 () Bool)

(assert (= bs!1376571 (and b!5842982 b!5842773)))

(assert (=> bs!1376571 (not (= lambda!319630 lambda!319625))))

(declare-fun bs!1376572 () Bool)

(assert (= bs!1376572 (and b!5842982 b!5842975)))

(assert (=> bs!1376572 (not (= lambda!319630 lambda!319629))))

(declare-fun bs!1376573 () Bool)

(assert (= bs!1376573 (and b!5842982 b!5842805)))

(assert (=> bs!1376573 (= (and (= (regOne!32334 (regTwo!32335 (regTwo!32335 r!7292))) (regOne!32334 (regOne!32335 r!7292))) (= (regTwo!32334 (regTwo!32335 (regTwo!32335 r!7292))) (regTwo!32334 (regOne!32335 r!7292)))) (= lambda!319630 lambda!319628))))

(declare-fun bs!1376574 () Bool)

(assert (= bs!1376574 (and b!5842982 b!5842376)))

(assert (=> bs!1376574 (not (= lambda!319630 lambda!319601))))

(declare-fun bs!1376575 () Bool)

(assert (= bs!1376575 (and b!5842982 b!5842780)))

(assert (=> bs!1376575 (= (and (= (regOne!32334 (regTwo!32335 (regTwo!32335 r!7292))) (regOne!32334 (regTwo!32335 r!7292))) (= (regTwo!32334 (regTwo!32335 (regTwo!32335 r!7292))) (regTwo!32334 (regTwo!32335 r!7292)))) (= lambda!319630 lambda!319626))))

(declare-fun bs!1376576 () Bool)

(assert (= bs!1376576 (and b!5842982 b!5842798)))

(assert (=> bs!1376576 (not (= lambda!319630 lambda!319627))))

(assert (=> b!5842982 true))

(assert (=> b!5842982 true))

(declare-fun d!1835693 () Bool)

(declare-fun c!1035388 () Bool)

(assert (=> d!1835693 (= c!1035388 ((_ is EmptyExpr!15911) (regTwo!32335 (regTwo!32335 r!7292))))))

(declare-fun e!3583806 () Bool)

(assert (=> d!1835693 (= (matchRSpec!3012 (regTwo!32335 (regTwo!32335 r!7292)) s!2326) e!3583806)))

(declare-fun b!5842973 () Bool)

(declare-fun e!3583809 () Bool)

(assert (=> b!5842973 (= e!3583809 (matchRSpec!3012 (regTwo!32335 (regTwo!32335 (regTwo!32335 r!7292))) s!2326))))

(declare-fun b!5842974 () Bool)

(declare-fun e!3583807 () Bool)

(assert (=> b!5842974 (= e!3583806 e!3583807)))

(declare-fun res!2461259 () Bool)

(assert (=> b!5842974 (= res!2461259 (not ((_ is EmptyLang!15911) (regTwo!32335 (regTwo!32335 r!7292)))))))

(assert (=> b!5842974 (=> (not res!2461259) (not e!3583807))))

(declare-fun e!3583808 () Bool)

(declare-fun call!456487 () Bool)

(assert (=> b!5842975 (= e!3583808 call!456487)))

(declare-fun b!5842976 () Bool)

(declare-fun c!1035390 () Bool)

(assert (=> b!5842976 (= c!1035390 ((_ is ElementMatch!15911) (regTwo!32335 (regTwo!32335 r!7292))))))

(declare-fun e!3583805 () Bool)

(assert (=> b!5842976 (= e!3583807 e!3583805)))

(declare-fun b!5842977 () Bool)

(declare-fun res!2461258 () Bool)

(assert (=> b!5842977 (=> res!2461258 e!3583808)))

(declare-fun call!456486 () Bool)

(assert (=> b!5842977 (= res!2461258 call!456486)))

(declare-fun e!3583810 () Bool)

(assert (=> b!5842977 (= e!3583810 e!3583808)))

(declare-fun b!5842978 () Bool)

(assert (=> b!5842978 (= e!3583805 (= s!2326 (Cons!63910 (c!1035181 (regTwo!32335 (regTwo!32335 r!7292))) Nil!63910)))))

(declare-fun b!5842979 () Bool)

(assert (=> b!5842979 (= e!3583806 call!456486)))

(declare-fun c!1035389 () Bool)

(declare-fun bm!456481 () Bool)

(assert (=> bm!456481 (= call!456487 (Exists!2983 (ite c!1035389 lambda!319629 lambda!319630)))))

(declare-fun bm!456482 () Bool)

(assert (=> bm!456482 (= call!456486 (isEmpty!35769 s!2326))))

(declare-fun b!5842980 () Bool)

(declare-fun c!1035391 () Bool)

(assert (=> b!5842980 (= c!1035391 ((_ is Union!15911) (regTwo!32335 (regTwo!32335 r!7292))))))

(declare-fun e!3583804 () Bool)

(assert (=> b!5842980 (= e!3583805 e!3583804)))

(declare-fun b!5842981 () Bool)

(assert (=> b!5842981 (= e!3583804 e!3583809)))

(declare-fun res!2461260 () Bool)

(assert (=> b!5842981 (= res!2461260 (matchRSpec!3012 (regOne!32335 (regTwo!32335 (regTwo!32335 r!7292))) s!2326))))

(assert (=> b!5842981 (=> res!2461260 e!3583809)))

(assert (=> b!5842982 (= e!3583810 call!456487)))

(declare-fun b!5842983 () Bool)

(assert (=> b!5842983 (= e!3583804 e!3583810)))

(assert (=> b!5842983 (= c!1035389 ((_ is Star!15911) (regTwo!32335 (regTwo!32335 r!7292))))))

(assert (= (and d!1835693 c!1035388) b!5842979))

(assert (= (and d!1835693 (not c!1035388)) b!5842974))

(assert (= (and b!5842974 res!2461259) b!5842976))

(assert (= (and b!5842976 c!1035390) b!5842978))

(assert (= (and b!5842976 (not c!1035390)) b!5842980))

(assert (= (and b!5842980 c!1035391) b!5842981))

(assert (= (and b!5842980 (not c!1035391)) b!5842983))

(assert (= (and b!5842981 (not res!2461260)) b!5842973))

(assert (= (and b!5842983 c!1035389) b!5842977))

(assert (= (and b!5842983 (not c!1035389)) b!5842982))

(assert (= (and b!5842977 (not res!2461258)) b!5842975))

(assert (= (or b!5842975 b!5842982) bm!456481))

(assert (= (or b!5842979 b!5842977) bm!456482))

(declare-fun m!6766284 () Bool)

(assert (=> b!5842973 m!6766284))

(declare-fun m!6766286 () Bool)

(assert (=> bm!456481 m!6766286))

(assert (=> bm!456482 m!6766016))

(declare-fun m!6766288 () Bool)

(assert (=> b!5842981 m!6766288))

(assert (=> b!5842771 d!1835693))

(declare-fun d!1835695 () Bool)

(assert (=> d!1835695 (= (isEmpty!35770 (unfocusZipperList!1332 zl!343)) ((_ is Nil!63908) (unfocusZipperList!1332 zl!343)))))

(assert (=> b!5842756 d!1835695))

(declare-fun d!1835697 () Bool)

(declare-fun choose!44350 (Int) Bool)

(assert (=> d!1835697 (= (Exists!2983 (ite c!1035354 lambda!319627 lambda!319628)) (choose!44350 (ite c!1035354 lambda!319627 lambda!319628)))))

(declare-fun bs!1376577 () Bool)

(assert (= bs!1376577 d!1835697))

(declare-fun m!6766290 () Bool)

(assert (=> bs!1376577 m!6766290))

(assert (=> bm!456457 d!1835697))

(assert (=> b!5842468 d!1835669))

(assert (=> b!5842468 d!1835671))

(declare-fun b!5842984 () Bool)

(declare-fun e!3583816 () (InoxSet Context!10590))

(declare-fun e!3583813 () (InoxSet Context!10590))

(assert (=> b!5842984 (= e!3583816 e!3583813)))

(declare-fun c!1035396 () Bool)

(assert (=> b!5842984 (= c!1035396 ((_ is Concat!24756) (ite c!1035328 (regTwo!32335 r!7292) (ite c!1035327 (regTwo!32334 r!7292) (ite c!1035330 (regOne!32334 r!7292) (reg!16240 r!7292))))))))

(declare-fun b!5842985 () Bool)

(declare-fun call!456488 () (InoxSet Context!10590))

(declare-fun call!456492 () (InoxSet Context!10590))

(assert (=> b!5842985 (= e!3583816 ((_ map or) call!456488 call!456492))))

(declare-fun call!456489 () (InoxSet Context!10590))

(declare-fun c!1035394 () Bool)

(declare-fun bm!456483 () Bool)

(declare-fun c!1035393 () Bool)

(declare-fun call!456490 () List!64032)

(assert (=> bm!456483 (= call!456489 (derivationStepZipperDown!1177 (ite c!1035394 (regTwo!32335 (ite c!1035328 (regTwo!32335 r!7292) (ite c!1035327 (regTwo!32334 r!7292) (ite c!1035330 (regOne!32334 r!7292) (reg!16240 r!7292))))) (ite c!1035393 (regTwo!32334 (ite c!1035328 (regTwo!32335 r!7292) (ite c!1035327 (regTwo!32334 r!7292) (ite c!1035330 (regOne!32334 r!7292) (reg!16240 r!7292))))) (ite c!1035396 (regOne!32334 (ite c!1035328 (regTwo!32335 r!7292) (ite c!1035327 (regTwo!32334 r!7292) (ite c!1035330 (regOne!32334 r!7292) (reg!16240 r!7292))))) (reg!16240 (ite c!1035328 (regTwo!32335 r!7292) (ite c!1035327 (regTwo!32334 r!7292) (ite c!1035330 (regOne!32334 r!7292) (reg!16240 r!7292)))))))) (ite (or c!1035394 c!1035393) (ite (or c!1035328 c!1035327) lt!2303864 (Context!10591 call!456455)) (Context!10591 call!456490)) (h!70358 s!2326)))))

(declare-fun call!456491 () List!64032)

(declare-fun bm!456484 () Bool)

(assert (=> bm!456484 (= call!456488 (derivationStepZipperDown!1177 (ite c!1035394 (regOne!32335 (ite c!1035328 (regTwo!32335 r!7292) (ite c!1035327 (regTwo!32334 r!7292) (ite c!1035330 (regOne!32334 r!7292) (reg!16240 r!7292))))) (regOne!32334 (ite c!1035328 (regTwo!32335 r!7292) (ite c!1035327 (regTwo!32334 r!7292) (ite c!1035330 (regOne!32334 r!7292) (reg!16240 r!7292)))))) (ite c!1035394 (ite (or c!1035328 c!1035327) lt!2303864 (Context!10591 call!456455)) (Context!10591 call!456491)) (h!70358 s!2326)))))

(declare-fun c!1035392 () Bool)

(declare-fun b!5842986 () Bool)

(assert (=> b!5842986 (= c!1035392 ((_ is Star!15911) (ite c!1035328 (regTwo!32335 r!7292) (ite c!1035327 (regTwo!32334 r!7292) (ite c!1035330 (regOne!32334 r!7292) (reg!16240 r!7292))))))))

(declare-fun e!3583814 () (InoxSet Context!10590))

(assert (=> b!5842986 (= e!3583813 e!3583814)))

(declare-fun b!5842987 () Bool)

(declare-fun call!456493 () (InoxSet Context!10590))

(assert (=> b!5842987 (= e!3583813 call!456493)))

(declare-fun b!5842988 () Bool)

(declare-fun e!3583811 () (InoxSet Context!10590))

(assert (=> b!5842988 (= e!3583811 (store ((as const (Array Context!10590 Bool)) false) (ite (or c!1035328 c!1035327) lt!2303864 (Context!10591 call!456455)) true))))

(declare-fun b!5842989 () Bool)

(declare-fun e!3583815 () (InoxSet Context!10590))

(assert (=> b!5842989 (= e!3583815 ((_ map or) call!456488 call!456489))))

(declare-fun e!3583812 () Bool)

(declare-fun b!5842990 () Bool)

(assert (=> b!5842990 (= e!3583812 (nullable!5911 (regOne!32334 (ite c!1035328 (regTwo!32335 r!7292) (ite c!1035327 (regTwo!32334 r!7292) (ite c!1035330 (regOne!32334 r!7292) (reg!16240 r!7292)))))))))

(declare-fun bm!456485 () Bool)

(assert (=> bm!456485 (= call!456493 call!456492)))

(declare-fun d!1835699 () Bool)

(declare-fun c!1035395 () Bool)

(assert (=> d!1835699 (= c!1035395 (and ((_ is ElementMatch!15911) (ite c!1035328 (regTwo!32335 r!7292) (ite c!1035327 (regTwo!32334 r!7292) (ite c!1035330 (regOne!32334 r!7292) (reg!16240 r!7292))))) (= (c!1035181 (ite c!1035328 (regTwo!32335 r!7292) (ite c!1035327 (regTwo!32334 r!7292) (ite c!1035330 (regOne!32334 r!7292) (reg!16240 r!7292))))) (h!70358 s!2326))))))

(assert (=> d!1835699 (= (derivationStepZipperDown!1177 (ite c!1035328 (regTwo!32335 r!7292) (ite c!1035327 (regTwo!32334 r!7292) (ite c!1035330 (regOne!32334 r!7292) (reg!16240 r!7292)))) (ite (or c!1035328 c!1035327) lt!2303864 (Context!10591 call!456455)) (h!70358 s!2326)) e!3583811)))

(declare-fun b!5842991 () Bool)

(assert (=> b!5842991 (= e!3583811 e!3583815)))

(assert (=> b!5842991 (= c!1035394 ((_ is Union!15911) (ite c!1035328 (regTwo!32335 r!7292) (ite c!1035327 (regTwo!32334 r!7292) (ite c!1035330 (regOne!32334 r!7292) (reg!16240 r!7292))))))))

(declare-fun bm!456486 () Bool)

(assert (=> bm!456486 (= call!456491 ($colon$colon!1815 (exprs!5795 (ite (or c!1035328 c!1035327) lt!2303864 (Context!10591 call!456455))) (ite (or c!1035393 c!1035396) (regTwo!32334 (ite c!1035328 (regTwo!32335 r!7292) (ite c!1035327 (regTwo!32334 r!7292) (ite c!1035330 (regOne!32334 r!7292) (reg!16240 r!7292))))) (ite c!1035328 (regTwo!32335 r!7292) (ite c!1035327 (regTwo!32334 r!7292) (ite c!1035330 (regOne!32334 r!7292) (reg!16240 r!7292)))))))))

(declare-fun bm!456487 () Bool)

(assert (=> bm!456487 (= call!456492 call!456489)))

(declare-fun b!5842992 () Bool)

(assert (=> b!5842992 (= e!3583814 ((as const (Array Context!10590 Bool)) false))))

(declare-fun b!5842993 () Bool)

(assert (=> b!5842993 (= c!1035393 e!3583812)))

(declare-fun res!2461261 () Bool)

(assert (=> b!5842993 (=> (not res!2461261) (not e!3583812))))

(assert (=> b!5842993 (= res!2461261 ((_ is Concat!24756) (ite c!1035328 (regTwo!32335 r!7292) (ite c!1035327 (regTwo!32334 r!7292) (ite c!1035330 (regOne!32334 r!7292) (reg!16240 r!7292))))))))

(assert (=> b!5842993 (= e!3583815 e!3583816)))

(declare-fun b!5842994 () Bool)

(assert (=> b!5842994 (= e!3583814 call!456493)))

(declare-fun bm!456488 () Bool)

(assert (=> bm!456488 (= call!456490 call!456491)))

(assert (= (and d!1835699 c!1035395) b!5842988))

(assert (= (and d!1835699 (not c!1035395)) b!5842991))

(assert (= (and b!5842991 c!1035394) b!5842989))

(assert (= (and b!5842991 (not c!1035394)) b!5842993))

(assert (= (and b!5842993 res!2461261) b!5842990))

(assert (= (and b!5842993 c!1035393) b!5842985))

(assert (= (and b!5842993 (not c!1035393)) b!5842984))

(assert (= (and b!5842984 c!1035396) b!5842987))

(assert (= (and b!5842984 (not c!1035396)) b!5842986))

(assert (= (and b!5842986 c!1035392) b!5842994))

(assert (= (and b!5842986 (not c!1035392)) b!5842992))

(assert (= (or b!5842987 b!5842994) bm!456488))

(assert (= (or b!5842987 b!5842994) bm!456485))

(assert (= (or b!5842985 bm!456488) bm!456486))

(assert (= (or b!5842985 bm!456485) bm!456487))

(assert (= (or b!5842989 bm!456487) bm!456483))

(assert (= (or b!5842989 b!5842985) bm!456484))

(declare-fun m!6766292 () Bool)

(assert (=> b!5842990 m!6766292))

(declare-fun m!6766294 () Bool)

(assert (=> b!5842988 m!6766294))

(declare-fun m!6766296 () Bool)

(assert (=> bm!456484 m!6766296))

(declare-fun m!6766298 () Bool)

(assert (=> bm!456483 m!6766298))

(declare-fun m!6766300 () Bool)

(assert (=> bm!456486 m!6766300))

(assert (=> bm!456448 d!1835699))

(assert (=> b!5842792 d!1835669))

(assert (=> b!5842792 d!1835671))

(declare-fun d!1835701 () Bool)

(assert (=> d!1835701 (= (isEmpty!35769 s!2326) ((_ is Nil!63910) s!2326))))

(assert (=> bm!456390 d!1835701))

(declare-fun d!1835703 () Bool)

(declare-fun res!2461262 () Bool)

(declare-fun e!3583822 () Bool)

(assert (=> d!1835703 (=> res!2461262 e!3583822)))

(assert (=> d!1835703 (= res!2461262 ((_ is ElementMatch!15911) lt!2303904))))

(assert (=> d!1835703 (= (validRegex!7647 lt!2303904) e!3583822)))

(declare-fun b!5842995 () Bool)

(declare-fun e!3583817 () Bool)

(declare-fun e!3583821 () Bool)

(assert (=> b!5842995 (= e!3583817 e!3583821)))

(declare-fun res!2461265 () Bool)

(assert (=> b!5842995 (= res!2461265 (not (nullable!5911 (reg!16240 lt!2303904))))))

(assert (=> b!5842995 (=> (not res!2461265) (not e!3583821))))

(declare-fun b!5842996 () Bool)

(declare-fun e!3583818 () Bool)

(assert (=> b!5842996 (= e!3583817 e!3583818)))

(declare-fun c!1035398 () Bool)

(assert (=> b!5842996 (= c!1035398 ((_ is Union!15911) lt!2303904))))

(declare-fun b!5842997 () Bool)

(declare-fun res!2461263 () Bool)

(declare-fun e!3583819 () Bool)

(assert (=> b!5842997 (=> res!2461263 e!3583819)))

(assert (=> b!5842997 (= res!2461263 (not ((_ is Concat!24756) lt!2303904)))))

(assert (=> b!5842997 (= e!3583818 e!3583819)))

(declare-fun b!5842998 () Bool)

(declare-fun e!3583820 () Bool)

(assert (=> b!5842998 (= e!3583819 e!3583820)))

(declare-fun res!2461264 () Bool)

(assert (=> b!5842998 (=> (not res!2461264) (not e!3583820))))

(declare-fun call!456496 () Bool)

(assert (=> b!5842998 (= res!2461264 call!456496)))

(declare-fun bm!456489 () Bool)

(declare-fun call!456495 () Bool)

(assert (=> bm!456489 (= call!456495 (validRegex!7647 (ite c!1035398 (regTwo!32335 lt!2303904) (regTwo!32334 lt!2303904))))))

(declare-fun b!5842999 () Bool)

(declare-fun res!2461266 () Bool)

(declare-fun e!3583823 () Bool)

(assert (=> b!5842999 (=> (not res!2461266) (not e!3583823))))

(assert (=> b!5842999 (= res!2461266 call!456496)))

(assert (=> b!5842999 (= e!3583818 e!3583823)))

(declare-fun b!5843000 () Bool)

(assert (=> b!5843000 (= e!3583822 e!3583817)))

(declare-fun c!1035397 () Bool)

(assert (=> b!5843000 (= c!1035397 ((_ is Star!15911) lt!2303904))))

(declare-fun call!456494 () Bool)

(declare-fun bm!456490 () Bool)

(assert (=> bm!456490 (= call!456494 (validRegex!7647 (ite c!1035397 (reg!16240 lt!2303904) (ite c!1035398 (regOne!32335 lt!2303904) (regOne!32334 lt!2303904)))))))

(declare-fun bm!456491 () Bool)

(assert (=> bm!456491 (= call!456496 call!456494)))

(declare-fun b!5843001 () Bool)

(assert (=> b!5843001 (= e!3583823 call!456495)))

(declare-fun b!5843002 () Bool)

(assert (=> b!5843002 (= e!3583821 call!456494)))

(declare-fun b!5843003 () Bool)

(assert (=> b!5843003 (= e!3583820 call!456495)))

(assert (= (and d!1835703 (not res!2461262)) b!5843000))

(assert (= (and b!5843000 c!1035397) b!5842995))

(assert (= (and b!5843000 (not c!1035397)) b!5842996))

(assert (= (and b!5842995 res!2461265) b!5843002))

(assert (= (and b!5842996 c!1035398) b!5842999))

(assert (= (and b!5842996 (not c!1035398)) b!5842997))

(assert (= (and b!5842999 res!2461266) b!5843001))

(assert (= (and b!5842997 (not res!2461263)) b!5842998))

(assert (= (and b!5842998 res!2461264) b!5843003))

(assert (= (or b!5843001 b!5843003) bm!456489))

(assert (= (or b!5842999 b!5842998) bm!456491))

(assert (= (or b!5843002 bm!456491) bm!456490))

(declare-fun m!6766302 () Bool)

(assert (=> b!5842995 m!6766302))

(declare-fun m!6766304 () Bool)

(assert (=> bm!456489 m!6766304))

(declare-fun m!6766306 () Bool)

(assert (=> bm!456490 m!6766306))

(assert (=> d!1835643 d!1835703))

(assert (=> d!1835643 d!1835651))

(assert (=> d!1835643 d!1835653))

(declare-fun b!5843004 () Bool)

(declare-fun e!3583829 () (InoxSet Context!10590))

(declare-fun e!3583826 () (InoxSet Context!10590))

(assert (=> b!5843004 (= e!3583829 e!3583826)))

(declare-fun c!1035403 () Bool)

(assert (=> b!5843004 (= c!1035403 ((_ is Concat!24756) (h!70356 (exprs!5795 (Context!10591 (Cons!63908 r!7292 Nil!63908))))))))

(declare-fun b!5843005 () Bool)

(declare-fun call!456497 () (InoxSet Context!10590))

(declare-fun call!456501 () (InoxSet Context!10590))

(assert (=> b!5843005 (= e!3583829 ((_ map or) call!456497 call!456501))))

(declare-fun call!456498 () (InoxSet Context!10590))

(declare-fun call!456499 () List!64032)

(declare-fun c!1035400 () Bool)

(declare-fun c!1035401 () Bool)

(declare-fun bm!456492 () Bool)

(assert (=> bm!456492 (= call!456498 (derivationStepZipperDown!1177 (ite c!1035401 (regTwo!32335 (h!70356 (exprs!5795 (Context!10591 (Cons!63908 r!7292 Nil!63908))))) (ite c!1035400 (regTwo!32334 (h!70356 (exprs!5795 (Context!10591 (Cons!63908 r!7292 Nil!63908))))) (ite c!1035403 (regOne!32334 (h!70356 (exprs!5795 (Context!10591 (Cons!63908 r!7292 Nil!63908))))) (reg!16240 (h!70356 (exprs!5795 (Context!10591 (Cons!63908 r!7292 Nil!63908)))))))) (ite (or c!1035401 c!1035400) (Context!10591 (t!377387 (exprs!5795 (Context!10591 (Cons!63908 r!7292 Nil!63908))))) (Context!10591 call!456499)) (h!70358 s!2326)))))

(declare-fun call!456500 () List!64032)

(declare-fun bm!456493 () Bool)

(assert (=> bm!456493 (= call!456497 (derivationStepZipperDown!1177 (ite c!1035401 (regOne!32335 (h!70356 (exprs!5795 (Context!10591 (Cons!63908 r!7292 Nil!63908))))) (regOne!32334 (h!70356 (exprs!5795 (Context!10591 (Cons!63908 r!7292 Nil!63908)))))) (ite c!1035401 (Context!10591 (t!377387 (exprs!5795 (Context!10591 (Cons!63908 r!7292 Nil!63908))))) (Context!10591 call!456500)) (h!70358 s!2326)))))

(declare-fun b!5843006 () Bool)

(declare-fun c!1035399 () Bool)

(assert (=> b!5843006 (= c!1035399 ((_ is Star!15911) (h!70356 (exprs!5795 (Context!10591 (Cons!63908 r!7292 Nil!63908))))))))

(declare-fun e!3583827 () (InoxSet Context!10590))

(assert (=> b!5843006 (= e!3583826 e!3583827)))

(declare-fun b!5843007 () Bool)

(declare-fun call!456502 () (InoxSet Context!10590))

(assert (=> b!5843007 (= e!3583826 call!456502)))

(declare-fun b!5843008 () Bool)

(declare-fun e!3583824 () (InoxSet Context!10590))

(assert (=> b!5843008 (= e!3583824 (store ((as const (Array Context!10590 Bool)) false) (Context!10591 (t!377387 (exprs!5795 (Context!10591 (Cons!63908 r!7292 Nil!63908))))) true))))

(declare-fun b!5843009 () Bool)

(declare-fun e!3583828 () (InoxSet Context!10590))

(assert (=> b!5843009 (= e!3583828 ((_ map or) call!456497 call!456498))))

(declare-fun b!5843010 () Bool)

(declare-fun e!3583825 () Bool)

(assert (=> b!5843010 (= e!3583825 (nullable!5911 (regOne!32334 (h!70356 (exprs!5795 (Context!10591 (Cons!63908 r!7292 Nil!63908)))))))))

(declare-fun bm!456494 () Bool)

(assert (=> bm!456494 (= call!456502 call!456501)))

(declare-fun d!1835705 () Bool)

(declare-fun c!1035402 () Bool)

(assert (=> d!1835705 (= c!1035402 (and ((_ is ElementMatch!15911) (h!70356 (exprs!5795 (Context!10591 (Cons!63908 r!7292 Nil!63908))))) (= (c!1035181 (h!70356 (exprs!5795 (Context!10591 (Cons!63908 r!7292 Nil!63908))))) (h!70358 s!2326))))))

(assert (=> d!1835705 (= (derivationStepZipperDown!1177 (h!70356 (exprs!5795 (Context!10591 (Cons!63908 r!7292 Nil!63908)))) (Context!10591 (t!377387 (exprs!5795 (Context!10591 (Cons!63908 r!7292 Nil!63908))))) (h!70358 s!2326)) e!3583824)))

(declare-fun b!5843011 () Bool)

(assert (=> b!5843011 (= e!3583824 e!3583828)))

(assert (=> b!5843011 (= c!1035401 ((_ is Union!15911) (h!70356 (exprs!5795 (Context!10591 (Cons!63908 r!7292 Nil!63908))))))))

(declare-fun bm!456495 () Bool)

(assert (=> bm!456495 (= call!456500 ($colon$colon!1815 (exprs!5795 (Context!10591 (t!377387 (exprs!5795 (Context!10591 (Cons!63908 r!7292 Nil!63908)))))) (ite (or c!1035400 c!1035403) (regTwo!32334 (h!70356 (exprs!5795 (Context!10591 (Cons!63908 r!7292 Nil!63908))))) (h!70356 (exprs!5795 (Context!10591 (Cons!63908 r!7292 Nil!63908)))))))))

(declare-fun bm!456496 () Bool)

(assert (=> bm!456496 (= call!456501 call!456498)))

(declare-fun b!5843012 () Bool)

(assert (=> b!5843012 (= e!3583827 ((as const (Array Context!10590 Bool)) false))))

(declare-fun b!5843013 () Bool)

(assert (=> b!5843013 (= c!1035400 e!3583825)))

(declare-fun res!2461267 () Bool)

(assert (=> b!5843013 (=> (not res!2461267) (not e!3583825))))

(assert (=> b!5843013 (= res!2461267 ((_ is Concat!24756) (h!70356 (exprs!5795 (Context!10591 (Cons!63908 r!7292 Nil!63908))))))))

(assert (=> b!5843013 (= e!3583828 e!3583829)))

(declare-fun b!5843014 () Bool)

(assert (=> b!5843014 (= e!3583827 call!456502)))

(declare-fun bm!456497 () Bool)

(assert (=> bm!456497 (= call!456499 call!456500)))

(assert (= (and d!1835705 c!1035402) b!5843008))

(assert (= (and d!1835705 (not c!1035402)) b!5843011))

(assert (= (and b!5843011 c!1035401) b!5843009))

(assert (= (and b!5843011 (not c!1035401)) b!5843013))

(assert (= (and b!5843013 res!2461267) b!5843010))

(assert (= (and b!5843013 c!1035400) b!5843005))

(assert (= (and b!5843013 (not c!1035400)) b!5843004))

(assert (= (and b!5843004 c!1035403) b!5843007))

(assert (= (and b!5843004 (not c!1035403)) b!5843006))

(assert (= (and b!5843006 c!1035399) b!5843014))

(assert (= (and b!5843006 (not c!1035399)) b!5843012))

(assert (= (or b!5843007 b!5843014) bm!456497))

(assert (= (or b!5843007 b!5843014) bm!456494))

(assert (= (or b!5843005 bm!456497) bm!456495))

(assert (= (or b!5843005 bm!456494) bm!456496))

(assert (= (or b!5843009 bm!456496) bm!456492))

(assert (= (or b!5843009 b!5843005) bm!456493))

(declare-fun m!6766308 () Bool)

(assert (=> b!5843010 m!6766308))

(declare-fun m!6766310 () Bool)

(assert (=> b!5843008 m!6766310))

(declare-fun m!6766312 () Bool)

(assert (=> bm!456493 m!6766312))

(declare-fun m!6766314 () Bool)

(assert (=> bm!456492 m!6766314))

(declare-fun m!6766316 () Bool)

(assert (=> bm!456495 m!6766316))

(assert (=> bm!456435 d!1835705))

(declare-fun d!1835707 () Bool)

(declare-fun res!2461268 () Bool)

(declare-fun e!3583830 () Bool)

(assert (=> d!1835707 (=> res!2461268 e!3583830)))

(assert (=> d!1835707 (= res!2461268 ((_ is Nil!63908) (exprs!5795 setElem!39586)))))

(assert (=> d!1835707 (= (forall!14998 (exprs!5795 setElem!39586) lambda!319614) e!3583830)))

(declare-fun b!5843015 () Bool)

(declare-fun e!3583831 () Bool)

(assert (=> b!5843015 (= e!3583830 e!3583831)))

(declare-fun res!2461269 () Bool)

(assert (=> b!5843015 (=> (not res!2461269) (not e!3583831))))

(assert (=> b!5843015 (= res!2461269 (dynLambda!24981 lambda!319614 (h!70356 (exprs!5795 setElem!39586))))))

(declare-fun b!5843016 () Bool)

(assert (=> b!5843016 (= e!3583831 (forall!14998 (t!377387 (exprs!5795 setElem!39586)) lambda!319614))))

(assert (= (and d!1835707 (not res!2461268)) b!5843015))

(assert (= (and b!5843015 res!2461269) b!5843016))

(declare-fun b_lambda!220007 () Bool)

(assert (=> (not b_lambda!220007) (not b!5843015)))

(declare-fun m!6766318 () Bool)

(assert (=> b!5843015 m!6766318))

(declare-fun m!6766320 () Bool)

(assert (=> b!5843016 m!6766320))

(assert (=> d!1835635 d!1835707))

(assert (=> d!1835657 d!1835665))

(assert (=> d!1835657 d!1835663))

(declare-fun d!1835709 () Bool)

(assert (=> d!1835709 (= (matchR!8094 (regOne!32335 r!7292) s!2326) (matchRSpec!3012 (regOne!32335 r!7292) s!2326))))

(assert (=> d!1835709 true))

(declare-fun _$88!4213 () Unit!157093)

(assert (=> d!1835709 (= (choose!44348 (regOne!32335 r!7292) s!2326) _$88!4213)))

(declare-fun bs!1376578 () Bool)

(assert (= bs!1376578 d!1835709))

(assert (=> bs!1376578 m!6765952))

(assert (=> bs!1376578 m!6765948))

(assert (=> d!1835657 d!1835709))

(declare-fun d!1835711 () Bool)

(declare-fun res!2461270 () Bool)

(declare-fun e!3583837 () Bool)

(assert (=> d!1835711 (=> res!2461270 e!3583837)))

(assert (=> d!1835711 (= res!2461270 ((_ is ElementMatch!15911) (regOne!32335 r!7292)))))

(assert (=> d!1835711 (= (validRegex!7647 (regOne!32335 r!7292)) e!3583837)))

(declare-fun b!5843017 () Bool)

(declare-fun e!3583832 () Bool)

(declare-fun e!3583836 () Bool)

(assert (=> b!5843017 (= e!3583832 e!3583836)))

(declare-fun res!2461273 () Bool)

(assert (=> b!5843017 (= res!2461273 (not (nullable!5911 (reg!16240 (regOne!32335 r!7292)))))))

(assert (=> b!5843017 (=> (not res!2461273) (not e!3583836))))

(declare-fun b!5843018 () Bool)

(declare-fun e!3583833 () Bool)

(assert (=> b!5843018 (= e!3583832 e!3583833)))

(declare-fun c!1035405 () Bool)

(assert (=> b!5843018 (= c!1035405 ((_ is Union!15911) (regOne!32335 r!7292)))))

(declare-fun b!5843019 () Bool)

(declare-fun res!2461271 () Bool)

(declare-fun e!3583834 () Bool)

(assert (=> b!5843019 (=> res!2461271 e!3583834)))

(assert (=> b!5843019 (= res!2461271 (not ((_ is Concat!24756) (regOne!32335 r!7292))))))

(assert (=> b!5843019 (= e!3583833 e!3583834)))

(declare-fun b!5843020 () Bool)

(declare-fun e!3583835 () Bool)

(assert (=> b!5843020 (= e!3583834 e!3583835)))

(declare-fun res!2461272 () Bool)

(assert (=> b!5843020 (=> (not res!2461272) (not e!3583835))))

(declare-fun call!456505 () Bool)

(assert (=> b!5843020 (= res!2461272 call!456505)))

(declare-fun bm!456498 () Bool)

(declare-fun call!456504 () Bool)

(assert (=> bm!456498 (= call!456504 (validRegex!7647 (ite c!1035405 (regTwo!32335 (regOne!32335 r!7292)) (regTwo!32334 (regOne!32335 r!7292)))))))

(declare-fun b!5843021 () Bool)

(declare-fun res!2461274 () Bool)

(declare-fun e!3583838 () Bool)

(assert (=> b!5843021 (=> (not res!2461274) (not e!3583838))))

(assert (=> b!5843021 (= res!2461274 call!456505)))

(assert (=> b!5843021 (= e!3583833 e!3583838)))

(declare-fun b!5843022 () Bool)

(assert (=> b!5843022 (= e!3583837 e!3583832)))

(declare-fun c!1035404 () Bool)

(assert (=> b!5843022 (= c!1035404 ((_ is Star!15911) (regOne!32335 r!7292)))))

(declare-fun bm!456499 () Bool)

(declare-fun call!456503 () Bool)

(assert (=> bm!456499 (= call!456503 (validRegex!7647 (ite c!1035404 (reg!16240 (regOne!32335 r!7292)) (ite c!1035405 (regOne!32335 (regOne!32335 r!7292)) (regOne!32334 (regOne!32335 r!7292))))))))

(declare-fun bm!456500 () Bool)

(assert (=> bm!456500 (= call!456505 call!456503)))

(declare-fun b!5843023 () Bool)

(assert (=> b!5843023 (= e!3583838 call!456504)))

(declare-fun b!5843024 () Bool)

(assert (=> b!5843024 (= e!3583836 call!456503)))

(declare-fun b!5843025 () Bool)

(assert (=> b!5843025 (= e!3583835 call!456504)))

(assert (= (and d!1835711 (not res!2461270)) b!5843022))

(assert (= (and b!5843022 c!1035404) b!5843017))

(assert (= (and b!5843022 (not c!1035404)) b!5843018))

(assert (= (and b!5843017 res!2461273) b!5843024))

(assert (= (and b!5843018 c!1035405) b!5843021))

(assert (= (and b!5843018 (not c!1035405)) b!5843019))

(assert (= (and b!5843021 res!2461274) b!5843023))

(assert (= (and b!5843019 (not res!2461271)) b!5843020))

(assert (= (and b!5843020 res!2461272) b!5843025))

(assert (= (or b!5843023 b!5843025) bm!456498))

(assert (= (or b!5843021 b!5843020) bm!456500))

(assert (= (or b!5843024 bm!456500) bm!456499))

(declare-fun m!6766322 () Bool)

(assert (=> b!5843017 m!6766322))

(declare-fun m!6766324 () Bool)

(assert (=> bm!456498 m!6766324))

(declare-fun m!6766326 () Bool)

(assert (=> bm!456499 m!6766326))

(assert (=> d!1835657 d!1835711))

(assert (=> b!5842794 d!1835669))

(assert (=> b!5842794 d!1835671))

(declare-fun d!1835713 () Bool)

(assert (=> d!1835713 (= (isConcat!868 lt!2303901) ((_ is Concat!24756) lt!2303901))))

(assert (=> b!5842612 d!1835713))

(assert (=> b!5842810 d!1835667))

(declare-fun d!1835715 () Bool)

(declare-fun nullableFct!1897 (Regex!15911) Bool)

(assert (=> d!1835715 (= (nullable!5911 (regOne!32334 r!7292)) (nullableFct!1897 (regOne!32334 r!7292)))))

(declare-fun bs!1376579 () Bool)

(assert (= bs!1376579 d!1835715))

(declare-fun m!6766328 () Bool)

(assert (=> bs!1376579 m!6766328))

(assert (=> b!5842730 d!1835715))

(declare-fun d!1835717 () Bool)

(assert (=> d!1835717 (= (nullable!5911 (h!70356 (exprs!5795 (Context!10591 (Cons!63908 r!7292 Nil!63908))))) (nullableFct!1897 (h!70356 (exprs!5795 (Context!10591 (Cons!63908 r!7292 Nil!63908))))))))

(declare-fun bs!1376580 () Bool)

(assert (= bs!1376580 d!1835717))

(declare-fun m!6766330 () Bool)

(assert (=> bs!1376580 m!6766330))

(assert (=> b!5842695 d!1835717))

(assert (=> bm!456455 d!1835701))

(declare-fun bs!1376581 () Bool)

(declare-fun d!1835719 () Bool)

(assert (= bs!1376581 (and d!1835719 d!1835653)))

(declare-fun lambda!319631 () Int)

(assert (=> bs!1376581 (= lambda!319631 lambda!319624)))

(declare-fun bs!1376582 () Bool)

(assert (= bs!1376582 (and d!1835719 d!1835641)))

(assert (=> bs!1376582 (= lambda!319631 lambda!319617)))

(declare-fun bs!1376583 () Bool)

(assert (= bs!1376583 (and d!1835719 d!1835633)))

(assert (=> bs!1376583 (= lambda!319631 lambda!319613)))

(declare-fun bs!1376584 () Bool)

(assert (= bs!1376584 (and d!1835719 d!1835649)))

(assert (=> bs!1376584 (= lambda!319631 lambda!319618)))

(declare-fun bs!1376585 () Bool)

(assert (= bs!1376585 (and d!1835719 d!1835651)))

(assert (=> bs!1376585 (= lambda!319631 lambda!319621)))

(declare-fun bs!1376586 () Bool)

(assert (= bs!1376586 (and d!1835719 d!1835635)))

(assert (=> bs!1376586 (= lambda!319631 lambda!319614)))

(declare-fun b!5843026 () Bool)

(declare-fun e!3583840 () Bool)

(assert (=> b!5843026 (= e!3583840 (isEmpty!35770 (t!377387 (t!377387 (unfocusZipperList!1332 zl!343)))))))

(declare-fun b!5843027 () Bool)

(declare-fun e!3583844 () Bool)

(declare-fun e!3583842 () Bool)

(assert (=> b!5843027 (= e!3583844 e!3583842)))

(declare-fun c!1035408 () Bool)

(assert (=> b!5843027 (= c!1035408 (isEmpty!35770 (t!377387 (unfocusZipperList!1332 zl!343))))))

(assert (=> d!1835719 e!3583844))

(declare-fun res!2461276 () Bool)

(assert (=> d!1835719 (=> (not res!2461276) (not e!3583844))))

(declare-fun lt!2303921 () Regex!15911)

(assert (=> d!1835719 (= res!2461276 (validRegex!7647 lt!2303921))))

(declare-fun e!3583841 () Regex!15911)

(assert (=> d!1835719 (= lt!2303921 e!3583841)))

(declare-fun c!1035406 () Bool)

(assert (=> d!1835719 (= c!1035406 e!3583840)))

(declare-fun res!2461275 () Bool)

(assert (=> d!1835719 (=> (not res!2461275) (not e!3583840))))

(assert (=> d!1835719 (= res!2461275 ((_ is Cons!63908) (t!377387 (unfocusZipperList!1332 zl!343))))))

(assert (=> d!1835719 (forall!14998 (t!377387 (unfocusZipperList!1332 zl!343)) lambda!319631)))

(assert (=> d!1835719 (= (generalisedUnion!1755 (t!377387 (unfocusZipperList!1332 zl!343))) lt!2303921)))

(declare-fun b!5843028 () Bool)

(declare-fun e!3583843 () Bool)

(assert (=> b!5843028 (= e!3583842 e!3583843)))

(declare-fun c!1035409 () Bool)

(assert (=> b!5843028 (= c!1035409 (isEmpty!35770 (tail!11462 (t!377387 (unfocusZipperList!1332 zl!343)))))))

(declare-fun b!5843029 () Bool)

(assert (=> b!5843029 (= e!3583843 (= lt!2303921 (head!12377 (t!377387 (unfocusZipperList!1332 zl!343)))))))

(declare-fun b!5843030 () Bool)

(declare-fun e!3583839 () Regex!15911)

(assert (=> b!5843030 (= e!3583839 EmptyLang!15911)))

(declare-fun b!5843031 () Bool)

(assert (=> b!5843031 (= e!3583841 (h!70356 (t!377387 (unfocusZipperList!1332 zl!343))))))

(declare-fun b!5843032 () Bool)

(assert (=> b!5843032 (= e!3583843 (isUnion!784 lt!2303921))))

(declare-fun b!5843033 () Bool)

(assert (=> b!5843033 (= e!3583841 e!3583839)))

(declare-fun c!1035407 () Bool)

(assert (=> b!5843033 (= c!1035407 ((_ is Cons!63908) (t!377387 (unfocusZipperList!1332 zl!343))))))

(declare-fun b!5843034 () Bool)

(assert (=> b!5843034 (= e!3583842 (isEmptyLang!1354 lt!2303921))))

(declare-fun b!5843035 () Bool)

(assert (=> b!5843035 (= e!3583839 (Union!15911 (h!70356 (t!377387 (unfocusZipperList!1332 zl!343))) (generalisedUnion!1755 (t!377387 (t!377387 (unfocusZipperList!1332 zl!343))))))))

(assert (= (and d!1835719 res!2461275) b!5843026))

(assert (= (and d!1835719 c!1035406) b!5843031))

(assert (= (and d!1835719 (not c!1035406)) b!5843033))

(assert (= (and b!5843033 c!1035407) b!5843035))

(assert (= (and b!5843033 (not c!1035407)) b!5843030))

(assert (= (and d!1835719 res!2461276) b!5843027))

(assert (= (and b!5843027 c!1035408) b!5843034))

(assert (= (and b!5843027 (not c!1035408)) b!5843028))

(assert (= (and b!5843028 c!1035409) b!5843029))

(assert (= (and b!5843028 (not c!1035409)) b!5843032))

(declare-fun m!6766332 () Bool)

(assert (=> b!5843028 m!6766332))

(assert (=> b!5843028 m!6766332))

(declare-fun m!6766334 () Bool)

(assert (=> b!5843028 m!6766334))

(assert (=> b!5843027 m!6766178))

(declare-fun m!6766336 () Bool)

(assert (=> b!5843029 m!6766336))

(declare-fun m!6766338 () Bool)

(assert (=> b!5843035 m!6766338))

(declare-fun m!6766340 () Bool)

(assert (=> b!5843026 m!6766340))

(declare-fun m!6766342 () Bool)

(assert (=> d!1835719 m!6766342))

(declare-fun m!6766344 () Bool)

(assert (=> d!1835719 m!6766344))

(declare-fun m!6766346 () Bool)

(assert (=> b!5843034 m!6766346))

(declare-fun m!6766348 () Bool)

(assert (=> b!5843032 m!6766348))

(assert (=> b!5842764 d!1835719))

(assert (=> d!1835607 d!1835701))

(assert (=> d!1835607 d!1835623))

(declare-fun d!1835721 () Bool)

(declare-fun res!2461277 () Bool)

(declare-fun e!3583850 () Bool)

(assert (=> d!1835721 (=> res!2461277 e!3583850)))

(assert (=> d!1835721 (= res!2461277 ((_ is ElementMatch!15911) (ite c!1035275 (reg!16240 r!7292) (ite c!1035276 (regOne!32335 r!7292) (regOne!32334 r!7292)))))))

(assert (=> d!1835721 (= (validRegex!7647 (ite c!1035275 (reg!16240 r!7292) (ite c!1035276 (regOne!32335 r!7292) (regOne!32334 r!7292)))) e!3583850)))

(declare-fun b!5843036 () Bool)

(declare-fun e!3583845 () Bool)

(declare-fun e!3583849 () Bool)

(assert (=> b!5843036 (= e!3583845 e!3583849)))

(declare-fun res!2461280 () Bool)

(assert (=> b!5843036 (= res!2461280 (not (nullable!5911 (reg!16240 (ite c!1035275 (reg!16240 r!7292) (ite c!1035276 (regOne!32335 r!7292) (regOne!32334 r!7292)))))))))

(assert (=> b!5843036 (=> (not res!2461280) (not e!3583849))))

(declare-fun b!5843037 () Bool)

(declare-fun e!3583846 () Bool)

(assert (=> b!5843037 (= e!3583845 e!3583846)))

(declare-fun c!1035411 () Bool)

(assert (=> b!5843037 (= c!1035411 ((_ is Union!15911) (ite c!1035275 (reg!16240 r!7292) (ite c!1035276 (regOne!32335 r!7292) (regOne!32334 r!7292)))))))

(declare-fun b!5843038 () Bool)

(declare-fun res!2461278 () Bool)

(declare-fun e!3583847 () Bool)

(assert (=> b!5843038 (=> res!2461278 e!3583847)))

(assert (=> b!5843038 (= res!2461278 (not ((_ is Concat!24756) (ite c!1035275 (reg!16240 r!7292) (ite c!1035276 (regOne!32335 r!7292) (regOne!32334 r!7292))))))))

(assert (=> b!5843038 (= e!3583846 e!3583847)))

(declare-fun b!5843039 () Bool)

(declare-fun e!3583848 () Bool)

(assert (=> b!5843039 (= e!3583847 e!3583848)))

(declare-fun res!2461279 () Bool)

(assert (=> b!5843039 (=> (not res!2461279) (not e!3583848))))

(declare-fun call!456508 () Bool)

(assert (=> b!5843039 (= res!2461279 call!456508)))

(declare-fun call!456507 () Bool)

(declare-fun bm!456501 () Bool)

(assert (=> bm!456501 (= call!456507 (validRegex!7647 (ite c!1035411 (regTwo!32335 (ite c!1035275 (reg!16240 r!7292) (ite c!1035276 (regOne!32335 r!7292) (regOne!32334 r!7292)))) (regTwo!32334 (ite c!1035275 (reg!16240 r!7292) (ite c!1035276 (regOne!32335 r!7292) (regOne!32334 r!7292)))))))))

(declare-fun b!5843040 () Bool)

(declare-fun res!2461281 () Bool)

(declare-fun e!3583851 () Bool)

(assert (=> b!5843040 (=> (not res!2461281) (not e!3583851))))

(assert (=> b!5843040 (= res!2461281 call!456508)))

(assert (=> b!5843040 (= e!3583846 e!3583851)))

(declare-fun b!5843041 () Bool)

(assert (=> b!5843041 (= e!3583850 e!3583845)))

(declare-fun c!1035410 () Bool)

(assert (=> b!5843041 (= c!1035410 ((_ is Star!15911) (ite c!1035275 (reg!16240 r!7292) (ite c!1035276 (regOne!32335 r!7292) (regOne!32334 r!7292)))))))

(declare-fun bm!456502 () Bool)

(declare-fun call!456506 () Bool)

(assert (=> bm!456502 (= call!456506 (validRegex!7647 (ite c!1035410 (reg!16240 (ite c!1035275 (reg!16240 r!7292) (ite c!1035276 (regOne!32335 r!7292) (regOne!32334 r!7292)))) (ite c!1035411 (regOne!32335 (ite c!1035275 (reg!16240 r!7292) (ite c!1035276 (regOne!32335 r!7292) (regOne!32334 r!7292)))) (regOne!32334 (ite c!1035275 (reg!16240 r!7292) (ite c!1035276 (regOne!32335 r!7292) (regOne!32334 r!7292))))))))))

(declare-fun bm!456503 () Bool)

(assert (=> bm!456503 (= call!456508 call!456506)))

(declare-fun b!5843042 () Bool)

(assert (=> b!5843042 (= e!3583851 call!456507)))

(declare-fun b!5843043 () Bool)

(assert (=> b!5843043 (= e!3583849 call!456506)))

(declare-fun b!5843044 () Bool)

(assert (=> b!5843044 (= e!3583848 call!456507)))

(assert (= (and d!1835721 (not res!2461277)) b!5843041))

(assert (= (and b!5843041 c!1035410) b!5843036))

(assert (= (and b!5843041 (not c!1035410)) b!5843037))

(assert (= (and b!5843036 res!2461280) b!5843043))

(assert (= (and b!5843037 c!1035411) b!5843040))

(assert (= (and b!5843037 (not c!1035411)) b!5843038))

(assert (= (and b!5843040 res!2461281) b!5843042))

(assert (= (and b!5843038 (not res!2461278)) b!5843039))

(assert (= (and b!5843039 res!2461279) b!5843044))

(assert (= (or b!5843042 b!5843044) bm!456501))

(assert (= (or b!5843040 b!5843039) bm!456503))

(assert (= (or b!5843043 bm!456503) bm!456502))

(declare-fun m!6766350 () Bool)

(assert (=> b!5843036 m!6766350))

(declare-fun m!6766352 () Bool)

(assert (=> bm!456501 m!6766352))

(declare-fun m!6766354 () Bool)

(assert (=> bm!456502 m!6766354))

(assert (=> bm!456410 d!1835721))

(assert (=> bm!456399 d!1835701))

(declare-fun bs!1376587 () Bool)

(declare-fun b!5843047 () Bool)

(assert (= bs!1376587 (and b!5843047 b!5842383)))

(declare-fun lambda!319632 () Int)

(assert (=> bs!1376587 (not (= lambda!319632 lambda!319602))))

(declare-fun bs!1376588 () Bool)

(assert (= bs!1376588 (and b!5843047 b!5842773)))

(assert (=> bs!1376588 (= (and (= (reg!16240 (regOne!32335 (regTwo!32335 r!7292))) (reg!16240 (regTwo!32335 r!7292))) (= (regOne!32335 (regTwo!32335 r!7292)) (regTwo!32335 r!7292))) (= lambda!319632 lambda!319625))))

(declare-fun bs!1376589 () Bool)

(assert (= bs!1376589 (and b!5843047 b!5842975)))

(assert (=> bs!1376589 (= (and (= (reg!16240 (regOne!32335 (regTwo!32335 r!7292))) (reg!16240 (regTwo!32335 (regTwo!32335 r!7292)))) (= (regOne!32335 (regTwo!32335 r!7292)) (regTwo!32335 (regTwo!32335 r!7292)))) (= lambda!319632 lambda!319629))))

(declare-fun bs!1376590 () Bool)

(assert (= bs!1376590 (and b!5843047 b!5842805)))

(assert (=> bs!1376590 (not (= lambda!319632 lambda!319628))))

(declare-fun bs!1376591 () Bool)

(assert (= bs!1376591 (and b!5843047 b!5842376)))

(assert (=> bs!1376591 (= (and (= (reg!16240 (regOne!32335 (regTwo!32335 r!7292))) (reg!16240 r!7292)) (= (regOne!32335 (regTwo!32335 r!7292)) r!7292)) (= lambda!319632 lambda!319601))))

(declare-fun bs!1376592 () Bool)

(assert (= bs!1376592 (and b!5843047 b!5842780)))

(assert (=> bs!1376592 (not (= lambda!319632 lambda!319626))))

(declare-fun bs!1376593 () Bool)

(assert (= bs!1376593 (and b!5843047 b!5842798)))

(assert (=> bs!1376593 (= (and (= (reg!16240 (regOne!32335 (regTwo!32335 r!7292))) (reg!16240 (regOne!32335 r!7292))) (= (regOne!32335 (regTwo!32335 r!7292)) (regOne!32335 r!7292))) (= lambda!319632 lambda!319627))))

(declare-fun bs!1376594 () Bool)

(assert (= bs!1376594 (and b!5843047 b!5842982)))

(assert (=> bs!1376594 (not (= lambda!319632 lambda!319630))))

(assert (=> b!5843047 true))

(assert (=> b!5843047 true))

(declare-fun bs!1376595 () Bool)

(declare-fun b!5843054 () Bool)

(assert (= bs!1376595 (and b!5843054 b!5842383)))

(declare-fun lambda!319633 () Int)

(assert (=> bs!1376595 (= (and (= (regOne!32334 (regOne!32335 (regTwo!32335 r!7292))) (regOne!32334 r!7292)) (= (regTwo!32334 (regOne!32335 (regTwo!32335 r!7292))) (regTwo!32334 r!7292))) (= lambda!319633 lambda!319602))))

(declare-fun bs!1376596 () Bool)

(assert (= bs!1376596 (and b!5843054 b!5843047)))

(assert (=> bs!1376596 (not (= lambda!319633 lambda!319632))))

(declare-fun bs!1376597 () Bool)

(assert (= bs!1376597 (and b!5843054 b!5842773)))

(assert (=> bs!1376597 (not (= lambda!319633 lambda!319625))))

(declare-fun bs!1376598 () Bool)

(assert (= bs!1376598 (and b!5843054 b!5842975)))

(assert (=> bs!1376598 (not (= lambda!319633 lambda!319629))))

(declare-fun bs!1376599 () Bool)

(assert (= bs!1376599 (and b!5843054 b!5842805)))

(assert (=> bs!1376599 (= (and (= (regOne!32334 (regOne!32335 (regTwo!32335 r!7292))) (regOne!32334 (regOne!32335 r!7292))) (= (regTwo!32334 (regOne!32335 (regTwo!32335 r!7292))) (regTwo!32334 (regOne!32335 r!7292)))) (= lambda!319633 lambda!319628))))

(declare-fun bs!1376600 () Bool)

(assert (= bs!1376600 (and b!5843054 b!5842376)))

(assert (=> bs!1376600 (not (= lambda!319633 lambda!319601))))

(declare-fun bs!1376601 () Bool)

(assert (= bs!1376601 (and b!5843054 b!5842780)))

(assert (=> bs!1376601 (= (and (= (regOne!32334 (regOne!32335 (regTwo!32335 r!7292))) (regOne!32334 (regTwo!32335 r!7292))) (= (regTwo!32334 (regOne!32335 (regTwo!32335 r!7292))) (regTwo!32334 (regTwo!32335 r!7292)))) (= lambda!319633 lambda!319626))))

(declare-fun bs!1376602 () Bool)

(assert (= bs!1376602 (and b!5843054 b!5842798)))

(assert (=> bs!1376602 (not (= lambda!319633 lambda!319627))))

(declare-fun bs!1376603 () Bool)

(assert (= bs!1376603 (and b!5843054 b!5842982)))

(assert (=> bs!1376603 (= (and (= (regOne!32334 (regOne!32335 (regTwo!32335 r!7292))) (regOne!32334 (regTwo!32335 (regTwo!32335 r!7292)))) (= (regTwo!32334 (regOne!32335 (regTwo!32335 r!7292))) (regTwo!32334 (regTwo!32335 (regTwo!32335 r!7292))))) (= lambda!319633 lambda!319630))))

(assert (=> b!5843054 true))

(assert (=> b!5843054 true))

(declare-fun d!1835723 () Bool)

(declare-fun c!1035412 () Bool)

(assert (=> d!1835723 (= c!1035412 ((_ is EmptyExpr!15911) (regOne!32335 (regTwo!32335 r!7292))))))

(declare-fun e!3583854 () Bool)

(assert (=> d!1835723 (= (matchRSpec!3012 (regOne!32335 (regTwo!32335 r!7292)) s!2326) e!3583854)))

(declare-fun b!5843045 () Bool)

(declare-fun e!3583857 () Bool)

(assert (=> b!5843045 (= e!3583857 (matchRSpec!3012 (regTwo!32335 (regOne!32335 (regTwo!32335 r!7292))) s!2326))))

(declare-fun b!5843046 () Bool)

(declare-fun e!3583855 () Bool)

(assert (=> b!5843046 (= e!3583854 e!3583855)))

(declare-fun res!2461283 () Bool)

(assert (=> b!5843046 (= res!2461283 (not ((_ is EmptyLang!15911) (regOne!32335 (regTwo!32335 r!7292)))))))

(assert (=> b!5843046 (=> (not res!2461283) (not e!3583855))))

(declare-fun e!3583856 () Bool)

(declare-fun call!456510 () Bool)

(assert (=> b!5843047 (= e!3583856 call!456510)))

(declare-fun b!5843048 () Bool)

(declare-fun c!1035414 () Bool)

(assert (=> b!5843048 (= c!1035414 ((_ is ElementMatch!15911) (regOne!32335 (regTwo!32335 r!7292))))))

(declare-fun e!3583853 () Bool)

(assert (=> b!5843048 (= e!3583855 e!3583853)))

(declare-fun b!5843049 () Bool)

(declare-fun res!2461282 () Bool)

(assert (=> b!5843049 (=> res!2461282 e!3583856)))

(declare-fun call!456509 () Bool)

(assert (=> b!5843049 (= res!2461282 call!456509)))

(declare-fun e!3583858 () Bool)

(assert (=> b!5843049 (= e!3583858 e!3583856)))

(declare-fun b!5843050 () Bool)

(assert (=> b!5843050 (= e!3583853 (= s!2326 (Cons!63910 (c!1035181 (regOne!32335 (regTwo!32335 r!7292))) Nil!63910)))))

(declare-fun b!5843051 () Bool)

(assert (=> b!5843051 (= e!3583854 call!456509)))

(declare-fun bm!456504 () Bool)

(declare-fun c!1035413 () Bool)

(assert (=> bm!456504 (= call!456510 (Exists!2983 (ite c!1035413 lambda!319632 lambda!319633)))))

(declare-fun bm!456505 () Bool)

(assert (=> bm!456505 (= call!456509 (isEmpty!35769 s!2326))))

(declare-fun b!5843052 () Bool)

(declare-fun c!1035415 () Bool)

(assert (=> b!5843052 (= c!1035415 ((_ is Union!15911) (regOne!32335 (regTwo!32335 r!7292))))))

(declare-fun e!3583852 () Bool)

(assert (=> b!5843052 (= e!3583853 e!3583852)))

(declare-fun b!5843053 () Bool)

(assert (=> b!5843053 (= e!3583852 e!3583857)))

(declare-fun res!2461284 () Bool)

(assert (=> b!5843053 (= res!2461284 (matchRSpec!3012 (regOne!32335 (regOne!32335 (regTwo!32335 r!7292))) s!2326))))

(assert (=> b!5843053 (=> res!2461284 e!3583857)))

(assert (=> b!5843054 (= e!3583858 call!456510)))

(declare-fun b!5843055 () Bool)

(assert (=> b!5843055 (= e!3583852 e!3583858)))

(assert (=> b!5843055 (= c!1035413 ((_ is Star!15911) (regOne!32335 (regTwo!32335 r!7292))))))

(assert (= (and d!1835723 c!1035412) b!5843051))

(assert (= (and d!1835723 (not c!1035412)) b!5843046))

(assert (= (and b!5843046 res!2461283) b!5843048))

(assert (= (and b!5843048 c!1035414) b!5843050))

(assert (= (and b!5843048 (not c!1035414)) b!5843052))

(assert (= (and b!5843052 c!1035415) b!5843053))

(assert (= (and b!5843052 (not c!1035415)) b!5843055))

(assert (= (and b!5843053 (not res!2461284)) b!5843045))

(assert (= (and b!5843055 c!1035413) b!5843049))

(assert (= (and b!5843055 (not c!1035413)) b!5843054))

(assert (= (and b!5843049 (not res!2461282)) b!5843047))

(assert (= (or b!5843047 b!5843054) bm!456504))

(assert (= (or b!5843051 b!5843049) bm!456505))

(declare-fun m!6766356 () Bool)

(assert (=> b!5843045 m!6766356))

(declare-fun m!6766358 () Bool)

(assert (=> bm!456504 m!6766358))

(assert (=> bm!456505 m!6766016))

(declare-fun m!6766360 () Bool)

(assert (=> b!5843053 m!6766360))

(assert (=> b!5842779 d!1835723))

(declare-fun b!5843056 () Bool)

(declare-fun e!3583862 () Bool)

(assert (=> b!5843056 (= e!3583862 (not (= (head!12375 (tail!11460 s!2326)) (c!1035181 (derivativeStep!4648 (regOne!32335 r!7292) (head!12375 s!2326))))))))

(declare-fun b!5843057 () Bool)

(declare-fun e!3583864 () Bool)

(declare-fun lt!2303922 () Bool)

(assert (=> b!5843057 (= e!3583864 (not lt!2303922))))

(declare-fun d!1835725 () Bool)

(declare-fun e!3583859 () Bool)

(assert (=> d!1835725 e!3583859))

(declare-fun c!1035417 () Bool)

(assert (=> d!1835725 (= c!1035417 ((_ is EmptyExpr!15911) (derivativeStep!4648 (regOne!32335 r!7292) (head!12375 s!2326))))))

(declare-fun e!3583865 () Bool)

(assert (=> d!1835725 (= lt!2303922 e!3583865)))

(declare-fun c!1035416 () Bool)

(assert (=> d!1835725 (= c!1035416 (isEmpty!35769 (tail!11460 s!2326)))))

(assert (=> d!1835725 (validRegex!7647 (derivativeStep!4648 (regOne!32335 r!7292) (head!12375 s!2326)))))

(assert (=> d!1835725 (= (matchR!8094 (derivativeStep!4648 (regOne!32335 r!7292) (head!12375 s!2326)) (tail!11460 s!2326)) lt!2303922)))

(declare-fun b!5843058 () Bool)

(declare-fun res!2461289 () Bool)

(declare-fun e!3583863 () Bool)

(assert (=> b!5843058 (=> (not res!2461289) (not e!3583863))))

(declare-fun call!456511 () Bool)

(assert (=> b!5843058 (= res!2461289 (not call!456511))))

(declare-fun b!5843059 () Bool)

(assert (=> b!5843059 (= e!3583863 (= (head!12375 (tail!11460 s!2326)) (c!1035181 (derivativeStep!4648 (regOne!32335 r!7292) (head!12375 s!2326)))))))

(declare-fun b!5843060 () Bool)

(declare-fun res!2461285 () Bool)

(declare-fun e!3583861 () Bool)

(assert (=> b!5843060 (=> res!2461285 e!3583861)))

(assert (=> b!5843060 (= res!2461285 (not ((_ is ElementMatch!15911) (derivativeStep!4648 (regOne!32335 r!7292) (head!12375 s!2326)))))))

(assert (=> b!5843060 (= e!3583864 e!3583861)))

(declare-fun b!5843061 () Bool)

(declare-fun e!3583860 () Bool)

(assert (=> b!5843061 (= e!3583860 e!3583862)))

(declare-fun res!2461288 () Bool)

(assert (=> b!5843061 (=> res!2461288 e!3583862)))

(assert (=> b!5843061 (= res!2461288 call!456511)))

(declare-fun bm!456506 () Bool)

(assert (=> bm!456506 (= call!456511 (isEmpty!35769 (tail!11460 s!2326)))))

(declare-fun b!5843062 () Bool)

(assert (=> b!5843062 (= e!3583865 (matchR!8094 (derivativeStep!4648 (derivativeStep!4648 (regOne!32335 r!7292) (head!12375 s!2326)) (head!12375 (tail!11460 s!2326))) (tail!11460 (tail!11460 s!2326))))))

(declare-fun b!5843063 () Bool)

(assert (=> b!5843063 (= e!3583865 (nullable!5911 (derivativeStep!4648 (regOne!32335 r!7292) (head!12375 s!2326))))))

(declare-fun b!5843064 () Bool)

(assert (=> b!5843064 (= e!3583861 e!3583860)))

(declare-fun res!2461291 () Bool)

(assert (=> b!5843064 (=> (not res!2461291) (not e!3583860))))

(assert (=> b!5843064 (= res!2461291 (not lt!2303922))))

(declare-fun b!5843065 () Bool)

(assert (=> b!5843065 (= e!3583859 (= lt!2303922 call!456511))))

(declare-fun b!5843066 () Bool)

(declare-fun res!2461292 () Bool)

(assert (=> b!5843066 (=> (not res!2461292) (not e!3583863))))

(assert (=> b!5843066 (= res!2461292 (isEmpty!35769 (tail!11460 (tail!11460 s!2326))))))

(declare-fun b!5843067 () Bool)

(declare-fun res!2461287 () Bool)

(assert (=> b!5843067 (=> res!2461287 e!3583861)))

(assert (=> b!5843067 (= res!2461287 e!3583863)))

(declare-fun res!2461290 () Bool)

(assert (=> b!5843067 (=> (not res!2461290) (not e!3583863))))

(assert (=> b!5843067 (= res!2461290 lt!2303922)))

(declare-fun b!5843068 () Bool)

(declare-fun res!2461286 () Bool)

(assert (=> b!5843068 (=> res!2461286 e!3583862)))

(assert (=> b!5843068 (= res!2461286 (not (isEmpty!35769 (tail!11460 (tail!11460 s!2326)))))))

(declare-fun b!5843069 () Bool)

(assert (=> b!5843069 (= e!3583859 e!3583864)))

(declare-fun c!1035418 () Bool)

(assert (=> b!5843069 (= c!1035418 ((_ is EmptyLang!15911) (derivativeStep!4648 (regOne!32335 r!7292) (head!12375 s!2326))))))

(assert (= (and d!1835725 c!1035416) b!5843063))

(assert (= (and d!1835725 (not c!1035416)) b!5843062))

(assert (= (and d!1835725 c!1035417) b!5843065))

(assert (= (and d!1835725 (not c!1035417)) b!5843069))

(assert (= (and b!5843069 c!1035418) b!5843057))

(assert (= (and b!5843069 (not c!1035418)) b!5843060))

(assert (= (and b!5843060 (not res!2461285)) b!5843067))

(assert (= (and b!5843067 res!2461290) b!5843058))

(assert (= (and b!5843058 res!2461289) b!5843066))

(assert (= (and b!5843066 res!2461292) b!5843059))

(assert (= (and b!5843067 (not res!2461287)) b!5843064))

(assert (= (and b!5843064 res!2461291) b!5843061))

(assert (= (and b!5843061 (not res!2461288)) b!5843068))

(assert (= (and b!5843068 (not res!2461286)) b!5843056))

(assert (= (or b!5843065 b!5843058 b!5843061) bm!456506))

(assert (=> bm!456506 m!6766048))

(assert (=> bm!456506 m!6766050))

(assert (=> d!1835725 m!6766048))

(assert (=> d!1835725 m!6766050))

(assert (=> d!1835725 m!6766218))

(declare-fun m!6766362 () Bool)

(assert (=> d!1835725 m!6766362))

(assert (=> b!5843066 m!6766048))

(assert (=> b!5843066 m!6766230))

(assert (=> b!5843066 m!6766230))

(assert (=> b!5843066 m!6766232))

(assert (=> b!5843062 m!6766048))

(assert (=> b!5843062 m!6766234))

(assert (=> b!5843062 m!6766218))

(assert (=> b!5843062 m!6766234))

(declare-fun m!6766364 () Bool)

(assert (=> b!5843062 m!6766364))

(assert (=> b!5843062 m!6766048))

(assert (=> b!5843062 m!6766230))

(assert (=> b!5843062 m!6766364))

(assert (=> b!5843062 m!6766230))

(declare-fun m!6766366 () Bool)

(assert (=> b!5843062 m!6766366))

(assert (=> b!5843059 m!6766048))

(assert (=> b!5843059 m!6766234))

(assert (=> b!5843063 m!6766218))

(declare-fun m!6766368 () Bool)

(assert (=> b!5843063 m!6766368))

(assert (=> b!5843056 m!6766048))

(assert (=> b!5843056 m!6766234))

(assert (=> b!5843068 m!6766048))

(assert (=> b!5843068 m!6766230))

(assert (=> b!5843068 m!6766230))

(assert (=> b!5843068 m!6766232))

(assert (=> b!5842813 d!1835725))

(declare-fun b!5843070 () Bool)

(declare-fun e!3583870 () Regex!15911)

(declare-fun call!456513 () Regex!15911)

(declare-fun call!456514 () Regex!15911)

(assert (=> b!5843070 (= e!3583870 (Union!15911 call!456513 call!456514))))

(declare-fun b!5843071 () Bool)

(declare-fun e!3583868 () Regex!15911)

(assert (=> b!5843071 (= e!3583870 e!3583868)))

(declare-fun c!1035419 () Bool)

(assert (=> b!5843071 (= c!1035419 ((_ is Star!15911) (regOne!32335 r!7292)))))

(declare-fun d!1835727 () Bool)

(declare-fun lt!2303923 () Regex!15911)

(assert (=> d!1835727 (validRegex!7647 lt!2303923)))

(declare-fun e!3583867 () Regex!15911)

(assert (=> d!1835727 (= lt!2303923 e!3583867)))

(declare-fun c!1035423 () Bool)

(assert (=> d!1835727 (= c!1035423 (or ((_ is EmptyExpr!15911) (regOne!32335 r!7292)) ((_ is EmptyLang!15911) (regOne!32335 r!7292))))))

(assert (=> d!1835727 (validRegex!7647 (regOne!32335 r!7292))))

(assert (=> d!1835727 (= (derivativeStep!4648 (regOne!32335 r!7292) (head!12375 s!2326)) lt!2303923)))

(declare-fun b!5843072 () Bool)

(declare-fun c!1035422 () Bool)

(assert (=> b!5843072 (= c!1035422 (nullable!5911 (regOne!32334 (regOne!32335 r!7292))))))

(declare-fun e!3583866 () Regex!15911)

(assert (=> b!5843072 (= e!3583868 e!3583866)))

(declare-fun b!5843073 () Bool)

(declare-fun call!456512 () Regex!15911)

(assert (=> b!5843073 (= e!3583866 (Union!15911 (Concat!24756 call!456512 (regTwo!32334 (regOne!32335 r!7292))) EmptyLang!15911))))

(declare-fun bm!456507 () Bool)

(declare-fun call!456515 () Regex!15911)

(assert (=> bm!456507 (= call!456512 call!456515)))

(declare-fun b!5843074 () Bool)

(assert (=> b!5843074 (= e!3583866 (Union!15911 (Concat!24756 call!456513 (regTwo!32334 (regOne!32335 r!7292))) call!456512))))

(declare-fun b!5843075 () Bool)

(declare-fun e!3583869 () Regex!15911)

(assert (=> b!5843075 (= e!3583869 (ite (= (head!12375 s!2326) (c!1035181 (regOne!32335 r!7292))) EmptyExpr!15911 EmptyLang!15911))))

(declare-fun b!5843076 () Bool)

(assert (=> b!5843076 (= e!3583867 e!3583869)))

(declare-fun c!1035420 () Bool)

(assert (=> b!5843076 (= c!1035420 ((_ is ElementMatch!15911) (regOne!32335 r!7292)))))

(declare-fun bm!456508 () Bool)

(assert (=> bm!456508 (= call!456515 call!456514)))

(declare-fun c!1035421 () Bool)

(declare-fun bm!456509 () Bool)

(assert (=> bm!456509 (= call!456513 (derivativeStep!4648 (ite c!1035421 (regOne!32335 (regOne!32335 r!7292)) (regOne!32334 (regOne!32335 r!7292))) (head!12375 s!2326)))))

(declare-fun bm!456510 () Bool)

(assert (=> bm!456510 (= call!456514 (derivativeStep!4648 (ite c!1035421 (regTwo!32335 (regOne!32335 r!7292)) (ite c!1035419 (reg!16240 (regOne!32335 r!7292)) (ite c!1035422 (regTwo!32334 (regOne!32335 r!7292)) (regOne!32334 (regOne!32335 r!7292))))) (head!12375 s!2326)))))

(declare-fun b!5843077 () Bool)

(assert (=> b!5843077 (= e!3583868 (Concat!24756 call!456515 (regOne!32335 r!7292)))))

(declare-fun b!5843078 () Bool)

(assert (=> b!5843078 (= e!3583867 EmptyLang!15911)))

(declare-fun b!5843079 () Bool)

(assert (=> b!5843079 (= c!1035421 ((_ is Union!15911) (regOne!32335 r!7292)))))

(assert (=> b!5843079 (= e!3583869 e!3583870)))

(assert (= (and d!1835727 c!1035423) b!5843078))

(assert (= (and d!1835727 (not c!1035423)) b!5843076))

(assert (= (and b!5843076 c!1035420) b!5843075))

(assert (= (and b!5843076 (not c!1035420)) b!5843079))

(assert (= (and b!5843079 c!1035421) b!5843070))

(assert (= (and b!5843079 (not c!1035421)) b!5843071))

(assert (= (and b!5843071 c!1035419) b!5843077))

(assert (= (and b!5843071 (not c!1035419)) b!5843072))

(assert (= (and b!5843072 c!1035422) b!5843074))

(assert (= (and b!5843072 (not c!1035422)) b!5843073))

(assert (= (or b!5843074 b!5843073) bm!456507))

(assert (= (or b!5843077 bm!456507) bm!456508))

(assert (= (or b!5843070 bm!456508) bm!456510))

(assert (= (or b!5843070 b!5843074) bm!456509))

(declare-fun m!6766370 () Bool)

(assert (=> d!1835727 m!6766370))

(assert (=> d!1835727 m!6766200))

(declare-fun m!6766372 () Bool)

(assert (=> b!5843072 m!6766372))

(assert (=> bm!456509 m!6766052))

(declare-fun m!6766374 () Bool)

(assert (=> bm!456509 m!6766374))

(assert (=> bm!456510 m!6766052))

(declare-fun m!6766376 () Bool)

(assert (=> bm!456510 m!6766376))

(assert (=> b!5842813 d!1835727))

(assert (=> b!5842813 d!1835667))

(assert (=> b!5842813 d!1835671))

(assert (=> d!1835659 d!1835701))

(declare-fun d!1835729 () Bool)

(declare-fun res!2461293 () Bool)

(declare-fun e!3583876 () Bool)

(assert (=> d!1835729 (=> res!2461293 e!3583876)))

(assert (=> d!1835729 (= res!2461293 ((_ is ElementMatch!15911) (regTwo!32335 r!7292)))))

(assert (=> d!1835729 (= (validRegex!7647 (regTwo!32335 r!7292)) e!3583876)))

(declare-fun b!5843080 () Bool)

(declare-fun e!3583871 () Bool)

(declare-fun e!3583875 () Bool)

(assert (=> b!5843080 (= e!3583871 e!3583875)))

(declare-fun res!2461296 () Bool)

(assert (=> b!5843080 (= res!2461296 (not (nullable!5911 (reg!16240 (regTwo!32335 r!7292)))))))

(assert (=> b!5843080 (=> (not res!2461296) (not e!3583875))))

(declare-fun b!5843081 () Bool)

(declare-fun e!3583872 () Bool)

(assert (=> b!5843081 (= e!3583871 e!3583872)))

(declare-fun c!1035425 () Bool)

(assert (=> b!5843081 (= c!1035425 ((_ is Union!15911) (regTwo!32335 r!7292)))))

(declare-fun b!5843082 () Bool)

(declare-fun res!2461294 () Bool)

(declare-fun e!3583873 () Bool)

(assert (=> b!5843082 (=> res!2461294 e!3583873)))

(assert (=> b!5843082 (= res!2461294 (not ((_ is Concat!24756) (regTwo!32335 r!7292))))))

(assert (=> b!5843082 (= e!3583872 e!3583873)))

(declare-fun b!5843083 () Bool)

(declare-fun e!3583874 () Bool)

(assert (=> b!5843083 (= e!3583873 e!3583874)))

(declare-fun res!2461295 () Bool)

(assert (=> b!5843083 (=> (not res!2461295) (not e!3583874))))

(declare-fun call!456518 () Bool)

(assert (=> b!5843083 (= res!2461295 call!456518)))

(declare-fun bm!456511 () Bool)

(declare-fun call!456517 () Bool)

(assert (=> bm!456511 (= call!456517 (validRegex!7647 (ite c!1035425 (regTwo!32335 (regTwo!32335 r!7292)) (regTwo!32334 (regTwo!32335 r!7292)))))))

(declare-fun b!5843084 () Bool)

(declare-fun res!2461297 () Bool)

(declare-fun e!3583877 () Bool)

(assert (=> b!5843084 (=> (not res!2461297) (not e!3583877))))

(assert (=> b!5843084 (= res!2461297 call!456518)))

(assert (=> b!5843084 (= e!3583872 e!3583877)))

(declare-fun b!5843085 () Bool)

(assert (=> b!5843085 (= e!3583876 e!3583871)))

(declare-fun c!1035424 () Bool)

(assert (=> b!5843085 (= c!1035424 ((_ is Star!15911) (regTwo!32335 r!7292)))))

(declare-fun call!456516 () Bool)

(declare-fun bm!456512 () Bool)

(assert (=> bm!456512 (= call!456516 (validRegex!7647 (ite c!1035424 (reg!16240 (regTwo!32335 r!7292)) (ite c!1035425 (regOne!32335 (regTwo!32335 r!7292)) (regOne!32334 (regTwo!32335 r!7292))))))))

(declare-fun bm!456513 () Bool)

(assert (=> bm!456513 (= call!456518 call!456516)))

(declare-fun b!5843086 () Bool)

(assert (=> b!5843086 (= e!3583877 call!456517)))

(declare-fun b!5843087 () Bool)

(assert (=> b!5843087 (= e!3583875 call!456516)))

(declare-fun b!5843088 () Bool)

(assert (=> b!5843088 (= e!3583874 call!456517)))

(assert (= (and d!1835729 (not res!2461293)) b!5843085))

(assert (= (and b!5843085 c!1035424) b!5843080))

(assert (= (and b!5843085 (not c!1035424)) b!5843081))

(assert (= (and b!5843080 res!2461296) b!5843087))

(assert (= (and b!5843081 c!1035425) b!5843084))

(assert (= (and b!5843081 (not c!1035425)) b!5843082))

(assert (= (and b!5843084 res!2461297) b!5843086))

(assert (= (and b!5843082 (not res!2461294)) b!5843083))

(assert (= (and b!5843083 res!2461295) b!5843088))

(assert (= (or b!5843086 b!5843088) bm!456511))

(assert (= (or b!5843084 b!5843083) bm!456513))

(assert (= (or b!5843087 bm!456513) bm!456512))

(declare-fun m!6766378 () Bool)

(assert (=> b!5843080 m!6766378))

(declare-fun m!6766380 () Bool)

(assert (=> bm!456511 m!6766380))

(declare-fun m!6766382 () Bool)

(assert (=> bm!456512 m!6766382))

(assert (=> d!1835659 d!1835729))

(declare-fun bs!1376604 () Bool)

(declare-fun d!1835731 () Bool)

(assert (= bs!1376604 (and d!1835731 d!1835653)))

(declare-fun lambda!319634 () Int)

(assert (=> bs!1376604 (= lambda!319634 lambda!319624)))

(declare-fun bs!1376605 () Bool)

(assert (= bs!1376605 (and d!1835731 d!1835641)))

(assert (=> bs!1376605 (= lambda!319634 lambda!319617)))

(declare-fun bs!1376606 () Bool)

(assert (= bs!1376606 (and d!1835731 d!1835633)))

(assert (=> bs!1376606 (= lambda!319634 lambda!319613)))

(declare-fun bs!1376607 () Bool)

(assert (= bs!1376607 (and d!1835731 d!1835649)))

(assert (=> bs!1376607 (= lambda!319634 lambda!319618)))

(declare-fun bs!1376608 () Bool)

(assert (= bs!1376608 (and d!1835731 d!1835719)))

(assert (=> bs!1376608 (= lambda!319634 lambda!319631)))

(declare-fun bs!1376609 () Bool)

(assert (= bs!1376609 (and d!1835731 d!1835651)))

(assert (=> bs!1376609 (= lambda!319634 lambda!319621)))

(declare-fun bs!1376610 () Bool)

(assert (= bs!1376610 (and d!1835731 d!1835635)))

(assert (=> bs!1376610 (= lambda!319634 lambda!319614)))

(declare-fun b!5843089 () Bool)

(declare-fun e!3583879 () Bool)

(declare-fun lt!2303924 () Regex!15911)

(assert (=> b!5843089 (= e!3583879 (isConcat!868 lt!2303924))))

(declare-fun b!5843090 () Bool)

(declare-fun e!3583880 () Bool)

(assert (=> b!5843090 (= e!3583880 (isEmpty!35770 (t!377387 (t!377387 (exprs!5795 (h!70357 zl!343))))))))

(declare-fun b!5843091 () Bool)

(declare-fun e!3583882 () Regex!15911)

(assert (=> b!5843091 (= e!3583882 (Concat!24756 (h!70356 (t!377387 (exprs!5795 (h!70357 zl!343)))) (generalisedConcat!1508 (t!377387 (t!377387 (exprs!5795 (h!70357 zl!343)))))))))

(declare-fun b!5843093 () Bool)

(declare-fun e!3583878 () Regex!15911)

(assert (=> b!5843093 (= e!3583878 (h!70356 (t!377387 (exprs!5795 (h!70357 zl!343)))))))

(declare-fun b!5843094 () Bool)

(declare-fun e!3583883 () Bool)

(declare-fun e!3583881 () Bool)

(assert (=> b!5843094 (= e!3583883 e!3583881)))

(declare-fun c!1035426 () Bool)

(assert (=> b!5843094 (= c!1035426 (isEmpty!35770 (t!377387 (exprs!5795 (h!70357 zl!343)))))))

(declare-fun b!5843095 () Bool)

(assert (=> b!5843095 (= e!3583881 e!3583879)))

(declare-fun c!1035427 () Bool)

(assert (=> b!5843095 (= c!1035427 (isEmpty!35770 (tail!11462 (t!377387 (exprs!5795 (h!70357 zl!343))))))))

(declare-fun b!5843096 () Bool)

(assert (=> b!5843096 (= e!3583879 (= lt!2303924 (head!12377 (t!377387 (exprs!5795 (h!70357 zl!343))))))))

(declare-fun b!5843092 () Bool)

(assert (=> b!5843092 (= e!3583878 e!3583882)))

(declare-fun c!1035428 () Bool)

(assert (=> b!5843092 (= c!1035428 ((_ is Cons!63908) (t!377387 (exprs!5795 (h!70357 zl!343)))))))

(assert (=> d!1835731 e!3583883))

(declare-fun res!2461298 () Bool)

(assert (=> d!1835731 (=> (not res!2461298) (not e!3583883))))

(assert (=> d!1835731 (= res!2461298 (validRegex!7647 lt!2303924))))

(assert (=> d!1835731 (= lt!2303924 e!3583878)))

(declare-fun c!1035429 () Bool)

(assert (=> d!1835731 (= c!1035429 e!3583880)))

(declare-fun res!2461299 () Bool)

(assert (=> d!1835731 (=> (not res!2461299) (not e!3583880))))

(assert (=> d!1835731 (= res!2461299 ((_ is Cons!63908) (t!377387 (exprs!5795 (h!70357 zl!343)))))))

(assert (=> d!1835731 (forall!14998 (t!377387 (exprs!5795 (h!70357 zl!343))) lambda!319634)))

(assert (=> d!1835731 (= (generalisedConcat!1508 (t!377387 (exprs!5795 (h!70357 zl!343)))) lt!2303924)))

(declare-fun b!5843097 () Bool)

(assert (=> b!5843097 (= e!3583881 (isEmptyExpr!1345 lt!2303924))))

(declare-fun b!5843098 () Bool)

(assert (=> b!5843098 (= e!3583882 EmptyExpr!15911)))

(assert (= (and d!1835731 res!2461299) b!5843090))

(assert (= (and d!1835731 c!1035429) b!5843093))

(assert (= (and d!1835731 (not c!1035429)) b!5843092))

(assert (= (and b!5843092 c!1035428) b!5843091))

(assert (= (and b!5843092 (not c!1035428)) b!5843098))

(assert (= (and d!1835731 res!2461298) b!5843094))

(assert (= (and b!5843094 c!1035426) b!5843097))

(assert (= (and b!5843094 (not c!1035426)) b!5843095))

(assert (= (and b!5843095 c!1035427) b!5843096))

(assert (= (and b!5843095 (not c!1035427)) b!5843089))

(declare-fun m!6766384 () Bool)

(assert (=> d!1835731 m!6766384))

(declare-fun m!6766386 () Bool)

(assert (=> d!1835731 m!6766386))

(declare-fun m!6766388 () Bool)

(assert (=> b!5843095 m!6766388))

(assert (=> b!5843095 m!6766388))

(declare-fun m!6766390 () Bool)

(assert (=> b!5843095 m!6766390))

(assert (=> b!5843094 m!6766128))

(declare-fun m!6766392 () Bool)

(assert (=> b!5843089 m!6766392))

(declare-fun m!6766394 () Bool)

(assert (=> b!5843097 m!6766394))

(declare-fun m!6766396 () Bool)

(assert (=> b!5843090 m!6766396))

(declare-fun m!6766398 () Bool)

(assert (=> b!5843096 m!6766398))

(declare-fun m!6766400 () Bool)

(assert (=> b!5843091 m!6766400))

(assert (=> b!5842614 d!1835731))

(assert (=> b!5842782 d!1835667))

(declare-fun d!1835733 () Bool)

(declare-fun res!2461300 () Bool)

(declare-fun e!3583884 () Bool)

(assert (=> d!1835733 (=> res!2461300 e!3583884)))

(assert (=> d!1835733 (= res!2461300 ((_ is Nil!63908) lt!2303910))))

(assert (=> d!1835733 (= (forall!14998 lt!2303910 lambda!319624) e!3583884)))

(declare-fun b!5843099 () Bool)

(declare-fun e!3583885 () Bool)

(assert (=> b!5843099 (= e!3583884 e!3583885)))

(declare-fun res!2461301 () Bool)

(assert (=> b!5843099 (=> (not res!2461301) (not e!3583885))))

(assert (=> b!5843099 (= res!2461301 (dynLambda!24981 lambda!319624 (h!70356 lt!2303910)))))

(declare-fun b!5843100 () Bool)

(assert (=> b!5843100 (= e!3583885 (forall!14998 (t!377387 lt!2303910) lambda!319624))))

(assert (= (and d!1835733 (not res!2461300)) b!5843099))

(assert (= (and b!5843099 res!2461301) b!5843100))

(declare-fun b_lambda!220009 () Bool)

(assert (=> (not b_lambda!220009) (not b!5843099)))

(declare-fun m!6766402 () Bool)

(assert (=> b!5843099 m!6766402))

(declare-fun m!6766404 () Bool)

(assert (=> b!5843100 m!6766404))

(assert (=> d!1835653 d!1835733))

(assert (=> b!5842769 d!1835641))

(declare-fun bs!1376611 () Bool)

(declare-fun d!1835735 () Bool)

(assert (= bs!1376611 (and d!1835735 d!1835653)))

(declare-fun lambda!319635 () Int)

(assert (=> bs!1376611 (= lambda!319635 lambda!319624)))

(declare-fun bs!1376612 () Bool)

(assert (= bs!1376612 (and d!1835735 d!1835641)))

(assert (=> bs!1376612 (= lambda!319635 lambda!319617)))

(declare-fun bs!1376613 () Bool)

(assert (= bs!1376613 (and d!1835735 d!1835633)))

(assert (=> bs!1376613 (= lambda!319635 lambda!319613)))

(declare-fun bs!1376614 () Bool)

(assert (= bs!1376614 (and d!1835735 d!1835649)))

(assert (=> bs!1376614 (= lambda!319635 lambda!319618)))

(declare-fun bs!1376615 () Bool)

(assert (= bs!1376615 (and d!1835735 d!1835719)))

(assert (=> bs!1376615 (= lambda!319635 lambda!319631)))

(declare-fun bs!1376616 () Bool)

(assert (= bs!1376616 (and d!1835735 d!1835651)))

(assert (=> bs!1376616 (= lambda!319635 lambda!319621)))

(declare-fun bs!1376617 () Bool)

(assert (= bs!1376617 (and d!1835735 d!1835731)))

(assert (=> bs!1376617 (= lambda!319635 lambda!319634)))

(declare-fun bs!1376618 () Bool)

(assert (= bs!1376618 (and d!1835735 d!1835635)))

(assert (=> bs!1376618 (= lambda!319635 lambda!319614)))

(declare-fun lt!2303925 () List!64032)

(assert (=> d!1835735 (forall!14998 lt!2303925 lambda!319635)))

(declare-fun e!3583886 () List!64032)

(assert (=> d!1835735 (= lt!2303925 e!3583886)))

(declare-fun c!1035430 () Bool)

(assert (=> d!1835735 (= c!1035430 ((_ is Cons!63909) (t!377388 zl!343)))))

(assert (=> d!1835735 (= (unfocusZipperList!1332 (t!377388 zl!343)) lt!2303925)))

(declare-fun b!5843101 () Bool)

(assert (=> b!5843101 (= e!3583886 (Cons!63908 (generalisedConcat!1508 (exprs!5795 (h!70357 (t!377388 zl!343)))) (unfocusZipperList!1332 (t!377388 (t!377388 zl!343)))))))

(declare-fun b!5843102 () Bool)

(assert (=> b!5843102 (= e!3583886 Nil!63908)))

(assert (= (and d!1835735 c!1035430) b!5843101))

(assert (= (and d!1835735 (not c!1035430)) b!5843102))

(declare-fun m!6766406 () Bool)

(assert (=> d!1835735 m!6766406))

(declare-fun m!6766408 () Bool)

(assert (=> b!5843101 m!6766408))

(declare-fun m!6766410 () Bool)

(assert (=> b!5843101 m!6766410))

(assert (=> b!5842769 d!1835735))

(assert (=> b!5842817 d!1835669))

(assert (=> b!5842817 d!1835671))

(assert (=> d!1835661 d!1835659))

(assert (=> d!1835661 d!1835655))

(declare-fun d!1835737 () Bool)

(assert (=> d!1835737 (= (matchR!8094 (regTwo!32335 r!7292) s!2326) (matchRSpec!3012 (regTwo!32335 r!7292) s!2326))))

(assert (=> d!1835737 true))

(declare-fun _$88!4214 () Unit!157093)

(assert (=> d!1835737 (= (choose!44348 (regTwo!32335 r!7292) s!2326) _$88!4214)))

(declare-fun bs!1376619 () Bool)

(assert (= bs!1376619 d!1835737))

(assert (=> bs!1376619 m!6765946))

(assert (=> bs!1376619 m!6765942))

(assert (=> d!1835661 d!1835737))

(assert (=> d!1835661 d!1835729))

(declare-fun d!1835739 () Bool)

(declare-fun res!2461302 () Bool)

(declare-fun e!3583892 () Bool)

(assert (=> d!1835739 (=> res!2461302 e!3583892)))

(assert (=> d!1835739 (= res!2461302 ((_ is ElementMatch!15911) lt!2303907))))

(assert (=> d!1835739 (= (validRegex!7647 lt!2303907) e!3583892)))

(declare-fun b!5843103 () Bool)

(declare-fun e!3583887 () Bool)

(declare-fun e!3583891 () Bool)

(assert (=> b!5843103 (= e!3583887 e!3583891)))

(declare-fun res!2461305 () Bool)

(assert (=> b!5843103 (= res!2461305 (not (nullable!5911 (reg!16240 lt!2303907))))))

(assert (=> b!5843103 (=> (not res!2461305) (not e!3583891))))

(declare-fun b!5843104 () Bool)

(declare-fun e!3583888 () Bool)

(assert (=> b!5843104 (= e!3583887 e!3583888)))

(declare-fun c!1035432 () Bool)

(assert (=> b!5843104 (= c!1035432 ((_ is Union!15911) lt!2303907))))

(declare-fun b!5843105 () Bool)

(declare-fun res!2461303 () Bool)

(declare-fun e!3583889 () Bool)

(assert (=> b!5843105 (=> res!2461303 e!3583889)))

(assert (=> b!5843105 (= res!2461303 (not ((_ is Concat!24756) lt!2303907)))))

(assert (=> b!5843105 (= e!3583888 e!3583889)))

(declare-fun b!5843106 () Bool)

(declare-fun e!3583890 () Bool)

(assert (=> b!5843106 (= e!3583889 e!3583890)))

(declare-fun res!2461304 () Bool)

(assert (=> b!5843106 (=> (not res!2461304) (not e!3583890))))

(declare-fun call!456521 () Bool)

(assert (=> b!5843106 (= res!2461304 call!456521)))

(declare-fun bm!456514 () Bool)

(declare-fun call!456520 () Bool)

(assert (=> bm!456514 (= call!456520 (validRegex!7647 (ite c!1035432 (regTwo!32335 lt!2303907) (regTwo!32334 lt!2303907))))))

(declare-fun b!5843107 () Bool)

(declare-fun res!2461306 () Bool)

(declare-fun e!3583893 () Bool)

(assert (=> b!5843107 (=> (not res!2461306) (not e!3583893))))

(assert (=> b!5843107 (= res!2461306 call!456521)))

(assert (=> b!5843107 (= e!3583888 e!3583893)))

(declare-fun b!5843108 () Bool)

(assert (=> b!5843108 (= e!3583892 e!3583887)))

(declare-fun c!1035431 () Bool)

(assert (=> b!5843108 (= c!1035431 ((_ is Star!15911) lt!2303907))))

(declare-fun call!456519 () Bool)

(declare-fun bm!456515 () Bool)

(assert (=> bm!456515 (= call!456519 (validRegex!7647 (ite c!1035431 (reg!16240 lt!2303907) (ite c!1035432 (regOne!32335 lt!2303907) (regOne!32334 lt!2303907)))))))

(declare-fun bm!456516 () Bool)

(assert (=> bm!456516 (= call!456521 call!456519)))

(declare-fun b!5843109 () Bool)

(assert (=> b!5843109 (= e!3583893 call!456520)))

(declare-fun b!5843110 () Bool)

(assert (=> b!5843110 (= e!3583891 call!456519)))

(declare-fun b!5843111 () Bool)

(assert (=> b!5843111 (= e!3583890 call!456520)))

(assert (= (and d!1835739 (not res!2461302)) b!5843108))

(assert (= (and b!5843108 c!1035431) b!5843103))

(assert (= (and b!5843108 (not c!1035431)) b!5843104))

(assert (= (and b!5843103 res!2461305) b!5843110))

(assert (= (and b!5843104 c!1035432) b!5843107))

(assert (= (and b!5843104 (not c!1035432)) b!5843105))

(assert (= (and b!5843107 res!2461306) b!5843109))

(assert (= (and b!5843105 (not res!2461303)) b!5843106))

(assert (= (and b!5843106 res!2461304) b!5843111))

(assert (= (or b!5843109 b!5843111) bm!456514))

(assert (= (or b!5843107 b!5843106) bm!456516))

(assert (= (or b!5843110 bm!456516) bm!456515))

(declare-fun m!6766412 () Bool)

(assert (=> b!5843103 m!6766412))

(declare-fun m!6766414 () Bool)

(assert (=> bm!456514 m!6766414))

(declare-fun m!6766416 () Bool)

(assert (=> bm!456515 m!6766416))

(assert (=> d!1835651 d!1835739))

(declare-fun d!1835741 () Bool)

(declare-fun res!2461307 () Bool)

(declare-fun e!3583894 () Bool)

(assert (=> d!1835741 (=> res!2461307 e!3583894)))

(assert (=> d!1835741 (= res!2461307 ((_ is Nil!63908) (unfocusZipperList!1332 zl!343)))))

(assert (=> d!1835741 (= (forall!14998 (unfocusZipperList!1332 zl!343) lambda!319621) e!3583894)))

(declare-fun b!5843112 () Bool)

(declare-fun e!3583895 () Bool)

(assert (=> b!5843112 (= e!3583894 e!3583895)))

(declare-fun res!2461308 () Bool)

(assert (=> b!5843112 (=> (not res!2461308) (not e!3583895))))

(assert (=> b!5843112 (= res!2461308 (dynLambda!24981 lambda!319621 (h!70356 (unfocusZipperList!1332 zl!343))))))

(declare-fun b!5843113 () Bool)

(assert (=> b!5843113 (= e!3583895 (forall!14998 (t!377387 (unfocusZipperList!1332 zl!343)) lambda!319621))))

(assert (= (and d!1835741 (not res!2461307)) b!5843112))

(assert (= (and b!5843112 res!2461308) b!5843113))

(declare-fun b_lambda!220011 () Bool)

(assert (=> (not b_lambda!220011) (not b!5843112)))

(declare-fun m!6766418 () Bool)

(assert (=> b!5843112 m!6766418))

(declare-fun m!6766420 () Bool)

(assert (=> b!5843113 m!6766420))

(assert (=> d!1835651 d!1835741))

(declare-fun d!1835743 () Bool)

(assert (=> d!1835743 (= (isEmpty!35770 (tail!11462 (exprs!5795 (h!70357 zl!343)))) ((_ is Nil!63908) (tail!11462 (exprs!5795 (h!70357 zl!343)))))))

(assert (=> b!5842618 d!1835743))

(declare-fun d!1835745 () Bool)

(assert (=> d!1835745 (= (tail!11462 (exprs!5795 (h!70357 zl!343))) (t!377387 (exprs!5795 (h!70357 zl!343))))))

(assert (=> b!5842618 d!1835745))

(declare-fun d!1835747 () Bool)

(assert (=> d!1835747 (= (isEmpty!35770 (t!377387 (unfocusZipperList!1332 zl!343))) ((_ is Nil!63908) (t!377387 (unfocusZipperList!1332 zl!343))))))

(assert (=> b!5842755 d!1835747))

(assert (=> b!5842819 d!1835669))

(assert (=> b!5842819 d!1835671))

(assert (=> bm!456456 d!1835701))

(declare-fun d!1835749 () Bool)

(assert (=> d!1835749 (= (nullable!5911 r!7292) (nullableFct!1897 r!7292))))

(declare-fun bs!1376620 () Bool)

(assert (= bs!1376620 d!1835749))

(declare-fun m!6766422 () Bool)

(assert (=> bs!1376620 m!6766422))

(assert (=> b!5842463 d!1835749))

(declare-fun bs!1376621 () Bool)

(declare-fun b!5843116 () Bool)

(assert (= bs!1376621 (and b!5843116 b!5843054)))

(declare-fun lambda!319636 () Int)

(assert (=> bs!1376621 (not (= lambda!319636 lambda!319633))))

(declare-fun bs!1376622 () Bool)

(assert (= bs!1376622 (and b!5843116 b!5842383)))

(assert (=> bs!1376622 (not (= lambda!319636 lambda!319602))))

(declare-fun bs!1376623 () Bool)

(assert (= bs!1376623 (and b!5843116 b!5843047)))

(assert (=> bs!1376623 (= (and (= (reg!16240 (regTwo!32335 (regOne!32335 r!7292))) (reg!16240 (regOne!32335 (regTwo!32335 r!7292)))) (= (regTwo!32335 (regOne!32335 r!7292)) (regOne!32335 (regTwo!32335 r!7292)))) (= lambda!319636 lambda!319632))))

(declare-fun bs!1376624 () Bool)

(assert (= bs!1376624 (and b!5843116 b!5842773)))

(assert (=> bs!1376624 (= (and (= (reg!16240 (regTwo!32335 (regOne!32335 r!7292))) (reg!16240 (regTwo!32335 r!7292))) (= (regTwo!32335 (regOne!32335 r!7292)) (regTwo!32335 r!7292))) (= lambda!319636 lambda!319625))))

(declare-fun bs!1376625 () Bool)

(assert (= bs!1376625 (and b!5843116 b!5842975)))

(assert (=> bs!1376625 (= (and (= (reg!16240 (regTwo!32335 (regOne!32335 r!7292))) (reg!16240 (regTwo!32335 (regTwo!32335 r!7292)))) (= (regTwo!32335 (regOne!32335 r!7292)) (regTwo!32335 (regTwo!32335 r!7292)))) (= lambda!319636 lambda!319629))))

(declare-fun bs!1376626 () Bool)

(assert (= bs!1376626 (and b!5843116 b!5842805)))

(assert (=> bs!1376626 (not (= lambda!319636 lambda!319628))))

(declare-fun bs!1376627 () Bool)

(assert (= bs!1376627 (and b!5843116 b!5842376)))

(assert (=> bs!1376627 (= (and (= (reg!16240 (regTwo!32335 (regOne!32335 r!7292))) (reg!16240 r!7292)) (= (regTwo!32335 (regOne!32335 r!7292)) r!7292)) (= lambda!319636 lambda!319601))))

(declare-fun bs!1376628 () Bool)

(assert (= bs!1376628 (and b!5843116 b!5842780)))

(assert (=> bs!1376628 (not (= lambda!319636 lambda!319626))))

(declare-fun bs!1376629 () Bool)

(assert (= bs!1376629 (and b!5843116 b!5842798)))

(assert (=> bs!1376629 (= (and (= (reg!16240 (regTwo!32335 (regOne!32335 r!7292))) (reg!16240 (regOne!32335 r!7292))) (= (regTwo!32335 (regOne!32335 r!7292)) (regOne!32335 r!7292))) (= lambda!319636 lambda!319627))))

(declare-fun bs!1376630 () Bool)

(assert (= bs!1376630 (and b!5843116 b!5842982)))

(assert (=> bs!1376630 (not (= lambda!319636 lambda!319630))))

(assert (=> b!5843116 true))

(assert (=> b!5843116 true))

(declare-fun bs!1376631 () Bool)

(declare-fun b!5843123 () Bool)

(assert (= bs!1376631 (and b!5843123 b!5843054)))

(declare-fun lambda!319637 () Int)

(assert (=> bs!1376631 (= (and (= (regOne!32334 (regTwo!32335 (regOne!32335 r!7292))) (regOne!32334 (regOne!32335 (regTwo!32335 r!7292)))) (= (regTwo!32334 (regTwo!32335 (regOne!32335 r!7292))) (regTwo!32334 (regOne!32335 (regTwo!32335 r!7292))))) (= lambda!319637 lambda!319633))))

(declare-fun bs!1376632 () Bool)

(assert (= bs!1376632 (and b!5843123 b!5843116)))

(assert (=> bs!1376632 (not (= lambda!319637 lambda!319636))))

(declare-fun bs!1376633 () Bool)

(assert (= bs!1376633 (and b!5843123 b!5842383)))

(assert (=> bs!1376633 (= (and (= (regOne!32334 (regTwo!32335 (regOne!32335 r!7292))) (regOne!32334 r!7292)) (= (regTwo!32334 (regTwo!32335 (regOne!32335 r!7292))) (regTwo!32334 r!7292))) (= lambda!319637 lambda!319602))))

(declare-fun bs!1376634 () Bool)

(assert (= bs!1376634 (and b!5843123 b!5843047)))

(assert (=> bs!1376634 (not (= lambda!319637 lambda!319632))))

(declare-fun bs!1376635 () Bool)

(assert (= bs!1376635 (and b!5843123 b!5842773)))

(assert (=> bs!1376635 (not (= lambda!319637 lambda!319625))))

(declare-fun bs!1376636 () Bool)

(assert (= bs!1376636 (and b!5843123 b!5842975)))

(assert (=> bs!1376636 (not (= lambda!319637 lambda!319629))))

(declare-fun bs!1376637 () Bool)

(assert (= bs!1376637 (and b!5843123 b!5842805)))

(assert (=> bs!1376637 (= (and (= (regOne!32334 (regTwo!32335 (regOne!32335 r!7292))) (regOne!32334 (regOne!32335 r!7292))) (= (regTwo!32334 (regTwo!32335 (regOne!32335 r!7292))) (regTwo!32334 (regOne!32335 r!7292)))) (= lambda!319637 lambda!319628))))

(declare-fun bs!1376638 () Bool)

(assert (= bs!1376638 (and b!5843123 b!5842376)))

(assert (=> bs!1376638 (not (= lambda!319637 lambda!319601))))

(declare-fun bs!1376639 () Bool)

(assert (= bs!1376639 (and b!5843123 b!5842780)))

(assert (=> bs!1376639 (= (and (= (regOne!32334 (regTwo!32335 (regOne!32335 r!7292))) (regOne!32334 (regTwo!32335 r!7292))) (= (regTwo!32334 (regTwo!32335 (regOne!32335 r!7292))) (regTwo!32334 (regTwo!32335 r!7292)))) (= lambda!319637 lambda!319626))))

(declare-fun bs!1376640 () Bool)

(assert (= bs!1376640 (and b!5843123 b!5842798)))

(assert (=> bs!1376640 (not (= lambda!319637 lambda!319627))))

(declare-fun bs!1376641 () Bool)

(assert (= bs!1376641 (and b!5843123 b!5842982)))

(assert (=> bs!1376641 (= (and (= (regOne!32334 (regTwo!32335 (regOne!32335 r!7292))) (regOne!32334 (regTwo!32335 (regTwo!32335 r!7292)))) (= (regTwo!32334 (regTwo!32335 (regOne!32335 r!7292))) (regTwo!32334 (regTwo!32335 (regTwo!32335 r!7292))))) (= lambda!319637 lambda!319630))))

(assert (=> b!5843123 true))

(assert (=> b!5843123 true))

(declare-fun d!1835751 () Bool)

(declare-fun c!1035433 () Bool)

(assert (=> d!1835751 (= c!1035433 ((_ is EmptyExpr!15911) (regTwo!32335 (regOne!32335 r!7292))))))

(declare-fun e!3583898 () Bool)

(assert (=> d!1835751 (= (matchRSpec!3012 (regTwo!32335 (regOne!32335 r!7292)) s!2326) e!3583898)))

(declare-fun b!5843114 () Bool)

(declare-fun e!3583901 () Bool)

(assert (=> b!5843114 (= e!3583901 (matchRSpec!3012 (regTwo!32335 (regTwo!32335 (regOne!32335 r!7292))) s!2326))))

(declare-fun b!5843115 () Bool)

(declare-fun e!3583899 () Bool)

(assert (=> b!5843115 (= e!3583898 e!3583899)))

(declare-fun res!2461310 () Bool)

(assert (=> b!5843115 (= res!2461310 (not ((_ is EmptyLang!15911) (regTwo!32335 (regOne!32335 r!7292)))))))

(assert (=> b!5843115 (=> (not res!2461310) (not e!3583899))))

(declare-fun e!3583900 () Bool)

(declare-fun call!456523 () Bool)

(assert (=> b!5843116 (= e!3583900 call!456523)))

(declare-fun b!5843117 () Bool)

(declare-fun c!1035435 () Bool)

(assert (=> b!5843117 (= c!1035435 ((_ is ElementMatch!15911) (regTwo!32335 (regOne!32335 r!7292))))))

(declare-fun e!3583897 () Bool)

(assert (=> b!5843117 (= e!3583899 e!3583897)))

(declare-fun b!5843118 () Bool)

(declare-fun res!2461309 () Bool)

(assert (=> b!5843118 (=> res!2461309 e!3583900)))

(declare-fun call!456522 () Bool)

(assert (=> b!5843118 (= res!2461309 call!456522)))

(declare-fun e!3583902 () Bool)

(assert (=> b!5843118 (= e!3583902 e!3583900)))

(declare-fun b!5843119 () Bool)

(assert (=> b!5843119 (= e!3583897 (= s!2326 (Cons!63910 (c!1035181 (regTwo!32335 (regOne!32335 r!7292))) Nil!63910)))))

(declare-fun b!5843120 () Bool)

(assert (=> b!5843120 (= e!3583898 call!456522)))

(declare-fun bm!456517 () Bool)

(declare-fun c!1035434 () Bool)

(assert (=> bm!456517 (= call!456523 (Exists!2983 (ite c!1035434 lambda!319636 lambda!319637)))))

(declare-fun bm!456518 () Bool)

(assert (=> bm!456518 (= call!456522 (isEmpty!35769 s!2326))))

(declare-fun b!5843121 () Bool)

(declare-fun c!1035436 () Bool)

(assert (=> b!5843121 (= c!1035436 ((_ is Union!15911) (regTwo!32335 (regOne!32335 r!7292))))))

(declare-fun e!3583896 () Bool)

(assert (=> b!5843121 (= e!3583897 e!3583896)))

(declare-fun b!5843122 () Bool)

(assert (=> b!5843122 (= e!3583896 e!3583901)))

(declare-fun res!2461311 () Bool)

(assert (=> b!5843122 (= res!2461311 (matchRSpec!3012 (regOne!32335 (regTwo!32335 (regOne!32335 r!7292))) s!2326))))

(assert (=> b!5843122 (=> res!2461311 e!3583901)))

(assert (=> b!5843123 (= e!3583902 call!456523)))

(declare-fun b!5843124 () Bool)

(assert (=> b!5843124 (= e!3583896 e!3583902)))

(assert (=> b!5843124 (= c!1035434 ((_ is Star!15911) (regTwo!32335 (regOne!32335 r!7292))))))

(assert (= (and d!1835751 c!1035433) b!5843120))

(assert (= (and d!1835751 (not c!1035433)) b!5843115))

(assert (= (and b!5843115 res!2461310) b!5843117))

(assert (= (and b!5843117 c!1035435) b!5843119))

(assert (= (and b!5843117 (not c!1035435)) b!5843121))

(assert (= (and b!5843121 c!1035436) b!5843122))

(assert (= (and b!5843121 (not c!1035436)) b!5843124))

(assert (= (and b!5843122 (not res!2461311)) b!5843114))

(assert (= (and b!5843124 c!1035434) b!5843118))

(assert (= (and b!5843124 (not c!1035434)) b!5843123))

(assert (= (and b!5843118 (not res!2461309)) b!5843116))

(assert (= (or b!5843116 b!5843123) bm!456517))

(assert (= (or b!5843120 b!5843118) bm!456518))

(declare-fun m!6766424 () Bool)

(assert (=> b!5843114 m!6766424))

(declare-fun m!6766426 () Bool)

(assert (=> bm!456517 m!6766426))

(assert (=> bm!456518 m!6766016))

(declare-fun m!6766428 () Bool)

(assert (=> b!5843122 m!6766428))

(assert (=> b!5842796 d!1835751))

(declare-fun d!1835753 () Bool)

(assert (=> d!1835753 (= (isEmptyExpr!1345 lt!2303901) ((_ is EmptyExpr!15911) lt!2303901))))

(assert (=> b!5842620 d!1835753))

(declare-fun d!1835755 () Bool)

(assert (=> d!1835755 (= (isEmpty!35770 (tail!11462 (unfocusZipperList!1332 zl!343))) ((_ is Nil!63908) (tail!11462 (unfocusZipperList!1332 zl!343))))))

(assert (=> b!5842757 d!1835755))

(declare-fun d!1835757 () Bool)

(assert (=> d!1835757 (= (tail!11462 (unfocusZipperList!1332 zl!343)) (t!377387 (unfocusZipperList!1332 zl!343)))))

(assert (=> b!5842757 d!1835757))

(declare-fun d!1835759 () Bool)

(assert (=> d!1835759 (= (nullable!5911 (regTwo!32335 r!7292)) (nullableFct!1897 (regTwo!32335 r!7292)))))

(declare-fun bs!1376642 () Bool)

(assert (= bs!1376642 d!1835759))

(declare-fun m!6766430 () Bool)

(assert (=> bs!1376642 m!6766430))

(assert (=> b!5842789 d!1835759))

(declare-fun d!1835761 () Bool)

(declare-fun res!2461312 () Bool)

(declare-fun e!3583903 () Bool)

(assert (=> d!1835761 (=> res!2461312 e!3583903)))

(assert (=> d!1835761 (= res!2461312 ((_ is Nil!63908) (exprs!5795 lt!2303864)))))

(assert (=> d!1835761 (= (forall!14998 (exprs!5795 lt!2303864) lambda!319613) e!3583903)))

(declare-fun b!5843125 () Bool)

(declare-fun e!3583904 () Bool)

(assert (=> b!5843125 (= e!3583903 e!3583904)))

(declare-fun res!2461313 () Bool)

(assert (=> b!5843125 (=> (not res!2461313) (not e!3583904))))

(assert (=> b!5843125 (= res!2461313 (dynLambda!24981 lambda!319613 (h!70356 (exprs!5795 lt!2303864))))))

(declare-fun b!5843126 () Bool)

(assert (=> b!5843126 (= e!3583904 (forall!14998 (t!377387 (exprs!5795 lt!2303864)) lambda!319613))))

(assert (= (and d!1835761 (not res!2461312)) b!5843125))

(assert (= (and b!5843125 res!2461313) b!5843126))

(declare-fun b_lambda!220013 () Bool)

(assert (=> (not b_lambda!220013) (not b!5843125)))

(declare-fun m!6766432 () Bool)

(assert (=> b!5843125 m!6766432))

(declare-fun m!6766434 () Bool)

(assert (=> b!5843126 m!6766434))

(assert (=> d!1835633 d!1835761))

(declare-fun d!1835763 () Bool)

(assert (=> d!1835763 (= (isUnion!784 lt!2303907) ((_ is Union!15911) lt!2303907))))

(assert (=> b!5842761 d!1835763))

(declare-fun b!5843127 () Bool)

(declare-fun e!3583910 () (InoxSet Context!10590))

(declare-fun e!3583907 () (InoxSet Context!10590))

(assert (=> b!5843127 (= e!3583910 e!3583907)))

(declare-fun c!1035441 () Bool)

(assert (=> b!5843127 (= c!1035441 ((_ is Concat!24756) (ite c!1035328 (regOne!32335 r!7292) (regOne!32334 r!7292))))))

(declare-fun b!5843128 () Bool)

(declare-fun call!456524 () (InoxSet Context!10590))

(declare-fun call!456528 () (InoxSet Context!10590))

(assert (=> b!5843128 (= e!3583910 ((_ map or) call!456524 call!456528))))

(declare-fun c!1035439 () Bool)

(declare-fun bm!456519 () Bool)

(declare-fun call!456526 () List!64032)

(declare-fun c!1035438 () Bool)

(declare-fun call!456525 () (InoxSet Context!10590))

(assert (=> bm!456519 (= call!456525 (derivationStepZipperDown!1177 (ite c!1035439 (regTwo!32335 (ite c!1035328 (regOne!32335 r!7292) (regOne!32334 r!7292))) (ite c!1035438 (regTwo!32334 (ite c!1035328 (regOne!32335 r!7292) (regOne!32334 r!7292))) (ite c!1035441 (regOne!32334 (ite c!1035328 (regOne!32335 r!7292) (regOne!32334 r!7292))) (reg!16240 (ite c!1035328 (regOne!32335 r!7292) (regOne!32334 r!7292)))))) (ite (or c!1035439 c!1035438) (ite c!1035328 lt!2303864 (Context!10591 call!456456)) (Context!10591 call!456526)) (h!70358 s!2326)))))

(declare-fun call!456527 () List!64032)

(declare-fun bm!456520 () Bool)

(assert (=> bm!456520 (= call!456524 (derivationStepZipperDown!1177 (ite c!1035439 (regOne!32335 (ite c!1035328 (regOne!32335 r!7292) (regOne!32334 r!7292))) (regOne!32334 (ite c!1035328 (regOne!32335 r!7292) (regOne!32334 r!7292)))) (ite c!1035439 (ite c!1035328 lt!2303864 (Context!10591 call!456456)) (Context!10591 call!456527)) (h!70358 s!2326)))))

(declare-fun b!5843129 () Bool)

(declare-fun c!1035437 () Bool)

(assert (=> b!5843129 (= c!1035437 ((_ is Star!15911) (ite c!1035328 (regOne!32335 r!7292) (regOne!32334 r!7292))))))

(declare-fun e!3583908 () (InoxSet Context!10590))

(assert (=> b!5843129 (= e!3583907 e!3583908)))

(declare-fun b!5843130 () Bool)

(declare-fun call!456529 () (InoxSet Context!10590))

(assert (=> b!5843130 (= e!3583907 call!456529)))

(declare-fun e!3583905 () (InoxSet Context!10590))

(declare-fun b!5843131 () Bool)

(assert (=> b!5843131 (= e!3583905 (store ((as const (Array Context!10590 Bool)) false) (ite c!1035328 lt!2303864 (Context!10591 call!456456)) true))))

(declare-fun b!5843132 () Bool)

(declare-fun e!3583909 () (InoxSet Context!10590))

(assert (=> b!5843132 (= e!3583909 ((_ map or) call!456524 call!456525))))

(declare-fun b!5843133 () Bool)

(declare-fun e!3583906 () Bool)

(assert (=> b!5843133 (= e!3583906 (nullable!5911 (regOne!32334 (ite c!1035328 (regOne!32335 r!7292) (regOne!32334 r!7292)))))))

(declare-fun bm!456521 () Bool)

(assert (=> bm!456521 (= call!456529 call!456528)))

(declare-fun d!1835765 () Bool)

(declare-fun c!1035440 () Bool)

(assert (=> d!1835765 (= c!1035440 (and ((_ is ElementMatch!15911) (ite c!1035328 (regOne!32335 r!7292) (regOne!32334 r!7292))) (= (c!1035181 (ite c!1035328 (regOne!32335 r!7292) (regOne!32334 r!7292))) (h!70358 s!2326))))))

(assert (=> d!1835765 (= (derivationStepZipperDown!1177 (ite c!1035328 (regOne!32335 r!7292) (regOne!32334 r!7292)) (ite c!1035328 lt!2303864 (Context!10591 call!456456)) (h!70358 s!2326)) e!3583905)))

(declare-fun b!5843134 () Bool)

(assert (=> b!5843134 (= e!3583905 e!3583909)))

(assert (=> b!5843134 (= c!1035439 ((_ is Union!15911) (ite c!1035328 (regOne!32335 r!7292) (regOne!32334 r!7292))))))

(declare-fun bm!456522 () Bool)

(assert (=> bm!456522 (= call!456527 ($colon$colon!1815 (exprs!5795 (ite c!1035328 lt!2303864 (Context!10591 call!456456))) (ite (or c!1035438 c!1035441) (regTwo!32334 (ite c!1035328 (regOne!32335 r!7292) (regOne!32334 r!7292))) (ite c!1035328 (regOne!32335 r!7292) (regOne!32334 r!7292)))))))

(declare-fun bm!456523 () Bool)

(assert (=> bm!456523 (= call!456528 call!456525)))

(declare-fun b!5843135 () Bool)

(assert (=> b!5843135 (= e!3583908 ((as const (Array Context!10590 Bool)) false))))

(declare-fun b!5843136 () Bool)

(assert (=> b!5843136 (= c!1035438 e!3583906)))

(declare-fun res!2461314 () Bool)

(assert (=> b!5843136 (=> (not res!2461314) (not e!3583906))))

(assert (=> b!5843136 (= res!2461314 ((_ is Concat!24756) (ite c!1035328 (regOne!32335 r!7292) (regOne!32334 r!7292))))))

(assert (=> b!5843136 (= e!3583909 e!3583910)))

(declare-fun b!5843137 () Bool)

(assert (=> b!5843137 (= e!3583908 call!456529)))

(declare-fun bm!456524 () Bool)

(assert (=> bm!456524 (= call!456526 call!456527)))

(assert (= (and d!1835765 c!1035440) b!5843131))

(assert (= (and d!1835765 (not c!1035440)) b!5843134))

(assert (= (and b!5843134 c!1035439) b!5843132))

(assert (= (and b!5843134 (not c!1035439)) b!5843136))

(assert (= (and b!5843136 res!2461314) b!5843133))

(assert (= (and b!5843136 c!1035438) b!5843128))

(assert (= (and b!5843136 (not c!1035438)) b!5843127))

(assert (= (and b!5843127 c!1035441) b!5843130))

(assert (= (and b!5843127 (not c!1035441)) b!5843129))

(assert (= (and b!5843129 c!1035437) b!5843137))

(assert (= (and b!5843129 (not c!1035437)) b!5843135))

(assert (= (or b!5843130 b!5843137) bm!456524))

(assert (= (or b!5843130 b!5843137) bm!456521))

(assert (= (or b!5843128 bm!456524) bm!456522))

(assert (= (or b!5843128 bm!456521) bm!456523))

(assert (= (or b!5843132 bm!456523) bm!456519))

(assert (= (or b!5843132 b!5843128) bm!456520))

(declare-fun m!6766436 () Bool)

(assert (=> b!5843133 m!6766436))

(declare-fun m!6766438 () Bool)

(assert (=> b!5843131 m!6766438))

(declare-fun m!6766440 () Bool)

(assert (=> bm!456520 m!6766440))

(declare-fun m!6766442 () Bool)

(assert (=> bm!456519 m!6766442))

(declare-fun m!6766444 () Bool)

(assert (=> bm!456522 m!6766444))

(assert (=> bm!456449 d!1835765))

(declare-fun d!1835767 () Bool)

(assert (=> d!1835767 (= (Exists!2983 (ite c!1035230 lambda!319601 lambda!319602)) (choose!44350 (ite c!1035230 lambda!319601 lambda!319602)))))

(declare-fun bs!1376643 () Bool)

(assert (= bs!1376643 d!1835767))

(declare-fun m!6766446 () Bool)

(assert (=> bs!1376643 m!6766446))

(assert (=> bm!456389 d!1835767))

(assert (=> d!1835665 d!1835701))

(assert (=> d!1835665 d!1835711))

(declare-fun d!1835769 () Bool)

(assert (=> d!1835769 (= (Exists!2983 (ite c!1035347 lambda!319625 lambda!319626)) (choose!44350 (ite c!1035347 lambda!319625 lambda!319626)))))

(declare-fun bs!1376644 () Bool)

(assert (= bs!1376644 d!1835769))

(declare-fun m!6766448 () Bool)

(assert (=> bs!1376644 m!6766448))

(assert (=> bm!456454 d!1835769))

(assert (=> b!5842456 d!1835667))

(assert (=> b!5842807 d!1835667))

(declare-fun d!1835771 () Bool)

(assert (=> d!1835771 (= (isEmptyLang!1354 lt!2303907) ((_ is EmptyLang!15911) lt!2303907))))

(assert (=> b!5842763 d!1835771))

(assert (=> d!1835619 d!1835607))

(assert (=> d!1835619 d!1835583))

(declare-fun d!1835773 () Bool)

(assert (=> d!1835773 (= (matchR!8094 r!7292 s!2326) (matchRSpec!3012 r!7292 s!2326))))

(assert (=> d!1835773 true))

(declare-fun _$88!4215 () Unit!157093)

(assert (=> d!1835773 (= (choose!44348 r!7292 s!2326) _$88!4215)))

(declare-fun bs!1376645 () Bool)

(assert (= bs!1376645 d!1835773))

(assert (=> bs!1376645 m!6765928))

(assert (=> bs!1376645 m!6765926))

(assert (=> d!1835619 d!1835773))

(assert (=> d!1835619 d!1835623))

(declare-fun d!1835775 () Bool)

(declare-fun c!1035444 () Bool)

(assert (=> d!1835775 (= c!1035444 ((_ is Nil!63909) lt!2303898))))

(declare-fun e!3583913 () (InoxSet Context!10590))

(assert (=> d!1835775 (= (content!11741 lt!2303898) e!3583913)))

(declare-fun b!5843142 () Bool)

(assert (=> b!5843142 (= e!3583913 ((as const (Array Context!10590 Bool)) false))))

(declare-fun b!5843143 () Bool)

(assert (=> b!5843143 (= e!3583913 ((_ map or) (store ((as const (Array Context!10590 Bool)) false) (h!70357 lt!2303898) true) (content!11741 (t!377388 lt!2303898))))))

(assert (= (and d!1835775 c!1035444) b!5843142))

(assert (= (and d!1835775 (not c!1035444)) b!5843143))

(declare-fun m!6766450 () Bool)

(assert (=> b!5843143 m!6766450))

(declare-fun m!6766452 () Bool)

(assert (=> b!5843143 m!6766452))

(assert (=> b!5842569 d!1835775))

(assert (=> bm!456458 d!1835701))

(declare-fun d!1835777 () Bool)

(assert (=> d!1835777 (= (nullable!5911 (reg!16240 r!7292)) (nullableFct!1897 (reg!16240 r!7292)))))

(declare-fun bs!1376646 () Bool)

(assert (= bs!1376646 d!1835777))

(declare-fun m!6766454 () Bool)

(assert (=> bs!1376646 m!6766454))

(assert (=> b!5842543 d!1835777))

(declare-fun d!1835779 () Bool)

(declare-fun res!2461315 () Bool)

(declare-fun e!3583914 () Bool)

(assert (=> d!1835779 (=> res!2461315 e!3583914)))

(assert (=> d!1835779 (= res!2461315 ((_ is Nil!63908) (exprs!5795 (h!70357 zl!343))))))

(assert (=> d!1835779 (= (forall!14998 (exprs!5795 (h!70357 zl!343)) lambda!319618) e!3583914)))

(declare-fun b!5843144 () Bool)

(declare-fun e!3583915 () Bool)

(assert (=> b!5843144 (= e!3583914 e!3583915)))

(declare-fun res!2461316 () Bool)

(assert (=> b!5843144 (=> (not res!2461316) (not e!3583915))))

(assert (=> b!5843144 (= res!2461316 (dynLambda!24981 lambda!319618 (h!70356 (exprs!5795 (h!70357 zl!343)))))))

(declare-fun b!5843145 () Bool)

(assert (=> b!5843145 (= e!3583915 (forall!14998 (t!377387 (exprs!5795 (h!70357 zl!343))) lambda!319618))))

(assert (= (and d!1835779 (not res!2461315)) b!5843144))

(assert (= (and b!5843144 res!2461316) b!5843145))

(declare-fun b_lambda!220015 () Bool)

(assert (=> (not b_lambda!220015) (not b!5843144)))

(declare-fun m!6766456 () Bool)

(assert (=> b!5843144 m!6766456))

(declare-fun m!6766458 () Bool)

(assert (=> b!5843145 m!6766458))

(assert (=> d!1835649 d!1835779))

(declare-fun bs!1376647 () Bool)

(declare-fun d!1835781 () Bool)

(assert (= bs!1376647 (and d!1835781 d!1835653)))

(declare-fun lambda!319638 () Int)

(assert (=> bs!1376647 (= lambda!319638 lambda!319624)))

(declare-fun bs!1376648 () Bool)

(assert (= bs!1376648 (and d!1835781 d!1835641)))

(assert (=> bs!1376648 (= lambda!319638 lambda!319617)))

(declare-fun bs!1376649 () Bool)

(assert (= bs!1376649 (and d!1835781 d!1835633)))

(assert (=> bs!1376649 (= lambda!319638 lambda!319613)))

(declare-fun bs!1376650 () Bool)

(assert (= bs!1376650 (and d!1835781 d!1835649)))

(assert (=> bs!1376650 (= lambda!319638 lambda!319618)))

(declare-fun bs!1376651 () Bool)

(assert (= bs!1376651 (and d!1835781 d!1835719)))

(assert (=> bs!1376651 (= lambda!319638 lambda!319631)))

(declare-fun bs!1376652 () Bool)

(assert (= bs!1376652 (and d!1835781 d!1835651)))

(assert (=> bs!1376652 (= lambda!319638 lambda!319621)))

(declare-fun bs!1376653 () Bool)

(assert (= bs!1376653 (and d!1835781 d!1835731)))

(assert (=> bs!1376653 (= lambda!319638 lambda!319634)))

(declare-fun bs!1376654 () Bool)

(assert (= bs!1376654 (and d!1835781 d!1835635)))

(assert (=> bs!1376654 (= lambda!319638 lambda!319614)))

(declare-fun bs!1376655 () Bool)

(assert (= bs!1376655 (and d!1835781 d!1835735)))

(assert (=> bs!1376655 (= lambda!319638 lambda!319635)))

(assert (=> d!1835781 (= (inv!83024 setElem!39592) (forall!14998 (exprs!5795 setElem!39592) lambda!319638))))

(declare-fun bs!1376656 () Bool)

(assert (= bs!1376656 d!1835781))

(declare-fun m!6766460 () Bool)

(assert (=> bs!1376656 m!6766460))

(assert (=> setNonEmpty!39592 d!1835781))

(declare-fun bs!1376657 () Bool)

(declare-fun b!5843148 () Bool)

(assert (= bs!1376657 (and b!5843148 b!5843054)))

(declare-fun lambda!319639 () Int)

(assert (=> bs!1376657 (not (= lambda!319639 lambda!319633))))

(declare-fun bs!1376658 () Bool)

(assert (= bs!1376658 (and b!5843148 b!5843116)))

(assert (=> bs!1376658 (= (and (= (reg!16240 (regOne!32335 (regOne!32335 r!7292))) (reg!16240 (regTwo!32335 (regOne!32335 r!7292)))) (= (regOne!32335 (regOne!32335 r!7292)) (regTwo!32335 (regOne!32335 r!7292)))) (= lambda!319639 lambda!319636))))

(declare-fun bs!1376659 () Bool)

(assert (= bs!1376659 (and b!5843148 b!5842383)))

(assert (=> bs!1376659 (not (= lambda!319639 lambda!319602))))

(declare-fun bs!1376660 () Bool)

(assert (= bs!1376660 (and b!5843148 b!5843047)))

(assert (=> bs!1376660 (= (and (= (reg!16240 (regOne!32335 (regOne!32335 r!7292))) (reg!16240 (regOne!32335 (regTwo!32335 r!7292)))) (= (regOne!32335 (regOne!32335 r!7292)) (regOne!32335 (regTwo!32335 r!7292)))) (= lambda!319639 lambda!319632))))

(declare-fun bs!1376661 () Bool)

(assert (= bs!1376661 (and b!5843148 b!5843123)))

(assert (=> bs!1376661 (not (= lambda!319639 lambda!319637))))

(declare-fun bs!1376662 () Bool)

(assert (= bs!1376662 (and b!5843148 b!5842773)))

(assert (=> bs!1376662 (= (and (= (reg!16240 (regOne!32335 (regOne!32335 r!7292))) (reg!16240 (regTwo!32335 r!7292))) (= (regOne!32335 (regOne!32335 r!7292)) (regTwo!32335 r!7292))) (= lambda!319639 lambda!319625))))

(declare-fun bs!1376663 () Bool)

(assert (= bs!1376663 (and b!5843148 b!5842975)))

(assert (=> bs!1376663 (= (and (= (reg!16240 (regOne!32335 (regOne!32335 r!7292))) (reg!16240 (regTwo!32335 (regTwo!32335 r!7292)))) (= (regOne!32335 (regOne!32335 r!7292)) (regTwo!32335 (regTwo!32335 r!7292)))) (= lambda!319639 lambda!319629))))

(declare-fun bs!1376664 () Bool)

(assert (= bs!1376664 (and b!5843148 b!5842805)))

(assert (=> bs!1376664 (not (= lambda!319639 lambda!319628))))

(declare-fun bs!1376665 () Bool)

(assert (= bs!1376665 (and b!5843148 b!5842376)))

(assert (=> bs!1376665 (= (and (= (reg!16240 (regOne!32335 (regOne!32335 r!7292))) (reg!16240 r!7292)) (= (regOne!32335 (regOne!32335 r!7292)) r!7292)) (= lambda!319639 lambda!319601))))

(declare-fun bs!1376666 () Bool)

(assert (= bs!1376666 (and b!5843148 b!5842780)))

(assert (=> bs!1376666 (not (= lambda!319639 lambda!319626))))

(declare-fun bs!1376667 () Bool)

(assert (= bs!1376667 (and b!5843148 b!5842798)))

(assert (=> bs!1376667 (= (and (= (reg!16240 (regOne!32335 (regOne!32335 r!7292))) (reg!16240 (regOne!32335 r!7292))) (= (regOne!32335 (regOne!32335 r!7292)) (regOne!32335 r!7292))) (= lambda!319639 lambda!319627))))

(declare-fun bs!1376668 () Bool)

(assert (= bs!1376668 (and b!5843148 b!5842982)))

(assert (=> bs!1376668 (not (= lambda!319639 lambda!319630))))

(assert (=> b!5843148 true))

(assert (=> b!5843148 true))

(declare-fun bs!1376669 () Bool)

(declare-fun b!5843155 () Bool)

(assert (= bs!1376669 (and b!5843155 b!5843054)))

(declare-fun lambda!319640 () Int)

(assert (=> bs!1376669 (= (and (= (regOne!32334 (regOne!32335 (regOne!32335 r!7292))) (regOne!32334 (regOne!32335 (regTwo!32335 r!7292)))) (= (regTwo!32334 (regOne!32335 (regOne!32335 r!7292))) (regTwo!32334 (regOne!32335 (regTwo!32335 r!7292))))) (= lambda!319640 lambda!319633))))

(declare-fun bs!1376670 () Bool)

(assert (= bs!1376670 (and b!5843155 b!5843116)))

(assert (=> bs!1376670 (not (= lambda!319640 lambda!319636))))

(declare-fun bs!1376671 () Bool)

(assert (= bs!1376671 (and b!5843155 b!5843047)))

(assert (=> bs!1376671 (not (= lambda!319640 lambda!319632))))

(declare-fun bs!1376672 () Bool)

(assert (= bs!1376672 (and b!5843155 b!5843123)))

(assert (=> bs!1376672 (= (and (= (regOne!32334 (regOne!32335 (regOne!32335 r!7292))) (regOne!32334 (regTwo!32335 (regOne!32335 r!7292)))) (= (regTwo!32334 (regOne!32335 (regOne!32335 r!7292))) (regTwo!32334 (regTwo!32335 (regOne!32335 r!7292))))) (= lambda!319640 lambda!319637))))

(declare-fun bs!1376673 () Bool)

(assert (= bs!1376673 (and b!5843155 b!5842773)))

(assert (=> bs!1376673 (not (= lambda!319640 lambda!319625))))

(declare-fun bs!1376674 () Bool)

(assert (= bs!1376674 (and b!5843155 b!5842975)))

(assert (=> bs!1376674 (not (= lambda!319640 lambda!319629))))

(declare-fun bs!1376675 () Bool)

(assert (= bs!1376675 (and b!5843155 b!5842805)))

(assert (=> bs!1376675 (= (and (= (regOne!32334 (regOne!32335 (regOne!32335 r!7292))) (regOne!32334 (regOne!32335 r!7292))) (= (regTwo!32334 (regOne!32335 (regOne!32335 r!7292))) (regTwo!32334 (regOne!32335 r!7292)))) (= lambda!319640 lambda!319628))))

(declare-fun bs!1376676 () Bool)

(assert (= bs!1376676 (and b!5843155 b!5842376)))

(assert (=> bs!1376676 (not (= lambda!319640 lambda!319601))))

(declare-fun bs!1376677 () Bool)

(assert (= bs!1376677 (and b!5843155 b!5842383)))

(assert (=> bs!1376677 (= (and (= (regOne!32334 (regOne!32335 (regOne!32335 r!7292))) (regOne!32334 r!7292)) (= (regTwo!32334 (regOne!32335 (regOne!32335 r!7292))) (regTwo!32334 r!7292))) (= lambda!319640 lambda!319602))))

(declare-fun bs!1376678 () Bool)

(assert (= bs!1376678 (and b!5843155 b!5843148)))

(assert (=> bs!1376678 (not (= lambda!319640 lambda!319639))))

(declare-fun bs!1376679 () Bool)

(assert (= bs!1376679 (and b!5843155 b!5842780)))

(assert (=> bs!1376679 (= (and (= (regOne!32334 (regOne!32335 (regOne!32335 r!7292))) (regOne!32334 (regTwo!32335 r!7292))) (= (regTwo!32334 (regOne!32335 (regOne!32335 r!7292))) (regTwo!32334 (regTwo!32335 r!7292)))) (= lambda!319640 lambda!319626))))

(declare-fun bs!1376680 () Bool)

(assert (= bs!1376680 (and b!5843155 b!5842798)))

(assert (=> bs!1376680 (not (= lambda!319640 lambda!319627))))

(declare-fun bs!1376681 () Bool)

(assert (= bs!1376681 (and b!5843155 b!5842982)))

(assert (=> bs!1376681 (= (and (= (regOne!32334 (regOne!32335 (regOne!32335 r!7292))) (regOne!32334 (regTwo!32335 (regTwo!32335 r!7292)))) (= (regTwo!32334 (regOne!32335 (regOne!32335 r!7292))) (regTwo!32334 (regTwo!32335 (regTwo!32335 r!7292))))) (= lambda!319640 lambda!319630))))

(assert (=> b!5843155 true))

(assert (=> b!5843155 true))

(declare-fun d!1835783 () Bool)

(declare-fun c!1035445 () Bool)

(assert (=> d!1835783 (= c!1035445 ((_ is EmptyExpr!15911) (regOne!32335 (regOne!32335 r!7292))))))

(declare-fun e!3583918 () Bool)

(assert (=> d!1835783 (= (matchRSpec!3012 (regOne!32335 (regOne!32335 r!7292)) s!2326) e!3583918)))

(declare-fun b!5843146 () Bool)

(declare-fun e!3583921 () Bool)

(assert (=> b!5843146 (= e!3583921 (matchRSpec!3012 (regTwo!32335 (regOne!32335 (regOne!32335 r!7292))) s!2326))))

(declare-fun b!5843147 () Bool)

(declare-fun e!3583919 () Bool)

(assert (=> b!5843147 (= e!3583918 e!3583919)))

(declare-fun res!2461318 () Bool)

(assert (=> b!5843147 (= res!2461318 (not ((_ is EmptyLang!15911) (regOne!32335 (regOne!32335 r!7292)))))))

(assert (=> b!5843147 (=> (not res!2461318) (not e!3583919))))

(declare-fun e!3583920 () Bool)

(declare-fun call!456531 () Bool)

(assert (=> b!5843148 (= e!3583920 call!456531)))

(declare-fun b!5843149 () Bool)

(declare-fun c!1035447 () Bool)

(assert (=> b!5843149 (= c!1035447 ((_ is ElementMatch!15911) (regOne!32335 (regOne!32335 r!7292))))))

(declare-fun e!3583917 () Bool)

(assert (=> b!5843149 (= e!3583919 e!3583917)))

(declare-fun b!5843150 () Bool)

(declare-fun res!2461317 () Bool)

(assert (=> b!5843150 (=> res!2461317 e!3583920)))

(declare-fun call!456530 () Bool)

(assert (=> b!5843150 (= res!2461317 call!456530)))

(declare-fun e!3583922 () Bool)

(assert (=> b!5843150 (= e!3583922 e!3583920)))

(declare-fun b!5843151 () Bool)

(assert (=> b!5843151 (= e!3583917 (= s!2326 (Cons!63910 (c!1035181 (regOne!32335 (regOne!32335 r!7292))) Nil!63910)))))

(declare-fun b!5843152 () Bool)

(assert (=> b!5843152 (= e!3583918 call!456530)))

(declare-fun c!1035446 () Bool)

(declare-fun bm!456525 () Bool)

(assert (=> bm!456525 (= call!456531 (Exists!2983 (ite c!1035446 lambda!319639 lambda!319640)))))

(declare-fun bm!456526 () Bool)

(assert (=> bm!456526 (= call!456530 (isEmpty!35769 s!2326))))

(declare-fun b!5843153 () Bool)

(declare-fun c!1035448 () Bool)

(assert (=> b!5843153 (= c!1035448 ((_ is Union!15911) (regOne!32335 (regOne!32335 r!7292))))))

(declare-fun e!3583916 () Bool)

(assert (=> b!5843153 (= e!3583917 e!3583916)))

(declare-fun b!5843154 () Bool)

(assert (=> b!5843154 (= e!3583916 e!3583921)))

(declare-fun res!2461319 () Bool)

(assert (=> b!5843154 (= res!2461319 (matchRSpec!3012 (regOne!32335 (regOne!32335 (regOne!32335 r!7292))) s!2326))))

(assert (=> b!5843154 (=> res!2461319 e!3583921)))

(assert (=> b!5843155 (= e!3583922 call!456531)))

(declare-fun b!5843156 () Bool)

(assert (=> b!5843156 (= e!3583916 e!3583922)))

(assert (=> b!5843156 (= c!1035446 ((_ is Star!15911) (regOne!32335 (regOne!32335 r!7292))))))

(assert (= (and d!1835783 c!1035445) b!5843152))

(assert (= (and d!1835783 (not c!1035445)) b!5843147))

(assert (= (and b!5843147 res!2461318) b!5843149))

(assert (= (and b!5843149 c!1035447) b!5843151))

(assert (= (and b!5843149 (not c!1035447)) b!5843153))

(assert (= (and b!5843153 c!1035448) b!5843154))

(assert (= (and b!5843153 (not c!1035448)) b!5843156))

(assert (= (and b!5843154 (not res!2461319)) b!5843146))

(assert (= (and b!5843156 c!1035446) b!5843150))

(assert (= (and b!5843156 (not c!1035446)) b!5843155))

(assert (= (and b!5843150 (not res!2461317)) b!5843148))

(assert (= (or b!5843148 b!5843155) bm!456525))

(assert (= (or b!5843152 b!5843150) bm!456526))

(declare-fun m!6766462 () Bool)

(assert (=> b!5843146 m!6766462))

(declare-fun m!6766464 () Bool)

(assert (=> bm!456525 m!6766464))

(assert (=> bm!456526 m!6766016))

(declare-fun m!6766466 () Bool)

(assert (=> b!5843154 m!6766466))

(assert (=> b!5842804 d!1835783))

(declare-fun bs!1376682 () Bool)

(declare-fun d!1835785 () Bool)

(assert (= bs!1376682 (and d!1835785 d!1835653)))

(declare-fun lambda!319641 () Int)

(assert (=> bs!1376682 (= lambda!319641 lambda!319624)))

(declare-fun bs!1376683 () Bool)

(assert (= bs!1376683 (and d!1835785 d!1835641)))

(assert (=> bs!1376683 (= lambda!319641 lambda!319617)))

(declare-fun bs!1376684 () Bool)

(assert (= bs!1376684 (and d!1835785 d!1835633)))

(assert (=> bs!1376684 (= lambda!319641 lambda!319613)))

(declare-fun bs!1376685 () Bool)

(assert (= bs!1376685 (and d!1835785 d!1835719)))

(assert (=> bs!1376685 (= lambda!319641 lambda!319631)))

(declare-fun bs!1376686 () Bool)

(assert (= bs!1376686 (and d!1835785 d!1835651)))

(assert (=> bs!1376686 (= lambda!319641 lambda!319621)))

(declare-fun bs!1376687 () Bool)

(assert (= bs!1376687 (and d!1835785 d!1835731)))

(assert (=> bs!1376687 (= lambda!319641 lambda!319634)))

(declare-fun bs!1376688 () Bool)

(assert (= bs!1376688 (and d!1835785 d!1835635)))

(assert (=> bs!1376688 (= lambda!319641 lambda!319614)))

(declare-fun bs!1376689 () Bool)

(assert (= bs!1376689 (and d!1835785 d!1835735)))

(assert (=> bs!1376689 (= lambda!319641 lambda!319635)))

(declare-fun bs!1376690 () Bool)

(assert (= bs!1376690 (and d!1835785 d!1835781)))

(assert (=> bs!1376690 (= lambda!319641 lambda!319638)))

(declare-fun bs!1376691 () Bool)

(assert (= bs!1376691 (and d!1835785 d!1835649)))

(assert (=> bs!1376691 (= lambda!319641 lambda!319618)))

(assert (=> d!1835785 (= (inv!83024 (h!70357 (t!377388 zl!343))) (forall!14998 (exprs!5795 (h!70357 (t!377388 zl!343))) lambda!319641))))

(declare-fun bs!1376692 () Bool)

(assert (= bs!1376692 d!1835785))

(declare-fun m!6766468 () Bool)

(assert (=> bs!1376692 m!6766468))

(assert (=> b!5842867 d!1835785))

(declare-fun d!1835787 () Bool)

(assert (=> d!1835787 (= ($colon$colon!1815 (exprs!5795 lt!2303864) (ite (or c!1035327 c!1035330) (regTwo!32334 r!7292) r!7292)) (Cons!63908 (ite (or c!1035327 c!1035330) (regTwo!32334 r!7292) r!7292) (exprs!5795 lt!2303864)))))

(assert (=> bm!456451 d!1835787))

(assert (=> b!5842374 d!1835655))

(declare-fun d!1835789 () Bool)

(assert (=> d!1835789 (= (isEmpty!35770 (exprs!5795 (h!70357 zl!343))) ((_ is Nil!63908) (exprs!5795 (h!70357 zl!343))))))

(assert (=> b!5842617 d!1835789))

(declare-fun b!5843157 () Bool)

(declare-fun e!3583923 () (InoxSet Context!10590))

(declare-fun e!3583925 () (InoxSet Context!10590))

(assert (=> b!5843157 (= e!3583923 e!3583925)))

(declare-fun c!1035450 () Bool)

(assert (=> b!5843157 (= c!1035450 ((_ is Cons!63908) (exprs!5795 (Context!10591 (t!377387 (exprs!5795 (Context!10591 (Cons!63908 r!7292 Nil!63908))))))))))

(declare-fun b!5843158 () Bool)

(assert (=> b!5843158 (= e!3583925 ((as const (Array Context!10590 Bool)) false))))

(declare-fun b!5843159 () Bool)

(declare-fun e!3583924 () Bool)

(assert (=> b!5843159 (= e!3583924 (nullable!5911 (h!70356 (exprs!5795 (Context!10591 (t!377387 (exprs!5795 (Context!10591 (Cons!63908 r!7292 Nil!63908)))))))))))

(declare-fun call!456532 () (InoxSet Context!10590))

(declare-fun b!5843160 () Bool)

(assert (=> b!5843160 (= e!3583923 ((_ map or) call!456532 (derivationStepZipperUp!1103 (Context!10591 (t!377387 (exprs!5795 (Context!10591 (t!377387 (exprs!5795 (Context!10591 (Cons!63908 r!7292 Nil!63908)))))))) (h!70358 s!2326))))))

(declare-fun b!5843161 () Bool)

(assert (=> b!5843161 (= e!3583925 call!456532)))

(declare-fun d!1835791 () Bool)

(declare-fun c!1035449 () Bool)

(assert (=> d!1835791 (= c!1035449 e!3583924)))

(declare-fun res!2461320 () Bool)

(assert (=> d!1835791 (=> (not res!2461320) (not e!3583924))))

(assert (=> d!1835791 (= res!2461320 ((_ is Cons!63908) (exprs!5795 (Context!10591 (t!377387 (exprs!5795 (Context!10591 (Cons!63908 r!7292 Nil!63908))))))))))

(assert (=> d!1835791 (= (derivationStepZipperUp!1103 (Context!10591 (t!377387 (exprs!5795 (Context!10591 (Cons!63908 r!7292 Nil!63908))))) (h!70358 s!2326)) e!3583923)))

(declare-fun bm!456527 () Bool)

(assert (=> bm!456527 (= call!456532 (derivationStepZipperDown!1177 (h!70356 (exprs!5795 (Context!10591 (t!377387 (exprs!5795 (Context!10591 (Cons!63908 r!7292 Nil!63908))))))) (Context!10591 (t!377387 (exprs!5795 (Context!10591 (t!377387 (exprs!5795 (Context!10591 (Cons!63908 r!7292 Nil!63908)))))))) (h!70358 s!2326)))))

(assert (= (and d!1835791 res!2461320) b!5843159))

(assert (= (and d!1835791 c!1035449) b!5843160))

(assert (= (and d!1835791 (not c!1035449)) b!5843157))

(assert (= (and b!5843157 c!1035450) b!5843161))

(assert (= (and b!5843157 (not c!1035450)) b!5843158))

(assert (= (or b!5843160 b!5843161) bm!456527))

(declare-fun m!6766470 () Bool)

(assert (=> b!5843159 m!6766470))

(declare-fun m!6766472 () Bool)

(assert (=> b!5843160 m!6766472))

(declare-fun m!6766474 () Bool)

(assert (=> bm!456527 m!6766474))

(assert (=> b!5842696 d!1835791))

(declare-fun d!1835793 () Bool)

(assert (=> d!1835793 (= (nullable!5911 (regOne!32335 r!7292)) (nullableFct!1897 (regOne!32335 r!7292)))))

(declare-fun bs!1376693 () Bool)

(assert (= bs!1376693 d!1835793))

(declare-fun m!6766476 () Bool)

(assert (=> bs!1376693 m!6766476))

(assert (=> b!5842814 d!1835793))

(declare-fun d!1835795 () Bool)

(assert (=> d!1835795 (= (isEmpty!35770 (t!377387 (exprs!5795 (h!70357 zl!343)))) ((_ is Nil!63908) (t!377387 (exprs!5795 (h!70357 zl!343)))))))

(assert (=> b!5842613 d!1835795))

(declare-fun d!1835797 () Bool)

(declare-fun res!2461321 () Bool)

(declare-fun e!3583931 () Bool)

(assert (=> d!1835797 (=> res!2461321 e!3583931)))

(assert (=> d!1835797 (= res!2461321 ((_ is ElementMatch!15911) (ite c!1035276 (regTwo!32335 r!7292) (regTwo!32334 r!7292))))))

(assert (=> d!1835797 (= (validRegex!7647 (ite c!1035276 (regTwo!32335 r!7292) (regTwo!32334 r!7292))) e!3583931)))

(declare-fun b!5843162 () Bool)

(declare-fun e!3583926 () Bool)

(declare-fun e!3583930 () Bool)

(assert (=> b!5843162 (= e!3583926 e!3583930)))

(declare-fun res!2461324 () Bool)

(assert (=> b!5843162 (= res!2461324 (not (nullable!5911 (reg!16240 (ite c!1035276 (regTwo!32335 r!7292) (regTwo!32334 r!7292))))))))

(assert (=> b!5843162 (=> (not res!2461324) (not e!3583930))))

(declare-fun b!5843163 () Bool)

(declare-fun e!3583927 () Bool)

(assert (=> b!5843163 (= e!3583926 e!3583927)))

(declare-fun c!1035452 () Bool)

(assert (=> b!5843163 (= c!1035452 ((_ is Union!15911) (ite c!1035276 (regTwo!32335 r!7292) (regTwo!32334 r!7292))))))

(declare-fun b!5843164 () Bool)

(declare-fun res!2461322 () Bool)

(declare-fun e!3583928 () Bool)

(assert (=> b!5843164 (=> res!2461322 e!3583928)))

(assert (=> b!5843164 (= res!2461322 (not ((_ is Concat!24756) (ite c!1035276 (regTwo!32335 r!7292) (regTwo!32334 r!7292)))))))

(assert (=> b!5843164 (= e!3583927 e!3583928)))

(declare-fun b!5843165 () Bool)

(declare-fun e!3583929 () Bool)

(assert (=> b!5843165 (= e!3583928 e!3583929)))

(declare-fun res!2461323 () Bool)

(assert (=> b!5843165 (=> (not res!2461323) (not e!3583929))))

(declare-fun call!456535 () Bool)

(assert (=> b!5843165 (= res!2461323 call!456535)))

(declare-fun call!456534 () Bool)

(declare-fun bm!456528 () Bool)

(assert (=> bm!456528 (= call!456534 (validRegex!7647 (ite c!1035452 (regTwo!32335 (ite c!1035276 (regTwo!32335 r!7292) (regTwo!32334 r!7292))) (regTwo!32334 (ite c!1035276 (regTwo!32335 r!7292) (regTwo!32334 r!7292))))))))

(declare-fun b!5843166 () Bool)

(declare-fun res!2461325 () Bool)

(declare-fun e!3583932 () Bool)

(assert (=> b!5843166 (=> (not res!2461325) (not e!3583932))))

(assert (=> b!5843166 (= res!2461325 call!456535)))

(assert (=> b!5843166 (= e!3583927 e!3583932)))

(declare-fun b!5843167 () Bool)

(assert (=> b!5843167 (= e!3583931 e!3583926)))

(declare-fun c!1035451 () Bool)

(assert (=> b!5843167 (= c!1035451 ((_ is Star!15911) (ite c!1035276 (regTwo!32335 r!7292) (regTwo!32334 r!7292))))))

(declare-fun bm!456529 () Bool)

(declare-fun call!456533 () Bool)

(assert (=> bm!456529 (= call!456533 (validRegex!7647 (ite c!1035451 (reg!16240 (ite c!1035276 (regTwo!32335 r!7292) (regTwo!32334 r!7292))) (ite c!1035452 (regOne!32335 (ite c!1035276 (regTwo!32335 r!7292) (regTwo!32334 r!7292))) (regOne!32334 (ite c!1035276 (regTwo!32335 r!7292) (regTwo!32334 r!7292)))))))))

(declare-fun bm!456530 () Bool)

(assert (=> bm!456530 (= call!456535 call!456533)))

(declare-fun b!5843168 () Bool)

(assert (=> b!5843168 (= e!3583932 call!456534)))

(declare-fun b!5843169 () Bool)

(assert (=> b!5843169 (= e!3583930 call!456533)))

(declare-fun b!5843170 () Bool)

(assert (=> b!5843170 (= e!3583929 call!456534)))

(assert (= (and d!1835797 (not res!2461321)) b!5843167))

(assert (= (and b!5843167 c!1035451) b!5843162))

(assert (= (and b!5843167 (not c!1035451)) b!5843163))

(assert (= (and b!5843162 res!2461324) b!5843169))

(assert (= (and b!5843163 c!1035452) b!5843166))

(assert (= (and b!5843163 (not c!1035452)) b!5843164))

(assert (= (and b!5843166 res!2461325) b!5843168))

(assert (= (and b!5843164 (not res!2461322)) b!5843165))

(assert (= (and b!5843165 res!2461323) b!5843170))

(assert (= (or b!5843168 b!5843170) bm!456528))

(assert (= (or b!5843166 b!5843165) bm!456530))

(assert (= (or b!5843169 bm!456530) bm!456529))

(declare-fun m!6766478 () Bool)

(assert (=> b!5843162 m!6766478))

(declare-fun m!6766480 () Bool)

(assert (=> bm!456528 m!6766480))

(declare-fun m!6766482 () Bool)

(assert (=> bm!456529 m!6766482))

(assert (=> bm!456409 d!1835797))

(assert (=> b!5842459 d!1835667))

(assert (=> bm!456459 d!1835701))

(declare-fun b!5843173 () Bool)

(declare-fun e!3583933 () Bool)

(declare-fun tp!1615682 () Bool)

(assert (=> b!5843173 (= e!3583933 tp!1615682)))

(declare-fun b!5843172 () Bool)

(declare-fun tp!1615680 () Bool)

(declare-fun tp!1615681 () Bool)

(assert (=> b!5843172 (= e!3583933 (and tp!1615680 tp!1615681))))

(assert (=> b!5842846 (= tp!1615644 e!3583933)))

(declare-fun b!5843174 () Bool)

(declare-fun tp!1615683 () Bool)

(declare-fun tp!1615679 () Bool)

(assert (=> b!5843174 (= e!3583933 (and tp!1615683 tp!1615679))))

(declare-fun b!5843171 () Bool)

(assert (=> b!5843171 (= e!3583933 tp_is_empty!41075)))

(assert (= (and b!5842846 ((_ is ElementMatch!15911) (reg!16240 (regTwo!32335 r!7292)))) b!5843171))

(assert (= (and b!5842846 ((_ is Concat!24756) (reg!16240 (regTwo!32335 r!7292)))) b!5843172))

(assert (= (and b!5842846 ((_ is Star!15911) (reg!16240 (regTwo!32335 r!7292)))) b!5843173))

(assert (= (and b!5842846 ((_ is Union!15911) (reg!16240 (regTwo!32335 r!7292)))) b!5843174))

(declare-fun b!5843177 () Bool)

(declare-fun e!3583934 () Bool)

(declare-fun tp!1615687 () Bool)

(assert (=> b!5843177 (= e!3583934 tp!1615687)))

(declare-fun b!5843176 () Bool)

(declare-fun tp!1615685 () Bool)

(declare-fun tp!1615686 () Bool)

(assert (=> b!5843176 (= e!3583934 (and tp!1615685 tp!1615686))))

(assert (=> b!5842845 (= tp!1615642 e!3583934)))

(declare-fun b!5843178 () Bool)

(declare-fun tp!1615688 () Bool)

(declare-fun tp!1615684 () Bool)

(assert (=> b!5843178 (= e!3583934 (and tp!1615688 tp!1615684))))

(declare-fun b!5843175 () Bool)

(assert (=> b!5843175 (= e!3583934 tp_is_empty!41075)))

(assert (= (and b!5842845 ((_ is ElementMatch!15911) (regOne!32334 (regTwo!32335 r!7292)))) b!5843175))

(assert (= (and b!5842845 ((_ is Concat!24756) (regOne!32334 (regTwo!32335 r!7292)))) b!5843176))

(assert (= (and b!5842845 ((_ is Star!15911) (regOne!32334 (regTwo!32335 r!7292)))) b!5843177))

(assert (= (and b!5842845 ((_ is Union!15911) (regOne!32334 (regTwo!32335 r!7292)))) b!5843178))

(declare-fun b!5843181 () Bool)

(declare-fun e!3583935 () Bool)

(declare-fun tp!1615692 () Bool)

(assert (=> b!5843181 (= e!3583935 tp!1615692)))

(declare-fun b!5843180 () Bool)

(declare-fun tp!1615690 () Bool)

(declare-fun tp!1615691 () Bool)

(assert (=> b!5843180 (= e!3583935 (and tp!1615690 tp!1615691))))

(assert (=> b!5842845 (= tp!1615643 e!3583935)))

(declare-fun b!5843182 () Bool)

(declare-fun tp!1615693 () Bool)

(declare-fun tp!1615689 () Bool)

(assert (=> b!5843182 (= e!3583935 (and tp!1615693 tp!1615689))))

(declare-fun b!5843179 () Bool)

(assert (=> b!5843179 (= e!3583935 tp_is_empty!41075)))

(assert (= (and b!5842845 ((_ is ElementMatch!15911) (regTwo!32334 (regTwo!32335 r!7292)))) b!5843179))

(assert (= (and b!5842845 ((_ is Concat!24756) (regTwo!32334 (regTwo!32335 r!7292)))) b!5843180))

(assert (= (and b!5842845 ((_ is Star!15911) (regTwo!32334 (regTwo!32335 r!7292)))) b!5843181))

(assert (= (and b!5842845 ((_ is Union!15911) (regTwo!32334 (regTwo!32335 r!7292)))) b!5843182))

(declare-fun b!5843185 () Bool)

(declare-fun e!3583936 () Bool)

(declare-fun tp!1615697 () Bool)

(assert (=> b!5843185 (= e!3583936 tp!1615697)))

(declare-fun b!5843184 () Bool)

(declare-fun tp!1615695 () Bool)

(declare-fun tp!1615696 () Bool)

(assert (=> b!5843184 (= e!3583936 (and tp!1615695 tp!1615696))))

(assert (=> b!5842854 (= tp!1615650 e!3583936)))

(declare-fun b!5843186 () Bool)

(declare-fun tp!1615698 () Bool)

(declare-fun tp!1615694 () Bool)

(assert (=> b!5843186 (= e!3583936 (and tp!1615698 tp!1615694))))

(declare-fun b!5843183 () Bool)

(assert (=> b!5843183 (= e!3583936 tp_is_empty!41075)))

(assert (= (and b!5842854 ((_ is ElementMatch!15911) (regOne!32334 (regOne!32334 r!7292)))) b!5843183))

(assert (= (and b!5842854 ((_ is Concat!24756) (regOne!32334 (regOne!32334 r!7292)))) b!5843184))

(assert (= (and b!5842854 ((_ is Star!15911) (regOne!32334 (regOne!32334 r!7292)))) b!5843185))

(assert (= (and b!5842854 ((_ is Union!15911) (regOne!32334 (regOne!32334 r!7292)))) b!5843186))

(declare-fun b!5843189 () Bool)

(declare-fun e!3583937 () Bool)

(declare-fun tp!1615702 () Bool)

(assert (=> b!5843189 (= e!3583937 tp!1615702)))

(declare-fun b!5843188 () Bool)

(declare-fun tp!1615700 () Bool)

(declare-fun tp!1615701 () Bool)

(assert (=> b!5843188 (= e!3583937 (and tp!1615700 tp!1615701))))

(assert (=> b!5842854 (= tp!1615651 e!3583937)))

(declare-fun b!5843190 () Bool)

(declare-fun tp!1615703 () Bool)

(declare-fun tp!1615699 () Bool)

(assert (=> b!5843190 (= e!3583937 (and tp!1615703 tp!1615699))))

(declare-fun b!5843187 () Bool)

(assert (=> b!5843187 (= e!3583937 tp_is_empty!41075)))

(assert (= (and b!5842854 ((_ is ElementMatch!15911) (regTwo!32334 (regOne!32334 r!7292)))) b!5843187))

(assert (= (and b!5842854 ((_ is Concat!24756) (regTwo!32334 (regOne!32334 r!7292)))) b!5843188))

(assert (= (and b!5842854 ((_ is Star!15911) (regTwo!32334 (regOne!32334 r!7292)))) b!5843189))

(assert (= (and b!5842854 ((_ is Union!15911) (regTwo!32334 (regOne!32334 r!7292)))) b!5843190))

(declare-fun b!5843193 () Bool)

(declare-fun e!3583938 () Bool)

(declare-fun tp!1615707 () Bool)

(assert (=> b!5843193 (= e!3583938 tp!1615707)))

(declare-fun b!5843192 () Bool)

(declare-fun tp!1615705 () Bool)

(declare-fun tp!1615706 () Bool)

(assert (=> b!5843192 (= e!3583938 (and tp!1615705 tp!1615706))))

(assert (=> b!5842832 (= tp!1615626 e!3583938)))

(declare-fun b!5843194 () Bool)

(declare-fun tp!1615708 () Bool)

(declare-fun tp!1615704 () Bool)

(assert (=> b!5843194 (= e!3583938 (and tp!1615708 tp!1615704))))

(declare-fun b!5843191 () Bool)

(assert (=> b!5843191 (= e!3583938 tp_is_empty!41075)))

(assert (= (and b!5842832 ((_ is ElementMatch!15911) (regOne!32334 (reg!16240 r!7292)))) b!5843191))

(assert (= (and b!5842832 ((_ is Concat!24756) (regOne!32334 (reg!16240 r!7292)))) b!5843192))

(assert (= (and b!5842832 ((_ is Star!15911) (regOne!32334 (reg!16240 r!7292)))) b!5843193))

(assert (= (and b!5842832 ((_ is Union!15911) (regOne!32334 (reg!16240 r!7292)))) b!5843194))

(declare-fun b!5843197 () Bool)

(declare-fun e!3583939 () Bool)

(declare-fun tp!1615712 () Bool)

(assert (=> b!5843197 (= e!3583939 tp!1615712)))

(declare-fun b!5843196 () Bool)

(declare-fun tp!1615710 () Bool)

(declare-fun tp!1615711 () Bool)

(assert (=> b!5843196 (= e!3583939 (and tp!1615710 tp!1615711))))

(assert (=> b!5842832 (= tp!1615627 e!3583939)))

(declare-fun b!5843198 () Bool)

(declare-fun tp!1615713 () Bool)

(declare-fun tp!1615709 () Bool)

(assert (=> b!5843198 (= e!3583939 (and tp!1615713 tp!1615709))))

(declare-fun b!5843195 () Bool)

(assert (=> b!5843195 (= e!3583939 tp_is_empty!41075)))

(assert (= (and b!5842832 ((_ is ElementMatch!15911) (regTwo!32334 (reg!16240 r!7292)))) b!5843195))

(assert (= (and b!5842832 ((_ is Concat!24756) (regTwo!32334 (reg!16240 r!7292)))) b!5843196))

(assert (= (and b!5842832 ((_ is Star!15911) (regTwo!32334 (reg!16240 r!7292)))) b!5843197))

(assert (= (and b!5842832 ((_ is Union!15911) (regTwo!32334 (reg!16240 r!7292)))) b!5843198))

(declare-fun b!5843201 () Bool)

(declare-fun e!3583940 () Bool)

(declare-fun tp!1615717 () Bool)

(assert (=> b!5843201 (= e!3583940 tp!1615717)))

(declare-fun b!5843200 () Bool)

(declare-fun tp!1615715 () Bool)

(declare-fun tp!1615716 () Bool)

(assert (=> b!5843200 (= e!3583940 (and tp!1615715 tp!1615716))))

(assert (=> b!5842839 (= tp!1615634 e!3583940)))

(declare-fun b!5843202 () Bool)

(declare-fun tp!1615718 () Bool)

(declare-fun tp!1615714 () Bool)

(assert (=> b!5843202 (= e!3583940 (and tp!1615718 tp!1615714))))

(declare-fun b!5843199 () Bool)

(assert (=> b!5843199 (= e!3583940 tp_is_empty!41075)))

(assert (= (and b!5842839 ((_ is ElementMatch!15911) (h!70356 (exprs!5795 (h!70357 zl!343))))) b!5843199))

(assert (= (and b!5842839 ((_ is Concat!24756) (h!70356 (exprs!5795 (h!70357 zl!343))))) b!5843200))

(assert (= (and b!5842839 ((_ is Star!15911) (h!70356 (exprs!5795 (h!70357 zl!343))))) b!5843201))

(assert (= (and b!5842839 ((_ is Union!15911) (h!70356 (exprs!5795 (h!70357 zl!343))))) b!5843202))

(declare-fun b!5843203 () Bool)

(declare-fun e!3583941 () Bool)

(declare-fun tp!1615719 () Bool)

(declare-fun tp!1615720 () Bool)

(assert (=> b!5843203 (= e!3583941 (and tp!1615719 tp!1615720))))

(assert (=> b!5842839 (= tp!1615635 e!3583941)))

(assert (= (and b!5842839 ((_ is Cons!63908) (t!377387 (exprs!5795 (h!70357 zl!343))))) b!5843203))

(declare-fun b!5843206 () Bool)

(declare-fun e!3583942 () Bool)

(declare-fun tp!1615724 () Bool)

(assert (=> b!5843206 (= e!3583942 tp!1615724)))

(declare-fun b!5843205 () Bool)

(declare-fun tp!1615722 () Bool)

(declare-fun tp!1615723 () Bool)

(assert (=> b!5843205 (= e!3583942 (and tp!1615722 tp!1615723))))

(assert (=> b!5842847 (= tp!1615645 e!3583942)))

(declare-fun b!5843207 () Bool)

(declare-fun tp!1615725 () Bool)

(declare-fun tp!1615721 () Bool)

(assert (=> b!5843207 (= e!3583942 (and tp!1615725 tp!1615721))))

(declare-fun b!5843204 () Bool)

(assert (=> b!5843204 (= e!3583942 tp_is_empty!41075)))

(assert (= (and b!5842847 ((_ is ElementMatch!15911) (regOne!32335 (regTwo!32335 r!7292)))) b!5843204))

(assert (= (and b!5842847 ((_ is Concat!24756) (regOne!32335 (regTwo!32335 r!7292)))) b!5843205))

(assert (= (and b!5842847 ((_ is Star!15911) (regOne!32335 (regTwo!32335 r!7292)))) b!5843206))

(assert (= (and b!5842847 ((_ is Union!15911) (regOne!32335 (regTwo!32335 r!7292)))) b!5843207))

(declare-fun b!5843210 () Bool)

(declare-fun e!3583943 () Bool)

(declare-fun tp!1615729 () Bool)

(assert (=> b!5843210 (= e!3583943 tp!1615729)))

(declare-fun b!5843209 () Bool)

(declare-fun tp!1615727 () Bool)

(declare-fun tp!1615728 () Bool)

(assert (=> b!5843209 (= e!3583943 (and tp!1615727 tp!1615728))))

(assert (=> b!5842847 (= tp!1615641 e!3583943)))

(declare-fun b!5843211 () Bool)

(declare-fun tp!1615730 () Bool)

(declare-fun tp!1615726 () Bool)

(assert (=> b!5843211 (= e!3583943 (and tp!1615730 tp!1615726))))

(declare-fun b!5843208 () Bool)

(assert (=> b!5843208 (= e!3583943 tp_is_empty!41075)))

(assert (= (and b!5842847 ((_ is ElementMatch!15911) (regTwo!32335 (regTwo!32335 r!7292)))) b!5843208))

(assert (= (and b!5842847 ((_ is Concat!24756) (regTwo!32335 (regTwo!32335 r!7292)))) b!5843209))

(assert (= (and b!5842847 ((_ is Star!15911) (regTwo!32335 (regTwo!32335 r!7292)))) b!5843210))

(assert (= (and b!5842847 ((_ is Union!15911) (regTwo!32335 (regTwo!32335 r!7292)))) b!5843211))

(declare-fun b!5843214 () Bool)

(declare-fun e!3583944 () Bool)

(declare-fun tp!1615734 () Bool)

(assert (=> b!5843214 (= e!3583944 tp!1615734)))

(declare-fun b!5843213 () Bool)

(declare-fun tp!1615732 () Bool)

(declare-fun tp!1615733 () Bool)

(assert (=> b!5843213 (= e!3583944 (and tp!1615732 tp!1615733))))

(assert (=> b!5842856 (= tp!1615653 e!3583944)))

(declare-fun b!5843215 () Bool)

(declare-fun tp!1615735 () Bool)

(declare-fun tp!1615731 () Bool)

(assert (=> b!5843215 (= e!3583944 (and tp!1615735 tp!1615731))))

(declare-fun b!5843212 () Bool)

(assert (=> b!5843212 (= e!3583944 tp_is_empty!41075)))

(assert (= (and b!5842856 ((_ is ElementMatch!15911) (regOne!32335 (regOne!32334 r!7292)))) b!5843212))

(assert (= (and b!5842856 ((_ is Concat!24756) (regOne!32335 (regOne!32334 r!7292)))) b!5843213))

(assert (= (and b!5842856 ((_ is Star!15911) (regOne!32335 (regOne!32334 r!7292)))) b!5843214))

(assert (= (and b!5842856 ((_ is Union!15911) (regOne!32335 (regOne!32334 r!7292)))) b!5843215))

(declare-fun b!5843218 () Bool)

(declare-fun e!3583945 () Bool)

(declare-fun tp!1615739 () Bool)

(assert (=> b!5843218 (= e!3583945 tp!1615739)))

(declare-fun b!5843217 () Bool)

(declare-fun tp!1615737 () Bool)

(declare-fun tp!1615738 () Bool)

(assert (=> b!5843217 (= e!3583945 (and tp!1615737 tp!1615738))))

(assert (=> b!5842856 (= tp!1615649 e!3583945)))

(declare-fun b!5843219 () Bool)

(declare-fun tp!1615740 () Bool)

(declare-fun tp!1615736 () Bool)

(assert (=> b!5843219 (= e!3583945 (and tp!1615740 tp!1615736))))

(declare-fun b!5843216 () Bool)

(assert (=> b!5843216 (= e!3583945 tp_is_empty!41075)))

(assert (= (and b!5842856 ((_ is ElementMatch!15911) (regTwo!32335 (regOne!32334 r!7292)))) b!5843216))

(assert (= (and b!5842856 ((_ is Concat!24756) (regTwo!32335 (regOne!32334 r!7292)))) b!5843217))

(assert (= (and b!5842856 ((_ is Star!15911) (regTwo!32335 (regOne!32334 r!7292)))) b!5843218))

(assert (= (and b!5842856 ((_ is Union!15911) (regTwo!32335 (regOne!32334 r!7292)))) b!5843219))

(declare-fun b!5843222 () Bool)

(declare-fun e!3583946 () Bool)

(declare-fun tp!1615744 () Bool)

(assert (=> b!5843222 (= e!3583946 tp!1615744)))

(declare-fun b!5843221 () Bool)

(declare-fun tp!1615742 () Bool)

(declare-fun tp!1615743 () Bool)

(assert (=> b!5843221 (= e!3583946 (and tp!1615742 tp!1615743))))

(assert (=> b!5842834 (= tp!1615629 e!3583946)))

(declare-fun b!5843223 () Bool)

(declare-fun tp!1615745 () Bool)

(declare-fun tp!1615741 () Bool)

(assert (=> b!5843223 (= e!3583946 (and tp!1615745 tp!1615741))))

(declare-fun b!5843220 () Bool)

(assert (=> b!5843220 (= e!3583946 tp_is_empty!41075)))

(assert (= (and b!5842834 ((_ is ElementMatch!15911) (regOne!32335 (reg!16240 r!7292)))) b!5843220))

(assert (= (and b!5842834 ((_ is Concat!24756) (regOne!32335 (reg!16240 r!7292)))) b!5843221))

(assert (= (and b!5842834 ((_ is Star!15911) (regOne!32335 (reg!16240 r!7292)))) b!5843222))

(assert (= (and b!5842834 ((_ is Union!15911) (regOne!32335 (reg!16240 r!7292)))) b!5843223))

(declare-fun b!5843226 () Bool)

(declare-fun e!3583947 () Bool)

(declare-fun tp!1615749 () Bool)

(assert (=> b!5843226 (= e!3583947 tp!1615749)))

(declare-fun b!5843225 () Bool)

(declare-fun tp!1615747 () Bool)

(declare-fun tp!1615748 () Bool)

(assert (=> b!5843225 (= e!3583947 (and tp!1615747 tp!1615748))))

(assert (=> b!5842834 (= tp!1615625 e!3583947)))

(declare-fun b!5843227 () Bool)

(declare-fun tp!1615750 () Bool)

(declare-fun tp!1615746 () Bool)

(assert (=> b!5843227 (= e!3583947 (and tp!1615750 tp!1615746))))

(declare-fun b!5843224 () Bool)

(assert (=> b!5843224 (= e!3583947 tp_is_empty!41075)))

(assert (= (and b!5842834 ((_ is ElementMatch!15911) (regTwo!32335 (reg!16240 r!7292)))) b!5843224))

(assert (= (and b!5842834 ((_ is Concat!24756) (regTwo!32335 (reg!16240 r!7292)))) b!5843225))

(assert (= (and b!5842834 ((_ is Star!15911) (regTwo!32335 (reg!16240 r!7292)))) b!5843226))

(assert (= (and b!5842834 ((_ is Union!15911) (regTwo!32335 (reg!16240 r!7292)))) b!5843227))

(declare-fun b!5843230 () Bool)

(declare-fun e!3583948 () Bool)

(declare-fun tp!1615754 () Bool)

(assert (=> b!5843230 (= e!3583948 tp!1615754)))

(declare-fun b!5843229 () Bool)

(declare-fun tp!1615752 () Bool)

(declare-fun tp!1615753 () Bool)

(assert (=> b!5843229 (= e!3583948 (and tp!1615752 tp!1615753))))

(assert (=> b!5842855 (= tp!1615652 e!3583948)))

(declare-fun b!5843231 () Bool)

(declare-fun tp!1615755 () Bool)

(declare-fun tp!1615751 () Bool)

(assert (=> b!5843231 (= e!3583948 (and tp!1615755 tp!1615751))))

(declare-fun b!5843228 () Bool)

(assert (=> b!5843228 (= e!3583948 tp_is_empty!41075)))

(assert (= (and b!5842855 ((_ is ElementMatch!15911) (reg!16240 (regOne!32334 r!7292)))) b!5843228))

(assert (= (and b!5842855 ((_ is Concat!24756) (reg!16240 (regOne!32334 r!7292)))) b!5843229))

(assert (= (and b!5842855 ((_ is Star!15911) (reg!16240 (regOne!32334 r!7292)))) b!5843230))

(assert (= (and b!5842855 ((_ is Union!15911) (reg!16240 (regOne!32334 r!7292)))) b!5843231))

(declare-fun b!5843234 () Bool)

(declare-fun e!3583949 () Bool)

(declare-fun tp!1615759 () Bool)

(assert (=> b!5843234 (= e!3583949 tp!1615759)))

(declare-fun b!5843233 () Bool)

(declare-fun tp!1615757 () Bool)

(declare-fun tp!1615758 () Bool)

(assert (=> b!5843233 (= e!3583949 (and tp!1615757 tp!1615758))))

(assert (=> b!5842833 (= tp!1615628 e!3583949)))

(declare-fun b!5843235 () Bool)

(declare-fun tp!1615760 () Bool)

(declare-fun tp!1615756 () Bool)

(assert (=> b!5843235 (= e!3583949 (and tp!1615760 tp!1615756))))

(declare-fun b!5843232 () Bool)

(assert (=> b!5843232 (= e!3583949 tp_is_empty!41075)))

(assert (= (and b!5842833 ((_ is ElementMatch!15911) (reg!16240 (reg!16240 r!7292)))) b!5843232))

(assert (= (and b!5842833 ((_ is Concat!24756) (reg!16240 (reg!16240 r!7292)))) b!5843233))

(assert (= (and b!5842833 ((_ is Star!15911) (reg!16240 (reg!16240 r!7292)))) b!5843234))

(assert (= (and b!5842833 ((_ is Union!15911) (reg!16240 (reg!16240 r!7292)))) b!5843235))

(declare-fun b!5843238 () Bool)

(declare-fun e!3583950 () Bool)

(declare-fun tp!1615764 () Bool)

(assert (=> b!5843238 (= e!3583950 tp!1615764)))

(declare-fun b!5843237 () Bool)

(declare-fun tp!1615762 () Bool)

(declare-fun tp!1615763 () Bool)

(assert (=> b!5843237 (= e!3583950 (and tp!1615762 tp!1615763))))

(assert (=> b!5842841 (= tp!1615637 e!3583950)))

(declare-fun b!5843239 () Bool)

(declare-fun tp!1615765 () Bool)

(declare-fun tp!1615761 () Bool)

(assert (=> b!5843239 (= e!3583950 (and tp!1615765 tp!1615761))))

(declare-fun b!5843236 () Bool)

(assert (=> b!5843236 (= e!3583950 tp_is_empty!41075)))

(assert (= (and b!5842841 ((_ is ElementMatch!15911) (regOne!32334 (regOne!32335 r!7292)))) b!5843236))

(assert (= (and b!5842841 ((_ is Concat!24756) (regOne!32334 (regOne!32335 r!7292)))) b!5843237))

(assert (= (and b!5842841 ((_ is Star!15911) (regOne!32334 (regOne!32335 r!7292)))) b!5843238))

(assert (= (and b!5842841 ((_ is Union!15911) (regOne!32334 (regOne!32335 r!7292)))) b!5843239))

(declare-fun b!5843242 () Bool)

(declare-fun e!3583951 () Bool)

(declare-fun tp!1615769 () Bool)

(assert (=> b!5843242 (= e!3583951 tp!1615769)))

(declare-fun b!5843241 () Bool)

(declare-fun tp!1615767 () Bool)

(declare-fun tp!1615768 () Bool)

(assert (=> b!5843241 (= e!3583951 (and tp!1615767 tp!1615768))))

(assert (=> b!5842841 (= tp!1615638 e!3583951)))

(declare-fun b!5843243 () Bool)

(declare-fun tp!1615770 () Bool)

(declare-fun tp!1615766 () Bool)

(assert (=> b!5843243 (= e!3583951 (and tp!1615770 tp!1615766))))

(declare-fun b!5843240 () Bool)

(assert (=> b!5843240 (= e!3583951 tp_is_empty!41075)))

(assert (= (and b!5842841 ((_ is ElementMatch!15911) (regTwo!32334 (regOne!32335 r!7292)))) b!5843240))

(assert (= (and b!5842841 ((_ is Concat!24756) (regTwo!32334 (regOne!32335 r!7292)))) b!5843241))

(assert (= (and b!5842841 ((_ is Star!15911) (regTwo!32334 (regOne!32335 r!7292)))) b!5843242))

(assert (= (and b!5842841 ((_ is Union!15911) (regTwo!32334 (regOne!32335 r!7292)))) b!5843243))

(declare-fun b!5843246 () Bool)

(declare-fun e!3583952 () Bool)

(declare-fun tp!1615774 () Bool)

(assert (=> b!5843246 (= e!3583952 tp!1615774)))

(declare-fun b!5843245 () Bool)

(declare-fun tp!1615772 () Bool)

(declare-fun tp!1615773 () Bool)

(assert (=> b!5843245 (= e!3583952 (and tp!1615772 tp!1615773))))

(assert (=> b!5842859 (= tp!1615657 e!3583952)))

(declare-fun b!5843247 () Bool)

(declare-fun tp!1615775 () Bool)

(declare-fun tp!1615771 () Bool)

(assert (=> b!5843247 (= e!3583952 (and tp!1615775 tp!1615771))))

(declare-fun b!5843244 () Bool)

(assert (=> b!5843244 (= e!3583952 tp_is_empty!41075)))

(assert (= (and b!5842859 ((_ is ElementMatch!15911) (reg!16240 (regTwo!32334 r!7292)))) b!5843244))

(assert (= (and b!5842859 ((_ is Concat!24756) (reg!16240 (regTwo!32334 r!7292)))) b!5843245))

(assert (= (and b!5842859 ((_ is Star!15911) (reg!16240 (regTwo!32334 r!7292)))) b!5843246))

(assert (= (and b!5842859 ((_ is Union!15911) (reg!16240 (regTwo!32334 r!7292)))) b!5843247))

(declare-fun b!5843248 () Bool)

(declare-fun e!3583953 () Bool)

(declare-fun tp!1615776 () Bool)

(declare-fun tp!1615777 () Bool)

(assert (=> b!5843248 (= e!3583953 (and tp!1615776 tp!1615777))))

(assert (=> b!5842873 (= tp!1615670 e!3583953)))

(assert (= (and b!5842873 ((_ is Cons!63908) (exprs!5795 setElem!39592))) b!5843248))

(declare-fun b!5843251 () Bool)

(declare-fun e!3583954 () Bool)

(declare-fun tp!1615781 () Bool)

(assert (=> b!5843251 (= e!3583954 tp!1615781)))

(declare-fun b!5843250 () Bool)

(declare-fun tp!1615779 () Bool)

(declare-fun tp!1615780 () Bool)

(assert (=> b!5843250 (= e!3583954 (and tp!1615779 tp!1615780))))

(assert (=> b!5842858 (= tp!1615655 e!3583954)))

(declare-fun b!5843252 () Bool)

(declare-fun tp!1615782 () Bool)

(declare-fun tp!1615778 () Bool)

(assert (=> b!5843252 (= e!3583954 (and tp!1615782 tp!1615778))))

(declare-fun b!5843249 () Bool)

(assert (=> b!5843249 (= e!3583954 tp_is_empty!41075)))

(assert (= (and b!5842858 ((_ is ElementMatch!15911) (regOne!32334 (regTwo!32334 r!7292)))) b!5843249))

(assert (= (and b!5842858 ((_ is Concat!24756) (regOne!32334 (regTwo!32334 r!7292)))) b!5843250))

(assert (= (and b!5842858 ((_ is Star!15911) (regOne!32334 (regTwo!32334 r!7292)))) b!5843251))

(assert (= (and b!5842858 ((_ is Union!15911) (regOne!32334 (regTwo!32334 r!7292)))) b!5843252))

(declare-fun b!5843255 () Bool)

(declare-fun e!3583955 () Bool)

(declare-fun tp!1615786 () Bool)

(assert (=> b!5843255 (= e!3583955 tp!1615786)))

(declare-fun b!5843254 () Bool)

(declare-fun tp!1615784 () Bool)

(declare-fun tp!1615785 () Bool)

(assert (=> b!5843254 (= e!3583955 (and tp!1615784 tp!1615785))))

(assert (=> b!5842858 (= tp!1615656 e!3583955)))

(declare-fun b!5843256 () Bool)

(declare-fun tp!1615787 () Bool)

(declare-fun tp!1615783 () Bool)

(assert (=> b!5843256 (= e!3583955 (and tp!1615787 tp!1615783))))

(declare-fun b!5843253 () Bool)

(assert (=> b!5843253 (= e!3583955 tp_is_empty!41075)))

(assert (= (and b!5842858 ((_ is ElementMatch!15911) (regTwo!32334 (regTwo!32334 r!7292)))) b!5843253))

(assert (= (and b!5842858 ((_ is Concat!24756) (regTwo!32334 (regTwo!32334 r!7292)))) b!5843254))

(assert (= (and b!5842858 ((_ is Star!15911) (regTwo!32334 (regTwo!32334 r!7292)))) b!5843255))

(assert (= (and b!5842858 ((_ is Union!15911) (regTwo!32334 (regTwo!32334 r!7292)))) b!5843256))

(declare-fun b!5843259 () Bool)

(declare-fun e!3583956 () Bool)

(declare-fun tp!1615791 () Bool)

(assert (=> b!5843259 (= e!3583956 tp!1615791)))

(declare-fun b!5843258 () Bool)

(declare-fun tp!1615789 () Bool)

(declare-fun tp!1615790 () Bool)

(assert (=> b!5843258 (= e!3583956 (and tp!1615789 tp!1615790))))

(assert (=> b!5842843 (= tp!1615640 e!3583956)))

(declare-fun b!5843260 () Bool)

(declare-fun tp!1615792 () Bool)

(declare-fun tp!1615788 () Bool)

(assert (=> b!5843260 (= e!3583956 (and tp!1615792 tp!1615788))))

(declare-fun b!5843257 () Bool)

(assert (=> b!5843257 (= e!3583956 tp_is_empty!41075)))

(assert (= (and b!5842843 ((_ is ElementMatch!15911) (regOne!32335 (regOne!32335 r!7292)))) b!5843257))

(assert (= (and b!5842843 ((_ is Concat!24756) (regOne!32335 (regOne!32335 r!7292)))) b!5843258))

(assert (= (and b!5842843 ((_ is Star!15911) (regOne!32335 (regOne!32335 r!7292)))) b!5843259))

(assert (= (and b!5842843 ((_ is Union!15911) (regOne!32335 (regOne!32335 r!7292)))) b!5843260))

(declare-fun b!5843263 () Bool)

(declare-fun e!3583957 () Bool)

(declare-fun tp!1615796 () Bool)

(assert (=> b!5843263 (= e!3583957 tp!1615796)))

(declare-fun b!5843262 () Bool)

(declare-fun tp!1615794 () Bool)

(declare-fun tp!1615795 () Bool)

(assert (=> b!5843262 (= e!3583957 (and tp!1615794 tp!1615795))))

(assert (=> b!5842843 (= tp!1615636 e!3583957)))

(declare-fun b!5843264 () Bool)

(declare-fun tp!1615797 () Bool)

(declare-fun tp!1615793 () Bool)

(assert (=> b!5843264 (= e!3583957 (and tp!1615797 tp!1615793))))

(declare-fun b!5843261 () Bool)

(assert (=> b!5843261 (= e!3583957 tp_is_empty!41075)))

(assert (= (and b!5842843 ((_ is ElementMatch!15911) (regTwo!32335 (regOne!32335 r!7292)))) b!5843261))

(assert (= (and b!5842843 ((_ is Concat!24756) (regTwo!32335 (regOne!32335 r!7292)))) b!5843262))

(assert (= (and b!5842843 ((_ is Star!15911) (regTwo!32335 (regOne!32335 r!7292)))) b!5843263))

(assert (= (and b!5842843 ((_ is Union!15911) (regTwo!32335 (regOne!32335 r!7292)))) b!5843264))

(declare-fun condSetEmpty!39593 () Bool)

(assert (=> setNonEmpty!39592 (= condSetEmpty!39593 (= setRest!39592 ((as const (Array Context!10590 Bool)) false)))))

(declare-fun setRes!39593 () Bool)

(assert (=> setNonEmpty!39592 (= tp!1615669 setRes!39593)))

(declare-fun setIsEmpty!39593 () Bool)

(assert (=> setIsEmpty!39593 setRes!39593))

(declare-fun e!3583958 () Bool)

(declare-fun tp!1615798 () Bool)

(declare-fun setNonEmpty!39593 () Bool)

(declare-fun setElem!39593 () Context!10590)

(assert (=> setNonEmpty!39593 (= setRes!39593 (and tp!1615798 (inv!83024 setElem!39593) e!3583958))))

(declare-fun setRest!39593 () (InoxSet Context!10590))

(assert (=> setNonEmpty!39593 (= setRest!39592 ((_ map or) (store ((as const (Array Context!10590 Bool)) false) setElem!39593 true) setRest!39593))))

(declare-fun b!5843265 () Bool)

(declare-fun tp!1615799 () Bool)

(assert (=> b!5843265 (= e!3583958 tp!1615799)))

(assert (= (and setNonEmpty!39592 condSetEmpty!39593) setIsEmpty!39593))

(assert (= (and setNonEmpty!39592 (not condSetEmpty!39593)) setNonEmpty!39593))

(assert (= setNonEmpty!39593 b!5843265))

(declare-fun m!6766484 () Bool)

(assert (=> setNonEmpty!39593 m!6766484))

(declare-fun b!5843268 () Bool)

(declare-fun e!3583959 () Bool)

(declare-fun tp!1615803 () Bool)

(assert (=> b!5843268 (= e!3583959 tp!1615803)))

(declare-fun b!5843267 () Bool)

(declare-fun tp!1615801 () Bool)

(declare-fun tp!1615802 () Bool)

(assert (=> b!5843267 (= e!3583959 (and tp!1615801 tp!1615802))))

(assert (=> b!5842842 (= tp!1615639 e!3583959)))

(declare-fun b!5843269 () Bool)

(declare-fun tp!1615804 () Bool)

(declare-fun tp!1615800 () Bool)

(assert (=> b!5843269 (= e!3583959 (and tp!1615804 tp!1615800))))

(declare-fun b!5843266 () Bool)

(assert (=> b!5843266 (= e!3583959 tp_is_empty!41075)))

(assert (= (and b!5842842 ((_ is ElementMatch!15911) (reg!16240 (regOne!32335 r!7292)))) b!5843266))

(assert (= (and b!5842842 ((_ is Concat!24756) (reg!16240 (regOne!32335 r!7292)))) b!5843267))

(assert (= (and b!5842842 ((_ is Star!15911) (reg!16240 (regOne!32335 r!7292)))) b!5843268))

(assert (= (and b!5842842 ((_ is Union!15911) (reg!16240 (regOne!32335 r!7292)))) b!5843269))

(declare-fun b!5843271 () Bool)

(declare-fun e!3583961 () Bool)

(declare-fun tp!1615805 () Bool)

(assert (=> b!5843271 (= e!3583961 tp!1615805)))

(declare-fun tp!1615806 () Bool)

(declare-fun e!3583960 () Bool)

(declare-fun b!5843270 () Bool)

(assert (=> b!5843270 (= e!3583960 (and (inv!83024 (h!70357 (t!377388 (t!377388 zl!343)))) e!3583961 tp!1615806))))

(assert (=> b!5842867 (= tp!1615664 e!3583960)))

(assert (= b!5843270 b!5843271))

(assert (= (and b!5842867 ((_ is Cons!63909) (t!377388 (t!377388 zl!343)))) b!5843270))

(declare-fun m!6766486 () Bool)

(assert (=> b!5843270 m!6766486))

(declare-fun b!5843272 () Bool)

(declare-fun e!3583962 () Bool)

(declare-fun tp!1615807 () Bool)

(assert (=> b!5843272 (= e!3583962 (and tp_is_empty!41075 tp!1615807))))

(assert (=> b!5842852 (= tp!1615648 e!3583962)))

(assert (= (and b!5842852 ((_ is Cons!63910) (t!377389 (t!377389 s!2326)))) b!5843272))

(declare-fun b!5843275 () Bool)

(declare-fun e!3583963 () Bool)

(declare-fun tp!1615811 () Bool)

(assert (=> b!5843275 (= e!3583963 tp!1615811)))

(declare-fun b!5843274 () Bool)

(declare-fun tp!1615809 () Bool)

(declare-fun tp!1615810 () Bool)

(assert (=> b!5843274 (= e!3583963 (and tp!1615809 tp!1615810))))

(assert (=> b!5842860 (= tp!1615658 e!3583963)))

(declare-fun b!5843276 () Bool)

(declare-fun tp!1615812 () Bool)

(declare-fun tp!1615808 () Bool)

(assert (=> b!5843276 (= e!3583963 (and tp!1615812 tp!1615808))))

(declare-fun b!5843273 () Bool)

(assert (=> b!5843273 (= e!3583963 tp_is_empty!41075)))

(assert (= (and b!5842860 ((_ is ElementMatch!15911) (regOne!32335 (regTwo!32334 r!7292)))) b!5843273))

(assert (= (and b!5842860 ((_ is Concat!24756) (regOne!32335 (regTwo!32334 r!7292)))) b!5843274))

(assert (= (and b!5842860 ((_ is Star!15911) (regOne!32335 (regTwo!32334 r!7292)))) b!5843275))

(assert (= (and b!5842860 ((_ is Union!15911) (regOne!32335 (regTwo!32334 r!7292)))) b!5843276))

(declare-fun b!5843279 () Bool)

(declare-fun e!3583964 () Bool)

(declare-fun tp!1615816 () Bool)

(assert (=> b!5843279 (= e!3583964 tp!1615816)))

(declare-fun b!5843278 () Bool)

(declare-fun tp!1615814 () Bool)

(declare-fun tp!1615815 () Bool)

(assert (=> b!5843278 (= e!3583964 (and tp!1615814 tp!1615815))))

(assert (=> b!5842860 (= tp!1615654 e!3583964)))

(declare-fun b!5843280 () Bool)

(declare-fun tp!1615817 () Bool)

(declare-fun tp!1615813 () Bool)

(assert (=> b!5843280 (= e!3583964 (and tp!1615817 tp!1615813))))

(declare-fun b!5843277 () Bool)

(assert (=> b!5843277 (= e!3583964 tp_is_empty!41075)))

(assert (= (and b!5842860 ((_ is ElementMatch!15911) (regTwo!32335 (regTwo!32334 r!7292)))) b!5843277))

(assert (= (and b!5842860 ((_ is Concat!24756) (regTwo!32335 (regTwo!32334 r!7292)))) b!5843278))

(assert (= (and b!5842860 ((_ is Star!15911) (regTwo!32335 (regTwo!32334 r!7292)))) b!5843279))

(assert (= (and b!5842860 ((_ is Union!15911) (regTwo!32335 (regTwo!32334 r!7292)))) b!5843280))

(declare-fun b!5843283 () Bool)

(declare-fun e!3583965 () Bool)

(declare-fun tp!1615821 () Bool)

(assert (=> b!5843283 (= e!3583965 tp!1615821)))

(declare-fun b!5843282 () Bool)

(declare-fun tp!1615819 () Bool)

(declare-fun tp!1615820 () Bool)

(assert (=> b!5843282 (= e!3583965 (and tp!1615819 tp!1615820))))

(assert (=> b!5842874 (= tp!1615671 e!3583965)))

(declare-fun b!5843284 () Bool)

(declare-fun tp!1615822 () Bool)

(declare-fun tp!1615818 () Bool)

(assert (=> b!5843284 (= e!3583965 (and tp!1615822 tp!1615818))))

(declare-fun b!5843281 () Bool)

(assert (=> b!5843281 (= e!3583965 tp_is_empty!41075)))

(assert (= (and b!5842874 ((_ is ElementMatch!15911) (h!70356 (exprs!5795 setElem!39586)))) b!5843281))

(assert (= (and b!5842874 ((_ is Concat!24756) (h!70356 (exprs!5795 setElem!39586)))) b!5843282))

(assert (= (and b!5842874 ((_ is Star!15911) (h!70356 (exprs!5795 setElem!39586)))) b!5843283))

(assert (= (and b!5842874 ((_ is Union!15911) (h!70356 (exprs!5795 setElem!39586)))) b!5843284))

(declare-fun b!5843285 () Bool)

(declare-fun e!3583966 () Bool)

(declare-fun tp!1615823 () Bool)

(declare-fun tp!1615824 () Bool)

(assert (=> b!5843285 (= e!3583966 (and tp!1615823 tp!1615824))))

(assert (=> b!5842874 (= tp!1615672 e!3583966)))

(assert (= (and b!5842874 ((_ is Cons!63908) (t!377387 (exprs!5795 setElem!39586)))) b!5843285))

(declare-fun b!5843286 () Bool)

(declare-fun e!3583967 () Bool)

(declare-fun tp!1615825 () Bool)

(declare-fun tp!1615826 () Bool)

(assert (=> b!5843286 (= e!3583967 (and tp!1615825 tp!1615826))))

(assert (=> b!5842868 (= tp!1615663 e!3583967)))

(assert (= (and b!5842868 ((_ is Cons!63908) (exprs!5795 (h!70357 (t!377388 zl!343))))) b!5843286))

(declare-fun b_lambda!220017 () Bool)

(assert (= b_lambda!220009 (or d!1835653 b_lambda!220017)))

(declare-fun bs!1376694 () Bool)

(declare-fun d!1835799 () Bool)

(assert (= bs!1376694 (and d!1835799 d!1835653)))

(assert (=> bs!1376694 (= (dynLambda!24981 lambda!319624 (h!70356 lt!2303910)) (validRegex!7647 (h!70356 lt!2303910)))))

(declare-fun m!6766488 () Bool)

(assert (=> bs!1376694 m!6766488))

(assert (=> b!5843099 d!1835799))

(declare-fun b_lambda!220019 () Bool)

(assert (= b_lambda!220007 (or d!1835635 b_lambda!220019)))

(declare-fun bs!1376695 () Bool)

(declare-fun d!1835801 () Bool)

(assert (= bs!1376695 (and d!1835801 d!1835635)))

(assert (=> bs!1376695 (= (dynLambda!24981 lambda!319614 (h!70356 (exprs!5795 setElem!39586))) (validRegex!7647 (h!70356 (exprs!5795 setElem!39586))))))

(declare-fun m!6766490 () Bool)

(assert (=> bs!1376695 m!6766490))

(assert (=> b!5843015 d!1835801))

(declare-fun b_lambda!220021 () Bool)

(assert (= b_lambda!220011 (or d!1835651 b_lambda!220021)))

(declare-fun bs!1376696 () Bool)

(declare-fun d!1835803 () Bool)

(assert (= bs!1376696 (and d!1835803 d!1835651)))

(assert (=> bs!1376696 (= (dynLambda!24981 lambda!319621 (h!70356 (unfocusZipperList!1332 zl!343))) (validRegex!7647 (h!70356 (unfocusZipperList!1332 zl!343))))))

(declare-fun m!6766492 () Bool)

(assert (=> bs!1376696 m!6766492))

(assert (=> b!5843112 d!1835803))

(declare-fun b_lambda!220023 () Bool)

(assert (= b_lambda!220005 (or d!1835641 b_lambda!220023)))

(declare-fun bs!1376697 () Bool)

(declare-fun d!1835805 () Bool)

(assert (= bs!1376697 (and d!1835805 d!1835641)))

(assert (=> bs!1376697 (= (dynLambda!24981 lambda!319617 (h!70356 (exprs!5795 (h!70357 zl!343)))) (validRegex!7647 (h!70356 (exprs!5795 (h!70357 zl!343)))))))

(declare-fun m!6766494 () Bool)

(assert (=> bs!1376697 m!6766494))

(assert (=> b!5842971 d!1835805))

(declare-fun b_lambda!220025 () Bool)

(assert (= b_lambda!220013 (or d!1835633 b_lambda!220025)))

(declare-fun bs!1376698 () Bool)

(declare-fun d!1835807 () Bool)

(assert (= bs!1376698 (and d!1835807 d!1835633)))

(assert (=> bs!1376698 (= (dynLambda!24981 lambda!319613 (h!70356 (exprs!5795 lt!2303864))) (validRegex!7647 (h!70356 (exprs!5795 lt!2303864))))))

(declare-fun m!6766496 () Bool)

(assert (=> bs!1376698 m!6766496))

(assert (=> b!5843125 d!1835807))

(declare-fun b_lambda!220027 () Bool)

(assert (= b_lambda!220015 (or d!1835649 b_lambda!220027)))

(declare-fun bs!1376699 () Bool)

(declare-fun d!1835809 () Bool)

(assert (= bs!1376699 (and d!1835809 d!1835649)))

(assert (=> bs!1376699 (= (dynLambda!24981 lambda!319618 (h!70356 (exprs!5795 (h!70357 zl!343)))) (validRegex!7647 (h!70356 (exprs!5795 (h!70357 zl!343)))))))

(assert (=> bs!1376699 m!6766494))

(assert (=> b!5843144 d!1835809))

(check-sat (not b!5843196) (not b!5843193) (not b!5843182) (not bs!1376697) (not b!5843262) (not bm!456517) (not b!5843222) (not b!5843192) (not bm!456510) (not bm!456484) (not b!5842922) (not b!5843189) (not bm!456527) (not d!1835793) (not d!1835727) (not d!1835777) (not b!5843101) (not b!5842881) (not b!5843198) (not b!5843028) (not b!5843185) (not b!5843206) (not b!5843267) (not bm!456478) (not b!5842947) (not bm!456506) (not b!5843247) (not b!5843197) (not bm!456493) (not b!5843221) (not b!5843252) (not bm!456518) (not b!5842919) (not d!1835785) (not b!5843256) (not b!5842981) (not b!5843237) (not b!5843056) (not b!5843272) (not bm!456495) (not b_lambda!220023) (not d!1835737) (not b!5842948) (not bm!456528) (not b!5842925) (not b!5842887) (not b!5843029) (not b!5843159) (not b!5843026) (not bm!456489) (not b!5843203) (not b!5843113) (not b!5843096) (not b_lambda!220021) (not b!5843207) (not bm!456473) (not b!5843282) (not b!5843090) (not bm!456511) (not b!5843241) (not b!5842935) (not d!1835717) (not b!5843258) (not b!5843036) (not b!5843205) (not b!5843017) (not b!5843133) (not d!1835683) (not b!5842957) (not b!5843095) (not bm!456519) (not b!5842958) (not b!5842972) (not b!5843190) (not b!5843251) (not b!5843275) (not b!5843186) (not bm!456486) (not b!5843016) (not b!5843239) (not b!5843269) (not bm!456499) (not b!5843248) (not b!5843230) (not b!5843246) (not b!5843285) (not b!5843173) (not b!5843059) (not d!1835673) (not b!5843243) (not b!5843242) (not d!1835697) (not b!5843114) (not b!5843053) (not bs!1376696) (not b!5843279) (not b!5843268) (not b!5843100) (not b!5843201) (not b!5843062) (not b!5843072) (not b!5842878) (not bm!456471) (not bm!456472) (not d!1835725) (not b!5843094) (not d!1835769) (not bm!456526) (not b!5843160) (not b!5843263) (not bs!1376698) (not b!5842990) (not b!5843284) (not d!1835679) (not b!5842956) (not bm!456477) (not b!5843255) (not b!5843235) (not d!1835781) (not d!1835749) (not b!5843035) (not b!5843181) (not b!5843180) (not b!5843027) (not bm!456460) (not b!5843274) (not b!5843264) (not b!5843225) (not b_lambda!220025) (not b!5843219) (not b_lambda!220017) (not bm!456525) (not bm!456505) (not b!5843184) (not b!5843286) (not b!5843260) (not bm!456504) (not b!5843126) (not b!5843172) (not bm!456476) (not b!5843229) (not b!5843238) (not d!1835719) (not bs!1376695) (not bm!456498) (not b!5843103) (not b!5843010) (not bm!456522) (not b!5842875) (not d!1835773) (not b_lambda!220027) (not bs!1376699) (not b!5843226) (not b!5843045) (not b!5843089) (not b!5843278) (not b!5843271) (not b!5843223) (not b!5843254) (not b!5843080) (not bm!456512) tp_is_empty!41075 (not b!5843145) (not b!5843233) (not b!5842955) (not d!1835715) (not b!5843210) (not bm!456482) (not d!1835677) (not b!5842882) (not d!1835675) (not b!5843097) (not bm!456515) (not b_lambda!220019) (not b!5843259) (not b!5843217) (not bm!456479) (not d!1835731) (not b!5842995) (not b!5843174) (not b!5843202) (not bm!456492) (not b!5843091) (not b!5843200) (not b!5843213) (not b!5843211) (not bm!456501) (not b!5843250) (not b!5843032) (not b!5843227) (not bm!456520) (not b!5843231) (not b!5843122) (not b!5843154) (not b!5843176) (not b!5843265) (not b!5842926) (not b!5843146) (not bm!456529) (not setNonEmpty!39593) (not b!5843178) (not b!5843283) (not b!5843270) (not b!5843280) (not b!5843245) (not b!5843215) (not b!5842931) (not b!5842973) (not b!5843214) (not b!5843063) (not bm!456514) (not d!1835759) (not bm!456483) (not b!5843218) (not bm!456481) (not b!5843188) (not bm!456490) (not d!1835735) (not b!5842911) (not b!5843034) (not bm!456502) (not b!5843234) (not d!1835709) (not b!5842885) (not b!5843143) (not b!5843276) (not b!5843177) (not b!5843162) (not b!5842929) (not bs!1376694) (not bm!456509) (not b!5843209) (not b!5843194) (not b!5843066) (not d!1835767) (not b!5843068))
(check-sat)
