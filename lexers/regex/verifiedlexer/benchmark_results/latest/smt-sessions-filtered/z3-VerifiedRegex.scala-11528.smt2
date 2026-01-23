; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!632626 () Bool)

(assert start!632626)

(declare-fun b!6386452 () Bool)

(assert (=> b!6386452 true))

(assert (=> b!6386452 true))

(declare-fun lambda!352450 () Int)

(declare-fun lambda!352449 () Int)

(assert (=> b!6386452 (not (= lambda!352450 lambda!352449))))

(assert (=> b!6386452 true))

(assert (=> b!6386452 true))

(declare-fun b!6386438 () Bool)

(assert (=> b!6386438 true))

(declare-fun bs!1598465 () Bool)

(declare-fun b!6386437 () Bool)

(assert (= bs!1598465 (and b!6386437 b!6386452)))

(declare-datatypes ((C!32876 0))(
  ( (C!32877 (val!26140 Int)) )
))
(declare-datatypes ((Regex!16303 0))(
  ( (ElementMatch!16303 (c!1163902 C!32876)) (Concat!25148 (regOne!33118 Regex!16303) (regTwo!33118 Regex!16303)) (EmptyExpr!16303) (Star!16303 (reg!16632 Regex!16303)) (EmptyLang!16303) (Union!16303 (regOne!33119 Regex!16303) (regTwo!33119 Regex!16303)) )
))
(declare-fun r!7292 () Regex!16303)

(declare-fun lt!2371616 () Regex!16303)

(declare-fun lambda!352452 () Int)

(assert (=> bs!1598465 (= (= lt!2371616 (regOne!33118 r!7292)) (= lambda!352452 lambda!352449))))

(assert (=> bs!1598465 (not (= lambda!352452 lambda!352450))))

(assert (=> b!6386437 true))

(assert (=> b!6386437 true))

(assert (=> b!6386437 true))

(declare-fun lambda!352453 () Int)

(assert (=> bs!1598465 (not (= lambda!352453 lambda!352449))))

(assert (=> bs!1598465 (= (= lt!2371616 (regOne!33118 r!7292)) (= lambda!352453 lambda!352450))))

(assert (=> b!6386437 (not (= lambda!352453 lambda!352452))))

(assert (=> b!6386437 true))

(assert (=> b!6386437 true))

(assert (=> b!6386437 true))

(declare-fun b!6386414 () Bool)

(declare-fun res!2626994 () Bool)

(declare-fun e!3876540 () Bool)

(assert (=> b!6386414 (=> res!2626994 e!3876540)))

(declare-datatypes ((List!65208 0))(
  ( (Nil!65084) (Cons!65084 (h!71532 C!32876) (t!378814 List!65208)) )
))
(declare-datatypes ((tuple2!66564 0))(
  ( (tuple2!66565 (_1!36585 List!65208) (_2!36585 List!65208)) )
))
(declare-fun lt!2371613 () tuple2!66564)

(declare-fun matchR!8486 (Regex!16303 List!65208) Bool)

(assert (=> b!6386414 (= res!2626994 (not (matchR!8486 lt!2371616 (_1!36585 lt!2371613))))))

(declare-fun b!6386415 () Bool)

(declare-fun e!3876533 () Bool)

(declare-fun e!3876522 () Bool)

(assert (=> b!6386415 (= e!3876533 e!3876522)))

(declare-fun res!2627000 () Bool)

(assert (=> b!6386415 (=> (not res!2627000) (not e!3876522))))

(declare-fun lt!2371603 () Regex!16303)

(assert (=> b!6386415 (= res!2627000 (= r!7292 lt!2371603))))

(declare-datatypes ((List!65209 0))(
  ( (Nil!65085) (Cons!65085 (h!71533 Regex!16303) (t!378815 List!65209)) )
))
(declare-datatypes ((Context!11374 0))(
  ( (Context!11375 (exprs!6187 List!65209)) )
))
(declare-datatypes ((List!65210 0))(
  ( (Nil!65086) (Cons!65086 (h!71534 Context!11374) (t!378816 List!65210)) )
))
(declare-fun zl!343 () List!65210)

(declare-fun unfocusZipper!2045 (List!65210) Regex!16303)

(assert (=> b!6386415 (= lt!2371603 (unfocusZipper!2045 zl!343))))

(declare-fun b!6386416 () Bool)

(declare-fun e!3876536 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2371617 () (InoxSet Context!11374))

(declare-fun s!2326 () List!65208)

(declare-fun matchZipper!2315 ((InoxSet Context!11374) List!65208) Bool)

(assert (=> b!6386416 (= e!3876536 (matchZipper!2315 lt!2371617 (t!378814 s!2326)))))

(declare-fun b!6386417 () Bool)

(declare-fun e!3876532 () Bool)

(declare-fun tp_is_empty!41859 () Bool)

(assert (=> b!6386417 (= e!3876532 tp_is_empty!41859)))

(declare-fun b!6386419 () Bool)

(declare-fun e!3876537 () Bool)

(declare-fun tp!1776642 () Bool)

(assert (=> b!6386419 (= e!3876537 tp!1776642)))

(declare-fun b!6386420 () Bool)

(declare-fun e!3876530 () Bool)

(declare-fun tp!1776643 () Bool)

(declare-fun inv!84004 (Context!11374) Bool)

(assert (=> b!6386420 (= e!3876530 (and (inv!84004 (h!71534 zl!343)) e!3876537 tp!1776643))))

(declare-fun b!6386421 () Bool)

(declare-fun tp!1776644 () Bool)

(declare-fun tp!1776649 () Bool)

(assert (=> b!6386421 (= e!3876532 (and tp!1776644 tp!1776649))))

(declare-fun b!6386422 () Bool)

(declare-fun res!2627005 () Bool)

(declare-fun e!3876527 () Bool)

(assert (=> b!6386422 (=> res!2627005 e!3876527)))

(declare-fun generalisedUnion!2147 (List!65209) Regex!16303)

(declare-fun unfocusZipperList!1724 (List!65210) List!65209)

(assert (=> b!6386422 (= res!2627005 (not (= r!7292 (generalisedUnion!2147 (unfocusZipperList!1724 zl!343)))))))

(declare-fun setRes!43606 () Bool)

(declare-fun e!3876535 () Bool)

(declare-fun tp!1776647 () Bool)

(declare-fun setNonEmpty!43606 () Bool)

(declare-fun setElem!43606 () Context!11374)

(assert (=> setNonEmpty!43606 (= setRes!43606 (and tp!1776647 (inv!84004 setElem!43606) e!3876535))))

(declare-fun z!1189 () (InoxSet Context!11374))

(declare-fun setRest!43606 () (InoxSet Context!11374))

(assert (=> setNonEmpty!43606 (= z!1189 ((_ map or) (store ((as const (Array Context!11374 Bool)) false) setElem!43606 true) setRest!43606))))

(declare-fun b!6386423 () Bool)

(declare-fun res!2626979 () Bool)

(declare-fun e!3876529 () Bool)

(assert (=> b!6386423 (=> res!2626979 e!3876529)))

(declare-fun lt!2371592 () (InoxSet Context!11374))

(declare-fun lt!2371602 () (InoxSet Context!11374))

(assert (=> b!6386423 (= res!2626979 (not (= (matchZipper!2315 lt!2371602 s!2326) (matchZipper!2315 lt!2371592 (t!378814 s!2326)))))))

(declare-fun b!6386424 () Bool)

(declare-fun e!3876521 () Bool)

(assert (=> b!6386424 (= e!3876529 e!3876521)))

(declare-fun res!2626981 () Bool)

(assert (=> b!6386424 (=> res!2626981 e!3876521)))

(declare-fun lt!2371623 () Regex!16303)

(assert (=> b!6386424 (= res!2626981 (not (= r!7292 lt!2371623)))))

(assert (=> b!6386424 (= lt!2371623 (Concat!25148 lt!2371616 (regTwo!33118 r!7292)))))

(declare-fun b!6386425 () Bool)

(declare-fun e!3876538 () Bool)

(declare-fun e!3876534 () Bool)

(assert (=> b!6386425 (= e!3876538 e!3876534)))

(declare-fun res!2626990 () Bool)

(assert (=> b!6386425 (=> res!2626990 e!3876534)))

(declare-fun lt!2371598 () Bool)

(assert (=> b!6386425 (= res!2626990 (not lt!2371598))))

(declare-fun e!3876523 () Bool)

(assert (=> b!6386425 e!3876523))

(declare-fun res!2627004 () Bool)

(assert (=> b!6386425 (=> (not res!2627004) (not e!3876523))))

(declare-fun lt!2371593 () Regex!16303)

(declare-fun matchRSpec!3404 (Regex!16303 List!65208) Bool)

(assert (=> b!6386425 (= res!2627004 (= (matchR!8486 lt!2371593 s!2326) (matchRSpec!3404 lt!2371593 s!2326)))))

(declare-datatypes ((Unit!158543 0))(
  ( (Unit!158544) )
))
(declare-fun lt!2371629 () Unit!158543)

(declare-fun mainMatchTheorem!3404 (Regex!16303 List!65208) Unit!158543)

(assert (=> b!6386425 (= lt!2371629 (mainMatchTheorem!3404 lt!2371593 s!2326))))

(declare-fun setIsEmpty!43606 () Bool)

(assert (=> setIsEmpty!43606 setRes!43606))

(declare-fun b!6386426 () Bool)

(declare-fun res!2627002 () Bool)

(assert (=> b!6386426 (=> res!2627002 e!3876527)))

(get-info :version)

(assert (=> b!6386426 (= res!2627002 (not ((_ is Cons!65085) (exprs!6187 (h!71534 zl!343)))))))

(declare-fun b!6386427 () Bool)

(declare-fun res!2626999 () Bool)

(declare-fun e!3876539 () Bool)

(assert (=> b!6386427 (=> res!2626999 e!3876539)))

(declare-fun e!3876519 () Bool)

(assert (=> b!6386427 (= res!2626999 e!3876519)))

(declare-fun res!2626995 () Bool)

(assert (=> b!6386427 (=> (not res!2626995) (not e!3876519))))

(assert (=> b!6386427 (= res!2626995 ((_ is Concat!25148) (regOne!33118 r!7292)))))

(declare-fun b!6386428 () Bool)

(declare-fun res!2626984 () Bool)

(assert (=> b!6386428 (=> (not res!2626984) (not e!3876533))))

(declare-fun toList!10087 ((InoxSet Context!11374)) List!65210)

(assert (=> b!6386428 (= res!2626984 (= (toList!10087 z!1189) zl!343))))

(declare-fun b!6386429 () Bool)

(declare-fun e!3876524 () Bool)

(declare-fun lt!2371596 () Context!11374)

(assert (=> b!6386429 (= e!3876524 (inv!84004 lt!2371596))))

(declare-fun b!6386430 () Bool)

(declare-fun e!3876525 () Unit!158543)

(declare-fun Unit!158545 () Unit!158543)

(assert (=> b!6386430 (= e!3876525 Unit!158545)))

(declare-fun lt!2371595 () Unit!158543)

(declare-fun lt!2371609 () (InoxSet Context!11374))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1134 ((InoxSet Context!11374) (InoxSet Context!11374) List!65208) Unit!158543)

(assert (=> b!6386430 (= lt!2371595 (lemmaZipperConcatMatchesSameAsBothZippers!1134 lt!2371609 lt!2371617 (t!378814 s!2326)))))

(declare-fun res!2627008 () Bool)

(assert (=> b!6386430 (= res!2627008 (matchZipper!2315 lt!2371609 (t!378814 s!2326)))))

(assert (=> b!6386430 (=> res!2627008 e!3876536)))

(assert (=> b!6386430 (= (matchZipper!2315 ((_ map or) lt!2371609 lt!2371617) (t!378814 s!2326)) e!3876536)))

(declare-fun b!6386431 () Bool)

(declare-fun res!2626983 () Bool)

(assert (=> b!6386431 (=> res!2626983 e!3876527)))

(declare-fun generalisedConcat!1900 (List!65209) Regex!16303)

(assert (=> b!6386431 (= res!2626983 (not (= r!7292 (generalisedConcat!1900 (exprs!6187 (h!71534 zl!343))))))))

(declare-fun b!6386432 () Bool)

(declare-fun res!2627003 () Bool)

(assert (=> b!6386432 (=> res!2627003 e!3876540)))

(assert (=> b!6386432 (= res!2627003 (not (matchR!8486 (regTwo!33118 r!7292) (_2!36585 lt!2371613))))))

(declare-fun b!6386433 () Bool)

(declare-fun Unit!158546 () Unit!158543)

(assert (=> b!6386433 (= e!3876525 Unit!158546)))

(declare-fun b!6386434 () Bool)

(declare-fun nullable!6296 (Regex!16303) Bool)

(assert (=> b!6386434 (= e!3876519 (nullable!6296 (regOne!33118 (regOne!33118 r!7292))))))

(declare-fun b!6386435 () Bool)

(declare-fun res!2627006 () Bool)

(assert (=> b!6386435 (=> res!2627006 e!3876527)))

(declare-fun isEmpty!37220 (List!65210) Bool)

(assert (=> b!6386435 (= res!2627006 (not (isEmpty!37220 (t!378816 zl!343))))))

(declare-fun b!6386436 () Bool)

(declare-fun res!2626988 () Bool)

(assert (=> b!6386436 (=> res!2626988 e!3876538)))

(declare-fun lt!2371606 () Context!11374)

(assert (=> b!6386436 (= res!2626988 (not (= (unfocusZipper!2045 (Cons!65086 lt!2371606 Nil!65086)) lt!2371623)))))

(assert (=> b!6386437 (= e!3876534 e!3876540)))

(declare-fun res!2626980 () Bool)

(assert (=> b!6386437 (=> res!2626980 e!3876540)))

(declare-fun ++!14371 (List!65208 List!65208) List!65208)

(assert (=> b!6386437 (= res!2626980 (not (= (++!14371 (_1!36585 lt!2371613) (_2!36585 lt!2371613)) s!2326)))))

(declare-datatypes ((Option!16194 0))(
  ( (None!16193) (Some!16193 (v!52362 tuple2!66564)) )
))
(declare-fun lt!2371615 () Option!16194)

(declare-fun get!22538 (Option!16194) tuple2!66564)

(assert (=> b!6386437 (= lt!2371613 (get!22538 lt!2371615))))

(declare-fun Exists!3373 (Int) Bool)

(assert (=> b!6386437 (= (Exists!3373 lambda!352452) (Exists!3373 lambda!352453))))

(declare-fun lt!2371601 () Unit!158543)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1910 (Regex!16303 Regex!16303 List!65208) Unit!158543)

(assert (=> b!6386437 (= lt!2371601 (lemmaExistCutMatchRandMatchRSpecEquivalent!1910 lt!2371616 (regTwo!33118 r!7292) s!2326))))

(declare-fun isDefined!12897 (Option!16194) Bool)

(assert (=> b!6386437 (= (isDefined!12897 lt!2371615) (Exists!3373 lambda!352452))))

(declare-fun findConcatSeparation!2608 (Regex!16303 Regex!16303 List!65208 List!65208 List!65208) Option!16194)

(assert (=> b!6386437 (= lt!2371615 (findConcatSeparation!2608 lt!2371616 (regTwo!33118 r!7292) Nil!65084 s!2326 s!2326))))

(declare-fun lt!2371627 () Unit!158543)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2372 (Regex!16303 Regex!16303 List!65208) Unit!158543)

(assert (=> b!6386437 (= lt!2371627 (lemmaFindConcatSeparationEquivalentToExists!2372 lt!2371616 (regTwo!33118 r!7292) s!2326))))

(declare-fun e!3876531 () Bool)

(assert (=> b!6386438 (= e!3876531 e!3876539)))

(declare-fun res!2626996 () Bool)

(assert (=> b!6386438 (=> res!2626996 e!3876539)))

(assert (=> b!6386438 (= res!2626996 (or (and ((_ is ElementMatch!16303) (regOne!33118 r!7292)) (= (c!1163902 (regOne!33118 r!7292)) (h!71532 s!2326))) ((_ is Union!16303) (regOne!33118 r!7292))))))

(declare-fun lt!2371621 () Unit!158543)

(assert (=> b!6386438 (= lt!2371621 e!3876525)))

(declare-fun c!1163901 () Bool)

(assert (=> b!6386438 (= c!1163901 (nullable!6296 (h!71533 (exprs!6187 (h!71534 zl!343)))))))

(declare-fun lambda!352451 () Int)

(declare-fun flatMap!1808 ((InoxSet Context!11374) Int) (InoxSet Context!11374))

(declare-fun derivationStepZipperUp!1477 (Context!11374 C!32876) (InoxSet Context!11374))

(assert (=> b!6386438 (= (flatMap!1808 z!1189 lambda!352451) (derivationStepZipperUp!1477 (h!71534 zl!343) (h!71532 s!2326)))))

(declare-fun lt!2371622 () Unit!158543)

(declare-fun lemmaFlatMapOnSingletonSet!1334 ((InoxSet Context!11374) Context!11374 Int) Unit!158543)

(assert (=> b!6386438 (= lt!2371622 (lemmaFlatMapOnSingletonSet!1334 z!1189 (h!71534 zl!343) lambda!352451))))

(assert (=> b!6386438 (= lt!2371617 (derivationStepZipperUp!1477 lt!2371596 (h!71532 s!2326)))))

(declare-fun derivationStepZipperDown!1551 (Regex!16303 Context!11374 C!32876) (InoxSet Context!11374))

(assert (=> b!6386438 (= lt!2371609 (derivationStepZipperDown!1551 (h!71533 (exprs!6187 (h!71534 zl!343))) lt!2371596 (h!71532 s!2326)))))

(assert (=> b!6386438 (= lt!2371596 (Context!11375 (t!378815 (exprs!6187 (h!71534 zl!343)))))))

(declare-fun lt!2371611 () (InoxSet Context!11374))

(assert (=> b!6386438 (= lt!2371611 (derivationStepZipperUp!1477 (Context!11375 (Cons!65085 (h!71533 (exprs!6187 (h!71534 zl!343))) (t!378815 (exprs!6187 (h!71534 zl!343))))) (h!71532 s!2326)))))

(declare-fun b!6386439 () Bool)

(declare-fun lt!2371612 () Bool)

(assert (=> b!6386439 (= e!3876523 (or (not lt!2371598) lt!2371612))))

(declare-fun b!6386440 () Bool)

(assert (=> b!6386440 (= e!3876522 (not e!3876527))))

(declare-fun res!2626989 () Bool)

(assert (=> b!6386440 (=> res!2626989 e!3876527)))

(assert (=> b!6386440 (= res!2626989 (not ((_ is Cons!65086) zl!343)))))

(assert (=> b!6386440 (= lt!2371598 lt!2371612)))

(assert (=> b!6386440 (= lt!2371612 (matchRSpec!3404 r!7292 s!2326))))

(assert (=> b!6386440 (= lt!2371598 (matchR!8486 r!7292 s!2326))))

(declare-fun lt!2371625 () Unit!158543)

(assert (=> b!6386440 (= lt!2371625 (mainMatchTheorem!3404 r!7292 s!2326))))

(declare-fun b!6386441 () Bool)

(declare-fun tp!1776650 () Bool)

(assert (=> b!6386441 (= e!3876532 tp!1776650)))

(declare-fun b!6386442 () Bool)

(declare-fun e!3876520 () Bool)

(assert (=> b!6386442 (= e!3876539 e!3876520)))

(declare-fun res!2626993 () Bool)

(assert (=> b!6386442 (=> res!2626993 e!3876520)))

(declare-fun lt!2371610 () (InoxSet Context!11374))

(assert (=> b!6386442 (= res!2626993 (not (= lt!2371609 lt!2371610)))))

(assert (=> b!6386442 (= lt!2371610 (derivationStepZipperDown!1551 (reg!16632 (regOne!33118 r!7292)) lt!2371606 (h!71532 s!2326)))))

(declare-fun lt!2371628 () List!65209)

(assert (=> b!6386442 (= lt!2371606 (Context!11375 lt!2371628))))

(assert (=> b!6386442 (= lt!2371628 (Cons!65085 lt!2371616 (t!378815 (exprs!6187 (h!71534 zl!343)))))))

(assert (=> b!6386442 (= lt!2371616 (Star!16303 (reg!16632 (regOne!33118 r!7292))))))

(declare-fun b!6386443 () Bool)

(declare-fun e!3876526 () Bool)

(declare-fun tp!1776645 () Bool)

(assert (=> b!6386443 (= e!3876526 (and tp_is_empty!41859 tp!1776645))))

(declare-fun b!6386444 () Bool)

(declare-fun res!2627007 () Bool)

(assert (=> b!6386444 (=> res!2627007 e!3876531)))

(declare-fun isEmpty!37221 (List!65209) Bool)

(assert (=> b!6386444 (= res!2627007 (isEmpty!37221 (t!378815 (exprs!6187 (h!71534 zl!343)))))))

(declare-fun b!6386445 () Bool)

(assert (=> b!6386445 (= e!3876520 e!3876529)))

(declare-fun res!2626987 () Bool)

(assert (=> b!6386445 (=> res!2626987 e!3876529)))

(assert (=> b!6386445 (= res!2626987 (not (= lt!2371592 lt!2371610)))))

(declare-fun lt!2371620 () Context!11374)

(assert (=> b!6386445 (= (flatMap!1808 lt!2371602 lambda!352451) (derivationStepZipperUp!1477 lt!2371620 (h!71532 s!2326)))))

(declare-fun lt!2371607 () Unit!158543)

(assert (=> b!6386445 (= lt!2371607 (lemmaFlatMapOnSingletonSet!1334 lt!2371602 lt!2371620 lambda!352451))))

(declare-fun lt!2371630 () (InoxSet Context!11374))

(assert (=> b!6386445 (= lt!2371630 (derivationStepZipperUp!1477 lt!2371620 (h!71532 s!2326)))))

(declare-fun derivationStepZipper!2269 ((InoxSet Context!11374) C!32876) (InoxSet Context!11374))

(assert (=> b!6386445 (= lt!2371592 (derivationStepZipper!2269 lt!2371602 (h!71532 s!2326)))))

(assert (=> b!6386445 (= lt!2371602 (store ((as const (Array Context!11374 Bool)) false) lt!2371620 true))))

(assert (=> b!6386445 (= lt!2371620 (Context!11375 (Cons!65085 (reg!16632 (regOne!33118 r!7292)) lt!2371628)))))

(declare-fun b!6386446 () Bool)

(declare-fun res!2626991 () Bool)

(assert (=> b!6386446 (=> res!2626991 e!3876539)))

(assert (=> b!6386446 (= res!2626991 (or ((_ is Concat!25148) (regOne!33118 r!7292)) (not ((_ is Star!16303) (regOne!33118 r!7292)))))))

(declare-fun b!6386447 () Bool)

(assert (=> b!6386447 (= e!3876540 e!3876524)))

(declare-fun res!2626985 () Bool)

(assert (=> b!6386447 (=> res!2626985 e!3876524)))

(declare-fun lt!2371619 () (InoxSet Context!11374))

(assert (=> b!6386447 (= res!2626985 (not (= lt!2371617 (derivationStepZipper!2269 lt!2371619 (h!71532 s!2326)))))))

(assert (=> b!6386447 (= (flatMap!1808 lt!2371619 lambda!352451) (derivationStepZipperUp!1477 lt!2371596 (h!71532 s!2326)))))

(declare-fun lt!2371594 () Unit!158543)

(assert (=> b!6386447 (= lt!2371594 (lemmaFlatMapOnSingletonSet!1334 lt!2371619 lt!2371596 lambda!352451))))

(assert (=> b!6386447 (= lt!2371619 (store ((as const (Array Context!11374 Bool)) false) lt!2371596 true))))

(declare-fun b!6386448 () Bool)

(declare-fun e!3876528 () Bool)

(assert (=> b!6386448 (= e!3876528 e!3876538)))

(declare-fun res!2626992 () Bool)

(assert (=> b!6386448 (=> res!2626992 e!3876538)))

(declare-fun lt!2371605 () Context!11374)

(assert (=> b!6386448 (= res!2626992 (not (= (unfocusZipper!2045 (Cons!65086 lt!2371605 Nil!65086)) (reg!16632 (regOne!33118 r!7292)))))))

(declare-fun lt!2371604 () (InoxSet Context!11374))

(assert (=> b!6386448 (= (flatMap!1808 lt!2371604 lambda!352451) (derivationStepZipperUp!1477 lt!2371606 (h!71532 s!2326)))))

(declare-fun lt!2371599 () Unit!158543)

(assert (=> b!6386448 (= lt!2371599 (lemmaFlatMapOnSingletonSet!1334 lt!2371604 lt!2371606 lambda!352451))))

(declare-fun lt!2371618 () (InoxSet Context!11374))

(assert (=> b!6386448 (= (flatMap!1808 lt!2371618 lambda!352451) (derivationStepZipperUp!1477 lt!2371605 (h!71532 s!2326)))))

(declare-fun lt!2371600 () Unit!158543)

(assert (=> b!6386448 (= lt!2371600 (lemmaFlatMapOnSingletonSet!1334 lt!2371618 lt!2371605 lambda!352451))))

(declare-fun lt!2371626 () (InoxSet Context!11374))

(assert (=> b!6386448 (= lt!2371626 (derivationStepZipperUp!1477 lt!2371606 (h!71532 s!2326)))))

(declare-fun lt!2371608 () (InoxSet Context!11374))

(assert (=> b!6386448 (= lt!2371608 (derivationStepZipperUp!1477 lt!2371605 (h!71532 s!2326)))))

(assert (=> b!6386448 (= lt!2371604 (store ((as const (Array Context!11374 Bool)) false) lt!2371606 true))))

(assert (=> b!6386448 (= lt!2371618 (store ((as const (Array Context!11374 Bool)) false) lt!2371605 true))))

(assert (=> b!6386448 (= lt!2371605 (Context!11375 (Cons!65085 (reg!16632 (regOne!33118 r!7292)) Nil!65085)))))

(declare-fun b!6386449 () Bool)

(declare-fun res!2627010 () Bool)

(assert (=> b!6386449 (=> res!2627010 e!3876529)))

(assert (=> b!6386449 (= res!2627010 (not (= lt!2371603 r!7292)))))

(declare-fun b!6386450 () Bool)

(declare-fun res!2626998 () Bool)

(assert (=> b!6386450 (=> res!2626998 e!3876540)))

(declare-fun isEmpty!37222 (List!65208) Bool)

(assert (=> b!6386450 (= res!2626998 (not (isEmpty!37222 (_1!36585 lt!2371613))))))

(declare-fun b!6386451 () Bool)

(declare-fun res!2626982 () Bool)

(assert (=> b!6386451 (=> res!2626982 e!3876527)))

(assert (=> b!6386451 (= res!2626982 (or ((_ is EmptyExpr!16303) r!7292) ((_ is EmptyLang!16303) r!7292) ((_ is ElementMatch!16303) r!7292) ((_ is Union!16303) r!7292) (not ((_ is Concat!25148) r!7292))))))

(assert (=> b!6386452 (= e!3876527 e!3876531)))

(declare-fun res!2627009 () Bool)

(assert (=> b!6386452 (=> res!2627009 e!3876531)))

(declare-fun lt!2371624 () Bool)

(assert (=> b!6386452 (= res!2627009 (or (not (= lt!2371598 lt!2371624)) ((_ is Nil!65084) s!2326)))))

(assert (=> b!6386452 (= (Exists!3373 lambda!352449) (Exists!3373 lambda!352450))))

(declare-fun lt!2371597 () Unit!158543)

(assert (=> b!6386452 (= lt!2371597 (lemmaExistCutMatchRandMatchRSpecEquivalent!1910 (regOne!33118 r!7292) (regTwo!33118 r!7292) s!2326))))

(assert (=> b!6386452 (= lt!2371624 (Exists!3373 lambda!352449))))

(assert (=> b!6386452 (= lt!2371624 (isDefined!12897 (findConcatSeparation!2608 (regOne!33118 r!7292) (regTwo!33118 r!7292) Nil!65084 s!2326 s!2326)))))

(declare-fun lt!2371614 () Unit!158543)

(assert (=> b!6386452 (= lt!2371614 (lemmaFindConcatSeparationEquivalentToExists!2372 (regOne!33118 r!7292) (regTwo!33118 r!7292) s!2326))))

(declare-fun b!6386453 () Bool)

(assert (=> b!6386453 (= e!3876521 e!3876528)))

(declare-fun res!2626986 () Bool)

(assert (=> b!6386453 (=> res!2626986 e!3876528)))

(assert (=> b!6386453 (= res!2626986 (not (= (unfocusZipper!2045 (Cons!65086 lt!2371620 Nil!65086)) lt!2371593)))))

(assert (=> b!6386453 (= lt!2371593 (Concat!25148 (reg!16632 (regOne!33118 r!7292)) lt!2371623))))

(declare-fun b!6386418 () Bool)

(declare-fun tp!1776641 () Bool)

(assert (=> b!6386418 (= e!3876535 tp!1776641)))

(declare-fun res!2626997 () Bool)

(assert (=> start!632626 (=> (not res!2626997) (not e!3876533))))

(declare-fun validRegex!8039 (Regex!16303) Bool)

(assert (=> start!632626 (= res!2626997 (validRegex!8039 r!7292))))

(assert (=> start!632626 e!3876533))

(assert (=> start!632626 e!3876532))

(declare-fun condSetEmpty!43606 () Bool)

(assert (=> start!632626 (= condSetEmpty!43606 (= z!1189 ((as const (Array Context!11374 Bool)) false)))))

(assert (=> start!632626 setRes!43606))

(assert (=> start!632626 e!3876530))

(assert (=> start!632626 e!3876526))

(declare-fun b!6386454 () Bool)

(declare-fun res!2627001 () Bool)

(assert (=> b!6386454 (=> res!2627001 e!3876524)))

(declare-fun regexDepth!330 (Regex!16303) Int)

(assert (=> b!6386454 (= res!2627001 (< (regexDepth!330 r!7292) (regexDepth!330 (generalisedConcat!1900 (t!378815 (exprs!6187 (h!71534 zl!343)))))))))

(declare-fun b!6386455 () Bool)

(declare-fun tp!1776648 () Bool)

(declare-fun tp!1776646 () Bool)

(assert (=> b!6386455 (= e!3876532 (and tp!1776648 tp!1776646))))

(assert (= (and start!632626 res!2626997) b!6386428))

(assert (= (and b!6386428 res!2626984) b!6386415))

(assert (= (and b!6386415 res!2627000) b!6386440))

(assert (= (and b!6386440 (not res!2626989)) b!6386435))

(assert (= (and b!6386435 (not res!2627006)) b!6386431))

(assert (= (and b!6386431 (not res!2626983)) b!6386426))

(assert (= (and b!6386426 (not res!2627002)) b!6386422))

(assert (= (and b!6386422 (not res!2627005)) b!6386451))

(assert (= (and b!6386451 (not res!2626982)) b!6386452))

(assert (= (and b!6386452 (not res!2627009)) b!6386444))

(assert (= (and b!6386444 (not res!2627007)) b!6386438))

(assert (= (and b!6386438 c!1163901) b!6386430))

(assert (= (and b!6386438 (not c!1163901)) b!6386433))

(assert (= (and b!6386430 (not res!2627008)) b!6386416))

(assert (= (and b!6386438 (not res!2626996)) b!6386427))

(assert (= (and b!6386427 res!2626995) b!6386434))

(assert (= (and b!6386427 (not res!2626999)) b!6386446))

(assert (= (and b!6386446 (not res!2626991)) b!6386442))

(assert (= (and b!6386442 (not res!2626993)) b!6386445))

(assert (= (and b!6386445 (not res!2626987)) b!6386423))

(assert (= (and b!6386423 (not res!2626979)) b!6386449))

(assert (= (and b!6386449 (not res!2627010)) b!6386424))

(assert (= (and b!6386424 (not res!2626981)) b!6386453))

(assert (= (and b!6386453 (not res!2626986)) b!6386448))

(assert (= (and b!6386448 (not res!2626992)) b!6386436))

(assert (= (and b!6386436 (not res!2626988)) b!6386425))

(assert (= (and b!6386425 res!2627004) b!6386439))

(assert (= (and b!6386425 (not res!2626990)) b!6386437))

(assert (= (and b!6386437 (not res!2626980)) b!6386414))

(assert (= (and b!6386414 (not res!2626994)) b!6386432))

(assert (= (and b!6386432 (not res!2627003)) b!6386450))

(assert (= (and b!6386450 (not res!2626998)) b!6386447))

(assert (= (and b!6386447 (not res!2626985)) b!6386454))

(assert (= (and b!6386454 (not res!2627001)) b!6386429))

(assert (= (and start!632626 ((_ is ElementMatch!16303) r!7292)) b!6386417))

(assert (= (and start!632626 ((_ is Concat!25148) r!7292)) b!6386455))

(assert (= (and start!632626 ((_ is Star!16303) r!7292)) b!6386441))

(assert (= (and start!632626 ((_ is Union!16303) r!7292)) b!6386421))

(assert (= (and start!632626 condSetEmpty!43606) setIsEmpty!43606))

(assert (= (and start!632626 (not condSetEmpty!43606)) setNonEmpty!43606))

(assert (= setNonEmpty!43606 b!6386418))

(assert (= b!6386420 b!6386419))

(assert (= (and start!632626 ((_ is Cons!65086) zl!343)) b!6386420))

(assert (= (and start!632626 ((_ is Cons!65084) s!2326)) b!6386443))

(declare-fun m!7185936 () Bool)

(assert (=> b!6386431 m!7185936))

(declare-fun m!7185938 () Bool)

(assert (=> b!6386440 m!7185938))

(declare-fun m!7185940 () Bool)

(assert (=> b!6386440 m!7185940))

(declare-fun m!7185942 () Bool)

(assert (=> b!6386440 m!7185942))

(declare-fun m!7185944 () Bool)

(assert (=> b!6386448 m!7185944))

(declare-fun m!7185946 () Bool)

(assert (=> b!6386448 m!7185946))

(declare-fun m!7185948 () Bool)

(assert (=> b!6386448 m!7185948))

(declare-fun m!7185950 () Bool)

(assert (=> b!6386448 m!7185950))

(declare-fun m!7185952 () Bool)

(assert (=> b!6386448 m!7185952))

(declare-fun m!7185954 () Bool)

(assert (=> b!6386448 m!7185954))

(declare-fun m!7185956 () Bool)

(assert (=> b!6386448 m!7185956))

(declare-fun m!7185958 () Bool)

(assert (=> b!6386448 m!7185958))

(declare-fun m!7185960 () Bool)

(assert (=> b!6386448 m!7185960))

(declare-fun m!7185962 () Bool)

(assert (=> b!6386444 m!7185962))

(declare-fun m!7185964 () Bool)

(assert (=> b!6386447 m!7185964))

(declare-fun m!7185966 () Bool)

(assert (=> b!6386447 m!7185966))

(declare-fun m!7185968 () Bool)

(assert (=> b!6386447 m!7185968))

(declare-fun m!7185970 () Bool)

(assert (=> b!6386447 m!7185970))

(declare-fun m!7185972 () Bool)

(assert (=> b!6386447 m!7185972))

(declare-fun m!7185974 () Bool)

(assert (=> b!6386414 m!7185974))

(declare-fun m!7185976 () Bool)

(assert (=> b!6386428 m!7185976))

(declare-fun m!7185978 () Bool)

(assert (=> b!6386442 m!7185978))

(declare-fun m!7185980 () Bool)

(assert (=> b!6386437 m!7185980))

(declare-fun m!7185982 () Bool)

(assert (=> b!6386437 m!7185982))

(declare-fun m!7185984 () Bool)

(assert (=> b!6386437 m!7185984))

(declare-fun m!7185986 () Bool)

(assert (=> b!6386437 m!7185986))

(declare-fun m!7185988 () Bool)

(assert (=> b!6386437 m!7185988))

(declare-fun m!7185990 () Bool)

(assert (=> b!6386437 m!7185990))

(assert (=> b!6386437 m!7185988))

(declare-fun m!7185992 () Bool)

(assert (=> b!6386437 m!7185992))

(declare-fun m!7185994 () Bool)

(assert (=> b!6386437 m!7185994))

(declare-fun m!7185996 () Bool)

(assert (=> b!6386416 m!7185996))

(declare-fun m!7185998 () Bool)

(assert (=> b!6386436 m!7185998))

(declare-fun m!7186000 () Bool)

(assert (=> b!6386432 m!7186000))

(declare-fun m!7186002 () Bool)

(assert (=> start!632626 m!7186002))

(declare-fun m!7186004 () Bool)

(assert (=> b!6386434 m!7186004))

(declare-fun m!7186006 () Bool)

(assert (=> b!6386429 m!7186006))

(declare-fun m!7186008 () Bool)

(assert (=> setNonEmpty!43606 m!7186008))

(declare-fun m!7186010 () Bool)

(assert (=> b!6386435 m!7186010))

(declare-fun m!7186012 () Bool)

(assert (=> b!6386420 m!7186012))

(declare-fun m!7186014 () Bool)

(assert (=> b!6386425 m!7186014))

(declare-fun m!7186016 () Bool)

(assert (=> b!6386425 m!7186016))

(declare-fun m!7186018 () Bool)

(assert (=> b!6386425 m!7186018))

(declare-fun m!7186020 () Bool)

(assert (=> b!6386453 m!7186020))

(declare-fun m!7186022 () Bool)

(assert (=> b!6386422 m!7186022))

(assert (=> b!6386422 m!7186022))

(declare-fun m!7186024 () Bool)

(assert (=> b!6386422 m!7186024))

(declare-fun m!7186026 () Bool)

(assert (=> b!6386452 m!7186026))

(declare-fun m!7186028 () Bool)

(assert (=> b!6386452 m!7186028))

(declare-fun m!7186030 () Bool)

(assert (=> b!6386452 m!7186030))

(assert (=> b!6386452 m!7186030))

(declare-fun m!7186032 () Bool)

(assert (=> b!6386452 m!7186032))

(declare-fun m!7186034 () Bool)

(assert (=> b!6386452 m!7186034))

(assert (=> b!6386452 m!7186026))

(declare-fun m!7186036 () Bool)

(assert (=> b!6386452 m!7186036))

(declare-fun m!7186038 () Bool)

(assert (=> b!6386438 m!7186038))

(declare-fun m!7186040 () Bool)

(assert (=> b!6386438 m!7186040))

(assert (=> b!6386438 m!7185964))

(declare-fun m!7186042 () Bool)

(assert (=> b!6386438 m!7186042))

(declare-fun m!7186044 () Bool)

(assert (=> b!6386438 m!7186044))

(declare-fun m!7186046 () Bool)

(assert (=> b!6386438 m!7186046))

(declare-fun m!7186048 () Bool)

(assert (=> b!6386438 m!7186048))

(declare-fun m!7186050 () Bool)

(assert (=> b!6386423 m!7186050))

(declare-fun m!7186052 () Bool)

(assert (=> b!6386423 m!7186052))

(declare-fun m!7186054 () Bool)

(assert (=> b!6386430 m!7186054))

(declare-fun m!7186056 () Bool)

(assert (=> b!6386430 m!7186056))

(declare-fun m!7186058 () Bool)

(assert (=> b!6386430 m!7186058))

(declare-fun m!7186060 () Bool)

(assert (=> b!6386415 m!7186060))

(declare-fun m!7186062 () Bool)

(assert (=> b!6386450 m!7186062))

(declare-fun m!7186064 () Bool)

(assert (=> b!6386454 m!7186064))

(declare-fun m!7186066 () Bool)

(assert (=> b!6386454 m!7186066))

(assert (=> b!6386454 m!7186066))

(declare-fun m!7186068 () Bool)

(assert (=> b!6386454 m!7186068))

(declare-fun m!7186070 () Bool)

(assert (=> b!6386445 m!7186070))

(declare-fun m!7186072 () Bool)

(assert (=> b!6386445 m!7186072))

(declare-fun m!7186074 () Bool)

(assert (=> b!6386445 m!7186074))

(declare-fun m!7186076 () Bool)

(assert (=> b!6386445 m!7186076))

(declare-fun m!7186078 () Bool)

(assert (=> b!6386445 m!7186078))

(check-sat (not b!6386420) (not b!6386443) (not b!6386425) (not b!6386415) (not b!6386431) (not b!6386445) (not b!6386436) (not b!6386434) (not b!6386416) (not b!6386428) (not b!6386452) (not b!6386429) (not setNonEmpty!43606) (not b!6386419) (not b!6386450) (not b!6386437) tp_is_empty!41859 (not b!6386435) (not b!6386444) (not b!6386414) (not b!6386447) (not b!6386440) (not b!6386448) (not b!6386418) (not b!6386442) (not b!6386421) (not b!6386441) (not b!6386430) (not b!6386422) (not b!6386454) (not b!6386423) (not start!632626) (not b!6386432) (not b!6386438) (not b!6386453) (not b!6386455))
(check-sat)
(get-model)

(declare-fun bs!1598513 () Bool)

(declare-fun b!6386855 () Bool)

(assert (= bs!1598513 (and b!6386855 b!6386452)))

(declare-fun lambda!352481 () Int)

(assert (=> bs!1598513 (not (= lambda!352481 lambda!352449))))

(assert (=> bs!1598513 (not (= lambda!352481 lambda!352450))))

(declare-fun bs!1598516 () Bool)

(assert (= bs!1598516 (and b!6386855 b!6386437)))

(assert (=> bs!1598516 (not (= lambda!352481 lambda!352452))))

(assert (=> bs!1598516 (not (= lambda!352481 lambda!352453))))

(assert (=> b!6386855 true))

(assert (=> b!6386855 true))

(declare-fun bs!1598517 () Bool)

(declare-fun b!6386858 () Bool)

(assert (= bs!1598517 (and b!6386858 b!6386855)))

(declare-fun lambda!352483 () Int)

(assert (=> bs!1598517 (not (= lambda!352483 lambda!352481))))

(declare-fun bs!1598518 () Bool)

(assert (= bs!1598518 (and b!6386858 b!6386437)))

(assert (=> bs!1598518 (= (= (regOne!33118 r!7292) lt!2371616) (= lambda!352483 lambda!352453))))

(declare-fun bs!1598519 () Bool)

(assert (= bs!1598519 (and b!6386858 b!6386452)))

(assert (=> bs!1598519 (= lambda!352483 lambda!352450)))

(assert (=> bs!1598518 (not (= lambda!352483 lambda!352452))))

(assert (=> bs!1598519 (not (= lambda!352483 lambda!352449))))

(assert (=> b!6386858 true))

(assert (=> b!6386858 true))

(declare-fun b!6386849 () Bool)

(declare-fun e!3876765 () Bool)

(declare-fun call!546006 () Bool)

(assert (=> b!6386849 (= e!3876765 call!546006)))

(declare-fun b!6386850 () Bool)

(declare-fun c!1164026 () Bool)

(assert (=> b!6386850 (= c!1164026 ((_ is ElementMatch!16303) r!7292))))

(declare-fun e!3876763 () Bool)

(declare-fun e!3876760 () Bool)

(assert (=> b!6386850 (= e!3876763 e!3876760)))

(declare-fun b!6386851 () Bool)

(assert (=> b!6386851 (= e!3876760 (= s!2326 (Cons!65084 (c!1163902 r!7292) Nil!65084)))))

(declare-fun b!6386852 () Bool)

(declare-fun e!3876761 () Bool)

(declare-fun e!3876762 () Bool)

(assert (=> b!6386852 (= e!3876761 e!3876762)))

(declare-fun res!2627156 () Bool)

(assert (=> b!6386852 (= res!2627156 (matchRSpec!3404 (regOne!33119 r!7292) s!2326))))

(assert (=> b!6386852 (=> res!2627156 e!3876762)))

(declare-fun b!6386853 () Bool)

(assert (=> b!6386853 (= e!3876762 (matchRSpec!3404 (regTwo!33119 r!7292) s!2326))))

(declare-fun call!546005 () Bool)

(declare-fun c!1164024 () Bool)

(declare-fun bm!546000 () Bool)

(assert (=> bm!546000 (= call!546005 (Exists!3373 (ite c!1164024 lambda!352481 lambda!352483)))))

(declare-fun d!2002261 () Bool)

(declare-fun c!1164025 () Bool)

(assert (=> d!2002261 (= c!1164025 ((_ is EmptyExpr!16303) r!7292))))

(assert (=> d!2002261 (= (matchRSpec!3404 r!7292 s!2326) e!3876765)))

(declare-fun b!6386854 () Bool)

(declare-fun res!2627157 () Bool)

(declare-fun e!3876764 () Bool)

(assert (=> b!6386854 (=> res!2627157 e!3876764)))

(assert (=> b!6386854 (= res!2627157 call!546006)))

(declare-fun e!3876759 () Bool)

(assert (=> b!6386854 (= e!3876759 e!3876764)))

(assert (=> b!6386855 (= e!3876764 call!546005)))

(declare-fun b!6386856 () Bool)

(assert (=> b!6386856 (= e!3876765 e!3876763)))

(declare-fun res!2627158 () Bool)

(assert (=> b!6386856 (= res!2627158 (not ((_ is EmptyLang!16303) r!7292)))))

(assert (=> b!6386856 (=> (not res!2627158) (not e!3876763))))

(declare-fun b!6386857 () Bool)

(declare-fun c!1164027 () Bool)

(assert (=> b!6386857 (= c!1164027 ((_ is Union!16303) r!7292))))

(assert (=> b!6386857 (= e!3876760 e!3876761)))

(declare-fun bm!546001 () Bool)

(assert (=> bm!546001 (= call!546006 (isEmpty!37222 s!2326))))

(assert (=> b!6386858 (= e!3876759 call!546005)))

(declare-fun b!6386859 () Bool)

(assert (=> b!6386859 (= e!3876761 e!3876759)))

(assert (=> b!6386859 (= c!1164024 ((_ is Star!16303) r!7292))))

(assert (= (and d!2002261 c!1164025) b!6386849))

(assert (= (and d!2002261 (not c!1164025)) b!6386856))

(assert (= (and b!6386856 res!2627158) b!6386850))

(assert (= (and b!6386850 c!1164026) b!6386851))

(assert (= (and b!6386850 (not c!1164026)) b!6386857))

(assert (= (and b!6386857 c!1164027) b!6386852))

(assert (= (and b!6386857 (not c!1164027)) b!6386859))

(assert (= (and b!6386852 (not res!2627156)) b!6386853))

(assert (= (and b!6386859 c!1164024) b!6386854))

(assert (= (and b!6386859 (not c!1164024)) b!6386858))

(assert (= (and b!6386854 (not res!2627157)) b!6386855))

(assert (= (or b!6386855 b!6386858) bm!546000))

(assert (= (or b!6386849 b!6386854) bm!546001))

(declare-fun m!7186368 () Bool)

(assert (=> b!6386852 m!7186368))

(declare-fun m!7186370 () Bool)

(assert (=> b!6386853 m!7186370))

(declare-fun m!7186372 () Bool)

(assert (=> bm!546000 m!7186372))

(declare-fun m!7186374 () Bool)

(assert (=> bm!546001 m!7186374))

(assert (=> b!6386440 d!2002261))

(declare-fun bm!546021 () Bool)

(declare-fun call!546026 () Bool)

(assert (=> bm!546021 (= call!546026 (isEmpty!37222 s!2326))))

(declare-fun b!6386987 () Bool)

(declare-fun e!3876843 () Bool)

(declare-fun e!3876845 () Bool)

(assert (=> b!6386987 (= e!3876843 e!3876845)))

(declare-fun res!2627209 () Bool)

(assert (=> b!6386987 (=> res!2627209 e!3876845)))

(assert (=> b!6386987 (= res!2627209 call!546026)))

(declare-fun b!6386988 () Bool)

(declare-fun e!3876847 () Bool)

(assert (=> b!6386988 (= e!3876847 e!3876843)))

(declare-fun res!2627207 () Bool)

(assert (=> b!6386988 (=> (not res!2627207) (not e!3876843))))

(declare-fun lt!2371689 () Bool)

(assert (=> b!6386988 (= res!2627207 (not lt!2371689))))

(declare-fun b!6386989 () Bool)

(declare-fun res!2627204 () Bool)

(declare-fun e!3876844 () Bool)

(assert (=> b!6386989 (=> (not res!2627204) (not e!3876844))))

(assert (=> b!6386989 (= res!2627204 (not call!546026))))

(declare-fun b!6386990 () Bool)

(declare-fun e!3876842 () Bool)

(declare-fun e!3876848 () Bool)

(assert (=> b!6386990 (= e!3876842 e!3876848)))

(declare-fun c!1164073 () Bool)

(assert (=> b!6386990 (= c!1164073 ((_ is EmptyLang!16303) r!7292))))

(declare-fun b!6386991 () Bool)

(declare-fun head!13096 (List!65208) C!32876)

(assert (=> b!6386991 (= e!3876845 (not (= (head!13096 s!2326) (c!1163902 r!7292))))))

(declare-fun b!6386992 () Bool)

(declare-fun res!2627202 () Bool)

(assert (=> b!6386992 (=> res!2627202 e!3876847)))

(assert (=> b!6386992 (= res!2627202 (not ((_ is ElementMatch!16303) r!7292)))))

(assert (=> b!6386992 (= e!3876848 e!3876847)))

(declare-fun b!6386993 () Bool)

(declare-fun res!2627206 () Bool)

(assert (=> b!6386993 (=> (not res!2627206) (not e!3876844))))

(declare-fun tail!12181 (List!65208) List!65208)

(assert (=> b!6386993 (= res!2627206 (isEmpty!37222 (tail!12181 s!2326)))))

(declare-fun b!6386995 () Bool)

(declare-fun res!2627205 () Bool)

(assert (=> b!6386995 (=> res!2627205 e!3876845)))

(assert (=> b!6386995 (= res!2627205 (not (isEmpty!37222 (tail!12181 s!2326))))))

(declare-fun b!6386996 () Bool)

(assert (=> b!6386996 (= e!3876848 (not lt!2371689))))

(declare-fun b!6386997 () Bool)

(declare-fun e!3876846 () Bool)

(assert (=> b!6386997 (= e!3876846 (nullable!6296 r!7292))))

(declare-fun b!6386998 () Bool)

(assert (=> b!6386998 (= e!3876842 (= lt!2371689 call!546026))))

(declare-fun b!6386999 () Bool)

(declare-fun res!2627208 () Bool)

(assert (=> b!6386999 (=> res!2627208 e!3876847)))

(assert (=> b!6386999 (= res!2627208 e!3876844)))

(declare-fun res!2627203 () Bool)

(assert (=> b!6386999 (=> (not res!2627203) (not e!3876844))))

(assert (=> b!6386999 (= res!2627203 lt!2371689)))

(declare-fun b!6387000 () Bool)

(declare-fun derivativeStep!5007 (Regex!16303 C!32876) Regex!16303)

(assert (=> b!6387000 (= e!3876846 (matchR!8486 (derivativeStep!5007 r!7292 (head!13096 s!2326)) (tail!12181 s!2326)))))

(declare-fun d!2002291 () Bool)

(assert (=> d!2002291 e!3876842))

(declare-fun c!1164071 () Bool)

(assert (=> d!2002291 (= c!1164071 ((_ is EmptyExpr!16303) r!7292))))

(assert (=> d!2002291 (= lt!2371689 e!3876846)))

(declare-fun c!1164072 () Bool)

(assert (=> d!2002291 (= c!1164072 (isEmpty!37222 s!2326))))

(assert (=> d!2002291 (validRegex!8039 r!7292)))

(assert (=> d!2002291 (= (matchR!8486 r!7292 s!2326) lt!2371689)))

(declare-fun b!6386994 () Bool)

(assert (=> b!6386994 (= e!3876844 (= (head!13096 s!2326) (c!1163902 r!7292)))))

(assert (= (and d!2002291 c!1164072) b!6386997))

(assert (= (and d!2002291 (not c!1164072)) b!6387000))

(assert (= (and d!2002291 c!1164071) b!6386998))

(assert (= (and d!2002291 (not c!1164071)) b!6386990))

(assert (= (and b!6386990 c!1164073) b!6386996))

(assert (= (and b!6386990 (not c!1164073)) b!6386992))

(assert (= (and b!6386992 (not res!2627202)) b!6386999))

(assert (= (and b!6386999 res!2627203) b!6386989))

(assert (= (and b!6386989 res!2627204) b!6386993))

(assert (= (and b!6386993 res!2627206) b!6386994))

(assert (= (and b!6386999 (not res!2627208)) b!6386988))

(assert (= (and b!6386988 res!2627207) b!6386987))

(assert (= (and b!6386987 (not res!2627209)) b!6386995))

(assert (= (and b!6386995 (not res!2627205)) b!6386991))

(assert (= (or b!6386998 b!6386987 b!6386989) bm!546021))

(declare-fun m!7186430 () Bool)

(assert (=> b!6386991 m!7186430))

(declare-fun m!7186432 () Bool)

(assert (=> b!6386993 m!7186432))

(assert (=> b!6386993 m!7186432))

(declare-fun m!7186436 () Bool)

(assert (=> b!6386993 m!7186436))

(assert (=> b!6387000 m!7186430))

(assert (=> b!6387000 m!7186430))

(declare-fun m!7186440 () Bool)

(assert (=> b!6387000 m!7186440))

(assert (=> b!6387000 m!7186432))

(assert (=> b!6387000 m!7186440))

(assert (=> b!6387000 m!7186432))

(declare-fun m!7186448 () Bool)

(assert (=> b!6387000 m!7186448))

(declare-fun m!7186450 () Bool)

(assert (=> b!6386997 m!7186450))

(assert (=> b!6386995 m!7186432))

(assert (=> b!6386995 m!7186432))

(assert (=> b!6386995 m!7186436))

(assert (=> bm!546021 m!7186374))

(assert (=> d!2002291 m!7186374))

(assert (=> d!2002291 m!7186002))

(assert (=> b!6386994 m!7186430))

(assert (=> b!6386440 d!2002291))

(declare-fun d!2002313 () Bool)

(assert (=> d!2002313 (= (matchR!8486 r!7292 s!2326) (matchRSpec!3404 r!7292 s!2326))))

(declare-fun lt!2371697 () Unit!158543)

(declare-fun choose!47520 (Regex!16303 List!65208) Unit!158543)

(assert (=> d!2002313 (= lt!2371697 (choose!47520 r!7292 s!2326))))

(assert (=> d!2002313 (validRegex!8039 r!7292)))

(assert (=> d!2002313 (= (mainMatchTheorem!3404 r!7292 s!2326) lt!2371697)))

(declare-fun bs!1598558 () Bool)

(assert (= bs!1598558 d!2002313))

(assert (=> bs!1598558 m!7185940))

(assert (=> bs!1598558 m!7185938))

(declare-fun m!7186466 () Bool)

(assert (=> bs!1598558 m!7186466))

(assert (=> bs!1598558 m!7186002))

(assert (=> b!6386440 d!2002313))

(declare-fun b!6387096 () Bool)

(declare-fun e!3876899 () Bool)

(declare-fun lt!2371705 () Regex!16303)

(declare-fun isEmptyLang!1710 (Regex!16303) Bool)

(assert (=> b!6387096 (= e!3876899 (isEmptyLang!1710 lt!2371705))))

(declare-fun b!6387097 () Bool)

(declare-fun e!3876895 () Bool)

(assert (=> b!6387097 (= e!3876895 e!3876899)))

(declare-fun c!1164087 () Bool)

(assert (=> b!6387097 (= c!1164087 (isEmpty!37221 (unfocusZipperList!1724 zl!343)))))

(declare-fun b!6387098 () Bool)

(declare-fun e!3876896 () Bool)

(declare-fun head!13097 (List!65209) Regex!16303)

(assert (=> b!6387098 (= e!3876896 (= lt!2371705 (head!13097 (unfocusZipperList!1724 zl!343))))))

(declare-fun b!6387099 () Bool)

(declare-fun e!3876900 () Bool)

(assert (=> b!6387099 (= e!3876900 (isEmpty!37221 (t!378815 (unfocusZipperList!1724 zl!343))))))

(declare-fun b!6387100 () Bool)

(declare-fun e!3876898 () Regex!16303)

(assert (=> b!6387100 (= e!3876898 (Union!16303 (h!71533 (unfocusZipperList!1724 zl!343)) (generalisedUnion!2147 (t!378815 (unfocusZipperList!1724 zl!343)))))))

(declare-fun b!6387101 () Bool)

(declare-fun e!3876897 () Regex!16303)

(assert (=> b!6387101 (= e!3876897 e!3876898)))

(declare-fun c!1164088 () Bool)

(assert (=> b!6387101 (= c!1164088 ((_ is Cons!65085) (unfocusZipperList!1724 zl!343)))))

(declare-fun b!6387103 () Bool)

(declare-fun isUnion!1140 (Regex!16303) Bool)

(assert (=> b!6387103 (= e!3876896 (isUnion!1140 lt!2371705))))

(declare-fun b!6387104 () Bool)

(assert (=> b!6387104 (= e!3876899 e!3876896)))

(declare-fun c!1164090 () Bool)

(declare-fun tail!12182 (List!65209) List!65209)

(assert (=> b!6387104 (= c!1164090 (isEmpty!37221 (tail!12182 (unfocusZipperList!1724 zl!343))))))

(declare-fun b!6387105 () Bool)

(assert (=> b!6387105 (= e!3876898 EmptyLang!16303)))

(declare-fun b!6387102 () Bool)

(assert (=> b!6387102 (= e!3876897 (h!71533 (unfocusZipperList!1724 zl!343)))))

(declare-fun d!2002325 () Bool)

(assert (=> d!2002325 e!3876895))

(declare-fun res!2627225 () Bool)

(assert (=> d!2002325 (=> (not res!2627225) (not e!3876895))))

(assert (=> d!2002325 (= res!2627225 (validRegex!8039 lt!2371705))))

(assert (=> d!2002325 (= lt!2371705 e!3876897)))

(declare-fun c!1164089 () Bool)

(assert (=> d!2002325 (= c!1164089 e!3876900)))

(declare-fun res!2627226 () Bool)

(assert (=> d!2002325 (=> (not res!2627226) (not e!3876900))))

(assert (=> d!2002325 (= res!2627226 ((_ is Cons!65085) (unfocusZipperList!1724 zl!343)))))

(declare-fun lambda!352501 () Int)

(declare-fun forall!15481 (List!65209 Int) Bool)

(assert (=> d!2002325 (forall!15481 (unfocusZipperList!1724 zl!343) lambda!352501)))

(assert (=> d!2002325 (= (generalisedUnion!2147 (unfocusZipperList!1724 zl!343)) lt!2371705)))

(assert (= (and d!2002325 res!2627226) b!6387099))

(assert (= (and d!2002325 c!1164089) b!6387102))

(assert (= (and d!2002325 (not c!1164089)) b!6387101))

(assert (= (and b!6387101 c!1164088) b!6387100))

(assert (= (and b!6387101 (not c!1164088)) b!6387105))

(assert (= (and d!2002325 res!2627225) b!6387097))

(assert (= (and b!6387097 c!1164087) b!6387096))

(assert (= (and b!6387097 (not c!1164087)) b!6387104))

(assert (= (and b!6387104 c!1164090) b!6387098))

(assert (= (and b!6387104 (not c!1164090)) b!6387103))

(assert (=> b!6387098 m!7186022))

(declare-fun m!7186504 () Bool)

(assert (=> b!6387098 m!7186504))

(declare-fun m!7186506 () Bool)

(assert (=> b!6387100 m!7186506))

(declare-fun m!7186508 () Bool)

(assert (=> d!2002325 m!7186508))

(assert (=> d!2002325 m!7186022))

(declare-fun m!7186510 () Bool)

(assert (=> d!2002325 m!7186510))

(assert (=> b!6387104 m!7186022))

(declare-fun m!7186512 () Bool)

(assert (=> b!6387104 m!7186512))

(assert (=> b!6387104 m!7186512))

(declare-fun m!7186514 () Bool)

(assert (=> b!6387104 m!7186514))

(declare-fun m!7186516 () Bool)

(assert (=> b!6387099 m!7186516))

(declare-fun m!7186518 () Bool)

(assert (=> b!6387103 m!7186518))

(assert (=> b!6387097 m!7186022))

(declare-fun m!7186520 () Bool)

(assert (=> b!6387097 m!7186520))

(declare-fun m!7186522 () Bool)

(assert (=> b!6387096 m!7186522))

(assert (=> b!6386422 d!2002325))

(declare-fun bs!1598578 () Bool)

(declare-fun d!2002351 () Bool)

(assert (= bs!1598578 (and d!2002351 d!2002325)))

(declare-fun lambda!352504 () Int)

(assert (=> bs!1598578 (= lambda!352504 lambda!352501)))

(declare-fun lt!2371708 () List!65209)

(assert (=> d!2002351 (forall!15481 lt!2371708 lambda!352504)))

(declare-fun e!3876903 () List!65209)

(assert (=> d!2002351 (= lt!2371708 e!3876903)))

(declare-fun c!1164093 () Bool)

(assert (=> d!2002351 (= c!1164093 ((_ is Cons!65086) zl!343))))

(assert (=> d!2002351 (= (unfocusZipperList!1724 zl!343) lt!2371708)))

(declare-fun b!6387110 () Bool)

(assert (=> b!6387110 (= e!3876903 (Cons!65085 (generalisedConcat!1900 (exprs!6187 (h!71534 zl!343))) (unfocusZipperList!1724 (t!378816 zl!343))))))

(declare-fun b!6387111 () Bool)

(assert (=> b!6387111 (= e!3876903 Nil!65085)))

(assert (= (and d!2002351 c!1164093) b!6387110))

(assert (= (and d!2002351 (not c!1164093)) b!6387111))

(declare-fun m!7186524 () Bool)

(assert (=> d!2002351 m!7186524))

(assert (=> b!6387110 m!7185936))

(declare-fun m!7186526 () Bool)

(assert (=> b!6387110 m!7186526))

(assert (=> b!6386422 d!2002351))

(declare-fun bs!1598579 () Bool)

(declare-fun d!2002353 () Bool)

(assert (= bs!1598579 (and d!2002353 d!2002325)))

(declare-fun lambda!352507 () Int)

(assert (=> bs!1598579 (= lambda!352507 lambda!352501)))

(declare-fun bs!1598580 () Bool)

(assert (= bs!1598580 (and d!2002353 d!2002351)))

(assert (=> bs!1598580 (= lambda!352507 lambda!352504)))

(assert (=> d!2002353 (= (inv!84004 setElem!43606) (forall!15481 (exprs!6187 setElem!43606) lambda!352507))))

(declare-fun bs!1598581 () Bool)

(assert (= bs!1598581 d!2002353))

(declare-fun m!7186528 () Bool)

(assert (=> bs!1598581 m!7186528))

(assert (=> setNonEmpty!43606 d!2002353))

(declare-fun b!6387134 () Bool)

(declare-fun e!3876917 () (InoxSet Context!11374))

(declare-fun call!546044 () (InoxSet Context!11374))

(declare-fun call!546039 () (InoxSet Context!11374))

(assert (=> b!6387134 (= e!3876917 ((_ map or) call!546044 call!546039))))

(declare-fun b!6387135 () Bool)

(declare-fun e!3876919 () (InoxSet Context!11374))

(declare-fun call!546040 () (InoxSet Context!11374))

(assert (=> b!6387135 (= e!3876919 call!546040)))

(declare-fun b!6387136 () Bool)

(declare-fun e!3876918 () (InoxSet Context!11374))

(assert (=> b!6387136 (= e!3876917 e!3876918)))

(declare-fun c!1164107 () Bool)

(assert (=> b!6387136 (= c!1164107 ((_ is Concat!25148) (reg!16632 (regOne!33118 r!7292))))))

(declare-fun b!6387137 () Bool)

(declare-fun e!3876921 () (InoxSet Context!11374))

(assert (=> b!6387137 (= e!3876921 (store ((as const (Array Context!11374 Bool)) false) lt!2371606 true))))

(declare-fun b!6387138 () Bool)

(declare-fun e!3876916 () (InoxSet Context!11374))

(declare-fun call!546043 () (InoxSet Context!11374))

(assert (=> b!6387138 (= e!3876916 ((_ map or) call!546043 call!546044))))

(declare-fun call!546041 () List!65209)

(declare-fun bm!546034 () Bool)

(declare-fun c!1164106 () Bool)

(declare-fun $colon$colon!2164 (List!65209 Regex!16303) List!65209)

(assert (=> bm!546034 (= call!546041 ($colon$colon!2164 (exprs!6187 lt!2371606) (ite (or c!1164106 c!1164107) (regTwo!33118 (reg!16632 (regOne!33118 r!7292))) (reg!16632 (regOne!33118 r!7292)))))))

(declare-fun b!6387139 () Bool)

(assert (=> b!6387139 (= e!3876921 e!3876916)))

(declare-fun c!1164104 () Bool)

(assert (=> b!6387139 (= c!1164104 ((_ is Union!16303) (reg!16632 (regOne!33118 r!7292))))))

(declare-fun b!6387140 () Bool)

(assert (=> b!6387140 (= e!3876918 call!546040)))

(declare-fun bm!546035 () Bool)

(declare-fun call!546042 () List!65209)

(assert (=> bm!546035 (= call!546042 call!546041)))

(declare-fun b!6387141 () Bool)

(declare-fun e!3876920 () Bool)

(assert (=> b!6387141 (= e!3876920 (nullable!6296 (regOne!33118 (reg!16632 (regOne!33118 r!7292)))))))

(declare-fun d!2002355 () Bool)

(declare-fun c!1164105 () Bool)

(assert (=> d!2002355 (= c!1164105 (and ((_ is ElementMatch!16303) (reg!16632 (regOne!33118 r!7292))) (= (c!1163902 (reg!16632 (regOne!33118 r!7292))) (h!71532 s!2326))))))

(assert (=> d!2002355 (= (derivationStepZipperDown!1551 (reg!16632 (regOne!33118 r!7292)) lt!2371606 (h!71532 s!2326)) e!3876921)))

(declare-fun bm!546036 () Bool)

(assert (=> bm!546036 (= call!546039 call!546043)))

(declare-fun bm!546037 () Bool)

(assert (=> bm!546037 (= call!546044 (derivationStepZipperDown!1551 (ite c!1164104 (regTwo!33119 (reg!16632 (regOne!33118 r!7292))) (regOne!33118 (reg!16632 (regOne!33118 r!7292)))) (ite c!1164104 lt!2371606 (Context!11375 call!546041)) (h!71532 s!2326)))))

(declare-fun b!6387142 () Bool)

(assert (=> b!6387142 (= c!1164106 e!3876920)))

(declare-fun res!2627229 () Bool)

(assert (=> b!6387142 (=> (not res!2627229) (not e!3876920))))

(assert (=> b!6387142 (= res!2627229 ((_ is Concat!25148) (reg!16632 (regOne!33118 r!7292))))))

(assert (=> b!6387142 (= e!3876916 e!3876917)))

(declare-fun bm!546038 () Bool)

(assert (=> bm!546038 (= call!546043 (derivationStepZipperDown!1551 (ite c!1164104 (regOne!33119 (reg!16632 (regOne!33118 r!7292))) (ite c!1164106 (regTwo!33118 (reg!16632 (regOne!33118 r!7292))) (ite c!1164107 (regOne!33118 (reg!16632 (regOne!33118 r!7292))) (reg!16632 (reg!16632 (regOne!33118 r!7292)))))) (ite (or c!1164104 c!1164106) lt!2371606 (Context!11375 call!546042)) (h!71532 s!2326)))))

(declare-fun bm!546039 () Bool)

(assert (=> bm!546039 (= call!546040 call!546039)))

(declare-fun b!6387143 () Bool)

(declare-fun c!1164108 () Bool)

(assert (=> b!6387143 (= c!1164108 ((_ is Star!16303) (reg!16632 (regOne!33118 r!7292))))))

(assert (=> b!6387143 (= e!3876918 e!3876919)))

(declare-fun b!6387144 () Bool)

(assert (=> b!6387144 (= e!3876919 ((as const (Array Context!11374 Bool)) false))))

(assert (= (and d!2002355 c!1164105) b!6387137))

(assert (= (and d!2002355 (not c!1164105)) b!6387139))

(assert (= (and b!6387139 c!1164104) b!6387138))

(assert (= (and b!6387139 (not c!1164104)) b!6387142))

(assert (= (and b!6387142 res!2627229) b!6387141))

(assert (= (and b!6387142 c!1164106) b!6387134))

(assert (= (and b!6387142 (not c!1164106)) b!6387136))

(assert (= (and b!6387136 c!1164107) b!6387140))

(assert (= (and b!6387136 (not c!1164107)) b!6387143))

(assert (= (and b!6387143 c!1164108) b!6387135))

(assert (= (and b!6387143 (not c!1164108)) b!6387144))

(assert (= (or b!6387140 b!6387135) bm!546035))

(assert (= (or b!6387140 b!6387135) bm!546039))

(assert (= (or b!6387134 bm!546035) bm!546034))

(assert (= (or b!6387134 bm!546039) bm!546036))

(assert (= (or b!6387138 b!6387134) bm!546037))

(assert (= (or b!6387138 bm!546036) bm!546038))

(declare-fun m!7186530 () Bool)

(assert (=> bm!546034 m!7186530))

(declare-fun m!7186532 () Bool)

(assert (=> b!6387141 m!7186532))

(assert (=> b!6387137 m!7185944))

(declare-fun m!7186534 () Bool)

(assert (=> bm!546037 m!7186534))

(declare-fun m!7186536 () Bool)

(assert (=> bm!546038 m!7186536))

(assert (=> b!6386442 d!2002355))

(declare-fun d!2002357 () Bool)

(declare-fun c!1164111 () Bool)

(assert (=> d!2002357 (= c!1164111 (isEmpty!37222 s!2326))))

(declare-fun e!3876924 () Bool)

(assert (=> d!2002357 (= (matchZipper!2315 lt!2371602 s!2326) e!3876924)))

(declare-fun b!6387149 () Bool)

(declare-fun nullableZipper!2068 ((InoxSet Context!11374)) Bool)

(assert (=> b!6387149 (= e!3876924 (nullableZipper!2068 lt!2371602))))

(declare-fun b!6387150 () Bool)

(assert (=> b!6387150 (= e!3876924 (matchZipper!2315 (derivationStepZipper!2269 lt!2371602 (head!13096 s!2326)) (tail!12181 s!2326)))))

(assert (= (and d!2002357 c!1164111) b!6387149))

(assert (= (and d!2002357 (not c!1164111)) b!6387150))

(assert (=> d!2002357 m!7186374))

(declare-fun m!7186538 () Bool)

(assert (=> b!6387149 m!7186538))

(assert (=> b!6387150 m!7186430))

(assert (=> b!6387150 m!7186430))

(declare-fun m!7186540 () Bool)

(assert (=> b!6387150 m!7186540))

(assert (=> b!6387150 m!7186432))

(assert (=> b!6387150 m!7186540))

(assert (=> b!6387150 m!7186432))

(declare-fun m!7186542 () Bool)

(assert (=> b!6387150 m!7186542))

(assert (=> b!6386423 d!2002357))

(declare-fun d!2002359 () Bool)

(declare-fun c!1164112 () Bool)

(assert (=> d!2002359 (= c!1164112 (isEmpty!37222 (t!378814 s!2326)))))

(declare-fun e!3876925 () Bool)

(assert (=> d!2002359 (= (matchZipper!2315 lt!2371592 (t!378814 s!2326)) e!3876925)))

(declare-fun b!6387151 () Bool)

(assert (=> b!6387151 (= e!3876925 (nullableZipper!2068 lt!2371592))))

(declare-fun b!6387152 () Bool)

(assert (=> b!6387152 (= e!3876925 (matchZipper!2315 (derivationStepZipper!2269 lt!2371592 (head!13096 (t!378814 s!2326))) (tail!12181 (t!378814 s!2326))))))

(assert (= (and d!2002359 c!1164112) b!6387151))

(assert (= (and d!2002359 (not c!1164112)) b!6387152))

(declare-fun m!7186544 () Bool)

(assert (=> d!2002359 m!7186544))

(declare-fun m!7186546 () Bool)

(assert (=> b!6387151 m!7186546))

(declare-fun m!7186548 () Bool)

(assert (=> b!6387152 m!7186548))

(assert (=> b!6387152 m!7186548))

(declare-fun m!7186550 () Bool)

(assert (=> b!6387152 m!7186550))

(declare-fun m!7186552 () Bool)

(assert (=> b!6387152 m!7186552))

(assert (=> b!6387152 m!7186550))

(assert (=> b!6387152 m!7186552))

(declare-fun m!7186554 () Bool)

(assert (=> b!6387152 m!7186554))

(assert (=> b!6386423 d!2002359))

(declare-fun d!2002361 () Bool)

(assert (=> d!2002361 (= (isEmpty!37221 (t!378815 (exprs!6187 (h!71534 zl!343)))) ((_ is Nil!65085) (t!378815 (exprs!6187 (h!71534 zl!343)))))))

(assert (=> b!6386444 d!2002361))

(declare-fun d!2002363 () Bool)

(declare-fun choose!47522 ((InoxSet Context!11374) Int) (InoxSet Context!11374))

(assert (=> d!2002363 (= (flatMap!1808 lt!2371602 lambda!352451) (choose!47522 lt!2371602 lambda!352451))))

(declare-fun bs!1598582 () Bool)

(assert (= bs!1598582 d!2002363))

(declare-fun m!7186556 () Bool)

(assert (=> bs!1598582 m!7186556))

(assert (=> b!6386445 d!2002363))

(declare-fun bm!546042 () Bool)

(declare-fun call!546047 () (InoxSet Context!11374))

(assert (=> bm!546042 (= call!546047 (derivationStepZipperDown!1551 (h!71533 (exprs!6187 lt!2371620)) (Context!11375 (t!378815 (exprs!6187 lt!2371620))) (h!71532 s!2326)))))

(declare-fun d!2002365 () Bool)

(declare-fun c!1164118 () Bool)

(declare-fun e!3876934 () Bool)

(assert (=> d!2002365 (= c!1164118 e!3876934)))

(declare-fun res!2627232 () Bool)

(assert (=> d!2002365 (=> (not res!2627232) (not e!3876934))))

(assert (=> d!2002365 (= res!2627232 ((_ is Cons!65085) (exprs!6187 lt!2371620)))))

(declare-fun e!3876932 () (InoxSet Context!11374))

(assert (=> d!2002365 (= (derivationStepZipperUp!1477 lt!2371620 (h!71532 s!2326)) e!3876932)))

(declare-fun b!6387163 () Bool)

(declare-fun e!3876933 () (InoxSet Context!11374))

(assert (=> b!6387163 (= e!3876933 ((as const (Array Context!11374 Bool)) false))))

(declare-fun b!6387164 () Bool)

(assert (=> b!6387164 (= e!3876933 call!546047)))

(declare-fun b!6387165 () Bool)

(assert (=> b!6387165 (= e!3876932 ((_ map or) call!546047 (derivationStepZipperUp!1477 (Context!11375 (t!378815 (exprs!6187 lt!2371620))) (h!71532 s!2326))))))

(declare-fun b!6387166 () Bool)

(assert (=> b!6387166 (= e!3876934 (nullable!6296 (h!71533 (exprs!6187 lt!2371620))))))

(declare-fun b!6387167 () Bool)

(assert (=> b!6387167 (= e!3876932 e!3876933)))

(declare-fun c!1164117 () Bool)

(assert (=> b!6387167 (= c!1164117 ((_ is Cons!65085) (exprs!6187 lt!2371620)))))

(assert (= (and d!2002365 res!2627232) b!6387166))

(assert (= (and d!2002365 c!1164118) b!6387165))

(assert (= (and d!2002365 (not c!1164118)) b!6387167))

(assert (= (and b!6387167 c!1164117) b!6387164))

(assert (= (and b!6387167 (not c!1164117)) b!6387163))

(assert (= (or b!6387165 b!6387164) bm!546042))

(declare-fun m!7186558 () Bool)

(assert (=> bm!546042 m!7186558))

(declare-fun m!7186560 () Bool)

(assert (=> b!6387165 m!7186560))

(declare-fun m!7186562 () Bool)

(assert (=> b!6387166 m!7186562))

(assert (=> b!6386445 d!2002365))

(declare-fun d!2002367 () Bool)

(declare-fun dynLambda!25823 (Int Context!11374) (InoxSet Context!11374))

(assert (=> d!2002367 (= (flatMap!1808 lt!2371602 lambda!352451) (dynLambda!25823 lambda!352451 lt!2371620))))

(declare-fun lt!2371711 () Unit!158543)

(declare-fun choose!47523 ((InoxSet Context!11374) Context!11374 Int) Unit!158543)

(assert (=> d!2002367 (= lt!2371711 (choose!47523 lt!2371602 lt!2371620 lambda!352451))))

(assert (=> d!2002367 (= lt!2371602 (store ((as const (Array Context!11374 Bool)) false) lt!2371620 true))))

(assert (=> d!2002367 (= (lemmaFlatMapOnSingletonSet!1334 lt!2371602 lt!2371620 lambda!352451) lt!2371711)))

(declare-fun b_lambda!242681 () Bool)

(assert (=> (not b_lambda!242681) (not d!2002367)))

(declare-fun bs!1598583 () Bool)

(assert (= bs!1598583 d!2002367))

(assert (=> bs!1598583 m!7186074))

(declare-fun m!7186564 () Bool)

(assert (=> bs!1598583 m!7186564))

(declare-fun m!7186566 () Bool)

(assert (=> bs!1598583 m!7186566))

(assert (=> bs!1598583 m!7186070))

(assert (=> b!6386445 d!2002367))

(declare-fun bs!1598584 () Bool)

(declare-fun d!2002369 () Bool)

(assert (= bs!1598584 (and d!2002369 b!6386438)))

(declare-fun lambda!352510 () Int)

(assert (=> bs!1598584 (= lambda!352510 lambda!352451)))

(assert (=> d!2002369 true))

(assert (=> d!2002369 (= (derivationStepZipper!2269 lt!2371602 (h!71532 s!2326)) (flatMap!1808 lt!2371602 lambda!352510))))

(declare-fun bs!1598585 () Bool)

(assert (= bs!1598585 d!2002369))

(declare-fun m!7186568 () Bool)

(assert (=> bs!1598585 m!7186568))

(assert (=> b!6386445 d!2002369))

(declare-fun d!2002371 () Bool)

(assert (=> d!2002371 (= (isEmpty!37220 (t!378816 zl!343)) ((_ is Nil!65086) (t!378816 zl!343)))))

(assert (=> b!6386435 d!2002371))

(declare-fun d!2002373 () Bool)

(declare-fun c!1164121 () Bool)

(assert (=> d!2002373 (= c!1164121 (isEmpty!37222 (t!378814 s!2326)))))

(declare-fun e!3876935 () Bool)

(assert (=> d!2002373 (= (matchZipper!2315 lt!2371617 (t!378814 s!2326)) e!3876935)))

(declare-fun b!6387170 () Bool)

(assert (=> b!6387170 (= e!3876935 (nullableZipper!2068 lt!2371617))))

(declare-fun b!6387171 () Bool)

(assert (=> b!6387171 (= e!3876935 (matchZipper!2315 (derivationStepZipper!2269 lt!2371617 (head!13096 (t!378814 s!2326))) (tail!12181 (t!378814 s!2326))))))

(assert (= (and d!2002373 c!1164121) b!6387170))

(assert (= (and d!2002373 (not c!1164121)) b!6387171))

(assert (=> d!2002373 m!7186544))

(declare-fun m!7186570 () Bool)

(assert (=> b!6387170 m!7186570))

(assert (=> b!6387171 m!7186548))

(assert (=> b!6387171 m!7186548))

(declare-fun m!7186572 () Bool)

(assert (=> b!6387171 m!7186572))

(assert (=> b!6387171 m!7186552))

(assert (=> b!6387171 m!7186572))

(assert (=> b!6387171 m!7186552))

(declare-fun m!7186574 () Bool)

(assert (=> b!6387171 m!7186574))

(assert (=> b!6386416 d!2002373))

(declare-fun d!2002375 () Bool)

(declare-fun lt!2371714 () Regex!16303)

(assert (=> d!2002375 (validRegex!8039 lt!2371714)))

(assert (=> d!2002375 (= lt!2371714 (generalisedUnion!2147 (unfocusZipperList!1724 (Cons!65086 lt!2371606 Nil!65086))))))

(assert (=> d!2002375 (= (unfocusZipper!2045 (Cons!65086 lt!2371606 Nil!65086)) lt!2371714)))

(declare-fun bs!1598586 () Bool)

(assert (= bs!1598586 d!2002375))

(declare-fun m!7186576 () Bool)

(assert (=> bs!1598586 m!7186576))

(declare-fun m!7186578 () Bool)

(assert (=> bs!1598586 m!7186578))

(assert (=> bs!1598586 m!7186578))

(declare-fun m!7186580 () Bool)

(assert (=> bs!1598586 m!7186580))

(assert (=> b!6386436 d!2002375))

(declare-fun bm!546049 () Bool)

(declare-fun call!546055 () Bool)

(declare-fun call!546056 () Bool)

(assert (=> bm!546049 (= call!546055 call!546056)))

(declare-fun bm!546050 () Bool)

(declare-fun call!546054 () Bool)

(declare-fun c!1164127 () Bool)

(assert (=> bm!546050 (= call!546054 (validRegex!8039 (ite c!1164127 (regTwo!33119 r!7292) (regTwo!33118 r!7292))))))

(declare-fun c!1164126 () Bool)

(declare-fun bm!546051 () Bool)

(assert (=> bm!546051 (= call!546056 (validRegex!8039 (ite c!1164126 (reg!16632 r!7292) (ite c!1164127 (regOne!33119 r!7292) (regOne!33118 r!7292)))))))

(declare-fun b!6387190 () Bool)

(declare-fun e!3876951 () Bool)

(declare-fun e!3876956 () Bool)

(assert (=> b!6387190 (= e!3876951 e!3876956)))

(assert (=> b!6387190 (= c!1164127 ((_ is Union!16303) r!7292))))

(declare-fun b!6387191 () Bool)

(declare-fun e!3876954 () Bool)

(assert (=> b!6387191 (= e!3876954 call!546054)))

(declare-fun b!6387192 () Bool)

(declare-fun e!3876953 () Bool)

(assert (=> b!6387192 (= e!3876951 e!3876953)))

(declare-fun res!2627244 () Bool)

(assert (=> b!6387192 (= res!2627244 (not (nullable!6296 (reg!16632 r!7292))))))

(assert (=> b!6387192 (=> (not res!2627244) (not e!3876953))))

(declare-fun b!6387193 () Bool)

(declare-fun res!2627243 () Bool)

(declare-fun e!3876950 () Bool)

(assert (=> b!6387193 (=> res!2627243 e!3876950)))

(assert (=> b!6387193 (= res!2627243 (not ((_ is Concat!25148) r!7292)))))

(assert (=> b!6387193 (= e!3876956 e!3876950)))

(declare-fun b!6387194 () Bool)

(assert (=> b!6387194 (= e!3876953 call!546056)))

(declare-fun d!2002377 () Bool)

(declare-fun res!2627247 () Bool)

(declare-fun e!3876952 () Bool)

(assert (=> d!2002377 (=> res!2627247 e!3876952)))

(assert (=> d!2002377 (= res!2627247 ((_ is ElementMatch!16303) r!7292))))

(assert (=> d!2002377 (= (validRegex!8039 r!7292) e!3876952)))

(declare-fun b!6387195 () Bool)

(declare-fun e!3876955 () Bool)

(assert (=> b!6387195 (= e!3876955 call!546054)))

(declare-fun b!6387196 () Bool)

(assert (=> b!6387196 (= e!3876952 e!3876951)))

(assert (=> b!6387196 (= c!1164126 ((_ is Star!16303) r!7292))))

(declare-fun b!6387197 () Bool)

(declare-fun res!2627246 () Bool)

(assert (=> b!6387197 (=> (not res!2627246) (not e!3876954))))

(assert (=> b!6387197 (= res!2627246 call!546055)))

(assert (=> b!6387197 (= e!3876956 e!3876954)))

(declare-fun b!6387198 () Bool)

(assert (=> b!6387198 (= e!3876950 e!3876955)))

(declare-fun res!2627245 () Bool)

(assert (=> b!6387198 (=> (not res!2627245) (not e!3876955))))

(assert (=> b!6387198 (= res!2627245 call!546055)))

(assert (= (and d!2002377 (not res!2627247)) b!6387196))

(assert (= (and b!6387196 c!1164126) b!6387192))

(assert (= (and b!6387196 (not c!1164126)) b!6387190))

(assert (= (and b!6387192 res!2627244) b!6387194))

(assert (= (and b!6387190 c!1164127) b!6387197))

(assert (= (and b!6387190 (not c!1164127)) b!6387193))

(assert (= (and b!6387197 res!2627246) b!6387191))

(assert (= (and b!6387193 (not res!2627243)) b!6387198))

(assert (= (and b!6387198 res!2627245) b!6387195))

(assert (= (or b!6387191 b!6387195) bm!546050))

(assert (= (or b!6387197 b!6387198) bm!546049))

(assert (= (or b!6387194 bm!546049) bm!546051))

(declare-fun m!7186582 () Bool)

(assert (=> bm!546050 m!7186582))

(declare-fun m!7186584 () Bool)

(assert (=> bm!546051 m!7186584))

(declare-fun m!7186586 () Bool)

(assert (=> b!6387192 m!7186586))

(assert (=> start!632626 d!2002377))

(declare-fun d!2002379 () Bool)

(declare-fun choose!47524 (Int) Bool)

(assert (=> d!2002379 (= (Exists!3373 lambda!352453) (choose!47524 lambda!352453))))

(declare-fun bs!1598587 () Bool)

(assert (= bs!1598587 d!2002379))

(declare-fun m!7186588 () Bool)

(assert (=> bs!1598587 m!7186588))

(assert (=> b!6386437 d!2002379))

(declare-fun d!2002381 () Bool)

(declare-fun isEmpty!37224 (Option!16194) Bool)

(assert (=> d!2002381 (= (isDefined!12897 lt!2371615) (not (isEmpty!37224 lt!2371615)))))

(declare-fun bs!1598588 () Bool)

(assert (= bs!1598588 d!2002381))

(declare-fun m!7186590 () Bool)

(assert (=> bs!1598588 m!7186590))

(assert (=> b!6386437 d!2002381))

(declare-fun bs!1598589 () Bool)

(declare-fun d!2002383 () Bool)

(assert (= bs!1598589 (and d!2002383 b!6386855)))

(declare-fun lambda!352515 () Int)

(assert (=> bs!1598589 (not (= lambda!352515 lambda!352481))))

(declare-fun bs!1598590 () Bool)

(assert (= bs!1598590 (and d!2002383 b!6386437)))

(assert (=> bs!1598590 (not (= lambda!352515 lambda!352453))))

(declare-fun bs!1598591 () Bool)

(assert (= bs!1598591 (and d!2002383 b!6386452)))

(assert (=> bs!1598591 (not (= lambda!352515 lambda!352450))))

(assert (=> bs!1598590 (= lambda!352515 lambda!352452)))

(assert (=> bs!1598591 (= (= lt!2371616 (regOne!33118 r!7292)) (= lambda!352515 lambda!352449))))

(declare-fun bs!1598592 () Bool)

(assert (= bs!1598592 (and d!2002383 b!6386858)))

(assert (=> bs!1598592 (not (= lambda!352515 lambda!352483))))

(assert (=> d!2002383 true))

(assert (=> d!2002383 true))

(assert (=> d!2002383 true))

(declare-fun lambda!352516 () Int)

(assert (=> bs!1598589 (not (= lambda!352516 lambda!352481))))

(assert (=> bs!1598590 (= lambda!352516 lambda!352453)))

(assert (=> bs!1598591 (= (= lt!2371616 (regOne!33118 r!7292)) (= lambda!352516 lambda!352450))))

(assert (=> bs!1598590 (not (= lambda!352516 lambda!352452))))

(declare-fun bs!1598593 () Bool)

(assert (= bs!1598593 d!2002383))

(assert (=> bs!1598593 (not (= lambda!352516 lambda!352515))))

(assert (=> bs!1598591 (not (= lambda!352516 lambda!352449))))

(assert (=> bs!1598592 (= (= lt!2371616 (regOne!33118 r!7292)) (= lambda!352516 lambda!352483))))

(assert (=> d!2002383 true))

(assert (=> d!2002383 true))

(assert (=> d!2002383 true))

(assert (=> d!2002383 (= (Exists!3373 lambda!352515) (Exists!3373 lambda!352516))))

(declare-fun lt!2371717 () Unit!158543)

(declare-fun choose!47525 (Regex!16303 Regex!16303 List!65208) Unit!158543)

(assert (=> d!2002383 (= lt!2371717 (choose!47525 lt!2371616 (regTwo!33118 r!7292) s!2326))))

(assert (=> d!2002383 (validRegex!8039 lt!2371616)))

(assert (=> d!2002383 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1910 lt!2371616 (regTwo!33118 r!7292) s!2326) lt!2371717)))

(declare-fun m!7186592 () Bool)

(assert (=> bs!1598593 m!7186592))

(declare-fun m!7186594 () Bool)

(assert (=> bs!1598593 m!7186594))

(declare-fun m!7186596 () Bool)

(assert (=> bs!1598593 m!7186596))

(declare-fun m!7186598 () Bool)

(assert (=> bs!1598593 m!7186598))

(assert (=> b!6386437 d!2002383))

(declare-fun b!6387218 () Bool)

(declare-fun e!3876965 () Bool)

(declare-fun lt!2371720 () List!65208)

(assert (=> b!6387218 (= e!3876965 (or (not (= (_2!36585 lt!2371613) Nil!65084)) (= lt!2371720 (_1!36585 lt!2371613))))))

(declare-fun b!6387216 () Bool)

(declare-fun e!3876966 () List!65208)

(assert (=> b!6387216 (= e!3876966 (Cons!65084 (h!71532 (_1!36585 lt!2371613)) (++!14371 (t!378814 (_1!36585 lt!2371613)) (_2!36585 lt!2371613))))))

(declare-fun d!2002385 () Bool)

(assert (=> d!2002385 e!3876965))

(declare-fun res!2627260 () Bool)

(assert (=> d!2002385 (=> (not res!2627260) (not e!3876965))))

(declare-fun content!12319 (List!65208) (InoxSet C!32876))

(assert (=> d!2002385 (= res!2627260 (= (content!12319 lt!2371720) ((_ map or) (content!12319 (_1!36585 lt!2371613)) (content!12319 (_2!36585 lt!2371613)))))))

(assert (=> d!2002385 (= lt!2371720 e!3876966)))

(declare-fun c!1164130 () Bool)

(assert (=> d!2002385 (= c!1164130 ((_ is Nil!65084) (_1!36585 lt!2371613)))))

(assert (=> d!2002385 (= (++!14371 (_1!36585 lt!2371613) (_2!36585 lt!2371613)) lt!2371720)))

(declare-fun b!6387215 () Bool)

(assert (=> b!6387215 (= e!3876966 (_2!36585 lt!2371613))))

(declare-fun b!6387217 () Bool)

(declare-fun res!2627261 () Bool)

(assert (=> b!6387217 (=> (not res!2627261) (not e!3876965))))

(declare-fun size!40361 (List!65208) Int)

(assert (=> b!6387217 (= res!2627261 (= (size!40361 lt!2371720) (+ (size!40361 (_1!36585 lt!2371613)) (size!40361 (_2!36585 lt!2371613)))))))

(assert (= (and d!2002385 c!1164130) b!6387215))

(assert (= (and d!2002385 (not c!1164130)) b!6387216))

(assert (= (and d!2002385 res!2627260) b!6387217))

(assert (= (and b!6387217 res!2627261) b!6387218))

(declare-fun m!7186600 () Bool)

(assert (=> b!6387216 m!7186600))

(declare-fun m!7186602 () Bool)

(assert (=> d!2002385 m!7186602))

(declare-fun m!7186604 () Bool)

(assert (=> d!2002385 m!7186604))

(declare-fun m!7186606 () Bool)

(assert (=> d!2002385 m!7186606))

(declare-fun m!7186608 () Bool)

(assert (=> b!6387217 m!7186608))

(declare-fun m!7186610 () Bool)

(assert (=> b!6387217 m!7186610))

(declare-fun m!7186612 () Bool)

(assert (=> b!6387217 m!7186612))

(assert (=> b!6386437 d!2002385))

(declare-fun bs!1598594 () Bool)

(declare-fun d!2002387 () Bool)

(assert (= bs!1598594 (and d!2002387 b!6386855)))

(declare-fun lambda!352519 () Int)

(assert (=> bs!1598594 (not (= lambda!352519 lambda!352481))))

(declare-fun bs!1598595 () Bool)

(assert (= bs!1598595 (and d!2002387 b!6386437)))

(assert (=> bs!1598595 (not (= lambda!352519 lambda!352453))))

(declare-fun bs!1598596 () Bool)

(assert (= bs!1598596 (and d!2002387 b!6386452)))

(assert (=> bs!1598596 (not (= lambda!352519 lambda!352450))))

(assert (=> bs!1598595 (= lambda!352519 lambda!352452)))

(declare-fun bs!1598597 () Bool)

(assert (= bs!1598597 (and d!2002387 d!2002383)))

(assert (=> bs!1598597 (not (= lambda!352519 lambda!352516))))

(assert (=> bs!1598597 (= lambda!352519 lambda!352515)))

(assert (=> bs!1598596 (= (= lt!2371616 (regOne!33118 r!7292)) (= lambda!352519 lambda!352449))))

(declare-fun bs!1598598 () Bool)

(assert (= bs!1598598 (and d!2002387 b!6386858)))

(assert (=> bs!1598598 (not (= lambda!352519 lambda!352483))))

(assert (=> d!2002387 true))

(assert (=> d!2002387 true))

(assert (=> d!2002387 true))

(assert (=> d!2002387 (= (isDefined!12897 (findConcatSeparation!2608 lt!2371616 (regTwo!33118 r!7292) Nil!65084 s!2326 s!2326)) (Exists!3373 lambda!352519))))

(declare-fun lt!2371723 () Unit!158543)

(declare-fun choose!47526 (Regex!16303 Regex!16303 List!65208) Unit!158543)

(assert (=> d!2002387 (= lt!2371723 (choose!47526 lt!2371616 (regTwo!33118 r!7292) s!2326))))

(assert (=> d!2002387 (validRegex!8039 lt!2371616)))

(assert (=> d!2002387 (= (lemmaFindConcatSeparationEquivalentToExists!2372 lt!2371616 (regTwo!33118 r!7292) s!2326) lt!2371723)))

(declare-fun bs!1598599 () Bool)

(assert (= bs!1598599 d!2002387))

(assert (=> bs!1598599 m!7185984))

(assert (=> bs!1598599 m!7186598))

(declare-fun m!7186614 () Bool)

(assert (=> bs!1598599 m!7186614))

(assert (=> bs!1598599 m!7185984))

(declare-fun m!7186616 () Bool)

(assert (=> bs!1598599 m!7186616))

(declare-fun m!7186618 () Bool)

(assert (=> bs!1598599 m!7186618))

(assert (=> b!6386437 d!2002387))

(declare-fun d!2002389 () Bool)

(assert (=> d!2002389 (= (get!22538 lt!2371615) (v!52362 lt!2371615))))

(assert (=> b!6386437 d!2002389))

(declare-fun b!6387241 () Bool)

(declare-fun e!3876982 () Bool)

(declare-fun lt!2371730 () Option!16194)

(assert (=> b!6387241 (= e!3876982 (= (++!14371 (_1!36585 (get!22538 lt!2371730)) (_2!36585 (get!22538 lt!2371730))) s!2326))))

(declare-fun d!2002391 () Bool)

(declare-fun e!3876983 () Bool)

(assert (=> d!2002391 e!3876983))

(declare-fun res!2627276 () Bool)

(assert (=> d!2002391 (=> res!2627276 e!3876983)))

(assert (=> d!2002391 (= res!2627276 e!3876982)))

(declare-fun res!2627280 () Bool)

(assert (=> d!2002391 (=> (not res!2627280) (not e!3876982))))

(assert (=> d!2002391 (= res!2627280 (isDefined!12897 lt!2371730))))

(declare-fun e!3876981 () Option!16194)

(assert (=> d!2002391 (= lt!2371730 e!3876981)))

(declare-fun c!1164136 () Bool)

(declare-fun e!3876979 () Bool)

(assert (=> d!2002391 (= c!1164136 e!3876979)))

(declare-fun res!2627278 () Bool)

(assert (=> d!2002391 (=> (not res!2627278) (not e!3876979))))

(assert (=> d!2002391 (= res!2627278 (matchR!8486 lt!2371616 Nil!65084))))

(assert (=> d!2002391 (validRegex!8039 lt!2371616)))

(assert (=> d!2002391 (= (findConcatSeparation!2608 lt!2371616 (regTwo!33118 r!7292) Nil!65084 s!2326 s!2326) lt!2371730)))

(declare-fun b!6387242 () Bool)

(assert (=> b!6387242 (= e!3876981 (Some!16193 (tuple2!66565 Nil!65084 s!2326)))))

(declare-fun b!6387243 () Bool)

(declare-fun e!3876980 () Option!16194)

(assert (=> b!6387243 (= e!3876981 e!3876980)))

(declare-fun c!1164135 () Bool)

(assert (=> b!6387243 (= c!1164135 ((_ is Nil!65084) s!2326))))

(declare-fun b!6387244 () Bool)

(declare-fun lt!2371731 () Unit!158543)

(declare-fun lt!2371732 () Unit!158543)

(assert (=> b!6387244 (= lt!2371731 lt!2371732)))

(assert (=> b!6387244 (= (++!14371 (++!14371 Nil!65084 (Cons!65084 (h!71532 s!2326) Nil!65084)) (t!378814 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2466 (List!65208 C!32876 List!65208 List!65208) Unit!158543)

(assert (=> b!6387244 (= lt!2371732 (lemmaMoveElementToOtherListKeepsConcatEq!2466 Nil!65084 (h!71532 s!2326) (t!378814 s!2326) s!2326))))

(assert (=> b!6387244 (= e!3876980 (findConcatSeparation!2608 lt!2371616 (regTwo!33118 r!7292) (++!14371 Nil!65084 (Cons!65084 (h!71532 s!2326) Nil!65084)) (t!378814 s!2326) s!2326))))

(declare-fun b!6387245 () Bool)

(assert (=> b!6387245 (= e!3876983 (not (isDefined!12897 lt!2371730)))))

(declare-fun b!6387246 () Bool)

(assert (=> b!6387246 (= e!3876980 None!16193)))

(declare-fun b!6387247 () Bool)

(declare-fun res!2627279 () Bool)

(assert (=> b!6387247 (=> (not res!2627279) (not e!3876982))))

(assert (=> b!6387247 (= res!2627279 (matchR!8486 (regTwo!33118 r!7292) (_2!36585 (get!22538 lt!2371730))))))

(declare-fun b!6387248 () Bool)

(assert (=> b!6387248 (= e!3876979 (matchR!8486 (regTwo!33118 r!7292) s!2326))))

(declare-fun b!6387249 () Bool)

(declare-fun res!2627277 () Bool)

(assert (=> b!6387249 (=> (not res!2627277) (not e!3876982))))

(assert (=> b!6387249 (= res!2627277 (matchR!8486 lt!2371616 (_1!36585 (get!22538 lt!2371730))))))

(assert (= (and d!2002391 res!2627278) b!6387248))

(assert (= (and d!2002391 c!1164136) b!6387242))

(assert (= (and d!2002391 (not c!1164136)) b!6387243))

(assert (= (and b!6387243 c!1164135) b!6387246))

(assert (= (and b!6387243 (not c!1164135)) b!6387244))

(assert (= (and d!2002391 res!2627280) b!6387249))

(assert (= (and b!6387249 res!2627277) b!6387247))

(assert (= (and b!6387247 res!2627279) b!6387241))

(assert (= (and d!2002391 (not res!2627276)) b!6387245))

(declare-fun m!7186620 () Bool)

(assert (=> b!6387241 m!7186620))

(declare-fun m!7186622 () Bool)

(assert (=> b!6387241 m!7186622))

(declare-fun m!7186624 () Bool)

(assert (=> b!6387245 m!7186624))

(assert (=> b!6387247 m!7186620))

(declare-fun m!7186626 () Bool)

(assert (=> b!6387247 m!7186626))

(declare-fun m!7186628 () Bool)

(assert (=> b!6387244 m!7186628))

(assert (=> b!6387244 m!7186628))

(declare-fun m!7186630 () Bool)

(assert (=> b!6387244 m!7186630))

(declare-fun m!7186632 () Bool)

(assert (=> b!6387244 m!7186632))

(assert (=> b!6387244 m!7186628))

(declare-fun m!7186634 () Bool)

(assert (=> b!6387244 m!7186634))

(assert (=> b!6387249 m!7186620))

(declare-fun m!7186636 () Bool)

(assert (=> b!6387249 m!7186636))

(assert (=> d!2002391 m!7186624))

(declare-fun m!7186638 () Bool)

(assert (=> d!2002391 m!7186638))

(assert (=> d!2002391 m!7186598))

(declare-fun m!7186640 () Bool)

(assert (=> b!6387248 m!7186640))

(assert (=> b!6386437 d!2002391))

(declare-fun d!2002393 () Bool)

(assert (=> d!2002393 (= (Exists!3373 lambda!352452) (choose!47524 lambda!352452))))

(declare-fun bs!1598600 () Bool)

(assert (= bs!1598600 d!2002393))

(declare-fun m!7186642 () Bool)

(assert (=> bs!1598600 m!7186642))

(assert (=> b!6386437 d!2002393))

(declare-fun b!6387250 () Bool)

(declare-fun e!3876985 () (InoxSet Context!11374))

(declare-fun call!546062 () (InoxSet Context!11374))

(declare-fun call!546057 () (InoxSet Context!11374))

(assert (=> b!6387250 (= e!3876985 ((_ map or) call!546062 call!546057))))

(declare-fun b!6387251 () Bool)

(declare-fun e!3876987 () (InoxSet Context!11374))

(declare-fun call!546058 () (InoxSet Context!11374))

(assert (=> b!6387251 (= e!3876987 call!546058)))

(declare-fun b!6387252 () Bool)

(declare-fun e!3876986 () (InoxSet Context!11374))

(assert (=> b!6387252 (= e!3876985 e!3876986)))

(declare-fun c!1164140 () Bool)

(assert (=> b!6387252 (= c!1164140 ((_ is Concat!25148) (h!71533 (exprs!6187 (h!71534 zl!343)))))))

(declare-fun b!6387253 () Bool)

(declare-fun e!3876989 () (InoxSet Context!11374))

(assert (=> b!6387253 (= e!3876989 (store ((as const (Array Context!11374 Bool)) false) lt!2371596 true))))

(declare-fun b!6387254 () Bool)

(declare-fun e!3876984 () (InoxSet Context!11374))

(declare-fun call!546061 () (InoxSet Context!11374))

(assert (=> b!6387254 (= e!3876984 ((_ map or) call!546061 call!546062))))

(declare-fun call!546059 () List!65209)

(declare-fun c!1164139 () Bool)

(declare-fun bm!546052 () Bool)

(assert (=> bm!546052 (= call!546059 ($colon$colon!2164 (exprs!6187 lt!2371596) (ite (or c!1164139 c!1164140) (regTwo!33118 (h!71533 (exprs!6187 (h!71534 zl!343)))) (h!71533 (exprs!6187 (h!71534 zl!343))))))))

(declare-fun b!6387255 () Bool)

(assert (=> b!6387255 (= e!3876989 e!3876984)))

(declare-fun c!1164137 () Bool)

(assert (=> b!6387255 (= c!1164137 ((_ is Union!16303) (h!71533 (exprs!6187 (h!71534 zl!343)))))))

(declare-fun b!6387256 () Bool)

(assert (=> b!6387256 (= e!3876986 call!546058)))

(declare-fun bm!546053 () Bool)

(declare-fun call!546060 () List!65209)

(assert (=> bm!546053 (= call!546060 call!546059)))

(declare-fun b!6387257 () Bool)

(declare-fun e!3876988 () Bool)

(assert (=> b!6387257 (= e!3876988 (nullable!6296 (regOne!33118 (h!71533 (exprs!6187 (h!71534 zl!343))))))))

(declare-fun d!2002395 () Bool)

(declare-fun c!1164138 () Bool)

(assert (=> d!2002395 (= c!1164138 (and ((_ is ElementMatch!16303) (h!71533 (exprs!6187 (h!71534 zl!343)))) (= (c!1163902 (h!71533 (exprs!6187 (h!71534 zl!343)))) (h!71532 s!2326))))))

(assert (=> d!2002395 (= (derivationStepZipperDown!1551 (h!71533 (exprs!6187 (h!71534 zl!343))) lt!2371596 (h!71532 s!2326)) e!3876989)))

(declare-fun bm!546054 () Bool)

(assert (=> bm!546054 (= call!546057 call!546061)))

(declare-fun bm!546055 () Bool)

(assert (=> bm!546055 (= call!546062 (derivationStepZipperDown!1551 (ite c!1164137 (regTwo!33119 (h!71533 (exprs!6187 (h!71534 zl!343)))) (regOne!33118 (h!71533 (exprs!6187 (h!71534 zl!343))))) (ite c!1164137 lt!2371596 (Context!11375 call!546059)) (h!71532 s!2326)))))

(declare-fun b!6387258 () Bool)

(assert (=> b!6387258 (= c!1164139 e!3876988)))

(declare-fun res!2627281 () Bool)

(assert (=> b!6387258 (=> (not res!2627281) (not e!3876988))))

(assert (=> b!6387258 (= res!2627281 ((_ is Concat!25148) (h!71533 (exprs!6187 (h!71534 zl!343)))))))

(assert (=> b!6387258 (= e!3876984 e!3876985)))

(declare-fun bm!546056 () Bool)

(assert (=> bm!546056 (= call!546061 (derivationStepZipperDown!1551 (ite c!1164137 (regOne!33119 (h!71533 (exprs!6187 (h!71534 zl!343)))) (ite c!1164139 (regTwo!33118 (h!71533 (exprs!6187 (h!71534 zl!343)))) (ite c!1164140 (regOne!33118 (h!71533 (exprs!6187 (h!71534 zl!343)))) (reg!16632 (h!71533 (exprs!6187 (h!71534 zl!343))))))) (ite (or c!1164137 c!1164139) lt!2371596 (Context!11375 call!546060)) (h!71532 s!2326)))))

(declare-fun bm!546057 () Bool)

(assert (=> bm!546057 (= call!546058 call!546057)))

(declare-fun b!6387259 () Bool)

(declare-fun c!1164141 () Bool)

(assert (=> b!6387259 (= c!1164141 ((_ is Star!16303) (h!71533 (exprs!6187 (h!71534 zl!343)))))))

(assert (=> b!6387259 (= e!3876986 e!3876987)))

(declare-fun b!6387260 () Bool)

(assert (=> b!6387260 (= e!3876987 ((as const (Array Context!11374 Bool)) false))))

(assert (= (and d!2002395 c!1164138) b!6387253))

(assert (= (and d!2002395 (not c!1164138)) b!6387255))

(assert (= (and b!6387255 c!1164137) b!6387254))

(assert (= (and b!6387255 (not c!1164137)) b!6387258))

(assert (= (and b!6387258 res!2627281) b!6387257))

(assert (= (and b!6387258 c!1164139) b!6387250))

(assert (= (and b!6387258 (not c!1164139)) b!6387252))

(assert (= (and b!6387252 c!1164140) b!6387256))

(assert (= (and b!6387252 (not c!1164140)) b!6387259))

(assert (= (and b!6387259 c!1164141) b!6387251))

(assert (= (and b!6387259 (not c!1164141)) b!6387260))

(assert (= (or b!6387256 b!6387251) bm!546053))

(assert (= (or b!6387256 b!6387251) bm!546057))

(assert (= (or b!6387250 bm!546053) bm!546052))

(assert (= (or b!6387250 bm!546057) bm!546054))

(assert (= (or b!6387254 b!6387250) bm!546055))

(assert (= (or b!6387254 bm!546054) bm!546056))

(declare-fun m!7186644 () Bool)

(assert (=> bm!546052 m!7186644))

(declare-fun m!7186646 () Bool)

(assert (=> b!6387257 m!7186646))

(assert (=> b!6387253 m!7185966))

(declare-fun m!7186648 () Bool)

(assert (=> bm!546055 m!7186648))

(declare-fun m!7186650 () Bool)

(assert (=> bm!546056 m!7186650))

(assert (=> b!6386438 d!2002395))

(declare-fun d!2002397 () Bool)

(declare-fun nullableFct!2242 (Regex!16303) Bool)

(assert (=> d!2002397 (= (nullable!6296 (h!71533 (exprs!6187 (h!71534 zl!343)))) (nullableFct!2242 (h!71533 (exprs!6187 (h!71534 zl!343)))))))

(declare-fun bs!1598601 () Bool)

(assert (= bs!1598601 d!2002397))

(declare-fun m!7186652 () Bool)

(assert (=> bs!1598601 m!7186652))

(assert (=> b!6386438 d!2002397))

(declare-fun bm!546058 () Bool)

(declare-fun call!546063 () (InoxSet Context!11374))

(assert (=> bm!546058 (= call!546063 (derivationStepZipperDown!1551 (h!71533 (exprs!6187 (Context!11375 (Cons!65085 (h!71533 (exprs!6187 (h!71534 zl!343))) (t!378815 (exprs!6187 (h!71534 zl!343))))))) (Context!11375 (t!378815 (exprs!6187 (Context!11375 (Cons!65085 (h!71533 (exprs!6187 (h!71534 zl!343))) (t!378815 (exprs!6187 (h!71534 zl!343)))))))) (h!71532 s!2326)))))

(declare-fun d!2002399 () Bool)

(declare-fun c!1164143 () Bool)

(declare-fun e!3876992 () Bool)

(assert (=> d!2002399 (= c!1164143 e!3876992)))

(declare-fun res!2627282 () Bool)

(assert (=> d!2002399 (=> (not res!2627282) (not e!3876992))))

(assert (=> d!2002399 (= res!2627282 ((_ is Cons!65085) (exprs!6187 (Context!11375 (Cons!65085 (h!71533 (exprs!6187 (h!71534 zl!343))) (t!378815 (exprs!6187 (h!71534 zl!343))))))))))

(declare-fun e!3876990 () (InoxSet Context!11374))

(assert (=> d!2002399 (= (derivationStepZipperUp!1477 (Context!11375 (Cons!65085 (h!71533 (exprs!6187 (h!71534 zl!343))) (t!378815 (exprs!6187 (h!71534 zl!343))))) (h!71532 s!2326)) e!3876990)))

(declare-fun b!6387261 () Bool)

(declare-fun e!3876991 () (InoxSet Context!11374))

(assert (=> b!6387261 (= e!3876991 ((as const (Array Context!11374 Bool)) false))))

(declare-fun b!6387262 () Bool)

(assert (=> b!6387262 (= e!3876991 call!546063)))

(declare-fun b!6387263 () Bool)

(assert (=> b!6387263 (= e!3876990 ((_ map or) call!546063 (derivationStepZipperUp!1477 (Context!11375 (t!378815 (exprs!6187 (Context!11375 (Cons!65085 (h!71533 (exprs!6187 (h!71534 zl!343))) (t!378815 (exprs!6187 (h!71534 zl!343)))))))) (h!71532 s!2326))))))

(declare-fun b!6387264 () Bool)

(assert (=> b!6387264 (= e!3876992 (nullable!6296 (h!71533 (exprs!6187 (Context!11375 (Cons!65085 (h!71533 (exprs!6187 (h!71534 zl!343))) (t!378815 (exprs!6187 (h!71534 zl!343)))))))))))

(declare-fun b!6387265 () Bool)

(assert (=> b!6387265 (= e!3876990 e!3876991)))

(declare-fun c!1164142 () Bool)

(assert (=> b!6387265 (= c!1164142 ((_ is Cons!65085) (exprs!6187 (Context!11375 (Cons!65085 (h!71533 (exprs!6187 (h!71534 zl!343))) (t!378815 (exprs!6187 (h!71534 zl!343))))))))))

(assert (= (and d!2002399 res!2627282) b!6387264))

(assert (= (and d!2002399 c!1164143) b!6387263))

(assert (= (and d!2002399 (not c!1164143)) b!6387265))

(assert (= (and b!6387265 c!1164142) b!6387262))

(assert (= (and b!6387265 (not c!1164142)) b!6387261))

(assert (= (or b!6387263 b!6387262) bm!546058))

(declare-fun m!7186654 () Bool)

(assert (=> bm!546058 m!7186654))

(declare-fun m!7186656 () Bool)

(assert (=> b!6387263 m!7186656))

(declare-fun m!7186658 () Bool)

(assert (=> b!6387264 m!7186658))

(assert (=> b!6386438 d!2002399))

(declare-fun d!2002401 () Bool)

(assert (=> d!2002401 (= (flatMap!1808 z!1189 lambda!352451) (dynLambda!25823 lambda!352451 (h!71534 zl!343)))))

(declare-fun lt!2371733 () Unit!158543)

(assert (=> d!2002401 (= lt!2371733 (choose!47523 z!1189 (h!71534 zl!343) lambda!352451))))

(assert (=> d!2002401 (= z!1189 (store ((as const (Array Context!11374 Bool)) false) (h!71534 zl!343) true))))

(assert (=> d!2002401 (= (lemmaFlatMapOnSingletonSet!1334 z!1189 (h!71534 zl!343) lambda!352451) lt!2371733)))

(declare-fun b_lambda!242683 () Bool)

(assert (=> (not b_lambda!242683) (not d!2002401)))

(declare-fun bs!1598602 () Bool)

(assert (= bs!1598602 d!2002401))

(assert (=> bs!1598602 m!7186040))

(declare-fun m!7186660 () Bool)

(assert (=> bs!1598602 m!7186660))

(declare-fun m!7186662 () Bool)

(assert (=> bs!1598602 m!7186662))

(declare-fun m!7186664 () Bool)

(assert (=> bs!1598602 m!7186664))

(assert (=> b!6386438 d!2002401))

(declare-fun d!2002403 () Bool)

(assert (=> d!2002403 (= (flatMap!1808 z!1189 lambda!352451) (choose!47522 z!1189 lambda!352451))))

(declare-fun bs!1598603 () Bool)

(assert (= bs!1598603 d!2002403))

(declare-fun m!7186666 () Bool)

(assert (=> bs!1598603 m!7186666))

(assert (=> b!6386438 d!2002403))

(declare-fun bm!546059 () Bool)

(declare-fun call!546064 () (InoxSet Context!11374))

(assert (=> bm!546059 (= call!546064 (derivationStepZipperDown!1551 (h!71533 (exprs!6187 (h!71534 zl!343))) (Context!11375 (t!378815 (exprs!6187 (h!71534 zl!343)))) (h!71532 s!2326)))))

(declare-fun d!2002405 () Bool)

(declare-fun c!1164145 () Bool)

(declare-fun e!3876995 () Bool)

(assert (=> d!2002405 (= c!1164145 e!3876995)))

(declare-fun res!2627283 () Bool)

(assert (=> d!2002405 (=> (not res!2627283) (not e!3876995))))

(assert (=> d!2002405 (= res!2627283 ((_ is Cons!65085) (exprs!6187 (h!71534 zl!343))))))

(declare-fun e!3876993 () (InoxSet Context!11374))

(assert (=> d!2002405 (= (derivationStepZipperUp!1477 (h!71534 zl!343) (h!71532 s!2326)) e!3876993)))

(declare-fun b!6387266 () Bool)

(declare-fun e!3876994 () (InoxSet Context!11374))

(assert (=> b!6387266 (= e!3876994 ((as const (Array Context!11374 Bool)) false))))

(declare-fun b!6387267 () Bool)

(assert (=> b!6387267 (= e!3876994 call!546064)))

(declare-fun b!6387268 () Bool)

(assert (=> b!6387268 (= e!3876993 ((_ map or) call!546064 (derivationStepZipperUp!1477 (Context!11375 (t!378815 (exprs!6187 (h!71534 zl!343)))) (h!71532 s!2326))))))

(declare-fun b!6387269 () Bool)

(assert (=> b!6387269 (= e!3876995 (nullable!6296 (h!71533 (exprs!6187 (h!71534 zl!343)))))))

(declare-fun b!6387270 () Bool)

(assert (=> b!6387270 (= e!3876993 e!3876994)))

(declare-fun c!1164144 () Bool)

(assert (=> b!6387270 (= c!1164144 ((_ is Cons!65085) (exprs!6187 (h!71534 zl!343))))))

(assert (= (and d!2002405 res!2627283) b!6387269))

(assert (= (and d!2002405 c!1164145) b!6387268))

(assert (= (and d!2002405 (not c!1164145)) b!6387270))

(assert (= (and b!6387270 c!1164144) b!6387267))

(assert (= (and b!6387270 (not c!1164144)) b!6387266))

(assert (= (or b!6387268 b!6387267) bm!546059))

(declare-fun m!7186668 () Bool)

(assert (=> bm!546059 m!7186668))

(declare-fun m!7186670 () Bool)

(assert (=> b!6387268 m!7186670))

(assert (=> b!6387269 m!7186044))

(assert (=> b!6386438 d!2002405))

(declare-fun bm!546060 () Bool)

(declare-fun call!546065 () (InoxSet Context!11374))

(assert (=> bm!546060 (= call!546065 (derivationStepZipperDown!1551 (h!71533 (exprs!6187 lt!2371596)) (Context!11375 (t!378815 (exprs!6187 lt!2371596))) (h!71532 s!2326)))))

(declare-fun d!2002407 () Bool)

(declare-fun c!1164147 () Bool)

(declare-fun e!3876998 () Bool)

(assert (=> d!2002407 (= c!1164147 e!3876998)))

(declare-fun res!2627284 () Bool)

(assert (=> d!2002407 (=> (not res!2627284) (not e!3876998))))

(assert (=> d!2002407 (= res!2627284 ((_ is Cons!65085) (exprs!6187 lt!2371596)))))

(declare-fun e!3876996 () (InoxSet Context!11374))

(assert (=> d!2002407 (= (derivationStepZipperUp!1477 lt!2371596 (h!71532 s!2326)) e!3876996)))

(declare-fun b!6387271 () Bool)

(declare-fun e!3876997 () (InoxSet Context!11374))

(assert (=> b!6387271 (= e!3876997 ((as const (Array Context!11374 Bool)) false))))

(declare-fun b!6387272 () Bool)

(assert (=> b!6387272 (= e!3876997 call!546065)))

(declare-fun b!6387273 () Bool)

(assert (=> b!6387273 (= e!3876996 ((_ map or) call!546065 (derivationStepZipperUp!1477 (Context!11375 (t!378815 (exprs!6187 lt!2371596))) (h!71532 s!2326))))))

(declare-fun b!6387274 () Bool)

(assert (=> b!6387274 (= e!3876998 (nullable!6296 (h!71533 (exprs!6187 lt!2371596))))))

(declare-fun b!6387275 () Bool)

(assert (=> b!6387275 (= e!3876996 e!3876997)))

(declare-fun c!1164146 () Bool)

(assert (=> b!6387275 (= c!1164146 ((_ is Cons!65085) (exprs!6187 lt!2371596)))))

(assert (= (and d!2002407 res!2627284) b!6387274))

(assert (= (and d!2002407 c!1164147) b!6387273))

(assert (= (and d!2002407 (not c!1164147)) b!6387275))

(assert (= (and b!6387275 c!1164146) b!6387272))

(assert (= (and b!6387275 (not c!1164146)) b!6387271))

(assert (= (or b!6387273 b!6387272) bm!546060))

(declare-fun m!7186672 () Bool)

(assert (=> bm!546060 m!7186672))

(declare-fun m!7186674 () Bool)

(assert (=> b!6387273 m!7186674))

(declare-fun m!7186676 () Bool)

(assert (=> b!6387274 m!7186676))

(assert (=> b!6386438 d!2002407))

(declare-fun bs!1598604 () Bool)

(declare-fun d!2002409 () Bool)

(assert (= bs!1598604 (and d!2002409 d!2002325)))

(declare-fun lambda!352520 () Int)

(assert (=> bs!1598604 (= lambda!352520 lambda!352501)))

(declare-fun bs!1598605 () Bool)

(assert (= bs!1598605 (and d!2002409 d!2002351)))

(assert (=> bs!1598605 (= lambda!352520 lambda!352504)))

(declare-fun bs!1598606 () Bool)

(assert (= bs!1598606 (and d!2002409 d!2002353)))

(assert (=> bs!1598606 (= lambda!352520 lambda!352507)))

(assert (=> d!2002409 (= (inv!84004 (h!71534 zl!343)) (forall!15481 (exprs!6187 (h!71534 zl!343)) lambda!352520))))

(declare-fun bs!1598607 () Bool)

(assert (= bs!1598607 d!2002409))

(declare-fun m!7186678 () Bool)

(assert (=> bs!1598607 m!7186678))

(assert (=> b!6386420 d!2002409))

(declare-fun d!2002411 () Bool)

(declare-fun e!3877001 () Bool)

(assert (=> d!2002411 (= (matchZipper!2315 ((_ map or) lt!2371609 lt!2371617) (t!378814 s!2326)) e!3877001)))

(declare-fun res!2627287 () Bool)

(assert (=> d!2002411 (=> res!2627287 e!3877001)))

(assert (=> d!2002411 (= res!2627287 (matchZipper!2315 lt!2371609 (t!378814 s!2326)))))

(declare-fun lt!2371736 () Unit!158543)

(declare-fun choose!47527 ((InoxSet Context!11374) (InoxSet Context!11374) List!65208) Unit!158543)

(assert (=> d!2002411 (= lt!2371736 (choose!47527 lt!2371609 lt!2371617 (t!378814 s!2326)))))

(assert (=> d!2002411 (= (lemmaZipperConcatMatchesSameAsBothZippers!1134 lt!2371609 lt!2371617 (t!378814 s!2326)) lt!2371736)))

(declare-fun b!6387278 () Bool)

(assert (=> b!6387278 (= e!3877001 (matchZipper!2315 lt!2371617 (t!378814 s!2326)))))

(assert (= (and d!2002411 (not res!2627287)) b!6387278))

(assert (=> d!2002411 m!7186058))

(assert (=> d!2002411 m!7186056))

(declare-fun m!7186680 () Bool)

(assert (=> d!2002411 m!7186680))

(assert (=> b!6387278 m!7185996))

(assert (=> b!6386430 d!2002411))

(declare-fun d!2002413 () Bool)

(declare-fun c!1164148 () Bool)

(assert (=> d!2002413 (= c!1164148 (isEmpty!37222 (t!378814 s!2326)))))

(declare-fun e!3877002 () Bool)

(assert (=> d!2002413 (= (matchZipper!2315 lt!2371609 (t!378814 s!2326)) e!3877002)))

(declare-fun b!6387279 () Bool)

(assert (=> b!6387279 (= e!3877002 (nullableZipper!2068 lt!2371609))))

(declare-fun b!6387280 () Bool)

(assert (=> b!6387280 (= e!3877002 (matchZipper!2315 (derivationStepZipper!2269 lt!2371609 (head!13096 (t!378814 s!2326))) (tail!12181 (t!378814 s!2326))))))

(assert (= (and d!2002413 c!1164148) b!6387279))

(assert (= (and d!2002413 (not c!1164148)) b!6387280))

(assert (=> d!2002413 m!7186544))

(declare-fun m!7186682 () Bool)

(assert (=> b!6387279 m!7186682))

(assert (=> b!6387280 m!7186548))

(assert (=> b!6387280 m!7186548))

(declare-fun m!7186684 () Bool)

(assert (=> b!6387280 m!7186684))

(assert (=> b!6387280 m!7186552))

(assert (=> b!6387280 m!7186684))

(assert (=> b!6387280 m!7186552))

(declare-fun m!7186686 () Bool)

(assert (=> b!6387280 m!7186686))

(assert (=> b!6386430 d!2002413))

(declare-fun d!2002415 () Bool)

(declare-fun c!1164149 () Bool)

(assert (=> d!2002415 (= c!1164149 (isEmpty!37222 (t!378814 s!2326)))))

(declare-fun e!3877003 () Bool)

(assert (=> d!2002415 (= (matchZipper!2315 ((_ map or) lt!2371609 lt!2371617) (t!378814 s!2326)) e!3877003)))

(declare-fun b!6387281 () Bool)

(assert (=> b!6387281 (= e!3877003 (nullableZipper!2068 ((_ map or) lt!2371609 lt!2371617)))))

(declare-fun b!6387282 () Bool)

(assert (=> b!6387282 (= e!3877003 (matchZipper!2315 (derivationStepZipper!2269 ((_ map or) lt!2371609 lt!2371617) (head!13096 (t!378814 s!2326))) (tail!12181 (t!378814 s!2326))))))

(assert (= (and d!2002415 c!1164149) b!6387281))

(assert (= (and d!2002415 (not c!1164149)) b!6387282))

(assert (=> d!2002415 m!7186544))

(declare-fun m!7186688 () Bool)

(assert (=> b!6387281 m!7186688))

(assert (=> b!6387282 m!7186548))

(assert (=> b!6387282 m!7186548))

(declare-fun m!7186690 () Bool)

(assert (=> b!6387282 m!7186690))

(assert (=> b!6387282 m!7186552))

(assert (=> b!6387282 m!7186690))

(assert (=> b!6387282 m!7186552))

(declare-fun m!7186692 () Bool)

(assert (=> b!6387282 m!7186692))

(assert (=> b!6386430 d!2002415))

(declare-fun b!6387283 () Bool)

(declare-fun e!3877007 () Bool)

(declare-fun lt!2371737 () Option!16194)

(assert (=> b!6387283 (= e!3877007 (= (++!14371 (_1!36585 (get!22538 lt!2371737)) (_2!36585 (get!22538 lt!2371737))) s!2326))))

(declare-fun d!2002417 () Bool)

(declare-fun e!3877008 () Bool)

(assert (=> d!2002417 e!3877008))

(declare-fun res!2627288 () Bool)

(assert (=> d!2002417 (=> res!2627288 e!3877008)))

(assert (=> d!2002417 (= res!2627288 e!3877007)))

(declare-fun res!2627292 () Bool)

(assert (=> d!2002417 (=> (not res!2627292) (not e!3877007))))

(assert (=> d!2002417 (= res!2627292 (isDefined!12897 lt!2371737))))

(declare-fun e!3877006 () Option!16194)

(assert (=> d!2002417 (= lt!2371737 e!3877006)))

(declare-fun c!1164151 () Bool)

(declare-fun e!3877004 () Bool)

(assert (=> d!2002417 (= c!1164151 e!3877004)))

(declare-fun res!2627290 () Bool)

(assert (=> d!2002417 (=> (not res!2627290) (not e!3877004))))

(assert (=> d!2002417 (= res!2627290 (matchR!8486 (regOne!33118 r!7292) Nil!65084))))

(assert (=> d!2002417 (validRegex!8039 (regOne!33118 r!7292))))

(assert (=> d!2002417 (= (findConcatSeparation!2608 (regOne!33118 r!7292) (regTwo!33118 r!7292) Nil!65084 s!2326 s!2326) lt!2371737)))

(declare-fun b!6387284 () Bool)

(assert (=> b!6387284 (= e!3877006 (Some!16193 (tuple2!66565 Nil!65084 s!2326)))))

(declare-fun b!6387285 () Bool)

(declare-fun e!3877005 () Option!16194)

(assert (=> b!6387285 (= e!3877006 e!3877005)))

(declare-fun c!1164150 () Bool)

(assert (=> b!6387285 (= c!1164150 ((_ is Nil!65084) s!2326))))

(declare-fun b!6387286 () Bool)

(declare-fun lt!2371738 () Unit!158543)

(declare-fun lt!2371739 () Unit!158543)

(assert (=> b!6387286 (= lt!2371738 lt!2371739)))

(assert (=> b!6387286 (= (++!14371 (++!14371 Nil!65084 (Cons!65084 (h!71532 s!2326) Nil!65084)) (t!378814 s!2326)) s!2326)))

(assert (=> b!6387286 (= lt!2371739 (lemmaMoveElementToOtherListKeepsConcatEq!2466 Nil!65084 (h!71532 s!2326) (t!378814 s!2326) s!2326))))

(assert (=> b!6387286 (= e!3877005 (findConcatSeparation!2608 (regOne!33118 r!7292) (regTwo!33118 r!7292) (++!14371 Nil!65084 (Cons!65084 (h!71532 s!2326) Nil!65084)) (t!378814 s!2326) s!2326))))

(declare-fun b!6387287 () Bool)

(assert (=> b!6387287 (= e!3877008 (not (isDefined!12897 lt!2371737)))))

(declare-fun b!6387288 () Bool)

(assert (=> b!6387288 (= e!3877005 None!16193)))

(declare-fun b!6387289 () Bool)

(declare-fun res!2627291 () Bool)

(assert (=> b!6387289 (=> (not res!2627291) (not e!3877007))))

(assert (=> b!6387289 (= res!2627291 (matchR!8486 (regTwo!33118 r!7292) (_2!36585 (get!22538 lt!2371737))))))

(declare-fun b!6387290 () Bool)

(assert (=> b!6387290 (= e!3877004 (matchR!8486 (regTwo!33118 r!7292) s!2326))))

(declare-fun b!6387291 () Bool)

(declare-fun res!2627289 () Bool)

(assert (=> b!6387291 (=> (not res!2627289) (not e!3877007))))

(assert (=> b!6387291 (= res!2627289 (matchR!8486 (regOne!33118 r!7292) (_1!36585 (get!22538 lt!2371737))))))

(assert (= (and d!2002417 res!2627290) b!6387290))

(assert (= (and d!2002417 c!1164151) b!6387284))

(assert (= (and d!2002417 (not c!1164151)) b!6387285))

(assert (= (and b!6387285 c!1164150) b!6387288))

(assert (= (and b!6387285 (not c!1164150)) b!6387286))

(assert (= (and d!2002417 res!2627292) b!6387291))

(assert (= (and b!6387291 res!2627289) b!6387289))

(assert (= (and b!6387289 res!2627291) b!6387283))

(assert (= (and d!2002417 (not res!2627288)) b!6387287))

(declare-fun m!7186694 () Bool)

(assert (=> b!6387283 m!7186694))

(declare-fun m!7186696 () Bool)

(assert (=> b!6387283 m!7186696))

(declare-fun m!7186698 () Bool)

(assert (=> b!6387287 m!7186698))

(assert (=> b!6387289 m!7186694))

(declare-fun m!7186700 () Bool)

(assert (=> b!6387289 m!7186700))

(assert (=> b!6387286 m!7186628))

(assert (=> b!6387286 m!7186628))

(assert (=> b!6387286 m!7186630))

(assert (=> b!6387286 m!7186632))

(assert (=> b!6387286 m!7186628))

(declare-fun m!7186702 () Bool)

(assert (=> b!6387286 m!7186702))

(assert (=> b!6387291 m!7186694))

(declare-fun m!7186704 () Bool)

(assert (=> b!6387291 m!7186704))

(assert (=> d!2002417 m!7186698))

(declare-fun m!7186706 () Bool)

(assert (=> d!2002417 m!7186706))

(declare-fun m!7186708 () Bool)

(assert (=> d!2002417 m!7186708))

(assert (=> b!6387290 m!7186640))

(assert (=> b!6386452 d!2002417))

(declare-fun d!2002419 () Bool)

(assert (=> d!2002419 (= (Exists!3373 lambda!352449) (choose!47524 lambda!352449))))

(declare-fun bs!1598608 () Bool)

(assert (= bs!1598608 d!2002419))

(declare-fun m!7186710 () Bool)

(assert (=> bs!1598608 m!7186710))

(assert (=> b!6386452 d!2002419))

(declare-fun d!2002421 () Bool)

(assert (=> d!2002421 (= (Exists!3373 lambda!352450) (choose!47524 lambda!352450))))

(declare-fun bs!1598609 () Bool)

(assert (= bs!1598609 d!2002421))

(declare-fun m!7186712 () Bool)

(assert (=> bs!1598609 m!7186712))

(assert (=> b!6386452 d!2002421))

(declare-fun bs!1598610 () Bool)

(declare-fun d!2002423 () Bool)

(assert (= bs!1598610 (and d!2002423 b!6386855)))

(declare-fun lambda!352521 () Int)

(assert (=> bs!1598610 (not (= lambda!352521 lambda!352481))))

(declare-fun bs!1598611 () Bool)

(assert (= bs!1598611 (and d!2002423 d!2002387)))

(assert (=> bs!1598611 (= (= (regOne!33118 r!7292) lt!2371616) (= lambda!352521 lambda!352519))))

(declare-fun bs!1598612 () Bool)

(assert (= bs!1598612 (and d!2002423 b!6386437)))

(assert (=> bs!1598612 (not (= lambda!352521 lambda!352453))))

(declare-fun bs!1598613 () Bool)

(assert (= bs!1598613 (and d!2002423 b!6386452)))

(assert (=> bs!1598613 (not (= lambda!352521 lambda!352450))))

(assert (=> bs!1598612 (= (= (regOne!33118 r!7292) lt!2371616) (= lambda!352521 lambda!352452))))

(declare-fun bs!1598614 () Bool)

(assert (= bs!1598614 (and d!2002423 d!2002383)))

(assert (=> bs!1598614 (not (= lambda!352521 lambda!352516))))

(assert (=> bs!1598614 (= (= (regOne!33118 r!7292) lt!2371616) (= lambda!352521 lambda!352515))))

(assert (=> bs!1598613 (= lambda!352521 lambda!352449)))

(declare-fun bs!1598615 () Bool)

(assert (= bs!1598615 (and d!2002423 b!6386858)))

(assert (=> bs!1598615 (not (= lambda!352521 lambda!352483))))

(assert (=> d!2002423 true))

(assert (=> d!2002423 true))

(assert (=> d!2002423 true))

(assert (=> d!2002423 (= (isDefined!12897 (findConcatSeparation!2608 (regOne!33118 r!7292) (regTwo!33118 r!7292) Nil!65084 s!2326 s!2326)) (Exists!3373 lambda!352521))))

(declare-fun lt!2371740 () Unit!158543)

(assert (=> d!2002423 (= lt!2371740 (choose!47526 (regOne!33118 r!7292) (regTwo!33118 r!7292) s!2326))))

(assert (=> d!2002423 (validRegex!8039 (regOne!33118 r!7292))))

(assert (=> d!2002423 (= (lemmaFindConcatSeparationEquivalentToExists!2372 (regOne!33118 r!7292) (regTwo!33118 r!7292) s!2326) lt!2371740)))

(declare-fun bs!1598616 () Bool)

(assert (= bs!1598616 d!2002423))

(assert (=> bs!1598616 m!7186026))

(assert (=> bs!1598616 m!7186708))

(declare-fun m!7186714 () Bool)

(assert (=> bs!1598616 m!7186714))

(assert (=> bs!1598616 m!7186026))

(assert (=> bs!1598616 m!7186028))

(declare-fun m!7186716 () Bool)

(assert (=> bs!1598616 m!7186716))

(assert (=> b!6386452 d!2002423))

(declare-fun bs!1598617 () Bool)

(declare-fun d!2002425 () Bool)

(assert (= bs!1598617 (and d!2002425 d!2002423)))

(declare-fun lambda!352522 () Int)

(assert (=> bs!1598617 (= lambda!352522 lambda!352521)))

(declare-fun bs!1598618 () Bool)

(assert (= bs!1598618 (and d!2002425 b!6386855)))

(assert (=> bs!1598618 (not (= lambda!352522 lambda!352481))))

(declare-fun bs!1598619 () Bool)

(assert (= bs!1598619 (and d!2002425 d!2002387)))

(assert (=> bs!1598619 (= (= (regOne!33118 r!7292) lt!2371616) (= lambda!352522 lambda!352519))))

(declare-fun bs!1598620 () Bool)

(assert (= bs!1598620 (and d!2002425 b!6386437)))

(assert (=> bs!1598620 (not (= lambda!352522 lambda!352453))))

(declare-fun bs!1598621 () Bool)

(assert (= bs!1598621 (and d!2002425 b!6386452)))

(assert (=> bs!1598621 (not (= lambda!352522 lambda!352450))))

(assert (=> bs!1598620 (= (= (regOne!33118 r!7292) lt!2371616) (= lambda!352522 lambda!352452))))

(declare-fun bs!1598622 () Bool)

(assert (= bs!1598622 (and d!2002425 d!2002383)))

(assert (=> bs!1598622 (not (= lambda!352522 lambda!352516))))

(assert (=> bs!1598622 (= (= (regOne!33118 r!7292) lt!2371616) (= lambda!352522 lambda!352515))))

(assert (=> bs!1598621 (= lambda!352522 lambda!352449)))

(declare-fun bs!1598623 () Bool)

(assert (= bs!1598623 (and d!2002425 b!6386858)))

(assert (=> bs!1598623 (not (= lambda!352522 lambda!352483))))

(assert (=> d!2002425 true))

(assert (=> d!2002425 true))

(assert (=> d!2002425 true))

(declare-fun lambda!352523 () Int)

(assert (=> bs!1598617 (not (= lambda!352523 lambda!352521))))

(assert (=> bs!1598619 (not (= lambda!352523 lambda!352519))))

(assert (=> bs!1598620 (= (= (regOne!33118 r!7292) lt!2371616) (= lambda!352523 lambda!352453))))

(assert (=> bs!1598621 (= lambda!352523 lambda!352450)))

(assert (=> bs!1598620 (not (= lambda!352523 lambda!352452))))

(assert (=> bs!1598622 (= (= (regOne!33118 r!7292) lt!2371616) (= lambda!352523 lambda!352516))))

(assert (=> bs!1598622 (not (= lambda!352523 lambda!352515))))

(declare-fun bs!1598624 () Bool)

(assert (= bs!1598624 d!2002425))

(assert (=> bs!1598624 (not (= lambda!352523 lambda!352522))))

(assert (=> bs!1598618 (not (= lambda!352523 lambda!352481))))

(assert (=> bs!1598621 (not (= lambda!352523 lambda!352449))))

(assert (=> bs!1598623 (= lambda!352523 lambda!352483)))

(assert (=> d!2002425 true))

(assert (=> d!2002425 true))

(assert (=> d!2002425 true))

(assert (=> d!2002425 (= (Exists!3373 lambda!352522) (Exists!3373 lambda!352523))))

(declare-fun lt!2371741 () Unit!158543)

(assert (=> d!2002425 (= lt!2371741 (choose!47525 (regOne!33118 r!7292) (regTwo!33118 r!7292) s!2326))))

(assert (=> d!2002425 (validRegex!8039 (regOne!33118 r!7292))))

(assert (=> d!2002425 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1910 (regOne!33118 r!7292) (regTwo!33118 r!7292) s!2326) lt!2371741)))

(declare-fun m!7186718 () Bool)

(assert (=> bs!1598624 m!7186718))

(declare-fun m!7186720 () Bool)

(assert (=> bs!1598624 m!7186720))

(declare-fun m!7186722 () Bool)

(assert (=> bs!1598624 m!7186722))

(assert (=> bs!1598624 m!7186708))

(assert (=> b!6386452 d!2002425))

(declare-fun d!2002427 () Bool)

(assert (=> d!2002427 (= (isDefined!12897 (findConcatSeparation!2608 (regOne!33118 r!7292) (regTwo!33118 r!7292) Nil!65084 s!2326 s!2326)) (not (isEmpty!37224 (findConcatSeparation!2608 (regOne!33118 r!7292) (regTwo!33118 r!7292) Nil!65084 s!2326 s!2326))))))

(declare-fun bs!1598625 () Bool)

(assert (= bs!1598625 d!2002427))

(assert (=> bs!1598625 m!7186026))

(declare-fun m!7186724 () Bool)

(assert (=> bs!1598625 m!7186724))

(assert (=> b!6386452 d!2002427))

(declare-fun bs!1598626 () Bool)

(declare-fun d!2002429 () Bool)

(assert (= bs!1598626 (and d!2002429 d!2002325)))

(declare-fun lambda!352526 () Int)

(assert (=> bs!1598626 (= lambda!352526 lambda!352501)))

(declare-fun bs!1598627 () Bool)

(assert (= bs!1598627 (and d!2002429 d!2002351)))

(assert (=> bs!1598627 (= lambda!352526 lambda!352504)))

(declare-fun bs!1598628 () Bool)

(assert (= bs!1598628 (and d!2002429 d!2002353)))

(assert (=> bs!1598628 (= lambda!352526 lambda!352507)))

(declare-fun bs!1598629 () Bool)

(assert (= bs!1598629 (and d!2002429 d!2002409)))

(assert (=> bs!1598629 (= lambda!352526 lambda!352520)))

(declare-fun b!6387312 () Bool)

(declare-fun e!3877022 () Regex!16303)

(declare-fun e!3877024 () Regex!16303)

(assert (=> b!6387312 (= e!3877022 e!3877024)))

(declare-fun c!1164160 () Bool)

(assert (=> b!6387312 (= c!1164160 ((_ is Cons!65085) (exprs!6187 (h!71534 zl!343))))))

(declare-fun b!6387313 () Bool)

(assert (=> b!6387313 (= e!3877024 (Concat!25148 (h!71533 (exprs!6187 (h!71534 zl!343))) (generalisedConcat!1900 (t!378815 (exprs!6187 (h!71534 zl!343))))))))

(declare-fun b!6387314 () Bool)

(declare-fun e!3877025 () Bool)

(declare-fun e!3877026 () Bool)

(assert (=> b!6387314 (= e!3877025 e!3877026)))

(declare-fun c!1164163 () Bool)

(assert (=> b!6387314 (= c!1164163 (isEmpty!37221 (exprs!6187 (h!71534 zl!343))))))

(declare-fun b!6387315 () Bool)

(assert (=> b!6387315 (= e!3877022 (h!71533 (exprs!6187 (h!71534 zl!343))))))

(declare-fun b!6387316 () Bool)

(declare-fun lt!2371744 () Regex!16303)

(declare-fun isEmptyExpr!1704 (Regex!16303) Bool)

(assert (=> b!6387316 (= e!3877026 (isEmptyExpr!1704 lt!2371744))))

(declare-fun b!6387318 () Bool)

(declare-fun e!3877023 () Bool)

(assert (=> b!6387318 (= e!3877023 (isEmpty!37221 (t!378815 (exprs!6187 (h!71534 zl!343)))))))

(declare-fun b!6387319 () Bool)

(declare-fun e!3877021 () Bool)

(assert (=> b!6387319 (= e!3877021 (= lt!2371744 (head!13097 (exprs!6187 (h!71534 zl!343)))))))

(declare-fun b!6387320 () Bool)

(assert (=> b!6387320 (= e!3877024 EmptyExpr!16303)))

(declare-fun b!6387321 () Bool)

(assert (=> b!6387321 (= e!3877026 e!3877021)))

(declare-fun c!1164161 () Bool)

(assert (=> b!6387321 (= c!1164161 (isEmpty!37221 (tail!12182 (exprs!6187 (h!71534 zl!343)))))))

(assert (=> d!2002429 e!3877025))

(declare-fun res!2627298 () Bool)

(assert (=> d!2002429 (=> (not res!2627298) (not e!3877025))))

(assert (=> d!2002429 (= res!2627298 (validRegex!8039 lt!2371744))))

(assert (=> d!2002429 (= lt!2371744 e!3877022)))

(declare-fun c!1164162 () Bool)

(assert (=> d!2002429 (= c!1164162 e!3877023)))

(declare-fun res!2627297 () Bool)

(assert (=> d!2002429 (=> (not res!2627297) (not e!3877023))))

(assert (=> d!2002429 (= res!2627297 ((_ is Cons!65085) (exprs!6187 (h!71534 zl!343))))))

(assert (=> d!2002429 (forall!15481 (exprs!6187 (h!71534 zl!343)) lambda!352526)))

(assert (=> d!2002429 (= (generalisedConcat!1900 (exprs!6187 (h!71534 zl!343))) lt!2371744)))

(declare-fun b!6387317 () Bool)

(declare-fun isConcat!1227 (Regex!16303) Bool)

(assert (=> b!6387317 (= e!3877021 (isConcat!1227 lt!2371744))))

(assert (= (and d!2002429 res!2627297) b!6387318))

(assert (= (and d!2002429 c!1164162) b!6387315))

(assert (= (and d!2002429 (not c!1164162)) b!6387312))

(assert (= (and b!6387312 c!1164160) b!6387313))

(assert (= (and b!6387312 (not c!1164160)) b!6387320))

(assert (= (and d!2002429 res!2627298) b!6387314))

(assert (= (and b!6387314 c!1164163) b!6387316))

(assert (= (and b!6387314 (not c!1164163)) b!6387321))

(assert (= (and b!6387321 c!1164161) b!6387319))

(assert (= (and b!6387321 (not c!1164161)) b!6387317))

(declare-fun m!7186726 () Bool)

(assert (=> b!6387314 m!7186726))

(declare-fun m!7186728 () Bool)

(assert (=> b!6387321 m!7186728))

(assert (=> b!6387321 m!7186728))

(declare-fun m!7186730 () Bool)

(assert (=> b!6387321 m!7186730))

(assert (=> b!6387318 m!7185962))

(declare-fun m!7186732 () Bool)

(assert (=> b!6387317 m!7186732))

(assert (=> b!6387313 m!7186066))

(declare-fun m!7186734 () Bool)

(assert (=> b!6387319 m!7186734))

(declare-fun m!7186736 () Bool)

(assert (=> b!6387316 m!7186736))

(declare-fun m!7186738 () Bool)

(assert (=> d!2002429 m!7186738))

(declare-fun m!7186740 () Bool)

(assert (=> d!2002429 m!7186740))

(assert (=> b!6386431 d!2002429))

(declare-fun d!2002431 () Bool)

(declare-fun lt!2371745 () Regex!16303)

(assert (=> d!2002431 (validRegex!8039 lt!2371745)))

(assert (=> d!2002431 (= lt!2371745 (generalisedUnion!2147 (unfocusZipperList!1724 (Cons!65086 lt!2371620 Nil!65086))))))

(assert (=> d!2002431 (= (unfocusZipper!2045 (Cons!65086 lt!2371620 Nil!65086)) lt!2371745)))

(declare-fun bs!1598630 () Bool)

(assert (= bs!1598630 d!2002431))

(declare-fun m!7186742 () Bool)

(assert (=> bs!1598630 m!7186742))

(declare-fun m!7186744 () Bool)

(assert (=> bs!1598630 m!7186744))

(assert (=> bs!1598630 m!7186744))

(declare-fun m!7186746 () Bool)

(assert (=> bs!1598630 m!7186746))

(assert (=> b!6386453 d!2002431))

(declare-fun bm!546061 () Bool)

(declare-fun call!546066 () Bool)

(assert (=> bm!546061 (= call!546066 (isEmpty!37222 (_2!36585 lt!2371613)))))

(declare-fun b!6387322 () Bool)

(declare-fun e!3877028 () Bool)

(declare-fun e!3877030 () Bool)

(assert (=> b!6387322 (= e!3877028 e!3877030)))

(declare-fun res!2627306 () Bool)

(assert (=> b!6387322 (=> res!2627306 e!3877030)))

(assert (=> b!6387322 (= res!2627306 call!546066)))

(declare-fun b!6387323 () Bool)

(declare-fun e!3877032 () Bool)

(assert (=> b!6387323 (= e!3877032 e!3877028)))

(declare-fun res!2627304 () Bool)

(assert (=> b!6387323 (=> (not res!2627304) (not e!3877028))))

(declare-fun lt!2371746 () Bool)

(assert (=> b!6387323 (= res!2627304 (not lt!2371746))))

(declare-fun b!6387324 () Bool)

(declare-fun res!2627301 () Bool)

(declare-fun e!3877029 () Bool)

(assert (=> b!6387324 (=> (not res!2627301) (not e!3877029))))

(assert (=> b!6387324 (= res!2627301 (not call!546066))))

(declare-fun b!6387325 () Bool)

(declare-fun e!3877027 () Bool)

(declare-fun e!3877033 () Bool)

(assert (=> b!6387325 (= e!3877027 e!3877033)))

(declare-fun c!1164166 () Bool)

(assert (=> b!6387325 (= c!1164166 ((_ is EmptyLang!16303) (regTwo!33118 r!7292)))))

(declare-fun b!6387326 () Bool)

(assert (=> b!6387326 (= e!3877030 (not (= (head!13096 (_2!36585 lt!2371613)) (c!1163902 (regTwo!33118 r!7292)))))))

(declare-fun b!6387327 () Bool)

(declare-fun res!2627299 () Bool)

(assert (=> b!6387327 (=> res!2627299 e!3877032)))

(assert (=> b!6387327 (= res!2627299 (not ((_ is ElementMatch!16303) (regTwo!33118 r!7292))))))

(assert (=> b!6387327 (= e!3877033 e!3877032)))

(declare-fun b!6387328 () Bool)

(declare-fun res!2627303 () Bool)

(assert (=> b!6387328 (=> (not res!2627303) (not e!3877029))))

(assert (=> b!6387328 (= res!2627303 (isEmpty!37222 (tail!12181 (_2!36585 lt!2371613))))))

(declare-fun b!6387330 () Bool)

(declare-fun res!2627302 () Bool)

(assert (=> b!6387330 (=> res!2627302 e!3877030)))

(assert (=> b!6387330 (= res!2627302 (not (isEmpty!37222 (tail!12181 (_2!36585 lt!2371613)))))))

(declare-fun b!6387331 () Bool)

(assert (=> b!6387331 (= e!3877033 (not lt!2371746))))

(declare-fun b!6387332 () Bool)

(declare-fun e!3877031 () Bool)

(assert (=> b!6387332 (= e!3877031 (nullable!6296 (regTwo!33118 r!7292)))))

(declare-fun b!6387333 () Bool)

(assert (=> b!6387333 (= e!3877027 (= lt!2371746 call!546066))))

(declare-fun b!6387334 () Bool)

(declare-fun res!2627305 () Bool)

(assert (=> b!6387334 (=> res!2627305 e!3877032)))

(assert (=> b!6387334 (= res!2627305 e!3877029)))

(declare-fun res!2627300 () Bool)

(assert (=> b!6387334 (=> (not res!2627300) (not e!3877029))))

(assert (=> b!6387334 (= res!2627300 lt!2371746)))

(declare-fun b!6387335 () Bool)

(assert (=> b!6387335 (= e!3877031 (matchR!8486 (derivativeStep!5007 (regTwo!33118 r!7292) (head!13096 (_2!36585 lt!2371613))) (tail!12181 (_2!36585 lt!2371613))))))

(declare-fun d!2002433 () Bool)

(assert (=> d!2002433 e!3877027))

(declare-fun c!1164164 () Bool)

(assert (=> d!2002433 (= c!1164164 ((_ is EmptyExpr!16303) (regTwo!33118 r!7292)))))

(assert (=> d!2002433 (= lt!2371746 e!3877031)))

(declare-fun c!1164165 () Bool)

(assert (=> d!2002433 (= c!1164165 (isEmpty!37222 (_2!36585 lt!2371613)))))

(assert (=> d!2002433 (validRegex!8039 (regTwo!33118 r!7292))))

(assert (=> d!2002433 (= (matchR!8486 (regTwo!33118 r!7292) (_2!36585 lt!2371613)) lt!2371746)))

(declare-fun b!6387329 () Bool)

(assert (=> b!6387329 (= e!3877029 (= (head!13096 (_2!36585 lt!2371613)) (c!1163902 (regTwo!33118 r!7292))))))

(assert (= (and d!2002433 c!1164165) b!6387332))

(assert (= (and d!2002433 (not c!1164165)) b!6387335))

(assert (= (and d!2002433 c!1164164) b!6387333))

(assert (= (and d!2002433 (not c!1164164)) b!6387325))

(assert (= (and b!6387325 c!1164166) b!6387331))

(assert (= (and b!6387325 (not c!1164166)) b!6387327))

(assert (= (and b!6387327 (not res!2627299)) b!6387334))

(assert (= (and b!6387334 res!2627300) b!6387324))

(assert (= (and b!6387324 res!2627301) b!6387328))

(assert (= (and b!6387328 res!2627303) b!6387329))

(assert (= (and b!6387334 (not res!2627305)) b!6387323))

(assert (= (and b!6387323 res!2627304) b!6387322))

(assert (= (and b!6387322 (not res!2627306)) b!6387330))

(assert (= (and b!6387330 (not res!2627302)) b!6387326))

(assert (= (or b!6387333 b!6387322 b!6387324) bm!546061))

(declare-fun m!7186748 () Bool)

(assert (=> b!6387326 m!7186748))

(declare-fun m!7186750 () Bool)

(assert (=> b!6387328 m!7186750))

(assert (=> b!6387328 m!7186750))

(declare-fun m!7186752 () Bool)

(assert (=> b!6387328 m!7186752))

(assert (=> b!6387335 m!7186748))

(assert (=> b!6387335 m!7186748))

(declare-fun m!7186754 () Bool)

(assert (=> b!6387335 m!7186754))

(assert (=> b!6387335 m!7186750))

(assert (=> b!6387335 m!7186754))

(assert (=> b!6387335 m!7186750))

(declare-fun m!7186756 () Bool)

(assert (=> b!6387335 m!7186756))

(declare-fun m!7186758 () Bool)

(assert (=> b!6387332 m!7186758))

(assert (=> b!6387330 m!7186750))

(assert (=> b!6387330 m!7186750))

(assert (=> b!6387330 m!7186752))

(declare-fun m!7186760 () Bool)

(assert (=> bm!546061 m!7186760))

(assert (=> d!2002433 m!7186760))

(declare-fun m!7186762 () Bool)

(assert (=> d!2002433 m!7186762))

(assert (=> b!6387329 m!7186748))

(assert (=> b!6386432 d!2002433))

(declare-fun b!6387370 () Bool)

(declare-fun e!3877058 () Bool)

(declare-fun lt!2371749 () Int)

(assert (=> b!6387370 (= e!3877058 (= lt!2371749 1))))

(declare-fun b!6387371 () Bool)

(declare-fun e!3877054 () Bool)

(declare-fun e!3877059 () Bool)

(assert (=> b!6387371 (= e!3877054 e!3877059)))

(declare-fun c!1164187 () Bool)

(assert (=> b!6387371 (= c!1164187 ((_ is Union!16303) r!7292))))

(declare-fun bm!546076 () Bool)

(declare-fun call!546085 () Int)

(assert (=> bm!546076 (= call!546085 (regexDepth!330 (ite c!1164187 (regOne!33119 r!7292) (regTwo!33118 r!7292))))))

(declare-fun d!2002435 () Bool)

(assert (=> d!2002435 e!3877054))

(declare-fun res!2627313 () Bool)

(assert (=> d!2002435 (=> (not res!2627313) (not e!3877054))))

(assert (=> d!2002435 (= res!2627313 (> lt!2371749 0))))

(declare-fun e!3877056 () Int)

(assert (=> d!2002435 (= lt!2371749 e!3877056)))

(declare-fun c!1164182 () Bool)

(assert (=> d!2002435 (= c!1164182 ((_ is ElementMatch!16303) r!7292))))

(assert (=> d!2002435 (= (regexDepth!330 r!7292) lt!2371749)))

(declare-fun bm!546077 () Bool)

(declare-fun call!546081 () Int)

(declare-fun call!546087 () Int)

(assert (=> bm!546077 (= call!546081 call!546087)))

(declare-fun b!6387372 () Bool)

(declare-fun e!3877063 () Bool)

(assert (=> b!6387372 (= e!3877063 (> lt!2371749 call!546085))))

(declare-fun bm!546078 () Bool)

(declare-fun call!546086 () Int)

(declare-fun call!546082 () Int)

(assert (=> bm!546078 (= call!546086 call!546082)))

(declare-fun b!6387373 () Bool)

(declare-fun e!3877055 () Int)

(assert (=> b!6387373 (= e!3877055 (+ 1 call!546082))))

(declare-fun b!6387374 () Bool)

(assert (=> b!6387374 (= e!3877058 (> lt!2371749 call!546081))))

(declare-fun b!6387375 () Bool)

(declare-fun e!3877060 () Int)

(declare-fun call!546084 () Int)

(assert (=> b!6387375 (= e!3877060 (+ 1 call!546084))))

(declare-fun b!6387376 () Bool)

(declare-fun e!3877062 () Int)

(assert (=> b!6387376 (= e!3877062 1)))

(declare-fun c!1164183 () Bool)

(declare-fun bm!546079 () Bool)

(assert (=> bm!546079 (= call!546087 (regexDepth!330 (ite c!1164187 (regTwo!33119 r!7292) (ite c!1164183 (regOne!33118 r!7292) (reg!16632 r!7292)))))))

(declare-fun b!6387377 () Bool)

(declare-fun res!2627315 () Bool)

(assert (=> b!6387377 (=> (not res!2627315) (not e!3877063))))

(assert (=> b!6387377 (= res!2627315 (> lt!2371749 call!546081))))

(declare-fun e!3877057 () Bool)

(assert (=> b!6387377 (= e!3877057 e!3877063)))

(declare-fun b!6387378 () Bool)

(assert (=> b!6387378 (= e!3877059 e!3877057)))

(assert (=> b!6387378 (= c!1164183 ((_ is Concat!25148) r!7292))))

(declare-fun b!6387379 () Bool)

(assert (=> b!6387379 (= e!3877056 e!3877055)))

(declare-fun c!1164184 () Bool)

(assert (=> b!6387379 (= c!1164184 ((_ is Star!16303) r!7292))))

(declare-fun b!6387380 () Bool)

(assert (=> b!6387380 (= e!3877062 (+ 1 call!546084))))

(declare-fun b!6387381 () Bool)

(assert (=> b!6387381 (= e!3877060 e!3877062)))

(declare-fun c!1164181 () Bool)

(assert (=> b!6387381 (= c!1164181 ((_ is Concat!25148) r!7292))))

(declare-fun b!6387382 () Bool)

(declare-fun e!3877061 () Bool)

(assert (=> b!6387382 (= e!3877059 e!3877061)))

(declare-fun res!2627314 () Bool)

(assert (=> b!6387382 (= res!2627314 (> lt!2371749 call!546085))))

(assert (=> b!6387382 (=> (not res!2627314) (not e!3877061))))

(declare-fun b!6387383 () Bool)

(assert (=> b!6387383 (= e!3877056 1)))

(declare-fun bm!546080 () Bool)

(declare-fun call!546083 () Int)

(declare-fun c!1164185 () Bool)

(assert (=> bm!546080 (= call!546083 (regexDepth!330 (ite c!1164185 (regTwo!33119 r!7292) (regOne!33118 r!7292))))))

(declare-fun b!6387384 () Bool)

(assert (=> b!6387384 (= e!3877061 (> lt!2371749 call!546087))))

(declare-fun b!6387385 () Bool)

(assert (=> b!6387385 (= c!1164185 ((_ is Union!16303) r!7292))))

(assert (=> b!6387385 (= e!3877055 e!3877060)))

(declare-fun bm!546081 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!546081 (= call!546084 (maxBigInt!0 (ite c!1164185 call!546086 call!546083) (ite c!1164185 call!546083 call!546086)))))

(declare-fun bm!546082 () Bool)

(assert (=> bm!546082 (= call!546082 (regexDepth!330 (ite c!1164184 (reg!16632 r!7292) (ite c!1164185 (regOne!33119 r!7292) (regTwo!33118 r!7292)))))))

(declare-fun b!6387386 () Bool)

(declare-fun c!1164186 () Bool)

(assert (=> b!6387386 (= c!1164186 ((_ is Star!16303) r!7292))))

(assert (=> b!6387386 (= e!3877057 e!3877058)))

(assert (= (and d!2002435 c!1164182) b!6387383))

(assert (= (and d!2002435 (not c!1164182)) b!6387379))

(assert (= (and b!6387379 c!1164184) b!6387373))

(assert (= (and b!6387379 (not c!1164184)) b!6387385))

(assert (= (and b!6387385 c!1164185) b!6387375))

(assert (= (and b!6387385 (not c!1164185)) b!6387381))

(assert (= (and b!6387381 c!1164181) b!6387380))

(assert (= (and b!6387381 (not c!1164181)) b!6387376))

(assert (= (or b!6387375 b!6387380) bm!546080))

(assert (= (or b!6387375 b!6387380) bm!546078))

(assert (= (or b!6387375 b!6387380) bm!546081))

(assert (= (or b!6387373 bm!546078) bm!546082))

(assert (= (and d!2002435 res!2627313) b!6387371))

(assert (= (and b!6387371 c!1164187) b!6387382))

(assert (= (and b!6387371 (not c!1164187)) b!6387378))

(assert (= (and b!6387382 res!2627314) b!6387384))

(assert (= (and b!6387378 c!1164183) b!6387377))

(assert (= (and b!6387378 (not c!1164183)) b!6387386))

(assert (= (and b!6387377 res!2627315) b!6387372))

(assert (= (and b!6387386 c!1164186) b!6387374))

(assert (= (and b!6387386 (not c!1164186)) b!6387370))

(assert (= (or b!6387377 b!6387374) bm!546077))

(assert (= (or b!6387384 bm!546077) bm!546079))

(assert (= (or b!6387382 b!6387372) bm!546076))

(declare-fun m!7186764 () Bool)

(assert (=> bm!546080 m!7186764))

(declare-fun m!7186766 () Bool)

(assert (=> bm!546082 m!7186766))

(declare-fun m!7186768 () Bool)

(assert (=> bm!546081 m!7186768))

(declare-fun m!7186770 () Bool)

(assert (=> bm!546076 m!7186770))

(declare-fun m!7186772 () Bool)

(assert (=> bm!546079 m!7186772))

(assert (=> b!6386454 d!2002435))

(declare-fun b!6387387 () Bool)

(declare-fun e!3877068 () Bool)

(declare-fun lt!2371750 () Int)

(assert (=> b!6387387 (= e!3877068 (= lt!2371750 1))))

(declare-fun b!6387388 () Bool)

(declare-fun e!3877064 () Bool)

(declare-fun e!3877069 () Bool)

(assert (=> b!6387388 (= e!3877064 e!3877069)))

(declare-fun c!1164194 () Bool)

(assert (=> b!6387388 (= c!1164194 ((_ is Union!16303) (generalisedConcat!1900 (t!378815 (exprs!6187 (h!71534 zl!343))))))))

(declare-fun bm!546083 () Bool)

(declare-fun call!546092 () Int)

(assert (=> bm!546083 (= call!546092 (regexDepth!330 (ite c!1164194 (regOne!33119 (generalisedConcat!1900 (t!378815 (exprs!6187 (h!71534 zl!343))))) (regTwo!33118 (generalisedConcat!1900 (t!378815 (exprs!6187 (h!71534 zl!343))))))))))

(declare-fun d!2002437 () Bool)

(assert (=> d!2002437 e!3877064))

(declare-fun res!2627316 () Bool)

(assert (=> d!2002437 (=> (not res!2627316) (not e!3877064))))

(assert (=> d!2002437 (= res!2627316 (> lt!2371750 0))))

(declare-fun e!3877066 () Int)

(assert (=> d!2002437 (= lt!2371750 e!3877066)))

(declare-fun c!1164189 () Bool)

(assert (=> d!2002437 (= c!1164189 ((_ is ElementMatch!16303) (generalisedConcat!1900 (t!378815 (exprs!6187 (h!71534 zl!343))))))))

(assert (=> d!2002437 (= (regexDepth!330 (generalisedConcat!1900 (t!378815 (exprs!6187 (h!71534 zl!343))))) lt!2371750)))

(declare-fun bm!546084 () Bool)

(declare-fun call!546088 () Int)

(declare-fun call!546094 () Int)

(assert (=> bm!546084 (= call!546088 call!546094)))

(declare-fun b!6387389 () Bool)

(declare-fun e!3877073 () Bool)

(assert (=> b!6387389 (= e!3877073 (> lt!2371750 call!546092))))

(declare-fun bm!546085 () Bool)

(declare-fun call!546093 () Int)

(declare-fun call!546089 () Int)

(assert (=> bm!546085 (= call!546093 call!546089)))

(declare-fun b!6387390 () Bool)

(declare-fun e!3877065 () Int)

(assert (=> b!6387390 (= e!3877065 (+ 1 call!546089))))

(declare-fun b!6387391 () Bool)

(assert (=> b!6387391 (= e!3877068 (> lt!2371750 call!546088))))

(declare-fun b!6387392 () Bool)

(declare-fun e!3877070 () Int)

(declare-fun call!546091 () Int)

(assert (=> b!6387392 (= e!3877070 (+ 1 call!546091))))

(declare-fun b!6387393 () Bool)

(declare-fun e!3877072 () Int)

(assert (=> b!6387393 (= e!3877072 1)))

(declare-fun bm!546086 () Bool)

(declare-fun c!1164190 () Bool)

(assert (=> bm!546086 (= call!546094 (regexDepth!330 (ite c!1164194 (regTwo!33119 (generalisedConcat!1900 (t!378815 (exprs!6187 (h!71534 zl!343))))) (ite c!1164190 (regOne!33118 (generalisedConcat!1900 (t!378815 (exprs!6187 (h!71534 zl!343))))) (reg!16632 (generalisedConcat!1900 (t!378815 (exprs!6187 (h!71534 zl!343)))))))))))

(declare-fun b!6387394 () Bool)

(declare-fun res!2627318 () Bool)

(assert (=> b!6387394 (=> (not res!2627318) (not e!3877073))))

(assert (=> b!6387394 (= res!2627318 (> lt!2371750 call!546088))))

(declare-fun e!3877067 () Bool)

(assert (=> b!6387394 (= e!3877067 e!3877073)))

(declare-fun b!6387395 () Bool)

(assert (=> b!6387395 (= e!3877069 e!3877067)))

(assert (=> b!6387395 (= c!1164190 ((_ is Concat!25148) (generalisedConcat!1900 (t!378815 (exprs!6187 (h!71534 zl!343))))))))

(declare-fun b!6387396 () Bool)

(assert (=> b!6387396 (= e!3877066 e!3877065)))

(declare-fun c!1164191 () Bool)

(assert (=> b!6387396 (= c!1164191 ((_ is Star!16303) (generalisedConcat!1900 (t!378815 (exprs!6187 (h!71534 zl!343))))))))

(declare-fun b!6387397 () Bool)

(assert (=> b!6387397 (= e!3877072 (+ 1 call!546091))))

(declare-fun b!6387398 () Bool)

(assert (=> b!6387398 (= e!3877070 e!3877072)))

(declare-fun c!1164188 () Bool)

(assert (=> b!6387398 (= c!1164188 ((_ is Concat!25148) (generalisedConcat!1900 (t!378815 (exprs!6187 (h!71534 zl!343))))))))

(declare-fun b!6387399 () Bool)

(declare-fun e!3877071 () Bool)

(assert (=> b!6387399 (= e!3877069 e!3877071)))

(declare-fun res!2627317 () Bool)

(assert (=> b!6387399 (= res!2627317 (> lt!2371750 call!546092))))

(assert (=> b!6387399 (=> (not res!2627317) (not e!3877071))))

(declare-fun b!6387400 () Bool)

(assert (=> b!6387400 (= e!3877066 1)))

(declare-fun bm!546087 () Bool)

(declare-fun call!546090 () Int)

(declare-fun c!1164192 () Bool)

(assert (=> bm!546087 (= call!546090 (regexDepth!330 (ite c!1164192 (regTwo!33119 (generalisedConcat!1900 (t!378815 (exprs!6187 (h!71534 zl!343))))) (regOne!33118 (generalisedConcat!1900 (t!378815 (exprs!6187 (h!71534 zl!343))))))))))

(declare-fun b!6387401 () Bool)

(assert (=> b!6387401 (= e!3877071 (> lt!2371750 call!546094))))

(declare-fun b!6387402 () Bool)

(assert (=> b!6387402 (= c!1164192 ((_ is Union!16303) (generalisedConcat!1900 (t!378815 (exprs!6187 (h!71534 zl!343))))))))

(assert (=> b!6387402 (= e!3877065 e!3877070)))

(declare-fun bm!546088 () Bool)

(assert (=> bm!546088 (= call!546091 (maxBigInt!0 (ite c!1164192 call!546093 call!546090) (ite c!1164192 call!546090 call!546093)))))

(declare-fun bm!546089 () Bool)

(assert (=> bm!546089 (= call!546089 (regexDepth!330 (ite c!1164191 (reg!16632 (generalisedConcat!1900 (t!378815 (exprs!6187 (h!71534 zl!343))))) (ite c!1164192 (regOne!33119 (generalisedConcat!1900 (t!378815 (exprs!6187 (h!71534 zl!343))))) (regTwo!33118 (generalisedConcat!1900 (t!378815 (exprs!6187 (h!71534 zl!343)))))))))))

(declare-fun b!6387403 () Bool)

(declare-fun c!1164193 () Bool)

(assert (=> b!6387403 (= c!1164193 ((_ is Star!16303) (generalisedConcat!1900 (t!378815 (exprs!6187 (h!71534 zl!343))))))))

(assert (=> b!6387403 (= e!3877067 e!3877068)))

(assert (= (and d!2002437 c!1164189) b!6387400))

(assert (= (and d!2002437 (not c!1164189)) b!6387396))

(assert (= (and b!6387396 c!1164191) b!6387390))

(assert (= (and b!6387396 (not c!1164191)) b!6387402))

(assert (= (and b!6387402 c!1164192) b!6387392))

(assert (= (and b!6387402 (not c!1164192)) b!6387398))

(assert (= (and b!6387398 c!1164188) b!6387397))

(assert (= (and b!6387398 (not c!1164188)) b!6387393))

(assert (= (or b!6387392 b!6387397) bm!546087))

(assert (= (or b!6387392 b!6387397) bm!546085))

(assert (= (or b!6387392 b!6387397) bm!546088))

(assert (= (or b!6387390 bm!546085) bm!546089))

(assert (= (and d!2002437 res!2627316) b!6387388))

(assert (= (and b!6387388 c!1164194) b!6387399))

(assert (= (and b!6387388 (not c!1164194)) b!6387395))

(assert (= (and b!6387399 res!2627317) b!6387401))

(assert (= (and b!6387395 c!1164190) b!6387394))

(assert (= (and b!6387395 (not c!1164190)) b!6387403))

(assert (= (and b!6387394 res!2627318) b!6387389))

(assert (= (and b!6387403 c!1164193) b!6387391))

(assert (= (and b!6387403 (not c!1164193)) b!6387387))

(assert (= (or b!6387394 b!6387391) bm!546084))

(assert (= (or b!6387401 bm!546084) bm!546086))

(assert (= (or b!6387399 b!6387389) bm!546083))

(declare-fun m!7186774 () Bool)

(assert (=> bm!546087 m!7186774))

(declare-fun m!7186776 () Bool)

(assert (=> bm!546089 m!7186776))

(declare-fun m!7186778 () Bool)

(assert (=> bm!546088 m!7186778))

(declare-fun m!7186780 () Bool)

(assert (=> bm!546083 m!7186780))

(declare-fun m!7186782 () Bool)

(assert (=> bm!546086 m!7186782))

(assert (=> b!6386454 d!2002437))

(declare-fun bs!1598631 () Bool)

(declare-fun d!2002439 () Bool)

(assert (= bs!1598631 (and d!2002439 d!2002409)))

(declare-fun lambda!352527 () Int)

(assert (=> bs!1598631 (= lambda!352527 lambda!352520)))

(declare-fun bs!1598632 () Bool)

(assert (= bs!1598632 (and d!2002439 d!2002351)))

(assert (=> bs!1598632 (= lambda!352527 lambda!352504)))

(declare-fun bs!1598633 () Bool)

(assert (= bs!1598633 (and d!2002439 d!2002353)))

(assert (=> bs!1598633 (= lambda!352527 lambda!352507)))

(declare-fun bs!1598634 () Bool)

(assert (= bs!1598634 (and d!2002439 d!2002429)))

(assert (=> bs!1598634 (= lambda!352527 lambda!352526)))

(declare-fun bs!1598635 () Bool)

(assert (= bs!1598635 (and d!2002439 d!2002325)))

(assert (=> bs!1598635 (= lambda!352527 lambda!352501)))

(declare-fun b!6387404 () Bool)

(declare-fun e!3877075 () Regex!16303)

(declare-fun e!3877077 () Regex!16303)

(assert (=> b!6387404 (= e!3877075 e!3877077)))

(declare-fun c!1164195 () Bool)

(assert (=> b!6387404 (= c!1164195 ((_ is Cons!65085) (t!378815 (exprs!6187 (h!71534 zl!343)))))))

(declare-fun b!6387405 () Bool)

(assert (=> b!6387405 (= e!3877077 (Concat!25148 (h!71533 (t!378815 (exprs!6187 (h!71534 zl!343)))) (generalisedConcat!1900 (t!378815 (t!378815 (exprs!6187 (h!71534 zl!343)))))))))

(declare-fun b!6387406 () Bool)

(declare-fun e!3877078 () Bool)

(declare-fun e!3877079 () Bool)

(assert (=> b!6387406 (= e!3877078 e!3877079)))

(declare-fun c!1164198 () Bool)

(assert (=> b!6387406 (= c!1164198 (isEmpty!37221 (t!378815 (exprs!6187 (h!71534 zl!343)))))))

(declare-fun b!6387407 () Bool)

(assert (=> b!6387407 (= e!3877075 (h!71533 (t!378815 (exprs!6187 (h!71534 zl!343)))))))

(declare-fun b!6387408 () Bool)

(declare-fun lt!2371751 () Regex!16303)

(assert (=> b!6387408 (= e!3877079 (isEmptyExpr!1704 lt!2371751))))

(declare-fun b!6387410 () Bool)

(declare-fun e!3877076 () Bool)

(assert (=> b!6387410 (= e!3877076 (isEmpty!37221 (t!378815 (t!378815 (exprs!6187 (h!71534 zl!343))))))))

(declare-fun b!6387411 () Bool)

(declare-fun e!3877074 () Bool)

(assert (=> b!6387411 (= e!3877074 (= lt!2371751 (head!13097 (t!378815 (exprs!6187 (h!71534 zl!343))))))))

(declare-fun b!6387412 () Bool)

(assert (=> b!6387412 (= e!3877077 EmptyExpr!16303)))

(declare-fun b!6387413 () Bool)

(assert (=> b!6387413 (= e!3877079 e!3877074)))

(declare-fun c!1164196 () Bool)

(assert (=> b!6387413 (= c!1164196 (isEmpty!37221 (tail!12182 (t!378815 (exprs!6187 (h!71534 zl!343))))))))

(assert (=> d!2002439 e!3877078))

(declare-fun res!2627320 () Bool)

(assert (=> d!2002439 (=> (not res!2627320) (not e!3877078))))

(assert (=> d!2002439 (= res!2627320 (validRegex!8039 lt!2371751))))

(assert (=> d!2002439 (= lt!2371751 e!3877075)))

(declare-fun c!1164197 () Bool)

(assert (=> d!2002439 (= c!1164197 e!3877076)))

(declare-fun res!2627319 () Bool)

(assert (=> d!2002439 (=> (not res!2627319) (not e!3877076))))

(assert (=> d!2002439 (= res!2627319 ((_ is Cons!65085) (t!378815 (exprs!6187 (h!71534 zl!343)))))))

(assert (=> d!2002439 (forall!15481 (t!378815 (exprs!6187 (h!71534 zl!343))) lambda!352527)))

(assert (=> d!2002439 (= (generalisedConcat!1900 (t!378815 (exprs!6187 (h!71534 zl!343)))) lt!2371751)))

(declare-fun b!6387409 () Bool)

(assert (=> b!6387409 (= e!3877074 (isConcat!1227 lt!2371751))))

(assert (= (and d!2002439 res!2627319) b!6387410))

(assert (= (and d!2002439 c!1164197) b!6387407))

(assert (= (and d!2002439 (not c!1164197)) b!6387404))

(assert (= (and b!6387404 c!1164195) b!6387405))

(assert (= (and b!6387404 (not c!1164195)) b!6387412))

(assert (= (and d!2002439 res!2627320) b!6387406))

(assert (= (and b!6387406 c!1164198) b!6387408))

(assert (= (and b!6387406 (not c!1164198)) b!6387413))

(assert (= (and b!6387413 c!1164196) b!6387411))

(assert (= (and b!6387413 (not c!1164196)) b!6387409))

(assert (=> b!6387406 m!7185962))

(declare-fun m!7186784 () Bool)

(assert (=> b!6387413 m!7186784))

(assert (=> b!6387413 m!7186784))

(declare-fun m!7186786 () Bool)

(assert (=> b!6387413 m!7186786))

(declare-fun m!7186788 () Bool)

(assert (=> b!6387410 m!7186788))

(declare-fun m!7186790 () Bool)

(assert (=> b!6387409 m!7186790))

(declare-fun m!7186792 () Bool)

(assert (=> b!6387405 m!7186792))

(declare-fun m!7186794 () Bool)

(assert (=> b!6387411 m!7186794))

(declare-fun m!7186796 () Bool)

(assert (=> b!6387408 m!7186796))

(declare-fun m!7186798 () Bool)

(assert (=> d!2002439 m!7186798))

(declare-fun m!7186800 () Bool)

(assert (=> d!2002439 m!7186800))

(assert (=> b!6386454 d!2002439))

(declare-fun bm!546090 () Bool)

(declare-fun call!546095 () Bool)

(assert (=> bm!546090 (= call!546095 (isEmpty!37222 (_1!36585 lt!2371613)))))

(declare-fun b!6387414 () Bool)

(declare-fun e!3877081 () Bool)

(declare-fun e!3877083 () Bool)

(assert (=> b!6387414 (= e!3877081 e!3877083)))

(declare-fun res!2627328 () Bool)

(assert (=> b!6387414 (=> res!2627328 e!3877083)))

(assert (=> b!6387414 (= res!2627328 call!546095)))

(declare-fun b!6387415 () Bool)

(declare-fun e!3877085 () Bool)

(assert (=> b!6387415 (= e!3877085 e!3877081)))

(declare-fun res!2627326 () Bool)

(assert (=> b!6387415 (=> (not res!2627326) (not e!3877081))))

(declare-fun lt!2371752 () Bool)

(assert (=> b!6387415 (= res!2627326 (not lt!2371752))))

(declare-fun b!6387416 () Bool)

(declare-fun res!2627323 () Bool)

(declare-fun e!3877082 () Bool)

(assert (=> b!6387416 (=> (not res!2627323) (not e!3877082))))

(assert (=> b!6387416 (= res!2627323 (not call!546095))))

(declare-fun b!6387417 () Bool)

(declare-fun e!3877080 () Bool)

(declare-fun e!3877086 () Bool)

(assert (=> b!6387417 (= e!3877080 e!3877086)))

(declare-fun c!1164201 () Bool)

(assert (=> b!6387417 (= c!1164201 ((_ is EmptyLang!16303) lt!2371616))))

(declare-fun b!6387418 () Bool)

(assert (=> b!6387418 (= e!3877083 (not (= (head!13096 (_1!36585 lt!2371613)) (c!1163902 lt!2371616))))))

(declare-fun b!6387419 () Bool)

(declare-fun res!2627321 () Bool)

(assert (=> b!6387419 (=> res!2627321 e!3877085)))

(assert (=> b!6387419 (= res!2627321 (not ((_ is ElementMatch!16303) lt!2371616)))))

(assert (=> b!6387419 (= e!3877086 e!3877085)))

(declare-fun b!6387420 () Bool)

(declare-fun res!2627325 () Bool)

(assert (=> b!6387420 (=> (not res!2627325) (not e!3877082))))

(assert (=> b!6387420 (= res!2627325 (isEmpty!37222 (tail!12181 (_1!36585 lt!2371613))))))

(declare-fun b!6387422 () Bool)

(declare-fun res!2627324 () Bool)

(assert (=> b!6387422 (=> res!2627324 e!3877083)))

(assert (=> b!6387422 (= res!2627324 (not (isEmpty!37222 (tail!12181 (_1!36585 lt!2371613)))))))

(declare-fun b!6387423 () Bool)

(assert (=> b!6387423 (= e!3877086 (not lt!2371752))))

(declare-fun b!6387424 () Bool)

(declare-fun e!3877084 () Bool)

(assert (=> b!6387424 (= e!3877084 (nullable!6296 lt!2371616))))

(declare-fun b!6387425 () Bool)

(assert (=> b!6387425 (= e!3877080 (= lt!2371752 call!546095))))

(declare-fun b!6387426 () Bool)

(declare-fun res!2627327 () Bool)

(assert (=> b!6387426 (=> res!2627327 e!3877085)))

(assert (=> b!6387426 (= res!2627327 e!3877082)))

(declare-fun res!2627322 () Bool)

(assert (=> b!6387426 (=> (not res!2627322) (not e!3877082))))

(assert (=> b!6387426 (= res!2627322 lt!2371752)))

(declare-fun b!6387427 () Bool)

(assert (=> b!6387427 (= e!3877084 (matchR!8486 (derivativeStep!5007 lt!2371616 (head!13096 (_1!36585 lt!2371613))) (tail!12181 (_1!36585 lt!2371613))))))

(declare-fun d!2002441 () Bool)

(assert (=> d!2002441 e!3877080))

(declare-fun c!1164199 () Bool)

(assert (=> d!2002441 (= c!1164199 ((_ is EmptyExpr!16303) lt!2371616))))

(assert (=> d!2002441 (= lt!2371752 e!3877084)))

(declare-fun c!1164200 () Bool)

(assert (=> d!2002441 (= c!1164200 (isEmpty!37222 (_1!36585 lt!2371613)))))

(assert (=> d!2002441 (validRegex!8039 lt!2371616)))

(assert (=> d!2002441 (= (matchR!8486 lt!2371616 (_1!36585 lt!2371613)) lt!2371752)))

(declare-fun b!6387421 () Bool)

(assert (=> b!6387421 (= e!3877082 (= (head!13096 (_1!36585 lt!2371613)) (c!1163902 lt!2371616)))))

(assert (= (and d!2002441 c!1164200) b!6387424))

(assert (= (and d!2002441 (not c!1164200)) b!6387427))

(assert (= (and d!2002441 c!1164199) b!6387425))

(assert (= (and d!2002441 (not c!1164199)) b!6387417))

(assert (= (and b!6387417 c!1164201) b!6387423))

(assert (= (and b!6387417 (not c!1164201)) b!6387419))

(assert (= (and b!6387419 (not res!2627321)) b!6387426))

(assert (= (and b!6387426 res!2627322) b!6387416))

(assert (= (and b!6387416 res!2627323) b!6387420))

(assert (= (and b!6387420 res!2627325) b!6387421))

(assert (= (and b!6387426 (not res!2627327)) b!6387415))

(assert (= (and b!6387415 res!2627326) b!6387414))

(assert (= (and b!6387414 (not res!2627328)) b!6387422))

(assert (= (and b!6387422 (not res!2627324)) b!6387418))

(assert (= (or b!6387425 b!6387414 b!6387416) bm!546090))

(declare-fun m!7186802 () Bool)

(assert (=> b!6387418 m!7186802))

(declare-fun m!7186804 () Bool)

(assert (=> b!6387420 m!7186804))

(assert (=> b!6387420 m!7186804))

(declare-fun m!7186806 () Bool)

(assert (=> b!6387420 m!7186806))

(assert (=> b!6387427 m!7186802))

(assert (=> b!6387427 m!7186802))

(declare-fun m!7186808 () Bool)

(assert (=> b!6387427 m!7186808))

(assert (=> b!6387427 m!7186804))

(assert (=> b!6387427 m!7186808))

(assert (=> b!6387427 m!7186804))

(declare-fun m!7186810 () Bool)

(assert (=> b!6387427 m!7186810))

(declare-fun m!7186812 () Bool)

(assert (=> b!6387424 m!7186812))

(assert (=> b!6387422 m!7186804))

(assert (=> b!6387422 m!7186804))

(assert (=> b!6387422 m!7186806))

(assert (=> bm!546090 m!7186062))

(assert (=> d!2002441 m!7186062))

(assert (=> d!2002441 m!7186598))

(assert (=> b!6387421 m!7186802))

(assert (=> b!6386414 d!2002441))

(declare-fun d!2002443 () Bool)

(declare-fun lt!2371753 () Regex!16303)

(assert (=> d!2002443 (validRegex!8039 lt!2371753)))

(assert (=> d!2002443 (= lt!2371753 (generalisedUnion!2147 (unfocusZipperList!1724 zl!343)))))

(assert (=> d!2002443 (= (unfocusZipper!2045 zl!343) lt!2371753)))

(declare-fun bs!1598636 () Bool)

(assert (= bs!1598636 d!2002443))

(declare-fun m!7186814 () Bool)

(assert (=> bs!1598636 m!7186814))

(assert (=> bs!1598636 m!7186022))

(assert (=> bs!1598636 m!7186022))

(assert (=> bs!1598636 m!7186024))

(assert (=> b!6386415 d!2002443))

(declare-fun d!2002445 () Bool)

(assert (=> d!2002445 (= (nullable!6296 (regOne!33118 (regOne!33118 r!7292))) (nullableFct!2242 (regOne!33118 (regOne!33118 r!7292))))))

(declare-fun bs!1598637 () Bool)

(assert (= bs!1598637 d!2002445))

(declare-fun m!7186816 () Bool)

(assert (=> bs!1598637 m!7186816))

(assert (=> b!6386434 d!2002445))

(declare-fun bm!546091 () Bool)

(declare-fun call!546096 () Bool)

(assert (=> bm!546091 (= call!546096 (isEmpty!37222 s!2326))))

(declare-fun b!6387428 () Bool)

(declare-fun e!3877088 () Bool)

(declare-fun e!3877090 () Bool)

(assert (=> b!6387428 (= e!3877088 e!3877090)))

(declare-fun res!2627336 () Bool)

(assert (=> b!6387428 (=> res!2627336 e!3877090)))

(assert (=> b!6387428 (= res!2627336 call!546096)))

(declare-fun b!6387429 () Bool)

(declare-fun e!3877092 () Bool)

(assert (=> b!6387429 (= e!3877092 e!3877088)))

(declare-fun res!2627334 () Bool)

(assert (=> b!6387429 (=> (not res!2627334) (not e!3877088))))

(declare-fun lt!2371754 () Bool)

(assert (=> b!6387429 (= res!2627334 (not lt!2371754))))

(declare-fun b!6387430 () Bool)

(declare-fun res!2627331 () Bool)

(declare-fun e!3877089 () Bool)

(assert (=> b!6387430 (=> (not res!2627331) (not e!3877089))))

(assert (=> b!6387430 (= res!2627331 (not call!546096))))

(declare-fun b!6387431 () Bool)

(declare-fun e!3877087 () Bool)

(declare-fun e!3877093 () Bool)

(assert (=> b!6387431 (= e!3877087 e!3877093)))

(declare-fun c!1164204 () Bool)

(assert (=> b!6387431 (= c!1164204 ((_ is EmptyLang!16303) lt!2371593))))

(declare-fun b!6387432 () Bool)

(assert (=> b!6387432 (= e!3877090 (not (= (head!13096 s!2326) (c!1163902 lt!2371593))))))

(declare-fun b!6387433 () Bool)

(declare-fun res!2627329 () Bool)

(assert (=> b!6387433 (=> res!2627329 e!3877092)))

(assert (=> b!6387433 (= res!2627329 (not ((_ is ElementMatch!16303) lt!2371593)))))

(assert (=> b!6387433 (= e!3877093 e!3877092)))

(declare-fun b!6387434 () Bool)

(declare-fun res!2627333 () Bool)

(assert (=> b!6387434 (=> (not res!2627333) (not e!3877089))))

(assert (=> b!6387434 (= res!2627333 (isEmpty!37222 (tail!12181 s!2326)))))

(declare-fun b!6387436 () Bool)

(declare-fun res!2627332 () Bool)

(assert (=> b!6387436 (=> res!2627332 e!3877090)))

(assert (=> b!6387436 (= res!2627332 (not (isEmpty!37222 (tail!12181 s!2326))))))

(declare-fun b!6387437 () Bool)

(assert (=> b!6387437 (= e!3877093 (not lt!2371754))))

(declare-fun b!6387438 () Bool)

(declare-fun e!3877091 () Bool)

(assert (=> b!6387438 (= e!3877091 (nullable!6296 lt!2371593))))

(declare-fun b!6387439 () Bool)

(assert (=> b!6387439 (= e!3877087 (= lt!2371754 call!546096))))

(declare-fun b!6387440 () Bool)

(declare-fun res!2627335 () Bool)

(assert (=> b!6387440 (=> res!2627335 e!3877092)))

(assert (=> b!6387440 (= res!2627335 e!3877089)))

(declare-fun res!2627330 () Bool)

(assert (=> b!6387440 (=> (not res!2627330) (not e!3877089))))

(assert (=> b!6387440 (= res!2627330 lt!2371754)))

(declare-fun b!6387441 () Bool)

(assert (=> b!6387441 (= e!3877091 (matchR!8486 (derivativeStep!5007 lt!2371593 (head!13096 s!2326)) (tail!12181 s!2326)))))

(declare-fun d!2002447 () Bool)

(assert (=> d!2002447 e!3877087))

(declare-fun c!1164202 () Bool)

(assert (=> d!2002447 (= c!1164202 ((_ is EmptyExpr!16303) lt!2371593))))

(assert (=> d!2002447 (= lt!2371754 e!3877091)))

(declare-fun c!1164203 () Bool)

(assert (=> d!2002447 (= c!1164203 (isEmpty!37222 s!2326))))

(assert (=> d!2002447 (validRegex!8039 lt!2371593)))

(assert (=> d!2002447 (= (matchR!8486 lt!2371593 s!2326) lt!2371754)))

(declare-fun b!6387435 () Bool)

(assert (=> b!6387435 (= e!3877089 (= (head!13096 s!2326) (c!1163902 lt!2371593)))))

(assert (= (and d!2002447 c!1164203) b!6387438))

(assert (= (and d!2002447 (not c!1164203)) b!6387441))

(assert (= (and d!2002447 c!1164202) b!6387439))

(assert (= (and d!2002447 (not c!1164202)) b!6387431))

(assert (= (and b!6387431 c!1164204) b!6387437))

(assert (= (and b!6387431 (not c!1164204)) b!6387433))

(assert (= (and b!6387433 (not res!2627329)) b!6387440))

(assert (= (and b!6387440 res!2627330) b!6387430))

(assert (= (and b!6387430 res!2627331) b!6387434))

(assert (= (and b!6387434 res!2627333) b!6387435))

(assert (= (and b!6387440 (not res!2627335)) b!6387429))

(assert (= (and b!6387429 res!2627334) b!6387428))

(assert (= (and b!6387428 (not res!2627336)) b!6387436))

(assert (= (and b!6387436 (not res!2627332)) b!6387432))

(assert (= (or b!6387439 b!6387428 b!6387430) bm!546091))

(assert (=> b!6387432 m!7186430))

(assert (=> b!6387434 m!7186432))

(assert (=> b!6387434 m!7186432))

(assert (=> b!6387434 m!7186436))

(assert (=> b!6387441 m!7186430))

(assert (=> b!6387441 m!7186430))

(declare-fun m!7186818 () Bool)

(assert (=> b!6387441 m!7186818))

(assert (=> b!6387441 m!7186432))

(assert (=> b!6387441 m!7186818))

(assert (=> b!6387441 m!7186432))

(declare-fun m!7186820 () Bool)

(assert (=> b!6387441 m!7186820))

(declare-fun m!7186822 () Bool)

(assert (=> b!6387438 m!7186822))

(assert (=> b!6387436 m!7186432))

(assert (=> b!6387436 m!7186432))

(assert (=> b!6387436 m!7186436))

(assert (=> bm!546091 m!7186374))

(assert (=> d!2002447 m!7186374))

(declare-fun m!7186824 () Bool)

(assert (=> d!2002447 m!7186824))

(assert (=> b!6387435 m!7186430))

(assert (=> b!6386425 d!2002447))

(declare-fun bs!1598638 () Bool)

(declare-fun b!6387448 () Bool)

(assert (= bs!1598638 (and b!6387448 d!2002423)))

(declare-fun lambda!352528 () Int)

(assert (=> bs!1598638 (not (= lambda!352528 lambda!352521))))

(declare-fun bs!1598639 () Bool)

(assert (= bs!1598639 (and b!6387448 d!2002387)))

(assert (=> bs!1598639 (not (= lambda!352528 lambda!352519))))

(declare-fun bs!1598640 () Bool)

(assert (= bs!1598640 (and b!6387448 b!6386437)))

(assert (=> bs!1598640 (not (= lambda!352528 lambda!352453))))

(declare-fun bs!1598641 () Bool)

(assert (= bs!1598641 (and b!6387448 b!6386452)))

(assert (=> bs!1598641 (not (= lambda!352528 lambda!352450))))

(assert (=> bs!1598640 (not (= lambda!352528 lambda!352452))))

(declare-fun bs!1598642 () Bool)

(assert (= bs!1598642 (and b!6387448 d!2002383)))

(assert (=> bs!1598642 (not (= lambda!352528 lambda!352515))))

(declare-fun bs!1598643 () Bool)

(assert (= bs!1598643 (and b!6387448 d!2002425)))

(assert (=> bs!1598643 (not (= lambda!352528 lambda!352522))))

(declare-fun bs!1598644 () Bool)

(assert (= bs!1598644 (and b!6387448 b!6386855)))

(assert (=> bs!1598644 (= (and (= (reg!16632 lt!2371593) (reg!16632 r!7292)) (= lt!2371593 r!7292)) (= lambda!352528 lambda!352481))))

(assert (=> bs!1598642 (not (= lambda!352528 lambda!352516))))

(assert (=> bs!1598643 (not (= lambda!352528 lambda!352523))))

(assert (=> bs!1598641 (not (= lambda!352528 lambda!352449))))

(declare-fun bs!1598645 () Bool)

(assert (= bs!1598645 (and b!6387448 b!6386858)))

(assert (=> bs!1598645 (not (= lambda!352528 lambda!352483))))

(assert (=> b!6387448 true))

(assert (=> b!6387448 true))

(declare-fun bs!1598646 () Bool)

(declare-fun b!6387451 () Bool)

(assert (= bs!1598646 (and b!6387451 d!2002423)))

(declare-fun lambda!352529 () Int)

(assert (=> bs!1598646 (not (= lambda!352529 lambda!352521))))

(declare-fun bs!1598647 () Bool)

(assert (= bs!1598647 (and b!6387451 d!2002387)))

(assert (=> bs!1598647 (not (= lambda!352529 lambda!352519))))

(declare-fun bs!1598648 () Bool)

(assert (= bs!1598648 (and b!6387451 b!6386437)))

(assert (=> bs!1598648 (= (and (= (regOne!33118 lt!2371593) lt!2371616) (= (regTwo!33118 lt!2371593) (regTwo!33118 r!7292))) (= lambda!352529 lambda!352453))))

(declare-fun bs!1598649 () Bool)

(assert (= bs!1598649 (and b!6387451 b!6386452)))

(assert (=> bs!1598649 (= (and (= (regOne!33118 lt!2371593) (regOne!33118 r!7292)) (= (regTwo!33118 lt!2371593) (regTwo!33118 r!7292))) (= lambda!352529 lambda!352450))))

(assert (=> bs!1598648 (not (= lambda!352529 lambda!352452))))

(declare-fun bs!1598650 () Bool)

(assert (= bs!1598650 (and b!6387451 d!2002383)))

(assert (=> bs!1598650 (not (= lambda!352529 lambda!352515))))

(declare-fun bs!1598651 () Bool)

(assert (= bs!1598651 (and b!6387451 d!2002425)))

(assert (=> bs!1598651 (not (= lambda!352529 lambda!352522))))

(declare-fun bs!1598652 () Bool)

(assert (= bs!1598652 (and b!6387451 b!6386855)))

(assert (=> bs!1598652 (not (= lambda!352529 lambda!352481))))

(assert (=> bs!1598650 (= (and (= (regOne!33118 lt!2371593) lt!2371616) (= (regTwo!33118 lt!2371593) (regTwo!33118 r!7292))) (= lambda!352529 lambda!352516))))

(assert (=> bs!1598651 (= (and (= (regOne!33118 lt!2371593) (regOne!33118 r!7292)) (= (regTwo!33118 lt!2371593) (regTwo!33118 r!7292))) (= lambda!352529 lambda!352523))))

(assert (=> bs!1598649 (not (= lambda!352529 lambda!352449))))

(declare-fun bs!1598653 () Bool)

(assert (= bs!1598653 (and b!6387451 b!6387448)))

(assert (=> bs!1598653 (not (= lambda!352529 lambda!352528))))

(declare-fun bs!1598654 () Bool)

(assert (= bs!1598654 (and b!6387451 b!6386858)))

(assert (=> bs!1598654 (= (and (= (regOne!33118 lt!2371593) (regOne!33118 r!7292)) (= (regTwo!33118 lt!2371593) (regTwo!33118 r!7292))) (= lambda!352529 lambda!352483))))

(assert (=> b!6387451 true))

(assert (=> b!6387451 true))

(declare-fun b!6387442 () Bool)

(declare-fun e!3877100 () Bool)

(declare-fun call!546098 () Bool)

(assert (=> b!6387442 (= e!3877100 call!546098)))

(declare-fun b!6387443 () Bool)

(declare-fun c!1164207 () Bool)

(assert (=> b!6387443 (= c!1164207 ((_ is ElementMatch!16303) lt!2371593))))

(declare-fun e!3877098 () Bool)

(declare-fun e!3877095 () Bool)

(assert (=> b!6387443 (= e!3877098 e!3877095)))

(declare-fun b!6387444 () Bool)

(assert (=> b!6387444 (= e!3877095 (= s!2326 (Cons!65084 (c!1163902 lt!2371593) Nil!65084)))))

(declare-fun b!6387445 () Bool)

(declare-fun e!3877096 () Bool)

(declare-fun e!3877097 () Bool)

(assert (=> b!6387445 (= e!3877096 e!3877097)))

(declare-fun res!2627337 () Bool)

(assert (=> b!6387445 (= res!2627337 (matchRSpec!3404 (regOne!33119 lt!2371593) s!2326))))

(assert (=> b!6387445 (=> res!2627337 e!3877097)))

(declare-fun b!6387446 () Bool)

(assert (=> b!6387446 (= e!3877097 (matchRSpec!3404 (regTwo!33119 lt!2371593) s!2326))))

(declare-fun bm!546092 () Bool)

(declare-fun call!546097 () Bool)

(declare-fun c!1164205 () Bool)

(assert (=> bm!546092 (= call!546097 (Exists!3373 (ite c!1164205 lambda!352528 lambda!352529)))))

(declare-fun d!2002449 () Bool)

(declare-fun c!1164206 () Bool)

(assert (=> d!2002449 (= c!1164206 ((_ is EmptyExpr!16303) lt!2371593))))

(assert (=> d!2002449 (= (matchRSpec!3404 lt!2371593 s!2326) e!3877100)))

(declare-fun b!6387447 () Bool)

(declare-fun res!2627338 () Bool)

(declare-fun e!3877099 () Bool)

(assert (=> b!6387447 (=> res!2627338 e!3877099)))

(assert (=> b!6387447 (= res!2627338 call!546098)))

(declare-fun e!3877094 () Bool)

(assert (=> b!6387447 (= e!3877094 e!3877099)))

(assert (=> b!6387448 (= e!3877099 call!546097)))

(declare-fun b!6387449 () Bool)

(assert (=> b!6387449 (= e!3877100 e!3877098)))

(declare-fun res!2627339 () Bool)

(assert (=> b!6387449 (= res!2627339 (not ((_ is EmptyLang!16303) lt!2371593)))))

(assert (=> b!6387449 (=> (not res!2627339) (not e!3877098))))

(declare-fun b!6387450 () Bool)

(declare-fun c!1164208 () Bool)

(assert (=> b!6387450 (= c!1164208 ((_ is Union!16303) lt!2371593))))

(assert (=> b!6387450 (= e!3877095 e!3877096)))

(declare-fun bm!546093 () Bool)

(assert (=> bm!546093 (= call!546098 (isEmpty!37222 s!2326))))

(assert (=> b!6387451 (= e!3877094 call!546097)))

(declare-fun b!6387452 () Bool)

(assert (=> b!6387452 (= e!3877096 e!3877094)))

(assert (=> b!6387452 (= c!1164205 ((_ is Star!16303) lt!2371593))))

(assert (= (and d!2002449 c!1164206) b!6387442))

(assert (= (and d!2002449 (not c!1164206)) b!6387449))

(assert (= (and b!6387449 res!2627339) b!6387443))

(assert (= (and b!6387443 c!1164207) b!6387444))

(assert (= (and b!6387443 (not c!1164207)) b!6387450))

(assert (= (and b!6387450 c!1164208) b!6387445))

(assert (= (and b!6387450 (not c!1164208)) b!6387452))

(assert (= (and b!6387445 (not res!2627337)) b!6387446))

(assert (= (and b!6387452 c!1164205) b!6387447))

(assert (= (and b!6387452 (not c!1164205)) b!6387451))

(assert (= (and b!6387447 (not res!2627338)) b!6387448))

(assert (= (or b!6387448 b!6387451) bm!546092))

(assert (= (or b!6387442 b!6387447) bm!546093))

(declare-fun m!7186826 () Bool)

(assert (=> b!6387445 m!7186826))

(declare-fun m!7186828 () Bool)

(assert (=> b!6387446 m!7186828))

(declare-fun m!7186830 () Bool)

(assert (=> bm!546092 m!7186830))

(assert (=> bm!546093 m!7186374))

(assert (=> b!6386425 d!2002449))

(declare-fun d!2002451 () Bool)

(assert (=> d!2002451 (= (matchR!8486 lt!2371593 s!2326) (matchRSpec!3404 lt!2371593 s!2326))))

(declare-fun lt!2371755 () Unit!158543)

(assert (=> d!2002451 (= lt!2371755 (choose!47520 lt!2371593 s!2326))))

(assert (=> d!2002451 (validRegex!8039 lt!2371593)))

(assert (=> d!2002451 (= (mainMatchTheorem!3404 lt!2371593 s!2326) lt!2371755)))

(declare-fun bs!1598655 () Bool)

(assert (= bs!1598655 d!2002451))

(assert (=> bs!1598655 m!7186014))

(assert (=> bs!1598655 m!7186016))

(declare-fun m!7186832 () Bool)

(assert (=> bs!1598655 m!7186832))

(assert (=> bs!1598655 m!7186824))

(assert (=> b!6386425 d!2002451))

(declare-fun bs!1598656 () Bool)

(declare-fun d!2002453 () Bool)

(assert (= bs!1598656 (and d!2002453 b!6386438)))

(declare-fun lambda!352530 () Int)

(assert (=> bs!1598656 (= lambda!352530 lambda!352451)))

(declare-fun bs!1598657 () Bool)

(assert (= bs!1598657 (and d!2002453 d!2002369)))

(assert (=> bs!1598657 (= lambda!352530 lambda!352510)))

(assert (=> d!2002453 true))

(assert (=> d!2002453 (= (derivationStepZipper!2269 lt!2371619 (h!71532 s!2326)) (flatMap!1808 lt!2371619 lambda!352530))))

(declare-fun bs!1598658 () Bool)

(assert (= bs!1598658 d!2002453))

(declare-fun m!7186834 () Bool)

(assert (=> bs!1598658 m!7186834))

(assert (=> b!6386447 d!2002453))

(declare-fun d!2002455 () Bool)

(assert (=> d!2002455 (= (flatMap!1808 lt!2371619 lambda!352451) (choose!47522 lt!2371619 lambda!352451))))

(declare-fun bs!1598659 () Bool)

(assert (= bs!1598659 d!2002455))

(declare-fun m!7186836 () Bool)

(assert (=> bs!1598659 m!7186836))

(assert (=> b!6386447 d!2002455))

(assert (=> b!6386447 d!2002407))

(declare-fun d!2002457 () Bool)

(assert (=> d!2002457 (= (flatMap!1808 lt!2371619 lambda!352451) (dynLambda!25823 lambda!352451 lt!2371596))))

(declare-fun lt!2371756 () Unit!158543)

(assert (=> d!2002457 (= lt!2371756 (choose!47523 lt!2371619 lt!2371596 lambda!352451))))

(assert (=> d!2002457 (= lt!2371619 (store ((as const (Array Context!11374 Bool)) false) lt!2371596 true))))

(assert (=> d!2002457 (= (lemmaFlatMapOnSingletonSet!1334 lt!2371619 lt!2371596 lambda!352451) lt!2371756)))

(declare-fun b_lambda!242685 () Bool)

(assert (=> (not b_lambda!242685) (not d!2002457)))

(declare-fun bs!1598660 () Bool)

(assert (= bs!1598660 d!2002457))

(assert (=> bs!1598660 m!7185968))

(declare-fun m!7186838 () Bool)

(assert (=> bs!1598660 m!7186838))

(declare-fun m!7186840 () Bool)

(assert (=> bs!1598660 m!7186840))

(assert (=> bs!1598660 m!7185966))

(assert (=> b!6386447 d!2002457))

(declare-fun bm!546094 () Bool)

(declare-fun call!546099 () (InoxSet Context!11374))

(assert (=> bm!546094 (= call!546099 (derivationStepZipperDown!1551 (h!71533 (exprs!6187 lt!2371605)) (Context!11375 (t!378815 (exprs!6187 lt!2371605))) (h!71532 s!2326)))))

(declare-fun d!2002459 () Bool)

(declare-fun c!1164210 () Bool)

(declare-fun e!3877103 () Bool)

(assert (=> d!2002459 (= c!1164210 e!3877103)))

(declare-fun res!2627340 () Bool)

(assert (=> d!2002459 (=> (not res!2627340) (not e!3877103))))

(assert (=> d!2002459 (= res!2627340 ((_ is Cons!65085) (exprs!6187 lt!2371605)))))

(declare-fun e!3877101 () (InoxSet Context!11374))

(assert (=> d!2002459 (= (derivationStepZipperUp!1477 lt!2371605 (h!71532 s!2326)) e!3877101)))

(declare-fun b!6387453 () Bool)

(declare-fun e!3877102 () (InoxSet Context!11374))

(assert (=> b!6387453 (= e!3877102 ((as const (Array Context!11374 Bool)) false))))

(declare-fun b!6387454 () Bool)

(assert (=> b!6387454 (= e!3877102 call!546099)))

(declare-fun b!6387455 () Bool)

(assert (=> b!6387455 (= e!3877101 ((_ map or) call!546099 (derivationStepZipperUp!1477 (Context!11375 (t!378815 (exprs!6187 lt!2371605))) (h!71532 s!2326))))))

(declare-fun b!6387456 () Bool)

(assert (=> b!6387456 (= e!3877103 (nullable!6296 (h!71533 (exprs!6187 lt!2371605))))))

(declare-fun b!6387457 () Bool)

(assert (=> b!6387457 (= e!3877101 e!3877102)))

(declare-fun c!1164209 () Bool)

(assert (=> b!6387457 (= c!1164209 ((_ is Cons!65085) (exprs!6187 lt!2371605)))))

(assert (= (and d!2002459 res!2627340) b!6387456))

(assert (= (and d!2002459 c!1164210) b!6387455))

(assert (= (and d!2002459 (not c!1164210)) b!6387457))

(assert (= (and b!6387457 c!1164209) b!6387454))

(assert (= (and b!6387457 (not c!1164209)) b!6387453))

(assert (= (or b!6387455 b!6387454) bm!546094))

(declare-fun m!7186842 () Bool)

(assert (=> bm!546094 m!7186842))

(declare-fun m!7186844 () Bool)

(assert (=> b!6387455 m!7186844))

(declare-fun m!7186846 () Bool)

(assert (=> b!6387456 m!7186846))

(assert (=> b!6386448 d!2002459))

(declare-fun d!2002461 () Bool)

(assert (=> d!2002461 (= (flatMap!1808 lt!2371604 lambda!352451) (dynLambda!25823 lambda!352451 lt!2371606))))

(declare-fun lt!2371757 () Unit!158543)

(assert (=> d!2002461 (= lt!2371757 (choose!47523 lt!2371604 lt!2371606 lambda!352451))))

(assert (=> d!2002461 (= lt!2371604 (store ((as const (Array Context!11374 Bool)) false) lt!2371606 true))))

(assert (=> d!2002461 (= (lemmaFlatMapOnSingletonSet!1334 lt!2371604 lt!2371606 lambda!352451) lt!2371757)))

(declare-fun b_lambda!242687 () Bool)

(assert (=> (not b_lambda!242687) (not d!2002461)))

(declare-fun bs!1598661 () Bool)

(assert (= bs!1598661 d!2002461))

(assert (=> bs!1598661 m!7185952))

(declare-fun m!7186848 () Bool)

(assert (=> bs!1598661 m!7186848))

(declare-fun m!7186850 () Bool)

(assert (=> bs!1598661 m!7186850))

(assert (=> bs!1598661 m!7185944))

(assert (=> b!6386448 d!2002461))

(declare-fun d!2002463 () Bool)

(assert (=> d!2002463 (= (flatMap!1808 lt!2371604 lambda!352451) (choose!47522 lt!2371604 lambda!352451))))

(declare-fun bs!1598662 () Bool)

(assert (= bs!1598662 d!2002463))

(declare-fun m!7186852 () Bool)

(assert (=> bs!1598662 m!7186852))

(assert (=> b!6386448 d!2002463))

(declare-fun d!2002465 () Bool)

(declare-fun lt!2371758 () Regex!16303)

(assert (=> d!2002465 (validRegex!8039 lt!2371758)))

(assert (=> d!2002465 (= lt!2371758 (generalisedUnion!2147 (unfocusZipperList!1724 (Cons!65086 lt!2371605 Nil!65086))))))

(assert (=> d!2002465 (= (unfocusZipper!2045 (Cons!65086 lt!2371605 Nil!65086)) lt!2371758)))

(declare-fun bs!1598663 () Bool)

(assert (= bs!1598663 d!2002465))

(declare-fun m!7186854 () Bool)

(assert (=> bs!1598663 m!7186854))

(declare-fun m!7186856 () Bool)

(assert (=> bs!1598663 m!7186856))

(assert (=> bs!1598663 m!7186856))

(declare-fun m!7186858 () Bool)

(assert (=> bs!1598663 m!7186858))

(assert (=> b!6386448 d!2002465))

(declare-fun bm!546095 () Bool)

(declare-fun call!546100 () (InoxSet Context!11374))

(assert (=> bm!546095 (= call!546100 (derivationStepZipperDown!1551 (h!71533 (exprs!6187 lt!2371606)) (Context!11375 (t!378815 (exprs!6187 lt!2371606))) (h!71532 s!2326)))))

(declare-fun d!2002467 () Bool)

(declare-fun c!1164212 () Bool)

(declare-fun e!3877106 () Bool)

(assert (=> d!2002467 (= c!1164212 e!3877106)))

(declare-fun res!2627341 () Bool)

(assert (=> d!2002467 (=> (not res!2627341) (not e!3877106))))

(assert (=> d!2002467 (= res!2627341 ((_ is Cons!65085) (exprs!6187 lt!2371606)))))

(declare-fun e!3877104 () (InoxSet Context!11374))

(assert (=> d!2002467 (= (derivationStepZipperUp!1477 lt!2371606 (h!71532 s!2326)) e!3877104)))

(declare-fun b!6387458 () Bool)

(declare-fun e!3877105 () (InoxSet Context!11374))

(assert (=> b!6387458 (= e!3877105 ((as const (Array Context!11374 Bool)) false))))

(declare-fun b!6387459 () Bool)

(assert (=> b!6387459 (= e!3877105 call!546100)))

(declare-fun b!6387460 () Bool)

(assert (=> b!6387460 (= e!3877104 ((_ map or) call!546100 (derivationStepZipperUp!1477 (Context!11375 (t!378815 (exprs!6187 lt!2371606))) (h!71532 s!2326))))))

(declare-fun b!6387461 () Bool)

(assert (=> b!6387461 (= e!3877106 (nullable!6296 (h!71533 (exprs!6187 lt!2371606))))))

(declare-fun b!6387462 () Bool)

(assert (=> b!6387462 (= e!3877104 e!3877105)))

(declare-fun c!1164211 () Bool)

(assert (=> b!6387462 (= c!1164211 ((_ is Cons!65085) (exprs!6187 lt!2371606)))))

(assert (= (and d!2002467 res!2627341) b!6387461))

(assert (= (and d!2002467 c!1164212) b!6387460))

(assert (= (and d!2002467 (not c!1164212)) b!6387462))

(assert (= (and b!6387462 c!1164211) b!6387459))

(assert (= (and b!6387462 (not c!1164211)) b!6387458))

(assert (= (or b!6387460 b!6387459) bm!546095))

(declare-fun m!7186860 () Bool)

(assert (=> bm!546095 m!7186860))

(declare-fun m!7186862 () Bool)

(assert (=> b!6387460 m!7186862))

(declare-fun m!7186864 () Bool)

(assert (=> b!6387461 m!7186864))

(assert (=> b!6386448 d!2002467))

(declare-fun d!2002469 () Bool)

(assert (=> d!2002469 (= (flatMap!1808 lt!2371618 lambda!352451) (choose!47522 lt!2371618 lambda!352451))))

(declare-fun bs!1598664 () Bool)

(assert (= bs!1598664 d!2002469))

(declare-fun m!7186866 () Bool)

(assert (=> bs!1598664 m!7186866))

(assert (=> b!6386448 d!2002469))

(declare-fun d!2002471 () Bool)

(assert (=> d!2002471 (= (flatMap!1808 lt!2371618 lambda!352451) (dynLambda!25823 lambda!352451 lt!2371605))))

(declare-fun lt!2371759 () Unit!158543)

(assert (=> d!2002471 (= lt!2371759 (choose!47523 lt!2371618 lt!2371605 lambda!352451))))

(assert (=> d!2002471 (= lt!2371618 (store ((as const (Array Context!11374 Bool)) false) lt!2371605 true))))

(assert (=> d!2002471 (= (lemmaFlatMapOnSingletonSet!1334 lt!2371618 lt!2371605 lambda!352451) lt!2371759)))

(declare-fun b_lambda!242689 () Bool)

(assert (=> (not b_lambda!242689) (not d!2002471)))

(declare-fun bs!1598665 () Bool)

(assert (= bs!1598665 d!2002471))

(assert (=> bs!1598665 m!7185948))

(declare-fun m!7186868 () Bool)

(assert (=> bs!1598665 m!7186868))

(declare-fun m!7186870 () Bool)

(assert (=> bs!1598665 m!7186870))

(assert (=> bs!1598665 m!7185960))

(assert (=> b!6386448 d!2002471))

(declare-fun d!2002473 () Bool)

(declare-fun e!3877109 () Bool)

(assert (=> d!2002473 e!3877109))

(declare-fun res!2627344 () Bool)

(assert (=> d!2002473 (=> (not res!2627344) (not e!3877109))))

(declare-fun lt!2371762 () List!65210)

(declare-fun noDuplicate!2132 (List!65210) Bool)

(assert (=> d!2002473 (= res!2627344 (noDuplicate!2132 lt!2371762))))

(declare-fun choose!47528 ((InoxSet Context!11374)) List!65210)

(assert (=> d!2002473 (= lt!2371762 (choose!47528 z!1189))))

(assert (=> d!2002473 (= (toList!10087 z!1189) lt!2371762)))

(declare-fun b!6387465 () Bool)

(declare-fun content!12321 (List!65210) (InoxSet Context!11374))

(assert (=> b!6387465 (= e!3877109 (= (content!12321 lt!2371762) z!1189))))

(assert (= (and d!2002473 res!2627344) b!6387465))

(declare-fun m!7186872 () Bool)

(assert (=> d!2002473 m!7186872))

(declare-fun m!7186874 () Bool)

(assert (=> d!2002473 m!7186874))

(declare-fun m!7186876 () Bool)

(assert (=> b!6387465 m!7186876))

(assert (=> b!6386428 d!2002473))

(declare-fun bs!1598666 () Bool)

(declare-fun d!2002475 () Bool)

(assert (= bs!1598666 (and d!2002475 d!2002409)))

(declare-fun lambda!352531 () Int)

(assert (=> bs!1598666 (= lambda!352531 lambda!352520)))

(declare-fun bs!1598667 () Bool)

(assert (= bs!1598667 (and d!2002475 d!2002351)))

(assert (=> bs!1598667 (= lambda!352531 lambda!352504)))

(declare-fun bs!1598668 () Bool)

(assert (= bs!1598668 (and d!2002475 d!2002439)))

(assert (=> bs!1598668 (= lambda!352531 lambda!352527)))

(declare-fun bs!1598669 () Bool)

(assert (= bs!1598669 (and d!2002475 d!2002353)))

(assert (=> bs!1598669 (= lambda!352531 lambda!352507)))

(declare-fun bs!1598670 () Bool)

(assert (= bs!1598670 (and d!2002475 d!2002429)))

(assert (=> bs!1598670 (= lambda!352531 lambda!352526)))

(declare-fun bs!1598671 () Bool)

(assert (= bs!1598671 (and d!2002475 d!2002325)))

(assert (=> bs!1598671 (= lambda!352531 lambda!352501)))

(assert (=> d!2002475 (= (inv!84004 lt!2371596) (forall!15481 (exprs!6187 lt!2371596) lambda!352531))))

(declare-fun bs!1598672 () Bool)

(assert (= bs!1598672 d!2002475))

(declare-fun m!7186878 () Bool)

(assert (=> bs!1598672 m!7186878))

(assert (=> b!6386429 d!2002475))

(declare-fun d!2002477 () Bool)

(assert (=> d!2002477 (= (isEmpty!37222 (_1!36585 lt!2371613)) ((_ is Nil!65084) (_1!36585 lt!2371613)))))

(assert (=> b!6386450 d!2002477))

(declare-fun b!6387479 () Bool)

(declare-fun e!3877112 () Bool)

(declare-fun tp!1776719 () Bool)

(declare-fun tp!1776722 () Bool)

(assert (=> b!6387479 (= e!3877112 (and tp!1776719 tp!1776722))))

(declare-fun b!6387477 () Bool)

(declare-fun tp!1776723 () Bool)

(declare-fun tp!1776720 () Bool)

(assert (=> b!6387477 (= e!3877112 (and tp!1776723 tp!1776720))))

(declare-fun b!6387476 () Bool)

(assert (=> b!6387476 (= e!3877112 tp_is_empty!41859)))

(assert (=> b!6386421 (= tp!1776644 e!3877112)))

(declare-fun b!6387478 () Bool)

(declare-fun tp!1776721 () Bool)

(assert (=> b!6387478 (= e!3877112 tp!1776721)))

(assert (= (and b!6386421 ((_ is ElementMatch!16303) (regOne!33119 r!7292))) b!6387476))

(assert (= (and b!6386421 ((_ is Concat!25148) (regOne!33119 r!7292))) b!6387477))

(assert (= (and b!6386421 ((_ is Star!16303) (regOne!33119 r!7292))) b!6387478))

(assert (= (and b!6386421 ((_ is Union!16303) (regOne!33119 r!7292))) b!6387479))

(declare-fun b!6387483 () Bool)

(declare-fun e!3877113 () Bool)

(declare-fun tp!1776724 () Bool)

(declare-fun tp!1776727 () Bool)

(assert (=> b!6387483 (= e!3877113 (and tp!1776724 tp!1776727))))

(declare-fun b!6387481 () Bool)

(declare-fun tp!1776728 () Bool)

(declare-fun tp!1776725 () Bool)

(assert (=> b!6387481 (= e!3877113 (and tp!1776728 tp!1776725))))

(declare-fun b!6387480 () Bool)

(assert (=> b!6387480 (= e!3877113 tp_is_empty!41859)))

(assert (=> b!6386421 (= tp!1776649 e!3877113)))

(declare-fun b!6387482 () Bool)

(declare-fun tp!1776726 () Bool)

(assert (=> b!6387482 (= e!3877113 tp!1776726)))

(assert (= (and b!6386421 ((_ is ElementMatch!16303) (regTwo!33119 r!7292))) b!6387480))

(assert (= (and b!6386421 ((_ is Concat!25148) (regTwo!33119 r!7292))) b!6387481))

(assert (= (and b!6386421 ((_ is Star!16303) (regTwo!33119 r!7292))) b!6387482))

(assert (= (and b!6386421 ((_ is Union!16303) (regTwo!33119 r!7292))) b!6387483))

(declare-fun b!6387487 () Bool)

(declare-fun e!3877114 () Bool)

(declare-fun tp!1776729 () Bool)

(declare-fun tp!1776732 () Bool)

(assert (=> b!6387487 (= e!3877114 (and tp!1776729 tp!1776732))))

(declare-fun b!6387485 () Bool)

(declare-fun tp!1776733 () Bool)

(declare-fun tp!1776730 () Bool)

(assert (=> b!6387485 (= e!3877114 (and tp!1776733 tp!1776730))))

(declare-fun b!6387484 () Bool)

(assert (=> b!6387484 (= e!3877114 tp_is_empty!41859)))

(assert (=> b!6386441 (= tp!1776650 e!3877114)))

(declare-fun b!6387486 () Bool)

(declare-fun tp!1776731 () Bool)

(assert (=> b!6387486 (= e!3877114 tp!1776731)))

(assert (= (and b!6386441 ((_ is ElementMatch!16303) (reg!16632 r!7292))) b!6387484))

(assert (= (and b!6386441 ((_ is Concat!25148) (reg!16632 r!7292))) b!6387485))

(assert (= (and b!6386441 ((_ is Star!16303) (reg!16632 r!7292))) b!6387486))

(assert (= (and b!6386441 ((_ is Union!16303) (reg!16632 r!7292))) b!6387487))

(declare-fun condSetEmpty!43612 () Bool)

(assert (=> setNonEmpty!43606 (= condSetEmpty!43612 (= setRest!43606 ((as const (Array Context!11374 Bool)) false)))))

(declare-fun setRes!43612 () Bool)

(assert (=> setNonEmpty!43606 (= tp!1776647 setRes!43612)))

(declare-fun setIsEmpty!43612 () Bool)

(assert (=> setIsEmpty!43612 setRes!43612))

(declare-fun setElem!43612 () Context!11374)

(declare-fun setNonEmpty!43612 () Bool)

(declare-fun e!3877117 () Bool)

(declare-fun tp!1776738 () Bool)

(assert (=> setNonEmpty!43612 (= setRes!43612 (and tp!1776738 (inv!84004 setElem!43612) e!3877117))))

(declare-fun setRest!43612 () (InoxSet Context!11374))

(assert (=> setNonEmpty!43612 (= setRest!43606 ((_ map or) (store ((as const (Array Context!11374 Bool)) false) setElem!43612 true) setRest!43612))))

(declare-fun b!6387492 () Bool)

(declare-fun tp!1776739 () Bool)

(assert (=> b!6387492 (= e!3877117 tp!1776739)))

(assert (= (and setNonEmpty!43606 condSetEmpty!43612) setIsEmpty!43612))

(assert (= (and setNonEmpty!43606 (not condSetEmpty!43612)) setNonEmpty!43612))

(assert (= setNonEmpty!43612 b!6387492))

(declare-fun m!7186880 () Bool)

(assert (=> setNonEmpty!43612 m!7186880))

(declare-fun b!6387497 () Bool)

(declare-fun e!3877120 () Bool)

(declare-fun tp!1776744 () Bool)

(declare-fun tp!1776745 () Bool)

(assert (=> b!6387497 (= e!3877120 (and tp!1776744 tp!1776745))))

(assert (=> b!6386418 (= tp!1776641 e!3877120)))

(assert (= (and b!6386418 ((_ is Cons!65085) (exprs!6187 setElem!43606))) b!6387497))

(declare-fun b!6387502 () Bool)

(declare-fun e!3877123 () Bool)

(declare-fun tp!1776748 () Bool)

(assert (=> b!6387502 (= e!3877123 (and tp_is_empty!41859 tp!1776748))))

(assert (=> b!6386443 (= tp!1776645 e!3877123)))

(assert (= (and b!6386443 ((_ is Cons!65084) (t!378814 s!2326))) b!6387502))

(declare-fun b!6387503 () Bool)

(declare-fun e!3877124 () Bool)

(declare-fun tp!1776749 () Bool)

(declare-fun tp!1776750 () Bool)

(assert (=> b!6387503 (= e!3877124 (and tp!1776749 tp!1776750))))

(assert (=> b!6386419 (= tp!1776642 e!3877124)))

(assert (= (and b!6386419 ((_ is Cons!65085) (exprs!6187 (h!71534 zl!343)))) b!6387503))

(declare-fun b!6387507 () Bool)

(declare-fun e!3877125 () Bool)

(declare-fun tp!1776751 () Bool)

(declare-fun tp!1776754 () Bool)

(assert (=> b!6387507 (= e!3877125 (and tp!1776751 tp!1776754))))

(declare-fun b!6387505 () Bool)

(declare-fun tp!1776755 () Bool)

(declare-fun tp!1776752 () Bool)

(assert (=> b!6387505 (= e!3877125 (and tp!1776755 tp!1776752))))

(declare-fun b!6387504 () Bool)

(assert (=> b!6387504 (= e!3877125 tp_is_empty!41859)))

(assert (=> b!6386455 (= tp!1776648 e!3877125)))

(declare-fun b!6387506 () Bool)

(declare-fun tp!1776753 () Bool)

(assert (=> b!6387506 (= e!3877125 tp!1776753)))

(assert (= (and b!6386455 ((_ is ElementMatch!16303) (regOne!33118 r!7292))) b!6387504))

(assert (= (and b!6386455 ((_ is Concat!25148) (regOne!33118 r!7292))) b!6387505))

(assert (= (and b!6386455 ((_ is Star!16303) (regOne!33118 r!7292))) b!6387506))

(assert (= (and b!6386455 ((_ is Union!16303) (regOne!33118 r!7292))) b!6387507))

(declare-fun b!6387511 () Bool)

(declare-fun e!3877126 () Bool)

(declare-fun tp!1776756 () Bool)

(declare-fun tp!1776759 () Bool)

(assert (=> b!6387511 (= e!3877126 (and tp!1776756 tp!1776759))))

(declare-fun b!6387509 () Bool)

(declare-fun tp!1776760 () Bool)

(declare-fun tp!1776757 () Bool)

(assert (=> b!6387509 (= e!3877126 (and tp!1776760 tp!1776757))))

(declare-fun b!6387508 () Bool)

(assert (=> b!6387508 (= e!3877126 tp_is_empty!41859)))

(assert (=> b!6386455 (= tp!1776646 e!3877126)))

(declare-fun b!6387510 () Bool)

(declare-fun tp!1776758 () Bool)

(assert (=> b!6387510 (= e!3877126 tp!1776758)))

(assert (= (and b!6386455 ((_ is ElementMatch!16303) (regTwo!33118 r!7292))) b!6387508))

(assert (= (and b!6386455 ((_ is Concat!25148) (regTwo!33118 r!7292))) b!6387509))

(assert (= (and b!6386455 ((_ is Star!16303) (regTwo!33118 r!7292))) b!6387510))

(assert (= (and b!6386455 ((_ is Union!16303) (regTwo!33118 r!7292))) b!6387511))

(declare-fun b!6387519 () Bool)

(declare-fun e!3877132 () Bool)

(declare-fun tp!1776765 () Bool)

(assert (=> b!6387519 (= e!3877132 tp!1776765)))

(declare-fun b!6387518 () Bool)

(declare-fun e!3877131 () Bool)

(declare-fun tp!1776766 () Bool)

(assert (=> b!6387518 (= e!3877131 (and (inv!84004 (h!71534 (t!378816 zl!343))) e!3877132 tp!1776766))))

(assert (=> b!6386420 (= tp!1776643 e!3877131)))

(assert (= b!6387518 b!6387519))

(assert (= (and b!6386420 ((_ is Cons!65086) (t!378816 zl!343))) b!6387518))

(declare-fun m!7186882 () Bool)

(assert (=> b!6387518 m!7186882))

(declare-fun b_lambda!242691 () Bool)

(assert (= b_lambda!242685 (or b!6386438 b_lambda!242691)))

(declare-fun bs!1598673 () Bool)

(declare-fun d!2002479 () Bool)

(assert (= bs!1598673 (and d!2002479 b!6386438)))

(assert (=> bs!1598673 (= (dynLambda!25823 lambda!352451 lt!2371596) (derivationStepZipperUp!1477 lt!2371596 (h!71532 s!2326)))))

(assert (=> bs!1598673 m!7185964))

(assert (=> d!2002457 d!2002479))

(declare-fun b_lambda!242693 () Bool)

(assert (= b_lambda!242683 (or b!6386438 b_lambda!242693)))

(declare-fun bs!1598674 () Bool)

(declare-fun d!2002481 () Bool)

(assert (= bs!1598674 (and d!2002481 b!6386438)))

(assert (=> bs!1598674 (= (dynLambda!25823 lambda!352451 (h!71534 zl!343)) (derivationStepZipperUp!1477 (h!71534 zl!343) (h!71532 s!2326)))))

(assert (=> bs!1598674 m!7186042))

(assert (=> d!2002401 d!2002481))

(declare-fun b_lambda!242695 () Bool)

(assert (= b_lambda!242681 (or b!6386438 b_lambda!242695)))

(declare-fun bs!1598675 () Bool)

(declare-fun d!2002483 () Bool)

(assert (= bs!1598675 (and d!2002483 b!6386438)))

(assert (=> bs!1598675 (= (dynLambda!25823 lambda!352451 lt!2371620) (derivationStepZipperUp!1477 lt!2371620 (h!71532 s!2326)))))

(assert (=> bs!1598675 m!7186076))

(assert (=> d!2002367 d!2002483))

(declare-fun b_lambda!242697 () Bool)

(assert (= b_lambda!242689 (or b!6386438 b_lambda!242697)))

(declare-fun bs!1598676 () Bool)

(declare-fun d!2002485 () Bool)

(assert (= bs!1598676 (and d!2002485 b!6386438)))

(assert (=> bs!1598676 (= (dynLambda!25823 lambda!352451 lt!2371605) (derivationStepZipperUp!1477 lt!2371605 (h!71532 s!2326)))))

(assert (=> bs!1598676 m!7185946))

(assert (=> d!2002471 d!2002485))

(declare-fun b_lambda!242699 () Bool)

(assert (= b_lambda!242687 (or b!6386438 b_lambda!242699)))

(declare-fun bs!1598677 () Bool)

(declare-fun d!2002487 () Bool)

(assert (= bs!1598677 (and d!2002487 b!6386438)))

(assert (=> bs!1598677 (= (dynLambda!25823 lambda!352451 lt!2371606) (derivationStepZipperUp!1477 lt!2371606 (h!71532 s!2326)))))

(assert (=> bs!1598677 m!7185950))

(assert (=> d!2002461 d!2002487))

(check-sat (not d!2002363) (not b!6387422) (not b!6387409) (not b!6387150) (not b!6387438) (not b!6387461) (not b!6386853) (not b!6387241) (not b!6387482) (not b!6387248) (not b!6387170) (not d!2002427) (not bm!546095) (not bm!546061) (not b!6387330) (not b!6387460) (not b!6387335) (not b!6387441) (not b!6387497) (not d!2002465) (not b!6386991) (not b!6387506) (not bm!546021) (not d!2002431) (not b!6386994) (not b!6387411) (not d!2002451) (not d!2002443) (not d!2002415) (not bm!546055) (not b!6387282) (not b!6387329) (not b!6387510) tp_is_empty!41859 (not d!2002401) (not d!2002455) (not d!2002425) (not b!6387263) (not b!6387332) (not b!6387418) (not b!6387317) (not b!6386997) (not b!6387424) (not b!6387502) (not b!6387427) (not bm!546082) (not b!6387509) (not d!2002463) (not b_lambda!242697) (not bm!546056) (not b!6387249) (not b!6387151) (not bm!546037) (not d!2002417) (not d!2002441) (not b!6387287) (not b!6387446) (not b!6387420) (not bm!546060) (not bm!546091) (not b!6387326) (not b!6387481) (not b!6387281) (not bm!546058) (not d!2002471) (not bm!546087) (not d!2002359) (not b!6387321) (not b!6386995) (not b!6387408) (not b!6387269) (not b!6387103) (not d!2002453) (not bs!1598676) (not b!6387318) (not d!2002445) (not d!2002475) (not d!2002413) (not setNonEmpty!43612) (not b!6387478) (not b!6387477) (not bm!546090) (not bm!546001) (not b!6387291) (not b!6387192) (not d!2002357) (not d!2002351) (not b!6387171) (not d!2002403) (not b!6387216) (not b!6386852) (not b_lambda!242691) (not d!2002447) (not b!6387436) (not bs!1598674) (not d!2002373) (not b!6387410) (not d!2002421) (not b!6387487) (not d!2002313) (not d!2002419) (not d!2002423) (not b!6387455) (not b!6387445) (not d!2002393) (not d!2002325) (not b!6387245) (not b!6387110) (not b!6387274) (not d!2002457) (not b!6387280) (not d!2002411) (not bm!546083) (not b!6387432) (not b!6387279) (not b!6387505) (not b!6387313) (not bm!546094) (not b!6387456) (not b!6387485) (not d!2002409) (not b!6387314) (not b!6387518) (not bm!546089) (not b!6387283) (not b!6387486) (not bs!1598677) (not bm!546000) (not b!6387141) (not b!6387316) (not bm!546038) (not b!6387290) (not b!6387268) (not b!6387507) (not b!6387406) (not d!2002291) (not bm!546081) (not d!2002397) (not b!6387000) (not b!6387165) (not d!2002439) (not b_lambda!242695) (not bm!546059) (not d!2002353) (not b!6387319) (not bm!546052) (not b!6387405) (not d!2002469) (not d!2002367) (not b!6387273) (not b!6387483) (not b!6387104) (not b!6387247) (not d!2002391) (not b!6387244) (not b!6387099) (not b!6387434) (not b!6386993) (not d!2002461) (not d!2002385) (not bm!546086) (not b!6387278) (not b!6387149) (not b!6387097) (not b!6387328) (not b!6387217) (not b!6387479) (not b!6387286) (not b!6387166) (not b!6387152) (not bm!546080) (not b!6387289) (not b!6387519) (not d!2002473) (not d!2002429) (not bs!1598673) (not bm!546051) (not d!2002369) (not bs!1598675) (not d!2002379) (not b_lambda!242693) (not d!2002375) (not bm!546050) (not b_lambda!242699) (not b!6387465) (not bm!546079) (not b!6387096) (not bm!546034) (not bm!546092) (not bm!546042) (not b!6387100) (not bm!546076) (not d!2002383) (not b!6387421) (not b!6387435) (not b!6387511) (not d!2002381) (not d!2002387) (not b!6387098) (not b!6387503) (not bm!546088) (not bm!546093) (not d!2002433) (not b!6387413) (not b!6387264) (not b!6387257) (not b!6387492))
(check-sat)
