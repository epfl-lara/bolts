; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!582812 () Bool)

(assert start!582812)

(declare-fun b!5625185 () Bool)

(assert (=> b!5625185 true))

(assert (=> b!5625185 true))

(declare-fun lambda!302093 () Int)

(declare-fun lambda!302092 () Int)

(assert (=> b!5625185 (not (= lambda!302093 lambda!302092))))

(assert (=> b!5625185 true))

(assert (=> b!5625185 true))

(declare-fun b!5625199 () Bool)

(assert (=> b!5625199 true))

(declare-fun b!5625178 () Bool)

(declare-fun e!3467385 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!31496 0))(
  ( (C!31497 (val!25450 Int)) )
))
(declare-datatypes ((Regex!15613 0))(
  ( (ElementMatch!15613 (c!987421 C!31496)) (Concat!24458 (regOne!31738 Regex!15613) (regTwo!31738 Regex!15613)) (EmptyExpr!15613) (Star!15613 (reg!15942 Regex!15613)) (EmptyLang!15613) (Union!15613 (regOne!31739 Regex!15613) (regTwo!31739 Regex!15613)) )
))
(declare-datatypes ((List!63138 0))(
  ( (Nil!63014) (Cons!63014 (h!69462 Regex!15613) (t!376430 List!63138)) )
))
(declare-datatypes ((Context!9994 0))(
  ( (Context!9995 (exprs!5497 List!63138)) )
))
(declare-fun lt!2261203 () (InoxSet Context!9994))

(declare-datatypes ((List!63139 0))(
  ( (Nil!63015) (Cons!63015 (h!69463 C!31496) (t!376431 List!63139)) )
))
(declare-fun s!2326 () List!63139)

(declare-fun matchZipper!1751 ((InoxSet Context!9994) List!63139) Bool)

(assert (=> b!5625178 (= e!3467385 (matchZipper!1751 lt!2261203 (t!376431 s!2326)))))

(declare-fun b!5625179 () Bool)

(declare-fun res!2382468 () Bool)

(declare-fun e!3467393 () Bool)

(assert (=> b!5625179 (=> (not res!2382468) (not e!3467393))))

(declare-fun r!7292 () Regex!15613)

(declare-datatypes ((List!63140 0))(
  ( (Nil!63016) (Cons!63016 (h!69464 Context!9994) (t!376432 List!63140)) )
))
(declare-fun zl!343 () List!63140)

(declare-fun unfocusZipper!1355 (List!63140) Regex!15613)

(assert (=> b!5625179 (= res!2382468 (= r!7292 (unfocusZipper!1355 zl!343)))))

(declare-fun b!5625180 () Bool)

(declare-fun e!3467397 () Bool)

(declare-fun tp!1557529 () Bool)

(declare-fun tp!1557534 () Bool)

(assert (=> b!5625180 (= e!3467397 (and tp!1557529 tp!1557534))))

(declare-fun b!5625181 () Bool)

(declare-datatypes ((Unit!155984 0))(
  ( (Unit!155985) )
))
(declare-fun e!3467392 () Unit!155984)

(declare-fun Unit!155986 () Unit!155984)

(assert (=> b!5625181 (= e!3467392 Unit!155986)))

(declare-fun lt!2261200 () (InoxSet Context!9994))

(declare-fun lt!2261204 () Unit!155984)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!638 ((InoxSet Context!9994) (InoxSet Context!9994) List!63139) Unit!155984)

(assert (=> b!5625181 (= lt!2261204 (lemmaZipperConcatMatchesSameAsBothZippers!638 lt!2261200 lt!2261203 (t!376431 s!2326)))))

(declare-fun res!2382472 () Bool)

(assert (=> b!5625181 (= res!2382472 (matchZipper!1751 lt!2261200 (t!376431 s!2326)))))

(assert (=> b!5625181 (=> res!2382472 e!3467385)))

(assert (=> b!5625181 (= (matchZipper!1751 ((_ map or) lt!2261200 lt!2261203) (t!376431 s!2326)) e!3467385)))

(declare-fun setIsEmpty!37546 () Bool)

(declare-fun setRes!37546 () Bool)

(assert (=> setIsEmpty!37546 setRes!37546))

(declare-fun b!5625182 () Bool)

(declare-fun res!2382481 () Bool)

(declare-fun e!3467398 () Bool)

(assert (=> b!5625182 (=> res!2382481 e!3467398)))

(declare-fun isEmpty!34846 (List!63140) Bool)

(assert (=> b!5625182 (= res!2382481 (not (isEmpty!34846 (t!376432 zl!343))))))

(declare-fun b!5625183 () Bool)

(declare-fun e!3467387 () Bool)

(declare-fun tp!1557533 () Bool)

(assert (=> b!5625183 (= e!3467387 tp!1557533)))

(declare-fun b!5625184 () Bool)

(declare-fun tp!1557532 () Bool)

(assert (=> b!5625184 (= e!3467397 tp!1557532)))

(declare-fun e!3467396 () Bool)

(assert (=> b!5625185 (= e!3467398 e!3467396)))

(declare-fun res!2382473 () Bool)

(assert (=> b!5625185 (=> res!2382473 e!3467396)))

(declare-fun lt!2261208 () Bool)

(declare-fun lt!2261197 () Bool)

(get-info :version)

(assert (=> b!5625185 (= res!2382473 (or (not (= lt!2261208 lt!2261197)) ((_ is Nil!63015) s!2326)))))

(declare-fun Exists!2713 (Int) Bool)

(assert (=> b!5625185 (= (Exists!2713 lambda!302092) (Exists!2713 lambda!302093))))

(declare-fun lt!2261199 () Unit!155984)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1342 (Regex!15613 Regex!15613 List!63139) Unit!155984)

(assert (=> b!5625185 (= lt!2261199 (lemmaExistCutMatchRandMatchRSpecEquivalent!1342 (regOne!31738 r!7292) (regTwo!31738 r!7292) s!2326))))

(assert (=> b!5625185 (= lt!2261197 (Exists!2713 lambda!302092))))

(declare-datatypes ((tuple2!65420 0))(
  ( (tuple2!65421 (_1!36013 List!63139) (_2!36013 List!63139)) )
))
(declare-datatypes ((Option!15622 0))(
  ( (None!15621) (Some!15621 (v!51666 tuple2!65420)) )
))
(declare-fun isDefined!12325 (Option!15622) Bool)

(declare-fun findConcatSeparation!2036 (Regex!15613 Regex!15613 List!63139 List!63139 List!63139) Option!15622)

(assert (=> b!5625185 (= lt!2261197 (isDefined!12325 (findConcatSeparation!2036 (regOne!31738 r!7292) (regTwo!31738 r!7292) Nil!63015 s!2326 s!2326)))))

(declare-fun lt!2261205 () Unit!155984)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1800 (Regex!15613 Regex!15613 List!63139) Unit!155984)

(assert (=> b!5625185 (= lt!2261205 (lemmaFindConcatSeparationEquivalentToExists!1800 (regOne!31738 r!7292) (regTwo!31738 r!7292) s!2326))))

(declare-fun tp!1557527 () Bool)

(declare-fun e!3467395 () Bool)

(declare-fun setElem!37546 () Context!9994)

(declare-fun setNonEmpty!37546 () Bool)

(declare-fun inv!82279 (Context!9994) Bool)

(assert (=> setNonEmpty!37546 (= setRes!37546 (and tp!1557527 (inv!82279 setElem!37546) e!3467395))))

(declare-fun z!1189 () (InoxSet Context!9994))

(declare-fun setRest!37546 () (InoxSet Context!9994))

(assert (=> setNonEmpty!37546 (= z!1189 ((_ map or) (store ((as const (Array Context!9994 Bool)) false) setElem!37546 true) setRest!37546))))

(declare-fun res!2382484 () Bool)

(assert (=> start!582812 (=> (not res!2382484) (not e!3467393))))

(declare-fun validRegex!7349 (Regex!15613) Bool)

(assert (=> start!582812 (= res!2382484 (validRegex!7349 r!7292))))

(assert (=> start!582812 e!3467393))

(assert (=> start!582812 e!3467397))

(declare-fun condSetEmpty!37546 () Bool)

(assert (=> start!582812 (= condSetEmpty!37546 (= z!1189 ((as const (Array Context!9994 Bool)) false)))))

(assert (=> start!582812 setRes!37546))

(declare-fun e!3467391 () Bool)

(assert (=> start!582812 e!3467391))

(declare-fun e!3467386 () Bool)

(assert (=> start!582812 e!3467386))

(declare-fun b!5625186 () Bool)

(declare-fun tp_is_empty!40479 () Bool)

(declare-fun tp!1557530 () Bool)

(assert (=> b!5625186 (= e!3467386 (and tp_is_empty!40479 tp!1557530))))

(declare-fun b!5625187 () Bool)

(declare-fun e!3467388 () Bool)

(declare-fun e!3467394 () Bool)

(assert (=> b!5625187 (= e!3467388 e!3467394)))

(declare-fun res!2382482 () Bool)

(assert (=> b!5625187 (=> res!2382482 e!3467394)))

(declare-fun lt!2261207 () Bool)

(assert (=> b!5625187 (= res!2382482 (= (matchZipper!1751 lt!2261200 (t!376431 s!2326)) lt!2261207))))

(declare-fun lt!2261195 () (InoxSet Context!9994))

(declare-fun e!3467389 () Bool)

(assert (=> b!5625187 (= (matchZipper!1751 lt!2261195 (t!376431 s!2326)) e!3467389)))

(declare-fun res!2382478 () Bool)

(assert (=> b!5625187 (=> res!2382478 e!3467389)))

(assert (=> b!5625187 (= res!2382478 lt!2261207)))

(declare-fun lt!2261198 () (InoxSet Context!9994))

(assert (=> b!5625187 (= lt!2261207 (matchZipper!1751 lt!2261198 (t!376431 s!2326)))))

(declare-fun lt!2261206 () (InoxSet Context!9994))

(declare-fun lt!2261193 () Unit!155984)

(assert (=> b!5625187 (= lt!2261193 (lemmaZipperConcatMatchesSameAsBothZippers!638 lt!2261198 lt!2261206 (t!376431 s!2326)))))

(declare-fun b!5625188 () Bool)

(declare-fun res!2382471 () Bool)

(assert (=> b!5625188 (=> res!2382471 e!3467398)))

(assert (=> b!5625188 (= res!2382471 (or ((_ is EmptyExpr!15613) r!7292) ((_ is EmptyLang!15613) r!7292) ((_ is ElementMatch!15613) r!7292) ((_ is Union!15613) r!7292) (not ((_ is Concat!24458) r!7292))))))

(declare-fun b!5625189 () Bool)

(assert (=> b!5625189 (= e!3467397 tp_is_empty!40479)))

(declare-fun b!5625190 () Bool)

(declare-fun tp!1557526 () Bool)

(assert (=> b!5625190 (= e!3467395 tp!1557526)))

(declare-fun b!5625191 () Bool)

(declare-fun res!2382474 () Bool)

(assert (=> b!5625191 (=> res!2382474 e!3467398)))

(declare-fun generalisedConcat!1228 (List!63138) Regex!15613)

(assert (=> b!5625191 (= res!2382474 (not (= r!7292 (generalisedConcat!1228 (exprs!5497 (h!69464 zl!343))))))))

(declare-fun b!5625192 () Bool)

(declare-fun res!2382470 () Bool)

(declare-fun e!3467390 () Bool)

(assert (=> b!5625192 (=> res!2382470 e!3467390)))

(declare-fun nullable!5645 (Regex!15613) Bool)

(assert (=> b!5625192 (= res!2382470 (not (nullable!5645 (regOne!31738 (regOne!31738 r!7292)))))))

(declare-fun b!5625193 () Bool)

(assert (=> b!5625193 (= e!3467389 (matchZipper!1751 lt!2261206 (t!376431 s!2326)))))

(declare-fun b!5625194 () Bool)

(declare-fun Unit!155987 () Unit!155984)

(assert (=> b!5625194 (= e!3467392 Unit!155987)))

(declare-fun tp!1557528 () Bool)

(declare-fun b!5625195 () Bool)

(assert (=> b!5625195 (= e!3467391 (and (inv!82279 (h!69464 zl!343)) e!3467387 tp!1557528))))

(declare-fun b!5625196 () Bool)

(declare-fun res!2382477 () Bool)

(assert (=> b!5625196 (=> res!2382477 e!3467398)))

(declare-fun generalisedUnion!1476 (List!63138) Regex!15613)

(declare-fun unfocusZipperList!1041 (List!63140) List!63138)

(assert (=> b!5625196 (= res!2382477 (not (= r!7292 (generalisedUnion!1476 (unfocusZipperList!1041 zl!343)))))))

(declare-fun b!5625197 () Bool)

(declare-fun res!2382479 () Bool)

(assert (=> b!5625197 (=> (not res!2382479) (not e!3467393))))

(declare-fun toList!9397 ((InoxSet Context!9994)) List!63140)

(assert (=> b!5625197 (= res!2382479 (= (toList!9397 z!1189) zl!343))))

(declare-fun b!5625198 () Bool)

(declare-fun res!2382475 () Bool)

(assert (=> b!5625198 (=> res!2382475 e!3467396)))

(declare-fun isEmpty!34847 (List!63138) Bool)

(assert (=> b!5625198 (= res!2382475 (isEmpty!34847 (t!376430 (exprs!5497 (h!69464 zl!343)))))))

(assert (=> b!5625199 (= e!3467396 e!3467390)))

(declare-fun res!2382469 () Bool)

(assert (=> b!5625199 (=> res!2382469 e!3467390)))

(assert (=> b!5625199 (= res!2382469 (or (and ((_ is ElementMatch!15613) (regOne!31738 r!7292)) (= (c!987421 (regOne!31738 r!7292)) (h!69463 s!2326))) ((_ is Union!15613) (regOne!31738 r!7292)) (not ((_ is Concat!24458) (regOne!31738 r!7292)))))))

(declare-fun lt!2261201 () Unit!155984)

(assert (=> b!5625199 (= lt!2261201 e!3467392)))

(declare-fun c!987420 () Bool)

(assert (=> b!5625199 (= c!987420 (nullable!5645 (h!69462 (exprs!5497 (h!69464 zl!343)))))))

(declare-fun lambda!302094 () Int)

(declare-fun flatMap!1226 ((InoxSet Context!9994) Int) (InoxSet Context!9994))

(declare-fun derivationStepZipperUp!881 (Context!9994 C!31496) (InoxSet Context!9994))

(assert (=> b!5625199 (= (flatMap!1226 z!1189 lambda!302094) (derivationStepZipperUp!881 (h!69464 zl!343) (h!69463 s!2326)))))

(declare-fun lt!2261192 () Unit!155984)

(declare-fun lemmaFlatMapOnSingletonSet!758 ((InoxSet Context!9994) Context!9994 Int) Unit!155984)

(assert (=> b!5625199 (= lt!2261192 (lemmaFlatMapOnSingletonSet!758 z!1189 (h!69464 zl!343) lambda!302094))))

(declare-fun lt!2261202 () Context!9994)

(assert (=> b!5625199 (= lt!2261203 (derivationStepZipperUp!881 lt!2261202 (h!69463 s!2326)))))

(declare-fun derivationStepZipperDown!955 (Regex!15613 Context!9994 C!31496) (InoxSet Context!9994))

(assert (=> b!5625199 (= lt!2261200 (derivationStepZipperDown!955 (h!69462 (exprs!5497 (h!69464 zl!343))) lt!2261202 (h!69463 s!2326)))))

(assert (=> b!5625199 (= lt!2261202 (Context!9995 (t!376430 (exprs!5497 (h!69464 zl!343)))))))

(declare-fun lt!2261196 () (InoxSet Context!9994))

(assert (=> b!5625199 (= lt!2261196 (derivationStepZipperUp!881 (Context!9995 (Cons!63014 (h!69462 (exprs!5497 (h!69464 zl!343))) (t!376430 (exprs!5497 (h!69464 zl!343))))) (h!69463 s!2326)))))

(declare-fun b!5625200 () Bool)

(declare-fun tp!1557535 () Bool)

(declare-fun tp!1557531 () Bool)

(assert (=> b!5625200 (= e!3467397 (and tp!1557535 tp!1557531))))

(declare-fun b!5625201 () Bool)

(assert (=> b!5625201 (= e!3467393 (not e!3467398))))

(declare-fun res!2382476 () Bool)

(assert (=> b!5625201 (=> res!2382476 e!3467398)))

(assert (=> b!5625201 (= res!2382476 (not ((_ is Cons!63016) zl!343)))))

(declare-fun matchRSpec!2716 (Regex!15613 List!63139) Bool)

(assert (=> b!5625201 (= lt!2261208 (matchRSpec!2716 r!7292 s!2326))))

(declare-fun matchR!7798 (Regex!15613 List!63139) Bool)

(assert (=> b!5625201 (= lt!2261208 (matchR!7798 r!7292 s!2326))))

(declare-fun lt!2261194 () Unit!155984)

(declare-fun mainMatchTheorem!2716 (Regex!15613 List!63139) Unit!155984)

(assert (=> b!5625201 (= lt!2261194 (mainMatchTheorem!2716 r!7292 s!2326))))

(declare-fun b!5625202 () Bool)

(assert (=> b!5625202 (= e!3467394 (matchZipper!1751 lt!2261206 (t!376431 s!2326)))))

(declare-fun b!5625203 () Bool)

(assert (=> b!5625203 (= e!3467390 e!3467388)))

(declare-fun res!2382483 () Bool)

(assert (=> b!5625203 (=> res!2382483 e!3467388)))

(assert (=> b!5625203 (= res!2382483 (not (= lt!2261200 lt!2261195)))))

(assert (=> b!5625203 (= lt!2261195 ((_ map or) lt!2261198 lt!2261206))))

(assert (=> b!5625203 (= lt!2261206 (derivationStepZipperDown!955 (regTwo!31738 (regOne!31738 r!7292)) lt!2261202 (h!69463 s!2326)))))

(assert (=> b!5625203 (= lt!2261198 (derivationStepZipperDown!955 (regOne!31738 (regOne!31738 r!7292)) (Context!9995 (Cons!63014 (regTwo!31738 (regOne!31738 r!7292)) (t!376430 (exprs!5497 (h!69464 zl!343))))) (h!69463 s!2326)))))

(declare-fun b!5625204 () Bool)

(declare-fun res!2382480 () Bool)

(assert (=> b!5625204 (=> res!2382480 e!3467398)))

(assert (=> b!5625204 (= res!2382480 (not ((_ is Cons!63014) (exprs!5497 (h!69464 zl!343)))))))

(assert (= (and start!582812 res!2382484) b!5625197))

(assert (= (and b!5625197 res!2382479) b!5625179))

(assert (= (and b!5625179 res!2382468) b!5625201))

(assert (= (and b!5625201 (not res!2382476)) b!5625182))

(assert (= (and b!5625182 (not res!2382481)) b!5625191))

(assert (= (and b!5625191 (not res!2382474)) b!5625204))

(assert (= (and b!5625204 (not res!2382480)) b!5625196))

(assert (= (and b!5625196 (not res!2382477)) b!5625188))

(assert (= (and b!5625188 (not res!2382471)) b!5625185))

(assert (= (and b!5625185 (not res!2382473)) b!5625198))

(assert (= (and b!5625198 (not res!2382475)) b!5625199))

(assert (= (and b!5625199 c!987420) b!5625181))

(assert (= (and b!5625199 (not c!987420)) b!5625194))

(assert (= (and b!5625181 (not res!2382472)) b!5625178))

(assert (= (and b!5625199 (not res!2382469)) b!5625192))

(assert (= (and b!5625192 (not res!2382470)) b!5625203))

(assert (= (and b!5625203 (not res!2382483)) b!5625187))

(assert (= (and b!5625187 (not res!2382478)) b!5625193))

(assert (= (and b!5625187 (not res!2382482)) b!5625202))

(assert (= (and start!582812 ((_ is ElementMatch!15613) r!7292)) b!5625189))

(assert (= (and start!582812 ((_ is Concat!24458) r!7292)) b!5625180))

(assert (= (and start!582812 ((_ is Star!15613) r!7292)) b!5625184))

(assert (= (and start!582812 ((_ is Union!15613) r!7292)) b!5625200))

(assert (= (and start!582812 condSetEmpty!37546) setIsEmpty!37546))

(assert (= (and start!582812 (not condSetEmpty!37546)) setNonEmpty!37546))

(assert (= setNonEmpty!37546 b!5625190))

(assert (= b!5625195 b!5625183))

(assert (= (and start!582812 ((_ is Cons!63016) zl!343)) b!5625195))

(assert (= (and start!582812 ((_ is Cons!63015) s!2326)) b!5625186))

(declare-fun m!6597714 () Bool)

(assert (=> setNonEmpty!37546 m!6597714))

(declare-fun m!6597716 () Bool)

(assert (=> b!5625191 m!6597716))

(declare-fun m!6597718 () Bool)

(assert (=> b!5625199 m!6597718))

(declare-fun m!6597720 () Bool)

(assert (=> b!5625199 m!6597720))

(declare-fun m!6597722 () Bool)

(assert (=> b!5625199 m!6597722))

(declare-fun m!6597724 () Bool)

(assert (=> b!5625199 m!6597724))

(declare-fun m!6597726 () Bool)

(assert (=> b!5625199 m!6597726))

(declare-fun m!6597728 () Bool)

(assert (=> b!5625199 m!6597728))

(declare-fun m!6597730 () Bool)

(assert (=> b!5625199 m!6597730))

(declare-fun m!6597732 () Bool)

(assert (=> b!5625178 m!6597732))

(declare-fun m!6597734 () Bool)

(assert (=> start!582812 m!6597734))

(declare-fun m!6597736 () Bool)

(assert (=> b!5625198 m!6597736))

(declare-fun m!6597738 () Bool)

(assert (=> b!5625195 m!6597738))

(declare-fun m!6597740 () Bool)

(assert (=> b!5625203 m!6597740))

(declare-fun m!6597742 () Bool)

(assert (=> b!5625203 m!6597742))

(declare-fun m!6597744 () Bool)

(assert (=> b!5625179 m!6597744))

(declare-fun m!6597746 () Bool)

(assert (=> b!5625192 m!6597746))

(declare-fun m!6597748 () Bool)

(assert (=> b!5625182 m!6597748))

(declare-fun m!6597750 () Bool)

(assert (=> b!5625196 m!6597750))

(assert (=> b!5625196 m!6597750))

(declare-fun m!6597752 () Bool)

(assert (=> b!5625196 m!6597752))

(declare-fun m!6597754 () Bool)

(assert (=> b!5625181 m!6597754))

(declare-fun m!6597756 () Bool)

(assert (=> b!5625181 m!6597756))

(declare-fun m!6597758 () Bool)

(assert (=> b!5625181 m!6597758))

(assert (=> b!5625187 m!6597756))

(declare-fun m!6597760 () Bool)

(assert (=> b!5625187 m!6597760))

(declare-fun m!6597762 () Bool)

(assert (=> b!5625187 m!6597762))

(declare-fun m!6597764 () Bool)

(assert (=> b!5625187 m!6597764))

(declare-fun m!6597766 () Bool)

(assert (=> b!5625197 m!6597766))

(declare-fun m!6597768 () Bool)

(assert (=> b!5625185 m!6597768))

(declare-fun m!6597770 () Bool)

(assert (=> b!5625185 m!6597770))

(declare-fun m!6597772 () Bool)

(assert (=> b!5625185 m!6597772))

(declare-fun m!6597774 () Bool)

(assert (=> b!5625185 m!6597774))

(assert (=> b!5625185 m!6597768))

(declare-fun m!6597776 () Bool)

(assert (=> b!5625185 m!6597776))

(assert (=> b!5625185 m!6597772))

(declare-fun m!6597778 () Bool)

(assert (=> b!5625185 m!6597778))

(declare-fun m!6597780 () Bool)

(assert (=> b!5625202 m!6597780))

(assert (=> b!5625193 m!6597780))

(declare-fun m!6597782 () Bool)

(assert (=> b!5625201 m!6597782))

(declare-fun m!6597784 () Bool)

(assert (=> b!5625201 m!6597784))

(declare-fun m!6597786 () Bool)

(assert (=> b!5625201 m!6597786))

(check-sat (not b!5625202) (not b!5625179) (not b!5625200) (not b!5625197) (not b!5625185) (not setNonEmpty!37546) (not b!5625196) (not b!5625183) (not b!5625181) (not b!5625190) (not start!582812) (not b!5625184) (not b!5625201) (not b!5625195) (not b!5625186) (not b!5625203) (not b!5625191) (not b!5625178) (not b!5625198) (not b!5625193) (not b!5625182) tp_is_empty!40479 (not b!5625192) (not b!5625199) (not b!5625187) (not b!5625180))
(check-sat)
