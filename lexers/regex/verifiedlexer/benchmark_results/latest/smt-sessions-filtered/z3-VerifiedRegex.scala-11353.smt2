; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!601244 () Bool)

(assert start!601244)

(declare-fun b!5910207 () Bool)

(declare-fun e!3619198 () Bool)

(declare-fun tp_is_empty!41159 () Bool)

(assert (=> b!5910207 (= e!3619198 tp_is_empty!41159)))

(declare-fun b!5910208 () Bool)

(declare-fun tp!1642073 () Bool)

(declare-fun tp!1642068 () Bool)

(assert (=> b!5910208 (= e!3619198 (and tp!1642073 tp!1642068))))

(declare-fun b!5910209 () Bool)

(declare-fun res!2478221 () Bool)

(declare-fun e!3619197 () Bool)

(assert (=> b!5910209 (=> (not res!2478221) (not e!3619197))))

(declare-datatypes ((C!32176 0))(
  ( (C!32177 (val!25790 Int)) )
))
(declare-datatypes ((Regex!15953 0))(
  ( (ElementMatch!15953 (c!1050351 C!32176)) (Concat!24798 (regOne!32418 Regex!15953) (regTwo!32418 Regex!15953)) (EmptyExpr!15953) (Star!15953 (reg!16282 Regex!15953)) (EmptyLang!15953) (Union!15953 (regOne!32419 Regex!15953) (regTwo!32419 Regex!15953)) )
))
(declare-fun r!7292 () Regex!15953)

(declare-datatypes ((List!64158 0))(
  ( (Nil!64034) (Cons!64034 (h!70482 Regex!15953) (t!377547 List!64158)) )
))
(declare-datatypes ((Context!10674 0))(
  ( (Context!10675 (exprs!5837 List!64158)) )
))
(declare-datatypes ((List!64159 0))(
  ( (Nil!64035) (Cons!64035 (h!70483 Context!10674) (t!377548 List!64159)) )
))
(declare-fun zl!343 () List!64159)

(declare-fun unfocusZipper!1695 (List!64159) Regex!15953)

(assert (=> b!5910209 (= res!2478221 (= r!7292 (unfocusZipper!1695 zl!343)))))

(declare-fun b!5910210 () Bool)

(declare-fun e!3619200 () Bool)

(declare-fun validRegex!7689 (Regex!15953) Bool)

(assert (=> b!5910210 (= e!3619200 (validRegex!7689 (regTwo!32418 r!7292)))))

(declare-fun b!5910211 () Bool)

(declare-fun res!2478215 () Bool)

(assert (=> b!5910211 (=> res!2478215 e!3619200)))

(assert (=> b!5910211 (= res!2478215 (not (validRegex!7689 (regOne!32418 r!7292))))))

(declare-fun b!5910212 () Bool)

(declare-fun e!3619199 () Bool)

(declare-fun tp!1642072 () Bool)

(assert (=> b!5910212 (= e!3619199 tp!1642072)))

(declare-fun setIsEmpty!40072 () Bool)

(declare-fun setRes!40072 () Bool)

(assert (=> setIsEmpty!40072 setRes!40072))

(declare-fun b!5910213 () Bool)

(declare-fun res!2478219 () Bool)

(assert (=> b!5910213 (=> res!2478219 e!3619200)))

(get-info :version)

(assert (=> b!5910213 (= res!2478219 (not ((_ is Cons!64034) (exprs!5837 (h!70483 zl!343)))))))

(declare-fun b!5910214 () Bool)

(declare-fun res!2478224 () Bool)

(assert (=> b!5910214 (=> res!2478224 e!3619200)))

(declare-fun isEmpty!35888 (List!64159) Bool)

(assert (=> b!5910214 (= res!2478224 (not (isEmpty!35888 (t!377548 zl!343))))))

(declare-fun b!5910215 () Bool)

(assert (=> b!5910215 (= e!3619197 (not e!3619200))))

(declare-fun res!2478218 () Bool)

(assert (=> b!5910215 (=> res!2478218 e!3619200)))

(assert (=> b!5910215 (= res!2478218 (not ((_ is Cons!64035) zl!343)))))

(declare-datatypes ((List!64160 0))(
  ( (Nil!64036) (Cons!64036 (h!70484 C!32176) (t!377549 List!64160)) )
))
(declare-fun s!2326 () List!64160)

(declare-fun matchR!8136 (Regex!15953 List!64160) Bool)

(declare-fun matchRSpec!3054 (Regex!15953 List!64160) Bool)

(assert (=> b!5910215 (= (matchR!8136 r!7292 s!2326) (matchRSpec!3054 r!7292 s!2326))))

(declare-datatypes ((Unit!157177 0))(
  ( (Unit!157178) )
))
(declare-fun lt!2308950 () Unit!157177)

(declare-fun mainMatchTheorem!3054 (Regex!15953 List!64160) Unit!157177)

(assert (=> b!5910215 (= lt!2308950 (mainMatchTheorem!3054 r!7292 s!2326))))

(declare-fun b!5910216 () Bool)

(declare-fun res!2478217 () Bool)

(assert (=> b!5910216 (=> res!2478217 e!3619200)))

(declare-fun generalisedUnion!1797 (List!64158) Regex!15953)

(declare-fun unfocusZipperList!1374 (List!64159) List!64158)

(assert (=> b!5910216 (= res!2478217 (not (= r!7292 (generalisedUnion!1797 (unfocusZipperList!1374 zl!343)))))))

(declare-fun b!5910217 () Bool)

(declare-fun e!3619203 () Bool)

(declare-fun tp!1642069 () Bool)

(assert (=> b!5910217 (= e!3619203 tp!1642069)))

(declare-fun b!5910218 () Bool)

(declare-fun res!2478216 () Bool)

(assert (=> b!5910218 (=> res!2478216 e!3619200)))

(assert (=> b!5910218 (= res!2478216 (or ((_ is EmptyExpr!15953) r!7292) ((_ is EmptyLang!15953) r!7292) ((_ is ElementMatch!15953) r!7292) ((_ is Union!15953) r!7292) (not ((_ is Concat!24798) r!7292))))))

(declare-fun b!5910219 () Bool)

(declare-fun res!2478223 () Bool)

(assert (=> b!5910219 (=> res!2478223 e!3619200)))

(declare-fun generalisedConcat!1550 (List!64158) Regex!15953)

(assert (=> b!5910219 (= res!2478223 (not (= r!7292 (generalisedConcat!1550 (exprs!5837 (h!70483 zl!343))))))))

(declare-fun b!5910220 () Bool)

(declare-fun tp!1642071 () Bool)

(declare-fun tp!1642070 () Bool)

(assert (=> b!5910220 (= e!3619198 (and tp!1642071 tp!1642070))))

(declare-fun tp!1642074 () Bool)

(declare-fun setNonEmpty!40072 () Bool)

(declare-fun setElem!40072 () Context!10674)

(declare-fun inv!83129 (Context!10674) Bool)

(assert (=> setNonEmpty!40072 (= setRes!40072 (and tp!1642074 (inv!83129 setElem!40072) e!3619203))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10674))

(declare-fun setRest!40072 () (InoxSet Context!10674))

(assert (=> setNonEmpty!40072 (= z!1189 ((_ map or) (store ((as const (Array Context!10674 Bool)) false) setElem!40072 true) setRest!40072))))

(declare-fun res!2478222 () Bool)

(assert (=> start!601244 (=> (not res!2478222) (not e!3619197))))

(assert (=> start!601244 (= res!2478222 (validRegex!7689 r!7292))))

(assert (=> start!601244 e!3619197))

(assert (=> start!601244 e!3619198))

(declare-fun condSetEmpty!40072 () Bool)

(assert (=> start!601244 (= condSetEmpty!40072 (= z!1189 ((as const (Array Context!10674 Bool)) false)))))

(assert (=> start!601244 setRes!40072))

(declare-fun e!3619202 () Bool)

(assert (=> start!601244 e!3619202))

(declare-fun e!3619201 () Bool)

(assert (=> start!601244 e!3619201))

(declare-fun b!5910221 () Bool)

(declare-fun tp!1642067 () Bool)

(assert (=> b!5910221 (= e!3619201 (and tp_is_empty!41159 tp!1642067))))

(declare-fun b!5910222 () Bool)

(declare-fun tp!1642065 () Bool)

(assert (=> b!5910222 (= e!3619202 (and (inv!83129 (h!70483 zl!343)) e!3619199 tp!1642065))))

(declare-fun b!5910223 () Bool)

(declare-fun tp!1642066 () Bool)

(assert (=> b!5910223 (= e!3619198 tp!1642066)))

(declare-fun b!5910224 () Bool)

(declare-fun res!2478220 () Bool)

(assert (=> b!5910224 (=> (not res!2478220) (not e!3619197))))

(declare-fun toList!9737 ((InoxSet Context!10674)) List!64159)

(assert (=> b!5910224 (= res!2478220 (= (toList!9737 z!1189) zl!343))))

(assert (= (and start!601244 res!2478222) b!5910224))

(assert (= (and b!5910224 res!2478220) b!5910209))

(assert (= (and b!5910209 res!2478221) b!5910215))

(assert (= (and b!5910215 (not res!2478218)) b!5910214))

(assert (= (and b!5910214 (not res!2478224)) b!5910219))

(assert (= (and b!5910219 (not res!2478223)) b!5910213))

(assert (= (and b!5910213 (not res!2478219)) b!5910216))

(assert (= (and b!5910216 (not res!2478217)) b!5910218))

(assert (= (and b!5910218 (not res!2478216)) b!5910211))

(assert (= (and b!5910211 (not res!2478215)) b!5910210))

(assert (= (and start!601244 ((_ is ElementMatch!15953) r!7292)) b!5910207))

(assert (= (and start!601244 ((_ is Concat!24798) r!7292)) b!5910220))

(assert (= (and start!601244 ((_ is Star!15953) r!7292)) b!5910223))

(assert (= (and start!601244 ((_ is Union!15953) r!7292)) b!5910208))

(assert (= (and start!601244 condSetEmpty!40072) setIsEmpty!40072))

(assert (= (and start!601244 (not condSetEmpty!40072)) setNonEmpty!40072))

(assert (= setNonEmpty!40072 b!5910217))

(assert (= b!5910222 b!5910212))

(assert (= (and start!601244 ((_ is Cons!64035) zl!343)) b!5910222))

(assert (= (and start!601244 ((_ is Cons!64036) s!2326)) b!5910221))

(declare-fun m!6810716 () Bool)

(assert (=> b!5910215 m!6810716))

(declare-fun m!6810718 () Bool)

(assert (=> b!5910215 m!6810718))

(declare-fun m!6810720 () Bool)

(assert (=> b!5910215 m!6810720))

(declare-fun m!6810722 () Bool)

(assert (=> b!5910214 m!6810722))

(declare-fun m!6810724 () Bool)

(assert (=> b!5910222 m!6810724))

(declare-fun m!6810726 () Bool)

(assert (=> b!5910211 m!6810726))

(declare-fun m!6810728 () Bool)

(assert (=> b!5910216 m!6810728))

(assert (=> b!5910216 m!6810728))

(declare-fun m!6810730 () Bool)

(assert (=> b!5910216 m!6810730))

(declare-fun m!6810732 () Bool)

(assert (=> b!5910224 m!6810732))

(declare-fun m!6810734 () Bool)

(assert (=> start!601244 m!6810734))

(declare-fun m!6810736 () Bool)

(assert (=> b!5910209 m!6810736))

(declare-fun m!6810738 () Bool)

(assert (=> b!5910210 m!6810738))

(declare-fun m!6810740 () Bool)

(assert (=> setNonEmpty!40072 m!6810740))

(declare-fun m!6810742 () Bool)

(assert (=> b!5910219 m!6810742))

(check-sat (not start!601244) (not setNonEmpty!40072) (not b!5910214) (not b!5910209) tp_is_empty!41159 (not b!5910222) (not b!5910212) (not b!5910224) (not b!5910210) (not b!5910217) (not b!5910220) (not b!5910216) (not b!5910211) (not b!5910223) (not b!5910208) (not b!5910221) (not b!5910219) (not b!5910215))
(check-sat)
(get-model)

(declare-fun b!5910243 () Bool)

(declare-fun res!2478235 () Bool)

(declare-fun e!3619221 () Bool)

(assert (=> b!5910243 (=> res!2478235 e!3619221)))

(assert (=> b!5910243 (= res!2478235 (not ((_ is Concat!24798) (regTwo!32418 r!7292))))))

(declare-fun e!3619222 () Bool)

(assert (=> b!5910243 (= e!3619222 e!3619221)))

(declare-fun b!5910244 () Bool)

(declare-fun res!2478238 () Bool)

(declare-fun e!3619219 () Bool)

(assert (=> b!5910244 (=> (not res!2478238) (not e!3619219))))

(declare-fun call!468434 () Bool)

(assert (=> b!5910244 (= res!2478238 call!468434)))

(assert (=> b!5910244 (= e!3619222 e!3619219)))

(declare-fun b!5910246 () Bool)

(declare-fun e!3619218 () Bool)

(declare-fun call!468433 () Bool)

(assert (=> b!5910246 (= e!3619218 call!468433)))

(declare-fun b!5910247 () Bool)

(declare-fun e!3619223 () Bool)

(declare-fun call!468435 () Bool)

(assert (=> b!5910247 (= e!3619223 call!468435)))

(declare-fun b!5910248 () Bool)

(declare-fun e!3619220 () Bool)

(assert (=> b!5910248 (= e!3619220 e!3619223)))

(declare-fun res!2478239 () Bool)

(declare-fun nullable!5951 (Regex!15953) Bool)

(assert (=> b!5910248 (= res!2478239 (not (nullable!5951 (reg!16282 (regTwo!32418 r!7292)))))))

(assert (=> b!5910248 (=> (not res!2478239) (not e!3619223))))

(declare-fun bm!468428 () Bool)

(declare-fun c!1050357 () Bool)

(assert (=> bm!468428 (= call!468433 (validRegex!7689 (ite c!1050357 (regTwo!32419 (regTwo!32418 r!7292)) (regTwo!32418 (regTwo!32418 r!7292)))))))

(declare-fun b!5910249 () Bool)

(declare-fun e!3619224 () Bool)

(assert (=> b!5910249 (= e!3619224 e!3619220)))

(declare-fun c!1050356 () Bool)

(assert (=> b!5910249 (= c!1050356 ((_ is Star!15953) (regTwo!32418 r!7292)))))

(declare-fun d!1854540 () Bool)

(declare-fun res!2478237 () Bool)

(assert (=> d!1854540 (=> res!2478237 e!3619224)))

(assert (=> d!1854540 (= res!2478237 ((_ is ElementMatch!15953) (regTwo!32418 r!7292)))))

(assert (=> d!1854540 (= (validRegex!7689 (regTwo!32418 r!7292)) e!3619224)))

(declare-fun b!5910245 () Bool)

(assert (=> b!5910245 (= e!3619219 call!468433)))

(declare-fun bm!468429 () Bool)

(assert (=> bm!468429 (= call!468434 call!468435)))

(declare-fun b!5910250 () Bool)

(assert (=> b!5910250 (= e!3619221 e!3619218)))

(declare-fun res!2478236 () Bool)

(assert (=> b!5910250 (=> (not res!2478236) (not e!3619218))))

(assert (=> b!5910250 (= res!2478236 call!468434)))

(declare-fun bm!468430 () Bool)

(assert (=> bm!468430 (= call!468435 (validRegex!7689 (ite c!1050356 (reg!16282 (regTwo!32418 r!7292)) (ite c!1050357 (regOne!32419 (regTwo!32418 r!7292)) (regOne!32418 (regTwo!32418 r!7292))))))))

(declare-fun b!5910251 () Bool)

(assert (=> b!5910251 (= e!3619220 e!3619222)))

(assert (=> b!5910251 (= c!1050357 ((_ is Union!15953) (regTwo!32418 r!7292)))))

(assert (= (and d!1854540 (not res!2478237)) b!5910249))

(assert (= (and b!5910249 c!1050356) b!5910248))

(assert (= (and b!5910249 (not c!1050356)) b!5910251))

(assert (= (and b!5910248 res!2478239) b!5910247))

(assert (= (and b!5910251 c!1050357) b!5910244))

(assert (= (and b!5910251 (not c!1050357)) b!5910243))

(assert (= (and b!5910244 res!2478238) b!5910245))

(assert (= (and b!5910243 (not res!2478235)) b!5910250))

(assert (= (and b!5910250 res!2478236) b!5910246))

(assert (= (or b!5910245 b!5910246) bm!468428))

(assert (= (or b!5910244 b!5910250) bm!468429))

(assert (= (or b!5910247 bm!468429) bm!468430))

(declare-fun m!6810744 () Bool)

(assert (=> b!5910248 m!6810744))

(declare-fun m!6810746 () Bool)

(assert (=> bm!468428 m!6810746))

(declare-fun m!6810748 () Bool)

(assert (=> bm!468430 m!6810748))

(assert (=> b!5910210 d!1854540))

(declare-fun d!1854542 () Bool)

(declare-fun lt!2308953 () Regex!15953)

(assert (=> d!1854542 (validRegex!7689 lt!2308953)))

(assert (=> d!1854542 (= lt!2308953 (generalisedUnion!1797 (unfocusZipperList!1374 zl!343)))))

(assert (=> d!1854542 (= (unfocusZipper!1695 zl!343) lt!2308953)))

(declare-fun bs!1399872 () Bool)

(assert (= bs!1399872 d!1854542))

(declare-fun m!6810750 () Bool)

(assert (=> bs!1399872 m!6810750))

(assert (=> bs!1399872 m!6810728))

(assert (=> bs!1399872 m!6810728))

(assert (=> bs!1399872 m!6810730))

(assert (=> b!5910209 d!1854542))

(declare-fun b!5910380 () Bool)

(declare-fun e!3619304 () Bool)

(declare-fun lt!2308968 () Regex!15953)

(declare-fun isConcat!908 (Regex!15953) Bool)

(assert (=> b!5910380 (= e!3619304 (isConcat!908 lt!2308968))))

(declare-fun b!5910381 () Bool)

(declare-fun head!12456 (List!64158) Regex!15953)

(assert (=> b!5910381 (= e!3619304 (= lt!2308968 (head!12456 (exprs!5837 (h!70483 zl!343)))))))

(declare-fun b!5910382 () Bool)

(declare-fun e!3619303 () Regex!15953)

(assert (=> b!5910382 (= e!3619303 (Concat!24798 (h!70482 (exprs!5837 (h!70483 zl!343))) (generalisedConcat!1550 (t!377547 (exprs!5837 (h!70483 zl!343))))))))

(declare-fun d!1854546 () Bool)

(declare-fun e!3619307 () Bool)

(assert (=> d!1854546 e!3619307))

(declare-fun res!2478292 () Bool)

(assert (=> d!1854546 (=> (not res!2478292) (not e!3619307))))

(assert (=> d!1854546 (= res!2478292 (validRegex!7689 lt!2308968))))

(declare-fun e!3619308 () Regex!15953)

(assert (=> d!1854546 (= lt!2308968 e!3619308)))

(declare-fun c!1050399 () Bool)

(declare-fun e!3619306 () Bool)

(assert (=> d!1854546 (= c!1050399 e!3619306)))

(declare-fun res!2478293 () Bool)

(assert (=> d!1854546 (=> (not res!2478293) (not e!3619306))))

(assert (=> d!1854546 (= res!2478293 ((_ is Cons!64034) (exprs!5837 (h!70483 zl!343))))))

(declare-fun lambda!322325 () Int)

(declare-fun forall!15040 (List!64158 Int) Bool)

(assert (=> d!1854546 (forall!15040 (exprs!5837 (h!70483 zl!343)) lambda!322325)))

(assert (=> d!1854546 (= (generalisedConcat!1550 (exprs!5837 (h!70483 zl!343))) lt!2308968)))

(declare-fun b!5910383 () Bool)

(assert (=> b!5910383 (= e!3619308 e!3619303)))

(declare-fun c!1050398 () Bool)

(assert (=> b!5910383 (= c!1050398 ((_ is Cons!64034) (exprs!5837 (h!70483 zl!343))))))

(declare-fun b!5910384 () Bool)

(declare-fun e!3619305 () Bool)

(assert (=> b!5910384 (= e!3619307 e!3619305)))

(declare-fun c!1050396 () Bool)

(declare-fun isEmpty!35891 (List!64158) Bool)

(assert (=> b!5910384 (= c!1050396 (isEmpty!35891 (exprs!5837 (h!70483 zl!343))))))

(declare-fun b!5910385 () Bool)

(assert (=> b!5910385 (= e!3619306 (isEmpty!35891 (t!377547 (exprs!5837 (h!70483 zl!343)))))))

(declare-fun b!5910386 () Bool)

(assert (=> b!5910386 (= e!3619308 (h!70482 (exprs!5837 (h!70483 zl!343))))))

(declare-fun b!5910387 () Bool)

(assert (=> b!5910387 (= e!3619305 e!3619304)))

(declare-fun c!1050397 () Bool)

(declare-fun tail!11541 (List!64158) List!64158)

(assert (=> b!5910387 (= c!1050397 (isEmpty!35891 (tail!11541 (exprs!5837 (h!70483 zl!343)))))))

(declare-fun b!5910388 () Bool)

(assert (=> b!5910388 (= e!3619303 EmptyExpr!15953)))

(declare-fun b!5910389 () Bool)

(declare-fun isEmptyExpr!1385 (Regex!15953) Bool)

(assert (=> b!5910389 (= e!3619305 (isEmptyExpr!1385 lt!2308968))))

(assert (= (and d!1854546 res!2478293) b!5910385))

(assert (= (and d!1854546 c!1050399) b!5910386))

(assert (= (and d!1854546 (not c!1050399)) b!5910383))

(assert (= (and b!5910383 c!1050398) b!5910382))

(assert (= (and b!5910383 (not c!1050398)) b!5910388))

(assert (= (and d!1854546 res!2478292) b!5910384))

(assert (= (and b!5910384 c!1050396) b!5910389))

(assert (= (and b!5910384 (not c!1050396)) b!5910387))

(assert (= (and b!5910387 c!1050397) b!5910381))

(assert (= (and b!5910387 (not c!1050397)) b!5910380))

(declare-fun m!6810802 () Bool)

(assert (=> b!5910381 m!6810802))

(declare-fun m!6810804 () Bool)

(assert (=> d!1854546 m!6810804))

(declare-fun m!6810806 () Bool)

(assert (=> d!1854546 m!6810806))

(declare-fun m!6810808 () Bool)

(assert (=> b!5910384 m!6810808))

(declare-fun m!6810810 () Bool)

(assert (=> b!5910385 m!6810810))

(declare-fun m!6810812 () Bool)

(assert (=> b!5910389 m!6810812))

(declare-fun m!6810814 () Bool)

(assert (=> b!5910382 m!6810814))

(declare-fun m!6810816 () Bool)

(assert (=> b!5910380 m!6810816))

(declare-fun m!6810818 () Bool)

(assert (=> b!5910387 m!6810818))

(assert (=> b!5910387 m!6810818))

(declare-fun m!6810820 () Bool)

(assert (=> b!5910387 m!6810820))

(assert (=> b!5910219 d!1854546))

(declare-fun bs!1399874 () Bool)

(declare-fun d!1854558 () Bool)

(assert (= bs!1399874 (and d!1854558 d!1854546)))

(declare-fun lambda!322332 () Int)

(assert (=> bs!1399874 (= lambda!322332 lambda!322325)))

(declare-fun e!3619341 () Bool)

(assert (=> d!1854558 e!3619341))

(declare-fun res!2478314 () Bool)

(assert (=> d!1854558 (=> (not res!2478314) (not e!3619341))))

(declare-fun lt!2308971 () Regex!15953)

(assert (=> d!1854558 (= res!2478314 (validRegex!7689 lt!2308971))))

(declare-fun e!3619342 () Regex!15953)

(assert (=> d!1854558 (= lt!2308971 e!3619342)))

(declare-fun c!1050418 () Bool)

(declare-fun e!3619339 () Bool)

(assert (=> d!1854558 (= c!1050418 e!3619339)))

(declare-fun res!2478315 () Bool)

(assert (=> d!1854558 (=> (not res!2478315) (not e!3619339))))

(assert (=> d!1854558 (= res!2478315 ((_ is Cons!64034) (unfocusZipperList!1374 zl!343)))))

(assert (=> d!1854558 (forall!15040 (unfocusZipperList!1374 zl!343) lambda!322332)))

(assert (=> d!1854558 (= (generalisedUnion!1797 (unfocusZipperList!1374 zl!343)) lt!2308971)))

(declare-fun b!5910442 () Bool)

(declare-fun e!3619343 () Regex!15953)

(assert (=> b!5910442 (= e!3619342 e!3619343)))

(declare-fun c!1050419 () Bool)

(assert (=> b!5910442 (= c!1050419 ((_ is Cons!64034) (unfocusZipperList!1374 zl!343)))))

(declare-fun b!5910443 () Bool)

(assert (=> b!5910443 (= e!3619339 (isEmpty!35891 (t!377547 (unfocusZipperList!1374 zl!343))))))

(declare-fun b!5910444 () Bool)

(declare-fun e!3619340 () Bool)

(declare-fun isEmptyLang!1394 (Regex!15953) Bool)

(assert (=> b!5910444 (= e!3619340 (isEmptyLang!1394 lt!2308971))))

(declare-fun b!5910445 () Bool)

(assert (=> b!5910445 (= e!3619343 EmptyLang!15953)))

(declare-fun b!5910446 () Bool)

(assert (=> b!5910446 (= e!3619341 e!3619340)))

(declare-fun c!1050416 () Bool)

(assert (=> b!5910446 (= c!1050416 (isEmpty!35891 (unfocusZipperList!1374 zl!343)))))

(declare-fun b!5910447 () Bool)

(declare-fun e!3619344 () Bool)

(declare-fun isUnion!824 (Regex!15953) Bool)

(assert (=> b!5910447 (= e!3619344 (isUnion!824 lt!2308971))))

(declare-fun b!5910448 () Bool)

(assert (=> b!5910448 (= e!3619340 e!3619344)))

(declare-fun c!1050417 () Bool)

(assert (=> b!5910448 (= c!1050417 (isEmpty!35891 (tail!11541 (unfocusZipperList!1374 zl!343))))))

(declare-fun b!5910449 () Bool)

(assert (=> b!5910449 (= e!3619343 (Union!15953 (h!70482 (unfocusZipperList!1374 zl!343)) (generalisedUnion!1797 (t!377547 (unfocusZipperList!1374 zl!343)))))))

(declare-fun b!5910450 () Bool)

(assert (=> b!5910450 (= e!3619342 (h!70482 (unfocusZipperList!1374 zl!343)))))

(declare-fun b!5910451 () Bool)

(assert (=> b!5910451 (= e!3619344 (= lt!2308971 (head!12456 (unfocusZipperList!1374 zl!343))))))

(assert (= (and d!1854558 res!2478315) b!5910443))

(assert (= (and d!1854558 c!1050418) b!5910450))

(assert (= (and d!1854558 (not c!1050418)) b!5910442))

(assert (= (and b!5910442 c!1050419) b!5910449))

(assert (= (and b!5910442 (not c!1050419)) b!5910445))

(assert (= (and d!1854558 res!2478314) b!5910446))

(assert (= (and b!5910446 c!1050416) b!5910444))

(assert (= (and b!5910446 (not c!1050416)) b!5910448))

(assert (= (and b!5910448 c!1050417) b!5910451))

(assert (= (and b!5910448 (not c!1050417)) b!5910447))

(assert (=> b!5910451 m!6810728))

(declare-fun m!6810822 () Bool)

(assert (=> b!5910451 m!6810822))

(assert (=> b!5910448 m!6810728))

(declare-fun m!6810824 () Bool)

(assert (=> b!5910448 m!6810824))

(assert (=> b!5910448 m!6810824))

(declare-fun m!6810826 () Bool)

(assert (=> b!5910448 m!6810826))

(assert (=> b!5910446 m!6810728))

(declare-fun m!6810828 () Bool)

(assert (=> b!5910446 m!6810828))

(declare-fun m!6810830 () Bool)

(assert (=> b!5910449 m!6810830))

(declare-fun m!6810832 () Bool)

(assert (=> b!5910443 m!6810832))

(declare-fun m!6810834 () Bool)

(assert (=> b!5910444 m!6810834))

(declare-fun m!6810836 () Bool)

(assert (=> b!5910447 m!6810836))

(declare-fun m!6810838 () Bool)

(assert (=> d!1854558 m!6810838))

(assert (=> d!1854558 m!6810728))

(declare-fun m!6810840 () Bool)

(assert (=> d!1854558 m!6810840))

(assert (=> b!5910216 d!1854558))

(declare-fun bs!1399876 () Bool)

(declare-fun d!1854560 () Bool)

(assert (= bs!1399876 (and d!1854560 d!1854546)))

(declare-fun lambda!322337 () Int)

(assert (=> bs!1399876 (= lambda!322337 lambda!322325)))

(declare-fun bs!1399877 () Bool)

(assert (= bs!1399877 (and d!1854560 d!1854558)))

(assert (=> bs!1399877 (= lambda!322337 lambda!322332)))

(declare-fun lt!2308974 () List!64158)

(assert (=> d!1854560 (forall!15040 lt!2308974 lambda!322337)))

(declare-fun e!3619354 () List!64158)

(assert (=> d!1854560 (= lt!2308974 e!3619354)))

(declare-fun c!1050426 () Bool)

(assert (=> d!1854560 (= c!1050426 ((_ is Cons!64035) zl!343))))

(assert (=> d!1854560 (= (unfocusZipperList!1374 zl!343) lt!2308974)))

(declare-fun b!5910471 () Bool)

(assert (=> b!5910471 (= e!3619354 (Cons!64034 (generalisedConcat!1550 (exprs!5837 (h!70483 zl!343))) (unfocusZipperList!1374 (t!377548 zl!343))))))

(declare-fun b!5910472 () Bool)

(assert (=> b!5910472 (= e!3619354 Nil!64034)))

(assert (= (and d!1854560 c!1050426) b!5910471))

(assert (= (and d!1854560 (not c!1050426)) b!5910472))

(declare-fun m!6810848 () Bool)

(assert (=> d!1854560 m!6810848))

(assert (=> b!5910471 m!6810742))

(declare-fun m!6810850 () Bool)

(assert (=> b!5910471 m!6810850))

(assert (=> b!5910216 d!1854560))

(declare-fun b!5910473 () Bool)

(declare-fun res!2478319 () Bool)

(declare-fun e!3619358 () Bool)

(assert (=> b!5910473 (=> res!2478319 e!3619358)))

(assert (=> b!5910473 (= res!2478319 (not ((_ is Concat!24798) r!7292)))))

(declare-fun e!3619359 () Bool)

(assert (=> b!5910473 (= e!3619359 e!3619358)))

(declare-fun b!5910474 () Bool)

(declare-fun res!2478322 () Bool)

(declare-fun e!3619356 () Bool)

(assert (=> b!5910474 (=> (not res!2478322) (not e!3619356))))

(declare-fun call!468455 () Bool)

(assert (=> b!5910474 (= res!2478322 call!468455)))

(assert (=> b!5910474 (= e!3619359 e!3619356)))

(declare-fun b!5910476 () Bool)

(declare-fun e!3619355 () Bool)

(declare-fun call!468454 () Bool)

(assert (=> b!5910476 (= e!3619355 call!468454)))

(declare-fun b!5910477 () Bool)

(declare-fun e!3619360 () Bool)

(declare-fun call!468456 () Bool)

(assert (=> b!5910477 (= e!3619360 call!468456)))

(declare-fun b!5910478 () Bool)

(declare-fun e!3619357 () Bool)

(assert (=> b!5910478 (= e!3619357 e!3619360)))

(declare-fun res!2478323 () Bool)

(assert (=> b!5910478 (= res!2478323 (not (nullable!5951 (reg!16282 r!7292))))))

(assert (=> b!5910478 (=> (not res!2478323) (not e!3619360))))

(declare-fun bm!468449 () Bool)

(declare-fun c!1050428 () Bool)

(assert (=> bm!468449 (= call!468454 (validRegex!7689 (ite c!1050428 (regTwo!32419 r!7292) (regTwo!32418 r!7292))))))

(declare-fun b!5910479 () Bool)

(declare-fun e!3619361 () Bool)

(assert (=> b!5910479 (= e!3619361 e!3619357)))

(declare-fun c!1050427 () Bool)

(assert (=> b!5910479 (= c!1050427 ((_ is Star!15953) r!7292))))

(declare-fun d!1854564 () Bool)

(declare-fun res!2478321 () Bool)

(assert (=> d!1854564 (=> res!2478321 e!3619361)))

(assert (=> d!1854564 (= res!2478321 ((_ is ElementMatch!15953) r!7292))))

(assert (=> d!1854564 (= (validRegex!7689 r!7292) e!3619361)))

(declare-fun b!5910475 () Bool)

(assert (=> b!5910475 (= e!3619356 call!468454)))

(declare-fun bm!468450 () Bool)

(assert (=> bm!468450 (= call!468455 call!468456)))

(declare-fun b!5910480 () Bool)

(assert (=> b!5910480 (= e!3619358 e!3619355)))

(declare-fun res!2478320 () Bool)

(assert (=> b!5910480 (=> (not res!2478320) (not e!3619355))))

(assert (=> b!5910480 (= res!2478320 call!468455)))

(declare-fun bm!468451 () Bool)

(assert (=> bm!468451 (= call!468456 (validRegex!7689 (ite c!1050427 (reg!16282 r!7292) (ite c!1050428 (regOne!32419 r!7292) (regOne!32418 r!7292)))))))

(declare-fun b!5910481 () Bool)

(assert (=> b!5910481 (= e!3619357 e!3619359)))

(assert (=> b!5910481 (= c!1050428 ((_ is Union!15953) r!7292))))

(assert (= (and d!1854564 (not res!2478321)) b!5910479))

(assert (= (and b!5910479 c!1050427) b!5910478))

(assert (= (and b!5910479 (not c!1050427)) b!5910481))

(assert (= (and b!5910478 res!2478323) b!5910477))

(assert (= (and b!5910481 c!1050428) b!5910474))

(assert (= (and b!5910481 (not c!1050428)) b!5910473))

(assert (= (and b!5910474 res!2478322) b!5910475))

(assert (= (and b!5910473 (not res!2478319)) b!5910480))

(assert (= (and b!5910480 res!2478320) b!5910476))

(assert (= (or b!5910475 b!5910476) bm!468449))

(assert (= (or b!5910474 b!5910480) bm!468450))

(assert (= (or b!5910477 bm!468450) bm!468451))

(declare-fun m!6810852 () Bool)

(assert (=> b!5910478 m!6810852))

(declare-fun m!6810854 () Bool)

(assert (=> bm!468449 m!6810854))

(declare-fun m!6810856 () Bool)

(assert (=> bm!468451 m!6810856))

(assert (=> start!601244 d!1854564))

(declare-fun b!5910538 () Bool)

(declare-fun e!3619397 () Bool)

(declare-fun derivativeStep!4689 (Regex!15953 C!32176) Regex!15953)

(declare-fun head!12457 (List!64160) C!32176)

(declare-fun tail!11542 (List!64160) List!64160)

(assert (=> b!5910538 (= e!3619397 (matchR!8136 (derivativeStep!4689 r!7292 (head!12457 s!2326)) (tail!11542 s!2326)))))

(declare-fun b!5910539 () Bool)

(declare-fun res!2478355 () Bool)

(declare-fun e!3619402 () Bool)

(assert (=> b!5910539 (=> (not res!2478355) (not e!3619402))))

(declare-fun isEmpty!35892 (List!64160) Bool)

(assert (=> b!5910539 (= res!2478355 (isEmpty!35892 (tail!11542 s!2326)))))

(declare-fun b!5910540 () Bool)

(declare-fun e!3619399 () Bool)

(declare-fun e!3619401 () Bool)

(assert (=> b!5910540 (= e!3619399 e!3619401)))

(declare-fun res!2478356 () Bool)

(assert (=> b!5910540 (=> (not res!2478356) (not e!3619401))))

(declare-fun lt!2308982 () Bool)

(assert (=> b!5910540 (= res!2478356 (not lt!2308982))))

(declare-fun b!5910541 () Bool)

(declare-fun e!3619400 () Bool)

(declare-fun e!3619396 () Bool)

(assert (=> b!5910541 (= e!3619400 e!3619396)))

(declare-fun c!1050444 () Bool)

(assert (=> b!5910541 (= c!1050444 ((_ is EmptyLang!15953) r!7292))))

(declare-fun b!5910542 () Bool)

(declare-fun res!2478358 () Bool)

(assert (=> b!5910542 (=> res!2478358 e!3619399)))

(assert (=> b!5910542 (= res!2478358 (not ((_ is ElementMatch!15953) r!7292)))))

(assert (=> b!5910542 (= e!3619396 e!3619399)))

(declare-fun b!5910543 () Bool)

(declare-fun e!3619398 () Bool)

(assert (=> b!5910543 (= e!3619401 e!3619398)))

(declare-fun res!2478359 () Bool)

(assert (=> b!5910543 (=> res!2478359 e!3619398)))

(declare-fun call!468465 () Bool)

(assert (=> b!5910543 (= res!2478359 call!468465)))

(declare-fun b!5910544 () Bool)

(assert (=> b!5910544 (= e!3619397 (nullable!5951 r!7292))))

(declare-fun b!5910545 () Bool)

(declare-fun res!2478353 () Bool)

(assert (=> b!5910545 (=> res!2478353 e!3619399)))

(assert (=> b!5910545 (= res!2478353 e!3619402)))

(declare-fun res!2478352 () Bool)

(assert (=> b!5910545 (=> (not res!2478352) (not e!3619402))))

(assert (=> b!5910545 (= res!2478352 lt!2308982)))

(declare-fun b!5910546 () Bool)

(declare-fun res!2478357 () Bool)

(assert (=> b!5910546 (=> res!2478357 e!3619398)))

(assert (=> b!5910546 (= res!2478357 (not (isEmpty!35892 (tail!11542 s!2326))))))

(declare-fun b!5910547 () Bool)

(assert (=> b!5910547 (= e!3619400 (= lt!2308982 call!468465))))

(declare-fun bm!468460 () Bool)

(assert (=> bm!468460 (= call!468465 (isEmpty!35892 s!2326))))

(declare-fun b!5910548 () Bool)

(assert (=> b!5910548 (= e!3619396 (not lt!2308982))))

(declare-fun b!5910549 () Bool)

(assert (=> b!5910549 (= e!3619402 (= (head!12457 s!2326) (c!1050351 r!7292)))))

(declare-fun b!5910550 () Bool)

(declare-fun res!2478354 () Bool)

(assert (=> b!5910550 (=> (not res!2478354) (not e!3619402))))

(assert (=> b!5910550 (= res!2478354 (not call!468465))))

(declare-fun d!1854566 () Bool)

(assert (=> d!1854566 e!3619400))

(declare-fun c!1050443 () Bool)

(assert (=> d!1854566 (= c!1050443 ((_ is EmptyExpr!15953) r!7292))))

(assert (=> d!1854566 (= lt!2308982 e!3619397)))

(declare-fun c!1050445 () Bool)

(assert (=> d!1854566 (= c!1050445 (isEmpty!35892 s!2326))))

(assert (=> d!1854566 (validRegex!7689 r!7292)))

(assert (=> d!1854566 (= (matchR!8136 r!7292 s!2326) lt!2308982)))

(declare-fun b!5910551 () Bool)

(assert (=> b!5910551 (= e!3619398 (not (= (head!12457 s!2326) (c!1050351 r!7292))))))

(assert (= (and d!1854566 c!1050445) b!5910544))

(assert (= (and d!1854566 (not c!1050445)) b!5910538))

(assert (= (and d!1854566 c!1050443) b!5910547))

(assert (= (and d!1854566 (not c!1050443)) b!5910541))

(assert (= (and b!5910541 c!1050444) b!5910548))

(assert (= (and b!5910541 (not c!1050444)) b!5910542))

(assert (= (and b!5910542 (not res!2478358)) b!5910545))

(assert (= (and b!5910545 res!2478352) b!5910550))

(assert (= (and b!5910550 res!2478354) b!5910539))

(assert (= (and b!5910539 res!2478355) b!5910549))

(assert (= (and b!5910545 (not res!2478353)) b!5910540))

(assert (= (and b!5910540 res!2478356) b!5910543))

(assert (= (and b!5910543 (not res!2478359)) b!5910546))

(assert (= (and b!5910546 (not res!2478357)) b!5910551))

(assert (= (or b!5910547 b!5910543 b!5910550) bm!468460))

(declare-fun m!6810874 () Bool)

(assert (=> b!5910551 m!6810874))

(declare-fun m!6810876 () Bool)

(assert (=> b!5910539 m!6810876))

(assert (=> b!5910539 m!6810876))

(declare-fun m!6810878 () Bool)

(assert (=> b!5910539 m!6810878))

(assert (=> b!5910546 m!6810876))

(assert (=> b!5910546 m!6810876))

(assert (=> b!5910546 m!6810878))

(assert (=> b!5910538 m!6810874))

(assert (=> b!5910538 m!6810874))

(declare-fun m!6810880 () Bool)

(assert (=> b!5910538 m!6810880))

(assert (=> b!5910538 m!6810876))

(assert (=> b!5910538 m!6810880))

(assert (=> b!5910538 m!6810876))

(declare-fun m!6810882 () Bool)

(assert (=> b!5910538 m!6810882))

(declare-fun m!6810884 () Bool)

(assert (=> b!5910544 m!6810884))

(assert (=> b!5910549 m!6810874))

(declare-fun m!6810886 () Bool)

(assert (=> d!1854566 m!6810886))

(assert (=> d!1854566 m!6810734))

(assert (=> bm!468460 m!6810886))

(assert (=> b!5910215 d!1854566))

(declare-fun b!5910665 () Bool)

(assert (=> b!5910665 true))

(assert (=> b!5910665 true))

(declare-fun bs!1399891 () Bool)

(declare-fun b!5910659 () Bool)

(assert (= bs!1399891 (and b!5910659 b!5910665)))

(declare-fun lambda!322350 () Int)

(declare-fun lambda!322349 () Int)

(assert (=> bs!1399891 (not (= lambda!322350 lambda!322349))))

(assert (=> b!5910659 true))

(assert (=> b!5910659 true))

(declare-fun b!5910658 () Bool)

(declare-fun e!3619458 () Bool)

(assert (=> b!5910658 (= e!3619458 (matchRSpec!3054 (regTwo!32419 r!7292) s!2326))))

(declare-fun e!3619462 () Bool)

(declare-fun call!468471 () Bool)

(assert (=> b!5910659 (= e!3619462 call!468471)))

(declare-fun b!5910660 () Bool)

(declare-fun e!3619460 () Bool)

(declare-fun call!468470 () Bool)

(assert (=> b!5910660 (= e!3619460 call!468470)))

(declare-fun b!5910661 () Bool)

(declare-fun e!3619457 () Bool)

(assert (=> b!5910661 (= e!3619460 e!3619457)))

(declare-fun res!2478382 () Bool)

(assert (=> b!5910661 (= res!2478382 (not ((_ is EmptyLang!15953) r!7292)))))

(assert (=> b!5910661 (=> (not res!2478382) (not e!3619457))))

(declare-fun b!5910662 () Bool)

(declare-fun e!3619459 () Bool)

(assert (=> b!5910662 (= e!3619459 e!3619458)))

(declare-fun res!2478381 () Bool)

(assert (=> b!5910662 (= res!2478381 (matchRSpec!3054 (regOne!32419 r!7292) s!2326))))

(assert (=> b!5910662 (=> res!2478381 e!3619458)))

(declare-fun bm!468465 () Bool)

(declare-fun c!1050465 () Bool)

(declare-fun Exists!3023 (Int) Bool)

(assert (=> bm!468465 (= call!468471 (Exists!3023 (ite c!1050465 lambda!322349 lambda!322350)))))

(declare-fun b!5910663 () Bool)

(assert (=> b!5910663 (= e!3619459 e!3619462)))

(assert (=> b!5910663 (= c!1050465 ((_ is Star!15953) r!7292))))

(declare-fun d!1854578 () Bool)

(declare-fun c!1050463 () Bool)

(assert (=> d!1854578 (= c!1050463 ((_ is EmptyExpr!15953) r!7292))))

(assert (=> d!1854578 (= (matchRSpec!3054 r!7292 s!2326) e!3619460)))

(declare-fun b!5910664 () Bool)

(declare-fun e!3619456 () Bool)

(assert (=> b!5910664 (= e!3619456 (= s!2326 (Cons!64036 (c!1050351 r!7292) Nil!64036)))))

(declare-fun bm!468466 () Bool)

(assert (=> bm!468466 (= call!468470 (isEmpty!35892 s!2326))))

(declare-fun e!3619461 () Bool)

(assert (=> b!5910665 (= e!3619461 call!468471)))

(declare-fun b!5910666 () Bool)

(declare-fun c!1050464 () Bool)

(assert (=> b!5910666 (= c!1050464 ((_ is Union!15953) r!7292))))

(assert (=> b!5910666 (= e!3619456 e!3619459)))

(declare-fun b!5910667 () Bool)

(declare-fun res!2478380 () Bool)

(assert (=> b!5910667 (=> res!2478380 e!3619461)))

(assert (=> b!5910667 (= res!2478380 call!468470)))

(assert (=> b!5910667 (= e!3619462 e!3619461)))

(declare-fun b!5910668 () Bool)

(declare-fun c!1050462 () Bool)

(assert (=> b!5910668 (= c!1050462 ((_ is ElementMatch!15953) r!7292))))

(assert (=> b!5910668 (= e!3619457 e!3619456)))

(assert (= (and d!1854578 c!1050463) b!5910660))

(assert (= (and d!1854578 (not c!1050463)) b!5910661))

(assert (= (and b!5910661 res!2478382) b!5910668))

(assert (= (and b!5910668 c!1050462) b!5910664))

(assert (= (and b!5910668 (not c!1050462)) b!5910666))

(assert (= (and b!5910666 c!1050464) b!5910662))

(assert (= (and b!5910666 (not c!1050464)) b!5910663))

(assert (= (and b!5910662 (not res!2478381)) b!5910658))

(assert (= (and b!5910663 c!1050465) b!5910667))

(assert (= (and b!5910663 (not c!1050465)) b!5910659))

(assert (= (and b!5910667 (not res!2478380)) b!5910665))

(assert (= (or b!5910665 b!5910659) bm!468465))

(assert (= (or b!5910660 b!5910667) bm!468466))

(declare-fun m!6810916 () Bool)

(assert (=> b!5910658 m!6810916))

(declare-fun m!6810918 () Bool)

(assert (=> b!5910662 m!6810918))

(declare-fun m!6810920 () Bool)

(assert (=> bm!468465 m!6810920))

(assert (=> bm!468466 m!6810886))

(assert (=> b!5910215 d!1854578))

(declare-fun d!1854584 () Bool)

(assert (=> d!1854584 (= (matchR!8136 r!7292 s!2326) (matchRSpec!3054 r!7292 s!2326))))

(declare-fun lt!2308989 () Unit!157177)

(declare-fun choose!44580 (Regex!15953 List!64160) Unit!157177)

(assert (=> d!1854584 (= lt!2308989 (choose!44580 r!7292 s!2326))))

(assert (=> d!1854584 (validRegex!7689 r!7292)))

(assert (=> d!1854584 (= (mainMatchTheorem!3054 r!7292 s!2326) lt!2308989)))

(declare-fun bs!1399892 () Bool)

(assert (= bs!1399892 d!1854584))

(assert (=> bs!1399892 m!6810716))

(assert (=> bs!1399892 m!6810718))

(declare-fun m!6810922 () Bool)

(assert (=> bs!1399892 m!6810922))

(assert (=> bs!1399892 m!6810734))

(assert (=> b!5910215 d!1854584))

(declare-fun d!1854586 () Bool)

(assert (=> d!1854586 (= (isEmpty!35888 (t!377548 zl!343)) ((_ is Nil!64035) (t!377548 zl!343)))))

(assert (=> b!5910214 d!1854586))

(declare-fun d!1854588 () Bool)

(declare-fun e!3619465 () Bool)

(assert (=> d!1854588 e!3619465))

(declare-fun res!2478385 () Bool)

(assert (=> d!1854588 (=> (not res!2478385) (not e!3619465))))

(declare-fun lt!2308992 () List!64159)

(declare-fun noDuplicate!1816 (List!64159) Bool)

(assert (=> d!1854588 (= res!2478385 (noDuplicate!1816 lt!2308992))))

(declare-fun choose!44581 ((InoxSet Context!10674)) List!64159)

(assert (=> d!1854588 (= lt!2308992 (choose!44581 z!1189))))

(assert (=> d!1854588 (= (toList!9737 z!1189) lt!2308992)))

(declare-fun b!5910675 () Bool)

(declare-fun content!11781 (List!64159) (InoxSet Context!10674))

(assert (=> b!5910675 (= e!3619465 (= (content!11781 lt!2308992) z!1189))))

(assert (= (and d!1854588 res!2478385) b!5910675))

(declare-fun m!6810924 () Bool)

(assert (=> d!1854588 m!6810924))

(declare-fun m!6810926 () Bool)

(assert (=> d!1854588 m!6810926))

(declare-fun m!6810928 () Bool)

(assert (=> b!5910675 m!6810928))

(assert (=> b!5910224 d!1854588))

(declare-fun bs!1399893 () Bool)

(declare-fun d!1854590 () Bool)

(assert (= bs!1399893 (and d!1854590 d!1854546)))

(declare-fun lambda!322353 () Int)

(assert (=> bs!1399893 (= lambda!322353 lambda!322325)))

(declare-fun bs!1399894 () Bool)

(assert (= bs!1399894 (and d!1854590 d!1854558)))

(assert (=> bs!1399894 (= lambda!322353 lambda!322332)))

(declare-fun bs!1399895 () Bool)

(assert (= bs!1399895 (and d!1854590 d!1854560)))

(assert (=> bs!1399895 (= lambda!322353 lambda!322337)))

(assert (=> d!1854590 (= (inv!83129 (h!70483 zl!343)) (forall!15040 (exprs!5837 (h!70483 zl!343)) lambda!322353))))

(declare-fun bs!1399896 () Bool)

(assert (= bs!1399896 d!1854590))

(declare-fun m!6810930 () Bool)

(assert (=> bs!1399896 m!6810930))

(assert (=> b!5910222 d!1854590))

(declare-fun b!5910676 () Bool)

(declare-fun res!2478386 () Bool)

(declare-fun e!3619469 () Bool)

(assert (=> b!5910676 (=> res!2478386 e!3619469)))

(assert (=> b!5910676 (= res!2478386 (not ((_ is Concat!24798) (regOne!32418 r!7292))))))

(declare-fun e!3619470 () Bool)

(assert (=> b!5910676 (= e!3619470 e!3619469)))

(declare-fun b!5910677 () Bool)

(declare-fun res!2478389 () Bool)

(declare-fun e!3619467 () Bool)

(assert (=> b!5910677 (=> (not res!2478389) (not e!3619467))))

(declare-fun call!468473 () Bool)

(assert (=> b!5910677 (= res!2478389 call!468473)))

(assert (=> b!5910677 (= e!3619470 e!3619467)))

(declare-fun b!5910679 () Bool)

(declare-fun e!3619466 () Bool)

(declare-fun call!468472 () Bool)

(assert (=> b!5910679 (= e!3619466 call!468472)))

(declare-fun b!5910680 () Bool)

(declare-fun e!3619471 () Bool)

(declare-fun call!468474 () Bool)

(assert (=> b!5910680 (= e!3619471 call!468474)))

(declare-fun b!5910681 () Bool)

(declare-fun e!3619468 () Bool)

(assert (=> b!5910681 (= e!3619468 e!3619471)))

(declare-fun res!2478390 () Bool)

(assert (=> b!5910681 (= res!2478390 (not (nullable!5951 (reg!16282 (regOne!32418 r!7292)))))))

(assert (=> b!5910681 (=> (not res!2478390) (not e!3619471))))

(declare-fun bm!468467 () Bool)

(declare-fun c!1050467 () Bool)

(assert (=> bm!468467 (= call!468472 (validRegex!7689 (ite c!1050467 (regTwo!32419 (regOne!32418 r!7292)) (regTwo!32418 (regOne!32418 r!7292)))))))

(declare-fun b!5910682 () Bool)

(declare-fun e!3619472 () Bool)

(assert (=> b!5910682 (= e!3619472 e!3619468)))

(declare-fun c!1050466 () Bool)

(assert (=> b!5910682 (= c!1050466 ((_ is Star!15953) (regOne!32418 r!7292)))))

(declare-fun d!1854592 () Bool)

(declare-fun res!2478388 () Bool)

(assert (=> d!1854592 (=> res!2478388 e!3619472)))

(assert (=> d!1854592 (= res!2478388 ((_ is ElementMatch!15953) (regOne!32418 r!7292)))))

(assert (=> d!1854592 (= (validRegex!7689 (regOne!32418 r!7292)) e!3619472)))

(declare-fun b!5910678 () Bool)

(assert (=> b!5910678 (= e!3619467 call!468472)))

(declare-fun bm!468468 () Bool)

(assert (=> bm!468468 (= call!468473 call!468474)))

(declare-fun b!5910683 () Bool)

(assert (=> b!5910683 (= e!3619469 e!3619466)))

(declare-fun res!2478387 () Bool)

(assert (=> b!5910683 (=> (not res!2478387) (not e!3619466))))

(assert (=> b!5910683 (= res!2478387 call!468473)))

(declare-fun bm!468469 () Bool)

(assert (=> bm!468469 (= call!468474 (validRegex!7689 (ite c!1050466 (reg!16282 (regOne!32418 r!7292)) (ite c!1050467 (regOne!32419 (regOne!32418 r!7292)) (regOne!32418 (regOne!32418 r!7292))))))))

(declare-fun b!5910684 () Bool)

(assert (=> b!5910684 (= e!3619468 e!3619470)))

(assert (=> b!5910684 (= c!1050467 ((_ is Union!15953) (regOne!32418 r!7292)))))

(assert (= (and d!1854592 (not res!2478388)) b!5910682))

(assert (= (and b!5910682 c!1050466) b!5910681))

(assert (= (and b!5910682 (not c!1050466)) b!5910684))

(assert (= (and b!5910681 res!2478390) b!5910680))

(assert (= (and b!5910684 c!1050467) b!5910677))

(assert (= (and b!5910684 (not c!1050467)) b!5910676))

(assert (= (and b!5910677 res!2478389) b!5910678))

(assert (= (and b!5910676 (not res!2478386)) b!5910683))

(assert (= (and b!5910683 res!2478387) b!5910679))

(assert (= (or b!5910678 b!5910679) bm!468467))

(assert (= (or b!5910677 b!5910683) bm!468468))

(assert (= (or b!5910680 bm!468468) bm!468469))

(declare-fun m!6810932 () Bool)

(assert (=> b!5910681 m!6810932))

(declare-fun m!6810934 () Bool)

(assert (=> bm!468467 m!6810934))

(declare-fun m!6810936 () Bool)

(assert (=> bm!468469 m!6810936))

(assert (=> b!5910211 d!1854592))

(declare-fun bs!1399897 () Bool)

(declare-fun d!1854594 () Bool)

(assert (= bs!1399897 (and d!1854594 d!1854546)))

(declare-fun lambda!322354 () Int)

(assert (=> bs!1399897 (= lambda!322354 lambda!322325)))

(declare-fun bs!1399898 () Bool)

(assert (= bs!1399898 (and d!1854594 d!1854558)))

(assert (=> bs!1399898 (= lambda!322354 lambda!322332)))

(declare-fun bs!1399899 () Bool)

(assert (= bs!1399899 (and d!1854594 d!1854560)))

(assert (=> bs!1399899 (= lambda!322354 lambda!322337)))

(declare-fun bs!1399900 () Bool)

(assert (= bs!1399900 (and d!1854594 d!1854590)))

(assert (=> bs!1399900 (= lambda!322354 lambda!322353)))

(assert (=> d!1854594 (= (inv!83129 setElem!40072) (forall!15040 (exprs!5837 setElem!40072) lambda!322354))))

(declare-fun bs!1399901 () Bool)

(assert (= bs!1399901 d!1854594))

(declare-fun m!6810938 () Bool)

(assert (=> bs!1399901 m!6810938))

(assert (=> setNonEmpty!40072 d!1854594))

(declare-fun b!5910698 () Bool)

(declare-fun e!3619475 () Bool)

(declare-fun tp!1642145 () Bool)

(declare-fun tp!1642143 () Bool)

(assert (=> b!5910698 (= e!3619475 (and tp!1642145 tp!1642143))))

(assert (=> b!5910223 (= tp!1642066 e!3619475)))

(declare-fun b!5910695 () Bool)

(assert (=> b!5910695 (= e!3619475 tp_is_empty!41159)))

(declare-fun b!5910696 () Bool)

(declare-fun tp!1642144 () Bool)

(declare-fun tp!1642147 () Bool)

(assert (=> b!5910696 (= e!3619475 (and tp!1642144 tp!1642147))))

(declare-fun b!5910697 () Bool)

(declare-fun tp!1642146 () Bool)

(assert (=> b!5910697 (= e!3619475 tp!1642146)))

(assert (= (and b!5910223 ((_ is ElementMatch!15953) (reg!16282 r!7292))) b!5910695))

(assert (= (and b!5910223 ((_ is Concat!24798) (reg!16282 r!7292))) b!5910696))

(assert (= (and b!5910223 ((_ is Star!15953) (reg!16282 r!7292))) b!5910697))

(assert (= (and b!5910223 ((_ is Union!15953) (reg!16282 r!7292))) b!5910698))

(declare-fun b!5910702 () Bool)

(declare-fun e!3619476 () Bool)

(declare-fun tp!1642150 () Bool)

(declare-fun tp!1642148 () Bool)

(assert (=> b!5910702 (= e!3619476 (and tp!1642150 tp!1642148))))

(assert (=> b!5910208 (= tp!1642073 e!3619476)))

(declare-fun b!5910699 () Bool)

(assert (=> b!5910699 (= e!3619476 tp_is_empty!41159)))

(declare-fun b!5910700 () Bool)

(declare-fun tp!1642149 () Bool)

(declare-fun tp!1642152 () Bool)

(assert (=> b!5910700 (= e!3619476 (and tp!1642149 tp!1642152))))

(declare-fun b!5910701 () Bool)

(declare-fun tp!1642151 () Bool)

(assert (=> b!5910701 (= e!3619476 tp!1642151)))

(assert (= (and b!5910208 ((_ is ElementMatch!15953) (regOne!32419 r!7292))) b!5910699))

(assert (= (and b!5910208 ((_ is Concat!24798) (regOne!32419 r!7292))) b!5910700))

(assert (= (and b!5910208 ((_ is Star!15953) (regOne!32419 r!7292))) b!5910701))

(assert (= (and b!5910208 ((_ is Union!15953) (regOne!32419 r!7292))) b!5910702))

(declare-fun b!5910706 () Bool)

(declare-fun e!3619477 () Bool)

(declare-fun tp!1642155 () Bool)

(declare-fun tp!1642153 () Bool)

(assert (=> b!5910706 (= e!3619477 (and tp!1642155 tp!1642153))))

(assert (=> b!5910208 (= tp!1642068 e!3619477)))

(declare-fun b!5910703 () Bool)

(assert (=> b!5910703 (= e!3619477 tp_is_empty!41159)))

(declare-fun b!5910704 () Bool)

(declare-fun tp!1642154 () Bool)

(declare-fun tp!1642157 () Bool)

(assert (=> b!5910704 (= e!3619477 (and tp!1642154 tp!1642157))))

(declare-fun b!5910705 () Bool)

(declare-fun tp!1642156 () Bool)

(assert (=> b!5910705 (= e!3619477 tp!1642156)))

(assert (= (and b!5910208 ((_ is ElementMatch!15953) (regTwo!32419 r!7292))) b!5910703))

(assert (= (and b!5910208 ((_ is Concat!24798) (regTwo!32419 r!7292))) b!5910704))

(assert (= (and b!5910208 ((_ is Star!15953) (regTwo!32419 r!7292))) b!5910705))

(assert (= (and b!5910208 ((_ is Union!15953) (regTwo!32419 r!7292))) b!5910706))

(declare-fun b!5910714 () Bool)

(declare-fun e!3619483 () Bool)

(declare-fun tp!1642162 () Bool)

(assert (=> b!5910714 (= e!3619483 tp!1642162)))

(declare-fun e!3619482 () Bool)

(declare-fun b!5910713 () Bool)

(declare-fun tp!1642163 () Bool)

(assert (=> b!5910713 (= e!3619482 (and (inv!83129 (h!70483 (t!377548 zl!343))) e!3619483 tp!1642163))))

(assert (=> b!5910222 (= tp!1642065 e!3619482)))

(assert (= b!5910713 b!5910714))

(assert (= (and b!5910222 ((_ is Cons!64035) (t!377548 zl!343))) b!5910713))

(declare-fun m!6810940 () Bool)

(assert (=> b!5910713 m!6810940))

(declare-fun b!5910719 () Bool)

(declare-fun e!3619486 () Bool)

(declare-fun tp!1642166 () Bool)

(assert (=> b!5910719 (= e!3619486 (and tp_is_empty!41159 tp!1642166))))

(assert (=> b!5910221 (= tp!1642067 e!3619486)))

(assert (= (and b!5910221 ((_ is Cons!64036) (t!377549 s!2326))) b!5910719))

(declare-fun b!5910724 () Bool)

(declare-fun e!3619489 () Bool)

(declare-fun tp!1642171 () Bool)

(declare-fun tp!1642172 () Bool)

(assert (=> b!5910724 (= e!3619489 (and tp!1642171 tp!1642172))))

(assert (=> b!5910217 (= tp!1642069 e!3619489)))

(assert (= (and b!5910217 ((_ is Cons!64034) (exprs!5837 setElem!40072))) b!5910724))

(declare-fun b!5910725 () Bool)

(declare-fun e!3619490 () Bool)

(declare-fun tp!1642173 () Bool)

(declare-fun tp!1642174 () Bool)

(assert (=> b!5910725 (= e!3619490 (and tp!1642173 tp!1642174))))

(assert (=> b!5910212 (= tp!1642072 e!3619490)))

(assert (= (and b!5910212 ((_ is Cons!64034) (exprs!5837 (h!70483 zl!343)))) b!5910725))

(declare-fun condSetEmpty!40078 () Bool)

(assert (=> setNonEmpty!40072 (= condSetEmpty!40078 (= setRest!40072 ((as const (Array Context!10674 Bool)) false)))))

(declare-fun setRes!40078 () Bool)

(assert (=> setNonEmpty!40072 (= tp!1642074 setRes!40078)))

(declare-fun setIsEmpty!40078 () Bool)

(assert (=> setIsEmpty!40078 setRes!40078))

(declare-fun tp!1642179 () Bool)

(declare-fun setElem!40078 () Context!10674)

(declare-fun e!3619493 () Bool)

(declare-fun setNonEmpty!40078 () Bool)

(assert (=> setNonEmpty!40078 (= setRes!40078 (and tp!1642179 (inv!83129 setElem!40078) e!3619493))))

(declare-fun setRest!40078 () (InoxSet Context!10674))

(assert (=> setNonEmpty!40078 (= setRest!40072 ((_ map or) (store ((as const (Array Context!10674 Bool)) false) setElem!40078 true) setRest!40078))))

(declare-fun b!5910730 () Bool)

(declare-fun tp!1642180 () Bool)

(assert (=> b!5910730 (= e!3619493 tp!1642180)))

(assert (= (and setNonEmpty!40072 condSetEmpty!40078) setIsEmpty!40078))

(assert (= (and setNonEmpty!40072 (not condSetEmpty!40078)) setNonEmpty!40078))

(assert (= setNonEmpty!40078 b!5910730))

(declare-fun m!6810942 () Bool)

(assert (=> setNonEmpty!40078 m!6810942))

(declare-fun b!5910734 () Bool)

(declare-fun e!3619494 () Bool)

(declare-fun tp!1642183 () Bool)

(declare-fun tp!1642181 () Bool)

(assert (=> b!5910734 (= e!3619494 (and tp!1642183 tp!1642181))))

(assert (=> b!5910220 (= tp!1642071 e!3619494)))

(declare-fun b!5910731 () Bool)

(assert (=> b!5910731 (= e!3619494 tp_is_empty!41159)))

(declare-fun b!5910732 () Bool)

(declare-fun tp!1642182 () Bool)

(declare-fun tp!1642185 () Bool)

(assert (=> b!5910732 (= e!3619494 (and tp!1642182 tp!1642185))))

(declare-fun b!5910733 () Bool)

(declare-fun tp!1642184 () Bool)

(assert (=> b!5910733 (= e!3619494 tp!1642184)))

(assert (= (and b!5910220 ((_ is ElementMatch!15953) (regOne!32418 r!7292))) b!5910731))

(assert (= (and b!5910220 ((_ is Concat!24798) (regOne!32418 r!7292))) b!5910732))

(assert (= (and b!5910220 ((_ is Star!15953) (regOne!32418 r!7292))) b!5910733))

(assert (= (and b!5910220 ((_ is Union!15953) (regOne!32418 r!7292))) b!5910734))

(declare-fun b!5910738 () Bool)

(declare-fun e!3619495 () Bool)

(declare-fun tp!1642188 () Bool)

(declare-fun tp!1642186 () Bool)

(assert (=> b!5910738 (= e!3619495 (and tp!1642188 tp!1642186))))

(assert (=> b!5910220 (= tp!1642070 e!3619495)))

(declare-fun b!5910735 () Bool)

(assert (=> b!5910735 (= e!3619495 tp_is_empty!41159)))

(declare-fun b!5910736 () Bool)

(declare-fun tp!1642187 () Bool)

(declare-fun tp!1642190 () Bool)

(assert (=> b!5910736 (= e!3619495 (and tp!1642187 tp!1642190))))

(declare-fun b!5910737 () Bool)

(declare-fun tp!1642189 () Bool)

(assert (=> b!5910737 (= e!3619495 tp!1642189)))

(assert (= (and b!5910220 ((_ is ElementMatch!15953) (regTwo!32418 r!7292))) b!5910735))

(assert (= (and b!5910220 ((_ is Concat!24798) (regTwo!32418 r!7292))) b!5910736))

(assert (= (and b!5910220 ((_ is Star!15953) (regTwo!32418 r!7292))) b!5910737))

(assert (= (and b!5910220 ((_ is Union!15953) (regTwo!32418 r!7292))) b!5910738))

(check-sat (not b!5910733) (not b!5910702) (not b!5910696) (not d!1854542) (not d!1854594) (not b!5910698) (not b!5910736) (not b!5910449) (not b!5910538) (not b!5910738) (not b!5910714) (not b!5910662) (not b!5910549) (not d!1854584) (not b!5910389) (not b!5910737) (not b!5910724) (not bm!468465) (not d!1854546) (not b!5910546) (not b!5910387) (not b!5910444) (not d!1854566) (not b!5910544) (not b!5910443) (not d!1854558) (not bm!468460) (not b!5910380) (not b!5910385) tp_is_empty!41159 (not b!5910704) (not b!5910384) (not d!1854588) (not b!5910732) (not b!5910701) (not b!5910382) (not b!5910448) (not b!5910447) (not bm!468430) (not b!5910719) (not b!5910539) (not b!5910713) (not b!5910706) (not b!5910471) (not setNonEmpty!40078) (not bm!468466) (not b!5910658) (not bm!468449) (not b!5910734) (not b!5910381) (not b!5910730) (not b!5910725) (not b!5910705) (not b!5910248) (not b!5910697) (not bm!468428) (not b!5910700) (not bm!468451) (not b!5910551) (not b!5910675) (not d!1854590) (not b!5910451) (not b!5910681) (not bm!468467) (not b!5910446) (not bm!468469) (not d!1854560) (not b!5910478))
(check-sat)
