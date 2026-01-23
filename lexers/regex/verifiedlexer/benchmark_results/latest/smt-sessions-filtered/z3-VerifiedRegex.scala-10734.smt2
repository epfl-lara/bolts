; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!549214 () Bool)

(assert start!549214)

(declare-fun setIsEmpty!32710 () Bool)

(declare-fun setRes!32710 () Bool)

(assert (=> setIsEmpty!32710 setRes!32710))

(declare-fun b!5187345 () Bool)

(declare-fun e!3231415 () Bool)

(declare-fun tp!1455405 () Bool)

(declare-fun tp!1455409 () Bool)

(assert (=> b!5187345 (= e!3231415 (and tp!1455405 tp!1455409))))

(declare-fun b!5187346 () Bool)

(declare-fun res!2203462 () Bool)

(declare-fun e!3231416 () Bool)

(assert (=> b!5187346 (=> res!2203462 e!3231416)))

(declare-datatypes ((C!29700 0))(
  ( (C!29701 (val!24552 Int)) )
))
(declare-datatypes ((Regex!14715 0))(
  ( (ElementMatch!14715 (c!893962 C!29700)) (Concat!23560 (regOne!29942 Regex!14715) (regTwo!29942 Regex!14715)) (EmptyExpr!14715) (Star!14715 (reg!15044 Regex!14715)) (EmptyLang!14715) (Union!14715 (regOne!29943 Regex!14715) (regTwo!29943 Regex!14715)) )
))
(declare-datatypes ((List!60444 0))(
  ( (Nil!60320) (Cons!60320 (h!66768 Regex!14715) (t!373597 List!60444)) )
))
(declare-datatypes ((Context!8198 0))(
  ( (Context!8199 (exprs!4599 List!60444)) )
))
(declare-datatypes ((List!60445 0))(
  ( (Nil!60321) (Cons!60321 (h!66769 Context!8198) (t!373598 List!60445)) )
))
(declare-fun zl!343 () List!60445)

(get-info :version)

(assert (=> b!5187346 (= res!2203462 (not ((_ is Cons!60320) (exprs!4599 (h!66769 zl!343)))))))

(declare-fun b!5187347 () Bool)

(declare-fun res!2203459 () Bool)

(declare-fun e!3231411 () Bool)

(assert (=> b!5187347 (=> (not res!2203459) (not e!3231411))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8198))

(declare-fun toList!8499 ((InoxSet Context!8198)) List!60445)

(assert (=> b!5187347 (= res!2203459 (= (toList!8499 z!1189) zl!343))))

(declare-fun b!5187348 () Bool)

(declare-fun e!3231413 () Bool)

(declare-fun r!7292 () Regex!14715)

(declare-fun validRegex!6451 (Regex!14715) Bool)

(assert (=> b!5187348 (= e!3231413 (validRegex!6451 (regTwo!29943 r!7292)))))

(declare-fun b!5187349 () Bool)

(declare-fun tp!1455408 () Bool)

(assert (=> b!5187349 (= e!3231415 tp!1455408)))

(declare-fun b!5187350 () Bool)

(declare-fun e!3231417 () Bool)

(declare-fun tp!1455412 () Bool)

(assert (=> b!5187350 (= e!3231417 tp!1455412)))

(declare-fun b!5187352 () Bool)

(declare-fun res!2203457 () Bool)

(assert (=> b!5187352 (=> res!2203457 e!3231416)))

(declare-fun isEmpty!32284 (List!60445) Bool)

(assert (=> b!5187352 (= res!2203457 (not (isEmpty!32284 (t!373598 zl!343))))))

(declare-fun b!5187353 () Bool)

(declare-fun tp_is_empty!38683 () Bool)

(assert (=> b!5187353 (= e!3231415 tp_is_empty!38683)))

(declare-fun b!5187354 () Bool)

(assert (=> b!5187354 (= e!3231416 e!3231413)))

(declare-fun res!2203461 () Bool)

(assert (=> b!5187354 (=> res!2203461 e!3231413)))

(declare-datatypes ((List!60446 0))(
  ( (Nil!60322) (Cons!60322 (h!66770 C!29700) (t!373599 List!60446)) )
))
(declare-fun s!2326 () List!60446)

(declare-fun lt!2136769 () Bool)

(declare-fun lt!2136764 () Bool)

(declare-fun lt!2136768 () Bool)

(assert (=> b!5187354 (= res!2203461 (or (not (= lt!2136769 (or lt!2136764 lt!2136768))) ((_ is Nil!60322) s!2326)))))

(declare-fun matchRSpec!1818 (Regex!14715 List!60446) Bool)

(assert (=> b!5187354 (= lt!2136768 (matchRSpec!1818 (regTwo!29943 r!7292) s!2326))))

(declare-fun matchR!6900 (Regex!14715 List!60446) Bool)

(assert (=> b!5187354 (= lt!2136768 (matchR!6900 (regTwo!29943 r!7292) s!2326))))

(declare-datatypes ((Unit!152264 0))(
  ( (Unit!152265) )
))
(declare-fun lt!2136766 () Unit!152264)

(declare-fun mainMatchTheorem!1818 (Regex!14715 List!60446) Unit!152264)

(assert (=> b!5187354 (= lt!2136766 (mainMatchTheorem!1818 (regTwo!29943 r!7292) s!2326))))

(assert (=> b!5187354 (= lt!2136764 (matchRSpec!1818 (regOne!29943 r!7292) s!2326))))

(assert (=> b!5187354 (= lt!2136764 (matchR!6900 (regOne!29943 r!7292) s!2326))))

(declare-fun lt!2136765 () Unit!152264)

(assert (=> b!5187354 (= lt!2136765 (mainMatchTheorem!1818 (regOne!29943 r!7292) s!2326))))

(declare-fun b!5187355 () Bool)

(declare-fun res!2203455 () Bool)

(assert (=> b!5187355 (=> res!2203455 e!3231413)))

(declare-fun derivationStepZipperUp!105 (Context!8198 C!29700) (InoxSet Context!8198))

(declare-fun derivationStepZipperDown!184 (Regex!14715 Context!8198 C!29700) (InoxSet Context!8198))

(assert (=> b!5187355 (= res!2203455 (not (= (derivationStepZipperUp!105 (Context!8199 (Cons!60320 r!7292 Nil!60320)) (h!66770 s!2326)) (derivationStepZipperDown!184 r!7292 (Context!8199 Nil!60320) (h!66770 s!2326)))))))

(declare-fun b!5187356 () Bool)

(declare-fun tp!1455407 () Bool)

(declare-fun tp!1455404 () Bool)

(assert (=> b!5187356 (= e!3231415 (and tp!1455407 tp!1455404))))

(declare-fun b!5187357 () Bool)

(declare-fun res!2203463 () Bool)

(assert (=> b!5187357 (=> res!2203463 e!3231416)))

(declare-fun generalisedUnion!644 (List!60444) Regex!14715)

(declare-fun unfocusZipperList!157 (List!60445) List!60444)

(assert (=> b!5187357 (= res!2203463 (not (= r!7292 (generalisedUnion!644 (unfocusZipperList!157 zl!343)))))))

(declare-fun b!5187358 () Bool)

(declare-fun e!3231412 () Bool)

(declare-fun tp!1455411 () Bool)

(assert (=> b!5187358 (= e!3231412 (and tp_is_empty!38683 tp!1455411))))

(declare-fun b!5187359 () Bool)

(declare-fun e!3231414 () Bool)

(declare-fun tp!1455413 () Bool)

(assert (=> b!5187359 (= e!3231414 tp!1455413)))

(declare-fun tp!1455406 () Bool)

(declare-fun e!3231410 () Bool)

(declare-fun b!5187360 () Bool)

(declare-fun inv!80034 (Context!8198) Bool)

(assert (=> b!5187360 (= e!3231410 (and (inv!80034 (h!66769 zl!343)) e!3231414 tp!1455406))))

(declare-fun tp!1455410 () Bool)

(declare-fun setNonEmpty!32710 () Bool)

(declare-fun setElem!32710 () Context!8198)

(assert (=> setNonEmpty!32710 (= setRes!32710 (and tp!1455410 (inv!80034 setElem!32710) e!3231417))))

(declare-fun setRest!32710 () (InoxSet Context!8198))

(assert (=> setNonEmpty!32710 (= z!1189 ((_ map or) (store ((as const (Array Context!8198 Bool)) false) setElem!32710 true) setRest!32710))))

(declare-fun b!5187361 () Bool)

(assert (=> b!5187361 (= e!3231411 (not e!3231416))))

(declare-fun res!2203454 () Bool)

(assert (=> b!5187361 (=> res!2203454 e!3231416)))

(assert (=> b!5187361 (= res!2203454 (not ((_ is Cons!60321) zl!343)))))

(assert (=> b!5187361 (= lt!2136769 (matchRSpec!1818 r!7292 s!2326))))

(assert (=> b!5187361 (= lt!2136769 (matchR!6900 r!7292 s!2326))))

(declare-fun lt!2136767 () Unit!152264)

(assert (=> b!5187361 (= lt!2136767 (mainMatchTheorem!1818 r!7292 s!2326))))

(declare-fun b!5187362 () Bool)

(declare-fun res!2203464 () Bool)

(assert (=> b!5187362 (=> (not res!2203464) (not e!3231411))))

(declare-fun unfocusZipper!457 (List!60445) Regex!14715)

(assert (=> b!5187362 (= res!2203464 (= r!7292 (unfocusZipper!457 zl!343)))))

(declare-fun b!5187363 () Bool)

(declare-fun res!2203456 () Bool)

(assert (=> b!5187363 (=> res!2203456 e!3231416)))

(assert (=> b!5187363 (= res!2203456 (or ((_ is EmptyExpr!14715) r!7292) ((_ is EmptyLang!14715) r!7292) ((_ is ElementMatch!14715) r!7292) (not ((_ is Union!14715) r!7292))))))

(declare-fun res!2203460 () Bool)

(assert (=> start!549214 (=> (not res!2203460) (not e!3231411))))

(assert (=> start!549214 (= res!2203460 (validRegex!6451 r!7292))))

(assert (=> start!549214 e!3231411))

(assert (=> start!549214 e!3231415))

(declare-fun condSetEmpty!32710 () Bool)

(assert (=> start!549214 (= condSetEmpty!32710 (= z!1189 ((as const (Array Context!8198 Bool)) false)))))

(assert (=> start!549214 setRes!32710))

(assert (=> start!549214 e!3231410))

(assert (=> start!549214 e!3231412))

(declare-fun b!5187351 () Bool)

(declare-fun res!2203458 () Bool)

(assert (=> b!5187351 (=> res!2203458 e!3231416)))

(declare-fun generalisedConcat!384 (List!60444) Regex!14715)

(assert (=> b!5187351 (= res!2203458 (not (= r!7292 (generalisedConcat!384 (exprs!4599 (h!66769 zl!343))))))))

(assert (= (and start!549214 res!2203460) b!5187347))

(assert (= (and b!5187347 res!2203459) b!5187362))

(assert (= (and b!5187362 res!2203464) b!5187361))

(assert (= (and b!5187361 (not res!2203454)) b!5187352))

(assert (= (and b!5187352 (not res!2203457)) b!5187351))

(assert (= (and b!5187351 (not res!2203458)) b!5187346))

(assert (= (and b!5187346 (not res!2203462)) b!5187357))

(assert (= (and b!5187357 (not res!2203463)) b!5187363))

(assert (= (and b!5187363 (not res!2203456)) b!5187354))

(assert (= (and b!5187354 (not res!2203461)) b!5187355))

(assert (= (and b!5187355 (not res!2203455)) b!5187348))

(assert (= (and start!549214 ((_ is ElementMatch!14715) r!7292)) b!5187353))

(assert (= (and start!549214 ((_ is Concat!23560) r!7292)) b!5187356))

(assert (= (and start!549214 ((_ is Star!14715) r!7292)) b!5187349))

(assert (= (and start!549214 ((_ is Union!14715) r!7292)) b!5187345))

(assert (= (and start!549214 condSetEmpty!32710) setIsEmpty!32710))

(assert (= (and start!549214 (not condSetEmpty!32710)) setNonEmpty!32710))

(assert (= setNonEmpty!32710 b!5187350))

(assert (= b!5187360 b!5187359))

(assert (= (and start!549214 ((_ is Cons!60321) zl!343)) b!5187360))

(assert (= (and start!549214 ((_ is Cons!60322) s!2326)) b!5187358))

(declare-fun m!6245120 () Bool)

(assert (=> b!5187352 m!6245120))

(declare-fun m!6245122 () Bool)

(assert (=> b!5187362 m!6245122))

(declare-fun m!6245124 () Bool)

(assert (=> b!5187351 m!6245124))

(declare-fun m!6245126 () Bool)

(assert (=> setNonEmpty!32710 m!6245126))

(declare-fun m!6245128 () Bool)

(assert (=> b!5187348 m!6245128))

(declare-fun m!6245130 () Bool)

(assert (=> b!5187354 m!6245130))

(declare-fun m!6245132 () Bool)

(assert (=> b!5187354 m!6245132))

(declare-fun m!6245134 () Bool)

(assert (=> b!5187354 m!6245134))

(declare-fun m!6245136 () Bool)

(assert (=> b!5187354 m!6245136))

(declare-fun m!6245138 () Bool)

(assert (=> b!5187354 m!6245138))

(declare-fun m!6245140 () Bool)

(assert (=> b!5187354 m!6245140))

(declare-fun m!6245142 () Bool)

(assert (=> b!5187357 m!6245142))

(assert (=> b!5187357 m!6245142))

(declare-fun m!6245144 () Bool)

(assert (=> b!5187357 m!6245144))

(declare-fun m!6245146 () Bool)

(assert (=> b!5187355 m!6245146))

(declare-fun m!6245148 () Bool)

(assert (=> b!5187355 m!6245148))

(declare-fun m!6245150 () Bool)

(assert (=> b!5187347 m!6245150))

(declare-fun m!6245152 () Bool)

(assert (=> start!549214 m!6245152))

(declare-fun m!6245154 () Bool)

(assert (=> b!5187360 m!6245154))

(declare-fun m!6245156 () Bool)

(assert (=> b!5187361 m!6245156))

(declare-fun m!6245158 () Bool)

(assert (=> b!5187361 m!6245158))

(declare-fun m!6245160 () Bool)

(assert (=> b!5187361 m!6245160))

(check-sat (not b!5187359) (not setNonEmpty!32710) (not b!5187350) (not b!5187347) (not b!5187362) (not b!5187351) (not b!5187348) (not b!5187345) (not b!5187360) (not start!549214) (not b!5187355) (not b!5187356) (not b!5187349) (not b!5187352) (not b!5187358) (not b!5187354) (not b!5187357) (not b!5187361) tp_is_empty!38683)
(check-sat)
(get-model)

(declare-fun d!1676317 () Bool)

(declare-fun lambda!259354 () Int)

(declare-fun forall!14202 (List!60444 Int) Bool)

(assert (=> d!1676317 (= (inv!80034 (h!66769 zl!343)) (forall!14202 (exprs!4599 (h!66769 zl!343)) lambda!259354))))

(declare-fun bs!1208361 () Bool)

(assert (= bs!1208361 d!1676317))

(declare-fun m!6245224 () Bool)

(assert (=> bs!1208361 m!6245224))

(assert (=> b!5187360 d!1676317))

(declare-fun b!5187596 () Bool)

(assert (=> b!5187596 true))

(assert (=> b!5187596 true))

(declare-fun bs!1208365 () Bool)

(declare-fun b!5187590 () Bool)

(assert (= bs!1208365 (and b!5187590 b!5187596)))

(declare-fun lambda!259362 () Int)

(declare-fun lambda!259360 () Int)

(assert (=> bs!1208365 (not (= lambda!259362 lambda!259360))))

(assert (=> b!5187590 true))

(assert (=> b!5187590 true))

(declare-fun b!5187587 () Bool)

(declare-fun e!3231554 () Bool)

(assert (=> b!5187587 (= e!3231554 (= s!2326 (Cons!60322 (c!893962 r!7292) Nil!60322)))))

(declare-fun b!5187588 () Bool)

(declare-fun c!894027 () Bool)

(assert (=> b!5187588 (= c!894027 ((_ is Union!14715) r!7292))))

(declare-fun e!3231551 () Bool)

(assert (=> b!5187588 (= e!3231554 e!3231551)))

(declare-fun b!5187589 () Bool)

(declare-fun e!3231552 () Bool)

(declare-fun call!364538 () Bool)

(assert (=> b!5187589 (= e!3231552 call!364538)))

(declare-fun c!894030 () Bool)

(declare-fun bm!364532 () Bool)

(declare-fun call!364537 () Bool)

(declare-fun Exists!1909 (Int) Bool)

(assert (=> bm!364532 (= call!364537 (Exists!1909 (ite c!894030 lambda!259360 lambda!259362)))))

(declare-fun e!3231549 () Bool)

(assert (=> b!5187590 (= e!3231549 call!364537)))

(declare-fun b!5187591 () Bool)

(declare-fun c!894029 () Bool)

(assert (=> b!5187591 (= c!894029 ((_ is ElementMatch!14715) r!7292))))

(declare-fun e!3231555 () Bool)

(assert (=> b!5187591 (= e!3231555 e!3231554)))

(declare-fun b!5187592 () Bool)

(declare-fun e!3231550 () Bool)

(assert (=> b!5187592 (= e!3231551 e!3231550)))

(declare-fun res!2203556 () Bool)

(assert (=> b!5187592 (= res!2203556 (matchRSpec!1818 (regOne!29943 r!7292) s!2326))))

(assert (=> b!5187592 (=> res!2203556 e!3231550)))

(declare-fun d!1676339 () Bool)

(declare-fun c!894028 () Bool)

(assert (=> d!1676339 (= c!894028 ((_ is EmptyExpr!14715) r!7292))))

(assert (=> d!1676339 (= (matchRSpec!1818 r!7292 s!2326) e!3231552)))

(declare-fun b!5187593 () Bool)

(assert (=> b!5187593 (= e!3231551 e!3231549)))

(assert (=> b!5187593 (= c!894030 ((_ is Star!14715) r!7292))))

(declare-fun b!5187594 () Bool)

(declare-fun res!2203558 () Bool)

(declare-fun e!3231553 () Bool)

(assert (=> b!5187594 (=> res!2203558 e!3231553)))

(assert (=> b!5187594 (= res!2203558 call!364538)))

(assert (=> b!5187594 (= e!3231549 e!3231553)))

(declare-fun bm!364533 () Bool)

(declare-fun isEmpty!32287 (List!60446) Bool)

(assert (=> bm!364533 (= call!364538 (isEmpty!32287 s!2326))))

(declare-fun b!5187595 () Bool)

(assert (=> b!5187595 (= e!3231550 (matchRSpec!1818 (regTwo!29943 r!7292) s!2326))))

(assert (=> b!5187596 (= e!3231553 call!364537)))

(declare-fun b!5187597 () Bool)

(assert (=> b!5187597 (= e!3231552 e!3231555)))

(declare-fun res!2203557 () Bool)

(assert (=> b!5187597 (= res!2203557 (not ((_ is EmptyLang!14715) r!7292)))))

(assert (=> b!5187597 (=> (not res!2203557) (not e!3231555))))

(assert (= (and d!1676339 c!894028) b!5187589))

(assert (= (and d!1676339 (not c!894028)) b!5187597))

(assert (= (and b!5187597 res!2203557) b!5187591))

(assert (= (and b!5187591 c!894029) b!5187587))

(assert (= (and b!5187591 (not c!894029)) b!5187588))

(assert (= (and b!5187588 c!894027) b!5187592))

(assert (= (and b!5187588 (not c!894027)) b!5187593))

(assert (= (and b!5187592 (not res!2203556)) b!5187595))

(assert (= (and b!5187593 c!894030) b!5187594))

(assert (= (and b!5187593 (not c!894030)) b!5187590))

(assert (= (and b!5187594 (not res!2203558)) b!5187596))

(assert (= (or b!5187596 b!5187590) bm!364532))

(assert (= (or b!5187589 b!5187594) bm!364533))

(declare-fun m!6245244 () Bool)

(assert (=> bm!364532 m!6245244))

(assert (=> b!5187592 m!6245136))

(declare-fun m!6245246 () Bool)

(assert (=> bm!364533 m!6245246))

(assert (=> b!5187595 m!6245130))

(assert (=> b!5187361 d!1676339))

(declare-fun b!5187685 () Bool)

(declare-fun e!3231604 () Bool)

(declare-fun nullable!4914 (Regex!14715) Bool)

(assert (=> b!5187685 (= e!3231604 (nullable!4914 r!7292))))

(declare-fun b!5187686 () Bool)

(declare-fun e!3231601 () Bool)

(declare-fun lt!2136797 () Bool)

(declare-fun call!364547 () Bool)

(assert (=> b!5187686 (= e!3231601 (= lt!2136797 call!364547))))

(declare-fun b!5187687 () Bool)

(declare-fun e!3231603 () Bool)

(declare-fun e!3231606 () Bool)

(assert (=> b!5187687 (= e!3231603 e!3231606)))

(declare-fun res!2203606 () Bool)

(assert (=> b!5187687 (=> res!2203606 e!3231606)))

(assert (=> b!5187687 (= res!2203606 call!364547)))

(declare-fun b!5187688 () Bool)

(declare-fun res!2203601 () Bool)

(assert (=> b!5187688 (=> res!2203601 e!3231606)))

(declare-fun tail!10204 (List!60446) List!60446)

(assert (=> b!5187688 (= res!2203601 (not (isEmpty!32287 (tail!10204 s!2326))))))

(declare-fun b!5187689 () Bool)

(declare-fun res!2203605 () Bool)

(declare-fun e!3231605 () Bool)

(assert (=> b!5187689 (=> (not res!2203605) (not e!3231605))))

(assert (=> b!5187689 (= res!2203605 (not call!364547))))

(declare-fun b!5187690 () Bool)

(declare-fun e!3231607 () Bool)

(assert (=> b!5187690 (= e!3231601 e!3231607)))

(declare-fun c!894053 () Bool)

(assert (=> b!5187690 (= c!894053 ((_ is EmptyLang!14715) r!7292))))

(declare-fun b!5187691 () Bool)

(assert (=> b!5187691 (= e!3231607 (not lt!2136797))))

(declare-fun d!1676347 () Bool)

(assert (=> d!1676347 e!3231601))

(declare-fun c!894051 () Bool)

(assert (=> d!1676347 (= c!894051 ((_ is EmptyExpr!14715) r!7292))))

(assert (=> d!1676347 (= lt!2136797 e!3231604)))

(declare-fun c!894052 () Bool)

(assert (=> d!1676347 (= c!894052 (isEmpty!32287 s!2326))))

(assert (=> d!1676347 (validRegex!6451 r!7292)))

(assert (=> d!1676347 (= (matchR!6900 r!7292 s!2326) lt!2136797)))

(declare-fun b!5187693 () Bool)

(declare-fun head!11107 (List!60446) C!29700)

(assert (=> b!5187693 (= e!3231606 (not (= (head!11107 s!2326) (c!893962 r!7292))))))

(declare-fun b!5187694 () Bool)

(declare-fun res!2203602 () Bool)

(assert (=> b!5187694 (=> (not res!2203602) (not e!3231605))))

(assert (=> b!5187694 (= res!2203602 (isEmpty!32287 (tail!10204 s!2326)))))

(declare-fun bm!364542 () Bool)

(assert (=> bm!364542 (= call!364547 (isEmpty!32287 s!2326))))

(declare-fun b!5187696 () Bool)

(assert (=> b!5187696 (= e!3231605 (= (head!11107 s!2326) (c!893962 r!7292)))))

(declare-fun b!5187697 () Bool)

(declare-fun res!2203600 () Bool)

(declare-fun e!3231602 () Bool)

(assert (=> b!5187697 (=> res!2203600 e!3231602)))

(assert (=> b!5187697 (= res!2203600 e!3231605)))

(declare-fun res!2203607 () Bool)

(assert (=> b!5187697 (=> (not res!2203607) (not e!3231605))))

(assert (=> b!5187697 (= res!2203607 lt!2136797)))

(declare-fun b!5187698 () Bool)

(assert (=> b!5187698 (= e!3231602 e!3231603)))

(declare-fun res!2203603 () Bool)

(assert (=> b!5187698 (=> (not res!2203603) (not e!3231603))))

(assert (=> b!5187698 (= res!2203603 (not lt!2136797))))

(declare-fun b!5187699 () Bool)

(declare-fun derivativeStep!4016 (Regex!14715 C!29700) Regex!14715)

(assert (=> b!5187699 (= e!3231604 (matchR!6900 (derivativeStep!4016 r!7292 (head!11107 s!2326)) (tail!10204 s!2326)))))

(declare-fun b!5187700 () Bool)

(declare-fun res!2203604 () Bool)

(assert (=> b!5187700 (=> res!2203604 e!3231602)))

(assert (=> b!5187700 (= res!2203604 (not ((_ is ElementMatch!14715) r!7292)))))

(assert (=> b!5187700 (= e!3231607 e!3231602)))

(assert (= (and d!1676347 c!894052) b!5187685))

(assert (= (and d!1676347 (not c!894052)) b!5187699))

(assert (= (and d!1676347 c!894051) b!5187686))

(assert (= (and d!1676347 (not c!894051)) b!5187690))

(assert (= (and b!5187690 c!894053) b!5187691))

(assert (= (and b!5187690 (not c!894053)) b!5187700))

(assert (= (and b!5187700 (not res!2203604)) b!5187697))

(assert (= (and b!5187697 res!2203607) b!5187689))

(assert (= (and b!5187689 res!2203605) b!5187694))

(assert (= (and b!5187694 res!2203602) b!5187696))

(assert (= (and b!5187697 (not res!2203600)) b!5187698))

(assert (= (and b!5187698 res!2203603) b!5187687))

(assert (= (and b!5187687 (not res!2203606)) b!5187688))

(assert (= (and b!5187688 (not res!2203601)) b!5187693))

(assert (= (or b!5187686 b!5187687 b!5187689) bm!364542))

(declare-fun m!6245284 () Bool)

(assert (=> b!5187688 m!6245284))

(assert (=> b!5187688 m!6245284))

(declare-fun m!6245286 () Bool)

(assert (=> b!5187688 m!6245286))

(declare-fun m!6245288 () Bool)

(assert (=> b!5187693 m!6245288))

(assert (=> bm!364542 m!6245246))

(assert (=> b!5187694 m!6245284))

(assert (=> b!5187694 m!6245284))

(assert (=> b!5187694 m!6245286))

(assert (=> d!1676347 m!6245246))

(assert (=> d!1676347 m!6245152))

(assert (=> b!5187696 m!6245288))

(declare-fun m!6245290 () Bool)

(assert (=> b!5187685 m!6245290))

(assert (=> b!5187699 m!6245288))

(assert (=> b!5187699 m!6245288))

(declare-fun m!6245292 () Bool)

(assert (=> b!5187699 m!6245292))

(assert (=> b!5187699 m!6245284))

(assert (=> b!5187699 m!6245292))

(assert (=> b!5187699 m!6245284))

(declare-fun m!6245294 () Bool)

(assert (=> b!5187699 m!6245294))

(assert (=> b!5187361 d!1676347))

(declare-fun d!1676363 () Bool)

(assert (=> d!1676363 (= (matchR!6900 r!7292 s!2326) (matchRSpec!1818 r!7292 s!2326))))

(declare-fun lt!2136800 () Unit!152264)

(declare-fun choose!38541 (Regex!14715 List!60446) Unit!152264)

(assert (=> d!1676363 (= lt!2136800 (choose!38541 r!7292 s!2326))))

(assert (=> d!1676363 (validRegex!6451 r!7292)))

(assert (=> d!1676363 (= (mainMatchTheorem!1818 r!7292 s!2326) lt!2136800)))

(declare-fun bs!1208381 () Bool)

(assert (= bs!1208381 d!1676363))

(assert (=> bs!1208381 m!6245158))

(assert (=> bs!1208381 m!6245156))

(declare-fun m!6245302 () Bool)

(assert (=> bs!1208381 m!6245302))

(assert (=> bs!1208381 m!6245152))

(assert (=> b!5187361 d!1676363))

(declare-fun bs!1208382 () Bool)

(declare-fun d!1676367 () Bool)

(assert (= bs!1208382 (and d!1676367 d!1676317)))

(declare-fun lambda!259368 () Int)

(assert (=> bs!1208382 (= lambda!259368 lambda!259354)))

(declare-fun b!5187754 () Bool)

(declare-fun e!3231645 () Regex!14715)

(assert (=> b!5187754 (= e!3231645 (h!66768 (exprs!4599 (h!66769 zl!343))))))

(declare-fun b!5187755 () Bool)

(declare-fun e!3231644 () Bool)

(declare-fun lt!2136803 () Regex!14715)

(declare-fun head!11108 (List!60444) Regex!14715)

(assert (=> b!5187755 (= e!3231644 (= lt!2136803 (head!11108 (exprs!4599 (h!66769 zl!343)))))))

(declare-fun b!5187756 () Bool)

(declare-fun e!3231646 () Regex!14715)

(assert (=> b!5187756 (= e!3231645 e!3231646)))

(declare-fun c!894078 () Bool)

(assert (=> b!5187756 (= c!894078 ((_ is Cons!60320) (exprs!4599 (h!66769 zl!343))))))

(declare-fun b!5187757 () Bool)

(declare-fun e!3231642 () Bool)

(declare-fun e!3231641 () Bool)

(assert (=> b!5187757 (= e!3231642 e!3231641)))

(declare-fun c!894079 () Bool)

(declare-fun isEmpty!32288 (List!60444) Bool)

(assert (=> b!5187757 (= c!894079 (isEmpty!32288 (exprs!4599 (h!66769 zl!343))))))

(declare-fun b!5187758 () Bool)

(declare-fun isConcat!253 (Regex!14715) Bool)

(assert (=> b!5187758 (= e!3231644 (isConcat!253 lt!2136803))))

(declare-fun b!5187759 () Bool)

(declare-fun e!3231643 () Bool)

(assert (=> b!5187759 (= e!3231643 (isEmpty!32288 (t!373597 (exprs!4599 (h!66769 zl!343)))))))

(declare-fun b!5187760 () Bool)

(declare-fun isEmptyExpr!730 (Regex!14715) Bool)

(assert (=> b!5187760 (= e!3231641 (isEmptyExpr!730 lt!2136803))))

(assert (=> d!1676367 e!3231642))

(declare-fun res!2203618 () Bool)

(assert (=> d!1676367 (=> (not res!2203618) (not e!3231642))))

(assert (=> d!1676367 (= res!2203618 (validRegex!6451 lt!2136803))))

(assert (=> d!1676367 (= lt!2136803 e!3231645)))

(declare-fun c!894080 () Bool)

(assert (=> d!1676367 (= c!894080 e!3231643)))

(declare-fun res!2203617 () Bool)

(assert (=> d!1676367 (=> (not res!2203617) (not e!3231643))))

(assert (=> d!1676367 (= res!2203617 ((_ is Cons!60320) (exprs!4599 (h!66769 zl!343))))))

(assert (=> d!1676367 (forall!14202 (exprs!4599 (h!66769 zl!343)) lambda!259368)))

(assert (=> d!1676367 (= (generalisedConcat!384 (exprs!4599 (h!66769 zl!343))) lt!2136803)))

(declare-fun b!5187761 () Bool)

(assert (=> b!5187761 (= e!3231641 e!3231644)))

(declare-fun c!894081 () Bool)

(declare-fun tail!10205 (List!60444) List!60444)

(assert (=> b!5187761 (= c!894081 (isEmpty!32288 (tail!10205 (exprs!4599 (h!66769 zl!343)))))))

(declare-fun b!5187762 () Bool)

(assert (=> b!5187762 (= e!3231646 EmptyExpr!14715)))

(declare-fun b!5187763 () Bool)

(assert (=> b!5187763 (= e!3231646 (Concat!23560 (h!66768 (exprs!4599 (h!66769 zl!343))) (generalisedConcat!384 (t!373597 (exprs!4599 (h!66769 zl!343))))))))

(assert (= (and d!1676367 res!2203617) b!5187759))

(assert (= (and d!1676367 c!894080) b!5187754))

(assert (= (and d!1676367 (not c!894080)) b!5187756))

(assert (= (and b!5187756 c!894078) b!5187763))

(assert (= (and b!5187756 (not c!894078)) b!5187762))

(assert (= (and d!1676367 res!2203618) b!5187757))

(assert (= (and b!5187757 c!894079) b!5187760))

(assert (= (and b!5187757 (not c!894079)) b!5187761))

(assert (= (and b!5187761 c!894081) b!5187755))

(assert (= (and b!5187761 (not c!894081)) b!5187758))

(declare-fun m!6245304 () Bool)

(assert (=> b!5187760 m!6245304))

(declare-fun m!6245306 () Bool)

(assert (=> b!5187761 m!6245306))

(assert (=> b!5187761 m!6245306))

(declare-fun m!6245308 () Bool)

(assert (=> b!5187761 m!6245308))

(declare-fun m!6245310 () Bool)

(assert (=> b!5187755 m!6245310))

(declare-fun m!6245312 () Bool)

(assert (=> d!1676367 m!6245312))

(declare-fun m!6245314 () Bool)

(assert (=> d!1676367 m!6245314))

(declare-fun m!6245316 () Bool)

(assert (=> b!5187757 m!6245316))

(declare-fun m!6245318 () Bool)

(assert (=> b!5187763 m!6245318))

(declare-fun m!6245320 () Bool)

(assert (=> b!5187759 m!6245320))

(declare-fun m!6245322 () Bool)

(assert (=> b!5187758 m!6245322))

(assert (=> b!5187351 d!1676367))

(declare-fun bs!1208383 () Bool)

(declare-fun d!1676369 () Bool)

(assert (= bs!1208383 (and d!1676369 d!1676317)))

(declare-fun lambda!259369 () Int)

(assert (=> bs!1208383 (= lambda!259369 lambda!259354)))

(declare-fun bs!1208384 () Bool)

(assert (= bs!1208384 (and d!1676369 d!1676367)))

(assert (=> bs!1208384 (= lambda!259369 lambda!259368)))

(assert (=> d!1676369 (= (inv!80034 setElem!32710) (forall!14202 (exprs!4599 setElem!32710) lambda!259369))))

(declare-fun bs!1208385 () Bool)

(assert (= bs!1208385 d!1676369))

(declare-fun m!6245324 () Bool)

(assert (=> bs!1208385 m!6245324))

(assert (=> setNonEmpty!32710 d!1676369))

(declare-fun d!1676371 () Bool)

(declare-fun e!3231657 () Bool)

(assert (=> d!1676371 e!3231657))

(declare-fun res!2203622 () Bool)

(assert (=> d!1676371 (=> (not res!2203622) (not e!3231657))))

(declare-fun lt!2136806 () List!60445)

(declare-fun noDuplicate!1150 (List!60445) Bool)

(assert (=> d!1676371 (= res!2203622 (noDuplicate!1150 lt!2136806))))

(declare-fun choose!38542 ((InoxSet Context!8198)) List!60445)

(assert (=> d!1676371 (= lt!2136806 (choose!38542 z!1189))))

(assert (=> d!1676371 (= (toList!8499 z!1189) lt!2136806)))

(declare-fun b!5187781 () Bool)

(declare-fun content!10686 (List!60445) (InoxSet Context!8198))

(assert (=> b!5187781 (= e!3231657 (= (content!10686 lt!2136806) z!1189))))

(assert (= (and d!1676371 res!2203622) b!5187781))

(declare-fun m!6245336 () Bool)

(assert (=> d!1676371 m!6245336))

(declare-fun m!6245338 () Bool)

(assert (=> d!1676371 m!6245338))

(declare-fun m!6245340 () Bool)

(assert (=> b!5187781 m!6245340))

(assert (=> b!5187347 d!1676371))

(declare-fun bs!1208386 () Bool)

(declare-fun d!1676373 () Bool)

(assert (= bs!1208386 (and d!1676373 d!1676317)))

(declare-fun lambda!259372 () Int)

(assert (=> bs!1208386 (= lambda!259372 lambda!259354)))

(declare-fun bs!1208387 () Bool)

(assert (= bs!1208387 (and d!1676373 d!1676367)))

(assert (=> bs!1208387 (= lambda!259372 lambda!259368)))

(declare-fun bs!1208388 () Bool)

(assert (= bs!1208388 (and d!1676373 d!1676369)))

(assert (=> bs!1208388 (= lambda!259372 lambda!259369)))

(declare-fun b!5187852 () Bool)

(declare-fun e!3231693 () Regex!14715)

(assert (=> b!5187852 (= e!3231693 (Union!14715 (h!66768 (unfocusZipperList!157 zl!343)) (generalisedUnion!644 (t!373597 (unfocusZipperList!157 zl!343)))))))

(declare-fun e!3231695 () Bool)

(assert (=> d!1676373 e!3231695))

(declare-fun res!2203627 () Bool)

(assert (=> d!1676373 (=> (not res!2203627) (not e!3231695))))

(declare-fun lt!2136809 () Regex!14715)

(assert (=> d!1676373 (= res!2203627 (validRegex!6451 lt!2136809))))

(declare-fun e!3231696 () Regex!14715)

(assert (=> d!1676373 (= lt!2136809 e!3231696)))

(declare-fun c!894097 () Bool)

(declare-fun e!3231694 () Bool)

(assert (=> d!1676373 (= c!894097 e!3231694)))

(declare-fun res!2203628 () Bool)

(assert (=> d!1676373 (=> (not res!2203628) (not e!3231694))))

(assert (=> d!1676373 (= res!2203628 ((_ is Cons!60320) (unfocusZipperList!157 zl!343)))))

(assert (=> d!1676373 (forall!14202 (unfocusZipperList!157 zl!343) lambda!259372)))

(assert (=> d!1676373 (= (generalisedUnion!644 (unfocusZipperList!157 zl!343)) lt!2136809)))

(declare-fun b!5187853 () Bool)

(assert (=> b!5187853 (= e!3231696 (h!66768 (unfocusZipperList!157 zl!343)))))

(declare-fun b!5187854 () Bool)

(declare-fun e!3231692 () Bool)

(assert (=> b!5187854 (= e!3231692 (= lt!2136809 (head!11108 (unfocusZipperList!157 zl!343))))))

(declare-fun b!5187855 () Bool)

(assert (=> b!5187855 (= e!3231693 EmptyLang!14715)))

(declare-fun b!5187856 () Bool)

(declare-fun isUnion!172 (Regex!14715) Bool)

(assert (=> b!5187856 (= e!3231692 (isUnion!172 lt!2136809))))

(declare-fun b!5187857 () Bool)

(assert (=> b!5187857 (= e!3231696 e!3231693)))

(declare-fun c!894098 () Bool)

(assert (=> b!5187857 (= c!894098 ((_ is Cons!60320) (unfocusZipperList!157 zl!343)))))

(declare-fun b!5187858 () Bool)

(declare-fun e!3231691 () Bool)

(assert (=> b!5187858 (= e!3231691 e!3231692)))

(declare-fun c!894096 () Bool)

(assert (=> b!5187858 (= c!894096 (isEmpty!32288 (tail!10205 (unfocusZipperList!157 zl!343))))))

(declare-fun b!5187859 () Bool)

(declare-fun isEmptyLang!740 (Regex!14715) Bool)

(assert (=> b!5187859 (= e!3231691 (isEmptyLang!740 lt!2136809))))

(declare-fun b!5187860 () Bool)

(assert (=> b!5187860 (= e!3231695 e!3231691)))

(declare-fun c!894095 () Bool)

(assert (=> b!5187860 (= c!894095 (isEmpty!32288 (unfocusZipperList!157 zl!343)))))

(declare-fun b!5187861 () Bool)

(assert (=> b!5187861 (= e!3231694 (isEmpty!32288 (t!373597 (unfocusZipperList!157 zl!343))))))

(assert (= (and d!1676373 res!2203628) b!5187861))

(assert (= (and d!1676373 c!894097) b!5187853))

(assert (= (and d!1676373 (not c!894097)) b!5187857))

(assert (= (and b!5187857 c!894098) b!5187852))

(assert (= (and b!5187857 (not c!894098)) b!5187855))

(assert (= (and d!1676373 res!2203627) b!5187860))

(assert (= (and b!5187860 c!894095) b!5187859))

(assert (= (and b!5187860 (not c!894095)) b!5187858))

(assert (= (and b!5187858 c!894096) b!5187854))

(assert (= (and b!5187858 (not c!894096)) b!5187856))

(declare-fun m!6245346 () Bool)

(assert (=> b!5187856 m!6245346))

(assert (=> b!5187858 m!6245142))

(declare-fun m!6245348 () Bool)

(assert (=> b!5187858 m!6245348))

(assert (=> b!5187858 m!6245348))

(declare-fun m!6245350 () Bool)

(assert (=> b!5187858 m!6245350))

(declare-fun m!6245352 () Bool)

(assert (=> b!5187861 m!6245352))

(declare-fun m!6245354 () Bool)

(assert (=> b!5187859 m!6245354))

(assert (=> b!5187854 m!6245142))

(declare-fun m!6245356 () Bool)

(assert (=> b!5187854 m!6245356))

(assert (=> b!5187860 m!6245142))

(declare-fun m!6245358 () Bool)

(assert (=> b!5187860 m!6245358))

(declare-fun m!6245360 () Bool)

(assert (=> d!1676373 m!6245360))

(assert (=> d!1676373 m!6245142))

(declare-fun m!6245362 () Bool)

(assert (=> d!1676373 m!6245362))

(declare-fun m!6245364 () Bool)

(assert (=> b!5187852 m!6245364))

(assert (=> b!5187357 d!1676373))

(declare-fun bs!1208389 () Bool)

(declare-fun d!1676375 () Bool)

(assert (= bs!1208389 (and d!1676375 d!1676317)))

(declare-fun lambda!259375 () Int)

(assert (=> bs!1208389 (= lambda!259375 lambda!259354)))

(declare-fun bs!1208390 () Bool)

(assert (= bs!1208390 (and d!1676375 d!1676367)))

(assert (=> bs!1208390 (= lambda!259375 lambda!259368)))

(declare-fun bs!1208391 () Bool)

(assert (= bs!1208391 (and d!1676375 d!1676369)))

(assert (=> bs!1208391 (= lambda!259375 lambda!259369)))

(declare-fun bs!1208392 () Bool)

(assert (= bs!1208392 (and d!1676375 d!1676373)))

(assert (=> bs!1208392 (= lambda!259375 lambda!259372)))

(declare-fun lt!2136812 () List!60444)

(assert (=> d!1676375 (forall!14202 lt!2136812 lambda!259375)))

(declare-fun e!3231699 () List!60444)

(assert (=> d!1676375 (= lt!2136812 e!3231699)))

(declare-fun c!894101 () Bool)

(assert (=> d!1676375 (= c!894101 ((_ is Cons!60321) zl!343))))

(assert (=> d!1676375 (= (unfocusZipperList!157 zl!343) lt!2136812)))

(declare-fun b!5187866 () Bool)

(assert (=> b!5187866 (= e!3231699 (Cons!60320 (generalisedConcat!384 (exprs!4599 (h!66769 zl!343))) (unfocusZipperList!157 (t!373598 zl!343))))))

(declare-fun b!5187867 () Bool)

(assert (=> b!5187867 (= e!3231699 Nil!60320)))

(assert (= (and d!1676375 c!894101) b!5187866))

(assert (= (and d!1676375 (not c!894101)) b!5187867))

(declare-fun m!6245366 () Bool)

(assert (=> d!1676375 m!6245366))

(assert (=> b!5187866 m!6245124))

(declare-fun m!6245368 () Bool)

(assert (=> b!5187866 m!6245368))

(assert (=> b!5187357 d!1676375))

(declare-fun b!5187886 () Bool)

(declare-fun e!3231716 () Bool)

(declare-fun e!3231717 () Bool)

(assert (=> b!5187886 (= e!3231716 e!3231717)))

(declare-fun res!2203642 () Bool)

(assert (=> b!5187886 (= res!2203642 (not (nullable!4914 (reg!15044 (regTwo!29943 r!7292)))))))

(assert (=> b!5187886 (=> (not res!2203642) (not e!3231717))))

(declare-fun b!5187887 () Bool)

(declare-fun e!3231719 () Bool)

(assert (=> b!5187887 (= e!3231719 e!3231716)))

(declare-fun c!894107 () Bool)

(assert (=> b!5187887 (= c!894107 ((_ is Star!14715) (regTwo!29943 r!7292)))))

(declare-fun d!1676377 () Bool)

(declare-fun res!2203640 () Bool)

(assert (=> d!1676377 (=> res!2203640 e!3231719)))

(assert (=> d!1676377 (= res!2203640 ((_ is ElementMatch!14715) (regTwo!29943 r!7292)))))

(assert (=> d!1676377 (= (validRegex!6451 (regTwo!29943 r!7292)) e!3231719)))

(declare-fun bm!364570 () Bool)

(declare-fun call!364575 () Bool)

(declare-fun c!894106 () Bool)

(assert (=> bm!364570 (= call!364575 (validRegex!6451 (ite c!894106 (regTwo!29943 (regTwo!29943 r!7292)) (regTwo!29942 (regTwo!29943 r!7292)))))))

(declare-fun call!364576 () Bool)

(declare-fun bm!364571 () Bool)

(assert (=> bm!364571 (= call!364576 (validRegex!6451 (ite c!894107 (reg!15044 (regTwo!29943 r!7292)) (ite c!894106 (regOne!29943 (regTwo!29943 r!7292)) (regOne!29942 (regTwo!29943 r!7292))))))))

(declare-fun b!5187888 () Bool)

(declare-fun res!2203639 () Bool)

(declare-fun e!3231718 () Bool)

(assert (=> b!5187888 (=> res!2203639 e!3231718)))

(assert (=> b!5187888 (= res!2203639 (not ((_ is Concat!23560) (regTwo!29943 r!7292))))))

(declare-fun e!3231714 () Bool)

(assert (=> b!5187888 (= e!3231714 e!3231718)))

(declare-fun b!5187889 () Bool)

(declare-fun res!2203643 () Bool)

(declare-fun e!3231720 () Bool)

(assert (=> b!5187889 (=> (not res!2203643) (not e!3231720))))

(declare-fun call!364577 () Bool)

(assert (=> b!5187889 (= res!2203643 call!364577)))

(assert (=> b!5187889 (= e!3231714 e!3231720)))

(declare-fun b!5187890 () Bool)

(assert (=> b!5187890 (= e!3231720 call!364575)))

(declare-fun bm!364572 () Bool)

(assert (=> bm!364572 (= call!364577 call!364576)))

(declare-fun b!5187891 () Bool)

(declare-fun e!3231715 () Bool)

(assert (=> b!5187891 (= e!3231718 e!3231715)))

(declare-fun res!2203641 () Bool)

(assert (=> b!5187891 (=> (not res!2203641) (not e!3231715))))

(assert (=> b!5187891 (= res!2203641 call!364577)))

(declare-fun b!5187892 () Bool)

(assert (=> b!5187892 (= e!3231716 e!3231714)))

(assert (=> b!5187892 (= c!894106 ((_ is Union!14715) (regTwo!29943 r!7292)))))

(declare-fun b!5187893 () Bool)

(assert (=> b!5187893 (= e!3231717 call!364576)))

(declare-fun b!5187894 () Bool)

(assert (=> b!5187894 (= e!3231715 call!364575)))

(assert (= (and d!1676377 (not res!2203640)) b!5187887))

(assert (= (and b!5187887 c!894107) b!5187886))

(assert (= (and b!5187887 (not c!894107)) b!5187892))

(assert (= (and b!5187886 res!2203642) b!5187893))

(assert (= (and b!5187892 c!894106) b!5187889))

(assert (= (and b!5187892 (not c!894106)) b!5187888))

(assert (= (and b!5187889 res!2203643) b!5187890))

(assert (= (and b!5187888 (not res!2203639)) b!5187891))

(assert (= (and b!5187891 res!2203641) b!5187894))

(assert (= (or b!5187890 b!5187894) bm!364570))

(assert (= (or b!5187889 b!5187891) bm!364572))

(assert (= (or b!5187893 bm!364572) bm!364571))

(declare-fun m!6245370 () Bool)

(assert (=> b!5187886 m!6245370))

(declare-fun m!6245372 () Bool)

(assert (=> bm!364570 m!6245372))

(declare-fun m!6245374 () Bool)

(assert (=> bm!364571 m!6245374))

(assert (=> b!5187348 d!1676377))

(declare-fun b!5187905 () Bool)

(declare-fun e!3231729 () (InoxSet Context!8198))

(assert (=> b!5187905 (= e!3231729 ((as const (Array Context!8198 Bool)) false))))

(declare-fun b!5187906 () Bool)

(declare-fun e!3231728 () (InoxSet Context!8198))

(assert (=> b!5187906 (= e!3231728 e!3231729)))

(declare-fun c!894113 () Bool)

(assert (=> b!5187906 (= c!894113 ((_ is Cons!60320) (exprs!4599 (Context!8199 (Cons!60320 r!7292 Nil!60320)))))))

(declare-fun b!5187907 () Bool)

(declare-fun call!364580 () (InoxSet Context!8198))

(assert (=> b!5187907 (= e!3231728 ((_ map or) call!364580 (derivationStepZipperUp!105 (Context!8199 (t!373597 (exprs!4599 (Context!8199 (Cons!60320 r!7292 Nil!60320))))) (h!66770 s!2326))))))

(declare-fun d!1676379 () Bool)

(declare-fun c!894112 () Bool)

(declare-fun e!3231727 () Bool)

(assert (=> d!1676379 (= c!894112 e!3231727)))

(declare-fun res!2203646 () Bool)

(assert (=> d!1676379 (=> (not res!2203646) (not e!3231727))))

(assert (=> d!1676379 (= res!2203646 ((_ is Cons!60320) (exprs!4599 (Context!8199 (Cons!60320 r!7292 Nil!60320)))))))

(assert (=> d!1676379 (= (derivationStepZipperUp!105 (Context!8199 (Cons!60320 r!7292 Nil!60320)) (h!66770 s!2326)) e!3231728)))

(declare-fun b!5187908 () Bool)

(assert (=> b!5187908 (= e!3231727 (nullable!4914 (h!66768 (exprs!4599 (Context!8199 (Cons!60320 r!7292 Nil!60320))))))))

(declare-fun b!5187909 () Bool)

(assert (=> b!5187909 (= e!3231729 call!364580)))

(declare-fun bm!364575 () Bool)

(assert (=> bm!364575 (= call!364580 (derivationStepZipperDown!184 (h!66768 (exprs!4599 (Context!8199 (Cons!60320 r!7292 Nil!60320)))) (Context!8199 (t!373597 (exprs!4599 (Context!8199 (Cons!60320 r!7292 Nil!60320))))) (h!66770 s!2326)))))

(assert (= (and d!1676379 res!2203646) b!5187908))

(assert (= (and d!1676379 c!894112) b!5187907))

(assert (= (and d!1676379 (not c!894112)) b!5187906))

(assert (= (and b!5187906 c!894113) b!5187909))

(assert (= (and b!5187906 (not c!894113)) b!5187905))

(assert (= (or b!5187907 b!5187909) bm!364575))

(declare-fun m!6245376 () Bool)

(assert (=> b!5187907 m!6245376))

(declare-fun m!6245378 () Bool)

(assert (=> b!5187908 m!6245378))

(declare-fun m!6245380 () Bool)

(assert (=> bm!364575 m!6245380))

(assert (=> b!5187355 d!1676379))

(declare-fun b!5187932 () Bool)

(declare-fun e!3231742 () (InoxSet Context!8198))

(declare-fun e!3231747 () (InoxSet Context!8198))

(assert (=> b!5187932 (= e!3231742 e!3231747)))

(declare-fun c!894124 () Bool)

(assert (=> b!5187932 (= c!894124 ((_ is Concat!23560) r!7292))))

(declare-fun b!5187933 () Bool)

(declare-fun call!364593 () (InoxSet Context!8198))

(assert (=> b!5187933 (= e!3231747 call!364593)))

(declare-fun b!5187934 () Bool)

(declare-fun e!3231745 () (InoxSet Context!8198))

(assert (=> b!5187934 (= e!3231745 (store ((as const (Array Context!8198 Bool)) false) (Context!8199 Nil!60320) true))))

(declare-fun b!5187935 () Bool)

(declare-fun call!364596 () (InoxSet Context!8198))

(declare-fun call!364595 () (InoxSet Context!8198))

(assert (=> b!5187935 (= e!3231742 ((_ map or) call!364596 call!364595))))

(declare-fun bm!364588 () Bool)

(assert (=> bm!364588 (= call!364593 call!364595)))

(declare-fun b!5187936 () Bool)

(declare-fun e!3231744 () (InoxSet Context!8198))

(declare-fun call!364594 () (InoxSet Context!8198))

(assert (=> b!5187936 (= e!3231744 ((_ map or) call!364594 call!364596))))

(declare-fun bm!364589 () Bool)

(declare-fun call!364598 () List!60444)

(declare-fun call!364597 () List!60444)

(assert (=> bm!364589 (= call!364598 call!364597)))

(declare-fun d!1676381 () Bool)

(declare-fun c!894125 () Bool)

(assert (=> d!1676381 (= c!894125 (and ((_ is ElementMatch!14715) r!7292) (= (c!893962 r!7292) (h!66770 s!2326))))))

(assert (=> d!1676381 (= (derivationStepZipperDown!184 r!7292 (Context!8199 Nil!60320) (h!66770 s!2326)) e!3231745)))

(declare-fun bm!364590 () Bool)

(assert (=> bm!364590 (= call!364595 call!364594)))

(declare-fun b!5187937 () Bool)

(declare-fun c!894128 () Bool)

(assert (=> b!5187937 (= c!894128 ((_ is Star!14715) r!7292))))

(declare-fun e!3231746 () (InoxSet Context!8198))

(assert (=> b!5187937 (= e!3231747 e!3231746)))

(declare-fun b!5187938 () Bool)

(assert (=> b!5187938 (= e!3231746 call!364593)))

(declare-fun c!894127 () Bool)

(declare-fun bm!364591 () Bool)

(declare-fun $colon$colon!1250 (List!60444 Regex!14715) List!60444)

(assert (=> bm!364591 (= call!364597 ($colon$colon!1250 (exprs!4599 (Context!8199 Nil!60320)) (ite (or c!894127 c!894124) (regTwo!29942 r!7292) r!7292)))))

(declare-fun b!5187939 () Bool)

(declare-fun e!3231743 () Bool)

(assert (=> b!5187939 (= c!894127 e!3231743)))

(declare-fun res!2203649 () Bool)

(assert (=> b!5187939 (=> (not res!2203649) (not e!3231743))))

(assert (=> b!5187939 (= res!2203649 ((_ is Concat!23560) r!7292))))

(assert (=> b!5187939 (= e!3231744 e!3231742)))

(declare-fun b!5187940 () Bool)

(assert (=> b!5187940 (= e!3231746 ((as const (Array Context!8198 Bool)) false))))

(declare-fun c!894126 () Bool)

(declare-fun bm!364592 () Bool)

(assert (=> bm!364592 (= call!364594 (derivationStepZipperDown!184 (ite c!894126 (regOne!29943 r!7292) (ite c!894127 (regTwo!29942 r!7292) (ite c!894124 (regOne!29942 r!7292) (reg!15044 r!7292)))) (ite (or c!894126 c!894127) (Context!8199 Nil!60320) (Context!8199 call!364598)) (h!66770 s!2326)))))

(declare-fun bm!364593 () Bool)

(assert (=> bm!364593 (= call!364596 (derivationStepZipperDown!184 (ite c!894126 (regTwo!29943 r!7292) (regOne!29942 r!7292)) (ite c!894126 (Context!8199 Nil!60320) (Context!8199 call!364597)) (h!66770 s!2326)))))

(declare-fun b!5187941 () Bool)

(assert (=> b!5187941 (= e!3231745 e!3231744)))

(assert (=> b!5187941 (= c!894126 ((_ is Union!14715) r!7292))))

(declare-fun b!5187942 () Bool)

(assert (=> b!5187942 (= e!3231743 (nullable!4914 (regOne!29942 r!7292)))))

(assert (= (and d!1676381 c!894125) b!5187934))

(assert (= (and d!1676381 (not c!894125)) b!5187941))

(assert (= (and b!5187941 c!894126) b!5187936))

(assert (= (and b!5187941 (not c!894126)) b!5187939))

(assert (= (and b!5187939 res!2203649) b!5187942))

(assert (= (and b!5187939 c!894127) b!5187935))

(assert (= (and b!5187939 (not c!894127)) b!5187932))

(assert (= (and b!5187932 c!894124) b!5187933))

(assert (= (and b!5187932 (not c!894124)) b!5187937))

(assert (= (and b!5187937 c!894128) b!5187938))

(assert (= (and b!5187937 (not c!894128)) b!5187940))

(assert (= (or b!5187933 b!5187938) bm!364589))

(assert (= (or b!5187933 b!5187938) bm!364588))

(assert (= (or b!5187935 bm!364589) bm!364591))

(assert (= (or b!5187935 bm!364588) bm!364590))

(assert (= (or b!5187936 b!5187935) bm!364593))

(assert (= (or b!5187936 bm!364590) bm!364592))

(declare-fun m!6245382 () Bool)

(assert (=> b!5187934 m!6245382))

(declare-fun m!6245384 () Bool)

(assert (=> bm!364592 m!6245384))

(declare-fun m!6245386 () Bool)

(assert (=> bm!364593 m!6245386))

(declare-fun m!6245388 () Bool)

(assert (=> b!5187942 m!6245388))

(declare-fun m!6245390 () Bool)

(assert (=> bm!364591 m!6245390))

(assert (=> b!5187355 d!1676381))

(declare-fun b!5187943 () Bool)

(declare-fun e!3231750 () Bool)

(declare-fun e!3231751 () Bool)

(assert (=> b!5187943 (= e!3231750 e!3231751)))

(declare-fun res!2203653 () Bool)

(assert (=> b!5187943 (= res!2203653 (not (nullable!4914 (reg!15044 r!7292))))))

(assert (=> b!5187943 (=> (not res!2203653) (not e!3231751))))

(declare-fun b!5187944 () Bool)

(declare-fun e!3231753 () Bool)

(assert (=> b!5187944 (= e!3231753 e!3231750)))

(declare-fun c!894130 () Bool)

(assert (=> b!5187944 (= c!894130 ((_ is Star!14715) r!7292))))

(declare-fun d!1676383 () Bool)

(declare-fun res!2203651 () Bool)

(assert (=> d!1676383 (=> res!2203651 e!3231753)))

(assert (=> d!1676383 (= res!2203651 ((_ is ElementMatch!14715) r!7292))))

(assert (=> d!1676383 (= (validRegex!6451 r!7292) e!3231753)))

(declare-fun bm!364594 () Bool)

(declare-fun call!364599 () Bool)

(declare-fun c!894129 () Bool)

(assert (=> bm!364594 (= call!364599 (validRegex!6451 (ite c!894129 (regTwo!29943 r!7292) (regTwo!29942 r!7292))))))

(declare-fun bm!364595 () Bool)

(declare-fun call!364600 () Bool)

(assert (=> bm!364595 (= call!364600 (validRegex!6451 (ite c!894130 (reg!15044 r!7292) (ite c!894129 (regOne!29943 r!7292) (regOne!29942 r!7292)))))))

(declare-fun b!5187945 () Bool)

(declare-fun res!2203650 () Bool)

(declare-fun e!3231752 () Bool)

(assert (=> b!5187945 (=> res!2203650 e!3231752)))

(assert (=> b!5187945 (= res!2203650 (not ((_ is Concat!23560) r!7292)))))

(declare-fun e!3231748 () Bool)

(assert (=> b!5187945 (= e!3231748 e!3231752)))

(declare-fun b!5187946 () Bool)

(declare-fun res!2203654 () Bool)

(declare-fun e!3231754 () Bool)

(assert (=> b!5187946 (=> (not res!2203654) (not e!3231754))))

(declare-fun call!364601 () Bool)

(assert (=> b!5187946 (= res!2203654 call!364601)))

(assert (=> b!5187946 (= e!3231748 e!3231754)))

(declare-fun b!5187947 () Bool)

(assert (=> b!5187947 (= e!3231754 call!364599)))

(declare-fun bm!364596 () Bool)

(assert (=> bm!364596 (= call!364601 call!364600)))

(declare-fun b!5187948 () Bool)

(declare-fun e!3231749 () Bool)

(assert (=> b!5187948 (= e!3231752 e!3231749)))

(declare-fun res!2203652 () Bool)

(assert (=> b!5187948 (=> (not res!2203652) (not e!3231749))))

(assert (=> b!5187948 (= res!2203652 call!364601)))

(declare-fun b!5187949 () Bool)

(assert (=> b!5187949 (= e!3231750 e!3231748)))

(assert (=> b!5187949 (= c!894129 ((_ is Union!14715) r!7292))))

(declare-fun b!5187950 () Bool)

(assert (=> b!5187950 (= e!3231751 call!364600)))

(declare-fun b!5187951 () Bool)

(assert (=> b!5187951 (= e!3231749 call!364599)))

(assert (= (and d!1676383 (not res!2203651)) b!5187944))

(assert (= (and b!5187944 c!894130) b!5187943))

(assert (= (and b!5187944 (not c!894130)) b!5187949))

(assert (= (and b!5187943 res!2203653) b!5187950))

(assert (= (and b!5187949 c!894129) b!5187946))

(assert (= (and b!5187949 (not c!894129)) b!5187945))

(assert (= (and b!5187946 res!2203654) b!5187947))

(assert (= (and b!5187945 (not res!2203650)) b!5187948))

(assert (= (and b!5187948 res!2203652) b!5187951))

(assert (= (or b!5187947 b!5187951) bm!364594))

(assert (= (or b!5187946 b!5187948) bm!364596))

(assert (= (or b!5187950 bm!364596) bm!364595))

(declare-fun m!6245392 () Bool)

(assert (=> b!5187943 m!6245392))

(declare-fun m!6245394 () Bool)

(assert (=> bm!364594 m!6245394))

(declare-fun m!6245396 () Bool)

(assert (=> bm!364595 m!6245396))

(assert (=> start!549214 d!1676383))

(declare-fun d!1676385 () Bool)

(declare-fun lt!2136815 () Regex!14715)

(assert (=> d!1676385 (validRegex!6451 lt!2136815)))

(assert (=> d!1676385 (= lt!2136815 (generalisedUnion!644 (unfocusZipperList!157 zl!343)))))

(assert (=> d!1676385 (= (unfocusZipper!457 zl!343) lt!2136815)))

(declare-fun bs!1208393 () Bool)

(assert (= bs!1208393 d!1676385))

(declare-fun m!6245398 () Bool)

(assert (=> bs!1208393 m!6245398))

(assert (=> bs!1208393 m!6245142))

(assert (=> bs!1208393 m!6245142))

(assert (=> bs!1208393 m!6245144))

(assert (=> b!5187362 d!1676385))

(declare-fun d!1676387 () Bool)

(assert (=> d!1676387 (= (isEmpty!32284 (t!373598 zl!343)) ((_ is Nil!60321) (t!373598 zl!343)))))

(assert (=> b!5187352 d!1676387))

(declare-fun bs!1208394 () Bool)

(declare-fun b!5187961 () Bool)

(assert (= bs!1208394 (and b!5187961 b!5187596)))

(declare-fun lambda!259376 () Int)

(assert (=> bs!1208394 (= (and (= (reg!15044 (regTwo!29943 r!7292)) (reg!15044 r!7292)) (= (regTwo!29943 r!7292) r!7292)) (= lambda!259376 lambda!259360))))

(declare-fun bs!1208395 () Bool)

(assert (= bs!1208395 (and b!5187961 b!5187590)))

(assert (=> bs!1208395 (not (= lambda!259376 lambda!259362))))

(assert (=> b!5187961 true))

(assert (=> b!5187961 true))

(declare-fun bs!1208396 () Bool)

(declare-fun b!5187955 () Bool)

(assert (= bs!1208396 (and b!5187955 b!5187596)))

(declare-fun lambda!259377 () Int)

(assert (=> bs!1208396 (not (= lambda!259377 lambda!259360))))

(declare-fun bs!1208397 () Bool)

(assert (= bs!1208397 (and b!5187955 b!5187590)))

(assert (=> bs!1208397 (= (and (= (regOne!29942 (regTwo!29943 r!7292)) (regOne!29942 r!7292)) (= (regTwo!29942 (regTwo!29943 r!7292)) (regTwo!29942 r!7292))) (= lambda!259377 lambda!259362))))

(declare-fun bs!1208398 () Bool)

(assert (= bs!1208398 (and b!5187955 b!5187961)))

(assert (=> bs!1208398 (not (= lambda!259377 lambda!259376))))

(assert (=> b!5187955 true))

(assert (=> b!5187955 true))

(declare-fun b!5187952 () Bool)

(declare-fun e!3231760 () Bool)

(assert (=> b!5187952 (= e!3231760 (= s!2326 (Cons!60322 (c!893962 (regTwo!29943 r!7292)) Nil!60322)))))

(declare-fun b!5187953 () Bool)

(declare-fun c!894131 () Bool)

(assert (=> b!5187953 (= c!894131 ((_ is Union!14715) (regTwo!29943 r!7292)))))

(declare-fun e!3231757 () Bool)

(assert (=> b!5187953 (= e!3231760 e!3231757)))

(declare-fun b!5187954 () Bool)

(declare-fun e!3231758 () Bool)

(declare-fun call!364603 () Bool)

(assert (=> b!5187954 (= e!3231758 call!364603)))

(declare-fun c!894134 () Bool)

(declare-fun bm!364597 () Bool)

(declare-fun call!364602 () Bool)

(assert (=> bm!364597 (= call!364602 (Exists!1909 (ite c!894134 lambda!259376 lambda!259377)))))

(declare-fun e!3231755 () Bool)

(assert (=> b!5187955 (= e!3231755 call!364602)))

(declare-fun b!5187956 () Bool)

(declare-fun c!894133 () Bool)

(assert (=> b!5187956 (= c!894133 ((_ is ElementMatch!14715) (regTwo!29943 r!7292)))))

(declare-fun e!3231761 () Bool)

(assert (=> b!5187956 (= e!3231761 e!3231760)))

(declare-fun b!5187957 () Bool)

(declare-fun e!3231756 () Bool)

(assert (=> b!5187957 (= e!3231757 e!3231756)))

(declare-fun res!2203655 () Bool)

(assert (=> b!5187957 (= res!2203655 (matchRSpec!1818 (regOne!29943 (regTwo!29943 r!7292)) s!2326))))

(assert (=> b!5187957 (=> res!2203655 e!3231756)))

(declare-fun d!1676389 () Bool)

(declare-fun c!894132 () Bool)

(assert (=> d!1676389 (= c!894132 ((_ is EmptyExpr!14715) (regTwo!29943 r!7292)))))

(assert (=> d!1676389 (= (matchRSpec!1818 (regTwo!29943 r!7292) s!2326) e!3231758)))

(declare-fun b!5187958 () Bool)

(assert (=> b!5187958 (= e!3231757 e!3231755)))

(assert (=> b!5187958 (= c!894134 ((_ is Star!14715) (regTwo!29943 r!7292)))))

(declare-fun b!5187959 () Bool)

(declare-fun res!2203657 () Bool)

(declare-fun e!3231759 () Bool)

(assert (=> b!5187959 (=> res!2203657 e!3231759)))

(assert (=> b!5187959 (= res!2203657 call!364603)))

(assert (=> b!5187959 (= e!3231755 e!3231759)))

(declare-fun bm!364598 () Bool)

(assert (=> bm!364598 (= call!364603 (isEmpty!32287 s!2326))))

(declare-fun b!5187960 () Bool)

(assert (=> b!5187960 (= e!3231756 (matchRSpec!1818 (regTwo!29943 (regTwo!29943 r!7292)) s!2326))))

(assert (=> b!5187961 (= e!3231759 call!364602)))

(declare-fun b!5187962 () Bool)

(assert (=> b!5187962 (= e!3231758 e!3231761)))

(declare-fun res!2203656 () Bool)

(assert (=> b!5187962 (= res!2203656 (not ((_ is EmptyLang!14715) (regTwo!29943 r!7292))))))

(assert (=> b!5187962 (=> (not res!2203656) (not e!3231761))))

(assert (= (and d!1676389 c!894132) b!5187954))

(assert (= (and d!1676389 (not c!894132)) b!5187962))

(assert (= (and b!5187962 res!2203656) b!5187956))

(assert (= (and b!5187956 c!894133) b!5187952))

(assert (= (and b!5187956 (not c!894133)) b!5187953))

(assert (= (and b!5187953 c!894131) b!5187957))

(assert (= (and b!5187953 (not c!894131)) b!5187958))

(assert (= (and b!5187957 (not res!2203655)) b!5187960))

(assert (= (and b!5187958 c!894134) b!5187959))

(assert (= (and b!5187958 (not c!894134)) b!5187955))

(assert (= (and b!5187959 (not res!2203657)) b!5187961))

(assert (= (or b!5187961 b!5187955) bm!364597))

(assert (= (or b!5187954 b!5187959) bm!364598))

(declare-fun m!6245400 () Bool)

(assert (=> bm!364597 m!6245400))

(declare-fun m!6245402 () Bool)

(assert (=> b!5187957 m!6245402))

(assert (=> bm!364598 m!6245246))

(declare-fun m!6245404 () Bool)

(assert (=> b!5187960 m!6245404))

(assert (=> b!5187354 d!1676389))

(declare-fun d!1676391 () Bool)

(assert (=> d!1676391 (= (matchR!6900 (regOne!29943 r!7292) s!2326) (matchRSpec!1818 (regOne!29943 r!7292) s!2326))))

(declare-fun lt!2136816 () Unit!152264)

(assert (=> d!1676391 (= lt!2136816 (choose!38541 (regOne!29943 r!7292) s!2326))))

(assert (=> d!1676391 (validRegex!6451 (regOne!29943 r!7292))))

(assert (=> d!1676391 (= (mainMatchTheorem!1818 (regOne!29943 r!7292) s!2326) lt!2136816)))

(declare-fun bs!1208399 () Bool)

(assert (= bs!1208399 d!1676391))

(assert (=> bs!1208399 m!6245140))

(assert (=> bs!1208399 m!6245136))

(declare-fun m!6245406 () Bool)

(assert (=> bs!1208399 m!6245406))

(declare-fun m!6245408 () Bool)

(assert (=> bs!1208399 m!6245408))

(assert (=> b!5187354 d!1676391))

(declare-fun b!5187963 () Bool)

(declare-fun e!3231765 () Bool)

(assert (=> b!5187963 (= e!3231765 (nullable!4914 (regTwo!29943 r!7292)))))

(declare-fun b!5187964 () Bool)

(declare-fun e!3231762 () Bool)

(declare-fun lt!2136817 () Bool)

(declare-fun call!364604 () Bool)

(assert (=> b!5187964 (= e!3231762 (= lt!2136817 call!364604))))

(declare-fun b!5187965 () Bool)

(declare-fun e!3231764 () Bool)

(declare-fun e!3231767 () Bool)

(assert (=> b!5187965 (= e!3231764 e!3231767)))

(declare-fun res!2203664 () Bool)

(assert (=> b!5187965 (=> res!2203664 e!3231767)))

(assert (=> b!5187965 (= res!2203664 call!364604)))

(declare-fun b!5187966 () Bool)

(declare-fun res!2203659 () Bool)

(assert (=> b!5187966 (=> res!2203659 e!3231767)))

(assert (=> b!5187966 (= res!2203659 (not (isEmpty!32287 (tail!10204 s!2326))))))

(declare-fun b!5187967 () Bool)

(declare-fun res!2203663 () Bool)

(declare-fun e!3231766 () Bool)

(assert (=> b!5187967 (=> (not res!2203663) (not e!3231766))))

(assert (=> b!5187967 (= res!2203663 (not call!364604))))

(declare-fun b!5187968 () Bool)

(declare-fun e!3231768 () Bool)

(assert (=> b!5187968 (= e!3231762 e!3231768)))

(declare-fun c!894137 () Bool)

(assert (=> b!5187968 (= c!894137 ((_ is EmptyLang!14715) (regTwo!29943 r!7292)))))

(declare-fun b!5187969 () Bool)

(assert (=> b!5187969 (= e!3231768 (not lt!2136817))))

(declare-fun d!1676393 () Bool)

(assert (=> d!1676393 e!3231762))

(declare-fun c!894135 () Bool)

(assert (=> d!1676393 (= c!894135 ((_ is EmptyExpr!14715) (regTwo!29943 r!7292)))))

(assert (=> d!1676393 (= lt!2136817 e!3231765)))

(declare-fun c!894136 () Bool)

(assert (=> d!1676393 (= c!894136 (isEmpty!32287 s!2326))))

(assert (=> d!1676393 (validRegex!6451 (regTwo!29943 r!7292))))

(assert (=> d!1676393 (= (matchR!6900 (regTwo!29943 r!7292) s!2326) lt!2136817)))

(declare-fun b!5187970 () Bool)

(assert (=> b!5187970 (= e!3231767 (not (= (head!11107 s!2326) (c!893962 (regTwo!29943 r!7292)))))))

(declare-fun b!5187971 () Bool)

(declare-fun res!2203660 () Bool)

(assert (=> b!5187971 (=> (not res!2203660) (not e!3231766))))

(assert (=> b!5187971 (= res!2203660 (isEmpty!32287 (tail!10204 s!2326)))))

(declare-fun bm!364599 () Bool)

(assert (=> bm!364599 (= call!364604 (isEmpty!32287 s!2326))))

(declare-fun b!5187972 () Bool)

(assert (=> b!5187972 (= e!3231766 (= (head!11107 s!2326) (c!893962 (regTwo!29943 r!7292))))))

(declare-fun b!5187973 () Bool)

(declare-fun res!2203658 () Bool)

(declare-fun e!3231763 () Bool)

(assert (=> b!5187973 (=> res!2203658 e!3231763)))

(assert (=> b!5187973 (= res!2203658 e!3231766)))

(declare-fun res!2203665 () Bool)

(assert (=> b!5187973 (=> (not res!2203665) (not e!3231766))))

(assert (=> b!5187973 (= res!2203665 lt!2136817)))

(declare-fun b!5187974 () Bool)

(assert (=> b!5187974 (= e!3231763 e!3231764)))

(declare-fun res!2203661 () Bool)

(assert (=> b!5187974 (=> (not res!2203661) (not e!3231764))))

(assert (=> b!5187974 (= res!2203661 (not lt!2136817))))

(declare-fun b!5187975 () Bool)

(assert (=> b!5187975 (= e!3231765 (matchR!6900 (derivativeStep!4016 (regTwo!29943 r!7292) (head!11107 s!2326)) (tail!10204 s!2326)))))

(declare-fun b!5187976 () Bool)

(declare-fun res!2203662 () Bool)

(assert (=> b!5187976 (=> res!2203662 e!3231763)))

(assert (=> b!5187976 (= res!2203662 (not ((_ is ElementMatch!14715) (regTwo!29943 r!7292))))))

(assert (=> b!5187976 (= e!3231768 e!3231763)))

(assert (= (and d!1676393 c!894136) b!5187963))

(assert (= (and d!1676393 (not c!894136)) b!5187975))

(assert (= (and d!1676393 c!894135) b!5187964))

(assert (= (and d!1676393 (not c!894135)) b!5187968))

(assert (= (and b!5187968 c!894137) b!5187969))

(assert (= (and b!5187968 (not c!894137)) b!5187976))

(assert (= (and b!5187976 (not res!2203662)) b!5187973))

(assert (= (and b!5187973 res!2203665) b!5187967))

(assert (= (and b!5187967 res!2203663) b!5187971))

(assert (= (and b!5187971 res!2203660) b!5187972))

(assert (= (and b!5187973 (not res!2203658)) b!5187974))

(assert (= (and b!5187974 res!2203661) b!5187965))

(assert (= (and b!5187965 (not res!2203664)) b!5187966))

(assert (= (and b!5187966 (not res!2203659)) b!5187970))

(assert (= (or b!5187964 b!5187965 b!5187967) bm!364599))

(assert (=> b!5187966 m!6245284))

(assert (=> b!5187966 m!6245284))

(assert (=> b!5187966 m!6245286))

(assert (=> b!5187970 m!6245288))

(assert (=> bm!364599 m!6245246))

(assert (=> b!5187971 m!6245284))

(assert (=> b!5187971 m!6245284))

(assert (=> b!5187971 m!6245286))

(assert (=> d!1676393 m!6245246))

(assert (=> d!1676393 m!6245128))

(assert (=> b!5187972 m!6245288))

(declare-fun m!6245410 () Bool)

(assert (=> b!5187963 m!6245410))

(assert (=> b!5187975 m!6245288))

(assert (=> b!5187975 m!6245288))

(declare-fun m!6245412 () Bool)

(assert (=> b!5187975 m!6245412))

(assert (=> b!5187975 m!6245284))

(assert (=> b!5187975 m!6245412))

(assert (=> b!5187975 m!6245284))

(declare-fun m!6245414 () Bool)

(assert (=> b!5187975 m!6245414))

(assert (=> b!5187354 d!1676393))

(declare-fun d!1676395 () Bool)

(assert (=> d!1676395 (= (matchR!6900 (regTwo!29943 r!7292) s!2326) (matchRSpec!1818 (regTwo!29943 r!7292) s!2326))))

(declare-fun lt!2136818 () Unit!152264)

(assert (=> d!1676395 (= lt!2136818 (choose!38541 (regTwo!29943 r!7292) s!2326))))

(assert (=> d!1676395 (validRegex!6451 (regTwo!29943 r!7292))))

(assert (=> d!1676395 (= (mainMatchTheorem!1818 (regTwo!29943 r!7292) s!2326) lt!2136818)))

(declare-fun bs!1208400 () Bool)

(assert (= bs!1208400 d!1676395))

(assert (=> bs!1208400 m!6245134))

(assert (=> bs!1208400 m!6245130))

(declare-fun m!6245416 () Bool)

(assert (=> bs!1208400 m!6245416))

(assert (=> bs!1208400 m!6245128))

(assert (=> b!5187354 d!1676395))

(declare-fun bs!1208401 () Bool)

(declare-fun b!5187986 () Bool)

(assert (= bs!1208401 (and b!5187986 b!5187596)))

(declare-fun lambda!259378 () Int)

(assert (=> bs!1208401 (= (and (= (reg!15044 (regOne!29943 r!7292)) (reg!15044 r!7292)) (= (regOne!29943 r!7292) r!7292)) (= lambda!259378 lambda!259360))))

(declare-fun bs!1208402 () Bool)

(assert (= bs!1208402 (and b!5187986 b!5187590)))

(assert (=> bs!1208402 (not (= lambda!259378 lambda!259362))))

(declare-fun bs!1208403 () Bool)

(assert (= bs!1208403 (and b!5187986 b!5187961)))

(assert (=> bs!1208403 (= (and (= (reg!15044 (regOne!29943 r!7292)) (reg!15044 (regTwo!29943 r!7292))) (= (regOne!29943 r!7292) (regTwo!29943 r!7292))) (= lambda!259378 lambda!259376))))

(declare-fun bs!1208404 () Bool)

(assert (= bs!1208404 (and b!5187986 b!5187955)))

(assert (=> bs!1208404 (not (= lambda!259378 lambda!259377))))

(assert (=> b!5187986 true))

(assert (=> b!5187986 true))

(declare-fun bs!1208405 () Bool)

(declare-fun b!5187980 () Bool)

(assert (= bs!1208405 (and b!5187980 b!5187986)))

(declare-fun lambda!259379 () Int)

(assert (=> bs!1208405 (not (= lambda!259379 lambda!259378))))

(declare-fun bs!1208406 () Bool)

(assert (= bs!1208406 (and b!5187980 b!5187596)))

(assert (=> bs!1208406 (not (= lambda!259379 lambda!259360))))

(declare-fun bs!1208407 () Bool)

(assert (= bs!1208407 (and b!5187980 b!5187961)))

(assert (=> bs!1208407 (not (= lambda!259379 lambda!259376))))

(declare-fun bs!1208408 () Bool)

(assert (= bs!1208408 (and b!5187980 b!5187590)))

(assert (=> bs!1208408 (= (and (= (regOne!29942 (regOne!29943 r!7292)) (regOne!29942 r!7292)) (= (regTwo!29942 (regOne!29943 r!7292)) (regTwo!29942 r!7292))) (= lambda!259379 lambda!259362))))

(declare-fun bs!1208409 () Bool)

(assert (= bs!1208409 (and b!5187980 b!5187955)))

(assert (=> bs!1208409 (= (and (= (regOne!29942 (regOne!29943 r!7292)) (regOne!29942 (regTwo!29943 r!7292))) (= (regTwo!29942 (regOne!29943 r!7292)) (regTwo!29942 (regTwo!29943 r!7292)))) (= lambda!259379 lambda!259377))))

(assert (=> b!5187980 true))

(assert (=> b!5187980 true))

(declare-fun b!5187977 () Bool)

(declare-fun e!3231774 () Bool)

(assert (=> b!5187977 (= e!3231774 (= s!2326 (Cons!60322 (c!893962 (regOne!29943 r!7292)) Nil!60322)))))

(declare-fun b!5187978 () Bool)

(declare-fun c!894138 () Bool)

(assert (=> b!5187978 (= c!894138 ((_ is Union!14715) (regOne!29943 r!7292)))))

(declare-fun e!3231771 () Bool)

(assert (=> b!5187978 (= e!3231774 e!3231771)))

(declare-fun b!5187979 () Bool)

(declare-fun e!3231772 () Bool)

(declare-fun call!364606 () Bool)

(assert (=> b!5187979 (= e!3231772 call!364606)))

(declare-fun call!364605 () Bool)

(declare-fun c!894141 () Bool)

(declare-fun bm!364600 () Bool)

(assert (=> bm!364600 (= call!364605 (Exists!1909 (ite c!894141 lambda!259378 lambda!259379)))))

(declare-fun e!3231769 () Bool)

(assert (=> b!5187980 (= e!3231769 call!364605)))

(declare-fun b!5187981 () Bool)

(declare-fun c!894140 () Bool)

(assert (=> b!5187981 (= c!894140 ((_ is ElementMatch!14715) (regOne!29943 r!7292)))))

(declare-fun e!3231775 () Bool)

(assert (=> b!5187981 (= e!3231775 e!3231774)))

(declare-fun b!5187982 () Bool)

(declare-fun e!3231770 () Bool)

(assert (=> b!5187982 (= e!3231771 e!3231770)))

(declare-fun res!2203666 () Bool)

(assert (=> b!5187982 (= res!2203666 (matchRSpec!1818 (regOne!29943 (regOne!29943 r!7292)) s!2326))))

(assert (=> b!5187982 (=> res!2203666 e!3231770)))

(declare-fun d!1676397 () Bool)

(declare-fun c!894139 () Bool)

(assert (=> d!1676397 (= c!894139 ((_ is EmptyExpr!14715) (regOne!29943 r!7292)))))

(assert (=> d!1676397 (= (matchRSpec!1818 (regOne!29943 r!7292) s!2326) e!3231772)))

(declare-fun b!5187983 () Bool)

(assert (=> b!5187983 (= e!3231771 e!3231769)))

(assert (=> b!5187983 (= c!894141 ((_ is Star!14715) (regOne!29943 r!7292)))))

(declare-fun b!5187984 () Bool)

(declare-fun res!2203668 () Bool)

(declare-fun e!3231773 () Bool)

(assert (=> b!5187984 (=> res!2203668 e!3231773)))

(assert (=> b!5187984 (= res!2203668 call!364606)))

(assert (=> b!5187984 (= e!3231769 e!3231773)))

(declare-fun bm!364601 () Bool)

(assert (=> bm!364601 (= call!364606 (isEmpty!32287 s!2326))))

(declare-fun b!5187985 () Bool)

(assert (=> b!5187985 (= e!3231770 (matchRSpec!1818 (regTwo!29943 (regOne!29943 r!7292)) s!2326))))

(assert (=> b!5187986 (= e!3231773 call!364605)))

(declare-fun b!5187987 () Bool)

(assert (=> b!5187987 (= e!3231772 e!3231775)))

(declare-fun res!2203667 () Bool)

(assert (=> b!5187987 (= res!2203667 (not ((_ is EmptyLang!14715) (regOne!29943 r!7292))))))

(assert (=> b!5187987 (=> (not res!2203667) (not e!3231775))))

(assert (= (and d!1676397 c!894139) b!5187979))

(assert (= (and d!1676397 (not c!894139)) b!5187987))

(assert (= (and b!5187987 res!2203667) b!5187981))

(assert (= (and b!5187981 c!894140) b!5187977))

(assert (= (and b!5187981 (not c!894140)) b!5187978))

(assert (= (and b!5187978 c!894138) b!5187982))

(assert (= (and b!5187978 (not c!894138)) b!5187983))

(assert (= (and b!5187982 (not res!2203666)) b!5187985))

(assert (= (and b!5187983 c!894141) b!5187984))

(assert (= (and b!5187983 (not c!894141)) b!5187980))

(assert (= (and b!5187984 (not res!2203668)) b!5187986))

(assert (= (or b!5187986 b!5187980) bm!364600))

(assert (= (or b!5187979 b!5187984) bm!364601))

(declare-fun m!6245418 () Bool)

(assert (=> bm!364600 m!6245418))

(declare-fun m!6245420 () Bool)

(assert (=> b!5187982 m!6245420))

(assert (=> bm!364601 m!6245246))

(declare-fun m!6245422 () Bool)

(assert (=> b!5187985 m!6245422))

(assert (=> b!5187354 d!1676397))

(declare-fun b!5187988 () Bool)

(declare-fun e!3231779 () Bool)

(assert (=> b!5187988 (= e!3231779 (nullable!4914 (regOne!29943 r!7292)))))

(declare-fun b!5187989 () Bool)

(declare-fun e!3231776 () Bool)

(declare-fun lt!2136819 () Bool)

(declare-fun call!364607 () Bool)

(assert (=> b!5187989 (= e!3231776 (= lt!2136819 call!364607))))

(declare-fun b!5187990 () Bool)

(declare-fun e!3231778 () Bool)

(declare-fun e!3231781 () Bool)

(assert (=> b!5187990 (= e!3231778 e!3231781)))

(declare-fun res!2203675 () Bool)

(assert (=> b!5187990 (=> res!2203675 e!3231781)))

(assert (=> b!5187990 (= res!2203675 call!364607)))

(declare-fun b!5187991 () Bool)

(declare-fun res!2203670 () Bool)

(assert (=> b!5187991 (=> res!2203670 e!3231781)))

(assert (=> b!5187991 (= res!2203670 (not (isEmpty!32287 (tail!10204 s!2326))))))

(declare-fun b!5187992 () Bool)

(declare-fun res!2203674 () Bool)

(declare-fun e!3231780 () Bool)

(assert (=> b!5187992 (=> (not res!2203674) (not e!3231780))))

(assert (=> b!5187992 (= res!2203674 (not call!364607))))

(declare-fun b!5187993 () Bool)

(declare-fun e!3231782 () Bool)

(assert (=> b!5187993 (= e!3231776 e!3231782)))

(declare-fun c!894144 () Bool)

(assert (=> b!5187993 (= c!894144 ((_ is EmptyLang!14715) (regOne!29943 r!7292)))))

(declare-fun b!5187994 () Bool)

(assert (=> b!5187994 (= e!3231782 (not lt!2136819))))

(declare-fun d!1676399 () Bool)

(assert (=> d!1676399 e!3231776))

(declare-fun c!894142 () Bool)

(assert (=> d!1676399 (= c!894142 ((_ is EmptyExpr!14715) (regOne!29943 r!7292)))))

(assert (=> d!1676399 (= lt!2136819 e!3231779)))

(declare-fun c!894143 () Bool)

(assert (=> d!1676399 (= c!894143 (isEmpty!32287 s!2326))))

(assert (=> d!1676399 (validRegex!6451 (regOne!29943 r!7292))))

(assert (=> d!1676399 (= (matchR!6900 (regOne!29943 r!7292) s!2326) lt!2136819)))

(declare-fun b!5187995 () Bool)

(assert (=> b!5187995 (= e!3231781 (not (= (head!11107 s!2326) (c!893962 (regOne!29943 r!7292)))))))

(declare-fun b!5187996 () Bool)

(declare-fun res!2203671 () Bool)

(assert (=> b!5187996 (=> (not res!2203671) (not e!3231780))))

(assert (=> b!5187996 (= res!2203671 (isEmpty!32287 (tail!10204 s!2326)))))

(declare-fun bm!364602 () Bool)

(assert (=> bm!364602 (= call!364607 (isEmpty!32287 s!2326))))

(declare-fun b!5187997 () Bool)

(assert (=> b!5187997 (= e!3231780 (= (head!11107 s!2326) (c!893962 (regOne!29943 r!7292))))))

(declare-fun b!5187998 () Bool)

(declare-fun res!2203669 () Bool)

(declare-fun e!3231777 () Bool)

(assert (=> b!5187998 (=> res!2203669 e!3231777)))

(assert (=> b!5187998 (= res!2203669 e!3231780)))

(declare-fun res!2203676 () Bool)

(assert (=> b!5187998 (=> (not res!2203676) (not e!3231780))))

(assert (=> b!5187998 (= res!2203676 lt!2136819)))

(declare-fun b!5187999 () Bool)

(assert (=> b!5187999 (= e!3231777 e!3231778)))

(declare-fun res!2203672 () Bool)

(assert (=> b!5187999 (=> (not res!2203672) (not e!3231778))))

(assert (=> b!5187999 (= res!2203672 (not lt!2136819))))

(declare-fun b!5188000 () Bool)

(assert (=> b!5188000 (= e!3231779 (matchR!6900 (derivativeStep!4016 (regOne!29943 r!7292) (head!11107 s!2326)) (tail!10204 s!2326)))))

(declare-fun b!5188001 () Bool)

(declare-fun res!2203673 () Bool)

(assert (=> b!5188001 (=> res!2203673 e!3231777)))

(assert (=> b!5188001 (= res!2203673 (not ((_ is ElementMatch!14715) (regOne!29943 r!7292))))))

(assert (=> b!5188001 (= e!3231782 e!3231777)))

(assert (= (and d!1676399 c!894143) b!5187988))

(assert (= (and d!1676399 (not c!894143)) b!5188000))

(assert (= (and d!1676399 c!894142) b!5187989))

(assert (= (and d!1676399 (not c!894142)) b!5187993))

(assert (= (and b!5187993 c!894144) b!5187994))

(assert (= (and b!5187993 (not c!894144)) b!5188001))

(assert (= (and b!5188001 (not res!2203673)) b!5187998))

(assert (= (and b!5187998 res!2203676) b!5187992))

(assert (= (and b!5187992 res!2203674) b!5187996))

(assert (= (and b!5187996 res!2203671) b!5187997))

(assert (= (and b!5187998 (not res!2203669)) b!5187999))

(assert (= (and b!5187999 res!2203672) b!5187990))

(assert (= (and b!5187990 (not res!2203675)) b!5187991))

(assert (= (and b!5187991 (not res!2203670)) b!5187995))

(assert (= (or b!5187989 b!5187990 b!5187992) bm!364602))

(assert (=> b!5187991 m!6245284))

(assert (=> b!5187991 m!6245284))

(assert (=> b!5187991 m!6245286))

(assert (=> b!5187995 m!6245288))

(assert (=> bm!364602 m!6245246))

(assert (=> b!5187996 m!6245284))

(assert (=> b!5187996 m!6245284))

(assert (=> b!5187996 m!6245286))

(assert (=> d!1676399 m!6245246))

(assert (=> d!1676399 m!6245408))

(assert (=> b!5187997 m!6245288))

(declare-fun m!6245424 () Bool)

(assert (=> b!5187988 m!6245424))

(assert (=> b!5188000 m!6245288))

(assert (=> b!5188000 m!6245288))

(declare-fun m!6245426 () Bool)

(assert (=> b!5188000 m!6245426))

(assert (=> b!5188000 m!6245284))

(assert (=> b!5188000 m!6245426))

(assert (=> b!5188000 m!6245284))

(declare-fun m!6245428 () Bool)

(assert (=> b!5188000 m!6245428))

(assert (=> b!5187354 d!1676399))

(declare-fun b!5188006 () Bool)

(declare-fun e!3231785 () Bool)

(declare-fun tp!1455476 () Bool)

(declare-fun tp!1455477 () Bool)

(assert (=> b!5188006 (= e!3231785 (and tp!1455476 tp!1455477))))

(assert (=> b!5187350 (= tp!1455412 e!3231785)))

(assert (= (and b!5187350 ((_ is Cons!60320) (exprs!4599 setElem!32710))) b!5188006))

(declare-fun b!5188014 () Bool)

(declare-fun e!3231791 () Bool)

(declare-fun tp!1455482 () Bool)

(assert (=> b!5188014 (= e!3231791 tp!1455482)))

(declare-fun tp!1455483 () Bool)

(declare-fun e!3231790 () Bool)

(declare-fun b!5188013 () Bool)

(assert (=> b!5188013 (= e!3231790 (and (inv!80034 (h!66769 (t!373598 zl!343))) e!3231791 tp!1455483))))

(assert (=> b!5187360 (= tp!1455406 e!3231790)))

(assert (= b!5188013 b!5188014))

(assert (= (and b!5187360 ((_ is Cons!60321) (t!373598 zl!343))) b!5188013))

(declare-fun m!6245430 () Bool)

(assert (=> b!5188013 m!6245430))

(declare-fun b!5188026 () Bool)

(declare-fun e!3231794 () Bool)

(declare-fun tp!1455494 () Bool)

(declare-fun tp!1455495 () Bool)

(assert (=> b!5188026 (= e!3231794 (and tp!1455494 tp!1455495))))

(assert (=> b!5187349 (= tp!1455408 e!3231794)))

(declare-fun b!5188027 () Bool)

(declare-fun tp!1455498 () Bool)

(assert (=> b!5188027 (= e!3231794 tp!1455498)))

(declare-fun b!5188028 () Bool)

(declare-fun tp!1455497 () Bool)

(declare-fun tp!1455496 () Bool)

(assert (=> b!5188028 (= e!3231794 (and tp!1455497 tp!1455496))))

(declare-fun b!5188025 () Bool)

(assert (=> b!5188025 (= e!3231794 tp_is_empty!38683)))

(assert (= (and b!5187349 ((_ is ElementMatch!14715) (reg!15044 r!7292))) b!5188025))

(assert (= (and b!5187349 ((_ is Concat!23560) (reg!15044 r!7292))) b!5188026))

(assert (= (and b!5187349 ((_ is Star!14715) (reg!15044 r!7292))) b!5188027))

(assert (= (and b!5187349 ((_ is Union!14715) (reg!15044 r!7292))) b!5188028))

(declare-fun b!5188030 () Bool)

(declare-fun e!3231795 () Bool)

(declare-fun tp!1455499 () Bool)

(declare-fun tp!1455500 () Bool)

(assert (=> b!5188030 (= e!3231795 (and tp!1455499 tp!1455500))))

(assert (=> b!5187356 (= tp!1455407 e!3231795)))

(declare-fun b!5188031 () Bool)

(declare-fun tp!1455503 () Bool)

(assert (=> b!5188031 (= e!3231795 tp!1455503)))

(declare-fun b!5188032 () Bool)

(declare-fun tp!1455502 () Bool)

(declare-fun tp!1455501 () Bool)

(assert (=> b!5188032 (= e!3231795 (and tp!1455502 tp!1455501))))

(declare-fun b!5188029 () Bool)

(assert (=> b!5188029 (= e!3231795 tp_is_empty!38683)))

(assert (= (and b!5187356 ((_ is ElementMatch!14715) (regOne!29942 r!7292))) b!5188029))

(assert (= (and b!5187356 ((_ is Concat!23560) (regOne!29942 r!7292))) b!5188030))

(assert (= (and b!5187356 ((_ is Star!14715) (regOne!29942 r!7292))) b!5188031))

(assert (= (and b!5187356 ((_ is Union!14715) (regOne!29942 r!7292))) b!5188032))

(declare-fun b!5188034 () Bool)

(declare-fun e!3231796 () Bool)

(declare-fun tp!1455504 () Bool)

(declare-fun tp!1455505 () Bool)

(assert (=> b!5188034 (= e!3231796 (and tp!1455504 tp!1455505))))

(assert (=> b!5187356 (= tp!1455404 e!3231796)))

(declare-fun b!5188035 () Bool)

(declare-fun tp!1455508 () Bool)

(assert (=> b!5188035 (= e!3231796 tp!1455508)))

(declare-fun b!5188036 () Bool)

(declare-fun tp!1455507 () Bool)

(declare-fun tp!1455506 () Bool)

(assert (=> b!5188036 (= e!3231796 (and tp!1455507 tp!1455506))))

(declare-fun b!5188033 () Bool)

(assert (=> b!5188033 (= e!3231796 tp_is_empty!38683)))

(assert (= (and b!5187356 ((_ is ElementMatch!14715) (regTwo!29942 r!7292))) b!5188033))

(assert (= (and b!5187356 ((_ is Concat!23560) (regTwo!29942 r!7292))) b!5188034))

(assert (= (and b!5187356 ((_ is Star!14715) (regTwo!29942 r!7292))) b!5188035))

(assert (= (and b!5187356 ((_ is Union!14715) (regTwo!29942 r!7292))) b!5188036))

(declare-fun condSetEmpty!32716 () Bool)

(assert (=> setNonEmpty!32710 (= condSetEmpty!32716 (= setRest!32710 ((as const (Array Context!8198 Bool)) false)))))

(declare-fun setRes!32716 () Bool)

(assert (=> setNonEmpty!32710 (= tp!1455410 setRes!32716)))

(declare-fun setIsEmpty!32716 () Bool)

(assert (=> setIsEmpty!32716 setRes!32716))

(declare-fun setElem!32716 () Context!8198)

(declare-fun tp!1455513 () Bool)

(declare-fun e!3231799 () Bool)

(declare-fun setNonEmpty!32716 () Bool)

(assert (=> setNonEmpty!32716 (= setRes!32716 (and tp!1455513 (inv!80034 setElem!32716) e!3231799))))

(declare-fun setRest!32716 () (InoxSet Context!8198))

(assert (=> setNonEmpty!32716 (= setRest!32710 ((_ map or) (store ((as const (Array Context!8198 Bool)) false) setElem!32716 true) setRest!32716))))

(declare-fun b!5188041 () Bool)

(declare-fun tp!1455514 () Bool)

(assert (=> b!5188041 (= e!3231799 tp!1455514)))

(assert (= (and setNonEmpty!32710 condSetEmpty!32716) setIsEmpty!32716))

(assert (= (and setNonEmpty!32710 (not condSetEmpty!32716)) setNonEmpty!32716))

(assert (= setNonEmpty!32716 b!5188041))

(declare-fun m!6245432 () Bool)

(assert (=> setNonEmpty!32716 m!6245432))

(declare-fun b!5188043 () Bool)

(declare-fun e!3231800 () Bool)

(declare-fun tp!1455515 () Bool)

(declare-fun tp!1455516 () Bool)

(assert (=> b!5188043 (= e!3231800 (and tp!1455515 tp!1455516))))

(assert (=> b!5187345 (= tp!1455405 e!3231800)))

(declare-fun b!5188044 () Bool)

(declare-fun tp!1455519 () Bool)

(assert (=> b!5188044 (= e!3231800 tp!1455519)))

(declare-fun b!5188045 () Bool)

(declare-fun tp!1455518 () Bool)

(declare-fun tp!1455517 () Bool)

(assert (=> b!5188045 (= e!3231800 (and tp!1455518 tp!1455517))))

(declare-fun b!5188042 () Bool)

(assert (=> b!5188042 (= e!3231800 tp_is_empty!38683)))

(assert (= (and b!5187345 ((_ is ElementMatch!14715) (regOne!29943 r!7292))) b!5188042))

(assert (= (and b!5187345 ((_ is Concat!23560) (regOne!29943 r!7292))) b!5188043))

(assert (= (and b!5187345 ((_ is Star!14715) (regOne!29943 r!7292))) b!5188044))

(assert (= (and b!5187345 ((_ is Union!14715) (regOne!29943 r!7292))) b!5188045))

(declare-fun b!5188047 () Bool)

(declare-fun e!3231801 () Bool)

(declare-fun tp!1455520 () Bool)

(declare-fun tp!1455521 () Bool)

(assert (=> b!5188047 (= e!3231801 (and tp!1455520 tp!1455521))))

(assert (=> b!5187345 (= tp!1455409 e!3231801)))

(declare-fun b!5188048 () Bool)

(declare-fun tp!1455524 () Bool)

(assert (=> b!5188048 (= e!3231801 tp!1455524)))

(declare-fun b!5188049 () Bool)

(declare-fun tp!1455523 () Bool)

(declare-fun tp!1455522 () Bool)

(assert (=> b!5188049 (= e!3231801 (and tp!1455523 tp!1455522))))

(declare-fun b!5188046 () Bool)

(assert (=> b!5188046 (= e!3231801 tp_is_empty!38683)))

(assert (= (and b!5187345 ((_ is ElementMatch!14715) (regTwo!29943 r!7292))) b!5188046))

(assert (= (and b!5187345 ((_ is Concat!23560) (regTwo!29943 r!7292))) b!5188047))

(assert (= (and b!5187345 ((_ is Star!14715) (regTwo!29943 r!7292))) b!5188048))

(assert (= (and b!5187345 ((_ is Union!14715) (regTwo!29943 r!7292))) b!5188049))

(declare-fun b!5188054 () Bool)

(declare-fun e!3231804 () Bool)

(declare-fun tp!1455527 () Bool)

(assert (=> b!5188054 (= e!3231804 (and tp_is_empty!38683 tp!1455527))))

(assert (=> b!5187358 (= tp!1455411 e!3231804)))

(assert (= (and b!5187358 ((_ is Cons!60322) (t!373599 s!2326))) b!5188054))

(declare-fun b!5188055 () Bool)

(declare-fun e!3231805 () Bool)

(declare-fun tp!1455528 () Bool)

(declare-fun tp!1455529 () Bool)

(assert (=> b!5188055 (= e!3231805 (and tp!1455528 tp!1455529))))

(assert (=> b!5187359 (= tp!1455413 e!3231805)))

(assert (= (and b!5187359 ((_ is Cons!60320) (exprs!4599 (h!66769 zl!343)))) b!5188055))

(check-sat (not b!5187693) (not b!5188014) (not b!5188032) (not b!5187763) (not b!5187988) (not b!5187758) (not b!5188045) (not d!1676399) (not b!5187696) (not bm!364570) (not b!5188006) (not b!5187886) (not d!1676369) (not b!5187943) (not bm!364571) (not b!5188031) (not b!5187861) (not b!5187761) (not b!5187688) (not b!5187957) (not d!1676317) (not b!5187852) (not bm!364601) (not b!5187997) (not b!5188054) (not b!5188048) (not b!5187972) (not bm!364593) (not b!5188013) (not bm!364599) (not d!1676375) (not b!5188000) (not bm!364592) (not b!5187982) (not b!5187991) (not bm!364591) (not d!1676385) (not b!5188055) (not d!1676373) (not bm!364575) (not bm!364598) (not b!5187995) (not b!5187966) (not b!5188043) (not bm!364600) (not d!1676363) (not b!5187760) (not b!5187757) (not b!5187592) (not b!5187996) (not d!1676393) (not d!1676391) (not b!5187755) (not d!1676395) (not bm!364532) (not bm!364597) (not b!5188036) (not d!1676371) (not d!1676367) (not b!5188034) (not b!5187970) (not b!5187942) (not b!5188030) (not b!5187963) (not b!5187781) (not b!5187858) (not b!5187971) (not b!5187854) (not b!5188041) (not b!5188027) (not bm!364594) (not bm!364533) (not b!5188026) (not b!5188028) (not b!5188035) tp_is_empty!38683 (not b!5187856) (not setNonEmpty!32716) (not b!5188044) (not bm!364595) (not b!5187860) (not b!5187759) (not b!5187866) (not b!5188047) (not b!5188049) (not b!5187694) (not b!5187595) (not b!5187975) (not b!5187985) (not b!5187859) (not bm!364602) (not b!5187685) (not bm!364542) (not b!5187960) (not b!5187908) (not b!5187907) (not d!1676347) (not b!5187699))
(check-sat)
