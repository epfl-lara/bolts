; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!639322 () Bool)

(assert start!639322)

(declare-fun b!6507188 () Bool)

(assert (=> b!6507188 true))

(assert (=> b!6507188 true))

(declare-fun lambda!360899 () Int)

(declare-fun lambda!360898 () Int)

(assert (=> b!6507188 (not (= lambda!360899 lambda!360898))))

(assert (=> b!6507188 true))

(assert (=> b!6507188 true))

(declare-fun b!6507164 () Bool)

(assert (=> b!6507164 true))

(declare-fun b!6507204 () Bool)

(assert (=> b!6507204 true))

(declare-fun e!3942709 () Bool)

(declare-fun e!3942696 () Bool)

(assert (=> b!6507164 (= e!3942709 e!3942696)))

(declare-fun res!2672386 () Bool)

(assert (=> b!6507164 (=> res!2672386 e!3942696)))

(declare-datatypes ((C!33048 0))(
  ( (C!33049 (val!26226 Int)) )
))
(declare-datatypes ((Regex!16389 0))(
  ( (ElementMatch!16389 (c!1193399 C!33048)) (Concat!25234 (regOne!33290 Regex!16389) (regTwo!33290 Regex!16389)) (EmptyExpr!16389) (Star!16389 (reg!16718 Regex!16389)) (EmptyLang!16389) (Union!16389 (regOne!33291 Regex!16389) (regTwo!33291 Regex!16389)) )
))
(declare-fun r!7292 () Regex!16389)

(declare-datatypes ((List!65466 0))(
  ( (Nil!65342) (Cons!65342 (h!71790 C!33048) (t!379102 List!65466)) )
))
(declare-fun s!2326 () List!65466)

(get-info :version)

(assert (=> b!6507164 (= res!2672386 (or (and ((_ is ElementMatch!16389) (regOne!33290 r!7292)) (= (c!1193399 (regOne!33290 r!7292)) (h!71790 s!2326))) ((_ is Union!16389) (regOne!33290 r!7292))))))

(declare-datatypes ((Unit!158891 0))(
  ( (Unit!158892) )
))
(declare-fun lt!2393424 () Unit!158891)

(declare-fun e!3942701 () Unit!158891)

(assert (=> b!6507164 (= lt!2393424 e!3942701)))

(declare-fun c!1193398 () Bool)

(declare-fun lt!2393397 () Bool)

(assert (=> b!6507164 (= c!1193398 lt!2393397)))

(declare-datatypes ((List!65467 0))(
  ( (Nil!65343) (Cons!65343 (h!71791 Regex!16389) (t!379103 List!65467)) )
))
(declare-datatypes ((Context!11546 0))(
  ( (Context!11547 (exprs!6273 List!65467)) )
))
(declare-datatypes ((List!65468 0))(
  ( (Nil!65344) (Cons!65344 (h!71792 Context!11546) (t!379104 List!65468)) )
))
(declare-fun zl!343 () List!65468)

(declare-fun nullable!6382 (Regex!16389) Bool)

(assert (=> b!6507164 (= lt!2393397 (nullable!6382 (h!71791 (exprs!6273 (h!71792 zl!343)))))))

(declare-fun lambda!360900 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!11546))

(declare-fun flatMap!1894 ((InoxSet Context!11546) Int) (InoxSet Context!11546))

(declare-fun derivationStepZipperUp!1563 (Context!11546 C!33048) (InoxSet Context!11546))

(assert (=> b!6507164 (= (flatMap!1894 z!1189 lambda!360900) (derivationStepZipperUp!1563 (h!71792 zl!343) (h!71790 s!2326)))))

(declare-fun lt!2393404 () Unit!158891)

(declare-fun lemmaFlatMapOnSingletonSet!1420 ((InoxSet Context!11546) Context!11546 Int) Unit!158891)

(assert (=> b!6507164 (= lt!2393404 (lemmaFlatMapOnSingletonSet!1420 z!1189 (h!71792 zl!343) lambda!360900))))

(declare-fun lt!2393386 () (InoxSet Context!11546))

(declare-fun lt!2393385 () Context!11546)

(assert (=> b!6507164 (= lt!2393386 (derivationStepZipperUp!1563 lt!2393385 (h!71790 s!2326)))))

(declare-fun lt!2393403 () (InoxSet Context!11546))

(declare-fun derivationStepZipperDown!1637 (Regex!16389 Context!11546 C!33048) (InoxSet Context!11546))

(assert (=> b!6507164 (= lt!2393403 (derivationStepZipperDown!1637 (h!71791 (exprs!6273 (h!71792 zl!343))) lt!2393385 (h!71790 s!2326)))))

(assert (=> b!6507164 (= lt!2393385 (Context!11547 (t!379103 (exprs!6273 (h!71792 zl!343)))))))

(declare-fun lt!2393394 () (InoxSet Context!11546))

(assert (=> b!6507164 (= lt!2393394 (derivationStepZipperUp!1563 (Context!11547 (Cons!65343 (h!71791 (exprs!6273 (h!71792 zl!343))) (t!379103 (exprs!6273 (h!71792 zl!343))))) (h!71790 s!2326)))))

(declare-fun b!6507165 () Bool)

(declare-fun res!2672377 () Bool)

(declare-fun e!3942704 () Bool)

(assert (=> b!6507165 (=> res!2672377 e!3942704)))

(declare-fun lt!2393417 () (InoxSet Context!11546))

(declare-datatypes ((tuple2!66736 0))(
  ( (tuple2!66737 (_1!36671 List!65466) (_2!36671 List!65466)) )
))
(declare-fun lt!2393395 () tuple2!66736)

(declare-fun matchZipper!2401 ((InoxSet Context!11546) List!65466) Bool)

(assert (=> b!6507165 (= res!2672377 (not (matchZipper!2401 lt!2393417 (_2!36671 lt!2393395))))))

(declare-fun setRes!44389 () Bool)

(declare-fun tp!1799570 () Bool)

(declare-fun e!3942697 () Bool)

(declare-fun setNonEmpty!44389 () Bool)

(declare-fun setElem!44389 () Context!11546)

(declare-fun inv!84219 (Context!11546) Bool)

(assert (=> setNonEmpty!44389 (= setRes!44389 (and tp!1799570 (inv!84219 setElem!44389) e!3942697))))

(declare-fun setRest!44389 () (InoxSet Context!11546))

(assert (=> setNonEmpty!44389 (= z!1189 ((_ map or) (store ((as const (Array Context!11546 Bool)) false) setElem!44389 true) setRest!44389))))

(declare-fun b!6507166 () Bool)

(declare-fun res!2672376 () Bool)

(declare-fun e!3942698 () Bool)

(assert (=> b!6507166 (=> res!2672376 e!3942698)))

(declare-fun lt!2393408 () Bool)

(declare-fun lt!2393411 () Bool)

(assert (=> b!6507166 (= res!2672376 (or (not lt!2393408) (not lt!2393411)))))

(declare-fun b!6507167 () Bool)

(declare-fun e!3942715 () Bool)

(declare-fun tp!1799574 () Bool)

(declare-fun tp!1799565 () Bool)

(assert (=> b!6507167 (= e!3942715 (and tp!1799574 tp!1799565))))

(declare-fun b!6507168 () Bool)

(declare-fun e!3942710 () Bool)

(declare-fun e!3942708 () Bool)

(assert (=> b!6507168 (= e!3942710 e!3942708)))

(declare-fun res!2672385 () Bool)

(assert (=> b!6507168 (=> (not res!2672385) (not e!3942708))))

(declare-fun lt!2393401 () Regex!16389)

(assert (=> b!6507168 (= res!2672385 (= r!7292 lt!2393401))))

(declare-fun unfocusZipper!2131 (List!65468) Regex!16389)

(assert (=> b!6507168 (= lt!2393401 (unfocusZipper!2131 zl!343))))

(declare-fun b!6507169 () Bool)

(declare-fun res!2672382 () Bool)

(assert (=> b!6507169 (=> res!2672382 e!3942704)))

(declare-fun lt!2393399 () (InoxSet Context!11546))

(assert (=> b!6507169 (= res!2672382 (not (matchZipper!2401 lt!2393399 (_1!36671 lt!2393395))))))

(declare-fun b!6507170 () Bool)

(declare-fun e!3942706 () Bool)

(declare-fun e!3942707 () Bool)

(assert (=> b!6507170 (= e!3942706 e!3942707)))

(declare-fun res!2672374 () Bool)

(assert (=> b!6507170 (=> res!2672374 e!3942707)))

(declare-fun lt!2393421 () Regex!16389)

(assert (=> b!6507170 (= res!2672374 (not (= r!7292 lt!2393421)))))

(declare-fun lt!2393396 () Regex!16389)

(assert (=> b!6507170 (= lt!2393421 (Concat!25234 lt!2393396 (regTwo!33290 r!7292)))))

(declare-fun b!6507171 () Bool)

(declare-fun res!2672394 () Bool)

(assert (=> b!6507171 (=> res!2672394 e!3942706)))

(assert (=> b!6507171 (= res!2672394 (not (= lt!2393401 r!7292)))))

(declare-fun b!6507172 () Bool)

(declare-fun res!2672393 () Bool)

(assert (=> b!6507172 (=> res!2672393 e!3942696)))

(declare-fun e!3942714 () Bool)

(assert (=> b!6507172 (= res!2672393 e!3942714)))

(declare-fun res!2672364 () Bool)

(assert (=> b!6507172 (=> (not res!2672364) (not e!3942714))))

(assert (=> b!6507172 (= res!2672364 ((_ is Concat!25234) (regOne!33290 r!7292)))))

(declare-fun b!6507173 () Bool)

(declare-fun e!3942712 () Bool)

(assert (=> b!6507173 (= e!3942712 e!3942698)))

(declare-fun res!2672389 () Bool)

(assert (=> b!6507173 (=> res!2672389 e!3942698)))

(declare-fun e!3942717 () Bool)

(assert (=> b!6507173 (= res!2672389 e!3942717)))

(declare-fun res!2672370 () Bool)

(assert (=> b!6507173 (=> (not res!2672370) (not e!3942717))))

(assert (=> b!6507173 (= res!2672370 (not lt!2393408))))

(assert (=> b!6507173 (= lt!2393408 (matchZipper!2401 lt!2393403 (t!379102 s!2326)))))

(declare-fun b!6507174 () Bool)

(declare-fun Unit!158893 () Unit!158891)

(assert (=> b!6507174 (= e!3942701 Unit!158893)))

(declare-fun b!6507175 () Bool)

(declare-fun tp!1799571 () Bool)

(assert (=> b!6507175 (= e!3942697 tp!1799571)))

(declare-fun b!6507176 () Bool)

(declare-fun res!2672392 () Bool)

(declare-fun e!3942705 () Bool)

(assert (=> b!6507176 (=> res!2672392 e!3942705)))

(declare-fun lt!2393400 () Context!11546)

(assert (=> b!6507176 (= res!2672392 (not (= (unfocusZipper!2131 (Cons!65344 lt!2393400 Nil!65344)) lt!2393421)))))

(declare-fun b!6507177 () Bool)

(declare-fun res!2672378 () Bool)

(declare-fun e!3942711 () Bool)

(assert (=> b!6507177 (=> res!2672378 e!3942711)))

(assert (=> b!6507177 (= res!2672378 (not ((_ is Cons!65343) (exprs!6273 (h!71792 zl!343)))))))

(declare-fun b!6507178 () Bool)

(declare-fun lt!2393423 () Context!11546)

(assert (=> b!6507178 (= e!3942704 (inv!84219 lt!2393423))))

(declare-fun b!6507179 () Bool)

(declare-fun e!3942716 () Bool)

(assert (=> b!6507179 (= e!3942707 e!3942716)))

(declare-fun res!2672372 () Bool)

(assert (=> b!6507179 (=> res!2672372 e!3942716)))

(declare-fun lt!2393402 () Context!11546)

(declare-fun lt!2393420 () Regex!16389)

(assert (=> b!6507179 (= res!2672372 (not (= (unfocusZipper!2131 (Cons!65344 lt!2393402 Nil!65344)) lt!2393420)))))

(assert (=> b!6507179 (= lt!2393420 (Concat!25234 (reg!16718 (regOne!33290 r!7292)) lt!2393421))))

(declare-fun tp!1799569 () Bool)

(declare-fun e!3942699 () Bool)

(declare-fun e!3942700 () Bool)

(declare-fun b!6507180 () Bool)

(assert (=> b!6507180 (= e!3942699 (and (inv!84219 (h!71792 zl!343)) e!3942700 tp!1799569))))

(declare-fun b!6507181 () Bool)

(assert (=> b!6507181 (= e!3942717 (not (matchZipper!2401 lt!2393386 (t!379102 s!2326))))))

(declare-fun b!6507182 () Bool)

(declare-fun e!3942695 () Bool)

(assert (=> b!6507182 (= e!3942695 e!3942706)))

(declare-fun res!2672369 () Bool)

(assert (=> b!6507182 (=> res!2672369 e!3942706)))

(declare-fun lt!2393389 () (InoxSet Context!11546))

(assert (=> b!6507182 (= res!2672369 (not (= lt!2393411 (matchZipper!2401 lt!2393389 (t!379102 s!2326)))))))

(declare-fun lt!2393422 () (InoxSet Context!11546))

(assert (=> b!6507182 (= lt!2393411 (matchZipper!2401 lt!2393422 s!2326))))

(declare-fun b!6507183 () Bool)

(declare-fun Unit!158894 () Unit!158891)

(assert (=> b!6507183 (= e!3942701 Unit!158894)))

(declare-fun lt!2393410 () Unit!158891)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1220 ((InoxSet Context!11546) (InoxSet Context!11546) List!65466) Unit!158891)

(assert (=> b!6507183 (= lt!2393410 (lemmaZipperConcatMatchesSameAsBothZippers!1220 lt!2393403 lt!2393386 (t!379102 s!2326)))))

(declare-fun res!2672363 () Bool)

(assert (=> b!6507183 (= res!2672363 (matchZipper!2401 lt!2393403 (t!379102 s!2326)))))

(declare-fun e!3942718 () Bool)

(assert (=> b!6507183 (=> res!2672363 e!3942718)))

(assert (=> b!6507183 (= (matchZipper!2401 ((_ map or) lt!2393403 lt!2393386) (t!379102 s!2326)) e!3942718)))

(declare-fun b!6507184 () Bool)

(declare-fun e!3942703 () Bool)

(assert (=> b!6507184 (= e!3942696 e!3942703)))

(declare-fun res!2672375 () Bool)

(assert (=> b!6507184 (=> res!2672375 e!3942703)))

(declare-fun lt!2393391 () (InoxSet Context!11546))

(assert (=> b!6507184 (= res!2672375 (not (= lt!2393403 lt!2393391)))))

(assert (=> b!6507184 (= lt!2393391 (derivationStepZipperDown!1637 (reg!16718 (regOne!33290 r!7292)) lt!2393400 (h!71790 s!2326)))))

(declare-fun lt!2393388 () List!65467)

(assert (=> b!6507184 (= lt!2393400 (Context!11547 lt!2393388))))

(assert (=> b!6507184 (= lt!2393388 (Cons!65343 lt!2393396 (t!379103 (exprs!6273 (h!71792 zl!343)))))))

(assert (=> b!6507184 (= lt!2393396 (Star!16389 (reg!16718 (regOne!33290 r!7292))))))

(declare-fun b!6507185 () Bool)

(declare-fun res!2672390 () Bool)

(assert (=> b!6507185 (=> res!2672390 e!3942711)))

(assert (=> b!6507185 (= res!2672390 (or ((_ is EmptyExpr!16389) r!7292) ((_ is EmptyLang!16389) r!7292) ((_ is ElementMatch!16389) r!7292) ((_ is Union!16389) r!7292) (not ((_ is Concat!25234) r!7292))))))

(declare-fun b!6507186 () Bool)

(declare-fun e!3942713 () Bool)

(declare-fun tp_is_empty!42031 () Bool)

(declare-fun tp!1799566 () Bool)

(assert (=> b!6507186 (= e!3942713 (and tp_is_empty!42031 tp!1799566))))

(declare-fun b!6507187 () Bool)

(assert (=> b!6507187 (= e!3942715 tp_is_empty!42031)))

(assert (=> b!6507188 (= e!3942711 e!3942709)))

(declare-fun res!2672379 () Bool)

(assert (=> b!6507188 (=> res!2672379 e!3942709)))

(declare-fun lt!2393392 () Bool)

(declare-fun lt!2393413 () Bool)

(assert (=> b!6507188 (= res!2672379 (or (not (= lt!2393392 lt!2393413)) ((_ is Nil!65342) s!2326)))))

(declare-fun Exists!3459 (Int) Bool)

(assert (=> b!6507188 (= (Exists!3459 lambda!360898) (Exists!3459 lambda!360899))))

(declare-fun lt!2393414 () Unit!158891)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1996 (Regex!16389 Regex!16389 List!65466) Unit!158891)

(assert (=> b!6507188 (= lt!2393414 (lemmaExistCutMatchRandMatchRSpecEquivalent!1996 (regOne!33290 r!7292) (regTwo!33290 r!7292) s!2326))))

(assert (=> b!6507188 (= lt!2393413 (Exists!3459 lambda!360898))))

(declare-datatypes ((Option!16280 0))(
  ( (None!16279) (Some!16279 (v!52458 tuple2!66736)) )
))
(declare-fun isDefined!12983 (Option!16280) Bool)

(declare-fun findConcatSeparation!2694 (Regex!16389 Regex!16389 List!65466 List!65466 List!65466) Option!16280)

(assert (=> b!6507188 (= lt!2393413 (isDefined!12983 (findConcatSeparation!2694 (regOne!33290 r!7292) (regTwo!33290 r!7292) Nil!65342 s!2326 s!2326)))))

(declare-fun lt!2393418 () Unit!158891)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2458 (Regex!16389 Regex!16389 List!65466) Unit!158891)

(assert (=> b!6507188 (= lt!2393418 (lemmaFindConcatSeparationEquivalentToExists!2458 (regOne!33290 r!7292) (regTwo!33290 r!7292) s!2326))))

(declare-fun b!6507189 () Bool)

(assert (=> b!6507189 (= e!3942714 (nullable!6382 (regOne!33290 (regOne!33290 r!7292))))))

(declare-fun b!6507190 () Bool)

(declare-fun res!2672380 () Bool)

(assert (=> b!6507190 (=> (not res!2672380) (not e!3942710))))

(declare-fun toList!10173 ((InoxSet Context!11546)) List!65468)

(assert (=> b!6507190 (= res!2672380 (= (toList!10173 z!1189) zl!343))))

(declare-fun b!6507191 () Bool)

(assert (=> b!6507191 (= e!3942705 e!3942712)))

(declare-fun res!2672388 () Bool)

(assert (=> b!6507191 (=> res!2672388 e!3942712)))

(assert (=> b!6507191 (= res!2672388 lt!2393392)))

(declare-fun matchR!8572 (Regex!16389 List!65466) Bool)

(declare-fun matchRSpec!3490 (Regex!16389 List!65466) Bool)

(assert (=> b!6507191 (= (matchR!8572 lt!2393420 s!2326) (matchRSpec!3490 lt!2393420 s!2326))))

(declare-fun lt!2393406 () Unit!158891)

(declare-fun mainMatchTheorem!3490 (Regex!16389 List!65466) Unit!158891)

(assert (=> b!6507191 (= lt!2393406 (mainMatchTheorem!3490 lt!2393420 s!2326))))

(declare-fun b!6507192 () Bool)

(declare-fun res!2672387 () Bool)

(assert (=> b!6507192 (=> res!2672387 e!3942711)))

(declare-fun generalisedConcat!1986 (List!65467) Regex!16389)

(assert (=> b!6507192 (= res!2672387 (not (= r!7292 (generalisedConcat!1986 (exprs!6273 (h!71792 zl!343))))))))

(declare-fun b!6507193 () Bool)

(declare-fun tp!1799573 () Bool)

(declare-fun tp!1799567 () Bool)

(assert (=> b!6507193 (= e!3942715 (and tp!1799573 tp!1799567))))

(declare-fun b!6507194 () Bool)

(declare-fun res!2672362 () Bool)

(assert (=> b!6507194 (=> res!2672362 e!3942712)))

(assert (=> b!6507194 (= res!2672362 (not (matchZipper!2401 z!1189 s!2326)))))

(declare-fun b!6507195 () Bool)

(declare-fun res!2672368 () Bool)

(assert (=> b!6507195 (=> res!2672368 e!3942711)))

(declare-fun isEmpty!37549 (List!65468) Bool)

(assert (=> b!6507195 (= res!2672368 (not (isEmpty!37549 (t!379104 zl!343))))))

(declare-fun b!6507196 () Bool)

(assert (=> b!6507196 (= e!3942718 (matchZipper!2401 lt!2393386 (t!379102 s!2326)))))

(declare-fun b!6507197 () Bool)

(declare-fun res!2672391 () Bool)

(assert (=> b!6507197 (=> res!2672391 e!3942711)))

(declare-fun generalisedUnion!2233 (List!65467) Regex!16389)

(declare-fun unfocusZipperList!1810 (List!65468) List!65467)

(assert (=> b!6507197 (= res!2672391 (not (= r!7292 (generalisedUnion!2233 (unfocusZipperList!1810 zl!343)))))))

(declare-fun b!6507198 () Bool)

(assert (=> b!6507198 (= e!3942708 (not e!3942711))))

(declare-fun res!2672367 () Bool)

(assert (=> b!6507198 (=> res!2672367 e!3942711)))

(assert (=> b!6507198 (= res!2672367 (not ((_ is Cons!65344) zl!343)))))

(assert (=> b!6507198 (= lt!2393392 (matchRSpec!3490 r!7292 s!2326))))

(assert (=> b!6507198 (= lt!2393392 (matchR!8572 r!7292 s!2326))))

(declare-fun lt!2393390 () Unit!158891)

(assert (=> b!6507198 (= lt!2393390 (mainMatchTheorem!3490 r!7292 s!2326))))

(declare-fun b!6507199 () Bool)

(declare-fun res!2672381 () Bool)

(assert (=> b!6507199 (=> res!2672381 e!3942709)))

(declare-fun isEmpty!37550 (List!65467) Bool)

(assert (=> b!6507199 (= res!2672381 (isEmpty!37550 (t!379103 (exprs!6273 (h!71792 zl!343)))))))

(declare-fun b!6507200 () Bool)

(declare-fun tp!1799568 () Bool)

(assert (=> b!6507200 (= e!3942715 tp!1799568)))

(declare-fun b!6507201 () Bool)

(declare-fun tp!1799572 () Bool)

(assert (=> b!6507201 (= e!3942700 tp!1799572)))

(declare-fun b!6507202 () Bool)

(declare-fun e!3942702 () Bool)

(assert (=> b!6507202 (= e!3942702 e!3942704)))

(declare-fun res!2672384 () Bool)

(assert (=> b!6507202 (=> res!2672384 e!3942704)))

(declare-fun ++!14480 (List!65466 List!65466) List!65466)

(assert (=> b!6507202 (= res!2672384 (not (= s!2326 (++!14480 (_1!36671 lt!2393395) (_2!36671 lt!2393395)))))))

(declare-fun lt!2393398 () Option!16280)

(declare-fun get!22665 (Option!16280) tuple2!66736)

(assert (=> b!6507202 (= lt!2393395 (get!22665 lt!2393398))))

(assert (=> b!6507202 (isDefined!12983 lt!2393398)))

(declare-fun findConcatSeparationZippers!154 ((InoxSet Context!11546) (InoxSet Context!11546) List!65466 List!65466 List!65466) Option!16280)

(assert (=> b!6507202 (= lt!2393398 (findConcatSeparationZippers!154 lt!2393399 lt!2393417 Nil!65342 s!2326 s!2326))))

(declare-fun lt!2393412 () Unit!158891)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!154 ((InoxSet Context!11546) Context!11546 List!65466) Unit!158891)

(assert (=> b!6507202 (= lt!2393412 (lemmaConcatZipperMatchesStringThenFindConcatDefined!154 lt!2393399 lt!2393400 s!2326))))

(declare-fun b!6507203 () Bool)

(declare-fun res!2672365 () Bool)

(assert (=> b!6507203 (=> res!2672365 e!3942712)))

(assert (=> b!6507203 (= res!2672365 (not lt!2393397))))

(assert (=> b!6507204 (= e!3942698 e!3942702)))

(declare-fun res!2672373 () Bool)

(assert (=> b!6507204 (=> res!2672373 e!3942702)))

(declare-fun appendTo!150 ((InoxSet Context!11546) Context!11546) (InoxSet Context!11546))

(assert (=> b!6507204 (= res!2672373 (not (= (appendTo!150 lt!2393399 lt!2393400) lt!2393422)))))

(declare-fun lambda!360901 () Int)

(declare-fun map!14892 ((InoxSet Context!11546) Int) (InoxSet Context!11546))

(declare-fun ++!14481 (List!65467 List!65467) List!65467)

(assert (=> b!6507204 (= (map!14892 lt!2393399 lambda!360901) (store ((as const (Array Context!11546 Bool)) false) (Context!11547 (++!14481 (Cons!65343 (reg!16718 (regOne!33290 r!7292)) Nil!65343) lt!2393388)) true))))

(declare-fun lambda!360902 () Int)

(declare-fun lt!2393409 () Unit!158891)

(declare-fun lemmaConcatPreservesForall!362 (List!65467 List!65467 Int) Unit!158891)

(assert (=> b!6507204 (= lt!2393409 (lemmaConcatPreservesForall!362 (Cons!65343 (reg!16718 (regOne!33290 r!7292)) Nil!65343) lt!2393388 lambda!360902))))

(declare-fun lt!2393393 () Unit!158891)

(declare-fun lemmaMapOnSingletonSet!172 ((InoxSet Context!11546) Context!11546 Int) Unit!158891)

(assert (=> b!6507204 (= lt!2393393 (lemmaMapOnSingletonSet!172 lt!2393399 lt!2393423 lambda!360901))))

(declare-fun b!6507205 () Bool)

(assert (=> b!6507205 (= e!3942703 e!3942695)))

(declare-fun res!2672371 () Bool)

(assert (=> b!6507205 (=> res!2672371 e!3942695)))

(assert (=> b!6507205 (= res!2672371 (not (= lt!2393389 lt!2393391)))))

(assert (=> b!6507205 (= (flatMap!1894 lt!2393422 lambda!360900) (derivationStepZipperUp!1563 lt!2393402 (h!71790 s!2326)))))

(declare-fun lt!2393387 () Unit!158891)

(assert (=> b!6507205 (= lt!2393387 (lemmaFlatMapOnSingletonSet!1420 lt!2393422 lt!2393402 lambda!360900))))

(declare-fun lt!2393416 () (InoxSet Context!11546))

(assert (=> b!6507205 (= lt!2393416 (derivationStepZipperUp!1563 lt!2393402 (h!71790 s!2326)))))

(declare-fun derivationStepZipper!2355 ((InoxSet Context!11546) C!33048) (InoxSet Context!11546))

(assert (=> b!6507205 (= lt!2393389 (derivationStepZipper!2355 lt!2393422 (h!71790 s!2326)))))

(assert (=> b!6507205 (= lt!2393422 (store ((as const (Array Context!11546 Bool)) false) lt!2393402 true))))

(assert (=> b!6507205 (= lt!2393402 (Context!11547 (Cons!65343 (reg!16718 (regOne!33290 r!7292)) lt!2393388)))))

(declare-fun setIsEmpty!44389 () Bool)

(assert (=> setIsEmpty!44389 setRes!44389))

(declare-fun res!2672366 () Bool)

(assert (=> start!639322 (=> (not res!2672366) (not e!3942710))))

(declare-fun validRegex!8125 (Regex!16389) Bool)

(assert (=> start!639322 (= res!2672366 (validRegex!8125 r!7292))))

(assert (=> start!639322 e!3942710))

(assert (=> start!639322 e!3942715))

(declare-fun condSetEmpty!44389 () Bool)

(assert (=> start!639322 (= condSetEmpty!44389 (= z!1189 ((as const (Array Context!11546 Bool)) false)))))

(assert (=> start!639322 setRes!44389))

(assert (=> start!639322 e!3942699))

(assert (=> start!639322 e!3942713))

(declare-fun b!6507206 () Bool)

(declare-fun res!2672361 () Bool)

(assert (=> b!6507206 (=> res!2672361 e!3942696)))

(assert (=> b!6507206 (= res!2672361 (or ((_ is Concat!25234) (regOne!33290 r!7292)) (not ((_ is Star!16389) (regOne!33290 r!7292)))))))

(declare-fun b!6507207 () Bool)

(assert (=> b!6507207 (= e!3942716 e!3942705)))

(declare-fun res!2672383 () Bool)

(assert (=> b!6507207 (=> res!2672383 e!3942705)))

(assert (=> b!6507207 (= res!2672383 (not (= (unfocusZipper!2131 (Cons!65344 lt!2393423 Nil!65344)) (reg!16718 (regOne!33290 r!7292)))))))

(assert (=> b!6507207 (= (flatMap!1894 lt!2393417 lambda!360900) (derivationStepZipperUp!1563 lt!2393400 (h!71790 s!2326)))))

(declare-fun lt!2393419 () Unit!158891)

(assert (=> b!6507207 (= lt!2393419 (lemmaFlatMapOnSingletonSet!1420 lt!2393417 lt!2393400 lambda!360900))))

(assert (=> b!6507207 (= (flatMap!1894 lt!2393399 lambda!360900) (derivationStepZipperUp!1563 lt!2393423 (h!71790 s!2326)))))

(declare-fun lt!2393407 () Unit!158891)

(assert (=> b!6507207 (= lt!2393407 (lemmaFlatMapOnSingletonSet!1420 lt!2393399 lt!2393423 lambda!360900))))

(declare-fun lt!2393415 () (InoxSet Context!11546))

(assert (=> b!6507207 (= lt!2393415 (derivationStepZipperUp!1563 lt!2393400 (h!71790 s!2326)))))

(declare-fun lt!2393405 () (InoxSet Context!11546))

(assert (=> b!6507207 (= lt!2393405 (derivationStepZipperUp!1563 lt!2393423 (h!71790 s!2326)))))

(assert (=> b!6507207 (= lt!2393417 (store ((as const (Array Context!11546 Bool)) false) lt!2393400 true))))

(assert (=> b!6507207 (= lt!2393399 (store ((as const (Array Context!11546 Bool)) false) lt!2393423 true))))

(assert (=> b!6507207 (= lt!2393423 (Context!11547 (Cons!65343 (reg!16718 (regOne!33290 r!7292)) Nil!65343)))))

(assert (= (and start!639322 res!2672366) b!6507190))

(assert (= (and b!6507190 res!2672380) b!6507168))

(assert (= (and b!6507168 res!2672385) b!6507198))

(assert (= (and b!6507198 (not res!2672367)) b!6507195))

(assert (= (and b!6507195 (not res!2672368)) b!6507192))

(assert (= (and b!6507192 (not res!2672387)) b!6507177))

(assert (= (and b!6507177 (not res!2672378)) b!6507197))

(assert (= (and b!6507197 (not res!2672391)) b!6507185))

(assert (= (and b!6507185 (not res!2672390)) b!6507188))

(assert (= (and b!6507188 (not res!2672379)) b!6507199))

(assert (= (and b!6507199 (not res!2672381)) b!6507164))

(assert (= (and b!6507164 c!1193398) b!6507183))

(assert (= (and b!6507164 (not c!1193398)) b!6507174))

(assert (= (and b!6507183 (not res!2672363)) b!6507196))

(assert (= (and b!6507164 (not res!2672386)) b!6507172))

(assert (= (and b!6507172 res!2672364) b!6507189))

(assert (= (and b!6507172 (not res!2672393)) b!6507206))

(assert (= (and b!6507206 (not res!2672361)) b!6507184))

(assert (= (and b!6507184 (not res!2672375)) b!6507205))

(assert (= (and b!6507205 (not res!2672371)) b!6507182))

(assert (= (and b!6507182 (not res!2672369)) b!6507171))

(assert (= (and b!6507171 (not res!2672394)) b!6507170))

(assert (= (and b!6507170 (not res!2672374)) b!6507179))

(assert (= (and b!6507179 (not res!2672372)) b!6507207))

(assert (= (and b!6507207 (not res!2672383)) b!6507176))

(assert (= (and b!6507176 (not res!2672392)) b!6507191))

(assert (= (and b!6507191 (not res!2672388)) b!6507194))

(assert (= (and b!6507194 (not res!2672362)) b!6507203))

(assert (= (and b!6507203 (not res!2672365)) b!6507173))

(assert (= (and b!6507173 res!2672370) b!6507181))

(assert (= (and b!6507173 (not res!2672389)) b!6507166))

(assert (= (and b!6507166 (not res!2672376)) b!6507204))

(assert (= (and b!6507204 (not res!2672373)) b!6507202))

(assert (= (and b!6507202 (not res!2672384)) b!6507169))

(assert (= (and b!6507169 (not res!2672382)) b!6507165))

(assert (= (and b!6507165 (not res!2672377)) b!6507178))

(assert (= (and start!639322 ((_ is ElementMatch!16389) r!7292)) b!6507187))

(assert (= (and start!639322 ((_ is Concat!25234) r!7292)) b!6507167))

(assert (= (and start!639322 ((_ is Star!16389) r!7292)) b!6507200))

(assert (= (and start!639322 ((_ is Union!16389) r!7292)) b!6507193))

(assert (= (and start!639322 condSetEmpty!44389) setIsEmpty!44389))

(assert (= (and start!639322 (not condSetEmpty!44389)) setNonEmpty!44389))

(assert (= setNonEmpty!44389 b!6507175))

(assert (= b!6507180 b!6507201))

(assert (= (and start!639322 ((_ is Cons!65344) zl!343)) b!6507180))

(assert (= (and start!639322 ((_ is Cons!65342) s!2326)) b!6507186))

(declare-fun m!7293896 () Bool)

(assert (=> setNonEmpty!44389 m!7293896))

(declare-fun m!7293898 () Bool)

(assert (=> b!6507164 m!7293898))

(declare-fun m!7293900 () Bool)

(assert (=> b!6507164 m!7293900))

(declare-fun m!7293902 () Bool)

(assert (=> b!6507164 m!7293902))

(declare-fun m!7293904 () Bool)

(assert (=> b!6507164 m!7293904))

(declare-fun m!7293906 () Bool)

(assert (=> b!6507164 m!7293906))

(declare-fun m!7293908 () Bool)

(assert (=> b!6507164 m!7293908))

(declare-fun m!7293910 () Bool)

(assert (=> b!6507164 m!7293910))

(declare-fun m!7293912 () Bool)

(assert (=> b!6507195 m!7293912))

(declare-fun m!7293914 () Bool)

(assert (=> b!6507182 m!7293914))

(declare-fun m!7293916 () Bool)

(assert (=> b!6507182 m!7293916))

(declare-fun m!7293918 () Bool)

(assert (=> b!6507183 m!7293918))

(declare-fun m!7293920 () Bool)

(assert (=> b!6507183 m!7293920))

(declare-fun m!7293922 () Bool)

(assert (=> b!6507183 m!7293922))

(declare-fun m!7293924 () Bool)

(assert (=> b!6507176 m!7293924))

(declare-fun m!7293926 () Bool)

(assert (=> b!6507199 m!7293926))

(declare-fun m!7293928 () Bool)

(assert (=> b!6507165 m!7293928))

(declare-fun m!7293930 () Bool)

(assert (=> b!6507204 m!7293930))

(declare-fun m!7293932 () Bool)

(assert (=> b!6507204 m!7293932))

(declare-fun m!7293934 () Bool)

(assert (=> b!6507204 m!7293934))

(declare-fun m!7293936 () Bool)

(assert (=> b!6507204 m!7293936))

(declare-fun m!7293938 () Bool)

(assert (=> b!6507204 m!7293938))

(declare-fun m!7293940 () Bool)

(assert (=> b!6507204 m!7293940))

(declare-fun m!7293942 () Bool)

(assert (=> b!6507202 m!7293942))

(declare-fun m!7293944 () Bool)

(assert (=> b!6507202 m!7293944))

(declare-fun m!7293946 () Bool)

(assert (=> b!6507202 m!7293946))

(declare-fun m!7293948 () Bool)

(assert (=> b!6507202 m!7293948))

(declare-fun m!7293950 () Bool)

(assert (=> b!6507202 m!7293950))

(declare-fun m!7293952 () Bool)

(assert (=> b!6507169 m!7293952))

(declare-fun m!7293954 () Bool)

(assert (=> b!6507194 m!7293954))

(declare-fun m!7293956 () Bool)

(assert (=> b!6507188 m!7293956))

(declare-fun m!7293958 () Bool)

(assert (=> b!6507188 m!7293958))

(declare-fun m!7293960 () Bool)

(assert (=> b!6507188 m!7293960))

(assert (=> b!6507188 m!7293960))

(declare-fun m!7293962 () Bool)

(assert (=> b!6507188 m!7293962))

(declare-fun m!7293964 () Bool)

(assert (=> b!6507188 m!7293964))

(assert (=> b!6507188 m!7293962))

(declare-fun m!7293966 () Bool)

(assert (=> b!6507188 m!7293966))

(declare-fun m!7293968 () Bool)

(assert (=> b!6507168 m!7293968))

(declare-fun m!7293970 () Bool)

(assert (=> b!6507192 m!7293970))

(declare-fun m!7293972 () Bool)

(assert (=> b!6507181 m!7293972))

(declare-fun m!7293974 () Bool)

(assert (=> b!6507207 m!7293974))

(declare-fun m!7293976 () Bool)

(assert (=> b!6507207 m!7293976))

(declare-fun m!7293978 () Bool)

(assert (=> b!6507207 m!7293978))

(declare-fun m!7293980 () Bool)

(assert (=> b!6507207 m!7293980))

(declare-fun m!7293982 () Bool)

(assert (=> b!6507207 m!7293982))

(declare-fun m!7293984 () Bool)

(assert (=> b!6507207 m!7293984))

(declare-fun m!7293986 () Bool)

(assert (=> b!6507207 m!7293986))

(declare-fun m!7293988 () Bool)

(assert (=> b!6507207 m!7293988))

(declare-fun m!7293990 () Bool)

(assert (=> b!6507207 m!7293990))

(assert (=> b!6507196 m!7293972))

(declare-fun m!7293992 () Bool)

(assert (=> b!6507198 m!7293992))

(declare-fun m!7293994 () Bool)

(assert (=> b!6507198 m!7293994))

(declare-fun m!7293996 () Bool)

(assert (=> b!6507198 m!7293996))

(declare-fun m!7293998 () Bool)

(assert (=> b!6507178 m!7293998))

(declare-fun m!7294000 () Bool)

(assert (=> b!6507184 m!7294000))

(declare-fun m!7294002 () Bool)

(assert (=> b!6507190 m!7294002))

(declare-fun m!7294004 () Bool)

(assert (=> start!639322 m!7294004))

(declare-fun m!7294006 () Bool)

(assert (=> b!6507189 m!7294006))

(declare-fun m!7294008 () Bool)

(assert (=> b!6507197 m!7294008))

(assert (=> b!6507197 m!7294008))

(declare-fun m!7294010 () Bool)

(assert (=> b!6507197 m!7294010))

(declare-fun m!7294012 () Bool)

(assert (=> b!6507180 m!7294012))

(declare-fun m!7294014 () Bool)

(assert (=> b!6507179 m!7294014))

(declare-fun m!7294016 () Bool)

(assert (=> b!6507205 m!7294016))

(declare-fun m!7294018 () Bool)

(assert (=> b!6507205 m!7294018))

(declare-fun m!7294020 () Bool)

(assert (=> b!6507205 m!7294020))

(declare-fun m!7294022 () Bool)

(assert (=> b!6507205 m!7294022))

(declare-fun m!7294024 () Bool)

(assert (=> b!6507205 m!7294024))

(declare-fun m!7294026 () Bool)

(assert (=> b!6507191 m!7294026))

(declare-fun m!7294028 () Bool)

(assert (=> b!6507191 m!7294028))

(declare-fun m!7294030 () Bool)

(assert (=> b!6507191 m!7294030))

(assert (=> b!6507173 m!7293920))

(check-sat (not b!6507191) (not b!6507195) (not b!6507179) (not b!6507182) (not b!6507198) (not b!6507199) (not b!6507183) (not b!6507180) (not b!6507178) (not b!6507167) (not b!6507202) (not b!6507192) (not b!6507204) (not b!6507173) (not b!6507188) (not b!6507181) (not b!6507193) (not b!6507189) (not b!6507190) (not b!6507168) (not b!6507200) (not b!6507196) (not b!6507175) tp_is_empty!42031 (not b!6507184) (not setNonEmpty!44389) (not b!6507164) (not b!6507201) (not b!6507169) (not b!6507207) (not b!6507197) (not start!639322) (not b!6507194) (not b!6507165) (not b!6507176) (not b!6507186) (not b!6507205))
(check-sat)
(get-model)

(declare-fun d!2041456 () Bool)

(declare-fun c!1193402 () Bool)

(declare-fun isEmpty!37552 (List!65466) Bool)

(assert (=> d!2041456 (= c!1193402 (isEmpty!37552 (t!379102 s!2326)))))

(declare-fun e!3942721 () Bool)

(assert (=> d!2041456 (= (matchZipper!2401 lt!2393386 (t!379102 s!2326)) e!3942721)))

(declare-fun b!6507220 () Bool)

(declare-fun nullableZipper!2142 ((InoxSet Context!11546)) Bool)

(assert (=> b!6507220 (= e!3942721 (nullableZipper!2142 lt!2393386))))

(declare-fun b!6507221 () Bool)

(declare-fun head!13244 (List!65466) C!33048)

(declare-fun tail!12329 (List!65466) List!65466)

(assert (=> b!6507221 (= e!3942721 (matchZipper!2401 (derivationStepZipper!2355 lt!2393386 (head!13244 (t!379102 s!2326))) (tail!12329 (t!379102 s!2326))))))

(assert (= (and d!2041456 c!1193402) b!6507220))

(assert (= (and d!2041456 (not c!1193402)) b!6507221))

(declare-fun m!7294032 () Bool)

(assert (=> d!2041456 m!7294032))

(declare-fun m!7294034 () Bool)

(assert (=> b!6507220 m!7294034))

(declare-fun m!7294036 () Bool)

(assert (=> b!6507221 m!7294036))

(assert (=> b!6507221 m!7294036))

(declare-fun m!7294038 () Bool)

(assert (=> b!6507221 m!7294038))

(declare-fun m!7294040 () Bool)

(assert (=> b!6507221 m!7294040))

(assert (=> b!6507221 m!7294038))

(assert (=> b!6507221 m!7294040))

(declare-fun m!7294042 () Bool)

(assert (=> b!6507221 m!7294042))

(assert (=> b!6507181 d!2041456))

(declare-fun d!2041458 () Bool)

(assert (=> d!2041458 (isDefined!12983 (findConcatSeparationZippers!154 lt!2393399 (store ((as const (Array Context!11546 Bool)) false) lt!2393400 true) Nil!65342 s!2326 s!2326))))

(declare-fun lt!2393427 () Unit!158891)

(declare-fun choose!48338 ((InoxSet Context!11546) Context!11546 List!65466) Unit!158891)

(assert (=> d!2041458 (= lt!2393427 (choose!48338 lt!2393399 lt!2393400 s!2326))))

(assert (=> d!2041458 (matchZipper!2401 (appendTo!150 lt!2393399 lt!2393400) s!2326)))

(assert (=> d!2041458 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!154 lt!2393399 lt!2393400 s!2326) lt!2393427)))

(declare-fun bs!1652638 () Bool)

(assert (= bs!1652638 d!2041458))

(assert (=> bs!1652638 m!7293938))

(declare-fun m!7294044 () Bool)

(assert (=> bs!1652638 m!7294044))

(declare-fun m!7294046 () Bool)

(assert (=> bs!1652638 m!7294046))

(assert (=> bs!1652638 m!7293988))

(assert (=> bs!1652638 m!7294044))

(declare-fun m!7294048 () Bool)

(assert (=> bs!1652638 m!7294048))

(assert (=> bs!1652638 m!7293988))

(assert (=> bs!1652638 m!7293938))

(declare-fun m!7294050 () Bool)

(assert (=> bs!1652638 m!7294050))

(assert (=> b!6507202 d!2041458))

(declare-fun d!2041460 () Bool)

(declare-fun isEmpty!37553 (Option!16280) Bool)

(assert (=> d!2041460 (= (isDefined!12983 lt!2393398) (not (isEmpty!37553 lt!2393398)))))

(declare-fun bs!1652639 () Bool)

(assert (= bs!1652639 d!2041460))

(declare-fun m!7294052 () Bool)

(assert (=> bs!1652639 m!7294052))

(assert (=> b!6507202 d!2041460))

(declare-fun d!2041462 () Bool)

(assert (=> d!2041462 (= (get!22665 lt!2393398) (v!52458 lt!2393398))))

(assert (=> b!6507202 d!2041462))

(declare-fun b!6507230 () Bool)

(declare-fun e!3942727 () List!65466)

(assert (=> b!6507230 (= e!3942727 (_2!36671 lt!2393395))))

(declare-fun d!2041464 () Bool)

(declare-fun e!3942726 () Bool)

(assert (=> d!2041464 e!3942726))

(declare-fun res!2672401 () Bool)

(assert (=> d!2041464 (=> (not res!2672401) (not e!3942726))))

(declare-fun lt!2393430 () List!65466)

(declare-fun content!12474 (List!65466) (InoxSet C!33048))

(assert (=> d!2041464 (= res!2672401 (= (content!12474 lt!2393430) ((_ map or) (content!12474 (_1!36671 lt!2393395)) (content!12474 (_2!36671 lt!2393395)))))))

(assert (=> d!2041464 (= lt!2393430 e!3942727)))

(declare-fun c!1193405 () Bool)

(assert (=> d!2041464 (= c!1193405 ((_ is Nil!65342) (_1!36671 lt!2393395)))))

(assert (=> d!2041464 (= (++!14480 (_1!36671 lt!2393395) (_2!36671 lt!2393395)) lt!2393430)))

(declare-fun b!6507233 () Bool)

(assert (=> b!6507233 (= e!3942726 (or (not (= (_2!36671 lt!2393395) Nil!65342)) (= lt!2393430 (_1!36671 lt!2393395))))))

(declare-fun b!6507232 () Bool)

(declare-fun res!2672400 () Bool)

(assert (=> b!6507232 (=> (not res!2672400) (not e!3942726))))

(declare-fun size!40445 (List!65466) Int)

(assert (=> b!6507232 (= res!2672400 (= (size!40445 lt!2393430) (+ (size!40445 (_1!36671 lt!2393395)) (size!40445 (_2!36671 lt!2393395)))))))

(declare-fun b!6507231 () Bool)

(assert (=> b!6507231 (= e!3942727 (Cons!65342 (h!71790 (_1!36671 lt!2393395)) (++!14480 (t!379102 (_1!36671 lt!2393395)) (_2!36671 lt!2393395))))))

(assert (= (and d!2041464 c!1193405) b!6507230))

(assert (= (and d!2041464 (not c!1193405)) b!6507231))

(assert (= (and d!2041464 res!2672401) b!6507232))

(assert (= (and b!6507232 res!2672400) b!6507233))

(declare-fun m!7294054 () Bool)

(assert (=> d!2041464 m!7294054))

(declare-fun m!7294056 () Bool)

(assert (=> d!2041464 m!7294056))

(declare-fun m!7294058 () Bool)

(assert (=> d!2041464 m!7294058))

(declare-fun m!7294060 () Bool)

(assert (=> b!6507232 m!7294060))

(declare-fun m!7294062 () Bool)

(assert (=> b!6507232 m!7294062))

(declare-fun m!7294064 () Bool)

(assert (=> b!6507232 m!7294064))

(declare-fun m!7294066 () Bool)

(assert (=> b!6507231 m!7294066))

(assert (=> b!6507202 d!2041464))

(declare-fun b!6507288 () Bool)

(declare-fun e!3942760 () Bool)

(declare-fun lt!2393442 () Option!16280)

(assert (=> b!6507288 (= e!3942760 (= (++!14480 (_1!36671 (get!22665 lt!2393442)) (_2!36671 (get!22665 lt!2393442))) s!2326))))

(declare-fun b!6507289 () Bool)

(declare-fun e!3942763 () Bool)

(assert (=> b!6507289 (= e!3942763 (not (isDefined!12983 lt!2393442)))))

(declare-fun b!6507290 () Bool)

(declare-fun res!2672423 () Bool)

(assert (=> b!6507290 (=> (not res!2672423) (not e!3942760))))

(assert (=> b!6507290 (= res!2672423 (matchZipper!2401 lt!2393417 (_2!36671 (get!22665 lt!2393442))))))

(declare-fun b!6507291 () Bool)

(declare-fun lt!2393440 () Unit!158891)

(declare-fun lt!2393441 () Unit!158891)

(assert (=> b!6507291 (= lt!2393440 lt!2393441)))

(assert (=> b!6507291 (= (++!14480 (++!14480 Nil!65342 (Cons!65342 (h!71790 s!2326) Nil!65342)) (t!379102 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2540 (List!65466 C!33048 List!65466 List!65466) Unit!158891)

(assert (=> b!6507291 (= lt!2393441 (lemmaMoveElementToOtherListKeepsConcatEq!2540 Nil!65342 (h!71790 s!2326) (t!379102 s!2326) s!2326))))

(declare-fun e!3942762 () Option!16280)

(assert (=> b!6507291 (= e!3942762 (findConcatSeparationZippers!154 lt!2393399 lt!2393417 (++!14480 Nil!65342 (Cons!65342 (h!71790 s!2326) Nil!65342)) (t!379102 s!2326) s!2326))))

(declare-fun d!2041466 () Bool)

(assert (=> d!2041466 e!3942763))

(declare-fun res!2672422 () Bool)

(assert (=> d!2041466 (=> res!2672422 e!3942763)))

(assert (=> d!2041466 (= res!2672422 e!3942760)))

(declare-fun res!2672421 () Bool)

(assert (=> d!2041466 (=> (not res!2672421) (not e!3942760))))

(assert (=> d!2041466 (= res!2672421 (isDefined!12983 lt!2393442))))

(declare-fun e!3942759 () Option!16280)

(assert (=> d!2041466 (= lt!2393442 e!3942759)))

(declare-fun c!1193426 () Bool)

(declare-fun e!3942761 () Bool)

(assert (=> d!2041466 (= c!1193426 e!3942761)))

(declare-fun res!2672420 () Bool)

(assert (=> d!2041466 (=> (not res!2672420) (not e!3942761))))

(assert (=> d!2041466 (= res!2672420 (matchZipper!2401 lt!2393399 Nil!65342))))

(assert (=> d!2041466 (= (++!14480 Nil!65342 s!2326) s!2326)))

(assert (=> d!2041466 (= (findConcatSeparationZippers!154 lt!2393399 lt!2393417 Nil!65342 s!2326 s!2326) lt!2393442)))

(declare-fun b!6507292 () Bool)

(assert (=> b!6507292 (= e!3942759 (Some!16279 (tuple2!66737 Nil!65342 s!2326)))))

(declare-fun b!6507293 () Bool)

(assert (=> b!6507293 (= e!3942762 None!16279)))

(declare-fun b!6507294 () Bool)

(assert (=> b!6507294 (= e!3942759 e!3942762)))

(declare-fun c!1193425 () Bool)

(assert (=> b!6507294 (= c!1193425 ((_ is Nil!65342) s!2326))))

(declare-fun b!6507295 () Bool)

(assert (=> b!6507295 (= e!3942761 (matchZipper!2401 lt!2393417 s!2326))))

(declare-fun b!6507296 () Bool)

(declare-fun res!2672419 () Bool)

(assert (=> b!6507296 (=> (not res!2672419) (not e!3942760))))

(assert (=> b!6507296 (= res!2672419 (matchZipper!2401 lt!2393399 (_1!36671 (get!22665 lt!2393442))))))

(assert (= (and d!2041466 res!2672420) b!6507295))

(assert (= (and d!2041466 c!1193426) b!6507292))

(assert (= (and d!2041466 (not c!1193426)) b!6507294))

(assert (= (and b!6507294 c!1193425) b!6507293))

(assert (= (and b!6507294 (not c!1193425)) b!6507291))

(assert (= (and d!2041466 res!2672421) b!6507296))

(assert (= (and b!6507296 res!2672419) b!6507290))

(assert (= (and b!6507290 res!2672423) b!6507288))

(assert (= (and d!2041466 (not res!2672422)) b!6507289))

(declare-fun m!7294098 () Bool)

(assert (=> b!6507291 m!7294098))

(assert (=> b!6507291 m!7294098))

(declare-fun m!7294100 () Bool)

(assert (=> b!6507291 m!7294100))

(declare-fun m!7294102 () Bool)

(assert (=> b!6507291 m!7294102))

(assert (=> b!6507291 m!7294098))

(declare-fun m!7294104 () Bool)

(assert (=> b!6507291 m!7294104))

(declare-fun m!7294106 () Bool)

(assert (=> b!6507296 m!7294106))

(declare-fun m!7294108 () Bool)

(assert (=> b!6507296 m!7294108))

(declare-fun m!7294110 () Bool)

(assert (=> b!6507295 m!7294110))

(declare-fun m!7294112 () Bool)

(assert (=> b!6507289 m!7294112))

(assert (=> b!6507288 m!7294106))

(declare-fun m!7294114 () Bool)

(assert (=> b!6507288 m!7294114))

(assert (=> b!6507290 m!7294106))

(declare-fun m!7294116 () Bool)

(assert (=> b!6507290 m!7294116))

(assert (=> d!2041466 m!7294112))

(declare-fun m!7294118 () Bool)

(assert (=> d!2041466 m!7294118))

(declare-fun m!7294120 () Bool)

(assert (=> d!2041466 m!7294120))

(assert (=> b!6507202 d!2041466))

(declare-fun d!2041474 () Bool)

(declare-fun c!1193427 () Bool)

(assert (=> d!2041474 (= c!1193427 (isEmpty!37552 (t!379102 s!2326)))))

(declare-fun e!3942764 () Bool)

(assert (=> d!2041474 (= (matchZipper!2401 lt!2393389 (t!379102 s!2326)) e!3942764)))

(declare-fun b!6507297 () Bool)

(assert (=> b!6507297 (= e!3942764 (nullableZipper!2142 lt!2393389))))

(declare-fun b!6507298 () Bool)

(assert (=> b!6507298 (= e!3942764 (matchZipper!2401 (derivationStepZipper!2355 lt!2393389 (head!13244 (t!379102 s!2326))) (tail!12329 (t!379102 s!2326))))))

(assert (= (and d!2041474 c!1193427) b!6507297))

(assert (= (and d!2041474 (not c!1193427)) b!6507298))

(assert (=> d!2041474 m!7294032))

(declare-fun m!7294122 () Bool)

(assert (=> b!6507297 m!7294122))

(assert (=> b!6507298 m!7294036))

(assert (=> b!6507298 m!7294036))

(declare-fun m!7294124 () Bool)

(assert (=> b!6507298 m!7294124))

(assert (=> b!6507298 m!7294040))

(assert (=> b!6507298 m!7294124))

(assert (=> b!6507298 m!7294040))

(declare-fun m!7294126 () Bool)

(assert (=> b!6507298 m!7294126))

(assert (=> b!6507182 d!2041474))

(declare-fun d!2041476 () Bool)

(declare-fun c!1193428 () Bool)

(assert (=> d!2041476 (= c!1193428 (isEmpty!37552 s!2326))))

(declare-fun e!3942765 () Bool)

(assert (=> d!2041476 (= (matchZipper!2401 lt!2393422 s!2326) e!3942765)))

(declare-fun b!6507299 () Bool)

(assert (=> b!6507299 (= e!3942765 (nullableZipper!2142 lt!2393422))))

(declare-fun b!6507300 () Bool)

(assert (=> b!6507300 (= e!3942765 (matchZipper!2401 (derivationStepZipper!2355 lt!2393422 (head!13244 s!2326)) (tail!12329 s!2326)))))

(assert (= (and d!2041476 c!1193428) b!6507299))

(assert (= (and d!2041476 (not c!1193428)) b!6507300))

(declare-fun m!7294128 () Bool)

(assert (=> d!2041476 m!7294128))

(declare-fun m!7294130 () Bool)

(assert (=> b!6507299 m!7294130))

(declare-fun m!7294132 () Bool)

(assert (=> b!6507300 m!7294132))

(assert (=> b!6507300 m!7294132))

(declare-fun m!7294134 () Bool)

(assert (=> b!6507300 m!7294134))

(declare-fun m!7294136 () Bool)

(assert (=> b!6507300 m!7294136))

(assert (=> b!6507300 m!7294134))

(assert (=> b!6507300 m!7294136))

(declare-fun m!7294138 () Bool)

(assert (=> b!6507300 m!7294138))

(assert (=> b!6507182 d!2041476))

(declare-fun e!3942783 () Bool)

(declare-fun d!2041478 () Bool)

(assert (=> d!2041478 (= (matchZipper!2401 ((_ map or) lt!2393403 lt!2393386) (t!379102 s!2326)) e!3942783)))

(declare-fun res!2672441 () Bool)

(assert (=> d!2041478 (=> res!2672441 e!3942783)))

(assert (=> d!2041478 (= res!2672441 (matchZipper!2401 lt!2393403 (t!379102 s!2326)))))

(declare-fun lt!2393454 () Unit!158891)

(declare-fun choose!48342 ((InoxSet Context!11546) (InoxSet Context!11546) List!65466) Unit!158891)

(assert (=> d!2041478 (= lt!2393454 (choose!48342 lt!2393403 lt!2393386 (t!379102 s!2326)))))

(assert (=> d!2041478 (= (lemmaZipperConcatMatchesSameAsBothZippers!1220 lt!2393403 lt!2393386 (t!379102 s!2326)) lt!2393454)))

(declare-fun b!6507330 () Bool)

(assert (=> b!6507330 (= e!3942783 (matchZipper!2401 lt!2393386 (t!379102 s!2326)))))

(assert (= (and d!2041478 (not res!2672441)) b!6507330))

(assert (=> d!2041478 m!7293922))

(assert (=> d!2041478 m!7293920))

(declare-fun m!7294168 () Bool)

(assert (=> d!2041478 m!7294168))

(assert (=> b!6507330 m!7293972))

(assert (=> b!6507183 d!2041478))

(declare-fun d!2041486 () Bool)

(declare-fun c!1193435 () Bool)

(assert (=> d!2041486 (= c!1193435 (isEmpty!37552 (t!379102 s!2326)))))

(declare-fun e!3942784 () Bool)

(assert (=> d!2041486 (= (matchZipper!2401 lt!2393403 (t!379102 s!2326)) e!3942784)))

(declare-fun b!6507331 () Bool)

(assert (=> b!6507331 (= e!3942784 (nullableZipper!2142 lt!2393403))))

(declare-fun b!6507332 () Bool)

(assert (=> b!6507332 (= e!3942784 (matchZipper!2401 (derivationStepZipper!2355 lt!2393403 (head!13244 (t!379102 s!2326))) (tail!12329 (t!379102 s!2326))))))

(assert (= (and d!2041486 c!1193435) b!6507331))

(assert (= (and d!2041486 (not c!1193435)) b!6507332))

(assert (=> d!2041486 m!7294032))

(declare-fun m!7294170 () Bool)

(assert (=> b!6507331 m!7294170))

(assert (=> b!6507332 m!7294036))

(assert (=> b!6507332 m!7294036))

(declare-fun m!7294172 () Bool)

(assert (=> b!6507332 m!7294172))

(assert (=> b!6507332 m!7294040))

(assert (=> b!6507332 m!7294172))

(assert (=> b!6507332 m!7294040))

(declare-fun m!7294174 () Bool)

(assert (=> b!6507332 m!7294174))

(assert (=> b!6507183 d!2041486))

(declare-fun d!2041488 () Bool)

(declare-fun c!1193436 () Bool)

(assert (=> d!2041488 (= c!1193436 (isEmpty!37552 (t!379102 s!2326)))))

(declare-fun e!3942785 () Bool)

(assert (=> d!2041488 (= (matchZipper!2401 ((_ map or) lt!2393403 lt!2393386) (t!379102 s!2326)) e!3942785)))

(declare-fun b!6507333 () Bool)

(assert (=> b!6507333 (= e!3942785 (nullableZipper!2142 ((_ map or) lt!2393403 lt!2393386)))))

(declare-fun b!6507334 () Bool)

(assert (=> b!6507334 (= e!3942785 (matchZipper!2401 (derivationStepZipper!2355 ((_ map or) lt!2393403 lt!2393386) (head!13244 (t!379102 s!2326))) (tail!12329 (t!379102 s!2326))))))

(assert (= (and d!2041488 c!1193436) b!6507333))

(assert (= (and d!2041488 (not c!1193436)) b!6507334))

(assert (=> d!2041488 m!7294032))

(declare-fun m!7294176 () Bool)

(assert (=> b!6507333 m!7294176))

(assert (=> b!6507334 m!7294036))

(assert (=> b!6507334 m!7294036))

(declare-fun m!7294178 () Bool)

(assert (=> b!6507334 m!7294178))

(assert (=> b!6507334 m!7294040))

(assert (=> b!6507334 m!7294178))

(assert (=> b!6507334 m!7294040))

(declare-fun m!7294180 () Bool)

(assert (=> b!6507334 m!7294180))

(assert (=> b!6507183 d!2041488))

(declare-fun d!2041490 () Bool)

(declare-fun dynLambda!25959 (Int Context!11546) Context!11546)

(assert (=> d!2041490 (= (map!14892 lt!2393399 lambda!360901) (store ((as const (Array Context!11546 Bool)) false) (dynLambda!25959 lambda!360901 lt!2393423) true))))

(declare-fun lt!2393459 () Unit!158891)

(declare-fun choose!48343 ((InoxSet Context!11546) Context!11546 Int) Unit!158891)

(assert (=> d!2041490 (= lt!2393459 (choose!48343 lt!2393399 lt!2393423 lambda!360901))))

(assert (=> d!2041490 (= lt!2393399 (store ((as const (Array Context!11546 Bool)) false) lt!2393423 true))))

(assert (=> d!2041490 (= (lemmaMapOnSingletonSet!172 lt!2393399 lt!2393423 lambda!360901) lt!2393459)))

(declare-fun b_lambda!246361 () Bool)

(assert (=> (not b_lambda!246361) (not d!2041490)))

(declare-fun bs!1652643 () Bool)

(assert (= bs!1652643 d!2041490))

(declare-fun m!7294182 () Bool)

(assert (=> bs!1652643 m!7294182))

(assert (=> bs!1652643 m!7293934))

(declare-fun m!7294184 () Bool)

(assert (=> bs!1652643 m!7294184))

(assert (=> bs!1652643 m!7294182))

(declare-fun m!7294186 () Bool)

(assert (=> bs!1652643 m!7294186))

(assert (=> bs!1652643 m!7293980))

(assert (=> b!6507204 d!2041490))

(declare-fun bs!1652646 () Bool)

(declare-fun d!2041492 () Bool)

(assert (= bs!1652646 (and d!2041492 b!6507204)))

(declare-fun lambda!360913 () Int)

(assert (=> bs!1652646 (= (= (exprs!6273 lt!2393400) lt!2393388) (= lambda!360913 lambda!360901))))

(assert (=> d!2041492 true))

(assert (=> d!2041492 (= (appendTo!150 lt!2393399 lt!2393400) (map!14892 lt!2393399 lambda!360913))))

(declare-fun bs!1652647 () Bool)

(assert (= bs!1652647 d!2041492))

(declare-fun m!7294192 () Bool)

(assert (=> bs!1652647 m!7294192))

(assert (=> b!6507204 d!2041492))

(declare-fun d!2041496 () Bool)

(declare-fun forall!15568 (List!65467 Int) Bool)

(assert (=> d!2041496 (forall!15568 (++!14481 (Cons!65343 (reg!16718 (regOne!33290 r!7292)) Nil!65343) lt!2393388) lambda!360902)))

(declare-fun lt!2393467 () Unit!158891)

(declare-fun choose!48344 (List!65467 List!65467 Int) Unit!158891)

(assert (=> d!2041496 (= lt!2393467 (choose!48344 (Cons!65343 (reg!16718 (regOne!33290 r!7292)) Nil!65343) lt!2393388 lambda!360902))))

(assert (=> d!2041496 (forall!15568 (Cons!65343 (reg!16718 (regOne!33290 r!7292)) Nil!65343) lambda!360902)))

(assert (=> d!2041496 (= (lemmaConcatPreservesForall!362 (Cons!65343 (reg!16718 (regOne!33290 r!7292)) Nil!65343) lt!2393388 lambda!360902) lt!2393467)))

(declare-fun bs!1652648 () Bool)

(assert (= bs!1652648 d!2041496))

(assert (=> bs!1652648 m!7293936))

(assert (=> bs!1652648 m!7293936))

(declare-fun m!7294194 () Bool)

(assert (=> bs!1652648 m!7294194))

(declare-fun m!7294196 () Bool)

(assert (=> bs!1652648 m!7294196))

(declare-fun m!7294198 () Bool)

(assert (=> bs!1652648 m!7294198))

(assert (=> b!6507204 d!2041496))

(declare-fun d!2041498 () Bool)

(declare-fun choose!48345 ((InoxSet Context!11546) Int) (InoxSet Context!11546))

(assert (=> d!2041498 (= (map!14892 lt!2393399 lambda!360901) (choose!48345 lt!2393399 lambda!360901))))

(declare-fun bs!1652651 () Bool)

(assert (= bs!1652651 d!2041498))

(declare-fun m!7294200 () Bool)

(assert (=> bs!1652651 m!7294200))

(assert (=> b!6507204 d!2041498))

(declare-fun b!6507358 () Bool)

(declare-fun e!3942797 () List!65467)

(assert (=> b!6507358 (= e!3942797 (Cons!65343 (h!71791 (Cons!65343 (reg!16718 (regOne!33290 r!7292)) Nil!65343)) (++!14481 (t!379103 (Cons!65343 (reg!16718 (regOne!33290 r!7292)) Nil!65343)) lt!2393388)))))

(declare-fun lt!2393474 () List!65467)

(declare-fun b!6507360 () Bool)

(declare-fun e!3942796 () Bool)

(assert (=> b!6507360 (= e!3942796 (or (not (= lt!2393388 Nil!65343)) (= lt!2393474 (Cons!65343 (reg!16718 (regOne!33290 r!7292)) Nil!65343))))))

(declare-fun b!6507359 () Bool)

(declare-fun res!2672459 () Bool)

(assert (=> b!6507359 (=> (not res!2672459) (not e!3942796))))

(declare-fun size!40446 (List!65467) Int)

(assert (=> b!6507359 (= res!2672459 (= (size!40446 lt!2393474) (+ (size!40446 (Cons!65343 (reg!16718 (regOne!33290 r!7292)) Nil!65343)) (size!40446 lt!2393388))))))

(declare-fun d!2041500 () Bool)

(assert (=> d!2041500 e!3942796))

(declare-fun res!2672458 () Bool)

(assert (=> d!2041500 (=> (not res!2672458) (not e!3942796))))

(declare-fun content!12475 (List!65467) (InoxSet Regex!16389))

(assert (=> d!2041500 (= res!2672458 (= (content!12475 lt!2393474) ((_ map or) (content!12475 (Cons!65343 (reg!16718 (regOne!33290 r!7292)) Nil!65343)) (content!12475 lt!2393388))))))

(assert (=> d!2041500 (= lt!2393474 e!3942797)))

(declare-fun c!1193440 () Bool)

(assert (=> d!2041500 (= c!1193440 ((_ is Nil!65343) (Cons!65343 (reg!16718 (regOne!33290 r!7292)) Nil!65343)))))

(assert (=> d!2041500 (= (++!14481 (Cons!65343 (reg!16718 (regOne!33290 r!7292)) Nil!65343) lt!2393388) lt!2393474)))

(declare-fun b!6507357 () Bool)

(assert (=> b!6507357 (= e!3942797 lt!2393388)))

(assert (= (and d!2041500 c!1193440) b!6507357))

(assert (= (and d!2041500 (not c!1193440)) b!6507358))

(assert (= (and d!2041500 res!2672458) b!6507359))

(assert (= (and b!6507359 res!2672459) b!6507360))

(declare-fun m!7294212 () Bool)

(assert (=> b!6507358 m!7294212))

(declare-fun m!7294214 () Bool)

(assert (=> b!6507359 m!7294214))

(declare-fun m!7294216 () Bool)

(assert (=> b!6507359 m!7294216))

(declare-fun m!7294218 () Bool)

(assert (=> b!6507359 m!7294218))

(declare-fun m!7294220 () Bool)

(assert (=> d!2041500 m!7294220))

(declare-fun m!7294222 () Bool)

(assert (=> d!2041500 m!7294222))

(declare-fun m!7294224 () Bool)

(assert (=> d!2041500 m!7294224))

(assert (=> b!6507204 d!2041500))

(declare-fun bs!1652655 () Bool)

(declare-fun d!2041508 () Bool)

(assert (= bs!1652655 (and d!2041508 b!6507204)))

(declare-fun lambda!360924 () Int)

(assert (=> bs!1652655 (= lambda!360924 lambda!360902)))

(assert (=> d!2041508 (= (inv!84219 lt!2393423) (forall!15568 (exprs!6273 lt!2393423) lambda!360924))))

(declare-fun bs!1652656 () Bool)

(assert (= bs!1652656 d!2041508))

(declare-fun m!7294226 () Bool)

(assert (=> bs!1652656 m!7294226))

(assert (=> b!6507178 d!2041508))

(declare-fun d!2041510 () Bool)

(declare-fun lt!2393480 () Regex!16389)

(assert (=> d!2041510 (validRegex!8125 lt!2393480)))

(assert (=> d!2041510 (= lt!2393480 (generalisedUnion!2233 (unfocusZipperList!1810 (Cons!65344 lt!2393402 Nil!65344))))))

(assert (=> d!2041510 (= (unfocusZipper!2131 (Cons!65344 lt!2393402 Nil!65344)) lt!2393480)))

(declare-fun bs!1652659 () Bool)

(assert (= bs!1652659 d!2041510))

(declare-fun m!7294248 () Bool)

(assert (=> bs!1652659 m!7294248))

(declare-fun m!7294250 () Bool)

(assert (=> bs!1652659 m!7294250))

(assert (=> bs!1652659 m!7294250))

(declare-fun m!7294252 () Bool)

(assert (=> bs!1652659 m!7294252))

(assert (=> b!6507179 d!2041510))

(declare-fun bs!1652660 () Bool)

(declare-fun d!2041514 () Bool)

(assert (= bs!1652660 (and d!2041514 b!6507204)))

(declare-fun lambda!360926 () Int)

(assert (=> bs!1652660 (= lambda!360926 lambda!360902)))

(declare-fun bs!1652661 () Bool)

(assert (= bs!1652661 (and d!2041514 d!2041508)))

(assert (=> bs!1652661 (= lambda!360926 lambda!360924)))

(assert (=> d!2041514 (= (inv!84219 (h!71792 zl!343)) (forall!15568 (exprs!6273 (h!71792 zl!343)) lambda!360926))))

(declare-fun bs!1652662 () Bool)

(assert (= bs!1652662 d!2041514))

(declare-fun m!7294254 () Bool)

(assert (=> bs!1652662 m!7294254))

(assert (=> b!6507180 d!2041514))

(declare-fun bs!1652680 () Bool)

(declare-fun d!2041516 () Bool)

(assert (= bs!1652680 (and d!2041516 b!6507204)))

(declare-fun lambda!360936 () Int)

(assert (=> bs!1652680 (= lambda!360936 lambda!360902)))

(declare-fun bs!1652681 () Bool)

(assert (= bs!1652681 (and d!2041516 d!2041508)))

(assert (=> bs!1652681 (= lambda!360936 lambda!360924)))

(declare-fun bs!1652682 () Bool)

(assert (= bs!1652682 (and d!2041516 d!2041514)))

(assert (=> bs!1652682 (= lambda!360936 lambda!360926)))

(declare-fun b!6507423 () Bool)

(declare-fun e!3942838 () Bool)

(declare-fun lt!2393490 () Regex!16389)

(declare-fun isUnion!1215 (Regex!16389) Bool)

(assert (=> b!6507423 (= e!3942838 (isUnion!1215 lt!2393490))))

(declare-fun b!6507424 () Bool)

(declare-fun e!3942837 () Bool)

(declare-fun e!3942835 () Bool)

(assert (=> b!6507424 (= e!3942837 e!3942835)))

(declare-fun c!1193469 () Bool)

(assert (=> b!6507424 (= c!1193469 (isEmpty!37550 (unfocusZipperList!1810 zl!343)))))

(declare-fun b!6507425 () Bool)

(declare-fun e!3942839 () Regex!16389)

(declare-fun e!3942836 () Regex!16389)

(assert (=> b!6507425 (= e!3942839 e!3942836)))

(declare-fun c!1193470 () Bool)

(assert (=> b!6507425 (= c!1193470 ((_ is Cons!65343) (unfocusZipperList!1810 zl!343)))))

(declare-fun b!6507426 () Bool)

(assert (=> b!6507426 (= e!3942839 (h!71791 (unfocusZipperList!1810 zl!343)))))

(declare-fun b!6507427 () Bool)

(assert (=> b!6507427 (= e!3942836 (Union!16389 (h!71791 (unfocusZipperList!1810 zl!343)) (generalisedUnion!2233 (t!379103 (unfocusZipperList!1810 zl!343)))))))

(assert (=> d!2041516 e!3942837))

(declare-fun res!2672470 () Bool)

(assert (=> d!2041516 (=> (not res!2672470) (not e!3942837))))

(assert (=> d!2041516 (= res!2672470 (validRegex!8125 lt!2393490))))

(assert (=> d!2041516 (= lt!2393490 e!3942839)))

(declare-fun c!1193467 () Bool)

(declare-fun e!3942834 () Bool)

(assert (=> d!2041516 (= c!1193467 e!3942834)))

(declare-fun res!2672471 () Bool)

(assert (=> d!2041516 (=> (not res!2672471) (not e!3942834))))

(assert (=> d!2041516 (= res!2672471 ((_ is Cons!65343) (unfocusZipperList!1810 zl!343)))))

(assert (=> d!2041516 (forall!15568 (unfocusZipperList!1810 zl!343) lambda!360936)))

(assert (=> d!2041516 (= (generalisedUnion!2233 (unfocusZipperList!1810 zl!343)) lt!2393490)))

(declare-fun b!6507428 () Bool)

(declare-fun isEmptyLang!1785 (Regex!16389) Bool)

(assert (=> b!6507428 (= e!3942835 (isEmptyLang!1785 lt!2393490))))

(declare-fun b!6507429 () Bool)

(declare-fun head!13246 (List!65467) Regex!16389)

(assert (=> b!6507429 (= e!3942838 (= lt!2393490 (head!13246 (unfocusZipperList!1810 zl!343))))))

(declare-fun b!6507430 () Bool)

(assert (=> b!6507430 (= e!3942836 EmptyLang!16389)))

(declare-fun b!6507431 () Bool)

(assert (=> b!6507431 (= e!3942834 (isEmpty!37550 (t!379103 (unfocusZipperList!1810 zl!343))))))

(declare-fun b!6507432 () Bool)

(assert (=> b!6507432 (= e!3942835 e!3942838)))

(declare-fun c!1193468 () Bool)

(declare-fun tail!12331 (List!65467) List!65467)

(assert (=> b!6507432 (= c!1193468 (isEmpty!37550 (tail!12331 (unfocusZipperList!1810 zl!343))))))

(assert (= (and d!2041516 res!2672471) b!6507431))

(assert (= (and d!2041516 c!1193467) b!6507426))

(assert (= (and d!2041516 (not c!1193467)) b!6507425))

(assert (= (and b!6507425 c!1193470) b!6507427))

(assert (= (and b!6507425 (not c!1193470)) b!6507430))

(assert (= (and d!2041516 res!2672470) b!6507424))

(assert (= (and b!6507424 c!1193469) b!6507428))

(assert (= (and b!6507424 (not c!1193469)) b!6507432))

(assert (= (and b!6507432 c!1193468) b!6507429))

(assert (= (and b!6507432 (not c!1193468)) b!6507423))

(declare-fun m!7294308 () Bool)

(assert (=> b!6507431 m!7294308))

(assert (=> b!6507424 m!7294008))

(declare-fun m!7294310 () Bool)

(assert (=> b!6507424 m!7294310))

(assert (=> b!6507432 m!7294008))

(declare-fun m!7294312 () Bool)

(assert (=> b!6507432 m!7294312))

(assert (=> b!6507432 m!7294312))

(declare-fun m!7294314 () Bool)

(assert (=> b!6507432 m!7294314))

(declare-fun m!7294316 () Bool)

(assert (=> b!6507428 m!7294316))

(declare-fun m!7294318 () Bool)

(assert (=> b!6507423 m!7294318))

(declare-fun m!7294320 () Bool)

(assert (=> d!2041516 m!7294320))

(assert (=> d!2041516 m!7294008))

(declare-fun m!7294322 () Bool)

(assert (=> d!2041516 m!7294322))

(assert (=> b!6507429 m!7294008))

(declare-fun m!7294324 () Bool)

(assert (=> b!6507429 m!7294324))

(declare-fun m!7294326 () Bool)

(assert (=> b!6507427 m!7294326))

(assert (=> b!6507197 d!2041516))

(declare-fun bs!1652685 () Bool)

(declare-fun d!2041536 () Bool)

(assert (= bs!1652685 (and d!2041536 b!6507204)))

(declare-fun lambda!360944 () Int)

(assert (=> bs!1652685 (= lambda!360944 lambda!360902)))

(declare-fun bs!1652686 () Bool)

(assert (= bs!1652686 (and d!2041536 d!2041508)))

(assert (=> bs!1652686 (= lambda!360944 lambda!360924)))

(declare-fun bs!1652687 () Bool)

(assert (= bs!1652687 (and d!2041536 d!2041514)))

(assert (=> bs!1652687 (= lambda!360944 lambda!360926)))

(declare-fun bs!1652688 () Bool)

(assert (= bs!1652688 (and d!2041536 d!2041516)))

(assert (=> bs!1652688 (= lambda!360944 lambda!360936)))

(declare-fun lt!2393497 () List!65467)

(assert (=> d!2041536 (forall!15568 lt!2393497 lambda!360944)))

(declare-fun e!3942842 () List!65467)

(assert (=> d!2041536 (= lt!2393497 e!3942842)))

(declare-fun c!1193474 () Bool)

(assert (=> d!2041536 (= c!1193474 ((_ is Cons!65344) zl!343))))

(assert (=> d!2041536 (= (unfocusZipperList!1810 zl!343) lt!2393497)))

(declare-fun b!6507439 () Bool)

(assert (=> b!6507439 (= e!3942842 (Cons!65343 (generalisedConcat!1986 (exprs!6273 (h!71792 zl!343))) (unfocusZipperList!1810 (t!379104 zl!343))))))

(declare-fun b!6507440 () Bool)

(assert (=> b!6507440 (= e!3942842 Nil!65343)))

(assert (= (and d!2041536 c!1193474) b!6507439))

(assert (= (and d!2041536 (not c!1193474)) b!6507440))

(declare-fun m!7294330 () Bool)

(assert (=> d!2041536 m!7294330))

(assert (=> b!6507439 m!7293970))

(declare-fun m!7294334 () Bool)

(assert (=> b!6507439 m!7294334))

(assert (=> b!6507197 d!2041536))

(declare-fun d!2041540 () Bool)

(declare-fun lt!2393499 () Regex!16389)

(assert (=> d!2041540 (validRegex!8125 lt!2393499)))

(assert (=> d!2041540 (= lt!2393499 (generalisedUnion!2233 (unfocusZipperList!1810 (Cons!65344 lt!2393400 Nil!65344))))))

(assert (=> d!2041540 (= (unfocusZipper!2131 (Cons!65344 lt!2393400 Nil!65344)) lt!2393499)))

(declare-fun bs!1652690 () Bool)

(assert (= bs!1652690 d!2041540))

(declare-fun m!7294340 () Bool)

(assert (=> bs!1652690 m!7294340))

(declare-fun m!7294342 () Bool)

(assert (=> bs!1652690 m!7294342))

(assert (=> bs!1652690 m!7294342))

(declare-fun m!7294344 () Bool)

(assert (=> bs!1652690 m!7294344))

(assert (=> b!6507176 d!2041540))

(declare-fun b!6507471 () Bool)

(declare-fun e!3942865 () Bool)

(declare-fun call!563995 () Bool)

(assert (=> b!6507471 (= e!3942865 call!563995)))

(declare-fun bm!563989 () Bool)

(declare-fun c!1193483 () Bool)

(assert (=> bm!563989 (= call!563995 (validRegex!8125 (ite c!1193483 (regTwo!33291 r!7292) (regTwo!33290 r!7292))))))

(declare-fun b!6507472 () Bool)

(declare-fun e!3942864 () Bool)

(declare-fun call!563994 () Bool)

(assert (=> b!6507472 (= e!3942864 call!563994)))

(declare-fun b!6507473 () Bool)

(declare-fun res!2672491 () Bool)

(declare-fun e!3942868 () Bool)

(assert (=> b!6507473 (=> res!2672491 e!3942868)))

(assert (=> b!6507473 (= res!2672491 (not ((_ is Concat!25234) r!7292)))))

(declare-fun e!3942863 () Bool)

(assert (=> b!6507473 (= e!3942863 e!3942868)))

(declare-fun b!6507474 () Bool)

(declare-fun res!2672488 () Bool)

(assert (=> b!6507474 (=> (not res!2672488) (not e!3942865))))

(declare-fun call!563996 () Bool)

(assert (=> b!6507474 (= res!2672488 call!563996)))

(assert (=> b!6507474 (= e!3942863 e!3942865)))

(declare-fun b!6507475 () Bool)

(declare-fun e!3942867 () Bool)

(assert (=> b!6507475 (= e!3942868 e!3942867)))

(declare-fun res!2672489 () Bool)

(assert (=> b!6507475 (=> (not res!2672489) (not e!3942867))))

(assert (=> b!6507475 (= res!2672489 call!563996)))

(declare-fun b!6507476 () Bool)

(declare-fun e!3942869 () Bool)

(assert (=> b!6507476 (= e!3942869 e!3942863)))

(assert (=> b!6507476 (= c!1193483 ((_ is Union!16389) r!7292))))

(declare-fun b!6507477 () Bool)

(declare-fun e!3942866 () Bool)

(assert (=> b!6507477 (= e!3942866 e!3942869)))

(declare-fun c!1193482 () Bool)

(assert (=> b!6507477 (= c!1193482 ((_ is Star!16389) r!7292))))

(declare-fun d!2041544 () Bool)

(declare-fun res!2672492 () Bool)

(assert (=> d!2041544 (=> res!2672492 e!3942866)))

(assert (=> d!2041544 (= res!2672492 ((_ is ElementMatch!16389) r!7292))))

(assert (=> d!2041544 (= (validRegex!8125 r!7292) e!3942866)))

(declare-fun bm!563990 () Bool)

(assert (=> bm!563990 (= call!563994 (validRegex!8125 (ite c!1193482 (reg!16718 r!7292) (ite c!1193483 (regOne!33291 r!7292) (regOne!33290 r!7292)))))))

(declare-fun bm!563991 () Bool)

(assert (=> bm!563991 (= call!563996 call!563994)))

(declare-fun b!6507478 () Bool)

(assert (=> b!6507478 (= e!3942869 e!3942864)))

(declare-fun res!2672490 () Bool)

(assert (=> b!6507478 (= res!2672490 (not (nullable!6382 (reg!16718 r!7292))))))

(assert (=> b!6507478 (=> (not res!2672490) (not e!3942864))))

(declare-fun b!6507479 () Bool)

(assert (=> b!6507479 (= e!3942867 call!563995)))

(assert (= (and d!2041544 (not res!2672492)) b!6507477))

(assert (= (and b!6507477 c!1193482) b!6507478))

(assert (= (and b!6507477 (not c!1193482)) b!6507476))

(assert (= (and b!6507478 res!2672490) b!6507472))

(assert (= (and b!6507476 c!1193483) b!6507474))

(assert (= (and b!6507476 (not c!1193483)) b!6507473))

(assert (= (and b!6507474 res!2672488) b!6507471))

(assert (= (and b!6507473 (not res!2672491)) b!6507475))

(assert (= (and b!6507475 res!2672489) b!6507479))

(assert (= (or b!6507471 b!6507479) bm!563989))

(assert (= (or b!6507474 b!6507475) bm!563991))

(assert (= (or b!6507472 bm!563991) bm!563990))

(declare-fun m!7294366 () Bool)

(assert (=> bm!563989 m!7294366))

(declare-fun m!7294368 () Bool)

(assert (=> bm!563990 m!7294368))

(declare-fun m!7294370 () Bool)

(assert (=> b!6507478 m!7294370))

(assert (=> start!639322 d!2041544))

(declare-fun bs!1652694 () Bool)

(declare-fun b!6507561 () Bool)

(assert (= bs!1652694 (and b!6507561 b!6507188)))

(declare-fun lambda!360949 () Int)

(assert (=> bs!1652694 (not (= lambda!360949 lambda!360898))))

(assert (=> bs!1652694 (not (= lambda!360949 lambda!360899))))

(assert (=> b!6507561 true))

(assert (=> b!6507561 true))

(declare-fun bs!1652696 () Bool)

(declare-fun b!6507567 () Bool)

(assert (= bs!1652696 (and b!6507567 b!6507188)))

(declare-fun lambda!360950 () Int)

(assert (=> bs!1652696 (not (= lambda!360950 lambda!360898))))

(assert (=> bs!1652696 (= lambda!360950 lambda!360899)))

(declare-fun bs!1652697 () Bool)

(assert (= bs!1652697 (and b!6507567 b!6507561)))

(assert (=> bs!1652697 (not (= lambda!360950 lambda!360949))))

(assert (=> b!6507567 true))

(assert (=> b!6507567 true))

(declare-fun bm!564009 () Bool)

(declare-fun call!564014 () Bool)

(assert (=> bm!564009 (= call!564014 (isEmpty!37552 s!2326))))

(declare-fun b!6507559 () Bool)

(declare-fun res!2672528 () Bool)

(declare-fun e!3942922 () Bool)

(assert (=> b!6507559 (=> res!2672528 e!3942922)))

(assert (=> b!6507559 (= res!2672528 call!564014)))

(declare-fun e!3942927 () Bool)

(assert (=> b!6507559 (= e!3942927 e!3942922)))

(declare-fun b!6507560 () Bool)

(declare-fun e!3942926 () Bool)

(assert (=> b!6507560 (= e!3942926 (= s!2326 (Cons!65342 (c!1193399 r!7292) Nil!65342)))))

(declare-fun bm!564010 () Bool)

(declare-fun call!564015 () Bool)

(declare-fun c!1193507 () Bool)

(assert (=> bm!564010 (= call!564015 (Exists!3459 (ite c!1193507 lambda!360949 lambda!360950)))))

(assert (=> b!6507561 (= e!3942922 call!564015)))

(declare-fun b!6507562 () Bool)

(declare-fun e!3942925 () Bool)

(assert (=> b!6507562 (= e!3942925 (matchRSpec!3490 (regTwo!33291 r!7292) s!2326))))

(declare-fun b!6507563 () Bool)

(declare-fun e!3942924 () Bool)

(assert (=> b!6507563 (= e!3942924 e!3942927)))

(assert (=> b!6507563 (= c!1193507 ((_ is Star!16389) r!7292))))

(declare-fun b!6507564 () Bool)

(declare-fun c!1193509 () Bool)

(assert (=> b!6507564 (= c!1193509 ((_ is ElementMatch!16389) r!7292))))

(declare-fun e!3942923 () Bool)

(assert (=> b!6507564 (= e!3942923 e!3942926)))

(declare-fun b!6507565 () Bool)

(declare-fun c!1193508 () Bool)

(assert (=> b!6507565 (= c!1193508 ((_ is Union!16389) r!7292))))

(assert (=> b!6507565 (= e!3942926 e!3942924)))

(declare-fun d!2041550 () Bool)

(declare-fun c!1193506 () Bool)

(assert (=> d!2041550 (= c!1193506 ((_ is EmptyExpr!16389) r!7292))))

(declare-fun e!3942921 () Bool)

(assert (=> d!2041550 (= (matchRSpec!3490 r!7292 s!2326) e!3942921)))

(declare-fun b!6507566 () Bool)

(assert (=> b!6507566 (= e!3942924 e!3942925)))

(declare-fun res!2672530 () Bool)

(assert (=> b!6507566 (= res!2672530 (matchRSpec!3490 (regOne!33291 r!7292) s!2326))))

(assert (=> b!6507566 (=> res!2672530 e!3942925)))

(assert (=> b!6507567 (= e!3942927 call!564015)))

(declare-fun b!6507568 () Bool)

(assert (=> b!6507568 (= e!3942921 call!564014)))

(declare-fun b!6507569 () Bool)

(assert (=> b!6507569 (= e!3942921 e!3942923)))

(declare-fun res!2672529 () Bool)

(assert (=> b!6507569 (= res!2672529 (not ((_ is EmptyLang!16389) r!7292)))))

(assert (=> b!6507569 (=> (not res!2672529) (not e!3942923))))

(assert (= (and d!2041550 c!1193506) b!6507568))

(assert (= (and d!2041550 (not c!1193506)) b!6507569))

(assert (= (and b!6507569 res!2672529) b!6507564))

(assert (= (and b!6507564 c!1193509) b!6507560))

(assert (= (and b!6507564 (not c!1193509)) b!6507565))

(assert (= (and b!6507565 c!1193508) b!6507566))

(assert (= (and b!6507565 (not c!1193508)) b!6507563))

(assert (= (and b!6507566 (not res!2672530)) b!6507562))

(assert (= (and b!6507563 c!1193507) b!6507559))

(assert (= (and b!6507563 (not c!1193507)) b!6507567))

(assert (= (and b!6507559 (not res!2672528)) b!6507561))

(assert (= (or b!6507561 b!6507567) bm!564010))

(assert (= (or b!6507568 b!6507559) bm!564009))

(assert (=> bm!564009 m!7294128))

(declare-fun m!7294404 () Bool)

(assert (=> bm!564010 m!7294404))

(declare-fun m!7294406 () Bool)

(assert (=> b!6507562 m!7294406))

(declare-fun m!7294408 () Bool)

(assert (=> b!6507566 m!7294408))

(assert (=> b!6507198 d!2041550))

(declare-fun b!6507636 () Bool)

(declare-fun e!3942963 () Bool)

(declare-fun lt!2393509 () Bool)

(assert (=> b!6507636 (= e!3942963 (not lt!2393509))))

(declare-fun b!6507637 () Bool)

(declare-fun e!3942967 () Bool)

(declare-fun e!3942966 () Bool)

(assert (=> b!6507637 (= e!3942967 e!3942966)))

(declare-fun res!2672551 () Bool)

(assert (=> b!6507637 (=> (not res!2672551) (not e!3942966))))

(assert (=> b!6507637 (= res!2672551 (not lt!2393509))))

(declare-fun b!6507638 () Bool)

(declare-fun e!3942969 () Bool)

(assert (=> b!6507638 (= e!3942969 e!3942963)))

(declare-fun c!1193534 () Bool)

(assert (=> b!6507638 (= c!1193534 ((_ is EmptyLang!16389) r!7292))))

(declare-fun b!6507639 () Bool)

(declare-fun e!3942968 () Bool)

(assert (=> b!6507639 (= e!3942968 (= (head!13244 s!2326) (c!1193399 r!7292)))))

(declare-fun d!2041566 () Bool)

(assert (=> d!2041566 e!3942969))

(declare-fun c!1193533 () Bool)

(assert (=> d!2041566 (= c!1193533 ((_ is EmptyExpr!16389) r!7292))))

(declare-fun e!3942964 () Bool)

(assert (=> d!2041566 (= lt!2393509 e!3942964)))

(declare-fun c!1193535 () Bool)

(assert (=> d!2041566 (= c!1193535 (isEmpty!37552 s!2326))))

(assert (=> d!2041566 (validRegex!8125 r!7292)))

(assert (=> d!2041566 (= (matchR!8572 r!7292 s!2326) lt!2393509)))

(declare-fun bm!564032 () Bool)

(declare-fun call!564037 () Bool)

(assert (=> bm!564032 (= call!564037 (isEmpty!37552 s!2326))))

(declare-fun b!6507640 () Bool)

(declare-fun res!2672554 () Bool)

(assert (=> b!6507640 (=> res!2672554 e!3942967)))

(assert (=> b!6507640 (= res!2672554 e!3942968)))

(declare-fun res!2672557 () Bool)

(assert (=> b!6507640 (=> (not res!2672557) (not e!3942968))))

(assert (=> b!6507640 (= res!2672557 lt!2393509)))

(declare-fun b!6507641 () Bool)

(declare-fun derivativeStep!5080 (Regex!16389 C!33048) Regex!16389)

(assert (=> b!6507641 (= e!3942964 (matchR!8572 (derivativeStep!5080 r!7292 (head!13244 s!2326)) (tail!12329 s!2326)))))

(declare-fun b!6507642 () Bool)

(declare-fun e!3942965 () Bool)

(assert (=> b!6507642 (= e!3942966 e!3942965)))

(declare-fun res!2672552 () Bool)

(assert (=> b!6507642 (=> res!2672552 e!3942965)))

(assert (=> b!6507642 (= res!2672552 call!564037)))

(declare-fun b!6507643 () Bool)

(declare-fun res!2672558 () Bool)

(assert (=> b!6507643 (=> (not res!2672558) (not e!3942968))))

(assert (=> b!6507643 (= res!2672558 (not call!564037))))

(declare-fun b!6507644 () Bool)

(assert (=> b!6507644 (= e!3942964 (nullable!6382 r!7292))))

(declare-fun b!6507645 () Bool)

(assert (=> b!6507645 (= e!3942965 (not (= (head!13244 s!2326) (c!1193399 r!7292))))))

(declare-fun b!6507646 () Bool)

(declare-fun res!2672555 () Bool)

(assert (=> b!6507646 (=> (not res!2672555) (not e!3942968))))

(assert (=> b!6507646 (= res!2672555 (isEmpty!37552 (tail!12329 s!2326)))))

(declare-fun b!6507647 () Bool)

(declare-fun res!2672556 () Bool)

(assert (=> b!6507647 (=> res!2672556 e!3942965)))

(assert (=> b!6507647 (= res!2672556 (not (isEmpty!37552 (tail!12329 s!2326))))))

(declare-fun b!6507648 () Bool)

(assert (=> b!6507648 (= e!3942969 (= lt!2393509 call!564037))))

(declare-fun b!6507649 () Bool)

(declare-fun res!2672553 () Bool)

(assert (=> b!6507649 (=> res!2672553 e!3942967)))

(assert (=> b!6507649 (= res!2672553 (not ((_ is ElementMatch!16389) r!7292)))))

(assert (=> b!6507649 (= e!3942963 e!3942967)))

(assert (= (and d!2041566 c!1193535) b!6507644))

(assert (= (and d!2041566 (not c!1193535)) b!6507641))

(assert (= (and d!2041566 c!1193533) b!6507648))

(assert (= (and d!2041566 (not c!1193533)) b!6507638))

(assert (= (and b!6507638 c!1193534) b!6507636))

(assert (= (and b!6507638 (not c!1193534)) b!6507649))

(assert (= (and b!6507649 (not res!2672553)) b!6507640))

(assert (= (and b!6507640 res!2672557) b!6507643))

(assert (= (and b!6507643 res!2672558) b!6507646))

(assert (= (and b!6507646 res!2672555) b!6507639))

(assert (= (and b!6507640 (not res!2672554)) b!6507637))

(assert (= (and b!6507637 res!2672551) b!6507642))

(assert (= (and b!6507642 (not res!2672552)) b!6507647))

(assert (= (and b!6507647 (not res!2672556)) b!6507645))

(assert (= (or b!6507648 b!6507642 b!6507643) bm!564032))

(assert (=> b!6507641 m!7294132))

(assert (=> b!6507641 m!7294132))

(declare-fun m!7294418 () Bool)

(assert (=> b!6507641 m!7294418))

(assert (=> b!6507641 m!7294136))

(assert (=> b!6507641 m!7294418))

(assert (=> b!6507641 m!7294136))

(declare-fun m!7294422 () Bool)

(assert (=> b!6507641 m!7294422))

(assert (=> b!6507639 m!7294132))

(assert (=> b!6507646 m!7294136))

(assert (=> b!6507646 m!7294136))

(declare-fun m!7294424 () Bool)

(assert (=> b!6507646 m!7294424))

(declare-fun m!7294426 () Bool)

(assert (=> b!6507644 m!7294426))

(assert (=> bm!564032 m!7294128))

(assert (=> b!6507645 m!7294132))

(assert (=> d!2041566 m!7294128))

(assert (=> d!2041566 m!7294004))

(assert (=> b!6507647 m!7294136))

(assert (=> b!6507647 m!7294136))

(assert (=> b!6507647 m!7294424))

(assert (=> b!6507198 d!2041566))

(declare-fun d!2041570 () Bool)

(assert (=> d!2041570 (= (matchR!8572 r!7292 s!2326) (matchRSpec!3490 r!7292 s!2326))))

(declare-fun lt!2393512 () Unit!158891)

(declare-fun choose!48349 (Regex!16389 List!65466) Unit!158891)

(assert (=> d!2041570 (= lt!2393512 (choose!48349 r!7292 s!2326))))

(assert (=> d!2041570 (validRegex!8125 r!7292)))

(assert (=> d!2041570 (= (mainMatchTheorem!3490 r!7292 s!2326) lt!2393512)))

(declare-fun bs!1652699 () Bool)

(assert (= bs!1652699 d!2041570))

(assert (=> bs!1652699 m!7293994))

(assert (=> bs!1652699 m!7293992))

(declare-fun m!7294436 () Bool)

(assert (=> bs!1652699 m!7294436))

(assert (=> bs!1652699 m!7294004))

(assert (=> b!6507198 d!2041570))

(declare-fun d!2041578 () Bool)

(assert (=> d!2041578 (= (isEmpty!37550 (t!379103 (exprs!6273 (h!71792 zl!343)))) ((_ is Nil!65343) (t!379103 (exprs!6273 (h!71792 zl!343)))))))

(assert (=> b!6507199 d!2041578))

(assert (=> b!6507173 d!2041486))

(declare-fun d!2041580 () Bool)

(declare-fun c!1193537 () Bool)

(assert (=> d!2041580 (= c!1193537 (isEmpty!37552 s!2326))))

(declare-fun e!3942971 () Bool)

(assert (=> d!2041580 (= (matchZipper!2401 z!1189 s!2326) e!3942971)))

(declare-fun b!6507652 () Bool)

(assert (=> b!6507652 (= e!3942971 (nullableZipper!2142 z!1189))))

(declare-fun b!6507653 () Bool)

(assert (=> b!6507653 (= e!3942971 (matchZipper!2401 (derivationStepZipper!2355 z!1189 (head!13244 s!2326)) (tail!12329 s!2326)))))

(assert (= (and d!2041580 c!1193537) b!6507652))

(assert (= (and d!2041580 (not c!1193537)) b!6507653))

(assert (=> d!2041580 m!7294128))

(declare-fun m!7294438 () Bool)

(assert (=> b!6507652 m!7294438))

(assert (=> b!6507653 m!7294132))

(assert (=> b!6507653 m!7294132))

(declare-fun m!7294440 () Bool)

(assert (=> b!6507653 m!7294440))

(assert (=> b!6507653 m!7294136))

(assert (=> b!6507653 m!7294440))

(assert (=> b!6507653 m!7294136))

(declare-fun m!7294442 () Bool)

(assert (=> b!6507653 m!7294442))

(assert (=> b!6507194 d!2041580))

(declare-fun d!2041582 () Bool)

(assert (=> d!2041582 (= (isEmpty!37549 (t!379104 zl!343)) ((_ is Nil!65344) (t!379104 zl!343)))))

(assert (=> b!6507195 d!2041582))

(assert (=> b!6507196 d!2041456))

(declare-fun bs!1652700 () Bool)

(declare-fun d!2041584 () Bool)

(assert (= bs!1652700 (and d!2041584 d!2041508)))

(declare-fun lambda!360953 () Int)

(assert (=> bs!1652700 (= lambda!360953 lambda!360924)))

(declare-fun bs!1652701 () Bool)

(assert (= bs!1652701 (and d!2041584 d!2041514)))

(assert (=> bs!1652701 (= lambda!360953 lambda!360926)))

(declare-fun bs!1652702 () Bool)

(assert (= bs!1652702 (and d!2041584 d!2041536)))

(assert (=> bs!1652702 (= lambda!360953 lambda!360944)))

(declare-fun bs!1652703 () Bool)

(assert (= bs!1652703 (and d!2041584 b!6507204)))

(assert (=> bs!1652703 (= lambda!360953 lambda!360902)))

(declare-fun bs!1652704 () Bool)

(assert (= bs!1652704 (and d!2041584 d!2041516)))

(assert (=> bs!1652704 (= lambda!360953 lambda!360936)))

(declare-fun b!6507680 () Bool)

(declare-fun e!3942993 () Bool)

(declare-fun lt!2393517 () Regex!16389)

(assert (=> b!6507680 (= e!3942993 (= lt!2393517 (head!13246 (exprs!6273 (h!71792 zl!343)))))))

(declare-fun b!6507681 () Bool)

(declare-fun isConcat!1299 (Regex!16389) Bool)

(assert (=> b!6507681 (= e!3942993 (isConcat!1299 lt!2393517))))

(declare-fun b!6507682 () Bool)

(declare-fun e!3942990 () Regex!16389)

(assert (=> b!6507682 (= e!3942990 (Concat!25234 (h!71791 (exprs!6273 (h!71792 zl!343))) (generalisedConcat!1986 (t!379103 (exprs!6273 (h!71792 zl!343))))))))

(declare-fun e!3942986 () Bool)

(assert (=> d!2041584 e!3942986))

(declare-fun res!2672564 () Bool)

(assert (=> d!2041584 (=> (not res!2672564) (not e!3942986))))

(assert (=> d!2041584 (= res!2672564 (validRegex!8125 lt!2393517))))

(declare-fun e!3942987 () Regex!16389)

(assert (=> d!2041584 (= lt!2393517 e!3942987)))

(declare-fun c!1193548 () Bool)

(declare-fun e!3942991 () Bool)

(assert (=> d!2041584 (= c!1193548 e!3942991)))

(declare-fun res!2672563 () Bool)

(assert (=> d!2041584 (=> (not res!2672563) (not e!3942991))))

(assert (=> d!2041584 (= res!2672563 ((_ is Cons!65343) (exprs!6273 (h!71792 zl!343))))))

(assert (=> d!2041584 (forall!15568 (exprs!6273 (h!71792 zl!343)) lambda!360953)))

(assert (=> d!2041584 (= (generalisedConcat!1986 (exprs!6273 (h!71792 zl!343))) lt!2393517)))

(declare-fun b!6507683 () Bool)

(assert (=> b!6507683 (= e!3942987 (h!71791 (exprs!6273 (h!71792 zl!343))))))

(declare-fun b!6507684 () Bool)

(declare-fun e!3942992 () Bool)

(assert (=> b!6507684 (= e!3942992 e!3942993)))

(declare-fun c!1193549 () Bool)

(assert (=> b!6507684 (= c!1193549 (isEmpty!37550 (tail!12331 (exprs!6273 (h!71792 zl!343)))))))

(declare-fun b!6507685 () Bool)

(assert (=> b!6507685 (= e!3942990 EmptyExpr!16389)))

(declare-fun b!6507686 () Bool)

(assert (=> b!6507686 (= e!3942986 e!3942992)))

(declare-fun c!1193551 () Bool)

(assert (=> b!6507686 (= c!1193551 (isEmpty!37550 (exprs!6273 (h!71792 zl!343))))))

(declare-fun b!6507687 () Bool)

(assert (=> b!6507687 (= e!3942987 e!3942990)))

(declare-fun c!1193550 () Bool)

(assert (=> b!6507687 (= c!1193550 ((_ is Cons!65343) (exprs!6273 (h!71792 zl!343))))))

(declare-fun b!6507688 () Bool)

(assert (=> b!6507688 (= e!3942991 (isEmpty!37550 (t!379103 (exprs!6273 (h!71792 zl!343)))))))

(declare-fun b!6507689 () Bool)

(declare-fun isEmptyExpr!1776 (Regex!16389) Bool)

(assert (=> b!6507689 (= e!3942992 (isEmptyExpr!1776 lt!2393517))))

(assert (= (and d!2041584 res!2672563) b!6507688))

(assert (= (and d!2041584 c!1193548) b!6507683))

(assert (= (and d!2041584 (not c!1193548)) b!6507687))

(assert (= (and b!6507687 c!1193550) b!6507682))

(assert (= (and b!6507687 (not c!1193550)) b!6507685))

(assert (= (and d!2041584 res!2672564) b!6507686))

(assert (= (and b!6507686 c!1193551) b!6507689))

(assert (= (and b!6507686 (not c!1193551)) b!6507684))

(assert (= (and b!6507684 c!1193549) b!6507680))

(assert (= (and b!6507684 (not c!1193549)) b!6507681))

(declare-fun m!7294444 () Bool)

(assert (=> b!6507684 m!7294444))

(assert (=> b!6507684 m!7294444))

(declare-fun m!7294446 () Bool)

(assert (=> b!6507684 m!7294446))

(declare-fun m!7294448 () Bool)

(assert (=> b!6507680 m!7294448))

(assert (=> b!6507688 m!7293926))

(declare-fun m!7294450 () Bool)

(assert (=> b!6507681 m!7294450))

(declare-fun m!7294452 () Bool)

(assert (=> b!6507686 m!7294452))

(declare-fun m!7294454 () Bool)

(assert (=> b!6507689 m!7294454))

(declare-fun m!7294456 () Bool)

(assert (=> d!2041584 m!7294456))

(declare-fun m!7294458 () Bool)

(assert (=> d!2041584 m!7294458))

(declare-fun m!7294460 () Bool)

(assert (=> b!6507682 m!7294460))

(assert (=> b!6507192 d!2041584))

(declare-fun d!2041586 () Bool)

(declare-fun nullableFct!2316 (Regex!16389) Bool)

(assert (=> d!2041586 (= (nullable!6382 (regOne!33290 (regOne!33290 r!7292))) (nullableFct!2316 (regOne!33290 (regOne!33290 r!7292))))))

(declare-fun bs!1652705 () Bool)

(assert (= bs!1652705 d!2041586))

(declare-fun m!7294462 () Bool)

(assert (=> bs!1652705 m!7294462))

(assert (=> b!6507189 d!2041586))

(declare-fun d!2041588 () Bool)

(declare-fun lt!2393522 () Regex!16389)

(assert (=> d!2041588 (validRegex!8125 lt!2393522)))

(assert (=> d!2041588 (= lt!2393522 (generalisedUnion!2233 (unfocusZipperList!1810 zl!343)))))

(assert (=> d!2041588 (= (unfocusZipper!2131 zl!343) lt!2393522)))

(declare-fun bs!1652706 () Bool)

(assert (= bs!1652706 d!2041588))

(declare-fun m!7294464 () Bool)

(assert (=> bs!1652706 m!7294464))

(assert (=> bs!1652706 m!7294008))

(assert (=> bs!1652706 m!7294008))

(assert (=> bs!1652706 m!7294010))

(assert (=> b!6507168 d!2041588))

(declare-fun d!2041590 () Bool)

(declare-fun c!1193554 () Bool)

(assert (=> d!2041590 (= c!1193554 (isEmpty!37552 (_1!36671 lt!2393395)))))

(declare-fun e!3943000 () Bool)

(assert (=> d!2041590 (= (matchZipper!2401 lt!2393399 (_1!36671 lt!2393395)) e!3943000)))

(declare-fun b!6507702 () Bool)

(assert (=> b!6507702 (= e!3943000 (nullableZipper!2142 lt!2393399))))

(declare-fun b!6507703 () Bool)

(assert (=> b!6507703 (= e!3943000 (matchZipper!2401 (derivationStepZipper!2355 lt!2393399 (head!13244 (_1!36671 lt!2393395))) (tail!12329 (_1!36671 lt!2393395))))))

(assert (= (and d!2041590 c!1193554) b!6507702))

(assert (= (and d!2041590 (not c!1193554)) b!6507703))

(declare-fun m!7294466 () Bool)

(assert (=> d!2041590 m!7294466))

(declare-fun m!7294468 () Bool)

(assert (=> b!6507702 m!7294468))

(declare-fun m!7294470 () Bool)

(assert (=> b!6507703 m!7294470))

(assert (=> b!6507703 m!7294470))

(declare-fun m!7294472 () Bool)

(assert (=> b!6507703 m!7294472))

(declare-fun m!7294474 () Bool)

(assert (=> b!6507703 m!7294474))

(assert (=> b!6507703 m!7294472))

(assert (=> b!6507703 m!7294474))

(declare-fun m!7294476 () Bool)

(assert (=> b!6507703 m!7294476))

(assert (=> b!6507169 d!2041590))

(declare-fun d!2041592 () Bool)

(declare-fun e!3943003 () Bool)

(assert (=> d!2041592 e!3943003))

(declare-fun res!2672577 () Bool)

(assert (=> d!2041592 (=> (not res!2672577) (not e!3943003))))

(declare-fun lt!2393525 () List!65468)

(declare-fun noDuplicate!2203 (List!65468) Bool)

(assert (=> d!2041592 (= res!2672577 (noDuplicate!2203 lt!2393525))))

(declare-fun choose!48352 ((InoxSet Context!11546)) List!65468)

(assert (=> d!2041592 (= lt!2393525 (choose!48352 z!1189))))

(assert (=> d!2041592 (= (toList!10173 z!1189) lt!2393525)))

(declare-fun b!6507706 () Bool)

(declare-fun content!12477 (List!65468) (InoxSet Context!11546))

(assert (=> b!6507706 (= e!3943003 (= (content!12477 lt!2393525) z!1189))))

(assert (= (and d!2041592 res!2672577) b!6507706))

(declare-fun m!7294478 () Bool)

(assert (=> d!2041592 m!7294478))

(declare-fun m!7294480 () Bool)

(assert (=> d!2041592 m!7294480))

(declare-fun m!7294482 () Bool)

(assert (=> b!6507706 m!7294482))

(assert (=> b!6507190 d!2041592))

(declare-fun b!6507716 () Bool)

(declare-fun e!3943009 () Bool)

(declare-fun lt!2393529 () Bool)

(assert (=> b!6507716 (= e!3943009 (not lt!2393529))))

(declare-fun b!6507717 () Bool)

(declare-fun e!3943013 () Bool)

(declare-fun e!3943012 () Bool)

(assert (=> b!6507717 (= e!3943013 e!3943012)))

(declare-fun res!2672583 () Bool)

(assert (=> b!6507717 (=> (not res!2672583) (not e!3943012))))

(assert (=> b!6507717 (= res!2672583 (not lt!2393529))))

(declare-fun b!6507718 () Bool)

(declare-fun e!3943015 () Bool)

(assert (=> b!6507718 (= e!3943015 e!3943009)))

(declare-fun c!1193558 () Bool)

(assert (=> b!6507718 (= c!1193558 ((_ is EmptyLang!16389) lt!2393420))))

(declare-fun b!6507719 () Bool)

(declare-fun e!3943014 () Bool)

(assert (=> b!6507719 (= e!3943014 (= (head!13244 s!2326) (c!1193399 lt!2393420)))))

(declare-fun d!2041594 () Bool)

(assert (=> d!2041594 e!3943015))

(declare-fun c!1193557 () Bool)

(assert (=> d!2041594 (= c!1193557 ((_ is EmptyExpr!16389) lt!2393420))))

(declare-fun e!3943010 () Bool)

(assert (=> d!2041594 (= lt!2393529 e!3943010)))

(declare-fun c!1193559 () Bool)

(assert (=> d!2041594 (= c!1193559 (isEmpty!37552 s!2326))))

(assert (=> d!2041594 (validRegex!8125 lt!2393420)))

(assert (=> d!2041594 (= (matchR!8572 lt!2393420 s!2326) lt!2393529)))

(declare-fun bm!564033 () Bool)

(declare-fun call!564038 () Bool)

(assert (=> bm!564033 (= call!564038 (isEmpty!37552 s!2326))))

(declare-fun b!6507720 () Bool)

(declare-fun res!2672586 () Bool)

(assert (=> b!6507720 (=> res!2672586 e!3943013)))

(assert (=> b!6507720 (= res!2672586 e!3943014)))

(declare-fun res!2672589 () Bool)

(assert (=> b!6507720 (=> (not res!2672589) (not e!3943014))))

(assert (=> b!6507720 (= res!2672589 lt!2393529)))

(declare-fun b!6507721 () Bool)

(assert (=> b!6507721 (= e!3943010 (matchR!8572 (derivativeStep!5080 lt!2393420 (head!13244 s!2326)) (tail!12329 s!2326)))))

(declare-fun b!6507722 () Bool)

(declare-fun e!3943011 () Bool)

(assert (=> b!6507722 (= e!3943012 e!3943011)))

(declare-fun res!2672584 () Bool)

(assert (=> b!6507722 (=> res!2672584 e!3943011)))

(assert (=> b!6507722 (= res!2672584 call!564038)))

(declare-fun b!6507723 () Bool)

(declare-fun res!2672590 () Bool)

(assert (=> b!6507723 (=> (not res!2672590) (not e!3943014))))

(assert (=> b!6507723 (= res!2672590 (not call!564038))))

(declare-fun b!6507724 () Bool)

(assert (=> b!6507724 (= e!3943010 (nullable!6382 lt!2393420))))

(declare-fun b!6507725 () Bool)

(assert (=> b!6507725 (= e!3943011 (not (= (head!13244 s!2326) (c!1193399 lt!2393420))))))

(declare-fun b!6507726 () Bool)

(declare-fun res!2672587 () Bool)

(assert (=> b!6507726 (=> (not res!2672587) (not e!3943014))))

(assert (=> b!6507726 (= res!2672587 (isEmpty!37552 (tail!12329 s!2326)))))

(declare-fun b!6507727 () Bool)

(declare-fun res!2672588 () Bool)

(assert (=> b!6507727 (=> res!2672588 e!3943011)))

(assert (=> b!6507727 (= res!2672588 (not (isEmpty!37552 (tail!12329 s!2326))))))

(declare-fun b!6507728 () Bool)

(assert (=> b!6507728 (= e!3943015 (= lt!2393529 call!564038))))

(declare-fun b!6507729 () Bool)

(declare-fun res!2672585 () Bool)

(assert (=> b!6507729 (=> res!2672585 e!3943013)))

(assert (=> b!6507729 (= res!2672585 (not ((_ is ElementMatch!16389) lt!2393420)))))

(assert (=> b!6507729 (= e!3943009 e!3943013)))

(assert (= (and d!2041594 c!1193559) b!6507724))

(assert (= (and d!2041594 (not c!1193559)) b!6507721))

(assert (= (and d!2041594 c!1193557) b!6507728))

(assert (= (and d!2041594 (not c!1193557)) b!6507718))

(assert (= (and b!6507718 c!1193558) b!6507716))

(assert (= (and b!6507718 (not c!1193558)) b!6507729))

(assert (= (and b!6507729 (not res!2672585)) b!6507720))

(assert (= (and b!6507720 res!2672589) b!6507723))

(assert (= (and b!6507723 res!2672590) b!6507726))

(assert (= (and b!6507726 res!2672587) b!6507719))

(assert (= (and b!6507720 (not res!2672586)) b!6507717))

(assert (= (and b!6507717 res!2672583) b!6507722))

(assert (= (and b!6507722 (not res!2672584)) b!6507727))

(assert (= (and b!6507727 (not res!2672588)) b!6507725))

(assert (= (or b!6507728 b!6507722 b!6507723) bm!564033))

(assert (=> b!6507721 m!7294132))

(assert (=> b!6507721 m!7294132))

(declare-fun m!7294484 () Bool)

(assert (=> b!6507721 m!7294484))

(assert (=> b!6507721 m!7294136))

(assert (=> b!6507721 m!7294484))

(assert (=> b!6507721 m!7294136))

(declare-fun m!7294488 () Bool)

(assert (=> b!6507721 m!7294488))

(assert (=> b!6507719 m!7294132))

(assert (=> b!6507726 m!7294136))

(assert (=> b!6507726 m!7294136))

(assert (=> b!6507726 m!7294424))

(declare-fun m!7294492 () Bool)

(assert (=> b!6507724 m!7294492))

(assert (=> bm!564033 m!7294128))

(assert (=> b!6507725 m!7294132))

(assert (=> d!2041594 m!7294128))

(declare-fun m!7294498 () Bool)

(assert (=> d!2041594 m!7294498))

(assert (=> b!6507727 m!7294136))

(assert (=> b!6507727 m!7294136))

(assert (=> b!6507727 m!7294424))

(assert (=> b!6507191 d!2041594))

(declare-fun bs!1652707 () Bool)

(declare-fun b!6507732 () Bool)

(assert (= bs!1652707 (and b!6507732 b!6507188)))

(declare-fun lambda!360954 () Int)

(assert (=> bs!1652707 (not (= lambda!360954 lambda!360898))))

(assert (=> bs!1652707 (not (= lambda!360954 lambda!360899))))

(declare-fun bs!1652708 () Bool)

(assert (= bs!1652708 (and b!6507732 b!6507561)))

(assert (=> bs!1652708 (= (and (= (reg!16718 lt!2393420) (reg!16718 r!7292)) (= lt!2393420 r!7292)) (= lambda!360954 lambda!360949))))

(declare-fun bs!1652709 () Bool)

(assert (= bs!1652709 (and b!6507732 b!6507567)))

(assert (=> bs!1652709 (not (= lambda!360954 lambda!360950))))

(assert (=> b!6507732 true))

(assert (=> b!6507732 true))

(declare-fun bs!1652710 () Bool)

(declare-fun b!6507738 () Bool)

(assert (= bs!1652710 (and b!6507738 b!6507732)))

(declare-fun lambda!360955 () Int)

(assert (=> bs!1652710 (not (= lambda!360955 lambda!360954))))

(declare-fun bs!1652711 () Bool)

(assert (= bs!1652711 (and b!6507738 b!6507188)))

(assert (=> bs!1652711 (= (and (= (regOne!33290 lt!2393420) (regOne!33290 r!7292)) (= (regTwo!33290 lt!2393420) (regTwo!33290 r!7292))) (= lambda!360955 lambda!360899))))

(declare-fun bs!1652712 () Bool)

(assert (= bs!1652712 (and b!6507738 b!6507561)))

(assert (=> bs!1652712 (not (= lambda!360955 lambda!360949))))

(declare-fun bs!1652713 () Bool)

(assert (= bs!1652713 (and b!6507738 b!6507567)))

(assert (=> bs!1652713 (= (and (= (regOne!33290 lt!2393420) (regOne!33290 r!7292)) (= (regTwo!33290 lt!2393420) (regTwo!33290 r!7292))) (= lambda!360955 lambda!360950))))

(assert (=> bs!1652711 (not (= lambda!360955 lambda!360898))))

(assert (=> b!6507738 true))

(assert (=> b!6507738 true))

(declare-fun bm!564034 () Bool)

(declare-fun call!564039 () Bool)

(assert (=> bm!564034 (= call!564039 (isEmpty!37552 s!2326))))

(declare-fun b!6507730 () Bool)

(declare-fun res!2672591 () Bool)

(declare-fun e!3943017 () Bool)

(assert (=> b!6507730 (=> res!2672591 e!3943017)))

(assert (=> b!6507730 (= res!2672591 call!564039)))

(declare-fun e!3943022 () Bool)

(assert (=> b!6507730 (= e!3943022 e!3943017)))

(declare-fun b!6507731 () Bool)

(declare-fun e!3943021 () Bool)

(assert (=> b!6507731 (= e!3943021 (= s!2326 (Cons!65342 (c!1193399 lt!2393420) Nil!65342)))))

(declare-fun bm!564035 () Bool)

(declare-fun c!1193561 () Bool)

(declare-fun call!564040 () Bool)

(assert (=> bm!564035 (= call!564040 (Exists!3459 (ite c!1193561 lambda!360954 lambda!360955)))))

(assert (=> b!6507732 (= e!3943017 call!564040)))

(declare-fun b!6507733 () Bool)

(declare-fun e!3943020 () Bool)

(assert (=> b!6507733 (= e!3943020 (matchRSpec!3490 (regTwo!33291 lt!2393420) s!2326))))

(declare-fun b!6507734 () Bool)

(declare-fun e!3943019 () Bool)

(assert (=> b!6507734 (= e!3943019 e!3943022)))

(assert (=> b!6507734 (= c!1193561 ((_ is Star!16389) lt!2393420))))

(declare-fun b!6507735 () Bool)

(declare-fun c!1193563 () Bool)

(assert (=> b!6507735 (= c!1193563 ((_ is ElementMatch!16389) lt!2393420))))

(declare-fun e!3943018 () Bool)

(assert (=> b!6507735 (= e!3943018 e!3943021)))

(declare-fun b!6507736 () Bool)

(declare-fun c!1193562 () Bool)

(assert (=> b!6507736 (= c!1193562 ((_ is Union!16389) lt!2393420))))

(assert (=> b!6507736 (= e!3943021 e!3943019)))

(declare-fun d!2041596 () Bool)

(declare-fun c!1193560 () Bool)

(assert (=> d!2041596 (= c!1193560 ((_ is EmptyExpr!16389) lt!2393420))))

(declare-fun e!3943016 () Bool)

(assert (=> d!2041596 (= (matchRSpec!3490 lt!2393420 s!2326) e!3943016)))

(declare-fun b!6507737 () Bool)

(assert (=> b!6507737 (= e!3943019 e!3943020)))

(declare-fun res!2672593 () Bool)

(assert (=> b!6507737 (= res!2672593 (matchRSpec!3490 (regOne!33291 lt!2393420) s!2326))))

(assert (=> b!6507737 (=> res!2672593 e!3943020)))

(assert (=> b!6507738 (= e!3943022 call!564040)))

(declare-fun b!6507739 () Bool)

(assert (=> b!6507739 (= e!3943016 call!564039)))

(declare-fun b!6507740 () Bool)

(assert (=> b!6507740 (= e!3943016 e!3943018)))

(declare-fun res!2672592 () Bool)

(assert (=> b!6507740 (= res!2672592 (not ((_ is EmptyLang!16389) lt!2393420)))))

(assert (=> b!6507740 (=> (not res!2672592) (not e!3943018))))

(assert (= (and d!2041596 c!1193560) b!6507739))

(assert (= (and d!2041596 (not c!1193560)) b!6507740))

(assert (= (and b!6507740 res!2672592) b!6507735))

(assert (= (and b!6507735 c!1193563) b!6507731))

(assert (= (and b!6507735 (not c!1193563)) b!6507736))

(assert (= (and b!6507736 c!1193562) b!6507737))

(assert (= (and b!6507736 (not c!1193562)) b!6507734))

(assert (= (and b!6507737 (not res!2672593)) b!6507733))

(assert (= (and b!6507734 c!1193561) b!6507730))

(assert (= (and b!6507734 (not c!1193561)) b!6507738))

(assert (= (and b!6507730 (not res!2672591)) b!6507732))

(assert (= (or b!6507732 b!6507738) bm!564035))

(assert (= (or b!6507739 b!6507730) bm!564034))

(assert (=> bm!564034 m!7294128))

(declare-fun m!7294510 () Bool)

(assert (=> bm!564035 m!7294510))

(declare-fun m!7294512 () Bool)

(assert (=> b!6507733 m!7294512))

(declare-fun m!7294514 () Bool)

(assert (=> b!6507737 m!7294514))

(assert (=> b!6507191 d!2041596))

(declare-fun d!2041600 () Bool)

(assert (=> d!2041600 (= (matchR!8572 lt!2393420 s!2326) (matchRSpec!3490 lt!2393420 s!2326))))

(declare-fun lt!2393532 () Unit!158891)

(assert (=> d!2041600 (= lt!2393532 (choose!48349 lt!2393420 s!2326))))

(assert (=> d!2041600 (validRegex!8125 lt!2393420)))

(assert (=> d!2041600 (= (mainMatchTheorem!3490 lt!2393420 s!2326) lt!2393532)))

(declare-fun bs!1652714 () Bool)

(assert (= bs!1652714 d!2041600))

(assert (=> bs!1652714 m!7294026))

(assert (=> bs!1652714 m!7294028))

(declare-fun m!7294516 () Bool)

(assert (=> bs!1652714 m!7294516))

(assert (=> bs!1652714 m!7294498))

(assert (=> b!6507191 d!2041600))

(declare-fun bs!1652715 () Bool)

(declare-fun d!2041602 () Bool)

(assert (= bs!1652715 (and d!2041602 d!2041508)))

(declare-fun lambda!360956 () Int)

(assert (=> bs!1652715 (= lambda!360956 lambda!360924)))

(declare-fun bs!1652716 () Bool)

(assert (= bs!1652716 (and d!2041602 d!2041584)))

(assert (=> bs!1652716 (= lambda!360956 lambda!360953)))

(declare-fun bs!1652717 () Bool)

(assert (= bs!1652717 (and d!2041602 d!2041514)))

(assert (=> bs!1652717 (= lambda!360956 lambda!360926)))

(declare-fun bs!1652718 () Bool)

(assert (= bs!1652718 (and d!2041602 d!2041536)))

(assert (=> bs!1652718 (= lambda!360956 lambda!360944)))

(declare-fun bs!1652719 () Bool)

(assert (= bs!1652719 (and d!2041602 b!6507204)))

(assert (=> bs!1652719 (= lambda!360956 lambda!360902)))

(declare-fun bs!1652720 () Bool)

(assert (= bs!1652720 (and d!2041602 d!2041516)))

(assert (=> bs!1652720 (= lambda!360956 lambda!360936)))

(assert (=> d!2041602 (= (inv!84219 setElem!44389) (forall!15568 (exprs!6273 setElem!44389) lambda!360956))))

(declare-fun bs!1652721 () Bool)

(assert (= bs!1652721 d!2041602))

(declare-fun m!7294518 () Bool)

(assert (=> bs!1652721 m!7294518))

(assert (=> setNonEmpty!44389 d!2041602))

(declare-fun d!2041604 () Bool)

(declare-fun lt!2393533 () Regex!16389)

(assert (=> d!2041604 (validRegex!8125 lt!2393533)))

(assert (=> d!2041604 (= lt!2393533 (generalisedUnion!2233 (unfocusZipperList!1810 (Cons!65344 lt!2393423 Nil!65344))))))

(assert (=> d!2041604 (= (unfocusZipper!2131 (Cons!65344 lt!2393423 Nil!65344)) lt!2393533)))

(declare-fun bs!1652722 () Bool)

(assert (= bs!1652722 d!2041604))

(declare-fun m!7294520 () Bool)

(assert (=> bs!1652722 m!7294520))

(declare-fun m!7294522 () Bool)

(assert (=> bs!1652722 m!7294522))

(assert (=> bs!1652722 m!7294522))

(declare-fun m!7294524 () Bool)

(assert (=> bs!1652722 m!7294524))

(assert (=> b!6507207 d!2041604))

(declare-fun d!2041606 () Bool)

(declare-fun dynLambda!25962 (Int Context!11546) (InoxSet Context!11546))

(assert (=> d!2041606 (= (flatMap!1894 lt!2393417 lambda!360900) (dynLambda!25962 lambda!360900 lt!2393400))))

(declare-fun lt!2393537 () Unit!158891)

(declare-fun choose!48355 ((InoxSet Context!11546) Context!11546 Int) Unit!158891)

(assert (=> d!2041606 (= lt!2393537 (choose!48355 lt!2393417 lt!2393400 lambda!360900))))

(assert (=> d!2041606 (= lt!2393417 (store ((as const (Array Context!11546 Bool)) false) lt!2393400 true))))

(assert (=> d!2041606 (= (lemmaFlatMapOnSingletonSet!1420 lt!2393417 lt!2393400 lambda!360900) lt!2393537)))

(declare-fun b_lambda!246367 () Bool)

(assert (=> (not b_lambda!246367) (not d!2041606)))

(declare-fun bs!1652724 () Bool)

(assert (= bs!1652724 d!2041606))

(assert (=> bs!1652724 m!7293990))

(declare-fun m!7294542 () Bool)

(assert (=> bs!1652724 m!7294542))

(declare-fun m!7294544 () Bool)

(assert (=> bs!1652724 m!7294544))

(assert (=> bs!1652724 m!7293988))

(assert (=> b!6507207 d!2041606))

(declare-fun d!2041614 () Bool)

(assert (=> d!2041614 (= (flatMap!1894 lt!2393399 lambda!360900) (dynLambda!25962 lambda!360900 lt!2393423))))

(declare-fun lt!2393538 () Unit!158891)

(assert (=> d!2041614 (= lt!2393538 (choose!48355 lt!2393399 lt!2393423 lambda!360900))))

(assert (=> d!2041614 (= lt!2393399 (store ((as const (Array Context!11546 Bool)) false) lt!2393423 true))))

(assert (=> d!2041614 (= (lemmaFlatMapOnSingletonSet!1420 lt!2393399 lt!2393423 lambda!360900) lt!2393538)))

(declare-fun b_lambda!246369 () Bool)

(assert (=> (not b_lambda!246369) (not d!2041614)))

(declare-fun bs!1652725 () Bool)

(assert (= bs!1652725 d!2041614))

(assert (=> bs!1652725 m!7293984))

(declare-fun m!7294546 () Bool)

(assert (=> bs!1652725 m!7294546))

(declare-fun m!7294548 () Bool)

(assert (=> bs!1652725 m!7294548))

(assert (=> bs!1652725 m!7293980))

(assert (=> b!6507207 d!2041614))

(declare-fun bm!564038 () Bool)

(declare-fun call!564043 () (InoxSet Context!11546))

(assert (=> bm!564038 (= call!564043 (derivationStepZipperDown!1637 (h!71791 (exprs!6273 lt!2393400)) (Context!11547 (t!379103 (exprs!6273 lt!2393400))) (h!71790 s!2326)))))

(declare-fun b!6507763 () Bool)

(declare-fun e!3943036 () (InoxSet Context!11546))

(assert (=> b!6507763 (= e!3943036 ((as const (Array Context!11546 Bool)) false))))

(declare-fun d!2041616 () Bool)

(declare-fun c!1193571 () Bool)

(declare-fun e!3943037 () Bool)

(assert (=> d!2041616 (= c!1193571 e!3943037)))

(declare-fun res!2672602 () Bool)

(assert (=> d!2041616 (=> (not res!2672602) (not e!3943037))))

(assert (=> d!2041616 (= res!2672602 ((_ is Cons!65343) (exprs!6273 lt!2393400)))))

(declare-fun e!3943035 () (InoxSet Context!11546))

(assert (=> d!2041616 (= (derivationStepZipperUp!1563 lt!2393400 (h!71790 s!2326)) e!3943035)))

(declare-fun b!6507764 () Bool)

(assert (=> b!6507764 (= e!3943037 (nullable!6382 (h!71791 (exprs!6273 lt!2393400))))))

(declare-fun b!6507765 () Bool)

(assert (=> b!6507765 (= e!3943036 call!564043)))

(declare-fun b!6507766 () Bool)

(assert (=> b!6507766 (= e!3943035 e!3943036)))

(declare-fun c!1193572 () Bool)

(assert (=> b!6507766 (= c!1193572 ((_ is Cons!65343) (exprs!6273 lt!2393400)))))

(declare-fun b!6507767 () Bool)

(assert (=> b!6507767 (= e!3943035 ((_ map or) call!564043 (derivationStepZipperUp!1563 (Context!11547 (t!379103 (exprs!6273 lt!2393400))) (h!71790 s!2326))))))

(assert (= (and d!2041616 res!2672602) b!6507764))

(assert (= (and d!2041616 c!1193571) b!6507767))

(assert (= (and d!2041616 (not c!1193571)) b!6507766))

(assert (= (and b!6507766 c!1193572) b!6507765))

(assert (= (and b!6507766 (not c!1193572)) b!6507763))

(assert (= (or b!6507767 b!6507765) bm!564038))

(declare-fun m!7294550 () Bool)

(assert (=> bm!564038 m!7294550))

(declare-fun m!7294552 () Bool)

(assert (=> b!6507764 m!7294552))

(declare-fun m!7294554 () Bool)

(assert (=> b!6507767 m!7294554))

(assert (=> b!6507207 d!2041616))

(declare-fun d!2041618 () Bool)

(declare-fun choose!48356 ((InoxSet Context!11546) Int) (InoxSet Context!11546))

(assert (=> d!2041618 (= (flatMap!1894 lt!2393417 lambda!360900) (choose!48356 lt!2393417 lambda!360900))))

(declare-fun bs!1652727 () Bool)

(assert (= bs!1652727 d!2041618))

(declare-fun m!7294564 () Bool)

(assert (=> bs!1652727 m!7294564))

(assert (=> b!6507207 d!2041618))

(declare-fun d!2041622 () Bool)

(assert (=> d!2041622 (= (flatMap!1894 lt!2393399 lambda!360900) (choose!48356 lt!2393399 lambda!360900))))

(declare-fun bs!1652728 () Bool)

(assert (= bs!1652728 d!2041622))

(declare-fun m!7294566 () Bool)

(assert (=> bs!1652728 m!7294566))

(assert (=> b!6507207 d!2041622))

(declare-fun bm!564039 () Bool)

(declare-fun call!564044 () (InoxSet Context!11546))

(assert (=> bm!564039 (= call!564044 (derivationStepZipperDown!1637 (h!71791 (exprs!6273 lt!2393423)) (Context!11547 (t!379103 (exprs!6273 lt!2393423))) (h!71790 s!2326)))))

(declare-fun b!6507768 () Bool)

(declare-fun e!3943039 () (InoxSet Context!11546))

(assert (=> b!6507768 (= e!3943039 ((as const (Array Context!11546 Bool)) false))))

(declare-fun d!2041624 () Bool)

(declare-fun c!1193573 () Bool)

(declare-fun e!3943040 () Bool)

(assert (=> d!2041624 (= c!1193573 e!3943040)))

(declare-fun res!2672603 () Bool)

(assert (=> d!2041624 (=> (not res!2672603) (not e!3943040))))

(assert (=> d!2041624 (= res!2672603 ((_ is Cons!65343) (exprs!6273 lt!2393423)))))

(declare-fun e!3943038 () (InoxSet Context!11546))

(assert (=> d!2041624 (= (derivationStepZipperUp!1563 lt!2393423 (h!71790 s!2326)) e!3943038)))

(declare-fun b!6507769 () Bool)

(assert (=> b!6507769 (= e!3943040 (nullable!6382 (h!71791 (exprs!6273 lt!2393423))))))

(declare-fun b!6507770 () Bool)

(assert (=> b!6507770 (= e!3943039 call!564044)))

(declare-fun b!6507771 () Bool)

(assert (=> b!6507771 (= e!3943038 e!3943039)))

(declare-fun c!1193574 () Bool)

(assert (=> b!6507771 (= c!1193574 ((_ is Cons!65343) (exprs!6273 lt!2393423)))))

(declare-fun b!6507772 () Bool)

(assert (=> b!6507772 (= e!3943038 ((_ map or) call!564044 (derivationStepZipperUp!1563 (Context!11547 (t!379103 (exprs!6273 lt!2393423))) (h!71790 s!2326))))))

(assert (= (and d!2041624 res!2672603) b!6507769))

(assert (= (and d!2041624 c!1193573) b!6507772))

(assert (= (and d!2041624 (not c!1193573)) b!6507771))

(assert (= (and b!6507771 c!1193574) b!6507770))

(assert (= (and b!6507771 (not c!1193574)) b!6507768))

(assert (= (or b!6507772 b!6507770) bm!564039))

(declare-fun m!7294568 () Bool)

(assert (=> bm!564039 m!7294568))

(declare-fun m!7294570 () Bool)

(assert (=> b!6507769 m!7294570))

(declare-fun m!7294572 () Bool)

(assert (=> b!6507772 m!7294572))

(assert (=> b!6507207 d!2041624))

(declare-fun b!6507829 () Bool)

(declare-fun e!3943078 () Bool)

(declare-fun lt!2393560 () Option!16280)

(assert (=> b!6507829 (= e!3943078 (= (++!14480 (_1!36671 (get!22665 lt!2393560)) (_2!36671 (get!22665 lt!2393560))) s!2326))))

(declare-fun b!6507830 () Bool)

(declare-fun e!3943077 () Option!16280)

(assert (=> b!6507830 (= e!3943077 None!16279)))

(declare-fun b!6507831 () Bool)

(declare-fun e!3943074 () Bool)

(assert (=> b!6507831 (= e!3943074 (matchR!8572 (regTwo!33290 r!7292) s!2326))))

(declare-fun b!6507832 () Bool)

(declare-fun lt!2393558 () Unit!158891)

(declare-fun lt!2393559 () Unit!158891)

(assert (=> b!6507832 (= lt!2393558 lt!2393559)))

(assert (=> b!6507832 (= (++!14480 (++!14480 Nil!65342 (Cons!65342 (h!71790 s!2326) Nil!65342)) (t!379102 s!2326)) s!2326)))

(assert (=> b!6507832 (= lt!2393559 (lemmaMoveElementToOtherListKeepsConcatEq!2540 Nil!65342 (h!71790 s!2326) (t!379102 s!2326) s!2326))))

(assert (=> b!6507832 (= e!3943077 (findConcatSeparation!2694 (regOne!33290 r!7292) (regTwo!33290 r!7292) (++!14480 Nil!65342 (Cons!65342 (h!71790 s!2326) Nil!65342)) (t!379102 s!2326) s!2326))))

(declare-fun b!6507833 () Bool)

(declare-fun e!3943076 () Option!16280)

(assert (=> b!6507833 (= e!3943076 e!3943077)))

(declare-fun c!1193595 () Bool)

(assert (=> b!6507833 (= c!1193595 ((_ is Nil!65342) s!2326))))

(declare-fun b!6507834 () Bool)

(declare-fun res!2672624 () Bool)

(assert (=> b!6507834 (=> (not res!2672624) (not e!3943078))))

(assert (=> b!6507834 (= res!2672624 (matchR!8572 (regOne!33290 r!7292) (_1!36671 (get!22665 lt!2393560))))))

(declare-fun b!6507835 () Bool)

(declare-fun res!2672627 () Bool)

(assert (=> b!6507835 (=> (not res!2672627) (not e!3943078))))

(assert (=> b!6507835 (= res!2672627 (matchR!8572 (regTwo!33290 r!7292) (_2!36671 (get!22665 lt!2393560))))))

(declare-fun d!2041626 () Bool)

(declare-fun e!3943075 () Bool)

(assert (=> d!2041626 e!3943075))

(declare-fun res!2672626 () Bool)

(assert (=> d!2041626 (=> res!2672626 e!3943075)))

(assert (=> d!2041626 (= res!2672626 e!3943078)))

(declare-fun res!2672625 () Bool)

(assert (=> d!2041626 (=> (not res!2672625) (not e!3943078))))

(assert (=> d!2041626 (= res!2672625 (isDefined!12983 lt!2393560))))

(assert (=> d!2041626 (= lt!2393560 e!3943076)))

(declare-fun c!1193594 () Bool)

(assert (=> d!2041626 (= c!1193594 e!3943074)))

(declare-fun res!2672628 () Bool)

(assert (=> d!2041626 (=> (not res!2672628) (not e!3943074))))

(assert (=> d!2041626 (= res!2672628 (matchR!8572 (regOne!33290 r!7292) Nil!65342))))

(assert (=> d!2041626 (validRegex!8125 (regOne!33290 r!7292))))

(assert (=> d!2041626 (= (findConcatSeparation!2694 (regOne!33290 r!7292) (regTwo!33290 r!7292) Nil!65342 s!2326 s!2326) lt!2393560)))

(declare-fun b!6507836 () Bool)

(assert (=> b!6507836 (= e!3943076 (Some!16279 (tuple2!66737 Nil!65342 s!2326)))))

(declare-fun b!6507837 () Bool)

(assert (=> b!6507837 (= e!3943075 (not (isDefined!12983 lt!2393560)))))

(assert (= (and d!2041626 res!2672628) b!6507831))

(assert (= (and d!2041626 c!1193594) b!6507836))

(assert (= (and d!2041626 (not c!1193594)) b!6507833))

(assert (= (and b!6507833 c!1193595) b!6507830))

(assert (= (and b!6507833 (not c!1193595)) b!6507832))

(assert (= (and d!2041626 res!2672625) b!6507834))

(assert (= (and b!6507834 res!2672624) b!6507835))

(assert (= (and b!6507835 res!2672627) b!6507829))

(assert (= (and d!2041626 (not res!2672626)) b!6507837))

(assert (=> b!6507832 m!7294098))

(assert (=> b!6507832 m!7294098))

(assert (=> b!6507832 m!7294100))

(assert (=> b!6507832 m!7294102))

(assert (=> b!6507832 m!7294098))

(declare-fun m!7294648 () Bool)

(assert (=> b!6507832 m!7294648))

(declare-fun m!7294650 () Bool)

(assert (=> b!6507829 m!7294650))

(declare-fun m!7294652 () Bool)

(assert (=> b!6507829 m!7294652))

(assert (=> b!6507835 m!7294650))

(declare-fun m!7294654 () Bool)

(assert (=> b!6507835 m!7294654))

(assert (=> b!6507834 m!7294650))

(declare-fun m!7294656 () Bool)

(assert (=> b!6507834 m!7294656))

(declare-fun m!7294658 () Bool)

(assert (=> b!6507837 m!7294658))

(declare-fun m!7294660 () Bool)

(assert (=> b!6507831 m!7294660))

(assert (=> d!2041626 m!7294658))

(declare-fun m!7294662 () Bool)

(assert (=> d!2041626 m!7294662))

(declare-fun m!7294664 () Bool)

(assert (=> d!2041626 m!7294664))

(assert (=> b!6507188 d!2041626))

(declare-fun d!2041664 () Bool)

(declare-fun choose!48357 (Int) Bool)

(assert (=> d!2041664 (= (Exists!3459 lambda!360898) (choose!48357 lambda!360898))))

(declare-fun bs!1652745 () Bool)

(assert (= bs!1652745 d!2041664))

(declare-fun m!7294666 () Bool)

(assert (=> bs!1652745 m!7294666))

(assert (=> b!6507188 d!2041664))

(declare-fun d!2041666 () Bool)

(assert (=> d!2041666 (= (Exists!3459 lambda!360899) (choose!48357 lambda!360899))))

(declare-fun bs!1652746 () Bool)

(assert (= bs!1652746 d!2041666))

(declare-fun m!7294668 () Bool)

(assert (=> bs!1652746 m!7294668))

(assert (=> b!6507188 d!2041666))

(declare-fun bs!1652747 () Bool)

(declare-fun d!2041668 () Bool)

(assert (= bs!1652747 (and d!2041668 b!6507732)))

(declare-fun lambda!360963 () Int)

(assert (=> bs!1652747 (not (= lambda!360963 lambda!360954))))

(declare-fun bs!1652748 () Bool)

(assert (= bs!1652748 (and d!2041668 b!6507188)))

(assert (=> bs!1652748 (not (= lambda!360963 lambda!360899))))

(declare-fun bs!1652749 () Bool)

(assert (= bs!1652749 (and d!2041668 b!6507738)))

(assert (=> bs!1652749 (not (= lambda!360963 lambda!360955))))

(declare-fun bs!1652750 () Bool)

(assert (= bs!1652750 (and d!2041668 b!6507561)))

(assert (=> bs!1652750 (not (= lambda!360963 lambda!360949))))

(declare-fun bs!1652751 () Bool)

(assert (= bs!1652751 (and d!2041668 b!6507567)))

(assert (=> bs!1652751 (not (= lambda!360963 lambda!360950))))

(assert (=> bs!1652748 (= lambda!360963 lambda!360898)))

(assert (=> d!2041668 true))

(assert (=> d!2041668 true))

(assert (=> d!2041668 true))

(assert (=> d!2041668 (= (isDefined!12983 (findConcatSeparation!2694 (regOne!33290 r!7292) (regTwo!33290 r!7292) Nil!65342 s!2326 s!2326)) (Exists!3459 lambda!360963))))

(declare-fun lt!2393565 () Unit!158891)

(declare-fun choose!48359 (Regex!16389 Regex!16389 List!65466) Unit!158891)

(assert (=> d!2041668 (= lt!2393565 (choose!48359 (regOne!33290 r!7292) (regTwo!33290 r!7292) s!2326))))

(assert (=> d!2041668 (validRegex!8125 (regOne!33290 r!7292))))

(assert (=> d!2041668 (= (lemmaFindConcatSeparationEquivalentToExists!2458 (regOne!33290 r!7292) (regTwo!33290 r!7292) s!2326) lt!2393565)))

(declare-fun bs!1652752 () Bool)

(assert (= bs!1652752 d!2041668))

(assert (=> bs!1652752 m!7293962))

(declare-fun m!7294670 () Bool)

(assert (=> bs!1652752 m!7294670))

(assert (=> bs!1652752 m!7293962))

(assert (=> bs!1652752 m!7293964))

(assert (=> bs!1652752 m!7294664))

(declare-fun m!7294672 () Bool)

(assert (=> bs!1652752 m!7294672))

(assert (=> b!6507188 d!2041668))

(declare-fun bs!1652753 () Bool)

(declare-fun d!2041670 () Bool)

(assert (= bs!1652753 (and d!2041670 b!6507732)))

(declare-fun lambda!360972 () Int)

(assert (=> bs!1652753 (not (= lambda!360972 lambda!360954))))

(declare-fun bs!1652754 () Bool)

(assert (= bs!1652754 (and d!2041670 d!2041668)))

(assert (=> bs!1652754 (= lambda!360972 lambda!360963)))

(declare-fun bs!1652755 () Bool)

(assert (= bs!1652755 (and d!2041670 b!6507188)))

(assert (=> bs!1652755 (not (= lambda!360972 lambda!360899))))

(declare-fun bs!1652756 () Bool)

(assert (= bs!1652756 (and d!2041670 b!6507738)))

(assert (=> bs!1652756 (not (= lambda!360972 lambda!360955))))

(declare-fun bs!1652757 () Bool)

(assert (= bs!1652757 (and d!2041670 b!6507561)))

(assert (=> bs!1652757 (not (= lambda!360972 lambda!360949))))

(declare-fun bs!1652758 () Bool)

(assert (= bs!1652758 (and d!2041670 b!6507567)))

(assert (=> bs!1652758 (not (= lambda!360972 lambda!360950))))

(assert (=> bs!1652755 (= lambda!360972 lambda!360898)))

(assert (=> d!2041670 true))

(assert (=> d!2041670 true))

(assert (=> d!2041670 true))

(declare-fun lambda!360973 () Int)

(assert (=> bs!1652753 (not (= lambda!360973 lambda!360954))))

(assert (=> bs!1652754 (not (= lambda!360973 lambda!360963))))

(assert (=> bs!1652755 (= lambda!360973 lambda!360899)))

(assert (=> bs!1652756 (= (and (= (regOne!33290 r!7292) (regOne!33290 lt!2393420)) (= (regTwo!33290 r!7292) (regTwo!33290 lt!2393420))) (= lambda!360973 lambda!360955))))

(declare-fun bs!1652759 () Bool)

(assert (= bs!1652759 d!2041670))

(assert (=> bs!1652759 (not (= lambda!360973 lambda!360972))))

(assert (=> bs!1652757 (not (= lambda!360973 lambda!360949))))

(assert (=> bs!1652758 (= lambda!360973 lambda!360950)))

(assert (=> bs!1652755 (not (= lambda!360973 lambda!360898))))

(assert (=> d!2041670 true))

(assert (=> d!2041670 true))

(assert (=> d!2041670 true))

(assert (=> d!2041670 (= (Exists!3459 lambda!360972) (Exists!3459 lambda!360973))))

(declare-fun lt!2393569 () Unit!158891)

(declare-fun choose!48360 (Regex!16389 Regex!16389 List!65466) Unit!158891)

(assert (=> d!2041670 (= lt!2393569 (choose!48360 (regOne!33290 r!7292) (regTwo!33290 r!7292) s!2326))))

(assert (=> d!2041670 (validRegex!8125 (regOne!33290 r!7292))))

(assert (=> d!2041670 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1996 (regOne!33290 r!7292) (regTwo!33290 r!7292) s!2326) lt!2393569)))

(declare-fun m!7294684 () Bool)

(assert (=> bs!1652759 m!7294684))

(declare-fun m!7294686 () Bool)

(assert (=> bs!1652759 m!7294686))

(declare-fun m!7294688 () Bool)

(assert (=> bs!1652759 m!7294688))

(assert (=> bs!1652759 m!7294664))

(assert (=> b!6507188 d!2041670))

(declare-fun d!2041674 () Bool)

(assert (=> d!2041674 (= (isDefined!12983 (findConcatSeparation!2694 (regOne!33290 r!7292) (regTwo!33290 r!7292) Nil!65342 s!2326 s!2326)) (not (isEmpty!37553 (findConcatSeparation!2694 (regOne!33290 r!7292) (regTwo!33290 r!7292) Nil!65342 s!2326 s!2326))))))

(declare-fun bs!1652760 () Bool)

(assert (= bs!1652760 d!2041674))

(assert (=> bs!1652760 m!7293962))

(declare-fun m!7294690 () Bool)

(assert (=> bs!1652760 m!7294690))

(assert (=> b!6507188 d!2041674))

(declare-fun d!2041676 () Bool)

(assert (=> d!2041676 (= (flatMap!1894 lt!2393422 lambda!360900) (choose!48356 lt!2393422 lambda!360900))))

(declare-fun bs!1652761 () Bool)

(assert (= bs!1652761 d!2041676))

(declare-fun m!7294692 () Bool)

(assert (=> bs!1652761 m!7294692))

(assert (=> b!6507205 d!2041676))

(declare-fun bm!564056 () Bool)

(declare-fun call!564061 () (InoxSet Context!11546))

(assert (=> bm!564056 (= call!564061 (derivationStepZipperDown!1637 (h!71791 (exprs!6273 lt!2393402)) (Context!11547 (t!379103 (exprs!6273 lt!2393402))) (h!71790 s!2326)))))

(declare-fun b!6507924 () Bool)

(declare-fun e!3943125 () (InoxSet Context!11546))

(assert (=> b!6507924 (= e!3943125 ((as const (Array Context!11546 Bool)) false))))

(declare-fun d!2041678 () Bool)

(declare-fun c!1193613 () Bool)

(declare-fun e!3943126 () Bool)

(assert (=> d!2041678 (= c!1193613 e!3943126)))

(declare-fun res!2672681 () Bool)

(assert (=> d!2041678 (=> (not res!2672681) (not e!3943126))))

(assert (=> d!2041678 (= res!2672681 ((_ is Cons!65343) (exprs!6273 lt!2393402)))))

(declare-fun e!3943124 () (InoxSet Context!11546))

(assert (=> d!2041678 (= (derivationStepZipperUp!1563 lt!2393402 (h!71790 s!2326)) e!3943124)))

(declare-fun b!6507925 () Bool)

(assert (=> b!6507925 (= e!3943126 (nullable!6382 (h!71791 (exprs!6273 lt!2393402))))))

(declare-fun b!6507926 () Bool)

(assert (=> b!6507926 (= e!3943125 call!564061)))

(declare-fun b!6507927 () Bool)

(assert (=> b!6507927 (= e!3943124 e!3943125)))

(declare-fun c!1193614 () Bool)

(assert (=> b!6507927 (= c!1193614 ((_ is Cons!65343) (exprs!6273 lt!2393402)))))

(declare-fun b!6507928 () Bool)

(assert (=> b!6507928 (= e!3943124 ((_ map or) call!564061 (derivationStepZipperUp!1563 (Context!11547 (t!379103 (exprs!6273 lt!2393402))) (h!71790 s!2326))))))

(assert (= (and d!2041678 res!2672681) b!6507925))

(assert (= (and d!2041678 c!1193613) b!6507928))

(assert (= (and d!2041678 (not c!1193613)) b!6507927))

(assert (= (and b!6507927 c!1193614) b!6507926))

(assert (= (and b!6507927 (not c!1193614)) b!6507924))

(assert (= (or b!6507928 b!6507926) bm!564056))

(declare-fun m!7294694 () Bool)

(assert (=> bm!564056 m!7294694))

(declare-fun m!7294696 () Bool)

(assert (=> b!6507925 m!7294696))

(declare-fun m!7294698 () Bool)

(assert (=> b!6507928 m!7294698))

(assert (=> b!6507205 d!2041678))

(declare-fun d!2041680 () Bool)

(assert (=> d!2041680 (= (flatMap!1894 lt!2393422 lambda!360900) (dynLambda!25962 lambda!360900 lt!2393402))))

(declare-fun lt!2393570 () Unit!158891)

(assert (=> d!2041680 (= lt!2393570 (choose!48355 lt!2393422 lt!2393402 lambda!360900))))

(assert (=> d!2041680 (= lt!2393422 (store ((as const (Array Context!11546 Bool)) false) lt!2393402 true))))

(assert (=> d!2041680 (= (lemmaFlatMapOnSingletonSet!1420 lt!2393422 lt!2393402 lambda!360900) lt!2393570)))

(declare-fun b_lambda!246377 () Bool)

(assert (=> (not b_lambda!246377) (not d!2041680)))

(declare-fun bs!1652762 () Bool)

(assert (= bs!1652762 d!2041680))

(assert (=> bs!1652762 m!7294022))

(declare-fun m!7294700 () Bool)

(assert (=> bs!1652762 m!7294700))

(declare-fun m!7294702 () Bool)

(assert (=> bs!1652762 m!7294702))

(assert (=> bs!1652762 m!7294020))

(assert (=> b!6507205 d!2041680))

(declare-fun bs!1652766 () Bool)

(declare-fun d!2041682 () Bool)

(assert (= bs!1652766 (and d!2041682 b!6507164)))

(declare-fun lambda!360977 () Int)

(assert (=> bs!1652766 (= lambda!360977 lambda!360900)))

(assert (=> d!2041682 true))

(assert (=> d!2041682 (= (derivationStepZipper!2355 lt!2393422 (h!71790 s!2326)) (flatMap!1894 lt!2393422 lambda!360977))))

(declare-fun bs!1652767 () Bool)

(assert (= bs!1652767 d!2041682))

(declare-fun m!7294704 () Bool)

(assert (=> bs!1652767 m!7294704))

(assert (=> b!6507205 d!2041682))

(declare-fun b!6507991 () Bool)

(declare-fun e!3943161 () (InoxSet Context!11546))

(declare-fun call!564083 () (InoxSet Context!11546))

(declare-fun call!564079 () (InoxSet Context!11546))

(assert (=> b!6507991 (= e!3943161 ((_ map or) call!564083 call!564079))))

(declare-fun bm!564074 () Bool)

(declare-fun call!564082 () (InoxSet Context!11546))

(assert (=> bm!564074 (= call!564082 call!564079)))

(declare-fun b!6507992 () Bool)

(declare-fun e!3943162 () Bool)

(assert (=> b!6507992 (= e!3943162 (nullable!6382 (regOne!33290 (h!71791 (exprs!6273 (h!71792 zl!343))))))))

(declare-fun call!564084 () List!65467)

(declare-fun bm!564075 () Bool)

(declare-fun c!1193642 () Bool)

(assert (=> bm!564075 (= call!564083 (derivationStepZipperDown!1637 (ite c!1193642 (regOne!33291 (h!71791 (exprs!6273 (h!71792 zl!343)))) (regOne!33290 (h!71791 (exprs!6273 (h!71792 zl!343))))) (ite c!1193642 lt!2393385 (Context!11547 call!564084)) (h!71790 s!2326)))))

(declare-fun d!2041684 () Bool)

(declare-fun c!1193641 () Bool)

(assert (=> d!2041684 (= c!1193641 (and ((_ is ElementMatch!16389) (h!71791 (exprs!6273 (h!71792 zl!343)))) (= (c!1193399 (h!71791 (exprs!6273 (h!71792 zl!343)))) (h!71790 s!2326))))))

(declare-fun e!3943166 () (InoxSet Context!11546))

(assert (=> d!2041684 (= (derivationStepZipperDown!1637 (h!71791 (exprs!6273 (h!71792 zl!343))) lt!2393385 (h!71790 s!2326)) e!3943166)))

(declare-fun b!6507993 () Bool)

(declare-fun e!3943165 () (InoxSet Context!11546))

(declare-fun call!564080 () (InoxSet Context!11546))

(assert (=> b!6507993 (= e!3943165 call!564080)))

(declare-fun b!6507994 () Bool)

(declare-fun e!3943164 () (InoxSet Context!11546))

(assert (=> b!6507994 (= e!3943164 call!564080)))

(declare-fun b!6507995 () Bool)

(assert (=> b!6507995 (= e!3943166 (store ((as const (Array Context!11546 Bool)) false) lt!2393385 true))))

(declare-fun b!6507996 () Bool)

(assert (=> b!6507996 (= e!3943166 e!3943161)))

(assert (=> b!6507996 (= c!1193642 ((_ is Union!16389) (h!71791 (exprs!6273 (h!71792 zl!343)))))))

(declare-fun b!6507997 () Bool)

(declare-fun c!1193643 () Bool)

(assert (=> b!6507997 (= c!1193643 ((_ is Star!16389) (h!71791 (exprs!6273 (h!71792 zl!343)))))))

(assert (=> b!6507997 (= e!3943164 e!3943165)))

(declare-fun c!1193640 () Bool)

(declare-fun bm!564076 () Bool)

(declare-fun c!1193639 () Bool)

(declare-fun call!564081 () List!65467)

(assert (=> bm!564076 (= call!564079 (derivationStepZipperDown!1637 (ite c!1193642 (regTwo!33291 (h!71791 (exprs!6273 (h!71792 zl!343)))) (ite c!1193639 (regTwo!33290 (h!71791 (exprs!6273 (h!71792 zl!343)))) (ite c!1193640 (regOne!33290 (h!71791 (exprs!6273 (h!71792 zl!343)))) (reg!16718 (h!71791 (exprs!6273 (h!71792 zl!343))))))) (ite (or c!1193642 c!1193639) lt!2393385 (Context!11547 call!564081)) (h!71790 s!2326)))))

(declare-fun bm!564077 () Bool)

(assert (=> bm!564077 (= call!564080 call!564082)))

(declare-fun b!6507998 () Bool)

(declare-fun e!3943163 () (InoxSet Context!11546))

(assert (=> b!6507998 (= e!3943163 ((_ map or) call!564083 call!564082))))

(declare-fun b!6507999 () Bool)

(assert (=> b!6507999 (= e!3943163 e!3943164)))

(assert (=> b!6507999 (= c!1193640 ((_ is Concat!25234) (h!71791 (exprs!6273 (h!71792 zl!343)))))))

(declare-fun b!6508000 () Bool)

(assert (=> b!6508000 (= c!1193639 e!3943162)))

(declare-fun res!2672698 () Bool)

(assert (=> b!6508000 (=> (not res!2672698) (not e!3943162))))

(assert (=> b!6508000 (= res!2672698 ((_ is Concat!25234) (h!71791 (exprs!6273 (h!71792 zl!343)))))))

(assert (=> b!6508000 (= e!3943161 e!3943163)))

(declare-fun bm!564078 () Bool)

(declare-fun $colon$colon!2238 (List!65467 Regex!16389) List!65467)

(assert (=> bm!564078 (= call!564084 ($colon$colon!2238 (exprs!6273 lt!2393385) (ite (or c!1193639 c!1193640) (regTwo!33290 (h!71791 (exprs!6273 (h!71792 zl!343)))) (h!71791 (exprs!6273 (h!71792 zl!343))))))))

(declare-fun bm!564079 () Bool)

(assert (=> bm!564079 (= call!564081 call!564084)))

(declare-fun b!6508001 () Bool)

(assert (=> b!6508001 (= e!3943165 ((as const (Array Context!11546 Bool)) false))))

(assert (= (and d!2041684 c!1193641) b!6507995))

(assert (= (and d!2041684 (not c!1193641)) b!6507996))

(assert (= (and b!6507996 c!1193642) b!6507991))

(assert (= (and b!6507996 (not c!1193642)) b!6508000))

(assert (= (and b!6508000 res!2672698) b!6507992))

(assert (= (and b!6508000 c!1193639) b!6507998))

(assert (= (and b!6508000 (not c!1193639)) b!6507999))

(assert (= (and b!6507999 c!1193640) b!6507994))

(assert (= (and b!6507999 (not c!1193640)) b!6507997))

(assert (= (and b!6507997 c!1193643) b!6507993))

(assert (= (and b!6507997 (not c!1193643)) b!6508001))

(assert (= (or b!6507994 b!6507993) bm!564079))

(assert (= (or b!6507994 b!6507993) bm!564077))

(assert (= (or b!6507998 bm!564079) bm!564078))

(assert (= (or b!6507998 bm!564077) bm!564074))

(assert (= (or b!6507991 bm!564074) bm!564076))

(assert (= (or b!6507991 b!6507998) bm!564075))

(declare-fun m!7294740 () Bool)

(assert (=> b!6507995 m!7294740))

(declare-fun m!7294742 () Bool)

(assert (=> bm!564075 m!7294742))

(declare-fun m!7294744 () Bool)

(assert (=> b!6507992 m!7294744))

(declare-fun m!7294746 () Bool)

(assert (=> bm!564076 m!7294746))

(declare-fun m!7294748 () Bool)

(assert (=> bm!564078 m!7294748))

(assert (=> b!6507164 d!2041684))

(declare-fun d!2041696 () Bool)

(assert (=> d!2041696 (= (nullable!6382 (h!71791 (exprs!6273 (h!71792 zl!343)))) (nullableFct!2316 (h!71791 (exprs!6273 (h!71792 zl!343)))))))

(declare-fun bs!1652785 () Bool)

(assert (= bs!1652785 d!2041696))

(declare-fun m!7294750 () Bool)

(assert (=> bs!1652785 m!7294750))

(assert (=> b!6507164 d!2041696))

(declare-fun bm!564080 () Bool)

(declare-fun call!564085 () (InoxSet Context!11546))

(assert (=> bm!564080 (= call!564085 (derivationStepZipperDown!1637 (h!71791 (exprs!6273 (Context!11547 (Cons!65343 (h!71791 (exprs!6273 (h!71792 zl!343))) (t!379103 (exprs!6273 (h!71792 zl!343))))))) (Context!11547 (t!379103 (exprs!6273 (Context!11547 (Cons!65343 (h!71791 (exprs!6273 (h!71792 zl!343))) (t!379103 (exprs!6273 (h!71792 zl!343)))))))) (h!71790 s!2326)))))

(declare-fun b!6508016 () Bool)

(declare-fun e!3943171 () (InoxSet Context!11546))

(assert (=> b!6508016 (= e!3943171 ((as const (Array Context!11546 Bool)) false))))

(declare-fun d!2041698 () Bool)

(declare-fun c!1193644 () Bool)

(declare-fun e!3943172 () Bool)

(assert (=> d!2041698 (= c!1193644 e!3943172)))

(declare-fun res!2672699 () Bool)

(assert (=> d!2041698 (=> (not res!2672699) (not e!3943172))))

(assert (=> d!2041698 (= res!2672699 ((_ is Cons!65343) (exprs!6273 (Context!11547 (Cons!65343 (h!71791 (exprs!6273 (h!71792 zl!343))) (t!379103 (exprs!6273 (h!71792 zl!343))))))))))

(declare-fun e!3943170 () (InoxSet Context!11546))

(assert (=> d!2041698 (= (derivationStepZipperUp!1563 (Context!11547 (Cons!65343 (h!71791 (exprs!6273 (h!71792 zl!343))) (t!379103 (exprs!6273 (h!71792 zl!343))))) (h!71790 s!2326)) e!3943170)))

(declare-fun b!6508017 () Bool)

(assert (=> b!6508017 (= e!3943172 (nullable!6382 (h!71791 (exprs!6273 (Context!11547 (Cons!65343 (h!71791 (exprs!6273 (h!71792 zl!343))) (t!379103 (exprs!6273 (h!71792 zl!343)))))))))))

(declare-fun b!6508018 () Bool)

(assert (=> b!6508018 (= e!3943171 call!564085)))

(declare-fun b!6508019 () Bool)

(assert (=> b!6508019 (= e!3943170 e!3943171)))

(declare-fun c!1193645 () Bool)

(assert (=> b!6508019 (= c!1193645 ((_ is Cons!65343) (exprs!6273 (Context!11547 (Cons!65343 (h!71791 (exprs!6273 (h!71792 zl!343))) (t!379103 (exprs!6273 (h!71792 zl!343))))))))))

(declare-fun b!6508020 () Bool)

(assert (=> b!6508020 (= e!3943170 ((_ map or) call!564085 (derivationStepZipperUp!1563 (Context!11547 (t!379103 (exprs!6273 (Context!11547 (Cons!65343 (h!71791 (exprs!6273 (h!71792 zl!343))) (t!379103 (exprs!6273 (h!71792 zl!343)))))))) (h!71790 s!2326))))))

(assert (= (and d!2041698 res!2672699) b!6508017))

(assert (= (and d!2041698 c!1193644) b!6508020))

(assert (= (and d!2041698 (not c!1193644)) b!6508019))

(assert (= (and b!6508019 c!1193645) b!6508018))

(assert (= (and b!6508019 (not c!1193645)) b!6508016))

(assert (= (or b!6508020 b!6508018) bm!564080))

(declare-fun m!7294752 () Bool)

(assert (=> bm!564080 m!7294752))

(declare-fun m!7294754 () Bool)

(assert (=> b!6508017 m!7294754))

(declare-fun m!7294756 () Bool)

(assert (=> b!6508020 m!7294756))

(assert (=> b!6507164 d!2041698))

(declare-fun bm!564081 () Bool)

(declare-fun call!564086 () (InoxSet Context!11546))

(assert (=> bm!564081 (= call!564086 (derivationStepZipperDown!1637 (h!71791 (exprs!6273 lt!2393385)) (Context!11547 (t!379103 (exprs!6273 lt!2393385))) (h!71790 s!2326)))))

(declare-fun b!6508029 () Bool)

(declare-fun e!3943177 () (InoxSet Context!11546))

(assert (=> b!6508029 (= e!3943177 ((as const (Array Context!11546 Bool)) false))))

(declare-fun d!2041700 () Bool)

(declare-fun c!1193646 () Bool)

(declare-fun e!3943178 () Bool)

(assert (=> d!2041700 (= c!1193646 e!3943178)))

(declare-fun res!2672700 () Bool)

(assert (=> d!2041700 (=> (not res!2672700) (not e!3943178))))

(assert (=> d!2041700 (= res!2672700 ((_ is Cons!65343) (exprs!6273 lt!2393385)))))

(declare-fun e!3943176 () (InoxSet Context!11546))

(assert (=> d!2041700 (= (derivationStepZipperUp!1563 lt!2393385 (h!71790 s!2326)) e!3943176)))

(declare-fun b!6508030 () Bool)

(assert (=> b!6508030 (= e!3943178 (nullable!6382 (h!71791 (exprs!6273 lt!2393385))))))

(declare-fun b!6508031 () Bool)

(assert (=> b!6508031 (= e!3943177 call!564086)))

(declare-fun b!6508032 () Bool)

(assert (=> b!6508032 (= e!3943176 e!3943177)))

(declare-fun c!1193647 () Bool)

(assert (=> b!6508032 (= c!1193647 ((_ is Cons!65343) (exprs!6273 lt!2393385)))))

(declare-fun b!6508033 () Bool)

(assert (=> b!6508033 (= e!3943176 ((_ map or) call!564086 (derivationStepZipperUp!1563 (Context!11547 (t!379103 (exprs!6273 lt!2393385))) (h!71790 s!2326))))))

(assert (= (and d!2041700 res!2672700) b!6508030))

(assert (= (and d!2041700 c!1193646) b!6508033))

(assert (= (and d!2041700 (not c!1193646)) b!6508032))

(assert (= (and b!6508032 c!1193647) b!6508031))

(assert (= (and b!6508032 (not c!1193647)) b!6508029))

(assert (= (or b!6508033 b!6508031) bm!564081))

(declare-fun m!7294758 () Bool)

(assert (=> bm!564081 m!7294758))

(declare-fun m!7294760 () Bool)

(assert (=> b!6508030 m!7294760))

(declare-fun m!7294762 () Bool)

(assert (=> b!6508033 m!7294762))

(assert (=> b!6507164 d!2041700))

(declare-fun d!2041702 () Bool)

(assert (=> d!2041702 (= (flatMap!1894 z!1189 lambda!360900) (dynLambda!25962 lambda!360900 (h!71792 zl!343)))))

(declare-fun lt!2393576 () Unit!158891)

(assert (=> d!2041702 (= lt!2393576 (choose!48355 z!1189 (h!71792 zl!343) lambda!360900))))

(assert (=> d!2041702 (= z!1189 (store ((as const (Array Context!11546 Bool)) false) (h!71792 zl!343) true))))

(assert (=> d!2041702 (= (lemmaFlatMapOnSingletonSet!1420 z!1189 (h!71792 zl!343) lambda!360900) lt!2393576)))

(declare-fun b_lambda!246379 () Bool)

(assert (=> (not b_lambda!246379) (not d!2041702)))

(declare-fun bs!1652786 () Bool)

(assert (= bs!1652786 d!2041702))

(assert (=> bs!1652786 m!7293908))

(declare-fun m!7294764 () Bool)

(assert (=> bs!1652786 m!7294764))

(declare-fun m!7294766 () Bool)

(assert (=> bs!1652786 m!7294766))

(declare-fun m!7294768 () Bool)

(assert (=> bs!1652786 m!7294768))

(assert (=> b!6507164 d!2041702))

(declare-fun d!2041704 () Bool)

(assert (=> d!2041704 (= (flatMap!1894 z!1189 lambda!360900) (choose!48356 z!1189 lambda!360900))))

(declare-fun bs!1652787 () Bool)

(assert (= bs!1652787 d!2041704))

(declare-fun m!7294770 () Bool)

(assert (=> bs!1652787 m!7294770))

(assert (=> b!6507164 d!2041704))

(declare-fun bm!564082 () Bool)

(declare-fun call!564087 () (InoxSet Context!11546))

(assert (=> bm!564082 (= call!564087 (derivationStepZipperDown!1637 (h!71791 (exprs!6273 (h!71792 zl!343))) (Context!11547 (t!379103 (exprs!6273 (h!71792 zl!343)))) (h!71790 s!2326)))))

(declare-fun b!6508040 () Bool)

(declare-fun e!3943184 () (InoxSet Context!11546))

(assert (=> b!6508040 (= e!3943184 ((as const (Array Context!11546 Bool)) false))))

(declare-fun d!2041706 () Bool)

(declare-fun c!1193648 () Bool)

(declare-fun e!3943185 () Bool)

(assert (=> d!2041706 (= c!1193648 e!3943185)))

(declare-fun res!2672701 () Bool)

(assert (=> d!2041706 (=> (not res!2672701) (not e!3943185))))

(assert (=> d!2041706 (= res!2672701 ((_ is Cons!65343) (exprs!6273 (h!71792 zl!343))))))

(declare-fun e!3943183 () (InoxSet Context!11546))

(assert (=> d!2041706 (= (derivationStepZipperUp!1563 (h!71792 zl!343) (h!71790 s!2326)) e!3943183)))

(declare-fun b!6508041 () Bool)

(assert (=> b!6508041 (= e!3943185 (nullable!6382 (h!71791 (exprs!6273 (h!71792 zl!343)))))))

(declare-fun b!6508042 () Bool)

(assert (=> b!6508042 (= e!3943184 call!564087)))

(declare-fun b!6508043 () Bool)

(assert (=> b!6508043 (= e!3943183 e!3943184)))

(declare-fun c!1193649 () Bool)

(assert (=> b!6508043 (= c!1193649 ((_ is Cons!65343) (exprs!6273 (h!71792 zl!343))))))

(declare-fun b!6508044 () Bool)

(assert (=> b!6508044 (= e!3943183 ((_ map or) call!564087 (derivationStepZipperUp!1563 (Context!11547 (t!379103 (exprs!6273 (h!71792 zl!343)))) (h!71790 s!2326))))))

(assert (= (and d!2041706 res!2672701) b!6508041))

(assert (= (and d!2041706 c!1193648) b!6508044))

(assert (= (and d!2041706 (not c!1193648)) b!6508043))

(assert (= (and b!6508043 c!1193649) b!6508042))

(assert (= (and b!6508043 (not c!1193649)) b!6508040))

(assert (= (or b!6508044 b!6508042) bm!564082))

(declare-fun m!7294772 () Bool)

(assert (=> bm!564082 m!7294772))

(assert (=> b!6508041 m!7293906))

(declare-fun m!7294774 () Bool)

(assert (=> b!6508044 m!7294774))

(assert (=> b!6507164 d!2041706))

(declare-fun b!6508050 () Bool)

(declare-fun e!3943188 () (InoxSet Context!11546))

(declare-fun call!564092 () (InoxSet Context!11546))

(declare-fun call!564088 () (InoxSet Context!11546))

(assert (=> b!6508050 (= e!3943188 ((_ map or) call!564092 call!564088))))

(declare-fun bm!564083 () Bool)

(declare-fun call!564091 () (InoxSet Context!11546))

(assert (=> bm!564083 (= call!564091 call!564088)))

(declare-fun b!6508051 () Bool)

(declare-fun e!3943189 () Bool)

(assert (=> b!6508051 (= e!3943189 (nullable!6382 (regOne!33290 (reg!16718 (regOne!33290 r!7292)))))))

(declare-fun c!1193653 () Bool)

(declare-fun bm!564084 () Bool)

(declare-fun call!564093 () List!65467)

(assert (=> bm!564084 (= call!564092 (derivationStepZipperDown!1637 (ite c!1193653 (regOne!33291 (reg!16718 (regOne!33290 r!7292))) (regOne!33290 (reg!16718 (regOne!33290 r!7292)))) (ite c!1193653 lt!2393400 (Context!11547 call!564093)) (h!71790 s!2326)))))

(declare-fun d!2041708 () Bool)

(declare-fun c!1193652 () Bool)

(assert (=> d!2041708 (= c!1193652 (and ((_ is ElementMatch!16389) (reg!16718 (regOne!33290 r!7292))) (= (c!1193399 (reg!16718 (regOne!33290 r!7292))) (h!71790 s!2326))))))

(declare-fun e!3943193 () (InoxSet Context!11546))

(assert (=> d!2041708 (= (derivationStepZipperDown!1637 (reg!16718 (regOne!33290 r!7292)) lt!2393400 (h!71790 s!2326)) e!3943193)))

(declare-fun b!6508052 () Bool)

(declare-fun e!3943192 () (InoxSet Context!11546))

(declare-fun call!564089 () (InoxSet Context!11546))

(assert (=> b!6508052 (= e!3943192 call!564089)))

(declare-fun b!6508053 () Bool)

(declare-fun e!3943191 () (InoxSet Context!11546))

(assert (=> b!6508053 (= e!3943191 call!564089)))

(declare-fun b!6508054 () Bool)

(assert (=> b!6508054 (= e!3943193 (store ((as const (Array Context!11546 Bool)) false) lt!2393400 true))))

(declare-fun b!6508055 () Bool)

(assert (=> b!6508055 (= e!3943193 e!3943188)))

(assert (=> b!6508055 (= c!1193653 ((_ is Union!16389) (reg!16718 (regOne!33290 r!7292))))))

(declare-fun b!6508056 () Bool)

(declare-fun c!1193654 () Bool)

(assert (=> b!6508056 (= c!1193654 ((_ is Star!16389) (reg!16718 (regOne!33290 r!7292))))))

(assert (=> b!6508056 (= e!3943191 e!3943192)))

(declare-fun c!1193650 () Bool)

(declare-fun bm!564085 () Bool)

(declare-fun call!564090 () List!65467)

(declare-fun c!1193651 () Bool)

(assert (=> bm!564085 (= call!564088 (derivationStepZipperDown!1637 (ite c!1193653 (regTwo!33291 (reg!16718 (regOne!33290 r!7292))) (ite c!1193650 (regTwo!33290 (reg!16718 (regOne!33290 r!7292))) (ite c!1193651 (regOne!33290 (reg!16718 (regOne!33290 r!7292))) (reg!16718 (reg!16718 (regOne!33290 r!7292)))))) (ite (or c!1193653 c!1193650) lt!2393400 (Context!11547 call!564090)) (h!71790 s!2326)))))

(declare-fun bm!564086 () Bool)

(assert (=> bm!564086 (= call!564089 call!564091)))

(declare-fun b!6508057 () Bool)

(declare-fun e!3943190 () (InoxSet Context!11546))

(assert (=> b!6508057 (= e!3943190 ((_ map or) call!564092 call!564091))))

(declare-fun b!6508058 () Bool)

(assert (=> b!6508058 (= e!3943190 e!3943191)))

(assert (=> b!6508058 (= c!1193651 ((_ is Concat!25234) (reg!16718 (regOne!33290 r!7292))))))

(declare-fun b!6508059 () Bool)

(assert (=> b!6508059 (= c!1193650 e!3943189)))

(declare-fun res!2672702 () Bool)

(assert (=> b!6508059 (=> (not res!2672702) (not e!3943189))))

(assert (=> b!6508059 (= res!2672702 ((_ is Concat!25234) (reg!16718 (regOne!33290 r!7292))))))

(assert (=> b!6508059 (= e!3943188 e!3943190)))

(declare-fun bm!564087 () Bool)

(assert (=> bm!564087 (= call!564093 ($colon$colon!2238 (exprs!6273 lt!2393400) (ite (or c!1193650 c!1193651) (regTwo!33290 (reg!16718 (regOne!33290 r!7292))) (reg!16718 (regOne!33290 r!7292)))))))

(declare-fun bm!564088 () Bool)

(assert (=> bm!564088 (= call!564090 call!564093)))

(declare-fun b!6508060 () Bool)

(assert (=> b!6508060 (= e!3943192 ((as const (Array Context!11546 Bool)) false))))

(assert (= (and d!2041708 c!1193652) b!6508054))

(assert (= (and d!2041708 (not c!1193652)) b!6508055))

(assert (= (and b!6508055 c!1193653) b!6508050))

(assert (= (and b!6508055 (not c!1193653)) b!6508059))

(assert (= (and b!6508059 res!2672702) b!6508051))

(assert (= (and b!6508059 c!1193650) b!6508057))

(assert (= (and b!6508059 (not c!1193650)) b!6508058))

(assert (= (and b!6508058 c!1193651) b!6508053))

(assert (= (and b!6508058 (not c!1193651)) b!6508056))

(assert (= (and b!6508056 c!1193654) b!6508052))

(assert (= (and b!6508056 (not c!1193654)) b!6508060))

(assert (= (or b!6508053 b!6508052) bm!564088))

(assert (= (or b!6508053 b!6508052) bm!564086))

(assert (= (or b!6508057 bm!564088) bm!564087))

(assert (= (or b!6508057 bm!564086) bm!564083))

(assert (= (or b!6508050 bm!564083) bm!564085))

(assert (= (or b!6508050 b!6508057) bm!564084))

(assert (=> b!6508054 m!7293988))

(declare-fun m!7294778 () Bool)

(assert (=> bm!564084 m!7294778))

(declare-fun m!7294780 () Bool)

(assert (=> b!6508051 m!7294780))

(declare-fun m!7294782 () Bool)

(assert (=> bm!564085 m!7294782))

(declare-fun m!7294784 () Bool)

(assert (=> bm!564087 m!7294784))

(assert (=> b!6507184 d!2041708))

(declare-fun d!2041710 () Bool)

(declare-fun c!1193655 () Bool)

(assert (=> d!2041710 (= c!1193655 (isEmpty!37552 (_2!36671 lt!2393395)))))

(declare-fun e!3943202 () Bool)

(assert (=> d!2041710 (= (matchZipper!2401 lt!2393417 (_2!36671 lt!2393395)) e!3943202)))

(declare-fun b!6508076 () Bool)

(assert (=> b!6508076 (= e!3943202 (nullableZipper!2142 lt!2393417))))

(declare-fun b!6508077 () Bool)

(assert (=> b!6508077 (= e!3943202 (matchZipper!2401 (derivationStepZipper!2355 lt!2393417 (head!13244 (_2!36671 lt!2393395))) (tail!12329 (_2!36671 lt!2393395))))))

(assert (= (and d!2041710 c!1193655) b!6508076))

(assert (= (and d!2041710 (not c!1193655)) b!6508077))

(declare-fun m!7294786 () Bool)

(assert (=> d!2041710 m!7294786))

(declare-fun m!7294788 () Bool)

(assert (=> b!6508076 m!7294788))

(declare-fun m!7294790 () Bool)

(assert (=> b!6508077 m!7294790))

(assert (=> b!6508077 m!7294790))

(declare-fun m!7294792 () Bool)

(assert (=> b!6508077 m!7294792))

(declare-fun m!7294794 () Bool)

(assert (=> b!6508077 m!7294794))

(assert (=> b!6508077 m!7294792))

(assert (=> b!6508077 m!7294794))

(declare-fun m!7294796 () Bool)

(assert (=> b!6508077 m!7294796))

(assert (=> b!6507165 d!2041710))

(declare-fun condSetEmpty!44395 () Bool)

(assert (=> setNonEmpty!44389 (= condSetEmpty!44395 (= setRest!44389 ((as const (Array Context!11546 Bool)) false)))))

(declare-fun setRes!44395 () Bool)

(assert (=> setNonEmpty!44389 (= tp!1799570 setRes!44395)))

(declare-fun setIsEmpty!44395 () Bool)

(assert (=> setIsEmpty!44395 setRes!44395))

(declare-fun e!3943208 () Bool)

(declare-fun setElem!44395 () Context!11546)

(declare-fun setNonEmpty!44395 () Bool)

(declare-fun tp!1799637 () Bool)

(assert (=> setNonEmpty!44395 (= setRes!44395 (and tp!1799637 (inv!84219 setElem!44395) e!3943208))))

(declare-fun setRest!44395 () (InoxSet Context!11546))

(assert (=> setNonEmpty!44395 (= setRest!44389 ((_ map or) (store ((as const (Array Context!11546 Bool)) false) setElem!44395 true) setRest!44395))))

(declare-fun b!6508088 () Bool)

(declare-fun tp!1799638 () Bool)

(assert (=> b!6508088 (= e!3943208 tp!1799638)))

(assert (= (and setNonEmpty!44389 condSetEmpty!44395) setIsEmpty!44395))

(assert (= (and setNonEmpty!44389 (not condSetEmpty!44395)) setNonEmpty!44395))

(assert (= setNonEmpty!44395 b!6508088))

(declare-fun m!7294800 () Bool)

(assert (=> setNonEmpty!44395 m!7294800))

(declare-fun b!6508093 () Bool)

(declare-fun e!3943211 () Bool)

(declare-fun tp!1799641 () Bool)

(assert (=> b!6508093 (= e!3943211 (and tp_is_empty!42031 tp!1799641))))

(assert (=> b!6507186 (= tp!1799566 e!3943211)))

(assert (= (and b!6507186 ((_ is Cons!65342) (t!379102 s!2326))) b!6508093))

(declare-fun b!6508107 () Bool)

(declare-fun e!3943214 () Bool)

(declare-fun tp!1799656 () Bool)

(declare-fun tp!1799652 () Bool)

(assert (=> b!6508107 (= e!3943214 (and tp!1799656 tp!1799652))))

(assert (=> b!6507193 (= tp!1799573 e!3943214)))

(declare-fun b!6508104 () Bool)

(assert (=> b!6508104 (= e!3943214 tp_is_empty!42031)))

(declare-fun b!6508106 () Bool)

(declare-fun tp!1799655 () Bool)

(assert (=> b!6508106 (= e!3943214 tp!1799655)))

(declare-fun b!6508105 () Bool)

(declare-fun tp!1799654 () Bool)

(declare-fun tp!1799653 () Bool)

(assert (=> b!6508105 (= e!3943214 (and tp!1799654 tp!1799653))))

(assert (= (and b!6507193 ((_ is ElementMatch!16389) (regOne!33291 r!7292))) b!6508104))

(assert (= (and b!6507193 ((_ is Concat!25234) (regOne!33291 r!7292))) b!6508105))

(assert (= (and b!6507193 ((_ is Star!16389) (regOne!33291 r!7292))) b!6508106))

(assert (= (and b!6507193 ((_ is Union!16389) (regOne!33291 r!7292))) b!6508107))

(declare-fun b!6508111 () Bool)

(declare-fun e!3943215 () Bool)

(declare-fun tp!1799661 () Bool)

(declare-fun tp!1799657 () Bool)

(assert (=> b!6508111 (= e!3943215 (and tp!1799661 tp!1799657))))

(assert (=> b!6507193 (= tp!1799567 e!3943215)))

(declare-fun b!6508108 () Bool)

(assert (=> b!6508108 (= e!3943215 tp_is_empty!42031)))

(declare-fun b!6508110 () Bool)

(declare-fun tp!1799660 () Bool)

(assert (=> b!6508110 (= e!3943215 tp!1799660)))

(declare-fun b!6508109 () Bool)

(declare-fun tp!1799659 () Bool)

(declare-fun tp!1799658 () Bool)

(assert (=> b!6508109 (= e!3943215 (and tp!1799659 tp!1799658))))

(assert (= (and b!6507193 ((_ is ElementMatch!16389) (regTwo!33291 r!7292))) b!6508108))

(assert (= (and b!6507193 ((_ is Concat!25234) (regTwo!33291 r!7292))) b!6508109))

(assert (= (and b!6507193 ((_ is Star!16389) (regTwo!33291 r!7292))) b!6508110))

(assert (= (and b!6507193 ((_ is Union!16389) (regTwo!33291 r!7292))) b!6508111))

(declare-fun b!6508115 () Bool)

(declare-fun e!3943216 () Bool)

(declare-fun tp!1799666 () Bool)

(declare-fun tp!1799662 () Bool)

(assert (=> b!6508115 (= e!3943216 (and tp!1799666 tp!1799662))))

(assert (=> b!6507167 (= tp!1799574 e!3943216)))

(declare-fun b!6508112 () Bool)

(assert (=> b!6508112 (= e!3943216 tp_is_empty!42031)))

(declare-fun b!6508114 () Bool)

(declare-fun tp!1799665 () Bool)

(assert (=> b!6508114 (= e!3943216 tp!1799665)))

(declare-fun b!6508113 () Bool)

(declare-fun tp!1799664 () Bool)

(declare-fun tp!1799663 () Bool)

(assert (=> b!6508113 (= e!3943216 (and tp!1799664 tp!1799663))))

(assert (= (and b!6507167 ((_ is ElementMatch!16389) (regOne!33290 r!7292))) b!6508112))

(assert (= (and b!6507167 ((_ is Concat!25234) (regOne!33290 r!7292))) b!6508113))

(assert (= (and b!6507167 ((_ is Star!16389) (regOne!33290 r!7292))) b!6508114))

(assert (= (and b!6507167 ((_ is Union!16389) (regOne!33290 r!7292))) b!6508115))

(declare-fun b!6508119 () Bool)

(declare-fun e!3943217 () Bool)

(declare-fun tp!1799671 () Bool)

(declare-fun tp!1799667 () Bool)

(assert (=> b!6508119 (= e!3943217 (and tp!1799671 tp!1799667))))

(assert (=> b!6507167 (= tp!1799565 e!3943217)))

(declare-fun b!6508116 () Bool)

(assert (=> b!6508116 (= e!3943217 tp_is_empty!42031)))

(declare-fun b!6508118 () Bool)

(declare-fun tp!1799670 () Bool)

(assert (=> b!6508118 (= e!3943217 tp!1799670)))

(declare-fun b!6508117 () Bool)

(declare-fun tp!1799669 () Bool)

(declare-fun tp!1799668 () Bool)

(assert (=> b!6508117 (= e!3943217 (and tp!1799669 tp!1799668))))

(assert (= (and b!6507167 ((_ is ElementMatch!16389) (regTwo!33290 r!7292))) b!6508116))

(assert (= (and b!6507167 ((_ is Concat!25234) (regTwo!33290 r!7292))) b!6508117))

(assert (= (and b!6507167 ((_ is Star!16389) (regTwo!33290 r!7292))) b!6508118))

(assert (= (and b!6507167 ((_ is Union!16389) (regTwo!33290 r!7292))) b!6508119))

(declare-fun b!6508123 () Bool)

(declare-fun e!3943218 () Bool)

(declare-fun tp!1799676 () Bool)

(declare-fun tp!1799672 () Bool)

(assert (=> b!6508123 (= e!3943218 (and tp!1799676 tp!1799672))))

(assert (=> b!6507200 (= tp!1799568 e!3943218)))

(declare-fun b!6508120 () Bool)

(assert (=> b!6508120 (= e!3943218 tp_is_empty!42031)))

(declare-fun b!6508122 () Bool)

(declare-fun tp!1799675 () Bool)

(assert (=> b!6508122 (= e!3943218 tp!1799675)))

(declare-fun b!6508121 () Bool)

(declare-fun tp!1799674 () Bool)

(declare-fun tp!1799673 () Bool)

(assert (=> b!6508121 (= e!3943218 (and tp!1799674 tp!1799673))))

(assert (= (and b!6507200 ((_ is ElementMatch!16389) (reg!16718 r!7292))) b!6508120))

(assert (= (and b!6507200 ((_ is Concat!25234) (reg!16718 r!7292))) b!6508121))

(assert (= (and b!6507200 ((_ is Star!16389) (reg!16718 r!7292))) b!6508122))

(assert (= (and b!6507200 ((_ is Union!16389) (reg!16718 r!7292))) b!6508123))

(declare-fun b!6508128 () Bool)

(declare-fun e!3943221 () Bool)

(declare-fun tp!1799681 () Bool)

(declare-fun tp!1799682 () Bool)

(assert (=> b!6508128 (= e!3943221 (and tp!1799681 tp!1799682))))

(assert (=> b!6507201 (= tp!1799572 e!3943221)))

(assert (= (and b!6507201 ((_ is Cons!65343) (exprs!6273 (h!71792 zl!343)))) b!6508128))

(declare-fun b!6508129 () Bool)

(declare-fun e!3943222 () Bool)

(declare-fun tp!1799683 () Bool)

(declare-fun tp!1799684 () Bool)

(assert (=> b!6508129 (= e!3943222 (and tp!1799683 tp!1799684))))

(assert (=> b!6507175 (= tp!1799571 e!3943222)))

(assert (= (and b!6507175 ((_ is Cons!65343) (exprs!6273 setElem!44389))) b!6508129))

(declare-fun b!6508137 () Bool)

(declare-fun e!3943228 () Bool)

(declare-fun tp!1799689 () Bool)

(assert (=> b!6508137 (= e!3943228 tp!1799689)))

(declare-fun e!3943227 () Bool)

(declare-fun b!6508136 () Bool)

(declare-fun tp!1799690 () Bool)

(assert (=> b!6508136 (= e!3943227 (and (inv!84219 (h!71792 (t!379104 zl!343))) e!3943228 tp!1799690))))

(assert (=> b!6507180 (= tp!1799569 e!3943227)))

(assert (= b!6508136 b!6508137))

(assert (= (and b!6507180 ((_ is Cons!65344) (t!379104 zl!343))) b!6508136))

(declare-fun m!7294806 () Bool)

(assert (=> b!6508136 m!7294806))

(declare-fun b_lambda!246391 () Bool)

(assert (= b_lambda!246367 (or b!6507164 b_lambda!246391)))

(declare-fun bs!1652793 () Bool)

(declare-fun d!2041722 () Bool)

(assert (= bs!1652793 (and d!2041722 b!6507164)))

(assert (=> bs!1652793 (= (dynLambda!25962 lambda!360900 lt!2393400) (derivationStepZipperUp!1563 lt!2393400 (h!71790 s!2326)))))

(assert (=> bs!1652793 m!7293974))

(assert (=> d!2041606 d!2041722))

(declare-fun b_lambda!246393 () Bool)

(assert (= b_lambda!246369 (or b!6507164 b_lambda!246393)))

(declare-fun bs!1652794 () Bool)

(declare-fun d!2041724 () Bool)

(assert (= bs!1652794 (and d!2041724 b!6507164)))

(assert (=> bs!1652794 (= (dynLambda!25962 lambda!360900 lt!2393423) (derivationStepZipperUp!1563 lt!2393423 (h!71790 s!2326)))))

(assert (=> bs!1652794 m!7293982))

(assert (=> d!2041614 d!2041724))

(declare-fun b_lambda!246395 () Bool)

(assert (= b_lambda!246361 (or b!6507204 b_lambda!246395)))

(declare-fun bs!1652795 () Bool)

(declare-fun d!2041726 () Bool)

(assert (= bs!1652795 (and d!2041726 b!6507204)))

(declare-fun lt!2393578 () Unit!158891)

(assert (=> bs!1652795 (= lt!2393578 (lemmaConcatPreservesForall!362 (exprs!6273 lt!2393423) lt!2393388 lambda!360902))))

(assert (=> bs!1652795 (= (dynLambda!25959 lambda!360901 lt!2393423) (Context!11547 (++!14481 (exprs!6273 lt!2393423) lt!2393388)))))

(declare-fun m!7294808 () Bool)

(assert (=> bs!1652795 m!7294808))

(declare-fun m!7294810 () Bool)

(assert (=> bs!1652795 m!7294810))

(assert (=> d!2041490 d!2041726))

(declare-fun b_lambda!246397 () Bool)

(assert (= b_lambda!246379 (or b!6507164 b_lambda!246397)))

(declare-fun bs!1652796 () Bool)

(declare-fun d!2041728 () Bool)

(assert (= bs!1652796 (and d!2041728 b!6507164)))

(assert (=> bs!1652796 (= (dynLambda!25962 lambda!360900 (h!71792 zl!343)) (derivationStepZipperUp!1563 (h!71792 zl!343) (h!71790 s!2326)))))

(assert (=> bs!1652796 m!7293900))

(assert (=> d!2041702 d!2041728))

(declare-fun b_lambda!246399 () Bool)

(assert (= b_lambda!246377 (or b!6507164 b_lambda!246399)))

(declare-fun bs!1652797 () Bool)

(declare-fun d!2041730 () Bool)

(assert (= bs!1652797 (and d!2041730 b!6507164)))

(assert (=> bs!1652797 (= (dynLambda!25962 lambda!360900 lt!2393402) (derivationStepZipperUp!1563 lt!2393402 (h!71790 s!2326)))))

(assert (=> bs!1652797 m!7294016))

(assert (=> d!2041680 d!2041730))

(check-sat (not bs!1652796) (not b!6508017) (not d!2041464) (not b!6507359) (not b!6508128) (not b!6508020) (not b!6507334) (not b!6507645) (not b!6507331) (not b!6507721) (not bs!1652797) (not b!6508136) (not d!2041476) (not b!6507992) (not b!6508118) (not b!6507566) (not bs!1652794) (not d!2041664) (not b_lambda!246399) (not b!6508109) (not b!6507653) (not d!2041696) (not bm!563989) (not b!6507652) (not d!2041710) (not b!6508113) (not b!6507295) (not b!6507296) (not d!2041508) (not b!6508088) (not b!6507688) (not b!6507725) (not bm!564081) (not d!2041580) (not b!6508111) (not b!6508123) (not b!6507428) (not bm!564010) (not b!6508129) (not bm!563990) (not bm!564084) (not b!6507639) (not b!6507300) (not b!6507232) (not bm!564076) (not b!6507835) tp_is_empty!42031 (not b!6507684) (not b_lambda!246397) (not b!6507647) (not d!2041486) (not bm!564039) (not d!2041466) (not d!2041566) (not b!6507431) (not b!6507644) (not b!6507332) (not d!2041600) (not bm!564075) (not d!2041458) (not b!6507764) (not b_lambda!246393) (not d!2041570) (not b!6507288) (not b!6507772) (not b!6507686) (not d!2041460) (not b!6507682) (not d!2041584) (not b!6507928) (not b!6507291) (not setNonEmpty!44395) (not bm!564078) (not d!2041668) (not b!6508137) (not b!6508076) (not b!6507221) (not b!6507220) (not b!6507767) (not b!6507429) (not d!2041492) (not d!2041626) (not d!2041592) (not d!2041500) (not b!6507231) (not d!2041702) (not d!2041680) (not bm!564038) (not b!6507330) (not d!2041590) (not b!6507689) (not bm!564033) (not b_lambda!246391) (not b!6507719) (not d!2041496) (not d!2041622) (not b!6507423) (not d!2041614) (not d!2041704) (not b!6507432) (not b!6507646) (not bm!564032) (not b!6507562) (not d!2041588) (not b!6508041) (not b!6507358) (not d!2041478) (not d!2041682) (not b!6507439) (not bm!564056) (not bs!1652795) (not b!6507737) (not b!6507333) (not b!6508119) (not d!2041674) (not b!6507832) (not b!6508122) (not b!6507427) (not d!2041618) (not b!6507829) (not b!6507680) (not b!6508110) (not d!2041586) (not b!6508033) (not bm!564085) (not b!6507727) (not b!6507834) (not d!2041606) (not d!2041670) (not b!6507724) (not d!2041514) (not bm!564087) (not b!6508105) (not b!6508114) (not bm!564034) (not b!6507289) (not bm!564035) (not d!2041594) (not b!6507641) (not bs!1652793) (not b!6508121) (not b!6508077) (not d!2041540) (not d!2041474) (not b!6507290) (not d!2041516) (not d!2041604) (not b!6507424) (not b!6508107) (not d!2041498) (not bm!564082) (not d!2041456) (not d!2041488) (not d!2041666) (not b_lambda!246395) (not d!2041602) (not b!6508106) (not b!6508044) (not b!6507706) (not b!6507726) (not b!6507297) (not b!6507837) (not b!6507703) (not b!6508093) (not b!6507925) (not b!6507831) (not d!2041536) (not b!6508030) (not b!6508051) (not d!2041490) (not b!6507733) (not bm!564080) (not b!6508117) (not b!6507681) (not b!6507298) (not b!6507769) (not b!6508115) (not d!2041676) (not b!6507299) (not bm!564009) (not b!6507478) (not d!2041510) (not b!6507702))
(check-sat)
