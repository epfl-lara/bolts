; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!570742 () Bool)

(assert start!570742)

(declare-fun b!5442763 () Bool)

(assert (=> b!5442763 true))

(assert (=> b!5442763 true))

(declare-fun lambda!286466 () Int)

(declare-fun lambda!286465 () Int)

(assert (=> b!5442763 (not (= lambda!286466 lambda!286465))))

(assert (=> b!5442763 true))

(assert (=> b!5442763 true))

(declare-fun b!5442745 () Bool)

(assert (=> b!5442745 true))

(declare-fun b!5442743 () Bool)

(declare-fun res!2317199 () Bool)

(declare-fun e!3371524 () Bool)

(assert (=> b!5442743 (=> res!2317199 e!3371524)))

(declare-fun e!3371526 () Bool)

(assert (=> b!5442743 (= res!2317199 e!3371526)))

(declare-fun res!2317216 () Bool)

(assert (=> b!5442743 (=> (not res!2317216) (not e!3371526))))

(declare-datatypes ((C!30796 0))(
  ( (C!30797 (val!25100 Int)) )
))
(declare-datatypes ((Regex!15263 0))(
  ( (ElementMatch!15263 (c!949839 C!30796)) (Concat!24108 (regOne!31038 Regex!15263) (regTwo!31038 Regex!15263)) (EmptyExpr!15263) (Star!15263 (reg!15592 Regex!15263)) (EmptyLang!15263) (Union!15263 (regOne!31039 Regex!15263) (regTwo!31039 Regex!15263)) )
))
(declare-fun r!7292 () Regex!15263)

(get-info :version)

(assert (=> b!5442743 (= res!2317216 ((_ is Concat!24108) (regOne!31038 r!7292)))))

(declare-fun b!5442744 () Bool)

(declare-fun res!2317209 () Bool)

(declare-fun e!3371535 () Bool)

(assert (=> b!5442744 (=> res!2317209 e!3371535)))

(declare-datatypes ((List!62088 0))(
  ( (Nil!61964) (Cons!61964 (h!68412 Regex!15263) (t!375315 List!62088)) )
))
(declare-datatypes ((Context!9294 0))(
  ( (Context!9295 (exprs!5147 List!62088)) )
))
(declare-datatypes ((List!62089 0))(
  ( (Nil!61965) (Cons!61965 (h!68413 Context!9294) (t!375316 List!62089)) )
))
(declare-fun zl!343 () List!62089)

(declare-fun isEmpty!33950 (List!62088) Bool)

(assert (=> b!5442744 (= res!2317209 (isEmpty!33950 (t!375315 (exprs!5147 (h!68413 zl!343)))))))

(assert (=> b!5442745 (= e!3371535 e!3371524)))

(declare-fun res!2317215 () Bool)

(assert (=> b!5442745 (=> res!2317215 e!3371524)))

(declare-datatypes ((List!62090 0))(
  ( (Nil!61966) (Cons!61966 (h!68414 C!30796) (t!375317 List!62090)) )
))
(declare-fun s!2326 () List!62090)

(assert (=> b!5442745 (= res!2317215 (or (and ((_ is ElementMatch!15263) (regOne!31038 r!7292)) (= (c!949839 (regOne!31038 r!7292)) (h!68414 s!2326))) ((_ is Union!15263) (regOne!31038 r!7292))))))

(declare-datatypes ((Unit!154594 0))(
  ( (Unit!154595) )
))
(declare-fun lt!2219293 () Unit!154594)

(declare-fun e!3371536 () Unit!154594)

(assert (=> b!5442745 (= lt!2219293 e!3371536)))

(declare-fun c!949838 () Bool)

(declare-fun nullable!5432 (Regex!15263) Bool)

(assert (=> b!5442745 (= c!949838 (nullable!5432 (h!68412 (exprs!5147 (h!68413 zl!343)))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9294))

(declare-fun lambda!286467 () Int)

(declare-fun flatMap!990 ((InoxSet Context!9294) Int) (InoxSet Context!9294))

(declare-fun derivationStepZipperUp!635 (Context!9294 C!30796) (InoxSet Context!9294))

(assert (=> b!5442745 (= (flatMap!990 z!1189 lambda!286467) (derivationStepZipperUp!635 (h!68413 zl!343) (h!68414 s!2326)))))

(declare-fun lt!2219304 () Unit!154594)

(declare-fun lemmaFlatMapOnSingletonSet!522 ((InoxSet Context!9294) Context!9294 Int) Unit!154594)

(assert (=> b!5442745 (= lt!2219304 (lemmaFlatMapOnSingletonSet!522 z!1189 (h!68413 zl!343) lambda!286467))))

(declare-fun lt!2219294 () (InoxSet Context!9294))

(declare-fun lt!2219298 () Context!9294)

(assert (=> b!5442745 (= lt!2219294 (derivationStepZipperUp!635 lt!2219298 (h!68414 s!2326)))))

(declare-fun lt!2219284 () (InoxSet Context!9294))

(declare-fun derivationStepZipperDown!711 (Regex!15263 Context!9294 C!30796) (InoxSet Context!9294))

(assert (=> b!5442745 (= lt!2219284 (derivationStepZipperDown!711 (h!68412 (exprs!5147 (h!68413 zl!343))) lt!2219298 (h!68414 s!2326)))))

(assert (=> b!5442745 (= lt!2219298 (Context!9295 (t!375315 (exprs!5147 (h!68413 zl!343)))))))

(declare-fun lt!2219295 () (InoxSet Context!9294))

(assert (=> b!5442745 (= lt!2219295 (derivationStepZipperUp!635 (Context!9295 (Cons!61964 (h!68412 (exprs!5147 (h!68413 zl!343))) (t!375315 (exprs!5147 (h!68413 zl!343))))) (h!68414 s!2326)))))

(declare-fun b!5442746 () Bool)

(declare-fun e!3371538 () Bool)

(declare-fun e!3371530 () Bool)

(assert (=> b!5442746 (= e!3371538 (not e!3371530))))

(declare-fun res!2317206 () Bool)

(assert (=> b!5442746 (=> res!2317206 e!3371530)))

(assert (=> b!5442746 (= res!2317206 (not ((_ is Cons!61965) zl!343)))))

(declare-fun lt!2219286 () Bool)

(declare-fun matchRSpec!2366 (Regex!15263 List!62090) Bool)

(assert (=> b!5442746 (= lt!2219286 (matchRSpec!2366 r!7292 s!2326))))

(declare-fun matchR!7448 (Regex!15263 List!62090) Bool)

(assert (=> b!5442746 (= lt!2219286 (matchR!7448 r!7292 s!2326))))

(declare-fun lt!2219302 () Unit!154594)

(declare-fun mainMatchTheorem!2366 (Regex!15263 List!62090) Unit!154594)

(assert (=> b!5442746 (= lt!2219302 (mainMatchTheorem!2366 r!7292 s!2326))))

(declare-fun b!5442747 () Bool)

(declare-fun Unit!154596 () Unit!154594)

(assert (=> b!5442747 (= e!3371536 Unit!154596)))

(declare-fun b!5442748 () Bool)

(declare-fun e!3371534 () Bool)

(declare-fun tp!1500458 () Bool)

(declare-fun tp!1500456 () Bool)

(assert (=> b!5442748 (= e!3371534 (and tp!1500458 tp!1500456))))

(declare-fun b!5442749 () Bool)

(declare-fun e!3371525 () Bool)

(declare-fun e!3371533 () Bool)

(assert (=> b!5442749 (= e!3371525 e!3371533)))

(declare-fun res!2317214 () Bool)

(assert (=> b!5442749 (=> res!2317214 e!3371533)))

(declare-fun lt!2219299 () Bool)

(declare-fun matchZipper!1507 ((InoxSet Context!9294) List!62090) Bool)

(assert (=> b!5442749 (= res!2317214 (not (= (matchZipper!1507 z!1189 s!2326) lt!2219299)))))

(declare-fun lt!2219300 () Bool)

(assert (=> b!5442749 (= lt!2219300 lt!2219299)))

(assert (=> b!5442749 (= lt!2219299 (matchZipper!1507 lt!2219294 (t!375317 s!2326)))))

(declare-fun lt!2219296 () (InoxSet Context!9294))

(assert (=> b!5442749 (= lt!2219300 (matchZipper!1507 lt!2219296 (t!375317 s!2326)))))

(declare-fun lt!2219303 () Unit!154594)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!500 ((InoxSet Context!9294) (InoxSet Context!9294) List!62090) Unit!154594)

(assert (=> b!5442749 (= lt!2219303 (lemmaZipperConcatMatchesSameAsBothZippers!500 lt!2219284 lt!2219294 (t!375317 s!2326)))))

(declare-fun b!5442751 () Bool)

(declare-fun res!2317211 () Bool)

(assert (=> b!5442751 (=> res!2317211 e!3371530)))

(assert (=> b!5442751 (= res!2317211 (not ((_ is Cons!61964) (exprs!5147 (h!68413 zl!343)))))))

(declare-fun b!5442752 () Bool)

(declare-fun res!2317213 () Bool)

(assert (=> b!5442752 (=> (not res!2317213) (not e!3371538))))

(declare-fun unfocusZipper!1005 (List!62089) Regex!15263)

(assert (=> b!5442752 (= res!2317213 (= r!7292 (unfocusZipper!1005 zl!343)))))

(declare-fun b!5442753 () Bool)

(declare-fun e!3371529 () Bool)

(assert (=> b!5442753 (= e!3371524 e!3371529)))

(declare-fun res!2317200 () Bool)

(assert (=> b!5442753 (=> res!2317200 e!3371529)))

(assert (=> b!5442753 (= res!2317200 (or (not (= lt!2219284 ((as const (Array Context!9294 Bool)) false))) (not (= r!7292 (Concat!24108 (regOne!31038 r!7292) (regTwo!31038 r!7292)))) (not (= (regOne!31038 r!7292) EmptyExpr!15263))))))

(assert (=> b!5442753 (not (matchZipper!1507 lt!2219284 (t!375317 s!2326)))))

(declare-fun lt!2219285 () Unit!154594)

(declare-fun lemmaEmptyZipperMatchesNothing!18 ((InoxSet Context!9294) List!62090) Unit!154594)

(assert (=> b!5442753 (= lt!2219285 (lemmaEmptyZipperMatchesNothing!18 lt!2219284 (t!375317 s!2326)))))

(declare-fun e!3371523 () Bool)

(declare-fun b!5442754 () Bool)

(declare-fun e!3371527 () Bool)

(declare-fun tp!1500463 () Bool)

(declare-fun inv!81404 (Context!9294) Bool)

(assert (=> b!5442754 (= e!3371527 (and (inv!81404 (h!68413 zl!343)) e!3371523 tp!1500463))))

(declare-fun b!5442755 () Bool)

(declare-fun tp!1500459 () Bool)

(declare-fun tp!1500464 () Bool)

(assert (=> b!5442755 (= e!3371534 (and tp!1500459 tp!1500464))))

(declare-fun b!5442756 () Bool)

(declare-fun e!3371522 () Bool)

(declare-fun tp!1500460 () Bool)

(assert (=> b!5442756 (= e!3371522 tp!1500460)))

(declare-fun b!5442757 () Bool)

(assert (=> b!5442757 (= e!3371526 (nullable!5432 (regOne!31038 (regOne!31038 r!7292))))))

(declare-fun b!5442758 () Bool)

(declare-fun e!3371537 () Bool)

(assert (=> b!5442758 (= e!3371537 e!3371525)))

(declare-fun res!2317205 () Bool)

(assert (=> b!5442758 (=> res!2317205 e!3371525)))

(declare-fun derivationStepZipper!1492 ((InoxSet Context!9294) C!30796) (InoxSet Context!9294))

(assert (=> b!5442758 (= res!2317205 (not (= (derivationStepZipper!1492 z!1189 (h!68414 s!2326)) lt!2219296)))))

(assert (=> b!5442758 (= lt!2219296 ((_ map or) lt!2219284 lt!2219294))))

(declare-fun b!5442759 () Bool)

(declare-fun res!2317202 () Bool)

(assert (=> b!5442759 (=> res!2317202 e!3371524)))

(assert (=> b!5442759 (= res!2317202 (or ((_ is Concat!24108) (regOne!31038 r!7292)) ((_ is Star!15263) (regOne!31038 r!7292)) (not ((_ is EmptyExpr!15263) (regOne!31038 r!7292)))))))

(declare-fun b!5442760 () Bool)

(declare-fun res!2317212 () Bool)

(assert (=> b!5442760 (=> (not res!2317212) (not e!3371538))))

(declare-fun toList!9047 ((InoxSet Context!9294)) List!62089)

(assert (=> b!5442760 (= res!2317212 (= (toList!9047 z!1189) zl!343))))

(declare-fun b!5442761 () Bool)

(declare-fun lt!2219282 () Regex!15263)

(declare-fun validRegex!6999 (Regex!15263) Bool)

(assert (=> b!5442761 (= e!3371533 (validRegex!6999 lt!2219282))))

(declare-fun lt!2219287 () (InoxSet Context!9294))

(assert (=> b!5442761 (= (matchR!7448 lt!2219282 s!2326) (matchZipper!1507 lt!2219287 s!2326))))

(declare-fun lt!2219281 () Unit!154594)

(declare-fun theoremZipperRegexEquiv!551 ((InoxSet Context!9294) List!62089 Regex!15263 List!62090) Unit!154594)

(assert (=> b!5442761 (= lt!2219281 (theoremZipperRegexEquiv!551 lt!2219287 (Cons!61965 lt!2219298 Nil!61965) lt!2219282 s!2326))))

(declare-fun generalisedConcat!932 (List!62088) Regex!15263)

(assert (=> b!5442761 (= lt!2219282 (generalisedConcat!932 (t!375315 (exprs!5147 (h!68413 zl!343)))))))

(declare-fun b!5442762 () Bool)

(declare-fun e!3371528 () Bool)

(assert (=> b!5442762 (= e!3371529 e!3371528)))

(declare-fun res!2317210 () Bool)

(assert (=> b!5442762 (=> res!2317210 e!3371528)))

(declare-fun lt!2219291 () Bool)

(assert (=> b!5442762 (= res!2317210 (not (= lt!2219286 lt!2219291)))))

(assert (=> b!5442762 (= lt!2219291 (matchRSpec!2366 (regTwo!31038 r!7292) s!2326))))

(assert (=> b!5442762 (= lt!2219291 (matchR!7448 (regTwo!31038 r!7292) s!2326))))

(declare-fun lt!2219297 () Unit!154594)

(assert (=> b!5442762 (= lt!2219297 (mainMatchTheorem!2366 (regTwo!31038 r!7292) s!2326))))

(assert (=> b!5442762 (= (matchR!7448 (regOne!31038 r!7292) s!2326) (matchRSpec!2366 (regOne!31038 r!7292) s!2326))))

(declare-fun lt!2219288 () Unit!154594)

(assert (=> b!5442762 (= lt!2219288 (mainMatchTheorem!2366 (regOne!31038 r!7292) s!2326))))

(declare-fun res!2317219 () Bool)

(assert (=> start!570742 (=> (not res!2317219) (not e!3371538))))

(assert (=> start!570742 (= res!2317219 (validRegex!6999 r!7292))))

(assert (=> start!570742 e!3371538))

(assert (=> start!570742 e!3371534))

(declare-fun condSetEmpty!35593 () Bool)

(assert (=> start!570742 (= condSetEmpty!35593 (= z!1189 ((as const (Array Context!9294 Bool)) false)))))

(declare-fun setRes!35593 () Bool)

(assert (=> start!570742 setRes!35593))

(assert (=> start!570742 e!3371527))

(declare-fun e!3371531 () Bool)

(assert (=> start!570742 e!3371531))

(declare-fun b!5442750 () Bool)

(declare-fun res!2317207 () Bool)

(assert (=> b!5442750 (=> res!2317207 e!3371530)))

(assert (=> b!5442750 (= res!2317207 (or ((_ is EmptyExpr!15263) r!7292) ((_ is EmptyLang!15263) r!7292) ((_ is ElementMatch!15263) r!7292) ((_ is Union!15263) r!7292) (not ((_ is Concat!24108) r!7292))))))

(assert (=> b!5442763 (= e!3371530 e!3371535)))

(declare-fun res!2317201 () Bool)

(assert (=> b!5442763 (=> res!2317201 e!3371535)))

(declare-fun lt!2219290 () Bool)

(assert (=> b!5442763 (= res!2317201 (or (not (= lt!2219286 lt!2219290)) ((_ is Nil!61966) s!2326)))))

(declare-fun Exists!2444 (Int) Bool)

(assert (=> b!5442763 (= (Exists!2444 lambda!286465) (Exists!2444 lambda!286466))))

(declare-fun lt!2219283 () Unit!154594)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1098 (Regex!15263 Regex!15263 List!62090) Unit!154594)

(assert (=> b!5442763 (= lt!2219283 (lemmaExistCutMatchRandMatchRSpecEquivalent!1098 (regOne!31038 r!7292) (regTwo!31038 r!7292) s!2326))))

(assert (=> b!5442763 (= lt!2219290 (Exists!2444 lambda!286465))))

(declare-datatypes ((tuple2!64924 0))(
  ( (tuple2!64925 (_1!35765 List!62090) (_2!35765 List!62090)) )
))
(declare-datatypes ((Option!15374 0))(
  ( (None!15373) (Some!15373 (v!51402 tuple2!64924)) )
))
(declare-fun isDefined!12077 (Option!15374) Bool)

(declare-fun findConcatSeparation!1788 (Regex!15263 Regex!15263 List!62090 List!62090 List!62090) Option!15374)

(assert (=> b!5442763 (= lt!2219290 (isDefined!12077 (findConcatSeparation!1788 (regOne!31038 r!7292) (regTwo!31038 r!7292) Nil!61966 s!2326 s!2326)))))

(declare-fun lt!2219301 () Unit!154594)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1552 (Regex!15263 Regex!15263 List!62090) Unit!154594)

(assert (=> b!5442763 (= lt!2219301 (lemmaFindConcatSeparationEquivalentToExists!1552 (regOne!31038 r!7292) (regTwo!31038 r!7292) s!2326))))

(declare-fun b!5442764 () Bool)

(declare-fun e!3371532 () Bool)

(assert (=> b!5442764 (= e!3371532 (matchZipper!1507 lt!2219294 (t!375317 s!2326)))))

(declare-fun b!5442765 () Bool)

(declare-fun tp!1500461 () Bool)

(assert (=> b!5442765 (= e!3371534 tp!1500461)))

(declare-fun b!5442766 () Bool)

(assert (=> b!5442766 (= e!3371528 e!3371537)))

(declare-fun res!2317203 () Bool)

(assert (=> b!5442766 (=> res!2317203 e!3371537)))

(assert (=> b!5442766 (= res!2317203 (not (= lt!2219294 (derivationStepZipper!1492 lt!2219287 (h!68414 s!2326)))))))

(assert (=> b!5442766 (= (flatMap!990 lt!2219287 lambda!286467) (derivationStepZipperUp!635 lt!2219298 (h!68414 s!2326)))))

(declare-fun lt!2219292 () Unit!154594)

(assert (=> b!5442766 (= lt!2219292 (lemmaFlatMapOnSingletonSet!522 lt!2219287 lt!2219298 lambda!286467))))

(assert (=> b!5442766 (= lt!2219287 (store ((as const (Array Context!9294 Bool)) false) lt!2219298 true))))

(declare-fun b!5442767 () Bool)

(declare-fun res!2317204 () Bool)

(assert (=> b!5442767 (=> res!2317204 e!3371530)))

(declare-fun isEmpty!33951 (List!62089) Bool)

(assert (=> b!5442767 (= res!2317204 (not (isEmpty!33951 (t!375316 zl!343))))))

(declare-fun b!5442768 () Bool)

(declare-fun tp!1500457 () Bool)

(assert (=> b!5442768 (= e!3371523 tp!1500457)))

(declare-fun b!5442769 () Bool)

(declare-fun res!2317208 () Bool)

(assert (=> b!5442769 (=> res!2317208 e!3371530)))

(declare-fun generalisedUnion!1192 (List!62088) Regex!15263)

(declare-fun unfocusZipperList!705 (List!62089) List!62088)

(assert (=> b!5442769 (= res!2317208 (not (= r!7292 (generalisedUnion!1192 (unfocusZipperList!705 zl!343)))))))

(declare-fun b!5442770 () Bool)

(declare-fun tp_is_empty!39779 () Bool)

(declare-fun tp!1500465 () Bool)

(assert (=> b!5442770 (= e!3371531 (and tp_is_empty!39779 tp!1500465))))

(declare-fun b!5442771 () Bool)

(declare-fun Unit!154597 () Unit!154594)

(assert (=> b!5442771 (= e!3371536 Unit!154597)))

(declare-fun lt!2219289 () Unit!154594)

(assert (=> b!5442771 (= lt!2219289 (lemmaZipperConcatMatchesSameAsBothZippers!500 lt!2219284 lt!2219294 (t!375317 s!2326)))))

(declare-fun res!2317218 () Bool)

(assert (=> b!5442771 (= res!2317218 (matchZipper!1507 lt!2219284 (t!375317 s!2326)))))

(assert (=> b!5442771 (=> res!2317218 e!3371532)))

(assert (=> b!5442771 (= (matchZipper!1507 ((_ map or) lt!2219284 lt!2219294) (t!375317 s!2326)) e!3371532)))

(declare-fun tp!1500462 () Bool)

(declare-fun setNonEmpty!35593 () Bool)

(declare-fun setElem!35593 () Context!9294)

(assert (=> setNonEmpty!35593 (= setRes!35593 (and tp!1500462 (inv!81404 setElem!35593) e!3371522))))

(declare-fun setRest!35593 () (InoxSet Context!9294))

(assert (=> setNonEmpty!35593 (= z!1189 ((_ map or) (store ((as const (Array Context!9294 Bool)) false) setElem!35593 true) setRest!35593))))

(declare-fun setIsEmpty!35593 () Bool)

(assert (=> setIsEmpty!35593 setRes!35593))

(declare-fun b!5442772 () Bool)

(declare-fun res!2317217 () Bool)

(assert (=> b!5442772 (=> res!2317217 e!3371530)))

(assert (=> b!5442772 (= res!2317217 (not (= r!7292 (generalisedConcat!932 (exprs!5147 (h!68413 zl!343))))))))

(declare-fun b!5442773 () Bool)

(assert (=> b!5442773 (= e!3371534 tp_is_empty!39779)))

(assert (= (and start!570742 res!2317219) b!5442760))

(assert (= (and b!5442760 res!2317212) b!5442752))

(assert (= (and b!5442752 res!2317213) b!5442746))

(assert (= (and b!5442746 (not res!2317206)) b!5442767))

(assert (= (and b!5442767 (not res!2317204)) b!5442772))

(assert (= (and b!5442772 (not res!2317217)) b!5442751))

(assert (= (and b!5442751 (not res!2317211)) b!5442769))

(assert (= (and b!5442769 (not res!2317208)) b!5442750))

(assert (= (and b!5442750 (not res!2317207)) b!5442763))

(assert (= (and b!5442763 (not res!2317201)) b!5442744))

(assert (= (and b!5442744 (not res!2317209)) b!5442745))

(assert (= (and b!5442745 c!949838) b!5442771))

(assert (= (and b!5442745 (not c!949838)) b!5442747))

(assert (= (and b!5442771 (not res!2317218)) b!5442764))

(assert (= (and b!5442745 (not res!2317215)) b!5442743))

(assert (= (and b!5442743 res!2317216) b!5442757))

(assert (= (and b!5442743 (not res!2317199)) b!5442759))

(assert (= (and b!5442759 (not res!2317202)) b!5442753))

(assert (= (and b!5442753 (not res!2317200)) b!5442762))

(assert (= (and b!5442762 (not res!2317210)) b!5442766))

(assert (= (and b!5442766 (not res!2317203)) b!5442758))

(assert (= (and b!5442758 (not res!2317205)) b!5442749))

(assert (= (and b!5442749 (not res!2317214)) b!5442761))

(assert (= (and start!570742 ((_ is ElementMatch!15263) r!7292)) b!5442773))

(assert (= (and start!570742 ((_ is Concat!24108) r!7292)) b!5442755))

(assert (= (and start!570742 ((_ is Star!15263) r!7292)) b!5442765))

(assert (= (and start!570742 ((_ is Union!15263) r!7292)) b!5442748))

(assert (= (and start!570742 condSetEmpty!35593) setIsEmpty!35593))

(assert (= (and start!570742 (not condSetEmpty!35593)) setNonEmpty!35593))

(assert (= setNonEmpty!35593 b!5442756))

(assert (= b!5442754 b!5442768))

(assert (= (and start!570742 ((_ is Cons!61965) zl!343)) b!5442754))

(assert (= (and start!570742 ((_ is Cons!61966) s!2326)) b!5442770))

(declare-fun m!6463164 () Bool)

(assert (=> b!5442758 m!6463164))

(declare-fun m!6463166 () Bool)

(assert (=> b!5442767 m!6463166))

(declare-fun m!6463168 () Bool)

(assert (=> b!5442772 m!6463168))

(declare-fun m!6463170 () Bool)

(assert (=> b!5442744 m!6463170))

(declare-fun m!6463172 () Bool)

(assert (=> b!5442761 m!6463172))

(declare-fun m!6463174 () Bool)

(assert (=> b!5442761 m!6463174))

(declare-fun m!6463176 () Bool)

(assert (=> b!5442761 m!6463176))

(declare-fun m!6463178 () Bool)

(assert (=> b!5442761 m!6463178))

(declare-fun m!6463180 () Bool)

(assert (=> b!5442761 m!6463180))

(declare-fun m!6463182 () Bool)

(assert (=> b!5442771 m!6463182))

(declare-fun m!6463184 () Bool)

(assert (=> b!5442771 m!6463184))

(declare-fun m!6463186 () Bool)

(assert (=> b!5442771 m!6463186))

(declare-fun m!6463188 () Bool)

(assert (=> b!5442763 m!6463188))

(declare-fun m!6463190 () Bool)

(assert (=> b!5442763 m!6463190))

(declare-fun m!6463192 () Bool)

(assert (=> b!5442763 m!6463192))

(declare-fun m!6463194 () Bool)

(assert (=> b!5442763 m!6463194))

(declare-fun m!6463196 () Bool)

(assert (=> b!5442763 m!6463196))

(assert (=> b!5442763 m!6463192))

(assert (=> b!5442763 m!6463188))

(declare-fun m!6463198 () Bool)

(assert (=> b!5442763 m!6463198))

(declare-fun m!6463200 () Bool)

(assert (=> start!570742 m!6463200))

(declare-fun m!6463202 () Bool)

(assert (=> b!5442752 m!6463202))

(declare-fun m!6463204 () Bool)

(assert (=> b!5442760 m!6463204))

(declare-fun m!6463206 () Bool)

(assert (=> setNonEmpty!35593 m!6463206))

(declare-fun m!6463208 () Bool)

(assert (=> b!5442766 m!6463208))

(declare-fun m!6463210 () Bool)

(assert (=> b!5442766 m!6463210))

(declare-fun m!6463212 () Bool)

(assert (=> b!5442766 m!6463212))

(declare-fun m!6463214 () Bool)

(assert (=> b!5442766 m!6463214))

(declare-fun m!6463216 () Bool)

(assert (=> b!5442766 m!6463216))

(declare-fun m!6463218 () Bool)

(assert (=> b!5442754 m!6463218))

(declare-fun m!6463220 () Bool)

(assert (=> b!5442749 m!6463220))

(declare-fun m!6463222 () Bool)

(assert (=> b!5442749 m!6463222))

(declare-fun m!6463224 () Bool)

(assert (=> b!5442749 m!6463224))

(assert (=> b!5442749 m!6463182))

(declare-fun m!6463226 () Bool)

(assert (=> b!5442745 m!6463226))

(declare-fun m!6463228 () Bool)

(assert (=> b!5442745 m!6463228))

(declare-fun m!6463230 () Bool)

(assert (=> b!5442745 m!6463230))

(assert (=> b!5442745 m!6463212))

(declare-fun m!6463232 () Bool)

(assert (=> b!5442745 m!6463232))

(declare-fun m!6463234 () Bool)

(assert (=> b!5442745 m!6463234))

(declare-fun m!6463236 () Bool)

(assert (=> b!5442745 m!6463236))

(declare-fun m!6463238 () Bool)

(assert (=> b!5442757 m!6463238))

(declare-fun m!6463240 () Bool)

(assert (=> b!5442762 m!6463240))

(declare-fun m!6463242 () Bool)

(assert (=> b!5442762 m!6463242))

(declare-fun m!6463244 () Bool)

(assert (=> b!5442762 m!6463244))

(declare-fun m!6463246 () Bool)

(assert (=> b!5442762 m!6463246))

(declare-fun m!6463248 () Bool)

(assert (=> b!5442762 m!6463248))

(declare-fun m!6463250 () Bool)

(assert (=> b!5442762 m!6463250))

(assert (=> b!5442753 m!6463184))

(declare-fun m!6463252 () Bool)

(assert (=> b!5442753 m!6463252))

(declare-fun m!6463254 () Bool)

(assert (=> b!5442746 m!6463254))

(declare-fun m!6463256 () Bool)

(assert (=> b!5442746 m!6463256))

(declare-fun m!6463258 () Bool)

(assert (=> b!5442746 m!6463258))

(assert (=> b!5442764 m!6463222))

(declare-fun m!6463260 () Bool)

(assert (=> b!5442769 m!6463260))

(assert (=> b!5442769 m!6463260))

(declare-fun m!6463262 () Bool)

(assert (=> b!5442769 m!6463262))

(check-sat (not b!5442760) (not b!5442745) (not b!5442771) (not b!5442761) (not b!5442752) (not b!5442766) (not b!5442765) (not b!5442744) (not b!5442748) (not b!5442770) (not b!5442746) (not b!5442768) (not b!5442769) (not b!5442763) (not b!5442753) (not b!5442756) tp_is_empty!39779 (not b!5442758) (not b!5442754) (not b!5442764) (not b!5442749) (not setNonEmpty!35593) (not b!5442762) (not b!5442755) (not b!5442767) (not b!5442772) (not b!5442757) (not start!570742))
(check-sat)
(get-model)

(declare-fun bs!1256063 () Bool)

(declare-fun d!1733429 () Bool)

(assert (= bs!1256063 (and d!1733429 b!5442745)))

(declare-fun lambda!286476 () Int)

(assert (=> bs!1256063 (= lambda!286476 lambda!286467)))

(assert (=> d!1733429 true))

(assert (=> d!1733429 (= (derivationStepZipper!1492 z!1189 (h!68414 s!2326)) (flatMap!990 z!1189 lambda!286476))))

(declare-fun bs!1256064 () Bool)

(assert (= bs!1256064 d!1733429))

(declare-fun m!6463324 () Bool)

(assert (=> bs!1256064 m!6463324))

(assert (=> b!5442758 d!1733429))

(declare-fun b!5442924 () Bool)

(declare-fun e!3371622 () Regex!15263)

(assert (=> b!5442924 (= e!3371622 (Union!15263 (h!68412 (unfocusZipperList!705 zl!343)) (generalisedUnion!1192 (t!375315 (unfocusZipperList!705 zl!343)))))))

(declare-fun b!5442925 () Bool)

(declare-fun e!3371623 () Regex!15263)

(assert (=> b!5442925 (= e!3371623 e!3371622)))

(declare-fun c!949895 () Bool)

(assert (=> b!5442925 (= c!949895 ((_ is Cons!61964) (unfocusZipperList!705 zl!343)))))

(declare-fun b!5442927 () Bool)

(declare-fun e!3371624 () Bool)

(declare-fun e!3371627 () Bool)

(assert (=> b!5442927 (= e!3371624 e!3371627)))

(declare-fun c!949893 () Bool)

(declare-fun tail!10770 (List!62088) List!62088)

(assert (=> b!5442927 (= c!949893 (isEmpty!33950 (tail!10770 (unfocusZipperList!705 zl!343))))))

(declare-fun b!5442928 () Bool)

(declare-fun e!3371626 () Bool)

(assert (=> b!5442928 (= e!3371626 e!3371624)))

(declare-fun c!949894 () Bool)

(assert (=> b!5442928 (= c!949894 (isEmpty!33950 (unfocusZipperList!705 zl!343)))))

(declare-fun b!5442929 () Bool)

(declare-fun e!3371625 () Bool)

(assert (=> b!5442929 (= e!3371625 (isEmpty!33950 (t!375315 (unfocusZipperList!705 zl!343))))))

(declare-fun b!5442930 () Bool)

(declare-fun lt!2219331 () Regex!15263)

(declare-fun isEmptyLang!1019 (Regex!15263) Bool)

(assert (=> b!5442930 (= e!3371624 (isEmptyLang!1019 lt!2219331))))

(declare-fun b!5442931 () Bool)

(assert (=> b!5442931 (= e!3371622 EmptyLang!15263)))

(declare-fun d!1733431 () Bool)

(assert (=> d!1733431 e!3371626))

(declare-fun res!2317260 () Bool)

(assert (=> d!1733431 (=> (not res!2317260) (not e!3371626))))

(assert (=> d!1733431 (= res!2317260 (validRegex!6999 lt!2219331))))

(assert (=> d!1733431 (= lt!2219331 e!3371623)))

(declare-fun c!949896 () Bool)

(assert (=> d!1733431 (= c!949896 e!3371625)))

(declare-fun res!2317261 () Bool)

(assert (=> d!1733431 (=> (not res!2317261) (not e!3371625))))

(assert (=> d!1733431 (= res!2317261 ((_ is Cons!61964) (unfocusZipperList!705 zl!343)))))

(declare-fun lambda!286482 () Int)

(declare-fun forall!14578 (List!62088 Int) Bool)

(assert (=> d!1733431 (forall!14578 (unfocusZipperList!705 zl!343) lambda!286482)))

(assert (=> d!1733431 (= (generalisedUnion!1192 (unfocusZipperList!705 zl!343)) lt!2219331)))

(declare-fun b!5442926 () Bool)

(assert (=> b!5442926 (= e!3371623 (h!68412 (unfocusZipperList!705 zl!343)))))

(declare-fun b!5442932 () Bool)

(declare-fun head!11673 (List!62088) Regex!15263)

(assert (=> b!5442932 (= e!3371627 (= lt!2219331 (head!11673 (unfocusZipperList!705 zl!343))))))

(declare-fun b!5442933 () Bool)

(declare-fun isUnion!451 (Regex!15263) Bool)

(assert (=> b!5442933 (= e!3371627 (isUnion!451 lt!2219331))))

(assert (= (and d!1733431 res!2317261) b!5442929))

(assert (= (and d!1733431 c!949896) b!5442926))

(assert (= (and d!1733431 (not c!949896)) b!5442925))

(assert (= (and b!5442925 c!949895) b!5442924))

(assert (= (and b!5442925 (not c!949895)) b!5442931))

(assert (= (and d!1733431 res!2317260) b!5442928))

(assert (= (and b!5442928 c!949894) b!5442930))

(assert (= (and b!5442928 (not c!949894)) b!5442927))

(assert (= (and b!5442927 c!949893) b!5442932))

(assert (= (and b!5442927 (not c!949893)) b!5442933))

(declare-fun m!6463356 () Bool)

(assert (=> b!5442924 m!6463356))

(declare-fun m!6463358 () Bool)

(assert (=> b!5442930 m!6463358))

(assert (=> b!5442928 m!6463260))

(declare-fun m!6463360 () Bool)

(assert (=> b!5442928 m!6463360))

(declare-fun m!6463362 () Bool)

(assert (=> b!5442933 m!6463362))

(assert (=> b!5442927 m!6463260))

(declare-fun m!6463364 () Bool)

(assert (=> b!5442927 m!6463364))

(assert (=> b!5442927 m!6463364))

(declare-fun m!6463366 () Bool)

(assert (=> b!5442927 m!6463366))

(assert (=> b!5442932 m!6463260))

(declare-fun m!6463368 () Bool)

(assert (=> b!5442932 m!6463368))

(declare-fun m!6463370 () Bool)

(assert (=> d!1733431 m!6463370))

(assert (=> d!1733431 m!6463260))

(declare-fun m!6463372 () Bool)

(assert (=> d!1733431 m!6463372))

(declare-fun m!6463374 () Bool)

(assert (=> b!5442929 m!6463374))

(assert (=> b!5442769 d!1733431))

(declare-fun bs!1256073 () Bool)

(declare-fun d!1733441 () Bool)

(assert (= bs!1256073 (and d!1733441 d!1733431)))

(declare-fun lambda!286491 () Int)

(assert (=> bs!1256073 (= lambda!286491 lambda!286482)))

(declare-fun lt!2219337 () List!62088)

(assert (=> d!1733441 (forall!14578 lt!2219337 lambda!286491)))

(declare-fun e!3371634 () List!62088)

(assert (=> d!1733441 (= lt!2219337 e!3371634)))

(declare-fun c!949899 () Bool)

(assert (=> d!1733441 (= c!949899 ((_ is Cons!61965) zl!343))))

(assert (=> d!1733441 (= (unfocusZipperList!705 zl!343) lt!2219337)))

(declare-fun b!5442946 () Bool)

(assert (=> b!5442946 (= e!3371634 (Cons!61964 (generalisedConcat!932 (exprs!5147 (h!68413 zl!343))) (unfocusZipperList!705 (t!375316 zl!343))))))

(declare-fun b!5442947 () Bool)

(assert (=> b!5442947 (= e!3371634 Nil!61964)))

(assert (= (and d!1733441 c!949899) b!5442946))

(assert (= (and d!1733441 (not c!949899)) b!5442947))

(declare-fun m!6463384 () Bool)

(assert (=> d!1733441 m!6463384))

(assert (=> b!5442946 m!6463168))

(declare-fun m!6463386 () Bool)

(assert (=> b!5442946 m!6463386))

(assert (=> b!5442769 d!1733441))

(declare-fun d!1733447 () Bool)

(declare-fun c!949909 () Bool)

(declare-fun isEmpty!33954 (List!62090) Bool)

(assert (=> d!1733447 (= c!949909 (isEmpty!33954 s!2326))))

(declare-fun e!3371645 () Bool)

(assert (=> d!1733447 (= (matchZipper!1507 z!1189 s!2326) e!3371645)))

(declare-fun b!5442967 () Bool)

(declare-fun nullableZipper!1478 ((InoxSet Context!9294)) Bool)

(assert (=> b!5442967 (= e!3371645 (nullableZipper!1478 z!1189))))

(declare-fun b!5442968 () Bool)

(declare-fun head!11674 (List!62090) C!30796)

(declare-fun tail!10771 (List!62090) List!62090)

(assert (=> b!5442968 (= e!3371645 (matchZipper!1507 (derivationStepZipper!1492 z!1189 (head!11674 s!2326)) (tail!10771 s!2326)))))

(assert (= (and d!1733447 c!949909) b!5442967))

(assert (= (and d!1733447 (not c!949909)) b!5442968))

(declare-fun m!6463424 () Bool)

(assert (=> d!1733447 m!6463424))

(declare-fun m!6463426 () Bool)

(assert (=> b!5442967 m!6463426))

(declare-fun m!6463428 () Bool)

(assert (=> b!5442968 m!6463428))

(assert (=> b!5442968 m!6463428))

(declare-fun m!6463430 () Bool)

(assert (=> b!5442968 m!6463430))

(declare-fun m!6463432 () Bool)

(assert (=> b!5442968 m!6463432))

(assert (=> b!5442968 m!6463430))

(assert (=> b!5442968 m!6463432))

(declare-fun m!6463434 () Bool)

(assert (=> b!5442968 m!6463434))

(assert (=> b!5442749 d!1733447))

(declare-fun d!1733465 () Bool)

(declare-fun c!949914 () Bool)

(assert (=> d!1733465 (= c!949914 (isEmpty!33954 (t!375317 s!2326)))))

(declare-fun e!3371660 () Bool)

(assert (=> d!1733465 (= (matchZipper!1507 lt!2219294 (t!375317 s!2326)) e!3371660)))

(declare-fun b!5442985 () Bool)

(assert (=> b!5442985 (= e!3371660 (nullableZipper!1478 lt!2219294))))

(declare-fun b!5442987 () Bool)

(assert (=> b!5442987 (= e!3371660 (matchZipper!1507 (derivationStepZipper!1492 lt!2219294 (head!11674 (t!375317 s!2326))) (tail!10771 (t!375317 s!2326))))))

(assert (= (and d!1733465 c!949914) b!5442985))

(assert (= (and d!1733465 (not c!949914)) b!5442987))

(declare-fun m!6463436 () Bool)

(assert (=> d!1733465 m!6463436))

(declare-fun m!6463438 () Bool)

(assert (=> b!5442985 m!6463438))

(declare-fun m!6463440 () Bool)

(assert (=> b!5442987 m!6463440))

(assert (=> b!5442987 m!6463440))

(declare-fun m!6463442 () Bool)

(assert (=> b!5442987 m!6463442))

(declare-fun m!6463444 () Bool)

(assert (=> b!5442987 m!6463444))

(assert (=> b!5442987 m!6463442))

(assert (=> b!5442987 m!6463444))

(declare-fun m!6463446 () Bool)

(assert (=> b!5442987 m!6463446))

(assert (=> b!5442749 d!1733465))

(declare-fun d!1733467 () Bool)

(declare-fun c!949915 () Bool)

(assert (=> d!1733467 (= c!949915 (isEmpty!33954 (t!375317 s!2326)))))

(declare-fun e!3371661 () Bool)

(assert (=> d!1733467 (= (matchZipper!1507 lt!2219296 (t!375317 s!2326)) e!3371661)))

(declare-fun b!5442989 () Bool)

(assert (=> b!5442989 (= e!3371661 (nullableZipper!1478 lt!2219296))))

(declare-fun b!5442990 () Bool)

(assert (=> b!5442990 (= e!3371661 (matchZipper!1507 (derivationStepZipper!1492 lt!2219296 (head!11674 (t!375317 s!2326))) (tail!10771 (t!375317 s!2326))))))

(assert (= (and d!1733467 c!949915) b!5442989))

(assert (= (and d!1733467 (not c!949915)) b!5442990))

(assert (=> d!1733467 m!6463436))

(declare-fun m!6463448 () Bool)

(assert (=> b!5442989 m!6463448))

(assert (=> b!5442990 m!6463440))

(assert (=> b!5442990 m!6463440))

(declare-fun m!6463450 () Bool)

(assert (=> b!5442990 m!6463450))

(assert (=> b!5442990 m!6463444))

(assert (=> b!5442990 m!6463450))

(assert (=> b!5442990 m!6463444))

(declare-fun m!6463452 () Bool)

(assert (=> b!5442990 m!6463452))

(assert (=> b!5442749 d!1733467))

(declare-fun d!1733469 () Bool)

(declare-fun e!3371683 () Bool)

(assert (=> d!1733469 (= (matchZipper!1507 ((_ map or) lt!2219284 lt!2219294) (t!375317 s!2326)) e!3371683)))

(declare-fun res!2317294 () Bool)

(assert (=> d!1733469 (=> res!2317294 e!3371683)))

(assert (=> d!1733469 (= res!2317294 (matchZipper!1507 lt!2219284 (t!375317 s!2326)))))

(declare-fun lt!2219346 () Unit!154594)

(declare-fun choose!41300 ((InoxSet Context!9294) (InoxSet Context!9294) List!62090) Unit!154594)

(assert (=> d!1733469 (= lt!2219346 (choose!41300 lt!2219284 lt!2219294 (t!375317 s!2326)))))

(assert (=> d!1733469 (= (lemmaZipperConcatMatchesSameAsBothZippers!500 lt!2219284 lt!2219294 (t!375317 s!2326)) lt!2219346)))

(declare-fun b!5443022 () Bool)

(assert (=> b!5443022 (= e!3371683 (matchZipper!1507 lt!2219294 (t!375317 s!2326)))))

(assert (= (and d!1733469 (not res!2317294)) b!5443022))

(assert (=> d!1733469 m!6463186))

(assert (=> d!1733469 m!6463184))

(declare-fun m!6463460 () Bool)

(assert (=> d!1733469 m!6463460))

(assert (=> b!5443022 m!6463222))

(assert (=> b!5442749 d!1733469))

(declare-fun d!1733473 () Bool)

(declare-fun e!3371695 () Bool)

(assert (=> d!1733473 e!3371695))

(declare-fun res!2317299 () Bool)

(assert (=> d!1733473 (=> (not res!2317299) (not e!3371695))))

(declare-fun lt!2219353 () List!62089)

(declare-fun noDuplicate!1428 (List!62089) Bool)

(assert (=> d!1733473 (= res!2317299 (noDuplicate!1428 lt!2219353))))

(declare-fun choose!41301 ((InoxSet Context!9294)) List!62089)

(assert (=> d!1733473 (= lt!2219353 (choose!41301 z!1189))))

(assert (=> d!1733473 (= (toList!9047 z!1189) lt!2219353)))

(declare-fun b!5443041 () Bool)

(declare-fun content!11147 (List!62089) (InoxSet Context!9294))

(assert (=> b!5443041 (= e!3371695 (= (content!11147 lt!2219353) z!1189))))

(assert (= (and d!1733473 res!2317299) b!5443041))

(declare-fun m!6463482 () Bool)

(assert (=> d!1733473 m!6463482))

(declare-fun m!6463484 () Bool)

(assert (=> d!1733473 m!6463484))

(declare-fun m!6463486 () Bool)

(assert (=> b!5443041 m!6463486))

(assert (=> b!5442760 d!1733473))

(declare-fun bs!1256090 () Bool)

(declare-fun d!1733477 () Bool)

(assert (= bs!1256090 (and d!1733477 b!5442745)))

(declare-fun lambda!286503 () Int)

(assert (=> bs!1256090 (= lambda!286503 lambda!286467)))

(declare-fun bs!1256092 () Bool)

(assert (= bs!1256092 (and d!1733477 d!1733429)))

(assert (=> bs!1256092 (= lambda!286503 lambda!286476)))

(assert (=> d!1733477 true))

(assert (=> d!1733477 (= (derivationStepZipper!1492 lt!2219287 (h!68414 s!2326)) (flatMap!990 lt!2219287 lambda!286503))))

(declare-fun bs!1256093 () Bool)

(assert (= bs!1256093 d!1733477))

(declare-fun m!6463494 () Bool)

(assert (=> bs!1256093 m!6463494))

(assert (=> b!5442766 d!1733477))

(declare-fun d!1733483 () Bool)

(declare-fun choose!41302 ((InoxSet Context!9294) Int) (InoxSet Context!9294))

(assert (=> d!1733483 (= (flatMap!990 lt!2219287 lambda!286467) (choose!41302 lt!2219287 lambda!286467))))

(declare-fun bs!1256099 () Bool)

(assert (= bs!1256099 d!1733483))

(declare-fun m!6463512 () Bool)

(assert (=> bs!1256099 m!6463512))

(assert (=> b!5442766 d!1733483))

(declare-fun b!5443113 () Bool)

(declare-fun e!3371736 () (InoxSet Context!9294))

(declare-fun e!3371738 () (InoxSet Context!9294))

(assert (=> b!5443113 (= e!3371736 e!3371738)))

(declare-fun c!949953 () Bool)

(assert (=> b!5443113 (= c!949953 ((_ is Cons!61964) (exprs!5147 lt!2219298)))))

(declare-fun d!1733489 () Bool)

(declare-fun c!949952 () Bool)

(declare-fun e!3371737 () Bool)

(assert (=> d!1733489 (= c!949952 e!3371737)))

(declare-fun res!2317333 () Bool)

(assert (=> d!1733489 (=> (not res!2317333) (not e!3371737))))

(assert (=> d!1733489 (= res!2317333 ((_ is Cons!61964) (exprs!5147 lt!2219298)))))

(assert (=> d!1733489 (= (derivationStepZipperUp!635 lt!2219298 (h!68414 s!2326)) e!3371736)))

(declare-fun b!5443114 () Bool)

(declare-fun call!390427 () (InoxSet Context!9294))

(assert (=> b!5443114 (= e!3371738 call!390427)))

(declare-fun b!5443115 () Bool)

(assert (=> b!5443115 (= e!3371736 ((_ map or) call!390427 (derivationStepZipperUp!635 (Context!9295 (t!375315 (exprs!5147 lt!2219298))) (h!68414 s!2326))))))

(declare-fun b!5443116 () Bool)

(assert (=> b!5443116 (= e!3371738 ((as const (Array Context!9294 Bool)) false))))

(declare-fun bm!390422 () Bool)

(assert (=> bm!390422 (= call!390427 (derivationStepZipperDown!711 (h!68412 (exprs!5147 lt!2219298)) (Context!9295 (t!375315 (exprs!5147 lt!2219298))) (h!68414 s!2326)))))

(declare-fun b!5443117 () Bool)

(assert (=> b!5443117 (= e!3371737 (nullable!5432 (h!68412 (exprs!5147 lt!2219298))))))

(assert (= (and d!1733489 res!2317333) b!5443117))

(assert (= (and d!1733489 c!949952) b!5443115))

(assert (= (and d!1733489 (not c!949952)) b!5443113))

(assert (= (and b!5443113 c!949953) b!5443114))

(assert (= (and b!5443113 (not c!949953)) b!5443116))

(assert (= (or b!5443115 b!5443114) bm!390422))

(declare-fun m!6463536 () Bool)

(assert (=> b!5443115 m!6463536))

(declare-fun m!6463538 () Bool)

(assert (=> bm!390422 m!6463538))

(declare-fun m!6463540 () Bool)

(assert (=> b!5443117 m!6463540))

(assert (=> b!5442766 d!1733489))

(declare-fun d!1733493 () Bool)

(declare-fun dynLambda!24387 (Int Context!9294) (InoxSet Context!9294))

(assert (=> d!1733493 (= (flatMap!990 lt!2219287 lambda!286467) (dynLambda!24387 lambda!286467 lt!2219298))))

(declare-fun lt!2219363 () Unit!154594)

(declare-fun choose!41303 ((InoxSet Context!9294) Context!9294 Int) Unit!154594)

(assert (=> d!1733493 (= lt!2219363 (choose!41303 lt!2219287 lt!2219298 lambda!286467))))

(assert (=> d!1733493 (= lt!2219287 (store ((as const (Array Context!9294 Bool)) false) lt!2219298 true))))

(assert (=> d!1733493 (= (lemmaFlatMapOnSingletonSet!522 lt!2219287 lt!2219298 lambda!286467) lt!2219363)))

(declare-fun b_lambda!207473 () Bool)

(assert (=> (not b_lambda!207473) (not d!1733493)))

(declare-fun bs!1256102 () Bool)

(assert (= bs!1256102 d!1733493))

(assert (=> bs!1256102 m!6463214))

(declare-fun m!6463552 () Bool)

(assert (=> bs!1256102 m!6463552))

(declare-fun m!6463554 () Bool)

(assert (=> bs!1256102 m!6463554))

(assert (=> bs!1256102 m!6463210))

(assert (=> b!5442766 d!1733493))

(declare-fun b!5443210 () Bool)

(declare-fun e!3371795 () (InoxSet Context!9294))

(declare-fun call!390452 () (InoxSet Context!9294))

(assert (=> b!5443210 (= e!3371795 call!390452)))

(declare-fun b!5443211 () Bool)

(declare-fun c!949988 () Bool)

(assert (=> b!5443211 (= c!949988 ((_ is Star!15263) (h!68412 (exprs!5147 (h!68413 zl!343)))))))

(declare-fun e!3371792 () (InoxSet Context!9294))

(assert (=> b!5443211 (= e!3371795 e!3371792)))

(declare-fun b!5443212 () Bool)

(assert (=> b!5443212 (= e!3371792 ((as const (Array Context!9294 Bool)) false))))

(declare-fun b!5443213 () Bool)

(declare-fun e!3371794 () Bool)

(assert (=> b!5443213 (= e!3371794 (nullable!5432 (regOne!31038 (h!68412 (exprs!5147 (h!68413 zl!343))))))))

(declare-fun bm!390444 () Bool)

(declare-fun call!390450 () (InoxSet Context!9294))

(assert (=> bm!390444 (= call!390452 call!390450)))

(declare-fun b!5443214 () Bool)

(assert (=> b!5443214 (= e!3371792 call!390452)))

(declare-fun b!5443215 () Bool)

(declare-fun e!3371793 () (InoxSet Context!9294))

(assert (=> b!5443215 (= e!3371793 e!3371795)))

(declare-fun c!949986 () Bool)

(assert (=> b!5443215 (= c!949986 ((_ is Concat!24108) (h!68412 (exprs!5147 (h!68413 zl!343)))))))

(declare-fun call!390453 () List!62088)

(declare-fun c!949984 () Bool)

(declare-fun bm!390445 () Bool)

(declare-fun call!390449 () (InoxSet Context!9294))

(assert (=> bm!390445 (= call!390449 (derivationStepZipperDown!711 (ite c!949984 (regOne!31039 (h!68412 (exprs!5147 (h!68413 zl!343)))) (regOne!31038 (h!68412 (exprs!5147 (h!68413 zl!343))))) (ite c!949984 lt!2219298 (Context!9295 call!390453)) (h!68414 s!2326)))))

(declare-fun b!5443216 () Bool)

(assert (=> b!5443216 (= e!3371793 ((_ map or) call!390449 call!390450))))

(declare-fun b!5443217 () Bool)

(declare-fun e!3371796 () (InoxSet Context!9294))

(declare-fun e!3371791 () (InoxSet Context!9294))

(assert (=> b!5443217 (= e!3371796 e!3371791)))

(assert (=> b!5443217 (= c!949984 ((_ is Union!15263) (h!68412 (exprs!5147 (h!68413 zl!343)))))))

(declare-fun c!949987 () Bool)

(declare-fun bm!390446 () Bool)

(declare-fun $colon$colon!1528 (List!62088 Regex!15263) List!62088)

(assert (=> bm!390446 (= call!390453 ($colon$colon!1528 (exprs!5147 lt!2219298) (ite (or c!949987 c!949986) (regTwo!31038 (h!68412 (exprs!5147 (h!68413 zl!343)))) (h!68412 (exprs!5147 (h!68413 zl!343))))))))

(declare-fun bm!390447 () Bool)

(declare-fun call!390454 () (InoxSet Context!9294))

(declare-fun call!390451 () List!62088)

(assert (=> bm!390447 (= call!390454 (derivationStepZipperDown!711 (ite c!949984 (regTwo!31039 (h!68412 (exprs!5147 (h!68413 zl!343)))) (ite c!949987 (regTwo!31038 (h!68412 (exprs!5147 (h!68413 zl!343)))) (ite c!949986 (regOne!31038 (h!68412 (exprs!5147 (h!68413 zl!343)))) (reg!15592 (h!68412 (exprs!5147 (h!68413 zl!343))))))) (ite (or c!949984 c!949987) lt!2219298 (Context!9295 call!390451)) (h!68414 s!2326)))))

(declare-fun d!1733501 () Bool)

(declare-fun c!949985 () Bool)

(assert (=> d!1733501 (= c!949985 (and ((_ is ElementMatch!15263) (h!68412 (exprs!5147 (h!68413 zl!343)))) (= (c!949839 (h!68412 (exprs!5147 (h!68413 zl!343)))) (h!68414 s!2326))))))

(assert (=> d!1733501 (= (derivationStepZipperDown!711 (h!68412 (exprs!5147 (h!68413 zl!343))) lt!2219298 (h!68414 s!2326)) e!3371796)))

(declare-fun b!5443218 () Bool)

(assert (=> b!5443218 (= c!949987 e!3371794)))

(declare-fun res!2317366 () Bool)

(assert (=> b!5443218 (=> (not res!2317366) (not e!3371794))))

(assert (=> b!5443218 (= res!2317366 ((_ is Concat!24108) (h!68412 (exprs!5147 (h!68413 zl!343)))))))

(assert (=> b!5443218 (= e!3371791 e!3371793)))

(declare-fun b!5443219 () Bool)

(assert (=> b!5443219 (= e!3371796 (store ((as const (Array Context!9294 Bool)) false) lt!2219298 true))))

(declare-fun b!5443220 () Bool)

(assert (=> b!5443220 (= e!3371791 ((_ map or) call!390449 call!390454))))

(declare-fun bm!390448 () Bool)

(assert (=> bm!390448 (= call!390450 call!390454)))

(declare-fun bm!390449 () Bool)

(assert (=> bm!390449 (= call!390451 call!390453)))

(assert (= (and d!1733501 c!949985) b!5443219))

(assert (= (and d!1733501 (not c!949985)) b!5443217))

(assert (= (and b!5443217 c!949984) b!5443220))

(assert (= (and b!5443217 (not c!949984)) b!5443218))

(assert (= (and b!5443218 res!2317366) b!5443213))

(assert (= (and b!5443218 c!949987) b!5443216))

(assert (= (and b!5443218 (not c!949987)) b!5443215))

(assert (= (and b!5443215 c!949986) b!5443210))

(assert (= (and b!5443215 (not c!949986)) b!5443211))

(assert (= (and b!5443211 c!949988) b!5443214))

(assert (= (and b!5443211 (not c!949988)) b!5443212))

(assert (= (or b!5443210 b!5443214) bm!390449))

(assert (= (or b!5443210 b!5443214) bm!390444))

(assert (= (or b!5443216 bm!390449) bm!390446))

(assert (= (or b!5443216 bm!390444) bm!390448))

(assert (= (or b!5443220 bm!390448) bm!390447))

(assert (= (or b!5443220 b!5443216) bm!390445))

(declare-fun m!6463578 () Bool)

(assert (=> bm!390445 m!6463578))

(declare-fun m!6463580 () Bool)

(assert (=> bm!390446 m!6463580))

(declare-fun m!6463582 () Bool)

(assert (=> b!5443213 m!6463582))

(declare-fun m!6463584 () Bool)

(assert (=> bm!390447 m!6463584))

(assert (=> b!5443219 m!6463210))

(assert (=> b!5442745 d!1733501))

(declare-fun d!1733515 () Bool)

(declare-fun nullableFct!1629 (Regex!15263) Bool)

(assert (=> d!1733515 (= (nullable!5432 (h!68412 (exprs!5147 (h!68413 zl!343)))) (nullableFct!1629 (h!68412 (exprs!5147 (h!68413 zl!343)))))))

(declare-fun bs!1256123 () Bool)

(assert (= bs!1256123 d!1733515))

(declare-fun m!6463592 () Bool)

(assert (=> bs!1256123 m!6463592))

(assert (=> b!5442745 d!1733515))

(declare-fun b!5443246 () Bool)

(declare-fun e!3371811 () (InoxSet Context!9294))

(declare-fun e!3371813 () (InoxSet Context!9294))

(assert (=> b!5443246 (= e!3371811 e!3371813)))

(declare-fun c!949997 () Bool)

(assert (=> b!5443246 (= c!949997 ((_ is Cons!61964) (exprs!5147 (Context!9295 (Cons!61964 (h!68412 (exprs!5147 (h!68413 zl!343))) (t!375315 (exprs!5147 (h!68413 zl!343))))))))))

(declare-fun d!1733519 () Bool)

(declare-fun c!949996 () Bool)

(declare-fun e!3371812 () Bool)

(assert (=> d!1733519 (= c!949996 e!3371812)))

(declare-fun res!2317378 () Bool)

(assert (=> d!1733519 (=> (not res!2317378) (not e!3371812))))

(assert (=> d!1733519 (= res!2317378 ((_ is Cons!61964) (exprs!5147 (Context!9295 (Cons!61964 (h!68412 (exprs!5147 (h!68413 zl!343))) (t!375315 (exprs!5147 (h!68413 zl!343))))))))))

(assert (=> d!1733519 (= (derivationStepZipperUp!635 (Context!9295 (Cons!61964 (h!68412 (exprs!5147 (h!68413 zl!343))) (t!375315 (exprs!5147 (h!68413 zl!343))))) (h!68414 s!2326)) e!3371811)))

(declare-fun b!5443247 () Bool)

(declare-fun call!390458 () (InoxSet Context!9294))

(assert (=> b!5443247 (= e!3371813 call!390458)))

(declare-fun b!5443248 () Bool)

(assert (=> b!5443248 (= e!3371811 ((_ map or) call!390458 (derivationStepZipperUp!635 (Context!9295 (t!375315 (exprs!5147 (Context!9295 (Cons!61964 (h!68412 (exprs!5147 (h!68413 zl!343))) (t!375315 (exprs!5147 (h!68413 zl!343)))))))) (h!68414 s!2326))))))

(declare-fun b!5443249 () Bool)

(assert (=> b!5443249 (= e!3371813 ((as const (Array Context!9294 Bool)) false))))

(declare-fun bm!390453 () Bool)

(assert (=> bm!390453 (= call!390458 (derivationStepZipperDown!711 (h!68412 (exprs!5147 (Context!9295 (Cons!61964 (h!68412 (exprs!5147 (h!68413 zl!343))) (t!375315 (exprs!5147 (h!68413 zl!343))))))) (Context!9295 (t!375315 (exprs!5147 (Context!9295 (Cons!61964 (h!68412 (exprs!5147 (h!68413 zl!343))) (t!375315 (exprs!5147 (h!68413 zl!343)))))))) (h!68414 s!2326)))))

(declare-fun b!5443250 () Bool)

(assert (=> b!5443250 (= e!3371812 (nullable!5432 (h!68412 (exprs!5147 (Context!9295 (Cons!61964 (h!68412 (exprs!5147 (h!68413 zl!343))) (t!375315 (exprs!5147 (h!68413 zl!343)))))))))))

(assert (= (and d!1733519 res!2317378) b!5443250))

(assert (= (and d!1733519 c!949996) b!5443248))

(assert (= (and d!1733519 (not c!949996)) b!5443246))

(assert (= (and b!5443246 c!949997) b!5443247))

(assert (= (and b!5443246 (not c!949997)) b!5443249))

(assert (= (or b!5443248 b!5443247) bm!390453))

(declare-fun m!6463594 () Bool)

(assert (=> b!5443248 m!6463594))

(declare-fun m!6463596 () Bool)

(assert (=> bm!390453 m!6463596))

(declare-fun m!6463598 () Bool)

(assert (=> b!5443250 m!6463598))

(assert (=> b!5442745 d!1733519))

(declare-fun d!1733521 () Bool)

(assert (=> d!1733521 (= (flatMap!990 z!1189 lambda!286467) (choose!41302 z!1189 lambda!286467))))

(declare-fun bs!1256131 () Bool)

(assert (= bs!1256131 d!1733521))

(declare-fun m!6463600 () Bool)

(assert (=> bs!1256131 m!6463600))

(assert (=> b!5442745 d!1733521))

(assert (=> b!5442745 d!1733489))

(declare-fun d!1733523 () Bool)

(assert (=> d!1733523 (= (flatMap!990 z!1189 lambda!286467) (dynLambda!24387 lambda!286467 (h!68413 zl!343)))))

(declare-fun lt!2219370 () Unit!154594)

(assert (=> d!1733523 (= lt!2219370 (choose!41303 z!1189 (h!68413 zl!343) lambda!286467))))

(assert (=> d!1733523 (= z!1189 (store ((as const (Array Context!9294 Bool)) false) (h!68413 zl!343) true))))

(assert (=> d!1733523 (= (lemmaFlatMapOnSingletonSet!522 z!1189 (h!68413 zl!343) lambda!286467) lt!2219370)))

(declare-fun b_lambda!207475 () Bool)

(assert (=> (not b_lambda!207475) (not d!1733523)))

(declare-fun bs!1256133 () Bool)

(assert (= bs!1256133 d!1733523))

(assert (=> bs!1256133 m!6463228))

(declare-fun m!6463602 () Bool)

(assert (=> bs!1256133 m!6463602))

(declare-fun m!6463604 () Bool)

(assert (=> bs!1256133 m!6463604))

(declare-fun m!6463606 () Bool)

(assert (=> bs!1256133 m!6463606))

(assert (=> b!5442745 d!1733523))

(declare-fun b!5443251 () Bool)

(declare-fun e!3371814 () (InoxSet Context!9294))

(declare-fun e!3371816 () (InoxSet Context!9294))

(assert (=> b!5443251 (= e!3371814 e!3371816)))

(declare-fun c!949999 () Bool)

(assert (=> b!5443251 (= c!949999 ((_ is Cons!61964) (exprs!5147 (h!68413 zl!343))))))

(declare-fun d!1733525 () Bool)

(declare-fun c!949998 () Bool)

(declare-fun e!3371815 () Bool)

(assert (=> d!1733525 (= c!949998 e!3371815)))

(declare-fun res!2317379 () Bool)

(assert (=> d!1733525 (=> (not res!2317379) (not e!3371815))))

(assert (=> d!1733525 (= res!2317379 ((_ is Cons!61964) (exprs!5147 (h!68413 zl!343))))))

(assert (=> d!1733525 (= (derivationStepZipperUp!635 (h!68413 zl!343) (h!68414 s!2326)) e!3371814)))

(declare-fun b!5443252 () Bool)

(declare-fun call!390459 () (InoxSet Context!9294))

(assert (=> b!5443252 (= e!3371816 call!390459)))

(declare-fun b!5443253 () Bool)

(assert (=> b!5443253 (= e!3371814 ((_ map or) call!390459 (derivationStepZipperUp!635 (Context!9295 (t!375315 (exprs!5147 (h!68413 zl!343)))) (h!68414 s!2326))))))

(declare-fun b!5443254 () Bool)

(assert (=> b!5443254 (= e!3371816 ((as const (Array Context!9294 Bool)) false))))

(declare-fun bm!390454 () Bool)

(assert (=> bm!390454 (= call!390459 (derivationStepZipperDown!711 (h!68412 (exprs!5147 (h!68413 zl!343))) (Context!9295 (t!375315 (exprs!5147 (h!68413 zl!343)))) (h!68414 s!2326)))))

(declare-fun b!5443255 () Bool)

(assert (=> b!5443255 (= e!3371815 (nullable!5432 (h!68412 (exprs!5147 (h!68413 zl!343)))))))

(assert (= (and d!1733525 res!2317379) b!5443255))

(assert (= (and d!1733525 c!949998) b!5443253))

(assert (= (and d!1733525 (not c!949998)) b!5443251))

(assert (= (and b!5443251 c!949999) b!5443252))

(assert (= (and b!5443251 (not c!949999)) b!5443254))

(assert (= (or b!5443253 b!5443252) bm!390454))

(declare-fun m!6463608 () Bool)

(assert (=> b!5443253 m!6463608))

(declare-fun m!6463610 () Bool)

(assert (=> bm!390454 m!6463610))

(assert (=> b!5443255 m!6463232))

(assert (=> b!5442745 d!1733525))

(declare-fun d!1733527 () Bool)

(assert (=> d!1733527 (= (isEmpty!33951 (t!375316 zl!343)) ((_ is Nil!61965) (t!375316 zl!343)))))

(assert (=> b!5442767 d!1733527))

(declare-fun bs!1256145 () Bool)

(declare-fun b!5443362 () Bool)

(assert (= bs!1256145 (and b!5443362 b!5442763)))

(declare-fun lambda!286519 () Int)

(assert (=> bs!1256145 (not (= lambda!286519 lambda!286465))))

(assert (=> bs!1256145 (not (= lambda!286519 lambda!286466))))

(assert (=> b!5443362 true))

(assert (=> b!5443362 true))

(declare-fun bs!1256146 () Bool)

(declare-fun b!5443363 () Bool)

(assert (= bs!1256146 (and b!5443363 b!5442763)))

(declare-fun lambda!286520 () Int)

(assert (=> bs!1256146 (not (= lambda!286520 lambda!286465))))

(assert (=> bs!1256146 (= lambda!286520 lambda!286466)))

(declare-fun bs!1256147 () Bool)

(assert (= bs!1256147 (and b!5443363 b!5443362)))

(assert (=> bs!1256147 (not (= lambda!286520 lambda!286519))))

(assert (=> b!5443363 true))

(assert (=> b!5443363 true))

(declare-fun b!5443360 () Bool)

(declare-fun e!3371870 () Bool)

(assert (=> b!5443360 (= e!3371870 (matchRSpec!2366 (regTwo!31039 r!7292) s!2326))))

(declare-fun b!5443361 () Bool)

(declare-fun e!3371872 () Bool)

(assert (=> b!5443361 (= e!3371872 (= s!2326 (Cons!61966 (c!949839 r!7292) Nil!61966)))))

(declare-fun e!3371868 () Bool)

(declare-fun call!390465 () Bool)

(assert (=> b!5443362 (= e!3371868 call!390465)))

(declare-fun bm!390460 () Bool)

(declare-fun call!390466 () Bool)

(assert (=> bm!390460 (= call!390466 (isEmpty!33954 s!2326))))

(declare-fun bm!390461 () Bool)

(declare-fun c!950015 () Bool)

(assert (=> bm!390461 (= call!390465 (Exists!2444 (ite c!950015 lambda!286519 lambda!286520)))))

(declare-fun d!1733531 () Bool)

(declare-fun c!950013 () Bool)

(assert (=> d!1733531 (= c!950013 ((_ is EmptyExpr!15263) r!7292))))

(declare-fun e!3371867 () Bool)

(assert (=> d!1733531 (= (matchRSpec!2366 r!7292 s!2326) e!3371867)))

(declare-fun e!3371871 () Bool)

(assert (=> b!5443363 (= e!3371871 call!390465)))

(declare-fun b!5443364 () Bool)

(declare-fun e!3371873 () Bool)

(assert (=> b!5443364 (= e!3371873 e!3371870)))

(declare-fun res!2317405 () Bool)

(assert (=> b!5443364 (= res!2317405 (matchRSpec!2366 (regOne!31039 r!7292) s!2326))))

(assert (=> b!5443364 (=> res!2317405 e!3371870)))

(declare-fun b!5443365 () Bool)

(declare-fun e!3371869 () Bool)

(assert (=> b!5443365 (= e!3371867 e!3371869)))

(declare-fun res!2317404 () Bool)

(assert (=> b!5443365 (= res!2317404 (not ((_ is EmptyLang!15263) r!7292)))))

(assert (=> b!5443365 (=> (not res!2317404) (not e!3371869))))

(declare-fun b!5443366 () Bool)

(assert (=> b!5443366 (= e!3371867 call!390466)))

(declare-fun b!5443367 () Bool)

(declare-fun c!950014 () Bool)

(assert (=> b!5443367 (= c!950014 ((_ is ElementMatch!15263) r!7292))))

(assert (=> b!5443367 (= e!3371869 e!3371872)))

(declare-fun b!5443368 () Bool)

(declare-fun c!950016 () Bool)

(assert (=> b!5443368 (= c!950016 ((_ is Union!15263) r!7292))))

(assert (=> b!5443368 (= e!3371872 e!3371873)))

(declare-fun b!5443369 () Bool)

(declare-fun res!2317406 () Bool)

(assert (=> b!5443369 (=> res!2317406 e!3371868)))

(assert (=> b!5443369 (= res!2317406 call!390466)))

(assert (=> b!5443369 (= e!3371871 e!3371868)))

(declare-fun b!5443370 () Bool)

(assert (=> b!5443370 (= e!3371873 e!3371871)))

(assert (=> b!5443370 (= c!950015 ((_ is Star!15263) r!7292))))

(assert (= (and d!1733531 c!950013) b!5443366))

(assert (= (and d!1733531 (not c!950013)) b!5443365))

(assert (= (and b!5443365 res!2317404) b!5443367))

(assert (= (and b!5443367 c!950014) b!5443361))

(assert (= (and b!5443367 (not c!950014)) b!5443368))

(assert (= (and b!5443368 c!950016) b!5443364))

(assert (= (and b!5443368 (not c!950016)) b!5443370))

(assert (= (and b!5443364 (not res!2317405)) b!5443360))

(assert (= (and b!5443370 c!950015) b!5443369))

(assert (= (and b!5443370 (not c!950015)) b!5443363))

(assert (= (and b!5443369 (not res!2317406)) b!5443362))

(assert (= (or b!5443362 b!5443363) bm!390461))

(assert (= (or b!5443366 b!5443369) bm!390460))

(declare-fun m!6463646 () Bool)

(assert (=> b!5443360 m!6463646))

(assert (=> bm!390460 m!6463424))

(declare-fun m!6463648 () Bool)

(assert (=> bm!390461 m!6463648))

(declare-fun m!6463650 () Bool)

(assert (=> b!5443364 m!6463650))

(assert (=> b!5442746 d!1733531))

(declare-fun bm!390464 () Bool)

(declare-fun call!390469 () Bool)

(assert (=> bm!390464 (= call!390469 (isEmpty!33954 s!2326))))

(declare-fun b!5443399 () Bool)

(declare-fun res!2317424 () Bool)

(declare-fun e!3371893 () Bool)

(assert (=> b!5443399 (=> res!2317424 e!3371893)))

(assert (=> b!5443399 (= res!2317424 (not ((_ is ElementMatch!15263) r!7292)))))

(declare-fun e!3371888 () Bool)

(assert (=> b!5443399 (= e!3371888 e!3371893)))

(declare-fun b!5443400 () Bool)

(declare-fun res!2317430 () Bool)

(declare-fun e!3371889 () Bool)

(assert (=> b!5443400 (=> res!2317430 e!3371889)))

(assert (=> b!5443400 (= res!2317430 (not (isEmpty!33954 (tail!10771 s!2326))))))

(declare-fun b!5443401 () Bool)

(declare-fun e!3371894 () Bool)

(declare-fun derivativeStep!4299 (Regex!15263 C!30796) Regex!15263)

(assert (=> b!5443401 (= e!3371894 (matchR!7448 (derivativeStep!4299 r!7292 (head!11674 s!2326)) (tail!10771 s!2326)))))

(declare-fun b!5443402 () Bool)

(declare-fun e!3371891 () Bool)

(assert (=> b!5443402 (= e!3371891 e!3371889)))

(declare-fun res!2317426 () Bool)

(assert (=> b!5443402 (=> res!2317426 e!3371889)))

(assert (=> b!5443402 (= res!2317426 call!390469)))

(declare-fun b!5443404 () Bool)

(declare-fun e!3371890 () Bool)

(assert (=> b!5443404 (= e!3371890 (= (head!11674 s!2326) (c!949839 r!7292)))))

(declare-fun b!5443405 () Bool)

(declare-fun res!2317425 () Bool)

(assert (=> b!5443405 (=> (not res!2317425) (not e!3371890))))

(assert (=> b!5443405 (= res!2317425 (isEmpty!33954 (tail!10771 s!2326)))))

(declare-fun b!5443406 () Bool)

(declare-fun res!2317428 () Bool)

(assert (=> b!5443406 (=> res!2317428 e!3371893)))

(assert (=> b!5443406 (= res!2317428 e!3371890)))

(declare-fun res!2317423 () Bool)

(assert (=> b!5443406 (=> (not res!2317423) (not e!3371890))))

(declare-fun lt!2219378 () Bool)

(assert (=> b!5443406 (= res!2317423 lt!2219378)))

(declare-fun b!5443407 () Bool)

(assert (=> b!5443407 (= e!3371889 (not (= (head!11674 s!2326) (c!949839 r!7292))))))

(declare-fun b!5443408 () Bool)

(assert (=> b!5443408 (= e!3371894 (nullable!5432 r!7292))))

(declare-fun b!5443403 () Bool)

(declare-fun e!3371892 () Bool)

(assert (=> b!5443403 (= e!3371892 (= lt!2219378 call!390469))))

(declare-fun d!1733545 () Bool)

(assert (=> d!1733545 e!3371892))

(declare-fun c!950023 () Bool)

(assert (=> d!1733545 (= c!950023 ((_ is EmptyExpr!15263) r!7292))))

(assert (=> d!1733545 (= lt!2219378 e!3371894)))

(declare-fun c!950025 () Bool)

(assert (=> d!1733545 (= c!950025 (isEmpty!33954 s!2326))))

(assert (=> d!1733545 (validRegex!6999 r!7292)))

(assert (=> d!1733545 (= (matchR!7448 r!7292 s!2326) lt!2219378)))

(declare-fun b!5443409 () Bool)

(declare-fun res!2317427 () Bool)

(assert (=> b!5443409 (=> (not res!2317427) (not e!3371890))))

(assert (=> b!5443409 (= res!2317427 (not call!390469))))

(declare-fun b!5443410 () Bool)

(assert (=> b!5443410 (= e!3371892 e!3371888)))

(declare-fun c!950024 () Bool)

(assert (=> b!5443410 (= c!950024 ((_ is EmptyLang!15263) r!7292))))

(declare-fun b!5443411 () Bool)

(assert (=> b!5443411 (= e!3371888 (not lt!2219378))))

(declare-fun b!5443412 () Bool)

(assert (=> b!5443412 (= e!3371893 e!3371891)))

(declare-fun res!2317429 () Bool)

(assert (=> b!5443412 (=> (not res!2317429) (not e!3371891))))

(assert (=> b!5443412 (= res!2317429 (not lt!2219378))))

(assert (= (and d!1733545 c!950025) b!5443408))

(assert (= (and d!1733545 (not c!950025)) b!5443401))

(assert (= (and d!1733545 c!950023) b!5443403))

(assert (= (and d!1733545 (not c!950023)) b!5443410))

(assert (= (and b!5443410 c!950024) b!5443411))

(assert (= (and b!5443410 (not c!950024)) b!5443399))

(assert (= (and b!5443399 (not res!2317424)) b!5443406))

(assert (= (and b!5443406 res!2317423) b!5443409))

(assert (= (and b!5443409 res!2317427) b!5443405))

(assert (= (and b!5443405 res!2317425) b!5443404))

(assert (= (and b!5443406 (not res!2317428)) b!5443412))

(assert (= (and b!5443412 res!2317429) b!5443402))

(assert (= (and b!5443402 (not res!2317426)) b!5443400))

(assert (= (and b!5443400 (not res!2317430)) b!5443407))

(assert (= (or b!5443403 b!5443402 b!5443409) bm!390464))

(assert (=> b!5443405 m!6463432))

(assert (=> b!5443405 m!6463432))

(declare-fun m!6463652 () Bool)

(assert (=> b!5443405 m!6463652))

(assert (=> b!5443404 m!6463428))

(declare-fun m!6463654 () Bool)

(assert (=> b!5443408 m!6463654))

(assert (=> b!5443407 m!6463428))

(assert (=> d!1733545 m!6463424))

(assert (=> d!1733545 m!6463200))

(assert (=> b!5443401 m!6463428))

(assert (=> b!5443401 m!6463428))

(declare-fun m!6463656 () Bool)

(assert (=> b!5443401 m!6463656))

(assert (=> b!5443401 m!6463432))

(assert (=> b!5443401 m!6463656))

(assert (=> b!5443401 m!6463432))

(declare-fun m!6463658 () Bool)

(assert (=> b!5443401 m!6463658))

(assert (=> bm!390464 m!6463424))

(assert (=> b!5443400 m!6463432))

(assert (=> b!5443400 m!6463432))

(assert (=> b!5443400 m!6463652))

(assert (=> b!5442746 d!1733545))

(declare-fun d!1733547 () Bool)

(assert (=> d!1733547 (= (matchR!7448 r!7292 s!2326) (matchRSpec!2366 r!7292 s!2326))))

(declare-fun lt!2219381 () Unit!154594)

(declare-fun choose!41306 (Regex!15263 List!62090) Unit!154594)

(assert (=> d!1733547 (= lt!2219381 (choose!41306 r!7292 s!2326))))

(assert (=> d!1733547 (validRegex!6999 r!7292)))

(assert (=> d!1733547 (= (mainMatchTheorem!2366 r!7292 s!2326) lt!2219381)))

(declare-fun bs!1256148 () Bool)

(assert (= bs!1256148 d!1733547))

(assert (=> bs!1256148 m!6463256))

(assert (=> bs!1256148 m!6463254))

(declare-fun m!6463660 () Bool)

(assert (=> bs!1256148 m!6463660))

(assert (=> bs!1256148 m!6463200))

(assert (=> b!5442746 d!1733547))

(declare-fun d!1733549 () Bool)

(assert (=> d!1733549 (= (nullable!5432 (regOne!31038 (regOne!31038 r!7292))) (nullableFct!1629 (regOne!31038 (regOne!31038 r!7292))))))

(declare-fun bs!1256149 () Bool)

(assert (= bs!1256149 d!1733549))

(declare-fun m!6463662 () Bool)

(assert (=> bs!1256149 m!6463662))

(assert (=> b!5442757 d!1733549))

(declare-fun bm!390471 () Bool)

(declare-fun call!390476 () Bool)

(declare-fun c!950030 () Bool)

(assert (=> bm!390471 (= call!390476 (validRegex!6999 (ite c!950030 (regTwo!31039 r!7292) (regTwo!31038 r!7292))))))

(declare-fun b!5443431 () Bool)

(declare-fun e!3371910 () Bool)

(declare-fun e!3371909 () Bool)

(assert (=> b!5443431 (= e!3371910 e!3371909)))

(declare-fun c!950031 () Bool)

(assert (=> b!5443431 (= c!950031 ((_ is Star!15263) r!7292))))

(declare-fun d!1733551 () Bool)

(declare-fun res!2317444 () Bool)

(assert (=> d!1733551 (=> res!2317444 e!3371910)))

(assert (=> d!1733551 (= res!2317444 ((_ is ElementMatch!15263) r!7292))))

(assert (=> d!1733551 (= (validRegex!6999 r!7292) e!3371910)))

(declare-fun b!5443432 () Bool)

(declare-fun res!2317443 () Bool)

(declare-fun e!3371915 () Bool)

(assert (=> b!5443432 (=> (not res!2317443) (not e!3371915))))

(declare-fun call!390478 () Bool)

(assert (=> b!5443432 (= res!2317443 call!390478)))

(declare-fun e!3371912 () Bool)

(assert (=> b!5443432 (= e!3371912 e!3371915)))

(declare-fun b!5443433 () Bool)

(declare-fun e!3371913 () Bool)

(assert (=> b!5443433 (= e!3371913 call!390476)))

(declare-fun b!5443434 () Bool)

(declare-fun e!3371911 () Bool)

(assert (=> b!5443434 (= e!3371911 e!3371913)))

(declare-fun res!2317442 () Bool)

(assert (=> b!5443434 (=> (not res!2317442) (not e!3371913))))

(assert (=> b!5443434 (= res!2317442 call!390478)))

(declare-fun bm!390472 () Bool)

(declare-fun call!390477 () Bool)

(assert (=> bm!390472 (= call!390478 call!390477)))

(declare-fun b!5443435 () Bool)

(declare-fun e!3371914 () Bool)

(assert (=> b!5443435 (= e!3371914 call!390477)))

(declare-fun b!5443436 () Bool)

(declare-fun res!2317441 () Bool)

(assert (=> b!5443436 (=> res!2317441 e!3371911)))

(assert (=> b!5443436 (= res!2317441 (not ((_ is Concat!24108) r!7292)))))

(assert (=> b!5443436 (= e!3371912 e!3371911)))

(declare-fun b!5443437 () Bool)

(assert (=> b!5443437 (= e!3371909 e!3371912)))

(assert (=> b!5443437 (= c!950030 ((_ is Union!15263) r!7292))))

(declare-fun bm!390473 () Bool)

(assert (=> bm!390473 (= call!390477 (validRegex!6999 (ite c!950031 (reg!15592 r!7292) (ite c!950030 (regOne!31039 r!7292) (regOne!31038 r!7292)))))))

(declare-fun b!5443438 () Bool)

(assert (=> b!5443438 (= e!3371915 call!390476)))

(declare-fun b!5443439 () Bool)

(assert (=> b!5443439 (= e!3371909 e!3371914)))

(declare-fun res!2317445 () Bool)

(assert (=> b!5443439 (= res!2317445 (not (nullable!5432 (reg!15592 r!7292))))))

(assert (=> b!5443439 (=> (not res!2317445) (not e!3371914))))

(assert (= (and d!1733551 (not res!2317444)) b!5443431))

(assert (= (and b!5443431 c!950031) b!5443439))

(assert (= (and b!5443431 (not c!950031)) b!5443437))

(assert (= (and b!5443439 res!2317445) b!5443435))

(assert (= (and b!5443437 c!950030) b!5443432))

(assert (= (and b!5443437 (not c!950030)) b!5443436))

(assert (= (and b!5443432 res!2317443) b!5443438))

(assert (= (and b!5443436 (not res!2317441)) b!5443434))

(assert (= (and b!5443434 res!2317442) b!5443433))

(assert (= (or b!5443438 b!5443433) bm!390471))

(assert (= (or b!5443432 b!5443434) bm!390472))

(assert (= (or b!5443435 bm!390472) bm!390473))

(declare-fun m!6463664 () Bool)

(assert (=> bm!390471 m!6463664))

(declare-fun m!6463666 () Bool)

(assert (=> bm!390473 m!6463666))

(declare-fun m!6463668 () Bool)

(assert (=> b!5443439 m!6463668))

(assert (=> start!570742 d!1733551))

(declare-fun d!1733553 () Bool)

(declare-fun choose!41307 (Int) Bool)

(assert (=> d!1733553 (= (Exists!2444 lambda!286466) (choose!41307 lambda!286466))))

(declare-fun bs!1256150 () Bool)

(assert (= bs!1256150 d!1733553))

(declare-fun m!6463670 () Bool)

(assert (=> bs!1256150 m!6463670))

(assert (=> b!5442763 d!1733553))

(declare-fun bs!1256151 () Bool)

(declare-fun d!1733555 () Bool)

(assert (= bs!1256151 (and d!1733555 b!5442763)))

(declare-fun lambda!286523 () Int)

(assert (=> bs!1256151 (= lambda!286523 lambda!286465)))

(assert (=> bs!1256151 (not (= lambda!286523 lambda!286466))))

(declare-fun bs!1256152 () Bool)

(assert (= bs!1256152 (and d!1733555 b!5443362)))

(assert (=> bs!1256152 (not (= lambda!286523 lambda!286519))))

(declare-fun bs!1256153 () Bool)

(assert (= bs!1256153 (and d!1733555 b!5443363)))

(assert (=> bs!1256153 (not (= lambda!286523 lambda!286520))))

(assert (=> d!1733555 true))

(assert (=> d!1733555 true))

(assert (=> d!1733555 true))

(assert (=> d!1733555 (= (isDefined!12077 (findConcatSeparation!1788 (regOne!31038 r!7292) (regTwo!31038 r!7292) Nil!61966 s!2326 s!2326)) (Exists!2444 lambda!286523))))

(declare-fun lt!2219384 () Unit!154594)

(declare-fun choose!41308 (Regex!15263 Regex!15263 List!62090) Unit!154594)

(assert (=> d!1733555 (= lt!2219384 (choose!41308 (regOne!31038 r!7292) (regTwo!31038 r!7292) s!2326))))

(assert (=> d!1733555 (validRegex!6999 (regOne!31038 r!7292))))

(assert (=> d!1733555 (= (lemmaFindConcatSeparationEquivalentToExists!1552 (regOne!31038 r!7292) (regTwo!31038 r!7292) s!2326) lt!2219384)))

(declare-fun bs!1256154 () Bool)

(assert (= bs!1256154 d!1733555))

(declare-fun m!6463672 () Bool)

(assert (=> bs!1256154 m!6463672))

(assert (=> bs!1256154 m!6463188))

(assert (=> bs!1256154 m!6463190))

(declare-fun m!6463674 () Bool)

(assert (=> bs!1256154 m!6463674))

(assert (=> bs!1256154 m!6463188))

(declare-fun m!6463676 () Bool)

(assert (=> bs!1256154 m!6463676))

(assert (=> b!5442763 d!1733555))

(declare-fun b!5443462 () Bool)

(declare-fun e!3371928 () Option!15374)

(assert (=> b!5443462 (= e!3371928 (Some!15373 (tuple2!64925 Nil!61966 s!2326)))))

(declare-fun b!5443463 () Bool)

(declare-fun res!2317462 () Bool)

(declare-fun e!3371932 () Bool)

(assert (=> b!5443463 (=> (not res!2317462) (not e!3371932))))

(declare-fun lt!2219393 () Option!15374)

(declare-fun get!21369 (Option!15374) tuple2!64924)

(assert (=> b!5443463 (= res!2317462 (matchR!7448 (regTwo!31038 r!7292) (_2!35765 (get!21369 lt!2219393))))))

(declare-fun b!5443464 () Bool)

(declare-fun e!3371930 () Bool)

(assert (=> b!5443464 (= e!3371930 (matchR!7448 (regTwo!31038 r!7292) s!2326))))

(declare-fun b!5443465 () Bool)

(declare-fun e!3371931 () Bool)

(assert (=> b!5443465 (= e!3371931 (not (isDefined!12077 lt!2219393)))))

(declare-fun b!5443466 () Bool)

(declare-fun ++!13626 (List!62090 List!62090) List!62090)

(assert (=> b!5443466 (= e!3371932 (= (++!13626 (_1!35765 (get!21369 lt!2219393)) (_2!35765 (get!21369 lt!2219393))) s!2326))))

(declare-fun b!5443467 () Bool)

(declare-fun res!2317461 () Bool)

(assert (=> b!5443467 (=> (not res!2317461) (not e!3371932))))

(assert (=> b!5443467 (= res!2317461 (matchR!7448 (regOne!31038 r!7292) (_1!35765 (get!21369 lt!2219393))))))

(declare-fun b!5443468 () Bool)

(declare-fun e!3371929 () Option!15374)

(assert (=> b!5443468 (= e!3371928 e!3371929)))

(declare-fun c!950036 () Bool)

(assert (=> b!5443468 (= c!950036 ((_ is Nil!61966) s!2326))))

(declare-fun b!5443469 () Bool)

(assert (=> b!5443469 (= e!3371929 None!15373)))

(declare-fun b!5443470 () Bool)

(declare-fun lt!2219391 () Unit!154594)

(declare-fun lt!2219392 () Unit!154594)

(assert (=> b!5443470 (= lt!2219391 lt!2219392)))

(assert (=> b!5443470 (= (++!13626 (++!13626 Nil!61966 (Cons!61966 (h!68414 s!2326) Nil!61966)) (t!375317 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1873 (List!62090 C!30796 List!62090 List!62090) Unit!154594)

(assert (=> b!5443470 (= lt!2219392 (lemmaMoveElementToOtherListKeepsConcatEq!1873 Nil!61966 (h!68414 s!2326) (t!375317 s!2326) s!2326))))

(assert (=> b!5443470 (= e!3371929 (findConcatSeparation!1788 (regOne!31038 r!7292) (regTwo!31038 r!7292) (++!13626 Nil!61966 (Cons!61966 (h!68414 s!2326) Nil!61966)) (t!375317 s!2326) s!2326))))

(declare-fun d!1733557 () Bool)

(assert (=> d!1733557 e!3371931))

(declare-fun res!2317460 () Bool)

(assert (=> d!1733557 (=> res!2317460 e!3371931)))

(assert (=> d!1733557 (= res!2317460 e!3371932)))

(declare-fun res!2317464 () Bool)

(assert (=> d!1733557 (=> (not res!2317464) (not e!3371932))))

(assert (=> d!1733557 (= res!2317464 (isDefined!12077 lt!2219393))))

(assert (=> d!1733557 (= lt!2219393 e!3371928)))

(declare-fun c!950037 () Bool)

(assert (=> d!1733557 (= c!950037 e!3371930)))

(declare-fun res!2317463 () Bool)

(assert (=> d!1733557 (=> (not res!2317463) (not e!3371930))))

(assert (=> d!1733557 (= res!2317463 (matchR!7448 (regOne!31038 r!7292) Nil!61966))))

(assert (=> d!1733557 (validRegex!6999 (regOne!31038 r!7292))))

(assert (=> d!1733557 (= (findConcatSeparation!1788 (regOne!31038 r!7292) (regTwo!31038 r!7292) Nil!61966 s!2326 s!2326) lt!2219393)))

(assert (= (and d!1733557 res!2317463) b!5443464))

(assert (= (and d!1733557 c!950037) b!5443462))

(assert (= (and d!1733557 (not c!950037)) b!5443468))

(assert (= (and b!5443468 c!950036) b!5443469))

(assert (= (and b!5443468 (not c!950036)) b!5443470))

(assert (= (and d!1733557 res!2317464) b!5443467))

(assert (= (and b!5443467 res!2317461) b!5443463))

(assert (= (and b!5443463 res!2317462) b!5443466))

(assert (= (and d!1733557 (not res!2317460)) b!5443465))

(declare-fun m!6463678 () Bool)

(assert (=> b!5443463 m!6463678))

(declare-fun m!6463680 () Bool)

(assert (=> b!5443463 m!6463680))

(declare-fun m!6463682 () Bool)

(assert (=> b!5443470 m!6463682))

(assert (=> b!5443470 m!6463682))

(declare-fun m!6463684 () Bool)

(assert (=> b!5443470 m!6463684))

(declare-fun m!6463686 () Bool)

(assert (=> b!5443470 m!6463686))

(assert (=> b!5443470 m!6463682))

(declare-fun m!6463688 () Bool)

(assert (=> b!5443470 m!6463688))

(assert (=> b!5443466 m!6463678))

(declare-fun m!6463690 () Bool)

(assert (=> b!5443466 m!6463690))

(assert (=> b!5443464 m!6463240))

(declare-fun m!6463692 () Bool)

(assert (=> d!1733557 m!6463692))

(declare-fun m!6463694 () Bool)

(assert (=> d!1733557 m!6463694))

(assert (=> d!1733557 m!6463672))

(assert (=> b!5443465 m!6463692))

(assert (=> b!5443467 m!6463678))

(declare-fun m!6463696 () Bool)

(assert (=> b!5443467 m!6463696))

(assert (=> b!5442763 d!1733557))

(declare-fun d!1733559 () Bool)

(assert (=> d!1733559 (= (Exists!2444 lambda!286465) (choose!41307 lambda!286465))))

(declare-fun bs!1256155 () Bool)

(assert (= bs!1256155 d!1733559))

(declare-fun m!6463698 () Bool)

(assert (=> bs!1256155 m!6463698))

(assert (=> b!5442763 d!1733559))

(declare-fun bs!1256156 () Bool)

(declare-fun d!1733561 () Bool)

(assert (= bs!1256156 (and d!1733561 d!1733555)))

(declare-fun lambda!286528 () Int)

(assert (=> bs!1256156 (= lambda!286528 lambda!286523)))

(declare-fun bs!1256157 () Bool)

(assert (= bs!1256157 (and d!1733561 b!5443362)))

(assert (=> bs!1256157 (not (= lambda!286528 lambda!286519))))

(declare-fun bs!1256158 () Bool)

(assert (= bs!1256158 (and d!1733561 b!5443363)))

(assert (=> bs!1256158 (not (= lambda!286528 lambda!286520))))

(declare-fun bs!1256159 () Bool)

(assert (= bs!1256159 (and d!1733561 b!5442763)))

(assert (=> bs!1256159 (not (= lambda!286528 lambda!286466))))

(assert (=> bs!1256159 (= lambda!286528 lambda!286465)))

(assert (=> d!1733561 true))

(assert (=> d!1733561 true))

(assert (=> d!1733561 true))

(declare-fun lambda!286529 () Int)

(assert (=> bs!1256156 (not (= lambda!286529 lambda!286523))))

(assert (=> bs!1256157 (not (= lambda!286529 lambda!286519))))

(assert (=> bs!1256158 (= lambda!286529 lambda!286520)))

(assert (=> bs!1256159 (= lambda!286529 lambda!286466)))

(assert (=> bs!1256159 (not (= lambda!286529 lambda!286465))))

(declare-fun bs!1256160 () Bool)

(assert (= bs!1256160 d!1733561))

(assert (=> bs!1256160 (not (= lambda!286529 lambda!286528))))

(assert (=> d!1733561 true))

(assert (=> d!1733561 true))

(assert (=> d!1733561 true))

(assert (=> d!1733561 (= (Exists!2444 lambda!286528) (Exists!2444 lambda!286529))))

(declare-fun lt!2219396 () Unit!154594)

(declare-fun choose!41309 (Regex!15263 Regex!15263 List!62090) Unit!154594)

(assert (=> d!1733561 (= lt!2219396 (choose!41309 (regOne!31038 r!7292) (regTwo!31038 r!7292) s!2326))))

(assert (=> d!1733561 (validRegex!6999 (regOne!31038 r!7292))))

(assert (=> d!1733561 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1098 (regOne!31038 r!7292) (regTwo!31038 r!7292) s!2326) lt!2219396)))

(declare-fun m!6463700 () Bool)

(assert (=> bs!1256160 m!6463700))

(declare-fun m!6463702 () Bool)

(assert (=> bs!1256160 m!6463702))

(declare-fun m!6463704 () Bool)

(assert (=> bs!1256160 m!6463704))

(assert (=> bs!1256160 m!6463672))

(assert (=> b!5442763 d!1733561))

(declare-fun d!1733563 () Bool)

(declare-fun isEmpty!33955 (Option!15374) Bool)

(assert (=> d!1733563 (= (isDefined!12077 (findConcatSeparation!1788 (regOne!31038 r!7292) (regTwo!31038 r!7292) Nil!61966 s!2326 s!2326)) (not (isEmpty!33955 (findConcatSeparation!1788 (regOne!31038 r!7292) (regTwo!31038 r!7292) Nil!61966 s!2326 s!2326))))))

(declare-fun bs!1256161 () Bool)

(assert (= bs!1256161 d!1733563))

(assert (=> bs!1256161 m!6463188))

(declare-fun m!6463706 () Bool)

(assert (=> bs!1256161 m!6463706))

(assert (=> b!5442763 d!1733563))

(declare-fun bs!1256162 () Bool)

(declare-fun d!1733565 () Bool)

(assert (= bs!1256162 (and d!1733565 d!1733431)))

(declare-fun lambda!286532 () Int)

(assert (=> bs!1256162 (= lambda!286532 lambda!286482)))

(declare-fun bs!1256163 () Bool)

(assert (= bs!1256163 (and d!1733565 d!1733441)))

(assert (=> bs!1256163 (= lambda!286532 lambda!286491)))

(declare-fun e!3371953 () Bool)

(assert (=> d!1733565 e!3371953))

(declare-fun res!2317478 () Bool)

(assert (=> d!1733565 (=> (not res!2317478) (not e!3371953))))

(declare-fun lt!2219399 () Regex!15263)

(assert (=> d!1733565 (= res!2317478 (validRegex!6999 lt!2219399))))

(declare-fun e!3371954 () Regex!15263)

(assert (=> d!1733565 (= lt!2219399 e!3371954)))

(declare-fun c!950046 () Bool)

(declare-fun e!3371952 () Bool)

(assert (=> d!1733565 (= c!950046 e!3371952)))

(declare-fun res!2317477 () Bool)

(assert (=> d!1733565 (=> (not res!2317477) (not e!3371952))))

(assert (=> d!1733565 (= res!2317477 ((_ is Cons!61964) (exprs!5147 (h!68413 zl!343))))))

(assert (=> d!1733565 (forall!14578 (exprs!5147 (h!68413 zl!343)) lambda!286532)))

(assert (=> d!1733565 (= (generalisedConcat!932 (exprs!5147 (h!68413 zl!343))) lt!2219399)))

(declare-fun b!5443499 () Bool)

(declare-fun e!3371949 () Regex!15263)

(assert (=> b!5443499 (= e!3371949 (Concat!24108 (h!68412 (exprs!5147 (h!68413 zl!343))) (generalisedConcat!932 (t!375315 (exprs!5147 (h!68413 zl!343))))))))

(declare-fun b!5443500 () Bool)

(declare-fun e!3371950 () Bool)

(declare-fun isEmptyExpr!1010 (Regex!15263) Bool)

(assert (=> b!5443500 (= e!3371950 (isEmptyExpr!1010 lt!2219399))))

(declare-fun b!5443501 () Bool)

(assert (=> b!5443501 (= e!3371952 (isEmpty!33950 (t!375315 (exprs!5147 (h!68413 zl!343)))))))

(declare-fun b!5443502 () Bool)

(declare-fun e!3371951 () Bool)

(assert (=> b!5443502 (= e!3371950 e!3371951)))

(declare-fun c!950047 () Bool)

(assert (=> b!5443502 (= c!950047 (isEmpty!33950 (tail!10770 (exprs!5147 (h!68413 zl!343)))))))

(declare-fun b!5443503 () Bool)

(declare-fun isConcat!533 (Regex!15263) Bool)

(assert (=> b!5443503 (= e!3371951 (isConcat!533 lt!2219399))))

(declare-fun b!5443504 () Bool)

(assert (=> b!5443504 (= e!3371953 e!3371950)))

(declare-fun c!950048 () Bool)

(assert (=> b!5443504 (= c!950048 (isEmpty!33950 (exprs!5147 (h!68413 zl!343))))))

(declare-fun b!5443505 () Bool)

(assert (=> b!5443505 (= e!3371954 e!3371949)))

(declare-fun c!950049 () Bool)

(assert (=> b!5443505 (= c!950049 ((_ is Cons!61964) (exprs!5147 (h!68413 zl!343))))))

(declare-fun b!5443506 () Bool)

(assert (=> b!5443506 (= e!3371949 EmptyExpr!15263)))

(declare-fun b!5443507 () Bool)

(assert (=> b!5443507 (= e!3371954 (h!68412 (exprs!5147 (h!68413 zl!343))))))

(declare-fun b!5443508 () Bool)

(assert (=> b!5443508 (= e!3371951 (= lt!2219399 (head!11673 (exprs!5147 (h!68413 zl!343)))))))

(assert (= (and d!1733565 res!2317477) b!5443501))

(assert (= (and d!1733565 c!950046) b!5443507))

(assert (= (and d!1733565 (not c!950046)) b!5443505))

(assert (= (and b!5443505 c!950049) b!5443499))

(assert (= (and b!5443505 (not c!950049)) b!5443506))

(assert (= (and d!1733565 res!2317478) b!5443504))

(assert (= (and b!5443504 c!950048) b!5443500))

(assert (= (and b!5443504 (not c!950048)) b!5443502))

(assert (= (and b!5443502 c!950047) b!5443508))

(assert (= (and b!5443502 (not c!950047)) b!5443503))

(declare-fun m!6463708 () Bool)

(assert (=> b!5443502 m!6463708))

(assert (=> b!5443502 m!6463708))

(declare-fun m!6463710 () Bool)

(assert (=> b!5443502 m!6463710))

(declare-fun m!6463712 () Bool)

(assert (=> d!1733565 m!6463712))

(declare-fun m!6463714 () Bool)

(assert (=> d!1733565 m!6463714))

(declare-fun m!6463716 () Bool)

(assert (=> b!5443503 m!6463716))

(assert (=> b!5443499 m!6463180))

(assert (=> b!5443501 m!6463170))

(declare-fun m!6463718 () Bool)

(assert (=> b!5443500 m!6463718))

(declare-fun m!6463720 () Bool)

(assert (=> b!5443508 m!6463720))

(declare-fun m!6463722 () Bool)

(assert (=> b!5443504 m!6463722))

(assert (=> b!5442772 d!1733565))

(declare-fun d!1733567 () Bool)

(declare-fun c!950050 () Bool)

(assert (=> d!1733567 (= c!950050 (isEmpty!33954 (t!375317 s!2326)))))

(declare-fun e!3371955 () Bool)

(assert (=> d!1733567 (= (matchZipper!1507 lt!2219284 (t!375317 s!2326)) e!3371955)))

(declare-fun b!5443509 () Bool)

(assert (=> b!5443509 (= e!3371955 (nullableZipper!1478 lt!2219284))))

(declare-fun b!5443510 () Bool)

(assert (=> b!5443510 (= e!3371955 (matchZipper!1507 (derivationStepZipper!1492 lt!2219284 (head!11674 (t!375317 s!2326))) (tail!10771 (t!375317 s!2326))))))

(assert (= (and d!1733567 c!950050) b!5443509))

(assert (= (and d!1733567 (not c!950050)) b!5443510))

(assert (=> d!1733567 m!6463436))

(declare-fun m!6463724 () Bool)

(assert (=> b!5443509 m!6463724))

(assert (=> b!5443510 m!6463440))

(assert (=> b!5443510 m!6463440))

(declare-fun m!6463726 () Bool)

(assert (=> b!5443510 m!6463726))

(assert (=> b!5443510 m!6463444))

(assert (=> b!5443510 m!6463726))

(assert (=> b!5443510 m!6463444))

(declare-fun m!6463728 () Bool)

(assert (=> b!5443510 m!6463728))

(assert (=> b!5442753 d!1733567))

(declare-fun d!1733569 () Bool)

(assert (=> d!1733569 (not (matchZipper!1507 lt!2219284 (t!375317 s!2326)))))

(declare-fun lt!2219402 () Unit!154594)

(declare-fun choose!41310 ((InoxSet Context!9294) List!62090) Unit!154594)

(assert (=> d!1733569 (= lt!2219402 (choose!41310 lt!2219284 (t!375317 s!2326)))))

(assert (=> d!1733569 (= lt!2219284 ((as const (Array Context!9294 Bool)) false))))

(assert (=> d!1733569 (= (lemmaEmptyZipperMatchesNothing!18 lt!2219284 (t!375317 s!2326)) lt!2219402)))

(declare-fun bs!1256164 () Bool)

(assert (= bs!1256164 d!1733569))

(assert (=> bs!1256164 m!6463184))

(declare-fun m!6463730 () Bool)

(assert (=> bs!1256164 m!6463730))

(assert (=> b!5442753 d!1733569))

(assert (=> b!5442764 d!1733465))

(declare-fun bs!1256165 () Bool)

(declare-fun d!1733571 () Bool)

(assert (= bs!1256165 (and d!1733571 d!1733431)))

(declare-fun lambda!286535 () Int)

(assert (=> bs!1256165 (= lambda!286535 lambda!286482)))

(declare-fun bs!1256166 () Bool)

(assert (= bs!1256166 (and d!1733571 d!1733441)))

(assert (=> bs!1256166 (= lambda!286535 lambda!286491)))

(declare-fun bs!1256167 () Bool)

(assert (= bs!1256167 (and d!1733571 d!1733565)))

(assert (=> bs!1256167 (= lambda!286535 lambda!286532)))

(assert (=> d!1733571 (= (inv!81404 (h!68413 zl!343)) (forall!14578 (exprs!5147 (h!68413 zl!343)) lambda!286535))))

(declare-fun bs!1256168 () Bool)

(assert (= bs!1256168 d!1733571))

(declare-fun m!6463732 () Bool)

(assert (=> bs!1256168 m!6463732))

(assert (=> b!5442754 d!1733571))

(declare-fun d!1733573 () Bool)

(assert (=> d!1733573 (= (isEmpty!33950 (t!375315 (exprs!5147 (h!68413 zl!343)))) ((_ is Nil!61964) (t!375315 (exprs!5147 (h!68413 zl!343)))))))

(assert (=> b!5442744 d!1733573))

(assert (=> b!5442771 d!1733469))

(assert (=> b!5442771 d!1733567))

(declare-fun d!1733575 () Bool)

(declare-fun c!950051 () Bool)

(assert (=> d!1733575 (= c!950051 (isEmpty!33954 (t!375317 s!2326)))))

(declare-fun e!3371956 () Bool)

(assert (=> d!1733575 (= (matchZipper!1507 ((_ map or) lt!2219284 lt!2219294) (t!375317 s!2326)) e!3371956)))

(declare-fun b!5443511 () Bool)

(assert (=> b!5443511 (= e!3371956 (nullableZipper!1478 ((_ map or) lt!2219284 lt!2219294)))))

(declare-fun b!5443512 () Bool)

(assert (=> b!5443512 (= e!3371956 (matchZipper!1507 (derivationStepZipper!1492 ((_ map or) lt!2219284 lt!2219294) (head!11674 (t!375317 s!2326))) (tail!10771 (t!375317 s!2326))))))

(assert (= (and d!1733575 c!950051) b!5443511))

(assert (= (and d!1733575 (not c!950051)) b!5443512))

(assert (=> d!1733575 m!6463436))

(declare-fun m!6463734 () Bool)

(assert (=> b!5443511 m!6463734))

(assert (=> b!5443512 m!6463440))

(assert (=> b!5443512 m!6463440))

(declare-fun m!6463736 () Bool)

(assert (=> b!5443512 m!6463736))

(assert (=> b!5443512 m!6463444))

(assert (=> b!5443512 m!6463736))

(assert (=> b!5443512 m!6463444))

(declare-fun m!6463738 () Bool)

(assert (=> b!5443512 m!6463738))

(assert (=> b!5442771 d!1733575))

(declare-fun bm!390474 () Bool)

(declare-fun call!390479 () Bool)

(assert (=> bm!390474 (= call!390479 (isEmpty!33954 s!2326))))

(declare-fun b!5443513 () Bool)

(declare-fun res!2317480 () Bool)

(declare-fun e!3371962 () Bool)

(assert (=> b!5443513 (=> res!2317480 e!3371962)))

(assert (=> b!5443513 (= res!2317480 (not ((_ is ElementMatch!15263) lt!2219282)))))

(declare-fun e!3371957 () Bool)

(assert (=> b!5443513 (= e!3371957 e!3371962)))

(declare-fun b!5443514 () Bool)

(declare-fun res!2317486 () Bool)

(declare-fun e!3371958 () Bool)

(assert (=> b!5443514 (=> res!2317486 e!3371958)))

(assert (=> b!5443514 (= res!2317486 (not (isEmpty!33954 (tail!10771 s!2326))))))

(declare-fun b!5443515 () Bool)

(declare-fun e!3371963 () Bool)

(assert (=> b!5443515 (= e!3371963 (matchR!7448 (derivativeStep!4299 lt!2219282 (head!11674 s!2326)) (tail!10771 s!2326)))))

(declare-fun b!5443516 () Bool)

(declare-fun e!3371960 () Bool)

(assert (=> b!5443516 (= e!3371960 e!3371958)))

(declare-fun res!2317482 () Bool)

(assert (=> b!5443516 (=> res!2317482 e!3371958)))

(assert (=> b!5443516 (= res!2317482 call!390479)))

(declare-fun b!5443518 () Bool)

(declare-fun e!3371959 () Bool)

(assert (=> b!5443518 (= e!3371959 (= (head!11674 s!2326) (c!949839 lt!2219282)))))

(declare-fun b!5443519 () Bool)

(declare-fun res!2317481 () Bool)

(assert (=> b!5443519 (=> (not res!2317481) (not e!3371959))))

(assert (=> b!5443519 (= res!2317481 (isEmpty!33954 (tail!10771 s!2326)))))

(declare-fun b!5443520 () Bool)

(declare-fun res!2317484 () Bool)

(assert (=> b!5443520 (=> res!2317484 e!3371962)))

(assert (=> b!5443520 (= res!2317484 e!3371959)))

(declare-fun res!2317479 () Bool)

(assert (=> b!5443520 (=> (not res!2317479) (not e!3371959))))

(declare-fun lt!2219403 () Bool)

(assert (=> b!5443520 (= res!2317479 lt!2219403)))

(declare-fun b!5443521 () Bool)

(assert (=> b!5443521 (= e!3371958 (not (= (head!11674 s!2326) (c!949839 lt!2219282))))))

(declare-fun b!5443522 () Bool)

(assert (=> b!5443522 (= e!3371963 (nullable!5432 lt!2219282))))

(declare-fun b!5443517 () Bool)

(declare-fun e!3371961 () Bool)

(assert (=> b!5443517 (= e!3371961 (= lt!2219403 call!390479))))

(declare-fun d!1733577 () Bool)

(assert (=> d!1733577 e!3371961))

(declare-fun c!950052 () Bool)

(assert (=> d!1733577 (= c!950052 ((_ is EmptyExpr!15263) lt!2219282))))

(assert (=> d!1733577 (= lt!2219403 e!3371963)))

(declare-fun c!950054 () Bool)

(assert (=> d!1733577 (= c!950054 (isEmpty!33954 s!2326))))

(assert (=> d!1733577 (validRegex!6999 lt!2219282)))

(assert (=> d!1733577 (= (matchR!7448 lt!2219282 s!2326) lt!2219403)))

(declare-fun b!5443523 () Bool)

(declare-fun res!2317483 () Bool)

(assert (=> b!5443523 (=> (not res!2317483) (not e!3371959))))

(assert (=> b!5443523 (= res!2317483 (not call!390479))))

(declare-fun b!5443524 () Bool)

(assert (=> b!5443524 (= e!3371961 e!3371957)))

(declare-fun c!950053 () Bool)

(assert (=> b!5443524 (= c!950053 ((_ is EmptyLang!15263) lt!2219282))))

(declare-fun b!5443525 () Bool)

(assert (=> b!5443525 (= e!3371957 (not lt!2219403))))

(declare-fun b!5443526 () Bool)

(assert (=> b!5443526 (= e!3371962 e!3371960)))

(declare-fun res!2317485 () Bool)

(assert (=> b!5443526 (=> (not res!2317485) (not e!3371960))))

(assert (=> b!5443526 (= res!2317485 (not lt!2219403))))

(assert (= (and d!1733577 c!950054) b!5443522))

(assert (= (and d!1733577 (not c!950054)) b!5443515))

(assert (= (and d!1733577 c!950052) b!5443517))

(assert (= (and d!1733577 (not c!950052)) b!5443524))

(assert (= (and b!5443524 c!950053) b!5443525))

(assert (= (and b!5443524 (not c!950053)) b!5443513))

(assert (= (and b!5443513 (not res!2317480)) b!5443520))

(assert (= (and b!5443520 res!2317479) b!5443523))

(assert (= (and b!5443523 res!2317483) b!5443519))

(assert (= (and b!5443519 res!2317481) b!5443518))

(assert (= (and b!5443520 (not res!2317484)) b!5443526))

(assert (= (and b!5443526 res!2317485) b!5443516))

(assert (= (and b!5443516 (not res!2317482)) b!5443514))

(assert (= (and b!5443514 (not res!2317486)) b!5443521))

(assert (= (or b!5443517 b!5443516 b!5443523) bm!390474))

(assert (=> b!5443519 m!6463432))

(assert (=> b!5443519 m!6463432))

(assert (=> b!5443519 m!6463652))

(assert (=> b!5443518 m!6463428))

(declare-fun m!6463740 () Bool)

(assert (=> b!5443522 m!6463740))

(assert (=> b!5443521 m!6463428))

(assert (=> d!1733577 m!6463424))

(assert (=> d!1733577 m!6463174))

(assert (=> b!5443515 m!6463428))

(assert (=> b!5443515 m!6463428))

(declare-fun m!6463742 () Bool)

(assert (=> b!5443515 m!6463742))

(assert (=> b!5443515 m!6463432))

(assert (=> b!5443515 m!6463742))

(assert (=> b!5443515 m!6463432))

(declare-fun m!6463744 () Bool)

(assert (=> b!5443515 m!6463744))

(assert (=> bm!390474 m!6463424))

(assert (=> b!5443514 m!6463432))

(assert (=> b!5443514 m!6463432))

(assert (=> b!5443514 m!6463652))

(assert (=> b!5442761 d!1733577))

(declare-fun bm!390475 () Bool)

(declare-fun call!390480 () Bool)

(declare-fun c!950055 () Bool)

(assert (=> bm!390475 (= call!390480 (validRegex!6999 (ite c!950055 (regTwo!31039 lt!2219282) (regTwo!31038 lt!2219282))))))

(declare-fun b!5443527 () Bool)

(declare-fun e!3371965 () Bool)

(declare-fun e!3371964 () Bool)

(assert (=> b!5443527 (= e!3371965 e!3371964)))

(declare-fun c!950056 () Bool)

(assert (=> b!5443527 (= c!950056 ((_ is Star!15263) lt!2219282))))

(declare-fun d!1733579 () Bool)

(declare-fun res!2317490 () Bool)

(assert (=> d!1733579 (=> res!2317490 e!3371965)))

(assert (=> d!1733579 (= res!2317490 ((_ is ElementMatch!15263) lt!2219282))))

(assert (=> d!1733579 (= (validRegex!6999 lt!2219282) e!3371965)))

(declare-fun b!5443528 () Bool)

(declare-fun res!2317489 () Bool)

(declare-fun e!3371970 () Bool)

(assert (=> b!5443528 (=> (not res!2317489) (not e!3371970))))

(declare-fun call!390482 () Bool)

(assert (=> b!5443528 (= res!2317489 call!390482)))

(declare-fun e!3371967 () Bool)

(assert (=> b!5443528 (= e!3371967 e!3371970)))

(declare-fun b!5443529 () Bool)

(declare-fun e!3371968 () Bool)

(assert (=> b!5443529 (= e!3371968 call!390480)))

(declare-fun b!5443530 () Bool)

(declare-fun e!3371966 () Bool)

(assert (=> b!5443530 (= e!3371966 e!3371968)))

(declare-fun res!2317488 () Bool)

(assert (=> b!5443530 (=> (not res!2317488) (not e!3371968))))

(assert (=> b!5443530 (= res!2317488 call!390482)))

(declare-fun bm!390476 () Bool)

(declare-fun call!390481 () Bool)

(assert (=> bm!390476 (= call!390482 call!390481)))

(declare-fun b!5443531 () Bool)

(declare-fun e!3371969 () Bool)

(assert (=> b!5443531 (= e!3371969 call!390481)))

(declare-fun b!5443532 () Bool)

(declare-fun res!2317487 () Bool)

(assert (=> b!5443532 (=> res!2317487 e!3371966)))

(assert (=> b!5443532 (= res!2317487 (not ((_ is Concat!24108) lt!2219282)))))

(assert (=> b!5443532 (= e!3371967 e!3371966)))

(declare-fun b!5443533 () Bool)

(assert (=> b!5443533 (= e!3371964 e!3371967)))

(assert (=> b!5443533 (= c!950055 ((_ is Union!15263) lt!2219282))))

(declare-fun bm!390477 () Bool)

(assert (=> bm!390477 (= call!390481 (validRegex!6999 (ite c!950056 (reg!15592 lt!2219282) (ite c!950055 (regOne!31039 lt!2219282) (regOne!31038 lt!2219282)))))))

(declare-fun b!5443534 () Bool)

(assert (=> b!5443534 (= e!3371970 call!390480)))

(declare-fun b!5443535 () Bool)

(assert (=> b!5443535 (= e!3371964 e!3371969)))

(declare-fun res!2317491 () Bool)

(assert (=> b!5443535 (= res!2317491 (not (nullable!5432 (reg!15592 lt!2219282))))))

(assert (=> b!5443535 (=> (not res!2317491) (not e!3371969))))

(assert (= (and d!1733579 (not res!2317490)) b!5443527))

(assert (= (and b!5443527 c!950056) b!5443535))

(assert (= (and b!5443527 (not c!950056)) b!5443533))

(assert (= (and b!5443535 res!2317491) b!5443531))

(assert (= (and b!5443533 c!950055) b!5443528))

(assert (= (and b!5443533 (not c!950055)) b!5443532))

(assert (= (and b!5443528 res!2317489) b!5443534))

(assert (= (and b!5443532 (not res!2317487)) b!5443530))

(assert (= (and b!5443530 res!2317488) b!5443529))

(assert (= (or b!5443534 b!5443529) bm!390475))

(assert (= (or b!5443528 b!5443530) bm!390476))

(assert (= (or b!5443531 bm!390476) bm!390477))

(declare-fun m!6463746 () Bool)

(assert (=> bm!390475 m!6463746))

(declare-fun m!6463748 () Bool)

(assert (=> bm!390477 m!6463748))

(declare-fun m!6463750 () Bool)

(assert (=> b!5443535 m!6463750))

(assert (=> b!5442761 d!1733579))

(declare-fun d!1733581 () Bool)

(declare-fun c!950057 () Bool)

(assert (=> d!1733581 (= c!950057 (isEmpty!33954 s!2326))))

(declare-fun e!3371971 () Bool)

(assert (=> d!1733581 (= (matchZipper!1507 lt!2219287 s!2326) e!3371971)))

(declare-fun b!5443536 () Bool)

(assert (=> b!5443536 (= e!3371971 (nullableZipper!1478 lt!2219287))))

(declare-fun b!5443537 () Bool)

(assert (=> b!5443537 (= e!3371971 (matchZipper!1507 (derivationStepZipper!1492 lt!2219287 (head!11674 s!2326)) (tail!10771 s!2326)))))

(assert (= (and d!1733581 c!950057) b!5443536))

(assert (= (and d!1733581 (not c!950057)) b!5443537))

(assert (=> d!1733581 m!6463424))

(declare-fun m!6463752 () Bool)

(assert (=> b!5443536 m!6463752))

(assert (=> b!5443537 m!6463428))

(assert (=> b!5443537 m!6463428))

(declare-fun m!6463754 () Bool)

(assert (=> b!5443537 m!6463754))

(assert (=> b!5443537 m!6463432))

(assert (=> b!5443537 m!6463754))

(assert (=> b!5443537 m!6463432))

(declare-fun m!6463756 () Bool)

(assert (=> b!5443537 m!6463756))

(assert (=> b!5442761 d!1733581))

(declare-fun bs!1256169 () Bool)

(declare-fun d!1733583 () Bool)

(assert (= bs!1256169 (and d!1733583 d!1733431)))

(declare-fun lambda!286536 () Int)

(assert (=> bs!1256169 (= lambda!286536 lambda!286482)))

(declare-fun bs!1256170 () Bool)

(assert (= bs!1256170 (and d!1733583 d!1733441)))

(assert (=> bs!1256170 (= lambda!286536 lambda!286491)))

(declare-fun bs!1256171 () Bool)

(assert (= bs!1256171 (and d!1733583 d!1733565)))

(assert (=> bs!1256171 (= lambda!286536 lambda!286532)))

(declare-fun bs!1256172 () Bool)

(assert (= bs!1256172 (and d!1733583 d!1733571)))

(assert (=> bs!1256172 (= lambda!286536 lambda!286535)))

(declare-fun e!3371976 () Bool)

(assert (=> d!1733583 e!3371976))

(declare-fun res!2317493 () Bool)

(assert (=> d!1733583 (=> (not res!2317493) (not e!3371976))))

(declare-fun lt!2219404 () Regex!15263)

(assert (=> d!1733583 (= res!2317493 (validRegex!6999 lt!2219404))))

(declare-fun e!3371977 () Regex!15263)

(assert (=> d!1733583 (= lt!2219404 e!3371977)))

(declare-fun c!950058 () Bool)

(declare-fun e!3371975 () Bool)

(assert (=> d!1733583 (= c!950058 e!3371975)))

(declare-fun res!2317492 () Bool)

(assert (=> d!1733583 (=> (not res!2317492) (not e!3371975))))

(assert (=> d!1733583 (= res!2317492 ((_ is Cons!61964) (t!375315 (exprs!5147 (h!68413 zl!343)))))))

(assert (=> d!1733583 (forall!14578 (t!375315 (exprs!5147 (h!68413 zl!343))) lambda!286536)))

(assert (=> d!1733583 (= (generalisedConcat!932 (t!375315 (exprs!5147 (h!68413 zl!343)))) lt!2219404)))

(declare-fun b!5443538 () Bool)

(declare-fun e!3371972 () Regex!15263)

(assert (=> b!5443538 (= e!3371972 (Concat!24108 (h!68412 (t!375315 (exprs!5147 (h!68413 zl!343)))) (generalisedConcat!932 (t!375315 (t!375315 (exprs!5147 (h!68413 zl!343)))))))))

(declare-fun b!5443539 () Bool)

(declare-fun e!3371973 () Bool)

(assert (=> b!5443539 (= e!3371973 (isEmptyExpr!1010 lt!2219404))))

(declare-fun b!5443540 () Bool)

(assert (=> b!5443540 (= e!3371975 (isEmpty!33950 (t!375315 (t!375315 (exprs!5147 (h!68413 zl!343))))))))

(declare-fun b!5443541 () Bool)

(declare-fun e!3371974 () Bool)

(assert (=> b!5443541 (= e!3371973 e!3371974)))

(declare-fun c!950059 () Bool)

(assert (=> b!5443541 (= c!950059 (isEmpty!33950 (tail!10770 (t!375315 (exprs!5147 (h!68413 zl!343))))))))

(declare-fun b!5443542 () Bool)

(assert (=> b!5443542 (= e!3371974 (isConcat!533 lt!2219404))))

(declare-fun b!5443543 () Bool)

(assert (=> b!5443543 (= e!3371976 e!3371973)))

(declare-fun c!950060 () Bool)

(assert (=> b!5443543 (= c!950060 (isEmpty!33950 (t!375315 (exprs!5147 (h!68413 zl!343)))))))

(declare-fun b!5443544 () Bool)

(assert (=> b!5443544 (= e!3371977 e!3371972)))

(declare-fun c!950061 () Bool)

(assert (=> b!5443544 (= c!950061 ((_ is Cons!61964) (t!375315 (exprs!5147 (h!68413 zl!343)))))))

(declare-fun b!5443545 () Bool)

(assert (=> b!5443545 (= e!3371972 EmptyExpr!15263)))

(declare-fun b!5443546 () Bool)

(assert (=> b!5443546 (= e!3371977 (h!68412 (t!375315 (exprs!5147 (h!68413 zl!343)))))))

(declare-fun b!5443547 () Bool)

(assert (=> b!5443547 (= e!3371974 (= lt!2219404 (head!11673 (t!375315 (exprs!5147 (h!68413 zl!343))))))))

(assert (= (and d!1733583 res!2317492) b!5443540))

(assert (= (and d!1733583 c!950058) b!5443546))

(assert (= (and d!1733583 (not c!950058)) b!5443544))

(assert (= (and b!5443544 c!950061) b!5443538))

(assert (= (and b!5443544 (not c!950061)) b!5443545))

(assert (= (and d!1733583 res!2317493) b!5443543))

(assert (= (and b!5443543 c!950060) b!5443539))

(assert (= (and b!5443543 (not c!950060)) b!5443541))

(assert (= (and b!5443541 c!950059) b!5443547))

(assert (= (and b!5443541 (not c!950059)) b!5443542))

(declare-fun m!6463758 () Bool)

(assert (=> b!5443541 m!6463758))

(assert (=> b!5443541 m!6463758))

(declare-fun m!6463760 () Bool)

(assert (=> b!5443541 m!6463760))

(declare-fun m!6463762 () Bool)

(assert (=> d!1733583 m!6463762))

(declare-fun m!6463764 () Bool)

(assert (=> d!1733583 m!6463764))

(declare-fun m!6463766 () Bool)

(assert (=> b!5443542 m!6463766))

(declare-fun m!6463768 () Bool)

(assert (=> b!5443538 m!6463768))

(declare-fun m!6463770 () Bool)

(assert (=> b!5443540 m!6463770))

(declare-fun m!6463772 () Bool)

(assert (=> b!5443539 m!6463772))

(declare-fun m!6463774 () Bool)

(assert (=> b!5443547 m!6463774))

(assert (=> b!5443543 m!6463170))

(assert (=> b!5442761 d!1733583))

(declare-fun d!1733585 () Bool)

(assert (=> d!1733585 (= (matchR!7448 lt!2219282 s!2326) (matchZipper!1507 lt!2219287 s!2326))))

(declare-fun lt!2219407 () Unit!154594)

(declare-fun choose!41312 ((InoxSet Context!9294) List!62089 Regex!15263 List!62090) Unit!154594)

(assert (=> d!1733585 (= lt!2219407 (choose!41312 lt!2219287 (Cons!61965 lt!2219298 Nil!61965) lt!2219282 s!2326))))

(assert (=> d!1733585 (validRegex!6999 lt!2219282)))

(assert (=> d!1733585 (= (theoremZipperRegexEquiv!551 lt!2219287 (Cons!61965 lt!2219298 Nil!61965) lt!2219282 s!2326) lt!2219407)))

(declare-fun bs!1256173 () Bool)

(assert (= bs!1256173 d!1733585))

(assert (=> bs!1256173 m!6463172))

(assert (=> bs!1256173 m!6463178))

(declare-fun m!6463776 () Bool)

(assert (=> bs!1256173 m!6463776))

(assert (=> bs!1256173 m!6463174))

(assert (=> b!5442761 d!1733585))

(declare-fun bs!1256174 () Bool)

(declare-fun d!1733587 () Bool)

(assert (= bs!1256174 (and d!1733587 d!1733565)))

(declare-fun lambda!286537 () Int)

(assert (=> bs!1256174 (= lambda!286537 lambda!286532)))

(declare-fun bs!1256175 () Bool)

(assert (= bs!1256175 (and d!1733587 d!1733583)))

(assert (=> bs!1256175 (= lambda!286537 lambda!286536)))

(declare-fun bs!1256176 () Bool)

(assert (= bs!1256176 (and d!1733587 d!1733571)))

(assert (=> bs!1256176 (= lambda!286537 lambda!286535)))

(declare-fun bs!1256177 () Bool)

(assert (= bs!1256177 (and d!1733587 d!1733431)))

(assert (=> bs!1256177 (= lambda!286537 lambda!286482)))

(declare-fun bs!1256178 () Bool)

(assert (= bs!1256178 (and d!1733587 d!1733441)))

(assert (=> bs!1256178 (= lambda!286537 lambda!286491)))

(assert (=> d!1733587 (= (inv!81404 setElem!35593) (forall!14578 (exprs!5147 setElem!35593) lambda!286537))))

(declare-fun bs!1256179 () Bool)

(assert (= bs!1256179 d!1733587))

(declare-fun m!6463778 () Bool)

(assert (=> bs!1256179 m!6463778))

(assert (=> setNonEmpty!35593 d!1733587))

(declare-fun bs!1256180 () Bool)

(declare-fun b!5443550 () Bool)

(assert (= bs!1256180 (and b!5443550 d!1733555)))

(declare-fun lambda!286538 () Int)

(assert (=> bs!1256180 (not (= lambda!286538 lambda!286523))))

(declare-fun bs!1256181 () Bool)

(assert (= bs!1256181 (and b!5443550 b!5443362)))

(assert (=> bs!1256181 (= (and (= (reg!15592 (regOne!31038 r!7292)) (reg!15592 r!7292)) (= (regOne!31038 r!7292) r!7292)) (= lambda!286538 lambda!286519))))

(declare-fun bs!1256182 () Bool)

(assert (= bs!1256182 (and b!5443550 b!5443363)))

(assert (=> bs!1256182 (not (= lambda!286538 lambda!286520))))

(declare-fun bs!1256183 () Bool)

(assert (= bs!1256183 (and b!5443550 d!1733561)))

(assert (=> bs!1256183 (not (= lambda!286538 lambda!286529))))

(declare-fun bs!1256184 () Bool)

(assert (= bs!1256184 (and b!5443550 b!5442763)))

(assert (=> bs!1256184 (not (= lambda!286538 lambda!286466))))

(assert (=> bs!1256184 (not (= lambda!286538 lambda!286465))))

(assert (=> bs!1256183 (not (= lambda!286538 lambda!286528))))

(assert (=> b!5443550 true))

(assert (=> b!5443550 true))

(declare-fun bs!1256185 () Bool)

(declare-fun b!5443551 () Bool)

(assert (= bs!1256185 (and b!5443551 d!1733555)))

(declare-fun lambda!286539 () Int)

(assert (=> bs!1256185 (not (= lambda!286539 lambda!286523))))

(declare-fun bs!1256186 () Bool)

(assert (= bs!1256186 (and b!5443551 b!5443362)))

(assert (=> bs!1256186 (not (= lambda!286539 lambda!286519))))

(declare-fun bs!1256187 () Bool)

(assert (= bs!1256187 (and b!5443551 b!5443550)))

(assert (=> bs!1256187 (not (= lambda!286539 lambda!286538))))

(declare-fun bs!1256188 () Bool)

(assert (= bs!1256188 (and b!5443551 b!5443363)))

(assert (=> bs!1256188 (= (and (= (regOne!31038 (regOne!31038 r!7292)) (regOne!31038 r!7292)) (= (regTwo!31038 (regOne!31038 r!7292)) (regTwo!31038 r!7292))) (= lambda!286539 lambda!286520))))

(declare-fun bs!1256189 () Bool)

(assert (= bs!1256189 (and b!5443551 d!1733561)))

(assert (=> bs!1256189 (= (and (= (regOne!31038 (regOne!31038 r!7292)) (regOne!31038 r!7292)) (= (regTwo!31038 (regOne!31038 r!7292)) (regTwo!31038 r!7292))) (= lambda!286539 lambda!286529))))

(declare-fun bs!1256190 () Bool)

(assert (= bs!1256190 (and b!5443551 b!5442763)))

(assert (=> bs!1256190 (= (and (= (regOne!31038 (regOne!31038 r!7292)) (regOne!31038 r!7292)) (= (regTwo!31038 (regOne!31038 r!7292)) (regTwo!31038 r!7292))) (= lambda!286539 lambda!286466))))

(assert (=> bs!1256190 (not (= lambda!286539 lambda!286465))))

(assert (=> bs!1256189 (not (= lambda!286539 lambda!286528))))

(assert (=> b!5443551 true))

(assert (=> b!5443551 true))

(declare-fun b!5443548 () Bool)

(declare-fun e!3371981 () Bool)

(assert (=> b!5443548 (= e!3371981 (matchRSpec!2366 (regTwo!31039 (regOne!31038 r!7292)) s!2326))))

(declare-fun b!5443549 () Bool)

(declare-fun e!3371983 () Bool)

(assert (=> b!5443549 (= e!3371983 (= s!2326 (Cons!61966 (c!949839 (regOne!31038 r!7292)) Nil!61966)))))

(declare-fun e!3371979 () Bool)

(declare-fun call!390483 () Bool)

(assert (=> b!5443550 (= e!3371979 call!390483)))

(declare-fun bm!390478 () Bool)

(declare-fun call!390484 () Bool)

(assert (=> bm!390478 (= call!390484 (isEmpty!33954 s!2326))))

(declare-fun c!950064 () Bool)

(declare-fun bm!390479 () Bool)

(assert (=> bm!390479 (= call!390483 (Exists!2444 (ite c!950064 lambda!286538 lambda!286539)))))

(declare-fun d!1733589 () Bool)

(declare-fun c!950062 () Bool)

(assert (=> d!1733589 (= c!950062 ((_ is EmptyExpr!15263) (regOne!31038 r!7292)))))

(declare-fun e!3371978 () Bool)

(assert (=> d!1733589 (= (matchRSpec!2366 (regOne!31038 r!7292) s!2326) e!3371978)))

(declare-fun e!3371982 () Bool)

(assert (=> b!5443551 (= e!3371982 call!390483)))

(declare-fun b!5443552 () Bool)

(declare-fun e!3371984 () Bool)

(assert (=> b!5443552 (= e!3371984 e!3371981)))

(declare-fun res!2317495 () Bool)

(assert (=> b!5443552 (= res!2317495 (matchRSpec!2366 (regOne!31039 (regOne!31038 r!7292)) s!2326))))

(assert (=> b!5443552 (=> res!2317495 e!3371981)))

(declare-fun b!5443553 () Bool)

(declare-fun e!3371980 () Bool)

(assert (=> b!5443553 (= e!3371978 e!3371980)))

(declare-fun res!2317494 () Bool)

(assert (=> b!5443553 (= res!2317494 (not ((_ is EmptyLang!15263) (regOne!31038 r!7292))))))

(assert (=> b!5443553 (=> (not res!2317494) (not e!3371980))))

(declare-fun b!5443554 () Bool)

(assert (=> b!5443554 (= e!3371978 call!390484)))

(declare-fun b!5443555 () Bool)

(declare-fun c!950063 () Bool)

(assert (=> b!5443555 (= c!950063 ((_ is ElementMatch!15263) (regOne!31038 r!7292)))))

(assert (=> b!5443555 (= e!3371980 e!3371983)))

(declare-fun b!5443556 () Bool)

(declare-fun c!950065 () Bool)

(assert (=> b!5443556 (= c!950065 ((_ is Union!15263) (regOne!31038 r!7292)))))

(assert (=> b!5443556 (= e!3371983 e!3371984)))

(declare-fun b!5443557 () Bool)

(declare-fun res!2317496 () Bool)

(assert (=> b!5443557 (=> res!2317496 e!3371979)))

(assert (=> b!5443557 (= res!2317496 call!390484)))

(assert (=> b!5443557 (= e!3371982 e!3371979)))

(declare-fun b!5443558 () Bool)

(assert (=> b!5443558 (= e!3371984 e!3371982)))

(assert (=> b!5443558 (= c!950064 ((_ is Star!15263) (regOne!31038 r!7292)))))

(assert (= (and d!1733589 c!950062) b!5443554))

(assert (= (and d!1733589 (not c!950062)) b!5443553))

(assert (= (and b!5443553 res!2317494) b!5443555))

(assert (= (and b!5443555 c!950063) b!5443549))

(assert (= (and b!5443555 (not c!950063)) b!5443556))

(assert (= (and b!5443556 c!950065) b!5443552))

(assert (= (and b!5443556 (not c!950065)) b!5443558))

(assert (= (and b!5443552 (not res!2317495)) b!5443548))

(assert (= (and b!5443558 c!950064) b!5443557))

(assert (= (and b!5443558 (not c!950064)) b!5443551))

(assert (= (and b!5443557 (not res!2317496)) b!5443550))

(assert (= (or b!5443550 b!5443551) bm!390479))

(assert (= (or b!5443554 b!5443557) bm!390478))

(declare-fun m!6463780 () Bool)

(assert (=> b!5443548 m!6463780))

(assert (=> bm!390478 m!6463424))

(declare-fun m!6463782 () Bool)

(assert (=> bm!390479 m!6463782))

(declare-fun m!6463784 () Bool)

(assert (=> b!5443552 m!6463784))

(assert (=> b!5442762 d!1733589))

(declare-fun d!1733591 () Bool)

(assert (=> d!1733591 (= (matchR!7448 (regOne!31038 r!7292) s!2326) (matchRSpec!2366 (regOne!31038 r!7292) s!2326))))

(declare-fun lt!2219408 () Unit!154594)

(assert (=> d!1733591 (= lt!2219408 (choose!41306 (regOne!31038 r!7292) s!2326))))

(assert (=> d!1733591 (validRegex!6999 (regOne!31038 r!7292))))

(assert (=> d!1733591 (= (mainMatchTheorem!2366 (regOne!31038 r!7292) s!2326) lt!2219408)))

(declare-fun bs!1256191 () Bool)

(assert (= bs!1256191 d!1733591))

(assert (=> bs!1256191 m!6463246))

(assert (=> bs!1256191 m!6463248))

(declare-fun m!6463786 () Bool)

(assert (=> bs!1256191 m!6463786))

(assert (=> bs!1256191 m!6463672))

(assert (=> b!5442762 d!1733591))

(declare-fun bm!390480 () Bool)

(declare-fun call!390485 () Bool)

(assert (=> bm!390480 (= call!390485 (isEmpty!33954 s!2326))))

(declare-fun b!5443559 () Bool)

(declare-fun res!2317498 () Bool)

(declare-fun e!3371990 () Bool)

(assert (=> b!5443559 (=> res!2317498 e!3371990)))

(assert (=> b!5443559 (= res!2317498 (not ((_ is ElementMatch!15263) (regOne!31038 r!7292))))))

(declare-fun e!3371985 () Bool)

(assert (=> b!5443559 (= e!3371985 e!3371990)))

(declare-fun b!5443560 () Bool)

(declare-fun res!2317504 () Bool)

(declare-fun e!3371986 () Bool)

(assert (=> b!5443560 (=> res!2317504 e!3371986)))

(assert (=> b!5443560 (= res!2317504 (not (isEmpty!33954 (tail!10771 s!2326))))))

(declare-fun b!5443561 () Bool)

(declare-fun e!3371991 () Bool)

(assert (=> b!5443561 (= e!3371991 (matchR!7448 (derivativeStep!4299 (regOne!31038 r!7292) (head!11674 s!2326)) (tail!10771 s!2326)))))

(declare-fun b!5443562 () Bool)

(declare-fun e!3371988 () Bool)

(assert (=> b!5443562 (= e!3371988 e!3371986)))

(declare-fun res!2317500 () Bool)

(assert (=> b!5443562 (=> res!2317500 e!3371986)))

(assert (=> b!5443562 (= res!2317500 call!390485)))

(declare-fun b!5443564 () Bool)

(declare-fun e!3371987 () Bool)

(assert (=> b!5443564 (= e!3371987 (= (head!11674 s!2326) (c!949839 (regOne!31038 r!7292))))))

(declare-fun b!5443565 () Bool)

(declare-fun res!2317499 () Bool)

(assert (=> b!5443565 (=> (not res!2317499) (not e!3371987))))

(assert (=> b!5443565 (= res!2317499 (isEmpty!33954 (tail!10771 s!2326)))))

(declare-fun b!5443566 () Bool)

(declare-fun res!2317502 () Bool)

(assert (=> b!5443566 (=> res!2317502 e!3371990)))

(assert (=> b!5443566 (= res!2317502 e!3371987)))

(declare-fun res!2317497 () Bool)

(assert (=> b!5443566 (=> (not res!2317497) (not e!3371987))))

(declare-fun lt!2219409 () Bool)

(assert (=> b!5443566 (= res!2317497 lt!2219409)))

(declare-fun b!5443567 () Bool)

(assert (=> b!5443567 (= e!3371986 (not (= (head!11674 s!2326) (c!949839 (regOne!31038 r!7292)))))))

(declare-fun b!5443568 () Bool)

(assert (=> b!5443568 (= e!3371991 (nullable!5432 (regOne!31038 r!7292)))))

(declare-fun b!5443563 () Bool)

(declare-fun e!3371989 () Bool)

(assert (=> b!5443563 (= e!3371989 (= lt!2219409 call!390485))))

(declare-fun d!1733593 () Bool)

(assert (=> d!1733593 e!3371989))

(declare-fun c!950066 () Bool)

(assert (=> d!1733593 (= c!950066 ((_ is EmptyExpr!15263) (regOne!31038 r!7292)))))

(assert (=> d!1733593 (= lt!2219409 e!3371991)))

(declare-fun c!950068 () Bool)

(assert (=> d!1733593 (= c!950068 (isEmpty!33954 s!2326))))

(assert (=> d!1733593 (validRegex!6999 (regOne!31038 r!7292))))

(assert (=> d!1733593 (= (matchR!7448 (regOne!31038 r!7292) s!2326) lt!2219409)))

(declare-fun b!5443569 () Bool)

(declare-fun res!2317501 () Bool)

(assert (=> b!5443569 (=> (not res!2317501) (not e!3371987))))

(assert (=> b!5443569 (= res!2317501 (not call!390485))))

(declare-fun b!5443570 () Bool)

(assert (=> b!5443570 (= e!3371989 e!3371985)))

(declare-fun c!950067 () Bool)

(assert (=> b!5443570 (= c!950067 ((_ is EmptyLang!15263) (regOne!31038 r!7292)))))

(declare-fun b!5443571 () Bool)

(assert (=> b!5443571 (= e!3371985 (not lt!2219409))))

(declare-fun b!5443572 () Bool)

(assert (=> b!5443572 (= e!3371990 e!3371988)))

(declare-fun res!2317503 () Bool)

(assert (=> b!5443572 (=> (not res!2317503) (not e!3371988))))

(assert (=> b!5443572 (= res!2317503 (not lt!2219409))))

(assert (= (and d!1733593 c!950068) b!5443568))

(assert (= (and d!1733593 (not c!950068)) b!5443561))

(assert (= (and d!1733593 c!950066) b!5443563))

(assert (= (and d!1733593 (not c!950066)) b!5443570))

(assert (= (and b!5443570 c!950067) b!5443571))

(assert (= (and b!5443570 (not c!950067)) b!5443559))

(assert (= (and b!5443559 (not res!2317498)) b!5443566))

(assert (= (and b!5443566 res!2317497) b!5443569))

(assert (= (and b!5443569 res!2317501) b!5443565))

(assert (= (and b!5443565 res!2317499) b!5443564))

(assert (= (and b!5443566 (not res!2317502)) b!5443572))

(assert (= (and b!5443572 res!2317503) b!5443562))

(assert (= (and b!5443562 (not res!2317500)) b!5443560))

(assert (= (and b!5443560 (not res!2317504)) b!5443567))

(assert (= (or b!5443563 b!5443562 b!5443569) bm!390480))

(assert (=> b!5443565 m!6463432))

(assert (=> b!5443565 m!6463432))

(assert (=> b!5443565 m!6463652))

(assert (=> b!5443564 m!6463428))

(declare-fun m!6463788 () Bool)

(assert (=> b!5443568 m!6463788))

(assert (=> b!5443567 m!6463428))

(assert (=> d!1733593 m!6463424))

(assert (=> d!1733593 m!6463672))

(assert (=> b!5443561 m!6463428))

(assert (=> b!5443561 m!6463428))

(declare-fun m!6463790 () Bool)

(assert (=> b!5443561 m!6463790))

(assert (=> b!5443561 m!6463432))

(assert (=> b!5443561 m!6463790))

(assert (=> b!5443561 m!6463432))

(declare-fun m!6463792 () Bool)

(assert (=> b!5443561 m!6463792))

(assert (=> bm!390480 m!6463424))

(assert (=> b!5443560 m!6463432))

(assert (=> b!5443560 m!6463432))

(assert (=> b!5443560 m!6463652))

(assert (=> b!5442762 d!1733593))

(declare-fun bs!1256192 () Bool)

(declare-fun b!5443575 () Bool)

(assert (= bs!1256192 (and b!5443575 d!1733555)))

(declare-fun lambda!286540 () Int)

(assert (=> bs!1256192 (not (= lambda!286540 lambda!286523))))

(declare-fun bs!1256193 () Bool)

(assert (= bs!1256193 (and b!5443575 b!5443362)))

(assert (=> bs!1256193 (= (and (= (reg!15592 (regTwo!31038 r!7292)) (reg!15592 r!7292)) (= (regTwo!31038 r!7292) r!7292)) (= lambda!286540 lambda!286519))))

(declare-fun bs!1256194 () Bool)

(assert (= bs!1256194 (and b!5443575 b!5443550)))

(assert (=> bs!1256194 (= (and (= (reg!15592 (regTwo!31038 r!7292)) (reg!15592 (regOne!31038 r!7292))) (= (regTwo!31038 r!7292) (regOne!31038 r!7292))) (= lambda!286540 lambda!286538))))

(declare-fun bs!1256195 () Bool)

(assert (= bs!1256195 (and b!5443575 b!5443363)))

(assert (=> bs!1256195 (not (= lambda!286540 lambda!286520))))

(declare-fun bs!1256196 () Bool)

(assert (= bs!1256196 (and b!5443575 d!1733561)))

(assert (=> bs!1256196 (not (= lambda!286540 lambda!286529))))

(declare-fun bs!1256197 () Bool)

(assert (= bs!1256197 (and b!5443575 b!5442763)))

(assert (=> bs!1256197 (not (= lambda!286540 lambda!286466))))

(assert (=> bs!1256197 (not (= lambda!286540 lambda!286465))))

(declare-fun bs!1256198 () Bool)

(assert (= bs!1256198 (and b!5443575 b!5443551)))

(assert (=> bs!1256198 (not (= lambda!286540 lambda!286539))))

(assert (=> bs!1256196 (not (= lambda!286540 lambda!286528))))

(assert (=> b!5443575 true))

(assert (=> b!5443575 true))

(declare-fun bs!1256199 () Bool)

(declare-fun b!5443576 () Bool)

(assert (= bs!1256199 (and b!5443576 d!1733555)))

(declare-fun lambda!286541 () Int)

(assert (=> bs!1256199 (not (= lambda!286541 lambda!286523))))

(declare-fun bs!1256200 () Bool)

(assert (= bs!1256200 (and b!5443576 b!5443362)))

(assert (=> bs!1256200 (not (= lambda!286541 lambda!286519))))

(declare-fun bs!1256201 () Bool)

(assert (= bs!1256201 (and b!5443576 b!5443550)))

(assert (=> bs!1256201 (not (= lambda!286541 lambda!286538))))

(declare-fun bs!1256202 () Bool)

(assert (= bs!1256202 (and b!5443576 b!5443363)))

(assert (=> bs!1256202 (= (and (= (regOne!31038 (regTwo!31038 r!7292)) (regOne!31038 r!7292)) (= (regTwo!31038 (regTwo!31038 r!7292)) (regTwo!31038 r!7292))) (= lambda!286541 lambda!286520))))

(declare-fun bs!1256203 () Bool)

(assert (= bs!1256203 (and b!5443576 d!1733561)))

(assert (=> bs!1256203 (= (and (= (regOne!31038 (regTwo!31038 r!7292)) (regOne!31038 r!7292)) (= (regTwo!31038 (regTwo!31038 r!7292)) (regTwo!31038 r!7292))) (= lambda!286541 lambda!286529))))

(declare-fun bs!1256204 () Bool)

(assert (= bs!1256204 (and b!5443576 b!5442763)))

(assert (=> bs!1256204 (= (and (= (regOne!31038 (regTwo!31038 r!7292)) (regOne!31038 r!7292)) (= (regTwo!31038 (regTwo!31038 r!7292)) (regTwo!31038 r!7292))) (= lambda!286541 lambda!286466))))

(declare-fun bs!1256205 () Bool)

(assert (= bs!1256205 (and b!5443576 b!5443575)))

(assert (=> bs!1256205 (not (= lambda!286541 lambda!286540))))

(assert (=> bs!1256204 (not (= lambda!286541 lambda!286465))))

(declare-fun bs!1256206 () Bool)

(assert (= bs!1256206 (and b!5443576 b!5443551)))

(assert (=> bs!1256206 (= (and (= (regOne!31038 (regTwo!31038 r!7292)) (regOne!31038 (regOne!31038 r!7292))) (= (regTwo!31038 (regTwo!31038 r!7292)) (regTwo!31038 (regOne!31038 r!7292)))) (= lambda!286541 lambda!286539))))

(assert (=> bs!1256203 (not (= lambda!286541 lambda!286528))))

(assert (=> b!5443576 true))

(assert (=> b!5443576 true))

(declare-fun b!5443573 () Bool)

(declare-fun e!3371995 () Bool)

(assert (=> b!5443573 (= e!3371995 (matchRSpec!2366 (regTwo!31039 (regTwo!31038 r!7292)) s!2326))))

(declare-fun b!5443574 () Bool)

(declare-fun e!3371997 () Bool)

(assert (=> b!5443574 (= e!3371997 (= s!2326 (Cons!61966 (c!949839 (regTwo!31038 r!7292)) Nil!61966)))))

(declare-fun e!3371993 () Bool)

(declare-fun call!390486 () Bool)

(assert (=> b!5443575 (= e!3371993 call!390486)))

(declare-fun bm!390481 () Bool)

(declare-fun call!390487 () Bool)

(assert (=> bm!390481 (= call!390487 (isEmpty!33954 s!2326))))

(declare-fun bm!390482 () Bool)

(declare-fun c!950071 () Bool)

(assert (=> bm!390482 (= call!390486 (Exists!2444 (ite c!950071 lambda!286540 lambda!286541)))))

(declare-fun d!1733595 () Bool)

(declare-fun c!950069 () Bool)

(assert (=> d!1733595 (= c!950069 ((_ is EmptyExpr!15263) (regTwo!31038 r!7292)))))

(declare-fun e!3371992 () Bool)

(assert (=> d!1733595 (= (matchRSpec!2366 (regTwo!31038 r!7292) s!2326) e!3371992)))

(declare-fun e!3371996 () Bool)

(assert (=> b!5443576 (= e!3371996 call!390486)))

(declare-fun b!5443577 () Bool)

(declare-fun e!3371998 () Bool)

(assert (=> b!5443577 (= e!3371998 e!3371995)))

(declare-fun res!2317506 () Bool)

(assert (=> b!5443577 (= res!2317506 (matchRSpec!2366 (regOne!31039 (regTwo!31038 r!7292)) s!2326))))

(assert (=> b!5443577 (=> res!2317506 e!3371995)))

(declare-fun b!5443578 () Bool)

(declare-fun e!3371994 () Bool)

(assert (=> b!5443578 (= e!3371992 e!3371994)))

(declare-fun res!2317505 () Bool)

(assert (=> b!5443578 (= res!2317505 (not ((_ is EmptyLang!15263) (regTwo!31038 r!7292))))))

(assert (=> b!5443578 (=> (not res!2317505) (not e!3371994))))

(declare-fun b!5443579 () Bool)

(assert (=> b!5443579 (= e!3371992 call!390487)))

(declare-fun b!5443580 () Bool)

(declare-fun c!950070 () Bool)

(assert (=> b!5443580 (= c!950070 ((_ is ElementMatch!15263) (regTwo!31038 r!7292)))))

(assert (=> b!5443580 (= e!3371994 e!3371997)))

(declare-fun b!5443581 () Bool)

(declare-fun c!950072 () Bool)

(assert (=> b!5443581 (= c!950072 ((_ is Union!15263) (regTwo!31038 r!7292)))))

(assert (=> b!5443581 (= e!3371997 e!3371998)))

(declare-fun b!5443582 () Bool)

(declare-fun res!2317507 () Bool)

(assert (=> b!5443582 (=> res!2317507 e!3371993)))

(assert (=> b!5443582 (= res!2317507 call!390487)))

(assert (=> b!5443582 (= e!3371996 e!3371993)))

(declare-fun b!5443583 () Bool)

(assert (=> b!5443583 (= e!3371998 e!3371996)))

(assert (=> b!5443583 (= c!950071 ((_ is Star!15263) (regTwo!31038 r!7292)))))

(assert (= (and d!1733595 c!950069) b!5443579))

(assert (= (and d!1733595 (not c!950069)) b!5443578))

(assert (= (and b!5443578 res!2317505) b!5443580))

(assert (= (and b!5443580 c!950070) b!5443574))

(assert (= (and b!5443580 (not c!950070)) b!5443581))

(assert (= (and b!5443581 c!950072) b!5443577))

(assert (= (and b!5443581 (not c!950072)) b!5443583))

(assert (= (and b!5443577 (not res!2317506)) b!5443573))

(assert (= (and b!5443583 c!950071) b!5443582))

(assert (= (and b!5443583 (not c!950071)) b!5443576))

(assert (= (and b!5443582 (not res!2317507)) b!5443575))

(assert (= (or b!5443575 b!5443576) bm!390482))

(assert (= (or b!5443579 b!5443582) bm!390481))

(declare-fun m!6463794 () Bool)

(assert (=> b!5443573 m!6463794))

(assert (=> bm!390481 m!6463424))

(declare-fun m!6463796 () Bool)

(assert (=> bm!390482 m!6463796))

(declare-fun m!6463798 () Bool)

(assert (=> b!5443577 m!6463798))

(assert (=> b!5442762 d!1733595))

(declare-fun bm!390483 () Bool)

(declare-fun call!390488 () Bool)

(assert (=> bm!390483 (= call!390488 (isEmpty!33954 s!2326))))

(declare-fun b!5443584 () Bool)

(declare-fun res!2317509 () Bool)

(declare-fun e!3372004 () Bool)

(assert (=> b!5443584 (=> res!2317509 e!3372004)))

(assert (=> b!5443584 (= res!2317509 (not ((_ is ElementMatch!15263) (regTwo!31038 r!7292))))))

(declare-fun e!3371999 () Bool)

(assert (=> b!5443584 (= e!3371999 e!3372004)))

(declare-fun b!5443585 () Bool)

(declare-fun res!2317515 () Bool)

(declare-fun e!3372000 () Bool)

(assert (=> b!5443585 (=> res!2317515 e!3372000)))

(assert (=> b!5443585 (= res!2317515 (not (isEmpty!33954 (tail!10771 s!2326))))))

(declare-fun b!5443586 () Bool)

(declare-fun e!3372005 () Bool)

(assert (=> b!5443586 (= e!3372005 (matchR!7448 (derivativeStep!4299 (regTwo!31038 r!7292) (head!11674 s!2326)) (tail!10771 s!2326)))))

(declare-fun b!5443587 () Bool)

(declare-fun e!3372002 () Bool)

(assert (=> b!5443587 (= e!3372002 e!3372000)))

(declare-fun res!2317511 () Bool)

(assert (=> b!5443587 (=> res!2317511 e!3372000)))

(assert (=> b!5443587 (= res!2317511 call!390488)))

(declare-fun b!5443589 () Bool)

(declare-fun e!3372001 () Bool)

(assert (=> b!5443589 (= e!3372001 (= (head!11674 s!2326) (c!949839 (regTwo!31038 r!7292))))))

(declare-fun b!5443590 () Bool)

(declare-fun res!2317510 () Bool)

(assert (=> b!5443590 (=> (not res!2317510) (not e!3372001))))

(assert (=> b!5443590 (= res!2317510 (isEmpty!33954 (tail!10771 s!2326)))))

(declare-fun b!5443591 () Bool)

(declare-fun res!2317513 () Bool)

(assert (=> b!5443591 (=> res!2317513 e!3372004)))

(assert (=> b!5443591 (= res!2317513 e!3372001)))

(declare-fun res!2317508 () Bool)

(assert (=> b!5443591 (=> (not res!2317508) (not e!3372001))))

(declare-fun lt!2219410 () Bool)

(assert (=> b!5443591 (= res!2317508 lt!2219410)))

(declare-fun b!5443592 () Bool)

(assert (=> b!5443592 (= e!3372000 (not (= (head!11674 s!2326) (c!949839 (regTwo!31038 r!7292)))))))

(declare-fun b!5443593 () Bool)

(assert (=> b!5443593 (= e!3372005 (nullable!5432 (regTwo!31038 r!7292)))))

(declare-fun b!5443588 () Bool)

(declare-fun e!3372003 () Bool)

(assert (=> b!5443588 (= e!3372003 (= lt!2219410 call!390488))))

(declare-fun d!1733597 () Bool)

(assert (=> d!1733597 e!3372003))

(declare-fun c!950073 () Bool)

(assert (=> d!1733597 (= c!950073 ((_ is EmptyExpr!15263) (regTwo!31038 r!7292)))))

(assert (=> d!1733597 (= lt!2219410 e!3372005)))

(declare-fun c!950075 () Bool)

(assert (=> d!1733597 (= c!950075 (isEmpty!33954 s!2326))))

(assert (=> d!1733597 (validRegex!6999 (regTwo!31038 r!7292))))

(assert (=> d!1733597 (= (matchR!7448 (regTwo!31038 r!7292) s!2326) lt!2219410)))

(declare-fun b!5443594 () Bool)

(declare-fun res!2317512 () Bool)

(assert (=> b!5443594 (=> (not res!2317512) (not e!3372001))))

(assert (=> b!5443594 (= res!2317512 (not call!390488))))

(declare-fun b!5443595 () Bool)

(assert (=> b!5443595 (= e!3372003 e!3371999)))

(declare-fun c!950074 () Bool)

(assert (=> b!5443595 (= c!950074 ((_ is EmptyLang!15263) (regTwo!31038 r!7292)))))

(declare-fun b!5443596 () Bool)

(assert (=> b!5443596 (= e!3371999 (not lt!2219410))))

(declare-fun b!5443597 () Bool)

(assert (=> b!5443597 (= e!3372004 e!3372002)))

(declare-fun res!2317514 () Bool)

(assert (=> b!5443597 (=> (not res!2317514) (not e!3372002))))

(assert (=> b!5443597 (= res!2317514 (not lt!2219410))))

(assert (= (and d!1733597 c!950075) b!5443593))

(assert (= (and d!1733597 (not c!950075)) b!5443586))

(assert (= (and d!1733597 c!950073) b!5443588))

(assert (= (and d!1733597 (not c!950073)) b!5443595))

(assert (= (and b!5443595 c!950074) b!5443596))

(assert (= (and b!5443595 (not c!950074)) b!5443584))

(assert (= (and b!5443584 (not res!2317509)) b!5443591))

(assert (= (and b!5443591 res!2317508) b!5443594))

(assert (= (and b!5443594 res!2317512) b!5443590))

(assert (= (and b!5443590 res!2317510) b!5443589))

(assert (= (and b!5443591 (not res!2317513)) b!5443597))

(assert (= (and b!5443597 res!2317514) b!5443587))

(assert (= (and b!5443587 (not res!2317511)) b!5443585))

(assert (= (and b!5443585 (not res!2317515)) b!5443592))

(assert (= (or b!5443588 b!5443587 b!5443594) bm!390483))

(assert (=> b!5443590 m!6463432))

(assert (=> b!5443590 m!6463432))

(assert (=> b!5443590 m!6463652))

(assert (=> b!5443589 m!6463428))

(declare-fun m!6463800 () Bool)

(assert (=> b!5443593 m!6463800))

(assert (=> b!5443592 m!6463428))

(assert (=> d!1733597 m!6463424))

(declare-fun m!6463802 () Bool)

(assert (=> d!1733597 m!6463802))

(assert (=> b!5443586 m!6463428))

(assert (=> b!5443586 m!6463428))

(declare-fun m!6463804 () Bool)

(assert (=> b!5443586 m!6463804))

(assert (=> b!5443586 m!6463432))

(assert (=> b!5443586 m!6463804))

(assert (=> b!5443586 m!6463432))

(declare-fun m!6463806 () Bool)

(assert (=> b!5443586 m!6463806))

(assert (=> bm!390483 m!6463424))

(assert (=> b!5443585 m!6463432))

(assert (=> b!5443585 m!6463432))

(assert (=> b!5443585 m!6463652))

(assert (=> b!5442762 d!1733597))

(declare-fun d!1733599 () Bool)

(assert (=> d!1733599 (= (matchR!7448 (regTwo!31038 r!7292) s!2326) (matchRSpec!2366 (regTwo!31038 r!7292) s!2326))))

(declare-fun lt!2219411 () Unit!154594)

(assert (=> d!1733599 (= lt!2219411 (choose!41306 (regTwo!31038 r!7292) s!2326))))

(assert (=> d!1733599 (validRegex!6999 (regTwo!31038 r!7292))))

(assert (=> d!1733599 (= (mainMatchTheorem!2366 (regTwo!31038 r!7292) s!2326) lt!2219411)))

(declare-fun bs!1256207 () Bool)

(assert (= bs!1256207 d!1733599))

(assert (=> bs!1256207 m!6463240))

(assert (=> bs!1256207 m!6463250))

(declare-fun m!6463808 () Bool)

(assert (=> bs!1256207 m!6463808))

(assert (=> bs!1256207 m!6463802))

(assert (=> b!5442762 d!1733599))

(declare-fun d!1733601 () Bool)

(declare-fun lt!2219414 () Regex!15263)

(assert (=> d!1733601 (validRegex!6999 lt!2219414)))

(assert (=> d!1733601 (= lt!2219414 (generalisedUnion!1192 (unfocusZipperList!705 zl!343)))))

(assert (=> d!1733601 (= (unfocusZipper!1005 zl!343) lt!2219414)))

(declare-fun bs!1256208 () Bool)

(assert (= bs!1256208 d!1733601))

(declare-fun m!6463810 () Bool)

(assert (=> bs!1256208 m!6463810))

(assert (=> bs!1256208 m!6463260))

(assert (=> bs!1256208 m!6463260))

(assert (=> bs!1256208 m!6463262))

(assert (=> b!5442752 d!1733601))

(declare-fun b!5443611 () Bool)

(declare-fun e!3372008 () Bool)

(declare-fun tp!1500536 () Bool)

(declare-fun tp!1500535 () Bool)

(assert (=> b!5443611 (= e!3372008 (and tp!1500536 tp!1500535))))

(declare-fun b!5443608 () Bool)

(assert (=> b!5443608 (= e!3372008 tp_is_empty!39779)))

(declare-fun b!5443609 () Bool)

(declare-fun tp!1500537 () Bool)

(declare-fun tp!1500534 () Bool)

(assert (=> b!5443609 (= e!3372008 (and tp!1500537 tp!1500534))))

(assert (=> b!5442748 (= tp!1500458 e!3372008)))

(declare-fun b!5443610 () Bool)

(declare-fun tp!1500538 () Bool)

(assert (=> b!5443610 (= e!3372008 tp!1500538)))

(assert (= (and b!5442748 ((_ is ElementMatch!15263) (regOne!31039 r!7292))) b!5443608))

(assert (= (and b!5442748 ((_ is Concat!24108) (regOne!31039 r!7292))) b!5443609))

(assert (= (and b!5442748 ((_ is Star!15263) (regOne!31039 r!7292))) b!5443610))

(assert (= (and b!5442748 ((_ is Union!15263) (regOne!31039 r!7292))) b!5443611))

(declare-fun b!5443615 () Bool)

(declare-fun e!3372009 () Bool)

(declare-fun tp!1500541 () Bool)

(declare-fun tp!1500540 () Bool)

(assert (=> b!5443615 (= e!3372009 (and tp!1500541 tp!1500540))))

(declare-fun b!5443612 () Bool)

(assert (=> b!5443612 (= e!3372009 tp_is_empty!39779)))

(declare-fun b!5443613 () Bool)

(declare-fun tp!1500542 () Bool)

(declare-fun tp!1500539 () Bool)

(assert (=> b!5443613 (= e!3372009 (and tp!1500542 tp!1500539))))

(assert (=> b!5442748 (= tp!1500456 e!3372009)))

(declare-fun b!5443614 () Bool)

(declare-fun tp!1500543 () Bool)

(assert (=> b!5443614 (= e!3372009 tp!1500543)))

(assert (= (and b!5442748 ((_ is ElementMatch!15263) (regTwo!31039 r!7292))) b!5443612))

(assert (= (and b!5442748 ((_ is Concat!24108) (regTwo!31039 r!7292))) b!5443613))

(assert (= (and b!5442748 ((_ is Star!15263) (regTwo!31039 r!7292))) b!5443614))

(assert (= (and b!5442748 ((_ is Union!15263) (regTwo!31039 r!7292))) b!5443615))

(declare-fun b!5443623 () Bool)

(declare-fun e!3372015 () Bool)

(declare-fun tp!1500548 () Bool)

(assert (=> b!5443623 (= e!3372015 tp!1500548)))

(declare-fun e!3372014 () Bool)

(declare-fun tp!1500549 () Bool)

(declare-fun b!5443622 () Bool)

(assert (=> b!5443622 (= e!3372014 (and (inv!81404 (h!68413 (t!375316 zl!343))) e!3372015 tp!1500549))))

(assert (=> b!5442754 (= tp!1500463 e!3372014)))

(assert (= b!5443622 b!5443623))

(assert (= (and b!5442754 ((_ is Cons!61965) (t!375316 zl!343))) b!5443622))

(declare-fun m!6463812 () Bool)

(assert (=> b!5443622 m!6463812))

(declare-fun b!5443628 () Bool)

(declare-fun e!3372018 () Bool)

(declare-fun tp!1500552 () Bool)

(assert (=> b!5443628 (= e!3372018 (and tp_is_empty!39779 tp!1500552))))

(assert (=> b!5442770 (= tp!1500465 e!3372018)))

(assert (= (and b!5442770 ((_ is Cons!61966) (t!375317 s!2326))) b!5443628))

(declare-fun b!5443632 () Bool)

(declare-fun e!3372019 () Bool)

(declare-fun tp!1500555 () Bool)

(declare-fun tp!1500554 () Bool)

(assert (=> b!5443632 (= e!3372019 (and tp!1500555 tp!1500554))))

(declare-fun b!5443629 () Bool)

(assert (=> b!5443629 (= e!3372019 tp_is_empty!39779)))

(declare-fun b!5443630 () Bool)

(declare-fun tp!1500556 () Bool)

(declare-fun tp!1500553 () Bool)

(assert (=> b!5443630 (= e!3372019 (and tp!1500556 tp!1500553))))

(assert (=> b!5442765 (= tp!1500461 e!3372019)))

(declare-fun b!5443631 () Bool)

(declare-fun tp!1500557 () Bool)

(assert (=> b!5443631 (= e!3372019 tp!1500557)))

(assert (= (and b!5442765 ((_ is ElementMatch!15263) (reg!15592 r!7292))) b!5443629))

(assert (= (and b!5442765 ((_ is Concat!24108) (reg!15592 r!7292))) b!5443630))

(assert (= (and b!5442765 ((_ is Star!15263) (reg!15592 r!7292))) b!5443631))

(assert (= (and b!5442765 ((_ is Union!15263) (reg!15592 r!7292))) b!5443632))

(declare-fun b!5443636 () Bool)

(declare-fun e!3372020 () Bool)

(declare-fun tp!1500560 () Bool)

(declare-fun tp!1500559 () Bool)

(assert (=> b!5443636 (= e!3372020 (and tp!1500560 tp!1500559))))

(declare-fun b!5443633 () Bool)

(assert (=> b!5443633 (= e!3372020 tp_is_empty!39779)))

(declare-fun b!5443634 () Bool)

(declare-fun tp!1500561 () Bool)

(declare-fun tp!1500558 () Bool)

(assert (=> b!5443634 (= e!3372020 (and tp!1500561 tp!1500558))))

(assert (=> b!5442755 (= tp!1500459 e!3372020)))

(declare-fun b!5443635 () Bool)

(declare-fun tp!1500562 () Bool)

(assert (=> b!5443635 (= e!3372020 tp!1500562)))

(assert (= (and b!5442755 ((_ is ElementMatch!15263) (regOne!31038 r!7292))) b!5443633))

(assert (= (and b!5442755 ((_ is Concat!24108) (regOne!31038 r!7292))) b!5443634))

(assert (= (and b!5442755 ((_ is Star!15263) (regOne!31038 r!7292))) b!5443635))

(assert (= (and b!5442755 ((_ is Union!15263) (regOne!31038 r!7292))) b!5443636))

(declare-fun b!5443640 () Bool)

(declare-fun e!3372021 () Bool)

(declare-fun tp!1500565 () Bool)

(declare-fun tp!1500564 () Bool)

(assert (=> b!5443640 (= e!3372021 (and tp!1500565 tp!1500564))))

(declare-fun b!5443637 () Bool)

(assert (=> b!5443637 (= e!3372021 tp_is_empty!39779)))

(declare-fun b!5443638 () Bool)

(declare-fun tp!1500566 () Bool)

(declare-fun tp!1500563 () Bool)

(assert (=> b!5443638 (= e!3372021 (and tp!1500566 tp!1500563))))

(assert (=> b!5442755 (= tp!1500464 e!3372021)))

(declare-fun b!5443639 () Bool)

(declare-fun tp!1500567 () Bool)

(assert (=> b!5443639 (= e!3372021 tp!1500567)))

(assert (= (and b!5442755 ((_ is ElementMatch!15263) (regTwo!31038 r!7292))) b!5443637))

(assert (= (and b!5442755 ((_ is Concat!24108) (regTwo!31038 r!7292))) b!5443638))

(assert (= (and b!5442755 ((_ is Star!15263) (regTwo!31038 r!7292))) b!5443639))

(assert (= (and b!5442755 ((_ is Union!15263) (regTwo!31038 r!7292))) b!5443640))

(declare-fun b!5443645 () Bool)

(declare-fun e!3372024 () Bool)

(declare-fun tp!1500572 () Bool)

(declare-fun tp!1500573 () Bool)

(assert (=> b!5443645 (= e!3372024 (and tp!1500572 tp!1500573))))

(assert (=> b!5442756 (= tp!1500460 e!3372024)))

(assert (= (and b!5442756 ((_ is Cons!61964) (exprs!5147 setElem!35593))) b!5443645))

(declare-fun condSetEmpty!35599 () Bool)

(assert (=> setNonEmpty!35593 (= condSetEmpty!35599 (= setRest!35593 ((as const (Array Context!9294 Bool)) false)))))

(declare-fun setRes!35599 () Bool)

(assert (=> setNonEmpty!35593 (= tp!1500462 setRes!35599)))

(declare-fun setIsEmpty!35599 () Bool)

(assert (=> setIsEmpty!35599 setRes!35599))

(declare-fun e!3372027 () Bool)

(declare-fun setElem!35599 () Context!9294)

(declare-fun tp!1500579 () Bool)

(declare-fun setNonEmpty!35599 () Bool)

(assert (=> setNonEmpty!35599 (= setRes!35599 (and tp!1500579 (inv!81404 setElem!35599) e!3372027))))

(declare-fun setRest!35599 () (InoxSet Context!9294))

(assert (=> setNonEmpty!35599 (= setRest!35593 ((_ map or) (store ((as const (Array Context!9294 Bool)) false) setElem!35599 true) setRest!35599))))

(declare-fun b!5443650 () Bool)

(declare-fun tp!1500578 () Bool)

(assert (=> b!5443650 (= e!3372027 tp!1500578)))

(assert (= (and setNonEmpty!35593 condSetEmpty!35599) setIsEmpty!35599))

(assert (= (and setNonEmpty!35593 (not condSetEmpty!35599)) setNonEmpty!35599))

(assert (= setNonEmpty!35599 b!5443650))

(declare-fun m!6463814 () Bool)

(assert (=> setNonEmpty!35599 m!6463814))

(declare-fun b!5443651 () Bool)

(declare-fun e!3372028 () Bool)

(declare-fun tp!1500580 () Bool)

(declare-fun tp!1500581 () Bool)

(assert (=> b!5443651 (= e!3372028 (and tp!1500580 tp!1500581))))

(assert (=> b!5442768 (= tp!1500457 e!3372028)))

(assert (= (and b!5442768 ((_ is Cons!61964) (exprs!5147 (h!68413 zl!343)))) b!5443651))

(declare-fun b_lambda!207481 () Bool)

(assert (= b_lambda!207473 (or b!5442745 b_lambda!207481)))

(declare-fun bs!1256209 () Bool)

(declare-fun d!1733603 () Bool)

(assert (= bs!1256209 (and d!1733603 b!5442745)))

(assert (=> bs!1256209 (= (dynLambda!24387 lambda!286467 lt!2219298) (derivationStepZipperUp!635 lt!2219298 (h!68414 s!2326)))))

(assert (=> bs!1256209 m!6463212))

(assert (=> d!1733493 d!1733603))

(declare-fun b_lambda!207483 () Bool)

(assert (= b_lambda!207475 (or b!5442745 b_lambda!207483)))

(declare-fun bs!1256210 () Bool)

(declare-fun d!1733605 () Bool)

(assert (= bs!1256210 (and d!1733605 b!5442745)))

(assert (=> bs!1256210 (= (dynLambda!24387 lambda!286467 (h!68413 zl!343)) (derivationStepZipperUp!635 (h!68413 zl!343) (h!68414 s!2326)))))

(assert (=> bs!1256210 m!6463230))

(assert (=> d!1733523 d!1733605))

(check-sat (not b!5443590) (not b!5443541) (not d!1733493) (not b!5443536) (not b!5443586) (not d!1733545) (not d!1733429) (not d!1733569) (not b!5443623) (not b!5443573) (not d!1733469) (not b!5443614) (not b!5443470) (not d!1733575) (not d!1733465) (not b!5443585) (not d!1733549) (not bs!1256210) (not b!5442967) (not d!1733557) (not setNonEmpty!35599) (not bm!390474) (not d!1733593) (not d!1733441) (not d!1733583) (not d!1733563) (not b!5443464) (not b!5443610) (not d!1733447) (not b!5442932) (not d!1733601) (not b!5443548) (not b!5443622) (not bm!390480) (not bm!390453) (not b!5443248) (not b!5443519) (not b!5443560) (not bs!1256209) (not bm!390478) (not bm!390479) (not d!1733591) (not d!1733585) (not b!5443401) (not bm!390447) (not bm!390471) (not b!5443635) (not b!5443568) (not b!5443408) (not d!1733561) (not b!5443508) (not b!5443651) (not b!5442930) (not bm!390445) (not bm!390475) (not b!5443632) (not b!5443577) tp_is_empty!39779 (not b!5443400) (not b!5443547) (not b!5443543) (not b!5443609) (not d!1733567) (not d!1733467) (not d!1733581) (not b!5443615) (not bm!390446) (not bm!390473) (not b!5442928) (not d!1733577) (not b!5442990) (not b!5443255) (not b!5443639) (not b!5443542) (not b!5443613) (not b!5443567) (not b!5443564) (not b!5443640) (not d!1733431) (not b!5443364) (not b!5443611) (not d!1733587) (not d!1733599) (not b!5443404) (not b!5443439) (not b!5442927) (not b!5443537) (not b!5443041) (not b!5443022) (not b!5443538) (not b!5443565) (not bm!390461) (not b!5443561) (not b!5442929) (not b_lambda!207483) (not b!5443463) (not bm!390464) (not b!5443514) (not d!1733559) (not bm!390422) (not b!5443638) (not b!5443518) (not b!5443499) (not b!5443504) (not b!5443466) (not b!5443650) (not b!5443628) (not b!5443503) (not b!5443510) (not b!5443360) (not b!5443512) (not d!1733477) (not b!5443500) (not b!5443630) (not b!5443539) (not b!5443115) (not b!5443552) (not b!5443213) (not b!5443645) (not b!5443117) (not d!1733597) (not d!1733515) (not d!1733523) (not b!5443540) (not b!5442933) (not bm!390481) (not b!5442985) (not b!5443592) (not b!5443521) (not b!5442924) (not d!1733571) (not d!1733521) (not b!5443250) (not bm!390477) (not b!5443535) (not b_lambda!207481) (not bm!390454) (not b!5442989) (not b!5443636) (not b!5442968) (not b!5443509) (not b!5443407) (not d!1733553) (not d!1733555) (not b!5443589) (not b!5443502) (not b!5443593) (not b!5443253) (not b!5442946) (not d!1733483) (not bm!390483) (not b!5442987) (not bm!390482) (not b!5443501) (not b!5443467) (not b!5443522) (not b!5443631) (not d!1733547) (not b!5443405) (not b!5443634) (not d!1733473) (not b!5443511) (not b!5443515) (not b!5443465) (not d!1733565) (not bm!390460))
(check-sat)
