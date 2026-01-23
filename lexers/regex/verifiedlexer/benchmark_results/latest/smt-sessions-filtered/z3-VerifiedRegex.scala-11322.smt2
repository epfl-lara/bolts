; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!597424 () Bool)

(assert start!597424)

(declare-fun b!5834436 () Bool)

(declare-fun res!2458376 () Bool)

(declare-fun e!3579202 () Bool)

(assert (=> b!5834436 (=> res!2458376 e!3579202)))

(declare-datatypes ((C!32052 0))(
  ( (C!32053 (val!25728 Int)) )
))
(declare-datatypes ((Regex!15891 0))(
  ( (ElementMatch!15891 (c!1033659 C!32052)) (Concat!24736 (regOne!32294 Regex!15891) (regTwo!32294 Regex!15891)) (EmptyExpr!15891) (Star!15891 (reg!16220 Regex!15891)) (EmptyLang!15891) (Union!15891 (regOne!32295 Regex!15891) (regTwo!32295 Regex!15891)) )
))
(declare-datatypes ((List!63972 0))(
  ( (Nil!63848) (Cons!63848 (h!70296 Regex!15891) (t!377327 List!63972)) )
))
(declare-datatypes ((Context!10550 0))(
  ( (Context!10551 (exprs!5775 List!63972)) )
))
(declare-datatypes ((List!63973 0))(
  ( (Nil!63849) (Cons!63849 (h!70297 Context!10550) (t!377328 List!63973)) )
))
(declare-fun zl!343 () List!63973)

(declare-fun isEmpty!35715 (List!63973) Bool)

(assert (=> b!5834436 (= res!2458376 (not (isEmpty!35715 (t!377328 zl!343))))))

(declare-fun b!5834437 () Bool)

(declare-fun tp!1613099 () Bool)

(declare-fun e!3579203 () Bool)

(declare-fun e!3579196 () Bool)

(declare-fun inv!82974 (Context!10550) Bool)

(assert (=> b!5834437 (= e!3579196 (and (inv!82974 (h!70297 zl!343)) e!3579203 tp!1613099))))

(declare-fun b!5834438 () Bool)

(declare-fun e!3579200 () Bool)

(declare-fun lt!2303061 () List!63972)

(declare-fun lt!2303060 () Regex!15891)

(declare-fun head!12343 (List!63972) Regex!15891)

(assert (=> b!5834438 (= e!3579200 (= (head!12343 lt!2303061) lt!2303060))))

(declare-fun setIsEmpty!39472 () Bool)

(declare-fun setRes!39472 () Bool)

(assert (=> setIsEmpty!39472 setRes!39472))

(declare-fun b!5834439 () Bool)

(declare-fun res!2458374 () Bool)

(assert (=> b!5834439 (=> res!2458374 e!3579200)))

(declare-fun isEmpty!35716 (List!63972) Bool)

(assert (=> b!5834439 (= res!2458374 (isEmpty!35716 lt!2303061))))

(declare-fun setNonEmpty!39472 () Bool)

(declare-fun tp!1613102 () Bool)

(declare-fun setElem!39472 () Context!10550)

(declare-fun e!3579197 () Bool)

(assert (=> setNonEmpty!39472 (= setRes!39472 (and tp!1613102 (inv!82974 setElem!39472) e!3579197))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10550))

(declare-fun setRest!39472 () (InoxSet Context!10550))

(assert (=> setNonEmpty!39472 (= z!1189 ((_ map or) (store ((as const (Array Context!10550 Bool)) false) setElem!39472 true) setRest!39472))))

(declare-fun res!2458375 () Bool)

(declare-fun e!3579201 () Bool)

(assert (=> start!597424 (=> (not res!2458375) (not e!3579201))))

(declare-fun r!7292 () Regex!15891)

(declare-fun validRegex!7627 (Regex!15891) Bool)

(assert (=> start!597424 (= res!2458375 (validRegex!7627 r!7292))))

(assert (=> start!597424 e!3579201))

(declare-fun e!3579198 () Bool)

(assert (=> start!597424 e!3579198))

(declare-fun condSetEmpty!39472 () Bool)

(assert (=> start!597424 (= condSetEmpty!39472 (= z!1189 ((as const (Array Context!10550 Bool)) false)))))

(assert (=> start!597424 setRes!39472))

(assert (=> start!597424 e!3579196))

(declare-fun e!3579199 () Bool)

(assert (=> start!597424 e!3579199))

(declare-fun b!5834440 () Bool)

(declare-fun res!2458377 () Bool)

(assert (=> b!5834440 (=> res!2458377 e!3579202)))

(declare-fun generalisedUnion!1735 (List!63972) Regex!15891)

(declare-fun unfocusZipperList!1312 (List!63973) List!63972)

(assert (=> b!5834440 (= res!2458377 (not (= r!7292 (generalisedUnion!1735 (unfocusZipperList!1312 zl!343)))))))

(declare-fun b!5834441 () Bool)

(declare-fun res!2458380 () Bool)

(assert (=> b!5834441 (=> res!2458380 e!3579202)))

(get-info :version)

(assert (=> b!5834441 (= res!2458380 (not ((_ is Cons!63848) (exprs!5775 (h!70297 zl!343)))))))

(declare-fun b!5834442 () Bool)

(declare-fun tp_is_empty!41035 () Bool)

(declare-fun tp!1613104 () Bool)

(assert (=> b!5834442 (= e!3579199 (and tp_is_empty!41035 tp!1613104))))

(declare-fun b!5834443 () Bool)

(declare-fun res!2458371 () Bool)

(assert (=> b!5834443 (=> (not res!2458371) (not e!3579201))))

(declare-fun unfocusZipper!1633 (List!63973) Regex!15891)

(assert (=> b!5834443 (= res!2458371 (= r!7292 (unfocusZipper!1633 zl!343)))))

(declare-fun b!5834444 () Bool)

(assert (=> b!5834444 (= e!3579198 tp_is_empty!41035)))

(declare-fun b!5834445 () Bool)

(declare-fun tp!1613100 () Bool)

(assert (=> b!5834445 (= e!3579198 tp!1613100)))

(declare-fun b!5834446 () Bool)

(assert (=> b!5834446 (= e!3579201 (not e!3579202))))

(declare-fun res!2458370 () Bool)

(assert (=> b!5834446 (=> res!2458370 e!3579202)))

(assert (=> b!5834446 (= res!2458370 (not ((_ is Cons!63849) zl!343)))))

(declare-datatypes ((List!63974 0))(
  ( (Nil!63850) (Cons!63850 (h!70298 C!32052) (t!377329 List!63974)) )
))
(declare-fun s!2326 () List!63974)

(declare-fun matchR!8074 (Regex!15891 List!63974) Bool)

(declare-fun matchRSpec!2992 (Regex!15891 List!63974) Bool)

(assert (=> b!5834446 (= (matchR!8074 r!7292 s!2326) (matchRSpec!2992 r!7292 s!2326))))

(declare-datatypes ((Unit!157053 0))(
  ( (Unit!157054) )
))
(declare-fun lt!2303062 () Unit!157053)

(declare-fun mainMatchTheorem!2992 (Regex!15891 List!63974) Unit!157053)

(assert (=> b!5834446 (= lt!2303062 (mainMatchTheorem!2992 r!7292 s!2326))))

(declare-fun b!5834447 () Bool)

(declare-fun res!2458373 () Bool)

(assert (=> b!5834447 (=> res!2458373 e!3579202)))

(declare-fun generalisedConcat!1488 (List!63972) Regex!15891)

(assert (=> b!5834447 (= res!2458373 (not (= r!7292 (generalisedConcat!1488 (exprs!5775 (h!70297 zl!343))))))))

(declare-fun b!5834448 () Bool)

(assert (=> b!5834448 (= e!3579202 e!3579200)))

(declare-fun res!2458372 () Bool)

(assert (=> b!5834448 (=> res!2458372 e!3579200)))

(assert (=> b!5834448 (= res!2458372 (not (= z!1189 (store ((as const (Array Context!10550 Bool)) false) (Context!10551 lt!2303061) true))))))

(assert (=> b!5834448 (= lt!2303061 (Cons!63848 lt!2303060 Nil!63848))))

(assert (=> b!5834448 (= lt!2303060 (ElementMatch!15891 (c!1033659 r!7292)))))

(declare-fun b!5834449 () Bool)

(declare-fun tp!1613095 () Bool)

(declare-fun tp!1613103 () Bool)

(assert (=> b!5834449 (= e!3579198 (and tp!1613095 tp!1613103))))

(declare-fun b!5834450 () Bool)

(declare-fun tp!1613098 () Bool)

(declare-fun tp!1613096 () Bool)

(assert (=> b!5834450 (= e!3579198 (and tp!1613098 tp!1613096))))

(declare-fun b!5834451 () Bool)

(declare-fun res!2458378 () Bool)

(assert (=> b!5834451 (=> res!2458378 e!3579202)))

(assert (=> b!5834451 (= res!2458378 (or ((_ is EmptyExpr!15891) r!7292) ((_ is EmptyLang!15891) r!7292) (not ((_ is ElementMatch!15891) r!7292))))))

(declare-fun b!5834452 () Bool)

(declare-fun tp!1613101 () Bool)

(assert (=> b!5834452 (= e!3579203 tp!1613101)))

(declare-fun b!5834453 () Bool)

(declare-fun res!2458379 () Bool)

(assert (=> b!5834453 (=> (not res!2458379) (not e!3579201))))

(declare-fun toList!9675 ((InoxSet Context!10550)) List!63973)

(assert (=> b!5834453 (= res!2458379 (= (toList!9675 z!1189) zl!343))))

(declare-fun b!5834454 () Bool)

(declare-fun tp!1613097 () Bool)

(assert (=> b!5834454 (= e!3579197 tp!1613097)))

(assert (= (and start!597424 res!2458375) b!5834453))

(assert (= (and b!5834453 res!2458379) b!5834443))

(assert (= (and b!5834443 res!2458371) b!5834446))

(assert (= (and b!5834446 (not res!2458370)) b!5834436))

(assert (= (and b!5834436 (not res!2458376)) b!5834447))

(assert (= (and b!5834447 (not res!2458373)) b!5834441))

(assert (= (and b!5834441 (not res!2458380)) b!5834440))

(assert (= (and b!5834440 (not res!2458377)) b!5834451))

(assert (= (and b!5834451 (not res!2458378)) b!5834448))

(assert (= (and b!5834448 (not res!2458372)) b!5834439))

(assert (= (and b!5834439 (not res!2458374)) b!5834438))

(assert (= (and start!597424 ((_ is ElementMatch!15891) r!7292)) b!5834444))

(assert (= (and start!597424 ((_ is Concat!24736) r!7292)) b!5834450))

(assert (= (and start!597424 ((_ is Star!15891) r!7292)) b!5834445))

(assert (= (and start!597424 ((_ is Union!15891) r!7292)) b!5834449))

(assert (= (and start!597424 condSetEmpty!39472) setIsEmpty!39472))

(assert (= (and start!597424 (not condSetEmpty!39472)) setNonEmpty!39472))

(assert (= setNonEmpty!39472 b!5834454))

(assert (= b!5834437 b!5834452))

(assert (= (and start!597424 ((_ is Cons!63849) zl!343)) b!5834437))

(assert (= (and start!597424 ((_ is Cons!63850) s!2326)) b!5834442))

(declare-fun m!6762054 () Bool)

(assert (=> start!597424 m!6762054))

(declare-fun m!6762056 () Bool)

(assert (=> b!5834453 m!6762056))

(declare-fun m!6762058 () Bool)

(assert (=> b!5834448 m!6762058))

(declare-fun m!6762060 () Bool)

(assert (=> b!5834446 m!6762060))

(declare-fun m!6762062 () Bool)

(assert (=> b!5834446 m!6762062))

(declare-fun m!6762064 () Bool)

(assert (=> b!5834446 m!6762064))

(declare-fun m!6762066 () Bool)

(assert (=> b!5834447 m!6762066))

(declare-fun m!6762068 () Bool)

(assert (=> b!5834440 m!6762068))

(assert (=> b!5834440 m!6762068))

(declare-fun m!6762070 () Bool)

(assert (=> b!5834440 m!6762070))

(declare-fun m!6762072 () Bool)

(assert (=> b!5834438 m!6762072))

(declare-fun m!6762074 () Bool)

(assert (=> setNonEmpty!39472 m!6762074))

(declare-fun m!6762076 () Bool)

(assert (=> b!5834439 m!6762076))

(declare-fun m!6762078 () Bool)

(assert (=> b!5834436 m!6762078))

(declare-fun m!6762080 () Bool)

(assert (=> b!5834437 m!6762080))

(declare-fun m!6762082 () Bool)

(assert (=> b!5834443 m!6762082))

(check-sat (not b!5834453) (not b!5834440) (not b!5834446) (not start!597424) (not b!5834439) (not b!5834450) (not setNonEmpty!39472) (not b!5834452) (not b!5834443) (not b!5834445) tp_is_empty!41035 (not b!5834436) (not b!5834449) (not b!5834447) (not b!5834454) (not b!5834437) (not b!5834442) (not b!5834438))
(check-sat)
(get-model)

(declare-fun d!1834221 () Bool)

(declare-fun lt!2303065 () Regex!15891)

(assert (=> d!1834221 (validRegex!7627 lt!2303065)))

(assert (=> d!1834221 (= lt!2303065 (generalisedUnion!1735 (unfocusZipperList!1312 zl!343)))))

(assert (=> d!1834221 (= (unfocusZipper!1633 zl!343) lt!2303065)))

(declare-fun bs!1375292 () Bool)

(assert (= bs!1375292 d!1834221))

(declare-fun m!6762084 () Bool)

(assert (=> bs!1375292 m!6762084))

(assert (=> bs!1375292 m!6762068))

(assert (=> bs!1375292 m!6762068))

(assert (=> bs!1375292 m!6762070))

(assert (=> b!5834443 d!1834221))

(declare-fun d!1834223 () Bool)

(assert (=> d!1834223 (= (isEmpty!35716 lt!2303061) ((_ is Nil!63848) lt!2303061))))

(assert (=> b!5834439 d!1834223))

(declare-fun d!1834225 () Bool)

(declare-fun lambda!319169 () Int)

(declare-fun forall!14982 (List!63972 Int) Bool)

(assert (=> d!1834225 (= (inv!82974 setElem!39472) (forall!14982 (exprs!5775 setElem!39472) lambda!319169))))

(declare-fun bs!1375302 () Bool)

(assert (= bs!1375302 d!1834225))

(declare-fun m!6762128 () Bool)

(assert (=> bs!1375302 m!6762128))

(assert (=> setNonEmpty!39472 d!1834225))

(declare-fun d!1834249 () Bool)

(assert (=> d!1834249 (= (isEmpty!35715 (t!377328 zl!343)) ((_ is Nil!63849) (t!377328 zl!343)))))

(assert (=> b!5834436 d!1834249))

(declare-fun bs!1375307 () Bool)

(declare-fun d!1834251 () Bool)

(assert (= bs!1375307 (and d!1834251 d!1834225)))

(declare-fun lambda!319173 () Int)

(assert (=> bs!1375307 (= lambda!319173 lambda!319169)))

(declare-fun b!5834599 () Bool)

(declare-fun e!3579297 () Regex!15891)

(assert (=> b!5834599 (= e!3579297 (h!70296 (unfocusZipperList!1312 zl!343)))))

(declare-fun e!3579293 () Bool)

(assert (=> d!1834251 e!3579293))

(declare-fun res!2458432 () Bool)

(assert (=> d!1834251 (=> (not res!2458432) (not e!3579293))))

(declare-fun lt!2303085 () Regex!15891)

(assert (=> d!1834251 (= res!2458432 (validRegex!7627 lt!2303085))))

(assert (=> d!1834251 (= lt!2303085 e!3579297)))

(declare-fun c!1033709 () Bool)

(declare-fun e!3579296 () Bool)

(assert (=> d!1834251 (= c!1033709 e!3579296)))

(declare-fun res!2458431 () Bool)

(assert (=> d!1834251 (=> (not res!2458431) (not e!3579296))))

(assert (=> d!1834251 (= res!2458431 ((_ is Cons!63848) (unfocusZipperList!1312 zl!343)))))

(assert (=> d!1834251 (forall!14982 (unfocusZipperList!1312 zl!343) lambda!319173)))

(assert (=> d!1834251 (= (generalisedUnion!1735 (unfocusZipperList!1312 zl!343)) lt!2303085)))

(declare-fun b!5834600 () Bool)

(declare-fun e!3579295 () Bool)

(declare-fun e!3579298 () Bool)

(assert (=> b!5834600 (= e!3579295 e!3579298)))

(declare-fun c!1033708 () Bool)

(declare-fun tail!11428 (List!63972) List!63972)

(assert (=> b!5834600 (= c!1033708 (isEmpty!35716 (tail!11428 (unfocusZipperList!1312 zl!343))))))

(declare-fun b!5834601 () Bool)

(assert (=> b!5834601 (= e!3579298 (= lt!2303085 (head!12343 (unfocusZipperList!1312 zl!343))))))

(declare-fun b!5834602 () Bool)

(declare-fun isEmptyLang!1338 (Regex!15891) Bool)

(assert (=> b!5834602 (= e!3579295 (isEmptyLang!1338 lt!2303085))))

(declare-fun b!5834603 () Bool)

(assert (=> b!5834603 (= e!3579293 e!3579295)))

(declare-fun c!1033710 () Bool)

(assert (=> b!5834603 (= c!1033710 (isEmpty!35716 (unfocusZipperList!1312 zl!343)))))

(declare-fun b!5834604 () Bool)

(declare-fun e!3579294 () Regex!15891)

(assert (=> b!5834604 (= e!3579297 e!3579294)))

(declare-fun c!1033707 () Bool)

(assert (=> b!5834604 (= c!1033707 ((_ is Cons!63848) (unfocusZipperList!1312 zl!343)))))

(declare-fun b!5834605 () Bool)

(assert (=> b!5834605 (= e!3579296 (isEmpty!35716 (t!377327 (unfocusZipperList!1312 zl!343))))))

(declare-fun b!5834606 () Bool)

(declare-fun isUnion!768 (Regex!15891) Bool)

(assert (=> b!5834606 (= e!3579298 (isUnion!768 lt!2303085))))

(declare-fun b!5834607 () Bool)

(assert (=> b!5834607 (= e!3579294 EmptyLang!15891)))

(declare-fun b!5834608 () Bool)

(assert (=> b!5834608 (= e!3579294 (Union!15891 (h!70296 (unfocusZipperList!1312 zl!343)) (generalisedUnion!1735 (t!377327 (unfocusZipperList!1312 zl!343)))))))

(assert (= (and d!1834251 res!2458431) b!5834605))

(assert (= (and d!1834251 c!1033709) b!5834599))

(assert (= (and d!1834251 (not c!1033709)) b!5834604))

(assert (= (and b!5834604 c!1033707) b!5834608))

(assert (= (and b!5834604 (not c!1033707)) b!5834607))

(assert (= (and d!1834251 res!2458432) b!5834603))

(assert (= (and b!5834603 c!1033710) b!5834602))

(assert (= (and b!5834603 (not c!1033710)) b!5834600))

(assert (= (and b!5834600 c!1033708) b!5834601))

(assert (= (and b!5834600 (not c!1033708)) b!5834606))

(declare-fun m!6762150 () Bool)

(assert (=> b!5834605 m!6762150))

(declare-fun m!6762152 () Bool)

(assert (=> b!5834608 m!6762152))

(assert (=> b!5834600 m!6762068))

(declare-fun m!6762154 () Bool)

(assert (=> b!5834600 m!6762154))

(assert (=> b!5834600 m!6762154))

(declare-fun m!6762156 () Bool)

(assert (=> b!5834600 m!6762156))

(declare-fun m!6762158 () Bool)

(assert (=> b!5834602 m!6762158))

(assert (=> b!5834603 m!6762068))

(declare-fun m!6762160 () Bool)

(assert (=> b!5834603 m!6762160))

(declare-fun m!6762162 () Bool)

(assert (=> d!1834251 m!6762162))

(assert (=> d!1834251 m!6762068))

(declare-fun m!6762164 () Bool)

(assert (=> d!1834251 m!6762164))

(assert (=> b!5834601 m!6762068))

(declare-fun m!6762166 () Bool)

(assert (=> b!5834601 m!6762166))

(declare-fun m!6762168 () Bool)

(assert (=> b!5834606 m!6762168))

(assert (=> b!5834440 d!1834251))

(declare-fun bs!1375308 () Bool)

(declare-fun d!1834255 () Bool)

(assert (= bs!1375308 (and d!1834255 d!1834225)))

(declare-fun lambda!319176 () Int)

(assert (=> bs!1375308 (= lambda!319176 lambda!319169)))

(declare-fun bs!1375309 () Bool)

(assert (= bs!1375309 (and d!1834255 d!1834251)))

(assert (=> bs!1375309 (= lambda!319176 lambda!319173)))

(declare-fun lt!2303089 () List!63972)

(assert (=> d!1834255 (forall!14982 lt!2303089 lambda!319176)))

(declare-fun e!3579308 () List!63972)

(assert (=> d!1834255 (= lt!2303089 e!3579308)))

(declare-fun c!1033716 () Bool)

(assert (=> d!1834255 (= c!1033716 ((_ is Cons!63849) zl!343))))

(assert (=> d!1834255 (= (unfocusZipperList!1312 zl!343) lt!2303089)))

(declare-fun b!5834627 () Bool)

(assert (=> b!5834627 (= e!3579308 (Cons!63848 (generalisedConcat!1488 (exprs!5775 (h!70297 zl!343))) (unfocusZipperList!1312 (t!377328 zl!343))))))

(declare-fun b!5834628 () Bool)

(assert (=> b!5834628 (= e!3579308 Nil!63848)))

(assert (= (and d!1834255 c!1033716) b!5834627))

(assert (= (and d!1834255 (not c!1033716)) b!5834628))

(declare-fun m!6762184 () Bool)

(assert (=> d!1834255 m!6762184))

(assert (=> b!5834627 m!6762066))

(declare-fun m!6762186 () Bool)

(assert (=> b!5834627 m!6762186))

(assert (=> b!5834440 d!1834255))

(declare-fun bs!1375310 () Bool)

(declare-fun d!1834259 () Bool)

(assert (= bs!1375310 (and d!1834259 d!1834225)))

(declare-fun lambda!319177 () Int)

(assert (=> bs!1375310 (= lambda!319177 lambda!319169)))

(declare-fun bs!1375311 () Bool)

(assert (= bs!1375311 (and d!1834259 d!1834251)))

(assert (=> bs!1375311 (= lambda!319177 lambda!319173)))

(declare-fun bs!1375312 () Bool)

(assert (= bs!1375312 (and d!1834259 d!1834255)))

(assert (=> bs!1375312 (= lambda!319177 lambda!319176)))

(assert (=> d!1834259 (= (inv!82974 (h!70297 zl!343)) (forall!14982 (exprs!5775 (h!70297 zl!343)) lambda!319177))))

(declare-fun bs!1375313 () Bool)

(assert (= bs!1375313 d!1834259))

(declare-fun m!6762188 () Bool)

(assert (=> bs!1375313 m!6762188))

(assert (=> b!5834437 d!1834259))

(declare-fun bm!455678 () Bool)

(declare-fun call!455683 () Bool)

(declare-fun isEmpty!35717 (List!63974) Bool)

(assert (=> bm!455678 (= call!455683 (isEmpty!35717 s!2326))))

(declare-fun b!5834689 () Bool)

(declare-fun res!2458474 () Bool)

(declare-fun e!3579345 () Bool)

(assert (=> b!5834689 (=> res!2458474 e!3579345)))

(declare-fun e!3579342 () Bool)

(assert (=> b!5834689 (= res!2458474 e!3579342)))

(declare-fun res!2458478 () Bool)

(assert (=> b!5834689 (=> (not res!2458478) (not e!3579342))))

(declare-fun lt!2303092 () Bool)

(assert (=> b!5834689 (= res!2458478 lt!2303092)))

(declare-fun b!5834690 () Bool)

(declare-fun e!3579346 () Bool)

(declare-fun derivativeStep!4633 (Regex!15891 C!32052) Regex!15891)

(declare-fun head!12345 (List!63974) C!32052)

(declare-fun tail!11430 (List!63974) List!63974)

(assert (=> b!5834690 (= e!3579346 (matchR!8074 (derivativeStep!4633 r!7292 (head!12345 s!2326)) (tail!11430 s!2326)))))

(declare-fun b!5834691 () Bool)

(declare-fun e!3579341 () Bool)

(assert (=> b!5834691 (= e!3579341 (not (= (head!12345 s!2326) (c!1033659 r!7292))))))

(declare-fun b!5834692 () Bool)

(assert (=> b!5834692 (= e!3579342 (= (head!12345 s!2326) (c!1033659 r!7292)))))

(declare-fun d!1834261 () Bool)

(declare-fun e!3579343 () Bool)

(assert (=> d!1834261 e!3579343))

(declare-fun c!1033732 () Bool)

(assert (=> d!1834261 (= c!1033732 ((_ is EmptyExpr!15891) r!7292))))

(assert (=> d!1834261 (= lt!2303092 e!3579346)))

(declare-fun c!1033733 () Bool)

(assert (=> d!1834261 (= c!1033733 (isEmpty!35717 s!2326))))

(assert (=> d!1834261 (validRegex!7627 r!7292)))

(assert (=> d!1834261 (= (matchR!8074 r!7292 s!2326) lt!2303092)))

(declare-fun b!5834693 () Bool)

(assert (=> b!5834693 (= e!3579343 (= lt!2303092 call!455683))))

(declare-fun b!5834694 () Bool)

(declare-fun e!3579344 () Bool)

(assert (=> b!5834694 (= e!3579344 (not lt!2303092))))

(declare-fun b!5834695 () Bool)

(assert (=> b!5834695 (= e!3579343 e!3579344)))

(declare-fun c!1033731 () Bool)

(assert (=> b!5834695 (= c!1033731 ((_ is EmptyLang!15891) r!7292))))

(declare-fun b!5834696 () Bool)

(declare-fun e!3579347 () Bool)

(assert (=> b!5834696 (= e!3579345 e!3579347)))

(declare-fun res!2458473 () Bool)

(assert (=> b!5834696 (=> (not res!2458473) (not e!3579347))))

(assert (=> b!5834696 (= res!2458473 (not lt!2303092))))

(declare-fun b!5834697 () Bool)

(declare-fun res!2458475 () Bool)

(assert (=> b!5834697 (=> (not res!2458475) (not e!3579342))))

(assert (=> b!5834697 (= res!2458475 (isEmpty!35717 (tail!11430 s!2326)))))

(declare-fun b!5834698 () Bool)

(declare-fun nullable!5893 (Regex!15891) Bool)

(assert (=> b!5834698 (= e!3579346 (nullable!5893 r!7292))))

(declare-fun b!5834699 () Bool)

(declare-fun res!2458479 () Bool)

(assert (=> b!5834699 (=> res!2458479 e!3579345)))

(assert (=> b!5834699 (= res!2458479 (not ((_ is ElementMatch!15891) r!7292)))))

(assert (=> b!5834699 (= e!3579344 e!3579345)))

(declare-fun b!5834700 () Bool)

(assert (=> b!5834700 (= e!3579347 e!3579341)))

(declare-fun res!2458477 () Bool)

(assert (=> b!5834700 (=> res!2458477 e!3579341)))

(assert (=> b!5834700 (= res!2458477 call!455683)))

(declare-fun b!5834701 () Bool)

(declare-fun res!2458480 () Bool)

(assert (=> b!5834701 (=> (not res!2458480) (not e!3579342))))

(assert (=> b!5834701 (= res!2458480 (not call!455683))))

(declare-fun b!5834702 () Bool)

(declare-fun res!2458476 () Bool)

(assert (=> b!5834702 (=> res!2458476 e!3579341)))

(assert (=> b!5834702 (= res!2458476 (not (isEmpty!35717 (tail!11430 s!2326))))))

(assert (= (and d!1834261 c!1033733) b!5834698))

(assert (= (and d!1834261 (not c!1033733)) b!5834690))

(assert (= (and d!1834261 c!1033732) b!5834693))

(assert (= (and d!1834261 (not c!1033732)) b!5834695))

(assert (= (and b!5834695 c!1033731) b!5834694))

(assert (= (and b!5834695 (not c!1033731)) b!5834699))

(assert (= (and b!5834699 (not res!2458479)) b!5834689))

(assert (= (and b!5834689 res!2458478) b!5834701))

(assert (= (and b!5834701 res!2458480) b!5834697))

(assert (= (and b!5834697 res!2458475) b!5834692))

(assert (= (and b!5834689 (not res!2458474)) b!5834696))

(assert (= (and b!5834696 res!2458473) b!5834700))

(assert (= (and b!5834700 (not res!2458477)) b!5834702))

(assert (= (and b!5834702 (not res!2458476)) b!5834691))

(assert (= (or b!5834693 b!5834700 b!5834701) bm!455678))

(declare-fun m!6762190 () Bool)

(assert (=> d!1834261 m!6762190))

(assert (=> d!1834261 m!6762054))

(declare-fun m!6762192 () Bool)

(assert (=> b!5834690 m!6762192))

(assert (=> b!5834690 m!6762192))

(declare-fun m!6762194 () Bool)

(assert (=> b!5834690 m!6762194))

(declare-fun m!6762196 () Bool)

(assert (=> b!5834690 m!6762196))

(assert (=> b!5834690 m!6762194))

(assert (=> b!5834690 m!6762196))

(declare-fun m!6762198 () Bool)

(assert (=> b!5834690 m!6762198))

(assert (=> b!5834697 m!6762196))

(assert (=> b!5834697 m!6762196))

(declare-fun m!6762200 () Bool)

(assert (=> b!5834697 m!6762200))

(assert (=> b!5834691 m!6762192))

(assert (=> b!5834692 m!6762192))

(declare-fun m!6762202 () Bool)

(assert (=> b!5834698 m!6762202))

(assert (=> bm!455678 m!6762190))

(assert (=> b!5834702 m!6762196))

(assert (=> b!5834702 m!6762196))

(assert (=> b!5834702 m!6762200))

(assert (=> b!5834446 d!1834261))

(declare-fun b!5834813 () Bool)

(assert (=> b!5834813 true))

(assert (=> b!5834813 true))

(declare-fun bs!1375316 () Bool)

(declare-fun b!5834810 () Bool)

(assert (= bs!1375316 (and b!5834810 b!5834813)))

(declare-fun lambda!319189 () Int)

(declare-fun lambda!319188 () Int)

(assert (=> bs!1375316 (not (= lambda!319189 lambda!319188))))

(assert (=> b!5834810 true))

(assert (=> b!5834810 true))

(declare-fun b!5834804 () Bool)

(declare-fun e!3579396 () Bool)

(assert (=> b!5834804 (= e!3579396 (matchRSpec!2992 (regTwo!32295 r!7292) s!2326))))

(declare-fun bm!455685 () Bool)

(declare-fun call!455690 () Bool)

(assert (=> bm!455685 (= call!455690 (isEmpty!35717 s!2326))))

(declare-fun d!1834263 () Bool)

(declare-fun c!1033749 () Bool)

(assert (=> d!1834263 (= c!1033749 ((_ is EmptyExpr!15891) r!7292))))

(declare-fun e!3579401 () Bool)

(assert (=> d!1834263 (= (matchRSpec!2992 r!7292 s!2326) e!3579401)))

(declare-fun b!5834805 () Bool)

(declare-fun e!3579398 () Bool)

(declare-fun e!3579397 () Bool)

(assert (=> b!5834805 (= e!3579398 e!3579397)))

(declare-fun c!1033748 () Bool)

(assert (=> b!5834805 (= c!1033748 ((_ is Star!15891) r!7292))))

(declare-fun call!455691 () Bool)

(declare-fun bm!455686 () Bool)

(declare-fun Exists!2966 (Int) Bool)

(assert (=> bm!455686 (= call!455691 (Exists!2966 (ite c!1033748 lambda!319188 lambda!319189)))))

(declare-fun b!5834806 () Bool)

(declare-fun res!2458501 () Bool)

(declare-fun e!3579402 () Bool)

(assert (=> b!5834806 (=> res!2458501 e!3579402)))

(assert (=> b!5834806 (= res!2458501 call!455690)))

(assert (=> b!5834806 (= e!3579397 e!3579402)))

(declare-fun b!5834807 () Bool)

(declare-fun c!1033746 () Bool)

(assert (=> b!5834807 (= c!1033746 ((_ is Union!15891) r!7292))))

(declare-fun e!3579400 () Bool)

(assert (=> b!5834807 (= e!3579400 e!3579398)))

(declare-fun b!5834808 () Bool)

(declare-fun c!1033747 () Bool)

(assert (=> b!5834808 (= c!1033747 ((_ is ElementMatch!15891) r!7292))))

(declare-fun e!3579399 () Bool)

(assert (=> b!5834808 (= e!3579399 e!3579400)))

(declare-fun b!5834809 () Bool)

(assert (=> b!5834809 (= e!3579401 e!3579399)))

(declare-fun res!2458502 () Bool)

(assert (=> b!5834809 (= res!2458502 (not ((_ is EmptyLang!15891) r!7292)))))

(assert (=> b!5834809 (=> (not res!2458502) (not e!3579399))))

(assert (=> b!5834810 (= e!3579397 call!455691)))

(declare-fun b!5834811 () Bool)

(assert (=> b!5834811 (= e!3579398 e!3579396)))

(declare-fun res!2458500 () Bool)

(assert (=> b!5834811 (= res!2458500 (matchRSpec!2992 (regOne!32295 r!7292) s!2326))))

(assert (=> b!5834811 (=> res!2458500 e!3579396)))

(declare-fun b!5834812 () Bool)

(assert (=> b!5834812 (= e!3579400 (= s!2326 (Cons!63850 (c!1033659 r!7292) Nil!63850)))))

(assert (=> b!5834813 (= e!3579402 call!455691)))

(declare-fun b!5834814 () Bool)

(assert (=> b!5834814 (= e!3579401 call!455690)))

(assert (= (and d!1834263 c!1033749) b!5834814))

(assert (= (and d!1834263 (not c!1033749)) b!5834809))

(assert (= (and b!5834809 res!2458502) b!5834808))

(assert (= (and b!5834808 c!1033747) b!5834812))

(assert (= (and b!5834808 (not c!1033747)) b!5834807))

(assert (= (and b!5834807 c!1033746) b!5834811))

(assert (= (and b!5834807 (not c!1033746)) b!5834805))

(assert (= (and b!5834811 (not res!2458500)) b!5834804))

(assert (= (and b!5834805 c!1033748) b!5834806))

(assert (= (and b!5834805 (not c!1033748)) b!5834810))

(assert (= (and b!5834806 (not res!2458501)) b!5834813))

(assert (= (or b!5834813 b!5834810) bm!455686))

(assert (= (or b!5834814 b!5834806) bm!455685))

(declare-fun m!6762216 () Bool)

(assert (=> b!5834804 m!6762216))

(assert (=> bm!455685 m!6762190))

(declare-fun m!6762218 () Bool)

(assert (=> bm!455686 m!6762218))

(declare-fun m!6762220 () Bool)

(assert (=> b!5834811 m!6762220))

(assert (=> b!5834446 d!1834263))

(declare-fun d!1834267 () Bool)

(assert (=> d!1834267 (= (matchR!8074 r!7292 s!2326) (matchRSpec!2992 r!7292 s!2326))))

(declare-fun lt!2303098 () Unit!157053)

(declare-fun choose!44303 (Regex!15891 List!63974) Unit!157053)

(assert (=> d!1834267 (= lt!2303098 (choose!44303 r!7292 s!2326))))

(assert (=> d!1834267 (validRegex!7627 r!7292)))

(assert (=> d!1834267 (= (mainMatchTheorem!2992 r!7292 s!2326) lt!2303098)))

(declare-fun bs!1375317 () Bool)

(assert (= bs!1375317 d!1834267))

(assert (=> bs!1375317 m!6762060))

(assert (=> bs!1375317 m!6762062))

(declare-fun m!6762222 () Bool)

(assert (=> bs!1375317 m!6762222))

(assert (=> bs!1375317 m!6762054))

(assert (=> b!5834446 d!1834267))

(declare-fun c!1033755 () Bool)

(declare-fun bm!455693 () Bool)

(declare-fun call!455699 () Bool)

(declare-fun c!1033754 () Bool)

(assert (=> bm!455693 (= call!455699 (validRegex!7627 (ite c!1033755 (reg!16220 r!7292) (ite c!1033754 (regTwo!32295 r!7292) (regTwo!32294 r!7292)))))))

(declare-fun b!5834837 () Bool)

(declare-fun e!3579417 () Bool)

(declare-fun e!3579423 () Bool)

(assert (=> b!5834837 (= e!3579417 e!3579423)))

(assert (=> b!5834837 (= c!1033754 ((_ is Union!15891) r!7292))))

(declare-fun b!5834838 () Bool)

(declare-fun e!3579421 () Bool)

(assert (=> b!5834838 (= e!3579417 e!3579421)))

(declare-fun res!2458513 () Bool)

(assert (=> b!5834838 (= res!2458513 (not (nullable!5893 (reg!16220 r!7292))))))

(assert (=> b!5834838 (=> (not res!2458513) (not e!3579421))))

(declare-fun b!5834839 () Bool)

(assert (=> b!5834839 (= e!3579421 call!455699)))

(declare-fun bm!455694 () Bool)

(declare-fun call!455700 () Bool)

(assert (=> bm!455694 (= call!455700 call!455699)))

(declare-fun b!5834841 () Bool)

(declare-fun e!3579422 () Bool)

(assert (=> b!5834841 (= e!3579422 e!3579417)))

(assert (=> b!5834841 (= c!1033755 ((_ is Star!15891) r!7292))))

(declare-fun b!5834842 () Bool)

(declare-fun e!3579419 () Bool)

(assert (=> b!5834842 (= e!3579419 call!455700)))

(declare-fun b!5834843 () Bool)

(declare-fun e!3579418 () Bool)

(assert (=> b!5834843 (= e!3579418 call!455700)))

(declare-fun b!5834844 () Bool)

(declare-fun res!2458515 () Bool)

(assert (=> b!5834844 (=> (not res!2458515) (not e!3579419))))

(declare-fun call!455698 () Bool)

(assert (=> b!5834844 (= res!2458515 call!455698)))

(assert (=> b!5834844 (= e!3579423 e!3579419)))

(declare-fun bm!455695 () Bool)

(assert (=> bm!455695 (= call!455698 (validRegex!7627 (ite c!1033754 (regOne!32295 r!7292) (regOne!32294 r!7292))))))

(declare-fun b!5834845 () Bool)

(declare-fun e!3579420 () Bool)

(assert (=> b!5834845 (= e!3579420 e!3579418)))

(declare-fun res!2458514 () Bool)

(assert (=> b!5834845 (=> (not res!2458514) (not e!3579418))))

(assert (=> b!5834845 (= res!2458514 call!455698)))

(declare-fun b!5834840 () Bool)

(declare-fun res!2458516 () Bool)

(assert (=> b!5834840 (=> res!2458516 e!3579420)))

(assert (=> b!5834840 (= res!2458516 (not ((_ is Concat!24736) r!7292)))))

(assert (=> b!5834840 (= e!3579423 e!3579420)))

(declare-fun d!1834269 () Bool)

(declare-fun res!2458517 () Bool)

(assert (=> d!1834269 (=> res!2458517 e!3579422)))

(assert (=> d!1834269 (= res!2458517 ((_ is ElementMatch!15891) r!7292))))

(assert (=> d!1834269 (= (validRegex!7627 r!7292) e!3579422)))

(assert (= (and d!1834269 (not res!2458517)) b!5834841))

(assert (= (and b!5834841 c!1033755) b!5834838))

(assert (= (and b!5834841 (not c!1033755)) b!5834837))

(assert (= (and b!5834838 res!2458513) b!5834839))

(assert (= (and b!5834837 c!1033754) b!5834844))

(assert (= (and b!5834837 (not c!1033754)) b!5834840))

(assert (= (and b!5834844 res!2458515) b!5834842))

(assert (= (and b!5834840 (not res!2458516)) b!5834845))

(assert (= (and b!5834845 res!2458514) b!5834843))

(assert (= (or b!5834842 b!5834843) bm!455694))

(assert (= (or b!5834844 b!5834845) bm!455695))

(assert (= (or b!5834839 bm!455694) bm!455693))

(declare-fun m!6762224 () Bool)

(assert (=> bm!455693 m!6762224))

(declare-fun m!6762226 () Bool)

(assert (=> b!5834838 m!6762226))

(declare-fun m!6762228 () Bool)

(assert (=> bm!455695 m!6762228))

(assert (=> start!597424 d!1834269))

(declare-fun d!1834271 () Bool)

(assert (=> d!1834271 (= (head!12343 lt!2303061) (h!70296 lt!2303061))))

(assert (=> b!5834438 d!1834271))

(declare-fun bs!1375318 () Bool)

(declare-fun d!1834273 () Bool)

(assert (= bs!1375318 (and d!1834273 d!1834225)))

(declare-fun lambda!319192 () Int)

(assert (=> bs!1375318 (= lambda!319192 lambda!319169)))

(declare-fun bs!1375319 () Bool)

(assert (= bs!1375319 (and d!1834273 d!1834251)))

(assert (=> bs!1375319 (= lambda!319192 lambda!319173)))

(declare-fun bs!1375320 () Bool)

(assert (= bs!1375320 (and d!1834273 d!1834255)))

(assert (=> bs!1375320 (= lambda!319192 lambda!319176)))

(declare-fun bs!1375321 () Bool)

(assert (= bs!1375321 (and d!1834273 d!1834259)))

(assert (=> bs!1375321 (= lambda!319192 lambda!319177)))

(declare-fun b!5834866 () Bool)

(declare-fun e!3579437 () Bool)

(declare-fun e!3579438 () Bool)

(assert (=> b!5834866 (= e!3579437 e!3579438)))

(declare-fun c!1033767 () Bool)

(assert (=> b!5834866 (= c!1033767 (isEmpty!35716 (tail!11428 (exprs!5775 (h!70297 zl!343)))))))

(declare-fun b!5834867 () Bool)

(declare-fun e!3579436 () Bool)

(assert (=> b!5834867 (= e!3579436 (isEmpty!35716 (t!377327 (exprs!5775 (h!70297 zl!343)))))))

(declare-fun b!5834868 () Bool)

(declare-fun lt!2303101 () Regex!15891)

(declare-fun isConcat!853 (Regex!15891) Bool)

(assert (=> b!5834868 (= e!3579438 (isConcat!853 lt!2303101))))

(declare-fun b!5834869 () Bool)

(declare-fun e!3579440 () Regex!15891)

(assert (=> b!5834869 (= e!3579440 (Concat!24736 (h!70296 (exprs!5775 (h!70297 zl!343))) (generalisedConcat!1488 (t!377327 (exprs!5775 (h!70297 zl!343))))))))

(declare-fun b!5834870 () Bool)

(declare-fun e!3579441 () Bool)

(assert (=> b!5834870 (= e!3579441 e!3579437)))

(declare-fun c!1033765 () Bool)

(assert (=> b!5834870 (= c!1033765 (isEmpty!35716 (exprs!5775 (h!70297 zl!343))))))

(declare-fun b!5834871 () Bool)

(declare-fun isEmptyExpr!1330 (Regex!15891) Bool)

(assert (=> b!5834871 (= e!3579437 (isEmptyExpr!1330 lt!2303101))))

(declare-fun b!5834872 () Bool)

(assert (=> b!5834872 (= e!3579438 (= lt!2303101 (head!12343 (exprs!5775 (h!70297 zl!343)))))))

(assert (=> d!1834273 e!3579441))

(declare-fun res!2458523 () Bool)

(assert (=> d!1834273 (=> (not res!2458523) (not e!3579441))))

(assert (=> d!1834273 (= res!2458523 (validRegex!7627 lt!2303101))))

(declare-fun e!3579439 () Regex!15891)

(assert (=> d!1834273 (= lt!2303101 e!3579439)))

(declare-fun c!1033766 () Bool)

(assert (=> d!1834273 (= c!1033766 e!3579436)))

(declare-fun res!2458522 () Bool)

(assert (=> d!1834273 (=> (not res!2458522) (not e!3579436))))

(assert (=> d!1834273 (= res!2458522 ((_ is Cons!63848) (exprs!5775 (h!70297 zl!343))))))

(assert (=> d!1834273 (forall!14982 (exprs!5775 (h!70297 zl!343)) lambda!319192)))

(assert (=> d!1834273 (= (generalisedConcat!1488 (exprs!5775 (h!70297 zl!343))) lt!2303101)))

(declare-fun b!5834873 () Bool)

(assert (=> b!5834873 (= e!3579440 EmptyExpr!15891)))

(declare-fun b!5834874 () Bool)

(assert (=> b!5834874 (= e!3579439 e!3579440)))

(declare-fun c!1033764 () Bool)

(assert (=> b!5834874 (= c!1033764 ((_ is Cons!63848) (exprs!5775 (h!70297 zl!343))))))

(declare-fun b!5834875 () Bool)

(assert (=> b!5834875 (= e!3579439 (h!70296 (exprs!5775 (h!70297 zl!343))))))

(assert (= (and d!1834273 res!2458522) b!5834867))

(assert (= (and d!1834273 c!1033766) b!5834875))

(assert (= (and d!1834273 (not c!1033766)) b!5834874))

(assert (= (and b!5834874 c!1033764) b!5834869))

(assert (= (and b!5834874 (not c!1033764)) b!5834873))

(assert (= (and d!1834273 res!2458523) b!5834870))

(assert (= (and b!5834870 c!1033765) b!5834871))

(assert (= (and b!5834870 (not c!1033765)) b!5834866))

(assert (= (and b!5834866 c!1033767) b!5834872))

(assert (= (and b!5834866 (not c!1033767)) b!5834868))

(declare-fun m!6762230 () Bool)

(assert (=> b!5834866 m!6762230))

(assert (=> b!5834866 m!6762230))

(declare-fun m!6762232 () Bool)

(assert (=> b!5834866 m!6762232))

(declare-fun m!6762234 () Bool)

(assert (=> b!5834868 m!6762234))

(declare-fun m!6762236 () Bool)

(assert (=> b!5834871 m!6762236))

(declare-fun m!6762238 () Bool)

(assert (=> b!5834872 m!6762238))

(declare-fun m!6762240 () Bool)

(assert (=> b!5834867 m!6762240))

(declare-fun m!6762242 () Bool)

(assert (=> d!1834273 m!6762242))

(declare-fun m!6762244 () Bool)

(assert (=> d!1834273 m!6762244))

(declare-fun m!6762246 () Bool)

(assert (=> b!5834869 m!6762246))

(declare-fun m!6762248 () Bool)

(assert (=> b!5834870 m!6762248))

(assert (=> b!5834447 d!1834273))

(declare-fun d!1834275 () Bool)

(declare-fun e!3579444 () Bool)

(assert (=> d!1834275 e!3579444))

(declare-fun res!2458526 () Bool)

(assert (=> d!1834275 (=> (not res!2458526) (not e!3579444))))

(declare-fun lt!2303104 () List!63973)

(declare-fun noDuplicate!1760 (List!63973) Bool)

(assert (=> d!1834275 (= res!2458526 (noDuplicate!1760 lt!2303104))))

(declare-fun choose!44305 ((InoxSet Context!10550)) List!63973)

(assert (=> d!1834275 (= lt!2303104 (choose!44305 z!1189))))

(assert (=> d!1834275 (= (toList!9675 z!1189) lt!2303104)))

(declare-fun b!5834878 () Bool)

(declare-fun content!11725 (List!63973) (InoxSet Context!10550))

(assert (=> b!5834878 (= e!3579444 (= (content!11725 lt!2303104) z!1189))))

(assert (= (and d!1834275 res!2458526) b!5834878))

(declare-fun m!6762250 () Bool)

(assert (=> d!1834275 m!6762250))

(declare-fun m!6762252 () Bool)

(assert (=> d!1834275 m!6762252))

(declare-fun m!6762254 () Bool)

(assert (=> b!5834878 m!6762254))

(assert (=> b!5834453 d!1834275))

(declare-fun b!5834883 () Bool)

(declare-fun e!3579447 () Bool)

(declare-fun tp!1613167 () Bool)

(declare-fun tp!1613168 () Bool)

(assert (=> b!5834883 (= e!3579447 (and tp!1613167 tp!1613168))))

(assert (=> b!5834454 (= tp!1613097 e!3579447)))

(assert (= (and b!5834454 ((_ is Cons!63848) (exprs!5775 setElem!39472))) b!5834883))

(declare-fun b!5834896 () Bool)

(declare-fun e!3579450 () Bool)

(declare-fun tp!1613181 () Bool)

(assert (=> b!5834896 (= e!3579450 tp!1613181)))

(declare-fun b!5834897 () Bool)

(declare-fun tp!1613183 () Bool)

(declare-fun tp!1613179 () Bool)

(assert (=> b!5834897 (= e!3579450 (and tp!1613183 tp!1613179))))

(assert (=> b!5834449 (= tp!1613095 e!3579450)))

(declare-fun b!5834894 () Bool)

(assert (=> b!5834894 (= e!3579450 tp_is_empty!41035)))

(declare-fun b!5834895 () Bool)

(declare-fun tp!1613180 () Bool)

(declare-fun tp!1613182 () Bool)

(assert (=> b!5834895 (= e!3579450 (and tp!1613180 tp!1613182))))

(assert (= (and b!5834449 ((_ is ElementMatch!15891) (regOne!32295 r!7292))) b!5834894))

(assert (= (and b!5834449 ((_ is Concat!24736) (regOne!32295 r!7292))) b!5834895))

(assert (= (and b!5834449 ((_ is Star!15891) (regOne!32295 r!7292))) b!5834896))

(assert (= (and b!5834449 ((_ is Union!15891) (regOne!32295 r!7292))) b!5834897))

(declare-fun b!5834900 () Bool)

(declare-fun e!3579451 () Bool)

(declare-fun tp!1613186 () Bool)

(assert (=> b!5834900 (= e!3579451 tp!1613186)))

(declare-fun b!5834901 () Bool)

(declare-fun tp!1613188 () Bool)

(declare-fun tp!1613184 () Bool)

(assert (=> b!5834901 (= e!3579451 (and tp!1613188 tp!1613184))))

(assert (=> b!5834449 (= tp!1613103 e!3579451)))

(declare-fun b!5834898 () Bool)

(assert (=> b!5834898 (= e!3579451 tp_is_empty!41035)))

(declare-fun b!5834899 () Bool)

(declare-fun tp!1613185 () Bool)

(declare-fun tp!1613187 () Bool)

(assert (=> b!5834899 (= e!3579451 (and tp!1613185 tp!1613187))))

(assert (= (and b!5834449 ((_ is ElementMatch!15891) (regTwo!32295 r!7292))) b!5834898))

(assert (= (and b!5834449 ((_ is Concat!24736) (regTwo!32295 r!7292))) b!5834899))

(assert (= (and b!5834449 ((_ is Star!15891) (regTwo!32295 r!7292))) b!5834900))

(assert (= (and b!5834449 ((_ is Union!15891) (regTwo!32295 r!7292))) b!5834901))

(declare-fun condSetEmpty!39478 () Bool)

(assert (=> setNonEmpty!39472 (= condSetEmpty!39478 (= setRest!39472 ((as const (Array Context!10550 Bool)) false)))))

(declare-fun setRes!39478 () Bool)

(assert (=> setNonEmpty!39472 (= tp!1613102 setRes!39478)))

(declare-fun setIsEmpty!39478 () Bool)

(assert (=> setIsEmpty!39478 setRes!39478))

(declare-fun e!3579454 () Bool)

(declare-fun setNonEmpty!39478 () Bool)

(declare-fun setElem!39478 () Context!10550)

(declare-fun tp!1613193 () Bool)

(assert (=> setNonEmpty!39478 (= setRes!39478 (and tp!1613193 (inv!82974 setElem!39478) e!3579454))))

(declare-fun setRest!39478 () (InoxSet Context!10550))

(assert (=> setNonEmpty!39478 (= setRest!39472 ((_ map or) (store ((as const (Array Context!10550 Bool)) false) setElem!39478 true) setRest!39478))))

(declare-fun b!5834906 () Bool)

(declare-fun tp!1613194 () Bool)

(assert (=> b!5834906 (= e!3579454 tp!1613194)))

(assert (= (and setNonEmpty!39472 condSetEmpty!39478) setIsEmpty!39478))

(assert (= (and setNonEmpty!39472 (not condSetEmpty!39478)) setNonEmpty!39478))

(assert (= setNonEmpty!39478 b!5834906))

(declare-fun m!6762256 () Bool)

(assert (=> setNonEmpty!39478 m!6762256))

(declare-fun b!5834909 () Bool)

(declare-fun e!3579455 () Bool)

(declare-fun tp!1613197 () Bool)

(assert (=> b!5834909 (= e!3579455 tp!1613197)))

(declare-fun b!5834910 () Bool)

(declare-fun tp!1613199 () Bool)

(declare-fun tp!1613195 () Bool)

(assert (=> b!5834910 (= e!3579455 (and tp!1613199 tp!1613195))))

(assert (=> b!5834450 (= tp!1613098 e!3579455)))

(declare-fun b!5834907 () Bool)

(assert (=> b!5834907 (= e!3579455 tp_is_empty!41035)))

(declare-fun b!5834908 () Bool)

(declare-fun tp!1613196 () Bool)

(declare-fun tp!1613198 () Bool)

(assert (=> b!5834908 (= e!3579455 (and tp!1613196 tp!1613198))))

(assert (= (and b!5834450 ((_ is ElementMatch!15891) (regOne!32294 r!7292))) b!5834907))

(assert (= (and b!5834450 ((_ is Concat!24736) (regOne!32294 r!7292))) b!5834908))

(assert (= (and b!5834450 ((_ is Star!15891) (regOne!32294 r!7292))) b!5834909))

(assert (= (and b!5834450 ((_ is Union!15891) (regOne!32294 r!7292))) b!5834910))

(declare-fun b!5834913 () Bool)

(declare-fun e!3579456 () Bool)

(declare-fun tp!1613202 () Bool)

(assert (=> b!5834913 (= e!3579456 tp!1613202)))

(declare-fun b!5834914 () Bool)

(declare-fun tp!1613204 () Bool)

(declare-fun tp!1613200 () Bool)

(assert (=> b!5834914 (= e!3579456 (and tp!1613204 tp!1613200))))

(assert (=> b!5834450 (= tp!1613096 e!3579456)))

(declare-fun b!5834911 () Bool)

(assert (=> b!5834911 (= e!3579456 tp_is_empty!41035)))

(declare-fun b!5834912 () Bool)

(declare-fun tp!1613201 () Bool)

(declare-fun tp!1613203 () Bool)

(assert (=> b!5834912 (= e!3579456 (and tp!1613201 tp!1613203))))

(assert (= (and b!5834450 ((_ is ElementMatch!15891) (regTwo!32294 r!7292))) b!5834911))

(assert (= (and b!5834450 ((_ is Concat!24736) (regTwo!32294 r!7292))) b!5834912))

(assert (= (and b!5834450 ((_ is Star!15891) (regTwo!32294 r!7292))) b!5834913))

(assert (= (and b!5834450 ((_ is Union!15891) (regTwo!32294 r!7292))) b!5834914))

(declare-fun b!5834917 () Bool)

(declare-fun e!3579457 () Bool)

(declare-fun tp!1613207 () Bool)

(assert (=> b!5834917 (= e!3579457 tp!1613207)))

(declare-fun b!5834918 () Bool)

(declare-fun tp!1613209 () Bool)

(declare-fun tp!1613205 () Bool)

(assert (=> b!5834918 (= e!3579457 (and tp!1613209 tp!1613205))))

(assert (=> b!5834445 (= tp!1613100 e!3579457)))

(declare-fun b!5834915 () Bool)

(assert (=> b!5834915 (= e!3579457 tp_is_empty!41035)))

(declare-fun b!5834916 () Bool)

(declare-fun tp!1613206 () Bool)

(declare-fun tp!1613208 () Bool)

(assert (=> b!5834916 (= e!3579457 (and tp!1613206 tp!1613208))))

(assert (= (and b!5834445 ((_ is ElementMatch!15891) (reg!16220 r!7292))) b!5834915))

(assert (= (and b!5834445 ((_ is Concat!24736) (reg!16220 r!7292))) b!5834916))

(assert (= (and b!5834445 ((_ is Star!15891) (reg!16220 r!7292))) b!5834917))

(assert (= (and b!5834445 ((_ is Union!15891) (reg!16220 r!7292))) b!5834918))

(declare-fun b!5834926 () Bool)

(declare-fun e!3579463 () Bool)

(declare-fun tp!1613214 () Bool)

(assert (=> b!5834926 (= e!3579463 tp!1613214)))

(declare-fun e!3579462 () Bool)

(declare-fun tp!1613215 () Bool)

(declare-fun b!5834925 () Bool)

(assert (=> b!5834925 (= e!3579462 (and (inv!82974 (h!70297 (t!377328 zl!343))) e!3579463 tp!1613215))))

(assert (=> b!5834437 (= tp!1613099 e!3579462)))

(assert (= b!5834925 b!5834926))

(assert (= (and b!5834437 ((_ is Cons!63849) (t!377328 zl!343))) b!5834925))

(declare-fun m!6762258 () Bool)

(assert (=> b!5834925 m!6762258))

(declare-fun b!5834927 () Bool)

(declare-fun e!3579464 () Bool)

(declare-fun tp!1613216 () Bool)

(declare-fun tp!1613217 () Bool)

(assert (=> b!5834927 (= e!3579464 (and tp!1613216 tp!1613217))))

(assert (=> b!5834452 (= tp!1613101 e!3579464)))

(assert (= (and b!5834452 ((_ is Cons!63848) (exprs!5775 (h!70297 zl!343)))) b!5834927))

(declare-fun b!5834932 () Bool)

(declare-fun e!3579467 () Bool)

(declare-fun tp!1613220 () Bool)

(assert (=> b!5834932 (= e!3579467 (and tp_is_empty!41035 tp!1613220))))

(assert (=> b!5834442 (= tp!1613104 e!3579467)))

(assert (= (and b!5834442 ((_ is Cons!63850) (t!377329 s!2326))) b!5834932))

(check-sat (not b!5834895) (not b!5834698) (not b!5834899) (not b!5834908) (not b!5834872) (not b!5834866) (not b!5834870) (not b!5834602) (not b!5834811) (not b!5834913) (not d!1834225) (not b!5834910) (not b!5834690) tp_is_empty!41035 (not bm!455686) (not d!1834261) (not b!5834606) (not d!1834221) (not b!5834702) (not b!5834896) (not setNonEmpty!39478) (not d!1834267) (not d!1834273) (not b!5834838) (not b!5834603) (not b!5834691) (not b!5834878) (not bm!455693) (not b!5834897) (not b!5834871) (not b!5834605) (not b!5834932) (not b!5834900) (not b!5834918) (not b!5834600) (not b!5834916) (not b!5834926) (not b!5834901) (not bm!455695) (not b!5834912) (not d!1834255) (not bm!455685) (not b!5834697) (not b!5834869) (not b!5834914) (not b!5834925) (not d!1834251) (not b!5834692) (not b!5834883) (not b!5834927) (not b!5834867) (not b!5834917) (not b!5834868) (not b!5834608) (not d!1834259) (not bm!455678) (not d!1834275) (not b!5834906) (not b!5834627) (not b!5834804) (not b!5834909) (not b!5834601))
(check-sat)
