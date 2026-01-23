; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!572274 () Bool)

(assert start!572274)

(declare-fun b!5466757 () Bool)

(assert (=> b!5466757 true))

(assert (=> b!5466757 true))

(declare-fun lambda!290539 () Int)

(declare-fun lambda!290538 () Int)

(assert (=> b!5466757 (not (= lambda!290539 lambda!290538))))

(assert (=> b!5466757 true))

(assert (=> b!5466757 true))

(declare-fun lambda!290540 () Int)

(assert (=> b!5466757 (not (= lambda!290540 lambda!290538))))

(assert (=> b!5466757 (not (= lambda!290540 lambda!290539))))

(assert (=> b!5466757 true))

(assert (=> b!5466757 true))

(declare-fun b!5466764 () Bool)

(assert (=> b!5466764 true))

(declare-fun b!5466753 () Bool)

(declare-fun res!2329201 () Bool)

(declare-fun e!3384539 () Bool)

(assert (=> b!5466753 (=> res!2329201 e!3384539)))

(declare-datatypes ((C!30912 0))(
  ( (C!30913 (val!25158 Int)) )
))
(declare-datatypes ((Regex!15321 0))(
  ( (ElementMatch!15321 (c!955065 C!30912)) (Concat!24166 (regOne!31154 Regex!15321) (regTwo!31154 Regex!15321)) (EmptyExpr!15321) (Star!15321 (reg!15650 Regex!15321)) (EmptyLang!15321) (Union!15321 (regOne!31155 Regex!15321) (regTwo!31155 Regex!15321)) )
))
(declare-fun r!7292 () Regex!15321)

(declare-datatypes ((List!62262 0))(
  ( (Nil!62138) (Cons!62138 (h!68586 Regex!15321) (t!375491 List!62262)) )
))
(declare-datatypes ((Context!9410 0))(
  ( (Context!9411 (exprs!5205 List!62262)) )
))
(declare-datatypes ((List!62263 0))(
  ( (Nil!62139) (Cons!62139 (h!68587 Context!9410) (t!375492 List!62263)) )
))
(declare-fun zl!343 () List!62263)

(declare-fun generalisedConcat!990 (List!62262) Regex!15321)

(assert (=> b!5466753 (= res!2329201 (not (= r!7292 (generalisedConcat!990 (exprs!5205 (h!68587 zl!343))))))))

(declare-fun b!5466754 () Bool)

(declare-fun e!3384534 () Bool)

(declare-fun lt!2233587 () Bool)

(assert (=> b!5466754 (= e!3384534 lt!2233587)))

(declare-fun e!3384540 () Bool)

(declare-fun b!5466755 () Bool)

(declare-fun tp!1503594 () Bool)

(declare-fun e!3384543 () Bool)

(declare-fun inv!81549 (Context!9410) Bool)

(assert (=> b!5466755 (= e!3384543 (and (inv!81549 (h!68587 zl!343)) e!3384540 tp!1503594))))

(declare-fun b!5466756 () Bool)

(declare-fun res!2329208 () Bool)

(assert (=> b!5466756 (=> res!2329208 e!3384539)))

(declare-fun generalisedUnion!1250 (List!62262) Regex!15321)

(declare-fun unfocusZipperList!763 (List!62263) List!62262)

(assert (=> b!5466756 (= res!2329208 (not (= r!7292 (generalisedUnion!1250 (unfocusZipperList!763 zl!343)))))))

(declare-fun b!5466758 () Bool)

(declare-fun res!2329197 () Bool)

(declare-fun e!3384538 () Bool)

(assert (=> b!5466758 (=> res!2329197 e!3384538)))

(declare-fun lt!2233586 () Context!9410)

(declare-fun unfocusZipper!1063 (List!62263) Regex!15321)

(assert (=> b!5466758 (= res!2329197 (not (= (unfocusZipper!1063 (Cons!62139 lt!2233586 Nil!62139)) (Concat!24166 (reg!15650 r!7292) r!7292))))))

(declare-fun b!5466759 () Bool)

(declare-fun res!2329191 () Bool)

(declare-fun e!3384542 () Bool)

(assert (=> b!5466759 (=> res!2329191 e!3384542)))

(declare-datatypes ((List!62264 0))(
  ( (Nil!62140) (Cons!62140 (h!68588 C!30912) (t!375493 List!62264)) )
))
(declare-fun s!2326 () List!62264)

(get-info :version)

(assert (=> b!5466759 (= res!2329191 ((_ is Nil!62140) s!2326))))

(declare-fun b!5466760 () Bool)

(declare-fun e!3384544 () Bool)

(declare-fun tp_is_empty!39895 () Bool)

(declare-fun tp!1503597 () Bool)

(assert (=> b!5466760 (= e!3384544 (and tp_is_empty!39895 tp!1503597))))

(declare-fun b!5466761 () Bool)

(declare-fun e!3384536 () Bool)

(declare-fun tp!1503600 () Bool)

(assert (=> b!5466761 (= e!3384536 tp!1503600)))

(declare-fun b!5466762 () Bool)

(declare-fun e!3384532 () Bool)

(declare-fun tp!1503599 () Bool)

(assert (=> b!5466762 (= e!3384532 tp!1503599)))

(declare-fun b!5466763 () Bool)

(declare-fun e!3384535 () Bool)

(assert (=> b!5466763 (= e!3384535 e!3384538)))

(declare-fun res!2329202 () Bool)

(assert (=> b!5466763 (=> res!2329202 e!3384538)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2233582 () (InoxSet Context!9410))

(declare-fun lt!2233581 () Context!9410)

(declare-fun derivationStepZipperDown!747 (Regex!15321 Context!9410 C!30912) (InoxSet Context!9410))

(assert (=> b!5466763 (= res!2329202 (not (= lt!2233582 (derivationStepZipperDown!747 (reg!15650 r!7292) lt!2233581 (h!68588 s!2326)))))))

(declare-fun lt!2233585 () List!62262)

(assert (=> b!5466763 (= lt!2233581 (Context!9411 lt!2233585))))

(declare-fun lambda!290541 () Int)

(declare-fun lt!2233597 () (InoxSet Context!9410))

(declare-fun flatMap!1024 ((InoxSet Context!9410) Int) (InoxSet Context!9410))

(declare-fun derivationStepZipperUp!673 (Context!9410 C!30912) (InoxSet Context!9410))

(assert (=> b!5466763 (= (flatMap!1024 lt!2233597 lambda!290541) (derivationStepZipperUp!673 lt!2233586 (h!68588 s!2326)))))

(declare-datatypes ((Unit!155092 0))(
  ( (Unit!155093) )
))
(declare-fun lt!2233588 () Unit!155092)

(declare-fun lemmaFlatMapOnSingletonSet!556 ((InoxSet Context!9410) Context!9410 Int) Unit!155092)

(assert (=> b!5466763 (= lt!2233588 (lemmaFlatMapOnSingletonSet!556 lt!2233597 lt!2233586 lambda!290541))))

(declare-fun lt!2233584 () (InoxSet Context!9410))

(assert (=> b!5466763 (= lt!2233584 (derivationStepZipperUp!673 lt!2233586 (h!68588 s!2326)))))

(assert (=> b!5466763 (= lt!2233597 (store ((as const (Array Context!9410 Bool)) false) lt!2233586 true))))

(assert (=> b!5466763 (= lt!2233586 (Context!9411 (Cons!62138 (reg!15650 r!7292) lt!2233585)))))

(assert (=> b!5466763 (= lt!2233585 (Cons!62138 r!7292 Nil!62138))))

(declare-fun setIsEmpty!35845 () Bool)

(declare-fun setRes!35845 () Bool)

(assert (=> setIsEmpty!35845 setRes!35845))

(declare-fun e!3384533 () Bool)

(assert (=> b!5466764 (= e!3384533 e!3384535)))

(declare-fun res!2329203 () Bool)

(assert (=> b!5466764 (=> res!2329203 e!3384535)))

(declare-fun lt!2233595 () (InoxSet Context!9410))

(assert (=> b!5466764 (= res!2329203 (not (= lt!2233582 lt!2233595)))))

(declare-fun z!1189 () (InoxSet Context!9410))

(assert (=> b!5466764 (= (flatMap!1024 z!1189 lambda!290541) (derivationStepZipperUp!673 (h!68587 zl!343) (h!68588 s!2326)))))

(declare-fun lt!2233589 () Unit!155092)

(assert (=> b!5466764 (= lt!2233589 (lemmaFlatMapOnSingletonSet!556 z!1189 (h!68587 zl!343) lambda!290541))))

(declare-fun tp!1503593 () Bool)

(declare-fun setElem!35845 () Context!9410)

(declare-fun setNonEmpty!35845 () Bool)

(assert (=> setNonEmpty!35845 (= setRes!35845 (and tp!1503593 (inv!81549 setElem!35845) e!3384536))))

(declare-fun setRest!35845 () (InoxSet Context!9410))

(assert (=> setNonEmpty!35845 (= z!1189 ((_ map or) (store ((as const (Array Context!9410 Bool)) false) setElem!35845 true) setRest!35845))))

(declare-fun b!5466765 () Bool)

(declare-fun res!2329205 () Bool)

(assert (=> b!5466765 (=> res!2329205 e!3384538)))

(declare-fun matchZipper!1539 ((InoxSet Context!9410) List!62264) Bool)

(declare-fun derivationStepZipper!1516 ((InoxSet Context!9410) C!30912) (InoxSet Context!9410))

(assert (=> b!5466765 (= res!2329205 (not (= (matchZipper!1539 lt!2233597 s!2326) (matchZipper!1539 (derivationStepZipper!1516 lt!2233597 (h!68588 s!2326)) (t!375493 s!2326)))))))

(declare-fun b!5466766 () Bool)

(declare-fun res!2329192 () Bool)

(assert (=> b!5466766 (=> res!2329192 e!3384538)))

(declare-fun lt!2233591 () Regex!15321)

(assert (=> b!5466766 (= res!2329192 (or (not (= lt!2233591 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!5466767 () Bool)

(declare-fun tp!1503595 () Bool)

(declare-fun tp!1503601 () Bool)

(assert (=> b!5466767 (= e!3384532 (and tp!1503595 tp!1503601))))

(declare-fun res!2329195 () Bool)

(declare-fun e!3384541 () Bool)

(assert (=> start!572274 (=> (not res!2329195) (not e!3384541))))

(declare-fun validRegex!7057 (Regex!15321) Bool)

(assert (=> start!572274 (= res!2329195 (validRegex!7057 r!7292))))

(assert (=> start!572274 e!3384541))

(assert (=> start!572274 e!3384532))

(declare-fun condSetEmpty!35845 () Bool)

(assert (=> start!572274 (= condSetEmpty!35845 (= z!1189 ((as const (Array Context!9410 Bool)) false)))))

(assert (=> start!572274 setRes!35845))

(assert (=> start!572274 e!3384543))

(assert (=> start!572274 e!3384544))

(assert (=> b!5466757 (= e!3384539 e!3384542)))

(declare-fun res!2329206 () Bool)

(assert (=> b!5466757 (=> res!2329206 e!3384542)))

(declare-fun lt!2233596 () Bool)

(assert (=> b!5466757 (= res!2329206 (not (= lt!2233596 e!3384534)))))

(declare-fun res!2329200 () Bool)

(assert (=> b!5466757 (=> res!2329200 e!3384534)))

(declare-fun isEmpty!34102 (List!62264) Bool)

(assert (=> b!5466757 (= res!2329200 (isEmpty!34102 s!2326))))

(declare-fun Exists!2500 (Int) Bool)

(assert (=> b!5466757 (= (Exists!2500 lambda!290538) (Exists!2500 lambda!290540))))

(declare-fun lt!2233580 () Unit!155092)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1150 (Regex!15321 Regex!15321 List!62264) Unit!155092)

(assert (=> b!5466757 (= lt!2233580 (lemmaExistCutMatchRandMatchRSpecEquivalent!1150 (reg!15650 r!7292) r!7292 s!2326))))

(assert (=> b!5466757 (= (Exists!2500 lambda!290538) (Exists!2500 lambda!290539))))

(declare-fun lt!2233594 () Unit!155092)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!474 (Regex!15321 List!62264) Unit!155092)

(assert (=> b!5466757 (= lt!2233594 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!474 (reg!15650 r!7292) s!2326))))

(assert (=> b!5466757 (= lt!2233587 (Exists!2500 lambda!290538))))

(declare-datatypes ((tuple2!65036 0))(
  ( (tuple2!65037 (_1!35821 List!62264) (_2!35821 List!62264)) )
))
(declare-datatypes ((Option!15430 0))(
  ( (None!15429) (Some!15429 (v!51458 tuple2!65036)) )
))
(declare-fun isDefined!12133 (Option!15430) Bool)

(declare-fun findConcatSeparation!1844 (Regex!15321 Regex!15321 List!62264 List!62264 List!62264) Option!15430)

(assert (=> b!5466757 (= lt!2233587 (isDefined!12133 (findConcatSeparation!1844 (reg!15650 r!7292) r!7292 Nil!62140 s!2326 s!2326)))))

(declare-fun lt!2233593 () Unit!155092)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1608 (Regex!15321 Regex!15321 List!62264) Unit!155092)

(assert (=> b!5466757 (= lt!2233593 (lemmaFindConcatSeparationEquivalentToExists!1608 (reg!15650 r!7292) r!7292 s!2326))))

(declare-fun b!5466768 () Bool)

(assert (=> b!5466768 (= e!3384542 e!3384533)))

(declare-fun res!2329207 () Bool)

(assert (=> b!5466768 (=> res!2329207 e!3384533)))

(declare-fun lt!2233579 () (InoxSet Context!9410))

(assert (=> b!5466768 (= res!2329207 (not (= lt!2233579 lt!2233595)))))

(assert (=> b!5466768 (= lt!2233595 (derivationStepZipperDown!747 r!7292 (Context!9411 Nil!62138) (h!68588 s!2326)))))

(assert (=> b!5466768 (= lt!2233579 (derivationStepZipperUp!673 (Context!9411 (Cons!62138 r!7292 Nil!62138)) (h!68588 s!2326)))))

(assert (=> b!5466768 (= lt!2233582 (derivationStepZipper!1516 z!1189 (h!68588 s!2326)))))

(declare-fun b!5466769 () Bool)

(assert (=> b!5466769 (= e!3384532 tp_is_empty!39895)))

(declare-fun b!5466770 () Bool)

(assert (=> b!5466770 (= e!3384538 true)))

(declare-fun lt!2233583 () (InoxSet Context!9410))

(assert (=> b!5466770 (= lt!2233583 (derivationStepZipperUp!673 lt!2233581 (h!68588 s!2326)))))

(declare-fun lt!2233592 () (InoxSet Context!9410))

(assert (=> b!5466770 (= lt!2233592 (derivationStepZipperUp!673 (Context!9411 (Cons!62138 (reg!15650 r!7292) Nil!62138)) (h!68588 s!2326)))))

(declare-fun b!5466771 () Bool)

(declare-fun res!2329199 () Bool)

(assert (=> b!5466771 (=> res!2329199 e!3384539)))

(assert (=> b!5466771 (= res!2329199 (not ((_ is Cons!62138) (exprs!5205 (h!68587 zl!343)))))))

(declare-fun b!5466772 () Bool)

(declare-fun res!2329196 () Bool)

(assert (=> b!5466772 (=> (not res!2329196) (not e!3384541))))

(declare-fun toList!9105 ((InoxSet Context!9410)) List!62263)

(assert (=> b!5466772 (= res!2329196 (= (toList!9105 z!1189) zl!343))))

(declare-fun b!5466773 () Bool)

(declare-fun tp!1503598 () Bool)

(declare-fun tp!1503592 () Bool)

(assert (=> b!5466773 (= e!3384532 (and tp!1503598 tp!1503592))))

(declare-fun b!5466774 () Bool)

(declare-fun res!2329194 () Bool)

(assert (=> b!5466774 (=> res!2329194 e!3384539)))

(assert (=> b!5466774 (= res!2329194 (or ((_ is EmptyExpr!15321) r!7292) ((_ is EmptyLang!15321) r!7292) ((_ is ElementMatch!15321) r!7292) ((_ is Union!15321) r!7292) ((_ is Concat!24166) r!7292)))))

(declare-fun b!5466775 () Bool)

(declare-fun res!2329198 () Bool)

(assert (=> b!5466775 (=> res!2329198 e!3384539)))

(declare-fun isEmpty!34103 (List!62263) Bool)

(assert (=> b!5466775 (= res!2329198 (not (isEmpty!34103 (t!375492 zl!343))))))

(declare-fun b!5466776 () Bool)

(declare-fun e!3384537 () Bool)

(assert (=> b!5466776 (= e!3384537 (not e!3384539))))

(declare-fun res!2329193 () Bool)

(assert (=> b!5466776 (=> res!2329193 e!3384539)))

(assert (=> b!5466776 (= res!2329193 (not ((_ is Cons!62139) zl!343)))))

(declare-fun matchRSpec!2424 (Regex!15321 List!62264) Bool)

(assert (=> b!5466776 (= lt!2233596 (matchRSpec!2424 r!7292 s!2326))))

(declare-fun matchR!7506 (Regex!15321 List!62264) Bool)

(assert (=> b!5466776 (= lt!2233596 (matchR!7506 r!7292 s!2326))))

(declare-fun lt!2233590 () Unit!155092)

(declare-fun mainMatchTheorem!2424 (Regex!15321 List!62264) Unit!155092)

(assert (=> b!5466776 (= lt!2233590 (mainMatchTheorem!2424 r!7292 s!2326))))

(declare-fun b!5466777 () Bool)

(assert (=> b!5466777 (= e!3384541 e!3384537)))

(declare-fun res!2329204 () Bool)

(assert (=> b!5466777 (=> (not res!2329204) (not e!3384537))))

(assert (=> b!5466777 (= res!2329204 (= r!7292 lt!2233591))))

(assert (=> b!5466777 (= lt!2233591 (unfocusZipper!1063 zl!343))))

(declare-fun b!5466778 () Bool)

(declare-fun tp!1503596 () Bool)

(assert (=> b!5466778 (= e!3384540 tp!1503596)))

(assert (= (and start!572274 res!2329195) b!5466772))

(assert (= (and b!5466772 res!2329196) b!5466777))

(assert (= (and b!5466777 res!2329204) b!5466776))

(assert (= (and b!5466776 (not res!2329193)) b!5466775))

(assert (= (and b!5466775 (not res!2329198)) b!5466753))

(assert (= (and b!5466753 (not res!2329201)) b!5466771))

(assert (= (and b!5466771 (not res!2329199)) b!5466756))

(assert (= (and b!5466756 (not res!2329208)) b!5466774))

(assert (= (and b!5466774 (not res!2329194)) b!5466757))

(assert (= (and b!5466757 (not res!2329200)) b!5466754))

(assert (= (and b!5466757 (not res!2329206)) b!5466759))

(assert (= (and b!5466759 (not res!2329191)) b!5466768))

(assert (= (and b!5466768 (not res!2329207)) b!5466764))

(assert (= (and b!5466764 (not res!2329203)) b!5466763))

(assert (= (and b!5466763 (not res!2329202)) b!5466765))

(assert (= (and b!5466765 (not res!2329205)) b!5466766))

(assert (= (and b!5466766 (not res!2329192)) b!5466758))

(assert (= (and b!5466758 (not res!2329197)) b!5466770))

(assert (= (and start!572274 ((_ is ElementMatch!15321) r!7292)) b!5466769))

(assert (= (and start!572274 ((_ is Concat!24166) r!7292)) b!5466767))

(assert (= (and start!572274 ((_ is Star!15321) r!7292)) b!5466762))

(assert (= (and start!572274 ((_ is Union!15321) r!7292)) b!5466773))

(assert (= (and start!572274 condSetEmpty!35845) setIsEmpty!35845))

(assert (= (and start!572274 (not condSetEmpty!35845)) setNonEmpty!35845))

(assert (= setNonEmpty!35845 b!5466761))

(assert (= b!5466755 b!5466778))

(assert (= (and start!572274 ((_ is Cons!62139) zl!343)) b!5466755))

(assert (= (and start!572274 ((_ is Cons!62140) s!2326)) b!5466760))

(declare-fun m!6486020 () Bool)

(assert (=> b!5466755 m!6486020))

(declare-fun m!6486022 () Bool)

(assert (=> b!5466757 m!6486022))

(declare-fun m!6486024 () Bool)

(assert (=> b!5466757 m!6486024))

(declare-fun m!6486026 () Bool)

(assert (=> b!5466757 m!6486026))

(declare-fun m!6486028 () Bool)

(assert (=> b!5466757 m!6486028))

(assert (=> b!5466757 m!6486024))

(declare-fun m!6486030 () Bool)

(assert (=> b!5466757 m!6486030))

(declare-fun m!6486032 () Bool)

(assert (=> b!5466757 m!6486032))

(assert (=> b!5466757 m!6486024))

(declare-fun m!6486034 () Bool)

(assert (=> b!5466757 m!6486034))

(declare-fun m!6486036 () Bool)

(assert (=> b!5466757 m!6486036))

(assert (=> b!5466757 m!6486030))

(declare-fun m!6486038 () Bool)

(assert (=> b!5466757 m!6486038))

(declare-fun m!6486040 () Bool)

(assert (=> b!5466772 m!6486040))

(declare-fun m!6486042 () Bool)

(assert (=> b!5466756 m!6486042))

(assert (=> b!5466756 m!6486042))

(declare-fun m!6486044 () Bool)

(assert (=> b!5466756 m!6486044))

(declare-fun m!6486046 () Bool)

(assert (=> b!5466765 m!6486046))

(declare-fun m!6486048 () Bool)

(assert (=> b!5466765 m!6486048))

(assert (=> b!5466765 m!6486048))

(declare-fun m!6486050 () Bool)

(assert (=> b!5466765 m!6486050))

(declare-fun m!6486052 () Bool)

(assert (=> b!5466753 m!6486052))

(declare-fun m!6486054 () Bool)

(assert (=> b!5466776 m!6486054))

(declare-fun m!6486056 () Bool)

(assert (=> b!5466776 m!6486056))

(declare-fun m!6486058 () Bool)

(assert (=> b!5466776 m!6486058))

(declare-fun m!6486060 () Bool)

(assert (=> start!572274 m!6486060))

(declare-fun m!6486062 () Bool)

(assert (=> b!5466758 m!6486062))

(declare-fun m!6486064 () Bool)

(assert (=> b!5466764 m!6486064))

(declare-fun m!6486066 () Bool)

(assert (=> b!5466764 m!6486066))

(declare-fun m!6486068 () Bool)

(assert (=> b!5466764 m!6486068))

(declare-fun m!6486070 () Bool)

(assert (=> b!5466770 m!6486070))

(declare-fun m!6486072 () Bool)

(assert (=> b!5466770 m!6486072))

(declare-fun m!6486074 () Bool)

(assert (=> b!5466763 m!6486074))

(declare-fun m!6486076 () Bool)

(assert (=> b!5466763 m!6486076))

(declare-fun m!6486078 () Bool)

(assert (=> b!5466763 m!6486078))

(declare-fun m!6486080 () Bool)

(assert (=> b!5466763 m!6486080))

(declare-fun m!6486082 () Bool)

(assert (=> b!5466763 m!6486082))

(declare-fun m!6486084 () Bool)

(assert (=> b!5466777 m!6486084))

(declare-fun m!6486086 () Bool)

(assert (=> b!5466768 m!6486086))

(declare-fun m!6486088 () Bool)

(assert (=> b!5466768 m!6486088))

(declare-fun m!6486090 () Bool)

(assert (=> b!5466768 m!6486090))

(declare-fun m!6486092 () Bool)

(assert (=> setNonEmpty!35845 m!6486092))

(declare-fun m!6486094 () Bool)

(assert (=> b!5466775 m!6486094))

(check-sat (not b!5466772) (not b!5466773) (not b!5466776) (not b!5466753) (not b!5466777) (not b!5466756) (not b!5466755) (not b!5466767) (not b!5466768) (not b!5466770) (not b!5466778) (not b!5466758) (not b!5466765) (not b!5466764) (not start!572274) (not setNonEmpty!35845) (not b!5466763) (not b!5466762) tp_is_empty!39895 (not b!5466761) (not b!5466760) (not b!5466775) (not b!5466757))
(check-sat)
