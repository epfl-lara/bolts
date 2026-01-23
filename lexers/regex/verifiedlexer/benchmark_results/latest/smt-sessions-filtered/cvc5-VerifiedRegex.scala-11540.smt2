; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!634732 () Bool)

(assert start!634732)

(declare-fun b!6424312 () Bool)

(assert (=> b!6424312 true))

(assert (=> b!6424312 true))

(declare-fun lambda!355021 () Int)

(declare-fun lambda!355020 () Int)

(assert (=> b!6424312 (not (= lambda!355021 lambda!355020))))

(assert (=> b!6424312 true))

(assert (=> b!6424312 true))

(declare-fun b!6424331 () Bool)

(assert (=> b!6424331 true))

(declare-fun bs!1615944 () Bool)

(declare-fun b!6424304 () Bool)

(assert (= bs!1615944 (and b!6424304 b!6424312)))

(declare-fun lambda!355023 () Int)

(declare-datatypes ((C!32922 0))(
  ( (C!32923 (val!26163 Int)) )
))
(declare-datatypes ((Regex!16326 0))(
  ( (ElementMatch!16326 (c!1173847 C!32922)) (Concat!25171 (regOne!33164 Regex!16326) (regTwo!33164 Regex!16326)) (EmptyExpr!16326) (Star!16326 (reg!16655 Regex!16326)) (EmptyLang!16326) (Union!16326 (regOne!33165 Regex!16326) (regTwo!33165 Regex!16326)) )
))
(declare-fun lt!2377533 () Regex!16326)

(declare-fun r!7292 () Regex!16326)

(assert (=> bs!1615944 (= (= lt!2377533 (regOne!33164 r!7292)) (= lambda!355023 lambda!355020))))

(assert (=> bs!1615944 (not (= lambda!355023 lambda!355021))))

(assert (=> b!6424304 true))

(assert (=> b!6424304 true))

(assert (=> b!6424304 true))

(declare-fun lambda!355024 () Int)

(assert (=> bs!1615944 (not (= lambda!355024 lambda!355020))))

(assert (=> bs!1615944 (= (= lt!2377533 (regOne!33164 r!7292)) (= lambda!355024 lambda!355021))))

(assert (=> b!6424304 (not (= lambda!355024 lambda!355023))))

(assert (=> b!6424304 true))

(assert (=> b!6424304 true))

(assert (=> b!6424304 true))

(declare-fun bs!1615945 () Bool)

(declare-fun b!6424308 () Bool)

(assert (= bs!1615945 (and b!6424308 b!6424312)))

(declare-datatypes ((List!65277 0))(
  ( (Nil!65153) (Cons!65153 (h!71601 C!32922) (t!378893 List!65277)) )
))
(declare-fun s!2326 () List!65277)

(declare-fun lambda!355025 () Int)

(declare-datatypes ((tuple2!66610 0))(
  ( (tuple2!66611 (_1!36608 List!65277) (_2!36608 List!65277)) )
))
(declare-fun lt!2377560 () tuple2!66610)

(assert (=> bs!1615945 (= (and (= (_1!36608 lt!2377560) s!2326) (= (reg!16655 (regOne!33164 r!7292)) (regOne!33164 r!7292)) (= lt!2377533 (regTwo!33164 r!7292))) (= lambda!355025 lambda!355020))))

(assert (=> bs!1615945 (not (= lambda!355025 lambda!355021))))

(declare-fun bs!1615946 () Bool)

(assert (= bs!1615946 (and b!6424308 b!6424304)))

(assert (=> bs!1615946 (= (and (= (_1!36608 lt!2377560) s!2326) (= (reg!16655 (regOne!33164 r!7292)) lt!2377533) (= lt!2377533 (regTwo!33164 r!7292))) (= lambda!355025 lambda!355023))))

(assert (=> bs!1615946 (not (= lambda!355025 lambda!355024))))

(assert (=> b!6424308 true))

(assert (=> b!6424308 true))

(assert (=> b!6424308 true))

(declare-fun lambda!355026 () Int)

(assert (=> bs!1615945 (not (= lambda!355026 lambda!355021))))

(assert (=> bs!1615945 (not (= lambda!355026 lambda!355020))))

(assert (=> b!6424308 (not (= lambda!355026 lambda!355025))))

(assert (=> bs!1615946 (not (= lambda!355026 lambda!355023))))

(assert (=> bs!1615946 (not (= lambda!355026 lambda!355024))))

(assert (=> b!6424308 true))

(assert (=> b!6424308 true))

(assert (=> b!6424308 true))

(declare-fun e!3897728 () Bool)

(declare-fun e!3897731 () Bool)

(assert (=> b!6424304 (= e!3897728 e!3897731)))

(declare-fun res!2640302 () Bool)

(assert (=> b!6424304 (=> res!2640302 e!3897731)))

(declare-fun ++!14394 (List!65277 List!65277) List!65277)

(assert (=> b!6424304 (= res!2640302 (not (= (++!14394 (_1!36608 lt!2377560) (_2!36608 lt!2377560)) s!2326)))))

(declare-datatypes ((Option!16217 0))(
  ( (None!16216) (Some!16216 (v!52389 tuple2!66610)) )
))
(declare-fun lt!2377524 () Option!16217)

(declare-fun get!22573 (Option!16217) tuple2!66610)

(assert (=> b!6424304 (= lt!2377560 (get!22573 lt!2377524))))

(declare-fun Exists!3396 (Int) Bool)

(assert (=> b!6424304 (= (Exists!3396 lambda!355023) (Exists!3396 lambda!355024))))

(declare-datatypes ((Unit!158635 0))(
  ( (Unit!158636) )
))
(declare-fun lt!2377553 () Unit!158635)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1933 (Regex!16326 Regex!16326 List!65277) Unit!158635)

(assert (=> b!6424304 (= lt!2377553 (lemmaExistCutMatchRandMatchRSpecEquivalent!1933 lt!2377533 (regTwo!33164 r!7292) s!2326))))

(declare-fun isDefined!12920 (Option!16217) Bool)

(assert (=> b!6424304 (= (isDefined!12920 lt!2377524) (Exists!3396 lambda!355023))))

(declare-fun findConcatSeparation!2631 (Regex!16326 Regex!16326 List!65277 List!65277 List!65277) Option!16217)

(assert (=> b!6424304 (= lt!2377524 (findConcatSeparation!2631 lt!2377533 (regTwo!33164 r!7292) Nil!65153 s!2326 s!2326))))

(declare-fun lt!2377531 () Unit!158635)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2395 (Regex!16326 Regex!16326 List!65277) Unit!158635)

(assert (=> b!6424304 (= lt!2377531 (lemmaFindConcatSeparationEquivalentToExists!2395 lt!2377533 (regTwo!33164 r!7292) s!2326))))

(declare-fun b!6424305 () Bool)

(declare-fun e!3897733 () Bool)

(declare-fun nullable!6319 (Regex!16326) Bool)

(assert (=> b!6424305 (= e!3897733 (nullable!6319 (regOne!33164 (regOne!33164 r!7292))))))

(declare-fun b!6424306 () Bool)

(declare-fun e!3897726 () Bool)

(declare-fun tp!1783389 () Bool)

(assert (=> b!6424306 (= e!3897726 tp!1783389)))

(declare-fun b!6424307 () Bool)

(declare-fun e!3897735 () Bool)

(declare-fun lt!2377536 () Bool)

(declare-fun lt!2377544 () Bool)

(assert (=> b!6424307 (= e!3897735 (or (not lt!2377536) lt!2377544))))

(declare-fun validRegex!8062 (Regex!16326) Bool)

(assert (=> b!6424308 (= e!3897731 (validRegex!8062 (reg!16655 (regOne!33164 r!7292))))))

(assert (=> b!6424308 (= (Exists!3396 lambda!355025) (Exists!3396 lambda!355026))))

(declare-fun lt!2377555 () Unit!158635)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!617 (Regex!16326 List!65277) Unit!158635)

(assert (=> b!6424308 (= lt!2377555 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!617 (reg!16655 (regOne!33164 r!7292)) (_1!36608 lt!2377560)))))

(assert (=> b!6424308 (= (isDefined!12920 (findConcatSeparation!2631 (reg!16655 (regOne!33164 r!7292)) lt!2377533 Nil!65153 (_1!36608 lt!2377560) (_1!36608 lt!2377560))) (Exists!3396 lambda!355025))))

(declare-fun lt!2377541 () Unit!158635)

(assert (=> b!6424308 (= lt!2377541 (lemmaFindConcatSeparationEquivalentToExists!2395 (reg!16655 (regOne!33164 r!7292)) lt!2377533 (_1!36608 lt!2377560)))))

(declare-fun matchRSpec!3427 (Regex!16326 List!65277) Bool)

(assert (=> b!6424308 (matchRSpec!3427 lt!2377533 (_1!36608 lt!2377560))))

(declare-fun lt!2377558 () Unit!158635)

(declare-fun mainMatchTheorem!3427 (Regex!16326 List!65277) Unit!158635)

(assert (=> b!6424308 (= lt!2377558 (mainMatchTheorem!3427 lt!2377533 (_1!36608 lt!2377560)))))

(declare-fun res!2640312 () Bool)

(declare-fun e!3897729 () Bool)

(assert (=> start!634732 (=> (not res!2640312) (not e!3897729))))

(assert (=> start!634732 (= res!2640312 (validRegex!8062 r!7292))))

(assert (=> start!634732 e!3897729))

(declare-fun e!3897741 () Bool)

(assert (=> start!634732 e!3897741))

(declare-fun condSetEmpty!43857 () Bool)

(declare-datatypes ((List!65278 0))(
  ( (Nil!65154) (Cons!65154 (h!71602 Regex!16326) (t!378894 List!65278)) )
))
(declare-datatypes ((Context!11420 0))(
  ( (Context!11421 (exprs!6210 List!65278)) )
))
(declare-fun z!1189 () (Set Context!11420))

(assert (=> start!634732 (= condSetEmpty!43857 (= z!1189 (as set.empty (Set Context!11420))))))

(declare-fun setRes!43857 () Bool)

(assert (=> start!634732 setRes!43857))

(declare-fun e!3897724 () Bool)

(assert (=> start!634732 e!3897724))

(declare-fun e!3897737 () Bool)

(assert (=> start!634732 e!3897737))

(declare-fun b!6424309 () Bool)

(declare-fun tp!1783395 () Bool)

(assert (=> b!6424309 (= e!3897741 tp!1783395)))

(declare-fun b!6424310 () Bool)

(declare-fun res!2640305 () Bool)

(declare-fun e!3897723 () Bool)

(assert (=> b!6424310 (=> res!2640305 e!3897723)))

(declare-datatypes ((List!65279 0))(
  ( (Nil!65155) (Cons!65155 (h!71603 Context!11420) (t!378895 List!65279)) )
))
(declare-fun zl!343 () List!65279)

(declare-fun generalisedUnion!2170 (List!65278) Regex!16326)

(declare-fun unfocusZipperList!1747 (List!65279) List!65278)

(assert (=> b!6424310 (= res!2640305 (not (= r!7292 (generalisedUnion!2170 (unfocusZipperList!1747 zl!343)))))))

(declare-fun b!6424311 () Bool)

(declare-fun e!3897734 () Unit!158635)

(declare-fun Unit!158637 () Unit!158635)

(assert (=> b!6424311 (= e!3897734 Unit!158637)))

(declare-fun lt!2377527 () (Set Context!11420))

(declare-fun lt!2377545 () Unit!158635)

(declare-fun lt!2377547 () (Set Context!11420))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1157 ((Set Context!11420) (Set Context!11420) List!65277) Unit!158635)

(assert (=> b!6424311 (= lt!2377545 (lemmaZipperConcatMatchesSameAsBothZippers!1157 lt!2377547 lt!2377527 (t!378893 s!2326)))))

(declare-fun res!2640298 () Bool)

(declare-fun matchZipper!2338 ((Set Context!11420) List!65277) Bool)

(assert (=> b!6424311 (= res!2640298 (matchZipper!2338 lt!2377547 (t!378893 s!2326)))))

(declare-fun e!3897727 () Bool)

(assert (=> b!6424311 (=> res!2640298 e!3897727)))

(assert (=> b!6424311 (= (matchZipper!2338 (set.union lt!2377547 lt!2377527) (t!378893 s!2326)) e!3897727)))

(declare-fun e!3897739 () Bool)

(assert (=> b!6424312 (= e!3897723 e!3897739)))

(declare-fun res!2640304 () Bool)

(assert (=> b!6424312 (=> res!2640304 e!3897739)))

(declare-fun lt!2377540 () Bool)

(assert (=> b!6424312 (= res!2640304 (or (not (= lt!2377536 lt!2377540)) (is-Nil!65153 s!2326)))))

(assert (=> b!6424312 (= (Exists!3396 lambda!355020) (Exists!3396 lambda!355021))))

(declare-fun lt!2377537 () Unit!158635)

(assert (=> b!6424312 (= lt!2377537 (lemmaExistCutMatchRandMatchRSpecEquivalent!1933 (regOne!33164 r!7292) (regTwo!33164 r!7292) s!2326))))

(assert (=> b!6424312 (= lt!2377540 (Exists!3396 lambda!355020))))

(assert (=> b!6424312 (= lt!2377540 (isDefined!12920 (findConcatSeparation!2631 (regOne!33164 r!7292) (regTwo!33164 r!7292) Nil!65153 s!2326 s!2326)))))

(declare-fun lt!2377542 () Unit!158635)

(assert (=> b!6424312 (= lt!2377542 (lemmaFindConcatSeparationEquivalentToExists!2395 (regOne!33164 r!7292) (regTwo!33164 r!7292) s!2326))))

(declare-fun b!6424313 () Bool)

(declare-fun res!2640307 () Bool)

(declare-fun e!3897740 () Bool)

(assert (=> b!6424313 (=> res!2640307 e!3897740)))

(declare-fun lt!2377530 () (Set Context!11420))

(declare-fun lt!2377562 () (Set Context!11420))

(assert (=> b!6424313 (= res!2640307 (not (= (matchZipper!2338 lt!2377530 s!2326) (matchZipper!2338 lt!2377562 (t!378893 s!2326)))))))

(declare-fun b!6424314 () Bool)

(declare-fun Unit!158638 () Unit!158635)

(assert (=> b!6424314 (= e!3897734 Unit!158638)))

(declare-fun b!6424315 () Bool)

(declare-fun tp_is_empty!41905 () Bool)

(declare-fun tp!1783391 () Bool)

(assert (=> b!6424315 (= e!3897737 (and tp_is_empty!41905 tp!1783391))))

(declare-fun tp!1783392 () Bool)

(declare-fun b!6424316 () Bool)

(declare-fun e!3897742 () Bool)

(declare-fun inv!84063 (Context!11420) Bool)

(assert (=> b!6424316 (= e!3897724 (and (inv!84063 (h!71603 zl!343)) e!3897742 tp!1783392))))

(declare-fun b!6424317 () Bool)

(declare-fun tp!1783393 () Bool)

(declare-fun tp!1783394 () Bool)

(assert (=> b!6424317 (= e!3897741 (and tp!1783393 tp!1783394))))

(declare-fun b!6424318 () Bool)

(declare-fun res!2640310 () Bool)

(assert (=> b!6424318 (=> res!2640310 e!3897723)))

(assert (=> b!6424318 (= res!2640310 (or (is-EmptyExpr!16326 r!7292) (is-EmptyLang!16326 r!7292) (is-ElementMatch!16326 r!7292) (is-Union!16326 r!7292) (not (is-Concat!25171 r!7292))))))

(declare-fun b!6424319 () Bool)

(declare-fun res!2640284 () Bool)

(declare-fun e!3897738 () Bool)

(assert (=> b!6424319 (=> res!2640284 e!3897738)))

(assert (=> b!6424319 (= res!2640284 (or (is-Concat!25171 (regOne!33164 r!7292)) (not (is-Star!16326 (regOne!33164 r!7292)))))))

(declare-fun b!6424320 () Bool)

(declare-fun res!2640286 () Bool)

(assert (=> b!6424320 (=> res!2640286 e!3897723)))

(assert (=> b!6424320 (= res!2640286 (not (is-Cons!65154 (exprs!6210 (h!71603 zl!343)))))))

(declare-fun b!6424321 () Bool)

(assert (=> b!6424321 (= e!3897741 tp_is_empty!41905)))

(declare-fun b!6424322 () Bool)

(declare-fun res!2640301 () Bool)

(assert (=> b!6424322 (=> res!2640301 e!3897738)))

(assert (=> b!6424322 (= res!2640301 e!3897733)))

(declare-fun res!2640299 () Bool)

(assert (=> b!6424322 (=> (not res!2640299) (not e!3897733))))

(assert (=> b!6424322 (= res!2640299 (is-Concat!25171 (regOne!33164 r!7292)))))

(declare-fun b!6424323 () Bool)

(declare-fun e!3897725 () Bool)

(assert (=> b!6424323 (= e!3897740 e!3897725)))

(declare-fun res!2640295 () Bool)

(assert (=> b!6424323 (=> res!2640295 e!3897725)))

(declare-fun lt!2377559 () Regex!16326)

(assert (=> b!6424323 (= res!2640295 (not (= r!7292 lt!2377559)))))

(assert (=> b!6424323 (= lt!2377559 (Concat!25171 lt!2377533 (regTwo!33164 r!7292)))))

(declare-fun b!6424324 () Bool)

(declare-fun res!2640283 () Bool)

(assert (=> b!6424324 (=> res!2640283 e!3897740)))

(declare-fun lt!2377534 () Regex!16326)

(assert (=> b!6424324 (= res!2640283 (not (= lt!2377534 r!7292)))))

(declare-fun b!6424325 () Bool)

(assert (=> b!6424325 (= e!3897727 (matchZipper!2338 lt!2377527 (t!378893 s!2326)))))

(declare-fun b!6424326 () Bool)

(declare-fun res!2640294 () Bool)

(declare-fun e!3897730 () Bool)

(assert (=> b!6424326 (=> res!2640294 e!3897730)))

(declare-fun lt!2377543 () Context!11420)

(declare-fun unfocusZipper!2068 (List!65279) Regex!16326)

(assert (=> b!6424326 (= res!2640294 (not (= (unfocusZipper!2068 (Cons!65155 lt!2377543 Nil!65155)) lt!2377559)))))

(declare-fun b!6424327 () Bool)

(declare-fun e!3897732 () Bool)

(assert (=> b!6424327 (= e!3897729 e!3897732)))

(declare-fun res!2640303 () Bool)

(assert (=> b!6424327 (=> (not res!2640303) (not e!3897732))))

(assert (=> b!6424327 (= res!2640303 (= r!7292 lt!2377534))))

(assert (=> b!6424327 (= lt!2377534 (unfocusZipper!2068 zl!343))))

(declare-fun b!6424328 () Bool)

(declare-fun e!3897743 () Bool)

(assert (=> b!6424328 (= e!3897738 e!3897743)))

(declare-fun res!2640297 () Bool)

(assert (=> b!6424328 (=> res!2640297 e!3897743)))

(declare-fun lt!2377557 () (Set Context!11420))

(assert (=> b!6424328 (= res!2640297 (not (= lt!2377547 lt!2377557)))))

(declare-fun derivationStepZipperDown!1574 (Regex!16326 Context!11420 C!32922) (Set Context!11420))

(assert (=> b!6424328 (= lt!2377557 (derivationStepZipperDown!1574 (reg!16655 (regOne!33164 r!7292)) lt!2377543 (h!71601 s!2326)))))

(declare-fun lt!2377551 () List!65278)

(assert (=> b!6424328 (= lt!2377543 (Context!11421 lt!2377551))))

(assert (=> b!6424328 (= lt!2377551 (Cons!65154 lt!2377533 (t!378894 (exprs!6210 (h!71603 zl!343)))))))

(assert (=> b!6424328 (= lt!2377533 (Star!16326 (reg!16655 (regOne!33164 r!7292))))))

(declare-fun b!6424329 () Bool)

(assert (=> b!6424329 (= e!3897730 e!3897728)))

(declare-fun res!2640296 () Bool)

(assert (=> b!6424329 (=> res!2640296 e!3897728)))

(assert (=> b!6424329 (= res!2640296 (not lt!2377536))))

(assert (=> b!6424329 e!3897735))

(declare-fun res!2640308 () Bool)

(assert (=> b!6424329 (=> (not res!2640308) (not e!3897735))))

(declare-fun lt!2377550 () Regex!16326)

(declare-fun matchR!8509 (Regex!16326 List!65277) Bool)

(assert (=> b!6424329 (= res!2640308 (= (matchR!8509 lt!2377550 s!2326) (matchRSpec!3427 lt!2377550 s!2326)))))

(declare-fun lt!2377532 () Unit!158635)

(assert (=> b!6424329 (= lt!2377532 (mainMatchTheorem!3427 lt!2377550 s!2326))))

(declare-fun b!6424330 () Bool)

(declare-fun e!3897736 () Bool)

(assert (=> b!6424330 (= e!3897736 e!3897730)))

(declare-fun res!2640309 () Bool)

(assert (=> b!6424330 (=> res!2640309 e!3897730)))

(declare-fun lt!2377549 () Context!11420)

(assert (=> b!6424330 (= res!2640309 (not (= (unfocusZipper!2068 (Cons!65155 lt!2377549 Nil!65155)) (reg!16655 (regOne!33164 r!7292)))))))

(declare-fun lambda!355022 () Int)

(declare-fun lt!2377546 () (Set Context!11420))

(declare-fun flatMap!1831 ((Set Context!11420) Int) (Set Context!11420))

(declare-fun derivationStepZipperUp!1500 (Context!11420 C!32922) (Set Context!11420))

(assert (=> b!6424330 (= (flatMap!1831 lt!2377546 lambda!355022) (derivationStepZipperUp!1500 lt!2377543 (h!71601 s!2326)))))

(declare-fun lt!2377523 () Unit!158635)

(declare-fun lemmaFlatMapOnSingletonSet!1357 ((Set Context!11420) Context!11420 Int) Unit!158635)

(assert (=> b!6424330 (= lt!2377523 (lemmaFlatMapOnSingletonSet!1357 lt!2377546 lt!2377543 lambda!355022))))

(declare-fun lt!2377538 () (Set Context!11420))

(assert (=> b!6424330 (= (flatMap!1831 lt!2377538 lambda!355022) (derivationStepZipperUp!1500 lt!2377549 (h!71601 s!2326)))))

(declare-fun lt!2377535 () Unit!158635)

(assert (=> b!6424330 (= lt!2377535 (lemmaFlatMapOnSingletonSet!1357 lt!2377538 lt!2377549 lambda!355022))))

(declare-fun lt!2377526 () (Set Context!11420))

(assert (=> b!6424330 (= lt!2377526 (derivationStepZipperUp!1500 lt!2377543 (h!71601 s!2326)))))

(declare-fun lt!2377539 () (Set Context!11420))

(assert (=> b!6424330 (= lt!2377539 (derivationStepZipperUp!1500 lt!2377549 (h!71601 s!2326)))))

(assert (=> b!6424330 (= lt!2377546 (set.insert lt!2377543 (as set.empty (Set Context!11420))))))

(assert (=> b!6424330 (= lt!2377538 (set.insert lt!2377549 (as set.empty (Set Context!11420))))))

(assert (=> b!6424330 (= lt!2377549 (Context!11421 (Cons!65154 (reg!16655 (regOne!33164 r!7292)) Nil!65154)))))

(assert (=> b!6424331 (= e!3897739 e!3897738)))

(declare-fun res!2640311 () Bool)

(assert (=> b!6424331 (=> res!2640311 e!3897738)))

(assert (=> b!6424331 (= res!2640311 (or (and (is-ElementMatch!16326 (regOne!33164 r!7292)) (= (c!1173847 (regOne!33164 r!7292)) (h!71601 s!2326))) (is-Union!16326 (regOne!33164 r!7292))))))

(declare-fun lt!2377554 () Unit!158635)

(assert (=> b!6424331 (= lt!2377554 e!3897734)))

(declare-fun c!1173846 () Bool)

(assert (=> b!6424331 (= c!1173846 (nullable!6319 (h!71602 (exprs!6210 (h!71603 zl!343)))))))

(assert (=> b!6424331 (= (flatMap!1831 z!1189 lambda!355022) (derivationStepZipperUp!1500 (h!71603 zl!343) (h!71601 s!2326)))))

(declare-fun lt!2377525 () Unit!158635)

(assert (=> b!6424331 (= lt!2377525 (lemmaFlatMapOnSingletonSet!1357 z!1189 (h!71603 zl!343) lambda!355022))))

(declare-fun lt!2377528 () Context!11420)

(assert (=> b!6424331 (= lt!2377527 (derivationStepZipperUp!1500 lt!2377528 (h!71601 s!2326)))))

(assert (=> b!6424331 (= lt!2377547 (derivationStepZipperDown!1574 (h!71602 (exprs!6210 (h!71603 zl!343))) lt!2377528 (h!71601 s!2326)))))

(assert (=> b!6424331 (= lt!2377528 (Context!11421 (t!378894 (exprs!6210 (h!71603 zl!343)))))))

(declare-fun lt!2377552 () (Set Context!11420))

(assert (=> b!6424331 (= lt!2377552 (derivationStepZipperUp!1500 (Context!11421 (Cons!65154 (h!71602 (exprs!6210 (h!71603 zl!343))) (t!378894 (exprs!6210 (h!71603 zl!343))))) (h!71601 s!2326)))))

(declare-fun b!6424332 () Bool)

(declare-fun res!2640285 () Bool)

(assert (=> b!6424332 (=> res!2640285 e!3897731)))

(assert (=> b!6424332 (= res!2640285 (not (matchR!8509 lt!2377533 (_1!36608 lt!2377560))))))

(declare-fun b!6424333 () Bool)

(declare-fun res!2640292 () Bool)

(assert (=> b!6424333 (=> (not res!2640292) (not e!3897729))))

(declare-fun toList!10110 ((Set Context!11420)) List!65279)

(assert (=> b!6424333 (= res!2640292 (= (toList!10110 z!1189) zl!343))))

(declare-fun b!6424334 () Bool)

(assert (=> b!6424334 (= e!3897725 e!3897736)))

(declare-fun res!2640289 () Bool)

(assert (=> b!6424334 (=> res!2640289 e!3897736)))

(declare-fun lt!2377556 () Context!11420)

(assert (=> b!6424334 (= res!2640289 (not (= (unfocusZipper!2068 (Cons!65155 lt!2377556 Nil!65155)) lt!2377550)))))

(assert (=> b!6424334 (= lt!2377550 (Concat!25171 (reg!16655 (regOne!33164 r!7292)) lt!2377559))))

(declare-fun b!6424335 () Bool)

(declare-fun tp!1783390 () Bool)

(assert (=> b!6424335 (= e!3897742 tp!1783390)))

(declare-fun b!6424336 () Bool)

(assert (=> b!6424336 (= e!3897732 (not e!3897723))))

(declare-fun res!2640300 () Bool)

(assert (=> b!6424336 (=> res!2640300 e!3897723)))

(assert (=> b!6424336 (= res!2640300 (not (is-Cons!65155 zl!343)))))

(assert (=> b!6424336 (= lt!2377536 lt!2377544)))

(assert (=> b!6424336 (= lt!2377544 (matchRSpec!3427 r!7292 s!2326))))

(assert (=> b!6424336 (= lt!2377536 (matchR!8509 r!7292 s!2326))))

(declare-fun lt!2377548 () Unit!158635)

(assert (=> b!6424336 (= lt!2377548 (mainMatchTheorem!3427 r!7292 s!2326))))

(declare-fun b!6424337 () Bool)

(declare-fun tp!1783396 () Bool)

(declare-fun tp!1783388 () Bool)

(assert (=> b!6424337 (= e!3897741 (and tp!1783396 tp!1783388))))

(declare-fun b!6424338 () Bool)

(assert (=> b!6424338 (= e!3897743 e!3897740)))

(declare-fun res!2640288 () Bool)

(assert (=> b!6424338 (=> res!2640288 e!3897740)))

(assert (=> b!6424338 (= res!2640288 (not (= lt!2377562 lt!2377557)))))

(assert (=> b!6424338 (= (flatMap!1831 lt!2377530 lambda!355022) (derivationStepZipperUp!1500 lt!2377556 (h!71601 s!2326)))))

(declare-fun lt!2377561 () Unit!158635)

(assert (=> b!6424338 (= lt!2377561 (lemmaFlatMapOnSingletonSet!1357 lt!2377530 lt!2377556 lambda!355022))))

(declare-fun lt!2377529 () (Set Context!11420))

(assert (=> b!6424338 (= lt!2377529 (derivationStepZipperUp!1500 lt!2377556 (h!71601 s!2326)))))

(declare-fun derivationStepZipper!2292 ((Set Context!11420) C!32922) (Set Context!11420))

(assert (=> b!6424338 (= lt!2377562 (derivationStepZipper!2292 lt!2377530 (h!71601 s!2326)))))

(assert (=> b!6424338 (= lt!2377530 (set.insert lt!2377556 (as set.empty (Set Context!11420))))))

(assert (=> b!6424338 (= lt!2377556 (Context!11421 (Cons!65154 (reg!16655 (regOne!33164 r!7292)) lt!2377551)))))

(declare-fun setNonEmpty!43857 () Bool)

(declare-fun setElem!43857 () Context!11420)

(declare-fun tp!1783387 () Bool)

(assert (=> setNonEmpty!43857 (= setRes!43857 (and tp!1783387 (inv!84063 setElem!43857) e!3897726))))

(declare-fun setRest!43857 () (Set Context!11420))

(assert (=> setNonEmpty!43857 (= z!1189 (set.union (set.insert setElem!43857 (as set.empty (Set Context!11420))) setRest!43857))))

(declare-fun b!6424339 () Bool)

(declare-fun res!2640290 () Bool)

(assert (=> b!6424339 (=> res!2640290 e!3897739)))

(declare-fun isEmpty!37313 (List!65278) Bool)

(assert (=> b!6424339 (= res!2640290 (isEmpty!37313 (t!378894 (exprs!6210 (h!71603 zl!343)))))))

(declare-fun b!6424340 () Bool)

(declare-fun res!2640287 () Bool)

(assert (=> b!6424340 (=> res!2640287 e!3897723)))

(declare-fun isEmpty!37314 (List!65279) Bool)

(assert (=> b!6424340 (= res!2640287 (not (isEmpty!37314 (t!378895 zl!343))))))

(declare-fun b!6424341 () Bool)

(declare-fun res!2640293 () Bool)

(assert (=> b!6424341 (=> res!2640293 e!3897731)))

(declare-fun isEmpty!37315 (List!65277) Bool)

(assert (=> b!6424341 (= res!2640293 (isEmpty!37315 (_1!36608 lt!2377560)))))

(declare-fun b!6424342 () Bool)

(declare-fun res!2640291 () Bool)

(assert (=> b!6424342 (=> res!2640291 e!3897723)))

(declare-fun generalisedConcat!1923 (List!65278) Regex!16326)

(assert (=> b!6424342 (= res!2640291 (not (= r!7292 (generalisedConcat!1923 (exprs!6210 (h!71603 zl!343))))))))

(declare-fun b!6424343 () Bool)

(declare-fun res!2640306 () Bool)

(assert (=> b!6424343 (=> res!2640306 e!3897731)))

(assert (=> b!6424343 (= res!2640306 (not (matchR!8509 (regTwo!33164 r!7292) (_2!36608 lt!2377560))))))

(declare-fun setIsEmpty!43857 () Bool)

(assert (=> setIsEmpty!43857 setRes!43857))

(assert (= (and start!634732 res!2640312) b!6424333))

(assert (= (and b!6424333 res!2640292) b!6424327))

(assert (= (and b!6424327 res!2640303) b!6424336))

(assert (= (and b!6424336 (not res!2640300)) b!6424340))

(assert (= (and b!6424340 (not res!2640287)) b!6424342))

(assert (= (and b!6424342 (not res!2640291)) b!6424320))

(assert (= (and b!6424320 (not res!2640286)) b!6424310))

(assert (= (and b!6424310 (not res!2640305)) b!6424318))

(assert (= (and b!6424318 (not res!2640310)) b!6424312))

(assert (= (and b!6424312 (not res!2640304)) b!6424339))

(assert (= (and b!6424339 (not res!2640290)) b!6424331))

(assert (= (and b!6424331 c!1173846) b!6424311))

(assert (= (and b!6424331 (not c!1173846)) b!6424314))

(assert (= (and b!6424311 (not res!2640298)) b!6424325))

(assert (= (and b!6424331 (not res!2640311)) b!6424322))

(assert (= (and b!6424322 res!2640299) b!6424305))

(assert (= (and b!6424322 (not res!2640301)) b!6424319))

(assert (= (and b!6424319 (not res!2640284)) b!6424328))

(assert (= (and b!6424328 (not res!2640297)) b!6424338))

(assert (= (and b!6424338 (not res!2640288)) b!6424313))

(assert (= (and b!6424313 (not res!2640307)) b!6424324))

(assert (= (and b!6424324 (not res!2640283)) b!6424323))

(assert (= (and b!6424323 (not res!2640295)) b!6424334))

(assert (= (and b!6424334 (not res!2640289)) b!6424330))

(assert (= (and b!6424330 (not res!2640309)) b!6424326))

(assert (= (and b!6424326 (not res!2640294)) b!6424329))

(assert (= (and b!6424329 res!2640308) b!6424307))

(assert (= (and b!6424329 (not res!2640296)) b!6424304))

(assert (= (and b!6424304 (not res!2640302)) b!6424332))

(assert (= (and b!6424332 (not res!2640285)) b!6424343))

(assert (= (and b!6424343 (not res!2640306)) b!6424341))

(assert (= (and b!6424341 (not res!2640293)) b!6424308))

(assert (= (and start!634732 (is-ElementMatch!16326 r!7292)) b!6424321))

(assert (= (and start!634732 (is-Concat!25171 r!7292)) b!6424337))

(assert (= (and start!634732 (is-Star!16326 r!7292)) b!6424309))

(assert (= (and start!634732 (is-Union!16326 r!7292)) b!6424317))

(assert (= (and start!634732 condSetEmpty!43857) setIsEmpty!43857))

(assert (= (and start!634732 (not condSetEmpty!43857)) setNonEmpty!43857))

(assert (= setNonEmpty!43857 b!6424306))

(assert (= b!6424316 b!6424335))

(assert (= (and start!634732 (is-Cons!65155 zl!343)) b!6424316))

(assert (= (and start!634732 (is-Cons!65153 s!2326)) b!6424315))

(declare-fun m!7218568 () Bool)

(assert (=> b!6424331 m!7218568))

(declare-fun m!7218570 () Bool)

(assert (=> b!6424331 m!7218570))

(declare-fun m!7218572 () Bool)

(assert (=> b!6424331 m!7218572))

(declare-fun m!7218574 () Bool)

(assert (=> b!6424331 m!7218574))

(declare-fun m!7218576 () Bool)

(assert (=> b!6424331 m!7218576))

(declare-fun m!7218578 () Bool)

(assert (=> b!6424331 m!7218578))

(declare-fun m!7218580 () Bool)

(assert (=> b!6424331 m!7218580))

(declare-fun m!7218582 () Bool)

(assert (=> b!6424332 m!7218582))

(declare-fun m!7218584 () Bool)

(assert (=> b!6424313 m!7218584))

(declare-fun m!7218586 () Bool)

(assert (=> b!6424313 m!7218586))

(declare-fun m!7218588 () Bool)

(assert (=> b!6424336 m!7218588))

(declare-fun m!7218590 () Bool)

(assert (=> b!6424336 m!7218590))

(declare-fun m!7218592 () Bool)

(assert (=> b!6424336 m!7218592))

(declare-fun m!7218594 () Bool)

(assert (=> b!6424334 m!7218594))

(declare-fun m!7218596 () Bool)

(assert (=> b!6424311 m!7218596))

(declare-fun m!7218598 () Bool)

(assert (=> b!6424311 m!7218598))

(declare-fun m!7218600 () Bool)

(assert (=> b!6424311 m!7218600))

(declare-fun m!7218602 () Bool)

(assert (=> b!6424340 m!7218602))

(declare-fun m!7218604 () Bool)

(assert (=> b!6424325 m!7218604))

(declare-fun m!7218606 () Bool)

(assert (=> b!6424326 m!7218606))

(declare-fun m!7218608 () Bool)

(assert (=> b!6424305 m!7218608))

(declare-fun m!7218610 () Bool)

(assert (=> b!6424316 m!7218610))

(declare-fun m!7218612 () Bool)

(assert (=> b!6424327 m!7218612))

(declare-fun m!7218614 () Bool)

(assert (=> b!6424308 m!7218614))

(declare-fun m!7218616 () Bool)

(assert (=> b!6424308 m!7218616))

(declare-fun m!7218618 () Bool)

(assert (=> b!6424308 m!7218618))

(declare-fun m!7218620 () Bool)

(assert (=> b!6424308 m!7218620))

(declare-fun m!7218622 () Bool)

(assert (=> b!6424308 m!7218622))

(declare-fun m!7218624 () Bool)

(assert (=> b!6424308 m!7218624))

(declare-fun m!7218626 () Bool)

(assert (=> b!6424308 m!7218626))

(declare-fun m!7218628 () Bool)

(assert (=> b!6424308 m!7218628))

(declare-fun m!7218630 () Bool)

(assert (=> b!6424308 m!7218630))

(assert (=> b!6424308 m!7218624))

(assert (=> b!6424308 m!7218618))

(declare-fun m!7218632 () Bool)

(assert (=> b!6424338 m!7218632))

(declare-fun m!7218634 () Bool)

(assert (=> b!6424338 m!7218634))

(declare-fun m!7218636 () Bool)

(assert (=> b!6424338 m!7218636))

(declare-fun m!7218638 () Bool)

(assert (=> b!6424338 m!7218638))

(declare-fun m!7218640 () Bool)

(assert (=> b!6424338 m!7218640))

(declare-fun m!7218642 () Bool)

(assert (=> b!6424310 m!7218642))

(assert (=> b!6424310 m!7218642))

(declare-fun m!7218644 () Bool)

(assert (=> b!6424310 m!7218644))

(declare-fun m!7218646 () Bool)

(assert (=> b!6424341 m!7218646))

(declare-fun m!7218648 () Bool)

(assert (=> start!634732 m!7218648))

(declare-fun m!7218650 () Bool)

(assert (=> b!6424339 m!7218650))

(declare-fun m!7218652 () Bool)

(assert (=> b!6424304 m!7218652))

(declare-fun m!7218654 () Bool)

(assert (=> b!6424304 m!7218654))

(declare-fun m!7218656 () Bool)

(assert (=> b!6424304 m!7218656))

(assert (=> b!6424304 m!7218652))

(declare-fun m!7218658 () Bool)

(assert (=> b!6424304 m!7218658))

(declare-fun m!7218660 () Bool)

(assert (=> b!6424304 m!7218660))

(declare-fun m!7218662 () Bool)

(assert (=> b!6424304 m!7218662))

(declare-fun m!7218664 () Bool)

(assert (=> b!6424304 m!7218664))

(declare-fun m!7218666 () Bool)

(assert (=> b!6424304 m!7218666))

(declare-fun m!7218668 () Bool)

(assert (=> b!6424342 m!7218668))

(declare-fun m!7218670 () Bool)

(assert (=> b!6424312 m!7218670))

(declare-fun m!7218672 () Bool)

(assert (=> b!6424312 m!7218672))

(declare-fun m!7218674 () Bool)

(assert (=> b!6424312 m!7218674))

(assert (=> b!6424312 m!7218674))

(declare-fun m!7218676 () Bool)

(assert (=> b!6424312 m!7218676))

(declare-fun m!7218678 () Bool)

(assert (=> b!6424312 m!7218678))

(assert (=> b!6424312 m!7218670))

(declare-fun m!7218680 () Bool)

(assert (=> b!6424312 m!7218680))

(declare-fun m!7218682 () Bool)

(assert (=> setNonEmpty!43857 m!7218682))

(declare-fun m!7218684 () Bool)

(assert (=> b!6424328 m!7218684))

(declare-fun m!7218686 () Bool)

(assert (=> b!6424329 m!7218686))

(declare-fun m!7218688 () Bool)

(assert (=> b!6424329 m!7218688))

(declare-fun m!7218690 () Bool)

(assert (=> b!6424329 m!7218690))

(declare-fun m!7218692 () Bool)

(assert (=> b!6424333 m!7218692))

(declare-fun m!7218694 () Bool)

(assert (=> b!6424343 m!7218694))

(declare-fun m!7218696 () Bool)

(assert (=> b!6424330 m!7218696))

(declare-fun m!7218698 () Bool)

(assert (=> b!6424330 m!7218698))

(declare-fun m!7218700 () Bool)

(assert (=> b!6424330 m!7218700))

(declare-fun m!7218702 () Bool)

(assert (=> b!6424330 m!7218702))

(declare-fun m!7218704 () Bool)

(assert (=> b!6424330 m!7218704))

(declare-fun m!7218706 () Bool)

(assert (=> b!6424330 m!7218706))

(declare-fun m!7218708 () Bool)

(assert (=> b!6424330 m!7218708))

(declare-fun m!7218710 () Bool)

(assert (=> b!6424330 m!7218710))

(declare-fun m!7218712 () Bool)

(assert (=> b!6424330 m!7218712))

(push 1)

(assert (not b!6424342))

(assert (not b!6424336))

(assert tp_is_empty!41905)

(assert (not b!6424335))

(assert (not b!6424329))

(assert (not b!6424312))

(assert (not b!6424343))

(assert (not b!6424311))

(assert (not b!6424328))

(assert (not b!6424338))

(assert (not b!6424340))

(assert (not b!6424305))

(assert (not b!6424309))

(assert (not b!6424306))

(assert (not setNonEmpty!43857))

(assert (not b!6424317))

(assert (not b!6424308))

(assert (not b!6424327))

(assert (not b!6424315))

(assert (not start!634732))

(assert (not b!6424341))

(assert (not b!6424339))

(assert (not b!6424316))

(assert (not b!6424333))

(assert (not b!6424334))

(assert (not b!6424304))

(assert (not b!6424326))

(assert (not b!6424331))

(assert (not b!6424325))

(assert (not b!6424310))

(assert (not b!6424332))

(assert (not b!6424313))

(assert (not b!6424330))

(assert (not b!6424337))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2014297 () Bool)

(assert (=> d!2014297 (= (isEmpty!37313 (t!378894 (exprs!6210 (h!71603 zl!343)))) (is-Nil!65154 (t!378894 (exprs!6210 (h!71603 zl!343)))))))

(assert (=> b!6424339 d!2014297))

(declare-fun d!2014299 () Bool)

(assert (=> d!2014299 (= (isEmpty!37314 (t!378895 zl!343)) (is-Nil!65155 (t!378895 zl!343)))))

(assert (=> b!6424340 d!2014299))

(declare-fun d!2014301 () Bool)

(assert (=> d!2014301 (= (isEmpty!37315 (_1!36608 lt!2377560)) (is-Nil!65153 (_1!36608 lt!2377560)))))

(assert (=> b!6424341 d!2014301))

(declare-fun b!6424538 () Bool)

(declare-fun e!3897839 () Bool)

(declare-fun lt!2377685 () Regex!16326)

(declare-fun isEmptyExpr!1727 (Regex!16326) Bool)

(assert (=> b!6424538 (= e!3897839 (isEmptyExpr!1727 lt!2377685))))

(declare-fun b!6424539 () Bool)

(declare-fun e!3897837 () Bool)

(declare-fun head!13143 (List!65278) Regex!16326)

(assert (=> b!6424539 (= e!3897837 (= lt!2377685 (head!13143 (exprs!6210 (h!71603 zl!343)))))))

(declare-fun b!6424541 () Bool)

(declare-fun e!3897840 () Regex!16326)

(assert (=> b!6424541 (= e!3897840 (Concat!25171 (h!71602 (exprs!6210 (h!71603 zl!343))) (generalisedConcat!1923 (t!378894 (exprs!6210 (h!71603 zl!343))))))))

(declare-fun b!6424542 () Bool)

(declare-fun e!3897838 () Regex!16326)

(assert (=> b!6424542 (= e!3897838 (h!71602 (exprs!6210 (h!71603 zl!343))))))

(declare-fun b!6424543 () Bool)

(assert (=> b!6424543 (= e!3897839 e!3897837)))

(declare-fun c!1173871 () Bool)

(declare-fun tail!12228 (List!65278) List!65278)

(assert (=> b!6424543 (= c!1173871 (isEmpty!37313 (tail!12228 (exprs!6210 (h!71603 zl!343)))))))

(declare-fun b!6424544 () Bool)

(declare-fun isConcat!1250 (Regex!16326) Bool)

(assert (=> b!6424544 (= e!3897837 (isConcat!1250 lt!2377685))))

(declare-fun b!6424545 () Bool)

(assert (=> b!6424545 (= e!3897838 e!3897840)))

(declare-fun c!1173869 () Bool)

(assert (=> b!6424545 (= c!1173869 (is-Cons!65154 (exprs!6210 (h!71603 zl!343))))))

(declare-fun b!6424540 () Bool)

(declare-fun e!3897842 () Bool)

(assert (=> b!6424540 (= e!3897842 (isEmpty!37313 (t!378894 (exprs!6210 (h!71603 zl!343)))))))

(declare-fun d!2014303 () Bool)

(declare-fun e!3897841 () Bool)

(assert (=> d!2014303 e!3897841))

(declare-fun res!2640445 () Bool)

(assert (=> d!2014303 (=> (not res!2640445) (not e!3897841))))

(assert (=> d!2014303 (= res!2640445 (validRegex!8062 lt!2377685))))

(assert (=> d!2014303 (= lt!2377685 e!3897838)))

(declare-fun c!1173872 () Bool)

(assert (=> d!2014303 (= c!1173872 e!3897842)))

(declare-fun res!2640446 () Bool)

(assert (=> d!2014303 (=> (not res!2640446) (not e!3897842))))

(assert (=> d!2014303 (= res!2640446 (is-Cons!65154 (exprs!6210 (h!71603 zl!343))))))

(declare-fun lambda!355062 () Int)

(declare-fun forall!15516 (List!65278 Int) Bool)

(assert (=> d!2014303 (forall!15516 (exprs!6210 (h!71603 zl!343)) lambda!355062)))

(assert (=> d!2014303 (= (generalisedConcat!1923 (exprs!6210 (h!71603 zl!343))) lt!2377685)))

(declare-fun b!6424546 () Bool)

(assert (=> b!6424546 (= e!3897841 e!3897839)))

(declare-fun c!1173870 () Bool)

(assert (=> b!6424546 (= c!1173870 (isEmpty!37313 (exprs!6210 (h!71603 zl!343))))))

(declare-fun b!6424547 () Bool)

(assert (=> b!6424547 (= e!3897840 EmptyExpr!16326)))

(assert (= (and d!2014303 res!2640446) b!6424540))

(assert (= (and d!2014303 c!1173872) b!6424542))

(assert (= (and d!2014303 (not c!1173872)) b!6424545))

(assert (= (and b!6424545 c!1173869) b!6424541))

(assert (= (and b!6424545 (not c!1173869)) b!6424547))

(assert (= (and d!2014303 res!2640445) b!6424546))

(assert (= (and b!6424546 c!1173870) b!6424538))

(assert (= (and b!6424546 (not c!1173870)) b!6424543))

(assert (= (and b!6424543 c!1173871) b!6424539))

(assert (= (and b!6424543 (not c!1173871)) b!6424544))

(declare-fun m!7218860 () Bool)

(assert (=> b!6424544 m!7218860))

(declare-fun m!7218862 () Bool)

(assert (=> d!2014303 m!7218862))

(declare-fun m!7218864 () Bool)

(assert (=> d!2014303 m!7218864))

(declare-fun m!7218866 () Bool)

(assert (=> b!6424543 m!7218866))

(assert (=> b!6424543 m!7218866))

(declare-fun m!7218868 () Bool)

(assert (=> b!6424543 m!7218868))

(declare-fun m!7218870 () Bool)

(assert (=> b!6424541 m!7218870))

(declare-fun m!7218872 () Bool)

(assert (=> b!6424538 m!7218872))

(assert (=> b!6424540 m!7218650))

(declare-fun m!7218874 () Bool)

(assert (=> b!6424539 m!7218874))

(declare-fun m!7218876 () Bool)

(assert (=> b!6424546 m!7218876))

(assert (=> b!6424342 d!2014303))

(declare-fun b!6424576 () Bool)

(declare-fun e!3897857 () Bool)

(declare-fun head!13144 (List!65277) C!32922)

(assert (=> b!6424576 (= e!3897857 (= (head!13144 (_2!36608 lt!2377560)) (c!1173847 (regTwo!33164 r!7292))))))

(declare-fun b!6424577 () Bool)

(declare-fun e!3897859 () Bool)

(declare-fun e!3897862 () Bool)

(assert (=> b!6424577 (= e!3897859 e!3897862)))

(declare-fun res!2640467 () Bool)

(assert (=> b!6424577 (=> res!2640467 e!3897862)))

(declare-fun call!552545 () Bool)

(assert (=> b!6424577 (= res!2640467 call!552545)))

(declare-fun b!6424578 () Bool)

(declare-fun e!3897861 () Bool)

(assert (=> b!6424578 (= e!3897861 (nullable!6319 (regTwo!33164 r!7292)))))

(declare-fun b!6424579 () Bool)

(declare-fun res!2640465 () Bool)

(declare-fun e!3897860 () Bool)

(assert (=> b!6424579 (=> res!2640465 e!3897860)))

(assert (=> b!6424579 (= res!2640465 (not (is-ElementMatch!16326 (regTwo!33164 r!7292))))))

(declare-fun e!3897863 () Bool)

(assert (=> b!6424579 (= e!3897863 e!3897860)))

(declare-fun b!6424580 () Bool)

(declare-fun e!3897858 () Bool)

(declare-fun lt!2377688 () Bool)

(assert (=> b!6424580 (= e!3897858 (= lt!2377688 call!552545))))

(declare-fun b!6424581 () Bool)

(declare-fun res!2640470 () Bool)

(assert (=> b!6424581 (=> (not res!2640470) (not e!3897857))))

(assert (=> b!6424581 (= res!2640470 (not call!552545))))

(declare-fun b!6424582 () Bool)

(assert (=> b!6424582 (= e!3897863 (not lt!2377688))))

(declare-fun b!6424583 () Bool)

(assert (=> b!6424583 (= e!3897862 (not (= (head!13144 (_2!36608 lt!2377560)) (c!1173847 (regTwo!33164 r!7292)))))))

(declare-fun bm!552540 () Bool)

(assert (=> bm!552540 (= call!552545 (isEmpty!37315 (_2!36608 lt!2377560)))))

(declare-fun b!6424584 () Bool)

(assert (=> b!6424584 (= e!3897860 e!3897859)))

(declare-fun res!2640469 () Bool)

(assert (=> b!6424584 (=> (not res!2640469) (not e!3897859))))

(assert (=> b!6424584 (= res!2640469 (not lt!2377688))))

(declare-fun d!2014305 () Bool)

(assert (=> d!2014305 e!3897858))

(declare-fun c!1173879 () Bool)

(assert (=> d!2014305 (= c!1173879 (is-EmptyExpr!16326 (regTwo!33164 r!7292)))))

(assert (=> d!2014305 (= lt!2377688 e!3897861)))

(declare-fun c!1173881 () Bool)

(assert (=> d!2014305 (= c!1173881 (isEmpty!37315 (_2!36608 lt!2377560)))))

(assert (=> d!2014305 (validRegex!8062 (regTwo!33164 r!7292))))

(assert (=> d!2014305 (= (matchR!8509 (regTwo!33164 r!7292) (_2!36608 lt!2377560)) lt!2377688)))

(declare-fun b!6424585 () Bool)

(assert (=> b!6424585 (= e!3897858 e!3897863)))

(declare-fun c!1173880 () Bool)

(assert (=> b!6424585 (= c!1173880 (is-EmptyLang!16326 (regTwo!33164 r!7292)))))

(declare-fun b!6424586 () Bool)

(declare-fun derivativeStep!5030 (Regex!16326 C!32922) Regex!16326)

(declare-fun tail!12229 (List!65277) List!65277)

(assert (=> b!6424586 (= e!3897861 (matchR!8509 (derivativeStep!5030 (regTwo!33164 r!7292) (head!13144 (_2!36608 lt!2377560))) (tail!12229 (_2!36608 lt!2377560))))))

(declare-fun b!6424587 () Bool)

(declare-fun res!2640466 () Bool)

(assert (=> b!6424587 (=> res!2640466 e!3897862)))

(assert (=> b!6424587 (= res!2640466 (not (isEmpty!37315 (tail!12229 (_2!36608 lt!2377560)))))))

(declare-fun b!6424588 () Bool)

(declare-fun res!2640464 () Bool)

(assert (=> b!6424588 (=> (not res!2640464) (not e!3897857))))

(assert (=> b!6424588 (= res!2640464 (isEmpty!37315 (tail!12229 (_2!36608 lt!2377560))))))

(declare-fun b!6424589 () Bool)

(declare-fun res!2640468 () Bool)

(assert (=> b!6424589 (=> res!2640468 e!3897860)))

(assert (=> b!6424589 (= res!2640468 e!3897857)))

(declare-fun res!2640463 () Bool)

(assert (=> b!6424589 (=> (not res!2640463) (not e!3897857))))

(assert (=> b!6424589 (= res!2640463 lt!2377688)))

(assert (= (and d!2014305 c!1173881) b!6424578))

(assert (= (and d!2014305 (not c!1173881)) b!6424586))

(assert (= (and d!2014305 c!1173879) b!6424580))

(assert (= (and d!2014305 (not c!1173879)) b!6424585))

(assert (= (and b!6424585 c!1173880) b!6424582))

(assert (= (and b!6424585 (not c!1173880)) b!6424579))

(assert (= (and b!6424579 (not res!2640465)) b!6424589))

(assert (= (and b!6424589 res!2640463) b!6424581))

(assert (= (and b!6424581 res!2640470) b!6424588))

(assert (= (and b!6424588 res!2640464) b!6424576))

(assert (= (and b!6424589 (not res!2640468)) b!6424584))

(assert (= (and b!6424584 res!2640469) b!6424577))

(assert (= (and b!6424577 (not res!2640467)) b!6424587))

(assert (= (and b!6424587 (not res!2640466)) b!6424583))

(assert (= (or b!6424580 b!6424577 b!6424581) bm!552540))

(declare-fun m!7218878 () Bool)

(assert (=> b!6424578 m!7218878))

(declare-fun m!7218880 () Bool)

(assert (=> bm!552540 m!7218880))

(declare-fun m!7218882 () Bool)

(assert (=> b!6424583 m!7218882))

(declare-fun m!7218884 () Bool)

(assert (=> b!6424587 m!7218884))

(assert (=> b!6424587 m!7218884))

(declare-fun m!7218886 () Bool)

(assert (=> b!6424587 m!7218886))

(assert (=> b!6424588 m!7218884))

(assert (=> b!6424588 m!7218884))

(assert (=> b!6424588 m!7218886))

(assert (=> d!2014305 m!7218880))

(declare-fun m!7218888 () Bool)

(assert (=> d!2014305 m!7218888))

(assert (=> b!6424586 m!7218882))

(assert (=> b!6424586 m!7218882))

(declare-fun m!7218890 () Bool)

(assert (=> b!6424586 m!7218890))

(assert (=> b!6424586 m!7218884))

(assert (=> b!6424586 m!7218890))

(assert (=> b!6424586 m!7218884))

(declare-fun m!7218892 () Bool)

(assert (=> b!6424586 m!7218892))

(assert (=> b!6424576 m!7218882))

(assert (=> b!6424343 d!2014305))

(declare-fun d!2014307 () Bool)

(declare-fun c!1173884 () Bool)

(assert (=> d!2014307 (= c!1173884 (isEmpty!37315 (t!378893 s!2326)))))

(declare-fun e!3897866 () Bool)

(assert (=> d!2014307 (= (matchZipper!2338 lt!2377527 (t!378893 s!2326)) e!3897866)))

(declare-fun b!6424594 () Bool)

(declare-fun nullableZipper!2091 ((Set Context!11420)) Bool)

(assert (=> b!6424594 (= e!3897866 (nullableZipper!2091 lt!2377527))))

(declare-fun b!6424595 () Bool)

(assert (=> b!6424595 (= e!3897866 (matchZipper!2338 (derivationStepZipper!2292 lt!2377527 (head!13144 (t!378893 s!2326))) (tail!12229 (t!378893 s!2326))))))

(assert (= (and d!2014307 c!1173884) b!6424594))

(assert (= (and d!2014307 (not c!1173884)) b!6424595))

(declare-fun m!7218894 () Bool)

(assert (=> d!2014307 m!7218894))

(declare-fun m!7218896 () Bool)

(assert (=> b!6424594 m!7218896))

(declare-fun m!7218898 () Bool)

(assert (=> b!6424595 m!7218898))

(assert (=> b!6424595 m!7218898))

(declare-fun m!7218900 () Bool)

(assert (=> b!6424595 m!7218900))

(declare-fun m!7218902 () Bool)

(assert (=> b!6424595 m!7218902))

(assert (=> b!6424595 m!7218900))

(assert (=> b!6424595 m!7218902))

(declare-fun m!7218904 () Bool)

(assert (=> b!6424595 m!7218904))

(assert (=> b!6424325 d!2014307))

(declare-fun d!2014309 () Bool)

(assert (=> d!2014309 (= (get!22573 lt!2377524) (v!52389 lt!2377524))))

(assert (=> b!6424304 d!2014309))

(declare-fun bs!1615950 () Bool)

(declare-fun d!2014311 () Bool)

(assert (= bs!1615950 (and d!2014311 b!6424312)))

(declare-fun lambda!355067 () Int)

(assert (=> bs!1615950 (not (= lambda!355067 lambda!355021))))

(assert (=> bs!1615950 (= (= lt!2377533 (regOne!33164 r!7292)) (= lambda!355067 lambda!355020))))

(declare-fun bs!1615951 () Bool)

(assert (= bs!1615951 (and d!2014311 b!6424308)))

(assert (=> bs!1615951 (not (= lambda!355067 lambda!355026))))

(assert (=> bs!1615951 (= (and (= s!2326 (_1!36608 lt!2377560)) (= lt!2377533 (reg!16655 (regOne!33164 r!7292))) (= (regTwo!33164 r!7292) lt!2377533)) (= lambda!355067 lambda!355025))))

(declare-fun bs!1615952 () Bool)

(assert (= bs!1615952 (and d!2014311 b!6424304)))

(assert (=> bs!1615952 (= lambda!355067 lambda!355023)))

(assert (=> bs!1615952 (not (= lambda!355067 lambda!355024))))

(assert (=> d!2014311 true))

(assert (=> d!2014311 true))

(assert (=> d!2014311 true))

(declare-fun lambda!355068 () Int)

(assert (=> bs!1615950 (= (= lt!2377533 (regOne!33164 r!7292)) (= lambda!355068 lambda!355021))))

(assert (=> bs!1615950 (not (= lambda!355068 lambda!355020))))

(assert (=> bs!1615951 (not (= lambda!355068 lambda!355026))))

(declare-fun bs!1615953 () Bool)

(assert (= bs!1615953 d!2014311))

(assert (=> bs!1615953 (not (= lambda!355068 lambda!355067))))

(assert (=> bs!1615951 (not (= lambda!355068 lambda!355025))))

(assert (=> bs!1615952 (not (= lambda!355068 lambda!355023))))

(assert (=> bs!1615952 (= lambda!355068 lambda!355024)))

(assert (=> d!2014311 true))

(assert (=> d!2014311 true))

(assert (=> d!2014311 true))

(assert (=> d!2014311 (= (Exists!3396 lambda!355067) (Exists!3396 lambda!355068))))

(declare-fun lt!2377691 () Unit!158635)

(declare-fun choose!47732 (Regex!16326 Regex!16326 List!65277) Unit!158635)

(assert (=> d!2014311 (= lt!2377691 (choose!47732 lt!2377533 (regTwo!33164 r!7292) s!2326))))

(assert (=> d!2014311 (validRegex!8062 lt!2377533)))

(assert (=> d!2014311 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1933 lt!2377533 (regTwo!33164 r!7292) s!2326) lt!2377691)))

(declare-fun m!7218906 () Bool)

(assert (=> bs!1615953 m!7218906))

(declare-fun m!7218908 () Bool)

(assert (=> bs!1615953 m!7218908))

(declare-fun m!7218910 () Bool)

(assert (=> bs!1615953 m!7218910))

(declare-fun m!7218912 () Bool)

(assert (=> bs!1615953 m!7218912))

(assert (=> b!6424304 d!2014311))

(declare-fun d!2014313 () Bool)

(declare-fun isEmpty!37319 (Option!16217) Bool)

(assert (=> d!2014313 (= (isDefined!12920 lt!2377524) (not (isEmpty!37319 lt!2377524)))))

(declare-fun bs!1615954 () Bool)

(assert (= bs!1615954 d!2014313))

(declare-fun m!7218914 () Bool)

(assert (=> bs!1615954 m!7218914))

(assert (=> b!6424304 d!2014313))

(declare-fun d!2014315 () Bool)

(declare-fun choose!47733 (Int) Bool)

(assert (=> d!2014315 (= (Exists!3396 lambda!355024) (choose!47733 lambda!355024))))

(declare-fun bs!1615955 () Bool)

(assert (= bs!1615955 d!2014315))

(declare-fun m!7218916 () Bool)

(assert (=> bs!1615955 m!7218916))

(assert (=> b!6424304 d!2014315))

(declare-fun d!2014317 () Bool)

(declare-fun e!3897876 () Bool)

(assert (=> d!2014317 e!3897876))

(declare-fun res!2640484 () Bool)

(assert (=> d!2014317 (=> (not res!2640484) (not e!3897876))))

(declare-fun lt!2377694 () List!65277)

(declare-fun content!12366 (List!65277) (Set C!32922))

(assert (=> d!2014317 (= res!2640484 (= (content!12366 lt!2377694) (set.union (content!12366 (_1!36608 lt!2377560)) (content!12366 (_2!36608 lt!2377560)))))))

(declare-fun e!3897875 () List!65277)

(assert (=> d!2014317 (= lt!2377694 e!3897875)))

(declare-fun c!1173887 () Bool)

(assert (=> d!2014317 (= c!1173887 (is-Nil!65153 (_1!36608 lt!2377560)))))

(assert (=> d!2014317 (= (++!14394 (_1!36608 lt!2377560) (_2!36608 lt!2377560)) lt!2377694)))

(declare-fun b!6424614 () Bool)

(declare-fun res!2640483 () Bool)

(assert (=> b!6424614 (=> (not res!2640483) (not e!3897876))))

(declare-fun size!40385 (List!65277) Int)

(assert (=> b!6424614 (= res!2640483 (= (size!40385 lt!2377694) (+ (size!40385 (_1!36608 lt!2377560)) (size!40385 (_2!36608 lt!2377560)))))))

(declare-fun b!6424615 () Bool)

(assert (=> b!6424615 (= e!3897876 (or (not (= (_2!36608 lt!2377560) Nil!65153)) (= lt!2377694 (_1!36608 lt!2377560))))))

(declare-fun b!6424613 () Bool)

(assert (=> b!6424613 (= e!3897875 (Cons!65153 (h!71601 (_1!36608 lt!2377560)) (++!14394 (t!378893 (_1!36608 lt!2377560)) (_2!36608 lt!2377560))))))

(declare-fun b!6424612 () Bool)

(assert (=> b!6424612 (= e!3897875 (_2!36608 lt!2377560))))

(assert (= (and d!2014317 c!1173887) b!6424612))

(assert (= (and d!2014317 (not c!1173887)) b!6424613))

(assert (= (and d!2014317 res!2640484) b!6424614))

(assert (= (and b!6424614 res!2640483) b!6424615))

(declare-fun m!7218918 () Bool)

(assert (=> d!2014317 m!7218918))

(declare-fun m!7218920 () Bool)

(assert (=> d!2014317 m!7218920))

(declare-fun m!7218922 () Bool)

(assert (=> d!2014317 m!7218922))

(declare-fun m!7218924 () Bool)

(assert (=> b!6424614 m!7218924))

(declare-fun m!7218926 () Bool)

(assert (=> b!6424614 m!7218926))

(declare-fun m!7218928 () Bool)

(assert (=> b!6424614 m!7218928))

(declare-fun m!7218930 () Bool)

(assert (=> b!6424613 m!7218930))

(assert (=> b!6424304 d!2014317))

(declare-fun d!2014321 () Bool)

(declare-fun e!3897902 () Bool)

(assert (=> d!2014321 e!3897902))

(declare-fun res!2640511 () Bool)

(assert (=> d!2014321 (=> res!2640511 e!3897902)))

(declare-fun e!3897903 () Bool)

(assert (=> d!2014321 (= res!2640511 e!3897903)))

(declare-fun res!2640513 () Bool)

(assert (=> d!2014321 (=> (not res!2640513) (not e!3897903))))

(declare-fun lt!2377703 () Option!16217)

(assert (=> d!2014321 (= res!2640513 (isDefined!12920 lt!2377703))))

(declare-fun e!3897904 () Option!16217)

(assert (=> d!2014321 (= lt!2377703 e!3897904)))

(declare-fun c!1173898 () Bool)

(declare-fun e!3897901 () Bool)

(assert (=> d!2014321 (= c!1173898 e!3897901)))

(declare-fun res!2640515 () Bool)

(assert (=> d!2014321 (=> (not res!2640515) (not e!3897901))))

(assert (=> d!2014321 (= res!2640515 (matchR!8509 lt!2377533 Nil!65153))))

(assert (=> d!2014321 (validRegex!8062 lt!2377533)))

(assert (=> d!2014321 (= (findConcatSeparation!2631 lt!2377533 (regTwo!33164 r!7292) Nil!65153 s!2326 s!2326) lt!2377703)))

(declare-fun b!6424662 () Bool)

(declare-fun e!3897905 () Option!16217)

(assert (=> b!6424662 (= e!3897904 e!3897905)))

(declare-fun c!1173899 () Bool)

(assert (=> b!6424662 (= c!1173899 (is-Nil!65153 s!2326))))

(declare-fun b!6424663 () Bool)

(declare-fun res!2640512 () Bool)

(assert (=> b!6424663 (=> (not res!2640512) (not e!3897903))))

(assert (=> b!6424663 (= res!2640512 (matchR!8509 (regTwo!33164 r!7292) (_2!36608 (get!22573 lt!2377703))))))

(declare-fun b!6424664 () Bool)

(assert (=> b!6424664 (= e!3897902 (not (isDefined!12920 lt!2377703)))))

(declare-fun b!6424665 () Bool)

(assert (=> b!6424665 (= e!3897905 None!16216)))

(declare-fun b!6424666 () Bool)

(assert (=> b!6424666 (= e!3897901 (matchR!8509 (regTwo!33164 r!7292) s!2326))))

(declare-fun b!6424667 () Bool)

(assert (=> b!6424667 (= e!3897904 (Some!16216 (tuple2!66611 Nil!65153 s!2326)))))

(declare-fun b!6424668 () Bool)

(assert (=> b!6424668 (= e!3897903 (= (++!14394 (_1!36608 (get!22573 lt!2377703)) (_2!36608 (get!22573 lt!2377703))) s!2326))))

(declare-fun b!6424669 () Bool)

(declare-fun res!2640514 () Bool)

(assert (=> b!6424669 (=> (not res!2640514) (not e!3897903))))

(assert (=> b!6424669 (= res!2640514 (matchR!8509 lt!2377533 (_1!36608 (get!22573 lt!2377703))))))

(declare-fun b!6424670 () Bool)

(declare-fun lt!2377704 () Unit!158635)

(declare-fun lt!2377705 () Unit!158635)

(assert (=> b!6424670 (= lt!2377704 lt!2377705)))

(assert (=> b!6424670 (= (++!14394 (++!14394 Nil!65153 (Cons!65153 (h!71601 s!2326) Nil!65153)) (t!378893 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2489 (List!65277 C!32922 List!65277 List!65277) Unit!158635)

(assert (=> b!6424670 (= lt!2377705 (lemmaMoveElementToOtherListKeepsConcatEq!2489 Nil!65153 (h!71601 s!2326) (t!378893 s!2326) s!2326))))

(assert (=> b!6424670 (= e!3897905 (findConcatSeparation!2631 lt!2377533 (regTwo!33164 r!7292) (++!14394 Nil!65153 (Cons!65153 (h!71601 s!2326) Nil!65153)) (t!378893 s!2326) s!2326))))

(assert (= (and d!2014321 res!2640515) b!6424666))

(assert (= (and d!2014321 c!1173898) b!6424667))

(assert (= (and d!2014321 (not c!1173898)) b!6424662))

(assert (= (and b!6424662 c!1173899) b!6424665))

(assert (= (and b!6424662 (not c!1173899)) b!6424670))

(assert (= (and d!2014321 res!2640513) b!6424669))

(assert (= (and b!6424669 res!2640514) b!6424663))

(assert (= (and b!6424663 res!2640512) b!6424668))

(assert (= (and d!2014321 (not res!2640511)) b!6424664))

(declare-fun m!7218932 () Bool)

(assert (=> b!6424663 m!7218932))

(declare-fun m!7218934 () Bool)

(assert (=> b!6424663 m!7218934))

(declare-fun m!7218936 () Bool)

(assert (=> d!2014321 m!7218936))

(declare-fun m!7218938 () Bool)

(assert (=> d!2014321 m!7218938))

(assert (=> d!2014321 m!7218912))

(assert (=> b!6424669 m!7218932))

(declare-fun m!7218940 () Bool)

(assert (=> b!6424669 m!7218940))

(assert (=> b!6424664 m!7218936))

(assert (=> b!6424668 m!7218932))

(declare-fun m!7218942 () Bool)

(assert (=> b!6424668 m!7218942))

(declare-fun m!7218944 () Bool)

(assert (=> b!6424666 m!7218944))

(declare-fun m!7218946 () Bool)

(assert (=> b!6424670 m!7218946))

(assert (=> b!6424670 m!7218946))

(declare-fun m!7218948 () Bool)

(assert (=> b!6424670 m!7218948))

(declare-fun m!7218950 () Bool)

(assert (=> b!6424670 m!7218950))

(assert (=> b!6424670 m!7218946))

(declare-fun m!7218952 () Bool)

(assert (=> b!6424670 m!7218952))

(assert (=> b!6424304 d!2014321))

(declare-fun d!2014323 () Bool)

(assert (=> d!2014323 (= (Exists!3396 lambda!355023) (choose!47733 lambda!355023))))

(declare-fun bs!1615956 () Bool)

(assert (= bs!1615956 d!2014323))

(declare-fun m!7218954 () Bool)

(assert (=> bs!1615956 m!7218954))

(assert (=> b!6424304 d!2014323))

(declare-fun bs!1615957 () Bool)

(declare-fun d!2014325 () Bool)

(assert (= bs!1615957 (and d!2014325 b!6424312)))

(declare-fun lambda!355071 () Int)

(assert (=> bs!1615957 (not (= lambda!355071 lambda!355021))))

(assert (=> bs!1615957 (= (= lt!2377533 (regOne!33164 r!7292)) (= lambda!355071 lambda!355020))))

(declare-fun bs!1615958 () Bool)

(assert (= bs!1615958 (and d!2014325 b!6424308)))

(assert (=> bs!1615958 (not (= lambda!355071 lambda!355026))))

(declare-fun bs!1615959 () Bool)

(assert (= bs!1615959 (and d!2014325 d!2014311)))

(assert (=> bs!1615959 (= lambda!355071 lambda!355067)))

(assert (=> bs!1615958 (= (and (= s!2326 (_1!36608 lt!2377560)) (= lt!2377533 (reg!16655 (regOne!33164 r!7292))) (= (regTwo!33164 r!7292) lt!2377533)) (= lambda!355071 lambda!355025))))

(declare-fun bs!1615960 () Bool)

(assert (= bs!1615960 (and d!2014325 b!6424304)))

(assert (=> bs!1615960 (not (= lambda!355071 lambda!355024))))

(assert (=> bs!1615960 (= lambda!355071 lambda!355023)))

(assert (=> bs!1615959 (not (= lambda!355071 lambda!355068))))

(assert (=> d!2014325 true))

(assert (=> d!2014325 true))

(assert (=> d!2014325 true))

(assert (=> d!2014325 (= (isDefined!12920 (findConcatSeparation!2631 lt!2377533 (regTwo!33164 r!7292) Nil!65153 s!2326 s!2326)) (Exists!3396 lambda!355071))))

(declare-fun lt!2377708 () Unit!158635)

(declare-fun choose!47734 (Regex!16326 Regex!16326 List!65277) Unit!158635)

(assert (=> d!2014325 (= lt!2377708 (choose!47734 lt!2377533 (regTwo!33164 r!7292) s!2326))))

(assert (=> d!2014325 (validRegex!8062 lt!2377533)))

(assert (=> d!2014325 (= (lemmaFindConcatSeparationEquivalentToExists!2395 lt!2377533 (regTwo!33164 r!7292) s!2326) lt!2377708)))

(declare-fun bs!1615961 () Bool)

(assert (= bs!1615961 d!2014325))

(assert (=> bs!1615961 m!7218656))

(assert (=> bs!1615961 m!7218912))

(assert (=> bs!1615961 m!7218656))

(declare-fun m!7218956 () Bool)

(assert (=> bs!1615961 m!7218956))

(declare-fun m!7218958 () Bool)

(assert (=> bs!1615961 m!7218958))

(declare-fun m!7218960 () Bool)

(assert (=> bs!1615961 m!7218960))

(assert (=> b!6424304 d!2014325))

(declare-fun d!2014327 () Bool)

(declare-fun lt!2377712 () Regex!16326)

(assert (=> d!2014327 (validRegex!8062 lt!2377712)))

(assert (=> d!2014327 (= lt!2377712 (generalisedUnion!2170 (unfocusZipperList!1747 (Cons!65155 lt!2377543 Nil!65155))))))

(assert (=> d!2014327 (= (unfocusZipper!2068 (Cons!65155 lt!2377543 Nil!65155)) lt!2377712)))

(declare-fun bs!1615962 () Bool)

(assert (= bs!1615962 d!2014327))

(declare-fun m!7218976 () Bool)

(assert (=> bs!1615962 m!7218976))

(declare-fun m!7218978 () Bool)

(assert (=> bs!1615962 m!7218978))

(assert (=> bs!1615962 m!7218978))

(declare-fun m!7218980 () Bool)

(assert (=> bs!1615962 m!7218980))

(assert (=> b!6424326 d!2014327))

(declare-fun d!2014331 () Bool)

(declare-fun nullableFct!2265 (Regex!16326) Bool)

(assert (=> d!2014331 (= (nullable!6319 (regOne!33164 (regOne!33164 r!7292))) (nullableFct!2265 (regOne!33164 (regOne!33164 r!7292))))))

(declare-fun bs!1615963 () Bool)

(assert (= bs!1615963 d!2014331))

(declare-fun m!7218982 () Bool)

(assert (=> bs!1615963 m!7218982))

(assert (=> b!6424305 d!2014331))

(declare-fun d!2014333 () Bool)

(declare-fun lt!2377713 () Regex!16326)

(assert (=> d!2014333 (validRegex!8062 lt!2377713)))

(assert (=> d!2014333 (= lt!2377713 (generalisedUnion!2170 (unfocusZipperList!1747 zl!343)))))

(assert (=> d!2014333 (= (unfocusZipper!2068 zl!343) lt!2377713)))

(declare-fun bs!1615964 () Bool)

(assert (= bs!1615964 d!2014333))

(declare-fun m!7218984 () Bool)

(assert (=> bs!1615964 m!7218984))

(assert (=> bs!1615964 m!7218642))

(assert (=> bs!1615964 m!7218642))

(assert (=> bs!1615964 m!7218644))

(assert (=> b!6424327 d!2014333))

(declare-fun b!6424721 () Bool)

(declare-fun c!1173920 () Bool)

(declare-fun e!3897934 () Bool)

(assert (=> b!6424721 (= c!1173920 e!3897934)))

(declare-fun res!2640532 () Bool)

(assert (=> b!6424721 (=> (not res!2640532) (not e!3897934))))

(assert (=> b!6424721 (= res!2640532 (is-Concat!25171 (reg!16655 (regOne!33164 r!7292))))))

(declare-fun e!3897936 () (Set Context!11420))

(declare-fun e!3897937 () (Set Context!11420))

(assert (=> b!6424721 (= e!3897936 e!3897937)))

(declare-fun b!6424722 () Bool)

(declare-fun e!3897933 () (Set Context!11420))

(assert (=> b!6424722 (= e!3897933 e!3897936)))

(declare-fun c!1173921 () Bool)

(assert (=> b!6424722 (= c!1173921 (is-Union!16326 (reg!16655 (regOne!33164 r!7292))))))

(declare-fun d!2014335 () Bool)

(declare-fun c!1173919 () Bool)

(assert (=> d!2014335 (= c!1173919 (and (is-ElementMatch!16326 (reg!16655 (regOne!33164 r!7292))) (= (c!1173847 (reg!16655 (regOne!33164 r!7292))) (h!71601 s!2326))))))

(assert (=> d!2014335 (= (derivationStepZipperDown!1574 (reg!16655 (regOne!33164 r!7292)) lt!2377543 (h!71601 s!2326)) e!3897933)))

(declare-fun b!6424723 () Bool)

(declare-fun e!3897938 () (Set Context!11420))

(assert (=> b!6424723 (= e!3897938 (as set.empty (Set Context!11420)))))

(declare-fun b!6424724 () Bool)

(declare-fun call!552565 () (Set Context!11420))

(declare-fun call!552567 () (Set Context!11420))

(assert (=> b!6424724 (= e!3897937 (set.union call!552565 call!552567))))

(declare-fun b!6424725 () Bool)

(declare-fun e!3897935 () (Set Context!11420))

(assert (=> b!6424725 (= e!3897937 e!3897935)))

(declare-fun c!1173918 () Bool)

(assert (=> b!6424725 (= c!1173918 (is-Concat!25171 (reg!16655 (regOne!33164 r!7292))))))

(declare-fun b!6424726 () Bool)

(declare-fun c!1173917 () Bool)

(assert (=> b!6424726 (= c!1173917 (is-Star!16326 (reg!16655 (regOne!33164 r!7292))))))

(assert (=> b!6424726 (= e!3897935 e!3897938)))

(declare-fun bm!552558 () Bool)

(declare-fun call!552564 () (Set Context!11420))

(assert (=> bm!552558 (= call!552564 call!552567)))

(declare-fun bm!552559 () Bool)

(declare-fun call!552566 () (Set Context!11420))

(declare-fun call!552568 () List!65278)

(assert (=> bm!552559 (= call!552566 (derivationStepZipperDown!1574 (ite c!1173921 (regTwo!33165 (reg!16655 (regOne!33164 r!7292))) (ite c!1173920 (regTwo!33164 (reg!16655 (regOne!33164 r!7292))) (ite c!1173918 (regOne!33164 (reg!16655 (regOne!33164 r!7292))) (reg!16655 (reg!16655 (regOne!33164 r!7292)))))) (ite (or c!1173921 c!1173920) lt!2377543 (Context!11421 call!552568)) (h!71601 s!2326)))))

(declare-fun b!6424727 () Bool)

(assert (=> b!6424727 (= e!3897938 call!552564)))

(declare-fun bm!552560 () Bool)

(declare-fun call!552563 () List!65278)

(assert (=> bm!552560 (= call!552565 (derivationStepZipperDown!1574 (ite c!1173921 (regOne!33165 (reg!16655 (regOne!33164 r!7292))) (regOne!33164 (reg!16655 (regOne!33164 r!7292)))) (ite c!1173921 lt!2377543 (Context!11421 call!552563)) (h!71601 s!2326)))))

(declare-fun b!6424728 () Bool)

(assert (=> b!6424728 (= e!3897935 call!552564)))

(declare-fun b!6424729 () Bool)

(assert (=> b!6424729 (= e!3897933 (set.insert lt!2377543 (as set.empty (Set Context!11420))))))

(declare-fun bm!552561 () Bool)

(declare-fun $colon$colon!2187 (List!65278 Regex!16326) List!65278)

(assert (=> bm!552561 (= call!552563 ($colon$colon!2187 (exprs!6210 lt!2377543) (ite (or c!1173920 c!1173918) (regTwo!33164 (reg!16655 (regOne!33164 r!7292))) (reg!16655 (regOne!33164 r!7292)))))))

(declare-fun bm!552562 () Bool)

(assert (=> bm!552562 (= call!552568 call!552563)))

(declare-fun b!6424730 () Bool)

(assert (=> b!6424730 (= e!3897936 (set.union call!552565 call!552566))))

(declare-fun b!6424731 () Bool)

(assert (=> b!6424731 (= e!3897934 (nullable!6319 (regOne!33164 (reg!16655 (regOne!33164 r!7292)))))))

(declare-fun bm!552563 () Bool)

(assert (=> bm!552563 (= call!552567 call!552566)))

(assert (= (and d!2014335 c!1173919) b!6424729))

(assert (= (and d!2014335 (not c!1173919)) b!6424722))

(assert (= (and b!6424722 c!1173921) b!6424730))

(assert (= (and b!6424722 (not c!1173921)) b!6424721))

(assert (= (and b!6424721 res!2640532) b!6424731))

(assert (= (and b!6424721 c!1173920) b!6424724))

(assert (= (and b!6424721 (not c!1173920)) b!6424725))

(assert (= (and b!6424725 c!1173918) b!6424728))

(assert (= (and b!6424725 (not c!1173918)) b!6424726))

(assert (= (and b!6424726 c!1173917) b!6424727))

(assert (= (and b!6424726 (not c!1173917)) b!6424723))

(assert (= (or b!6424728 b!6424727) bm!552562))

(assert (= (or b!6424728 b!6424727) bm!552558))

(assert (= (or b!6424724 bm!552562) bm!552561))

(assert (= (or b!6424724 bm!552558) bm!552563))

(assert (= (or b!6424730 bm!552563) bm!552559))

(assert (= (or b!6424730 b!6424724) bm!552560))

(declare-fun m!7218990 () Bool)

(assert (=> bm!552559 m!7218990))

(declare-fun m!7218992 () Bool)

(assert (=> bm!552560 m!7218992))

(assert (=> b!6424729 m!7218700))

(declare-fun m!7218994 () Bool)

(assert (=> bm!552561 m!7218994))

(declare-fun m!7218996 () Bool)

(assert (=> b!6424731 m!7218996))

(assert (=> b!6424328 d!2014335))

(declare-fun b!6424732 () Bool)

(declare-fun e!3897939 () Bool)

(assert (=> b!6424732 (= e!3897939 (= (head!13144 s!2326) (c!1173847 lt!2377550)))))

(declare-fun b!6424733 () Bool)

(declare-fun e!3897941 () Bool)

(declare-fun e!3897944 () Bool)

(assert (=> b!6424733 (= e!3897941 e!3897944)))

(declare-fun res!2640537 () Bool)

(assert (=> b!6424733 (=> res!2640537 e!3897944)))

(declare-fun call!552569 () Bool)

(assert (=> b!6424733 (= res!2640537 call!552569)))

(declare-fun b!6424734 () Bool)

(declare-fun e!3897943 () Bool)

(assert (=> b!6424734 (= e!3897943 (nullable!6319 lt!2377550))))

(declare-fun b!6424735 () Bool)

(declare-fun res!2640535 () Bool)

(declare-fun e!3897942 () Bool)

(assert (=> b!6424735 (=> res!2640535 e!3897942)))

(assert (=> b!6424735 (= res!2640535 (not (is-ElementMatch!16326 lt!2377550)))))

(declare-fun e!3897945 () Bool)

(assert (=> b!6424735 (= e!3897945 e!3897942)))

(declare-fun b!6424736 () Bool)

(declare-fun e!3897940 () Bool)

(declare-fun lt!2377714 () Bool)

(assert (=> b!6424736 (= e!3897940 (= lt!2377714 call!552569))))

(declare-fun b!6424737 () Bool)

(declare-fun res!2640540 () Bool)

(assert (=> b!6424737 (=> (not res!2640540) (not e!3897939))))

(assert (=> b!6424737 (= res!2640540 (not call!552569))))

(declare-fun b!6424738 () Bool)

(assert (=> b!6424738 (= e!3897945 (not lt!2377714))))

(declare-fun b!6424739 () Bool)

(assert (=> b!6424739 (= e!3897944 (not (= (head!13144 s!2326) (c!1173847 lt!2377550))))))

(declare-fun bm!552564 () Bool)

(assert (=> bm!552564 (= call!552569 (isEmpty!37315 s!2326))))

(declare-fun b!6424740 () Bool)

(assert (=> b!6424740 (= e!3897942 e!3897941)))

(declare-fun res!2640539 () Bool)

(assert (=> b!6424740 (=> (not res!2640539) (not e!3897941))))

(assert (=> b!6424740 (= res!2640539 (not lt!2377714))))

(declare-fun d!2014341 () Bool)

(assert (=> d!2014341 e!3897940))

(declare-fun c!1173922 () Bool)

(assert (=> d!2014341 (= c!1173922 (is-EmptyExpr!16326 lt!2377550))))

(assert (=> d!2014341 (= lt!2377714 e!3897943)))

(declare-fun c!1173924 () Bool)

(assert (=> d!2014341 (= c!1173924 (isEmpty!37315 s!2326))))

(assert (=> d!2014341 (validRegex!8062 lt!2377550)))

(assert (=> d!2014341 (= (matchR!8509 lt!2377550 s!2326) lt!2377714)))

(declare-fun b!6424741 () Bool)

(assert (=> b!6424741 (= e!3897940 e!3897945)))

(declare-fun c!1173923 () Bool)

(assert (=> b!6424741 (= c!1173923 (is-EmptyLang!16326 lt!2377550))))

(declare-fun b!6424742 () Bool)

(assert (=> b!6424742 (= e!3897943 (matchR!8509 (derivativeStep!5030 lt!2377550 (head!13144 s!2326)) (tail!12229 s!2326)))))

(declare-fun b!6424743 () Bool)

(declare-fun res!2640536 () Bool)

(assert (=> b!6424743 (=> res!2640536 e!3897944)))

(assert (=> b!6424743 (= res!2640536 (not (isEmpty!37315 (tail!12229 s!2326))))))

(declare-fun b!6424744 () Bool)

(declare-fun res!2640534 () Bool)

(assert (=> b!6424744 (=> (not res!2640534) (not e!3897939))))

(assert (=> b!6424744 (= res!2640534 (isEmpty!37315 (tail!12229 s!2326)))))

(declare-fun b!6424745 () Bool)

(declare-fun res!2640538 () Bool)

(assert (=> b!6424745 (=> res!2640538 e!3897942)))

(assert (=> b!6424745 (= res!2640538 e!3897939)))

(declare-fun res!2640533 () Bool)

(assert (=> b!6424745 (=> (not res!2640533) (not e!3897939))))

(assert (=> b!6424745 (= res!2640533 lt!2377714)))

(assert (= (and d!2014341 c!1173924) b!6424734))

(assert (= (and d!2014341 (not c!1173924)) b!6424742))

(assert (= (and d!2014341 c!1173922) b!6424736))

(assert (= (and d!2014341 (not c!1173922)) b!6424741))

(assert (= (and b!6424741 c!1173923) b!6424738))

(assert (= (and b!6424741 (not c!1173923)) b!6424735))

(assert (= (and b!6424735 (not res!2640535)) b!6424745))

(assert (= (and b!6424745 res!2640533) b!6424737))

(assert (= (and b!6424737 res!2640540) b!6424744))

(assert (= (and b!6424744 res!2640534) b!6424732))

(assert (= (and b!6424745 (not res!2640538)) b!6424740))

(assert (= (and b!6424740 res!2640539) b!6424733))

(assert (= (and b!6424733 (not res!2640537)) b!6424743))

(assert (= (and b!6424743 (not res!2640536)) b!6424739))

(assert (= (or b!6424736 b!6424733 b!6424737) bm!552564))

(declare-fun m!7218998 () Bool)

(assert (=> b!6424734 m!7218998))

(declare-fun m!7219000 () Bool)

(assert (=> bm!552564 m!7219000))

(declare-fun m!7219002 () Bool)

(assert (=> b!6424739 m!7219002))

(declare-fun m!7219004 () Bool)

(assert (=> b!6424743 m!7219004))

(assert (=> b!6424743 m!7219004))

(declare-fun m!7219006 () Bool)

(assert (=> b!6424743 m!7219006))

(assert (=> b!6424744 m!7219004))

(assert (=> b!6424744 m!7219004))

(assert (=> b!6424744 m!7219006))

(assert (=> d!2014341 m!7219000))

(declare-fun m!7219008 () Bool)

(assert (=> d!2014341 m!7219008))

(assert (=> b!6424742 m!7219002))

(assert (=> b!6424742 m!7219002))

(declare-fun m!7219010 () Bool)

(assert (=> b!6424742 m!7219010))

(assert (=> b!6424742 m!7219004))

(assert (=> b!6424742 m!7219010))

(assert (=> b!6424742 m!7219004))

(declare-fun m!7219014 () Bool)

(assert (=> b!6424742 m!7219014))

(assert (=> b!6424732 m!7219002))

(assert (=> b!6424329 d!2014341))

(declare-fun bs!1615970 () Bool)

(declare-fun b!6424788 () Bool)

(assert (= bs!1615970 (and b!6424788 b!6424312)))

(declare-fun lambda!355079 () Int)

(assert (=> bs!1615970 (not (= lambda!355079 lambda!355021))))

(assert (=> bs!1615970 (not (= lambda!355079 lambda!355020))))

(declare-fun bs!1615971 () Bool)

(assert (= bs!1615971 (and b!6424788 b!6424308)))

(assert (=> bs!1615971 (= (and (= s!2326 (_1!36608 lt!2377560)) (= (reg!16655 lt!2377550) (reg!16655 (regOne!33164 r!7292))) (= lt!2377550 lt!2377533)) (= lambda!355079 lambda!355026))))

(declare-fun bs!1615972 () Bool)

(assert (= bs!1615972 (and b!6424788 d!2014311)))

(assert (=> bs!1615972 (not (= lambda!355079 lambda!355067))))

(assert (=> bs!1615971 (not (= lambda!355079 lambda!355025))))

(declare-fun bs!1615973 () Bool)

(assert (= bs!1615973 (and b!6424788 d!2014325)))

(assert (=> bs!1615973 (not (= lambda!355079 lambda!355071))))

(declare-fun bs!1615974 () Bool)

(assert (= bs!1615974 (and b!6424788 b!6424304)))

(assert (=> bs!1615974 (not (= lambda!355079 lambda!355024))))

(assert (=> bs!1615974 (not (= lambda!355079 lambda!355023))))

(assert (=> bs!1615972 (not (= lambda!355079 lambda!355068))))

(assert (=> b!6424788 true))

(assert (=> b!6424788 true))

(declare-fun bs!1615975 () Bool)

(declare-fun b!6424792 () Bool)

(assert (= bs!1615975 (and b!6424792 b!6424312)))

(declare-fun lambda!355080 () Int)

(assert (=> bs!1615975 (= (and (= (regOne!33164 lt!2377550) (regOne!33164 r!7292)) (= (regTwo!33164 lt!2377550) (regTwo!33164 r!7292))) (= lambda!355080 lambda!355021))))

(assert (=> bs!1615975 (not (= lambda!355080 lambda!355020))))

(declare-fun bs!1615976 () Bool)

(assert (= bs!1615976 (and b!6424792 b!6424308)))

(assert (=> bs!1615976 (not (= lambda!355080 lambda!355026))))

(declare-fun bs!1615977 () Bool)

(assert (= bs!1615977 (and b!6424792 b!6424788)))

(assert (=> bs!1615977 (not (= lambda!355080 lambda!355079))))

(declare-fun bs!1615978 () Bool)

(assert (= bs!1615978 (and b!6424792 d!2014311)))

(assert (=> bs!1615978 (not (= lambda!355080 lambda!355067))))

(assert (=> bs!1615976 (not (= lambda!355080 lambda!355025))))

(declare-fun bs!1615979 () Bool)

(assert (= bs!1615979 (and b!6424792 d!2014325)))

(assert (=> bs!1615979 (not (= lambda!355080 lambda!355071))))

(declare-fun bs!1615980 () Bool)

(assert (= bs!1615980 (and b!6424792 b!6424304)))

(assert (=> bs!1615980 (= (and (= (regOne!33164 lt!2377550) lt!2377533) (= (regTwo!33164 lt!2377550) (regTwo!33164 r!7292))) (= lambda!355080 lambda!355024))))

(assert (=> bs!1615980 (not (= lambda!355080 lambda!355023))))

(assert (=> bs!1615978 (= (and (= (regOne!33164 lt!2377550) lt!2377533) (= (regTwo!33164 lt!2377550) (regTwo!33164 r!7292))) (= lambda!355080 lambda!355068))))

(assert (=> b!6424792 true))

(assert (=> b!6424792 true))

(declare-fun b!6424785 () Bool)

(declare-fun c!1173937 () Bool)

(assert (=> b!6424785 (= c!1173937 (is-ElementMatch!16326 lt!2377550))))

(declare-fun e!3897968 () Bool)

(declare-fun e!3897970 () Bool)

(assert (=> b!6424785 (= e!3897968 e!3897970)))

(declare-fun b!6424786 () Bool)

(declare-fun c!1173938 () Bool)

(assert (=> b!6424786 (= c!1173938 (is-Union!16326 lt!2377550))))

(declare-fun e!3897967 () Bool)

(assert (=> b!6424786 (= e!3897970 e!3897967)))

(declare-fun b!6424787 () Bool)

(declare-fun e!3897971 () Bool)

(assert (=> b!6424787 (= e!3897971 (matchRSpec!3427 (regTwo!33165 lt!2377550) s!2326))))

(declare-fun e!3897969 () Bool)

(declare-fun call!552575 () Bool)

(assert (=> b!6424788 (= e!3897969 call!552575)))

(declare-fun d!2014343 () Bool)

(declare-fun c!1173940 () Bool)

(assert (=> d!2014343 (= c!1173940 (is-EmptyExpr!16326 lt!2377550))))

(declare-fun e!3897973 () Bool)

(assert (=> d!2014343 (= (matchRSpec!3427 lt!2377550 s!2326) e!3897973)))

(declare-fun b!6424789 () Bool)

(declare-fun e!3897972 () Bool)

(assert (=> b!6424789 (= e!3897967 e!3897972)))

(declare-fun c!1173939 () Bool)

(assert (=> b!6424789 (= c!1173939 (is-Star!16326 lt!2377550))))

(declare-fun b!6424790 () Bool)

(assert (=> b!6424790 (= e!3897973 e!3897968)))

(declare-fun res!2640559 () Bool)

(assert (=> b!6424790 (= res!2640559 (not (is-EmptyLang!16326 lt!2377550)))))

(assert (=> b!6424790 (=> (not res!2640559) (not e!3897968))))

(declare-fun bm!552570 () Bool)

(declare-fun call!552576 () Bool)

(assert (=> bm!552570 (= call!552576 (isEmpty!37315 s!2326))))

(declare-fun b!6424791 () Bool)

(declare-fun res!2640560 () Bool)

(assert (=> b!6424791 (=> res!2640560 e!3897969)))

(assert (=> b!6424791 (= res!2640560 call!552576)))

(assert (=> b!6424791 (= e!3897972 e!3897969)))

(assert (=> b!6424792 (= e!3897972 call!552575)))

(declare-fun b!6424793 () Bool)

(assert (=> b!6424793 (= e!3897967 e!3897971)))

(declare-fun res!2640558 () Bool)

(assert (=> b!6424793 (= res!2640558 (matchRSpec!3427 (regOne!33165 lt!2377550) s!2326))))

(assert (=> b!6424793 (=> res!2640558 e!3897971)))

(declare-fun b!6424794 () Bool)

(assert (=> b!6424794 (= e!3897973 call!552576)))

(declare-fun bm!552571 () Bool)

(assert (=> bm!552571 (= call!552575 (Exists!3396 (ite c!1173939 lambda!355079 lambda!355080)))))

(declare-fun b!6424795 () Bool)

(assert (=> b!6424795 (= e!3897970 (= s!2326 (Cons!65153 (c!1173847 lt!2377550) Nil!65153)))))

(assert (= (and d!2014343 c!1173940) b!6424794))

(assert (= (and d!2014343 (not c!1173940)) b!6424790))

(assert (= (and b!6424790 res!2640559) b!6424785))

(assert (= (and b!6424785 c!1173937) b!6424795))

(assert (= (and b!6424785 (not c!1173937)) b!6424786))

(assert (= (and b!6424786 c!1173938) b!6424793))

(assert (= (and b!6424786 (not c!1173938)) b!6424789))

(assert (= (and b!6424793 (not res!2640558)) b!6424787))

(assert (= (and b!6424789 c!1173939) b!6424791))

(assert (= (and b!6424789 (not c!1173939)) b!6424792))

(assert (= (and b!6424791 (not res!2640560)) b!6424788))

(assert (= (or b!6424788 b!6424792) bm!552571))

(assert (= (or b!6424794 b!6424791) bm!552570))

(declare-fun m!7219026 () Bool)

(assert (=> b!6424787 m!7219026))

(assert (=> bm!552570 m!7219000))

(declare-fun m!7219028 () Bool)

(assert (=> b!6424793 m!7219028))

(declare-fun m!7219030 () Bool)

(assert (=> bm!552571 m!7219030))

(assert (=> b!6424329 d!2014343))

(declare-fun d!2014351 () Bool)

(assert (=> d!2014351 (= (matchR!8509 lt!2377550 s!2326) (matchRSpec!3427 lt!2377550 s!2326))))

(declare-fun lt!2377723 () Unit!158635)

(declare-fun choose!47735 (Regex!16326 List!65277) Unit!158635)

(assert (=> d!2014351 (= lt!2377723 (choose!47735 lt!2377550 s!2326))))

(assert (=> d!2014351 (validRegex!8062 lt!2377550)))

(assert (=> d!2014351 (= (mainMatchTheorem!3427 lt!2377550 s!2326) lt!2377723)))

(declare-fun bs!1615981 () Bool)

(assert (= bs!1615981 d!2014351))

(assert (=> bs!1615981 m!7218686))

(assert (=> bs!1615981 m!7218688))

(declare-fun m!7219034 () Bool)

(assert (=> bs!1615981 m!7219034))

(assert (=> bs!1615981 m!7219008))

(assert (=> b!6424329 d!2014351))

(declare-fun d!2014355 () Bool)

(declare-fun e!3897978 () Bool)

(assert (=> d!2014355 e!3897978))

(declare-fun res!2640564 () Bool)

(assert (=> d!2014355 (=> res!2640564 e!3897978)))

(declare-fun e!3897979 () Bool)

(assert (=> d!2014355 (= res!2640564 e!3897979)))

(declare-fun res!2640566 () Bool)

(assert (=> d!2014355 (=> (not res!2640566) (not e!3897979))))

(declare-fun lt!2377724 () Option!16217)

(assert (=> d!2014355 (= res!2640566 (isDefined!12920 lt!2377724))))

(declare-fun e!3897980 () Option!16217)

(assert (=> d!2014355 (= lt!2377724 e!3897980)))

(declare-fun c!1173941 () Bool)

(declare-fun e!3897977 () Bool)

(assert (=> d!2014355 (= c!1173941 e!3897977)))

(declare-fun res!2640568 () Bool)

(assert (=> d!2014355 (=> (not res!2640568) (not e!3897977))))

(assert (=> d!2014355 (= res!2640568 (matchR!8509 (reg!16655 (regOne!33164 r!7292)) Nil!65153))))

(assert (=> d!2014355 (validRegex!8062 (reg!16655 (regOne!33164 r!7292)))))

(assert (=> d!2014355 (= (findConcatSeparation!2631 (reg!16655 (regOne!33164 r!7292)) lt!2377533 Nil!65153 (_1!36608 lt!2377560) (_1!36608 lt!2377560)) lt!2377724)))

(declare-fun b!6424799 () Bool)

(declare-fun e!3897981 () Option!16217)

(assert (=> b!6424799 (= e!3897980 e!3897981)))

(declare-fun c!1173942 () Bool)

(assert (=> b!6424799 (= c!1173942 (is-Nil!65153 (_1!36608 lt!2377560)))))

(declare-fun b!6424800 () Bool)

(declare-fun res!2640565 () Bool)

(assert (=> b!6424800 (=> (not res!2640565) (not e!3897979))))

(assert (=> b!6424800 (= res!2640565 (matchR!8509 lt!2377533 (_2!36608 (get!22573 lt!2377724))))))

(declare-fun b!6424801 () Bool)

(assert (=> b!6424801 (= e!3897978 (not (isDefined!12920 lt!2377724)))))

(declare-fun b!6424802 () Bool)

(assert (=> b!6424802 (= e!3897981 None!16216)))

(declare-fun b!6424803 () Bool)

(assert (=> b!6424803 (= e!3897977 (matchR!8509 lt!2377533 (_1!36608 lt!2377560)))))

(declare-fun b!6424804 () Bool)

(assert (=> b!6424804 (= e!3897980 (Some!16216 (tuple2!66611 Nil!65153 (_1!36608 lt!2377560))))))

(declare-fun b!6424805 () Bool)

(assert (=> b!6424805 (= e!3897979 (= (++!14394 (_1!36608 (get!22573 lt!2377724)) (_2!36608 (get!22573 lt!2377724))) (_1!36608 lt!2377560)))))

(declare-fun b!6424806 () Bool)

(declare-fun res!2640567 () Bool)

(assert (=> b!6424806 (=> (not res!2640567) (not e!3897979))))

(assert (=> b!6424806 (= res!2640567 (matchR!8509 (reg!16655 (regOne!33164 r!7292)) (_1!36608 (get!22573 lt!2377724))))))

(declare-fun b!6424807 () Bool)

(declare-fun lt!2377725 () Unit!158635)

(declare-fun lt!2377726 () Unit!158635)

(assert (=> b!6424807 (= lt!2377725 lt!2377726)))

(assert (=> b!6424807 (= (++!14394 (++!14394 Nil!65153 (Cons!65153 (h!71601 (_1!36608 lt!2377560)) Nil!65153)) (t!378893 (_1!36608 lt!2377560))) (_1!36608 lt!2377560))))

(assert (=> b!6424807 (= lt!2377726 (lemmaMoveElementToOtherListKeepsConcatEq!2489 Nil!65153 (h!71601 (_1!36608 lt!2377560)) (t!378893 (_1!36608 lt!2377560)) (_1!36608 lt!2377560)))))

(assert (=> b!6424807 (= e!3897981 (findConcatSeparation!2631 (reg!16655 (regOne!33164 r!7292)) lt!2377533 (++!14394 Nil!65153 (Cons!65153 (h!71601 (_1!36608 lt!2377560)) Nil!65153)) (t!378893 (_1!36608 lt!2377560)) (_1!36608 lt!2377560)))))

(assert (= (and d!2014355 res!2640568) b!6424803))

(assert (= (and d!2014355 c!1173941) b!6424804))

(assert (= (and d!2014355 (not c!1173941)) b!6424799))

(assert (= (and b!6424799 c!1173942) b!6424802))

(assert (= (and b!6424799 (not c!1173942)) b!6424807))

(assert (= (and d!2014355 res!2640566) b!6424806))

(assert (= (and b!6424806 res!2640567) b!6424800))

(assert (= (and b!6424800 res!2640565) b!6424805))

(assert (= (and d!2014355 (not res!2640564)) b!6424801))

(declare-fun m!7219036 () Bool)

(assert (=> b!6424800 m!7219036))

(declare-fun m!7219038 () Bool)

(assert (=> b!6424800 m!7219038))

(declare-fun m!7219040 () Bool)

(assert (=> d!2014355 m!7219040))

(declare-fun m!7219042 () Bool)

(assert (=> d!2014355 m!7219042))

(assert (=> d!2014355 m!7218614))

(assert (=> b!6424806 m!7219036))

(declare-fun m!7219044 () Bool)

(assert (=> b!6424806 m!7219044))

(assert (=> b!6424801 m!7219040))

(assert (=> b!6424805 m!7219036))

(declare-fun m!7219046 () Bool)

(assert (=> b!6424805 m!7219046))

(assert (=> b!6424803 m!7218582))

(declare-fun m!7219048 () Bool)

(assert (=> b!6424807 m!7219048))

(assert (=> b!6424807 m!7219048))

(declare-fun m!7219050 () Bool)

(assert (=> b!6424807 m!7219050))

(declare-fun m!7219052 () Bool)

(assert (=> b!6424807 m!7219052))

(assert (=> b!6424807 m!7219048))

(declare-fun m!7219054 () Bool)

(assert (=> b!6424807 m!7219054))

(assert (=> b!6424308 d!2014355))

(declare-fun b!6424834 () Bool)

(declare-fun e!3898001 () Bool)

(declare-fun call!552585 () Bool)

(assert (=> b!6424834 (= e!3898001 call!552585)))

(declare-fun b!6424835 () Bool)

(declare-fun res!2640581 () Bool)

(declare-fun e!3898002 () Bool)

(assert (=> b!6424835 (=> res!2640581 e!3898002)))

(assert (=> b!6424835 (= res!2640581 (not (is-Concat!25171 (reg!16655 (regOne!33164 r!7292)))))))

(declare-fun e!3898005 () Bool)

(assert (=> b!6424835 (= e!3898005 e!3898002)))

(declare-fun call!552583 () Bool)

(declare-fun bm!552578 () Bool)

(declare-fun c!1173952 () Bool)

(declare-fun c!1173951 () Bool)

(assert (=> bm!552578 (= call!552583 (validRegex!8062 (ite c!1173951 (reg!16655 (reg!16655 (regOne!33164 r!7292))) (ite c!1173952 (regOne!33165 (reg!16655 (regOne!33164 r!7292))) (regOne!33164 (reg!16655 (regOne!33164 r!7292)))))))))

(declare-fun bm!552579 () Bool)

(assert (=> bm!552579 (= call!552585 (validRegex!8062 (ite c!1173952 (regTwo!33165 (reg!16655 (regOne!33164 r!7292))) (regTwo!33164 (reg!16655 (regOne!33164 r!7292))))))))

(declare-fun b!6424836 () Bool)

(declare-fun e!3898006 () Bool)

(assert (=> b!6424836 (= e!3898006 call!552583)))

(declare-fun b!6424837 () Bool)

(declare-fun res!2640583 () Bool)

(declare-fun e!3898004 () Bool)

(assert (=> b!6424837 (=> (not res!2640583) (not e!3898004))))

(declare-fun call!552584 () Bool)

(assert (=> b!6424837 (= res!2640583 call!552584)))

(assert (=> b!6424837 (= e!3898005 e!3898004)))

(declare-fun b!6424838 () Bool)

(assert (=> b!6424838 (= e!3898004 call!552585)))

(declare-fun bm!552580 () Bool)

(assert (=> bm!552580 (= call!552584 call!552583)))

(declare-fun b!6424839 () Bool)

(declare-fun e!3898003 () Bool)

(assert (=> b!6424839 (= e!3898003 e!3898005)))

(assert (=> b!6424839 (= c!1173952 (is-Union!16326 (reg!16655 (regOne!33164 r!7292))))))

(declare-fun d!2014357 () Bool)

(declare-fun res!2640582 () Bool)

(declare-fun e!3898000 () Bool)

(assert (=> d!2014357 (=> res!2640582 e!3898000)))

(assert (=> d!2014357 (= res!2640582 (is-ElementMatch!16326 (reg!16655 (regOne!33164 r!7292))))))

(assert (=> d!2014357 (= (validRegex!8062 (reg!16655 (regOne!33164 r!7292))) e!3898000)))

(declare-fun b!6424840 () Bool)

(assert (=> b!6424840 (= e!3898002 e!3898001)))

(declare-fun res!2640580 () Bool)

(assert (=> b!6424840 (=> (not res!2640580) (not e!3898001))))

(assert (=> b!6424840 (= res!2640580 call!552584)))

(declare-fun b!6424841 () Bool)

(assert (=> b!6424841 (= e!3898003 e!3898006)))

(declare-fun res!2640579 () Bool)

(assert (=> b!6424841 (= res!2640579 (not (nullable!6319 (reg!16655 (reg!16655 (regOne!33164 r!7292))))))))

(assert (=> b!6424841 (=> (not res!2640579) (not e!3898006))))

(declare-fun b!6424842 () Bool)

(assert (=> b!6424842 (= e!3898000 e!3898003)))

(assert (=> b!6424842 (= c!1173951 (is-Star!16326 (reg!16655 (regOne!33164 r!7292))))))

(assert (= (and d!2014357 (not res!2640582)) b!6424842))

(assert (= (and b!6424842 c!1173951) b!6424841))

(assert (= (and b!6424842 (not c!1173951)) b!6424839))

(assert (= (and b!6424841 res!2640579) b!6424836))

(assert (= (and b!6424839 c!1173952) b!6424837))

(assert (= (and b!6424839 (not c!1173952)) b!6424835))

(assert (= (and b!6424837 res!2640583) b!6424838))

(assert (= (and b!6424835 (not res!2640581)) b!6424840))

(assert (= (and b!6424840 res!2640580) b!6424834))

(assert (= (or b!6424838 b!6424834) bm!552579))

(assert (= (or b!6424837 b!6424840) bm!552580))

(assert (= (or b!6424836 bm!552580) bm!552578))

(declare-fun m!7219074 () Bool)

(assert (=> bm!552578 m!7219074))

(declare-fun m!7219076 () Bool)

(assert (=> bm!552579 m!7219076))

(declare-fun m!7219078 () Bool)

(assert (=> b!6424841 m!7219078))

(assert (=> b!6424308 d!2014357))

(declare-fun d!2014363 () Bool)

(assert (=> d!2014363 (= (matchR!8509 lt!2377533 (_1!36608 lt!2377560)) (matchRSpec!3427 lt!2377533 (_1!36608 lt!2377560)))))

(declare-fun lt!2377727 () Unit!158635)

(assert (=> d!2014363 (= lt!2377727 (choose!47735 lt!2377533 (_1!36608 lt!2377560)))))

(assert (=> d!2014363 (validRegex!8062 lt!2377533)))

(assert (=> d!2014363 (= (mainMatchTheorem!3427 lt!2377533 (_1!36608 lt!2377560)) lt!2377727)))

(declare-fun bs!1615982 () Bool)

(assert (= bs!1615982 d!2014363))

(assert (=> bs!1615982 m!7218582))

(assert (=> bs!1615982 m!7218622))

(declare-fun m!7219080 () Bool)

(assert (=> bs!1615982 m!7219080))

(assert (=> bs!1615982 m!7218912))

(assert (=> b!6424308 d!2014363))

(declare-fun d!2014365 () Bool)

(assert (=> d!2014365 (= (Exists!3396 lambda!355026) (choose!47733 lambda!355026))))

(declare-fun bs!1615983 () Bool)

(assert (= bs!1615983 d!2014365))

(declare-fun m!7219082 () Bool)

(assert (=> bs!1615983 m!7219082))

(assert (=> b!6424308 d!2014365))

(declare-fun bs!1615984 () Bool)

(declare-fun b!6424846 () Bool)

(assert (= bs!1615984 (and b!6424846 b!6424312)))

(declare-fun lambda!355081 () Int)

(assert (=> bs!1615984 (not (= lambda!355081 lambda!355021))))

(assert (=> bs!1615984 (not (= lambda!355081 lambda!355020))))

(declare-fun bs!1615985 () Bool)

(assert (= bs!1615985 (and b!6424846 b!6424308)))

(assert (=> bs!1615985 (= (= (reg!16655 lt!2377533) (reg!16655 (regOne!33164 r!7292))) (= lambda!355081 lambda!355026))))

(declare-fun bs!1615986 () Bool)

(assert (= bs!1615986 (and b!6424846 b!6424788)))

(assert (=> bs!1615986 (= (and (= (_1!36608 lt!2377560) s!2326) (= (reg!16655 lt!2377533) (reg!16655 lt!2377550)) (= lt!2377533 lt!2377550)) (= lambda!355081 lambda!355079))))

(declare-fun bs!1615987 () Bool)

(assert (= bs!1615987 (and b!6424846 d!2014311)))

(assert (=> bs!1615987 (not (= lambda!355081 lambda!355067))))

(assert (=> bs!1615985 (not (= lambda!355081 lambda!355025))))

(declare-fun bs!1615988 () Bool)

(assert (= bs!1615988 (and b!6424846 d!2014325)))

(assert (=> bs!1615988 (not (= lambda!355081 lambda!355071))))

(declare-fun bs!1615989 () Bool)

(assert (= bs!1615989 (and b!6424846 b!6424304)))

(assert (=> bs!1615989 (not (= lambda!355081 lambda!355023))))

(assert (=> bs!1615987 (not (= lambda!355081 lambda!355068))))

(declare-fun bs!1615990 () Bool)

(assert (= bs!1615990 (and b!6424846 b!6424792)))

(assert (=> bs!1615990 (not (= lambda!355081 lambda!355080))))

(assert (=> bs!1615989 (not (= lambda!355081 lambda!355024))))

(assert (=> b!6424846 true))

(assert (=> b!6424846 true))

(declare-fun bs!1615991 () Bool)

(declare-fun b!6424850 () Bool)

(assert (= bs!1615991 (and b!6424850 b!6424312)))

(declare-fun lambda!355082 () Int)

(assert (=> bs!1615991 (= (and (= (_1!36608 lt!2377560) s!2326) (= (regOne!33164 lt!2377533) (regOne!33164 r!7292)) (= (regTwo!33164 lt!2377533) (regTwo!33164 r!7292))) (= lambda!355082 lambda!355021))))

(assert (=> bs!1615991 (not (= lambda!355082 lambda!355020))))

(declare-fun bs!1615992 () Bool)

(assert (= bs!1615992 (and b!6424850 b!6424308)))

(assert (=> bs!1615992 (not (= lambda!355082 lambda!355026))))

(declare-fun bs!1615993 () Bool)

(assert (= bs!1615993 (and b!6424850 b!6424788)))

(assert (=> bs!1615993 (not (= lambda!355082 lambda!355079))))

(declare-fun bs!1615994 () Bool)

(assert (= bs!1615994 (and b!6424850 d!2014311)))

(assert (=> bs!1615994 (not (= lambda!355082 lambda!355067))))

(assert (=> bs!1615992 (not (= lambda!355082 lambda!355025))))

(declare-fun bs!1615995 () Bool)

(assert (= bs!1615995 (and b!6424850 b!6424846)))

(assert (=> bs!1615995 (not (= lambda!355082 lambda!355081))))

(declare-fun bs!1615996 () Bool)

(assert (= bs!1615996 (and b!6424850 d!2014325)))

(assert (=> bs!1615996 (not (= lambda!355082 lambda!355071))))

(declare-fun bs!1615997 () Bool)

(assert (= bs!1615997 (and b!6424850 b!6424304)))

(assert (=> bs!1615997 (not (= lambda!355082 lambda!355023))))

(assert (=> bs!1615994 (= (and (= (_1!36608 lt!2377560) s!2326) (= (regOne!33164 lt!2377533) lt!2377533) (= (regTwo!33164 lt!2377533) (regTwo!33164 r!7292))) (= lambda!355082 lambda!355068))))

(declare-fun bs!1615998 () Bool)

(assert (= bs!1615998 (and b!6424850 b!6424792)))

(assert (=> bs!1615998 (= (and (= (_1!36608 lt!2377560) s!2326) (= (regOne!33164 lt!2377533) (regOne!33164 lt!2377550)) (= (regTwo!33164 lt!2377533) (regTwo!33164 lt!2377550))) (= lambda!355082 lambda!355080))))

(assert (=> bs!1615997 (= (and (= (_1!36608 lt!2377560) s!2326) (= (regOne!33164 lt!2377533) lt!2377533) (= (regTwo!33164 lt!2377533) (regTwo!33164 r!7292))) (= lambda!355082 lambda!355024))))

(assert (=> b!6424850 true))

(assert (=> b!6424850 true))

(declare-fun b!6424843 () Bool)

(declare-fun c!1173953 () Bool)

(assert (=> b!6424843 (= c!1173953 (is-ElementMatch!16326 lt!2377533))))

(declare-fun e!3898008 () Bool)

(declare-fun e!3898010 () Bool)

(assert (=> b!6424843 (= e!3898008 e!3898010)))

(declare-fun b!6424844 () Bool)

(declare-fun c!1173954 () Bool)

(assert (=> b!6424844 (= c!1173954 (is-Union!16326 lt!2377533))))

(declare-fun e!3898007 () Bool)

(assert (=> b!6424844 (= e!3898010 e!3898007)))

(declare-fun b!6424845 () Bool)

(declare-fun e!3898011 () Bool)

(assert (=> b!6424845 (= e!3898011 (matchRSpec!3427 (regTwo!33165 lt!2377533) (_1!36608 lt!2377560)))))

(declare-fun e!3898009 () Bool)

(declare-fun call!552586 () Bool)

(assert (=> b!6424846 (= e!3898009 call!552586)))

(declare-fun d!2014367 () Bool)

(declare-fun c!1173956 () Bool)

(assert (=> d!2014367 (= c!1173956 (is-EmptyExpr!16326 lt!2377533))))

(declare-fun e!3898013 () Bool)

(assert (=> d!2014367 (= (matchRSpec!3427 lt!2377533 (_1!36608 lt!2377560)) e!3898013)))

(declare-fun b!6424847 () Bool)

(declare-fun e!3898012 () Bool)

(assert (=> b!6424847 (= e!3898007 e!3898012)))

(declare-fun c!1173955 () Bool)

(assert (=> b!6424847 (= c!1173955 (is-Star!16326 lt!2377533))))

(declare-fun b!6424848 () Bool)

(assert (=> b!6424848 (= e!3898013 e!3898008)))

(declare-fun res!2640585 () Bool)

(assert (=> b!6424848 (= res!2640585 (not (is-EmptyLang!16326 lt!2377533)))))

(assert (=> b!6424848 (=> (not res!2640585) (not e!3898008))))

(declare-fun bm!552581 () Bool)

(declare-fun call!552587 () Bool)

(assert (=> bm!552581 (= call!552587 (isEmpty!37315 (_1!36608 lt!2377560)))))

(declare-fun b!6424849 () Bool)

(declare-fun res!2640586 () Bool)

(assert (=> b!6424849 (=> res!2640586 e!3898009)))

(assert (=> b!6424849 (= res!2640586 call!552587)))

(assert (=> b!6424849 (= e!3898012 e!3898009)))

(assert (=> b!6424850 (= e!3898012 call!552586)))

(declare-fun b!6424851 () Bool)

(assert (=> b!6424851 (= e!3898007 e!3898011)))

(declare-fun res!2640584 () Bool)

(assert (=> b!6424851 (= res!2640584 (matchRSpec!3427 (regOne!33165 lt!2377533) (_1!36608 lt!2377560)))))

(assert (=> b!6424851 (=> res!2640584 e!3898011)))

(declare-fun b!6424852 () Bool)

(assert (=> b!6424852 (= e!3898013 call!552587)))

(declare-fun bm!552582 () Bool)

(assert (=> bm!552582 (= call!552586 (Exists!3396 (ite c!1173955 lambda!355081 lambda!355082)))))

(declare-fun b!6424853 () Bool)

(assert (=> b!6424853 (= e!3898010 (= (_1!36608 lt!2377560) (Cons!65153 (c!1173847 lt!2377533) Nil!65153)))))

(assert (= (and d!2014367 c!1173956) b!6424852))

(assert (= (and d!2014367 (not c!1173956)) b!6424848))

(assert (= (and b!6424848 res!2640585) b!6424843))

(assert (= (and b!6424843 c!1173953) b!6424853))

(assert (= (and b!6424843 (not c!1173953)) b!6424844))

(assert (= (and b!6424844 c!1173954) b!6424851))

(assert (= (and b!6424844 (not c!1173954)) b!6424847))

(assert (= (and b!6424851 (not res!2640584)) b!6424845))

(assert (= (and b!6424847 c!1173955) b!6424849))

(assert (= (and b!6424847 (not c!1173955)) b!6424850))

(assert (= (and b!6424849 (not res!2640586)) b!6424846))

(assert (= (or b!6424846 b!6424850) bm!552582))

(assert (= (or b!6424852 b!6424849) bm!552581))

(declare-fun m!7219090 () Bool)

(assert (=> b!6424845 m!7219090))

(assert (=> bm!552581 m!7218646))

(declare-fun m!7219092 () Bool)

(assert (=> b!6424851 m!7219092))

(declare-fun m!7219094 () Bool)

(assert (=> bm!552582 m!7219094))

(assert (=> b!6424308 d!2014367))

(declare-fun bs!1616000 () Bool)

(declare-fun d!2014371 () Bool)

(assert (= bs!1616000 (and d!2014371 b!6424312)))

(declare-fun lambda!355090 () Int)

(assert (=> bs!1616000 (not (= lambda!355090 lambda!355021))))

(assert (=> bs!1616000 (= (and (= (_1!36608 lt!2377560) s!2326) (= (reg!16655 (regOne!33164 r!7292)) (regOne!33164 r!7292)) (= (Star!16326 (reg!16655 (regOne!33164 r!7292))) (regTwo!33164 r!7292))) (= lambda!355090 lambda!355020))))

(declare-fun bs!1616001 () Bool)

(assert (= bs!1616001 (and d!2014371 b!6424850)))

(assert (=> bs!1616001 (not (= lambda!355090 lambda!355082))))

(declare-fun bs!1616002 () Bool)

(assert (= bs!1616002 (and d!2014371 b!6424308)))

(assert (=> bs!1616002 (not (= lambda!355090 lambda!355026))))

(declare-fun bs!1616003 () Bool)

(assert (= bs!1616003 (and d!2014371 b!6424788)))

(assert (=> bs!1616003 (not (= lambda!355090 lambda!355079))))

(declare-fun bs!1616004 () Bool)

(assert (= bs!1616004 (and d!2014371 d!2014311)))

(assert (=> bs!1616004 (= (and (= (_1!36608 lt!2377560) s!2326) (= (reg!16655 (regOne!33164 r!7292)) lt!2377533) (= (Star!16326 (reg!16655 (regOne!33164 r!7292))) (regTwo!33164 r!7292))) (= lambda!355090 lambda!355067))))

(assert (=> bs!1616002 (= (= (Star!16326 (reg!16655 (regOne!33164 r!7292))) lt!2377533) (= lambda!355090 lambda!355025))))

(declare-fun bs!1616005 () Bool)

(assert (= bs!1616005 (and d!2014371 b!6424846)))

(assert (=> bs!1616005 (not (= lambda!355090 lambda!355081))))

(declare-fun bs!1616006 () Bool)

(assert (= bs!1616006 (and d!2014371 d!2014325)))

(assert (=> bs!1616006 (= (and (= (_1!36608 lt!2377560) s!2326) (= (reg!16655 (regOne!33164 r!7292)) lt!2377533) (= (Star!16326 (reg!16655 (regOne!33164 r!7292))) (regTwo!33164 r!7292))) (= lambda!355090 lambda!355071))))

(declare-fun bs!1616007 () Bool)

(assert (= bs!1616007 (and d!2014371 b!6424304)))

(assert (=> bs!1616007 (= (and (= (_1!36608 lt!2377560) s!2326) (= (reg!16655 (regOne!33164 r!7292)) lt!2377533) (= (Star!16326 (reg!16655 (regOne!33164 r!7292))) (regTwo!33164 r!7292))) (= lambda!355090 lambda!355023))))

(assert (=> bs!1616004 (not (= lambda!355090 lambda!355068))))

(declare-fun bs!1616008 () Bool)

(assert (= bs!1616008 (and d!2014371 b!6424792)))

(assert (=> bs!1616008 (not (= lambda!355090 lambda!355080))))

(assert (=> bs!1616007 (not (= lambda!355090 lambda!355024))))

(assert (=> d!2014371 true))

(assert (=> d!2014371 true))

(declare-fun lambda!355091 () Int)

(assert (=> bs!1616000 (not (= lambda!355091 lambda!355021))))

(declare-fun bs!1616009 () Bool)

(assert (= bs!1616009 d!2014371))

(assert (=> bs!1616009 (not (= lambda!355091 lambda!355090))))

(assert (=> bs!1616000 (not (= lambda!355091 lambda!355020))))

(assert (=> bs!1616001 (not (= lambda!355091 lambda!355082))))

(assert (=> bs!1616002 (= (= (Star!16326 (reg!16655 (regOne!33164 r!7292))) lt!2377533) (= lambda!355091 lambda!355026))))

(assert (=> bs!1616003 (= (and (= (_1!36608 lt!2377560) s!2326) (= (reg!16655 (regOne!33164 r!7292)) (reg!16655 lt!2377550)) (= (Star!16326 (reg!16655 (regOne!33164 r!7292))) lt!2377550)) (= lambda!355091 lambda!355079))))

(assert (=> bs!1616004 (not (= lambda!355091 lambda!355067))))

(assert (=> bs!1616002 (not (= lambda!355091 lambda!355025))))

(assert (=> bs!1616005 (= (and (= (reg!16655 (regOne!33164 r!7292)) (reg!16655 lt!2377533)) (= (Star!16326 (reg!16655 (regOne!33164 r!7292))) lt!2377533)) (= lambda!355091 lambda!355081))))

(assert (=> bs!1616006 (not (= lambda!355091 lambda!355071))))

(assert (=> bs!1616007 (not (= lambda!355091 lambda!355023))))

(assert (=> bs!1616004 (not (= lambda!355091 lambda!355068))))

(assert (=> bs!1616008 (not (= lambda!355091 lambda!355080))))

(assert (=> bs!1616007 (not (= lambda!355091 lambda!355024))))

(assert (=> d!2014371 true))

(assert (=> d!2014371 true))

(assert (=> d!2014371 (= (Exists!3396 lambda!355090) (Exists!3396 lambda!355091))))

(declare-fun lt!2377733 () Unit!158635)

(declare-fun choose!47737 (Regex!16326 List!65277) Unit!158635)

(assert (=> d!2014371 (= lt!2377733 (choose!47737 (reg!16655 (regOne!33164 r!7292)) (_1!36608 lt!2377560)))))

(assert (=> d!2014371 (validRegex!8062 (reg!16655 (regOne!33164 r!7292)))))

(assert (=> d!2014371 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!617 (reg!16655 (regOne!33164 r!7292)) (_1!36608 lt!2377560)) lt!2377733)))

(declare-fun m!7219098 () Bool)

(assert (=> bs!1616009 m!7219098))

(declare-fun m!7219100 () Bool)

(assert (=> bs!1616009 m!7219100))

(declare-fun m!7219102 () Bool)

(assert (=> bs!1616009 m!7219102))

(assert (=> bs!1616009 m!7218614))

(assert (=> b!6424308 d!2014371))

(declare-fun d!2014375 () Bool)

(assert (=> d!2014375 (= (isDefined!12920 (findConcatSeparation!2631 (reg!16655 (regOne!33164 r!7292)) lt!2377533 Nil!65153 (_1!36608 lt!2377560) (_1!36608 lt!2377560))) (not (isEmpty!37319 (findConcatSeparation!2631 (reg!16655 (regOne!33164 r!7292)) lt!2377533 Nil!65153 (_1!36608 lt!2377560) (_1!36608 lt!2377560)))))))

(declare-fun bs!1616010 () Bool)

(assert (= bs!1616010 d!2014375))

(assert (=> bs!1616010 m!7218618))

(declare-fun m!7219104 () Bool)

(assert (=> bs!1616010 m!7219104))

(assert (=> b!6424308 d!2014375))

(declare-fun d!2014377 () Bool)

(assert (=> d!2014377 (= (Exists!3396 lambda!355025) (choose!47733 lambda!355025))))

(declare-fun bs!1616011 () Bool)

(assert (= bs!1616011 d!2014377))

(declare-fun m!7219106 () Bool)

(assert (=> bs!1616011 m!7219106))

(assert (=> b!6424308 d!2014377))

(declare-fun bs!1616012 () Bool)

(declare-fun d!2014379 () Bool)

(assert (= bs!1616012 (and d!2014379 b!6424312)))

(declare-fun lambda!355092 () Int)

(assert (=> bs!1616012 (not (= lambda!355092 lambda!355021))))

(declare-fun bs!1616013 () Bool)

(assert (= bs!1616013 (and d!2014379 d!2014371)))

(assert (=> bs!1616013 (= (= lt!2377533 (Star!16326 (reg!16655 (regOne!33164 r!7292)))) (= lambda!355092 lambda!355090))))

(assert (=> bs!1616012 (= (and (= (_1!36608 lt!2377560) s!2326) (= (reg!16655 (regOne!33164 r!7292)) (regOne!33164 r!7292)) (= lt!2377533 (regTwo!33164 r!7292))) (= lambda!355092 lambda!355020))))

(declare-fun bs!1616014 () Bool)

(assert (= bs!1616014 (and d!2014379 b!6424850)))

(assert (=> bs!1616014 (not (= lambda!355092 lambda!355082))))

(declare-fun bs!1616015 () Bool)

(assert (= bs!1616015 (and d!2014379 b!6424308)))

(assert (=> bs!1616015 (not (= lambda!355092 lambda!355026))))

(declare-fun bs!1616016 () Bool)

(assert (= bs!1616016 (and d!2014379 b!6424788)))

(assert (=> bs!1616016 (not (= lambda!355092 lambda!355079))))

(declare-fun bs!1616017 () Bool)

(assert (= bs!1616017 (and d!2014379 d!2014311)))

(assert (=> bs!1616017 (= (and (= (_1!36608 lt!2377560) s!2326) (= (reg!16655 (regOne!33164 r!7292)) lt!2377533) (= lt!2377533 (regTwo!33164 r!7292))) (= lambda!355092 lambda!355067))))

(assert (=> bs!1616015 (= lambda!355092 lambda!355025)))

(declare-fun bs!1616018 () Bool)

(assert (= bs!1616018 (and d!2014379 b!6424846)))

(assert (=> bs!1616018 (not (= lambda!355092 lambda!355081))))

(declare-fun bs!1616019 () Bool)

(assert (= bs!1616019 (and d!2014379 d!2014325)))

(assert (=> bs!1616019 (= (and (= (_1!36608 lt!2377560) s!2326) (= (reg!16655 (regOne!33164 r!7292)) lt!2377533) (= lt!2377533 (regTwo!33164 r!7292))) (= lambda!355092 lambda!355071))))

(assert (=> bs!1616013 (not (= lambda!355092 lambda!355091))))

(declare-fun bs!1616020 () Bool)

(assert (= bs!1616020 (and d!2014379 b!6424304)))

(assert (=> bs!1616020 (= (and (= (_1!36608 lt!2377560) s!2326) (= (reg!16655 (regOne!33164 r!7292)) lt!2377533) (= lt!2377533 (regTwo!33164 r!7292))) (= lambda!355092 lambda!355023))))

(assert (=> bs!1616017 (not (= lambda!355092 lambda!355068))))

(declare-fun bs!1616021 () Bool)

(assert (= bs!1616021 (and d!2014379 b!6424792)))

(assert (=> bs!1616021 (not (= lambda!355092 lambda!355080))))

(assert (=> bs!1616020 (not (= lambda!355092 lambda!355024))))

(assert (=> d!2014379 true))

(assert (=> d!2014379 true))

(assert (=> d!2014379 true))

(assert (=> d!2014379 (= (isDefined!12920 (findConcatSeparation!2631 (reg!16655 (regOne!33164 r!7292)) lt!2377533 Nil!65153 (_1!36608 lt!2377560) (_1!36608 lt!2377560))) (Exists!3396 lambda!355092))))

(declare-fun lt!2377734 () Unit!158635)

(assert (=> d!2014379 (= lt!2377734 (choose!47734 (reg!16655 (regOne!33164 r!7292)) lt!2377533 (_1!36608 lt!2377560)))))

(assert (=> d!2014379 (validRegex!8062 (reg!16655 (regOne!33164 r!7292)))))

(assert (=> d!2014379 (= (lemmaFindConcatSeparationEquivalentToExists!2395 (reg!16655 (regOne!33164 r!7292)) lt!2377533 (_1!36608 lt!2377560)) lt!2377734)))

(declare-fun bs!1616022 () Bool)

(assert (= bs!1616022 d!2014379))

(assert (=> bs!1616022 m!7218618))

(assert (=> bs!1616022 m!7218614))

(assert (=> bs!1616022 m!7218618))

(assert (=> bs!1616022 m!7218620))

(declare-fun m!7219108 () Bool)

(assert (=> bs!1616022 m!7219108))

(declare-fun m!7219110 () Bool)

(assert (=> bs!1616022 m!7219110))

(assert (=> b!6424308 d!2014379))

(declare-fun d!2014381 () Bool)

(declare-fun lt!2377735 () Regex!16326)

(assert (=> d!2014381 (validRegex!8062 lt!2377735)))

(assert (=> d!2014381 (= lt!2377735 (generalisedUnion!2170 (unfocusZipperList!1747 (Cons!65155 lt!2377549 Nil!65155))))))

(assert (=> d!2014381 (= (unfocusZipper!2068 (Cons!65155 lt!2377549 Nil!65155)) lt!2377735)))

(declare-fun bs!1616023 () Bool)

(assert (= bs!1616023 d!2014381))

(declare-fun m!7219112 () Bool)

(assert (=> bs!1616023 m!7219112))

(declare-fun m!7219114 () Bool)

(assert (=> bs!1616023 m!7219114))

(assert (=> bs!1616023 m!7219114))

(declare-fun m!7219116 () Bool)

(assert (=> bs!1616023 m!7219116))

(assert (=> b!6424330 d!2014381))

(declare-fun b!6424912 () Bool)

(declare-fun e!3898048 () (Set Context!11420))

(declare-fun e!3898046 () (Set Context!11420))

(assert (=> b!6424912 (= e!3898048 e!3898046)))

(declare-fun c!1173977 () Bool)

(assert (=> b!6424912 (= c!1173977 (is-Cons!65154 (exprs!6210 lt!2377543)))))

(declare-fun d!2014383 () Bool)

(declare-fun c!1173978 () Bool)

(declare-fun e!3898047 () Bool)

(assert (=> d!2014383 (= c!1173978 e!3898047)))

(declare-fun res!2640605 () Bool)

(assert (=> d!2014383 (=> (not res!2640605) (not e!3898047))))

(assert (=> d!2014383 (= res!2640605 (is-Cons!65154 (exprs!6210 lt!2377543)))))

(assert (=> d!2014383 (= (derivationStepZipperUp!1500 lt!2377543 (h!71601 s!2326)) e!3898048)))

(declare-fun b!6424913 () Bool)

(declare-fun call!552608 () (Set Context!11420))

(assert (=> b!6424913 (= e!3898046 call!552608)))

(declare-fun b!6424914 () Bool)

(assert (=> b!6424914 (= e!3898048 (set.union call!552608 (derivationStepZipperUp!1500 (Context!11421 (t!378894 (exprs!6210 lt!2377543))) (h!71601 s!2326))))))

(declare-fun bm!552603 () Bool)

(assert (=> bm!552603 (= call!552608 (derivationStepZipperDown!1574 (h!71602 (exprs!6210 lt!2377543)) (Context!11421 (t!378894 (exprs!6210 lt!2377543))) (h!71601 s!2326)))))

(declare-fun b!6424915 () Bool)

(assert (=> b!6424915 (= e!3898047 (nullable!6319 (h!71602 (exprs!6210 lt!2377543))))))

(declare-fun b!6424916 () Bool)

(assert (=> b!6424916 (= e!3898046 (as set.empty (Set Context!11420)))))

(assert (= (and d!2014383 res!2640605) b!6424915))

(assert (= (and d!2014383 c!1173978) b!6424914))

(assert (= (and d!2014383 (not c!1173978)) b!6424912))

(assert (= (and b!6424912 c!1173977) b!6424913))

(assert (= (and b!6424912 (not c!1173977)) b!6424916))

(assert (= (or b!6424914 b!6424913) bm!552603))

(declare-fun m!7219132 () Bool)

(assert (=> b!6424914 m!7219132))

(declare-fun m!7219136 () Bool)

(assert (=> bm!552603 m!7219136))

(declare-fun m!7219140 () Bool)

(assert (=> b!6424915 m!7219140))

(assert (=> b!6424330 d!2014383))

(declare-fun d!2014387 () Bool)

(declare-fun choose!47740 ((Set Context!11420) Int) (Set Context!11420))

(assert (=> d!2014387 (= (flatMap!1831 lt!2377538 lambda!355022) (choose!47740 lt!2377538 lambda!355022))))

(declare-fun bs!1616024 () Bool)

(assert (= bs!1616024 d!2014387))

(declare-fun m!7219148 () Bool)

(assert (=> bs!1616024 m!7219148))

(assert (=> b!6424330 d!2014387))

(declare-fun d!2014391 () Bool)

(assert (=> d!2014391 (= (flatMap!1831 lt!2377546 lambda!355022) (choose!47740 lt!2377546 lambda!355022))))

(declare-fun bs!1616025 () Bool)

(assert (= bs!1616025 d!2014391))

(declare-fun m!7219152 () Bool)

(assert (=> bs!1616025 m!7219152))

(assert (=> b!6424330 d!2014391))

(declare-fun b!6424919 () Bool)

(declare-fun e!3898052 () (Set Context!11420))

(declare-fun e!3898050 () (Set Context!11420))

(assert (=> b!6424919 (= e!3898052 e!3898050)))

(declare-fun c!1173980 () Bool)

(assert (=> b!6424919 (= c!1173980 (is-Cons!65154 (exprs!6210 lt!2377549)))))

(declare-fun d!2014395 () Bool)

(declare-fun c!1173981 () Bool)

(declare-fun e!3898051 () Bool)

(assert (=> d!2014395 (= c!1173981 e!3898051)))

(declare-fun res!2640606 () Bool)

(assert (=> d!2014395 (=> (not res!2640606) (not e!3898051))))

(assert (=> d!2014395 (= res!2640606 (is-Cons!65154 (exprs!6210 lt!2377549)))))

(assert (=> d!2014395 (= (derivationStepZipperUp!1500 lt!2377549 (h!71601 s!2326)) e!3898052)))

(declare-fun b!6424920 () Bool)

(declare-fun call!552609 () (Set Context!11420))

(assert (=> b!6424920 (= e!3898050 call!552609)))

(declare-fun b!6424921 () Bool)

(assert (=> b!6424921 (= e!3898052 (set.union call!552609 (derivationStepZipperUp!1500 (Context!11421 (t!378894 (exprs!6210 lt!2377549))) (h!71601 s!2326))))))

(declare-fun bm!552604 () Bool)

(assert (=> bm!552604 (= call!552609 (derivationStepZipperDown!1574 (h!71602 (exprs!6210 lt!2377549)) (Context!11421 (t!378894 (exprs!6210 lt!2377549))) (h!71601 s!2326)))))

(declare-fun b!6424922 () Bool)

(assert (=> b!6424922 (= e!3898051 (nullable!6319 (h!71602 (exprs!6210 lt!2377549))))))

(declare-fun b!6424923 () Bool)

(assert (=> b!6424923 (= e!3898050 (as set.empty (Set Context!11420)))))

(assert (= (and d!2014395 res!2640606) b!6424922))

(assert (= (and d!2014395 c!1173981) b!6424921))

(assert (= (and d!2014395 (not c!1173981)) b!6424919))

(assert (= (and b!6424919 c!1173980) b!6424920))

(assert (= (and b!6424919 (not c!1173980)) b!6424923))

(assert (= (or b!6424921 b!6424920) bm!552604))

(declare-fun m!7219154 () Bool)

(assert (=> b!6424921 m!7219154))

(declare-fun m!7219156 () Bool)

(assert (=> bm!552604 m!7219156))

(declare-fun m!7219158 () Bool)

(assert (=> b!6424922 m!7219158))

(assert (=> b!6424330 d!2014395))

(declare-fun d!2014397 () Bool)

(declare-fun dynLambda!25884 (Int Context!11420) (Set Context!11420))

(assert (=> d!2014397 (= (flatMap!1831 lt!2377538 lambda!355022) (dynLambda!25884 lambda!355022 lt!2377549))))

(declare-fun lt!2377738 () Unit!158635)

(declare-fun choose!47742 ((Set Context!11420) Context!11420 Int) Unit!158635)

(assert (=> d!2014397 (= lt!2377738 (choose!47742 lt!2377538 lt!2377549 lambda!355022))))

(assert (=> d!2014397 (= lt!2377538 (set.insert lt!2377549 (as set.empty (Set Context!11420))))))

(assert (=> d!2014397 (= (lemmaFlatMapOnSingletonSet!1357 lt!2377538 lt!2377549 lambda!355022) lt!2377738)))

(declare-fun b_lambda!244183 () Bool)

(assert (=> (not b_lambda!244183) (not d!2014397)))

(declare-fun bs!1616026 () Bool)

(assert (= bs!1616026 d!2014397))

(assert (=> bs!1616026 m!7218702))

(declare-fun m!7219160 () Bool)

(assert (=> bs!1616026 m!7219160))

(declare-fun m!7219162 () Bool)

(assert (=> bs!1616026 m!7219162))

(assert (=> bs!1616026 m!7218704))

(assert (=> b!6424330 d!2014397))

(declare-fun d!2014399 () Bool)

(assert (=> d!2014399 (= (flatMap!1831 lt!2377546 lambda!355022) (dynLambda!25884 lambda!355022 lt!2377543))))

(declare-fun lt!2377739 () Unit!158635)

(assert (=> d!2014399 (= lt!2377739 (choose!47742 lt!2377546 lt!2377543 lambda!355022))))

(assert (=> d!2014399 (= lt!2377546 (set.insert lt!2377543 (as set.empty (Set Context!11420))))))

(assert (=> d!2014399 (= (lemmaFlatMapOnSingletonSet!1357 lt!2377546 lt!2377543 lambda!355022) lt!2377739)))

(declare-fun b_lambda!244185 () Bool)

(assert (=> (not b_lambda!244185) (not d!2014399)))

(declare-fun bs!1616027 () Bool)

(assert (= bs!1616027 d!2014399))

(assert (=> bs!1616027 m!7218696))

(declare-fun m!7219164 () Bool)

(assert (=> bs!1616027 m!7219164))

(declare-fun m!7219166 () Bool)

(assert (=> bs!1616027 m!7219166))

(assert (=> bs!1616027 m!7218700))

(assert (=> b!6424330 d!2014399))

(declare-fun d!2014401 () Bool)

(assert (=> d!2014401 (= (flatMap!1831 z!1189 lambda!355022) (choose!47740 z!1189 lambda!355022))))

(declare-fun bs!1616028 () Bool)

(assert (= bs!1616028 d!2014401))

(declare-fun m!7219168 () Bool)

(assert (=> bs!1616028 m!7219168))

(assert (=> b!6424331 d!2014401))

(declare-fun d!2014403 () Bool)

(assert (=> d!2014403 (= (nullable!6319 (h!71602 (exprs!6210 (h!71603 zl!343)))) (nullableFct!2265 (h!71602 (exprs!6210 (h!71603 zl!343)))))))

(declare-fun bs!1616029 () Bool)

(assert (= bs!1616029 d!2014403))

(declare-fun m!7219170 () Bool)

(assert (=> bs!1616029 m!7219170))

(assert (=> b!6424331 d!2014403))

(declare-fun b!6424924 () Bool)

(declare-fun e!3898055 () (Set Context!11420))

(declare-fun e!3898053 () (Set Context!11420))

(assert (=> b!6424924 (= e!3898055 e!3898053)))

(declare-fun c!1173982 () Bool)

(assert (=> b!6424924 (= c!1173982 (is-Cons!65154 (exprs!6210 (Context!11421 (Cons!65154 (h!71602 (exprs!6210 (h!71603 zl!343))) (t!378894 (exprs!6210 (h!71603 zl!343))))))))))

(declare-fun d!2014405 () Bool)

(declare-fun c!1173983 () Bool)

(declare-fun e!3898054 () Bool)

(assert (=> d!2014405 (= c!1173983 e!3898054)))

(declare-fun res!2640607 () Bool)

(assert (=> d!2014405 (=> (not res!2640607) (not e!3898054))))

(assert (=> d!2014405 (= res!2640607 (is-Cons!65154 (exprs!6210 (Context!11421 (Cons!65154 (h!71602 (exprs!6210 (h!71603 zl!343))) (t!378894 (exprs!6210 (h!71603 zl!343))))))))))

(assert (=> d!2014405 (= (derivationStepZipperUp!1500 (Context!11421 (Cons!65154 (h!71602 (exprs!6210 (h!71603 zl!343))) (t!378894 (exprs!6210 (h!71603 zl!343))))) (h!71601 s!2326)) e!3898055)))

(declare-fun b!6424925 () Bool)

(declare-fun call!552610 () (Set Context!11420))

(assert (=> b!6424925 (= e!3898053 call!552610)))

(declare-fun b!6424926 () Bool)

(assert (=> b!6424926 (= e!3898055 (set.union call!552610 (derivationStepZipperUp!1500 (Context!11421 (t!378894 (exprs!6210 (Context!11421 (Cons!65154 (h!71602 (exprs!6210 (h!71603 zl!343))) (t!378894 (exprs!6210 (h!71603 zl!343)))))))) (h!71601 s!2326))))))

(declare-fun bm!552605 () Bool)

(assert (=> bm!552605 (= call!552610 (derivationStepZipperDown!1574 (h!71602 (exprs!6210 (Context!11421 (Cons!65154 (h!71602 (exprs!6210 (h!71603 zl!343))) (t!378894 (exprs!6210 (h!71603 zl!343))))))) (Context!11421 (t!378894 (exprs!6210 (Context!11421 (Cons!65154 (h!71602 (exprs!6210 (h!71603 zl!343))) (t!378894 (exprs!6210 (h!71603 zl!343)))))))) (h!71601 s!2326)))))

(declare-fun b!6424927 () Bool)

(assert (=> b!6424927 (= e!3898054 (nullable!6319 (h!71602 (exprs!6210 (Context!11421 (Cons!65154 (h!71602 (exprs!6210 (h!71603 zl!343))) (t!378894 (exprs!6210 (h!71603 zl!343)))))))))))

(declare-fun b!6424928 () Bool)

(assert (=> b!6424928 (= e!3898053 (as set.empty (Set Context!11420)))))

(assert (= (and d!2014405 res!2640607) b!6424927))

(assert (= (and d!2014405 c!1173983) b!6424926))

(assert (= (and d!2014405 (not c!1173983)) b!6424924))

(assert (= (and b!6424924 c!1173982) b!6424925))

(assert (= (and b!6424924 (not c!1173982)) b!6424928))

(assert (= (or b!6424926 b!6424925) bm!552605))

(declare-fun m!7219172 () Bool)

(assert (=> b!6424926 m!7219172))

(declare-fun m!7219174 () Bool)

(assert (=> bm!552605 m!7219174))

(declare-fun m!7219176 () Bool)

(assert (=> b!6424927 m!7219176))

(assert (=> b!6424331 d!2014405))

(declare-fun b!6424929 () Bool)

(declare-fun e!3898058 () (Set Context!11420))

(declare-fun e!3898056 () (Set Context!11420))

(assert (=> b!6424929 (= e!3898058 e!3898056)))

(declare-fun c!1173984 () Bool)

(assert (=> b!6424929 (= c!1173984 (is-Cons!65154 (exprs!6210 lt!2377528)))))

(declare-fun d!2014407 () Bool)

(declare-fun c!1173985 () Bool)

(declare-fun e!3898057 () Bool)

(assert (=> d!2014407 (= c!1173985 e!3898057)))

(declare-fun res!2640608 () Bool)

(assert (=> d!2014407 (=> (not res!2640608) (not e!3898057))))

(assert (=> d!2014407 (= res!2640608 (is-Cons!65154 (exprs!6210 lt!2377528)))))

(assert (=> d!2014407 (= (derivationStepZipperUp!1500 lt!2377528 (h!71601 s!2326)) e!3898058)))

(declare-fun b!6424930 () Bool)

(declare-fun call!552611 () (Set Context!11420))

(assert (=> b!6424930 (= e!3898056 call!552611)))

(declare-fun b!6424931 () Bool)

(assert (=> b!6424931 (= e!3898058 (set.union call!552611 (derivationStepZipperUp!1500 (Context!11421 (t!378894 (exprs!6210 lt!2377528))) (h!71601 s!2326))))))

(declare-fun bm!552606 () Bool)

(assert (=> bm!552606 (= call!552611 (derivationStepZipperDown!1574 (h!71602 (exprs!6210 lt!2377528)) (Context!11421 (t!378894 (exprs!6210 lt!2377528))) (h!71601 s!2326)))))

(declare-fun b!6424932 () Bool)

(assert (=> b!6424932 (= e!3898057 (nullable!6319 (h!71602 (exprs!6210 lt!2377528))))))

(declare-fun b!6424933 () Bool)

(assert (=> b!6424933 (= e!3898056 (as set.empty (Set Context!11420)))))

(assert (= (and d!2014407 res!2640608) b!6424932))

(assert (= (and d!2014407 c!1173985) b!6424931))

(assert (= (and d!2014407 (not c!1173985)) b!6424929))

(assert (= (and b!6424929 c!1173984) b!6424930))

(assert (= (and b!6424929 (not c!1173984)) b!6424933))

(assert (= (or b!6424931 b!6424930) bm!552606))

(declare-fun m!7219178 () Bool)

(assert (=> b!6424931 m!7219178))

(declare-fun m!7219180 () Bool)

(assert (=> bm!552606 m!7219180))

(declare-fun m!7219182 () Bool)

(assert (=> b!6424932 m!7219182))

(assert (=> b!6424331 d!2014407))

(declare-fun b!6424934 () Bool)

(declare-fun c!1173989 () Bool)

(declare-fun e!3898060 () Bool)

(assert (=> b!6424934 (= c!1173989 e!3898060)))

(declare-fun res!2640609 () Bool)

(assert (=> b!6424934 (=> (not res!2640609) (not e!3898060))))

(assert (=> b!6424934 (= res!2640609 (is-Concat!25171 (h!71602 (exprs!6210 (h!71603 zl!343)))))))

(declare-fun e!3898062 () (Set Context!11420))

(declare-fun e!3898063 () (Set Context!11420))

(assert (=> b!6424934 (= e!3898062 e!3898063)))

(declare-fun b!6424935 () Bool)

(declare-fun e!3898059 () (Set Context!11420))

(assert (=> b!6424935 (= e!3898059 e!3898062)))

(declare-fun c!1173990 () Bool)

(assert (=> b!6424935 (= c!1173990 (is-Union!16326 (h!71602 (exprs!6210 (h!71603 zl!343)))))))

(declare-fun d!2014409 () Bool)

(declare-fun c!1173988 () Bool)

(assert (=> d!2014409 (= c!1173988 (and (is-ElementMatch!16326 (h!71602 (exprs!6210 (h!71603 zl!343)))) (= (c!1173847 (h!71602 (exprs!6210 (h!71603 zl!343)))) (h!71601 s!2326))))))

(assert (=> d!2014409 (= (derivationStepZipperDown!1574 (h!71602 (exprs!6210 (h!71603 zl!343))) lt!2377528 (h!71601 s!2326)) e!3898059)))

(declare-fun b!6424936 () Bool)

(declare-fun e!3898064 () (Set Context!11420))

(assert (=> b!6424936 (= e!3898064 (as set.empty (Set Context!11420)))))

(declare-fun b!6424937 () Bool)

(declare-fun call!552614 () (Set Context!11420))

(declare-fun call!552616 () (Set Context!11420))

(assert (=> b!6424937 (= e!3898063 (set.union call!552614 call!552616))))

(declare-fun b!6424938 () Bool)

(declare-fun e!3898061 () (Set Context!11420))

(assert (=> b!6424938 (= e!3898063 e!3898061)))

(declare-fun c!1173987 () Bool)

(assert (=> b!6424938 (= c!1173987 (is-Concat!25171 (h!71602 (exprs!6210 (h!71603 zl!343)))))))

(declare-fun b!6424939 () Bool)

(declare-fun c!1173986 () Bool)

(assert (=> b!6424939 (= c!1173986 (is-Star!16326 (h!71602 (exprs!6210 (h!71603 zl!343)))))))

(assert (=> b!6424939 (= e!3898061 e!3898064)))

(declare-fun bm!552607 () Bool)

(declare-fun call!552613 () (Set Context!11420))

(assert (=> bm!552607 (= call!552613 call!552616)))

(declare-fun bm!552608 () Bool)

(declare-fun call!552615 () (Set Context!11420))

(declare-fun call!552617 () List!65278)

(assert (=> bm!552608 (= call!552615 (derivationStepZipperDown!1574 (ite c!1173990 (regTwo!33165 (h!71602 (exprs!6210 (h!71603 zl!343)))) (ite c!1173989 (regTwo!33164 (h!71602 (exprs!6210 (h!71603 zl!343)))) (ite c!1173987 (regOne!33164 (h!71602 (exprs!6210 (h!71603 zl!343)))) (reg!16655 (h!71602 (exprs!6210 (h!71603 zl!343))))))) (ite (or c!1173990 c!1173989) lt!2377528 (Context!11421 call!552617)) (h!71601 s!2326)))))

(declare-fun b!6424940 () Bool)

(assert (=> b!6424940 (= e!3898064 call!552613)))

(declare-fun call!552612 () List!65278)

(declare-fun bm!552609 () Bool)

(assert (=> bm!552609 (= call!552614 (derivationStepZipperDown!1574 (ite c!1173990 (regOne!33165 (h!71602 (exprs!6210 (h!71603 zl!343)))) (regOne!33164 (h!71602 (exprs!6210 (h!71603 zl!343))))) (ite c!1173990 lt!2377528 (Context!11421 call!552612)) (h!71601 s!2326)))))

(declare-fun b!6424941 () Bool)

(assert (=> b!6424941 (= e!3898061 call!552613)))

(declare-fun b!6424942 () Bool)

(assert (=> b!6424942 (= e!3898059 (set.insert lt!2377528 (as set.empty (Set Context!11420))))))

(declare-fun bm!552610 () Bool)

(assert (=> bm!552610 (= call!552612 ($colon$colon!2187 (exprs!6210 lt!2377528) (ite (or c!1173989 c!1173987) (regTwo!33164 (h!71602 (exprs!6210 (h!71603 zl!343)))) (h!71602 (exprs!6210 (h!71603 zl!343))))))))

(declare-fun bm!552611 () Bool)

(assert (=> bm!552611 (= call!552617 call!552612)))

(declare-fun b!6424943 () Bool)

(assert (=> b!6424943 (= e!3898062 (set.union call!552614 call!552615))))

(declare-fun b!6424944 () Bool)

(assert (=> b!6424944 (= e!3898060 (nullable!6319 (regOne!33164 (h!71602 (exprs!6210 (h!71603 zl!343))))))))

(declare-fun bm!552612 () Bool)

(assert (=> bm!552612 (= call!552616 call!552615)))

(assert (= (and d!2014409 c!1173988) b!6424942))

(assert (= (and d!2014409 (not c!1173988)) b!6424935))

(assert (= (and b!6424935 c!1173990) b!6424943))

(assert (= (and b!6424935 (not c!1173990)) b!6424934))

(assert (= (and b!6424934 res!2640609) b!6424944))

(assert (= (and b!6424934 c!1173989) b!6424937))

(assert (= (and b!6424934 (not c!1173989)) b!6424938))

(assert (= (and b!6424938 c!1173987) b!6424941))

(assert (= (and b!6424938 (not c!1173987)) b!6424939))

(assert (= (and b!6424939 c!1173986) b!6424940))

(assert (= (and b!6424939 (not c!1173986)) b!6424936))

(assert (= (or b!6424941 b!6424940) bm!552611))

(assert (= (or b!6424941 b!6424940) bm!552607))

(assert (= (or b!6424937 bm!552611) bm!552610))

(assert (= (or b!6424937 bm!552607) bm!552612))

(assert (= (or b!6424943 bm!552612) bm!552608))

(assert (= (or b!6424943 b!6424937) bm!552609))

(declare-fun m!7219184 () Bool)

(assert (=> bm!552608 m!7219184))

(declare-fun m!7219186 () Bool)

(assert (=> bm!552609 m!7219186))

(declare-fun m!7219188 () Bool)

(assert (=> b!6424942 m!7219188))

(declare-fun m!7219190 () Bool)

(assert (=> bm!552610 m!7219190))

(declare-fun m!7219192 () Bool)

(assert (=> b!6424944 m!7219192))

(assert (=> b!6424331 d!2014409))

(declare-fun b!6424945 () Bool)

(declare-fun e!3898067 () (Set Context!11420))

(declare-fun e!3898065 () (Set Context!11420))

(assert (=> b!6424945 (= e!3898067 e!3898065)))

(declare-fun c!1173991 () Bool)

(assert (=> b!6424945 (= c!1173991 (is-Cons!65154 (exprs!6210 (h!71603 zl!343))))))

(declare-fun d!2014411 () Bool)

(declare-fun c!1173992 () Bool)

(declare-fun e!3898066 () Bool)

(assert (=> d!2014411 (= c!1173992 e!3898066)))

(declare-fun res!2640610 () Bool)

(assert (=> d!2014411 (=> (not res!2640610) (not e!3898066))))

(assert (=> d!2014411 (= res!2640610 (is-Cons!65154 (exprs!6210 (h!71603 zl!343))))))

(assert (=> d!2014411 (= (derivationStepZipperUp!1500 (h!71603 zl!343) (h!71601 s!2326)) e!3898067)))

(declare-fun b!6424946 () Bool)

(declare-fun call!552618 () (Set Context!11420))

(assert (=> b!6424946 (= e!3898065 call!552618)))

(declare-fun b!6424947 () Bool)

(assert (=> b!6424947 (= e!3898067 (set.union call!552618 (derivationStepZipperUp!1500 (Context!11421 (t!378894 (exprs!6210 (h!71603 zl!343)))) (h!71601 s!2326))))))

(declare-fun bm!552613 () Bool)

(assert (=> bm!552613 (= call!552618 (derivationStepZipperDown!1574 (h!71602 (exprs!6210 (h!71603 zl!343))) (Context!11421 (t!378894 (exprs!6210 (h!71603 zl!343)))) (h!71601 s!2326)))))

(declare-fun b!6424948 () Bool)

(assert (=> b!6424948 (= e!3898066 (nullable!6319 (h!71602 (exprs!6210 (h!71603 zl!343)))))))

(declare-fun b!6424949 () Bool)

(assert (=> b!6424949 (= e!3898065 (as set.empty (Set Context!11420)))))

(assert (= (and d!2014411 res!2640610) b!6424948))

(assert (= (and d!2014411 c!1173992) b!6424947))

(assert (= (and d!2014411 (not c!1173992)) b!6424945))

(assert (= (and b!6424945 c!1173991) b!6424946))

(assert (= (and b!6424945 (not c!1173991)) b!6424949))

(assert (= (or b!6424947 b!6424946) bm!552613))

(declare-fun m!7219196 () Bool)

(assert (=> b!6424947 m!7219196))

(declare-fun m!7219198 () Bool)

(assert (=> bm!552613 m!7219198))

(assert (=> b!6424948 m!7218580))

(assert (=> b!6424331 d!2014411))

(declare-fun d!2014415 () Bool)

(assert (=> d!2014415 (= (flatMap!1831 z!1189 lambda!355022) (dynLambda!25884 lambda!355022 (h!71603 zl!343)))))

(declare-fun lt!2377743 () Unit!158635)

(assert (=> d!2014415 (= lt!2377743 (choose!47742 z!1189 (h!71603 zl!343) lambda!355022))))

(assert (=> d!2014415 (= z!1189 (set.insert (h!71603 zl!343) (as set.empty (Set Context!11420))))))

(assert (=> d!2014415 (= (lemmaFlatMapOnSingletonSet!1357 z!1189 (h!71603 zl!343) lambda!355022) lt!2377743)))

(declare-fun b_lambda!244187 () Bool)

(assert (=> (not b_lambda!244187) (not d!2014415)))

(declare-fun bs!1616031 () Bool)

(assert (= bs!1616031 d!2014415))

(assert (=> bs!1616031 m!7218570))

(declare-fun m!7219200 () Bool)

(assert (=> bs!1616031 m!7219200))

(declare-fun m!7219202 () Bool)

(assert (=> bs!1616031 m!7219202))

(declare-fun m!7219204 () Bool)

(assert (=> bs!1616031 m!7219204))

(assert (=> b!6424331 d!2014415))

(declare-fun bs!1616032 () Bool)

(declare-fun d!2014417 () Bool)

(assert (= bs!1616032 (and d!2014417 d!2014303)))

(declare-fun lambda!355095 () Int)

(assert (=> bs!1616032 (= lambda!355095 lambda!355062)))

(declare-fun b!6424988 () Bool)

(declare-fun e!3898095 () Bool)

(declare-fun lt!2377746 () Regex!16326)

(assert (=> b!6424988 (= e!3898095 (= lt!2377746 (head!13143 (unfocusZipperList!1747 zl!343))))))

(declare-fun b!6424990 () Bool)

(declare-fun e!3898094 () Bool)

(declare-fun isEmptyLang!1734 (Regex!16326) Bool)

(assert (=> b!6424990 (= e!3898094 (isEmptyLang!1734 lt!2377746))))

(declare-fun b!6424991 () Bool)

(declare-fun e!3898097 () Regex!16326)

(assert (=> b!6424991 (= e!3898097 EmptyLang!16326)))

(declare-fun b!6424992 () Bool)

(declare-fun e!3898096 () Bool)

(assert (=> b!6424992 (= e!3898096 (isEmpty!37313 (t!378894 (unfocusZipperList!1747 zl!343))))))

(declare-fun b!6424993 () Bool)

(declare-fun isUnion!1164 (Regex!16326) Bool)

(assert (=> b!6424993 (= e!3898095 (isUnion!1164 lt!2377746))))

(declare-fun b!6424994 () Bool)

(declare-fun e!3898098 () Bool)

(assert (=> b!6424994 (= e!3898098 e!3898094)))

(declare-fun c!1174005 () Bool)

(assert (=> b!6424994 (= c!1174005 (isEmpty!37313 (unfocusZipperList!1747 zl!343)))))

(declare-fun b!6424995 () Bool)

(declare-fun e!3898099 () Regex!16326)

(assert (=> b!6424995 (= e!3898099 e!3898097)))

(declare-fun c!1174008 () Bool)

(assert (=> b!6424995 (= c!1174008 (is-Cons!65154 (unfocusZipperList!1747 zl!343)))))

(assert (=> d!2014417 e!3898098))

(declare-fun res!2640625 () Bool)

(assert (=> d!2014417 (=> (not res!2640625) (not e!3898098))))

(assert (=> d!2014417 (= res!2640625 (validRegex!8062 lt!2377746))))

(assert (=> d!2014417 (= lt!2377746 e!3898099)))

(declare-fun c!1174006 () Bool)

(assert (=> d!2014417 (= c!1174006 e!3898096)))

(declare-fun res!2640626 () Bool)

(assert (=> d!2014417 (=> (not res!2640626) (not e!3898096))))

(assert (=> d!2014417 (= res!2640626 (is-Cons!65154 (unfocusZipperList!1747 zl!343)))))

(assert (=> d!2014417 (forall!15516 (unfocusZipperList!1747 zl!343) lambda!355095)))

(assert (=> d!2014417 (= (generalisedUnion!2170 (unfocusZipperList!1747 zl!343)) lt!2377746)))

(declare-fun b!6424989 () Bool)

(assert (=> b!6424989 (= e!3898099 (h!71602 (unfocusZipperList!1747 zl!343)))))

(declare-fun b!6424996 () Bool)

(assert (=> b!6424996 (= e!3898094 e!3898095)))

(declare-fun c!1174007 () Bool)

(assert (=> b!6424996 (= c!1174007 (isEmpty!37313 (tail!12228 (unfocusZipperList!1747 zl!343))))))

(declare-fun b!6424997 () Bool)

(assert (=> b!6424997 (= e!3898097 (Union!16326 (h!71602 (unfocusZipperList!1747 zl!343)) (generalisedUnion!2170 (t!378894 (unfocusZipperList!1747 zl!343)))))))

(assert (= (and d!2014417 res!2640626) b!6424992))

(assert (= (and d!2014417 c!1174006) b!6424989))

(assert (= (and d!2014417 (not c!1174006)) b!6424995))

(assert (= (and b!6424995 c!1174008) b!6424997))

(assert (= (and b!6424995 (not c!1174008)) b!6424991))

(assert (= (and d!2014417 res!2640625) b!6424994))

(assert (= (and b!6424994 c!1174005) b!6424990))

(assert (= (and b!6424994 (not c!1174005)) b!6424996))

(assert (= (and b!6424996 c!1174007) b!6424988))

(assert (= (and b!6424996 (not c!1174007)) b!6424993))

(assert (=> b!6424994 m!7218642))

(declare-fun m!7219206 () Bool)

(assert (=> b!6424994 m!7219206))

(declare-fun m!7219208 () Bool)

(assert (=> b!6424990 m!7219208))

(declare-fun m!7219210 () Bool)

(assert (=> b!6424993 m!7219210))

(assert (=> b!6424996 m!7218642))

(declare-fun m!7219212 () Bool)

(assert (=> b!6424996 m!7219212))

(assert (=> b!6424996 m!7219212))

(declare-fun m!7219214 () Bool)

(assert (=> b!6424996 m!7219214))

(declare-fun m!7219216 () Bool)

(assert (=> b!6424992 m!7219216))

(declare-fun m!7219218 () Bool)

(assert (=> b!6424997 m!7219218))

(assert (=> b!6424988 m!7218642))

(declare-fun m!7219220 () Bool)

(assert (=> b!6424988 m!7219220))

(declare-fun m!7219222 () Bool)

(assert (=> d!2014417 m!7219222))

(assert (=> d!2014417 m!7218642))

(declare-fun m!7219224 () Bool)

(assert (=> d!2014417 m!7219224))

(assert (=> b!6424310 d!2014417))

(declare-fun bs!1616033 () Bool)

(declare-fun d!2014419 () Bool)

(assert (= bs!1616033 (and d!2014419 d!2014303)))

(declare-fun lambda!355098 () Int)

(assert (=> bs!1616033 (= lambda!355098 lambda!355062)))

(declare-fun bs!1616034 () Bool)

(assert (= bs!1616034 (and d!2014419 d!2014417)))

(assert (=> bs!1616034 (= lambda!355098 lambda!355095)))

(declare-fun lt!2377749 () List!65278)

(assert (=> d!2014419 (forall!15516 lt!2377749 lambda!355098)))

(declare-fun e!3898109 () List!65278)

(assert (=> d!2014419 (= lt!2377749 e!3898109)))

(declare-fun c!1174013 () Bool)

(assert (=> d!2014419 (= c!1174013 (is-Cons!65155 zl!343))))

(assert (=> d!2014419 (= (unfocusZipperList!1747 zl!343) lt!2377749)))

(declare-fun b!6425011 () Bool)

(assert (=> b!6425011 (= e!3898109 (Cons!65154 (generalisedConcat!1923 (exprs!6210 (h!71603 zl!343))) (unfocusZipperList!1747 (t!378895 zl!343))))))

(declare-fun b!6425012 () Bool)

(assert (=> b!6425012 (= e!3898109 Nil!65154)))

(assert (= (and d!2014419 c!1174013) b!6425011))

(assert (= (and d!2014419 (not c!1174013)) b!6425012))

(declare-fun m!7219232 () Bool)

(assert (=> d!2014419 m!7219232))

(assert (=> b!6425011 m!7218668))

(declare-fun m!7219234 () Bool)

(assert (=> b!6425011 m!7219234))

(assert (=> b!6424310 d!2014419))

(declare-fun b!6425013 () Bool)

(declare-fun e!3898111 () Bool)

(declare-fun call!552630 () Bool)

(assert (=> b!6425013 (= e!3898111 call!552630)))

(declare-fun b!6425014 () Bool)

(declare-fun res!2640634 () Bool)

(declare-fun e!3898112 () Bool)

(assert (=> b!6425014 (=> res!2640634 e!3898112)))

(assert (=> b!6425014 (= res!2640634 (not (is-Concat!25171 r!7292)))))

(declare-fun e!3898115 () Bool)

(assert (=> b!6425014 (= e!3898115 e!3898112)))

(declare-fun c!1174015 () Bool)

(declare-fun c!1174014 () Bool)

(declare-fun bm!552623 () Bool)

(declare-fun call!552628 () Bool)

(assert (=> bm!552623 (= call!552628 (validRegex!8062 (ite c!1174014 (reg!16655 r!7292) (ite c!1174015 (regOne!33165 r!7292) (regOne!33164 r!7292)))))))

(declare-fun bm!552624 () Bool)

(assert (=> bm!552624 (= call!552630 (validRegex!8062 (ite c!1174015 (regTwo!33165 r!7292) (regTwo!33164 r!7292))))))

(declare-fun b!6425015 () Bool)

(declare-fun e!3898116 () Bool)

(assert (=> b!6425015 (= e!3898116 call!552628)))

(declare-fun b!6425016 () Bool)

(declare-fun res!2640636 () Bool)

(declare-fun e!3898114 () Bool)

(assert (=> b!6425016 (=> (not res!2640636) (not e!3898114))))

(declare-fun call!552629 () Bool)

(assert (=> b!6425016 (= res!2640636 call!552629)))

(assert (=> b!6425016 (= e!3898115 e!3898114)))

(declare-fun b!6425017 () Bool)

(assert (=> b!6425017 (= e!3898114 call!552630)))

(declare-fun bm!552625 () Bool)

(assert (=> bm!552625 (= call!552629 call!552628)))

(declare-fun b!6425018 () Bool)

(declare-fun e!3898113 () Bool)

(assert (=> b!6425018 (= e!3898113 e!3898115)))

(assert (=> b!6425018 (= c!1174015 (is-Union!16326 r!7292))))

(declare-fun d!2014423 () Bool)

(declare-fun res!2640635 () Bool)

(declare-fun e!3898110 () Bool)

(assert (=> d!2014423 (=> res!2640635 e!3898110)))

(assert (=> d!2014423 (= res!2640635 (is-ElementMatch!16326 r!7292))))

(assert (=> d!2014423 (= (validRegex!8062 r!7292) e!3898110)))

(declare-fun b!6425019 () Bool)

(assert (=> b!6425019 (= e!3898112 e!3898111)))

(declare-fun res!2640633 () Bool)

(assert (=> b!6425019 (=> (not res!2640633) (not e!3898111))))

(assert (=> b!6425019 (= res!2640633 call!552629)))

(declare-fun b!6425020 () Bool)

(assert (=> b!6425020 (= e!3898113 e!3898116)))

(declare-fun res!2640632 () Bool)

(assert (=> b!6425020 (= res!2640632 (not (nullable!6319 (reg!16655 r!7292))))))

(assert (=> b!6425020 (=> (not res!2640632) (not e!3898116))))

(declare-fun b!6425021 () Bool)

(assert (=> b!6425021 (= e!3898110 e!3898113)))

(assert (=> b!6425021 (= c!1174014 (is-Star!16326 r!7292))))

(assert (= (and d!2014423 (not res!2640635)) b!6425021))

(assert (= (and b!6425021 c!1174014) b!6425020))

(assert (= (and b!6425021 (not c!1174014)) b!6425018))

(assert (= (and b!6425020 res!2640632) b!6425015))

(assert (= (and b!6425018 c!1174015) b!6425016))

(assert (= (and b!6425018 (not c!1174015)) b!6425014))

(assert (= (and b!6425016 res!2640636) b!6425017))

(assert (= (and b!6425014 (not res!2640634)) b!6425019))

(assert (= (and b!6425019 res!2640633) b!6425013))

(assert (= (or b!6425017 b!6425013) bm!552624))

(assert (= (or b!6425016 b!6425019) bm!552625))

(assert (= (or b!6425015 bm!552625) bm!552623))

(declare-fun m!7219236 () Bool)

(assert (=> bm!552623 m!7219236))

(declare-fun m!7219238 () Bool)

(assert (=> bm!552624 m!7219238))

(declare-fun m!7219240 () Bool)

(assert (=> b!6425020 m!7219240))

(assert (=> start!634732 d!2014423))

(declare-fun b!6425022 () Bool)

(declare-fun e!3898117 () Bool)

(assert (=> b!6425022 (= e!3898117 (= (head!13144 (_1!36608 lt!2377560)) (c!1173847 lt!2377533)))))

(declare-fun b!6425023 () Bool)

(declare-fun e!3898119 () Bool)

(declare-fun e!3898122 () Bool)

(assert (=> b!6425023 (= e!3898119 e!3898122)))

(declare-fun res!2640641 () Bool)

(assert (=> b!6425023 (=> res!2640641 e!3898122)))

(declare-fun call!552631 () Bool)

(assert (=> b!6425023 (= res!2640641 call!552631)))

(declare-fun b!6425024 () Bool)

(declare-fun e!3898121 () Bool)

(assert (=> b!6425024 (= e!3898121 (nullable!6319 lt!2377533))))

(declare-fun b!6425025 () Bool)

(declare-fun res!2640639 () Bool)

(declare-fun e!3898120 () Bool)

(assert (=> b!6425025 (=> res!2640639 e!3898120)))

(assert (=> b!6425025 (= res!2640639 (not (is-ElementMatch!16326 lt!2377533)))))

(declare-fun e!3898123 () Bool)

(assert (=> b!6425025 (= e!3898123 e!3898120)))

(declare-fun b!6425026 () Bool)

(declare-fun e!3898118 () Bool)

(declare-fun lt!2377750 () Bool)

(assert (=> b!6425026 (= e!3898118 (= lt!2377750 call!552631))))

(declare-fun b!6425027 () Bool)

(declare-fun res!2640644 () Bool)

(assert (=> b!6425027 (=> (not res!2640644) (not e!3898117))))

(assert (=> b!6425027 (= res!2640644 (not call!552631))))

(declare-fun b!6425028 () Bool)

(assert (=> b!6425028 (= e!3898123 (not lt!2377750))))

(declare-fun b!6425029 () Bool)

(assert (=> b!6425029 (= e!3898122 (not (= (head!13144 (_1!36608 lt!2377560)) (c!1173847 lt!2377533))))))

(declare-fun bm!552626 () Bool)

(assert (=> bm!552626 (= call!552631 (isEmpty!37315 (_1!36608 lt!2377560)))))

(declare-fun b!6425030 () Bool)

(assert (=> b!6425030 (= e!3898120 e!3898119)))

(declare-fun res!2640643 () Bool)

(assert (=> b!6425030 (=> (not res!2640643) (not e!3898119))))

(assert (=> b!6425030 (= res!2640643 (not lt!2377750))))

(declare-fun d!2014425 () Bool)

(assert (=> d!2014425 e!3898118))

(declare-fun c!1174016 () Bool)

(assert (=> d!2014425 (= c!1174016 (is-EmptyExpr!16326 lt!2377533))))

(assert (=> d!2014425 (= lt!2377750 e!3898121)))

(declare-fun c!1174018 () Bool)

(assert (=> d!2014425 (= c!1174018 (isEmpty!37315 (_1!36608 lt!2377560)))))

(assert (=> d!2014425 (validRegex!8062 lt!2377533)))

(assert (=> d!2014425 (= (matchR!8509 lt!2377533 (_1!36608 lt!2377560)) lt!2377750)))

(declare-fun b!6425031 () Bool)

(assert (=> b!6425031 (= e!3898118 e!3898123)))

(declare-fun c!1174017 () Bool)

(assert (=> b!6425031 (= c!1174017 (is-EmptyLang!16326 lt!2377533))))

(declare-fun b!6425032 () Bool)

(assert (=> b!6425032 (= e!3898121 (matchR!8509 (derivativeStep!5030 lt!2377533 (head!13144 (_1!36608 lt!2377560))) (tail!12229 (_1!36608 lt!2377560))))))

(declare-fun b!6425033 () Bool)

(declare-fun res!2640640 () Bool)

(assert (=> b!6425033 (=> res!2640640 e!3898122)))

(assert (=> b!6425033 (= res!2640640 (not (isEmpty!37315 (tail!12229 (_1!36608 lt!2377560)))))))

(declare-fun b!6425034 () Bool)

(declare-fun res!2640638 () Bool)

(assert (=> b!6425034 (=> (not res!2640638) (not e!3898117))))

(assert (=> b!6425034 (= res!2640638 (isEmpty!37315 (tail!12229 (_1!36608 lt!2377560))))))

(declare-fun b!6425035 () Bool)

(declare-fun res!2640642 () Bool)

(assert (=> b!6425035 (=> res!2640642 e!3898120)))

(assert (=> b!6425035 (= res!2640642 e!3898117)))

(declare-fun res!2640637 () Bool)

(assert (=> b!6425035 (=> (not res!2640637) (not e!3898117))))

(assert (=> b!6425035 (= res!2640637 lt!2377750)))

(assert (= (and d!2014425 c!1174018) b!6425024))

(assert (= (and d!2014425 (not c!1174018)) b!6425032))

(assert (= (and d!2014425 c!1174016) b!6425026))

(assert (= (and d!2014425 (not c!1174016)) b!6425031))

(assert (= (and b!6425031 c!1174017) b!6425028))

(assert (= (and b!6425031 (not c!1174017)) b!6425025))

(assert (= (and b!6425025 (not res!2640639)) b!6425035))

(assert (= (and b!6425035 res!2640637) b!6425027))

(assert (= (and b!6425027 res!2640644) b!6425034))

(assert (= (and b!6425034 res!2640638) b!6425022))

(assert (= (and b!6425035 (not res!2640642)) b!6425030))

(assert (= (and b!6425030 res!2640643) b!6425023))

(assert (= (and b!6425023 (not res!2640641)) b!6425033))

(assert (= (and b!6425033 (not res!2640640)) b!6425029))

(assert (= (or b!6425026 b!6425023 b!6425027) bm!552626))

(declare-fun m!7219242 () Bool)

(assert (=> b!6425024 m!7219242))

(assert (=> bm!552626 m!7218646))

(declare-fun m!7219244 () Bool)

(assert (=> b!6425029 m!7219244))

(declare-fun m!7219246 () Bool)

(assert (=> b!6425033 m!7219246))

(assert (=> b!6425033 m!7219246))

(declare-fun m!7219248 () Bool)

(assert (=> b!6425033 m!7219248))

(assert (=> b!6425034 m!7219246))

(assert (=> b!6425034 m!7219246))

(assert (=> b!6425034 m!7219248))

(assert (=> d!2014425 m!7218646))

(assert (=> d!2014425 m!7218912))

(assert (=> b!6425032 m!7219244))

(assert (=> b!6425032 m!7219244))

(declare-fun m!7219250 () Bool)

(assert (=> b!6425032 m!7219250))

(assert (=> b!6425032 m!7219246))

(assert (=> b!6425032 m!7219250))

(assert (=> b!6425032 m!7219246))

(declare-fun m!7219252 () Bool)

(assert (=> b!6425032 m!7219252))

(assert (=> b!6425022 m!7219244))

(assert (=> b!6424332 d!2014425))

(declare-fun e!3898128 () Bool)

(declare-fun d!2014427 () Bool)

(assert (=> d!2014427 (= (matchZipper!2338 (set.union lt!2377547 lt!2377527) (t!378893 s!2326)) e!3898128)))

(declare-fun res!2640651 () Bool)

(assert (=> d!2014427 (=> res!2640651 e!3898128)))

(assert (=> d!2014427 (= res!2640651 (matchZipper!2338 lt!2377547 (t!378893 s!2326)))))

(declare-fun lt!2377755 () Unit!158635)

(declare-fun choose!47746 ((Set Context!11420) (Set Context!11420) List!65277) Unit!158635)

(assert (=> d!2014427 (= lt!2377755 (choose!47746 lt!2377547 lt!2377527 (t!378893 s!2326)))))

(assert (=> d!2014427 (= (lemmaZipperConcatMatchesSameAsBothZippers!1157 lt!2377547 lt!2377527 (t!378893 s!2326)) lt!2377755)))

(declare-fun b!6425042 () Bool)

(assert (=> b!6425042 (= e!3898128 (matchZipper!2338 lt!2377527 (t!378893 s!2326)))))

(assert (= (and d!2014427 (not res!2640651)) b!6425042))

(assert (=> d!2014427 m!7218600))

(assert (=> d!2014427 m!7218598))

(declare-fun m!7219254 () Bool)

(assert (=> d!2014427 m!7219254))

(assert (=> b!6425042 m!7218604))

(assert (=> b!6424311 d!2014427))

(declare-fun d!2014429 () Bool)

(declare-fun c!1174019 () Bool)

(assert (=> d!2014429 (= c!1174019 (isEmpty!37315 (t!378893 s!2326)))))

(declare-fun e!3898131 () Bool)

(assert (=> d!2014429 (= (matchZipper!2338 lt!2377547 (t!378893 s!2326)) e!3898131)))

(declare-fun b!6425049 () Bool)

(assert (=> b!6425049 (= e!3898131 (nullableZipper!2091 lt!2377547))))

(declare-fun b!6425050 () Bool)

(assert (=> b!6425050 (= e!3898131 (matchZipper!2338 (derivationStepZipper!2292 lt!2377547 (head!13144 (t!378893 s!2326))) (tail!12229 (t!378893 s!2326))))))

(assert (= (and d!2014429 c!1174019) b!6425049))

(assert (= (and d!2014429 (not c!1174019)) b!6425050))

(assert (=> d!2014429 m!7218894))

(declare-fun m!7219256 () Bool)

(assert (=> b!6425049 m!7219256))

(assert (=> b!6425050 m!7218898))

(assert (=> b!6425050 m!7218898))

(declare-fun m!7219258 () Bool)

(assert (=> b!6425050 m!7219258))

(assert (=> b!6425050 m!7218902))

(assert (=> b!6425050 m!7219258))

(assert (=> b!6425050 m!7218902))

(declare-fun m!7219260 () Bool)

(assert (=> b!6425050 m!7219260))

(assert (=> b!6424311 d!2014429))

(declare-fun d!2014431 () Bool)

(declare-fun c!1174020 () Bool)

(assert (=> d!2014431 (= c!1174020 (isEmpty!37315 (t!378893 s!2326)))))

(declare-fun e!3898132 () Bool)

(assert (=> d!2014431 (= (matchZipper!2338 (set.union lt!2377547 lt!2377527) (t!378893 s!2326)) e!3898132)))

(declare-fun b!6425051 () Bool)

(assert (=> b!6425051 (= e!3898132 (nullableZipper!2091 (set.union lt!2377547 lt!2377527)))))

(declare-fun b!6425052 () Bool)

(assert (=> b!6425052 (= e!3898132 (matchZipper!2338 (derivationStepZipper!2292 (set.union lt!2377547 lt!2377527) (head!13144 (t!378893 s!2326))) (tail!12229 (t!378893 s!2326))))))

(assert (= (and d!2014431 c!1174020) b!6425051))

(assert (= (and d!2014431 (not c!1174020)) b!6425052))

(assert (=> d!2014431 m!7218894))

(declare-fun m!7219262 () Bool)

(assert (=> b!6425051 m!7219262))

(assert (=> b!6425052 m!7218898))

(assert (=> b!6425052 m!7218898))

(declare-fun m!7219264 () Bool)

(assert (=> b!6425052 m!7219264))

(assert (=> b!6425052 m!7218902))

(assert (=> b!6425052 m!7219264))

(assert (=> b!6425052 m!7218902))

(declare-fun m!7219266 () Bool)

(assert (=> b!6425052 m!7219266))

(assert (=> b!6424311 d!2014431))

(declare-fun d!2014433 () Bool)

(declare-fun e!3898135 () Bool)

(assert (=> d!2014433 e!3898135))

(declare-fun res!2640660 () Bool)

(assert (=> d!2014433 (=> (not res!2640660) (not e!3898135))))

(declare-fun lt!2377759 () List!65279)

(declare-fun noDuplicate!2156 (List!65279) Bool)

(assert (=> d!2014433 (= res!2640660 (noDuplicate!2156 lt!2377759))))

(declare-fun choose!47747 ((Set Context!11420)) List!65279)

(assert (=> d!2014433 (= lt!2377759 (choose!47747 z!1189))))

(assert (=> d!2014433 (= (toList!10110 z!1189) lt!2377759)))

(declare-fun b!6425055 () Bool)

(declare-fun content!12368 (List!65279) (Set Context!11420))

(assert (=> b!6425055 (= e!3898135 (= (content!12368 lt!2377759) z!1189))))

(assert (= (and d!2014433 res!2640660) b!6425055))

(declare-fun m!7219268 () Bool)

(assert (=> d!2014433 m!7219268))

(declare-fun m!7219270 () Bool)

(assert (=> d!2014433 m!7219270))

(declare-fun m!7219272 () Bool)

(assert (=> b!6425055 m!7219272))

(assert (=> b!6424333 d!2014433))

(declare-fun d!2014435 () Bool)

(declare-fun e!3898137 () Bool)

(assert (=> d!2014435 e!3898137))

(declare-fun res!2640661 () Bool)

(assert (=> d!2014435 (=> res!2640661 e!3898137)))

(declare-fun e!3898138 () Bool)

(assert (=> d!2014435 (= res!2640661 e!3898138)))

(declare-fun res!2640663 () Bool)

(assert (=> d!2014435 (=> (not res!2640663) (not e!3898138))))

(declare-fun lt!2377760 () Option!16217)

(assert (=> d!2014435 (= res!2640663 (isDefined!12920 lt!2377760))))

(declare-fun e!3898139 () Option!16217)

(assert (=> d!2014435 (= lt!2377760 e!3898139)))

(declare-fun c!1174021 () Bool)

(declare-fun e!3898136 () Bool)

(assert (=> d!2014435 (= c!1174021 e!3898136)))

(declare-fun res!2640665 () Bool)

(assert (=> d!2014435 (=> (not res!2640665) (not e!3898136))))

(assert (=> d!2014435 (= res!2640665 (matchR!8509 (regOne!33164 r!7292) Nil!65153))))

(assert (=> d!2014435 (validRegex!8062 (regOne!33164 r!7292))))

(assert (=> d!2014435 (= (findConcatSeparation!2631 (regOne!33164 r!7292) (regTwo!33164 r!7292) Nil!65153 s!2326 s!2326) lt!2377760)))

(declare-fun b!6425056 () Bool)

(declare-fun e!3898140 () Option!16217)

(assert (=> b!6425056 (= e!3898139 e!3898140)))

(declare-fun c!1174022 () Bool)

(assert (=> b!6425056 (= c!1174022 (is-Nil!65153 s!2326))))

(declare-fun b!6425057 () Bool)

(declare-fun res!2640662 () Bool)

(assert (=> b!6425057 (=> (not res!2640662) (not e!3898138))))

(assert (=> b!6425057 (= res!2640662 (matchR!8509 (regTwo!33164 r!7292) (_2!36608 (get!22573 lt!2377760))))))

(declare-fun b!6425058 () Bool)

(assert (=> b!6425058 (= e!3898137 (not (isDefined!12920 lt!2377760)))))

(declare-fun b!6425059 () Bool)

(assert (=> b!6425059 (= e!3898140 None!16216)))

(declare-fun b!6425060 () Bool)

(assert (=> b!6425060 (= e!3898136 (matchR!8509 (regTwo!33164 r!7292) s!2326))))

(declare-fun b!6425061 () Bool)

(assert (=> b!6425061 (= e!3898139 (Some!16216 (tuple2!66611 Nil!65153 s!2326)))))

(declare-fun b!6425062 () Bool)

(assert (=> b!6425062 (= e!3898138 (= (++!14394 (_1!36608 (get!22573 lt!2377760)) (_2!36608 (get!22573 lt!2377760))) s!2326))))

(declare-fun b!6425063 () Bool)

(declare-fun res!2640664 () Bool)

(assert (=> b!6425063 (=> (not res!2640664) (not e!3898138))))

(assert (=> b!6425063 (= res!2640664 (matchR!8509 (regOne!33164 r!7292) (_1!36608 (get!22573 lt!2377760))))))

(declare-fun b!6425064 () Bool)

(declare-fun lt!2377761 () Unit!158635)

(declare-fun lt!2377762 () Unit!158635)

(assert (=> b!6425064 (= lt!2377761 lt!2377762)))

(assert (=> b!6425064 (= (++!14394 (++!14394 Nil!65153 (Cons!65153 (h!71601 s!2326) Nil!65153)) (t!378893 s!2326)) s!2326)))

(assert (=> b!6425064 (= lt!2377762 (lemmaMoveElementToOtherListKeepsConcatEq!2489 Nil!65153 (h!71601 s!2326) (t!378893 s!2326) s!2326))))

(assert (=> b!6425064 (= e!3898140 (findConcatSeparation!2631 (regOne!33164 r!7292) (regTwo!33164 r!7292) (++!14394 Nil!65153 (Cons!65153 (h!71601 s!2326) Nil!65153)) (t!378893 s!2326) s!2326))))

(assert (= (and d!2014435 res!2640665) b!6425060))

(assert (= (and d!2014435 c!1174021) b!6425061))

(assert (= (and d!2014435 (not c!1174021)) b!6425056))

(assert (= (and b!6425056 c!1174022) b!6425059))

(assert (= (and b!6425056 (not c!1174022)) b!6425064))

(assert (= (and d!2014435 res!2640663) b!6425063))

(assert (= (and b!6425063 res!2640664) b!6425057))

(assert (= (and b!6425057 res!2640662) b!6425062))

(assert (= (and d!2014435 (not res!2640661)) b!6425058))

(declare-fun m!7219274 () Bool)

(assert (=> b!6425057 m!7219274))

(declare-fun m!7219276 () Bool)

(assert (=> b!6425057 m!7219276))

(declare-fun m!7219278 () Bool)

(assert (=> d!2014435 m!7219278))

(declare-fun m!7219280 () Bool)

(assert (=> d!2014435 m!7219280))

(declare-fun m!7219282 () Bool)

(assert (=> d!2014435 m!7219282))

(assert (=> b!6425063 m!7219274))

(declare-fun m!7219284 () Bool)

(assert (=> b!6425063 m!7219284))

(assert (=> b!6425058 m!7219278))

(assert (=> b!6425062 m!7219274))

(declare-fun m!7219286 () Bool)

(assert (=> b!6425062 m!7219286))

(assert (=> b!6425060 m!7218944))

(assert (=> b!6425064 m!7218946))

(assert (=> b!6425064 m!7218946))

(assert (=> b!6425064 m!7218948))

(assert (=> b!6425064 m!7218950))

(assert (=> b!6425064 m!7218946))

(declare-fun m!7219288 () Bool)

(assert (=> b!6425064 m!7219288))

(assert (=> b!6424312 d!2014435))

(declare-fun d!2014437 () Bool)

(assert (=> d!2014437 (= (Exists!3396 lambda!355021) (choose!47733 lambda!355021))))

(declare-fun bs!1616039 () Bool)

(assert (= bs!1616039 d!2014437))

(declare-fun m!7219292 () Bool)

(assert (=> bs!1616039 m!7219292))

(assert (=> b!6424312 d!2014437))

(declare-fun d!2014439 () Bool)

(assert (=> d!2014439 (= (Exists!3396 lambda!355020) (choose!47733 lambda!355020))))

(declare-fun bs!1616040 () Bool)

(assert (= bs!1616040 d!2014439))

(declare-fun m!7219298 () Bool)

(assert (=> bs!1616040 m!7219298))

(assert (=> b!6424312 d!2014439))

(declare-fun bs!1616042 () Bool)

(declare-fun d!2014443 () Bool)

(assert (= bs!1616042 (and d!2014443 b!6424312)))

(declare-fun lambda!355105 () Int)

(assert (=> bs!1616042 (not (= lambda!355105 lambda!355021))))

(declare-fun bs!1616043 () Bool)

(assert (= bs!1616043 (and d!2014443 d!2014371)))

(assert (=> bs!1616043 (= (and (= s!2326 (_1!36608 lt!2377560)) (= (regOne!33164 r!7292) (reg!16655 (regOne!33164 r!7292))) (= (regTwo!33164 r!7292) (Star!16326 (reg!16655 (regOne!33164 r!7292))))) (= lambda!355105 lambda!355090))))

(assert (=> bs!1616042 (= lambda!355105 lambda!355020)))

(declare-fun bs!1616044 () Bool)

(assert (= bs!1616044 (and d!2014443 b!6424850)))

(assert (=> bs!1616044 (not (= lambda!355105 lambda!355082))))

(declare-fun bs!1616045 () Bool)

(assert (= bs!1616045 (and d!2014443 b!6424308)))

(assert (=> bs!1616045 (not (= lambda!355105 lambda!355026))))

(declare-fun bs!1616046 () Bool)

(assert (= bs!1616046 (and d!2014443 b!6424788)))

(assert (=> bs!1616046 (not (= lambda!355105 lambda!355079))))

(declare-fun bs!1616047 () Bool)

(assert (= bs!1616047 (and d!2014443 d!2014311)))

(assert (=> bs!1616047 (= (= (regOne!33164 r!7292) lt!2377533) (= lambda!355105 lambda!355067))))

(assert (=> bs!1616045 (= (and (= s!2326 (_1!36608 lt!2377560)) (= (regOne!33164 r!7292) (reg!16655 (regOne!33164 r!7292))) (= (regTwo!33164 r!7292) lt!2377533)) (= lambda!355105 lambda!355025))))

(declare-fun bs!1616048 () Bool)

(assert (= bs!1616048 (and d!2014443 b!6424846)))

(assert (=> bs!1616048 (not (= lambda!355105 lambda!355081))))

(declare-fun bs!1616049 () Bool)

(assert (= bs!1616049 (and d!2014443 d!2014325)))

(assert (=> bs!1616049 (= (= (regOne!33164 r!7292) lt!2377533) (= lambda!355105 lambda!355071))))

(assert (=> bs!1616043 (not (= lambda!355105 lambda!355091))))

(declare-fun bs!1616050 () Bool)

(assert (= bs!1616050 (and d!2014443 b!6424304)))

(assert (=> bs!1616050 (= (= (regOne!33164 r!7292) lt!2377533) (= lambda!355105 lambda!355023))))

(assert (=> bs!1616047 (not (= lambda!355105 lambda!355068))))

(declare-fun bs!1616051 () Bool)

(assert (= bs!1616051 (and d!2014443 d!2014379)))

(assert (=> bs!1616051 (= (and (= s!2326 (_1!36608 lt!2377560)) (= (regOne!33164 r!7292) (reg!16655 (regOne!33164 r!7292))) (= (regTwo!33164 r!7292) lt!2377533)) (= lambda!355105 lambda!355092))))

(declare-fun bs!1616052 () Bool)

(assert (= bs!1616052 (and d!2014443 b!6424792)))

(assert (=> bs!1616052 (not (= lambda!355105 lambda!355080))))

(assert (=> bs!1616050 (not (= lambda!355105 lambda!355024))))

(assert (=> d!2014443 true))

(assert (=> d!2014443 true))

(assert (=> d!2014443 true))

(assert (=> d!2014443 (= (isDefined!12920 (findConcatSeparation!2631 (regOne!33164 r!7292) (regTwo!33164 r!7292) Nil!65153 s!2326 s!2326)) (Exists!3396 lambda!355105))))

(declare-fun lt!2377763 () Unit!158635)

(assert (=> d!2014443 (= lt!2377763 (choose!47734 (regOne!33164 r!7292) (regTwo!33164 r!7292) s!2326))))

(assert (=> d!2014443 (validRegex!8062 (regOne!33164 r!7292))))

(assert (=> d!2014443 (= (lemmaFindConcatSeparationEquivalentToExists!2395 (regOne!33164 r!7292) (regTwo!33164 r!7292) s!2326) lt!2377763)))

(declare-fun bs!1616053 () Bool)

(assert (= bs!1616053 d!2014443))

(assert (=> bs!1616053 m!7218670))

(assert (=> bs!1616053 m!7219282))

(assert (=> bs!1616053 m!7218670))

(assert (=> bs!1616053 m!7218672))

(declare-fun m!7219302 () Bool)

(assert (=> bs!1616053 m!7219302))

(declare-fun m!7219304 () Bool)

(assert (=> bs!1616053 m!7219304))

(assert (=> b!6424312 d!2014443))

(declare-fun bs!1616054 () Bool)

(declare-fun d!2014447 () Bool)

(assert (= bs!1616054 (and d!2014447 b!6424312)))

(declare-fun lambda!355106 () Int)

(assert (=> bs!1616054 (not (= lambda!355106 lambda!355021))))

(declare-fun bs!1616055 () Bool)

(assert (= bs!1616055 (and d!2014447 d!2014443)))

(assert (=> bs!1616055 (= lambda!355106 lambda!355105)))

(declare-fun bs!1616056 () Bool)

(assert (= bs!1616056 (and d!2014447 d!2014371)))

(assert (=> bs!1616056 (= (and (= s!2326 (_1!36608 lt!2377560)) (= (regOne!33164 r!7292) (reg!16655 (regOne!33164 r!7292))) (= (regTwo!33164 r!7292) (Star!16326 (reg!16655 (regOne!33164 r!7292))))) (= lambda!355106 lambda!355090))))

(assert (=> bs!1616054 (= lambda!355106 lambda!355020)))

(declare-fun bs!1616057 () Bool)

(assert (= bs!1616057 (and d!2014447 b!6424850)))

(assert (=> bs!1616057 (not (= lambda!355106 lambda!355082))))

(declare-fun bs!1616058 () Bool)

(assert (= bs!1616058 (and d!2014447 b!6424308)))

(assert (=> bs!1616058 (not (= lambda!355106 lambda!355026))))

(declare-fun bs!1616059 () Bool)

(assert (= bs!1616059 (and d!2014447 b!6424788)))

(assert (=> bs!1616059 (not (= lambda!355106 lambda!355079))))

(declare-fun bs!1616060 () Bool)

(assert (= bs!1616060 (and d!2014447 d!2014311)))

(assert (=> bs!1616060 (= (= (regOne!33164 r!7292) lt!2377533) (= lambda!355106 lambda!355067))))

(assert (=> bs!1616058 (= (and (= s!2326 (_1!36608 lt!2377560)) (= (regOne!33164 r!7292) (reg!16655 (regOne!33164 r!7292))) (= (regTwo!33164 r!7292) lt!2377533)) (= lambda!355106 lambda!355025))))

(declare-fun bs!1616061 () Bool)

(assert (= bs!1616061 (and d!2014447 b!6424846)))

(assert (=> bs!1616061 (not (= lambda!355106 lambda!355081))))

(declare-fun bs!1616062 () Bool)

(assert (= bs!1616062 (and d!2014447 d!2014325)))

(assert (=> bs!1616062 (= (= (regOne!33164 r!7292) lt!2377533) (= lambda!355106 lambda!355071))))

(assert (=> bs!1616056 (not (= lambda!355106 lambda!355091))))

(declare-fun bs!1616063 () Bool)

(assert (= bs!1616063 (and d!2014447 b!6424304)))

(assert (=> bs!1616063 (= (= (regOne!33164 r!7292) lt!2377533) (= lambda!355106 lambda!355023))))

(assert (=> bs!1616060 (not (= lambda!355106 lambda!355068))))

(declare-fun bs!1616064 () Bool)

(assert (= bs!1616064 (and d!2014447 d!2014379)))

(assert (=> bs!1616064 (= (and (= s!2326 (_1!36608 lt!2377560)) (= (regOne!33164 r!7292) (reg!16655 (regOne!33164 r!7292))) (= (regTwo!33164 r!7292) lt!2377533)) (= lambda!355106 lambda!355092))))

(declare-fun bs!1616065 () Bool)

(assert (= bs!1616065 (and d!2014447 b!6424792)))

(assert (=> bs!1616065 (not (= lambda!355106 lambda!355080))))

(assert (=> bs!1616063 (not (= lambda!355106 lambda!355024))))

(assert (=> d!2014447 true))

(assert (=> d!2014447 true))

(assert (=> d!2014447 true))

(declare-fun lambda!355107 () Int)

(assert (=> bs!1616054 (= lambda!355107 lambda!355021)))

(assert (=> bs!1616055 (not (= lambda!355107 lambda!355105))))

(assert (=> bs!1616056 (not (= lambda!355107 lambda!355090))))

(assert (=> bs!1616054 (not (= lambda!355107 lambda!355020))))

(assert (=> bs!1616057 (= (and (= s!2326 (_1!36608 lt!2377560)) (= (regOne!33164 r!7292) (regOne!33164 lt!2377533)) (= (regTwo!33164 r!7292) (regTwo!33164 lt!2377533))) (= lambda!355107 lambda!355082))))

(assert (=> bs!1616058 (not (= lambda!355107 lambda!355026))))

(assert (=> bs!1616059 (not (= lambda!355107 lambda!355079))))

(assert (=> bs!1616060 (not (= lambda!355107 lambda!355067))))

(assert (=> bs!1616058 (not (= lambda!355107 lambda!355025))))

(assert (=> bs!1616061 (not (= lambda!355107 lambda!355081))))

(assert (=> bs!1616062 (not (= lambda!355107 lambda!355071))))

(assert (=> bs!1616056 (not (= lambda!355107 lambda!355091))))

(declare-fun bs!1616066 () Bool)

(assert (= bs!1616066 d!2014447))

(assert (=> bs!1616066 (not (= lambda!355107 lambda!355106))))

(assert (=> bs!1616063 (not (= lambda!355107 lambda!355023))))

(assert (=> bs!1616060 (= (= (regOne!33164 r!7292) lt!2377533) (= lambda!355107 lambda!355068))))

(assert (=> bs!1616064 (not (= lambda!355107 lambda!355092))))

(assert (=> bs!1616065 (= (and (= (regOne!33164 r!7292) (regOne!33164 lt!2377550)) (= (regTwo!33164 r!7292) (regTwo!33164 lt!2377550))) (= lambda!355107 lambda!355080))))

(assert (=> bs!1616063 (= (= (regOne!33164 r!7292) lt!2377533) (= lambda!355107 lambda!355024))))

(assert (=> d!2014447 true))

(assert (=> d!2014447 true))

(assert (=> d!2014447 true))

(assert (=> d!2014447 (= (Exists!3396 lambda!355106) (Exists!3396 lambda!355107))))

(declare-fun lt!2377764 () Unit!158635)

(assert (=> d!2014447 (= lt!2377764 (choose!47732 (regOne!33164 r!7292) (regTwo!33164 r!7292) s!2326))))

(assert (=> d!2014447 (validRegex!8062 (regOne!33164 r!7292))))

(assert (=> d!2014447 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1933 (regOne!33164 r!7292) (regTwo!33164 r!7292) s!2326) lt!2377764)))

(declare-fun m!7219306 () Bool)

(assert (=> bs!1616066 m!7219306))

(declare-fun m!7219308 () Bool)

(assert (=> bs!1616066 m!7219308))

(declare-fun m!7219310 () Bool)

(assert (=> bs!1616066 m!7219310))

(assert (=> bs!1616066 m!7219282))

(assert (=> b!6424312 d!2014447))

(declare-fun d!2014449 () Bool)

(assert (=> d!2014449 (= (isDefined!12920 (findConcatSeparation!2631 (regOne!33164 r!7292) (regTwo!33164 r!7292) Nil!65153 s!2326 s!2326)) (not (isEmpty!37319 (findConcatSeparation!2631 (regOne!33164 r!7292) (regTwo!33164 r!7292) Nil!65153 s!2326 s!2326))))))

(declare-fun bs!1616067 () Bool)

(assert (= bs!1616067 d!2014449))

(assert (=> bs!1616067 m!7218670))

(declare-fun m!7219312 () Bool)

(assert (=> bs!1616067 m!7219312))

(assert (=> b!6424312 d!2014449))

(declare-fun d!2014451 () Bool)

(declare-fun lt!2377765 () Regex!16326)

(assert (=> d!2014451 (validRegex!8062 lt!2377765)))

(assert (=> d!2014451 (= lt!2377765 (generalisedUnion!2170 (unfocusZipperList!1747 (Cons!65155 lt!2377556 Nil!65155))))))

(assert (=> d!2014451 (= (unfocusZipper!2068 (Cons!65155 lt!2377556 Nil!65155)) lt!2377765)))

(declare-fun bs!1616068 () Bool)

(assert (= bs!1616068 d!2014451))

(declare-fun m!7219314 () Bool)

(assert (=> bs!1616068 m!7219314))

(declare-fun m!7219316 () Bool)

(assert (=> bs!1616068 m!7219316))

(assert (=> bs!1616068 m!7219316))

(declare-fun m!7219318 () Bool)

(assert (=> bs!1616068 m!7219318))

(assert (=> b!6424334 d!2014451))

(declare-fun d!2014453 () Bool)

(declare-fun c!1174023 () Bool)

(assert (=> d!2014453 (= c!1174023 (isEmpty!37315 s!2326))))

(declare-fun e!3898141 () Bool)

(assert (=> d!2014453 (= (matchZipper!2338 lt!2377530 s!2326) e!3898141)))

(declare-fun b!6425065 () Bool)

(assert (=> b!6425065 (= e!3898141 (nullableZipper!2091 lt!2377530))))

(declare-fun b!6425066 () Bool)

(assert (=> b!6425066 (= e!3898141 (matchZipper!2338 (derivationStepZipper!2292 lt!2377530 (head!13144 s!2326)) (tail!12229 s!2326)))))

(assert (= (and d!2014453 c!1174023) b!6425065))

(assert (= (and d!2014453 (not c!1174023)) b!6425066))

(assert (=> d!2014453 m!7219000))

(declare-fun m!7219320 () Bool)

(assert (=> b!6425065 m!7219320))

(assert (=> b!6425066 m!7219002))

(assert (=> b!6425066 m!7219002))

(declare-fun m!7219322 () Bool)

(assert (=> b!6425066 m!7219322))

(assert (=> b!6425066 m!7219004))

(assert (=> b!6425066 m!7219322))

(assert (=> b!6425066 m!7219004))

(declare-fun m!7219324 () Bool)

(assert (=> b!6425066 m!7219324))

(assert (=> b!6424313 d!2014453))

(declare-fun d!2014455 () Bool)

(declare-fun c!1174024 () Bool)

(assert (=> d!2014455 (= c!1174024 (isEmpty!37315 (t!378893 s!2326)))))

(declare-fun e!3898142 () Bool)

(assert (=> d!2014455 (= (matchZipper!2338 lt!2377562 (t!378893 s!2326)) e!3898142)))

(declare-fun b!6425067 () Bool)

(assert (=> b!6425067 (= e!3898142 (nullableZipper!2091 lt!2377562))))

(declare-fun b!6425068 () Bool)

(assert (=> b!6425068 (= e!3898142 (matchZipper!2338 (derivationStepZipper!2292 lt!2377562 (head!13144 (t!378893 s!2326))) (tail!12229 (t!378893 s!2326))))))

(assert (= (and d!2014455 c!1174024) b!6425067))

(assert (= (and d!2014455 (not c!1174024)) b!6425068))

(assert (=> d!2014455 m!7218894))

(declare-fun m!7219326 () Bool)

(assert (=> b!6425067 m!7219326))

(assert (=> b!6425068 m!7218898))

(assert (=> b!6425068 m!7218898))

(declare-fun m!7219328 () Bool)

(assert (=> b!6425068 m!7219328))

(assert (=> b!6425068 m!7218902))

(assert (=> b!6425068 m!7219328))

(assert (=> b!6425068 m!7218902))

(declare-fun m!7219330 () Bool)

(assert (=> b!6425068 m!7219330))

(assert (=> b!6424313 d!2014455))

(declare-fun bs!1616069 () Bool)

(declare-fun b!6425072 () Bool)

(assert (= bs!1616069 (and b!6425072 b!6424312)))

(declare-fun lambda!355108 () Int)

(assert (=> bs!1616069 (not (= lambda!355108 lambda!355021))))

(declare-fun bs!1616070 () Bool)

(assert (= bs!1616070 (and b!6425072 d!2014443)))

(assert (=> bs!1616070 (not (= lambda!355108 lambda!355105))))

(assert (=> bs!1616069 (not (= lambda!355108 lambda!355020))))

(declare-fun bs!1616071 () Bool)

(assert (= bs!1616071 (and b!6425072 b!6424850)))

(assert (=> bs!1616071 (not (= lambda!355108 lambda!355082))))

(declare-fun bs!1616072 () Bool)

(assert (= bs!1616072 (and b!6425072 b!6424308)))

(assert (=> bs!1616072 (= (and (= s!2326 (_1!36608 lt!2377560)) (= (reg!16655 r!7292) (reg!16655 (regOne!33164 r!7292))) (= r!7292 lt!2377533)) (= lambda!355108 lambda!355026))))

(declare-fun bs!1616073 () Bool)

(assert (= bs!1616073 (and b!6425072 b!6424788)))

(assert (=> bs!1616073 (= (and (= (reg!16655 r!7292) (reg!16655 lt!2377550)) (= r!7292 lt!2377550)) (= lambda!355108 lambda!355079))))

(declare-fun bs!1616074 () Bool)

(assert (= bs!1616074 (and b!6425072 d!2014311)))

(assert (=> bs!1616074 (not (= lambda!355108 lambda!355067))))

(assert (=> bs!1616072 (not (= lambda!355108 lambda!355025))))

(declare-fun bs!1616075 () Bool)

(assert (= bs!1616075 (and b!6425072 b!6424846)))

(assert (=> bs!1616075 (= (and (= s!2326 (_1!36608 lt!2377560)) (= (reg!16655 r!7292) (reg!16655 lt!2377533)) (= r!7292 lt!2377533)) (= lambda!355108 lambda!355081))))

(declare-fun bs!1616076 () Bool)

(assert (= bs!1616076 (and b!6425072 d!2014325)))

(assert (=> bs!1616076 (not (= lambda!355108 lambda!355071))))

(declare-fun bs!1616077 () Bool)

(assert (= bs!1616077 (and b!6425072 d!2014371)))

(assert (=> bs!1616077 (= (and (= s!2326 (_1!36608 lt!2377560)) (= (reg!16655 r!7292) (reg!16655 (regOne!33164 r!7292))) (= r!7292 (Star!16326 (reg!16655 (regOne!33164 r!7292))))) (= lambda!355108 lambda!355091))))

(declare-fun bs!1616078 () Bool)

(assert (= bs!1616078 (and b!6425072 d!2014447)))

(assert (=> bs!1616078 (not (= lambda!355108 lambda!355107))))

(assert (=> bs!1616077 (not (= lambda!355108 lambda!355090))))

(assert (=> bs!1616078 (not (= lambda!355108 lambda!355106))))

(declare-fun bs!1616079 () Bool)

(assert (= bs!1616079 (and b!6425072 b!6424304)))

(assert (=> bs!1616079 (not (= lambda!355108 lambda!355023))))

(assert (=> bs!1616074 (not (= lambda!355108 lambda!355068))))

(declare-fun bs!1616080 () Bool)

(assert (= bs!1616080 (and b!6425072 d!2014379)))

(assert (=> bs!1616080 (not (= lambda!355108 lambda!355092))))

(declare-fun bs!1616081 () Bool)

(assert (= bs!1616081 (and b!6425072 b!6424792)))

(assert (=> bs!1616081 (not (= lambda!355108 lambda!355080))))

(assert (=> bs!1616079 (not (= lambda!355108 lambda!355024))))

(assert (=> b!6425072 true))

(assert (=> b!6425072 true))

(declare-fun bs!1616082 () Bool)

(declare-fun b!6425076 () Bool)

(assert (= bs!1616082 (and b!6425076 b!6424312)))

(declare-fun lambda!355109 () Int)

(assert (=> bs!1616082 (= lambda!355109 lambda!355021)))

(declare-fun bs!1616083 () Bool)

(assert (= bs!1616083 (and b!6425076 d!2014443)))

(assert (=> bs!1616083 (not (= lambda!355109 lambda!355105))))

(assert (=> bs!1616082 (not (= lambda!355109 lambda!355020))))

(declare-fun bs!1616084 () Bool)

(assert (= bs!1616084 (and b!6425076 b!6424850)))

(assert (=> bs!1616084 (= (and (= s!2326 (_1!36608 lt!2377560)) (= (regOne!33164 r!7292) (regOne!33164 lt!2377533)) (= (regTwo!33164 r!7292) (regTwo!33164 lt!2377533))) (= lambda!355109 lambda!355082))))

(declare-fun bs!1616085 () Bool)

(assert (= bs!1616085 (and b!6425076 b!6424308)))

(assert (=> bs!1616085 (not (= lambda!355109 lambda!355026))))

(declare-fun bs!1616086 () Bool)

(assert (= bs!1616086 (and b!6425076 d!2014311)))

(assert (=> bs!1616086 (not (= lambda!355109 lambda!355067))))

(assert (=> bs!1616085 (not (= lambda!355109 lambda!355025))))

(declare-fun bs!1616087 () Bool)

(assert (= bs!1616087 (and b!6425076 b!6424846)))

(assert (=> bs!1616087 (not (= lambda!355109 lambda!355081))))

(declare-fun bs!1616088 () Bool)

(assert (= bs!1616088 (and b!6425076 d!2014325)))

(assert (=> bs!1616088 (not (= lambda!355109 lambda!355071))))

(declare-fun bs!1616089 () Bool)

(assert (= bs!1616089 (and b!6425076 d!2014371)))

(assert (=> bs!1616089 (not (= lambda!355109 lambda!355091))))

(declare-fun bs!1616090 () Bool)

(assert (= bs!1616090 (and b!6425076 d!2014447)))

(assert (=> bs!1616090 (= lambda!355109 lambda!355107)))

(assert (=> bs!1616089 (not (= lambda!355109 lambda!355090))))

(declare-fun bs!1616091 () Bool)

(assert (= bs!1616091 (and b!6425076 b!6424788)))

(assert (=> bs!1616091 (not (= lambda!355109 lambda!355079))))

(declare-fun bs!1616092 () Bool)

(assert (= bs!1616092 (and b!6425076 b!6425072)))

(assert (=> bs!1616092 (not (= lambda!355109 lambda!355108))))

(assert (=> bs!1616090 (not (= lambda!355109 lambda!355106))))

(declare-fun bs!1616093 () Bool)

(assert (= bs!1616093 (and b!6425076 b!6424304)))

(assert (=> bs!1616093 (not (= lambda!355109 lambda!355023))))

(assert (=> bs!1616086 (= (= (regOne!33164 r!7292) lt!2377533) (= lambda!355109 lambda!355068))))

(declare-fun bs!1616094 () Bool)

(assert (= bs!1616094 (and b!6425076 d!2014379)))

(assert (=> bs!1616094 (not (= lambda!355109 lambda!355092))))

(declare-fun bs!1616095 () Bool)

(assert (= bs!1616095 (and b!6425076 b!6424792)))

(assert (=> bs!1616095 (= (and (= (regOne!33164 r!7292) (regOne!33164 lt!2377550)) (= (regTwo!33164 r!7292) (regTwo!33164 lt!2377550))) (= lambda!355109 lambda!355080))))

(assert (=> bs!1616093 (= (= (regOne!33164 r!7292) lt!2377533) (= lambda!355109 lambda!355024))))

(assert (=> b!6425076 true))

(assert (=> b!6425076 true))

(declare-fun b!6425069 () Bool)

(declare-fun c!1174025 () Bool)

(assert (=> b!6425069 (= c!1174025 (is-ElementMatch!16326 r!7292))))

(declare-fun e!3898144 () Bool)

(declare-fun e!3898146 () Bool)

(assert (=> b!6425069 (= e!3898144 e!3898146)))

(declare-fun b!6425070 () Bool)

(declare-fun c!1174026 () Bool)

(assert (=> b!6425070 (= c!1174026 (is-Union!16326 r!7292))))

(declare-fun e!3898143 () Bool)

(assert (=> b!6425070 (= e!3898146 e!3898143)))

(declare-fun b!6425071 () Bool)

(declare-fun e!3898147 () Bool)

(assert (=> b!6425071 (= e!3898147 (matchRSpec!3427 (regTwo!33165 r!7292) s!2326))))

(declare-fun e!3898145 () Bool)

(declare-fun call!552632 () Bool)

(assert (=> b!6425072 (= e!3898145 call!552632)))

(declare-fun d!2014457 () Bool)

(declare-fun c!1174028 () Bool)

(assert (=> d!2014457 (= c!1174028 (is-EmptyExpr!16326 r!7292))))

(declare-fun e!3898149 () Bool)

(assert (=> d!2014457 (= (matchRSpec!3427 r!7292 s!2326) e!3898149)))

(declare-fun b!6425073 () Bool)

(declare-fun e!3898148 () Bool)

(assert (=> b!6425073 (= e!3898143 e!3898148)))

(declare-fun c!1174027 () Bool)

(assert (=> b!6425073 (= c!1174027 (is-Star!16326 r!7292))))

(declare-fun b!6425074 () Bool)

(assert (=> b!6425074 (= e!3898149 e!3898144)))

(declare-fun res!2640667 () Bool)

(assert (=> b!6425074 (= res!2640667 (not (is-EmptyLang!16326 r!7292)))))

(assert (=> b!6425074 (=> (not res!2640667) (not e!3898144))))

(declare-fun bm!552627 () Bool)

(declare-fun call!552633 () Bool)

(assert (=> bm!552627 (= call!552633 (isEmpty!37315 s!2326))))

(declare-fun b!6425075 () Bool)

(declare-fun res!2640668 () Bool)

(assert (=> b!6425075 (=> res!2640668 e!3898145)))

(assert (=> b!6425075 (= res!2640668 call!552633)))

(assert (=> b!6425075 (= e!3898148 e!3898145)))

(assert (=> b!6425076 (= e!3898148 call!552632)))

(declare-fun b!6425077 () Bool)

(assert (=> b!6425077 (= e!3898143 e!3898147)))

(declare-fun res!2640666 () Bool)

(assert (=> b!6425077 (= res!2640666 (matchRSpec!3427 (regOne!33165 r!7292) s!2326))))

(assert (=> b!6425077 (=> res!2640666 e!3898147)))

(declare-fun b!6425078 () Bool)

(assert (=> b!6425078 (= e!3898149 call!552633)))

(declare-fun bm!552628 () Bool)

(assert (=> bm!552628 (= call!552632 (Exists!3396 (ite c!1174027 lambda!355108 lambda!355109)))))

(declare-fun b!6425079 () Bool)

(assert (=> b!6425079 (= e!3898146 (= s!2326 (Cons!65153 (c!1173847 r!7292) Nil!65153)))))

(assert (= (and d!2014457 c!1174028) b!6425078))

(assert (= (and d!2014457 (not c!1174028)) b!6425074))

(assert (= (and b!6425074 res!2640667) b!6425069))

(assert (= (and b!6425069 c!1174025) b!6425079))

(assert (= (and b!6425069 (not c!1174025)) b!6425070))

(assert (= (and b!6425070 c!1174026) b!6425077))

(assert (= (and b!6425070 (not c!1174026)) b!6425073))

(assert (= (and b!6425077 (not res!2640666)) b!6425071))

(assert (= (and b!6425073 c!1174027) b!6425075))

(assert (= (and b!6425073 (not c!1174027)) b!6425076))

(assert (= (and b!6425075 (not res!2640668)) b!6425072))

(assert (= (or b!6425072 b!6425076) bm!552628))

(assert (= (or b!6425078 b!6425075) bm!552627))

(declare-fun m!7219332 () Bool)

(assert (=> b!6425071 m!7219332))

(assert (=> bm!552627 m!7219000))

(declare-fun m!7219338 () Bool)

(assert (=> b!6425077 m!7219338))

(declare-fun m!7219340 () Bool)

(assert (=> bm!552628 m!7219340))

(assert (=> b!6424336 d!2014457))

(declare-fun b!6425107 () Bool)

(declare-fun e!3898165 () Bool)

(assert (=> b!6425107 (= e!3898165 (= (head!13144 s!2326) (c!1173847 r!7292)))))

(declare-fun b!6425108 () Bool)

(declare-fun e!3898167 () Bool)

(declare-fun e!3898170 () Bool)

(assert (=> b!6425108 (= e!3898167 e!3898170)))

(declare-fun res!2640688 () Bool)

(assert (=> b!6425108 (=> res!2640688 e!3898170)))

(declare-fun call!552634 () Bool)

(assert (=> b!6425108 (= res!2640688 call!552634)))

(declare-fun b!6425109 () Bool)

(declare-fun e!3898169 () Bool)

(assert (=> b!6425109 (= e!3898169 (nullable!6319 r!7292))))

(declare-fun b!6425110 () Bool)

(declare-fun res!2640686 () Bool)

(declare-fun e!3898168 () Bool)

(assert (=> b!6425110 (=> res!2640686 e!3898168)))

(assert (=> b!6425110 (= res!2640686 (not (is-ElementMatch!16326 r!7292)))))

(declare-fun e!3898171 () Bool)

(assert (=> b!6425110 (= e!3898171 e!3898168)))

(declare-fun b!6425111 () Bool)

(declare-fun e!3898166 () Bool)

(declare-fun lt!2377775 () Bool)

(assert (=> b!6425111 (= e!3898166 (= lt!2377775 call!552634))))

(declare-fun b!6425112 () Bool)

(declare-fun res!2640691 () Bool)

(assert (=> b!6425112 (=> (not res!2640691) (not e!3898165))))

(assert (=> b!6425112 (= res!2640691 (not call!552634))))

(declare-fun b!6425113 () Bool)

(assert (=> b!6425113 (= e!3898171 (not lt!2377775))))

(declare-fun b!6425114 () Bool)

(assert (=> b!6425114 (= e!3898170 (not (= (head!13144 s!2326) (c!1173847 r!7292))))))

(declare-fun bm!552629 () Bool)

(assert (=> bm!552629 (= call!552634 (isEmpty!37315 s!2326))))

(declare-fun b!6425115 () Bool)

(assert (=> b!6425115 (= e!3898168 e!3898167)))

(declare-fun res!2640690 () Bool)

(assert (=> b!6425115 (=> (not res!2640690) (not e!3898167))))

(assert (=> b!6425115 (= res!2640690 (not lt!2377775))))

(declare-fun d!2014459 () Bool)

(assert (=> d!2014459 e!3898166))

(declare-fun c!1174035 () Bool)

(assert (=> d!2014459 (= c!1174035 (is-EmptyExpr!16326 r!7292))))

(assert (=> d!2014459 (= lt!2377775 e!3898169)))

(declare-fun c!1174037 () Bool)

(assert (=> d!2014459 (= c!1174037 (isEmpty!37315 s!2326))))

(assert (=> d!2014459 (validRegex!8062 r!7292)))

(assert (=> d!2014459 (= (matchR!8509 r!7292 s!2326) lt!2377775)))

(declare-fun b!6425116 () Bool)

(assert (=> b!6425116 (= e!3898166 e!3898171)))

(declare-fun c!1174036 () Bool)

(assert (=> b!6425116 (= c!1174036 (is-EmptyLang!16326 r!7292))))

(declare-fun b!6425117 () Bool)

(assert (=> b!6425117 (= e!3898169 (matchR!8509 (derivativeStep!5030 r!7292 (head!13144 s!2326)) (tail!12229 s!2326)))))

(declare-fun b!6425118 () Bool)

(declare-fun res!2640687 () Bool)

(assert (=> b!6425118 (=> res!2640687 e!3898170)))

(assert (=> b!6425118 (= res!2640687 (not (isEmpty!37315 (tail!12229 s!2326))))))

(declare-fun b!6425119 () Bool)

(declare-fun res!2640685 () Bool)

(assert (=> b!6425119 (=> (not res!2640685) (not e!3898165))))

(assert (=> b!6425119 (= res!2640685 (isEmpty!37315 (tail!12229 s!2326)))))

(declare-fun b!6425120 () Bool)

(declare-fun res!2640689 () Bool)

(assert (=> b!6425120 (=> res!2640689 e!3898168)))

(assert (=> b!6425120 (= res!2640689 e!3898165)))

(declare-fun res!2640684 () Bool)

(assert (=> b!6425120 (=> (not res!2640684) (not e!3898165))))

(assert (=> b!6425120 (= res!2640684 lt!2377775)))

(assert (= (and d!2014459 c!1174037) b!6425109))

(assert (= (and d!2014459 (not c!1174037)) b!6425117))

(assert (= (and d!2014459 c!1174035) b!6425111))

(assert (= (and d!2014459 (not c!1174035)) b!6425116))

(assert (= (and b!6425116 c!1174036) b!6425113))

(assert (= (and b!6425116 (not c!1174036)) b!6425110))

(assert (= (and b!6425110 (not res!2640686)) b!6425120))

(assert (= (and b!6425120 res!2640684) b!6425112))

(assert (= (and b!6425112 res!2640691) b!6425119))

(assert (= (and b!6425119 res!2640685) b!6425107))

(assert (= (and b!6425120 (not res!2640689)) b!6425115))

(assert (= (and b!6425115 res!2640690) b!6425108))

(assert (= (and b!6425108 (not res!2640688)) b!6425118))

(assert (= (and b!6425118 (not res!2640687)) b!6425114))

(assert (= (or b!6425111 b!6425108 b!6425112) bm!552629))

(declare-fun m!7219360 () Bool)

(assert (=> b!6425109 m!7219360))

(assert (=> bm!552629 m!7219000))

(assert (=> b!6425114 m!7219002))

(assert (=> b!6425118 m!7219004))

(assert (=> b!6425118 m!7219004))

(assert (=> b!6425118 m!7219006))

(assert (=> b!6425119 m!7219004))

(assert (=> b!6425119 m!7219004))

(assert (=> b!6425119 m!7219006))

(assert (=> d!2014459 m!7219000))

(assert (=> d!2014459 m!7218648))

(assert (=> b!6425117 m!7219002))

(assert (=> b!6425117 m!7219002))

(declare-fun m!7219362 () Bool)

(assert (=> b!6425117 m!7219362))

(assert (=> b!6425117 m!7219004))

(assert (=> b!6425117 m!7219362))

(assert (=> b!6425117 m!7219004))

(declare-fun m!7219364 () Bool)

(assert (=> b!6425117 m!7219364))

(assert (=> b!6425107 m!7219002))

(assert (=> b!6424336 d!2014459))

(declare-fun d!2014465 () Bool)

(assert (=> d!2014465 (= (matchR!8509 r!7292 s!2326) (matchRSpec!3427 r!7292 s!2326))))

(declare-fun lt!2377776 () Unit!158635)

(assert (=> d!2014465 (= lt!2377776 (choose!47735 r!7292 s!2326))))

(assert (=> d!2014465 (validRegex!8062 r!7292)))

(assert (=> d!2014465 (= (mainMatchTheorem!3427 r!7292 s!2326) lt!2377776)))

(declare-fun bs!1616098 () Bool)

(assert (= bs!1616098 d!2014465))

(assert (=> bs!1616098 m!7218590))

(assert (=> bs!1616098 m!7218588))

(declare-fun m!7219368 () Bool)

(assert (=> bs!1616098 m!7219368))

(assert (=> bs!1616098 m!7218648))

(assert (=> b!6424336 d!2014465))

(declare-fun bs!1616099 () Bool)

(declare-fun d!2014469 () Bool)

(assert (= bs!1616099 (and d!2014469 d!2014303)))

(declare-fun lambda!355112 () Int)

(assert (=> bs!1616099 (= lambda!355112 lambda!355062)))

(declare-fun bs!1616100 () Bool)

(assert (= bs!1616100 (and d!2014469 d!2014417)))

(assert (=> bs!1616100 (= lambda!355112 lambda!355095)))

(declare-fun bs!1616101 () Bool)

(assert (= bs!1616101 (and d!2014469 d!2014419)))

(assert (=> bs!1616101 (= lambda!355112 lambda!355098)))

(assert (=> d!2014469 (= (inv!84063 (h!71603 zl!343)) (forall!15516 (exprs!6210 (h!71603 zl!343)) lambda!355112))))

(declare-fun bs!1616102 () Bool)

(assert (= bs!1616102 d!2014469))

(declare-fun m!7219370 () Bool)

(assert (=> bs!1616102 m!7219370))

(assert (=> b!6424316 d!2014469))

(declare-fun d!2014471 () Bool)

(assert (=> d!2014471 (= (flatMap!1831 lt!2377530 lambda!355022) (choose!47740 lt!2377530 lambda!355022))))

(declare-fun bs!1616103 () Bool)

(assert (= bs!1616103 d!2014471))

(declare-fun m!7219372 () Bool)

(assert (=> bs!1616103 m!7219372))

(assert (=> b!6424338 d!2014471))

(declare-fun b!6425121 () Bool)

(declare-fun e!3898174 () (Set Context!11420))

(declare-fun e!3898172 () (Set Context!11420))

(assert (=> b!6425121 (= e!3898174 e!3898172)))

(declare-fun c!1174038 () Bool)

(assert (=> b!6425121 (= c!1174038 (is-Cons!65154 (exprs!6210 lt!2377556)))))

(declare-fun d!2014473 () Bool)

(declare-fun c!1174039 () Bool)

(declare-fun e!3898173 () Bool)

(assert (=> d!2014473 (= c!1174039 e!3898173)))

(declare-fun res!2640692 () Bool)

(assert (=> d!2014473 (=> (not res!2640692) (not e!3898173))))

(assert (=> d!2014473 (= res!2640692 (is-Cons!65154 (exprs!6210 lt!2377556)))))

(assert (=> d!2014473 (= (derivationStepZipperUp!1500 lt!2377556 (h!71601 s!2326)) e!3898174)))

(declare-fun b!6425122 () Bool)

(declare-fun call!552635 () (Set Context!11420))

(assert (=> b!6425122 (= e!3898172 call!552635)))

(declare-fun b!6425123 () Bool)

(assert (=> b!6425123 (= e!3898174 (set.union call!552635 (derivationStepZipperUp!1500 (Context!11421 (t!378894 (exprs!6210 lt!2377556))) (h!71601 s!2326))))))

(declare-fun bm!552630 () Bool)

(assert (=> bm!552630 (= call!552635 (derivationStepZipperDown!1574 (h!71602 (exprs!6210 lt!2377556)) (Context!11421 (t!378894 (exprs!6210 lt!2377556))) (h!71601 s!2326)))))

(declare-fun b!6425124 () Bool)

(assert (=> b!6425124 (= e!3898173 (nullable!6319 (h!71602 (exprs!6210 lt!2377556))))))

(declare-fun b!6425125 () Bool)

(assert (=> b!6425125 (= e!3898172 (as set.empty (Set Context!11420)))))

(assert (= (and d!2014473 res!2640692) b!6425124))

(assert (= (and d!2014473 c!1174039) b!6425123))

(assert (= (and d!2014473 (not c!1174039)) b!6425121))

(assert (= (and b!6425121 c!1174038) b!6425122))

(assert (= (and b!6425121 (not c!1174038)) b!6425125))

(assert (= (or b!6425123 b!6425122) bm!552630))

(declare-fun m!7219374 () Bool)

(assert (=> b!6425123 m!7219374))

(declare-fun m!7219376 () Bool)

(assert (=> bm!552630 m!7219376))

(declare-fun m!7219378 () Bool)

(assert (=> b!6425124 m!7219378))

(assert (=> b!6424338 d!2014473))

(declare-fun d!2014475 () Bool)

(assert (=> d!2014475 (= (flatMap!1831 lt!2377530 lambda!355022) (dynLambda!25884 lambda!355022 lt!2377556))))

(declare-fun lt!2377777 () Unit!158635)

(assert (=> d!2014475 (= lt!2377777 (choose!47742 lt!2377530 lt!2377556 lambda!355022))))

(assert (=> d!2014475 (= lt!2377530 (set.insert lt!2377556 (as set.empty (Set Context!11420))))))

(assert (=> d!2014475 (= (lemmaFlatMapOnSingletonSet!1357 lt!2377530 lt!2377556 lambda!355022) lt!2377777)))

(declare-fun b_lambda!244189 () Bool)

(assert (=> (not b_lambda!244189) (not d!2014475)))

(declare-fun bs!1616104 () Bool)

(assert (= bs!1616104 d!2014475))

(assert (=> bs!1616104 m!7218636))

(declare-fun m!7219380 () Bool)

(assert (=> bs!1616104 m!7219380))

(declare-fun m!7219382 () Bool)

(assert (=> bs!1616104 m!7219382))

(assert (=> bs!1616104 m!7218632))

(assert (=> b!6424338 d!2014475))

(declare-fun bs!1616105 () Bool)

(declare-fun d!2014477 () Bool)

(assert (= bs!1616105 (and d!2014477 b!6424331)))

(declare-fun lambda!355115 () Int)

(assert (=> bs!1616105 (= lambda!355115 lambda!355022)))

(assert (=> d!2014477 true))

(assert (=> d!2014477 (= (derivationStepZipper!2292 lt!2377530 (h!71601 s!2326)) (flatMap!1831 lt!2377530 lambda!355115))))

(declare-fun bs!1616106 () Bool)

(assert (= bs!1616106 d!2014477))

(declare-fun m!7219384 () Bool)

(assert (=> bs!1616106 m!7219384))

(assert (=> b!6424338 d!2014477))

(declare-fun bs!1616107 () Bool)

(declare-fun d!2014479 () Bool)

(assert (= bs!1616107 (and d!2014479 d!2014303)))

(declare-fun lambda!355116 () Int)

(assert (=> bs!1616107 (= lambda!355116 lambda!355062)))

(declare-fun bs!1616108 () Bool)

(assert (= bs!1616108 (and d!2014479 d!2014417)))

(assert (=> bs!1616108 (= lambda!355116 lambda!355095)))

(declare-fun bs!1616109 () Bool)

(assert (= bs!1616109 (and d!2014479 d!2014419)))

(assert (=> bs!1616109 (= lambda!355116 lambda!355098)))

(declare-fun bs!1616110 () Bool)

(assert (= bs!1616110 (and d!2014479 d!2014469)))

(assert (=> bs!1616110 (= lambda!355116 lambda!355112)))

(assert (=> d!2014479 (= (inv!84063 setElem!43857) (forall!15516 (exprs!6210 setElem!43857) lambda!355116))))

(declare-fun bs!1616111 () Bool)

(assert (= bs!1616111 d!2014479))

(declare-fun m!7219386 () Bool)

(assert (=> bs!1616111 m!7219386))

(assert (=> setNonEmpty!43857 d!2014479))

(declare-fun b!6425154 () Bool)

(declare-fun e!3898191 () Bool)

(declare-fun tp!1783431 () Bool)

(declare-fun tp!1783432 () Bool)

(assert (=> b!6425154 (= e!3898191 (and tp!1783431 tp!1783432))))

(assert (=> b!6424335 (= tp!1783390 e!3898191)))

(assert (= (and b!6424335 (is-Cons!65154 (exprs!6210 (h!71603 zl!343)))) b!6425154))

(declare-fun b!6425173 () Bool)

(declare-fun e!3898196 () Bool)

(declare-fun tp!1783446 () Bool)

(assert (=> b!6425173 (= e!3898196 tp!1783446)))

(declare-fun b!6425171 () Bool)

(assert (=> b!6425171 (= e!3898196 tp_is_empty!41905)))

(assert (=> b!6424309 (= tp!1783395 e!3898196)))

(declare-fun b!6425174 () Bool)

(declare-fun tp!1783447 () Bool)

(declare-fun tp!1783443 () Bool)

(assert (=> b!6425174 (= e!3898196 (and tp!1783447 tp!1783443))))

(declare-fun b!6425172 () Bool)

(declare-fun tp!1783445 () Bool)

(declare-fun tp!1783444 () Bool)

(assert (=> b!6425172 (= e!3898196 (and tp!1783445 tp!1783444))))

(assert (= (and b!6424309 (is-ElementMatch!16326 (reg!16655 r!7292))) b!6425171))

(assert (= (and b!6424309 (is-Concat!25171 (reg!16655 r!7292))) b!6425172))

(assert (= (and b!6424309 (is-Star!16326 (reg!16655 r!7292))) b!6425173))

(assert (= (and b!6424309 (is-Union!16326 (reg!16655 r!7292))) b!6425174))

(declare-fun b!6425179 () Bool)

(declare-fun e!3898199 () Bool)

(declare-fun tp!1783450 () Bool)

(assert (=> b!6425179 (= e!3898199 (and tp_is_empty!41905 tp!1783450))))

(assert (=> b!6424315 (= tp!1783391 e!3898199)))

(assert (= (and b!6424315 (is-Cons!65153 (t!378893 s!2326))) b!6425179))

(declare-fun b!6425182 () Bool)

(declare-fun e!3898200 () Bool)

(declare-fun tp!1783454 () Bool)

(assert (=> b!6425182 (= e!3898200 tp!1783454)))

(declare-fun b!6425180 () Bool)

(assert (=> b!6425180 (= e!3898200 tp_is_empty!41905)))

(assert (=> b!6424337 (= tp!1783396 e!3898200)))

(declare-fun b!6425183 () Bool)

(declare-fun tp!1783455 () Bool)

(declare-fun tp!1783451 () Bool)

(assert (=> b!6425183 (= e!3898200 (and tp!1783455 tp!1783451))))

(declare-fun b!6425181 () Bool)

(declare-fun tp!1783453 () Bool)

(declare-fun tp!1783452 () Bool)

(assert (=> b!6425181 (= e!3898200 (and tp!1783453 tp!1783452))))

(assert (= (and b!6424337 (is-ElementMatch!16326 (regOne!33164 r!7292))) b!6425180))

(assert (= (and b!6424337 (is-Concat!25171 (regOne!33164 r!7292))) b!6425181))

(assert (= (and b!6424337 (is-Star!16326 (regOne!33164 r!7292))) b!6425182))

(assert (= (and b!6424337 (is-Union!16326 (regOne!33164 r!7292))) b!6425183))

(declare-fun b!6425186 () Bool)

(declare-fun e!3898201 () Bool)

(declare-fun tp!1783459 () Bool)

(assert (=> b!6425186 (= e!3898201 tp!1783459)))

(declare-fun b!6425184 () Bool)

(assert (=> b!6425184 (= e!3898201 tp_is_empty!41905)))

(assert (=> b!6424337 (= tp!1783388 e!3898201)))

(declare-fun b!6425187 () Bool)

(declare-fun tp!1783460 () Bool)

(declare-fun tp!1783456 () Bool)

(assert (=> b!6425187 (= e!3898201 (and tp!1783460 tp!1783456))))

(declare-fun b!6425185 () Bool)

(declare-fun tp!1783458 () Bool)

(declare-fun tp!1783457 () Bool)

(assert (=> b!6425185 (= e!3898201 (and tp!1783458 tp!1783457))))

(assert (= (and b!6424337 (is-ElementMatch!16326 (regTwo!33164 r!7292))) b!6425184))

(assert (= (and b!6424337 (is-Concat!25171 (regTwo!33164 r!7292))) b!6425185))

(assert (= (and b!6424337 (is-Star!16326 (regTwo!33164 r!7292))) b!6425186))

(assert (= (and b!6424337 (is-Union!16326 (regTwo!33164 r!7292))) b!6425187))

(declare-fun b!6425199 () Bool)

(declare-fun e!3898209 () Bool)

(declare-fun tp!1783465 () Bool)

(assert (=> b!6425199 (= e!3898209 tp!1783465)))

(declare-fun e!3898208 () Bool)

(declare-fun tp!1783466 () Bool)

(declare-fun b!6425198 () Bool)

(assert (=> b!6425198 (= e!3898208 (and (inv!84063 (h!71603 (t!378895 zl!343))) e!3898209 tp!1783466))))

(assert (=> b!6424316 (= tp!1783392 e!3898208)))

(assert (= b!6425198 b!6425199))

(assert (= (and b!6424316 (is-Cons!65155 (t!378895 zl!343))) b!6425198))

(declare-fun m!7219388 () Bool)

(assert (=> b!6425198 m!7219388))

(declare-fun b!6425200 () Bool)

(declare-fun e!3898210 () Bool)

(declare-fun tp!1783467 () Bool)

(declare-fun tp!1783468 () Bool)

(assert (=> b!6425200 (= e!3898210 (and tp!1783467 tp!1783468))))

(assert (=> b!6424306 (= tp!1783389 e!3898210)))

(assert (= (and b!6424306 (is-Cons!65154 (exprs!6210 setElem!43857))) b!6425200))

(declare-fun b!6425203 () Bool)

(declare-fun e!3898211 () Bool)

(declare-fun tp!1783472 () Bool)

(assert (=> b!6425203 (= e!3898211 tp!1783472)))

(declare-fun b!6425201 () Bool)

(assert (=> b!6425201 (= e!3898211 tp_is_empty!41905)))

(assert (=> b!6424317 (= tp!1783393 e!3898211)))

(declare-fun b!6425204 () Bool)

(declare-fun tp!1783473 () Bool)

(declare-fun tp!1783469 () Bool)

(assert (=> b!6425204 (= e!3898211 (and tp!1783473 tp!1783469))))

(declare-fun b!6425202 () Bool)

(declare-fun tp!1783471 () Bool)

(declare-fun tp!1783470 () Bool)

(assert (=> b!6425202 (= e!3898211 (and tp!1783471 tp!1783470))))

(assert (= (and b!6424317 (is-ElementMatch!16326 (regOne!33165 r!7292))) b!6425201))

(assert (= (and b!6424317 (is-Concat!25171 (regOne!33165 r!7292))) b!6425202))

(assert (= (and b!6424317 (is-Star!16326 (regOne!33165 r!7292))) b!6425203))

(assert (= (and b!6424317 (is-Union!16326 (regOne!33165 r!7292))) b!6425204))

(declare-fun b!6425207 () Bool)

(declare-fun e!3898212 () Bool)

(declare-fun tp!1783477 () Bool)

(assert (=> b!6425207 (= e!3898212 tp!1783477)))

(declare-fun b!6425205 () Bool)

(assert (=> b!6425205 (= e!3898212 tp_is_empty!41905)))

(assert (=> b!6424317 (= tp!1783394 e!3898212)))

(declare-fun b!6425208 () Bool)

(declare-fun tp!1783478 () Bool)

(declare-fun tp!1783474 () Bool)

(assert (=> b!6425208 (= e!3898212 (and tp!1783478 tp!1783474))))

(declare-fun b!6425206 () Bool)

(declare-fun tp!1783476 () Bool)

(declare-fun tp!1783475 () Bool)

(assert (=> b!6425206 (= e!3898212 (and tp!1783476 tp!1783475))))

(assert (= (and b!6424317 (is-ElementMatch!16326 (regTwo!33165 r!7292))) b!6425205))

(assert (= (and b!6424317 (is-Concat!25171 (regTwo!33165 r!7292))) b!6425206))

(assert (= (and b!6424317 (is-Star!16326 (regTwo!33165 r!7292))) b!6425207))

(assert (= (and b!6424317 (is-Union!16326 (regTwo!33165 r!7292))) b!6425208))

(declare-fun condSetEmpty!43863 () Bool)

(assert (=> setNonEmpty!43857 (= condSetEmpty!43863 (= setRest!43857 (as set.empty (Set Context!11420))))))

(declare-fun setRes!43863 () Bool)

(assert (=> setNonEmpty!43857 (= tp!1783387 setRes!43863)))

(declare-fun setIsEmpty!43863 () Bool)

(assert (=> setIsEmpty!43863 setRes!43863))

(declare-fun setElem!43863 () Context!11420)

(declare-fun e!3898215 () Bool)

(declare-fun tp!1783484 () Bool)

(declare-fun setNonEmpty!43863 () Bool)

(assert (=> setNonEmpty!43863 (= setRes!43863 (and tp!1783484 (inv!84063 setElem!43863) e!3898215))))

(declare-fun setRest!43863 () (Set Context!11420))

(assert (=> setNonEmpty!43863 (= setRest!43857 (set.union (set.insert setElem!43863 (as set.empty (Set Context!11420))) setRest!43863))))

(declare-fun b!6425213 () Bool)

(declare-fun tp!1783483 () Bool)

(assert (=> b!6425213 (= e!3898215 tp!1783483)))

(assert (= (and setNonEmpty!43857 condSetEmpty!43863) setIsEmpty!43863))

(assert (= (and setNonEmpty!43857 (not condSetEmpty!43863)) setNonEmpty!43863))

(assert (= setNonEmpty!43863 b!6425213))

(declare-fun m!7219390 () Bool)

(assert (=> setNonEmpty!43863 m!7219390))

(declare-fun b_lambda!244191 () Bool)

(assert (= b_lambda!244183 (or b!6424331 b_lambda!244191)))

(declare-fun bs!1616112 () Bool)

(declare-fun d!2014481 () Bool)

(assert (= bs!1616112 (and d!2014481 b!6424331)))

(assert (=> bs!1616112 (= (dynLambda!25884 lambda!355022 lt!2377549) (derivationStepZipperUp!1500 lt!2377549 (h!71601 s!2326)))))

(assert (=> bs!1616112 m!7218698))

(assert (=> d!2014397 d!2014481))

(declare-fun b_lambda!244193 () Bool)

(assert (= b_lambda!244189 (or b!6424331 b_lambda!244193)))

(declare-fun bs!1616113 () Bool)

(declare-fun d!2014483 () Bool)

(assert (= bs!1616113 (and d!2014483 b!6424331)))

(assert (=> bs!1616113 (= (dynLambda!25884 lambda!355022 lt!2377556) (derivationStepZipperUp!1500 lt!2377556 (h!71601 s!2326)))))

(assert (=> bs!1616113 m!7218634))

(assert (=> d!2014475 d!2014483))

(declare-fun b_lambda!244195 () Bool)

(assert (= b_lambda!244187 (or b!6424331 b_lambda!244195)))

(declare-fun bs!1616114 () Bool)

(declare-fun d!2014485 () Bool)

(assert (= bs!1616114 (and d!2014485 b!6424331)))

(assert (=> bs!1616114 (= (dynLambda!25884 lambda!355022 (h!71603 zl!343)) (derivationStepZipperUp!1500 (h!71603 zl!343) (h!71601 s!2326)))))

(assert (=> bs!1616114 m!7218574))

(assert (=> d!2014415 d!2014485))

(declare-fun b_lambda!244197 () Bool)

(assert (= b_lambda!244185 (or b!6424331 b_lambda!244197)))

(declare-fun bs!1616115 () Bool)

(declare-fun d!2014487 () Bool)

(assert (= bs!1616115 (and d!2014487 b!6424331)))

(assert (=> bs!1616115 (= (dynLambda!25884 lambda!355022 lt!2377543) (derivationStepZipperUp!1500 lt!2377543 (h!71601 s!2326)))))

(assert (=> bs!1616115 m!7218710))

(assert (=> d!2014399 d!2014487))

(push 1)

(assert (not b!6425064))

(assert (not b!6424576))

(assert (not bm!552613))

(assert (not b!6424996))

(assert (not d!2014417))

(assert (not b!6425208))

(assert (not bm!552603))

(assert (not d!2014475))

(assert (not d!2014419))

(assert (not b!6425057))

(assert (not d!2014311))

(assert (not bs!1616115))

(assert (not d!2014363))

(assert (not b!6425033))

(assert (not b!6424668))

(assert (not d!2014379))

(assert (not b!6425049))

(assert (not d!2014447))

(assert (not b!6425185))

(assert (not b!6424931))

(assert (not d!2014455))

(assert (not b!6424990))

(assert (not b!6425179))

(assert (not d!2014433))

(assert (not b!6424541))

(assert (not b!6424586))

(assert (not bm!552559))

(assert (not b!6424807))

(assert (not d!2014451))

(assert (not b!6424992))

(assert (not d!2014341))

(assert (not d!2014427))

(assert (not d!2014431))

(assert (not b!6424922))

(assert (not d!2014387))

(assert (not b!6424851))

(assert tp_is_empty!41905)

(assert (not d!2014399))

(assert (not b!6424664))

(assert (not bm!552564))

(assert (not b!6425066))

(assert (not b!6424739))

(assert (not b!6425213))

(assert (not d!2014303))

(assert (not bm!552571))

(assert (not d!2014355))

(assert (not d!2014333))

(assert (not d!2014429))

(assert (not b!6424744))

(assert (not b!6425187))

(assert (not b!6425118))

(assert (not b!6425207))

(assert (not d!2014307))

(assert (not b!6425200))

(assert (not b!6424787))

(assert (not b!6424669))

(assert (not b!6424587))

(assert (not bs!1616114))

(assert (not b!6424742))

(assert (not b!6425183))

(assert (not bm!552579))

(assert (not d!2014351))

(assert (not b!6425042))

(assert (not bm!552608))

(assert (not b!6424915))

(assert (not b!6424793))

(assert (not bm!552581))

(assert (not b!6425058))

(assert (not d!2014453))

(assert (not b!6425199))

(assert (not b!6424948))

(assert (not bm!552604))

(assert (not b!6424921))

(assert (not b!6424743))

(assert (not b!6425114))

(assert (not bm!552628))

(assert (not b!6424932))

(assert (not d!2014325))

(assert (not b_lambda!244193))

(assert (not b!6424947))

(assert (not b!6425117))

(assert (not bs!1616113))

(assert (not d!2014365))

(assert (not b!6424666))

(assert (not b!6425022))

(assert (not bm!552627))

(assert (not b!6424614))

(assert (not bm!552630))

(assert (not b!6425024))

(assert (not setNonEmpty!43863))

(assert (not b!6424670))

(assert (not b!6425174))

(assert (not d!2014465))

(assert (not d!2014377))

(assert (not d!2014321))

(assert (not d!2014443))

(assert (not d!2014391))

(assert (not b!6425181))

(assert (not b!6424588))

(assert (not b!6424543))

(assert (not b!6425062))

(assert (not b!6424994))

(assert (not d!2014471))

(assert (not b!6424539))

(assert (not b!6424544))

(assert (not b!6425107))

(assert (not b!6424538))

(assert (not bm!552582))

(assert (not b!6425154))

(assert (not b_lambda!244195))

(assert (not b!6425050))

(assert (not bm!552606))

(assert (not b!6425067))

(assert (not b!6424734))

(assert (not b!6424927))

(assert (not d!2014305))

(assert (not d!2014437))

(assert (not d!2014477))

(assert (not b!6424731))

(assert (not b!6424663))

(assert (not b!6424800))

(assert (not b!6425071))

(assert (not b!6424732))

(assert (not d!2014331))

(assert (not b!6425119))

(assert (not b!6425172))

(assert (not d!2014375))

(assert (not d!2014403))

(assert (not bs!1616112))

(assert (not b!6425206))

(assert (not b!6424578))

(assert (not b!6425109))

(assert (not b!6424595))

(assert (not bm!552629))

(assert (not d!2014313))

(assert (not bm!552578))

(assert (not b!6425182))

(assert (not b!6425052))

(assert (not b!6424806))

(assert (not b!6424988))

(assert (not bm!552605))

(assert (not b!6425060))

(assert (not d!2014397))

(assert (not b!6424594))

(assert (not b_lambda!244197))

(assert (not b!6425123))

(assert (not b!6425173))

(assert (not bm!552561))

(assert (not bm!552560))

(assert (not b!6425032))

(assert (not d!2014323))

(assert (not b!6425055))

(assert (not bm!552623))

(assert (not d!2014401))

(assert (not d!2014415))

(assert (not b!6424540))

(assert (not d!2014479))

(assert (not d!2014425))

(assert (not b!6425124))

(assert (not b!6425011))

(assert (not b!6425204))

(assert (not bm!552609))

(assert (not b!6425202))

(assert (not b!6425065))

(assert (not b!6424801))

(assert (not b!6424944))

(assert (not b!6425029))

(assert (not b!6424805))

(assert (not b!6424997))

(assert (not d!2014327))

(assert (not bm!552570))

(assert (not b!6424546))

(assert (not d!2014435))

(assert (not bm!552624))

(assert (not d!2014469))

(assert (not b!6424926))

(assert (not d!2014315))

(assert (not bm!552540))

(assert (not b!6425198))

(assert (not d!2014459))

(assert (not b!6424583))

(assert (not d!2014317))

(assert (not b!6424803))

(assert (not bm!552610))

(assert (not b!6425051))

(assert (not b!6425063))

(assert (not b!6425034))

(assert (not bm!552626))

(assert (not d!2014371))

(assert (not b!6424993))

(assert (not b!6425186))

(assert (not b!6425020))

(assert (not d!2014449))

(assert (not b!6424845))

(assert (not d!2014381))

(assert (not b!6424914))

(assert (not b!6425077))

(assert (not d!2014439))

(assert (not b!6425203))

(assert (not b!6424841))

(assert (not b!6424613))

(assert (not b_lambda!244191))

(assert (not b!6425068))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

