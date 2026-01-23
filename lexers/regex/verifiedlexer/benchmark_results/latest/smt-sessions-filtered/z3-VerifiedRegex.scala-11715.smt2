; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!661636 () Bool)

(assert start!661636)

(declare-fun b!6851566 () Bool)

(assert (=> b!6851566 true))

(declare-fun b!6851560 () Bool)

(assert (=> b!6851560 true))

(declare-fun b!6851557 () Bool)

(declare-fun e!4131386 () Bool)

(declare-fun e!4131377 () Bool)

(assert (=> b!6851557 (= e!4131386 e!4131377)))

(declare-fun res!2796399 () Bool)

(assert (=> b!6851557 (=> res!2796399 e!4131377)))

(declare-datatypes ((C!33624 0))(
  ( (C!33625 (val!26514 Int)) )
))
(declare-datatypes ((Regex!16677 0))(
  ( (ElementMatch!16677 (c!1275345 C!33624)) (Concat!25522 (regOne!33866 Regex!16677) (regTwo!33866 Regex!16677)) (EmptyExpr!16677) (Star!16677 (reg!17006 Regex!16677)) (EmptyLang!16677) (Union!16677 (regOne!33867 Regex!16677) (regTwo!33867 Regex!16677)) )
))
(declare-datatypes ((List!66330 0))(
  ( (Nil!66206) (Cons!66206 (h!72654 Regex!16677) (t!380073 List!66330)) )
))
(declare-fun lt!2456210 () List!66330)

(declare-fun lt!2456209 () Regex!16677)

(declare-fun contains!20329 (List!66330 Regex!16677) Bool)

(assert (=> b!6851557 (= res!2796399 (not (contains!20329 lt!2456210 lt!2456209)))))

(declare-fun lambda!387348 () Int)

(declare-fun getWitness!949 (List!66330 Int) Regex!16677)

(assert (=> b!6851557 (= lt!2456209 (getWitness!949 lt!2456210 lambda!387348))))

(declare-fun b!6851558 () Bool)

(declare-fun res!2796390 () Bool)

(declare-fun e!4131383 () Bool)

(assert (=> b!6851558 (=> res!2796390 e!4131383)))

(declare-datatypes ((Context!12122 0))(
  ( (Context!12123 (exprs!6561 List!66330)) )
))
(declare-datatypes ((List!66331 0))(
  ( (Nil!66207) (Cons!66207 (h!72655 Context!12122) (t!380074 List!66331)) )
))
(declare-fun zl!343 () List!66331)

(declare-datatypes ((List!66332 0))(
  ( (Nil!66208) (Cons!66208 (h!72656 C!33624) (t!380075 List!66332)) )
))
(declare-fun s!2326 () List!66332)

(get-info :version)

(assert (=> b!6851558 (= res!2796390 (or (not ((_ is Cons!66207) zl!343)) ((_ is Nil!66208) s!2326) (not (= zl!343 (Cons!66207 (h!72655 zl!343) (t!380074 zl!343))))))))

(declare-fun b!6851559 () Bool)

(declare-fun res!2796394 () Bool)

(declare-fun e!4131381 () Bool)

(assert (=> b!6851559 (=> (not res!2796394) (not e!4131381))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!12122))

(declare-fun toList!10461 ((InoxSet Context!12122)) List!66331)

(assert (=> b!6851559 (= res!2796394 (= (toList!10461 z!1189) zl!343))))

(declare-fun tp!1878100 () Bool)

(declare-fun setNonEmpty!47097 () Bool)

(declare-fun setElem!47097 () Context!12122)

(declare-fun e!4131387 () Bool)

(declare-fun setRes!47097 () Bool)

(declare-fun inv!84939 (Context!12122) Bool)

(assert (=> setNonEmpty!47097 (= setRes!47097 (and tp!1878100 (inv!84939 setElem!47097) e!4131387))))

(declare-fun setRest!47097 () (InoxSet Context!12122))

(assert (=> setNonEmpty!47097 (= z!1189 ((_ map or) (store ((as const (Array Context!12122 Bool)) false) setElem!47097 true) setRest!47097))))

(declare-fun e!4131382 () Bool)

(assert (=> b!6851560 (= e!4131377 e!4131382)))

(declare-fun res!2796395 () Bool)

(assert (=> b!6851560 (=> res!2796395 e!4131382)))

(declare-fun lambda!387349 () Int)

(declare-fun exists!2780 (List!66331 Int) Bool)

(assert (=> b!6851560 (= res!2796395 (not (exists!2780 zl!343 lambda!387349)))))

(assert (=> b!6851560 (exists!2780 zl!343 lambda!387349)))

(declare-datatypes ((Unit!160081 0))(
  ( (Unit!160082) )
))
(declare-fun lt!2456206 () Unit!160081)

(declare-fun lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!32 (List!66331 Regex!16677) Unit!160081)

(assert (=> b!6851560 (= lt!2456206 (lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!32 zl!343 lt!2456209))))

(declare-fun b!6851561 () Bool)

(declare-fun e!4131378 () Bool)

(declare-fun tp!1878107 () Bool)

(assert (=> b!6851561 (= e!4131378 tp!1878107)))

(declare-fun b!6851562 () Bool)

(declare-fun res!2796393 () Bool)

(assert (=> b!6851562 (=> (not res!2796393) (not e!4131381))))

(declare-fun r!7292 () Regex!16677)

(declare-fun unfocusZipper!2419 (List!66331) Regex!16677)

(assert (=> b!6851562 (= res!2796393 (= r!7292 (unfocusZipper!2419 zl!343)))))

(declare-fun b!6851563 () Bool)

(declare-fun e!4131384 () Bool)

(assert (=> b!6851563 (= e!4131382 e!4131384)))

(declare-fun res!2796386 () Bool)

(assert (=> b!6851563 (=> res!2796386 e!4131384)))

(declare-fun lt!2456205 () Int)

(declare-fun lt!2456208 () List!66331)

(declare-fun zipperDepthTotal!432 (List!66331) Int)

(assert (=> b!6851563 (= res!2796386 (<= lt!2456205 (zipperDepthTotal!432 lt!2456208)))))

(declare-fun lt!2456204 () Context!12122)

(assert (=> b!6851563 (= lt!2456208 (Cons!66207 lt!2456204 Nil!66207))))

(declare-fun lt!2456203 () Int)

(assert (=> b!6851563 (< lt!2456203 lt!2456205)))

(assert (=> b!6851563 (= lt!2456205 (zipperDepthTotal!432 zl!343))))

(declare-fun contextDepthTotal!404 (Context!12122) Int)

(assert (=> b!6851563 (= lt!2456203 (contextDepthTotal!404 lt!2456204))))

(declare-fun lt!2456207 () Unit!160081)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!36 (List!66331 Context!12122) Unit!160081)

(assert (=> b!6851563 (= lt!2456207 (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!36 zl!343 lt!2456204))))

(declare-fun getWitness!950 (List!66331 Int) Context!12122)

(assert (=> b!6851563 (= lt!2456204 (getWitness!950 zl!343 lambda!387349))))

(declare-fun b!6851564 () Bool)

(declare-fun tp!1878105 () Bool)

(assert (=> b!6851564 (= e!4131387 tp!1878105)))

(declare-fun b!6851565 () Bool)

(declare-fun tp!1878104 () Bool)

(declare-fun tp!1878106 () Bool)

(assert (=> b!6851565 (= e!4131378 (and tp!1878104 tp!1878106))))

(declare-fun res!2796391 () Bool)

(assert (=> start!661636 (=> (not res!2796391) (not e!4131381))))

(declare-fun validRegex!8413 (Regex!16677) Bool)

(assert (=> start!661636 (= res!2796391 (validRegex!8413 r!7292))))

(assert (=> start!661636 e!4131381))

(assert (=> start!661636 e!4131378))

(declare-fun condSetEmpty!47097 () Bool)

(assert (=> start!661636 (= condSetEmpty!47097 (= z!1189 ((as const (Array Context!12122 Bool)) false)))))

(assert (=> start!661636 setRes!47097))

(declare-fun e!4131388 () Bool)

(assert (=> start!661636 e!4131388))

(declare-fun e!4131380 () Bool)

(assert (=> start!661636 e!4131380))

(assert (=> b!6851566 (= e!4131383 e!4131386)))

(declare-fun res!2796396 () Bool)

(assert (=> b!6851566 (=> res!2796396 e!4131386)))

(declare-fun lt!2456200 () Bool)

(assert (=> b!6851566 (= res!2796396 (not lt!2456200))))

(declare-fun exists!2781 (List!66330 Int) Bool)

(assert (=> b!6851566 (= lt!2456200 (exists!2781 lt!2456210 lambda!387348))))

(declare-fun lt!2456202 () Unit!160081)

(declare-fun matchRGenUnionSpec!316 (Regex!16677 List!66330 List!66332) Unit!160081)

(assert (=> b!6851566 (= lt!2456202 (matchRGenUnionSpec!316 r!7292 lt!2456210 s!2326))))

(declare-fun unfocusZipperList!2094 (List!66331) List!66330)

(assert (=> b!6851566 (= lt!2456210 (unfocusZipperList!2094 zl!343))))

(declare-fun b!6851567 () Bool)

(declare-fun res!2796398 () Bool)

(assert (=> b!6851567 (=> res!2796398 e!4131383)))

(declare-fun isEmpty!38577 (List!66331) Bool)

(assert (=> b!6851567 (= res!2796398 (isEmpty!38577 (t!380074 zl!343)))))

(declare-fun b!6851568 () Bool)

(declare-fun tp_is_empty!42607 () Bool)

(assert (=> b!6851568 (= e!4131378 tp_is_empty!42607)))

(declare-fun b!6851569 () Bool)

(declare-fun res!2796397 () Bool)

(assert (=> b!6851569 (=> res!2796397 e!4131384)))

(assert (=> b!6851569 (= res!2796397 (not (= (toList!10461 (store ((as const (Array Context!12122 Bool)) false) lt!2456204 true)) lt!2456208)))))

(declare-fun b!6851570 () Bool)

(declare-fun res!2796389 () Bool)

(assert (=> b!6851570 (=> res!2796389 e!4131377)))

(assert (=> b!6851570 (= res!2796389 (not (validRegex!8413 lt!2456209)))))

(declare-fun b!6851571 () Bool)

(assert (=> b!6851571 (= e!4131384 (= lt!2456209 (unfocusZipper!2419 lt!2456208)))))

(declare-fun b!6851572 () Bool)

(declare-fun res!2796400 () Bool)

(assert (=> b!6851572 (=> res!2796400 e!4131386)))

(assert (=> b!6851572 (= res!2796400 (not (exists!2781 lt!2456210 lambda!387348)))))

(declare-fun b!6851573 () Bool)

(declare-fun tp!1878101 () Bool)

(assert (=> b!6851573 (= e!4131380 (and tp_is_empty!42607 tp!1878101))))

(declare-fun e!4131379 () Bool)

(declare-fun tp!1878099 () Bool)

(declare-fun b!6851574 () Bool)

(assert (=> b!6851574 (= e!4131388 (and (inv!84939 (h!72655 zl!343)) e!4131379 tp!1878099))))

(declare-fun b!6851575 () Bool)

(declare-fun e!4131385 () Bool)

(assert (=> b!6851575 (= e!4131385 (isEmpty!38577 (t!380074 zl!343)))))

(declare-fun b!6851576 () Bool)

(declare-fun tp!1878103 () Bool)

(assert (=> b!6851576 (= e!4131379 tp!1878103)))

(declare-fun b!6851577 () Bool)

(declare-fun tp!1878098 () Bool)

(declare-fun tp!1878102 () Bool)

(assert (=> b!6851577 (= e!4131378 (and tp!1878098 tp!1878102))))

(declare-fun b!6851578 () Bool)

(declare-fun res!2796388 () Bool)

(assert (=> b!6851578 (=> res!2796388 e!4131377)))

(declare-fun matchR!8860 (Regex!16677 List!66332) Bool)

(assert (=> b!6851578 (= res!2796388 (not (matchR!8860 lt!2456209 s!2326)))))

(declare-fun setIsEmpty!47097 () Bool)

(assert (=> setIsEmpty!47097 setRes!47097))

(declare-fun b!6851579 () Bool)

(assert (=> b!6851579 (= e!4131381 (not e!4131383))))

(declare-fun res!2796387 () Bool)

(assert (=> b!6851579 (=> res!2796387 e!4131383)))

(assert (=> b!6851579 (= res!2796387 e!4131385)))

(declare-fun res!2796392 () Bool)

(assert (=> b!6851579 (=> (not res!2796392) (not e!4131385))))

(assert (=> b!6851579 (= res!2796392 ((_ is Cons!66207) zl!343))))

(declare-fun matchRSpec!3778 (Regex!16677 List!66332) Bool)

(assert (=> b!6851579 (= lt!2456200 (matchRSpec!3778 r!7292 s!2326))))

(assert (=> b!6851579 (= lt!2456200 (matchR!8860 r!7292 s!2326))))

(declare-fun lt!2456201 () Unit!160081)

(declare-fun mainMatchTheorem!3778 (Regex!16677 List!66332) Unit!160081)

(assert (=> b!6851579 (= lt!2456201 (mainMatchTheorem!3778 r!7292 s!2326))))

(assert (= (and start!661636 res!2796391) b!6851559))

(assert (= (and b!6851559 res!2796394) b!6851562))

(assert (= (and b!6851562 res!2796393) b!6851579))

(assert (= (and b!6851579 res!2796392) b!6851575))

(assert (= (and b!6851579 (not res!2796387)) b!6851558))

(assert (= (and b!6851558 (not res!2796390)) b!6851567))

(assert (= (and b!6851567 (not res!2796398)) b!6851566))

(assert (= (and b!6851566 (not res!2796396)) b!6851572))

(assert (= (and b!6851572 (not res!2796400)) b!6851557))

(assert (= (and b!6851557 (not res!2796399)) b!6851570))

(assert (= (and b!6851570 (not res!2796389)) b!6851578))

(assert (= (and b!6851578 (not res!2796388)) b!6851560))

(assert (= (and b!6851560 (not res!2796395)) b!6851563))

(assert (= (and b!6851563 (not res!2796386)) b!6851569))

(assert (= (and b!6851569 (not res!2796397)) b!6851571))

(assert (= (and start!661636 ((_ is ElementMatch!16677) r!7292)) b!6851568))

(assert (= (and start!661636 ((_ is Concat!25522) r!7292)) b!6851565))

(assert (= (and start!661636 ((_ is Star!16677) r!7292)) b!6851561))

(assert (= (and start!661636 ((_ is Union!16677) r!7292)) b!6851577))

(assert (= (and start!661636 condSetEmpty!47097) setIsEmpty!47097))

(assert (= (and start!661636 (not condSetEmpty!47097)) setNonEmpty!47097))

(assert (= setNonEmpty!47097 b!6851564))

(assert (= b!6851574 b!6851576))

(assert (= (and start!661636 ((_ is Cons!66207) zl!343)) b!6851574))

(assert (= (and start!661636 ((_ is Cons!66208) s!2326)) b!6851573))

(declare-fun m!7589680 () Bool)

(assert (=> b!6851579 m!7589680))

(declare-fun m!7589682 () Bool)

(assert (=> b!6851579 m!7589682))

(declare-fun m!7589684 () Bool)

(assert (=> b!6851579 m!7589684))

(declare-fun m!7589686 () Bool)

(assert (=> b!6851562 m!7589686))

(declare-fun m!7589688 () Bool)

(assert (=> b!6851575 m!7589688))

(declare-fun m!7589690 () Bool)

(assert (=> b!6851571 m!7589690))

(assert (=> b!6851567 m!7589688))

(declare-fun m!7589692 () Bool)

(assert (=> b!6851566 m!7589692))

(declare-fun m!7589694 () Bool)

(assert (=> b!6851566 m!7589694))

(declare-fun m!7589696 () Bool)

(assert (=> b!6851566 m!7589696))

(declare-fun m!7589698 () Bool)

(assert (=> setNonEmpty!47097 m!7589698))

(declare-fun m!7589700 () Bool)

(assert (=> b!6851578 m!7589700))

(declare-fun m!7589702 () Bool)

(assert (=> b!6851559 m!7589702))

(declare-fun m!7589704 () Bool)

(assert (=> start!661636 m!7589704))

(declare-fun m!7589706 () Bool)

(assert (=> b!6851557 m!7589706))

(declare-fun m!7589708 () Bool)

(assert (=> b!6851557 m!7589708))

(declare-fun m!7589710 () Bool)

(assert (=> b!6851560 m!7589710))

(assert (=> b!6851560 m!7589710))

(declare-fun m!7589712 () Bool)

(assert (=> b!6851560 m!7589712))

(declare-fun m!7589714 () Bool)

(assert (=> b!6851570 m!7589714))

(declare-fun m!7589716 () Bool)

(assert (=> b!6851563 m!7589716))

(declare-fun m!7589718 () Bool)

(assert (=> b!6851563 m!7589718))

(declare-fun m!7589720 () Bool)

(assert (=> b!6851563 m!7589720))

(declare-fun m!7589722 () Bool)

(assert (=> b!6851563 m!7589722))

(declare-fun m!7589724 () Bool)

(assert (=> b!6851563 m!7589724))

(declare-fun m!7589726 () Bool)

(assert (=> b!6851574 m!7589726))

(declare-fun m!7589728 () Bool)

(assert (=> b!6851569 m!7589728))

(assert (=> b!6851569 m!7589728))

(declare-fun m!7589730 () Bool)

(assert (=> b!6851569 m!7589730))

(assert (=> b!6851572 m!7589692))

(check-sat (not setNonEmpty!47097) (not start!661636) tp_is_empty!42607 (not b!6851563) (not b!6851571) (not b!6851572) (not b!6851577) (not b!6851567) (not b!6851560) (not b!6851573) (not b!6851575) (not b!6851566) (not b!6851565) (not b!6851578) (not b!6851557) (not b!6851561) (not b!6851559) (not b!6851569) (not b!6851579) (not b!6851576) (not b!6851570) (not b!6851574) (not b!6851564) (not b!6851562))
(check-sat)
(get-model)

(declare-fun bs!1831338 () Bool)

(declare-fun d!2153408 () Bool)

(assert (= bs!1831338 (and d!2153408 b!6851560)))

(declare-fun lambda!387352 () Int)

(assert (=> bs!1831338 (not (= lambda!387352 lambda!387349))))

(assert (=> d!2153408 true))

(declare-fun order!27657 () Int)

(declare-fun dynLambda!26462 (Int Int) Int)

(assert (=> d!2153408 (< (dynLambda!26462 order!27657 lambda!387349) (dynLambda!26462 order!27657 lambda!387352))))

(declare-fun forall!15857 (List!66331 Int) Bool)

(assert (=> d!2153408 (= (exists!2780 zl!343 lambda!387349) (not (forall!15857 zl!343 lambda!387352)))))

(declare-fun bs!1831339 () Bool)

(assert (= bs!1831339 d!2153408))

(declare-fun m!7589732 () Bool)

(assert (=> bs!1831339 m!7589732))

(assert (=> b!6851560 d!2153408))

(declare-fun bs!1831350 () Bool)

(declare-fun d!2153412 () Bool)

(assert (= bs!1831350 (and d!2153412 b!6851560)))

(declare-fun lambda!387362 () Int)

(assert (=> bs!1831350 (= lambda!387362 lambda!387349)))

(declare-fun bs!1831351 () Bool)

(assert (= bs!1831351 (and d!2153412 d!2153408)))

(assert (=> bs!1831351 (not (= lambda!387362 lambda!387352))))

(assert (=> d!2153412 true))

(assert (=> d!2153412 (exists!2780 zl!343 lambda!387362)))

(declare-fun lt!2456219 () Unit!160081)

(declare-fun choose!51057 (List!66331 Regex!16677) Unit!160081)

(assert (=> d!2153412 (= lt!2456219 (choose!51057 zl!343 lt!2456209))))

(assert (=> d!2153412 (contains!20329 (unfocusZipperList!2094 zl!343) lt!2456209)))

(assert (=> d!2153412 (= (lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!32 zl!343 lt!2456209) lt!2456219)))

(declare-fun bs!1831352 () Bool)

(assert (= bs!1831352 d!2153412))

(declare-fun m!7589752 () Bool)

(assert (=> bs!1831352 m!7589752))

(declare-fun m!7589754 () Bool)

(assert (=> bs!1831352 m!7589754))

(assert (=> bs!1831352 m!7589696))

(assert (=> bs!1831352 m!7589696))

(declare-fun m!7589756 () Bool)

(assert (=> bs!1831352 m!7589756))

(assert (=> b!6851560 d!2153412))

(declare-fun d!2153426 () Bool)

(declare-fun lt!2456222 () Regex!16677)

(assert (=> d!2153426 (validRegex!8413 lt!2456222)))

(declare-fun generalisedUnion!2515 (List!66330) Regex!16677)

(assert (=> d!2153426 (= lt!2456222 (generalisedUnion!2515 (unfocusZipperList!2094 lt!2456208)))))

(assert (=> d!2153426 (= (unfocusZipper!2419 lt!2456208) lt!2456222)))

(declare-fun bs!1831353 () Bool)

(assert (= bs!1831353 d!2153426))

(declare-fun m!7589764 () Bool)

(assert (=> bs!1831353 m!7589764))

(declare-fun m!7589766 () Bool)

(assert (=> bs!1831353 m!7589766))

(assert (=> bs!1831353 m!7589766))

(declare-fun m!7589768 () Bool)

(assert (=> bs!1831353 m!7589768))

(assert (=> b!6851571 d!2153426))

(declare-fun b!6851646 () Bool)

(declare-fun res!2796430 () Bool)

(declare-fun e!4131436 () Bool)

(assert (=> b!6851646 (=> res!2796430 e!4131436)))

(assert (=> b!6851646 (= res!2796430 (not ((_ is Concat!25522) lt!2456209)))))

(declare-fun e!4131437 () Bool)

(assert (=> b!6851646 (= e!4131437 e!4131436)))

(declare-fun b!6851647 () Bool)

(declare-fun res!2796431 () Bool)

(declare-fun e!4131431 () Bool)

(assert (=> b!6851647 (=> (not res!2796431) (not e!4131431))))

(declare-fun call!624065 () Bool)

(assert (=> b!6851647 (= res!2796431 call!624065)))

(assert (=> b!6851647 (= e!4131437 e!4131431)))

(declare-fun c!1275365 () Bool)

(declare-fun call!624066 () Bool)

(declare-fun c!1275366 () Bool)

(declare-fun bm!624060 () Bool)

(assert (=> bm!624060 (= call!624066 (validRegex!8413 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))))))

(declare-fun b!6851648 () Bool)

(declare-fun call!624067 () Bool)

(assert (=> b!6851648 (= e!4131431 call!624067)))

(declare-fun b!6851650 () Bool)

(declare-fun e!4131432 () Bool)

(declare-fun e!4131433 () Bool)

(assert (=> b!6851650 (= e!4131432 e!4131433)))

(assert (=> b!6851650 (= c!1275365 ((_ is Star!16677) lt!2456209))))

(declare-fun b!6851651 () Bool)

(assert (=> b!6851651 (= e!4131433 e!4131437)))

(assert (=> b!6851651 (= c!1275366 ((_ is Union!16677) lt!2456209))))

(declare-fun bm!624061 () Bool)

(assert (=> bm!624061 (= call!624065 call!624066)))

(declare-fun d!2153430 () Bool)

(declare-fun res!2796432 () Bool)

(assert (=> d!2153430 (=> res!2796432 e!4131432)))

(assert (=> d!2153430 (= res!2796432 ((_ is ElementMatch!16677) lt!2456209))))

(assert (=> d!2153430 (= (validRegex!8413 lt!2456209) e!4131432)))

(declare-fun b!6851649 () Bool)

(declare-fun e!4131434 () Bool)

(assert (=> b!6851649 (= e!4131433 e!4131434)))

(declare-fun res!2796433 () Bool)

(declare-fun nullable!6640 (Regex!16677) Bool)

(assert (=> b!6851649 (= res!2796433 (not (nullable!6640 (reg!17006 lt!2456209))))))

(assert (=> b!6851649 (=> (not res!2796433) (not e!4131434))))

(declare-fun b!6851652 () Bool)

(assert (=> b!6851652 (= e!4131434 call!624066)))

(declare-fun bm!624062 () Bool)

(assert (=> bm!624062 (= call!624067 (validRegex!8413 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))))))

(declare-fun b!6851653 () Bool)

(declare-fun e!4131435 () Bool)

(assert (=> b!6851653 (= e!4131435 call!624067)))

(declare-fun b!6851654 () Bool)

(assert (=> b!6851654 (= e!4131436 e!4131435)))

(declare-fun res!2796429 () Bool)

(assert (=> b!6851654 (=> (not res!2796429) (not e!4131435))))

(assert (=> b!6851654 (= res!2796429 call!624065)))

(assert (= (and d!2153430 (not res!2796432)) b!6851650))

(assert (= (and b!6851650 c!1275365) b!6851649))

(assert (= (and b!6851650 (not c!1275365)) b!6851651))

(assert (= (and b!6851649 res!2796433) b!6851652))

(assert (= (and b!6851651 c!1275366) b!6851647))

(assert (= (and b!6851651 (not c!1275366)) b!6851646))

(assert (= (and b!6851647 res!2796431) b!6851648))

(assert (= (and b!6851646 (not res!2796430)) b!6851654))

(assert (= (and b!6851654 res!2796429) b!6851653))

(assert (= (or b!6851648 b!6851653) bm!624062))

(assert (= (or b!6851647 b!6851654) bm!624061))

(assert (= (or b!6851652 bm!624061) bm!624060))

(declare-fun m!7589794 () Bool)

(assert (=> bm!624060 m!7589794))

(declare-fun m!7589796 () Bool)

(assert (=> b!6851649 m!7589796))

(declare-fun m!7589798 () Bool)

(assert (=> bm!624062 m!7589798))

(assert (=> b!6851570 d!2153430))

(declare-fun b!6851820 () Bool)

(assert (=> b!6851820 true))

(assert (=> b!6851820 true))

(declare-fun bs!1831362 () Bool)

(declare-fun b!6851816 () Bool)

(assert (= bs!1831362 (and b!6851816 b!6851820)))

(declare-fun lambda!387380 () Int)

(declare-fun lambda!387379 () Int)

(assert (=> bs!1831362 (not (= lambda!387380 lambda!387379))))

(assert (=> b!6851816 true))

(assert (=> b!6851816 true))

(declare-fun b!6851810 () Bool)

(declare-fun c!1275411 () Bool)

(assert (=> b!6851810 (= c!1275411 ((_ is Union!16677) r!7292))))

(declare-fun e!4131528 () Bool)

(declare-fun e!4131526 () Bool)

(assert (=> b!6851810 (= e!4131528 e!4131526)))

(declare-fun b!6851811 () Bool)

(declare-fun c!1275408 () Bool)

(assert (=> b!6851811 (= c!1275408 ((_ is ElementMatch!16677) r!7292))))

(declare-fun e!4131529 () Bool)

(assert (=> b!6851811 (= e!4131529 e!4131528)))

(declare-fun b!6851812 () Bool)

(declare-fun e!4131531 () Bool)

(assert (=> b!6851812 (= e!4131526 e!4131531)))

(declare-fun c!1275410 () Bool)

(assert (=> b!6851812 (= c!1275410 ((_ is Star!16677) r!7292))))

(declare-fun b!6851813 () Bool)

(declare-fun e!4131527 () Bool)

(assert (=> b!6851813 (= e!4131527 (matchRSpec!3778 (regTwo!33867 r!7292) s!2326))))

(declare-fun b!6851814 () Bool)

(assert (=> b!6851814 (= e!4131526 e!4131527)))

(declare-fun res!2796507 () Bool)

(assert (=> b!6851814 (= res!2796507 (matchRSpec!3778 (regOne!33867 r!7292) s!2326))))

(assert (=> b!6851814 (=> res!2796507 e!4131527)))

(declare-fun b!6851815 () Bool)

(declare-fun e!4131525 () Bool)

(declare-fun call!624085 () Bool)

(assert (=> b!6851815 (= e!4131525 call!624085)))

(declare-fun b!6851817 () Bool)

(assert (=> b!6851817 (= e!4131528 (= s!2326 (Cons!66208 (c!1275345 r!7292) Nil!66208)))))

(declare-fun bm!624079 () Bool)

(declare-fun isEmpty!38579 (List!66332) Bool)

(assert (=> bm!624079 (= call!624085 (isEmpty!38579 s!2326))))

(declare-fun b!6851818 () Bool)

(assert (=> b!6851818 (= e!4131525 e!4131529)))

(declare-fun res!2796505 () Bool)

(assert (=> b!6851818 (= res!2796505 (not ((_ is EmptyLang!16677) r!7292)))))

(assert (=> b!6851818 (=> (not res!2796505) (not e!4131529))))

(declare-fun b!6851819 () Bool)

(declare-fun res!2796506 () Bool)

(declare-fun e!4131530 () Bool)

(assert (=> b!6851819 (=> res!2796506 e!4131530)))

(assert (=> b!6851819 (= res!2796506 call!624085)))

(assert (=> b!6851819 (= e!4131531 e!4131530)))

(declare-fun call!624084 () Bool)

(assert (=> b!6851816 (= e!4131531 call!624084)))

(declare-fun d!2153444 () Bool)

(declare-fun c!1275409 () Bool)

(assert (=> d!2153444 (= c!1275409 ((_ is EmptyExpr!16677) r!7292))))

(assert (=> d!2153444 (= (matchRSpec!3778 r!7292 s!2326) e!4131525)))

(assert (=> b!6851820 (= e!4131530 call!624084)))

(declare-fun bm!624080 () Bool)

(declare-fun Exists!3739 (Int) Bool)

(assert (=> bm!624080 (= call!624084 (Exists!3739 (ite c!1275410 lambda!387379 lambda!387380)))))

(assert (= (and d!2153444 c!1275409) b!6851815))

(assert (= (and d!2153444 (not c!1275409)) b!6851818))

(assert (= (and b!6851818 res!2796505) b!6851811))

(assert (= (and b!6851811 c!1275408) b!6851817))

(assert (= (and b!6851811 (not c!1275408)) b!6851810))

(assert (= (and b!6851810 c!1275411) b!6851814))

(assert (= (and b!6851810 (not c!1275411)) b!6851812))

(assert (= (and b!6851814 (not res!2796507)) b!6851813))

(assert (= (and b!6851812 c!1275410) b!6851819))

(assert (= (and b!6851812 (not c!1275410)) b!6851816))

(assert (= (and b!6851819 (not res!2796506)) b!6851820))

(assert (= (or b!6851820 b!6851816) bm!624080))

(assert (= (or b!6851815 b!6851819) bm!624079))

(declare-fun m!7589852 () Bool)

(assert (=> b!6851813 m!7589852))

(declare-fun m!7589854 () Bool)

(assert (=> b!6851814 m!7589854))

(declare-fun m!7589856 () Bool)

(assert (=> bm!624079 m!7589856))

(declare-fun m!7589858 () Bool)

(assert (=> bm!624080 m!7589858))

(assert (=> b!6851579 d!2153444))

(declare-fun d!2153460 () Bool)

(declare-fun e!4131591 () Bool)

(assert (=> d!2153460 e!4131591))

(declare-fun c!1275432 () Bool)

(assert (=> d!2153460 (= c!1275432 ((_ is EmptyExpr!16677) r!7292))))

(declare-fun lt!2456268 () Bool)

(declare-fun e!4131594 () Bool)

(assert (=> d!2153460 (= lt!2456268 e!4131594)))

(declare-fun c!1275431 () Bool)

(assert (=> d!2153460 (= c!1275431 (isEmpty!38579 s!2326))))

(assert (=> d!2153460 (validRegex!8413 r!7292)))

(assert (=> d!2153460 (= (matchR!8860 r!7292 s!2326) lt!2456268)))

(declare-fun b!6851934 () Bool)

(declare-fun res!2796551 () Bool)

(declare-fun e!4131593 () Bool)

(assert (=> b!6851934 (=> res!2796551 e!4131593)))

(declare-fun tail!12808 (List!66332) List!66332)

(assert (=> b!6851934 (= res!2796551 (not (isEmpty!38579 (tail!12808 s!2326))))))

(declare-fun b!6851935 () Bool)

(declare-fun derivativeStep!5323 (Regex!16677 C!33624) Regex!16677)

(declare-fun head!13733 (List!66332) C!33624)

(assert (=> b!6851935 (= e!4131594 (matchR!8860 (derivativeStep!5323 r!7292 (head!13733 s!2326)) (tail!12808 s!2326)))))

(declare-fun b!6851936 () Bool)

(assert (=> b!6851936 (= e!4131593 (not (= (head!13733 s!2326) (c!1275345 r!7292))))))

(declare-fun b!6851937 () Bool)

(declare-fun res!2796550 () Bool)

(declare-fun e!4131596 () Bool)

(assert (=> b!6851937 (=> (not res!2796550) (not e!4131596))))

(assert (=> b!6851937 (= res!2796550 (isEmpty!38579 (tail!12808 s!2326)))))

(declare-fun b!6851938 () Bool)

(declare-fun e!4131595 () Bool)

(declare-fun e!4131597 () Bool)

(assert (=> b!6851938 (= e!4131595 e!4131597)))

(declare-fun res!2796552 () Bool)

(assert (=> b!6851938 (=> (not res!2796552) (not e!4131597))))

(assert (=> b!6851938 (= res!2796552 (not lt!2456268))))

(declare-fun b!6851939 () Bool)

(declare-fun res!2796553 () Bool)

(assert (=> b!6851939 (=> res!2796553 e!4131595)))

(assert (=> b!6851939 (= res!2796553 e!4131596)))

(declare-fun res!2796549 () Bool)

(assert (=> b!6851939 (=> (not res!2796549) (not e!4131596))))

(assert (=> b!6851939 (= res!2796549 lt!2456268)))

(declare-fun b!6851940 () Bool)

(assert (=> b!6851940 (= e!4131597 e!4131593)))

(declare-fun res!2796547 () Bool)

(assert (=> b!6851940 (=> res!2796547 e!4131593)))

(declare-fun call!624089 () Bool)

(assert (=> b!6851940 (= res!2796547 call!624089)))

(declare-fun b!6851941 () Bool)

(assert (=> b!6851941 (= e!4131594 (nullable!6640 r!7292))))

(declare-fun b!6851942 () Bool)

(declare-fun e!4131592 () Bool)

(assert (=> b!6851942 (= e!4131591 e!4131592)))

(declare-fun c!1275430 () Bool)

(assert (=> b!6851942 (= c!1275430 ((_ is EmptyLang!16677) r!7292))))

(declare-fun b!6851943 () Bool)

(declare-fun res!2796548 () Bool)

(assert (=> b!6851943 (=> (not res!2796548) (not e!4131596))))

(assert (=> b!6851943 (= res!2796548 (not call!624089))))

(declare-fun b!6851944 () Bool)

(assert (=> b!6851944 (= e!4131591 (= lt!2456268 call!624089))))

(declare-fun bm!624084 () Bool)

(assert (=> bm!624084 (= call!624089 (isEmpty!38579 s!2326))))

(declare-fun b!6851945 () Bool)

(assert (=> b!6851945 (= e!4131592 (not lt!2456268))))

(declare-fun b!6851946 () Bool)

(assert (=> b!6851946 (= e!4131596 (= (head!13733 s!2326) (c!1275345 r!7292)))))

(declare-fun b!6851947 () Bool)

(declare-fun res!2796546 () Bool)

(assert (=> b!6851947 (=> res!2796546 e!4131595)))

(assert (=> b!6851947 (= res!2796546 (not ((_ is ElementMatch!16677) r!7292)))))

(assert (=> b!6851947 (= e!4131592 e!4131595)))

(assert (= (and d!2153460 c!1275431) b!6851941))

(assert (= (and d!2153460 (not c!1275431)) b!6851935))

(assert (= (and d!2153460 c!1275432) b!6851944))

(assert (= (and d!2153460 (not c!1275432)) b!6851942))

(assert (= (and b!6851942 c!1275430) b!6851945))

(assert (= (and b!6851942 (not c!1275430)) b!6851947))

(assert (= (and b!6851947 (not res!2796546)) b!6851939))

(assert (= (and b!6851939 res!2796549) b!6851943))

(assert (= (and b!6851943 res!2796548) b!6851937))

(assert (= (and b!6851937 res!2796550) b!6851946))

(assert (= (and b!6851939 (not res!2796553)) b!6851938))

(assert (= (and b!6851938 res!2796552) b!6851940))

(assert (= (and b!6851940 (not res!2796547)) b!6851934))

(assert (= (and b!6851934 (not res!2796551)) b!6851936))

(assert (= (or b!6851944 b!6851943 b!6851940) bm!624084))

(assert (=> d!2153460 m!7589856))

(assert (=> d!2153460 m!7589704))

(declare-fun m!7589900 () Bool)

(assert (=> b!6851935 m!7589900))

(assert (=> b!6851935 m!7589900))

(declare-fun m!7589902 () Bool)

(assert (=> b!6851935 m!7589902))

(declare-fun m!7589908 () Bool)

(assert (=> b!6851935 m!7589908))

(assert (=> b!6851935 m!7589902))

(assert (=> b!6851935 m!7589908))

(declare-fun m!7589910 () Bool)

(assert (=> b!6851935 m!7589910))

(assert (=> bm!624084 m!7589856))

(assert (=> b!6851936 m!7589900))

(assert (=> b!6851937 m!7589908))

(assert (=> b!6851937 m!7589908))

(declare-fun m!7589912 () Bool)

(assert (=> b!6851937 m!7589912))

(assert (=> b!6851946 m!7589900))

(declare-fun m!7589914 () Bool)

(assert (=> b!6851941 m!7589914))

(assert (=> b!6851934 m!7589908))

(assert (=> b!6851934 m!7589908))

(assert (=> b!6851934 m!7589912))

(assert (=> b!6851579 d!2153460))

(declare-fun d!2153478 () Bool)

(assert (=> d!2153478 (= (matchR!8860 r!7292 s!2326) (matchRSpec!3778 r!7292 s!2326))))

(declare-fun lt!2456271 () Unit!160081)

(declare-fun choose!51060 (Regex!16677 List!66332) Unit!160081)

(assert (=> d!2153478 (= lt!2456271 (choose!51060 r!7292 s!2326))))

(assert (=> d!2153478 (validRegex!8413 r!7292)))

(assert (=> d!2153478 (= (mainMatchTheorem!3778 r!7292 s!2326) lt!2456271)))

(declare-fun bs!1831378 () Bool)

(assert (= bs!1831378 d!2153478))

(assert (=> bs!1831378 m!7589682))

(assert (=> bs!1831378 m!7589680))

(declare-fun m!7589916 () Bool)

(assert (=> bs!1831378 m!7589916))

(assert (=> bs!1831378 m!7589704))

(assert (=> b!6851579 d!2153478))

(declare-fun bs!1831379 () Bool)

(declare-fun d!2153480 () Bool)

(assert (= bs!1831379 (and d!2153480 b!6851566)))

(declare-fun lambda!387392 () Int)

(assert (=> bs!1831379 (not (= lambda!387392 lambda!387348))))

(declare-fun forall!15858 (List!66330 Int) Bool)

(assert (=> d!2153480 (= (inv!84939 setElem!47097) (forall!15858 (exprs!6561 setElem!47097) lambda!387392))))

(declare-fun bs!1831380 () Bool)

(assert (= bs!1831380 d!2153480))

(declare-fun m!7589918 () Bool)

(assert (=> bs!1831380 m!7589918))

(assert (=> setNonEmpty!47097 d!2153480))

(declare-fun d!2153482 () Bool)

(declare-fun e!4131610 () Bool)

(assert (=> d!2153482 e!4131610))

(declare-fun res!2796558 () Bool)

(assert (=> d!2153482 (=> (not res!2796558) (not e!4131610))))

(declare-fun lt!2456274 () List!66331)

(declare-fun noDuplicate!2443 (List!66331) Bool)

(assert (=> d!2153482 (= res!2796558 (noDuplicate!2443 lt!2456274))))

(declare-fun choose!51061 ((InoxSet Context!12122)) List!66331)

(assert (=> d!2153482 (= lt!2456274 (choose!51061 z!1189))))

(assert (=> d!2153482 (= (toList!10461 z!1189) lt!2456274)))

(declare-fun b!6851971 () Bool)

(declare-fun content!12985 (List!66331) (InoxSet Context!12122))

(assert (=> b!6851971 (= e!4131610 (= (content!12985 lt!2456274) z!1189))))

(assert (= (and d!2153482 res!2796558) b!6851971))

(declare-fun m!7589920 () Bool)

(assert (=> d!2153482 m!7589920))

(declare-fun m!7589922 () Bool)

(assert (=> d!2153482 m!7589922))

(declare-fun m!7589924 () Bool)

(assert (=> b!6851971 m!7589924))

(assert (=> b!6851559 d!2153482))

(declare-fun d!2153484 () Bool)

(declare-fun e!4131611 () Bool)

(assert (=> d!2153484 e!4131611))

(declare-fun res!2796559 () Bool)

(assert (=> d!2153484 (=> (not res!2796559) (not e!4131611))))

(declare-fun lt!2456275 () List!66331)

(assert (=> d!2153484 (= res!2796559 (noDuplicate!2443 lt!2456275))))

(assert (=> d!2153484 (= lt!2456275 (choose!51061 (store ((as const (Array Context!12122 Bool)) false) lt!2456204 true)))))

(assert (=> d!2153484 (= (toList!10461 (store ((as const (Array Context!12122 Bool)) false) lt!2456204 true)) lt!2456275)))

(declare-fun b!6851972 () Bool)

(assert (=> b!6851972 (= e!4131611 (= (content!12985 lt!2456275) (store ((as const (Array Context!12122 Bool)) false) lt!2456204 true)))))

(assert (= (and d!2153484 res!2796559) b!6851972))

(declare-fun m!7589926 () Bool)

(assert (=> d!2153484 m!7589926))

(assert (=> d!2153484 m!7589728))

(declare-fun m!7589928 () Bool)

(assert (=> d!2153484 m!7589928))

(declare-fun m!7589930 () Bool)

(assert (=> b!6851972 m!7589930))

(assert (=> b!6851569 d!2153484))

(declare-fun b!6851973 () Bool)

(declare-fun res!2796561 () Bool)

(declare-fun e!4131617 () Bool)

(assert (=> b!6851973 (=> res!2796561 e!4131617)))

(assert (=> b!6851973 (= res!2796561 (not ((_ is Concat!25522) r!7292)))))

(declare-fun e!4131618 () Bool)

(assert (=> b!6851973 (= e!4131618 e!4131617)))

(declare-fun b!6851974 () Bool)

(declare-fun res!2796562 () Bool)

(declare-fun e!4131612 () Bool)

(assert (=> b!6851974 (=> (not res!2796562) (not e!4131612))))

(declare-fun call!624090 () Bool)

(assert (=> b!6851974 (= res!2796562 call!624090)))

(assert (=> b!6851974 (= e!4131618 e!4131612)))

(declare-fun c!1275434 () Bool)

(declare-fun c!1275433 () Bool)

(declare-fun call!624091 () Bool)

(declare-fun bm!624085 () Bool)

(assert (=> bm!624085 (= call!624091 (validRegex!8413 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))))))

(declare-fun b!6851975 () Bool)

(declare-fun call!624092 () Bool)

(assert (=> b!6851975 (= e!4131612 call!624092)))

(declare-fun b!6851977 () Bool)

(declare-fun e!4131613 () Bool)

(declare-fun e!4131614 () Bool)

(assert (=> b!6851977 (= e!4131613 e!4131614)))

(assert (=> b!6851977 (= c!1275433 ((_ is Star!16677) r!7292))))

(declare-fun b!6851978 () Bool)

(assert (=> b!6851978 (= e!4131614 e!4131618)))

(assert (=> b!6851978 (= c!1275434 ((_ is Union!16677) r!7292))))

(declare-fun bm!624086 () Bool)

(assert (=> bm!624086 (= call!624090 call!624091)))

(declare-fun d!2153486 () Bool)

(declare-fun res!2796563 () Bool)

(assert (=> d!2153486 (=> res!2796563 e!4131613)))

(assert (=> d!2153486 (= res!2796563 ((_ is ElementMatch!16677) r!7292))))

(assert (=> d!2153486 (= (validRegex!8413 r!7292) e!4131613)))

(declare-fun b!6851976 () Bool)

(declare-fun e!4131615 () Bool)

(assert (=> b!6851976 (= e!4131614 e!4131615)))

(declare-fun res!2796564 () Bool)

(assert (=> b!6851976 (= res!2796564 (not (nullable!6640 (reg!17006 r!7292))))))

(assert (=> b!6851976 (=> (not res!2796564) (not e!4131615))))

(declare-fun b!6851979 () Bool)

(assert (=> b!6851979 (= e!4131615 call!624091)))

(declare-fun bm!624087 () Bool)

(assert (=> bm!624087 (= call!624092 (validRegex!8413 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))))))

(declare-fun b!6851980 () Bool)

(declare-fun e!4131616 () Bool)

(assert (=> b!6851980 (= e!4131616 call!624092)))

(declare-fun b!6851981 () Bool)

(assert (=> b!6851981 (= e!4131617 e!4131616)))

(declare-fun res!2796560 () Bool)

(assert (=> b!6851981 (=> (not res!2796560) (not e!4131616))))

(assert (=> b!6851981 (= res!2796560 call!624090)))

(assert (= (and d!2153486 (not res!2796563)) b!6851977))

(assert (= (and b!6851977 c!1275433) b!6851976))

(assert (= (and b!6851977 (not c!1275433)) b!6851978))

(assert (= (and b!6851976 res!2796564) b!6851979))

(assert (= (and b!6851978 c!1275434) b!6851974))

(assert (= (and b!6851978 (not c!1275434)) b!6851973))

(assert (= (and b!6851974 res!2796562) b!6851975))

(assert (= (and b!6851973 (not res!2796561)) b!6851981))

(assert (= (and b!6851981 res!2796560) b!6851980))

(assert (= (or b!6851975 b!6851980) bm!624087))

(assert (= (or b!6851974 b!6851981) bm!624086))

(assert (= (or b!6851979 bm!624086) bm!624085))

(declare-fun m!7589932 () Bool)

(assert (=> bm!624085 m!7589932))

(declare-fun m!7589934 () Bool)

(assert (=> b!6851976 m!7589934))

(declare-fun m!7589936 () Bool)

(assert (=> bm!624087 m!7589936))

(assert (=> start!661636 d!2153486))

(declare-fun d!2153488 () Bool)

(declare-fun e!4131619 () Bool)

(assert (=> d!2153488 e!4131619))

(declare-fun c!1275437 () Bool)

(assert (=> d!2153488 (= c!1275437 ((_ is EmptyExpr!16677) lt!2456209))))

(declare-fun lt!2456276 () Bool)

(declare-fun e!4131622 () Bool)

(assert (=> d!2153488 (= lt!2456276 e!4131622)))

(declare-fun c!1275436 () Bool)

(assert (=> d!2153488 (= c!1275436 (isEmpty!38579 s!2326))))

(assert (=> d!2153488 (validRegex!8413 lt!2456209)))

(assert (=> d!2153488 (= (matchR!8860 lt!2456209 s!2326) lt!2456276)))

(declare-fun b!6851982 () Bool)

(declare-fun res!2796570 () Bool)

(declare-fun e!4131621 () Bool)

(assert (=> b!6851982 (=> res!2796570 e!4131621)))

(assert (=> b!6851982 (= res!2796570 (not (isEmpty!38579 (tail!12808 s!2326))))))

(declare-fun b!6851983 () Bool)

(assert (=> b!6851983 (= e!4131622 (matchR!8860 (derivativeStep!5323 lt!2456209 (head!13733 s!2326)) (tail!12808 s!2326)))))

(declare-fun b!6851984 () Bool)

(assert (=> b!6851984 (= e!4131621 (not (= (head!13733 s!2326) (c!1275345 lt!2456209))))))

(declare-fun b!6851985 () Bool)

(declare-fun res!2796569 () Bool)

(declare-fun e!4131624 () Bool)

(assert (=> b!6851985 (=> (not res!2796569) (not e!4131624))))

(assert (=> b!6851985 (= res!2796569 (isEmpty!38579 (tail!12808 s!2326)))))

(declare-fun b!6851986 () Bool)

(declare-fun e!4131623 () Bool)

(declare-fun e!4131625 () Bool)

(assert (=> b!6851986 (= e!4131623 e!4131625)))

(declare-fun res!2796571 () Bool)

(assert (=> b!6851986 (=> (not res!2796571) (not e!4131625))))

(assert (=> b!6851986 (= res!2796571 (not lt!2456276))))

(declare-fun b!6851987 () Bool)

(declare-fun res!2796572 () Bool)

(assert (=> b!6851987 (=> res!2796572 e!4131623)))

(assert (=> b!6851987 (= res!2796572 e!4131624)))

(declare-fun res!2796568 () Bool)

(assert (=> b!6851987 (=> (not res!2796568) (not e!4131624))))

(assert (=> b!6851987 (= res!2796568 lt!2456276)))

(declare-fun b!6851988 () Bool)

(assert (=> b!6851988 (= e!4131625 e!4131621)))

(declare-fun res!2796566 () Bool)

(assert (=> b!6851988 (=> res!2796566 e!4131621)))

(declare-fun call!624093 () Bool)

(assert (=> b!6851988 (= res!2796566 call!624093)))

(declare-fun b!6851989 () Bool)

(assert (=> b!6851989 (= e!4131622 (nullable!6640 lt!2456209))))

(declare-fun b!6851990 () Bool)

(declare-fun e!4131620 () Bool)

(assert (=> b!6851990 (= e!4131619 e!4131620)))

(declare-fun c!1275435 () Bool)

(assert (=> b!6851990 (= c!1275435 ((_ is EmptyLang!16677) lt!2456209))))

(declare-fun b!6851991 () Bool)

(declare-fun res!2796567 () Bool)

(assert (=> b!6851991 (=> (not res!2796567) (not e!4131624))))

(assert (=> b!6851991 (= res!2796567 (not call!624093))))

(declare-fun b!6851992 () Bool)

(assert (=> b!6851992 (= e!4131619 (= lt!2456276 call!624093))))

(declare-fun bm!624088 () Bool)

(assert (=> bm!624088 (= call!624093 (isEmpty!38579 s!2326))))

(declare-fun b!6851993 () Bool)

(assert (=> b!6851993 (= e!4131620 (not lt!2456276))))

(declare-fun b!6851994 () Bool)

(assert (=> b!6851994 (= e!4131624 (= (head!13733 s!2326) (c!1275345 lt!2456209)))))

(declare-fun b!6851995 () Bool)

(declare-fun res!2796565 () Bool)

(assert (=> b!6851995 (=> res!2796565 e!4131623)))

(assert (=> b!6851995 (= res!2796565 (not ((_ is ElementMatch!16677) lt!2456209)))))

(assert (=> b!6851995 (= e!4131620 e!4131623)))

(assert (= (and d!2153488 c!1275436) b!6851989))

(assert (= (and d!2153488 (not c!1275436)) b!6851983))

(assert (= (and d!2153488 c!1275437) b!6851992))

(assert (= (and d!2153488 (not c!1275437)) b!6851990))

(assert (= (and b!6851990 c!1275435) b!6851993))

(assert (= (and b!6851990 (not c!1275435)) b!6851995))

(assert (= (and b!6851995 (not res!2796565)) b!6851987))

(assert (= (and b!6851987 res!2796568) b!6851991))

(assert (= (and b!6851991 res!2796567) b!6851985))

(assert (= (and b!6851985 res!2796569) b!6851994))

(assert (= (and b!6851987 (not res!2796572)) b!6851986))

(assert (= (and b!6851986 res!2796571) b!6851988))

(assert (= (and b!6851988 (not res!2796566)) b!6851982))

(assert (= (and b!6851982 (not res!2796570)) b!6851984))

(assert (= (or b!6851992 b!6851991 b!6851988) bm!624088))

(assert (=> d!2153488 m!7589856))

(assert (=> d!2153488 m!7589714))

(assert (=> b!6851983 m!7589900))

(assert (=> b!6851983 m!7589900))

(declare-fun m!7589938 () Bool)

(assert (=> b!6851983 m!7589938))

(assert (=> b!6851983 m!7589908))

(assert (=> b!6851983 m!7589938))

(assert (=> b!6851983 m!7589908))

(declare-fun m!7589940 () Bool)

(assert (=> b!6851983 m!7589940))

(assert (=> bm!624088 m!7589856))

(assert (=> b!6851984 m!7589900))

(assert (=> b!6851985 m!7589908))

(assert (=> b!6851985 m!7589908))

(assert (=> b!6851985 m!7589912))

(assert (=> b!6851994 m!7589900))

(declare-fun m!7589942 () Bool)

(assert (=> b!6851989 m!7589942))

(assert (=> b!6851982 m!7589908))

(assert (=> b!6851982 m!7589908))

(assert (=> b!6851982 m!7589912))

(assert (=> b!6851578 d!2153488))

(declare-fun d!2153490 () Bool)

(declare-fun lt!2456279 () Bool)

(declare-fun content!12986 (List!66330) (InoxSet Regex!16677))

(assert (=> d!2153490 (= lt!2456279 (select (content!12986 lt!2456210) lt!2456209))))

(declare-fun e!4131631 () Bool)

(assert (=> d!2153490 (= lt!2456279 e!4131631)))

(declare-fun res!2796577 () Bool)

(assert (=> d!2153490 (=> (not res!2796577) (not e!4131631))))

(assert (=> d!2153490 (= res!2796577 ((_ is Cons!66206) lt!2456210))))

(assert (=> d!2153490 (= (contains!20329 lt!2456210 lt!2456209) lt!2456279)))

(declare-fun b!6852000 () Bool)

(declare-fun e!4131630 () Bool)

(assert (=> b!6852000 (= e!4131631 e!4131630)))

(declare-fun res!2796578 () Bool)

(assert (=> b!6852000 (=> res!2796578 e!4131630)))

(assert (=> b!6852000 (= res!2796578 (= (h!72654 lt!2456210) lt!2456209))))

(declare-fun b!6852001 () Bool)

(assert (=> b!6852001 (= e!4131630 (contains!20329 (t!380073 lt!2456210) lt!2456209))))

(assert (= (and d!2153490 res!2796577) b!6852000))

(assert (= (and b!6852000 (not res!2796578)) b!6852001))

(declare-fun m!7589944 () Bool)

(assert (=> d!2153490 m!7589944))

(declare-fun m!7589946 () Bool)

(assert (=> d!2153490 m!7589946))

(declare-fun m!7589948 () Bool)

(assert (=> b!6852001 m!7589948))

(assert (=> b!6851557 d!2153490))

(declare-fun b!6852014 () Bool)

(declare-fun e!4131640 () Regex!16677)

(assert (=> b!6852014 (= e!4131640 (getWitness!949 (t!380073 lt!2456210) lambda!387348))))

(declare-fun b!6852015 () Bool)

(declare-fun lt!2456285 () Unit!160081)

(declare-fun Unit!160085 () Unit!160081)

(assert (=> b!6852015 (= lt!2456285 Unit!160085)))

(assert (=> b!6852015 false))

(declare-fun head!13734 (List!66330) Regex!16677)

(assert (=> b!6852015 (= e!4131640 (head!13734 lt!2456210))))

(declare-fun d!2153492 () Bool)

(declare-fun e!4131643 () Bool)

(assert (=> d!2153492 e!4131643))

(declare-fun res!2796583 () Bool)

(assert (=> d!2153492 (=> (not res!2796583) (not e!4131643))))

(declare-fun lt!2456284 () Regex!16677)

(declare-fun dynLambda!26464 (Int Regex!16677) Bool)

(assert (=> d!2153492 (= res!2796583 (dynLambda!26464 lambda!387348 lt!2456284))))

(declare-fun e!4131642 () Regex!16677)

(assert (=> d!2153492 (= lt!2456284 e!4131642)))

(declare-fun c!1275443 () Bool)

(declare-fun e!4131641 () Bool)

(assert (=> d!2153492 (= c!1275443 e!4131641)))

(declare-fun res!2796584 () Bool)

(assert (=> d!2153492 (=> (not res!2796584) (not e!4131641))))

(assert (=> d!2153492 (= res!2796584 ((_ is Cons!66206) lt!2456210))))

(assert (=> d!2153492 (exists!2781 lt!2456210 lambda!387348)))

(assert (=> d!2153492 (= (getWitness!949 lt!2456210 lambda!387348) lt!2456284)))

(declare-fun b!6852016 () Bool)

(assert (=> b!6852016 (= e!4131642 (h!72654 lt!2456210))))

(declare-fun b!6852017 () Bool)

(assert (=> b!6852017 (= e!4131641 (dynLambda!26464 lambda!387348 (h!72654 lt!2456210)))))

(declare-fun b!6852018 () Bool)

(assert (=> b!6852018 (= e!4131642 e!4131640)))

(declare-fun c!1275442 () Bool)

(assert (=> b!6852018 (= c!1275442 ((_ is Cons!66206) lt!2456210))))

(declare-fun b!6852019 () Bool)

(assert (=> b!6852019 (= e!4131643 (contains!20329 lt!2456210 lt!2456284))))

(assert (= (and d!2153492 res!2796584) b!6852017))

(assert (= (and d!2153492 c!1275443) b!6852016))

(assert (= (and d!2153492 (not c!1275443)) b!6852018))

(assert (= (and b!6852018 c!1275442) b!6852014))

(assert (= (and b!6852018 (not c!1275442)) b!6852015))

(assert (= (and d!2153492 res!2796583) b!6852019))

(declare-fun b_lambda!258667 () Bool)

(assert (=> (not b_lambda!258667) (not d!2153492)))

(declare-fun b_lambda!258669 () Bool)

(assert (=> (not b_lambda!258669) (not b!6852017)))

(declare-fun m!7589950 () Bool)

(assert (=> b!6852019 m!7589950))

(declare-fun m!7589952 () Bool)

(assert (=> b!6852014 m!7589952))

(declare-fun m!7589954 () Bool)

(assert (=> d!2153492 m!7589954))

(assert (=> d!2153492 m!7589692))

(declare-fun m!7589956 () Bool)

(assert (=> b!6852017 m!7589956))

(declare-fun m!7589958 () Bool)

(assert (=> b!6852015 m!7589958))

(assert (=> b!6851557 d!2153492))

(declare-fun d!2153494 () Bool)

(assert (=> d!2153494 (= (isEmpty!38577 (t!380074 zl!343)) ((_ is Nil!66207) (t!380074 zl!343)))))

(assert (=> b!6851567 d!2153494))

(declare-fun bs!1831381 () Bool)

(declare-fun d!2153496 () Bool)

(assert (= bs!1831381 (and d!2153496 b!6851566)))

(declare-fun lambda!387395 () Int)

(assert (=> bs!1831381 (not (= lambda!387395 lambda!387348))))

(declare-fun bs!1831382 () Bool)

(assert (= bs!1831382 (and d!2153496 d!2153480)))

(assert (=> bs!1831382 (not (= lambda!387395 lambda!387392))))

(assert (=> d!2153496 true))

(declare-fun order!27663 () Int)

(declare-fun dynLambda!26465 (Int Int) Int)

(assert (=> d!2153496 (< (dynLambda!26465 order!27663 lambda!387348) (dynLambda!26465 order!27663 lambda!387395))))

(assert (=> d!2153496 (= (exists!2781 lt!2456210 lambda!387348) (not (forall!15858 lt!2456210 lambda!387395)))))

(declare-fun bs!1831383 () Bool)

(assert (= bs!1831383 d!2153496))

(declare-fun m!7589960 () Bool)

(assert (=> bs!1831383 m!7589960))

(assert (=> b!6851566 d!2153496))

(declare-fun bs!1831384 () Bool)

(declare-fun d!2153498 () Bool)

(assert (= bs!1831384 (and d!2153498 b!6851566)))

(declare-fun lambda!387400 () Int)

(assert (=> bs!1831384 (not (= lambda!387400 lambda!387348))))

(declare-fun bs!1831385 () Bool)

(assert (= bs!1831385 (and d!2153498 d!2153480)))

(assert (=> bs!1831385 (= lambda!387400 lambda!387392)))

(declare-fun bs!1831386 () Bool)

(assert (= bs!1831386 (and d!2153498 d!2153496)))

(assert (=> bs!1831386 (not (= lambda!387400 lambda!387395))))

(declare-fun lambda!387401 () Int)

(assert (=> bs!1831384 (= lambda!387401 lambda!387348)))

(assert (=> bs!1831385 (not (= lambda!387401 lambda!387392))))

(assert (=> bs!1831386 (not (= lambda!387401 lambda!387395))))

(declare-fun bs!1831387 () Bool)

(assert (= bs!1831387 d!2153498))

(assert (=> bs!1831387 (not (= lambda!387401 lambda!387400))))

(assert (=> d!2153498 true))

(assert (=> d!2153498 (= (matchR!8860 r!7292 s!2326) (exists!2781 lt!2456210 lambda!387401))))

(declare-fun lt!2456288 () Unit!160081)

(declare-fun choose!51062 (Regex!16677 List!66330 List!66332) Unit!160081)

(assert (=> d!2153498 (= lt!2456288 (choose!51062 r!7292 lt!2456210 s!2326))))

(assert (=> d!2153498 (forall!15858 lt!2456210 lambda!387400)))

(assert (=> d!2153498 (= (matchRGenUnionSpec!316 r!7292 lt!2456210 s!2326) lt!2456288)))

(assert (=> bs!1831387 m!7589682))

(declare-fun m!7589962 () Bool)

(assert (=> bs!1831387 m!7589962))

(declare-fun m!7589964 () Bool)

(assert (=> bs!1831387 m!7589964))

(declare-fun m!7589966 () Bool)

(assert (=> bs!1831387 m!7589966))

(assert (=> b!6851566 d!2153498))

(declare-fun bs!1831388 () Bool)

(declare-fun d!2153500 () Bool)

(assert (= bs!1831388 (and d!2153500 d!2153480)))

(declare-fun lambda!387404 () Int)

(assert (=> bs!1831388 (= lambda!387404 lambda!387392)))

(declare-fun bs!1831389 () Bool)

(assert (= bs!1831389 (and d!2153500 d!2153496)))

(assert (=> bs!1831389 (not (= lambda!387404 lambda!387395))))

(declare-fun bs!1831390 () Bool)

(assert (= bs!1831390 (and d!2153500 b!6851566)))

(assert (=> bs!1831390 (not (= lambda!387404 lambda!387348))))

(declare-fun bs!1831391 () Bool)

(assert (= bs!1831391 (and d!2153500 d!2153498)))

(assert (=> bs!1831391 (not (= lambda!387404 lambda!387401))))

(assert (=> bs!1831391 (= lambda!387404 lambda!387400)))

(declare-fun lt!2456291 () List!66330)

(assert (=> d!2153500 (forall!15858 lt!2456291 lambda!387404)))

(declare-fun e!4131648 () List!66330)

(assert (=> d!2153500 (= lt!2456291 e!4131648)))

(declare-fun c!1275446 () Bool)

(assert (=> d!2153500 (= c!1275446 ((_ is Cons!66207) zl!343))))

(assert (=> d!2153500 (= (unfocusZipperList!2094 zl!343) lt!2456291)))

(declare-fun b!6852028 () Bool)

(declare-fun generalisedConcat!2268 (List!66330) Regex!16677)

(assert (=> b!6852028 (= e!4131648 (Cons!66206 (generalisedConcat!2268 (exprs!6561 (h!72655 zl!343))) (unfocusZipperList!2094 (t!380074 zl!343))))))

(declare-fun b!6852029 () Bool)

(assert (=> b!6852029 (= e!4131648 Nil!66206)))

(assert (= (and d!2153500 c!1275446) b!6852028))

(assert (= (and d!2153500 (not c!1275446)) b!6852029))

(declare-fun m!7589968 () Bool)

(assert (=> d!2153500 m!7589968))

(declare-fun m!7589970 () Bool)

(assert (=> b!6852028 m!7589970))

(declare-fun m!7589972 () Bool)

(assert (=> b!6852028 m!7589972))

(assert (=> b!6851566 d!2153500))

(assert (=> b!6851575 d!2153494))

(declare-fun bs!1831392 () Bool)

(declare-fun d!2153502 () Bool)

(assert (= bs!1831392 (and d!2153502 d!2153480)))

(declare-fun lambda!387405 () Int)

(assert (=> bs!1831392 (= lambda!387405 lambda!387392)))

(declare-fun bs!1831393 () Bool)

(assert (= bs!1831393 (and d!2153502 d!2153496)))

(assert (=> bs!1831393 (not (= lambda!387405 lambda!387395))))

(declare-fun bs!1831394 () Bool)

(assert (= bs!1831394 (and d!2153502 b!6851566)))

(assert (=> bs!1831394 (not (= lambda!387405 lambda!387348))))

(declare-fun bs!1831395 () Bool)

(assert (= bs!1831395 (and d!2153502 d!2153498)))

(assert (=> bs!1831395 (not (= lambda!387405 lambda!387401))))

(declare-fun bs!1831396 () Bool)

(assert (= bs!1831396 (and d!2153502 d!2153500)))

(assert (=> bs!1831396 (= lambda!387405 lambda!387404)))

(assert (=> bs!1831395 (= lambda!387405 lambda!387400)))

(assert (=> d!2153502 (= (inv!84939 (h!72655 zl!343)) (forall!15858 (exprs!6561 (h!72655 zl!343)) lambda!387405))))

(declare-fun bs!1831397 () Bool)

(assert (= bs!1831397 d!2153502))

(declare-fun m!7589974 () Bool)

(assert (=> bs!1831397 m!7589974))

(assert (=> b!6851574 d!2153502))

(declare-fun d!2153504 () Bool)

(assert (=> d!2153504 (< (contextDepthTotal!404 lt!2456204) (zipperDepthTotal!432 zl!343))))

(declare-fun lt!2456294 () Unit!160081)

(declare-fun choose!51063 (List!66331 Context!12122) Unit!160081)

(assert (=> d!2153504 (= lt!2456294 (choose!51063 zl!343 lt!2456204))))

(declare-fun contains!20331 (List!66331 Context!12122) Bool)

(assert (=> d!2153504 (contains!20331 zl!343 lt!2456204)))

(assert (=> d!2153504 (= (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!36 zl!343 lt!2456204) lt!2456294)))

(declare-fun bs!1831398 () Bool)

(assert (= bs!1831398 d!2153504))

(assert (=> bs!1831398 m!7589724))

(assert (=> bs!1831398 m!7589718))

(declare-fun m!7589976 () Bool)

(assert (=> bs!1831398 m!7589976))

(declare-fun m!7589978 () Bool)

(assert (=> bs!1831398 m!7589978))

(assert (=> b!6851563 d!2153504))

(declare-fun d!2153506 () Bool)

(declare-fun lt!2456297 () Int)

(assert (=> d!2153506 (>= lt!2456297 0)))

(declare-fun e!4131651 () Int)

(assert (=> d!2153506 (= lt!2456297 e!4131651)))

(declare-fun c!1275451 () Bool)

(assert (=> d!2153506 (= c!1275451 ((_ is Cons!66206) (exprs!6561 lt!2456204)))))

(assert (=> d!2153506 (= (contextDepthTotal!404 lt!2456204) lt!2456297)))

(declare-fun b!6852034 () Bool)

(declare-fun regexDepthTotal!251 (Regex!16677) Int)

(assert (=> b!6852034 (= e!4131651 (+ (regexDepthTotal!251 (h!72654 (exprs!6561 lt!2456204))) (contextDepthTotal!404 (Context!12123 (t!380073 (exprs!6561 lt!2456204))))))))

(declare-fun b!6852035 () Bool)

(assert (=> b!6852035 (= e!4131651 1)))

(assert (= (and d!2153506 c!1275451) b!6852034))

(assert (= (and d!2153506 (not c!1275451)) b!6852035))

(declare-fun m!7589980 () Bool)

(assert (=> b!6852034 m!7589980))

(declare-fun m!7589982 () Bool)

(assert (=> b!6852034 m!7589982))

(assert (=> b!6851563 d!2153506))

(declare-fun d!2153508 () Bool)

(declare-fun lt!2456300 () Int)

(assert (=> d!2153508 (>= lt!2456300 0)))

(declare-fun e!4131654 () Int)

(assert (=> d!2153508 (= lt!2456300 e!4131654)))

(declare-fun c!1275454 () Bool)

(assert (=> d!2153508 (= c!1275454 ((_ is Cons!66207) zl!343))))

(assert (=> d!2153508 (= (zipperDepthTotal!432 zl!343) lt!2456300)))

(declare-fun b!6852040 () Bool)

(assert (=> b!6852040 (= e!4131654 (+ (contextDepthTotal!404 (h!72655 zl!343)) (zipperDepthTotal!432 (t!380074 zl!343))))))

(declare-fun b!6852041 () Bool)

(assert (=> b!6852041 (= e!4131654 0)))

(assert (= (and d!2153508 c!1275454) b!6852040))

(assert (= (and d!2153508 (not c!1275454)) b!6852041))

(declare-fun m!7589984 () Bool)

(assert (=> b!6852040 m!7589984))

(declare-fun m!7589986 () Bool)

(assert (=> b!6852040 m!7589986))

(assert (=> b!6851563 d!2153508))

(declare-fun d!2153510 () Bool)

(declare-fun lt!2456301 () Int)

(assert (=> d!2153510 (>= lt!2456301 0)))

(declare-fun e!4131655 () Int)

(assert (=> d!2153510 (= lt!2456301 e!4131655)))

(declare-fun c!1275455 () Bool)

(assert (=> d!2153510 (= c!1275455 ((_ is Cons!66207) lt!2456208))))

(assert (=> d!2153510 (= (zipperDepthTotal!432 lt!2456208) lt!2456301)))

(declare-fun b!6852042 () Bool)

(assert (=> b!6852042 (= e!4131655 (+ (contextDepthTotal!404 (h!72655 lt!2456208)) (zipperDepthTotal!432 (t!380074 lt!2456208))))))

(declare-fun b!6852043 () Bool)

(assert (=> b!6852043 (= e!4131655 0)))

(assert (= (and d!2153510 c!1275455) b!6852042))

(assert (= (and d!2153510 (not c!1275455)) b!6852043))

(declare-fun m!7589988 () Bool)

(assert (=> b!6852042 m!7589988))

(declare-fun m!7589990 () Bool)

(assert (=> b!6852042 m!7589990))

(assert (=> b!6851563 d!2153510))

(declare-fun b!6852056 () Bool)

(declare-fun e!4131666 () Context!12122)

(assert (=> b!6852056 (= e!4131666 (getWitness!950 (t!380074 zl!343) lambda!387349))))

(declare-fun d!2153512 () Bool)

(declare-fun e!4131665 () Bool)

(assert (=> d!2153512 e!4131665))

(declare-fun res!2796591 () Bool)

(assert (=> d!2153512 (=> (not res!2796591) (not e!4131665))))

(declare-fun lt!2456307 () Context!12122)

(declare-fun dynLambda!26466 (Int Context!12122) Bool)

(assert (=> d!2153512 (= res!2796591 (dynLambda!26466 lambda!387349 lt!2456307))))

(declare-fun e!4131664 () Context!12122)

(assert (=> d!2153512 (= lt!2456307 e!4131664)))

(declare-fun c!1275460 () Bool)

(declare-fun e!4131667 () Bool)

(assert (=> d!2153512 (= c!1275460 e!4131667)))

(declare-fun res!2796592 () Bool)

(assert (=> d!2153512 (=> (not res!2796592) (not e!4131667))))

(assert (=> d!2153512 (= res!2796592 ((_ is Cons!66207) zl!343))))

(assert (=> d!2153512 (exists!2780 zl!343 lambda!387349)))

(assert (=> d!2153512 (= (getWitness!950 zl!343 lambda!387349) lt!2456307)))

(declare-fun b!6852057 () Bool)

(assert (=> b!6852057 (= e!4131667 (dynLambda!26466 lambda!387349 (h!72655 zl!343)))))

(declare-fun b!6852058 () Bool)

(assert (=> b!6852058 (= e!4131664 (h!72655 zl!343))))

(declare-fun b!6852059 () Bool)

(assert (=> b!6852059 (= e!4131665 (contains!20331 zl!343 lt!2456307))))

(declare-fun b!6852060 () Bool)

(assert (=> b!6852060 (= e!4131664 e!4131666)))

(declare-fun c!1275461 () Bool)

(assert (=> b!6852060 (= c!1275461 ((_ is Cons!66207) zl!343))))

(declare-fun b!6852061 () Bool)

(declare-fun lt!2456306 () Unit!160081)

(declare-fun Unit!160086 () Unit!160081)

(assert (=> b!6852061 (= lt!2456306 Unit!160086)))

(assert (=> b!6852061 false))

(declare-fun head!13735 (List!66331) Context!12122)

(assert (=> b!6852061 (= e!4131666 (head!13735 zl!343))))

(assert (= (and d!2153512 res!2796592) b!6852057))

(assert (= (and d!2153512 c!1275460) b!6852058))

(assert (= (and d!2153512 (not c!1275460)) b!6852060))

(assert (= (and b!6852060 c!1275461) b!6852056))

(assert (= (and b!6852060 (not c!1275461)) b!6852061))

(assert (= (and d!2153512 res!2796591) b!6852059))

(declare-fun b_lambda!258671 () Bool)

(assert (=> (not b_lambda!258671) (not d!2153512)))

(declare-fun b_lambda!258673 () Bool)

(assert (=> (not b_lambda!258673) (not b!6852057)))

(declare-fun m!7589992 () Bool)

(assert (=> d!2153512 m!7589992))

(assert (=> d!2153512 m!7589710))

(declare-fun m!7589994 () Bool)

(assert (=> b!6852056 m!7589994))

(declare-fun m!7589996 () Bool)

(assert (=> b!6852059 m!7589996))

(declare-fun m!7589998 () Bool)

(assert (=> b!6852057 m!7589998))

(declare-fun m!7590000 () Bool)

(assert (=> b!6852061 m!7590000))

(assert (=> b!6851563 d!2153512))

(declare-fun d!2153514 () Bool)

(declare-fun lt!2456308 () Regex!16677)

(assert (=> d!2153514 (validRegex!8413 lt!2456308)))

(assert (=> d!2153514 (= lt!2456308 (generalisedUnion!2515 (unfocusZipperList!2094 zl!343)))))

(assert (=> d!2153514 (= (unfocusZipper!2419 zl!343) lt!2456308)))

(declare-fun bs!1831399 () Bool)

(assert (= bs!1831399 d!2153514))

(declare-fun m!7590002 () Bool)

(assert (=> bs!1831399 m!7590002))

(assert (=> bs!1831399 m!7589696))

(assert (=> bs!1831399 m!7589696))

(declare-fun m!7590004 () Bool)

(assert (=> bs!1831399 m!7590004))

(assert (=> b!6851562 d!2153514))

(assert (=> b!6851572 d!2153496))

(declare-fun b!6852073 () Bool)

(declare-fun e!4131670 () Bool)

(declare-fun tp!1878180 () Bool)

(declare-fun tp!1878176 () Bool)

(assert (=> b!6852073 (= e!4131670 (and tp!1878180 tp!1878176))))

(assert (=> b!6851561 (= tp!1878107 e!4131670)))

(declare-fun b!6852072 () Bool)

(assert (=> b!6852072 (= e!4131670 tp_is_empty!42607)))

(declare-fun b!6852074 () Bool)

(declare-fun tp!1878177 () Bool)

(assert (=> b!6852074 (= e!4131670 tp!1878177)))

(declare-fun b!6852075 () Bool)

(declare-fun tp!1878178 () Bool)

(declare-fun tp!1878179 () Bool)

(assert (=> b!6852075 (= e!4131670 (and tp!1878178 tp!1878179))))

(assert (= (and b!6851561 ((_ is ElementMatch!16677) (reg!17006 r!7292))) b!6852072))

(assert (= (and b!6851561 ((_ is Concat!25522) (reg!17006 r!7292))) b!6852073))

(assert (= (and b!6851561 ((_ is Star!16677) (reg!17006 r!7292))) b!6852074))

(assert (= (and b!6851561 ((_ is Union!16677) (reg!17006 r!7292))) b!6852075))

(declare-fun b!6852077 () Bool)

(declare-fun e!4131671 () Bool)

(declare-fun tp!1878185 () Bool)

(declare-fun tp!1878181 () Bool)

(assert (=> b!6852077 (= e!4131671 (and tp!1878185 tp!1878181))))

(assert (=> b!6851577 (= tp!1878098 e!4131671)))

(declare-fun b!6852076 () Bool)

(assert (=> b!6852076 (= e!4131671 tp_is_empty!42607)))

(declare-fun b!6852078 () Bool)

(declare-fun tp!1878182 () Bool)

(assert (=> b!6852078 (= e!4131671 tp!1878182)))

(declare-fun b!6852079 () Bool)

(declare-fun tp!1878183 () Bool)

(declare-fun tp!1878184 () Bool)

(assert (=> b!6852079 (= e!4131671 (and tp!1878183 tp!1878184))))

(assert (= (and b!6851577 ((_ is ElementMatch!16677) (regOne!33867 r!7292))) b!6852076))

(assert (= (and b!6851577 ((_ is Concat!25522) (regOne!33867 r!7292))) b!6852077))

(assert (= (and b!6851577 ((_ is Star!16677) (regOne!33867 r!7292))) b!6852078))

(assert (= (and b!6851577 ((_ is Union!16677) (regOne!33867 r!7292))) b!6852079))

(declare-fun b!6852081 () Bool)

(declare-fun e!4131672 () Bool)

(declare-fun tp!1878190 () Bool)

(declare-fun tp!1878186 () Bool)

(assert (=> b!6852081 (= e!4131672 (and tp!1878190 tp!1878186))))

(assert (=> b!6851577 (= tp!1878102 e!4131672)))

(declare-fun b!6852080 () Bool)

(assert (=> b!6852080 (= e!4131672 tp_is_empty!42607)))

(declare-fun b!6852082 () Bool)

(declare-fun tp!1878187 () Bool)

(assert (=> b!6852082 (= e!4131672 tp!1878187)))

(declare-fun b!6852083 () Bool)

(declare-fun tp!1878188 () Bool)

(declare-fun tp!1878189 () Bool)

(assert (=> b!6852083 (= e!4131672 (and tp!1878188 tp!1878189))))

(assert (= (and b!6851577 ((_ is ElementMatch!16677) (regTwo!33867 r!7292))) b!6852080))

(assert (= (and b!6851577 ((_ is Concat!25522) (regTwo!33867 r!7292))) b!6852081))

(assert (= (and b!6851577 ((_ is Star!16677) (regTwo!33867 r!7292))) b!6852082))

(assert (= (and b!6851577 ((_ is Union!16677) (regTwo!33867 r!7292))) b!6852083))

(declare-fun b!6852088 () Bool)

(declare-fun e!4131675 () Bool)

(declare-fun tp!1878195 () Bool)

(declare-fun tp!1878196 () Bool)

(assert (=> b!6852088 (= e!4131675 (and tp!1878195 tp!1878196))))

(assert (=> b!6851576 (= tp!1878103 e!4131675)))

(assert (= (and b!6851576 ((_ is Cons!66206) (exprs!6561 (h!72655 zl!343)))) b!6852088))

(declare-fun b!6852090 () Bool)

(declare-fun e!4131676 () Bool)

(declare-fun tp!1878201 () Bool)

(declare-fun tp!1878197 () Bool)

(assert (=> b!6852090 (= e!4131676 (and tp!1878201 tp!1878197))))

(assert (=> b!6851565 (= tp!1878104 e!4131676)))

(declare-fun b!6852089 () Bool)

(assert (=> b!6852089 (= e!4131676 tp_is_empty!42607)))

(declare-fun b!6852091 () Bool)

(declare-fun tp!1878198 () Bool)

(assert (=> b!6852091 (= e!4131676 tp!1878198)))

(declare-fun b!6852092 () Bool)

(declare-fun tp!1878199 () Bool)

(declare-fun tp!1878200 () Bool)

(assert (=> b!6852092 (= e!4131676 (and tp!1878199 tp!1878200))))

(assert (= (and b!6851565 ((_ is ElementMatch!16677) (regOne!33866 r!7292))) b!6852089))

(assert (= (and b!6851565 ((_ is Concat!25522) (regOne!33866 r!7292))) b!6852090))

(assert (= (and b!6851565 ((_ is Star!16677) (regOne!33866 r!7292))) b!6852091))

(assert (= (and b!6851565 ((_ is Union!16677) (regOne!33866 r!7292))) b!6852092))

(declare-fun b!6852094 () Bool)

(declare-fun e!4131677 () Bool)

(declare-fun tp!1878206 () Bool)

(declare-fun tp!1878202 () Bool)

(assert (=> b!6852094 (= e!4131677 (and tp!1878206 tp!1878202))))

(assert (=> b!6851565 (= tp!1878106 e!4131677)))

(declare-fun b!6852093 () Bool)

(assert (=> b!6852093 (= e!4131677 tp_is_empty!42607)))

(declare-fun b!6852095 () Bool)

(declare-fun tp!1878203 () Bool)

(assert (=> b!6852095 (= e!4131677 tp!1878203)))

(declare-fun b!6852096 () Bool)

(declare-fun tp!1878204 () Bool)

(declare-fun tp!1878205 () Bool)

(assert (=> b!6852096 (= e!4131677 (and tp!1878204 tp!1878205))))

(assert (= (and b!6851565 ((_ is ElementMatch!16677) (regTwo!33866 r!7292))) b!6852093))

(assert (= (and b!6851565 ((_ is Concat!25522) (regTwo!33866 r!7292))) b!6852094))

(assert (= (and b!6851565 ((_ is Star!16677) (regTwo!33866 r!7292))) b!6852095))

(assert (= (and b!6851565 ((_ is Union!16677) (regTwo!33866 r!7292))) b!6852096))

(declare-fun b!6852097 () Bool)

(declare-fun e!4131678 () Bool)

(declare-fun tp!1878207 () Bool)

(declare-fun tp!1878208 () Bool)

(assert (=> b!6852097 (= e!4131678 (and tp!1878207 tp!1878208))))

(assert (=> b!6851564 (= tp!1878105 e!4131678)))

(assert (= (and b!6851564 ((_ is Cons!66206) (exprs!6561 setElem!47097))) b!6852097))

(declare-fun condSetEmpty!47103 () Bool)

(assert (=> setNonEmpty!47097 (= condSetEmpty!47103 (= setRest!47097 ((as const (Array Context!12122 Bool)) false)))))

(declare-fun setRes!47103 () Bool)

(assert (=> setNonEmpty!47097 (= tp!1878100 setRes!47103)))

(declare-fun setIsEmpty!47103 () Bool)

(assert (=> setIsEmpty!47103 setRes!47103))

(declare-fun e!4131681 () Bool)

(declare-fun tp!1878213 () Bool)

(declare-fun setElem!47103 () Context!12122)

(declare-fun setNonEmpty!47103 () Bool)

(assert (=> setNonEmpty!47103 (= setRes!47103 (and tp!1878213 (inv!84939 setElem!47103) e!4131681))))

(declare-fun setRest!47103 () (InoxSet Context!12122))

(assert (=> setNonEmpty!47103 (= setRest!47097 ((_ map or) (store ((as const (Array Context!12122 Bool)) false) setElem!47103 true) setRest!47103))))

(declare-fun b!6852102 () Bool)

(declare-fun tp!1878214 () Bool)

(assert (=> b!6852102 (= e!4131681 tp!1878214)))

(assert (= (and setNonEmpty!47097 condSetEmpty!47103) setIsEmpty!47103))

(assert (= (and setNonEmpty!47097 (not condSetEmpty!47103)) setNonEmpty!47103))

(assert (= setNonEmpty!47103 b!6852102))

(declare-fun m!7590006 () Bool)

(assert (=> setNonEmpty!47103 m!7590006))

(declare-fun b!6852110 () Bool)

(declare-fun e!4131687 () Bool)

(declare-fun tp!1878219 () Bool)

(assert (=> b!6852110 (= e!4131687 tp!1878219)))

(declare-fun b!6852109 () Bool)

(declare-fun tp!1878220 () Bool)

(declare-fun e!4131686 () Bool)

(assert (=> b!6852109 (= e!4131686 (and (inv!84939 (h!72655 (t!380074 zl!343))) e!4131687 tp!1878220))))

(assert (=> b!6851574 (= tp!1878099 e!4131686)))

(assert (= b!6852109 b!6852110))

(assert (= (and b!6851574 ((_ is Cons!66207) (t!380074 zl!343))) b!6852109))

(declare-fun m!7590008 () Bool)

(assert (=> b!6852109 m!7590008))

(declare-fun b!6852115 () Bool)

(declare-fun e!4131690 () Bool)

(declare-fun tp!1878223 () Bool)

(assert (=> b!6852115 (= e!4131690 (and tp_is_empty!42607 tp!1878223))))

(assert (=> b!6851573 (= tp!1878101 e!4131690)))

(assert (= (and b!6851573 ((_ is Cons!66208) (t!380075 s!2326))) b!6852115))

(declare-fun b_lambda!258675 () Bool)

(assert (= b_lambda!258671 (or b!6851560 b_lambda!258675)))

(declare-fun bs!1831400 () Bool)

(declare-fun d!2153516 () Bool)

(assert (= bs!1831400 (and d!2153516 b!6851560)))

(assert (=> bs!1831400 (= (dynLambda!26466 lambda!387349 lt!2456307) (= (generalisedConcat!2268 (exprs!6561 lt!2456307)) lt!2456209))))

(declare-fun m!7590010 () Bool)

(assert (=> bs!1831400 m!7590010))

(assert (=> d!2153512 d!2153516))

(declare-fun b_lambda!258677 () Bool)

(assert (= b_lambda!258667 (or b!6851566 b_lambda!258677)))

(declare-fun bs!1831401 () Bool)

(declare-fun d!2153518 () Bool)

(assert (= bs!1831401 (and d!2153518 b!6851566)))

(declare-fun res!2796593 () Bool)

(declare-fun e!4131691 () Bool)

(assert (=> bs!1831401 (=> (not res!2796593) (not e!4131691))))

(assert (=> bs!1831401 (= res!2796593 (validRegex!8413 lt!2456284))))

(assert (=> bs!1831401 (= (dynLambda!26464 lambda!387348 lt!2456284) e!4131691)))

(declare-fun b!6852116 () Bool)

(assert (=> b!6852116 (= e!4131691 (matchR!8860 lt!2456284 s!2326))))

(assert (= (and bs!1831401 res!2796593) b!6852116))

(declare-fun m!7590012 () Bool)

(assert (=> bs!1831401 m!7590012))

(declare-fun m!7590014 () Bool)

(assert (=> b!6852116 m!7590014))

(assert (=> d!2153492 d!2153518))

(declare-fun b_lambda!258679 () Bool)

(assert (= b_lambda!258669 (or b!6851566 b_lambda!258679)))

(declare-fun bs!1831402 () Bool)

(declare-fun d!2153520 () Bool)

(assert (= bs!1831402 (and d!2153520 b!6851566)))

(declare-fun res!2796594 () Bool)

(declare-fun e!4131692 () Bool)

(assert (=> bs!1831402 (=> (not res!2796594) (not e!4131692))))

(assert (=> bs!1831402 (= res!2796594 (validRegex!8413 (h!72654 lt!2456210)))))

(assert (=> bs!1831402 (= (dynLambda!26464 lambda!387348 (h!72654 lt!2456210)) e!4131692)))

(declare-fun b!6852117 () Bool)

(assert (=> b!6852117 (= e!4131692 (matchR!8860 (h!72654 lt!2456210) s!2326))))

(assert (= (and bs!1831402 res!2796594) b!6852117))

(declare-fun m!7590016 () Bool)

(assert (=> bs!1831402 m!7590016))

(declare-fun m!7590018 () Bool)

(assert (=> b!6852117 m!7590018))

(assert (=> b!6852017 d!2153520))

(declare-fun b_lambda!258681 () Bool)

(assert (= b_lambda!258673 (or b!6851560 b_lambda!258681)))

(declare-fun bs!1831403 () Bool)

(declare-fun d!2153522 () Bool)

(assert (= bs!1831403 (and d!2153522 b!6851560)))

(assert (=> bs!1831403 (= (dynLambda!26466 lambda!387349 (h!72655 zl!343)) (= (generalisedConcat!2268 (exprs!6561 (h!72655 zl!343))) lt!2456209))))

(assert (=> bs!1831403 m!7589970))

(assert (=> b!6852057 d!2153522))

(check-sat (not d!2153496) (not b!6851985) (not b!6852094) (not b!6852059) (not b!6851976) (not d!2153498) (not d!2153488) (not b!6852116) (not bm!624085) (not b_lambda!258675) (not b!6852081) (not b!6852034) (not b!6852073) (not b!6851946) (not b!6852028) (not b!6852079) (not b!6851814) (not b!6852075) (not b!6852014) (not d!2153500) (not b!6852092) (not b!6851984) tp_is_empty!42607 (not b!6852056) (not b!6852102) (not b!6852110) (not d!2153484) (not d!2153492) (not d!2153480) (not bs!1831402) (not b!6852015) (not b_lambda!258677) (not bm!624080) (not b!6852082) (not d!2153502) (not bm!624060) (not d!2153504) (not b!6852042) (not bs!1831403) (not bm!624084) (not bm!624087) (not b!6851937) (not b!6851983) (not b!6852115) (not d!2153490) (not bs!1831400) (not b!6852096) (not b!6851935) (not b!6852095) (not b!6851936) (not b!6852088) (not b!6851813) (not b!6852077) (not d!2153412) (not b!6852061) (not b!6852040) (not b!6851649) (not b!6851982) (not b!6852109) (not b_lambda!258681) (not b!6852074) (not b!6852078) (not b!6852019) (not b!6851941) (not b!6851934) (not b_lambda!258679) (not b!6852083) (not b!6852091) (not d!2153460) (not b!6852090) (not b!6852001) (not bm!624079) (not b!6851971) (not d!2153426) (not bs!1831401) (not d!2153512) (not b!6851994) (not d!2153408) (not b!6851989) (not b!6852097) (not bm!624062) (not d!2153514) (not b!6852117) (not b!6851972) (not d!2153478) (not bm!624088) (not d!2153482) (not setNonEmpty!47103))
(check-sat)
(get-model)

(declare-fun d!2153642 () Bool)

(declare-fun lt!2456341 () Bool)

(assert (=> d!2153642 (= lt!2456341 (select (content!12986 lt!2456210) lt!2456284))))

(declare-fun e!4131919 () Bool)

(assert (=> d!2153642 (= lt!2456341 e!4131919)))

(declare-fun res!2796727 () Bool)

(assert (=> d!2153642 (=> (not res!2796727) (not e!4131919))))

(assert (=> d!2153642 (= res!2796727 ((_ is Cons!66206) lt!2456210))))

(assert (=> d!2153642 (= (contains!20329 lt!2456210 lt!2456284) lt!2456341)))

(declare-fun b!6852464 () Bool)

(declare-fun e!4131918 () Bool)

(assert (=> b!6852464 (= e!4131919 e!4131918)))

(declare-fun res!2796728 () Bool)

(assert (=> b!6852464 (=> res!2796728 e!4131918)))

(assert (=> b!6852464 (= res!2796728 (= (h!72654 lt!2456210) lt!2456284))))

(declare-fun b!6852465 () Bool)

(assert (=> b!6852465 (= e!4131918 (contains!20329 (t!380073 lt!2456210) lt!2456284))))

(assert (= (and d!2153642 res!2796727) b!6852464))

(assert (= (and b!6852464 (not res!2796728)) b!6852465))

(assert (=> d!2153642 m!7589944))

(declare-fun m!7590306 () Bool)

(assert (=> d!2153642 m!7590306))

(declare-fun m!7590308 () Bool)

(assert (=> b!6852465 m!7590308))

(assert (=> b!6852019 d!2153642))

(declare-fun d!2153646 () Bool)

(declare-fun nullableFct!2524 (Regex!16677) Bool)

(assert (=> d!2153646 (= (nullable!6640 (reg!17006 r!7292)) (nullableFct!2524 (reg!17006 r!7292)))))

(declare-fun bs!1831527 () Bool)

(assert (= bs!1831527 d!2153646))

(declare-fun m!7590322 () Bool)

(assert (=> bs!1831527 m!7590322))

(assert (=> b!6851976 d!2153646))

(declare-fun d!2153652 () Bool)

(declare-fun c!1275580 () Bool)

(assert (=> d!2153652 (= c!1275580 ((_ is Nil!66207) lt!2456274))))

(declare-fun e!4131942 () (InoxSet Context!12122))

(assert (=> d!2153652 (= (content!12985 lt!2456274) e!4131942)))

(declare-fun b!6852498 () Bool)

(assert (=> b!6852498 (= e!4131942 ((as const (Array Context!12122 Bool)) false))))

(declare-fun b!6852499 () Bool)

(assert (=> b!6852499 (= e!4131942 ((_ map or) (store ((as const (Array Context!12122 Bool)) false) (h!72655 lt!2456274) true) (content!12985 (t!380074 lt!2456274))))))

(assert (= (and d!2153652 c!1275580) b!6852498))

(assert (= (and d!2153652 (not c!1275580)) b!6852499))

(declare-fun m!7590346 () Bool)

(assert (=> b!6852499 m!7590346))

(declare-fun m!7590348 () Bool)

(assert (=> b!6852499 m!7590348))

(assert (=> b!6851971 d!2153652))

(declare-fun d!2153658 () Bool)

(declare-fun lt!2456343 () Bool)

(assert (=> d!2153658 (= lt!2456343 (select (content!12986 (t!380073 lt!2456210)) lt!2456209))))

(declare-fun e!4131945 () Bool)

(assert (=> d!2153658 (= lt!2456343 e!4131945)))

(declare-fun res!2796741 () Bool)

(assert (=> d!2153658 (=> (not res!2796741) (not e!4131945))))

(assert (=> d!2153658 (= res!2796741 ((_ is Cons!66206) (t!380073 lt!2456210)))))

(assert (=> d!2153658 (= (contains!20329 (t!380073 lt!2456210) lt!2456209) lt!2456343)))

(declare-fun b!6852502 () Bool)

(declare-fun e!4131944 () Bool)

(assert (=> b!6852502 (= e!4131945 e!4131944)))

(declare-fun res!2796742 () Bool)

(assert (=> b!6852502 (=> res!2796742 e!4131944)))

(assert (=> b!6852502 (= res!2796742 (= (h!72654 (t!380073 lt!2456210)) lt!2456209))))

(declare-fun b!6852503 () Bool)

(assert (=> b!6852503 (= e!4131944 (contains!20329 (t!380073 (t!380073 lt!2456210)) lt!2456209))))

(assert (= (and d!2153658 res!2796741) b!6852502))

(assert (= (and b!6852502 (not res!2796742)) b!6852503))

(declare-fun m!7590354 () Bool)

(assert (=> d!2153658 m!7590354))

(declare-fun m!7590356 () Bool)

(assert (=> d!2153658 m!7590356))

(declare-fun m!7590358 () Bool)

(assert (=> b!6852503 m!7590358))

(assert (=> b!6852001 d!2153658))

(assert (=> d!2153512 d!2153408))

(declare-fun b!6852608 () Bool)

(declare-fun e!4131987 () Int)

(declare-fun e!4131988 () Int)

(assert (=> b!6852608 (= e!4131987 e!4131988)))

(declare-fun c!1275594 () Bool)

(assert (=> b!6852608 (= c!1275594 ((_ is Star!16677) (h!72654 (exprs!6561 lt!2456204))))))

(declare-fun d!2153662 () Bool)

(declare-fun lt!2456350 () Int)

(assert (=> d!2153662 (> lt!2456350 0)))

(assert (=> d!2153662 (= lt!2456350 e!4131987)))

(declare-fun c!1275596 () Bool)

(assert (=> d!2153662 (= c!1275596 ((_ is ElementMatch!16677) (h!72654 (exprs!6561 lt!2456204))))))

(assert (=> d!2153662 (= (regexDepthTotal!251 (h!72654 (exprs!6561 lt!2456204))) lt!2456350)))

(declare-fun b!6852609 () Bool)

(assert (=> b!6852609 (= e!4131987 1)))

(declare-fun b!6852610 () Bool)

(declare-fun e!4131990 () Int)

(assert (=> b!6852610 (= e!4131990 1)))

(declare-fun bm!624152 () Bool)

(declare-fun call!624157 () Int)

(declare-fun call!624158 () Int)

(assert (=> bm!624152 (= call!624157 call!624158)))

(declare-fun b!6852611 () Bool)

(declare-fun c!1275597 () Bool)

(assert (=> b!6852611 (= c!1275597 ((_ is Union!16677) (h!72654 (exprs!6561 lt!2456204))))))

(declare-fun e!4131989 () Int)

(assert (=> b!6852611 (= e!4131988 e!4131989)))

(declare-fun b!6852612 () Bool)

(assert (=> b!6852612 (= e!4131989 e!4131990)))

(declare-fun c!1275595 () Bool)

(assert (=> b!6852612 (= c!1275595 ((_ is Concat!25522) (h!72654 (exprs!6561 lt!2456204))))))

(declare-fun b!6852613 () Bool)

(declare-fun call!624159 () Int)

(assert (=> b!6852613 (= e!4131989 (+ 1 call!624159 call!624157))))

(declare-fun b!6852614 () Bool)

(assert (=> b!6852614 (= e!4131990 (+ 1 call!624159 call!624157))))

(declare-fun bm!624153 () Bool)

(assert (=> bm!624153 (= call!624158 (regexDepthTotal!251 (ite c!1275594 (reg!17006 (h!72654 (exprs!6561 lt!2456204))) (ite c!1275597 (regTwo!33867 (h!72654 (exprs!6561 lt!2456204))) (regTwo!33866 (h!72654 (exprs!6561 lt!2456204)))))))))

(declare-fun bm!624154 () Bool)

(assert (=> bm!624154 (= call!624159 (regexDepthTotal!251 (ite c!1275597 (regOne!33867 (h!72654 (exprs!6561 lt!2456204))) (regOne!33866 (h!72654 (exprs!6561 lt!2456204))))))))

(declare-fun b!6852615 () Bool)

(assert (=> b!6852615 (= e!4131988 (+ 1 call!624158))))

(assert (= (and d!2153662 c!1275596) b!6852609))

(assert (= (and d!2153662 (not c!1275596)) b!6852608))

(assert (= (and b!6852608 c!1275594) b!6852615))

(assert (= (and b!6852608 (not c!1275594)) b!6852611))

(assert (= (and b!6852611 c!1275597) b!6852613))

(assert (= (and b!6852611 (not c!1275597)) b!6852612))

(assert (= (and b!6852612 c!1275595) b!6852614))

(assert (= (and b!6852612 (not c!1275595)) b!6852610))

(assert (= (or b!6852613 b!6852614) bm!624152))

(assert (= (or b!6852613 b!6852614) bm!624154))

(assert (= (or b!6852615 bm!624152) bm!624153))

(declare-fun m!7590392 () Bool)

(assert (=> bm!624153 m!7590392))

(declare-fun m!7590394 () Bool)

(assert (=> bm!624154 m!7590394))

(assert (=> b!6852034 d!2153662))

(declare-fun d!2153668 () Bool)

(declare-fun lt!2456351 () Int)

(assert (=> d!2153668 (>= lt!2456351 0)))

(declare-fun e!4131996 () Int)

(assert (=> d!2153668 (= lt!2456351 e!4131996)))

(declare-fun c!1275598 () Bool)

(assert (=> d!2153668 (= c!1275598 ((_ is Cons!66206) (exprs!6561 (Context!12123 (t!380073 (exprs!6561 lt!2456204))))))))

(assert (=> d!2153668 (= (contextDepthTotal!404 (Context!12123 (t!380073 (exprs!6561 lt!2456204)))) lt!2456351)))

(declare-fun b!6852630 () Bool)

(assert (=> b!6852630 (= e!4131996 (+ (regexDepthTotal!251 (h!72654 (exprs!6561 (Context!12123 (t!380073 (exprs!6561 lt!2456204)))))) (contextDepthTotal!404 (Context!12123 (t!380073 (exprs!6561 (Context!12123 (t!380073 (exprs!6561 lt!2456204)))))))))))

(declare-fun b!6852631 () Bool)

(assert (=> b!6852631 (= e!4131996 1)))

(assert (= (and d!2153668 c!1275598) b!6852630))

(assert (= (and d!2153668 (not c!1275598)) b!6852631))

(declare-fun m!7590396 () Bool)

(assert (=> b!6852630 m!7590396))

(declare-fun m!7590398 () Bool)

(assert (=> b!6852630 m!7590398))

(assert (=> b!6852034 d!2153668))

(declare-fun d!2153670 () Bool)

(assert (=> d!2153670 (= (head!13733 s!2326) (h!72656 s!2326))))

(assert (=> b!6851946 d!2153670))

(declare-fun d!2153672 () Bool)

(assert (=> d!2153672 (= (isEmpty!38579 s!2326) ((_ is Nil!66208) s!2326))))

(assert (=> bm!624084 d!2153672))

(declare-fun b!6852660 () Bool)

(declare-fun res!2796750 () Bool)

(declare-fun e!4132009 () Bool)

(assert (=> b!6852660 (=> res!2796750 e!4132009)))

(assert (=> b!6852660 (= res!2796750 (not ((_ is Concat!25522) (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292))))))))

(declare-fun e!4132010 () Bool)

(assert (=> b!6852660 (= e!4132010 e!4132009)))

(declare-fun b!6852661 () Bool)

(declare-fun res!2796751 () Bool)

(declare-fun e!4132004 () Bool)

(assert (=> b!6852661 (=> (not res!2796751) (not e!4132004))))

(declare-fun call!624160 () Bool)

(assert (=> b!6852661 (= res!2796751 call!624160)))

(assert (=> b!6852661 (= e!4132010 e!4132004)))

(declare-fun c!1275600 () Bool)

(declare-fun call!624161 () Bool)

(declare-fun bm!624155 () Bool)

(declare-fun c!1275599 () Bool)

(assert (=> bm!624155 (= call!624161 (validRegex!8413 (ite c!1275599 (reg!17006 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))) (ite c!1275600 (regOne!33867 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))) (regOne!33866 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292))))))))))

(declare-fun b!6852662 () Bool)

(declare-fun call!624162 () Bool)

(assert (=> b!6852662 (= e!4132004 call!624162)))

(declare-fun b!6852664 () Bool)

(declare-fun e!4132005 () Bool)

(declare-fun e!4132006 () Bool)

(assert (=> b!6852664 (= e!4132005 e!4132006)))

(assert (=> b!6852664 (= c!1275599 ((_ is Star!16677) (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))))))

(declare-fun b!6852665 () Bool)

(assert (=> b!6852665 (= e!4132006 e!4132010)))

(assert (=> b!6852665 (= c!1275600 ((_ is Union!16677) (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))))))

(declare-fun bm!624156 () Bool)

(assert (=> bm!624156 (= call!624160 call!624161)))

(declare-fun d!2153674 () Bool)

(declare-fun res!2796752 () Bool)

(assert (=> d!2153674 (=> res!2796752 e!4132005)))

(assert (=> d!2153674 (= res!2796752 ((_ is ElementMatch!16677) (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))))))

(assert (=> d!2153674 (= (validRegex!8413 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))) e!4132005)))

(declare-fun b!6852663 () Bool)

(declare-fun e!4132007 () Bool)

(assert (=> b!6852663 (= e!4132006 e!4132007)))

(declare-fun res!2796753 () Bool)

(assert (=> b!6852663 (= res!2796753 (not (nullable!6640 (reg!17006 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))))))))

(assert (=> b!6852663 (=> (not res!2796753) (not e!4132007))))

(declare-fun b!6852666 () Bool)

(assert (=> b!6852666 (= e!4132007 call!624161)))

(declare-fun bm!624157 () Bool)

(assert (=> bm!624157 (= call!624162 (validRegex!8413 (ite c!1275600 (regTwo!33867 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))) (regTwo!33866 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))))))))

(declare-fun b!6852667 () Bool)

(declare-fun e!4132008 () Bool)

(assert (=> b!6852667 (= e!4132008 call!624162)))

(declare-fun b!6852668 () Bool)

(assert (=> b!6852668 (= e!4132009 e!4132008)))

(declare-fun res!2796749 () Bool)

(assert (=> b!6852668 (=> (not res!2796749) (not e!4132008))))

(assert (=> b!6852668 (= res!2796749 call!624160)))

(assert (= (and d!2153674 (not res!2796752)) b!6852664))

(assert (= (and b!6852664 c!1275599) b!6852663))

(assert (= (and b!6852664 (not c!1275599)) b!6852665))

(assert (= (and b!6852663 res!2796753) b!6852666))

(assert (= (and b!6852665 c!1275600) b!6852661))

(assert (= (and b!6852665 (not c!1275600)) b!6852660))

(assert (= (and b!6852661 res!2796751) b!6852662))

(assert (= (and b!6852660 (not res!2796750)) b!6852668))

(assert (= (and b!6852668 res!2796749) b!6852667))

(assert (= (or b!6852662 b!6852667) bm!624157))

(assert (= (or b!6852661 b!6852668) bm!624156))

(assert (= (or b!6852666 bm!624156) bm!624155))

(declare-fun m!7590402 () Bool)

(assert (=> bm!624155 m!7590402))

(declare-fun m!7590406 () Bool)

(assert (=> b!6852663 m!7590406))

(declare-fun m!7590408 () Bool)

(assert (=> bm!624157 m!7590408))

(assert (=> bm!624085 d!2153674))

(declare-fun d!2153682 () Bool)

(assert (=> d!2153682 (= (head!13734 lt!2456210) (h!72654 lt!2456210))))

(assert (=> b!6852015 d!2153682))

(declare-fun d!2153692 () Bool)

(declare-fun res!2796760 () Bool)

(declare-fun e!4132017 () Bool)

(assert (=> d!2153692 (=> res!2796760 e!4132017)))

(assert (=> d!2153692 (= res!2796760 ((_ is Nil!66206) (exprs!6561 (h!72655 zl!343))))))

(assert (=> d!2153692 (= (forall!15858 (exprs!6561 (h!72655 zl!343)) lambda!387405) e!4132017)))

(declare-fun b!6852675 () Bool)

(declare-fun e!4132018 () Bool)

(assert (=> b!6852675 (= e!4132017 e!4132018)))

(declare-fun res!2796761 () Bool)

(assert (=> b!6852675 (=> (not res!2796761) (not e!4132018))))

(assert (=> b!6852675 (= res!2796761 (dynLambda!26464 lambda!387405 (h!72654 (exprs!6561 (h!72655 zl!343)))))))

(declare-fun b!6852676 () Bool)

(assert (=> b!6852676 (= e!4132018 (forall!15858 (t!380073 (exprs!6561 (h!72655 zl!343))) lambda!387405))))

(assert (= (and d!2153692 (not res!2796760)) b!6852675))

(assert (= (and b!6852675 res!2796761) b!6852676))

(declare-fun b_lambda!258727 () Bool)

(assert (=> (not b_lambda!258727) (not b!6852675)))

(declare-fun m!7590422 () Bool)

(assert (=> b!6852675 m!7590422))

(declare-fun m!7590424 () Bool)

(assert (=> b!6852676 m!7590424))

(assert (=> d!2153502 d!2153692))

(declare-fun bs!1831554 () Bool)

(declare-fun d!2153700 () Bool)

(assert (= bs!1831554 (and d!2153700 b!6851560)))

(declare-fun lambda!387430 () Int)

(assert (=> bs!1831554 (not (= lambda!387430 lambda!387349))))

(declare-fun bs!1831555 () Bool)

(assert (= bs!1831555 (and d!2153700 d!2153408)))

(assert (=> bs!1831555 (= (= lambda!387362 lambda!387349) (= lambda!387430 lambda!387352))))

(declare-fun bs!1831556 () Bool)

(assert (= bs!1831556 (and d!2153700 d!2153412)))

(assert (=> bs!1831556 (not (= lambda!387430 lambda!387362))))

(assert (=> d!2153700 true))

(assert (=> d!2153700 (< (dynLambda!26462 order!27657 lambda!387362) (dynLambda!26462 order!27657 lambda!387430))))

(assert (=> d!2153700 (= (exists!2780 zl!343 lambda!387362) (not (forall!15857 zl!343 lambda!387430)))))

(declare-fun bs!1831557 () Bool)

(assert (= bs!1831557 d!2153700))

(declare-fun m!7590426 () Bool)

(assert (=> bs!1831557 m!7590426))

(assert (=> d!2153412 d!2153700))

(declare-fun bs!1831558 () Bool)

(declare-fun d!2153702 () Bool)

(assert (= bs!1831558 (and d!2153702 b!6851560)))

(declare-fun lambda!387433 () Int)

(assert (=> bs!1831558 (= lambda!387433 lambda!387349)))

(declare-fun bs!1831559 () Bool)

(assert (= bs!1831559 (and d!2153702 d!2153408)))

(assert (=> bs!1831559 (not (= lambda!387433 lambda!387352))))

(declare-fun bs!1831560 () Bool)

(assert (= bs!1831560 (and d!2153702 d!2153412)))

(assert (=> bs!1831560 (= lambda!387433 lambda!387362)))

(declare-fun bs!1831561 () Bool)

(assert (= bs!1831561 (and d!2153702 d!2153700)))

(assert (=> bs!1831561 (not (= lambda!387433 lambda!387430))))

(assert (=> d!2153702 true))

(assert (=> d!2153702 (exists!2780 zl!343 lambda!387433)))

(assert (=> d!2153702 true))

(declare-fun _$46!2039 () Unit!160081)

(assert (=> d!2153702 (= (choose!51057 zl!343 lt!2456209) _$46!2039)))

(declare-fun bs!1831562 () Bool)

(assert (= bs!1831562 d!2153702))

(declare-fun m!7590428 () Bool)

(assert (=> bs!1831562 m!7590428))

(assert (=> d!2153412 d!2153702))

(declare-fun d!2153704 () Bool)

(declare-fun lt!2456352 () Bool)

(assert (=> d!2153704 (= lt!2456352 (select (content!12986 (unfocusZipperList!2094 zl!343)) lt!2456209))))

(declare-fun e!4132020 () Bool)

(assert (=> d!2153704 (= lt!2456352 e!4132020)))

(declare-fun res!2796762 () Bool)

(assert (=> d!2153704 (=> (not res!2796762) (not e!4132020))))

(assert (=> d!2153704 (= res!2796762 ((_ is Cons!66206) (unfocusZipperList!2094 zl!343)))))

(assert (=> d!2153704 (= (contains!20329 (unfocusZipperList!2094 zl!343) lt!2456209) lt!2456352)))

(declare-fun b!6852677 () Bool)

(declare-fun e!4132019 () Bool)

(assert (=> b!6852677 (= e!4132020 e!4132019)))

(declare-fun res!2796763 () Bool)

(assert (=> b!6852677 (=> res!2796763 e!4132019)))

(assert (=> b!6852677 (= res!2796763 (= (h!72654 (unfocusZipperList!2094 zl!343)) lt!2456209))))

(declare-fun b!6852678 () Bool)

(assert (=> b!6852678 (= e!4132019 (contains!20329 (t!380073 (unfocusZipperList!2094 zl!343)) lt!2456209))))

(assert (= (and d!2153704 res!2796762) b!6852677))

(assert (= (and b!6852677 (not res!2796763)) b!6852678))

(assert (=> d!2153704 m!7589696))

(declare-fun m!7590430 () Bool)

(assert (=> d!2153704 m!7590430))

(declare-fun m!7590432 () Bool)

(assert (=> d!2153704 m!7590432))

(declare-fun m!7590434 () Bool)

(assert (=> b!6852678 m!7590434))

(assert (=> d!2153412 d!2153704))

(assert (=> d!2153412 d!2153500))

(declare-fun b!6852679 () Bool)

(declare-fun e!4132023 () Context!12122)

(assert (=> b!6852679 (= e!4132023 (getWitness!950 (t!380074 (t!380074 zl!343)) lambda!387349))))

(declare-fun d!2153706 () Bool)

(declare-fun e!4132022 () Bool)

(assert (=> d!2153706 e!4132022))

(declare-fun res!2796764 () Bool)

(assert (=> d!2153706 (=> (not res!2796764) (not e!4132022))))

(declare-fun lt!2456354 () Context!12122)

(assert (=> d!2153706 (= res!2796764 (dynLambda!26466 lambda!387349 lt!2456354))))

(declare-fun e!4132021 () Context!12122)

(assert (=> d!2153706 (= lt!2456354 e!4132021)))

(declare-fun c!1275603 () Bool)

(declare-fun e!4132024 () Bool)

(assert (=> d!2153706 (= c!1275603 e!4132024)))

(declare-fun res!2796765 () Bool)

(assert (=> d!2153706 (=> (not res!2796765) (not e!4132024))))

(assert (=> d!2153706 (= res!2796765 ((_ is Cons!66207) (t!380074 zl!343)))))

(assert (=> d!2153706 (exists!2780 (t!380074 zl!343) lambda!387349)))

(assert (=> d!2153706 (= (getWitness!950 (t!380074 zl!343) lambda!387349) lt!2456354)))

(declare-fun b!6852680 () Bool)

(assert (=> b!6852680 (= e!4132024 (dynLambda!26466 lambda!387349 (h!72655 (t!380074 zl!343))))))

(declare-fun b!6852681 () Bool)

(assert (=> b!6852681 (= e!4132021 (h!72655 (t!380074 zl!343)))))

(declare-fun b!6852682 () Bool)

(assert (=> b!6852682 (= e!4132022 (contains!20331 (t!380074 zl!343) lt!2456354))))

(declare-fun b!6852683 () Bool)

(assert (=> b!6852683 (= e!4132021 e!4132023)))

(declare-fun c!1275604 () Bool)

(assert (=> b!6852683 (= c!1275604 ((_ is Cons!66207) (t!380074 zl!343)))))

(declare-fun b!6852684 () Bool)

(declare-fun lt!2456353 () Unit!160081)

(declare-fun Unit!160087 () Unit!160081)

(assert (=> b!6852684 (= lt!2456353 Unit!160087)))

(assert (=> b!6852684 false))

(assert (=> b!6852684 (= e!4132023 (head!13735 (t!380074 zl!343)))))

(assert (= (and d!2153706 res!2796765) b!6852680))

(assert (= (and d!2153706 c!1275603) b!6852681))

(assert (= (and d!2153706 (not c!1275603)) b!6852683))

(assert (= (and b!6852683 c!1275604) b!6852679))

(assert (= (and b!6852683 (not c!1275604)) b!6852684))

(assert (= (and d!2153706 res!2796764) b!6852682))

(declare-fun b_lambda!258729 () Bool)

(assert (=> (not b_lambda!258729) (not d!2153706)))

(declare-fun b_lambda!258731 () Bool)

(assert (=> (not b_lambda!258731) (not b!6852680)))

(declare-fun m!7590436 () Bool)

(assert (=> d!2153706 m!7590436))

(declare-fun m!7590438 () Bool)

(assert (=> d!2153706 m!7590438))

(declare-fun m!7590440 () Bool)

(assert (=> b!6852679 m!7590440))

(declare-fun m!7590442 () Bool)

(assert (=> b!6852682 m!7590442))

(declare-fun m!7590444 () Bool)

(assert (=> b!6852680 m!7590444))

(declare-fun m!7590446 () Bool)

(assert (=> b!6852684 m!7590446))

(assert (=> b!6852056 d!2153706))

(declare-fun d!2153708 () Bool)

(declare-fun res!2796770 () Bool)

(declare-fun e!4132029 () Bool)

(assert (=> d!2153708 (=> res!2796770 e!4132029)))

(assert (=> d!2153708 (= res!2796770 ((_ is Nil!66207) zl!343))))

(assert (=> d!2153708 (= (forall!15857 zl!343 lambda!387352) e!4132029)))

(declare-fun b!6852689 () Bool)

(declare-fun e!4132030 () Bool)

(assert (=> b!6852689 (= e!4132029 e!4132030)))

(declare-fun res!2796771 () Bool)

(assert (=> b!6852689 (=> (not res!2796771) (not e!4132030))))

(assert (=> b!6852689 (= res!2796771 (dynLambda!26466 lambda!387352 (h!72655 zl!343)))))

(declare-fun b!6852690 () Bool)

(assert (=> b!6852690 (= e!4132030 (forall!15857 (t!380074 zl!343) lambda!387352))))

(assert (= (and d!2153708 (not res!2796770)) b!6852689))

(assert (= (and b!6852689 res!2796771) b!6852690))

(declare-fun b_lambda!258733 () Bool)

(assert (=> (not b_lambda!258733) (not b!6852689)))

(declare-fun m!7590448 () Bool)

(assert (=> b!6852689 m!7590448))

(declare-fun m!7590450 () Bool)

(assert (=> b!6852690 m!7590450))

(assert (=> d!2153408 d!2153708))

(declare-fun b!6852691 () Bool)

(declare-fun res!2796773 () Bool)

(declare-fun e!4132036 () Bool)

(assert (=> b!6852691 (=> res!2796773 e!4132036)))

(assert (=> b!6852691 (= res!2796773 (not ((_ is Concat!25522) lt!2456308)))))

(declare-fun e!4132037 () Bool)

(assert (=> b!6852691 (= e!4132037 e!4132036)))

(declare-fun b!6852692 () Bool)

(declare-fun res!2796774 () Bool)

(declare-fun e!4132031 () Bool)

(assert (=> b!6852692 (=> (not res!2796774) (not e!4132031))))

(declare-fun call!624163 () Bool)

(assert (=> b!6852692 (= res!2796774 call!624163)))

(assert (=> b!6852692 (= e!4132037 e!4132031)))

(declare-fun c!1275605 () Bool)

(declare-fun c!1275606 () Bool)

(declare-fun call!624164 () Bool)

(declare-fun bm!624158 () Bool)

(assert (=> bm!624158 (= call!624164 (validRegex!8413 (ite c!1275605 (reg!17006 lt!2456308) (ite c!1275606 (regOne!33867 lt!2456308) (regOne!33866 lt!2456308)))))))

(declare-fun b!6852693 () Bool)

(declare-fun call!624165 () Bool)

(assert (=> b!6852693 (= e!4132031 call!624165)))

(declare-fun b!6852695 () Bool)

(declare-fun e!4132032 () Bool)

(declare-fun e!4132033 () Bool)

(assert (=> b!6852695 (= e!4132032 e!4132033)))

(assert (=> b!6852695 (= c!1275605 ((_ is Star!16677) lt!2456308))))

(declare-fun b!6852696 () Bool)

(assert (=> b!6852696 (= e!4132033 e!4132037)))

(assert (=> b!6852696 (= c!1275606 ((_ is Union!16677) lt!2456308))))

(declare-fun bm!624159 () Bool)

(assert (=> bm!624159 (= call!624163 call!624164)))

(declare-fun d!2153710 () Bool)

(declare-fun res!2796775 () Bool)

(assert (=> d!2153710 (=> res!2796775 e!4132032)))

(assert (=> d!2153710 (= res!2796775 ((_ is ElementMatch!16677) lt!2456308))))

(assert (=> d!2153710 (= (validRegex!8413 lt!2456308) e!4132032)))

(declare-fun b!6852694 () Bool)

(declare-fun e!4132034 () Bool)

(assert (=> b!6852694 (= e!4132033 e!4132034)))

(declare-fun res!2796776 () Bool)

(assert (=> b!6852694 (= res!2796776 (not (nullable!6640 (reg!17006 lt!2456308))))))

(assert (=> b!6852694 (=> (not res!2796776) (not e!4132034))))

(declare-fun b!6852697 () Bool)

(assert (=> b!6852697 (= e!4132034 call!624164)))

(declare-fun bm!624160 () Bool)

(assert (=> bm!624160 (= call!624165 (validRegex!8413 (ite c!1275606 (regTwo!33867 lt!2456308) (regTwo!33866 lt!2456308))))))

(declare-fun b!6852698 () Bool)

(declare-fun e!4132035 () Bool)

(assert (=> b!6852698 (= e!4132035 call!624165)))

(declare-fun b!6852699 () Bool)

(assert (=> b!6852699 (= e!4132036 e!4132035)))

(declare-fun res!2796772 () Bool)

(assert (=> b!6852699 (=> (not res!2796772) (not e!4132035))))

(assert (=> b!6852699 (= res!2796772 call!624163)))

(assert (= (and d!2153710 (not res!2796775)) b!6852695))

(assert (= (and b!6852695 c!1275605) b!6852694))

(assert (= (and b!6852695 (not c!1275605)) b!6852696))

(assert (= (and b!6852694 res!2796776) b!6852697))

(assert (= (and b!6852696 c!1275606) b!6852692))

(assert (= (and b!6852696 (not c!1275606)) b!6852691))

(assert (= (and b!6852692 res!2796774) b!6852693))

(assert (= (and b!6852691 (not res!2796773)) b!6852699))

(assert (= (and b!6852699 res!2796772) b!6852698))

(assert (= (or b!6852693 b!6852698) bm!624160))

(assert (= (or b!6852692 b!6852699) bm!624159))

(assert (= (or b!6852697 bm!624159) bm!624158))

(declare-fun m!7590452 () Bool)

(assert (=> bm!624158 m!7590452))

(declare-fun m!7590454 () Bool)

(assert (=> b!6852694 m!7590454))

(declare-fun m!7590456 () Bool)

(assert (=> bm!624160 m!7590456))

(assert (=> d!2153514 d!2153710))

(declare-fun bs!1831563 () Bool)

(declare-fun d!2153712 () Bool)

(assert (= bs!1831563 (and d!2153712 d!2153480)))

(declare-fun lambda!387436 () Int)

(assert (=> bs!1831563 (= lambda!387436 lambda!387392)))

(declare-fun bs!1831564 () Bool)

(assert (= bs!1831564 (and d!2153712 d!2153496)))

(assert (=> bs!1831564 (not (= lambda!387436 lambda!387395))))

(declare-fun bs!1831565 () Bool)

(assert (= bs!1831565 (and d!2153712 b!6851566)))

(assert (=> bs!1831565 (not (= lambda!387436 lambda!387348))))

(declare-fun bs!1831566 () Bool)

(assert (= bs!1831566 (and d!2153712 d!2153498)))

(assert (=> bs!1831566 (not (= lambda!387436 lambda!387401))))

(declare-fun bs!1831567 () Bool)

(assert (= bs!1831567 (and d!2153712 d!2153500)))

(assert (=> bs!1831567 (= lambda!387436 lambda!387404)))

(assert (=> bs!1831566 (= lambda!387436 lambda!387400)))

(declare-fun bs!1831568 () Bool)

(assert (= bs!1831568 (and d!2153712 d!2153502)))

(assert (=> bs!1831568 (= lambda!387436 lambda!387405)))

(declare-fun e!4132054 () Bool)

(assert (=> d!2153712 e!4132054))

(declare-fun res!2796782 () Bool)

(assert (=> d!2153712 (=> (not res!2796782) (not e!4132054))))

(declare-fun lt!2456357 () Regex!16677)

(assert (=> d!2153712 (= res!2796782 (validRegex!8413 lt!2456357))))

(declare-fun e!4132053 () Regex!16677)

(assert (=> d!2153712 (= lt!2456357 e!4132053)))

(declare-fun c!1275618 () Bool)

(declare-fun e!4132051 () Bool)

(assert (=> d!2153712 (= c!1275618 e!4132051)))

(declare-fun res!2796781 () Bool)

(assert (=> d!2153712 (=> (not res!2796781) (not e!4132051))))

(assert (=> d!2153712 (= res!2796781 ((_ is Cons!66206) (unfocusZipperList!2094 zl!343)))))

(assert (=> d!2153712 (forall!15858 (unfocusZipperList!2094 zl!343) lambda!387436)))

(assert (=> d!2153712 (= (generalisedUnion!2515 (unfocusZipperList!2094 zl!343)) lt!2456357)))

(declare-fun b!6852720 () Bool)

(declare-fun e!4132052 () Bool)

(assert (=> b!6852720 (= e!4132052 (= lt!2456357 (head!13734 (unfocusZipperList!2094 zl!343))))))

(declare-fun b!6852721 () Bool)

(declare-fun e!4132055 () Regex!16677)

(assert (=> b!6852721 (= e!4132055 EmptyLang!16677)))

(declare-fun b!6852722 () Bool)

(declare-fun e!4132050 () Bool)

(declare-fun isEmptyLang!2019 (Regex!16677) Bool)

(assert (=> b!6852722 (= e!4132050 (isEmptyLang!2019 lt!2456357))))

(declare-fun b!6852723 () Bool)

(assert (=> b!6852723 (= e!4132053 (h!72654 (unfocusZipperList!2094 zl!343)))))

(declare-fun b!6852724 () Bool)

(assert (=> b!6852724 (= e!4132050 e!4132052)))

(declare-fun c!1275615 () Bool)

(declare-fun isEmpty!38581 (List!66330) Bool)

(declare-fun tail!12810 (List!66330) List!66330)

(assert (=> b!6852724 (= c!1275615 (isEmpty!38581 (tail!12810 (unfocusZipperList!2094 zl!343))))))

(declare-fun b!6852725 () Bool)

(assert (=> b!6852725 (= e!4132054 e!4132050)))

(declare-fun c!1275617 () Bool)

(assert (=> b!6852725 (= c!1275617 (isEmpty!38581 (unfocusZipperList!2094 zl!343)))))

(declare-fun b!6852726 () Bool)

(assert (=> b!6852726 (= e!4132053 e!4132055)))

(declare-fun c!1275616 () Bool)

(assert (=> b!6852726 (= c!1275616 ((_ is Cons!66206) (unfocusZipperList!2094 zl!343)))))

(declare-fun b!6852727 () Bool)

(assert (=> b!6852727 (= e!4132055 (Union!16677 (h!72654 (unfocusZipperList!2094 zl!343)) (generalisedUnion!2515 (t!380073 (unfocusZipperList!2094 zl!343)))))))

(declare-fun b!6852728 () Bool)

(assert (=> b!6852728 (= e!4132051 (isEmpty!38581 (t!380073 (unfocusZipperList!2094 zl!343))))))

(declare-fun b!6852729 () Bool)

(declare-fun isUnion!1449 (Regex!16677) Bool)

(assert (=> b!6852729 (= e!4132052 (isUnion!1449 lt!2456357))))

(assert (= (and d!2153712 res!2796781) b!6852728))

(assert (= (and d!2153712 c!1275618) b!6852723))

(assert (= (and d!2153712 (not c!1275618)) b!6852726))

(assert (= (and b!6852726 c!1275616) b!6852727))

(assert (= (and b!6852726 (not c!1275616)) b!6852721))

(assert (= (and d!2153712 res!2796782) b!6852725))

(assert (= (and b!6852725 c!1275617) b!6852722))

(assert (= (and b!6852725 (not c!1275617)) b!6852724))

(assert (= (and b!6852724 c!1275615) b!6852720))

(assert (= (and b!6852724 (not c!1275615)) b!6852729))

(declare-fun m!7590458 () Bool)

(assert (=> b!6852729 m!7590458))

(declare-fun m!7590460 () Bool)

(assert (=> b!6852728 m!7590460))

(declare-fun m!7590462 () Bool)

(assert (=> b!6852722 m!7590462))

(declare-fun m!7590464 () Bool)

(assert (=> b!6852727 m!7590464))

(assert (=> b!6852720 m!7589696))

(declare-fun m!7590466 () Bool)

(assert (=> b!6852720 m!7590466))

(declare-fun m!7590468 () Bool)

(assert (=> d!2153712 m!7590468))

(assert (=> d!2153712 m!7589696))

(declare-fun m!7590470 () Bool)

(assert (=> d!2153712 m!7590470))

(assert (=> b!6852725 m!7589696))

(declare-fun m!7590472 () Bool)

(assert (=> b!6852725 m!7590472))

(assert (=> b!6852724 m!7589696))

(declare-fun m!7590474 () Bool)

(assert (=> b!6852724 m!7590474))

(assert (=> b!6852724 m!7590474))

(declare-fun m!7590476 () Bool)

(assert (=> b!6852724 m!7590476))

(assert (=> d!2153514 d!2153712))

(assert (=> d!2153514 d!2153500))

(declare-fun d!2153714 () Bool)

(declare-fun res!2796783 () Bool)

(declare-fun e!4132056 () Bool)

(assert (=> d!2153714 (=> res!2796783 e!4132056)))

(assert (=> d!2153714 (= res!2796783 ((_ is Nil!66206) lt!2456210))))

(assert (=> d!2153714 (= (forall!15858 lt!2456210 lambda!387395) e!4132056)))

(declare-fun b!6852730 () Bool)

(declare-fun e!4132057 () Bool)

(assert (=> b!6852730 (= e!4132056 e!4132057)))

(declare-fun res!2796784 () Bool)

(assert (=> b!6852730 (=> (not res!2796784) (not e!4132057))))

(assert (=> b!6852730 (= res!2796784 (dynLambda!26464 lambda!387395 (h!72654 lt!2456210)))))

(declare-fun b!6852731 () Bool)

(assert (=> b!6852731 (= e!4132057 (forall!15858 (t!380073 lt!2456210) lambda!387395))))

(assert (= (and d!2153714 (not res!2796783)) b!6852730))

(assert (= (and b!6852730 res!2796784) b!6852731))

(declare-fun b_lambda!258735 () Bool)

(assert (=> (not b_lambda!258735) (not b!6852730)))

(declare-fun m!7590478 () Bool)

(assert (=> b!6852730 m!7590478))

(declare-fun m!7590480 () Bool)

(assert (=> b!6852731 m!7590480))

(assert (=> d!2153496 d!2153714))

(declare-fun d!2153716 () Bool)

(declare-fun e!4132058 () Bool)

(assert (=> d!2153716 e!4132058))

(declare-fun c!1275621 () Bool)

(assert (=> d!2153716 (= c!1275621 ((_ is EmptyExpr!16677) (h!72654 lt!2456210)))))

(declare-fun lt!2456358 () Bool)

(declare-fun e!4132061 () Bool)

(assert (=> d!2153716 (= lt!2456358 e!4132061)))

(declare-fun c!1275620 () Bool)

(assert (=> d!2153716 (= c!1275620 (isEmpty!38579 s!2326))))

(assert (=> d!2153716 (validRegex!8413 (h!72654 lt!2456210))))

(assert (=> d!2153716 (= (matchR!8860 (h!72654 lt!2456210) s!2326) lt!2456358)))

(declare-fun b!6852732 () Bool)

(declare-fun res!2796790 () Bool)

(declare-fun e!4132060 () Bool)

(assert (=> b!6852732 (=> res!2796790 e!4132060)))

(assert (=> b!6852732 (= res!2796790 (not (isEmpty!38579 (tail!12808 s!2326))))))

(declare-fun b!6852733 () Bool)

(assert (=> b!6852733 (= e!4132061 (matchR!8860 (derivativeStep!5323 (h!72654 lt!2456210) (head!13733 s!2326)) (tail!12808 s!2326)))))

(declare-fun b!6852734 () Bool)

(assert (=> b!6852734 (= e!4132060 (not (= (head!13733 s!2326) (c!1275345 (h!72654 lt!2456210)))))))

(declare-fun b!6852735 () Bool)

(declare-fun res!2796789 () Bool)

(declare-fun e!4132063 () Bool)

(assert (=> b!6852735 (=> (not res!2796789) (not e!4132063))))

(assert (=> b!6852735 (= res!2796789 (isEmpty!38579 (tail!12808 s!2326)))))

(declare-fun b!6852736 () Bool)

(declare-fun e!4132062 () Bool)

(declare-fun e!4132064 () Bool)

(assert (=> b!6852736 (= e!4132062 e!4132064)))

(declare-fun res!2796791 () Bool)

(assert (=> b!6852736 (=> (not res!2796791) (not e!4132064))))

(assert (=> b!6852736 (= res!2796791 (not lt!2456358))))

(declare-fun b!6852737 () Bool)

(declare-fun res!2796792 () Bool)

(assert (=> b!6852737 (=> res!2796792 e!4132062)))

(assert (=> b!6852737 (= res!2796792 e!4132063)))

(declare-fun res!2796788 () Bool)

(assert (=> b!6852737 (=> (not res!2796788) (not e!4132063))))

(assert (=> b!6852737 (= res!2796788 lt!2456358)))

(declare-fun b!6852738 () Bool)

(assert (=> b!6852738 (= e!4132064 e!4132060)))

(declare-fun res!2796786 () Bool)

(assert (=> b!6852738 (=> res!2796786 e!4132060)))

(declare-fun call!624166 () Bool)

(assert (=> b!6852738 (= res!2796786 call!624166)))

(declare-fun b!6852739 () Bool)

(assert (=> b!6852739 (= e!4132061 (nullable!6640 (h!72654 lt!2456210)))))

(declare-fun b!6852740 () Bool)

(declare-fun e!4132059 () Bool)

(assert (=> b!6852740 (= e!4132058 e!4132059)))

(declare-fun c!1275619 () Bool)

(assert (=> b!6852740 (= c!1275619 ((_ is EmptyLang!16677) (h!72654 lt!2456210)))))

(declare-fun b!6852741 () Bool)

(declare-fun res!2796787 () Bool)

(assert (=> b!6852741 (=> (not res!2796787) (not e!4132063))))

(assert (=> b!6852741 (= res!2796787 (not call!624166))))

(declare-fun b!6852742 () Bool)

(assert (=> b!6852742 (= e!4132058 (= lt!2456358 call!624166))))

(declare-fun bm!624161 () Bool)

(assert (=> bm!624161 (= call!624166 (isEmpty!38579 s!2326))))

(declare-fun b!6852743 () Bool)

(assert (=> b!6852743 (= e!4132059 (not lt!2456358))))

(declare-fun b!6852744 () Bool)

(assert (=> b!6852744 (= e!4132063 (= (head!13733 s!2326) (c!1275345 (h!72654 lt!2456210))))))

(declare-fun b!6852745 () Bool)

(declare-fun res!2796785 () Bool)

(assert (=> b!6852745 (=> res!2796785 e!4132062)))

(assert (=> b!6852745 (= res!2796785 (not ((_ is ElementMatch!16677) (h!72654 lt!2456210))))))

(assert (=> b!6852745 (= e!4132059 e!4132062)))

(assert (= (and d!2153716 c!1275620) b!6852739))

(assert (= (and d!2153716 (not c!1275620)) b!6852733))

(assert (= (and d!2153716 c!1275621) b!6852742))

(assert (= (and d!2153716 (not c!1275621)) b!6852740))

(assert (= (and b!6852740 c!1275619) b!6852743))

(assert (= (and b!6852740 (not c!1275619)) b!6852745))

(assert (= (and b!6852745 (not res!2796785)) b!6852737))

(assert (= (and b!6852737 res!2796788) b!6852741))

(assert (= (and b!6852741 res!2796787) b!6852735))

(assert (= (and b!6852735 res!2796789) b!6852744))

(assert (= (and b!6852737 (not res!2796792)) b!6852736))

(assert (= (and b!6852736 res!2796791) b!6852738))

(assert (= (and b!6852738 (not res!2796786)) b!6852732))

(assert (= (and b!6852732 (not res!2796790)) b!6852734))

(assert (= (or b!6852742 b!6852741 b!6852738) bm!624161))

(assert (=> d!2153716 m!7589856))

(assert (=> d!2153716 m!7590016))

(assert (=> b!6852733 m!7589900))

(assert (=> b!6852733 m!7589900))

(declare-fun m!7590482 () Bool)

(assert (=> b!6852733 m!7590482))

(assert (=> b!6852733 m!7589908))

(assert (=> b!6852733 m!7590482))

(assert (=> b!6852733 m!7589908))

(declare-fun m!7590484 () Bool)

(assert (=> b!6852733 m!7590484))

(assert (=> bm!624161 m!7589856))

(assert (=> b!6852734 m!7589900))

(assert (=> b!6852735 m!7589908))

(assert (=> b!6852735 m!7589908))

(assert (=> b!6852735 m!7589912))

(assert (=> b!6852744 m!7589900))

(declare-fun m!7590486 () Bool)

(assert (=> b!6852739 m!7590486))

(assert (=> b!6852732 m!7589908))

(assert (=> b!6852732 m!7589908))

(assert (=> b!6852732 m!7589912))

(assert (=> b!6852117 d!2153716))

(declare-fun d!2153718 () Bool)

(assert (=> d!2153718 (= (isEmpty!38579 (tail!12808 s!2326)) ((_ is Nil!66208) (tail!12808 s!2326)))))

(assert (=> b!6851937 d!2153718))

(declare-fun d!2153720 () Bool)

(assert (=> d!2153720 (= (tail!12808 s!2326) (t!380075 s!2326))))

(assert (=> b!6851937 d!2153720))

(declare-fun d!2153722 () Bool)

(assert (=> d!2153722 (= (nullable!6640 (reg!17006 lt!2456209)) (nullableFct!2524 (reg!17006 lt!2456209)))))

(declare-fun bs!1831569 () Bool)

(assert (= bs!1831569 d!2153722))

(declare-fun m!7590488 () Bool)

(assert (=> bs!1831569 m!7590488))

(assert (=> b!6851649 d!2153722))

(declare-fun bs!1831570 () Bool)

(declare-fun d!2153724 () Bool)

(assert (= bs!1831570 (and d!2153724 d!2153496)))

(declare-fun lambda!387439 () Int)

(assert (=> bs!1831570 (not (= lambda!387439 lambda!387395))))

(declare-fun bs!1831571 () Bool)

(assert (= bs!1831571 (and d!2153724 b!6851566)))

(assert (=> bs!1831571 (not (= lambda!387439 lambda!387348))))

(declare-fun bs!1831572 () Bool)

(assert (= bs!1831572 (and d!2153724 d!2153498)))

(assert (=> bs!1831572 (not (= lambda!387439 lambda!387401))))

(declare-fun bs!1831573 () Bool)

(assert (= bs!1831573 (and d!2153724 d!2153500)))

(assert (=> bs!1831573 (= lambda!387439 lambda!387404)))

(assert (=> bs!1831572 (= lambda!387439 lambda!387400)))

(declare-fun bs!1831574 () Bool)

(assert (= bs!1831574 (and d!2153724 d!2153502)))

(assert (=> bs!1831574 (= lambda!387439 lambda!387405)))

(declare-fun bs!1831575 () Bool)

(assert (= bs!1831575 (and d!2153724 d!2153480)))

(assert (=> bs!1831575 (= lambda!387439 lambda!387392)))

(declare-fun bs!1831576 () Bool)

(assert (= bs!1831576 (and d!2153724 d!2153712)))

(assert (=> bs!1831576 (= lambda!387439 lambda!387436)))

(declare-fun b!6852766 () Bool)

(declare-fun e!4132082 () Regex!16677)

(assert (=> b!6852766 (= e!4132082 (h!72654 (exprs!6561 (h!72655 zl!343))))))

(declare-fun b!6852767 () Bool)

(declare-fun e!4132081 () Bool)

(declare-fun lt!2456361 () Regex!16677)

(declare-fun isConcat!1531 (Regex!16677) Bool)

(assert (=> b!6852767 (= e!4132081 (isConcat!1531 lt!2456361))))

(declare-fun b!6852768 () Bool)

(declare-fun e!4132080 () Regex!16677)

(assert (=> b!6852768 (= e!4132082 e!4132080)))

(declare-fun c!1275630 () Bool)

(assert (=> b!6852768 (= c!1275630 ((_ is Cons!66206) (exprs!6561 (h!72655 zl!343))))))

(declare-fun b!6852769 () Bool)

(declare-fun e!4132077 () Bool)

(declare-fun e!4132078 () Bool)

(assert (=> b!6852769 (= e!4132077 e!4132078)))

(declare-fun c!1275632 () Bool)

(assert (=> b!6852769 (= c!1275632 (isEmpty!38581 (exprs!6561 (h!72655 zl!343))))))

(declare-fun b!6852770 () Bool)

(assert (=> b!6852770 (= e!4132080 (Concat!25522 (h!72654 (exprs!6561 (h!72655 zl!343))) (generalisedConcat!2268 (t!380073 (exprs!6561 (h!72655 zl!343))))))))

(declare-fun b!6852771 () Bool)

(declare-fun e!4132079 () Bool)

(assert (=> b!6852771 (= e!4132079 (isEmpty!38581 (t!380073 (exprs!6561 (h!72655 zl!343)))))))

(declare-fun b!6852772 () Bool)

(assert (=> b!6852772 (= e!4132081 (= lt!2456361 (head!13734 (exprs!6561 (h!72655 zl!343)))))))

(declare-fun b!6852773 () Bool)

(assert (=> b!6852773 (= e!4132078 e!4132081)))

(declare-fun c!1275631 () Bool)

(assert (=> b!6852773 (= c!1275631 (isEmpty!38581 (tail!12810 (exprs!6561 (h!72655 zl!343)))))))

(assert (=> d!2153724 e!4132077))

(declare-fun res!2796797 () Bool)

(assert (=> d!2153724 (=> (not res!2796797) (not e!4132077))))

(assert (=> d!2153724 (= res!2796797 (validRegex!8413 lt!2456361))))

(assert (=> d!2153724 (= lt!2456361 e!4132082)))

(declare-fun c!1275633 () Bool)

(assert (=> d!2153724 (= c!1275633 e!4132079)))

(declare-fun res!2796798 () Bool)

(assert (=> d!2153724 (=> (not res!2796798) (not e!4132079))))

(assert (=> d!2153724 (= res!2796798 ((_ is Cons!66206) (exprs!6561 (h!72655 zl!343))))))

(assert (=> d!2153724 (forall!15858 (exprs!6561 (h!72655 zl!343)) lambda!387439)))

(assert (=> d!2153724 (= (generalisedConcat!2268 (exprs!6561 (h!72655 zl!343))) lt!2456361)))

(declare-fun b!6852774 () Bool)

(declare-fun isEmptyExpr!2008 (Regex!16677) Bool)

(assert (=> b!6852774 (= e!4132078 (isEmptyExpr!2008 lt!2456361))))

(declare-fun b!6852775 () Bool)

(assert (=> b!6852775 (= e!4132080 EmptyExpr!16677)))

(assert (= (and d!2153724 res!2796798) b!6852771))

(assert (= (and d!2153724 c!1275633) b!6852766))

(assert (= (and d!2153724 (not c!1275633)) b!6852768))

(assert (= (and b!6852768 c!1275630) b!6852770))

(assert (= (and b!6852768 (not c!1275630)) b!6852775))

(assert (= (and d!2153724 res!2796797) b!6852769))

(assert (= (and b!6852769 c!1275632) b!6852774))

(assert (= (and b!6852769 (not c!1275632)) b!6852773))

(assert (= (and b!6852773 c!1275631) b!6852772))

(assert (= (and b!6852773 (not c!1275631)) b!6852767))

(declare-fun m!7590490 () Bool)

(assert (=> b!6852773 m!7590490))

(assert (=> b!6852773 m!7590490))

(declare-fun m!7590492 () Bool)

(assert (=> b!6852773 m!7590492))

(declare-fun m!7590494 () Bool)

(assert (=> b!6852769 m!7590494))

(declare-fun m!7590496 () Bool)

(assert (=> b!6852774 m!7590496))

(declare-fun m!7590498 () Bool)

(assert (=> b!6852767 m!7590498))

(declare-fun m!7590500 () Bool)

(assert (=> d!2153724 m!7590500))

(declare-fun m!7590502 () Bool)

(assert (=> d!2153724 m!7590502))

(declare-fun m!7590504 () Bool)

(assert (=> b!6852771 m!7590504))

(declare-fun m!7590506 () Bool)

(assert (=> b!6852770 m!7590506))

(declare-fun m!7590508 () Bool)

(assert (=> b!6852772 m!7590508))

(assert (=> bs!1831403 d!2153724))

(declare-fun bs!1831577 () Bool)

(declare-fun b!6852786 () Bool)

(assert (= bs!1831577 (and b!6852786 b!6851820)))

(declare-fun lambda!387440 () Int)

(assert (=> bs!1831577 (= (and (= (reg!17006 (regOne!33867 r!7292)) (reg!17006 r!7292)) (= (regOne!33867 r!7292) r!7292)) (= lambda!387440 lambda!387379))))

(declare-fun bs!1831578 () Bool)

(assert (= bs!1831578 (and b!6852786 b!6851816)))

(assert (=> bs!1831578 (not (= lambda!387440 lambda!387380))))

(assert (=> b!6852786 true))

(assert (=> b!6852786 true))

(declare-fun bs!1831579 () Bool)

(declare-fun b!6852782 () Bool)

(assert (= bs!1831579 (and b!6852782 b!6851820)))

(declare-fun lambda!387441 () Int)

(assert (=> bs!1831579 (not (= lambda!387441 lambda!387379))))

(declare-fun bs!1831580 () Bool)

(assert (= bs!1831580 (and b!6852782 b!6851816)))

(assert (=> bs!1831580 (= (and (= (regOne!33866 (regOne!33867 r!7292)) (regOne!33866 r!7292)) (= (regTwo!33866 (regOne!33867 r!7292)) (regTwo!33866 r!7292))) (= lambda!387441 lambda!387380))))

(declare-fun bs!1831581 () Bool)

(assert (= bs!1831581 (and b!6852782 b!6852786)))

(assert (=> bs!1831581 (not (= lambda!387441 lambda!387440))))

(assert (=> b!6852782 true))

(assert (=> b!6852782 true))

(declare-fun b!6852776 () Bool)

(declare-fun c!1275637 () Bool)

(assert (=> b!6852776 (= c!1275637 ((_ is Union!16677) (regOne!33867 r!7292)))))

(declare-fun e!4132086 () Bool)

(declare-fun e!4132084 () Bool)

(assert (=> b!6852776 (= e!4132086 e!4132084)))

(declare-fun b!6852777 () Bool)

(declare-fun c!1275634 () Bool)

(assert (=> b!6852777 (= c!1275634 ((_ is ElementMatch!16677) (regOne!33867 r!7292)))))

(declare-fun e!4132087 () Bool)

(assert (=> b!6852777 (= e!4132087 e!4132086)))

(declare-fun b!6852778 () Bool)

(declare-fun e!4132089 () Bool)

(assert (=> b!6852778 (= e!4132084 e!4132089)))

(declare-fun c!1275636 () Bool)

(assert (=> b!6852778 (= c!1275636 ((_ is Star!16677) (regOne!33867 r!7292)))))

(declare-fun b!6852779 () Bool)

(declare-fun e!4132085 () Bool)

(assert (=> b!6852779 (= e!4132085 (matchRSpec!3778 (regTwo!33867 (regOne!33867 r!7292)) s!2326))))

(declare-fun b!6852780 () Bool)

(assert (=> b!6852780 (= e!4132084 e!4132085)))

(declare-fun res!2796801 () Bool)

(assert (=> b!6852780 (= res!2796801 (matchRSpec!3778 (regOne!33867 (regOne!33867 r!7292)) s!2326))))

(assert (=> b!6852780 (=> res!2796801 e!4132085)))

(declare-fun b!6852781 () Bool)

(declare-fun e!4132083 () Bool)

(declare-fun call!624168 () Bool)

(assert (=> b!6852781 (= e!4132083 call!624168)))

(declare-fun b!6852783 () Bool)

(assert (=> b!6852783 (= e!4132086 (= s!2326 (Cons!66208 (c!1275345 (regOne!33867 r!7292)) Nil!66208)))))

(declare-fun bm!624162 () Bool)

(assert (=> bm!624162 (= call!624168 (isEmpty!38579 s!2326))))

(declare-fun b!6852784 () Bool)

(assert (=> b!6852784 (= e!4132083 e!4132087)))

(declare-fun res!2796799 () Bool)

(assert (=> b!6852784 (= res!2796799 (not ((_ is EmptyLang!16677) (regOne!33867 r!7292))))))

(assert (=> b!6852784 (=> (not res!2796799) (not e!4132087))))

(declare-fun b!6852785 () Bool)

(declare-fun res!2796800 () Bool)

(declare-fun e!4132088 () Bool)

(assert (=> b!6852785 (=> res!2796800 e!4132088)))

(assert (=> b!6852785 (= res!2796800 call!624168)))

(assert (=> b!6852785 (= e!4132089 e!4132088)))

(declare-fun call!624167 () Bool)

(assert (=> b!6852782 (= e!4132089 call!624167)))

(declare-fun d!2153726 () Bool)

(declare-fun c!1275635 () Bool)

(assert (=> d!2153726 (= c!1275635 ((_ is EmptyExpr!16677) (regOne!33867 r!7292)))))

(assert (=> d!2153726 (= (matchRSpec!3778 (regOne!33867 r!7292) s!2326) e!4132083)))

(assert (=> b!6852786 (= e!4132088 call!624167)))

(declare-fun bm!624163 () Bool)

(assert (=> bm!624163 (= call!624167 (Exists!3739 (ite c!1275636 lambda!387440 lambda!387441)))))

(assert (= (and d!2153726 c!1275635) b!6852781))

(assert (= (and d!2153726 (not c!1275635)) b!6852784))

(assert (= (and b!6852784 res!2796799) b!6852777))

(assert (= (and b!6852777 c!1275634) b!6852783))

(assert (= (and b!6852777 (not c!1275634)) b!6852776))

(assert (= (and b!6852776 c!1275637) b!6852780))

(assert (= (and b!6852776 (not c!1275637)) b!6852778))

(assert (= (and b!6852780 (not res!2796801)) b!6852779))

(assert (= (and b!6852778 c!1275636) b!6852785))

(assert (= (and b!6852778 (not c!1275636)) b!6852782))

(assert (= (and b!6852785 (not res!2796800)) b!6852786))

(assert (= (or b!6852786 b!6852782) bm!624163))

(assert (= (or b!6852781 b!6852785) bm!624162))

(declare-fun m!7590510 () Bool)

(assert (=> b!6852779 m!7590510))

(declare-fun m!7590512 () Bool)

(assert (=> b!6852780 m!7590512))

(assert (=> bm!624162 m!7589856))

(declare-fun m!7590514 () Bool)

(assert (=> bm!624163 m!7590514))

(assert (=> b!6851814 d!2153726))

(declare-fun b!6852787 () Bool)

(declare-fun res!2796803 () Bool)

(declare-fun e!4132095 () Bool)

(assert (=> b!6852787 (=> res!2796803 e!4132095)))

(assert (=> b!6852787 (= res!2796803 (not ((_ is Concat!25522) (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209))))))))

(declare-fun e!4132096 () Bool)

(assert (=> b!6852787 (= e!4132096 e!4132095)))

(declare-fun b!6852788 () Bool)

(declare-fun res!2796804 () Bool)

(declare-fun e!4132090 () Bool)

(assert (=> b!6852788 (=> (not res!2796804) (not e!4132090))))

(declare-fun call!624169 () Bool)

(assert (=> b!6852788 (= res!2796804 call!624169)))

(assert (=> b!6852788 (= e!4132096 e!4132090)))

(declare-fun c!1275638 () Bool)

(declare-fun c!1275639 () Bool)

(declare-fun bm!624164 () Bool)

(declare-fun call!624170 () Bool)

(assert (=> bm!624164 (= call!624170 (validRegex!8413 (ite c!1275638 (reg!17006 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))) (ite c!1275639 (regOne!33867 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))) (regOne!33866 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209))))))))))

(declare-fun b!6852789 () Bool)

(declare-fun call!624171 () Bool)

(assert (=> b!6852789 (= e!4132090 call!624171)))

(declare-fun b!6852791 () Bool)

(declare-fun e!4132091 () Bool)

(declare-fun e!4132092 () Bool)

(assert (=> b!6852791 (= e!4132091 e!4132092)))

(assert (=> b!6852791 (= c!1275638 ((_ is Star!16677) (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))))))

(declare-fun b!6852792 () Bool)

(assert (=> b!6852792 (= e!4132092 e!4132096)))

(assert (=> b!6852792 (= c!1275639 ((_ is Union!16677) (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))))))

(declare-fun bm!624165 () Bool)

(assert (=> bm!624165 (= call!624169 call!624170)))

(declare-fun d!2153728 () Bool)

(declare-fun res!2796805 () Bool)

(assert (=> d!2153728 (=> res!2796805 e!4132091)))

(assert (=> d!2153728 (= res!2796805 ((_ is ElementMatch!16677) (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))))))

(assert (=> d!2153728 (= (validRegex!8413 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))) e!4132091)))

(declare-fun b!6852790 () Bool)

(declare-fun e!4132093 () Bool)

(assert (=> b!6852790 (= e!4132092 e!4132093)))

(declare-fun res!2796806 () Bool)

(assert (=> b!6852790 (= res!2796806 (not (nullable!6640 (reg!17006 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))))))))

(assert (=> b!6852790 (=> (not res!2796806) (not e!4132093))))

(declare-fun b!6852793 () Bool)

(assert (=> b!6852793 (= e!4132093 call!624170)))

(declare-fun bm!624166 () Bool)

(assert (=> bm!624166 (= call!624171 (validRegex!8413 (ite c!1275639 (regTwo!33867 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))) (regTwo!33866 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))))))))

(declare-fun b!6852794 () Bool)

(declare-fun e!4132094 () Bool)

(assert (=> b!6852794 (= e!4132094 call!624171)))

(declare-fun b!6852795 () Bool)

(assert (=> b!6852795 (= e!4132095 e!4132094)))

(declare-fun res!2796802 () Bool)

(assert (=> b!6852795 (=> (not res!2796802) (not e!4132094))))

(assert (=> b!6852795 (= res!2796802 call!624169)))

(assert (= (and d!2153728 (not res!2796805)) b!6852791))

(assert (= (and b!6852791 c!1275638) b!6852790))

(assert (= (and b!6852791 (not c!1275638)) b!6852792))

(assert (= (and b!6852790 res!2796806) b!6852793))

(assert (= (and b!6852792 c!1275639) b!6852788))

(assert (= (and b!6852792 (not c!1275639)) b!6852787))

(assert (= (and b!6852788 res!2796804) b!6852789))

(assert (= (and b!6852787 (not res!2796803)) b!6852795))

(assert (= (and b!6852795 res!2796802) b!6852794))

(assert (= (or b!6852789 b!6852794) bm!624166))

(assert (= (or b!6852788 b!6852795) bm!624165))

(assert (= (or b!6852793 bm!624165) bm!624164))

(declare-fun m!7590516 () Bool)

(assert (=> bm!624164 m!7590516))

(declare-fun m!7590518 () Bool)

(assert (=> b!6852790 m!7590518))

(declare-fun m!7590520 () Bool)

(assert (=> bm!624166 m!7590520))

(assert (=> bm!624060 d!2153728))

(assert (=> d!2153498 d!2153460))

(declare-fun bs!1831582 () Bool)

(declare-fun d!2153730 () Bool)

(assert (= bs!1831582 (and d!2153730 d!2153496)))

(declare-fun lambda!387442 () Int)

(assert (=> bs!1831582 (= (= lambda!387401 lambda!387348) (= lambda!387442 lambda!387395))))

(declare-fun bs!1831583 () Bool)

(assert (= bs!1831583 (and d!2153730 d!2153498)))

(assert (=> bs!1831583 (not (= lambda!387442 lambda!387401))))

(declare-fun bs!1831584 () Bool)

(assert (= bs!1831584 (and d!2153730 d!2153500)))

(assert (=> bs!1831584 (not (= lambda!387442 lambda!387404))))

(assert (=> bs!1831583 (not (= lambda!387442 lambda!387400))))

(declare-fun bs!1831585 () Bool)

(assert (= bs!1831585 (and d!2153730 d!2153502)))

(assert (=> bs!1831585 (not (= lambda!387442 lambda!387405))))

(declare-fun bs!1831586 () Bool)

(assert (= bs!1831586 (and d!2153730 d!2153480)))

(assert (=> bs!1831586 (not (= lambda!387442 lambda!387392))))

(declare-fun bs!1831587 () Bool)

(assert (= bs!1831587 (and d!2153730 d!2153712)))

(assert (=> bs!1831587 (not (= lambda!387442 lambda!387436))))

(declare-fun bs!1831588 () Bool)

(assert (= bs!1831588 (and d!2153730 d!2153724)))

(assert (=> bs!1831588 (not (= lambda!387442 lambda!387439))))

(declare-fun bs!1831589 () Bool)

(assert (= bs!1831589 (and d!2153730 b!6851566)))

(assert (=> bs!1831589 (not (= lambda!387442 lambda!387348))))

(assert (=> d!2153730 true))

(assert (=> d!2153730 (< (dynLambda!26465 order!27663 lambda!387401) (dynLambda!26465 order!27663 lambda!387442))))

(assert (=> d!2153730 (= (exists!2781 lt!2456210 lambda!387401) (not (forall!15858 lt!2456210 lambda!387442)))))

(declare-fun bs!1831590 () Bool)

(assert (= bs!1831590 d!2153730))

(declare-fun m!7590522 () Bool)

(assert (=> bs!1831590 m!7590522))

(assert (=> d!2153498 d!2153730))

(declare-fun bs!1831591 () Bool)

(declare-fun d!2153732 () Bool)

(assert (= bs!1831591 (and d!2153732 d!2153730)))

(declare-fun lambda!387445 () Int)

(assert (=> bs!1831591 (not (= lambda!387445 lambda!387442))))

(declare-fun bs!1831592 () Bool)

(assert (= bs!1831592 (and d!2153732 d!2153496)))

(assert (=> bs!1831592 (not (= lambda!387445 lambda!387395))))

(declare-fun bs!1831593 () Bool)

(assert (= bs!1831593 (and d!2153732 d!2153498)))

(assert (=> bs!1831593 (= lambda!387445 lambda!387401)))

(declare-fun bs!1831594 () Bool)

(assert (= bs!1831594 (and d!2153732 d!2153500)))

(assert (=> bs!1831594 (not (= lambda!387445 lambda!387404))))

(assert (=> bs!1831593 (not (= lambda!387445 lambda!387400))))

(declare-fun bs!1831595 () Bool)

(assert (= bs!1831595 (and d!2153732 d!2153502)))

(assert (=> bs!1831595 (not (= lambda!387445 lambda!387405))))

(declare-fun bs!1831596 () Bool)

(assert (= bs!1831596 (and d!2153732 d!2153480)))

(assert (=> bs!1831596 (not (= lambda!387445 lambda!387392))))

(declare-fun bs!1831597 () Bool)

(assert (= bs!1831597 (and d!2153732 d!2153712)))

(assert (=> bs!1831597 (not (= lambda!387445 lambda!387436))))

(declare-fun bs!1831598 () Bool)

(assert (= bs!1831598 (and d!2153732 d!2153724)))

(assert (=> bs!1831598 (not (= lambda!387445 lambda!387439))))

(declare-fun bs!1831599 () Bool)

(assert (= bs!1831599 (and d!2153732 b!6851566)))

(assert (=> bs!1831599 (= lambda!387445 lambda!387348)))

(assert (=> d!2153732 true))

(assert (=> d!2153732 (= (matchR!8860 r!7292 s!2326) (exists!2781 lt!2456210 lambda!387445))))

(assert (=> d!2153732 true))

(declare-fun _$85!203 () Unit!160081)

(assert (=> d!2153732 (= (choose!51062 r!7292 lt!2456210 s!2326) _$85!203)))

(declare-fun bs!1831600 () Bool)

(assert (= bs!1831600 d!2153732))

(assert (=> bs!1831600 m!7589682))

(declare-fun m!7590524 () Bool)

(assert (=> bs!1831600 m!7590524))

(assert (=> d!2153498 d!2153732))

(declare-fun d!2153734 () Bool)

(declare-fun res!2796809 () Bool)

(declare-fun e!4132099 () Bool)

(assert (=> d!2153734 (=> res!2796809 e!4132099)))

(assert (=> d!2153734 (= res!2796809 ((_ is Nil!66206) lt!2456210))))

(assert (=> d!2153734 (= (forall!15858 lt!2456210 lambda!387400) e!4132099)))

(declare-fun b!6852798 () Bool)

(declare-fun e!4132100 () Bool)

(assert (=> b!6852798 (= e!4132099 e!4132100)))

(declare-fun res!2796810 () Bool)

(assert (=> b!6852798 (=> (not res!2796810) (not e!4132100))))

(assert (=> b!6852798 (= res!2796810 (dynLambda!26464 lambda!387400 (h!72654 lt!2456210)))))

(declare-fun b!6852799 () Bool)

(assert (=> b!6852799 (= e!4132100 (forall!15858 (t!380073 lt!2456210) lambda!387400))))

(assert (= (and d!2153734 (not res!2796809)) b!6852798))

(assert (= (and b!6852798 res!2796810) b!6852799))

(declare-fun b_lambda!258737 () Bool)

(assert (=> (not b_lambda!258737) (not b!6852798)))

(declare-fun m!7590526 () Bool)

(assert (=> b!6852798 m!7590526))

(declare-fun m!7590528 () Bool)

(assert (=> b!6852799 m!7590528))

(assert (=> d!2153498 d!2153734))

(declare-fun d!2153736 () Bool)

(declare-fun e!4132101 () Bool)

(assert (=> d!2153736 e!4132101))

(declare-fun c!1275642 () Bool)

(assert (=> d!2153736 (= c!1275642 ((_ is EmptyExpr!16677) (derivativeStep!5323 r!7292 (head!13733 s!2326))))))

(declare-fun lt!2456362 () Bool)

(declare-fun e!4132104 () Bool)

(assert (=> d!2153736 (= lt!2456362 e!4132104)))

(declare-fun c!1275641 () Bool)

(assert (=> d!2153736 (= c!1275641 (isEmpty!38579 (tail!12808 s!2326)))))

(assert (=> d!2153736 (validRegex!8413 (derivativeStep!5323 r!7292 (head!13733 s!2326)))))

(assert (=> d!2153736 (= (matchR!8860 (derivativeStep!5323 r!7292 (head!13733 s!2326)) (tail!12808 s!2326)) lt!2456362)))

(declare-fun b!6852800 () Bool)

(declare-fun res!2796816 () Bool)

(declare-fun e!4132103 () Bool)

(assert (=> b!6852800 (=> res!2796816 e!4132103)))

(assert (=> b!6852800 (= res!2796816 (not (isEmpty!38579 (tail!12808 (tail!12808 s!2326)))))))

(declare-fun b!6852801 () Bool)

(assert (=> b!6852801 (= e!4132104 (matchR!8860 (derivativeStep!5323 (derivativeStep!5323 r!7292 (head!13733 s!2326)) (head!13733 (tail!12808 s!2326))) (tail!12808 (tail!12808 s!2326))))))

(declare-fun b!6852802 () Bool)

(assert (=> b!6852802 (= e!4132103 (not (= (head!13733 (tail!12808 s!2326)) (c!1275345 (derivativeStep!5323 r!7292 (head!13733 s!2326))))))))

(declare-fun b!6852803 () Bool)

(declare-fun res!2796815 () Bool)

(declare-fun e!4132106 () Bool)

(assert (=> b!6852803 (=> (not res!2796815) (not e!4132106))))

(assert (=> b!6852803 (= res!2796815 (isEmpty!38579 (tail!12808 (tail!12808 s!2326))))))

(declare-fun b!6852804 () Bool)

(declare-fun e!4132105 () Bool)

(declare-fun e!4132107 () Bool)

(assert (=> b!6852804 (= e!4132105 e!4132107)))

(declare-fun res!2796817 () Bool)

(assert (=> b!6852804 (=> (not res!2796817) (not e!4132107))))

(assert (=> b!6852804 (= res!2796817 (not lt!2456362))))

(declare-fun b!6852805 () Bool)

(declare-fun res!2796818 () Bool)

(assert (=> b!6852805 (=> res!2796818 e!4132105)))

(assert (=> b!6852805 (= res!2796818 e!4132106)))

(declare-fun res!2796814 () Bool)

(assert (=> b!6852805 (=> (not res!2796814) (not e!4132106))))

(assert (=> b!6852805 (= res!2796814 lt!2456362)))

(declare-fun b!6852806 () Bool)

(assert (=> b!6852806 (= e!4132107 e!4132103)))

(declare-fun res!2796812 () Bool)

(assert (=> b!6852806 (=> res!2796812 e!4132103)))

(declare-fun call!624172 () Bool)

(assert (=> b!6852806 (= res!2796812 call!624172)))

(declare-fun b!6852807 () Bool)

(assert (=> b!6852807 (= e!4132104 (nullable!6640 (derivativeStep!5323 r!7292 (head!13733 s!2326))))))

(declare-fun b!6852808 () Bool)

(declare-fun e!4132102 () Bool)

(assert (=> b!6852808 (= e!4132101 e!4132102)))

(declare-fun c!1275640 () Bool)

(assert (=> b!6852808 (= c!1275640 ((_ is EmptyLang!16677) (derivativeStep!5323 r!7292 (head!13733 s!2326))))))

(declare-fun b!6852809 () Bool)

(declare-fun res!2796813 () Bool)

(assert (=> b!6852809 (=> (not res!2796813) (not e!4132106))))

(assert (=> b!6852809 (= res!2796813 (not call!624172))))

(declare-fun b!6852810 () Bool)

(assert (=> b!6852810 (= e!4132101 (= lt!2456362 call!624172))))

(declare-fun bm!624167 () Bool)

(assert (=> bm!624167 (= call!624172 (isEmpty!38579 (tail!12808 s!2326)))))

(declare-fun b!6852811 () Bool)

(assert (=> b!6852811 (= e!4132102 (not lt!2456362))))

(declare-fun b!6852812 () Bool)

(assert (=> b!6852812 (= e!4132106 (= (head!13733 (tail!12808 s!2326)) (c!1275345 (derivativeStep!5323 r!7292 (head!13733 s!2326)))))))

(declare-fun b!6852813 () Bool)

(declare-fun res!2796811 () Bool)

(assert (=> b!6852813 (=> res!2796811 e!4132105)))

(assert (=> b!6852813 (= res!2796811 (not ((_ is ElementMatch!16677) (derivativeStep!5323 r!7292 (head!13733 s!2326)))))))

(assert (=> b!6852813 (= e!4132102 e!4132105)))

(assert (= (and d!2153736 c!1275641) b!6852807))

(assert (= (and d!2153736 (not c!1275641)) b!6852801))

(assert (= (and d!2153736 c!1275642) b!6852810))

(assert (= (and d!2153736 (not c!1275642)) b!6852808))

(assert (= (and b!6852808 c!1275640) b!6852811))

(assert (= (and b!6852808 (not c!1275640)) b!6852813))

(assert (= (and b!6852813 (not res!2796811)) b!6852805))

(assert (= (and b!6852805 res!2796814) b!6852809))

(assert (= (and b!6852809 res!2796813) b!6852803))

(assert (= (and b!6852803 res!2796815) b!6852812))

(assert (= (and b!6852805 (not res!2796818)) b!6852804))

(assert (= (and b!6852804 res!2796817) b!6852806))

(assert (= (and b!6852806 (not res!2796812)) b!6852800))

(assert (= (and b!6852800 (not res!2796816)) b!6852802))

(assert (= (or b!6852810 b!6852809 b!6852806) bm!624167))

(assert (=> d!2153736 m!7589908))

(assert (=> d!2153736 m!7589912))

(assert (=> d!2153736 m!7589902))

(declare-fun m!7590530 () Bool)

(assert (=> d!2153736 m!7590530))

(assert (=> b!6852801 m!7589908))

(declare-fun m!7590532 () Bool)

(assert (=> b!6852801 m!7590532))

(assert (=> b!6852801 m!7589902))

(assert (=> b!6852801 m!7590532))

(declare-fun m!7590534 () Bool)

(assert (=> b!6852801 m!7590534))

(assert (=> b!6852801 m!7589908))

(declare-fun m!7590536 () Bool)

(assert (=> b!6852801 m!7590536))

(assert (=> b!6852801 m!7590534))

(assert (=> b!6852801 m!7590536))

(declare-fun m!7590538 () Bool)

(assert (=> b!6852801 m!7590538))

(assert (=> bm!624167 m!7589908))

(assert (=> bm!624167 m!7589912))

(assert (=> b!6852802 m!7589908))

(assert (=> b!6852802 m!7590532))

(assert (=> b!6852803 m!7589908))

(assert (=> b!6852803 m!7590536))

(assert (=> b!6852803 m!7590536))

(declare-fun m!7590540 () Bool)

(assert (=> b!6852803 m!7590540))

(assert (=> b!6852812 m!7589908))

(assert (=> b!6852812 m!7590532))

(assert (=> b!6852807 m!7589902))

(declare-fun m!7590542 () Bool)

(assert (=> b!6852807 m!7590542))

(assert (=> b!6852800 m!7589908))

(assert (=> b!6852800 m!7590536))

(assert (=> b!6852800 m!7590536))

(assert (=> b!6852800 m!7590540))

(assert (=> b!6851935 d!2153736))

(declare-fun c!1275656 () Bool)

(declare-fun c!1275655 () Bool)

(declare-fun bm!624176 () Bool)

(declare-fun call!624182 () Regex!16677)

(assert (=> bm!624176 (= call!624182 (derivativeStep!5323 (ite c!1275656 (regTwo!33867 r!7292) (ite c!1275655 (reg!17006 r!7292) (regOne!33866 r!7292))) (head!13733 s!2326)))))

(declare-fun b!6852834 () Bool)

(declare-fun e!4132121 () Regex!16677)

(declare-fun e!4132119 () Regex!16677)

(assert (=> b!6852834 (= e!4132121 e!4132119)))

(assert (=> b!6852834 (= c!1275655 ((_ is Star!16677) r!7292))))

(declare-fun bm!624177 () Bool)

(declare-fun c!1275657 () Bool)

(declare-fun call!624184 () Regex!16677)

(assert (=> bm!624177 (= call!624184 (derivativeStep!5323 (ite c!1275656 (regOne!33867 r!7292) (ite c!1275657 (regTwo!33866 r!7292) (regOne!33866 r!7292))) (head!13733 s!2326)))))

(declare-fun b!6852835 () Bool)

(declare-fun call!624181 () Regex!16677)

(declare-fun e!4132118 () Regex!16677)

(declare-fun call!624183 () Regex!16677)

(assert (=> b!6852835 (= e!4132118 (Union!16677 (Concat!25522 call!624181 (regTwo!33866 r!7292)) call!624183))))

(declare-fun bm!624178 () Bool)

(assert (=> bm!624178 (= call!624181 call!624182)))

(declare-fun d!2153738 () Bool)

(declare-fun lt!2456365 () Regex!16677)

(assert (=> d!2153738 (validRegex!8413 lt!2456365)))

(declare-fun e!4132122 () Regex!16677)

(assert (=> d!2153738 (= lt!2456365 e!4132122)))

(declare-fun c!1275654 () Bool)

(assert (=> d!2153738 (= c!1275654 (or ((_ is EmptyExpr!16677) r!7292) ((_ is EmptyLang!16677) r!7292)))))

(assert (=> d!2153738 (validRegex!8413 r!7292)))

(assert (=> d!2153738 (= (derivativeStep!5323 r!7292 (head!13733 s!2326)) lt!2456365)))

(declare-fun b!6852836 () Bool)

(declare-fun e!4132120 () Regex!16677)

(assert (=> b!6852836 (= e!4132122 e!4132120)))

(declare-fun c!1275653 () Bool)

(assert (=> b!6852836 (= c!1275653 ((_ is ElementMatch!16677) r!7292))))

(declare-fun bm!624179 () Bool)

(assert (=> bm!624179 (= call!624183 call!624184)))

(declare-fun b!6852837 () Bool)

(assert (=> b!6852837 (= e!4132118 (Union!16677 (Concat!25522 call!624183 (regTwo!33866 r!7292)) EmptyLang!16677))))

(declare-fun b!6852838 () Bool)

(assert (=> b!6852838 (= e!4132121 (Union!16677 call!624184 call!624182))))

(declare-fun b!6852839 () Bool)

(assert (=> b!6852839 (= c!1275657 (nullable!6640 (regOne!33866 r!7292)))))

(assert (=> b!6852839 (= e!4132119 e!4132118)))

(declare-fun b!6852840 () Bool)

(assert (=> b!6852840 (= c!1275656 ((_ is Union!16677) r!7292))))

(assert (=> b!6852840 (= e!4132120 e!4132121)))

(declare-fun b!6852841 () Bool)

(assert (=> b!6852841 (= e!4132120 (ite (= (head!13733 s!2326) (c!1275345 r!7292)) EmptyExpr!16677 EmptyLang!16677))))

(declare-fun b!6852842 () Bool)

(assert (=> b!6852842 (= e!4132119 (Concat!25522 call!624181 r!7292))))

(declare-fun b!6852843 () Bool)

(assert (=> b!6852843 (= e!4132122 EmptyLang!16677)))

(assert (= (and d!2153738 c!1275654) b!6852843))

(assert (= (and d!2153738 (not c!1275654)) b!6852836))

(assert (= (and b!6852836 c!1275653) b!6852841))

(assert (= (and b!6852836 (not c!1275653)) b!6852840))

(assert (= (and b!6852840 c!1275656) b!6852838))

(assert (= (and b!6852840 (not c!1275656)) b!6852834))

(assert (= (and b!6852834 c!1275655) b!6852842))

(assert (= (and b!6852834 (not c!1275655)) b!6852839))

(assert (= (and b!6852839 c!1275657) b!6852835))

(assert (= (and b!6852839 (not c!1275657)) b!6852837))

(assert (= (or b!6852835 b!6852837) bm!624179))

(assert (= (or b!6852842 b!6852835) bm!624178))

(assert (= (or b!6852838 bm!624178) bm!624176))

(assert (= (or b!6852838 bm!624179) bm!624177))

(assert (=> bm!624176 m!7589900))

(declare-fun m!7590544 () Bool)

(assert (=> bm!624176 m!7590544))

(assert (=> bm!624177 m!7589900))

(declare-fun m!7590546 () Bool)

(assert (=> bm!624177 m!7590546))

(declare-fun m!7590548 () Bool)

(assert (=> d!2153738 m!7590548))

(assert (=> d!2153738 m!7589704))

(declare-fun m!7590550 () Bool)

(assert (=> b!6852839 m!7590550))

(assert (=> b!6851935 d!2153738))

(assert (=> b!6851935 d!2153670))

(assert (=> b!6851935 d!2153720))

(declare-fun d!2153740 () Bool)

(assert (=> d!2153740 (= (head!13735 zl!343) (h!72655 zl!343))))

(assert (=> b!6852061 d!2153740))

(assert (=> b!6851994 d!2153670))

(declare-fun d!2153742 () Bool)

(declare-fun lt!2456368 () Bool)

(assert (=> d!2153742 (= lt!2456368 (select (content!12985 zl!343) lt!2456307))))

(declare-fun e!4132128 () Bool)

(assert (=> d!2153742 (= lt!2456368 e!4132128)))

(declare-fun res!2796823 () Bool)

(assert (=> d!2153742 (=> (not res!2796823) (not e!4132128))))

(assert (=> d!2153742 (= res!2796823 ((_ is Cons!66207) zl!343))))

(assert (=> d!2153742 (= (contains!20331 zl!343 lt!2456307) lt!2456368)))

(declare-fun b!6852848 () Bool)

(declare-fun e!4132127 () Bool)

(assert (=> b!6852848 (= e!4132128 e!4132127)))

(declare-fun res!2796824 () Bool)

(assert (=> b!6852848 (=> res!2796824 e!4132127)))

(assert (=> b!6852848 (= res!2796824 (= (h!72655 zl!343) lt!2456307))))

(declare-fun b!6852849 () Bool)

(assert (=> b!6852849 (= e!4132127 (contains!20331 (t!380074 zl!343) lt!2456307))))

(assert (= (and d!2153742 res!2796823) b!6852848))

(assert (= (and b!6852848 (not res!2796824)) b!6852849))

(declare-fun m!7590552 () Bool)

(assert (=> d!2153742 m!7590552))

(declare-fun m!7590554 () Bool)

(assert (=> d!2153742 m!7590554))

(declare-fun m!7590556 () Bool)

(assert (=> b!6852849 m!7590556))

(assert (=> b!6852059 d!2153742))

(declare-fun d!2153744 () Bool)

(declare-fun choose!51065 (Int) Bool)

(assert (=> d!2153744 (= (Exists!3739 (ite c!1275410 lambda!387379 lambda!387380)) (choose!51065 (ite c!1275410 lambda!387379 lambda!387380)))))

(declare-fun bs!1831601 () Bool)

(assert (= bs!1831601 d!2153744))

(declare-fun m!7590558 () Bool)

(assert (=> bs!1831601 m!7590558))

(assert (=> bm!624080 d!2153744))

(declare-fun d!2153746 () Bool)

(declare-fun c!1275660 () Bool)

(assert (=> d!2153746 (= c!1275660 ((_ is Nil!66206) lt!2456210))))

(declare-fun e!4132131 () (InoxSet Regex!16677))

(assert (=> d!2153746 (= (content!12986 lt!2456210) e!4132131)))

(declare-fun b!6852854 () Bool)

(assert (=> b!6852854 (= e!4132131 ((as const (Array Regex!16677 Bool)) false))))

(declare-fun b!6852855 () Bool)

(assert (=> b!6852855 (= e!4132131 ((_ map or) (store ((as const (Array Regex!16677 Bool)) false) (h!72654 lt!2456210) true) (content!12986 (t!380073 lt!2456210))))))

(assert (= (and d!2153746 c!1275660) b!6852854))

(assert (= (and d!2153746 (not c!1275660)) b!6852855))

(declare-fun m!7590560 () Bool)

(assert (=> b!6852855 m!7590560))

(assert (=> b!6852855 m!7590354))

(assert (=> d!2153490 d!2153746))

(assert (=> b!6851984 d!2153670))

(assert (=> d!2153460 d!2153672))

(assert (=> d!2153460 d!2153486))

(declare-fun bs!1831602 () Bool)

(declare-fun d!2153748 () Bool)

(assert (= bs!1831602 (and d!2153748 d!2153732)))

(declare-fun lambda!387446 () Int)

(assert (=> bs!1831602 (not (= lambda!387446 lambda!387445))))

(declare-fun bs!1831603 () Bool)

(assert (= bs!1831603 (and d!2153748 d!2153730)))

(assert (=> bs!1831603 (not (= lambda!387446 lambda!387442))))

(declare-fun bs!1831604 () Bool)

(assert (= bs!1831604 (and d!2153748 d!2153496)))

(assert (=> bs!1831604 (not (= lambda!387446 lambda!387395))))

(declare-fun bs!1831605 () Bool)

(assert (= bs!1831605 (and d!2153748 d!2153498)))

(assert (=> bs!1831605 (not (= lambda!387446 lambda!387401))))

(declare-fun bs!1831606 () Bool)

(assert (= bs!1831606 (and d!2153748 d!2153500)))

(assert (=> bs!1831606 (= lambda!387446 lambda!387404)))

(assert (=> bs!1831605 (= lambda!387446 lambda!387400)))

(declare-fun bs!1831607 () Bool)

(assert (= bs!1831607 (and d!2153748 d!2153502)))

(assert (=> bs!1831607 (= lambda!387446 lambda!387405)))

(declare-fun bs!1831608 () Bool)

(assert (= bs!1831608 (and d!2153748 d!2153480)))

(assert (=> bs!1831608 (= lambda!387446 lambda!387392)))

(declare-fun bs!1831609 () Bool)

(assert (= bs!1831609 (and d!2153748 d!2153712)))

(assert (=> bs!1831609 (= lambda!387446 lambda!387436)))

(declare-fun bs!1831610 () Bool)

(assert (= bs!1831610 (and d!2153748 d!2153724)))

(assert (=> bs!1831610 (= lambda!387446 lambda!387439)))

(declare-fun bs!1831611 () Bool)

(assert (= bs!1831611 (and d!2153748 b!6851566)))

(assert (=> bs!1831611 (not (= lambda!387446 lambda!387348))))

(assert (=> d!2153748 (= (inv!84939 setElem!47103) (forall!15858 (exprs!6561 setElem!47103) lambda!387446))))

(declare-fun bs!1831612 () Bool)

(assert (= bs!1831612 d!2153748))

(declare-fun m!7590562 () Bool)

(assert (=> bs!1831612 m!7590562))

(assert (=> setNonEmpty!47103 d!2153748))

(declare-fun d!2153750 () Bool)

(assert (=> d!2153750 (= (nullable!6640 r!7292) (nullableFct!2524 r!7292))))

(declare-fun bs!1831613 () Bool)

(assert (= bs!1831613 d!2153750))

(declare-fun m!7590564 () Bool)

(assert (=> bs!1831613 m!7590564))

(assert (=> b!6851941 d!2153750))

(assert (=> b!6851982 d!2153718))

(assert (=> b!6851982 d!2153720))

(assert (=> d!2153488 d!2153672))

(assert (=> d!2153488 d!2153430))

(declare-fun d!2153752 () Bool)

(declare-fun e!4132132 () Bool)

(assert (=> d!2153752 e!4132132))

(declare-fun c!1275663 () Bool)

(assert (=> d!2153752 (= c!1275663 ((_ is EmptyExpr!16677) lt!2456284))))

(declare-fun lt!2456369 () Bool)

(declare-fun e!4132135 () Bool)

(assert (=> d!2153752 (= lt!2456369 e!4132135)))

(declare-fun c!1275662 () Bool)

(assert (=> d!2153752 (= c!1275662 (isEmpty!38579 s!2326))))

(assert (=> d!2153752 (validRegex!8413 lt!2456284)))

(assert (=> d!2153752 (= (matchR!8860 lt!2456284 s!2326) lt!2456369)))

(declare-fun b!6852856 () Bool)

(declare-fun res!2796830 () Bool)

(declare-fun e!4132134 () Bool)

(assert (=> b!6852856 (=> res!2796830 e!4132134)))

(assert (=> b!6852856 (= res!2796830 (not (isEmpty!38579 (tail!12808 s!2326))))))

(declare-fun b!6852857 () Bool)

(assert (=> b!6852857 (= e!4132135 (matchR!8860 (derivativeStep!5323 lt!2456284 (head!13733 s!2326)) (tail!12808 s!2326)))))

(declare-fun b!6852858 () Bool)

(assert (=> b!6852858 (= e!4132134 (not (= (head!13733 s!2326) (c!1275345 lt!2456284))))))

(declare-fun b!6852859 () Bool)

(declare-fun res!2796829 () Bool)

(declare-fun e!4132137 () Bool)

(assert (=> b!6852859 (=> (not res!2796829) (not e!4132137))))

(assert (=> b!6852859 (= res!2796829 (isEmpty!38579 (tail!12808 s!2326)))))

(declare-fun b!6852860 () Bool)

(declare-fun e!4132136 () Bool)

(declare-fun e!4132138 () Bool)

(assert (=> b!6852860 (= e!4132136 e!4132138)))

(declare-fun res!2796831 () Bool)

(assert (=> b!6852860 (=> (not res!2796831) (not e!4132138))))

(assert (=> b!6852860 (= res!2796831 (not lt!2456369))))

(declare-fun b!6852861 () Bool)

(declare-fun res!2796832 () Bool)

(assert (=> b!6852861 (=> res!2796832 e!4132136)))

(assert (=> b!6852861 (= res!2796832 e!4132137)))

(declare-fun res!2796828 () Bool)

(assert (=> b!6852861 (=> (not res!2796828) (not e!4132137))))

(assert (=> b!6852861 (= res!2796828 lt!2456369)))

(declare-fun b!6852862 () Bool)

(assert (=> b!6852862 (= e!4132138 e!4132134)))

(declare-fun res!2796826 () Bool)

(assert (=> b!6852862 (=> res!2796826 e!4132134)))

(declare-fun call!624185 () Bool)

(assert (=> b!6852862 (= res!2796826 call!624185)))

(declare-fun b!6852863 () Bool)

(assert (=> b!6852863 (= e!4132135 (nullable!6640 lt!2456284))))

(declare-fun b!6852864 () Bool)

(declare-fun e!4132133 () Bool)

(assert (=> b!6852864 (= e!4132132 e!4132133)))

(declare-fun c!1275661 () Bool)

(assert (=> b!6852864 (= c!1275661 ((_ is EmptyLang!16677) lt!2456284))))

(declare-fun b!6852865 () Bool)

(declare-fun res!2796827 () Bool)

(assert (=> b!6852865 (=> (not res!2796827) (not e!4132137))))

(assert (=> b!6852865 (= res!2796827 (not call!624185))))

(declare-fun b!6852866 () Bool)

(assert (=> b!6852866 (= e!4132132 (= lt!2456369 call!624185))))

(declare-fun bm!624180 () Bool)

(assert (=> bm!624180 (= call!624185 (isEmpty!38579 s!2326))))

(declare-fun b!6852867 () Bool)

(assert (=> b!6852867 (= e!4132133 (not lt!2456369))))

(declare-fun b!6852868 () Bool)

(assert (=> b!6852868 (= e!4132137 (= (head!13733 s!2326) (c!1275345 lt!2456284)))))

(declare-fun b!6852869 () Bool)

(declare-fun res!2796825 () Bool)

(assert (=> b!6852869 (=> res!2796825 e!4132136)))

(assert (=> b!6852869 (= res!2796825 (not ((_ is ElementMatch!16677) lt!2456284)))))

(assert (=> b!6852869 (= e!4132133 e!4132136)))

(assert (= (and d!2153752 c!1275662) b!6852863))

(assert (= (and d!2153752 (not c!1275662)) b!6852857))

(assert (= (and d!2153752 c!1275663) b!6852866))

(assert (= (and d!2153752 (not c!1275663)) b!6852864))

(assert (= (and b!6852864 c!1275661) b!6852867))

(assert (= (and b!6852864 (not c!1275661)) b!6852869))

(assert (= (and b!6852869 (not res!2796825)) b!6852861))

(assert (= (and b!6852861 res!2796828) b!6852865))

(assert (= (and b!6852865 res!2796827) b!6852859))

(assert (= (and b!6852859 res!2796829) b!6852868))

(assert (= (and b!6852861 (not res!2796832)) b!6852860))

(assert (= (and b!6852860 res!2796831) b!6852862))

(assert (= (and b!6852862 (not res!2796826)) b!6852856))

(assert (= (and b!6852856 (not res!2796830)) b!6852858))

(assert (= (or b!6852866 b!6852865 b!6852862) bm!624180))

(assert (=> d!2153752 m!7589856))

(assert (=> d!2153752 m!7590012))

(assert (=> b!6852857 m!7589900))

(assert (=> b!6852857 m!7589900))

(declare-fun m!7590566 () Bool)

(assert (=> b!6852857 m!7590566))

(assert (=> b!6852857 m!7589908))

(assert (=> b!6852857 m!7590566))

(assert (=> b!6852857 m!7589908))

(declare-fun m!7590568 () Bool)

(assert (=> b!6852857 m!7590568))

(assert (=> bm!624180 m!7589856))

(assert (=> b!6852858 m!7589900))

(assert (=> b!6852859 m!7589908))

(assert (=> b!6852859 m!7589908))

(assert (=> b!6852859 m!7589912))

(assert (=> b!6852868 m!7589900))

(declare-fun m!7590570 () Bool)

(assert (=> b!6852863 m!7590570))

(assert (=> b!6852856 m!7589908))

(assert (=> b!6852856 m!7589908))

(assert (=> b!6852856 m!7589912))

(assert (=> b!6852116 d!2153752))

(assert (=> bm!624079 d!2153672))

(declare-fun d!2153754 () Bool)

(assert (=> d!2153754 (= (nullable!6640 lt!2456209) (nullableFct!2524 lt!2456209))))

(declare-fun bs!1831614 () Bool)

(assert (= bs!1831614 d!2153754))

(declare-fun m!7590572 () Bool)

(assert (=> bs!1831614 m!7590572))

(assert (=> b!6851989 d!2153754))

(declare-fun b!6852870 () Bool)

(declare-fun res!2796834 () Bool)

(declare-fun e!4132144 () Bool)

(assert (=> b!6852870 (=> res!2796834 e!4132144)))

(assert (=> b!6852870 (= res!2796834 (not ((_ is Concat!25522) (h!72654 lt!2456210))))))

(declare-fun e!4132145 () Bool)

(assert (=> b!6852870 (= e!4132145 e!4132144)))

(declare-fun b!6852871 () Bool)

(declare-fun res!2796835 () Bool)

(declare-fun e!4132139 () Bool)

(assert (=> b!6852871 (=> (not res!2796835) (not e!4132139))))

(declare-fun call!624186 () Bool)

(assert (=> b!6852871 (= res!2796835 call!624186)))

(assert (=> b!6852871 (= e!4132145 e!4132139)))

(declare-fun call!624187 () Bool)

(declare-fun c!1275665 () Bool)

(declare-fun bm!624181 () Bool)

(declare-fun c!1275664 () Bool)

(assert (=> bm!624181 (= call!624187 (validRegex!8413 (ite c!1275664 (reg!17006 (h!72654 lt!2456210)) (ite c!1275665 (regOne!33867 (h!72654 lt!2456210)) (regOne!33866 (h!72654 lt!2456210))))))))

(declare-fun b!6852872 () Bool)

(declare-fun call!624188 () Bool)

(assert (=> b!6852872 (= e!4132139 call!624188)))

(declare-fun b!6852874 () Bool)

(declare-fun e!4132140 () Bool)

(declare-fun e!4132141 () Bool)

(assert (=> b!6852874 (= e!4132140 e!4132141)))

(assert (=> b!6852874 (= c!1275664 ((_ is Star!16677) (h!72654 lt!2456210)))))

(declare-fun b!6852875 () Bool)

(assert (=> b!6852875 (= e!4132141 e!4132145)))

(assert (=> b!6852875 (= c!1275665 ((_ is Union!16677) (h!72654 lt!2456210)))))

(declare-fun bm!624182 () Bool)

(assert (=> bm!624182 (= call!624186 call!624187)))

(declare-fun d!2153756 () Bool)

(declare-fun res!2796836 () Bool)

(assert (=> d!2153756 (=> res!2796836 e!4132140)))

(assert (=> d!2153756 (= res!2796836 ((_ is ElementMatch!16677) (h!72654 lt!2456210)))))

(assert (=> d!2153756 (= (validRegex!8413 (h!72654 lt!2456210)) e!4132140)))

(declare-fun b!6852873 () Bool)

(declare-fun e!4132142 () Bool)

(assert (=> b!6852873 (= e!4132141 e!4132142)))

(declare-fun res!2796837 () Bool)

(assert (=> b!6852873 (= res!2796837 (not (nullable!6640 (reg!17006 (h!72654 lt!2456210)))))))

(assert (=> b!6852873 (=> (not res!2796837) (not e!4132142))))

(declare-fun b!6852876 () Bool)

(assert (=> b!6852876 (= e!4132142 call!624187)))

(declare-fun bm!624183 () Bool)

(assert (=> bm!624183 (= call!624188 (validRegex!8413 (ite c!1275665 (regTwo!33867 (h!72654 lt!2456210)) (regTwo!33866 (h!72654 lt!2456210)))))))

(declare-fun b!6852877 () Bool)

(declare-fun e!4132143 () Bool)

(assert (=> b!6852877 (= e!4132143 call!624188)))

(declare-fun b!6852878 () Bool)

(assert (=> b!6852878 (= e!4132144 e!4132143)))

(declare-fun res!2796833 () Bool)

(assert (=> b!6852878 (=> (not res!2796833) (not e!4132143))))

(assert (=> b!6852878 (= res!2796833 call!624186)))

(assert (= (and d!2153756 (not res!2796836)) b!6852874))

(assert (= (and b!6852874 c!1275664) b!6852873))

(assert (= (and b!6852874 (not c!1275664)) b!6852875))

(assert (= (and b!6852873 res!2796837) b!6852876))

(assert (= (and b!6852875 c!1275665) b!6852871))

(assert (= (and b!6852875 (not c!1275665)) b!6852870))

(assert (= (and b!6852871 res!2796835) b!6852872))

(assert (= (and b!6852870 (not res!2796834)) b!6852878))

(assert (= (and b!6852878 res!2796833) b!6852877))

(assert (= (or b!6852872 b!6852877) bm!624183))

(assert (= (or b!6852871 b!6852878) bm!624182))

(assert (= (or b!6852876 bm!624182) bm!624181))

(declare-fun m!7590574 () Bool)

(assert (=> bm!624181 m!7590574))

(declare-fun m!7590576 () Bool)

(assert (=> b!6852873 m!7590576))

(declare-fun m!7590578 () Bool)

(assert (=> bm!624183 m!7590578))

(assert (=> bs!1831402 d!2153756))

(declare-fun bs!1831615 () Bool)

(declare-fun d!2153758 () Bool)

(assert (= bs!1831615 (and d!2153758 d!2153732)))

(declare-fun lambda!387447 () Int)

(assert (=> bs!1831615 (not (= lambda!387447 lambda!387445))))

(declare-fun bs!1831616 () Bool)

(assert (= bs!1831616 (and d!2153758 d!2153730)))

(assert (=> bs!1831616 (not (= lambda!387447 lambda!387442))))

(declare-fun bs!1831617 () Bool)

(assert (= bs!1831617 (and d!2153758 d!2153496)))

(assert (=> bs!1831617 (not (= lambda!387447 lambda!387395))))

(declare-fun bs!1831618 () Bool)

(assert (= bs!1831618 (and d!2153758 d!2153498)))

(assert (=> bs!1831618 (not (= lambda!387447 lambda!387401))))

(declare-fun bs!1831619 () Bool)

(assert (= bs!1831619 (and d!2153758 d!2153748)))

(assert (=> bs!1831619 (= lambda!387447 lambda!387446)))

(declare-fun bs!1831620 () Bool)

(assert (= bs!1831620 (and d!2153758 d!2153500)))

(assert (=> bs!1831620 (= lambda!387447 lambda!387404)))

(assert (=> bs!1831618 (= lambda!387447 lambda!387400)))

(declare-fun bs!1831621 () Bool)

(assert (= bs!1831621 (and d!2153758 d!2153502)))

(assert (=> bs!1831621 (= lambda!387447 lambda!387405)))

(declare-fun bs!1831622 () Bool)

(assert (= bs!1831622 (and d!2153758 d!2153480)))

(assert (=> bs!1831622 (= lambda!387447 lambda!387392)))

(declare-fun bs!1831623 () Bool)

(assert (= bs!1831623 (and d!2153758 d!2153712)))

(assert (=> bs!1831623 (= lambda!387447 lambda!387436)))

(declare-fun bs!1831624 () Bool)

(assert (= bs!1831624 (and d!2153758 d!2153724)))

(assert (=> bs!1831624 (= lambda!387447 lambda!387439)))

(declare-fun bs!1831625 () Bool)

(assert (= bs!1831625 (and d!2153758 b!6851566)))

(assert (=> bs!1831625 (not (= lambda!387447 lambda!387348))))

(assert (=> d!2153758 (= (inv!84939 (h!72655 (t!380074 zl!343))) (forall!15858 (exprs!6561 (h!72655 (t!380074 zl!343))) lambda!387447))))

(declare-fun bs!1831626 () Bool)

(assert (= bs!1831626 d!2153758))

(declare-fun m!7590580 () Bool)

(assert (=> bs!1831626 m!7590580))

(assert (=> b!6852109 d!2153758))

(assert (=> d!2153478 d!2153460))

(assert (=> d!2153478 d!2153444))

(declare-fun d!2153760 () Bool)

(assert (=> d!2153760 (= (matchR!8860 r!7292 s!2326) (matchRSpec!3778 r!7292 s!2326))))

(assert (=> d!2153760 true))

(declare-fun _$88!5708 () Unit!160081)

(assert (=> d!2153760 (= (choose!51060 r!7292 s!2326) _$88!5708)))

(declare-fun bs!1831627 () Bool)

(assert (= bs!1831627 d!2153760))

(assert (=> bs!1831627 m!7589682))

(assert (=> bs!1831627 m!7589680))

(assert (=> d!2153478 d!2153760))

(assert (=> d!2153478 d!2153486))

(assert (=> b!6851985 d!2153718))

(assert (=> b!6851985 d!2153720))

(declare-fun b!6852879 () Bool)

(declare-fun res!2796839 () Bool)

(declare-fun e!4132151 () Bool)

(assert (=> b!6852879 (=> res!2796839 e!4132151)))

(assert (=> b!6852879 (= res!2796839 (not ((_ is Concat!25522) (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292)))))))

(declare-fun e!4132152 () Bool)

(assert (=> b!6852879 (= e!4132152 e!4132151)))

(declare-fun b!6852880 () Bool)

(declare-fun res!2796840 () Bool)

(declare-fun e!4132146 () Bool)

(assert (=> b!6852880 (=> (not res!2796840) (not e!4132146))))

(declare-fun call!624189 () Bool)

(assert (=> b!6852880 (= res!2796840 call!624189)))

(assert (=> b!6852880 (= e!4132152 e!4132146)))

(declare-fun bm!624184 () Bool)

(declare-fun c!1275666 () Bool)

(declare-fun c!1275667 () Bool)

(declare-fun call!624190 () Bool)

(assert (=> bm!624184 (= call!624190 (validRegex!8413 (ite c!1275666 (reg!17006 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))) (ite c!1275667 (regOne!33867 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))) (regOne!33866 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292)))))))))

(declare-fun b!6852881 () Bool)

(declare-fun call!624191 () Bool)

(assert (=> b!6852881 (= e!4132146 call!624191)))

(declare-fun b!6852883 () Bool)

(declare-fun e!4132147 () Bool)

(declare-fun e!4132148 () Bool)

(assert (=> b!6852883 (= e!4132147 e!4132148)))

(assert (=> b!6852883 (= c!1275666 ((_ is Star!16677) (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))))))

(declare-fun b!6852884 () Bool)

(assert (=> b!6852884 (= e!4132148 e!4132152)))

(assert (=> b!6852884 (= c!1275667 ((_ is Union!16677) (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))))))

(declare-fun bm!624185 () Bool)

(assert (=> bm!624185 (= call!624189 call!624190)))

(declare-fun d!2153762 () Bool)

(declare-fun res!2796841 () Bool)

(assert (=> d!2153762 (=> res!2796841 e!4132147)))

(assert (=> d!2153762 (= res!2796841 ((_ is ElementMatch!16677) (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))))))

(assert (=> d!2153762 (= (validRegex!8413 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))) e!4132147)))

(declare-fun b!6852882 () Bool)

(declare-fun e!4132149 () Bool)

(assert (=> b!6852882 (= e!4132148 e!4132149)))

(declare-fun res!2796842 () Bool)

(assert (=> b!6852882 (= res!2796842 (not (nullable!6640 (reg!17006 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))))))))

(assert (=> b!6852882 (=> (not res!2796842) (not e!4132149))))

(declare-fun b!6852885 () Bool)

(assert (=> b!6852885 (= e!4132149 call!624190)))

(declare-fun bm!624186 () Bool)

(assert (=> bm!624186 (= call!624191 (validRegex!8413 (ite c!1275667 (regTwo!33867 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))) (regTwo!33866 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))))))))

(declare-fun b!6852886 () Bool)

(declare-fun e!4132150 () Bool)

(assert (=> b!6852886 (= e!4132150 call!624191)))

(declare-fun b!6852887 () Bool)

(assert (=> b!6852887 (= e!4132151 e!4132150)))

(declare-fun res!2796838 () Bool)

(assert (=> b!6852887 (=> (not res!2796838) (not e!4132150))))

(assert (=> b!6852887 (= res!2796838 call!624189)))

(assert (= (and d!2153762 (not res!2796841)) b!6852883))

(assert (= (and b!6852883 c!1275666) b!6852882))

(assert (= (and b!6852883 (not c!1275666)) b!6852884))

(assert (= (and b!6852882 res!2796842) b!6852885))

(assert (= (and b!6852884 c!1275667) b!6852880))

(assert (= (and b!6852884 (not c!1275667)) b!6852879))

(assert (= (and b!6852880 res!2796840) b!6852881))

(assert (= (and b!6852879 (not res!2796839)) b!6852887))

(assert (= (and b!6852887 res!2796838) b!6852886))

(assert (= (or b!6852881 b!6852886) bm!624186))

(assert (= (or b!6852880 b!6852887) bm!624185))

(assert (= (or b!6852885 bm!624185) bm!624184))

(declare-fun m!7590582 () Bool)

(assert (=> bm!624184 m!7590582))

(declare-fun m!7590584 () Bool)

(assert (=> b!6852882 m!7590584))

(declare-fun m!7590586 () Bool)

(assert (=> bm!624186 m!7590586))

(assert (=> bm!624087 d!2153762))

(declare-fun bs!1831628 () Bool)

(declare-fun d!2153764 () Bool)

(assert (= bs!1831628 (and d!2153764 d!2153732)))

(declare-fun lambda!387448 () Int)

(assert (=> bs!1831628 (not (= lambda!387448 lambda!387445))))

(declare-fun bs!1831629 () Bool)

(assert (= bs!1831629 (and d!2153764 d!2153730)))

(assert (=> bs!1831629 (not (= lambda!387448 lambda!387442))))

(declare-fun bs!1831630 () Bool)

(assert (= bs!1831630 (and d!2153764 d!2153496)))

(assert (=> bs!1831630 (not (= lambda!387448 lambda!387395))))

(declare-fun bs!1831631 () Bool)

(assert (= bs!1831631 (and d!2153764 d!2153498)))

(assert (=> bs!1831631 (not (= lambda!387448 lambda!387401))))

(declare-fun bs!1831632 () Bool)

(assert (= bs!1831632 (and d!2153764 d!2153748)))

(assert (=> bs!1831632 (= lambda!387448 lambda!387446)))

(declare-fun bs!1831633 () Bool)

(assert (= bs!1831633 (and d!2153764 d!2153500)))

(assert (=> bs!1831633 (= lambda!387448 lambda!387404)))

(assert (=> bs!1831631 (= lambda!387448 lambda!387400)))

(declare-fun bs!1831634 () Bool)

(assert (= bs!1831634 (and d!2153764 d!2153758)))

(assert (=> bs!1831634 (= lambda!387448 lambda!387447)))

(declare-fun bs!1831635 () Bool)

(assert (= bs!1831635 (and d!2153764 d!2153502)))

(assert (=> bs!1831635 (= lambda!387448 lambda!387405)))

(declare-fun bs!1831636 () Bool)

(assert (= bs!1831636 (and d!2153764 d!2153480)))

(assert (=> bs!1831636 (= lambda!387448 lambda!387392)))

(declare-fun bs!1831637 () Bool)

(assert (= bs!1831637 (and d!2153764 d!2153712)))

(assert (=> bs!1831637 (= lambda!387448 lambda!387436)))

(declare-fun bs!1831638 () Bool)

(assert (= bs!1831638 (and d!2153764 d!2153724)))

(assert (=> bs!1831638 (= lambda!387448 lambda!387439)))

(declare-fun bs!1831639 () Bool)

(assert (= bs!1831639 (and d!2153764 b!6851566)))

(assert (=> bs!1831639 (not (= lambda!387448 lambda!387348))))

(declare-fun b!6852888 () Bool)

(declare-fun e!4132158 () Regex!16677)

(assert (=> b!6852888 (= e!4132158 (h!72654 (exprs!6561 lt!2456307)))))

(declare-fun b!6852889 () Bool)

(declare-fun e!4132157 () Bool)

(declare-fun lt!2456370 () Regex!16677)

(assert (=> b!6852889 (= e!4132157 (isConcat!1531 lt!2456370))))

(declare-fun b!6852890 () Bool)

(declare-fun e!4132156 () Regex!16677)

(assert (=> b!6852890 (= e!4132158 e!4132156)))

(declare-fun c!1275668 () Bool)

(assert (=> b!6852890 (= c!1275668 ((_ is Cons!66206) (exprs!6561 lt!2456307)))))

(declare-fun b!6852891 () Bool)

(declare-fun e!4132153 () Bool)

(declare-fun e!4132154 () Bool)

(assert (=> b!6852891 (= e!4132153 e!4132154)))

(declare-fun c!1275670 () Bool)

(assert (=> b!6852891 (= c!1275670 (isEmpty!38581 (exprs!6561 lt!2456307)))))

(declare-fun b!6852892 () Bool)

(assert (=> b!6852892 (= e!4132156 (Concat!25522 (h!72654 (exprs!6561 lt!2456307)) (generalisedConcat!2268 (t!380073 (exprs!6561 lt!2456307)))))))

(declare-fun b!6852893 () Bool)

(declare-fun e!4132155 () Bool)

(assert (=> b!6852893 (= e!4132155 (isEmpty!38581 (t!380073 (exprs!6561 lt!2456307))))))

(declare-fun b!6852894 () Bool)

(assert (=> b!6852894 (= e!4132157 (= lt!2456370 (head!13734 (exprs!6561 lt!2456307))))))

(declare-fun b!6852895 () Bool)

(assert (=> b!6852895 (= e!4132154 e!4132157)))

(declare-fun c!1275669 () Bool)

(assert (=> b!6852895 (= c!1275669 (isEmpty!38581 (tail!12810 (exprs!6561 lt!2456307))))))

(assert (=> d!2153764 e!4132153))

(declare-fun res!2796843 () Bool)

(assert (=> d!2153764 (=> (not res!2796843) (not e!4132153))))

(assert (=> d!2153764 (= res!2796843 (validRegex!8413 lt!2456370))))

(assert (=> d!2153764 (= lt!2456370 e!4132158)))

(declare-fun c!1275671 () Bool)

(assert (=> d!2153764 (= c!1275671 e!4132155)))

(declare-fun res!2796844 () Bool)

(assert (=> d!2153764 (=> (not res!2796844) (not e!4132155))))

(assert (=> d!2153764 (= res!2796844 ((_ is Cons!66206) (exprs!6561 lt!2456307)))))

(assert (=> d!2153764 (forall!15858 (exprs!6561 lt!2456307) lambda!387448)))

(assert (=> d!2153764 (= (generalisedConcat!2268 (exprs!6561 lt!2456307)) lt!2456370)))

(declare-fun b!6852896 () Bool)

(assert (=> b!6852896 (= e!4132154 (isEmptyExpr!2008 lt!2456370))))

(declare-fun b!6852897 () Bool)

(assert (=> b!6852897 (= e!4132156 EmptyExpr!16677)))

(assert (= (and d!2153764 res!2796844) b!6852893))

(assert (= (and d!2153764 c!1275671) b!6852888))

(assert (= (and d!2153764 (not c!1275671)) b!6852890))

(assert (= (and b!6852890 c!1275668) b!6852892))

(assert (= (and b!6852890 (not c!1275668)) b!6852897))

(assert (= (and d!2153764 res!2796843) b!6852891))

(assert (= (and b!6852891 c!1275670) b!6852896))

(assert (= (and b!6852891 (not c!1275670)) b!6852895))

(assert (= (and b!6852895 c!1275669) b!6852894))

(assert (= (and b!6852895 (not c!1275669)) b!6852889))

(declare-fun m!7590588 () Bool)

(assert (=> b!6852895 m!7590588))

(assert (=> b!6852895 m!7590588))

(declare-fun m!7590590 () Bool)

(assert (=> b!6852895 m!7590590))

(declare-fun m!7590592 () Bool)

(assert (=> b!6852891 m!7590592))

(declare-fun m!7590594 () Bool)

(assert (=> b!6852896 m!7590594))

(declare-fun m!7590596 () Bool)

(assert (=> b!6852889 m!7590596))

(declare-fun m!7590598 () Bool)

(assert (=> d!2153764 m!7590598))

(declare-fun m!7590600 () Bool)

(assert (=> d!2153764 m!7590600))

(declare-fun m!7590602 () Bool)

(assert (=> b!6852893 m!7590602))

(declare-fun m!7590604 () Bool)

(assert (=> b!6852892 m!7590604))

(declare-fun m!7590606 () Bool)

(assert (=> b!6852894 m!7590606))

(assert (=> bs!1831400 d!2153764))

(declare-fun d!2153766 () Bool)

(declare-fun res!2796849 () Bool)

(declare-fun e!4132163 () Bool)

(assert (=> d!2153766 (=> res!2796849 e!4132163)))

(assert (=> d!2153766 (= res!2796849 ((_ is Nil!66207) lt!2456274))))

(assert (=> d!2153766 (= (noDuplicate!2443 lt!2456274) e!4132163)))

(declare-fun b!6852902 () Bool)

(declare-fun e!4132164 () Bool)

(assert (=> b!6852902 (= e!4132163 e!4132164)))

(declare-fun res!2796850 () Bool)

(assert (=> b!6852902 (=> (not res!2796850) (not e!4132164))))

(assert (=> b!6852902 (= res!2796850 (not (contains!20331 (t!380074 lt!2456274) (h!72655 lt!2456274))))))

(declare-fun b!6852903 () Bool)

(assert (=> b!6852903 (= e!4132164 (noDuplicate!2443 (t!380074 lt!2456274)))))

(assert (= (and d!2153766 (not res!2796849)) b!6852902))

(assert (= (and b!6852902 res!2796850) b!6852903))

(declare-fun m!7590608 () Bool)

(assert (=> b!6852902 m!7590608))

(declare-fun m!7590610 () Bool)

(assert (=> b!6852903 m!7590610))

(assert (=> d!2153482 d!2153766))

(declare-fun d!2153768 () Bool)

(declare-fun e!4132173 () Bool)

(assert (=> d!2153768 e!4132173))

(declare-fun res!2796855 () Bool)

(assert (=> d!2153768 (=> (not res!2796855) (not e!4132173))))

(declare-fun res!2796856 () List!66331)

(assert (=> d!2153768 (= res!2796855 (noDuplicate!2443 res!2796856))))

(declare-fun e!4132171 () Bool)

(assert (=> d!2153768 e!4132171))

(assert (=> d!2153768 (= (choose!51061 z!1189) res!2796856)))

(declare-fun b!6852911 () Bool)

(declare-fun e!4132172 () Bool)

(declare-fun tp!1878385 () Bool)

(assert (=> b!6852911 (= e!4132172 tp!1878385)))

(declare-fun b!6852910 () Bool)

(declare-fun tp!1878384 () Bool)

(assert (=> b!6852910 (= e!4132171 (and (inv!84939 (h!72655 res!2796856)) e!4132172 tp!1878384))))

(declare-fun b!6852912 () Bool)

(assert (=> b!6852912 (= e!4132173 (= (content!12985 res!2796856) z!1189))))

(assert (= b!6852910 b!6852911))

(assert (= (and d!2153768 ((_ is Cons!66207) res!2796856)) b!6852910))

(assert (= (and d!2153768 res!2796855) b!6852912))

(declare-fun m!7590612 () Bool)

(assert (=> d!2153768 m!7590612))

(declare-fun m!7590614 () Bool)

(assert (=> b!6852910 m!7590614))

(declare-fun m!7590616 () Bool)

(assert (=> b!6852912 m!7590616))

(assert (=> d!2153482 d!2153768))

(assert (=> bm!624088 d!2153672))

(assert (=> b!6852028 d!2153724))

(declare-fun bs!1831640 () Bool)

(declare-fun d!2153770 () Bool)

(assert (= bs!1831640 (and d!2153770 d!2153732)))

(declare-fun lambda!387449 () Int)

(assert (=> bs!1831640 (not (= lambda!387449 lambda!387445))))

(declare-fun bs!1831641 () Bool)

(assert (= bs!1831641 (and d!2153770 d!2153730)))

(assert (=> bs!1831641 (not (= lambda!387449 lambda!387442))))

(declare-fun bs!1831642 () Bool)

(assert (= bs!1831642 (and d!2153770 d!2153496)))

(assert (=> bs!1831642 (not (= lambda!387449 lambda!387395))))

(declare-fun bs!1831643 () Bool)

(assert (= bs!1831643 (and d!2153770 d!2153498)))

(assert (=> bs!1831643 (not (= lambda!387449 lambda!387401))))

(declare-fun bs!1831644 () Bool)

(assert (= bs!1831644 (and d!2153770 d!2153748)))

(assert (=> bs!1831644 (= lambda!387449 lambda!387446)))

(declare-fun bs!1831645 () Bool)

(assert (= bs!1831645 (and d!2153770 d!2153500)))

(assert (=> bs!1831645 (= lambda!387449 lambda!387404)))

(assert (=> bs!1831643 (= lambda!387449 lambda!387400)))

(declare-fun bs!1831646 () Bool)

(assert (= bs!1831646 (and d!2153770 d!2153764)))

(assert (=> bs!1831646 (= lambda!387449 lambda!387448)))

(declare-fun bs!1831647 () Bool)

(assert (= bs!1831647 (and d!2153770 d!2153758)))

(assert (=> bs!1831647 (= lambda!387449 lambda!387447)))

(declare-fun bs!1831648 () Bool)

(assert (= bs!1831648 (and d!2153770 d!2153502)))

(assert (=> bs!1831648 (= lambda!387449 lambda!387405)))

(declare-fun bs!1831649 () Bool)

(assert (= bs!1831649 (and d!2153770 d!2153480)))

(assert (=> bs!1831649 (= lambda!387449 lambda!387392)))

(declare-fun bs!1831650 () Bool)

(assert (= bs!1831650 (and d!2153770 d!2153712)))

(assert (=> bs!1831650 (= lambda!387449 lambda!387436)))

(declare-fun bs!1831651 () Bool)

(assert (= bs!1831651 (and d!2153770 d!2153724)))

(assert (=> bs!1831651 (= lambda!387449 lambda!387439)))

(declare-fun bs!1831652 () Bool)

(assert (= bs!1831652 (and d!2153770 b!6851566)))

(assert (=> bs!1831652 (not (= lambda!387449 lambda!387348))))

(declare-fun lt!2456371 () List!66330)

(assert (=> d!2153770 (forall!15858 lt!2456371 lambda!387449)))

(declare-fun e!4132174 () List!66330)

(assert (=> d!2153770 (= lt!2456371 e!4132174)))

(declare-fun c!1275672 () Bool)

(assert (=> d!2153770 (= c!1275672 ((_ is Cons!66207) (t!380074 zl!343)))))

(assert (=> d!2153770 (= (unfocusZipperList!2094 (t!380074 zl!343)) lt!2456371)))

(declare-fun b!6852913 () Bool)

(assert (=> b!6852913 (= e!4132174 (Cons!66206 (generalisedConcat!2268 (exprs!6561 (h!72655 (t!380074 zl!343)))) (unfocusZipperList!2094 (t!380074 (t!380074 zl!343)))))))

(declare-fun b!6852914 () Bool)

(assert (=> b!6852914 (= e!4132174 Nil!66206)))

(assert (= (and d!2153770 c!1275672) b!6852913))

(assert (= (and d!2153770 (not c!1275672)) b!6852914))

(declare-fun m!7590618 () Bool)

(assert (=> d!2153770 m!7590618))

(declare-fun m!7590620 () Bool)

(assert (=> b!6852913 m!7590620))

(declare-fun m!7590622 () Bool)

(assert (=> b!6852913 m!7590622))

(assert (=> b!6852028 d!2153770))

(declare-fun d!2153772 () Bool)

(declare-fun res!2796857 () Bool)

(declare-fun e!4132175 () Bool)

(assert (=> d!2153772 (=> res!2796857 e!4132175)))

(assert (=> d!2153772 (= res!2796857 ((_ is Nil!66206) lt!2456291))))

(assert (=> d!2153772 (= (forall!15858 lt!2456291 lambda!387404) e!4132175)))

(declare-fun b!6852915 () Bool)

(declare-fun e!4132176 () Bool)

(assert (=> b!6852915 (= e!4132175 e!4132176)))

(declare-fun res!2796858 () Bool)

(assert (=> b!6852915 (=> (not res!2796858) (not e!4132176))))

(assert (=> b!6852915 (= res!2796858 (dynLambda!26464 lambda!387404 (h!72654 lt!2456291)))))

(declare-fun b!6852916 () Bool)

(assert (=> b!6852916 (= e!4132176 (forall!15858 (t!380073 lt!2456291) lambda!387404))))

(assert (= (and d!2153772 (not res!2796857)) b!6852915))

(assert (= (and b!6852915 res!2796858) b!6852916))

(declare-fun b_lambda!258739 () Bool)

(assert (=> (not b_lambda!258739) (not b!6852915)))

(declare-fun m!7590624 () Bool)

(assert (=> b!6852915 m!7590624))

(declare-fun m!7590626 () Bool)

(assert (=> b!6852916 m!7590626))

(assert (=> d!2153500 d!2153772))

(declare-fun d!2153774 () Bool)

(declare-fun lt!2456372 () Int)

(assert (=> d!2153774 (>= lt!2456372 0)))

(declare-fun e!4132177 () Int)

(assert (=> d!2153774 (= lt!2456372 e!4132177)))

(declare-fun c!1275673 () Bool)

(assert (=> d!2153774 (= c!1275673 ((_ is Cons!66206) (exprs!6561 (h!72655 zl!343))))))

(assert (=> d!2153774 (= (contextDepthTotal!404 (h!72655 zl!343)) lt!2456372)))

(declare-fun b!6852917 () Bool)

(assert (=> b!6852917 (= e!4132177 (+ (regexDepthTotal!251 (h!72654 (exprs!6561 (h!72655 zl!343)))) (contextDepthTotal!404 (Context!12123 (t!380073 (exprs!6561 (h!72655 zl!343)))))))))

(declare-fun b!6852918 () Bool)

(assert (=> b!6852918 (= e!4132177 1)))

(assert (= (and d!2153774 c!1275673) b!6852917))

(assert (= (and d!2153774 (not c!1275673)) b!6852918))

(declare-fun m!7590628 () Bool)

(assert (=> b!6852917 m!7590628))

(declare-fun m!7590630 () Bool)

(assert (=> b!6852917 m!7590630))

(assert (=> b!6852040 d!2153774))

(declare-fun d!2153776 () Bool)

(declare-fun lt!2456373 () Int)

(assert (=> d!2153776 (>= lt!2456373 0)))

(declare-fun e!4132178 () Int)

(assert (=> d!2153776 (= lt!2456373 e!4132178)))

(declare-fun c!1275674 () Bool)

(assert (=> d!2153776 (= c!1275674 ((_ is Cons!66207) (t!380074 zl!343)))))

(assert (=> d!2153776 (= (zipperDepthTotal!432 (t!380074 zl!343)) lt!2456373)))

(declare-fun b!6852919 () Bool)

(assert (=> b!6852919 (= e!4132178 (+ (contextDepthTotal!404 (h!72655 (t!380074 zl!343))) (zipperDepthTotal!432 (t!380074 (t!380074 zl!343)))))))

(declare-fun b!6852920 () Bool)

(assert (=> b!6852920 (= e!4132178 0)))

(assert (= (and d!2153776 c!1275674) b!6852919))

(assert (= (and d!2153776 (not c!1275674)) b!6852920))

(declare-fun m!7590632 () Bool)

(assert (=> b!6852919 m!7590632))

(declare-fun m!7590634 () Bool)

(assert (=> b!6852919 m!7590634))

(assert (=> b!6852040 d!2153776))

(declare-fun b!6852921 () Bool)

(declare-fun res!2796860 () Bool)

(declare-fun e!4132184 () Bool)

(assert (=> b!6852921 (=> res!2796860 e!4132184)))

(assert (=> b!6852921 (= res!2796860 (not ((_ is Concat!25522) lt!2456284)))))

(declare-fun e!4132185 () Bool)

(assert (=> b!6852921 (= e!4132185 e!4132184)))

(declare-fun b!6852922 () Bool)

(declare-fun res!2796861 () Bool)

(declare-fun e!4132179 () Bool)

(assert (=> b!6852922 (=> (not res!2796861) (not e!4132179))))

(declare-fun call!624192 () Bool)

(assert (=> b!6852922 (= res!2796861 call!624192)))

(assert (=> b!6852922 (= e!4132185 e!4132179)))

(declare-fun c!1275675 () Bool)

(declare-fun call!624193 () Bool)

(declare-fun bm!624187 () Bool)

(declare-fun c!1275676 () Bool)

(assert (=> bm!624187 (= call!624193 (validRegex!8413 (ite c!1275675 (reg!17006 lt!2456284) (ite c!1275676 (regOne!33867 lt!2456284) (regOne!33866 lt!2456284)))))))

(declare-fun b!6852923 () Bool)

(declare-fun call!624194 () Bool)

(assert (=> b!6852923 (= e!4132179 call!624194)))

(declare-fun b!6852925 () Bool)

(declare-fun e!4132180 () Bool)

(declare-fun e!4132181 () Bool)

(assert (=> b!6852925 (= e!4132180 e!4132181)))

(assert (=> b!6852925 (= c!1275675 ((_ is Star!16677) lt!2456284))))

(declare-fun b!6852926 () Bool)

(assert (=> b!6852926 (= e!4132181 e!4132185)))

(assert (=> b!6852926 (= c!1275676 ((_ is Union!16677) lt!2456284))))

(declare-fun bm!624188 () Bool)

(assert (=> bm!624188 (= call!624192 call!624193)))

(declare-fun d!2153778 () Bool)

(declare-fun res!2796862 () Bool)

(assert (=> d!2153778 (=> res!2796862 e!4132180)))

(assert (=> d!2153778 (= res!2796862 ((_ is ElementMatch!16677) lt!2456284))))

(assert (=> d!2153778 (= (validRegex!8413 lt!2456284) e!4132180)))

(declare-fun b!6852924 () Bool)

(declare-fun e!4132182 () Bool)

(assert (=> b!6852924 (= e!4132181 e!4132182)))

(declare-fun res!2796863 () Bool)

(assert (=> b!6852924 (= res!2796863 (not (nullable!6640 (reg!17006 lt!2456284))))))

(assert (=> b!6852924 (=> (not res!2796863) (not e!4132182))))

(declare-fun b!6852927 () Bool)

(assert (=> b!6852927 (= e!4132182 call!624193)))

(declare-fun bm!624189 () Bool)

(assert (=> bm!624189 (= call!624194 (validRegex!8413 (ite c!1275676 (regTwo!33867 lt!2456284) (regTwo!33866 lt!2456284))))))

(declare-fun b!6852928 () Bool)

(declare-fun e!4132183 () Bool)

(assert (=> b!6852928 (= e!4132183 call!624194)))

(declare-fun b!6852929 () Bool)

(assert (=> b!6852929 (= e!4132184 e!4132183)))

(declare-fun res!2796859 () Bool)

(assert (=> b!6852929 (=> (not res!2796859) (not e!4132183))))

(assert (=> b!6852929 (= res!2796859 call!624192)))

(assert (= (and d!2153778 (not res!2796862)) b!6852925))

(assert (= (and b!6852925 c!1275675) b!6852924))

(assert (= (and b!6852925 (not c!1275675)) b!6852926))

(assert (= (and b!6852924 res!2796863) b!6852927))

(assert (= (and b!6852926 c!1275676) b!6852922))

(assert (= (and b!6852926 (not c!1275676)) b!6852921))

(assert (= (and b!6852922 res!2796861) b!6852923))

(assert (= (and b!6852921 (not res!2796860)) b!6852929))

(assert (= (and b!6852929 res!2796859) b!6852928))

(assert (= (or b!6852923 b!6852928) bm!624189))

(assert (= (or b!6852922 b!6852929) bm!624188))

(assert (= (or b!6852927 bm!624188) bm!624187))

(declare-fun m!7590636 () Bool)

(assert (=> bm!624187 m!7590636))

(declare-fun m!7590638 () Bool)

(assert (=> b!6852924 m!7590638))

(declare-fun m!7590640 () Bool)

(assert (=> bm!624189 m!7590640))

(assert (=> bs!1831401 d!2153778))

(declare-fun d!2153780 () Bool)

(declare-fun res!2796864 () Bool)

(declare-fun e!4132186 () Bool)

(assert (=> d!2153780 (=> res!2796864 e!4132186)))

(assert (=> d!2153780 (= res!2796864 ((_ is Nil!66206) (exprs!6561 setElem!47097)))))

(assert (=> d!2153780 (= (forall!15858 (exprs!6561 setElem!47097) lambda!387392) e!4132186)))

(declare-fun b!6852930 () Bool)

(declare-fun e!4132187 () Bool)

(assert (=> b!6852930 (= e!4132186 e!4132187)))

(declare-fun res!2796865 () Bool)

(assert (=> b!6852930 (=> (not res!2796865) (not e!4132187))))

(assert (=> b!6852930 (= res!2796865 (dynLambda!26464 lambda!387392 (h!72654 (exprs!6561 setElem!47097))))))

(declare-fun b!6852931 () Bool)

(assert (=> b!6852931 (= e!4132187 (forall!15858 (t!380073 (exprs!6561 setElem!47097)) lambda!387392))))

(assert (= (and d!2153780 (not res!2796864)) b!6852930))

(assert (= (and b!6852930 res!2796865) b!6852931))

(declare-fun b_lambda!258741 () Bool)

(assert (=> (not b_lambda!258741) (not b!6852930)))

(declare-fun m!7590642 () Bool)

(assert (=> b!6852930 m!7590642))

(declare-fun m!7590644 () Bool)

(assert (=> b!6852931 m!7590644))

(assert (=> d!2153480 d!2153780))

(assert (=> b!6851936 d!2153670))

(assert (=> d!2153504 d!2153506))

(assert (=> d!2153504 d!2153508))

(declare-fun d!2153782 () Bool)

(assert (=> d!2153782 (< (contextDepthTotal!404 lt!2456204) (zipperDepthTotal!432 zl!343))))

(assert (=> d!2153782 true))

(declare-fun _$54!204 () Unit!160081)

(assert (=> d!2153782 (= (choose!51063 zl!343 lt!2456204) _$54!204)))

(declare-fun bs!1831653 () Bool)

(assert (= bs!1831653 d!2153782))

(assert (=> bs!1831653 m!7589724))

(assert (=> bs!1831653 m!7589718))

(assert (=> d!2153504 d!2153782))

(declare-fun d!2153784 () Bool)

(declare-fun lt!2456374 () Bool)

(assert (=> d!2153784 (= lt!2456374 (select (content!12985 zl!343) lt!2456204))))

(declare-fun e!4132189 () Bool)

(assert (=> d!2153784 (= lt!2456374 e!4132189)))

(declare-fun res!2796866 () Bool)

(assert (=> d!2153784 (=> (not res!2796866) (not e!4132189))))

(assert (=> d!2153784 (= res!2796866 ((_ is Cons!66207) zl!343))))

(assert (=> d!2153784 (= (contains!20331 zl!343 lt!2456204) lt!2456374)))

(declare-fun b!6852932 () Bool)

(declare-fun e!4132188 () Bool)

(assert (=> b!6852932 (= e!4132189 e!4132188)))

(declare-fun res!2796867 () Bool)

(assert (=> b!6852932 (=> res!2796867 e!4132188)))

(assert (=> b!6852932 (= res!2796867 (= (h!72655 zl!343) lt!2456204))))

(declare-fun b!6852933 () Bool)

(assert (=> b!6852933 (= e!4132188 (contains!20331 (t!380074 zl!343) lt!2456204))))

(assert (= (and d!2153784 res!2796866) b!6852932))

(assert (= (and b!6852932 (not res!2796867)) b!6852933))

(assert (=> d!2153784 m!7590552))

(declare-fun m!7590646 () Bool)

(assert (=> d!2153784 m!7590646))

(declare-fun m!7590648 () Bool)

(assert (=> b!6852933 m!7590648))

(assert (=> d!2153504 d!2153784))

(declare-fun d!2153786 () Bool)

(declare-fun res!2796868 () Bool)

(declare-fun e!4132190 () Bool)

(assert (=> d!2153786 (=> res!2796868 e!4132190)))

(assert (=> d!2153786 (= res!2796868 ((_ is Nil!66207) lt!2456275))))

(assert (=> d!2153786 (= (noDuplicate!2443 lt!2456275) e!4132190)))

(declare-fun b!6852934 () Bool)

(declare-fun e!4132191 () Bool)

(assert (=> b!6852934 (= e!4132190 e!4132191)))

(declare-fun res!2796869 () Bool)

(assert (=> b!6852934 (=> (not res!2796869) (not e!4132191))))

(assert (=> b!6852934 (= res!2796869 (not (contains!20331 (t!380074 lt!2456275) (h!72655 lt!2456275))))))

(declare-fun b!6852935 () Bool)

(assert (=> b!6852935 (= e!4132191 (noDuplicate!2443 (t!380074 lt!2456275)))))

(assert (= (and d!2153786 (not res!2796868)) b!6852934))

(assert (= (and b!6852934 res!2796869) b!6852935))

(declare-fun m!7590650 () Bool)

(assert (=> b!6852934 m!7590650))

(declare-fun m!7590652 () Bool)

(assert (=> b!6852935 m!7590652))

(assert (=> d!2153484 d!2153786))

(declare-fun d!2153788 () Bool)

(declare-fun e!4132194 () Bool)

(assert (=> d!2153788 e!4132194))

(declare-fun res!2796870 () Bool)

(assert (=> d!2153788 (=> (not res!2796870) (not e!4132194))))

(declare-fun res!2796871 () List!66331)

(assert (=> d!2153788 (= res!2796870 (noDuplicate!2443 res!2796871))))

(declare-fun e!4132192 () Bool)

(assert (=> d!2153788 e!4132192))

(assert (=> d!2153788 (= (choose!51061 (store ((as const (Array Context!12122 Bool)) false) lt!2456204 true)) res!2796871)))

(declare-fun b!6852937 () Bool)

(declare-fun e!4132193 () Bool)

(declare-fun tp!1878387 () Bool)

(assert (=> b!6852937 (= e!4132193 tp!1878387)))

(declare-fun tp!1878386 () Bool)

(declare-fun b!6852936 () Bool)

(assert (=> b!6852936 (= e!4132192 (and (inv!84939 (h!72655 res!2796871)) e!4132193 tp!1878386))))

(declare-fun b!6852938 () Bool)

(assert (=> b!6852938 (= e!4132194 (= (content!12985 res!2796871) (store ((as const (Array Context!12122 Bool)) false) lt!2456204 true)))))

(assert (= b!6852936 b!6852937))

(assert (= (and d!2153788 ((_ is Cons!66207) res!2796871)) b!6852936))

(assert (= (and d!2153788 res!2796870) b!6852938))

(declare-fun m!7590654 () Bool)

(assert (=> d!2153788 m!7590654))

(declare-fun m!7590656 () Bool)

(assert (=> b!6852936 m!7590656))

(declare-fun m!7590658 () Bool)

(assert (=> b!6852938 m!7590658))

(assert (=> d!2153484 d!2153788))

(assert (=> d!2153492 d!2153496))

(declare-fun b!6852939 () Bool)

(declare-fun res!2796873 () Bool)

(declare-fun e!4132200 () Bool)

(assert (=> b!6852939 (=> res!2796873 e!4132200)))

(assert (=> b!6852939 (= res!2796873 (not ((_ is Concat!25522) lt!2456222)))))

(declare-fun e!4132201 () Bool)

(assert (=> b!6852939 (= e!4132201 e!4132200)))

(declare-fun b!6852940 () Bool)

(declare-fun res!2796874 () Bool)

(declare-fun e!4132195 () Bool)

(assert (=> b!6852940 (=> (not res!2796874) (not e!4132195))))

(declare-fun call!624195 () Bool)

(assert (=> b!6852940 (= res!2796874 call!624195)))

(assert (=> b!6852940 (= e!4132201 e!4132195)))

(declare-fun bm!624190 () Bool)

(declare-fun c!1275679 () Bool)

(declare-fun call!624196 () Bool)

(declare-fun c!1275678 () Bool)

(assert (=> bm!624190 (= call!624196 (validRegex!8413 (ite c!1275678 (reg!17006 lt!2456222) (ite c!1275679 (regOne!33867 lt!2456222) (regOne!33866 lt!2456222)))))))

(declare-fun b!6852941 () Bool)

(declare-fun call!624197 () Bool)

(assert (=> b!6852941 (= e!4132195 call!624197)))

(declare-fun b!6852943 () Bool)

(declare-fun e!4132196 () Bool)

(declare-fun e!4132197 () Bool)

(assert (=> b!6852943 (= e!4132196 e!4132197)))

(assert (=> b!6852943 (= c!1275678 ((_ is Star!16677) lt!2456222))))

(declare-fun b!6852944 () Bool)

(assert (=> b!6852944 (= e!4132197 e!4132201)))

(assert (=> b!6852944 (= c!1275679 ((_ is Union!16677) lt!2456222))))

(declare-fun bm!624191 () Bool)

(assert (=> bm!624191 (= call!624195 call!624196)))

(declare-fun d!2153790 () Bool)

(declare-fun res!2796875 () Bool)

(assert (=> d!2153790 (=> res!2796875 e!4132196)))

(assert (=> d!2153790 (= res!2796875 ((_ is ElementMatch!16677) lt!2456222))))

(assert (=> d!2153790 (= (validRegex!8413 lt!2456222) e!4132196)))

(declare-fun b!6852942 () Bool)

(declare-fun e!4132198 () Bool)

(assert (=> b!6852942 (= e!4132197 e!4132198)))

(declare-fun res!2796876 () Bool)

(assert (=> b!6852942 (= res!2796876 (not (nullable!6640 (reg!17006 lt!2456222))))))

(assert (=> b!6852942 (=> (not res!2796876) (not e!4132198))))

(declare-fun b!6852945 () Bool)

(assert (=> b!6852945 (= e!4132198 call!624196)))

(declare-fun bm!624192 () Bool)

(assert (=> bm!624192 (= call!624197 (validRegex!8413 (ite c!1275679 (regTwo!33867 lt!2456222) (regTwo!33866 lt!2456222))))))

(declare-fun b!6852946 () Bool)

(declare-fun e!4132199 () Bool)

(assert (=> b!6852946 (= e!4132199 call!624197)))

(declare-fun b!6852947 () Bool)

(assert (=> b!6852947 (= e!4132200 e!4132199)))

(declare-fun res!2796872 () Bool)

(assert (=> b!6852947 (=> (not res!2796872) (not e!4132199))))

(assert (=> b!6852947 (= res!2796872 call!624195)))

(assert (= (and d!2153790 (not res!2796875)) b!6852943))

(assert (= (and b!6852943 c!1275678) b!6852942))

(assert (= (and b!6852943 (not c!1275678)) b!6852944))

(assert (= (and b!6852942 res!2796876) b!6852945))

(assert (= (and b!6852944 c!1275679) b!6852940))

(assert (= (and b!6852944 (not c!1275679)) b!6852939))

(assert (= (and b!6852940 res!2796874) b!6852941))

(assert (= (and b!6852939 (not res!2796873)) b!6852947))

(assert (= (and b!6852947 res!2796872) b!6852946))

(assert (= (or b!6852941 b!6852946) bm!624192))

(assert (= (or b!6852940 b!6852947) bm!624191))

(assert (= (or b!6852945 bm!624191) bm!624190))

(declare-fun m!7590660 () Bool)

(assert (=> bm!624190 m!7590660))

(declare-fun m!7590662 () Bool)

(assert (=> b!6852942 m!7590662))

(declare-fun m!7590664 () Bool)

(assert (=> bm!624192 m!7590664))

(assert (=> d!2153426 d!2153790))

(declare-fun bs!1831654 () Bool)

(declare-fun d!2153792 () Bool)

(assert (= bs!1831654 (and d!2153792 d!2153732)))

(declare-fun lambda!387450 () Int)

(assert (=> bs!1831654 (not (= lambda!387450 lambda!387445))))

(declare-fun bs!1831655 () Bool)

(assert (= bs!1831655 (and d!2153792 d!2153730)))

(assert (=> bs!1831655 (not (= lambda!387450 lambda!387442))))

(declare-fun bs!1831656 () Bool)

(assert (= bs!1831656 (and d!2153792 d!2153496)))

(assert (=> bs!1831656 (not (= lambda!387450 lambda!387395))))

(declare-fun bs!1831657 () Bool)

(assert (= bs!1831657 (and d!2153792 d!2153498)))

(assert (=> bs!1831657 (not (= lambda!387450 lambda!387401))))

(declare-fun bs!1831658 () Bool)

(assert (= bs!1831658 (and d!2153792 d!2153748)))

(assert (=> bs!1831658 (= lambda!387450 lambda!387446)))

(declare-fun bs!1831659 () Bool)

(assert (= bs!1831659 (and d!2153792 d!2153500)))

(assert (=> bs!1831659 (= lambda!387450 lambda!387404)))

(assert (=> bs!1831657 (= lambda!387450 lambda!387400)))

(declare-fun bs!1831660 () Bool)

(assert (= bs!1831660 (and d!2153792 d!2153764)))

(assert (=> bs!1831660 (= lambda!387450 lambda!387448)))

(declare-fun bs!1831661 () Bool)

(assert (= bs!1831661 (and d!2153792 d!2153770)))

(assert (=> bs!1831661 (= lambda!387450 lambda!387449)))

(declare-fun bs!1831662 () Bool)

(assert (= bs!1831662 (and d!2153792 d!2153758)))

(assert (=> bs!1831662 (= lambda!387450 lambda!387447)))

(declare-fun bs!1831663 () Bool)

(assert (= bs!1831663 (and d!2153792 d!2153502)))

(assert (=> bs!1831663 (= lambda!387450 lambda!387405)))

(declare-fun bs!1831664 () Bool)

(assert (= bs!1831664 (and d!2153792 d!2153480)))

(assert (=> bs!1831664 (= lambda!387450 lambda!387392)))

(declare-fun bs!1831665 () Bool)

(assert (= bs!1831665 (and d!2153792 d!2153712)))

(assert (=> bs!1831665 (= lambda!387450 lambda!387436)))

(declare-fun bs!1831666 () Bool)

(assert (= bs!1831666 (and d!2153792 d!2153724)))

(assert (=> bs!1831666 (= lambda!387450 lambda!387439)))

(declare-fun bs!1831667 () Bool)

(assert (= bs!1831667 (and d!2153792 b!6851566)))

(assert (=> bs!1831667 (not (= lambda!387450 lambda!387348))))

(declare-fun e!4132206 () Bool)

(assert (=> d!2153792 e!4132206))

(declare-fun res!2796878 () Bool)

(assert (=> d!2153792 (=> (not res!2796878) (not e!4132206))))

(declare-fun lt!2456375 () Regex!16677)

(assert (=> d!2153792 (= res!2796878 (validRegex!8413 lt!2456375))))

(declare-fun e!4132205 () Regex!16677)

(assert (=> d!2153792 (= lt!2456375 e!4132205)))

(declare-fun c!1275683 () Bool)

(declare-fun e!4132203 () Bool)

(assert (=> d!2153792 (= c!1275683 e!4132203)))

(declare-fun res!2796877 () Bool)

(assert (=> d!2153792 (=> (not res!2796877) (not e!4132203))))

(assert (=> d!2153792 (= res!2796877 ((_ is Cons!66206) (unfocusZipperList!2094 lt!2456208)))))

(assert (=> d!2153792 (forall!15858 (unfocusZipperList!2094 lt!2456208) lambda!387450)))

(assert (=> d!2153792 (= (generalisedUnion!2515 (unfocusZipperList!2094 lt!2456208)) lt!2456375)))

(declare-fun b!6852948 () Bool)

(declare-fun e!4132204 () Bool)

(assert (=> b!6852948 (= e!4132204 (= lt!2456375 (head!13734 (unfocusZipperList!2094 lt!2456208))))))

(declare-fun b!6852949 () Bool)

(declare-fun e!4132207 () Regex!16677)

(assert (=> b!6852949 (= e!4132207 EmptyLang!16677)))

(declare-fun b!6852950 () Bool)

(declare-fun e!4132202 () Bool)

(assert (=> b!6852950 (= e!4132202 (isEmptyLang!2019 lt!2456375))))

(declare-fun b!6852951 () Bool)

(assert (=> b!6852951 (= e!4132205 (h!72654 (unfocusZipperList!2094 lt!2456208)))))

(declare-fun b!6852952 () Bool)

(assert (=> b!6852952 (= e!4132202 e!4132204)))

(declare-fun c!1275680 () Bool)

(assert (=> b!6852952 (= c!1275680 (isEmpty!38581 (tail!12810 (unfocusZipperList!2094 lt!2456208))))))

(declare-fun b!6852953 () Bool)

(assert (=> b!6852953 (= e!4132206 e!4132202)))

(declare-fun c!1275682 () Bool)

(assert (=> b!6852953 (= c!1275682 (isEmpty!38581 (unfocusZipperList!2094 lt!2456208)))))

(declare-fun b!6852954 () Bool)

(assert (=> b!6852954 (= e!4132205 e!4132207)))

(declare-fun c!1275681 () Bool)

(assert (=> b!6852954 (= c!1275681 ((_ is Cons!66206) (unfocusZipperList!2094 lt!2456208)))))

(declare-fun b!6852955 () Bool)

(assert (=> b!6852955 (= e!4132207 (Union!16677 (h!72654 (unfocusZipperList!2094 lt!2456208)) (generalisedUnion!2515 (t!380073 (unfocusZipperList!2094 lt!2456208)))))))

(declare-fun b!6852956 () Bool)

(assert (=> b!6852956 (= e!4132203 (isEmpty!38581 (t!380073 (unfocusZipperList!2094 lt!2456208))))))

(declare-fun b!6852957 () Bool)

(assert (=> b!6852957 (= e!4132204 (isUnion!1449 lt!2456375))))

(assert (= (and d!2153792 res!2796877) b!6852956))

(assert (= (and d!2153792 c!1275683) b!6852951))

(assert (= (and d!2153792 (not c!1275683)) b!6852954))

(assert (= (and b!6852954 c!1275681) b!6852955))

(assert (= (and b!6852954 (not c!1275681)) b!6852949))

(assert (= (and d!2153792 res!2796878) b!6852953))

(assert (= (and b!6852953 c!1275682) b!6852950))

(assert (= (and b!6852953 (not c!1275682)) b!6852952))

(assert (= (and b!6852952 c!1275680) b!6852948))

(assert (= (and b!6852952 (not c!1275680)) b!6852957))

(declare-fun m!7590666 () Bool)

(assert (=> b!6852957 m!7590666))

(declare-fun m!7590668 () Bool)

(assert (=> b!6852956 m!7590668))

(declare-fun m!7590670 () Bool)

(assert (=> b!6852950 m!7590670))

(declare-fun m!7590672 () Bool)

(assert (=> b!6852955 m!7590672))

(assert (=> b!6852948 m!7589766))

(declare-fun m!7590674 () Bool)

(assert (=> b!6852948 m!7590674))

(declare-fun m!7590676 () Bool)

(assert (=> d!2153792 m!7590676))

(assert (=> d!2153792 m!7589766))

(declare-fun m!7590678 () Bool)

(assert (=> d!2153792 m!7590678))

(assert (=> b!6852953 m!7589766))

(declare-fun m!7590680 () Bool)

(assert (=> b!6852953 m!7590680))

(assert (=> b!6852952 m!7589766))

(declare-fun m!7590682 () Bool)

(assert (=> b!6852952 m!7590682))

(assert (=> b!6852952 m!7590682))

(declare-fun m!7590684 () Bool)

(assert (=> b!6852952 m!7590684))

(assert (=> d!2153426 d!2153792))

(declare-fun bs!1831668 () Bool)

(declare-fun d!2153794 () Bool)

(assert (= bs!1831668 (and d!2153794 d!2153732)))

(declare-fun lambda!387451 () Int)

(assert (=> bs!1831668 (not (= lambda!387451 lambda!387445))))

(declare-fun bs!1831669 () Bool)

(assert (= bs!1831669 (and d!2153794 d!2153730)))

(assert (=> bs!1831669 (not (= lambda!387451 lambda!387442))))

(declare-fun bs!1831670 () Bool)

(assert (= bs!1831670 (and d!2153794 d!2153496)))

(assert (=> bs!1831670 (not (= lambda!387451 lambda!387395))))

(declare-fun bs!1831671 () Bool)

(assert (= bs!1831671 (and d!2153794 d!2153498)))

(assert (=> bs!1831671 (not (= lambda!387451 lambda!387401))))

(declare-fun bs!1831672 () Bool)

(assert (= bs!1831672 (and d!2153794 d!2153748)))

(assert (=> bs!1831672 (= lambda!387451 lambda!387446)))

(declare-fun bs!1831673 () Bool)

(assert (= bs!1831673 (and d!2153794 d!2153500)))

(assert (=> bs!1831673 (= lambda!387451 lambda!387404)))

(declare-fun bs!1831674 () Bool)

(assert (= bs!1831674 (and d!2153794 d!2153764)))

(assert (=> bs!1831674 (= lambda!387451 lambda!387448)))

(declare-fun bs!1831675 () Bool)

(assert (= bs!1831675 (and d!2153794 d!2153770)))

(assert (=> bs!1831675 (= lambda!387451 lambda!387449)))

(declare-fun bs!1831676 () Bool)

(assert (= bs!1831676 (and d!2153794 d!2153758)))

(assert (=> bs!1831676 (= lambda!387451 lambda!387447)))

(declare-fun bs!1831677 () Bool)

(assert (= bs!1831677 (and d!2153794 d!2153502)))

(assert (=> bs!1831677 (= lambda!387451 lambda!387405)))

(declare-fun bs!1831678 () Bool)

(assert (= bs!1831678 (and d!2153794 d!2153480)))

(assert (=> bs!1831678 (= lambda!387451 lambda!387392)))

(declare-fun bs!1831679 () Bool)

(assert (= bs!1831679 (and d!2153794 d!2153712)))

(assert (=> bs!1831679 (= lambda!387451 lambda!387436)))

(declare-fun bs!1831680 () Bool)

(assert (= bs!1831680 (and d!2153794 d!2153724)))

(assert (=> bs!1831680 (= lambda!387451 lambda!387439)))

(declare-fun bs!1831681 () Bool)

(assert (= bs!1831681 (and d!2153794 b!6851566)))

(assert (=> bs!1831681 (not (= lambda!387451 lambda!387348))))

(assert (=> bs!1831671 (= lambda!387451 lambda!387400)))

(declare-fun bs!1831682 () Bool)

(assert (= bs!1831682 (and d!2153794 d!2153792)))

(assert (=> bs!1831682 (= lambda!387451 lambda!387450)))

(declare-fun lt!2456376 () List!66330)

(assert (=> d!2153794 (forall!15858 lt!2456376 lambda!387451)))

(declare-fun e!4132208 () List!66330)

(assert (=> d!2153794 (= lt!2456376 e!4132208)))

(declare-fun c!1275684 () Bool)

(assert (=> d!2153794 (= c!1275684 ((_ is Cons!66207) lt!2456208))))

(assert (=> d!2153794 (= (unfocusZipperList!2094 lt!2456208) lt!2456376)))

(declare-fun b!6852958 () Bool)

(assert (=> b!6852958 (= e!4132208 (Cons!66206 (generalisedConcat!2268 (exprs!6561 (h!72655 lt!2456208))) (unfocusZipperList!2094 (t!380074 lt!2456208))))))

(declare-fun b!6852959 () Bool)

(assert (=> b!6852959 (= e!4132208 Nil!66206)))

(assert (= (and d!2153794 c!1275684) b!6852958))

(assert (= (and d!2153794 (not c!1275684)) b!6852959))

(declare-fun m!7590686 () Bool)

(assert (=> d!2153794 m!7590686))

(declare-fun m!7590688 () Bool)

(assert (=> b!6852958 m!7590688))

(declare-fun m!7590690 () Bool)

(assert (=> b!6852958 m!7590690))

(assert (=> d!2153426 d!2153794))

(assert (=> b!6851934 d!2153718))

(assert (=> b!6851934 d!2153720))

(declare-fun bs!1831683 () Bool)

(declare-fun b!6852970 () Bool)

(assert (= bs!1831683 (and b!6852970 b!6851820)))

(declare-fun lambda!387452 () Int)

(assert (=> bs!1831683 (= (and (= (reg!17006 (regTwo!33867 r!7292)) (reg!17006 r!7292)) (= (regTwo!33867 r!7292) r!7292)) (= lambda!387452 lambda!387379))))

(declare-fun bs!1831684 () Bool)

(assert (= bs!1831684 (and b!6852970 b!6851816)))

(assert (=> bs!1831684 (not (= lambda!387452 lambda!387380))))

(declare-fun bs!1831685 () Bool)

(assert (= bs!1831685 (and b!6852970 b!6852786)))

(assert (=> bs!1831685 (= (and (= (reg!17006 (regTwo!33867 r!7292)) (reg!17006 (regOne!33867 r!7292))) (= (regTwo!33867 r!7292) (regOne!33867 r!7292))) (= lambda!387452 lambda!387440))))

(declare-fun bs!1831686 () Bool)

(assert (= bs!1831686 (and b!6852970 b!6852782)))

(assert (=> bs!1831686 (not (= lambda!387452 lambda!387441))))

(assert (=> b!6852970 true))

(assert (=> b!6852970 true))

(declare-fun bs!1831687 () Bool)

(declare-fun b!6852966 () Bool)

(assert (= bs!1831687 (and b!6852966 b!6852970)))

(declare-fun lambda!387453 () Int)

(assert (=> bs!1831687 (not (= lambda!387453 lambda!387452))))

(declare-fun bs!1831688 () Bool)

(assert (= bs!1831688 (and b!6852966 b!6852782)))

(assert (=> bs!1831688 (= (and (= (regOne!33866 (regTwo!33867 r!7292)) (regOne!33866 (regOne!33867 r!7292))) (= (regTwo!33866 (regTwo!33867 r!7292)) (regTwo!33866 (regOne!33867 r!7292)))) (= lambda!387453 lambda!387441))))

(declare-fun bs!1831689 () Bool)

(assert (= bs!1831689 (and b!6852966 b!6852786)))

(assert (=> bs!1831689 (not (= lambda!387453 lambda!387440))))

(declare-fun bs!1831690 () Bool)

(assert (= bs!1831690 (and b!6852966 b!6851816)))

(assert (=> bs!1831690 (= (and (= (regOne!33866 (regTwo!33867 r!7292)) (regOne!33866 r!7292)) (= (regTwo!33866 (regTwo!33867 r!7292)) (regTwo!33866 r!7292))) (= lambda!387453 lambda!387380))))

(declare-fun bs!1831691 () Bool)

(assert (= bs!1831691 (and b!6852966 b!6851820)))

(assert (=> bs!1831691 (not (= lambda!387453 lambda!387379))))

(assert (=> b!6852966 true))

(assert (=> b!6852966 true))

(declare-fun b!6852960 () Bool)

(declare-fun c!1275688 () Bool)

(assert (=> b!6852960 (= c!1275688 ((_ is Union!16677) (regTwo!33867 r!7292)))))

(declare-fun e!4132212 () Bool)

(declare-fun e!4132210 () Bool)

(assert (=> b!6852960 (= e!4132212 e!4132210)))

(declare-fun b!6852961 () Bool)

(declare-fun c!1275685 () Bool)

(assert (=> b!6852961 (= c!1275685 ((_ is ElementMatch!16677) (regTwo!33867 r!7292)))))

(declare-fun e!4132213 () Bool)

(assert (=> b!6852961 (= e!4132213 e!4132212)))

(declare-fun b!6852962 () Bool)

(declare-fun e!4132215 () Bool)

(assert (=> b!6852962 (= e!4132210 e!4132215)))

(declare-fun c!1275687 () Bool)

(assert (=> b!6852962 (= c!1275687 ((_ is Star!16677) (regTwo!33867 r!7292)))))

(declare-fun b!6852963 () Bool)

(declare-fun e!4132211 () Bool)

(assert (=> b!6852963 (= e!4132211 (matchRSpec!3778 (regTwo!33867 (regTwo!33867 r!7292)) s!2326))))

(declare-fun b!6852964 () Bool)

(assert (=> b!6852964 (= e!4132210 e!4132211)))

(declare-fun res!2796881 () Bool)

(assert (=> b!6852964 (= res!2796881 (matchRSpec!3778 (regOne!33867 (regTwo!33867 r!7292)) s!2326))))

(assert (=> b!6852964 (=> res!2796881 e!4132211)))

(declare-fun b!6852965 () Bool)

(declare-fun e!4132209 () Bool)

(declare-fun call!624199 () Bool)

(assert (=> b!6852965 (= e!4132209 call!624199)))

(declare-fun b!6852967 () Bool)

(assert (=> b!6852967 (= e!4132212 (= s!2326 (Cons!66208 (c!1275345 (regTwo!33867 r!7292)) Nil!66208)))))

(declare-fun bm!624193 () Bool)

(assert (=> bm!624193 (= call!624199 (isEmpty!38579 s!2326))))

(declare-fun b!6852968 () Bool)

(assert (=> b!6852968 (= e!4132209 e!4132213)))

(declare-fun res!2796879 () Bool)

(assert (=> b!6852968 (= res!2796879 (not ((_ is EmptyLang!16677) (regTwo!33867 r!7292))))))

(assert (=> b!6852968 (=> (not res!2796879) (not e!4132213))))

(declare-fun b!6852969 () Bool)

(declare-fun res!2796880 () Bool)

(declare-fun e!4132214 () Bool)

(assert (=> b!6852969 (=> res!2796880 e!4132214)))

(assert (=> b!6852969 (= res!2796880 call!624199)))

(assert (=> b!6852969 (= e!4132215 e!4132214)))

(declare-fun call!624198 () Bool)

(assert (=> b!6852966 (= e!4132215 call!624198)))

(declare-fun d!2153796 () Bool)

(declare-fun c!1275686 () Bool)

(assert (=> d!2153796 (= c!1275686 ((_ is EmptyExpr!16677) (regTwo!33867 r!7292)))))

(assert (=> d!2153796 (= (matchRSpec!3778 (regTwo!33867 r!7292) s!2326) e!4132209)))

(assert (=> b!6852970 (= e!4132214 call!624198)))

(declare-fun bm!624194 () Bool)

(assert (=> bm!624194 (= call!624198 (Exists!3739 (ite c!1275687 lambda!387452 lambda!387453)))))

(assert (= (and d!2153796 c!1275686) b!6852965))

(assert (= (and d!2153796 (not c!1275686)) b!6852968))

(assert (= (and b!6852968 res!2796879) b!6852961))

(assert (= (and b!6852961 c!1275685) b!6852967))

(assert (= (and b!6852961 (not c!1275685)) b!6852960))

(assert (= (and b!6852960 c!1275688) b!6852964))

(assert (= (and b!6852960 (not c!1275688)) b!6852962))

(assert (= (and b!6852964 (not res!2796881)) b!6852963))

(assert (= (and b!6852962 c!1275687) b!6852969))

(assert (= (and b!6852962 (not c!1275687)) b!6852966))

(assert (= (and b!6852969 (not res!2796880)) b!6852970))

(assert (= (or b!6852970 b!6852966) bm!624194))

(assert (= (or b!6852965 b!6852969) bm!624193))

(declare-fun m!7590692 () Bool)

(assert (=> b!6852963 m!7590692))

(declare-fun m!7590694 () Bool)

(assert (=> b!6852964 m!7590694))

(assert (=> bm!624193 m!7589856))

(declare-fun m!7590696 () Bool)

(assert (=> bm!624194 m!7590696))

(assert (=> b!6851813 d!2153796))

(declare-fun d!2153798 () Bool)

(declare-fun e!4132216 () Bool)

(assert (=> d!2153798 e!4132216))

(declare-fun c!1275691 () Bool)

(assert (=> d!2153798 (= c!1275691 ((_ is EmptyExpr!16677) (derivativeStep!5323 lt!2456209 (head!13733 s!2326))))))

(declare-fun lt!2456377 () Bool)

(declare-fun e!4132219 () Bool)

(assert (=> d!2153798 (= lt!2456377 e!4132219)))

(declare-fun c!1275690 () Bool)

(assert (=> d!2153798 (= c!1275690 (isEmpty!38579 (tail!12808 s!2326)))))

(assert (=> d!2153798 (validRegex!8413 (derivativeStep!5323 lt!2456209 (head!13733 s!2326)))))

(assert (=> d!2153798 (= (matchR!8860 (derivativeStep!5323 lt!2456209 (head!13733 s!2326)) (tail!12808 s!2326)) lt!2456377)))

(declare-fun b!6852971 () Bool)

(declare-fun res!2796887 () Bool)

(declare-fun e!4132218 () Bool)

(assert (=> b!6852971 (=> res!2796887 e!4132218)))

(assert (=> b!6852971 (= res!2796887 (not (isEmpty!38579 (tail!12808 (tail!12808 s!2326)))))))

(declare-fun b!6852972 () Bool)

(assert (=> b!6852972 (= e!4132219 (matchR!8860 (derivativeStep!5323 (derivativeStep!5323 lt!2456209 (head!13733 s!2326)) (head!13733 (tail!12808 s!2326))) (tail!12808 (tail!12808 s!2326))))))

(declare-fun b!6852973 () Bool)

(assert (=> b!6852973 (= e!4132218 (not (= (head!13733 (tail!12808 s!2326)) (c!1275345 (derivativeStep!5323 lt!2456209 (head!13733 s!2326))))))))

(declare-fun b!6852974 () Bool)

(declare-fun res!2796886 () Bool)

(declare-fun e!4132221 () Bool)

(assert (=> b!6852974 (=> (not res!2796886) (not e!4132221))))

(assert (=> b!6852974 (= res!2796886 (isEmpty!38579 (tail!12808 (tail!12808 s!2326))))))

(declare-fun b!6852975 () Bool)

(declare-fun e!4132220 () Bool)

(declare-fun e!4132222 () Bool)

(assert (=> b!6852975 (= e!4132220 e!4132222)))

(declare-fun res!2796888 () Bool)

(assert (=> b!6852975 (=> (not res!2796888) (not e!4132222))))

(assert (=> b!6852975 (= res!2796888 (not lt!2456377))))

(declare-fun b!6852976 () Bool)

(declare-fun res!2796889 () Bool)

(assert (=> b!6852976 (=> res!2796889 e!4132220)))

(assert (=> b!6852976 (= res!2796889 e!4132221)))

(declare-fun res!2796885 () Bool)

(assert (=> b!6852976 (=> (not res!2796885) (not e!4132221))))

(assert (=> b!6852976 (= res!2796885 lt!2456377)))

(declare-fun b!6852977 () Bool)

(assert (=> b!6852977 (= e!4132222 e!4132218)))

(declare-fun res!2796883 () Bool)

(assert (=> b!6852977 (=> res!2796883 e!4132218)))

(declare-fun call!624200 () Bool)

(assert (=> b!6852977 (= res!2796883 call!624200)))

(declare-fun b!6852978 () Bool)

(assert (=> b!6852978 (= e!4132219 (nullable!6640 (derivativeStep!5323 lt!2456209 (head!13733 s!2326))))))

(declare-fun b!6852979 () Bool)

(declare-fun e!4132217 () Bool)

(assert (=> b!6852979 (= e!4132216 e!4132217)))

(declare-fun c!1275689 () Bool)

(assert (=> b!6852979 (= c!1275689 ((_ is EmptyLang!16677) (derivativeStep!5323 lt!2456209 (head!13733 s!2326))))))

(declare-fun b!6852980 () Bool)

(declare-fun res!2796884 () Bool)

(assert (=> b!6852980 (=> (not res!2796884) (not e!4132221))))

(assert (=> b!6852980 (= res!2796884 (not call!624200))))

(declare-fun b!6852981 () Bool)

(assert (=> b!6852981 (= e!4132216 (= lt!2456377 call!624200))))

(declare-fun bm!624195 () Bool)

(assert (=> bm!624195 (= call!624200 (isEmpty!38579 (tail!12808 s!2326)))))

(declare-fun b!6852982 () Bool)

(assert (=> b!6852982 (= e!4132217 (not lt!2456377))))

(declare-fun b!6852983 () Bool)

(assert (=> b!6852983 (= e!4132221 (= (head!13733 (tail!12808 s!2326)) (c!1275345 (derivativeStep!5323 lt!2456209 (head!13733 s!2326)))))))

(declare-fun b!6852984 () Bool)

(declare-fun res!2796882 () Bool)

(assert (=> b!6852984 (=> res!2796882 e!4132220)))

(assert (=> b!6852984 (= res!2796882 (not ((_ is ElementMatch!16677) (derivativeStep!5323 lt!2456209 (head!13733 s!2326)))))))

(assert (=> b!6852984 (= e!4132217 e!4132220)))

(assert (= (and d!2153798 c!1275690) b!6852978))

(assert (= (and d!2153798 (not c!1275690)) b!6852972))

(assert (= (and d!2153798 c!1275691) b!6852981))

(assert (= (and d!2153798 (not c!1275691)) b!6852979))

(assert (= (and b!6852979 c!1275689) b!6852982))

(assert (= (and b!6852979 (not c!1275689)) b!6852984))

(assert (= (and b!6852984 (not res!2796882)) b!6852976))

(assert (= (and b!6852976 res!2796885) b!6852980))

(assert (= (and b!6852980 res!2796884) b!6852974))

(assert (= (and b!6852974 res!2796886) b!6852983))

(assert (= (and b!6852976 (not res!2796889)) b!6852975))

(assert (= (and b!6852975 res!2796888) b!6852977))

(assert (= (and b!6852977 (not res!2796883)) b!6852971))

(assert (= (and b!6852971 (not res!2796887)) b!6852973))

(assert (= (or b!6852981 b!6852980 b!6852977) bm!624195))

(assert (=> d!2153798 m!7589908))

(assert (=> d!2153798 m!7589912))

(assert (=> d!2153798 m!7589938))

(declare-fun m!7590698 () Bool)

(assert (=> d!2153798 m!7590698))

(assert (=> b!6852972 m!7589908))

(assert (=> b!6852972 m!7590532))

(assert (=> b!6852972 m!7589938))

(assert (=> b!6852972 m!7590532))

(declare-fun m!7590700 () Bool)

(assert (=> b!6852972 m!7590700))

(assert (=> b!6852972 m!7589908))

(assert (=> b!6852972 m!7590536))

(assert (=> b!6852972 m!7590700))

(assert (=> b!6852972 m!7590536))

(declare-fun m!7590702 () Bool)

(assert (=> b!6852972 m!7590702))

(assert (=> bm!624195 m!7589908))

(assert (=> bm!624195 m!7589912))

(assert (=> b!6852973 m!7589908))

(assert (=> b!6852973 m!7590532))

(assert (=> b!6852974 m!7589908))

(assert (=> b!6852974 m!7590536))

(assert (=> b!6852974 m!7590536))

(assert (=> b!6852974 m!7590540))

(assert (=> b!6852983 m!7589908))

(assert (=> b!6852983 m!7590532))

(assert (=> b!6852978 m!7589938))

(declare-fun m!7590704 () Bool)

(assert (=> b!6852978 m!7590704))

(assert (=> b!6852971 m!7589908))

(assert (=> b!6852971 m!7590536))

(assert (=> b!6852971 m!7590536))

(assert (=> b!6852971 m!7590540))

(assert (=> b!6851983 d!2153798))

(declare-fun bm!624196 () Bool)

(declare-fun call!624202 () Regex!16677)

(declare-fun c!1275694 () Bool)

(declare-fun c!1275695 () Bool)

(assert (=> bm!624196 (= call!624202 (derivativeStep!5323 (ite c!1275695 (regTwo!33867 lt!2456209) (ite c!1275694 (reg!17006 lt!2456209) (regOne!33866 lt!2456209))) (head!13733 s!2326)))))

(declare-fun b!6852985 () Bool)

(declare-fun e!4132226 () Regex!16677)

(declare-fun e!4132224 () Regex!16677)

(assert (=> b!6852985 (= e!4132226 e!4132224)))

(assert (=> b!6852985 (= c!1275694 ((_ is Star!16677) lt!2456209))))

(declare-fun c!1275696 () Bool)

(declare-fun bm!624197 () Bool)

(declare-fun call!624204 () Regex!16677)

(assert (=> bm!624197 (= call!624204 (derivativeStep!5323 (ite c!1275695 (regOne!33867 lt!2456209) (ite c!1275696 (regTwo!33866 lt!2456209) (regOne!33866 lt!2456209))) (head!13733 s!2326)))))

(declare-fun call!624201 () Regex!16677)

(declare-fun call!624203 () Regex!16677)

(declare-fun e!4132223 () Regex!16677)

(declare-fun b!6852986 () Bool)

(assert (=> b!6852986 (= e!4132223 (Union!16677 (Concat!25522 call!624201 (regTwo!33866 lt!2456209)) call!624203))))

(declare-fun bm!624198 () Bool)

(assert (=> bm!624198 (= call!624201 call!624202)))

(declare-fun d!2153800 () Bool)

(declare-fun lt!2456378 () Regex!16677)

(assert (=> d!2153800 (validRegex!8413 lt!2456378)))

(declare-fun e!4132227 () Regex!16677)

(assert (=> d!2153800 (= lt!2456378 e!4132227)))

(declare-fun c!1275693 () Bool)

(assert (=> d!2153800 (= c!1275693 (or ((_ is EmptyExpr!16677) lt!2456209) ((_ is EmptyLang!16677) lt!2456209)))))

(assert (=> d!2153800 (validRegex!8413 lt!2456209)))

(assert (=> d!2153800 (= (derivativeStep!5323 lt!2456209 (head!13733 s!2326)) lt!2456378)))

(declare-fun b!6852987 () Bool)

(declare-fun e!4132225 () Regex!16677)

(assert (=> b!6852987 (= e!4132227 e!4132225)))

(declare-fun c!1275692 () Bool)

(assert (=> b!6852987 (= c!1275692 ((_ is ElementMatch!16677) lt!2456209))))

(declare-fun bm!624199 () Bool)

(assert (=> bm!624199 (= call!624203 call!624204)))

(declare-fun b!6852988 () Bool)

(assert (=> b!6852988 (= e!4132223 (Union!16677 (Concat!25522 call!624203 (regTwo!33866 lt!2456209)) EmptyLang!16677))))

(declare-fun b!6852989 () Bool)

(assert (=> b!6852989 (= e!4132226 (Union!16677 call!624204 call!624202))))

(declare-fun b!6852990 () Bool)

(assert (=> b!6852990 (= c!1275696 (nullable!6640 (regOne!33866 lt!2456209)))))

(assert (=> b!6852990 (= e!4132224 e!4132223)))

(declare-fun b!6852991 () Bool)

(assert (=> b!6852991 (= c!1275695 ((_ is Union!16677) lt!2456209))))

(assert (=> b!6852991 (= e!4132225 e!4132226)))

(declare-fun b!6852992 () Bool)

(assert (=> b!6852992 (= e!4132225 (ite (= (head!13733 s!2326) (c!1275345 lt!2456209)) EmptyExpr!16677 EmptyLang!16677))))

(declare-fun b!6852993 () Bool)

(assert (=> b!6852993 (= e!4132224 (Concat!25522 call!624201 lt!2456209))))

(declare-fun b!6852994 () Bool)

(assert (=> b!6852994 (= e!4132227 EmptyLang!16677)))

(assert (= (and d!2153800 c!1275693) b!6852994))

(assert (= (and d!2153800 (not c!1275693)) b!6852987))

(assert (= (and b!6852987 c!1275692) b!6852992))

(assert (= (and b!6852987 (not c!1275692)) b!6852991))

(assert (= (and b!6852991 c!1275695) b!6852989))

(assert (= (and b!6852991 (not c!1275695)) b!6852985))

(assert (= (and b!6852985 c!1275694) b!6852993))

(assert (= (and b!6852985 (not c!1275694)) b!6852990))

(assert (= (and b!6852990 c!1275696) b!6852986))

(assert (= (and b!6852990 (not c!1275696)) b!6852988))

(assert (= (or b!6852986 b!6852988) bm!624199))

(assert (= (or b!6852993 b!6852986) bm!624198))

(assert (= (or b!6852989 bm!624198) bm!624196))

(assert (= (or b!6852989 bm!624199) bm!624197))

(assert (=> bm!624196 m!7589900))

(declare-fun m!7590706 () Bool)

(assert (=> bm!624196 m!7590706))

(assert (=> bm!624197 m!7589900))

(declare-fun m!7590708 () Bool)

(assert (=> bm!624197 m!7590708))

(declare-fun m!7590710 () Bool)

(assert (=> d!2153800 m!7590710))

(assert (=> d!2153800 m!7589714))

(declare-fun m!7590712 () Bool)

(assert (=> b!6852990 m!7590712))

(assert (=> b!6851983 d!2153800))

(assert (=> b!6851983 d!2153670))

(assert (=> b!6851983 d!2153720))

(declare-fun b!6852995 () Bool)

(declare-fun e!4132228 () Regex!16677)

(assert (=> b!6852995 (= e!4132228 (getWitness!949 (t!380073 (t!380073 lt!2456210)) lambda!387348))))

(declare-fun b!6852996 () Bool)

(declare-fun lt!2456380 () Unit!160081)

(declare-fun Unit!160090 () Unit!160081)

(assert (=> b!6852996 (= lt!2456380 Unit!160090)))

(assert (=> b!6852996 false))

(assert (=> b!6852996 (= e!4132228 (head!13734 (t!380073 lt!2456210)))))

(declare-fun d!2153802 () Bool)

(declare-fun e!4132231 () Bool)

(assert (=> d!2153802 e!4132231))

(declare-fun res!2796890 () Bool)

(assert (=> d!2153802 (=> (not res!2796890) (not e!4132231))))

(declare-fun lt!2456379 () Regex!16677)

(assert (=> d!2153802 (= res!2796890 (dynLambda!26464 lambda!387348 lt!2456379))))

(declare-fun e!4132230 () Regex!16677)

(assert (=> d!2153802 (= lt!2456379 e!4132230)))

(declare-fun c!1275698 () Bool)

(declare-fun e!4132229 () Bool)

(assert (=> d!2153802 (= c!1275698 e!4132229)))

(declare-fun res!2796891 () Bool)

(assert (=> d!2153802 (=> (not res!2796891) (not e!4132229))))

(assert (=> d!2153802 (= res!2796891 ((_ is Cons!66206) (t!380073 lt!2456210)))))

(assert (=> d!2153802 (exists!2781 (t!380073 lt!2456210) lambda!387348)))

(assert (=> d!2153802 (= (getWitness!949 (t!380073 lt!2456210) lambda!387348) lt!2456379)))

(declare-fun b!6852997 () Bool)

(assert (=> b!6852997 (= e!4132230 (h!72654 (t!380073 lt!2456210)))))

(declare-fun b!6852998 () Bool)

(assert (=> b!6852998 (= e!4132229 (dynLambda!26464 lambda!387348 (h!72654 (t!380073 lt!2456210))))))

(declare-fun b!6852999 () Bool)

(assert (=> b!6852999 (= e!4132230 e!4132228)))

(declare-fun c!1275697 () Bool)

(assert (=> b!6852999 (= c!1275697 ((_ is Cons!66206) (t!380073 lt!2456210)))))

(declare-fun b!6853000 () Bool)

(assert (=> b!6853000 (= e!4132231 (contains!20329 (t!380073 lt!2456210) lt!2456379))))

(assert (= (and d!2153802 res!2796891) b!6852998))

(assert (= (and d!2153802 c!1275698) b!6852997))

(assert (= (and d!2153802 (not c!1275698)) b!6852999))

(assert (= (and b!6852999 c!1275697) b!6852995))

(assert (= (and b!6852999 (not c!1275697)) b!6852996))

(assert (= (and d!2153802 res!2796890) b!6853000))

(declare-fun b_lambda!258743 () Bool)

(assert (=> (not b_lambda!258743) (not d!2153802)))

(declare-fun b_lambda!258745 () Bool)

(assert (=> (not b_lambda!258745) (not b!6852998)))

(declare-fun m!7590714 () Bool)

(assert (=> b!6853000 m!7590714))

(declare-fun m!7590716 () Bool)

(assert (=> b!6852995 m!7590716))

(declare-fun m!7590718 () Bool)

(assert (=> d!2153802 m!7590718))

(declare-fun m!7590720 () Bool)

(assert (=> d!2153802 m!7590720))

(declare-fun m!7590722 () Bool)

(assert (=> b!6852998 m!7590722))

(declare-fun m!7590724 () Bool)

(assert (=> b!6852996 m!7590724))

(assert (=> b!6852014 d!2153802))

(declare-fun b!6853001 () Bool)

(declare-fun res!2796893 () Bool)

(declare-fun e!4132237 () Bool)

(assert (=> b!6853001 (=> res!2796893 e!4132237)))

(assert (=> b!6853001 (= res!2796893 (not ((_ is Concat!25522) (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209)))))))

(declare-fun e!4132238 () Bool)

(assert (=> b!6853001 (= e!4132238 e!4132237)))

(declare-fun b!6853002 () Bool)

(declare-fun res!2796894 () Bool)

(declare-fun e!4132232 () Bool)

(assert (=> b!6853002 (=> (not res!2796894) (not e!4132232))))

(declare-fun call!624205 () Bool)

(assert (=> b!6853002 (= res!2796894 call!624205)))

(assert (=> b!6853002 (= e!4132238 e!4132232)))

(declare-fun c!1275699 () Bool)

(declare-fun call!624206 () Bool)

(declare-fun bm!624200 () Bool)

(declare-fun c!1275700 () Bool)

(assert (=> bm!624200 (= call!624206 (validRegex!8413 (ite c!1275699 (reg!17006 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))) (ite c!1275700 (regOne!33867 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))) (regOne!33866 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209)))))))))

(declare-fun b!6853003 () Bool)

(declare-fun call!624207 () Bool)

(assert (=> b!6853003 (= e!4132232 call!624207)))

(declare-fun b!6853005 () Bool)

(declare-fun e!4132233 () Bool)

(declare-fun e!4132234 () Bool)

(assert (=> b!6853005 (= e!4132233 e!4132234)))

(assert (=> b!6853005 (= c!1275699 ((_ is Star!16677) (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))))))

(declare-fun b!6853006 () Bool)

(assert (=> b!6853006 (= e!4132234 e!4132238)))

(assert (=> b!6853006 (= c!1275700 ((_ is Union!16677) (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))))))

(declare-fun bm!624201 () Bool)

(assert (=> bm!624201 (= call!624205 call!624206)))

(declare-fun d!2153804 () Bool)

(declare-fun res!2796895 () Bool)

(assert (=> d!2153804 (=> res!2796895 e!4132233)))

(assert (=> d!2153804 (= res!2796895 ((_ is ElementMatch!16677) (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))))))

(assert (=> d!2153804 (= (validRegex!8413 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))) e!4132233)))

(declare-fun b!6853004 () Bool)

(declare-fun e!4132235 () Bool)

(assert (=> b!6853004 (= e!4132234 e!4132235)))

(declare-fun res!2796896 () Bool)

(assert (=> b!6853004 (= res!2796896 (not (nullable!6640 (reg!17006 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))))))))

(assert (=> b!6853004 (=> (not res!2796896) (not e!4132235))))

(declare-fun b!6853007 () Bool)

(assert (=> b!6853007 (= e!4132235 call!624206)))

(declare-fun bm!624202 () Bool)

(assert (=> bm!624202 (= call!624207 (validRegex!8413 (ite c!1275700 (regTwo!33867 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))) (regTwo!33866 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))))))))

(declare-fun b!6853008 () Bool)

(declare-fun e!4132236 () Bool)

(assert (=> b!6853008 (= e!4132236 call!624207)))

(declare-fun b!6853009 () Bool)

(assert (=> b!6853009 (= e!4132237 e!4132236)))

(declare-fun res!2796892 () Bool)

(assert (=> b!6853009 (=> (not res!2796892) (not e!4132236))))

(assert (=> b!6853009 (= res!2796892 call!624205)))

(assert (= (and d!2153804 (not res!2796895)) b!6853005))

(assert (= (and b!6853005 c!1275699) b!6853004))

(assert (= (and b!6853005 (not c!1275699)) b!6853006))

(assert (= (and b!6853004 res!2796896) b!6853007))

(assert (= (and b!6853006 c!1275700) b!6853002))

(assert (= (and b!6853006 (not c!1275700)) b!6853001))

(assert (= (and b!6853002 res!2796894) b!6853003))

(assert (= (and b!6853001 (not res!2796893)) b!6853009))

(assert (= (and b!6853009 res!2796892) b!6853008))

(assert (= (or b!6853003 b!6853008) bm!624202))

(assert (= (or b!6853002 b!6853009) bm!624201))

(assert (= (or b!6853007 bm!624201) bm!624200))

(declare-fun m!7590726 () Bool)

(assert (=> bm!624200 m!7590726))

(declare-fun m!7590728 () Bool)

(assert (=> b!6853004 m!7590728))

(declare-fun m!7590730 () Bool)

(assert (=> bm!624202 m!7590730))

(assert (=> bm!624062 d!2153804))

(declare-fun d!2153806 () Bool)

(declare-fun c!1275701 () Bool)

(assert (=> d!2153806 (= c!1275701 ((_ is Nil!66207) lt!2456275))))

(declare-fun e!4132239 () (InoxSet Context!12122))

(assert (=> d!2153806 (= (content!12985 lt!2456275) e!4132239)))

(declare-fun b!6853010 () Bool)

(assert (=> b!6853010 (= e!4132239 ((as const (Array Context!12122 Bool)) false))))

(declare-fun b!6853011 () Bool)

(assert (=> b!6853011 (= e!4132239 ((_ map or) (store ((as const (Array Context!12122 Bool)) false) (h!72655 lt!2456275) true) (content!12985 (t!380074 lt!2456275))))))

(assert (= (and d!2153806 c!1275701) b!6853010))

(assert (= (and d!2153806 (not c!1275701)) b!6853011))

(declare-fun m!7590732 () Bool)

(assert (=> b!6853011 m!7590732))

(declare-fun m!7590734 () Bool)

(assert (=> b!6853011 m!7590734))

(assert (=> b!6851972 d!2153806))

(declare-fun d!2153808 () Bool)

(declare-fun lt!2456381 () Int)

(assert (=> d!2153808 (>= lt!2456381 0)))

(declare-fun e!4132240 () Int)

(assert (=> d!2153808 (= lt!2456381 e!4132240)))

(declare-fun c!1275702 () Bool)

(assert (=> d!2153808 (= c!1275702 ((_ is Cons!66206) (exprs!6561 (h!72655 lt!2456208))))))

(assert (=> d!2153808 (= (contextDepthTotal!404 (h!72655 lt!2456208)) lt!2456381)))

(declare-fun b!6853012 () Bool)

(assert (=> b!6853012 (= e!4132240 (+ (regexDepthTotal!251 (h!72654 (exprs!6561 (h!72655 lt!2456208)))) (contextDepthTotal!404 (Context!12123 (t!380073 (exprs!6561 (h!72655 lt!2456208)))))))))

(declare-fun b!6853013 () Bool)

(assert (=> b!6853013 (= e!4132240 1)))

(assert (= (and d!2153808 c!1275702) b!6853012))

(assert (= (and d!2153808 (not c!1275702)) b!6853013))

(declare-fun m!7590736 () Bool)

(assert (=> b!6853012 m!7590736))

(declare-fun m!7590738 () Bool)

(assert (=> b!6853012 m!7590738))

(assert (=> b!6852042 d!2153808))

(declare-fun d!2153810 () Bool)

(declare-fun lt!2456382 () Int)

(assert (=> d!2153810 (>= lt!2456382 0)))

(declare-fun e!4132241 () Int)

(assert (=> d!2153810 (= lt!2456382 e!4132241)))

(declare-fun c!1275703 () Bool)

(assert (=> d!2153810 (= c!1275703 ((_ is Cons!66207) (t!380074 lt!2456208)))))

(assert (=> d!2153810 (= (zipperDepthTotal!432 (t!380074 lt!2456208)) lt!2456382)))

(declare-fun b!6853014 () Bool)

(assert (=> b!6853014 (= e!4132241 (+ (contextDepthTotal!404 (h!72655 (t!380074 lt!2456208))) (zipperDepthTotal!432 (t!380074 (t!380074 lt!2456208)))))))

(declare-fun b!6853015 () Bool)

(assert (=> b!6853015 (= e!4132241 0)))

(assert (= (and d!2153810 c!1275703) b!6853014))

(assert (= (and d!2153810 (not c!1275703)) b!6853015))

(declare-fun m!7590740 () Bool)

(assert (=> b!6853014 m!7590740))

(declare-fun m!7590742 () Bool)

(assert (=> b!6853014 m!7590742))

(assert (=> b!6852042 d!2153810))

(declare-fun b!6853017 () Bool)

(declare-fun e!4132242 () Bool)

(declare-fun tp!1878392 () Bool)

(declare-fun tp!1878388 () Bool)

(assert (=> b!6853017 (= e!4132242 (and tp!1878392 tp!1878388))))

(assert (=> b!6852082 (= tp!1878187 e!4132242)))

(declare-fun b!6853016 () Bool)

(assert (=> b!6853016 (= e!4132242 tp_is_empty!42607)))

(declare-fun b!6853018 () Bool)

(declare-fun tp!1878389 () Bool)

(assert (=> b!6853018 (= e!4132242 tp!1878389)))

(declare-fun b!6853019 () Bool)

(declare-fun tp!1878390 () Bool)

(declare-fun tp!1878391 () Bool)

(assert (=> b!6853019 (= e!4132242 (and tp!1878390 tp!1878391))))

(assert (= (and b!6852082 ((_ is ElementMatch!16677) (reg!17006 (regTwo!33867 r!7292)))) b!6853016))

(assert (= (and b!6852082 ((_ is Concat!25522) (reg!17006 (regTwo!33867 r!7292)))) b!6853017))

(assert (= (and b!6852082 ((_ is Star!16677) (reg!17006 (regTwo!33867 r!7292)))) b!6853018))

(assert (= (and b!6852082 ((_ is Union!16677) (reg!17006 (regTwo!33867 r!7292)))) b!6853019))

(declare-fun b!6853021 () Bool)

(declare-fun e!4132243 () Bool)

(declare-fun tp!1878397 () Bool)

(declare-fun tp!1878393 () Bool)

(assert (=> b!6853021 (= e!4132243 (and tp!1878397 tp!1878393))))

(assert (=> b!6852073 (= tp!1878180 e!4132243)))

(declare-fun b!6853020 () Bool)

(assert (=> b!6853020 (= e!4132243 tp_is_empty!42607)))

(declare-fun b!6853022 () Bool)

(declare-fun tp!1878394 () Bool)

(assert (=> b!6853022 (= e!4132243 tp!1878394)))

(declare-fun b!6853023 () Bool)

(declare-fun tp!1878395 () Bool)

(declare-fun tp!1878396 () Bool)

(assert (=> b!6853023 (= e!4132243 (and tp!1878395 tp!1878396))))

(assert (= (and b!6852073 ((_ is ElementMatch!16677) (regOne!33866 (reg!17006 r!7292)))) b!6853020))

(assert (= (and b!6852073 ((_ is Concat!25522) (regOne!33866 (reg!17006 r!7292)))) b!6853021))

(assert (= (and b!6852073 ((_ is Star!16677) (regOne!33866 (reg!17006 r!7292)))) b!6853022))

(assert (= (and b!6852073 ((_ is Union!16677) (regOne!33866 (reg!17006 r!7292)))) b!6853023))

(declare-fun b!6853025 () Bool)

(declare-fun e!4132244 () Bool)

(declare-fun tp!1878402 () Bool)

(declare-fun tp!1878398 () Bool)

(assert (=> b!6853025 (= e!4132244 (and tp!1878402 tp!1878398))))

(assert (=> b!6852073 (= tp!1878176 e!4132244)))

(declare-fun b!6853024 () Bool)

(assert (=> b!6853024 (= e!4132244 tp_is_empty!42607)))

(declare-fun b!6853026 () Bool)

(declare-fun tp!1878399 () Bool)

(assert (=> b!6853026 (= e!4132244 tp!1878399)))

(declare-fun b!6853027 () Bool)

(declare-fun tp!1878400 () Bool)

(declare-fun tp!1878401 () Bool)

(assert (=> b!6853027 (= e!4132244 (and tp!1878400 tp!1878401))))

(assert (= (and b!6852073 ((_ is ElementMatch!16677) (regTwo!33866 (reg!17006 r!7292)))) b!6853024))

(assert (= (and b!6852073 ((_ is Concat!25522) (regTwo!33866 (reg!17006 r!7292)))) b!6853025))

(assert (= (and b!6852073 ((_ is Star!16677) (regTwo!33866 (reg!17006 r!7292)))) b!6853026))

(assert (= (and b!6852073 ((_ is Union!16677) (regTwo!33866 (reg!17006 r!7292)))) b!6853027))

(declare-fun b!6853029 () Bool)

(declare-fun e!4132245 () Bool)

(declare-fun tp!1878407 () Bool)

(declare-fun tp!1878403 () Bool)

(assert (=> b!6853029 (= e!4132245 (and tp!1878407 tp!1878403))))

(assert (=> b!6852097 (= tp!1878207 e!4132245)))

(declare-fun b!6853028 () Bool)

(assert (=> b!6853028 (= e!4132245 tp_is_empty!42607)))

(declare-fun b!6853030 () Bool)

(declare-fun tp!1878404 () Bool)

(assert (=> b!6853030 (= e!4132245 tp!1878404)))

(declare-fun b!6853031 () Bool)

(declare-fun tp!1878405 () Bool)

(declare-fun tp!1878406 () Bool)

(assert (=> b!6853031 (= e!4132245 (and tp!1878405 tp!1878406))))

(assert (= (and b!6852097 ((_ is ElementMatch!16677) (h!72654 (exprs!6561 setElem!47097)))) b!6853028))

(assert (= (and b!6852097 ((_ is Concat!25522) (h!72654 (exprs!6561 setElem!47097)))) b!6853029))

(assert (= (and b!6852097 ((_ is Star!16677) (h!72654 (exprs!6561 setElem!47097)))) b!6853030))

(assert (= (and b!6852097 ((_ is Union!16677) (h!72654 (exprs!6561 setElem!47097)))) b!6853031))

(declare-fun b!6853032 () Bool)

(declare-fun e!4132246 () Bool)

(declare-fun tp!1878408 () Bool)

(declare-fun tp!1878409 () Bool)

(assert (=> b!6853032 (= e!4132246 (and tp!1878408 tp!1878409))))

(assert (=> b!6852097 (= tp!1878208 e!4132246)))

(assert (= (and b!6852097 ((_ is Cons!66206) (t!380073 (exprs!6561 setElem!47097)))) b!6853032))

(declare-fun b!6853033 () Bool)

(declare-fun e!4132247 () Bool)

(declare-fun tp!1878410 () Bool)

(declare-fun tp!1878411 () Bool)

(assert (=> b!6853033 (= e!4132247 (and tp!1878410 tp!1878411))))

(assert (=> b!6852110 (= tp!1878219 e!4132247)))

(assert (= (and b!6852110 ((_ is Cons!66206) (exprs!6561 (h!72655 (t!380074 zl!343))))) b!6853033))

(declare-fun b!6853035 () Bool)

(declare-fun e!4132248 () Bool)

(declare-fun tp!1878416 () Bool)

(declare-fun tp!1878412 () Bool)

(assert (=> b!6853035 (= e!4132248 (and tp!1878416 tp!1878412))))

(assert (=> b!6852081 (= tp!1878190 e!4132248)))

(declare-fun b!6853034 () Bool)

(assert (=> b!6853034 (= e!4132248 tp_is_empty!42607)))

(declare-fun b!6853036 () Bool)

(declare-fun tp!1878413 () Bool)

(assert (=> b!6853036 (= e!4132248 tp!1878413)))

(declare-fun b!6853037 () Bool)

(declare-fun tp!1878414 () Bool)

(declare-fun tp!1878415 () Bool)

(assert (=> b!6853037 (= e!4132248 (and tp!1878414 tp!1878415))))

(assert (= (and b!6852081 ((_ is ElementMatch!16677) (regOne!33866 (regTwo!33867 r!7292)))) b!6853034))

(assert (= (and b!6852081 ((_ is Concat!25522) (regOne!33866 (regTwo!33867 r!7292)))) b!6853035))

(assert (= (and b!6852081 ((_ is Star!16677) (regOne!33866 (regTwo!33867 r!7292)))) b!6853036))

(assert (= (and b!6852081 ((_ is Union!16677) (regOne!33866 (regTwo!33867 r!7292)))) b!6853037))

(declare-fun b!6853039 () Bool)

(declare-fun e!4132249 () Bool)

(declare-fun tp!1878421 () Bool)

(declare-fun tp!1878417 () Bool)

(assert (=> b!6853039 (= e!4132249 (and tp!1878421 tp!1878417))))

(assert (=> b!6852081 (= tp!1878186 e!4132249)))

(declare-fun b!6853038 () Bool)

(assert (=> b!6853038 (= e!4132249 tp_is_empty!42607)))

(declare-fun b!6853040 () Bool)

(declare-fun tp!1878418 () Bool)

(assert (=> b!6853040 (= e!4132249 tp!1878418)))

(declare-fun b!6853041 () Bool)

(declare-fun tp!1878419 () Bool)

(declare-fun tp!1878420 () Bool)

(assert (=> b!6853041 (= e!4132249 (and tp!1878419 tp!1878420))))

(assert (= (and b!6852081 ((_ is ElementMatch!16677) (regTwo!33866 (regTwo!33867 r!7292)))) b!6853038))

(assert (= (and b!6852081 ((_ is Concat!25522) (regTwo!33866 (regTwo!33867 r!7292)))) b!6853039))

(assert (= (and b!6852081 ((_ is Star!16677) (regTwo!33866 (regTwo!33867 r!7292)))) b!6853040))

(assert (= (and b!6852081 ((_ is Union!16677) (regTwo!33866 (regTwo!33867 r!7292)))) b!6853041))

(declare-fun b!6853043 () Bool)

(declare-fun e!4132251 () Bool)

(declare-fun tp!1878422 () Bool)

(assert (=> b!6853043 (= e!4132251 tp!1878422)))

(declare-fun tp!1878423 () Bool)

(declare-fun e!4132250 () Bool)

(declare-fun b!6853042 () Bool)

(assert (=> b!6853042 (= e!4132250 (and (inv!84939 (h!72655 (t!380074 (t!380074 zl!343)))) e!4132251 tp!1878423))))

(assert (=> b!6852109 (= tp!1878220 e!4132250)))

(assert (= b!6853042 b!6853043))

(assert (= (and b!6852109 ((_ is Cons!66207) (t!380074 (t!380074 zl!343)))) b!6853042))

(declare-fun m!7590744 () Bool)

(assert (=> b!6853042 m!7590744))

(declare-fun b!6853045 () Bool)

(declare-fun e!4132252 () Bool)

(declare-fun tp!1878428 () Bool)

(declare-fun tp!1878424 () Bool)

(assert (=> b!6853045 (= e!4132252 (and tp!1878428 tp!1878424))))

(assert (=> b!6852088 (= tp!1878195 e!4132252)))

(declare-fun b!6853044 () Bool)

(assert (=> b!6853044 (= e!4132252 tp_is_empty!42607)))

(declare-fun b!6853046 () Bool)

(declare-fun tp!1878425 () Bool)

(assert (=> b!6853046 (= e!4132252 tp!1878425)))

(declare-fun b!6853047 () Bool)

(declare-fun tp!1878426 () Bool)

(declare-fun tp!1878427 () Bool)

(assert (=> b!6853047 (= e!4132252 (and tp!1878426 tp!1878427))))

(assert (= (and b!6852088 ((_ is ElementMatch!16677) (h!72654 (exprs!6561 (h!72655 zl!343))))) b!6853044))

(assert (= (and b!6852088 ((_ is Concat!25522) (h!72654 (exprs!6561 (h!72655 zl!343))))) b!6853045))

(assert (= (and b!6852088 ((_ is Star!16677) (h!72654 (exprs!6561 (h!72655 zl!343))))) b!6853046))

(assert (= (and b!6852088 ((_ is Union!16677) (h!72654 (exprs!6561 (h!72655 zl!343))))) b!6853047))

(declare-fun b!6853048 () Bool)

(declare-fun e!4132253 () Bool)

(declare-fun tp!1878429 () Bool)

(declare-fun tp!1878430 () Bool)

(assert (=> b!6853048 (= e!4132253 (and tp!1878429 tp!1878430))))

(assert (=> b!6852088 (= tp!1878196 e!4132253)))

(assert (= (and b!6852088 ((_ is Cons!66206) (t!380073 (exprs!6561 (h!72655 zl!343))))) b!6853048))

(declare-fun b!6853050 () Bool)

(declare-fun e!4132254 () Bool)

(declare-fun tp!1878435 () Bool)

(declare-fun tp!1878431 () Bool)

(assert (=> b!6853050 (= e!4132254 (and tp!1878435 tp!1878431))))

(assert (=> b!6852095 (= tp!1878203 e!4132254)))

(declare-fun b!6853049 () Bool)

(assert (=> b!6853049 (= e!4132254 tp_is_empty!42607)))

(declare-fun b!6853051 () Bool)

(declare-fun tp!1878432 () Bool)

(assert (=> b!6853051 (= e!4132254 tp!1878432)))

(declare-fun b!6853052 () Bool)

(declare-fun tp!1878433 () Bool)

(declare-fun tp!1878434 () Bool)

(assert (=> b!6853052 (= e!4132254 (and tp!1878433 tp!1878434))))

(assert (= (and b!6852095 ((_ is ElementMatch!16677) (reg!17006 (regTwo!33866 r!7292)))) b!6853049))

(assert (= (and b!6852095 ((_ is Concat!25522) (reg!17006 (regTwo!33866 r!7292)))) b!6853050))

(assert (= (and b!6852095 ((_ is Star!16677) (reg!17006 (regTwo!33866 r!7292)))) b!6853051))

(assert (= (and b!6852095 ((_ is Union!16677) (reg!17006 (regTwo!33866 r!7292)))) b!6853052))

(declare-fun b!6853054 () Bool)

(declare-fun e!4132255 () Bool)

(declare-fun tp!1878440 () Bool)

(declare-fun tp!1878436 () Bool)

(assert (=> b!6853054 (= e!4132255 (and tp!1878440 tp!1878436))))

(assert (=> b!6852096 (= tp!1878204 e!4132255)))

(declare-fun b!6853053 () Bool)

(assert (=> b!6853053 (= e!4132255 tp_is_empty!42607)))

(declare-fun b!6853055 () Bool)

(declare-fun tp!1878437 () Bool)

(assert (=> b!6853055 (= e!4132255 tp!1878437)))

(declare-fun b!6853056 () Bool)

(declare-fun tp!1878438 () Bool)

(declare-fun tp!1878439 () Bool)

(assert (=> b!6853056 (= e!4132255 (and tp!1878438 tp!1878439))))

(assert (= (and b!6852096 ((_ is ElementMatch!16677) (regOne!33867 (regTwo!33866 r!7292)))) b!6853053))

(assert (= (and b!6852096 ((_ is Concat!25522) (regOne!33867 (regTwo!33866 r!7292)))) b!6853054))

(assert (= (and b!6852096 ((_ is Star!16677) (regOne!33867 (regTwo!33866 r!7292)))) b!6853055))

(assert (= (and b!6852096 ((_ is Union!16677) (regOne!33867 (regTwo!33866 r!7292)))) b!6853056))

(declare-fun b!6853058 () Bool)

(declare-fun e!4132256 () Bool)

(declare-fun tp!1878445 () Bool)

(declare-fun tp!1878441 () Bool)

(assert (=> b!6853058 (= e!4132256 (and tp!1878445 tp!1878441))))

(assert (=> b!6852096 (= tp!1878205 e!4132256)))

(declare-fun b!6853057 () Bool)

(assert (=> b!6853057 (= e!4132256 tp_is_empty!42607)))

(declare-fun b!6853059 () Bool)

(declare-fun tp!1878442 () Bool)

(assert (=> b!6853059 (= e!4132256 tp!1878442)))

(declare-fun b!6853060 () Bool)

(declare-fun tp!1878443 () Bool)

(declare-fun tp!1878444 () Bool)

(assert (=> b!6853060 (= e!4132256 (and tp!1878443 tp!1878444))))

(assert (= (and b!6852096 ((_ is ElementMatch!16677) (regTwo!33867 (regTwo!33866 r!7292)))) b!6853057))

(assert (= (and b!6852096 ((_ is Concat!25522) (regTwo!33867 (regTwo!33866 r!7292)))) b!6853058))

(assert (= (and b!6852096 ((_ is Star!16677) (regTwo!33867 (regTwo!33866 r!7292)))) b!6853059))

(assert (= (and b!6852096 ((_ is Union!16677) (regTwo!33867 (regTwo!33866 r!7292)))) b!6853060))

(declare-fun b!6853062 () Bool)

(declare-fun e!4132257 () Bool)

(declare-fun tp!1878450 () Bool)

(declare-fun tp!1878446 () Bool)

(assert (=> b!6853062 (= e!4132257 (and tp!1878450 tp!1878446))))

(assert (=> b!6852090 (= tp!1878201 e!4132257)))

(declare-fun b!6853061 () Bool)

(assert (=> b!6853061 (= e!4132257 tp_is_empty!42607)))

(declare-fun b!6853063 () Bool)

(declare-fun tp!1878447 () Bool)

(assert (=> b!6853063 (= e!4132257 tp!1878447)))

(declare-fun b!6853064 () Bool)

(declare-fun tp!1878448 () Bool)

(declare-fun tp!1878449 () Bool)

(assert (=> b!6853064 (= e!4132257 (and tp!1878448 tp!1878449))))

(assert (= (and b!6852090 ((_ is ElementMatch!16677) (regOne!33866 (regOne!33866 r!7292)))) b!6853061))

(assert (= (and b!6852090 ((_ is Concat!25522) (regOne!33866 (regOne!33866 r!7292)))) b!6853062))

(assert (= (and b!6852090 ((_ is Star!16677) (regOne!33866 (regOne!33866 r!7292)))) b!6853063))

(assert (= (and b!6852090 ((_ is Union!16677) (regOne!33866 (regOne!33866 r!7292)))) b!6853064))

(declare-fun b!6853066 () Bool)

(declare-fun e!4132258 () Bool)

(declare-fun tp!1878455 () Bool)

(declare-fun tp!1878451 () Bool)

(assert (=> b!6853066 (= e!4132258 (and tp!1878455 tp!1878451))))

(assert (=> b!6852090 (= tp!1878197 e!4132258)))

(declare-fun b!6853065 () Bool)

(assert (=> b!6853065 (= e!4132258 tp_is_empty!42607)))

(declare-fun b!6853067 () Bool)

(declare-fun tp!1878452 () Bool)

(assert (=> b!6853067 (= e!4132258 tp!1878452)))

(declare-fun b!6853068 () Bool)

(declare-fun tp!1878453 () Bool)

(declare-fun tp!1878454 () Bool)

(assert (=> b!6853068 (= e!4132258 (and tp!1878453 tp!1878454))))

(assert (= (and b!6852090 ((_ is ElementMatch!16677) (regTwo!33866 (regOne!33866 r!7292)))) b!6853065))

(assert (= (and b!6852090 ((_ is Concat!25522) (regTwo!33866 (regOne!33866 r!7292)))) b!6853066))

(assert (= (and b!6852090 ((_ is Star!16677) (regTwo!33866 (regOne!33866 r!7292)))) b!6853067))

(assert (= (and b!6852090 ((_ is Union!16677) (regTwo!33866 (regOne!33866 r!7292)))) b!6853068))

(declare-fun b!6853070 () Bool)

(declare-fun e!4132259 () Bool)

(declare-fun tp!1878460 () Bool)

(declare-fun tp!1878456 () Bool)

(assert (=> b!6853070 (= e!4132259 (and tp!1878460 tp!1878456))))

(assert (=> b!6852075 (= tp!1878178 e!4132259)))

(declare-fun b!6853069 () Bool)

(assert (=> b!6853069 (= e!4132259 tp_is_empty!42607)))

(declare-fun b!6853071 () Bool)

(declare-fun tp!1878457 () Bool)

(assert (=> b!6853071 (= e!4132259 tp!1878457)))

(declare-fun b!6853072 () Bool)

(declare-fun tp!1878458 () Bool)

(declare-fun tp!1878459 () Bool)

(assert (=> b!6853072 (= e!4132259 (and tp!1878458 tp!1878459))))

(assert (= (and b!6852075 ((_ is ElementMatch!16677) (regOne!33867 (reg!17006 r!7292)))) b!6853069))

(assert (= (and b!6852075 ((_ is Concat!25522) (regOne!33867 (reg!17006 r!7292)))) b!6853070))

(assert (= (and b!6852075 ((_ is Star!16677) (regOne!33867 (reg!17006 r!7292)))) b!6853071))

(assert (= (and b!6852075 ((_ is Union!16677) (regOne!33867 (reg!17006 r!7292)))) b!6853072))

(declare-fun b!6853074 () Bool)

(declare-fun e!4132260 () Bool)

(declare-fun tp!1878465 () Bool)

(declare-fun tp!1878461 () Bool)

(assert (=> b!6853074 (= e!4132260 (and tp!1878465 tp!1878461))))

(assert (=> b!6852075 (= tp!1878179 e!4132260)))

(declare-fun b!6853073 () Bool)

(assert (=> b!6853073 (= e!4132260 tp_is_empty!42607)))

(declare-fun b!6853075 () Bool)

(declare-fun tp!1878462 () Bool)

(assert (=> b!6853075 (= e!4132260 tp!1878462)))

(declare-fun b!6853076 () Bool)

(declare-fun tp!1878463 () Bool)

(declare-fun tp!1878464 () Bool)

(assert (=> b!6853076 (= e!4132260 (and tp!1878463 tp!1878464))))

(assert (= (and b!6852075 ((_ is ElementMatch!16677) (regTwo!33867 (reg!17006 r!7292)))) b!6853073))

(assert (= (and b!6852075 ((_ is Concat!25522) (regTwo!33867 (reg!17006 r!7292)))) b!6853074))

(assert (= (and b!6852075 ((_ is Star!16677) (regTwo!33867 (reg!17006 r!7292)))) b!6853075))

(assert (= (and b!6852075 ((_ is Union!16677) (regTwo!33867 (reg!17006 r!7292)))) b!6853076))

(declare-fun b!6853078 () Bool)

(declare-fun e!4132261 () Bool)

(declare-fun tp!1878470 () Bool)

(declare-fun tp!1878466 () Bool)

(assert (=> b!6853078 (= e!4132261 (and tp!1878470 tp!1878466))))

(assert (=> b!6852083 (= tp!1878188 e!4132261)))

(declare-fun b!6853077 () Bool)

(assert (=> b!6853077 (= e!4132261 tp_is_empty!42607)))

(declare-fun b!6853079 () Bool)

(declare-fun tp!1878467 () Bool)

(assert (=> b!6853079 (= e!4132261 tp!1878467)))

(declare-fun b!6853080 () Bool)

(declare-fun tp!1878468 () Bool)

(declare-fun tp!1878469 () Bool)

(assert (=> b!6853080 (= e!4132261 (and tp!1878468 tp!1878469))))

(assert (= (and b!6852083 ((_ is ElementMatch!16677) (regOne!33867 (regTwo!33867 r!7292)))) b!6853077))

(assert (= (and b!6852083 ((_ is Concat!25522) (regOne!33867 (regTwo!33867 r!7292)))) b!6853078))

(assert (= (and b!6852083 ((_ is Star!16677) (regOne!33867 (regTwo!33867 r!7292)))) b!6853079))

(assert (= (and b!6852083 ((_ is Union!16677) (regOne!33867 (regTwo!33867 r!7292)))) b!6853080))

(declare-fun b!6853082 () Bool)

(declare-fun e!4132262 () Bool)

(declare-fun tp!1878475 () Bool)

(declare-fun tp!1878471 () Bool)

(assert (=> b!6853082 (= e!4132262 (and tp!1878475 tp!1878471))))

(assert (=> b!6852083 (= tp!1878189 e!4132262)))

(declare-fun b!6853081 () Bool)

(assert (=> b!6853081 (= e!4132262 tp_is_empty!42607)))

(declare-fun b!6853083 () Bool)

(declare-fun tp!1878472 () Bool)

(assert (=> b!6853083 (= e!4132262 tp!1878472)))

(declare-fun b!6853084 () Bool)

(declare-fun tp!1878473 () Bool)

(declare-fun tp!1878474 () Bool)

(assert (=> b!6853084 (= e!4132262 (and tp!1878473 tp!1878474))))

(assert (= (and b!6852083 ((_ is ElementMatch!16677) (regTwo!33867 (regTwo!33867 r!7292)))) b!6853081))

(assert (= (and b!6852083 ((_ is Concat!25522) (regTwo!33867 (regTwo!33867 r!7292)))) b!6853082))

(assert (= (and b!6852083 ((_ is Star!16677) (regTwo!33867 (regTwo!33867 r!7292)))) b!6853083))

(assert (= (and b!6852083 ((_ is Union!16677) (regTwo!33867 (regTwo!33867 r!7292)))) b!6853084))

(declare-fun b!6853086 () Bool)

(declare-fun e!4132263 () Bool)

(declare-fun tp!1878480 () Bool)

(declare-fun tp!1878476 () Bool)

(assert (=> b!6853086 (= e!4132263 (and tp!1878480 tp!1878476))))

(assert (=> b!6852074 (= tp!1878177 e!4132263)))

(declare-fun b!6853085 () Bool)

(assert (=> b!6853085 (= e!4132263 tp_is_empty!42607)))

(declare-fun b!6853087 () Bool)

(declare-fun tp!1878477 () Bool)

(assert (=> b!6853087 (= e!4132263 tp!1878477)))

(declare-fun b!6853088 () Bool)

(declare-fun tp!1878478 () Bool)

(declare-fun tp!1878479 () Bool)

(assert (=> b!6853088 (= e!4132263 (and tp!1878478 tp!1878479))))

(assert (= (and b!6852074 ((_ is ElementMatch!16677) (reg!17006 (reg!17006 r!7292)))) b!6853085))

(assert (= (and b!6852074 ((_ is Concat!25522) (reg!17006 (reg!17006 r!7292)))) b!6853086))

(assert (= (and b!6852074 ((_ is Star!16677) (reg!17006 (reg!17006 r!7292)))) b!6853087))

(assert (= (and b!6852074 ((_ is Union!16677) (reg!17006 (reg!17006 r!7292)))) b!6853088))

(declare-fun b!6853090 () Bool)

(declare-fun e!4132264 () Bool)

(declare-fun tp!1878485 () Bool)

(declare-fun tp!1878481 () Bool)

(assert (=> b!6853090 (= e!4132264 (and tp!1878485 tp!1878481))))

(assert (=> b!6852077 (= tp!1878185 e!4132264)))

(declare-fun b!6853089 () Bool)

(assert (=> b!6853089 (= e!4132264 tp_is_empty!42607)))

(declare-fun b!6853091 () Bool)

(declare-fun tp!1878482 () Bool)

(assert (=> b!6853091 (= e!4132264 tp!1878482)))

(declare-fun b!6853092 () Bool)

(declare-fun tp!1878483 () Bool)

(declare-fun tp!1878484 () Bool)

(assert (=> b!6853092 (= e!4132264 (and tp!1878483 tp!1878484))))

(assert (= (and b!6852077 ((_ is ElementMatch!16677) (regOne!33866 (regOne!33867 r!7292)))) b!6853089))

(assert (= (and b!6852077 ((_ is Concat!25522) (regOne!33866 (regOne!33867 r!7292)))) b!6853090))

(assert (= (and b!6852077 ((_ is Star!16677) (regOne!33866 (regOne!33867 r!7292)))) b!6853091))

(assert (= (and b!6852077 ((_ is Union!16677) (regOne!33866 (regOne!33867 r!7292)))) b!6853092))

(declare-fun b!6853094 () Bool)

(declare-fun e!4132265 () Bool)

(declare-fun tp!1878490 () Bool)

(declare-fun tp!1878486 () Bool)

(assert (=> b!6853094 (= e!4132265 (and tp!1878490 tp!1878486))))

(assert (=> b!6852077 (= tp!1878181 e!4132265)))

(declare-fun b!6853093 () Bool)

(assert (=> b!6853093 (= e!4132265 tp_is_empty!42607)))

(declare-fun b!6853095 () Bool)

(declare-fun tp!1878487 () Bool)

(assert (=> b!6853095 (= e!4132265 tp!1878487)))

(declare-fun b!6853096 () Bool)

(declare-fun tp!1878488 () Bool)

(declare-fun tp!1878489 () Bool)

(assert (=> b!6853096 (= e!4132265 (and tp!1878488 tp!1878489))))

(assert (= (and b!6852077 ((_ is ElementMatch!16677) (regTwo!33866 (regOne!33867 r!7292)))) b!6853093))

(assert (= (and b!6852077 ((_ is Concat!25522) (regTwo!33866 (regOne!33867 r!7292)))) b!6853094))

(assert (= (and b!6852077 ((_ is Star!16677) (regTwo!33866 (regOne!33867 r!7292)))) b!6853095))

(assert (= (and b!6852077 ((_ is Union!16677) (regTwo!33866 (regOne!33867 r!7292)))) b!6853096))

(declare-fun b!6853098 () Bool)

(declare-fun e!4132266 () Bool)

(declare-fun tp!1878495 () Bool)

(declare-fun tp!1878491 () Bool)

(assert (=> b!6853098 (= e!4132266 (and tp!1878495 tp!1878491))))

(assert (=> b!6852092 (= tp!1878199 e!4132266)))

(declare-fun b!6853097 () Bool)

(assert (=> b!6853097 (= e!4132266 tp_is_empty!42607)))

(declare-fun b!6853099 () Bool)

(declare-fun tp!1878492 () Bool)

(assert (=> b!6853099 (= e!4132266 tp!1878492)))

(declare-fun b!6853100 () Bool)

(declare-fun tp!1878493 () Bool)

(declare-fun tp!1878494 () Bool)

(assert (=> b!6853100 (= e!4132266 (and tp!1878493 tp!1878494))))

(assert (= (and b!6852092 ((_ is ElementMatch!16677) (regOne!33867 (regOne!33866 r!7292)))) b!6853097))

(assert (= (and b!6852092 ((_ is Concat!25522) (regOne!33867 (regOne!33866 r!7292)))) b!6853098))

(assert (= (and b!6852092 ((_ is Star!16677) (regOne!33867 (regOne!33866 r!7292)))) b!6853099))

(assert (= (and b!6852092 ((_ is Union!16677) (regOne!33867 (regOne!33866 r!7292)))) b!6853100))

(declare-fun b!6853102 () Bool)

(declare-fun e!4132267 () Bool)

(declare-fun tp!1878500 () Bool)

(declare-fun tp!1878496 () Bool)

(assert (=> b!6853102 (= e!4132267 (and tp!1878500 tp!1878496))))

(assert (=> b!6852092 (= tp!1878200 e!4132267)))

(declare-fun b!6853101 () Bool)

(assert (=> b!6853101 (= e!4132267 tp_is_empty!42607)))

(declare-fun b!6853103 () Bool)

(declare-fun tp!1878497 () Bool)

(assert (=> b!6853103 (= e!4132267 tp!1878497)))

(declare-fun b!6853104 () Bool)

(declare-fun tp!1878498 () Bool)

(declare-fun tp!1878499 () Bool)

(assert (=> b!6853104 (= e!4132267 (and tp!1878498 tp!1878499))))

(assert (= (and b!6852092 ((_ is ElementMatch!16677) (regTwo!33867 (regOne!33866 r!7292)))) b!6853101))

(assert (= (and b!6852092 ((_ is Concat!25522) (regTwo!33867 (regOne!33866 r!7292)))) b!6853102))

(assert (= (and b!6852092 ((_ is Star!16677) (regTwo!33867 (regOne!33866 r!7292)))) b!6853103))

(assert (= (and b!6852092 ((_ is Union!16677) (regTwo!33867 (regOne!33866 r!7292)))) b!6853104))

(declare-fun b!6853106 () Bool)

(declare-fun e!4132268 () Bool)

(declare-fun tp!1878505 () Bool)

(declare-fun tp!1878501 () Bool)

(assert (=> b!6853106 (= e!4132268 (and tp!1878505 tp!1878501))))

(assert (=> b!6852091 (= tp!1878198 e!4132268)))

(declare-fun b!6853105 () Bool)

(assert (=> b!6853105 (= e!4132268 tp_is_empty!42607)))

(declare-fun b!6853107 () Bool)

(declare-fun tp!1878502 () Bool)

(assert (=> b!6853107 (= e!4132268 tp!1878502)))

(declare-fun b!6853108 () Bool)

(declare-fun tp!1878503 () Bool)

(declare-fun tp!1878504 () Bool)

(assert (=> b!6853108 (= e!4132268 (and tp!1878503 tp!1878504))))

(assert (= (and b!6852091 ((_ is ElementMatch!16677) (reg!17006 (regOne!33866 r!7292)))) b!6853105))

(assert (= (and b!6852091 ((_ is Concat!25522) (reg!17006 (regOne!33866 r!7292)))) b!6853106))

(assert (= (and b!6852091 ((_ is Star!16677) (reg!17006 (regOne!33866 r!7292)))) b!6853107))

(assert (= (and b!6852091 ((_ is Union!16677) (reg!17006 (regOne!33866 r!7292)))) b!6853108))

(declare-fun b!6853109 () Bool)

(declare-fun e!4132269 () Bool)

(declare-fun tp!1878506 () Bool)

(assert (=> b!6853109 (= e!4132269 (and tp_is_empty!42607 tp!1878506))))

(assert (=> b!6852115 (= tp!1878223 e!4132269)))

(assert (= (and b!6852115 ((_ is Cons!66208) (t!380075 (t!380075 s!2326)))) b!6853109))

(declare-fun b!6853111 () Bool)

(declare-fun e!4132270 () Bool)

(declare-fun tp!1878511 () Bool)

(declare-fun tp!1878507 () Bool)

(assert (=> b!6853111 (= e!4132270 (and tp!1878511 tp!1878507))))

(assert (=> b!6852094 (= tp!1878206 e!4132270)))

(declare-fun b!6853110 () Bool)

(assert (=> b!6853110 (= e!4132270 tp_is_empty!42607)))

(declare-fun b!6853112 () Bool)

(declare-fun tp!1878508 () Bool)

(assert (=> b!6853112 (= e!4132270 tp!1878508)))

(declare-fun b!6853113 () Bool)

(declare-fun tp!1878509 () Bool)

(declare-fun tp!1878510 () Bool)

(assert (=> b!6853113 (= e!4132270 (and tp!1878509 tp!1878510))))

(assert (= (and b!6852094 ((_ is ElementMatch!16677) (regOne!33866 (regTwo!33866 r!7292)))) b!6853110))

(assert (= (and b!6852094 ((_ is Concat!25522) (regOne!33866 (regTwo!33866 r!7292)))) b!6853111))

(assert (= (and b!6852094 ((_ is Star!16677) (regOne!33866 (regTwo!33866 r!7292)))) b!6853112))

(assert (= (and b!6852094 ((_ is Union!16677) (regOne!33866 (regTwo!33866 r!7292)))) b!6853113))

(declare-fun b!6853115 () Bool)

(declare-fun e!4132271 () Bool)

(declare-fun tp!1878516 () Bool)

(declare-fun tp!1878512 () Bool)

(assert (=> b!6853115 (= e!4132271 (and tp!1878516 tp!1878512))))

(assert (=> b!6852094 (= tp!1878202 e!4132271)))

(declare-fun b!6853114 () Bool)

(assert (=> b!6853114 (= e!4132271 tp_is_empty!42607)))

(declare-fun b!6853116 () Bool)

(declare-fun tp!1878513 () Bool)

(assert (=> b!6853116 (= e!4132271 tp!1878513)))

(declare-fun b!6853117 () Bool)

(declare-fun tp!1878514 () Bool)

(declare-fun tp!1878515 () Bool)

(assert (=> b!6853117 (= e!4132271 (and tp!1878514 tp!1878515))))

(assert (= (and b!6852094 ((_ is ElementMatch!16677) (regTwo!33866 (regTwo!33866 r!7292)))) b!6853114))

(assert (= (and b!6852094 ((_ is Concat!25522) (regTwo!33866 (regTwo!33866 r!7292)))) b!6853115))

(assert (= (and b!6852094 ((_ is Star!16677) (regTwo!33866 (regTwo!33866 r!7292)))) b!6853116))

(assert (= (and b!6852094 ((_ is Union!16677) (regTwo!33866 (regTwo!33866 r!7292)))) b!6853117))

(declare-fun condSetEmpty!47105 () Bool)

(assert (=> setNonEmpty!47103 (= condSetEmpty!47105 (= setRest!47103 ((as const (Array Context!12122 Bool)) false)))))

(declare-fun setRes!47105 () Bool)

(assert (=> setNonEmpty!47103 (= tp!1878213 setRes!47105)))

(declare-fun setIsEmpty!47105 () Bool)

(assert (=> setIsEmpty!47105 setRes!47105))

(declare-fun setNonEmpty!47105 () Bool)

(declare-fun setElem!47105 () Context!12122)

(declare-fun e!4132272 () Bool)

(declare-fun tp!1878517 () Bool)

(assert (=> setNonEmpty!47105 (= setRes!47105 (and tp!1878517 (inv!84939 setElem!47105) e!4132272))))

(declare-fun setRest!47105 () (InoxSet Context!12122))

(assert (=> setNonEmpty!47105 (= setRest!47103 ((_ map or) (store ((as const (Array Context!12122 Bool)) false) setElem!47105 true) setRest!47105))))

(declare-fun b!6853118 () Bool)

(declare-fun tp!1878518 () Bool)

(assert (=> b!6853118 (= e!4132272 tp!1878518)))

(assert (= (and setNonEmpty!47103 condSetEmpty!47105) setIsEmpty!47105))

(assert (= (and setNonEmpty!47103 (not condSetEmpty!47105)) setNonEmpty!47105))

(assert (= setNonEmpty!47105 b!6853118))

(declare-fun m!7590746 () Bool)

(assert (=> setNonEmpty!47105 m!7590746))

(declare-fun b!6853119 () Bool)

(declare-fun e!4132273 () Bool)

(declare-fun tp!1878519 () Bool)

(declare-fun tp!1878520 () Bool)

(assert (=> b!6853119 (= e!4132273 (and tp!1878519 tp!1878520))))

(assert (=> b!6852102 (= tp!1878214 e!4132273)))

(assert (= (and b!6852102 ((_ is Cons!66206) (exprs!6561 setElem!47103))) b!6853119))

(declare-fun b!6853121 () Bool)

(declare-fun e!4132274 () Bool)

(declare-fun tp!1878525 () Bool)

(declare-fun tp!1878521 () Bool)

(assert (=> b!6853121 (= e!4132274 (and tp!1878525 tp!1878521))))

(assert (=> b!6852078 (= tp!1878182 e!4132274)))

(declare-fun b!6853120 () Bool)

(assert (=> b!6853120 (= e!4132274 tp_is_empty!42607)))

(declare-fun b!6853122 () Bool)

(declare-fun tp!1878522 () Bool)

(assert (=> b!6853122 (= e!4132274 tp!1878522)))

(declare-fun b!6853123 () Bool)

(declare-fun tp!1878523 () Bool)

(declare-fun tp!1878524 () Bool)

(assert (=> b!6853123 (= e!4132274 (and tp!1878523 tp!1878524))))

(assert (= (and b!6852078 ((_ is ElementMatch!16677) (reg!17006 (regOne!33867 r!7292)))) b!6853120))

(assert (= (and b!6852078 ((_ is Concat!25522) (reg!17006 (regOne!33867 r!7292)))) b!6853121))

(assert (= (and b!6852078 ((_ is Star!16677) (reg!17006 (regOne!33867 r!7292)))) b!6853122))

(assert (= (and b!6852078 ((_ is Union!16677) (reg!17006 (regOne!33867 r!7292)))) b!6853123))

(declare-fun b!6853125 () Bool)

(declare-fun e!4132275 () Bool)

(declare-fun tp!1878530 () Bool)

(declare-fun tp!1878526 () Bool)

(assert (=> b!6853125 (= e!4132275 (and tp!1878530 tp!1878526))))

(assert (=> b!6852079 (= tp!1878183 e!4132275)))

(declare-fun b!6853124 () Bool)

(assert (=> b!6853124 (= e!4132275 tp_is_empty!42607)))

(declare-fun b!6853126 () Bool)

(declare-fun tp!1878527 () Bool)

(assert (=> b!6853126 (= e!4132275 tp!1878527)))

(declare-fun b!6853127 () Bool)

(declare-fun tp!1878528 () Bool)

(declare-fun tp!1878529 () Bool)

(assert (=> b!6853127 (= e!4132275 (and tp!1878528 tp!1878529))))

(assert (= (and b!6852079 ((_ is ElementMatch!16677) (regOne!33867 (regOne!33867 r!7292)))) b!6853124))

(assert (= (and b!6852079 ((_ is Concat!25522) (regOne!33867 (regOne!33867 r!7292)))) b!6853125))

(assert (= (and b!6852079 ((_ is Star!16677) (regOne!33867 (regOne!33867 r!7292)))) b!6853126))

(assert (= (and b!6852079 ((_ is Union!16677) (regOne!33867 (regOne!33867 r!7292)))) b!6853127))

(declare-fun b!6853129 () Bool)

(declare-fun e!4132276 () Bool)

(declare-fun tp!1878535 () Bool)

(declare-fun tp!1878531 () Bool)

(assert (=> b!6853129 (= e!4132276 (and tp!1878535 tp!1878531))))

(assert (=> b!6852079 (= tp!1878184 e!4132276)))

(declare-fun b!6853128 () Bool)

(assert (=> b!6853128 (= e!4132276 tp_is_empty!42607)))

(declare-fun b!6853130 () Bool)

(declare-fun tp!1878532 () Bool)

(assert (=> b!6853130 (= e!4132276 tp!1878532)))

(declare-fun b!6853131 () Bool)

(declare-fun tp!1878533 () Bool)

(declare-fun tp!1878534 () Bool)

(assert (=> b!6853131 (= e!4132276 (and tp!1878533 tp!1878534))))

(assert (= (and b!6852079 ((_ is ElementMatch!16677) (regTwo!33867 (regOne!33867 r!7292)))) b!6853128))

(assert (= (and b!6852079 ((_ is Concat!25522) (regTwo!33867 (regOne!33867 r!7292)))) b!6853129))

(assert (= (and b!6852079 ((_ is Star!16677) (regTwo!33867 (regOne!33867 r!7292)))) b!6853130))

(assert (= (and b!6852079 ((_ is Union!16677) (regTwo!33867 (regOne!33867 r!7292)))) b!6853131))

(declare-fun b_lambda!258747 () Bool)

(assert (= b_lambda!258735 (or d!2153496 b_lambda!258747)))

(declare-fun bs!1831692 () Bool)

(declare-fun d!2153812 () Bool)

(assert (= bs!1831692 (and d!2153812 d!2153496)))

(assert (=> bs!1831692 (= (dynLambda!26464 lambda!387395 (h!72654 lt!2456210)) (not (dynLambda!26464 lambda!387348 (h!72654 lt!2456210))))))

(declare-fun b_lambda!258767 () Bool)

(assert (=> (not b_lambda!258767) (not bs!1831692)))

(assert (=> bs!1831692 m!7589956))

(assert (=> b!6852730 d!2153812))

(declare-fun b_lambda!258749 () Bool)

(assert (= b_lambda!258741 (or d!2153480 b_lambda!258749)))

(declare-fun bs!1831693 () Bool)

(declare-fun d!2153814 () Bool)

(assert (= bs!1831693 (and d!2153814 d!2153480)))

(assert (=> bs!1831693 (= (dynLambda!26464 lambda!387392 (h!72654 (exprs!6561 setElem!47097))) (validRegex!8413 (h!72654 (exprs!6561 setElem!47097))))))

(declare-fun m!7590748 () Bool)

(assert (=> bs!1831693 m!7590748))

(assert (=> b!6852930 d!2153814))

(declare-fun b_lambda!258751 () Bool)

(assert (= b_lambda!258727 (or d!2153502 b_lambda!258751)))

(declare-fun bs!1831694 () Bool)

(declare-fun d!2153816 () Bool)

(assert (= bs!1831694 (and d!2153816 d!2153502)))

(assert (=> bs!1831694 (= (dynLambda!26464 lambda!387405 (h!72654 (exprs!6561 (h!72655 zl!343)))) (validRegex!8413 (h!72654 (exprs!6561 (h!72655 zl!343)))))))

(declare-fun m!7590750 () Bool)

(assert (=> bs!1831694 m!7590750))

(assert (=> b!6852675 d!2153816))

(declare-fun b_lambda!258753 () Bool)

(assert (= b_lambda!258733 (or d!2153408 b_lambda!258753)))

(declare-fun bs!1831695 () Bool)

(declare-fun d!2153818 () Bool)

(assert (= bs!1831695 (and d!2153818 d!2153408)))

(assert (=> bs!1831695 (= (dynLambda!26466 lambda!387352 (h!72655 zl!343)) (not (dynLambda!26466 lambda!387349 (h!72655 zl!343))))))

(declare-fun b_lambda!258769 () Bool)

(assert (=> (not b_lambda!258769) (not bs!1831695)))

(assert (=> bs!1831695 m!7589998))

(assert (=> b!6852689 d!2153818))

(declare-fun b_lambda!258755 () Bool)

(assert (= b_lambda!258729 (or b!6851560 b_lambda!258755)))

(declare-fun bs!1831696 () Bool)

(declare-fun d!2153820 () Bool)

(assert (= bs!1831696 (and d!2153820 b!6851560)))

(assert (=> bs!1831696 (= (dynLambda!26466 lambda!387349 lt!2456354) (= (generalisedConcat!2268 (exprs!6561 lt!2456354)) lt!2456209))))

(declare-fun m!7590752 () Bool)

(assert (=> bs!1831696 m!7590752))

(assert (=> d!2153706 d!2153820))

(declare-fun b_lambda!258757 () Bool)

(assert (= b_lambda!258737 (or d!2153498 b_lambda!258757)))

(declare-fun bs!1831697 () Bool)

(declare-fun d!2153822 () Bool)

(assert (= bs!1831697 (and d!2153822 d!2153498)))

(assert (=> bs!1831697 (= (dynLambda!26464 lambda!387400 (h!72654 lt!2456210)) (validRegex!8413 (h!72654 lt!2456210)))))

(assert (=> bs!1831697 m!7590016))

(assert (=> b!6852798 d!2153822))

(declare-fun b_lambda!258759 () Bool)

(assert (= b_lambda!258731 (or b!6851560 b_lambda!258759)))

(declare-fun bs!1831698 () Bool)

(declare-fun d!2153824 () Bool)

(assert (= bs!1831698 (and d!2153824 b!6851560)))

(assert (=> bs!1831698 (= (dynLambda!26466 lambda!387349 (h!72655 (t!380074 zl!343))) (= (generalisedConcat!2268 (exprs!6561 (h!72655 (t!380074 zl!343)))) lt!2456209))))

(assert (=> bs!1831698 m!7590620))

(assert (=> b!6852680 d!2153824))

(declare-fun b_lambda!258761 () Bool)

(assert (= b_lambda!258745 (or b!6851566 b_lambda!258761)))

(declare-fun bs!1831699 () Bool)

(declare-fun d!2153826 () Bool)

(assert (= bs!1831699 (and d!2153826 b!6851566)))

(declare-fun res!2796897 () Bool)

(declare-fun e!4132277 () Bool)

(assert (=> bs!1831699 (=> (not res!2796897) (not e!4132277))))

(assert (=> bs!1831699 (= res!2796897 (validRegex!8413 (h!72654 (t!380073 lt!2456210))))))

(assert (=> bs!1831699 (= (dynLambda!26464 lambda!387348 (h!72654 (t!380073 lt!2456210))) e!4132277)))

(declare-fun b!6853132 () Bool)

(assert (=> b!6853132 (= e!4132277 (matchR!8860 (h!72654 (t!380073 lt!2456210)) s!2326))))

(assert (= (and bs!1831699 res!2796897) b!6853132))

(declare-fun m!7590754 () Bool)

(assert (=> bs!1831699 m!7590754))

(declare-fun m!7590756 () Bool)

(assert (=> b!6853132 m!7590756))

(assert (=> b!6852998 d!2153826))

(declare-fun b_lambda!258763 () Bool)

(assert (= b_lambda!258739 (or d!2153500 b_lambda!258763)))

(declare-fun bs!1831700 () Bool)

(declare-fun d!2153828 () Bool)

(assert (= bs!1831700 (and d!2153828 d!2153500)))

(assert (=> bs!1831700 (= (dynLambda!26464 lambda!387404 (h!72654 lt!2456291)) (validRegex!8413 (h!72654 lt!2456291)))))

(declare-fun m!7590758 () Bool)

(assert (=> bs!1831700 m!7590758))

(assert (=> b!6852915 d!2153828))

(declare-fun b_lambda!258765 () Bool)

(assert (= b_lambda!258743 (or b!6851566 b_lambda!258765)))

(declare-fun bs!1831701 () Bool)

(declare-fun d!2153830 () Bool)

(assert (= bs!1831701 (and d!2153830 b!6851566)))

(declare-fun res!2796898 () Bool)

(declare-fun e!4132278 () Bool)

(assert (=> bs!1831701 (=> (not res!2796898) (not e!4132278))))

(assert (=> bs!1831701 (= res!2796898 (validRegex!8413 lt!2456379))))

(assert (=> bs!1831701 (= (dynLambda!26464 lambda!387348 lt!2456379) e!4132278)))

(declare-fun b!6853133 () Bool)

(assert (=> b!6853133 (= e!4132278 (matchR!8860 lt!2456379 s!2326))))

(assert (= (and bs!1831701 res!2796898) b!6853133))

(declare-fun m!7590760 () Bool)

(assert (=> bs!1831701 m!7590760))

(declare-fun m!7590762 () Bool)

(assert (=> b!6853133 m!7590762))

(assert (=> d!2153802 d!2153830))

(check-sat (not d!2153744) (not b!6853095) (not b!6852663) (not b!6852773) (not b!6853125) (not bs!1831694) (not bm!624181) (not b!6853079) (not b!6852767) (not d!2153642) (not b!6853029) (not bm!624197) (not b!6852799) (not b!6852676) (not bm!624177) (not b!6852857) (not b!6852770) (not b!6853014) (not d!2153800) (not b!6853023) (not bm!624190) (not d!2153748) (not b!6853083) (not b_lambda!258675) (not b!6852934) (not b!6852916) (not d!2153760) (not d!2153782) (not d!2153704) (not b!6853017) (not b!6852858) (not bs!1831700) (not d!2153732) (not b_lambda!258753) (not b!6852774) (not b!6853096) (not b_lambda!258765) (not b!6853060) (not b!6852892) (not b!6852722) (not b!6852779) (not b!6853011) (not b!6853094) (not d!2153802) (not b!6852863) (not b!6852727) (not b!6852963) (not b!6853045) (not bm!624164) (not b!6852924) (not d!2153752) (not b!6852859) (not d!2153716) (not bs!1831693) (not b!6852972) tp_is_empty!42607 (not b!6852913) (not b!6853040) (not b!6852720) (not b!6853042) (not b!6852891) (not bm!624187) (not b!6853067) (not d!2153770) (not d!2153792) (not b!6852955) (not d!2153722) (not d!2153764) (not setNonEmpty!47105) (not b!6852894) (not b!6852893) (not b!6852964) (not d!2153736) (not b!6852983) (not b!6853048) (not b!6852839) (not b!6852803) (not b!6852948) (not b!6852684) (not b!6852690) (not b!6852855) (not b!6853107) (not b!6853056) (not bm!624176) (not b!6852917) (not b!6852911) (not bm!624161) (not b!6853109) (not b!6853115) (not d!2153724) (not b!6852724) (not b!6852807) (not b!6853074) (not bm!624180) (not b!6853025) (not bm!624166) (not bs!1831699) (not b!6853099) (not b_lambda!258763) (not bm!624189) (not b!6852679) (not d!2153754) (not b_lambda!258677) (not b!6853119) (not b!6852957) (not b!6852802) (not b!6853098) (not b!6853100) (not bm!624200) (not b!6852903) (not b!6852974) (not b!6852630) (not b!6852499) (not b!6852952) (not b!6853103) (not bm!624162) (not d!2153712) (not b!6853127) (not b!6853027) (not b!6853019) (not b!6852772) (not b!6852912) (not bm!624158) (not b!6852729) (not b!6853122) (not b!6852919) (not b!6852769) (not b_lambda!258759) (not b!6853123) (not bm!624192) (not d!2153700) (not b!6853022) (not bm!624186) (not d!2153742) (not b!6852958) (not d!2153646) (not b!6853026) (not b!6853102) (not b!6852990) (not b!6853118) (not b!6852744) (not bm!624160) (not b!6853071) (not b!6853063) (not b!6853035) (not b!6853131) (not bm!624184) (not b!6852801) (not b!6852503) (not b!6853072) (not b!6852734) (not bm!624155) (not b!6853036) (not b!6852938) (not b!6852953) (not b!6852849) (not d!2153750) (not b!6852735) (not b!6853039) (not b!6852732) (not b!6852812) (not b!6853078) (not b!6852733) (not b!6852731) (not b!6852725) (not b_lambda!258749) (not b!6853090) (not bm!624195) (not b!6852933) (not b!6853082) (not b!6853021) (not bm!624194) (not b!6853030) (not b!6853104) (not b!6853055) (not b!6853070) (not b_lambda!258769) (not d!2153794) (not b!6853046) (not d!2153658) (not b!6852995) (not b!6853050) (not b_lambda!258767) (not b!6853112) (not b!6853084) (not b!6852856) (not b!6852937) (not b!6852942) (not b!6852910) (not bm!624154) (not b!6853087) (not b!6853041) (not bs!1831696) (not b_lambda!258755) (not b!6852678) (not b!6853111) (not b!6853033) (not d!2153702) (not bm!624163) (not b!6852978) (not b!6852694) (not b!6853075) (not b!6852465) (not b_lambda!258747) (not bm!624193) (not b!6853113) (not b!6853132) (not d!2153798) (not b!6852996) (not d!2153788) (not b!6853126) (not b!6853130) (not b!6853018) (not bm!624196) (not b!6853092) (not b!6852956) (not b!6853116) (not b_lambda!258757) (not b!6852790) (not b!6852739) (not b!6852800) (not b!6852882) (not bs!1831701) (not b_lambda!258681) (not b!6853088) (not b!6853080) (not b!6852950) (not b_lambda!258751) (not d!2153730) (not b!6853054) (not b!6853133) (not bm!624167) (not b_lambda!258679) (not b!6852936) (not b!6852771) (not b!6852780) (not bs!1831698) (not b!6852931) (not b!6853032) (not b!6853052) (not b!6853059) (not b!6852971) (not b!6852889) (not b!6853047) (not b!6853037) (not b!6853086) (not b!6852868) (not bm!624202) (not b!6853129) (not bs!1831697) (not bm!624153) (not bm!624157) (not b!6853076) (not b!6852895) (not d!2153784) (not d!2153738) (not b!6853121) (not b!6853012) (not d!2153768) (not b!6853066) (not b!6853117) (not d!2153758) (not b!6853064) (not b!6853068) (not b!6852873) (not bm!624183) (not b!6852896) (not b!6852935) (not b!6853004) (not b!6853058) (not b!6853031) (not b!6852682) (not b!6853108) (not b!6853062) (not b!6852973) (not b!6853043) (not b!6853051) (not b!6852902) (not d!2153706) (not b_lambda!258761) (not b!6852728) (not b!6853000) (not b!6853106) (not b!6853091))
(check-sat)
(get-model)

(declare-fun b_lambda!258771 () Bool)

(assert (= b_lambda!258767 (or b!6851566 b_lambda!258771)))

(assert (=> bs!1831692 d!2153520))

(declare-fun b_lambda!258773 () Bool)

(assert (= b_lambda!258769 (or b!6851560 b_lambda!258773)))

(assert (=> bs!1831695 d!2153522))

(check-sat (not d!2153744) (not b!6853095) (not b!6852663) (not b!6852773) (not b!6853125) (not bs!1831694) (not bm!624181) (not b!6853079) (not b!6852767) (not d!2153642) (not b!6853029) (not bm!624197) (not b!6852799) (not b!6852676) (not bm!624177) (not b!6852857) (not b!6852770) (not b!6853014) (not d!2153800) (not b!6853023) (not bm!624190) (not d!2153748) (not b!6853083) (not b_lambda!258675) (not b_lambda!258771) (not b!6852934) (not b!6852916) (not d!2153760) (not d!2153782) (not d!2153704) (not b!6853017) (not b!6852858) (not bs!1831700) (not d!2153732) (not b_lambda!258753) (not b!6852774) (not b!6853096) (not b_lambda!258765) (not b!6853060) (not b!6852892) (not b!6852722) (not b!6852779) (not b!6853011) (not b!6853094) (not d!2153802) (not b!6852863) (not b!6852727) (not b!6852963) (not b!6853045) (not bm!624164) (not b!6852924) (not d!2153752) (not b!6852859) (not d!2153716) (not bs!1831693) (not b!6852972) tp_is_empty!42607 (not b!6852913) (not b!6853040) (not b!6852720) (not b!6853042) (not b!6852891) (not bm!624187) (not b!6853067) (not d!2153770) (not d!2153792) (not b!6852955) (not d!2153722) (not d!2153764) (not setNonEmpty!47105) (not b!6852894) (not b!6852893) (not b!6852964) (not d!2153736) (not b!6852983) (not b!6853048) (not b!6852839) (not b!6852803) (not b!6852948) (not b!6852684) (not b!6852690) (not b!6852855) (not b!6853107) (not b!6853056) (not bm!624176) (not b!6852917) (not b!6852911) (not bm!624161) (not b!6853109) (not b!6853115) (not d!2153724) (not b!6852724) (not b!6852807) (not b!6853074) (not bm!624180) (not b!6853025) (not bm!624166) (not bs!1831699) (not b!6853099) (not b_lambda!258763) (not bm!624189) (not b!6852679) (not d!2153754) (not b_lambda!258677) (not b!6853119) (not b!6852957) (not b!6852802) (not b!6853098) (not b!6853100) (not bm!624200) (not b!6852903) (not b!6852974) (not b!6852630) (not b!6852499) (not b!6852952) (not b!6853103) (not bm!624162) (not d!2153712) (not b!6853127) (not b!6853027) (not b!6853019) (not b!6852772) (not b!6852912) (not bm!624158) (not b!6852729) (not b!6853122) (not b!6852919) (not b!6852769) (not b_lambda!258759) (not b!6853123) (not bm!624192) (not d!2153700) (not b!6853022) (not bm!624186) (not d!2153742) (not b!6852958) (not d!2153646) (not b!6853026) (not b!6853102) (not b!6852990) (not b!6853118) (not b!6852744) (not bm!624160) (not b!6853071) (not b!6853063) (not b!6853035) (not b!6853131) (not bm!624184) (not b!6852801) (not b!6852503) (not b!6853072) (not b!6852734) (not bm!624155) (not b!6853036) (not b!6852938) (not b!6852953) (not b!6852849) (not d!2153750) (not b!6852735) (not b!6853039) (not b!6852732) (not b!6852812) (not b!6853078) (not b!6852733) (not b!6852731) (not b!6852725) (not b_lambda!258749) (not b!6853090) (not bm!624195) (not b!6852933) (not b!6853082) (not b!6853021) (not bm!624194) (not b!6853030) (not b!6853104) (not b!6853055) (not b!6853070) (not d!2153794) (not b!6853046) (not d!2153658) (not b!6852995) (not b!6853050) (not b!6853112) (not b!6853084) (not b!6852856) (not b!6852937) (not b!6852942) (not b!6852910) (not bm!624154) (not b!6853087) (not b!6853041) (not bs!1831696) (not b_lambda!258755) (not b!6852678) (not b!6853111) (not b!6853033) (not d!2153702) (not bm!624163) (not b!6852978) (not b!6852694) (not b!6853075) (not b!6852465) (not b_lambda!258747) (not bm!624193) (not b!6853113) (not b!6853132) (not d!2153798) (not b!6852996) (not d!2153788) (not b!6853126) (not b!6853130) (not b!6853018) (not bm!624196) (not b!6853092) (not b!6852956) (not b!6853116) (not b_lambda!258757) (not b!6852790) (not b!6852739) (not b!6852800) (not b!6852882) (not bs!1831701) (not b_lambda!258681) (not b!6853088) (not b!6853080) (not b!6852950) (not b_lambda!258751) (not d!2153730) (not b_lambda!258773) (not b!6853054) (not b!6853133) (not bm!624167) (not b_lambda!258679) (not b!6852936) (not b!6852771) (not b!6852780) (not bs!1831698) (not b!6852931) (not b!6853032) (not b!6853052) (not b!6853059) (not b!6852971) (not b!6852889) (not b!6853047) (not b!6853037) (not b!6853086) (not b!6852868) (not bm!624202) (not b!6853129) (not bs!1831697) (not bm!624153) (not bm!624157) (not b!6853076) (not b!6852895) (not d!2153784) (not d!2153738) (not b!6853121) (not b!6853012) (not d!2153768) (not b!6853066) (not b!6853117) (not d!2153758) (not b!6853064) (not b!6853068) (not b!6852873) (not bm!624183) (not b!6852896) (not b!6852935) (not b!6853004) (not b!6853058) (not b!6853031) (not b!6852682) (not b!6853108) (not b!6853062) (not b!6852973) (not b!6853043) (not b!6853051) (not b!6852902) (not d!2153706) (not b_lambda!258761) (not b!6852728) (not b!6853000) (not b!6853106) (not b!6853091))
(check-sat)
(get-model)

(declare-fun d!2153834 () Bool)

(assert (=> d!2153834 (= (nullable!6640 (reg!17006 (h!72654 lt!2456210))) (nullableFct!2524 (reg!17006 (h!72654 lt!2456210))))))

(declare-fun bs!1831702 () Bool)

(assert (= bs!1831702 d!2153834))

(declare-fun m!7590770 () Bool)

(assert (=> bs!1831702 m!7590770))

(assert (=> b!6852873 d!2153834))

(declare-fun d!2153838 () Bool)

(assert (=> d!2153838 (= (nullable!6640 lt!2456284) (nullableFct!2524 lt!2456284))))

(declare-fun bs!1831703 () Bool)

(assert (= bs!1831703 d!2153838))

(declare-fun m!7590772 () Bool)

(assert (=> bs!1831703 m!7590772))

(assert (=> b!6852863 d!2153838))

(declare-fun bs!1831704 () Bool)

(declare-fun d!2153840 () Bool)

(assert (= bs!1831704 (and d!2153840 d!2153732)))

(declare-fun lambda!387454 () Int)

(assert (=> bs!1831704 (not (= lambda!387454 lambda!387445))))

(declare-fun bs!1831705 () Bool)

(assert (= bs!1831705 (and d!2153840 d!2153730)))

(assert (=> bs!1831705 (not (= lambda!387454 lambda!387442))))

(declare-fun bs!1831706 () Bool)

(assert (= bs!1831706 (and d!2153840 d!2153496)))

(assert (=> bs!1831706 (not (= lambda!387454 lambda!387395))))

(declare-fun bs!1831707 () Bool)

(assert (= bs!1831707 (and d!2153840 d!2153794)))

(assert (=> bs!1831707 (= lambda!387454 lambda!387451)))

(declare-fun bs!1831708 () Bool)

(assert (= bs!1831708 (and d!2153840 d!2153498)))

(assert (=> bs!1831708 (not (= lambda!387454 lambda!387401))))

(declare-fun bs!1831709 () Bool)

(assert (= bs!1831709 (and d!2153840 d!2153748)))

(assert (=> bs!1831709 (= lambda!387454 lambda!387446)))

(declare-fun bs!1831710 () Bool)

(assert (= bs!1831710 (and d!2153840 d!2153500)))

(assert (=> bs!1831710 (= lambda!387454 lambda!387404)))

(declare-fun bs!1831711 () Bool)

(assert (= bs!1831711 (and d!2153840 d!2153764)))

(assert (=> bs!1831711 (= lambda!387454 lambda!387448)))

(declare-fun bs!1831712 () Bool)

(assert (= bs!1831712 (and d!2153840 d!2153770)))

(assert (=> bs!1831712 (= lambda!387454 lambda!387449)))

(declare-fun bs!1831713 () Bool)

(assert (= bs!1831713 (and d!2153840 d!2153758)))

(assert (=> bs!1831713 (= lambda!387454 lambda!387447)))

(declare-fun bs!1831714 () Bool)

(assert (= bs!1831714 (and d!2153840 d!2153502)))

(assert (=> bs!1831714 (= lambda!387454 lambda!387405)))

(declare-fun bs!1831715 () Bool)

(assert (= bs!1831715 (and d!2153840 d!2153480)))

(assert (=> bs!1831715 (= lambda!387454 lambda!387392)))

(declare-fun bs!1831716 () Bool)

(assert (= bs!1831716 (and d!2153840 d!2153712)))

(assert (=> bs!1831716 (= lambda!387454 lambda!387436)))

(declare-fun bs!1831717 () Bool)

(assert (= bs!1831717 (and d!2153840 d!2153724)))

(assert (=> bs!1831717 (= lambda!387454 lambda!387439)))

(declare-fun bs!1831718 () Bool)

(assert (= bs!1831718 (and d!2153840 b!6851566)))

(assert (=> bs!1831718 (not (= lambda!387454 lambda!387348))))

(assert (=> bs!1831708 (= lambda!387454 lambda!387400)))

(declare-fun bs!1831719 () Bool)

(assert (= bs!1831719 (and d!2153840 d!2153792)))

(assert (=> bs!1831719 (= lambda!387454 lambda!387450)))

(assert (=> d!2153840 (= (inv!84939 setElem!47105) (forall!15858 (exprs!6561 setElem!47105) lambda!387454))))

(declare-fun bs!1831720 () Bool)

(assert (= bs!1831720 d!2153840))

(declare-fun m!7590778 () Bool)

(assert (=> bs!1831720 m!7590778))

(assert (=> setNonEmpty!47105 d!2153840))

(assert (=> bm!624167 d!2153718))

(declare-fun d!2153844 () Bool)

(declare-fun lt!2456383 () Int)

(assert (=> d!2153844 (>= lt!2456383 0)))

(declare-fun e!4132288 () Int)

(assert (=> d!2153844 (= lt!2456383 e!4132288)))

(declare-fun c!1275706 () Bool)

(assert (=> d!2153844 (= c!1275706 ((_ is Cons!66206) (exprs!6561 (h!72655 (t!380074 lt!2456208)))))))

(assert (=> d!2153844 (= (contextDepthTotal!404 (h!72655 (t!380074 lt!2456208))) lt!2456383)))

(declare-fun b!6853145 () Bool)

(assert (=> b!6853145 (= e!4132288 (+ (regexDepthTotal!251 (h!72654 (exprs!6561 (h!72655 (t!380074 lt!2456208))))) (contextDepthTotal!404 (Context!12123 (t!380073 (exprs!6561 (h!72655 (t!380074 lt!2456208))))))))))

(declare-fun b!6853146 () Bool)

(assert (=> b!6853146 (= e!4132288 1)))

(assert (= (and d!2153844 c!1275706) b!6853145))

(assert (= (and d!2153844 (not c!1275706)) b!6853146))

(declare-fun m!7590782 () Bool)

(assert (=> b!6853145 m!7590782))

(declare-fun m!7590784 () Bool)

(assert (=> b!6853145 m!7590784))

(assert (=> b!6853014 d!2153844))

(declare-fun d!2153850 () Bool)

(declare-fun lt!2456384 () Int)

(assert (=> d!2153850 (>= lt!2456384 0)))

(declare-fun e!4132289 () Int)

(assert (=> d!2153850 (= lt!2456384 e!4132289)))

(declare-fun c!1275707 () Bool)

(assert (=> d!2153850 (= c!1275707 ((_ is Cons!66207) (t!380074 (t!380074 lt!2456208))))))

(assert (=> d!2153850 (= (zipperDepthTotal!432 (t!380074 (t!380074 lt!2456208))) lt!2456384)))

(declare-fun b!6853147 () Bool)

(assert (=> b!6853147 (= e!4132289 (+ (contextDepthTotal!404 (h!72655 (t!380074 (t!380074 lt!2456208)))) (zipperDepthTotal!432 (t!380074 (t!380074 (t!380074 lt!2456208))))))))

(declare-fun b!6853148 () Bool)

(assert (=> b!6853148 (= e!4132289 0)))

(assert (= (and d!2153850 c!1275707) b!6853147))

(assert (= (and d!2153850 (not c!1275707)) b!6853148))

(declare-fun m!7590786 () Bool)

(assert (=> b!6853147 m!7590786))

(declare-fun m!7590788 () Bool)

(assert (=> b!6853147 m!7590788))

(assert (=> b!6853014 d!2153850))

(declare-fun d!2153852 () Bool)

(declare-fun c!1275708 () Bool)

(assert (=> d!2153852 (= c!1275708 ((_ is Nil!66206) (unfocusZipperList!2094 zl!343)))))

(declare-fun e!4132292 () (InoxSet Regex!16677))

(assert (=> d!2153852 (= (content!12986 (unfocusZipperList!2094 zl!343)) e!4132292)))

(declare-fun b!6853151 () Bool)

(assert (=> b!6853151 (= e!4132292 ((as const (Array Regex!16677 Bool)) false))))

(declare-fun b!6853152 () Bool)

(assert (=> b!6853152 (= e!4132292 ((_ map or) (store ((as const (Array Regex!16677 Bool)) false) (h!72654 (unfocusZipperList!2094 zl!343)) true) (content!12986 (t!380073 (unfocusZipperList!2094 zl!343)))))))

(assert (= (and d!2153852 c!1275708) b!6853151))

(assert (= (and d!2153852 (not c!1275708)) b!6853152))

(declare-fun m!7590790 () Bool)

(assert (=> b!6853152 m!7590790))

(declare-fun m!7590794 () Bool)

(assert (=> b!6853152 m!7590794))

(assert (=> d!2153704 d!2153852))

(declare-fun d!2153854 () Bool)

(declare-fun c!1275709 () Bool)

(assert (=> d!2153854 (= c!1275709 ((_ is Nil!66207) (t!380074 lt!2456275)))))

(declare-fun e!4132293 () (InoxSet Context!12122))

(assert (=> d!2153854 (= (content!12985 (t!380074 lt!2456275)) e!4132293)))

(declare-fun b!6853153 () Bool)

(assert (=> b!6853153 (= e!4132293 ((as const (Array Context!12122 Bool)) false))))

(declare-fun b!6853154 () Bool)

(assert (=> b!6853154 (= e!4132293 ((_ map or) (store ((as const (Array Context!12122 Bool)) false) (h!72655 (t!380074 lt!2456275)) true) (content!12985 (t!380074 (t!380074 lt!2456275)))))))

(assert (= (and d!2153854 c!1275709) b!6853153))

(assert (= (and d!2153854 (not c!1275709)) b!6853154))

(declare-fun m!7590798 () Bool)

(assert (=> b!6853154 m!7590798))

(declare-fun m!7590800 () Bool)

(assert (=> b!6853154 m!7590800))

(assert (=> b!6853011 d!2153854))

(declare-fun b!6853157 () Bool)

(declare-fun res!2796911 () Bool)

(declare-fun e!4132301 () Bool)

(assert (=> b!6853157 (=> res!2796911 e!4132301)))

(assert (=> b!6853157 (= res!2796911 (not ((_ is Concat!25522) (ite c!1275699 (reg!17006 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))) (ite c!1275700 (regOne!33867 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))) (regOne!33866 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))))))))))

(declare-fun e!4132302 () Bool)

(assert (=> b!6853157 (= e!4132302 e!4132301)))

(declare-fun b!6853158 () Bool)

(declare-fun res!2796912 () Bool)

(declare-fun e!4132296 () Bool)

(assert (=> b!6853158 (=> (not res!2796912) (not e!4132296))))

(declare-fun call!624211 () Bool)

(assert (=> b!6853158 (= res!2796912 call!624211)))

(assert (=> b!6853158 (= e!4132302 e!4132296)))

(declare-fun c!1275710 () Bool)

(declare-fun bm!624206 () Bool)

(declare-fun call!624212 () Bool)

(declare-fun c!1275711 () Bool)

(assert (=> bm!624206 (= call!624212 (validRegex!8413 (ite c!1275710 (reg!17006 (ite c!1275699 (reg!17006 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))) (ite c!1275700 (regOne!33867 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))) (regOne!33866 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209)))))) (ite c!1275711 (regOne!33867 (ite c!1275699 (reg!17006 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))) (ite c!1275700 (regOne!33867 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))) (regOne!33866 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209)))))) (regOne!33866 (ite c!1275699 (reg!17006 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))) (ite c!1275700 (regOne!33867 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))) (regOne!33866 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))))))))))))

(declare-fun b!6853159 () Bool)

(declare-fun call!624213 () Bool)

(assert (=> b!6853159 (= e!4132296 call!624213)))

(declare-fun b!6853161 () Bool)

(declare-fun e!4132297 () Bool)

(declare-fun e!4132298 () Bool)

(assert (=> b!6853161 (= e!4132297 e!4132298)))

(assert (=> b!6853161 (= c!1275710 ((_ is Star!16677) (ite c!1275699 (reg!17006 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))) (ite c!1275700 (regOne!33867 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))) (regOne!33866 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209)))))))))

(declare-fun b!6853162 () Bool)

(assert (=> b!6853162 (= e!4132298 e!4132302)))

(assert (=> b!6853162 (= c!1275711 ((_ is Union!16677) (ite c!1275699 (reg!17006 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))) (ite c!1275700 (regOne!33867 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))) (regOne!33866 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209)))))))))

(declare-fun bm!624207 () Bool)

(assert (=> bm!624207 (= call!624211 call!624212)))

(declare-fun d!2153858 () Bool)

(declare-fun res!2796913 () Bool)

(assert (=> d!2153858 (=> res!2796913 e!4132297)))

(assert (=> d!2153858 (= res!2796913 ((_ is ElementMatch!16677) (ite c!1275699 (reg!17006 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))) (ite c!1275700 (regOne!33867 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))) (regOne!33866 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209)))))))))

(assert (=> d!2153858 (= (validRegex!8413 (ite c!1275699 (reg!17006 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))) (ite c!1275700 (regOne!33867 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))) (regOne!33866 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209)))))) e!4132297)))

(declare-fun b!6853160 () Bool)

(declare-fun e!4132299 () Bool)

(assert (=> b!6853160 (= e!4132298 e!4132299)))

(declare-fun res!2796914 () Bool)

(assert (=> b!6853160 (= res!2796914 (not (nullable!6640 (reg!17006 (ite c!1275699 (reg!17006 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))) (ite c!1275700 (regOne!33867 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))) (regOne!33866 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209)))))))))))

(assert (=> b!6853160 (=> (not res!2796914) (not e!4132299))))

(declare-fun b!6853163 () Bool)

(assert (=> b!6853163 (= e!4132299 call!624212)))

(declare-fun bm!624208 () Bool)

(assert (=> bm!624208 (= call!624213 (validRegex!8413 (ite c!1275711 (regTwo!33867 (ite c!1275699 (reg!17006 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))) (ite c!1275700 (regOne!33867 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))) (regOne!33866 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209)))))) (regTwo!33866 (ite c!1275699 (reg!17006 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))) (ite c!1275700 (regOne!33867 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))) (regOne!33866 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209)))))))))))

(declare-fun b!6853164 () Bool)

(declare-fun e!4132300 () Bool)

(assert (=> b!6853164 (= e!4132300 call!624213)))

(declare-fun b!6853165 () Bool)

(assert (=> b!6853165 (= e!4132301 e!4132300)))

(declare-fun res!2796910 () Bool)

(assert (=> b!6853165 (=> (not res!2796910) (not e!4132300))))

(assert (=> b!6853165 (= res!2796910 call!624211)))

(assert (= (and d!2153858 (not res!2796913)) b!6853161))

(assert (= (and b!6853161 c!1275710) b!6853160))

(assert (= (and b!6853161 (not c!1275710)) b!6853162))

(assert (= (and b!6853160 res!2796914) b!6853163))

(assert (= (and b!6853162 c!1275711) b!6853158))

(assert (= (and b!6853162 (not c!1275711)) b!6853157))

(assert (= (and b!6853158 res!2796912) b!6853159))

(assert (= (and b!6853157 (not res!2796911)) b!6853165))

(assert (= (and b!6853165 res!2796910) b!6853164))

(assert (= (or b!6853159 b!6853164) bm!624208))

(assert (= (or b!6853158 b!6853165) bm!624207))

(assert (= (or b!6853163 bm!624207) bm!624206))

(declare-fun m!7590806 () Bool)

(assert (=> bm!624206 m!7590806))

(declare-fun m!7590808 () Bool)

(assert (=> b!6853160 m!7590808))

(declare-fun m!7590810 () Bool)

(assert (=> bm!624208 m!7590810))

(assert (=> bm!624200 d!2153858))

(declare-fun d!2153864 () Bool)

(assert (=> d!2153864 (= (isEmpty!38581 (unfocusZipperList!2094 lt!2456208)) ((_ is Nil!66206) (unfocusZipperList!2094 lt!2456208)))))

(assert (=> b!6852953 d!2153864))

(declare-fun d!2153866 () Bool)

(declare-fun lt!2456385 () Bool)

(assert (=> d!2153866 (= lt!2456385 (select (content!12985 (t!380074 zl!343)) lt!2456307))))

(declare-fun e!4132304 () Bool)

(assert (=> d!2153866 (= lt!2456385 e!4132304)))

(declare-fun res!2796917 () Bool)

(assert (=> d!2153866 (=> (not res!2796917) (not e!4132304))))

(assert (=> d!2153866 (= res!2796917 ((_ is Cons!66207) (t!380074 zl!343)))))

(assert (=> d!2153866 (= (contains!20331 (t!380074 zl!343) lt!2456307) lt!2456385)))

(declare-fun b!6853166 () Bool)

(declare-fun e!4132303 () Bool)

(assert (=> b!6853166 (= e!4132304 e!4132303)))

(declare-fun res!2796918 () Bool)

(assert (=> b!6853166 (=> res!2796918 e!4132303)))

(assert (=> b!6853166 (= res!2796918 (= (h!72655 (t!380074 zl!343)) lt!2456307))))

(declare-fun b!6853167 () Bool)

(assert (=> b!6853167 (= e!4132303 (contains!20331 (t!380074 (t!380074 zl!343)) lt!2456307))))

(assert (= (and d!2153866 res!2796917) b!6853166))

(assert (= (and b!6853166 (not res!2796918)) b!6853167))

(declare-fun m!7590812 () Bool)

(assert (=> d!2153866 m!7590812))

(declare-fun m!7590814 () Bool)

(assert (=> d!2153866 m!7590814))

(declare-fun m!7590816 () Bool)

(assert (=> b!6853167 m!7590816))

(assert (=> b!6852849 d!2153866))

(declare-fun d!2153870 () Bool)

(assert (=> d!2153870 (= (head!13734 (t!380073 lt!2456210)) (h!72654 (t!380073 lt!2456210)))))

(assert (=> b!6852996 d!2153870))

(declare-fun d!2153874 () Bool)

(assert (=> d!2153874 (= (nullable!6640 (reg!17006 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209))))) (nullableFct!2524 (reg!17006 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209))))))))

(declare-fun bs!1831722 () Bool)

(assert (= bs!1831722 d!2153874))

(declare-fun m!7590818 () Bool)

(assert (=> bs!1831722 m!7590818))

(assert (=> b!6852790 d!2153874))

(assert (=> d!2153782 d!2153506))

(assert (=> d!2153782 d!2153508))

(assert (=> b!6852735 d!2153718))

(assert (=> b!6852735 d!2153720))

(declare-fun d!2153876 () Bool)

(declare-fun c!1275712 () Bool)

(assert (=> d!2153876 (= c!1275712 ((_ is Nil!66207) res!2796856))))

(declare-fun e!4132305 () (InoxSet Context!12122))

(assert (=> d!2153876 (= (content!12985 res!2796856) e!4132305)))

(declare-fun b!6853168 () Bool)

(assert (=> b!6853168 (= e!4132305 ((as const (Array Context!12122 Bool)) false))))

(declare-fun b!6853169 () Bool)

(assert (=> b!6853169 (= e!4132305 ((_ map or) (store ((as const (Array Context!12122 Bool)) false) (h!72655 res!2796856) true) (content!12985 (t!380074 res!2796856))))))

(assert (= (and d!2153876 c!1275712) b!6853168))

(assert (= (and d!2153876 (not c!1275712)) b!6853169))

(declare-fun m!7590820 () Bool)

(assert (=> b!6853169 m!7590820))

(declare-fun m!7590822 () Bool)

(assert (=> b!6853169 m!7590822))

(assert (=> b!6852912 d!2153876))

(declare-fun d!2153878 () Bool)

(assert (=> d!2153878 (= (isUnion!1449 lt!2456375) ((_ is Union!16677) lt!2456375))))

(assert (=> b!6852957 d!2153878))

(assert (=> d!2153732 d!2153460))

(declare-fun bs!1831724 () Bool)

(declare-fun d!2153882 () Bool)

(assert (= bs!1831724 (and d!2153882 d!2153732)))

(declare-fun lambda!387455 () Int)

(assert (=> bs!1831724 (not (= lambda!387455 lambda!387445))))

(declare-fun bs!1831725 () Bool)

(assert (= bs!1831725 (and d!2153882 d!2153730)))

(assert (=> bs!1831725 (= (= lambda!387445 lambda!387401) (= lambda!387455 lambda!387442))))

(declare-fun bs!1831726 () Bool)

(assert (= bs!1831726 (and d!2153882 d!2153840)))

(assert (=> bs!1831726 (not (= lambda!387455 lambda!387454))))

(declare-fun bs!1831727 () Bool)

(assert (= bs!1831727 (and d!2153882 d!2153496)))

(assert (=> bs!1831727 (= (= lambda!387445 lambda!387348) (= lambda!387455 lambda!387395))))

(declare-fun bs!1831728 () Bool)

(assert (= bs!1831728 (and d!2153882 d!2153794)))

(assert (=> bs!1831728 (not (= lambda!387455 lambda!387451))))

(declare-fun bs!1831729 () Bool)

(assert (= bs!1831729 (and d!2153882 d!2153498)))

(assert (=> bs!1831729 (not (= lambda!387455 lambda!387401))))

(declare-fun bs!1831730 () Bool)

(assert (= bs!1831730 (and d!2153882 d!2153748)))

(assert (=> bs!1831730 (not (= lambda!387455 lambda!387446))))

(declare-fun bs!1831731 () Bool)

(assert (= bs!1831731 (and d!2153882 d!2153500)))

(assert (=> bs!1831731 (not (= lambda!387455 lambda!387404))))

(declare-fun bs!1831732 () Bool)

(assert (= bs!1831732 (and d!2153882 d!2153764)))

(assert (=> bs!1831732 (not (= lambda!387455 lambda!387448))))

(declare-fun bs!1831733 () Bool)

(assert (= bs!1831733 (and d!2153882 d!2153770)))

(assert (=> bs!1831733 (not (= lambda!387455 lambda!387449))))

(declare-fun bs!1831734 () Bool)

(assert (= bs!1831734 (and d!2153882 d!2153758)))

(assert (=> bs!1831734 (not (= lambda!387455 lambda!387447))))

(declare-fun bs!1831735 () Bool)

(assert (= bs!1831735 (and d!2153882 d!2153502)))

(assert (=> bs!1831735 (not (= lambda!387455 lambda!387405))))

(declare-fun bs!1831736 () Bool)

(assert (= bs!1831736 (and d!2153882 d!2153480)))

(assert (=> bs!1831736 (not (= lambda!387455 lambda!387392))))

(declare-fun bs!1831737 () Bool)

(assert (= bs!1831737 (and d!2153882 d!2153712)))

(assert (=> bs!1831737 (not (= lambda!387455 lambda!387436))))

(declare-fun bs!1831738 () Bool)

(assert (= bs!1831738 (and d!2153882 d!2153724)))

(assert (=> bs!1831738 (not (= lambda!387455 lambda!387439))))

(declare-fun bs!1831739 () Bool)

(assert (= bs!1831739 (and d!2153882 b!6851566)))

(assert (=> bs!1831739 (not (= lambda!387455 lambda!387348))))

(assert (=> bs!1831729 (not (= lambda!387455 lambda!387400))))

(declare-fun bs!1831740 () Bool)

(assert (= bs!1831740 (and d!2153882 d!2153792)))

(assert (=> bs!1831740 (not (= lambda!387455 lambda!387450))))

(assert (=> d!2153882 true))

(assert (=> d!2153882 (< (dynLambda!26465 order!27663 lambda!387445) (dynLambda!26465 order!27663 lambda!387455))))

(assert (=> d!2153882 (= (exists!2781 lt!2456210 lambda!387445) (not (forall!15858 lt!2456210 lambda!387455)))))

(declare-fun bs!1831742 () Bool)

(assert (= bs!1831742 d!2153882))

(declare-fun m!7590830 () Bool)

(assert (=> bs!1831742 m!7590830))

(assert (=> d!2153732 d!2153882))

(declare-fun d!2153888 () Bool)

(declare-fun lt!2456387 () Bool)

(assert (=> d!2153888 (= lt!2456387 (select (content!12986 (t!380073 lt!2456210)) lt!2456379))))

(declare-fun e!4132315 () Bool)

(assert (=> d!2153888 (= lt!2456387 e!4132315)))

(declare-fun res!2796924 () Bool)

(assert (=> d!2153888 (=> (not res!2796924) (not e!4132315))))

(assert (=> d!2153888 (= res!2796924 ((_ is Cons!66206) (t!380073 lt!2456210)))))

(assert (=> d!2153888 (= (contains!20329 (t!380073 lt!2456210) lt!2456379) lt!2456387)))

(declare-fun b!6853182 () Bool)

(declare-fun e!4132314 () Bool)

(assert (=> b!6853182 (= e!4132315 e!4132314)))

(declare-fun res!2796925 () Bool)

(assert (=> b!6853182 (=> res!2796925 e!4132314)))

(assert (=> b!6853182 (= res!2796925 (= (h!72654 (t!380073 lt!2456210)) lt!2456379))))

(declare-fun b!6853183 () Bool)

(assert (=> b!6853183 (= e!4132314 (contains!20329 (t!380073 (t!380073 lt!2456210)) lt!2456379))))

(assert (= (and d!2153888 res!2796924) b!6853182))

(assert (= (and b!6853182 (not res!2796925)) b!6853183))

(assert (=> d!2153888 m!7590354))

(declare-fun m!7590832 () Bool)

(assert (=> d!2153888 m!7590832))

(declare-fun m!7590834 () Bool)

(assert (=> b!6853183 m!7590834))

(assert (=> b!6853000 d!2153888))

(declare-fun d!2153890 () Bool)

(declare-fun lt!2456388 () Bool)

(assert (=> d!2153890 (= lt!2456388 (select (content!12986 (t!380073 lt!2456210)) lt!2456284))))

(declare-fun e!4132317 () Bool)

(assert (=> d!2153890 (= lt!2456388 e!4132317)))

(declare-fun res!2796926 () Bool)

(assert (=> d!2153890 (=> (not res!2796926) (not e!4132317))))

(assert (=> d!2153890 (= res!2796926 ((_ is Cons!66206) (t!380073 lt!2456210)))))

(assert (=> d!2153890 (= (contains!20329 (t!380073 lt!2456210) lt!2456284) lt!2456388)))

(declare-fun b!6853184 () Bool)

(declare-fun e!4132316 () Bool)

(assert (=> b!6853184 (= e!4132317 e!4132316)))

(declare-fun res!2796927 () Bool)

(assert (=> b!6853184 (=> res!2796927 e!4132316)))

(assert (=> b!6853184 (= res!2796927 (= (h!72654 (t!380073 lt!2456210)) lt!2456284))))

(declare-fun b!6853185 () Bool)

(assert (=> b!6853185 (= e!4132316 (contains!20329 (t!380073 (t!380073 lt!2456210)) lt!2456284))))

(assert (= (and d!2153890 res!2796926) b!6853184))

(assert (= (and b!6853184 (not res!2796927)) b!6853185))

(assert (=> d!2153890 m!7590354))

(declare-fun m!7590836 () Bool)

(assert (=> d!2153890 m!7590836))

(declare-fun m!7590838 () Bool)

(assert (=> b!6853185 m!7590838))

(assert (=> b!6852465 d!2153890))

(declare-fun d!2153892 () Bool)

(declare-fun res!2796928 () Bool)

(declare-fun e!4132318 () Bool)

(assert (=> d!2153892 (=> res!2796928 e!4132318)))

(assert (=> d!2153892 (= res!2796928 ((_ is Nil!66207) (t!380074 lt!2456275)))))

(assert (=> d!2153892 (= (noDuplicate!2443 (t!380074 lt!2456275)) e!4132318)))

(declare-fun b!6853186 () Bool)

(declare-fun e!4132319 () Bool)

(assert (=> b!6853186 (= e!4132318 e!4132319)))

(declare-fun res!2796929 () Bool)

(assert (=> b!6853186 (=> (not res!2796929) (not e!4132319))))

(assert (=> b!6853186 (= res!2796929 (not (contains!20331 (t!380074 (t!380074 lt!2456275)) (h!72655 (t!380074 lt!2456275)))))))

(declare-fun b!6853187 () Bool)

(assert (=> b!6853187 (= e!4132319 (noDuplicate!2443 (t!380074 (t!380074 lt!2456275))))))

(assert (= (and d!2153892 (not res!2796928)) b!6853186))

(assert (= (and b!6853186 res!2796929) b!6853187))

(declare-fun m!7590840 () Bool)

(assert (=> b!6853186 m!7590840))

(declare-fun m!7590842 () Bool)

(assert (=> b!6853187 m!7590842))

(assert (=> b!6852935 d!2153892))

(declare-fun bs!1831752 () Bool)

(declare-fun d!2153894 () Bool)

(assert (= bs!1831752 (and d!2153894 d!2153732)))

(declare-fun lambda!387457 () Int)

(assert (=> bs!1831752 (not (= lambda!387457 lambda!387445))))

(declare-fun bs!1831753 () Bool)

(assert (= bs!1831753 (and d!2153894 d!2153730)))

(assert (=> bs!1831753 (not (= lambda!387457 lambda!387442))))

(declare-fun bs!1831755 () Bool)

(assert (= bs!1831755 (and d!2153894 d!2153840)))

(assert (=> bs!1831755 (= lambda!387457 lambda!387454)))

(declare-fun bs!1831757 () Bool)

(assert (= bs!1831757 (and d!2153894 d!2153496)))

(assert (=> bs!1831757 (not (= lambda!387457 lambda!387395))))

(declare-fun bs!1831758 () Bool)

(assert (= bs!1831758 (and d!2153894 d!2153794)))

(assert (=> bs!1831758 (= lambda!387457 lambda!387451)))

(declare-fun bs!1831760 () Bool)

(assert (= bs!1831760 (and d!2153894 d!2153882)))

(assert (=> bs!1831760 (not (= lambda!387457 lambda!387455))))

(declare-fun bs!1831761 () Bool)

(assert (= bs!1831761 (and d!2153894 d!2153498)))

(assert (=> bs!1831761 (not (= lambda!387457 lambda!387401))))

(declare-fun bs!1831763 () Bool)

(assert (= bs!1831763 (and d!2153894 d!2153748)))

(assert (=> bs!1831763 (= lambda!387457 lambda!387446)))

(declare-fun bs!1831764 () Bool)

(assert (= bs!1831764 (and d!2153894 d!2153500)))

(assert (=> bs!1831764 (= lambda!387457 lambda!387404)))

(declare-fun bs!1831766 () Bool)

(assert (= bs!1831766 (and d!2153894 d!2153764)))

(assert (=> bs!1831766 (= lambda!387457 lambda!387448)))

(declare-fun bs!1831767 () Bool)

(assert (= bs!1831767 (and d!2153894 d!2153770)))

(assert (=> bs!1831767 (= lambda!387457 lambda!387449)))

(declare-fun bs!1831769 () Bool)

(assert (= bs!1831769 (and d!2153894 d!2153758)))

(assert (=> bs!1831769 (= lambda!387457 lambda!387447)))

(declare-fun bs!1831770 () Bool)

(assert (= bs!1831770 (and d!2153894 d!2153502)))

(assert (=> bs!1831770 (= lambda!387457 lambda!387405)))

(declare-fun bs!1831771 () Bool)

(assert (= bs!1831771 (and d!2153894 d!2153480)))

(assert (=> bs!1831771 (= lambda!387457 lambda!387392)))

(declare-fun bs!1831772 () Bool)

(assert (= bs!1831772 (and d!2153894 d!2153712)))

(assert (=> bs!1831772 (= lambda!387457 lambda!387436)))

(declare-fun bs!1831773 () Bool)

(assert (= bs!1831773 (and d!2153894 d!2153724)))

(assert (=> bs!1831773 (= lambda!387457 lambda!387439)))

(declare-fun bs!1831774 () Bool)

(assert (= bs!1831774 (and d!2153894 b!6851566)))

(assert (=> bs!1831774 (not (= lambda!387457 lambda!387348))))

(assert (=> bs!1831761 (= lambda!387457 lambda!387400)))

(declare-fun bs!1831775 () Bool)

(assert (= bs!1831775 (and d!2153894 d!2153792)))

(assert (=> bs!1831775 (= lambda!387457 lambda!387450)))

(declare-fun b!6853188 () Bool)

(declare-fun e!4132325 () Regex!16677)

(assert (=> b!6853188 (= e!4132325 (h!72654 (exprs!6561 (h!72655 (t!380074 zl!343)))))))

(declare-fun b!6853189 () Bool)

(declare-fun e!4132324 () Bool)

(declare-fun lt!2456389 () Regex!16677)

(assert (=> b!6853189 (= e!4132324 (isConcat!1531 lt!2456389))))

(declare-fun b!6853190 () Bool)

(declare-fun e!4132323 () Regex!16677)

(assert (=> b!6853190 (= e!4132325 e!4132323)))

(declare-fun c!1275717 () Bool)

(assert (=> b!6853190 (= c!1275717 ((_ is Cons!66206) (exprs!6561 (h!72655 (t!380074 zl!343)))))))

(declare-fun b!6853191 () Bool)

(declare-fun e!4132320 () Bool)

(declare-fun e!4132321 () Bool)

(assert (=> b!6853191 (= e!4132320 e!4132321)))

(declare-fun c!1275719 () Bool)

(assert (=> b!6853191 (= c!1275719 (isEmpty!38581 (exprs!6561 (h!72655 (t!380074 zl!343)))))))

(declare-fun b!6853192 () Bool)

(assert (=> b!6853192 (= e!4132323 (Concat!25522 (h!72654 (exprs!6561 (h!72655 (t!380074 zl!343)))) (generalisedConcat!2268 (t!380073 (exprs!6561 (h!72655 (t!380074 zl!343)))))))))

(declare-fun b!6853193 () Bool)

(declare-fun e!4132322 () Bool)

(assert (=> b!6853193 (= e!4132322 (isEmpty!38581 (t!380073 (exprs!6561 (h!72655 (t!380074 zl!343))))))))

(declare-fun b!6853194 () Bool)

(assert (=> b!6853194 (= e!4132324 (= lt!2456389 (head!13734 (exprs!6561 (h!72655 (t!380074 zl!343))))))))

(declare-fun b!6853195 () Bool)

(assert (=> b!6853195 (= e!4132321 e!4132324)))

(declare-fun c!1275718 () Bool)

(assert (=> b!6853195 (= c!1275718 (isEmpty!38581 (tail!12810 (exprs!6561 (h!72655 (t!380074 zl!343))))))))

(assert (=> d!2153894 e!4132320))

(declare-fun res!2796930 () Bool)

(assert (=> d!2153894 (=> (not res!2796930) (not e!4132320))))

(assert (=> d!2153894 (= res!2796930 (validRegex!8413 lt!2456389))))

(assert (=> d!2153894 (= lt!2456389 e!4132325)))

(declare-fun c!1275720 () Bool)

(assert (=> d!2153894 (= c!1275720 e!4132322)))

(declare-fun res!2796931 () Bool)

(assert (=> d!2153894 (=> (not res!2796931) (not e!4132322))))

(assert (=> d!2153894 (= res!2796931 ((_ is Cons!66206) (exprs!6561 (h!72655 (t!380074 zl!343)))))))

(assert (=> d!2153894 (forall!15858 (exprs!6561 (h!72655 (t!380074 zl!343))) lambda!387457)))

(assert (=> d!2153894 (= (generalisedConcat!2268 (exprs!6561 (h!72655 (t!380074 zl!343)))) lt!2456389)))

(declare-fun b!6853196 () Bool)

(assert (=> b!6853196 (= e!4132321 (isEmptyExpr!2008 lt!2456389))))

(declare-fun b!6853197 () Bool)

(assert (=> b!6853197 (= e!4132323 EmptyExpr!16677)))

(assert (= (and d!2153894 res!2796931) b!6853193))

(assert (= (and d!2153894 c!1275720) b!6853188))

(assert (= (and d!2153894 (not c!1275720)) b!6853190))

(assert (= (and b!6853190 c!1275717) b!6853192))

(assert (= (and b!6853190 (not c!1275717)) b!6853197))

(assert (= (and d!2153894 res!2796930) b!6853191))

(assert (= (and b!6853191 c!1275719) b!6853196))

(assert (= (and b!6853191 (not c!1275719)) b!6853195))

(assert (= (and b!6853195 c!1275718) b!6853194))

(assert (= (and b!6853195 (not c!1275718)) b!6853189))

(declare-fun m!7590844 () Bool)

(assert (=> b!6853195 m!7590844))

(assert (=> b!6853195 m!7590844))

(declare-fun m!7590848 () Bool)

(assert (=> b!6853195 m!7590848))

(declare-fun m!7590850 () Bool)

(assert (=> b!6853191 m!7590850))

(declare-fun m!7590854 () Bool)

(assert (=> b!6853196 m!7590854))

(declare-fun m!7590858 () Bool)

(assert (=> b!6853189 m!7590858))

(declare-fun m!7590860 () Bool)

(assert (=> d!2153894 m!7590860))

(declare-fun m!7590864 () Bool)

(assert (=> d!2153894 m!7590864))

(declare-fun m!7590866 () Bool)

(assert (=> b!6853193 m!7590866))

(declare-fun m!7590870 () Bool)

(assert (=> b!6853192 m!7590870))

(declare-fun m!7590874 () Bool)

(assert (=> b!6853194 m!7590874))

(assert (=> bs!1831698 d!2153894))

(declare-fun b!6853198 () Bool)

(declare-fun e!4132326 () Int)

(declare-fun e!4132327 () Int)

(assert (=> b!6853198 (= e!4132326 e!4132327)))

(declare-fun c!1275721 () Bool)

(assert (=> b!6853198 (= c!1275721 ((_ is Star!16677) (ite c!1275597 (regOne!33867 (h!72654 (exprs!6561 lt!2456204))) (regOne!33866 (h!72654 (exprs!6561 lt!2456204))))))))

(declare-fun d!2153896 () Bool)

(declare-fun lt!2456390 () Int)

(assert (=> d!2153896 (> lt!2456390 0)))

(assert (=> d!2153896 (= lt!2456390 e!4132326)))

(declare-fun c!1275723 () Bool)

(assert (=> d!2153896 (= c!1275723 ((_ is ElementMatch!16677) (ite c!1275597 (regOne!33867 (h!72654 (exprs!6561 lt!2456204))) (regOne!33866 (h!72654 (exprs!6561 lt!2456204))))))))

(assert (=> d!2153896 (= (regexDepthTotal!251 (ite c!1275597 (regOne!33867 (h!72654 (exprs!6561 lt!2456204))) (regOne!33866 (h!72654 (exprs!6561 lt!2456204))))) lt!2456390)))

(declare-fun b!6853199 () Bool)

(assert (=> b!6853199 (= e!4132326 1)))

(declare-fun b!6853200 () Bool)

(declare-fun e!4132329 () Int)

(assert (=> b!6853200 (= e!4132329 1)))

(declare-fun bm!624209 () Bool)

(declare-fun call!624214 () Int)

(declare-fun call!624215 () Int)

(assert (=> bm!624209 (= call!624214 call!624215)))

(declare-fun b!6853201 () Bool)

(declare-fun c!1275724 () Bool)

(assert (=> b!6853201 (= c!1275724 ((_ is Union!16677) (ite c!1275597 (regOne!33867 (h!72654 (exprs!6561 lt!2456204))) (regOne!33866 (h!72654 (exprs!6561 lt!2456204))))))))

(declare-fun e!4132328 () Int)

(assert (=> b!6853201 (= e!4132327 e!4132328)))

(declare-fun b!6853202 () Bool)

(assert (=> b!6853202 (= e!4132328 e!4132329)))

(declare-fun c!1275722 () Bool)

(assert (=> b!6853202 (= c!1275722 ((_ is Concat!25522) (ite c!1275597 (regOne!33867 (h!72654 (exprs!6561 lt!2456204))) (regOne!33866 (h!72654 (exprs!6561 lt!2456204))))))))

(declare-fun b!6853203 () Bool)

(declare-fun call!624216 () Int)

(assert (=> b!6853203 (= e!4132328 (+ 1 call!624216 call!624214))))

(declare-fun b!6853204 () Bool)

(assert (=> b!6853204 (= e!4132329 (+ 1 call!624216 call!624214))))

(declare-fun bm!624210 () Bool)

(assert (=> bm!624210 (= call!624215 (regexDepthTotal!251 (ite c!1275721 (reg!17006 (ite c!1275597 (regOne!33867 (h!72654 (exprs!6561 lt!2456204))) (regOne!33866 (h!72654 (exprs!6561 lt!2456204))))) (ite c!1275724 (regTwo!33867 (ite c!1275597 (regOne!33867 (h!72654 (exprs!6561 lt!2456204))) (regOne!33866 (h!72654 (exprs!6561 lt!2456204))))) (regTwo!33866 (ite c!1275597 (regOne!33867 (h!72654 (exprs!6561 lt!2456204))) (regOne!33866 (h!72654 (exprs!6561 lt!2456204)))))))))))

(declare-fun bm!624211 () Bool)

(assert (=> bm!624211 (= call!624216 (regexDepthTotal!251 (ite c!1275724 (regOne!33867 (ite c!1275597 (regOne!33867 (h!72654 (exprs!6561 lt!2456204))) (regOne!33866 (h!72654 (exprs!6561 lt!2456204))))) (regOne!33866 (ite c!1275597 (regOne!33867 (h!72654 (exprs!6561 lt!2456204))) (regOne!33866 (h!72654 (exprs!6561 lt!2456204))))))))))

(declare-fun b!6853205 () Bool)

(assert (=> b!6853205 (= e!4132327 (+ 1 call!624215))))

(assert (= (and d!2153896 c!1275723) b!6853199))

(assert (= (and d!2153896 (not c!1275723)) b!6853198))

(assert (= (and b!6853198 c!1275721) b!6853205))

(assert (= (and b!6853198 (not c!1275721)) b!6853201))

(assert (= (and b!6853201 c!1275724) b!6853203))

(assert (= (and b!6853201 (not c!1275724)) b!6853202))

(assert (= (and b!6853202 c!1275722) b!6853204))

(assert (= (and b!6853202 (not c!1275722)) b!6853200))

(assert (= (or b!6853203 b!6853204) bm!624209))

(assert (= (or b!6853203 b!6853204) bm!624211))

(assert (= (or b!6853205 bm!624209) bm!624210))

(declare-fun m!7590884 () Bool)

(assert (=> bm!624210 m!7590884))

(declare-fun m!7590886 () Bool)

(assert (=> bm!624211 m!7590886))

(assert (=> bm!624154 d!2153896))

(declare-fun d!2153900 () Bool)

(declare-fun e!4132331 () Bool)

(assert (=> d!2153900 e!4132331))

(declare-fun c!1275728 () Bool)

(assert (=> d!2153900 (= c!1275728 ((_ is EmptyExpr!16677) lt!2456379))))

(declare-fun lt!2456392 () Bool)

(declare-fun e!4132334 () Bool)

(assert (=> d!2153900 (= lt!2456392 e!4132334)))

(declare-fun c!1275727 () Bool)

(assert (=> d!2153900 (= c!1275727 (isEmpty!38579 s!2326))))

(assert (=> d!2153900 (validRegex!8413 lt!2456379)))

(assert (=> d!2153900 (= (matchR!8860 lt!2456379 s!2326) lt!2456392)))

(declare-fun b!6853208 () Bool)

(declare-fun res!2796937 () Bool)

(declare-fun e!4132333 () Bool)

(assert (=> b!6853208 (=> res!2796937 e!4132333)))

(assert (=> b!6853208 (= res!2796937 (not (isEmpty!38579 (tail!12808 s!2326))))))

(declare-fun b!6853209 () Bool)

(assert (=> b!6853209 (= e!4132334 (matchR!8860 (derivativeStep!5323 lt!2456379 (head!13733 s!2326)) (tail!12808 s!2326)))))

(declare-fun b!6853210 () Bool)

(assert (=> b!6853210 (= e!4132333 (not (= (head!13733 s!2326) (c!1275345 lt!2456379))))))

(declare-fun b!6853211 () Bool)

(declare-fun res!2796936 () Bool)

(declare-fun e!4132336 () Bool)

(assert (=> b!6853211 (=> (not res!2796936) (not e!4132336))))

(assert (=> b!6853211 (= res!2796936 (isEmpty!38579 (tail!12808 s!2326)))))

(declare-fun b!6853212 () Bool)

(declare-fun e!4132335 () Bool)

(declare-fun e!4132337 () Bool)

(assert (=> b!6853212 (= e!4132335 e!4132337)))

(declare-fun res!2796938 () Bool)

(assert (=> b!6853212 (=> (not res!2796938) (not e!4132337))))

(assert (=> b!6853212 (= res!2796938 (not lt!2456392))))

(declare-fun b!6853213 () Bool)

(declare-fun res!2796939 () Bool)

(assert (=> b!6853213 (=> res!2796939 e!4132335)))

(assert (=> b!6853213 (= res!2796939 e!4132336)))

(declare-fun res!2796935 () Bool)

(assert (=> b!6853213 (=> (not res!2796935) (not e!4132336))))

(assert (=> b!6853213 (= res!2796935 lt!2456392)))

(declare-fun b!6853214 () Bool)

(assert (=> b!6853214 (= e!4132337 e!4132333)))

(declare-fun res!2796933 () Bool)

(assert (=> b!6853214 (=> res!2796933 e!4132333)))

(declare-fun call!624217 () Bool)

(assert (=> b!6853214 (= res!2796933 call!624217)))

(declare-fun b!6853215 () Bool)

(assert (=> b!6853215 (= e!4132334 (nullable!6640 lt!2456379))))

(declare-fun b!6853216 () Bool)

(declare-fun e!4132332 () Bool)

(assert (=> b!6853216 (= e!4132331 e!4132332)))

(declare-fun c!1275726 () Bool)

(assert (=> b!6853216 (= c!1275726 ((_ is EmptyLang!16677) lt!2456379))))

(declare-fun b!6853217 () Bool)

(declare-fun res!2796934 () Bool)

(assert (=> b!6853217 (=> (not res!2796934) (not e!4132336))))

(assert (=> b!6853217 (= res!2796934 (not call!624217))))

(declare-fun b!6853218 () Bool)

(assert (=> b!6853218 (= e!4132331 (= lt!2456392 call!624217))))

(declare-fun bm!624212 () Bool)

(assert (=> bm!624212 (= call!624217 (isEmpty!38579 s!2326))))

(declare-fun b!6853219 () Bool)

(assert (=> b!6853219 (= e!4132332 (not lt!2456392))))

(declare-fun b!6853220 () Bool)

(assert (=> b!6853220 (= e!4132336 (= (head!13733 s!2326) (c!1275345 lt!2456379)))))

(declare-fun b!6853221 () Bool)

(declare-fun res!2796932 () Bool)

(assert (=> b!6853221 (=> res!2796932 e!4132335)))

(assert (=> b!6853221 (= res!2796932 (not ((_ is ElementMatch!16677) lt!2456379)))))

(assert (=> b!6853221 (= e!4132332 e!4132335)))

(assert (= (and d!2153900 c!1275727) b!6853215))

(assert (= (and d!2153900 (not c!1275727)) b!6853209))

(assert (= (and d!2153900 c!1275728) b!6853218))

(assert (= (and d!2153900 (not c!1275728)) b!6853216))

(assert (= (and b!6853216 c!1275726) b!6853219))

(assert (= (and b!6853216 (not c!1275726)) b!6853221))

(assert (= (and b!6853221 (not res!2796932)) b!6853213))

(assert (= (and b!6853213 res!2796935) b!6853217))

(assert (= (and b!6853217 res!2796934) b!6853211))

(assert (= (and b!6853211 res!2796936) b!6853220))

(assert (= (and b!6853213 (not res!2796939)) b!6853212))

(assert (= (and b!6853212 res!2796938) b!6853214))

(assert (= (and b!6853214 (not res!2796933)) b!6853208))

(assert (= (and b!6853208 (not res!2796937)) b!6853210))

(assert (= (or b!6853218 b!6853217 b!6853214) bm!624212))

(assert (=> d!2153900 m!7589856))

(assert (=> d!2153900 m!7590760))

(assert (=> b!6853209 m!7589900))

(assert (=> b!6853209 m!7589900))

(declare-fun m!7590888 () Bool)

(assert (=> b!6853209 m!7590888))

(assert (=> b!6853209 m!7589908))

(assert (=> b!6853209 m!7590888))

(assert (=> b!6853209 m!7589908))

(declare-fun m!7590890 () Bool)

(assert (=> b!6853209 m!7590890))

(assert (=> bm!624212 m!7589856))

(assert (=> b!6853210 m!7589900))

(assert (=> b!6853211 m!7589908))

(assert (=> b!6853211 m!7589908))

(assert (=> b!6853211 m!7589912))

(assert (=> b!6853220 m!7589900))

(declare-fun m!7590892 () Bool)

(assert (=> b!6853215 m!7590892))

(assert (=> b!6853208 m!7589908))

(assert (=> b!6853208 m!7589908))

(assert (=> b!6853208 m!7589912))

(assert (=> b!6853133 d!2153900))

(declare-fun bs!1831791 () Bool)

(declare-fun d!2153902 () Bool)

(assert (= bs!1831791 (and d!2153902 d!2153732)))

(declare-fun lambda!387459 () Int)

(assert (=> bs!1831791 (not (= lambda!387459 lambda!387445))))

(declare-fun bs!1831793 () Bool)

(assert (= bs!1831793 (and d!2153902 d!2153730)))

(assert (=> bs!1831793 (not (= lambda!387459 lambda!387442))))

(declare-fun bs!1831794 () Bool)

(assert (= bs!1831794 (and d!2153902 d!2153496)))

(assert (=> bs!1831794 (not (= lambda!387459 lambda!387395))))

(declare-fun bs!1831796 () Bool)

(assert (= bs!1831796 (and d!2153902 d!2153794)))

(assert (=> bs!1831796 (= lambda!387459 lambda!387451)))

(declare-fun bs!1831797 () Bool)

(assert (= bs!1831797 (and d!2153902 d!2153882)))

(assert (=> bs!1831797 (not (= lambda!387459 lambda!387455))))

(declare-fun bs!1831798 () Bool)

(assert (= bs!1831798 (and d!2153902 d!2153498)))

(assert (=> bs!1831798 (not (= lambda!387459 lambda!387401))))

(declare-fun bs!1831799 () Bool)

(assert (= bs!1831799 (and d!2153902 d!2153748)))

(assert (=> bs!1831799 (= lambda!387459 lambda!387446)))

(declare-fun bs!1831800 () Bool)

(assert (= bs!1831800 (and d!2153902 d!2153500)))

(assert (=> bs!1831800 (= lambda!387459 lambda!387404)))

(declare-fun bs!1831801 () Bool)

(assert (= bs!1831801 (and d!2153902 d!2153764)))

(assert (=> bs!1831801 (= lambda!387459 lambda!387448)))

(declare-fun bs!1831802 () Bool)

(assert (= bs!1831802 (and d!2153902 d!2153770)))

(assert (=> bs!1831802 (= lambda!387459 lambda!387449)))

(declare-fun bs!1831803 () Bool)

(assert (= bs!1831803 (and d!2153902 d!2153758)))

(assert (=> bs!1831803 (= lambda!387459 lambda!387447)))

(declare-fun bs!1831804 () Bool)

(assert (= bs!1831804 (and d!2153902 d!2153502)))

(assert (=> bs!1831804 (= lambda!387459 lambda!387405)))

(declare-fun bs!1831805 () Bool)

(assert (= bs!1831805 (and d!2153902 d!2153480)))

(assert (=> bs!1831805 (= lambda!387459 lambda!387392)))

(declare-fun bs!1831806 () Bool)

(assert (= bs!1831806 (and d!2153902 d!2153712)))

(assert (=> bs!1831806 (= lambda!387459 lambda!387436)))

(declare-fun bs!1831807 () Bool)

(assert (= bs!1831807 (and d!2153902 d!2153840)))

(assert (=> bs!1831807 (= lambda!387459 lambda!387454)))

(declare-fun bs!1831808 () Bool)

(assert (= bs!1831808 (and d!2153902 d!2153894)))

(assert (=> bs!1831808 (= lambda!387459 lambda!387457)))

(declare-fun bs!1831809 () Bool)

(assert (= bs!1831809 (and d!2153902 d!2153724)))

(assert (=> bs!1831809 (= lambda!387459 lambda!387439)))

(declare-fun bs!1831810 () Bool)

(assert (= bs!1831810 (and d!2153902 b!6851566)))

(assert (=> bs!1831810 (not (= lambda!387459 lambda!387348))))

(assert (=> bs!1831798 (= lambda!387459 lambda!387400)))

(declare-fun bs!1831812 () Bool)

(assert (= bs!1831812 (and d!2153902 d!2153792)))

(assert (=> bs!1831812 (= lambda!387459 lambda!387450)))

(declare-fun b!6853222 () Bool)

(declare-fun e!4132343 () Regex!16677)

(assert (=> b!6853222 (= e!4132343 (h!72654 (t!380073 (exprs!6561 (h!72655 zl!343)))))))

(declare-fun b!6853223 () Bool)

(declare-fun e!4132342 () Bool)

(declare-fun lt!2456393 () Regex!16677)

(assert (=> b!6853223 (= e!4132342 (isConcat!1531 lt!2456393))))

(declare-fun b!6853224 () Bool)

(declare-fun e!4132341 () Regex!16677)

(assert (=> b!6853224 (= e!4132343 e!4132341)))

(declare-fun c!1275729 () Bool)

(assert (=> b!6853224 (= c!1275729 ((_ is Cons!66206) (t!380073 (exprs!6561 (h!72655 zl!343)))))))

(declare-fun b!6853225 () Bool)

(declare-fun e!4132338 () Bool)

(declare-fun e!4132339 () Bool)

(assert (=> b!6853225 (= e!4132338 e!4132339)))

(declare-fun c!1275731 () Bool)

(assert (=> b!6853225 (= c!1275731 (isEmpty!38581 (t!380073 (exprs!6561 (h!72655 zl!343)))))))

(declare-fun b!6853226 () Bool)

(assert (=> b!6853226 (= e!4132341 (Concat!25522 (h!72654 (t!380073 (exprs!6561 (h!72655 zl!343)))) (generalisedConcat!2268 (t!380073 (t!380073 (exprs!6561 (h!72655 zl!343)))))))))

(declare-fun b!6853227 () Bool)

(declare-fun e!4132340 () Bool)

(assert (=> b!6853227 (= e!4132340 (isEmpty!38581 (t!380073 (t!380073 (exprs!6561 (h!72655 zl!343))))))))

(declare-fun b!6853228 () Bool)

(assert (=> b!6853228 (= e!4132342 (= lt!2456393 (head!13734 (t!380073 (exprs!6561 (h!72655 zl!343))))))))

(declare-fun b!6853229 () Bool)

(assert (=> b!6853229 (= e!4132339 e!4132342)))

(declare-fun c!1275730 () Bool)

(assert (=> b!6853229 (= c!1275730 (isEmpty!38581 (tail!12810 (t!380073 (exprs!6561 (h!72655 zl!343))))))))

(assert (=> d!2153902 e!4132338))

(declare-fun res!2796940 () Bool)

(assert (=> d!2153902 (=> (not res!2796940) (not e!4132338))))

(assert (=> d!2153902 (= res!2796940 (validRegex!8413 lt!2456393))))

(assert (=> d!2153902 (= lt!2456393 e!4132343)))

(declare-fun c!1275732 () Bool)

(assert (=> d!2153902 (= c!1275732 e!4132340)))

(declare-fun res!2796941 () Bool)

(assert (=> d!2153902 (=> (not res!2796941) (not e!4132340))))

(assert (=> d!2153902 (= res!2796941 ((_ is Cons!66206) (t!380073 (exprs!6561 (h!72655 zl!343)))))))

(assert (=> d!2153902 (forall!15858 (t!380073 (exprs!6561 (h!72655 zl!343))) lambda!387459)))

(assert (=> d!2153902 (= (generalisedConcat!2268 (t!380073 (exprs!6561 (h!72655 zl!343)))) lt!2456393)))

(declare-fun b!6853230 () Bool)

(assert (=> b!6853230 (= e!4132339 (isEmptyExpr!2008 lt!2456393))))

(declare-fun b!6853231 () Bool)

(assert (=> b!6853231 (= e!4132341 EmptyExpr!16677)))

(assert (= (and d!2153902 res!2796941) b!6853227))

(assert (= (and d!2153902 c!1275732) b!6853222))

(assert (= (and d!2153902 (not c!1275732)) b!6853224))

(assert (= (and b!6853224 c!1275729) b!6853226))

(assert (= (and b!6853224 (not c!1275729)) b!6853231))

(assert (= (and d!2153902 res!2796940) b!6853225))

(assert (= (and b!6853225 c!1275731) b!6853230))

(assert (= (and b!6853225 (not c!1275731)) b!6853229))

(assert (= (and b!6853229 c!1275730) b!6853228))

(assert (= (and b!6853229 (not c!1275730)) b!6853223))

(declare-fun m!7590900 () Bool)

(assert (=> b!6853229 m!7590900))

(assert (=> b!6853229 m!7590900))

(declare-fun m!7590902 () Bool)

(assert (=> b!6853229 m!7590902))

(assert (=> b!6853225 m!7590504))

(declare-fun m!7590904 () Bool)

(assert (=> b!6853230 m!7590904))

(declare-fun m!7590906 () Bool)

(assert (=> b!6853223 m!7590906))

(declare-fun m!7590908 () Bool)

(assert (=> d!2153902 m!7590908))

(declare-fun m!7590910 () Bool)

(assert (=> d!2153902 m!7590910))

(declare-fun m!7590912 () Bool)

(assert (=> b!6853227 m!7590912))

(declare-fun m!7590914 () Bool)

(assert (=> b!6853226 m!7590914))

(declare-fun m!7590916 () Bool)

(assert (=> b!6853228 m!7590916))

(assert (=> b!6852770 d!2153902))

(assert (=> bm!624180 d!2153672))

(declare-fun b!6853261 () Bool)

(declare-fun e!4132372 () Bool)

(declare-fun e!4132370 () Bool)

(assert (=> b!6853261 (= e!4132372 e!4132370)))

(declare-fun c!1275739 () Bool)

(assert (=> b!6853261 (= c!1275739 ((_ is Union!16677) r!7292))))

(declare-fun b!6853262 () Bool)

(declare-fun e!4132369 () Bool)

(assert (=> b!6853262 (= e!4132370 e!4132369)))

(declare-fun res!2796962 () Bool)

(declare-fun call!624226 () Bool)

(assert (=> b!6853262 (= res!2796962 call!624226)))

(assert (=> b!6853262 (=> (not res!2796962) (not e!4132369))))

(declare-fun d!2153906 () Bool)

(declare-fun res!2796960 () Bool)

(declare-fun e!4132367 () Bool)

(assert (=> d!2153906 (=> res!2796960 e!4132367)))

(assert (=> d!2153906 (= res!2796960 ((_ is EmptyExpr!16677) r!7292))))

(assert (=> d!2153906 (= (nullableFct!2524 r!7292) e!4132367)))

(declare-fun b!6853263 () Bool)

(declare-fun e!4132368 () Bool)

(declare-fun call!624225 () Bool)

(assert (=> b!6853263 (= e!4132368 call!624225)))

(declare-fun b!6853264 () Bool)

(declare-fun e!4132371 () Bool)

(assert (=> b!6853264 (= e!4132371 e!4132372)))

(declare-fun res!2796959 () Bool)

(assert (=> b!6853264 (=> res!2796959 e!4132372)))

(assert (=> b!6853264 (= res!2796959 ((_ is Star!16677) r!7292))))

(declare-fun b!6853265 () Bool)

(assert (=> b!6853265 (= e!4132367 e!4132371)))

(declare-fun res!2796963 () Bool)

(assert (=> b!6853265 (=> (not res!2796963) (not e!4132371))))

(assert (=> b!6853265 (= res!2796963 (and (not ((_ is EmptyLang!16677) r!7292)) (not ((_ is ElementMatch!16677) r!7292))))))

(declare-fun b!6853266 () Bool)

(assert (=> b!6853266 (= e!4132369 call!624225)))

(declare-fun b!6853267 () Bool)

(assert (=> b!6853267 (= e!4132370 e!4132368)))

(declare-fun res!2796961 () Bool)

(assert (=> b!6853267 (= res!2796961 call!624226)))

(assert (=> b!6853267 (=> res!2796961 e!4132368)))

(declare-fun bm!624220 () Bool)

(assert (=> bm!624220 (= call!624226 (nullable!6640 (ite c!1275739 (regOne!33867 r!7292) (regOne!33866 r!7292))))))

(declare-fun bm!624221 () Bool)

(assert (=> bm!624221 (= call!624225 (nullable!6640 (ite c!1275739 (regTwo!33867 r!7292) (regTwo!33866 r!7292))))))

(assert (= (and d!2153906 (not res!2796960)) b!6853265))

(assert (= (and b!6853265 res!2796963) b!6853264))

(assert (= (and b!6853264 (not res!2796959)) b!6853261))

(assert (= (and b!6853261 c!1275739) b!6853267))

(assert (= (and b!6853261 (not c!1275739)) b!6853262))

(assert (= (and b!6853267 (not res!2796961)) b!6853263))

(assert (= (and b!6853262 res!2796962) b!6853266))

(assert (= (or b!6853263 b!6853266) bm!624221))

(assert (= (or b!6853267 b!6853262) bm!624220))

(declare-fun m!7590938 () Bool)

(assert (=> bm!624220 m!7590938))

(declare-fun m!7590940 () Bool)

(assert (=> bm!624221 m!7590940))

(assert (=> d!2153750 d!2153906))

(declare-fun bs!1831831 () Bool)

(declare-fun d!2153918 () Bool)

(assert (= bs!1831831 (and d!2153918 d!2153732)))

(declare-fun lambda!387461 () Int)

(assert (=> bs!1831831 (not (= lambda!387461 lambda!387445))))

(declare-fun bs!1831832 () Bool)

(assert (= bs!1831832 (and d!2153918 d!2153730)))

(assert (=> bs!1831832 (= (= lambda!387348 lambda!387401) (= lambda!387461 lambda!387442))))

(declare-fun bs!1831833 () Bool)

(assert (= bs!1831833 (and d!2153918 d!2153496)))

(assert (=> bs!1831833 (= lambda!387461 lambda!387395)))

(declare-fun bs!1831834 () Bool)

(assert (= bs!1831834 (and d!2153918 d!2153794)))

(assert (=> bs!1831834 (not (= lambda!387461 lambda!387451))))

(declare-fun bs!1831835 () Bool)

(assert (= bs!1831835 (and d!2153918 d!2153882)))

(assert (=> bs!1831835 (= (= lambda!387348 lambda!387445) (= lambda!387461 lambda!387455))))

(declare-fun bs!1831836 () Bool)

(assert (= bs!1831836 (and d!2153918 d!2153498)))

(assert (=> bs!1831836 (not (= lambda!387461 lambda!387401))))

(declare-fun bs!1831837 () Bool)

(assert (= bs!1831837 (and d!2153918 d!2153748)))

(assert (=> bs!1831837 (not (= lambda!387461 lambda!387446))))

(declare-fun bs!1831838 () Bool)

(assert (= bs!1831838 (and d!2153918 d!2153500)))

(assert (=> bs!1831838 (not (= lambda!387461 lambda!387404))))

(declare-fun bs!1831839 () Bool)

(assert (= bs!1831839 (and d!2153918 d!2153764)))

(assert (=> bs!1831839 (not (= lambda!387461 lambda!387448))))

(declare-fun bs!1831840 () Bool)

(assert (= bs!1831840 (and d!2153918 d!2153770)))

(assert (=> bs!1831840 (not (= lambda!387461 lambda!387449))))

(declare-fun bs!1831841 () Bool)

(assert (= bs!1831841 (and d!2153918 d!2153758)))

(assert (=> bs!1831841 (not (= lambda!387461 lambda!387447))))

(declare-fun bs!1831842 () Bool)

(assert (= bs!1831842 (and d!2153918 d!2153502)))

(assert (=> bs!1831842 (not (= lambda!387461 lambda!387405))))

(declare-fun bs!1831843 () Bool)

(assert (= bs!1831843 (and d!2153918 d!2153902)))

(assert (=> bs!1831843 (not (= lambda!387461 lambda!387459))))

(declare-fun bs!1831844 () Bool)

(assert (= bs!1831844 (and d!2153918 d!2153480)))

(assert (=> bs!1831844 (not (= lambda!387461 lambda!387392))))

(declare-fun bs!1831845 () Bool)

(assert (= bs!1831845 (and d!2153918 d!2153712)))

(assert (=> bs!1831845 (not (= lambda!387461 lambda!387436))))

(declare-fun bs!1831846 () Bool)

(assert (= bs!1831846 (and d!2153918 d!2153840)))

(assert (=> bs!1831846 (not (= lambda!387461 lambda!387454))))

(declare-fun bs!1831847 () Bool)

(assert (= bs!1831847 (and d!2153918 d!2153894)))

(assert (=> bs!1831847 (not (= lambda!387461 lambda!387457))))

(declare-fun bs!1831848 () Bool)

(assert (= bs!1831848 (and d!2153918 d!2153724)))

(assert (=> bs!1831848 (not (= lambda!387461 lambda!387439))))

(declare-fun bs!1831849 () Bool)

(assert (= bs!1831849 (and d!2153918 b!6851566)))

(assert (=> bs!1831849 (not (= lambda!387461 lambda!387348))))

(assert (=> bs!1831836 (not (= lambda!387461 lambda!387400))))

(declare-fun bs!1831850 () Bool)

(assert (= bs!1831850 (and d!2153918 d!2153792)))

(assert (=> bs!1831850 (not (= lambda!387461 lambda!387450))))

(assert (=> d!2153918 true))

(assert (=> d!2153918 (< (dynLambda!26465 order!27663 lambda!387348) (dynLambda!26465 order!27663 lambda!387461))))

(assert (=> d!2153918 (= (exists!2781 (t!380073 lt!2456210) lambda!387348) (not (forall!15858 (t!380073 lt!2456210) lambda!387461)))))

(declare-fun bs!1831851 () Bool)

(assert (= bs!1831851 d!2153918))

(declare-fun m!7590956 () Bool)

(assert (=> bs!1831851 m!7590956))

(assert (=> d!2153802 d!2153918))

(declare-fun bm!624225 () Bool)

(declare-fun call!624232 () Regex!16677)

(declare-fun c!1275746 () Bool)

(declare-fun c!1275745 () Bool)

(assert (=> bm!624225 (= call!624232 (derivativeStep!5323 (ite c!1275746 (regTwo!33867 (ite c!1275656 (regTwo!33867 r!7292) (ite c!1275655 (reg!17006 r!7292) (regOne!33866 r!7292)))) (ite c!1275745 (reg!17006 (ite c!1275656 (regTwo!33867 r!7292) (ite c!1275655 (reg!17006 r!7292) (regOne!33866 r!7292)))) (regOne!33866 (ite c!1275656 (regTwo!33867 r!7292) (ite c!1275655 (reg!17006 r!7292) (regOne!33866 r!7292)))))) (head!13733 s!2326)))))

(declare-fun b!6853282 () Bool)

(declare-fun e!4132393 () Regex!16677)

(declare-fun e!4132388 () Regex!16677)

(assert (=> b!6853282 (= e!4132393 e!4132388)))

(assert (=> b!6853282 (= c!1275745 ((_ is Star!16677) (ite c!1275656 (regTwo!33867 r!7292) (ite c!1275655 (reg!17006 r!7292) (regOne!33866 r!7292)))))))

(declare-fun bm!624226 () Bool)

(declare-fun call!624235 () Regex!16677)

(declare-fun c!1275748 () Bool)

(assert (=> bm!624226 (= call!624235 (derivativeStep!5323 (ite c!1275746 (regOne!33867 (ite c!1275656 (regTwo!33867 r!7292) (ite c!1275655 (reg!17006 r!7292) (regOne!33866 r!7292)))) (ite c!1275748 (regTwo!33866 (ite c!1275656 (regTwo!33867 r!7292) (ite c!1275655 (reg!17006 r!7292) (regOne!33866 r!7292)))) (regOne!33866 (ite c!1275656 (regTwo!33867 r!7292) (ite c!1275655 (reg!17006 r!7292) (regOne!33866 r!7292)))))) (head!13733 s!2326)))))

(declare-fun call!624234 () Regex!16677)

(declare-fun b!6853284 () Bool)

(declare-fun e!4132386 () Regex!16677)

(declare-fun call!624231 () Regex!16677)

(assert (=> b!6853284 (= e!4132386 (Union!16677 (Concat!25522 call!624231 (regTwo!33866 (ite c!1275656 (regTwo!33867 r!7292) (ite c!1275655 (reg!17006 r!7292) (regOne!33866 r!7292))))) call!624234))))

(declare-fun bm!624228 () Bool)

(assert (=> bm!624228 (= call!624231 call!624232)))

(declare-fun d!2153926 () Bool)

(declare-fun lt!2456396 () Regex!16677)

(assert (=> d!2153926 (validRegex!8413 lt!2456396)))

(declare-fun e!4132395 () Regex!16677)

(assert (=> d!2153926 (= lt!2456396 e!4132395)))

(declare-fun c!1275744 () Bool)

(assert (=> d!2153926 (= c!1275744 (or ((_ is EmptyExpr!16677) (ite c!1275656 (regTwo!33867 r!7292) (ite c!1275655 (reg!17006 r!7292) (regOne!33866 r!7292)))) ((_ is EmptyLang!16677) (ite c!1275656 (regTwo!33867 r!7292) (ite c!1275655 (reg!17006 r!7292) (regOne!33866 r!7292))))))))

(assert (=> d!2153926 (validRegex!8413 (ite c!1275656 (regTwo!33867 r!7292) (ite c!1275655 (reg!17006 r!7292) (regOne!33866 r!7292))))))

(assert (=> d!2153926 (= (derivativeStep!5323 (ite c!1275656 (regTwo!33867 r!7292) (ite c!1275655 (reg!17006 r!7292) (regOne!33866 r!7292))) (head!13733 s!2326)) lt!2456396)))

(declare-fun b!6853287 () Bool)

(declare-fun e!4132390 () Regex!16677)

(assert (=> b!6853287 (= e!4132395 e!4132390)))

(declare-fun c!1275742 () Bool)

(assert (=> b!6853287 (= c!1275742 ((_ is ElementMatch!16677) (ite c!1275656 (regTwo!33867 r!7292) (ite c!1275655 (reg!17006 r!7292) (regOne!33866 r!7292)))))))

(declare-fun bm!624230 () Bool)

(assert (=> bm!624230 (= call!624234 call!624235)))

(declare-fun b!6853288 () Bool)

(assert (=> b!6853288 (= e!4132386 (Union!16677 (Concat!25522 call!624234 (regTwo!33866 (ite c!1275656 (regTwo!33867 r!7292) (ite c!1275655 (reg!17006 r!7292) (regOne!33866 r!7292))))) EmptyLang!16677))))

(declare-fun b!6853290 () Bool)

(assert (=> b!6853290 (= e!4132393 (Union!16677 call!624235 call!624232))))

(declare-fun b!6853292 () Bool)

(assert (=> b!6853292 (= c!1275748 (nullable!6640 (regOne!33866 (ite c!1275656 (regTwo!33867 r!7292) (ite c!1275655 (reg!17006 r!7292) (regOne!33866 r!7292))))))))

(assert (=> b!6853292 (= e!4132388 e!4132386)))

(declare-fun b!6853294 () Bool)

(assert (=> b!6853294 (= c!1275746 ((_ is Union!16677) (ite c!1275656 (regTwo!33867 r!7292) (ite c!1275655 (reg!17006 r!7292) (regOne!33866 r!7292)))))))

(assert (=> b!6853294 (= e!4132390 e!4132393)))

(declare-fun b!6853296 () Bool)

(assert (=> b!6853296 (= e!4132390 (ite (= (head!13733 s!2326) (c!1275345 (ite c!1275656 (regTwo!33867 r!7292) (ite c!1275655 (reg!17006 r!7292) (regOne!33866 r!7292))))) EmptyExpr!16677 EmptyLang!16677))))

(declare-fun b!6853298 () Bool)

(assert (=> b!6853298 (= e!4132388 (Concat!25522 call!624231 (ite c!1275656 (regTwo!33867 r!7292) (ite c!1275655 (reg!17006 r!7292) (regOne!33866 r!7292)))))))

(declare-fun b!6853299 () Bool)

(assert (=> b!6853299 (= e!4132395 EmptyLang!16677)))

(assert (= (and d!2153926 c!1275744) b!6853299))

(assert (= (and d!2153926 (not c!1275744)) b!6853287))

(assert (= (and b!6853287 c!1275742) b!6853296))

(assert (= (and b!6853287 (not c!1275742)) b!6853294))

(assert (= (and b!6853294 c!1275746) b!6853290))

(assert (= (and b!6853294 (not c!1275746)) b!6853282))

(assert (= (and b!6853282 c!1275745) b!6853298))

(assert (= (and b!6853282 (not c!1275745)) b!6853292))

(assert (= (and b!6853292 c!1275748) b!6853284))

(assert (= (and b!6853292 (not c!1275748)) b!6853288))

(assert (= (or b!6853284 b!6853288) bm!624230))

(assert (= (or b!6853298 b!6853284) bm!624228))

(assert (= (or b!6853290 bm!624228) bm!624225))

(assert (= (or b!6853290 bm!624230) bm!624226))

(assert (=> bm!624225 m!7589900))

(declare-fun m!7590958 () Bool)

(assert (=> bm!624225 m!7590958))

(assert (=> bm!624226 m!7589900))

(declare-fun m!7590960 () Bool)

(assert (=> bm!624226 m!7590960))

(declare-fun m!7590962 () Bool)

(assert (=> d!2153926 m!7590962))

(declare-fun m!7590964 () Bool)

(assert (=> d!2153926 m!7590964))

(declare-fun m!7590966 () Bool)

(assert (=> b!6853292 m!7590966))

(assert (=> bm!624176 d!2153926))

(declare-fun call!624238 () Regex!16677)

(declare-fun c!1275752 () Bool)

(declare-fun c!1275751 () Bool)

(declare-fun bm!624232 () Bool)

(assert (=> bm!624232 (= call!624238 (derivativeStep!5323 (ite c!1275752 (regTwo!33867 (ite c!1275695 (regOne!33867 lt!2456209) (ite c!1275696 (regTwo!33866 lt!2456209) (regOne!33866 lt!2456209)))) (ite c!1275751 (reg!17006 (ite c!1275695 (regOne!33867 lt!2456209) (ite c!1275696 (regTwo!33866 lt!2456209) (regOne!33866 lt!2456209)))) (regOne!33866 (ite c!1275695 (regOne!33867 lt!2456209) (ite c!1275696 (regTwo!33866 lt!2456209) (regOne!33866 lt!2456209)))))) (head!13733 s!2326)))))

(declare-fun b!6853300 () Bool)

(declare-fun e!4132399 () Regex!16677)

(declare-fun e!4132397 () Regex!16677)

(assert (=> b!6853300 (= e!4132399 e!4132397)))

(assert (=> b!6853300 (= c!1275751 ((_ is Star!16677) (ite c!1275695 (regOne!33867 lt!2456209) (ite c!1275696 (regTwo!33866 lt!2456209) (regOne!33866 lt!2456209)))))))

(declare-fun c!1275753 () Bool)

(declare-fun call!624240 () Regex!16677)

(declare-fun bm!624233 () Bool)

(assert (=> bm!624233 (= call!624240 (derivativeStep!5323 (ite c!1275752 (regOne!33867 (ite c!1275695 (regOne!33867 lt!2456209) (ite c!1275696 (regTwo!33866 lt!2456209) (regOne!33866 lt!2456209)))) (ite c!1275753 (regTwo!33866 (ite c!1275695 (regOne!33867 lt!2456209) (ite c!1275696 (regTwo!33866 lt!2456209) (regOne!33866 lt!2456209)))) (regOne!33866 (ite c!1275695 (regOne!33867 lt!2456209) (ite c!1275696 (regTwo!33866 lt!2456209) (regOne!33866 lt!2456209)))))) (head!13733 s!2326)))))

(declare-fun call!624239 () Regex!16677)

(declare-fun e!4132396 () Regex!16677)

(declare-fun call!624237 () Regex!16677)

(declare-fun b!6853301 () Bool)

(assert (=> b!6853301 (= e!4132396 (Union!16677 (Concat!25522 call!624237 (regTwo!33866 (ite c!1275695 (regOne!33867 lt!2456209) (ite c!1275696 (regTwo!33866 lt!2456209) (regOne!33866 lt!2456209))))) call!624239))))

(declare-fun bm!624234 () Bool)

(assert (=> bm!624234 (= call!624237 call!624238)))

(declare-fun d!2153928 () Bool)

(declare-fun lt!2456397 () Regex!16677)

(assert (=> d!2153928 (validRegex!8413 lt!2456397)))

(declare-fun e!4132400 () Regex!16677)

(assert (=> d!2153928 (= lt!2456397 e!4132400)))

(declare-fun c!1275750 () Bool)

(assert (=> d!2153928 (= c!1275750 (or ((_ is EmptyExpr!16677) (ite c!1275695 (regOne!33867 lt!2456209) (ite c!1275696 (regTwo!33866 lt!2456209) (regOne!33866 lt!2456209)))) ((_ is EmptyLang!16677) (ite c!1275695 (regOne!33867 lt!2456209) (ite c!1275696 (regTwo!33866 lt!2456209) (regOne!33866 lt!2456209))))))))

(assert (=> d!2153928 (validRegex!8413 (ite c!1275695 (regOne!33867 lt!2456209) (ite c!1275696 (regTwo!33866 lt!2456209) (regOne!33866 lt!2456209))))))

(assert (=> d!2153928 (= (derivativeStep!5323 (ite c!1275695 (regOne!33867 lt!2456209) (ite c!1275696 (regTwo!33866 lt!2456209) (regOne!33866 lt!2456209))) (head!13733 s!2326)) lt!2456397)))

(declare-fun b!6853302 () Bool)

(declare-fun e!4132398 () Regex!16677)

(assert (=> b!6853302 (= e!4132400 e!4132398)))

(declare-fun c!1275749 () Bool)

(assert (=> b!6853302 (= c!1275749 ((_ is ElementMatch!16677) (ite c!1275695 (regOne!33867 lt!2456209) (ite c!1275696 (regTwo!33866 lt!2456209) (regOne!33866 lt!2456209)))))))

(declare-fun bm!624235 () Bool)

(assert (=> bm!624235 (= call!624239 call!624240)))

(declare-fun b!6853303 () Bool)

(assert (=> b!6853303 (= e!4132396 (Union!16677 (Concat!25522 call!624239 (regTwo!33866 (ite c!1275695 (regOne!33867 lt!2456209) (ite c!1275696 (regTwo!33866 lt!2456209) (regOne!33866 lt!2456209))))) EmptyLang!16677))))

(declare-fun b!6853304 () Bool)

(assert (=> b!6853304 (= e!4132399 (Union!16677 call!624240 call!624238))))

(declare-fun b!6853305 () Bool)

(assert (=> b!6853305 (= c!1275753 (nullable!6640 (regOne!33866 (ite c!1275695 (regOne!33867 lt!2456209) (ite c!1275696 (regTwo!33866 lt!2456209) (regOne!33866 lt!2456209))))))))

(assert (=> b!6853305 (= e!4132397 e!4132396)))

(declare-fun b!6853306 () Bool)

(assert (=> b!6853306 (= c!1275752 ((_ is Union!16677) (ite c!1275695 (regOne!33867 lt!2456209) (ite c!1275696 (regTwo!33866 lt!2456209) (regOne!33866 lt!2456209)))))))

(assert (=> b!6853306 (= e!4132398 e!4132399)))

(declare-fun b!6853307 () Bool)

(assert (=> b!6853307 (= e!4132398 (ite (= (head!13733 s!2326) (c!1275345 (ite c!1275695 (regOne!33867 lt!2456209) (ite c!1275696 (regTwo!33866 lt!2456209) (regOne!33866 lt!2456209))))) EmptyExpr!16677 EmptyLang!16677))))

(declare-fun b!6853308 () Bool)

(assert (=> b!6853308 (= e!4132397 (Concat!25522 call!624237 (ite c!1275695 (regOne!33867 lt!2456209) (ite c!1275696 (regTwo!33866 lt!2456209) (regOne!33866 lt!2456209)))))))

(declare-fun b!6853309 () Bool)

(assert (=> b!6853309 (= e!4132400 EmptyLang!16677)))

(assert (= (and d!2153928 c!1275750) b!6853309))

(assert (= (and d!2153928 (not c!1275750)) b!6853302))

(assert (= (and b!6853302 c!1275749) b!6853307))

(assert (= (and b!6853302 (not c!1275749)) b!6853306))

(assert (= (and b!6853306 c!1275752) b!6853304))

(assert (= (and b!6853306 (not c!1275752)) b!6853300))

(assert (= (and b!6853300 c!1275751) b!6853308))

(assert (= (and b!6853300 (not c!1275751)) b!6853305))

(assert (= (and b!6853305 c!1275753) b!6853301))

(assert (= (and b!6853305 (not c!1275753)) b!6853303))

(assert (= (or b!6853301 b!6853303) bm!624235))

(assert (= (or b!6853308 b!6853301) bm!624234))

(assert (= (or b!6853304 bm!624234) bm!624232))

(assert (= (or b!6853304 bm!624235) bm!624233))

(assert (=> bm!624232 m!7589900))

(declare-fun m!7590974 () Bool)

(assert (=> bm!624232 m!7590974))

(assert (=> bm!624233 m!7589900))

(declare-fun m!7590976 () Bool)

(assert (=> bm!624233 m!7590976))

(declare-fun m!7590978 () Bool)

(assert (=> d!2153928 m!7590978))

(declare-fun m!7590980 () Bool)

(assert (=> d!2153928 m!7590980))

(declare-fun m!7590982 () Bool)

(assert (=> b!6853305 m!7590982))

(assert (=> bm!624197 d!2153928))

(declare-fun bs!1831852 () Bool)

(declare-fun d!2153932 () Bool)

(assert (= bs!1831852 (and d!2153932 d!2153732)))

(declare-fun lambda!387462 () Int)

(assert (=> bs!1831852 (not (= lambda!387462 lambda!387445))))

(declare-fun bs!1831853 () Bool)

(assert (= bs!1831853 (and d!2153932 d!2153730)))

(assert (=> bs!1831853 (not (= lambda!387462 lambda!387442))))

(declare-fun bs!1831854 () Bool)

(assert (= bs!1831854 (and d!2153932 d!2153496)))

(assert (=> bs!1831854 (not (= lambda!387462 lambda!387395))))

(declare-fun bs!1831855 () Bool)

(assert (= bs!1831855 (and d!2153932 d!2153794)))

(assert (=> bs!1831855 (= lambda!387462 lambda!387451)))

(declare-fun bs!1831856 () Bool)

(assert (= bs!1831856 (and d!2153932 d!2153882)))

(assert (=> bs!1831856 (not (= lambda!387462 lambda!387455))))

(declare-fun bs!1831857 () Bool)

(assert (= bs!1831857 (and d!2153932 d!2153498)))

(assert (=> bs!1831857 (not (= lambda!387462 lambda!387401))))

(declare-fun bs!1831858 () Bool)

(assert (= bs!1831858 (and d!2153932 d!2153918)))

(assert (=> bs!1831858 (not (= lambda!387462 lambda!387461))))

(declare-fun bs!1831859 () Bool)

(assert (= bs!1831859 (and d!2153932 d!2153748)))

(assert (=> bs!1831859 (= lambda!387462 lambda!387446)))

(declare-fun bs!1831860 () Bool)

(assert (= bs!1831860 (and d!2153932 d!2153500)))

(assert (=> bs!1831860 (= lambda!387462 lambda!387404)))

(declare-fun bs!1831861 () Bool)

(assert (= bs!1831861 (and d!2153932 d!2153764)))

(assert (=> bs!1831861 (= lambda!387462 lambda!387448)))

(declare-fun bs!1831862 () Bool)

(assert (= bs!1831862 (and d!2153932 d!2153770)))

(assert (=> bs!1831862 (= lambda!387462 lambda!387449)))

(declare-fun bs!1831863 () Bool)

(assert (= bs!1831863 (and d!2153932 d!2153758)))

(assert (=> bs!1831863 (= lambda!387462 lambda!387447)))

(declare-fun bs!1831864 () Bool)

(assert (= bs!1831864 (and d!2153932 d!2153502)))

(assert (=> bs!1831864 (= lambda!387462 lambda!387405)))

(declare-fun bs!1831865 () Bool)

(assert (= bs!1831865 (and d!2153932 d!2153902)))

(assert (=> bs!1831865 (= lambda!387462 lambda!387459)))

(declare-fun bs!1831866 () Bool)

(assert (= bs!1831866 (and d!2153932 d!2153480)))

(assert (=> bs!1831866 (= lambda!387462 lambda!387392)))

(declare-fun bs!1831867 () Bool)

(assert (= bs!1831867 (and d!2153932 d!2153712)))

(assert (=> bs!1831867 (= lambda!387462 lambda!387436)))

(declare-fun bs!1831868 () Bool)

(assert (= bs!1831868 (and d!2153932 d!2153840)))

(assert (=> bs!1831868 (= lambda!387462 lambda!387454)))

(declare-fun bs!1831869 () Bool)

(assert (= bs!1831869 (and d!2153932 d!2153894)))

(assert (=> bs!1831869 (= lambda!387462 lambda!387457)))

(declare-fun bs!1831870 () Bool)

(assert (= bs!1831870 (and d!2153932 d!2153724)))

(assert (=> bs!1831870 (= lambda!387462 lambda!387439)))

(declare-fun bs!1831871 () Bool)

(assert (= bs!1831871 (and d!2153932 b!6851566)))

(assert (=> bs!1831871 (not (= lambda!387462 lambda!387348))))

(assert (=> bs!1831857 (= lambda!387462 lambda!387400)))

(declare-fun bs!1831872 () Bool)

(assert (= bs!1831872 (and d!2153932 d!2153792)))

(assert (=> bs!1831872 (= lambda!387462 lambda!387450)))

(declare-fun b!6853310 () Bool)

(declare-fun e!4132406 () Regex!16677)

(assert (=> b!6853310 (= e!4132406 (h!72654 (t!380073 (exprs!6561 lt!2456307))))))

(declare-fun b!6853311 () Bool)

(declare-fun e!4132405 () Bool)

(declare-fun lt!2456398 () Regex!16677)

(assert (=> b!6853311 (= e!4132405 (isConcat!1531 lt!2456398))))

(declare-fun b!6853312 () Bool)

(declare-fun e!4132404 () Regex!16677)

(assert (=> b!6853312 (= e!4132406 e!4132404)))

(declare-fun c!1275754 () Bool)

(assert (=> b!6853312 (= c!1275754 ((_ is Cons!66206) (t!380073 (exprs!6561 lt!2456307))))))

(declare-fun b!6853313 () Bool)

(declare-fun e!4132401 () Bool)

(declare-fun e!4132402 () Bool)

(assert (=> b!6853313 (= e!4132401 e!4132402)))

(declare-fun c!1275756 () Bool)

(assert (=> b!6853313 (= c!1275756 (isEmpty!38581 (t!380073 (exprs!6561 lt!2456307))))))

(declare-fun b!6853314 () Bool)

(assert (=> b!6853314 (= e!4132404 (Concat!25522 (h!72654 (t!380073 (exprs!6561 lt!2456307))) (generalisedConcat!2268 (t!380073 (t!380073 (exprs!6561 lt!2456307))))))))

(declare-fun b!6853315 () Bool)

(declare-fun e!4132403 () Bool)

(assert (=> b!6853315 (= e!4132403 (isEmpty!38581 (t!380073 (t!380073 (exprs!6561 lt!2456307)))))))

(declare-fun b!6853316 () Bool)

(assert (=> b!6853316 (= e!4132405 (= lt!2456398 (head!13734 (t!380073 (exprs!6561 lt!2456307)))))))

(declare-fun b!6853317 () Bool)

(assert (=> b!6853317 (= e!4132402 e!4132405)))

(declare-fun c!1275755 () Bool)

(assert (=> b!6853317 (= c!1275755 (isEmpty!38581 (tail!12810 (t!380073 (exprs!6561 lt!2456307)))))))

(assert (=> d!2153932 e!4132401))

(declare-fun res!2796978 () Bool)

(assert (=> d!2153932 (=> (not res!2796978) (not e!4132401))))

(assert (=> d!2153932 (= res!2796978 (validRegex!8413 lt!2456398))))

(assert (=> d!2153932 (= lt!2456398 e!4132406)))

(declare-fun c!1275757 () Bool)

(assert (=> d!2153932 (= c!1275757 e!4132403)))

(declare-fun res!2796979 () Bool)

(assert (=> d!2153932 (=> (not res!2796979) (not e!4132403))))

(assert (=> d!2153932 (= res!2796979 ((_ is Cons!66206) (t!380073 (exprs!6561 lt!2456307))))))

(assert (=> d!2153932 (forall!15858 (t!380073 (exprs!6561 lt!2456307)) lambda!387462)))

(assert (=> d!2153932 (= (generalisedConcat!2268 (t!380073 (exprs!6561 lt!2456307))) lt!2456398)))

(declare-fun b!6853318 () Bool)

(assert (=> b!6853318 (= e!4132402 (isEmptyExpr!2008 lt!2456398))))

(declare-fun b!6853319 () Bool)

(assert (=> b!6853319 (= e!4132404 EmptyExpr!16677)))

(assert (= (and d!2153932 res!2796979) b!6853315))

(assert (= (and d!2153932 c!1275757) b!6853310))

(assert (= (and d!2153932 (not c!1275757)) b!6853312))

(assert (= (and b!6853312 c!1275754) b!6853314))

(assert (= (and b!6853312 (not c!1275754)) b!6853319))

(assert (= (and d!2153932 res!2796978) b!6853313))

(assert (= (and b!6853313 c!1275756) b!6853318))

(assert (= (and b!6853313 (not c!1275756)) b!6853317))

(assert (= (and b!6853317 c!1275755) b!6853316))

(assert (= (and b!6853317 (not c!1275755)) b!6853311))

(declare-fun m!7590986 () Bool)

(assert (=> b!6853317 m!7590986))

(assert (=> b!6853317 m!7590986))

(declare-fun m!7590988 () Bool)

(assert (=> b!6853317 m!7590988))

(assert (=> b!6853313 m!7590602))

(declare-fun m!7590992 () Bool)

(assert (=> b!6853318 m!7590992))

(declare-fun m!7590994 () Bool)

(assert (=> b!6853311 m!7590994))

(declare-fun m!7590996 () Bool)

(assert (=> d!2153932 m!7590996))

(declare-fun m!7590998 () Bool)

(assert (=> d!2153932 m!7590998))

(declare-fun m!7591000 () Bool)

(assert (=> b!6853315 m!7591000))

(declare-fun m!7591002 () Bool)

(assert (=> b!6853314 m!7591002))

(declare-fun m!7591004 () Bool)

(assert (=> b!6853316 m!7591004))

(assert (=> b!6852892 d!2153932))

(declare-fun d!2153936 () Bool)

(assert (=> d!2153936 (= (isEmpty!38579 (tail!12808 (tail!12808 s!2326))) ((_ is Nil!66208) (tail!12808 (tail!12808 s!2326))))))

(assert (=> b!6852971 d!2153936))

(declare-fun d!2153940 () Bool)

(assert (=> d!2153940 (= (tail!12808 (tail!12808 s!2326)) (t!380075 (tail!12808 s!2326)))))

(assert (=> b!6852971 d!2153940))

(declare-fun d!2153942 () Bool)

(declare-fun res!2796988 () Bool)

(declare-fun e!4132415 () Bool)

(assert (=> d!2153942 (=> res!2796988 e!4132415)))

(assert (=> d!2153942 (= res!2796988 ((_ is Nil!66206) (t!380073 (exprs!6561 setElem!47097))))))

(assert (=> d!2153942 (= (forall!15858 (t!380073 (exprs!6561 setElem!47097)) lambda!387392) e!4132415)))

(declare-fun b!6853334 () Bool)

(declare-fun e!4132417 () Bool)

(assert (=> b!6853334 (= e!4132415 e!4132417)))

(declare-fun res!2796989 () Bool)

(assert (=> b!6853334 (=> (not res!2796989) (not e!4132417))))

(assert (=> b!6853334 (= res!2796989 (dynLambda!26464 lambda!387392 (h!72654 (t!380073 (exprs!6561 setElem!47097)))))))

(declare-fun b!6853335 () Bool)

(assert (=> b!6853335 (= e!4132417 (forall!15858 (t!380073 (t!380073 (exprs!6561 setElem!47097))) lambda!387392))))

(assert (= (and d!2153942 (not res!2796988)) b!6853334))

(assert (= (and b!6853334 res!2796989) b!6853335))

(declare-fun b_lambda!258795 () Bool)

(assert (=> (not b_lambda!258795) (not b!6853334)))

(declare-fun m!7591008 () Bool)

(assert (=> b!6853334 m!7591008))

(declare-fun m!7591010 () Bool)

(assert (=> b!6853335 m!7591010))

(assert (=> b!6852931 d!2153942))

(assert (=> d!2153798 d!2153718))

(declare-fun b!6853344 () Bool)

(declare-fun res!2796991 () Bool)

(declare-fun e!4132425 () Bool)

(assert (=> b!6853344 (=> res!2796991 e!4132425)))

(assert (=> b!6853344 (= res!2796991 (not ((_ is Concat!25522) (derivativeStep!5323 lt!2456209 (head!13733 s!2326)))))))

(declare-fun e!4132426 () Bool)

(assert (=> b!6853344 (= e!4132426 e!4132425)))

(declare-fun b!6853345 () Bool)

(declare-fun res!2796992 () Bool)

(declare-fun e!4132420 () Bool)

(assert (=> b!6853345 (=> (not res!2796992) (not e!4132420))))

(declare-fun call!624245 () Bool)

(assert (=> b!6853345 (= res!2796992 call!624245)))

(assert (=> b!6853345 (= e!4132426 e!4132420)))

(declare-fun c!1275765 () Bool)

(declare-fun bm!624240 () Bool)

(declare-fun c!1275766 () Bool)

(declare-fun call!624246 () Bool)

(assert (=> bm!624240 (= call!624246 (validRegex!8413 (ite c!1275765 (reg!17006 (derivativeStep!5323 lt!2456209 (head!13733 s!2326))) (ite c!1275766 (regOne!33867 (derivativeStep!5323 lt!2456209 (head!13733 s!2326))) (regOne!33866 (derivativeStep!5323 lt!2456209 (head!13733 s!2326)))))))))

(declare-fun b!6853346 () Bool)

(declare-fun call!624247 () Bool)

(assert (=> b!6853346 (= e!4132420 call!624247)))

(declare-fun b!6853348 () Bool)

(declare-fun e!4132421 () Bool)

(declare-fun e!4132422 () Bool)

(assert (=> b!6853348 (= e!4132421 e!4132422)))

(assert (=> b!6853348 (= c!1275765 ((_ is Star!16677) (derivativeStep!5323 lt!2456209 (head!13733 s!2326))))))

(declare-fun b!6853349 () Bool)

(assert (=> b!6853349 (= e!4132422 e!4132426)))

(assert (=> b!6853349 (= c!1275766 ((_ is Union!16677) (derivativeStep!5323 lt!2456209 (head!13733 s!2326))))))

(declare-fun bm!624241 () Bool)

(assert (=> bm!624241 (= call!624245 call!624246)))

(declare-fun d!2153944 () Bool)

(declare-fun res!2796993 () Bool)

(assert (=> d!2153944 (=> res!2796993 e!4132421)))

(assert (=> d!2153944 (= res!2796993 ((_ is ElementMatch!16677) (derivativeStep!5323 lt!2456209 (head!13733 s!2326))))))

(assert (=> d!2153944 (= (validRegex!8413 (derivativeStep!5323 lt!2456209 (head!13733 s!2326))) e!4132421)))

(declare-fun b!6853347 () Bool)

(declare-fun e!4132423 () Bool)

(assert (=> b!6853347 (= e!4132422 e!4132423)))

(declare-fun res!2796994 () Bool)

(assert (=> b!6853347 (= res!2796994 (not (nullable!6640 (reg!17006 (derivativeStep!5323 lt!2456209 (head!13733 s!2326))))))))

(assert (=> b!6853347 (=> (not res!2796994) (not e!4132423))))

(declare-fun b!6853350 () Bool)

(assert (=> b!6853350 (= e!4132423 call!624246)))

(declare-fun bm!624242 () Bool)

(assert (=> bm!624242 (= call!624247 (validRegex!8413 (ite c!1275766 (regTwo!33867 (derivativeStep!5323 lt!2456209 (head!13733 s!2326))) (regTwo!33866 (derivativeStep!5323 lt!2456209 (head!13733 s!2326))))))))

(declare-fun b!6853351 () Bool)

(declare-fun e!4132424 () Bool)

(assert (=> b!6853351 (= e!4132424 call!624247)))

(declare-fun b!6853352 () Bool)

(assert (=> b!6853352 (= e!4132425 e!4132424)))

(declare-fun res!2796990 () Bool)

(assert (=> b!6853352 (=> (not res!2796990) (not e!4132424))))

(assert (=> b!6853352 (= res!2796990 call!624245)))

(assert (= (and d!2153944 (not res!2796993)) b!6853348))

(assert (= (and b!6853348 c!1275765) b!6853347))

(assert (= (and b!6853348 (not c!1275765)) b!6853349))

(assert (= (and b!6853347 res!2796994) b!6853350))

(assert (= (and b!6853349 c!1275766) b!6853345))

(assert (= (and b!6853349 (not c!1275766)) b!6853344))

(assert (= (and b!6853345 res!2796992) b!6853346))

(assert (= (and b!6853344 (not res!2796991)) b!6853352))

(assert (= (and b!6853352 res!2796990) b!6853351))

(assert (= (or b!6853346 b!6853351) bm!624242))

(assert (= (or b!6853345 b!6853352) bm!624241))

(assert (= (or b!6853350 bm!624241) bm!624240))

(declare-fun m!7591014 () Bool)

(assert (=> bm!624240 m!7591014))

(declare-fun m!7591018 () Bool)

(assert (=> b!6853347 m!7591018))

(declare-fun m!7591020 () Bool)

(assert (=> bm!624242 m!7591020))

(assert (=> d!2153798 d!2153944))

(declare-fun d!2153948 () Bool)

(assert (=> d!2153948 (= (nullable!6640 (reg!17006 lt!2456284)) (nullableFct!2524 (reg!17006 lt!2456284)))))

(declare-fun bs!1831873 () Bool)

(assert (= bs!1831873 d!2153948))

(declare-fun m!7591022 () Bool)

(assert (=> bs!1831873 m!7591022))

(assert (=> b!6852924 d!2153948))

(declare-fun bs!1831877 () Bool)

(declare-fun b!6853373 () Bool)

(assert (= bs!1831877 (and b!6853373 b!6852970)))

(declare-fun lambda!387464 () Int)

(assert (=> bs!1831877 (= (and (= (reg!17006 (regTwo!33867 (regOne!33867 r!7292))) (reg!17006 (regTwo!33867 r!7292))) (= (regTwo!33867 (regOne!33867 r!7292)) (regTwo!33867 r!7292))) (= lambda!387464 lambda!387452))))

(declare-fun bs!1831880 () Bool)

(assert (= bs!1831880 (and b!6853373 b!6852782)))

(assert (=> bs!1831880 (not (= lambda!387464 lambda!387441))))

(declare-fun bs!1831882 () Bool)

(assert (= bs!1831882 (and b!6853373 b!6852786)))

(assert (=> bs!1831882 (= (and (= (reg!17006 (regTwo!33867 (regOne!33867 r!7292))) (reg!17006 (regOne!33867 r!7292))) (= (regTwo!33867 (regOne!33867 r!7292)) (regOne!33867 r!7292))) (= lambda!387464 lambda!387440))))

(declare-fun bs!1831884 () Bool)

(assert (= bs!1831884 (and b!6853373 b!6851816)))

(assert (=> bs!1831884 (not (= lambda!387464 lambda!387380))))

(declare-fun bs!1831886 () Bool)

(assert (= bs!1831886 (and b!6853373 b!6852966)))

(assert (=> bs!1831886 (not (= lambda!387464 lambda!387453))))

(declare-fun bs!1831888 () Bool)

(assert (= bs!1831888 (and b!6853373 b!6851820)))

(assert (=> bs!1831888 (= (and (= (reg!17006 (regTwo!33867 (regOne!33867 r!7292))) (reg!17006 r!7292)) (= (regTwo!33867 (regOne!33867 r!7292)) r!7292)) (= lambda!387464 lambda!387379))))

(assert (=> b!6853373 true))

(assert (=> b!6853373 true))

(declare-fun bs!1831895 () Bool)

(declare-fun b!6853369 () Bool)

(assert (= bs!1831895 (and b!6853369 b!6852970)))

(declare-fun lambda!387465 () Int)

(assert (=> bs!1831895 (not (= lambda!387465 lambda!387452))))

(declare-fun bs!1831897 () Bool)

(assert (= bs!1831897 (and b!6853369 b!6852782)))

(assert (=> bs!1831897 (= (and (= (regOne!33866 (regTwo!33867 (regOne!33867 r!7292))) (regOne!33866 (regOne!33867 r!7292))) (= (regTwo!33866 (regTwo!33867 (regOne!33867 r!7292))) (regTwo!33866 (regOne!33867 r!7292)))) (= lambda!387465 lambda!387441))))

(declare-fun bs!1831899 () Bool)

(assert (= bs!1831899 (and b!6853369 b!6851816)))

(assert (=> bs!1831899 (= (and (= (regOne!33866 (regTwo!33867 (regOne!33867 r!7292))) (regOne!33866 r!7292)) (= (regTwo!33866 (regTwo!33867 (regOne!33867 r!7292))) (regTwo!33866 r!7292))) (= lambda!387465 lambda!387380))))

(declare-fun bs!1831901 () Bool)

(assert (= bs!1831901 (and b!6853369 b!6852966)))

(assert (=> bs!1831901 (= (and (= (regOne!33866 (regTwo!33867 (regOne!33867 r!7292))) (regOne!33866 (regTwo!33867 r!7292))) (= (regTwo!33866 (regTwo!33867 (regOne!33867 r!7292))) (regTwo!33866 (regTwo!33867 r!7292)))) (= lambda!387465 lambda!387453))))

(declare-fun bs!1831903 () Bool)

(assert (= bs!1831903 (and b!6853369 b!6851820)))

(assert (=> bs!1831903 (not (= lambda!387465 lambda!387379))))

(declare-fun bs!1831904 () Bool)

(assert (= bs!1831904 (and b!6853369 b!6852786)))

(assert (=> bs!1831904 (not (= lambda!387465 lambda!387440))))

(declare-fun bs!1831905 () Bool)

(assert (= bs!1831905 (and b!6853369 b!6853373)))

(assert (=> bs!1831905 (not (= lambda!387465 lambda!387464))))

(assert (=> b!6853369 true))

(assert (=> b!6853369 true))

(declare-fun b!6853363 () Bool)

(declare-fun c!1275774 () Bool)

(assert (=> b!6853363 (= c!1275774 ((_ is Union!16677) (regTwo!33867 (regOne!33867 r!7292))))))

(declare-fun e!4132436 () Bool)

(declare-fun e!4132434 () Bool)

(assert (=> b!6853363 (= e!4132436 e!4132434)))

(declare-fun b!6853364 () Bool)

(declare-fun c!1275771 () Bool)

(assert (=> b!6853364 (= c!1275771 ((_ is ElementMatch!16677) (regTwo!33867 (regOne!33867 r!7292))))))

(declare-fun e!4132437 () Bool)

(assert (=> b!6853364 (= e!4132437 e!4132436)))

(declare-fun b!6853365 () Bool)

(declare-fun e!4132439 () Bool)

(assert (=> b!6853365 (= e!4132434 e!4132439)))

(declare-fun c!1275773 () Bool)

(assert (=> b!6853365 (= c!1275773 ((_ is Star!16677) (regTwo!33867 (regOne!33867 r!7292))))))

(declare-fun b!6853366 () Bool)

(declare-fun e!4132435 () Bool)

(assert (=> b!6853366 (= e!4132435 (matchRSpec!3778 (regTwo!33867 (regTwo!33867 (regOne!33867 r!7292))) s!2326))))

(declare-fun b!6853367 () Bool)

(assert (=> b!6853367 (= e!4132434 e!4132435)))

(declare-fun res!2796999 () Bool)

(assert (=> b!6853367 (= res!2796999 (matchRSpec!3778 (regOne!33867 (regTwo!33867 (regOne!33867 r!7292))) s!2326))))

(assert (=> b!6853367 (=> res!2796999 e!4132435)))

(declare-fun b!6853368 () Bool)

(declare-fun e!4132433 () Bool)

(declare-fun call!624249 () Bool)

(assert (=> b!6853368 (= e!4132433 call!624249)))

(declare-fun b!6853370 () Bool)

(assert (=> b!6853370 (= e!4132436 (= s!2326 (Cons!66208 (c!1275345 (regTwo!33867 (regOne!33867 r!7292))) Nil!66208)))))

(declare-fun bm!624243 () Bool)

(assert (=> bm!624243 (= call!624249 (isEmpty!38579 s!2326))))

(declare-fun b!6853371 () Bool)

(assert (=> b!6853371 (= e!4132433 e!4132437)))

(declare-fun res!2796997 () Bool)

(assert (=> b!6853371 (= res!2796997 (not ((_ is EmptyLang!16677) (regTwo!33867 (regOne!33867 r!7292)))))))

(assert (=> b!6853371 (=> (not res!2796997) (not e!4132437))))

(declare-fun b!6853372 () Bool)

(declare-fun res!2796998 () Bool)

(declare-fun e!4132438 () Bool)

(assert (=> b!6853372 (=> res!2796998 e!4132438)))

(assert (=> b!6853372 (= res!2796998 call!624249)))

(assert (=> b!6853372 (= e!4132439 e!4132438)))

(declare-fun call!624248 () Bool)

(assert (=> b!6853369 (= e!4132439 call!624248)))

(declare-fun d!2153950 () Bool)

(declare-fun c!1275772 () Bool)

(assert (=> d!2153950 (= c!1275772 ((_ is EmptyExpr!16677) (regTwo!33867 (regOne!33867 r!7292))))))

(assert (=> d!2153950 (= (matchRSpec!3778 (regTwo!33867 (regOne!33867 r!7292)) s!2326) e!4132433)))

(assert (=> b!6853373 (= e!4132438 call!624248)))

(declare-fun bm!624244 () Bool)

(assert (=> bm!624244 (= call!624248 (Exists!3739 (ite c!1275773 lambda!387464 lambda!387465)))))

(assert (= (and d!2153950 c!1275772) b!6853368))

(assert (= (and d!2153950 (not c!1275772)) b!6853371))

(assert (= (and b!6853371 res!2796997) b!6853364))

(assert (= (and b!6853364 c!1275771) b!6853370))

(assert (= (and b!6853364 (not c!1275771)) b!6853363))

(assert (= (and b!6853363 c!1275774) b!6853367))

(assert (= (and b!6853363 (not c!1275774)) b!6853365))

(assert (= (and b!6853367 (not res!2796999)) b!6853366))

(assert (= (and b!6853365 c!1275773) b!6853372))

(assert (= (and b!6853365 (not c!1275773)) b!6853369))

(assert (= (and b!6853372 (not res!2796998)) b!6853373))

(assert (= (or b!6853373 b!6853369) bm!624244))

(assert (= (or b!6853368 b!6853372) bm!624243))

(declare-fun m!7591024 () Bool)

(assert (=> b!6853366 m!7591024))

(declare-fun m!7591026 () Bool)

(assert (=> b!6853367 m!7591026))

(assert (=> bm!624243 m!7589856))

(declare-fun m!7591030 () Bool)

(assert (=> bm!624244 m!7591030))

(assert (=> b!6852779 d!2153950))

(declare-fun d!2153952 () Bool)

(assert (=> d!2153952 (= (isEmptyExpr!2008 lt!2456370) ((_ is EmptyExpr!16677) lt!2456370))))

(assert (=> b!6852896 d!2153952))

(declare-fun d!2153956 () Bool)

(assert (=> d!2153956 (= (isEmptyLang!2019 lt!2456357) ((_ is EmptyLang!16677) lt!2456357))))

(assert (=> b!6852722 d!2153956))

(declare-fun d!2153958 () Bool)

(declare-fun lt!2456403 () Bool)

(assert (=> d!2153958 (= lt!2456403 (select (content!12985 (t!380074 zl!343)) lt!2456204))))

(declare-fun e!4132442 () Bool)

(assert (=> d!2153958 (= lt!2456403 e!4132442)))

(declare-fun res!2797000 () Bool)

(assert (=> d!2153958 (=> (not res!2797000) (not e!4132442))))

(assert (=> d!2153958 (= res!2797000 ((_ is Cons!66207) (t!380074 zl!343)))))

(assert (=> d!2153958 (= (contains!20331 (t!380074 zl!343) lt!2456204) lt!2456403)))

(declare-fun b!6853376 () Bool)

(declare-fun e!4132441 () Bool)

(assert (=> b!6853376 (= e!4132442 e!4132441)))

(declare-fun res!2797001 () Bool)

(assert (=> b!6853376 (=> res!2797001 e!4132441)))

(assert (=> b!6853376 (= res!2797001 (= (h!72655 (t!380074 zl!343)) lt!2456204))))

(declare-fun b!6853377 () Bool)

(assert (=> b!6853377 (= e!4132441 (contains!20331 (t!380074 (t!380074 zl!343)) lt!2456204))))

(assert (= (and d!2153958 res!2797000) b!6853376))

(assert (= (and b!6853376 (not res!2797001)) b!6853377))

(assert (=> d!2153958 m!7590812))

(declare-fun m!7591050 () Bool)

(assert (=> d!2153958 m!7591050))

(declare-fun m!7591052 () Bool)

(assert (=> b!6853377 m!7591052))

(assert (=> b!6852933 d!2153958))

(declare-fun d!2153960 () Bool)

(assert (=> d!2153960 (= (nullable!6640 (reg!17006 lt!2456308)) (nullableFct!2524 (reg!17006 lt!2456308)))))

(declare-fun bs!1831911 () Bool)

(assert (= bs!1831911 d!2153960))

(declare-fun m!7591054 () Bool)

(assert (=> bs!1831911 m!7591054))

(assert (=> b!6852694 d!2153960))

(assert (=> b!6852859 d!2153718))

(assert (=> b!6852859 d!2153720))

(declare-fun d!2153962 () Bool)

(assert (=> d!2153962 (= (nullable!6640 (derivativeStep!5323 r!7292 (head!13733 s!2326))) (nullableFct!2524 (derivativeStep!5323 r!7292 (head!13733 s!2326))))))

(declare-fun bs!1831914 () Bool)

(assert (= bs!1831914 d!2153962))

(assert (=> bs!1831914 m!7589902))

(declare-fun m!7591056 () Bool)

(assert (=> bs!1831914 m!7591056))

(assert (=> b!6852807 d!2153962))

(declare-fun b!6853378 () Bool)

(declare-fun res!2797003 () Bool)

(declare-fun e!4132448 () Bool)

(assert (=> b!6853378 (=> res!2797003 e!4132448)))

(assert (=> b!6853378 (= res!2797003 (not ((_ is Concat!25522) (ite c!1275599 (reg!17006 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))) (ite c!1275600 (regOne!33867 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))) (regOne!33866 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))))))))))

(declare-fun e!4132449 () Bool)

(assert (=> b!6853378 (= e!4132449 e!4132448)))

(declare-fun b!6853379 () Bool)

(declare-fun res!2797004 () Bool)

(declare-fun e!4132443 () Bool)

(assert (=> b!6853379 (=> (not res!2797004) (not e!4132443))))

(declare-fun call!624250 () Bool)

(assert (=> b!6853379 (= res!2797004 call!624250)))

(assert (=> b!6853379 (= e!4132449 e!4132443)))

(declare-fun c!1275777 () Bool)

(declare-fun c!1275776 () Bool)

(declare-fun bm!624245 () Bool)

(declare-fun call!624251 () Bool)

(assert (=> bm!624245 (= call!624251 (validRegex!8413 (ite c!1275776 (reg!17006 (ite c!1275599 (reg!17006 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))) (ite c!1275600 (regOne!33867 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))) (regOne!33866 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292))))))) (ite c!1275777 (regOne!33867 (ite c!1275599 (reg!17006 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))) (ite c!1275600 (regOne!33867 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))) (regOne!33866 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292))))))) (regOne!33866 (ite c!1275599 (reg!17006 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))) (ite c!1275600 (regOne!33867 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))) (regOne!33866 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))))))))))))

(declare-fun b!6853380 () Bool)

(declare-fun call!624252 () Bool)

(assert (=> b!6853380 (= e!4132443 call!624252)))

(declare-fun b!6853382 () Bool)

(declare-fun e!4132444 () Bool)

(declare-fun e!4132445 () Bool)

(assert (=> b!6853382 (= e!4132444 e!4132445)))

(assert (=> b!6853382 (= c!1275776 ((_ is Star!16677) (ite c!1275599 (reg!17006 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))) (ite c!1275600 (regOne!33867 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))) (regOne!33866 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292))))))))))

(declare-fun b!6853383 () Bool)

(assert (=> b!6853383 (= e!4132445 e!4132449)))

(assert (=> b!6853383 (= c!1275777 ((_ is Union!16677) (ite c!1275599 (reg!17006 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))) (ite c!1275600 (regOne!33867 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))) (regOne!33866 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292))))))))))

(declare-fun bm!624246 () Bool)

(assert (=> bm!624246 (= call!624250 call!624251)))

(declare-fun d!2153964 () Bool)

(declare-fun res!2797005 () Bool)

(assert (=> d!2153964 (=> res!2797005 e!4132444)))

(assert (=> d!2153964 (= res!2797005 ((_ is ElementMatch!16677) (ite c!1275599 (reg!17006 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))) (ite c!1275600 (regOne!33867 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))) (regOne!33866 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292))))))))))

(assert (=> d!2153964 (= (validRegex!8413 (ite c!1275599 (reg!17006 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))) (ite c!1275600 (regOne!33867 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))) (regOne!33866 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292))))))) e!4132444)))

(declare-fun b!6853381 () Bool)

(declare-fun e!4132446 () Bool)

(assert (=> b!6853381 (= e!4132445 e!4132446)))

(declare-fun res!2797006 () Bool)

(assert (=> b!6853381 (= res!2797006 (not (nullable!6640 (reg!17006 (ite c!1275599 (reg!17006 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))) (ite c!1275600 (regOne!33867 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))) (regOne!33866 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292))))))))))))

(assert (=> b!6853381 (=> (not res!2797006) (not e!4132446))))

(declare-fun b!6853384 () Bool)

(assert (=> b!6853384 (= e!4132446 call!624251)))

(declare-fun bm!624247 () Bool)

(assert (=> bm!624247 (= call!624252 (validRegex!8413 (ite c!1275777 (regTwo!33867 (ite c!1275599 (reg!17006 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))) (ite c!1275600 (regOne!33867 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))) (regOne!33866 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292))))))) (regTwo!33866 (ite c!1275599 (reg!17006 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))) (ite c!1275600 (regOne!33867 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))) (regOne!33866 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292))))))))))))

(declare-fun b!6853385 () Bool)

(declare-fun e!4132447 () Bool)

(assert (=> b!6853385 (= e!4132447 call!624252)))

(declare-fun b!6853386 () Bool)

(assert (=> b!6853386 (= e!4132448 e!4132447)))

(declare-fun res!2797002 () Bool)

(assert (=> b!6853386 (=> (not res!2797002) (not e!4132447))))

(assert (=> b!6853386 (= res!2797002 call!624250)))

(assert (= (and d!2153964 (not res!2797005)) b!6853382))

(assert (= (and b!6853382 c!1275776) b!6853381))

(assert (= (and b!6853382 (not c!1275776)) b!6853383))

(assert (= (and b!6853381 res!2797006) b!6853384))

(assert (= (and b!6853383 c!1275777) b!6853379))

(assert (= (and b!6853383 (not c!1275777)) b!6853378))

(assert (= (and b!6853379 res!2797004) b!6853380))

(assert (= (and b!6853378 (not res!2797003)) b!6853386))

(assert (= (and b!6853386 res!2797002) b!6853385))

(assert (= (or b!6853380 b!6853385) bm!624247))

(assert (= (or b!6853379 b!6853386) bm!624246))

(assert (= (or b!6853384 bm!624246) bm!624245))

(declare-fun m!7591058 () Bool)

(assert (=> bm!624245 m!7591058))

(declare-fun m!7591060 () Bool)

(assert (=> b!6853381 m!7591060))

(declare-fun m!7591062 () Bool)

(assert (=> bm!624247 m!7591062))

(assert (=> bm!624155 d!2153964))

(assert (=> b!6852803 d!2153936))

(assert (=> b!6852803 d!2153940))

(declare-fun d!2153966 () Bool)

(declare-fun res!2797007 () Bool)

(declare-fun e!4132450 () Bool)

(assert (=> d!2153966 (=> res!2797007 e!4132450)))

(assert (=> d!2153966 (= res!2797007 ((_ is Nil!66207) res!2796856))))

(assert (=> d!2153966 (= (noDuplicate!2443 res!2796856) e!4132450)))

(declare-fun b!6853387 () Bool)

(declare-fun e!4132451 () Bool)

(assert (=> b!6853387 (= e!4132450 e!4132451)))

(declare-fun res!2797008 () Bool)

(assert (=> b!6853387 (=> (not res!2797008) (not e!4132451))))

(assert (=> b!6853387 (= res!2797008 (not (contains!20331 (t!380074 res!2796856) (h!72655 res!2796856))))))

(declare-fun b!6853388 () Bool)

(assert (=> b!6853388 (= e!4132451 (noDuplicate!2443 (t!380074 res!2796856)))))

(assert (= (and d!2153966 (not res!2797007)) b!6853387))

(assert (= (and b!6853387 res!2797008) b!6853388))

(declare-fun m!7591064 () Bool)

(assert (=> b!6853387 m!7591064))

(declare-fun m!7591066 () Bool)

(assert (=> b!6853388 m!7591066))

(assert (=> d!2153768 d!2153966))

(declare-fun bs!1831928 () Bool)

(declare-fun d!2153968 () Bool)

(assert (= bs!1831928 (and d!2153968 d!2153732)))

(declare-fun lambda!387467 () Int)

(assert (=> bs!1831928 (not (= lambda!387467 lambda!387445))))

(declare-fun bs!1831929 () Bool)

(assert (= bs!1831929 (and d!2153968 d!2153730)))

(assert (=> bs!1831929 (not (= lambda!387467 lambda!387442))))

(declare-fun bs!1831930 () Bool)

(assert (= bs!1831930 (and d!2153968 d!2153496)))

(assert (=> bs!1831930 (not (= lambda!387467 lambda!387395))))

(declare-fun bs!1831931 () Bool)

(assert (= bs!1831931 (and d!2153968 d!2153882)))

(assert (=> bs!1831931 (not (= lambda!387467 lambda!387455))))

(declare-fun bs!1831932 () Bool)

(assert (= bs!1831932 (and d!2153968 d!2153498)))

(assert (=> bs!1831932 (not (= lambda!387467 lambda!387401))))

(declare-fun bs!1831933 () Bool)

(assert (= bs!1831933 (and d!2153968 d!2153918)))

(assert (=> bs!1831933 (not (= lambda!387467 lambda!387461))))

(declare-fun bs!1831934 () Bool)

(assert (= bs!1831934 (and d!2153968 d!2153748)))

(assert (=> bs!1831934 (= lambda!387467 lambda!387446)))

(declare-fun bs!1831935 () Bool)

(assert (= bs!1831935 (and d!2153968 d!2153500)))

(assert (=> bs!1831935 (= lambda!387467 lambda!387404)))

(declare-fun bs!1831936 () Bool)

(assert (= bs!1831936 (and d!2153968 d!2153764)))

(assert (=> bs!1831936 (= lambda!387467 lambda!387448)))

(declare-fun bs!1831937 () Bool)

(assert (= bs!1831937 (and d!2153968 d!2153770)))

(assert (=> bs!1831937 (= lambda!387467 lambda!387449)))

(declare-fun bs!1831938 () Bool)

(assert (= bs!1831938 (and d!2153968 d!2153758)))

(assert (=> bs!1831938 (= lambda!387467 lambda!387447)))

(declare-fun bs!1831939 () Bool)

(assert (= bs!1831939 (and d!2153968 d!2153502)))

(assert (=> bs!1831939 (= lambda!387467 lambda!387405)))

(declare-fun bs!1831940 () Bool)

(assert (= bs!1831940 (and d!2153968 d!2153902)))

(assert (=> bs!1831940 (= lambda!387467 lambda!387459)))

(declare-fun bs!1831941 () Bool)

(assert (= bs!1831941 (and d!2153968 d!2153480)))

(assert (=> bs!1831941 (= lambda!387467 lambda!387392)))

(declare-fun bs!1831942 () Bool)

(assert (= bs!1831942 (and d!2153968 d!2153712)))

(assert (=> bs!1831942 (= lambda!387467 lambda!387436)))

(declare-fun bs!1831943 () Bool)

(assert (= bs!1831943 (and d!2153968 d!2153840)))

(assert (=> bs!1831943 (= lambda!387467 lambda!387454)))

(declare-fun bs!1831944 () Bool)

(assert (= bs!1831944 (and d!2153968 d!2153894)))

(assert (=> bs!1831944 (= lambda!387467 lambda!387457)))

(declare-fun bs!1831945 () Bool)

(assert (= bs!1831945 (and d!2153968 d!2153794)))

(assert (=> bs!1831945 (= lambda!387467 lambda!387451)))

(declare-fun bs!1831946 () Bool)

(assert (= bs!1831946 (and d!2153968 d!2153932)))

(assert (=> bs!1831946 (= lambda!387467 lambda!387462)))

(declare-fun bs!1831947 () Bool)

(assert (= bs!1831947 (and d!2153968 d!2153724)))

(assert (=> bs!1831947 (= lambda!387467 lambda!387439)))

(declare-fun bs!1831948 () Bool)

(assert (= bs!1831948 (and d!2153968 b!6851566)))

(assert (=> bs!1831948 (not (= lambda!387467 lambda!387348))))

(assert (=> bs!1831932 (= lambda!387467 lambda!387400)))

(declare-fun bs!1831949 () Bool)

(assert (= bs!1831949 (and d!2153968 d!2153792)))

(assert (=> bs!1831949 (= lambda!387467 lambda!387450)))

(declare-fun b!6853389 () Bool)

(declare-fun e!4132457 () Regex!16677)

(assert (=> b!6853389 (= e!4132457 (h!72654 (exprs!6561 lt!2456354)))))

(declare-fun b!6853390 () Bool)

(declare-fun e!4132456 () Bool)

(declare-fun lt!2456404 () Regex!16677)

(assert (=> b!6853390 (= e!4132456 (isConcat!1531 lt!2456404))))

(declare-fun b!6853391 () Bool)

(declare-fun e!4132455 () Regex!16677)

(assert (=> b!6853391 (= e!4132457 e!4132455)))

(declare-fun c!1275778 () Bool)

(assert (=> b!6853391 (= c!1275778 ((_ is Cons!66206) (exprs!6561 lt!2456354)))))

(declare-fun b!6853392 () Bool)

(declare-fun e!4132452 () Bool)

(declare-fun e!4132453 () Bool)

(assert (=> b!6853392 (= e!4132452 e!4132453)))

(declare-fun c!1275780 () Bool)

(assert (=> b!6853392 (= c!1275780 (isEmpty!38581 (exprs!6561 lt!2456354)))))

(declare-fun b!6853393 () Bool)

(assert (=> b!6853393 (= e!4132455 (Concat!25522 (h!72654 (exprs!6561 lt!2456354)) (generalisedConcat!2268 (t!380073 (exprs!6561 lt!2456354)))))))

(declare-fun b!6853394 () Bool)

(declare-fun e!4132454 () Bool)

(assert (=> b!6853394 (= e!4132454 (isEmpty!38581 (t!380073 (exprs!6561 lt!2456354))))))

(declare-fun b!6853395 () Bool)

(assert (=> b!6853395 (= e!4132456 (= lt!2456404 (head!13734 (exprs!6561 lt!2456354))))))

(declare-fun b!6853396 () Bool)

(assert (=> b!6853396 (= e!4132453 e!4132456)))

(declare-fun c!1275779 () Bool)

(assert (=> b!6853396 (= c!1275779 (isEmpty!38581 (tail!12810 (exprs!6561 lt!2456354))))))

(assert (=> d!2153968 e!4132452))

(declare-fun res!2797009 () Bool)

(assert (=> d!2153968 (=> (not res!2797009) (not e!4132452))))

(assert (=> d!2153968 (= res!2797009 (validRegex!8413 lt!2456404))))

(assert (=> d!2153968 (= lt!2456404 e!4132457)))

(declare-fun c!1275781 () Bool)

(assert (=> d!2153968 (= c!1275781 e!4132454)))

(declare-fun res!2797010 () Bool)

(assert (=> d!2153968 (=> (not res!2797010) (not e!4132454))))

(assert (=> d!2153968 (= res!2797010 ((_ is Cons!66206) (exprs!6561 lt!2456354)))))

(assert (=> d!2153968 (forall!15858 (exprs!6561 lt!2456354) lambda!387467)))

(assert (=> d!2153968 (= (generalisedConcat!2268 (exprs!6561 lt!2456354)) lt!2456404)))

(declare-fun b!6853397 () Bool)

(assert (=> b!6853397 (= e!4132453 (isEmptyExpr!2008 lt!2456404))))

(declare-fun b!6853398 () Bool)

(assert (=> b!6853398 (= e!4132455 EmptyExpr!16677)))

(assert (= (and d!2153968 res!2797010) b!6853394))

(assert (= (and d!2153968 c!1275781) b!6853389))

(assert (= (and d!2153968 (not c!1275781)) b!6853391))

(assert (= (and b!6853391 c!1275778) b!6853393))

(assert (= (and b!6853391 (not c!1275778)) b!6853398))

(assert (= (and d!2153968 res!2797009) b!6853392))

(assert (= (and b!6853392 c!1275780) b!6853397))

(assert (= (and b!6853392 (not c!1275780)) b!6853396))

(assert (= (and b!6853396 c!1275779) b!6853395))

(assert (= (and b!6853396 (not c!1275779)) b!6853390))

(declare-fun m!7591080 () Bool)

(assert (=> b!6853396 m!7591080))

(assert (=> b!6853396 m!7591080))

(declare-fun m!7591082 () Bool)

(assert (=> b!6853396 m!7591082))

(declare-fun m!7591084 () Bool)

(assert (=> b!6853392 m!7591084))

(declare-fun m!7591086 () Bool)

(assert (=> b!6853397 m!7591086))

(declare-fun m!7591088 () Bool)

(assert (=> b!6853390 m!7591088))

(declare-fun m!7591090 () Bool)

(assert (=> d!2153968 m!7591090))

(declare-fun m!7591092 () Bool)

(assert (=> d!2153968 m!7591092))

(declare-fun m!7591094 () Bool)

(assert (=> b!6853394 m!7591094))

(declare-fun m!7591096 () Bool)

(assert (=> b!6853393 m!7591096))

(declare-fun m!7591098 () Bool)

(assert (=> b!6853395 m!7591098))

(assert (=> bs!1831696 d!2153968))

(declare-fun b!6853417 () Bool)

(declare-fun res!2797022 () Bool)

(declare-fun e!4132477 () Bool)

(assert (=> b!6853417 (=> res!2797022 e!4132477)))

(assert (=> b!6853417 (= res!2797022 (not ((_ is Concat!25522) (ite c!1275679 (regTwo!33867 lt!2456222) (regTwo!33866 lt!2456222)))))))

(declare-fun e!4132478 () Bool)

(assert (=> b!6853417 (= e!4132478 e!4132477)))

(declare-fun b!6853418 () Bool)

(declare-fun res!2797023 () Bool)

(declare-fun e!4132472 () Bool)

(assert (=> b!6853418 (=> (not res!2797023) (not e!4132472))))

(declare-fun call!624259 () Bool)

(assert (=> b!6853418 (= res!2797023 call!624259)))

(assert (=> b!6853418 (= e!4132478 e!4132472)))

(declare-fun c!1275786 () Bool)

(declare-fun call!624260 () Bool)

(declare-fun c!1275787 () Bool)

(declare-fun bm!624254 () Bool)

(assert (=> bm!624254 (= call!624260 (validRegex!8413 (ite c!1275786 (reg!17006 (ite c!1275679 (regTwo!33867 lt!2456222) (regTwo!33866 lt!2456222))) (ite c!1275787 (regOne!33867 (ite c!1275679 (regTwo!33867 lt!2456222) (regTwo!33866 lt!2456222))) (regOne!33866 (ite c!1275679 (regTwo!33867 lt!2456222) (regTwo!33866 lt!2456222)))))))))

(declare-fun b!6853419 () Bool)

(declare-fun call!624261 () Bool)

(assert (=> b!6853419 (= e!4132472 call!624261)))

(declare-fun b!6853421 () Bool)

(declare-fun e!4132473 () Bool)

(declare-fun e!4132474 () Bool)

(assert (=> b!6853421 (= e!4132473 e!4132474)))

(assert (=> b!6853421 (= c!1275786 ((_ is Star!16677) (ite c!1275679 (regTwo!33867 lt!2456222) (regTwo!33866 lt!2456222))))))

(declare-fun b!6853422 () Bool)

(assert (=> b!6853422 (= e!4132474 e!4132478)))

(assert (=> b!6853422 (= c!1275787 ((_ is Union!16677) (ite c!1275679 (regTwo!33867 lt!2456222) (regTwo!33866 lt!2456222))))))

(declare-fun bm!624255 () Bool)

(assert (=> bm!624255 (= call!624259 call!624260)))

(declare-fun d!2153974 () Bool)

(declare-fun res!2797024 () Bool)

(assert (=> d!2153974 (=> res!2797024 e!4132473)))

(assert (=> d!2153974 (= res!2797024 ((_ is ElementMatch!16677) (ite c!1275679 (regTwo!33867 lt!2456222) (regTwo!33866 lt!2456222))))))

(assert (=> d!2153974 (= (validRegex!8413 (ite c!1275679 (regTwo!33867 lt!2456222) (regTwo!33866 lt!2456222))) e!4132473)))

(declare-fun b!6853420 () Bool)

(declare-fun e!4132475 () Bool)

(assert (=> b!6853420 (= e!4132474 e!4132475)))

(declare-fun res!2797025 () Bool)

(assert (=> b!6853420 (= res!2797025 (not (nullable!6640 (reg!17006 (ite c!1275679 (regTwo!33867 lt!2456222) (regTwo!33866 lt!2456222))))))))

(assert (=> b!6853420 (=> (not res!2797025) (not e!4132475))))

(declare-fun b!6853423 () Bool)

(assert (=> b!6853423 (= e!4132475 call!624260)))

(declare-fun bm!624256 () Bool)

(assert (=> bm!624256 (= call!624261 (validRegex!8413 (ite c!1275787 (regTwo!33867 (ite c!1275679 (regTwo!33867 lt!2456222) (regTwo!33866 lt!2456222))) (regTwo!33866 (ite c!1275679 (regTwo!33867 lt!2456222) (regTwo!33866 lt!2456222))))))))

(declare-fun b!6853424 () Bool)

(declare-fun e!4132476 () Bool)

(assert (=> b!6853424 (= e!4132476 call!624261)))

(declare-fun b!6853425 () Bool)

(assert (=> b!6853425 (= e!4132477 e!4132476)))

(declare-fun res!2797021 () Bool)

(assert (=> b!6853425 (=> (not res!2797021) (not e!4132476))))

(assert (=> b!6853425 (= res!2797021 call!624259)))

(assert (= (and d!2153974 (not res!2797024)) b!6853421))

(assert (= (and b!6853421 c!1275786) b!6853420))

(assert (= (and b!6853421 (not c!1275786)) b!6853422))

(assert (= (and b!6853420 res!2797025) b!6853423))

(assert (= (and b!6853422 c!1275787) b!6853418))

(assert (= (and b!6853422 (not c!1275787)) b!6853417))

(assert (= (and b!6853418 res!2797023) b!6853419))

(assert (= (and b!6853417 (not res!2797022)) b!6853425))

(assert (= (and b!6853425 res!2797021) b!6853424))

(assert (= (or b!6853419 b!6853424) bm!624256))

(assert (= (or b!6853418 b!6853425) bm!624255))

(assert (= (or b!6853423 bm!624255) bm!624254))

(declare-fun m!7591106 () Bool)

(assert (=> bm!624254 m!7591106))

(declare-fun m!7591108 () Bool)

(assert (=> b!6853420 m!7591108))

(declare-fun m!7591112 () Bool)

(assert (=> bm!624256 m!7591112))

(assert (=> bm!624192 d!2153974))

(declare-fun b!6853428 () Bool)

(declare-fun res!2797027 () Bool)

(declare-fun e!4132485 () Bool)

(assert (=> b!6853428 (=> res!2797027 e!4132485)))

(assert (=> b!6853428 (= res!2797027 (not ((_ is Concat!25522) (h!72654 lt!2456291))))))

(declare-fun e!4132486 () Bool)

(assert (=> b!6853428 (= e!4132486 e!4132485)))

(declare-fun b!6853429 () Bool)

(declare-fun res!2797028 () Bool)

(declare-fun e!4132480 () Bool)

(assert (=> b!6853429 (=> (not res!2797028) (not e!4132480))))

(declare-fun call!624262 () Bool)

(assert (=> b!6853429 (= res!2797028 call!624262)))

(assert (=> b!6853429 (= e!4132486 e!4132480)))

(declare-fun c!1275789 () Bool)

(declare-fun bm!624257 () Bool)

(declare-fun call!624263 () Bool)

(declare-fun c!1275790 () Bool)

(assert (=> bm!624257 (= call!624263 (validRegex!8413 (ite c!1275789 (reg!17006 (h!72654 lt!2456291)) (ite c!1275790 (regOne!33867 (h!72654 lt!2456291)) (regOne!33866 (h!72654 lt!2456291))))))))

(declare-fun b!6853430 () Bool)

(declare-fun call!624264 () Bool)

(assert (=> b!6853430 (= e!4132480 call!624264)))

(declare-fun b!6853432 () Bool)

(declare-fun e!4132481 () Bool)

(declare-fun e!4132482 () Bool)

(assert (=> b!6853432 (= e!4132481 e!4132482)))

(assert (=> b!6853432 (= c!1275789 ((_ is Star!16677) (h!72654 lt!2456291)))))

(declare-fun b!6853433 () Bool)

(assert (=> b!6853433 (= e!4132482 e!4132486)))

(assert (=> b!6853433 (= c!1275790 ((_ is Union!16677) (h!72654 lt!2456291)))))

(declare-fun bm!624258 () Bool)

(assert (=> bm!624258 (= call!624262 call!624263)))

(declare-fun d!2153980 () Bool)

(declare-fun res!2797029 () Bool)

(assert (=> d!2153980 (=> res!2797029 e!4132481)))

(assert (=> d!2153980 (= res!2797029 ((_ is ElementMatch!16677) (h!72654 lt!2456291)))))

(assert (=> d!2153980 (= (validRegex!8413 (h!72654 lt!2456291)) e!4132481)))

(declare-fun b!6853431 () Bool)

(declare-fun e!4132483 () Bool)

(assert (=> b!6853431 (= e!4132482 e!4132483)))

(declare-fun res!2797030 () Bool)

(assert (=> b!6853431 (= res!2797030 (not (nullable!6640 (reg!17006 (h!72654 lt!2456291)))))))

(assert (=> b!6853431 (=> (not res!2797030) (not e!4132483))))

(declare-fun b!6853434 () Bool)

(assert (=> b!6853434 (= e!4132483 call!624263)))

(declare-fun bm!624259 () Bool)

(assert (=> bm!624259 (= call!624264 (validRegex!8413 (ite c!1275790 (regTwo!33867 (h!72654 lt!2456291)) (regTwo!33866 (h!72654 lt!2456291)))))))

(declare-fun b!6853435 () Bool)

(declare-fun e!4132484 () Bool)

(assert (=> b!6853435 (= e!4132484 call!624264)))

(declare-fun b!6853436 () Bool)

(assert (=> b!6853436 (= e!4132485 e!4132484)))

(declare-fun res!2797026 () Bool)

(assert (=> b!6853436 (=> (not res!2797026) (not e!4132484))))

(assert (=> b!6853436 (= res!2797026 call!624262)))

(assert (= (and d!2153980 (not res!2797029)) b!6853432))

(assert (= (and b!6853432 c!1275789) b!6853431))

(assert (= (and b!6853432 (not c!1275789)) b!6853433))

(assert (= (and b!6853431 res!2797030) b!6853434))

(assert (= (and b!6853433 c!1275790) b!6853429))

(assert (= (and b!6853433 (not c!1275790)) b!6853428))

(assert (= (and b!6853429 res!2797028) b!6853430))

(assert (= (and b!6853428 (not res!2797027)) b!6853436))

(assert (= (and b!6853436 res!2797026) b!6853435))

(assert (= (or b!6853430 b!6853435) bm!624259))

(assert (= (or b!6853429 b!6853436) bm!624258))

(assert (= (or b!6853434 bm!624258) bm!624257))

(declare-fun m!7591118 () Bool)

(assert (=> bm!624257 m!7591118))

(declare-fun m!7591120 () Bool)

(assert (=> b!6853431 m!7591120))

(declare-fun m!7591124 () Bool)

(assert (=> bm!624259 m!7591124))

(assert (=> bs!1831700 d!2153980))

(assert (=> bm!624162 d!2153672))

(declare-fun d!2153986 () Bool)

(assert (=> d!2153986 (= (nullable!6640 (regOne!33866 r!7292)) (nullableFct!2524 (regOne!33866 r!7292)))))

(declare-fun bs!1831950 () Bool)

(assert (= bs!1831950 d!2153986))

(declare-fun m!7591126 () Bool)

(assert (=> bs!1831950 m!7591126))

(assert (=> b!6852839 d!2153986))

(declare-fun d!2153988 () Bool)

(assert (=> d!2153988 (= (nullable!6640 (reg!17006 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292)))) (nullableFct!2524 (reg!17006 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292)))))))

(declare-fun bs!1831952 () Bool)

(assert (= bs!1831952 d!2153988))

(declare-fun m!7591128 () Bool)

(assert (=> bs!1831952 m!7591128))

(assert (=> b!6852882 d!2153988))

(declare-fun d!2153992 () Bool)

(assert (=> d!2153992 (= (isConcat!1531 lt!2456361) ((_ is Concat!25522) lt!2456361))))

(assert (=> b!6852767 d!2153992))

(declare-fun b!6853448 () Bool)

(declare-fun res!2797039 () Bool)

(declare-fun e!4132501 () Bool)

(assert (=> b!6853448 (=> res!2797039 e!4132501)))

(assert (=> b!6853448 (= res!2797039 (not ((_ is Concat!25522) (ite c!1275606 (regTwo!33867 lt!2456308) (regTwo!33866 lt!2456308)))))))

(declare-fun e!4132502 () Bool)

(assert (=> b!6853448 (= e!4132502 e!4132501)))

(declare-fun b!6853449 () Bool)

(declare-fun res!2797040 () Bool)

(declare-fun e!4132496 () Bool)

(assert (=> b!6853449 (=> (not res!2797040) (not e!4132496))))

(declare-fun call!624268 () Bool)

(assert (=> b!6853449 (= res!2797040 call!624268)))

(assert (=> b!6853449 (= e!4132502 e!4132496)))

(declare-fun call!624269 () Bool)

(declare-fun bm!624263 () Bool)

(declare-fun c!1275794 () Bool)

(declare-fun c!1275793 () Bool)

(assert (=> bm!624263 (= call!624269 (validRegex!8413 (ite c!1275793 (reg!17006 (ite c!1275606 (regTwo!33867 lt!2456308) (regTwo!33866 lt!2456308))) (ite c!1275794 (regOne!33867 (ite c!1275606 (regTwo!33867 lt!2456308) (regTwo!33866 lt!2456308))) (regOne!33866 (ite c!1275606 (regTwo!33867 lt!2456308) (regTwo!33866 lt!2456308)))))))))

(declare-fun b!6853450 () Bool)

(declare-fun call!624270 () Bool)

(assert (=> b!6853450 (= e!4132496 call!624270)))

(declare-fun b!6853452 () Bool)

(declare-fun e!4132497 () Bool)

(declare-fun e!4132498 () Bool)

(assert (=> b!6853452 (= e!4132497 e!4132498)))

(assert (=> b!6853452 (= c!1275793 ((_ is Star!16677) (ite c!1275606 (regTwo!33867 lt!2456308) (regTwo!33866 lt!2456308))))))

(declare-fun b!6853453 () Bool)

(assert (=> b!6853453 (= e!4132498 e!4132502)))

(assert (=> b!6853453 (= c!1275794 ((_ is Union!16677) (ite c!1275606 (regTwo!33867 lt!2456308) (regTwo!33866 lt!2456308))))))

(declare-fun bm!624264 () Bool)

(assert (=> bm!624264 (= call!624268 call!624269)))

(declare-fun d!2153994 () Bool)

(declare-fun res!2797041 () Bool)

(assert (=> d!2153994 (=> res!2797041 e!4132497)))

(assert (=> d!2153994 (= res!2797041 ((_ is ElementMatch!16677) (ite c!1275606 (regTwo!33867 lt!2456308) (regTwo!33866 lt!2456308))))))

(assert (=> d!2153994 (= (validRegex!8413 (ite c!1275606 (regTwo!33867 lt!2456308) (regTwo!33866 lt!2456308))) e!4132497)))

(declare-fun b!6853451 () Bool)

(declare-fun e!4132499 () Bool)

(assert (=> b!6853451 (= e!4132498 e!4132499)))

(declare-fun res!2797042 () Bool)

(assert (=> b!6853451 (= res!2797042 (not (nullable!6640 (reg!17006 (ite c!1275606 (regTwo!33867 lt!2456308) (regTwo!33866 lt!2456308))))))))

(assert (=> b!6853451 (=> (not res!2797042) (not e!4132499))))

(declare-fun b!6853454 () Bool)

(assert (=> b!6853454 (= e!4132499 call!624269)))

(declare-fun bm!624265 () Bool)

(assert (=> bm!624265 (= call!624270 (validRegex!8413 (ite c!1275794 (regTwo!33867 (ite c!1275606 (regTwo!33867 lt!2456308) (regTwo!33866 lt!2456308))) (regTwo!33866 (ite c!1275606 (regTwo!33867 lt!2456308) (regTwo!33866 lt!2456308))))))))

(declare-fun b!6853455 () Bool)

(declare-fun e!4132500 () Bool)

(assert (=> b!6853455 (= e!4132500 call!624270)))

(declare-fun b!6853456 () Bool)

(assert (=> b!6853456 (= e!4132501 e!4132500)))

(declare-fun res!2797038 () Bool)

(assert (=> b!6853456 (=> (not res!2797038) (not e!4132500))))

(assert (=> b!6853456 (= res!2797038 call!624268)))

(assert (= (and d!2153994 (not res!2797041)) b!6853452))

(assert (= (and b!6853452 c!1275793) b!6853451))

(assert (= (and b!6853452 (not c!1275793)) b!6853453))

(assert (= (and b!6853451 res!2797042) b!6853454))

(assert (= (and b!6853453 c!1275794) b!6853449))

(assert (= (and b!6853453 (not c!1275794)) b!6853448))

(assert (= (and b!6853449 res!2797040) b!6853450))

(assert (= (and b!6853448 (not res!2797039)) b!6853456))

(assert (= (and b!6853456 res!2797038) b!6853455))

(assert (= (or b!6853450 b!6853455) bm!624265))

(assert (= (or b!6853449 b!6853456) bm!624264))

(assert (= (or b!6853454 bm!624264) bm!624263))

(declare-fun m!7591134 () Bool)

(assert (=> bm!624263 m!7591134))

(declare-fun m!7591136 () Bool)

(assert (=> b!6853451 m!7591136))

(declare-fun m!7591138 () Bool)

(assert (=> bm!624265 m!7591138))

(assert (=> bm!624160 d!2153994))

(declare-fun d!2153996 () Bool)

(assert (=> d!2153996 (= (isEmptyLang!2019 lt!2456375) ((_ is EmptyLang!16677) lt!2456375))))

(assert (=> b!6852950 d!2153996))

(declare-fun bs!1831953 () Bool)

(declare-fun d!2153998 () Bool)

(assert (= bs!1831953 (and d!2153998 d!2153732)))

(declare-fun lambda!387468 () Int)

(assert (=> bs!1831953 (not (= lambda!387468 lambda!387445))))

(declare-fun bs!1831954 () Bool)

(assert (= bs!1831954 (and d!2153998 d!2153730)))

(assert (=> bs!1831954 (not (= lambda!387468 lambda!387442))))

(declare-fun bs!1831955 () Bool)

(assert (= bs!1831955 (and d!2153998 d!2153496)))

(assert (=> bs!1831955 (not (= lambda!387468 lambda!387395))))

(declare-fun bs!1831956 () Bool)

(assert (= bs!1831956 (and d!2153998 d!2153882)))

(assert (=> bs!1831956 (not (= lambda!387468 lambda!387455))))

(declare-fun bs!1831957 () Bool)

(assert (= bs!1831957 (and d!2153998 d!2153498)))

(assert (=> bs!1831957 (not (= lambda!387468 lambda!387401))))

(declare-fun bs!1831958 () Bool)

(assert (= bs!1831958 (and d!2153998 d!2153918)))

(assert (=> bs!1831958 (not (= lambda!387468 lambda!387461))))

(declare-fun bs!1831959 () Bool)

(assert (= bs!1831959 (and d!2153998 d!2153748)))

(assert (=> bs!1831959 (= lambda!387468 lambda!387446)))

(declare-fun bs!1831960 () Bool)

(assert (= bs!1831960 (and d!2153998 d!2153764)))

(assert (=> bs!1831960 (= lambda!387468 lambda!387448)))

(declare-fun bs!1831961 () Bool)

(assert (= bs!1831961 (and d!2153998 d!2153770)))

(assert (=> bs!1831961 (= lambda!387468 lambda!387449)))

(declare-fun bs!1831962 () Bool)

(assert (= bs!1831962 (and d!2153998 d!2153758)))

(assert (=> bs!1831962 (= lambda!387468 lambda!387447)))

(declare-fun bs!1831963 () Bool)

(assert (= bs!1831963 (and d!2153998 d!2153502)))

(assert (=> bs!1831963 (= lambda!387468 lambda!387405)))

(declare-fun bs!1831964 () Bool)

(assert (= bs!1831964 (and d!2153998 d!2153902)))

(assert (=> bs!1831964 (= lambda!387468 lambda!387459)))

(declare-fun bs!1831965 () Bool)

(assert (= bs!1831965 (and d!2153998 d!2153480)))

(assert (=> bs!1831965 (= lambda!387468 lambda!387392)))

(declare-fun bs!1831966 () Bool)

(assert (= bs!1831966 (and d!2153998 d!2153712)))

(assert (=> bs!1831966 (= lambda!387468 lambda!387436)))

(declare-fun bs!1831967 () Bool)

(assert (= bs!1831967 (and d!2153998 d!2153840)))

(assert (=> bs!1831967 (= lambda!387468 lambda!387454)))

(declare-fun bs!1831968 () Bool)

(assert (= bs!1831968 (and d!2153998 d!2153894)))

(assert (=> bs!1831968 (= lambda!387468 lambda!387457)))

(declare-fun bs!1831969 () Bool)

(assert (= bs!1831969 (and d!2153998 d!2153794)))

(assert (=> bs!1831969 (= lambda!387468 lambda!387451)))

(declare-fun bs!1831970 () Bool)

(assert (= bs!1831970 (and d!2153998 d!2153932)))

(assert (=> bs!1831970 (= lambda!387468 lambda!387462)))

(declare-fun bs!1831971 () Bool)

(assert (= bs!1831971 (and d!2153998 d!2153724)))

(assert (=> bs!1831971 (= lambda!387468 lambda!387439)))

(declare-fun bs!1831972 () Bool)

(assert (= bs!1831972 (and d!2153998 b!6851566)))

(assert (=> bs!1831972 (not (= lambda!387468 lambda!387348))))

(declare-fun bs!1831973 () Bool)

(assert (= bs!1831973 (and d!2153998 d!2153500)))

(assert (=> bs!1831973 (= lambda!387468 lambda!387404)))

(declare-fun bs!1831974 () Bool)

(assert (= bs!1831974 (and d!2153998 d!2153968)))

(assert (=> bs!1831974 (= lambda!387468 lambda!387467)))

(assert (=> bs!1831957 (= lambda!387468 lambda!387400)))

(declare-fun bs!1831975 () Bool)

(assert (= bs!1831975 (and d!2153998 d!2153792)))

(assert (=> bs!1831975 (= lambda!387468 lambda!387450)))

(declare-fun e!4132507 () Bool)

(assert (=> d!2153998 e!4132507))

(declare-fun res!2797044 () Bool)

(assert (=> d!2153998 (=> (not res!2797044) (not e!4132507))))

(declare-fun lt!2456405 () Regex!16677)

(assert (=> d!2153998 (= res!2797044 (validRegex!8413 lt!2456405))))

(declare-fun e!4132506 () Regex!16677)

(assert (=> d!2153998 (= lt!2456405 e!4132506)))

(declare-fun c!1275798 () Bool)

(declare-fun e!4132504 () Bool)

(assert (=> d!2153998 (= c!1275798 e!4132504)))

(declare-fun res!2797043 () Bool)

(assert (=> d!2153998 (=> (not res!2797043) (not e!4132504))))

(assert (=> d!2153998 (= res!2797043 ((_ is Cons!66206) (t!380073 (unfocusZipperList!2094 zl!343))))))

(assert (=> d!2153998 (forall!15858 (t!380073 (unfocusZipperList!2094 zl!343)) lambda!387468)))

(assert (=> d!2153998 (= (generalisedUnion!2515 (t!380073 (unfocusZipperList!2094 zl!343))) lt!2456405)))

(declare-fun b!6853457 () Bool)

(declare-fun e!4132505 () Bool)

(assert (=> b!6853457 (= e!4132505 (= lt!2456405 (head!13734 (t!380073 (unfocusZipperList!2094 zl!343)))))))

(declare-fun b!6853458 () Bool)

(declare-fun e!4132508 () Regex!16677)

(assert (=> b!6853458 (= e!4132508 EmptyLang!16677)))

(declare-fun b!6853459 () Bool)

(declare-fun e!4132503 () Bool)

(assert (=> b!6853459 (= e!4132503 (isEmptyLang!2019 lt!2456405))))

(declare-fun b!6853460 () Bool)

(assert (=> b!6853460 (= e!4132506 (h!72654 (t!380073 (unfocusZipperList!2094 zl!343))))))

(declare-fun b!6853461 () Bool)

(assert (=> b!6853461 (= e!4132503 e!4132505)))

(declare-fun c!1275795 () Bool)

(assert (=> b!6853461 (= c!1275795 (isEmpty!38581 (tail!12810 (t!380073 (unfocusZipperList!2094 zl!343)))))))

(declare-fun b!6853462 () Bool)

(assert (=> b!6853462 (= e!4132507 e!4132503)))

(declare-fun c!1275797 () Bool)

(assert (=> b!6853462 (= c!1275797 (isEmpty!38581 (t!380073 (unfocusZipperList!2094 zl!343))))))

(declare-fun b!6853463 () Bool)

(assert (=> b!6853463 (= e!4132506 e!4132508)))

(declare-fun c!1275796 () Bool)

(assert (=> b!6853463 (= c!1275796 ((_ is Cons!66206) (t!380073 (unfocusZipperList!2094 zl!343))))))

(declare-fun b!6853464 () Bool)

(assert (=> b!6853464 (= e!4132508 (Union!16677 (h!72654 (t!380073 (unfocusZipperList!2094 zl!343))) (generalisedUnion!2515 (t!380073 (t!380073 (unfocusZipperList!2094 zl!343))))))))

(declare-fun b!6853465 () Bool)

(assert (=> b!6853465 (= e!4132504 (isEmpty!38581 (t!380073 (t!380073 (unfocusZipperList!2094 zl!343)))))))

(declare-fun b!6853466 () Bool)

(assert (=> b!6853466 (= e!4132505 (isUnion!1449 lt!2456405))))

(assert (= (and d!2153998 res!2797043) b!6853465))

(assert (= (and d!2153998 c!1275798) b!6853460))

(assert (= (and d!2153998 (not c!1275798)) b!6853463))

(assert (= (and b!6853463 c!1275796) b!6853464))

(assert (= (and b!6853463 (not c!1275796)) b!6853458))

(assert (= (and d!2153998 res!2797044) b!6853462))

(assert (= (and b!6853462 c!1275797) b!6853459))

(assert (= (and b!6853462 (not c!1275797)) b!6853461))

(assert (= (and b!6853461 c!1275795) b!6853457))

(assert (= (and b!6853461 (not c!1275795)) b!6853466))

(declare-fun m!7591154 () Bool)

(assert (=> b!6853466 m!7591154))

(declare-fun m!7591156 () Bool)

(assert (=> b!6853465 m!7591156))

(declare-fun m!7591158 () Bool)

(assert (=> b!6853459 m!7591158))

(declare-fun m!7591160 () Bool)

(assert (=> b!6853464 m!7591160))

(declare-fun m!7591162 () Bool)

(assert (=> b!6853457 m!7591162))

(declare-fun m!7591164 () Bool)

(assert (=> d!2153998 m!7591164))

(declare-fun m!7591166 () Bool)

(assert (=> d!2153998 m!7591166))

(assert (=> b!6853462 m!7590460))

(declare-fun m!7591168 () Bool)

(assert (=> b!6853461 m!7591168))

(assert (=> b!6853461 m!7591168))

(declare-fun m!7591170 () Bool)

(assert (=> b!6853461 m!7591170))

(assert (=> b!6852727 d!2153998))

(assert (=> bs!1831697 d!2153756))

(declare-fun bs!1831976 () Bool)

(declare-fun d!2154008 () Bool)

(assert (= bs!1831976 (and d!2154008 d!2153732)))

(declare-fun lambda!387469 () Int)

(assert (=> bs!1831976 (not (= lambda!387469 lambda!387445))))

(declare-fun bs!1831977 () Bool)

(assert (= bs!1831977 (and d!2154008 d!2153730)))

(assert (=> bs!1831977 (not (= lambda!387469 lambda!387442))))

(declare-fun bs!1831978 () Bool)

(assert (= bs!1831978 (and d!2154008 d!2153496)))

(assert (=> bs!1831978 (not (= lambda!387469 lambda!387395))))

(declare-fun bs!1831979 () Bool)

(assert (= bs!1831979 (and d!2154008 d!2153882)))

(assert (=> bs!1831979 (not (= lambda!387469 lambda!387455))))

(declare-fun bs!1831980 () Bool)

(assert (= bs!1831980 (and d!2154008 d!2153498)))

(assert (=> bs!1831980 (not (= lambda!387469 lambda!387401))))

(declare-fun bs!1831981 () Bool)

(assert (= bs!1831981 (and d!2154008 d!2153918)))

(assert (=> bs!1831981 (not (= lambda!387469 lambda!387461))))

(declare-fun bs!1831982 () Bool)

(assert (= bs!1831982 (and d!2154008 d!2153748)))

(assert (=> bs!1831982 (= lambda!387469 lambda!387446)))

(declare-fun bs!1831983 () Bool)

(assert (= bs!1831983 (and d!2154008 d!2153764)))

(assert (=> bs!1831983 (= lambda!387469 lambda!387448)))

(declare-fun bs!1831984 () Bool)

(assert (= bs!1831984 (and d!2154008 d!2153770)))

(assert (=> bs!1831984 (= lambda!387469 lambda!387449)))

(declare-fun bs!1831985 () Bool)

(assert (= bs!1831985 (and d!2154008 d!2153758)))

(assert (=> bs!1831985 (= lambda!387469 lambda!387447)))

(declare-fun bs!1831986 () Bool)

(assert (= bs!1831986 (and d!2154008 d!2153502)))

(assert (=> bs!1831986 (= lambda!387469 lambda!387405)))

(declare-fun bs!1831987 () Bool)

(assert (= bs!1831987 (and d!2154008 d!2153902)))

(assert (=> bs!1831987 (= lambda!387469 lambda!387459)))

(declare-fun bs!1831988 () Bool)

(assert (= bs!1831988 (and d!2154008 d!2153480)))

(assert (=> bs!1831988 (= lambda!387469 lambda!387392)))

(declare-fun bs!1831989 () Bool)

(assert (= bs!1831989 (and d!2154008 d!2153998)))

(assert (=> bs!1831989 (= lambda!387469 lambda!387468)))

(declare-fun bs!1831990 () Bool)

(assert (= bs!1831990 (and d!2154008 d!2153712)))

(assert (=> bs!1831990 (= lambda!387469 lambda!387436)))

(declare-fun bs!1831991 () Bool)

(assert (= bs!1831991 (and d!2154008 d!2153840)))

(assert (=> bs!1831991 (= lambda!387469 lambda!387454)))

(declare-fun bs!1831992 () Bool)

(assert (= bs!1831992 (and d!2154008 d!2153894)))

(assert (=> bs!1831992 (= lambda!387469 lambda!387457)))

(declare-fun bs!1831993 () Bool)

(assert (= bs!1831993 (and d!2154008 d!2153794)))

(assert (=> bs!1831993 (= lambda!387469 lambda!387451)))

(declare-fun bs!1831994 () Bool)

(assert (= bs!1831994 (and d!2154008 d!2153932)))

(assert (=> bs!1831994 (= lambda!387469 lambda!387462)))

(declare-fun bs!1831995 () Bool)

(assert (= bs!1831995 (and d!2154008 d!2153724)))

(assert (=> bs!1831995 (= lambda!387469 lambda!387439)))

(declare-fun bs!1831996 () Bool)

(assert (= bs!1831996 (and d!2154008 b!6851566)))

(assert (=> bs!1831996 (not (= lambda!387469 lambda!387348))))

(declare-fun bs!1831997 () Bool)

(assert (= bs!1831997 (and d!2154008 d!2153500)))

(assert (=> bs!1831997 (= lambda!387469 lambda!387404)))

(declare-fun bs!1831998 () Bool)

(assert (= bs!1831998 (and d!2154008 d!2153968)))

(assert (=> bs!1831998 (= lambda!387469 lambda!387467)))

(assert (=> bs!1831980 (= lambda!387469 lambda!387400)))

(declare-fun bs!1831999 () Bool)

(assert (= bs!1831999 (and d!2154008 d!2153792)))

(assert (=> bs!1831999 (= lambda!387469 lambda!387450)))

(assert (=> d!2154008 (= (inv!84939 (h!72655 res!2796871)) (forall!15858 (exprs!6561 (h!72655 res!2796871)) lambda!387469))))

(declare-fun bs!1832000 () Bool)

(assert (= bs!1832000 d!2154008))

(declare-fun m!7591178 () Bool)

(assert (=> bs!1832000 m!7591178))

(assert (=> b!6852936 d!2154008))

(declare-fun b!6853501 () Bool)

(declare-fun res!2797066 () Bool)

(declare-fun e!4132537 () Bool)

(assert (=> b!6853501 (=> res!2797066 e!4132537)))

(assert (=> b!6853501 (= res!2797066 (not ((_ is Concat!25522) lt!2456379)))))

(declare-fun e!4132538 () Bool)

(assert (=> b!6853501 (= e!4132538 e!4132537)))

(declare-fun b!6853502 () Bool)

(declare-fun res!2797067 () Bool)

(declare-fun e!4132532 () Bool)

(assert (=> b!6853502 (=> (not res!2797067) (not e!4132532))))

(declare-fun call!624278 () Bool)

(assert (=> b!6853502 (= res!2797067 call!624278)))

(assert (=> b!6853502 (= e!4132538 e!4132532)))

(declare-fun c!1275806 () Bool)

(declare-fun call!624279 () Bool)

(declare-fun c!1275807 () Bool)

(declare-fun bm!624273 () Bool)

(assert (=> bm!624273 (= call!624279 (validRegex!8413 (ite c!1275806 (reg!17006 lt!2456379) (ite c!1275807 (regOne!33867 lt!2456379) (regOne!33866 lt!2456379)))))))

(declare-fun b!6853503 () Bool)

(declare-fun call!624280 () Bool)

(assert (=> b!6853503 (= e!4132532 call!624280)))

(declare-fun b!6853505 () Bool)

(declare-fun e!4132533 () Bool)

(declare-fun e!4132534 () Bool)

(assert (=> b!6853505 (= e!4132533 e!4132534)))

(assert (=> b!6853505 (= c!1275806 ((_ is Star!16677) lt!2456379))))

(declare-fun b!6853506 () Bool)

(assert (=> b!6853506 (= e!4132534 e!4132538)))

(assert (=> b!6853506 (= c!1275807 ((_ is Union!16677) lt!2456379))))

(declare-fun bm!624274 () Bool)

(assert (=> bm!624274 (= call!624278 call!624279)))

(declare-fun d!2154012 () Bool)

(declare-fun res!2797068 () Bool)

(assert (=> d!2154012 (=> res!2797068 e!4132533)))

(assert (=> d!2154012 (= res!2797068 ((_ is ElementMatch!16677) lt!2456379))))

(assert (=> d!2154012 (= (validRegex!8413 lt!2456379) e!4132533)))

(declare-fun b!6853504 () Bool)

(declare-fun e!4132535 () Bool)

(assert (=> b!6853504 (= e!4132534 e!4132535)))

(declare-fun res!2797069 () Bool)

(assert (=> b!6853504 (= res!2797069 (not (nullable!6640 (reg!17006 lt!2456379))))))

(assert (=> b!6853504 (=> (not res!2797069) (not e!4132535))))

(declare-fun b!6853507 () Bool)

(assert (=> b!6853507 (= e!4132535 call!624279)))

(declare-fun bm!624275 () Bool)

(assert (=> bm!624275 (= call!624280 (validRegex!8413 (ite c!1275807 (regTwo!33867 lt!2456379) (regTwo!33866 lt!2456379))))))

(declare-fun b!6853508 () Bool)

(declare-fun e!4132536 () Bool)

(assert (=> b!6853508 (= e!4132536 call!624280)))

(declare-fun b!6853509 () Bool)

(assert (=> b!6853509 (= e!4132537 e!4132536)))

(declare-fun res!2797065 () Bool)

(assert (=> b!6853509 (=> (not res!2797065) (not e!4132536))))

(assert (=> b!6853509 (= res!2797065 call!624278)))

(assert (= (and d!2154012 (not res!2797068)) b!6853505))

(assert (= (and b!6853505 c!1275806) b!6853504))

(assert (= (and b!6853505 (not c!1275806)) b!6853506))

(assert (= (and b!6853504 res!2797069) b!6853507))

(assert (= (and b!6853506 c!1275807) b!6853502))

(assert (= (and b!6853506 (not c!1275807)) b!6853501))

(assert (= (and b!6853502 res!2797067) b!6853503))

(assert (= (and b!6853501 (not res!2797066)) b!6853509))

(assert (= (and b!6853509 res!2797065) b!6853508))

(assert (= (or b!6853503 b!6853508) bm!624275))

(assert (= (or b!6853502 b!6853509) bm!624274))

(assert (= (or b!6853507 bm!624274) bm!624273))

(declare-fun m!7591184 () Bool)

(assert (=> bm!624273 m!7591184))

(declare-fun m!7591186 () Bool)

(assert (=> b!6853504 m!7591186))

(declare-fun m!7591188 () Bool)

(assert (=> bm!624275 m!7591188))

(assert (=> bs!1831701 d!2154012))

(declare-fun b!6853510 () Bool)

(declare-fun res!2797071 () Bool)

(declare-fun e!4132544 () Bool)

(assert (=> b!6853510 (=> res!2797071 e!4132544)))

(assert (=> b!6853510 (= res!2797071 (not ((_ is Concat!25522) (ite c!1275665 (regTwo!33867 (h!72654 lt!2456210)) (regTwo!33866 (h!72654 lt!2456210))))))))

(declare-fun e!4132545 () Bool)

(assert (=> b!6853510 (= e!4132545 e!4132544)))

(declare-fun b!6853511 () Bool)

(declare-fun res!2797072 () Bool)

(declare-fun e!4132539 () Bool)

(assert (=> b!6853511 (=> (not res!2797072) (not e!4132539))))

(declare-fun call!624281 () Bool)

(assert (=> b!6853511 (= res!2797072 call!624281)))

(assert (=> b!6853511 (= e!4132545 e!4132539)))

(declare-fun call!624282 () Bool)

(declare-fun c!1275808 () Bool)

(declare-fun c!1275809 () Bool)

(declare-fun bm!624276 () Bool)

(assert (=> bm!624276 (= call!624282 (validRegex!8413 (ite c!1275808 (reg!17006 (ite c!1275665 (regTwo!33867 (h!72654 lt!2456210)) (regTwo!33866 (h!72654 lt!2456210)))) (ite c!1275809 (regOne!33867 (ite c!1275665 (regTwo!33867 (h!72654 lt!2456210)) (regTwo!33866 (h!72654 lt!2456210)))) (regOne!33866 (ite c!1275665 (regTwo!33867 (h!72654 lt!2456210)) (regTwo!33866 (h!72654 lt!2456210))))))))))

(declare-fun b!6853512 () Bool)

(declare-fun call!624283 () Bool)

(assert (=> b!6853512 (= e!4132539 call!624283)))

(declare-fun b!6853514 () Bool)

(declare-fun e!4132540 () Bool)

(declare-fun e!4132541 () Bool)

(assert (=> b!6853514 (= e!4132540 e!4132541)))

(assert (=> b!6853514 (= c!1275808 ((_ is Star!16677) (ite c!1275665 (regTwo!33867 (h!72654 lt!2456210)) (regTwo!33866 (h!72654 lt!2456210)))))))

(declare-fun b!6853515 () Bool)

(assert (=> b!6853515 (= e!4132541 e!4132545)))

(assert (=> b!6853515 (= c!1275809 ((_ is Union!16677) (ite c!1275665 (regTwo!33867 (h!72654 lt!2456210)) (regTwo!33866 (h!72654 lt!2456210)))))))

(declare-fun bm!624277 () Bool)

(assert (=> bm!624277 (= call!624281 call!624282)))

(declare-fun d!2154014 () Bool)

(declare-fun res!2797073 () Bool)

(assert (=> d!2154014 (=> res!2797073 e!4132540)))

(assert (=> d!2154014 (= res!2797073 ((_ is ElementMatch!16677) (ite c!1275665 (regTwo!33867 (h!72654 lt!2456210)) (regTwo!33866 (h!72654 lt!2456210)))))))

(assert (=> d!2154014 (= (validRegex!8413 (ite c!1275665 (regTwo!33867 (h!72654 lt!2456210)) (regTwo!33866 (h!72654 lt!2456210)))) e!4132540)))

(declare-fun b!6853513 () Bool)

(declare-fun e!4132542 () Bool)

(assert (=> b!6853513 (= e!4132541 e!4132542)))

(declare-fun res!2797074 () Bool)

(assert (=> b!6853513 (= res!2797074 (not (nullable!6640 (reg!17006 (ite c!1275665 (regTwo!33867 (h!72654 lt!2456210)) (regTwo!33866 (h!72654 lt!2456210)))))))))

(assert (=> b!6853513 (=> (not res!2797074) (not e!4132542))))

(declare-fun b!6853516 () Bool)

(assert (=> b!6853516 (= e!4132542 call!624282)))

(declare-fun bm!624278 () Bool)

(assert (=> bm!624278 (= call!624283 (validRegex!8413 (ite c!1275809 (regTwo!33867 (ite c!1275665 (regTwo!33867 (h!72654 lt!2456210)) (regTwo!33866 (h!72654 lt!2456210)))) (regTwo!33866 (ite c!1275665 (regTwo!33867 (h!72654 lt!2456210)) (regTwo!33866 (h!72654 lt!2456210)))))))))

(declare-fun b!6853517 () Bool)

(declare-fun e!4132543 () Bool)

(assert (=> b!6853517 (= e!4132543 call!624283)))

(declare-fun b!6853518 () Bool)

(assert (=> b!6853518 (= e!4132544 e!4132543)))

(declare-fun res!2797070 () Bool)

(assert (=> b!6853518 (=> (not res!2797070) (not e!4132543))))

(assert (=> b!6853518 (= res!2797070 call!624281)))

(assert (= (and d!2154014 (not res!2797073)) b!6853514))

(assert (= (and b!6853514 c!1275808) b!6853513))

(assert (= (and b!6853514 (not c!1275808)) b!6853515))

(assert (= (and b!6853513 res!2797074) b!6853516))

(assert (= (and b!6853515 c!1275809) b!6853511))

(assert (= (and b!6853515 (not c!1275809)) b!6853510))

(assert (= (and b!6853511 res!2797072) b!6853512))

(assert (= (and b!6853510 (not res!2797071)) b!6853518))

(assert (= (and b!6853518 res!2797070) b!6853517))

(assert (= (or b!6853512 b!6853517) bm!624278))

(assert (= (or b!6853511 b!6853518) bm!624277))

(assert (= (or b!6853516 bm!624277) bm!624276))

(declare-fun m!7591192 () Bool)

(assert (=> bm!624276 m!7591192))

(declare-fun m!7591194 () Bool)

(assert (=> b!6853513 m!7591194))

(declare-fun m!7591196 () Bool)

(assert (=> bm!624278 m!7591196))

(assert (=> bm!624183 d!2154014))

(declare-fun d!2154018 () Bool)

(declare-fun lt!2456407 () Int)

(assert (=> d!2154018 (>= lt!2456407 0)))

(declare-fun e!4132546 () Int)

(assert (=> d!2154018 (= lt!2456407 e!4132546)))

(declare-fun c!1275810 () Bool)

(assert (=> d!2154018 (= c!1275810 ((_ is Cons!66206) (exprs!6561 (h!72655 (t!380074 zl!343)))))))

(assert (=> d!2154018 (= (contextDepthTotal!404 (h!72655 (t!380074 zl!343))) lt!2456407)))

(declare-fun b!6853519 () Bool)

(assert (=> b!6853519 (= e!4132546 (+ (regexDepthTotal!251 (h!72654 (exprs!6561 (h!72655 (t!380074 zl!343))))) (contextDepthTotal!404 (Context!12123 (t!380073 (exprs!6561 (h!72655 (t!380074 zl!343))))))))))

(declare-fun b!6853520 () Bool)

(assert (=> b!6853520 (= e!4132546 1)))

(assert (= (and d!2154018 c!1275810) b!6853519))

(assert (= (and d!2154018 (not c!1275810)) b!6853520))

(declare-fun m!7591198 () Bool)

(assert (=> b!6853519 m!7591198))

(declare-fun m!7591200 () Bool)

(assert (=> b!6853519 m!7591200))

(assert (=> b!6852919 d!2154018))

(declare-fun d!2154020 () Bool)

(declare-fun lt!2456408 () Int)

(assert (=> d!2154020 (>= lt!2456408 0)))

(declare-fun e!4132547 () Int)

(assert (=> d!2154020 (= lt!2456408 e!4132547)))

(declare-fun c!1275811 () Bool)

(assert (=> d!2154020 (= c!1275811 ((_ is Cons!66207) (t!380074 (t!380074 zl!343))))))

(assert (=> d!2154020 (= (zipperDepthTotal!432 (t!380074 (t!380074 zl!343))) lt!2456408)))

(declare-fun b!6853521 () Bool)

(assert (=> b!6853521 (= e!4132547 (+ (contextDepthTotal!404 (h!72655 (t!380074 (t!380074 zl!343)))) (zipperDepthTotal!432 (t!380074 (t!380074 (t!380074 zl!343))))))))

(declare-fun b!6853522 () Bool)

(assert (=> b!6853522 (= e!4132547 0)))

(assert (= (and d!2154020 c!1275811) b!6853521))

(assert (= (and d!2154020 (not c!1275811)) b!6853522))

(declare-fun m!7591202 () Bool)

(assert (=> b!6853521 m!7591202))

(declare-fun m!7591204 () Bool)

(assert (=> b!6853521 m!7591204))

(assert (=> b!6852919 d!2154020))

(declare-fun b!6853523 () Bool)

(declare-fun e!4132550 () Context!12122)

(assert (=> b!6853523 (= e!4132550 (getWitness!950 (t!380074 (t!380074 (t!380074 zl!343))) lambda!387349))))

(declare-fun d!2154022 () Bool)

(declare-fun e!4132549 () Bool)

(assert (=> d!2154022 e!4132549))

(declare-fun res!2797075 () Bool)

(assert (=> d!2154022 (=> (not res!2797075) (not e!4132549))))

(declare-fun lt!2456410 () Context!12122)

(assert (=> d!2154022 (= res!2797075 (dynLambda!26466 lambda!387349 lt!2456410))))

(declare-fun e!4132548 () Context!12122)

(assert (=> d!2154022 (= lt!2456410 e!4132548)))

(declare-fun c!1275812 () Bool)

(declare-fun e!4132551 () Bool)

(assert (=> d!2154022 (= c!1275812 e!4132551)))

(declare-fun res!2797076 () Bool)

(assert (=> d!2154022 (=> (not res!2797076) (not e!4132551))))

(assert (=> d!2154022 (= res!2797076 ((_ is Cons!66207) (t!380074 (t!380074 zl!343))))))

(assert (=> d!2154022 (exists!2780 (t!380074 (t!380074 zl!343)) lambda!387349)))

(assert (=> d!2154022 (= (getWitness!950 (t!380074 (t!380074 zl!343)) lambda!387349) lt!2456410)))

(declare-fun b!6853524 () Bool)

(assert (=> b!6853524 (= e!4132551 (dynLambda!26466 lambda!387349 (h!72655 (t!380074 (t!380074 zl!343)))))))

(declare-fun b!6853525 () Bool)

(assert (=> b!6853525 (= e!4132548 (h!72655 (t!380074 (t!380074 zl!343))))))

(declare-fun b!6853526 () Bool)

(assert (=> b!6853526 (= e!4132549 (contains!20331 (t!380074 (t!380074 zl!343)) lt!2456410))))

(declare-fun b!6853527 () Bool)

(assert (=> b!6853527 (= e!4132548 e!4132550)))

(declare-fun c!1275813 () Bool)

(assert (=> b!6853527 (= c!1275813 ((_ is Cons!66207) (t!380074 (t!380074 zl!343))))))

(declare-fun b!6853528 () Bool)

(declare-fun lt!2456409 () Unit!160081)

(declare-fun Unit!160092 () Unit!160081)

(assert (=> b!6853528 (= lt!2456409 Unit!160092)))

(assert (=> b!6853528 false))

(assert (=> b!6853528 (= e!4132550 (head!13735 (t!380074 (t!380074 zl!343))))))

(assert (= (and d!2154022 res!2797076) b!6853524))

(assert (= (and d!2154022 c!1275812) b!6853525))

(assert (= (and d!2154022 (not c!1275812)) b!6853527))

(assert (= (and b!6853527 c!1275813) b!6853523))

(assert (= (and b!6853527 (not c!1275813)) b!6853528))

(assert (= (and d!2154022 res!2797075) b!6853526))

(declare-fun b_lambda!258799 () Bool)

(assert (=> (not b_lambda!258799) (not d!2154022)))

(declare-fun b_lambda!258801 () Bool)

(assert (=> (not b_lambda!258801) (not b!6853524)))

(declare-fun m!7591206 () Bool)

(assert (=> d!2154022 m!7591206))

(declare-fun m!7591208 () Bool)

(assert (=> d!2154022 m!7591208))

(declare-fun m!7591210 () Bool)

(assert (=> b!6853523 m!7591210))

(declare-fun m!7591212 () Bool)

(assert (=> b!6853526 m!7591212))

(declare-fun m!7591214 () Bool)

(assert (=> b!6853524 m!7591214))

(declare-fun m!7591216 () Bool)

(assert (=> b!6853528 m!7591216))

(assert (=> b!6852679 d!2154022))

(assert (=> d!2153716 d!2153672))

(assert (=> d!2153716 d!2153756))

(assert (=> b!6852732 d!2153718))

(assert (=> b!6852732 d!2153720))

(declare-fun b!6853529 () Bool)

(declare-fun res!2797078 () Bool)

(declare-fun e!4132557 () Bool)

(assert (=> b!6853529 (=> res!2797078 e!4132557)))

(assert (=> b!6853529 (= res!2797078 (not ((_ is Concat!25522) (ite c!1275639 (regTwo!33867 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))) (regTwo!33866 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209))))))))))

(declare-fun e!4132558 () Bool)

(assert (=> b!6853529 (= e!4132558 e!4132557)))

(declare-fun b!6853530 () Bool)

(declare-fun res!2797079 () Bool)

(declare-fun e!4132552 () Bool)

(assert (=> b!6853530 (=> (not res!2797079) (not e!4132552))))

(declare-fun call!624284 () Bool)

(assert (=> b!6853530 (= res!2797079 call!624284)))

(assert (=> b!6853530 (= e!4132558 e!4132552)))

(declare-fun c!1275814 () Bool)

(declare-fun bm!624279 () Bool)

(declare-fun call!624285 () Bool)

(declare-fun c!1275815 () Bool)

(assert (=> bm!624279 (= call!624285 (validRegex!8413 (ite c!1275814 (reg!17006 (ite c!1275639 (regTwo!33867 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))) (regTwo!33866 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))))) (ite c!1275815 (regOne!33867 (ite c!1275639 (regTwo!33867 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))) (regTwo!33866 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))))) (regOne!33866 (ite c!1275639 (regTwo!33867 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))) (regTwo!33866 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209))))))))))))

(declare-fun b!6853531 () Bool)

(declare-fun call!624286 () Bool)

(assert (=> b!6853531 (= e!4132552 call!624286)))

(declare-fun b!6853533 () Bool)

(declare-fun e!4132553 () Bool)

(declare-fun e!4132554 () Bool)

(assert (=> b!6853533 (= e!4132553 e!4132554)))

(assert (=> b!6853533 (= c!1275814 ((_ is Star!16677) (ite c!1275639 (regTwo!33867 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))) (regTwo!33866 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))))))))

(declare-fun b!6853534 () Bool)

(assert (=> b!6853534 (= e!4132554 e!4132558)))

(assert (=> b!6853534 (= c!1275815 ((_ is Union!16677) (ite c!1275639 (regTwo!33867 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))) (regTwo!33866 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))))))))

(declare-fun bm!624280 () Bool)

(assert (=> bm!624280 (= call!624284 call!624285)))

(declare-fun d!2154024 () Bool)

(declare-fun res!2797080 () Bool)

(assert (=> d!2154024 (=> res!2797080 e!4132553)))

(assert (=> d!2154024 (= res!2797080 ((_ is ElementMatch!16677) (ite c!1275639 (regTwo!33867 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))) (regTwo!33866 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))))))))

(assert (=> d!2154024 (= (validRegex!8413 (ite c!1275639 (regTwo!33867 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))) (regTwo!33866 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))))) e!4132553)))

(declare-fun b!6853532 () Bool)

(declare-fun e!4132555 () Bool)

(assert (=> b!6853532 (= e!4132554 e!4132555)))

(declare-fun res!2797081 () Bool)

(assert (=> b!6853532 (= res!2797081 (not (nullable!6640 (reg!17006 (ite c!1275639 (regTwo!33867 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))) (regTwo!33866 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))))))))))

(assert (=> b!6853532 (=> (not res!2797081) (not e!4132555))))

(declare-fun b!6853535 () Bool)

(assert (=> b!6853535 (= e!4132555 call!624285)))

(declare-fun bm!624281 () Bool)

(assert (=> bm!624281 (= call!624286 (validRegex!8413 (ite c!1275815 (regTwo!33867 (ite c!1275639 (regTwo!33867 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))) (regTwo!33866 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))))) (regTwo!33866 (ite c!1275639 (regTwo!33867 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))) (regTwo!33866 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))))))))))

(declare-fun b!6853536 () Bool)

(declare-fun e!4132556 () Bool)

(assert (=> b!6853536 (= e!4132556 call!624286)))

(declare-fun b!6853537 () Bool)

(assert (=> b!6853537 (= e!4132557 e!4132556)))

(declare-fun res!2797077 () Bool)

(assert (=> b!6853537 (=> (not res!2797077) (not e!4132556))))

(assert (=> b!6853537 (= res!2797077 call!624284)))

(assert (= (and d!2154024 (not res!2797080)) b!6853533))

(assert (= (and b!6853533 c!1275814) b!6853532))

(assert (= (and b!6853533 (not c!1275814)) b!6853534))

(assert (= (and b!6853532 res!2797081) b!6853535))

(assert (= (and b!6853534 c!1275815) b!6853530))

(assert (= (and b!6853534 (not c!1275815)) b!6853529))

(assert (= (and b!6853530 res!2797079) b!6853531))

(assert (= (and b!6853529 (not res!2797078)) b!6853537))

(assert (= (and b!6853537 res!2797077) b!6853536))

(assert (= (or b!6853531 b!6853536) bm!624281))

(assert (= (or b!6853530 b!6853537) bm!624280))

(assert (= (or b!6853535 bm!624280) bm!624279))

(declare-fun m!7591218 () Bool)

(assert (=> bm!624279 m!7591218))

(declare-fun m!7591220 () Bool)

(assert (=> b!6853532 m!7591220))

(declare-fun m!7591222 () Bool)

(assert (=> bm!624281 m!7591222))

(assert (=> bm!624166 d!2154024))

(declare-fun d!2154026 () Bool)

(assert (=> d!2154026 (= (Exists!3739 (ite c!1275636 lambda!387440 lambda!387441)) (choose!51065 (ite c!1275636 lambda!387440 lambda!387441)))))

(declare-fun bs!1832022 () Bool)

(assert (= bs!1832022 d!2154026))

(declare-fun m!7591224 () Bool)

(assert (=> bs!1832022 m!7591224))

(assert (=> bm!624163 d!2154026))

(declare-fun d!2154028 () Bool)

(assert (=> d!2154028 (= (head!13733 (tail!12808 s!2326)) (h!72656 (tail!12808 s!2326)))))

(assert (=> b!6852983 d!2154028))

(declare-fun d!2154030 () Bool)

(assert (=> d!2154030 (= (isEmpty!38581 (t!380073 (exprs!6561 (h!72655 zl!343)))) ((_ is Nil!66206) (t!380073 (exprs!6561 (h!72655 zl!343)))))))

(assert (=> b!6852771 d!2154030))

(assert (=> b!6852800 d!2153936))

(assert (=> b!6852800 d!2153940))

(declare-fun b!6853538 () Bool)

(declare-fun e!4132559 () Int)

(declare-fun e!4132560 () Int)

(assert (=> b!6853538 (= e!4132559 e!4132560)))

(declare-fun c!1275816 () Bool)

(assert (=> b!6853538 (= c!1275816 ((_ is Star!16677) (h!72654 (exprs!6561 (h!72655 lt!2456208)))))))

(declare-fun d!2154034 () Bool)

(declare-fun lt!2456411 () Int)

(assert (=> d!2154034 (> lt!2456411 0)))

(assert (=> d!2154034 (= lt!2456411 e!4132559)))

(declare-fun c!1275818 () Bool)

(assert (=> d!2154034 (= c!1275818 ((_ is ElementMatch!16677) (h!72654 (exprs!6561 (h!72655 lt!2456208)))))))

(assert (=> d!2154034 (= (regexDepthTotal!251 (h!72654 (exprs!6561 (h!72655 lt!2456208)))) lt!2456411)))

(declare-fun b!6853539 () Bool)

(assert (=> b!6853539 (= e!4132559 1)))

(declare-fun b!6853540 () Bool)

(declare-fun e!4132562 () Int)

(assert (=> b!6853540 (= e!4132562 1)))

(declare-fun bm!624282 () Bool)

(declare-fun call!624287 () Int)

(declare-fun call!624288 () Int)

(assert (=> bm!624282 (= call!624287 call!624288)))

(declare-fun b!6853541 () Bool)

(declare-fun c!1275819 () Bool)

(assert (=> b!6853541 (= c!1275819 ((_ is Union!16677) (h!72654 (exprs!6561 (h!72655 lt!2456208)))))))

(declare-fun e!4132561 () Int)

(assert (=> b!6853541 (= e!4132560 e!4132561)))

(declare-fun b!6853542 () Bool)

(assert (=> b!6853542 (= e!4132561 e!4132562)))

(declare-fun c!1275817 () Bool)

(assert (=> b!6853542 (= c!1275817 ((_ is Concat!25522) (h!72654 (exprs!6561 (h!72655 lt!2456208)))))))

(declare-fun b!6853543 () Bool)

(declare-fun call!624289 () Int)

(assert (=> b!6853543 (= e!4132561 (+ 1 call!624289 call!624287))))

(declare-fun b!6853544 () Bool)

(assert (=> b!6853544 (= e!4132562 (+ 1 call!624289 call!624287))))

(declare-fun bm!624283 () Bool)

(assert (=> bm!624283 (= call!624288 (regexDepthTotal!251 (ite c!1275816 (reg!17006 (h!72654 (exprs!6561 (h!72655 lt!2456208)))) (ite c!1275819 (regTwo!33867 (h!72654 (exprs!6561 (h!72655 lt!2456208)))) (regTwo!33866 (h!72654 (exprs!6561 (h!72655 lt!2456208))))))))))

(declare-fun bm!624284 () Bool)

(assert (=> bm!624284 (= call!624289 (regexDepthTotal!251 (ite c!1275819 (regOne!33867 (h!72654 (exprs!6561 (h!72655 lt!2456208)))) (regOne!33866 (h!72654 (exprs!6561 (h!72655 lt!2456208)))))))))

(declare-fun b!6853545 () Bool)

(assert (=> b!6853545 (= e!4132560 (+ 1 call!624288))))

(assert (= (and d!2154034 c!1275818) b!6853539))

(assert (= (and d!2154034 (not c!1275818)) b!6853538))

(assert (= (and b!6853538 c!1275816) b!6853545))

(assert (= (and b!6853538 (not c!1275816)) b!6853541))

(assert (= (and b!6853541 c!1275819) b!6853543))

(assert (= (and b!6853541 (not c!1275819)) b!6853542))

(assert (= (and b!6853542 c!1275817) b!6853544))

(assert (= (and b!6853542 (not c!1275817)) b!6853540))

(assert (= (or b!6853543 b!6853544) bm!624282))

(assert (= (or b!6853543 b!6853544) bm!624284))

(assert (= (or b!6853545 bm!624282) bm!624283))

(declare-fun m!7591230 () Bool)

(assert (=> bm!624283 m!7591230))

(declare-fun m!7591233 () Bool)

(assert (=> bm!624284 m!7591233))

(assert (=> b!6853012 d!2154034))

(declare-fun d!2154036 () Bool)

(declare-fun lt!2456412 () Int)

(assert (=> d!2154036 (>= lt!2456412 0)))

(declare-fun e!4132565 () Int)

(assert (=> d!2154036 (= lt!2456412 e!4132565)))

(declare-fun c!1275820 () Bool)

(assert (=> d!2154036 (= c!1275820 ((_ is Cons!66206) (exprs!6561 (Context!12123 (t!380073 (exprs!6561 (h!72655 lt!2456208)))))))))

(assert (=> d!2154036 (= (contextDepthTotal!404 (Context!12123 (t!380073 (exprs!6561 (h!72655 lt!2456208))))) lt!2456412)))

(declare-fun b!6853548 () Bool)

(assert (=> b!6853548 (= e!4132565 (+ (regexDepthTotal!251 (h!72654 (exprs!6561 (Context!12123 (t!380073 (exprs!6561 (h!72655 lt!2456208))))))) (contextDepthTotal!404 (Context!12123 (t!380073 (exprs!6561 (Context!12123 (t!380073 (exprs!6561 (h!72655 lt!2456208))))))))))))

(declare-fun b!6853549 () Bool)

(assert (=> b!6853549 (= e!4132565 1)))

(assert (= (and d!2154036 c!1275820) b!6853548))

(assert (= (and d!2154036 (not c!1275820)) b!6853549))

(declare-fun m!7591238 () Bool)

(assert (=> b!6853548 m!7591238))

(declare-fun m!7591240 () Bool)

(assert (=> b!6853548 m!7591240))

(assert (=> b!6853012 d!2154036))

(assert (=> d!2153736 d!2153718))

(declare-fun b!6853550 () Bool)

(declare-fun res!2797085 () Bool)

(declare-fun e!4132573 () Bool)

(assert (=> b!6853550 (=> res!2797085 e!4132573)))

(assert (=> b!6853550 (= res!2797085 (not ((_ is Concat!25522) (derivativeStep!5323 r!7292 (head!13733 s!2326)))))))

(declare-fun e!4132574 () Bool)

(assert (=> b!6853550 (= e!4132574 e!4132573)))

(declare-fun b!6853551 () Bool)

(declare-fun res!2797086 () Bool)

(declare-fun e!4132566 () Bool)

(assert (=> b!6853551 (=> (not res!2797086) (not e!4132566))))

(declare-fun call!624290 () Bool)

(assert (=> b!6853551 (= res!2797086 call!624290)))

(assert (=> b!6853551 (= e!4132574 e!4132566)))

(declare-fun c!1275821 () Bool)

(declare-fun bm!624285 () Bool)

(declare-fun c!1275822 () Bool)

(declare-fun call!624291 () Bool)

(assert (=> bm!624285 (= call!624291 (validRegex!8413 (ite c!1275821 (reg!17006 (derivativeStep!5323 r!7292 (head!13733 s!2326))) (ite c!1275822 (regOne!33867 (derivativeStep!5323 r!7292 (head!13733 s!2326))) (regOne!33866 (derivativeStep!5323 r!7292 (head!13733 s!2326)))))))))

(declare-fun b!6853552 () Bool)

(declare-fun call!624292 () Bool)

(assert (=> b!6853552 (= e!4132566 call!624292)))

(declare-fun b!6853554 () Bool)

(declare-fun e!4132568 () Bool)

(declare-fun e!4132569 () Bool)

(assert (=> b!6853554 (= e!4132568 e!4132569)))

(assert (=> b!6853554 (= c!1275821 ((_ is Star!16677) (derivativeStep!5323 r!7292 (head!13733 s!2326))))))

(declare-fun b!6853555 () Bool)

(assert (=> b!6853555 (= e!4132569 e!4132574)))

(assert (=> b!6853555 (= c!1275822 ((_ is Union!16677) (derivativeStep!5323 r!7292 (head!13733 s!2326))))))

(declare-fun bm!624286 () Bool)

(assert (=> bm!624286 (= call!624290 call!624291)))

(declare-fun d!2154042 () Bool)

(declare-fun res!2797087 () Bool)

(assert (=> d!2154042 (=> res!2797087 e!4132568)))

(assert (=> d!2154042 (= res!2797087 ((_ is ElementMatch!16677) (derivativeStep!5323 r!7292 (head!13733 s!2326))))))

(assert (=> d!2154042 (= (validRegex!8413 (derivativeStep!5323 r!7292 (head!13733 s!2326))) e!4132568)))

(declare-fun b!6853553 () Bool)

(declare-fun e!4132570 () Bool)

(assert (=> b!6853553 (= e!4132569 e!4132570)))

(declare-fun res!2797088 () Bool)

(assert (=> b!6853553 (= res!2797088 (not (nullable!6640 (reg!17006 (derivativeStep!5323 r!7292 (head!13733 s!2326))))))))

(assert (=> b!6853553 (=> (not res!2797088) (not e!4132570))))

(declare-fun b!6853556 () Bool)

(assert (=> b!6853556 (= e!4132570 call!624291)))

(declare-fun bm!624287 () Bool)

(assert (=> bm!624287 (= call!624292 (validRegex!8413 (ite c!1275822 (regTwo!33867 (derivativeStep!5323 r!7292 (head!13733 s!2326))) (regTwo!33866 (derivativeStep!5323 r!7292 (head!13733 s!2326))))))))

(declare-fun b!6853557 () Bool)

(declare-fun e!4132572 () Bool)

(assert (=> b!6853557 (= e!4132572 call!624292)))

(declare-fun b!6853558 () Bool)

(assert (=> b!6853558 (= e!4132573 e!4132572)))

(declare-fun res!2797084 () Bool)

(assert (=> b!6853558 (=> (not res!2797084) (not e!4132572))))

(assert (=> b!6853558 (= res!2797084 call!624290)))

(assert (= (and d!2154042 (not res!2797087)) b!6853554))

(assert (= (and b!6853554 c!1275821) b!6853553))

(assert (= (and b!6853554 (not c!1275821)) b!6853555))

(assert (= (and b!6853553 res!2797088) b!6853556))

(assert (= (and b!6853555 c!1275822) b!6853551))

(assert (= (and b!6853555 (not c!1275822)) b!6853550))

(assert (= (and b!6853551 res!2797086) b!6853552))

(assert (= (and b!6853550 (not res!2797085)) b!6853558))

(assert (= (and b!6853558 res!2797084) b!6853557))

(assert (= (or b!6853552 b!6853557) bm!624287))

(assert (= (or b!6853551 b!6853558) bm!624286))

(assert (= (or b!6853556 bm!624286) bm!624285))

(declare-fun m!7591242 () Bool)

(assert (=> bm!624285 m!7591242))

(declare-fun m!7591244 () Bool)

(assert (=> b!6853553 m!7591244))

(declare-fun m!7591246 () Bool)

(assert (=> bm!624287 m!7591246))

(assert (=> d!2153736 d!2154042))

(declare-fun d!2154044 () Bool)

(assert (=> d!2154044 (= (head!13735 (t!380074 zl!343)) (h!72655 (t!380074 zl!343)))))

(assert (=> b!6852684 d!2154044))

(declare-fun d!2154046 () Bool)

(declare-fun e!4132577 () Bool)

(assert (=> d!2154046 e!4132577))

(declare-fun c!1275827 () Bool)

(assert (=> d!2154046 (= c!1275827 ((_ is EmptyExpr!16677) (h!72654 (t!380073 lt!2456210))))))

(declare-fun lt!2456415 () Bool)

(declare-fun e!4132580 () Bool)

(assert (=> d!2154046 (= lt!2456415 e!4132580)))

(declare-fun c!1275826 () Bool)

(assert (=> d!2154046 (= c!1275826 (isEmpty!38579 s!2326))))

(assert (=> d!2154046 (validRegex!8413 (h!72654 (t!380073 lt!2456210)))))

(assert (=> d!2154046 (= (matchR!8860 (h!72654 (t!380073 lt!2456210)) s!2326) lt!2456415)))

(declare-fun b!6853565 () Bool)

(declare-fun res!2797096 () Bool)

(declare-fun e!4132579 () Bool)

(assert (=> b!6853565 (=> res!2797096 e!4132579)))

(assert (=> b!6853565 (= res!2797096 (not (isEmpty!38579 (tail!12808 s!2326))))))

(declare-fun b!6853566 () Bool)

(assert (=> b!6853566 (= e!4132580 (matchR!8860 (derivativeStep!5323 (h!72654 (t!380073 lt!2456210)) (head!13733 s!2326)) (tail!12808 s!2326)))))

(declare-fun b!6853567 () Bool)

(assert (=> b!6853567 (= e!4132579 (not (= (head!13733 s!2326) (c!1275345 (h!72654 (t!380073 lt!2456210))))))))

(declare-fun b!6853568 () Bool)

(declare-fun res!2797095 () Bool)

(declare-fun e!4132582 () Bool)

(assert (=> b!6853568 (=> (not res!2797095) (not e!4132582))))

(assert (=> b!6853568 (= res!2797095 (isEmpty!38579 (tail!12808 s!2326)))))

(declare-fun b!6853569 () Bool)

(declare-fun e!4132581 () Bool)

(declare-fun e!4132583 () Bool)

(assert (=> b!6853569 (= e!4132581 e!4132583)))

(declare-fun res!2797097 () Bool)

(assert (=> b!6853569 (=> (not res!2797097) (not e!4132583))))

(assert (=> b!6853569 (= res!2797097 (not lt!2456415))))

(declare-fun b!6853570 () Bool)

(declare-fun res!2797098 () Bool)

(assert (=> b!6853570 (=> res!2797098 e!4132581)))

(assert (=> b!6853570 (= res!2797098 e!4132582)))

(declare-fun res!2797094 () Bool)

(assert (=> b!6853570 (=> (not res!2797094) (not e!4132582))))

(assert (=> b!6853570 (= res!2797094 lt!2456415)))

(declare-fun b!6853571 () Bool)

(assert (=> b!6853571 (= e!4132583 e!4132579)))

(declare-fun res!2797092 () Bool)

(assert (=> b!6853571 (=> res!2797092 e!4132579)))

(declare-fun call!624293 () Bool)

(assert (=> b!6853571 (= res!2797092 call!624293)))

(declare-fun b!6853572 () Bool)

(assert (=> b!6853572 (= e!4132580 (nullable!6640 (h!72654 (t!380073 lt!2456210))))))

(declare-fun b!6853573 () Bool)

(declare-fun e!4132578 () Bool)

(assert (=> b!6853573 (= e!4132577 e!4132578)))

(declare-fun c!1275825 () Bool)

(assert (=> b!6853573 (= c!1275825 ((_ is EmptyLang!16677) (h!72654 (t!380073 lt!2456210))))))

(declare-fun b!6853574 () Bool)

(declare-fun res!2797093 () Bool)

(assert (=> b!6853574 (=> (not res!2797093) (not e!4132582))))

(assert (=> b!6853574 (= res!2797093 (not call!624293))))

(declare-fun b!6853575 () Bool)

(assert (=> b!6853575 (= e!4132577 (= lt!2456415 call!624293))))

(declare-fun bm!624288 () Bool)

(assert (=> bm!624288 (= call!624293 (isEmpty!38579 s!2326))))

(declare-fun b!6853576 () Bool)

(assert (=> b!6853576 (= e!4132578 (not lt!2456415))))

(declare-fun b!6853577 () Bool)

(assert (=> b!6853577 (= e!4132582 (= (head!13733 s!2326) (c!1275345 (h!72654 (t!380073 lt!2456210)))))))

(declare-fun b!6853578 () Bool)

(declare-fun res!2797091 () Bool)

(assert (=> b!6853578 (=> res!2797091 e!4132581)))

(assert (=> b!6853578 (= res!2797091 (not ((_ is ElementMatch!16677) (h!72654 (t!380073 lt!2456210)))))))

(assert (=> b!6853578 (= e!4132578 e!4132581)))

(assert (= (and d!2154046 c!1275826) b!6853572))

(assert (= (and d!2154046 (not c!1275826)) b!6853566))

(assert (= (and d!2154046 c!1275827) b!6853575))

(assert (= (and d!2154046 (not c!1275827)) b!6853573))

(assert (= (and b!6853573 c!1275825) b!6853576))

(assert (= (and b!6853573 (not c!1275825)) b!6853578))

(assert (= (and b!6853578 (not res!2797091)) b!6853570))

(assert (= (and b!6853570 res!2797094) b!6853574))

(assert (= (and b!6853574 res!2797093) b!6853568))

(assert (= (and b!6853568 res!2797095) b!6853577))

(assert (= (and b!6853570 (not res!2797098)) b!6853569))

(assert (= (and b!6853569 res!2797097) b!6853571))

(assert (= (and b!6853571 (not res!2797092)) b!6853565))

(assert (= (and b!6853565 (not res!2797096)) b!6853567))

(assert (= (or b!6853575 b!6853574 b!6853571) bm!624288))

(assert (=> d!2154046 m!7589856))

(assert (=> d!2154046 m!7590754))

(assert (=> b!6853566 m!7589900))

(assert (=> b!6853566 m!7589900))

(declare-fun m!7591260 () Bool)

(assert (=> b!6853566 m!7591260))

(assert (=> b!6853566 m!7589908))

(assert (=> b!6853566 m!7591260))

(assert (=> b!6853566 m!7589908))

(declare-fun m!7591262 () Bool)

(assert (=> b!6853566 m!7591262))

(assert (=> bm!624288 m!7589856))

(assert (=> b!6853567 m!7589900))

(assert (=> b!6853568 m!7589908))

(assert (=> b!6853568 m!7589908))

(assert (=> b!6853568 m!7589912))

(assert (=> b!6853577 m!7589900))

(declare-fun m!7591264 () Bool)

(assert (=> b!6853572 m!7591264))

(assert (=> b!6853565 m!7589908))

(assert (=> b!6853565 m!7589908))

(assert (=> b!6853565 m!7589912))

(assert (=> b!6853132 d!2154046))

(declare-fun d!2154050 () Bool)

(declare-fun c!1275829 () Bool)

(assert (=> d!2154050 (= c!1275829 ((_ is Nil!66206) (t!380073 lt!2456210)))))

(declare-fun e!4132585 () (InoxSet Regex!16677))

(assert (=> d!2154050 (= (content!12986 (t!380073 lt!2456210)) e!4132585)))

(declare-fun b!6853581 () Bool)

(assert (=> b!6853581 (= e!4132585 ((as const (Array Regex!16677 Bool)) false))))

(declare-fun b!6853582 () Bool)

(assert (=> b!6853582 (= e!4132585 ((_ map or) (store ((as const (Array Regex!16677 Bool)) false) (h!72654 (t!380073 lt!2456210)) true) (content!12986 (t!380073 (t!380073 lt!2456210)))))))

(assert (= (and d!2154050 c!1275829) b!6853581))

(assert (= (and d!2154050 (not c!1275829)) b!6853582))

(declare-fun m!7591270 () Bool)

(assert (=> b!6853582 m!7591270))

(declare-fun m!7591272 () Bool)

(assert (=> b!6853582 m!7591272))

(assert (=> b!6852855 d!2154050))

(declare-fun d!2154054 () Bool)

(assert (=> d!2154054 (= (isEmpty!38581 (t!380073 (exprs!6561 lt!2456307))) ((_ is Nil!66206) (t!380073 (exprs!6561 lt!2456307))))))

(assert (=> b!6852893 d!2154054))

(declare-fun d!2154056 () Bool)

(declare-fun res!2797099 () Bool)

(declare-fun e!4132587 () Bool)

(assert (=> d!2154056 (=> res!2797099 e!4132587)))

(assert (=> d!2154056 (= res!2797099 ((_ is Nil!66207) res!2796871))))

(assert (=> d!2154056 (= (noDuplicate!2443 res!2796871) e!4132587)))

(declare-fun b!6853585 () Bool)

(declare-fun e!4132588 () Bool)

(assert (=> b!6853585 (= e!4132587 e!4132588)))

(declare-fun res!2797100 () Bool)

(assert (=> b!6853585 (=> (not res!2797100) (not e!4132588))))

(assert (=> b!6853585 (= res!2797100 (not (contains!20331 (t!380074 res!2796871) (h!72655 res!2796871))))))

(declare-fun b!6853586 () Bool)

(assert (=> b!6853586 (= e!4132588 (noDuplicate!2443 (t!380074 res!2796871)))))

(assert (= (and d!2154056 (not res!2797099)) b!6853585))

(assert (= (and b!6853585 res!2797100) b!6853586))

(declare-fun m!7591274 () Bool)

(assert (=> b!6853585 m!7591274))

(declare-fun m!7591276 () Bool)

(assert (=> b!6853586 m!7591276))

(assert (=> d!2153788 d!2154056))

(declare-fun d!2154058 () Bool)

(declare-fun lt!2456418 () Bool)

(assert (=> d!2154058 (= lt!2456418 (select (content!12985 (t!380074 lt!2456274)) (h!72655 lt!2456274)))))

(declare-fun e!4132590 () Bool)

(assert (=> d!2154058 (= lt!2456418 e!4132590)))

(declare-fun res!2797101 () Bool)

(assert (=> d!2154058 (=> (not res!2797101) (not e!4132590))))

(assert (=> d!2154058 (= res!2797101 ((_ is Cons!66207) (t!380074 lt!2456274)))))

(assert (=> d!2154058 (= (contains!20331 (t!380074 lt!2456274) (h!72655 lt!2456274)) lt!2456418)))

(declare-fun b!6853587 () Bool)

(declare-fun e!4132589 () Bool)

(assert (=> b!6853587 (= e!4132590 e!4132589)))

(declare-fun res!2797102 () Bool)

(assert (=> b!6853587 (=> res!2797102 e!4132589)))

(assert (=> b!6853587 (= res!2797102 (= (h!72655 (t!380074 lt!2456274)) (h!72655 lt!2456274)))))

(declare-fun b!6853588 () Bool)

(assert (=> b!6853588 (= e!4132589 (contains!20331 (t!380074 (t!380074 lt!2456274)) (h!72655 lt!2456274)))))

(assert (= (and d!2154058 res!2797101) b!6853587))

(assert (= (and b!6853587 (not res!2797102)) b!6853588))

(assert (=> d!2154058 m!7590348))

(declare-fun m!7591282 () Bool)

(assert (=> d!2154058 m!7591282))

(declare-fun m!7591284 () Bool)

(assert (=> b!6853588 m!7591284))

(assert (=> b!6852902 d!2154058))

(declare-fun b!6853591 () Bool)

(declare-fun res!2797106 () Bool)

(declare-fun e!4132598 () Bool)

(assert (=> b!6853591 (=> res!2797106 e!4132598)))

(assert (=> b!6853591 (= res!2797106 (not ((_ is Concat!25522) (ite c!1275678 (reg!17006 lt!2456222) (ite c!1275679 (regOne!33867 lt!2456222) (regOne!33866 lt!2456222))))))))

(declare-fun e!4132599 () Bool)

(assert (=> b!6853591 (= e!4132599 e!4132598)))

(declare-fun b!6853592 () Bool)

(declare-fun res!2797107 () Bool)

(declare-fun e!4132593 () Bool)

(assert (=> b!6853592 (=> (not res!2797107) (not e!4132593))))

(declare-fun call!624294 () Bool)

(assert (=> b!6853592 (= res!2797107 call!624294)))

(assert (=> b!6853592 (= e!4132599 e!4132593)))

(declare-fun c!1275831 () Bool)

(declare-fun bm!624289 () Bool)

(declare-fun call!624295 () Bool)

(declare-fun c!1275832 () Bool)

(assert (=> bm!624289 (= call!624295 (validRegex!8413 (ite c!1275831 (reg!17006 (ite c!1275678 (reg!17006 lt!2456222) (ite c!1275679 (regOne!33867 lt!2456222) (regOne!33866 lt!2456222)))) (ite c!1275832 (regOne!33867 (ite c!1275678 (reg!17006 lt!2456222) (ite c!1275679 (regOne!33867 lt!2456222) (regOne!33866 lt!2456222)))) (regOne!33866 (ite c!1275678 (reg!17006 lt!2456222) (ite c!1275679 (regOne!33867 lt!2456222) (regOne!33866 lt!2456222))))))))))

(declare-fun b!6853593 () Bool)

(declare-fun call!624296 () Bool)

(assert (=> b!6853593 (= e!4132593 call!624296)))

(declare-fun b!6853595 () Bool)

(declare-fun e!4132594 () Bool)

(declare-fun e!4132595 () Bool)

(assert (=> b!6853595 (= e!4132594 e!4132595)))

(assert (=> b!6853595 (= c!1275831 ((_ is Star!16677) (ite c!1275678 (reg!17006 lt!2456222) (ite c!1275679 (regOne!33867 lt!2456222) (regOne!33866 lt!2456222)))))))

(declare-fun b!6853596 () Bool)

(assert (=> b!6853596 (= e!4132595 e!4132599)))

(assert (=> b!6853596 (= c!1275832 ((_ is Union!16677) (ite c!1275678 (reg!17006 lt!2456222) (ite c!1275679 (regOne!33867 lt!2456222) (regOne!33866 lt!2456222)))))))

(declare-fun bm!624290 () Bool)

(assert (=> bm!624290 (= call!624294 call!624295)))

(declare-fun d!2154062 () Bool)

(declare-fun res!2797108 () Bool)

(assert (=> d!2154062 (=> res!2797108 e!4132594)))

(assert (=> d!2154062 (= res!2797108 ((_ is ElementMatch!16677) (ite c!1275678 (reg!17006 lt!2456222) (ite c!1275679 (regOne!33867 lt!2456222) (regOne!33866 lt!2456222)))))))

(assert (=> d!2154062 (= (validRegex!8413 (ite c!1275678 (reg!17006 lt!2456222) (ite c!1275679 (regOne!33867 lt!2456222) (regOne!33866 lt!2456222)))) e!4132594)))

(declare-fun b!6853594 () Bool)

(declare-fun e!4132596 () Bool)

(assert (=> b!6853594 (= e!4132595 e!4132596)))

(declare-fun res!2797109 () Bool)

(assert (=> b!6853594 (= res!2797109 (not (nullable!6640 (reg!17006 (ite c!1275678 (reg!17006 lt!2456222) (ite c!1275679 (regOne!33867 lt!2456222) (regOne!33866 lt!2456222)))))))))

(assert (=> b!6853594 (=> (not res!2797109) (not e!4132596))))

(declare-fun b!6853597 () Bool)

(assert (=> b!6853597 (= e!4132596 call!624295)))

(declare-fun bm!624291 () Bool)

(assert (=> bm!624291 (= call!624296 (validRegex!8413 (ite c!1275832 (regTwo!33867 (ite c!1275678 (reg!17006 lt!2456222) (ite c!1275679 (regOne!33867 lt!2456222) (regOne!33866 lt!2456222)))) (regTwo!33866 (ite c!1275678 (reg!17006 lt!2456222) (ite c!1275679 (regOne!33867 lt!2456222) (regOne!33866 lt!2456222)))))))))

(declare-fun b!6853598 () Bool)

(declare-fun e!4132597 () Bool)

(assert (=> b!6853598 (= e!4132597 call!624296)))

(declare-fun b!6853599 () Bool)

(assert (=> b!6853599 (= e!4132598 e!4132597)))

(declare-fun res!2797105 () Bool)

(assert (=> b!6853599 (=> (not res!2797105) (not e!4132597))))

(assert (=> b!6853599 (= res!2797105 call!624294)))

(assert (= (and d!2154062 (not res!2797108)) b!6853595))

(assert (= (and b!6853595 c!1275831) b!6853594))

(assert (= (and b!6853595 (not c!1275831)) b!6853596))

(assert (= (and b!6853594 res!2797109) b!6853597))

(assert (= (and b!6853596 c!1275832) b!6853592))

(assert (= (and b!6853596 (not c!1275832)) b!6853591))

(assert (= (and b!6853592 res!2797107) b!6853593))

(assert (= (and b!6853591 (not res!2797106)) b!6853599))

(assert (= (and b!6853599 res!2797105) b!6853598))

(assert (= (or b!6853593 b!6853598) bm!624291))

(assert (= (or b!6853592 b!6853599) bm!624290))

(assert (= (or b!6853597 bm!624290) bm!624289))

(declare-fun m!7591290 () Bool)

(assert (=> bm!624289 m!7591290))

(declare-fun m!7591292 () Bool)

(assert (=> b!6853594 m!7591292))

(declare-fun m!7591294 () Bool)

(assert (=> bm!624291 m!7591294))

(assert (=> bm!624190 d!2154062))

(declare-fun d!2154066 () Bool)

(assert (=> d!2154066 (= (isConcat!1531 lt!2456370) ((_ is Concat!25522) lt!2456370))))

(assert (=> b!6852889 d!2154066))

(declare-fun d!2154068 () Bool)

(declare-fun c!1275835 () Bool)

(assert (=> d!2154068 (= c!1275835 ((_ is Nil!66207) zl!343))))

(declare-fun e!4132607 () (InoxSet Context!12122))

(assert (=> d!2154068 (= (content!12985 zl!343) e!4132607)))

(declare-fun b!6853609 () Bool)

(assert (=> b!6853609 (= e!4132607 ((as const (Array Context!12122 Bool)) false))))

(declare-fun b!6853610 () Bool)

(assert (=> b!6853610 (= e!4132607 ((_ map or) (store ((as const (Array Context!12122 Bool)) false) (h!72655 zl!343) true) (content!12985 (t!380074 zl!343))))))

(assert (= (and d!2154068 c!1275835) b!6853609))

(assert (= (and d!2154068 (not c!1275835)) b!6853610))

(declare-fun m!7591296 () Bool)

(assert (=> b!6853610 m!7591296))

(assert (=> b!6853610 m!7590812))

(assert (=> d!2153784 d!2154068))

(declare-fun d!2154070 () Bool)

(declare-fun res!2797115 () Bool)

(declare-fun e!4132608 () Bool)

(assert (=> d!2154070 (=> res!2797115 e!4132608)))

(assert (=> d!2154070 (= res!2797115 ((_ is Nil!66206) (t!380073 lt!2456210)))))

(assert (=> d!2154070 (= (forall!15858 (t!380073 lt!2456210) lambda!387395) e!4132608)))

(declare-fun b!6853611 () Bool)

(declare-fun e!4132609 () Bool)

(assert (=> b!6853611 (= e!4132608 e!4132609)))

(declare-fun res!2797116 () Bool)

(assert (=> b!6853611 (=> (not res!2797116) (not e!4132609))))

(assert (=> b!6853611 (= res!2797116 (dynLambda!26464 lambda!387395 (h!72654 (t!380073 lt!2456210))))))

(declare-fun b!6853612 () Bool)

(assert (=> b!6853612 (= e!4132609 (forall!15858 (t!380073 (t!380073 lt!2456210)) lambda!387395))))

(assert (= (and d!2154070 (not res!2797115)) b!6853611))

(assert (= (and b!6853611 res!2797116) b!6853612))

(declare-fun b_lambda!258809 () Bool)

(assert (=> (not b_lambda!258809) (not b!6853611)))

(declare-fun m!7591302 () Bool)

(assert (=> b!6853611 m!7591302))

(declare-fun m!7591306 () Bool)

(assert (=> b!6853612 m!7591306))

(assert (=> b!6852731 d!2154070))

(declare-fun d!2154074 () Bool)

(declare-fun res!2797117 () Bool)

(declare-fun e!4132610 () Bool)

(assert (=> d!2154074 (=> res!2797117 e!4132610)))

(assert (=> d!2154074 (= res!2797117 ((_ is Nil!66206) (exprs!6561 setElem!47103)))))

(assert (=> d!2154074 (= (forall!15858 (exprs!6561 setElem!47103) lambda!387446) e!4132610)))

(declare-fun b!6853613 () Bool)

(declare-fun e!4132611 () Bool)

(assert (=> b!6853613 (= e!4132610 e!4132611)))

(declare-fun res!2797118 () Bool)

(assert (=> b!6853613 (=> (not res!2797118) (not e!4132611))))

(assert (=> b!6853613 (= res!2797118 (dynLambda!26464 lambda!387446 (h!72654 (exprs!6561 setElem!47103))))))

(declare-fun b!6853614 () Bool)

(assert (=> b!6853614 (= e!4132611 (forall!15858 (t!380073 (exprs!6561 setElem!47103)) lambda!387446))))

(assert (= (and d!2154074 (not res!2797117)) b!6853613))

(assert (= (and b!6853613 res!2797118) b!6853614))

(declare-fun b_lambda!258811 () Bool)

(assert (=> (not b_lambda!258811) (not b!6853613)))

(declare-fun m!7591308 () Bool)

(assert (=> b!6853613 m!7591308))

(declare-fun m!7591310 () Bool)

(assert (=> b!6853614 m!7591310))

(assert (=> d!2153748 d!2154074))

(declare-fun bs!1832025 () Bool)

(declare-fun b!6853627 () Bool)

(assert (= bs!1832025 (and b!6853627 b!6852782)))

(declare-fun lambda!387471 () Int)

(assert (=> bs!1832025 (not (= lambda!387471 lambda!387441))))

(declare-fun bs!1832026 () Bool)

(assert (= bs!1832026 (and b!6853627 b!6851816)))

(assert (=> bs!1832026 (not (= lambda!387471 lambda!387380))))

(declare-fun bs!1832027 () Bool)

(assert (= bs!1832027 (and b!6853627 b!6852966)))

(assert (=> bs!1832027 (not (= lambda!387471 lambda!387453))))

(declare-fun bs!1832028 () Bool)

(assert (= bs!1832028 (and b!6853627 b!6851820)))

(assert (=> bs!1832028 (= (and (= (reg!17006 (regOne!33867 (regOne!33867 r!7292))) (reg!17006 r!7292)) (= (regOne!33867 (regOne!33867 r!7292)) r!7292)) (= lambda!387471 lambda!387379))))

(declare-fun bs!1832029 () Bool)

(assert (= bs!1832029 (and b!6853627 b!6853369)))

(assert (=> bs!1832029 (not (= lambda!387471 lambda!387465))))

(declare-fun bs!1832030 () Bool)

(assert (= bs!1832030 (and b!6853627 b!6852970)))

(assert (=> bs!1832030 (= (and (= (reg!17006 (regOne!33867 (regOne!33867 r!7292))) (reg!17006 (regTwo!33867 r!7292))) (= (regOne!33867 (regOne!33867 r!7292)) (regTwo!33867 r!7292))) (= lambda!387471 lambda!387452))))

(declare-fun bs!1832031 () Bool)

(assert (= bs!1832031 (and b!6853627 b!6852786)))

(assert (=> bs!1832031 (= (and (= (reg!17006 (regOne!33867 (regOne!33867 r!7292))) (reg!17006 (regOne!33867 r!7292))) (= (regOne!33867 (regOne!33867 r!7292)) (regOne!33867 r!7292))) (= lambda!387471 lambda!387440))))

(declare-fun bs!1832032 () Bool)

(assert (= bs!1832032 (and b!6853627 b!6853373)))

(assert (=> bs!1832032 (= (and (= (reg!17006 (regOne!33867 (regOne!33867 r!7292))) (reg!17006 (regTwo!33867 (regOne!33867 r!7292)))) (= (regOne!33867 (regOne!33867 r!7292)) (regTwo!33867 (regOne!33867 r!7292)))) (= lambda!387471 lambda!387464))))

(assert (=> b!6853627 true))

(assert (=> b!6853627 true))

(declare-fun bs!1832033 () Bool)

(declare-fun b!6853623 () Bool)

(assert (= bs!1832033 (and b!6853623 b!6852782)))

(declare-fun lambda!387472 () Int)

(assert (=> bs!1832033 (= (and (= (regOne!33866 (regOne!33867 (regOne!33867 r!7292))) (regOne!33866 (regOne!33867 r!7292))) (= (regTwo!33866 (regOne!33867 (regOne!33867 r!7292))) (regTwo!33866 (regOne!33867 r!7292)))) (= lambda!387472 lambda!387441))))

(declare-fun bs!1832034 () Bool)

(assert (= bs!1832034 (and b!6853623 b!6851816)))

(assert (=> bs!1832034 (= (and (= (regOne!33866 (regOne!33867 (regOne!33867 r!7292))) (regOne!33866 r!7292)) (= (regTwo!33866 (regOne!33867 (regOne!33867 r!7292))) (regTwo!33866 r!7292))) (= lambda!387472 lambda!387380))))

(declare-fun bs!1832035 () Bool)

(assert (= bs!1832035 (and b!6853623 b!6852966)))

(assert (=> bs!1832035 (= (and (= (regOne!33866 (regOne!33867 (regOne!33867 r!7292))) (regOne!33866 (regTwo!33867 r!7292))) (= (regTwo!33866 (regOne!33867 (regOne!33867 r!7292))) (regTwo!33866 (regTwo!33867 r!7292)))) (= lambda!387472 lambda!387453))))

(declare-fun bs!1832036 () Bool)

(assert (= bs!1832036 (and b!6853623 b!6853627)))

(assert (=> bs!1832036 (not (= lambda!387472 lambda!387471))))

(declare-fun bs!1832037 () Bool)

(assert (= bs!1832037 (and b!6853623 b!6851820)))

(assert (=> bs!1832037 (not (= lambda!387472 lambda!387379))))

(declare-fun bs!1832039 () Bool)

(assert (= bs!1832039 (and b!6853623 b!6853369)))

(assert (=> bs!1832039 (= (and (= (regOne!33866 (regOne!33867 (regOne!33867 r!7292))) (regOne!33866 (regTwo!33867 (regOne!33867 r!7292)))) (= (regTwo!33866 (regOne!33867 (regOne!33867 r!7292))) (regTwo!33866 (regTwo!33867 (regOne!33867 r!7292))))) (= lambda!387472 lambda!387465))))

(declare-fun bs!1832040 () Bool)

(assert (= bs!1832040 (and b!6853623 b!6852970)))

(assert (=> bs!1832040 (not (= lambda!387472 lambda!387452))))

(declare-fun bs!1832042 () Bool)

(assert (= bs!1832042 (and b!6853623 b!6852786)))

(assert (=> bs!1832042 (not (= lambda!387472 lambda!387440))))

(declare-fun bs!1832044 () Bool)

(assert (= bs!1832044 (and b!6853623 b!6853373)))

(assert (=> bs!1832044 (not (= lambda!387472 lambda!387464))))

(assert (=> b!6853623 true))

(assert (=> b!6853623 true))

(declare-fun b!6853617 () Bool)

(declare-fun c!1275839 () Bool)

(assert (=> b!6853617 (= c!1275839 ((_ is Union!16677) (regOne!33867 (regOne!33867 r!7292))))))

(declare-fun e!4132617 () Bool)

(declare-fun e!4132615 () Bool)

(assert (=> b!6853617 (= e!4132617 e!4132615)))

(declare-fun b!6853618 () Bool)

(declare-fun c!1275836 () Bool)

(assert (=> b!6853618 (= c!1275836 ((_ is ElementMatch!16677) (regOne!33867 (regOne!33867 r!7292))))))

(declare-fun e!4132618 () Bool)

(assert (=> b!6853618 (= e!4132618 e!4132617)))

(declare-fun b!6853619 () Bool)

(declare-fun e!4132620 () Bool)

(assert (=> b!6853619 (= e!4132615 e!4132620)))

(declare-fun c!1275838 () Bool)

(assert (=> b!6853619 (= c!1275838 ((_ is Star!16677) (regOne!33867 (regOne!33867 r!7292))))))

(declare-fun b!6853620 () Bool)

(declare-fun e!4132616 () Bool)

(assert (=> b!6853620 (= e!4132616 (matchRSpec!3778 (regTwo!33867 (regOne!33867 (regOne!33867 r!7292))) s!2326))))

(declare-fun b!6853621 () Bool)

(assert (=> b!6853621 (= e!4132615 e!4132616)))

(declare-fun res!2797123 () Bool)

(assert (=> b!6853621 (= res!2797123 (matchRSpec!3778 (regOne!33867 (regOne!33867 (regOne!33867 r!7292))) s!2326))))

(assert (=> b!6853621 (=> res!2797123 e!4132616)))

(declare-fun b!6853622 () Bool)

(declare-fun e!4132614 () Bool)

(declare-fun call!624301 () Bool)

(assert (=> b!6853622 (= e!4132614 call!624301)))

(declare-fun b!6853624 () Bool)

(assert (=> b!6853624 (= e!4132617 (= s!2326 (Cons!66208 (c!1275345 (regOne!33867 (regOne!33867 r!7292))) Nil!66208)))))

(declare-fun bm!624295 () Bool)

(assert (=> bm!624295 (= call!624301 (isEmpty!38579 s!2326))))

(declare-fun b!6853625 () Bool)

(assert (=> b!6853625 (= e!4132614 e!4132618)))

(declare-fun res!2797121 () Bool)

(assert (=> b!6853625 (= res!2797121 (not ((_ is EmptyLang!16677) (regOne!33867 (regOne!33867 r!7292)))))))

(assert (=> b!6853625 (=> (not res!2797121) (not e!4132618))))

(declare-fun b!6853626 () Bool)

(declare-fun res!2797122 () Bool)

(declare-fun e!4132619 () Bool)

(assert (=> b!6853626 (=> res!2797122 e!4132619)))

(assert (=> b!6853626 (= res!2797122 call!624301)))

(assert (=> b!6853626 (= e!4132620 e!4132619)))

(declare-fun call!624300 () Bool)

(assert (=> b!6853623 (= e!4132620 call!624300)))

(declare-fun d!2154076 () Bool)

(declare-fun c!1275837 () Bool)

(assert (=> d!2154076 (= c!1275837 ((_ is EmptyExpr!16677) (regOne!33867 (regOne!33867 r!7292))))))

(assert (=> d!2154076 (= (matchRSpec!3778 (regOne!33867 (regOne!33867 r!7292)) s!2326) e!4132614)))

(assert (=> b!6853627 (= e!4132619 call!624300)))

(declare-fun bm!624296 () Bool)

(assert (=> bm!624296 (= call!624300 (Exists!3739 (ite c!1275838 lambda!387471 lambda!387472)))))

(assert (= (and d!2154076 c!1275837) b!6853622))

(assert (= (and d!2154076 (not c!1275837)) b!6853625))

(assert (= (and b!6853625 res!2797121) b!6853618))

(assert (= (and b!6853618 c!1275836) b!6853624))

(assert (= (and b!6853618 (not c!1275836)) b!6853617))

(assert (= (and b!6853617 c!1275839) b!6853621))

(assert (= (and b!6853617 (not c!1275839)) b!6853619))

(assert (= (and b!6853621 (not res!2797123)) b!6853620))

(assert (= (and b!6853619 c!1275838) b!6853626))

(assert (= (and b!6853619 (not c!1275838)) b!6853623))

(assert (= (and b!6853626 (not res!2797122)) b!6853627))

(assert (= (or b!6853627 b!6853623) bm!624296))

(assert (= (or b!6853622 b!6853626) bm!624295))

(declare-fun m!7591326 () Bool)

(assert (=> b!6853620 m!7591326))

(declare-fun m!7591328 () Bool)

(assert (=> b!6853621 m!7591328))

(assert (=> bm!624295 m!7589856))

(declare-fun m!7591330 () Bool)

(assert (=> bm!624296 m!7591330))

(assert (=> b!6852780 d!2154076))

(declare-fun b!6853649 () Bool)

(declare-fun res!2797134 () Bool)

(declare-fun e!4132641 () Bool)

(assert (=> b!6853649 (=> res!2797134 e!4132641)))

(assert (=> b!6853649 (= res!2797134 (not ((_ is Concat!25522) (ite c!1275676 (regTwo!33867 lt!2456284) (regTwo!33866 lt!2456284)))))))

(declare-fun e!4132642 () Bool)

(assert (=> b!6853649 (= e!4132642 e!4132641)))

(declare-fun b!6853650 () Bool)

(declare-fun res!2797135 () Bool)

(declare-fun e!4132636 () Bool)

(assert (=> b!6853650 (=> (not res!2797135) (not e!4132636))))

(declare-fun call!624305 () Bool)

(assert (=> b!6853650 (= res!2797135 call!624305)))

(assert (=> b!6853650 (= e!4132642 e!4132636)))

(declare-fun c!1275846 () Bool)

(declare-fun c!1275847 () Bool)

(declare-fun bm!624300 () Bool)

(declare-fun call!624306 () Bool)

(assert (=> bm!624300 (= call!624306 (validRegex!8413 (ite c!1275846 (reg!17006 (ite c!1275676 (regTwo!33867 lt!2456284) (regTwo!33866 lt!2456284))) (ite c!1275847 (regOne!33867 (ite c!1275676 (regTwo!33867 lt!2456284) (regTwo!33866 lt!2456284))) (regOne!33866 (ite c!1275676 (regTwo!33867 lt!2456284) (regTwo!33866 lt!2456284)))))))))

(declare-fun b!6853651 () Bool)

(declare-fun call!624307 () Bool)

(assert (=> b!6853651 (= e!4132636 call!624307)))

(declare-fun b!6853653 () Bool)

(declare-fun e!4132637 () Bool)

(declare-fun e!4132638 () Bool)

(assert (=> b!6853653 (= e!4132637 e!4132638)))

(assert (=> b!6853653 (= c!1275846 ((_ is Star!16677) (ite c!1275676 (regTwo!33867 lt!2456284) (regTwo!33866 lt!2456284))))))

(declare-fun b!6853654 () Bool)

(assert (=> b!6853654 (= e!4132638 e!4132642)))

(assert (=> b!6853654 (= c!1275847 ((_ is Union!16677) (ite c!1275676 (regTwo!33867 lt!2456284) (regTwo!33866 lt!2456284))))))

(declare-fun bm!624301 () Bool)

(assert (=> bm!624301 (= call!624305 call!624306)))

(declare-fun d!2154084 () Bool)

(declare-fun res!2797136 () Bool)

(assert (=> d!2154084 (=> res!2797136 e!4132637)))

(assert (=> d!2154084 (= res!2797136 ((_ is ElementMatch!16677) (ite c!1275676 (regTwo!33867 lt!2456284) (regTwo!33866 lt!2456284))))))

(assert (=> d!2154084 (= (validRegex!8413 (ite c!1275676 (regTwo!33867 lt!2456284) (regTwo!33866 lt!2456284))) e!4132637)))

(declare-fun b!6853652 () Bool)

(declare-fun e!4132639 () Bool)

(assert (=> b!6853652 (= e!4132638 e!4132639)))

(declare-fun res!2797137 () Bool)

(assert (=> b!6853652 (= res!2797137 (not (nullable!6640 (reg!17006 (ite c!1275676 (regTwo!33867 lt!2456284) (regTwo!33866 lt!2456284))))))))

(assert (=> b!6853652 (=> (not res!2797137) (not e!4132639))))

(declare-fun b!6853655 () Bool)

(assert (=> b!6853655 (= e!4132639 call!624306)))

(declare-fun bm!624302 () Bool)

(assert (=> bm!624302 (= call!624307 (validRegex!8413 (ite c!1275847 (regTwo!33867 (ite c!1275676 (regTwo!33867 lt!2456284) (regTwo!33866 lt!2456284))) (regTwo!33866 (ite c!1275676 (regTwo!33867 lt!2456284) (regTwo!33866 lt!2456284))))))))

(declare-fun b!6853656 () Bool)

(declare-fun e!4132640 () Bool)

(assert (=> b!6853656 (= e!4132640 call!624307)))

(declare-fun b!6853657 () Bool)

(assert (=> b!6853657 (= e!4132641 e!4132640)))

(declare-fun res!2797133 () Bool)

(assert (=> b!6853657 (=> (not res!2797133) (not e!4132640))))

(assert (=> b!6853657 (= res!2797133 call!624305)))

(assert (= (and d!2154084 (not res!2797136)) b!6853653))

(assert (= (and b!6853653 c!1275846) b!6853652))

(assert (= (and b!6853653 (not c!1275846)) b!6853654))

(assert (= (and b!6853652 res!2797137) b!6853655))

(assert (= (and b!6853654 c!1275847) b!6853650))

(assert (= (and b!6853654 (not c!1275847)) b!6853649))

(assert (= (and b!6853650 res!2797135) b!6853651))

(assert (= (and b!6853649 (not res!2797134)) b!6853657))

(assert (= (and b!6853657 res!2797133) b!6853656))

(assert (= (or b!6853651 b!6853656) bm!624302))

(assert (= (or b!6853650 b!6853657) bm!624301))

(assert (= (or b!6853655 bm!624301) bm!624300))

(declare-fun m!7591332 () Bool)

(assert (=> bm!624300 m!7591332))

(declare-fun m!7591334 () Bool)

(assert (=> b!6853652 m!7591334))

(declare-fun m!7591336 () Bool)

(assert (=> bm!624302 m!7591336))

(assert (=> bm!624189 d!2154084))

(declare-fun d!2154086 () Bool)

(declare-fun e!4132643 () Bool)

(assert (=> d!2154086 e!4132643))

(declare-fun c!1275850 () Bool)

(assert (=> d!2154086 (= c!1275850 ((_ is EmptyExpr!16677) (derivativeStep!5323 (derivativeStep!5323 lt!2456209 (head!13733 s!2326)) (head!13733 (tail!12808 s!2326)))))))

(declare-fun lt!2456420 () Bool)

(declare-fun e!4132646 () Bool)

(assert (=> d!2154086 (= lt!2456420 e!4132646)))

(declare-fun c!1275849 () Bool)

(assert (=> d!2154086 (= c!1275849 (isEmpty!38579 (tail!12808 (tail!12808 s!2326))))))

(assert (=> d!2154086 (validRegex!8413 (derivativeStep!5323 (derivativeStep!5323 lt!2456209 (head!13733 s!2326)) (head!13733 (tail!12808 s!2326))))))

(assert (=> d!2154086 (= (matchR!8860 (derivativeStep!5323 (derivativeStep!5323 lt!2456209 (head!13733 s!2326)) (head!13733 (tail!12808 s!2326))) (tail!12808 (tail!12808 s!2326))) lt!2456420)))

(declare-fun b!6853658 () Bool)

(declare-fun res!2797143 () Bool)

(declare-fun e!4132645 () Bool)

(assert (=> b!6853658 (=> res!2797143 e!4132645)))

(assert (=> b!6853658 (= res!2797143 (not (isEmpty!38579 (tail!12808 (tail!12808 (tail!12808 s!2326))))))))

(declare-fun b!6853659 () Bool)

(assert (=> b!6853659 (= e!4132646 (matchR!8860 (derivativeStep!5323 (derivativeStep!5323 (derivativeStep!5323 lt!2456209 (head!13733 s!2326)) (head!13733 (tail!12808 s!2326))) (head!13733 (tail!12808 (tail!12808 s!2326)))) (tail!12808 (tail!12808 (tail!12808 s!2326)))))))

(declare-fun b!6853660 () Bool)

(assert (=> b!6853660 (= e!4132645 (not (= (head!13733 (tail!12808 (tail!12808 s!2326))) (c!1275345 (derivativeStep!5323 (derivativeStep!5323 lt!2456209 (head!13733 s!2326)) (head!13733 (tail!12808 s!2326)))))))))

(declare-fun b!6853661 () Bool)

(declare-fun res!2797142 () Bool)

(declare-fun e!4132648 () Bool)

(assert (=> b!6853661 (=> (not res!2797142) (not e!4132648))))

(assert (=> b!6853661 (= res!2797142 (isEmpty!38579 (tail!12808 (tail!12808 (tail!12808 s!2326)))))))

(declare-fun b!6853662 () Bool)

(declare-fun e!4132647 () Bool)

(declare-fun e!4132649 () Bool)

(assert (=> b!6853662 (= e!4132647 e!4132649)))

(declare-fun res!2797144 () Bool)

(assert (=> b!6853662 (=> (not res!2797144) (not e!4132649))))

(assert (=> b!6853662 (= res!2797144 (not lt!2456420))))

(declare-fun b!6853663 () Bool)

(declare-fun res!2797145 () Bool)

(assert (=> b!6853663 (=> res!2797145 e!4132647)))

(assert (=> b!6853663 (= res!2797145 e!4132648)))

(declare-fun res!2797141 () Bool)

(assert (=> b!6853663 (=> (not res!2797141) (not e!4132648))))

(assert (=> b!6853663 (= res!2797141 lt!2456420)))

(declare-fun b!6853664 () Bool)

(assert (=> b!6853664 (= e!4132649 e!4132645)))

(declare-fun res!2797139 () Bool)

(assert (=> b!6853664 (=> res!2797139 e!4132645)))

(declare-fun call!624308 () Bool)

(assert (=> b!6853664 (= res!2797139 call!624308)))

(declare-fun b!6853665 () Bool)

(assert (=> b!6853665 (= e!4132646 (nullable!6640 (derivativeStep!5323 (derivativeStep!5323 lt!2456209 (head!13733 s!2326)) (head!13733 (tail!12808 s!2326)))))))

(declare-fun b!6853666 () Bool)

(declare-fun e!4132644 () Bool)

(assert (=> b!6853666 (= e!4132643 e!4132644)))

(declare-fun c!1275848 () Bool)

(assert (=> b!6853666 (= c!1275848 ((_ is EmptyLang!16677) (derivativeStep!5323 (derivativeStep!5323 lt!2456209 (head!13733 s!2326)) (head!13733 (tail!12808 s!2326)))))))

(declare-fun b!6853667 () Bool)

(declare-fun res!2797140 () Bool)

(assert (=> b!6853667 (=> (not res!2797140) (not e!4132648))))

(assert (=> b!6853667 (= res!2797140 (not call!624308))))

(declare-fun b!6853668 () Bool)

(assert (=> b!6853668 (= e!4132643 (= lt!2456420 call!624308))))

(declare-fun bm!624303 () Bool)

(assert (=> bm!624303 (= call!624308 (isEmpty!38579 (tail!12808 (tail!12808 s!2326))))))

(declare-fun b!6853669 () Bool)

(assert (=> b!6853669 (= e!4132644 (not lt!2456420))))

(declare-fun b!6853670 () Bool)

(assert (=> b!6853670 (= e!4132648 (= (head!13733 (tail!12808 (tail!12808 s!2326))) (c!1275345 (derivativeStep!5323 (derivativeStep!5323 lt!2456209 (head!13733 s!2326)) (head!13733 (tail!12808 s!2326))))))))

(declare-fun b!6853671 () Bool)

(declare-fun res!2797138 () Bool)

(assert (=> b!6853671 (=> res!2797138 e!4132647)))

(assert (=> b!6853671 (= res!2797138 (not ((_ is ElementMatch!16677) (derivativeStep!5323 (derivativeStep!5323 lt!2456209 (head!13733 s!2326)) (head!13733 (tail!12808 s!2326))))))))

(assert (=> b!6853671 (= e!4132644 e!4132647)))

(assert (= (and d!2154086 c!1275849) b!6853665))

(assert (= (and d!2154086 (not c!1275849)) b!6853659))

(assert (= (and d!2154086 c!1275850) b!6853668))

(assert (= (and d!2154086 (not c!1275850)) b!6853666))

(assert (= (and b!6853666 c!1275848) b!6853669))

(assert (= (and b!6853666 (not c!1275848)) b!6853671))

(assert (= (and b!6853671 (not res!2797138)) b!6853663))

(assert (= (and b!6853663 res!2797141) b!6853667))

(assert (= (and b!6853667 res!2797140) b!6853661))

(assert (= (and b!6853661 res!2797142) b!6853670))

(assert (= (and b!6853663 (not res!2797145)) b!6853662))

(assert (= (and b!6853662 res!2797144) b!6853664))

(assert (= (and b!6853664 (not res!2797139)) b!6853658))

(assert (= (and b!6853658 (not res!2797143)) b!6853660))

(assert (= (or b!6853668 b!6853667 b!6853664) bm!624303))

(assert (=> d!2154086 m!7590536))

(assert (=> d!2154086 m!7590540))

(assert (=> d!2154086 m!7590700))

(declare-fun m!7591338 () Bool)

(assert (=> d!2154086 m!7591338))

(assert (=> b!6853659 m!7590536))

(declare-fun m!7591340 () Bool)

(assert (=> b!6853659 m!7591340))

(assert (=> b!6853659 m!7590700))

(assert (=> b!6853659 m!7591340))

(declare-fun m!7591342 () Bool)

(assert (=> b!6853659 m!7591342))

(assert (=> b!6853659 m!7590536))

(declare-fun m!7591344 () Bool)

(assert (=> b!6853659 m!7591344))

(assert (=> b!6853659 m!7591342))

(assert (=> b!6853659 m!7591344))

(declare-fun m!7591346 () Bool)

(assert (=> b!6853659 m!7591346))

(assert (=> bm!624303 m!7590536))

(assert (=> bm!624303 m!7590540))

(assert (=> b!6853660 m!7590536))

(assert (=> b!6853660 m!7591340))

(assert (=> b!6853661 m!7590536))

(assert (=> b!6853661 m!7591344))

(assert (=> b!6853661 m!7591344))

(declare-fun m!7591348 () Bool)

(assert (=> b!6853661 m!7591348))

(assert (=> b!6853670 m!7590536))

(assert (=> b!6853670 m!7591340))

(assert (=> b!6853665 m!7590700))

(declare-fun m!7591350 () Bool)

(assert (=> b!6853665 m!7591350))

(assert (=> b!6853658 m!7590536))

(assert (=> b!6853658 m!7591344))

(assert (=> b!6853658 m!7591344))

(assert (=> b!6853658 m!7591348))

(assert (=> b!6852972 d!2154086))

(declare-fun c!1275854 () Bool)

(declare-fun c!1275853 () Bool)

(declare-fun bm!624304 () Bool)

(declare-fun call!624310 () Regex!16677)

(assert (=> bm!624304 (= call!624310 (derivativeStep!5323 (ite c!1275854 (regTwo!33867 (derivativeStep!5323 lt!2456209 (head!13733 s!2326))) (ite c!1275853 (reg!17006 (derivativeStep!5323 lt!2456209 (head!13733 s!2326))) (regOne!33866 (derivativeStep!5323 lt!2456209 (head!13733 s!2326))))) (head!13733 (tail!12808 s!2326))))))

(declare-fun b!6853672 () Bool)

(declare-fun e!4132653 () Regex!16677)

(declare-fun e!4132651 () Regex!16677)

(assert (=> b!6853672 (= e!4132653 e!4132651)))

(assert (=> b!6853672 (= c!1275853 ((_ is Star!16677) (derivativeStep!5323 lt!2456209 (head!13733 s!2326))))))

(declare-fun c!1275855 () Bool)

(declare-fun call!624312 () Regex!16677)

(declare-fun bm!624305 () Bool)

(assert (=> bm!624305 (= call!624312 (derivativeStep!5323 (ite c!1275854 (regOne!33867 (derivativeStep!5323 lt!2456209 (head!13733 s!2326))) (ite c!1275855 (regTwo!33866 (derivativeStep!5323 lt!2456209 (head!13733 s!2326))) (regOne!33866 (derivativeStep!5323 lt!2456209 (head!13733 s!2326))))) (head!13733 (tail!12808 s!2326))))))

(declare-fun call!624309 () Regex!16677)

(declare-fun e!4132650 () Regex!16677)

(declare-fun b!6853673 () Bool)

(declare-fun call!624311 () Regex!16677)

(assert (=> b!6853673 (= e!4132650 (Union!16677 (Concat!25522 call!624309 (regTwo!33866 (derivativeStep!5323 lt!2456209 (head!13733 s!2326)))) call!624311))))

(declare-fun bm!624306 () Bool)

(assert (=> bm!624306 (= call!624309 call!624310)))

(declare-fun d!2154088 () Bool)

(declare-fun lt!2456421 () Regex!16677)

(assert (=> d!2154088 (validRegex!8413 lt!2456421)))

(declare-fun e!4132654 () Regex!16677)

(assert (=> d!2154088 (= lt!2456421 e!4132654)))

(declare-fun c!1275852 () Bool)

(assert (=> d!2154088 (= c!1275852 (or ((_ is EmptyExpr!16677) (derivativeStep!5323 lt!2456209 (head!13733 s!2326))) ((_ is EmptyLang!16677) (derivativeStep!5323 lt!2456209 (head!13733 s!2326)))))))

(assert (=> d!2154088 (validRegex!8413 (derivativeStep!5323 lt!2456209 (head!13733 s!2326)))))

(assert (=> d!2154088 (= (derivativeStep!5323 (derivativeStep!5323 lt!2456209 (head!13733 s!2326)) (head!13733 (tail!12808 s!2326))) lt!2456421)))

(declare-fun b!6853674 () Bool)

(declare-fun e!4132652 () Regex!16677)

(assert (=> b!6853674 (= e!4132654 e!4132652)))

(declare-fun c!1275851 () Bool)

(assert (=> b!6853674 (= c!1275851 ((_ is ElementMatch!16677) (derivativeStep!5323 lt!2456209 (head!13733 s!2326))))))

(declare-fun bm!624307 () Bool)

(assert (=> bm!624307 (= call!624311 call!624312)))

(declare-fun b!6853675 () Bool)

(assert (=> b!6853675 (= e!4132650 (Union!16677 (Concat!25522 call!624311 (regTwo!33866 (derivativeStep!5323 lt!2456209 (head!13733 s!2326)))) EmptyLang!16677))))

(declare-fun b!6853676 () Bool)

(assert (=> b!6853676 (= e!4132653 (Union!16677 call!624312 call!624310))))

(declare-fun b!6853677 () Bool)

(assert (=> b!6853677 (= c!1275855 (nullable!6640 (regOne!33866 (derivativeStep!5323 lt!2456209 (head!13733 s!2326)))))))

(assert (=> b!6853677 (= e!4132651 e!4132650)))

(declare-fun b!6853678 () Bool)

(assert (=> b!6853678 (= c!1275854 ((_ is Union!16677) (derivativeStep!5323 lt!2456209 (head!13733 s!2326))))))

(assert (=> b!6853678 (= e!4132652 e!4132653)))

(declare-fun b!6853679 () Bool)

(assert (=> b!6853679 (= e!4132652 (ite (= (head!13733 (tail!12808 s!2326)) (c!1275345 (derivativeStep!5323 lt!2456209 (head!13733 s!2326)))) EmptyExpr!16677 EmptyLang!16677))))

(declare-fun b!6853680 () Bool)

(assert (=> b!6853680 (= e!4132651 (Concat!25522 call!624309 (derivativeStep!5323 lt!2456209 (head!13733 s!2326))))))

(declare-fun b!6853681 () Bool)

(assert (=> b!6853681 (= e!4132654 EmptyLang!16677)))

(assert (= (and d!2154088 c!1275852) b!6853681))

(assert (= (and d!2154088 (not c!1275852)) b!6853674))

(assert (= (and b!6853674 c!1275851) b!6853679))

(assert (= (and b!6853674 (not c!1275851)) b!6853678))

(assert (= (and b!6853678 c!1275854) b!6853676))

(assert (= (and b!6853678 (not c!1275854)) b!6853672))

(assert (= (and b!6853672 c!1275853) b!6853680))

(assert (= (and b!6853672 (not c!1275853)) b!6853677))

(assert (= (and b!6853677 c!1275855) b!6853673))

(assert (= (and b!6853677 (not c!1275855)) b!6853675))

(assert (= (or b!6853673 b!6853675) bm!624307))

(assert (= (or b!6853680 b!6853673) bm!624306))

(assert (= (or b!6853676 bm!624306) bm!624304))

(assert (= (or b!6853676 bm!624307) bm!624305))

(assert (=> bm!624304 m!7590532))

(declare-fun m!7591370 () Bool)

(assert (=> bm!624304 m!7591370))

(assert (=> bm!624305 m!7590532))

(declare-fun m!7591372 () Bool)

(assert (=> bm!624305 m!7591372))

(declare-fun m!7591374 () Bool)

(assert (=> d!2154088 m!7591374))

(assert (=> d!2154088 m!7589938))

(assert (=> d!2154088 m!7590698))

(declare-fun m!7591376 () Bool)

(assert (=> b!6853677 m!7591376))

(assert (=> b!6852972 d!2154088))

(assert (=> b!6852972 d!2154028))

(assert (=> b!6852972 d!2153940))

(assert (=> d!2153752 d!2153672))

(assert (=> d!2153752 d!2153778))

(assert (=> b!6852744 d!2153670))

(assert (=> b!6852856 d!2153718))

(assert (=> b!6852856 d!2153720))

(declare-fun d!2154092 () Bool)

(assert (=> d!2154092 (= (isEmpty!38581 (t!380073 (unfocusZipperList!2094 zl!343))) ((_ is Nil!66206) (t!380073 (unfocusZipperList!2094 zl!343))))))

(assert (=> b!6852728 d!2154092))

(assert (=> d!2153642 d!2153746))

(declare-fun b!6853684 () Bool)

(declare-fun res!2797147 () Bool)

(declare-fun e!4132661 () Bool)

(assert (=> b!6853684 (=> res!2797147 e!4132661)))

(assert (=> b!6853684 (= res!2797147 (not ((_ is Concat!25522) lt!2456365)))))

(declare-fun e!4132662 () Bool)

(assert (=> b!6853684 (= e!4132662 e!4132661)))

(declare-fun b!6853685 () Bool)

(declare-fun res!2797148 () Bool)

(declare-fun e!4132656 () Bool)

(assert (=> b!6853685 (=> (not res!2797148) (not e!4132656))))

(declare-fun call!624313 () Bool)

(assert (=> b!6853685 (= res!2797148 call!624313)))

(assert (=> b!6853685 (= e!4132662 e!4132656)))

(declare-fun c!1275858 () Bool)

(declare-fun c!1275857 () Bool)

(declare-fun bm!624308 () Bool)

(declare-fun call!624314 () Bool)

(assert (=> bm!624308 (= call!624314 (validRegex!8413 (ite c!1275857 (reg!17006 lt!2456365) (ite c!1275858 (regOne!33867 lt!2456365) (regOne!33866 lt!2456365)))))))

(declare-fun b!6853686 () Bool)

(declare-fun call!624315 () Bool)

(assert (=> b!6853686 (= e!4132656 call!624315)))

(declare-fun b!6853688 () Bool)

(declare-fun e!4132657 () Bool)

(declare-fun e!4132658 () Bool)

(assert (=> b!6853688 (= e!4132657 e!4132658)))

(assert (=> b!6853688 (= c!1275857 ((_ is Star!16677) lt!2456365))))

(declare-fun b!6853689 () Bool)

(assert (=> b!6853689 (= e!4132658 e!4132662)))

(assert (=> b!6853689 (= c!1275858 ((_ is Union!16677) lt!2456365))))

(declare-fun bm!624309 () Bool)

(assert (=> bm!624309 (= call!624313 call!624314)))

(declare-fun d!2154094 () Bool)

(declare-fun res!2797149 () Bool)

(assert (=> d!2154094 (=> res!2797149 e!4132657)))

(assert (=> d!2154094 (= res!2797149 ((_ is ElementMatch!16677) lt!2456365))))

(assert (=> d!2154094 (= (validRegex!8413 lt!2456365) e!4132657)))

(declare-fun b!6853687 () Bool)

(declare-fun e!4132659 () Bool)

(assert (=> b!6853687 (= e!4132658 e!4132659)))

(declare-fun res!2797150 () Bool)

(assert (=> b!6853687 (= res!2797150 (not (nullable!6640 (reg!17006 lt!2456365))))))

(assert (=> b!6853687 (=> (not res!2797150) (not e!4132659))))

(declare-fun b!6853690 () Bool)

(assert (=> b!6853690 (= e!4132659 call!624314)))

(declare-fun bm!624310 () Bool)

(assert (=> bm!624310 (= call!624315 (validRegex!8413 (ite c!1275858 (regTwo!33867 lt!2456365) (regTwo!33866 lt!2456365))))))

(declare-fun b!6853691 () Bool)

(declare-fun e!4132660 () Bool)

(assert (=> b!6853691 (= e!4132660 call!624315)))

(declare-fun b!6853692 () Bool)

(assert (=> b!6853692 (= e!4132661 e!4132660)))

(declare-fun res!2797146 () Bool)

(assert (=> b!6853692 (=> (not res!2797146) (not e!4132660))))

(assert (=> b!6853692 (= res!2797146 call!624313)))

(assert (= (and d!2154094 (not res!2797149)) b!6853688))

(assert (= (and b!6853688 c!1275857) b!6853687))

(assert (= (and b!6853688 (not c!1275857)) b!6853689))

(assert (= (and b!6853687 res!2797150) b!6853690))

(assert (= (and b!6853689 c!1275858) b!6853685))

(assert (= (and b!6853689 (not c!1275858)) b!6853684))

(assert (= (and b!6853685 res!2797148) b!6853686))

(assert (= (and b!6853684 (not res!2797147)) b!6853692))

(assert (= (and b!6853692 res!2797146) b!6853691))

(assert (= (or b!6853686 b!6853691) bm!624310))

(assert (= (or b!6853685 b!6853692) bm!624309))

(assert (= (or b!6853690 bm!624309) bm!624308))

(declare-fun m!7591382 () Bool)

(assert (=> bm!624308 m!7591382))

(declare-fun m!7591384 () Bool)

(assert (=> b!6853687 m!7591384))

(declare-fun m!7591386 () Bool)

(assert (=> bm!624310 m!7591386))

(assert (=> d!2153738 d!2154094))

(assert (=> d!2153738 d!2153486))

(declare-fun b!6853693 () Bool)

(declare-fun res!2797152 () Bool)

(declare-fun e!4132668 () Bool)

(assert (=> b!6853693 (=> res!2797152 e!4132668)))

(assert (=> b!6853693 (= res!2797152 (not ((_ is Concat!25522) (h!72654 (exprs!6561 setElem!47097)))))))

(declare-fun e!4132669 () Bool)

(assert (=> b!6853693 (= e!4132669 e!4132668)))

(declare-fun b!6853694 () Bool)

(declare-fun res!2797153 () Bool)

(declare-fun e!4132663 () Bool)

(assert (=> b!6853694 (=> (not res!2797153) (not e!4132663))))

(declare-fun call!624316 () Bool)

(assert (=> b!6853694 (= res!2797153 call!624316)))

(assert (=> b!6853694 (= e!4132669 e!4132663)))

(declare-fun c!1275859 () Bool)

(declare-fun bm!624311 () Bool)

(declare-fun call!624317 () Bool)

(declare-fun c!1275860 () Bool)

(assert (=> bm!624311 (= call!624317 (validRegex!8413 (ite c!1275859 (reg!17006 (h!72654 (exprs!6561 setElem!47097))) (ite c!1275860 (regOne!33867 (h!72654 (exprs!6561 setElem!47097))) (regOne!33866 (h!72654 (exprs!6561 setElem!47097)))))))))

(declare-fun b!6853695 () Bool)

(declare-fun call!624318 () Bool)

(assert (=> b!6853695 (= e!4132663 call!624318)))

(declare-fun b!6853697 () Bool)

(declare-fun e!4132664 () Bool)

(declare-fun e!4132665 () Bool)

(assert (=> b!6853697 (= e!4132664 e!4132665)))

(assert (=> b!6853697 (= c!1275859 ((_ is Star!16677) (h!72654 (exprs!6561 setElem!47097))))))

(declare-fun b!6853698 () Bool)

(assert (=> b!6853698 (= e!4132665 e!4132669)))

(assert (=> b!6853698 (= c!1275860 ((_ is Union!16677) (h!72654 (exprs!6561 setElem!47097))))))

(declare-fun bm!624312 () Bool)

(assert (=> bm!624312 (= call!624316 call!624317)))

(declare-fun d!2154098 () Bool)

(declare-fun res!2797154 () Bool)

(assert (=> d!2154098 (=> res!2797154 e!4132664)))

(assert (=> d!2154098 (= res!2797154 ((_ is ElementMatch!16677) (h!72654 (exprs!6561 setElem!47097))))))

(assert (=> d!2154098 (= (validRegex!8413 (h!72654 (exprs!6561 setElem!47097))) e!4132664)))

(declare-fun b!6853696 () Bool)

(declare-fun e!4132666 () Bool)

(assert (=> b!6853696 (= e!4132665 e!4132666)))

(declare-fun res!2797155 () Bool)

(assert (=> b!6853696 (= res!2797155 (not (nullable!6640 (reg!17006 (h!72654 (exprs!6561 setElem!47097))))))))

(assert (=> b!6853696 (=> (not res!2797155) (not e!4132666))))

(declare-fun b!6853699 () Bool)

(assert (=> b!6853699 (= e!4132666 call!624317)))

(declare-fun bm!624313 () Bool)

(assert (=> bm!624313 (= call!624318 (validRegex!8413 (ite c!1275860 (regTwo!33867 (h!72654 (exprs!6561 setElem!47097))) (regTwo!33866 (h!72654 (exprs!6561 setElem!47097))))))))

(declare-fun b!6853700 () Bool)

(declare-fun e!4132667 () Bool)

(assert (=> b!6853700 (= e!4132667 call!624318)))

(declare-fun b!6853701 () Bool)

(assert (=> b!6853701 (= e!4132668 e!4132667)))

(declare-fun res!2797151 () Bool)

(assert (=> b!6853701 (=> (not res!2797151) (not e!4132667))))

(assert (=> b!6853701 (= res!2797151 call!624316)))

(assert (= (and d!2154098 (not res!2797154)) b!6853697))

(assert (= (and b!6853697 c!1275859) b!6853696))

(assert (= (and b!6853697 (not c!1275859)) b!6853698))

(assert (= (and b!6853696 res!2797155) b!6853699))

(assert (= (and b!6853698 c!1275860) b!6853694))

(assert (= (and b!6853698 (not c!1275860)) b!6853693))

(assert (= (and b!6853694 res!2797153) b!6853695))

(assert (= (and b!6853693 (not res!2797152)) b!6853701))

(assert (= (and b!6853701 res!2797151) b!6853700))

(assert (= (or b!6853695 b!6853700) bm!624313))

(assert (= (or b!6853694 b!6853701) bm!624312))

(assert (= (or b!6853699 bm!624312) bm!624311))

(declare-fun m!7591388 () Bool)

(assert (=> bm!624311 m!7591388))

(declare-fun m!7591390 () Bool)

(assert (=> b!6853696 m!7591390))

(declare-fun m!7591392 () Bool)

(assert (=> bm!624313 m!7591392))

(assert (=> bs!1831693 d!2154098))

(declare-fun b!6853704 () Bool)

(declare-fun res!2797159 () Bool)

(declare-fun e!4132677 () Bool)

(assert (=> b!6853704 (=> res!2797159 e!4132677)))

(assert (=> b!6853704 (= res!2797159 (not ((_ is Concat!25522) (ite c!1275664 (reg!17006 (h!72654 lt!2456210)) (ite c!1275665 (regOne!33867 (h!72654 lt!2456210)) (regOne!33866 (h!72654 lt!2456210)))))))))

(declare-fun e!4132678 () Bool)

(assert (=> b!6853704 (= e!4132678 e!4132677)))

(declare-fun b!6853705 () Bool)

(declare-fun res!2797160 () Bool)

(declare-fun e!4132672 () Bool)

(assert (=> b!6853705 (=> (not res!2797160) (not e!4132672))))

(declare-fun call!624319 () Bool)

(assert (=> b!6853705 (= res!2797160 call!624319)))

(assert (=> b!6853705 (= e!4132678 e!4132672)))

(declare-fun c!1275862 () Bool)

(declare-fun c!1275861 () Bool)

(declare-fun bm!624314 () Bool)

(declare-fun call!624320 () Bool)

(assert (=> bm!624314 (= call!624320 (validRegex!8413 (ite c!1275861 (reg!17006 (ite c!1275664 (reg!17006 (h!72654 lt!2456210)) (ite c!1275665 (regOne!33867 (h!72654 lt!2456210)) (regOne!33866 (h!72654 lt!2456210))))) (ite c!1275862 (regOne!33867 (ite c!1275664 (reg!17006 (h!72654 lt!2456210)) (ite c!1275665 (regOne!33867 (h!72654 lt!2456210)) (regOne!33866 (h!72654 lt!2456210))))) (regOne!33866 (ite c!1275664 (reg!17006 (h!72654 lt!2456210)) (ite c!1275665 (regOne!33867 (h!72654 lt!2456210)) (regOne!33866 (h!72654 lt!2456210)))))))))))

(declare-fun b!6853706 () Bool)

(declare-fun call!624321 () Bool)

(assert (=> b!6853706 (= e!4132672 call!624321)))

(declare-fun b!6853708 () Bool)

(declare-fun e!4132673 () Bool)

(declare-fun e!4132674 () Bool)

(assert (=> b!6853708 (= e!4132673 e!4132674)))

(assert (=> b!6853708 (= c!1275861 ((_ is Star!16677) (ite c!1275664 (reg!17006 (h!72654 lt!2456210)) (ite c!1275665 (regOne!33867 (h!72654 lt!2456210)) (regOne!33866 (h!72654 lt!2456210))))))))

(declare-fun b!6853709 () Bool)

(assert (=> b!6853709 (= e!4132674 e!4132678)))

(assert (=> b!6853709 (= c!1275862 ((_ is Union!16677) (ite c!1275664 (reg!17006 (h!72654 lt!2456210)) (ite c!1275665 (regOne!33867 (h!72654 lt!2456210)) (regOne!33866 (h!72654 lt!2456210))))))))

(declare-fun bm!624315 () Bool)

(assert (=> bm!624315 (= call!624319 call!624320)))

(declare-fun d!2154102 () Bool)

(declare-fun res!2797161 () Bool)

(assert (=> d!2154102 (=> res!2797161 e!4132673)))

(assert (=> d!2154102 (= res!2797161 ((_ is ElementMatch!16677) (ite c!1275664 (reg!17006 (h!72654 lt!2456210)) (ite c!1275665 (regOne!33867 (h!72654 lt!2456210)) (regOne!33866 (h!72654 lt!2456210))))))))

(assert (=> d!2154102 (= (validRegex!8413 (ite c!1275664 (reg!17006 (h!72654 lt!2456210)) (ite c!1275665 (regOne!33867 (h!72654 lt!2456210)) (regOne!33866 (h!72654 lt!2456210))))) e!4132673)))

(declare-fun b!6853707 () Bool)

(declare-fun e!4132675 () Bool)

(assert (=> b!6853707 (= e!4132674 e!4132675)))

(declare-fun res!2797162 () Bool)

(assert (=> b!6853707 (= res!2797162 (not (nullable!6640 (reg!17006 (ite c!1275664 (reg!17006 (h!72654 lt!2456210)) (ite c!1275665 (regOne!33867 (h!72654 lt!2456210)) (regOne!33866 (h!72654 lt!2456210))))))))))

(assert (=> b!6853707 (=> (not res!2797162) (not e!4132675))))

(declare-fun b!6853710 () Bool)

(assert (=> b!6853710 (= e!4132675 call!624320)))

(declare-fun bm!624316 () Bool)

(assert (=> bm!624316 (= call!624321 (validRegex!8413 (ite c!1275862 (regTwo!33867 (ite c!1275664 (reg!17006 (h!72654 lt!2456210)) (ite c!1275665 (regOne!33867 (h!72654 lt!2456210)) (regOne!33866 (h!72654 lt!2456210))))) (regTwo!33866 (ite c!1275664 (reg!17006 (h!72654 lt!2456210)) (ite c!1275665 (regOne!33867 (h!72654 lt!2456210)) (regOne!33866 (h!72654 lt!2456210))))))))))

(declare-fun b!6853711 () Bool)

(declare-fun e!4132676 () Bool)

(assert (=> b!6853711 (= e!4132676 call!624321)))

(declare-fun b!6853712 () Bool)

(assert (=> b!6853712 (= e!4132677 e!4132676)))

(declare-fun res!2797158 () Bool)

(assert (=> b!6853712 (=> (not res!2797158) (not e!4132676))))

(assert (=> b!6853712 (= res!2797158 call!624319)))

(assert (= (and d!2154102 (not res!2797161)) b!6853708))

(assert (= (and b!6853708 c!1275861) b!6853707))

(assert (= (and b!6853708 (not c!1275861)) b!6853709))

(assert (= (and b!6853707 res!2797162) b!6853710))

(assert (= (and b!6853709 c!1275862) b!6853705))

(assert (= (and b!6853709 (not c!1275862)) b!6853704))

(assert (= (and b!6853705 res!2797160) b!6853706))

(assert (= (and b!6853704 (not res!2797159)) b!6853712))

(assert (= (and b!6853712 res!2797158) b!6853711))

(assert (= (or b!6853706 b!6853711) bm!624316))

(assert (= (or b!6853705 b!6853712) bm!624315))

(assert (= (or b!6853710 bm!624315) bm!624314))

(declare-fun m!7591400 () Bool)

(assert (=> bm!624314 m!7591400))

(declare-fun m!7591402 () Bool)

(assert (=> b!6853707 m!7591402))

(declare-fun m!7591404 () Bool)

(assert (=> bm!624316 m!7591404))

(assert (=> bm!624181 d!2154102))

(declare-fun d!2154108 () Bool)

(declare-fun c!1275863 () Bool)

(assert (=> d!2154108 (= c!1275863 ((_ is Nil!66207) (t!380074 lt!2456274)))))

(declare-fun e!4132679 () (InoxSet Context!12122))

(assert (=> d!2154108 (= (content!12985 (t!380074 lt!2456274)) e!4132679)))

(declare-fun b!6853713 () Bool)

(assert (=> b!6853713 (= e!4132679 ((as const (Array Context!12122 Bool)) false))))

(declare-fun b!6853714 () Bool)

(assert (=> b!6853714 (= e!4132679 ((_ map or) (store ((as const (Array Context!12122 Bool)) false) (h!72655 (t!380074 lt!2456274)) true) (content!12985 (t!380074 (t!380074 lt!2456274)))))))

(assert (= (and d!2154108 c!1275863) b!6853713))

(assert (= (and d!2154108 (not c!1275863)) b!6853714))

(declare-fun m!7591406 () Bool)

(assert (=> b!6853714 m!7591406))

(declare-fun m!7591408 () Bool)

(assert (=> b!6853714 m!7591408))

(assert (=> b!6852499 d!2154108))

(declare-fun b!6853724 () Bool)

(declare-fun res!2797169 () Bool)

(declare-fun e!4132692 () Bool)

(assert (=> b!6853724 (=> res!2797169 e!4132692)))

(assert (=> b!6853724 (= res!2797169 (not ((_ is Concat!25522) (ite c!1275667 (regTwo!33867 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))) (regTwo!33866 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292)))))))))

(declare-fun e!4132693 () Bool)

(assert (=> b!6853724 (= e!4132693 e!4132692)))

(declare-fun b!6853725 () Bool)

(declare-fun res!2797170 () Bool)

(declare-fun e!4132687 () Bool)

(assert (=> b!6853725 (=> (not res!2797170) (not e!4132687))))

(declare-fun call!624325 () Bool)

(assert (=> b!6853725 (= res!2797170 call!624325)))

(assert (=> b!6853725 (= e!4132693 e!4132687)))

(declare-fun c!1275867 () Bool)

(declare-fun c!1275866 () Bool)

(declare-fun bm!624320 () Bool)

(declare-fun call!624326 () Bool)

(assert (=> bm!624320 (= call!624326 (validRegex!8413 (ite c!1275866 (reg!17006 (ite c!1275667 (regTwo!33867 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))) (regTwo!33866 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))))) (ite c!1275867 (regOne!33867 (ite c!1275667 (regTwo!33867 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))) (regTwo!33866 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))))) (regOne!33866 (ite c!1275667 (regTwo!33867 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))) (regTwo!33866 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292)))))))))))

(declare-fun b!6853726 () Bool)

(declare-fun call!624327 () Bool)

(assert (=> b!6853726 (= e!4132687 call!624327)))

(declare-fun b!6853728 () Bool)

(declare-fun e!4132688 () Bool)

(declare-fun e!4132689 () Bool)

(assert (=> b!6853728 (= e!4132688 e!4132689)))

(assert (=> b!6853728 (= c!1275866 ((_ is Star!16677) (ite c!1275667 (regTwo!33867 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))) (regTwo!33866 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))))))))

(declare-fun b!6853729 () Bool)

(assert (=> b!6853729 (= e!4132689 e!4132693)))

(assert (=> b!6853729 (= c!1275867 ((_ is Union!16677) (ite c!1275667 (regTwo!33867 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))) (regTwo!33866 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))))))))

(declare-fun bm!624321 () Bool)

(assert (=> bm!624321 (= call!624325 call!624326)))

(declare-fun d!2154110 () Bool)

(declare-fun res!2797171 () Bool)

(assert (=> d!2154110 (=> res!2797171 e!4132688)))

(assert (=> d!2154110 (= res!2797171 ((_ is ElementMatch!16677) (ite c!1275667 (regTwo!33867 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))) (regTwo!33866 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))))))))

(assert (=> d!2154110 (= (validRegex!8413 (ite c!1275667 (regTwo!33867 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))) (regTwo!33866 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))))) e!4132688)))

(declare-fun b!6853727 () Bool)

(declare-fun e!4132690 () Bool)

(assert (=> b!6853727 (= e!4132689 e!4132690)))

(declare-fun res!2797172 () Bool)

(assert (=> b!6853727 (= res!2797172 (not (nullable!6640 (reg!17006 (ite c!1275667 (regTwo!33867 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))) (regTwo!33866 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))))))))))

(assert (=> b!6853727 (=> (not res!2797172) (not e!4132690))))

(declare-fun b!6853730 () Bool)

(assert (=> b!6853730 (= e!4132690 call!624326)))

(declare-fun bm!624322 () Bool)

(assert (=> bm!624322 (= call!624327 (validRegex!8413 (ite c!1275867 (regTwo!33867 (ite c!1275667 (regTwo!33867 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))) (regTwo!33866 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))))) (regTwo!33866 (ite c!1275667 (regTwo!33867 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))) (regTwo!33866 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))))))))))

(declare-fun b!6853731 () Bool)

(declare-fun e!4132691 () Bool)

(assert (=> b!6853731 (= e!4132691 call!624327)))

(declare-fun b!6853732 () Bool)

(assert (=> b!6853732 (= e!4132692 e!4132691)))

(declare-fun res!2797168 () Bool)

(assert (=> b!6853732 (=> (not res!2797168) (not e!4132691))))

(assert (=> b!6853732 (= res!2797168 call!624325)))

(assert (= (and d!2154110 (not res!2797171)) b!6853728))

(assert (= (and b!6853728 c!1275866) b!6853727))

(assert (= (and b!6853728 (not c!1275866)) b!6853729))

(assert (= (and b!6853727 res!2797172) b!6853730))

(assert (= (and b!6853729 c!1275867) b!6853725))

(assert (= (and b!6853729 (not c!1275867)) b!6853724))

(assert (= (and b!6853725 res!2797170) b!6853726))

(assert (= (and b!6853724 (not res!2797169)) b!6853732))

(assert (= (and b!6853732 res!2797168) b!6853731))

(assert (= (or b!6853726 b!6853731) bm!624322))

(assert (= (or b!6853725 b!6853732) bm!624321))

(assert (= (or b!6853730 bm!624321) bm!624320))

(declare-fun m!7591410 () Bool)

(assert (=> bm!624320 m!7591410))

(declare-fun m!7591412 () Bool)

(assert (=> b!6853727 m!7591412))

(declare-fun m!7591414 () Bool)

(assert (=> bm!624322 m!7591414))

(assert (=> bm!624186 d!2154110))

(declare-fun d!2154112 () Bool)

(assert (=> d!2154112 (= (head!13734 (exprs!6561 (h!72655 zl!343))) (h!72654 (exprs!6561 (h!72655 zl!343))))))

(assert (=> b!6852772 d!2154112))

(declare-fun bs!1832065 () Bool)

(declare-fun b!6853743 () Bool)

(assert (= bs!1832065 (and b!6853743 b!6852782)))

(declare-fun lambda!387474 () Int)

(assert (=> bs!1832065 (not (= lambda!387474 lambda!387441))))

(declare-fun bs!1832066 () Bool)

(assert (= bs!1832066 (and b!6853743 b!6851816)))

(assert (=> bs!1832066 (not (= lambda!387474 lambda!387380))))

(declare-fun bs!1832067 () Bool)

(assert (= bs!1832067 (and b!6853743 b!6852966)))

(assert (=> bs!1832067 (not (= lambda!387474 lambda!387453))))

(declare-fun bs!1832068 () Bool)

(assert (= bs!1832068 (and b!6853743 b!6851820)))

(assert (=> bs!1832068 (= (and (= (reg!17006 (regTwo!33867 (regTwo!33867 r!7292))) (reg!17006 r!7292)) (= (regTwo!33867 (regTwo!33867 r!7292)) r!7292)) (= lambda!387474 lambda!387379))))

(declare-fun bs!1832069 () Bool)

(assert (= bs!1832069 (and b!6853743 b!6853369)))

(assert (=> bs!1832069 (not (= lambda!387474 lambda!387465))))

(declare-fun bs!1832070 () Bool)

(assert (= bs!1832070 (and b!6853743 b!6852970)))

(assert (=> bs!1832070 (= (and (= (reg!17006 (regTwo!33867 (regTwo!33867 r!7292))) (reg!17006 (regTwo!33867 r!7292))) (= (regTwo!33867 (regTwo!33867 r!7292)) (regTwo!33867 r!7292))) (= lambda!387474 lambda!387452))))

(declare-fun bs!1832072 () Bool)

(assert (= bs!1832072 (and b!6853743 b!6852786)))

(assert (=> bs!1832072 (= (and (= (reg!17006 (regTwo!33867 (regTwo!33867 r!7292))) (reg!17006 (regOne!33867 r!7292))) (= (regTwo!33867 (regTwo!33867 r!7292)) (regOne!33867 r!7292))) (= lambda!387474 lambda!387440))))

(declare-fun bs!1832073 () Bool)

(assert (= bs!1832073 (and b!6853743 b!6853373)))

(assert (=> bs!1832073 (= (and (= (reg!17006 (regTwo!33867 (regTwo!33867 r!7292))) (reg!17006 (regTwo!33867 (regOne!33867 r!7292)))) (= (regTwo!33867 (regTwo!33867 r!7292)) (regTwo!33867 (regOne!33867 r!7292)))) (= lambda!387474 lambda!387464))))

(declare-fun bs!1832075 () Bool)

(assert (= bs!1832075 (and b!6853743 b!6853623)))

(assert (=> bs!1832075 (not (= lambda!387474 lambda!387472))))

(declare-fun bs!1832077 () Bool)

(assert (= bs!1832077 (and b!6853743 b!6853627)))

(assert (=> bs!1832077 (= (and (= (reg!17006 (regTwo!33867 (regTwo!33867 r!7292))) (reg!17006 (regOne!33867 (regOne!33867 r!7292)))) (= (regTwo!33867 (regTwo!33867 r!7292)) (regOne!33867 (regOne!33867 r!7292)))) (= lambda!387474 lambda!387471))))

(assert (=> b!6853743 true))

(assert (=> b!6853743 true))

(declare-fun bs!1832081 () Bool)

(declare-fun b!6853739 () Bool)

(assert (= bs!1832081 (and b!6853739 b!6852782)))

(declare-fun lambda!387476 () Int)

(assert (=> bs!1832081 (= (and (= (regOne!33866 (regTwo!33867 (regTwo!33867 r!7292))) (regOne!33866 (regOne!33867 r!7292))) (= (regTwo!33866 (regTwo!33867 (regTwo!33867 r!7292))) (regTwo!33866 (regOne!33867 r!7292)))) (= lambda!387476 lambda!387441))))

(declare-fun bs!1832082 () Bool)

(assert (= bs!1832082 (and b!6853739 b!6853743)))

(assert (=> bs!1832082 (not (= lambda!387476 lambda!387474))))

(declare-fun bs!1832083 () Bool)

(assert (= bs!1832083 (and b!6853739 b!6851816)))

(assert (=> bs!1832083 (= (and (= (regOne!33866 (regTwo!33867 (regTwo!33867 r!7292))) (regOne!33866 r!7292)) (= (regTwo!33866 (regTwo!33867 (regTwo!33867 r!7292))) (regTwo!33866 r!7292))) (= lambda!387476 lambda!387380))))

(declare-fun bs!1832084 () Bool)

(assert (= bs!1832084 (and b!6853739 b!6852966)))

(assert (=> bs!1832084 (= (and (= (regOne!33866 (regTwo!33867 (regTwo!33867 r!7292))) (regOne!33866 (regTwo!33867 r!7292))) (= (regTwo!33866 (regTwo!33867 (regTwo!33867 r!7292))) (regTwo!33866 (regTwo!33867 r!7292)))) (= lambda!387476 lambda!387453))))

(declare-fun bs!1832085 () Bool)

(assert (= bs!1832085 (and b!6853739 b!6851820)))

(assert (=> bs!1832085 (not (= lambda!387476 lambda!387379))))

(declare-fun bs!1832086 () Bool)

(assert (= bs!1832086 (and b!6853739 b!6853369)))

(assert (=> bs!1832086 (= (and (= (regOne!33866 (regTwo!33867 (regTwo!33867 r!7292))) (regOne!33866 (regTwo!33867 (regOne!33867 r!7292)))) (= (regTwo!33866 (regTwo!33867 (regTwo!33867 r!7292))) (regTwo!33866 (regTwo!33867 (regOne!33867 r!7292))))) (= lambda!387476 lambda!387465))))

(declare-fun bs!1832087 () Bool)

(assert (= bs!1832087 (and b!6853739 b!6852970)))

(assert (=> bs!1832087 (not (= lambda!387476 lambda!387452))))

(declare-fun bs!1832088 () Bool)

(assert (= bs!1832088 (and b!6853739 b!6852786)))

(assert (=> bs!1832088 (not (= lambda!387476 lambda!387440))))

(declare-fun bs!1832089 () Bool)

(assert (= bs!1832089 (and b!6853739 b!6853373)))

(assert (=> bs!1832089 (not (= lambda!387476 lambda!387464))))

(declare-fun bs!1832090 () Bool)

(assert (= bs!1832090 (and b!6853739 b!6853623)))

(assert (=> bs!1832090 (= (and (= (regOne!33866 (regTwo!33867 (regTwo!33867 r!7292))) (regOne!33866 (regOne!33867 (regOne!33867 r!7292)))) (= (regTwo!33866 (regTwo!33867 (regTwo!33867 r!7292))) (regTwo!33866 (regOne!33867 (regOne!33867 r!7292))))) (= lambda!387476 lambda!387472))))

(declare-fun bs!1832091 () Bool)

(assert (= bs!1832091 (and b!6853739 b!6853627)))

(assert (=> bs!1832091 (not (= lambda!387476 lambda!387471))))

(assert (=> b!6853739 true))

(assert (=> b!6853739 true))

(declare-fun b!6853733 () Bool)

(declare-fun c!1275871 () Bool)

(assert (=> b!6853733 (= c!1275871 ((_ is Union!16677) (regTwo!33867 (regTwo!33867 r!7292))))))

(declare-fun e!4132697 () Bool)

(declare-fun e!4132695 () Bool)

(assert (=> b!6853733 (= e!4132697 e!4132695)))

(declare-fun b!6853734 () Bool)

(declare-fun c!1275868 () Bool)

(assert (=> b!6853734 (= c!1275868 ((_ is ElementMatch!16677) (regTwo!33867 (regTwo!33867 r!7292))))))

(declare-fun e!4132698 () Bool)

(assert (=> b!6853734 (= e!4132698 e!4132697)))

(declare-fun b!6853735 () Bool)

(declare-fun e!4132700 () Bool)

(assert (=> b!6853735 (= e!4132695 e!4132700)))

(declare-fun c!1275870 () Bool)

(assert (=> b!6853735 (= c!1275870 ((_ is Star!16677) (regTwo!33867 (regTwo!33867 r!7292))))))

(declare-fun b!6853736 () Bool)

(declare-fun e!4132696 () Bool)

(assert (=> b!6853736 (= e!4132696 (matchRSpec!3778 (regTwo!33867 (regTwo!33867 (regTwo!33867 r!7292))) s!2326))))

(declare-fun b!6853737 () Bool)

(assert (=> b!6853737 (= e!4132695 e!4132696)))

(declare-fun res!2797175 () Bool)

(assert (=> b!6853737 (= res!2797175 (matchRSpec!3778 (regOne!33867 (regTwo!33867 (regTwo!33867 r!7292))) s!2326))))

(assert (=> b!6853737 (=> res!2797175 e!4132696)))

(declare-fun b!6853738 () Bool)

(declare-fun e!4132694 () Bool)

(declare-fun call!624329 () Bool)

(assert (=> b!6853738 (= e!4132694 call!624329)))

(declare-fun b!6853740 () Bool)

(assert (=> b!6853740 (= e!4132697 (= s!2326 (Cons!66208 (c!1275345 (regTwo!33867 (regTwo!33867 r!7292))) Nil!66208)))))

(declare-fun bm!624323 () Bool)

(assert (=> bm!624323 (= call!624329 (isEmpty!38579 s!2326))))

(declare-fun b!6853741 () Bool)

(assert (=> b!6853741 (= e!4132694 e!4132698)))

(declare-fun res!2797173 () Bool)

(assert (=> b!6853741 (= res!2797173 (not ((_ is EmptyLang!16677) (regTwo!33867 (regTwo!33867 r!7292)))))))

(assert (=> b!6853741 (=> (not res!2797173) (not e!4132698))))

(declare-fun b!6853742 () Bool)

(declare-fun res!2797174 () Bool)

(declare-fun e!4132699 () Bool)

(assert (=> b!6853742 (=> res!2797174 e!4132699)))

(assert (=> b!6853742 (= res!2797174 call!624329)))

(assert (=> b!6853742 (= e!4132700 e!4132699)))

(declare-fun call!624328 () Bool)

(assert (=> b!6853739 (= e!4132700 call!624328)))

(declare-fun d!2154114 () Bool)

(declare-fun c!1275869 () Bool)

(assert (=> d!2154114 (= c!1275869 ((_ is EmptyExpr!16677) (regTwo!33867 (regTwo!33867 r!7292))))))

(assert (=> d!2154114 (= (matchRSpec!3778 (regTwo!33867 (regTwo!33867 r!7292)) s!2326) e!4132694)))

(assert (=> b!6853743 (= e!4132699 call!624328)))

(declare-fun bm!624324 () Bool)

(assert (=> bm!624324 (= call!624328 (Exists!3739 (ite c!1275870 lambda!387474 lambda!387476)))))

(assert (= (and d!2154114 c!1275869) b!6853738))

(assert (= (and d!2154114 (not c!1275869)) b!6853741))

(assert (= (and b!6853741 res!2797173) b!6853734))

(assert (= (and b!6853734 c!1275868) b!6853740))

(assert (= (and b!6853734 (not c!1275868)) b!6853733))

(assert (= (and b!6853733 c!1275871) b!6853737))

(assert (= (and b!6853733 (not c!1275871)) b!6853735))

(assert (= (and b!6853737 (not res!2797175)) b!6853736))

(assert (= (and b!6853735 c!1275870) b!6853742))

(assert (= (and b!6853735 (not c!1275870)) b!6853739))

(assert (= (and b!6853742 (not res!2797174)) b!6853743))

(assert (= (or b!6853743 b!6853739) bm!624324))

(assert (= (or b!6853738 b!6853742) bm!624323))

(declare-fun m!7591430 () Bool)

(assert (=> b!6853736 m!7591430))

(declare-fun m!7591432 () Bool)

(assert (=> b!6853737 m!7591432))

(assert (=> bm!624323 m!7589856))

(declare-fun m!7591434 () Bool)

(assert (=> bm!624324 m!7591434))

(assert (=> b!6852963 d!2154114))

(assert (=> b!6852868 d!2153670))

(assert (=> b!6852812 d!2154028))

(declare-fun d!2154122 () Bool)

(declare-fun e!4132708 () Bool)

(assert (=> d!2154122 e!4132708))

(declare-fun c!1275879 () Bool)

(assert (=> d!2154122 (= c!1275879 ((_ is EmptyExpr!16677) (derivativeStep!5323 (h!72654 lt!2456210) (head!13733 s!2326))))))

(declare-fun lt!2456425 () Bool)

(declare-fun e!4132711 () Bool)

(assert (=> d!2154122 (= lt!2456425 e!4132711)))

(declare-fun c!1275878 () Bool)

(assert (=> d!2154122 (= c!1275878 (isEmpty!38579 (tail!12808 s!2326)))))

(assert (=> d!2154122 (validRegex!8413 (derivativeStep!5323 (h!72654 lt!2456210) (head!13733 s!2326)))))

(assert (=> d!2154122 (= (matchR!8860 (derivativeStep!5323 (h!72654 lt!2456210) (head!13733 s!2326)) (tail!12808 s!2326)) lt!2456425)))

(declare-fun b!6853756 () Bool)

(declare-fun res!2797183 () Bool)

(declare-fun e!4132710 () Bool)

(assert (=> b!6853756 (=> res!2797183 e!4132710)))

(assert (=> b!6853756 (= res!2797183 (not (isEmpty!38579 (tail!12808 (tail!12808 s!2326)))))))

(declare-fun b!6853757 () Bool)

(assert (=> b!6853757 (= e!4132711 (matchR!8860 (derivativeStep!5323 (derivativeStep!5323 (h!72654 lt!2456210) (head!13733 s!2326)) (head!13733 (tail!12808 s!2326))) (tail!12808 (tail!12808 s!2326))))))

(declare-fun b!6853758 () Bool)

(assert (=> b!6853758 (= e!4132710 (not (= (head!13733 (tail!12808 s!2326)) (c!1275345 (derivativeStep!5323 (h!72654 lt!2456210) (head!13733 s!2326))))))))

(declare-fun b!6853759 () Bool)

(declare-fun res!2797182 () Bool)

(declare-fun e!4132713 () Bool)

(assert (=> b!6853759 (=> (not res!2797182) (not e!4132713))))

(assert (=> b!6853759 (= res!2797182 (isEmpty!38579 (tail!12808 (tail!12808 s!2326))))))

(declare-fun b!6853760 () Bool)

(declare-fun e!4132712 () Bool)

(declare-fun e!4132714 () Bool)

(assert (=> b!6853760 (= e!4132712 e!4132714)))

(declare-fun res!2797184 () Bool)

(assert (=> b!6853760 (=> (not res!2797184) (not e!4132714))))

(assert (=> b!6853760 (= res!2797184 (not lt!2456425))))

(declare-fun b!6853761 () Bool)

(declare-fun res!2797185 () Bool)

(assert (=> b!6853761 (=> res!2797185 e!4132712)))

(assert (=> b!6853761 (= res!2797185 e!4132713)))

(declare-fun res!2797181 () Bool)

(assert (=> b!6853761 (=> (not res!2797181) (not e!4132713))))

(assert (=> b!6853761 (= res!2797181 lt!2456425)))

(declare-fun b!6853762 () Bool)

(assert (=> b!6853762 (= e!4132714 e!4132710)))

(declare-fun res!2797179 () Bool)

(assert (=> b!6853762 (=> res!2797179 e!4132710)))

(declare-fun call!624334 () Bool)

(assert (=> b!6853762 (= res!2797179 call!624334)))

(declare-fun b!6853763 () Bool)

(assert (=> b!6853763 (= e!4132711 (nullable!6640 (derivativeStep!5323 (h!72654 lt!2456210) (head!13733 s!2326))))))

(declare-fun b!6853764 () Bool)

(declare-fun e!4132709 () Bool)

(assert (=> b!6853764 (= e!4132708 e!4132709)))

(declare-fun c!1275877 () Bool)

(assert (=> b!6853764 (= c!1275877 ((_ is EmptyLang!16677) (derivativeStep!5323 (h!72654 lt!2456210) (head!13733 s!2326))))))

(declare-fun b!6853765 () Bool)

(declare-fun res!2797180 () Bool)

(assert (=> b!6853765 (=> (not res!2797180) (not e!4132713))))

(assert (=> b!6853765 (= res!2797180 (not call!624334))))

(declare-fun b!6853766 () Bool)

(assert (=> b!6853766 (= e!4132708 (= lt!2456425 call!624334))))

(declare-fun bm!624329 () Bool)

(assert (=> bm!624329 (= call!624334 (isEmpty!38579 (tail!12808 s!2326)))))

(declare-fun b!6853767 () Bool)

(assert (=> b!6853767 (= e!4132709 (not lt!2456425))))

(declare-fun b!6853768 () Bool)

(assert (=> b!6853768 (= e!4132713 (= (head!13733 (tail!12808 s!2326)) (c!1275345 (derivativeStep!5323 (h!72654 lt!2456210) (head!13733 s!2326)))))))

(declare-fun b!6853769 () Bool)

(declare-fun res!2797178 () Bool)

(assert (=> b!6853769 (=> res!2797178 e!4132712)))

(assert (=> b!6853769 (= res!2797178 (not ((_ is ElementMatch!16677) (derivativeStep!5323 (h!72654 lt!2456210) (head!13733 s!2326)))))))

(assert (=> b!6853769 (= e!4132709 e!4132712)))

(assert (= (and d!2154122 c!1275878) b!6853763))

(assert (= (and d!2154122 (not c!1275878)) b!6853757))

(assert (= (and d!2154122 c!1275879) b!6853766))

(assert (= (and d!2154122 (not c!1275879)) b!6853764))

(assert (= (and b!6853764 c!1275877) b!6853767))

(assert (= (and b!6853764 (not c!1275877)) b!6853769))

(assert (= (and b!6853769 (not res!2797178)) b!6853761))

(assert (= (and b!6853761 res!2797181) b!6853765))

(assert (= (and b!6853765 res!2797180) b!6853759))

(assert (= (and b!6853759 res!2797182) b!6853768))

(assert (= (and b!6853761 (not res!2797185)) b!6853760))

(assert (= (and b!6853760 res!2797184) b!6853762))

(assert (= (and b!6853762 (not res!2797179)) b!6853756))

(assert (= (and b!6853756 (not res!2797183)) b!6853758))

(assert (= (or b!6853766 b!6853765 b!6853762) bm!624329))

(assert (=> d!2154122 m!7589908))

(assert (=> d!2154122 m!7589912))

(assert (=> d!2154122 m!7590482))

(declare-fun m!7591446 () Bool)

(assert (=> d!2154122 m!7591446))

(assert (=> b!6853757 m!7589908))

(assert (=> b!6853757 m!7590532))

(assert (=> b!6853757 m!7590482))

(assert (=> b!6853757 m!7590532))

(declare-fun m!7591448 () Bool)

(assert (=> b!6853757 m!7591448))

(assert (=> b!6853757 m!7589908))

(assert (=> b!6853757 m!7590536))

(assert (=> b!6853757 m!7591448))

(assert (=> b!6853757 m!7590536))

(declare-fun m!7591450 () Bool)

(assert (=> b!6853757 m!7591450))

(assert (=> bm!624329 m!7589908))

(assert (=> bm!624329 m!7589912))

(assert (=> b!6853758 m!7589908))

(assert (=> b!6853758 m!7590532))

(assert (=> b!6853759 m!7589908))

(assert (=> b!6853759 m!7590536))

(assert (=> b!6853759 m!7590536))

(assert (=> b!6853759 m!7590540))

(assert (=> b!6853768 m!7589908))

(assert (=> b!6853768 m!7590532))

(assert (=> b!6853763 m!7590482))

(declare-fun m!7591452 () Bool)

(assert (=> b!6853763 m!7591452))

(assert (=> b!6853756 m!7589908))

(assert (=> b!6853756 m!7590536))

(assert (=> b!6853756 m!7590536))

(assert (=> b!6853756 m!7590540))

(assert (=> b!6852733 d!2154122))

(declare-fun c!1275883 () Bool)

(declare-fun bm!624330 () Bool)

(declare-fun call!624336 () Regex!16677)

(declare-fun c!1275882 () Bool)

(assert (=> bm!624330 (= call!624336 (derivativeStep!5323 (ite c!1275883 (regTwo!33867 (h!72654 lt!2456210)) (ite c!1275882 (reg!17006 (h!72654 lt!2456210)) (regOne!33866 (h!72654 lt!2456210)))) (head!13733 s!2326)))))

(declare-fun b!6853772 () Bool)

(declare-fun e!4132720 () Regex!16677)

(declare-fun e!4132718 () Regex!16677)

(assert (=> b!6853772 (= e!4132720 e!4132718)))

(assert (=> b!6853772 (= c!1275882 ((_ is Star!16677) (h!72654 lt!2456210)))))

(declare-fun bm!624331 () Bool)

(declare-fun call!624338 () Regex!16677)

(declare-fun c!1275884 () Bool)

(assert (=> bm!624331 (= call!624338 (derivativeStep!5323 (ite c!1275883 (regOne!33867 (h!72654 lt!2456210)) (ite c!1275884 (regTwo!33866 (h!72654 lt!2456210)) (regOne!33866 (h!72654 lt!2456210)))) (head!13733 s!2326)))))

(declare-fun call!624335 () Regex!16677)

(declare-fun b!6853773 () Bool)

(declare-fun e!4132717 () Regex!16677)

(declare-fun call!624337 () Regex!16677)

(assert (=> b!6853773 (= e!4132717 (Union!16677 (Concat!25522 call!624335 (regTwo!33866 (h!72654 lt!2456210))) call!624337))))

(declare-fun bm!624332 () Bool)

(assert (=> bm!624332 (= call!624335 call!624336)))

(declare-fun d!2154126 () Bool)

(declare-fun lt!2456426 () Regex!16677)

(assert (=> d!2154126 (validRegex!8413 lt!2456426)))

(declare-fun e!4132721 () Regex!16677)

(assert (=> d!2154126 (= lt!2456426 e!4132721)))

(declare-fun c!1275881 () Bool)

(assert (=> d!2154126 (= c!1275881 (or ((_ is EmptyExpr!16677) (h!72654 lt!2456210)) ((_ is EmptyLang!16677) (h!72654 lt!2456210))))))

(assert (=> d!2154126 (validRegex!8413 (h!72654 lt!2456210))))

(assert (=> d!2154126 (= (derivativeStep!5323 (h!72654 lt!2456210) (head!13733 s!2326)) lt!2456426)))

(declare-fun b!6853774 () Bool)

(declare-fun e!4132719 () Regex!16677)

(assert (=> b!6853774 (= e!4132721 e!4132719)))

(declare-fun c!1275880 () Bool)

(assert (=> b!6853774 (= c!1275880 ((_ is ElementMatch!16677) (h!72654 lt!2456210)))))

(declare-fun bm!624333 () Bool)

(assert (=> bm!624333 (= call!624337 call!624338)))

(declare-fun b!6853775 () Bool)

(assert (=> b!6853775 (= e!4132717 (Union!16677 (Concat!25522 call!624337 (regTwo!33866 (h!72654 lt!2456210))) EmptyLang!16677))))

(declare-fun b!6853776 () Bool)

(assert (=> b!6853776 (= e!4132720 (Union!16677 call!624338 call!624336))))

(declare-fun b!6853777 () Bool)

(assert (=> b!6853777 (= c!1275884 (nullable!6640 (regOne!33866 (h!72654 lt!2456210))))))

(assert (=> b!6853777 (= e!4132718 e!4132717)))

(declare-fun b!6853778 () Bool)

(assert (=> b!6853778 (= c!1275883 ((_ is Union!16677) (h!72654 lt!2456210)))))

(assert (=> b!6853778 (= e!4132719 e!4132720)))

(declare-fun b!6853779 () Bool)

(assert (=> b!6853779 (= e!4132719 (ite (= (head!13733 s!2326) (c!1275345 (h!72654 lt!2456210))) EmptyExpr!16677 EmptyLang!16677))))

(declare-fun b!6853780 () Bool)

(assert (=> b!6853780 (= e!4132718 (Concat!25522 call!624335 (h!72654 lt!2456210)))))

(declare-fun b!6853781 () Bool)

(assert (=> b!6853781 (= e!4132721 EmptyLang!16677)))

(assert (= (and d!2154126 c!1275881) b!6853781))

(assert (= (and d!2154126 (not c!1275881)) b!6853774))

(assert (= (and b!6853774 c!1275880) b!6853779))

(assert (= (and b!6853774 (not c!1275880)) b!6853778))

(assert (= (and b!6853778 c!1275883) b!6853776))

(assert (= (and b!6853778 (not c!1275883)) b!6853772))

(assert (= (and b!6853772 c!1275882) b!6853780))

(assert (= (and b!6853772 (not c!1275882)) b!6853777))

(assert (= (and b!6853777 c!1275884) b!6853773))

(assert (= (and b!6853777 (not c!1275884)) b!6853775))

(assert (= (or b!6853773 b!6853775) bm!624333))

(assert (= (or b!6853780 b!6853773) bm!624332))

(assert (= (or b!6853776 bm!624332) bm!624330))

(assert (= (or b!6853776 bm!624333) bm!624331))

(assert (=> bm!624330 m!7589900))

(declare-fun m!7591458 () Bool)

(assert (=> bm!624330 m!7591458))

(assert (=> bm!624331 m!7589900))

(declare-fun m!7591460 () Bool)

(assert (=> bm!624331 m!7591460))

(declare-fun m!7591462 () Bool)

(assert (=> d!2154126 m!7591462))

(assert (=> d!2154126 m!7590016))

(declare-fun m!7591464 () Bool)

(assert (=> b!6853777 m!7591464))

(assert (=> b!6852733 d!2154126))

(assert (=> b!6852733 d!2153670))

(assert (=> b!6852733 d!2153720))

(declare-fun bs!1832092 () Bool)

(declare-fun d!2154130 () Bool)

(assert (= bs!1832092 (and d!2154130 d!2153732)))

(declare-fun lambda!387477 () Int)

(assert (=> bs!1832092 (not (= lambda!387477 lambda!387445))))

(declare-fun bs!1832093 () Bool)

(assert (= bs!1832093 (and d!2154130 d!2153730)))

(assert (=> bs!1832093 (not (= lambda!387477 lambda!387442))))

(declare-fun bs!1832094 () Bool)

(assert (= bs!1832094 (and d!2154130 d!2153496)))

(assert (=> bs!1832094 (not (= lambda!387477 lambda!387395))))

(declare-fun bs!1832095 () Bool)

(assert (= bs!1832095 (and d!2154130 d!2153882)))

(assert (=> bs!1832095 (not (= lambda!387477 lambda!387455))))

(declare-fun bs!1832096 () Bool)

(assert (= bs!1832096 (and d!2154130 d!2153498)))

(assert (=> bs!1832096 (not (= lambda!387477 lambda!387401))))

(declare-fun bs!1832097 () Bool)

(assert (= bs!1832097 (and d!2154130 d!2153918)))

(assert (=> bs!1832097 (not (= lambda!387477 lambda!387461))))

(declare-fun bs!1832098 () Bool)

(assert (= bs!1832098 (and d!2154130 d!2153748)))

(assert (=> bs!1832098 (= lambda!387477 lambda!387446)))

(declare-fun bs!1832099 () Bool)

(assert (= bs!1832099 (and d!2154130 d!2153764)))

(assert (=> bs!1832099 (= lambda!387477 lambda!387448)))

(declare-fun bs!1832100 () Bool)

(assert (= bs!1832100 (and d!2154130 d!2153758)))

(assert (=> bs!1832100 (= lambda!387477 lambda!387447)))

(declare-fun bs!1832101 () Bool)

(assert (= bs!1832101 (and d!2154130 d!2153502)))

(assert (=> bs!1832101 (= lambda!387477 lambda!387405)))

(declare-fun bs!1832102 () Bool)

(assert (= bs!1832102 (and d!2154130 d!2153902)))

(assert (=> bs!1832102 (= lambda!387477 lambda!387459)))

(declare-fun bs!1832103 () Bool)

(assert (= bs!1832103 (and d!2154130 d!2153480)))

(assert (=> bs!1832103 (= lambda!387477 lambda!387392)))

(declare-fun bs!1832104 () Bool)

(assert (= bs!1832104 (and d!2154130 d!2153998)))

(assert (=> bs!1832104 (= lambda!387477 lambda!387468)))

(declare-fun bs!1832105 () Bool)

(assert (= bs!1832105 (and d!2154130 d!2153712)))

(assert (=> bs!1832105 (= lambda!387477 lambda!387436)))

(declare-fun bs!1832106 () Bool)

(assert (= bs!1832106 (and d!2154130 d!2153840)))

(assert (=> bs!1832106 (= lambda!387477 lambda!387454)))

(declare-fun bs!1832107 () Bool)

(assert (= bs!1832107 (and d!2154130 d!2153894)))

(assert (=> bs!1832107 (= lambda!387477 lambda!387457)))

(declare-fun bs!1832108 () Bool)

(assert (= bs!1832108 (and d!2154130 d!2153794)))

(assert (=> bs!1832108 (= lambda!387477 lambda!387451)))

(declare-fun bs!1832109 () Bool)

(assert (= bs!1832109 (and d!2154130 d!2153932)))

(assert (=> bs!1832109 (= lambda!387477 lambda!387462)))

(declare-fun bs!1832110 () Bool)

(assert (= bs!1832110 (and d!2154130 d!2153724)))

(assert (=> bs!1832110 (= lambda!387477 lambda!387439)))

(declare-fun bs!1832111 () Bool)

(assert (= bs!1832111 (and d!2154130 b!6851566)))

(assert (=> bs!1832111 (not (= lambda!387477 lambda!387348))))

(declare-fun bs!1832112 () Bool)

(assert (= bs!1832112 (and d!2154130 d!2153500)))

(assert (=> bs!1832112 (= lambda!387477 lambda!387404)))

(declare-fun bs!1832113 () Bool)

(assert (= bs!1832113 (and d!2154130 d!2153968)))

(assert (=> bs!1832113 (= lambda!387477 lambda!387467)))

(assert (=> bs!1832096 (= lambda!387477 lambda!387400)))

(declare-fun bs!1832114 () Bool)

(assert (= bs!1832114 (and d!2154130 d!2153792)))

(assert (=> bs!1832114 (= lambda!387477 lambda!387450)))

(declare-fun bs!1832115 () Bool)

(assert (= bs!1832115 (and d!2154130 d!2153770)))

(assert (=> bs!1832115 (= lambda!387477 lambda!387449)))

(declare-fun bs!1832116 () Bool)

(assert (= bs!1832116 (and d!2154130 d!2154008)))

(assert (=> bs!1832116 (= lambda!387477 lambda!387469)))

(assert (=> d!2154130 (= (inv!84939 (h!72655 res!2796856)) (forall!15858 (exprs!6561 (h!72655 res!2796856)) lambda!387477))))

(declare-fun bs!1832117 () Bool)

(assert (= bs!1832117 d!2154130))

(declare-fun m!7591472 () Bool)

(assert (=> bs!1832117 m!7591472))

(assert (=> b!6852910 d!2154130))

(declare-fun d!2154138 () Bool)

(declare-fun res!2797195 () Bool)

(declare-fun e!4132731 () Bool)

(assert (=> d!2154138 (=> res!2797195 e!4132731)))

(assert (=> d!2154138 (= res!2797195 ((_ is Nil!66206) (t!380073 lt!2456210)))))

(assert (=> d!2154138 (= (forall!15858 (t!380073 lt!2456210) lambda!387400) e!4132731)))

(declare-fun b!6853793 () Bool)

(declare-fun e!4132732 () Bool)

(assert (=> b!6853793 (= e!4132731 e!4132732)))

(declare-fun res!2797196 () Bool)

(assert (=> b!6853793 (=> (not res!2797196) (not e!4132732))))

(assert (=> b!6853793 (= res!2797196 (dynLambda!26464 lambda!387400 (h!72654 (t!380073 lt!2456210))))))

(declare-fun b!6853794 () Bool)

(assert (=> b!6853794 (= e!4132732 (forall!15858 (t!380073 (t!380073 lt!2456210)) lambda!387400))))

(assert (= (and d!2154138 (not res!2797195)) b!6853793))

(assert (= (and b!6853793 res!2797196) b!6853794))

(declare-fun b_lambda!258821 () Bool)

(assert (=> (not b_lambda!258821) (not b!6853793)))

(declare-fun m!7591476 () Bool)

(assert (=> b!6853793 m!7591476))

(declare-fun m!7591478 () Bool)

(assert (=> b!6853794 m!7591478))

(assert (=> b!6852799 d!2154138))

(declare-fun d!2154140 () Bool)

(assert (=> d!2154140 (= (nullable!6640 (reg!17006 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209)))) (nullableFct!2524 (reg!17006 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209)))))))

(declare-fun bs!1832118 () Bool)

(assert (= bs!1832118 d!2154140))

(declare-fun m!7591482 () Bool)

(assert (=> bs!1832118 m!7591482))

(assert (=> b!6853004 d!2154140))

(declare-fun bs!1832119 () Bool)

(declare-fun d!2154144 () Bool)

(assert (= bs!1832119 (and d!2154144 d!2153732)))

(declare-fun lambda!387478 () Int)

(assert (=> bs!1832119 (not (= lambda!387478 lambda!387445))))

(declare-fun bs!1832120 () Bool)

(assert (= bs!1832120 (and d!2154144 d!2154130)))

(assert (=> bs!1832120 (= lambda!387478 lambda!387477)))

(declare-fun bs!1832121 () Bool)

(assert (= bs!1832121 (and d!2154144 d!2153730)))

(assert (=> bs!1832121 (not (= lambda!387478 lambda!387442))))

(declare-fun bs!1832122 () Bool)

(assert (= bs!1832122 (and d!2154144 d!2153496)))

(assert (=> bs!1832122 (not (= lambda!387478 lambda!387395))))

(declare-fun bs!1832123 () Bool)

(assert (= bs!1832123 (and d!2154144 d!2153882)))

(assert (=> bs!1832123 (not (= lambda!387478 lambda!387455))))

(declare-fun bs!1832124 () Bool)

(assert (= bs!1832124 (and d!2154144 d!2153498)))

(assert (=> bs!1832124 (not (= lambda!387478 lambda!387401))))

(declare-fun bs!1832125 () Bool)

(assert (= bs!1832125 (and d!2154144 d!2153918)))

(assert (=> bs!1832125 (not (= lambda!387478 lambda!387461))))

(declare-fun bs!1832126 () Bool)

(assert (= bs!1832126 (and d!2154144 d!2153748)))

(assert (=> bs!1832126 (= lambda!387478 lambda!387446)))

(declare-fun bs!1832127 () Bool)

(assert (= bs!1832127 (and d!2154144 d!2153764)))

(assert (=> bs!1832127 (= lambda!387478 lambda!387448)))

(declare-fun bs!1832128 () Bool)

(assert (= bs!1832128 (and d!2154144 d!2153758)))

(assert (=> bs!1832128 (= lambda!387478 lambda!387447)))

(declare-fun bs!1832129 () Bool)

(assert (= bs!1832129 (and d!2154144 d!2153502)))

(assert (=> bs!1832129 (= lambda!387478 lambda!387405)))

(declare-fun bs!1832130 () Bool)

(assert (= bs!1832130 (and d!2154144 d!2153902)))

(assert (=> bs!1832130 (= lambda!387478 lambda!387459)))

(declare-fun bs!1832131 () Bool)

(assert (= bs!1832131 (and d!2154144 d!2153480)))

(assert (=> bs!1832131 (= lambda!387478 lambda!387392)))

(declare-fun bs!1832132 () Bool)

(assert (= bs!1832132 (and d!2154144 d!2153998)))

(assert (=> bs!1832132 (= lambda!387478 lambda!387468)))

(declare-fun bs!1832133 () Bool)

(assert (= bs!1832133 (and d!2154144 d!2153712)))

(assert (=> bs!1832133 (= lambda!387478 lambda!387436)))

(declare-fun bs!1832135 () Bool)

(assert (= bs!1832135 (and d!2154144 d!2153840)))

(assert (=> bs!1832135 (= lambda!387478 lambda!387454)))

(declare-fun bs!1832136 () Bool)

(assert (= bs!1832136 (and d!2154144 d!2153894)))

(assert (=> bs!1832136 (= lambda!387478 lambda!387457)))

(declare-fun bs!1832137 () Bool)

(assert (= bs!1832137 (and d!2154144 d!2153794)))

(assert (=> bs!1832137 (= lambda!387478 lambda!387451)))

(declare-fun bs!1832139 () Bool)

(assert (= bs!1832139 (and d!2154144 d!2153932)))

(assert (=> bs!1832139 (= lambda!387478 lambda!387462)))

(declare-fun bs!1832140 () Bool)

(assert (= bs!1832140 (and d!2154144 d!2153724)))

(assert (=> bs!1832140 (= lambda!387478 lambda!387439)))

(declare-fun bs!1832141 () Bool)

(assert (= bs!1832141 (and d!2154144 b!6851566)))

(assert (=> bs!1832141 (not (= lambda!387478 lambda!387348))))

(declare-fun bs!1832143 () Bool)

(assert (= bs!1832143 (and d!2154144 d!2153500)))

(assert (=> bs!1832143 (= lambda!387478 lambda!387404)))

(declare-fun bs!1832144 () Bool)

(assert (= bs!1832144 (and d!2154144 d!2153968)))

(assert (=> bs!1832144 (= lambda!387478 lambda!387467)))

(assert (=> bs!1832124 (= lambda!387478 lambda!387400)))

(declare-fun bs!1832146 () Bool)

(assert (= bs!1832146 (and d!2154144 d!2153792)))

(assert (=> bs!1832146 (= lambda!387478 lambda!387450)))

(declare-fun bs!1832147 () Bool)

(assert (= bs!1832147 (and d!2154144 d!2153770)))

(assert (=> bs!1832147 (= lambda!387478 lambda!387449)))

(declare-fun bs!1832148 () Bool)

(assert (= bs!1832148 (and d!2154144 d!2154008)))

(assert (=> bs!1832148 (= lambda!387478 lambda!387469)))

(declare-fun e!4132739 () Bool)

(assert (=> d!2154144 e!4132739))

(declare-fun res!2797200 () Bool)

(assert (=> d!2154144 (=> (not res!2797200) (not e!4132739))))

(declare-fun lt!2456428 () Regex!16677)

(assert (=> d!2154144 (= res!2797200 (validRegex!8413 lt!2456428))))

(declare-fun e!4132738 () Regex!16677)

(assert (=> d!2154144 (= lt!2456428 e!4132738)))

(declare-fun c!1275890 () Bool)

(declare-fun e!4132736 () Bool)

(assert (=> d!2154144 (= c!1275890 e!4132736)))

(declare-fun res!2797199 () Bool)

(assert (=> d!2154144 (=> (not res!2797199) (not e!4132736))))

(assert (=> d!2154144 (= res!2797199 ((_ is Cons!66206) (t!380073 (unfocusZipperList!2094 lt!2456208))))))

(assert (=> d!2154144 (forall!15858 (t!380073 (unfocusZipperList!2094 lt!2456208)) lambda!387478)))

(assert (=> d!2154144 (= (generalisedUnion!2515 (t!380073 (unfocusZipperList!2094 lt!2456208))) lt!2456428)))

(declare-fun b!6853797 () Bool)

(declare-fun e!4132737 () Bool)

(assert (=> b!6853797 (= e!4132737 (= lt!2456428 (head!13734 (t!380073 (unfocusZipperList!2094 lt!2456208)))))))

(declare-fun b!6853798 () Bool)

(declare-fun e!4132740 () Regex!16677)

(assert (=> b!6853798 (= e!4132740 EmptyLang!16677)))

(declare-fun b!6853799 () Bool)

(declare-fun e!4132735 () Bool)

(assert (=> b!6853799 (= e!4132735 (isEmptyLang!2019 lt!2456428))))

(declare-fun b!6853800 () Bool)

(assert (=> b!6853800 (= e!4132738 (h!72654 (t!380073 (unfocusZipperList!2094 lt!2456208))))))

(declare-fun b!6853801 () Bool)

(assert (=> b!6853801 (= e!4132735 e!4132737)))

(declare-fun c!1275887 () Bool)

(assert (=> b!6853801 (= c!1275887 (isEmpty!38581 (tail!12810 (t!380073 (unfocusZipperList!2094 lt!2456208)))))))

(declare-fun b!6853802 () Bool)

(assert (=> b!6853802 (= e!4132739 e!4132735)))

(declare-fun c!1275889 () Bool)

(assert (=> b!6853802 (= c!1275889 (isEmpty!38581 (t!380073 (unfocusZipperList!2094 lt!2456208))))))

(declare-fun b!6853803 () Bool)

(assert (=> b!6853803 (= e!4132738 e!4132740)))

(declare-fun c!1275888 () Bool)

(assert (=> b!6853803 (= c!1275888 ((_ is Cons!66206) (t!380073 (unfocusZipperList!2094 lt!2456208))))))

(declare-fun b!6853804 () Bool)

(assert (=> b!6853804 (= e!4132740 (Union!16677 (h!72654 (t!380073 (unfocusZipperList!2094 lt!2456208))) (generalisedUnion!2515 (t!380073 (t!380073 (unfocusZipperList!2094 lt!2456208))))))))

(declare-fun b!6853805 () Bool)

(assert (=> b!6853805 (= e!4132736 (isEmpty!38581 (t!380073 (t!380073 (unfocusZipperList!2094 lt!2456208)))))))

(declare-fun b!6853806 () Bool)

(assert (=> b!6853806 (= e!4132737 (isUnion!1449 lt!2456428))))

(assert (= (and d!2154144 res!2797199) b!6853805))

(assert (= (and d!2154144 c!1275890) b!6853800))

(assert (= (and d!2154144 (not c!1275890)) b!6853803))

(assert (= (and b!6853803 c!1275888) b!6853804))

(assert (= (and b!6853803 (not c!1275888)) b!6853798))

(assert (= (and d!2154144 res!2797200) b!6853802))

(assert (= (and b!6853802 c!1275889) b!6853799))

(assert (= (and b!6853802 (not c!1275889)) b!6853801))

(assert (= (and b!6853801 c!1275887) b!6853797))

(assert (= (and b!6853801 (not c!1275887)) b!6853806))

(declare-fun m!7591490 () Bool)

(assert (=> b!6853806 m!7591490))

(declare-fun m!7591492 () Bool)

(assert (=> b!6853805 m!7591492))

(declare-fun m!7591494 () Bool)

(assert (=> b!6853799 m!7591494))

(declare-fun m!7591496 () Bool)

(assert (=> b!6853804 m!7591496))

(declare-fun m!7591498 () Bool)

(assert (=> b!6853797 m!7591498))

(declare-fun m!7591500 () Bool)

(assert (=> d!2154144 m!7591500))

(declare-fun m!7591502 () Bool)

(assert (=> d!2154144 m!7591502))

(assert (=> b!6853802 m!7590668))

(declare-fun m!7591504 () Bool)

(assert (=> b!6853801 m!7591504))

(assert (=> b!6853801 m!7591504))

(declare-fun m!7591506 () Bool)

(assert (=> b!6853801 m!7591506))

(assert (=> b!6852955 d!2154144))

(declare-fun b!6853817 () Bool)

(declare-fun res!2797204 () Bool)

(declare-fun e!4132752 () Bool)

(assert (=> b!6853817 (=> res!2797204 e!4132752)))

(assert (=> b!6853817 (= res!2797204 (not ((_ is Concat!25522) lt!2456375)))))

(declare-fun e!4132753 () Bool)

(assert (=> b!6853817 (= e!4132753 e!4132752)))

(declare-fun b!6853818 () Bool)

(declare-fun res!2797205 () Bool)

(declare-fun e!4132747 () Bool)

(assert (=> b!6853818 (=> (not res!2797205) (not e!4132747))))

(declare-fun call!624342 () Bool)

(assert (=> b!6853818 (= res!2797205 call!624342)))

(assert (=> b!6853818 (= e!4132753 e!4132747)))

(declare-fun c!1275896 () Bool)

(declare-fun call!624343 () Bool)

(declare-fun bm!624337 () Bool)

(declare-fun c!1275895 () Bool)

(assert (=> bm!624337 (= call!624343 (validRegex!8413 (ite c!1275895 (reg!17006 lt!2456375) (ite c!1275896 (regOne!33867 lt!2456375) (regOne!33866 lt!2456375)))))))

(declare-fun b!6853819 () Bool)

(declare-fun call!624344 () Bool)

(assert (=> b!6853819 (= e!4132747 call!624344)))

(declare-fun b!6853821 () Bool)

(declare-fun e!4132748 () Bool)

(declare-fun e!4132749 () Bool)

(assert (=> b!6853821 (= e!4132748 e!4132749)))

(assert (=> b!6853821 (= c!1275895 ((_ is Star!16677) lt!2456375))))

(declare-fun b!6853822 () Bool)

(assert (=> b!6853822 (= e!4132749 e!4132753)))

(assert (=> b!6853822 (= c!1275896 ((_ is Union!16677) lt!2456375))))

(declare-fun bm!624338 () Bool)

(assert (=> bm!624338 (= call!624342 call!624343)))

(declare-fun d!2154148 () Bool)

(declare-fun res!2797206 () Bool)

(assert (=> d!2154148 (=> res!2797206 e!4132748)))

(assert (=> d!2154148 (= res!2797206 ((_ is ElementMatch!16677) lt!2456375))))

(assert (=> d!2154148 (= (validRegex!8413 lt!2456375) e!4132748)))

(declare-fun b!6853820 () Bool)

(declare-fun e!4132750 () Bool)

(assert (=> b!6853820 (= e!4132749 e!4132750)))

(declare-fun res!2797207 () Bool)

(assert (=> b!6853820 (= res!2797207 (not (nullable!6640 (reg!17006 lt!2456375))))))

(assert (=> b!6853820 (=> (not res!2797207) (not e!4132750))))

(declare-fun b!6853823 () Bool)

(assert (=> b!6853823 (= e!4132750 call!624343)))

(declare-fun bm!624339 () Bool)

(assert (=> bm!624339 (= call!624344 (validRegex!8413 (ite c!1275896 (regTwo!33867 lt!2456375) (regTwo!33866 lt!2456375))))))

(declare-fun b!6853824 () Bool)

(declare-fun e!4132751 () Bool)

(assert (=> b!6853824 (= e!4132751 call!624344)))

(declare-fun b!6853825 () Bool)

(assert (=> b!6853825 (= e!4132752 e!4132751)))

(declare-fun res!2797203 () Bool)

(assert (=> b!6853825 (=> (not res!2797203) (not e!4132751))))

(assert (=> b!6853825 (= res!2797203 call!624342)))

(assert (= (and d!2154148 (not res!2797206)) b!6853821))

(assert (= (and b!6853821 c!1275895) b!6853820))

(assert (= (and b!6853821 (not c!1275895)) b!6853822))

(assert (= (and b!6853820 res!2797207) b!6853823))

(assert (= (and b!6853822 c!1275896) b!6853818))

(assert (= (and b!6853822 (not c!1275896)) b!6853817))

(assert (= (and b!6853818 res!2797205) b!6853819))

(assert (= (and b!6853817 (not res!2797204)) b!6853825))

(assert (= (and b!6853825 res!2797203) b!6853824))

(assert (= (or b!6853819 b!6853824) bm!624339))

(assert (= (or b!6853818 b!6853825) bm!624338))

(assert (= (or b!6853823 bm!624338) bm!624337))

(declare-fun m!7591508 () Bool)

(assert (=> bm!624337 m!7591508))

(declare-fun m!7591510 () Bool)

(assert (=> b!6853820 m!7591510))

(declare-fun m!7591512 () Bool)

(assert (=> bm!624339 m!7591512))

(assert (=> d!2153792 d!2154148))

(declare-fun d!2154150 () Bool)

(declare-fun res!2797208 () Bool)

(declare-fun e!4132754 () Bool)

(assert (=> d!2154150 (=> res!2797208 e!4132754)))

(assert (=> d!2154150 (= res!2797208 ((_ is Nil!66206) (unfocusZipperList!2094 lt!2456208)))))

(assert (=> d!2154150 (= (forall!15858 (unfocusZipperList!2094 lt!2456208) lambda!387450) e!4132754)))

(declare-fun b!6853826 () Bool)

(declare-fun e!4132755 () Bool)

(assert (=> b!6853826 (= e!4132754 e!4132755)))

(declare-fun res!2797209 () Bool)

(assert (=> b!6853826 (=> (not res!2797209) (not e!4132755))))

(assert (=> b!6853826 (= res!2797209 (dynLambda!26464 lambda!387450 (h!72654 (unfocusZipperList!2094 lt!2456208))))))

(declare-fun b!6853827 () Bool)

(assert (=> b!6853827 (= e!4132755 (forall!15858 (t!380073 (unfocusZipperList!2094 lt!2456208)) lambda!387450))))

(assert (= (and d!2154150 (not res!2797208)) b!6853826))

(assert (= (and b!6853826 res!2797209) b!6853827))

(declare-fun b_lambda!258823 () Bool)

(assert (=> (not b_lambda!258823) (not b!6853826)))

(declare-fun m!7591514 () Bool)

(assert (=> b!6853826 m!7591514))

(declare-fun m!7591516 () Bool)

(assert (=> b!6853827 m!7591516))

(assert (=> d!2153792 d!2154150))

(declare-fun b!6853828 () Bool)

(declare-fun res!2797211 () Bool)

(declare-fun e!4132761 () Bool)

(assert (=> b!6853828 (=> res!2797211 e!4132761)))

(assert (=> b!6853828 (= res!2797211 (not ((_ is Concat!25522) lt!2456357)))))

(declare-fun e!4132762 () Bool)

(assert (=> b!6853828 (= e!4132762 e!4132761)))

(declare-fun b!6853829 () Bool)

(declare-fun res!2797212 () Bool)

(declare-fun e!4132756 () Bool)

(assert (=> b!6853829 (=> (not res!2797212) (not e!4132756))))

(declare-fun call!624345 () Bool)

(assert (=> b!6853829 (= res!2797212 call!624345)))

(assert (=> b!6853829 (= e!4132762 e!4132756)))

(declare-fun call!624346 () Bool)

(declare-fun c!1275897 () Bool)

(declare-fun c!1275898 () Bool)

(declare-fun bm!624340 () Bool)

(assert (=> bm!624340 (= call!624346 (validRegex!8413 (ite c!1275897 (reg!17006 lt!2456357) (ite c!1275898 (regOne!33867 lt!2456357) (regOne!33866 lt!2456357)))))))

(declare-fun b!6853830 () Bool)

(declare-fun call!624347 () Bool)

(assert (=> b!6853830 (= e!4132756 call!624347)))

(declare-fun b!6853832 () Bool)

(declare-fun e!4132757 () Bool)

(declare-fun e!4132758 () Bool)

(assert (=> b!6853832 (= e!4132757 e!4132758)))

(assert (=> b!6853832 (= c!1275897 ((_ is Star!16677) lt!2456357))))

(declare-fun b!6853833 () Bool)

(assert (=> b!6853833 (= e!4132758 e!4132762)))

(assert (=> b!6853833 (= c!1275898 ((_ is Union!16677) lt!2456357))))

(declare-fun bm!624341 () Bool)

(assert (=> bm!624341 (= call!624345 call!624346)))

(declare-fun d!2154152 () Bool)

(declare-fun res!2797213 () Bool)

(assert (=> d!2154152 (=> res!2797213 e!4132757)))

(assert (=> d!2154152 (= res!2797213 ((_ is ElementMatch!16677) lt!2456357))))

(assert (=> d!2154152 (= (validRegex!8413 lt!2456357) e!4132757)))

(declare-fun b!6853831 () Bool)

(declare-fun e!4132759 () Bool)

(assert (=> b!6853831 (= e!4132758 e!4132759)))

(declare-fun res!2797214 () Bool)

(assert (=> b!6853831 (= res!2797214 (not (nullable!6640 (reg!17006 lt!2456357))))))

(assert (=> b!6853831 (=> (not res!2797214) (not e!4132759))))

(declare-fun b!6853834 () Bool)

(assert (=> b!6853834 (= e!4132759 call!624346)))

(declare-fun bm!624342 () Bool)

(assert (=> bm!624342 (= call!624347 (validRegex!8413 (ite c!1275898 (regTwo!33867 lt!2456357) (regTwo!33866 lt!2456357))))))

(declare-fun b!6853835 () Bool)

(declare-fun e!4132760 () Bool)

(assert (=> b!6853835 (= e!4132760 call!624347)))

(declare-fun b!6853836 () Bool)

(assert (=> b!6853836 (= e!4132761 e!4132760)))

(declare-fun res!2797210 () Bool)

(assert (=> b!6853836 (=> (not res!2797210) (not e!4132760))))

(assert (=> b!6853836 (= res!2797210 call!624345)))

(assert (= (and d!2154152 (not res!2797213)) b!6853832))

(assert (= (and b!6853832 c!1275897) b!6853831))

(assert (= (and b!6853832 (not c!1275897)) b!6853833))

(assert (= (and b!6853831 res!2797214) b!6853834))

(assert (= (and b!6853833 c!1275898) b!6853829))

(assert (= (and b!6853833 (not c!1275898)) b!6853828))

(assert (= (and b!6853829 res!2797212) b!6853830))

(assert (= (and b!6853828 (not res!2797211)) b!6853836))

(assert (= (and b!6853836 res!2797210) b!6853835))

(assert (= (or b!6853830 b!6853835) bm!624342))

(assert (= (or b!6853829 b!6853836) bm!624341))

(assert (= (or b!6853834 bm!624341) bm!624340))

(declare-fun m!7591518 () Bool)

(assert (=> bm!624340 m!7591518))

(declare-fun m!7591520 () Bool)

(assert (=> b!6853831 m!7591520))

(declare-fun m!7591522 () Bool)

(assert (=> bm!624342 m!7591522))

(assert (=> d!2153712 d!2154152))

(declare-fun d!2154154 () Bool)

(declare-fun res!2797215 () Bool)

(declare-fun e!4132763 () Bool)

(assert (=> d!2154154 (=> res!2797215 e!4132763)))

(assert (=> d!2154154 (= res!2797215 ((_ is Nil!66206) (unfocusZipperList!2094 zl!343)))))

(assert (=> d!2154154 (= (forall!15858 (unfocusZipperList!2094 zl!343) lambda!387436) e!4132763)))

(declare-fun b!6853837 () Bool)

(declare-fun e!4132764 () Bool)

(assert (=> b!6853837 (= e!4132763 e!4132764)))

(declare-fun res!2797216 () Bool)

(assert (=> b!6853837 (=> (not res!2797216) (not e!4132764))))

(assert (=> b!6853837 (= res!2797216 (dynLambda!26464 lambda!387436 (h!72654 (unfocusZipperList!2094 zl!343))))))

(declare-fun b!6853838 () Bool)

(assert (=> b!6853838 (= e!4132764 (forall!15858 (t!380073 (unfocusZipperList!2094 zl!343)) lambda!387436))))

(assert (= (and d!2154154 (not res!2797215)) b!6853837))

(assert (= (and b!6853837 res!2797216) b!6853838))

(declare-fun b_lambda!258825 () Bool)

(assert (=> (not b_lambda!258825) (not b!6853837)))

(declare-fun m!7591528 () Bool)

(assert (=> b!6853837 m!7591528))

(declare-fun m!7591532 () Bool)

(assert (=> b!6853838 m!7591532))

(assert (=> d!2153712 d!2154154))

(assert (=> d!2153760 d!2153460))

(assert (=> d!2153760 d!2153444))

(declare-fun b!6853839 () Bool)

(declare-fun res!2797218 () Bool)

(declare-fun e!4132770 () Bool)

(assert (=> b!6853839 (=> res!2797218 e!4132770)))

(assert (=> b!6853839 (= res!2797218 (not ((_ is Concat!25522) (ite c!1275675 (reg!17006 lt!2456284) (ite c!1275676 (regOne!33867 lt!2456284) (regOne!33866 lt!2456284))))))))

(declare-fun e!4132771 () Bool)

(assert (=> b!6853839 (= e!4132771 e!4132770)))

(declare-fun b!6853840 () Bool)

(declare-fun res!2797219 () Bool)

(declare-fun e!4132765 () Bool)

(assert (=> b!6853840 (=> (not res!2797219) (not e!4132765))))

(declare-fun call!624348 () Bool)

(assert (=> b!6853840 (= res!2797219 call!624348)))

(assert (=> b!6853840 (= e!4132771 e!4132765)))

(declare-fun c!1275899 () Bool)

(declare-fun bm!624343 () Bool)

(declare-fun call!624349 () Bool)

(declare-fun c!1275900 () Bool)

(assert (=> bm!624343 (= call!624349 (validRegex!8413 (ite c!1275899 (reg!17006 (ite c!1275675 (reg!17006 lt!2456284) (ite c!1275676 (regOne!33867 lt!2456284) (regOne!33866 lt!2456284)))) (ite c!1275900 (regOne!33867 (ite c!1275675 (reg!17006 lt!2456284) (ite c!1275676 (regOne!33867 lt!2456284) (regOne!33866 lt!2456284)))) (regOne!33866 (ite c!1275675 (reg!17006 lt!2456284) (ite c!1275676 (regOne!33867 lt!2456284) (regOne!33866 lt!2456284))))))))))

(declare-fun b!6853841 () Bool)

(declare-fun call!624350 () Bool)

(assert (=> b!6853841 (= e!4132765 call!624350)))

(declare-fun b!6853843 () Bool)

(declare-fun e!4132766 () Bool)

(declare-fun e!4132767 () Bool)

(assert (=> b!6853843 (= e!4132766 e!4132767)))

(assert (=> b!6853843 (= c!1275899 ((_ is Star!16677) (ite c!1275675 (reg!17006 lt!2456284) (ite c!1275676 (regOne!33867 lt!2456284) (regOne!33866 lt!2456284)))))))

(declare-fun b!6853844 () Bool)

(assert (=> b!6853844 (= e!4132767 e!4132771)))

(assert (=> b!6853844 (= c!1275900 ((_ is Union!16677) (ite c!1275675 (reg!17006 lt!2456284) (ite c!1275676 (regOne!33867 lt!2456284) (regOne!33866 lt!2456284)))))))

(declare-fun bm!624344 () Bool)

(assert (=> bm!624344 (= call!624348 call!624349)))

(declare-fun d!2154156 () Bool)

(declare-fun res!2797220 () Bool)

(assert (=> d!2154156 (=> res!2797220 e!4132766)))

(assert (=> d!2154156 (= res!2797220 ((_ is ElementMatch!16677) (ite c!1275675 (reg!17006 lt!2456284) (ite c!1275676 (regOne!33867 lt!2456284) (regOne!33866 lt!2456284)))))))

(assert (=> d!2154156 (= (validRegex!8413 (ite c!1275675 (reg!17006 lt!2456284) (ite c!1275676 (regOne!33867 lt!2456284) (regOne!33866 lt!2456284)))) e!4132766)))

(declare-fun b!6853842 () Bool)

(declare-fun e!4132768 () Bool)

(assert (=> b!6853842 (= e!4132767 e!4132768)))

(declare-fun res!2797221 () Bool)

(assert (=> b!6853842 (= res!2797221 (not (nullable!6640 (reg!17006 (ite c!1275675 (reg!17006 lt!2456284) (ite c!1275676 (regOne!33867 lt!2456284) (regOne!33866 lt!2456284)))))))))

(assert (=> b!6853842 (=> (not res!2797221) (not e!4132768))))

(declare-fun b!6853845 () Bool)

(assert (=> b!6853845 (= e!4132768 call!624349)))

(declare-fun bm!624345 () Bool)

(assert (=> bm!624345 (= call!624350 (validRegex!8413 (ite c!1275900 (regTwo!33867 (ite c!1275675 (reg!17006 lt!2456284) (ite c!1275676 (regOne!33867 lt!2456284) (regOne!33866 lt!2456284)))) (regTwo!33866 (ite c!1275675 (reg!17006 lt!2456284) (ite c!1275676 (regOne!33867 lt!2456284) (regOne!33866 lt!2456284)))))))))

(declare-fun b!6853846 () Bool)

(declare-fun e!4132769 () Bool)

(assert (=> b!6853846 (= e!4132769 call!624350)))

(declare-fun b!6853847 () Bool)

(assert (=> b!6853847 (= e!4132770 e!4132769)))

(declare-fun res!2797217 () Bool)

(assert (=> b!6853847 (=> (not res!2797217) (not e!4132769))))

(assert (=> b!6853847 (= res!2797217 call!624348)))

(assert (= (and d!2154156 (not res!2797220)) b!6853843))

(assert (= (and b!6853843 c!1275899) b!6853842))

(assert (= (and b!6853843 (not c!1275899)) b!6853844))

(assert (= (and b!6853842 res!2797221) b!6853845))

(assert (= (and b!6853844 c!1275900) b!6853840))

(assert (= (and b!6853844 (not c!1275900)) b!6853839))

(assert (= (and b!6853840 res!2797219) b!6853841))

(assert (= (and b!6853839 (not res!2797218)) b!6853847))

(assert (= (and b!6853847 res!2797217) b!6853846))

(assert (= (or b!6853841 b!6853846) bm!624345))

(assert (= (or b!6853840 b!6853847) bm!624344))

(assert (= (or b!6853845 bm!624344) bm!624343))

(declare-fun m!7591546 () Bool)

(assert (=> bm!624343 m!7591546))

(declare-fun m!7591548 () Bool)

(assert (=> b!6853842 m!7591548))

(declare-fun m!7591550 () Bool)

(assert (=> bm!624345 m!7591550))

(assert (=> bm!624187 d!2154156))

(assert (=> bm!624193 d!2153672))

(declare-fun b!6853859 () Bool)

(declare-fun e!4132784 () Bool)

(declare-fun e!4132782 () Bool)

(assert (=> b!6853859 (= e!4132784 e!4132782)))

(declare-fun c!1275905 () Bool)

(assert (=> b!6853859 (= c!1275905 ((_ is Union!16677) (reg!17006 lt!2456209)))))

(declare-fun b!6853860 () Bool)

(declare-fun e!4132781 () Bool)

(assert (=> b!6853860 (= e!4132782 e!4132781)))

(declare-fun res!2797228 () Bool)

(declare-fun call!624354 () Bool)

(assert (=> b!6853860 (= res!2797228 call!624354)))

(assert (=> b!6853860 (=> (not res!2797228) (not e!4132781))))

(declare-fun d!2154160 () Bool)

(declare-fun res!2797226 () Bool)

(declare-fun e!4132779 () Bool)

(assert (=> d!2154160 (=> res!2797226 e!4132779)))

(assert (=> d!2154160 (= res!2797226 ((_ is EmptyExpr!16677) (reg!17006 lt!2456209)))))

(assert (=> d!2154160 (= (nullableFct!2524 (reg!17006 lt!2456209)) e!4132779)))

(declare-fun b!6853861 () Bool)

(declare-fun e!4132780 () Bool)

(declare-fun call!624353 () Bool)

(assert (=> b!6853861 (= e!4132780 call!624353)))

(declare-fun b!6853862 () Bool)

(declare-fun e!4132783 () Bool)

(assert (=> b!6853862 (= e!4132783 e!4132784)))

(declare-fun res!2797225 () Bool)

(assert (=> b!6853862 (=> res!2797225 e!4132784)))

(assert (=> b!6853862 (= res!2797225 ((_ is Star!16677) (reg!17006 lt!2456209)))))

(declare-fun b!6853863 () Bool)

(assert (=> b!6853863 (= e!4132779 e!4132783)))

(declare-fun res!2797229 () Bool)

(assert (=> b!6853863 (=> (not res!2797229) (not e!4132783))))

(assert (=> b!6853863 (= res!2797229 (and (not ((_ is EmptyLang!16677) (reg!17006 lt!2456209))) (not ((_ is ElementMatch!16677) (reg!17006 lt!2456209)))))))

(declare-fun b!6853864 () Bool)

(assert (=> b!6853864 (= e!4132781 call!624353)))

(declare-fun b!6853865 () Bool)

(assert (=> b!6853865 (= e!4132782 e!4132780)))

(declare-fun res!2797227 () Bool)

(assert (=> b!6853865 (= res!2797227 call!624354)))

(assert (=> b!6853865 (=> res!2797227 e!4132780)))

(declare-fun bm!624348 () Bool)

(assert (=> bm!624348 (= call!624354 (nullable!6640 (ite c!1275905 (regOne!33867 (reg!17006 lt!2456209)) (regOne!33866 (reg!17006 lt!2456209)))))))

(declare-fun bm!624349 () Bool)

(assert (=> bm!624349 (= call!624353 (nullable!6640 (ite c!1275905 (regTwo!33867 (reg!17006 lt!2456209)) (regTwo!33866 (reg!17006 lt!2456209)))))))

(assert (= (and d!2154160 (not res!2797226)) b!6853863))

(assert (= (and b!6853863 res!2797229) b!6853862))

(assert (= (and b!6853862 (not res!2797225)) b!6853859))

(assert (= (and b!6853859 c!1275905) b!6853865))

(assert (= (and b!6853859 (not c!1275905)) b!6853860))

(assert (= (and b!6853865 (not res!2797227)) b!6853861))

(assert (= (and b!6853860 res!2797228) b!6853864))

(assert (= (or b!6853861 b!6853864) bm!624349))

(assert (= (or b!6853865 b!6853860) bm!624348))

(declare-fun m!7591552 () Bool)

(assert (=> bm!624348 m!7591552))

(declare-fun m!7591554 () Bool)

(assert (=> bm!624349 m!7591554))

(assert (=> d!2153722 d!2154160))

(declare-fun b!6853866 () Bool)

(declare-fun e!4132785 () Int)

(declare-fun e!4132786 () Int)

(assert (=> b!6853866 (= e!4132785 e!4132786)))

(declare-fun c!1275906 () Bool)

(assert (=> b!6853866 (= c!1275906 ((_ is Star!16677) (h!72654 (exprs!6561 (Context!12123 (t!380073 (exprs!6561 lt!2456204)))))))))

(declare-fun d!2154162 () Bool)

(declare-fun lt!2456430 () Int)

(assert (=> d!2154162 (> lt!2456430 0)))

(assert (=> d!2154162 (= lt!2456430 e!4132785)))

(declare-fun c!1275908 () Bool)

(assert (=> d!2154162 (= c!1275908 ((_ is ElementMatch!16677) (h!72654 (exprs!6561 (Context!12123 (t!380073 (exprs!6561 lt!2456204)))))))))

(assert (=> d!2154162 (= (regexDepthTotal!251 (h!72654 (exprs!6561 (Context!12123 (t!380073 (exprs!6561 lt!2456204)))))) lt!2456430)))

(declare-fun b!6853867 () Bool)

(assert (=> b!6853867 (= e!4132785 1)))

(declare-fun b!6853868 () Bool)

(declare-fun e!4132788 () Int)

(assert (=> b!6853868 (= e!4132788 1)))

(declare-fun bm!624350 () Bool)

(declare-fun call!624355 () Int)

(declare-fun call!624356 () Int)

(assert (=> bm!624350 (= call!624355 call!624356)))

(declare-fun b!6853869 () Bool)

(declare-fun c!1275909 () Bool)

(assert (=> b!6853869 (= c!1275909 ((_ is Union!16677) (h!72654 (exprs!6561 (Context!12123 (t!380073 (exprs!6561 lt!2456204)))))))))

(declare-fun e!4132787 () Int)

(assert (=> b!6853869 (= e!4132786 e!4132787)))

(declare-fun b!6853870 () Bool)

(assert (=> b!6853870 (= e!4132787 e!4132788)))

(declare-fun c!1275907 () Bool)

(assert (=> b!6853870 (= c!1275907 ((_ is Concat!25522) (h!72654 (exprs!6561 (Context!12123 (t!380073 (exprs!6561 lt!2456204)))))))))

(declare-fun b!6853871 () Bool)

(declare-fun call!624357 () Int)

(assert (=> b!6853871 (= e!4132787 (+ 1 call!624357 call!624355))))

(declare-fun b!6853872 () Bool)

(assert (=> b!6853872 (= e!4132788 (+ 1 call!624357 call!624355))))

(declare-fun bm!624351 () Bool)

(assert (=> bm!624351 (= call!624356 (regexDepthTotal!251 (ite c!1275906 (reg!17006 (h!72654 (exprs!6561 (Context!12123 (t!380073 (exprs!6561 lt!2456204)))))) (ite c!1275909 (regTwo!33867 (h!72654 (exprs!6561 (Context!12123 (t!380073 (exprs!6561 lt!2456204)))))) (regTwo!33866 (h!72654 (exprs!6561 (Context!12123 (t!380073 (exprs!6561 lt!2456204))))))))))))

(declare-fun bm!624352 () Bool)

(assert (=> bm!624352 (= call!624357 (regexDepthTotal!251 (ite c!1275909 (regOne!33867 (h!72654 (exprs!6561 (Context!12123 (t!380073 (exprs!6561 lt!2456204)))))) (regOne!33866 (h!72654 (exprs!6561 (Context!12123 (t!380073 (exprs!6561 lt!2456204)))))))))))

(declare-fun b!6853873 () Bool)

(assert (=> b!6853873 (= e!4132786 (+ 1 call!624356))))

(assert (= (and d!2154162 c!1275908) b!6853867))

(assert (= (and d!2154162 (not c!1275908)) b!6853866))

(assert (= (and b!6853866 c!1275906) b!6853873))

(assert (= (and b!6853866 (not c!1275906)) b!6853869))

(assert (= (and b!6853869 c!1275909) b!6853871))

(assert (= (and b!6853869 (not c!1275909)) b!6853870))

(assert (= (and b!6853870 c!1275907) b!6853872))

(assert (= (and b!6853870 (not c!1275907)) b!6853868))

(assert (= (or b!6853871 b!6853872) bm!624350))

(assert (= (or b!6853871 b!6853872) bm!624352))

(assert (= (or b!6853873 bm!624350) bm!624351))

(declare-fun m!7591556 () Bool)

(assert (=> bm!624351 m!7591556))

(declare-fun m!7591558 () Bool)

(assert (=> bm!624352 m!7591558))

(assert (=> b!6852630 d!2154162))

(declare-fun d!2154164 () Bool)

(declare-fun lt!2456431 () Int)

(assert (=> d!2154164 (>= lt!2456431 0)))

(declare-fun e!4132789 () Int)

(assert (=> d!2154164 (= lt!2456431 e!4132789)))

(declare-fun c!1275910 () Bool)

(assert (=> d!2154164 (= c!1275910 ((_ is Cons!66206) (exprs!6561 (Context!12123 (t!380073 (exprs!6561 (Context!12123 (t!380073 (exprs!6561 lt!2456204)))))))))))

(assert (=> d!2154164 (= (contextDepthTotal!404 (Context!12123 (t!380073 (exprs!6561 (Context!12123 (t!380073 (exprs!6561 lt!2456204))))))) lt!2456431)))

(declare-fun b!6853874 () Bool)

(assert (=> b!6853874 (= e!4132789 (+ (regexDepthTotal!251 (h!72654 (exprs!6561 (Context!12123 (t!380073 (exprs!6561 (Context!12123 (t!380073 (exprs!6561 lt!2456204))))))))) (contextDepthTotal!404 (Context!12123 (t!380073 (exprs!6561 (Context!12123 (t!380073 (exprs!6561 (Context!12123 (t!380073 (exprs!6561 lt!2456204))))))))))))))

(declare-fun b!6853875 () Bool)

(assert (=> b!6853875 (= e!4132789 1)))

(assert (= (and d!2154164 c!1275910) b!6853874))

(assert (= (and d!2154164 (not c!1275910)) b!6853875))

(declare-fun m!7591560 () Bool)

(assert (=> b!6853874 m!7591560))

(declare-fun m!7591562 () Bool)

(assert (=> b!6853874 m!7591562))

(assert (=> b!6852630 d!2154164))

(declare-fun d!2154166 () Bool)

(declare-fun e!4132790 () Bool)

(assert (=> d!2154166 e!4132790))

(declare-fun c!1275913 () Bool)

(assert (=> d!2154166 (= c!1275913 ((_ is EmptyExpr!16677) (derivativeStep!5323 (derivativeStep!5323 r!7292 (head!13733 s!2326)) (head!13733 (tail!12808 s!2326)))))))

(declare-fun lt!2456432 () Bool)

(declare-fun e!4132793 () Bool)

(assert (=> d!2154166 (= lt!2456432 e!4132793)))

(declare-fun c!1275912 () Bool)

(assert (=> d!2154166 (= c!1275912 (isEmpty!38579 (tail!12808 (tail!12808 s!2326))))))

(assert (=> d!2154166 (validRegex!8413 (derivativeStep!5323 (derivativeStep!5323 r!7292 (head!13733 s!2326)) (head!13733 (tail!12808 s!2326))))))

(assert (=> d!2154166 (= (matchR!8860 (derivativeStep!5323 (derivativeStep!5323 r!7292 (head!13733 s!2326)) (head!13733 (tail!12808 s!2326))) (tail!12808 (tail!12808 s!2326))) lt!2456432)))

(declare-fun b!6853876 () Bool)

(declare-fun res!2797235 () Bool)

(declare-fun e!4132792 () Bool)

(assert (=> b!6853876 (=> res!2797235 e!4132792)))

(assert (=> b!6853876 (= res!2797235 (not (isEmpty!38579 (tail!12808 (tail!12808 (tail!12808 s!2326))))))))

(declare-fun b!6853877 () Bool)

(assert (=> b!6853877 (= e!4132793 (matchR!8860 (derivativeStep!5323 (derivativeStep!5323 (derivativeStep!5323 r!7292 (head!13733 s!2326)) (head!13733 (tail!12808 s!2326))) (head!13733 (tail!12808 (tail!12808 s!2326)))) (tail!12808 (tail!12808 (tail!12808 s!2326)))))))

(declare-fun b!6853878 () Bool)

(assert (=> b!6853878 (= e!4132792 (not (= (head!13733 (tail!12808 (tail!12808 s!2326))) (c!1275345 (derivativeStep!5323 (derivativeStep!5323 r!7292 (head!13733 s!2326)) (head!13733 (tail!12808 s!2326)))))))))

(declare-fun b!6853879 () Bool)

(declare-fun res!2797234 () Bool)

(declare-fun e!4132795 () Bool)

(assert (=> b!6853879 (=> (not res!2797234) (not e!4132795))))

(assert (=> b!6853879 (= res!2797234 (isEmpty!38579 (tail!12808 (tail!12808 (tail!12808 s!2326)))))))

(declare-fun b!6853880 () Bool)

(declare-fun e!4132794 () Bool)

(declare-fun e!4132796 () Bool)

(assert (=> b!6853880 (= e!4132794 e!4132796)))

(declare-fun res!2797236 () Bool)

(assert (=> b!6853880 (=> (not res!2797236) (not e!4132796))))

(assert (=> b!6853880 (= res!2797236 (not lt!2456432))))

(declare-fun b!6853881 () Bool)

(declare-fun res!2797237 () Bool)

(assert (=> b!6853881 (=> res!2797237 e!4132794)))

(assert (=> b!6853881 (= res!2797237 e!4132795)))

(declare-fun res!2797233 () Bool)

(assert (=> b!6853881 (=> (not res!2797233) (not e!4132795))))

(assert (=> b!6853881 (= res!2797233 lt!2456432)))

(declare-fun b!6853882 () Bool)

(assert (=> b!6853882 (= e!4132796 e!4132792)))

(declare-fun res!2797231 () Bool)

(assert (=> b!6853882 (=> res!2797231 e!4132792)))

(declare-fun call!624358 () Bool)

(assert (=> b!6853882 (= res!2797231 call!624358)))

(declare-fun b!6853883 () Bool)

(assert (=> b!6853883 (= e!4132793 (nullable!6640 (derivativeStep!5323 (derivativeStep!5323 r!7292 (head!13733 s!2326)) (head!13733 (tail!12808 s!2326)))))))

(declare-fun b!6853884 () Bool)

(declare-fun e!4132791 () Bool)

(assert (=> b!6853884 (= e!4132790 e!4132791)))

(declare-fun c!1275911 () Bool)

(assert (=> b!6853884 (= c!1275911 ((_ is EmptyLang!16677) (derivativeStep!5323 (derivativeStep!5323 r!7292 (head!13733 s!2326)) (head!13733 (tail!12808 s!2326)))))))

(declare-fun b!6853885 () Bool)

(declare-fun res!2797232 () Bool)

(assert (=> b!6853885 (=> (not res!2797232) (not e!4132795))))

(assert (=> b!6853885 (= res!2797232 (not call!624358))))

(declare-fun b!6853886 () Bool)

(assert (=> b!6853886 (= e!4132790 (= lt!2456432 call!624358))))

(declare-fun bm!624353 () Bool)

(assert (=> bm!624353 (= call!624358 (isEmpty!38579 (tail!12808 (tail!12808 s!2326))))))

(declare-fun b!6853887 () Bool)

(assert (=> b!6853887 (= e!4132791 (not lt!2456432))))

(declare-fun b!6853888 () Bool)

(assert (=> b!6853888 (= e!4132795 (= (head!13733 (tail!12808 (tail!12808 s!2326))) (c!1275345 (derivativeStep!5323 (derivativeStep!5323 r!7292 (head!13733 s!2326)) (head!13733 (tail!12808 s!2326))))))))

(declare-fun b!6853889 () Bool)

(declare-fun res!2797230 () Bool)

(assert (=> b!6853889 (=> res!2797230 e!4132794)))

(assert (=> b!6853889 (= res!2797230 (not ((_ is ElementMatch!16677) (derivativeStep!5323 (derivativeStep!5323 r!7292 (head!13733 s!2326)) (head!13733 (tail!12808 s!2326))))))))

(assert (=> b!6853889 (= e!4132791 e!4132794)))

(assert (= (and d!2154166 c!1275912) b!6853883))

(assert (= (and d!2154166 (not c!1275912)) b!6853877))

(assert (= (and d!2154166 c!1275913) b!6853886))

(assert (= (and d!2154166 (not c!1275913)) b!6853884))

(assert (= (and b!6853884 c!1275911) b!6853887))

(assert (= (and b!6853884 (not c!1275911)) b!6853889))

(assert (= (and b!6853889 (not res!2797230)) b!6853881))

(assert (= (and b!6853881 res!2797233) b!6853885))

(assert (= (and b!6853885 res!2797232) b!6853879))

(assert (= (and b!6853879 res!2797234) b!6853888))

(assert (= (and b!6853881 (not res!2797237)) b!6853880))

(assert (= (and b!6853880 res!2797236) b!6853882))

(assert (= (and b!6853882 (not res!2797231)) b!6853876))

(assert (= (and b!6853876 (not res!2797235)) b!6853878))

(assert (= (or b!6853886 b!6853885 b!6853882) bm!624353))

(assert (=> d!2154166 m!7590536))

(assert (=> d!2154166 m!7590540))

(assert (=> d!2154166 m!7590534))

(declare-fun m!7591564 () Bool)

(assert (=> d!2154166 m!7591564))

(assert (=> b!6853877 m!7590536))

(assert (=> b!6853877 m!7591340))

(assert (=> b!6853877 m!7590534))

(assert (=> b!6853877 m!7591340))

(declare-fun m!7591566 () Bool)

(assert (=> b!6853877 m!7591566))

(assert (=> b!6853877 m!7590536))

(assert (=> b!6853877 m!7591344))

(assert (=> b!6853877 m!7591566))

(assert (=> b!6853877 m!7591344))

(declare-fun m!7591568 () Bool)

(assert (=> b!6853877 m!7591568))

(assert (=> bm!624353 m!7590536))

(assert (=> bm!624353 m!7590540))

(assert (=> b!6853878 m!7590536))

(assert (=> b!6853878 m!7591340))

(assert (=> b!6853879 m!7590536))

(assert (=> b!6853879 m!7591344))

(assert (=> b!6853879 m!7591344))

(assert (=> b!6853879 m!7591348))

(assert (=> b!6853888 m!7590536))

(assert (=> b!6853888 m!7591340))

(assert (=> b!6853883 m!7590534))

(declare-fun m!7591572 () Bool)

(assert (=> b!6853883 m!7591572))

(assert (=> b!6853876 m!7590536))

(assert (=> b!6853876 m!7591344))

(assert (=> b!6853876 m!7591344))

(assert (=> b!6853876 m!7591348))

(assert (=> b!6852801 d!2154166))

(declare-fun c!1275919 () Bool)

(declare-fun c!1275920 () Bool)

(declare-fun call!624360 () Regex!16677)

(declare-fun bm!624354 () Bool)

(assert (=> bm!624354 (= call!624360 (derivativeStep!5323 (ite c!1275920 (regTwo!33867 (derivativeStep!5323 r!7292 (head!13733 s!2326))) (ite c!1275919 (reg!17006 (derivativeStep!5323 r!7292 (head!13733 s!2326))) (regOne!33866 (derivativeStep!5323 r!7292 (head!13733 s!2326))))) (head!13733 (tail!12808 s!2326))))))

(declare-fun b!6853891 () Bool)

(declare-fun e!4132805 () Regex!16677)

(declare-fun e!4132801 () Regex!16677)

(assert (=> b!6853891 (= e!4132805 e!4132801)))

(assert (=> b!6853891 (= c!1275919 ((_ is Star!16677) (derivativeStep!5323 r!7292 (head!13733 s!2326))))))

(declare-fun c!1275922 () Bool)

(declare-fun call!624362 () Regex!16677)

(declare-fun bm!624355 () Bool)

(assert (=> bm!624355 (= call!624362 (derivativeStep!5323 (ite c!1275920 (regOne!33867 (derivativeStep!5323 r!7292 (head!13733 s!2326))) (ite c!1275922 (regTwo!33866 (derivativeStep!5323 r!7292 (head!13733 s!2326))) (regOne!33866 (derivativeStep!5323 r!7292 (head!13733 s!2326))))) (head!13733 (tail!12808 s!2326))))))

(declare-fun e!4132799 () Regex!16677)

(declare-fun b!6853892 () Bool)

(declare-fun call!624359 () Regex!16677)

(declare-fun call!624361 () Regex!16677)

(assert (=> b!6853892 (= e!4132799 (Union!16677 (Concat!25522 call!624359 (regTwo!33866 (derivativeStep!5323 r!7292 (head!13733 s!2326)))) call!624361))))

(declare-fun bm!624356 () Bool)

(assert (=> bm!624356 (= call!624359 call!624360)))

(declare-fun d!2154170 () Bool)

(declare-fun lt!2456433 () Regex!16677)

(assert (=> d!2154170 (validRegex!8413 lt!2456433)))

(declare-fun e!4132807 () Regex!16677)

(assert (=> d!2154170 (= lt!2456433 e!4132807)))

(declare-fun c!1275918 () Bool)

(assert (=> d!2154170 (= c!1275918 (or ((_ is EmptyExpr!16677) (derivativeStep!5323 r!7292 (head!13733 s!2326))) ((_ is EmptyLang!16677) (derivativeStep!5323 r!7292 (head!13733 s!2326)))))))

(assert (=> d!2154170 (validRegex!8413 (derivativeStep!5323 r!7292 (head!13733 s!2326)))))

(assert (=> d!2154170 (= (derivativeStep!5323 (derivativeStep!5323 r!7292 (head!13733 s!2326)) (head!13733 (tail!12808 s!2326))) lt!2456433)))

(declare-fun b!6853894 () Bool)

(declare-fun e!4132803 () Regex!16677)

(assert (=> b!6853894 (= e!4132807 e!4132803)))

(declare-fun c!1275916 () Bool)

(assert (=> b!6853894 (= c!1275916 ((_ is ElementMatch!16677) (derivativeStep!5323 r!7292 (head!13733 s!2326))))))

(declare-fun bm!624357 () Bool)

(assert (=> bm!624357 (= call!624361 call!624362)))

(declare-fun b!6853896 () Bool)

(assert (=> b!6853896 (= e!4132799 (Union!16677 (Concat!25522 call!624361 (regTwo!33866 (derivativeStep!5323 r!7292 (head!13733 s!2326)))) EmptyLang!16677))))

(declare-fun b!6853898 () Bool)

(assert (=> b!6853898 (= e!4132805 (Union!16677 call!624362 call!624360))))

(declare-fun b!6853899 () Bool)

(assert (=> b!6853899 (= c!1275922 (nullable!6640 (regOne!33866 (derivativeStep!5323 r!7292 (head!13733 s!2326)))))))

(assert (=> b!6853899 (= e!4132801 e!4132799)))

(declare-fun b!6853901 () Bool)

(assert (=> b!6853901 (= c!1275920 ((_ is Union!16677) (derivativeStep!5323 r!7292 (head!13733 s!2326))))))

(assert (=> b!6853901 (= e!4132803 e!4132805)))

(declare-fun b!6853902 () Bool)

(assert (=> b!6853902 (= e!4132803 (ite (= (head!13733 (tail!12808 s!2326)) (c!1275345 (derivativeStep!5323 r!7292 (head!13733 s!2326)))) EmptyExpr!16677 EmptyLang!16677))))

(declare-fun b!6853903 () Bool)

(assert (=> b!6853903 (= e!4132801 (Concat!25522 call!624359 (derivativeStep!5323 r!7292 (head!13733 s!2326))))))

(declare-fun b!6853910 () Bool)

(assert (=> b!6853910 (= e!4132807 EmptyLang!16677)))

(assert (= (and d!2154170 c!1275918) b!6853910))

(assert (= (and d!2154170 (not c!1275918)) b!6853894))

(assert (= (and b!6853894 c!1275916) b!6853902))

(assert (= (and b!6853894 (not c!1275916)) b!6853901))

(assert (= (and b!6853901 c!1275920) b!6853898))

(assert (= (and b!6853901 (not c!1275920)) b!6853891))

(assert (= (and b!6853891 c!1275919) b!6853903))

(assert (= (and b!6853891 (not c!1275919)) b!6853899))

(assert (= (and b!6853899 c!1275922) b!6853892))

(assert (= (and b!6853899 (not c!1275922)) b!6853896))

(assert (= (or b!6853892 b!6853896) bm!624357))

(assert (= (or b!6853903 b!6853892) bm!624356))

(assert (= (or b!6853898 bm!624356) bm!624354))

(assert (= (or b!6853898 bm!624357) bm!624355))

(assert (=> bm!624354 m!7590532))

(declare-fun m!7591578 () Bool)

(assert (=> bm!624354 m!7591578))

(assert (=> bm!624355 m!7590532))

(declare-fun m!7591580 () Bool)

(assert (=> bm!624355 m!7591580))

(declare-fun m!7591582 () Bool)

(assert (=> d!2154170 m!7591582))

(assert (=> d!2154170 m!7589902))

(assert (=> d!2154170 m!7590530))

(declare-fun m!7591584 () Bool)

(assert (=> b!6853899 m!7591584))

(assert (=> b!6852801 d!2154170))

(assert (=> b!6852801 d!2154028))

(assert (=> b!6852801 d!2153940))

(declare-fun b!6853911 () Bool)

(declare-fun res!2797242 () Bool)

(declare-fun e!4132814 () Bool)

(assert (=> b!6853911 (=> res!2797242 e!4132814)))

(assert (=> b!6853911 (= res!2797242 (not ((_ is Concat!25522) (ite c!1275700 (regTwo!33867 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))) (regTwo!33866 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209)))))))))

(declare-fun e!4132815 () Bool)

(assert (=> b!6853911 (= e!4132815 e!4132814)))

(declare-fun b!6853912 () Bool)

(declare-fun res!2797243 () Bool)

(declare-fun e!4132809 () Bool)

(assert (=> b!6853912 (=> (not res!2797243) (not e!4132809))))

(declare-fun call!624365 () Bool)

(assert (=> b!6853912 (= res!2797243 call!624365)))

(assert (=> b!6853912 (= e!4132815 e!4132809)))

(declare-fun call!624366 () Bool)

(declare-fun bm!624360 () Bool)

(declare-fun c!1275923 () Bool)

(declare-fun c!1275924 () Bool)

(assert (=> bm!624360 (= call!624366 (validRegex!8413 (ite c!1275923 (reg!17006 (ite c!1275700 (regTwo!33867 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))) (regTwo!33866 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))))) (ite c!1275924 (regOne!33867 (ite c!1275700 (regTwo!33867 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))) (regTwo!33866 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))))) (regOne!33866 (ite c!1275700 (regTwo!33867 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))) (regTwo!33866 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209)))))))))))

(declare-fun b!6853913 () Bool)

(declare-fun call!624367 () Bool)

(assert (=> b!6853913 (= e!4132809 call!624367)))

(declare-fun b!6853915 () Bool)

(declare-fun e!4132810 () Bool)

(declare-fun e!4132811 () Bool)

(assert (=> b!6853915 (= e!4132810 e!4132811)))

(assert (=> b!6853915 (= c!1275923 ((_ is Star!16677) (ite c!1275700 (regTwo!33867 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))) (regTwo!33866 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))))))))

(declare-fun b!6853916 () Bool)

(assert (=> b!6853916 (= e!4132811 e!4132815)))

(assert (=> b!6853916 (= c!1275924 ((_ is Union!16677) (ite c!1275700 (regTwo!33867 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))) (regTwo!33866 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))))))))

(declare-fun bm!624361 () Bool)

(assert (=> bm!624361 (= call!624365 call!624366)))

(declare-fun d!2154172 () Bool)

(declare-fun res!2797244 () Bool)

(assert (=> d!2154172 (=> res!2797244 e!4132810)))

(assert (=> d!2154172 (= res!2797244 ((_ is ElementMatch!16677) (ite c!1275700 (regTwo!33867 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))) (regTwo!33866 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))))))))

(assert (=> d!2154172 (= (validRegex!8413 (ite c!1275700 (regTwo!33867 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))) (regTwo!33866 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))))) e!4132810)))

(declare-fun b!6853914 () Bool)

(declare-fun e!4132812 () Bool)

(assert (=> b!6853914 (= e!4132811 e!4132812)))

(declare-fun res!2797245 () Bool)

(assert (=> b!6853914 (= res!2797245 (not (nullable!6640 (reg!17006 (ite c!1275700 (regTwo!33867 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))) (regTwo!33866 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))))))))))

(assert (=> b!6853914 (=> (not res!2797245) (not e!4132812))))

(declare-fun b!6853917 () Bool)

(assert (=> b!6853917 (= e!4132812 call!624366)))

(declare-fun bm!624362 () Bool)

(assert (=> bm!624362 (= call!624367 (validRegex!8413 (ite c!1275924 (regTwo!33867 (ite c!1275700 (regTwo!33867 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))) (regTwo!33866 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))))) (regTwo!33866 (ite c!1275700 (regTwo!33867 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))) (regTwo!33866 (ite c!1275366 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))))))))))

(declare-fun b!6853918 () Bool)

(declare-fun e!4132813 () Bool)

(assert (=> b!6853918 (= e!4132813 call!624367)))

(declare-fun b!6853919 () Bool)

(assert (=> b!6853919 (= e!4132814 e!4132813)))

(declare-fun res!2797241 () Bool)

(assert (=> b!6853919 (=> (not res!2797241) (not e!4132813))))

(assert (=> b!6853919 (= res!2797241 call!624365)))

(assert (= (and d!2154172 (not res!2797244)) b!6853915))

(assert (= (and b!6853915 c!1275923) b!6853914))

(assert (= (and b!6853915 (not c!1275923)) b!6853916))

(assert (= (and b!6853914 res!2797245) b!6853917))

(assert (= (and b!6853916 c!1275924) b!6853912))

(assert (= (and b!6853916 (not c!1275924)) b!6853911))

(assert (= (and b!6853912 res!2797243) b!6853913))

(assert (= (and b!6853911 (not res!2797242)) b!6853919))

(assert (= (and b!6853919 res!2797241) b!6853918))

(assert (= (or b!6853913 b!6853918) bm!624362))

(assert (= (or b!6853912 b!6853919) bm!624361))

(assert (= (or b!6853917 bm!624361) bm!624360))

(declare-fun m!7591586 () Bool)

(assert (=> bm!624360 m!7591586))

(declare-fun m!7591588 () Bool)

(assert (=> b!6853914 m!7591588))

(declare-fun m!7591590 () Bool)

(assert (=> bm!624362 m!7591590))

(assert (=> bm!624202 d!2154172))

(declare-fun d!2154174 () Bool)

(declare-fun lt!2456434 () Bool)

(assert (=> d!2154174 (= lt!2456434 (select (content!12986 (t!380073 (unfocusZipperList!2094 zl!343))) lt!2456209))))

(declare-fun e!4132817 () Bool)

(assert (=> d!2154174 (= lt!2456434 e!4132817)))

(declare-fun res!2797246 () Bool)

(assert (=> d!2154174 (=> (not res!2797246) (not e!4132817))))

(assert (=> d!2154174 (= res!2797246 ((_ is Cons!66206) (t!380073 (unfocusZipperList!2094 zl!343))))))

(assert (=> d!2154174 (= (contains!20329 (t!380073 (unfocusZipperList!2094 zl!343)) lt!2456209) lt!2456434)))

(declare-fun b!6853920 () Bool)

(declare-fun e!4132816 () Bool)

(assert (=> b!6853920 (= e!4132817 e!4132816)))

(declare-fun res!2797247 () Bool)

(assert (=> b!6853920 (=> res!2797247 e!4132816)))

(assert (=> b!6853920 (= res!2797247 (= (h!72654 (t!380073 (unfocusZipperList!2094 zl!343))) lt!2456209))))

(declare-fun b!6853921 () Bool)

(assert (=> b!6853921 (= e!4132816 (contains!20329 (t!380073 (t!380073 (unfocusZipperList!2094 zl!343))) lt!2456209))))

(assert (= (and d!2154174 res!2797246) b!6853920))

(assert (= (and b!6853920 (not res!2797247)) b!6853921))

(assert (=> d!2154174 m!7590794))

(declare-fun m!7591592 () Bool)

(assert (=> d!2154174 m!7591592))

(declare-fun m!7591594 () Bool)

(assert (=> b!6853921 m!7591594))

(assert (=> b!6852678 d!2154174))

(declare-fun d!2154176 () Bool)

(declare-fun res!2797248 () Bool)

(declare-fun e!4132818 () Bool)

(assert (=> d!2154176 (=> res!2797248 e!4132818)))

(assert (=> d!2154176 (= res!2797248 ((_ is Nil!66207) (t!380074 lt!2456274)))))

(assert (=> d!2154176 (= (noDuplicate!2443 (t!380074 lt!2456274)) e!4132818)))

(declare-fun b!6853922 () Bool)

(declare-fun e!4132819 () Bool)

(assert (=> b!6853922 (= e!4132818 e!4132819)))

(declare-fun res!2797249 () Bool)

(assert (=> b!6853922 (=> (not res!2797249) (not e!4132819))))

(assert (=> b!6853922 (= res!2797249 (not (contains!20331 (t!380074 (t!380074 lt!2456274)) (h!72655 (t!380074 lt!2456274)))))))

(declare-fun b!6853923 () Bool)

(assert (=> b!6853923 (= e!4132819 (noDuplicate!2443 (t!380074 (t!380074 lt!2456274))))))

(assert (= (and d!2154176 (not res!2797248)) b!6853922))

(assert (= (and b!6853922 res!2797249) b!6853923))

(declare-fun m!7591596 () Bool)

(assert (=> b!6853922 m!7591596))

(declare-fun m!7591598 () Bool)

(assert (=> b!6853923 m!7591598))

(assert (=> b!6852903 d!2154176))

(declare-fun bm!624363 () Bool)

(declare-fun call!624369 () Regex!16677)

(declare-fun c!1275928 () Bool)

(declare-fun c!1275927 () Bool)

(assert (=> bm!624363 (= call!624369 (derivativeStep!5323 (ite c!1275928 (regTwo!33867 (ite c!1275695 (regTwo!33867 lt!2456209) (ite c!1275694 (reg!17006 lt!2456209) (regOne!33866 lt!2456209)))) (ite c!1275927 (reg!17006 (ite c!1275695 (regTwo!33867 lt!2456209) (ite c!1275694 (reg!17006 lt!2456209) (regOne!33866 lt!2456209)))) (regOne!33866 (ite c!1275695 (regTwo!33867 lt!2456209) (ite c!1275694 (reg!17006 lt!2456209) (regOne!33866 lt!2456209)))))) (head!13733 s!2326)))))

(declare-fun b!6853924 () Bool)

(declare-fun e!4132823 () Regex!16677)

(declare-fun e!4132821 () Regex!16677)

(assert (=> b!6853924 (= e!4132823 e!4132821)))

(assert (=> b!6853924 (= c!1275927 ((_ is Star!16677) (ite c!1275695 (regTwo!33867 lt!2456209) (ite c!1275694 (reg!17006 lt!2456209) (regOne!33866 lt!2456209)))))))

(declare-fun call!624371 () Regex!16677)

(declare-fun c!1275929 () Bool)

(declare-fun bm!624364 () Bool)

(assert (=> bm!624364 (= call!624371 (derivativeStep!5323 (ite c!1275928 (regOne!33867 (ite c!1275695 (regTwo!33867 lt!2456209) (ite c!1275694 (reg!17006 lt!2456209) (regOne!33866 lt!2456209)))) (ite c!1275929 (regTwo!33866 (ite c!1275695 (regTwo!33867 lt!2456209) (ite c!1275694 (reg!17006 lt!2456209) (regOne!33866 lt!2456209)))) (regOne!33866 (ite c!1275695 (regTwo!33867 lt!2456209) (ite c!1275694 (reg!17006 lt!2456209) (regOne!33866 lt!2456209)))))) (head!13733 s!2326)))))

(declare-fun call!624370 () Regex!16677)

(declare-fun e!4132820 () Regex!16677)

(declare-fun call!624368 () Regex!16677)

(declare-fun b!6853925 () Bool)

(assert (=> b!6853925 (= e!4132820 (Union!16677 (Concat!25522 call!624368 (regTwo!33866 (ite c!1275695 (regTwo!33867 lt!2456209) (ite c!1275694 (reg!17006 lt!2456209) (regOne!33866 lt!2456209))))) call!624370))))

(declare-fun bm!624365 () Bool)

(assert (=> bm!624365 (= call!624368 call!624369)))

(declare-fun d!2154178 () Bool)

(declare-fun lt!2456435 () Regex!16677)

(assert (=> d!2154178 (validRegex!8413 lt!2456435)))

(declare-fun e!4132824 () Regex!16677)

(assert (=> d!2154178 (= lt!2456435 e!4132824)))

(declare-fun c!1275926 () Bool)

(assert (=> d!2154178 (= c!1275926 (or ((_ is EmptyExpr!16677) (ite c!1275695 (regTwo!33867 lt!2456209) (ite c!1275694 (reg!17006 lt!2456209) (regOne!33866 lt!2456209)))) ((_ is EmptyLang!16677) (ite c!1275695 (regTwo!33867 lt!2456209) (ite c!1275694 (reg!17006 lt!2456209) (regOne!33866 lt!2456209))))))))

(assert (=> d!2154178 (validRegex!8413 (ite c!1275695 (regTwo!33867 lt!2456209) (ite c!1275694 (reg!17006 lt!2456209) (regOne!33866 lt!2456209))))))

(assert (=> d!2154178 (= (derivativeStep!5323 (ite c!1275695 (regTwo!33867 lt!2456209) (ite c!1275694 (reg!17006 lt!2456209) (regOne!33866 lt!2456209))) (head!13733 s!2326)) lt!2456435)))

(declare-fun b!6853926 () Bool)

(declare-fun e!4132822 () Regex!16677)

(assert (=> b!6853926 (= e!4132824 e!4132822)))

(declare-fun c!1275925 () Bool)

(assert (=> b!6853926 (= c!1275925 ((_ is ElementMatch!16677) (ite c!1275695 (regTwo!33867 lt!2456209) (ite c!1275694 (reg!17006 lt!2456209) (regOne!33866 lt!2456209)))))))

(declare-fun bm!624366 () Bool)

(assert (=> bm!624366 (= call!624370 call!624371)))

(declare-fun b!6853927 () Bool)

(assert (=> b!6853927 (= e!4132820 (Union!16677 (Concat!25522 call!624370 (regTwo!33866 (ite c!1275695 (regTwo!33867 lt!2456209) (ite c!1275694 (reg!17006 lt!2456209) (regOne!33866 lt!2456209))))) EmptyLang!16677))))

(declare-fun b!6853928 () Bool)

(assert (=> b!6853928 (= e!4132823 (Union!16677 call!624371 call!624369))))

(declare-fun b!6853929 () Bool)

(assert (=> b!6853929 (= c!1275929 (nullable!6640 (regOne!33866 (ite c!1275695 (regTwo!33867 lt!2456209) (ite c!1275694 (reg!17006 lt!2456209) (regOne!33866 lt!2456209))))))))

(assert (=> b!6853929 (= e!4132821 e!4132820)))

(declare-fun b!6853930 () Bool)

(assert (=> b!6853930 (= c!1275928 ((_ is Union!16677) (ite c!1275695 (regTwo!33867 lt!2456209) (ite c!1275694 (reg!17006 lt!2456209) (regOne!33866 lt!2456209)))))))

(assert (=> b!6853930 (= e!4132822 e!4132823)))

(declare-fun b!6853931 () Bool)

(assert (=> b!6853931 (= e!4132822 (ite (= (head!13733 s!2326) (c!1275345 (ite c!1275695 (regTwo!33867 lt!2456209) (ite c!1275694 (reg!17006 lt!2456209) (regOne!33866 lt!2456209))))) EmptyExpr!16677 EmptyLang!16677))))

(declare-fun b!6853932 () Bool)

(assert (=> b!6853932 (= e!4132821 (Concat!25522 call!624368 (ite c!1275695 (regTwo!33867 lt!2456209) (ite c!1275694 (reg!17006 lt!2456209) (regOne!33866 lt!2456209)))))))

(declare-fun b!6853933 () Bool)

(assert (=> b!6853933 (= e!4132824 EmptyLang!16677)))

(assert (= (and d!2154178 c!1275926) b!6853933))

(assert (= (and d!2154178 (not c!1275926)) b!6853926))

(assert (= (and b!6853926 c!1275925) b!6853931))

(assert (= (and b!6853926 (not c!1275925)) b!6853930))

(assert (= (and b!6853930 c!1275928) b!6853928))

(assert (= (and b!6853930 (not c!1275928)) b!6853924))

(assert (= (and b!6853924 c!1275927) b!6853932))

(assert (= (and b!6853924 (not c!1275927)) b!6853929))

(assert (= (and b!6853929 c!1275929) b!6853925))

(assert (= (and b!6853929 (not c!1275929)) b!6853927))

(assert (= (or b!6853925 b!6853927) bm!624366))

(assert (= (or b!6853932 b!6853925) bm!624365))

(assert (= (or b!6853928 bm!624365) bm!624363))

(assert (= (or b!6853928 bm!624366) bm!624364))

(assert (=> bm!624363 m!7589900))

(declare-fun m!7591600 () Bool)

(assert (=> bm!624363 m!7591600))

(assert (=> bm!624364 m!7589900))

(declare-fun m!7591602 () Bool)

(assert (=> bm!624364 m!7591602))

(declare-fun m!7591604 () Bool)

(assert (=> d!2154178 m!7591604))

(declare-fun m!7591606 () Bool)

(assert (=> d!2154178 m!7591606))

(declare-fun m!7591608 () Bool)

(assert (=> b!6853929 m!7591608))

(assert (=> bm!624196 d!2154178))

(declare-fun d!2154180 () Bool)

(declare-fun e!4132825 () Bool)

(assert (=> d!2154180 e!4132825))

(declare-fun c!1275932 () Bool)

(assert (=> d!2154180 (= c!1275932 ((_ is EmptyExpr!16677) (derivativeStep!5323 lt!2456284 (head!13733 s!2326))))))

(declare-fun lt!2456436 () Bool)

(declare-fun e!4132828 () Bool)

(assert (=> d!2154180 (= lt!2456436 e!4132828)))

(declare-fun c!1275931 () Bool)

(assert (=> d!2154180 (= c!1275931 (isEmpty!38579 (tail!12808 s!2326)))))

(assert (=> d!2154180 (validRegex!8413 (derivativeStep!5323 lt!2456284 (head!13733 s!2326)))))

(assert (=> d!2154180 (= (matchR!8860 (derivativeStep!5323 lt!2456284 (head!13733 s!2326)) (tail!12808 s!2326)) lt!2456436)))

(declare-fun b!6853934 () Bool)

(declare-fun res!2797255 () Bool)

(declare-fun e!4132827 () Bool)

(assert (=> b!6853934 (=> res!2797255 e!4132827)))

(assert (=> b!6853934 (= res!2797255 (not (isEmpty!38579 (tail!12808 (tail!12808 s!2326)))))))

(declare-fun b!6853935 () Bool)

(assert (=> b!6853935 (= e!4132828 (matchR!8860 (derivativeStep!5323 (derivativeStep!5323 lt!2456284 (head!13733 s!2326)) (head!13733 (tail!12808 s!2326))) (tail!12808 (tail!12808 s!2326))))))

(declare-fun b!6853936 () Bool)

(assert (=> b!6853936 (= e!4132827 (not (= (head!13733 (tail!12808 s!2326)) (c!1275345 (derivativeStep!5323 lt!2456284 (head!13733 s!2326))))))))

(declare-fun b!6853937 () Bool)

(declare-fun res!2797254 () Bool)

(declare-fun e!4132830 () Bool)

(assert (=> b!6853937 (=> (not res!2797254) (not e!4132830))))

(assert (=> b!6853937 (= res!2797254 (isEmpty!38579 (tail!12808 (tail!12808 s!2326))))))

(declare-fun b!6853938 () Bool)

(declare-fun e!4132829 () Bool)

(declare-fun e!4132831 () Bool)

(assert (=> b!6853938 (= e!4132829 e!4132831)))

(declare-fun res!2797256 () Bool)

(assert (=> b!6853938 (=> (not res!2797256) (not e!4132831))))

(assert (=> b!6853938 (= res!2797256 (not lt!2456436))))

(declare-fun b!6853939 () Bool)

(declare-fun res!2797257 () Bool)

(assert (=> b!6853939 (=> res!2797257 e!4132829)))

(assert (=> b!6853939 (= res!2797257 e!4132830)))

(declare-fun res!2797253 () Bool)

(assert (=> b!6853939 (=> (not res!2797253) (not e!4132830))))

(assert (=> b!6853939 (= res!2797253 lt!2456436)))

(declare-fun b!6853940 () Bool)

(assert (=> b!6853940 (= e!4132831 e!4132827)))

(declare-fun res!2797251 () Bool)

(assert (=> b!6853940 (=> res!2797251 e!4132827)))

(declare-fun call!624372 () Bool)

(assert (=> b!6853940 (= res!2797251 call!624372)))

(declare-fun b!6853941 () Bool)

(assert (=> b!6853941 (= e!4132828 (nullable!6640 (derivativeStep!5323 lt!2456284 (head!13733 s!2326))))))

(declare-fun b!6853942 () Bool)

(declare-fun e!4132826 () Bool)

(assert (=> b!6853942 (= e!4132825 e!4132826)))

(declare-fun c!1275930 () Bool)

(assert (=> b!6853942 (= c!1275930 ((_ is EmptyLang!16677) (derivativeStep!5323 lt!2456284 (head!13733 s!2326))))))

(declare-fun b!6853943 () Bool)

(declare-fun res!2797252 () Bool)

(assert (=> b!6853943 (=> (not res!2797252) (not e!4132830))))

(assert (=> b!6853943 (= res!2797252 (not call!624372))))

(declare-fun b!6853944 () Bool)

(assert (=> b!6853944 (= e!4132825 (= lt!2456436 call!624372))))

(declare-fun bm!624367 () Bool)

(assert (=> bm!624367 (= call!624372 (isEmpty!38579 (tail!12808 s!2326)))))

(declare-fun b!6853945 () Bool)

(assert (=> b!6853945 (= e!4132826 (not lt!2456436))))

(declare-fun b!6853946 () Bool)

(assert (=> b!6853946 (= e!4132830 (= (head!13733 (tail!12808 s!2326)) (c!1275345 (derivativeStep!5323 lt!2456284 (head!13733 s!2326)))))))

(declare-fun b!6853947 () Bool)

(declare-fun res!2797250 () Bool)

(assert (=> b!6853947 (=> res!2797250 e!4132829)))

(assert (=> b!6853947 (= res!2797250 (not ((_ is ElementMatch!16677) (derivativeStep!5323 lt!2456284 (head!13733 s!2326)))))))

(assert (=> b!6853947 (= e!4132826 e!4132829)))

(assert (= (and d!2154180 c!1275931) b!6853941))

(assert (= (and d!2154180 (not c!1275931)) b!6853935))

(assert (= (and d!2154180 c!1275932) b!6853944))

(assert (= (and d!2154180 (not c!1275932)) b!6853942))

(assert (= (and b!6853942 c!1275930) b!6853945))

(assert (= (and b!6853942 (not c!1275930)) b!6853947))

(assert (= (and b!6853947 (not res!2797250)) b!6853939))

(assert (= (and b!6853939 res!2797253) b!6853943))

(assert (= (and b!6853943 res!2797252) b!6853937))

(assert (= (and b!6853937 res!2797254) b!6853946))

(assert (= (and b!6853939 (not res!2797257)) b!6853938))

(assert (= (and b!6853938 res!2797256) b!6853940))

(assert (= (and b!6853940 (not res!2797251)) b!6853934))

(assert (= (and b!6853934 (not res!2797255)) b!6853936))

(assert (= (or b!6853944 b!6853943 b!6853940) bm!624367))

(assert (=> d!2154180 m!7589908))

(assert (=> d!2154180 m!7589912))

(assert (=> d!2154180 m!7590566))

(declare-fun m!7591616 () Bool)

(assert (=> d!2154180 m!7591616))

(assert (=> b!6853935 m!7589908))

(assert (=> b!6853935 m!7590532))

(assert (=> b!6853935 m!7590566))

(assert (=> b!6853935 m!7590532))

(declare-fun m!7591618 () Bool)

(assert (=> b!6853935 m!7591618))

(assert (=> b!6853935 m!7589908))

(assert (=> b!6853935 m!7590536))

(assert (=> b!6853935 m!7591618))

(assert (=> b!6853935 m!7590536))

(declare-fun m!7591622 () Bool)

(assert (=> b!6853935 m!7591622))

(assert (=> bm!624367 m!7589908))

(assert (=> bm!624367 m!7589912))

(assert (=> b!6853936 m!7589908))

(assert (=> b!6853936 m!7590532))

(assert (=> b!6853937 m!7589908))

(assert (=> b!6853937 m!7590536))

(assert (=> b!6853937 m!7590536))

(assert (=> b!6853937 m!7590540))

(assert (=> b!6853946 m!7589908))

(assert (=> b!6853946 m!7590532))

(assert (=> b!6853941 m!7590566))

(declare-fun m!7591628 () Bool)

(assert (=> b!6853941 m!7591628))

(assert (=> b!6853934 m!7589908))

(assert (=> b!6853934 m!7590536))

(assert (=> b!6853934 m!7590536))

(assert (=> b!6853934 m!7590540))

(assert (=> b!6852857 d!2154180))

(declare-fun c!1275938 () Bool)

(declare-fun c!1275937 () Bool)

(declare-fun call!624377 () Regex!16677)

(declare-fun bm!624371 () Bool)

(assert (=> bm!624371 (= call!624377 (derivativeStep!5323 (ite c!1275938 (regTwo!33867 lt!2456284) (ite c!1275937 (reg!17006 lt!2456284) (regOne!33866 lt!2456284))) (head!13733 s!2326)))))

(declare-fun b!6853959 () Bool)

(declare-fun e!4132844 () Regex!16677)

(declare-fun e!4132842 () Regex!16677)

(assert (=> b!6853959 (= e!4132844 e!4132842)))

(assert (=> b!6853959 (= c!1275937 ((_ is Star!16677) lt!2456284))))

(declare-fun c!1275939 () Bool)

(declare-fun call!624379 () Regex!16677)

(declare-fun bm!624372 () Bool)

(assert (=> bm!624372 (= call!624379 (derivativeStep!5323 (ite c!1275938 (regOne!33867 lt!2456284) (ite c!1275939 (regTwo!33866 lt!2456284) (regOne!33866 lt!2456284))) (head!13733 s!2326)))))

(declare-fun e!4132841 () Regex!16677)

(declare-fun b!6853960 () Bool)

(declare-fun call!624376 () Regex!16677)

(declare-fun call!624378 () Regex!16677)

(assert (=> b!6853960 (= e!4132841 (Union!16677 (Concat!25522 call!624376 (regTwo!33866 lt!2456284)) call!624378))))

(declare-fun bm!624373 () Bool)

(assert (=> bm!624373 (= call!624376 call!624377)))

(declare-fun d!2154188 () Bool)

(declare-fun lt!2456437 () Regex!16677)

(assert (=> d!2154188 (validRegex!8413 lt!2456437)))

(declare-fun e!4132845 () Regex!16677)

(assert (=> d!2154188 (= lt!2456437 e!4132845)))

(declare-fun c!1275936 () Bool)

(assert (=> d!2154188 (= c!1275936 (or ((_ is EmptyExpr!16677) lt!2456284) ((_ is EmptyLang!16677) lt!2456284)))))

(assert (=> d!2154188 (validRegex!8413 lt!2456284)))

(assert (=> d!2154188 (= (derivativeStep!5323 lt!2456284 (head!13733 s!2326)) lt!2456437)))

(declare-fun b!6853961 () Bool)

(declare-fun e!4132843 () Regex!16677)

(assert (=> b!6853961 (= e!4132845 e!4132843)))

(declare-fun c!1275935 () Bool)

(assert (=> b!6853961 (= c!1275935 ((_ is ElementMatch!16677) lt!2456284))))

(declare-fun bm!624374 () Bool)

(assert (=> bm!624374 (= call!624378 call!624379)))

(declare-fun b!6853962 () Bool)

(assert (=> b!6853962 (= e!4132841 (Union!16677 (Concat!25522 call!624378 (regTwo!33866 lt!2456284)) EmptyLang!16677))))

(declare-fun b!6853963 () Bool)

(assert (=> b!6853963 (= e!4132844 (Union!16677 call!624379 call!624377))))

(declare-fun b!6853964 () Bool)

(assert (=> b!6853964 (= c!1275939 (nullable!6640 (regOne!33866 lt!2456284)))))

(assert (=> b!6853964 (= e!4132842 e!4132841)))

(declare-fun b!6853965 () Bool)

(assert (=> b!6853965 (= c!1275938 ((_ is Union!16677) lt!2456284))))

(assert (=> b!6853965 (= e!4132843 e!4132844)))

(declare-fun b!6853966 () Bool)

(assert (=> b!6853966 (= e!4132843 (ite (= (head!13733 s!2326) (c!1275345 lt!2456284)) EmptyExpr!16677 EmptyLang!16677))))

(declare-fun b!6853967 () Bool)

(assert (=> b!6853967 (= e!4132842 (Concat!25522 call!624376 lt!2456284))))

(declare-fun b!6853968 () Bool)

(assert (=> b!6853968 (= e!4132845 EmptyLang!16677)))

(assert (= (and d!2154188 c!1275936) b!6853968))

(assert (= (and d!2154188 (not c!1275936)) b!6853961))

(assert (= (and b!6853961 c!1275935) b!6853966))

(assert (= (and b!6853961 (not c!1275935)) b!6853965))

(assert (= (and b!6853965 c!1275938) b!6853963))

(assert (= (and b!6853965 (not c!1275938)) b!6853959))

(assert (= (and b!6853959 c!1275937) b!6853967))

(assert (= (and b!6853959 (not c!1275937)) b!6853964))

(assert (= (and b!6853964 c!1275939) b!6853960))

(assert (= (and b!6853964 (not c!1275939)) b!6853962))

(assert (= (or b!6853960 b!6853962) bm!624374))

(assert (= (or b!6853967 b!6853960) bm!624373))

(assert (= (or b!6853963 bm!624373) bm!624371))

(assert (= (or b!6853963 bm!624374) bm!624372))

(assert (=> bm!624371 m!7589900))

(declare-fun m!7591634 () Bool)

(assert (=> bm!624371 m!7591634))

(assert (=> bm!624372 m!7589900))

(declare-fun m!7591636 () Bool)

(assert (=> bm!624372 m!7591636))

(declare-fun m!7591638 () Bool)

(assert (=> d!2154188 m!7591638))

(assert (=> d!2154188 m!7590012))

(declare-fun m!7591640 () Bool)

(assert (=> b!6853964 m!7591640))

(assert (=> b!6852857 d!2154188))

(assert (=> b!6852857 d!2153670))

(assert (=> b!6852857 d!2153720))

(declare-fun b!6853969 () Bool)

(declare-fun e!4132851 () Bool)

(declare-fun e!4132849 () Bool)

(assert (=> b!6853969 (= e!4132851 e!4132849)))

(declare-fun c!1275940 () Bool)

(assert (=> b!6853969 (= c!1275940 ((_ is Union!16677) lt!2456209))))

(declare-fun b!6853970 () Bool)

(declare-fun e!4132848 () Bool)

(assert (=> b!6853970 (= e!4132849 e!4132848)))

(declare-fun res!2797268 () Bool)

(declare-fun call!624381 () Bool)

(assert (=> b!6853970 (= res!2797268 call!624381)))

(assert (=> b!6853970 (=> (not res!2797268) (not e!4132848))))

(declare-fun d!2154192 () Bool)

(declare-fun res!2797266 () Bool)

(declare-fun e!4132846 () Bool)

(assert (=> d!2154192 (=> res!2797266 e!4132846)))

(assert (=> d!2154192 (= res!2797266 ((_ is EmptyExpr!16677) lt!2456209))))

(assert (=> d!2154192 (= (nullableFct!2524 lt!2456209) e!4132846)))

(declare-fun b!6853971 () Bool)

(declare-fun e!4132847 () Bool)

(declare-fun call!624380 () Bool)

(assert (=> b!6853971 (= e!4132847 call!624380)))

(declare-fun b!6853972 () Bool)

(declare-fun e!4132850 () Bool)

(assert (=> b!6853972 (= e!4132850 e!4132851)))

(declare-fun res!2797265 () Bool)

(assert (=> b!6853972 (=> res!2797265 e!4132851)))

(assert (=> b!6853972 (= res!2797265 ((_ is Star!16677) lt!2456209))))

(declare-fun b!6853973 () Bool)

(assert (=> b!6853973 (= e!4132846 e!4132850)))

(declare-fun res!2797269 () Bool)

(assert (=> b!6853973 (=> (not res!2797269) (not e!4132850))))

(assert (=> b!6853973 (= res!2797269 (and (not ((_ is EmptyLang!16677) lt!2456209)) (not ((_ is ElementMatch!16677) lt!2456209))))))

(declare-fun b!6853974 () Bool)

(assert (=> b!6853974 (= e!4132848 call!624380)))

(declare-fun b!6853975 () Bool)

(assert (=> b!6853975 (= e!4132849 e!4132847)))

(declare-fun res!2797267 () Bool)

(assert (=> b!6853975 (= res!2797267 call!624381)))

(assert (=> b!6853975 (=> res!2797267 e!4132847)))

(declare-fun bm!624375 () Bool)

(assert (=> bm!624375 (= call!624381 (nullable!6640 (ite c!1275940 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209))))))

(declare-fun bm!624376 () Bool)

(assert (=> bm!624376 (= call!624380 (nullable!6640 (ite c!1275940 (regTwo!33867 lt!2456209) (regTwo!33866 lt!2456209))))))

(assert (= (and d!2154192 (not res!2797266)) b!6853973))

(assert (= (and b!6853973 res!2797269) b!6853972))

(assert (= (and b!6853972 (not res!2797265)) b!6853969))

(assert (= (and b!6853969 c!1275940) b!6853975))

(assert (= (and b!6853969 (not c!1275940)) b!6853970))

(assert (= (and b!6853975 (not res!2797267)) b!6853971))

(assert (= (and b!6853970 res!2797268) b!6853974))

(assert (= (or b!6853971 b!6853974) bm!624376))

(assert (= (or b!6853975 b!6853970) bm!624375))

(declare-fun m!7591642 () Bool)

(assert (=> bm!624375 m!7591642))

(declare-fun m!7591644 () Bool)

(assert (=> bm!624376 m!7591644))

(assert (=> d!2153754 d!2154192))

(declare-fun bs!1832198 () Bool)

(declare-fun d!2154194 () Bool)

(assert (= bs!1832198 (and d!2154194 b!6851560)))

(declare-fun lambda!387484 () Int)

(assert (=> bs!1832198 (not (= lambda!387484 lambda!387349))))

(declare-fun bs!1832199 () Bool)

(assert (= bs!1832199 (and d!2154194 d!2153700)))

(assert (=> bs!1832199 (= (= lambda!387349 lambda!387362) (= lambda!387484 lambda!387430))))

(declare-fun bs!1832200 () Bool)

(assert (= bs!1832200 (and d!2154194 d!2153412)))

(assert (=> bs!1832200 (not (= lambda!387484 lambda!387362))))

(declare-fun bs!1832201 () Bool)

(assert (= bs!1832201 (and d!2154194 d!2153702)))

(assert (=> bs!1832201 (not (= lambda!387484 lambda!387433))))

(declare-fun bs!1832202 () Bool)

(assert (= bs!1832202 (and d!2154194 d!2153408)))

(assert (=> bs!1832202 (= lambda!387484 lambda!387352)))

(assert (=> d!2154194 true))

(assert (=> d!2154194 (< (dynLambda!26462 order!27657 lambda!387349) (dynLambda!26462 order!27657 lambda!387484))))

(assert (=> d!2154194 (= (exists!2780 (t!380074 zl!343) lambda!387349) (not (forall!15857 (t!380074 zl!343) lambda!387484)))))

(declare-fun bs!1832203 () Bool)

(assert (= bs!1832203 d!2154194))

(declare-fun m!7591646 () Bool)

(assert (=> bs!1832203 m!7591646))

(assert (=> d!2153706 d!2154194))

(declare-fun b!6853990 () Bool)

(declare-fun res!2797281 () Bool)

(declare-fun e!4132869 () Bool)

(assert (=> b!6853990 (=> res!2797281 e!4132869)))

(assert (=> b!6853990 (= res!2797281 (not ((_ is Concat!25522) (ite c!1275638 (reg!17006 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))) (ite c!1275639 (regOne!33867 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))) (regOne!33866 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))))))))))

(declare-fun e!4132870 () Bool)

(assert (=> b!6853990 (= e!4132870 e!4132869)))

(declare-fun b!6853991 () Bool)

(declare-fun res!2797282 () Bool)

(declare-fun e!4132864 () Bool)

(assert (=> b!6853991 (=> (not res!2797282) (not e!4132864))))

(declare-fun call!624382 () Bool)

(assert (=> b!6853991 (= res!2797282 call!624382)))

(assert (=> b!6853991 (= e!4132870 e!4132864)))

(declare-fun call!624383 () Bool)

(declare-fun c!1275943 () Bool)

(declare-fun bm!624377 () Bool)

(declare-fun c!1275944 () Bool)

(assert (=> bm!624377 (= call!624383 (validRegex!8413 (ite c!1275943 (reg!17006 (ite c!1275638 (reg!17006 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))) (ite c!1275639 (regOne!33867 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))) (regOne!33866 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209))))))) (ite c!1275944 (regOne!33867 (ite c!1275638 (reg!17006 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))) (ite c!1275639 (regOne!33867 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))) (regOne!33866 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209))))))) (regOne!33866 (ite c!1275638 (reg!17006 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))) (ite c!1275639 (regOne!33867 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))) (regOne!33866 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))))))))))))

(declare-fun b!6853992 () Bool)

(declare-fun call!624384 () Bool)

(assert (=> b!6853992 (= e!4132864 call!624384)))

(declare-fun b!6853994 () Bool)

(declare-fun e!4132865 () Bool)

(declare-fun e!4132866 () Bool)

(assert (=> b!6853994 (= e!4132865 e!4132866)))

(assert (=> b!6853994 (= c!1275943 ((_ is Star!16677) (ite c!1275638 (reg!17006 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))) (ite c!1275639 (regOne!33867 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))) (regOne!33866 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209))))))))))

(declare-fun b!6853995 () Bool)

(assert (=> b!6853995 (= e!4132866 e!4132870)))

(assert (=> b!6853995 (= c!1275944 ((_ is Union!16677) (ite c!1275638 (reg!17006 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))) (ite c!1275639 (regOne!33867 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))) (regOne!33866 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209))))))))))

(declare-fun bm!624378 () Bool)

(assert (=> bm!624378 (= call!624382 call!624383)))

(declare-fun d!2154196 () Bool)

(declare-fun res!2797283 () Bool)

(assert (=> d!2154196 (=> res!2797283 e!4132865)))

(assert (=> d!2154196 (= res!2797283 ((_ is ElementMatch!16677) (ite c!1275638 (reg!17006 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))) (ite c!1275639 (regOne!33867 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))) (regOne!33866 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209))))))))))

(assert (=> d!2154196 (= (validRegex!8413 (ite c!1275638 (reg!17006 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))) (ite c!1275639 (regOne!33867 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))) (regOne!33866 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209))))))) e!4132865)))

(declare-fun b!6853993 () Bool)

(declare-fun e!4132867 () Bool)

(assert (=> b!6853993 (= e!4132866 e!4132867)))

(declare-fun res!2797284 () Bool)

(assert (=> b!6853993 (= res!2797284 (not (nullable!6640 (reg!17006 (ite c!1275638 (reg!17006 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))) (ite c!1275639 (regOne!33867 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))) (regOne!33866 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209))))))))))))

(assert (=> b!6853993 (=> (not res!2797284) (not e!4132867))))

(declare-fun b!6853996 () Bool)

(assert (=> b!6853996 (= e!4132867 call!624383)))

(declare-fun bm!624379 () Bool)

(assert (=> bm!624379 (= call!624384 (validRegex!8413 (ite c!1275944 (regTwo!33867 (ite c!1275638 (reg!17006 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))) (ite c!1275639 (regOne!33867 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))) (regOne!33866 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209))))))) (regTwo!33866 (ite c!1275638 (reg!17006 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))) (ite c!1275639 (regOne!33867 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209)))) (regOne!33866 (ite c!1275365 (reg!17006 lt!2456209) (ite c!1275366 (regOne!33867 lt!2456209) (regOne!33866 lt!2456209))))))))))))

(declare-fun b!6853997 () Bool)

(declare-fun e!4132868 () Bool)

(assert (=> b!6853997 (= e!4132868 call!624384)))

(declare-fun b!6853998 () Bool)

(assert (=> b!6853998 (= e!4132869 e!4132868)))

(declare-fun res!2797280 () Bool)

(assert (=> b!6853998 (=> (not res!2797280) (not e!4132868))))

(assert (=> b!6853998 (= res!2797280 call!624382)))

(assert (= (and d!2154196 (not res!2797283)) b!6853994))

(assert (= (and b!6853994 c!1275943) b!6853993))

(assert (= (and b!6853994 (not c!1275943)) b!6853995))

(assert (= (and b!6853993 res!2797284) b!6853996))

(assert (= (and b!6853995 c!1275944) b!6853991))

(assert (= (and b!6853995 (not c!1275944)) b!6853990))

(assert (= (and b!6853991 res!2797282) b!6853992))

(assert (= (and b!6853990 (not res!2797281)) b!6853998))

(assert (= (and b!6853998 res!2797280) b!6853997))

(assert (= (or b!6853992 b!6853997) bm!624379))

(assert (= (or b!6853991 b!6853998) bm!624378))

(assert (= (or b!6853996 bm!624378) bm!624377))

(declare-fun m!7591648 () Bool)

(assert (=> bm!624377 m!7591648))

(declare-fun m!7591650 () Bool)

(assert (=> b!6853993 m!7591650))

(declare-fun m!7591652 () Bool)

(assert (=> bm!624379 m!7591652))

(assert (=> bm!624164 d!2154196))

(declare-fun d!2154198 () Bool)

(assert (=> d!2154198 (= (isEmpty!38581 (tail!12810 (unfocusZipperList!2094 zl!343))) ((_ is Nil!66206) (tail!12810 (unfocusZipperList!2094 zl!343))))))

(assert (=> b!6852724 d!2154198))

(declare-fun d!2154200 () Bool)

(assert (=> d!2154200 (= (tail!12810 (unfocusZipperList!2094 zl!343)) (t!380073 (unfocusZipperList!2094 zl!343)))))

(assert (=> b!6852724 d!2154200))

(declare-fun d!2154202 () Bool)

(declare-fun res!2797285 () Bool)

(declare-fun e!4132871 () Bool)

(assert (=> d!2154202 (=> res!2797285 e!4132871)))

(assert (=> d!2154202 (= res!2797285 ((_ is Nil!66206) lt!2456210))))

(assert (=> d!2154202 (= (forall!15858 lt!2456210 lambda!387442) e!4132871)))

(declare-fun b!6853999 () Bool)

(declare-fun e!4132872 () Bool)

(assert (=> b!6853999 (= e!4132871 e!4132872)))

(declare-fun res!2797286 () Bool)

(assert (=> b!6853999 (=> (not res!2797286) (not e!4132872))))

(assert (=> b!6853999 (= res!2797286 (dynLambda!26464 lambda!387442 (h!72654 lt!2456210)))))

(declare-fun b!6854000 () Bool)

(assert (=> b!6854000 (= e!4132872 (forall!15858 (t!380073 lt!2456210) lambda!387442))))

(assert (= (and d!2154202 (not res!2797285)) b!6853999))

(assert (= (and b!6853999 res!2797286) b!6854000))

(declare-fun b_lambda!258829 () Bool)

(assert (=> (not b_lambda!258829) (not b!6853999)))

(declare-fun m!7591654 () Bool)

(assert (=> b!6853999 m!7591654))

(declare-fun m!7591656 () Bool)

(assert (=> b!6854000 m!7591656))

(assert (=> d!2153730 d!2154202))

(declare-fun d!2154204 () Bool)

(declare-fun res!2797287 () Bool)

(declare-fun e!4132873 () Bool)

(assert (=> d!2154204 (=> res!2797287 e!4132873)))

(assert (=> d!2154204 (= res!2797287 ((_ is Nil!66207) zl!343))))

(assert (=> d!2154204 (= (forall!15857 zl!343 lambda!387430) e!4132873)))

(declare-fun b!6854001 () Bool)

(declare-fun e!4132874 () Bool)

(assert (=> b!6854001 (= e!4132873 e!4132874)))

(declare-fun res!2797288 () Bool)

(assert (=> b!6854001 (=> (not res!2797288) (not e!4132874))))

(assert (=> b!6854001 (= res!2797288 (dynLambda!26466 lambda!387430 (h!72655 zl!343)))))

(declare-fun b!6854002 () Bool)

(assert (=> b!6854002 (= e!4132874 (forall!15857 (t!380074 zl!343) lambda!387430))))

(assert (= (and d!2154204 (not res!2797287)) b!6854001))

(assert (= (and b!6854001 res!2797288) b!6854002))

(declare-fun b_lambda!258831 () Bool)

(assert (=> (not b_lambda!258831) (not b!6854001)))

(declare-fun m!7591658 () Bool)

(assert (=> b!6854001 m!7591658))

(declare-fun m!7591660 () Bool)

(assert (=> b!6854002 m!7591660))

(assert (=> d!2153700 d!2154204))

(declare-fun bm!624386 () Bool)

(declare-fun c!1275948 () Bool)

(declare-fun call!624392 () Regex!16677)

(declare-fun c!1275949 () Bool)

(assert (=> bm!624386 (= call!624392 (derivativeStep!5323 (ite c!1275949 (regTwo!33867 (ite c!1275656 (regOne!33867 r!7292) (ite c!1275657 (regTwo!33866 r!7292) (regOne!33866 r!7292)))) (ite c!1275948 (reg!17006 (ite c!1275656 (regOne!33867 r!7292) (ite c!1275657 (regTwo!33866 r!7292) (regOne!33866 r!7292)))) (regOne!33866 (ite c!1275656 (regOne!33867 r!7292) (ite c!1275657 (regTwo!33866 r!7292) (regOne!33866 r!7292)))))) (head!13733 s!2326)))))

(declare-fun b!6854010 () Bool)

(declare-fun e!4132884 () Regex!16677)

(declare-fun e!4132882 () Regex!16677)

(assert (=> b!6854010 (= e!4132884 e!4132882)))

(assert (=> b!6854010 (= c!1275948 ((_ is Star!16677) (ite c!1275656 (regOne!33867 r!7292) (ite c!1275657 (regTwo!33866 r!7292) (regOne!33866 r!7292)))))))

(declare-fun c!1275950 () Bool)

(declare-fun bm!624387 () Bool)

(declare-fun call!624394 () Regex!16677)

(assert (=> bm!624387 (= call!624394 (derivativeStep!5323 (ite c!1275949 (regOne!33867 (ite c!1275656 (regOne!33867 r!7292) (ite c!1275657 (regTwo!33866 r!7292) (regOne!33866 r!7292)))) (ite c!1275950 (regTwo!33866 (ite c!1275656 (regOne!33867 r!7292) (ite c!1275657 (regTwo!33866 r!7292) (regOne!33866 r!7292)))) (regOne!33866 (ite c!1275656 (regOne!33867 r!7292) (ite c!1275657 (regTwo!33866 r!7292) (regOne!33866 r!7292)))))) (head!13733 s!2326)))))

(declare-fun b!6854011 () Bool)

(declare-fun call!624393 () Regex!16677)

(declare-fun call!624391 () Regex!16677)

(declare-fun e!4132881 () Regex!16677)

(assert (=> b!6854011 (= e!4132881 (Union!16677 (Concat!25522 call!624391 (regTwo!33866 (ite c!1275656 (regOne!33867 r!7292) (ite c!1275657 (regTwo!33866 r!7292) (regOne!33866 r!7292))))) call!624393))))

(declare-fun bm!624388 () Bool)

(assert (=> bm!624388 (= call!624391 call!624392)))

(declare-fun d!2154206 () Bool)

(declare-fun lt!2456438 () Regex!16677)

(assert (=> d!2154206 (validRegex!8413 lt!2456438)))

(declare-fun e!4132885 () Regex!16677)

(assert (=> d!2154206 (= lt!2456438 e!4132885)))

(declare-fun c!1275947 () Bool)

(assert (=> d!2154206 (= c!1275947 (or ((_ is EmptyExpr!16677) (ite c!1275656 (regOne!33867 r!7292) (ite c!1275657 (regTwo!33866 r!7292) (regOne!33866 r!7292)))) ((_ is EmptyLang!16677) (ite c!1275656 (regOne!33867 r!7292) (ite c!1275657 (regTwo!33866 r!7292) (regOne!33866 r!7292))))))))

(assert (=> d!2154206 (validRegex!8413 (ite c!1275656 (regOne!33867 r!7292) (ite c!1275657 (regTwo!33866 r!7292) (regOne!33866 r!7292))))))

(assert (=> d!2154206 (= (derivativeStep!5323 (ite c!1275656 (regOne!33867 r!7292) (ite c!1275657 (regTwo!33866 r!7292) (regOne!33866 r!7292))) (head!13733 s!2326)) lt!2456438)))

(declare-fun b!6854012 () Bool)

(declare-fun e!4132883 () Regex!16677)

(assert (=> b!6854012 (= e!4132885 e!4132883)))

(declare-fun c!1275946 () Bool)

(assert (=> b!6854012 (= c!1275946 ((_ is ElementMatch!16677) (ite c!1275656 (regOne!33867 r!7292) (ite c!1275657 (regTwo!33866 r!7292) (regOne!33866 r!7292)))))))

(declare-fun bm!624389 () Bool)

(assert (=> bm!624389 (= call!624393 call!624394)))

(declare-fun b!6854013 () Bool)

(assert (=> b!6854013 (= e!4132881 (Union!16677 (Concat!25522 call!624393 (regTwo!33866 (ite c!1275656 (regOne!33867 r!7292) (ite c!1275657 (regTwo!33866 r!7292) (regOne!33866 r!7292))))) EmptyLang!16677))))

(declare-fun b!6854014 () Bool)

(assert (=> b!6854014 (= e!4132884 (Union!16677 call!624394 call!624392))))

(declare-fun b!6854015 () Bool)

(assert (=> b!6854015 (= c!1275950 (nullable!6640 (regOne!33866 (ite c!1275656 (regOne!33867 r!7292) (ite c!1275657 (regTwo!33866 r!7292) (regOne!33866 r!7292))))))))

(assert (=> b!6854015 (= e!4132882 e!4132881)))

(declare-fun b!6854016 () Bool)

(assert (=> b!6854016 (= c!1275949 ((_ is Union!16677) (ite c!1275656 (regOne!33867 r!7292) (ite c!1275657 (regTwo!33866 r!7292) (regOne!33866 r!7292)))))))

(assert (=> b!6854016 (= e!4132883 e!4132884)))

(declare-fun b!6854017 () Bool)

(assert (=> b!6854017 (= e!4132883 (ite (= (head!13733 s!2326) (c!1275345 (ite c!1275656 (regOne!33867 r!7292) (ite c!1275657 (regTwo!33866 r!7292) (regOne!33866 r!7292))))) EmptyExpr!16677 EmptyLang!16677))))

(declare-fun b!6854018 () Bool)

(assert (=> b!6854018 (= e!4132882 (Concat!25522 call!624391 (ite c!1275656 (regOne!33867 r!7292) (ite c!1275657 (regTwo!33866 r!7292) (regOne!33866 r!7292)))))))

(declare-fun b!6854019 () Bool)

(assert (=> b!6854019 (= e!4132885 EmptyLang!16677)))

(assert (= (and d!2154206 c!1275947) b!6854019))

(assert (= (and d!2154206 (not c!1275947)) b!6854012))

(assert (= (and b!6854012 c!1275946) b!6854017))

(assert (= (and b!6854012 (not c!1275946)) b!6854016))

(assert (= (and b!6854016 c!1275949) b!6854014))

(assert (= (and b!6854016 (not c!1275949)) b!6854010))

(assert (= (and b!6854010 c!1275948) b!6854018))

(assert (= (and b!6854010 (not c!1275948)) b!6854015))

(assert (= (and b!6854015 c!1275950) b!6854011))

(assert (= (and b!6854015 (not c!1275950)) b!6854013))

(assert (= (or b!6854011 b!6854013) bm!624389))

(assert (= (or b!6854018 b!6854011) bm!624388))

(assert (= (or b!6854014 bm!624388) bm!624386))

(assert (= (or b!6854014 bm!624389) bm!624387))

(assert (=> bm!624386 m!7589900))

(declare-fun m!7591670 () Bool)

(assert (=> bm!624386 m!7591670))

(assert (=> bm!624387 m!7589900))

(declare-fun m!7591672 () Bool)

(assert (=> bm!624387 m!7591672))

(declare-fun m!7591674 () Bool)

(assert (=> d!2154206 m!7591674))

(declare-fun m!7591676 () Bool)

(assert (=> d!2154206 m!7591676))

(declare-fun m!7591678 () Bool)

(assert (=> b!6854015 m!7591678))

(assert (=> bm!624177 d!2154206))

(declare-fun d!2154212 () Bool)

(assert (=> d!2154212 (= (head!13734 (exprs!6561 lt!2456307)) (h!72654 (exprs!6561 lt!2456307)))))

(assert (=> b!6852894 d!2154212))

(declare-fun d!2154214 () Bool)

(assert (=> d!2154214 (= (head!13734 (unfocusZipperList!2094 zl!343)) (h!72654 (unfocusZipperList!2094 zl!343)))))

(assert (=> b!6852720 d!2154214))

(assert (=> b!6852973 d!2154028))

(assert (=> d!2153658 d!2154050))

(declare-fun bs!1832204 () Bool)

(declare-fun d!2154218 () Bool)

(assert (= bs!1832204 (and d!2154218 d!2153732)))

(declare-fun lambda!387485 () Int)

(assert (=> bs!1832204 (not (= lambda!387485 lambda!387445))))

(declare-fun bs!1832205 () Bool)

(assert (= bs!1832205 (and d!2154218 d!2154130)))

(assert (=> bs!1832205 (= lambda!387485 lambda!387477)))

(declare-fun bs!1832206 () Bool)

(assert (= bs!1832206 (and d!2154218 d!2153730)))

(assert (=> bs!1832206 (not (= lambda!387485 lambda!387442))))

(declare-fun bs!1832207 () Bool)

(assert (= bs!1832207 (and d!2154218 d!2153496)))

(assert (=> bs!1832207 (not (= lambda!387485 lambda!387395))))

(declare-fun bs!1832208 () Bool)

(assert (= bs!1832208 (and d!2154218 d!2153882)))

(assert (=> bs!1832208 (not (= lambda!387485 lambda!387455))))

(declare-fun bs!1832209 () Bool)

(assert (= bs!1832209 (and d!2154218 d!2153498)))

(assert (=> bs!1832209 (not (= lambda!387485 lambda!387401))))

(declare-fun bs!1832210 () Bool)

(assert (= bs!1832210 (and d!2154218 d!2153918)))

(assert (=> bs!1832210 (not (= lambda!387485 lambda!387461))))

(declare-fun bs!1832211 () Bool)

(assert (= bs!1832211 (and d!2154218 d!2153748)))

(assert (=> bs!1832211 (= lambda!387485 lambda!387446)))

(declare-fun bs!1832212 () Bool)

(assert (= bs!1832212 (and d!2154218 d!2153764)))

(assert (=> bs!1832212 (= lambda!387485 lambda!387448)))

(declare-fun bs!1832213 () Bool)

(assert (= bs!1832213 (and d!2154218 d!2153758)))

(assert (=> bs!1832213 (= lambda!387485 lambda!387447)))

(declare-fun bs!1832214 () Bool)

(assert (= bs!1832214 (and d!2154218 d!2153502)))

(assert (=> bs!1832214 (= lambda!387485 lambda!387405)))

(declare-fun bs!1832215 () Bool)

(assert (= bs!1832215 (and d!2154218 d!2153902)))

(assert (=> bs!1832215 (= lambda!387485 lambda!387459)))

(declare-fun bs!1832216 () Bool)

(assert (= bs!1832216 (and d!2154218 d!2153480)))

(assert (=> bs!1832216 (= lambda!387485 lambda!387392)))

(declare-fun bs!1832217 () Bool)

(assert (= bs!1832217 (and d!2154218 d!2153998)))

(assert (=> bs!1832217 (= lambda!387485 lambda!387468)))

(declare-fun bs!1832218 () Bool)

(assert (= bs!1832218 (and d!2154218 d!2153712)))

(assert (=> bs!1832218 (= lambda!387485 lambda!387436)))

(declare-fun bs!1832219 () Bool)

(assert (= bs!1832219 (and d!2154218 d!2153840)))

(assert (=> bs!1832219 (= lambda!387485 lambda!387454)))

(declare-fun bs!1832220 () Bool)

(assert (= bs!1832220 (and d!2154218 d!2153894)))

(assert (=> bs!1832220 (= lambda!387485 lambda!387457)))

(declare-fun bs!1832221 () Bool)

(assert (= bs!1832221 (and d!2154218 d!2153794)))

(assert (=> bs!1832221 (= lambda!387485 lambda!387451)))

(declare-fun bs!1832222 () Bool)

(assert (= bs!1832222 (and d!2154218 d!2153932)))

(assert (=> bs!1832222 (= lambda!387485 lambda!387462)))

(declare-fun bs!1832223 () Bool)

(assert (= bs!1832223 (and d!2154218 d!2153724)))

(assert (=> bs!1832223 (= lambda!387485 lambda!387439)))

(declare-fun bs!1832224 () Bool)

(assert (= bs!1832224 (and d!2154218 b!6851566)))

(assert (=> bs!1832224 (not (= lambda!387485 lambda!387348))))

(declare-fun bs!1832225 () Bool)

(assert (= bs!1832225 (and d!2154218 d!2153500)))

(assert (=> bs!1832225 (= lambda!387485 lambda!387404)))

(declare-fun bs!1832226 () Bool)

(assert (= bs!1832226 (and d!2154218 d!2153968)))

(assert (=> bs!1832226 (= lambda!387485 lambda!387467)))

(declare-fun bs!1832227 () Bool)

(assert (= bs!1832227 (and d!2154218 d!2154144)))

(assert (=> bs!1832227 (= lambda!387485 lambda!387478)))

(assert (=> bs!1832209 (= lambda!387485 lambda!387400)))

(declare-fun bs!1832228 () Bool)

(assert (= bs!1832228 (and d!2154218 d!2153792)))

(assert (=> bs!1832228 (= lambda!387485 lambda!387450)))

(declare-fun bs!1832229 () Bool)

(assert (= bs!1832229 (and d!2154218 d!2153770)))

(assert (=> bs!1832229 (= lambda!387485 lambda!387449)))

(declare-fun bs!1832230 () Bool)

(assert (= bs!1832230 (and d!2154218 d!2154008)))

(assert (=> bs!1832230 (= lambda!387485 lambda!387469)))

(assert (=> d!2154218 (= (inv!84939 (h!72655 (t!380074 (t!380074 zl!343)))) (forall!15858 (exprs!6561 (h!72655 (t!380074 (t!380074 zl!343)))) lambda!387485))))

(declare-fun bs!1832231 () Bool)

(assert (= bs!1832231 d!2154218))

(declare-fun m!7591698 () Bool)

(assert (=> bs!1832231 m!7591698))

(assert (=> b!6853042 d!2154218))

(declare-fun d!2154226 () Bool)

(assert (=> d!2154226 (= (Exists!3739 (ite c!1275687 lambda!387452 lambda!387453)) (choose!51065 (ite c!1275687 lambda!387452 lambda!387453)))))

(declare-fun bs!1832232 () Bool)

(assert (= bs!1832232 d!2154226))

(declare-fun m!7591700 () Bool)

(assert (=> bs!1832232 m!7591700))

(assert (=> bm!624194 d!2154226))

(declare-fun d!2154228 () Bool)

(declare-fun res!2797308 () Bool)

(declare-fun e!4132904 () Bool)

(assert (=> d!2154228 (=> res!2797308 e!4132904)))

(assert (=> d!2154228 (= res!2797308 ((_ is Nil!66206) (exprs!6561 (h!72655 (t!380074 zl!343)))))))

(assert (=> d!2154228 (= (forall!15858 (exprs!6561 (h!72655 (t!380074 zl!343))) lambda!387447) e!4132904)))

(declare-fun b!6854050 () Bool)

(declare-fun e!4132905 () Bool)

(assert (=> b!6854050 (= e!4132904 e!4132905)))

(declare-fun res!2797309 () Bool)

(assert (=> b!6854050 (=> (not res!2797309) (not e!4132905))))

(assert (=> b!6854050 (= res!2797309 (dynLambda!26464 lambda!387447 (h!72654 (exprs!6561 (h!72655 (t!380074 zl!343))))))))

(declare-fun b!6854051 () Bool)

(assert (=> b!6854051 (= e!4132905 (forall!15858 (t!380073 (exprs!6561 (h!72655 (t!380074 zl!343)))) lambda!387447))))

(assert (= (and d!2154228 (not res!2797308)) b!6854050))

(assert (= (and b!6854050 res!2797309) b!6854051))

(declare-fun b_lambda!258835 () Bool)

(assert (=> (not b_lambda!258835) (not b!6854050)))

(declare-fun m!7591706 () Bool)

(assert (=> b!6854050 m!7591706))

(declare-fun m!7591710 () Bool)

(assert (=> b!6854051 m!7591710))

(assert (=> d!2153758 d!2154228))

(declare-fun d!2154230 () Bool)

(assert (=> d!2154230 (= (nullable!6640 (reg!17006 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292))))) (nullableFct!2524 (reg!17006 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292))))))))

(declare-fun bs!1832233 () Bool)

(assert (= bs!1832233 d!2154230))

(declare-fun m!7591714 () Bool)

(assert (=> bs!1832233 m!7591714))

(assert (=> b!6852663 d!2154230))

(declare-fun b!6854062 () Bool)

(declare-fun res!2797311 () Bool)

(declare-fun e!4132916 () Bool)

(assert (=> b!6854062 (=> res!2797311 e!4132916)))

(assert (=> b!6854062 (= res!2797311 (not ((_ is Concat!25522) (ite c!1275605 (reg!17006 lt!2456308) (ite c!1275606 (regOne!33867 lt!2456308) (regOne!33866 lt!2456308))))))))

(declare-fun e!4132917 () Bool)

(assert (=> b!6854062 (= e!4132917 e!4132916)))

(declare-fun b!6854063 () Bool)

(declare-fun res!2797312 () Bool)

(declare-fun e!4132911 () Bool)

(assert (=> b!6854063 (=> (not res!2797312) (not e!4132911))))

(declare-fun call!624404 () Bool)

(assert (=> b!6854063 (= res!2797312 call!624404)))

(assert (=> b!6854063 (= e!4132917 e!4132911)))

(declare-fun bm!624399 () Bool)

(declare-fun c!1275964 () Bool)

(declare-fun call!624405 () Bool)

(declare-fun c!1275965 () Bool)

(assert (=> bm!624399 (= call!624405 (validRegex!8413 (ite c!1275964 (reg!17006 (ite c!1275605 (reg!17006 lt!2456308) (ite c!1275606 (regOne!33867 lt!2456308) (regOne!33866 lt!2456308)))) (ite c!1275965 (regOne!33867 (ite c!1275605 (reg!17006 lt!2456308) (ite c!1275606 (regOne!33867 lt!2456308) (regOne!33866 lt!2456308)))) (regOne!33866 (ite c!1275605 (reg!17006 lt!2456308) (ite c!1275606 (regOne!33867 lt!2456308) (regOne!33866 lt!2456308))))))))))

(declare-fun b!6854064 () Bool)

(declare-fun call!624406 () Bool)

(assert (=> b!6854064 (= e!4132911 call!624406)))

(declare-fun b!6854066 () Bool)

(declare-fun e!4132912 () Bool)

(declare-fun e!4132913 () Bool)

(assert (=> b!6854066 (= e!4132912 e!4132913)))

(assert (=> b!6854066 (= c!1275964 ((_ is Star!16677) (ite c!1275605 (reg!17006 lt!2456308) (ite c!1275606 (regOne!33867 lt!2456308) (regOne!33866 lt!2456308)))))))

(declare-fun b!6854067 () Bool)

(assert (=> b!6854067 (= e!4132913 e!4132917)))

(assert (=> b!6854067 (= c!1275965 ((_ is Union!16677) (ite c!1275605 (reg!17006 lt!2456308) (ite c!1275606 (regOne!33867 lt!2456308) (regOne!33866 lt!2456308)))))))

(declare-fun bm!624400 () Bool)

(assert (=> bm!624400 (= call!624404 call!624405)))

(declare-fun d!2154234 () Bool)

(declare-fun res!2797313 () Bool)

(assert (=> d!2154234 (=> res!2797313 e!4132912)))

(assert (=> d!2154234 (= res!2797313 ((_ is ElementMatch!16677) (ite c!1275605 (reg!17006 lt!2456308) (ite c!1275606 (regOne!33867 lt!2456308) (regOne!33866 lt!2456308)))))))

(assert (=> d!2154234 (= (validRegex!8413 (ite c!1275605 (reg!17006 lt!2456308) (ite c!1275606 (regOne!33867 lt!2456308) (regOne!33866 lt!2456308)))) e!4132912)))

(declare-fun b!6854065 () Bool)

(declare-fun e!4132914 () Bool)

(assert (=> b!6854065 (= e!4132913 e!4132914)))

(declare-fun res!2797314 () Bool)

(assert (=> b!6854065 (= res!2797314 (not (nullable!6640 (reg!17006 (ite c!1275605 (reg!17006 lt!2456308) (ite c!1275606 (regOne!33867 lt!2456308) (regOne!33866 lt!2456308)))))))))

(assert (=> b!6854065 (=> (not res!2797314) (not e!4132914))))

(declare-fun b!6854068 () Bool)

(assert (=> b!6854068 (= e!4132914 call!624405)))

(declare-fun bm!624401 () Bool)

(assert (=> bm!624401 (= call!624406 (validRegex!8413 (ite c!1275965 (regTwo!33867 (ite c!1275605 (reg!17006 lt!2456308) (ite c!1275606 (regOne!33867 lt!2456308) (regOne!33866 lt!2456308)))) (regTwo!33866 (ite c!1275605 (reg!17006 lt!2456308) (ite c!1275606 (regOne!33867 lt!2456308) (regOne!33866 lt!2456308)))))))))

(declare-fun b!6854069 () Bool)

(declare-fun e!4132915 () Bool)

(assert (=> b!6854069 (= e!4132915 call!624406)))

(declare-fun b!6854070 () Bool)

(assert (=> b!6854070 (= e!4132916 e!4132915)))

(declare-fun res!2797310 () Bool)

(assert (=> b!6854070 (=> (not res!2797310) (not e!4132915))))

(assert (=> b!6854070 (= res!2797310 call!624404)))

(assert (= (and d!2154234 (not res!2797313)) b!6854066))

(assert (= (and b!6854066 c!1275964) b!6854065))

(assert (= (and b!6854066 (not c!1275964)) b!6854067))

(assert (= (and b!6854065 res!2797314) b!6854068))

(assert (= (and b!6854067 c!1275965) b!6854063))

(assert (= (and b!6854067 (not c!1275965)) b!6854062))

(assert (= (and b!6854063 res!2797312) b!6854064))

(assert (= (and b!6854062 (not res!2797311)) b!6854070))

(assert (= (and b!6854070 res!2797310) b!6854069))

(assert (= (or b!6854064 b!6854069) bm!624401))

(assert (= (or b!6854063 b!6854070) bm!624400))

(assert (= (or b!6854068 bm!624400) bm!624399))

(declare-fun m!7591718 () Bool)

(assert (=> bm!624399 m!7591718))

(declare-fun m!7591722 () Bool)

(assert (=> b!6854065 m!7591722))

(declare-fun m!7591728 () Bool)

(assert (=> bm!624401 m!7591728))

(assert (=> bm!624158 d!2154234))

(declare-fun b!6854071 () Bool)

(declare-fun e!4132918 () Int)

(declare-fun e!4132919 () Int)

(assert (=> b!6854071 (= e!4132918 e!4132919)))

(declare-fun c!1275966 () Bool)

(assert (=> b!6854071 (= c!1275966 ((_ is Star!16677) (h!72654 (exprs!6561 (h!72655 zl!343)))))))

(declare-fun d!2154236 () Bool)

(declare-fun lt!2456444 () Int)

(assert (=> d!2154236 (> lt!2456444 0)))

(assert (=> d!2154236 (= lt!2456444 e!4132918)))

(declare-fun c!1275968 () Bool)

(assert (=> d!2154236 (= c!1275968 ((_ is ElementMatch!16677) (h!72654 (exprs!6561 (h!72655 zl!343)))))))

(assert (=> d!2154236 (= (regexDepthTotal!251 (h!72654 (exprs!6561 (h!72655 zl!343)))) lt!2456444)))

(declare-fun b!6854072 () Bool)

(assert (=> b!6854072 (= e!4132918 1)))

(declare-fun b!6854073 () Bool)

(declare-fun e!4132921 () Int)

(assert (=> b!6854073 (= e!4132921 1)))

(declare-fun bm!624402 () Bool)

(declare-fun call!624407 () Int)

(declare-fun call!624408 () Int)

(assert (=> bm!624402 (= call!624407 call!624408)))

(declare-fun b!6854074 () Bool)

(declare-fun c!1275969 () Bool)

(assert (=> b!6854074 (= c!1275969 ((_ is Union!16677) (h!72654 (exprs!6561 (h!72655 zl!343)))))))

(declare-fun e!4132920 () Int)

(assert (=> b!6854074 (= e!4132919 e!4132920)))

(declare-fun b!6854075 () Bool)

(assert (=> b!6854075 (= e!4132920 e!4132921)))

(declare-fun c!1275967 () Bool)

(assert (=> b!6854075 (= c!1275967 ((_ is Concat!25522) (h!72654 (exprs!6561 (h!72655 zl!343)))))))

(declare-fun b!6854076 () Bool)

(declare-fun call!624409 () Int)

(assert (=> b!6854076 (= e!4132920 (+ 1 call!624409 call!624407))))

(declare-fun b!6854077 () Bool)

(assert (=> b!6854077 (= e!4132921 (+ 1 call!624409 call!624407))))

(declare-fun bm!624403 () Bool)

(assert (=> bm!624403 (= call!624408 (regexDepthTotal!251 (ite c!1275966 (reg!17006 (h!72654 (exprs!6561 (h!72655 zl!343)))) (ite c!1275969 (regTwo!33867 (h!72654 (exprs!6561 (h!72655 zl!343)))) (regTwo!33866 (h!72654 (exprs!6561 (h!72655 zl!343))))))))))

(declare-fun bm!624404 () Bool)

(assert (=> bm!624404 (= call!624409 (regexDepthTotal!251 (ite c!1275969 (regOne!33867 (h!72654 (exprs!6561 (h!72655 zl!343)))) (regOne!33866 (h!72654 (exprs!6561 (h!72655 zl!343)))))))))

(declare-fun b!6854078 () Bool)

(assert (=> b!6854078 (= e!4132919 (+ 1 call!624408))))

(assert (= (and d!2154236 c!1275968) b!6854072))

(assert (= (and d!2154236 (not c!1275968)) b!6854071))

(assert (= (and b!6854071 c!1275966) b!6854078))

(assert (= (and b!6854071 (not c!1275966)) b!6854074))

(assert (= (and b!6854074 c!1275969) b!6854076))

(assert (= (and b!6854074 (not c!1275969)) b!6854075))

(assert (= (and b!6854075 c!1275967) b!6854077))

(assert (= (and b!6854075 (not c!1275967)) b!6854073))

(assert (= (or b!6854076 b!6854077) bm!624402))

(assert (= (or b!6854076 b!6854077) bm!624404))

(assert (= (or b!6854078 bm!624402) bm!624403))

(declare-fun m!7591730 () Bool)

(assert (=> bm!624403 m!7591730))

(declare-fun m!7591732 () Bool)

(assert (=> bm!624404 m!7591732))

(assert (=> b!6852917 d!2154236))

(declare-fun d!2154240 () Bool)

(declare-fun lt!2456445 () Int)

(assert (=> d!2154240 (>= lt!2456445 0)))

(declare-fun e!4132929 () Int)

(assert (=> d!2154240 (= lt!2456445 e!4132929)))

(declare-fun c!1275972 () Bool)

(assert (=> d!2154240 (= c!1275972 ((_ is Cons!66206) (exprs!6561 (Context!12123 (t!380073 (exprs!6561 (h!72655 zl!343)))))))))

(assert (=> d!2154240 (= (contextDepthTotal!404 (Context!12123 (t!380073 (exprs!6561 (h!72655 zl!343))))) lt!2456445)))

(declare-fun b!6854088 () Bool)

(assert (=> b!6854088 (= e!4132929 (+ (regexDepthTotal!251 (h!72654 (exprs!6561 (Context!12123 (t!380073 (exprs!6561 (h!72655 zl!343))))))) (contextDepthTotal!404 (Context!12123 (t!380073 (exprs!6561 (Context!12123 (t!380073 (exprs!6561 (h!72655 zl!343))))))))))))

(declare-fun b!6854089 () Bool)

(assert (=> b!6854089 (= e!4132929 1)))

(assert (= (and d!2154240 c!1275972) b!6854088))

(assert (= (and d!2154240 (not c!1275972)) b!6854089))

(declare-fun m!7591740 () Bool)

(assert (=> b!6854088 m!7591740))

(declare-fun m!7591742 () Bool)

(assert (=> b!6854088 m!7591742))

(assert (=> b!6852917 d!2154240))

(declare-fun d!2154244 () Bool)

(declare-fun res!2797325 () Bool)

(declare-fun e!4132936 () Bool)

(assert (=> d!2154244 (=> res!2797325 e!4132936)))

(assert (=> d!2154244 (= res!2797325 ((_ is Nil!66206) lt!2456376))))

(assert (=> d!2154244 (= (forall!15858 lt!2456376 lambda!387451) e!4132936)))

(declare-fun b!6854097 () Bool)

(declare-fun e!4132937 () Bool)

(assert (=> b!6854097 (= e!4132936 e!4132937)))

(declare-fun res!2797326 () Bool)

(assert (=> b!6854097 (=> (not res!2797326) (not e!4132937))))

(assert (=> b!6854097 (= res!2797326 (dynLambda!26464 lambda!387451 (h!72654 lt!2456376)))))

(declare-fun b!6854098 () Bool)

(assert (=> b!6854098 (= e!4132937 (forall!15858 (t!380073 lt!2456376) lambda!387451))))

(assert (= (and d!2154244 (not res!2797325)) b!6854097))

(assert (= (and b!6854097 res!2797326) b!6854098))

(declare-fun b_lambda!258837 () Bool)

(assert (=> (not b_lambda!258837) (not b!6854097)))

(declare-fun m!7591744 () Bool)

(assert (=> b!6854097 m!7591744))

(declare-fun m!7591746 () Bool)

(assert (=> b!6854098 m!7591746))

(assert (=> d!2153794 d!2154244))

(declare-fun bs!1832234 () Bool)

(declare-fun d!2154246 () Bool)

(assert (= bs!1832234 (and d!2154246 d!2154194)))

(declare-fun lambda!387486 () Int)

(assert (=> bs!1832234 (= (= lambda!387433 lambda!387349) (= lambda!387486 lambda!387484))))

(declare-fun bs!1832235 () Bool)

(assert (= bs!1832235 (and d!2154246 b!6851560)))

(assert (=> bs!1832235 (not (= lambda!387486 lambda!387349))))

(declare-fun bs!1832236 () Bool)

(assert (= bs!1832236 (and d!2154246 d!2153700)))

(assert (=> bs!1832236 (= (= lambda!387433 lambda!387362) (= lambda!387486 lambda!387430))))

(declare-fun bs!1832237 () Bool)

(assert (= bs!1832237 (and d!2154246 d!2153412)))

(assert (=> bs!1832237 (not (= lambda!387486 lambda!387362))))

(declare-fun bs!1832238 () Bool)

(assert (= bs!1832238 (and d!2154246 d!2153702)))

(assert (=> bs!1832238 (not (= lambda!387486 lambda!387433))))

(declare-fun bs!1832239 () Bool)

(assert (= bs!1832239 (and d!2154246 d!2153408)))

(assert (=> bs!1832239 (= (= lambda!387433 lambda!387349) (= lambda!387486 lambda!387352))))

(assert (=> d!2154246 true))

(assert (=> d!2154246 (< (dynLambda!26462 order!27657 lambda!387433) (dynLambda!26462 order!27657 lambda!387486))))

(assert (=> d!2154246 (= (exists!2780 zl!343 lambda!387433) (not (forall!15857 zl!343 lambda!387486)))))

(declare-fun bs!1832240 () Bool)

(assert (= bs!1832240 d!2154246))

(declare-fun m!7591752 () Bool)

(assert (=> bs!1832240 m!7591752))

(assert (=> d!2153702 d!2154246))

(declare-fun d!2154250 () Bool)

(assert (=> d!2154250 (= (isEmpty!38581 (tail!12810 (unfocusZipperList!2094 lt!2456208))) ((_ is Nil!66206) (tail!12810 (unfocusZipperList!2094 lt!2456208))))))

(assert (=> b!6852952 d!2154250))

(declare-fun d!2154252 () Bool)

(assert (=> d!2154252 (= (tail!12810 (unfocusZipperList!2094 lt!2456208)) (t!380073 (unfocusZipperList!2094 lt!2456208)))))

(assert (=> b!6852952 d!2154252))

(declare-fun d!2154254 () Bool)

(assert (=> d!2154254 (= (isUnion!1449 lt!2456357) ((_ is Union!16677) lt!2456357))))

(assert (=> b!6852729 d!2154254))

(declare-fun b!6854110 () Bool)

(declare-fun e!4132945 () Regex!16677)

(assert (=> b!6854110 (= e!4132945 (getWitness!949 (t!380073 (t!380073 (t!380073 lt!2456210))) lambda!387348))))

(declare-fun b!6854111 () Bool)

(declare-fun lt!2456447 () Unit!160081)

(declare-fun Unit!160094 () Unit!160081)

(assert (=> b!6854111 (= lt!2456447 Unit!160094)))

(assert (=> b!6854111 false))

(assert (=> b!6854111 (= e!4132945 (head!13734 (t!380073 (t!380073 lt!2456210))))))

(declare-fun d!2154256 () Bool)

(declare-fun e!4132948 () Bool)

(assert (=> d!2154256 e!4132948))

(declare-fun res!2797330 () Bool)

(assert (=> d!2154256 (=> (not res!2797330) (not e!4132948))))

(declare-fun lt!2456446 () Regex!16677)

(assert (=> d!2154256 (= res!2797330 (dynLambda!26464 lambda!387348 lt!2456446))))

(declare-fun e!4132947 () Regex!16677)

(assert (=> d!2154256 (= lt!2456446 e!4132947)))

(declare-fun c!1275979 () Bool)

(declare-fun e!4132946 () Bool)

(assert (=> d!2154256 (= c!1275979 e!4132946)))

(declare-fun res!2797331 () Bool)

(assert (=> d!2154256 (=> (not res!2797331) (not e!4132946))))

(assert (=> d!2154256 (= res!2797331 ((_ is Cons!66206) (t!380073 (t!380073 lt!2456210))))))

(assert (=> d!2154256 (exists!2781 (t!380073 (t!380073 lt!2456210)) lambda!387348)))

(assert (=> d!2154256 (= (getWitness!949 (t!380073 (t!380073 lt!2456210)) lambda!387348) lt!2456446)))

(declare-fun b!6854112 () Bool)

(assert (=> b!6854112 (= e!4132947 (h!72654 (t!380073 (t!380073 lt!2456210))))))

(declare-fun b!6854113 () Bool)

(assert (=> b!6854113 (= e!4132946 (dynLambda!26464 lambda!387348 (h!72654 (t!380073 (t!380073 lt!2456210)))))))

(declare-fun b!6854114 () Bool)

(assert (=> b!6854114 (= e!4132947 e!4132945)))

(declare-fun c!1275978 () Bool)

(assert (=> b!6854114 (= c!1275978 ((_ is Cons!66206) (t!380073 (t!380073 lt!2456210))))))

(declare-fun b!6854115 () Bool)

(assert (=> b!6854115 (= e!4132948 (contains!20329 (t!380073 (t!380073 lt!2456210)) lt!2456446))))

(assert (= (and d!2154256 res!2797331) b!6854113))

(assert (= (and d!2154256 c!1275979) b!6854112))

(assert (= (and d!2154256 (not c!1275979)) b!6854114))

(assert (= (and b!6854114 c!1275978) b!6854110))

(assert (= (and b!6854114 (not c!1275978)) b!6854111))

(assert (= (and d!2154256 res!2797330) b!6854115))

(declare-fun b_lambda!258839 () Bool)

(assert (=> (not b_lambda!258839) (not d!2154256)))

(declare-fun b_lambda!258841 () Bool)

(assert (=> (not b_lambda!258841) (not b!6854113)))

(declare-fun m!7591754 () Bool)

(assert (=> b!6854115 m!7591754))

(declare-fun m!7591756 () Bool)

(assert (=> b!6854110 m!7591756))

(declare-fun m!7591758 () Bool)

(assert (=> d!2154256 m!7591758))

(declare-fun m!7591760 () Bool)

(assert (=> d!2154256 m!7591760))

(declare-fun m!7591762 () Bool)

(assert (=> b!6854113 m!7591762))

(declare-fun m!7591764 () Bool)

(assert (=> b!6854111 m!7591764))

(assert (=> b!6852995 d!2154256))

(declare-fun d!2154258 () Bool)

(declare-fun c!1275980 () Bool)

(assert (=> d!2154258 (= c!1275980 ((_ is Nil!66207) res!2796871))))

(declare-fun e!4132949 () (InoxSet Context!12122))

(assert (=> d!2154258 (= (content!12985 res!2796871) e!4132949)))

(declare-fun b!6854116 () Bool)

(assert (=> b!6854116 (= e!4132949 ((as const (Array Context!12122 Bool)) false))))

(declare-fun b!6854117 () Bool)

(assert (=> b!6854117 (= e!4132949 ((_ map or) (store ((as const (Array Context!12122 Bool)) false) (h!72655 res!2796871) true) (content!12985 (t!380074 res!2796871))))))

(assert (= (and d!2154258 c!1275980) b!6854116))

(assert (= (and d!2154258 (not c!1275980)) b!6854117))

(declare-fun m!7591766 () Bool)

(assert (=> b!6854117 m!7591766))

(declare-fun m!7591768 () Bool)

(assert (=> b!6854117 m!7591768))

(assert (=> b!6852938 d!2154258))

(declare-fun b!6854118 () Bool)

(declare-fun e!4132955 () Bool)

(declare-fun e!4132953 () Bool)

(assert (=> b!6854118 (= e!4132955 e!4132953)))

(declare-fun c!1275981 () Bool)

(assert (=> b!6854118 (= c!1275981 ((_ is Union!16677) (reg!17006 r!7292)))))

(declare-fun b!6854119 () Bool)

(declare-fun e!4132952 () Bool)

(assert (=> b!6854119 (= e!4132953 e!4132952)))

(declare-fun res!2797335 () Bool)

(declare-fun call!624418 () Bool)

(assert (=> b!6854119 (= res!2797335 call!624418)))

(assert (=> b!6854119 (=> (not res!2797335) (not e!4132952))))

(declare-fun d!2154260 () Bool)

(declare-fun res!2797333 () Bool)

(declare-fun e!4132950 () Bool)

(assert (=> d!2154260 (=> res!2797333 e!4132950)))

(assert (=> d!2154260 (= res!2797333 ((_ is EmptyExpr!16677) (reg!17006 r!7292)))))

(assert (=> d!2154260 (= (nullableFct!2524 (reg!17006 r!7292)) e!4132950)))

(declare-fun b!6854120 () Bool)

(declare-fun e!4132951 () Bool)

(declare-fun call!624417 () Bool)

(assert (=> b!6854120 (= e!4132951 call!624417)))

(declare-fun b!6854121 () Bool)

(declare-fun e!4132954 () Bool)

(assert (=> b!6854121 (= e!4132954 e!4132955)))

(declare-fun res!2797332 () Bool)

(assert (=> b!6854121 (=> res!2797332 e!4132955)))

(assert (=> b!6854121 (= res!2797332 ((_ is Star!16677) (reg!17006 r!7292)))))

(declare-fun b!6854122 () Bool)

(assert (=> b!6854122 (= e!4132950 e!4132954)))

(declare-fun res!2797336 () Bool)

(assert (=> b!6854122 (=> (not res!2797336) (not e!4132954))))

(assert (=> b!6854122 (= res!2797336 (and (not ((_ is EmptyLang!16677) (reg!17006 r!7292))) (not ((_ is ElementMatch!16677) (reg!17006 r!7292)))))))

(declare-fun b!6854123 () Bool)

(assert (=> b!6854123 (= e!4132952 call!624417)))

(declare-fun b!6854124 () Bool)

(assert (=> b!6854124 (= e!4132953 e!4132951)))

(declare-fun res!2797334 () Bool)

(assert (=> b!6854124 (= res!2797334 call!624418)))

(assert (=> b!6854124 (=> res!2797334 e!4132951)))

(declare-fun bm!624412 () Bool)

(assert (=> bm!624412 (= call!624418 (nullable!6640 (ite c!1275981 (regOne!33867 (reg!17006 r!7292)) (regOne!33866 (reg!17006 r!7292)))))))

(declare-fun bm!624413 () Bool)

(assert (=> bm!624413 (= call!624417 (nullable!6640 (ite c!1275981 (regTwo!33867 (reg!17006 r!7292)) (regTwo!33866 (reg!17006 r!7292)))))))

(assert (= (and d!2154260 (not res!2797333)) b!6854122))

(assert (= (and b!6854122 res!2797336) b!6854121))

(assert (= (and b!6854121 (not res!2797332)) b!6854118))

(assert (= (and b!6854118 c!1275981) b!6854124))

(assert (= (and b!6854118 (not c!1275981)) b!6854119))

(assert (= (and b!6854124 (not res!2797334)) b!6854120))

(assert (= (and b!6854119 res!2797335) b!6854123))

(assert (= (or b!6854120 b!6854123) bm!624413))

(assert (= (or b!6854124 b!6854119) bm!624412))

(declare-fun m!7591770 () Bool)

(assert (=> bm!624412 m!7591770))

(declare-fun m!7591772 () Bool)

(assert (=> bm!624413 m!7591772))

(assert (=> d!2153646 d!2154260))

(assert (=> bm!624195 d!2153718))

(assert (=> d!2153742 d!2154068))

(declare-fun d!2154262 () Bool)

(assert (=> d!2154262 (= (isEmpty!38581 (unfocusZipperList!2094 zl!343)) ((_ is Nil!66206) (unfocusZipperList!2094 zl!343)))))

(assert (=> b!6852725 d!2154262))

(declare-fun d!2154264 () Bool)

(assert (=> d!2154264 (= (nullable!6640 (regOne!33866 lt!2456209)) (nullableFct!2524 (regOne!33866 lt!2456209)))))

(declare-fun bs!1832251 () Bool)

(assert (= bs!1832251 d!2154264))

(declare-fun m!7591774 () Bool)

(assert (=> bs!1832251 m!7591774))

(assert (=> b!6852990 d!2154264))

(declare-fun d!2154266 () Bool)

(assert (=> d!2154266 (= (nullable!6640 (derivativeStep!5323 lt!2456209 (head!13733 s!2326))) (nullableFct!2524 (derivativeStep!5323 lt!2456209 (head!13733 s!2326))))))

(declare-fun bs!1832252 () Bool)

(assert (= bs!1832252 d!2154266))

(assert (=> bs!1832252 m!7589938))

(declare-fun m!7591776 () Bool)

(assert (=> bs!1832252 m!7591776))

(assert (=> b!6852978 d!2154266))

(declare-fun b!6854125 () Bool)

(declare-fun res!2797338 () Bool)

(declare-fun e!4132961 () Bool)

(assert (=> b!6854125 (=> res!2797338 e!4132961)))

(assert (=> b!6854125 (= res!2797338 (not ((_ is Concat!25522) (ite c!1275666 (reg!17006 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))) (ite c!1275667 (regOne!33867 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))) (regOne!33866 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))))))))))

(declare-fun e!4132962 () Bool)

(assert (=> b!6854125 (= e!4132962 e!4132961)))

(declare-fun b!6854126 () Bool)

(declare-fun res!2797339 () Bool)

(declare-fun e!4132956 () Bool)

(assert (=> b!6854126 (=> (not res!2797339) (not e!4132956))))

(declare-fun call!624419 () Bool)

(assert (=> b!6854126 (= res!2797339 call!624419)))

(assert (=> b!6854126 (= e!4132962 e!4132956)))

(declare-fun call!624420 () Bool)

(declare-fun c!1275982 () Bool)

(declare-fun bm!624414 () Bool)

(declare-fun c!1275983 () Bool)

(assert (=> bm!624414 (= call!624420 (validRegex!8413 (ite c!1275982 (reg!17006 (ite c!1275666 (reg!17006 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))) (ite c!1275667 (regOne!33867 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))) (regOne!33866 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292)))))) (ite c!1275983 (regOne!33867 (ite c!1275666 (reg!17006 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))) (ite c!1275667 (regOne!33867 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))) (regOne!33866 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292)))))) (regOne!33866 (ite c!1275666 (reg!17006 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))) (ite c!1275667 (regOne!33867 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))) (regOne!33866 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))))))))))))

(declare-fun b!6854127 () Bool)

(declare-fun call!624421 () Bool)

(assert (=> b!6854127 (= e!4132956 call!624421)))

(declare-fun b!6854129 () Bool)

(declare-fun e!4132957 () Bool)

(declare-fun e!4132958 () Bool)

(assert (=> b!6854129 (= e!4132957 e!4132958)))

(assert (=> b!6854129 (= c!1275982 ((_ is Star!16677) (ite c!1275666 (reg!17006 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))) (ite c!1275667 (regOne!33867 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))) (regOne!33866 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292)))))))))

(declare-fun b!6854130 () Bool)

(assert (=> b!6854130 (= e!4132958 e!4132962)))

(assert (=> b!6854130 (= c!1275983 ((_ is Union!16677) (ite c!1275666 (reg!17006 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))) (ite c!1275667 (regOne!33867 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))) (regOne!33866 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292)))))))))

(declare-fun bm!624415 () Bool)

(assert (=> bm!624415 (= call!624419 call!624420)))

(declare-fun d!2154268 () Bool)

(declare-fun res!2797340 () Bool)

(assert (=> d!2154268 (=> res!2797340 e!4132957)))

(assert (=> d!2154268 (= res!2797340 ((_ is ElementMatch!16677) (ite c!1275666 (reg!17006 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))) (ite c!1275667 (regOne!33867 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))) (regOne!33866 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292)))))))))

(assert (=> d!2154268 (= (validRegex!8413 (ite c!1275666 (reg!17006 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))) (ite c!1275667 (regOne!33867 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))) (regOne!33866 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292)))))) e!4132957)))

(declare-fun b!6854128 () Bool)

(declare-fun e!4132959 () Bool)

(assert (=> b!6854128 (= e!4132958 e!4132959)))

(declare-fun res!2797341 () Bool)

(assert (=> b!6854128 (= res!2797341 (not (nullable!6640 (reg!17006 (ite c!1275666 (reg!17006 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))) (ite c!1275667 (regOne!33867 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))) (regOne!33866 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292)))))))))))

(assert (=> b!6854128 (=> (not res!2797341) (not e!4132959))))

(declare-fun b!6854131 () Bool)

(assert (=> b!6854131 (= e!4132959 call!624420)))

(declare-fun bm!624416 () Bool)

(assert (=> bm!624416 (= call!624421 (validRegex!8413 (ite c!1275983 (regTwo!33867 (ite c!1275666 (reg!17006 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))) (ite c!1275667 (regOne!33867 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))) (regOne!33866 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292)))))) (regTwo!33866 (ite c!1275666 (reg!17006 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))) (ite c!1275667 (regOne!33867 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292))) (regOne!33866 (ite c!1275434 (regTwo!33867 r!7292) (regTwo!33866 r!7292)))))))))))

(declare-fun b!6854132 () Bool)

(declare-fun e!4132960 () Bool)

(assert (=> b!6854132 (= e!4132960 call!624421)))

(declare-fun b!6854133 () Bool)

(assert (=> b!6854133 (= e!4132961 e!4132960)))

(declare-fun res!2797337 () Bool)

(assert (=> b!6854133 (=> (not res!2797337) (not e!4132960))))

(assert (=> b!6854133 (= res!2797337 call!624419)))

(assert (= (and d!2154268 (not res!2797340)) b!6854129))

(assert (= (and b!6854129 c!1275982) b!6854128))

(assert (= (and b!6854129 (not c!1275982)) b!6854130))

(assert (= (and b!6854128 res!2797341) b!6854131))

(assert (= (and b!6854130 c!1275983) b!6854126))

(assert (= (and b!6854130 (not c!1275983)) b!6854125))

(assert (= (and b!6854126 res!2797339) b!6854127))

(assert (= (and b!6854125 (not res!2797338)) b!6854133))

(assert (= (and b!6854133 res!2797337) b!6854132))

(assert (= (or b!6854127 b!6854132) bm!624416))

(assert (= (or b!6854126 b!6854133) bm!624415))

(assert (= (or b!6854131 bm!624415) bm!624414))

(declare-fun m!7591778 () Bool)

(assert (=> bm!624414 m!7591778))

(declare-fun m!7591780 () Bool)

(assert (=> b!6854128 m!7591780))

(declare-fun m!7591782 () Bool)

(assert (=> bm!624416 m!7591782))

(assert (=> bm!624184 d!2154268))

(declare-fun b!6854134 () Bool)

(declare-fun res!2797343 () Bool)

(declare-fun e!4132968 () Bool)

(assert (=> b!6854134 (=> res!2797343 e!4132968)))

(assert (=> b!6854134 (= res!2797343 (not ((_ is Concat!25522) (ite c!1275600 (regTwo!33867 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))) (regTwo!33866 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292))))))))))

(declare-fun e!4132969 () Bool)

(assert (=> b!6854134 (= e!4132969 e!4132968)))

(declare-fun b!6854135 () Bool)

(declare-fun res!2797344 () Bool)

(declare-fun e!4132963 () Bool)

(assert (=> b!6854135 (=> (not res!2797344) (not e!4132963))))

(declare-fun call!624422 () Bool)

(assert (=> b!6854135 (= res!2797344 call!624422)))

(assert (=> b!6854135 (= e!4132969 e!4132963)))

(declare-fun c!1275984 () Bool)

(declare-fun c!1275985 () Bool)

(declare-fun bm!624417 () Bool)

(declare-fun call!624423 () Bool)

(assert (=> bm!624417 (= call!624423 (validRegex!8413 (ite c!1275984 (reg!17006 (ite c!1275600 (regTwo!33867 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))) (regTwo!33866 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))))) (ite c!1275985 (regOne!33867 (ite c!1275600 (regTwo!33867 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))) (regTwo!33866 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))))) (regOne!33866 (ite c!1275600 (regTwo!33867 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))) (regTwo!33866 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292))))))))))))

(declare-fun b!6854136 () Bool)

(declare-fun call!624424 () Bool)

(assert (=> b!6854136 (= e!4132963 call!624424)))

(declare-fun b!6854138 () Bool)

(declare-fun e!4132964 () Bool)

(declare-fun e!4132965 () Bool)

(assert (=> b!6854138 (= e!4132964 e!4132965)))

(assert (=> b!6854138 (= c!1275984 ((_ is Star!16677) (ite c!1275600 (regTwo!33867 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))) (regTwo!33866 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))))))))

(declare-fun b!6854139 () Bool)

(assert (=> b!6854139 (= e!4132965 e!4132969)))

(assert (=> b!6854139 (= c!1275985 ((_ is Union!16677) (ite c!1275600 (regTwo!33867 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))) (regTwo!33866 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))))))))

(declare-fun bm!624418 () Bool)

(assert (=> bm!624418 (= call!624422 call!624423)))

(declare-fun d!2154270 () Bool)

(declare-fun res!2797345 () Bool)

(assert (=> d!2154270 (=> res!2797345 e!4132964)))

(assert (=> d!2154270 (= res!2797345 ((_ is ElementMatch!16677) (ite c!1275600 (regTwo!33867 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))) (regTwo!33866 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))))))))

(assert (=> d!2154270 (= (validRegex!8413 (ite c!1275600 (regTwo!33867 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))) (regTwo!33866 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))))) e!4132964)))

(declare-fun b!6854137 () Bool)

(declare-fun e!4132966 () Bool)

(assert (=> b!6854137 (= e!4132965 e!4132966)))

(declare-fun res!2797346 () Bool)

(assert (=> b!6854137 (= res!2797346 (not (nullable!6640 (reg!17006 (ite c!1275600 (regTwo!33867 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))) (regTwo!33866 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))))))))))

(assert (=> b!6854137 (=> (not res!2797346) (not e!4132966))))

(declare-fun b!6854140 () Bool)

(assert (=> b!6854140 (= e!4132966 call!624423)))

(declare-fun bm!624419 () Bool)

(assert (=> bm!624419 (= call!624424 (validRegex!8413 (ite c!1275985 (regTwo!33867 (ite c!1275600 (regTwo!33867 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))) (regTwo!33866 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))))) (regTwo!33866 (ite c!1275600 (regTwo!33867 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))) (regTwo!33866 (ite c!1275433 (reg!17006 r!7292) (ite c!1275434 (regOne!33867 r!7292) (regOne!33866 r!7292)))))))))))

(declare-fun b!6854141 () Bool)

(declare-fun e!4132967 () Bool)

(assert (=> b!6854141 (= e!4132967 call!624424)))

(declare-fun b!6854142 () Bool)

(assert (=> b!6854142 (= e!4132968 e!4132967)))

(declare-fun res!2797342 () Bool)

(assert (=> b!6854142 (=> (not res!2797342) (not e!4132967))))

(assert (=> b!6854142 (= res!2797342 call!624422)))

(assert (= (and d!2154270 (not res!2797345)) b!6854138))

(assert (= (and b!6854138 c!1275984) b!6854137))

(assert (= (and b!6854138 (not c!1275984)) b!6854139))

(assert (= (and b!6854137 res!2797346) b!6854140))

(assert (= (and b!6854139 c!1275985) b!6854135))

(assert (= (and b!6854139 (not c!1275985)) b!6854134))

(assert (= (and b!6854135 res!2797344) b!6854136))

(assert (= (and b!6854134 (not res!2797343)) b!6854142))

(assert (= (and b!6854142 res!2797342) b!6854141))

(assert (= (or b!6854136 b!6854141) bm!624419))

(assert (= (or b!6854135 b!6854142) bm!624418))

(assert (= (or b!6854140 bm!624418) bm!624417))

(declare-fun m!7591790 () Bool)

(assert (=> bm!624417 m!7591790))

(declare-fun m!7591792 () Bool)

(assert (=> b!6854137 m!7591792))

(declare-fun m!7591794 () Bool)

(assert (=> bm!624419 m!7591794))

(assert (=> bm!624157 d!2154270))

(declare-fun d!2154274 () Bool)

(declare-fun res!2797347 () Bool)

(declare-fun e!4132970 () Bool)

(assert (=> d!2154274 (=> res!2797347 e!4132970)))

(assert (=> d!2154274 (= res!2797347 ((_ is Nil!66206) (t!380073 (exprs!6561 (h!72655 zl!343)))))))

(assert (=> d!2154274 (= (forall!15858 (t!380073 (exprs!6561 (h!72655 zl!343))) lambda!387405) e!4132970)))

(declare-fun b!6854143 () Bool)

(declare-fun e!4132971 () Bool)

(assert (=> b!6854143 (= e!4132970 e!4132971)))

(declare-fun res!2797348 () Bool)

(assert (=> b!6854143 (=> (not res!2797348) (not e!4132971))))

(assert (=> b!6854143 (= res!2797348 (dynLambda!26464 lambda!387405 (h!72654 (t!380073 (exprs!6561 (h!72655 zl!343))))))))

(declare-fun b!6854144 () Bool)

(assert (=> b!6854144 (= e!4132971 (forall!15858 (t!380073 (t!380073 (exprs!6561 (h!72655 zl!343)))) lambda!387405))))

(assert (= (and d!2154274 (not res!2797347)) b!6854143))

(assert (= (and b!6854143 res!2797348) b!6854144))

(declare-fun b_lambda!258843 () Bool)

(assert (=> (not b_lambda!258843) (not b!6854143)))

(declare-fun m!7591796 () Bool)

(assert (=> b!6854143 m!7591796))

(declare-fun m!7591798 () Bool)

(assert (=> b!6854144 m!7591798))

(assert (=> b!6852676 d!2154274))

(declare-fun d!2154276 () Bool)

(declare-fun lt!2456448 () Bool)

(assert (=> d!2154276 (= lt!2456448 (select (content!12985 (t!380074 lt!2456275)) (h!72655 lt!2456275)))))

(declare-fun e!4132980 () Bool)

(assert (=> d!2154276 (= lt!2456448 e!4132980)))

(declare-fun res!2797354 () Bool)

(assert (=> d!2154276 (=> (not res!2797354) (not e!4132980))))

(assert (=> d!2154276 (= res!2797354 ((_ is Cons!66207) (t!380074 lt!2456275)))))

(assert (=> d!2154276 (= (contains!20331 (t!380074 lt!2456275) (h!72655 lt!2456275)) lt!2456448)))

(declare-fun b!6854154 () Bool)

(declare-fun e!4132979 () Bool)

(assert (=> b!6854154 (= e!4132980 e!4132979)))

(declare-fun res!2797355 () Bool)

(assert (=> b!6854154 (=> res!2797355 e!4132979)))

(assert (=> b!6854154 (= res!2797355 (= (h!72655 (t!380074 lt!2456275)) (h!72655 lt!2456275)))))

(declare-fun b!6854155 () Bool)

(assert (=> b!6854155 (= e!4132979 (contains!20331 (t!380074 (t!380074 lt!2456275)) (h!72655 lt!2456275)))))

(assert (= (and d!2154276 res!2797354) b!6854154))

(assert (= (and b!6854154 (not res!2797355)) b!6854155))

(assert (=> d!2154276 m!7590734))

(declare-fun m!7591800 () Bool)

(assert (=> d!2154276 m!7591800))

(declare-fun m!7591802 () Bool)

(assert (=> b!6854155 m!7591802))

(assert (=> b!6852934 d!2154276))

(declare-fun b!6854156 () Bool)

(declare-fun e!4132981 () Int)

(declare-fun e!4132982 () Int)

(assert (=> b!6854156 (= e!4132981 e!4132982)))

(declare-fun c!1275988 () Bool)

(assert (=> b!6854156 (= c!1275988 ((_ is Star!16677) (ite c!1275594 (reg!17006 (h!72654 (exprs!6561 lt!2456204))) (ite c!1275597 (regTwo!33867 (h!72654 (exprs!6561 lt!2456204))) (regTwo!33866 (h!72654 (exprs!6561 lt!2456204)))))))))

(declare-fun d!2154278 () Bool)

(declare-fun lt!2456449 () Int)

(assert (=> d!2154278 (> lt!2456449 0)))

(assert (=> d!2154278 (= lt!2456449 e!4132981)))

(declare-fun c!1275990 () Bool)

(assert (=> d!2154278 (= c!1275990 ((_ is ElementMatch!16677) (ite c!1275594 (reg!17006 (h!72654 (exprs!6561 lt!2456204))) (ite c!1275597 (regTwo!33867 (h!72654 (exprs!6561 lt!2456204))) (regTwo!33866 (h!72654 (exprs!6561 lt!2456204)))))))))

(assert (=> d!2154278 (= (regexDepthTotal!251 (ite c!1275594 (reg!17006 (h!72654 (exprs!6561 lt!2456204))) (ite c!1275597 (regTwo!33867 (h!72654 (exprs!6561 lt!2456204))) (regTwo!33866 (h!72654 (exprs!6561 lt!2456204)))))) lt!2456449)))

(declare-fun b!6854157 () Bool)

(assert (=> b!6854157 (= e!4132981 1)))

(declare-fun b!6854158 () Bool)

(declare-fun e!4132984 () Int)

(assert (=> b!6854158 (= e!4132984 1)))

(declare-fun bm!624423 () Bool)

(declare-fun call!624428 () Int)

(declare-fun call!624429 () Int)

(assert (=> bm!624423 (= call!624428 call!624429)))

(declare-fun c!1275991 () Bool)

(declare-fun b!6854159 () Bool)

(assert (=> b!6854159 (= c!1275991 ((_ is Union!16677) (ite c!1275594 (reg!17006 (h!72654 (exprs!6561 lt!2456204))) (ite c!1275597 (regTwo!33867 (h!72654 (exprs!6561 lt!2456204))) (regTwo!33866 (h!72654 (exprs!6561 lt!2456204)))))))))

(declare-fun e!4132983 () Int)

(assert (=> b!6854159 (= e!4132982 e!4132983)))

(declare-fun b!6854160 () Bool)

(assert (=> b!6854160 (= e!4132983 e!4132984)))

(declare-fun c!1275989 () Bool)

(assert (=> b!6854160 (= c!1275989 ((_ is Concat!25522) (ite c!1275594 (reg!17006 (h!72654 (exprs!6561 lt!2456204))) (ite c!1275597 (regTwo!33867 (h!72654 (exprs!6561 lt!2456204))) (regTwo!33866 (h!72654 (exprs!6561 lt!2456204)))))))))

(declare-fun b!6854161 () Bool)

(declare-fun call!624430 () Int)

(assert (=> b!6854161 (= e!4132983 (+ 1 call!624430 call!624428))))

(declare-fun b!6854162 () Bool)

(assert (=> b!6854162 (= e!4132984 (+ 1 call!624430 call!624428))))

(declare-fun bm!624424 () Bool)

(assert (=> bm!624424 (= call!624429 (regexDepthTotal!251 (ite c!1275988 (reg!17006 (ite c!1275594 (reg!17006 (h!72654 (exprs!6561 lt!2456204))) (ite c!1275597 (regTwo!33867 (h!72654 (exprs!6561 lt!2456204))) (regTwo!33866 (h!72654 (exprs!6561 lt!2456204)))))) (ite c!1275991 (regTwo!33867 (ite c!1275594 (reg!17006 (h!72654 (exprs!6561 lt!2456204))) (ite c!1275597 (regTwo!33867 (h!72654 (exprs!6561 lt!2456204))) (regTwo!33866 (h!72654 (exprs!6561 lt!2456204)))))) (regTwo!33866 (ite c!1275594 (reg!17006 (h!72654 (exprs!6561 lt!2456204))) (ite c!1275597 (regTwo!33867 (h!72654 (exprs!6561 lt!2456204))) (regTwo!33866 (h!72654 (exprs!6561 lt!2456204))))))))))))

(declare-fun bm!624425 () Bool)

(assert (=> bm!624425 (= call!624430 (regexDepthTotal!251 (ite c!1275991 (regOne!33867 (ite c!1275594 (reg!17006 (h!72654 (exprs!6561 lt!2456204))) (ite c!1275597 (regTwo!33867 (h!72654 (exprs!6561 lt!2456204))) (regTwo!33866 (h!72654 (exprs!6561 lt!2456204)))))) (regOne!33866 (ite c!1275594 (reg!17006 (h!72654 (exprs!6561 lt!2456204))) (ite c!1275597 (regTwo!33867 (h!72654 (exprs!6561 lt!2456204))) (regTwo!33866 (h!72654 (exprs!6561 lt!2456204)))))))))))

(declare-fun b!6854163 () Bool)

(assert (=> b!6854163 (= e!4132982 (+ 1 call!624429))))

(assert (= (and d!2154278 c!1275990) b!6854157))

(assert (= (and d!2154278 (not c!1275990)) b!6854156))

(assert (= (and b!6854156 c!1275988) b!6854163))

(assert (= (and b!6854156 (not c!1275988)) b!6854159))

(assert (= (and b!6854159 c!1275991) b!6854161))

(assert (= (and b!6854159 (not c!1275991)) b!6854160))

(assert (= (and b!6854160 c!1275989) b!6854162))

(assert (= (and b!6854160 (not c!1275989)) b!6854158))

(assert (= (or b!6854161 b!6854162) bm!624423))

(assert (= (or b!6854161 b!6854162) bm!624425))

(assert (= (or b!6854163 bm!624423) bm!624424))

(declare-fun m!7591810 () Bool)

(assert (=> bm!624424 m!7591810))

(declare-fun m!7591812 () Bool)

(assert (=> bm!624425 m!7591812))

(assert (=> bm!624153 d!2154278))

(declare-fun d!2154282 () Bool)

(assert (=> d!2154282 (= (isEmpty!38581 (tail!12810 (exprs!6561 (h!72655 zl!343)))) ((_ is Nil!66206) (tail!12810 (exprs!6561 (h!72655 zl!343)))))))

(assert (=> b!6852773 d!2154282))

(declare-fun d!2154286 () Bool)

(assert (=> d!2154286 (= (tail!12810 (exprs!6561 (h!72655 zl!343))) (t!380073 (exprs!6561 (h!72655 zl!343))))))

(assert (=> b!6852773 d!2154286))

(declare-fun bs!1832264 () Bool)

(declare-fun b!6854178 () Bool)

(assert (= bs!1832264 (and b!6854178 b!6853739)))

(declare-fun lambda!387489 () Int)

(assert (=> bs!1832264 (not (= lambda!387489 lambda!387476))))

(declare-fun bs!1832265 () Bool)

(assert (= bs!1832265 (and b!6854178 b!6852782)))

(assert (=> bs!1832265 (not (= lambda!387489 lambda!387441))))

(declare-fun bs!1832266 () Bool)

(assert (= bs!1832266 (and b!6854178 b!6853743)))

(assert (=> bs!1832266 (= (and (= (reg!17006 (regOne!33867 (regTwo!33867 r!7292))) (reg!17006 (regTwo!33867 (regTwo!33867 r!7292)))) (= (regOne!33867 (regTwo!33867 r!7292)) (regTwo!33867 (regTwo!33867 r!7292)))) (= lambda!387489 lambda!387474))))

(declare-fun bs!1832267 () Bool)

(assert (= bs!1832267 (and b!6854178 b!6851816)))

(assert (=> bs!1832267 (not (= lambda!387489 lambda!387380))))

(declare-fun bs!1832268 () Bool)

(assert (= bs!1832268 (and b!6854178 b!6852966)))

(assert (=> bs!1832268 (not (= lambda!387489 lambda!387453))))

(declare-fun bs!1832269 () Bool)

(assert (= bs!1832269 (and b!6854178 b!6851820)))

(assert (=> bs!1832269 (= (and (= (reg!17006 (regOne!33867 (regTwo!33867 r!7292))) (reg!17006 r!7292)) (= (regOne!33867 (regTwo!33867 r!7292)) r!7292)) (= lambda!387489 lambda!387379))))

(declare-fun bs!1832270 () Bool)

(assert (= bs!1832270 (and b!6854178 b!6853369)))

(assert (=> bs!1832270 (not (= lambda!387489 lambda!387465))))

(declare-fun bs!1832271 () Bool)

(assert (= bs!1832271 (and b!6854178 b!6852970)))

(assert (=> bs!1832271 (= (and (= (reg!17006 (regOne!33867 (regTwo!33867 r!7292))) (reg!17006 (regTwo!33867 r!7292))) (= (regOne!33867 (regTwo!33867 r!7292)) (regTwo!33867 r!7292))) (= lambda!387489 lambda!387452))))

(declare-fun bs!1832272 () Bool)

(assert (= bs!1832272 (and b!6854178 b!6852786)))

(assert (=> bs!1832272 (= (and (= (reg!17006 (regOne!33867 (regTwo!33867 r!7292))) (reg!17006 (regOne!33867 r!7292))) (= (regOne!33867 (regTwo!33867 r!7292)) (regOne!33867 r!7292))) (= lambda!387489 lambda!387440))))

(declare-fun bs!1832273 () Bool)

(assert (= bs!1832273 (and b!6854178 b!6853373)))

(assert (=> bs!1832273 (= (and (= (reg!17006 (regOne!33867 (regTwo!33867 r!7292))) (reg!17006 (regTwo!33867 (regOne!33867 r!7292)))) (= (regOne!33867 (regTwo!33867 r!7292)) (regTwo!33867 (regOne!33867 r!7292)))) (= lambda!387489 lambda!387464))))

(declare-fun bs!1832275 () Bool)

(assert (= bs!1832275 (and b!6854178 b!6853623)))

(assert (=> bs!1832275 (not (= lambda!387489 lambda!387472))))

(declare-fun bs!1832276 () Bool)

(assert (= bs!1832276 (and b!6854178 b!6853627)))

(assert (=> bs!1832276 (= (and (= (reg!17006 (regOne!33867 (regTwo!33867 r!7292))) (reg!17006 (regOne!33867 (regOne!33867 r!7292)))) (= (regOne!33867 (regTwo!33867 r!7292)) (regOne!33867 (regOne!33867 r!7292)))) (= lambda!387489 lambda!387471))))

(assert (=> b!6854178 true))

(assert (=> b!6854178 true))

(declare-fun bs!1832283 () Bool)

(declare-fun b!6854174 () Bool)

(assert (= bs!1832283 (and b!6854174 b!6853739)))

(declare-fun lambda!387491 () Int)

(assert (=> bs!1832283 (= (and (= (regOne!33866 (regOne!33867 (regTwo!33867 r!7292))) (regOne!33866 (regTwo!33867 (regTwo!33867 r!7292)))) (= (regTwo!33866 (regOne!33867 (regTwo!33867 r!7292))) (regTwo!33866 (regTwo!33867 (regTwo!33867 r!7292))))) (= lambda!387491 lambda!387476))))

(declare-fun bs!1832285 () Bool)

(assert (= bs!1832285 (and b!6854174 b!6852782)))

(assert (=> bs!1832285 (= (and (= (regOne!33866 (regOne!33867 (regTwo!33867 r!7292))) (regOne!33866 (regOne!33867 r!7292))) (= (regTwo!33866 (regOne!33867 (regTwo!33867 r!7292))) (regTwo!33866 (regOne!33867 r!7292)))) (= lambda!387491 lambda!387441))))

(declare-fun bs!1832287 () Bool)

(assert (= bs!1832287 (and b!6854174 b!6853743)))

(assert (=> bs!1832287 (not (= lambda!387491 lambda!387474))))

(declare-fun bs!1832289 () Bool)

(assert (= bs!1832289 (and b!6854174 b!6851816)))

(assert (=> bs!1832289 (= (and (= (regOne!33866 (regOne!33867 (regTwo!33867 r!7292))) (regOne!33866 r!7292)) (= (regTwo!33866 (regOne!33867 (regTwo!33867 r!7292))) (regTwo!33866 r!7292))) (= lambda!387491 lambda!387380))))

(declare-fun bs!1832291 () Bool)

(assert (= bs!1832291 (and b!6854174 b!6852966)))

(assert (=> bs!1832291 (= (and (= (regOne!33866 (regOne!33867 (regTwo!33867 r!7292))) (regOne!33866 (regTwo!33867 r!7292))) (= (regTwo!33866 (regOne!33867 (regTwo!33867 r!7292))) (regTwo!33866 (regTwo!33867 r!7292)))) (= lambda!387491 lambda!387453))))

(declare-fun bs!1832293 () Bool)

(assert (= bs!1832293 (and b!6854174 b!6851820)))

(assert (=> bs!1832293 (not (= lambda!387491 lambda!387379))))

(declare-fun bs!1832294 () Bool)

(assert (= bs!1832294 (and b!6854174 b!6853369)))

(assert (=> bs!1832294 (= (and (= (regOne!33866 (regOne!33867 (regTwo!33867 r!7292))) (regOne!33866 (regTwo!33867 (regOne!33867 r!7292)))) (= (regTwo!33866 (regOne!33867 (regTwo!33867 r!7292))) (regTwo!33866 (regTwo!33867 (regOne!33867 r!7292))))) (= lambda!387491 lambda!387465))))

(declare-fun bs!1832295 () Bool)

(assert (= bs!1832295 (and b!6854174 b!6852970)))

(assert (=> bs!1832295 (not (= lambda!387491 lambda!387452))))

(declare-fun bs!1832296 () Bool)

(assert (= bs!1832296 (and b!6854174 b!6852786)))

(assert (=> bs!1832296 (not (= lambda!387491 lambda!387440))))

(declare-fun bs!1832297 () Bool)

(assert (= bs!1832297 (and b!6854174 b!6853373)))

(assert (=> bs!1832297 (not (= lambda!387491 lambda!387464))))

(declare-fun bs!1832298 () Bool)

(assert (= bs!1832298 (and b!6854174 b!6853623)))

(assert (=> bs!1832298 (= (and (= (regOne!33866 (regOne!33867 (regTwo!33867 r!7292))) (regOne!33866 (regOne!33867 (regOne!33867 r!7292)))) (= (regTwo!33866 (regOne!33867 (regTwo!33867 r!7292))) (regTwo!33866 (regOne!33867 (regOne!33867 r!7292))))) (= lambda!387491 lambda!387472))))

(declare-fun bs!1832300 () Bool)

(assert (= bs!1832300 (and b!6854174 b!6853627)))

(assert (=> bs!1832300 (not (= lambda!387491 lambda!387471))))

(declare-fun bs!1832302 () Bool)

(assert (= bs!1832302 (and b!6854174 b!6854178)))

(assert (=> bs!1832302 (not (= lambda!387491 lambda!387489))))

(assert (=> b!6854174 true))

(assert (=> b!6854174 true))

(declare-fun b!6854168 () Bool)

(declare-fun c!1275995 () Bool)

(assert (=> b!6854168 (= c!1275995 ((_ is Union!16677) (regOne!33867 (regTwo!33867 r!7292))))))

(declare-fun e!4132992 () Bool)

(declare-fun e!4132990 () Bool)

(assert (=> b!6854168 (= e!4132992 e!4132990)))

(declare-fun b!6854169 () Bool)

(declare-fun c!1275992 () Bool)

(assert (=> b!6854169 (= c!1275992 ((_ is ElementMatch!16677) (regOne!33867 (regTwo!33867 r!7292))))))

(declare-fun e!4132993 () Bool)

(assert (=> b!6854169 (= e!4132993 e!4132992)))

(declare-fun b!6854170 () Bool)

(declare-fun e!4132995 () Bool)

(assert (=> b!6854170 (= e!4132990 e!4132995)))

(declare-fun c!1275994 () Bool)

(assert (=> b!6854170 (= c!1275994 ((_ is Star!16677) (regOne!33867 (regTwo!33867 r!7292))))))

(declare-fun b!6854171 () Bool)

(declare-fun e!4132991 () Bool)

(assert (=> b!6854171 (= e!4132991 (matchRSpec!3778 (regTwo!33867 (regOne!33867 (regTwo!33867 r!7292))) s!2326))))

(declare-fun b!6854172 () Bool)

(assert (=> b!6854172 (= e!4132990 e!4132991)))

(declare-fun res!2797362 () Bool)

(assert (=> b!6854172 (= res!2797362 (matchRSpec!3778 (regOne!33867 (regOne!33867 (regTwo!33867 r!7292))) s!2326))))

(assert (=> b!6854172 (=> res!2797362 e!4132991)))

(declare-fun b!6854173 () Bool)

(declare-fun e!4132989 () Bool)

(declare-fun call!624432 () Bool)

(assert (=> b!6854173 (= e!4132989 call!624432)))

(declare-fun b!6854175 () Bool)

(assert (=> b!6854175 (= e!4132992 (= s!2326 (Cons!66208 (c!1275345 (regOne!33867 (regTwo!33867 r!7292))) Nil!66208)))))

(declare-fun bm!624426 () Bool)

(assert (=> bm!624426 (= call!624432 (isEmpty!38579 s!2326))))

(declare-fun b!6854176 () Bool)

(assert (=> b!6854176 (= e!4132989 e!4132993)))

(declare-fun res!2797360 () Bool)

(assert (=> b!6854176 (= res!2797360 (not ((_ is EmptyLang!16677) (regOne!33867 (regTwo!33867 r!7292)))))))

(assert (=> b!6854176 (=> (not res!2797360) (not e!4132993))))

(declare-fun b!6854177 () Bool)

(declare-fun res!2797361 () Bool)

(declare-fun e!4132994 () Bool)

(assert (=> b!6854177 (=> res!2797361 e!4132994)))

(assert (=> b!6854177 (= res!2797361 call!624432)))

(assert (=> b!6854177 (= e!4132995 e!4132994)))

(declare-fun call!624431 () Bool)

(assert (=> b!6854174 (= e!4132995 call!624431)))

(declare-fun d!2154288 () Bool)

(declare-fun c!1275993 () Bool)

(assert (=> d!2154288 (= c!1275993 ((_ is EmptyExpr!16677) (regOne!33867 (regTwo!33867 r!7292))))))

(assert (=> d!2154288 (= (matchRSpec!3778 (regOne!33867 (regTwo!33867 r!7292)) s!2326) e!4132989)))

(assert (=> b!6854178 (= e!4132994 call!624431)))

(declare-fun bm!624427 () Bool)

(assert (=> bm!624427 (= call!624431 (Exists!3739 (ite c!1275994 lambda!387489 lambda!387491)))))

(assert (= (and d!2154288 c!1275993) b!6854173))

(assert (= (and d!2154288 (not c!1275993)) b!6854176))

(assert (= (and b!6854176 res!2797360) b!6854169))

(assert (= (and b!6854169 c!1275992) b!6854175))

(assert (= (and b!6854169 (not c!1275992)) b!6854168))

(assert (= (and b!6854168 c!1275995) b!6854172))

(assert (= (and b!6854168 (not c!1275995)) b!6854170))

(assert (= (and b!6854172 (not res!2797362)) b!6854171))

(assert (= (and b!6854170 c!1275994) b!6854177))

(assert (= (and b!6854170 (not c!1275994)) b!6854174))

(assert (= (and b!6854177 (not res!2797361)) b!6854178))

(assert (= (or b!6854178 b!6854174) bm!624427))

(assert (= (or b!6854173 b!6854177) bm!624426))

(declare-fun m!7591828 () Bool)

(assert (=> b!6854171 m!7591828))

(declare-fun m!7591830 () Bool)

(assert (=> b!6854172 m!7591830))

(assert (=> bm!624426 m!7589856))

(declare-fun m!7591832 () Bool)

(assert (=> bm!624427 m!7591832))

(assert (=> b!6852964 d!2154288))

(declare-fun d!2154294 () Bool)

(declare-fun lt!2456451 () Bool)

(assert (=> d!2154294 (= lt!2456451 (select (content!12986 (t!380073 (t!380073 lt!2456210))) lt!2456209))))

(declare-fun e!4133011 () Bool)

(assert (=> d!2154294 (= lt!2456451 e!4133011)))

(declare-fun res!2797371 () Bool)

(assert (=> d!2154294 (=> (not res!2797371) (not e!4133011))))

(assert (=> d!2154294 (= res!2797371 ((_ is Cons!66206) (t!380073 (t!380073 lt!2456210))))))

(assert (=> d!2154294 (= (contains!20329 (t!380073 (t!380073 lt!2456210)) lt!2456209) lt!2456451)))

(declare-fun b!6854199 () Bool)

(declare-fun e!4133010 () Bool)

(assert (=> b!6854199 (= e!4133011 e!4133010)))

(declare-fun res!2797372 () Bool)

(assert (=> b!6854199 (=> res!2797372 e!4133010)))

(assert (=> b!6854199 (= res!2797372 (= (h!72654 (t!380073 (t!380073 lt!2456210))) lt!2456209))))

(declare-fun b!6854200 () Bool)

(assert (=> b!6854200 (= e!4133010 (contains!20329 (t!380073 (t!380073 (t!380073 lt!2456210))) lt!2456209))))

(assert (= (and d!2154294 res!2797371) b!6854199))

(assert (= (and b!6854199 (not res!2797372)) b!6854200))

(assert (=> d!2154294 m!7591272))

(declare-fun m!7591834 () Bool)

(assert (=> d!2154294 m!7591834))

(declare-fun m!7591836 () Bool)

(assert (=> b!6854200 m!7591836))

(assert (=> b!6852503 d!2154294))

(declare-fun d!2154296 () Bool)

(assert (=> d!2154296 (= (isEmpty!38581 (exprs!6561 (h!72655 zl!343))) ((_ is Nil!66206) (exprs!6561 (h!72655 zl!343))))))

(assert (=> b!6852769 d!2154296))

(declare-fun d!2154298 () Bool)

(declare-fun res!2797373 () Bool)

(declare-fun e!4133012 () Bool)

(assert (=> d!2154298 (=> res!2797373 e!4133012)))

(assert (=> d!2154298 (= res!2797373 ((_ is Nil!66206) (t!380073 lt!2456291)))))

(assert (=> d!2154298 (= (forall!15858 (t!380073 lt!2456291) lambda!387404) e!4133012)))

(declare-fun b!6854201 () Bool)

(declare-fun e!4133013 () Bool)

(assert (=> b!6854201 (= e!4133012 e!4133013)))

(declare-fun res!2797374 () Bool)

(assert (=> b!6854201 (=> (not res!2797374) (not e!4133013))))

(assert (=> b!6854201 (= res!2797374 (dynLambda!26464 lambda!387404 (h!72654 (t!380073 lt!2456291))))))

(declare-fun b!6854202 () Bool)

(assert (=> b!6854202 (= e!4133013 (forall!15858 (t!380073 (t!380073 lt!2456291)) lambda!387404))))

(assert (= (and d!2154298 (not res!2797373)) b!6854201))

(assert (= (and b!6854201 res!2797374) b!6854202))

(declare-fun b_lambda!258847 () Bool)

(assert (=> (not b_lambda!258847) (not b!6854201)))

(declare-fun m!7591838 () Bool)

(assert (=> b!6854201 m!7591838))

(declare-fun m!7591840 () Bool)

(assert (=> b!6854202 m!7591840))

(assert (=> b!6852916 d!2154298))

(declare-fun b!6854203 () Bool)

(declare-fun res!2797376 () Bool)

(declare-fun e!4133019 () Bool)

(assert (=> b!6854203 (=> res!2797376 e!4133019)))

(assert (=> b!6854203 (= res!2797376 (not ((_ is Concat!25522) (h!72654 (exprs!6561 (h!72655 zl!343))))))))

(declare-fun e!4133020 () Bool)

(assert (=> b!6854203 (= e!4133020 e!4133019)))

(declare-fun b!6854204 () Bool)

(declare-fun res!2797377 () Bool)

(declare-fun e!4133014 () Bool)

(assert (=> b!6854204 (=> (not res!2797377) (not e!4133014))))

(declare-fun call!624438 () Bool)

(assert (=> b!6854204 (= res!2797377 call!624438)))

(assert (=> b!6854204 (= e!4133020 e!4133014)))

(declare-fun call!624439 () Bool)

(declare-fun bm!624433 () Bool)

(declare-fun c!1276002 () Bool)

(declare-fun c!1276003 () Bool)

(assert (=> bm!624433 (= call!624439 (validRegex!8413 (ite c!1276002 (reg!17006 (h!72654 (exprs!6561 (h!72655 zl!343)))) (ite c!1276003 (regOne!33867 (h!72654 (exprs!6561 (h!72655 zl!343)))) (regOne!33866 (h!72654 (exprs!6561 (h!72655 zl!343))))))))))

(declare-fun b!6854205 () Bool)

(declare-fun call!624440 () Bool)

(assert (=> b!6854205 (= e!4133014 call!624440)))

(declare-fun b!6854207 () Bool)

(declare-fun e!4133015 () Bool)

(declare-fun e!4133016 () Bool)

(assert (=> b!6854207 (= e!4133015 e!4133016)))

(assert (=> b!6854207 (= c!1276002 ((_ is Star!16677) (h!72654 (exprs!6561 (h!72655 zl!343)))))))

(declare-fun b!6854208 () Bool)

(assert (=> b!6854208 (= e!4133016 e!4133020)))

(assert (=> b!6854208 (= c!1276003 ((_ is Union!16677) (h!72654 (exprs!6561 (h!72655 zl!343)))))))

(declare-fun bm!624434 () Bool)

(assert (=> bm!624434 (= call!624438 call!624439)))

(declare-fun d!2154300 () Bool)

(declare-fun res!2797378 () Bool)

(assert (=> d!2154300 (=> res!2797378 e!4133015)))

(assert (=> d!2154300 (= res!2797378 ((_ is ElementMatch!16677) (h!72654 (exprs!6561 (h!72655 zl!343)))))))

(assert (=> d!2154300 (= (validRegex!8413 (h!72654 (exprs!6561 (h!72655 zl!343)))) e!4133015)))

(declare-fun b!6854206 () Bool)

(declare-fun e!4133017 () Bool)

(assert (=> b!6854206 (= e!4133016 e!4133017)))

(declare-fun res!2797379 () Bool)

(assert (=> b!6854206 (= res!2797379 (not (nullable!6640 (reg!17006 (h!72654 (exprs!6561 (h!72655 zl!343)))))))))

(assert (=> b!6854206 (=> (not res!2797379) (not e!4133017))))

(declare-fun b!6854209 () Bool)

(assert (=> b!6854209 (= e!4133017 call!624439)))

(declare-fun bm!624435 () Bool)

(assert (=> bm!624435 (= call!624440 (validRegex!8413 (ite c!1276003 (regTwo!33867 (h!72654 (exprs!6561 (h!72655 zl!343)))) (regTwo!33866 (h!72654 (exprs!6561 (h!72655 zl!343)))))))))

(declare-fun b!6854210 () Bool)

(declare-fun e!4133018 () Bool)

(assert (=> b!6854210 (= e!4133018 call!624440)))

(declare-fun b!6854211 () Bool)

(assert (=> b!6854211 (= e!4133019 e!4133018)))

(declare-fun res!2797375 () Bool)

(assert (=> b!6854211 (=> (not res!2797375) (not e!4133018))))

(assert (=> b!6854211 (= res!2797375 call!624438)))

(assert (= (and d!2154300 (not res!2797378)) b!6854207))

(assert (= (and b!6854207 c!1276002) b!6854206))

(assert (= (and b!6854207 (not c!1276002)) b!6854208))

(assert (= (and b!6854206 res!2797379) b!6854209))

(assert (= (and b!6854208 c!1276003) b!6854204))

(assert (= (and b!6854208 (not c!1276003)) b!6854203))

(assert (= (and b!6854204 res!2797377) b!6854205))

(assert (= (and b!6854203 (not res!2797376)) b!6854211))

(assert (= (and b!6854211 res!2797375) b!6854210))

(assert (= (or b!6854205 b!6854210) bm!624435))

(assert (= (or b!6854204 b!6854211) bm!624434))

(assert (= (or b!6854209 bm!624434) bm!624433))

(declare-fun m!7591848 () Bool)

(assert (=> bm!624433 m!7591848))

(declare-fun m!7591850 () Bool)

(assert (=> b!6854206 m!7591850))

(declare-fun m!7591852 () Bool)

(assert (=> bm!624435 m!7591852))

(assert (=> bs!1831694 d!2154300))

(declare-fun bs!1832314 () Bool)

(declare-fun d!2154304 () Bool)

(assert (= bs!1832314 (and d!2154304 d!2153732)))

(declare-fun lambda!387493 () Int)

(assert (=> bs!1832314 (not (= lambda!387493 lambda!387445))))

(declare-fun bs!1832315 () Bool)

(assert (= bs!1832315 (and d!2154304 d!2154130)))

(assert (=> bs!1832315 (= lambda!387493 lambda!387477)))

(declare-fun bs!1832316 () Bool)

(assert (= bs!1832316 (and d!2154304 d!2153730)))

(assert (=> bs!1832316 (not (= lambda!387493 lambda!387442))))

(declare-fun bs!1832317 () Bool)

(assert (= bs!1832317 (and d!2154304 d!2153496)))

(assert (=> bs!1832317 (not (= lambda!387493 lambda!387395))))

(declare-fun bs!1832318 () Bool)

(assert (= bs!1832318 (and d!2154304 d!2153882)))

(assert (=> bs!1832318 (not (= lambda!387493 lambda!387455))))

(declare-fun bs!1832319 () Bool)

(assert (= bs!1832319 (and d!2154304 d!2153498)))

(assert (=> bs!1832319 (not (= lambda!387493 lambda!387401))))

(declare-fun bs!1832320 () Bool)

(assert (= bs!1832320 (and d!2154304 d!2153918)))

(assert (=> bs!1832320 (not (= lambda!387493 lambda!387461))))

(declare-fun bs!1832321 () Bool)

(assert (= bs!1832321 (and d!2154304 d!2153748)))

(assert (=> bs!1832321 (= lambda!387493 lambda!387446)))

(declare-fun bs!1832323 () Bool)

(assert (= bs!1832323 (and d!2154304 d!2153764)))

(assert (=> bs!1832323 (= lambda!387493 lambda!387448)))

(declare-fun bs!1832325 () Bool)

(assert (= bs!1832325 (and d!2154304 d!2153758)))

(assert (=> bs!1832325 (= lambda!387493 lambda!387447)))

(declare-fun bs!1832327 () Bool)

(assert (= bs!1832327 (and d!2154304 d!2153502)))

(assert (=> bs!1832327 (= lambda!387493 lambda!387405)))

(declare-fun bs!1832329 () Bool)

(assert (= bs!1832329 (and d!2154304 d!2153902)))

(assert (=> bs!1832329 (= lambda!387493 lambda!387459)))

(declare-fun bs!1832331 () Bool)

(assert (= bs!1832331 (and d!2154304 d!2153480)))

(assert (=> bs!1832331 (= lambda!387493 lambda!387392)))

(declare-fun bs!1832332 () Bool)

(assert (= bs!1832332 (and d!2154304 d!2153998)))

(assert (=> bs!1832332 (= lambda!387493 lambda!387468)))

(declare-fun bs!1832334 () Bool)

(assert (= bs!1832334 (and d!2154304 d!2153712)))

(assert (=> bs!1832334 (= lambda!387493 lambda!387436)))

(declare-fun bs!1832336 () Bool)

(assert (= bs!1832336 (and d!2154304 d!2154218)))

(assert (=> bs!1832336 (= lambda!387493 lambda!387485)))

(declare-fun bs!1832338 () Bool)

(assert (= bs!1832338 (and d!2154304 d!2153840)))

(assert (=> bs!1832338 (= lambda!387493 lambda!387454)))

(declare-fun bs!1832340 () Bool)

(assert (= bs!1832340 (and d!2154304 d!2153894)))

(assert (=> bs!1832340 (= lambda!387493 lambda!387457)))

(declare-fun bs!1832342 () Bool)

(assert (= bs!1832342 (and d!2154304 d!2153794)))

(assert (=> bs!1832342 (= lambda!387493 lambda!387451)))

(declare-fun bs!1832344 () Bool)

(assert (= bs!1832344 (and d!2154304 d!2153932)))

(assert (=> bs!1832344 (= lambda!387493 lambda!387462)))

(declare-fun bs!1832345 () Bool)

(assert (= bs!1832345 (and d!2154304 d!2153724)))

(assert (=> bs!1832345 (= lambda!387493 lambda!387439)))

(declare-fun bs!1832347 () Bool)

(assert (= bs!1832347 (and d!2154304 b!6851566)))

(assert (=> bs!1832347 (not (= lambda!387493 lambda!387348))))

(declare-fun bs!1832349 () Bool)

(assert (= bs!1832349 (and d!2154304 d!2153500)))

(assert (=> bs!1832349 (= lambda!387493 lambda!387404)))

(declare-fun bs!1832351 () Bool)

(assert (= bs!1832351 (and d!2154304 d!2153968)))

(assert (=> bs!1832351 (= lambda!387493 lambda!387467)))

(declare-fun bs!1832353 () Bool)

(assert (= bs!1832353 (and d!2154304 d!2154144)))

(assert (=> bs!1832353 (= lambda!387493 lambda!387478)))

(assert (=> bs!1832319 (= lambda!387493 lambda!387400)))

(declare-fun bs!1832356 () Bool)

(assert (= bs!1832356 (and d!2154304 d!2153792)))

(assert (=> bs!1832356 (= lambda!387493 lambda!387450)))

(declare-fun bs!1832358 () Bool)

(assert (= bs!1832358 (and d!2154304 d!2153770)))

(assert (=> bs!1832358 (= lambda!387493 lambda!387449)))

(declare-fun bs!1832360 () Bool)

(assert (= bs!1832360 (and d!2154304 d!2154008)))

(assert (=> bs!1832360 (= lambda!387493 lambda!387469)))

(declare-fun b!6854221 () Bool)

(declare-fun e!4133033 () Regex!16677)

(assert (=> b!6854221 (= e!4133033 (h!72654 (exprs!6561 (h!72655 lt!2456208))))))

(declare-fun b!6854222 () Bool)

(declare-fun e!4133032 () Bool)

(declare-fun lt!2456452 () Regex!16677)

(assert (=> b!6854222 (= e!4133032 (isConcat!1531 lt!2456452))))

(declare-fun b!6854223 () Bool)

(declare-fun e!4133031 () Regex!16677)

(assert (=> b!6854223 (= e!4133033 e!4133031)))

(declare-fun c!1276006 () Bool)

(assert (=> b!6854223 (= c!1276006 ((_ is Cons!66206) (exprs!6561 (h!72655 lt!2456208))))))

(declare-fun b!6854224 () Bool)

(declare-fun e!4133028 () Bool)

(declare-fun e!4133029 () Bool)

(assert (=> b!6854224 (= e!4133028 e!4133029)))

(declare-fun c!1276008 () Bool)

(assert (=> b!6854224 (= c!1276008 (isEmpty!38581 (exprs!6561 (h!72655 lt!2456208))))))

(declare-fun b!6854225 () Bool)

(assert (=> b!6854225 (= e!4133031 (Concat!25522 (h!72654 (exprs!6561 (h!72655 lt!2456208))) (generalisedConcat!2268 (t!380073 (exprs!6561 (h!72655 lt!2456208))))))))

(declare-fun b!6854226 () Bool)

(declare-fun e!4133030 () Bool)

(assert (=> b!6854226 (= e!4133030 (isEmpty!38581 (t!380073 (exprs!6561 (h!72655 lt!2456208)))))))

(declare-fun b!6854227 () Bool)

(assert (=> b!6854227 (= e!4133032 (= lt!2456452 (head!13734 (exprs!6561 (h!72655 lt!2456208)))))))

(declare-fun b!6854228 () Bool)

(assert (=> b!6854228 (= e!4133029 e!4133032)))

(declare-fun c!1276007 () Bool)

(assert (=> b!6854228 (= c!1276007 (isEmpty!38581 (tail!12810 (exprs!6561 (h!72655 lt!2456208)))))))

(assert (=> d!2154304 e!4133028))

(declare-fun res!2797385 () Bool)

(assert (=> d!2154304 (=> (not res!2797385) (not e!4133028))))

(assert (=> d!2154304 (= res!2797385 (validRegex!8413 lt!2456452))))

(assert (=> d!2154304 (= lt!2456452 e!4133033)))

(declare-fun c!1276009 () Bool)

(assert (=> d!2154304 (= c!1276009 e!4133030)))

(declare-fun res!2797386 () Bool)

(assert (=> d!2154304 (=> (not res!2797386) (not e!4133030))))

(assert (=> d!2154304 (= res!2797386 ((_ is Cons!66206) (exprs!6561 (h!72655 lt!2456208))))))

(assert (=> d!2154304 (forall!15858 (exprs!6561 (h!72655 lt!2456208)) lambda!387493)))

(assert (=> d!2154304 (= (generalisedConcat!2268 (exprs!6561 (h!72655 lt!2456208))) lt!2456452)))

(declare-fun b!6854229 () Bool)

(assert (=> b!6854229 (= e!4133029 (isEmptyExpr!2008 lt!2456452))))

(declare-fun b!6854230 () Bool)

(assert (=> b!6854230 (= e!4133031 EmptyExpr!16677)))

(assert (= (and d!2154304 res!2797386) b!6854226))

(assert (= (and d!2154304 c!1276009) b!6854221))

(assert (= (and d!2154304 (not c!1276009)) b!6854223))

(assert (= (and b!6854223 c!1276006) b!6854225))

(assert (= (and b!6854223 (not c!1276006)) b!6854230))

(assert (= (and d!2154304 res!2797385) b!6854224))

(assert (= (and b!6854224 c!1276008) b!6854229))

(assert (= (and b!6854224 (not c!1276008)) b!6854228))

(assert (= (and b!6854228 c!1276007) b!6854227))

(assert (= (and b!6854228 (not c!1276007)) b!6854222))

(declare-fun m!7591862 () Bool)

(assert (=> b!6854228 m!7591862))

(assert (=> b!6854228 m!7591862))

(declare-fun m!7591864 () Bool)

(assert (=> b!6854228 m!7591864))

(declare-fun m!7591868 () Bool)

(assert (=> b!6854224 m!7591868))

(declare-fun m!7591870 () Bool)

(assert (=> b!6854229 m!7591870))

(declare-fun m!7591872 () Bool)

(assert (=> b!6854222 m!7591872))

(declare-fun m!7591874 () Bool)

(assert (=> d!2154304 m!7591874))

(declare-fun m!7591876 () Bool)

(assert (=> d!2154304 m!7591876))

(declare-fun m!7591878 () Bool)

(assert (=> b!6854226 m!7591878))

(declare-fun m!7591880 () Bool)

(assert (=> b!6854225 m!7591880))

(declare-fun m!7591882 () Bool)

(assert (=> b!6854227 m!7591882))

(assert (=> b!6852958 d!2154304))

(declare-fun bs!1832368 () Bool)

(declare-fun d!2154314 () Bool)

(assert (= bs!1832368 (and d!2154314 d!2153732)))

(declare-fun lambda!387495 () Int)

(assert (=> bs!1832368 (not (= lambda!387495 lambda!387445))))

(declare-fun bs!1832369 () Bool)

(assert (= bs!1832369 (and d!2154314 d!2154130)))

(assert (=> bs!1832369 (= lambda!387495 lambda!387477)))

(declare-fun bs!1832370 () Bool)

(assert (= bs!1832370 (and d!2154314 d!2153730)))

(assert (=> bs!1832370 (not (= lambda!387495 lambda!387442))))

(declare-fun bs!1832371 () Bool)

(assert (= bs!1832371 (and d!2154314 d!2153496)))

(assert (=> bs!1832371 (not (= lambda!387495 lambda!387395))))

(declare-fun bs!1832372 () Bool)

(assert (= bs!1832372 (and d!2154314 d!2153882)))

(assert (=> bs!1832372 (not (= lambda!387495 lambda!387455))))

(declare-fun bs!1832373 () Bool)

(assert (= bs!1832373 (and d!2154314 d!2153498)))

(assert (=> bs!1832373 (not (= lambda!387495 lambda!387401))))

(declare-fun bs!1832374 () Bool)

(assert (= bs!1832374 (and d!2154314 d!2154304)))

(assert (=> bs!1832374 (= lambda!387495 lambda!387493)))

(declare-fun bs!1832375 () Bool)

(assert (= bs!1832375 (and d!2154314 d!2153918)))

(assert (=> bs!1832375 (not (= lambda!387495 lambda!387461))))

(declare-fun bs!1832376 () Bool)

(assert (= bs!1832376 (and d!2154314 d!2153748)))

(assert (=> bs!1832376 (= lambda!387495 lambda!387446)))

(declare-fun bs!1832377 () Bool)

(assert (= bs!1832377 (and d!2154314 d!2153764)))

(assert (=> bs!1832377 (= lambda!387495 lambda!387448)))

(declare-fun bs!1832378 () Bool)

(assert (= bs!1832378 (and d!2154314 d!2153758)))

(assert (=> bs!1832378 (= lambda!387495 lambda!387447)))

(declare-fun bs!1832379 () Bool)

(assert (= bs!1832379 (and d!2154314 d!2153502)))

(assert (=> bs!1832379 (= lambda!387495 lambda!387405)))

(declare-fun bs!1832380 () Bool)

(assert (= bs!1832380 (and d!2154314 d!2153902)))

(assert (=> bs!1832380 (= lambda!387495 lambda!387459)))

(declare-fun bs!1832381 () Bool)

(assert (= bs!1832381 (and d!2154314 d!2153480)))

(assert (=> bs!1832381 (= lambda!387495 lambda!387392)))

(declare-fun bs!1832382 () Bool)

(assert (= bs!1832382 (and d!2154314 d!2153998)))

(assert (=> bs!1832382 (= lambda!387495 lambda!387468)))

(declare-fun bs!1832383 () Bool)

(assert (= bs!1832383 (and d!2154314 d!2153712)))

(assert (=> bs!1832383 (= lambda!387495 lambda!387436)))

(declare-fun bs!1832384 () Bool)

(assert (= bs!1832384 (and d!2154314 d!2154218)))

(assert (=> bs!1832384 (= lambda!387495 lambda!387485)))

(declare-fun bs!1832385 () Bool)

(assert (= bs!1832385 (and d!2154314 d!2153840)))

(assert (=> bs!1832385 (= lambda!387495 lambda!387454)))

(declare-fun bs!1832386 () Bool)

(assert (= bs!1832386 (and d!2154314 d!2153894)))

(assert (=> bs!1832386 (= lambda!387495 lambda!387457)))

(declare-fun bs!1832387 () Bool)

(assert (= bs!1832387 (and d!2154314 d!2153794)))

(assert (=> bs!1832387 (= lambda!387495 lambda!387451)))

(declare-fun bs!1832388 () Bool)

(assert (= bs!1832388 (and d!2154314 d!2153932)))

(assert (=> bs!1832388 (= lambda!387495 lambda!387462)))

(declare-fun bs!1832389 () Bool)

(assert (= bs!1832389 (and d!2154314 d!2153724)))

(assert (=> bs!1832389 (= lambda!387495 lambda!387439)))

(declare-fun bs!1832390 () Bool)

(assert (= bs!1832390 (and d!2154314 b!6851566)))

(assert (=> bs!1832390 (not (= lambda!387495 lambda!387348))))

(declare-fun bs!1832391 () Bool)

(assert (= bs!1832391 (and d!2154314 d!2153500)))

(assert (=> bs!1832391 (= lambda!387495 lambda!387404)))

(declare-fun bs!1832392 () Bool)

(assert (= bs!1832392 (and d!2154314 d!2153968)))

(assert (=> bs!1832392 (= lambda!387495 lambda!387467)))

(declare-fun bs!1832393 () Bool)

(assert (= bs!1832393 (and d!2154314 d!2154144)))

(assert (=> bs!1832393 (= lambda!387495 lambda!387478)))

(assert (=> bs!1832373 (= lambda!387495 lambda!387400)))

(declare-fun bs!1832394 () Bool)

(assert (= bs!1832394 (and d!2154314 d!2153792)))

(assert (=> bs!1832394 (= lambda!387495 lambda!387450)))

(declare-fun bs!1832395 () Bool)

(assert (= bs!1832395 (and d!2154314 d!2153770)))

(assert (=> bs!1832395 (= lambda!387495 lambda!387449)))

(declare-fun bs!1832396 () Bool)

(assert (= bs!1832396 (and d!2154314 d!2154008)))

(assert (=> bs!1832396 (= lambda!387495 lambda!387469)))

(declare-fun lt!2456453 () List!66330)

(assert (=> d!2154314 (forall!15858 lt!2456453 lambda!387495)))

(declare-fun e!4133034 () List!66330)

(assert (=> d!2154314 (= lt!2456453 e!4133034)))

(declare-fun c!1276010 () Bool)

(assert (=> d!2154314 (= c!1276010 ((_ is Cons!66207) (t!380074 lt!2456208)))))

(assert (=> d!2154314 (= (unfocusZipperList!2094 (t!380074 lt!2456208)) lt!2456453)))

(declare-fun b!6854231 () Bool)

(assert (=> b!6854231 (= e!4133034 (Cons!66206 (generalisedConcat!2268 (exprs!6561 (h!72655 (t!380074 lt!2456208)))) (unfocusZipperList!2094 (t!380074 (t!380074 lt!2456208)))))))

(declare-fun b!6854232 () Bool)

(assert (=> b!6854232 (= e!4133034 Nil!66206)))

(assert (= (and d!2154314 c!1276010) b!6854231))

(assert (= (and d!2154314 (not c!1276010)) b!6854232))

(declare-fun m!7591892 () Bool)

(assert (=> d!2154314 m!7591892))

(declare-fun m!7591894 () Bool)

(assert (=> b!6854231 m!7591894))

(declare-fun m!7591896 () Bool)

(assert (=> b!6854231 m!7591896))

(assert (=> b!6852958 d!2154314))

(declare-fun b!6854257 () Bool)

(declare-fun res!2797396 () Bool)

(declare-fun e!4133052 () Bool)

(assert (=> b!6854257 (=> res!2797396 e!4133052)))

(assert (=> b!6854257 (= res!2797396 (not ((_ is Concat!25522) (h!72654 (t!380073 lt!2456210)))))))

(declare-fun e!4133053 () Bool)

(assert (=> b!6854257 (= e!4133053 e!4133052)))

(declare-fun b!6854258 () Bool)

(declare-fun res!2797397 () Bool)

(declare-fun e!4133047 () Bool)

(assert (=> b!6854258 (=> (not res!2797397) (not e!4133047))))

(declare-fun call!624449 () Bool)

(assert (=> b!6854258 (= res!2797397 call!624449)))

(assert (=> b!6854258 (= e!4133053 e!4133047)))

(declare-fun c!1276020 () Bool)

(declare-fun c!1276019 () Bool)

(declare-fun call!624450 () Bool)

(declare-fun bm!624444 () Bool)

(assert (=> bm!624444 (= call!624450 (validRegex!8413 (ite c!1276019 (reg!17006 (h!72654 (t!380073 lt!2456210))) (ite c!1276020 (regOne!33867 (h!72654 (t!380073 lt!2456210))) (regOne!33866 (h!72654 (t!380073 lt!2456210)))))))))

(declare-fun b!6854259 () Bool)

(declare-fun call!624451 () Bool)

(assert (=> b!6854259 (= e!4133047 call!624451)))

(declare-fun b!6854261 () Bool)

(declare-fun e!4133048 () Bool)

(declare-fun e!4133049 () Bool)

(assert (=> b!6854261 (= e!4133048 e!4133049)))

(assert (=> b!6854261 (= c!1276019 ((_ is Star!16677) (h!72654 (t!380073 lt!2456210))))))

(declare-fun b!6854262 () Bool)

(assert (=> b!6854262 (= e!4133049 e!4133053)))

(assert (=> b!6854262 (= c!1276020 ((_ is Union!16677) (h!72654 (t!380073 lt!2456210))))))

(declare-fun bm!624445 () Bool)

(assert (=> bm!624445 (= call!624449 call!624450)))

(declare-fun d!2154320 () Bool)

(declare-fun res!2797398 () Bool)

(assert (=> d!2154320 (=> res!2797398 e!4133048)))

(assert (=> d!2154320 (= res!2797398 ((_ is ElementMatch!16677) (h!72654 (t!380073 lt!2456210))))))

(assert (=> d!2154320 (= (validRegex!8413 (h!72654 (t!380073 lt!2456210))) e!4133048)))

(declare-fun b!6854260 () Bool)

(declare-fun e!4133050 () Bool)

(assert (=> b!6854260 (= e!4133049 e!4133050)))

(declare-fun res!2797399 () Bool)

(assert (=> b!6854260 (= res!2797399 (not (nullable!6640 (reg!17006 (h!72654 (t!380073 lt!2456210))))))))

(assert (=> b!6854260 (=> (not res!2797399) (not e!4133050))))

(declare-fun b!6854263 () Bool)

(assert (=> b!6854263 (= e!4133050 call!624450)))

(declare-fun bm!624446 () Bool)

(assert (=> bm!624446 (= call!624451 (validRegex!8413 (ite c!1276020 (regTwo!33867 (h!72654 (t!380073 lt!2456210))) (regTwo!33866 (h!72654 (t!380073 lt!2456210))))))))

(declare-fun b!6854264 () Bool)

(declare-fun e!4133051 () Bool)

(assert (=> b!6854264 (= e!4133051 call!624451)))

(declare-fun b!6854265 () Bool)

(assert (=> b!6854265 (= e!4133052 e!4133051)))

(declare-fun res!2797395 () Bool)

(assert (=> b!6854265 (=> (not res!2797395) (not e!4133051))))

(assert (=> b!6854265 (= res!2797395 call!624449)))

(assert (= (and d!2154320 (not res!2797398)) b!6854261))

(assert (= (and b!6854261 c!1276019) b!6854260))

(assert (= (and b!6854261 (not c!1276019)) b!6854262))

(assert (= (and b!6854260 res!2797399) b!6854263))

(assert (= (and b!6854262 c!1276020) b!6854258))

(assert (= (and b!6854262 (not c!1276020)) b!6854257))

(assert (= (and b!6854258 res!2797397) b!6854259))

(assert (= (and b!6854257 (not res!2797396)) b!6854265))

(assert (= (and b!6854265 res!2797395) b!6854264))

(assert (= (or b!6854259 b!6854264) bm!624446))

(assert (= (or b!6854258 b!6854265) bm!624445))

(assert (= (or b!6854263 bm!624445) bm!624444))

(declare-fun m!7591906 () Bool)

(assert (=> bm!624444 m!7591906))

(declare-fun m!7591908 () Bool)

(assert (=> b!6854260 m!7591908))

(declare-fun m!7591912 () Bool)

(assert (=> bm!624446 m!7591912))

(assert (=> bs!1831699 d!2154320))

(declare-fun d!2154326 () Bool)

(assert (=> d!2154326 (= (isEmpty!38581 (t!380073 (unfocusZipperList!2094 lt!2456208))) ((_ is Nil!66206) (t!380073 (unfocusZipperList!2094 lt!2456208))))))

(assert (=> b!6852956 d!2154326))

(assert (=> b!6852734 d!2153670))

(declare-fun d!2154330 () Bool)

(assert (=> d!2154330 (= (isEmpty!38581 (exprs!6561 lt!2456307)) ((_ is Nil!66206) (exprs!6561 lt!2456307)))))

(assert (=> b!6852891 d!2154330))

(assert (=> b!6852802 d!2154028))

(declare-fun d!2154332 () Bool)

(assert (=> d!2154332 (= (isEmptyExpr!2008 lt!2456361) ((_ is EmptyExpr!16677) lt!2456361))))

(assert (=> b!6852774 d!2154332))

(declare-fun d!2154334 () Bool)

(declare-fun res!2797400 () Bool)

(declare-fun e!4133056 () Bool)

(assert (=> d!2154334 (=> res!2797400 e!4133056)))

(assert (=> d!2154334 (= res!2797400 ((_ is Nil!66207) (t!380074 zl!343)))))

(assert (=> d!2154334 (= (forall!15857 (t!380074 zl!343) lambda!387352) e!4133056)))

(declare-fun b!6854270 () Bool)

(declare-fun e!4133057 () Bool)

(assert (=> b!6854270 (= e!4133056 e!4133057)))

(declare-fun res!2797401 () Bool)

(assert (=> b!6854270 (=> (not res!2797401) (not e!4133057))))

(assert (=> b!6854270 (= res!2797401 (dynLambda!26466 lambda!387352 (h!72655 (t!380074 zl!343))))))

(declare-fun b!6854271 () Bool)

(assert (=> b!6854271 (= e!4133057 (forall!15857 (t!380074 (t!380074 zl!343)) lambda!387352))))

(assert (= (and d!2154334 (not res!2797400)) b!6854270))

(assert (= (and b!6854270 res!2797401) b!6854271))

(declare-fun b_lambda!258849 () Bool)

(assert (=> (not b_lambda!258849) (not b!6854270)))

(declare-fun m!7591918 () Bool)

(assert (=> b!6854270 m!7591918))

(declare-fun m!7591920 () Bool)

(assert (=> b!6854271 m!7591920))

(assert (=> b!6852690 d!2154334))

(declare-fun d!2154338 () Bool)

(assert (=> d!2154338 (= (nullable!6640 (h!72654 lt!2456210)) (nullableFct!2524 (h!72654 lt!2456210)))))

(declare-fun bs!1832397 () Bool)

(assert (= bs!1832397 d!2154338))

(declare-fun m!7591922 () Bool)

(assert (=> bs!1832397 m!7591922))

(assert (=> b!6852739 d!2154338))

(declare-fun d!2154340 () Bool)

(declare-fun lt!2456456 () Bool)

(assert (=> d!2154340 (= lt!2456456 (select (content!12985 (t!380074 zl!343)) lt!2456354))))

(declare-fun e!4133066 () Bool)

(assert (=> d!2154340 (= lt!2456456 e!4133066)))

(declare-fun res!2797407 () Bool)

(assert (=> d!2154340 (=> (not res!2797407) (not e!4133066))))

(assert (=> d!2154340 (= res!2797407 ((_ is Cons!66207) (t!380074 zl!343)))))

(assert (=> d!2154340 (= (contains!20331 (t!380074 zl!343) lt!2456354) lt!2456456)))

(declare-fun b!6854281 () Bool)

(declare-fun e!4133065 () Bool)

(assert (=> b!6854281 (= e!4133066 e!4133065)))

(declare-fun res!2797408 () Bool)

(assert (=> b!6854281 (=> res!2797408 e!4133065)))

(assert (=> b!6854281 (= res!2797408 (= (h!72655 (t!380074 zl!343)) lt!2456354))))

(declare-fun b!6854282 () Bool)

(assert (=> b!6854282 (= e!4133065 (contains!20331 (t!380074 (t!380074 zl!343)) lt!2456354))))

(assert (= (and d!2154340 res!2797407) b!6854281))

(assert (= (and b!6854281 (not res!2797408)) b!6854282))

(assert (=> d!2154340 m!7590812))

(declare-fun m!7591926 () Bool)

(assert (=> d!2154340 m!7591926))

(declare-fun m!7591930 () Bool)

(assert (=> b!6854282 m!7591930))

(assert (=> b!6852682 d!2154340))

(declare-fun d!2154342 () Bool)

(assert (=> d!2154342 true))

(assert (=> d!2154342 true))

(declare-fun res!2797413 () Bool)

(assert (=> d!2154342 (= (choose!51065 (ite c!1275410 lambda!387379 lambda!387380)) res!2797413)))

(assert (=> d!2153744 d!2154342))

(declare-fun d!2154350 () Bool)

(assert (=> d!2154350 (= (nullable!6640 (reg!17006 lt!2456222)) (nullableFct!2524 (reg!17006 lt!2456222)))))

(declare-fun bs!1832398 () Bool)

(assert (= bs!1832398 d!2154350))

(declare-fun m!7591946 () Bool)

(assert (=> bs!1832398 m!7591946))

(assert (=> b!6852942 d!2154350))

(assert (=> b!6852913 d!2153894))

(declare-fun bs!1832400 () Bool)

(declare-fun d!2154354 () Bool)

(assert (= bs!1832400 (and d!2154354 d!2153732)))

(declare-fun lambda!387497 () Int)

(assert (=> bs!1832400 (not (= lambda!387497 lambda!387445))))

(declare-fun bs!1832401 () Bool)

(assert (= bs!1832401 (and d!2154354 d!2154130)))

(assert (=> bs!1832401 (= lambda!387497 lambda!387477)))

(declare-fun bs!1832403 () Bool)

(assert (= bs!1832403 (and d!2154354 d!2153730)))

(assert (=> bs!1832403 (not (= lambda!387497 lambda!387442))))

(declare-fun bs!1832405 () Bool)

(assert (= bs!1832405 (and d!2154354 d!2153496)))

(assert (=> bs!1832405 (not (= lambda!387497 lambda!387395))))

(declare-fun bs!1832407 () Bool)

(assert (= bs!1832407 (and d!2154354 d!2153882)))

(assert (=> bs!1832407 (not (= lambda!387497 lambda!387455))))

(declare-fun bs!1832409 () Bool)

(assert (= bs!1832409 (and d!2154354 d!2153498)))

(assert (=> bs!1832409 (not (= lambda!387497 lambda!387401))))

(declare-fun bs!1832411 () Bool)

(assert (= bs!1832411 (and d!2154354 d!2154304)))

(assert (=> bs!1832411 (= lambda!387497 lambda!387493)))

(declare-fun bs!1832412 () Bool)

(assert (= bs!1832412 (and d!2154354 d!2153918)))

(assert (=> bs!1832412 (not (= lambda!387497 lambda!387461))))

(declare-fun bs!1832413 () Bool)

(assert (= bs!1832413 (and d!2154354 d!2153748)))

(assert (=> bs!1832413 (= lambda!387497 lambda!387446)))

(declare-fun bs!1832415 () Bool)

(assert (= bs!1832415 (and d!2154354 d!2153764)))

(assert (=> bs!1832415 (= lambda!387497 lambda!387448)))

(declare-fun bs!1832416 () Bool)

(assert (= bs!1832416 (and d!2154354 d!2153758)))

(assert (=> bs!1832416 (= lambda!387497 lambda!387447)))

(declare-fun bs!1832417 () Bool)

(assert (= bs!1832417 (and d!2154354 d!2153502)))

(assert (=> bs!1832417 (= lambda!387497 lambda!387405)))

(declare-fun bs!1832418 () Bool)

(assert (= bs!1832418 (and d!2154354 d!2153902)))

(assert (=> bs!1832418 (= lambda!387497 lambda!387459)))

(declare-fun bs!1832419 () Bool)

(assert (= bs!1832419 (and d!2154354 d!2153480)))

(assert (=> bs!1832419 (= lambda!387497 lambda!387392)))

(declare-fun bs!1832420 () Bool)

(assert (= bs!1832420 (and d!2154354 d!2153998)))

(assert (=> bs!1832420 (= lambda!387497 lambda!387468)))

(declare-fun bs!1832421 () Bool)

(assert (= bs!1832421 (and d!2154354 d!2153712)))

(assert (=> bs!1832421 (= lambda!387497 lambda!387436)))

(declare-fun bs!1832422 () Bool)

(assert (= bs!1832422 (and d!2154354 d!2154218)))

(assert (=> bs!1832422 (= lambda!387497 lambda!387485)))

(declare-fun bs!1832423 () Bool)

(assert (= bs!1832423 (and d!2154354 d!2153840)))

(assert (=> bs!1832423 (= lambda!387497 lambda!387454)))

(declare-fun bs!1832424 () Bool)

(assert (= bs!1832424 (and d!2154354 d!2153894)))

(assert (=> bs!1832424 (= lambda!387497 lambda!387457)))

(declare-fun bs!1832425 () Bool)

(assert (= bs!1832425 (and d!2154354 d!2153794)))

(assert (=> bs!1832425 (= lambda!387497 lambda!387451)))

(declare-fun bs!1832426 () Bool)

(assert (= bs!1832426 (and d!2154354 d!2153932)))

(assert (=> bs!1832426 (= lambda!387497 lambda!387462)))

(declare-fun bs!1832427 () Bool)

(assert (= bs!1832427 (and d!2154354 d!2153724)))

(assert (=> bs!1832427 (= lambda!387497 lambda!387439)))

(declare-fun bs!1832428 () Bool)

(assert (= bs!1832428 (and d!2154354 d!2154314)))

(assert (=> bs!1832428 (= lambda!387497 lambda!387495)))

(declare-fun bs!1832429 () Bool)

(assert (= bs!1832429 (and d!2154354 b!6851566)))

(assert (=> bs!1832429 (not (= lambda!387497 lambda!387348))))

(declare-fun bs!1832430 () Bool)

(assert (= bs!1832430 (and d!2154354 d!2153500)))

(assert (=> bs!1832430 (= lambda!387497 lambda!387404)))

(declare-fun bs!1832431 () Bool)

(assert (= bs!1832431 (and d!2154354 d!2153968)))

(assert (=> bs!1832431 (= lambda!387497 lambda!387467)))

(declare-fun bs!1832432 () Bool)

(assert (= bs!1832432 (and d!2154354 d!2154144)))

(assert (=> bs!1832432 (= lambda!387497 lambda!387478)))

(assert (=> bs!1832409 (= lambda!387497 lambda!387400)))

(declare-fun bs!1832433 () Bool)

(assert (= bs!1832433 (and d!2154354 d!2153792)))

(assert (=> bs!1832433 (= lambda!387497 lambda!387450)))

(declare-fun bs!1832434 () Bool)

(assert (= bs!1832434 (and d!2154354 d!2153770)))

(assert (=> bs!1832434 (= lambda!387497 lambda!387449)))

(declare-fun bs!1832435 () Bool)

(assert (= bs!1832435 (and d!2154354 d!2154008)))

(assert (=> bs!1832435 (= lambda!387497 lambda!387469)))

(declare-fun lt!2456460 () List!66330)

(assert (=> d!2154354 (forall!15858 lt!2456460 lambda!387497)))

(declare-fun e!4133074 () List!66330)

(assert (=> d!2154354 (= lt!2456460 e!4133074)))

(declare-fun c!1276030 () Bool)

(assert (=> d!2154354 (= c!1276030 ((_ is Cons!66207) (t!380074 (t!380074 zl!343))))))

(assert (=> d!2154354 (= (unfocusZipperList!2094 (t!380074 (t!380074 zl!343))) lt!2456460)))

(declare-fun b!6854295 () Bool)

(assert (=> b!6854295 (= e!4133074 (Cons!66206 (generalisedConcat!2268 (exprs!6561 (h!72655 (t!380074 (t!380074 zl!343))))) (unfocusZipperList!2094 (t!380074 (t!380074 (t!380074 zl!343))))))))

(declare-fun b!6854296 () Bool)

(assert (=> b!6854296 (= e!4133074 Nil!66206)))

(assert (= (and d!2154354 c!1276030) b!6854295))

(assert (= (and d!2154354 (not c!1276030)) b!6854296))

(declare-fun m!7591962 () Bool)

(assert (=> d!2154354 m!7591962))

(declare-fun m!7591964 () Bool)

(assert (=> b!6854295 m!7591964))

(declare-fun m!7591966 () Bool)

(assert (=> b!6854295 m!7591966))

(assert (=> b!6852913 d!2154354))

(declare-fun b!6854312 () Bool)

(declare-fun res!2797422 () Bool)

(declare-fun e!4133091 () Bool)

(assert (=> b!6854312 (=> res!2797422 e!4133091)))

(assert (=> b!6854312 (= res!2797422 (not ((_ is Concat!25522) lt!2456361)))))

(declare-fun e!4133092 () Bool)

(assert (=> b!6854312 (= e!4133092 e!4133091)))

(declare-fun b!6854313 () Bool)

(declare-fun res!2797423 () Bool)

(declare-fun e!4133086 () Bool)

(assert (=> b!6854313 (=> (not res!2797423) (not e!4133086))))

(declare-fun call!624461 () Bool)

(assert (=> b!6854313 (= res!2797423 call!624461)))

(assert (=> b!6854313 (= e!4133092 e!4133086)))

(declare-fun bm!624456 () Bool)

(declare-fun call!624462 () Bool)

(declare-fun c!1276035 () Bool)

(declare-fun c!1276036 () Bool)

(assert (=> bm!624456 (= call!624462 (validRegex!8413 (ite c!1276035 (reg!17006 lt!2456361) (ite c!1276036 (regOne!33867 lt!2456361) (regOne!33866 lt!2456361)))))))

(declare-fun b!6854314 () Bool)

(declare-fun call!624463 () Bool)

(assert (=> b!6854314 (= e!4133086 call!624463)))

(declare-fun b!6854316 () Bool)

(declare-fun e!4133087 () Bool)

(declare-fun e!4133088 () Bool)

(assert (=> b!6854316 (= e!4133087 e!4133088)))

(assert (=> b!6854316 (= c!1276035 ((_ is Star!16677) lt!2456361))))

(declare-fun b!6854317 () Bool)

(assert (=> b!6854317 (= e!4133088 e!4133092)))

(assert (=> b!6854317 (= c!1276036 ((_ is Union!16677) lt!2456361))))

(declare-fun bm!624457 () Bool)

(assert (=> bm!624457 (= call!624461 call!624462)))

(declare-fun d!2154372 () Bool)

(declare-fun res!2797424 () Bool)

(assert (=> d!2154372 (=> res!2797424 e!4133087)))

(assert (=> d!2154372 (= res!2797424 ((_ is ElementMatch!16677) lt!2456361))))

(assert (=> d!2154372 (= (validRegex!8413 lt!2456361) e!4133087)))

(declare-fun b!6854315 () Bool)

(declare-fun e!4133089 () Bool)

(assert (=> b!6854315 (= e!4133088 e!4133089)))

(declare-fun res!2797425 () Bool)

(assert (=> b!6854315 (= res!2797425 (not (nullable!6640 (reg!17006 lt!2456361))))))

(assert (=> b!6854315 (=> (not res!2797425) (not e!4133089))))

(declare-fun b!6854318 () Bool)

(assert (=> b!6854318 (= e!4133089 call!624462)))

(declare-fun bm!624458 () Bool)

(assert (=> bm!624458 (= call!624463 (validRegex!8413 (ite c!1276036 (regTwo!33867 lt!2456361) (regTwo!33866 lt!2456361))))))

(declare-fun b!6854319 () Bool)

(declare-fun e!4133090 () Bool)

(assert (=> b!6854319 (= e!4133090 call!624463)))

(declare-fun b!6854320 () Bool)

(assert (=> b!6854320 (= e!4133091 e!4133090)))

(declare-fun res!2797421 () Bool)

(assert (=> b!6854320 (=> (not res!2797421) (not e!4133090))))

(assert (=> b!6854320 (= res!2797421 call!624461)))

(assert (= (and d!2154372 (not res!2797424)) b!6854316))

(assert (= (and b!6854316 c!1276035) b!6854315))

(assert (= (and b!6854316 (not c!1276035)) b!6854317))

(assert (= (and b!6854315 res!2797425) b!6854318))

(assert (= (and b!6854317 c!1276036) b!6854313))

(assert (= (and b!6854317 (not c!1276036)) b!6854312))

(assert (= (and b!6854313 res!2797423) b!6854314))

(assert (= (and b!6854312 (not res!2797422)) b!6854320))

(assert (= (and b!6854320 res!2797421) b!6854319))

(assert (= (or b!6854314 b!6854319) bm!624458))

(assert (= (or b!6854313 b!6854320) bm!624457))

(assert (= (or b!6854318 bm!624457) bm!624456))

(declare-fun m!7591972 () Bool)

(assert (=> bm!624456 m!7591972))

(declare-fun m!7591974 () Bool)

(assert (=> b!6854315 m!7591974))

(declare-fun m!7591976 () Bool)

(assert (=> bm!624458 m!7591976))

(assert (=> d!2153724 d!2154372))

(declare-fun d!2154376 () Bool)

(declare-fun res!2797428 () Bool)

(declare-fun e!4133099 () Bool)

(assert (=> d!2154376 (=> res!2797428 e!4133099)))

(assert (=> d!2154376 (= res!2797428 ((_ is Nil!66206) (exprs!6561 (h!72655 zl!343))))))

(assert (=> d!2154376 (= (forall!15858 (exprs!6561 (h!72655 zl!343)) lambda!387439) e!4133099)))

(declare-fun b!6854331 () Bool)

(declare-fun e!4133100 () Bool)

(assert (=> b!6854331 (= e!4133099 e!4133100)))

(declare-fun res!2797429 () Bool)

(assert (=> b!6854331 (=> (not res!2797429) (not e!4133100))))

(assert (=> b!6854331 (= res!2797429 (dynLambda!26464 lambda!387439 (h!72654 (exprs!6561 (h!72655 zl!343)))))))

(declare-fun b!6854332 () Bool)

(assert (=> b!6854332 (= e!4133100 (forall!15858 (t!380073 (exprs!6561 (h!72655 zl!343))) lambda!387439))))

(assert (= (and d!2154376 (not res!2797428)) b!6854331))

(assert (= (and b!6854331 res!2797429) b!6854332))

(declare-fun b_lambda!258851 () Bool)

(assert (=> (not b_lambda!258851) (not b!6854331)))

(declare-fun m!7591978 () Bool)

(assert (=> b!6854331 m!7591978))

(declare-fun m!7591980 () Bool)

(assert (=> b!6854332 m!7591980))

(assert (=> d!2153724 d!2154376))

(assert (=> b!6852858 d!2153670))

(declare-fun d!2154378 () Bool)

(assert (=> d!2154378 (= (head!13734 (unfocusZipperList!2094 lt!2456208)) (h!72654 (unfocusZipperList!2094 lt!2456208)))))

(assert (=> b!6852948 d!2154378))

(assert (=> bm!624161 d!2153672))

(declare-fun d!2154380 () Bool)

(declare-fun res!2797430 () Bool)

(declare-fun e!4133101 () Bool)

(assert (=> d!2154380 (=> res!2797430 e!4133101)))

(assert (=> d!2154380 (= res!2797430 ((_ is Nil!66206) lt!2456371))))

(assert (=> d!2154380 (= (forall!15858 lt!2456371 lambda!387449) e!4133101)))

(declare-fun b!6854333 () Bool)

(declare-fun e!4133102 () Bool)

(assert (=> b!6854333 (= e!4133101 e!4133102)))

(declare-fun res!2797431 () Bool)

(assert (=> b!6854333 (=> (not res!2797431) (not e!4133102))))

(assert (=> b!6854333 (= res!2797431 (dynLambda!26464 lambda!387449 (h!72654 lt!2456371)))))

(declare-fun b!6854334 () Bool)

(assert (=> b!6854334 (= e!4133102 (forall!15858 (t!380073 lt!2456371) lambda!387449))))

(assert (= (and d!2154380 (not res!2797430)) b!6854333))

(assert (= (and b!6854333 res!2797431) b!6854334))

(declare-fun b_lambda!258853 () Bool)

(assert (=> (not b_lambda!258853) (not b!6854333)))

(declare-fun m!7591982 () Bool)

(assert (=> b!6854333 m!7591982))

(declare-fun m!7591984 () Bool)

(assert (=> b!6854334 m!7591984))

(assert (=> d!2153770 d!2154380))

(declare-fun d!2154382 () Bool)

(assert (=> d!2154382 (= (isEmpty!38581 (tail!12810 (exprs!6561 lt!2456307))) ((_ is Nil!66206) (tail!12810 (exprs!6561 lt!2456307))))))

(assert (=> b!6852895 d!2154382))

(declare-fun d!2154384 () Bool)

(assert (=> d!2154384 (= (tail!12810 (exprs!6561 lt!2456307)) (t!380073 (exprs!6561 lt!2456307)))))

(assert (=> b!6852895 d!2154384))

(declare-fun b!6854335 () Bool)

(declare-fun res!2797433 () Bool)

(declare-fun e!4133108 () Bool)

(assert (=> b!6854335 (=> res!2797433 e!4133108)))

(assert (=> b!6854335 (= res!2797433 (not ((_ is Concat!25522) lt!2456378)))))

(declare-fun e!4133109 () Bool)

(assert (=> b!6854335 (= e!4133109 e!4133108)))

(declare-fun b!6854336 () Bool)

(declare-fun res!2797434 () Bool)

(declare-fun e!4133103 () Bool)

(assert (=> b!6854336 (=> (not res!2797434) (not e!4133103))))

(declare-fun call!624464 () Bool)

(assert (=> b!6854336 (= res!2797434 call!624464)))

(assert (=> b!6854336 (= e!4133109 e!4133103)))

(declare-fun bm!624459 () Bool)

(declare-fun c!1276042 () Bool)

(declare-fun call!624465 () Bool)

(declare-fun c!1276041 () Bool)

(assert (=> bm!624459 (= call!624465 (validRegex!8413 (ite c!1276041 (reg!17006 lt!2456378) (ite c!1276042 (regOne!33867 lt!2456378) (regOne!33866 lt!2456378)))))))

(declare-fun b!6854337 () Bool)

(declare-fun call!624466 () Bool)

(assert (=> b!6854337 (= e!4133103 call!624466)))

(declare-fun b!6854339 () Bool)

(declare-fun e!4133104 () Bool)

(declare-fun e!4133105 () Bool)

(assert (=> b!6854339 (= e!4133104 e!4133105)))

(assert (=> b!6854339 (= c!1276041 ((_ is Star!16677) lt!2456378))))

(declare-fun b!6854340 () Bool)

(assert (=> b!6854340 (= e!4133105 e!4133109)))

(assert (=> b!6854340 (= c!1276042 ((_ is Union!16677) lt!2456378))))

(declare-fun bm!624460 () Bool)

(assert (=> bm!624460 (= call!624464 call!624465)))

(declare-fun d!2154386 () Bool)

(declare-fun res!2797435 () Bool)

(assert (=> d!2154386 (=> res!2797435 e!4133104)))

(assert (=> d!2154386 (= res!2797435 ((_ is ElementMatch!16677) lt!2456378))))

(assert (=> d!2154386 (= (validRegex!8413 lt!2456378) e!4133104)))

(declare-fun b!6854338 () Bool)

(declare-fun e!4133106 () Bool)

(assert (=> b!6854338 (= e!4133105 e!4133106)))

(declare-fun res!2797436 () Bool)

(assert (=> b!6854338 (= res!2797436 (not (nullable!6640 (reg!17006 lt!2456378))))))

(assert (=> b!6854338 (=> (not res!2797436) (not e!4133106))))

(declare-fun b!6854341 () Bool)

(assert (=> b!6854341 (= e!4133106 call!624465)))

(declare-fun bm!624461 () Bool)

(assert (=> bm!624461 (= call!624466 (validRegex!8413 (ite c!1276042 (regTwo!33867 lt!2456378) (regTwo!33866 lt!2456378))))))

(declare-fun b!6854342 () Bool)

(declare-fun e!4133107 () Bool)

(assert (=> b!6854342 (= e!4133107 call!624466)))

(declare-fun b!6854343 () Bool)

(assert (=> b!6854343 (= e!4133108 e!4133107)))

(declare-fun res!2797432 () Bool)

(assert (=> b!6854343 (=> (not res!2797432) (not e!4133107))))

(assert (=> b!6854343 (= res!2797432 call!624464)))

(assert (= (and d!2154386 (not res!2797435)) b!6854339))

(assert (= (and b!6854339 c!1276041) b!6854338))

(assert (= (and b!6854339 (not c!1276041)) b!6854340))

(assert (= (and b!6854338 res!2797436) b!6854341))

(assert (= (and b!6854340 c!1276042) b!6854336))

(assert (= (and b!6854340 (not c!1276042)) b!6854335))

(assert (= (and b!6854336 res!2797434) b!6854337))

(assert (= (and b!6854335 (not res!2797433)) b!6854343))

(assert (= (and b!6854343 res!2797432) b!6854342))

(assert (= (or b!6854337 b!6854342) bm!624461))

(assert (= (or b!6854336 b!6854343) bm!624460))

(assert (= (or b!6854341 bm!624460) bm!624459))

(declare-fun m!7591986 () Bool)

(assert (=> bm!624459 m!7591986))

(declare-fun m!7591988 () Bool)

(assert (=> b!6854338 m!7591988))

(declare-fun m!7591990 () Bool)

(assert (=> bm!624461 m!7591990))

(assert (=> d!2153800 d!2154386))

(assert (=> d!2153800 d!2153430))

(declare-fun b!6854344 () Bool)

(declare-fun res!2797438 () Bool)

(declare-fun e!4133115 () Bool)

(assert (=> b!6854344 (=> res!2797438 e!4133115)))

(assert (=> b!6854344 (= res!2797438 (not ((_ is Concat!25522) lt!2456370)))))

(declare-fun e!4133116 () Bool)

(assert (=> b!6854344 (= e!4133116 e!4133115)))

(declare-fun b!6854345 () Bool)

(declare-fun res!2797439 () Bool)

(declare-fun e!4133110 () Bool)

(assert (=> b!6854345 (=> (not res!2797439) (not e!4133110))))

(declare-fun call!624467 () Bool)

(assert (=> b!6854345 (= res!2797439 call!624467)))

(assert (=> b!6854345 (= e!4133116 e!4133110)))

(declare-fun call!624468 () Bool)

(declare-fun c!1276043 () Bool)

(declare-fun bm!624462 () Bool)

(declare-fun c!1276044 () Bool)

(assert (=> bm!624462 (= call!624468 (validRegex!8413 (ite c!1276043 (reg!17006 lt!2456370) (ite c!1276044 (regOne!33867 lt!2456370) (regOne!33866 lt!2456370)))))))

(declare-fun b!6854346 () Bool)

(declare-fun call!624469 () Bool)

(assert (=> b!6854346 (= e!4133110 call!624469)))

(declare-fun b!6854348 () Bool)

(declare-fun e!4133111 () Bool)

(declare-fun e!4133112 () Bool)

(assert (=> b!6854348 (= e!4133111 e!4133112)))

(assert (=> b!6854348 (= c!1276043 ((_ is Star!16677) lt!2456370))))

(declare-fun b!6854349 () Bool)

(assert (=> b!6854349 (= e!4133112 e!4133116)))

(assert (=> b!6854349 (= c!1276044 ((_ is Union!16677) lt!2456370))))

(declare-fun bm!624463 () Bool)

(assert (=> bm!624463 (= call!624467 call!624468)))

(declare-fun d!2154388 () Bool)

(declare-fun res!2797440 () Bool)

(assert (=> d!2154388 (=> res!2797440 e!4133111)))

(assert (=> d!2154388 (= res!2797440 ((_ is ElementMatch!16677) lt!2456370))))

(assert (=> d!2154388 (= (validRegex!8413 lt!2456370) e!4133111)))

(declare-fun b!6854347 () Bool)

(declare-fun e!4133113 () Bool)

(assert (=> b!6854347 (= e!4133112 e!4133113)))

(declare-fun res!2797441 () Bool)

(assert (=> b!6854347 (= res!2797441 (not (nullable!6640 (reg!17006 lt!2456370))))))

(assert (=> b!6854347 (=> (not res!2797441) (not e!4133113))))

(declare-fun b!6854350 () Bool)

(assert (=> b!6854350 (= e!4133113 call!624468)))

(declare-fun bm!624464 () Bool)

(assert (=> bm!624464 (= call!624469 (validRegex!8413 (ite c!1276044 (regTwo!33867 lt!2456370) (regTwo!33866 lt!2456370))))))

(declare-fun b!6854351 () Bool)

(declare-fun e!4133114 () Bool)

(assert (=> b!6854351 (= e!4133114 call!624469)))

(declare-fun b!6854352 () Bool)

(assert (=> b!6854352 (= e!4133115 e!4133114)))

(declare-fun res!2797437 () Bool)

(assert (=> b!6854352 (=> (not res!2797437) (not e!4133114))))

(assert (=> b!6854352 (= res!2797437 call!624467)))

(assert (= (and d!2154388 (not res!2797440)) b!6854348))

(assert (= (and b!6854348 c!1276043) b!6854347))

(assert (= (and b!6854348 (not c!1276043)) b!6854349))

(assert (= (and b!6854347 res!2797441) b!6854350))

(assert (= (and b!6854349 c!1276044) b!6854345))

(assert (= (and b!6854349 (not c!1276044)) b!6854344))

(assert (= (and b!6854345 res!2797439) b!6854346))

(assert (= (and b!6854344 (not res!2797438)) b!6854352))

(assert (= (and b!6854352 res!2797437) b!6854351))

(assert (= (or b!6854346 b!6854351) bm!624464))

(assert (= (or b!6854345 b!6854352) bm!624463))

(assert (= (or b!6854350 bm!624463) bm!624462))

(declare-fun m!7592010 () Bool)

(assert (=> bm!624462 m!7592010))

(declare-fun m!7592012 () Bool)

(assert (=> b!6854347 m!7592012))

(declare-fun m!7592014 () Bool)

(assert (=> bm!624464 m!7592014))

(assert (=> d!2153764 d!2154388))

(declare-fun d!2154392 () Bool)

(declare-fun res!2797442 () Bool)

(declare-fun e!4133121 () Bool)

(assert (=> d!2154392 (=> res!2797442 e!4133121)))

(assert (=> d!2154392 (= res!2797442 ((_ is Nil!66206) (exprs!6561 lt!2456307)))))

(assert (=> d!2154392 (= (forall!15858 (exprs!6561 lt!2456307) lambda!387448) e!4133121)))

(declare-fun b!6854361 () Bool)

(declare-fun e!4133122 () Bool)

(assert (=> b!6854361 (= e!4133121 e!4133122)))

(declare-fun res!2797443 () Bool)

(assert (=> b!6854361 (=> (not res!2797443) (not e!4133122))))

(assert (=> b!6854361 (= res!2797443 (dynLambda!26464 lambda!387448 (h!72654 (exprs!6561 lt!2456307))))))

(declare-fun b!6854362 () Bool)

(assert (=> b!6854362 (= e!4133122 (forall!15858 (t!380073 (exprs!6561 lt!2456307)) lambda!387448))))

(assert (= (and d!2154392 (not res!2797442)) b!6854361))

(assert (= (and b!6854361 res!2797443) b!6854362))

(declare-fun b_lambda!258855 () Bool)

(assert (=> (not b_lambda!258855) (not b!6854361)))

(declare-fun m!7592016 () Bool)

(assert (=> b!6854361 m!7592016))

(declare-fun m!7592018 () Bool)

(assert (=> b!6854362 m!7592018))

(assert (=> d!2153764 d!2154392))

(assert (=> b!6852974 d!2153936))

(assert (=> b!6852974 d!2153940))

(declare-fun b!6854366 () Bool)

(declare-fun e!4133124 () Bool)

(declare-fun tp!1878540 () Bool)

(declare-fun tp!1878536 () Bool)

(assert (=> b!6854366 (= e!4133124 (and tp!1878540 tp!1878536))))

(assert (=> b!6853037 (= tp!1878414 e!4133124)))

(declare-fun b!6854365 () Bool)

(assert (=> b!6854365 (= e!4133124 tp_is_empty!42607)))

(declare-fun b!6854367 () Bool)

(declare-fun tp!1878537 () Bool)

(assert (=> b!6854367 (= e!4133124 tp!1878537)))

(declare-fun b!6854368 () Bool)

(declare-fun tp!1878538 () Bool)

(declare-fun tp!1878539 () Bool)

(assert (=> b!6854368 (= e!4133124 (and tp!1878538 tp!1878539))))

(assert (= (and b!6853037 ((_ is ElementMatch!16677) (regOne!33867 (regOne!33866 (regTwo!33867 r!7292))))) b!6854365))

(assert (= (and b!6853037 ((_ is Concat!25522) (regOne!33867 (regOne!33866 (regTwo!33867 r!7292))))) b!6854366))

(assert (= (and b!6853037 ((_ is Star!16677) (regOne!33867 (regOne!33866 (regTwo!33867 r!7292))))) b!6854367))

(assert (= (and b!6853037 ((_ is Union!16677) (regOne!33867 (regOne!33866 (regTwo!33867 r!7292))))) b!6854368))

(declare-fun b!6854380 () Bool)

(declare-fun e!4133130 () Bool)

(declare-fun tp!1878545 () Bool)

(declare-fun tp!1878541 () Bool)

(assert (=> b!6854380 (= e!4133130 (and tp!1878545 tp!1878541))))

(assert (=> b!6853037 (= tp!1878415 e!4133130)))

(declare-fun b!6854379 () Bool)

(assert (=> b!6854379 (= e!4133130 tp_is_empty!42607)))

(declare-fun b!6854381 () Bool)

(declare-fun tp!1878542 () Bool)

(assert (=> b!6854381 (= e!4133130 tp!1878542)))

(declare-fun b!6854382 () Bool)

(declare-fun tp!1878543 () Bool)

(declare-fun tp!1878544 () Bool)

(assert (=> b!6854382 (= e!4133130 (and tp!1878543 tp!1878544))))

(assert (= (and b!6853037 ((_ is ElementMatch!16677) (regTwo!33867 (regOne!33866 (regTwo!33867 r!7292))))) b!6854379))

(assert (= (and b!6853037 ((_ is Concat!25522) (regTwo!33867 (regOne!33866 (regTwo!33867 r!7292))))) b!6854380))

(assert (= (and b!6853037 ((_ is Star!16677) (regTwo!33867 (regOne!33866 (regTwo!33867 r!7292))))) b!6854381))

(assert (= (and b!6853037 ((_ is Union!16677) (regTwo!33867 (regOne!33866 (regTwo!33867 r!7292))))) b!6854382))

(declare-fun condSetEmpty!47106 () Bool)

(assert (=> setNonEmpty!47105 (= condSetEmpty!47106 (= setRest!47105 ((as const (Array Context!12122 Bool)) false)))))

(declare-fun setRes!47106 () Bool)

(assert (=> setNonEmpty!47105 (= tp!1878517 setRes!47106)))

(declare-fun setIsEmpty!47106 () Bool)

(assert (=> setIsEmpty!47106 setRes!47106))

(declare-fun setNonEmpty!47106 () Bool)

(declare-fun tp!1878546 () Bool)

(declare-fun e!4133131 () Bool)

(declare-fun setElem!47106 () Context!12122)

(assert (=> setNonEmpty!47106 (= setRes!47106 (and tp!1878546 (inv!84939 setElem!47106) e!4133131))))

(declare-fun setRest!47106 () (InoxSet Context!12122))

(assert (=> setNonEmpty!47106 (= setRest!47105 ((_ map or) (store ((as const (Array Context!12122 Bool)) false) setElem!47106 true) setRest!47106))))

(declare-fun b!6854383 () Bool)

(declare-fun tp!1878547 () Bool)

(assert (=> b!6854383 (= e!4133131 tp!1878547)))

(assert (= (and setNonEmpty!47105 condSetEmpty!47106) setIsEmpty!47106))

(assert (= (and setNonEmpty!47105 (not condSetEmpty!47106)) setNonEmpty!47106))

(assert (= setNonEmpty!47106 b!6854383))

(declare-fun m!7592028 () Bool)

(assert (=> setNonEmpty!47106 m!7592028))

(declare-fun b!6854384 () Bool)

(declare-fun e!4133132 () Bool)

(declare-fun tp!1878548 () Bool)

(declare-fun tp!1878549 () Bool)

(assert (=> b!6854384 (= e!4133132 (and tp!1878548 tp!1878549))))

(assert (=> b!6852937 (= tp!1878387 e!4133132)))

(assert (= (and b!6852937 ((_ is Cons!66206) (exprs!6561 (h!72655 res!2796871)))) b!6854384))

(declare-fun b!6854386 () Bool)

(declare-fun e!4133133 () Bool)

(declare-fun tp!1878554 () Bool)

(declare-fun tp!1878550 () Bool)

(assert (=> b!6854386 (= e!4133133 (and tp!1878554 tp!1878550))))

(assert (=> b!6853111 (= tp!1878511 e!4133133)))

(declare-fun b!6854385 () Bool)

(assert (=> b!6854385 (= e!4133133 tp_is_empty!42607)))

(declare-fun b!6854387 () Bool)

(declare-fun tp!1878551 () Bool)

(assert (=> b!6854387 (= e!4133133 tp!1878551)))

(declare-fun b!6854388 () Bool)

(declare-fun tp!1878552 () Bool)

(declare-fun tp!1878553 () Bool)

(assert (=> b!6854388 (= e!4133133 (and tp!1878552 tp!1878553))))

(assert (= (and b!6853111 ((_ is ElementMatch!16677) (regOne!33866 (regOne!33866 (regTwo!33866 r!7292))))) b!6854385))

(assert (= (and b!6853111 ((_ is Concat!25522) (regOne!33866 (regOne!33866 (regTwo!33866 r!7292))))) b!6854386))

(assert (= (and b!6853111 ((_ is Star!16677) (regOne!33866 (regOne!33866 (regTwo!33866 r!7292))))) b!6854387))

(assert (= (and b!6853111 ((_ is Union!16677) (regOne!33866 (regOne!33866 (regTwo!33866 r!7292))))) b!6854388))

(declare-fun b!6854390 () Bool)

(declare-fun e!4133134 () Bool)

(declare-fun tp!1878559 () Bool)

(declare-fun tp!1878555 () Bool)

(assert (=> b!6854390 (= e!4133134 (and tp!1878559 tp!1878555))))

(assert (=> b!6853111 (= tp!1878507 e!4133134)))

(declare-fun b!6854389 () Bool)

(assert (=> b!6854389 (= e!4133134 tp_is_empty!42607)))

(declare-fun b!6854391 () Bool)

(declare-fun tp!1878556 () Bool)

(assert (=> b!6854391 (= e!4133134 tp!1878556)))

(declare-fun b!6854392 () Bool)

(declare-fun tp!1878557 () Bool)

(declare-fun tp!1878558 () Bool)

(assert (=> b!6854392 (= e!4133134 (and tp!1878557 tp!1878558))))

(assert (= (and b!6853111 ((_ is ElementMatch!16677) (regTwo!33866 (regOne!33866 (regTwo!33866 r!7292))))) b!6854389))

(assert (= (and b!6853111 ((_ is Concat!25522) (regTwo!33866 (regOne!33866 (regTwo!33866 r!7292))))) b!6854390))

(assert (= (and b!6853111 ((_ is Star!16677) (regTwo!33866 (regOne!33866 (regTwo!33866 r!7292))))) b!6854391))

(assert (= (and b!6853111 ((_ is Union!16677) (regTwo!33866 (regOne!33866 (regTwo!33866 r!7292))))) b!6854392))

(declare-fun b!6854394 () Bool)

(declare-fun e!4133135 () Bool)

(declare-fun tp!1878564 () Bool)

(declare-fun tp!1878560 () Bool)

(assert (=> b!6854394 (= e!4133135 (and tp!1878564 tp!1878560))))

(assert (=> b!6853104 (= tp!1878498 e!4133135)))

(declare-fun b!6854393 () Bool)

(assert (=> b!6854393 (= e!4133135 tp_is_empty!42607)))

(declare-fun b!6854395 () Bool)

(declare-fun tp!1878561 () Bool)

(assert (=> b!6854395 (= e!4133135 tp!1878561)))

(declare-fun b!6854396 () Bool)

(declare-fun tp!1878562 () Bool)

(declare-fun tp!1878563 () Bool)

(assert (=> b!6854396 (= e!4133135 (and tp!1878562 tp!1878563))))

(assert (= (and b!6853104 ((_ is ElementMatch!16677) (regOne!33867 (regTwo!33867 (regOne!33866 r!7292))))) b!6854393))

(assert (= (and b!6853104 ((_ is Concat!25522) (regOne!33867 (regTwo!33867 (regOne!33866 r!7292))))) b!6854394))

(assert (= (and b!6853104 ((_ is Star!16677) (regOne!33867 (regTwo!33867 (regOne!33866 r!7292))))) b!6854395))

(assert (= (and b!6853104 ((_ is Union!16677) (regOne!33867 (regTwo!33867 (regOne!33866 r!7292))))) b!6854396))

(declare-fun b!6854408 () Bool)

(declare-fun e!4133141 () Bool)

(declare-fun tp!1878569 () Bool)

(declare-fun tp!1878565 () Bool)

(assert (=> b!6854408 (= e!4133141 (and tp!1878569 tp!1878565))))

(assert (=> b!6853104 (= tp!1878499 e!4133141)))

(declare-fun b!6854407 () Bool)

(assert (=> b!6854407 (= e!4133141 tp_is_empty!42607)))

(declare-fun b!6854409 () Bool)

(declare-fun tp!1878566 () Bool)

(assert (=> b!6854409 (= e!4133141 tp!1878566)))

(declare-fun b!6854410 () Bool)

(declare-fun tp!1878567 () Bool)

(declare-fun tp!1878568 () Bool)

(assert (=> b!6854410 (= e!4133141 (and tp!1878567 tp!1878568))))

(assert (= (and b!6853104 ((_ is ElementMatch!16677) (regTwo!33867 (regTwo!33867 (regOne!33866 r!7292))))) b!6854407))

(assert (= (and b!6853104 ((_ is Concat!25522) (regTwo!33867 (regTwo!33867 (regOne!33866 r!7292))))) b!6854408))

(assert (= (and b!6853104 ((_ is Star!16677) (regTwo!33867 (regTwo!33867 (regOne!33866 r!7292))))) b!6854409))

(assert (= (and b!6853104 ((_ is Union!16677) (regTwo!33867 (regTwo!33867 (regOne!33866 r!7292))))) b!6854410))

(declare-fun b!6854412 () Bool)

(declare-fun e!4133142 () Bool)

(declare-fun tp!1878574 () Bool)

(declare-fun tp!1878570 () Bool)

(assert (=> b!6854412 (= e!4133142 (and tp!1878574 tp!1878570))))

(assert (=> b!6853095 (= tp!1878487 e!4133142)))

(declare-fun b!6854411 () Bool)

(assert (=> b!6854411 (= e!4133142 tp_is_empty!42607)))

(declare-fun b!6854413 () Bool)

(declare-fun tp!1878571 () Bool)

(assert (=> b!6854413 (= e!4133142 tp!1878571)))

(declare-fun b!6854414 () Bool)

(declare-fun tp!1878572 () Bool)

(declare-fun tp!1878573 () Bool)

(assert (=> b!6854414 (= e!4133142 (and tp!1878572 tp!1878573))))

(assert (= (and b!6853095 ((_ is ElementMatch!16677) (reg!17006 (regTwo!33866 (regOne!33867 r!7292))))) b!6854411))

(assert (= (and b!6853095 ((_ is Concat!25522) (reg!17006 (regTwo!33866 (regOne!33867 r!7292))))) b!6854412))

(assert (= (and b!6853095 ((_ is Star!16677) (reg!17006 (regTwo!33866 (regOne!33867 r!7292))))) b!6854413))

(assert (= (and b!6853095 ((_ is Union!16677) (reg!17006 (regTwo!33866 (regOne!33867 r!7292))))) b!6854414))

(declare-fun b!6854416 () Bool)

(declare-fun e!4133143 () Bool)

(declare-fun tp!1878579 () Bool)

(declare-fun tp!1878575 () Bool)

(assert (=> b!6854416 (= e!4133143 (and tp!1878579 tp!1878575))))

(assert (=> b!6853086 (= tp!1878480 e!4133143)))

(declare-fun b!6854415 () Bool)

(assert (=> b!6854415 (= e!4133143 tp_is_empty!42607)))

(declare-fun b!6854417 () Bool)

(declare-fun tp!1878576 () Bool)

(assert (=> b!6854417 (= e!4133143 tp!1878576)))

(declare-fun b!6854418 () Bool)

(declare-fun tp!1878577 () Bool)

(declare-fun tp!1878578 () Bool)

(assert (=> b!6854418 (= e!4133143 (and tp!1878577 tp!1878578))))

(assert (= (and b!6853086 ((_ is ElementMatch!16677) (regOne!33866 (reg!17006 (reg!17006 r!7292))))) b!6854415))

(assert (= (and b!6853086 ((_ is Concat!25522) (regOne!33866 (reg!17006 (reg!17006 r!7292))))) b!6854416))

(assert (= (and b!6853086 ((_ is Star!16677) (regOne!33866 (reg!17006 (reg!17006 r!7292))))) b!6854417))

(assert (= (and b!6853086 ((_ is Union!16677) (regOne!33866 (reg!17006 (reg!17006 r!7292))))) b!6854418))

(declare-fun b!6854420 () Bool)

(declare-fun e!4133144 () Bool)

(declare-fun tp!1878584 () Bool)

(declare-fun tp!1878580 () Bool)

(assert (=> b!6854420 (= e!4133144 (and tp!1878584 tp!1878580))))

(assert (=> b!6853086 (= tp!1878476 e!4133144)))

(declare-fun b!6854419 () Bool)

(assert (=> b!6854419 (= e!4133144 tp_is_empty!42607)))

(declare-fun b!6854421 () Bool)

(declare-fun tp!1878581 () Bool)

(assert (=> b!6854421 (= e!4133144 tp!1878581)))

(declare-fun b!6854422 () Bool)

(declare-fun tp!1878582 () Bool)

(declare-fun tp!1878583 () Bool)

(assert (=> b!6854422 (= e!4133144 (and tp!1878582 tp!1878583))))

(assert (= (and b!6853086 ((_ is ElementMatch!16677) (regTwo!33866 (reg!17006 (reg!17006 r!7292))))) b!6854419))

(assert (= (and b!6853086 ((_ is Concat!25522) (regTwo!33866 (reg!17006 (reg!17006 r!7292))))) b!6854420))

(assert (= (and b!6853086 ((_ is Star!16677) (regTwo!33866 (reg!17006 (reg!17006 r!7292))))) b!6854421))

(assert (= (and b!6853086 ((_ is Union!16677) (regTwo!33866 (reg!17006 (reg!17006 r!7292))))) b!6854422))

(declare-fun b!6854424 () Bool)

(declare-fun e!4133145 () Bool)

(declare-fun tp!1878589 () Bool)

(declare-fun tp!1878585 () Bool)

(assert (=> b!6854424 (= e!4133145 (and tp!1878589 tp!1878585))))

(assert (=> b!6853030 (= tp!1878404 e!4133145)))

(declare-fun b!6854423 () Bool)

(assert (=> b!6854423 (= e!4133145 tp_is_empty!42607)))

(declare-fun b!6854425 () Bool)

(declare-fun tp!1878586 () Bool)

(assert (=> b!6854425 (= e!4133145 tp!1878586)))

(declare-fun b!6854426 () Bool)

(declare-fun tp!1878587 () Bool)

(declare-fun tp!1878588 () Bool)

(assert (=> b!6854426 (= e!4133145 (and tp!1878587 tp!1878588))))

(assert (= (and b!6853030 ((_ is ElementMatch!16677) (reg!17006 (h!72654 (exprs!6561 setElem!47097))))) b!6854423))

(assert (= (and b!6853030 ((_ is Concat!25522) (reg!17006 (h!72654 (exprs!6561 setElem!47097))))) b!6854424))

(assert (= (and b!6853030 ((_ is Star!16677) (reg!17006 (h!72654 (exprs!6561 setElem!47097))))) b!6854425))

(assert (= (and b!6853030 ((_ is Union!16677) (reg!17006 (h!72654 (exprs!6561 setElem!47097))))) b!6854426))

(declare-fun b!6854428 () Bool)

(declare-fun e!4133146 () Bool)

(declare-fun tp!1878594 () Bool)

(declare-fun tp!1878590 () Bool)

(assert (=> b!6854428 (= e!4133146 (and tp!1878594 tp!1878590))))

(assert (=> b!6853050 (= tp!1878435 e!4133146)))

(declare-fun b!6854427 () Bool)

(assert (=> b!6854427 (= e!4133146 tp_is_empty!42607)))

(declare-fun b!6854429 () Bool)

(declare-fun tp!1878591 () Bool)

(assert (=> b!6854429 (= e!4133146 tp!1878591)))

(declare-fun b!6854430 () Bool)

(declare-fun tp!1878592 () Bool)

(declare-fun tp!1878593 () Bool)

(assert (=> b!6854430 (= e!4133146 (and tp!1878592 tp!1878593))))

(assert (= (and b!6853050 ((_ is ElementMatch!16677) (regOne!33866 (reg!17006 (regTwo!33866 r!7292))))) b!6854427))

(assert (= (and b!6853050 ((_ is Concat!25522) (regOne!33866 (reg!17006 (regTwo!33866 r!7292))))) b!6854428))

(assert (= (and b!6853050 ((_ is Star!16677) (regOne!33866 (reg!17006 (regTwo!33866 r!7292))))) b!6854429))

(assert (= (and b!6853050 ((_ is Union!16677) (regOne!33866 (reg!17006 (regTwo!33866 r!7292))))) b!6854430))

(declare-fun b!6854439 () Bool)

(declare-fun e!4133153 () Bool)

(declare-fun tp!1878599 () Bool)

(declare-fun tp!1878595 () Bool)

(assert (=> b!6854439 (= e!4133153 (and tp!1878599 tp!1878595))))

(assert (=> b!6853050 (= tp!1878431 e!4133153)))

(declare-fun b!6854438 () Bool)

(assert (=> b!6854438 (= e!4133153 tp_is_empty!42607)))

(declare-fun b!6854440 () Bool)

(declare-fun tp!1878596 () Bool)

(assert (=> b!6854440 (= e!4133153 tp!1878596)))

(declare-fun b!6854441 () Bool)

(declare-fun tp!1878597 () Bool)

(declare-fun tp!1878598 () Bool)

(assert (=> b!6854441 (= e!4133153 (and tp!1878597 tp!1878598))))

(assert (= (and b!6853050 ((_ is ElementMatch!16677) (regTwo!33866 (reg!17006 (regTwo!33866 r!7292))))) b!6854438))

(assert (= (and b!6853050 ((_ is Concat!25522) (regTwo!33866 (reg!17006 (regTwo!33866 r!7292))))) b!6854439))

(assert (= (and b!6853050 ((_ is Star!16677) (regTwo!33866 (reg!17006 (regTwo!33866 r!7292))))) b!6854440))

(assert (= (and b!6853050 ((_ is Union!16677) (regTwo!33866 (reg!17006 (regTwo!33866 r!7292))))) b!6854441))

(declare-fun b!6854443 () Bool)

(declare-fun e!4133154 () Bool)

(declare-fun tp!1878604 () Bool)

(declare-fun tp!1878600 () Bool)

(assert (=> b!6854443 (= e!4133154 (and tp!1878604 tp!1878600))))

(assert (=> b!6853035 (= tp!1878416 e!4133154)))

(declare-fun b!6854442 () Bool)

(assert (=> b!6854442 (= e!4133154 tp_is_empty!42607)))

(declare-fun b!6854444 () Bool)

(declare-fun tp!1878601 () Bool)

(assert (=> b!6854444 (= e!4133154 tp!1878601)))

(declare-fun b!6854445 () Bool)

(declare-fun tp!1878602 () Bool)

(declare-fun tp!1878603 () Bool)

(assert (=> b!6854445 (= e!4133154 (and tp!1878602 tp!1878603))))

(assert (= (and b!6853035 ((_ is ElementMatch!16677) (regOne!33866 (regOne!33866 (regTwo!33867 r!7292))))) b!6854442))

(assert (= (and b!6853035 ((_ is Concat!25522) (regOne!33866 (regOne!33866 (regTwo!33867 r!7292))))) b!6854443))

(assert (= (and b!6853035 ((_ is Star!16677) (regOne!33866 (regOne!33866 (regTwo!33867 r!7292))))) b!6854444))

(assert (= (and b!6853035 ((_ is Union!16677) (regOne!33866 (regOne!33866 (regTwo!33867 r!7292))))) b!6854445))

(declare-fun b!6854447 () Bool)

(declare-fun e!4133155 () Bool)

(declare-fun tp!1878609 () Bool)

(declare-fun tp!1878605 () Bool)

(assert (=> b!6854447 (= e!4133155 (and tp!1878609 tp!1878605))))

(assert (=> b!6853035 (= tp!1878412 e!4133155)))

(declare-fun b!6854446 () Bool)

(assert (=> b!6854446 (= e!4133155 tp_is_empty!42607)))

(declare-fun b!6854448 () Bool)

(declare-fun tp!1878606 () Bool)

(assert (=> b!6854448 (= e!4133155 tp!1878606)))

(declare-fun b!6854449 () Bool)

(declare-fun tp!1878607 () Bool)

(declare-fun tp!1878608 () Bool)

(assert (=> b!6854449 (= e!4133155 (and tp!1878607 tp!1878608))))

(assert (= (and b!6853035 ((_ is ElementMatch!16677) (regTwo!33866 (regOne!33866 (regTwo!33867 r!7292))))) b!6854446))

(assert (= (and b!6853035 ((_ is Concat!25522) (regTwo!33866 (regOne!33866 (regTwo!33867 r!7292))))) b!6854447))

(assert (= (and b!6853035 ((_ is Star!16677) (regTwo!33866 (regOne!33866 (regTwo!33867 r!7292))))) b!6854448))

(assert (= (and b!6853035 ((_ is Union!16677) (regTwo!33866 (regOne!33866 (regTwo!33867 r!7292))))) b!6854449))

(declare-fun b!6854453 () Bool)

(declare-fun e!4133158 () Bool)

(declare-fun tp!1878614 () Bool)

(declare-fun tp!1878610 () Bool)

(assert (=> b!6854453 (= e!4133158 (and tp!1878614 tp!1878610))))

(assert (=> b!6853052 (= tp!1878433 e!4133158)))

(declare-fun b!6854452 () Bool)

(assert (=> b!6854452 (= e!4133158 tp_is_empty!42607)))

(declare-fun b!6854454 () Bool)

(declare-fun tp!1878611 () Bool)

(assert (=> b!6854454 (= e!4133158 tp!1878611)))

(declare-fun b!6854455 () Bool)

(declare-fun tp!1878612 () Bool)

(declare-fun tp!1878613 () Bool)

(assert (=> b!6854455 (= e!4133158 (and tp!1878612 tp!1878613))))

(assert (= (and b!6853052 ((_ is ElementMatch!16677) (regOne!33867 (reg!17006 (regTwo!33866 r!7292))))) b!6854452))

(assert (= (and b!6853052 ((_ is Concat!25522) (regOne!33867 (reg!17006 (regTwo!33866 r!7292))))) b!6854453))

(assert (= (and b!6853052 ((_ is Star!16677) (regOne!33867 (reg!17006 (regTwo!33866 r!7292))))) b!6854454))

(assert (= (and b!6853052 ((_ is Union!16677) (regOne!33867 (reg!17006 (regTwo!33866 r!7292))))) b!6854455))

(declare-fun b!6854457 () Bool)

(declare-fun e!4133159 () Bool)

(declare-fun tp!1878619 () Bool)

(declare-fun tp!1878615 () Bool)

(assert (=> b!6854457 (= e!4133159 (and tp!1878619 tp!1878615))))

(assert (=> b!6853052 (= tp!1878434 e!4133159)))

(declare-fun b!6854456 () Bool)

(assert (=> b!6854456 (= e!4133159 tp_is_empty!42607)))

(declare-fun b!6854458 () Bool)

(declare-fun tp!1878616 () Bool)

(assert (=> b!6854458 (= e!4133159 tp!1878616)))

(declare-fun b!6854459 () Bool)

(declare-fun tp!1878617 () Bool)

(declare-fun tp!1878618 () Bool)

(assert (=> b!6854459 (= e!4133159 (and tp!1878617 tp!1878618))))

(assert (= (and b!6853052 ((_ is ElementMatch!16677) (regTwo!33867 (reg!17006 (regTwo!33866 r!7292))))) b!6854456))

(assert (= (and b!6853052 ((_ is Concat!25522) (regTwo!33867 (reg!17006 (regTwo!33866 r!7292))))) b!6854457))

(assert (= (and b!6853052 ((_ is Star!16677) (regTwo!33867 (reg!17006 (regTwo!33866 r!7292))))) b!6854458))

(assert (= (and b!6853052 ((_ is Union!16677) (regTwo!33867 (reg!17006 (regTwo!33866 r!7292))))) b!6854459))

(declare-fun b!6854461 () Bool)

(declare-fun e!4133160 () Bool)

(declare-fun tp!1878624 () Bool)

(declare-fun tp!1878620 () Bool)

(assert (=> b!6854461 (= e!4133160 (and tp!1878624 tp!1878620))))

(assert (=> b!6853102 (= tp!1878500 e!4133160)))

(declare-fun b!6854460 () Bool)

(assert (=> b!6854460 (= e!4133160 tp_is_empty!42607)))

(declare-fun b!6854462 () Bool)

(declare-fun tp!1878621 () Bool)

(assert (=> b!6854462 (= e!4133160 tp!1878621)))

(declare-fun b!6854463 () Bool)

(declare-fun tp!1878622 () Bool)

(declare-fun tp!1878623 () Bool)

(assert (=> b!6854463 (= e!4133160 (and tp!1878622 tp!1878623))))

(assert (= (and b!6853102 ((_ is ElementMatch!16677) (regOne!33866 (regTwo!33867 (regOne!33866 r!7292))))) b!6854460))

(assert (= (and b!6853102 ((_ is Concat!25522) (regOne!33866 (regTwo!33867 (regOne!33866 r!7292))))) b!6854461))

(assert (= (and b!6853102 ((_ is Star!16677) (regOne!33866 (regTwo!33867 (regOne!33866 r!7292))))) b!6854462))

(assert (= (and b!6853102 ((_ is Union!16677) (regOne!33866 (regTwo!33867 (regOne!33866 r!7292))))) b!6854463))

(declare-fun b!6854465 () Bool)

(declare-fun e!4133161 () Bool)

(declare-fun tp!1878629 () Bool)

(declare-fun tp!1878625 () Bool)

(assert (=> b!6854465 (= e!4133161 (and tp!1878629 tp!1878625))))

(assert (=> b!6853102 (= tp!1878496 e!4133161)))

(declare-fun b!6854464 () Bool)

(assert (=> b!6854464 (= e!4133161 tp_is_empty!42607)))

(declare-fun b!6854466 () Bool)

(declare-fun tp!1878626 () Bool)

(assert (=> b!6854466 (= e!4133161 tp!1878626)))

(declare-fun b!6854467 () Bool)

(declare-fun tp!1878627 () Bool)

(declare-fun tp!1878628 () Bool)

(assert (=> b!6854467 (= e!4133161 (and tp!1878627 tp!1878628))))

(assert (= (and b!6853102 ((_ is ElementMatch!16677) (regTwo!33866 (regTwo!33867 (regOne!33866 r!7292))))) b!6854464))

(assert (= (and b!6853102 ((_ is Concat!25522) (regTwo!33866 (regTwo!33867 (regOne!33866 r!7292))))) b!6854465))

(assert (= (and b!6853102 ((_ is Star!16677) (regTwo!33866 (regTwo!33867 (regOne!33866 r!7292))))) b!6854466))

(assert (= (and b!6853102 ((_ is Union!16677) (regTwo!33866 (regTwo!33867 (regOne!33866 r!7292))))) b!6854467))

(declare-fun b!6854469 () Bool)

(declare-fun e!4133162 () Bool)

(declare-fun tp!1878634 () Bool)

(declare-fun tp!1878630 () Bool)

(assert (=> b!6854469 (= e!4133162 (and tp!1878634 tp!1878630))))

(assert (=> b!6853046 (= tp!1878425 e!4133162)))

(declare-fun b!6854468 () Bool)

(assert (=> b!6854468 (= e!4133162 tp_is_empty!42607)))

(declare-fun b!6854470 () Bool)

(declare-fun tp!1878631 () Bool)

(assert (=> b!6854470 (= e!4133162 tp!1878631)))

(declare-fun b!6854471 () Bool)

(declare-fun tp!1878632 () Bool)

(declare-fun tp!1878633 () Bool)

(assert (=> b!6854471 (= e!4133162 (and tp!1878632 tp!1878633))))

(assert (= (and b!6853046 ((_ is ElementMatch!16677) (reg!17006 (h!72654 (exprs!6561 (h!72655 zl!343)))))) b!6854468))

(assert (= (and b!6853046 ((_ is Concat!25522) (reg!17006 (h!72654 (exprs!6561 (h!72655 zl!343)))))) b!6854469))

(assert (= (and b!6853046 ((_ is Star!16677) (reg!17006 (h!72654 (exprs!6561 (h!72655 zl!343)))))) b!6854470))

(assert (= (and b!6853046 ((_ is Union!16677) (reg!17006 (h!72654 (exprs!6561 (h!72655 zl!343)))))) b!6854471))

(declare-fun b!6854473 () Bool)

(declare-fun e!4133163 () Bool)

(declare-fun tp!1878639 () Bool)

(declare-fun tp!1878635 () Bool)

(assert (=> b!6854473 (= e!4133163 (and tp!1878639 tp!1878635))))

(assert (=> b!6853127 (= tp!1878528 e!4133163)))

(declare-fun b!6854472 () Bool)

(assert (=> b!6854472 (= e!4133163 tp_is_empty!42607)))

(declare-fun b!6854474 () Bool)

(declare-fun tp!1878636 () Bool)

(assert (=> b!6854474 (= e!4133163 tp!1878636)))

(declare-fun b!6854475 () Bool)

(declare-fun tp!1878637 () Bool)

(declare-fun tp!1878638 () Bool)

(assert (=> b!6854475 (= e!4133163 (and tp!1878637 tp!1878638))))

(assert (= (and b!6853127 ((_ is ElementMatch!16677) (regOne!33867 (regOne!33867 (regOne!33867 r!7292))))) b!6854472))

(assert (= (and b!6853127 ((_ is Concat!25522) (regOne!33867 (regOne!33867 (regOne!33867 r!7292))))) b!6854473))

(assert (= (and b!6853127 ((_ is Star!16677) (regOne!33867 (regOne!33867 (regOne!33867 r!7292))))) b!6854474))

(assert (= (and b!6853127 ((_ is Union!16677) (regOne!33867 (regOne!33867 (regOne!33867 r!7292))))) b!6854475))

(declare-fun b!6854477 () Bool)

(declare-fun e!4133164 () Bool)

(declare-fun tp!1878644 () Bool)

(declare-fun tp!1878640 () Bool)

(assert (=> b!6854477 (= e!4133164 (and tp!1878644 tp!1878640))))

(assert (=> b!6853127 (= tp!1878529 e!4133164)))

(declare-fun b!6854476 () Bool)

(assert (=> b!6854476 (= e!4133164 tp_is_empty!42607)))

(declare-fun b!6854478 () Bool)

(declare-fun tp!1878641 () Bool)

(assert (=> b!6854478 (= e!4133164 tp!1878641)))

(declare-fun b!6854479 () Bool)

(declare-fun tp!1878642 () Bool)

(declare-fun tp!1878643 () Bool)

(assert (=> b!6854479 (= e!4133164 (and tp!1878642 tp!1878643))))

(assert (= (and b!6853127 ((_ is ElementMatch!16677) (regTwo!33867 (regOne!33867 (regOne!33867 r!7292))))) b!6854476))

(assert (= (and b!6853127 ((_ is Concat!25522) (regTwo!33867 (regOne!33867 (regOne!33867 r!7292))))) b!6854477))

(assert (= (and b!6853127 ((_ is Star!16677) (regTwo!33867 (regOne!33867 (regOne!33867 r!7292))))) b!6854478))

(assert (= (and b!6853127 ((_ is Union!16677) (regTwo!33867 (regOne!33867 (regOne!33867 r!7292))))) b!6854479))

(declare-fun b!6854481 () Bool)

(declare-fun e!4133165 () Bool)

(declare-fun tp!1878649 () Bool)

(declare-fun tp!1878645 () Bool)

(assert (=> b!6854481 (= e!4133165 (and tp!1878649 tp!1878645))))

(assert (=> b!6853072 (= tp!1878458 e!4133165)))

(declare-fun b!6854480 () Bool)

(assert (=> b!6854480 (= e!4133165 tp_is_empty!42607)))

(declare-fun b!6854482 () Bool)

(declare-fun tp!1878646 () Bool)

(assert (=> b!6854482 (= e!4133165 tp!1878646)))

(declare-fun b!6854483 () Bool)

(declare-fun tp!1878647 () Bool)

(declare-fun tp!1878648 () Bool)

(assert (=> b!6854483 (= e!4133165 (and tp!1878647 tp!1878648))))

(assert (= (and b!6853072 ((_ is ElementMatch!16677) (regOne!33867 (regOne!33867 (reg!17006 r!7292))))) b!6854480))

(assert (= (and b!6853072 ((_ is Concat!25522) (regOne!33867 (regOne!33867 (reg!17006 r!7292))))) b!6854481))

(assert (= (and b!6853072 ((_ is Star!16677) (regOne!33867 (regOne!33867 (reg!17006 r!7292))))) b!6854482))

(assert (= (and b!6853072 ((_ is Union!16677) (regOne!33867 (regOne!33867 (reg!17006 r!7292))))) b!6854483))

(declare-fun b!6854485 () Bool)

(declare-fun e!4133166 () Bool)

(declare-fun tp!1878654 () Bool)

(declare-fun tp!1878650 () Bool)

(assert (=> b!6854485 (= e!4133166 (and tp!1878654 tp!1878650))))

(assert (=> b!6853072 (= tp!1878459 e!4133166)))

(declare-fun b!6854484 () Bool)

(assert (=> b!6854484 (= e!4133166 tp_is_empty!42607)))

(declare-fun b!6854486 () Bool)

(declare-fun tp!1878651 () Bool)

(assert (=> b!6854486 (= e!4133166 tp!1878651)))

(declare-fun b!6854487 () Bool)

(declare-fun tp!1878652 () Bool)

(declare-fun tp!1878653 () Bool)

(assert (=> b!6854487 (= e!4133166 (and tp!1878652 tp!1878653))))

(assert (= (and b!6853072 ((_ is ElementMatch!16677) (regTwo!33867 (regOne!33867 (reg!17006 r!7292))))) b!6854484))

(assert (= (and b!6853072 ((_ is Concat!25522) (regTwo!33867 (regOne!33867 (reg!17006 r!7292))))) b!6854485))

(assert (= (and b!6853072 ((_ is Star!16677) (regTwo!33867 (regOne!33867 (reg!17006 r!7292))))) b!6854486))

(assert (= (and b!6853072 ((_ is Union!16677) (regTwo!33867 (regOne!33867 (reg!17006 r!7292))))) b!6854487))

(declare-fun b!6854489 () Bool)

(declare-fun e!4133167 () Bool)

(declare-fun tp!1878659 () Bool)

(declare-fun tp!1878655 () Bool)

(assert (=> b!6854489 (= e!4133167 (and tp!1878659 tp!1878655))))

(assert (=> b!6853063 (= tp!1878447 e!4133167)))

(declare-fun b!6854488 () Bool)

(assert (=> b!6854488 (= e!4133167 tp_is_empty!42607)))

(declare-fun b!6854490 () Bool)

(declare-fun tp!1878656 () Bool)

(assert (=> b!6854490 (= e!4133167 tp!1878656)))

(declare-fun b!6854491 () Bool)

(declare-fun tp!1878657 () Bool)

(declare-fun tp!1878658 () Bool)

(assert (=> b!6854491 (= e!4133167 (and tp!1878657 tp!1878658))))

(assert (= (and b!6853063 ((_ is ElementMatch!16677) (reg!17006 (regOne!33866 (regOne!33866 r!7292))))) b!6854488))

(assert (= (and b!6853063 ((_ is Concat!25522) (reg!17006 (regOne!33866 (regOne!33866 r!7292))))) b!6854489))

(assert (= (and b!6853063 ((_ is Star!16677) (reg!17006 (regOne!33866 (regOne!33866 r!7292))))) b!6854490))

(assert (= (and b!6853063 ((_ is Union!16677) (reg!17006 (regOne!33866 (regOne!33866 r!7292))))) b!6854491))

(declare-fun b!6854493 () Bool)

(declare-fun e!4133168 () Bool)

(declare-fun tp!1878664 () Bool)

(declare-fun tp!1878660 () Bool)

(assert (=> b!6854493 (= e!4133168 (and tp!1878664 tp!1878660))))

(assert (=> b!6853054 (= tp!1878440 e!4133168)))

(declare-fun b!6854492 () Bool)

(assert (=> b!6854492 (= e!4133168 tp_is_empty!42607)))

(declare-fun b!6854494 () Bool)

(declare-fun tp!1878661 () Bool)

(assert (=> b!6854494 (= e!4133168 tp!1878661)))

(declare-fun b!6854495 () Bool)

(declare-fun tp!1878662 () Bool)

(declare-fun tp!1878663 () Bool)

(assert (=> b!6854495 (= e!4133168 (and tp!1878662 tp!1878663))))

(assert (= (and b!6853054 ((_ is ElementMatch!16677) (regOne!33866 (regOne!33867 (regTwo!33866 r!7292))))) b!6854492))

(assert (= (and b!6853054 ((_ is Concat!25522) (regOne!33866 (regOne!33867 (regTwo!33866 r!7292))))) b!6854493))

(assert (= (and b!6853054 ((_ is Star!16677) (regOne!33866 (regOne!33867 (regTwo!33866 r!7292))))) b!6854494))

(assert (= (and b!6853054 ((_ is Union!16677) (regOne!33866 (regOne!33867 (regTwo!33866 r!7292))))) b!6854495))

(declare-fun b!6854497 () Bool)

(declare-fun e!4133169 () Bool)

(declare-fun tp!1878669 () Bool)

(declare-fun tp!1878665 () Bool)

(assert (=> b!6854497 (= e!4133169 (and tp!1878669 tp!1878665))))

(assert (=> b!6853054 (= tp!1878436 e!4133169)))

(declare-fun b!6854496 () Bool)

(assert (=> b!6854496 (= e!4133169 tp_is_empty!42607)))

(declare-fun b!6854498 () Bool)

(declare-fun tp!1878666 () Bool)

(assert (=> b!6854498 (= e!4133169 tp!1878666)))

(declare-fun b!6854499 () Bool)

(declare-fun tp!1878667 () Bool)

(declare-fun tp!1878668 () Bool)

(assert (=> b!6854499 (= e!4133169 (and tp!1878667 tp!1878668))))

(assert (= (and b!6853054 ((_ is ElementMatch!16677) (regTwo!33866 (regOne!33867 (regTwo!33866 r!7292))))) b!6854496))

(assert (= (and b!6853054 ((_ is Concat!25522) (regTwo!33866 (regOne!33867 (regTwo!33866 r!7292))))) b!6854497))

(assert (= (and b!6853054 ((_ is Star!16677) (regTwo!33866 (regOne!33867 (regTwo!33866 r!7292))))) b!6854498))

(assert (= (and b!6853054 ((_ is Union!16677) (regTwo!33866 (regOne!33867 (regTwo!33866 r!7292))))) b!6854499))

(declare-fun b!6854501 () Bool)

(declare-fun e!4133170 () Bool)

(declare-fun tp!1878674 () Bool)

(declare-fun tp!1878670 () Bool)

(assert (=> b!6854501 (= e!4133170 (and tp!1878674 tp!1878670))))

(assert (=> b!6853021 (= tp!1878397 e!4133170)))

(declare-fun b!6854500 () Bool)

(assert (=> b!6854500 (= e!4133170 tp_is_empty!42607)))

(declare-fun b!6854502 () Bool)

(declare-fun tp!1878671 () Bool)

(assert (=> b!6854502 (= e!4133170 tp!1878671)))

(declare-fun b!6854503 () Bool)

(declare-fun tp!1878672 () Bool)

(declare-fun tp!1878673 () Bool)

(assert (=> b!6854503 (= e!4133170 (and tp!1878672 tp!1878673))))

(assert (= (and b!6853021 ((_ is ElementMatch!16677) (regOne!33866 (regOne!33866 (reg!17006 r!7292))))) b!6854500))

(assert (= (and b!6853021 ((_ is Concat!25522) (regOne!33866 (regOne!33866 (reg!17006 r!7292))))) b!6854501))

(assert (= (and b!6853021 ((_ is Star!16677) (regOne!33866 (regOne!33866 (reg!17006 r!7292))))) b!6854502))

(assert (= (and b!6853021 ((_ is Union!16677) (regOne!33866 (regOne!33866 (reg!17006 r!7292))))) b!6854503))

(declare-fun b!6854505 () Bool)

(declare-fun e!4133177 () Bool)

(declare-fun tp!1878679 () Bool)

(declare-fun tp!1878675 () Bool)

(assert (=> b!6854505 (= e!4133177 (and tp!1878679 tp!1878675))))

(assert (=> b!6853021 (= tp!1878393 e!4133177)))

(declare-fun b!6854504 () Bool)

(assert (=> b!6854504 (= e!4133177 tp_is_empty!42607)))

(declare-fun b!6854507 () Bool)

(declare-fun tp!1878676 () Bool)

(assert (=> b!6854507 (= e!4133177 tp!1878676)))

(declare-fun b!6854509 () Bool)

(declare-fun tp!1878677 () Bool)

(declare-fun tp!1878678 () Bool)

(assert (=> b!6854509 (= e!4133177 (and tp!1878677 tp!1878678))))

(assert (= (and b!6853021 ((_ is ElementMatch!16677) (regTwo!33866 (regOne!33866 (reg!17006 r!7292))))) b!6854504))

(assert (= (and b!6853021 ((_ is Concat!25522) (regTwo!33866 (regOne!33866 (reg!17006 r!7292))))) b!6854505))

(assert (= (and b!6853021 ((_ is Star!16677) (regTwo!33866 (regOne!33866 (reg!17006 r!7292))))) b!6854507))

(assert (= (and b!6853021 ((_ is Union!16677) (regTwo!33866 (regOne!33866 (reg!17006 r!7292))))) b!6854509))

(declare-fun b!6854518 () Bool)

(declare-fun e!4133179 () Bool)

(declare-fun tp!1878684 () Bool)

(declare-fun tp!1878680 () Bool)

(assert (=> b!6854518 (= e!4133179 (and tp!1878684 tp!1878680))))

(assert (=> b!6853113 (= tp!1878509 e!4133179)))

(declare-fun b!6854517 () Bool)

(assert (=> b!6854517 (= e!4133179 tp_is_empty!42607)))

(declare-fun b!6854519 () Bool)

(declare-fun tp!1878681 () Bool)

(assert (=> b!6854519 (= e!4133179 tp!1878681)))

(declare-fun b!6854520 () Bool)

(declare-fun tp!1878682 () Bool)

(declare-fun tp!1878683 () Bool)

(assert (=> b!6854520 (= e!4133179 (and tp!1878682 tp!1878683))))

(assert (= (and b!6853113 ((_ is ElementMatch!16677) (regOne!33867 (regOne!33866 (regTwo!33866 r!7292))))) b!6854517))

(assert (= (and b!6853113 ((_ is Concat!25522) (regOne!33867 (regOne!33866 (regTwo!33866 r!7292))))) b!6854518))

(assert (= (and b!6853113 ((_ is Star!16677) (regOne!33867 (regOne!33866 (regTwo!33866 r!7292))))) b!6854519))

(assert (= (and b!6853113 ((_ is Union!16677) (regOne!33867 (regOne!33866 (regTwo!33866 r!7292))))) b!6854520))

(declare-fun b!6854522 () Bool)

(declare-fun e!4133180 () Bool)

(declare-fun tp!1878689 () Bool)

(declare-fun tp!1878685 () Bool)

(assert (=> b!6854522 (= e!4133180 (and tp!1878689 tp!1878685))))

(assert (=> b!6853113 (= tp!1878510 e!4133180)))

(declare-fun b!6854521 () Bool)

(assert (=> b!6854521 (= e!4133180 tp_is_empty!42607)))

(declare-fun b!6854523 () Bool)

(declare-fun tp!1878686 () Bool)

(assert (=> b!6854523 (= e!4133180 tp!1878686)))

(declare-fun b!6854524 () Bool)

(declare-fun tp!1878687 () Bool)

(declare-fun tp!1878688 () Bool)

(assert (=> b!6854524 (= e!4133180 (and tp!1878687 tp!1878688))))

(assert (= (and b!6853113 ((_ is ElementMatch!16677) (regTwo!33867 (regOne!33866 (regTwo!33866 r!7292))))) b!6854521))

(assert (= (and b!6853113 ((_ is Concat!25522) (regTwo!33867 (regOne!33866 (regTwo!33866 r!7292))))) b!6854522))

(assert (= (and b!6853113 ((_ is Star!16677) (regTwo!33867 (regOne!33866 (regTwo!33866 r!7292))))) b!6854523))

(assert (= (and b!6853113 ((_ is Union!16677) (regTwo!33867 (regOne!33866 (regTwo!33866 r!7292))))) b!6854524))

(declare-fun b!6854526 () Bool)

(declare-fun e!4133182 () Bool)

(declare-fun tp!1878690 () Bool)

(assert (=> b!6854526 (= e!4133182 tp!1878690)))

(declare-fun b!6854525 () Bool)

(declare-fun e!4133181 () Bool)

(declare-fun tp!1878691 () Bool)

(assert (=> b!6854525 (= e!4133181 (and (inv!84939 (h!72655 (t!380074 res!2796856))) e!4133182 tp!1878691))))

(assert (=> b!6852910 (= tp!1878384 e!4133181)))

(assert (= b!6854525 b!6854526))

(assert (= (and b!6852910 ((_ is Cons!66207) (t!380074 res!2796856))) b!6854525))

(declare-fun m!7592068 () Bool)

(assert (=> b!6854525 m!7592068))

(declare-fun b!6854528 () Bool)

(declare-fun e!4133183 () Bool)

(declare-fun tp!1878696 () Bool)

(declare-fun tp!1878692 () Bool)

(assert (=> b!6854528 (= e!4133183 (and tp!1878696 tp!1878692))))

(assert (=> b!6853088 (= tp!1878478 e!4133183)))

(declare-fun b!6854527 () Bool)

(assert (=> b!6854527 (= e!4133183 tp_is_empty!42607)))

(declare-fun b!6854529 () Bool)

(declare-fun tp!1878693 () Bool)

(assert (=> b!6854529 (= e!4133183 tp!1878693)))

(declare-fun b!6854530 () Bool)

(declare-fun tp!1878694 () Bool)

(declare-fun tp!1878695 () Bool)

(assert (=> b!6854530 (= e!4133183 (and tp!1878694 tp!1878695))))

(assert (= (and b!6853088 ((_ is ElementMatch!16677) (regOne!33867 (reg!17006 (reg!17006 r!7292))))) b!6854527))

(assert (= (and b!6853088 ((_ is Concat!25522) (regOne!33867 (reg!17006 (reg!17006 r!7292))))) b!6854528))

(assert (= (and b!6853088 ((_ is Star!16677) (regOne!33867 (reg!17006 (reg!17006 r!7292))))) b!6854529))

(assert (= (and b!6853088 ((_ is Union!16677) (regOne!33867 (reg!17006 (reg!17006 r!7292))))) b!6854530))

(declare-fun b!6854542 () Bool)

(declare-fun e!4133190 () Bool)

(declare-fun tp!1878701 () Bool)

(declare-fun tp!1878697 () Bool)

(assert (=> b!6854542 (= e!4133190 (and tp!1878701 tp!1878697))))

(assert (=> b!6853088 (= tp!1878479 e!4133190)))

(declare-fun b!6854541 () Bool)

(assert (=> b!6854541 (= e!4133190 tp_is_empty!42607)))

(declare-fun b!6854543 () Bool)

(declare-fun tp!1878698 () Bool)

(assert (=> b!6854543 (= e!4133190 tp!1878698)))

(declare-fun b!6854544 () Bool)

(declare-fun tp!1878699 () Bool)

(declare-fun tp!1878700 () Bool)

(assert (=> b!6854544 (= e!4133190 (and tp!1878699 tp!1878700))))

(assert (= (and b!6853088 ((_ is ElementMatch!16677) (regTwo!33867 (reg!17006 (reg!17006 r!7292))))) b!6854541))

(assert (= (and b!6853088 ((_ is Concat!25522) (regTwo!33867 (reg!17006 (reg!17006 r!7292))))) b!6854542))

(assert (= (and b!6853088 ((_ is Star!16677) (regTwo!33867 (reg!17006 (reg!17006 r!7292))))) b!6854543))

(assert (= (and b!6853088 ((_ is Union!16677) (regTwo!33867 (reg!17006 (reg!17006 r!7292))))) b!6854544))

(declare-fun b!6854546 () Bool)

(declare-fun e!4133191 () Bool)

(declare-fun tp!1878706 () Bool)

(declare-fun tp!1878702 () Bool)

(assert (=> b!6854546 (= e!4133191 (and tp!1878706 tp!1878702))))

(assert (=> b!6853079 (= tp!1878467 e!4133191)))

(declare-fun b!6854545 () Bool)

(assert (=> b!6854545 (= e!4133191 tp_is_empty!42607)))

(declare-fun b!6854547 () Bool)

(declare-fun tp!1878703 () Bool)

(assert (=> b!6854547 (= e!4133191 tp!1878703)))

(declare-fun b!6854548 () Bool)

(declare-fun tp!1878704 () Bool)

(declare-fun tp!1878705 () Bool)

(assert (=> b!6854548 (= e!4133191 (and tp!1878704 tp!1878705))))

(assert (= (and b!6853079 ((_ is ElementMatch!16677) (reg!17006 (regOne!33867 (regTwo!33867 r!7292))))) b!6854545))

(assert (= (and b!6853079 ((_ is Concat!25522) (reg!17006 (regOne!33867 (regTwo!33867 r!7292))))) b!6854546))

(assert (= (and b!6853079 ((_ is Star!16677) (reg!17006 (regOne!33867 (regTwo!33867 r!7292))))) b!6854547))

(assert (= (and b!6853079 ((_ is Union!16677) (reg!17006 (regOne!33867 (regTwo!33867 r!7292))))) b!6854548))

(declare-fun b!6854550 () Bool)

(declare-fun e!4133192 () Bool)

(declare-fun tp!1878711 () Bool)

(declare-fun tp!1878707 () Bool)

(assert (=> b!6854550 (= e!4133192 (and tp!1878711 tp!1878707))))

(assert (=> b!6853125 (= tp!1878530 e!4133192)))

(declare-fun b!6854549 () Bool)

(assert (=> b!6854549 (= e!4133192 tp_is_empty!42607)))

(declare-fun b!6854551 () Bool)

(declare-fun tp!1878708 () Bool)

(assert (=> b!6854551 (= e!4133192 tp!1878708)))

(declare-fun b!6854552 () Bool)

(declare-fun tp!1878709 () Bool)

(declare-fun tp!1878710 () Bool)

(assert (=> b!6854552 (= e!4133192 (and tp!1878709 tp!1878710))))

(assert (= (and b!6853125 ((_ is ElementMatch!16677) (regOne!33866 (regOne!33867 (regOne!33867 r!7292))))) b!6854549))

(assert (= (and b!6853125 ((_ is Concat!25522) (regOne!33866 (regOne!33867 (regOne!33867 r!7292))))) b!6854550))

(assert (= (and b!6853125 ((_ is Star!16677) (regOne!33866 (regOne!33867 (regOne!33867 r!7292))))) b!6854551))

(assert (= (and b!6853125 ((_ is Union!16677) (regOne!33866 (regOne!33867 (regOne!33867 r!7292))))) b!6854552))

(declare-fun b!6854554 () Bool)

(declare-fun e!4133193 () Bool)

(declare-fun tp!1878716 () Bool)

(declare-fun tp!1878712 () Bool)

(assert (=> b!6854554 (= e!4133193 (and tp!1878716 tp!1878712))))

(assert (=> b!6853125 (= tp!1878526 e!4133193)))

(declare-fun b!6854553 () Bool)

(assert (=> b!6854553 (= e!4133193 tp_is_empty!42607)))

(declare-fun b!6854555 () Bool)

(declare-fun tp!1878713 () Bool)

(assert (=> b!6854555 (= e!4133193 tp!1878713)))

(declare-fun b!6854556 () Bool)

(declare-fun tp!1878714 () Bool)

(declare-fun tp!1878715 () Bool)

(assert (=> b!6854556 (= e!4133193 (and tp!1878714 tp!1878715))))

(assert (= (and b!6853125 ((_ is ElementMatch!16677) (regTwo!33866 (regOne!33867 (regOne!33867 r!7292))))) b!6854553))

(assert (= (and b!6853125 ((_ is Concat!25522) (regTwo!33866 (regOne!33867 (regOne!33867 r!7292))))) b!6854554))

(assert (= (and b!6853125 ((_ is Star!16677) (regTwo!33866 (regOne!33867 (regOne!33867 r!7292))))) b!6854555))

(assert (= (and b!6853125 ((_ is Union!16677) (regTwo!33866 (regOne!33867 (regOne!33867 r!7292))))) b!6854556))

(declare-fun b!6854558 () Bool)

(declare-fun e!4133194 () Bool)

(declare-fun tp!1878721 () Bool)

(declare-fun tp!1878717 () Bool)

(assert (=> b!6854558 (= e!4133194 (and tp!1878721 tp!1878717))))

(assert (=> b!6853023 (= tp!1878395 e!4133194)))

(declare-fun b!6854557 () Bool)

(assert (=> b!6854557 (= e!4133194 tp_is_empty!42607)))

(declare-fun b!6854559 () Bool)

(declare-fun tp!1878718 () Bool)

(assert (=> b!6854559 (= e!4133194 tp!1878718)))

(declare-fun b!6854560 () Bool)

(declare-fun tp!1878719 () Bool)

(declare-fun tp!1878720 () Bool)

(assert (=> b!6854560 (= e!4133194 (and tp!1878719 tp!1878720))))

(assert (= (and b!6853023 ((_ is ElementMatch!16677) (regOne!33867 (regOne!33866 (reg!17006 r!7292))))) b!6854557))

(assert (= (and b!6853023 ((_ is Concat!25522) (regOne!33867 (regOne!33866 (reg!17006 r!7292))))) b!6854558))

(assert (= (and b!6853023 ((_ is Star!16677) (regOne!33867 (regOne!33866 (reg!17006 r!7292))))) b!6854559))

(assert (= (and b!6853023 ((_ is Union!16677) (regOne!33867 (regOne!33866 (reg!17006 r!7292))))) b!6854560))

(declare-fun b!6854562 () Bool)

(declare-fun e!4133195 () Bool)

(declare-fun tp!1878726 () Bool)

(declare-fun tp!1878722 () Bool)

(assert (=> b!6854562 (= e!4133195 (and tp!1878726 tp!1878722))))

(assert (=> b!6853023 (= tp!1878396 e!4133195)))

(declare-fun b!6854561 () Bool)

(assert (=> b!6854561 (= e!4133195 tp_is_empty!42607)))

(declare-fun b!6854563 () Bool)

(declare-fun tp!1878723 () Bool)

(assert (=> b!6854563 (= e!4133195 tp!1878723)))

(declare-fun b!6854564 () Bool)

(declare-fun tp!1878724 () Bool)

(declare-fun tp!1878725 () Bool)

(assert (=> b!6854564 (= e!4133195 (and tp!1878724 tp!1878725))))

(assert (= (and b!6853023 ((_ is ElementMatch!16677) (regTwo!33867 (regOne!33866 (reg!17006 r!7292))))) b!6854561))

(assert (= (and b!6853023 ((_ is Concat!25522) (regTwo!33867 (regOne!33866 (reg!17006 r!7292))))) b!6854562))

(assert (= (and b!6853023 ((_ is Star!16677) (regTwo!33867 (regOne!33866 (reg!17006 r!7292))))) b!6854563))

(assert (= (and b!6853023 ((_ is Union!16677) (regTwo!33867 (regOne!33866 (reg!17006 r!7292))))) b!6854564))

(declare-fun b!6854566 () Bool)

(declare-fun e!4133196 () Bool)

(declare-fun tp!1878731 () Bool)

(declare-fun tp!1878727 () Bool)

(assert (=> b!6854566 (= e!4133196 (and tp!1878731 tp!1878727))))

(assert (=> b!6853070 (= tp!1878460 e!4133196)))

(declare-fun b!6854565 () Bool)

(assert (=> b!6854565 (= e!4133196 tp_is_empty!42607)))

(declare-fun b!6854567 () Bool)

(declare-fun tp!1878728 () Bool)

(assert (=> b!6854567 (= e!4133196 tp!1878728)))

(declare-fun b!6854568 () Bool)

(declare-fun tp!1878729 () Bool)

(declare-fun tp!1878730 () Bool)

(assert (=> b!6854568 (= e!4133196 (and tp!1878729 tp!1878730))))

(assert (= (and b!6853070 ((_ is ElementMatch!16677) (regOne!33866 (regOne!33867 (reg!17006 r!7292))))) b!6854565))

(assert (= (and b!6853070 ((_ is Concat!25522) (regOne!33866 (regOne!33867 (reg!17006 r!7292))))) b!6854566))

(assert (= (and b!6853070 ((_ is Star!16677) (regOne!33866 (regOne!33867 (reg!17006 r!7292))))) b!6854567))

(assert (= (and b!6853070 ((_ is Union!16677) (regOne!33866 (regOne!33867 (reg!17006 r!7292))))) b!6854568))

(declare-fun b!6854570 () Bool)

(declare-fun e!4133197 () Bool)

(declare-fun tp!1878736 () Bool)

(declare-fun tp!1878732 () Bool)

(assert (=> b!6854570 (= e!4133197 (and tp!1878736 tp!1878732))))

(assert (=> b!6853070 (= tp!1878456 e!4133197)))

(declare-fun b!6854569 () Bool)

(assert (=> b!6854569 (= e!4133197 tp_is_empty!42607)))

(declare-fun b!6854571 () Bool)

(declare-fun tp!1878733 () Bool)

(assert (=> b!6854571 (= e!4133197 tp!1878733)))

(declare-fun b!6854572 () Bool)

(declare-fun tp!1878734 () Bool)

(declare-fun tp!1878735 () Bool)

(assert (=> b!6854572 (= e!4133197 (and tp!1878734 tp!1878735))))

(assert (= (and b!6853070 ((_ is ElementMatch!16677) (regTwo!33866 (regOne!33867 (reg!17006 r!7292))))) b!6854569))

(assert (= (and b!6853070 ((_ is Concat!25522) (regTwo!33866 (regOne!33867 (reg!17006 r!7292))))) b!6854570))

(assert (= (and b!6853070 ((_ is Star!16677) (regTwo!33866 (regOne!33867 (reg!17006 r!7292))))) b!6854571))

(assert (= (and b!6853070 ((_ is Union!16677) (regTwo!33866 (regOne!33867 (reg!17006 r!7292))))) b!6854572))

(declare-fun b!6854574 () Bool)

(declare-fun e!4133198 () Bool)

(declare-fun tp!1878741 () Bool)

(declare-fun tp!1878737 () Bool)

(assert (=> b!6854574 (= e!4133198 (and tp!1878741 tp!1878737))))

(assert (=> b!6853048 (= tp!1878429 e!4133198)))

(declare-fun b!6854573 () Bool)

(assert (=> b!6854573 (= e!4133198 tp_is_empty!42607)))

(declare-fun b!6854575 () Bool)

(declare-fun tp!1878738 () Bool)

(assert (=> b!6854575 (= e!4133198 tp!1878738)))

(declare-fun b!6854576 () Bool)

(declare-fun tp!1878739 () Bool)

(declare-fun tp!1878740 () Bool)

(assert (=> b!6854576 (= e!4133198 (and tp!1878739 tp!1878740))))

(assert (= (and b!6853048 ((_ is ElementMatch!16677) (h!72654 (t!380073 (exprs!6561 (h!72655 zl!343)))))) b!6854573))

(assert (= (and b!6853048 ((_ is Concat!25522) (h!72654 (t!380073 (exprs!6561 (h!72655 zl!343)))))) b!6854574))

(assert (= (and b!6853048 ((_ is Star!16677) (h!72654 (t!380073 (exprs!6561 (h!72655 zl!343)))))) b!6854575))

(assert (= (and b!6853048 ((_ is Union!16677) (h!72654 (t!380073 (exprs!6561 (h!72655 zl!343)))))) b!6854576))

(declare-fun b!6854577 () Bool)

(declare-fun e!4133199 () Bool)

(declare-fun tp!1878742 () Bool)

(declare-fun tp!1878743 () Bool)

(assert (=> b!6854577 (= e!4133199 (and tp!1878742 tp!1878743))))

(assert (=> b!6853048 (= tp!1878430 e!4133199)))

(assert (= (and b!6853048 ((_ is Cons!66206) (t!380073 (t!380073 (exprs!6561 (h!72655 zl!343)))))) b!6854577))

(declare-fun b!6854579 () Bool)

(declare-fun e!4133200 () Bool)

(declare-fun tp!1878748 () Bool)

(declare-fun tp!1878744 () Bool)

(assert (=> b!6854579 (= e!4133200 (and tp!1878748 tp!1878744))))

(assert (=> b!6853098 (= tp!1878495 e!4133200)))

(declare-fun b!6854578 () Bool)

(assert (=> b!6854578 (= e!4133200 tp_is_empty!42607)))

(declare-fun b!6854580 () Bool)

(declare-fun tp!1878745 () Bool)

(assert (=> b!6854580 (= e!4133200 tp!1878745)))

(declare-fun b!6854581 () Bool)

(declare-fun tp!1878746 () Bool)

(declare-fun tp!1878747 () Bool)

(assert (=> b!6854581 (= e!4133200 (and tp!1878746 tp!1878747))))

(assert (= (and b!6853098 ((_ is ElementMatch!16677) (regOne!33866 (regOne!33867 (regOne!33866 r!7292))))) b!6854578))

(assert (= (and b!6853098 ((_ is Concat!25522) (regOne!33866 (regOne!33867 (regOne!33866 r!7292))))) b!6854579))

(assert (= (and b!6853098 ((_ is Star!16677) (regOne!33866 (regOne!33867 (regOne!33866 r!7292))))) b!6854580))

(assert (= (and b!6853098 ((_ is Union!16677) (regOne!33866 (regOne!33867 (regOne!33866 r!7292))))) b!6854581))

(declare-fun b!6854583 () Bool)

(declare-fun e!4133201 () Bool)

(declare-fun tp!1878753 () Bool)

(declare-fun tp!1878749 () Bool)

(assert (=> b!6854583 (= e!4133201 (and tp!1878753 tp!1878749))))

(assert (=> b!6853098 (= tp!1878491 e!4133201)))

(declare-fun b!6854582 () Bool)

(assert (=> b!6854582 (= e!4133201 tp_is_empty!42607)))

(declare-fun b!6854584 () Bool)

(declare-fun tp!1878750 () Bool)

(assert (=> b!6854584 (= e!4133201 tp!1878750)))

(declare-fun b!6854585 () Bool)

(declare-fun tp!1878751 () Bool)

(declare-fun tp!1878752 () Bool)

(assert (=> b!6854585 (= e!4133201 (and tp!1878751 tp!1878752))))

(assert (= (and b!6853098 ((_ is ElementMatch!16677) (regTwo!33866 (regOne!33867 (regOne!33866 r!7292))))) b!6854582))

(assert (= (and b!6853098 ((_ is Concat!25522) (regTwo!33866 (regOne!33867 (regOne!33866 r!7292))))) b!6854583))

(assert (= (and b!6853098 ((_ is Star!16677) (regTwo!33866 (regOne!33867 (regOne!33866 r!7292))))) b!6854584))

(assert (= (and b!6853098 ((_ is Union!16677) (regTwo!33866 (regOne!33867 (regOne!33866 r!7292))))) b!6854585))

(declare-fun b!6854587 () Bool)

(declare-fun e!4133202 () Bool)

(declare-fun tp!1878758 () Bool)

(declare-fun tp!1878754 () Bool)

(assert (=> b!6854587 (= e!4133202 (and tp!1878758 tp!1878754))))

(assert (=> b!6853033 (= tp!1878410 e!4133202)))

(declare-fun b!6854586 () Bool)

(assert (=> b!6854586 (= e!4133202 tp_is_empty!42607)))

(declare-fun b!6854588 () Bool)

(declare-fun tp!1878755 () Bool)

(assert (=> b!6854588 (= e!4133202 tp!1878755)))

(declare-fun b!6854589 () Bool)

(declare-fun tp!1878756 () Bool)

(declare-fun tp!1878757 () Bool)

(assert (=> b!6854589 (= e!4133202 (and tp!1878756 tp!1878757))))

(assert (= (and b!6853033 ((_ is ElementMatch!16677) (h!72654 (exprs!6561 (h!72655 (t!380074 zl!343)))))) b!6854586))

(assert (= (and b!6853033 ((_ is Concat!25522) (h!72654 (exprs!6561 (h!72655 (t!380074 zl!343)))))) b!6854587))

(assert (= (and b!6853033 ((_ is Star!16677) (h!72654 (exprs!6561 (h!72655 (t!380074 zl!343)))))) b!6854588))

(assert (= (and b!6853033 ((_ is Union!16677) (h!72654 (exprs!6561 (h!72655 (t!380074 zl!343)))))) b!6854589))

(declare-fun b!6854590 () Bool)

(declare-fun e!4133203 () Bool)

(declare-fun tp!1878759 () Bool)

(declare-fun tp!1878760 () Bool)

(assert (=> b!6854590 (= e!4133203 (and tp!1878759 tp!1878760))))

(assert (=> b!6853033 (= tp!1878411 e!4133203)))

(assert (= (and b!6853033 ((_ is Cons!66206) (t!380073 (exprs!6561 (h!72655 (t!380074 zl!343)))))) b!6854590))

(declare-fun b!6854592 () Bool)

(declare-fun e!4133204 () Bool)

(declare-fun tp!1878765 () Bool)

(declare-fun tp!1878761 () Bool)

(assert (=> b!6854592 (= e!4133204 (and tp!1878765 tp!1878761))))

(assert (=> b!6853116 (= tp!1878513 e!4133204)))

(declare-fun b!6854591 () Bool)

(assert (=> b!6854591 (= e!4133204 tp_is_empty!42607)))

(declare-fun b!6854593 () Bool)

(declare-fun tp!1878762 () Bool)

(assert (=> b!6854593 (= e!4133204 tp!1878762)))

(declare-fun b!6854594 () Bool)

(declare-fun tp!1878763 () Bool)

(declare-fun tp!1878764 () Bool)

(assert (=> b!6854594 (= e!4133204 (and tp!1878763 tp!1878764))))

(assert (= (and b!6853116 ((_ is ElementMatch!16677) (reg!17006 (regTwo!33866 (regTwo!33866 r!7292))))) b!6854591))

(assert (= (and b!6853116 ((_ is Concat!25522) (reg!17006 (regTwo!33866 (regTwo!33866 r!7292))))) b!6854592))

(assert (= (and b!6853116 ((_ is Star!16677) (reg!17006 (regTwo!33866 (regTwo!33866 r!7292))))) b!6854593))

(assert (= (and b!6853116 ((_ is Union!16677) (reg!17006 (regTwo!33866 (regTwo!33866 r!7292))))) b!6854594))

(declare-fun b!6854596 () Bool)

(declare-fun e!4133205 () Bool)

(declare-fun tp!1878770 () Bool)

(declare-fun tp!1878766 () Bool)

(assert (=> b!6854596 (= e!4133205 (and tp!1878770 tp!1878766))))

(assert (=> b!6853100 (= tp!1878493 e!4133205)))

(declare-fun b!6854595 () Bool)

(assert (=> b!6854595 (= e!4133205 tp_is_empty!42607)))

(declare-fun b!6854597 () Bool)

(declare-fun tp!1878767 () Bool)

(assert (=> b!6854597 (= e!4133205 tp!1878767)))

(declare-fun b!6854598 () Bool)

(declare-fun tp!1878768 () Bool)

(declare-fun tp!1878769 () Bool)

(assert (=> b!6854598 (= e!4133205 (and tp!1878768 tp!1878769))))

(assert (= (and b!6853100 ((_ is ElementMatch!16677) (regOne!33867 (regOne!33867 (regOne!33866 r!7292))))) b!6854595))

(assert (= (and b!6853100 ((_ is Concat!25522) (regOne!33867 (regOne!33867 (regOne!33866 r!7292))))) b!6854596))

(assert (= (and b!6853100 ((_ is Star!16677) (regOne!33867 (regOne!33867 (regOne!33866 r!7292))))) b!6854597))

(assert (= (and b!6853100 ((_ is Union!16677) (regOne!33867 (regOne!33867 (regOne!33866 r!7292))))) b!6854598))

(declare-fun b!6854600 () Bool)

(declare-fun e!4133206 () Bool)

(declare-fun tp!1878775 () Bool)

(declare-fun tp!1878771 () Bool)

(assert (=> b!6854600 (= e!4133206 (and tp!1878775 tp!1878771))))

(assert (=> b!6853100 (= tp!1878494 e!4133206)))

(declare-fun b!6854599 () Bool)

(assert (=> b!6854599 (= e!4133206 tp_is_empty!42607)))

(declare-fun b!6854601 () Bool)

(declare-fun tp!1878772 () Bool)

(assert (=> b!6854601 (= e!4133206 tp!1878772)))

(declare-fun b!6854602 () Bool)

(declare-fun tp!1878773 () Bool)

(declare-fun tp!1878774 () Bool)

(assert (=> b!6854602 (= e!4133206 (and tp!1878773 tp!1878774))))

(assert (= (and b!6853100 ((_ is ElementMatch!16677) (regTwo!33867 (regOne!33867 (regOne!33866 r!7292))))) b!6854599))

(assert (= (and b!6853100 ((_ is Concat!25522) (regTwo!33867 (regOne!33867 (regOne!33866 r!7292))))) b!6854600))

(assert (= (and b!6853100 ((_ is Star!16677) (regTwo!33867 (regOne!33867 (regOne!33866 r!7292))))) b!6854601))

(assert (= (and b!6853100 ((_ is Union!16677) (regTwo!33867 (regOne!33867 (regOne!33866 r!7292))))) b!6854602))

(declare-fun b!6854604 () Bool)

(declare-fun e!4133207 () Bool)

(declare-fun tp!1878780 () Bool)

(declare-fun tp!1878776 () Bool)

(assert (=> b!6854604 (= e!4133207 (and tp!1878780 tp!1878776))))

(assert (=> b!6853091 (= tp!1878482 e!4133207)))

(declare-fun b!6854603 () Bool)

(assert (=> b!6854603 (= e!4133207 tp_is_empty!42607)))

(declare-fun b!6854605 () Bool)

(declare-fun tp!1878777 () Bool)

(assert (=> b!6854605 (= e!4133207 tp!1878777)))

(declare-fun b!6854606 () Bool)

(declare-fun tp!1878778 () Bool)

(declare-fun tp!1878779 () Bool)

(assert (=> b!6854606 (= e!4133207 (and tp!1878778 tp!1878779))))

(assert (= (and b!6853091 ((_ is ElementMatch!16677) (reg!17006 (regOne!33866 (regOne!33867 r!7292))))) b!6854603))

(assert (= (and b!6853091 ((_ is Concat!25522) (reg!17006 (regOne!33866 (regOne!33867 r!7292))))) b!6854604))

(assert (= (and b!6853091 ((_ is Star!16677) (reg!17006 (regOne!33866 (regOne!33867 r!7292))))) b!6854605))

(assert (= (and b!6853091 ((_ is Union!16677) (reg!17006 (regOne!33866 (regOne!33867 r!7292))))) b!6854606))

(declare-fun b!6854608 () Bool)

(declare-fun e!4133208 () Bool)

(declare-fun tp!1878785 () Bool)

(declare-fun tp!1878781 () Bool)

(assert (=> b!6854608 (= e!4133208 (and tp!1878785 tp!1878781))))

(assert (=> b!6853064 (= tp!1878448 e!4133208)))

(declare-fun b!6854607 () Bool)

(assert (=> b!6854607 (= e!4133208 tp_is_empty!42607)))

(declare-fun b!6854609 () Bool)

(declare-fun tp!1878782 () Bool)

(assert (=> b!6854609 (= e!4133208 tp!1878782)))

(declare-fun b!6854610 () Bool)

(declare-fun tp!1878783 () Bool)

(declare-fun tp!1878784 () Bool)

(assert (=> b!6854610 (= e!4133208 (and tp!1878783 tp!1878784))))

(assert (= (and b!6853064 ((_ is ElementMatch!16677) (regOne!33867 (regOne!33866 (regOne!33866 r!7292))))) b!6854607))

(assert (= (and b!6853064 ((_ is Concat!25522) (regOne!33867 (regOne!33866 (regOne!33866 r!7292))))) b!6854608))

(assert (= (and b!6853064 ((_ is Star!16677) (regOne!33867 (regOne!33866 (regOne!33866 r!7292))))) b!6854609))

(assert (= (and b!6853064 ((_ is Union!16677) (regOne!33867 (regOne!33866 (regOne!33866 r!7292))))) b!6854610))

(declare-fun b!6854612 () Bool)

(declare-fun e!4133209 () Bool)

(declare-fun tp!1878790 () Bool)

(declare-fun tp!1878786 () Bool)

(assert (=> b!6854612 (= e!4133209 (and tp!1878790 tp!1878786))))

(assert (=> b!6853064 (= tp!1878449 e!4133209)))

(declare-fun b!6854611 () Bool)

(assert (=> b!6854611 (= e!4133209 tp_is_empty!42607)))

(declare-fun b!6854613 () Bool)

(declare-fun tp!1878787 () Bool)

(assert (=> b!6854613 (= e!4133209 tp!1878787)))

(declare-fun b!6854614 () Bool)

(declare-fun tp!1878788 () Bool)

(declare-fun tp!1878789 () Bool)

(assert (=> b!6854614 (= e!4133209 (and tp!1878788 tp!1878789))))

(assert (= (and b!6853064 ((_ is ElementMatch!16677) (regTwo!33867 (regOne!33866 (regOne!33866 r!7292))))) b!6854611))

(assert (= (and b!6853064 ((_ is Concat!25522) (regTwo!33867 (regOne!33866 (regOne!33866 r!7292))))) b!6854612))

(assert (= (and b!6853064 ((_ is Star!16677) (regTwo!33867 (regOne!33866 (regOne!33866 r!7292))))) b!6854613))

(assert (= (and b!6853064 ((_ is Union!16677) (regTwo!33867 (regOne!33866 (regOne!33866 r!7292))))) b!6854614))

(declare-fun b!6854623 () Bool)

(declare-fun e!4133216 () Bool)

(declare-fun tp!1878795 () Bool)

(declare-fun tp!1878791 () Bool)

(assert (=> b!6854623 (= e!4133216 (and tp!1878795 tp!1878791))))

(assert (=> b!6853055 (= tp!1878437 e!4133216)))

(declare-fun b!6854622 () Bool)

(assert (=> b!6854622 (= e!4133216 tp_is_empty!42607)))

(declare-fun b!6854624 () Bool)

(declare-fun tp!1878792 () Bool)

(assert (=> b!6854624 (= e!4133216 tp!1878792)))

(declare-fun b!6854625 () Bool)

(declare-fun tp!1878793 () Bool)

(declare-fun tp!1878794 () Bool)

(assert (=> b!6854625 (= e!4133216 (and tp!1878793 tp!1878794))))

(assert (= (and b!6853055 ((_ is ElementMatch!16677) (reg!17006 (regOne!33867 (regTwo!33866 r!7292))))) b!6854622))

(assert (= (and b!6853055 ((_ is Concat!25522) (reg!17006 (regOne!33867 (regTwo!33866 r!7292))))) b!6854623))

(assert (= (and b!6853055 ((_ is Star!16677) (reg!17006 (regOne!33867 (regTwo!33866 r!7292))))) b!6854624))

(assert (= (and b!6853055 ((_ is Union!16677) (reg!17006 (regOne!33867 (regTwo!33866 r!7292))))) b!6854625))

(declare-fun b!6854627 () Bool)

(declare-fun e!4133217 () Bool)

(declare-fun tp!1878800 () Bool)

(declare-fun tp!1878796 () Bool)

(assert (=> b!6854627 (= e!4133217 (and tp!1878800 tp!1878796))))

(assert (=> b!6853040 (= tp!1878418 e!4133217)))

(declare-fun b!6854626 () Bool)

(assert (=> b!6854626 (= e!4133217 tp_is_empty!42607)))

(declare-fun b!6854628 () Bool)

(declare-fun tp!1878797 () Bool)

(assert (=> b!6854628 (= e!4133217 tp!1878797)))

(declare-fun b!6854629 () Bool)

(declare-fun tp!1878798 () Bool)

(declare-fun tp!1878799 () Bool)

(assert (=> b!6854629 (= e!4133217 (and tp!1878798 tp!1878799))))

(assert (= (and b!6853040 ((_ is ElementMatch!16677) (reg!17006 (regTwo!33866 (regTwo!33867 r!7292))))) b!6854626))

(assert (= (and b!6853040 ((_ is Concat!25522) (reg!17006 (regTwo!33866 (regTwo!33867 r!7292))))) b!6854627))

(assert (= (and b!6853040 ((_ is Star!16677) (reg!17006 (regTwo!33866 (regTwo!33867 r!7292))))) b!6854628))

(assert (= (and b!6853040 ((_ is Union!16677) (reg!17006 (regTwo!33866 (regTwo!33867 r!7292))))) b!6854629))

(declare-fun b!6854631 () Bool)

(declare-fun e!4133218 () Bool)

(declare-fun tp!1878805 () Bool)

(declare-fun tp!1878801 () Bool)

(assert (=> b!6854631 (= e!4133218 (and tp!1878805 tp!1878801))))

(assert (=> b!6853107 (= tp!1878502 e!4133218)))

(declare-fun b!6854630 () Bool)

(assert (=> b!6854630 (= e!4133218 tp_is_empty!42607)))

(declare-fun b!6854632 () Bool)

(declare-fun tp!1878802 () Bool)

(assert (=> b!6854632 (= e!4133218 tp!1878802)))

(declare-fun b!6854633 () Bool)

(declare-fun tp!1878803 () Bool)

(declare-fun tp!1878804 () Bool)

(assert (=> b!6854633 (= e!4133218 (and tp!1878803 tp!1878804))))

(assert (= (and b!6853107 ((_ is ElementMatch!16677) (reg!17006 (reg!17006 (regOne!33866 r!7292))))) b!6854630))

(assert (= (and b!6853107 ((_ is Concat!25522) (reg!17006 (reg!17006 (regOne!33866 r!7292))))) b!6854631))

(assert (= (and b!6853107 ((_ is Star!16677) (reg!17006 (reg!17006 (regOne!33866 r!7292))))) b!6854632))

(assert (= (and b!6853107 ((_ is Union!16677) (reg!17006 (reg!17006 (regOne!33866 r!7292))))) b!6854633))

(declare-fun b!6854644 () Bool)

(declare-fun e!4133226 () Bool)

(declare-fun tp!1878810 () Bool)

(declare-fun tp!1878806 () Bool)

(assert (=> b!6854644 (= e!4133226 (and tp!1878810 tp!1878806))))

(assert (=> b!6853019 (= tp!1878390 e!4133226)))

(declare-fun b!6854643 () Bool)

(assert (=> b!6854643 (= e!4133226 tp_is_empty!42607)))

(declare-fun b!6854645 () Bool)

(declare-fun tp!1878807 () Bool)

(assert (=> b!6854645 (= e!4133226 tp!1878807)))

(declare-fun b!6854646 () Bool)

(declare-fun tp!1878808 () Bool)

(declare-fun tp!1878809 () Bool)

(assert (=> b!6854646 (= e!4133226 (and tp!1878808 tp!1878809))))

(assert (= (and b!6853019 ((_ is ElementMatch!16677) (regOne!33867 (reg!17006 (regTwo!33867 r!7292))))) b!6854643))

(assert (= (and b!6853019 ((_ is Concat!25522) (regOne!33867 (reg!17006 (regTwo!33867 r!7292))))) b!6854644))

(assert (= (and b!6853019 ((_ is Star!16677) (regOne!33867 (reg!17006 (regTwo!33867 r!7292))))) b!6854645))

(assert (= (and b!6853019 ((_ is Union!16677) (regOne!33867 (reg!17006 (regTwo!33867 r!7292))))) b!6854646))

(declare-fun b!6854648 () Bool)

(declare-fun e!4133227 () Bool)

(declare-fun tp!1878815 () Bool)

(declare-fun tp!1878811 () Bool)

(assert (=> b!6854648 (= e!4133227 (and tp!1878815 tp!1878811))))

(assert (=> b!6853019 (= tp!1878391 e!4133227)))

(declare-fun b!6854647 () Bool)

(assert (=> b!6854647 (= e!4133227 tp_is_empty!42607)))

(declare-fun b!6854649 () Bool)

(declare-fun tp!1878812 () Bool)

(assert (=> b!6854649 (= e!4133227 tp!1878812)))

(declare-fun b!6854650 () Bool)

(declare-fun tp!1878813 () Bool)

(declare-fun tp!1878814 () Bool)

(assert (=> b!6854650 (= e!4133227 (and tp!1878813 tp!1878814))))

(assert (= (and b!6853019 ((_ is ElementMatch!16677) (regTwo!33867 (reg!17006 (regTwo!33867 r!7292))))) b!6854647))

(assert (= (and b!6853019 ((_ is Concat!25522) (regTwo!33867 (reg!17006 (regTwo!33867 r!7292))))) b!6854648))

(assert (= (and b!6853019 ((_ is Star!16677) (regTwo!33867 (reg!17006 (regTwo!33867 r!7292))))) b!6854649))

(assert (= (and b!6853019 ((_ is Union!16677) (regTwo!33867 (reg!17006 (regTwo!33867 r!7292))))) b!6854650))

(declare-fun b!6854652 () Bool)

(declare-fun e!4133228 () Bool)

(declare-fun tp!1878820 () Bool)

(declare-fun tp!1878816 () Bool)

(assert (=> b!6854652 (= e!4133228 (and tp!1878820 tp!1878816))))

(assert (=> b!6853066 (= tp!1878455 e!4133228)))

(declare-fun b!6854651 () Bool)

(assert (=> b!6854651 (= e!4133228 tp_is_empty!42607)))

(declare-fun b!6854653 () Bool)

(declare-fun tp!1878817 () Bool)

(assert (=> b!6854653 (= e!4133228 tp!1878817)))

(declare-fun b!6854654 () Bool)

(declare-fun tp!1878818 () Bool)

(declare-fun tp!1878819 () Bool)

(assert (=> b!6854654 (= e!4133228 (and tp!1878818 tp!1878819))))

(assert (= (and b!6853066 ((_ is ElementMatch!16677) (regOne!33866 (regTwo!33866 (regOne!33866 r!7292))))) b!6854651))

(assert (= (and b!6853066 ((_ is Concat!25522) (regOne!33866 (regTwo!33866 (regOne!33866 r!7292))))) b!6854652))

(assert (= (and b!6853066 ((_ is Star!16677) (regOne!33866 (regTwo!33866 (regOne!33866 r!7292))))) b!6854653))

(assert (= (and b!6853066 ((_ is Union!16677) (regOne!33866 (regTwo!33866 (regOne!33866 r!7292))))) b!6854654))

(declare-fun b!6854656 () Bool)

(declare-fun e!4133229 () Bool)

(declare-fun tp!1878825 () Bool)

(declare-fun tp!1878821 () Bool)

(assert (=> b!6854656 (= e!4133229 (and tp!1878825 tp!1878821))))

(assert (=> b!6853066 (= tp!1878451 e!4133229)))

(declare-fun b!6854655 () Bool)

(assert (=> b!6854655 (= e!4133229 tp_is_empty!42607)))

(declare-fun b!6854657 () Bool)

(declare-fun tp!1878822 () Bool)

(assert (=> b!6854657 (= e!4133229 tp!1878822)))

(declare-fun b!6854658 () Bool)

(declare-fun tp!1878823 () Bool)

(declare-fun tp!1878824 () Bool)

(assert (=> b!6854658 (= e!4133229 (and tp!1878823 tp!1878824))))

(assert (= (and b!6853066 ((_ is ElementMatch!16677) (regTwo!33866 (regTwo!33866 (regOne!33866 r!7292))))) b!6854655))

(assert (= (and b!6853066 ((_ is Concat!25522) (regTwo!33866 (regTwo!33866 (regOne!33866 r!7292))))) b!6854656))

(assert (= (and b!6853066 ((_ is Star!16677) (regTwo!33866 (regTwo!33866 (regOne!33866 r!7292))))) b!6854657))

(assert (= (and b!6853066 ((_ is Union!16677) (regTwo!33866 (regTwo!33866 (regOne!33866 r!7292))))) b!6854658))

(declare-fun b!6854660 () Bool)

(declare-fun e!4133230 () Bool)

(declare-fun tp!1878830 () Bool)

(declare-fun tp!1878826 () Bool)

(assert (=> b!6854660 (= e!4133230 (and tp!1878830 tp!1878826))))

(assert (=> b!6853123 (= tp!1878523 e!4133230)))

(declare-fun b!6854659 () Bool)

(assert (=> b!6854659 (= e!4133230 tp_is_empty!42607)))

(declare-fun b!6854661 () Bool)

(declare-fun tp!1878827 () Bool)

(assert (=> b!6854661 (= e!4133230 tp!1878827)))

(declare-fun b!6854662 () Bool)

(declare-fun tp!1878828 () Bool)

(declare-fun tp!1878829 () Bool)

(assert (=> b!6854662 (= e!4133230 (and tp!1878828 tp!1878829))))

(assert (= (and b!6853123 ((_ is ElementMatch!16677) (regOne!33867 (reg!17006 (regOne!33867 r!7292))))) b!6854659))

(assert (= (and b!6853123 ((_ is Concat!25522) (regOne!33867 (reg!17006 (regOne!33867 r!7292))))) b!6854660))

(assert (= (and b!6853123 ((_ is Star!16677) (regOne!33867 (reg!17006 (regOne!33867 r!7292))))) b!6854661))

(assert (= (and b!6853123 ((_ is Union!16677) (regOne!33867 (reg!17006 (regOne!33867 r!7292))))) b!6854662))

(declare-fun b!6854664 () Bool)

(declare-fun e!4133231 () Bool)

(declare-fun tp!1878835 () Bool)

(declare-fun tp!1878831 () Bool)

(assert (=> b!6854664 (= e!4133231 (and tp!1878835 tp!1878831))))

(assert (=> b!6853123 (= tp!1878524 e!4133231)))

(declare-fun b!6854663 () Bool)

(assert (=> b!6854663 (= e!4133231 tp_is_empty!42607)))

(declare-fun b!6854665 () Bool)

(declare-fun tp!1878832 () Bool)

(assert (=> b!6854665 (= e!4133231 tp!1878832)))

(declare-fun b!6854666 () Bool)

(declare-fun tp!1878833 () Bool)

(declare-fun tp!1878834 () Bool)

(assert (=> b!6854666 (= e!4133231 (and tp!1878833 tp!1878834))))

(assert (= (and b!6853123 ((_ is ElementMatch!16677) (regTwo!33867 (reg!17006 (regOne!33867 r!7292))))) b!6854663))

(assert (= (and b!6853123 ((_ is Concat!25522) (regTwo!33867 (reg!17006 (regOne!33867 r!7292))))) b!6854664))

(assert (= (and b!6853123 ((_ is Star!16677) (regTwo!33867 (reg!17006 (regOne!33867 r!7292))))) b!6854665))

(assert (= (and b!6853123 ((_ is Union!16677) (regTwo!33867 (reg!17006 (regOne!33867 r!7292))))) b!6854666))

(declare-fun b!6854676 () Bool)

(declare-fun e!4133236 () Bool)

(declare-fun tp!1878840 () Bool)

(declare-fun tp!1878836 () Bool)

(assert (=> b!6854676 (= e!4133236 (and tp!1878840 tp!1878836))))

(assert (=> b!6853068 (= tp!1878453 e!4133236)))

(declare-fun b!6854675 () Bool)

(assert (=> b!6854675 (= e!4133236 tp_is_empty!42607)))

(declare-fun b!6854677 () Bool)

(declare-fun tp!1878837 () Bool)

(assert (=> b!6854677 (= e!4133236 tp!1878837)))

(declare-fun b!6854678 () Bool)

(declare-fun tp!1878838 () Bool)

(declare-fun tp!1878839 () Bool)

(assert (=> b!6854678 (= e!4133236 (and tp!1878838 tp!1878839))))

(assert (= (and b!6853068 ((_ is ElementMatch!16677) (regOne!33867 (regTwo!33866 (regOne!33866 r!7292))))) b!6854675))

(assert (= (and b!6853068 ((_ is Concat!25522) (regOne!33867 (regTwo!33866 (regOne!33866 r!7292))))) b!6854676))

(assert (= (and b!6853068 ((_ is Star!16677) (regOne!33867 (regTwo!33866 (regOne!33866 r!7292))))) b!6854677))

(assert (= (and b!6853068 ((_ is Union!16677) (regOne!33867 (regTwo!33866 (regOne!33866 r!7292))))) b!6854678))

(declare-fun b!6854680 () Bool)

(declare-fun e!4133237 () Bool)

(declare-fun tp!1878845 () Bool)

(declare-fun tp!1878841 () Bool)

(assert (=> b!6854680 (= e!4133237 (and tp!1878845 tp!1878841))))

(assert (=> b!6853068 (= tp!1878454 e!4133237)))

(declare-fun b!6854679 () Bool)

(assert (=> b!6854679 (= e!4133237 tp_is_empty!42607)))

(declare-fun b!6854681 () Bool)

(declare-fun tp!1878842 () Bool)

(assert (=> b!6854681 (= e!4133237 tp!1878842)))

(declare-fun b!6854682 () Bool)

(declare-fun tp!1878843 () Bool)

(declare-fun tp!1878844 () Bool)

(assert (=> b!6854682 (= e!4133237 (and tp!1878843 tp!1878844))))

(assert (= (and b!6853068 ((_ is ElementMatch!16677) (regTwo!33867 (regTwo!33866 (regOne!33866 r!7292))))) b!6854679))

(assert (= (and b!6853068 ((_ is Concat!25522) (regTwo!33867 (regTwo!33866 (regOne!33866 r!7292))))) b!6854680))

(assert (= (and b!6853068 ((_ is Star!16677) (regTwo!33867 (regTwo!33866 (regOne!33866 r!7292))))) b!6854681))

(assert (= (and b!6853068 ((_ is Union!16677) (regTwo!33867 (regTwo!33866 (regOne!33866 r!7292))))) b!6854682))

(declare-fun b!6854684 () Bool)

(declare-fun e!4133238 () Bool)

(declare-fun tp!1878850 () Bool)

(declare-fun tp!1878846 () Bool)

(assert (=> b!6854684 (= e!4133238 (and tp!1878850 tp!1878846))))

(assert (=> b!6853059 (= tp!1878442 e!4133238)))

(declare-fun b!6854683 () Bool)

(assert (=> b!6854683 (= e!4133238 tp_is_empty!42607)))

(declare-fun b!6854685 () Bool)

(declare-fun tp!1878847 () Bool)

(assert (=> b!6854685 (= e!4133238 tp!1878847)))

(declare-fun b!6854686 () Bool)

(declare-fun tp!1878848 () Bool)

(declare-fun tp!1878849 () Bool)

(assert (=> b!6854686 (= e!4133238 (and tp!1878848 tp!1878849))))

(assert (= (and b!6853059 ((_ is ElementMatch!16677) (reg!17006 (regTwo!33867 (regTwo!33866 r!7292))))) b!6854683))

(assert (= (and b!6853059 ((_ is Concat!25522) (reg!17006 (regTwo!33867 (regTwo!33866 r!7292))))) b!6854684))

(assert (= (and b!6853059 ((_ is Star!16677) (reg!17006 (regTwo!33867 (regTwo!33866 r!7292))))) b!6854685))

(assert (= (and b!6853059 ((_ is Union!16677) (reg!17006 (regTwo!33867 (regTwo!33866 r!7292))))) b!6854686))

(declare-fun b!6854690 () Bool)

(declare-fun e!4133240 () Bool)

(declare-fun tp!1878855 () Bool)

(declare-fun tp!1878851 () Bool)

(assert (=> b!6854690 (= e!4133240 (and tp!1878855 tp!1878851))))

(assert (=> b!6853082 (= tp!1878475 e!4133240)))

(declare-fun b!6854689 () Bool)

(assert (=> b!6854689 (= e!4133240 tp_is_empty!42607)))

(declare-fun b!6854691 () Bool)

(declare-fun tp!1878852 () Bool)

(assert (=> b!6854691 (= e!4133240 tp!1878852)))

(declare-fun b!6854692 () Bool)

(declare-fun tp!1878853 () Bool)

(declare-fun tp!1878854 () Bool)

(assert (=> b!6854692 (= e!4133240 (and tp!1878853 tp!1878854))))

(assert (= (and b!6853082 ((_ is ElementMatch!16677) (regOne!33866 (regTwo!33867 (regTwo!33867 r!7292))))) b!6854689))

(assert (= (and b!6853082 ((_ is Concat!25522) (regOne!33866 (regTwo!33867 (regTwo!33867 r!7292))))) b!6854690))

(assert (= (and b!6853082 ((_ is Star!16677) (regOne!33866 (regTwo!33867 (regTwo!33867 r!7292))))) b!6854691))

(assert (= (and b!6853082 ((_ is Union!16677) (regOne!33866 (regTwo!33867 (regTwo!33867 r!7292))))) b!6854692))

(declare-fun b!6854694 () Bool)

(declare-fun e!4133241 () Bool)

(declare-fun tp!1878860 () Bool)

(declare-fun tp!1878856 () Bool)

(assert (=> b!6854694 (= e!4133241 (and tp!1878860 tp!1878856))))

(assert (=> b!6853082 (= tp!1878471 e!4133241)))

(declare-fun b!6854693 () Bool)

(assert (=> b!6854693 (= e!4133241 tp_is_empty!42607)))

(declare-fun b!6854695 () Bool)

(declare-fun tp!1878857 () Bool)

(assert (=> b!6854695 (= e!4133241 tp!1878857)))

(declare-fun b!6854696 () Bool)

(declare-fun tp!1878858 () Bool)

(declare-fun tp!1878859 () Bool)

(assert (=> b!6854696 (= e!4133241 (and tp!1878858 tp!1878859))))

(assert (= (and b!6853082 ((_ is ElementMatch!16677) (regTwo!33866 (regTwo!33867 (regTwo!33867 r!7292))))) b!6854693))

(assert (= (and b!6853082 ((_ is Concat!25522) (regTwo!33866 (regTwo!33867 (regTwo!33867 r!7292))))) b!6854694))

(assert (= (and b!6853082 ((_ is Star!16677) (regTwo!33866 (regTwo!33867 (regTwo!33867 r!7292))))) b!6854695))

(assert (= (and b!6853082 ((_ is Union!16677) (regTwo!33866 (regTwo!33867 (regTwo!33867 r!7292))))) b!6854696))

(declare-fun b!6854707 () Bool)

(declare-fun e!4133249 () Bool)

(declare-fun tp!1878865 () Bool)

(declare-fun tp!1878861 () Bool)

(assert (=> b!6854707 (= e!4133249 (and tp!1878865 tp!1878861))))

(assert (=> b!6853026 (= tp!1878399 e!4133249)))

(declare-fun b!6854706 () Bool)

(assert (=> b!6854706 (= e!4133249 tp_is_empty!42607)))

(declare-fun b!6854708 () Bool)

(declare-fun tp!1878862 () Bool)

(assert (=> b!6854708 (= e!4133249 tp!1878862)))

(declare-fun b!6854709 () Bool)

(declare-fun tp!1878863 () Bool)

(declare-fun tp!1878864 () Bool)

(assert (=> b!6854709 (= e!4133249 (and tp!1878863 tp!1878864))))

(assert (= (and b!6853026 ((_ is ElementMatch!16677) (reg!17006 (regTwo!33866 (reg!17006 r!7292))))) b!6854706))

(assert (= (and b!6853026 ((_ is Concat!25522) (reg!17006 (regTwo!33866 (reg!17006 r!7292))))) b!6854707))

(assert (= (and b!6853026 ((_ is Star!16677) (reg!17006 (regTwo!33866 (reg!17006 r!7292))))) b!6854708))

(assert (= (and b!6853026 ((_ is Union!16677) (reg!17006 (regTwo!33866 (reg!17006 r!7292))))) b!6854709))

(declare-fun b!6854711 () Bool)

(declare-fun e!4133250 () Bool)

(declare-fun tp!1878870 () Bool)

(declare-fun tp!1878866 () Bool)

(assert (=> b!6854711 (= e!4133250 (and tp!1878870 tp!1878866))))

(assert (=> b!6853017 (= tp!1878392 e!4133250)))

(declare-fun b!6854710 () Bool)

(assert (=> b!6854710 (= e!4133250 tp_is_empty!42607)))

(declare-fun b!6854712 () Bool)

(declare-fun tp!1878867 () Bool)

(assert (=> b!6854712 (= e!4133250 tp!1878867)))

(declare-fun b!6854713 () Bool)

(declare-fun tp!1878868 () Bool)

(declare-fun tp!1878869 () Bool)

(assert (=> b!6854713 (= e!4133250 (and tp!1878868 tp!1878869))))

(assert (= (and b!6853017 ((_ is ElementMatch!16677) (regOne!33866 (reg!17006 (regTwo!33867 r!7292))))) b!6854710))

(assert (= (and b!6853017 ((_ is Concat!25522) (regOne!33866 (reg!17006 (regTwo!33867 r!7292))))) b!6854711))

(assert (= (and b!6853017 ((_ is Star!16677) (regOne!33866 (reg!17006 (regTwo!33867 r!7292))))) b!6854712))

(assert (= (and b!6853017 ((_ is Union!16677) (regOne!33866 (reg!17006 (regTwo!33867 r!7292))))) b!6854713))

(declare-fun b!6854715 () Bool)

(declare-fun e!4133251 () Bool)

(declare-fun tp!1878875 () Bool)

(declare-fun tp!1878871 () Bool)

(assert (=> b!6854715 (= e!4133251 (and tp!1878875 tp!1878871))))

(assert (=> b!6853017 (= tp!1878388 e!4133251)))

(declare-fun b!6854714 () Bool)

(assert (=> b!6854714 (= e!4133251 tp_is_empty!42607)))

(declare-fun b!6854716 () Bool)

(declare-fun tp!1878872 () Bool)

(assert (=> b!6854716 (= e!4133251 tp!1878872)))

(declare-fun b!6854717 () Bool)

(declare-fun tp!1878873 () Bool)

(declare-fun tp!1878874 () Bool)

(assert (=> b!6854717 (= e!4133251 (and tp!1878873 tp!1878874))))

(assert (= (and b!6853017 ((_ is ElementMatch!16677) (regTwo!33866 (reg!17006 (regTwo!33867 r!7292))))) b!6854714))

(assert (= (and b!6853017 ((_ is Concat!25522) (regTwo!33866 (reg!17006 (regTwo!33867 r!7292))))) b!6854715))

(assert (= (and b!6853017 ((_ is Star!16677) (regTwo!33866 (reg!17006 (regTwo!33867 r!7292))))) b!6854716))

(assert (= (and b!6853017 ((_ is Union!16677) (regTwo!33866 (reg!17006 (regTwo!33867 r!7292))))) b!6854717))

(declare-fun b!6854718 () Bool)

(declare-fun e!4133252 () Bool)

(declare-fun tp!1878876 () Bool)

(assert (=> b!6854718 (= e!4133252 (and tp_is_empty!42607 tp!1878876))))

(assert (=> b!6853109 (= tp!1878506 e!4133252)))

(assert (= (and b!6853109 ((_ is Cons!66208) (t!380075 (t!380075 (t!380075 s!2326))))) b!6854718))

(declare-fun b!6854720 () Bool)

(declare-fun e!4133254 () Bool)

(declare-fun tp!1878877 () Bool)

(assert (=> b!6854720 (= e!4133254 tp!1878877)))

(declare-fun b!6854719 () Bool)

(declare-fun e!4133253 () Bool)

(declare-fun tp!1878878 () Bool)

(assert (=> b!6854719 (= e!4133253 (and (inv!84939 (h!72655 (t!380074 (t!380074 (t!380074 zl!343))))) e!4133254 tp!1878878))))

(assert (=> b!6853042 (= tp!1878423 e!4133253)))

(assert (= b!6854719 b!6854720))

(assert (= (and b!6853042 ((_ is Cons!66207) (t!380074 (t!380074 (t!380074 zl!343))))) b!6854719))

(declare-fun m!7592118 () Bool)

(assert (=> b!6854719 m!7592118))

(declare-fun b!6854722 () Bool)

(declare-fun e!4133255 () Bool)

(declare-fun tp!1878883 () Bool)

(declare-fun tp!1878879 () Bool)

(assert (=> b!6854722 (= e!4133255 (and tp!1878883 tp!1878879))))

(assert (=> b!6853084 (= tp!1878473 e!4133255)))

(declare-fun b!6854721 () Bool)

(assert (=> b!6854721 (= e!4133255 tp_is_empty!42607)))

(declare-fun b!6854723 () Bool)

(declare-fun tp!1878880 () Bool)

(assert (=> b!6854723 (= e!4133255 tp!1878880)))

(declare-fun b!6854724 () Bool)

(declare-fun tp!1878881 () Bool)

(declare-fun tp!1878882 () Bool)

(assert (=> b!6854724 (= e!4133255 (and tp!1878881 tp!1878882))))

(assert (= (and b!6853084 ((_ is ElementMatch!16677) (regOne!33867 (regTwo!33867 (regTwo!33867 r!7292))))) b!6854721))

(assert (= (and b!6853084 ((_ is Concat!25522) (regOne!33867 (regTwo!33867 (regTwo!33867 r!7292))))) b!6854722))

(assert (= (and b!6853084 ((_ is Star!16677) (regOne!33867 (regTwo!33867 (regTwo!33867 r!7292))))) b!6854723))

(assert (= (and b!6853084 ((_ is Union!16677) (regOne!33867 (regTwo!33867 (regTwo!33867 r!7292))))) b!6854724))

(declare-fun b!6854726 () Bool)

(declare-fun e!4133256 () Bool)

(declare-fun tp!1878888 () Bool)

(declare-fun tp!1878884 () Bool)

(assert (=> b!6854726 (= e!4133256 (and tp!1878888 tp!1878884))))

(assert (=> b!6853084 (= tp!1878474 e!4133256)))

(declare-fun b!6854725 () Bool)

(assert (=> b!6854725 (= e!4133256 tp_is_empty!42607)))

(declare-fun b!6854727 () Bool)

(declare-fun tp!1878885 () Bool)

(assert (=> b!6854727 (= e!4133256 tp!1878885)))

(declare-fun b!6854728 () Bool)

(declare-fun tp!1878886 () Bool)

(declare-fun tp!1878887 () Bool)

(assert (=> b!6854728 (= e!4133256 (and tp!1878886 tp!1878887))))

(assert (= (and b!6853084 ((_ is ElementMatch!16677) (regTwo!33867 (regTwo!33867 (regTwo!33867 r!7292))))) b!6854725))

(assert (= (and b!6853084 ((_ is Concat!25522) (regTwo!33867 (regTwo!33867 (regTwo!33867 r!7292))))) b!6854726))

(assert (= (and b!6853084 ((_ is Star!16677) (regTwo!33867 (regTwo!33867 (regTwo!33867 r!7292))))) b!6854727))

(assert (= (and b!6853084 ((_ is Union!16677) (regTwo!33867 (regTwo!33867 (regTwo!33867 r!7292))))) b!6854728))

(declare-fun b!6854730 () Bool)

(declare-fun e!4133257 () Bool)

(declare-fun tp!1878893 () Bool)

(declare-fun tp!1878889 () Bool)

(assert (=> b!6854730 (= e!4133257 (and tp!1878893 tp!1878889))))

(assert (=> b!6853130 (= tp!1878532 e!4133257)))

(declare-fun b!6854729 () Bool)

(assert (=> b!6854729 (= e!4133257 tp_is_empty!42607)))

(declare-fun b!6854731 () Bool)

(declare-fun tp!1878890 () Bool)

(assert (=> b!6854731 (= e!4133257 tp!1878890)))

(declare-fun b!6854732 () Bool)

(declare-fun tp!1878891 () Bool)

(declare-fun tp!1878892 () Bool)

(assert (=> b!6854732 (= e!4133257 (and tp!1878891 tp!1878892))))

(assert (= (and b!6853130 ((_ is ElementMatch!16677) (reg!17006 (regTwo!33867 (regOne!33867 r!7292))))) b!6854729))

(assert (= (and b!6853130 ((_ is Concat!25522) (reg!17006 (regTwo!33867 (regOne!33867 r!7292))))) b!6854730))

(assert (= (and b!6853130 ((_ is Star!16677) (reg!17006 (regTwo!33867 (regOne!33867 r!7292))))) b!6854731))

(assert (= (and b!6853130 ((_ is Union!16677) (reg!17006 (regTwo!33867 (regOne!33867 r!7292))))) b!6854732))

(declare-fun b!6854734 () Bool)

(declare-fun e!4133258 () Bool)

(declare-fun tp!1878898 () Bool)

(declare-fun tp!1878894 () Bool)

(assert (=> b!6854734 (= e!4133258 (and tp!1878898 tp!1878894))))

(assert (=> b!6853075 (= tp!1878462 e!4133258)))

(declare-fun b!6854733 () Bool)

(assert (=> b!6854733 (= e!4133258 tp_is_empty!42607)))

(declare-fun b!6854735 () Bool)

(declare-fun tp!1878895 () Bool)

(assert (=> b!6854735 (= e!4133258 tp!1878895)))

(declare-fun b!6854736 () Bool)

(declare-fun tp!1878896 () Bool)

(declare-fun tp!1878897 () Bool)

(assert (=> b!6854736 (= e!4133258 (and tp!1878896 tp!1878897))))

(assert (= (and b!6853075 ((_ is ElementMatch!16677) (reg!17006 (regTwo!33867 (reg!17006 r!7292))))) b!6854733))

(assert (= (and b!6853075 ((_ is Concat!25522) (reg!17006 (regTwo!33867 (reg!17006 r!7292))))) b!6854734))

(assert (= (and b!6853075 ((_ is Star!16677) (reg!17006 (regTwo!33867 (reg!17006 r!7292))))) b!6854735))

(assert (= (and b!6853075 ((_ is Union!16677) (reg!17006 (regTwo!33867 (reg!17006 r!7292))))) b!6854736))

(declare-fun b!6854738 () Bool)

(declare-fun e!4133259 () Bool)

(declare-fun tp!1878903 () Bool)

(declare-fun tp!1878899 () Bool)

(assert (=> b!6854738 (= e!4133259 (and tp!1878903 tp!1878899))))

(assert (=> b!6853121 (= tp!1878525 e!4133259)))

(declare-fun b!6854737 () Bool)

(assert (=> b!6854737 (= e!4133259 tp_is_empty!42607)))

(declare-fun b!6854739 () Bool)

(declare-fun tp!1878900 () Bool)

(assert (=> b!6854739 (= e!4133259 tp!1878900)))

(declare-fun b!6854740 () Bool)

(declare-fun tp!1878901 () Bool)

(declare-fun tp!1878902 () Bool)

(assert (=> b!6854740 (= e!4133259 (and tp!1878901 tp!1878902))))

(assert (= (and b!6853121 ((_ is ElementMatch!16677) (regOne!33866 (reg!17006 (regOne!33867 r!7292))))) b!6854737))

(assert (= (and b!6853121 ((_ is Concat!25522) (regOne!33866 (reg!17006 (regOne!33867 r!7292))))) b!6854738))

(assert (= (and b!6853121 ((_ is Star!16677) (regOne!33866 (reg!17006 (regOne!33867 r!7292))))) b!6854739))

(assert (= (and b!6853121 ((_ is Union!16677) (regOne!33866 (reg!17006 (regOne!33867 r!7292))))) b!6854740))

(declare-fun b!6854742 () Bool)

(declare-fun e!4133260 () Bool)

(declare-fun tp!1878908 () Bool)

(declare-fun tp!1878904 () Bool)

(assert (=> b!6854742 (= e!4133260 (and tp!1878908 tp!1878904))))

(assert (=> b!6853121 (= tp!1878521 e!4133260)))

(declare-fun b!6854741 () Bool)

(assert (=> b!6854741 (= e!4133260 tp_is_empty!42607)))

(declare-fun b!6854743 () Bool)

(declare-fun tp!1878905 () Bool)

(assert (=> b!6854743 (= e!4133260 tp!1878905)))

(declare-fun b!6854744 () Bool)

(declare-fun tp!1878906 () Bool)

(declare-fun tp!1878907 () Bool)

(assert (=> b!6854744 (= e!4133260 (and tp!1878906 tp!1878907))))

(assert (= (and b!6853121 ((_ is ElementMatch!16677) (regTwo!33866 (reg!17006 (regOne!33867 r!7292))))) b!6854741))

(assert (= (and b!6853121 ((_ is Concat!25522) (regTwo!33866 (reg!17006 (regOne!33867 r!7292))))) b!6854742))

(assert (= (and b!6853121 ((_ is Star!16677) (regTwo!33866 (reg!17006 (regOne!33867 r!7292))))) b!6854743))

(assert (= (and b!6853121 ((_ is Union!16677) (regTwo!33866 (reg!17006 (regOne!33867 r!7292))))) b!6854744))

(declare-fun b!6854746 () Bool)

(declare-fun e!4133261 () Bool)

(declare-fun tp!1878913 () Bool)

(declare-fun tp!1878909 () Bool)

(assert (=> b!6854746 (= e!4133261 (and tp!1878913 tp!1878909))))

(assert (=> b!6853103 (= tp!1878497 e!4133261)))

(declare-fun b!6854745 () Bool)

(assert (=> b!6854745 (= e!4133261 tp_is_empty!42607)))

(declare-fun b!6854747 () Bool)

(declare-fun tp!1878910 () Bool)

(assert (=> b!6854747 (= e!4133261 tp!1878910)))

(declare-fun b!6854748 () Bool)

(declare-fun tp!1878911 () Bool)

(declare-fun tp!1878912 () Bool)

(assert (=> b!6854748 (= e!4133261 (and tp!1878911 tp!1878912))))

(assert (= (and b!6853103 ((_ is ElementMatch!16677) (reg!17006 (regTwo!33867 (regOne!33866 r!7292))))) b!6854745))

(assert (= (and b!6853103 ((_ is Concat!25522) (reg!17006 (regTwo!33867 (regOne!33866 r!7292))))) b!6854746))

(assert (= (and b!6853103 ((_ is Star!16677) (reg!17006 (regTwo!33867 (regOne!33866 r!7292))))) b!6854747))

(assert (= (and b!6853103 ((_ is Union!16677) (reg!17006 (regTwo!33867 (regOne!33866 r!7292))))) b!6854748))

(declare-fun b!6854750 () Bool)

(declare-fun e!4133262 () Bool)

(declare-fun tp!1878918 () Bool)

(declare-fun tp!1878914 () Bool)

(assert (=> b!6854750 (= e!4133262 (and tp!1878918 tp!1878914))))

(assert (=> b!6853094 (= tp!1878490 e!4133262)))

(declare-fun b!6854749 () Bool)

(assert (=> b!6854749 (= e!4133262 tp_is_empty!42607)))

(declare-fun b!6854751 () Bool)

(declare-fun tp!1878915 () Bool)

(assert (=> b!6854751 (= e!4133262 tp!1878915)))

(declare-fun b!6854752 () Bool)

(declare-fun tp!1878916 () Bool)

(declare-fun tp!1878917 () Bool)

(assert (=> b!6854752 (= e!4133262 (and tp!1878916 tp!1878917))))

(assert (= (and b!6853094 ((_ is ElementMatch!16677) (regOne!33866 (regTwo!33866 (regOne!33867 r!7292))))) b!6854749))

(assert (= (and b!6853094 ((_ is Concat!25522) (regOne!33866 (regTwo!33866 (regOne!33867 r!7292))))) b!6854750))

(assert (= (and b!6853094 ((_ is Star!16677) (regOne!33866 (regTwo!33866 (regOne!33867 r!7292))))) b!6854751))

(assert (= (and b!6853094 ((_ is Union!16677) (regOne!33866 (regTwo!33866 (regOne!33867 r!7292))))) b!6854752))

(declare-fun b!6854754 () Bool)

(declare-fun e!4133263 () Bool)

(declare-fun tp!1878923 () Bool)

(declare-fun tp!1878919 () Bool)

(assert (=> b!6854754 (= e!4133263 (and tp!1878923 tp!1878919))))

(assert (=> b!6853094 (= tp!1878486 e!4133263)))

(declare-fun b!6854753 () Bool)

(assert (=> b!6854753 (= e!4133263 tp_is_empty!42607)))

(declare-fun b!6854755 () Bool)

(declare-fun tp!1878920 () Bool)

(assert (=> b!6854755 (= e!4133263 tp!1878920)))

(declare-fun b!6854756 () Bool)

(declare-fun tp!1878921 () Bool)

(declare-fun tp!1878922 () Bool)

(assert (=> b!6854756 (= e!4133263 (and tp!1878921 tp!1878922))))

(assert (= (and b!6853094 ((_ is ElementMatch!16677) (regTwo!33866 (regTwo!33866 (regOne!33867 r!7292))))) b!6854753))

(assert (= (and b!6853094 ((_ is Concat!25522) (regTwo!33866 (regTwo!33866 (regOne!33867 r!7292))))) b!6854754))

(assert (= (and b!6853094 ((_ is Star!16677) (regTwo!33866 (regTwo!33866 (regOne!33867 r!7292))))) b!6854755))

(assert (= (and b!6853094 ((_ is Union!16677) (regTwo!33866 (regTwo!33866 (regOne!33867 r!7292))))) b!6854756))

(declare-fun b!6854758 () Bool)

(declare-fun e!4133264 () Bool)

(declare-fun tp!1878928 () Bool)

(declare-fun tp!1878924 () Bool)

(assert (=> b!6854758 (= e!4133264 (and tp!1878928 tp!1878924))))

(assert (=> b!6853029 (= tp!1878407 e!4133264)))

(declare-fun b!6854757 () Bool)

(assert (=> b!6854757 (= e!4133264 tp_is_empty!42607)))

(declare-fun b!6854759 () Bool)

(declare-fun tp!1878925 () Bool)

(assert (=> b!6854759 (= e!4133264 tp!1878925)))

(declare-fun b!6854760 () Bool)

(declare-fun tp!1878926 () Bool)

(declare-fun tp!1878927 () Bool)

(assert (=> b!6854760 (= e!4133264 (and tp!1878926 tp!1878927))))

(assert (= (and b!6853029 ((_ is ElementMatch!16677) (regOne!33866 (h!72654 (exprs!6561 setElem!47097))))) b!6854757))

(assert (= (and b!6853029 ((_ is Concat!25522) (regOne!33866 (h!72654 (exprs!6561 setElem!47097))))) b!6854758))

(assert (= (and b!6853029 ((_ is Star!16677) (regOne!33866 (h!72654 (exprs!6561 setElem!47097))))) b!6854759))

(assert (= (and b!6853029 ((_ is Union!16677) (regOne!33866 (h!72654 (exprs!6561 setElem!47097))))) b!6854760))

(declare-fun b!6854762 () Bool)

(declare-fun e!4133265 () Bool)

(declare-fun tp!1878933 () Bool)

(declare-fun tp!1878929 () Bool)

(assert (=> b!6854762 (= e!4133265 (and tp!1878933 tp!1878929))))

(assert (=> b!6853029 (= tp!1878403 e!4133265)))

(declare-fun b!6854761 () Bool)

(assert (=> b!6854761 (= e!4133265 tp_is_empty!42607)))

(declare-fun b!6854763 () Bool)

(declare-fun tp!1878930 () Bool)

(assert (=> b!6854763 (= e!4133265 tp!1878930)))

(declare-fun b!6854764 () Bool)

(declare-fun tp!1878931 () Bool)

(declare-fun tp!1878932 () Bool)

(assert (=> b!6854764 (= e!4133265 (and tp!1878931 tp!1878932))))

(assert (= (and b!6853029 ((_ is ElementMatch!16677) (regTwo!33866 (h!72654 (exprs!6561 setElem!47097))))) b!6854761))

(assert (= (and b!6853029 ((_ is Concat!25522) (regTwo!33866 (h!72654 (exprs!6561 setElem!47097))))) b!6854762))

(assert (= (and b!6853029 ((_ is Star!16677) (regTwo!33866 (h!72654 (exprs!6561 setElem!47097))))) b!6854763))

(assert (= (and b!6853029 ((_ is Union!16677) (regTwo!33866 (h!72654 (exprs!6561 setElem!47097))))) b!6854764))

(declare-fun b!6854765 () Bool)

(declare-fun e!4133266 () Bool)

(declare-fun tp!1878934 () Bool)

(declare-fun tp!1878935 () Bool)

(assert (=> b!6854765 (= e!4133266 (and tp!1878934 tp!1878935))))

(assert (=> b!6853118 (= tp!1878518 e!4133266)))

(assert (= (and b!6853118 ((_ is Cons!66206) (exprs!6561 setElem!47105))) b!6854765))

(declare-fun b!6854767 () Bool)

(declare-fun e!4133267 () Bool)

(declare-fun tp!1878940 () Bool)

(declare-fun tp!1878936 () Bool)

(assert (=> b!6854767 (= e!4133267 (and tp!1878940 tp!1878936))))

(assert (=> b!6853112 (= tp!1878508 e!4133267)))

(declare-fun b!6854766 () Bool)

(assert (=> b!6854766 (= e!4133267 tp_is_empty!42607)))

(declare-fun b!6854768 () Bool)

(declare-fun tp!1878937 () Bool)

(assert (=> b!6854768 (= e!4133267 tp!1878937)))

(declare-fun b!6854769 () Bool)

(declare-fun tp!1878938 () Bool)

(declare-fun tp!1878939 () Bool)

(assert (=> b!6854769 (= e!4133267 (and tp!1878938 tp!1878939))))

(assert (= (and b!6853112 ((_ is ElementMatch!16677) (reg!17006 (regOne!33866 (regTwo!33866 r!7292))))) b!6854766))

(assert (= (and b!6853112 ((_ is Concat!25522) (reg!17006 (regOne!33866 (regTwo!33866 r!7292))))) b!6854767))

(assert (= (and b!6853112 ((_ is Star!16677) (reg!17006 (regOne!33866 (regTwo!33866 r!7292))))) b!6854768))

(assert (= (and b!6853112 ((_ is Union!16677) (reg!17006 (regOne!33866 (regTwo!33866 r!7292))))) b!6854769))

(declare-fun b!6854771 () Bool)

(declare-fun e!4133268 () Bool)

(declare-fun tp!1878945 () Bool)

(declare-fun tp!1878941 () Bool)

(assert (=> b!6854771 (= e!4133268 (and tp!1878945 tp!1878941))))

(assert (=> b!6853060 (= tp!1878443 e!4133268)))

(declare-fun b!6854770 () Bool)

(assert (=> b!6854770 (= e!4133268 tp_is_empty!42607)))

(declare-fun b!6854772 () Bool)

(declare-fun tp!1878942 () Bool)

(assert (=> b!6854772 (= e!4133268 tp!1878942)))

(declare-fun b!6854773 () Bool)

(declare-fun tp!1878943 () Bool)

(declare-fun tp!1878944 () Bool)

(assert (=> b!6854773 (= e!4133268 (and tp!1878943 tp!1878944))))

(assert (= (and b!6853060 ((_ is ElementMatch!16677) (regOne!33867 (regTwo!33867 (regTwo!33866 r!7292))))) b!6854770))

(assert (= (and b!6853060 ((_ is Concat!25522) (regOne!33867 (regTwo!33867 (regTwo!33866 r!7292))))) b!6854771))

(assert (= (and b!6853060 ((_ is Star!16677) (regOne!33867 (regTwo!33867 (regTwo!33866 r!7292))))) b!6854772))

(assert (= (and b!6853060 ((_ is Union!16677) (regOne!33867 (regTwo!33867 (regTwo!33866 r!7292))))) b!6854773))

(declare-fun b!6854775 () Bool)

(declare-fun e!4133269 () Bool)

(declare-fun tp!1878950 () Bool)

(declare-fun tp!1878946 () Bool)

(assert (=> b!6854775 (= e!4133269 (and tp!1878950 tp!1878946))))

(assert (=> b!6853060 (= tp!1878444 e!4133269)))

(declare-fun b!6854774 () Bool)

(assert (=> b!6854774 (= e!4133269 tp_is_empty!42607)))

(declare-fun b!6854776 () Bool)

(declare-fun tp!1878947 () Bool)

(assert (=> b!6854776 (= e!4133269 tp!1878947)))

(declare-fun b!6854777 () Bool)

(declare-fun tp!1878948 () Bool)

(declare-fun tp!1878949 () Bool)

(assert (=> b!6854777 (= e!4133269 (and tp!1878948 tp!1878949))))

(assert (= (and b!6853060 ((_ is ElementMatch!16677) (regTwo!33867 (regTwo!33867 (regTwo!33866 r!7292))))) b!6854774))

(assert (= (and b!6853060 ((_ is Concat!25522) (regTwo!33867 (regTwo!33867 (regTwo!33866 r!7292))))) b!6854775))

(assert (= (and b!6853060 ((_ is Star!16677) (regTwo!33867 (regTwo!33867 (regTwo!33866 r!7292))))) b!6854776))

(assert (= (and b!6853060 ((_ is Union!16677) (regTwo!33867 (regTwo!33867 (regTwo!33866 r!7292))))) b!6854777))

(declare-fun b!6854779 () Bool)

(declare-fun e!4133270 () Bool)

(declare-fun tp!1878955 () Bool)

(declare-fun tp!1878951 () Bool)

(assert (=> b!6854779 (= e!4133270 (and tp!1878955 tp!1878951))))

(assert (=> b!6853051 (= tp!1878432 e!4133270)))

(declare-fun b!6854778 () Bool)

(assert (=> b!6854778 (= e!4133270 tp_is_empty!42607)))

(declare-fun b!6854780 () Bool)

(declare-fun tp!1878952 () Bool)

(assert (=> b!6854780 (= e!4133270 tp!1878952)))

(declare-fun b!6854781 () Bool)

(declare-fun tp!1878953 () Bool)

(declare-fun tp!1878954 () Bool)

(assert (=> b!6854781 (= e!4133270 (and tp!1878953 tp!1878954))))

(assert (= (and b!6853051 ((_ is ElementMatch!16677) (reg!17006 (reg!17006 (regTwo!33866 r!7292))))) b!6854778))

(assert (= (and b!6853051 ((_ is Concat!25522) (reg!17006 (reg!17006 (regTwo!33866 r!7292))))) b!6854779))

(assert (= (and b!6853051 ((_ is Star!16677) (reg!17006 (reg!17006 (regTwo!33866 r!7292))))) b!6854780))

(assert (= (and b!6853051 ((_ is Union!16677) (reg!17006 (reg!17006 (regTwo!33866 r!7292))))) b!6854781))

(declare-fun b!6854792 () Bool)

(declare-fun e!4133278 () Bool)

(declare-fun tp!1878960 () Bool)

(declare-fun tp!1878956 () Bool)

(assert (=> b!6854792 (= e!4133278 (and tp!1878960 tp!1878956))))

(assert (=> b!6853036 (= tp!1878413 e!4133278)))

(declare-fun b!6854791 () Bool)

(assert (=> b!6854791 (= e!4133278 tp_is_empty!42607)))

(declare-fun b!6854793 () Bool)

(declare-fun tp!1878957 () Bool)

(assert (=> b!6854793 (= e!4133278 tp!1878957)))

(declare-fun b!6854794 () Bool)

(declare-fun tp!1878958 () Bool)

(declare-fun tp!1878959 () Bool)

(assert (=> b!6854794 (= e!4133278 (and tp!1878958 tp!1878959))))

(assert (= (and b!6853036 ((_ is ElementMatch!16677) (reg!17006 (regOne!33866 (regTwo!33867 r!7292))))) b!6854791))

(assert (= (and b!6853036 ((_ is Concat!25522) (reg!17006 (regOne!33866 (regTwo!33867 r!7292))))) b!6854792))

(assert (= (and b!6853036 ((_ is Star!16677) (reg!17006 (regOne!33866 (regTwo!33867 r!7292))))) b!6854793))

(assert (= (and b!6853036 ((_ is Union!16677) (reg!17006 (regOne!33866 (regTwo!33867 r!7292))))) b!6854794))

(declare-fun b!6854796 () Bool)

(declare-fun e!4133280 () Bool)

(declare-fun tp!1878961 () Bool)

(assert (=> b!6854796 (= e!4133280 tp!1878961)))

(declare-fun b!6854795 () Bool)

(declare-fun tp!1878962 () Bool)

(declare-fun e!4133279 () Bool)

(assert (=> b!6854795 (= e!4133279 (and (inv!84939 (h!72655 (t!380074 res!2796871))) e!4133280 tp!1878962))))

(assert (=> b!6852936 (= tp!1878386 e!4133279)))

(assert (= b!6854795 b!6854796))

(assert (= (and b!6852936 ((_ is Cons!66207) (t!380074 res!2796871))) b!6854795))

(declare-fun m!7592124 () Bool)

(assert (=> b!6854795 m!7592124))

(declare-fun b!6854798 () Bool)

(declare-fun e!4133281 () Bool)

(declare-fun tp!1878967 () Bool)

(declare-fun tp!1878963 () Bool)

(assert (=> b!6854798 (= e!4133281 (and tp!1878967 tp!1878963))))

(assert (=> b!6853080 (= tp!1878468 e!4133281)))

(declare-fun b!6854797 () Bool)

(assert (=> b!6854797 (= e!4133281 tp_is_empty!42607)))

(declare-fun b!6854799 () Bool)

(declare-fun tp!1878964 () Bool)

(assert (=> b!6854799 (= e!4133281 tp!1878964)))

(declare-fun b!6854800 () Bool)

(declare-fun tp!1878965 () Bool)

(declare-fun tp!1878966 () Bool)

(assert (=> b!6854800 (= e!4133281 (and tp!1878965 tp!1878966))))

(assert (= (and b!6853080 ((_ is ElementMatch!16677) (regOne!33867 (regOne!33867 (regTwo!33867 r!7292))))) b!6854797))

(assert (= (and b!6853080 ((_ is Concat!25522) (regOne!33867 (regOne!33867 (regTwo!33867 r!7292))))) b!6854798))

(assert (= (and b!6853080 ((_ is Star!16677) (regOne!33867 (regOne!33867 (regTwo!33867 r!7292))))) b!6854799))

(assert (= (and b!6853080 ((_ is Union!16677) (regOne!33867 (regOne!33867 (regTwo!33867 r!7292))))) b!6854800))

(declare-fun b!6854802 () Bool)

(declare-fun e!4133282 () Bool)

(declare-fun tp!1878972 () Bool)

(declare-fun tp!1878968 () Bool)

(assert (=> b!6854802 (= e!4133282 (and tp!1878972 tp!1878968))))

(assert (=> b!6853080 (= tp!1878469 e!4133282)))

(declare-fun b!6854801 () Bool)

(assert (=> b!6854801 (= e!4133282 tp_is_empty!42607)))

(declare-fun b!6854803 () Bool)

(declare-fun tp!1878969 () Bool)

(assert (=> b!6854803 (= e!4133282 tp!1878969)))

(declare-fun b!6854804 () Bool)

(declare-fun tp!1878970 () Bool)

(declare-fun tp!1878971 () Bool)

(assert (=> b!6854804 (= e!4133282 (and tp!1878970 tp!1878971))))

(assert (= (and b!6853080 ((_ is ElementMatch!16677) (regTwo!33867 (regOne!33867 (regTwo!33867 r!7292))))) b!6854801))

(assert (= (and b!6853080 ((_ is Concat!25522) (regTwo!33867 (regOne!33867 (regTwo!33867 r!7292))))) b!6854802))

(assert (= (and b!6853080 ((_ is Star!16677) (regTwo!33867 (regOne!33867 (regTwo!33867 r!7292))))) b!6854803))

(assert (= (and b!6853080 ((_ is Union!16677) (regTwo!33867 (regOne!33867 (regTwo!33867 r!7292))))) b!6854804))

(declare-fun b!6854816 () Bool)

(declare-fun e!4133289 () Bool)

(declare-fun tp!1878977 () Bool)

(declare-fun tp!1878973 () Bool)

(assert (=> b!6854816 (= e!4133289 (and tp!1878977 tp!1878973))))

(assert (=> b!6853126 (= tp!1878527 e!4133289)))

(declare-fun b!6854815 () Bool)

(assert (=> b!6854815 (= e!4133289 tp_is_empty!42607)))

(declare-fun b!6854817 () Bool)

(declare-fun tp!1878974 () Bool)

(assert (=> b!6854817 (= e!4133289 tp!1878974)))

(declare-fun b!6854818 () Bool)

(declare-fun tp!1878975 () Bool)

(declare-fun tp!1878976 () Bool)

(assert (=> b!6854818 (= e!4133289 (and tp!1878975 tp!1878976))))

(assert (= (and b!6853126 ((_ is ElementMatch!16677) (reg!17006 (regOne!33867 (regOne!33867 r!7292))))) b!6854815))

(assert (= (and b!6853126 ((_ is Concat!25522) (reg!17006 (regOne!33867 (regOne!33867 r!7292))))) b!6854816))

(assert (= (and b!6853126 ((_ is Star!16677) (reg!17006 (regOne!33867 (regOne!33867 r!7292))))) b!6854817))

(assert (= (and b!6853126 ((_ is Union!16677) (reg!17006 (regOne!33867 (regOne!33867 r!7292))))) b!6854818))

(declare-fun b!6854820 () Bool)

(declare-fun e!4133290 () Bool)

(declare-fun tp!1878982 () Bool)

(declare-fun tp!1878978 () Bool)

(assert (=> b!6854820 (= e!4133290 (and tp!1878982 tp!1878978))))

(assert (=> b!6853071 (= tp!1878457 e!4133290)))

(declare-fun b!6854819 () Bool)

(assert (=> b!6854819 (= e!4133290 tp_is_empty!42607)))

(declare-fun b!6854821 () Bool)

(declare-fun tp!1878979 () Bool)

(assert (=> b!6854821 (= e!4133290 tp!1878979)))

(declare-fun b!6854822 () Bool)

(declare-fun tp!1878980 () Bool)

(declare-fun tp!1878981 () Bool)

(assert (=> b!6854822 (= e!4133290 (and tp!1878980 tp!1878981))))

(assert (= (and b!6853071 ((_ is ElementMatch!16677) (reg!17006 (regOne!33867 (reg!17006 r!7292))))) b!6854819))

(assert (= (and b!6853071 ((_ is Concat!25522) (reg!17006 (regOne!33867 (reg!17006 r!7292))))) b!6854820))

(assert (= (and b!6853071 ((_ is Star!16677) (reg!17006 (regOne!33867 (reg!17006 r!7292))))) b!6854821))

(assert (= (and b!6853071 ((_ is Union!16677) (reg!17006 (regOne!33867 (reg!17006 r!7292))))) b!6854822))

(declare-fun b!6854824 () Bool)

(declare-fun e!4133291 () Bool)

(declare-fun tp!1878987 () Bool)

(declare-fun tp!1878983 () Bool)

(assert (=> b!6854824 (= e!4133291 (and tp!1878987 tp!1878983))))

(assert (=> b!6853062 (= tp!1878450 e!4133291)))

(declare-fun b!6854823 () Bool)

(assert (=> b!6854823 (= e!4133291 tp_is_empty!42607)))

(declare-fun b!6854825 () Bool)

(declare-fun tp!1878984 () Bool)

(assert (=> b!6854825 (= e!4133291 tp!1878984)))

(declare-fun b!6854826 () Bool)

(declare-fun tp!1878985 () Bool)

(declare-fun tp!1878986 () Bool)

(assert (=> b!6854826 (= e!4133291 (and tp!1878985 tp!1878986))))

(assert (= (and b!6853062 ((_ is ElementMatch!16677) (regOne!33866 (regOne!33866 (regOne!33866 r!7292))))) b!6854823))

(assert (= (and b!6853062 ((_ is Concat!25522) (regOne!33866 (regOne!33866 (regOne!33866 r!7292))))) b!6854824))

(assert (= (and b!6853062 ((_ is Star!16677) (regOne!33866 (regOne!33866 (regOne!33866 r!7292))))) b!6854825))

(assert (= (and b!6853062 ((_ is Union!16677) (regOne!33866 (regOne!33866 (regOne!33866 r!7292))))) b!6854826))

(declare-fun b!6854828 () Bool)

(declare-fun e!4133292 () Bool)

(declare-fun tp!1878992 () Bool)

(declare-fun tp!1878988 () Bool)

(assert (=> b!6854828 (= e!4133292 (and tp!1878992 tp!1878988))))

(assert (=> b!6853062 (= tp!1878446 e!4133292)))

(declare-fun b!6854827 () Bool)

(assert (=> b!6854827 (= e!4133292 tp_is_empty!42607)))

(declare-fun b!6854829 () Bool)

(declare-fun tp!1878989 () Bool)

(assert (=> b!6854829 (= e!4133292 tp!1878989)))

(declare-fun b!6854830 () Bool)

(declare-fun tp!1878990 () Bool)

(declare-fun tp!1878991 () Bool)

(assert (=> b!6854830 (= e!4133292 (and tp!1878990 tp!1878991))))

(assert (= (and b!6853062 ((_ is ElementMatch!16677) (regTwo!33866 (regOne!33866 (regOne!33866 r!7292))))) b!6854827))

(assert (= (and b!6853062 ((_ is Concat!25522) (regTwo!33866 (regOne!33866 (regOne!33866 r!7292))))) b!6854828))

(assert (= (and b!6853062 ((_ is Star!16677) (regTwo!33866 (regOne!33866 (regOne!33866 r!7292))))) b!6854829))

(assert (= (and b!6853062 ((_ is Union!16677) (regTwo!33866 (regOne!33866 (regOne!33866 r!7292))))) b!6854830))

(declare-fun b!6854832 () Bool)

(declare-fun e!4133293 () Bool)

(declare-fun tp!1878997 () Bool)

(declare-fun tp!1878993 () Bool)

(assert (=> b!6854832 (= e!4133293 (and tp!1878997 tp!1878993))))

(assert (=> b!6853047 (= tp!1878426 e!4133293)))

(declare-fun b!6854831 () Bool)

(assert (=> b!6854831 (= e!4133293 tp_is_empty!42607)))

(declare-fun b!6854833 () Bool)

(declare-fun tp!1878994 () Bool)

(assert (=> b!6854833 (= e!4133293 tp!1878994)))

(declare-fun b!6854834 () Bool)

(declare-fun tp!1878995 () Bool)

(declare-fun tp!1878996 () Bool)

(assert (=> b!6854834 (= e!4133293 (and tp!1878995 tp!1878996))))

(assert (= (and b!6853047 ((_ is ElementMatch!16677) (regOne!33867 (h!72654 (exprs!6561 (h!72655 zl!343)))))) b!6854831))

(assert (= (and b!6853047 ((_ is Concat!25522) (regOne!33867 (h!72654 (exprs!6561 (h!72655 zl!343)))))) b!6854832))

(assert (= (and b!6853047 ((_ is Star!16677) (regOne!33867 (h!72654 (exprs!6561 (h!72655 zl!343)))))) b!6854833))

(assert (= (and b!6853047 ((_ is Union!16677) (regOne!33867 (h!72654 (exprs!6561 (h!72655 zl!343)))))) b!6854834))

(declare-fun b!6854836 () Bool)

(declare-fun e!4133294 () Bool)

(declare-fun tp!1879002 () Bool)

(declare-fun tp!1878998 () Bool)

(assert (=> b!6854836 (= e!4133294 (and tp!1879002 tp!1878998))))

(assert (=> b!6853047 (= tp!1878427 e!4133294)))

(declare-fun b!6854835 () Bool)

(assert (=> b!6854835 (= e!4133294 tp_is_empty!42607)))

(declare-fun b!6854837 () Bool)

(declare-fun tp!1878999 () Bool)

(assert (=> b!6854837 (= e!4133294 tp!1878999)))

(declare-fun b!6854838 () Bool)

(declare-fun tp!1879000 () Bool)

(declare-fun tp!1879001 () Bool)

(assert (=> b!6854838 (= e!4133294 (and tp!1879000 tp!1879001))))

(assert (= (and b!6853047 ((_ is ElementMatch!16677) (regTwo!33867 (h!72654 (exprs!6561 (h!72655 zl!343)))))) b!6854835))

(assert (= (and b!6853047 ((_ is Concat!25522) (regTwo!33867 (h!72654 (exprs!6561 (h!72655 zl!343)))))) b!6854836))

(assert (= (and b!6853047 ((_ is Star!16677) (regTwo!33867 (h!72654 (exprs!6561 (h!72655 zl!343)))))) b!6854837))

(assert (= (and b!6853047 ((_ is Union!16677) (regTwo!33867 (h!72654 (exprs!6561 (h!72655 zl!343)))))) b!6854838))

(declare-fun b!6854840 () Bool)

(declare-fun e!4133295 () Bool)

(declare-fun tp!1879007 () Bool)

(declare-fun tp!1879003 () Bool)

(assert (=> b!6854840 (= e!4133295 (and tp!1879007 tp!1879003))))

(assert (=> b!6853032 (= tp!1878408 e!4133295)))

(declare-fun b!6854839 () Bool)

(assert (=> b!6854839 (= e!4133295 tp_is_empty!42607)))

(declare-fun b!6854841 () Bool)

(declare-fun tp!1879004 () Bool)

(assert (=> b!6854841 (= e!4133295 tp!1879004)))

(declare-fun b!6854842 () Bool)

(declare-fun tp!1879005 () Bool)

(declare-fun tp!1879006 () Bool)

(assert (=> b!6854842 (= e!4133295 (and tp!1879005 tp!1879006))))

(assert (= (and b!6853032 ((_ is ElementMatch!16677) (h!72654 (t!380073 (exprs!6561 setElem!47097))))) b!6854839))

(assert (= (and b!6853032 ((_ is Concat!25522) (h!72654 (t!380073 (exprs!6561 setElem!47097))))) b!6854840))

(assert (= (and b!6853032 ((_ is Star!16677) (h!72654 (t!380073 (exprs!6561 setElem!47097))))) b!6854841))

(assert (= (and b!6853032 ((_ is Union!16677) (h!72654 (t!380073 (exprs!6561 setElem!47097))))) b!6854842))

(declare-fun b!6854843 () Bool)

(declare-fun e!4133296 () Bool)

(declare-fun tp!1879008 () Bool)

(declare-fun tp!1879009 () Bool)

(assert (=> b!6854843 (= e!4133296 (and tp!1879008 tp!1879009))))

(assert (=> b!6853032 (= tp!1878409 e!4133296)))

(assert (= (and b!6853032 ((_ is Cons!66206) (t!380073 (t!380073 (exprs!6561 setElem!47097))))) b!6854843))

(declare-fun b!6854845 () Bool)

(declare-fun e!4133297 () Bool)

(declare-fun tp!1879014 () Bool)

(declare-fun tp!1879010 () Bool)

(assert (=> b!6854845 (= e!4133297 (and tp!1879014 tp!1879010))))

(assert (=> b!6853119 (= tp!1878519 e!4133297)))

(declare-fun b!6854844 () Bool)

(assert (=> b!6854844 (= e!4133297 tp_is_empty!42607)))

(declare-fun b!6854846 () Bool)

(declare-fun tp!1879011 () Bool)

(assert (=> b!6854846 (= e!4133297 tp!1879011)))

(declare-fun b!6854847 () Bool)

(declare-fun tp!1879012 () Bool)

(declare-fun tp!1879013 () Bool)

(assert (=> b!6854847 (= e!4133297 (and tp!1879012 tp!1879013))))

(assert (= (and b!6853119 ((_ is ElementMatch!16677) (h!72654 (exprs!6561 setElem!47103)))) b!6854844))

(assert (= (and b!6853119 ((_ is Concat!25522) (h!72654 (exprs!6561 setElem!47103)))) b!6854845))

(assert (= (and b!6853119 ((_ is Star!16677) (h!72654 (exprs!6561 setElem!47103)))) b!6854846))

(assert (= (and b!6853119 ((_ is Union!16677) (h!72654 (exprs!6561 setElem!47103)))) b!6854847))

(declare-fun b!6854848 () Bool)

(declare-fun e!4133298 () Bool)

(declare-fun tp!1879015 () Bool)

(declare-fun tp!1879016 () Bool)

(assert (=> b!6854848 (= e!4133298 (and tp!1879015 tp!1879016))))

(assert (=> b!6853119 (= tp!1878520 e!4133298)))

(assert (= (and b!6853119 ((_ is Cons!66206) (t!380073 (exprs!6561 setElem!47103)))) b!6854848))

(declare-fun b!6854850 () Bool)

(declare-fun e!4133299 () Bool)

(declare-fun tp!1879021 () Bool)

(declare-fun tp!1879017 () Bool)

(assert (=> b!6854850 (= e!4133299 (and tp!1879021 tp!1879017))))

(assert (=> b!6853096 (= tp!1878488 e!4133299)))

(declare-fun b!6854849 () Bool)

(assert (=> b!6854849 (= e!4133299 tp_is_empty!42607)))

(declare-fun b!6854851 () Bool)

(declare-fun tp!1879018 () Bool)

(assert (=> b!6854851 (= e!4133299 tp!1879018)))

(declare-fun b!6854852 () Bool)

(declare-fun tp!1879019 () Bool)

(declare-fun tp!1879020 () Bool)

(assert (=> b!6854852 (= e!4133299 (and tp!1879019 tp!1879020))))

(assert (= (and b!6853096 ((_ is ElementMatch!16677) (regOne!33867 (regTwo!33866 (regOne!33867 r!7292))))) b!6854849))

(assert (= (and b!6853096 ((_ is Concat!25522) (regOne!33867 (regTwo!33866 (regOne!33867 r!7292))))) b!6854850))

(assert (= (and b!6853096 ((_ is Star!16677) (regOne!33867 (regTwo!33866 (regOne!33867 r!7292))))) b!6854851))

(assert (= (and b!6853096 ((_ is Union!16677) (regOne!33867 (regTwo!33866 (regOne!33867 r!7292))))) b!6854852))

(declare-fun b!6854854 () Bool)

(declare-fun e!4133300 () Bool)

(declare-fun tp!1879026 () Bool)

(declare-fun tp!1879022 () Bool)

(assert (=> b!6854854 (= e!4133300 (and tp!1879026 tp!1879022))))

(assert (=> b!6853096 (= tp!1878489 e!4133300)))

(declare-fun b!6854853 () Bool)

(assert (=> b!6854853 (= e!4133300 tp_is_empty!42607)))

(declare-fun b!6854855 () Bool)

(declare-fun tp!1879023 () Bool)

(assert (=> b!6854855 (= e!4133300 tp!1879023)))

(declare-fun b!6854856 () Bool)

(declare-fun tp!1879024 () Bool)

(declare-fun tp!1879025 () Bool)

(assert (=> b!6854856 (= e!4133300 (and tp!1879024 tp!1879025))))

(assert (= (and b!6853096 ((_ is ElementMatch!16677) (regTwo!33867 (regTwo!33866 (regOne!33867 r!7292))))) b!6854853))

(assert (= (and b!6853096 ((_ is Concat!25522) (regTwo!33867 (regTwo!33866 (regOne!33867 r!7292))))) b!6854854))

(assert (= (and b!6853096 ((_ is Star!16677) (regTwo!33867 (regTwo!33866 (regOne!33867 r!7292))))) b!6854855))

(assert (= (and b!6853096 ((_ is Union!16677) (regTwo!33867 (regTwo!33866 (regOne!33867 r!7292))))) b!6854856))

(declare-fun b!6854858 () Bool)

(declare-fun e!4133301 () Bool)

(declare-fun tp!1879031 () Bool)

(declare-fun tp!1879027 () Bool)

(assert (=> b!6854858 (= e!4133301 (and tp!1879031 tp!1879027))))

(assert (=> b!6853087 (= tp!1878477 e!4133301)))

(declare-fun b!6854857 () Bool)

(assert (=> b!6854857 (= e!4133301 tp_is_empty!42607)))

(declare-fun b!6854859 () Bool)

(declare-fun tp!1879028 () Bool)

(assert (=> b!6854859 (= e!4133301 tp!1879028)))

(declare-fun b!6854860 () Bool)

(declare-fun tp!1879029 () Bool)

(declare-fun tp!1879030 () Bool)

(assert (=> b!6854860 (= e!4133301 (and tp!1879029 tp!1879030))))

(assert (= (and b!6853087 ((_ is ElementMatch!16677) (reg!17006 (reg!17006 (reg!17006 r!7292))))) b!6854857))

(assert (= (and b!6853087 ((_ is Concat!25522) (reg!17006 (reg!17006 (reg!17006 r!7292))))) b!6854858))

(assert (= (and b!6853087 ((_ is Star!16677) (reg!17006 (reg!17006 (reg!17006 r!7292))))) b!6854859))

(assert (= (and b!6853087 ((_ is Union!16677) (reg!17006 (reg!17006 (reg!17006 r!7292))))) b!6854860))

(declare-fun b!6854862 () Bool)

(declare-fun e!4133302 () Bool)

(declare-fun tp!1879036 () Bool)

(declare-fun tp!1879032 () Bool)

(assert (=> b!6854862 (= e!4133302 (and tp!1879036 tp!1879032))))

(assert (=> b!6853031 (= tp!1878405 e!4133302)))

(declare-fun b!6854861 () Bool)

(assert (=> b!6854861 (= e!4133302 tp_is_empty!42607)))

(declare-fun b!6854863 () Bool)

(declare-fun tp!1879033 () Bool)

(assert (=> b!6854863 (= e!4133302 tp!1879033)))

(declare-fun b!6854864 () Bool)

(declare-fun tp!1879034 () Bool)

(declare-fun tp!1879035 () Bool)

(assert (=> b!6854864 (= e!4133302 (and tp!1879034 tp!1879035))))

(assert (= (and b!6853031 ((_ is ElementMatch!16677) (regOne!33867 (h!72654 (exprs!6561 setElem!47097))))) b!6854861))

(assert (= (and b!6853031 ((_ is Concat!25522) (regOne!33867 (h!72654 (exprs!6561 setElem!47097))))) b!6854862))

(assert (= (and b!6853031 ((_ is Star!16677) (regOne!33867 (h!72654 (exprs!6561 setElem!47097))))) b!6854863))

(assert (= (and b!6853031 ((_ is Union!16677) (regOne!33867 (h!72654 (exprs!6561 setElem!47097))))) b!6854864))

(declare-fun b!6854866 () Bool)

(declare-fun e!4133303 () Bool)

(declare-fun tp!1879041 () Bool)

(declare-fun tp!1879037 () Bool)

(assert (=> b!6854866 (= e!4133303 (and tp!1879041 tp!1879037))))

(assert (=> b!6853031 (= tp!1878406 e!4133303)))

(declare-fun b!6854865 () Bool)

(assert (=> b!6854865 (= e!4133303 tp_is_empty!42607)))

(declare-fun b!6854867 () Bool)

(declare-fun tp!1879038 () Bool)

(assert (=> b!6854867 (= e!4133303 tp!1879038)))

(declare-fun b!6854868 () Bool)

(declare-fun tp!1879039 () Bool)

(declare-fun tp!1879040 () Bool)

(assert (=> b!6854868 (= e!4133303 (and tp!1879039 tp!1879040))))

(assert (= (and b!6853031 ((_ is ElementMatch!16677) (regTwo!33867 (h!72654 (exprs!6561 setElem!47097))))) b!6854865))

(assert (= (and b!6853031 ((_ is Concat!25522) (regTwo!33867 (h!72654 (exprs!6561 setElem!47097))))) b!6854866))

(assert (= (and b!6853031 ((_ is Star!16677) (regTwo!33867 (h!72654 (exprs!6561 setElem!47097))))) b!6854867))

(assert (= (and b!6853031 ((_ is Union!16677) (regTwo!33867 (h!72654 (exprs!6561 setElem!47097))))) b!6854868))

(declare-fun b!6854870 () Bool)

(declare-fun e!4133304 () Bool)

(declare-fun tp!1879046 () Bool)

(declare-fun tp!1879042 () Bool)

(assert (=> b!6854870 (= e!4133304 (and tp!1879046 tp!1879042))))

(assert (=> b!6853078 (= tp!1878470 e!4133304)))

(declare-fun b!6854869 () Bool)

(assert (=> b!6854869 (= e!4133304 tp_is_empty!42607)))

(declare-fun b!6854871 () Bool)

(declare-fun tp!1879043 () Bool)

(assert (=> b!6854871 (= e!4133304 tp!1879043)))

(declare-fun b!6854872 () Bool)

(declare-fun tp!1879044 () Bool)

(declare-fun tp!1879045 () Bool)

(assert (=> b!6854872 (= e!4133304 (and tp!1879044 tp!1879045))))

(assert (= (and b!6853078 ((_ is ElementMatch!16677) (regOne!33866 (regOne!33867 (regTwo!33867 r!7292))))) b!6854869))

(assert (= (and b!6853078 ((_ is Concat!25522) (regOne!33866 (regOne!33867 (regTwo!33867 r!7292))))) b!6854870))

(assert (= (and b!6853078 ((_ is Star!16677) (regOne!33866 (regOne!33867 (regTwo!33867 r!7292))))) b!6854871))

(assert (= (and b!6853078 ((_ is Union!16677) (regOne!33866 (regOne!33867 (regTwo!33867 r!7292))))) b!6854872))

(declare-fun b!6854874 () Bool)

(declare-fun e!4133305 () Bool)

(declare-fun tp!1879051 () Bool)

(declare-fun tp!1879047 () Bool)

(assert (=> b!6854874 (= e!4133305 (and tp!1879051 tp!1879047))))

(assert (=> b!6853078 (= tp!1878466 e!4133305)))

(declare-fun b!6854873 () Bool)

(assert (=> b!6854873 (= e!4133305 tp_is_empty!42607)))

(declare-fun b!6854875 () Bool)

(declare-fun tp!1879048 () Bool)

(assert (=> b!6854875 (= e!4133305 tp!1879048)))

(declare-fun b!6854876 () Bool)

(declare-fun tp!1879049 () Bool)

(declare-fun tp!1879050 () Bool)

(assert (=> b!6854876 (= e!4133305 (and tp!1879049 tp!1879050))))

(assert (= (and b!6853078 ((_ is ElementMatch!16677) (regTwo!33866 (regOne!33867 (regTwo!33867 r!7292))))) b!6854873))

(assert (= (and b!6853078 ((_ is Concat!25522) (regTwo!33866 (regOne!33867 (regTwo!33867 r!7292))))) b!6854874))

(assert (= (and b!6853078 ((_ is Star!16677) (regTwo!33866 (regOne!33867 (regTwo!33867 r!7292))))) b!6854875))

(assert (= (and b!6853078 ((_ is Union!16677) (regTwo!33866 (regOne!33867 (regTwo!33867 r!7292))))) b!6854876))

(declare-fun b!6854878 () Bool)

(declare-fun e!4133306 () Bool)

(declare-fun tp!1879056 () Bool)

(declare-fun tp!1879052 () Bool)

(assert (=> b!6854878 (= e!4133306 (and tp!1879056 tp!1879052))))

(assert (=> b!6853022 (= tp!1878394 e!4133306)))

(declare-fun b!6854877 () Bool)

(assert (=> b!6854877 (= e!4133306 tp_is_empty!42607)))

(declare-fun b!6854879 () Bool)

(declare-fun tp!1879053 () Bool)

(assert (=> b!6854879 (= e!4133306 tp!1879053)))

(declare-fun b!6854880 () Bool)

(declare-fun tp!1879054 () Bool)

(declare-fun tp!1879055 () Bool)

(assert (=> b!6854880 (= e!4133306 (and tp!1879054 tp!1879055))))

(assert (= (and b!6853022 ((_ is ElementMatch!16677) (reg!17006 (regOne!33866 (reg!17006 r!7292))))) b!6854877))

(assert (= (and b!6853022 ((_ is Concat!25522) (reg!17006 (regOne!33866 (reg!17006 r!7292))))) b!6854878))

(assert (= (and b!6853022 ((_ is Star!16677) (reg!17006 (regOne!33866 (reg!17006 r!7292))))) b!6854879))

(assert (= (and b!6853022 ((_ is Union!16677) (reg!17006 (regOne!33866 (reg!17006 r!7292))))) b!6854880))

(declare-fun b!6854890 () Bool)

(declare-fun e!4133314 () Bool)

(declare-fun tp!1879057 () Bool)

(declare-fun tp!1879058 () Bool)

(assert (=> b!6854890 (= e!4133314 (and tp!1879057 tp!1879058))))

(assert (=> b!6852911 (= tp!1878385 e!4133314)))

(assert (= (and b!6852911 ((_ is Cons!66206) (exprs!6561 (h!72655 res!2796856)))) b!6854890))

(declare-fun b!6854892 () Bool)

(declare-fun e!4133315 () Bool)

(declare-fun tp!1879063 () Bool)

(declare-fun tp!1879059 () Bool)

(assert (=> b!6854892 (= e!4133315 (and tp!1879063 tp!1879059))))

(assert (=> b!6853045 (= tp!1878428 e!4133315)))

(declare-fun b!6854891 () Bool)

(assert (=> b!6854891 (= e!4133315 tp_is_empty!42607)))

(declare-fun b!6854893 () Bool)

(declare-fun tp!1879060 () Bool)

(assert (=> b!6854893 (= e!4133315 tp!1879060)))

(declare-fun b!6854894 () Bool)

(declare-fun tp!1879061 () Bool)

(declare-fun tp!1879062 () Bool)

(assert (=> b!6854894 (= e!4133315 (and tp!1879061 tp!1879062))))

(assert (= (and b!6853045 ((_ is ElementMatch!16677) (regOne!33866 (h!72654 (exprs!6561 (h!72655 zl!343)))))) b!6854891))

(assert (= (and b!6853045 ((_ is Concat!25522) (regOne!33866 (h!72654 (exprs!6561 (h!72655 zl!343)))))) b!6854892))

(assert (= (and b!6853045 ((_ is Star!16677) (regOne!33866 (h!72654 (exprs!6561 (h!72655 zl!343)))))) b!6854893))

(assert (= (and b!6853045 ((_ is Union!16677) (regOne!33866 (h!72654 (exprs!6561 (h!72655 zl!343)))))) b!6854894))

(declare-fun b!6854896 () Bool)

(declare-fun e!4133316 () Bool)

(declare-fun tp!1879068 () Bool)

(declare-fun tp!1879064 () Bool)

(assert (=> b!6854896 (= e!4133316 (and tp!1879068 tp!1879064))))

(assert (=> b!6853045 (= tp!1878424 e!4133316)))

(declare-fun b!6854895 () Bool)

(assert (=> b!6854895 (= e!4133316 tp_is_empty!42607)))

(declare-fun b!6854897 () Bool)

(declare-fun tp!1879065 () Bool)

(assert (=> b!6854897 (= e!4133316 tp!1879065)))

(declare-fun b!6854898 () Bool)

(declare-fun tp!1879066 () Bool)

(declare-fun tp!1879067 () Bool)

(assert (=> b!6854898 (= e!4133316 (and tp!1879066 tp!1879067))))

(assert (= (and b!6853045 ((_ is ElementMatch!16677) (regTwo!33866 (h!72654 (exprs!6561 (h!72655 zl!343)))))) b!6854895))

(assert (= (and b!6853045 ((_ is Concat!25522) (regTwo!33866 (h!72654 (exprs!6561 (h!72655 zl!343)))))) b!6854896))

(assert (= (and b!6853045 ((_ is Star!16677) (regTwo!33866 (h!72654 (exprs!6561 (h!72655 zl!343)))))) b!6854897))

(assert (= (and b!6853045 ((_ is Union!16677) (regTwo!33866 (h!72654 (exprs!6561 (h!72655 zl!343)))))) b!6854898))

(declare-fun b!6854900 () Bool)

(declare-fun e!4133317 () Bool)

(declare-fun tp!1879073 () Bool)

(declare-fun tp!1879069 () Bool)

(assert (=> b!6854900 (= e!4133317 (and tp!1879073 tp!1879069))))

(assert (=> b!6853115 (= tp!1878516 e!4133317)))

(declare-fun b!6854899 () Bool)

(assert (=> b!6854899 (= e!4133317 tp_is_empty!42607)))

(declare-fun b!6854901 () Bool)

(declare-fun tp!1879070 () Bool)

(assert (=> b!6854901 (= e!4133317 tp!1879070)))

(declare-fun b!6854902 () Bool)

(declare-fun tp!1879071 () Bool)

(declare-fun tp!1879072 () Bool)

(assert (=> b!6854902 (= e!4133317 (and tp!1879071 tp!1879072))))

(assert (= (and b!6853115 ((_ is ElementMatch!16677) (regOne!33866 (regTwo!33866 (regTwo!33866 r!7292))))) b!6854899))

(assert (= (and b!6853115 ((_ is Concat!25522) (regOne!33866 (regTwo!33866 (regTwo!33866 r!7292))))) b!6854900))

(assert (= (and b!6853115 ((_ is Star!16677) (regOne!33866 (regTwo!33866 (regTwo!33866 r!7292))))) b!6854901))

(assert (= (and b!6853115 ((_ is Union!16677) (regOne!33866 (regTwo!33866 (regTwo!33866 r!7292))))) b!6854902))

(declare-fun b!6854904 () Bool)

(declare-fun e!4133318 () Bool)

(declare-fun tp!1879078 () Bool)

(declare-fun tp!1879074 () Bool)

(assert (=> b!6854904 (= e!4133318 (and tp!1879078 tp!1879074))))

(assert (=> b!6853115 (= tp!1878512 e!4133318)))

(declare-fun b!6854903 () Bool)

(assert (=> b!6854903 (= e!4133318 tp_is_empty!42607)))

(declare-fun b!6854905 () Bool)

(declare-fun tp!1879075 () Bool)

(assert (=> b!6854905 (= e!4133318 tp!1879075)))

(declare-fun b!6854906 () Bool)

(declare-fun tp!1879076 () Bool)

(declare-fun tp!1879077 () Bool)

(assert (=> b!6854906 (= e!4133318 (and tp!1879076 tp!1879077))))

(assert (= (and b!6853115 ((_ is ElementMatch!16677) (regTwo!33866 (regTwo!33866 (regTwo!33866 r!7292))))) b!6854903))

(assert (= (and b!6853115 ((_ is Concat!25522) (regTwo!33866 (regTwo!33866 (regTwo!33866 r!7292))))) b!6854904))

(assert (= (and b!6853115 ((_ is Star!16677) (regTwo!33866 (regTwo!33866 (regTwo!33866 r!7292))))) b!6854905))

(assert (= (and b!6853115 ((_ is Union!16677) (regTwo!33866 (regTwo!33866 (regTwo!33866 r!7292))))) b!6854906))

(declare-fun b!6854910 () Bool)

(declare-fun e!4133320 () Bool)

(declare-fun tp!1879083 () Bool)

(declare-fun tp!1879079 () Bool)

(assert (=> b!6854910 (= e!4133320 (and tp!1879083 tp!1879079))))

(assert (=> b!6853108 (= tp!1878503 e!4133320)))

(declare-fun b!6854909 () Bool)

(assert (=> b!6854909 (= e!4133320 tp_is_empty!42607)))

(declare-fun b!6854911 () Bool)

(declare-fun tp!1879080 () Bool)

(assert (=> b!6854911 (= e!4133320 tp!1879080)))

(declare-fun b!6854912 () Bool)

(declare-fun tp!1879081 () Bool)

(declare-fun tp!1879082 () Bool)

(assert (=> b!6854912 (= e!4133320 (and tp!1879081 tp!1879082))))

(assert (= (and b!6853108 ((_ is ElementMatch!16677) (regOne!33867 (reg!17006 (regOne!33866 r!7292))))) b!6854909))

(assert (= (and b!6853108 ((_ is Concat!25522) (regOne!33867 (reg!17006 (regOne!33866 r!7292))))) b!6854910))

(assert (= (and b!6853108 ((_ is Star!16677) (regOne!33867 (reg!17006 (regOne!33866 r!7292))))) b!6854911))

(assert (= (and b!6853108 ((_ is Union!16677) (regOne!33867 (reg!17006 (regOne!33866 r!7292))))) b!6854912))

(declare-fun b!6854914 () Bool)

(declare-fun e!4133321 () Bool)

(declare-fun tp!1879088 () Bool)

(declare-fun tp!1879084 () Bool)

(assert (=> b!6854914 (= e!4133321 (and tp!1879088 tp!1879084))))

(assert (=> b!6853108 (= tp!1878504 e!4133321)))

(declare-fun b!6854913 () Bool)

(assert (=> b!6854913 (= e!4133321 tp_is_empty!42607)))

(declare-fun b!6854915 () Bool)

(declare-fun tp!1879085 () Bool)

(assert (=> b!6854915 (= e!4133321 tp!1879085)))

(declare-fun b!6854916 () Bool)

(declare-fun tp!1879086 () Bool)

(declare-fun tp!1879087 () Bool)

(assert (=> b!6854916 (= e!4133321 (and tp!1879086 tp!1879087))))

(assert (= (and b!6853108 ((_ is ElementMatch!16677) (regTwo!33867 (reg!17006 (regOne!33866 r!7292))))) b!6854913))

(assert (= (and b!6853108 ((_ is Concat!25522) (regTwo!33867 (reg!17006 (regOne!33866 r!7292))))) b!6854914))

(assert (= (and b!6853108 ((_ is Star!16677) (regTwo!33867 (reg!17006 (regOne!33866 r!7292))))) b!6854915))

(assert (= (and b!6853108 ((_ is Union!16677) (regTwo!33867 (reg!17006 (regOne!33866 r!7292))))) b!6854916))

(declare-fun b!6854920 () Bool)

(declare-fun e!4133323 () Bool)

(declare-fun tp!1879093 () Bool)

(declare-fun tp!1879089 () Bool)

(assert (=> b!6854920 (= e!4133323 (and tp!1879093 tp!1879089))))

(assert (=> b!6853099 (= tp!1878492 e!4133323)))

(declare-fun b!6854919 () Bool)

(assert (=> b!6854919 (= e!4133323 tp_is_empty!42607)))

(declare-fun b!6854921 () Bool)

(declare-fun tp!1879090 () Bool)

(assert (=> b!6854921 (= e!4133323 tp!1879090)))

(declare-fun b!6854922 () Bool)

(declare-fun tp!1879091 () Bool)

(declare-fun tp!1879092 () Bool)

(assert (=> b!6854922 (= e!4133323 (and tp!1879091 tp!1879092))))

(assert (= (and b!6853099 ((_ is ElementMatch!16677) (reg!17006 (regOne!33867 (regOne!33866 r!7292))))) b!6854919))

(assert (= (and b!6853099 ((_ is Concat!25522) (reg!17006 (regOne!33867 (regOne!33866 r!7292))))) b!6854920))

(assert (= (and b!6853099 ((_ is Star!16677) (reg!17006 (regOne!33867 (regOne!33866 r!7292))))) b!6854921))

(assert (= (and b!6853099 ((_ is Union!16677) (reg!17006 (regOne!33867 (regOne!33866 r!7292))))) b!6854922))

(declare-fun b!6854924 () Bool)

(declare-fun e!4133324 () Bool)

(declare-fun tp!1879098 () Bool)

(declare-fun tp!1879094 () Bool)

(assert (=> b!6854924 (= e!4133324 (and tp!1879098 tp!1879094))))

(assert (=> b!6853090 (= tp!1878485 e!4133324)))

(declare-fun b!6854923 () Bool)

(assert (=> b!6854923 (= e!4133324 tp_is_empty!42607)))

(declare-fun b!6854925 () Bool)

(declare-fun tp!1879095 () Bool)

(assert (=> b!6854925 (= e!4133324 tp!1879095)))

(declare-fun b!6854926 () Bool)

(declare-fun tp!1879096 () Bool)

(declare-fun tp!1879097 () Bool)

(assert (=> b!6854926 (= e!4133324 (and tp!1879096 tp!1879097))))

(assert (= (and b!6853090 ((_ is ElementMatch!16677) (regOne!33866 (regOne!33866 (regOne!33867 r!7292))))) b!6854923))

(assert (= (and b!6853090 ((_ is Concat!25522) (regOne!33866 (regOne!33866 (regOne!33867 r!7292))))) b!6854924))

(assert (= (and b!6853090 ((_ is Star!16677) (regOne!33866 (regOne!33866 (regOne!33867 r!7292))))) b!6854925))

(assert (= (and b!6853090 ((_ is Union!16677) (regOne!33866 (regOne!33866 (regOne!33867 r!7292))))) b!6854926))

(declare-fun b!6854942 () Bool)

(declare-fun e!4133332 () Bool)

(declare-fun tp!1879103 () Bool)

(declare-fun tp!1879099 () Bool)

(assert (=> b!6854942 (= e!4133332 (and tp!1879103 tp!1879099))))

(assert (=> b!6853090 (= tp!1878481 e!4133332)))

(declare-fun b!6854941 () Bool)

(assert (=> b!6854941 (= e!4133332 tp_is_empty!42607)))

(declare-fun b!6854943 () Bool)

(declare-fun tp!1879100 () Bool)

(assert (=> b!6854943 (= e!4133332 tp!1879100)))

(declare-fun b!6854944 () Bool)

(declare-fun tp!1879101 () Bool)

(declare-fun tp!1879102 () Bool)

(assert (=> b!6854944 (= e!4133332 (and tp!1879101 tp!1879102))))

(assert (= (and b!6853090 ((_ is ElementMatch!16677) (regTwo!33866 (regOne!33866 (regOne!33867 r!7292))))) b!6854941))

(assert (= (and b!6853090 ((_ is Concat!25522) (regTwo!33866 (regOne!33866 (regOne!33867 r!7292))))) b!6854942))

(assert (= (and b!6853090 ((_ is Star!16677) (regTwo!33866 (regOne!33866 (regOne!33867 r!7292))))) b!6854943))

(assert (= (and b!6853090 ((_ is Union!16677) (regTwo!33866 (regOne!33866 (regOne!33867 r!7292))))) b!6854944))

(declare-fun b!6854946 () Bool)

(declare-fun e!4133333 () Bool)

(declare-fun tp!1879108 () Bool)

(declare-fun tp!1879104 () Bool)

(assert (=> b!6854946 (= e!4133333 (and tp!1879108 tp!1879104))))

(assert (=> b!6853025 (= tp!1878402 e!4133333)))

(declare-fun b!6854945 () Bool)

(assert (=> b!6854945 (= e!4133333 tp_is_empty!42607)))

(declare-fun b!6854947 () Bool)

(declare-fun tp!1879105 () Bool)

(assert (=> b!6854947 (= e!4133333 tp!1879105)))

(declare-fun b!6854948 () Bool)

(declare-fun tp!1879106 () Bool)

(declare-fun tp!1879107 () Bool)

(assert (=> b!6854948 (= e!4133333 (and tp!1879106 tp!1879107))))

(assert (= (and b!6853025 ((_ is ElementMatch!16677) (regOne!33866 (regTwo!33866 (reg!17006 r!7292))))) b!6854945))

(assert (= (and b!6853025 ((_ is Concat!25522) (regOne!33866 (regTwo!33866 (reg!17006 r!7292))))) b!6854946))

(assert (= (and b!6853025 ((_ is Star!16677) (regOne!33866 (regTwo!33866 (reg!17006 r!7292))))) b!6854947))

(assert (= (and b!6853025 ((_ is Union!16677) (regOne!33866 (regTwo!33866 (reg!17006 r!7292))))) b!6854948))

(declare-fun b!6854950 () Bool)

(declare-fun e!4133334 () Bool)

(declare-fun tp!1879113 () Bool)

(declare-fun tp!1879109 () Bool)

(assert (=> b!6854950 (= e!4133334 (and tp!1879113 tp!1879109))))

(assert (=> b!6853025 (= tp!1878398 e!4133334)))

(declare-fun b!6854949 () Bool)

(assert (=> b!6854949 (= e!4133334 tp_is_empty!42607)))

(declare-fun b!6854951 () Bool)

(declare-fun tp!1879110 () Bool)

(assert (=> b!6854951 (= e!4133334 tp!1879110)))

(declare-fun b!6854952 () Bool)

(declare-fun tp!1879111 () Bool)

(declare-fun tp!1879112 () Bool)

(assert (=> b!6854952 (= e!4133334 (and tp!1879111 tp!1879112))))

(assert (= (and b!6853025 ((_ is ElementMatch!16677) (regTwo!33866 (regTwo!33866 (reg!17006 r!7292))))) b!6854949))

(assert (= (and b!6853025 ((_ is Concat!25522) (regTwo!33866 (regTwo!33866 (reg!17006 r!7292))))) b!6854950))

(assert (= (and b!6853025 ((_ is Star!16677) (regTwo!33866 (regTwo!33866 (reg!17006 r!7292))))) b!6854951))

(assert (= (and b!6853025 ((_ is Union!16677) (regTwo!33866 (regTwo!33866 (reg!17006 r!7292))))) b!6854952))

(declare-fun b!6854954 () Bool)

(declare-fun e!4133335 () Bool)

(declare-fun tp!1879118 () Bool)

(declare-fun tp!1879114 () Bool)

(assert (=> b!6854954 (= e!4133335 (and tp!1879118 tp!1879114))))

(assert (=> b!6853117 (= tp!1878514 e!4133335)))

(declare-fun b!6854953 () Bool)

(assert (=> b!6854953 (= e!4133335 tp_is_empty!42607)))

(declare-fun b!6854955 () Bool)

(declare-fun tp!1879115 () Bool)

(assert (=> b!6854955 (= e!4133335 tp!1879115)))

(declare-fun b!6854956 () Bool)

(declare-fun tp!1879116 () Bool)

(declare-fun tp!1879117 () Bool)

(assert (=> b!6854956 (= e!4133335 (and tp!1879116 tp!1879117))))

(assert (= (and b!6853117 ((_ is ElementMatch!16677) (regOne!33867 (regTwo!33866 (regTwo!33866 r!7292))))) b!6854953))

(assert (= (and b!6853117 ((_ is Concat!25522) (regOne!33867 (regTwo!33866 (regTwo!33866 r!7292))))) b!6854954))

(assert (= (and b!6853117 ((_ is Star!16677) (regOne!33867 (regTwo!33866 (regTwo!33866 r!7292))))) b!6854955))

(assert (= (and b!6853117 ((_ is Union!16677) (regOne!33867 (regTwo!33866 (regTwo!33866 r!7292))))) b!6854956))

(declare-fun b!6854958 () Bool)

(declare-fun e!4133336 () Bool)

(declare-fun tp!1879123 () Bool)

(declare-fun tp!1879119 () Bool)

(assert (=> b!6854958 (= e!4133336 (and tp!1879123 tp!1879119))))

(assert (=> b!6853117 (= tp!1878515 e!4133336)))

(declare-fun b!6854957 () Bool)

(assert (=> b!6854957 (= e!4133336 tp_is_empty!42607)))

(declare-fun b!6854959 () Bool)

(declare-fun tp!1879120 () Bool)

(assert (=> b!6854959 (= e!4133336 tp!1879120)))

(declare-fun b!6854960 () Bool)

(declare-fun tp!1879121 () Bool)

(declare-fun tp!1879122 () Bool)

(assert (=> b!6854960 (= e!4133336 (and tp!1879121 tp!1879122))))

(assert (= (and b!6853117 ((_ is ElementMatch!16677) (regTwo!33867 (regTwo!33866 (regTwo!33866 r!7292))))) b!6854957))

(assert (= (and b!6853117 ((_ is Concat!25522) (regTwo!33867 (regTwo!33866 (regTwo!33866 r!7292))))) b!6854958))

(assert (= (and b!6853117 ((_ is Star!16677) (regTwo!33867 (regTwo!33866 (regTwo!33866 r!7292))))) b!6854959))

(assert (= (and b!6853117 ((_ is Union!16677) (regTwo!33867 (regTwo!33866 (regTwo!33866 r!7292))))) b!6854960))

(declare-fun b!6854962 () Bool)

(declare-fun e!4133337 () Bool)

(declare-fun tp!1879128 () Bool)

(declare-fun tp!1879124 () Bool)

(assert (=> b!6854962 (= e!4133337 (and tp!1879128 tp!1879124))))

(assert (=> b!6853039 (= tp!1878421 e!4133337)))

(declare-fun b!6854961 () Bool)

(assert (=> b!6854961 (= e!4133337 tp_is_empty!42607)))

(declare-fun b!6854963 () Bool)

(declare-fun tp!1879125 () Bool)

(assert (=> b!6854963 (= e!4133337 tp!1879125)))

(declare-fun b!6854964 () Bool)

(declare-fun tp!1879126 () Bool)

(declare-fun tp!1879127 () Bool)

(assert (=> b!6854964 (= e!4133337 (and tp!1879126 tp!1879127))))

(assert (= (and b!6853039 ((_ is ElementMatch!16677) (regOne!33866 (regTwo!33866 (regTwo!33867 r!7292))))) b!6854961))

(assert (= (and b!6853039 ((_ is Concat!25522) (regOne!33866 (regTwo!33866 (regTwo!33867 r!7292))))) b!6854962))

(assert (= (and b!6853039 ((_ is Star!16677) (regOne!33866 (regTwo!33866 (regTwo!33867 r!7292))))) b!6854963))

(assert (= (and b!6853039 ((_ is Union!16677) (regOne!33866 (regTwo!33866 (regTwo!33867 r!7292))))) b!6854964))

(declare-fun b!6854966 () Bool)

(declare-fun e!4133338 () Bool)

(declare-fun tp!1879133 () Bool)

(declare-fun tp!1879129 () Bool)

(assert (=> b!6854966 (= e!4133338 (and tp!1879133 tp!1879129))))

(assert (=> b!6853039 (= tp!1878417 e!4133338)))

(declare-fun b!6854965 () Bool)

(assert (=> b!6854965 (= e!4133338 tp_is_empty!42607)))

(declare-fun b!6854967 () Bool)

(declare-fun tp!1879130 () Bool)

(assert (=> b!6854967 (= e!4133338 tp!1879130)))

(declare-fun b!6854968 () Bool)

(declare-fun tp!1879131 () Bool)

(declare-fun tp!1879132 () Bool)

(assert (=> b!6854968 (= e!4133338 (and tp!1879131 tp!1879132))))

(assert (= (and b!6853039 ((_ is ElementMatch!16677) (regTwo!33866 (regTwo!33866 (regTwo!33867 r!7292))))) b!6854965))

(assert (= (and b!6853039 ((_ is Concat!25522) (regTwo!33866 (regTwo!33866 (regTwo!33867 r!7292))))) b!6854966))

(assert (= (and b!6853039 ((_ is Star!16677) (regTwo!33866 (regTwo!33866 (regTwo!33867 r!7292))))) b!6854967))

(assert (= (and b!6853039 ((_ is Union!16677) (regTwo!33866 (regTwo!33866 (regTwo!33867 r!7292))))) b!6854968))

(declare-fun b!6854970 () Bool)

(declare-fun e!4133339 () Bool)

(declare-fun tp!1879138 () Bool)

(declare-fun tp!1879134 () Bool)

(assert (=> b!6854970 (= e!4133339 (and tp!1879138 tp!1879134))))

(assert (=> b!6853056 (= tp!1878438 e!4133339)))

(declare-fun b!6854969 () Bool)

(assert (=> b!6854969 (= e!4133339 tp_is_empty!42607)))

(declare-fun b!6854971 () Bool)

(declare-fun tp!1879135 () Bool)

(assert (=> b!6854971 (= e!4133339 tp!1879135)))

(declare-fun b!6854972 () Bool)

(declare-fun tp!1879136 () Bool)

(declare-fun tp!1879137 () Bool)

(assert (=> b!6854972 (= e!4133339 (and tp!1879136 tp!1879137))))

(assert (= (and b!6853056 ((_ is ElementMatch!16677) (regOne!33867 (regOne!33867 (regTwo!33866 r!7292))))) b!6854969))

(assert (= (and b!6853056 ((_ is Concat!25522) (regOne!33867 (regOne!33867 (regTwo!33866 r!7292))))) b!6854970))

(assert (= (and b!6853056 ((_ is Star!16677) (regOne!33867 (regOne!33867 (regTwo!33866 r!7292))))) b!6854971))

(assert (= (and b!6853056 ((_ is Union!16677) (regOne!33867 (regOne!33867 (regTwo!33866 r!7292))))) b!6854972))

(declare-fun b!6854984 () Bool)

(declare-fun e!4133345 () Bool)

(declare-fun tp!1879143 () Bool)

(declare-fun tp!1879139 () Bool)

(assert (=> b!6854984 (= e!4133345 (and tp!1879143 tp!1879139))))

(assert (=> b!6853056 (= tp!1878439 e!4133345)))

(declare-fun b!6854983 () Bool)

(assert (=> b!6854983 (= e!4133345 tp_is_empty!42607)))

(declare-fun b!6854985 () Bool)

(declare-fun tp!1879140 () Bool)

(assert (=> b!6854985 (= e!4133345 tp!1879140)))

(declare-fun b!6854986 () Bool)

(declare-fun tp!1879141 () Bool)

(declare-fun tp!1879142 () Bool)

(assert (=> b!6854986 (= e!4133345 (and tp!1879141 tp!1879142))))

(assert (= (and b!6853056 ((_ is ElementMatch!16677) (regTwo!33867 (regOne!33867 (regTwo!33866 r!7292))))) b!6854983))

(assert (= (and b!6853056 ((_ is Concat!25522) (regTwo!33867 (regOne!33867 (regTwo!33866 r!7292))))) b!6854984))

(assert (= (and b!6853056 ((_ is Star!16677) (regTwo!33867 (regOne!33867 (regTwo!33866 r!7292))))) b!6854985))

(assert (= (and b!6853056 ((_ is Union!16677) (regTwo!33867 (regOne!33867 (regTwo!33866 r!7292))))) b!6854986))

(declare-fun b!6854988 () Bool)

(declare-fun e!4133346 () Bool)

(declare-fun tp!1879148 () Bool)

(declare-fun tp!1879144 () Bool)

(assert (=> b!6854988 (= e!4133346 (and tp!1879148 tp!1879144))))

(assert (=> b!6853106 (= tp!1878505 e!4133346)))

(declare-fun b!6854987 () Bool)

(assert (=> b!6854987 (= e!4133346 tp_is_empty!42607)))

(declare-fun b!6854989 () Bool)

(declare-fun tp!1879145 () Bool)

(assert (=> b!6854989 (= e!4133346 tp!1879145)))

(declare-fun b!6854990 () Bool)

(declare-fun tp!1879146 () Bool)

(declare-fun tp!1879147 () Bool)

(assert (=> b!6854990 (= e!4133346 (and tp!1879146 tp!1879147))))

(assert (= (and b!6853106 ((_ is ElementMatch!16677) (regOne!33866 (reg!17006 (regOne!33866 r!7292))))) b!6854987))

(assert (= (and b!6853106 ((_ is Concat!25522) (regOne!33866 (reg!17006 (regOne!33866 r!7292))))) b!6854988))

(assert (= (and b!6853106 ((_ is Star!16677) (regOne!33866 (reg!17006 (regOne!33866 r!7292))))) b!6854989))

(assert (= (and b!6853106 ((_ is Union!16677) (regOne!33866 (reg!17006 (regOne!33866 r!7292))))) b!6854990))

(declare-fun b!6854992 () Bool)

(declare-fun e!4133347 () Bool)

(declare-fun tp!1879153 () Bool)

(declare-fun tp!1879149 () Bool)

(assert (=> b!6854992 (= e!4133347 (and tp!1879153 tp!1879149))))

(assert (=> b!6853106 (= tp!1878501 e!4133347)))

(declare-fun b!6854991 () Bool)

(assert (=> b!6854991 (= e!4133347 tp_is_empty!42607)))

(declare-fun b!6854993 () Bool)

(declare-fun tp!1879150 () Bool)

(assert (=> b!6854993 (= e!4133347 tp!1879150)))

(declare-fun b!6854994 () Bool)

(declare-fun tp!1879151 () Bool)

(declare-fun tp!1879152 () Bool)

(assert (=> b!6854994 (= e!4133347 (and tp!1879151 tp!1879152))))

(assert (= (and b!6853106 ((_ is ElementMatch!16677) (regTwo!33866 (reg!17006 (regOne!33866 r!7292))))) b!6854991))

(assert (= (and b!6853106 ((_ is Concat!25522) (regTwo!33866 (reg!17006 (regOne!33866 r!7292))))) b!6854992))

(assert (= (and b!6853106 ((_ is Star!16677) (regTwo!33866 (reg!17006 (regOne!33866 r!7292))))) b!6854993))

(assert (= (and b!6853106 ((_ is Union!16677) (regTwo!33866 (reg!17006 (regOne!33866 r!7292))))) b!6854994))

(declare-fun b!6854996 () Bool)

(declare-fun e!4133348 () Bool)

(declare-fun tp!1879158 () Bool)

(declare-fun tp!1879154 () Bool)

(assert (=> b!6854996 (= e!4133348 (and tp!1879158 tp!1879154))))

(assert (=> b!6853041 (= tp!1878419 e!4133348)))

(declare-fun b!6854995 () Bool)

(assert (=> b!6854995 (= e!4133348 tp_is_empty!42607)))

(declare-fun b!6854997 () Bool)

(declare-fun tp!1879155 () Bool)

(assert (=> b!6854997 (= e!4133348 tp!1879155)))

(declare-fun b!6854998 () Bool)

(declare-fun tp!1879156 () Bool)

(declare-fun tp!1879157 () Bool)

(assert (=> b!6854998 (= e!4133348 (and tp!1879156 tp!1879157))))

(assert (= (and b!6853041 ((_ is ElementMatch!16677) (regOne!33867 (regTwo!33866 (regTwo!33867 r!7292))))) b!6854995))

(assert (= (and b!6853041 ((_ is Concat!25522) (regOne!33867 (regTwo!33866 (regTwo!33867 r!7292))))) b!6854996))

(assert (= (and b!6853041 ((_ is Star!16677) (regOne!33867 (regTwo!33866 (regTwo!33867 r!7292))))) b!6854997))

(assert (= (and b!6853041 ((_ is Union!16677) (regOne!33867 (regTwo!33866 (regTwo!33867 r!7292))))) b!6854998))

(declare-fun b!6855000 () Bool)

(declare-fun e!4133349 () Bool)

(declare-fun tp!1879163 () Bool)

(declare-fun tp!1879159 () Bool)

(assert (=> b!6855000 (= e!4133349 (and tp!1879163 tp!1879159))))

(assert (=> b!6853041 (= tp!1878420 e!4133349)))

(declare-fun b!6854999 () Bool)

(assert (=> b!6854999 (= e!4133349 tp_is_empty!42607)))

(declare-fun b!6855001 () Bool)

(declare-fun tp!1879160 () Bool)

(assert (=> b!6855001 (= e!4133349 tp!1879160)))

(declare-fun b!6855002 () Bool)

(declare-fun tp!1879161 () Bool)

(declare-fun tp!1879162 () Bool)

(assert (=> b!6855002 (= e!4133349 (and tp!1879161 tp!1879162))))

(assert (= (and b!6853041 ((_ is ElementMatch!16677) (regTwo!33867 (regTwo!33866 (regTwo!33867 r!7292))))) b!6854999))

(assert (= (and b!6853041 ((_ is Concat!25522) (regTwo!33867 (regTwo!33866 (regTwo!33867 r!7292))))) b!6855000))

(assert (= (and b!6853041 ((_ is Star!16677) (regTwo!33867 (regTwo!33866 (regTwo!33867 r!7292))))) b!6855001))

(assert (= (and b!6853041 ((_ is Union!16677) (regTwo!33867 (regTwo!33866 (regTwo!33867 r!7292))))) b!6855002))

(declare-fun b!6855003 () Bool)

(declare-fun e!4133350 () Bool)

(declare-fun tp!1879164 () Bool)

(declare-fun tp!1879165 () Bool)

(assert (=> b!6855003 (= e!4133350 (and tp!1879164 tp!1879165))))

(assert (=> b!6853043 (= tp!1878422 e!4133350)))

(assert (= (and b!6853043 ((_ is Cons!66206) (exprs!6561 (h!72655 (t!380074 (t!380074 zl!343)))))) b!6855003))

(declare-fun b!6855005 () Bool)

(declare-fun e!4133351 () Bool)

(declare-fun tp!1879170 () Bool)

(declare-fun tp!1879166 () Bool)

(assert (=> b!6855005 (= e!4133351 (and tp!1879170 tp!1879166))))

(assert (=> b!6853131 (= tp!1878533 e!4133351)))

(declare-fun b!6855004 () Bool)

(assert (=> b!6855004 (= e!4133351 tp_is_empty!42607)))

(declare-fun b!6855006 () Bool)

(declare-fun tp!1879167 () Bool)

(assert (=> b!6855006 (= e!4133351 tp!1879167)))

(declare-fun b!6855007 () Bool)

(declare-fun tp!1879168 () Bool)

(declare-fun tp!1879169 () Bool)

(assert (=> b!6855007 (= e!4133351 (and tp!1879168 tp!1879169))))

(assert (= (and b!6853131 ((_ is ElementMatch!16677) (regOne!33867 (regTwo!33867 (regOne!33867 r!7292))))) b!6855004))

(assert (= (and b!6853131 ((_ is Concat!25522) (regOne!33867 (regTwo!33867 (regOne!33867 r!7292))))) b!6855005))

(assert (= (and b!6853131 ((_ is Star!16677) (regOne!33867 (regTwo!33867 (regOne!33867 r!7292))))) b!6855006))

(assert (= (and b!6853131 ((_ is Union!16677) (regOne!33867 (regTwo!33867 (regOne!33867 r!7292))))) b!6855007))

(declare-fun b!6855011 () Bool)

(declare-fun e!4133353 () Bool)

(declare-fun tp!1879175 () Bool)

(declare-fun tp!1879171 () Bool)

(assert (=> b!6855011 (= e!4133353 (and tp!1879175 tp!1879171))))

(assert (=> b!6853131 (= tp!1878534 e!4133353)))

(declare-fun b!6855010 () Bool)

(assert (=> b!6855010 (= e!4133353 tp_is_empty!42607)))

(declare-fun b!6855012 () Bool)

(declare-fun tp!1879172 () Bool)

(assert (=> b!6855012 (= e!4133353 tp!1879172)))

(declare-fun b!6855013 () Bool)

(declare-fun tp!1879173 () Bool)

(declare-fun tp!1879174 () Bool)

(assert (=> b!6855013 (= e!4133353 (and tp!1879173 tp!1879174))))

(assert (= (and b!6853131 ((_ is ElementMatch!16677) (regTwo!33867 (regTwo!33867 (regOne!33867 r!7292))))) b!6855010))

(assert (= (and b!6853131 ((_ is Concat!25522) (regTwo!33867 (regTwo!33867 (regOne!33867 r!7292))))) b!6855011))

(assert (= (and b!6853131 ((_ is Star!16677) (regTwo!33867 (regTwo!33867 (regOne!33867 r!7292))))) b!6855012))

(assert (= (and b!6853131 ((_ is Union!16677) (regTwo!33867 (regTwo!33867 (regOne!33867 r!7292))))) b!6855013))

(declare-fun b!6855015 () Bool)

(declare-fun e!4133354 () Bool)

(declare-fun tp!1879180 () Bool)

(declare-fun tp!1879176 () Bool)

(assert (=> b!6855015 (= e!4133354 (and tp!1879180 tp!1879176))))

(assert (=> b!6853076 (= tp!1878463 e!4133354)))

(declare-fun b!6855014 () Bool)

(assert (=> b!6855014 (= e!4133354 tp_is_empty!42607)))

(declare-fun b!6855016 () Bool)

(declare-fun tp!1879177 () Bool)

(assert (=> b!6855016 (= e!4133354 tp!1879177)))

(declare-fun b!6855017 () Bool)

(declare-fun tp!1879178 () Bool)

(declare-fun tp!1879179 () Bool)

(assert (=> b!6855017 (= e!4133354 (and tp!1879178 tp!1879179))))

(assert (= (and b!6853076 ((_ is ElementMatch!16677) (regOne!33867 (regTwo!33867 (reg!17006 r!7292))))) b!6855014))

(assert (= (and b!6853076 ((_ is Concat!25522) (regOne!33867 (regTwo!33867 (reg!17006 r!7292))))) b!6855015))

(assert (= (and b!6853076 ((_ is Star!16677) (regOne!33867 (regTwo!33867 (reg!17006 r!7292))))) b!6855016))

(assert (= (and b!6853076 ((_ is Union!16677) (regOne!33867 (regTwo!33867 (reg!17006 r!7292))))) b!6855017))

(declare-fun b!6855028 () Bool)

(declare-fun e!4133362 () Bool)

(declare-fun tp!1879185 () Bool)

(declare-fun tp!1879181 () Bool)

(assert (=> b!6855028 (= e!4133362 (and tp!1879185 tp!1879181))))

(assert (=> b!6853076 (= tp!1878464 e!4133362)))

(declare-fun b!6855027 () Bool)

(assert (=> b!6855027 (= e!4133362 tp_is_empty!42607)))

(declare-fun b!6855029 () Bool)

(declare-fun tp!1879182 () Bool)

(assert (=> b!6855029 (= e!4133362 tp!1879182)))

(declare-fun b!6855030 () Bool)

(declare-fun tp!1879183 () Bool)

(declare-fun tp!1879184 () Bool)

(assert (=> b!6855030 (= e!4133362 (and tp!1879183 tp!1879184))))

(assert (= (and b!6853076 ((_ is ElementMatch!16677) (regTwo!33867 (regTwo!33867 (reg!17006 r!7292))))) b!6855027))

(assert (= (and b!6853076 ((_ is Concat!25522) (regTwo!33867 (regTwo!33867 (reg!17006 r!7292))))) b!6855028))

(assert (= (and b!6853076 ((_ is Star!16677) (regTwo!33867 (regTwo!33867 (reg!17006 r!7292))))) b!6855029))

(assert (= (and b!6853076 ((_ is Union!16677) (regTwo!33867 (regTwo!33867 (reg!17006 r!7292))))) b!6855030))

(declare-fun b!6855032 () Bool)

(declare-fun e!4133363 () Bool)

(declare-fun tp!1879190 () Bool)

(declare-fun tp!1879186 () Bool)

(assert (=> b!6855032 (= e!4133363 (and tp!1879190 tp!1879186))))

(assert (=> b!6853122 (= tp!1878522 e!4133363)))

(declare-fun b!6855031 () Bool)

(assert (=> b!6855031 (= e!4133363 tp_is_empty!42607)))

(declare-fun b!6855033 () Bool)

(declare-fun tp!1879187 () Bool)

(assert (=> b!6855033 (= e!4133363 tp!1879187)))

(declare-fun b!6855034 () Bool)

(declare-fun tp!1879188 () Bool)

(declare-fun tp!1879189 () Bool)

(assert (=> b!6855034 (= e!4133363 (and tp!1879188 tp!1879189))))

(assert (= (and b!6853122 ((_ is ElementMatch!16677) (reg!17006 (reg!17006 (regOne!33867 r!7292))))) b!6855031))

(assert (= (and b!6853122 ((_ is Concat!25522) (reg!17006 (reg!17006 (regOne!33867 r!7292))))) b!6855032))

(assert (= (and b!6853122 ((_ is Star!16677) (reg!17006 (reg!17006 (regOne!33867 r!7292))))) b!6855033))

(assert (= (and b!6853122 ((_ is Union!16677) (reg!17006 (reg!17006 (regOne!33867 r!7292))))) b!6855034))

(declare-fun b!6855036 () Bool)

(declare-fun e!4133364 () Bool)

(declare-fun tp!1879195 () Bool)

(declare-fun tp!1879191 () Bool)

(assert (=> b!6855036 (= e!4133364 (and tp!1879195 tp!1879191))))

(assert (=> b!6853067 (= tp!1878452 e!4133364)))

(declare-fun b!6855035 () Bool)

(assert (=> b!6855035 (= e!4133364 tp_is_empty!42607)))

(declare-fun b!6855037 () Bool)

(declare-fun tp!1879192 () Bool)

(assert (=> b!6855037 (= e!4133364 tp!1879192)))

(declare-fun b!6855038 () Bool)

(declare-fun tp!1879193 () Bool)

(declare-fun tp!1879194 () Bool)

(assert (=> b!6855038 (= e!4133364 (and tp!1879193 tp!1879194))))

(assert (= (and b!6853067 ((_ is ElementMatch!16677) (reg!17006 (regTwo!33866 (regOne!33866 r!7292))))) b!6855035))

(assert (= (and b!6853067 ((_ is Concat!25522) (reg!17006 (regTwo!33866 (regOne!33866 r!7292))))) b!6855036))

(assert (= (and b!6853067 ((_ is Star!16677) (reg!17006 (regTwo!33866 (regOne!33866 r!7292))))) b!6855037))

(assert (= (and b!6853067 ((_ is Union!16677) (reg!17006 (regTwo!33866 (regOne!33866 r!7292))))) b!6855038))

(declare-fun b!6855040 () Bool)

(declare-fun e!4133365 () Bool)

(declare-fun tp!1879200 () Bool)

(declare-fun tp!1879196 () Bool)

(assert (=> b!6855040 (= e!4133365 (and tp!1879200 tp!1879196))))

(assert (=> b!6853058 (= tp!1878445 e!4133365)))

(declare-fun b!6855039 () Bool)

(assert (=> b!6855039 (= e!4133365 tp_is_empty!42607)))

(declare-fun b!6855041 () Bool)

(declare-fun tp!1879197 () Bool)

(assert (=> b!6855041 (= e!4133365 tp!1879197)))

(declare-fun b!6855042 () Bool)

(declare-fun tp!1879198 () Bool)

(declare-fun tp!1879199 () Bool)

(assert (=> b!6855042 (= e!4133365 (and tp!1879198 tp!1879199))))

(assert (= (and b!6853058 ((_ is ElementMatch!16677) (regOne!33866 (regTwo!33867 (regTwo!33866 r!7292))))) b!6855039))

(assert (= (and b!6853058 ((_ is Concat!25522) (regOne!33866 (regTwo!33867 (regTwo!33866 r!7292))))) b!6855040))

(assert (= (and b!6853058 ((_ is Star!16677) (regOne!33866 (regTwo!33867 (regTwo!33866 r!7292))))) b!6855041))

(assert (= (and b!6853058 ((_ is Union!16677) (regOne!33866 (regTwo!33867 (regTwo!33866 r!7292))))) b!6855042))

(declare-fun b!6855044 () Bool)

(declare-fun e!4133366 () Bool)

(declare-fun tp!1879205 () Bool)

(declare-fun tp!1879201 () Bool)

(assert (=> b!6855044 (= e!4133366 (and tp!1879205 tp!1879201))))

(assert (=> b!6853058 (= tp!1878441 e!4133366)))

(declare-fun b!6855043 () Bool)

(assert (=> b!6855043 (= e!4133366 tp_is_empty!42607)))

(declare-fun b!6855045 () Bool)

(declare-fun tp!1879202 () Bool)

(assert (=> b!6855045 (= e!4133366 tp!1879202)))

(declare-fun b!6855046 () Bool)

(declare-fun tp!1879203 () Bool)

(declare-fun tp!1879204 () Bool)

(assert (=> b!6855046 (= e!4133366 (and tp!1879203 tp!1879204))))

(assert (= (and b!6853058 ((_ is ElementMatch!16677) (regTwo!33866 (regTwo!33867 (regTwo!33866 r!7292))))) b!6855043))

(assert (= (and b!6853058 ((_ is Concat!25522) (regTwo!33866 (regTwo!33867 (regTwo!33866 r!7292))))) b!6855044))

(assert (= (and b!6853058 ((_ is Star!16677) (regTwo!33866 (regTwo!33867 (regTwo!33866 r!7292))))) b!6855045))

(assert (= (and b!6853058 ((_ is Union!16677) (regTwo!33866 (regTwo!33867 (regTwo!33866 r!7292))))) b!6855046))

(declare-fun b!6855062 () Bool)

(declare-fun e!4133374 () Bool)

(declare-fun tp!1879210 () Bool)

(declare-fun tp!1879206 () Bool)

(assert (=> b!6855062 (= e!4133374 (and tp!1879210 tp!1879206))))

(assert (=> b!6853092 (= tp!1878483 e!4133374)))

(declare-fun b!6855061 () Bool)

(assert (=> b!6855061 (= e!4133374 tp_is_empty!42607)))

(declare-fun b!6855063 () Bool)

(declare-fun tp!1879207 () Bool)

(assert (=> b!6855063 (= e!4133374 tp!1879207)))

(declare-fun b!6855064 () Bool)

(declare-fun tp!1879208 () Bool)

(declare-fun tp!1879209 () Bool)

(assert (=> b!6855064 (= e!4133374 (and tp!1879208 tp!1879209))))

(assert (= (and b!6853092 ((_ is ElementMatch!16677) (regOne!33867 (regOne!33866 (regOne!33867 r!7292))))) b!6855061))

(assert (= (and b!6853092 ((_ is Concat!25522) (regOne!33867 (regOne!33866 (regOne!33867 r!7292))))) b!6855062))

(assert (= (and b!6853092 ((_ is Star!16677) (regOne!33867 (regOne!33866 (regOne!33867 r!7292))))) b!6855063))

(assert (= (and b!6853092 ((_ is Union!16677) (regOne!33867 (regOne!33866 (regOne!33867 r!7292))))) b!6855064))

(declare-fun b!6855066 () Bool)

(declare-fun e!4133375 () Bool)

(declare-fun tp!1879215 () Bool)

(declare-fun tp!1879211 () Bool)

(assert (=> b!6855066 (= e!4133375 (and tp!1879215 tp!1879211))))

(assert (=> b!6853092 (= tp!1878484 e!4133375)))

(declare-fun b!6855065 () Bool)

(assert (=> b!6855065 (= e!4133375 tp_is_empty!42607)))

(declare-fun b!6855067 () Bool)

(declare-fun tp!1879212 () Bool)

(assert (=> b!6855067 (= e!4133375 tp!1879212)))

(declare-fun b!6855068 () Bool)

(declare-fun tp!1879213 () Bool)

(declare-fun tp!1879214 () Bool)

(assert (=> b!6855068 (= e!4133375 (and tp!1879213 tp!1879214))))

(assert (= (and b!6853092 ((_ is ElementMatch!16677) (regTwo!33867 (regOne!33866 (regOne!33867 r!7292))))) b!6855065))

(assert (= (and b!6853092 ((_ is Concat!25522) (regTwo!33867 (regOne!33866 (regOne!33867 r!7292))))) b!6855066))

(assert (= (and b!6853092 ((_ is Star!16677) (regTwo!33867 (regOne!33866 (regOne!33867 r!7292))))) b!6855067))

(assert (= (and b!6853092 ((_ is Union!16677) (regTwo!33867 (regOne!33866 (regOne!33867 r!7292))))) b!6855068))

(declare-fun b!6855070 () Bool)

(declare-fun e!4133376 () Bool)

(declare-fun tp!1879220 () Bool)

(declare-fun tp!1879216 () Bool)

(assert (=> b!6855070 (= e!4133376 (and tp!1879220 tp!1879216))))

(assert (=> b!6853083 (= tp!1878472 e!4133376)))

(declare-fun b!6855069 () Bool)

(assert (=> b!6855069 (= e!4133376 tp_is_empty!42607)))

(declare-fun b!6855071 () Bool)

(declare-fun tp!1879217 () Bool)

(assert (=> b!6855071 (= e!4133376 tp!1879217)))

(declare-fun b!6855072 () Bool)

(declare-fun tp!1879218 () Bool)

(declare-fun tp!1879219 () Bool)

(assert (=> b!6855072 (= e!4133376 (and tp!1879218 tp!1879219))))

(assert (= (and b!6853083 ((_ is ElementMatch!16677) (reg!17006 (regTwo!33867 (regTwo!33867 r!7292))))) b!6855069))

(assert (= (and b!6853083 ((_ is Concat!25522) (reg!17006 (regTwo!33867 (regTwo!33867 r!7292))))) b!6855070))

(assert (= (and b!6853083 ((_ is Star!16677) (reg!17006 (regTwo!33867 (regTwo!33867 r!7292))))) b!6855071))

(assert (= (and b!6853083 ((_ is Union!16677) (reg!17006 (regTwo!33867 (regTwo!33867 r!7292))))) b!6855072))

(declare-fun b!6855074 () Bool)

(declare-fun e!4133377 () Bool)

(declare-fun tp!1879225 () Bool)

(declare-fun tp!1879221 () Bool)

(assert (=> b!6855074 (= e!4133377 (and tp!1879225 tp!1879221))))

(assert (=> b!6853129 (= tp!1878535 e!4133377)))

(declare-fun b!6855073 () Bool)

(assert (=> b!6855073 (= e!4133377 tp_is_empty!42607)))

(declare-fun b!6855075 () Bool)

(declare-fun tp!1879222 () Bool)

(assert (=> b!6855075 (= e!4133377 tp!1879222)))

(declare-fun b!6855076 () Bool)

(declare-fun tp!1879223 () Bool)

(declare-fun tp!1879224 () Bool)

(assert (=> b!6855076 (= e!4133377 (and tp!1879223 tp!1879224))))

(assert (= (and b!6853129 ((_ is ElementMatch!16677) (regOne!33866 (regTwo!33867 (regOne!33867 r!7292))))) b!6855073))

(assert (= (and b!6853129 ((_ is Concat!25522) (regOne!33866 (regTwo!33867 (regOne!33867 r!7292))))) b!6855074))

(assert (= (and b!6853129 ((_ is Star!16677) (regOne!33866 (regTwo!33867 (regOne!33867 r!7292))))) b!6855075))

(assert (= (and b!6853129 ((_ is Union!16677) (regOne!33866 (regTwo!33867 (regOne!33867 r!7292))))) b!6855076))

(declare-fun b!6855078 () Bool)

(declare-fun e!4133378 () Bool)

(declare-fun tp!1879230 () Bool)

(declare-fun tp!1879226 () Bool)

(assert (=> b!6855078 (= e!4133378 (and tp!1879230 tp!1879226))))

(assert (=> b!6853129 (= tp!1878531 e!4133378)))

(declare-fun b!6855077 () Bool)

(assert (=> b!6855077 (= e!4133378 tp_is_empty!42607)))

(declare-fun b!6855079 () Bool)

(declare-fun tp!1879227 () Bool)

(assert (=> b!6855079 (= e!4133378 tp!1879227)))

(declare-fun b!6855080 () Bool)

(declare-fun tp!1879228 () Bool)

(declare-fun tp!1879229 () Bool)

(assert (=> b!6855080 (= e!4133378 (and tp!1879228 tp!1879229))))

(assert (= (and b!6853129 ((_ is ElementMatch!16677) (regTwo!33866 (regTwo!33867 (regOne!33867 r!7292))))) b!6855077))

(assert (= (and b!6853129 ((_ is Concat!25522) (regTwo!33866 (regTwo!33867 (regOne!33867 r!7292))))) b!6855078))

(assert (= (and b!6853129 ((_ is Star!16677) (regTwo!33866 (regTwo!33867 (regOne!33867 r!7292))))) b!6855079))

(assert (= (and b!6853129 ((_ is Union!16677) (regTwo!33866 (regTwo!33867 (regOne!33867 r!7292))))) b!6855080))

(declare-fun b!6855082 () Bool)

(declare-fun e!4133379 () Bool)

(declare-fun tp!1879235 () Bool)

(declare-fun tp!1879231 () Bool)

(assert (=> b!6855082 (= e!4133379 (and tp!1879235 tp!1879231))))

(assert (=> b!6853027 (= tp!1878400 e!4133379)))

(declare-fun b!6855081 () Bool)

(assert (=> b!6855081 (= e!4133379 tp_is_empty!42607)))

(declare-fun b!6855083 () Bool)

(declare-fun tp!1879232 () Bool)

(assert (=> b!6855083 (= e!4133379 tp!1879232)))

(declare-fun b!6855084 () Bool)

(declare-fun tp!1879233 () Bool)

(declare-fun tp!1879234 () Bool)

(assert (=> b!6855084 (= e!4133379 (and tp!1879233 tp!1879234))))

(assert (= (and b!6853027 ((_ is ElementMatch!16677) (regOne!33867 (regTwo!33866 (reg!17006 r!7292))))) b!6855081))

(assert (= (and b!6853027 ((_ is Concat!25522) (regOne!33867 (regTwo!33866 (reg!17006 r!7292))))) b!6855082))

(assert (= (and b!6853027 ((_ is Star!16677) (regOne!33867 (regTwo!33866 (reg!17006 r!7292))))) b!6855083))

(assert (= (and b!6853027 ((_ is Union!16677) (regOne!33867 (regTwo!33866 (reg!17006 r!7292))))) b!6855084))

(declare-fun b!6855086 () Bool)

(declare-fun e!4133380 () Bool)

(declare-fun tp!1879240 () Bool)

(declare-fun tp!1879236 () Bool)

(assert (=> b!6855086 (= e!4133380 (and tp!1879240 tp!1879236))))

(assert (=> b!6853027 (= tp!1878401 e!4133380)))

(declare-fun b!6855085 () Bool)

(assert (=> b!6855085 (= e!4133380 tp_is_empty!42607)))

(declare-fun b!6855087 () Bool)

(declare-fun tp!1879237 () Bool)

(assert (=> b!6855087 (= e!4133380 tp!1879237)))

(declare-fun b!6855088 () Bool)

(declare-fun tp!1879238 () Bool)

(declare-fun tp!1879239 () Bool)

(assert (=> b!6855088 (= e!4133380 (and tp!1879238 tp!1879239))))

(assert (= (and b!6853027 ((_ is ElementMatch!16677) (regTwo!33867 (regTwo!33866 (reg!17006 r!7292))))) b!6855085))

(assert (= (and b!6853027 ((_ is Concat!25522) (regTwo!33867 (regTwo!33866 (reg!17006 r!7292))))) b!6855086))

(assert (= (and b!6853027 ((_ is Star!16677) (regTwo!33867 (regTwo!33866 (reg!17006 r!7292))))) b!6855087))

(assert (= (and b!6853027 ((_ is Union!16677) (regTwo!33867 (regTwo!33866 (reg!17006 r!7292))))) b!6855088))

(declare-fun b!6855090 () Bool)

(declare-fun e!4133381 () Bool)

(declare-fun tp!1879245 () Bool)

(declare-fun tp!1879241 () Bool)

(assert (=> b!6855090 (= e!4133381 (and tp!1879245 tp!1879241))))

(assert (=> b!6853074 (= tp!1878465 e!4133381)))

(declare-fun b!6855089 () Bool)

(assert (=> b!6855089 (= e!4133381 tp_is_empty!42607)))

(declare-fun b!6855091 () Bool)

(declare-fun tp!1879242 () Bool)

(assert (=> b!6855091 (= e!4133381 tp!1879242)))

(declare-fun b!6855092 () Bool)

(declare-fun tp!1879243 () Bool)

(declare-fun tp!1879244 () Bool)

(assert (=> b!6855092 (= e!4133381 (and tp!1879243 tp!1879244))))

(assert (= (and b!6853074 ((_ is ElementMatch!16677) (regOne!33866 (regTwo!33867 (reg!17006 r!7292))))) b!6855089))

(assert (= (and b!6853074 ((_ is Concat!25522) (regOne!33866 (regTwo!33867 (reg!17006 r!7292))))) b!6855090))

(assert (= (and b!6853074 ((_ is Star!16677) (regOne!33866 (regTwo!33867 (reg!17006 r!7292))))) b!6855091))

(assert (= (and b!6853074 ((_ is Union!16677) (regOne!33866 (regTwo!33867 (reg!17006 r!7292))))) b!6855092))

(declare-fun b!6855104 () Bool)

(declare-fun e!4133387 () Bool)

(declare-fun tp!1879250 () Bool)

(declare-fun tp!1879246 () Bool)

(assert (=> b!6855104 (= e!4133387 (and tp!1879250 tp!1879246))))

(assert (=> b!6853074 (= tp!1878461 e!4133387)))

(declare-fun b!6855103 () Bool)

(assert (=> b!6855103 (= e!4133387 tp_is_empty!42607)))

(declare-fun b!6855105 () Bool)

(declare-fun tp!1879247 () Bool)

(assert (=> b!6855105 (= e!4133387 tp!1879247)))

(declare-fun b!6855106 () Bool)

(declare-fun tp!1879248 () Bool)

(declare-fun tp!1879249 () Bool)

(assert (=> b!6855106 (= e!4133387 (and tp!1879248 tp!1879249))))

(assert (= (and b!6853074 ((_ is ElementMatch!16677) (regTwo!33866 (regTwo!33867 (reg!17006 r!7292))))) b!6855103))

(assert (= (and b!6853074 ((_ is Concat!25522) (regTwo!33866 (regTwo!33867 (reg!17006 r!7292))))) b!6855104))

(assert (= (and b!6853074 ((_ is Star!16677) (regTwo!33866 (regTwo!33867 (reg!17006 r!7292))))) b!6855105))

(assert (= (and b!6853074 ((_ is Union!16677) (regTwo!33866 (regTwo!33867 (reg!17006 r!7292))))) b!6855106))

(declare-fun b!6855108 () Bool)

(declare-fun e!4133388 () Bool)

(declare-fun tp!1879255 () Bool)

(declare-fun tp!1879251 () Bool)

(assert (=> b!6855108 (= e!4133388 (and tp!1879255 tp!1879251))))

(assert (=> b!6853018 (= tp!1878389 e!4133388)))

(declare-fun b!6855107 () Bool)

(assert (=> b!6855107 (= e!4133388 tp_is_empty!42607)))

(declare-fun b!6855109 () Bool)

(declare-fun tp!1879252 () Bool)

(assert (=> b!6855109 (= e!4133388 tp!1879252)))

(declare-fun b!6855110 () Bool)

(declare-fun tp!1879253 () Bool)

(declare-fun tp!1879254 () Bool)

(assert (=> b!6855110 (= e!4133388 (and tp!1879253 tp!1879254))))

(assert (= (and b!6853018 ((_ is ElementMatch!16677) (reg!17006 (reg!17006 (regTwo!33867 r!7292))))) b!6855107))

(assert (= (and b!6853018 ((_ is Concat!25522) (reg!17006 (reg!17006 (regTwo!33867 r!7292))))) b!6855108))

(assert (= (and b!6853018 ((_ is Star!16677) (reg!17006 (reg!17006 (regTwo!33867 r!7292))))) b!6855109))

(assert (= (and b!6853018 ((_ is Union!16677) (reg!17006 (reg!17006 (regTwo!33867 r!7292))))) b!6855110))

(declare-fun b_lambda!258857 () Bool)

(assert (= b_lambda!258801 (or b!6851560 b_lambda!258857)))

(declare-fun bs!1832580 () Bool)

(declare-fun d!2154472 () Bool)

(assert (= bs!1832580 (and d!2154472 b!6851560)))

(assert (=> bs!1832580 (= (dynLambda!26466 lambda!387349 (h!72655 (t!380074 (t!380074 zl!343)))) (= (generalisedConcat!2268 (exprs!6561 (h!72655 (t!380074 (t!380074 zl!343))))) lt!2456209))))

(assert (=> bs!1832580 m!7591964))

(assert (=> b!6853524 d!2154472))

(declare-fun b_lambda!258859 () Bool)

(assert (= b_lambda!258835 (or d!2153758 b_lambda!258859)))

(declare-fun bs!1832581 () Bool)

(declare-fun d!2154476 () Bool)

(assert (= bs!1832581 (and d!2154476 d!2153758)))

(assert (=> bs!1832581 (= (dynLambda!26464 lambda!387447 (h!72654 (exprs!6561 (h!72655 (t!380074 zl!343))))) (validRegex!8413 (h!72654 (exprs!6561 (h!72655 (t!380074 zl!343))))))))

(declare-fun m!7592222 () Bool)

(assert (=> bs!1832581 m!7592222))

(assert (=> b!6854050 d!2154476))

(declare-fun b_lambda!258861 () Bool)

(assert (= b_lambda!258795 (or d!2153480 b_lambda!258861)))

(declare-fun bs!1832582 () Bool)

(declare-fun d!2154480 () Bool)

(assert (= bs!1832582 (and d!2154480 d!2153480)))

(assert (=> bs!1832582 (= (dynLambda!26464 lambda!387392 (h!72654 (t!380073 (exprs!6561 setElem!47097)))) (validRegex!8413 (h!72654 (t!380073 (exprs!6561 setElem!47097)))))))

(declare-fun m!7592224 () Bool)

(assert (=> bs!1832582 m!7592224))

(assert (=> b!6853334 d!2154480))

(declare-fun b_lambda!258863 () Bool)

(assert (= b_lambda!258799 (or b!6851560 b_lambda!258863)))

(declare-fun bs!1832583 () Bool)

(declare-fun d!2154484 () Bool)

(assert (= bs!1832583 (and d!2154484 b!6851560)))

(assert (=> bs!1832583 (= (dynLambda!26466 lambda!387349 lt!2456410) (= (generalisedConcat!2268 (exprs!6561 lt!2456410)) lt!2456209))))

(declare-fun m!7592226 () Bool)

(assert (=> bs!1832583 m!7592226))

(assert (=> d!2154022 d!2154484))

(declare-fun b_lambda!258865 () Bool)

(assert (= b_lambda!258849 (or d!2153408 b_lambda!258865)))

(declare-fun bs!1832584 () Bool)

(declare-fun d!2154488 () Bool)

(assert (= bs!1832584 (and d!2154488 d!2153408)))

(assert (=> bs!1832584 (= (dynLambda!26466 lambda!387352 (h!72655 (t!380074 zl!343))) (not (dynLambda!26466 lambda!387349 (h!72655 (t!380074 zl!343)))))))

(declare-fun b_lambda!258897 () Bool)

(assert (=> (not b_lambda!258897) (not bs!1832584)))

(assert (=> bs!1832584 m!7590444))

(assert (=> b!6854270 d!2154488))

(declare-fun b_lambda!258867 () Bool)

(assert (= b_lambda!258809 (or d!2153496 b_lambda!258867)))

(declare-fun bs!1832585 () Bool)

(declare-fun d!2154490 () Bool)

(assert (= bs!1832585 (and d!2154490 d!2153496)))

(assert (=> bs!1832585 (= (dynLambda!26464 lambda!387395 (h!72654 (t!380073 lt!2456210))) (not (dynLambda!26464 lambda!387348 (h!72654 (t!380073 lt!2456210)))))))

(declare-fun b_lambda!258899 () Bool)

(assert (=> (not b_lambda!258899) (not bs!1832585)))

(assert (=> bs!1832585 m!7590722))

(assert (=> b!6853611 d!2154490))

(declare-fun b_lambda!258869 () Bool)

(assert (= b_lambda!258821 (or d!2153498 b_lambda!258869)))

(declare-fun bs!1832586 () Bool)

(declare-fun d!2154492 () Bool)

(assert (= bs!1832586 (and d!2154492 d!2153498)))

(assert (=> bs!1832586 (= (dynLambda!26464 lambda!387400 (h!72654 (t!380073 lt!2456210))) (validRegex!8413 (h!72654 (t!380073 lt!2456210))))))

(assert (=> bs!1832586 m!7590754))

(assert (=> b!6853793 d!2154492))

(declare-fun b_lambda!258871 () Bool)

(assert (= b_lambda!258823 (or d!2153792 b_lambda!258871)))

(declare-fun bs!1832587 () Bool)

(declare-fun d!2154494 () Bool)

(assert (= bs!1832587 (and d!2154494 d!2153792)))

(assert (=> bs!1832587 (= (dynLambda!26464 lambda!387450 (h!72654 (unfocusZipperList!2094 lt!2456208))) (validRegex!8413 (h!72654 (unfocusZipperList!2094 lt!2456208))))))

(declare-fun m!7592228 () Bool)

(assert (=> bs!1832587 m!7592228))

(assert (=> b!6853826 d!2154494))

(declare-fun b_lambda!258873 () Bool)

(assert (= b_lambda!258841 (or b!6851566 b_lambda!258873)))

(declare-fun bs!1832588 () Bool)

(declare-fun d!2154496 () Bool)

(assert (= bs!1832588 (and d!2154496 b!6851566)))

(declare-fun res!2797508 () Bool)

(declare-fun e!4133395 () Bool)

(assert (=> bs!1832588 (=> (not res!2797508) (not e!4133395))))

(assert (=> bs!1832588 (= res!2797508 (validRegex!8413 (h!72654 (t!380073 (t!380073 lt!2456210)))))))

(assert (=> bs!1832588 (= (dynLambda!26464 lambda!387348 (h!72654 (t!380073 (t!380073 lt!2456210)))) e!4133395)))

(declare-fun b!6855121 () Bool)

(assert (=> b!6855121 (= e!4133395 (matchR!8860 (h!72654 (t!380073 (t!380073 lt!2456210))) s!2326))))

(assert (= (and bs!1832588 res!2797508) b!6855121))

(declare-fun m!7592232 () Bool)

(assert (=> bs!1832588 m!7592232))

(declare-fun m!7592236 () Bool)

(assert (=> b!6855121 m!7592236))

(assert (=> b!6854113 d!2154496))

(declare-fun b_lambda!258875 () Bool)

(assert (= b_lambda!258811 (or d!2153748 b_lambda!258875)))

(declare-fun bs!1832589 () Bool)

(declare-fun d!2154500 () Bool)

(assert (= bs!1832589 (and d!2154500 d!2153748)))

(assert (=> bs!1832589 (= (dynLambda!26464 lambda!387446 (h!72654 (exprs!6561 setElem!47103))) (validRegex!8413 (h!72654 (exprs!6561 setElem!47103))))))

(declare-fun m!7592238 () Bool)

(assert (=> bs!1832589 m!7592238))

(assert (=> b!6853613 d!2154500))

(declare-fun b_lambda!258877 () Bool)

(assert (= b_lambda!258851 (or d!2153724 b_lambda!258877)))

(declare-fun bs!1832590 () Bool)

(declare-fun d!2154502 () Bool)

(assert (= bs!1832590 (and d!2154502 d!2153724)))

(assert (=> bs!1832590 (= (dynLambda!26464 lambda!387439 (h!72654 (exprs!6561 (h!72655 zl!343)))) (validRegex!8413 (h!72654 (exprs!6561 (h!72655 zl!343)))))))

(assert (=> bs!1832590 m!7590750))

(assert (=> b!6854331 d!2154502))

(declare-fun b_lambda!258879 () Bool)

(assert (= b_lambda!258839 (or b!6851566 b_lambda!258879)))

(declare-fun bs!1832591 () Bool)

(declare-fun d!2154504 () Bool)

(assert (= bs!1832591 (and d!2154504 b!6851566)))

(declare-fun res!2797514 () Bool)

(declare-fun e!4133403 () Bool)

(assert (=> bs!1832591 (=> (not res!2797514) (not e!4133403))))

(assert (=> bs!1832591 (= res!2797514 (validRegex!8413 lt!2456446))))

(assert (=> bs!1832591 (= (dynLambda!26464 lambda!387348 lt!2456446) e!4133403)))

(declare-fun b!6855131 () Bool)

(assert (=> b!6855131 (= e!4133403 (matchR!8860 lt!2456446 s!2326))))

(assert (= (and bs!1832591 res!2797514) b!6855131))

(declare-fun m!7592240 () Bool)

(assert (=> bs!1832591 m!7592240))

(declare-fun m!7592242 () Bool)

(assert (=> b!6855131 m!7592242))

(assert (=> d!2154256 d!2154504))

(declare-fun b_lambda!258881 () Bool)

(assert (= b_lambda!258829 (or d!2153730 b_lambda!258881)))

(declare-fun bs!1832592 () Bool)

(declare-fun d!2154506 () Bool)

(assert (= bs!1832592 (and d!2154506 d!2153730)))

(assert (=> bs!1832592 (= (dynLambda!26464 lambda!387442 (h!72654 lt!2456210)) (not (dynLambda!26464 lambda!387401 (h!72654 lt!2456210))))))

(declare-fun b_lambda!258901 () Bool)

(assert (=> (not b_lambda!258901) (not bs!1832592)))

(declare-fun m!7592244 () Bool)

(assert (=> bs!1832592 m!7592244))

(assert (=> b!6853999 d!2154506))

(declare-fun b_lambda!258883 () Bool)

(assert (= b_lambda!258837 (or d!2153794 b_lambda!258883)))

(declare-fun bs!1832593 () Bool)

(declare-fun d!2154508 () Bool)

(assert (= bs!1832593 (and d!2154508 d!2153794)))

(assert (=> bs!1832593 (= (dynLambda!26464 lambda!387451 (h!72654 lt!2456376)) (validRegex!8413 (h!72654 lt!2456376)))))

(declare-fun m!7592246 () Bool)

(assert (=> bs!1832593 m!7592246))

(assert (=> b!6854097 d!2154508))

(declare-fun b_lambda!258885 () Bool)

(assert (= b_lambda!258825 (or d!2153712 b_lambda!258885)))

(declare-fun bs!1832594 () Bool)

(declare-fun d!2154510 () Bool)

(assert (= bs!1832594 (and d!2154510 d!2153712)))

(assert (=> bs!1832594 (= (dynLambda!26464 lambda!387436 (h!72654 (unfocusZipperList!2094 zl!343))) (validRegex!8413 (h!72654 (unfocusZipperList!2094 zl!343))))))

(declare-fun m!7592248 () Bool)

(assert (=> bs!1832594 m!7592248))

(assert (=> b!6853837 d!2154510))

(declare-fun b_lambda!258887 () Bool)

(assert (= b_lambda!258855 (or d!2153764 b_lambda!258887)))

(declare-fun bs!1832595 () Bool)

(declare-fun d!2154512 () Bool)

(assert (= bs!1832595 (and d!2154512 d!2153764)))

(assert (=> bs!1832595 (= (dynLambda!26464 lambda!387448 (h!72654 (exprs!6561 lt!2456307))) (validRegex!8413 (h!72654 (exprs!6561 lt!2456307))))))

(declare-fun m!7592250 () Bool)

(assert (=> bs!1832595 m!7592250))

(assert (=> b!6854361 d!2154512))

(declare-fun b_lambda!258889 () Bool)

(assert (= b_lambda!258853 (or d!2153770 b_lambda!258889)))

(declare-fun bs!1832596 () Bool)

(declare-fun d!2154514 () Bool)

(assert (= bs!1832596 (and d!2154514 d!2153770)))

(assert (=> bs!1832596 (= (dynLambda!26464 lambda!387449 (h!72654 lt!2456371)) (validRegex!8413 (h!72654 lt!2456371)))))

(declare-fun m!7592252 () Bool)

(assert (=> bs!1832596 m!7592252))

(assert (=> b!6854333 d!2154514))

(declare-fun b_lambda!258891 () Bool)

(assert (= b_lambda!258843 (or d!2153502 b_lambda!258891)))

(declare-fun bs!1832597 () Bool)

(declare-fun d!2154516 () Bool)

(assert (= bs!1832597 (and d!2154516 d!2153502)))

(assert (=> bs!1832597 (= (dynLambda!26464 lambda!387405 (h!72654 (t!380073 (exprs!6561 (h!72655 zl!343))))) (validRegex!8413 (h!72654 (t!380073 (exprs!6561 (h!72655 zl!343))))))))

(declare-fun m!7592256 () Bool)

(assert (=> bs!1832597 m!7592256))

(assert (=> b!6854143 d!2154516))

(declare-fun b_lambda!258893 () Bool)

(assert (= b_lambda!258847 (or d!2153500 b_lambda!258893)))

(declare-fun bs!1832598 () Bool)

(declare-fun d!2154518 () Bool)

(assert (= bs!1832598 (and d!2154518 d!2153500)))

(assert (=> bs!1832598 (= (dynLambda!26464 lambda!387404 (h!72654 (t!380073 lt!2456291))) (validRegex!8413 (h!72654 (t!380073 lt!2456291))))))

(declare-fun m!7592260 () Bool)

(assert (=> bs!1832598 m!7592260))

(assert (=> b!6854201 d!2154518))

(declare-fun b_lambda!258895 () Bool)

(assert (= b_lambda!258831 (or d!2153700 b_lambda!258895)))

(declare-fun bs!1832599 () Bool)

(declare-fun d!2154520 () Bool)

(assert (= bs!1832599 (and d!2154520 d!2153700)))

(assert (=> bs!1832599 (= (dynLambda!26466 lambda!387430 (h!72655 zl!343)) (not (dynLambda!26466 lambda!387362 (h!72655 zl!343))))))

(declare-fun b_lambda!258903 () Bool)

(assert (=> (not b_lambda!258903) (not bs!1832599)))

(declare-fun m!7592264 () Bool)

(assert (=> bs!1832599 m!7592264))

(assert (=> b!6854001 d!2154520))

(check-sat (not b!6854628) (not b!6853462) (not b!6854554) (not b!6854623) (not b!6854455) (not bm!624360) (not b!6854507) (not b!6854826) (not b!6854271) (not bm!624276) (not d!2154264) (not b!6854750) (not bm!624379) (not b!6855067) (not b!6854479) (not bm!624349) (not b!6854518) (not b!6854798) (not d!2154338) (not b!6854653) (not bm!624226) (not b!6854387) (not bs!1832580) (not b!6854065) (not b!6853936) (not b!6855121) (not d!2153960) (not b!6854896) (not b!6854594) (not b!6854764) (not d!2154170) (not bm!624240) (not b!6853805) (not b!6854362) (not b!6854098) (not bm!624273) (not b!6854334) (not b_lambda!258875) (not b!6854878) (not b!6854834) (not b!6854871) (not b!6853696) (not b!6854228) (not b!6855062) (not bm!624320) (not b_lambda!258879) (not b!6854821) (not b!6854497) (not b!6853914) (not b!6854231) (not bm!624413) (not b!6854462) (not b!6853220) (not b!6854866) (not b!6854779) (not b!6854606) (not b!6854916) (not b!6854559) (not bs!1832582) (not d!2154194) (not b!6854739) (not b!6855105) (not d!2154174) (not b!6855034) (not b!6854677) (not b!6854676) (not b_lambda!258903) (not b!6854912) (not b!6854692) (not b!6853763) (not b!6854890) (not b_lambda!258771) (not b!6854818) (not d!2154294) (not b!6854295) (not bm!624211) (not b!6854526) (not b!6854771) (not bm!624401) (not b!6853687) (not b!6854458) (not b!6855063) (not b_lambda!258675) (not b!6854418) (not b!6854944) (not d!2153902) (not b!6854585) (not b!6855079) (not b!6854998) (not b!6854875) (not b!6854429) (not b_lambda!258765) (not d!2154350) (not b!6854489) (not b!6854874) (not d!2153834) (not bm!624284) (not b!6854548) (not b!6854332) (not b!6855007) (not b!6854845) (not b!6854528) (not bm!624243) (not b!6853528) (not b!6853621) (not b!6854832) (not b!6854696) (not bm!624364) (not d!2154144) (not b!6854503) (not bm!624281) (not b!6853588) (not bm!624355) (not b!6853923) (not b!6853797) (not b_lambda!258753) (not b!6854772) (not b!6853313) (not b!6853459) (not b!6853794) (not b!6855068) (not b!6855045) (not b!6854955) (not b!6853315) (not d!2154340) (not b!6854829) (not b!6853614) (not b!6853842) (not b!6853186) (not b!6854602) (not b_lambda!258883) (not b!6854171) (not b!6854224) (not b!6853777) (not b!6854756) (not bm!624244) (not b!6854440) (not b!6853367) (not b!6854954) (not b!6854658) (not b!6855040) (not b!6854443) (not b!6854868) (not b!6853799) (not bm!624305) (not bm!624278) (not b!6854925) (not b!6854862) (not bm!624377) (not b!6854711) (not b!6853899) (not b!6854777) (not bs!1832581) (not b!6853466) (not b!6854381) (not b!6854854) (not b!6854570) (not b!6853993) (not bm!624289) (not b!6854740) (not b!6855066) (not b_lambda!258887) (not bm!624425) tp_is_empty!42607 (not b!6855082) (not b!6853964) (not b!6855083) (not b_lambda!258863) (not b!6854408) (not b!6853759) (not bm!624351) (not d!2153928) (not b!6854897) (not d!2154188) (not b!6853230) (not b!6854880) (not b!6854724) (not bm!624323) (not d!2154180) (not b!6855071) (not bm!624288) (not b!6853154) (not bs!1832588) (not b!6855030) (not bm!624259) (not b!6854383) (not bm!624313) (not b!6854942) (not b!6853523) (not b_lambda!258897) (not b!6853937) (not b!6854666) (not b!6855078) (not b!6854574) (not b!6854229) (not b!6854505) (not b!6854469) (not b!6854632) (not bm!624295) (not b!6854731) (not d!2153900) (not b!6854971) (not bm!624212) (not b!6853461) (not b!6853223) (not b!6854449) (not b!6855110) (not b!6854547) (not b!6854457) (not b!6855042) (not b!6854502) (not bm!624362) (not b!6854892) (not bs!1832591) (not b!6854467) (not b!6855092) (not b!6854966) (not b!6854474) (not b!6854943) (not b!6855084) (not b_lambda!258871) (not d!2153968) (not b!6853187) (not b!6853194) (not d!2154256) (not b!6854948) (not bm!624435) (not b_lambda!258857) (not b!6855075) (not b!6853806) (not b!6853921) (not bs!1832596) (not d!2154126) (not b!6854841) (not b!6853226) (not b!6854315) (not b!6854681) (not b!6855076) (not b!6855013) (not b!6854392) (not b!6854732) (not b!6855091) (not b!6854822) (not b!6854837) (not b!6854985) (not bm!624275) (not b_lambda!258763) (not b!6854972) (not b!6854767) (not bm!624221) (not b!6854804) (not b_lambda!258677) (not b!6854847) (not b!6855002) (not b!6854717) (not b!6854412) (not bm!624233) (not b!6853756) (not b!6854413) (not bm!624354) (not b!6854597) (not bs!1832595) (not b!6853610) (not b!6853831) (not b!6854600) (not b!6854747) (not b_lambda!258865) (not b!6853208) (not bm!624456) (not b!6854760) (not b!6854422) (not b!6854524) (not bm!624329) (not b!6855029) (not bm!624459) (not b!6853929) (not b!6854989) (not b!6853521) (not b!6854646) (not b!6854996) (not b!6854794) (not b!6853714) (not b!6854522) (not b!6854816) (not b!6853390) (not b!6854708) (not b!6854420) (not b!6854723) (not bm!624220) (not b!6854686) (not b!6854598) (not d!2153866) (not b!6854716) (not b!6853209) (not b!6853585) (not b!6854719) (not b!6854820) (not b!6854625) (not b!6854631) (not b!6854915) (not bm!624308) (not b!6855072) (not b_lambda!258873) (not b!6853757) (not b!6855033) (not b!6854470) (not b!6854722) (not b!6855003) (not b!6855090) (not b!6855088) (not b!6854115) (not b!6853451) (not setNonEmpty!47106) (not b!6854282) (not b!6854840) (not b!6853934) (not b!6854366) (not b!6855108) (not b!6854825) (not b!6854501) (not b!6854117) (not b!6854879) (not bm!624316) (not b!6853420) (not b!6854222) (not b!6854950) (not b!6853582) (not b!6854800) (not b_lambda!258759) (not b!6853464) (not bm!624433) (not b!6854863) (not b!6853878) (not b!6854855) (not b!6854959) (not b!6854577) (not bm!624296) (not b!6854568) (not b!6854481) (not d!2153874) (not bm!624300) (not b!6854425) (not bm!624404) (not bm!624257) (not b!6854579) (not b!6854562) (not b!6853316) (not b!6853147) (not b!6854824) (not b!6853292) (not b!6854848) (not b!6855070) (not b!6853707) (not b!6853804) (not bm!624464) (not bm!624414) (not bs!1832589) (not b!6854624) (not bm!624458) (not bs!1832583) (not b!6853169) (not b!6854656) (not d!2154058) (not b!6853183) (not b!6854614) (not b!6854860) (not d!2154304) (not b!6854550) (not b!6854735) (not b!6854893) (not b!6853394) (not b!6854487) (not b!6854685) (not b!6854520) (not b!6854483) (not d!2153894) (not d!2153958) (not b_lambda!258861) (not b!6853396) (not bm!624256) (not b!6853145) (not d!2154314) (not d!2153948) (not b!6854444) (not b!6854963) (not bm!624367) (not b!6854137) (not bm!624342) (not b!6854576) (not b!6854958) (not bm!624330) (not b!6854759) (not b!6853513) (not b!6854486) (not b!6854612) (not b!6853225) (not b!6853661) (not b!6853227) (not b!6854395) (not b!6854000) (not b!6854560) (not b!6854609) (not bm!624386) (not b!6854439) (not b!6853189) (not b!6854002) (not b!6854592) (not b!6854914) (not d!2153890) (not b!6854691) (not b!6854390) (not b!6853465) (not b!6854690) (not b!6854867) (not b!6854567) (not bm!624324) (not b!6854843) (not b!6853210) (not bm!624254) (not bm!624387) (not b!6853727) (not d!2154086) (not bm!624353) (not d!2153888) (not d!2154266) (not b!6855036) (not bm!624303) (not b!6855131) (not b!6854542) (not b!6854720) (not b!6854386) (not b!6853941) (not b!6853393) (not b!6854718) (not b!6853874) (not b!6854947) (not b!6854992) (not b!6854858) (not b!6854448) (not b!6854773) (not b!6854551) (not b!6853504) (not b!6854902) (not d!2154026) (not b!6853160) (not b!6854743) (not b!6854864) (not b!6854846) (not b!6853888) (not b!6854694) (not b!6854477) (not b_lambda!258869) (not b!6854382) (not b!6853457) (not bm!624283) (not d!2154246) (not b!6854742) (not bm!624265) (not b!6854424) (not bm!624331) (not b!6854428) (not b!6854850) (not b!6854649) (not b!6854901) (not b!6854144) (not b!6853381) (not b!6854920) (not b!6853548) (not b!6854712) (not b_lambda!258749) (not b!6853185) (not b!6853317) (not b!6855037) (not b!6854445) (not b!6854911) (not b!6854478) (not b!6854605) (not b!6854986) (not d!2153918) (not bm!624311) (not b!6854563) (not b!6853335) (not b!6854752) (not bm!624462) (not b!6854596) (not b!6853946) (not b!6854993) (not bm!624371) (not b!6854906) (not b!6853215) (not b!6855038) (not b!6853366) (not b!6854799) (not b!6854543) (not b!6854754) (not b!6854051) (not b!6854564) (not b!6854627) (not d!2153838) (not b!6855109) (not b!6854852) (not bm!624279) (not b!6855016) (not b!6854763) (not b!6854584) (not d!2153840) (not b!6854368) (not b!6855028) (not bm!624345) (not b!6853652) (not b_lambda!258893) (not bm!624304) (not bs!1832597) (not b!6854414) (not b!6854751) (not b!6854894) (not b!6854447) (not b!6854155) (not bm!624302) (not b!6854650) (not b!6854661) (not b!6854997) (not b!6854461) (not b!6853883) (not b!6854960) (not b!6855017) (not b!6854964) (not b!6854509) (not b!6854587) (not b!6854410) (not b!6853152) (not b!6854654) (not bm!624225) (not b!6854905) (not b!6853877) (not bm!624419) (not b!6853566) (not b!6854795) (not bm!624339) (not b!6854970) (not b!6854391) (not b!6854952) (not b!6854495) (not bm!624242) (not b!6854648) (not b!6854498) (not d!2154088) (not b!6855104) (not b!6854738) (not b!6854762) (not b!6853586) (not b!6854465) (not b!6854384) (not bm!624337) (not bm!624403) (not b_lambda!258755) (not b!6855005) (not b!6853565) (not b!6854566) (not b!6854380) (not b!6854482) (not b!6854830) (not bm!624424) (not b!6854707) (not b!6854556) (not b!6854990) (not b!6853196) (not b!6855015) (not b!6853612) (not b!6854571) (not b!6854546) (not b!6854590) (not b!6853736) (not b!6854485) (not b!6854967) (not b!6854226) (not b!6855064) (not d!2154130) (not b_lambda!258881) (not b!6854748) (not b!6853193) (not b!6855087) (not bm!624247) (not bs!1832590) (not b!6854870) (not b!6854490) (not bm!624444) (not b!6854544) (not b!6854499) (not b!6854523) (not b!6855086) (not d!2154046) (not b!6854593) (not b!6854951) (not d!2153962) (not b!6854664) (not b!6853532) (not b!6853801) (not b!6854851) (not bm!624210) (not b!6853665) (not b!6853879) (not b!6854394) (not bm!624206) (not b!6854922) (not d!2153926) (not bs!1832587) (not b!6854430) (not b_lambda!258747) (not b!6853577) (not b_lambda!258859) (not b!6853567) (not b!6854172) (not b!6854736) (not b!6854572) (not b!6853395) (not bm!624416) (not b!6853820) (not b!6854200) (not b!6854601) (not b!6853594) (not b!6854728) (not b!6854459) (not bm!624461) (not bm!624427) (not b!6854110) (not b!6853620) (not b!6854652) (not b!6854776) (not b!6853211) (not b!6855044) (not b!6853314) (not bs!1832593) (not b!6854727) (not b!6854558) (not b!6853658) (not b!6854900) (not bm!624363) (not b_lambda!258757) (not d!2154022) (not b!6854421) (not b!6854466) (not b!6854645) (not d!2153882) (not b!6854682) (not b!6854610) (not b!6854491) (not b_lambda!258681) (not b!6854613) (not b!6854962) (not b!6854493) (not b!6854388) (not b!6854575) (not b!6854765) (not b!6853167) (not b!6854956) (not b!6854828) (not b!6853431) (not bm!624343) (not d!2153988) (not b!6854755) (not b!6854589) (not b!6854660) (not b!6853305) (not b_lambda!258751) (not b!6853519) (not b!6854836) (not b!6854781) (not b!6853191) (not b!6853392) (not b!6853659) (not d!2154178) (not b!6854227) (not b!6854409) (not b!6854968) (not b!6854726) (not b!6854994) (not b_lambda!258773) (not b!6854988) (not b!6854347) (not b_lambda!258679) (not d!2154226) (not b!6854734) (not b!6855106) (not bm!624426) (not b!6854260) (not b!6853553) (not bm!624310) (not b!6854662) (not b!6854946) (not b!6854713) (not d!2154166) (not b!6854657) (not b!6853388) (not b!6854206) (not b!6854494) (not b!6853377) (not b!6854128) (not b!6854552) (not b!6853768) (not b!6854225) (not b!6854583) (not d!2153998) (not bm!624322) (not b!6854833) (not b!6853387) (not b!6854367) (not b!6854588) (not b!6853677) (not b!6854730) (not b!6854780) (not b!6854715) (not b!6853347) (not bm!624314) (not b_lambda!258899) (not b!6854775) (not bm!624412) (not b_lambda!258895) (not d!2154276) (not b!6853922) (not bs!1832598) (not b!6853670) (not b!6854898) (not b!6854471) (not bm!624352) (not b!6853526) (not b!6855006) (not b!6853229) (not b!6854608) (not b!6854926) (not b_lambda!258889) (not bm!624245) (not b!6853228) (not b!6854604) (not b!6853192) (not b!6854856) (not b!6854581) (not b!6854768) (not b!6853568) (not b!6854680) (not b!6855012) (not b!6854921) (not b!6853935) (not b!6855001) (not bm!624287) (not b!6854796) (not b!6854525) (not b!6855000) (not b!6854792) (not bm!624285) (not b!6854803) (not b!6853838) (not b!6853318) (not b!6854519) (not d!2154140) (not b_lambda!258867) (not bm!624375) (not b!6854793) (not b!6853876) (not b_lambda!258901) (not b!6855046) (not d!2154008) (not bm!624348) (not bm!624372) (not b!6854924) (not bm!624232) (not b!6855080) (not b!6854555) (not b!6853572) (not bm!624208) (not b!6854475) (not b!6854876) (not b!6854441) (not b!6854678) (not b!6855074) (not d!2154230) (not b_lambda!258885) (not b!6853311) (not b!6854769) (not b!6854744) (not b!6854463) (not b!6854111) (not b!6854859) (not b!6854338) (not b!6854838) (not b!6854872) (not b!6853737) (not d!2154206) (not bm!624417) (not b!6854644) (not b!6854580) (not b!6854426) (not b!6854904) (not b!6854088) (not b!6854746) (not b!6854416) (not b!6854984) (not b!6854910) (not b!6854758) (not b!6855032) (not b_lambda!258891) (not b!6853802) (not b!6854695) (not b!6854665) (not b!6854473) (not b!6855011) (not b!6854842) (not b!6854202) (not b!6853195) (not b!6854396) (not b!6854709) (not b!6854015) (not bm!624446) (not b_lambda!258877) (not b!6854417) (not b!6853660) (not bm!624399) (not b!6853827) (not b!6854530) (not b!6854529) (not b!6854684) (not d!2154218) (not b!6854454) (not b!6854453) (not bm!624340) (not d!2153932) (not b_lambda!258761) (not d!2154354) (not b!6854633) (not b!6854629) (not d!2153986) (not d!2154122) (not bs!1832586) (not b!6853758) (not b!6854802) (not b!6855041) (not b!6853397) (not bm!624376) (not bs!1832594) (not b!6854817) (not bm!624291) (not bm!624263))
(check-sat)
