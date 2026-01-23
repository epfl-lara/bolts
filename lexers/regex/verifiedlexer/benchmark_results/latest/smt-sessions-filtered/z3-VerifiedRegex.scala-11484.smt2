; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!625334 () Bool)

(assert start!625334)

(declare-fun b!6293467 () Bool)

(assert (=> b!6293467 true))

(assert (=> b!6293467 true))

(declare-fun lambda!345780 () Int)

(declare-fun lambda!345779 () Int)

(assert (=> b!6293467 (not (= lambda!345780 lambda!345779))))

(assert (=> b!6293467 true))

(assert (=> b!6293467 true))

(declare-fun b!6293461 () Bool)

(assert (=> b!6293461 true))

(declare-fun b!6293460 () Bool)

(declare-fun e!3826677 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!32700 0))(
  ( (C!32701 (val!26052 Int)) )
))
(declare-datatypes ((Regex!16215 0))(
  ( (ElementMatch!16215 (c!1142274 C!32700)) (Concat!25060 (regOne!32942 Regex!16215) (regTwo!32942 Regex!16215)) (EmptyExpr!16215) (Star!16215 (reg!16544 Regex!16215)) (EmptyLang!16215) (Union!16215 (regOne!32943 Regex!16215) (regTwo!32943 Regex!16215)) )
))
(declare-datatypes ((List!64944 0))(
  ( (Nil!64820) (Cons!64820 (h!71268 Regex!16215) (t!378508 List!64944)) )
))
(declare-datatypes ((Context!11198 0))(
  ( (Context!11199 (exprs!6099 List!64944)) )
))
(declare-fun lt!2357535 () (InoxSet Context!11198))

(declare-datatypes ((List!64945 0))(
  ( (Nil!64821) (Cons!64821 (h!71269 C!32700) (t!378509 List!64945)) )
))
(declare-fun s!2326 () List!64945)

(declare-fun matchZipper!2227 ((InoxSet Context!11198) List!64945) Bool)

(assert (=> b!6293460 (= e!3826677 (matchZipper!2227 lt!2357535 (t!378509 s!2326)))))

(declare-fun e!3826670 () Bool)

(declare-fun e!3826674 () Bool)

(assert (=> b!6293461 (= e!3826670 e!3826674)))

(declare-fun res!2595349 () Bool)

(assert (=> b!6293461 (=> res!2595349 e!3826674)))

(declare-fun r!7292 () Regex!16215)

(get-info :version)

(assert (=> b!6293461 (= res!2595349 (or (and ((_ is ElementMatch!16215) (regOne!32942 r!7292)) (= (c!1142274 (regOne!32942 r!7292)) (h!71269 s!2326))) ((_ is Union!16215) (regOne!32942 r!7292))))))

(declare-datatypes ((Unit!158191 0))(
  ( (Unit!158192) )
))
(declare-fun lt!2357541 () Unit!158191)

(declare-fun e!3826676 () Unit!158191)

(assert (=> b!6293461 (= lt!2357541 e!3826676)))

(declare-fun c!1142273 () Bool)

(declare-datatypes ((List!64946 0))(
  ( (Nil!64822) (Cons!64822 (h!71270 Context!11198) (t!378510 List!64946)) )
))
(declare-fun zl!343 () List!64946)

(declare-fun nullable!6208 (Regex!16215) Bool)

(assert (=> b!6293461 (= c!1142273 (nullable!6208 (h!71268 (exprs!6099 (h!71270 zl!343)))))))

(declare-fun lambda!345781 () Int)

(declare-fun z!1189 () (InoxSet Context!11198))

(declare-fun flatMap!1720 ((InoxSet Context!11198) Int) (InoxSet Context!11198))

(declare-fun derivationStepZipperUp!1389 (Context!11198 C!32700) (InoxSet Context!11198))

(assert (=> b!6293461 (= (flatMap!1720 z!1189 lambda!345781) (derivationStepZipperUp!1389 (h!71270 zl!343) (h!71269 s!2326)))))

(declare-fun lt!2357536 () Unit!158191)

(declare-fun lemmaFlatMapOnSingletonSet!1246 ((InoxSet Context!11198) Context!11198 Int) Unit!158191)

(assert (=> b!6293461 (= lt!2357536 (lemmaFlatMapOnSingletonSet!1246 z!1189 (h!71270 zl!343) lambda!345781))))

(declare-fun lt!2357543 () Context!11198)

(assert (=> b!6293461 (= lt!2357535 (derivationStepZipperUp!1389 lt!2357543 (h!71269 s!2326)))))

(declare-fun lt!2357538 () (InoxSet Context!11198))

(declare-fun derivationStepZipperDown!1463 (Regex!16215 Context!11198 C!32700) (InoxSet Context!11198))

(assert (=> b!6293461 (= lt!2357538 (derivationStepZipperDown!1463 (h!71268 (exprs!6099 (h!71270 zl!343))) lt!2357543 (h!71269 s!2326)))))

(assert (=> b!6293461 (= lt!2357543 (Context!11199 (t!378508 (exprs!6099 (h!71270 zl!343)))))))

(declare-fun lt!2357537 () (InoxSet Context!11198))

(assert (=> b!6293461 (= lt!2357537 (derivationStepZipperUp!1389 (Context!11199 (Cons!64820 (h!71268 (exprs!6099 (h!71270 zl!343))) (t!378508 (exprs!6099 (h!71270 zl!343))))) (h!71269 s!2326)))))

(declare-fun b!6293462 () Bool)

(declare-fun res!2595356 () Bool)

(declare-fun e!3826672 () Bool)

(assert (=> b!6293462 (=> res!2595356 e!3826672)))

(assert (=> b!6293462 (= res!2595356 (not ((_ is Cons!64820) (exprs!6099 (h!71270 zl!343)))))))

(declare-fun b!6293463 () Bool)

(declare-fun res!2595348 () Bool)

(assert (=> b!6293463 (=> res!2595348 e!3826672)))

(declare-fun generalisedConcat!1812 (List!64944) Regex!16215)

(assert (=> b!6293463 (= res!2595348 (not (= r!7292 (generalisedConcat!1812 (exprs!6099 (h!71270 zl!343))))))))

(declare-fun b!6293464 () Bool)

(declare-fun e!3826673 () Bool)

(declare-fun tp!1752185 () Bool)

(declare-fun tp!1752182 () Bool)

(assert (=> b!6293464 (= e!3826673 (and tp!1752185 tp!1752182))))

(declare-fun b!6293465 () Bool)

(declare-fun res!2595350 () Bool)

(assert (=> b!6293465 (=> res!2595350 e!3826674)))

(declare-fun e!3826675 () Bool)

(assert (=> b!6293465 (= res!2595350 e!3826675)))

(declare-fun res!2595345 () Bool)

(assert (=> b!6293465 (=> (not res!2595345) (not e!3826675))))

(assert (=> b!6293465 (= res!2595345 ((_ is Concat!25060) (regOne!32942 r!7292)))))

(declare-fun b!6293466 () Bool)

(declare-fun e!3826671 () Bool)

(declare-fun tp_is_empty!41683 () Bool)

(declare-fun tp!1752186 () Bool)

(assert (=> b!6293466 (= e!3826671 (and tp_is_empty!41683 tp!1752186))))

(assert (=> b!6293467 (= e!3826672 e!3826670)))

(declare-fun res!2595352 () Bool)

(assert (=> b!6293467 (=> res!2595352 e!3826670)))

(declare-fun lt!2357544 () Bool)

(declare-fun lt!2357534 () Bool)

(assert (=> b!6293467 (= res!2595352 (or (not (= lt!2357544 lt!2357534)) ((_ is Nil!64821) s!2326)))))

(declare-fun Exists!3285 (Int) Bool)

(assert (=> b!6293467 (= (Exists!3285 lambda!345779) (Exists!3285 lambda!345780))))

(declare-fun lt!2357533 () Unit!158191)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1822 (Regex!16215 Regex!16215 List!64945) Unit!158191)

(assert (=> b!6293467 (= lt!2357533 (lemmaExistCutMatchRandMatchRSpecEquivalent!1822 (regOne!32942 r!7292) (regTwo!32942 r!7292) s!2326))))

(assert (=> b!6293467 (= lt!2357534 (Exists!3285 lambda!345779))))

(declare-datatypes ((tuple2!66388 0))(
  ( (tuple2!66389 (_1!36497 List!64945) (_2!36497 List!64945)) )
))
(declare-datatypes ((Option!16106 0))(
  ( (None!16105) (Some!16105 (v!52260 tuple2!66388)) )
))
(declare-fun isDefined!12809 (Option!16106) Bool)

(declare-fun findConcatSeparation!2520 (Regex!16215 Regex!16215 List!64945 List!64945 List!64945) Option!16106)

(assert (=> b!6293467 (= lt!2357534 (isDefined!12809 (findConcatSeparation!2520 (regOne!32942 r!7292) (regTwo!32942 r!7292) Nil!64821 s!2326 s!2326)))))

(declare-fun lt!2357542 () Unit!158191)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2284 (Regex!16215 Regex!16215 List!64945) Unit!158191)

(assert (=> b!6293467 (= lt!2357542 (lemmaFindConcatSeparationEquivalentToExists!2284 (regOne!32942 r!7292) (regTwo!32942 r!7292) s!2326))))

(declare-fun b!6293469 () Bool)

(declare-fun tp!1752177 () Bool)

(declare-fun tp!1752180 () Bool)

(assert (=> b!6293469 (= e!3826673 (and tp!1752177 tp!1752180))))

(declare-fun b!6293470 () Bool)

(declare-fun Unit!158193 () Unit!158191)

(assert (=> b!6293470 (= e!3826676 Unit!158193)))

(declare-fun b!6293471 () Bool)

(declare-fun res!2595355 () Bool)

(assert (=> b!6293471 (=> res!2595355 e!3826670)))

(declare-fun isEmpty!36877 (List!64944) Bool)

(assert (=> b!6293471 (= res!2595355 (isEmpty!36877 (t!378508 (exprs!6099 (h!71270 zl!343)))))))

(declare-fun b!6293472 () Bool)

(declare-fun res!2595358 () Bool)

(assert (=> b!6293472 (=> res!2595358 e!3826672)))

(declare-fun generalisedUnion!2059 (List!64944) Regex!16215)

(declare-fun unfocusZipperList!1636 (List!64946) List!64944)

(assert (=> b!6293472 (= res!2595358 (not (= r!7292 (generalisedUnion!2059 (unfocusZipperList!1636 zl!343)))))))

(declare-fun b!6293473 () Bool)

(declare-fun res!2595346 () Bool)

(assert (=> b!6293473 (=> res!2595346 e!3826672)))

(declare-fun isEmpty!36878 (List!64946) Bool)

(assert (=> b!6293473 (= res!2595346 (not (isEmpty!36878 (t!378510 zl!343))))))

(declare-fun b!6293474 () Bool)

(declare-fun e!3826669 () Bool)

(declare-fun tp!1752181 () Bool)

(assert (=> b!6293474 (= e!3826669 tp!1752181)))

(declare-fun b!6293475 () Bool)

(declare-fun e!3826680 () Bool)

(assert (=> b!6293475 (= e!3826680 (not e!3826672))))

(declare-fun res!2595343 () Bool)

(assert (=> b!6293475 (=> res!2595343 e!3826672)))

(assert (=> b!6293475 (= res!2595343 (not ((_ is Cons!64822) zl!343)))))

(declare-fun matchRSpec!3316 (Regex!16215 List!64945) Bool)

(assert (=> b!6293475 (= lt!2357544 (matchRSpec!3316 r!7292 s!2326))))

(declare-fun matchR!8398 (Regex!16215 List!64945) Bool)

(assert (=> b!6293475 (= lt!2357544 (matchR!8398 r!7292 s!2326))))

(declare-fun lt!2357540 () Unit!158191)

(declare-fun mainMatchTheorem!3316 (Regex!16215 List!64945) Unit!158191)

(assert (=> b!6293475 (= lt!2357540 (mainMatchTheorem!3316 r!7292 s!2326))))

(declare-fun e!3826678 () Bool)

(declare-fun tp!1752184 () Bool)

(declare-fun b!6293476 () Bool)

(declare-fun inv!83784 (Context!11198) Bool)

(assert (=> b!6293476 (= e!3826678 (and (inv!83784 (h!71270 zl!343)) e!3826669 tp!1752184))))

(declare-fun b!6293477 () Bool)

(declare-fun tp!1752178 () Bool)

(assert (=> b!6293477 (= e!3826673 tp!1752178)))

(declare-fun b!6293478 () Bool)

(assert (=> b!6293478 (= e!3826673 tp_is_empty!41683)))

(declare-fun setIsEmpty!42836 () Bool)

(declare-fun setRes!42836 () Bool)

(assert (=> setIsEmpty!42836 setRes!42836))

(declare-fun b!6293479 () Bool)

(declare-fun res!2595357 () Bool)

(assert (=> b!6293479 (=> (not res!2595357) (not e!3826680))))

(declare-fun unfocusZipper!1957 (List!64946) Regex!16215)

(assert (=> b!6293479 (= res!2595357 (= r!7292 (unfocusZipper!1957 zl!343)))))

(declare-fun tp!1752183 () Bool)

(declare-fun setNonEmpty!42836 () Bool)

(declare-fun setElem!42836 () Context!11198)

(declare-fun e!3826679 () Bool)

(assert (=> setNonEmpty!42836 (= setRes!42836 (and tp!1752183 (inv!83784 setElem!42836) e!3826679))))

(declare-fun setRest!42836 () (InoxSet Context!11198))

(assert (=> setNonEmpty!42836 (= z!1189 ((_ map or) (store ((as const (Array Context!11198 Bool)) false) setElem!42836 true) setRest!42836))))

(declare-fun b!6293480 () Bool)

(declare-fun tp!1752179 () Bool)

(assert (=> b!6293480 (= e!3826679 tp!1752179)))

(declare-fun b!6293481 () Bool)

(assert (=> b!6293481 (= e!3826675 (nullable!6208 (regOne!32942 (regOne!32942 r!7292))))))

(declare-fun b!6293482 () Bool)

(declare-fun res!2595353 () Bool)

(assert (=> b!6293482 (=> res!2595353 e!3826674)))

(assert (=> b!6293482 (= res!2595353 (not ((_ is Concat!25060) (regOne!32942 r!7292))))))

(declare-fun b!6293483 () Bool)

(declare-fun res!2595347 () Bool)

(assert (=> b!6293483 (=> (not res!2595347) (not e!3826680))))

(declare-fun toList!9999 ((InoxSet Context!11198)) List!64946)

(assert (=> b!6293483 (= res!2595347 (= (toList!9999 z!1189) zl!343))))

(declare-fun b!6293468 () Bool)

(declare-fun res!2595351 () Bool)

(assert (=> b!6293468 (=> res!2595351 e!3826672)))

(assert (=> b!6293468 (= res!2595351 (or ((_ is EmptyExpr!16215) r!7292) ((_ is EmptyLang!16215) r!7292) ((_ is ElementMatch!16215) r!7292) ((_ is Union!16215) r!7292) (not ((_ is Concat!25060) r!7292))))))

(declare-fun res!2595344 () Bool)

(assert (=> start!625334 (=> (not res!2595344) (not e!3826680))))

(declare-fun validRegex!7951 (Regex!16215) Bool)

(assert (=> start!625334 (= res!2595344 (validRegex!7951 r!7292))))

(assert (=> start!625334 e!3826680))

(assert (=> start!625334 e!3826673))

(declare-fun condSetEmpty!42836 () Bool)

(assert (=> start!625334 (= condSetEmpty!42836 (= z!1189 ((as const (Array Context!11198 Bool)) false)))))

(assert (=> start!625334 setRes!42836))

(assert (=> start!625334 e!3826678))

(assert (=> start!625334 e!3826671))

(declare-fun b!6293484 () Bool)

(assert (=> b!6293484 (= e!3826674 (inv!83784 (Context!11199 (Cons!64820 (regTwo!32942 (regOne!32942 r!7292)) (t!378508 (exprs!6099 (h!71270 zl!343)))))))))

(declare-fun b!6293485 () Bool)

(declare-fun Unit!158194 () Unit!158191)

(assert (=> b!6293485 (= e!3826676 Unit!158194)))

(declare-fun lt!2357539 () Unit!158191)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1046 ((InoxSet Context!11198) (InoxSet Context!11198) List!64945) Unit!158191)

(assert (=> b!6293485 (= lt!2357539 (lemmaZipperConcatMatchesSameAsBothZippers!1046 lt!2357538 lt!2357535 (t!378509 s!2326)))))

(declare-fun res!2595354 () Bool)

(assert (=> b!6293485 (= res!2595354 (matchZipper!2227 lt!2357538 (t!378509 s!2326)))))

(assert (=> b!6293485 (=> res!2595354 e!3826677)))

(assert (=> b!6293485 (= (matchZipper!2227 ((_ map or) lt!2357538 lt!2357535) (t!378509 s!2326)) e!3826677)))

(assert (= (and start!625334 res!2595344) b!6293483))

(assert (= (and b!6293483 res!2595347) b!6293479))

(assert (= (and b!6293479 res!2595357) b!6293475))

(assert (= (and b!6293475 (not res!2595343)) b!6293473))

(assert (= (and b!6293473 (not res!2595346)) b!6293463))

(assert (= (and b!6293463 (not res!2595348)) b!6293462))

(assert (= (and b!6293462 (not res!2595356)) b!6293472))

(assert (= (and b!6293472 (not res!2595358)) b!6293468))

(assert (= (and b!6293468 (not res!2595351)) b!6293467))

(assert (= (and b!6293467 (not res!2595352)) b!6293471))

(assert (= (and b!6293471 (not res!2595355)) b!6293461))

(assert (= (and b!6293461 c!1142273) b!6293485))

(assert (= (and b!6293461 (not c!1142273)) b!6293470))

(assert (= (and b!6293485 (not res!2595354)) b!6293460))

(assert (= (and b!6293461 (not res!2595349)) b!6293465))

(assert (= (and b!6293465 res!2595345) b!6293481))

(assert (= (and b!6293465 (not res!2595350)) b!6293482))

(assert (= (and b!6293482 (not res!2595353)) b!6293484))

(assert (= (and start!625334 ((_ is ElementMatch!16215) r!7292)) b!6293478))

(assert (= (and start!625334 ((_ is Concat!25060) r!7292)) b!6293469))

(assert (= (and start!625334 ((_ is Star!16215) r!7292)) b!6293477))

(assert (= (and start!625334 ((_ is Union!16215) r!7292)) b!6293464))

(assert (= (and start!625334 condSetEmpty!42836) setIsEmpty!42836))

(assert (= (and start!625334 (not condSetEmpty!42836)) setNonEmpty!42836))

(assert (= setNonEmpty!42836 b!6293480))

(assert (= b!6293476 b!6293474))

(assert (= (and start!625334 ((_ is Cons!64822) zl!343)) b!6293476))

(assert (= (and start!625334 ((_ is Cons!64821) s!2326)) b!6293466))

(declare-fun m!7113912 () Bool)

(assert (=> b!6293479 m!7113912))

(declare-fun m!7113914 () Bool)

(assert (=> b!6293484 m!7113914))

(declare-fun m!7113916 () Bool)

(assert (=> b!6293476 m!7113916))

(declare-fun m!7113918 () Bool)

(assert (=> b!6293485 m!7113918))

(declare-fun m!7113920 () Bool)

(assert (=> b!6293485 m!7113920))

(declare-fun m!7113922 () Bool)

(assert (=> b!6293485 m!7113922))

(declare-fun m!7113924 () Bool)

(assert (=> b!6293475 m!7113924))

(declare-fun m!7113926 () Bool)

(assert (=> b!6293475 m!7113926))

(declare-fun m!7113928 () Bool)

(assert (=> b!6293475 m!7113928))

(declare-fun m!7113930 () Bool)

(assert (=> b!6293463 m!7113930))

(declare-fun m!7113932 () Bool)

(assert (=> start!625334 m!7113932))

(declare-fun m!7113934 () Bool)

(assert (=> b!6293461 m!7113934))

(declare-fun m!7113936 () Bool)

(assert (=> b!6293461 m!7113936))

(declare-fun m!7113938 () Bool)

(assert (=> b!6293461 m!7113938))

(declare-fun m!7113940 () Bool)

(assert (=> b!6293461 m!7113940))

(declare-fun m!7113942 () Bool)

(assert (=> b!6293461 m!7113942))

(declare-fun m!7113944 () Bool)

(assert (=> b!6293461 m!7113944))

(declare-fun m!7113946 () Bool)

(assert (=> b!6293461 m!7113946))

(declare-fun m!7113948 () Bool)

(assert (=> b!6293473 m!7113948))

(declare-fun m!7113950 () Bool)

(assert (=> b!6293483 m!7113950))

(declare-fun m!7113952 () Bool)

(assert (=> b!6293460 m!7113952))

(declare-fun m!7113954 () Bool)

(assert (=> b!6293467 m!7113954))

(declare-fun m!7113956 () Bool)

(assert (=> b!6293467 m!7113956))

(declare-fun m!7113958 () Bool)

(assert (=> b!6293467 m!7113958))

(declare-fun m!7113960 () Bool)

(assert (=> b!6293467 m!7113960))

(assert (=> b!6293467 m!7113956))

(declare-fun m!7113962 () Bool)

(assert (=> b!6293467 m!7113962))

(assert (=> b!6293467 m!7113958))

(declare-fun m!7113964 () Bool)

(assert (=> b!6293467 m!7113964))

(declare-fun m!7113966 () Bool)

(assert (=> b!6293471 m!7113966))

(declare-fun m!7113968 () Bool)

(assert (=> b!6293472 m!7113968))

(assert (=> b!6293472 m!7113968))

(declare-fun m!7113970 () Bool)

(assert (=> b!6293472 m!7113970))

(declare-fun m!7113972 () Bool)

(assert (=> b!6293481 m!7113972))

(declare-fun m!7113974 () Bool)

(assert (=> setNonEmpty!42836 m!7113974))

(check-sat (not setNonEmpty!42836) tp_is_empty!41683 (not b!6293474) (not b!6293463) (not b!6293483) (not b!6293469) (not b!6293484) (not b!6293467) (not b!6293477) (not b!6293473) (not b!6293485) (not b!6293461) (not b!6293466) (not b!6293460) (not b!6293480) (not b!6293476) (not b!6293471) (not start!625334) (not b!6293475) (not b!6293472) (not b!6293479) (not b!6293481) (not b!6293464))
(check-sat)
(get-model)

(declare-fun d!1975235 () Bool)

(declare-fun choose!46760 (Int) Bool)

(assert (=> d!1975235 (= (Exists!3285 lambda!345779) (choose!46760 lambda!345779))))

(declare-fun bs!1574353 () Bool)

(assert (= bs!1574353 d!1975235))

(declare-fun m!7114032 () Bool)

(assert (=> bs!1574353 m!7114032))

(assert (=> b!6293467 d!1975235))

(declare-fun b!6293639 () Bool)

(declare-fun res!2595428 () Bool)

(declare-fun e!3826766 () Bool)

(assert (=> b!6293639 (=> (not res!2595428) (not e!3826766))))

(declare-fun lt!2357577 () Option!16106)

(declare-fun get!22411 (Option!16106) tuple2!66388)

(assert (=> b!6293639 (= res!2595428 (matchR!8398 (regTwo!32942 r!7292) (_2!36497 (get!22411 lt!2357577))))))

(declare-fun b!6293640 () Bool)

(declare-fun e!3826769 () Bool)

(assert (=> b!6293640 (= e!3826769 (matchR!8398 (regTwo!32942 r!7292) s!2326))))

(declare-fun b!6293641 () Bool)

(declare-fun e!3826768 () Bool)

(assert (=> b!6293641 (= e!3826768 (not (isDefined!12809 lt!2357577)))))

(declare-fun d!1975237 () Bool)

(assert (=> d!1975237 e!3826768))

(declare-fun res!2595424 () Bool)

(assert (=> d!1975237 (=> res!2595424 e!3826768)))

(assert (=> d!1975237 (= res!2595424 e!3826766)))

(declare-fun res!2595427 () Bool)

(assert (=> d!1975237 (=> (not res!2595427) (not e!3826766))))

(assert (=> d!1975237 (= res!2595427 (isDefined!12809 lt!2357577))))

(declare-fun e!3826767 () Option!16106)

(assert (=> d!1975237 (= lt!2357577 e!3826767)))

(declare-fun c!1142317 () Bool)

(assert (=> d!1975237 (= c!1142317 e!3826769)))

(declare-fun res!2595425 () Bool)

(assert (=> d!1975237 (=> (not res!2595425) (not e!3826769))))

(assert (=> d!1975237 (= res!2595425 (matchR!8398 (regOne!32942 r!7292) Nil!64821))))

(assert (=> d!1975237 (validRegex!7951 (regOne!32942 r!7292))))

(assert (=> d!1975237 (= (findConcatSeparation!2520 (regOne!32942 r!7292) (regTwo!32942 r!7292) Nil!64821 s!2326 s!2326) lt!2357577)))

(declare-fun b!6293642 () Bool)

(declare-fun e!3826765 () Option!16106)

(assert (=> b!6293642 (= e!3826767 e!3826765)))

(declare-fun c!1142316 () Bool)

(assert (=> b!6293642 (= c!1142316 ((_ is Nil!64821) s!2326))))

(declare-fun b!6293643 () Bool)

(assert (=> b!6293643 (= e!3826765 None!16105)))

(declare-fun b!6293644 () Bool)

(declare-fun ++!14288 (List!64945 List!64945) List!64945)

(assert (=> b!6293644 (= e!3826766 (= (++!14288 (_1!36497 (get!22411 lt!2357577)) (_2!36497 (get!22411 lt!2357577))) s!2326))))

(declare-fun b!6293645 () Bool)

(declare-fun res!2595426 () Bool)

(assert (=> b!6293645 (=> (not res!2595426) (not e!3826766))))

(assert (=> b!6293645 (= res!2595426 (matchR!8398 (regOne!32942 r!7292) (_1!36497 (get!22411 lt!2357577))))))

(declare-fun b!6293646 () Bool)

(declare-fun lt!2357576 () Unit!158191)

(declare-fun lt!2357575 () Unit!158191)

(assert (=> b!6293646 (= lt!2357576 lt!2357575)))

(assert (=> b!6293646 (= (++!14288 (++!14288 Nil!64821 (Cons!64821 (h!71269 s!2326) Nil!64821)) (t!378509 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2383 (List!64945 C!32700 List!64945 List!64945) Unit!158191)

(assert (=> b!6293646 (= lt!2357575 (lemmaMoveElementToOtherListKeepsConcatEq!2383 Nil!64821 (h!71269 s!2326) (t!378509 s!2326) s!2326))))

(assert (=> b!6293646 (= e!3826765 (findConcatSeparation!2520 (regOne!32942 r!7292) (regTwo!32942 r!7292) (++!14288 Nil!64821 (Cons!64821 (h!71269 s!2326) Nil!64821)) (t!378509 s!2326) s!2326))))

(declare-fun b!6293647 () Bool)

(assert (=> b!6293647 (= e!3826767 (Some!16105 (tuple2!66389 Nil!64821 s!2326)))))

(assert (= (and d!1975237 res!2595425) b!6293640))

(assert (= (and d!1975237 c!1142317) b!6293647))

(assert (= (and d!1975237 (not c!1142317)) b!6293642))

(assert (= (and b!6293642 c!1142316) b!6293643))

(assert (= (and b!6293642 (not c!1142316)) b!6293646))

(assert (= (and d!1975237 res!2595427) b!6293645))

(assert (= (and b!6293645 res!2595426) b!6293639))

(assert (= (and b!6293639 res!2595428) b!6293644))

(assert (= (and d!1975237 (not res!2595424)) b!6293641))

(declare-fun m!7114074 () Bool)

(assert (=> b!6293640 m!7114074))

(declare-fun m!7114076 () Bool)

(assert (=> d!1975237 m!7114076))

(declare-fun m!7114078 () Bool)

(assert (=> d!1975237 m!7114078))

(declare-fun m!7114080 () Bool)

(assert (=> d!1975237 m!7114080))

(declare-fun m!7114082 () Bool)

(assert (=> b!6293645 m!7114082))

(declare-fun m!7114084 () Bool)

(assert (=> b!6293645 m!7114084))

(declare-fun m!7114086 () Bool)

(assert (=> b!6293646 m!7114086))

(assert (=> b!6293646 m!7114086))

(declare-fun m!7114088 () Bool)

(assert (=> b!6293646 m!7114088))

(declare-fun m!7114090 () Bool)

(assert (=> b!6293646 m!7114090))

(assert (=> b!6293646 m!7114086))

(declare-fun m!7114092 () Bool)

(assert (=> b!6293646 m!7114092))

(assert (=> b!6293644 m!7114082))

(declare-fun m!7114094 () Bool)

(assert (=> b!6293644 m!7114094))

(assert (=> b!6293639 m!7114082))

(declare-fun m!7114096 () Bool)

(assert (=> b!6293639 m!7114096))

(assert (=> b!6293641 m!7114076))

(assert (=> b!6293467 d!1975237))

(declare-fun d!1975255 () Bool)

(assert (=> d!1975255 (= (Exists!3285 lambda!345780) (choose!46760 lambda!345780))))

(declare-fun bs!1574367 () Bool)

(assert (= bs!1574367 d!1975255))

(declare-fun m!7114098 () Bool)

(assert (=> bs!1574367 m!7114098))

(assert (=> b!6293467 d!1975255))

(declare-fun bs!1574381 () Bool)

(declare-fun d!1975257 () Bool)

(assert (= bs!1574381 (and d!1975257 b!6293467)))

(declare-fun lambda!345810 () Int)

(assert (=> bs!1574381 (= lambda!345810 lambda!345779)))

(assert (=> bs!1574381 (not (= lambda!345810 lambda!345780))))

(assert (=> d!1975257 true))

(assert (=> d!1975257 true))

(assert (=> d!1975257 true))

(assert (=> d!1975257 (= (isDefined!12809 (findConcatSeparation!2520 (regOne!32942 r!7292) (regTwo!32942 r!7292) Nil!64821 s!2326 s!2326)) (Exists!3285 lambda!345810))))

(declare-fun lt!2357589 () Unit!158191)

(declare-fun choose!46761 (Regex!16215 Regex!16215 List!64945) Unit!158191)

(assert (=> d!1975257 (= lt!2357589 (choose!46761 (regOne!32942 r!7292) (regTwo!32942 r!7292) s!2326))))

(assert (=> d!1975257 (validRegex!7951 (regOne!32942 r!7292))))

(assert (=> d!1975257 (= (lemmaFindConcatSeparationEquivalentToExists!2284 (regOne!32942 r!7292) (regTwo!32942 r!7292) s!2326) lt!2357589)))

(declare-fun bs!1574382 () Bool)

(assert (= bs!1574382 d!1975257))

(assert (=> bs!1574382 m!7113958))

(assert (=> bs!1574382 m!7114080))

(declare-fun m!7114130 () Bool)

(assert (=> bs!1574382 m!7114130))

(declare-fun m!7114132 () Bool)

(assert (=> bs!1574382 m!7114132))

(assert (=> bs!1574382 m!7113958))

(assert (=> bs!1574382 m!7113960))

(assert (=> b!6293467 d!1975257))

(declare-fun bs!1574389 () Bool)

(declare-fun d!1975275 () Bool)

(assert (= bs!1574389 (and d!1975275 b!6293467)))

(declare-fun lambda!345818 () Int)

(assert (=> bs!1574389 (= lambda!345818 lambda!345779)))

(assert (=> bs!1574389 (not (= lambda!345818 lambda!345780))))

(declare-fun bs!1574390 () Bool)

(assert (= bs!1574390 (and d!1975275 d!1975257)))

(assert (=> bs!1574390 (= lambda!345818 lambda!345810)))

(assert (=> d!1975275 true))

(assert (=> d!1975275 true))

(assert (=> d!1975275 true))

(declare-fun lambda!345819 () Int)

(assert (=> bs!1574389 (not (= lambda!345819 lambda!345779))))

(assert (=> bs!1574389 (= lambda!345819 lambda!345780)))

(assert (=> bs!1574390 (not (= lambda!345819 lambda!345810))))

(declare-fun bs!1574391 () Bool)

(assert (= bs!1574391 d!1975275))

(assert (=> bs!1574391 (not (= lambda!345819 lambda!345818))))

(assert (=> d!1975275 true))

(assert (=> d!1975275 true))

(assert (=> d!1975275 true))

(assert (=> d!1975275 (= (Exists!3285 lambda!345818) (Exists!3285 lambda!345819))))

(declare-fun lt!2357601 () Unit!158191)

(declare-fun choose!46762 (Regex!16215 Regex!16215 List!64945) Unit!158191)

(assert (=> d!1975275 (= lt!2357601 (choose!46762 (regOne!32942 r!7292) (regTwo!32942 r!7292) s!2326))))

(assert (=> d!1975275 (validRegex!7951 (regOne!32942 r!7292))))

(assert (=> d!1975275 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1822 (regOne!32942 r!7292) (regTwo!32942 r!7292) s!2326) lt!2357601)))

(declare-fun m!7114184 () Bool)

(assert (=> bs!1574391 m!7114184))

(declare-fun m!7114186 () Bool)

(assert (=> bs!1574391 m!7114186))

(declare-fun m!7114188 () Bool)

(assert (=> bs!1574391 m!7114188))

(assert (=> bs!1574391 m!7114080))

(assert (=> b!6293467 d!1975275))

(declare-fun d!1975289 () Bool)

(declare-fun isEmpty!36881 (Option!16106) Bool)

(assert (=> d!1975289 (= (isDefined!12809 (findConcatSeparation!2520 (regOne!32942 r!7292) (regTwo!32942 r!7292) Nil!64821 s!2326 s!2326)) (not (isEmpty!36881 (findConcatSeparation!2520 (regOne!32942 r!7292) (regTwo!32942 r!7292) Nil!64821 s!2326 s!2326))))))

(declare-fun bs!1574392 () Bool)

(assert (= bs!1574392 d!1975289))

(assert (=> bs!1574392 m!7113958))

(declare-fun m!7114190 () Bool)

(assert (=> bs!1574392 m!7114190))

(assert (=> b!6293467 d!1975289))

(declare-fun d!1975291 () Bool)

(declare-fun lambda!345822 () Int)

(declare-fun forall!15365 (List!64944 Int) Bool)

(assert (=> d!1975291 (= (inv!83784 (h!71270 zl!343)) (forall!15365 (exprs!6099 (h!71270 zl!343)) lambda!345822))))

(declare-fun bs!1574393 () Bool)

(assert (= bs!1574393 d!1975291))

(declare-fun m!7114204 () Bool)

(assert (=> bs!1574393 m!7114204))

(assert (=> b!6293476 d!1975291))

(declare-fun d!1975299 () Bool)

(declare-fun e!3826898 () Bool)

(assert (=> d!1975299 (= (matchZipper!2227 ((_ map or) lt!2357538 lt!2357535) (t!378509 s!2326)) e!3826898)))

(declare-fun res!2595499 () Bool)

(assert (=> d!1975299 (=> res!2595499 e!3826898)))

(assert (=> d!1975299 (= res!2595499 (matchZipper!2227 lt!2357538 (t!378509 s!2326)))))

(declare-fun lt!2357604 () Unit!158191)

(declare-fun choose!46763 ((InoxSet Context!11198) (InoxSet Context!11198) List!64945) Unit!158191)

(assert (=> d!1975299 (= lt!2357604 (choose!46763 lt!2357538 lt!2357535 (t!378509 s!2326)))))

(assert (=> d!1975299 (= (lemmaZipperConcatMatchesSameAsBothZippers!1046 lt!2357538 lt!2357535 (t!378509 s!2326)) lt!2357604)))

(declare-fun b!6293878 () Bool)

(assert (=> b!6293878 (= e!3826898 (matchZipper!2227 lt!2357535 (t!378509 s!2326)))))

(assert (= (and d!1975299 (not res!2595499)) b!6293878))

(assert (=> d!1975299 m!7113922))

(assert (=> d!1975299 m!7113920))

(declare-fun m!7114210 () Bool)

(assert (=> d!1975299 m!7114210))

(assert (=> b!6293878 m!7113952))

(assert (=> b!6293485 d!1975299))

(declare-fun d!1975303 () Bool)

(declare-fun c!1142373 () Bool)

(declare-fun isEmpty!36882 (List!64945) Bool)

(assert (=> d!1975303 (= c!1142373 (isEmpty!36882 (t!378509 s!2326)))))

(declare-fun e!3826901 () Bool)

(assert (=> d!1975303 (= (matchZipper!2227 lt!2357538 (t!378509 s!2326)) e!3826901)))

(declare-fun b!6293883 () Bool)

(declare-fun nullableZipper!1985 ((InoxSet Context!11198)) Bool)

(assert (=> b!6293883 (= e!3826901 (nullableZipper!1985 lt!2357538))))

(declare-fun b!6293884 () Bool)

(declare-fun derivationStepZipper!2181 ((InoxSet Context!11198) C!32700) (InoxSet Context!11198))

(declare-fun head!12930 (List!64945) C!32700)

(declare-fun tail!12015 (List!64945) List!64945)

(assert (=> b!6293884 (= e!3826901 (matchZipper!2227 (derivationStepZipper!2181 lt!2357538 (head!12930 (t!378509 s!2326))) (tail!12015 (t!378509 s!2326))))))

(assert (= (and d!1975303 c!1142373) b!6293883))

(assert (= (and d!1975303 (not c!1142373)) b!6293884))

(declare-fun m!7114212 () Bool)

(assert (=> d!1975303 m!7114212))

(declare-fun m!7114214 () Bool)

(assert (=> b!6293883 m!7114214))

(declare-fun m!7114216 () Bool)

(assert (=> b!6293884 m!7114216))

(assert (=> b!6293884 m!7114216))

(declare-fun m!7114218 () Bool)

(assert (=> b!6293884 m!7114218))

(declare-fun m!7114220 () Bool)

(assert (=> b!6293884 m!7114220))

(assert (=> b!6293884 m!7114218))

(assert (=> b!6293884 m!7114220))

(declare-fun m!7114222 () Bool)

(assert (=> b!6293884 m!7114222))

(assert (=> b!6293485 d!1975303))

(declare-fun d!1975305 () Bool)

(declare-fun c!1142374 () Bool)

(assert (=> d!1975305 (= c!1142374 (isEmpty!36882 (t!378509 s!2326)))))

(declare-fun e!3826902 () Bool)

(assert (=> d!1975305 (= (matchZipper!2227 ((_ map or) lt!2357538 lt!2357535) (t!378509 s!2326)) e!3826902)))

(declare-fun b!6293885 () Bool)

(assert (=> b!6293885 (= e!3826902 (nullableZipper!1985 ((_ map or) lt!2357538 lt!2357535)))))

(declare-fun b!6293886 () Bool)

(assert (=> b!6293886 (= e!3826902 (matchZipper!2227 (derivationStepZipper!2181 ((_ map or) lt!2357538 lt!2357535) (head!12930 (t!378509 s!2326))) (tail!12015 (t!378509 s!2326))))))

(assert (= (and d!1975305 c!1142374) b!6293885))

(assert (= (and d!1975305 (not c!1142374)) b!6293886))

(assert (=> d!1975305 m!7114212))

(declare-fun m!7114224 () Bool)

(assert (=> b!6293885 m!7114224))

(assert (=> b!6293886 m!7114216))

(assert (=> b!6293886 m!7114216))

(declare-fun m!7114226 () Bool)

(assert (=> b!6293886 m!7114226))

(assert (=> b!6293886 m!7114220))

(assert (=> b!6293886 m!7114226))

(assert (=> b!6293886 m!7114220))

(declare-fun m!7114228 () Bool)

(assert (=> b!6293886 m!7114228))

(assert (=> b!6293485 d!1975305))

(declare-fun d!1975307 () Bool)

(declare-fun e!3826905 () Bool)

(assert (=> d!1975307 e!3826905))

(declare-fun res!2595502 () Bool)

(assert (=> d!1975307 (=> (not res!2595502) (not e!3826905))))

(declare-fun lt!2357607 () List!64946)

(declare-fun noDuplicate!2049 (List!64946) Bool)

(assert (=> d!1975307 (= res!2595502 (noDuplicate!2049 lt!2357607))))

(declare-fun choose!46764 ((InoxSet Context!11198)) List!64946)

(assert (=> d!1975307 (= lt!2357607 (choose!46764 z!1189))))

(assert (=> d!1975307 (= (toList!9999 z!1189) lt!2357607)))

(declare-fun b!6293889 () Bool)

(declare-fun content!12194 (List!64946) (InoxSet Context!11198))

(assert (=> b!6293889 (= e!3826905 (= (content!12194 lt!2357607) z!1189))))

(assert (= (and d!1975307 res!2595502) b!6293889))

(declare-fun m!7114230 () Bool)

(assert (=> d!1975307 m!7114230))

(declare-fun m!7114232 () Bool)

(assert (=> d!1975307 m!7114232))

(declare-fun m!7114234 () Bool)

(assert (=> b!6293889 m!7114234))

(assert (=> b!6293483 d!1975307))

(declare-fun bs!1574395 () Bool)

(declare-fun d!1975309 () Bool)

(assert (= bs!1574395 (and d!1975309 d!1975291)))

(declare-fun lambda!345823 () Int)

(assert (=> bs!1574395 (= lambda!345823 lambda!345822)))

(assert (=> d!1975309 (= (inv!83784 (Context!11199 (Cons!64820 (regTwo!32942 (regOne!32942 r!7292)) (t!378508 (exprs!6099 (h!71270 zl!343)))))) (forall!15365 (exprs!6099 (Context!11199 (Cons!64820 (regTwo!32942 (regOne!32942 r!7292)) (t!378508 (exprs!6099 (h!71270 zl!343)))))) lambda!345823))))

(declare-fun bs!1574396 () Bool)

(assert (= bs!1574396 d!1975309))

(declare-fun m!7114236 () Bool)

(assert (=> bs!1574396 m!7114236))

(assert (=> b!6293484 d!1975309))

(declare-fun bs!1574397 () Bool)

(declare-fun b!6293932 () Bool)

(assert (= bs!1574397 (and b!6293932 d!1975257)))

(declare-fun lambda!345828 () Int)

(assert (=> bs!1574397 (not (= lambda!345828 lambda!345810))))

(declare-fun bs!1574398 () Bool)

(assert (= bs!1574398 (and b!6293932 d!1975275)))

(assert (=> bs!1574398 (not (= lambda!345828 lambda!345818))))

(assert (=> bs!1574398 (not (= lambda!345828 lambda!345819))))

(declare-fun bs!1574399 () Bool)

(assert (= bs!1574399 (and b!6293932 b!6293467)))

(assert (=> bs!1574399 (not (= lambda!345828 lambda!345780))))

(assert (=> bs!1574399 (not (= lambda!345828 lambda!345779))))

(assert (=> b!6293932 true))

(assert (=> b!6293932 true))

(declare-fun bs!1574400 () Bool)

(declare-fun b!6293924 () Bool)

(assert (= bs!1574400 (and b!6293924 d!1975257)))

(declare-fun lambda!345829 () Int)

(assert (=> bs!1574400 (not (= lambda!345829 lambda!345810))))

(declare-fun bs!1574401 () Bool)

(assert (= bs!1574401 (and b!6293924 d!1975275)))

(assert (=> bs!1574401 (not (= lambda!345829 lambda!345818))))

(declare-fun bs!1574402 () Bool)

(assert (= bs!1574402 (and b!6293924 b!6293932)))

(assert (=> bs!1574402 (not (= lambda!345829 lambda!345828))))

(assert (=> bs!1574401 (= lambda!345829 lambda!345819)))

(declare-fun bs!1574403 () Bool)

(assert (= bs!1574403 (and b!6293924 b!6293467)))

(assert (=> bs!1574403 (= lambda!345829 lambda!345780)))

(assert (=> bs!1574403 (not (= lambda!345829 lambda!345779))))

(assert (=> b!6293924 true))

(assert (=> b!6293924 true))

(declare-fun b!6293922 () Bool)

(declare-fun res!2595521 () Bool)

(declare-fun e!3826930 () Bool)

(assert (=> b!6293922 (=> res!2595521 e!3826930)))

(declare-fun call!533136 () Bool)

(assert (=> b!6293922 (= res!2595521 call!533136)))

(declare-fun e!3826924 () Bool)

(assert (=> b!6293922 (= e!3826924 e!3826930)))

(declare-fun b!6293923 () Bool)

(declare-fun e!3826929 () Bool)

(assert (=> b!6293923 (= e!3826929 call!533136)))

(declare-fun d!1975311 () Bool)

(declare-fun c!1142384 () Bool)

(assert (=> d!1975311 (= c!1142384 ((_ is EmptyExpr!16215) r!7292))))

(assert (=> d!1975311 (= (matchRSpec!3316 r!7292 s!2326) e!3826929)))

(declare-fun bm!533131 () Bool)

(assert (=> bm!533131 (= call!533136 (isEmpty!36882 s!2326))))

(declare-fun call!533137 () Bool)

(assert (=> b!6293924 (= e!3826924 call!533137)))

(declare-fun b!6293925 () Bool)

(declare-fun e!3826925 () Bool)

(assert (=> b!6293925 (= e!3826925 (= s!2326 (Cons!64821 (c!1142274 r!7292) Nil!64821)))))

(declare-fun b!6293926 () Bool)

(declare-fun e!3826927 () Bool)

(assert (=> b!6293926 (= e!3826929 e!3826927)))

(declare-fun res!2595520 () Bool)

(assert (=> b!6293926 (= res!2595520 (not ((_ is EmptyLang!16215) r!7292)))))

(assert (=> b!6293926 (=> (not res!2595520) (not e!3826927))))

(declare-fun b!6293927 () Bool)

(declare-fun e!3826928 () Bool)

(assert (=> b!6293927 (= e!3826928 e!3826924)))

(declare-fun c!1142385 () Bool)

(assert (=> b!6293927 (= c!1142385 ((_ is Star!16215) r!7292))))

(declare-fun bm!533132 () Bool)

(assert (=> bm!533132 (= call!533137 (Exists!3285 (ite c!1142385 lambda!345828 lambda!345829)))))

(declare-fun b!6293928 () Bool)

(declare-fun c!1142383 () Bool)

(assert (=> b!6293928 (= c!1142383 ((_ is ElementMatch!16215) r!7292))))

(assert (=> b!6293928 (= e!3826927 e!3826925)))

(declare-fun b!6293929 () Bool)

(declare-fun c!1142386 () Bool)

(assert (=> b!6293929 (= c!1142386 ((_ is Union!16215) r!7292))))

(assert (=> b!6293929 (= e!3826925 e!3826928)))

(declare-fun b!6293930 () Bool)

(declare-fun e!3826926 () Bool)

(assert (=> b!6293930 (= e!3826928 e!3826926)))

(declare-fun res!2595519 () Bool)

(assert (=> b!6293930 (= res!2595519 (matchRSpec!3316 (regOne!32943 r!7292) s!2326))))

(assert (=> b!6293930 (=> res!2595519 e!3826926)))

(declare-fun b!6293931 () Bool)

(assert (=> b!6293931 (= e!3826926 (matchRSpec!3316 (regTwo!32943 r!7292) s!2326))))

(assert (=> b!6293932 (= e!3826930 call!533137)))

(assert (= (and d!1975311 c!1142384) b!6293923))

(assert (= (and d!1975311 (not c!1142384)) b!6293926))

(assert (= (and b!6293926 res!2595520) b!6293928))

(assert (= (and b!6293928 c!1142383) b!6293925))

(assert (= (and b!6293928 (not c!1142383)) b!6293929))

(assert (= (and b!6293929 c!1142386) b!6293930))

(assert (= (and b!6293929 (not c!1142386)) b!6293927))

(assert (= (and b!6293930 (not res!2595519)) b!6293931))

(assert (= (and b!6293927 c!1142385) b!6293922))

(assert (= (and b!6293927 (not c!1142385)) b!6293924))

(assert (= (and b!6293922 (not res!2595521)) b!6293932))

(assert (= (or b!6293932 b!6293924) bm!533132))

(assert (= (or b!6293923 b!6293922) bm!533131))

(declare-fun m!7114238 () Bool)

(assert (=> bm!533131 m!7114238))

(declare-fun m!7114240 () Bool)

(assert (=> bm!533132 m!7114240))

(declare-fun m!7114242 () Bool)

(assert (=> b!6293930 m!7114242))

(declare-fun m!7114244 () Bool)

(assert (=> b!6293931 m!7114244))

(assert (=> b!6293475 d!1975311))

(declare-fun b!6293961 () Bool)

(declare-fun res!2595543 () Bool)

(declare-fun e!3826946 () Bool)

(assert (=> b!6293961 (=> (not res!2595543) (not e!3826946))))

(declare-fun call!533140 () Bool)

(assert (=> b!6293961 (= res!2595543 (not call!533140))))

(declare-fun b!6293962 () Bool)

(declare-fun e!3826950 () Bool)

(declare-fun e!3826947 () Bool)

(assert (=> b!6293962 (= e!3826950 e!3826947)))

(declare-fun res!2595545 () Bool)

(assert (=> b!6293962 (=> res!2595545 e!3826947)))

(assert (=> b!6293962 (= res!2595545 call!533140)))

(declare-fun b!6293963 () Bool)

(declare-fun e!3826945 () Bool)

(declare-fun derivativeStep!4924 (Regex!16215 C!32700) Regex!16215)

(assert (=> b!6293963 (= e!3826945 (matchR!8398 (derivativeStep!4924 r!7292 (head!12930 s!2326)) (tail!12015 s!2326)))))

(declare-fun b!6293964 () Bool)

(declare-fun res!2595538 () Bool)

(declare-fun e!3826948 () Bool)

(assert (=> b!6293964 (=> res!2595538 e!3826948)))

(assert (=> b!6293964 (= res!2595538 e!3826946)))

(declare-fun res!2595544 () Bool)

(assert (=> b!6293964 (=> (not res!2595544) (not e!3826946))))

(declare-fun lt!2357610 () Bool)

(assert (=> b!6293964 (= res!2595544 lt!2357610)))

(declare-fun b!6293965 () Bool)

(declare-fun e!3826949 () Bool)

(assert (=> b!6293965 (= e!3826949 (not lt!2357610))))

(declare-fun b!6293966 () Bool)

(declare-fun res!2595542 () Bool)

(assert (=> b!6293966 (=> res!2595542 e!3826948)))

(assert (=> b!6293966 (= res!2595542 (not ((_ is ElementMatch!16215) r!7292)))))

(assert (=> b!6293966 (= e!3826949 e!3826948)))

(declare-fun b!6293967 () Bool)

(assert (=> b!6293967 (= e!3826946 (= (head!12930 s!2326) (c!1142274 r!7292)))))

(declare-fun bm!533135 () Bool)

(assert (=> bm!533135 (= call!533140 (isEmpty!36882 s!2326))))

(declare-fun b!6293968 () Bool)

(assert (=> b!6293968 (= e!3826947 (not (= (head!12930 s!2326) (c!1142274 r!7292))))))

(declare-fun b!6293969 () Bool)

(assert (=> b!6293969 (= e!3826948 e!3826950)))

(declare-fun res!2595541 () Bool)

(assert (=> b!6293969 (=> (not res!2595541) (not e!3826950))))

(assert (=> b!6293969 (= res!2595541 (not lt!2357610))))

(declare-fun b!6293970 () Bool)

(assert (=> b!6293970 (= e!3826945 (nullable!6208 r!7292))))

(declare-fun b!6293971 () Bool)

(declare-fun e!3826951 () Bool)

(assert (=> b!6293971 (= e!3826951 (= lt!2357610 call!533140))))

(declare-fun b!6293972 () Bool)

(assert (=> b!6293972 (= e!3826951 e!3826949)))

(declare-fun c!1142393 () Bool)

(assert (=> b!6293972 (= c!1142393 ((_ is EmptyLang!16215) r!7292))))

(declare-fun d!1975313 () Bool)

(assert (=> d!1975313 e!3826951))

(declare-fun c!1142394 () Bool)

(assert (=> d!1975313 (= c!1142394 ((_ is EmptyExpr!16215) r!7292))))

(assert (=> d!1975313 (= lt!2357610 e!3826945)))

(declare-fun c!1142395 () Bool)

(assert (=> d!1975313 (= c!1142395 (isEmpty!36882 s!2326))))

(assert (=> d!1975313 (validRegex!7951 r!7292)))

(assert (=> d!1975313 (= (matchR!8398 r!7292 s!2326) lt!2357610)))

(declare-fun b!6293973 () Bool)

(declare-fun res!2595540 () Bool)

(assert (=> b!6293973 (=> (not res!2595540) (not e!3826946))))

(assert (=> b!6293973 (= res!2595540 (isEmpty!36882 (tail!12015 s!2326)))))

(declare-fun b!6293974 () Bool)

(declare-fun res!2595539 () Bool)

(assert (=> b!6293974 (=> res!2595539 e!3826947)))

(assert (=> b!6293974 (= res!2595539 (not (isEmpty!36882 (tail!12015 s!2326))))))

(assert (= (and d!1975313 c!1142395) b!6293970))

(assert (= (and d!1975313 (not c!1142395)) b!6293963))

(assert (= (and d!1975313 c!1142394) b!6293971))

(assert (= (and d!1975313 (not c!1142394)) b!6293972))

(assert (= (and b!6293972 c!1142393) b!6293965))

(assert (= (and b!6293972 (not c!1142393)) b!6293966))

(assert (= (and b!6293966 (not res!2595542)) b!6293964))

(assert (= (and b!6293964 res!2595544) b!6293961))

(assert (= (and b!6293961 res!2595543) b!6293973))

(assert (= (and b!6293973 res!2595540) b!6293967))

(assert (= (and b!6293964 (not res!2595538)) b!6293969))

(assert (= (and b!6293969 res!2595541) b!6293962))

(assert (= (and b!6293962 (not res!2595545)) b!6293974))

(assert (= (and b!6293974 (not res!2595539)) b!6293968))

(assert (= (or b!6293971 b!6293961 b!6293962) bm!533135))

(declare-fun m!7114246 () Bool)

(assert (=> b!6293970 m!7114246))

(declare-fun m!7114248 () Bool)

(assert (=> b!6293963 m!7114248))

(assert (=> b!6293963 m!7114248))

(declare-fun m!7114250 () Bool)

(assert (=> b!6293963 m!7114250))

(declare-fun m!7114252 () Bool)

(assert (=> b!6293963 m!7114252))

(assert (=> b!6293963 m!7114250))

(assert (=> b!6293963 m!7114252))

(declare-fun m!7114254 () Bool)

(assert (=> b!6293963 m!7114254))

(assert (=> b!6293968 m!7114248))

(assert (=> b!6293967 m!7114248))

(assert (=> b!6293974 m!7114252))

(assert (=> b!6293974 m!7114252))

(declare-fun m!7114256 () Bool)

(assert (=> b!6293974 m!7114256))

(assert (=> d!1975313 m!7114238))

(assert (=> d!1975313 m!7113932))

(assert (=> b!6293973 m!7114252))

(assert (=> b!6293973 m!7114252))

(assert (=> b!6293973 m!7114256))

(assert (=> bm!533135 m!7114238))

(assert (=> b!6293475 d!1975313))

(declare-fun d!1975315 () Bool)

(assert (=> d!1975315 (= (matchR!8398 r!7292 s!2326) (matchRSpec!3316 r!7292 s!2326))))

(declare-fun lt!2357613 () Unit!158191)

(declare-fun choose!46765 (Regex!16215 List!64945) Unit!158191)

(assert (=> d!1975315 (= lt!2357613 (choose!46765 r!7292 s!2326))))

(assert (=> d!1975315 (validRegex!7951 r!7292)))

(assert (=> d!1975315 (= (mainMatchTheorem!3316 r!7292 s!2326) lt!2357613)))

(declare-fun bs!1574404 () Bool)

(assert (= bs!1574404 d!1975315))

(assert (=> bs!1574404 m!7113926))

(assert (=> bs!1574404 m!7113924))

(declare-fun m!7114258 () Bool)

(assert (=> bs!1574404 m!7114258))

(assert (=> bs!1574404 m!7113932))

(assert (=> b!6293475 d!1975315))

(declare-fun d!1975317 () Bool)

(assert (=> d!1975317 (= (isEmpty!36878 (t!378510 zl!343)) ((_ is Nil!64822) (t!378510 zl!343)))))

(assert (=> b!6293473 d!1975317))

(declare-fun bs!1574405 () Bool)

(declare-fun d!1975319 () Bool)

(assert (= bs!1574405 (and d!1975319 d!1975291)))

(declare-fun lambda!345832 () Int)

(assert (=> bs!1574405 (= lambda!345832 lambda!345822)))

(declare-fun bs!1574406 () Bool)

(assert (= bs!1574406 (and d!1975319 d!1975309)))

(assert (=> bs!1574406 (= lambda!345832 lambda!345823)))

(declare-fun b!6293995 () Bool)

(declare-fun e!3826966 () Regex!16215)

(assert (=> b!6293995 (= e!3826966 (Concat!25060 (h!71268 (exprs!6099 (h!71270 zl!343))) (generalisedConcat!1812 (t!378508 (exprs!6099 (h!71270 zl!343))))))))

(declare-fun b!6293996 () Bool)

(assert (=> b!6293996 (= e!3826966 EmptyExpr!16215)))

(declare-fun b!6293997 () Bool)

(declare-fun e!3826968 () Bool)

(assert (=> b!6293997 (= e!3826968 (isEmpty!36877 (t!378508 (exprs!6099 (h!71270 zl!343)))))))

(declare-fun e!3826967 () Bool)

(assert (=> d!1975319 e!3826967))

(declare-fun res!2595551 () Bool)

(assert (=> d!1975319 (=> (not res!2595551) (not e!3826967))))

(declare-fun lt!2357616 () Regex!16215)

(assert (=> d!1975319 (= res!2595551 (validRegex!7951 lt!2357616))))

(declare-fun e!3826965 () Regex!16215)

(assert (=> d!1975319 (= lt!2357616 e!3826965)))

(declare-fun c!1142405 () Bool)

(assert (=> d!1975319 (= c!1142405 e!3826968)))

(declare-fun res!2595550 () Bool)

(assert (=> d!1975319 (=> (not res!2595550) (not e!3826968))))

(assert (=> d!1975319 (= res!2595550 ((_ is Cons!64820) (exprs!6099 (h!71270 zl!343))))))

(assert (=> d!1975319 (forall!15365 (exprs!6099 (h!71270 zl!343)) lambda!345832)))

(assert (=> d!1975319 (= (generalisedConcat!1812 (exprs!6099 (h!71270 zl!343))) lt!2357616)))

(declare-fun b!6293998 () Bool)

(declare-fun e!3826969 () Bool)

(declare-fun head!12931 (List!64944) Regex!16215)

(assert (=> b!6293998 (= e!3826969 (= lt!2357616 (head!12931 (exprs!6099 (h!71270 zl!343)))))))

(declare-fun b!6293999 () Bool)

(assert (=> b!6293999 (= e!3826965 (h!71268 (exprs!6099 (h!71270 zl!343))))))

(declare-fun b!6294000 () Bool)

(declare-fun e!3826964 () Bool)

(assert (=> b!6294000 (= e!3826967 e!3826964)))

(declare-fun c!1142407 () Bool)

(assert (=> b!6294000 (= c!1142407 (isEmpty!36877 (exprs!6099 (h!71270 zl!343))))))

(declare-fun b!6294001 () Bool)

(declare-fun isConcat!1144 (Regex!16215) Bool)

(assert (=> b!6294001 (= e!3826969 (isConcat!1144 lt!2357616))))

(declare-fun b!6294002 () Bool)

(assert (=> b!6294002 (= e!3826964 e!3826969)))

(declare-fun c!1142406 () Bool)

(declare-fun tail!12016 (List!64944) List!64944)

(assert (=> b!6294002 (= c!1142406 (isEmpty!36877 (tail!12016 (exprs!6099 (h!71270 zl!343)))))))

(declare-fun b!6294003 () Bool)

(declare-fun isEmptyExpr!1621 (Regex!16215) Bool)

(assert (=> b!6294003 (= e!3826964 (isEmptyExpr!1621 lt!2357616))))

(declare-fun b!6294004 () Bool)

(assert (=> b!6294004 (= e!3826965 e!3826966)))

(declare-fun c!1142404 () Bool)

(assert (=> b!6294004 (= c!1142404 ((_ is Cons!64820) (exprs!6099 (h!71270 zl!343))))))

(assert (= (and d!1975319 res!2595550) b!6293997))

(assert (= (and d!1975319 c!1142405) b!6293999))

(assert (= (and d!1975319 (not c!1142405)) b!6294004))

(assert (= (and b!6294004 c!1142404) b!6293995))

(assert (= (and b!6294004 (not c!1142404)) b!6293996))

(assert (= (and d!1975319 res!2595551) b!6294000))

(assert (= (and b!6294000 c!1142407) b!6294003))

(assert (= (and b!6294000 (not c!1142407)) b!6294002))

(assert (= (and b!6294002 c!1142406) b!6293998))

(assert (= (and b!6294002 (not c!1142406)) b!6294001))

(declare-fun m!7114260 () Bool)

(assert (=> b!6294003 m!7114260))

(declare-fun m!7114262 () Bool)

(assert (=> d!1975319 m!7114262))

(declare-fun m!7114264 () Bool)

(assert (=> d!1975319 m!7114264))

(declare-fun m!7114266 () Bool)

(assert (=> b!6294001 m!7114266))

(declare-fun m!7114268 () Bool)

(assert (=> b!6294000 m!7114268))

(declare-fun m!7114270 () Bool)

(assert (=> b!6293995 m!7114270))

(assert (=> b!6293997 m!7113966))

(declare-fun m!7114272 () Bool)

(assert (=> b!6294002 m!7114272))

(assert (=> b!6294002 m!7114272))

(declare-fun m!7114274 () Bool)

(assert (=> b!6294002 m!7114274))

(declare-fun m!7114276 () Bool)

(assert (=> b!6293998 m!7114276))

(assert (=> b!6293463 d!1975319))

(declare-fun bs!1574407 () Bool)

(declare-fun d!1975321 () Bool)

(assert (= bs!1574407 (and d!1975321 d!1975291)))

(declare-fun lambda!345835 () Int)

(assert (=> bs!1574407 (= lambda!345835 lambda!345822)))

(declare-fun bs!1574408 () Bool)

(assert (= bs!1574408 (and d!1975321 d!1975309)))

(assert (=> bs!1574408 (= lambda!345835 lambda!345823)))

(declare-fun bs!1574409 () Bool)

(assert (= bs!1574409 (and d!1975321 d!1975319)))

(assert (=> bs!1574409 (= lambda!345835 lambda!345832)))

(declare-fun b!6294025 () Bool)

(declare-fun e!3826985 () Bool)

(declare-fun lt!2357619 () Regex!16215)

(assert (=> b!6294025 (= e!3826985 (= lt!2357619 (head!12931 (unfocusZipperList!1636 zl!343))))))

(declare-fun b!6294026 () Bool)

(declare-fun e!3826986 () Bool)

(assert (=> b!6294026 (= e!3826986 e!3826985)))

(declare-fun c!1142417 () Bool)

(assert (=> b!6294026 (= c!1142417 (isEmpty!36877 (tail!12016 (unfocusZipperList!1636 zl!343))))))

(declare-fun b!6294027 () Bool)

(declare-fun e!3826987 () Regex!16215)

(assert (=> b!6294027 (= e!3826987 (h!71268 (unfocusZipperList!1636 zl!343)))))

(declare-fun b!6294028 () Bool)

(declare-fun e!3826984 () Regex!16215)

(assert (=> b!6294028 (= e!3826984 EmptyLang!16215)))

(declare-fun b!6294029 () Bool)

(declare-fun isUnion!1058 (Regex!16215) Bool)

(assert (=> b!6294029 (= e!3826985 (isUnion!1058 lt!2357619))))

(declare-fun b!6294030 () Bool)

(assert (=> b!6294030 (= e!3826984 (Union!16215 (h!71268 (unfocusZipperList!1636 zl!343)) (generalisedUnion!2059 (t!378508 (unfocusZipperList!1636 zl!343)))))))

(declare-fun b!6294031 () Bool)

(declare-fun isEmptyLang!1628 (Regex!16215) Bool)

(assert (=> b!6294031 (= e!3826986 (isEmptyLang!1628 lt!2357619))))

(declare-fun b!6294032 () Bool)

(declare-fun e!3826983 () Bool)

(assert (=> b!6294032 (= e!3826983 (isEmpty!36877 (t!378508 (unfocusZipperList!1636 zl!343))))))

(declare-fun e!3826982 () Bool)

(assert (=> d!1975321 e!3826982))

(declare-fun res!2595556 () Bool)

(assert (=> d!1975321 (=> (not res!2595556) (not e!3826982))))

(assert (=> d!1975321 (= res!2595556 (validRegex!7951 lt!2357619))))

(assert (=> d!1975321 (= lt!2357619 e!3826987)))

(declare-fun c!1142419 () Bool)

(assert (=> d!1975321 (= c!1142419 e!3826983)))

(declare-fun res!2595557 () Bool)

(assert (=> d!1975321 (=> (not res!2595557) (not e!3826983))))

(assert (=> d!1975321 (= res!2595557 ((_ is Cons!64820) (unfocusZipperList!1636 zl!343)))))

(assert (=> d!1975321 (forall!15365 (unfocusZipperList!1636 zl!343) lambda!345835)))

(assert (=> d!1975321 (= (generalisedUnion!2059 (unfocusZipperList!1636 zl!343)) lt!2357619)))

(declare-fun b!6294033 () Bool)

(assert (=> b!6294033 (= e!3826987 e!3826984)))

(declare-fun c!1142418 () Bool)

(assert (=> b!6294033 (= c!1142418 ((_ is Cons!64820) (unfocusZipperList!1636 zl!343)))))

(declare-fun b!6294034 () Bool)

(assert (=> b!6294034 (= e!3826982 e!3826986)))

(declare-fun c!1142416 () Bool)

(assert (=> b!6294034 (= c!1142416 (isEmpty!36877 (unfocusZipperList!1636 zl!343)))))

(assert (= (and d!1975321 res!2595557) b!6294032))

(assert (= (and d!1975321 c!1142419) b!6294027))

(assert (= (and d!1975321 (not c!1142419)) b!6294033))

(assert (= (and b!6294033 c!1142418) b!6294030))

(assert (= (and b!6294033 (not c!1142418)) b!6294028))

(assert (= (and d!1975321 res!2595556) b!6294034))

(assert (= (and b!6294034 c!1142416) b!6294031))

(assert (= (and b!6294034 (not c!1142416)) b!6294026))

(assert (= (and b!6294026 c!1142417) b!6294025))

(assert (= (and b!6294026 (not c!1142417)) b!6294029))

(declare-fun m!7114278 () Bool)

(assert (=> b!6294029 m!7114278))

(assert (=> b!6294026 m!7113968))

(declare-fun m!7114280 () Bool)

(assert (=> b!6294026 m!7114280))

(assert (=> b!6294026 m!7114280))

(declare-fun m!7114282 () Bool)

(assert (=> b!6294026 m!7114282))

(declare-fun m!7114284 () Bool)

(assert (=> b!6294030 m!7114284))

(declare-fun m!7114286 () Bool)

(assert (=> b!6294031 m!7114286))

(assert (=> b!6294025 m!7113968))

(declare-fun m!7114288 () Bool)

(assert (=> b!6294025 m!7114288))

(declare-fun m!7114290 () Bool)

(assert (=> d!1975321 m!7114290))

(assert (=> d!1975321 m!7113968))

(declare-fun m!7114292 () Bool)

(assert (=> d!1975321 m!7114292))

(declare-fun m!7114294 () Bool)

(assert (=> b!6294032 m!7114294))

(assert (=> b!6294034 m!7113968))

(declare-fun m!7114296 () Bool)

(assert (=> b!6294034 m!7114296))

(assert (=> b!6293472 d!1975321))

(declare-fun bs!1574410 () Bool)

(declare-fun d!1975323 () Bool)

(assert (= bs!1574410 (and d!1975323 d!1975291)))

(declare-fun lambda!345838 () Int)

(assert (=> bs!1574410 (= lambda!345838 lambda!345822)))

(declare-fun bs!1574411 () Bool)

(assert (= bs!1574411 (and d!1975323 d!1975309)))

(assert (=> bs!1574411 (= lambda!345838 lambda!345823)))

(declare-fun bs!1574412 () Bool)

(assert (= bs!1574412 (and d!1975323 d!1975319)))

(assert (=> bs!1574412 (= lambda!345838 lambda!345832)))

(declare-fun bs!1574413 () Bool)

(assert (= bs!1574413 (and d!1975323 d!1975321)))

(assert (=> bs!1574413 (= lambda!345838 lambda!345835)))

(declare-fun lt!2357622 () List!64944)

(assert (=> d!1975323 (forall!15365 lt!2357622 lambda!345838)))

(declare-fun e!3826990 () List!64944)

(assert (=> d!1975323 (= lt!2357622 e!3826990)))

(declare-fun c!1142422 () Bool)

(assert (=> d!1975323 (= c!1142422 ((_ is Cons!64822) zl!343))))

(assert (=> d!1975323 (= (unfocusZipperList!1636 zl!343) lt!2357622)))

(declare-fun b!6294039 () Bool)

(assert (=> b!6294039 (= e!3826990 (Cons!64820 (generalisedConcat!1812 (exprs!6099 (h!71270 zl!343))) (unfocusZipperList!1636 (t!378510 zl!343))))))

(declare-fun b!6294040 () Bool)

(assert (=> b!6294040 (= e!3826990 Nil!64820)))

(assert (= (and d!1975323 c!1142422) b!6294039))

(assert (= (and d!1975323 (not c!1142422)) b!6294040))

(declare-fun m!7114298 () Bool)

(assert (=> d!1975323 m!7114298))

(assert (=> b!6294039 m!7113930))

(declare-fun m!7114300 () Bool)

(assert (=> b!6294039 m!7114300))

(assert (=> b!6293472 d!1975323))

(declare-fun d!1975325 () Bool)

(declare-fun nullableFct!2159 (Regex!16215) Bool)

(assert (=> d!1975325 (= (nullable!6208 (h!71268 (exprs!6099 (h!71270 zl!343)))) (nullableFct!2159 (h!71268 (exprs!6099 (h!71270 zl!343)))))))

(declare-fun bs!1574414 () Bool)

(assert (= bs!1574414 d!1975325))

(declare-fun m!7114302 () Bool)

(assert (=> bs!1574414 m!7114302))

(assert (=> b!6293461 d!1975325))

(declare-fun b!6294051 () Bool)

(declare-fun e!3826998 () (InoxSet Context!11198))

(declare-fun call!533143 () (InoxSet Context!11198))

(assert (=> b!6294051 (= e!3826998 ((_ map or) call!533143 (derivationStepZipperUp!1389 (Context!11199 (t!378508 (exprs!6099 (Context!11199 (Cons!64820 (h!71268 (exprs!6099 (h!71270 zl!343))) (t!378508 (exprs!6099 (h!71270 zl!343)))))))) (h!71269 s!2326))))))

(declare-fun b!6294052 () Bool)

(declare-fun e!3826997 () (InoxSet Context!11198))

(assert (=> b!6294052 (= e!3826998 e!3826997)))

(declare-fun c!1142427 () Bool)

(assert (=> b!6294052 (= c!1142427 ((_ is Cons!64820) (exprs!6099 (Context!11199 (Cons!64820 (h!71268 (exprs!6099 (h!71270 zl!343))) (t!378508 (exprs!6099 (h!71270 zl!343))))))))))

(declare-fun d!1975327 () Bool)

(declare-fun c!1142428 () Bool)

(declare-fun e!3826999 () Bool)

(assert (=> d!1975327 (= c!1142428 e!3826999)))

(declare-fun res!2595560 () Bool)

(assert (=> d!1975327 (=> (not res!2595560) (not e!3826999))))

(assert (=> d!1975327 (= res!2595560 ((_ is Cons!64820) (exprs!6099 (Context!11199 (Cons!64820 (h!71268 (exprs!6099 (h!71270 zl!343))) (t!378508 (exprs!6099 (h!71270 zl!343))))))))))

(assert (=> d!1975327 (= (derivationStepZipperUp!1389 (Context!11199 (Cons!64820 (h!71268 (exprs!6099 (h!71270 zl!343))) (t!378508 (exprs!6099 (h!71270 zl!343))))) (h!71269 s!2326)) e!3826998)))

(declare-fun b!6294053 () Bool)

(assert (=> b!6294053 (= e!3826999 (nullable!6208 (h!71268 (exprs!6099 (Context!11199 (Cons!64820 (h!71268 (exprs!6099 (h!71270 zl!343))) (t!378508 (exprs!6099 (h!71270 zl!343)))))))))))

(declare-fun b!6294054 () Bool)

(assert (=> b!6294054 (= e!3826997 ((as const (Array Context!11198 Bool)) false))))

(declare-fun b!6294055 () Bool)

(assert (=> b!6294055 (= e!3826997 call!533143)))

(declare-fun bm!533138 () Bool)

(assert (=> bm!533138 (= call!533143 (derivationStepZipperDown!1463 (h!71268 (exprs!6099 (Context!11199 (Cons!64820 (h!71268 (exprs!6099 (h!71270 zl!343))) (t!378508 (exprs!6099 (h!71270 zl!343))))))) (Context!11199 (t!378508 (exprs!6099 (Context!11199 (Cons!64820 (h!71268 (exprs!6099 (h!71270 zl!343))) (t!378508 (exprs!6099 (h!71270 zl!343)))))))) (h!71269 s!2326)))))

(assert (= (and d!1975327 res!2595560) b!6294053))

(assert (= (and d!1975327 c!1142428) b!6294051))

(assert (= (and d!1975327 (not c!1142428)) b!6294052))

(assert (= (and b!6294052 c!1142427) b!6294055))

(assert (= (and b!6294052 (not c!1142427)) b!6294054))

(assert (= (or b!6294051 b!6294055) bm!533138))

(declare-fun m!7114304 () Bool)

(assert (=> b!6294051 m!7114304))

(declare-fun m!7114306 () Bool)

(assert (=> b!6294053 m!7114306))

(declare-fun m!7114308 () Bool)

(assert (=> bm!533138 m!7114308))

(assert (=> b!6293461 d!1975327))

(declare-fun d!1975329 () Bool)

(declare-fun dynLambda!25657 (Int Context!11198) (InoxSet Context!11198))

(assert (=> d!1975329 (= (flatMap!1720 z!1189 lambda!345781) (dynLambda!25657 lambda!345781 (h!71270 zl!343)))))

(declare-fun lt!2357625 () Unit!158191)

(declare-fun choose!46766 ((InoxSet Context!11198) Context!11198 Int) Unit!158191)

(assert (=> d!1975329 (= lt!2357625 (choose!46766 z!1189 (h!71270 zl!343) lambda!345781))))

(assert (=> d!1975329 (= z!1189 (store ((as const (Array Context!11198 Bool)) false) (h!71270 zl!343) true))))

(assert (=> d!1975329 (= (lemmaFlatMapOnSingletonSet!1246 z!1189 (h!71270 zl!343) lambda!345781) lt!2357625)))

(declare-fun b_lambda!239489 () Bool)

(assert (=> (not b_lambda!239489) (not d!1975329)))

(declare-fun bs!1574415 () Bool)

(assert (= bs!1574415 d!1975329))

(assert (=> bs!1574415 m!7113936))

(declare-fun m!7114310 () Bool)

(assert (=> bs!1574415 m!7114310))

(declare-fun m!7114312 () Bool)

(assert (=> bs!1574415 m!7114312))

(declare-fun m!7114314 () Bool)

(assert (=> bs!1574415 m!7114314))

(assert (=> b!6293461 d!1975329))

(declare-fun b!6294078 () Bool)

(declare-fun e!3827017 () (InoxSet Context!11198))

(declare-fun e!3827014 () (InoxSet Context!11198))

(assert (=> b!6294078 (= e!3827017 e!3827014)))

(declare-fun c!1142443 () Bool)

(assert (=> b!6294078 (= c!1142443 ((_ is Union!16215) (h!71268 (exprs!6099 (h!71270 zl!343)))))))

(declare-fun b!6294079 () Bool)

(declare-fun e!3827016 () Bool)

(assert (=> b!6294079 (= e!3827016 (nullable!6208 (regOne!32942 (h!71268 (exprs!6099 (h!71270 zl!343))))))))

(declare-fun call!533158 () (InoxSet Context!11198))

(declare-fun call!533159 () List!64944)

(declare-fun bm!533151 () Bool)

(declare-fun c!1142440 () Bool)

(declare-fun c!1142439 () Bool)

(assert (=> bm!533151 (= call!533158 (derivationStepZipperDown!1463 (ite c!1142443 (regTwo!32943 (h!71268 (exprs!6099 (h!71270 zl!343)))) (ite c!1142440 (regTwo!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))) (ite c!1142439 (regOne!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))) (reg!16544 (h!71268 (exprs!6099 (h!71270 zl!343))))))) (ite (or c!1142443 c!1142440) lt!2357543 (Context!11199 call!533159)) (h!71269 s!2326)))))

(declare-fun b!6294080 () Bool)

(assert (=> b!6294080 (= e!3827017 (store ((as const (Array Context!11198 Bool)) false) lt!2357543 true))))

(declare-fun call!533160 () (InoxSet Context!11198))

(declare-fun call!533157 () List!64944)

(declare-fun bm!533152 () Bool)

(assert (=> bm!533152 (= call!533160 (derivationStepZipperDown!1463 (ite c!1142443 (regOne!32943 (h!71268 (exprs!6099 (h!71270 zl!343)))) (regOne!32942 (h!71268 (exprs!6099 (h!71270 zl!343))))) (ite c!1142443 lt!2357543 (Context!11199 call!533157)) (h!71269 s!2326)))))

(declare-fun b!6294081 () Bool)

(assert (=> b!6294081 (= c!1142440 e!3827016)))

(declare-fun res!2595563 () Bool)

(assert (=> b!6294081 (=> (not res!2595563) (not e!3827016))))

(assert (=> b!6294081 (= res!2595563 ((_ is Concat!25060) (h!71268 (exprs!6099 (h!71270 zl!343)))))))

(declare-fun e!3827015 () (InoxSet Context!11198))

(assert (=> b!6294081 (= e!3827014 e!3827015)))

(declare-fun b!6294082 () Bool)

(declare-fun call!533161 () (InoxSet Context!11198))

(assert (=> b!6294082 (= e!3827015 ((_ map or) call!533160 call!533161))))

(declare-fun b!6294083 () Bool)

(declare-fun e!3827013 () (InoxSet Context!11198))

(assert (=> b!6294083 (= e!3827015 e!3827013)))

(assert (=> b!6294083 (= c!1142439 ((_ is Concat!25060) (h!71268 (exprs!6099 (h!71270 zl!343)))))))

(declare-fun b!6294084 () Bool)

(declare-fun e!3827012 () (InoxSet Context!11198))

(assert (=> b!6294084 (= e!3827012 ((as const (Array Context!11198 Bool)) false))))

(declare-fun b!6294085 () Bool)

(declare-fun call!533156 () (InoxSet Context!11198))

(assert (=> b!6294085 (= e!3827013 call!533156)))

(declare-fun bm!533153 () Bool)

(declare-fun $colon$colon!2080 (List!64944 Regex!16215) List!64944)

(assert (=> bm!533153 (= call!533157 ($colon$colon!2080 (exprs!6099 lt!2357543) (ite (or c!1142440 c!1142439) (regTwo!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))) (h!71268 (exprs!6099 (h!71270 zl!343))))))))

(declare-fun d!1975331 () Bool)

(declare-fun c!1142441 () Bool)

(assert (=> d!1975331 (= c!1142441 (and ((_ is ElementMatch!16215) (h!71268 (exprs!6099 (h!71270 zl!343)))) (= (c!1142274 (h!71268 (exprs!6099 (h!71270 zl!343)))) (h!71269 s!2326))))))

(assert (=> d!1975331 (= (derivationStepZipperDown!1463 (h!71268 (exprs!6099 (h!71270 zl!343))) lt!2357543 (h!71269 s!2326)) e!3827017)))

(declare-fun bm!533154 () Bool)

(assert (=> bm!533154 (= call!533161 call!533158)))

(declare-fun bm!533155 () Bool)

(assert (=> bm!533155 (= call!533156 call!533161)))

(declare-fun b!6294086 () Bool)

(declare-fun c!1142442 () Bool)

(assert (=> b!6294086 (= c!1142442 ((_ is Star!16215) (h!71268 (exprs!6099 (h!71270 zl!343)))))))

(assert (=> b!6294086 (= e!3827013 e!3827012)))

(declare-fun b!6294087 () Bool)

(assert (=> b!6294087 (= e!3827014 ((_ map or) call!533160 call!533158))))

(declare-fun b!6294088 () Bool)

(assert (=> b!6294088 (= e!3827012 call!533156)))

(declare-fun bm!533156 () Bool)

(assert (=> bm!533156 (= call!533159 call!533157)))

(assert (= (and d!1975331 c!1142441) b!6294080))

(assert (= (and d!1975331 (not c!1142441)) b!6294078))

(assert (= (and b!6294078 c!1142443) b!6294087))

(assert (= (and b!6294078 (not c!1142443)) b!6294081))

(assert (= (and b!6294081 res!2595563) b!6294079))

(assert (= (and b!6294081 c!1142440) b!6294082))

(assert (= (and b!6294081 (not c!1142440)) b!6294083))

(assert (= (and b!6294083 c!1142439) b!6294085))

(assert (= (and b!6294083 (not c!1142439)) b!6294086))

(assert (= (and b!6294086 c!1142442) b!6294088))

(assert (= (and b!6294086 (not c!1142442)) b!6294084))

(assert (= (or b!6294085 b!6294088) bm!533156))

(assert (= (or b!6294085 b!6294088) bm!533155))

(assert (= (or b!6294082 bm!533156) bm!533153))

(assert (= (or b!6294082 bm!533155) bm!533154))

(assert (= (or b!6294087 bm!533154) bm!533151))

(assert (= (or b!6294087 b!6294082) bm!533152))

(declare-fun m!7114316 () Bool)

(assert (=> bm!533151 m!7114316))

(declare-fun m!7114318 () Bool)

(assert (=> b!6294080 m!7114318))

(declare-fun m!7114320 () Bool)

(assert (=> bm!533152 m!7114320))

(declare-fun m!7114322 () Bool)

(assert (=> b!6294079 m!7114322))

(declare-fun m!7114324 () Bool)

(assert (=> bm!533153 m!7114324))

(assert (=> b!6293461 d!1975331))

(declare-fun e!3827019 () (InoxSet Context!11198))

(declare-fun call!533162 () (InoxSet Context!11198))

(declare-fun b!6294089 () Bool)

(assert (=> b!6294089 (= e!3827019 ((_ map or) call!533162 (derivationStepZipperUp!1389 (Context!11199 (t!378508 (exprs!6099 (h!71270 zl!343)))) (h!71269 s!2326))))))

(declare-fun b!6294090 () Bool)

(declare-fun e!3827018 () (InoxSet Context!11198))

(assert (=> b!6294090 (= e!3827019 e!3827018)))

(declare-fun c!1142444 () Bool)

(assert (=> b!6294090 (= c!1142444 ((_ is Cons!64820) (exprs!6099 (h!71270 zl!343))))))

(declare-fun d!1975333 () Bool)

(declare-fun c!1142445 () Bool)

(declare-fun e!3827020 () Bool)

(assert (=> d!1975333 (= c!1142445 e!3827020)))

(declare-fun res!2595564 () Bool)

(assert (=> d!1975333 (=> (not res!2595564) (not e!3827020))))

(assert (=> d!1975333 (= res!2595564 ((_ is Cons!64820) (exprs!6099 (h!71270 zl!343))))))

(assert (=> d!1975333 (= (derivationStepZipperUp!1389 (h!71270 zl!343) (h!71269 s!2326)) e!3827019)))

(declare-fun b!6294091 () Bool)

(assert (=> b!6294091 (= e!3827020 (nullable!6208 (h!71268 (exprs!6099 (h!71270 zl!343)))))))

(declare-fun b!6294092 () Bool)

(assert (=> b!6294092 (= e!3827018 ((as const (Array Context!11198 Bool)) false))))

(declare-fun b!6294093 () Bool)

(assert (=> b!6294093 (= e!3827018 call!533162)))

(declare-fun bm!533157 () Bool)

(assert (=> bm!533157 (= call!533162 (derivationStepZipperDown!1463 (h!71268 (exprs!6099 (h!71270 zl!343))) (Context!11199 (t!378508 (exprs!6099 (h!71270 zl!343)))) (h!71269 s!2326)))))

(assert (= (and d!1975333 res!2595564) b!6294091))

(assert (= (and d!1975333 c!1142445) b!6294089))

(assert (= (and d!1975333 (not c!1142445)) b!6294090))

(assert (= (and b!6294090 c!1142444) b!6294093))

(assert (= (and b!6294090 (not c!1142444)) b!6294092))

(assert (= (or b!6294089 b!6294093) bm!533157))

(declare-fun m!7114326 () Bool)

(assert (=> b!6294089 m!7114326))

(assert (=> b!6294091 m!7113944))

(declare-fun m!7114328 () Bool)

(assert (=> bm!533157 m!7114328))

(assert (=> b!6293461 d!1975333))

(declare-fun d!1975335 () Bool)

(declare-fun choose!46767 ((InoxSet Context!11198) Int) (InoxSet Context!11198))

(assert (=> d!1975335 (= (flatMap!1720 z!1189 lambda!345781) (choose!46767 z!1189 lambda!345781))))

(declare-fun bs!1574416 () Bool)

(assert (= bs!1574416 d!1975335))

(declare-fun m!7114330 () Bool)

(assert (=> bs!1574416 m!7114330))

(assert (=> b!6293461 d!1975335))

(declare-fun b!6294094 () Bool)

(declare-fun e!3827022 () (InoxSet Context!11198))

(declare-fun call!533163 () (InoxSet Context!11198))

(assert (=> b!6294094 (= e!3827022 ((_ map or) call!533163 (derivationStepZipperUp!1389 (Context!11199 (t!378508 (exprs!6099 lt!2357543))) (h!71269 s!2326))))))

(declare-fun b!6294095 () Bool)

(declare-fun e!3827021 () (InoxSet Context!11198))

(assert (=> b!6294095 (= e!3827022 e!3827021)))

(declare-fun c!1142446 () Bool)

(assert (=> b!6294095 (= c!1142446 ((_ is Cons!64820) (exprs!6099 lt!2357543)))))

(declare-fun d!1975337 () Bool)

(declare-fun c!1142447 () Bool)

(declare-fun e!3827023 () Bool)

(assert (=> d!1975337 (= c!1142447 e!3827023)))

(declare-fun res!2595565 () Bool)

(assert (=> d!1975337 (=> (not res!2595565) (not e!3827023))))

(assert (=> d!1975337 (= res!2595565 ((_ is Cons!64820) (exprs!6099 lt!2357543)))))

(assert (=> d!1975337 (= (derivationStepZipperUp!1389 lt!2357543 (h!71269 s!2326)) e!3827022)))

(declare-fun b!6294096 () Bool)

(assert (=> b!6294096 (= e!3827023 (nullable!6208 (h!71268 (exprs!6099 lt!2357543))))))

(declare-fun b!6294097 () Bool)

(assert (=> b!6294097 (= e!3827021 ((as const (Array Context!11198 Bool)) false))))

(declare-fun b!6294098 () Bool)

(assert (=> b!6294098 (= e!3827021 call!533163)))

(declare-fun bm!533158 () Bool)

(assert (=> bm!533158 (= call!533163 (derivationStepZipperDown!1463 (h!71268 (exprs!6099 lt!2357543)) (Context!11199 (t!378508 (exprs!6099 lt!2357543))) (h!71269 s!2326)))))

(assert (= (and d!1975337 res!2595565) b!6294096))

(assert (= (and d!1975337 c!1142447) b!6294094))

(assert (= (and d!1975337 (not c!1142447)) b!6294095))

(assert (= (and b!6294095 c!1142446) b!6294098))

(assert (= (and b!6294095 (not c!1142446)) b!6294097))

(assert (= (or b!6294094 b!6294098) bm!533158))

(declare-fun m!7114332 () Bool)

(assert (=> b!6294094 m!7114332))

(declare-fun m!7114334 () Bool)

(assert (=> b!6294096 m!7114334))

(declare-fun m!7114336 () Bool)

(assert (=> bm!533158 m!7114336))

(assert (=> b!6293461 d!1975337))

(declare-fun d!1975339 () Bool)

(assert (=> d!1975339 (= (nullable!6208 (regOne!32942 (regOne!32942 r!7292))) (nullableFct!2159 (regOne!32942 (regOne!32942 r!7292))))))

(declare-fun bs!1574417 () Bool)

(assert (= bs!1574417 d!1975339))

(declare-fun m!7114338 () Bool)

(assert (=> bs!1574417 m!7114338))

(assert (=> b!6293481 d!1975339))

(declare-fun d!1975341 () Bool)

(declare-fun c!1142448 () Bool)

(assert (=> d!1975341 (= c!1142448 (isEmpty!36882 (t!378509 s!2326)))))

(declare-fun e!3827024 () Bool)

(assert (=> d!1975341 (= (matchZipper!2227 lt!2357535 (t!378509 s!2326)) e!3827024)))

(declare-fun b!6294099 () Bool)

(assert (=> b!6294099 (= e!3827024 (nullableZipper!1985 lt!2357535))))

(declare-fun b!6294100 () Bool)

(assert (=> b!6294100 (= e!3827024 (matchZipper!2227 (derivationStepZipper!2181 lt!2357535 (head!12930 (t!378509 s!2326))) (tail!12015 (t!378509 s!2326))))))

(assert (= (and d!1975341 c!1142448) b!6294099))

(assert (= (and d!1975341 (not c!1142448)) b!6294100))

(assert (=> d!1975341 m!7114212))

(declare-fun m!7114340 () Bool)

(assert (=> b!6294099 m!7114340))

(assert (=> b!6294100 m!7114216))

(assert (=> b!6294100 m!7114216))

(declare-fun m!7114342 () Bool)

(assert (=> b!6294100 m!7114342))

(assert (=> b!6294100 m!7114220))

(assert (=> b!6294100 m!7114342))

(assert (=> b!6294100 m!7114220))

(declare-fun m!7114344 () Bool)

(assert (=> b!6294100 m!7114344))

(assert (=> b!6293460 d!1975341))

(declare-fun bs!1574418 () Bool)

(declare-fun d!1975343 () Bool)

(assert (= bs!1574418 (and d!1975343 d!1975291)))

(declare-fun lambda!345839 () Int)

(assert (=> bs!1574418 (= lambda!345839 lambda!345822)))

(declare-fun bs!1574419 () Bool)

(assert (= bs!1574419 (and d!1975343 d!1975319)))

(assert (=> bs!1574419 (= lambda!345839 lambda!345832)))

(declare-fun bs!1574420 () Bool)

(assert (= bs!1574420 (and d!1975343 d!1975323)))

(assert (=> bs!1574420 (= lambda!345839 lambda!345838)))

(declare-fun bs!1574421 () Bool)

(assert (= bs!1574421 (and d!1975343 d!1975309)))

(assert (=> bs!1574421 (= lambda!345839 lambda!345823)))

(declare-fun bs!1574422 () Bool)

(assert (= bs!1574422 (and d!1975343 d!1975321)))

(assert (=> bs!1574422 (= lambda!345839 lambda!345835)))

(assert (=> d!1975343 (= (inv!83784 setElem!42836) (forall!15365 (exprs!6099 setElem!42836) lambda!345839))))

(declare-fun bs!1574423 () Bool)

(assert (= bs!1574423 d!1975343))

(declare-fun m!7114346 () Bool)

(assert (=> bs!1574423 m!7114346))

(assert (=> setNonEmpty!42836 d!1975343))

(declare-fun d!1975345 () Bool)

(assert (=> d!1975345 (= (isEmpty!36877 (t!378508 (exprs!6099 (h!71270 zl!343)))) ((_ is Nil!64820) (t!378508 (exprs!6099 (h!71270 zl!343)))))))

(assert (=> b!6293471 d!1975345))

(declare-fun d!1975347 () Bool)

(declare-fun lt!2357628 () Regex!16215)

(assert (=> d!1975347 (validRegex!7951 lt!2357628)))

(assert (=> d!1975347 (= lt!2357628 (generalisedUnion!2059 (unfocusZipperList!1636 zl!343)))))

(assert (=> d!1975347 (= (unfocusZipper!1957 zl!343) lt!2357628)))

(declare-fun bs!1574424 () Bool)

(assert (= bs!1574424 d!1975347))

(declare-fun m!7114348 () Bool)

(assert (=> bs!1574424 m!7114348))

(assert (=> bs!1574424 m!7113968))

(assert (=> bs!1574424 m!7113968))

(assert (=> bs!1574424 m!7113970))

(assert (=> b!6293479 d!1975347))

(declare-fun b!6294119 () Bool)

(declare-fun e!3827045 () Bool)

(declare-fun call!533172 () Bool)

(assert (=> b!6294119 (= e!3827045 call!533172)))

(declare-fun b!6294120 () Bool)

(declare-fun res!2595577 () Bool)

(assert (=> b!6294120 (=> (not res!2595577) (not e!3827045))))

(declare-fun call!533171 () Bool)

(assert (=> b!6294120 (= res!2595577 call!533171)))

(declare-fun e!3827043 () Bool)

(assert (=> b!6294120 (= e!3827043 e!3827045)))

(declare-fun d!1975349 () Bool)

(declare-fun res!2595578 () Bool)

(declare-fun e!3827044 () Bool)

(assert (=> d!1975349 (=> res!2595578 e!3827044)))

(assert (=> d!1975349 (= res!2595578 ((_ is ElementMatch!16215) r!7292))))

(assert (=> d!1975349 (= (validRegex!7951 r!7292) e!3827044)))

(declare-fun c!1142454 () Bool)

(declare-fun call!533170 () Bool)

(declare-fun c!1142453 () Bool)

(declare-fun bm!533165 () Bool)

(assert (=> bm!533165 (= call!533170 (validRegex!7951 (ite c!1142453 (reg!16544 r!7292) (ite c!1142454 (regTwo!32943 r!7292) (regTwo!32942 r!7292)))))))

(declare-fun b!6294121 () Bool)

(declare-fun e!3827039 () Bool)

(assert (=> b!6294121 (= e!3827039 call!533172)))

(declare-fun b!6294122 () Bool)

(declare-fun e!3827041 () Bool)

(declare-fun e!3827040 () Bool)

(assert (=> b!6294122 (= e!3827041 e!3827040)))

(declare-fun res!2595580 () Bool)

(assert (=> b!6294122 (= res!2595580 (not (nullable!6208 (reg!16544 r!7292))))))

(assert (=> b!6294122 (=> (not res!2595580) (not e!3827040))))

(declare-fun b!6294123 () Bool)

(assert (=> b!6294123 (= e!3827041 e!3827043)))

(assert (=> b!6294123 (= c!1142454 ((_ is Union!16215) r!7292))))

(declare-fun bm!533166 () Bool)

(assert (=> bm!533166 (= call!533172 call!533170)))

(declare-fun b!6294124 () Bool)

(assert (=> b!6294124 (= e!3827040 call!533170)))

(declare-fun bm!533167 () Bool)

(assert (=> bm!533167 (= call!533171 (validRegex!7951 (ite c!1142454 (regOne!32943 r!7292) (regOne!32942 r!7292))))))

(declare-fun b!6294125 () Bool)

(declare-fun res!2595579 () Bool)

(declare-fun e!3827042 () Bool)

(assert (=> b!6294125 (=> res!2595579 e!3827042)))

(assert (=> b!6294125 (= res!2595579 (not ((_ is Concat!25060) r!7292)))))

(assert (=> b!6294125 (= e!3827043 e!3827042)))

(declare-fun b!6294126 () Bool)

(assert (=> b!6294126 (= e!3827042 e!3827039)))

(declare-fun res!2595576 () Bool)

(assert (=> b!6294126 (=> (not res!2595576) (not e!3827039))))

(assert (=> b!6294126 (= res!2595576 call!533171)))

(declare-fun b!6294127 () Bool)

(assert (=> b!6294127 (= e!3827044 e!3827041)))

(assert (=> b!6294127 (= c!1142453 ((_ is Star!16215) r!7292))))

(assert (= (and d!1975349 (not res!2595578)) b!6294127))

(assert (= (and b!6294127 c!1142453) b!6294122))

(assert (= (and b!6294127 (not c!1142453)) b!6294123))

(assert (= (and b!6294122 res!2595580) b!6294124))

(assert (= (and b!6294123 c!1142454) b!6294120))

(assert (= (and b!6294123 (not c!1142454)) b!6294125))

(assert (= (and b!6294120 res!2595577) b!6294119))

(assert (= (and b!6294125 (not res!2595579)) b!6294126))

(assert (= (and b!6294126 res!2595576) b!6294121))

(assert (= (or b!6294119 b!6294121) bm!533166))

(assert (= (or b!6294120 b!6294126) bm!533167))

(assert (= (or b!6294124 bm!533166) bm!533165))

(declare-fun m!7114350 () Bool)

(assert (=> bm!533165 m!7114350))

(declare-fun m!7114352 () Bool)

(assert (=> b!6294122 m!7114352))

(declare-fun m!7114354 () Bool)

(assert (=> bm!533167 m!7114354))

(assert (=> start!625334 d!1975349))

(declare-fun b!6294132 () Bool)

(declare-fun e!3827048 () Bool)

(declare-fun tp!1752249 () Bool)

(declare-fun tp!1752250 () Bool)

(assert (=> b!6294132 (= e!3827048 (and tp!1752249 tp!1752250))))

(assert (=> b!6293474 (= tp!1752181 e!3827048)))

(assert (= (and b!6293474 ((_ is Cons!64820) (exprs!6099 (h!71270 zl!343)))) b!6294132))

(declare-fun b!6294146 () Bool)

(declare-fun e!3827051 () Bool)

(declare-fun tp!1752263 () Bool)

(declare-fun tp!1752264 () Bool)

(assert (=> b!6294146 (= e!3827051 (and tp!1752263 tp!1752264))))

(declare-fun b!6294144 () Bool)

(declare-fun tp!1752262 () Bool)

(declare-fun tp!1752265 () Bool)

(assert (=> b!6294144 (= e!3827051 (and tp!1752262 tp!1752265))))

(declare-fun b!6294145 () Bool)

(declare-fun tp!1752261 () Bool)

(assert (=> b!6294145 (= e!3827051 tp!1752261)))

(assert (=> b!6293477 (= tp!1752178 e!3827051)))

(declare-fun b!6294143 () Bool)

(assert (=> b!6294143 (= e!3827051 tp_is_empty!41683)))

(assert (= (and b!6293477 ((_ is ElementMatch!16215) (reg!16544 r!7292))) b!6294143))

(assert (= (and b!6293477 ((_ is Concat!25060) (reg!16544 r!7292))) b!6294144))

(assert (= (and b!6293477 ((_ is Star!16215) (reg!16544 r!7292))) b!6294145))

(assert (= (and b!6293477 ((_ is Union!16215) (reg!16544 r!7292))) b!6294146))

(declare-fun b!6294154 () Bool)

(declare-fun e!3827057 () Bool)

(declare-fun tp!1752270 () Bool)

(assert (=> b!6294154 (= e!3827057 tp!1752270)))

(declare-fun e!3827056 () Bool)

(declare-fun tp!1752271 () Bool)

(declare-fun b!6294153 () Bool)

(assert (=> b!6294153 (= e!3827056 (and (inv!83784 (h!71270 (t!378510 zl!343))) e!3827057 tp!1752271))))

(assert (=> b!6293476 (= tp!1752184 e!3827056)))

(assert (= b!6294153 b!6294154))

(assert (= (and b!6293476 ((_ is Cons!64822) (t!378510 zl!343))) b!6294153))

(declare-fun m!7114356 () Bool)

(assert (=> b!6294153 m!7114356))

(declare-fun condSetEmpty!42842 () Bool)

(assert (=> setNonEmpty!42836 (= condSetEmpty!42842 (= setRest!42836 ((as const (Array Context!11198 Bool)) false)))))

(declare-fun setRes!42842 () Bool)

(assert (=> setNonEmpty!42836 (= tp!1752183 setRes!42842)))

(declare-fun setIsEmpty!42842 () Bool)

(assert (=> setIsEmpty!42842 setRes!42842))

(declare-fun setElem!42842 () Context!11198)

(declare-fun setNonEmpty!42842 () Bool)

(declare-fun tp!1752276 () Bool)

(declare-fun e!3827060 () Bool)

(assert (=> setNonEmpty!42842 (= setRes!42842 (and tp!1752276 (inv!83784 setElem!42842) e!3827060))))

(declare-fun setRest!42842 () (InoxSet Context!11198))

(assert (=> setNonEmpty!42842 (= setRest!42836 ((_ map or) (store ((as const (Array Context!11198 Bool)) false) setElem!42842 true) setRest!42842))))

(declare-fun b!6294159 () Bool)

(declare-fun tp!1752277 () Bool)

(assert (=> b!6294159 (= e!3827060 tp!1752277)))

(assert (= (and setNonEmpty!42836 condSetEmpty!42842) setIsEmpty!42842))

(assert (= (and setNonEmpty!42836 (not condSetEmpty!42842)) setNonEmpty!42842))

(assert (= setNonEmpty!42842 b!6294159))

(declare-fun m!7114358 () Bool)

(assert (=> setNonEmpty!42842 m!7114358))

(declare-fun b!6294164 () Bool)

(declare-fun e!3827063 () Bool)

(declare-fun tp!1752280 () Bool)

(assert (=> b!6294164 (= e!3827063 (and tp_is_empty!41683 tp!1752280))))

(assert (=> b!6293466 (= tp!1752186 e!3827063)))

(assert (= (and b!6293466 ((_ is Cons!64821) (t!378509 s!2326))) b!6294164))

(declare-fun b!6294165 () Bool)

(declare-fun e!3827064 () Bool)

(declare-fun tp!1752281 () Bool)

(declare-fun tp!1752282 () Bool)

(assert (=> b!6294165 (= e!3827064 (and tp!1752281 tp!1752282))))

(assert (=> b!6293480 (= tp!1752179 e!3827064)))

(assert (= (and b!6293480 ((_ is Cons!64820) (exprs!6099 setElem!42836))) b!6294165))

(declare-fun b!6294169 () Bool)

(declare-fun e!3827065 () Bool)

(declare-fun tp!1752285 () Bool)

(declare-fun tp!1752286 () Bool)

(assert (=> b!6294169 (= e!3827065 (and tp!1752285 tp!1752286))))

(declare-fun b!6294167 () Bool)

(declare-fun tp!1752284 () Bool)

(declare-fun tp!1752287 () Bool)

(assert (=> b!6294167 (= e!3827065 (and tp!1752284 tp!1752287))))

(declare-fun b!6294168 () Bool)

(declare-fun tp!1752283 () Bool)

(assert (=> b!6294168 (= e!3827065 tp!1752283)))

(assert (=> b!6293464 (= tp!1752185 e!3827065)))

(declare-fun b!6294166 () Bool)

(assert (=> b!6294166 (= e!3827065 tp_is_empty!41683)))

(assert (= (and b!6293464 ((_ is ElementMatch!16215) (regOne!32943 r!7292))) b!6294166))

(assert (= (and b!6293464 ((_ is Concat!25060) (regOne!32943 r!7292))) b!6294167))

(assert (= (and b!6293464 ((_ is Star!16215) (regOne!32943 r!7292))) b!6294168))

(assert (= (and b!6293464 ((_ is Union!16215) (regOne!32943 r!7292))) b!6294169))

(declare-fun b!6294173 () Bool)

(declare-fun e!3827066 () Bool)

(declare-fun tp!1752290 () Bool)

(declare-fun tp!1752291 () Bool)

(assert (=> b!6294173 (= e!3827066 (and tp!1752290 tp!1752291))))

(declare-fun b!6294171 () Bool)

(declare-fun tp!1752289 () Bool)

(declare-fun tp!1752292 () Bool)

(assert (=> b!6294171 (= e!3827066 (and tp!1752289 tp!1752292))))

(declare-fun b!6294172 () Bool)

(declare-fun tp!1752288 () Bool)

(assert (=> b!6294172 (= e!3827066 tp!1752288)))

(assert (=> b!6293464 (= tp!1752182 e!3827066)))

(declare-fun b!6294170 () Bool)

(assert (=> b!6294170 (= e!3827066 tp_is_empty!41683)))

(assert (= (and b!6293464 ((_ is ElementMatch!16215) (regTwo!32943 r!7292))) b!6294170))

(assert (= (and b!6293464 ((_ is Concat!25060) (regTwo!32943 r!7292))) b!6294171))

(assert (= (and b!6293464 ((_ is Star!16215) (regTwo!32943 r!7292))) b!6294172))

(assert (= (and b!6293464 ((_ is Union!16215) (regTwo!32943 r!7292))) b!6294173))

(declare-fun b!6294177 () Bool)

(declare-fun e!3827067 () Bool)

(declare-fun tp!1752295 () Bool)

(declare-fun tp!1752296 () Bool)

(assert (=> b!6294177 (= e!3827067 (and tp!1752295 tp!1752296))))

(declare-fun b!6294175 () Bool)

(declare-fun tp!1752294 () Bool)

(declare-fun tp!1752297 () Bool)

(assert (=> b!6294175 (= e!3827067 (and tp!1752294 tp!1752297))))

(declare-fun b!6294176 () Bool)

(declare-fun tp!1752293 () Bool)

(assert (=> b!6294176 (= e!3827067 tp!1752293)))

(assert (=> b!6293469 (= tp!1752177 e!3827067)))

(declare-fun b!6294174 () Bool)

(assert (=> b!6294174 (= e!3827067 tp_is_empty!41683)))

(assert (= (and b!6293469 ((_ is ElementMatch!16215) (regOne!32942 r!7292))) b!6294174))

(assert (= (and b!6293469 ((_ is Concat!25060) (regOne!32942 r!7292))) b!6294175))

(assert (= (and b!6293469 ((_ is Star!16215) (regOne!32942 r!7292))) b!6294176))

(assert (= (and b!6293469 ((_ is Union!16215) (regOne!32942 r!7292))) b!6294177))

(declare-fun b!6294181 () Bool)

(declare-fun e!3827068 () Bool)

(declare-fun tp!1752300 () Bool)

(declare-fun tp!1752301 () Bool)

(assert (=> b!6294181 (= e!3827068 (and tp!1752300 tp!1752301))))

(declare-fun b!6294179 () Bool)

(declare-fun tp!1752299 () Bool)

(declare-fun tp!1752302 () Bool)

(assert (=> b!6294179 (= e!3827068 (and tp!1752299 tp!1752302))))

(declare-fun b!6294180 () Bool)

(declare-fun tp!1752298 () Bool)

(assert (=> b!6294180 (= e!3827068 tp!1752298)))

(assert (=> b!6293469 (= tp!1752180 e!3827068)))

(declare-fun b!6294178 () Bool)

(assert (=> b!6294178 (= e!3827068 tp_is_empty!41683)))

(assert (= (and b!6293469 ((_ is ElementMatch!16215) (regTwo!32942 r!7292))) b!6294178))

(assert (= (and b!6293469 ((_ is Concat!25060) (regTwo!32942 r!7292))) b!6294179))

(assert (= (and b!6293469 ((_ is Star!16215) (regTwo!32942 r!7292))) b!6294180))

(assert (= (and b!6293469 ((_ is Union!16215) (regTwo!32942 r!7292))) b!6294181))

(declare-fun b_lambda!239491 () Bool)

(assert (= b_lambda!239489 (or b!6293461 b_lambda!239491)))

(declare-fun bs!1574425 () Bool)

(declare-fun d!1975351 () Bool)

(assert (= bs!1574425 (and d!1975351 b!6293461)))

(assert (=> bs!1574425 (= (dynLambda!25657 lambda!345781 (h!71270 zl!343)) (derivationStepZipperUp!1389 (h!71270 zl!343) (h!71269 s!2326)))))

(assert (=> bs!1574425 m!7113940))

(assert (=> d!1975329 d!1975351))

(check-sat (not b!6293997) (not d!1975275) (not d!1975255) (not d!1975305) (not b!6293639) (not d!1975321) (not b!6294029) (not b!6294168) (not b!6294096) (not d!1975339) (not d!1975307) (not b!6294089) (not bm!533167) (not b!6294003) (not b!6294091) (not bm!533151) (not b!6294165) (not b!6293970) (not b!6294179) (not b!6293646) (not d!1975303) (not b!6294039) (not b_lambda!239491) (not b!6293930) (not b!6293884) (not b!6293973) tp_is_empty!41683 (not b!6294031) (not d!1975315) (not d!1975347) (not d!1975329) (not b!6293998) (not b!6293644) (not d!1975235) (not b!6294079) (not b!6294132) (not b!6293886) (not d!1975335) (not d!1975237) (not b!6294173) (not d!1975341) (not b!6294146) (not b!6293645) (not b!6293974) (not b!6294034) (not b!6294167) (not b!6294180) (not bm!533132) (not b!6294030) (not b!6293883) (not b!6294176) (not b!6294169) (not d!1975323) (not d!1975319) (not b!6294177) (not d!1975325) (not bm!533152) (not b!6294181) (not b!6294145) (not b!6294164) (not d!1975309) (not b!6294053) (not b!6294099) (not b!6294026) (not b!6294032) (not b!6294025) (not b!6294100) (not b!6293995) (not b!6294002) (not bm!533135) (not bm!533153) (not bm!533131) (not b!6294001) (not b!6294051) (not b!6294159) (not b!6294175) (not setNonEmpty!42842) (not bm!533138) (not b!6294000) (not b!6293931) (not bm!533157) (not bs!1574425) (not b!6294122) (not b!6294153) (not b!6293967) (not b!6293885) (not b!6293640) (not d!1975289) (not b!6293878) (not b!6293889) (not b!6294172) (not d!1975299) (not bm!533158) (not b!6293968) (not b!6293641) (not b!6294094) (not b!6294171) (not d!1975291) (not d!1975313) (not bm!533165) (not d!1975257) (not d!1975343) (not b!6294154) (not b!6293963) (not b!6294144))
(check-sat)
(get-model)

(declare-fun b!6294686 () Bool)

(declare-fun res!2595759 () Bool)

(declare-fun e!3827351 () Bool)

(assert (=> b!6294686 (=> (not res!2595759) (not e!3827351))))

(declare-fun call!533253 () Bool)

(assert (=> b!6294686 (= res!2595759 (not call!533253))))

(declare-fun b!6294687 () Bool)

(declare-fun e!3827355 () Bool)

(declare-fun e!3827352 () Bool)

(assert (=> b!6294687 (= e!3827355 e!3827352)))

(declare-fun res!2595761 () Bool)

(assert (=> b!6294687 (=> res!2595761 e!3827352)))

(assert (=> b!6294687 (= res!2595761 call!533253)))

(declare-fun b!6294688 () Bool)

(declare-fun e!3827350 () Bool)

(assert (=> b!6294688 (= e!3827350 (matchR!8398 (derivativeStep!4924 (regOne!32942 r!7292) (head!12930 (_1!36497 (get!22411 lt!2357577)))) (tail!12015 (_1!36497 (get!22411 lt!2357577)))))))

(declare-fun b!6294689 () Bool)

(declare-fun res!2595754 () Bool)

(declare-fun e!3827353 () Bool)

(assert (=> b!6294689 (=> res!2595754 e!3827353)))

(assert (=> b!6294689 (= res!2595754 e!3827351)))

(declare-fun res!2595760 () Bool)

(assert (=> b!6294689 (=> (not res!2595760) (not e!3827351))))

(declare-fun lt!2357651 () Bool)

(assert (=> b!6294689 (= res!2595760 lt!2357651)))

(declare-fun b!6294690 () Bool)

(declare-fun e!3827354 () Bool)

(assert (=> b!6294690 (= e!3827354 (not lt!2357651))))

(declare-fun b!6294691 () Bool)

(declare-fun res!2595758 () Bool)

(assert (=> b!6294691 (=> res!2595758 e!3827353)))

(assert (=> b!6294691 (= res!2595758 (not ((_ is ElementMatch!16215) (regOne!32942 r!7292))))))

(assert (=> b!6294691 (= e!3827354 e!3827353)))

(declare-fun b!6294692 () Bool)

(assert (=> b!6294692 (= e!3827351 (= (head!12930 (_1!36497 (get!22411 lt!2357577))) (c!1142274 (regOne!32942 r!7292))))))

(declare-fun bm!533248 () Bool)

(assert (=> bm!533248 (= call!533253 (isEmpty!36882 (_1!36497 (get!22411 lt!2357577))))))

(declare-fun b!6294693 () Bool)

(assert (=> b!6294693 (= e!3827352 (not (= (head!12930 (_1!36497 (get!22411 lt!2357577))) (c!1142274 (regOne!32942 r!7292)))))))

(declare-fun b!6294694 () Bool)

(assert (=> b!6294694 (= e!3827353 e!3827355)))

(declare-fun res!2595757 () Bool)

(assert (=> b!6294694 (=> (not res!2595757) (not e!3827355))))

(assert (=> b!6294694 (= res!2595757 (not lt!2357651))))

(declare-fun b!6294695 () Bool)

(assert (=> b!6294695 (= e!3827350 (nullable!6208 (regOne!32942 r!7292)))))

(declare-fun b!6294696 () Bool)

(declare-fun e!3827356 () Bool)

(assert (=> b!6294696 (= e!3827356 (= lt!2357651 call!533253))))

(declare-fun b!6294697 () Bool)

(assert (=> b!6294697 (= e!3827356 e!3827354)))

(declare-fun c!1142566 () Bool)

(assert (=> b!6294697 (= c!1142566 ((_ is EmptyLang!16215) (regOne!32942 r!7292)))))

(declare-fun d!1975551 () Bool)

(assert (=> d!1975551 e!3827356))

(declare-fun c!1142567 () Bool)

(assert (=> d!1975551 (= c!1142567 ((_ is EmptyExpr!16215) (regOne!32942 r!7292)))))

(assert (=> d!1975551 (= lt!2357651 e!3827350)))

(declare-fun c!1142568 () Bool)

(assert (=> d!1975551 (= c!1142568 (isEmpty!36882 (_1!36497 (get!22411 lt!2357577))))))

(assert (=> d!1975551 (validRegex!7951 (regOne!32942 r!7292))))

(assert (=> d!1975551 (= (matchR!8398 (regOne!32942 r!7292) (_1!36497 (get!22411 lt!2357577))) lt!2357651)))

(declare-fun b!6294698 () Bool)

(declare-fun res!2595756 () Bool)

(assert (=> b!6294698 (=> (not res!2595756) (not e!3827351))))

(assert (=> b!6294698 (= res!2595756 (isEmpty!36882 (tail!12015 (_1!36497 (get!22411 lt!2357577)))))))

(declare-fun b!6294699 () Bool)

(declare-fun res!2595755 () Bool)

(assert (=> b!6294699 (=> res!2595755 e!3827352)))

(assert (=> b!6294699 (= res!2595755 (not (isEmpty!36882 (tail!12015 (_1!36497 (get!22411 lt!2357577))))))))

(assert (= (and d!1975551 c!1142568) b!6294695))

(assert (= (and d!1975551 (not c!1142568)) b!6294688))

(assert (= (and d!1975551 c!1142567) b!6294696))

(assert (= (and d!1975551 (not c!1142567)) b!6294697))

(assert (= (and b!6294697 c!1142566) b!6294690))

(assert (= (and b!6294697 (not c!1142566)) b!6294691))

(assert (= (and b!6294691 (not res!2595758)) b!6294689))

(assert (= (and b!6294689 res!2595760) b!6294686))

(assert (= (and b!6294686 res!2595759) b!6294698))

(assert (= (and b!6294698 res!2595756) b!6294692))

(assert (= (and b!6294689 (not res!2595754)) b!6294694))

(assert (= (and b!6294694 res!2595757) b!6294687))

(assert (= (and b!6294687 (not res!2595761)) b!6294699))

(assert (= (and b!6294699 (not res!2595755)) b!6294693))

(assert (= (or b!6294696 b!6294686 b!6294687) bm!533248))

(declare-fun m!7114778 () Bool)

(assert (=> b!6294695 m!7114778))

(declare-fun m!7114780 () Bool)

(assert (=> b!6294688 m!7114780))

(assert (=> b!6294688 m!7114780))

(declare-fun m!7114782 () Bool)

(assert (=> b!6294688 m!7114782))

(declare-fun m!7114784 () Bool)

(assert (=> b!6294688 m!7114784))

(assert (=> b!6294688 m!7114782))

(assert (=> b!6294688 m!7114784))

(declare-fun m!7114786 () Bool)

(assert (=> b!6294688 m!7114786))

(assert (=> b!6294693 m!7114780))

(assert (=> b!6294692 m!7114780))

(assert (=> b!6294699 m!7114784))

(assert (=> b!6294699 m!7114784))

(declare-fun m!7114788 () Bool)

(assert (=> b!6294699 m!7114788))

(declare-fun m!7114790 () Bool)

(assert (=> d!1975551 m!7114790))

(assert (=> d!1975551 m!7114080))

(assert (=> b!6294698 m!7114784))

(assert (=> b!6294698 m!7114784))

(assert (=> b!6294698 m!7114788))

(assert (=> bm!533248 m!7114790))

(assert (=> b!6293645 d!1975551))

(declare-fun d!1975553 () Bool)

(assert (=> d!1975553 (= (get!22411 lt!2357577) (v!52260 lt!2357577))))

(assert (=> b!6293645 d!1975553))

(declare-fun d!1975555 () Bool)

(assert (=> d!1975555 (= (isEmptyLang!1628 lt!2357619) ((_ is EmptyLang!16215) lt!2357619))))

(assert (=> b!6294031 d!1975555))

(declare-fun b!6294700 () Bool)

(declare-fun e!3827362 () (InoxSet Context!11198))

(declare-fun e!3827359 () (InoxSet Context!11198))

(assert (=> b!6294700 (= e!3827362 e!3827359)))

(declare-fun c!1142573 () Bool)

(assert (=> b!6294700 (= c!1142573 ((_ is Union!16215) (h!71268 (exprs!6099 (h!71270 zl!343)))))))

(declare-fun b!6294701 () Bool)

(declare-fun e!3827361 () Bool)

(assert (=> b!6294701 (= e!3827361 (nullable!6208 (regOne!32942 (h!71268 (exprs!6099 (h!71270 zl!343))))))))

(declare-fun c!1142570 () Bool)

(declare-fun c!1142569 () Bool)

(declare-fun call!533256 () (InoxSet Context!11198))

(declare-fun bm!533249 () Bool)

(declare-fun call!533257 () List!64944)

(assert (=> bm!533249 (= call!533256 (derivationStepZipperDown!1463 (ite c!1142573 (regTwo!32943 (h!71268 (exprs!6099 (h!71270 zl!343)))) (ite c!1142570 (regTwo!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))) (ite c!1142569 (regOne!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))) (reg!16544 (h!71268 (exprs!6099 (h!71270 zl!343))))))) (ite (or c!1142573 c!1142570) (Context!11199 (t!378508 (exprs!6099 (h!71270 zl!343)))) (Context!11199 call!533257)) (h!71269 s!2326)))))

(declare-fun b!6294702 () Bool)

(assert (=> b!6294702 (= e!3827362 (store ((as const (Array Context!11198 Bool)) false) (Context!11199 (t!378508 (exprs!6099 (h!71270 zl!343)))) true))))

(declare-fun bm!533250 () Bool)

(declare-fun call!533255 () List!64944)

(declare-fun call!533258 () (InoxSet Context!11198))

(assert (=> bm!533250 (= call!533258 (derivationStepZipperDown!1463 (ite c!1142573 (regOne!32943 (h!71268 (exprs!6099 (h!71270 zl!343)))) (regOne!32942 (h!71268 (exprs!6099 (h!71270 zl!343))))) (ite c!1142573 (Context!11199 (t!378508 (exprs!6099 (h!71270 zl!343)))) (Context!11199 call!533255)) (h!71269 s!2326)))))

(declare-fun b!6294703 () Bool)

(assert (=> b!6294703 (= c!1142570 e!3827361)))

(declare-fun res!2595762 () Bool)

(assert (=> b!6294703 (=> (not res!2595762) (not e!3827361))))

(assert (=> b!6294703 (= res!2595762 ((_ is Concat!25060) (h!71268 (exprs!6099 (h!71270 zl!343)))))))

(declare-fun e!3827360 () (InoxSet Context!11198))

(assert (=> b!6294703 (= e!3827359 e!3827360)))

(declare-fun b!6294704 () Bool)

(declare-fun call!533259 () (InoxSet Context!11198))

(assert (=> b!6294704 (= e!3827360 ((_ map or) call!533258 call!533259))))

(declare-fun b!6294705 () Bool)

(declare-fun e!3827358 () (InoxSet Context!11198))

(assert (=> b!6294705 (= e!3827360 e!3827358)))

(assert (=> b!6294705 (= c!1142569 ((_ is Concat!25060) (h!71268 (exprs!6099 (h!71270 zl!343)))))))

(declare-fun b!6294706 () Bool)

(declare-fun e!3827357 () (InoxSet Context!11198))

(assert (=> b!6294706 (= e!3827357 ((as const (Array Context!11198 Bool)) false))))

(declare-fun b!6294707 () Bool)

(declare-fun call!533254 () (InoxSet Context!11198))

(assert (=> b!6294707 (= e!3827358 call!533254)))

(declare-fun bm!533251 () Bool)

(assert (=> bm!533251 (= call!533255 ($colon$colon!2080 (exprs!6099 (Context!11199 (t!378508 (exprs!6099 (h!71270 zl!343))))) (ite (or c!1142570 c!1142569) (regTwo!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))) (h!71268 (exprs!6099 (h!71270 zl!343))))))))

(declare-fun d!1975557 () Bool)

(declare-fun c!1142571 () Bool)

(assert (=> d!1975557 (= c!1142571 (and ((_ is ElementMatch!16215) (h!71268 (exprs!6099 (h!71270 zl!343)))) (= (c!1142274 (h!71268 (exprs!6099 (h!71270 zl!343)))) (h!71269 s!2326))))))

(assert (=> d!1975557 (= (derivationStepZipperDown!1463 (h!71268 (exprs!6099 (h!71270 zl!343))) (Context!11199 (t!378508 (exprs!6099 (h!71270 zl!343)))) (h!71269 s!2326)) e!3827362)))

(declare-fun bm!533252 () Bool)

(assert (=> bm!533252 (= call!533259 call!533256)))

(declare-fun bm!533253 () Bool)

(assert (=> bm!533253 (= call!533254 call!533259)))

(declare-fun b!6294708 () Bool)

(declare-fun c!1142572 () Bool)

(assert (=> b!6294708 (= c!1142572 ((_ is Star!16215) (h!71268 (exprs!6099 (h!71270 zl!343)))))))

(assert (=> b!6294708 (= e!3827358 e!3827357)))

(declare-fun b!6294709 () Bool)

(assert (=> b!6294709 (= e!3827359 ((_ map or) call!533258 call!533256))))

(declare-fun b!6294710 () Bool)

(assert (=> b!6294710 (= e!3827357 call!533254)))

(declare-fun bm!533254 () Bool)

(assert (=> bm!533254 (= call!533257 call!533255)))

(assert (= (and d!1975557 c!1142571) b!6294702))

(assert (= (and d!1975557 (not c!1142571)) b!6294700))

(assert (= (and b!6294700 c!1142573) b!6294709))

(assert (= (and b!6294700 (not c!1142573)) b!6294703))

(assert (= (and b!6294703 res!2595762) b!6294701))

(assert (= (and b!6294703 c!1142570) b!6294704))

(assert (= (and b!6294703 (not c!1142570)) b!6294705))

(assert (= (and b!6294705 c!1142569) b!6294707))

(assert (= (and b!6294705 (not c!1142569)) b!6294708))

(assert (= (and b!6294708 c!1142572) b!6294710))

(assert (= (and b!6294708 (not c!1142572)) b!6294706))

(assert (= (or b!6294707 b!6294710) bm!533254))

(assert (= (or b!6294707 b!6294710) bm!533253))

(assert (= (or b!6294704 bm!533254) bm!533251))

(assert (= (or b!6294704 bm!533253) bm!533252))

(assert (= (or b!6294709 bm!533252) bm!533249))

(assert (= (or b!6294709 b!6294704) bm!533250))

(declare-fun m!7114792 () Bool)

(assert (=> bm!533249 m!7114792))

(declare-fun m!7114794 () Bool)

(assert (=> b!6294702 m!7114794))

(declare-fun m!7114796 () Bool)

(assert (=> bm!533250 m!7114796))

(assert (=> b!6294701 m!7114322))

(declare-fun m!7114798 () Bool)

(assert (=> bm!533251 m!7114798))

(assert (=> bm!533157 d!1975557))

(assert (=> d!1975257 d!1975237))

(declare-fun b!6294711 () Bool)

(declare-fun e!3827369 () Bool)

(declare-fun call!533262 () Bool)

(assert (=> b!6294711 (= e!3827369 call!533262)))

(declare-fun b!6294712 () Bool)

(declare-fun res!2595764 () Bool)

(assert (=> b!6294712 (=> (not res!2595764) (not e!3827369))))

(declare-fun call!533261 () Bool)

(assert (=> b!6294712 (= res!2595764 call!533261)))

(declare-fun e!3827367 () Bool)

(assert (=> b!6294712 (= e!3827367 e!3827369)))

(declare-fun d!1975559 () Bool)

(declare-fun res!2595765 () Bool)

(declare-fun e!3827368 () Bool)

(assert (=> d!1975559 (=> res!2595765 e!3827368)))

(assert (=> d!1975559 (= res!2595765 ((_ is ElementMatch!16215) (regOne!32942 r!7292)))))

(assert (=> d!1975559 (= (validRegex!7951 (regOne!32942 r!7292)) e!3827368)))

(declare-fun c!1142575 () Bool)

(declare-fun bm!533255 () Bool)

(declare-fun c!1142574 () Bool)

(declare-fun call!533260 () Bool)

(assert (=> bm!533255 (= call!533260 (validRegex!7951 (ite c!1142574 (reg!16544 (regOne!32942 r!7292)) (ite c!1142575 (regTwo!32943 (regOne!32942 r!7292)) (regTwo!32942 (regOne!32942 r!7292))))))))

(declare-fun b!6294713 () Bool)

(declare-fun e!3827363 () Bool)

(assert (=> b!6294713 (= e!3827363 call!533262)))

(declare-fun b!6294714 () Bool)

(declare-fun e!3827365 () Bool)

(declare-fun e!3827364 () Bool)

(assert (=> b!6294714 (= e!3827365 e!3827364)))

(declare-fun res!2595767 () Bool)

(assert (=> b!6294714 (= res!2595767 (not (nullable!6208 (reg!16544 (regOne!32942 r!7292)))))))

(assert (=> b!6294714 (=> (not res!2595767) (not e!3827364))))

(declare-fun b!6294715 () Bool)

(assert (=> b!6294715 (= e!3827365 e!3827367)))

(assert (=> b!6294715 (= c!1142575 ((_ is Union!16215) (regOne!32942 r!7292)))))

(declare-fun bm!533256 () Bool)

(assert (=> bm!533256 (= call!533262 call!533260)))

(declare-fun b!6294716 () Bool)

(assert (=> b!6294716 (= e!3827364 call!533260)))

(declare-fun bm!533257 () Bool)

(assert (=> bm!533257 (= call!533261 (validRegex!7951 (ite c!1142575 (regOne!32943 (regOne!32942 r!7292)) (regOne!32942 (regOne!32942 r!7292)))))))

(declare-fun b!6294717 () Bool)

(declare-fun res!2595766 () Bool)

(declare-fun e!3827366 () Bool)

(assert (=> b!6294717 (=> res!2595766 e!3827366)))

(assert (=> b!6294717 (= res!2595766 (not ((_ is Concat!25060) (regOne!32942 r!7292))))))

(assert (=> b!6294717 (= e!3827367 e!3827366)))

(declare-fun b!6294718 () Bool)

(assert (=> b!6294718 (= e!3827366 e!3827363)))

(declare-fun res!2595763 () Bool)

(assert (=> b!6294718 (=> (not res!2595763) (not e!3827363))))

(assert (=> b!6294718 (= res!2595763 call!533261)))

(declare-fun b!6294719 () Bool)

(assert (=> b!6294719 (= e!3827368 e!3827365)))

(assert (=> b!6294719 (= c!1142574 ((_ is Star!16215) (regOne!32942 r!7292)))))

(assert (= (and d!1975559 (not res!2595765)) b!6294719))

(assert (= (and b!6294719 c!1142574) b!6294714))

(assert (= (and b!6294719 (not c!1142574)) b!6294715))

(assert (= (and b!6294714 res!2595767) b!6294716))

(assert (= (and b!6294715 c!1142575) b!6294712))

(assert (= (and b!6294715 (not c!1142575)) b!6294717))

(assert (= (and b!6294712 res!2595764) b!6294711))

(assert (= (and b!6294717 (not res!2595766)) b!6294718))

(assert (= (and b!6294718 res!2595763) b!6294713))

(assert (= (or b!6294711 b!6294713) bm!533256))

(assert (= (or b!6294712 b!6294718) bm!533257))

(assert (= (or b!6294716 bm!533256) bm!533255))

(declare-fun m!7114800 () Bool)

(assert (=> bm!533255 m!7114800))

(declare-fun m!7114802 () Bool)

(assert (=> b!6294714 m!7114802))

(declare-fun m!7114804 () Bool)

(assert (=> bm!533257 m!7114804))

(assert (=> d!1975257 d!1975559))

(assert (=> d!1975257 d!1975289))

(declare-fun d!1975561 () Bool)

(assert (=> d!1975561 (= (Exists!3285 lambda!345810) (choose!46760 lambda!345810))))

(declare-fun bs!1574549 () Bool)

(assert (= bs!1574549 d!1975561))

(declare-fun m!7114806 () Bool)

(assert (=> bs!1574549 m!7114806))

(assert (=> d!1975257 d!1975561))

(declare-fun bs!1574550 () Bool)

(declare-fun d!1975563 () Bool)

(assert (= bs!1574550 (and d!1975563 d!1975257)))

(declare-fun lambda!345870 () Int)

(assert (=> bs!1574550 (= lambda!345870 lambda!345810)))

(declare-fun bs!1574551 () Bool)

(assert (= bs!1574551 (and d!1975563 d!1975275)))

(assert (=> bs!1574551 (= lambda!345870 lambda!345818)))

(declare-fun bs!1574552 () Bool)

(assert (= bs!1574552 (and d!1975563 b!6293932)))

(assert (=> bs!1574552 (not (= lambda!345870 lambda!345828))))

(assert (=> bs!1574551 (not (= lambda!345870 lambda!345819))))

(declare-fun bs!1574553 () Bool)

(assert (= bs!1574553 (and d!1975563 b!6293467)))

(assert (=> bs!1574553 (not (= lambda!345870 lambda!345780))))

(assert (=> bs!1574553 (= lambda!345870 lambda!345779)))

(declare-fun bs!1574554 () Bool)

(assert (= bs!1574554 (and d!1975563 b!6293924)))

(assert (=> bs!1574554 (not (= lambda!345870 lambda!345829))))

(assert (=> d!1975563 true))

(assert (=> d!1975563 true))

(assert (=> d!1975563 true))

(assert (=> d!1975563 (= (isDefined!12809 (findConcatSeparation!2520 (regOne!32942 r!7292) (regTwo!32942 r!7292) Nil!64821 s!2326 s!2326)) (Exists!3285 lambda!345870))))

(assert (=> d!1975563 true))

(declare-fun _$89!2497 () Unit!158191)

(assert (=> d!1975563 (= (choose!46761 (regOne!32942 r!7292) (regTwo!32942 r!7292) s!2326) _$89!2497)))

(declare-fun bs!1574555 () Bool)

(assert (= bs!1574555 d!1975563))

(assert (=> bs!1574555 m!7113958))

(assert (=> bs!1574555 m!7113958))

(assert (=> bs!1574555 m!7113960))

(declare-fun m!7114808 () Bool)

(assert (=> bs!1574555 m!7114808))

(assert (=> d!1975257 d!1975563))

(declare-fun d!1975565 () Bool)

(declare-fun c!1142578 () Bool)

(assert (=> d!1975565 (= c!1142578 ((_ is Nil!64822) lt!2357607))))

(declare-fun e!3827374 () (InoxSet Context!11198))

(assert (=> d!1975565 (= (content!12194 lt!2357607) e!3827374)))

(declare-fun b!6294728 () Bool)

(assert (=> b!6294728 (= e!3827374 ((as const (Array Context!11198 Bool)) false))))

(declare-fun b!6294729 () Bool)

(assert (=> b!6294729 (= e!3827374 ((_ map or) (store ((as const (Array Context!11198 Bool)) false) (h!71270 lt!2357607) true) (content!12194 (t!378510 lt!2357607))))))

(assert (= (and d!1975565 c!1142578) b!6294728))

(assert (= (and d!1975565 (not c!1142578)) b!6294729))

(declare-fun m!7114810 () Bool)

(assert (=> b!6294729 m!7114810))

(declare-fun m!7114812 () Bool)

(assert (=> b!6294729 m!7114812))

(assert (=> b!6293889 d!1975565))

(assert (=> bs!1574425 d!1975333))

(declare-fun d!1975567 () Bool)

(assert (=> d!1975567 (= (isEmpty!36882 s!2326) ((_ is Nil!64821) s!2326))))

(assert (=> bm!533135 d!1975567))

(declare-fun bs!1574556 () Bool)

(declare-fun b!6294740 () Bool)

(assert (= bs!1574556 (and b!6294740 d!1975257)))

(declare-fun lambda!345871 () Int)

(assert (=> bs!1574556 (not (= lambda!345871 lambda!345810))))

(declare-fun bs!1574557 () Bool)

(assert (= bs!1574557 (and b!6294740 d!1975275)))

(assert (=> bs!1574557 (not (= lambda!345871 lambda!345818))))

(declare-fun bs!1574558 () Bool)

(assert (= bs!1574558 (and b!6294740 b!6293932)))

(assert (=> bs!1574558 (= (and (= (reg!16544 (regTwo!32943 r!7292)) (reg!16544 r!7292)) (= (regTwo!32943 r!7292) r!7292)) (= lambda!345871 lambda!345828))))

(assert (=> bs!1574557 (not (= lambda!345871 lambda!345819))))

(declare-fun bs!1574559 () Bool)

(assert (= bs!1574559 (and b!6294740 b!6293467)))

(assert (=> bs!1574559 (not (= lambda!345871 lambda!345780))))

(declare-fun bs!1574560 () Bool)

(assert (= bs!1574560 (and b!6294740 d!1975563)))

(assert (=> bs!1574560 (not (= lambda!345871 lambda!345870))))

(assert (=> bs!1574559 (not (= lambda!345871 lambda!345779))))

(declare-fun bs!1574561 () Bool)

(assert (= bs!1574561 (and b!6294740 b!6293924)))

(assert (=> bs!1574561 (not (= lambda!345871 lambda!345829))))

(assert (=> b!6294740 true))

(assert (=> b!6294740 true))

(declare-fun bs!1574562 () Bool)

(declare-fun b!6294732 () Bool)

(assert (= bs!1574562 (and b!6294732 b!6294740)))

(declare-fun lambda!345872 () Int)

(assert (=> bs!1574562 (not (= lambda!345872 lambda!345871))))

(declare-fun bs!1574563 () Bool)

(assert (= bs!1574563 (and b!6294732 d!1975257)))

(assert (=> bs!1574563 (not (= lambda!345872 lambda!345810))))

(declare-fun bs!1574564 () Bool)

(assert (= bs!1574564 (and b!6294732 d!1975275)))

(assert (=> bs!1574564 (not (= lambda!345872 lambda!345818))))

(declare-fun bs!1574565 () Bool)

(assert (= bs!1574565 (and b!6294732 b!6293932)))

(assert (=> bs!1574565 (not (= lambda!345872 lambda!345828))))

(assert (=> bs!1574564 (= (and (= (regOne!32942 (regTwo!32943 r!7292)) (regOne!32942 r!7292)) (= (regTwo!32942 (regTwo!32943 r!7292)) (regTwo!32942 r!7292))) (= lambda!345872 lambda!345819))))

(declare-fun bs!1574566 () Bool)

(assert (= bs!1574566 (and b!6294732 b!6293467)))

(assert (=> bs!1574566 (= (and (= (regOne!32942 (regTwo!32943 r!7292)) (regOne!32942 r!7292)) (= (regTwo!32942 (regTwo!32943 r!7292)) (regTwo!32942 r!7292))) (= lambda!345872 lambda!345780))))

(declare-fun bs!1574567 () Bool)

(assert (= bs!1574567 (and b!6294732 d!1975563)))

(assert (=> bs!1574567 (not (= lambda!345872 lambda!345870))))

(assert (=> bs!1574566 (not (= lambda!345872 lambda!345779))))

(declare-fun bs!1574568 () Bool)

(assert (= bs!1574568 (and b!6294732 b!6293924)))

(assert (=> bs!1574568 (= (and (= (regOne!32942 (regTwo!32943 r!7292)) (regOne!32942 r!7292)) (= (regTwo!32942 (regTwo!32943 r!7292)) (regTwo!32942 r!7292))) (= lambda!345872 lambda!345829))))

(assert (=> b!6294732 true))

(assert (=> b!6294732 true))

(declare-fun b!6294730 () Bool)

(declare-fun res!2595774 () Bool)

(declare-fun e!3827381 () Bool)

(assert (=> b!6294730 (=> res!2595774 e!3827381)))

(declare-fun call!533263 () Bool)

(assert (=> b!6294730 (= res!2595774 call!533263)))

(declare-fun e!3827375 () Bool)

(assert (=> b!6294730 (= e!3827375 e!3827381)))

(declare-fun b!6294731 () Bool)

(declare-fun e!3827380 () Bool)

(assert (=> b!6294731 (= e!3827380 call!533263)))

(declare-fun d!1975569 () Bool)

(declare-fun c!1142580 () Bool)

(assert (=> d!1975569 (= c!1142580 ((_ is EmptyExpr!16215) (regTwo!32943 r!7292)))))

(assert (=> d!1975569 (= (matchRSpec!3316 (regTwo!32943 r!7292) s!2326) e!3827380)))

(declare-fun bm!533258 () Bool)

(assert (=> bm!533258 (= call!533263 (isEmpty!36882 s!2326))))

(declare-fun call!533264 () Bool)

(assert (=> b!6294732 (= e!3827375 call!533264)))

(declare-fun b!6294733 () Bool)

(declare-fun e!3827376 () Bool)

(assert (=> b!6294733 (= e!3827376 (= s!2326 (Cons!64821 (c!1142274 (regTwo!32943 r!7292)) Nil!64821)))))

(declare-fun b!6294734 () Bool)

(declare-fun e!3827378 () Bool)

(assert (=> b!6294734 (= e!3827380 e!3827378)))

(declare-fun res!2595773 () Bool)

(assert (=> b!6294734 (= res!2595773 (not ((_ is EmptyLang!16215) (regTwo!32943 r!7292))))))

(assert (=> b!6294734 (=> (not res!2595773) (not e!3827378))))

(declare-fun b!6294735 () Bool)

(declare-fun e!3827379 () Bool)

(assert (=> b!6294735 (= e!3827379 e!3827375)))

(declare-fun c!1142581 () Bool)

(assert (=> b!6294735 (= c!1142581 ((_ is Star!16215) (regTwo!32943 r!7292)))))

(declare-fun bm!533259 () Bool)

(assert (=> bm!533259 (= call!533264 (Exists!3285 (ite c!1142581 lambda!345871 lambda!345872)))))

(declare-fun b!6294736 () Bool)

(declare-fun c!1142579 () Bool)

(assert (=> b!6294736 (= c!1142579 ((_ is ElementMatch!16215) (regTwo!32943 r!7292)))))

(assert (=> b!6294736 (= e!3827378 e!3827376)))

(declare-fun b!6294737 () Bool)

(declare-fun c!1142582 () Bool)

(assert (=> b!6294737 (= c!1142582 ((_ is Union!16215) (regTwo!32943 r!7292)))))

(assert (=> b!6294737 (= e!3827376 e!3827379)))

(declare-fun b!6294738 () Bool)

(declare-fun e!3827377 () Bool)

(assert (=> b!6294738 (= e!3827379 e!3827377)))

(declare-fun res!2595772 () Bool)

(assert (=> b!6294738 (= res!2595772 (matchRSpec!3316 (regOne!32943 (regTwo!32943 r!7292)) s!2326))))

(assert (=> b!6294738 (=> res!2595772 e!3827377)))

(declare-fun b!6294739 () Bool)

(assert (=> b!6294739 (= e!3827377 (matchRSpec!3316 (regTwo!32943 (regTwo!32943 r!7292)) s!2326))))

(assert (=> b!6294740 (= e!3827381 call!533264)))

(assert (= (and d!1975569 c!1142580) b!6294731))

(assert (= (and d!1975569 (not c!1142580)) b!6294734))

(assert (= (and b!6294734 res!2595773) b!6294736))

(assert (= (and b!6294736 c!1142579) b!6294733))

(assert (= (and b!6294736 (not c!1142579)) b!6294737))

(assert (= (and b!6294737 c!1142582) b!6294738))

(assert (= (and b!6294737 (not c!1142582)) b!6294735))

(assert (= (and b!6294738 (not res!2595772)) b!6294739))

(assert (= (and b!6294735 c!1142581) b!6294730))

(assert (= (and b!6294735 (not c!1142581)) b!6294732))

(assert (= (and b!6294730 (not res!2595774)) b!6294740))

(assert (= (or b!6294740 b!6294732) bm!533259))

(assert (= (or b!6294731 b!6294730) bm!533258))

(assert (=> bm!533258 m!7114238))

(declare-fun m!7114814 () Bool)

(assert (=> bm!533259 m!7114814))

(declare-fun m!7114816 () Bool)

(assert (=> b!6294738 m!7114816))

(declare-fun m!7114818 () Bool)

(assert (=> b!6294739 m!7114818))

(assert (=> b!6293931 d!1975569))

(declare-fun d!1975571 () Bool)

(declare-fun lambda!345875 () Int)

(declare-fun exists!2531 ((InoxSet Context!11198) Int) Bool)

(assert (=> d!1975571 (= (nullableZipper!1985 lt!2357535) (exists!2531 lt!2357535 lambda!345875))))

(declare-fun bs!1574569 () Bool)

(assert (= bs!1574569 d!1975571))

(declare-fun m!7114820 () Bool)

(assert (=> bs!1574569 m!7114820))

(assert (=> b!6294099 d!1975571))

(assert (=> d!1975315 d!1975313))

(assert (=> d!1975315 d!1975311))

(declare-fun d!1975573 () Bool)

(assert (=> d!1975573 (= (matchR!8398 r!7292 s!2326) (matchRSpec!3316 r!7292 s!2326))))

(assert (=> d!1975573 true))

(declare-fun _$88!4947 () Unit!158191)

(assert (=> d!1975573 (= (choose!46765 r!7292 s!2326) _$88!4947)))

(declare-fun bs!1574570 () Bool)

(assert (= bs!1574570 d!1975573))

(assert (=> bs!1574570 m!7113926))

(assert (=> bs!1574570 m!7113924))

(assert (=> d!1975315 d!1975573))

(assert (=> d!1975315 d!1975349))

(declare-fun b!6294741 () Bool)

(declare-fun e!3827383 () (InoxSet Context!11198))

(declare-fun call!533265 () (InoxSet Context!11198))

(assert (=> b!6294741 (= e!3827383 ((_ map or) call!533265 (derivationStepZipperUp!1389 (Context!11199 (t!378508 (exprs!6099 (Context!11199 (t!378508 (exprs!6099 lt!2357543)))))) (h!71269 s!2326))))))

(declare-fun b!6294742 () Bool)

(declare-fun e!3827382 () (InoxSet Context!11198))

(assert (=> b!6294742 (= e!3827383 e!3827382)))

(declare-fun c!1142585 () Bool)

(assert (=> b!6294742 (= c!1142585 ((_ is Cons!64820) (exprs!6099 (Context!11199 (t!378508 (exprs!6099 lt!2357543))))))))

(declare-fun d!1975575 () Bool)

(declare-fun c!1142586 () Bool)

(declare-fun e!3827384 () Bool)

(assert (=> d!1975575 (= c!1142586 e!3827384)))

(declare-fun res!2595775 () Bool)

(assert (=> d!1975575 (=> (not res!2595775) (not e!3827384))))

(assert (=> d!1975575 (= res!2595775 ((_ is Cons!64820) (exprs!6099 (Context!11199 (t!378508 (exprs!6099 lt!2357543))))))))

(assert (=> d!1975575 (= (derivationStepZipperUp!1389 (Context!11199 (t!378508 (exprs!6099 lt!2357543))) (h!71269 s!2326)) e!3827383)))

(declare-fun b!6294743 () Bool)

(assert (=> b!6294743 (= e!3827384 (nullable!6208 (h!71268 (exprs!6099 (Context!11199 (t!378508 (exprs!6099 lt!2357543)))))))))

(declare-fun b!6294744 () Bool)

(assert (=> b!6294744 (= e!3827382 ((as const (Array Context!11198 Bool)) false))))

(declare-fun b!6294745 () Bool)

(assert (=> b!6294745 (= e!3827382 call!533265)))

(declare-fun bm!533260 () Bool)

(assert (=> bm!533260 (= call!533265 (derivationStepZipperDown!1463 (h!71268 (exprs!6099 (Context!11199 (t!378508 (exprs!6099 lt!2357543))))) (Context!11199 (t!378508 (exprs!6099 (Context!11199 (t!378508 (exprs!6099 lt!2357543)))))) (h!71269 s!2326)))))

(assert (= (and d!1975575 res!2595775) b!6294743))

(assert (= (and d!1975575 c!1142586) b!6294741))

(assert (= (and d!1975575 (not c!1142586)) b!6294742))

(assert (= (and b!6294742 c!1142585) b!6294745))

(assert (= (and b!6294742 (not c!1142585)) b!6294744))

(assert (= (or b!6294741 b!6294745) bm!533260))

(declare-fun m!7114822 () Bool)

(assert (=> b!6294741 m!7114822))

(declare-fun m!7114824 () Bool)

(assert (=> b!6294743 m!7114824))

(declare-fun m!7114826 () Bool)

(assert (=> bm!533260 m!7114826))

(assert (=> b!6294094 d!1975575))

(assert (=> b!6293878 d!1975341))

(declare-fun bs!1574571 () Bool)

(declare-fun d!1975577 () Bool)

(assert (= bs!1574571 (and d!1975577 d!1975571)))

(declare-fun lambda!345876 () Int)

(assert (=> bs!1574571 (= lambda!345876 lambda!345875)))

(assert (=> d!1975577 (= (nullableZipper!1985 lt!2357538) (exists!2531 lt!2357538 lambda!345876))))

(declare-fun bs!1574572 () Bool)

(assert (= bs!1574572 d!1975577))

(declare-fun m!7114828 () Bool)

(assert (=> bs!1574572 m!7114828))

(assert (=> b!6293883 d!1975577))

(declare-fun d!1975579 () Bool)

(assert (=> d!1975579 (= (Exists!3285 (ite c!1142385 lambda!345828 lambda!345829)) (choose!46760 (ite c!1142385 lambda!345828 lambda!345829)))))

(declare-fun bs!1574573 () Bool)

(assert (= bs!1574573 d!1975579))

(declare-fun m!7114830 () Bool)

(assert (=> bs!1574573 m!7114830))

(assert (=> bm!533132 d!1975579))

(declare-fun b!6294746 () Bool)

(declare-fun e!3827391 () Bool)

(declare-fun call!533268 () Bool)

(assert (=> b!6294746 (= e!3827391 call!533268)))

(declare-fun b!6294747 () Bool)

(declare-fun res!2595777 () Bool)

(assert (=> b!6294747 (=> (not res!2595777) (not e!3827391))))

(declare-fun call!533267 () Bool)

(assert (=> b!6294747 (= res!2595777 call!533267)))

(declare-fun e!3827389 () Bool)

(assert (=> b!6294747 (= e!3827389 e!3827391)))

(declare-fun d!1975581 () Bool)

(declare-fun res!2595778 () Bool)

(declare-fun e!3827390 () Bool)

(assert (=> d!1975581 (=> res!2595778 e!3827390)))

(assert (=> d!1975581 (= res!2595778 ((_ is ElementMatch!16215) lt!2357616))))

(assert (=> d!1975581 (= (validRegex!7951 lt!2357616) e!3827390)))

(declare-fun call!533266 () Bool)

(declare-fun bm!533261 () Bool)

(declare-fun c!1142587 () Bool)

(declare-fun c!1142588 () Bool)

(assert (=> bm!533261 (= call!533266 (validRegex!7951 (ite c!1142587 (reg!16544 lt!2357616) (ite c!1142588 (regTwo!32943 lt!2357616) (regTwo!32942 lt!2357616)))))))

(declare-fun b!6294748 () Bool)

(declare-fun e!3827385 () Bool)

(assert (=> b!6294748 (= e!3827385 call!533268)))

(declare-fun b!6294749 () Bool)

(declare-fun e!3827387 () Bool)

(declare-fun e!3827386 () Bool)

(assert (=> b!6294749 (= e!3827387 e!3827386)))

(declare-fun res!2595780 () Bool)

(assert (=> b!6294749 (= res!2595780 (not (nullable!6208 (reg!16544 lt!2357616))))))

(assert (=> b!6294749 (=> (not res!2595780) (not e!3827386))))

(declare-fun b!6294750 () Bool)

(assert (=> b!6294750 (= e!3827387 e!3827389)))

(assert (=> b!6294750 (= c!1142588 ((_ is Union!16215) lt!2357616))))

(declare-fun bm!533262 () Bool)

(assert (=> bm!533262 (= call!533268 call!533266)))

(declare-fun b!6294751 () Bool)

(assert (=> b!6294751 (= e!3827386 call!533266)))

(declare-fun bm!533263 () Bool)

(assert (=> bm!533263 (= call!533267 (validRegex!7951 (ite c!1142588 (regOne!32943 lt!2357616) (regOne!32942 lt!2357616))))))

(declare-fun b!6294752 () Bool)

(declare-fun res!2595779 () Bool)

(declare-fun e!3827388 () Bool)

(assert (=> b!6294752 (=> res!2595779 e!3827388)))

(assert (=> b!6294752 (= res!2595779 (not ((_ is Concat!25060) lt!2357616)))))

(assert (=> b!6294752 (= e!3827389 e!3827388)))

(declare-fun b!6294753 () Bool)

(assert (=> b!6294753 (= e!3827388 e!3827385)))

(declare-fun res!2595776 () Bool)

(assert (=> b!6294753 (=> (not res!2595776) (not e!3827385))))

(assert (=> b!6294753 (= res!2595776 call!533267)))

(declare-fun b!6294754 () Bool)

(assert (=> b!6294754 (= e!3827390 e!3827387)))

(assert (=> b!6294754 (= c!1142587 ((_ is Star!16215) lt!2357616))))

(assert (= (and d!1975581 (not res!2595778)) b!6294754))

(assert (= (and b!6294754 c!1142587) b!6294749))

(assert (= (and b!6294754 (not c!1142587)) b!6294750))

(assert (= (and b!6294749 res!2595780) b!6294751))

(assert (= (and b!6294750 c!1142588) b!6294747))

(assert (= (and b!6294750 (not c!1142588)) b!6294752))

(assert (= (and b!6294747 res!2595777) b!6294746))

(assert (= (and b!6294752 (not res!2595779)) b!6294753))

(assert (= (and b!6294753 res!2595776) b!6294748))

(assert (= (or b!6294746 b!6294748) bm!533262))

(assert (= (or b!6294747 b!6294753) bm!533263))

(assert (= (or b!6294751 bm!533262) bm!533261))

(declare-fun m!7114832 () Bool)

(assert (=> bm!533261 m!7114832))

(declare-fun m!7114834 () Bool)

(assert (=> b!6294749 m!7114834))

(declare-fun m!7114836 () Bool)

(assert (=> bm!533263 m!7114836))

(assert (=> d!1975319 d!1975581))

(declare-fun d!1975583 () Bool)

(declare-fun res!2595785 () Bool)

(declare-fun e!3827396 () Bool)

(assert (=> d!1975583 (=> res!2595785 e!3827396)))

(assert (=> d!1975583 (= res!2595785 ((_ is Nil!64820) (exprs!6099 (h!71270 zl!343))))))

(assert (=> d!1975583 (= (forall!15365 (exprs!6099 (h!71270 zl!343)) lambda!345832) e!3827396)))

(declare-fun b!6294759 () Bool)

(declare-fun e!3827397 () Bool)

(assert (=> b!6294759 (= e!3827396 e!3827397)))

(declare-fun res!2595786 () Bool)

(assert (=> b!6294759 (=> (not res!2595786) (not e!3827397))))

(declare-fun dynLambda!25659 (Int Regex!16215) Bool)

(assert (=> b!6294759 (= res!2595786 (dynLambda!25659 lambda!345832 (h!71268 (exprs!6099 (h!71270 zl!343)))))))

(declare-fun b!6294760 () Bool)

(assert (=> b!6294760 (= e!3827397 (forall!15365 (t!378508 (exprs!6099 (h!71270 zl!343))) lambda!345832))))

(assert (= (and d!1975583 (not res!2595785)) b!6294759))

(assert (= (and b!6294759 res!2595786) b!6294760))

(declare-fun b_lambda!239521 () Bool)

(assert (=> (not b_lambda!239521) (not b!6294759)))

(declare-fun m!7114838 () Bool)

(assert (=> b!6294759 m!7114838))

(declare-fun m!7114840 () Bool)

(assert (=> b!6294760 m!7114840))

(assert (=> d!1975319 d!1975583))

(declare-fun d!1975585 () Bool)

(assert (=> d!1975585 (= (isDefined!12809 lt!2357577) (not (isEmpty!36881 lt!2357577)))))

(declare-fun bs!1574574 () Bool)

(assert (= bs!1574574 d!1975585))

(declare-fun m!7114842 () Bool)

(assert (=> bs!1574574 m!7114842))

(assert (=> b!6293641 d!1975585))

(declare-fun d!1975587 () Bool)

(declare-fun c!1142589 () Bool)

(assert (=> d!1975587 (= c!1142589 (isEmpty!36882 (tail!12015 (t!378509 s!2326))))))

(declare-fun e!3827398 () Bool)

(assert (=> d!1975587 (= (matchZipper!2227 (derivationStepZipper!2181 ((_ map or) lt!2357538 lt!2357535) (head!12930 (t!378509 s!2326))) (tail!12015 (t!378509 s!2326))) e!3827398)))

(declare-fun b!6294761 () Bool)

(assert (=> b!6294761 (= e!3827398 (nullableZipper!1985 (derivationStepZipper!2181 ((_ map or) lt!2357538 lt!2357535) (head!12930 (t!378509 s!2326)))))))

(declare-fun b!6294762 () Bool)

(assert (=> b!6294762 (= e!3827398 (matchZipper!2227 (derivationStepZipper!2181 (derivationStepZipper!2181 ((_ map or) lt!2357538 lt!2357535) (head!12930 (t!378509 s!2326))) (head!12930 (tail!12015 (t!378509 s!2326)))) (tail!12015 (tail!12015 (t!378509 s!2326)))))))

(assert (= (and d!1975587 c!1142589) b!6294761))

(assert (= (and d!1975587 (not c!1142589)) b!6294762))

(assert (=> d!1975587 m!7114220))

(declare-fun m!7114844 () Bool)

(assert (=> d!1975587 m!7114844))

(assert (=> b!6294761 m!7114226))

(declare-fun m!7114846 () Bool)

(assert (=> b!6294761 m!7114846))

(assert (=> b!6294762 m!7114220))

(declare-fun m!7114848 () Bool)

(assert (=> b!6294762 m!7114848))

(assert (=> b!6294762 m!7114226))

(assert (=> b!6294762 m!7114848))

(declare-fun m!7114850 () Bool)

(assert (=> b!6294762 m!7114850))

(assert (=> b!6294762 m!7114220))

(declare-fun m!7114852 () Bool)

(assert (=> b!6294762 m!7114852))

(assert (=> b!6294762 m!7114850))

(assert (=> b!6294762 m!7114852))

(declare-fun m!7114854 () Bool)

(assert (=> b!6294762 m!7114854))

(assert (=> b!6293886 d!1975587))

(declare-fun bs!1574575 () Bool)

(declare-fun d!1975589 () Bool)

(assert (= bs!1574575 (and d!1975589 b!6293461)))

(declare-fun lambda!345879 () Int)

(assert (=> bs!1574575 (= (= (head!12930 (t!378509 s!2326)) (h!71269 s!2326)) (= lambda!345879 lambda!345781))))

(assert (=> d!1975589 true))

(assert (=> d!1975589 (= (derivationStepZipper!2181 ((_ map or) lt!2357538 lt!2357535) (head!12930 (t!378509 s!2326))) (flatMap!1720 ((_ map or) lt!2357538 lt!2357535) lambda!345879))))

(declare-fun bs!1574576 () Bool)

(assert (= bs!1574576 d!1975589))

(declare-fun m!7114856 () Bool)

(assert (=> bs!1574576 m!7114856))

(assert (=> b!6293886 d!1975589))

(declare-fun d!1975591 () Bool)

(assert (=> d!1975591 (= (head!12930 (t!378509 s!2326)) (h!71269 (t!378509 s!2326)))))

(assert (=> b!6293886 d!1975591))

(declare-fun d!1975593 () Bool)

(assert (=> d!1975593 (= (tail!12015 (t!378509 s!2326)) (t!378509 (t!378509 s!2326)))))

(assert (=> b!6293886 d!1975593))

(declare-fun d!1975595 () Bool)

(assert (=> d!1975595 (= (isUnion!1058 lt!2357619) ((_ is Union!16215) lt!2357619))))

(assert (=> b!6294029 d!1975595))

(assert (=> d!1975313 d!1975567))

(assert (=> d!1975313 d!1975349))

(declare-fun b!6294765 () Bool)

(declare-fun e!3827405 () Bool)

(declare-fun call!533271 () Bool)

(assert (=> b!6294765 (= e!3827405 call!533271)))

(declare-fun b!6294766 () Bool)

(declare-fun res!2595788 () Bool)

(assert (=> b!6294766 (=> (not res!2595788) (not e!3827405))))

(declare-fun call!533270 () Bool)

(assert (=> b!6294766 (= res!2595788 call!533270)))

(declare-fun e!3827403 () Bool)

(assert (=> b!6294766 (= e!3827403 e!3827405)))

(declare-fun d!1975597 () Bool)

(declare-fun res!2595789 () Bool)

(declare-fun e!3827404 () Bool)

(assert (=> d!1975597 (=> res!2595789 e!3827404)))

(assert (=> d!1975597 (= res!2595789 ((_ is ElementMatch!16215) lt!2357628))))

(assert (=> d!1975597 (= (validRegex!7951 lt!2357628) e!3827404)))

(declare-fun c!1142592 () Bool)

(declare-fun c!1142593 () Bool)

(declare-fun call!533269 () Bool)

(declare-fun bm!533264 () Bool)

(assert (=> bm!533264 (= call!533269 (validRegex!7951 (ite c!1142592 (reg!16544 lt!2357628) (ite c!1142593 (regTwo!32943 lt!2357628) (regTwo!32942 lt!2357628)))))))

(declare-fun b!6294767 () Bool)

(declare-fun e!3827399 () Bool)

(assert (=> b!6294767 (= e!3827399 call!533271)))

(declare-fun b!6294768 () Bool)

(declare-fun e!3827401 () Bool)

(declare-fun e!3827400 () Bool)

(assert (=> b!6294768 (= e!3827401 e!3827400)))

(declare-fun res!2595791 () Bool)

(assert (=> b!6294768 (= res!2595791 (not (nullable!6208 (reg!16544 lt!2357628))))))

(assert (=> b!6294768 (=> (not res!2595791) (not e!3827400))))

(declare-fun b!6294769 () Bool)

(assert (=> b!6294769 (= e!3827401 e!3827403)))

(assert (=> b!6294769 (= c!1142593 ((_ is Union!16215) lt!2357628))))

(declare-fun bm!533265 () Bool)

(assert (=> bm!533265 (= call!533271 call!533269)))

(declare-fun b!6294770 () Bool)

(assert (=> b!6294770 (= e!3827400 call!533269)))

(declare-fun bm!533266 () Bool)

(assert (=> bm!533266 (= call!533270 (validRegex!7951 (ite c!1142593 (regOne!32943 lt!2357628) (regOne!32942 lt!2357628))))))

(declare-fun b!6294771 () Bool)

(declare-fun res!2595790 () Bool)

(declare-fun e!3827402 () Bool)

(assert (=> b!6294771 (=> res!2595790 e!3827402)))

(assert (=> b!6294771 (= res!2595790 (not ((_ is Concat!25060) lt!2357628)))))

(assert (=> b!6294771 (= e!3827403 e!3827402)))

(declare-fun b!6294772 () Bool)

(assert (=> b!6294772 (= e!3827402 e!3827399)))

(declare-fun res!2595787 () Bool)

(assert (=> b!6294772 (=> (not res!2595787) (not e!3827399))))

(assert (=> b!6294772 (= res!2595787 call!533270)))

(declare-fun b!6294773 () Bool)

(assert (=> b!6294773 (= e!3827404 e!3827401)))

(assert (=> b!6294773 (= c!1142592 ((_ is Star!16215) lt!2357628))))

(assert (= (and d!1975597 (not res!2595789)) b!6294773))

(assert (= (and b!6294773 c!1142592) b!6294768))

(assert (= (and b!6294773 (not c!1142592)) b!6294769))

(assert (= (and b!6294768 res!2595791) b!6294770))

(assert (= (and b!6294769 c!1142593) b!6294766))

(assert (= (and b!6294769 (not c!1142593)) b!6294771))

(assert (= (and b!6294766 res!2595788) b!6294765))

(assert (= (and b!6294771 (not res!2595790)) b!6294772))

(assert (= (and b!6294772 res!2595787) b!6294767))

(assert (= (or b!6294765 b!6294767) bm!533265))

(assert (= (or b!6294766 b!6294772) bm!533266))

(assert (= (or b!6294770 bm!533265) bm!533264))

(declare-fun m!7114858 () Bool)

(assert (=> bm!533264 m!7114858))

(declare-fun m!7114860 () Bool)

(assert (=> b!6294768 m!7114860))

(declare-fun m!7114862 () Bool)

(assert (=> bm!533266 m!7114862))

(assert (=> d!1975347 d!1975597))

(assert (=> d!1975347 d!1975321))

(assert (=> d!1975347 d!1975323))

(declare-fun b!6294774 () Bool)

(declare-fun e!3827411 () (InoxSet Context!11198))

(declare-fun e!3827408 () (InoxSet Context!11198))

(assert (=> b!6294774 (= e!3827411 e!3827408)))

(declare-fun c!1142598 () Bool)

(assert (=> b!6294774 (= c!1142598 ((_ is Union!16215) (h!71268 (exprs!6099 (Context!11199 (Cons!64820 (h!71268 (exprs!6099 (h!71270 zl!343))) (t!378508 (exprs!6099 (h!71270 zl!343)))))))))))

(declare-fun b!6294775 () Bool)

(declare-fun e!3827410 () Bool)

(assert (=> b!6294775 (= e!3827410 (nullable!6208 (regOne!32942 (h!71268 (exprs!6099 (Context!11199 (Cons!64820 (h!71268 (exprs!6099 (h!71270 zl!343))) (t!378508 (exprs!6099 (h!71270 zl!343))))))))))))

(declare-fun bm!533267 () Bool)

(declare-fun c!1142595 () Bool)

(declare-fun c!1142594 () Bool)

(declare-fun call!533274 () (InoxSet Context!11198))

(declare-fun call!533275 () List!64944)

(assert (=> bm!533267 (= call!533274 (derivationStepZipperDown!1463 (ite c!1142598 (regTwo!32943 (h!71268 (exprs!6099 (Context!11199 (Cons!64820 (h!71268 (exprs!6099 (h!71270 zl!343))) (t!378508 (exprs!6099 (h!71270 zl!343)))))))) (ite c!1142595 (regTwo!32942 (h!71268 (exprs!6099 (Context!11199 (Cons!64820 (h!71268 (exprs!6099 (h!71270 zl!343))) (t!378508 (exprs!6099 (h!71270 zl!343)))))))) (ite c!1142594 (regOne!32942 (h!71268 (exprs!6099 (Context!11199 (Cons!64820 (h!71268 (exprs!6099 (h!71270 zl!343))) (t!378508 (exprs!6099 (h!71270 zl!343)))))))) (reg!16544 (h!71268 (exprs!6099 (Context!11199 (Cons!64820 (h!71268 (exprs!6099 (h!71270 zl!343))) (t!378508 (exprs!6099 (h!71270 zl!343))))))))))) (ite (or c!1142598 c!1142595) (Context!11199 (t!378508 (exprs!6099 (Context!11199 (Cons!64820 (h!71268 (exprs!6099 (h!71270 zl!343))) (t!378508 (exprs!6099 (h!71270 zl!343)))))))) (Context!11199 call!533275)) (h!71269 s!2326)))))

(declare-fun b!6294776 () Bool)

(assert (=> b!6294776 (= e!3827411 (store ((as const (Array Context!11198 Bool)) false) (Context!11199 (t!378508 (exprs!6099 (Context!11199 (Cons!64820 (h!71268 (exprs!6099 (h!71270 zl!343))) (t!378508 (exprs!6099 (h!71270 zl!343)))))))) true))))

(declare-fun bm!533268 () Bool)

(declare-fun call!533273 () List!64944)

(declare-fun call!533276 () (InoxSet Context!11198))

(assert (=> bm!533268 (= call!533276 (derivationStepZipperDown!1463 (ite c!1142598 (regOne!32943 (h!71268 (exprs!6099 (Context!11199 (Cons!64820 (h!71268 (exprs!6099 (h!71270 zl!343))) (t!378508 (exprs!6099 (h!71270 zl!343)))))))) (regOne!32942 (h!71268 (exprs!6099 (Context!11199 (Cons!64820 (h!71268 (exprs!6099 (h!71270 zl!343))) (t!378508 (exprs!6099 (h!71270 zl!343))))))))) (ite c!1142598 (Context!11199 (t!378508 (exprs!6099 (Context!11199 (Cons!64820 (h!71268 (exprs!6099 (h!71270 zl!343))) (t!378508 (exprs!6099 (h!71270 zl!343)))))))) (Context!11199 call!533273)) (h!71269 s!2326)))))

(declare-fun b!6294777 () Bool)

(assert (=> b!6294777 (= c!1142595 e!3827410)))

(declare-fun res!2595792 () Bool)

(assert (=> b!6294777 (=> (not res!2595792) (not e!3827410))))

(assert (=> b!6294777 (= res!2595792 ((_ is Concat!25060) (h!71268 (exprs!6099 (Context!11199 (Cons!64820 (h!71268 (exprs!6099 (h!71270 zl!343))) (t!378508 (exprs!6099 (h!71270 zl!343)))))))))))

(declare-fun e!3827409 () (InoxSet Context!11198))

(assert (=> b!6294777 (= e!3827408 e!3827409)))

(declare-fun b!6294778 () Bool)

(declare-fun call!533277 () (InoxSet Context!11198))

(assert (=> b!6294778 (= e!3827409 ((_ map or) call!533276 call!533277))))

(declare-fun b!6294779 () Bool)

(declare-fun e!3827407 () (InoxSet Context!11198))

(assert (=> b!6294779 (= e!3827409 e!3827407)))

(assert (=> b!6294779 (= c!1142594 ((_ is Concat!25060) (h!71268 (exprs!6099 (Context!11199 (Cons!64820 (h!71268 (exprs!6099 (h!71270 zl!343))) (t!378508 (exprs!6099 (h!71270 zl!343)))))))))))

(declare-fun b!6294780 () Bool)

(declare-fun e!3827406 () (InoxSet Context!11198))

(assert (=> b!6294780 (= e!3827406 ((as const (Array Context!11198 Bool)) false))))

(declare-fun b!6294781 () Bool)

(declare-fun call!533272 () (InoxSet Context!11198))

(assert (=> b!6294781 (= e!3827407 call!533272)))

(declare-fun bm!533269 () Bool)

(assert (=> bm!533269 (= call!533273 ($colon$colon!2080 (exprs!6099 (Context!11199 (t!378508 (exprs!6099 (Context!11199 (Cons!64820 (h!71268 (exprs!6099 (h!71270 zl!343))) (t!378508 (exprs!6099 (h!71270 zl!343))))))))) (ite (or c!1142595 c!1142594) (regTwo!32942 (h!71268 (exprs!6099 (Context!11199 (Cons!64820 (h!71268 (exprs!6099 (h!71270 zl!343))) (t!378508 (exprs!6099 (h!71270 zl!343)))))))) (h!71268 (exprs!6099 (Context!11199 (Cons!64820 (h!71268 (exprs!6099 (h!71270 zl!343))) (t!378508 (exprs!6099 (h!71270 zl!343))))))))))))

(declare-fun d!1975599 () Bool)

(declare-fun c!1142596 () Bool)

(assert (=> d!1975599 (= c!1142596 (and ((_ is ElementMatch!16215) (h!71268 (exprs!6099 (Context!11199 (Cons!64820 (h!71268 (exprs!6099 (h!71270 zl!343))) (t!378508 (exprs!6099 (h!71270 zl!343)))))))) (= (c!1142274 (h!71268 (exprs!6099 (Context!11199 (Cons!64820 (h!71268 (exprs!6099 (h!71270 zl!343))) (t!378508 (exprs!6099 (h!71270 zl!343)))))))) (h!71269 s!2326))))))

(assert (=> d!1975599 (= (derivationStepZipperDown!1463 (h!71268 (exprs!6099 (Context!11199 (Cons!64820 (h!71268 (exprs!6099 (h!71270 zl!343))) (t!378508 (exprs!6099 (h!71270 zl!343))))))) (Context!11199 (t!378508 (exprs!6099 (Context!11199 (Cons!64820 (h!71268 (exprs!6099 (h!71270 zl!343))) (t!378508 (exprs!6099 (h!71270 zl!343)))))))) (h!71269 s!2326)) e!3827411)))

(declare-fun bm!533270 () Bool)

(assert (=> bm!533270 (= call!533277 call!533274)))

(declare-fun bm!533271 () Bool)

(assert (=> bm!533271 (= call!533272 call!533277)))

(declare-fun b!6294782 () Bool)

(declare-fun c!1142597 () Bool)

(assert (=> b!6294782 (= c!1142597 ((_ is Star!16215) (h!71268 (exprs!6099 (Context!11199 (Cons!64820 (h!71268 (exprs!6099 (h!71270 zl!343))) (t!378508 (exprs!6099 (h!71270 zl!343)))))))))))

(assert (=> b!6294782 (= e!3827407 e!3827406)))

(declare-fun b!6294783 () Bool)

(assert (=> b!6294783 (= e!3827408 ((_ map or) call!533276 call!533274))))

(declare-fun b!6294784 () Bool)

(assert (=> b!6294784 (= e!3827406 call!533272)))

(declare-fun bm!533272 () Bool)

(assert (=> bm!533272 (= call!533275 call!533273)))

(assert (= (and d!1975599 c!1142596) b!6294776))

(assert (= (and d!1975599 (not c!1142596)) b!6294774))

(assert (= (and b!6294774 c!1142598) b!6294783))

(assert (= (and b!6294774 (not c!1142598)) b!6294777))

(assert (= (and b!6294777 res!2595792) b!6294775))

(assert (= (and b!6294777 c!1142595) b!6294778))

(assert (= (and b!6294777 (not c!1142595)) b!6294779))

(assert (= (and b!6294779 c!1142594) b!6294781))

(assert (= (and b!6294779 (not c!1142594)) b!6294782))

(assert (= (and b!6294782 c!1142597) b!6294784))

(assert (= (and b!6294782 (not c!1142597)) b!6294780))

(assert (= (or b!6294781 b!6294784) bm!533272))

(assert (= (or b!6294781 b!6294784) bm!533271))

(assert (= (or b!6294778 bm!533272) bm!533269))

(assert (= (or b!6294778 bm!533271) bm!533270))

(assert (= (or b!6294783 bm!533270) bm!533267))

(assert (= (or b!6294783 b!6294778) bm!533268))

(declare-fun m!7114864 () Bool)

(assert (=> bm!533267 m!7114864))

(declare-fun m!7114866 () Bool)

(assert (=> b!6294776 m!7114866))

(declare-fun m!7114868 () Bool)

(assert (=> bm!533268 m!7114868))

(declare-fun m!7114870 () Bool)

(assert (=> b!6294775 m!7114870))

(declare-fun m!7114872 () Bool)

(assert (=> bm!533269 m!7114872))

(assert (=> bm!533138 d!1975599))

(declare-fun d!1975601 () Bool)

(declare-fun res!2595797 () Bool)

(declare-fun e!3827416 () Bool)

(assert (=> d!1975601 (=> res!2595797 e!3827416)))

(assert (=> d!1975601 (= res!2595797 ((_ is Nil!64822) lt!2357607))))

(assert (=> d!1975601 (= (noDuplicate!2049 lt!2357607) e!3827416)))

(declare-fun b!6294789 () Bool)

(declare-fun e!3827417 () Bool)

(assert (=> b!6294789 (= e!3827416 e!3827417)))

(declare-fun res!2595798 () Bool)

(assert (=> b!6294789 (=> (not res!2595798) (not e!3827417))))

(declare-fun contains!20129 (List!64946 Context!11198) Bool)

(assert (=> b!6294789 (= res!2595798 (not (contains!20129 (t!378510 lt!2357607) (h!71270 lt!2357607))))))

(declare-fun b!6294790 () Bool)

(assert (=> b!6294790 (= e!3827417 (noDuplicate!2049 (t!378510 lt!2357607)))))

(assert (= (and d!1975601 (not res!2595797)) b!6294789))

(assert (= (and b!6294789 res!2595798) b!6294790))

(declare-fun m!7114874 () Bool)

(assert (=> b!6294789 m!7114874))

(declare-fun m!7114876 () Bool)

(assert (=> b!6294790 m!7114876))

(assert (=> d!1975307 d!1975601))

(declare-fun d!1975603 () Bool)

(declare-fun e!3827425 () Bool)

(assert (=> d!1975603 e!3827425))

(declare-fun res!2595803 () Bool)

(assert (=> d!1975603 (=> (not res!2595803) (not e!3827425))))

(declare-fun res!2595804 () List!64946)

(assert (=> d!1975603 (= res!2595803 (noDuplicate!2049 res!2595804))))

(declare-fun e!3827426 () Bool)

(assert (=> d!1975603 e!3827426))

(assert (=> d!1975603 (= (choose!46764 z!1189) res!2595804)))

(declare-fun b!6294798 () Bool)

(declare-fun e!3827424 () Bool)

(declare-fun tp!1752467 () Bool)

(assert (=> b!6294798 (= e!3827424 tp!1752467)))

(declare-fun b!6294797 () Bool)

(declare-fun tp!1752468 () Bool)

(assert (=> b!6294797 (= e!3827426 (and (inv!83784 (h!71270 res!2595804)) e!3827424 tp!1752468))))

(declare-fun b!6294799 () Bool)

(assert (=> b!6294799 (= e!3827425 (= (content!12194 res!2595804) z!1189))))

(assert (= b!6294797 b!6294798))

(assert (= (and d!1975603 ((_ is Cons!64822) res!2595804)) b!6294797))

(assert (= (and d!1975603 res!2595803) b!6294799))

(declare-fun m!7114878 () Bool)

(assert (=> d!1975603 m!7114878))

(declare-fun m!7114880 () Bool)

(assert (=> b!6294797 m!7114880))

(declare-fun m!7114882 () Bool)

(assert (=> b!6294799 m!7114882))

(assert (=> d!1975307 d!1975603))

(declare-fun d!1975605 () Bool)

(assert (=> d!1975605 true))

(declare-fun setRes!42849 () Bool)

(assert (=> d!1975605 setRes!42849))

(declare-fun condSetEmpty!42849 () Bool)

(declare-fun res!2595807 () (InoxSet Context!11198))

(assert (=> d!1975605 (= condSetEmpty!42849 (= res!2595807 ((as const (Array Context!11198 Bool)) false)))))

(assert (=> d!1975605 (= (choose!46767 z!1189 lambda!345781) res!2595807)))

(declare-fun setIsEmpty!42849 () Bool)

(assert (=> setIsEmpty!42849 setRes!42849))

(declare-fun e!3827429 () Bool)

(declare-fun setNonEmpty!42849 () Bool)

(declare-fun tp!1752474 () Bool)

(declare-fun setElem!42849 () Context!11198)

(assert (=> setNonEmpty!42849 (= setRes!42849 (and tp!1752474 (inv!83784 setElem!42849) e!3827429))))

(declare-fun setRest!42849 () (InoxSet Context!11198))

(assert (=> setNonEmpty!42849 (= res!2595807 ((_ map or) (store ((as const (Array Context!11198 Bool)) false) setElem!42849 true) setRest!42849))))

(declare-fun b!6294802 () Bool)

(declare-fun tp!1752473 () Bool)

(assert (=> b!6294802 (= e!3827429 tp!1752473)))

(assert (= (and d!1975605 condSetEmpty!42849) setIsEmpty!42849))

(assert (= (and d!1975605 (not condSetEmpty!42849)) setNonEmpty!42849))

(assert (= setNonEmpty!42849 b!6294802))

(declare-fun m!7114884 () Bool)

(assert (=> setNonEmpty!42849 m!7114884))

(assert (=> d!1975335 d!1975605))

(declare-fun d!1975607 () Bool)

(assert (=> d!1975607 (= (isEmpty!36877 (exprs!6099 (h!71270 zl!343))) ((_ is Nil!64820) (exprs!6099 (h!71270 zl!343))))))

(assert (=> b!6294000 d!1975607))

(declare-fun d!1975609 () Bool)

(assert (=> d!1975609 (= (nullable!6208 (regOne!32942 (h!71268 (exprs!6099 (h!71270 zl!343))))) (nullableFct!2159 (regOne!32942 (h!71268 (exprs!6099 (h!71270 zl!343))))))))

(declare-fun bs!1574577 () Bool)

(assert (= bs!1574577 d!1975609))

(declare-fun m!7114886 () Bool)

(assert (=> bs!1574577 m!7114886))

(assert (=> b!6294079 d!1975609))

(declare-fun d!1975611 () Bool)

(assert (=> d!1975611 (= (head!12931 (exprs!6099 (h!71270 zl!343))) (h!71268 (exprs!6099 (h!71270 zl!343))))))

(assert (=> b!6293998 d!1975611))

(declare-fun d!1975613 () Bool)

(assert (=> d!1975613 (= (nullable!6208 (h!71268 (exprs!6099 lt!2357543))) (nullableFct!2159 (h!71268 (exprs!6099 lt!2357543))))))

(declare-fun bs!1574578 () Bool)

(assert (= bs!1574578 d!1975613))

(declare-fun m!7114888 () Bool)

(assert (=> bs!1574578 m!7114888))

(assert (=> b!6294096 d!1975613))

(declare-fun b!6294803 () Bool)

(declare-fun e!3827436 () Bool)

(declare-fun call!533280 () Bool)

(assert (=> b!6294803 (= e!3827436 call!533280)))

(declare-fun b!6294804 () Bool)

(declare-fun res!2595809 () Bool)

(assert (=> b!6294804 (=> (not res!2595809) (not e!3827436))))

(declare-fun call!533279 () Bool)

(assert (=> b!6294804 (= res!2595809 call!533279)))

(declare-fun e!3827434 () Bool)

(assert (=> b!6294804 (= e!3827434 e!3827436)))

(declare-fun d!1975615 () Bool)

(declare-fun res!2595810 () Bool)

(declare-fun e!3827435 () Bool)

(assert (=> d!1975615 (=> res!2595810 e!3827435)))

(assert (=> d!1975615 (= res!2595810 ((_ is ElementMatch!16215) lt!2357619))))

(assert (=> d!1975615 (= (validRegex!7951 lt!2357619) e!3827435)))

(declare-fun c!1142599 () Bool)

(declare-fun c!1142600 () Bool)

(declare-fun call!533278 () Bool)

(declare-fun bm!533273 () Bool)

(assert (=> bm!533273 (= call!533278 (validRegex!7951 (ite c!1142599 (reg!16544 lt!2357619) (ite c!1142600 (regTwo!32943 lt!2357619) (regTwo!32942 lt!2357619)))))))

(declare-fun b!6294805 () Bool)

(declare-fun e!3827430 () Bool)

(assert (=> b!6294805 (= e!3827430 call!533280)))

(declare-fun b!6294806 () Bool)

(declare-fun e!3827432 () Bool)

(declare-fun e!3827431 () Bool)

(assert (=> b!6294806 (= e!3827432 e!3827431)))

(declare-fun res!2595812 () Bool)

(assert (=> b!6294806 (= res!2595812 (not (nullable!6208 (reg!16544 lt!2357619))))))

(assert (=> b!6294806 (=> (not res!2595812) (not e!3827431))))

(declare-fun b!6294807 () Bool)

(assert (=> b!6294807 (= e!3827432 e!3827434)))

(assert (=> b!6294807 (= c!1142600 ((_ is Union!16215) lt!2357619))))

(declare-fun bm!533274 () Bool)

(assert (=> bm!533274 (= call!533280 call!533278)))

(declare-fun b!6294808 () Bool)

(assert (=> b!6294808 (= e!3827431 call!533278)))

(declare-fun bm!533275 () Bool)

(assert (=> bm!533275 (= call!533279 (validRegex!7951 (ite c!1142600 (regOne!32943 lt!2357619) (regOne!32942 lt!2357619))))))

(declare-fun b!6294809 () Bool)

(declare-fun res!2595811 () Bool)

(declare-fun e!3827433 () Bool)

(assert (=> b!6294809 (=> res!2595811 e!3827433)))

(assert (=> b!6294809 (= res!2595811 (not ((_ is Concat!25060) lt!2357619)))))

(assert (=> b!6294809 (= e!3827434 e!3827433)))

(declare-fun b!6294810 () Bool)

(assert (=> b!6294810 (= e!3827433 e!3827430)))

(declare-fun res!2595808 () Bool)

(assert (=> b!6294810 (=> (not res!2595808) (not e!3827430))))

(assert (=> b!6294810 (= res!2595808 call!533279)))

(declare-fun b!6294811 () Bool)

(assert (=> b!6294811 (= e!3827435 e!3827432)))

(assert (=> b!6294811 (= c!1142599 ((_ is Star!16215) lt!2357619))))

(assert (= (and d!1975615 (not res!2595810)) b!6294811))

(assert (= (and b!6294811 c!1142599) b!6294806))

(assert (= (and b!6294811 (not c!1142599)) b!6294807))

(assert (= (and b!6294806 res!2595812) b!6294808))

(assert (= (and b!6294807 c!1142600) b!6294804))

(assert (= (and b!6294807 (not c!1142600)) b!6294809))

(assert (= (and b!6294804 res!2595809) b!6294803))

(assert (= (and b!6294809 (not res!2595811)) b!6294810))

(assert (= (and b!6294810 res!2595808) b!6294805))

(assert (= (or b!6294803 b!6294805) bm!533274))

(assert (= (or b!6294804 b!6294810) bm!533275))

(assert (= (or b!6294808 bm!533274) bm!533273))

(declare-fun m!7114890 () Bool)

(assert (=> bm!533273 m!7114890))

(declare-fun m!7114892 () Bool)

(assert (=> b!6294806 m!7114892))

(declare-fun m!7114894 () Bool)

(assert (=> bm!533275 m!7114894))

(assert (=> d!1975321 d!1975615))

(declare-fun d!1975617 () Bool)

(declare-fun res!2595813 () Bool)

(declare-fun e!3827437 () Bool)

(assert (=> d!1975617 (=> res!2595813 e!3827437)))

(assert (=> d!1975617 (= res!2595813 ((_ is Nil!64820) (unfocusZipperList!1636 zl!343)))))

(assert (=> d!1975617 (= (forall!15365 (unfocusZipperList!1636 zl!343) lambda!345835) e!3827437)))

(declare-fun b!6294812 () Bool)

(declare-fun e!3827438 () Bool)

(assert (=> b!6294812 (= e!3827437 e!3827438)))

(declare-fun res!2595814 () Bool)

(assert (=> b!6294812 (=> (not res!2595814) (not e!3827438))))

(assert (=> b!6294812 (= res!2595814 (dynLambda!25659 lambda!345835 (h!71268 (unfocusZipperList!1636 zl!343))))))

(declare-fun b!6294813 () Bool)

(assert (=> b!6294813 (= e!3827438 (forall!15365 (t!378508 (unfocusZipperList!1636 zl!343)) lambda!345835))))

(assert (= (and d!1975617 (not res!2595813)) b!6294812))

(assert (= (and b!6294812 res!2595814) b!6294813))

(declare-fun b_lambda!239523 () Bool)

(assert (=> (not b_lambda!239523) (not b!6294812)))

(declare-fun m!7114896 () Bool)

(assert (=> b!6294812 m!7114896))

(declare-fun m!7114898 () Bool)

(assert (=> b!6294813 m!7114898))

(assert (=> d!1975321 d!1975617))

(declare-fun d!1975619 () Bool)

(declare-fun res!2595815 () Bool)

(declare-fun e!3827439 () Bool)

(assert (=> d!1975619 (=> res!2595815 e!3827439)))

(assert (=> d!1975619 (= res!2595815 ((_ is Nil!64820) (exprs!6099 (Context!11199 (Cons!64820 (regTwo!32942 (regOne!32942 r!7292)) (t!378508 (exprs!6099 (h!71270 zl!343))))))))))

(assert (=> d!1975619 (= (forall!15365 (exprs!6099 (Context!11199 (Cons!64820 (regTwo!32942 (regOne!32942 r!7292)) (t!378508 (exprs!6099 (h!71270 zl!343)))))) lambda!345823) e!3827439)))

(declare-fun b!6294814 () Bool)

(declare-fun e!3827440 () Bool)

(assert (=> b!6294814 (= e!3827439 e!3827440)))

(declare-fun res!2595816 () Bool)

(assert (=> b!6294814 (=> (not res!2595816) (not e!3827440))))

(assert (=> b!6294814 (= res!2595816 (dynLambda!25659 lambda!345823 (h!71268 (exprs!6099 (Context!11199 (Cons!64820 (regTwo!32942 (regOne!32942 r!7292)) (t!378508 (exprs!6099 (h!71270 zl!343)))))))))))

(declare-fun b!6294815 () Bool)

(assert (=> b!6294815 (= e!3827440 (forall!15365 (t!378508 (exprs!6099 (Context!11199 (Cons!64820 (regTwo!32942 (regOne!32942 r!7292)) (t!378508 (exprs!6099 (h!71270 zl!343))))))) lambda!345823))))

(assert (= (and d!1975619 (not res!2595815)) b!6294814))

(assert (= (and b!6294814 res!2595816) b!6294815))

(declare-fun b_lambda!239525 () Bool)

(assert (=> (not b_lambda!239525) (not b!6294814)))

(declare-fun m!7114900 () Bool)

(assert (=> b!6294814 m!7114900))

(declare-fun m!7114902 () Bool)

(assert (=> b!6294815 m!7114902))

(assert (=> d!1975309 d!1975619))

(declare-fun d!1975621 () Bool)

(declare-fun res!2595817 () Bool)

(declare-fun e!3827441 () Bool)

(assert (=> d!1975621 (=> res!2595817 e!3827441)))

(assert (=> d!1975621 (= res!2595817 ((_ is Nil!64820) lt!2357622))))

(assert (=> d!1975621 (= (forall!15365 lt!2357622 lambda!345838) e!3827441)))

(declare-fun b!6294816 () Bool)

(declare-fun e!3827442 () Bool)

(assert (=> b!6294816 (= e!3827441 e!3827442)))

(declare-fun res!2595818 () Bool)

(assert (=> b!6294816 (=> (not res!2595818) (not e!3827442))))

(assert (=> b!6294816 (= res!2595818 (dynLambda!25659 lambda!345838 (h!71268 lt!2357622)))))

(declare-fun b!6294817 () Bool)

(assert (=> b!6294817 (= e!3827442 (forall!15365 (t!378508 lt!2357622) lambda!345838))))

(assert (= (and d!1975621 (not res!2595817)) b!6294816))

(assert (= (and b!6294816 res!2595818) b!6294817))

(declare-fun b_lambda!239527 () Bool)

(assert (=> (not b_lambda!239527) (not b!6294816)))

(declare-fun m!7114904 () Bool)

(assert (=> b!6294816 m!7114904))

(declare-fun m!7114906 () Bool)

(assert (=> b!6294817 m!7114906))

(assert (=> d!1975323 d!1975621))

(declare-fun d!1975623 () Bool)

(assert (=> d!1975623 (= (isEmpty!36877 (tail!12016 (exprs!6099 (h!71270 zl!343)))) ((_ is Nil!64820) (tail!12016 (exprs!6099 (h!71270 zl!343)))))))

(assert (=> b!6294002 d!1975623))

(declare-fun d!1975625 () Bool)

(assert (=> d!1975625 (= (tail!12016 (exprs!6099 (h!71270 zl!343))) (t!378508 (exprs!6099 (h!71270 zl!343))))))

(assert (=> b!6294002 d!1975625))

(assert (=> b!6294039 d!1975319))

(declare-fun bs!1574579 () Bool)

(declare-fun d!1975627 () Bool)

(assert (= bs!1574579 (and d!1975627 d!1975291)))

(declare-fun lambda!345880 () Int)

(assert (=> bs!1574579 (= lambda!345880 lambda!345822)))

(declare-fun bs!1574580 () Bool)

(assert (= bs!1574580 (and d!1975627 d!1975319)))

(assert (=> bs!1574580 (= lambda!345880 lambda!345832)))

(declare-fun bs!1574581 () Bool)

(assert (= bs!1574581 (and d!1975627 d!1975343)))

(assert (=> bs!1574581 (= lambda!345880 lambda!345839)))

(declare-fun bs!1574582 () Bool)

(assert (= bs!1574582 (and d!1975627 d!1975323)))

(assert (=> bs!1574582 (= lambda!345880 lambda!345838)))

(declare-fun bs!1574583 () Bool)

(assert (= bs!1574583 (and d!1975627 d!1975309)))

(assert (=> bs!1574583 (= lambda!345880 lambda!345823)))

(declare-fun bs!1574584 () Bool)

(assert (= bs!1574584 (and d!1975627 d!1975321)))

(assert (=> bs!1574584 (= lambda!345880 lambda!345835)))

(declare-fun lt!2357652 () List!64944)

(assert (=> d!1975627 (forall!15365 lt!2357652 lambda!345880)))

(declare-fun e!3827443 () List!64944)

(assert (=> d!1975627 (= lt!2357652 e!3827443)))

(declare-fun c!1142601 () Bool)

(assert (=> d!1975627 (= c!1142601 ((_ is Cons!64822) (t!378510 zl!343)))))

(assert (=> d!1975627 (= (unfocusZipperList!1636 (t!378510 zl!343)) lt!2357652)))

(declare-fun b!6294818 () Bool)

(assert (=> b!6294818 (= e!3827443 (Cons!64820 (generalisedConcat!1812 (exprs!6099 (h!71270 (t!378510 zl!343)))) (unfocusZipperList!1636 (t!378510 (t!378510 zl!343)))))))

(declare-fun b!6294819 () Bool)

(assert (=> b!6294819 (= e!3827443 Nil!64820)))

(assert (= (and d!1975627 c!1142601) b!6294818))

(assert (= (and d!1975627 (not c!1142601)) b!6294819))

(declare-fun m!7114908 () Bool)

(assert (=> d!1975627 m!7114908))

(declare-fun m!7114910 () Bool)

(assert (=> b!6294818 m!7114910))

(declare-fun m!7114912 () Bool)

(assert (=> b!6294818 m!7114912))

(assert (=> b!6294039 d!1975627))

(declare-fun d!1975629 () Bool)

(assert (=> d!1975629 (= (isEmpty!36882 (tail!12015 s!2326)) ((_ is Nil!64821) (tail!12015 s!2326)))))

(assert (=> b!6293973 d!1975629))

(declare-fun d!1975631 () Bool)

(assert (=> d!1975631 (= (tail!12015 s!2326) (t!378509 s!2326))))

(assert (=> b!6293973 d!1975631))

(declare-fun b!6294820 () Bool)

(declare-fun res!2595824 () Bool)

(declare-fun e!3827445 () Bool)

(assert (=> b!6294820 (=> (not res!2595824) (not e!3827445))))

(declare-fun call!533281 () Bool)

(assert (=> b!6294820 (= res!2595824 (not call!533281))))

(declare-fun b!6294821 () Bool)

(declare-fun e!3827449 () Bool)

(declare-fun e!3827446 () Bool)

(assert (=> b!6294821 (= e!3827449 e!3827446)))

(declare-fun res!2595826 () Bool)

(assert (=> b!6294821 (=> res!2595826 e!3827446)))

(assert (=> b!6294821 (= res!2595826 call!533281)))

(declare-fun b!6294822 () Bool)

(declare-fun e!3827444 () Bool)

(assert (=> b!6294822 (= e!3827444 (matchR!8398 (derivativeStep!4924 (regTwo!32942 r!7292) (head!12930 s!2326)) (tail!12015 s!2326)))))

(declare-fun b!6294823 () Bool)

(declare-fun res!2595819 () Bool)

(declare-fun e!3827447 () Bool)

(assert (=> b!6294823 (=> res!2595819 e!3827447)))

(assert (=> b!6294823 (= res!2595819 e!3827445)))

(declare-fun res!2595825 () Bool)

(assert (=> b!6294823 (=> (not res!2595825) (not e!3827445))))

(declare-fun lt!2357653 () Bool)

(assert (=> b!6294823 (= res!2595825 lt!2357653)))

(declare-fun b!6294824 () Bool)

(declare-fun e!3827448 () Bool)

(assert (=> b!6294824 (= e!3827448 (not lt!2357653))))

(declare-fun b!6294825 () Bool)

(declare-fun res!2595823 () Bool)

(assert (=> b!6294825 (=> res!2595823 e!3827447)))

(assert (=> b!6294825 (= res!2595823 (not ((_ is ElementMatch!16215) (regTwo!32942 r!7292))))))

(assert (=> b!6294825 (= e!3827448 e!3827447)))

(declare-fun b!6294826 () Bool)

(assert (=> b!6294826 (= e!3827445 (= (head!12930 s!2326) (c!1142274 (regTwo!32942 r!7292))))))

(declare-fun bm!533276 () Bool)

(assert (=> bm!533276 (= call!533281 (isEmpty!36882 s!2326))))

(declare-fun b!6294827 () Bool)

(assert (=> b!6294827 (= e!3827446 (not (= (head!12930 s!2326) (c!1142274 (regTwo!32942 r!7292)))))))

(declare-fun b!6294828 () Bool)

(assert (=> b!6294828 (= e!3827447 e!3827449)))

(declare-fun res!2595822 () Bool)

(assert (=> b!6294828 (=> (not res!2595822) (not e!3827449))))

(assert (=> b!6294828 (= res!2595822 (not lt!2357653))))

(declare-fun b!6294829 () Bool)

(assert (=> b!6294829 (= e!3827444 (nullable!6208 (regTwo!32942 r!7292)))))

(declare-fun b!6294830 () Bool)

(declare-fun e!3827450 () Bool)

(assert (=> b!6294830 (= e!3827450 (= lt!2357653 call!533281))))

(declare-fun b!6294831 () Bool)

(assert (=> b!6294831 (= e!3827450 e!3827448)))

(declare-fun c!1142602 () Bool)

(assert (=> b!6294831 (= c!1142602 ((_ is EmptyLang!16215) (regTwo!32942 r!7292)))))

(declare-fun d!1975633 () Bool)

(assert (=> d!1975633 e!3827450))

(declare-fun c!1142603 () Bool)

(assert (=> d!1975633 (= c!1142603 ((_ is EmptyExpr!16215) (regTwo!32942 r!7292)))))

(assert (=> d!1975633 (= lt!2357653 e!3827444)))

(declare-fun c!1142604 () Bool)

(assert (=> d!1975633 (= c!1142604 (isEmpty!36882 s!2326))))

(assert (=> d!1975633 (validRegex!7951 (regTwo!32942 r!7292))))

(assert (=> d!1975633 (= (matchR!8398 (regTwo!32942 r!7292) s!2326) lt!2357653)))

(declare-fun b!6294832 () Bool)

(declare-fun res!2595821 () Bool)

(assert (=> b!6294832 (=> (not res!2595821) (not e!3827445))))

(assert (=> b!6294832 (= res!2595821 (isEmpty!36882 (tail!12015 s!2326)))))

(declare-fun b!6294833 () Bool)

(declare-fun res!2595820 () Bool)

(assert (=> b!6294833 (=> res!2595820 e!3827446)))

(assert (=> b!6294833 (= res!2595820 (not (isEmpty!36882 (tail!12015 s!2326))))))

(assert (= (and d!1975633 c!1142604) b!6294829))

(assert (= (and d!1975633 (not c!1142604)) b!6294822))

(assert (= (and d!1975633 c!1142603) b!6294830))

(assert (= (and d!1975633 (not c!1142603)) b!6294831))

(assert (= (and b!6294831 c!1142602) b!6294824))

(assert (= (and b!6294831 (not c!1142602)) b!6294825))

(assert (= (and b!6294825 (not res!2595823)) b!6294823))

(assert (= (and b!6294823 res!2595825) b!6294820))

(assert (= (and b!6294820 res!2595824) b!6294832))

(assert (= (and b!6294832 res!2595821) b!6294826))

(assert (= (and b!6294823 (not res!2595819)) b!6294828))

(assert (= (and b!6294828 res!2595822) b!6294821))

(assert (= (and b!6294821 (not res!2595826)) b!6294833))

(assert (= (and b!6294833 (not res!2595820)) b!6294827))

(assert (= (or b!6294830 b!6294820 b!6294821) bm!533276))

(declare-fun m!7114914 () Bool)

(assert (=> b!6294829 m!7114914))

(assert (=> b!6294822 m!7114248))

(assert (=> b!6294822 m!7114248))

(declare-fun m!7114916 () Bool)

(assert (=> b!6294822 m!7114916))

(assert (=> b!6294822 m!7114252))

(assert (=> b!6294822 m!7114916))

(assert (=> b!6294822 m!7114252))

(declare-fun m!7114918 () Bool)

(assert (=> b!6294822 m!7114918))

(assert (=> b!6294827 m!7114248))

(assert (=> b!6294826 m!7114248))

(assert (=> b!6294833 m!7114252))

(assert (=> b!6294833 m!7114252))

(assert (=> b!6294833 m!7114256))

(assert (=> d!1975633 m!7114238))

(declare-fun m!7114920 () Bool)

(assert (=> d!1975633 m!7114920))

(assert (=> b!6294832 m!7114252))

(assert (=> b!6294832 m!7114252))

(assert (=> b!6294832 m!7114256))

(assert (=> bm!533276 m!7114238))

(assert (=> b!6293640 d!1975633))

(declare-fun call!533282 () (InoxSet Context!11198))

(declare-fun e!3827452 () (InoxSet Context!11198))

(declare-fun b!6294834 () Bool)

(assert (=> b!6294834 (= e!3827452 ((_ map or) call!533282 (derivationStepZipperUp!1389 (Context!11199 (t!378508 (exprs!6099 (Context!11199 (t!378508 (exprs!6099 (h!71270 zl!343))))))) (h!71269 s!2326))))))

(declare-fun b!6294835 () Bool)

(declare-fun e!3827451 () (InoxSet Context!11198))

(assert (=> b!6294835 (= e!3827452 e!3827451)))

(declare-fun c!1142605 () Bool)

(assert (=> b!6294835 (= c!1142605 ((_ is Cons!64820) (exprs!6099 (Context!11199 (t!378508 (exprs!6099 (h!71270 zl!343)))))))))

(declare-fun d!1975635 () Bool)

(declare-fun c!1142606 () Bool)

(declare-fun e!3827453 () Bool)

(assert (=> d!1975635 (= c!1142606 e!3827453)))

(declare-fun res!2595827 () Bool)

(assert (=> d!1975635 (=> (not res!2595827) (not e!3827453))))

(assert (=> d!1975635 (= res!2595827 ((_ is Cons!64820) (exprs!6099 (Context!11199 (t!378508 (exprs!6099 (h!71270 zl!343)))))))))

(assert (=> d!1975635 (= (derivationStepZipperUp!1389 (Context!11199 (t!378508 (exprs!6099 (h!71270 zl!343)))) (h!71269 s!2326)) e!3827452)))

(declare-fun b!6294836 () Bool)

(assert (=> b!6294836 (= e!3827453 (nullable!6208 (h!71268 (exprs!6099 (Context!11199 (t!378508 (exprs!6099 (h!71270 zl!343))))))))))

(declare-fun b!6294837 () Bool)

(assert (=> b!6294837 (= e!3827451 ((as const (Array Context!11198 Bool)) false))))

(declare-fun b!6294838 () Bool)

(assert (=> b!6294838 (= e!3827451 call!533282)))

(declare-fun bm!533277 () Bool)

(assert (=> bm!533277 (= call!533282 (derivationStepZipperDown!1463 (h!71268 (exprs!6099 (Context!11199 (t!378508 (exprs!6099 (h!71270 zl!343)))))) (Context!11199 (t!378508 (exprs!6099 (Context!11199 (t!378508 (exprs!6099 (h!71270 zl!343))))))) (h!71269 s!2326)))))

(assert (= (and d!1975635 res!2595827) b!6294836))

(assert (= (and d!1975635 c!1142606) b!6294834))

(assert (= (and d!1975635 (not c!1142606)) b!6294835))

(assert (= (and b!6294835 c!1142605) b!6294838))

(assert (= (and b!6294835 (not c!1142605)) b!6294837))

(assert (= (or b!6294834 b!6294838) bm!533277))

(declare-fun m!7114922 () Bool)

(assert (=> b!6294834 m!7114922))

(declare-fun m!7114924 () Bool)

(assert (=> b!6294836 m!7114924))

(declare-fun m!7114926 () Bool)

(assert (=> bm!533277 m!7114926))

(assert (=> b!6294089 d!1975635))

(declare-fun d!1975637 () Bool)

(assert (=> d!1975637 true))

(assert (=> d!1975637 true))

(declare-fun res!2595830 () Bool)

(assert (=> d!1975637 (= (choose!46760 lambda!345780) res!2595830)))

(assert (=> d!1975255 d!1975637))

(declare-fun d!1975639 () Bool)

(assert (=> d!1975639 (= (isEmpty!36881 (findConcatSeparation!2520 (regOne!32942 r!7292) (regTwo!32942 r!7292) Nil!64821 s!2326 s!2326)) (not ((_ is Some!16105) (findConcatSeparation!2520 (regOne!32942 r!7292) (regTwo!32942 r!7292) Nil!64821 s!2326 s!2326))))))

(assert (=> d!1975289 d!1975639))

(declare-fun bs!1574585 () Bool)

(declare-fun d!1975641 () Bool)

(assert (= bs!1574585 (and d!1975641 d!1975291)))

(declare-fun lambda!345881 () Int)

(assert (=> bs!1574585 (= lambda!345881 lambda!345822)))

(declare-fun bs!1574586 () Bool)

(assert (= bs!1574586 (and d!1975641 d!1975319)))

(assert (=> bs!1574586 (= lambda!345881 lambda!345832)))

(declare-fun bs!1574587 () Bool)

(assert (= bs!1574587 (and d!1975641 d!1975343)))

(assert (=> bs!1574587 (= lambda!345881 lambda!345839)))

(declare-fun bs!1574588 () Bool)

(assert (= bs!1574588 (and d!1975641 d!1975323)))

(assert (=> bs!1574588 (= lambda!345881 lambda!345838)))

(declare-fun bs!1574589 () Bool)

(assert (= bs!1574589 (and d!1975641 d!1975309)))

(assert (=> bs!1574589 (= lambda!345881 lambda!345823)))

(declare-fun bs!1574590 () Bool)

(assert (= bs!1574590 (and d!1975641 d!1975321)))

(assert (=> bs!1574590 (= lambda!345881 lambda!345835)))

(declare-fun bs!1574591 () Bool)

(assert (= bs!1574591 (and d!1975641 d!1975627)))

(assert (=> bs!1574591 (= lambda!345881 lambda!345880)))

(assert (=> d!1975641 (= (inv!83784 setElem!42842) (forall!15365 (exprs!6099 setElem!42842) lambda!345881))))

(declare-fun bs!1574592 () Bool)

(assert (= bs!1574592 d!1975641))

(declare-fun m!7114928 () Bool)

(assert (=> bs!1574592 m!7114928))

(assert (=> setNonEmpty!42842 d!1975641))

(declare-fun d!1975643 () Bool)

(assert (=> d!1975643 (= (nullable!6208 (reg!16544 r!7292)) (nullableFct!2159 (reg!16544 r!7292)))))

(declare-fun bs!1574593 () Bool)

(assert (= bs!1574593 d!1975643))

(declare-fun m!7114930 () Bool)

(assert (=> bs!1574593 m!7114930))

(assert (=> b!6294122 d!1975643))

(declare-fun d!1975645 () Bool)

(assert (=> d!1975645 (= (Exists!3285 lambda!345818) (choose!46760 lambda!345818))))

(declare-fun bs!1574594 () Bool)

(assert (= bs!1574594 d!1975645))

(declare-fun m!7114932 () Bool)

(assert (=> bs!1574594 m!7114932))

(assert (=> d!1975275 d!1975645))

(declare-fun d!1975647 () Bool)

(assert (=> d!1975647 (= (Exists!3285 lambda!345819) (choose!46760 lambda!345819))))

(declare-fun bs!1574595 () Bool)

(assert (= bs!1574595 d!1975647))

(declare-fun m!7114934 () Bool)

(assert (=> bs!1574595 m!7114934))

(assert (=> d!1975275 d!1975647))

(declare-fun bs!1574596 () Bool)

(declare-fun d!1975649 () Bool)

(assert (= bs!1574596 (and d!1975649 b!6294740)))

(declare-fun lambda!345886 () Int)

(assert (=> bs!1574596 (not (= lambda!345886 lambda!345871))))

(declare-fun bs!1574597 () Bool)

(assert (= bs!1574597 (and d!1975649 d!1975257)))

(assert (=> bs!1574597 (= lambda!345886 lambda!345810)))

(declare-fun bs!1574598 () Bool)

(assert (= bs!1574598 (and d!1975649 d!1975275)))

(assert (=> bs!1574598 (= lambda!345886 lambda!345818)))

(declare-fun bs!1574599 () Bool)

(assert (= bs!1574599 (and d!1975649 b!6293932)))

(assert (=> bs!1574599 (not (= lambda!345886 lambda!345828))))

(declare-fun bs!1574600 () Bool)

(assert (= bs!1574600 (and d!1975649 b!6294732)))

(assert (=> bs!1574600 (not (= lambda!345886 lambda!345872))))

(assert (=> bs!1574598 (not (= lambda!345886 lambda!345819))))

(declare-fun bs!1574601 () Bool)

(assert (= bs!1574601 (and d!1975649 b!6293467)))

(assert (=> bs!1574601 (not (= lambda!345886 lambda!345780))))

(declare-fun bs!1574602 () Bool)

(assert (= bs!1574602 (and d!1975649 d!1975563)))

(assert (=> bs!1574602 (= lambda!345886 lambda!345870)))

(assert (=> bs!1574601 (= lambda!345886 lambda!345779)))

(declare-fun bs!1574603 () Bool)

(assert (= bs!1574603 (and d!1975649 b!6293924)))

(assert (=> bs!1574603 (not (= lambda!345886 lambda!345829))))

(assert (=> d!1975649 true))

(assert (=> d!1975649 true))

(assert (=> d!1975649 true))

(declare-fun lambda!345887 () Int)

(assert (=> bs!1574596 (not (= lambda!345887 lambda!345871))))

(assert (=> bs!1574597 (not (= lambda!345887 lambda!345810))))

(assert (=> bs!1574599 (not (= lambda!345887 lambda!345828))))

(assert (=> bs!1574600 (= (and (= (regOne!32942 r!7292) (regOne!32942 (regTwo!32943 r!7292))) (= (regTwo!32942 r!7292) (regTwo!32942 (regTwo!32943 r!7292)))) (= lambda!345887 lambda!345872))))

(assert (=> bs!1574598 (= lambda!345887 lambda!345819)))

(assert (=> bs!1574601 (= lambda!345887 lambda!345780)))

(assert (=> bs!1574602 (not (= lambda!345887 lambda!345870))))

(assert (=> bs!1574598 (not (= lambda!345887 lambda!345818))))

(declare-fun bs!1574604 () Bool)

(assert (= bs!1574604 d!1975649))

(assert (=> bs!1574604 (not (= lambda!345887 lambda!345886))))

(assert (=> bs!1574601 (not (= lambda!345887 lambda!345779))))

(assert (=> bs!1574603 (= lambda!345887 lambda!345829)))

(assert (=> d!1975649 true))

(assert (=> d!1975649 true))

(assert (=> d!1975649 true))

(assert (=> d!1975649 (= (Exists!3285 lambda!345886) (Exists!3285 lambda!345887))))

(assert (=> d!1975649 true))

(declare-fun _$90!2121 () Unit!158191)

(assert (=> d!1975649 (= (choose!46762 (regOne!32942 r!7292) (regTwo!32942 r!7292) s!2326) _$90!2121)))

(declare-fun m!7114936 () Bool)

(assert (=> bs!1574604 m!7114936))

(declare-fun m!7114938 () Bool)

(assert (=> bs!1574604 m!7114938))

(assert (=> d!1975275 d!1975649))

(assert (=> d!1975275 d!1975559))

(declare-fun d!1975651 () Bool)

(assert (=> d!1975651 (= (isEmpty!36877 (tail!12016 (unfocusZipperList!1636 zl!343))) ((_ is Nil!64820) (tail!12016 (unfocusZipperList!1636 zl!343))))))

(assert (=> b!6294026 d!1975651))

(declare-fun d!1975653 () Bool)

(assert (=> d!1975653 (= (tail!12016 (unfocusZipperList!1636 zl!343)) (t!378508 (unfocusZipperList!1636 zl!343)))))

(assert (=> b!6294026 d!1975653))

(declare-fun b!6294847 () Bool)

(declare-fun e!3827464 () Bool)

(declare-fun call!533285 () Bool)

(assert (=> b!6294847 (= e!3827464 call!533285)))

(declare-fun b!6294848 () Bool)

(declare-fun res!2595840 () Bool)

(assert (=> b!6294848 (=> (not res!2595840) (not e!3827464))))

(declare-fun call!533284 () Bool)

(assert (=> b!6294848 (= res!2595840 call!533284)))

(declare-fun e!3827462 () Bool)

(assert (=> b!6294848 (= e!3827462 e!3827464)))

(declare-fun d!1975655 () Bool)

(declare-fun res!2595841 () Bool)

(declare-fun e!3827463 () Bool)

(assert (=> d!1975655 (=> res!2595841 e!3827463)))

(assert (=> d!1975655 (= res!2595841 ((_ is ElementMatch!16215) (ite c!1142453 (reg!16544 r!7292) (ite c!1142454 (regTwo!32943 r!7292) (regTwo!32942 r!7292)))))))

(assert (=> d!1975655 (= (validRegex!7951 (ite c!1142453 (reg!16544 r!7292) (ite c!1142454 (regTwo!32943 r!7292) (regTwo!32942 r!7292)))) e!3827463)))

(declare-fun c!1142607 () Bool)

(declare-fun call!533283 () Bool)

(declare-fun c!1142608 () Bool)

(declare-fun bm!533278 () Bool)

(assert (=> bm!533278 (= call!533283 (validRegex!7951 (ite c!1142607 (reg!16544 (ite c!1142453 (reg!16544 r!7292) (ite c!1142454 (regTwo!32943 r!7292) (regTwo!32942 r!7292)))) (ite c!1142608 (regTwo!32943 (ite c!1142453 (reg!16544 r!7292) (ite c!1142454 (regTwo!32943 r!7292) (regTwo!32942 r!7292)))) (regTwo!32942 (ite c!1142453 (reg!16544 r!7292) (ite c!1142454 (regTwo!32943 r!7292) (regTwo!32942 r!7292))))))))))

(declare-fun b!6294849 () Bool)

(declare-fun e!3827458 () Bool)

(assert (=> b!6294849 (= e!3827458 call!533285)))

(declare-fun b!6294850 () Bool)

(declare-fun e!3827460 () Bool)

(declare-fun e!3827459 () Bool)

(assert (=> b!6294850 (= e!3827460 e!3827459)))

(declare-fun res!2595843 () Bool)

(assert (=> b!6294850 (= res!2595843 (not (nullable!6208 (reg!16544 (ite c!1142453 (reg!16544 r!7292) (ite c!1142454 (regTwo!32943 r!7292) (regTwo!32942 r!7292)))))))))

(assert (=> b!6294850 (=> (not res!2595843) (not e!3827459))))

(declare-fun b!6294851 () Bool)

(assert (=> b!6294851 (= e!3827460 e!3827462)))

(assert (=> b!6294851 (= c!1142608 ((_ is Union!16215) (ite c!1142453 (reg!16544 r!7292) (ite c!1142454 (regTwo!32943 r!7292) (regTwo!32942 r!7292)))))))

(declare-fun bm!533279 () Bool)

(assert (=> bm!533279 (= call!533285 call!533283)))

(declare-fun b!6294852 () Bool)

(assert (=> b!6294852 (= e!3827459 call!533283)))

(declare-fun bm!533280 () Bool)

(assert (=> bm!533280 (= call!533284 (validRegex!7951 (ite c!1142608 (regOne!32943 (ite c!1142453 (reg!16544 r!7292) (ite c!1142454 (regTwo!32943 r!7292) (regTwo!32942 r!7292)))) (regOne!32942 (ite c!1142453 (reg!16544 r!7292) (ite c!1142454 (regTwo!32943 r!7292) (regTwo!32942 r!7292)))))))))

(declare-fun b!6294853 () Bool)

(declare-fun res!2595842 () Bool)

(declare-fun e!3827461 () Bool)

(assert (=> b!6294853 (=> res!2595842 e!3827461)))

(assert (=> b!6294853 (= res!2595842 (not ((_ is Concat!25060) (ite c!1142453 (reg!16544 r!7292) (ite c!1142454 (regTwo!32943 r!7292) (regTwo!32942 r!7292))))))))

(assert (=> b!6294853 (= e!3827462 e!3827461)))

(declare-fun b!6294854 () Bool)

(assert (=> b!6294854 (= e!3827461 e!3827458)))

(declare-fun res!2595839 () Bool)

(assert (=> b!6294854 (=> (not res!2595839) (not e!3827458))))

(assert (=> b!6294854 (= res!2595839 call!533284)))

(declare-fun b!6294855 () Bool)

(assert (=> b!6294855 (= e!3827463 e!3827460)))

(assert (=> b!6294855 (= c!1142607 ((_ is Star!16215) (ite c!1142453 (reg!16544 r!7292) (ite c!1142454 (regTwo!32943 r!7292) (regTwo!32942 r!7292)))))))

(assert (= (and d!1975655 (not res!2595841)) b!6294855))

(assert (= (and b!6294855 c!1142607) b!6294850))

(assert (= (and b!6294855 (not c!1142607)) b!6294851))

(assert (= (and b!6294850 res!2595843) b!6294852))

(assert (= (and b!6294851 c!1142608) b!6294848))

(assert (= (and b!6294851 (not c!1142608)) b!6294853))

(assert (= (and b!6294848 res!2595840) b!6294847))

(assert (= (and b!6294853 (not res!2595842)) b!6294854))

(assert (= (and b!6294854 res!2595839) b!6294849))

(assert (= (or b!6294847 b!6294849) bm!533279))

(assert (= (or b!6294848 b!6294854) bm!533280))

(assert (= (or b!6294852 bm!533279) bm!533278))

(declare-fun m!7114940 () Bool)

(assert (=> bm!533278 m!7114940))

(declare-fun m!7114942 () Bool)

(assert (=> b!6294850 m!7114942))

(declare-fun m!7114944 () Bool)

(assert (=> bm!533280 m!7114944))

(assert (=> bm!533165 d!1975655))

(assert (=> d!1975329 d!1975335))

(declare-fun d!1975657 () Bool)

(assert (=> d!1975657 (= (flatMap!1720 z!1189 lambda!345781) (dynLambda!25657 lambda!345781 (h!71270 zl!343)))))

(assert (=> d!1975657 true))

(declare-fun _$13!3418 () Unit!158191)

(assert (=> d!1975657 (= (choose!46766 z!1189 (h!71270 zl!343) lambda!345781) _$13!3418)))

(declare-fun b_lambda!239529 () Bool)

(assert (=> (not b_lambda!239529) (not d!1975657)))

(declare-fun bs!1574605 () Bool)

(assert (= bs!1574605 d!1975657))

(assert (=> bs!1574605 m!7113936))

(assert (=> bs!1574605 m!7114310))

(assert (=> d!1975329 d!1975657))

(assert (=> bm!533131 d!1975567))

(declare-fun d!1975659 () Bool)

(assert (=> d!1975659 true))

(assert (=> d!1975659 true))

(declare-fun res!2595844 () Bool)

(assert (=> d!1975659 (= (choose!46760 lambda!345779) res!2595844)))

(assert (=> d!1975235 d!1975659))

(declare-fun b!6294867 () Bool)

(declare-fun e!3827469 () Bool)

(declare-fun lt!2357656 () List!64945)

(assert (=> b!6294867 (= e!3827469 (or (not (= (t!378509 s!2326) Nil!64821)) (= lt!2357656 (++!14288 Nil!64821 (Cons!64821 (h!71269 s!2326) Nil!64821)))))))

(declare-fun b!6294865 () Bool)

(declare-fun e!3827470 () List!64945)

(assert (=> b!6294865 (= e!3827470 (Cons!64821 (h!71269 (++!14288 Nil!64821 (Cons!64821 (h!71269 s!2326) Nil!64821))) (++!14288 (t!378509 (++!14288 Nil!64821 (Cons!64821 (h!71269 s!2326) Nil!64821))) (t!378509 s!2326))))))

(declare-fun d!1975661 () Bool)

(assert (=> d!1975661 e!3827469))

(declare-fun res!2595849 () Bool)

(assert (=> d!1975661 (=> (not res!2595849) (not e!3827469))))

(declare-fun content!12195 (List!64945) (InoxSet C!32700))

(assert (=> d!1975661 (= res!2595849 (= (content!12195 lt!2357656) ((_ map or) (content!12195 (++!14288 Nil!64821 (Cons!64821 (h!71269 s!2326) Nil!64821))) (content!12195 (t!378509 s!2326)))))))

(assert (=> d!1975661 (= lt!2357656 e!3827470)))

(declare-fun c!1142611 () Bool)

(assert (=> d!1975661 (= c!1142611 ((_ is Nil!64821) (++!14288 Nil!64821 (Cons!64821 (h!71269 s!2326) Nil!64821))))))

(assert (=> d!1975661 (= (++!14288 (++!14288 Nil!64821 (Cons!64821 (h!71269 s!2326) Nil!64821)) (t!378509 s!2326)) lt!2357656)))

(declare-fun b!6294866 () Bool)

(declare-fun res!2595850 () Bool)

(assert (=> b!6294866 (=> (not res!2595850) (not e!3827469))))

(declare-fun size!40317 (List!64945) Int)

(assert (=> b!6294866 (= res!2595850 (= (size!40317 lt!2357656) (+ (size!40317 (++!14288 Nil!64821 (Cons!64821 (h!71269 s!2326) Nil!64821))) (size!40317 (t!378509 s!2326)))))))

(declare-fun b!6294864 () Bool)

(assert (=> b!6294864 (= e!3827470 (t!378509 s!2326))))

(assert (= (and d!1975661 c!1142611) b!6294864))

(assert (= (and d!1975661 (not c!1142611)) b!6294865))

(assert (= (and d!1975661 res!2595849) b!6294866))

(assert (= (and b!6294866 res!2595850) b!6294867))

(declare-fun m!7114946 () Bool)

(assert (=> b!6294865 m!7114946))

(declare-fun m!7114948 () Bool)

(assert (=> d!1975661 m!7114948))

(assert (=> d!1975661 m!7114086))

(declare-fun m!7114950 () Bool)

(assert (=> d!1975661 m!7114950))

(declare-fun m!7114952 () Bool)

(assert (=> d!1975661 m!7114952))

(declare-fun m!7114954 () Bool)

(assert (=> b!6294866 m!7114954))

(assert (=> b!6294866 m!7114086))

(declare-fun m!7114956 () Bool)

(assert (=> b!6294866 m!7114956))

(declare-fun m!7114958 () Bool)

(assert (=> b!6294866 m!7114958))

(assert (=> b!6293646 d!1975661))

(declare-fun b!6294871 () Bool)

(declare-fun e!3827471 () Bool)

(declare-fun lt!2357657 () List!64945)

(assert (=> b!6294871 (= e!3827471 (or (not (= (Cons!64821 (h!71269 s!2326) Nil!64821) Nil!64821)) (= lt!2357657 Nil!64821)))))

(declare-fun b!6294869 () Bool)

(declare-fun e!3827472 () List!64945)

(assert (=> b!6294869 (= e!3827472 (Cons!64821 (h!71269 Nil!64821) (++!14288 (t!378509 Nil!64821) (Cons!64821 (h!71269 s!2326) Nil!64821))))))

(declare-fun d!1975663 () Bool)

(assert (=> d!1975663 e!3827471))

(declare-fun res!2595851 () Bool)

(assert (=> d!1975663 (=> (not res!2595851) (not e!3827471))))

(assert (=> d!1975663 (= res!2595851 (= (content!12195 lt!2357657) ((_ map or) (content!12195 Nil!64821) (content!12195 (Cons!64821 (h!71269 s!2326) Nil!64821)))))))

(assert (=> d!1975663 (= lt!2357657 e!3827472)))

(declare-fun c!1142612 () Bool)

(assert (=> d!1975663 (= c!1142612 ((_ is Nil!64821) Nil!64821))))

(assert (=> d!1975663 (= (++!14288 Nil!64821 (Cons!64821 (h!71269 s!2326) Nil!64821)) lt!2357657)))

(declare-fun b!6294870 () Bool)

(declare-fun res!2595852 () Bool)

(assert (=> b!6294870 (=> (not res!2595852) (not e!3827471))))

(assert (=> b!6294870 (= res!2595852 (= (size!40317 lt!2357657) (+ (size!40317 Nil!64821) (size!40317 (Cons!64821 (h!71269 s!2326) Nil!64821)))))))

(declare-fun b!6294868 () Bool)

(assert (=> b!6294868 (= e!3827472 (Cons!64821 (h!71269 s!2326) Nil!64821))))

(assert (= (and d!1975663 c!1142612) b!6294868))

(assert (= (and d!1975663 (not c!1142612)) b!6294869))

(assert (= (and d!1975663 res!2595851) b!6294870))

(assert (= (and b!6294870 res!2595852) b!6294871))

(declare-fun m!7114960 () Bool)

(assert (=> b!6294869 m!7114960))

(declare-fun m!7114962 () Bool)

(assert (=> d!1975663 m!7114962))

(declare-fun m!7114964 () Bool)

(assert (=> d!1975663 m!7114964))

(declare-fun m!7114966 () Bool)

(assert (=> d!1975663 m!7114966))

(declare-fun m!7114968 () Bool)

(assert (=> b!6294870 m!7114968))

(declare-fun m!7114970 () Bool)

(assert (=> b!6294870 m!7114970))

(declare-fun m!7114972 () Bool)

(assert (=> b!6294870 m!7114972))

(assert (=> b!6293646 d!1975663))

(declare-fun d!1975665 () Bool)

(assert (=> d!1975665 (= (++!14288 (++!14288 Nil!64821 (Cons!64821 (h!71269 s!2326) Nil!64821)) (t!378509 s!2326)) s!2326)))

(declare-fun lt!2357660 () Unit!158191)

(declare-fun choose!46768 (List!64945 C!32700 List!64945 List!64945) Unit!158191)

(assert (=> d!1975665 (= lt!2357660 (choose!46768 Nil!64821 (h!71269 s!2326) (t!378509 s!2326) s!2326))))

(assert (=> d!1975665 (= (++!14288 Nil!64821 (Cons!64821 (h!71269 s!2326) (t!378509 s!2326))) s!2326)))

(assert (=> d!1975665 (= (lemmaMoveElementToOtherListKeepsConcatEq!2383 Nil!64821 (h!71269 s!2326) (t!378509 s!2326) s!2326) lt!2357660)))

(declare-fun bs!1574606 () Bool)

(assert (= bs!1574606 d!1975665))

(assert (=> bs!1574606 m!7114086))

(assert (=> bs!1574606 m!7114086))

(assert (=> bs!1574606 m!7114088))

(declare-fun m!7114974 () Bool)

(assert (=> bs!1574606 m!7114974))

(declare-fun m!7114976 () Bool)

(assert (=> bs!1574606 m!7114976))

(assert (=> b!6293646 d!1975665))

(declare-fun b!6294872 () Bool)

(declare-fun res!2595857 () Bool)

(declare-fun e!3827474 () Bool)

(assert (=> b!6294872 (=> (not res!2595857) (not e!3827474))))

(declare-fun lt!2357663 () Option!16106)

(assert (=> b!6294872 (= res!2595857 (matchR!8398 (regTwo!32942 r!7292) (_2!36497 (get!22411 lt!2357663))))))

(declare-fun b!6294873 () Bool)

(declare-fun e!3827477 () Bool)

(assert (=> b!6294873 (= e!3827477 (matchR!8398 (regTwo!32942 r!7292) (t!378509 s!2326)))))

(declare-fun b!6294874 () Bool)

(declare-fun e!3827476 () Bool)

(assert (=> b!6294874 (= e!3827476 (not (isDefined!12809 lt!2357663)))))

(declare-fun d!1975667 () Bool)

(assert (=> d!1975667 e!3827476))

(declare-fun res!2595853 () Bool)

(assert (=> d!1975667 (=> res!2595853 e!3827476)))

(assert (=> d!1975667 (= res!2595853 e!3827474)))

(declare-fun res!2595856 () Bool)

(assert (=> d!1975667 (=> (not res!2595856) (not e!3827474))))

(assert (=> d!1975667 (= res!2595856 (isDefined!12809 lt!2357663))))

(declare-fun e!3827475 () Option!16106)

(assert (=> d!1975667 (= lt!2357663 e!3827475)))

(declare-fun c!1142614 () Bool)

(assert (=> d!1975667 (= c!1142614 e!3827477)))

(declare-fun res!2595854 () Bool)

(assert (=> d!1975667 (=> (not res!2595854) (not e!3827477))))

(assert (=> d!1975667 (= res!2595854 (matchR!8398 (regOne!32942 r!7292) (++!14288 Nil!64821 (Cons!64821 (h!71269 s!2326) Nil!64821))))))

(assert (=> d!1975667 (validRegex!7951 (regOne!32942 r!7292))))

(assert (=> d!1975667 (= (findConcatSeparation!2520 (regOne!32942 r!7292) (regTwo!32942 r!7292) (++!14288 Nil!64821 (Cons!64821 (h!71269 s!2326) Nil!64821)) (t!378509 s!2326) s!2326) lt!2357663)))

(declare-fun b!6294875 () Bool)

(declare-fun e!3827473 () Option!16106)

(assert (=> b!6294875 (= e!3827475 e!3827473)))

(declare-fun c!1142613 () Bool)

(assert (=> b!6294875 (= c!1142613 ((_ is Nil!64821) (t!378509 s!2326)))))

(declare-fun b!6294876 () Bool)

(assert (=> b!6294876 (= e!3827473 None!16105)))

(declare-fun b!6294877 () Bool)

(assert (=> b!6294877 (= e!3827474 (= (++!14288 (_1!36497 (get!22411 lt!2357663)) (_2!36497 (get!22411 lt!2357663))) s!2326))))

(declare-fun b!6294878 () Bool)

(declare-fun res!2595855 () Bool)

(assert (=> b!6294878 (=> (not res!2595855) (not e!3827474))))

(assert (=> b!6294878 (= res!2595855 (matchR!8398 (regOne!32942 r!7292) (_1!36497 (get!22411 lt!2357663))))))

(declare-fun b!6294879 () Bool)

(declare-fun lt!2357662 () Unit!158191)

(declare-fun lt!2357661 () Unit!158191)

(assert (=> b!6294879 (= lt!2357662 lt!2357661)))

(assert (=> b!6294879 (= (++!14288 (++!14288 (++!14288 Nil!64821 (Cons!64821 (h!71269 s!2326) Nil!64821)) (Cons!64821 (h!71269 (t!378509 s!2326)) Nil!64821)) (t!378509 (t!378509 s!2326))) s!2326)))

(assert (=> b!6294879 (= lt!2357661 (lemmaMoveElementToOtherListKeepsConcatEq!2383 (++!14288 Nil!64821 (Cons!64821 (h!71269 s!2326) Nil!64821)) (h!71269 (t!378509 s!2326)) (t!378509 (t!378509 s!2326)) s!2326))))

(assert (=> b!6294879 (= e!3827473 (findConcatSeparation!2520 (regOne!32942 r!7292) (regTwo!32942 r!7292) (++!14288 (++!14288 Nil!64821 (Cons!64821 (h!71269 s!2326) Nil!64821)) (Cons!64821 (h!71269 (t!378509 s!2326)) Nil!64821)) (t!378509 (t!378509 s!2326)) s!2326))))

(declare-fun b!6294880 () Bool)

(assert (=> b!6294880 (= e!3827475 (Some!16105 (tuple2!66389 (++!14288 Nil!64821 (Cons!64821 (h!71269 s!2326) Nil!64821)) (t!378509 s!2326))))))

(assert (= (and d!1975667 res!2595854) b!6294873))

(assert (= (and d!1975667 c!1142614) b!6294880))

(assert (= (and d!1975667 (not c!1142614)) b!6294875))

(assert (= (and b!6294875 c!1142613) b!6294876))

(assert (= (and b!6294875 (not c!1142613)) b!6294879))

(assert (= (and d!1975667 res!2595856) b!6294878))

(assert (= (and b!6294878 res!2595855) b!6294872))

(assert (= (and b!6294872 res!2595857) b!6294877))

(assert (= (and d!1975667 (not res!2595853)) b!6294874))

(declare-fun m!7114978 () Bool)

(assert (=> b!6294873 m!7114978))

(declare-fun m!7114980 () Bool)

(assert (=> d!1975667 m!7114980))

(assert (=> d!1975667 m!7114086))

(declare-fun m!7114982 () Bool)

(assert (=> d!1975667 m!7114982))

(assert (=> d!1975667 m!7114080))

(declare-fun m!7114984 () Bool)

(assert (=> b!6294878 m!7114984))

(declare-fun m!7114986 () Bool)

(assert (=> b!6294878 m!7114986))

(assert (=> b!6294879 m!7114086))

(declare-fun m!7114988 () Bool)

(assert (=> b!6294879 m!7114988))

(assert (=> b!6294879 m!7114988))

(declare-fun m!7114990 () Bool)

(assert (=> b!6294879 m!7114990))

(assert (=> b!6294879 m!7114086))

(declare-fun m!7114992 () Bool)

(assert (=> b!6294879 m!7114992))

(assert (=> b!6294879 m!7114988))

(declare-fun m!7114994 () Bool)

(assert (=> b!6294879 m!7114994))

(assert (=> b!6294877 m!7114984))

(declare-fun m!7114996 () Bool)

(assert (=> b!6294877 m!7114996))

(assert (=> b!6294872 m!7114984))

(declare-fun m!7114998 () Bool)

(assert (=> b!6294872 m!7114998))

(assert (=> b!6294874 m!7114980))

(assert (=> b!6293646 d!1975667))

(declare-fun bs!1574607 () Bool)

(declare-fun d!1975669 () Bool)

(assert (= bs!1574607 (and d!1975669 d!1975291)))

(declare-fun lambda!345888 () Int)

(assert (=> bs!1574607 (= lambda!345888 lambda!345822)))

(declare-fun bs!1574608 () Bool)

(assert (= bs!1574608 (and d!1975669 d!1975319)))

(assert (=> bs!1574608 (= lambda!345888 lambda!345832)))

(declare-fun bs!1574609 () Bool)

(assert (= bs!1574609 (and d!1975669 d!1975343)))

(assert (=> bs!1574609 (= lambda!345888 lambda!345839)))

(declare-fun bs!1574610 () Bool)

(assert (= bs!1574610 (and d!1975669 d!1975323)))

(assert (=> bs!1574610 (= lambda!345888 lambda!345838)))

(declare-fun bs!1574611 () Bool)

(assert (= bs!1574611 (and d!1975669 d!1975309)))

(assert (=> bs!1574611 (= lambda!345888 lambda!345823)))

(declare-fun bs!1574612 () Bool)

(assert (= bs!1574612 (and d!1975669 d!1975641)))

(assert (=> bs!1574612 (= lambda!345888 lambda!345881)))

(declare-fun bs!1574613 () Bool)

(assert (= bs!1574613 (and d!1975669 d!1975321)))

(assert (=> bs!1574613 (= lambda!345888 lambda!345835)))

(declare-fun bs!1574614 () Bool)

(assert (= bs!1574614 (and d!1975669 d!1975627)))

(assert (=> bs!1574614 (= lambda!345888 lambda!345880)))

(declare-fun b!6294881 () Bool)

(declare-fun e!3827481 () Bool)

(declare-fun lt!2357664 () Regex!16215)

(assert (=> b!6294881 (= e!3827481 (= lt!2357664 (head!12931 (t!378508 (unfocusZipperList!1636 zl!343)))))))

(declare-fun b!6294882 () Bool)

(declare-fun e!3827482 () Bool)

(assert (=> b!6294882 (= e!3827482 e!3827481)))

(declare-fun c!1142616 () Bool)

(assert (=> b!6294882 (= c!1142616 (isEmpty!36877 (tail!12016 (t!378508 (unfocusZipperList!1636 zl!343)))))))

(declare-fun b!6294883 () Bool)

(declare-fun e!3827483 () Regex!16215)

(assert (=> b!6294883 (= e!3827483 (h!71268 (t!378508 (unfocusZipperList!1636 zl!343))))))

(declare-fun b!6294884 () Bool)

(declare-fun e!3827480 () Regex!16215)

(assert (=> b!6294884 (= e!3827480 EmptyLang!16215)))

(declare-fun b!6294885 () Bool)

(assert (=> b!6294885 (= e!3827481 (isUnion!1058 lt!2357664))))

(declare-fun b!6294886 () Bool)

(assert (=> b!6294886 (= e!3827480 (Union!16215 (h!71268 (t!378508 (unfocusZipperList!1636 zl!343))) (generalisedUnion!2059 (t!378508 (t!378508 (unfocusZipperList!1636 zl!343))))))))

(declare-fun b!6294887 () Bool)

(assert (=> b!6294887 (= e!3827482 (isEmptyLang!1628 lt!2357664))))

(declare-fun b!6294888 () Bool)

(declare-fun e!3827479 () Bool)

(assert (=> b!6294888 (= e!3827479 (isEmpty!36877 (t!378508 (t!378508 (unfocusZipperList!1636 zl!343)))))))

(declare-fun e!3827478 () Bool)

(assert (=> d!1975669 e!3827478))

(declare-fun res!2595858 () Bool)

(assert (=> d!1975669 (=> (not res!2595858) (not e!3827478))))

(assert (=> d!1975669 (= res!2595858 (validRegex!7951 lt!2357664))))

(assert (=> d!1975669 (= lt!2357664 e!3827483)))

(declare-fun c!1142618 () Bool)

(assert (=> d!1975669 (= c!1142618 e!3827479)))

(declare-fun res!2595859 () Bool)

(assert (=> d!1975669 (=> (not res!2595859) (not e!3827479))))

(assert (=> d!1975669 (= res!2595859 ((_ is Cons!64820) (t!378508 (unfocusZipperList!1636 zl!343))))))

(assert (=> d!1975669 (forall!15365 (t!378508 (unfocusZipperList!1636 zl!343)) lambda!345888)))

(assert (=> d!1975669 (= (generalisedUnion!2059 (t!378508 (unfocusZipperList!1636 zl!343))) lt!2357664)))

(declare-fun b!6294889 () Bool)

(assert (=> b!6294889 (= e!3827483 e!3827480)))

(declare-fun c!1142617 () Bool)

(assert (=> b!6294889 (= c!1142617 ((_ is Cons!64820) (t!378508 (unfocusZipperList!1636 zl!343))))))

(declare-fun b!6294890 () Bool)

(assert (=> b!6294890 (= e!3827478 e!3827482)))

(declare-fun c!1142615 () Bool)

(assert (=> b!6294890 (= c!1142615 (isEmpty!36877 (t!378508 (unfocusZipperList!1636 zl!343))))))

(assert (= (and d!1975669 res!2595859) b!6294888))

(assert (= (and d!1975669 c!1142618) b!6294883))

(assert (= (and d!1975669 (not c!1142618)) b!6294889))

(assert (= (and b!6294889 c!1142617) b!6294886))

(assert (= (and b!6294889 (not c!1142617)) b!6294884))

(assert (= (and d!1975669 res!2595858) b!6294890))

(assert (= (and b!6294890 c!1142615) b!6294887))

(assert (= (and b!6294890 (not c!1142615)) b!6294882))

(assert (= (and b!6294882 c!1142616) b!6294881))

(assert (= (and b!6294882 (not c!1142616)) b!6294885))

(declare-fun m!7115000 () Bool)

(assert (=> b!6294885 m!7115000))

(declare-fun m!7115002 () Bool)

(assert (=> b!6294882 m!7115002))

(assert (=> b!6294882 m!7115002))

(declare-fun m!7115004 () Bool)

(assert (=> b!6294882 m!7115004))

(declare-fun m!7115006 () Bool)

(assert (=> b!6294886 m!7115006))

(declare-fun m!7115008 () Bool)

(assert (=> b!6294887 m!7115008))

(declare-fun m!7115010 () Bool)

(assert (=> b!6294881 m!7115010))

(declare-fun m!7115012 () Bool)

(assert (=> d!1975669 m!7115012))

(declare-fun m!7115014 () Bool)

(assert (=> d!1975669 m!7115014))

(declare-fun m!7115016 () Bool)

(assert (=> b!6294888 m!7115016))

(assert (=> b!6294890 m!7114294))

(assert (=> b!6294030 d!1975669))

(declare-fun d!1975671 () Bool)

(declare-fun c!1142619 () Bool)

(assert (=> d!1975671 (= c!1142619 (isEmpty!36882 (tail!12015 (t!378509 s!2326))))))

(declare-fun e!3827484 () Bool)

(assert (=> d!1975671 (= (matchZipper!2227 (derivationStepZipper!2181 lt!2357538 (head!12930 (t!378509 s!2326))) (tail!12015 (t!378509 s!2326))) e!3827484)))

(declare-fun b!6294891 () Bool)

(assert (=> b!6294891 (= e!3827484 (nullableZipper!1985 (derivationStepZipper!2181 lt!2357538 (head!12930 (t!378509 s!2326)))))))

(declare-fun b!6294892 () Bool)

(assert (=> b!6294892 (= e!3827484 (matchZipper!2227 (derivationStepZipper!2181 (derivationStepZipper!2181 lt!2357538 (head!12930 (t!378509 s!2326))) (head!12930 (tail!12015 (t!378509 s!2326)))) (tail!12015 (tail!12015 (t!378509 s!2326)))))))

(assert (= (and d!1975671 c!1142619) b!6294891))

(assert (= (and d!1975671 (not c!1142619)) b!6294892))

(assert (=> d!1975671 m!7114220))

(assert (=> d!1975671 m!7114844))

(assert (=> b!6294891 m!7114218))

(declare-fun m!7115018 () Bool)

(assert (=> b!6294891 m!7115018))

(assert (=> b!6294892 m!7114220))

(assert (=> b!6294892 m!7114848))

(assert (=> b!6294892 m!7114218))

(assert (=> b!6294892 m!7114848))

(declare-fun m!7115020 () Bool)

(assert (=> b!6294892 m!7115020))

(assert (=> b!6294892 m!7114220))

(assert (=> b!6294892 m!7114852))

(assert (=> b!6294892 m!7115020))

(assert (=> b!6294892 m!7114852))

(declare-fun m!7115022 () Bool)

(assert (=> b!6294892 m!7115022))

(assert (=> b!6293884 d!1975671))

(declare-fun bs!1574615 () Bool)

(declare-fun d!1975673 () Bool)

(assert (= bs!1574615 (and d!1975673 b!6293461)))

(declare-fun lambda!345889 () Int)

(assert (=> bs!1574615 (= (= (head!12930 (t!378509 s!2326)) (h!71269 s!2326)) (= lambda!345889 lambda!345781))))

(declare-fun bs!1574616 () Bool)

(assert (= bs!1574616 (and d!1975673 d!1975589)))

(assert (=> bs!1574616 (= lambda!345889 lambda!345879)))

(assert (=> d!1975673 true))

(assert (=> d!1975673 (= (derivationStepZipper!2181 lt!2357538 (head!12930 (t!378509 s!2326))) (flatMap!1720 lt!2357538 lambda!345889))))

(declare-fun bs!1574617 () Bool)

(assert (= bs!1574617 d!1975673))

(declare-fun m!7115024 () Bool)

(assert (=> bs!1574617 m!7115024))

(assert (=> b!6293884 d!1975673))

(assert (=> b!6293884 d!1975591))

(assert (=> b!6293884 d!1975593))

(declare-fun b!6294893 () Bool)

(declare-fun call!533286 () (InoxSet Context!11198))

(declare-fun e!3827486 () (InoxSet Context!11198))

(assert (=> b!6294893 (= e!3827486 ((_ map or) call!533286 (derivationStepZipperUp!1389 (Context!11199 (t!378508 (exprs!6099 (Context!11199 (t!378508 (exprs!6099 (Context!11199 (Cons!64820 (h!71268 (exprs!6099 (h!71270 zl!343))) (t!378508 (exprs!6099 (h!71270 zl!343))))))))))) (h!71269 s!2326))))))

(declare-fun b!6294894 () Bool)

(declare-fun e!3827485 () (InoxSet Context!11198))

(assert (=> b!6294894 (= e!3827486 e!3827485)))

(declare-fun c!1142620 () Bool)

(assert (=> b!6294894 (= c!1142620 ((_ is Cons!64820) (exprs!6099 (Context!11199 (t!378508 (exprs!6099 (Context!11199 (Cons!64820 (h!71268 (exprs!6099 (h!71270 zl!343))) (t!378508 (exprs!6099 (h!71270 zl!343)))))))))))))

(declare-fun d!1975675 () Bool)

(declare-fun c!1142621 () Bool)

(declare-fun e!3827487 () Bool)

(assert (=> d!1975675 (= c!1142621 e!3827487)))

(declare-fun res!2595860 () Bool)

(assert (=> d!1975675 (=> (not res!2595860) (not e!3827487))))

(assert (=> d!1975675 (= res!2595860 ((_ is Cons!64820) (exprs!6099 (Context!11199 (t!378508 (exprs!6099 (Context!11199 (Cons!64820 (h!71268 (exprs!6099 (h!71270 zl!343))) (t!378508 (exprs!6099 (h!71270 zl!343)))))))))))))

(assert (=> d!1975675 (= (derivationStepZipperUp!1389 (Context!11199 (t!378508 (exprs!6099 (Context!11199 (Cons!64820 (h!71268 (exprs!6099 (h!71270 zl!343))) (t!378508 (exprs!6099 (h!71270 zl!343)))))))) (h!71269 s!2326)) e!3827486)))

(declare-fun b!6294895 () Bool)

(assert (=> b!6294895 (= e!3827487 (nullable!6208 (h!71268 (exprs!6099 (Context!11199 (t!378508 (exprs!6099 (Context!11199 (Cons!64820 (h!71268 (exprs!6099 (h!71270 zl!343))) (t!378508 (exprs!6099 (h!71270 zl!343))))))))))))))

(declare-fun b!6294896 () Bool)

(assert (=> b!6294896 (= e!3827485 ((as const (Array Context!11198 Bool)) false))))

(declare-fun b!6294897 () Bool)

(assert (=> b!6294897 (= e!3827485 call!533286)))

(declare-fun bm!533281 () Bool)

(assert (=> bm!533281 (= call!533286 (derivationStepZipperDown!1463 (h!71268 (exprs!6099 (Context!11199 (t!378508 (exprs!6099 (Context!11199 (Cons!64820 (h!71268 (exprs!6099 (h!71270 zl!343))) (t!378508 (exprs!6099 (h!71270 zl!343)))))))))) (Context!11199 (t!378508 (exprs!6099 (Context!11199 (t!378508 (exprs!6099 (Context!11199 (Cons!64820 (h!71268 (exprs!6099 (h!71270 zl!343))) (t!378508 (exprs!6099 (h!71270 zl!343))))))))))) (h!71269 s!2326)))))

(assert (= (and d!1975675 res!2595860) b!6294895))

(assert (= (and d!1975675 c!1142621) b!6294893))

(assert (= (and d!1975675 (not c!1142621)) b!6294894))

(assert (= (and b!6294894 c!1142620) b!6294897))

(assert (= (and b!6294894 (not c!1142620)) b!6294896))

(assert (= (or b!6294893 b!6294897) bm!533281))

(declare-fun m!7115026 () Bool)

(assert (=> b!6294893 m!7115026))

(declare-fun m!7115028 () Bool)

(assert (=> b!6294895 m!7115028))

(declare-fun m!7115030 () Bool)

(assert (=> bm!533281 m!7115030))

(assert (=> b!6294051 d!1975675))

(declare-fun b!6294901 () Bool)

(declare-fun e!3827488 () Bool)

(declare-fun lt!2357665 () List!64945)

(assert (=> b!6294901 (= e!3827488 (or (not (= (_2!36497 (get!22411 lt!2357577)) Nil!64821)) (= lt!2357665 (_1!36497 (get!22411 lt!2357577)))))))

(declare-fun b!6294899 () Bool)

(declare-fun e!3827489 () List!64945)

(assert (=> b!6294899 (= e!3827489 (Cons!64821 (h!71269 (_1!36497 (get!22411 lt!2357577))) (++!14288 (t!378509 (_1!36497 (get!22411 lt!2357577))) (_2!36497 (get!22411 lt!2357577)))))))

(declare-fun d!1975677 () Bool)

(assert (=> d!1975677 e!3827488))

(declare-fun res!2595861 () Bool)

(assert (=> d!1975677 (=> (not res!2595861) (not e!3827488))))

(assert (=> d!1975677 (= res!2595861 (= (content!12195 lt!2357665) ((_ map or) (content!12195 (_1!36497 (get!22411 lt!2357577))) (content!12195 (_2!36497 (get!22411 lt!2357577))))))))

(assert (=> d!1975677 (= lt!2357665 e!3827489)))

(declare-fun c!1142622 () Bool)

(assert (=> d!1975677 (= c!1142622 ((_ is Nil!64821) (_1!36497 (get!22411 lt!2357577))))))

(assert (=> d!1975677 (= (++!14288 (_1!36497 (get!22411 lt!2357577)) (_2!36497 (get!22411 lt!2357577))) lt!2357665)))

(declare-fun b!6294900 () Bool)

(declare-fun res!2595862 () Bool)

(assert (=> b!6294900 (=> (not res!2595862) (not e!3827488))))

(assert (=> b!6294900 (= res!2595862 (= (size!40317 lt!2357665) (+ (size!40317 (_1!36497 (get!22411 lt!2357577))) (size!40317 (_2!36497 (get!22411 lt!2357577))))))))

(declare-fun b!6294898 () Bool)

(assert (=> b!6294898 (= e!3827489 (_2!36497 (get!22411 lt!2357577)))))

(assert (= (and d!1975677 c!1142622) b!6294898))

(assert (= (and d!1975677 (not c!1142622)) b!6294899))

(assert (= (and d!1975677 res!2595861) b!6294900))

(assert (= (and b!6294900 res!2595862) b!6294901))

(declare-fun m!7115032 () Bool)

(assert (=> b!6294899 m!7115032))

(declare-fun m!7115034 () Bool)

(assert (=> d!1975677 m!7115034))

(declare-fun m!7115036 () Bool)

(assert (=> d!1975677 m!7115036))

(declare-fun m!7115038 () Bool)

(assert (=> d!1975677 m!7115038))

(declare-fun m!7115040 () Bool)

(assert (=> b!6294900 m!7115040))

(declare-fun m!7115042 () Bool)

(assert (=> b!6294900 m!7115042))

(declare-fun m!7115044 () Bool)

(assert (=> b!6294900 m!7115044))

(assert (=> b!6293644 d!1975677))

(assert (=> b!6293644 d!1975553))

(declare-fun d!1975679 () Bool)

(assert (=> d!1975679 (= (isEmpty!36877 (t!378508 (unfocusZipperList!1636 zl!343))) ((_ is Nil!64820) (t!378508 (unfocusZipperList!1636 zl!343))))))

(assert (=> b!6294032 d!1975679))

(declare-fun bs!1574618 () Bool)

(declare-fun d!1975681 () Bool)

(assert (= bs!1574618 (and d!1975681 d!1975291)))

(declare-fun lambda!345890 () Int)

(assert (=> bs!1574618 (= lambda!345890 lambda!345822)))

(declare-fun bs!1574619 () Bool)

(assert (= bs!1574619 (and d!1975681 d!1975669)))

(assert (=> bs!1574619 (= lambda!345890 lambda!345888)))

(declare-fun bs!1574620 () Bool)

(assert (= bs!1574620 (and d!1975681 d!1975319)))

(assert (=> bs!1574620 (= lambda!345890 lambda!345832)))

(declare-fun bs!1574621 () Bool)

(assert (= bs!1574621 (and d!1975681 d!1975343)))

(assert (=> bs!1574621 (= lambda!345890 lambda!345839)))

(declare-fun bs!1574622 () Bool)

(assert (= bs!1574622 (and d!1975681 d!1975323)))

(assert (=> bs!1574622 (= lambda!345890 lambda!345838)))

(declare-fun bs!1574623 () Bool)

(assert (= bs!1574623 (and d!1975681 d!1975309)))

(assert (=> bs!1574623 (= lambda!345890 lambda!345823)))

(declare-fun bs!1574624 () Bool)

(assert (= bs!1574624 (and d!1975681 d!1975641)))

(assert (=> bs!1574624 (= lambda!345890 lambda!345881)))

(declare-fun bs!1574625 () Bool)

(assert (= bs!1574625 (and d!1975681 d!1975321)))

(assert (=> bs!1574625 (= lambda!345890 lambda!345835)))

(declare-fun bs!1574626 () Bool)

(assert (= bs!1574626 (and d!1975681 d!1975627)))

(assert (=> bs!1574626 (= lambda!345890 lambda!345880)))

(declare-fun b!6294902 () Bool)

(declare-fun e!3827492 () Regex!16215)

(assert (=> b!6294902 (= e!3827492 (Concat!25060 (h!71268 (t!378508 (exprs!6099 (h!71270 zl!343)))) (generalisedConcat!1812 (t!378508 (t!378508 (exprs!6099 (h!71270 zl!343)))))))))

(declare-fun b!6294903 () Bool)

(assert (=> b!6294903 (= e!3827492 EmptyExpr!16215)))

(declare-fun b!6294904 () Bool)

(declare-fun e!3827494 () Bool)

(assert (=> b!6294904 (= e!3827494 (isEmpty!36877 (t!378508 (t!378508 (exprs!6099 (h!71270 zl!343))))))))

(declare-fun e!3827493 () Bool)

(assert (=> d!1975681 e!3827493))

(declare-fun res!2595864 () Bool)

(assert (=> d!1975681 (=> (not res!2595864) (not e!3827493))))

(declare-fun lt!2357666 () Regex!16215)

(assert (=> d!1975681 (= res!2595864 (validRegex!7951 lt!2357666))))

(declare-fun e!3827491 () Regex!16215)

(assert (=> d!1975681 (= lt!2357666 e!3827491)))

(declare-fun c!1142624 () Bool)

(assert (=> d!1975681 (= c!1142624 e!3827494)))

(declare-fun res!2595863 () Bool)

(assert (=> d!1975681 (=> (not res!2595863) (not e!3827494))))

(assert (=> d!1975681 (= res!2595863 ((_ is Cons!64820) (t!378508 (exprs!6099 (h!71270 zl!343)))))))

(assert (=> d!1975681 (forall!15365 (t!378508 (exprs!6099 (h!71270 zl!343))) lambda!345890)))

(assert (=> d!1975681 (= (generalisedConcat!1812 (t!378508 (exprs!6099 (h!71270 zl!343)))) lt!2357666)))

(declare-fun b!6294905 () Bool)

(declare-fun e!3827495 () Bool)

(assert (=> b!6294905 (= e!3827495 (= lt!2357666 (head!12931 (t!378508 (exprs!6099 (h!71270 zl!343))))))))

(declare-fun b!6294906 () Bool)

(assert (=> b!6294906 (= e!3827491 (h!71268 (t!378508 (exprs!6099 (h!71270 zl!343)))))))

(declare-fun b!6294907 () Bool)

(declare-fun e!3827490 () Bool)

(assert (=> b!6294907 (= e!3827493 e!3827490)))

(declare-fun c!1142626 () Bool)

(assert (=> b!6294907 (= c!1142626 (isEmpty!36877 (t!378508 (exprs!6099 (h!71270 zl!343)))))))

(declare-fun b!6294908 () Bool)

(assert (=> b!6294908 (= e!3827495 (isConcat!1144 lt!2357666))))

(declare-fun b!6294909 () Bool)

(assert (=> b!6294909 (= e!3827490 e!3827495)))

(declare-fun c!1142625 () Bool)

(assert (=> b!6294909 (= c!1142625 (isEmpty!36877 (tail!12016 (t!378508 (exprs!6099 (h!71270 zl!343))))))))

(declare-fun b!6294910 () Bool)

(assert (=> b!6294910 (= e!3827490 (isEmptyExpr!1621 lt!2357666))))

(declare-fun b!6294911 () Bool)

(assert (=> b!6294911 (= e!3827491 e!3827492)))

(declare-fun c!1142623 () Bool)

(assert (=> b!6294911 (= c!1142623 ((_ is Cons!64820) (t!378508 (exprs!6099 (h!71270 zl!343)))))))

(assert (= (and d!1975681 res!2595863) b!6294904))

(assert (= (and d!1975681 c!1142624) b!6294906))

(assert (= (and d!1975681 (not c!1142624)) b!6294911))

(assert (= (and b!6294911 c!1142623) b!6294902))

(assert (= (and b!6294911 (not c!1142623)) b!6294903))

(assert (= (and d!1975681 res!2595864) b!6294907))

(assert (= (and b!6294907 c!1142626) b!6294910))

(assert (= (and b!6294907 (not c!1142626)) b!6294909))

(assert (= (and b!6294909 c!1142625) b!6294905))

(assert (= (and b!6294909 (not c!1142625)) b!6294908))

(declare-fun m!7115046 () Bool)

(assert (=> b!6294910 m!7115046))

(declare-fun m!7115048 () Bool)

(assert (=> d!1975681 m!7115048))

(declare-fun m!7115050 () Bool)

(assert (=> d!1975681 m!7115050))

(declare-fun m!7115052 () Bool)

(assert (=> b!6294908 m!7115052))

(assert (=> b!6294907 m!7113966))

(declare-fun m!7115054 () Bool)

(assert (=> b!6294902 m!7115054))

(declare-fun m!7115056 () Bool)

(assert (=> b!6294904 m!7115056))

(declare-fun m!7115058 () Bool)

(assert (=> b!6294909 m!7115058))

(assert (=> b!6294909 m!7115058))

(declare-fun m!7115060 () Bool)

(assert (=> b!6294909 m!7115060))

(declare-fun m!7115062 () Bool)

(assert (=> b!6294905 m!7115062))

(assert (=> b!6293995 d!1975681))

(declare-fun d!1975683 () Bool)

(assert (=> d!1975683 (= (head!12930 s!2326) (h!71269 s!2326))))

(assert (=> b!6293967 d!1975683))

(declare-fun bs!1574627 () Bool)

(declare-fun b!6294922 () Bool)

(assert (= bs!1574627 (and b!6294922 b!6294740)))

(declare-fun lambda!345891 () Int)

(assert (=> bs!1574627 (= (and (= (reg!16544 (regOne!32943 r!7292)) (reg!16544 (regTwo!32943 r!7292))) (= (regOne!32943 r!7292) (regTwo!32943 r!7292))) (= lambda!345891 lambda!345871))))

(declare-fun bs!1574628 () Bool)

(assert (= bs!1574628 (and b!6294922 d!1975257)))

(assert (=> bs!1574628 (not (= lambda!345891 lambda!345810))))

(declare-fun bs!1574629 () Bool)

(assert (= bs!1574629 (and b!6294922 b!6294732)))

(assert (=> bs!1574629 (not (= lambda!345891 lambda!345872))))

(declare-fun bs!1574630 () Bool)

(assert (= bs!1574630 (and b!6294922 d!1975275)))

(assert (=> bs!1574630 (not (= lambda!345891 lambda!345819))))

(declare-fun bs!1574631 () Bool)

(assert (= bs!1574631 (and b!6294922 b!6293467)))

(assert (=> bs!1574631 (not (= lambda!345891 lambda!345780))))

(declare-fun bs!1574632 () Bool)

(assert (= bs!1574632 (and b!6294922 d!1975563)))

(assert (=> bs!1574632 (not (= lambda!345891 lambda!345870))))

(assert (=> bs!1574630 (not (= lambda!345891 lambda!345818))))

(declare-fun bs!1574633 () Bool)

(assert (= bs!1574633 (and b!6294922 d!1975649)))

(assert (=> bs!1574633 (not (= lambda!345891 lambda!345886))))

(declare-fun bs!1574634 () Bool)

(assert (= bs!1574634 (and b!6294922 b!6293932)))

(assert (=> bs!1574634 (= (and (= (reg!16544 (regOne!32943 r!7292)) (reg!16544 r!7292)) (= (regOne!32943 r!7292) r!7292)) (= lambda!345891 lambda!345828))))

(assert (=> bs!1574633 (not (= lambda!345891 lambda!345887))))

(assert (=> bs!1574631 (not (= lambda!345891 lambda!345779))))

(declare-fun bs!1574635 () Bool)

(assert (= bs!1574635 (and b!6294922 b!6293924)))

(assert (=> bs!1574635 (not (= lambda!345891 lambda!345829))))

(assert (=> b!6294922 true))

(assert (=> b!6294922 true))

(declare-fun bs!1574636 () Bool)

(declare-fun b!6294914 () Bool)

(assert (= bs!1574636 (and b!6294914 b!6294740)))

(declare-fun lambda!345892 () Int)

(assert (=> bs!1574636 (not (= lambda!345892 lambda!345871))))

(declare-fun bs!1574637 () Bool)

(assert (= bs!1574637 (and b!6294914 d!1975257)))

(assert (=> bs!1574637 (not (= lambda!345892 lambda!345810))))

(declare-fun bs!1574638 () Bool)

(assert (= bs!1574638 (and b!6294914 b!6294732)))

(assert (=> bs!1574638 (= (and (= (regOne!32942 (regOne!32943 r!7292)) (regOne!32942 (regTwo!32943 r!7292))) (= (regTwo!32942 (regOne!32943 r!7292)) (regTwo!32942 (regTwo!32943 r!7292)))) (= lambda!345892 lambda!345872))))

(declare-fun bs!1574639 () Bool)

(assert (= bs!1574639 (and b!6294914 d!1975275)))

(assert (=> bs!1574639 (= (and (= (regOne!32942 (regOne!32943 r!7292)) (regOne!32942 r!7292)) (= (regTwo!32942 (regOne!32943 r!7292)) (regTwo!32942 r!7292))) (= lambda!345892 lambda!345819))))

(declare-fun bs!1574640 () Bool)

(assert (= bs!1574640 (and b!6294914 b!6293467)))

(assert (=> bs!1574640 (= (and (= (regOne!32942 (regOne!32943 r!7292)) (regOne!32942 r!7292)) (= (regTwo!32942 (regOne!32943 r!7292)) (regTwo!32942 r!7292))) (= lambda!345892 lambda!345780))))

(declare-fun bs!1574641 () Bool)

(assert (= bs!1574641 (and b!6294914 b!6294922)))

(assert (=> bs!1574641 (not (= lambda!345892 lambda!345891))))

(declare-fun bs!1574642 () Bool)

(assert (= bs!1574642 (and b!6294914 d!1975563)))

(assert (=> bs!1574642 (not (= lambda!345892 lambda!345870))))

(assert (=> bs!1574639 (not (= lambda!345892 lambda!345818))))

(declare-fun bs!1574643 () Bool)

(assert (= bs!1574643 (and b!6294914 d!1975649)))

(assert (=> bs!1574643 (not (= lambda!345892 lambda!345886))))

(declare-fun bs!1574644 () Bool)

(assert (= bs!1574644 (and b!6294914 b!6293932)))

(assert (=> bs!1574644 (not (= lambda!345892 lambda!345828))))

(assert (=> bs!1574643 (= (and (= (regOne!32942 (regOne!32943 r!7292)) (regOne!32942 r!7292)) (= (regTwo!32942 (regOne!32943 r!7292)) (regTwo!32942 r!7292))) (= lambda!345892 lambda!345887))))

(assert (=> bs!1574640 (not (= lambda!345892 lambda!345779))))

(declare-fun bs!1574645 () Bool)

(assert (= bs!1574645 (and b!6294914 b!6293924)))

(assert (=> bs!1574645 (= (and (= (regOne!32942 (regOne!32943 r!7292)) (regOne!32942 r!7292)) (= (regTwo!32942 (regOne!32943 r!7292)) (regTwo!32942 r!7292))) (= lambda!345892 lambda!345829))))

(assert (=> b!6294914 true))

(assert (=> b!6294914 true))

(declare-fun b!6294912 () Bool)

(declare-fun res!2595867 () Bool)

(declare-fun e!3827502 () Bool)

(assert (=> b!6294912 (=> res!2595867 e!3827502)))

(declare-fun call!533287 () Bool)

(assert (=> b!6294912 (= res!2595867 call!533287)))

(declare-fun e!3827496 () Bool)

(assert (=> b!6294912 (= e!3827496 e!3827502)))

(declare-fun b!6294913 () Bool)

(declare-fun e!3827501 () Bool)

(assert (=> b!6294913 (= e!3827501 call!533287)))

(declare-fun d!1975685 () Bool)

(declare-fun c!1142628 () Bool)

(assert (=> d!1975685 (= c!1142628 ((_ is EmptyExpr!16215) (regOne!32943 r!7292)))))

(assert (=> d!1975685 (= (matchRSpec!3316 (regOne!32943 r!7292) s!2326) e!3827501)))

(declare-fun bm!533282 () Bool)

(assert (=> bm!533282 (= call!533287 (isEmpty!36882 s!2326))))

(declare-fun call!533288 () Bool)

(assert (=> b!6294914 (= e!3827496 call!533288)))

(declare-fun b!6294915 () Bool)

(declare-fun e!3827497 () Bool)

(assert (=> b!6294915 (= e!3827497 (= s!2326 (Cons!64821 (c!1142274 (regOne!32943 r!7292)) Nil!64821)))))

(declare-fun b!6294916 () Bool)

(declare-fun e!3827499 () Bool)

(assert (=> b!6294916 (= e!3827501 e!3827499)))

(declare-fun res!2595866 () Bool)

(assert (=> b!6294916 (= res!2595866 (not ((_ is EmptyLang!16215) (regOne!32943 r!7292))))))

(assert (=> b!6294916 (=> (not res!2595866) (not e!3827499))))

(declare-fun b!6294917 () Bool)

(declare-fun e!3827500 () Bool)

(assert (=> b!6294917 (= e!3827500 e!3827496)))

(declare-fun c!1142629 () Bool)

(assert (=> b!6294917 (= c!1142629 ((_ is Star!16215) (regOne!32943 r!7292)))))

(declare-fun bm!533283 () Bool)

(assert (=> bm!533283 (= call!533288 (Exists!3285 (ite c!1142629 lambda!345891 lambda!345892)))))

(declare-fun b!6294918 () Bool)

(declare-fun c!1142627 () Bool)

(assert (=> b!6294918 (= c!1142627 ((_ is ElementMatch!16215) (regOne!32943 r!7292)))))

(assert (=> b!6294918 (= e!3827499 e!3827497)))

(declare-fun b!6294919 () Bool)

(declare-fun c!1142630 () Bool)

(assert (=> b!6294919 (= c!1142630 ((_ is Union!16215) (regOne!32943 r!7292)))))

(assert (=> b!6294919 (= e!3827497 e!3827500)))

(declare-fun b!6294920 () Bool)

(declare-fun e!3827498 () Bool)

(assert (=> b!6294920 (= e!3827500 e!3827498)))

(declare-fun res!2595865 () Bool)

(assert (=> b!6294920 (= res!2595865 (matchRSpec!3316 (regOne!32943 (regOne!32943 r!7292)) s!2326))))

(assert (=> b!6294920 (=> res!2595865 e!3827498)))

(declare-fun b!6294921 () Bool)

(assert (=> b!6294921 (= e!3827498 (matchRSpec!3316 (regTwo!32943 (regOne!32943 r!7292)) s!2326))))

(assert (=> b!6294922 (= e!3827502 call!533288)))

(assert (= (and d!1975685 c!1142628) b!6294913))

(assert (= (and d!1975685 (not c!1142628)) b!6294916))

(assert (= (and b!6294916 res!2595866) b!6294918))

(assert (= (and b!6294918 c!1142627) b!6294915))

(assert (= (and b!6294918 (not c!1142627)) b!6294919))

(assert (= (and b!6294919 c!1142630) b!6294920))

(assert (= (and b!6294919 (not c!1142630)) b!6294917))

(assert (= (and b!6294920 (not res!2595865)) b!6294921))

(assert (= (and b!6294917 c!1142629) b!6294912))

(assert (= (and b!6294917 (not c!1142629)) b!6294914))

(assert (= (and b!6294912 (not res!2595867)) b!6294922))

(assert (= (or b!6294922 b!6294914) bm!533283))

(assert (= (or b!6294913 b!6294912) bm!533282))

(assert (=> bm!533282 m!7114238))

(declare-fun m!7115064 () Bool)

(assert (=> bm!533283 m!7115064))

(declare-fun m!7115066 () Bool)

(assert (=> b!6294920 m!7115066))

(declare-fun m!7115068 () Bool)

(assert (=> b!6294921 m!7115068))

(assert (=> b!6293930 d!1975685))

(declare-fun bs!1574646 () Bool)

(declare-fun d!1975687 () Bool)

(assert (= bs!1574646 (and d!1975687 d!1975571)))

(declare-fun lambda!345893 () Int)

(assert (=> bs!1574646 (= lambda!345893 lambda!345875)))

(declare-fun bs!1574647 () Bool)

(assert (= bs!1574647 (and d!1975687 d!1975577)))

(assert (=> bs!1574647 (= lambda!345893 lambda!345876)))

(assert (=> d!1975687 (= (nullableZipper!1985 ((_ map or) lt!2357538 lt!2357535)) (exists!2531 ((_ map or) lt!2357538 lt!2357535) lambda!345893))))

(declare-fun bs!1574648 () Bool)

(assert (= bs!1574648 d!1975687))

(declare-fun m!7115070 () Bool)

(assert (=> bs!1574648 m!7115070))

(assert (=> b!6293885 d!1975687))

(declare-fun b!6294923 () Bool)

(declare-fun res!2595873 () Bool)

(declare-fun e!3827504 () Bool)

(assert (=> b!6294923 (=> (not res!2595873) (not e!3827504))))

(declare-fun call!533289 () Bool)

(assert (=> b!6294923 (= res!2595873 (not call!533289))))

(declare-fun b!6294924 () Bool)

(declare-fun e!3827508 () Bool)

(declare-fun e!3827505 () Bool)

(assert (=> b!6294924 (= e!3827508 e!3827505)))

(declare-fun res!2595875 () Bool)

(assert (=> b!6294924 (=> res!2595875 e!3827505)))

(assert (=> b!6294924 (= res!2595875 call!533289)))

(declare-fun b!6294925 () Bool)

(declare-fun e!3827503 () Bool)

(assert (=> b!6294925 (= e!3827503 (matchR!8398 (derivativeStep!4924 (derivativeStep!4924 r!7292 (head!12930 s!2326)) (head!12930 (tail!12015 s!2326))) (tail!12015 (tail!12015 s!2326))))))

(declare-fun b!6294926 () Bool)

(declare-fun res!2595868 () Bool)

(declare-fun e!3827506 () Bool)

(assert (=> b!6294926 (=> res!2595868 e!3827506)))

(assert (=> b!6294926 (= res!2595868 e!3827504)))

(declare-fun res!2595874 () Bool)

(assert (=> b!6294926 (=> (not res!2595874) (not e!3827504))))

(declare-fun lt!2357667 () Bool)

(assert (=> b!6294926 (= res!2595874 lt!2357667)))

(declare-fun b!6294927 () Bool)

(declare-fun e!3827507 () Bool)

(assert (=> b!6294927 (= e!3827507 (not lt!2357667))))

(declare-fun b!6294928 () Bool)

(declare-fun res!2595872 () Bool)

(assert (=> b!6294928 (=> res!2595872 e!3827506)))

(assert (=> b!6294928 (= res!2595872 (not ((_ is ElementMatch!16215) (derivativeStep!4924 r!7292 (head!12930 s!2326)))))))

(assert (=> b!6294928 (= e!3827507 e!3827506)))

(declare-fun b!6294929 () Bool)

(assert (=> b!6294929 (= e!3827504 (= (head!12930 (tail!12015 s!2326)) (c!1142274 (derivativeStep!4924 r!7292 (head!12930 s!2326)))))))

(declare-fun bm!533284 () Bool)

(assert (=> bm!533284 (= call!533289 (isEmpty!36882 (tail!12015 s!2326)))))

(declare-fun b!6294930 () Bool)

(assert (=> b!6294930 (= e!3827505 (not (= (head!12930 (tail!12015 s!2326)) (c!1142274 (derivativeStep!4924 r!7292 (head!12930 s!2326))))))))

(declare-fun b!6294931 () Bool)

(assert (=> b!6294931 (= e!3827506 e!3827508)))

(declare-fun res!2595871 () Bool)

(assert (=> b!6294931 (=> (not res!2595871) (not e!3827508))))

(assert (=> b!6294931 (= res!2595871 (not lt!2357667))))

(declare-fun b!6294932 () Bool)

(assert (=> b!6294932 (= e!3827503 (nullable!6208 (derivativeStep!4924 r!7292 (head!12930 s!2326))))))

(declare-fun b!6294933 () Bool)

(declare-fun e!3827509 () Bool)

(assert (=> b!6294933 (= e!3827509 (= lt!2357667 call!533289))))

(declare-fun b!6294934 () Bool)

(assert (=> b!6294934 (= e!3827509 e!3827507)))

(declare-fun c!1142631 () Bool)

(assert (=> b!6294934 (= c!1142631 ((_ is EmptyLang!16215) (derivativeStep!4924 r!7292 (head!12930 s!2326))))))

(declare-fun d!1975689 () Bool)

(assert (=> d!1975689 e!3827509))

(declare-fun c!1142632 () Bool)

(assert (=> d!1975689 (= c!1142632 ((_ is EmptyExpr!16215) (derivativeStep!4924 r!7292 (head!12930 s!2326))))))

(assert (=> d!1975689 (= lt!2357667 e!3827503)))

(declare-fun c!1142633 () Bool)

(assert (=> d!1975689 (= c!1142633 (isEmpty!36882 (tail!12015 s!2326)))))

(assert (=> d!1975689 (validRegex!7951 (derivativeStep!4924 r!7292 (head!12930 s!2326)))))

(assert (=> d!1975689 (= (matchR!8398 (derivativeStep!4924 r!7292 (head!12930 s!2326)) (tail!12015 s!2326)) lt!2357667)))

(declare-fun b!6294935 () Bool)

(declare-fun res!2595870 () Bool)

(assert (=> b!6294935 (=> (not res!2595870) (not e!3827504))))

(assert (=> b!6294935 (= res!2595870 (isEmpty!36882 (tail!12015 (tail!12015 s!2326))))))

(declare-fun b!6294936 () Bool)

(declare-fun res!2595869 () Bool)

(assert (=> b!6294936 (=> res!2595869 e!3827505)))

(assert (=> b!6294936 (= res!2595869 (not (isEmpty!36882 (tail!12015 (tail!12015 s!2326)))))))

(assert (= (and d!1975689 c!1142633) b!6294932))

(assert (= (and d!1975689 (not c!1142633)) b!6294925))

(assert (= (and d!1975689 c!1142632) b!6294933))

(assert (= (and d!1975689 (not c!1142632)) b!6294934))

(assert (= (and b!6294934 c!1142631) b!6294927))

(assert (= (and b!6294934 (not c!1142631)) b!6294928))

(assert (= (and b!6294928 (not res!2595872)) b!6294926))

(assert (= (and b!6294926 res!2595874) b!6294923))

(assert (= (and b!6294923 res!2595873) b!6294935))

(assert (= (and b!6294935 res!2595870) b!6294929))

(assert (= (and b!6294926 (not res!2595868)) b!6294931))

(assert (= (and b!6294931 res!2595871) b!6294924))

(assert (= (and b!6294924 (not res!2595875)) b!6294936))

(assert (= (and b!6294936 (not res!2595869)) b!6294930))

(assert (= (or b!6294933 b!6294923 b!6294924) bm!533284))

(assert (=> b!6294932 m!7114250))

(declare-fun m!7115072 () Bool)

(assert (=> b!6294932 m!7115072))

(assert (=> b!6294925 m!7114252))

(declare-fun m!7115074 () Bool)

(assert (=> b!6294925 m!7115074))

(assert (=> b!6294925 m!7114250))

(assert (=> b!6294925 m!7115074))

(declare-fun m!7115076 () Bool)

(assert (=> b!6294925 m!7115076))

(assert (=> b!6294925 m!7114252))

(declare-fun m!7115078 () Bool)

(assert (=> b!6294925 m!7115078))

(assert (=> b!6294925 m!7115076))

(assert (=> b!6294925 m!7115078))

(declare-fun m!7115080 () Bool)

(assert (=> b!6294925 m!7115080))

(assert (=> b!6294930 m!7114252))

(assert (=> b!6294930 m!7115074))

(assert (=> b!6294929 m!7114252))

(assert (=> b!6294929 m!7115074))

(assert (=> b!6294936 m!7114252))

(assert (=> b!6294936 m!7115078))

(assert (=> b!6294936 m!7115078))

(declare-fun m!7115082 () Bool)

(assert (=> b!6294936 m!7115082))

(assert (=> d!1975689 m!7114252))

(assert (=> d!1975689 m!7114256))

(assert (=> d!1975689 m!7114250))

(declare-fun m!7115084 () Bool)

(assert (=> d!1975689 m!7115084))

(assert (=> b!6294935 m!7114252))

(assert (=> b!6294935 m!7115078))

(assert (=> b!6294935 m!7115078))

(assert (=> b!6294935 m!7115082))

(assert (=> bm!533284 m!7114252))

(assert (=> bm!533284 m!7114256))

(assert (=> b!6293963 d!1975689))

(declare-fun b!6294957 () Bool)

(declare-fun e!3827523 () Regex!16215)

(declare-fun call!533301 () Regex!16215)

(declare-fun call!533298 () Regex!16215)

(assert (=> b!6294957 (= e!3827523 (Union!16215 call!533301 call!533298))))

(declare-fun bm!533293 () Bool)

(declare-fun call!533300 () Regex!16215)

(assert (=> bm!533293 (= call!533300 call!533298)))

(declare-fun c!1142645 () Bool)

(declare-fun bm!533294 () Bool)

(assert (=> bm!533294 (= call!533301 (derivativeStep!4924 (ite c!1142645 (regOne!32943 r!7292) (regOne!32942 r!7292)) (head!12930 s!2326)))))

(declare-fun b!6294958 () Bool)

(declare-fun e!3827521 () Regex!16215)

(declare-fun call!533299 () Regex!16215)

(assert (=> b!6294958 (= e!3827521 (Union!16215 (Concat!25060 call!533299 (regTwo!32942 r!7292)) EmptyLang!16215))))

(declare-fun bm!533295 () Bool)

(declare-fun c!1142644 () Bool)

(declare-fun c!1142648 () Bool)

(assert (=> bm!533295 (= call!533298 (derivativeStep!4924 (ite c!1142645 (regTwo!32943 r!7292) (ite c!1142644 (reg!16544 r!7292) (ite c!1142648 (regTwo!32942 r!7292) (regOne!32942 r!7292)))) (head!12930 s!2326)))))

(declare-fun bm!533296 () Bool)

(assert (=> bm!533296 (= call!533299 call!533300)))

(declare-fun b!6294959 () Bool)

(assert (=> b!6294959 (= c!1142645 ((_ is Union!16215) r!7292))))

(declare-fun e!3827522 () Regex!16215)

(assert (=> b!6294959 (= e!3827522 e!3827523)))

(declare-fun b!6294960 () Bool)

(assert (=> b!6294960 (= e!3827521 (Union!16215 (Concat!25060 call!533301 (regTwo!32942 r!7292)) call!533299))))

(declare-fun b!6294961 () Bool)

(declare-fun e!3827524 () Regex!16215)

(assert (=> b!6294961 (= e!3827524 (Concat!25060 call!533300 r!7292))))

(declare-fun b!6294962 () Bool)

(declare-fun e!3827520 () Regex!16215)

(assert (=> b!6294962 (= e!3827520 e!3827522)))

(declare-fun c!1142646 () Bool)

(assert (=> b!6294962 (= c!1142646 ((_ is ElementMatch!16215) r!7292))))

(declare-fun b!6294963 () Bool)

(assert (=> b!6294963 (= e!3827520 EmptyLang!16215)))

(declare-fun b!6294965 () Bool)

(assert (=> b!6294965 (= c!1142648 (nullable!6208 (regOne!32942 r!7292)))))

(assert (=> b!6294965 (= e!3827524 e!3827521)))

(declare-fun b!6294966 () Bool)

(assert (=> b!6294966 (= e!3827523 e!3827524)))

(assert (=> b!6294966 (= c!1142644 ((_ is Star!16215) r!7292))))

(declare-fun d!1975691 () Bool)

(declare-fun lt!2357670 () Regex!16215)

(assert (=> d!1975691 (validRegex!7951 lt!2357670)))

(assert (=> d!1975691 (= lt!2357670 e!3827520)))

(declare-fun c!1142647 () Bool)

(assert (=> d!1975691 (= c!1142647 (or ((_ is EmptyExpr!16215) r!7292) ((_ is EmptyLang!16215) r!7292)))))

(assert (=> d!1975691 (validRegex!7951 r!7292)))

(assert (=> d!1975691 (= (derivativeStep!4924 r!7292 (head!12930 s!2326)) lt!2357670)))

(declare-fun b!6294964 () Bool)

(assert (=> b!6294964 (= e!3827522 (ite (= (head!12930 s!2326) (c!1142274 r!7292)) EmptyExpr!16215 EmptyLang!16215))))

(assert (= (and d!1975691 c!1142647) b!6294963))

(assert (= (and d!1975691 (not c!1142647)) b!6294962))

(assert (= (and b!6294962 c!1142646) b!6294964))

(assert (= (and b!6294962 (not c!1142646)) b!6294959))

(assert (= (and b!6294959 c!1142645) b!6294957))

(assert (= (and b!6294959 (not c!1142645)) b!6294966))

(assert (= (and b!6294966 c!1142644) b!6294961))

(assert (= (and b!6294966 (not c!1142644)) b!6294965))

(assert (= (and b!6294965 c!1142648) b!6294960))

(assert (= (and b!6294965 (not c!1142648)) b!6294958))

(assert (= (or b!6294960 b!6294958) bm!533296))

(assert (= (or b!6294961 bm!533296) bm!533293))

(assert (= (or b!6294957 bm!533293) bm!533295))

(assert (= (or b!6294957 b!6294960) bm!533294))

(assert (=> bm!533294 m!7114248))

(declare-fun m!7115086 () Bool)

(assert (=> bm!533294 m!7115086))

(assert (=> bm!533295 m!7114248))

(declare-fun m!7115088 () Bool)

(assert (=> bm!533295 m!7115088))

(assert (=> b!6294965 m!7114778))

(declare-fun m!7115090 () Bool)

(assert (=> d!1975691 m!7115090))

(assert (=> d!1975691 m!7113932))

(assert (=> b!6293963 d!1975691))

(assert (=> b!6293963 d!1975683))

(assert (=> b!6293963 d!1975631))

(assert (=> b!6294091 d!1975325))

(declare-fun bs!1574649 () Bool)

(declare-fun d!1975693 () Bool)

(assert (= bs!1574649 (and d!1975693 d!1975291)))

(declare-fun lambda!345894 () Int)

(assert (=> bs!1574649 (= lambda!345894 lambda!345822)))

(declare-fun bs!1574650 () Bool)

(assert (= bs!1574650 (and d!1975693 d!1975669)))

(assert (=> bs!1574650 (= lambda!345894 lambda!345888)))

(declare-fun bs!1574651 () Bool)

(assert (= bs!1574651 (and d!1975693 d!1975319)))

(assert (=> bs!1574651 (= lambda!345894 lambda!345832)))

(declare-fun bs!1574652 () Bool)

(assert (= bs!1574652 (and d!1975693 d!1975343)))

(assert (=> bs!1574652 (= lambda!345894 lambda!345839)))

(declare-fun bs!1574653 () Bool)

(assert (= bs!1574653 (and d!1975693 d!1975323)))

(assert (=> bs!1574653 (= lambda!345894 lambda!345838)))

(declare-fun bs!1574654 () Bool)

(assert (= bs!1574654 (and d!1975693 d!1975309)))

(assert (=> bs!1574654 (= lambda!345894 lambda!345823)))

(declare-fun bs!1574655 () Bool)

(assert (= bs!1574655 (and d!1975693 d!1975641)))

(assert (=> bs!1574655 (= lambda!345894 lambda!345881)))

(declare-fun bs!1574656 () Bool)

(assert (= bs!1574656 (and d!1975693 d!1975681)))

(assert (=> bs!1574656 (= lambda!345894 lambda!345890)))

(declare-fun bs!1574657 () Bool)

(assert (= bs!1574657 (and d!1975693 d!1975321)))

(assert (=> bs!1574657 (= lambda!345894 lambda!345835)))

(declare-fun bs!1574658 () Bool)

(assert (= bs!1574658 (and d!1975693 d!1975627)))

(assert (=> bs!1574658 (= lambda!345894 lambda!345880)))

(assert (=> d!1975693 (= (inv!83784 (h!71270 (t!378510 zl!343))) (forall!15365 (exprs!6099 (h!71270 (t!378510 zl!343))) lambda!345894))))

(declare-fun bs!1574659 () Bool)

(assert (= bs!1574659 d!1975693))

(declare-fun m!7115092 () Bool)

(assert (=> bs!1574659 m!7115092))

(assert (=> b!6294153 d!1975693))

(declare-fun b!6294981 () Bool)

(declare-fun e!3827538 () Bool)

(declare-fun call!533306 () Bool)

(assert (=> b!6294981 (= e!3827538 call!533306)))

(declare-fun b!6294982 () Bool)

(declare-fun e!3827541 () Bool)

(assert (=> b!6294982 (= e!3827541 e!3827538)))

(declare-fun res!2595889 () Bool)

(declare-fun call!533307 () Bool)

(assert (=> b!6294982 (= res!2595889 call!533307)))

(assert (=> b!6294982 (=> res!2595889 e!3827538)))

(declare-fun bm!533301 () Bool)

(declare-fun c!1142651 () Bool)

(assert (=> bm!533301 (= call!533307 (nullable!6208 (ite c!1142651 (regOne!32943 (h!71268 (exprs!6099 (h!71270 zl!343)))) (regOne!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))))))))

(declare-fun b!6294983 () Bool)

(declare-fun e!3827537 () Bool)

(assert (=> b!6294983 (= e!3827541 e!3827537)))

(declare-fun res!2595887 () Bool)

(assert (=> b!6294983 (= res!2595887 call!533307)))

(assert (=> b!6294983 (=> (not res!2595887) (not e!3827537))))

(declare-fun b!6294984 () Bool)

(declare-fun e!3827542 () Bool)

(declare-fun e!3827539 () Bool)

(assert (=> b!6294984 (= e!3827542 e!3827539)))

(declare-fun res!2595890 () Bool)

(assert (=> b!6294984 (=> res!2595890 e!3827539)))

(assert (=> b!6294984 (= res!2595890 ((_ is Star!16215) (h!71268 (exprs!6099 (h!71270 zl!343)))))))

(declare-fun d!1975695 () Bool)

(declare-fun res!2595888 () Bool)

(declare-fun e!3827540 () Bool)

(assert (=> d!1975695 (=> res!2595888 e!3827540)))

(assert (=> d!1975695 (= res!2595888 ((_ is EmptyExpr!16215) (h!71268 (exprs!6099 (h!71270 zl!343)))))))

(assert (=> d!1975695 (= (nullableFct!2159 (h!71268 (exprs!6099 (h!71270 zl!343)))) e!3827540)))

(declare-fun b!6294985 () Bool)

(assert (=> b!6294985 (= e!3827539 e!3827541)))

(assert (=> b!6294985 (= c!1142651 ((_ is Union!16215) (h!71268 (exprs!6099 (h!71270 zl!343)))))))

(declare-fun bm!533302 () Bool)

(assert (=> bm!533302 (= call!533306 (nullable!6208 (ite c!1142651 (regTwo!32943 (h!71268 (exprs!6099 (h!71270 zl!343)))) (regTwo!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))))))))

(declare-fun b!6294986 () Bool)

(assert (=> b!6294986 (= e!3827537 call!533306)))

(declare-fun b!6294987 () Bool)

(assert (=> b!6294987 (= e!3827540 e!3827542)))

(declare-fun res!2595886 () Bool)

(assert (=> b!6294987 (=> (not res!2595886) (not e!3827542))))

(assert (=> b!6294987 (= res!2595886 (and (not ((_ is EmptyLang!16215) (h!71268 (exprs!6099 (h!71270 zl!343))))) (not ((_ is ElementMatch!16215) (h!71268 (exprs!6099 (h!71270 zl!343)))))))))

(assert (= (and d!1975695 (not res!2595888)) b!6294987))

(assert (= (and b!6294987 res!2595886) b!6294984))

(assert (= (and b!6294984 (not res!2595890)) b!6294985))

(assert (= (and b!6294985 c!1142651) b!6294982))

(assert (= (and b!6294985 (not c!1142651)) b!6294983))

(assert (= (and b!6294982 (not res!2595889)) b!6294981))

(assert (= (and b!6294983 res!2595887) b!6294986))

(assert (= (or b!6294981 b!6294986) bm!533302))

(assert (= (or b!6294982 b!6294983) bm!533301))

(declare-fun m!7115094 () Bool)

(assert (=> bm!533301 m!7115094))

(declare-fun m!7115096 () Bool)

(assert (=> bm!533302 m!7115096))

(assert (=> d!1975325 d!1975695))

(declare-fun b!6294988 () Bool)

(declare-fun e!3827549 () Bool)

(declare-fun call!533310 () Bool)

(assert (=> b!6294988 (= e!3827549 call!533310)))

(declare-fun b!6294989 () Bool)

(declare-fun res!2595892 () Bool)

(assert (=> b!6294989 (=> (not res!2595892) (not e!3827549))))

(declare-fun call!533309 () Bool)

(assert (=> b!6294989 (= res!2595892 call!533309)))

(declare-fun e!3827547 () Bool)

(assert (=> b!6294989 (= e!3827547 e!3827549)))

(declare-fun d!1975697 () Bool)

(declare-fun res!2595893 () Bool)

(declare-fun e!3827548 () Bool)

(assert (=> d!1975697 (=> res!2595893 e!3827548)))

(assert (=> d!1975697 (= res!2595893 ((_ is ElementMatch!16215) (ite c!1142454 (regOne!32943 r!7292) (regOne!32942 r!7292))))))

(assert (=> d!1975697 (= (validRegex!7951 (ite c!1142454 (regOne!32943 r!7292) (regOne!32942 r!7292))) e!3827548)))

(declare-fun c!1142653 () Bool)

(declare-fun c!1142652 () Bool)

(declare-fun bm!533303 () Bool)

(declare-fun call!533308 () Bool)

(assert (=> bm!533303 (= call!533308 (validRegex!7951 (ite c!1142652 (reg!16544 (ite c!1142454 (regOne!32943 r!7292) (regOne!32942 r!7292))) (ite c!1142653 (regTwo!32943 (ite c!1142454 (regOne!32943 r!7292) (regOne!32942 r!7292))) (regTwo!32942 (ite c!1142454 (regOne!32943 r!7292) (regOne!32942 r!7292)))))))))

(declare-fun b!6294990 () Bool)

(declare-fun e!3827543 () Bool)

(assert (=> b!6294990 (= e!3827543 call!533310)))

(declare-fun b!6294991 () Bool)

(declare-fun e!3827545 () Bool)

(declare-fun e!3827544 () Bool)

(assert (=> b!6294991 (= e!3827545 e!3827544)))

(declare-fun res!2595895 () Bool)

(assert (=> b!6294991 (= res!2595895 (not (nullable!6208 (reg!16544 (ite c!1142454 (regOne!32943 r!7292) (regOne!32942 r!7292))))))))

(assert (=> b!6294991 (=> (not res!2595895) (not e!3827544))))

(declare-fun b!6294992 () Bool)

(assert (=> b!6294992 (= e!3827545 e!3827547)))

(assert (=> b!6294992 (= c!1142653 ((_ is Union!16215) (ite c!1142454 (regOne!32943 r!7292) (regOne!32942 r!7292))))))

(declare-fun bm!533304 () Bool)

(assert (=> bm!533304 (= call!533310 call!533308)))

(declare-fun b!6294993 () Bool)

(assert (=> b!6294993 (= e!3827544 call!533308)))

(declare-fun bm!533305 () Bool)

(assert (=> bm!533305 (= call!533309 (validRegex!7951 (ite c!1142653 (regOne!32943 (ite c!1142454 (regOne!32943 r!7292) (regOne!32942 r!7292))) (regOne!32942 (ite c!1142454 (regOne!32943 r!7292) (regOne!32942 r!7292))))))))

(declare-fun b!6294994 () Bool)

(declare-fun res!2595894 () Bool)

(declare-fun e!3827546 () Bool)

(assert (=> b!6294994 (=> res!2595894 e!3827546)))

(assert (=> b!6294994 (= res!2595894 (not ((_ is Concat!25060) (ite c!1142454 (regOne!32943 r!7292) (regOne!32942 r!7292)))))))

(assert (=> b!6294994 (= e!3827547 e!3827546)))

(declare-fun b!6294995 () Bool)

(assert (=> b!6294995 (= e!3827546 e!3827543)))

(declare-fun res!2595891 () Bool)

(assert (=> b!6294995 (=> (not res!2595891) (not e!3827543))))

(assert (=> b!6294995 (= res!2595891 call!533309)))

(declare-fun b!6294996 () Bool)

(assert (=> b!6294996 (= e!3827548 e!3827545)))

(assert (=> b!6294996 (= c!1142652 ((_ is Star!16215) (ite c!1142454 (regOne!32943 r!7292) (regOne!32942 r!7292))))))

(assert (= (and d!1975697 (not res!2595893)) b!6294996))

(assert (= (and b!6294996 c!1142652) b!6294991))

(assert (= (and b!6294996 (not c!1142652)) b!6294992))

(assert (= (and b!6294991 res!2595895) b!6294993))

(assert (= (and b!6294992 c!1142653) b!6294989))

(assert (= (and b!6294992 (not c!1142653)) b!6294994))

(assert (= (and b!6294989 res!2595892) b!6294988))

(assert (= (and b!6294994 (not res!2595894)) b!6294995))

(assert (= (and b!6294995 res!2595891) b!6294990))

(assert (= (or b!6294988 b!6294990) bm!533304))

(assert (= (or b!6294989 b!6294995) bm!533305))

(assert (= (or b!6294993 bm!533304) bm!533303))

(declare-fun m!7115098 () Bool)

(assert (=> bm!533303 m!7115098))

(declare-fun m!7115100 () Bool)

(assert (=> b!6294991 m!7115100))

(declare-fun m!7115102 () Bool)

(assert (=> bm!533305 m!7115102))

(assert (=> bm!533167 d!1975697))

(declare-fun d!1975699 () Bool)

(assert (=> d!1975699 (= (isEmpty!36882 (t!378509 s!2326)) ((_ is Nil!64821) (t!378509 s!2326)))))

(assert (=> d!1975341 d!1975699))

(declare-fun b!6294997 () Bool)

(declare-fun e!3827555 () (InoxSet Context!11198))

(declare-fun e!3827552 () (InoxSet Context!11198))

(assert (=> b!6294997 (= e!3827555 e!3827552)))

(declare-fun c!1142658 () Bool)

(assert (=> b!6294997 (= c!1142658 ((_ is Union!16215) (ite c!1142443 (regOne!32943 (h!71268 (exprs!6099 (h!71270 zl!343)))) (regOne!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))))))))

(declare-fun b!6294998 () Bool)

(declare-fun e!3827554 () Bool)

(assert (=> b!6294998 (= e!3827554 (nullable!6208 (regOne!32942 (ite c!1142443 (regOne!32943 (h!71268 (exprs!6099 (h!71270 zl!343)))) (regOne!32942 (h!71268 (exprs!6099 (h!71270 zl!343))))))))))

(declare-fun bm!533306 () Bool)

(declare-fun c!1142655 () Bool)

(declare-fun call!533313 () (InoxSet Context!11198))

(declare-fun call!533314 () List!64944)

(declare-fun c!1142654 () Bool)

(assert (=> bm!533306 (= call!533313 (derivationStepZipperDown!1463 (ite c!1142658 (regTwo!32943 (ite c!1142443 (regOne!32943 (h!71268 (exprs!6099 (h!71270 zl!343)))) (regOne!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))))) (ite c!1142655 (regTwo!32942 (ite c!1142443 (regOne!32943 (h!71268 (exprs!6099 (h!71270 zl!343)))) (regOne!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))))) (ite c!1142654 (regOne!32942 (ite c!1142443 (regOne!32943 (h!71268 (exprs!6099 (h!71270 zl!343)))) (regOne!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))))) (reg!16544 (ite c!1142443 (regOne!32943 (h!71268 (exprs!6099 (h!71270 zl!343)))) (regOne!32942 (h!71268 (exprs!6099 (h!71270 zl!343))))))))) (ite (or c!1142658 c!1142655) (ite c!1142443 lt!2357543 (Context!11199 call!533157)) (Context!11199 call!533314)) (h!71269 s!2326)))))

(declare-fun b!6294999 () Bool)

(assert (=> b!6294999 (= e!3827555 (store ((as const (Array Context!11198 Bool)) false) (ite c!1142443 lt!2357543 (Context!11199 call!533157)) true))))

(declare-fun call!533312 () List!64944)

(declare-fun bm!533307 () Bool)

(declare-fun call!533315 () (InoxSet Context!11198))

(assert (=> bm!533307 (= call!533315 (derivationStepZipperDown!1463 (ite c!1142658 (regOne!32943 (ite c!1142443 (regOne!32943 (h!71268 (exprs!6099 (h!71270 zl!343)))) (regOne!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))))) (regOne!32942 (ite c!1142443 (regOne!32943 (h!71268 (exprs!6099 (h!71270 zl!343)))) (regOne!32942 (h!71268 (exprs!6099 (h!71270 zl!343))))))) (ite c!1142658 (ite c!1142443 lt!2357543 (Context!11199 call!533157)) (Context!11199 call!533312)) (h!71269 s!2326)))))

(declare-fun b!6295000 () Bool)

(assert (=> b!6295000 (= c!1142655 e!3827554)))

(declare-fun res!2595896 () Bool)

(assert (=> b!6295000 (=> (not res!2595896) (not e!3827554))))

(assert (=> b!6295000 (= res!2595896 ((_ is Concat!25060) (ite c!1142443 (regOne!32943 (h!71268 (exprs!6099 (h!71270 zl!343)))) (regOne!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))))))))

(declare-fun e!3827553 () (InoxSet Context!11198))

(assert (=> b!6295000 (= e!3827552 e!3827553)))

(declare-fun b!6295001 () Bool)

(declare-fun call!533316 () (InoxSet Context!11198))

(assert (=> b!6295001 (= e!3827553 ((_ map or) call!533315 call!533316))))

(declare-fun b!6295002 () Bool)

(declare-fun e!3827551 () (InoxSet Context!11198))

(assert (=> b!6295002 (= e!3827553 e!3827551)))

(assert (=> b!6295002 (= c!1142654 ((_ is Concat!25060) (ite c!1142443 (regOne!32943 (h!71268 (exprs!6099 (h!71270 zl!343)))) (regOne!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))))))))

(declare-fun b!6295003 () Bool)

(declare-fun e!3827550 () (InoxSet Context!11198))

(assert (=> b!6295003 (= e!3827550 ((as const (Array Context!11198 Bool)) false))))

(declare-fun b!6295004 () Bool)

(declare-fun call!533311 () (InoxSet Context!11198))

(assert (=> b!6295004 (= e!3827551 call!533311)))

(declare-fun bm!533308 () Bool)

(assert (=> bm!533308 (= call!533312 ($colon$colon!2080 (exprs!6099 (ite c!1142443 lt!2357543 (Context!11199 call!533157))) (ite (or c!1142655 c!1142654) (regTwo!32942 (ite c!1142443 (regOne!32943 (h!71268 (exprs!6099 (h!71270 zl!343)))) (regOne!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))))) (ite c!1142443 (regOne!32943 (h!71268 (exprs!6099 (h!71270 zl!343)))) (regOne!32942 (h!71268 (exprs!6099 (h!71270 zl!343))))))))))

(declare-fun d!1975701 () Bool)

(declare-fun c!1142656 () Bool)

(assert (=> d!1975701 (= c!1142656 (and ((_ is ElementMatch!16215) (ite c!1142443 (regOne!32943 (h!71268 (exprs!6099 (h!71270 zl!343)))) (regOne!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))))) (= (c!1142274 (ite c!1142443 (regOne!32943 (h!71268 (exprs!6099 (h!71270 zl!343)))) (regOne!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))))) (h!71269 s!2326))))))

(assert (=> d!1975701 (= (derivationStepZipperDown!1463 (ite c!1142443 (regOne!32943 (h!71268 (exprs!6099 (h!71270 zl!343)))) (regOne!32942 (h!71268 (exprs!6099 (h!71270 zl!343))))) (ite c!1142443 lt!2357543 (Context!11199 call!533157)) (h!71269 s!2326)) e!3827555)))

(declare-fun bm!533309 () Bool)

(assert (=> bm!533309 (= call!533316 call!533313)))

(declare-fun bm!533310 () Bool)

(assert (=> bm!533310 (= call!533311 call!533316)))

(declare-fun b!6295005 () Bool)

(declare-fun c!1142657 () Bool)

(assert (=> b!6295005 (= c!1142657 ((_ is Star!16215) (ite c!1142443 (regOne!32943 (h!71268 (exprs!6099 (h!71270 zl!343)))) (regOne!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))))))))

(assert (=> b!6295005 (= e!3827551 e!3827550)))

(declare-fun b!6295006 () Bool)

(assert (=> b!6295006 (= e!3827552 ((_ map or) call!533315 call!533313))))

(declare-fun b!6295007 () Bool)

(assert (=> b!6295007 (= e!3827550 call!533311)))

(declare-fun bm!533311 () Bool)

(assert (=> bm!533311 (= call!533314 call!533312)))

(assert (= (and d!1975701 c!1142656) b!6294999))

(assert (= (and d!1975701 (not c!1142656)) b!6294997))

(assert (= (and b!6294997 c!1142658) b!6295006))

(assert (= (and b!6294997 (not c!1142658)) b!6295000))

(assert (= (and b!6295000 res!2595896) b!6294998))

(assert (= (and b!6295000 c!1142655) b!6295001))

(assert (= (and b!6295000 (not c!1142655)) b!6295002))

(assert (= (and b!6295002 c!1142654) b!6295004))

(assert (= (and b!6295002 (not c!1142654)) b!6295005))

(assert (= (and b!6295005 c!1142657) b!6295007))

(assert (= (and b!6295005 (not c!1142657)) b!6295003))

(assert (= (or b!6295004 b!6295007) bm!533311))

(assert (= (or b!6295004 b!6295007) bm!533310))

(assert (= (or b!6295001 bm!533311) bm!533308))

(assert (= (or b!6295001 bm!533310) bm!533309))

(assert (= (or b!6295006 bm!533309) bm!533306))

(assert (= (or b!6295006 b!6295001) bm!533307))

(declare-fun m!7115104 () Bool)

(assert (=> bm!533306 m!7115104))

(declare-fun m!7115106 () Bool)

(assert (=> b!6294999 m!7115106))

(declare-fun m!7115108 () Bool)

(assert (=> bm!533307 m!7115108))

(declare-fun m!7115110 () Bool)

(assert (=> b!6294998 m!7115110))

(declare-fun m!7115112 () Bool)

(assert (=> bm!533308 m!7115112))

(assert (=> bm!533152 d!1975701))

(declare-fun d!1975703 () Bool)

(assert (=> d!1975703 (= (nullable!6208 r!7292) (nullableFct!2159 r!7292))))

(declare-fun bs!1574660 () Bool)

(assert (= bs!1574660 d!1975703))

(declare-fun m!7115114 () Bool)

(assert (=> bs!1574660 m!7115114))

(assert (=> b!6293970 d!1975703))

(declare-fun d!1975705 () Bool)

(assert (=> d!1975705 (= (isConcat!1144 lt!2357616) ((_ is Concat!25060) lt!2357616))))

(assert (=> b!6294001 d!1975705))

(declare-fun b!6295008 () Bool)

(declare-fun e!3827561 () (InoxSet Context!11198))

(declare-fun e!3827558 () (InoxSet Context!11198))

(assert (=> b!6295008 (= e!3827561 e!3827558)))

(declare-fun c!1142663 () Bool)

(assert (=> b!6295008 (= c!1142663 ((_ is Union!16215) (h!71268 (exprs!6099 lt!2357543))))))

(declare-fun b!6295009 () Bool)

(declare-fun e!3827560 () Bool)

(assert (=> b!6295009 (= e!3827560 (nullable!6208 (regOne!32942 (h!71268 (exprs!6099 lt!2357543)))))))

(declare-fun c!1142660 () Bool)

(declare-fun bm!533312 () Bool)

(declare-fun call!533319 () (InoxSet Context!11198))

(declare-fun c!1142659 () Bool)

(declare-fun call!533320 () List!64944)

(assert (=> bm!533312 (= call!533319 (derivationStepZipperDown!1463 (ite c!1142663 (regTwo!32943 (h!71268 (exprs!6099 lt!2357543))) (ite c!1142660 (regTwo!32942 (h!71268 (exprs!6099 lt!2357543))) (ite c!1142659 (regOne!32942 (h!71268 (exprs!6099 lt!2357543))) (reg!16544 (h!71268 (exprs!6099 lt!2357543)))))) (ite (or c!1142663 c!1142660) (Context!11199 (t!378508 (exprs!6099 lt!2357543))) (Context!11199 call!533320)) (h!71269 s!2326)))))

(declare-fun b!6295010 () Bool)

(assert (=> b!6295010 (= e!3827561 (store ((as const (Array Context!11198 Bool)) false) (Context!11199 (t!378508 (exprs!6099 lt!2357543))) true))))

(declare-fun call!533318 () List!64944)

(declare-fun call!533321 () (InoxSet Context!11198))

(declare-fun bm!533313 () Bool)

(assert (=> bm!533313 (= call!533321 (derivationStepZipperDown!1463 (ite c!1142663 (regOne!32943 (h!71268 (exprs!6099 lt!2357543))) (regOne!32942 (h!71268 (exprs!6099 lt!2357543)))) (ite c!1142663 (Context!11199 (t!378508 (exprs!6099 lt!2357543))) (Context!11199 call!533318)) (h!71269 s!2326)))))

(declare-fun b!6295011 () Bool)

(assert (=> b!6295011 (= c!1142660 e!3827560)))

(declare-fun res!2595897 () Bool)

(assert (=> b!6295011 (=> (not res!2595897) (not e!3827560))))

(assert (=> b!6295011 (= res!2595897 ((_ is Concat!25060) (h!71268 (exprs!6099 lt!2357543))))))

(declare-fun e!3827559 () (InoxSet Context!11198))

(assert (=> b!6295011 (= e!3827558 e!3827559)))

(declare-fun b!6295012 () Bool)

(declare-fun call!533322 () (InoxSet Context!11198))

(assert (=> b!6295012 (= e!3827559 ((_ map or) call!533321 call!533322))))

(declare-fun b!6295013 () Bool)

(declare-fun e!3827557 () (InoxSet Context!11198))

(assert (=> b!6295013 (= e!3827559 e!3827557)))

(assert (=> b!6295013 (= c!1142659 ((_ is Concat!25060) (h!71268 (exprs!6099 lt!2357543))))))

(declare-fun b!6295014 () Bool)

(declare-fun e!3827556 () (InoxSet Context!11198))

(assert (=> b!6295014 (= e!3827556 ((as const (Array Context!11198 Bool)) false))))

(declare-fun b!6295015 () Bool)

(declare-fun call!533317 () (InoxSet Context!11198))

(assert (=> b!6295015 (= e!3827557 call!533317)))

(declare-fun bm!533314 () Bool)

(assert (=> bm!533314 (= call!533318 ($colon$colon!2080 (exprs!6099 (Context!11199 (t!378508 (exprs!6099 lt!2357543)))) (ite (or c!1142660 c!1142659) (regTwo!32942 (h!71268 (exprs!6099 lt!2357543))) (h!71268 (exprs!6099 lt!2357543)))))))

(declare-fun d!1975707 () Bool)

(declare-fun c!1142661 () Bool)

(assert (=> d!1975707 (= c!1142661 (and ((_ is ElementMatch!16215) (h!71268 (exprs!6099 lt!2357543))) (= (c!1142274 (h!71268 (exprs!6099 lt!2357543))) (h!71269 s!2326))))))

(assert (=> d!1975707 (= (derivationStepZipperDown!1463 (h!71268 (exprs!6099 lt!2357543)) (Context!11199 (t!378508 (exprs!6099 lt!2357543))) (h!71269 s!2326)) e!3827561)))

(declare-fun bm!533315 () Bool)

(assert (=> bm!533315 (= call!533322 call!533319)))

(declare-fun bm!533316 () Bool)

(assert (=> bm!533316 (= call!533317 call!533322)))

(declare-fun b!6295016 () Bool)

(declare-fun c!1142662 () Bool)

(assert (=> b!6295016 (= c!1142662 ((_ is Star!16215) (h!71268 (exprs!6099 lt!2357543))))))

(assert (=> b!6295016 (= e!3827557 e!3827556)))

(declare-fun b!6295017 () Bool)

(assert (=> b!6295017 (= e!3827558 ((_ map or) call!533321 call!533319))))

(declare-fun b!6295018 () Bool)

(assert (=> b!6295018 (= e!3827556 call!533317)))

(declare-fun bm!533317 () Bool)

(assert (=> bm!533317 (= call!533320 call!533318)))

(assert (= (and d!1975707 c!1142661) b!6295010))

(assert (= (and d!1975707 (not c!1142661)) b!6295008))

(assert (= (and b!6295008 c!1142663) b!6295017))

(assert (= (and b!6295008 (not c!1142663)) b!6295011))

(assert (= (and b!6295011 res!2595897) b!6295009))

(assert (= (and b!6295011 c!1142660) b!6295012))

(assert (= (and b!6295011 (not c!1142660)) b!6295013))

(assert (= (and b!6295013 c!1142659) b!6295015))

(assert (= (and b!6295013 (not c!1142659)) b!6295016))

(assert (= (and b!6295016 c!1142662) b!6295018))

(assert (= (and b!6295016 (not c!1142662)) b!6295014))

(assert (= (or b!6295015 b!6295018) bm!533317))

(assert (= (or b!6295015 b!6295018) bm!533316))

(assert (= (or b!6295012 bm!533317) bm!533314))

(assert (= (or b!6295012 bm!533316) bm!533315))

(assert (= (or b!6295017 bm!533315) bm!533312))

(assert (= (or b!6295017 b!6295012) bm!533313))

(declare-fun m!7115116 () Bool)

(assert (=> bm!533312 m!7115116))

(declare-fun m!7115118 () Bool)

(assert (=> b!6295010 m!7115118))

(declare-fun m!7115120 () Bool)

(assert (=> bm!533313 m!7115120))

(declare-fun m!7115122 () Bool)

(assert (=> b!6295009 m!7115122))

(declare-fun m!7115124 () Bool)

(assert (=> bm!533314 m!7115124))

(assert (=> bm!533158 d!1975707))

(assert (=> d!1975303 d!1975699))

(assert (=> b!6293997 d!1975345))

(assert (=> b!6293968 d!1975683))

(declare-fun d!1975709 () Bool)

(declare-fun res!2595898 () Bool)

(declare-fun e!3827562 () Bool)

(assert (=> d!1975709 (=> res!2595898 e!3827562)))

(assert (=> d!1975709 (= res!2595898 ((_ is Nil!64820) (exprs!6099 (h!71270 zl!343))))))

(assert (=> d!1975709 (= (forall!15365 (exprs!6099 (h!71270 zl!343)) lambda!345822) e!3827562)))

(declare-fun b!6295019 () Bool)

(declare-fun e!3827563 () Bool)

(assert (=> b!6295019 (= e!3827562 e!3827563)))

(declare-fun res!2595899 () Bool)

(assert (=> b!6295019 (=> (not res!2595899) (not e!3827563))))

(assert (=> b!6295019 (= res!2595899 (dynLambda!25659 lambda!345822 (h!71268 (exprs!6099 (h!71270 zl!343)))))))

(declare-fun b!6295020 () Bool)

(assert (=> b!6295020 (= e!3827563 (forall!15365 (t!378508 (exprs!6099 (h!71270 zl!343))) lambda!345822))))

(assert (= (and d!1975709 (not res!2595898)) b!6295019))

(assert (= (and b!6295019 res!2595899) b!6295020))

(declare-fun b_lambda!239531 () Bool)

(assert (=> (not b_lambda!239531) (not b!6295019)))

(declare-fun m!7115126 () Bool)

(assert (=> b!6295019 m!7115126))

(declare-fun m!7115128 () Bool)

(assert (=> b!6295020 m!7115128))

(assert (=> d!1975291 d!1975709))

(declare-fun d!1975711 () Bool)

(declare-fun c!1142664 () Bool)

(assert (=> d!1975711 (= c!1142664 (isEmpty!36882 (tail!12015 (t!378509 s!2326))))))

(declare-fun e!3827564 () Bool)

(assert (=> d!1975711 (= (matchZipper!2227 (derivationStepZipper!2181 lt!2357535 (head!12930 (t!378509 s!2326))) (tail!12015 (t!378509 s!2326))) e!3827564)))

(declare-fun b!6295021 () Bool)

(assert (=> b!6295021 (= e!3827564 (nullableZipper!1985 (derivationStepZipper!2181 lt!2357535 (head!12930 (t!378509 s!2326)))))))

(declare-fun b!6295022 () Bool)

(assert (=> b!6295022 (= e!3827564 (matchZipper!2227 (derivationStepZipper!2181 (derivationStepZipper!2181 lt!2357535 (head!12930 (t!378509 s!2326))) (head!12930 (tail!12015 (t!378509 s!2326)))) (tail!12015 (tail!12015 (t!378509 s!2326)))))))

(assert (= (and d!1975711 c!1142664) b!6295021))

(assert (= (and d!1975711 (not c!1142664)) b!6295022))

(assert (=> d!1975711 m!7114220))

(assert (=> d!1975711 m!7114844))

(assert (=> b!6295021 m!7114342))

(declare-fun m!7115130 () Bool)

(assert (=> b!6295021 m!7115130))

(assert (=> b!6295022 m!7114220))

(assert (=> b!6295022 m!7114848))

(assert (=> b!6295022 m!7114342))

(assert (=> b!6295022 m!7114848))

(declare-fun m!7115132 () Bool)

(assert (=> b!6295022 m!7115132))

(assert (=> b!6295022 m!7114220))

(assert (=> b!6295022 m!7114852))

(assert (=> b!6295022 m!7115132))

(assert (=> b!6295022 m!7114852))

(declare-fun m!7115134 () Bool)

(assert (=> b!6295022 m!7115134))

(assert (=> b!6294100 d!1975711))

(declare-fun bs!1574661 () Bool)

(declare-fun d!1975713 () Bool)

(assert (= bs!1574661 (and d!1975713 b!6293461)))

(declare-fun lambda!345895 () Int)

(assert (=> bs!1574661 (= (= (head!12930 (t!378509 s!2326)) (h!71269 s!2326)) (= lambda!345895 lambda!345781))))

(declare-fun bs!1574662 () Bool)

(assert (= bs!1574662 (and d!1975713 d!1975589)))

(assert (=> bs!1574662 (= lambda!345895 lambda!345879)))

(declare-fun bs!1574663 () Bool)

(assert (= bs!1574663 (and d!1975713 d!1975673)))

(assert (=> bs!1574663 (= lambda!345895 lambda!345889)))

(assert (=> d!1975713 true))

(assert (=> d!1975713 (= (derivationStepZipper!2181 lt!2357535 (head!12930 (t!378509 s!2326))) (flatMap!1720 lt!2357535 lambda!345895))))

(declare-fun bs!1574664 () Bool)

(assert (= bs!1574664 d!1975713))

(declare-fun m!7115136 () Bool)

(assert (=> bs!1574664 m!7115136))

(assert (=> b!6294100 d!1975713))

(assert (=> b!6294100 d!1975591))

(assert (=> b!6294100 d!1975593))

(declare-fun d!1975715 () Bool)

(assert (=> d!1975715 (= (nullable!6208 (h!71268 (exprs!6099 (Context!11199 (Cons!64820 (h!71268 (exprs!6099 (h!71270 zl!343))) (t!378508 (exprs!6099 (h!71270 zl!343)))))))) (nullableFct!2159 (h!71268 (exprs!6099 (Context!11199 (Cons!64820 (h!71268 (exprs!6099 (h!71270 zl!343))) (t!378508 (exprs!6099 (h!71270 zl!343)))))))))))

(declare-fun bs!1574665 () Bool)

(assert (= bs!1574665 d!1975715))

(declare-fun m!7115138 () Bool)

(assert (=> bs!1574665 m!7115138))

(assert (=> b!6294053 d!1975715))

(declare-fun d!1975717 () Bool)

(assert (=> d!1975717 (= (isEmpty!36877 (unfocusZipperList!1636 zl!343)) ((_ is Nil!64820) (unfocusZipperList!1636 zl!343)))))

(assert (=> b!6294034 d!1975717))

(declare-fun b!6295023 () Bool)

(declare-fun e!3827570 () (InoxSet Context!11198))

(declare-fun e!3827567 () (InoxSet Context!11198))

(assert (=> b!6295023 (= e!3827570 e!3827567)))

(declare-fun c!1142669 () Bool)

(assert (=> b!6295023 (= c!1142669 ((_ is Union!16215) (ite c!1142443 (regTwo!32943 (h!71268 (exprs!6099 (h!71270 zl!343)))) (ite c!1142440 (regTwo!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))) (ite c!1142439 (regOne!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))) (reg!16544 (h!71268 (exprs!6099 (h!71270 zl!343)))))))))))

(declare-fun b!6295024 () Bool)

(declare-fun e!3827569 () Bool)

(assert (=> b!6295024 (= e!3827569 (nullable!6208 (regOne!32942 (ite c!1142443 (regTwo!32943 (h!71268 (exprs!6099 (h!71270 zl!343)))) (ite c!1142440 (regTwo!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))) (ite c!1142439 (regOne!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))) (reg!16544 (h!71268 (exprs!6099 (h!71270 zl!343))))))))))))

(declare-fun c!1142665 () Bool)

(declare-fun c!1142666 () Bool)

(declare-fun call!533325 () (InoxSet Context!11198))

(declare-fun call!533326 () List!64944)

(declare-fun bm!533318 () Bool)

(assert (=> bm!533318 (= call!533325 (derivationStepZipperDown!1463 (ite c!1142669 (regTwo!32943 (ite c!1142443 (regTwo!32943 (h!71268 (exprs!6099 (h!71270 zl!343)))) (ite c!1142440 (regTwo!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))) (ite c!1142439 (regOne!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))) (reg!16544 (h!71268 (exprs!6099 (h!71270 zl!343)))))))) (ite c!1142666 (regTwo!32942 (ite c!1142443 (regTwo!32943 (h!71268 (exprs!6099 (h!71270 zl!343)))) (ite c!1142440 (regTwo!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))) (ite c!1142439 (regOne!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))) (reg!16544 (h!71268 (exprs!6099 (h!71270 zl!343)))))))) (ite c!1142665 (regOne!32942 (ite c!1142443 (regTwo!32943 (h!71268 (exprs!6099 (h!71270 zl!343)))) (ite c!1142440 (regTwo!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))) (ite c!1142439 (regOne!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))) (reg!16544 (h!71268 (exprs!6099 (h!71270 zl!343)))))))) (reg!16544 (ite c!1142443 (regTwo!32943 (h!71268 (exprs!6099 (h!71270 zl!343)))) (ite c!1142440 (regTwo!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))) (ite c!1142439 (regOne!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))) (reg!16544 (h!71268 (exprs!6099 (h!71270 zl!343))))))))))) (ite (or c!1142669 c!1142666) (ite (or c!1142443 c!1142440) lt!2357543 (Context!11199 call!533159)) (Context!11199 call!533326)) (h!71269 s!2326)))))

(declare-fun b!6295025 () Bool)

(assert (=> b!6295025 (= e!3827570 (store ((as const (Array Context!11198 Bool)) false) (ite (or c!1142443 c!1142440) lt!2357543 (Context!11199 call!533159)) true))))

(declare-fun call!533324 () List!64944)

(declare-fun bm!533319 () Bool)

(declare-fun call!533327 () (InoxSet Context!11198))

(assert (=> bm!533319 (= call!533327 (derivationStepZipperDown!1463 (ite c!1142669 (regOne!32943 (ite c!1142443 (regTwo!32943 (h!71268 (exprs!6099 (h!71270 zl!343)))) (ite c!1142440 (regTwo!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))) (ite c!1142439 (regOne!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))) (reg!16544 (h!71268 (exprs!6099 (h!71270 zl!343)))))))) (regOne!32942 (ite c!1142443 (regTwo!32943 (h!71268 (exprs!6099 (h!71270 zl!343)))) (ite c!1142440 (regTwo!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))) (ite c!1142439 (regOne!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))) (reg!16544 (h!71268 (exprs!6099 (h!71270 zl!343))))))))) (ite c!1142669 (ite (or c!1142443 c!1142440) lt!2357543 (Context!11199 call!533159)) (Context!11199 call!533324)) (h!71269 s!2326)))))

(declare-fun b!6295026 () Bool)

(assert (=> b!6295026 (= c!1142666 e!3827569)))

(declare-fun res!2595900 () Bool)

(assert (=> b!6295026 (=> (not res!2595900) (not e!3827569))))

(assert (=> b!6295026 (= res!2595900 ((_ is Concat!25060) (ite c!1142443 (regTwo!32943 (h!71268 (exprs!6099 (h!71270 zl!343)))) (ite c!1142440 (regTwo!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))) (ite c!1142439 (regOne!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))) (reg!16544 (h!71268 (exprs!6099 (h!71270 zl!343)))))))))))

(declare-fun e!3827568 () (InoxSet Context!11198))

(assert (=> b!6295026 (= e!3827567 e!3827568)))

(declare-fun b!6295027 () Bool)

(declare-fun call!533328 () (InoxSet Context!11198))

(assert (=> b!6295027 (= e!3827568 ((_ map or) call!533327 call!533328))))

(declare-fun b!6295028 () Bool)

(declare-fun e!3827566 () (InoxSet Context!11198))

(assert (=> b!6295028 (= e!3827568 e!3827566)))

(assert (=> b!6295028 (= c!1142665 ((_ is Concat!25060) (ite c!1142443 (regTwo!32943 (h!71268 (exprs!6099 (h!71270 zl!343)))) (ite c!1142440 (regTwo!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))) (ite c!1142439 (regOne!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))) (reg!16544 (h!71268 (exprs!6099 (h!71270 zl!343)))))))))))

(declare-fun b!6295029 () Bool)

(declare-fun e!3827565 () (InoxSet Context!11198))

(assert (=> b!6295029 (= e!3827565 ((as const (Array Context!11198 Bool)) false))))

(declare-fun b!6295030 () Bool)

(declare-fun call!533323 () (InoxSet Context!11198))

(assert (=> b!6295030 (= e!3827566 call!533323)))

(declare-fun bm!533320 () Bool)

(assert (=> bm!533320 (= call!533324 ($colon$colon!2080 (exprs!6099 (ite (or c!1142443 c!1142440) lt!2357543 (Context!11199 call!533159))) (ite (or c!1142666 c!1142665) (regTwo!32942 (ite c!1142443 (regTwo!32943 (h!71268 (exprs!6099 (h!71270 zl!343)))) (ite c!1142440 (regTwo!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))) (ite c!1142439 (regOne!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))) (reg!16544 (h!71268 (exprs!6099 (h!71270 zl!343)))))))) (ite c!1142443 (regTwo!32943 (h!71268 (exprs!6099 (h!71270 zl!343)))) (ite c!1142440 (regTwo!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))) (ite c!1142439 (regOne!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))) (reg!16544 (h!71268 (exprs!6099 (h!71270 zl!343))))))))))))

(declare-fun c!1142667 () Bool)

(declare-fun d!1975719 () Bool)

(assert (=> d!1975719 (= c!1142667 (and ((_ is ElementMatch!16215) (ite c!1142443 (regTwo!32943 (h!71268 (exprs!6099 (h!71270 zl!343)))) (ite c!1142440 (regTwo!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))) (ite c!1142439 (regOne!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))) (reg!16544 (h!71268 (exprs!6099 (h!71270 zl!343)))))))) (= (c!1142274 (ite c!1142443 (regTwo!32943 (h!71268 (exprs!6099 (h!71270 zl!343)))) (ite c!1142440 (regTwo!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))) (ite c!1142439 (regOne!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))) (reg!16544 (h!71268 (exprs!6099 (h!71270 zl!343)))))))) (h!71269 s!2326))))))

(assert (=> d!1975719 (= (derivationStepZipperDown!1463 (ite c!1142443 (regTwo!32943 (h!71268 (exprs!6099 (h!71270 zl!343)))) (ite c!1142440 (regTwo!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))) (ite c!1142439 (regOne!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))) (reg!16544 (h!71268 (exprs!6099 (h!71270 zl!343))))))) (ite (or c!1142443 c!1142440) lt!2357543 (Context!11199 call!533159)) (h!71269 s!2326)) e!3827570)))

(declare-fun bm!533321 () Bool)

(assert (=> bm!533321 (= call!533328 call!533325)))

(declare-fun bm!533322 () Bool)

(assert (=> bm!533322 (= call!533323 call!533328)))

(declare-fun c!1142668 () Bool)

(declare-fun b!6295031 () Bool)

(assert (=> b!6295031 (= c!1142668 ((_ is Star!16215) (ite c!1142443 (regTwo!32943 (h!71268 (exprs!6099 (h!71270 zl!343)))) (ite c!1142440 (regTwo!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))) (ite c!1142439 (regOne!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))) (reg!16544 (h!71268 (exprs!6099 (h!71270 zl!343)))))))))))

(assert (=> b!6295031 (= e!3827566 e!3827565)))

(declare-fun b!6295032 () Bool)

(assert (=> b!6295032 (= e!3827567 ((_ map or) call!533327 call!533325))))

(declare-fun b!6295033 () Bool)

(assert (=> b!6295033 (= e!3827565 call!533323)))

(declare-fun bm!533323 () Bool)

(assert (=> bm!533323 (= call!533326 call!533324)))

(assert (= (and d!1975719 c!1142667) b!6295025))

(assert (= (and d!1975719 (not c!1142667)) b!6295023))

(assert (= (and b!6295023 c!1142669) b!6295032))

(assert (= (and b!6295023 (not c!1142669)) b!6295026))

(assert (= (and b!6295026 res!2595900) b!6295024))

(assert (= (and b!6295026 c!1142666) b!6295027))

(assert (= (and b!6295026 (not c!1142666)) b!6295028))

(assert (= (and b!6295028 c!1142665) b!6295030))

(assert (= (and b!6295028 (not c!1142665)) b!6295031))

(assert (= (and b!6295031 c!1142668) b!6295033))

(assert (= (and b!6295031 (not c!1142668)) b!6295029))

(assert (= (or b!6295030 b!6295033) bm!533323))

(assert (= (or b!6295030 b!6295033) bm!533322))

(assert (= (or b!6295027 bm!533323) bm!533320))

(assert (= (or b!6295027 bm!533322) bm!533321))

(assert (= (or b!6295032 bm!533321) bm!533318))

(assert (= (or b!6295032 b!6295027) bm!533319))

(declare-fun m!7115140 () Bool)

(assert (=> bm!533318 m!7115140))

(declare-fun m!7115142 () Bool)

(assert (=> b!6295025 m!7115142))

(declare-fun m!7115144 () Bool)

(assert (=> bm!533319 m!7115144))

(declare-fun m!7115146 () Bool)

(assert (=> b!6295024 m!7115146))

(declare-fun m!7115148 () Bool)

(assert (=> bm!533320 m!7115148))

(assert (=> bm!533151 d!1975719))

(declare-fun d!1975721 () Bool)

(declare-fun res!2595901 () Bool)

(declare-fun e!3827571 () Bool)

(assert (=> d!1975721 (=> res!2595901 e!3827571)))

(assert (=> d!1975721 (= res!2595901 ((_ is Nil!64820) (exprs!6099 setElem!42836)))))

(assert (=> d!1975721 (= (forall!15365 (exprs!6099 setElem!42836) lambda!345839) e!3827571)))

(declare-fun b!6295034 () Bool)

(declare-fun e!3827572 () Bool)

(assert (=> b!6295034 (= e!3827571 e!3827572)))

(declare-fun res!2595902 () Bool)

(assert (=> b!6295034 (=> (not res!2595902) (not e!3827572))))

(assert (=> b!6295034 (= res!2595902 (dynLambda!25659 lambda!345839 (h!71268 (exprs!6099 setElem!42836))))))

(declare-fun b!6295035 () Bool)

(assert (=> b!6295035 (= e!3827572 (forall!15365 (t!378508 (exprs!6099 setElem!42836)) lambda!345839))))

(assert (= (and d!1975721 (not res!2595901)) b!6295034))

(assert (= (and b!6295034 res!2595902) b!6295035))

(declare-fun b_lambda!239533 () Bool)

(assert (=> (not b_lambda!239533) (not b!6295034)))

(declare-fun m!7115150 () Bool)

(assert (=> b!6295034 m!7115150))

(declare-fun m!7115152 () Bool)

(assert (=> b!6295035 m!7115152))

(assert (=> d!1975343 d!1975721))

(declare-fun d!1975723 () Bool)

(assert (=> d!1975723 (= ($colon$colon!2080 (exprs!6099 lt!2357543) (ite (or c!1142440 c!1142439) (regTwo!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))) (h!71268 (exprs!6099 (h!71270 zl!343))))) (Cons!64820 (ite (or c!1142440 c!1142439) (regTwo!32942 (h!71268 (exprs!6099 (h!71270 zl!343)))) (h!71268 (exprs!6099 (h!71270 zl!343)))) (exprs!6099 lt!2357543)))))

(assert (=> bm!533153 d!1975723))

(declare-fun d!1975725 () Bool)

(assert (=> d!1975725 (= (isEmptyExpr!1621 lt!2357616) ((_ is EmptyExpr!16215) lt!2357616))))

(assert (=> b!6294003 d!1975725))

(assert (=> b!6293974 d!1975629))

(assert (=> b!6293974 d!1975631))

(assert (=> d!1975305 d!1975699))

(declare-fun d!1975727 () Bool)

(assert (=> d!1975727 (= (head!12931 (unfocusZipperList!1636 zl!343)) (h!71268 (unfocusZipperList!1636 zl!343)))))

(assert (=> b!6294025 d!1975727))

(declare-fun b!6295036 () Bool)

(declare-fun res!2595908 () Bool)

(declare-fun e!3827574 () Bool)

(assert (=> b!6295036 (=> (not res!2595908) (not e!3827574))))

(declare-fun call!533329 () Bool)

(assert (=> b!6295036 (= res!2595908 (not call!533329))))

(declare-fun b!6295037 () Bool)

(declare-fun e!3827578 () Bool)

(declare-fun e!3827575 () Bool)

(assert (=> b!6295037 (= e!3827578 e!3827575)))

(declare-fun res!2595910 () Bool)

(assert (=> b!6295037 (=> res!2595910 e!3827575)))

(assert (=> b!6295037 (= res!2595910 call!533329)))

(declare-fun b!6295038 () Bool)

(declare-fun e!3827573 () Bool)

(assert (=> b!6295038 (= e!3827573 (matchR!8398 (derivativeStep!4924 (regTwo!32942 r!7292) (head!12930 (_2!36497 (get!22411 lt!2357577)))) (tail!12015 (_2!36497 (get!22411 lt!2357577)))))))

(declare-fun b!6295039 () Bool)

(declare-fun res!2595903 () Bool)

(declare-fun e!3827576 () Bool)

(assert (=> b!6295039 (=> res!2595903 e!3827576)))

(assert (=> b!6295039 (= res!2595903 e!3827574)))

(declare-fun res!2595909 () Bool)

(assert (=> b!6295039 (=> (not res!2595909) (not e!3827574))))

(declare-fun lt!2357671 () Bool)

(assert (=> b!6295039 (= res!2595909 lt!2357671)))

(declare-fun b!6295040 () Bool)

(declare-fun e!3827577 () Bool)

(assert (=> b!6295040 (= e!3827577 (not lt!2357671))))

(declare-fun b!6295041 () Bool)

(declare-fun res!2595907 () Bool)

(assert (=> b!6295041 (=> res!2595907 e!3827576)))

(assert (=> b!6295041 (= res!2595907 (not ((_ is ElementMatch!16215) (regTwo!32942 r!7292))))))

(assert (=> b!6295041 (= e!3827577 e!3827576)))

(declare-fun b!6295042 () Bool)

(assert (=> b!6295042 (= e!3827574 (= (head!12930 (_2!36497 (get!22411 lt!2357577))) (c!1142274 (regTwo!32942 r!7292))))))

(declare-fun bm!533324 () Bool)

(assert (=> bm!533324 (= call!533329 (isEmpty!36882 (_2!36497 (get!22411 lt!2357577))))))

(declare-fun b!6295043 () Bool)

(assert (=> b!6295043 (= e!3827575 (not (= (head!12930 (_2!36497 (get!22411 lt!2357577))) (c!1142274 (regTwo!32942 r!7292)))))))

(declare-fun b!6295044 () Bool)

(assert (=> b!6295044 (= e!3827576 e!3827578)))

(declare-fun res!2595906 () Bool)

(assert (=> b!6295044 (=> (not res!2595906) (not e!3827578))))

(assert (=> b!6295044 (= res!2595906 (not lt!2357671))))

(declare-fun b!6295045 () Bool)

(assert (=> b!6295045 (= e!3827573 (nullable!6208 (regTwo!32942 r!7292)))))

(declare-fun b!6295046 () Bool)

(declare-fun e!3827579 () Bool)

(assert (=> b!6295046 (= e!3827579 (= lt!2357671 call!533329))))

(declare-fun b!6295047 () Bool)

(assert (=> b!6295047 (= e!3827579 e!3827577)))

(declare-fun c!1142670 () Bool)

(assert (=> b!6295047 (= c!1142670 ((_ is EmptyLang!16215) (regTwo!32942 r!7292)))))

(declare-fun d!1975729 () Bool)

(assert (=> d!1975729 e!3827579))

(declare-fun c!1142671 () Bool)

(assert (=> d!1975729 (= c!1142671 ((_ is EmptyExpr!16215) (regTwo!32942 r!7292)))))

(assert (=> d!1975729 (= lt!2357671 e!3827573)))

(declare-fun c!1142672 () Bool)

(assert (=> d!1975729 (= c!1142672 (isEmpty!36882 (_2!36497 (get!22411 lt!2357577))))))

(assert (=> d!1975729 (validRegex!7951 (regTwo!32942 r!7292))))

(assert (=> d!1975729 (= (matchR!8398 (regTwo!32942 r!7292) (_2!36497 (get!22411 lt!2357577))) lt!2357671)))

(declare-fun b!6295048 () Bool)

(declare-fun res!2595905 () Bool)

(assert (=> b!6295048 (=> (not res!2595905) (not e!3827574))))

(assert (=> b!6295048 (= res!2595905 (isEmpty!36882 (tail!12015 (_2!36497 (get!22411 lt!2357577)))))))

(declare-fun b!6295049 () Bool)

(declare-fun res!2595904 () Bool)

(assert (=> b!6295049 (=> res!2595904 e!3827575)))

(assert (=> b!6295049 (= res!2595904 (not (isEmpty!36882 (tail!12015 (_2!36497 (get!22411 lt!2357577))))))))

(assert (= (and d!1975729 c!1142672) b!6295045))

(assert (= (and d!1975729 (not c!1142672)) b!6295038))

(assert (= (and d!1975729 c!1142671) b!6295046))

(assert (= (and d!1975729 (not c!1142671)) b!6295047))

(assert (= (and b!6295047 c!1142670) b!6295040))

(assert (= (and b!6295047 (not c!1142670)) b!6295041))

(assert (= (and b!6295041 (not res!2595907)) b!6295039))

(assert (= (and b!6295039 res!2595909) b!6295036))

(assert (= (and b!6295036 res!2595908) b!6295048))

(assert (= (and b!6295048 res!2595905) b!6295042))

(assert (= (and b!6295039 (not res!2595903)) b!6295044))

(assert (= (and b!6295044 res!2595906) b!6295037))

(assert (= (and b!6295037 (not res!2595910)) b!6295049))

(assert (= (and b!6295049 (not res!2595904)) b!6295043))

(assert (= (or b!6295046 b!6295036 b!6295037) bm!533324))

(assert (=> b!6295045 m!7114914))

(declare-fun m!7115154 () Bool)

(assert (=> b!6295038 m!7115154))

(assert (=> b!6295038 m!7115154))

(declare-fun m!7115156 () Bool)

(assert (=> b!6295038 m!7115156))

(declare-fun m!7115158 () Bool)

(assert (=> b!6295038 m!7115158))

(assert (=> b!6295038 m!7115156))

(assert (=> b!6295038 m!7115158))

(declare-fun m!7115160 () Bool)

(assert (=> b!6295038 m!7115160))

(assert (=> b!6295043 m!7115154))

(assert (=> b!6295042 m!7115154))

(assert (=> b!6295049 m!7115158))

(assert (=> b!6295049 m!7115158))

(declare-fun m!7115162 () Bool)

(assert (=> b!6295049 m!7115162))

(declare-fun m!7115164 () Bool)

(assert (=> d!1975729 m!7115164))

(assert (=> d!1975729 m!7114920))

(assert (=> b!6295048 m!7115158))

(assert (=> b!6295048 m!7115158))

(assert (=> b!6295048 m!7115162))

(assert (=> bm!533324 m!7115164))

(assert (=> b!6293639 d!1975729))

(assert (=> b!6293639 d!1975553))

(assert (=> d!1975299 d!1975305))

(assert (=> d!1975299 d!1975303))

(declare-fun d!1975731 () Bool)

(declare-fun e!3827582 () Bool)

(assert (=> d!1975731 (= (matchZipper!2227 ((_ map or) lt!2357538 lt!2357535) (t!378509 s!2326)) e!3827582)))

(declare-fun res!2595913 () Bool)

(assert (=> d!1975731 (=> res!2595913 e!3827582)))

(assert (=> d!1975731 (= res!2595913 (matchZipper!2227 lt!2357538 (t!378509 s!2326)))))

(assert (=> d!1975731 true))

(declare-fun _$48!2060 () Unit!158191)

(assert (=> d!1975731 (= (choose!46763 lt!2357538 lt!2357535 (t!378509 s!2326)) _$48!2060)))

(declare-fun b!6295052 () Bool)

(assert (=> b!6295052 (= e!3827582 (matchZipper!2227 lt!2357535 (t!378509 s!2326)))))

(assert (= (and d!1975731 (not res!2595913)) b!6295052))

(assert (=> d!1975731 m!7113922))

(assert (=> d!1975731 m!7113920))

(assert (=> b!6295052 m!7113952))

(assert (=> d!1975299 d!1975731))

(assert (=> d!1975237 d!1975585))

(declare-fun b!6295053 () Bool)

(declare-fun res!2595919 () Bool)

(declare-fun e!3827584 () Bool)

(assert (=> b!6295053 (=> (not res!2595919) (not e!3827584))))

(declare-fun call!533330 () Bool)

(assert (=> b!6295053 (= res!2595919 (not call!533330))))

(declare-fun b!6295054 () Bool)

(declare-fun e!3827588 () Bool)

(declare-fun e!3827585 () Bool)

(assert (=> b!6295054 (= e!3827588 e!3827585)))

(declare-fun res!2595921 () Bool)

(assert (=> b!6295054 (=> res!2595921 e!3827585)))

(assert (=> b!6295054 (= res!2595921 call!533330)))

(declare-fun b!6295055 () Bool)

(declare-fun e!3827583 () Bool)

(assert (=> b!6295055 (= e!3827583 (matchR!8398 (derivativeStep!4924 (regOne!32942 r!7292) (head!12930 Nil!64821)) (tail!12015 Nil!64821)))))

(declare-fun b!6295056 () Bool)

(declare-fun res!2595914 () Bool)

(declare-fun e!3827586 () Bool)

(assert (=> b!6295056 (=> res!2595914 e!3827586)))

(assert (=> b!6295056 (= res!2595914 e!3827584)))

(declare-fun res!2595920 () Bool)

(assert (=> b!6295056 (=> (not res!2595920) (not e!3827584))))

(declare-fun lt!2357672 () Bool)

(assert (=> b!6295056 (= res!2595920 lt!2357672)))

(declare-fun b!6295057 () Bool)

(declare-fun e!3827587 () Bool)

(assert (=> b!6295057 (= e!3827587 (not lt!2357672))))

(declare-fun b!6295058 () Bool)

(declare-fun res!2595918 () Bool)

(assert (=> b!6295058 (=> res!2595918 e!3827586)))

(assert (=> b!6295058 (= res!2595918 (not ((_ is ElementMatch!16215) (regOne!32942 r!7292))))))

(assert (=> b!6295058 (= e!3827587 e!3827586)))

(declare-fun b!6295059 () Bool)

(assert (=> b!6295059 (= e!3827584 (= (head!12930 Nil!64821) (c!1142274 (regOne!32942 r!7292))))))

(declare-fun bm!533325 () Bool)

(assert (=> bm!533325 (= call!533330 (isEmpty!36882 Nil!64821))))

(declare-fun b!6295060 () Bool)

(assert (=> b!6295060 (= e!3827585 (not (= (head!12930 Nil!64821) (c!1142274 (regOne!32942 r!7292)))))))

(declare-fun b!6295061 () Bool)

(assert (=> b!6295061 (= e!3827586 e!3827588)))

(declare-fun res!2595917 () Bool)

(assert (=> b!6295061 (=> (not res!2595917) (not e!3827588))))

(assert (=> b!6295061 (= res!2595917 (not lt!2357672))))

(declare-fun b!6295062 () Bool)

(assert (=> b!6295062 (= e!3827583 (nullable!6208 (regOne!32942 r!7292)))))

(declare-fun b!6295063 () Bool)

(declare-fun e!3827589 () Bool)

(assert (=> b!6295063 (= e!3827589 (= lt!2357672 call!533330))))

(declare-fun b!6295064 () Bool)

(assert (=> b!6295064 (= e!3827589 e!3827587)))

(declare-fun c!1142673 () Bool)

(assert (=> b!6295064 (= c!1142673 ((_ is EmptyLang!16215) (regOne!32942 r!7292)))))

(declare-fun d!1975733 () Bool)

(assert (=> d!1975733 e!3827589))

(declare-fun c!1142674 () Bool)

(assert (=> d!1975733 (= c!1142674 ((_ is EmptyExpr!16215) (regOne!32942 r!7292)))))

(assert (=> d!1975733 (= lt!2357672 e!3827583)))

(declare-fun c!1142675 () Bool)

(assert (=> d!1975733 (= c!1142675 (isEmpty!36882 Nil!64821))))

(assert (=> d!1975733 (validRegex!7951 (regOne!32942 r!7292))))

(assert (=> d!1975733 (= (matchR!8398 (regOne!32942 r!7292) Nil!64821) lt!2357672)))

(declare-fun b!6295065 () Bool)

(declare-fun res!2595916 () Bool)

(assert (=> b!6295065 (=> (not res!2595916) (not e!3827584))))

(assert (=> b!6295065 (= res!2595916 (isEmpty!36882 (tail!12015 Nil!64821)))))

(declare-fun b!6295066 () Bool)

(declare-fun res!2595915 () Bool)

(assert (=> b!6295066 (=> res!2595915 e!3827585)))

(assert (=> b!6295066 (= res!2595915 (not (isEmpty!36882 (tail!12015 Nil!64821))))))

(assert (= (and d!1975733 c!1142675) b!6295062))

(assert (= (and d!1975733 (not c!1142675)) b!6295055))

(assert (= (and d!1975733 c!1142674) b!6295063))

(assert (= (and d!1975733 (not c!1142674)) b!6295064))

(assert (= (and b!6295064 c!1142673) b!6295057))

(assert (= (and b!6295064 (not c!1142673)) b!6295058))

(assert (= (and b!6295058 (not res!2595918)) b!6295056))

(assert (= (and b!6295056 res!2595920) b!6295053))

(assert (= (and b!6295053 res!2595919) b!6295065))

(assert (= (and b!6295065 res!2595916) b!6295059))

(assert (= (and b!6295056 (not res!2595914)) b!6295061))

(assert (= (and b!6295061 res!2595917) b!6295054))

(assert (= (and b!6295054 (not res!2595921)) b!6295066))

(assert (= (and b!6295066 (not res!2595915)) b!6295060))

(assert (= (or b!6295063 b!6295053 b!6295054) bm!533325))

(assert (=> b!6295062 m!7114778))

(declare-fun m!7115166 () Bool)

(assert (=> b!6295055 m!7115166))

(assert (=> b!6295055 m!7115166))

(declare-fun m!7115168 () Bool)

(assert (=> b!6295055 m!7115168))

(declare-fun m!7115170 () Bool)

(assert (=> b!6295055 m!7115170))

(assert (=> b!6295055 m!7115168))

(assert (=> b!6295055 m!7115170))

(declare-fun m!7115172 () Bool)

(assert (=> b!6295055 m!7115172))

(assert (=> b!6295060 m!7115166))

(assert (=> b!6295059 m!7115166))

(assert (=> b!6295066 m!7115170))

(assert (=> b!6295066 m!7115170))

(declare-fun m!7115174 () Bool)

(assert (=> b!6295066 m!7115174))

(declare-fun m!7115176 () Bool)

(assert (=> d!1975733 m!7115176))

(assert (=> d!1975733 m!7114080))

(assert (=> b!6295065 m!7115170))

(assert (=> b!6295065 m!7115170))

(assert (=> b!6295065 m!7115174))

(assert (=> bm!533325 m!7115176))

(assert (=> d!1975237 d!1975733))

(assert (=> d!1975237 d!1975559))

(declare-fun b!6295067 () Bool)

(declare-fun e!3827591 () Bool)

(declare-fun call!533331 () Bool)

(assert (=> b!6295067 (= e!3827591 call!533331)))

(declare-fun b!6295068 () Bool)

(declare-fun e!3827594 () Bool)

(assert (=> b!6295068 (= e!3827594 e!3827591)))

(declare-fun res!2595925 () Bool)

(declare-fun call!533332 () Bool)

(assert (=> b!6295068 (= res!2595925 call!533332)))

(assert (=> b!6295068 (=> res!2595925 e!3827591)))

(declare-fun bm!533326 () Bool)

(declare-fun c!1142676 () Bool)

(assert (=> bm!533326 (= call!533332 (nullable!6208 (ite c!1142676 (regOne!32943 (regOne!32942 (regOne!32942 r!7292))) (regOne!32942 (regOne!32942 (regOne!32942 r!7292))))))))

(declare-fun b!6295069 () Bool)

(declare-fun e!3827590 () Bool)

(assert (=> b!6295069 (= e!3827594 e!3827590)))

(declare-fun res!2595923 () Bool)

(assert (=> b!6295069 (= res!2595923 call!533332)))

(assert (=> b!6295069 (=> (not res!2595923) (not e!3827590))))

(declare-fun b!6295070 () Bool)

(declare-fun e!3827595 () Bool)

(declare-fun e!3827592 () Bool)

(assert (=> b!6295070 (= e!3827595 e!3827592)))

(declare-fun res!2595926 () Bool)

(assert (=> b!6295070 (=> res!2595926 e!3827592)))

(assert (=> b!6295070 (= res!2595926 ((_ is Star!16215) (regOne!32942 (regOne!32942 r!7292))))))

(declare-fun d!1975735 () Bool)

(declare-fun res!2595924 () Bool)

(declare-fun e!3827593 () Bool)

(assert (=> d!1975735 (=> res!2595924 e!3827593)))

(assert (=> d!1975735 (= res!2595924 ((_ is EmptyExpr!16215) (regOne!32942 (regOne!32942 r!7292))))))

(assert (=> d!1975735 (= (nullableFct!2159 (regOne!32942 (regOne!32942 r!7292))) e!3827593)))

(declare-fun b!6295071 () Bool)

(assert (=> b!6295071 (= e!3827592 e!3827594)))

(assert (=> b!6295071 (= c!1142676 ((_ is Union!16215) (regOne!32942 (regOne!32942 r!7292))))))

(declare-fun bm!533327 () Bool)

(assert (=> bm!533327 (= call!533331 (nullable!6208 (ite c!1142676 (regTwo!32943 (regOne!32942 (regOne!32942 r!7292))) (regTwo!32942 (regOne!32942 (regOne!32942 r!7292))))))))

(declare-fun b!6295072 () Bool)

(assert (=> b!6295072 (= e!3827590 call!533331)))

(declare-fun b!6295073 () Bool)

(assert (=> b!6295073 (= e!3827593 e!3827595)))

(declare-fun res!2595922 () Bool)

(assert (=> b!6295073 (=> (not res!2595922) (not e!3827595))))

(assert (=> b!6295073 (= res!2595922 (and (not ((_ is EmptyLang!16215) (regOne!32942 (regOne!32942 r!7292)))) (not ((_ is ElementMatch!16215) (regOne!32942 (regOne!32942 r!7292))))))))

(assert (= (and d!1975735 (not res!2595924)) b!6295073))

(assert (= (and b!6295073 res!2595922) b!6295070))

(assert (= (and b!6295070 (not res!2595926)) b!6295071))

(assert (= (and b!6295071 c!1142676) b!6295068))

(assert (= (and b!6295071 (not c!1142676)) b!6295069))

(assert (= (and b!6295068 (not res!2595925)) b!6295067))

(assert (= (and b!6295069 res!2595923) b!6295072))

(assert (= (or b!6295067 b!6295072) bm!533327))

(assert (= (or b!6295068 b!6295069) bm!533326))

(declare-fun m!7115178 () Bool)

(assert (=> bm!533326 m!7115178))

(declare-fun m!7115180 () Bool)

(assert (=> bm!533327 m!7115180))

(assert (=> d!1975339 d!1975735))

(declare-fun b!6295074 () Bool)

(declare-fun e!3827596 () Bool)

(declare-fun tp!1752475 () Bool)

(declare-fun tp!1752476 () Bool)

(assert (=> b!6295074 (= e!3827596 (and tp!1752475 tp!1752476))))

(assert (=> b!6294154 (= tp!1752270 e!3827596)))

(assert (= (and b!6294154 ((_ is Cons!64820) (exprs!6099 (h!71270 (t!378510 zl!343))))) b!6295074))

(declare-fun b!6295078 () Bool)

(declare-fun e!3827597 () Bool)

(declare-fun tp!1752479 () Bool)

(declare-fun tp!1752480 () Bool)

(assert (=> b!6295078 (= e!3827597 (and tp!1752479 tp!1752480))))

(declare-fun b!6295076 () Bool)

(declare-fun tp!1752478 () Bool)

(declare-fun tp!1752481 () Bool)

(assert (=> b!6295076 (= e!3827597 (and tp!1752478 tp!1752481))))

(declare-fun b!6295077 () Bool)

(declare-fun tp!1752477 () Bool)

(assert (=> b!6295077 (= e!3827597 tp!1752477)))

(assert (=> b!6294146 (= tp!1752263 e!3827597)))

(declare-fun b!6295075 () Bool)

(assert (=> b!6295075 (= e!3827597 tp_is_empty!41683)))

(assert (= (and b!6294146 ((_ is ElementMatch!16215) (regOne!32943 (reg!16544 r!7292)))) b!6295075))

(assert (= (and b!6294146 ((_ is Concat!25060) (regOne!32943 (reg!16544 r!7292)))) b!6295076))

(assert (= (and b!6294146 ((_ is Star!16215) (regOne!32943 (reg!16544 r!7292)))) b!6295077))

(assert (= (and b!6294146 ((_ is Union!16215) (regOne!32943 (reg!16544 r!7292)))) b!6295078))

(declare-fun b!6295082 () Bool)

(declare-fun e!3827598 () Bool)

(declare-fun tp!1752484 () Bool)

(declare-fun tp!1752485 () Bool)

(assert (=> b!6295082 (= e!3827598 (and tp!1752484 tp!1752485))))

(declare-fun b!6295080 () Bool)

(declare-fun tp!1752483 () Bool)

(declare-fun tp!1752486 () Bool)

(assert (=> b!6295080 (= e!3827598 (and tp!1752483 tp!1752486))))

(declare-fun b!6295081 () Bool)

(declare-fun tp!1752482 () Bool)

(assert (=> b!6295081 (= e!3827598 tp!1752482)))

(assert (=> b!6294146 (= tp!1752264 e!3827598)))

(declare-fun b!6295079 () Bool)

(assert (=> b!6295079 (= e!3827598 tp_is_empty!41683)))

(assert (= (and b!6294146 ((_ is ElementMatch!16215) (regTwo!32943 (reg!16544 r!7292)))) b!6295079))

(assert (= (and b!6294146 ((_ is Concat!25060) (regTwo!32943 (reg!16544 r!7292)))) b!6295080))

(assert (= (and b!6294146 ((_ is Star!16215) (regTwo!32943 (reg!16544 r!7292)))) b!6295081))

(assert (= (and b!6294146 ((_ is Union!16215) (regTwo!32943 (reg!16544 r!7292)))) b!6295082))

(declare-fun b!6295084 () Bool)

(declare-fun e!3827600 () Bool)

(declare-fun tp!1752487 () Bool)

(assert (=> b!6295084 (= e!3827600 tp!1752487)))

(declare-fun b!6295083 () Bool)

(declare-fun e!3827599 () Bool)

(declare-fun tp!1752488 () Bool)

(assert (=> b!6295083 (= e!3827599 (and (inv!83784 (h!71270 (t!378510 (t!378510 zl!343)))) e!3827600 tp!1752488))))

(assert (=> b!6294153 (= tp!1752271 e!3827599)))

(assert (= b!6295083 b!6295084))

(assert (= (and b!6294153 ((_ is Cons!64822) (t!378510 (t!378510 zl!343)))) b!6295083))

(declare-fun m!7115182 () Bool)

(assert (=> b!6295083 m!7115182))

(declare-fun b!6295088 () Bool)

(declare-fun e!3827601 () Bool)

(declare-fun tp!1752491 () Bool)

(declare-fun tp!1752492 () Bool)

(assert (=> b!6295088 (= e!3827601 (and tp!1752491 tp!1752492))))

(declare-fun b!6295086 () Bool)

(declare-fun tp!1752490 () Bool)

(declare-fun tp!1752493 () Bool)

(assert (=> b!6295086 (= e!3827601 (and tp!1752490 tp!1752493))))

(declare-fun b!6295087 () Bool)

(declare-fun tp!1752489 () Bool)

(assert (=> b!6295087 (= e!3827601 tp!1752489)))

(assert (=> b!6294177 (= tp!1752295 e!3827601)))

(declare-fun b!6295085 () Bool)

(assert (=> b!6295085 (= e!3827601 tp_is_empty!41683)))

(assert (= (and b!6294177 ((_ is ElementMatch!16215) (regOne!32943 (regOne!32942 r!7292)))) b!6295085))

(assert (= (and b!6294177 ((_ is Concat!25060) (regOne!32943 (regOne!32942 r!7292)))) b!6295086))

(assert (= (and b!6294177 ((_ is Star!16215) (regOne!32943 (regOne!32942 r!7292)))) b!6295087))

(assert (= (and b!6294177 ((_ is Union!16215) (regOne!32943 (regOne!32942 r!7292)))) b!6295088))

(declare-fun b!6295092 () Bool)

(declare-fun e!3827602 () Bool)

(declare-fun tp!1752496 () Bool)

(declare-fun tp!1752497 () Bool)

(assert (=> b!6295092 (= e!3827602 (and tp!1752496 tp!1752497))))

(declare-fun b!6295090 () Bool)

(declare-fun tp!1752495 () Bool)

(declare-fun tp!1752498 () Bool)

(assert (=> b!6295090 (= e!3827602 (and tp!1752495 tp!1752498))))

(declare-fun b!6295091 () Bool)

(declare-fun tp!1752494 () Bool)

(assert (=> b!6295091 (= e!3827602 tp!1752494)))

(assert (=> b!6294177 (= tp!1752296 e!3827602)))

(declare-fun b!6295089 () Bool)

(assert (=> b!6295089 (= e!3827602 tp_is_empty!41683)))

(assert (= (and b!6294177 ((_ is ElementMatch!16215) (regTwo!32943 (regOne!32942 r!7292)))) b!6295089))

(assert (= (and b!6294177 ((_ is Concat!25060) (regTwo!32943 (regOne!32942 r!7292)))) b!6295090))

(assert (= (and b!6294177 ((_ is Star!16215) (regTwo!32943 (regOne!32942 r!7292)))) b!6295091))

(assert (= (and b!6294177 ((_ is Union!16215) (regTwo!32943 (regOne!32942 r!7292)))) b!6295092))

(declare-fun b!6295096 () Bool)

(declare-fun e!3827603 () Bool)

(declare-fun tp!1752501 () Bool)

(declare-fun tp!1752502 () Bool)

(assert (=> b!6295096 (= e!3827603 (and tp!1752501 tp!1752502))))

(declare-fun b!6295094 () Bool)

(declare-fun tp!1752500 () Bool)

(declare-fun tp!1752503 () Bool)

(assert (=> b!6295094 (= e!3827603 (and tp!1752500 tp!1752503))))

(declare-fun b!6295095 () Bool)

(declare-fun tp!1752499 () Bool)

(assert (=> b!6295095 (= e!3827603 tp!1752499)))

(assert (=> b!6294176 (= tp!1752293 e!3827603)))

(declare-fun b!6295093 () Bool)

(assert (=> b!6295093 (= e!3827603 tp_is_empty!41683)))

(assert (= (and b!6294176 ((_ is ElementMatch!16215) (reg!16544 (regOne!32942 r!7292)))) b!6295093))

(assert (= (and b!6294176 ((_ is Concat!25060) (reg!16544 (regOne!32942 r!7292)))) b!6295094))

(assert (= (and b!6294176 ((_ is Star!16215) (reg!16544 (regOne!32942 r!7292)))) b!6295095))

(assert (= (and b!6294176 ((_ is Union!16215) (reg!16544 (regOne!32942 r!7292)))) b!6295096))

(declare-fun b!6295100 () Bool)

(declare-fun e!3827604 () Bool)

(declare-fun tp!1752506 () Bool)

(declare-fun tp!1752507 () Bool)

(assert (=> b!6295100 (= e!3827604 (and tp!1752506 tp!1752507))))

(declare-fun b!6295098 () Bool)

(declare-fun tp!1752505 () Bool)

(declare-fun tp!1752508 () Bool)

(assert (=> b!6295098 (= e!3827604 (and tp!1752505 tp!1752508))))

(declare-fun b!6295099 () Bool)

(declare-fun tp!1752504 () Bool)

(assert (=> b!6295099 (= e!3827604 tp!1752504)))

(assert (=> b!6294168 (= tp!1752283 e!3827604)))

(declare-fun b!6295097 () Bool)

(assert (=> b!6295097 (= e!3827604 tp_is_empty!41683)))

(assert (= (and b!6294168 ((_ is ElementMatch!16215) (reg!16544 (regOne!32943 r!7292)))) b!6295097))

(assert (= (and b!6294168 ((_ is Concat!25060) (reg!16544 (regOne!32943 r!7292)))) b!6295098))

(assert (= (and b!6294168 ((_ is Star!16215) (reg!16544 (regOne!32943 r!7292)))) b!6295099))

(assert (= (and b!6294168 ((_ is Union!16215) (reg!16544 (regOne!32943 r!7292)))) b!6295100))

(declare-fun b!6295104 () Bool)

(declare-fun e!3827605 () Bool)

(declare-fun tp!1752511 () Bool)

(declare-fun tp!1752512 () Bool)

(assert (=> b!6295104 (= e!3827605 (and tp!1752511 tp!1752512))))

(declare-fun b!6295102 () Bool)

(declare-fun tp!1752510 () Bool)

(declare-fun tp!1752513 () Bool)

(assert (=> b!6295102 (= e!3827605 (and tp!1752510 tp!1752513))))

(declare-fun b!6295103 () Bool)

(declare-fun tp!1752509 () Bool)

(assert (=> b!6295103 (= e!3827605 tp!1752509)))

(assert (=> b!6294169 (= tp!1752285 e!3827605)))

(declare-fun b!6295101 () Bool)

(assert (=> b!6295101 (= e!3827605 tp_is_empty!41683)))

(assert (= (and b!6294169 ((_ is ElementMatch!16215) (regOne!32943 (regOne!32943 r!7292)))) b!6295101))

(assert (= (and b!6294169 ((_ is Concat!25060) (regOne!32943 (regOne!32943 r!7292)))) b!6295102))

(assert (= (and b!6294169 ((_ is Star!16215) (regOne!32943 (regOne!32943 r!7292)))) b!6295103))

(assert (= (and b!6294169 ((_ is Union!16215) (regOne!32943 (regOne!32943 r!7292)))) b!6295104))

(declare-fun b!6295108 () Bool)

(declare-fun e!3827606 () Bool)

(declare-fun tp!1752516 () Bool)

(declare-fun tp!1752517 () Bool)

(assert (=> b!6295108 (= e!3827606 (and tp!1752516 tp!1752517))))

(declare-fun b!6295106 () Bool)

(declare-fun tp!1752515 () Bool)

(declare-fun tp!1752518 () Bool)

(assert (=> b!6295106 (= e!3827606 (and tp!1752515 tp!1752518))))

(declare-fun b!6295107 () Bool)

(declare-fun tp!1752514 () Bool)

(assert (=> b!6295107 (= e!3827606 tp!1752514)))

(assert (=> b!6294169 (= tp!1752286 e!3827606)))

(declare-fun b!6295105 () Bool)

(assert (=> b!6295105 (= e!3827606 tp_is_empty!41683)))

(assert (= (and b!6294169 ((_ is ElementMatch!16215) (regTwo!32943 (regOne!32943 r!7292)))) b!6295105))

(assert (= (and b!6294169 ((_ is Concat!25060) (regTwo!32943 (regOne!32943 r!7292)))) b!6295106))

(assert (= (and b!6294169 ((_ is Star!16215) (regTwo!32943 (regOne!32943 r!7292)))) b!6295107))

(assert (= (and b!6294169 ((_ is Union!16215) (regTwo!32943 (regOne!32943 r!7292)))) b!6295108))

(declare-fun b!6295112 () Bool)

(declare-fun e!3827607 () Bool)

(declare-fun tp!1752521 () Bool)

(declare-fun tp!1752522 () Bool)

(assert (=> b!6295112 (= e!3827607 (and tp!1752521 tp!1752522))))

(declare-fun b!6295110 () Bool)

(declare-fun tp!1752520 () Bool)

(declare-fun tp!1752523 () Bool)

(assert (=> b!6295110 (= e!3827607 (and tp!1752520 tp!1752523))))

(declare-fun b!6295111 () Bool)

(declare-fun tp!1752519 () Bool)

(assert (=> b!6295111 (= e!3827607 tp!1752519)))

(assert (=> b!6294167 (= tp!1752284 e!3827607)))

(declare-fun b!6295109 () Bool)

(assert (=> b!6295109 (= e!3827607 tp_is_empty!41683)))

(assert (= (and b!6294167 ((_ is ElementMatch!16215) (regOne!32942 (regOne!32943 r!7292)))) b!6295109))

(assert (= (and b!6294167 ((_ is Concat!25060) (regOne!32942 (regOne!32943 r!7292)))) b!6295110))

(assert (= (and b!6294167 ((_ is Star!16215) (regOne!32942 (regOne!32943 r!7292)))) b!6295111))

(assert (= (and b!6294167 ((_ is Union!16215) (regOne!32942 (regOne!32943 r!7292)))) b!6295112))

(declare-fun b!6295116 () Bool)

(declare-fun e!3827608 () Bool)

(declare-fun tp!1752526 () Bool)

(declare-fun tp!1752527 () Bool)

(assert (=> b!6295116 (= e!3827608 (and tp!1752526 tp!1752527))))

(declare-fun b!6295114 () Bool)

(declare-fun tp!1752525 () Bool)

(declare-fun tp!1752528 () Bool)

(assert (=> b!6295114 (= e!3827608 (and tp!1752525 tp!1752528))))

(declare-fun b!6295115 () Bool)

(declare-fun tp!1752524 () Bool)

(assert (=> b!6295115 (= e!3827608 tp!1752524)))

(assert (=> b!6294167 (= tp!1752287 e!3827608)))

(declare-fun b!6295113 () Bool)

(assert (=> b!6295113 (= e!3827608 tp_is_empty!41683)))

(assert (= (and b!6294167 ((_ is ElementMatch!16215) (regTwo!32942 (regOne!32943 r!7292)))) b!6295113))

(assert (= (and b!6294167 ((_ is Concat!25060) (regTwo!32942 (regOne!32943 r!7292)))) b!6295114))

(assert (= (and b!6294167 ((_ is Star!16215) (regTwo!32942 (regOne!32943 r!7292)))) b!6295115))

(assert (= (and b!6294167 ((_ is Union!16215) (regTwo!32942 (regOne!32943 r!7292)))) b!6295116))

(declare-fun b!6295120 () Bool)

(declare-fun e!3827609 () Bool)

(declare-fun tp!1752531 () Bool)

(declare-fun tp!1752532 () Bool)

(assert (=> b!6295120 (= e!3827609 (and tp!1752531 tp!1752532))))

(declare-fun b!6295118 () Bool)

(declare-fun tp!1752530 () Bool)

(declare-fun tp!1752533 () Bool)

(assert (=> b!6295118 (= e!3827609 (and tp!1752530 tp!1752533))))

(declare-fun b!6295119 () Bool)

(declare-fun tp!1752529 () Bool)

(assert (=> b!6295119 (= e!3827609 tp!1752529)))

(assert (=> b!6294132 (= tp!1752249 e!3827609)))

(declare-fun b!6295117 () Bool)

(assert (=> b!6295117 (= e!3827609 tp_is_empty!41683)))

(assert (= (and b!6294132 ((_ is ElementMatch!16215) (h!71268 (exprs!6099 (h!71270 zl!343))))) b!6295117))

(assert (= (and b!6294132 ((_ is Concat!25060) (h!71268 (exprs!6099 (h!71270 zl!343))))) b!6295118))

(assert (= (and b!6294132 ((_ is Star!16215) (h!71268 (exprs!6099 (h!71270 zl!343))))) b!6295119))

(assert (= (and b!6294132 ((_ is Union!16215) (h!71268 (exprs!6099 (h!71270 zl!343))))) b!6295120))

(declare-fun b!6295121 () Bool)

(declare-fun e!3827610 () Bool)

(declare-fun tp!1752534 () Bool)

(declare-fun tp!1752535 () Bool)

(assert (=> b!6295121 (= e!3827610 (and tp!1752534 tp!1752535))))

(assert (=> b!6294132 (= tp!1752250 e!3827610)))

(assert (= (and b!6294132 ((_ is Cons!64820) (t!378508 (exprs!6099 (h!71270 zl!343))))) b!6295121))

(declare-fun b!6295125 () Bool)

(declare-fun e!3827611 () Bool)

(declare-fun tp!1752538 () Bool)

(declare-fun tp!1752539 () Bool)

(assert (=> b!6295125 (= e!3827611 (and tp!1752538 tp!1752539))))

(declare-fun b!6295123 () Bool)

(declare-fun tp!1752537 () Bool)

(declare-fun tp!1752540 () Bool)

(assert (=> b!6295123 (= e!3827611 (and tp!1752537 tp!1752540))))

(declare-fun b!6295124 () Bool)

(declare-fun tp!1752536 () Bool)

(assert (=> b!6295124 (= e!3827611 tp!1752536)))

(assert (=> b!6294175 (= tp!1752294 e!3827611)))

(declare-fun b!6295122 () Bool)

(assert (=> b!6295122 (= e!3827611 tp_is_empty!41683)))

(assert (= (and b!6294175 ((_ is ElementMatch!16215) (regOne!32942 (regOne!32942 r!7292)))) b!6295122))

(assert (= (and b!6294175 ((_ is Concat!25060) (regOne!32942 (regOne!32942 r!7292)))) b!6295123))

(assert (= (and b!6294175 ((_ is Star!16215) (regOne!32942 (regOne!32942 r!7292)))) b!6295124))

(assert (= (and b!6294175 ((_ is Union!16215) (regOne!32942 (regOne!32942 r!7292)))) b!6295125))

(declare-fun b!6295129 () Bool)

(declare-fun e!3827612 () Bool)

(declare-fun tp!1752543 () Bool)

(declare-fun tp!1752544 () Bool)

(assert (=> b!6295129 (= e!3827612 (and tp!1752543 tp!1752544))))

(declare-fun b!6295127 () Bool)

(declare-fun tp!1752542 () Bool)

(declare-fun tp!1752545 () Bool)

(assert (=> b!6295127 (= e!3827612 (and tp!1752542 tp!1752545))))

(declare-fun b!6295128 () Bool)

(declare-fun tp!1752541 () Bool)

(assert (=> b!6295128 (= e!3827612 tp!1752541)))

(assert (=> b!6294175 (= tp!1752297 e!3827612)))

(declare-fun b!6295126 () Bool)

(assert (=> b!6295126 (= e!3827612 tp_is_empty!41683)))

(assert (= (and b!6294175 ((_ is ElementMatch!16215) (regTwo!32942 (regOne!32942 r!7292)))) b!6295126))

(assert (= (and b!6294175 ((_ is Concat!25060) (regTwo!32942 (regOne!32942 r!7292)))) b!6295127))

(assert (= (and b!6294175 ((_ is Star!16215) (regTwo!32942 (regOne!32942 r!7292)))) b!6295128))

(assert (= (and b!6294175 ((_ is Union!16215) (regTwo!32942 (regOne!32942 r!7292)))) b!6295129))

(declare-fun b!6295133 () Bool)

(declare-fun e!3827613 () Bool)

(declare-fun tp!1752548 () Bool)

(declare-fun tp!1752549 () Bool)

(assert (=> b!6295133 (= e!3827613 (and tp!1752548 tp!1752549))))

(declare-fun b!6295131 () Bool)

(declare-fun tp!1752547 () Bool)

(declare-fun tp!1752550 () Bool)

(assert (=> b!6295131 (= e!3827613 (and tp!1752547 tp!1752550))))

(declare-fun b!6295132 () Bool)

(declare-fun tp!1752546 () Bool)

(assert (=> b!6295132 (= e!3827613 tp!1752546)))

(assert (=> b!6294172 (= tp!1752288 e!3827613)))

(declare-fun b!6295130 () Bool)

(assert (=> b!6295130 (= e!3827613 tp_is_empty!41683)))

(assert (= (and b!6294172 ((_ is ElementMatch!16215) (reg!16544 (regTwo!32943 r!7292)))) b!6295130))

(assert (= (and b!6294172 ((_ is Concat!25060) (reg!16544 (regTwo!32943 r!7292)))) b!6295131))

(assert (= (and b!6294172 ((_ is Star!16215) (reg!16544 (regTwo!32943 r!7292)))) b!6295132))

(assert (= (and b!6294172 ((_ is Union!16215) (reg!16544 (regTwo!32943 r!7292)))) b!6295133))

(declare-fun b!6295137 () Bool)

(declare-fun e!3827614 () Bool)

(declare-fun tp!1752553 () Bool)

(declare-fun tp!1752554 () Bool)

(assert (=> b!6295137 (= e!3827614 (and tp!1752553 tp!1752554))))

(declare-fun b!6295135 () Bool)

(declare-fun tp!1752552 () Bool)

(declare-fun tp!1752555 () Bool)

(assert (=> b!6295135 (= e!3827614 (and tp!1752552 tp!1752555))))

(declare-fun b!6295136 () Bool)

(declare-fun tp!1752551 () Bool)

(assert (=> b!6295136 (= e!3827614 tp!1752551)))

(assert (=> b!6294181 (= tp!1752300 e!3827614)))

(declare-fun b!6295134 () Bool)

(assert (=> b!6295134 (= e!3827614 tp_is_empty!41683)))

(assert (= (and b!6294181 ((_ is ElementMatch!16215) (regOne!32943 (regTwo!32942 r!7292)))) b!6295134))

(assert (= (and b!6294181 ((_ is Concat!25060) (regOne!32943 (regTwo!32942 r!7292)))) b!6295135))

(assert (= (and b!6294181 ((_ is Star!16215) (regOne!32943 (regTwo!32942 r!7292)))) b!6295136))

(assert (= (and b!6294181 ((_ is Union!16215) (regOne!32943 (regTwo!32942 r!7292)))) b!6295137))

(declare-fun b!6295141 () Bool)

(declare-fun e!3827615 () Bool)

(declare-fun tp!1752558 () Bool)

(declare-fun tp!1752559 () Bool)

(assert (=> b!6295141 (= e!3827615 (and tp!1752558 tp!1752559))))

(declare-fun b!6295139 () Bool)

(declare-fun tp!1752557 () Bool)

(declare-fun tp!1752560 () Bool)

(assert (=> b!6295139 (= e!3827615 (and tp!1752557 tp!1752560))))

(declare-fun b!6295140 () Bool)

(declare-fun tp!1752556 () Bool)

(assert (=> b!6295140 (= e!3827615 tp!1752556)))

(assert (=> b!6294181 (= tp!1752301 e!3827615)))

(declare-fun b!6295138 () Bool)

(assert (=> b!6295138 (= e!3827615 tp_is_empty!41683)))

(assert (= (and b!6294181 ((_ is ElementMatch!16215) (regTwo!32943 (regTwo!32942 r!7292)))) b!6295138))

(assert (= (and b!6294181 ((_ is Concat!25060) (regTwo!32943 (regTwo!32942 r!7292)))) b!6295139))

(assert (= (and b!6294181 ((_ is Star!16215) (regTwo!32943 (regTwo!32942 r!7292)))) b!6295140))

(assert (= (and b!6294181 ((_ is Union!16215) (regTwo!32943 (regTwo!32942 r!7292)))) b!6295141))

(declare-fun condSetEmpty!42850 () Bool)

(assert (=> setNonEmpty!42842 (= condSetEmpty!42850 (= setRest!42842 ((as const (Array Context!11198 Bool)) false)))))

(declare-fun setRes!42850 () Bool)

(assert (=> setNonEmpty!42842 (= tp!1752276 setRes!42850)))

(declare-fun setIsEmpty!42850 () Bool)

(assert (=> setIsEmpty!42850 setRes!42850))

(declare-fun setNonEmpty!42850 () Bool)

(declare-fun tp!1752561 () Bool)

(declare-fun setElem!42850 () Context!11198)

(declare-fun e!3827616 () Bool)

(assert (=> setNonEmpty!42850 (= setRes!42850 (and tp!1752561 (inv!83784 setElem!42850) e!3827616))))

(declare-fun setRest!42850 () (InoxSet Context!11198))

(assert (=> setNonEmpty!42850 (= setRest!42842 ((_ map or) (store ((as const (Array Context!11198 Bool)) false) setElem!42850 true) setRest!42850))))

(declare-fun b!6295142 () Bool)

(declare-fun tp!1752562 () Bool)

(assert (=> b!6295142 (= e!3827616 tp!1752562)))

(assert (= (and setNonEmpty!42842 condSetEmpty!42850) setIsEmpty!42850))

(assert (= (and setNonEmpty!42842 (not condSetEmpty!42850)) setNonEmpty!42850))

(assert (= setNonEmpty!42850 b!6295142))

(declare-fun m!7115184 () Bool)

(assert (=> setNonEmpty!42850 m!7115184))

(declare-fun b!6295146 () Bool)

(declare-fun e!3827617 () Bool)

(declare-fun tp!1752565 () Bool)

(declare-fun tp!1752566 () Bool)

(assert (=> b!6295146 (= e!3827617 (and tp!1752565 tp!1752566))))

(declare-fun b!6295144 () Bool)

(declare-fun tp!1752564 () Bool)

(declare-fun tp!1752567 () Bool)

(assert (=> b!6295144 (= e!3827617 (and tp!1752564 tp!1752567))))

(declare-fun b!6295145 () Bool)

(declare-fun tp!1752563 () Bool)

(assert (=> b!6295145 (= e!3827617 tp!1752563)))

(assert (=> b!6294165 (= tp!1752281 e!3827617)))

(declare-fun b!6295143 () Bool)

(assert (=> b!6295143 (= e!3827617 tp_is_empty!41683)))

(assert (= (and b!6294165 ((_ is ElementMatch!16215) (h!71268 (exprs!6099 setElem!42836)))) b!6295143))

(assert (= (and b!6294165 ((_ is Concat!25060) (h!71268 (exprs!6099 setElem!42836)))) b!6295144))

(assert (= (and b!6294165 ((_ is Star!16215) (h!71268 (exprs!6099 setElem!42836)))) b!6295145))

(assert (= (and b!6294165 ((_ is Union!16215) (h!71268 (exprs!6099 setElem!42836)))) b!6295146))

(declare-fun b!6295147 () Bool)

(declare-fun e!3827618 () Bool)

(declare-fun tp!1752568 () Bool)

(declare-fun tp!1752569 () Bool)

(assert (=> b!6295147 (= e!3827618 (and tp!1752568 tp!1752569))))

(assert (=> b!6294165 (= tp!1752282 e!3827618)))

(assert (= (and b!6294165 ((_ is Cons!64820) (t!378508 (exprs!6099 setElem!42836)))) b!6295147))

(declare-fun b!6295151 () Bool)

(declare-fun e!3827619 () Bool)

(declare-fun tp!1752572 () Bool)

(declare-fun tp!1752573 () Bool)

(assert (=> b!6295151 (= e!3827619 (and tp!1752572 tp!1752573))))

(declare-fun b!6295149 () Bool)

(declare-fun tp!1752571 () Bool)

(declare-fun tp!1752574 () Bool)

(assert (=> b!6295149 (= e!3827619 (and tp!1752571 tp!1752574))))

(declare-fun b!6295150 () Bool)

(declare-fun tp!1752570 () Bool)

(assert (=> b!6295150 (= e!3827619 tp!1752570)))

(assert (=> b!6294145 (= tp!1752261 e!3827619)))

(declare-fun b!6295148 () Bool)

(assert (=> b!6295148 (= e!3827619 tp_is_empty!41683)))

(assert (= (and b!6294145 ((_ is ElementMatch!16215) (reg!16544 (reg!16544 r!7292)))) b!6295148))

(assert (= (and b!6294145 ((_ is Concat!25060) (reg!16544 (reg!16544 r!7292)))) b!6295149))

(assert (= (and b!6294145 ((_ is Star!16215) (reg!16544 (reg!16544 r!7292)))) b!6295150))

(assert (= (and b!6294145 ((_ is Union!16215) (reg!16544 (reg!16544 r!7292)))) b!6295151))

(declare-fun b!6295152 () Bool)

(declare-fun e!3827620 () Bool)

(declare-fun tp!1752575 () Bool)

(declare-fun tp!1752576 () Bool)

(assert (=> b!6295152 (= e!3827620 (and tp!1752575 tp!1752576))))

(assert (=> b!6294159 (= tp!1752277 e!3827620)))

(assert (= (and b!6294159 ((_ is Cons!64820) (exprs!6099 setElem!42842))) b!6295152))

(declare-fun b!6295156 () Bool)

(declare-fun e!3827621 () Bool)

(declare-fun tp!1752579 () Bool)

(declare-fun tp!1752580 () Bool)

(assert (=> b!6295156 (= e!3827621 (and tp!1752579 tp!1752580))))

(declare-fun b!6295154 () Bool)

(declare-fun tp!1752578 () Bool)

(declare-fun tp!1752581 () Bool)

(assert (=> b!6295154 (= e!3827621 (and tp!1752578 tp!1752581))))

(declare-fun b!6295155 () Bool)

(declare-fun tp!1752577 () Bool)

(assert (=> b!6295155 (= e!3827621 tp!1752577)))

(assert (=> b!6294144 (= tp!1752262 e!3827621)))

(declare-fun b!6295153 () Bool)

(assert (=> b!6295153 (= e!3827621 tp_is_empty!41683)))

(assert (= (and b!6294144 ((_ is ElementMatch!16215) (regOne!32942 (reg!16544 r!7292)))) b!6295153))

(assert (= (and b!6294144 ((_ is Concat!25060) (regOne!32942 (reg!16544 r!7292)))) b!6295154))

(assert (= (and b!6294144 ((_ is Star!16215) (regOne!32942 (reg!16544 r!7292)))) b!6295155))

(assert (= (and b!6294144 ((_ is Union!16215) (regOne!32942 (reg!16544 r!7292)))) b!6295156))

(declare-fun b!6295160 () Bool)

(declare-fun e!3827622 () Bool)

(declare-fun tp!1752584 () Bool)

(declare-fun tp!1752585 () Bool)

(assert (=> b!6295160 (= e!3827622 (and tp!1752584 tp!1752585))))

(declare-fun b!6295158 () Bool)

(declare-fun tp!1752583 () Bool)

(declare-fun tp!1752586 () Bool)

(assert (=> b!6295158 (= e!3827622 (and tp!1752583 tp!1752586))))

(declare-fun b!6295159 () Bool)

(declare-fun tp!1752582 () Bool)

(assert (=> b!6295159 (= e!3827622 tp!1752582)))

(assert (=> b!6294144 (= tp!1752265 e!3827622)))

(declare-fun b!6295157 () Bool)

(assert (=> b!6295157 (= e!3827622 tp_is_empty!41683)))

(assert (= (and b!6294144 ((_ is ElementMatch!16215) (regTwo!32942 (reg!16544 r!7292)))) b!6295157))

(assert (= (and b!6294144 ((_ is Concat!25060) (regTwo!32942 (reg!16544 r!7292)))) b!6295158))

(assert (= (and b!6294144 ((_ is Star!16215) (regTwo!32942 (reg!16544 r!7292)))) b!6295159))

(assert (= (and b!6294144 ((_ is Union!16215) (regTwo!32942 (reg!16544 r!7292)))) b!6295160))

(declare-fun b!6295164 () Bool)

(declare-fun e!3827623 () Bool)

(declare-fun tp!1752589 () Bool)

(declare-fun tp!1752590 () Bool)

(assert (=> b!6295164 (= e!3827623 (and tp!1752589 tp!1752590))))

(declare-fun b!6295162 () Bool)

(declare-fun tp!1752588 () Bool)

(declare-fun tp!1752591 () Bool)

(assert (=> b!6295162 (= e!3827623 (and tp!1752588 tp!1752591))))

(declare-fun b!6295163 () Bool)

(declare-fun tp!1752587 () Bool)

(assert (=> b!6295163 (= e!3827623 tp!1752587)))

(assert (=> b!6294173 (= tp!1752290 e!3827623)))

(declare-fun b!6295161 () Bool)

(assert (=> b!6295161 (= e!3827623 tp_is_empty!41683)))

(assert (= (and b!6294173 ((_ is ElementMatch!16215) (regOne!32943 (regTwo!32943 r!7292)))) b!6295161))

(assert (= (and b!6294173 ((_ is Concat!25060) (regOne!32943 (regTwo!32943 r!7292)))) b!6295162))

(assert (= (and b!6294173 ((_ is Star!16215) (regOne!32943 (regTwo!32943 r!7292)))) b!6295163))

(assert (= (and b!6294173 ((_ is Union!16215) (regOne!32943 (regTwo!32943 r!7292)))) b!6295164))

(declare-fun b!6295168 () Bool)

(declare-fun e!3827624 () Bool)

(declare-fun tp!1752594 () Bool)

(declare-fun tp!1752595 () Bool)

(assert (=> b!6295168 (= e!3827624 (and tp!1752594 tp!1752595))))

(declare-fun b!6295166 () Bool)

(declare-fun tp!1752593 () Bool)

(declare-fun tp!1752596 () Bool)

(assert (=> b!6295166 (= e!3827624 (and tp!1752593 tp!1752596))))

(declare-fun b!6295167 () Bool)

(declare-fun tp!1752592 () Bool)

(assert (=> b!6295167 (= e!3827624 tp!1752592)))

(assert (=> b!6294173 (= tp!1752291 e!3827624)))

(declare-fun b!6295165 () Bool)

(assert (=> b!6295165 (= e!3827624 tp_is_empty!41683)))

(assert (= (and b!6294173 ((_ is ElementMatch!16215) (regTwo!32943 (regTwo!32943 r!7292)))) b!6295165))

(assert (= (and b!6294173 ((_ is Concat!25060) (regTwo!32943 (regTwo!32943 r!7292)))) b!6295166))

(assert (= (and b!6294173 ((_ is Star!16215) (regTwo!32943 (regTwo!32943 r!7292)))) b!6295167))

(assert (= (and b!6294173 ((_ is Union!16215) (regTwo!32943 (regTwo!32943 r!7292)))) b!6295168))

(declare-fun b!6295169 () Bool)

(declare-fun e!3827625 () Bool)

(declare-fun tp!1752597 () Bool)

(assert (=> b!6295169 (= e!3827625 (and tp_is_empty!41683 tp!1752597))))

(assert (=> b!6294164 (= tp!1752280 e!3827625)))

(assert (= (and b!6294164 ((_ is Cons!64821) (t!378509 (t!378509 s!2326)))) b!6295169))

(declare-fun b!6295173 () Bool)

(declare-fun e!3827626 () Bool)

(declare-fun tp!1752600 () Bool)

(declare-fun tp!1752601 () Bool)

(assert (=> b!6295173 (= e!3827626 (and tp!1752600 tp!1752601))))

(declare-fun b!6295171 () Bool)

(declare-fun tp!1752599 () Bool)

(declare-fun tp!1752602 () Bool)

(assert (=> b!6295171 (= e!3827626 (and tp!1752599 tp!1752602))))

(declare-fun b!6295172 () Bool)

(declare-fun tp!1752598 () Bool)

(assert (=> b!6295172 (= e!3827626 tp!1752598)))

(assert (=> b!6294179 (= tp!1752299 e!3827626)))

(declare-fun b!6295170 () Bool)

(assert (=> b!6295170 (= e!3827626 tp_is_empty!41683)))

(assert (= (and b!6294179 ((_ is ElementMatch!16215) (regOne!32942 (regTwo!32942 r!7292)))) b!6295170))

(assert (= (and b!6294179 ((_ is Concat!25060) (regOne!32942 (regTwo!32942 r!7292)))) b!6295171))

(assert (= (and b!6294179 ((_ is Star!16215) (regOne!32942 (regTwo!32942 r!7292)))) b!6295172))

(assert (= (and b!6294179 ((_ is Union!16215) (regOne!32942 (regTwo!32942 r!7292)))) b!6295173))

(declare-fun b!6295177 () Bool)

(declare-fun e!3827627 () Bool)

(declare-fun tp!1752605 () Bool)

(declare-fun tp!1752606 () Bool)

(assert (=> b!6295177 (= e!3827627 (and tp!1752605 tp!1752606))))

(declare-fun b!6295175 () Bool)

(declare-fun tp!1752604 () Bool)

(declare-fun tp!1752607 () Bool)

(assert (=> b!6295175 (= e!3827627 (and tp!1752604 tp!1752607))))

(declare-fun b!6295176 () Bool)

(declare-fun tp!1752603 () Bool)

(assert (=> b!6295176 (= e!3827627 tp!1752603)))

(assert (=> b!6294179 (= tp!1752302 e!3827627)))

(declare-fun b!6295174 () Bool)

(assert (=> b!6295174 (= e!3827627 tp_is_empty!41683)))

(assert (= (and b!6294179 ((_ is ElementMatch!16215) (regTwo!32942 (regTwo!32942 r!7292)))) b!6295174))

(assert (= (and b!6294179 ((_ is Concat!25060) (regTwo!32942 (regTwo!32942 r!7292)))) b!6295175))

(assert (= (and b!6294179 ((_ is Star!16215) (regTwo!32942 (regTwo!32942 r!7292)))) b!6295176))

(assert (= (and b!6294179 ((_ is Union!16215) (regTwo!32942 (regTwo!32942 r!7292)))) b!6295177))

(declare-fun b!6295181 () Bool)

(declare-fun e!3827628 () Bool)

(declare-fun tp!1752610 () Bool)

(declare-fun tp!1752611 () Bool)

(assert (=> b!6295181 (= e!3827628 (and tp!1752610 tp!1752611))))

(declare-fun b!6295179 () Bool)

(declare-fun tp!1752609 () Bool)

(declare-fun tp!1752612 () Bool)

(assert (=> b!6295179 (= e!3827628 (and tp!1752609 tp!1752612))))

(declare-fun b!6295180 () Bool)

(declare-fun tp!1752608 () Bool)

(assert (=> b!6295180 (= e!3827628 tp!1752608)))

(assert (=> b!6294180 (= tp!1752298 e!3827628)))

(declare-fun b!6295178 () Bool)

(assert (=> b!6295178 (= e!3827628 tp_is_empty!41683)))

(assert (= (and b!6294180 ((_ is ElementMatch!16215) (reg!16544 (regTwo!32942 r!7292)))) b!6295178))

(assert (= (and b!6294180 ((_ is Concat!25060) (reg!16544 (regTwo!32942 r!7292)))) b!6295179))

(assert (= (and b!6294180 ((_ is Star!16215) (reg!16544 (regTwo!32942 r!7292)))) b!6295180))

(assert (= (and b!6294180 ((_ is Union!16215) (reg!16544 (regTwo!32942 r!7292)))) b!6295181))

(declare-fun b!6295185 () Bool)

(declare-fun e!3827629 () Bool)

(declare-fun tp!1752615 () Bool)

(declare-fun tp!1752616 () Bool)

(assert (=> b!6295185 (= e!3827629 (and tp!1752615 tp!1752616))))

(declare-fun b!6295183 () Bool)

(declare-fun tp!1752614 () Bool)

(declare-fun tp!1752617 () Bool)

(assert (=> b!6295183 (= e!3827629 (and tp!1752614 tp!1752617))))

(declare-fun b!6295184 () Bool)

(declare-fun tp!1752613 () Bool)

(assert (=> b!6295184 (= e!3827629 tp!1752613)))

(assert (=> b!6294171 (= tp!1752289 e!3827629)))

(declare-fun b!6295182 () Bool)

(assert (=> b!6295182 (= e!3827629 tp_is_empty!41683)))

(assert (= (and b!6294171 ((_ is ElementMatch!16215) (regOne!32942 (regTwo!32943 r!7292)))) b!6295182))

(assert (= (and b!6294171 ((_ is Concat!25060) (regOne!32942 (regTwo!32943 r!7292)))) b!6295183))

(assert (= (and b!6294171 ((_ is Star!16215) (regOne!32942 (regTwo!32943 r!7292)))) b!6295184))

(assert (= (and b!6294171 ((_ is Union!16215) (regOne!32942 (regTwo!32943 r!7292)))) b!6295185))

(declare-fun b!6295189 () Bool)

(declare-fun e!3827630 () Bool)

(declare-fun tp!1752620 () Bool)

(declare-fun tp!1752621 () Bool)

(assert (=> b!6295189 (= e!3827630 (and tp!1752620 tp!1752621))))

(declare-fun b!6295187 () Bool)

(declare-fun tp!1752619 () Bool)

(declare-fun tp!1752622 () Bool)

(assert (=> b!6295187 (= e!3827630 (and tp!1752619 tp!1752622))))

(declare-fun b!6295188 () Bool)

(declare-fun tp!1752618 () Bool)

(assert (=> b!6295188 (= e!3827630 tp!1752618)))

(assert (=> b!6294171 (= tp!1752292 e!3827630)))

(declare-fun b!6295186 () Bool)

(assert (=> b!6295186 (= e!3827630 tp_is_empty!41683)))

(assert (= (and b!6294171 ((_ is ElementMatch!16215) (regTwo!32942 (regTwo!32943 r!7292)))) b!6295186))

(assert (= (and b!6294171 ((_ is Concat!25060) (regTwo!32942 (regTwo!32943 r!7292)))) b!6295187))

(assert (= (and b!6294171 ((_ is Star!16215) (regTwo!32942 (regTwo!32943 r!7292)))) b!6295188))

(assert (= (and b!6294171 ((_ is Union!16215) (regTwo!32942 (regTwo!32943 r!7292)))) b!6295189))

(declare-fun b_lambda!239535 () Bool)

(assert (= b_lambda!239529 (or b!6293461 b_lambda!239535)))

(assert (=> d!1975657 d!1975351))

(declare-fun b_lambda!239537 () Bool)

(assert (= b_lambda!239523 (or d!1975321 b_lambda!239537)))

(declare-fun bs!1574666 () Bool)

(declare-fun d!1975737 () Bool)

(assert (= bs!1574666 (and d!1975737 d!1975321)))

(assert (=> bs!1574666 (= (dynLambda!25659 lambda!345835 (h!71268 (unfocusZipperList!1636 zl!343))) (validRegex!7951 (h!71268 (unfocusZipperList!1636 zl!343))))))

(declare-fun m!7115186 () Bool)

(assert (=> bs!1574666 m!7115186))

(assert (=> b!6294812 d!1975737))

(declare-fun b_lambda!239539 () Bool)

(assert (= b_lambda!239527 (or d!1975323 b_lambda!239539)))

(declare-fun bs!1574667 () Bool)

(declare-fun d!1975739 () Bool)

(assert (= bs!1574667 (and d!1975739 d!1975323)))

(assert (=> bs!1574667 (= (dynLambda!25659 lambda!345838 (h!71268 lt!2357622)) (validRegex!7951 (h!71268 lt!2357622)))))

(declare-fun m!7115188 () Bool)

(assert (=> bs!1574667 m!7115188))

(assert (=> b!6294816 d!1975739))

(declare-fun b_lambda!239541 () Bool)

(assert (= b_lambda!239525 (or d!1975309 b_lambda!239541)))

(declare-fun bs!1574668 () Bool)

(declare-fun d!1975741 () Bool)

(assert (= bs!1574668 (and d!1975741 d!1975309)))

(assert (=> bs!1574668 (= (dynLambda!25659 lambda!345823 (h!71268 (exprs!6099 (Context!11199 (Cons!64820 (regTwo!32942 (regOne!32942 r!7292)) (t!378508 (exprs!6099 (h!71270 zl!343)))))))) (validRegex!7951 (h!71268 (exprs!6099 (Context!11199 (Cons!64820 (regTwo!32942 (regOne!32942 r!7292)) (t!378508 (exprs!6099 (h!71270 zl!343)))))))))))

(declare-fun m!7115190 () Bool)

(assert (=> bs!1574668 m!7115190))

(assert (=> b!6294814 d!1975741))

(declare-fun b_lambda!239543 () Bool)

(assert (= b_lambda!239531 (or d!1975291 b_lambda!239543)))

(declare-fun bs!1574669 () Bool)

(declare-fun d!1975743 () Bool)

(assert (= bs!1574669 (and d!1975743 d!1975291)))

(assert (=> bs!1574669 (= (dynLambda!25659 lambda!345822 (h!71268 (exprs!6099 (h!71270 zl!343)))) (validRegex!7951 (h!71268 (exprs!6099 (h!71270 zl!343)))))))

(declare-fun m!7115192 () Bool)

(assert (=> bs!1574669 m!7115192))

(assert (=> b!6295019 d!1975743))

(declare-fun b_lambda!239545 () Bool)

(assert (= b_lambda!239533 (or d!1975343 b_lambda!239545)))

(declare-fun bs!1574670 () Bool)

(declare-fun d!1975745 () Bool)

(assert (= bs!1574670 (and d!1975745 d!1975343)))

(assert (=> bs!1574670 (= (dynLambda!25659 lambda!345839 (h!71268 (exprs!6099 setElem!42836))) (validRegex!7951 (h!71268 (exprs!6099 setElem!42836))))))

(declare-fun m!7115194 () Bool)

(assert (=> bs!1574670 m!7115194))

(assert (=> b!6295034 d!1975745))

(declare-fun b_lambda!239547 () Bool)

(assert (= b_lambda!239521 (or d!1975319 b_lambda!239547)))

(declare-fun bs!1574671 () Bool)

(declare-fun d!1975747 () Bool)

(assert (= bs!1574671 (and d!1975747 d!1975319)))

(assert (=> bs!1574671 (= (dynLambda!25659 lambda!345832 (h!71268 (exprs!6099 (h!71270 zl!343)))) (validRegex!7951 (h!71268 (exprs!6099 (h!71270 zl!343)))))))

(assert (=> bs!1574671 m!7115192))

(assert (=> b!6294759 d!1975747))

(check-sat (not bs!1574667) (not b!6295099) (not b!6295086) (not b!6295140) (not bm!533303) (not bm!533255) (not b!6295107) (not b!6295162) (not b!6295091) (not b!6294775) (not b!6295188) (not b!6295083) (not d!1975585) (not b!6294893) (not b!6295123) (not b!6295084) (not d!1975645) (not b!6295187) (not b!6295021) (not b!6294790) (not d!1975563) (not d!1975665) (not d!1975689) (not b!6295096) (not d!1975603) (not b!6294878) (not d!1975641) (not b_lambda!239543) (not b!6294698) (not b!6295078) (not setNonEmpty!42850) (not b!6295127) (not b!6294921) (not bm!533294) (not b!6295106) (not b!6295125) (not b!6295022) (not b!6294869) (not b!6295181) (not d!1975713) (not d!1975731) (not b!6295135) (not b!6295156) (not b!6294991) (not b!6294877) (not bm!533248) (not b!6295076) (not bm!533281) (not bm!533305) (not b!6294936) (not bm!533276) (not b!6295189) (not d!1975715) (not b!6295088) (not b!6294817) (not b!6295110) (not d!1975733) (not bs!1574669) (not b_lambda!239491) (not b!6294866) (not b!6295145) (not b!6295121) (not b_lambda!239539) (not b!6295154) (not b!6295160) (not b!6294802) (not b!6294865) tp_is_empty!41683 (not d!1975677) (not b!6294888) (not bm!533318) (not b!6294881) (not b!6295104) (not b!6295116) (not b!6294818) (not b!6295035) (not bm!533261) (not b!6295052) (not bm!533257) (not b!6294701) (not b!6295136) (not b!6295048) (not b!6295159) (not b!6295045) (not b!6295133) (not bm!533267) (not b!6295118) (not b!6295095) (not b!6295065) (not b!6294836) (not bm!533312) (not b!6294822) (not bs!1574670) (not b_lambda!239535) (not bm!533250) (not b!6294909) (not b!6295166) (not b!6294935) (not b!6295139) (not b!6295131) (not bm!533282) (not b!6295042) (not b!6294768) (not b!6295164) (not b!6295094) (not bs!1574666) (not b!6294885) (not b!6295111) (not b!6294834) (not d!1975643) (not b!6295115) (not b!6295144) (not b!6294797) (not bm!533251) (not b!6295098) (not d!1975661) (not b!6295020) (not b!6294900) (not b!6294895) (not b!6295114) (not b!6295066) (not b!6295176) (not bm!533278) (not d!1975573) (not bm!533258) (not b!6294929) (not b!6295167) (not d!1975587) (not b_lambda!239537) (not bm!533327) (not b!6294693) (not d!1975687) (not bm!533284) (not b!6295155) (not bm!533266) (not b!6295112) (not b!6295171) (not b!6295102) (not bm!533280) (not b!6294827) (not b!6295060) (not b!6295132) (not bm!533259) (not d!1975561) (not b!6295168) (not b!6295082) (not bm!533273) (not b!6294887) (not b!6294932) (not bm!533326) (not bm!533260) (not d!1975663) (not b_lambda!239541) (not b!6294695) (not b!6294910) (not d!1975657) (not b!6295142) (not b!6295150) (not b!6294873) (not b!6294899) (not bm!533301) (not d!1975577) (not d!1975571) (not b!6295177) (not d!1975633) (not b!6294699) (not b!6295173) (not d!1975691) (not b!6294829) (not b!6295151) (not d!1975627) (not b!6294749) (not b!6295184) (not b!6295043) (not bm!533306) (not b!6294920) (not b!6294688) (not b!6295077) (not d!1975589) (not bm!533320) (not bm!533269) (not b!6294902) (not b!6295080) (not b!6294833) (not bm!533302) (not b!6295103) (not b!6295158) (not b!6294760) (not b!6295090) (not b!6294870) (not bm!533275) (not d!1975609) (not d!1975667) (not b!6295128) (not b!6294886) (not d!1975711) (not b!6294904) (not bm!533319) (not d!1975647) (not bm!533249) (not b!6294799) (not b!6295120) (not d!1975671) (not b!6294832) (not b!6295092) (not b!6295169) (not b!6295149) (not b!6294890) (not b!6295180) (not bm!533324) (not b!6294806) (not bm!533264) (not b!6295147) (not b!6294905) (not b!6295124) (not bm!533313) (not b!6295163) (not b!6294798) (not b!6294743) (not b!6295172) (not b!6295100) (not bm!533277) (not b!6295049) (not b!6295062) (not b!6295081) (not bm!533295) (not b!6295146) (not b!6295152) (not b!6295129) (not b_lambda!239547) (not d!1975649) (not b!6294930) (not b!6295183) (not b!6294739) (not b!6294762) (not b!6295108) (not bm!533325) (not bs!1574668) (not b!6295141) (not b!6295055) (not b_lambda!239545) (not setNonEmpty!42849) (not d!1975613) (not d!1975681) (not b!6294892) (not b!6294826) (not bm!533308) (not b!6295185) (not bm!533314) (not b!6294813) (not b!6295179) (not b!6294965) (not bm!533263) (not b!6295024) (not b!6295119) (not b!6294998) (not b!6294738) (not b!6295038) (not b!6295137) (not bm!533268) (not b!6295009) (not b!6294882) (not b!6294815) (not b!6294761) (not b!6294891) (not d!1975693) (not b!6294879) (not d!1975729) (not b!6295059) (not b!6294872) (not d!1975579) (not d!1975673) (not b!6294729) (not b!6294692) (not b!6294907) (not b!6294850) (not b!6295087) (not bm!533307) (not bm!533283) (not b!6294789) (not b!6294925) (not d!1975551) (not d!1975669) (not bs!1574671) (not b!6294908) (not b!6294741) (not b!6294714) (not b!6295074) (not b!6294874) (not b!6295175) (not d!1975703))
(check-sat)
