; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!563930 () Bool)

(assert start!563930)

(declare-fun b!5355676 () Bool)

(assert (=> b!5355676 true))

(assert (=> b!5355676 true))

(declare-fun lambda!275436 () Int)

(declare-fun lambda!275435 () Int)

(assert (=> b!5355676 (not (= lambda!275436 lambda!275435))))

(assert (=> b!5355676 true))

(assert (=> b!5355676 true))

(declare-fun b!5355679 () Bool)

(assert (=> b!5355679 true))

(declare-fun setNonEmpty!34627 () Bool)

(declare-fun e!3324308 () Bool)

(declare-datatypes ((C!30368 0))(
  ( (C!30369 (val!24886 Int)) )
))
(declare-datatypes ((Regex!15049 0))(
  ( (ElementMatch!15049 (c!932527 C!30368)) (Concat!23894 (regOne!30610 Regex!15049) (regTwo!30610 Regex!15049)) (EmptyExpr!15049) (Star!15049 (reg!15378 Regex!15049)) (EmptyLang!15049) (Union!15049 (regOne!30611 Regex!15049) (regTwo!30611 Regex!15049)) )
))
(declare-datatypes ((List!61446 0))(
  ( (Nil!61322) (Cons!61322 (h!67770 Regex!15049) (t!374667 List!61446)) )
))
(declare-datatypes ((Context!8866 0))(
  ( (Context!8867 (exprs!4933 List!61446)) )
))
(declare-fun setElem!34627 () Context!8866)

(declare-fun setRes!34627 () Bool)

(declare-fun tp!1487569 () Bool)

(declare-fun inv!80869 (Context!8866) Bool)

(assert (=> setNonEmpty!34627 (= setRes!34627 (and tp!1487569 (inv!80869 setElem!34627) e!3324308))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8866))

(declare-fun setRest!34627 () (InoxSet Context!8866))

(assert (=> setNonEmpty!34627 (= z!1189 ((_ map or) (store ((as const (Array Context!8866 Bool)) false) setElem!34627 true) setRest!34627))))

(declare-fun b!5355670 () Bool)

(declare-fun e!3324315 () Bool)

(declare-fun tp_is_empty!39351 () Bool)

(assert (=> b!5355670 (= e!3324315 tp_is_empty!39351)))

(declare-fun b!5355671 () Bool)

(declare-fun res!2272311 () Bool)

(declare-fun e!3324317 () Bool)

(assert (=> b!5355671 (=> res!2272311 e!3324317)))

(declare-fun e!3324318 () Bool)

(assert (=> b!5355671 (= res!2272311 e!3324318)))

(declare-fun res!2272319 () Bool)

(assert (=> b!5355671 (=> (not res!2272319) (not e!3324318))))

(declare-fun r!7292 () Regex!15049)

(get-info :version)

(assert (=> b!5355671 (= res!2272319 ((_ is Concat!23894) (regOne!30610 r!7292)))))

(declare-fun b!5355672 () Bool)

(declare-fun e!3324319 () Bool)

(assert (=> b!5355672 (= e!3324317 e!3324319)))

(declare-fun res!2272313 () Bool)

(assert (=> b!5355672 (=> res!2272313 e!3324319)))

(declare-fun lt!2182077 () (InoxSet Context!8866))

(declare-fun lt!2182066 () (InoxSet Context!8866))

(assert (=> b!5355672 (= res!2272313 (not (= lt!2182077 lt!2182066)))))

(declare-datatypes ((List!61447 0))(
  ( (Nil!61323) (Cons!61323 (h!67771 C!30368) (t!374668 List!61447)) )
))
(declare-fun s!2326 () List!61447)

(declare-fun lt!2182063 () Context!8866)

(declare-fun derivationStepZipperDown!497 (Regex!15049 Context!8866 C!30368) (InoxSet Context!8866))

(assert (=> b!5355672 (= lt!2182066 (derivationStepZipperDown!497 (reg!15378 (regOne!30610 r!7292)) lt!2182063 (h!67771 s!2326)))))

(declare-fun lt!2182082 () List!61446)

(assert (=> b!5355672 (= lt!2182063 (Context!8867 lt!2182082))))

(declare-fun lt!2182057 () Regex!15049)

(declare-datatypes ((List!61448 0))(
  ( (Nil!61324) (Cons!61324 (h!67772 Context!8866) (t!374669 List!61448)) )
))
(declare-fun zl!343 () List!61448)

(assert (=> b!5355672 (= lt!2182082 (Cons!61322 lt!2182057 (t!374667 (exprs!4933 (h!67772 zl!343)))))))

(assert (=> b!5355672 (= lt!2182057 (Star!15049 (reg!15378 (regOne!30610 r!7292))))))

(declare-fun b!5355673 () Bool)

(declare-fun tp!1487568 () Bool)

(assert (=> b!5355673 (= e!3324308 tp!1487568)))

(declare-fun b!5355675 () Bool)

(declare-fun res!2272327 () Bool)

(declare-fun e!3324305 () Bool)

(assert (=> b!5355675 (=> res!2272327 e!3324305)))

(declare-fun isEmpty!33299 (List!61446) Bool)

(assert (=> b!5355675 (= res!2272327 (isEmpty!33299 (t!374667 (exprs!4933 (h!67772 zl!343)))))))

(declare-fun e!3324314 () Bool)

(assert (=> b!5355676 (= e!3324314 e!3324305)))

(declare-fun res!2272314 () Bool)

(assert (=> b!5355676 (=> res!2272314 e!3324305)))

(declare-fun lt!2182071 () Bool)

(declare-fun lt!2182058 () Bool)

(assert (=> b!5355676 (= res!2272314 (or (not (= lt!2182058 lt!2182071)) ((_ is Nil!61323) s!2326)))))

(declare-fun Exists!2230 (Int) Bool)

(assert (=> b!5355676 (= (Exists!2230 lambda!275435) (Exists!2230 lambda!275436))))

(declare-datatypes ((Unit!153714 0))(
  ( (Unit!153715) )
))
(declare-fun lt!2182061 () Unit!153714)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!884 (Regex!15049 Regex!15049 List!61447) Unit!153714)

(assert (=> b!5355676 (= lt!2182061 (lemmaExistCutMatchRandMatchRSpecEquivalent!884 (regOne!30610 r!7292) (regTwo!30610 r!7292) s!2326))))

(assert (=> b!5355676 (= lt!2182071 (Exists!2230 lambda!275435))))

(declare-datatypes ((tuple2!64496 0))(
  ( (tuple2!64497 (_1!35551 List!61447) (_2!35551 List!61447)) )
))
(declare-datatypes ((Option!15160 0))(
  ( (None!15159) (Some!15159 (v!51188 tuple2!64496)) )
))
(declare-fun isDefined!11863 (Option!15160) Bool)

(declare-fun findConcatSeparation!1574 (Regex!15049 Regex!15049 List!61447 List!61447 List!61447) Option!15160)

(assert (=> b!5355676 (= lt!2182071 (isDefined!11863 (findConcatSeparation!1574 (regOne!30610 r!7292) (regTwo!30610 r!7292) Nil!61323 s!2326 s!2326)))))

(declare-fun lt!2182068 () Unit!153714)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1338 (Regex!15049 Regex!15049 List!61447) Unit!153714)

(assert (=> b!5355676 (= lt!2182068 (lemmaFindConcatSeparationEquivalentToExists!1338 (regOne!30610 r!7292) (regTwo!30610 r!7292) s!2326))))

(declare-fun b!5355677 () Bool)

(declare-fun e!3324316 () Bool)

(assert (=> b!5355677 (= e!3324316 (not e!3324314))))

(declare-fun res!2272321 () Bool)

(assert (=> b!5355677 (=> res!2272321 e!3324314)))

(assert (=> b!5355677 (= res!2272321 (not ((_ is Cons!61324) zl!343)))))

(declare-fun matchRSpec!2152 (Regex!15049 List!61447) Bool)

(assert (=> b!5355677 (= lt!2182058 (matchRSpec!2152 r!7292 s!2326))))

(declare-fun matchR!7234 (Regex!15049 List!61447) Bool)

(assert (=> b!5355677 (= lt!2182058 (matchR!7234 r!7292 s!2326))))

(declare-fun lt!2182067 () Unit!153714)

(declare-fun mainMatchTheorem!2152 (Regex!15049 List!61447) Unit!153714)

(assert (=> b!5355677 (= lt!2182067 (mainMatchTheorem!2152 r!7292 s!2326))))

(declare-fun b!5355678 () Bool)

(declare-fun res!2272309 () Bool)

(declare-fun e!3324307 () Bool)

(assert (=> b!5355678 (=> res!2272309 e!3324307)))

(declare-fun lt!2182076 () Regex!15049)

(assert (=> b!5355678 (= res!2272309 (not (= lt!2182076 r!7292)))))

(assert (=> b!5355679 (= e!3324305 e!3324317)))

(declare-fun res!2272307 () Bool)

(assert (=> b!5355679 (=> res!2272307 e!3324317)))

(assert (=> b!5355679 (= res!2272307 (or (and ((_ is ElementMatch!15049) (regOne!30610 r!7292)) (= (c!932527 (regOne!30610 r!7292)) (h!67771 s!2326))) ((_ is Union!15049) (regOne!30610 r!7292))))))

(declare-fun lt!2182059 () Unit!153714)

(declare-fun e!3324311 () Unit!153714)

(assert (=> b!5355679 (= lt!2182059 e!3324311)))

(declare-fun c!932526 () Bool)

(declare-fun nullable!5218 (Regex!15049) Bool)

(assert (=> b!5355679 (= c!932526 (nullable!5218 (h!67770 (exprs!4933 (h!67772 zl!343)))))))

(declare-fun lambda!275437 () Int)

(declare-fun flatMap!776 ((InoxSet Context!8866) Int) (InoxSet Context!8866))

(declare-fun derivationStepZipperUp!421 (Context!8866 C!30368) (InoxSet Context!8866))

(assert (=> b!5355679 (= (flatMap!776 z!1189 lambda!275437) (derivationStepZipperUp!421 (h!67772 zl!343) (h!67771 s!2326)))))

(declare-fun lt!2182064 () Unit!153714)

(declare-fun lemmaFlatMapOnSingletonSet!308 ((InoxSet Context!8866) Context!8866 Int) Unit!153714)

(assert (=> b!5355679 (= lt!2182064 (lemmaFlatMapOnSingletonSet!308 z!1189 (h!67772 zl!343) lambda!275437))))

(declare-fun lt!2182080 () (InoxSet Context!8866))

(declare-fun lt!2182079 () Context!8866)

(assert (=> b!5355679 (= lt!2182080 (derivationStepZipperUp!421 lt!2182079 (h!67771 s!2326)))))

(assert (=> b!5355679 (= lt!2182077 (derivationStepZipperDown!497 (h!67770 (exprs!4933 (h!67772 zl!343))) lt!2182079 (h!67771 s!2326)))))

(assert (=> b!5355679 (= lt!2182079 (Context!8867 (t!374667 (exprs!4933 (h!67772 zl!343)))))))

(declare-fun lt!2182065 () (InoxSet Context!8866))

(assert (=> b!5355679 (= lt!2182065 (derivationStepZipperUp!421 (Context!8867 (Cons!61322 (h!67770 (exprs!4933 (h!67772 zl!343))) (t!374667 (exprs!4933 (h!67772 zl!343))))) (h!67771 s!2326)))))

(declare-fun b!5355680 () Bool)

(declare-fun tp!1487570 () Bool)

(declare-fun tp!1487575 () Bool)

(assert (=> b!5355680 (= e!3324315 (and tp!1487570 tp!1487575))))

(declare-fun b!5355681 () Bool)

(declare-fun e!3324320 () Bool)

(declare-fun tp!1487573 () Bool)

(declare-fun e!3324309 () Bool)

(assert (=> b!5355681 (= e!3324320 (and (inv!80869 (h!67772 zl!343)) e!3324309 tp!1487573))))

(declare-fun b!5355682 () Bool)

(declare-fun Unit!153716 () Unit!153714)

(assert (=> b!5355682 (= e!3324311 Unit!153716)))

(declare-fun b!5355683 () Bool)

(declare-fun res!2272310 () Bool)

(assert (=> b!5355683 (=> res!2272310 e!3324314)))

(assert (=> b!5355683 (= res!2272310 (or ((_ is EmptyExpr!15049) r!7292) ((_ is EmptyLang!15049) r!7292) ((_ is ElementMatch!15049) r!7292) ((_ is Union!15049) r!7292) (not ((_ is Concat!23894) r!7292))))))

(declare-fun b!5355684 () Bool)

(declare-fun res!2272306 () Bool)

(assert (=> b!5355684 (=> res!2272306 e!3324314)))

(declare-fun generalisedUnion!978 (List!61446) Regex!15049)

(declare-fun unfocusZipperList!491 (List!61448) List!61446)

(assert (=> b!5355684 (= res!2272306 (not (= r!7292 (generalisedUnion!978 (unfocusZipperList!491 zl!343)))))))

(declare-fun b!5355685 () Bool)

(declare-fun e!3324313 () Bool)

(declare-fun tp!1487576 () Bool)

(assert (=> b!5355685 (= e!3324313 (and tp_is_empty!39351 tp!1487576))))

(declare-fun b!5355686 () Bool)

(declare-fun res!2272325 () Bool)

(assert (=> b!5355686 (=> res!2272325 e!3324314)))

(declare-fun generalisedConcat!718 (List!61446) Regex!15049)

(assert (=> b!5355686 (= res!2272325 (not (= r!7292 (generalisedConcat!718 (exprs!4933 (h!67772 zl!343))))))))

(declare-fun b!5355687 () Bool)

(declare-fun tp!1487572 () Bool)

(declare-fun tp!1487574 () Bool)

(assert (=> b!5355687 (= e!3324315 (and tp!1487572 tp!1487574))))

(declare-fun b!5355688 () Bool)

(assert (=> b!5355688 (= e!3324318 (nullable!5218 (regOne!30610 (regOne!30610 r!7292))))))

(declare-fun b!5355674 () Bool)

(declare-fun e!3324310 () Bool)

(assert (=> b!5355674 (= e!3324307 e!3324310)))

(declare-fun res!2272312 () Bool)

(assert (=> b!5355674 (=> res!2272312 e!3324310)))

(declare-fun lt!2182074 () Regex!15049)

(assert (=> b!5355674 (= res!2272312 (not (= r!7292 lt!2182074)))))

(assert (=> b!5355674 (= lt!2182074 (Concat!23894 lt!2182057 (regTwo!30610 r!7292)))))

(declare-fun res!2272317 () Bool)

(declare-fun e!3324312 () Bool)

(assert (=> start!563930 (=> (not res!2272317) (not e!3324312))))

(declare-fun validRegex!6785 (Regex!15049) Bool)

(assert (=> start!563930 (= res!2272317 (validRegex!6785 r!7292))))

(assert (=> start!563930 e!3324312))

(assert (=> start!563930 e!3324315))

(declare-fun condSetEmpty!34627 () Bool)

(assert (=> start!563930 (= condSetEmpty!34627 (= z!1189 ((as const (Array Context!8866 Bool)) false)))))

(assert (=> start!563930 setRes!34627))

(assert (=> start!563930 e!3324320))

(assert (=> start!563930 e!3324313))

(declare-fun b!5355689 () Bool)

(declare-fun tp!1487571 () Bool)

(assert (=> b!5355689 (= e!3324309 tp!1487571)))

(declare-fun b!5355690 () Bool)

(declare-fun res!2272322 () Bool)

(assert (=> b!5355690 (=> res!2272322 e!3324314)))

(assert (=> b!5355690 (= res!2272322 (not ((_ is Cons!61322) (exprs!4933 (h!67772 zl!343)))))))

(declare-fun b!5355691 () Bool)

(declare-fun e!3324306 () Bool)

(declare-fun matchZipper!1293 ((InoxSet Context!8866) List!61447) Bool)

(assert (=> b!5355691 (= e!3324306 (matchZipper!1293 lt!2182080 (t!374668 s!2326)))))

(declare-fun b!5355692 () Bool)

(declare-fun res!2272316 () Bool)

(assert (=> b!5355692 (=> res!2272316 e!3324307)))

(declare-fun lt!2182070 () (InoxSet Context!8866))

(declare-fun lt!2182069 () (InoxSet Context!8866))

(assert (=> b!5355692 (= res!2272316 (not (= (matchZipper!1293 lt!2182069 s!2326) (matchZipper!1293 lt!2182070 (t!374668 s!2326)))))))

(declare-fun b!5355693 () Bool)

(assert (=> b!5355693 (= e!3324310 true)))

(declare-fun lt!2182075 () (InoxSet Context!8866))

(declare-fun lt!2182055 () Context!8866)

(assert (=> b!5355693 (= (flatMap!776 lt!2182075 lambda!275437) (derivationStepZipperUp!421 lt!2182055 (h!67771 s!2326)))))

(declare-fun lt!2182060 () Unit!153714)

(assert (=> b!5355693 (= lt!2182060 (lemmaFlatMapOnSingletonSet!308 lt!2182075 lt!2182055 lambda!275437))))

(declare-fun lt!2182056 () (InoxSet Context!8866))

(assert (=> b!5355693 (= lt!2182056 (derivationStepZipperUp!421 lt!2182063 (h!67771 s!2326)))))

(declare-fun lt!2182062 () (InoxSet Context!8866))

(assert (=> b!5355693 (= lt!2182062 (derivationStepZipperUp!421 lt!2182055 (h!67771 s!2326)))))

(assert (=> b!5355693 (= lt!2182075 (store ((as const (Array Context!8866 Bool)) false) lt!2182055 true))))

(assert (=> b!5355693 (= lt!2182055 (Context!8867 (Cons!61322 (reg!15378 (regOne!30610 r!7292)) Nil!61322)))))

(declare-fun b!5355694 () Bool)

(declare-fun res!2272320 () Bool)

(assert (=> b!5355694 (=> res!2272320 e!3324314)))

(declare-fun isEmpty!33300 (List!61448) Bool)

(assert (=> b!5355694 (= res!2272320 (not (isEmpty!33300 (t!374669 zl!343))))))

(declare-fun b!5355695 () Bool)

(declare-fun Unit!153717 () Unit!153714)

(assert (=> b!5355695 (= e!3324311 Unit!153717)))

(declare-fun lt!2182078 () Unit!153714)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!286 ((InoxSet Context!8866) (InoxSet Context!8866) List!61447) Unit!153714)

(assert (=> b!5355695 (= lt!2182078 (lemmaZipperConcatMatchesSameAsBothZippers!286 lt!2182077 lt!2182080 (t!374668 s!2326)))))

(declare-fun res!2272324 () Bool)

(assert (=> b!5355695 (= res!2272324 (matchZipper!1293 lt!2182077 (t!374668 s!2326)))))

(assert (=> b!5355695 (=> res!2272324 e!3324306)))

(assert (=> b!5355695 (= (matchZipper!1293 ((_ map or) lt!2182077 lt!2182080) (t!374668 s!2326)) e!3324306)))

(declare-fun b!5355696 () Bool)

(declare-fun res!2272315 () Bool)

(assert (=> b!5355696 (=> res!2272315 e!3324310)))

(declare-fun lt!2182073 () Context!8866)

(declare-fun unfocusZipper!791 (List!61448) Regex!15049)

(assert (=> b!5355696 (= res!2272315 (not (= (unfocusZipper!791 (Cons!61324 lt!2182073 Nil!61324)) (Concat!23894 (reg!15378 (regOne!30610 r!7292)) lt!2182074))))))

(declare-fun b!5355697 () Bool)

(assert (=> b!5355697 (= e!3324319 e!3324307)))

(declare-fun res!2272323 () Bool)

(assert (=> b!5355697 (=> res!2272323 e!3324307)))

(assert (=> b!5355697 (= res!2272323 (not (= lt!2182070 lt!2182066)))))

(assert (=> b!5355697 (= (flatMap!776 lt!2182069 lambda!275437) (derivationStepZipperUp!421 lt!2182073 (h!67771 s!2326)))))

(declare-fun lt!2182072 () Unit!153714)

(assert (=> b!5355697 (= lt!2182072 (lemmaFlatMapOnSingletonSet!308 lt!2182069 lt!2182073 lambda!275437))))

(declare-fun lt!2182081 () (InoxSet Context!8866))

(assert (=> b!5355697 (= lt!2182081 (derivationStepZipperUp!421 lt!2182073 (h!67771 s!2326)))))

(declare-fun derivationStepZipper!1288 ((InoxSet Context!8866) C!30368) (InoxSet Context!8866))

(assert (=> b!5355697 (= lt!2182070 (derivationStepZipper!1288 lt!2182069 (h!67771 s!2326)))))

(assert (=> b!5355697 (= lt!2182069 (store ((as const (Array Context!8866 Bool)) false) lt!2182073 true))))

(assert (=> b!5355697 (= lt!2182073 (Context!8867 (Cons!61322 (reg!15378 (regOne!30610 r!7292)) lt!2182082)))))

(declare-fun setIsEmpty!34627 () Bool)

(assert (=> setIsEmpty!34627 setRes!34627))

(declare-fun b!5355698 () Bool)

(declare-fun res!2272318 () Bool)

(assert (=> b!5355698 (=> (not res!2272318) (not e!3324312))))

(declare-fun toList!8833 ((InoxSet Context!8866)) List!61448)

(assert (=> b!5355698 (= res!2272318 (= (toList!8833 z!1189) zl!343))))

(declare-fun b!5355699 () Bool)

(assert (=> b!5355699 (= e!3324312 e!3324316)))

(declare-fun res!2272308 () Bool)

(assert (=> b!5355699 (=> (not res!2272308) (not e!3324316))))

(assert (=> b!5355699 (= res!2272308 (= r!7292 lt!2182076))))

(assert (=> b!5355699 (= lt!2182076 (unfocusZipper!791 zl!343))))

(declare-fun b!5355700 () Bool)

(declare-fun res!2272326 () Bool)

(assert (=> b!5355700 (=> res!2272326 e!3324317)))

(assert (=> b!5355700 (= res!2272326 (or ((_ is Concat!23894) (regOne!30610 r!7292)) (not ((_ is Star!15049) (regOne!30610 r!7292)))))))

(declare-fun b!5355701 () Bool)

(declare-fun tp!1487577 () Bool)

(assert (=> b!5355701 (= e!3324315 tp!1487577)))

(assert (= (and start!563930 res!2272317) b!5355698))

(assert (= (and b!5355698 res!2272318) b!5355699))

(assert (= (and b!5355699 res!2272308) b!5355677))

(assert (= (and b!5355677 (not res!2272321)) b!5355694))

(assert (= (and b!5355694 (not res!2272320)) b!5355686))

(assert (= (and b!5355686 (not res!2272325)) b!5355690))

(assert (= (and b!5355690 (not res!2272322)) b!5355684))

(assert (= (and b!5355684 (not res!2272306)) b!5355683))

(assert (= (and b!5355683 (not res!2272310)) b!5355676))

(assert (= (and b!5355676 (not res!2272314)) b!5355675))

(assert (= (and b!5355675 (not res!2272327)) b!5355679))

(assert (= (and b!5355679 c!932526) b!5355695))

(assert (= (and b!5355679 (not c!932526)) b!5355682))

(assert (= (and b!5355695 (not res!2272324)) b!5355691))

(assert (= (and b!5355679 (not res!2272307)) b!5355671))

(assert (= (and b!5355671 res!2272319) b!5355688))

(assert (= (and b!5355671 (not res!2272311)) b!5355700))

(assert (= (and b!5355700 (not res!2272326)) b!5355672))

(assert (= (and b!5355672 (not res!2272313)) b!5355697))

(assert (= (and b!5355697 (not res!2272323)) b!5355692))

(assert (= (and b!5355692 (not res!2272316)) b!5355678))

(assert (= (and b!5355678 (not res!2272309)) b!5355674))

(assert (= (and b!5355674 (not res!2272312)) b!5355696))

(assert (= (and b!5355696 (not res!2272315)) b!5355693))

(assert (= (and start!563930 ((_ is ElementMatch!15049) r!7292)) b!5355670))

(assert (= (and start!563930 ((_ is Concat!23894) r!7292)) b!5355687))

(assert (= (and start!563930 ((_ is Star!15049) r!7292)) b!5355701))

(assert (= (and start!563930 ((_ is Union!15049) r!7292)) b!5355680))

(assert (= (and start!563930 condSetEmpty!34627) setIsEmpty!34627))

(assert (= (and start!563930 (not condSetEmpty!34627)) setNonEmpty!34627))

(assert (= setNonEmpty!34627 b!5355673))

(assert (= b!5355681 b!5355689))

(assert (= (and start!563930 ((_ is Cons!61324) zl!343)) b!5355681))

(assert (= (and start!563930 ((_ is Cons!61323) s!2326)) b!5355685))

(declare-fun m!6385474 () Bool)

(assert (=> b!5355692 m!6385474))

(declare-fun m!6385476 () Bool)

(assert (=> b!5355692 m!6385476))

(declare-fun m!6385478 () Bool)

(assert (=> b!5355679 m!6385478))

(declare-fun m!6385480 () Bool)

(assert (=> b!5355679 m!6385480))

(declare-fun m!6385482 () Bool)

(assert (=> b!5355679 m!6385482))

(declare-fun m!6385484 () Bool)

(assert (=> b!5355679 m!6385484))

(declare-fun m!6385486 () Bool)

(assert (=> b!5355679 m!6385486))

(declare-fun m!6385488 () Bool)

(assert (=> b!5355679 m!6385488))

(declare-fun m!6385490 () Bool)

(assert (=> b!5355679 m!6385490))

(declare-fun m!6385492 () Bool)

(assert (=> b!5355686 m!6385492))

(declare-fun m!6385494 () Bool)

(assert (=> start!563930 m!6385494))

(declare-fun m!6385496 () Bool)

(assert (=> b!5355677 m!6385496))

(declare-fun m!6385498 () Bool)

(assert (=> b!5355677 m!6385498))

(declare-fun m!6385500 () Bool)

(assert (=> b!5355677 m!6385500))

(declare-fun m!6385502 () Bool)

(assert (=> b!5355693 m!6385502))

(declare-fun m!6385504 () Bool)

(assert (=> b!5355693 m!6385504))

(declare-fun m!6385506 () Bool)

(assert (=> b!5355693 m!6385506))

(declare-fun m!6385508 () Bool)

(assert (=> b!5355693 m!6385508))

(declare-fun m!6385510 () Bool)

(assert (=> b!5355693 m!6385510))

(declare-fun m!6385512 () Bool)

(assert (=> b!5355675 m!6385512))

(declare-fun m!6385514 () Bool)

(assert (=> b!5355681 m!6385514))

(declare-fun m!6385516 () Bool)

(assert (=> setNonEmpty!34627 m!6385516))

(declare-fun m!6385518 () Bool)

(assert (=> b!5355676 m!6385518))

(assert (=> b!5355676 m!6385518))

(declare-fun m!6385520 () Bool)

(assert (=> b!5355676 m!6385520))

(declare-fun m!6385522 () Bool)

(assert (=> b!5355676 m!6385522))

(declare-fun m!6385524 () Bool)

(assert (=> b!5355676 m!6385524))

(declare-fun m!6385526 () Bool)

(assert (=> b!5355676 m!6385526))

(assert (=> b!5355676 m!6385520))

(declare-fun m!6385528 () Bool)

(assert (=> b!5355676 m!6385528))

(declare-fun m!6385530 () Bool)

(assert (=> b!5355697 m!6385530))

(declare-fun m!6385532 () Bool)

(assert (=> b!5355697 m!6385532))

(declare-fun m!6385534 () Bool)

(assert (=> b!5355697 m!6385534))

(declare-fun m!6385536 () Bool)

(assert (=> b!5355697 m!6385536))

(declare-fun m!6385538 () Bool)

(assert (=> b!5355697 m!6385538))

(declare-fun m!6385540 () Bool)

(assert (=> b!5355672 m!6385540))

(declare-fun m!6385542 () Bool)

(assert (=> b!5355691 m!6385542))

(declare-fun m!6385544 () Bool)

(assert (=> b!5355695 m!6385544))

(declare-fun m!6385546 () Bool)

(assert (=> b!5355695 m!6385546))

(declare-fun m!6385548 () Bool)

(assert (=> b!5355695 m!6385548))

(declare-fun m!6385550 () Bool)

(assert (=> b!5355688 m!6385550))

(declare-fun m!6385552 () Bool)

(assert (=> b!5355699 m!6385552))

(declare-fun m!6385554 () Bool)

(assert (=> b!5355696 m!6385554))

(declare-fun m!6385556 () Bool)

(assert (=> b!5355694 m!6385556))

(declare-fun m!6385558 () Bool)

(assert (=> b!5355684 m!6385558))

(assert (=> b!5355684 m!6385558))

(declare-fun m!6385560 () Bool)

(assert (=> b!5355684 m!6385560))

(declare-fun m!6385562 () Bool)

(assert (=> b!5355698 m!6385562))

(check-sat (not b!5355698) (not b!5355699) (not b!5355694) (not b!5355686) (not b!5355680) (not b!5355692) (not b!5355685) (not b!5355696) (not b!5355701) (not b!5355684) (not b!5355675) (not setNonEmpty!34627) (not b!5355681) (not b!5355691) (not b!5355677) (not b!5355689) (not b!5355693) (not b!5355676) (not b!5355695) (not b!5355688) (not b!5355673) (not b!5355679) (not b!5355672) tp_is_empty!39351 (not start!563930) (not b!5355687) (not b!5355697))
(check-sat)
