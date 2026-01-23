; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!647746 () Bool)

(assert start!647746)

(declare-fun b!6632927 () Bool)

(assert (=> b!6632927 true))

(assert (=> b!6632927 true))

(declare-fun lambda!370572 () Int)

(declare-fun lambda!370571 () Int)

(assert (=> b!6632927 (not (= lambda!370572 lambda!370571))))

(assert (=> b!6632927 true))

(assert (=> b!6632927 true))

(declare-fun b!6632928 () Bool)

(assert (=> b!6632928 true))

(declare-fun b!6632904 () Bool)

(declare-fun res!2718413 () Bool)

(declare-fun e!4011723 () Bool)

(assert (=> b!6632904 (=> res!2718413 e!4011723)))

(declare-datatypes ((C!33268 0))(
  ( (C!33269 (val!26336 Int)) )
))
(declare-datatypes ((Regex!16499 0))(
  ( (ElementMatch!16499 (c!1223326 C!33268)) (Concat!25344 (regOne!33510 Regex!16499) (regTwo!33510 Regex!16499)) (EmptyExpr!16499) (Star!16499 (reg!16828 Regex!16499)) (EmptyLang!16499) (Union!16499 (regOne!33511 Regex!16499) (regTwo!33511 Regex!16499)) )
))
(declare-fun r!7292 () Regex!16499)

(get-info :version)

(assert (=> b!6632904 (= res!2718413 (or ((_ is Concat!25344) (regOne!33510 r!7292)) ((_ is Star!16499) (regOne!33510 r!7292)) (not ((_ is EmptyExpr!16499) (regOne!33510 r!7292)))))))

(declare-fun b!6632906 () Bool)

(declare-fun res!2718423 () Bool)

(declare-fun e!4011730 () Bool)

(assert (=> b!6632906 (=> res!2718423 e!4011730)))

(declare-datatypes ((List!65796 0))(
  ( (Nil!65672) (Cons!65672 (h!72120 Regex!16499) (t!379460 List!65796)) )
))
(declare-datatypes ((Context!11766 0))(
  ( (Context!11767 (exprs!6383 List!65796)) )
))
(declare-datatypes ((List!65797 0))(
  ( (Nil!65673) (Cons!65673 (h!72121 Context!11766) (t!379461 List!65797)) )
))
(declare-fun zl!343 () List!65797)

(declare-fun isEmpty!37967 (List!65797) Bool)

(assert (=> b!6632906 (= res!2718423 (not (isEmpty!37967 (t!379461 zl!343))))))

(declare-fun b!6632907 () Bool)

(declare-fun res!2718412 () Bool)

(assert (=> b!6632907 (=> res!2718412 e!4011730)))

(declare-fun generalisedUnion!2343 (List!65796) Regex!16499)

(declare-fun unfocusZipperList!1920 (List!65797) List!65796)

(assert (=> b!6632907 (= res!2718412 (not (= r!7292 (generalisedUnion!2343 (unfocusZipperList!1920 zl!343)))))))

(declare-fun b!6632908 () Bool)

(declare-fun e!4011719 () Bool)

(declare-fun e!4011727 () Bool)

(assert (=> b!6632908 (= e!4011719 e!4011727)))

(declare-fun res!2718418 () Bool)

(assert (=> b!6632908 (=> res!2718418 e!4011727)))

(declare-fun lt!2419197 () Bool)

(declare-fun lt!2419200 () Bool)

(assert (=> b!6632908 (= res!2718418 (not (= lt!2419197 lt!2419200)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!11766))

(declare-datatypes ((List!65798 0))(
  ( (Nil!65674) (Cons!65674 (h!72122 C!33268) (t!379462 List!65798)) )
))
(declare-fun s!2326 () List!65798)

(declare-fun matchZipper!2511 ((InoxSet Context!11766) List!65798) Bool)

(assert (=> b!6632908 (= lt!2419197 (matchZipper!2511 z!1189 s!2326))))

(declare-fun lt!2419196 () Bool)

(assert (=> b!6632908 (= lt!2419196 lt!2419200)))

(declare-fun lt!2419198 () (InoxSet Context!11766))

(assert (=> b!6632908 (= lt!2419200 (matchZipper!2511 lt!2419198 (t!379462 s!2326)))))

(declare-fun lt!2419193 () (InoxSet Context!11766))

(assert (=> b!6632908 (= lt!2419196 (matchZipper!2511 lt!2419193 (t!379462 s!2326)))))

(declare-datatypes ((Unit!159351 0))(
  ( (Unit!159352) )
))
(declare-fun lt!2419181 () Unit!159351)

(declare-fun lt!2419195 () (InoxSet Context!11766))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1330 ((InoxSet Context!11766) (InoxSet Context!11766) List!65798) Unit!159351)

(assert (=> b!6632908 (= lt!2419181 (lemmaZipperConcatMatchesSameAsBothZippers!1330 lt!2419195 lt!2419198 (t!379462 s!2326)))))

(declare-fun b!6632909 () Bool)

(declare-fun res!2718408 () Bool)

(assert (=> b!6632909 (=> res!2718408 e!4011730)))

(assert (=> b!6632909 (= res!2718408 (or ((_ is EmptyExpr!16499) r!7292) ((_ is EmptyLang!16499) r!7292) ((_ is ElementMatch!16499) r!7292) ((_ is Union!16499) r!7292) (not ((_ is Concat!25344) r!7292))))))

(declare-fun e!4011725 () Bool)

(declare-fun b!6632910 () Bool)

(declare-fun e!4011729 () Bool)

(declare-fun tp!1827251 () Bool)

(declare-fun inv!84494 (Context!11766) Bool)

(assert (=> b!6632910 (= e!4011729 (and (inv!84494 (h!72121 zl!343)) e!4011725 tp!1827251))))

(declare-fun b!6632911 () Bool)

(declare-fun e!4011716 () Bool)

(declare-fun tp!1827254 () Bool)

(assert (=> b!6632911 (= e!4011716 tp!1827254)))

(declare-fun b!6632912 () Bool)

(declare-fun e!4011721 () Bool)

(declare-fun tp!1827252 () Bool)

(assert (=> b!6632912 (= e!4011721 tp!1827252)))

(declare-fun b!6632913 () Bool)

(declare-fun res!2718417 () Bool)

(declare-fun e!4011715 () Bool)

(assert (=> b!6632913 (=> (not res!2718417) (not e!4011715))))

(declare-fun unfocusZipper!2241 (List!65797) Regex!16499)

(assert (=> b!6632913 (= res!2718417 (= r!7292 (unfocusZipper!2241 zl!343)))))

(declare-fun b!6632914 () Bool)

(declare-fun tp_is_empty!42251 () Bool)

(assert (=> b!6632914 (= e!4011716 tp_is_empty!42251)))

(declare-fun b!6632915 () Bool)

(declare-fun e!4011724 () Bool)

(assert (=> b!6632915 (= e!4011724 (matchZipper!2511 lt!2419198 (t!379462 s!2326)))))

(declare-fun b!6632916 () Bool)

(declare-fun res!2718411 () Bool)

(assert (=> b!6632916 (=> res!2718411 e!4011730)))

(declare-fun generalisedConcat!2096 (List!65796) Regex!16499)

(assert (=> b!6632916 (= res!2718411 (not (= r!7292 (generalisedConcat!2096 (exprs!6383 (h!72121 zl!343))))))))

(declare-fun setElem!45336 () Context!11766)

(declare-fun setNonEmpty!45336 () Bool)

(declare-fun setRes!45336 () Bool)

(declare-fun tp!1827258 () Bool)

(assert (=> setNonEmpty!45336 (= setRes!45336 (and tp!1827258 (inv!84494 setElem!45336) e!4011721))))

(declare-fun setRest!45336 () (InoxSet Context!11766))

(assert (=> setNonEmpty!45336 (= z!1189 ((_ map or) (store ((as const (Array Context!11766 Bool)) false) setElem!45336 true) setRest!45336))))

(declare-fun b!6632917 () Bool)

(declare-fun res!2718410 () Bool)

(assert (=> b!6632917 (=> res!2718410 e!4011730)))

(assert (=> b!6632917 (= res!2718410 (not ((_ is Cons!65672) (exprs!6383 (h!72121 zl!343)))))))

(declare-fun b!6632918 () Bool)

(declare-fun tp!1827250 () Bool)

(declare-fun tp!1827257 () Bool)

(assert (=> b!6632918 (= e!4011716 (and tp!1827250 tp!1827257))))

(declare-fun b!6632919 () Bool)

(declare-fun res!2718415 () Bool)

(assert (=> b!6632919 (=> (not res!2718415) (not e!4011715))))

(declare-fun toList!10283 ((InoxSet Context!11766)) List!65797)

(assert (=> b!6632919 (= res!2718415 (= (toList!10283 z!1189) zl!343))))

(declare-fun b!6632920 () Bool)

(declare-fun res!2718414 () Bool)

(declare-fun e!4011720 () Bool)

(assert (=> b!6632920 (=> res!2718414 e!4011720)))

(declare-fun isEmpty!37968 (List!65796) Bool)

(assert (=> b!6632920 (= res!2718414 (isEmpty!37968 (t!379460 (exprs!6383 (h!72121 zl!343)))))))

(declare-fun b!6632921 () Bool)

(declare-fun e!4011717 () Bool)

(assert (=> b!6632921 (= e!4011723 e!4011717)))

(declare-fun res!2718409 () Bool)

(assert (=> b!6632921 (=> res!2718409 e!4011717)))

(assert (=> b!6632921 (= res!2718409 (or (not (= lt!2419195 ((as const (Array Context!11766 Bool)) false))) (not (= r!7292 (Concat!25344 (regOne!33510 r!7292) (regTwo!33510 r!7292)))) (not (= (regOne!33510 r!7292) EmptyExpr!16499))))))

(assert (=> b!6632921 (not (matchZipper!2511 lt!2419195 (t!379462 s!2326)))))

(declare-fun lt!2419184 () Unit!159351)

(declare-fun lemmaEmptyZipperMatchesNothing!94 ((InoxSet Context!11766) List!65798) Unit!159351)

(assert (=> b!6632921 (= lt!2419184 (lemmaEmptyZipperMatchesNothing!94 lt!2419195 (t!379462 s!2326)))))

(declare-fun b!6632922 () Bool)

(declare-fun lt!2419180 () Regex!16499)

(declare-fun lt!2419186 () Bool)

(assert (=> b!6632922 (= e!4011727 (or (not (= (regTwo!33510 r!7292) lt!2419180)) (= lt!2419186 lt!2419197)))))

(declare-fun lt!2419202 () (InoxSet Context!11766))

(declare-fun matchR!8682 (Regex!16499 List!65798) Bool)

(assert (=> b!6632922 (= (matchR!8682 lt!2419180 s!2326) (matchZipper!2511 lt!2419202 s!2326))))

(declare-fun lt!2419182 () Context!11766)

(declare-fun lt!2419199 () Unit!159351)

(declare-fun theoremZipperRegexEquiv!903 ((InoxSet Context!11766) List!65797 Regex!16499 List!65798) Unit!159351)

(assert (=> b!6632922 (= lt!2419199 (theoremZipperRegexEquiv!903 lt!2419202 (Cons!65673 lt!2419182 Nil!65673) lt!2419180 s!2326))))

(assert (=> b!6632922 (= lt!2419180 (generalisedConcat!2096 (t!379460 (exprs!6383 (h!72121 zl!343)))))))

(declare-fun res!2718419 () Bool)

(assert (=> start!647746 (=> (not res!2718419) (not e!4011715))))

(declare-fun validRegex!8235 (Regex!16499) Bool)

(assert (=> start!647746 (= res!2718419 (validRegex!8235 r!7292))))

(assert (=> start!647746 e!4011715))

(assert (=> start!647746 e!4011716))

(declare-fun condSetEmpty!45336 () Bool)

(assert (=> start!647746 (= condSetEmpty!45336 (= z!1189 ((as const (Array Context!11766 Bool)) false)))))

(assert (=> start!647746 setRes!45336))

(assert (=> start!647746 e!4011729))

(declare-fun e!4011714 () Bool)

(assert (=> start!647746 e!4011714))

(declare-fun b!6632905 () Bool)

(assert (=> b!6632905 (= e!4011715 (not e!4011730))))

(declare-fun res!2718424 () Bool)

(assert (=> b!6632905 (=> res!2718424 e!4011730)))

(assert (=> b!6632905 (= res!2718424 (not ((_ is Cons!65673) zl!343)))))

(declare-fun matchRSpec!3600 (Regex!16499 List!65798) Bool)

(assert (=> b!6632905 (= lt!2419186 (matchRSpec!3600 r!7292 s!2326))))

(assert (=> b!6632905 (= lt!2419186 (matchR!8682 r!7292 s!2326))))

(declare-fun lt!2419192 () Unit!159351)

(declare-fun mainMatchTheorem!3600 (Regex!16499 List!65798) Unit!159351)

(assert (=> b!6632905 (= lt!2419192 (mainMatchTheorem!3600 r!7292 s!2326))))

(declare-fun b!6632923 () Bool)

(declare-fun e!4011718 () Bool)

(assert (=> b!6632923 (= e!4011717 e!4011718)))

(declare-fun res!2718425 () Bool)

(assert (=> b!6632923 (=> res!2718425 e!4011718)))

(declare-fun lt!2419190 () Bool)

(assert (=> b!6632923 (= res!2718425 (not (= lt!2419186 lt!2419190)))))

(assert (=> b!6632923 (= lt!2419190 (matchRSpec!3600 (regTwo!33510 r!7292) s!2326))))

(assert (=> b!6632923 (= lt!2419190 (matchR!8682 (regTwo!33510 r!7292) s!2326))))

(declare-fun lt!2419179 () Unit!159351)

(assert (=> b!6632923 (= lt!2419179 (mainMatchTheorem!3600 (regTwo!33510 r!7292) s!2326))))

(assert (=> b!6632923 (= (matchR!8682 (regOne!33510 r!7292) s!2326) (matchRSpec!3600 (regOne!33510 r!7292) s!2326))))

(declare-fun lt!2419189 () Unit!159351)

(assert (=> b!6632923 (= lt!2419189 (mainMatchTheorem!3600 (regOne!33510 r!7292) s!2326))))

(declare-fun b!6632924 () Bool)

(declare-fun e!4011726 () Unit!159351)

(declare-fun Unit!159353 () Unit!159351)

(assert (=> b!6632924 (= e!4011726 Unit!159353)))

(declare-fun lt!2419201 () Unit!159351)

(assert (=> b!6632924 (= lt!2419201 (lemmaZipperConcatMatchesSameAsBothZippers!1330 lt!2419195 lt!2419198 (t!379462 s!2326)))))

(declare-fun res!2718422 () Bool)

(assert (=> b!6632924 (= res!2718422 (matchZipper!2511 lt!2419195 (t!379462 s!2326)))))

(assert (=> b!6632924 (=> res!2718422 e!4011724)))

(assert (=> b!6632924 (= (matchZipper!2511 ((_ map or) lt!2419195 lt!2419198) (t!379462 s!2326)) e!4011724)))

(declare-fun setIsEmpty!45336 () Bool)

(assert (=> setIsEmpty!45336 setRes!45336))

(declare-fun b!6632925 () Bool)

(declare-fun Unit!159354 () Unit!159351)

(assert (=> b!6632925 (= e!4011726 Unit!159354)))

(declare-fun b!6632926 () Bool)

(declare-fun res!2718421 () Bool)

(assert (=> b!6632926 (=> res!2718421 e!4011723)))

(declare-fun e!4011722 () Bool)

(assert (=> b!6632926 (= res!2718421 e!4011722)))

(declare-fun res!2718420 () Bool)

(assert (=> b!6632926 (=> (not res!2718420) (not e!4011722))))

(assert (=> b!6632926 (= res!2718420 ((_ is Concat!25344) (regOne!33510 r!7292)))))

(assert (=> b!6632927 (= e!4011730 e!4011720)))

(declare-fun res!2718416 () Bool)

(assert (=> b!6632927 (=> res!2718416 e!4011720)))

(declare-fun lt!2419188 () Bool)

(assert (=> b!6632927 (= res!2718416 (or (not (= lt!2419186 lt!2419188)) ((_ is Nil!65674) s!2326)))))

(declare-fun Exists!3569 (Int) Bool)

(assert (=> b!6632927 (= (Exists!3569 lambda!370571) (Exists!3569 lambda!370572))))

(declare-fun lt!2419191 () Unit!159351)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2106 (Regex!16499 Regex!16499 List!65798) Unit!159351)

(assert (=> b!6632927 (= lt!2419191 (lemmaExistCutMatchRandMatchRSpecEquivalent!2106 (regOne!33510 r!7292) (regTwo!33510 r!7292) s!2326))))

(assert (=> b!6632927 (= lt!2419188 (Exists!3569 lambda!370571))))

(declare-datatypes ((tuple2!66956 0))(
  ( (tuple2!66957 (_1!36781 List!65798) (_2!36781 List!65798)) )
))
(declare-datatypes ((Option!16390 0))(
  ( (None!16389) (Some!16389 (v!52582 tuple2!66956)) )
))
(declare-fun isDefined!13093 (Option!16390) Bool)

(declare-fun findConcatSeparation!2804 (Regex!16499 Regex!16499 List!65798 List!65798 List!65798) Option!16390)

(assert (=> b!6632927 (= lt!2419188 (isDefined!13093 (findConcatSeparation!2804 (regOne!33510 r!7292) (regTwo!33510 r!7292) Nil!65674 s!2326 s!2326)))))

(declare-fun lt!2419185 () Unit!159351)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2568 (Regex!16499 Regex!16499 List!65798) Unit!159351)

(assert (=> b!6632927 (= lt!2419185 (lemmaFindConcatSeparationEquivalentToExists!2568 (regOne!33510 r!7292) (regTwo!33510 r!7292) s!2326))))

(assert (=> b!6632928 (= e!4011720 e!4011723)))

(declare-fun res!2718427 () Bool)

(assert (=> b!6632928 (=> res!2718427 e!4011723)))

(assert (=> b!6632928 (= res!2718427 (or (and ((_ is ElementMatch!16499) (regOne!33510 r!7292)) (= (c!1223326 (regOne!33510 r!7292)) (h!72122 s!2326))) ((_ is Union!16499) (regOne!33510 r!7292))))))

(declare-fun lt!2419194 () Unit!159351)

(assert (=> b!6632928 (= lt!2419194 e!4011726)))

(declare-fun c!1223325 () Bool)

(declare-fun nullable!6492 (Regex!16499) Bool)

(assert (=> b!6632928 (= c!1223325 (nullable!6492 (h!72120 (exprs!6383 (h!72121 zl!343)))))))

(declare-fun lambda!370573 () Int)

(declare-fun flatMap!2004 ((InoxSet Context!11766) Int) (InoxSet Context!11766))

(declare-fun derivationStepZipperUp!1673 (Context!11766 C!33268) (InoxSet Context!11766))

(assert (=> b!6632928 (= (flatMap!2004 z!1189 lambda!370573) (derivationStepZipperUp!1673 (h!72121 zl!343) (h!72122 s!2326)))))

(declare-fun lt!2419183 () Unit!159351)

(declare-fun lemmaFlatMapOnSingletonSet!1530 ((InoxSet Context!11766) Context!11766 Int) Unit!159351)

(assert (=> b!6632928 (= lt!2419183 (lemmaFlatMapOnSingletonSet!1530 z!1189 (h!72121 zl!343) lambda!370573))))

(assert (=> b!6632928 (= lt!2419198 (derivationStepZipperUp!1673 lt!2419182 (h!72122 s!2326)))))

(declare-fun derivationStepZipperDown!1747 (Regex!16499 Context!11766 C!33268) (InoxSet Context!11766))

(assert (=> b!6632928 (= lt!2419195 (derivationStepZipperDown!1747 (h!72120 (exprs!6383 (h!72121 zl!343))) lt!2419182 (h!72122 s!2326)))))

(assert (=> b!6632928 (= lt!2419182 (Context!11767 (t!379460 (exprs!6383 (h!72121 zl!343)))))))

(declare-fun lt!2419187 () (InoxSet Context!11766))

(assert (=> b!6632928 (= lt!2419187 (derivationStepZipperUp!1673 (Context!11767 (Cons!65672 (h!72120 (exprs!6383 (h!72121 zl!343))) (t!379460 (exprs!6383 (h!72121 zl!343))))) (h!72122 s!2326)))))

(declare-fun b!6632929 () Bool)

(declare-fun tp!1827255 () Bool)

(assert (=> b!6632929 (= e!4011725 tp!1827255)))

(declare-fun b!6632930 () Bool)

(declare-fun e!4011728 () Bool)

(assert (=> b!6632930 (= e!4011718 e!4011728)))

(declare-fun res!2718426 () Bool)

(assert (=> b!6632930 (=> res!2718426 e!4011728)))

(declare-fun derivationStepZipper!2465 ((InoxSet Context!11766) C!33268) (InoxSet Context!11766))

(assert (=> b!6632930 (= res!2718426 (not (= lt!2419198 (derivationStepZipper!2465 lt!2419202 (h!72122 s!2326)))))))

(assert (=> b!6632930 (= (flatMap!2004 lt!2419202 lambda!370573) (derivationStepZipperUp!1673 lt!2419182 (h!72122 s!2326)))))

(declare-fun lt!2419178 () Unit!159351)

(assert (=> b!6632930 (= lt!2419178 (lemmaFlatMapOnSingletonSet!1530 lt!2419202 lt!2419182 lambda!370573))))

(assert (=> b!6632930 (= lt!2419202 (store ((as const (Array Context!11766 Bool)) false) lt!2419182 true))))

(declare-fun b!6632931 () Bool)

(declare-fun tp!1827256 () Bool)

(assert (=> b!6632931 (= e!4011714 (and tp_is_empty!42251 tp!1827256))))

(declare-fun b!6632932 () Bool)

(declare-fun tp!1827253 () Bool)

(declare-fun tp!1827259 () Bool)

(assert (=> b!6632932 (= e!4011716 (and tp!1827253 tp!1827259))))

(declare-fun b!6632933 () Bool)

(assert (=> b!6632933 (= e!4011722 (nullable!6492 (regOne!33510 (regOne!33510 r!7292))))))

(declare-fun b!6632934 () Bool)

(assert (=> b!6632934 (= e!4011728 e!4011719)))

(declare-fun res!2718428 () Bool)

(assert (=> b!6632934 (=> res!2718428 e!4011719)))

(assert (=> b!6632934 (= res!2718428 (not (= (derivationStepZipper!2465 z!1189 (h!72122 s!2326)) lt!2419193)))))

(assert (=> b!6632934 (= lt!2419193 ((_ map or) lt!2419195 lt!2419198))))

(assert (= (and start!647746 res!2718419) b!6632919))

(assert (= (and b!6632919 res!2718415) b!6632913))

(assert (= (and b!6632913 res!2718417) b!6632905))

(assert (= (and b!6632905 (not res!2718424)) b!6632906))

(assert (= (and b!6632906 (not res!2718423)) b!6632916))

(assert (= (and b!6632916 (not res!2718411)) b!6632917))

(assert (= (and b!6632917 (not res!2718410)) b!6632907))

(assert (= (and b!6632907 (not res!2718412)) b!6632909))

(assert (= (and b!6632909 (not res!2718408)) b!6632927))

(assert (= (and b!6632927 (not res!2718416)) b!6632920))

(assert (= (and b!6632920 (not res!2718414)) b!6632928))

(assert (= (and b!6632928 c!1223325) b!6632924))

(assert (= (and b!6632928 (not c!1223325)) b!6632925))

(assert (= (and b!6632924 (not res!2718422)) b!6632915))

(assert (= (and b!6632928 (not res!2718427)) b!6632926))

(assert (= (and b!6632926 res!2718420) b!6632933))

(assert (= (and b!6632926 (not res!2718421)) b!6632904))

(assert (= (and b!6632904 (not res!2718413)) b!6632921))

(assert (= (and b!6632921 (not res!2718409)) b!6632923))

(assert (= (and b!6632923 (not res!2718425)) b!6632930))

(assert (= (and b!6632930 (not res!2718426)) b!6632934))

(assert (= (and b!6632934 (not res!2718428)) b!6632908))

(assert (= (and b!6632908 (not res!2718418)) b!6632922))

(assert (= (and start!647746 ((_ is ElementMatch!16499) r!7292)) b!6632914))

(assert (= (and start!647746 ((_ is Concat!25344) r!7292)) b!6632932))

(assert (= (and start!647746 ((_ is Star!16499) r!7292)) b!6632911))

(assert (= (and start!647746 ((_ is Union!16499) r!7292)) b!6632918))

(assert (= (and start!647746 condSetEmpty!45336) setIsEmpty!45336))

(assert (= (and start!647746 (not condSetEmpty!45336)) setNonEmpty!45336))

(assert (= setNonEmpty!45336 b!6632912))

(assert (= b!6632910 b!6632929))

(assert (= (and start!647746 ((_ is Cons!65673) zl!343)) b!6632910))

(assert (= (and start!647746 ((_ is Cons!65674) s!2326)) b!6632931))

(declare-fun m!7401494 () Bool)

(assert (=> b!6632927 m!7401494))

(declare-fun m!7401496 () Bool)

(assert (=> b!6632927 m!7401496))

(declare-fun m!7401498 () Bool)

(assert (=> b!6632927 m!7401498))

(declare-fun m!7401500 () Bool)

(assert (=> b!6632927 m!7401500))

(assert (=> b!6632927 m!7401498))

(declare-fun m!7401502 () Bool)

(assert (=> b!6632927 m!7401502))

(assert (=> b!6632927 m!7401494))

(declare-fun m!7401504 () Bool)

(assert (=> b!6632927 m!7401504))

(declare-fun m!7401506 () Bool)

(assert (=> b!6632922 m!7401506))

(declare-fun m!7401508 () Bool)

(assert (=> b!6632922 m!7401508))

(declare-fun m!7401510 () Bool)

(assert (=> b!6632922 m!7401510))

(declare-fun m!7401512 () Bool)

(assert (=> b!6632922 m!7401512))

(declare-fun m!7401514 () Bool)

(assert (=> b!6632907 m!7401514))

(assert (=> b!6632907 m!7401514))

(declare-fun m!7401516 () Bool)

(assert (=> b!6632907 m!7401516))

(declare-fun m!7401518 () Bool)

(assert (=> b!6632920 m!7401518))

(declare-fun m!7401520 () Bool)

(assert (=> b!6632910 m!7401520))

(declare-fun m!7401522 () Bool)

(assert (=> setNonEmpty!45336 m!7401522))

(declare-fun m!7401524 () Bool)

(assert (=> b!6632934 m!7401524))

(declare-fun m!7401526 () Bool)

(assert (=> b!6632906 m!7401526))

(declare-fun m!7401528 () Bool)

(assert (=> b!6632928 m!7401528))

(declare-fun m!7401530 () Bool)

(assert (=> b!6632928 m!7401530))

(declare-fun m!7401532 () Bool)

(assert (=> b!6632928 m!7401532))

(declare-fun m!7401534 () Bool)

(assert (=> b!6632928 m!7401534))

(declare-fun m!7401536 () Bool)

(assert (=> b!6632928 m!7401536))

(declare-fun m!7401538 () Bool)

(assert (=> b!6632928 m!7401538))

(declare-fun m!7401540 () Bool)

(assert (=> b!6632928 m!7401540))

(declare-fun m!7401542 () Bool)

(assert (=> b!6632924 m!7401542))

(declare-fun m!7401544 () Bool)

(assert (=> b!6632924 m!7401544))

(declare-fun m!7401546 () Bool)

(assert (=> b!6632924 m!7401546))

(declare-fun m!7401548 () Bool)

(assert (=> b!6632905 m!7401548))

(declare-fun m!7401550 () Bool)

(assert (=> b!6632905 m!7401550))

(declare-fun m!7401552 () Bool)

(assert (=> b!6632905 m!7401552))

(declare-fun m!7401554 () Bool)

(assert (=> b!6632923 m!7401554))

(declare-fun m!7401556 () Bool)

(assert (=> b!6632923 m!7401556))

(declare-fun m!7401558 () Bool)

(assert (=> b!6632923 m!7401558))

(declare-fun m!7401560 () Bool)

(assert (=> b!6632923 m!7401560))

(declare-fun m!7401562 () Bool)

(assert (=> b!6632923 m!7401562))

(declare-fun m!7401564 () Bool)

(assert (=> b!6632923 m!7401564))

(declare-fun m!7401566 () Bool)

(assert (=> b!6632933 m!7401566))

(declare-fun m!7401568 () Bool)

(assert (=> b!6632930 m!7401568))

(declare-fun m!7401570 () Bool)

(assert (=> b!6632930 m!7401570))

(assert (=> b!6632930 m!7401536))

(declare-fun m!7401572 () Bool)

(assert (=> b!6632930 m!7401572))

(declare-fun m!7401574 () Bool)

(assert (=> b!6632930 m!7401574))

(declare-fun m!7401576 () Bool)

(assert (=> start!647746 m!7401576))

(declare-fun m!7401578 () Bool)

(assert (=> b!6632919 m!7401578))

(declare-fun m!7401580 () Bool)

(assert (=> b!6632913 m!7401580))

(declare-fun m!7401582 () Bool)

(assert (=> b!6632915 m!7401582))

(declare-fun m!7401584 () Bool)

(assert (=> b!6632916 m!7401584))

(declare-fun m!7401586 () Bool)

(assert (=> b!6632908 m!7401586))

(assert (=> b!6632908 m!7401582))

(declare-fun m!7401588 () Bool)

(assert (=> b!6632908 m!7401588))

(assert (=> b!6632908 m!7401542))

(assert (=> b!6632921 m!7401544))

(declare-fun m!7401590 () Bool)

(assert (=> b!6632921 m!7401590))

(check-sat (not b!6632928) (not b!6632933) (not b!6632915) (not b!6632931) (not b!6632934) (not b!6632913) (not b!6632910) (not b!6632924) (not b!6632908) (not b!6632919) (not b!6632930) (not b!6632911) (not b!6632932) (not b!6632918) (not b!6632921) (not b!6632922) (not b!6632912) (not start!647746) (not b!6632906) (not b!6632923) tp_is_empty!42251 (not b!6632927) (not b!6632920) (not b!6632929) (not setNonEmpty!45336) (not b!6632905) (not b!6632907) (not b!6632916))
(check-sat)
(get-model)

(declare-fun d!2079289 () Bool)

(declare-fun nullableFct!2413 (Regex!16499) Bool)

(assert (=> d!2079289 (= (nullable!6492 (regOne!33510 (regOne!33510 r!7292))) (nullableFct!2413 (regOne!33510 (regOne!33510 r!7292))))))

(declare-fun bs!1704530 () Bool)

(assert (= bs!1704530 d!2079289))

(declare-fun m!7401592 () Bool)

(assert (=> bs!1704530 m!7401592))

(assert (=> b!6632933 d!2079289))

(declare-fun d!2079291 () Bool)

(declare-fun e!4011733 () Bool)

(assert (=> d!2079291 (= (matchZipper!2511 ((_ map or) lt!2419195 lt!2419198) (t!379462 s!2326)) e!4011733)))

(declare-fun res!2718431 () Bool)

(assert (=> d!2079291 (=> res!2718431 e!4011733)))

(assert (=> d!2079291 (= res!2718431 (matchZipper!2511 lt!2419195 (t!379462 s!2326)))))

(declare-fun lt!2419205 () Unit!159351)

(declare-fun choose!49537 ((InoxSet Context!11766) (InoxSet Context!11766) List!65798) Unit!159351)

(assert (=> d!2079291 (= lt!2419205 (choose!49537 lt!2419195 lt!2419198 (t!379462 s!2326)))))

(assert (=> d!2079291 (= (lemmaZipperConcatMatchesSameAsBothZippers!1330 lt!2419195 lt!2419198 (t!379462 s!2326)) lt!2419205)))

(declare-fun b!6632943 () Bool)

(assert (=> b!6632943 (= e!4011733 (matchZipper!2511 lt!2419198 (t!379462 s!2326)))))

(assert (= (and d!2079291 (not res!2718431)) b!6632943))

(assert (=> d!2079291 m!7401546))

(assert (=> d!2079291 m!7401544))

(declare-fun m!7401594 () Bool)

(assert (=> d!2079291 m!7401594))

(assert (=> b!6632943 m!7401582))

(assert (=> b!6632924 d!2079291))

(declare-fun d!2079293 () Bool)

(declare-fun c!1223329 () Bool)

(declare-fun isEmpty!37969 (List!65798) Bool)

(assert (=> d!2079293 (= c!1223329 (isEmpty!37969 (t!379462 s!2326)))))

(declare-fun e!4011736 () Bool)

(assert (=> d!2079293 (= (matchZipper!2511 lt!2419195 (t!379462 s!2326)) e!4011736)))

(declare-fun b!6632948 () Bool)

(declare-fun nullableZipper!2239 ((InoxSet Context!11766)) Bool)

(assert (=> b!6632948 (= e!4011736 (nullableZipper!2239 lt!2419195))))

(declare-fun b!6632949 () Bool)

(declare-fun head!13439 (List!65798) C!33268)

(declare-fun tail!12524 (List!65798) List!65798)

(assert (=> b!6632949 (= e!4011736 (matchZipper!2511 (derivationStepZipper!2465 lt!2419195 (head!13439 (t!379462 s!2326))) (tail!12524 (t!379462 s!2326))))))

(assert (= (and d!2079293 c!1223329) b!6632948))

(assert (= (and d!2079293 (not c!1223329)) b!6632949))

(declare-fun m!7401596 () Bool)

(assert (=> d!2079293 m!7401596))

(declare-fun m!7401598 () Bool)

(assert (=> b!6632948 m!7401598))

(declare-fun m!7401600 () Bool)

(assert (=> b!6632949 m!7401600))

(assert (=> b!6632949 m!7401600))

(declare-fun m!7401602 () Bool)

(assert (=> b!6632949 m!7401602))

(declare-fun m!7401604 () Bool)

(assert (=> b!6632949 m!7401604))

(assert (=> b!6632949 m!7401602))

(assert (=> b!6632949 m!7401604))

(declare-fun m!7401606 () Bool)

(assert (=> b!6632949 m!7401606))

(assert (=> b!6632924 d!2079293))

(declare-fun d!2079295 () Bool)

(declare-fun c!1223330 () Bool)

(assert (=> d!2079295 (= c!1223330 (isEmpty!37969 (t!379462 s!2326)))))

(declare-fun e!4011737 () Bool)

(assert (=> d!2079295 (= (matchZipper!2511 ((_ map or) lt!2419195 lt!2419198) (t!379462 s!2326)) e!4011737)))

(declare-fun b!6632950 () Bool)

(assert (=> b!6632950 (= e!4011737 (nullableZipper!2239 ((_ map or) lt!2419195 lt!2419198)))))

(declare-fun b!6632951 () Bool)

(assert (=> b!6632951 (= e!4011737 (matchZipper!2511 (derivationStepZipper!2465 ((_ map or) lt!2419195 lt!2419198) (head!13439 (t!379462 s!2326))) (tail!12524 (t!379462 s!2326))))))

(assert (= (and d!2079295 c!1223330) b!6632950))

(assert (= (and d!2079295 (not c!1223330)) b!6632951))

(assert (=> d!2079295 m!7401596))

(declare-fun m!7401608 () Bool)

(assert (=> b!6632950 m!7401608))

(assert (=> b!6632951 m!7401600))

(assert (=> b!6632951 m!7401600))

(declare-fun m!7401610 () Bool)

(assert (=> b!6632951 m!7401610))

(assert (=> b!6632951 m!7401604))

(assert (=> b!6632951 m!7401610))

(assert (=> b!6632951 m!7401604))

(declare-fun m!7401612 () Bool)

(assert (=> b!6632951 m!7401612))

(assert (=> b!6632924 d!2079295))

(declare-fun bs!1704531 () Bool)

(declare-fun d!2079297 () Bool)

(assert (= bs!1704531 (and d!2079297 b!6632928)))

(declare-fun lambda!370576 () Int)

(assert (=> bs!1704531 (= lambda!370576 lambda!370573)))

(assert (=> d!2079297 true))

(assert (=> d!2079297 (= (derivationStepZipper!2465 z!1189 (h!72122 s!2326)) (flatMap!2004 z!1189 lambda!370576))))

(declare-fun bs!1704532 () Bool)

(assert (= bs!1704532 d!2079297))

(declare-fun m!7401614 () Bool)

(assert (=> bs!1704532 m!7401614))

(assert (=> b!6632934 d!2079297))

(declare-fun bm!582173 () Bool)

(declare-fun call!582179 () Bool)

(declare-fun c!1223347 () Bool)

(assert (=> bm!582173 (= call!582179 (validRegex!8235 (ite c!1223347 (regTwo!33511 r!7292) (regTwo!33510 r!7292))))))

(declare-fun d!2079301 () Bool)

(declare-fun res!2718445 () Bool)

(declare-fun e!4011769 () Bool)

(assert (=> d!2079301 (=> res!2718445 e!4011769)))

(assert (=> d!2079301 (= res!2718445 ((_ is ElementMatch!16499) r!7292))))

(assert (=> d!2079301 (= (validRegex!8235 r!7292) e!4011769)))

(declare-fun bm!582174 () Bool)

(declare-fun call!582180 () Bool)

(declare-fun call!582178 () Bool)

(assert (=> bm!582174 (= call!582180 call!582178)))

(declare-fun bm!582175 () Bool)

(declare-fun c!1223348 () Bool)

(assert (=> bm!582175 (= call!582178 (validRegex!8235 (ite c!1223348 (reg!16828 r!7292) (ite c!1223347 (regOne!33511 r!7292) (regOne!33510 r!7292)))))))

(declare-fun b!6632994 () Bool)

(declare-fun e!4011767 () Bool)

(declare-fun e!4011770 () Bool)

(assert (=> b!6632994 (= e!4011767 e!4011770)))

(declare-fun res!2718448 () Bool)

(assert (=> b!6632994 (= res!2718448 (not (nullable!6492 (reg!16828 r!7292))))))

(assert (=> b!6632994 (=> (not res!2718448) (not e!4011770))))

(declare-fun b!6632995 () Bool)

(declare-fun res!2718446 () Bool)

(declare-fun e!4011766 () Bool)

(assert (=> b!6632995 (=> res!2718446 e!4011766)))

(assert (=> b!6632995 (= res!2718446 (not ((_ is Concat!25344) r!7292)))))

(declare-fun e!4011765 () Bool)

(assert (=> b!6632995 (= e!4011765 e!4011766)))

(declare-fun b!6632996 () Bool)

(declare-fun e!4011768 () Bool)

(assert (=> b!6632996 (= e!4011768 call!582179)))

(declare-fun b!6632997 () Bool)

(declare-fun e!4011764 () Bool)

(assert (=> b!6632997 (= e!4011764 call!582179)))

(declare-fun b!6632998 () Bool)

(assert (=> b!6632998 (= e!4011766 e!4011768)))

(declare-fun res!2718447 () Bool)

(assert (=> b!6632998 (=> (not res!2718447) (not e!4011768))))

(assert (=> b!6632998 (= res!2718447 call!582180)))

(declare-fun b!6632999 () Bool)

(assert (=> b!6632999 (= e!4011767 e!4011765)))

(assert (=> b!6632999 (= c!1223347 ((_ is Union!16499) r!7292))))

(declare-fun b!6633000 () Bool)

(declare-fun res!2718444 () Bool)

(assert (=> b!6633000 (=> (not res!2718444) (not e!4011764))))

(assert (=> b!6633000 (= res!2718444 call!582180)))

(assert (=> b!6633000 (= e!4011765 e!4011764)))

(declare-fun b!6633001 () Bool)

(assert (=> b!6633001 (= e!4011770 call!582178)))

(declare-fun b!6633002 () Bool)

(assert (=> b!6633002 (= e!4011769 e!4011767)))

(assert (=> b!6633002 (= c!1223348 ((_ is Star!16499) r!7292))))

(assert (= (and d!2079301 (not res!2718445)) b!6633002))

(assert (= (and b!6633002 c!1223348) b!6632994))

(assert (= (and b!6633002 (not c!1223348)) b!6632999))

(assert (= (and b!6632994 res!2718448) b!6633001))

(assert (= (and b!6632999 c!1223347) b!6633000))

(assert (= (and b!6632999 (not c!1223347)) b!6632995))

(assert (= (and b!6633000 res!2718444) b!6632997))

(assert (= (and b!6632995 (not res!2718446)) b!6632998))

(assert (= (and b!6632998 res!2718447) b!6632996))

(assert (= (or b!6632997 b!6632996) bm!582173))

(assert (= (or b!6633000 b!6632998) bm!582174))

(assert (= (or b!6633001 bm!582174) bm!582175))

(declare-fun m!7401616 () Bool)

(assert (=> bm!582173 m!7401616))

(declare-fun m!7401618 () Bool)

(assert (=> bm!582175 m!7401618))

(declare-fun m!7401620 () Bool)

(assert (=> b!6632994 m!7401620))

(assert (=> start!647746 d!2079301))

(declare-fun d!2079303 () Bool)

(declare-fun c!1223349 () Bool)

(assert (=> d!2079303 (= c!1223349 (isEmpty!37969 (t!379462 s!2326)))))

(declare-fun e!4011771 () Bool)

(assert (=> d!2079303 (= (matchZipper!2511 lt!2419198 (t!379462 s!2326)) e!4011771)))

(declare-fun b!6633003 () Bool)

(assert (=> b!6633003 (= e!4011771 (nullableZipper!2239 lt!2419198))))

(declare-fun b!6633004 () Bool)

(assert (=> b!6633004 (= e!4011771 (matchZipper!2511 (derivationStepZipper!2465 lt!2419198 (head!13439 (t!379462 s!2326))) (tail!12524 (t!379462 s!2326))))))

(assert (= (and d!2079303 c!1223349) b!6633003))

(assert (= (and d!2079303 (not c!1223349)) b!6633004))

(assert (=> d!2079303 m!7401596))

(declare-fun m!7401622 () Bool)

(assert (=> b!6633003 m!7401622))

(assert (=> b!6633004 m!7401600))

(assert (=> b!6633004 m!7401600))

(declare-fun m!7401624 () Bool)

(assert (=> b!6633004 m!7401624))

(assert (=> b!6633004 m!7401604))

(assert (=> b!6633004 m!7401624))

(assert (=> b!6633004 m!7401604))

(declare-fun m!7401626 () Bool)

(assert (=> b!6633004 m!7401626))

(assert (=> b!6632915 d!2079303))

(declare-fun bs!1704536 () Bool)

(declare-fun b!6633059 () Bool)

(assert (= bs!1704536 (and b!6633059 b!6632927)))

(declare-fun lambda!370581 () Int)

(assert (=> bs!1704536 (not (= lambda!370581 lambda!370571))))

(assert (=> bs!1704536 (not (= lambda!370581 lambda!370572))))

(assert (=> b!6633059 true))

(assert (=> b!6633059 true))

(declare-fun bs!1704537 () Bool)

(declare-fun b!6633065 () Bool)

(assert (= bs!1704537 (and b!6633065 b!6632927)))

(declare-fun lambda!370582 () Int)

(assert (=> bs!1704537 (not (= lambda!370582 lambda!370571))))

(assert (=> bs!1704537 (= lambda!370582 lambda!370572)))

(declare-fun bs!1704538 () Bool)

(assert (= bs!1704538 (and b!6633065 b!6633059)))

(assert (=> bs!1704538 (not (= lambda!370582 lambda!370581))))

(assert (=> b!6633065 true))

(assert (=> b!6633065 true))

(declare-fun b!6633058 () Bool)

(declare-fun c!1223370 () Bool)

(assert (=> b!6633058 (= c!1223370 ((_ is Union!16499) r!7292))))

(declare-fun e!4011806 () Bool)

(declare-fun e!4011803 () Bool)

(assert (=> b!6633058 (= e!4011806 e!4011803)))

(declare-fun bm!582196 () Bool)

(declare-fun call!582201 () Bool)

(assert (=> bm!582196 (= call!582201 (isEmpty!37969 s!2326))))

(declare-fun e!4011802 () Bool)

(declare-fun call!582202 () Bool)

(assert (=> b!6633059 (= e!4011802 call!582202)))

(declare-fun b!6633060 () Bool)

(assert (=> b!6633060 (= e!4011806 (= s!2326 (Cons!65674 (c!1223326 r!7292) Nil!65674)))))

(declare-fun b!6633061 () Bool)

(declare-fun e!4011805 () Bool)

(assert (=> b!6633061 (= e!4011803 e!4011805)))

(declare-fun res!2718470 () Bool)

(assert (=> b!6633061 (= res!2718470 (matchRSpec!3600 (regOne!33511 r!7292) s!2326))))

(assert (=> b!6633061 (=> res!2718470 e!4011805)))

(declare-fun b!6633062 () Bool)

(declare-fun e!4011808 () Bool)

(declare-fun e!4011804 () Bool)

(assert (=> b!6633062 (= e!4011808 e!4011804)))

(declare-fun res!2718469 () Bool)

(assert (=> b!6633062 (= res!2718469 (not ((_ is EmptyLang!16499) r!7292)))))

(assert (=> b!6633062 (=> (not res!2718469) (not e!4011804))))

(declare-fun c!1223368 () Bool)

(declare-fun bm!582197 () Bool)

(assert (=> bm!582197 (= call!582202 (Exists!3569 (ite c!1223368 lambda!370581 lambda!370582)))))

(declare-fun b!6633063 () Bool)

(declare-fun e!4011807 () Bool)

(assert (=> b!6633063 (= e!4011803 e!4011807)))

(assert (=> b!6633063 (= c!1223368 ((_ is Star!16499) r!7292))))

(declare-fun d!2079305 () Bool)

(declare-fun c!1223367 () Bool)

(assert (=> d!2079305 (= c!1223367 ((_ is EmptyExpr!16499) r!7292))))

(assert (=> d!2079305 (= (matchRSpec!3600 r!7292 s!2326) e!4011808)))

(declare-fun b!6633064 () Bool)

(declare-fun c!1223369 () Bool)

(assert (=> b!6633064 (= c!1223369 ((_ is ElementMatch!16499) r!7292))))

(assert (=> b!6633064 (= e!4011804 e!4011806)))

(assert (=> b!6633065 (= e!4011807 call!582202)))

(declare-fun b!6633066 () Bool)

(declare-fun res!2718468 () Bool)

(assert (=> b!6633066 (=> res!2718468 e!4011802)))

(assert (=> b!6633066 (= res!2718468 call!582201)))

(assert (=> b!6633066 (= e!4011807 e!4011802)))

(declare-fun b!6633067 () Bool)

(assert (=> b!6633067 (= e!4011805 (matchRSpec!3600 (regTwo!33511 r!7292) s!2326))))

(declare-fun b!6633068 () Bool)

(assert (=> b!6633068 (= e!4011808 call!582201)))

(assert (= (and d!2079305 c!1223367) b!6633068))

(assert (= (and d!2079305 (not c!1223367)) b!6633062))

(assert (= (and b!6633062 res!2718469) b!6633064))

(assert (= (and b!6633064 c!1223369) b!6633060))

(assert (= (and b!6633064 (not c!1223369)) b!6633058))

(assert (= (and b!6633058 c!1223370) b!6633061))

(assert (= (and b!6633058 (not c!1223370)) b!6633063))

(assert (= (and b!6633061 (not res!2718470)) b!6633067))

(assert (= (and b!6633063 c!1223368) b!6633066))

(assert (= (and b!6633063 (not c!1223368)) b!6633065))

(assert (= (and b!6633066 (not res!2718468)) b!6633059))

(assert (= (or b!6633059 b!6633065) bm!582197))

(assert (= (or b!6633068 b!6633066) bm!582196))

(declare-fun m!7401664 () Bool)

(assert (=> bm!582196 m!7401664))

(declare-fun m!7401666 () Bool)

(assert (=> b!6633061 m!7401666))

(declare-fun m!7401668 () Bool)

(assert (=> bm!582197 m!7401668))

(declare-fun m!7401670 () Bool)

(assert (=> b!6633067 m!7401670))

(assert (=> b!6632905 d!2079305))

(declare-fun b!6633122 () Bool)

(declare-fun res!2718499 () Bool)

(declare-fun e!4011844 () Bool)

(assert (=> b!6633122 (=> res!2718499 e!4011844)))

(declare-fun e!4011841 () Bool)

(assert (=> b!6633122 (= res!2718499 e!4011841)))

(declare-fun res!2718497 () Bool)

(assert (=> b!6633122 (=> (not res!2718497) (not e!4011841))))

(declare-fun lt!2419217 () Bool)

(assert (=> b!6633122 (= res!2718497 lt!2419217)))

(declare-fun d!2079323 () Bool)

(declare-fun e!4011842 () Bool)

(assert (=> d!2079323 e!4011842))

(declare-fun c!1223387 () Bool)

(assert (=> d!2079323 (= c!1223387 ((_ is EmptyExpr!16499) r!7292))))

(declare-fun e!4011839 () Bool)

(assert (=> d!2079323 (= lt!2419217 e!4011839)))

(declare-fun c!1223388 () Bool)

(assert (=> d!2079323 (= c!1223388 (isEmpty!37969 s!2326))))

(assert (=> d!2079323 (validRegex!8235 r!7292)))

(assert (=> d!2079323 (= (matchR!8682 r!7292 s!2326) lt!2419217)))

(declare-fun bm!582203 () Bool)

(declare-fun call!582208 () Bool)

(assert (=> bm!582203 (= call!582208 (isEmpty!37969 s!2326))))

(declare-fun b!6633123 () Bool)

(declare-fun e!4011838 () Bool)

(assert (=> b!6633123 (= e!4011842 e!4011838)))

(declare-fun c!1223389 () Bool)

(assert (=> b!6633123 (= c!1223389 ((_ is EmptyLang!16499) r!7292))))

(declare-fun b!6633124 () Bool)

(assert (=> b!6633124 (= e!4011838 (not lt!2419217))))

(declare-fun b!6633125 () Bool)

(assert (=> b!6633125 (= e!4011842 (= lt!2419217 call!582208))))

(declare-fun b!6633126 () Bool)

(assert (=> b!6633126 (= e!4011841 (= (head!13439 s!2326) (c!1223326 r!7292)))))

(declare-fun b!6633127 () Bool)

(declare-fun res!2718495 () Bool)

(declare-fun e!4011840 () Bool)

(assert (=> b!6633127 (=> res!2718495 e!4011840)))

(assert (=> b!6633127 (= res!2718495 (not (isEmpty!37969 (tail!12524 s!2326))))))

(declare-fun b!6633128 () Bool)

(assert (=> b!6633128 (= e!4011840 (not (= (head!13439 s!2326) (c!1223326 r!7292))))))

(declare-fun b!6633129 () Bool)

(assert (=> b!6633129 (= e!4011839 (nullable!6492 r!7292))))

(declare-fun b!6633130 () Bool)

(declare-fun res!2718493 () Bool)

(assert (=> b!6633130 (=> (not res!2718493) (not e!4011841))))

(assert (=> b!6633130 (= res!2718493 (not call!582208))))

(declare-fun b!6633131 () Bool)

(declare-fun res!2718498 () Bool)

(assert (=> b!6633131 (=> (not res!2718498) (not e!4011841))))

(assert (=> b!6633131 (= res!2718498 (isEmpty!37969 (tail!12524 s!2326)))))

(declare-fun b!6633132 () Bool)

(declare-fun e!4011843 () Bool)

(assert (=> b!6633132 (= e!4011844 e!4011843)))

(declare-fun res!2718496 () Bool)

(assert (=> b!6633132 (=> (not res!2718496) (not e!4011843))))

(assert (=> b!6633132 (= res!2718496 (not lt!2419217))))

(declare-fun b!6633133 () Bool)

(declare-fun res!2718492 () Bool)

(assert (=> b!6633133 (=> res!2718492 e!4011844)))

(assert (=> b!6633133 (= res!2718492 (not ((_ is ElementMatch!16499) r!7292)))))

(assert (=> b!6633133 (= e!4011838 e!4011844)))

(declare-fun b!6633134 () Bool)

(declare-fun derivativeStep!5178 (Regex!16499 C!33268) Regex!16499)

(assert (=> b!6633134 (= e!4011839 (matchR!8682 (derivativeStep!5178 r!7292 (head!13439 s!2326)) (tail!12524 s!2326)))))

(declare-fun b!6633135 () Bool)

(assert (=> b!6633135 (= e!4011843 e!4011840)))

(declare-fun res!2718494 () Bool)

(assert (=> b!6633135 (=> res!2718494 e!4011840)))

(assert (=> b!6633135 (= res!2718494 call!582208)))

(assert (= (and d!2079323 c!1223388) b!6633129))

(assert (= (and d!2079323 (not c!1223388)) b!6633134))

(assert (= (and d!2079323 c!1223387) b!6633125))

(assert (= (and d!2079323 (not c!1223387)) b!6633123))

(assert (= (and b!6633123 c!1223389) b!6633124))

(assert (= (and b!6633123 (not c!1223389)) b!6633133))

(assert (= (and b!6633133 (not res!2718492)) b!6633122))

(assert (= (and b!6633122 res!2718497) b!6633130))

(assert (= (and b!6633130 res!2718493) b!6633131))

(assert (= (and b!6633131 res!2718498) b!6633126))

(assert (= (and b!6633122 (not res!2718499)) b!6633132))

(assert (= (and b!6633132 res!2718496) b!6633135))

(assert (= (and b!6633135 (not res!2718494)) b!6633127))

(assert (= (and b!6633127 (not res!2718495)) b!6633128))

(assert (= (or b!6633125 b!6633130 b!6633135) bm!582203))

(declare-fun m!7401672 () Bool)

(assert (=> b!6633134 m!7401672))

(assert (=> b!6633134 m!7401672))

(declare-fun m!7401674 () Bool)

(assert (=> b!6633134 m!7401674))

(declare-fun m!7401676 () Bool)

(assert (=> b!6633134 m!7401676))

(assert (=> b!6633134 m!7401674))

(assert (=> b!6633134 m!7401676))

(declare-fun m!7401678 () Bool)

(assert (=> b!6633134 m!7401678))

(assert (=> d!2079323 m!7401664))

(assert (=> d!2079323 m!7401576))

(assert (=> b!6633126 m!7401672))

(assert (=> b!6633128 m!7401672))

(assert (=> bm!582203 m!7401664))

(assert (=> b!6633131 m!7401676))

(assert (=> b!6633131 m!7401676))

(declare-fun m!7401680 () Bool)

(assert (=> b!6633131 m!7401680))

(declare-fun m!7401682 () Bool)

(assert (=> b!6633129 m!7401682))

(assert (=> b!6633127 m!7401676))

(assert (=> b!6633127 m!7401676))

(assert (=> b!6633127 m!7401680))

(assert (=> b!6632905 d!2079323))

(declare-fun d!2079325 () Bool)

(assert (=> d!2079325 (= (matchR!8682 r!7292 s!2326) (matchRSpec!3600 r!7292 s!2326))))

(declare-fun lt!2419223 () Unit!159351)

(declare-fun choose!49541 (Regex!16499 List!65798) Unit!159351)

(assert (=> d!2079325 (= lt!2419223 (choose!49541 r!7292 s!2326))))

(assert (=> d!2079325 (validRegex!8235 r!7292)))

(assert (=> d!2079325 (= (mainMatchTheorem!3600 r!7292 s!2326) lt!2419223)))

(declare-fun bs!1704540 () Bool)

(assert (= bs!1704540 d!2079325))

(assert (=> bs!1704540 m!7401550))

(assert (=> bs!1704540 m!7401548))

(declare-fun m!7401684 () Bool)

(assert (=> bs!1704540 m!7401684))

(assert (=> bs!1704540 m!7401576))

(assert (=> b!6632905 d!2079325))

(declare-fun b!6633177 () Bool)

(declare-fun e!4011868 () Regex!16499)

(assert (=> b!6633177 (= e!4011868 (h!72120 (exprs!6383 (h!72121 zl!343))))))

(declare-fun b!6633178 () Bool)

(declare-fun e!4011872 () Bool)

(declare-fun lt!2419228 () Regex!16499)

(declare-fun isEmptyExpr!1872 (Regex!16499) Bool)

(assert (=> b!6633178 (= e!4011872 (isEmptyExpr!1872 lt!2419228))))

(declare-fun b!6633179 () Bool)

(declare-fun e!4011871 () Bool)

(declare-fun isConcat!1395 (Regex!16499) Bool)

(assert (=> b!6633179 (= e!4011871 (isConcat!1395 lt!2419228))))

(declare-fun d!2079327 () Bool)

(declare-fun e!4011873 () Bool)

(assert (=> d!2079327 e!4011873))

(declare-fun res!2718521 () Bool)

(assert (=> d!2079327 (=> (not res!2718521) (not e!4011873))))

(assert (=> d!2079327 (= res!2718521 (validRegex!8235 lt!2419228))))

(assert (=> d!2079327 (= lt!2419228 e!4011868)))

(declare-fun c!1223401 () Bool)

(declare-fun e!4011869 () Bool)

(assert (=> d!2079327 (= c!1223401 e!4011869)))

(declare-fun res!2718522 () Bool)

(assert (=> d!2079327 (=> (not res!2718522) (not e!4011869))))

(assert (=> d!2079327 (= res!2718522 ((_ is Cons!65672) (exprs!6383 (h!72121 zl!343))))))

(declare-fun lambda!370587 () Int)

(declare-fun forall!15694 (List!65796 Int) Bool)

(assert (=> d!2079327 (forall!15694 (exprs!6383 (h!72121 zl!343)) lambda!370587)))

(assert (=> d!2079327 (= (generalisedConcat!2096 (exprs!6383 (h!72121 zl!343))) lt!2419228)))

(declare-fun b!6633180 () Bool)

(declare-fun head!13440 (List!65796) Regex!16499)

(assert (=> b!6633180 (= e!4011871 (= lt!2419228 (head!13440 (exprs!6383 (h!72121 zl!343)))))))

(declare-fun b!6633181 () Bool)

(assert (=> b!6633181 (= e!4011872 e!4011871)))

(declare-fun c!1223403 () Bool)

(declare-fun tail!12525 (List!65796) List!65796)

(assert (=> b!6633181 (= c!1223403 (isEmpty!37968 (tail!12525 (exprs!6383 (h!72121 zl!343)))))))

(declare-fun b!6633182 () Bool)

(declare-fun e!4011870 () Regex!16499)

(assert (=> b!6633182 (= e!4011870 (Concat!25344 (h!72120 (exprs!6383 (h!72121 zl!343))) (generalisedConcat!2096 (t!379460 (exprs!6383 (h!72121 zl!343))))))))

(declare-fun b!6633183 () Bool)

(assert (=> b!6633183 (= e!4011869 (isEmpty!37968 (t!379460 (exprs!6383 (h!72121 zl!343)))))))

(declare-fun b!6633184 () Bool)

(assert (=> b!6633184 (= e!4011873 e!4011872)))

(declare-fun c!1223402 () Bool)

(assert (=> b!6633184 (= c!1223402 (isEmpty!37968 (exprs!6383 (h!72121 zl!343))))))

(declare-fun b!6633185 () Bool)

(assert (=> b!6633185 (= e!4011870 EmptyExpr!16499)))

(declare-fun b!6633186 () Bool)

(assert (=> b!6633186 (= e!4011868 e!4011870)))

(declare-fun c!1223400 () Bool)

(assert (=> b!6633186 (= c!1223400 ((_ is Cons!65672) (exprs!6383 (h!72121 zl!343))))))

(assert (= (and d!2079327 res!2718522) b!6633183))

(assert (= (and d!2079327 c!1223401) b!6633177))

(assert (= (and d!2079327 (not c!1223401)) b!6633186))

(assert (= (and b!6633186 c!1223400) b!6633182))

(assert (= (and b!6633186 (not c!1223400)) b!6633185))

(assert (= (and d!2079327 res!2718521) b!6633184))

(assert (= (and b!6633184 c!1223402) b!6633178))

(assert (= (and b!6633184 (not c!1223402)) b!6633181))

(assert (= (and b!6633181 c!1223403) b!6633180))

(assert (= (and b!6633181 (not c!1223403)) b!6633179))

(declare-fun m!7401710 () Bool)

(assert (=> b!6633180 m!7401710))

(declare-fun m!7401712 () Bool)

(assert (=> b!6633178 m!7401712))

(declare-fun m!7401714 () Bool)

(assert (=> b!6633181 m!7401714))

(assert (=> b!6633181 m!7401714))

(declare-fun m!7401716 () Bool)

(assert (=> b!6633181 m!7401716))

(declare-fun m!7401718 () Bool)

(assert (=> d!2079327 m!7401718))

(declare-fun m!7401720 () Bool)

(assert (=> d!2079327 m!7401720))

(declare-fun m!7401722 () Bool)

(assert (=> b!6633184 m!7401722))

(declare-fun m!7401724 () Bool)

(assert (=> b!6633179 m!7401724))

(assert (=> b!6633183 m!7401518))

(assert (=> b!6633182 m!7401512))

(assert (=> b!6632916 d!2079327))

(assert (=> b!6632921 d!2079293))

(declare-fun d!2079333 () Bool)

(assert (=> d!2079333 (not (matchZipper!2511 lt!2419195 (t!379462 s!2326)))))

(declare-fun lt!2419232 () Unit!159351)

(declare-fun choose!49542 ((InoxSet Context!11766) List!65798) Unit!159351)

(assert (=> d!2079333 (= lt!2419232 (choose!49542 lt!2419195 (t!379462 s!2326)))))

(assert (=> d!2079333 (= lt!2419195 ((as const (Array Context!11766 Bool)) false))))

(assert (=> d!2079333 (= (lemmaEmptyZipperMatchesNothing!94 lt!2419195 (t!379462 s!2326)) lt!2419232)))

(declare-fun bs!1704544 () Bool)

(assert (= bs!1704544 d!2079333))

(assert (=> bs!1704544 m!7401544))

(declare-fun m!7401730 () Bool)

(assert (=> bs!1704544 m!7401730))

(assert (=> b!6632921 d!2079333))

(declare-fun b!6633187 () Bool)

(declare-fun res!2718530 () Bool)

(declare-fun e!4011880 () Bool)

(assert (=> b!6633187 (=> res!2718530 e!4011880)))

(declare-fun e!4011877 () Bool)

(assert (=> b!6633187 (= res!2718530 e!4011877)))

(declare-fun res!2718528 () Bool)

(assert (=> b!6633187 (=> (not res!2718528) (not e!4011877))))

(declare-fun lt!2419233 () Bool)

(assert (=> b!6633187 (= res!2718528 lt!2419233)))

(declare-fun d!2079337 () Bool)

(declare-fun e!4011878 () Bool)

(assert (=> d!2079337 e!4011878))

(declare-fun c!1223404 () Bool)

(assert (=> d!2079337 (= c!1223404 ((_ is EmptyExpr!16499) lt!2419180))))

(declare-fun e!4011875 () Bool)

(assert (=> d!2079337 (= lt!2419233 e!4011875)))

(declare-fun c!1223405 () Bool)

(assert (=> d!2079337 (= c!1223405 (isEmpty!37969 s!2326))))

(assert (=> d!2079337 (validRegex!8235 lt!2419180)))

(assert (=> d!2079337 (= (matchR!8682 lt!2419180 s!2326) lt!2419233)))

(declare-fun bm!582204 () Bool)

(declare-fun call!582209 () Bool)

(assert (=> bm!582204 (= call!582209 (isEmpty!37969 s!2326))))

(declare-fun b!6633188 () Bool)

(declare-fun e!4011874 () Bool)

(assert (=> b!6633188 (= e!4011878 e!4011874)))

(declare-fun c!1223406 () Bool)

(assert (=> b!6633188 (= c!1223406 ((_ is EmptyLang!16499) lt!2419180))))

(declare-fun b!6633189 () Bool)

(assert (=> b!6633189 (= e!4011874 (not lt!2419233))))

(declare-fun b!6633190 () Bool)

(assert (=> b!6633190 (= e!4011878 (= lt!2419233 call!582209))))

(declare-fun b!6633191 () Bool)

(assert (=> b!6633191 (= e!4011877 (= (head!13439 s!2326) (c!1223326 lt!2419180)))))

(declare-fun b!6633192 () Bool)

(declare-fun res!2718526 () Bool)

(declare-fun e!4011876 () Bool)

(assert (=> b!6633192 (=> res!2718526 e!4011876)))

(assert (=> b!6633192 (= res!2718526 (not (isEmpty!37969 (tail!12524 s!2326))))))

(declare-fun b!6633193 () Bool)

(assert (=> b!6633193 (= e!4011876 (not (= (head!13439 s!2326) (c!1223326 lt!2419180))))))

(declare-fun b!6633194 () Bool)

(assert (=> b!6633194 (= e!4011875 (nullable!6492 lt!2419180))))

(declare-fun b!6633195 () Bool)

(declare-fun res!2718524 () Bool)

(assert (=> b!6633195 (=> (not res!2718524) (not e!4011877))))

(assert (=> b!6633195 (= res!2718524 (not call!582209))))

(declare-fun b!6633196 () Bool)

(declare-fun res!2718529 () Bool)

(assert (=> b!6633196 (=> (not res!2718529) (not e!4011877))))

(assert (=> b!6633196 (= res!2718529 (isEmpty!37969 (tail!12524 s!2326)))))

(declare-fun b!6633197 () Bool)

(declare-fun e!4011879 () Bool)

(assert (=> b!6633197 (= e!4011880 e!4011879)))

(declare-fun res!2718527 () Bool)

(assert (=> b!6633197 (=> (not res!2718527) (not e!4011879))))

(assert (=> b!6633197 (= res!2718527 (not lt!2419233))))

(declare-fun b!6633198 () Bool)

(declare-fun res!2718523 () Bool)

(assert (=> b!6633198 (=> res!2718523 e!4011880)))

(assert (=> b!6633198 (= res!2718523 (not ((_ is ElementMatch!16499) lt!2419180)))))

(assert (=> b!6633198 (= e!4011874 e!4011880)))

(declare-fun b!6633199 () Bool)

(assert (=> b!6633199 (= e!4011875 (matchR!8682 (derivativeStep!5178 lt!2419180 (head!13439 s!2326)) (tail!12524 s!2326)))))

(declare-fun b!6633200 () Bool)

(assert (=> b!6633200 (= e!4011879 e!4011876)))

(declare-fun res!2718525 () Bool)

(assert (=> b!6633200 (=> res!2718525 e!4011876)))

(assert (=> b!6633200 (= res!2718525 call!582209)))

(assert (= (and d!2079337 c!1223405) b!6633194))

(assert (= (and d!2079337 (not c!1223405)) b!6633199))

(assert (= (and d!2079337 c!1223404) b!6633190))

(assert (= (and d!2079337 (not c!1223404)) b!6633188))

(assert (= (and b!6633188 c!1223406) b!6633189))

(assert (= (and b!6633188 (not c!1223406)) b!6633198))

(assert (= (and b!6633198 (not res!2718523)) b!6633187))

(assert (= (and b!6633187 res!2718528) b!6633195))

(assert (= (and b!6633195 res!2718524) b!6633196))

(assert (= (and b!6633196 res!2718529) b!6633191))

(assert (= (and b!6633187 (not res!2718530)) b!6633197))

(assert (= (and b!6633197 res!2718527) b!6633200))

(assert (= (and b!6633200 (not res!2718525)) b!6633192))

(assert (= (and b!6633192 (not res!2718526)) b!6633193))

(assert (= (or b!6633190 b!6633195 b!6633200) bm!582204))

(assert (=> b!6633199 m!7401672))

(assert (=> b!6633199 m!7401672))

(declare-fun m!7401732 () Bool)

(assert (=> b!6633199 m!7401732))

(assert (=> b!6633199 m!7401676))

(assert (=> b!6633199 m!7401732))

(assert (=> b!6633199 m!7401676))

(declare-fun m!7401734 () Bool)

(assert (=> b!6633199 m!7401734))

(assert (=> d!2079337 m!7401664))

(declare-fun m!7401736 () Bool)

(assert (=> d!2079337 m!7401736))

(assert (=> b!6633191 m!7401672))

(assert (=> b!6633193 m!7401672))

(assert (=> bm!582204 m!7401664))

(assert (=> b!6633196 m!7401676))

(assert (=> b!6633196 m!7401676))

(assert (=> b!6633196 m!7401680))

(declare-fun m!7401738 () Bool)

(assert (=> b!6633194 m!7401738))

(assert (=> b!6633192 m!7401676))

(assert (=> b!6633192 m!7401676))

(assert (=> b!6633192 m!7401680))

(assert (=> b!6632922 d!2079337))

(declare-fun d!2079339 () Bool)

(declare-fun c!1223407 () Bool)

(assert (=> d!2079339 (= c!1223407 (isEmpty!37969 s!2326))))

(declare-fun e!4011881 () Bool)

(assert (=> d!2079339 (= (matchZipper!2511 lt!2419202 s!2326) e!4011881)))

(declare-fun b!6633201 () Bool)

(assert (=> b!6633201 (= e!4011881 (nullableZipper!2239 lt!2419202))))

(declare-fun b!6633202 () Bool)

(assert (=> b!6633202 (= e!4011881 (matchZipper!2511 (derivationStepZipper!2465 lt!2419202 (head!13439 s!2326)) (tail!12524 s!2326)))))

(assert (= (and d!2079339 c!1223407) b!6633201))

(assert (= (and d!2079339 (not c!1223407)) b!6633202))

(assert (=> d!2079339 m!7401664))

(declare-fun m!7401740 () Bool)

(assert (=> b!6633201 m!7401740))

(assert (=> b!6633202 m!7401672))

(assert (=> b!6633202 m!7401672))

(declare-fun m!7401742 () Bool)

(assert (=> b!6633202 m!7401742))

(assert (=> b!6633202 m!7401676))

(assert (=> b!6633202 m!7401742))

(assert (=> b!6633202 m!7401676))

(declare-fun m!7401744 () Bool)

(assert (=> b!6633202 m!7401744))

(assert (=> b!6632922 d!2079339))

(declare-fun d!2079341 () Bool)

(assert (=> d!2079341 (= (matchR!8682 lt!2419180 s!2326) (matchZipper!2511 lt!2419202 s!2326))))

(declare-fun lt!2419238 () Unit!159351)

(declare-fun choose!49545 ((InoxSet Context!11766) List!65797 Regex!16499 List!65798) Unit!159351)

(assert (=> d!2079341 (= lt!2419238 (choose!49545 lt!2419202 (Cons!65673 lt!2419182 Nil!65673) lt!2419180 s!2326))))

(assert (=> d!2079341 (validRegex!8235 lt!2419180)))

(assert (=> d!2079341 (= (theoremZipperRegexEquiv!903 lt!2419202 (Cons!65673 lt!2419182 Nil!65673) lt!2419180 s!2326) lt!2419238)))

(declare-fun bs!1704545 () Bool)

(assert (= bs!1704545 d!2079341))

(assert (=> bs!1704545 m!7401506))

(assert (=> bs!1704545 m!7401508))

(declare-fun m!7401746 () Bool)

(assert (=> bs!1704545 m!7401746))

(assert (=> bs!1704545 m!7401736))

(assert (=> b!6632922 d!2079341))

(declare-fun bs!1704546 () Bool)

(declare-fun d!2079343 () Bool)

(assert (= bs!1704546 (and d!2079343 d!2079327)))

(declare-fun lambda!370593 () Int)

(assert (=> bs!1704546 (= lambda!370593 lambda!370587)))

(declare-fun b!6633211 () Bool)

(declare-fun e!4011886 () Regex!16499)

(assert (=> b!6633211 (= e!4011886 (h!72120 (t!379460 (exprs!6383 (h!72121 zl!343)))))))

(declare-fun b!6633212 () Bool)

(declare-fun e!4011890 () Bool)

(declare-fun lt!2419240 () Regex!16499)

(assert (=> b!6633212 (= e!4011890 (isEmptyExpr!1872 lt!2419240))))

(declare-fun b!6633213 () Bool)

(declare-fun e!4011889 () Bool)

(assert (=> b!6633213 (= e!4011889 (isConcat!1395 lt!2419240))))

(declare-fun e!4011891 () Bool)

(assert (=> d!2079343 e!4011891))

(declare-fun res!2718539 () Bool)

(assert (=> d!2079343 (=> (not res!2718539) (not e!4011891))))

(assert (=> d!2079343 (= res!2718539 (validRegex!8235 lt!2419240))))

(assert (=> d!2079343 (= lt!2419240 e!4011886)))

(declare-fun c!1223409 () Bool)

(declare-fun e!4011887 () Bool)

(assert (=> d!2079343 (= c!1223409 e!4011887)))

(declare-fun res!2718540 () Bool)

(assert (=> d!2079343 (=> (not res!2718540) (not e!4011887))))

(assert (=> d!2079343 (= res!2718540 ((_ is Cons!65672) (t!379460 (exprs!6383 (h!72121 zl!343)))))))

(assert (=> d!2079343 (forall!15694 (t!379460 (exprs!6383 (h!72121 zl!343))) lambda!370593)))

(assert (=> d!2079343 (= (generalisedConcat!2096 (t!379460 (exprs!6383 (h!72121 zl!343)))) lt!2419240)))

(declare-fun b!6633214 () Bool)

(assert (=> b!6633214 (= e!4011889 (= lt!2419240 (head!13440 (t!379460 (exprs!6383 (h!72121 zl!343))))))))

(declare-fun b!6633215 () Bool)

(assert (=> b!6633215 (= e!4011890 e!4011889)))

(declare-fun c!1223411 () Bool)

(assert (=> b!6633215 (= c!1223411 (isEmpty!37968 (tail!12525 (t!379460 (exprs!6383 (h!72121 zl!343))))))))

(declare-fun b!6633216 () Bool)

(declare-fun e!4011888 () Regex!16499)

(assert (=> b!6633216 (= e!4011888 (Concat!25344 (h!72120 (t!379460 (exprs!6383 (h!72121 zl!343)))) (generalisedConcat!2096 (t!379460 (t!379460 (exprs!6383 (h!72121 zl!343)))))))))

(declare-fun b!6633217 () Bool)

(assert (=> b!6633217 (= e!4011887 (isEmpty!37968 (t!379460 (t!379460 (exprs!6383 (h!72121 zl!343))))))))

(declare-fun b!6633218 () Bool)

(assert (=> b!6633218 (= e!4011891 e!4011890)))

(declare-fun c!1223410 () Bool)

(assert (=> b!6633218 (= c!1223410 (isEmpty!37968 (t!379460 (exprs!6383 (h!72121 zl!343)))))))

(declare-fun b!6633219 () Bool)

(assert (=> b!6633219 (= e!4011888 EmptyExpr!16499)))

(declare-fun b!6633220 () Bool)

(assert (=> b!6633220 (= e!4011886 e!4011888)))

(declare-fun c!1223408 () Bool)

(assert (=> b!6633220 (= c!1223408 ((_ is Cons!65672) (t!379460 (exprs!6383 (h!72121 zl!343)))))))

(assert (= (and d!2079343 res!2718540) b!6633217))

(assert (= (and d!2079343 c!1223409) b!6633211))

(assert (= (and d!2079343 (not c!1223409)) b!6633220))

(assert (= (and b!6633220 c!1223408) b!6633216))

(assert (= (and b!6633220 (not c!1223408)) b!6633219))

(assert (= (and d!2079343 res!2718539) b!6633218))

(assert (= (and b!6633218 c!1223410) b!6633212))

(assert (= (and b!6633218 (not c!1223410)) b!6633215))

(assert (= (and b!6633215 c!1223411) b!6633214))

(assert (= (and b!6633215 (not c!1223411)) b!6633213))

(declare-fun m!7401748 () Bool)

(assert (=> b!6633214 m!7401748))

(declare-fun m!7401750 () Bool)

(assert (=> b!6633212 m!7401750))

(declare-fun m!7401752 () Bool)

(assert (=> b!6633215 m!7401752))

(assert (=> b!6633215 m!7401752))

(declare-fun m!7401754 () Bool)

(assert (=> b!6633215 m!7401754))

(declare-fun m!7401756 () Bool)

(assert (=> d!2079343 m!7401756))

(declare-fun m!7401758 () Bool)

(assert (=> d!2079343 m!7401758))

(assert (=> b!6633218 m!7401518))

(declare-fun m!7401760 () Bool)

(assert (=> b!6633213 m!7401760))

(declare-fun m!7401762 () Bool)

(assert (=> b!6633217 m!7401762))

(declare-fun m!7401764 () Bool)

(assert (=> b!6633216 m!7401764))

(assert (=> b!6632922 d!2079343))

(declare-fun d!2079345 () Bool)

(declare-fun lt!2419243 () Regex!16499)

(assert (=> d!2079345 (validRegex!8235 lt!2419243)))

(assert (=> d!2079345 (= lt!2419243 (generalisedUnion!2343 (unfocusZipperList!1920 zl!343)))))

(assert (=> d!2079345 (= (unfocusZipper!2241 zl!343) lt!2419243)))

(declare-fun bs!1704551 () Bool)

(assert (= bs!1704551 d!2079345))

(declare-fun m!7401774 () Bool)

(assert (=> bs!1704551 m!7401774))

(assert (=> bs!1704551 m!7401514))

(assert (=> bs!1704551 m!7401514))

(assert (=> bs!1704551 m!7401516))

(assert (=> b!6632913 d!2079345))

(declare-fun bs!1704552 () Bool)

(declare-fun b!6633222 () Bool)

(assert (= bs!1704552 (and b!6633222 b!6632927)))

(declare-fun lambda!370596 () Int)

(assert (=> bs!1704552 (not (= lambda!370596 lambda!370571))))

(assert (=> bs!1704552 (not (= lambda!370596 lambda!370572))))

(declare-fun bs!1704553 () Bool)

(assert (= bs!1704553 (and b!6633222 b!6633059)))

(assert (=> bs!1704553 (= (and (= (reg!16828 (regOne!33510 r!7292)) (reg!16828 r!7292)) (= (regOne!33510 r!7292) r!7292)) (= lambda!370596 lambda!370581))))

(declare-fun bs!1704554 () Bool)

(assert (= bs!1704554 (and b!6633222 b!6633065)))

(assert (=> bs!1704554 (not (= lambda!370596 lambda!370582))))

(assert (=> b!6633222 true))

(assert (=> b!6633222 true))

(declare-fun bs!1704555 () Bool)

(declare-fun b!6633228 () Bool)

(assert (= bs!1704555 (and b!6633228 b!6633059)))

(declare-fun lambda!370597 () Int)

(assert (=> bs!1704555 (not (= lambda!370597 lambda!370581))))

(declare-fun bs!1704556 () Bool)

(assert (= bs!1704556 (and b!6633228 b!6633065)))

(assert (=> bs!1704556 (= (and (= (regOne!33510 (regOne!33510 r!7292)) (regOne!33510 r!7292)) (= (regTwo!33510 (regOne!33510 r!7292)) (regTwo!33510 r!7292))) (= lambda!370597 lambda!370582))))

(declare-fun bs!1704557 () Bool)

(assert (= bs!1704557 (and b!6633228 b!6632927)))

(assert (=> bs!1704557 (= (and (= (regOne!33510 (regOne!33510 r!7292)) (regOne!33510 r!7292)) (= (regTwo!33510 (regOne!33510 r!7292)) (regTwo!33510 r!7292))) (= lambda!370597 lambda!370572))))

(assert (=> bs!1704557 (not (= lambda!370597 lambda!370571))))

(declare-fun bs!1704558 () Bool)

(assert (= bs!1704558 (and b!6633228 b!6633222)))

(assert (=> bs!1704558 (not (= lambda!370597 lambda!370596))))

(assert (=> b!6633228 true))

(assert (=> b!6633228 true))

(declare-fun b!6633221 () Bool)

(declare-fun c!1223415 () Bool)

(assert (=> b!6633221 (= c!1223415 ((_ is Union!16499) (regOne!33510 r!7292)))))

(declare-fun e!4011896 () Bool)

(declare-fun e!4011893 () Bool)

(assert (=> b!6633221 (= e!4011896 e!4011893)))

(declare-fun bm!582205 () Bool)

(declare-fun call!582210 () Bool)

(assert (=> bm!582205 (= call!582210 (isEmpty!37969 s!2326))))

(declare-fun e!4011892 () Bool)

(declare-fun call!582211 () Bool)

(assert (=> b!6633222 (= e!4011892 call!582211)))

(declare-fun b!6633223 () Bool)

(assert (=> b!6633223 (= e!4011896 (= s!2326 (Cons!65674 (c!1223326 (regOne!33510 r!7292)) Nil!65674)))))

(declare-fun b!6633224 () Bool)

(declare-fun e!4011895 () Bool)

(assert (=> b!6633224 (= e!4011893 e!4011895)))

(declare-fun res!2718543 () Bool)

(assert (=> b!6633224 (= res!2718543 (matchRSpec!3600 (regOne!33511 (regOne!33510 r!7292)) s!2326))))

(assert (=> b!6633224 (=> res!2718543 e!4011895)))

(declare-fun b!6633225 () Bool)

(declare-fun e!4011898 () Bool)

(declare-fun e!4011894 () Bool)

(assert (=> b!6633225 (= e!4011898 e!4011894)))

(declare-fun res!2718542 () Bool)

(assert (=> b!6633225 (= res!2718542 (not ((_ is EmptyLang!16499) (regOne!33510 r!7292))))))

(assert (=> b!6633225 (=> (not res!2718542) (not e!4011894))))

(declare-fun c!1223413 () Bool)

(declare-fun bm!582206 () Bool)

(assert (=> bm!582206 (= call!582211 (Exists!3569 (ite c!1223413 lambda!370596 lambda!370597)))))

(declare-fun b!6633226 () Bool)

(declare-fun e!4011897 () Bool)

(assert (=> b!6633226 (= e!4011893 e!4011897)))

(assert (=> b!6633226 (= c!1223413 ((_ is Star!16499) (regOne!33510 r!7292)))))

(declare-fun d!2079351 () Bool)

(declare-fun c!1223412 () Bool)

(assert (=> d!2079351 (= c!1223412 ((_ is EmptyExpr!16499) (regOne!33510 r!7292)))))

(assert (=> d!2079351 (= (matchRSpec!3600 (regOne!33510 r!7292) s!2326) e!4011898)))

(declare-fun b!6633227 () Bool)

(declare-fun c!1223414 () Bool)

(assert (=> b!6633227 (= c!1223414 ((_ is ElementMatch!16499) (regOne!33510 r!7292)))))

(assert (=> b!6633227 (= e!4011894 e!4011896)))

(assert (=> b!6633228 (= e!4011897 call!582211)))

(declare-fun b!6633229 () Bool)

(declare-fun res!2718541 () Bool)

(assert (=> b!6633229 (=> res!2718541 e!4011892)))

(assert (=> b!6633229 (= res!2718541 call!582210)))

(assert (=> b!6633229 (= e!4011897 e!4011892)))

(declare-fun b!6633230 () Bool)

(assert (=> b!6633230 (= e!4011895 (matchRSpec!3600 (regTwo!33511 (regOne!33510 r!7292)) s!2326))))

(declare-fun b!6633231 () Bool)

(assert (=> b!6633231 (= e!4011898 call!582210)))

(assert (= (and d!2079351 c!1223412) b!6633231))

(assert (= (and d!2079351 (not c!1223412)) b!6633225))

(assert (= (and b!6633225 res!2718542) b!6633227))

(assert (= (and b!6633227 c!1223414) b!6633223))

(assert (= (and b!6633227 (not c!1223414)) b!6633221))

(assert (= (and b!6633221 c!1223415) b!6633224))

(assert (= (and b!6633221 (not c!1223415)) b!6633226))

(assert (= (and b!6633224 (not res!2718543)) b!6633230))

(assert (= (and b!6633226 c!1223413) b!6633229))

(assert (= (and b!6633226 (not c!1223413)) b!6633228))

(assert (= (and b!6633229 (not res!2718541)) b!6633222))

(assert (= (or b!6633222 b!6633228) bm!582206))

(assert (= (or b!6633231 b!6633229) bm!582205))

(assert (=> bm!582205 m!7401664))

(declare-fun m!7401776 () Bool)

(assert (=> b!6633224 m!7401776))

(declare-fun m!7401778 () Bool)

(assert (=> bm!582206 m!7401778))

(declare-fun m!7401780 () Bool)

(assert (=> b!6633230 m!7401780))

(assert (=> b!6632923 d!2079351))

(declare-fun d!2079353 () Bool)

(assert (=> d!2079353 (= (matchR!8682 (regOne!33510 r!7292) s!2326) (matchRSpec!3600 (regOne!33510 r!7292) s!2326))))

(declare-fun lt!2419244 () Unit!159351)

(assert (=> d!2079353 (= lt!2419244 (choose!49541 (regOne!33510 r!7292) s!2326))))

(assert (=> d!2079353 (validRegex!8235 (regOne!33510 r!7292))))

(assert (=> d!2079353 (= (mainMatchTheorem!3600 (regOne!33510 r!7292) s!2326) lt!2419244)))

(declare-fun bs!1704559 () Bool)

(assert (= bs!1704559 d!2079353))

(assert (=> bs!1704559 m!7401560))

(assert (=> bs!1704559 m!7401562))

(declare-fun m!7401782 () Bool)

(assert (=> bs!1704559 m!7401782))

(declare-fun m!7401784 () Bool)

(assert (=> bs!1704559 m!7401784))

(assert (=> b!6632923 d!2079353))

(declare-fun b!6633232 () Bool)

(declare-fun res!2718551 () Bool)

(declare-fun e!4011905 () Bool)

(assert (=> b!6633232 (=> res!2718551 e!4011905)))

(declare-fun e!4011902 () Bool)

(assert (=> b!6633232 (= res!2718551 e!4011902)))

(declare-fun res!2718549 () Bool)

(assert (=> b!6633232 (=> (not res!2718549) (not e!4011902))))

(declare-fun lt!2419245 () Bool)

(assert (=> b!6633232 (= res!2718549 lt!2419245)))

(declare-fun d!2079355 () Bool)

(declare-fun e!4011903 () Bool)

(assert (=> d!2079355 e!4011903))

(declare-fun c!1223416 () Bool)

(assert (=> d!2079355 (= c!1223416 ((_ is EmptyExpr!16499) (regOne!33510 r!7292)))))

(declare-fun e!4011900 () Bool)

(assert (=> d!2079355 (= lt!2419245 e!4011900)))

(declare-fun c!1223417 () Bool)

(assert (=> d!2079355 (= c!1223417 (isEmpty!37969 s!2326))))

(assert (=> d!2079355 (validRegex!8235 (regOne!33510 r!7292))))

(assert (=> d!2079355 (= (matchR!8682 (regOne!33510 r!7292) s!2326) lt!2419245)))

(declare-fun bm!582207 () Bool)

(declare-fun call!582212 () Bool)

(assert (=> bm!582207 (= call!582212 (isEmpty!37969 s!2326))))

(declare-fun b!6633233 () Bool)

(declare-fun e!4011899 () Bool)

(assert (=> b!6633233 (= e!4011903 e!4011899)))

(declare-fun c!1223418 () Bool)

(assert (=> b!6633233 (= c!1223418 ((_ is EmptyLang!16499) (regOne!33510 r!7292)))))

(declare-fun b!6633234 () Bool)

(assert (=> b!6633234 (= e!4011899 (not lt!2419245))))

(declare-fun b!6633235 () Bool)

(assert (=> b!6633235 (= e!4011903 (= lt!2419245 call!582212))))

(declare-fun b!6633236 () Bool)

(assert (=> b!6633236 (= e!4011902 (= (head!13439 s!2326) (c!1223326 (regOne!33510 r!7292))))))

(declare-fun b!6633237 () Bool)

(declare-fun res!2718547 () Bool)

(declare-fun e!4011901 () Bool)

(assert (=> b!6633237 (=> res!2718547 e!4011901)))

(assert (=> b!6633237 (= res!2718547 (not (isEmpty!37969 (tail!12524 s!2326))))))

(declare-fun b!6633238 () Bool)

(assert (=> b!6633238 (= e!4011901 (not (= (head!13439 s!2326) (c!1223326 (regOne!33510 r!7292)))))))

(declare-fun b!6633239 () Bool)

(assert (=> b!6633239 (= e!4011900 (nullable!6492 (regOne!33510 r!7292)))))

(declare-fun b!6633240 () Bool)

(declare-fun res!2718545 () Bool)

(assert (=> b!6633240 (=> (not res!2718545) (not e!4011902))))

(assert (=> b!6633240 (= res!2718545 (not call!582212))))

(declare-fun b!6633241 () Bool)

(declare-fun res!2718550 () Bool)

(assert (=> b!6633241 (=> (not res!2718550) (not e!4011902))))

(assert (=> b!6633241 (= res!2718550 (isEmpty!37969 (tail!12524 s!2326)))))

(declare-fun b!6633242 () Bool)

(declare-fun e!4011904 () Bool)

(assert (=> b!6633242 (= e!4011905 e!4011904)))

(declare-fun res!2718548 () Bool)

(assert (=> b!6633242 (=> (not res!2718548) (not e!4011904))))

(assert (=> b!6633242 (= res!2718548 (not lt!2419245))))

(declare-fun b!6633243 () Bool)

(declare-fun res!2718544 () Bool)

(assert (=> b!6633243 (=> res!2718544 e!4011905)))

(assert (=> b!6633243 (= res!2718544 (not ((_ is ElementMatch!16499) (regOne!33510 r!7292))))))

(assert (=> b!6633243 (= e!4011899 e!4011905)))

(declare-fun b!6633244 () Bool)

(assert (=> b!6633244 (= e!4011900 (matchR!8682 (derivativeStep!5178 (regOne!33510 r!7292) (head!13439 s!2326)) (tail!12524 s!2326)))))

(declare-fun b!6633245 () Bool)

(assert (=> b!6633245 (= e!4011904 e!4011901)))

(declare-fun res!2718546 () Bool)

(assert (=> b!6633245 (=> res!2718546 e!4011901)))

(assert (=> b!6633245 (= res!2718546 call!582212)))

(assert (= (and d!2079355 c!1223417) b!6633239))

(assert (= (and d!2079355 (not c!1223417)) b!6633244))

(assert (= (and d!2079355 c!1223416) b!6633235))

(assert (= (and d!2079355 (not c!1223416)) b!6633233))

(assert (= (and b!6633233 c!1223418) b!6633234))

(assert (= (and b!6633233 (not c!1223418)) b!6633243))

(assert (= (and b!6633243 (not res!2718544)) b!6633232))

(assert (= (and b!6633232 res!2718549) b!6633240))

(assert (= (and b!6633240 res!2718545) b!6633241))

(assert (= (and b!6633241 res!2718550) b!6633236))

(assert (= (and b!6633232 (not res!2718551)) b!6633242))

(assert (= (and b!6633242 res!2718548) b!6633245))

(assert (= (and b!6633245 (not res!2718546)) b!6633237))

(assert (= (and b!6633237 (not res!2718547)) b!6633238))

(assert (= (or b!6633235 b!6633240 b!6633245) bm!582207))

(assert (=> b!6633244 m!7401672))

(assert (=> b!6633244 m!7401672))

(declare-fun m!7401786 () Bool)

(assert (=> b!6633244 m!7401786))

(assert (=> b!6633244 m!7401676))

(assert (=> b!6633244 m!7401786))

(assert (=> b!6633244 m!7401676))

(declare-fun m!7401788 () Bool)

(assert (=> b!6633244 m!7401788))

(assert (=> d!2079355 m!7401664))

(assert (=> d!2079355 m!7401784))

(assert (=> b!6633236 m!7401672))

(assert (=> b!6633238 m!7401672))

(assert (=> bm!582207 m!7401664))

(assert (=> b!6633241 m!7401676))

(assert (=> b!6633241 m!7401676))

(assert (=> b!6633241 m!7401680))

(declare-fun m!7401790 () Bool)

(assert (=> b!6633239 m!7401790))

(assert (=> b!6633237 m!7401676))

(assert (=> b!6633237 m!7401676))

(assert (=> b!6633237 m!7401680))

(assert (=> b!6632923 d!2079355))

(declare-fun bs!1704560 () Bool)

(declare-fun b!6633250 () Bool)

(assert (= bs!1704560 (and b!6633250 b!6633228)))

(declare-fun lambda!370600 () Int)

(assert (=> bs!1704560 (not (= lambda!370600 lambda!370597))))

(declare-fun bs!1704561 () Bool)

(assert (= bs!1704561 (and b!6633250 b!6633059)))

(assert (=> bs!1704561 (= (and (= (reg!16828 (regTwo!33510 r!7292)) (reg!16828 r!7292)) (= (regTwo!33510 r!7292) r!7292)) (= lambda!370600 lambda!370581))))

(declare-fun bs!1704562 () Bool)

(assert (= bs!1704562 (and b!6633250 b!6633065)))

(assert (=> bs!1704562 (not (= lambda!370600 lambda!370582))))

(declare-fun bs!1704563 () Bool)

(assert (= bs!1704563 (and b!6633250 b!6632927)))

(assert (=> bs!1704563 (not (= lambda!370600 lambda!370572))))

(assert (=> bs!1704563 (not (= lambda!370600 lambda!370571))))

(declare-fun bs!1704564 () Bool)

(assert (= bs!1704564 (and b!6633250 b!6633222)))

(assert (=> bs!1704564 (= (and (= (reg!16828 (regTwo!33510 r!7292)) (reg!16828 (regOne!33510 r!7292))) (= (regTwo!33510 r!7292) (regOne!33510 r!7292))) (= lambda!370600 lambda!370596))))

(assert (=> b!6633250 true))

(assert (=> b!6633250 true))

(declare-fun bs!1704565 () Bool)

(declare-fun b!6633257 () Bool)

(assert (= bs!1704565 (and b!6633257 b!6633228)))

(declare-fun lambda!370601 () Int)

(assert (=> bs!1704565 (= (and (= (regOne!33510 (regTwo!33510 r!7292)) (regOne!33510 (regOne!33510 r!7292))) (= (regTwo!33510 (regTwo!33510 r!7292)) (regTwo!33510 (regOne!33510 r!7292)))) (= lambda!370601 lambda!370597))))

(declare-fun bs!1704566 () Bool)

(assert (= bs!1704566 (and b!6633257 b!6633059)))

(assert (=> bs!1704566 (not (= lambda!370601 lambda!370581))))

(declare-fun bs!1704567 () Bool)

(assert (= bs!1704567 (and b!6633257 b!6633250)))

(assert (=> bs!1704567 (not (= lambda!370601 lambda!370600))))

(declare-fun bs!1704568 () Bool)

(assert (= bs!1704568 (and b!6633257 b!6633065)))

(assert (=> bs!1704568 (= (and (= (regOne!33510 (regTwo!33510 r!7292)) (regOne!33510 r!7292)) (= (regTwo!33510 (regTwo!33510 r!7292)) (regTwo!33510 r!7292))) (= lambda!370601 lambda!370582))))

(declare-fun bs!1704569 () Bool)

(assert (= bs!1704569 (and b!6633257 b!6632927)))

(assert (=> bs!1704569 (= (and (= (regOne!33510 (regTwo!33510 r!7292)) (regOne!33510 r!7292)) (= (regTwo!33510 (regTwo!33510 r!7292)) (regTwo!33510 r!7292))) (= lambda!370601 lambda!370572))))

(assert (=> bs!1704569 (not (= lambda!370601 lambda!370571))))

(declare-fun bs!1704570 () Bool)

(assert (= bs!1704570 (and b!6633257 b!6633222)))

(assert (=> bs!1704570 (not (= lambda!370601 lambda!370596))))

(assert (=> b!6633257 true))

(assert (=> b!6633257 true))

(declare-fun b!6633248 () Bool)

(declare-fun c!1223422 () Bool)

(assert (=> b!6633248 (= c!1223422 ((_ is Union!16499) (regTwo!33510 r!7292)))))

(declare-fun e!4011910 () Bool)

(declare-fun e!4011907 () Bool)

(assert (=> b!6633248 (= e!4011910 e!4011907)))

(declare-fun bm!582208 () Bool)

(declare-fun call!582213 () Bool)

(assert (=> bm!582208 (= call!582213 (isEmpty!37969 s!2326))))

(declare-fun e!4011906 () Bool)

(declare-fun call!582214 () Bool)

(assert (=> b!6633250 (= e!4011906 call!582214)))

(declare-fun b!6633252 () Bool)

(assert (=> b!6633252 (= e!4011910 (= s!2326 (Cons!65674 (c!1223326 (regTwo!33510 r!7292)) Nil!65674)))))

(declare-fun b!6633253 () Bool)

(declare-fun e!4011909 () Bool)

(assert (=> b!6633253 (= e!4011907 e!4011909)))

(declare-fun res!2718554 () Bool)

(assert (=> b!6633253 (= res!2718554 (matchRSpec!3600 (regOne!33511 (regTwo!33510 r!7292)) s!2326))))

(assert (=> b!6633253 (=> res!2718554 e!4011909)))

(declare-fun b!6633254 () Bool)

(declare-fun e!4011912 () Bool)

(declare-fun e!4011908 () Bool)

(assert (=> b!6633254 (= e!4011912 e!4011908)))

(declare-fun res!2718553 () Bool)

(assert (=> b!6633254 (= res!2718553 (not ((_ is EmptyLang!16499) (regTwo!33510 r!7292))))))

(assert (=> b!6633254 (=> (not res!2718553) (not e!4011908))))

(declare-fun c!1223420 () Bool)

(declare-fun bm!582209 () Bool)

(assert (=> bm!582209 (= call!582214 (Exists!3569 (ite c!1223420 lambda!370600 lambda!370601)))))

(declare-fun b!6633255 () Bool)

(declare-fun e!4011911 () Bool)

(assert (=> b!6633255 (= e!4011907 e!4011911)))

(assert (=> b!6633255 (= c!1223420 ((_ is Star!16499) (regTwo!33510 r!7292)))))

(declare-fun d!2079357 () Bool)

(declare-fun c!1223419 () Bool)

(assert (=> d!2079357 (= c!1223419 ((_ is EmptyExpr!16499) (regTwo!33510 r!7292)))))

(assert (=> d!2079357 (= (matchRSpec!3600 (regTwo!33510 r!7292) s!2326) e!4011912)))

(declare-fun b!6633256 () Bool)

(declare-fun c!1223421 () Bool)

(assert (=> b!6633256 (= c!1223421 ((_ is ElementMatch!16499) (regTwo!33510 r!7292)))))

(assert (=> b!6633256 (= e!4011908 e!4011910)))

(assert (=> b!6633257 (= e!4011911 call!582214)))

(declare-fun b!6633258 () Bool)

(declare-fun res!2718552 () Bool)

(assert (=> b!6633258 (=> res!2718552 e!4011906)))

(assert (=> b!6633258 (= res!2718552 call!582213)))

(assert (=> b!6633258 (= e!4011911 e!4011906)))

(declare-fun b!6633259 () Bool)

(assert (=> b!6633259 (= e!4011909 (matchRSpec!3600 (regTwo!33511 (regTwo!33510 r!7292)) s!2326))))

(declare-fun b!6633260 () Bool)

(assert (=> b!6633260 (= e!4011912 call!582213)))

(assert (= (and d!2079357 c!1223419) b!6633260))

(assert (= (and d!2079357 (not c!1223419)) b!6633254))

(assert (= (and b!6633254 res!2718553) b!6633256))

(assert (= (and b!6633256 c!1223421) b!6633252))

(assert (= (and b!6633256 (not c!1223421)) b!6633248))

(assert (= (and b!6633248 c!1223422) b!6633253))

(assert (= (and b!6633248 (not c!1223422)) b!6633255))

(assert (= (and b!6633253 (not res!2718554)) b!6633259))

(assert (= (and b!6633255 c!1223420) b!6633258))

(assert (= (and b!6633255 (not c!1223420)) b!6633257))

(assert (= (and b!6633258 (not res!2718552)) b!6633250))

(assert (= (or b!6633250 b!6633257) bm!582209))

(assert (= (or b!6633260 b!6633258) bm!582208))

(assert (=> bm!582208 m!7401664))

(declare-fun m!7401792 () Bool)

(assert (=> b!6633253 m!7401792))

(declare-fun m!7401794 () Bool)

(assert (=> bm!582209 m!7401794))

(declare-fun m!7401796 () Bool)

(assert (=> b!6633259 m!7401796))

(assert (=> b!6632923 d!2079357))

(declare-fun b!6633287 () Bool)

(declare-fun res!2718568 () Bool)

(declare-fun e!4011937 () Bool)

(assert (=> b!6633287 (=> res!2718568 e!4011937)))

(declare-fun e!4011934 () Bool)

(assert (=> b!6633287 (= res!2718568 e!4011934)))

(declare-fun res!2718566 () Bool)

(assert (=> b!6633287 (=> (not res!2718566) (not e!4011934))))

(declare-fun lt!2419249 () Bool)

(assert (=> b!6633287 (= res!2718566 lt!2419249)))

(declare-fun d!2079359 () Bool)

(declare-fun e!4011935 () Bool)

(assert (=> d!2079359 e!4011935))

(declare-fun c!1223435 () Bool)

(assert (=> d!2079359 (= c!1223435 ((_ is EmptyExpr!16499) (regTwo!33510 r!7292)))))

(declare-fun e!4011932 () Bool)

(assert (=> d!2079359 (= lt!2419249 e!4011932)))

(declare-fun c!1223436 () Bool)

(assert (=> d!2079359 (= c!1223436 (isEmpty!37969 s!2326))))

(assert (=> d!2079359 (validRegex!8235 (regTwo!33510 r!7292))))

(assert (=> d!2079359 (= (matchR!8682 (regTwo!33510 r!7292) s!2326) lt!2419249)))

(declare-fun bm!582210 () Bool)

(declare-fun call!582215 () Bool)

(assert (=> bm!582210 (= call!582215 (isEmpty!37969 s!2326))))

(declare-fun b!6633288 () Bool)

(declare-fun e!4011931 () Bool)

(assert (=> b!6633288 (= e!4011935 e!4011931)))

(declare-fun c!1223437 () Bool)

(assert (=> b!6633288 (= c!1223437 ((_ is EmptyLang!16499) (regTwo!33510 r!7292)))))

(declare-fun b!6633289 () Bool)

(assert (=> b!6633289 (= e!4011931 (not lt!2419249))))

(declare-fun b!6633290 () Bool)

(assert (=> b!6633290 (= e!4011935 (= lt!2419249 call!582215))))

(declare-fun b!6633291 () Bool)

(assert (=> b!6633291 (= e!4011934 (= (head!13439 s!2326) (c!1223326 (regTwo!33510 r!7292))))))

(declare-fun b!6633292 () Bool)

(declare-fun res!2718564 () Bool)

(declare-fun e!4011933 () Bool)

(assert (=> b!6633292 (=> res!2718564 e!4011933)))

(assert (=> b!6633292 (= res!2718564 (not (isEmpty!37969 (tail!12524 s!2326))))))

(declare-fun b!6633293 () Bool)

(assert (=> b!6633293 (= e!4011933 (not (= (head!13439 s!2326) (c!1223326 (regTwo!33510 r!7292)))))))

(declare-fun b!6633294 () Bool)

(assert (=> b!6633294 (= e!4011932 (nullable!6492 (regTwo!33510 r!7292)))))

(declare-fun b!6633295 () Bool)

(declare-fun res!2718562 () Bool)

(assert (=> b!6633295 (=> (not res!2718562) (not e!4011934))))

(assert (=> b!6633295 (= res!2718562 (not call!582215))))

(declare-fun b!6633296 () Bool)

(declare-fun res!2718567 () Bool)

(assert (=> b!6633296 (=> (not res!2718567) (not e!4011934))))

(assert (=> b!6633296 (= res!2718567 (isEmpty!37969 (tail!12524 s!2326)))))

(declare-fun b!6633297 () Bool)

(declare-fun e!4011936 () Bool)

(assert (=> b!6633297 (= e!4011937 e!4011936)))

(declare-fun res!2718565 () Bool)

(assert (=> b!6633297 (=> (not res!2718565) (not e!4011936))))

(assert (=> b!6633297 (= res!2718565 (not lt!2419249))))

(declare-fun b!6633298 () Bool)

(declare-fun res!2718561 () Bool)

(assert (=> b!6633298 (=> res!2718561 e!4011937)))

(assert (=> b!6633298 (= res!2718561 (not ((_ is ElementMatch!16499) (regTwo!33510 r!7292))))))

(assert (=> b!6633298 (= e!4011931 e!4011937)))

(declare-fun b!6633299 () Bool)

(assert (=> b!6633299 (= e!4011932 (matchR!8682 (derivativeStep!5178 (regTwo!33510 r!7292) (head!13439 s!2326)) (tail!12524 s!2326)))))

(declare-fun b!6633300 () Bool)

(assert (=> b!6633300 (= e!4011936 e!4011933)))

(declare-fun res!2718563 () Bool)

(assert (=> b!6633300 (=> res!2718563 e!4011933)))

(assert (=> b!6633300 (= res!2718563 call!582215)))

(assert (= (and d!2079359 c!1223436) b!6633294))

(assert (= (and d!2079359 (not c!1223436)) b!6633299))

(assert (= (and d!2079359 c!1223435) b!6633290))

(assert (= (and d!2079359 (not c!1223435)) b!6633288))

(assert (= (and b!6633288 c!1223437) b!6633289))

(assert (= (and b!6633288 (not c!1223437)) b!6633298))

(assert (= (and b!6633298 (not res!2718561)) b!6633287))

(assert (= (and b!6633287 res!2718566) b!6633295))

(assert (= (and b!6633295 res!2718562) b!6633296))

(assert (= (and b!6633296 res!2718567) b!6633291))

(assert (= (and b!6633287 (not res!2718568)) b!6633297))

(assert (= (and b!6633297 res!2718565) b!6633300))

(assert (= (and b!6633300 (not res!2718563)) b!6633292))

(assert (= (and b!6633292 (not res!2718564)) b!6633293))

(assert (= (or b!6633290 b!6633295 b!6633300) bm!582210))

(assert (=> b!6633299 m!7401672))

(assert (=> b!6633299 m!7401672))

(declare-fun m!7401802 () Bool)

(assert (=> b!6633299 m!7401802))

(assert (=> b!6633299 m!7401676))

(assert (=> b!6633299 m!7401802))

(assert (=> b!6633299 m!7401676))

(declare-fun m!7401810 () Bool)

(assert (=> b!6633299 m!7401810))

(assert (=> d!2079359 m!7401664))

(declare-fun m!7401816 () Bool)

(assert (=> d!2079359 m!7401816))

(assert (=> b!6633291 m!7401672))

(assert (=> b!6633293 m!7401672))

(assert (=> bm!582210 m!7401664))

(assert (=> b!6633296 m!7401676))

(assert (=> b!6633296 m!7401676))

(assert (=> b!6633296 m!7401680))

(declare-fun m!7401824 () Bool)

(assert (=> b!6633294 m!7401824))

(assert (=> b!6633292 m!7401676))

(assert (=> b!6633292 m!7401676))

(assert (=> b!6633292 m!7401680))

(assert (=> b!6632923 d!2079359))

(declare-fun d!2079363 () Bool)

(assert (=> d!2079363 (= (matchR!8682 (regTwo!33510 r!7292) s!2326) (matchRSpec!3600 (regTwo!33510 r!7292) s!2326))))

(declare-fun lt!2419250 () Unit!159351)

(assert (=> d!2079363 (= lt!2419250 (choose!49541 (regTwo!33510 r!7292) s!2326))))

(assert (=> d!2079363 (validRegex!8235 (regTwo!33510 r!7292))))

(assert (=> d!2079363 (= (mainMatchTheorem!3600 (regTwo!33510 r!7292) s!2326) lt!2419250)))

(declare-fun bs!1704571 () Bool)

(assert (= bs!1704571 d!2079363))

(assert (=> bs!1704571 m!7401554))

(assert (=> bs!1704571 m!7401564))

(declare-fun m!7401826 () Bool)

(assert (=> bs!1704571 m!7401826))

(assert (=> bs!1704571 m!7401816))

(assert (=> b!6632923 d!2079363))

(declare-fun d!2079365 () Bool)

(declare-fun choose!49550 ((InoxSet Context!11766) Int) (InoxSet Context!11766))

(assert (=> d!2079365 (= (flatMap!2004 z!1189 lambda!370573) (choose!49550 z!1189 lambda!370573))))

(declare-fun bs!1704572 () Bool)

(assert (= bs!1704572 d!2079365))

(declare-fun m!7401828 () Bool)

(assert (=> bs!1704572 m!7401828))

(assert (=> b!6632928 d!2079365))

(declare-fun b!6633317 () Bool)

(declare-fun e!4011947 () (InoxSet Context!11766))

(declare-fun e!4011948 () (InoxSet Context!11766))

(assert (=> b!6633317 (= e!4011947 e!4011948)))

(declare-fun c!1223447 () Bool)

(assert (=> b!6633317 (= c!1223447 ((_ is Cons!65672) (exprs!6383 lt!2419182)))))

(declare-fun bm!582213 () Bool)

(declare-fun call!582218 () (InoxSet Context!11766))

(assert (=> bm!582213 (= call!582218 (derivationStepZipperDown!1747 (h!72120 (exprs!6383 lt!2419182)) (Context!11767 (t!379460 (exprs!6383 lt!2419182))) (h!72122 s!2326)))))

(declare-fun b!6633318 () Bool)

(assert (=> b!6633318 (= e!4011947 ((_ map or) call!582218 (derivationStepZipperUp!1673 (Context!11767 (t!379460 (exprs!6383 lt!2419182))) (h!72122 s!2326))))))

(declare-fun b!6633319 () Bool)

(declare-fun e!4011949 () Bool)

(assert (=> b!6633319 (= e!4011949 (nullable!6492 (h!72120 (exprs!6383 lt!2419182))))))

(declare-fun b!6633320 () Bool)

(assert (=> b!6633320 (= e!4011948 ((as const (Array Context!11766 Bool)) false))))

(declare-fun b!6633321 () Bool)

(assert (=> b!6633321 (= e!4011948 call!582218)))

(declare-fun d!2079367 () Bool)

(declare-fun c!1223448 () Bool)

(assert (=> d!2079367 (= c!1223448 e!4011949)))

(declare-fun res!2718571 () Bool)

(assert (=> d!2079367 (=> (not res!2718571) (not e!4011949))))

(assert (=> d!2079367 (= res!2718571 ((_ is Cons!65672) (exprs!6383 lt!2419182)))))

(assert (=> d!2079367 (= (derivationStepZipperUp!1673 lt!2419182 (h!72122 s!2326)) e!4011947)))

(assert (= (and d!2079367 res!2718571) b!6633319))

(assert (= (and d!2079367 c!1223448) b!6633318))

(assert (= (and d!2079367 (not c!1223448)) b!6633317))

(assert (= (and b!6633317 c!1223447) b!6633321))

(assert (= (and b!6633317 (not c!1223447)) b!6633320))

(assert (= (or b!6633318 b!6633321) bm!582213))

(declare-fun m!7401834 () Bool)

(assert (=> bm!582213 m!7401834))

(declare-fun m!7401836 () Bool)

(assert (=> b!6633318 m!7401836))

(declare-fun m!7401838 () Bool)

(assert (=> b!6633319 m!7401838))

(assert (=> b!6632928 d!2079367))

(declare-fun d!2079371 () Bool)

(assert (=> d!2079371 (= (nullable!6492 (h!72120 (exprs!6383 (h!72121 zl!343)))) (nullableFct!2413 (h!72120 (exprs!6383 (h!72121 zl!343)))))))

(declare-fun bs!1704574 () Bool)

(assert (= bs!1704574 d!2079371))

(declare-fun m!7401840 () Bool)

(assert (=> bs!1704574 m!7401840))

(assert (=> b!6632928 d!2079371))

(declare-fun d!2079373 () Bool)

(declare-fun dynLambda!26160 (Int Context!11766) (InoxSet Context!11766))

(assert (=> d!2079373 (= (flatMap!2004 z!1189 lambda!370573) (dynLambda!26160 lambda!370573 (h!72121 zl!343)))))

(declare-fun lt!2419256 () Unit!159351)

(declare-fun choose!49551 ((InoxSet Context!11766) Context!11766 Int) Unit!159351)

(assert (=> d!2079373 (= lt!2419256 (choose!49551 z!1189 (h!72121 zl!343) lambda!370573))))

(assert (=> d!2079373 (= z!1189 (store ((as const (Array Context!11766 Bool)) false) (h!72121 zl!343) true))))

(assert (=> d!2079373 (= (lemmaFlatMapOnSingletonSet!1530 z!1189 (h!72121 zl!343) lambda!370573) lt!2419256)))

(declare-fun b_lambda!250755 () Bool)

(assert (=> (not b_lambda!250755) (not d!2079373)))

(declare-fun bs!1704577 () Bool)

(assert (= bs!1704577 d!2079373))

(assert (=> bs!1704577 m!7401538))

(declare-fun m!7401844 () Bool)

(assert (=> bs!1704577 m!7401844))

(declare-fun m!7401846 () Bool)

(assert (=> bs!1704577 m!7401846))

(declare-fun m!7401848 () Bool)

(assert (=> bs!1704577 m!7401848))

(assert (=> b!6632928 d!2079373))

(declare-fun b!6633324 () Bool)

(declare-fun e!4011950 () (InoxSet Context!11766))

(declare-fun e!4011951 () (InoxSet Context!11766))

(assert (=> b!6633324 (= e!4011950 e!4011951)))

(declare-fun c!1223449 () Bool)

(assert (=> b!6633324 (= c!1223449 ((_ is Cons!65672) (exprs!6383 (h!72121 zl!343))))))

(declare-fun bm!582214 () Bool)

(declare-fun call!582219 () (InoxSet Context!11766))

(assert (=> bm!582214 (= call!582219 (derivationStepZipperDown!1747 (h!72120 (exprs!6383 (h!72121 zl!343))) (Context!11767 (t!379460 (exprs!6383 (h!72121 zl!343)))) (h!72122 s!2326)))))

(declare-fun b!6633325 () Bool)

(assert (=> b!6633325 (= e!4011950 ((_ map or) call!582219 (derivationStepZipperUp!1673 (Context!11767 (t!379460 (exprs!6383 (h!72121 zl!343)))) (h!72122 s!2326))))))

(declare-fun b!6633326 () Bool)

(declare-fun e!4011952 () Bool)

(assert (=> b!6633326 (= e!4011952 (nullable!6492 (h!72120 (exprs!6383 (h!72121 zl!343)))))))

(declare-fun b!6633327 () Bool)

(assert (=> b!6633327 (= e!4011951 ((as const (Array Context!11766 Bool)) false))))

(declare-fun b!6633328 () Bool)

(assert (=> b!6633328 (= e!4011951 call!582219)))

(declare-fun d!2079377 () Bool)

(declare-fun c!1223450 () Bool)

(assert (=> d!2079377 (= c!1223450 e!4011952)))

(declare-fun res!2718572 () Bool)

(assert (=> d!2079377 (=> (not res!2718572) (not e!4011952))))

(assert (=> d!2079377 (= res!2718572 ((_ is Cons!65672) (exprs!6383 (h!72121 zl!343))))))

(assert (=> d!2079377 (= (derivationStepZipperUp!1673 (h!72121 zl!343) (h!72122 s!2326)) e!4011950)))

(assert (= (and d!2079377 res!2718572) b!6633326))

(assert (= (and d!2079377 c!1223450) b!6633325))

(assert (= (and d!2079377 (not c!1223450)) b!6633324))

(assert (= (and b!6633324 c!1223449) b!6633328))

(assert (= (and b!6633324 (not c!1223449)) b!6633327))

(assert (= (or b!6633325 b!6633328) bm!582214))

(declare-fun m!7401850 () Bool)

(assert (=> bm!582214 m!7401850))

(declare-fun m!7401852 () Bool)

(assert (=> b!6633325 m!7401852))

(assert (=> b!6633326 m!7401540))

(assert (=> b!6632928 d!2079377))

(declare-fun bm!582230 () Bool)

(declare-fun call!582236 () List!65796)

(declare-fun call!582237 () List!65796)

(assert (=> bm!582230 (= call!582236 call!582237)))

(declare-fun b!6633393 () Bool)

(declare-fun e!4011989 () (InoxSet Context!11766))

(declare-fun call!582235 () (InoxSet Context!11766))

(assert (=> b!6633393 (= e!4011989 call!582235)))

(declare-fun bm!582231 () Bool)

(declare-fun call!582239 () (InoxSet Context!11766))

(declare-fun call!582240 () (InoxSet Context!11766))

(assert (=> bm!582231 (= call!582239 call!582240)))

(declare-fun b!6633394 () Bool)

(declare-fun e!4011988 () (InoxSet Context!11766))

(declare-fun e!4011986 () (InoxSet Context!11766))

(assert (=> b!6633394 (= e!4011988 e!4011986)))

(declare-fun c!1223473 () Bool)

(assert (=> b!6633394 (= c!1223473 ((_ is Union!16499) (h!72120 (exprs!6383 (h!72121 zl!343)))))))

(declare-fun d!2079379 () Bool)

(declare-fun c!1223472 () Bool)

(assert (=> d!2079379 (= c!1223472 (and ((_ is ElementMatch!16499) (h!72120 (exprs!6383 (h!72121 zl!343)))) (= (c!1223326 (h!72120 (exprs!6383 (h!72121 zl!343)))) (h!72122 s!2326))))))

(assert (=> d!2079379 (= (derivationStepZipperDown!1747 (h!72120 (exprs!6383 (h!72121 zl!343))) lt!2419182 (h!72122 s!2326)) e!4011988)))

(declare-fun b!6633395 () Bool)

(assert (=> b!6633395 (= e!4011988 (store ((as const (Array Context!11766 Bool)) false) lt!2419182 true))))

(declare-fun b!6633396 () Bool)

(declare-fun c!1223471 () Bool)

(declare-fun e!4011990 () Bool)

(assert (=> b!6633396 (= c!1223471 e!4011990)))

(declare-fun res!2718599 () Bool)

(assert (=> b!6633396 (=> (not res!2718599) (not e!4011990))))

(assert (=> b!6633396 (= res!2718599 ((_ is Concat!25344) (h!72120 (exprs!6383 (h!72121 zl!343)))))))

(declare-fun e!4011987 () (InoxSet Context!11766))

(assert (=> b!6633396 (= e!4011986 e!4011987)))

(declare-fun b!6633397 () Bool)

(assert (=> b!6633397 (= e!4011987 e!4011989)))

(declare-fun c!1223470 () Bool)

(assert (=> b!6633397 (= c!1223470 ((_ is Concat!25344) (h!72120 (exprs!6383 (h!72121 zl!343)))))))

(declare-fun b!6633398 () Bool)

(declare-fun call!582238 () (InoxSet Context!11766))

(assert (=> b!6633398 (= e!4011986 ((_ map or) call!582238 call!582240))))

(declare-fun b!6633399 () Bool)

(assert (=> b!6633399 (= e!4011990 (nullable!6492 (regOne!33510 (h!72120 (exprs!6383 (h!72121 zl!343))))))))

(declare-fun bm!582232 () Bool)

(assert (=> bm!582232 (= call!582238 (derivationStepZipperDown!1747 (ite c!1223473 (regOne!33511 (h!72120 (exprs!6383 (h!72121 zl!343)))) (regOne!33510 (h!72120 (exprs!6383 (h!72121 zl!343))))) (ite c!1223473 lt!2419182 (Context!11767 call!582237)) (h!72122 s!2326)))))

(declare-fun b!6633400 () Bool)

(declare-fun e!4011991 () (InoxSet Context!11766))

(assert (=> b!6633400 (= e!4011991 ((as const (Array Context!11766 Bool)) false))))

(declare-fun bm!582233 () Bool)

(declare-fun $colon$colon!2336 (List!65796 Regex!16499) List!65796)

(assert (=> bm!582233 (= call!582237 ($colon$colon!2336 (exprs!6383 lt!2419182) (ite (or c!1223471 c!1223470) (regTwo!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))) (h!72120 (exprs!6383 (h!72121 zl!343))))))))

(declare-fun b!6633401 () Bool)

(assert (=> b!6633401 (= e!4011991 call!582235)))

(declare-fun bm!582234 () Bool)

(assert (=> bm!582234 (= call!582240 (derivationStepZipperDown!1747 (ite c!1223473 (regTwo!33511 (h!72120 (exprs!6383 (h!72121 zl!343)))) (ite c!1223471 (regTwo!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))) (ite c!1223470 (regOne!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))) (reg!16828 (h!72120 (exprs!6383 (h!72121 zl!343))))))) (ite (or c!1223473 c!1223471) lt!2419182 (Context!11767 call!582236)) (h!72122 s!2326)))))

(declare-fun b!6633402 () Bool)

(declare-fun c!1223474 () Bool)

(assert (=> b!6633402 (= c!1223474 ((_ is Star!16499) (h!72120 (exprs!6383 (h!72121 zl!343)))))))

(assert (=> b!6633402 (= e!4011989 e!4011991)))

(declare-fun b!6633403 () Bool)

(assert (=> b!6633403 (= e!4011987 ((_ map or) call!582238 call!582239))))

(declare-fun bm!582235 () Bool)

(assert (=> bm!582235 (= call!582235 call!582239)))

(assert (= (and d!2079379 c!1223472) b!6633395))

(assert (= (and d!2079379 (not c!1223472)) b!6633394))

(assert (= (and b!6633394 c!1223473) b!6633398))

(assert (= (and b!6633394 (not c!1223473)) b!6633396))

(assert (= (and b!6633396 res!2718599) b!6633399))

(assert (= (and b!6633396 c!1223471) b!6633403))

(assert (= (and b!6633396 (not c!1223471)) b!6633397))

(assert (= (and b!6633397 c!1223470) b!6633393))

(assert (= (and b!6633397 (not c!1223470)) b!6633402))

(assert (= (and b!6633402 c!1223474) b!6633401))

(assert (= (and b!6633402 (not c!1223474)) b!6633400))

(assert (= (or b!6633393 b!6633401) bm!582230))

(assert (= (or b!6633393 b!6633401) bm!582235))

(assert (= (or b!6633403 bm!582230) bm!582233))

(assert (= (or b!6633403 bm!582235) bm!582231))

(assert (= (or b!6633398 bm!582231) bm!582234))

(assert (= (or b!6633398 b!6633403) bm!582232))

(declare-fun m!7401870 () Bool)

(assert (=> bm!582232 m!7401870))

(declare-fun m!7401872 () Bool)

(assert (=> b!6633399 m!7401872))

(declare-fun m!7401874 () Bool)

(assert (=> bm!582233 m!7401874))

(assert (=> b!6633395 m!7401568))

(declare-fun m!7401876 () Bool)

(assert (=> bm!582234 m!7401876))

(assert (=> b!6632928 d!2079379))

(declare-fun b!6633410 () Bool)

(declare-fun e!4011995 () (InoxSet Context!11766))

(declare-fun e!4011996 () (InoxSet Context!11766))

(assert (=> b!6633410 (= e!4011995 e!4011996)))

(declare-fun c!1223478 () Bool)

(assert (=> b!6633410 (= c!1223478 ((_ is Cons!65672) (exprs!6383 (Context!11767 (Cons!65672 (h!72120 (exprs!6383 (h!72121 zl!343))) (t!379460 (exprs!6383 (h!72121 zl!343))))))))))

(declare-fun bm!582236 () Bool)

(declare-fun call!582241 () (InoxSet Context!11766))

(assert (=> bm!582236 (= call!582241 (derivationStepZipperDown!1747 (h!72120 (exprs!6383 (Context!11767 (Cons!65672 (h!72120 (exprs!6383 (h!72121 zl!343))) (t!379460 (exprs!6383 (h!72121 zl!343))))))) (Context!11767 (t!379460 (exprs!6383 (Context!11767 (Cons!65672 (h!72120 (exprs!6383 (h!72121 zl!343))) (t!379460 (exprs!6383 (h!72121 zl!343)))))))) (h!72122 s!2326)))))

(declare-fun b!6633411 () Bool)

(assert (=> b!6633411 (= e!4011995 ((_ map or) call!582241 (derivationStepZipperUp!1673 (Context!11767 (t!379460 (exprs!6383 (Context!11767 (Cons!65672 (h!72120 (exprs!6383 (h!72121 zl!343))) (t!379460 (exprs!6383 (h!72121 zl!343)))))))) (h!72122 s!2326))))))

(declare-fun b!6633412 () Bool)

(declare-fun e!4011997 () Bool)

(assert (=> b!6633412 (= e!4011997 (nullable!6492 (h!72120 (exprs!6383 (Context!11767 (Cons!65672 (h!72120 (exprs!6383 (h!72121 zl!343))) (t!379460 (exprs!6383 (h!72121 zl!343)))))))))))

(declare-fun b!6633413 () Bool)

(assert (=> b!6633413 (= e!4011996 ((as const (Array Context!11766 Bool)) false))))

(declare-fun b!6633414 () Bool)

(assert (=> b!6633414 (= e!4011996 call!582241)))

(declare-fun d!2079383 () Bool)

(declare-fun c!1223479 () Bool)

(assert (=> d!2079383 (= c!1223479 e!4011997)))

(declare-fun res!2718600 () Bool)

(assert (=> d!2079383 (=> (not res!2718600) (not e!4011997))))

(assert (=> d!2079383 (= res!2718600 ((_ is Cons!65672) (exprs!6383 (Context!11767 (Cons!65672 (h!72120 (exprs!6383 (h!72121 zl!343))) (t!379460 (exprs!6383 (h!72121 zl!343))))))))))

(assert (=> d!2079383 (= (derivationStepZipperUp!1673 (Context!11767 (Cons!65672 (h!72120 (exprs!6383 (h!72121 zl!343))) (t!379460 (exprs!6383 (h!72121 zl!343))))) (h!72122 s!2326)) e!4011995)))

(assert (= (and d!2079383 res!2718600) b!6633412))

(assert (= (and d!2079383 c!1223479) b!6633411))

(assert (= (and d!2079383 (not c!1223479)) b!6633410))

(assert (= (and b!6633410 c!1223478) b!6633414))

(assert (= (and b!6633410 (not c!1223478)) b!6633413))

(assert (= (or b!6633411 b!6633414) bm!582236))

(declare-fun m!7401884 () Bool)

(assert (=> bm!582236 m!7401884))

(declare-fun m!7401886 () Bool)

(assert (=> b!6633411 m!7401886))

(declare-fun m!7401888 () Bool)

(assert (=> b!6633412 m!7401888))

(assert (=> b!6632928 d!2079383))

(declare-fun d!2079387 () Bool)

(declare-fun e!4012000 () Bool)

(assert (=> d!2079387 e!4012000))

(declare-fun res!2718603 () Bool)

(assert (=> d!2079387 (=> (not res!2718603) (not e!4012000))))

(declare-fun lt!2419262 () List!65797)

(declare-fun noDuplicate!2300 (List!65797) Bool)

(assert (=> d!2079387 (= res!2718603 (noDuplicate!2300 lt!2419262))))

(declare-fun choose!49553 ((InoxSet Context!11766)) List!65797)

(assert (=> d!2079387 (= lt!2419262 (choose!49553 z!1189))))

(assert (=> d!2079387 (= (toList!10283 z!1189) lt!2419262)))

(declare-fun b!6633417 () Bool)

(declare-fun content!12684 (List!65797) (InoxSet Context!11766))

(assert (=> b!6633417 (= e!4012000 (= (content!12684 lt!2419262) z!1189))))

(assert (= (and d!2079387 res!2718603) b!6633417))

(declare-fun m!7401890 () Bool)

(assert (=> d!2079387 m!7401890))

(declare-fun m!7401892 () Bool)

(assert (=> d!2079387 m!7401892))

(declare-fun m!7401894 () Bool)

(assert (=> b!6633417 m!7401894))

(assert (=> b!6632919 d!2079387))

(declare-fun bs!1704578 () Bool)

(declare-fun d!2079389 () Bool)

(assert (= bs!1704578 (and d!2079389 d!2079327)))

(declare-fun lambda!370611 () Int)

(assert (=> bs!1704578 (= lambda!370611 lambda!370587)))

(declare-fun bs!1704579 () Bool)

(assert (= bs!1704579 (and d!2079389 d!2079343)))

(assert (=> bs!1704579 (= lambda!370611 lambda!370593)))

(assert (=> d!2079389 (= (inv!84494 (h!72121 zl!343)) (forall!15694 (exprs!6383 (h!72121 zl!343)) lambda!370611))))

(declare-fun bs!1704580 () Bool)

(assert (= bs!1704580 d!2079389))

(declare-fun m!7401896 () Bool)

(assert (=> bs!1704580 m!7401896))

(assert (=> b!6632910 d!2079389))

(declare-fun d!2079391 () Bool)

(assert (=> d!2079391 (= (isEmpty!37968 (t!379460 (exprs!6383 (h!72121 zl!343)))) ((_ is Nil!65672) (t!379460 (exprs!6383 (h!72121 zl!343)))))))

(assert (=> b!6632920 d!2079391))

(declare-fun bs!1704582 () Bool)

(declare-fun d!2079393 () Bool)

(assert (= bs!1704582 (and d!2079393 b!6632928)))

(declare-fun lambda!370612 () Int)

(assert (=> bs!1704582 (= lambda!370612 lambda!370573)))

(declare-fun bs!1704583 () Bool)

(assert (= bs!1704583 (and d!2079393 d!2079297)))

(assert (=> bs!1704583 (= lambda!370612 lambda!370576)))

(assert (=> d!2079393 true))

(assert (=> d!2079393 (= (derivationStepZipper!2465 lt!2419202 (h!72122 s!2326)) (flatMap!2004 lt!2419202 lambda!370612))))

(declare-fun bs!1704584 () Bool)

(assert (= bs!1704584 d!2079393))

(declare-fun m!7401900 () Bool)

(assert (=> bs!1704584 m!7401900))

(assert (=> b!6632930 d!2079393))

(declare-fun d!2079397 () Bool)

(assert (=> d!2079397 (= (flatMap!2004 lt!2419202 lambda!370573) (choose!49550 lt!2419202 lambda!370573))))

(declare-fun bs!1704585 () Bool)

(assert (= bs!1704585 d!2079397))

(declare-fun m!7401902 () Bool)

(assert (=> bs!1704585 m!7401902))

(assert (=> b!6632930 d!2079397))

(assert (=> b!6632930 d!2079367))

(declare-fun d!2079399 () Bool)

(assert (=> d!2079399 (= (flatMap!2004 lt!2419202 lambda!370573) (dynLambda!26160 lambda!370573 lt!2419182))))

(declare-fun lt!2419266 () Unit!159351)

(assert (=> d!2079399 (= lt!2419266 (choose!49551 lt!2419202 lt!2419182 lambda!370573))))

(assert (=> d!2079399 (= lt!2419202 (store ((as const (Array Context!11766 Bool)) false) lt!2419182 true))))

(assert (=> d!2079399 (= (lemmaFlatMapOnSingletonSet!1530 lt!2419202 lt!2419182 lambda!370573) lt!2419266)))

(declare-fun b_lambda!250757 () Bool)

(assert (=> (not b_lambda!250757) (not d!2079399)))

(declare-fun bs!1704586 () Bool)

(assert (= bs!1704586 d!2079399))

(assert (=> bs!1704586 m!7401570))

(declare-fun m!7401904 () Bool)

(assert (=> bs!1704586 m!7401904))

(declare-fun m!7401906 () Bool)

(assert (=> bs!1704586 m!7401906))

(assert (=> bs!1704586 m!7401568))

(assert (=> b!6632930 d!2079399))

(declare-fun d!2079401 () Bool)

(assert (=> d!2079401 (= (isEmpty!37967 (t!379461 zl!343)) ((_ is Nil!65673) (t!379461 zl!343)))))

(assert (=> b!6632906 d!2079401))

(declare-fun bs!1704587 () Bool)

(declare-fun d!2079403 () Bool)

(assert (= bs!1704587 (and d!2079403 d!2079327)))

(declare-fun lambda!370613 () Int)

(assert (=> bs!1704587 (= lambda!370613 lambda!370587)))

(declare-fun bs!1704588 () Bool)

(assert (= bs!1704588 (and d!2079403 d!2079343)))

(assert (=> bs!1704588 (= lambda!370613 lambda!370593)))

(declare-fun bs!1704589 () Bool)

(assert (= bs!1704589 (and d!2079403 d!2079389)))

(assert (=> bs!1704589 (= lambda!370613 lambda!370611)))

(assert (=> d!2079403 (= (inv!84494 setElem!45336) (forall!15694 (exprs!6383 setElem!45336) lambda!370613))))

(declare-fun bs!1704590 () Bool)

(assert (= bs!1704590 d!2079403))

(declare-fun m!7401908 () Bool)

(assert (=> bs!1704590 m!7401908))

(assert (=> setNonEmpty!45336 d!2079403))

(declare-fun bs!1704593 () Bool)

(declare-fun d!2079405 () Bool)

(assert (= bs!1704593 (and d!2079405 d!2079327)))

(declare-fun lambda!370619 () Int)

(assert (=> bs!1704593 (= lambda!370619 lambda!370587)))

(declare-fun bs!1704594 () Bool)

(assert (= bs!1704594 (and d!2079405 d!2079343)))

(assert (=> bs!1704594 (= lambda!370619 lambda!370593)))

(declare-fun bs!1704595 () Bool)

(assert (= bs!1704595 (and d!2079405 d!2079389)))

(assert (=> bs!1704595 (= lambda!370619 lambda!370611)))

(declare-fun bs!1704596 () Bool)

(assert (= bs!1704596 (and d!2079405 d!2079403)))

(assert (=> bs!1704596 (= lambda!370619 lambda!370613)))

(declare-fun b!6633468 () Bool)

(declare-fun e!4012032 () Regex!16499)

(assert (=> b!6633468 (= e!4012032 (h!72120 (unfocusZipperList!1920 zl!343)))))

(declare-fun b!6633469 () Bool)

(declare-fun e!4012033 () Bool)

(declare-fun lt!2419272 () Regex!16499)

(assert (=> b!6633469 (= e!4012033 (= lt!2419272 (head!13440 (unfocusZipperList!1920 zl!343))))))

(declare-fun b!6633470 () Bool)

(declare-fun e!4012031 () Bool)

(declare-fun e!4012034 () Bool)

(assert (=> b!6633470 (= e!4012031 e!4012034)))

(declare-fun c!1223502 () Bool)

(assert (=> b!6633470 (= c!1223502 (isEmpty!37968 (unfocusZipperList!1920 zl!343)))))

(declare-fun b!6633471 () Bool)

(declare-fun e!4012035 () Regex!16499)

(assert (=> b!6633471 (= e!4012032 e!4012035)))

(declare-fun c!1223500 () Bool)

(assert (=> b!6633471 (= c!1223500 ((_ is Cons!65672) (unfocusZipperList!1920 zl!343)))))

(assert (=> d!2079405 e!4012031))

(declare-fun res!2718614 () Bool)

(assert (=> d!2079405 (=> (not res!2718614) (not e!4012031))))

(assert (=> d!2079405 (= res!2718614 (validRegex!8235 lt!2419272))))

(assert (=> d!2079405 (= lt!2419272 e!4012032)))

(declare-fun c!1223501 () Bool)

(declare-fun e!4012036 () Bool)

(assert (=> d!2079405 (= c!1223501 e!4012036)))

(declare-fun res!2718615 () Bool)

(assert (=> d!2079405 (=> (not res!2718615) (not e!4012036))))

(assert (=> d!2079405 (= res!2718615 ((_ is Cons!65672) (unfocusZipperList!1920 zl!343)))))

(assert (=> d!2079405 (forall!15694 (unfocusZipperList!1920 zl!343) lambda!370619)))

(assert (=> d!2079405 (= (generalisedUnion!2343 (unfocusZipperList!1920 zl!343)) lt!2419272)))

(declare-fun b!6633472 () Bool)

(declare-fun isEmptyLang!1882 (Regex!16499) Bool)

(assert (=> b!6633472 (= e!4012034 (isEmptyLang!1882 lt!2419272))))

(declare-fun b!6633473 () Bool)

(assert (=> b!6633473 (= e!4012035 (Union!16499 (h!72120 (unfocusZipperList!1920 zl!343)) (generalisedUnion!2343 (t!379460 (unfocusZipperList!1920 zl!343)))))))

(declare-fun b!6633474 () Bool)

(declare-fun isUnion!1312 (Regex!16499) Bool)

(assert (=> b!6633474 (= e!4012033 (isUnion!1312 lt!2419272))))

(declare-fun b!6633475 () Bool)

(assert (=> b!6633475 (= e!4012036 (isEmpty!37968 (t!379460 (unfocusZipperList!1920 zl!343))))))

(declare-fun b!6633476 () Bool)

(assert (=> b!6633476 (= e!4012034 e!4012033)))

(declare-fun c!1223503 () Bool)

(assert (=> b!6633476 (= c!1223503 (isEmpty!37968 (tail!12525 (unfocusZipperList!1920 zl!343))))))

(declare-fun b!6633477 () Bool)

(assert (=> b!6633477 (= e!4012035 EmptyLang!16499)))

(assert (= (and d!2079405 res!2718615) b!6633475))

(assert (= (and d!2079405 c!1223501) b!6633468))

(assert (= (and d!2079405 (not c!1223501)) b!6633471))

(assert (= (and b!6633471 c!1223500) b!6633473))

(assert (= (and b!6633471 (not c!1223500)) b!6633477))

(assert (= (and d!2079405 res!2718614) b!6633470))

(assert (= (and b!6633470 c!1223502) b!6633472))

(assert (= (and b!6633470 (not c!1223502)) b!6633476))

(assert (= (and b!6633476 c!1223503) b!6633469))

(assert (= (and b!6633476 (not c!1223503)) b!6633474))

(assert (=> b!6633470 m!7401514))

(declare-fun m!7401928 () Bool)

(assert (=> b!6633470 m!7401928))

(assert (=> b!6633476 m!7401514))

(declare-fun m!7401930 () Bool)

(assert (=> b!6633476 m!7401930))

(assert (=> b!6633476 m!7401930))

(declare-fun m!7401932 () Bool)

(assert (=> b!6633476 m!7401932))

(declare-fun m!7401934 () Bool)

(assert (=> b!6633472 m!7401934))

(declare-fun m!7401936 () Bool)

(assert (=> d!2079405 m!7401936))

(assert (=> d!2079405 m!7401514))

(declare-fun m!7401940 () Bool)

(assert (=> d!2079405 m!7401940))

(declare-fun m!7401942 () Bool)

(assert (=> b!6633473 m!7401942))

(assert (=> b!6633469 m!7401514))

(declare-fun m!7401944 () Bool)

(assert (=> b!6633469 m!7401944))

(declare-fun m!7401946 () Bool)

(assert (=> b!6633474 m!7401946))

(declare-fun m!7401948 () Bool)

(assert (=> b!6633475 m!7401948))

(assert (=> b!6632907 d!2079405))

(declare-fun bs!1704602 () Bool)

(declare-fun d!2079411 () Bool)

(assert (= bs!1704602 (and d!2079411 d!2079403)))

(declare-fun lambda!370625 () Int)

(assert (=> bs!1704602 (= lambda!370625 lambda!370613)))

(declare-fun bs!1704603 () Bool)

(assert (= bs!1704603 (and d!2079411 d!2079389)))

(assert (=> bs!1704603 (= lambda!370625 lambda!370611)))

(declare-fun bs!1704604 () Bool)

(assert (= bs!1704604 (and d!2079411 d!2079405)))

(assert (=> bs!1704604 (= lambda!370625 lambda!370619)))

(declare-fun bs!1704605 () Bool)

(assert (= bs!1704605 (and d!2079411 d!2079327)))

(assert (=> bs!1704605 (= lambda!370625 lambda!370587)))

(declare-fun bs!1704606 () Bool)

(assert (= bs!1704606 (and d!2079411 d!2079343)))

(assert (=> bs!1704606 (= lambda!370625 lambda!370593)))

(declare-fun lt!2419280 () List!65796)

(assert (=> d!2079411 (forall!15694 lt!2419280 lambda!370625)))

(declare-fun e!4012041 () List!65796)

(assert (=> d!2079411 (= lt!2419280 e!4012041)))

(declare-fun c!1223506 () Bool)

(assert (=> d!2079411 (= c!1223506 ((_ is Cons!65673) zl!343))))

(assert (=> d!2079411 (= (unfocusZipperList!1920 zl!343) lt!2419280)))

(declare-fun b!6633484 () Bool)

(assert (=> b!6633484 (= e!4012041 (Cons!65672 (generalisedConcat!2096 (exprs!6383 (h!72121 zl!343))) (unfocusZipperList!1920 (t!379461 zl!343))))))

(declare-fun b!6633485 () Bool)

(assert (=> b!6633485 (= e!4012041 Nil!65672)))

(assert (= (and d!2079411 c!1223506) b!6633484))

(assert (= (and d!2079411 (not c!1223506)) b!6633485))

(declare-fun m!7401958 () Bool)

(assert (=> d!2079411 m!7401958))

(assert (=> b!6633484 m!7401584))

(declare-fun m!7401960 () Bool)

(assert (=> b!6633484 m!7401960))

(assert (=> b!6632907 d!2079411))

(declare-fun b!6633540 () Bool)

(declare-fun e!4012078 () Bool)

(assert (=> b!6633540 (= e!4012078 (matchR!8682 (regTwo!33510 r!7292) s!2326))))

(declare-fun b!6633541 () Bool)

(declare-fun res!2718644 () Bool)

(declare-fun e!4012082 () Bool)

(assert (=> b!6633541 (=> (not res!2718644) (not e!4012082))))

(declare-fun lt!2419296 () Option!16390)

(declare-fun get!22830 (Option!16390) tuple2!66956)

(assert (=> b!6633541 (= res!2718644 (matchR!8682 (regOne!33510 r!7292) (_1!36781 (get!22830 lt!2419296))))))

(declare-fun b!6633542 () Bool)

(declare-fun res!2718647 () Bool)

(assert (=> b!6633542 (=> (not res!2718647) (not e!4012082))))

(assert (=> b!6633542 (= res!2718647 (matchR!8682 (regTwo!33510 r!7292) (_2!36781 (get!22830 lt!2419296))))))

(declare-fun b!6633543 () Bool)

(declare-fun e!4012079 () Bool)

(assert (=> b!6633543 (= e!4012079 (not (isDefined!13093 lt!2419296)))))

(declare-fun b!6633544 () Bool)

(declare-fun e!4012080 () Option!16390)

(assert (=> b!6633544 (= e!4012080 (Some!16389 (tuple2!66957 Nil!65674 s!2326)))))

(declare-fun b!6633545 () Bool)

(declare-fun lt!2419295 () Unit!159351)

(declare-fun lt!2419297 () Unit!159351)

(assert (=> b!6633545 (= lt!2419295 lt!2419297)))

(declare-fun ++!14649 (List!65798 List!65798) List!65798)

(assert (=> b!6633545 (= (++!14649 (++!14649 Nil!65674 (Cons!65674 (h!72122 s!2326) Nil!65674)) (t!379462 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2638 (List!65798 C!33268 List!65798 List!65798) Unit!159351)

(assert (=> b!6633545 (= lt!2419297 (lemmaMoveElementToOtherListKeepsConcatEq!2638 Nil!65674 (h!72122 s!2326) (t!379462 s!2326) s!2326))))

(declare-fun e!4012081 () Option!16390)

(assert (=> b!6633545 (= e!4012081 (findConcatSeparation!2804 (regOne!33510 r!7292) (regTwo!33510 r!7292) (++!14649 Nil!65674 (Cons!65674 (h!72122 s!2326) Nil!65674)) (t!379462 s!2326) s!2326))))

(declare-fun b!6633546 () Bool)

(assert (=> b!6633546 (= e!4012082 (= (++!14649 (_1!36781 (get!22830 lt!2419296)) (_2!36781 (get!22830 lt!2419296))) s!2326))))

(declare-fun d!2079417 () Bool)

(assert (=> d!2079417 e!4012079))

(declare-fun res!2718646 () Bool)

(assert (=> d!2079417 (=> res!2718646 e!4012079)))

(assert (=> d!2079417 (= res!2718646 e!4012082)))

(declare-fun res!2718648 () Bool)

(assert (=> d!2079417 (=> (not res!2718648) (not e!4012082))))

(assert (=> d!2079417 (= res!2718648 (isDefined!13093 lt!2419296))))

(assert (=> d!2079417 (= lt!2419296 e!4012080)))

(declare-fun c!1223521 () Bool)

(assert (=> d!2079417 (= c!1223521 e!4012078)))

(declare-fun res!2718645 () Bool)

(assert (=> d!2079417 (=> (not res!2718645) (not e!4012078))))

(assert (=> d!2079417 (= res!2718645 (matchR!8682 (regOne!33510 r!7292) Nil!65674))))

(assert (=> d!2079417 (validRegex!8235 (regOne!33510 r!7292))))

(assert (=> d!2079417 (= (findConcatSeparation!2804 (regOne!33510 r!7292) (regTwo!33510 r!7292) Nil!65674 s!2326 s!2326) lt!2419296)))

(declare-fun b!6633547 () Bool)

(assert (=> b!6633547 (= e!4012081 None!16389)))

(declare-fun b!6633548 () Bool)

(assert (=> b!6633548 (= e!4012080 e!4012081)))

(declare-fun c!1223522 () Bool)

(assert (=> b!6633548 (= c!1223522 ((_ is Nil!65674) s!2326))))

(assert (= (and d!2079417 res!2718645) b!6633540))

(assert (= (and d!2079417 c!1223521) b!6633544))

(assert (= (and d!2079417 (not c!1223521)) b!6633548))

(assert (= (and b!6633548 c!1223522) b!6633547))

(assert (= (and b!6633548 (not c!1223522)) b!6633545))

(assert (= (and d!2079417 res!2718648) b!6633541))

(assert (= (and b!6633541 res!2718644) b!6633542))

(assert (= (and b!6633542 res!2718647) b!6633546))

(assert (= (and d!2079417 (not res!2718646)) b!6633543))

(assert (=> b!6633540 m!7401554))

(declare-fun m!7402004 () Bool)

(assert (=> b!6633545 m!7402004))

(assert (=> b!6633545 m!7402004))

(declare-fun m!7402006 () Bool)

(assert (=> b!6633545 m!7402006))

(declare-fun m!7402008 () Bool)

(assert (=> b!6633545 m!7402008))

(assert (=> b!6633545 m!7402004))

(declare-fun m!7402010 () Bool)

(assert (=> b!6633545 m!7402010))

(declare-fun m!7402012 () Bool)

(assert (=> b!6633542 m!7402012))

(declare-fun m!7402014 () Bool)

(assert (=> b!6633542 m!7402014))

(declare-fun m!7402016 () Bool)

(assert (=> d!2079417 m!7402016))

(declare-fun m!7402018 () Bool)

(assert (=> d!2079417 m!7402018))

(assert (=> d!2079417 m!7401784))

(assert (=> b!6633541 m!7402012))

(declare-fun m!7402020 () Bool)

(assert (=> b!6633541 m!7402020))

(assert (=> b!6633543 m!7402016))

(assert (=> b!6633546 m!7402012))

(declare-fun m!7402022 () Bool)

(assert (=> b!6633546 m!7402022))

(assert (=> b!6632927 d!2079417))

(declare-fun d!2079435 () Bool)

(declare-fun choose!49554 (Int) Bool)

(assert (=> d!2079435 (= (Exists!3569 lambda!370571) (choose!49554 lambda!370571))))

(declare-fun bs!1704619 () Bool)

(assert (= bs!1704619 d!2079435))

(declare-fun m!7402024 () Bool)

(assert (=> bs!1704619 m!7402024))

(assert (=> b!6632927 d!2079435))

(declare-fun bs!1704620 () Bool)

(declare-fun d!2079437 () Bool)

(assert (= bs!1704620 (and d!2079437 b!6633257)))

(declare-fun lambda!370636 () Int)

(assert (=> bs!1704620 (not (= lambda!370636 lambda!370601))))

(declare-fun bs!1704621 () Bool)

(assert (= bs!1704621 (and d!2079437 b!6633228)))

(assert (=> bs!1704621 (not (= lambda!370636 lambda!370597))))

(declare-fun bs!1704622 () Bool)

(assert (= bs!1704622 (and d!2079437 b!6633059)))

(assert (=> bs!1704622 (not (= lambda!370636 lambda!370581))))

(declare-fun bs!1704623 () Bool)

(assert (= bs!1704623 (and d!2079437 b!6633250)))

(assert (=> bs!1704623 (not (= lambda!370636 lambda!370600))))

(declare-fun bs!1704624 () Bool)

(assert (= bs!1704624 (and d!2079437 b!6633065)))

(assert (=> bs!1704624 (not (= lambda!370636 lambda!370582))))

(declare-fun bs!1704625 () Bool)

(assert (= bs!1704625 (and d!2079437 b!6632927)))

(assert (=> bs!1704625 (not (= lambda!370636 lambda!370572))))

(assert (=> bs!1704625 (= lambda!370636 lambda!370571)))

(declare-fun bs!1704626 () Bool)

(assert (= bs!1704626 (and d!2079437 b!6633222)))

(assert (=> bs!1704626 (not (= lambda!370636 lambda!370596))))

(assert (=> d!2079437 true))

(assert (=> d!2079437 true))

(assert (=> d!2079437 true))

(declare-fun lambda!370637 () Int)

(assert (=> bs!1704620 (= (and (= (regOne!33510 r!7292) (regOne!33510 (regTwo!33510 r!7292))) (= (regTwo!33510 r!7292) (regTwo!33510 (regTwo!33510 r!7292)))) (= lambda!370637 lambda!370601))))

(assert (=> bs!1704621 (= (and (= (regOne!33510 r!7292) (regOne!33510 (regOne!33510 r!7292))) (= (regTwo!33510 r!7292) (regTwo!33510 (regOne!33510 r!7292)))) (= lambda!370637 lambda!370597))))

(assert (=> bs!1704622 (not (= lambda!370637 lambda!370581))))

(assert (=> bs!1704623 (not (= lambda!370637 lambda!370600))))

(declare-fun bs!1704627 () Bool)

(assert (= bs!1704627 d!2079437))

(assert (=> bs!1704627 (not (= lambda!370637 lambda!370636))))

(assert (=> bs!1704624 (= lambda!370637 lambda!370582)))

(assert (=> bs!1704625 (= lambda!370637 lambda!370572)))

(assert (=> bs!1704625 (not (= lambda!370637 lambda!370571))))

(assert (=> bs!1704626 (not (= lambda!370637 lambda!370596))))

(assert (=> d!2079437 true))

(assert (=> d!2079437 true))

(assert (=> d!2079437 true))

(assert (=> d!2079437 (= (Exists!3569 lambda!370636) (Exists!3569 lambda!370637))))

(declare-fun lt!2419300 () Unit!159351)

(declare-fun choose!49555 (Regex!16499 Regex!16499 List!65798) Unit!159351)

(assert (=> d!2079437 (= lt!2419300 (choose!49555 (regOne!33510 r!7292) (regTwo!33510 r!7292) s!2326))))

(assert (=> d!2079437 (validRegex!8235 (regOne!33510 r!7292))))

(assert (=> d!2079437 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2106 (regOne!33510 r!7292) (regTwo!33510 r!7292) s!2326) lt!2419300)))

(declare-fun m!7402032 () Bool)

(assert (=> bs!1704627 m!7402032))

(declare-fun m!7402034 () Bool)

(assert (=> bs!1704627 m!7402034))

(declare-fun m!7402036 () Bool)

(assert (=> bs!1704627 m!7402036))

(assert (=> bs!1704627 m!7401784))

(assert (=> b!6632927 d!2079437))

(declare-fun d!2079441 () Bool)

(declare-fun isEmpty!37972 (Option!16390) Bool)

(assert (=> d!2079441 (= (isDefined!13093 (findConcatSeparation!2804 (regOne!33510 r!7292) (regTwo!33510 r!7292) Nil!65674 s!2326 s!2326)) (not (isEmpty!37972 (findConcatSeparation!2804 (regOne!33510 r!7292) (regTwo!33510 r!7292) Nil!65674 s!2326 s!2326))))))

(declare-fun bs!1704628 () Bool)

(assert (= bs!1704628 d!2079441))

(assert (=> bs!1704628 m!7401494))

(declare-fun m!7402038 () Bool)

(assert (=> bs!1704628 m!7402038))

(assert (=> b!6632927 d!2079441))

(declare-fun bs!1704637 () Bool)

(declare-fun d!2079443 () Bool)

(assert (= bs!1704637 (and d!2079443 d!2079437)))

(declare-fun lambda!370642 () Int)

(assert (=> bs!1704637 (not (= lambda!370642 lambda!370637))))

(declare-fun bs!1704638 () Bool)

(assert (= bs!1704638 (and d!2079443 b!6633257)))

(assert (=> bs!1704638 (not (= lambda!370642 lambda!370601))))

(declare-fun bs!1704639 () Bool)

(assert (= bs!1704639 (and d!2079443 b!6633228)))

(assert (=> bs!1704639 (not (= lambda!370642 lambda!370597))))

(declare-fun bs!1704640 () Bool)

(assert (= bs!1704640 (and d!2079443 b!6633059)))

(assert (=> bs!1704640 (not (= lambda!370642 lambda!370581))))

(declare-fun bs!1704641 () Bool)

(assert (= bs!1704641 (and d!2079443 b!6633250)))

(assert (=> bs!1704641 (not (= lambda!370642 lambda!370600))))

(assert (=> bs!1704637 (= lambda!370642 lambda!370636)))

(declare-fun bs!1704642 () Bool)

(assert (= bs!1704642 (and d!2079443 b!6633065)))

(assert (=> bs!1704642 (not (= lambda!370642 lambda!370582))))

(declare-fun bs!1704643 () Bool)

(assert (= bs!1704643 (and d!2079443 b!6632927)))

(assert (=> bs!1704643 (not (= lambda!370642 lambda!370572))))

(assert (=> bs!1704643 (= lambda!370642 lambda!370571)))

(declare-fun bs!1704644 () Bool)

(assert (= bs!1704644 (and d!2079443 b!6633222)))

(assert (=> bs!1704644 (not (= lambda!370642 lambda!370596))))

(assert (=> d!2079443 true))

(assert (=> d!2079443 true))

(assert (=> d!2079443 true))

(assert (=> d!2079443 (= (isDefined!13093 (findConcatSeparation!2804 (regOne!33510 r!7292) (regTwo!33510 r!7292) Nil!65674 s!2326 s!2326)) (Exists!3569 lambda!370642))))

(declare-fun lt!2419305 () Unit!159351)

(declare-fun choose!49556 (Regex!16499 Regex!16499 List!65798) Unit!159351)

(assert (=> d!2079443 (= lt!2419305 (choose!49556 (regOne!33510 r!7292) (regTwo!33510 r!7292) s!2326))))

(assert (=> d!2079443 (validRegex!8235 (regOne!33510 r!7292))))

(assert (=> d!2079443 (= (lemmaFindConcatSeparationEquivalentToExists!2568 (regOne!33510 r!7292) (regTwo!33510 r!7292) s!2326) lt!2419305)))

(declare-fun bs!1704645 () Bool)

(assert (= bs!1704645 d!2079443))

(declare-fun m!7402054 () Bool)

(assert (=> bs!1704645 m!7402054))

(declare-fun m!7402056 () Bool)

(assert (=> bs!1704645 m!7402056))

(assert (=> bs!1704645 m!7401494))

(assert (=> bs!1704645 m!7401784))

(assert (=> bs!1704645 m!7401494))

(assert (=> bs!1704645 m!7401496))

(assert (=> b!6632927 d!2079443))

(declare-fun d!2079451 () Bool)

(assert (=> d!2079451 (= (Exists!3569 lambda!370572) (choose!49554 lambda!370572))))

(declare-fun bs!1704646 () Bool)

(assert (= bs!1704646 d!2079451))

(declare-fun m!7402058 () Bool)

(assert (=> bs!1704646 m!7402058))

(assert (=> b!6632927 d!2079451))

(declare-fun d!2079453 () Bool)

(declare-fun c!1223544 () Bool)

(assert (=> d!2079453 (= c!1223544 (isEmpty!37969 s!2326))))

(declare-fun e!4012135 () Bool)

(assert (=> d!2079453 (= (matchZipper!2511 z!1189 s!2326) e!4012135)))

(declare-fun b!6633638 () Bool)

(assert (=> b!6633638 (= e!4012135 (nullableZipper!2239 z!1189))))

(declare-fun b!6633639 () Bool)

(assert (=> b!6633639 (= e!4012135 (matchZipper!2511 (derivationStepZipper!2465 z!1189 (head!13439 s!2326)) (tail!12524 s!2326)))))

(assert (= (and d!2079453 c!1223544) b!6633638))

(assert (= (and d!2079453 (not c!1223544)) b!6633639))

(assert (=> d!2079453 m!7401664))

(declare-fun m!7402060 () Bool)

(assert (=> b!6633638 m!7402060))

(assert (=> b!6633639 m!7401672))

(assert (=> b!6633639 m!7401672))

(declare-fun m!7402062 () Bool)

(assert (=> b!6633639 m!7402062))

(assert (=> b!6633639 m!7401676))

(assert (=> b!6633639 m!7402062))

(assert (=> b!6633639 m!7401676))

(declare-fun m!7402064 () Bool)

(assert (=> b!6633639 m!7402064))

(assert (=> b!6632908 d!2079453))

(assert (=> b!6632908 d!2079303))

(declare-fun d!2079455 () Bool)

(declare-fun c!1223545 () Bool)

(assert (=> d!2079455 (= c!1223545 (isEmpty!37969 (t!379462 s!2326)))))

(declare-fun e!4012136 () Bool)

(assert (=> d!2079455 (= (matchZipper!2511 lt!2419193 (t!379462 s!2326)) e!4012136)))

(declare-fun b!6633640 () Bool)

(assert (=> b!6633640 (= e!4012136 (nullableZipper!2239 lt!2419193))))

(declare-fun b!6633641 () Bool)

(assert (=> b!6633641 (= e!4012136 (matchZipper!2511 (derivationStepZipper!2465 lt!2419193 (head!13439 (t!379462 s!2326))) (tail!12524 (t!379462 s!2326))))))

(assert (= (and d!2079455 c!1223545) b!6633640))

(assert (= (and d!2079455 (not c!1223545)) b!6633641))

(assert (=> d!2079455 m!7401596))

(declare-fun m!7402066 () Bool)

(assert (=> b!6633640 m!7402066))

(assert (=> b!6633641 m!7401600))

(assert (=> b!6633641 m!7401600))

(declare-fun m!7402068 () Bool)

(assert (=> b!6633641 m!7402068))

(assert (=> b!6633641 m!7401604))

(assert (=> b!6633641 m!7402068))

(assert (=> b!6633641 m!7401604))

(declare-fun m!7402070 () Bool)

(assert (=> b!6633641 m!7402070))

(assert (=> b!6632908 d!2079455))

(assert (=> b!6632908 d!2079291))

(declare-fun e!4012139 () Bool)

(assert (=> b!6632918 (= tp!1827250 e!4012139)))

(declare-fun b!6633655 () Bool)

(declare-fun tp!1827273 () Bool)

(declare-fun tp!1827272 () Bool)

(assert (=> b!6633655 (= e!4012139 (and tp!1827273 tp!1827272))))

(declare-fun b!6633652 () Bool)

(assert (=> b!6633652 (= e!4012139 tp_is_empty!42251)))

(declare-fun b!6633653 () Bool)

(declare-fun tp!1827274 () Bool)

(declare-fun tp!1827270 () Bool)

(assert (=> b!6633653 (= e!4012139 (and tp!1827274 tp!1827270))))

(declare-fun b!6633654 () Bool)

(declare-fun tp!1827271 () Bool)

(assert (=> b!6633654 (= e!4012139 tp!1827271)))

(assert (= (and b!6632918 ((_ is ElementMatch!16499) (regOne!33511 r!7292))) b!6633652))

(assert (= (and b!6632918 ((_ is Concat!25344) (regOne!33511 r!7292))) b!6633653))

(assert (= (and b!6632918 ((_ is Star!16499) (regOne!33511 r!7292))) b!6633654))

(assert (= (and b!6632918 ((_ is Union!16499) (regOne!33511 r!7292))) b!6633655))

(declare-fun e!4012140 () Bool)

(assert (=> b!6632918 (= tp!1827257 e!4012140)))

(declare-fun b!6633659 () Bool)

(declare-fun tp!1827278 () Bool)

(declare-fun tp!1827277 () Bool)

(assert (=> b!6633659 (= e!4012140 (and tp!1827278 tp!1827277))))

(declare-fun b!6633656 () Bool)

(assert (=> b!6633656 (= e!4012140 tp_is_empty!42251)))

(declare-fun b!6633657 () Bool)

(declare-fun tp!1827279 () Bool)

(declare-fun tp!1827275 () Bool)

(assert (=> b!6633657 (= e!4012140 (and tp!1827279 tp!1827275))))

(declare-fun b!6633658 () Bool)

(declare-fun tp!1827276 () Bool)

(assert (=> b!6633658 (= e!4012140 tp!1827276)))

(assert (= (and b!6632918 ((_ is ElementMatch!16499) (regTwo!33511 r!7292))) b!6633656))

(assert (= (and b!6632918 ((_ is Concat!25344) (regTwo!33511 r!7292))) b!6633657))

(assert (= (and b!6632918 ((_ is Star!16499) (regTwo!33511 r!7292))) b!6633658))

(assert (= (and b!6632918 ((_ is Union!16499) (regTwo!33511 r!7292))) b!6633659))

(declare-fun b!6633664 () Bool)

(declare-fun e!4012143 () Bool)

(declare-fun tp!1827284 () Bool)

(declare-fun tp!1827285 () Bool)

(assert (=> b!6633664 (= e!4012143 (and tp!1827284 tp!1827285))))

(assert (=> b!6632929 (= tp!1827255 e!4012143)))

(assert (= (and b!6632929 ((_ is Cons!65672) (exprs!6383 (h!72121 zl!343)))) b!6633664))

(declare-fun b!6633686 () Bool)

(declare-fun e!4012156 () Bool)

(declare-fun tp!1827290 () Bool)

(assert (=> b!6633686 (= e!4012156 tp!1827290)))

(declare-fun tp!1827291 () Bool)

(declare-fun e!4012155 () Bool)

(declare-fun b!6633685 () Bool)

(assert (=> b!6633685 (= e!4012155 (and (inv!84494 (h!72121 (t!379461 zl!343))) e!4012156 tp!1827291))))

(assert (=> b!6632910 (= tp!1827251 e!4012155)))

(assert (= b!6633685 b!6633686))

(assert (= (and b!6632910 ((_ is Cons!65673) (t!379461 zl!343))) b!6633685))

(declare-fun m!7402078 () Bool)

(assert (=> b!6633685 m!7402078))

(declare-fun e!4012157 () Bool)

(assert (=> b!6632911 (= tp!1827254 e!4012157)))

(declare-fun b!6633690 () Bool)

(declare-fun tp!1827295 () Bool)

(declare-fun tp!1827294 () Bool)

(assert (=> b!6633690 (= e!4012157 (and tp!1827295 tp!1827294))))

(declare-fun b!6633687 () Bool)

(assert (=> b!6633687 (= e!4012157 tp_is_empty!42251)))

(declare-fun b!6633688 () Bool)

(declare-fun tp!1827296 () Bool)

(declare-fun tp!1827292 () Bool)

(assert (=> b!6633688 (= e!4012157 (and tp!1827296 tp!1827292))))

(declare-fun b!6633689 () Bool)

(declare-fun tp!1827293 () Bool)

(assert (=> b!6633689 (= e!4012157 tp!1827293)))

(assert (= (and b!6632911 ((_ is ElementMatch!16499) (reg!16828 r!7292))) b!6633687))

(assert (= (and b!6632911 ((_ is Concat!25344) (reg!16828 r!7292))) b!6633688))

(assert (= (and b!6632911 ((_ is Star!16499) (reg!16828 r!7292))) b!6633689))

(assert (= (and b!6632911 ((_ is Union!16499) (reg!16828 r!7292))) b!6633690))

(declare-fun condSetEmpty!45339 () Bool)

(assert (=> setNonEmpty!45336 (= condSetEmpty!45339 (= setRest!45336 ((as const (Array Context!11766 Bool)) false)))))

(declare-fun setRes!45339 () Bool)

(assert (=> setNonEmpty!45336 (= tp!1827258 setRes!45339)))

(declare-fun setIsEmpty!45339 () Bool)

(assert (=> setIsEmpty!45339 setRes!45339))

(declare-fun e!4012167 () Bool)

(declare-fun setElem!45339 () Context!11766)

(declare-fun setNonEmpty!45339 () Bool)

(declare-fun tp!1827301 () Bool)

(assert (=> setNonEmpty!45339 (= setRes!45339 (and tp!1827301 (inv!84494 setElem!45339) e!4012167))))

(declare-fun setRest!45339 () (InoxSet Context!11766))

(assert (=> setNonEmpty!45339 (= setRest!45336 ((_ map or) (store ((as const (Array Context!11766 Bool)) false) setElem!45339 true) setRest!45339))))

(declare-fun b!6633706 () Bool)

(declare-fun tp!1827302 () Bool)

(assert (=> b!6633706 (= e!4012167 tp!1827302)))

(assert (= (and setNonEmpty!45336 condSetEmpty!45339) setIsEmpty!45339))

(assert (= (and setNonEmpty!45336 (not condSetEmpty!45339)) setNonEmpty!45339))

(assert (= setNonEmpty!45339 b!6633706))

(declare-fun m!7402090 () Bool)

(assert (=> setNonEmpty!45339 m!7402090))

(declare-fun b!6633711 () Bool)

(declare-fun e!4012170 () Bool)

(declare-fun tp!1827305 () Bool)

(assert (=> b!6633711 (= e!4012170 (and tp_is_empty!42251 tp!1827305))))

(assert (=> b!6632931 (= tp!1827256 e!4012170)))

(assert (= (and b!6632931 ((_ is Cons!65674) (t!379462 s!2326))) b!6633711))

(declare-fun b!6633712 () Bool)

(declare-fun e!4012171 () Bool)

(declare-fun tp!1827306 () Bool)

(declare-fun tp!1827307 () Bool)

(assert (=> b!6633712 (= e!4012171 (and tp!1827306 tp!1827307))))

(assert (=> b!6632912 (= tp!1827252 e!4012171)))

(assert (= (and b!6632912 ((_ is Cons!65672) (exprs!6383 setElem!45336))) b!6633712))

(declare-fun e!4012172 () Bool)

(assert (=> b!6632932 (= tp!1827253 e!4012172)))

(declare-fun b!6633716 () Bool)

(declare-fun tp!1827311 () Bool)

(declare-fun tp!1827310 () Bool)

(assert (=> b!6633716 (= e!4012172 (and tp!1827311 tp!1827310))))

(declare-fun b!6633713 () Bool)

(assert (=> b!6633713 (= e!4012172 tp_is_empty!42251)))

(declare-fun b!6633714 () Bool)

(declare-fun tp!1827312 () Bool)

(declare-fun tp!1827308 () Bool)

(assert (=> b!6633714 (= e!4012172 (and tp!1827312 tp!1827308))))

(declare-fun b!6633715 () Bool)

(declare-fun tp!1827309 () Bool)

(assert (=> b!6633715 (= e!4012172 tp!1827309)))

(assert (= (and b!6632932 ((_ is ElementMatch!16499) (regOne!33510 r!7292))) b!6633713))

(assert (= (and b!6632932 ((_ is Concat!25344) (regOne!33510 r!7292))) b!6633714))

(assert (= (and b!6632932 ((_ is Star!16499) (regOne!33510 r!7292))) b!6633715))

(assert (= (and b!6632932 ((_ is Union!16499) (regOne!33510 r!7292))) b!6633716))

(declare-fun e!4012173 () Bool)

(assert (=> b!6632932 (= tp!1827259 e!4012173)))

(declare-fun b!6633720 () Bool)

(declare-fun tp!1827316 () Bool)

(declare-fun tp!1827315 () Bool)

(assert (=> b!6633720 (= e!4012173 (and tp!1827316 tp!1827315))))

(declare-fun b!6633717 () Bool)

(assert (=> b!6633717 (= e!4012173 tp_is_empty!42251)))

(declare-fun b!6633718 () Bool)

(declare-fun tp!1827317 () Bool)

(declare-fun tp!1827313 () Bool)

(assert (=> b!6633718 (= e!4012173 (and tp!1827317 tp!1827313))))

(declare-fun b!6633719 () Bool)

(declare-fun tp!1827314 () Bool)

(assert (=> b!6633719 (= e!4012173 tp!1827314)))

(assert (= (and b!6632932 ((_ is ElementMatch!16499) (regTwo!33510 r!7292))) b!6633717))

(assert (= (and b!6632932 ((_ is Concat!25344) (regTwo!33510 r!7292))) b!6633718))

(assert (= (and b!6632932 ((_ is Star!16499) (regTwo!33510 r!7292))) b!6633719))

(assert (= (and b!6632932 ((_ is Union!16499) (regTwo!33510 r!7292))) b!6633720))

(declare-fun b_lambda!250759 () Bool)

(assert (= b_lambda!250755 (or b!6632928 b_lambda!250759)))

(declare-fun bs!1704666 () Bool)

(declare-fun d!2079463 () Bool)

(assert (= bs!1704666 (and d!2079463 b!6632928)))

(assert (=> bs!1704666 (= (dynLambda!26160 lambda!370573 (h!72121 zl!343)) (derivationStepZipperUp!1673 (h!72121 zl!343) (h!72122 s!2326)))))

(assert (=> bs!1704666 m!7401532))

(assert (=> d!2079373 d!2079463))

(declare-fun b_lambda!250761 () Bool)

(assert (= b_lambda!250757 (or b!6632928 b_lambda!250761)))

(declare-fun bs!1704667 () Bool)

(declare-fun d!2079465 () Bool)

(assert (= bs!1704667 (and d!2079465 b!6632928)))

(assert (=> bs!1704667 (= (dynLambda!26160 lambda!370573 lt!2419182) (derivationStepZipperUp!1673 lt!2419182 (h!72122 s!2326)))))

(assert (=> bs!1704667 m!7401536))

(assert (=> d!2079399 d!2079465))

(check-sat (not b!6633473) (not d!2079355) (not b!6633237) (not b!6633655) (not d!2079437) (not b!6632994) (not d!2079339) (not b!6633292) (not b!6633199) (not d!2079397) (not d!2079323) (not b!6633640) (not b!6633244) (not b!6633127) (not setNonEmpty!45339) (not b!6633543) (not d!2079363) (not b!6633659) (not b!6633126) (not b!6633411) (not b!6633417) (not b!6633230) (not b!6633129) (not b!6633653) (not bm!582214) (not b!6633239) (not b!6633259) (not b!6633712) (not b!6633546) (not bm!582204) (not bm!582196) (not d!2079295) (not d!2079353) (not b!6633003) (not b!6633291) (not b!6633134) (not b!6633191) (not b!6633641) (not bm!582207) (not b!6633004) (not d!2079405) (not b!6633196) (not d!2079327) (not d!2079293) (not d!2079435) (not b!6633131) (not d!2079453) (not b!6633638) (not b!6633202) (not d!2079343) (not b!6633412) (not b!6633180) (not b!6633217) (not b!6633294) (not b!6633216) (not b!6632949) (not d!2079337) (not b!6633476) (not b!6633469) (not d!2079443) (not b!6633213) (not d!2079451) (not d!2079333) (not d!2079297) (not bs!1704667) (not b!6633296) (not b!6633654) (not b!6633193) (not d!2079393) (not b!6633181) (not bm!582232) (not b!6633224) (not b!6633690) (not bm!582205) (not b!6633688) (not d!2079325) (not d!2079341) (not b!6633238) (not d!2079359) (not b!6633061) (not d!2079289) (not b!6633720) (not b!6633719) (not b!6633212) (not b!6633686) (not b_lambda!250761) (not b!6633299) (not b!6633326) (not b!6633474) (not d!2079403) (not b!6633714) (not b!6632948) (not b!6632943) (not b!6633236) (not b!6633715) (not b!6633253) (not bm!582236) (not b!6632951) (not d!2079303) (not d!2079455) tp_is_empty!42251 (not b!6633540) (not b!6633475) (not d!2079411) (not b!6633192) (not b!6633470) (not bm!582213) (not b!6633658) (not b!6633215) (not b_lambda!250759) (not b!6633541) (not bm!582206) (not d!2079387) (not b!6633178) (not bm!582173) (not bm!582209) (not b!6633639) (not bm!582210) (not bs!1704666) (not b!6632950) (not b!6633184) (not b!6633325) (not b!6633472) (not b!6633545) (not b!6633542) (not b!6633201) (not b!6633182) (not b!6633194) (not b!6633067) (not b!6633399) (not d!2079441) (not b!6633689) (not b!6633484) (not b!6633319) (not b!6633214) (not bm!582234) (not b!6633718) (not d!2079371) (not b!6633657) (not b!6633664) (not bm!582233) (not bm!582197) (not d!2079389) (not b!6633183) (not d!2079399) (not bm!582175) (not b!6633241) (not b!6633711) (not d!2079291) (not bm!582208) (not d!2079345) (not b!6633716) (not b!6633293) (not bm!582203) (not d!2079417) (not b!6633128) (not b!6633218) (not b!6633318) (not d!2079373) (not b!6633706) (not b!6633179) (not b!6633685) (not d!2079365))
(check-sat)
(get-model)

(declare-fun d!2079489 () Bool)

(assert (=> d!2079489 (= (isUnion!1312 lt!2419272) ((_ is Union!16499) lt!2419272))))

(assert (=> b!6633474 d!2079489))

(declare-fun d!2079491 () Bool)

(assert (=> d!2079491 (= (nullable!6492 (reg!16828 r!7292)) (nullableFct!2413 (reg!16828 r!7292)))))

(declare-fun bs!1704684 () Bool)

(assert (= bs!1704684 d!2079491))

(declare-fun m!7402136 () Bool)

(assert (=> bs!1704684 m!7402136))

(assert (=> b!6632994 d!2079491))

(declare-fun d!2079493 () Bool)

(assert (=> d!2079493 (= (isEmpty!37969 (tail!12524 s!2326)) ((_ is Nil!65674) (tail!12524 s!2326)))))

(assert (=> b!6633131 d!2079493))

(declare-fun d!2079495 () Bool)

(assert (=> d!2079495 (= (tail!12524 s!2326) (t!379462 s!2326))))

(assert (=> b!6633131 d!2079495))

(declare-fun d!2079497 () Bool)

(assert (=> d!2079497 (= (nullable!6492 lt!2419180) (nullableFct!2413 lt!2419180))))

(declare-fun bs!1704685 () Bool)

(assert (= bs!1704685 d!2079497))

(declare-fun m!7402138 () Bool)

(assert (=> bs!1704685 m!7402138))

(assert (=> b!6633194 d!2079497))

(declare-fun d!2079499 () Bool)

(assert (=> d!2079499 (= (isEmpty!37969 s!2326) ((_ is Nil!65674) s!2326))))

(assert (=> bm!582196 d!2079499))

(declare-fun bm!582259 () Bool)

(declare-fun call!582265 () Bool)

(declare-fun c!1223559 () Bool)

(assert (=> bm!582259 (= call!582265 (validRegex!8235 (ite c!1223559 (regTwo!33511 lt!2419272) (regTwo!33510 lt!2419272))))))

(declare-fun d!2079501 () Bool)

(declare-fun res!2718716 () Bool)

(declare-fun e!4012212 () Bool)

(assert (=> d!2079501 (=> res!2718716 e!4012212)))

(assert (=> d!2079501 (= res!2718716 ((_ is ElementMatch!16499) lt!2419272))))

(assert (=> d!2079501 (= (validRegex!8235 lt!2419272) e!4012212)))

(declare-fun bm!582260 () Bool)

(declare-fun call!582266 () Bool)

(declare-fun call!582264 () Bool)

(assert (=> bm!582260 (= call!582266 call!582264)))

(declare-fun c!1223560 () Bool)

(declare-fun bm!582261 () Bool)

(assert (=> bm!582261 (= call!582264 (validRegex!8235 (ite c!1223560 (reg!16828 lt!2419272) (ite c!1223559 (regOne!33511 lt!2419272) (regOne!33510 lt!2419272)))))))

(declare-fun b!6633795 () Bool)

(declare-fun e!4012210 () Bool)

(declare-fun e!4012213 () Bool)

(assert (=> b!6633795 (= e!4012210 e!4012213)))

(declare-fun res!2718719 () Bool)

(assert (=> b!6633795 (= res!2718719 (not (nullable!6492 (reg!16828 lt!2419272))))))

(assert (=> b!6633795 (=> (not res!2718719) (not e!4012213))))

(declare-fun b!6633796 () Bool)

(declare-fun res!2718717 () Bool)

(declare-fun e!4012209 () Bool)

(assert (=> b!6633796 (=> res!2718717 e!4012209)))

(assert (=> b!6633796 (= res!2718717 (not ((_ is Concat!25344) lt!2419272)))))

(declare-fun e!4012208 () Bool)

(assert (=> b!6633796 (= e!4012208 e!4012209)))

(declare-fun b!6633797 () Bool)

(declare-fun e!4012211 () Bool)

(assert (=> b!6633797 (= e!4012211 call!582265)))

(declare-fun b!6633798 () Bool)

(declare-fun e!4012207 () Bool)

(assert (=> b!6633798 (= e!4012207 call!582265)))

(declare-fun b!6633799 () Bool)

(assert (=> b!6633799 (= e!4012209 e!4012211)))

(declare-fun res!2718718 () Bool)

(assert (=> b!6633799 (=> (not res!2718718) (not e!4012211))))

(assert (=> b!6633799 (= res!2718718 call!582266)))

(declare-fun b!6633800 () Bool)

(assert (=> b!6633800 (= e!4012210 e!4012208)))

(assert (=> b!6633800 (= c!1223559 ((_ is Union!16499) lt!2419272))))

(declare-fun b!6633801 () Bool)

(declare-fun res!2718715 () Bool)

(assert (=> b!6633801 (=> (not res!2718715) (not e!4012207))))

(assert (=> b!6633801 (= res!2718715 call!582266)))

(assert (=> b!6633801 (= e!4012208 e!4012207)))

(declare-fun b!6633802 () Bool)

(assert (=> b!6633802 (= e!4012213 call!582264)))

(declare-fun b!6633803 () Bool)

(assert (=> b!6633803 (= e!4012212 e!4012210)))

(assert (=> b!6633803 (= c!1223560 ((_ is Star!16499) lt!2419272))))

(assert (= (and d!2079501 (not res!2718716)) b!6633803))

(assert (= (and b!6633803 c!1223560) b!6633795))

(assert (= (and b!6633803 (not c!1223560)) b!6633800))

(assert (= (and b!6633795 res!2718719) b!6633802))

(assert (= (and b!6633800 c!1223559) b!6633801))

(assert (= (and b!6633800 (not c!1223559)) b!6633796))

(assert (= (and b!6633801 res!2718715) b!6633798))

(assert (= (and b!6633796 (not res!2718717)) b!6633799))

(assert (= (and b!6633799 res!2718718) b!6633797))

(assert (= (or b!6633798 b!6633797) bm!582259))

(assert (= (or b!6633801 b!6633799) bm!582260))

(assert (= (or b!6633802 bm!582260) bm!582261))

(declare-fun m!7402140 () Bool)

(assert (=> bm!582259 m!7402140))

(declare-fun m!7402142 () Bool)

(assert (=> bm!582261 m!7402142))

(declare-fun m!7402144 () Bool)

(assert (=> b!6633795 m!7402144))

(assert (=> d!2079405 d!2079501))

(declare-fun d!2079503 () Bool)

(declare-fun res!2718724 () Bool)

(declare-fun e!4012218 () Bool)

(assert (=> d!2079503 (=> res!2718724 e!4012218)))

(assert (=> d!2079503 (= res!2718724 ((_ is Nil!65672) (unfocusZipperList!1920 zl!343)))))

(assert (=> d!2079503 (= (forall!15694 (unfocusZipperList!1920 zl!343) lambda!370619) e!4012218)))

(declare-fun b!6633808 () Bool)

(declare-fun e!4012219 () Bool)

(assert (=> b!6633808 (= e!4012218 e!4012219)))

(declare-fun res!2718725 () Bool)

(assert (=> b!6633808 (=> (not res!2718725) (not e!4012219))))

(declare-fun dynLambda!26161 (Int Regex!16499) Bool)

(assert (=> b!6633808 (= res!2718725 (dynLambda!26161 lambda!370619 (h!72120 (unfocusZipperList!1920 zl!343))))))

(declare-fun b!6633809 () Bool)

(assert (=> b!6633809 (= e!4012219 (forall!15694 (t!379460 (unfocusZipperList!1920 zl!343)) lambda!370619))))

(assert (= (and d!2079503 (not res!2718724)) b!6633808))

(assert (= (and b!6633808 res!2718725) b!6633809))

(declare-fun b_lambda!250769 () Bool)

(assert (=> (not b_lambda!250769) (not b!6633808)))

(declare-fun m!7402146 () Bool)

(assert (=> b!6633808 m!7402146))

(declare-fun m!7402148 () Bool)

(assert (=> b!6633809 m!7402148))

(assert (=> d!2079405 d!2079503))

(declare-fun d!2079505 () Bool)

(assert (=> d!2079505 (= (Exists!3569 (ite c!1223420 lambda!370600 lambda!370601)) (choose!49554 (ite c!1223420 lambda!370600 lambda!370601)))))

(declare-fun bs!1704686 () Bool)

(assert (= bs!1704686 d!2079505))

(declare-fun m!7402150 () Bool)

(assert (=> bs!1704686 m!7402150))

(assert (=> bm!582209 d!2079505))

(declare-fun bm!582266 () Bool)

(declare-fun call!582272 () Bool)

(declare-fun c!1223563 () Bool)

(assert (=> bm!582266 (= call!582272 (nullable!6492 (ite c!1223563 (regTwo!33511 (h!72120 (exprs!6383 (h!72121 zl!343)))) (regTwo!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))))))))

(declare-fun b!6633824 () Bool)

(declare-fun e!4012232 () Bool)

(assert (=> b!6633824 (= e!4012232 call!582272)))

(declare-fun d!2079507 () Bool)

(declare-fun res!2718736 () Bool)

(declare-fun e!4012236 () Bool)

(assert (=> d!2079507 (=> res!2718736 e!4012236)))

(assert (=> d!2079507 (= res!2718736 ((_ is EmptyExpr!16499) (h!72120 (exprs!6383 (h!72121 zl!343)))))))

(assert (=> d!2079507 (= (nullableFct!2413 (h!72120 (exprs!6383 (h!72121 zl!343)))) e!4012236)))

(declare-fun b!6633825 () Bool)

(declare-fun e!4012233 () Bool)

(declare-fun e!4012235 () Bool)

(assert (=> b!6633825 (= e!4012233 e!4012235)))

(assert (=> b!6633825 (= c!1223563 ((_ is Union!16499) (h!72120 (exprs!6383 (h!72121 zl!343)))))))

(declare-fun b!6633826 () Bool)

(declare-fun e!4012237 () Bool)

(assert (=> b!6633826 (= e!4012237 e!4012233)))

(declare-fun res!2718740 () Bool)

(assert (=> b!6633826 (=> res!2718740 e!4012233)))

(assert (=> b!6633826 (= res!2718740 ((_ is Star!16499) (h!72120 (exprs!6383 (h!72121 zl!343)))))))

(declare-fun b!6633827 () Bool)

(declare-fun e!4012234 () Bool)

(assert (=> b!6633827 (= e!4012234 call!582272)))

(declare-fun b!6633828 () Bool)

(assert (=> b!6633828 (= e!4012235 e!4012234)))

(declare-fun res!2718737 () Bool)

(declare-fun call!582271 () Bool)

(assert (=> b!6633828 (= res!2718737 call!582271)))

(assert (=> b!6633828 (=> res!2718737 e!4012234)))

(declare-fun b!6633829 () Bool)

(assert (=> b!6633829 (= e!4012235 e!4012232)))

(declare-fun res!2718738 () Bool)

(assert (=> b!6633829 (= res!2718738 call!582271)))

(assert (=> b!6633829 (=> (not res!2718738) (not e!4012232))))

(declare-fun b!6633830 () Bool)

(assert (=> b!6633830 (= e!4012236 e!4012237)))

(declare-fun res!2718739 () Bool)

(assert (=> b!6633830 (=> (not res!2718739) (not e!4012237))))

(assert (=> b!6633830 (= res!2718739 (and (not ((_ is EmptyLang!16499) (h!72120 (exprs!6383 (h!72121 zl!343))))) (not ((_ is ElementMatch!16499) (h!72120 (exprs!6383 (h!72121 zl!343)))))))))

(declare-fun bm!582267 () Bool)

(assert (=> bm!582267 (= call!582271 (nullable!6492 (ite c!1223563 (regOne!33511 (h!72120 (exprs!6383 (h!72121 zl!343)))) (regOne!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))))))))

(assert (= (and d!2079507 (not res!2718736)) b!6633830))

(assert (= (and b!6633830 res!2718739) b!6633826))

(assert (= (and b!6633826 (not res!2718740)) b!6633825))

(assert (= (and b!6633825 c!1223563) b!6633828))

(assert (= (and b!6633825 (not c!1223563)) b!6633829))

(assert (= (and b!6633828 (not res!2718737)) b!6633827))

(assert (= (and b!6633829 res!2718738) b!6633824))

(assert (= (or b!6633827 b!6633824) bm!582266))

(assert (= (or b!6633828 b!6633829) bm!582267))

(declare-fun m!7402152 () Bool)

(assert (=> bm!582266 m!7402152))

(declare-fun m!7402154 () Bool)

(assert (=> bm!582267 m!7402154))

(assert (=> d!2079371 d!2079507))

(declare-fun bs!1704687 () Bool)

(declare-fun d!2079509 () Bool)

(assert (= bs!1704687 (and d!2079509 d!2079403)))

(declare-fun lambda!370648 () Int)

(assert (=> bs!1704687 (= lambda!370648 lambda!370613)))

(declare-fun bs!1704688 () Bool)

(assert (= bs!1704688 (and d!2079509 d!2079389)))

(assert (=> bs!1704688 (= lambda!370648 lambda!370611)))

(declare-fun bs!1704689 () Bool)

(assert (= bs!1704689 (and d!2079509 d!2079411)))

(assert (=> bs!1704689 (= lambda!370648 lambda!370625)))

(declare-fun bs!1704690 () Bool)

(assert (= bs!1704690 (and d!2079509 d!2079405)))

(assert (=> bs!1704690 (= lambda!370648 lambda!370619)))

(declare-fun bs!1704691 () Bool)

(assert (= bs!1704691 (and d!2079509 d!2079327)))

(assert (=> bs!1704691 (= lambda!370648 lambda!370587)))

(declare-fun bs!1704692 () Bool)

(assert (= bs!1704692 (and d!2079509 d!2079343)))

(assert (=> bs!1704692 (= lambda!370648 lambda!370593)))

(assert (=> d!2079509 (= (inv!84494 setElem!45339) (forall!15694 (exprs!6383 setElem!45339) lambda!370648))))

(declare-fun bs!1704693 () Bool)

(assert (= bs!1704693 d!2079509))

(declare-fun m!7402156 () Bool)

(assert (=> bs!1704693 m!7402156))

(assert (=> setNonEmpty!45339 d!2079509))

(assert (=> b!6633292 d!2079493))

(assert (=> b!6633292 d!2079495))

(declare-fun d!2079511 () Bool)

(assert (=> d!2079511 (= (head!13440 (exprs!6383 (h!72121 zl!343))) (h!72120 (exprs!6383 (h!72121 zl!343))))))

(assert (=> b!6633180 d!2079511))

(declare-fun d!2079513 () Bool)

(assert (=> d!2079513 (= (head!13439 s!2326) (h!72122 s!2326))))

(assert (=> b!6633238 d!2079513))

(assert (=> b!6633326 d!2079371))

(assert (=> b!6633293 d!2079513))

(declare-fun d!2079515 () Bool)

(assert (=> d!2079515 (= (head!13440 (t!379460 (exprs!6383 (h!72121 zl!343)))) (h!72120 (t!379460 (exprs!6383 (h!72121 zl!343)))))))

(assert (=> b!6633214 d!2079515))

(declare-fun d!2079517 () Bool)

(declare-fun res!2718741 () Bool)

(declare-fun e!4012238 () Bool)

(assert (=> d!2079517 (=> res!2718741 e!4012238)))

(assert (=> d!2079517 (= res!2718741 ((_ is Nil!65672) (exprs!6383 (h!72121 zl!343))))))

(assert (=> d!2079517 (= (forall!15694 (exprs!6383 (h!72121 zl!343)) lambda!370611) e!4012238)))

(declare-fun b!6633831 () Bool)

(declare-fun e!4012239 () Bool)

(assert (=> b!6633831 (= e!4012238 e!4012239)))

(declare-fun res!2718742 () Bool)

(assert (=> b!6633831 (=> (not res!2718742) (not e!4012239))))

(assert (=> b!6633831 (= res!2718742 (dynLambda!26161 lambda!370611 (h!72120 (exprs!6383 (h!72121 zl!343)))))))

(declare-fun b!6633832 () Bool)

(assert (=> b!6633832 (= e!4012239 (forall!15694 (t!379460 (exprs!6383 (h!72121 zl!343))) lambda!370611))))

(assert (= (and d!2079517 (not res!2718741)) b!6633831))

(assert (= (and b!6633831 res!2718742) b!6633832))

(declare-fun b_lambda!250771 () Bool)

(assert (=> (not b_lambda!250771) (not b!6633831)))

(declare-fun m!7402158 () Bool)

(assert (=> b!6633831 m!7402158))

(declare-fun m!7402160 () Bool)

(assert (=> b!6633832 m!7402160))

(assert (=> d!2079389 d!2079517))

(declare-fun d!2079519 () Bool)

(assert (=> d!2079519 true))

(declare-fun setRes!45345 () Bool)

(assert (=> d!2079519 setRes!45345))

(declare-fun condSetEmpty!45345 () Bool)

(declare-fun res!2718745 () (InoxSet Context!11766))

(assert (=> d!2079519 (= condSetEmpty!45345 (= res!2718745 ((as const (Array Context!11766 Bool)) false)))))

(assert (=> d!2079519 (= (choose!49550 z!1189 lambda!370573) res!2718745)))

(declare-fun setIsEmpty!45345 () Bool)

(assert (=> setIsEmpty!45345 setRes!45345))

(declare-fun setElem!45345 () Context!11766)

(declare-fun tp!1827380 () Bool)

(declare-fun setNonEmpty!45345 () Bool)

(declare-fun e!4012242 () Bool)

(assert (=> setNonEmpty!45345 (= setRes!45345 (and tp!1827380 (inv!84494 setElem!45345) e!4012242))))

(declare-fun setRest!45345 () (InoxSet Context!11766))

(assert (=> setNonEmpty!45345 (= res!2718745 ((_ map or) (store ((as const (Array Context!11766 Bool)) false) setElem!45345 true) setRest!45345))))

(declare-fun b!6633835 () Bool)

(declare-fun tp!1827381 () Bool)

(assert (=> b!6633835 (= e!4012242 tp!1827381)))

(assert (= (and d!2079519 condSetEmpty!45345) setIsEmpty!45345))

(assert (= (and d!2079519 (not condSetEmpty!45345)) setNonEmpty!45345))

(assert (= setNonEmpty!45345 b!6633835))

(declare-fun m!7402162 () Bool)

(assert (=> setNonEmpty!45345 m!7402162))

(assert (=> d!2079365 d!2079519))

(declare-fun d!2079521 () Bool)

(assert (=> d!2079521 true))

(declare-fun setRes!45346 () Bool)

(assert (=> d!2079521 setRes!45346))

(declare-fun condSetEmpty!45346 () Bool)

(declare-fun res!2718746 () (InoxSet Context!11766))

(assert (=> d!2079521 (= condSetEmpty!45346 (= res!2718746 ((as const (Array Context!11766 Bool)) false)))))

(assert (=> d!2079521 (= (choose!49550 lt!2419202 lambda!370573) res!2718746)))

(declare-fun setIsEmpty!45346 () Bool)

(assert (=> setIsEmpty!45346 setRes!45346))

(declare-fun e!4012243 () Bool)

(declare-fun setNonEmpty!45346 () Bool)

(declare-fun setElem!45346 () Context!11766)

(declare-fun tp!1827382 () Bool)

(assert (=> setNonEmpty!45346 (= setRes!45346 (and tp!1827382 (inv!84494 setElem!45346) e!4012243))))

(declare-fun setRest!45346 () (InoxSet Context!11766))

(assert (=> setNonEmpty!45346 (= res!2718746 ((_ map or) (store ((as const (Array Context!11766 Bool)) false) setElem!45346 true) setRest!45346))))

(declare-fun b!6633836 () Bool)

(declare-fun tp!1827383 () Bool)

(assert (=> b!6633836 (= e!4012243 tp!1827383)))

(assert (= (and d!2079521 condSetEmpty!45346) setIsEmpty!45346))

(assert (= (and d!2079521 (not condSetEmpty!45346)) setNonEmpty!45346))

(assert (= setNonEmpty!45346 b!6633836))

(declare-fun m!7402164 () Bool)

(assert (=> setNonEmpty!45346 m!7402164))

(assert (=> d!2079397 d!2079521))

(assert (=> d!2079337 d!2079499))

(declare-fun bm!582268 () Bool)

(declare-fun call!582274 () Bool)

(declare-fun c!1223564 () Bool)

(assert (=> bm!582268 (= call!582274 (validRegex!8235 (ite c!1223564 (regTwo!33511 lt!2419180) (regTwo!33510 lt!2419180))))))

(declare-fun d!2079523 () Bool)

(declare-fun res!2718748 () Bool)

(declare-fun e!4012249 () Bool)

(assert (=> d!2079523 (=> res!2718748 e!4012249)))

(assert (=> d!2079523 (= res!2718748 ((_ is ElementMatch!16499) lt!2419180))))

(assert (=> d!2079523 (= (validRegex!8235 lt!2419180) e!4012249)))

(declare-fun bm!582269 () Bool)

(declare-fun call!582275 () Bool)

(declare-fun call!582273 () Bool)

(assert (=> bm!582269 (= call!582275 call!582273)))

(declare-fun c!1223565 () Bool)

(declare-fun bm!582270 () Bool)

(assert (=> bm!582270 (= call!582273 (validRegex!8235 (ite c!1223565 (reg!16828 lt!2419180) (ite c!1223564 (regOne!33511 lt!2419180) (regOne!33510 lt!2419180)))))))

(declare-fun b!6633837 () Bool)

(declare-fun e!4012247 () Bool)

(declare-fun e!4012250 () Bool)

(assert (=> b!6633837 (= e!4012247 e!4012250)))

(declare-fun res!2718751 () Bool)

(assert (=> b!6633837 (= res!2718751 (not (nullable!6492 (reg!16828 lt!2419180))))))

(assert (=> b!6633837 (=> (not res!2718751) (not e!4012250))))

(declare-fun b!6633838 () Bool)

(declare-fun res!2718749 () Bool)

(declare-fun e!4012246 () Bool)

(assert (=> b!6633838 (=> res!2718749 e!4012246)))

(assert (=> b!6633838 (= res!2718749 (not ((_ is Concat!25344) lt!2419180)))))

(declare-fun e!4012245 () Bool)

(assert (=> b!6633838 (= e!4012245 e!4012246)))

(declare-fun b!6633839 () Bool)

(declare-fun e!4012248 () Bool)

(assert (=> b!6633839 (= e!4012248 call!582274)))

(declare-fun b!6633840 () Bool)

(declare-fun e!4012244 () Bool)

(assert (=> b!6633840 (= e!4012244 call!582274)))

(declare-fun b!6633841 () Bool)

(assert (=> b!6633841 (= e!4012246 e!4012248)))

(declare-fun res!2718750 () Bool)

(assert (=> b!6633841 (=> (not res!2718750) (not e!4012248))))

(assert (=> b!6633841 (= res!2718750 call!582275)))

(declare-fun b!6633842 () Bool)

(assert (=> b!6633842 (= e!4012247 e!4012245)))

(assert (=> b!6633842 (= c!1223564 ((_ is Union!16499) lt!2419180))))

(declare-fun b!6633843 () Bool)

(declare-fun res!2718747 () Bool)

(assert (=> b!6633843 (=> (not res!2718747) (not e!4012244))))

(assert (=> b!6633843 (= res!2718747 call!582275)))

(assert (=> b!6633843 (= e!4012245 e!4012244)))

(declare-fun b!6633844 () Bool)

(assert (=> b!6633844 (= e!4012250 call!582273)))

(declare-fun b!6633845 () Bool)

(assert (=> b!6633845 (= e!4012249 e!4012247)))

(assert (=> b!6633845 (= c!1223565 ((_ is Star!16499) lt!2419180))))

(assert (= (and d!2079523 (not res!2718748)) b!6633845))

(assert (= (and b!6633845 c!1223565) b!6633837))

(assert (= (and b!6633845 (not c!1223565)) b!6633842))

(assert (= (and b!6633837 res!2718751) b!6633844))

(assert (= (and b!6633842 c!1223564) b!6633843))

(assert (= (and b!6633842 (not c!1223564)) b!6633838))

(assert (= (and b!6633843 res!2718747) b!6633840))

(assert (= (and b!6633838 (not res!2718749)) b!6633841))

(assert (= (and b!6633841 res!2718750) b!6633839))

(assert (= (or b!6633840 b!6633839) bm!582268))

(assert (= (or b!6633843 b!6633841) bm!582269))

(assert (= (or b!6633844 bm!582269) bm!582270))

(declare-fun m!7402166 () Bool)

(assert (=> bm!582268 m!7402166))

(declare-fun m!7402168 () Bool)

(assert (=> bm!582270 m!7402168))

(declare-fun m!7402170 () Bool)

(assert (=> b!6633837 m!7402170))

(assert (=> d!2079337 d!2079523))

(declare-fun bs!1704694 () Bool)

(declare-fun b!6633847 () Bool)

(assert (= bs!1704694 (and b!6633847 d!2079443)))

(declare-fun lambda!370649 () Int)

(assert (=> bs!1704694 (not (= lambda!370649 lambda!370642))))

(declare-fun bs!1704695 () Bool)

(assert (= bs!1704695 (and b!6633847 d!2079437)))

(assert (=> bs!1704695 (not (= lambda!370649 lambda!370637))))

(declare-fun bs!1704696 () Bool)

(assert (= bs!1704696 (and b!6633847 b!6633257)))

(assert (=> bs!1704696 (not (= lambda!370649 lambda!370601))))

(declare-fun bs!1704697 () Bool)

(assert (= bs!1704697 (and b!6633847 b!6633228)))

(assert (=> bs!1704697 (not (= lambda!370649 lambda!370597))))

(declare-fun bs!1704698 () Bool)

(assert (= bs!1704698 (and b!6633847 b!6633059)))

(assert (=> bs!1704698 (= (and (= (reg!16828 (regTwo!33511 (regOne!33510 r!7292))) (reg!16828 r!7292)) (= (regTwo!33511 (regOne!33510 r!7292)) r!7292)) (= lambda!370649 lambda!370581))))

(declare-fun bs!1704699 () Bool)

(assert (= bs!1704699 (and b!6633847 b!6633250)))

(assert (=> bs!1704699 (= (and (= (reg!16828 (regTwo!33511 (regOne!33510 r!7292))) (reg!16828 (regTwo!33510 r!7292))) (= (regTwo!33511 (regOne!33510 r!7292)) (regTwo!33510 r!7292))) (= lambda!370649 lambda!370600))))

(assert (=> bs!1704695 (not (= lambda!370649 lambda!370636))))

(declare-fun bs!1704700 () Bool)

(assert (= bs!1704700 (and b!6633847 b!6633065)))

(assert (=> bs!1704700 (not (= lambda!370649 lambda!370582))))

(declare-fun bs!1704701 () Bool)

(assert (= bs!1704701 (and b!6633847 b!6632927)))

(assert (=> bs!1704701 (not (= lambda!370649 lambda!370572))))

(assert (=> bs!1704701 (not (= lambda!370649 lambda!370571))))

(declare-fun bs!1704702 () Bool)

(assert (= bs!1704702 (and b!6633847 b!6633222)))

(assert (=> bs!1704702 (= (and (= (reg!16828 (regTwo!33511 (regOne!33510 r!7292))) (reg!16828 (regOne!33510 r!7292))) (= (regTwo!33511 (regOne!33510 r!7292)) (regOne!33510 r!7292))) (= lambda!370649 lambda!370596))))

(assert (=> b!6633847 true))

(assert (=> b!6633847 true))

(declare-fun bs!1704703 () Bool)

(declare-fun b!6633853 () Bool)

(assert (= bs!1704703 (and b!6633853 d!2079443)))

(declare-fun lambda!370650 () Int)

(assert (=> bs!1704703 (not (= lambda!370650 lambda!370642))))

(declare-fun bs!1704704 () Bool)

(assert (= bs!1704704 (and b!6633853 b!6633257)))

(assert (=> bs!1704704 (= (and (= (regOne!33510 (regTwo!33511 (regOne!33510 r!7292))) (regOne!33510 (regTwo!33510 r!7292))) (= (regTwo!33510 (regTwo!33511 (regOne!33510 r!7292))) (regTwo!33510 (regTwo!33510 r!7292)))) (= lambda!370650 lambda!370601))))

(declare-fun bs!1704705 () Bool)

(assert (= bs!1704705 (and b!6633853 b!6633228)))

(assert (=> bs!1704705 (= (and (= (regOne!33510 (regTwo!33511 (regOne!33510 r!7292))) (regOne!33510 (regOne!33510 r!7292))) (= (regTwo!33510 (regTwo!33511 (regOne!33510 r!7292))) (regTwo!33510 (regOne!33510 r!7292)))) (= lambda!370650 lambda!370597))))

(declare-fun bs!1704706 () Bool)

(assert (= bs!1704706 (and b!6633853 b!6633059)))

(assert (=> bs!1704706 (not (= lambda!370650 lambda!370581))))

(declare-fun bs!1704707 () Bool)

(assert (= bs!1704707 (and b!6633853 b!6633250)))

(assert (=> bs!1704707 (not (= lambda!370650 lambda!370600))))

(declare-fun bs!1704708 () Bool)

(assert (= bs!1704708 (and b!6633853 d!2079437)))

(assert (=> bs!1704708 (not (= lambda!370650 lambda!370636))))

(declare-fun bs!1704709 () Bool)

(assert (= bs!1704709 (and b!6633853 b!6633065)))

(assert (=> bs!1704709 (= (and (= (regOne!33510 (regTwo!33511 (regOne!33510 r!7292))) (regOne!33510 r!7292)) (= (regTwo!33510 (regTwo!33511 (regOne!33510 r!7292))) (regTwo!33510 r!7292))) (= lambda!370650 lambda!370582))))

(declare-fun bs!1704710 () Bool)

(assert (= bs!1704710 (and b!6633853 b!6632927)))

(assert (=> bs!1704710 (= (and (= (regOne!33510 (regTwo!33511 (regOne!33510 r!7292))) (regOne!33510 r!7292)) (= (regTwo!33510 (regTwo!33511 (regOne!33510 r!7292))) (regTwo!33510 r!7292))) (= lambda!370650 lambda!370572))))

(assert (=> bs!1704708 (= (and (= (regOne!33510 (regTwo!33511 (regOne!33510 r!7292))) (regOne!33510 r!7292)) (= (regTwo!33510 (regTwo!33511 (regOne!33510 r!7292))) (regTwo!33510 r!7292))) (= lambda!370650 lambda!370637))))

(declare-fun bs!1704711 () Bool)

(assert (= bs!1704711 (and b!6633853 b!6633847)))

(assert (=> bs!1704711 (not (= lambda!370650 lambda!370649))))

(assert (=> bs!1704710 (not (= lambda!370650 lambda!370571))))

(declare-fun bs!1704712 () Bool)

(assert (= bs!1704712 (and b!6633853 b!6633222)))

(assert (=> bs!1704712 (not (= lambda!370650 lambda!370596))))

(assert (=> b!6633853 true))

(assert (=> b!6633853 true))

(declare-fun b!6633846 () Bool)

(declare-fun c!1223569 () Bool)

(assert (=> b!6633846 (= c!1223569 ((_ is Union!16499) (regTwo!33511 (regOne!33510 r!7292))))))

(declare-fun e!4012255 () Bool)

(declare-fun e!4012252 () Bool)

(assert (=> b!6633846 (= e!4012255 e!4012252)))

(declare-fun bm!582271 () Bool)

(declare-fun call!582276 () Bool)

(assert (=> bm!582271 (= call!582276 (isEmpty!37969 s!2326))))

(declare-fun e!4012251 () Bool)

(declare-fun call!582277 () Bool)

(assert (=> b!6633847 (= e!4012251 call!582277)))

(declare-fun b!6633848 () Bool)

(assert (=> b!6633848 (= e!4012255 (= s!2326 (Cons!65674 (c!1223326 (regTwo!33511 (regOne!33510 r!7292))) Nil!65674)))))

(declare-fun b!6633849 () Bool)

(declare-fun e!4012254 () Bool)

(assert (=> b!6633849 (= e!4012252 e!4012254)))

(declare-fun res!2718754 () Bool)

(assert (=> b!6633849 (= res!2718754 (matchRSpec!3600 (regOne!33511 (regTwo!33511 (regOne!33510 r!7292))) s!2326))))

(assert (=> b!6633849 (=> res!2718754 e!4012254)))

(declare-fun b!6633850 () Bool)

(declare-fun e!4012257 () Bool)

(declare-fun e!4012253 () Bool)

(assert (=> b!6633850 (= e!4012257 e!4012253)))

(declare-fun res!2718753 () Bool)

(assert (=> b!6633850 (= res!2718753 (not ((_ is EmptyLang!16499) (regTwo!33511 (regOne!33510 r!7292)))))))

(assert (=> b!6633850 (=> (not res!2718753) (not e!4012253))))

(declare-fun bm!582272 () Bool)

(declare-fun c!1223567 () Bool)

(assert (=> bm!582272 (= call!582277 (Exists!3569 (ite c!1223567 lambda!370649 lambda!370650)))))

(declare-fun b!6633851 () Bool)

(declare-fun e!4012256 () Bool)

(assert (=> b!6633851 (= e!4012252 e!4012256)))

(assert (=> b!6633851 (= c!1223567 ((_ is Star!16499) (regTwo!33511 (regOne!33510 r!7292))))))

(declare-fun d!2079525 () Bool)

(declare-fun c!1223566 () Bool)

(assert (=> d!2079525 (= c!1223566 ((_ is EmptyExpr!16499) (regTwo!33511 (regOne!33510 r!7292))))))

(assert (=> d!2079525 (= (matchRSpec!3600 (regTwo!33511 (regOne!33510 r!7292)) s!2326) e!4012257)))

(declare-fun b!6633852 () Bool)

(declare-fun c!1223568 () Bool)

(assert (=> b!6633852 (= c!1223568 ((_ is ElementMatch!16499) (regTwo!33511 (regOne!33510 r!7292))))))

(assert (=> b!6633852 (= e!4012253 e!4012255)))

(assert (=> b!6633853 (= e!4012256 call!582277)))

(declare-fun b!6633854 () Bool)

(declare-fun res!2718752 () Bool)

(assert (=> b!6633854 (=> res!2718752 e!4012251)))

(assert (=> b!6633854 (= res!2718752 call!582276)))

(assert (=> b!6633854 (= e!4012256 e!4012251)))

(declare-fun b!6633855 () Bool)

(assert (=> b!6633855 (= e!4012254 (matchRSpec!3600 (regTwo!33511 (regTwo!33511 (regOne!33510 r!7292))) s!2326))))

(declare-fun b!6633856 () Bool)

(assert (=> b!6633856 (= e!4012257 call!582276)))

(assert (= (and d!2079525 c!1223566) b!6633856))

(assert (= (and d!2079525 (not c!1223566)) b!6633850))

(assert (= (and b!6633850 res!2718753) b!6633852))

(assert (= (and b!6633852 c!1223568) b!6633848))

(assert (= (and b!6633852 (not c!1223568)) b!6633846))

(assert (= (and b!6633846 c!1223569) b!6633849))

(assert (= (and b!6633846 (not c!1223569)) b!6633851))

(assert (= (and b!6633849 (not res!2718754)) b!6633855))

(assert (= (and b!6633851 c!1223567) b!6633854))

(assert (= (and b!6633851 (not c!1223567)) b!6633853))

(assert (= (and b!6633854 (not res!2718752)) b!6633847))

(assert (= (or b!6633847 b!6633853) bm!582272))

(assert (= (or b!6633856 b!6633854) bm!582271))

(assert (=> bm!582271 m!7401664))

(declare-fun m!7402172 () Bool)

(assert (=> b!6633849 m!7402172))

(declare-fun m!7402174 () Bool)

(assert (=> bm!582272 m!7402174))

(declare-fun m!7402176 () Bool)

(assert (=> b!6633855 m!7402176))

(assert (=> b!6633230 d!2079525))

(assert (=> b!6633127 d!2079493))

(assert (=> b!6633127 d!2079495))

(assert (=> d!2079325 d!2079323))

(assert (=> d!2079325 d!2079305))

(declare-fun d!2079527 () Bool)

(assert (=> d!2079527 (= (matchR!8682 r!7292 s!2326) (matchRSpec!3600 r!7292 s!2326))))

(assert (=> d!2079527 true))

(declare-fun _$88!5346 () Unit!159351)

(assert (=> d!2079527 (= (choose!49541 r!7292 s!2326) _$88!5346)))

(declare-fun bs!1704713 () Bool)

(assert (= bs!1704713 d!2079527))

(assert (=> bs!1704713 m!7401550))

(assert (=> bs!1704713 m!7401548))

(assert (=> d!2079325 d!2079527))

(assert (=> d!2079325 d!2079301))

(declare-fun b!6633857 () Bool)

(declare-fun e!4012258 () (InoxSet Context!11766))

(declare-fun e!4012259 () (InoxSet Context!11766))

(assert (=> b!6633857 (= e!4012258 e!4012259)))

(declare-fun c!1223570 () Bool)

(assert (=> b!6633857 (= c!1223570 ((_ is Cons!65672) (exprs!6383 (Context!11767 (t!379460 (exprs!6383 lt!2419182))))))))

(declare-fun bm!582273 () Bool)

(declare-fun call!582278 () (InoxSet Context!11766))

(assert (=> bm!582273 (= call!582278 (derivationStepZipperDown!1747 (h!72120 (exprs!6383 (Context!11767 (t!379460 (exprs!6383 lt!2419182))))) (Context!11767 (t!379460 (exprs!6383 (Context!11767 (t!379460 (exprs!6383 lt!2419182)))))) (h!72122 s!2326)))))

(declare-fun b!6633858 () Bool)

(assert (=> b!6633858 (= e!4012258 ((_ map or) call!582278 (derivationStepZipperUp!1673 (Context!11767 (t!379460 (exprs!6383 (Context!11767 (t!379460 (exprs!6383 lt!2419182)))))) (h!72122 s!2326))))))

(declare-fun b!6633859 () Bool)

(declare-fun e!4012260 () Bool)

(assert (=> b!6633859 (= e!4012260 (nullable!6492 (h!72120 (exprs!6383 (Context!11767 (t!379460 (exprs!6383 lt!2419182)))))))))

(declare-fun b!6633860 () Bool)

(assert (=> b!6633860 (= e!4012259 ((as const (Array Context!11766 Bool)) false))))

(declare-fun b!6633861 () Bool)

(assert (=> b!6633861 (= e!4012259 call!582278)))

(declare-fun d!2079529 () Bool)

(declare-fun c!1223571 () Bool)

(assert (=> d!2079529 (= c!1223571 e!4012260)))

(declare-fun res!2718755 () Bool)

(assert (=> d!2079529 (=> (not res!2718755) (not e!4012260))))

(assert (=> d!2079529 (= res!2718755 ((_ is Cons!65672) (exprs!6383 (Context!11767 (t!379460 (exprs!6383 lt!2419182))))))))

(assert (=> d!2079529 (= (derivationStepZipperUp!1673 (Context!11767 (t!379460 (exprs!6383 lt!2419182))) (h!72122 s!2326)) e!4012258)))

(assert (= (and d!2079529 res!2718755) b!6633859))

(assert (= (and d!2079529 c!1223571) b!6633858))

(assert (= (and d!2079529 (not c!1223571)) b!6633857))

(assert (= (and b!6633857 c!1223570) b!6633861))

(assert (= (and b!6633857 (not c!1223570)) b!6633860))

(assert (= (or b!6633858 b!6633861) bm!582273))

(declare-fun m!7402178 () Bool)

(assert (=> bm!582273 m!7402178))

(declare-fun m!7402180 () Bool)

(assert (=> b!6633858 m!7402180))

(declare-fun m!7402182 () Bool)

(assert (=> b!6633859 m!7402182))

(assert (=> b!6633318 d!2079529))

(declare-fun b!6633862 () Bool)

(declare-fun res!2718763 () Bool)

(declare-fun e!4012267 () Bool)

(assert (=> b!6633862 (=> res!2718763 e!4012267)))

(declare-fun e!4012264 () Bool)

(assert (=> b!6633862 (= res!2718763 e!4012264)))

(declare-fun res!2718761 () Bool)

(assert (=> b!6633862 (=> (not res!2718761) (not e!4012264))))

(declare-fun lt!2419313 () Bool)

(assert (=> b!6633862 (= res!2718761 lt!2419313)))

(declare-fun d!2079531 () Bool)

(declare-fun e!4012265 () Bool)

(assert (=> d!2079531 e!4012265))

(declare-fun c!1223572 () Bool)

(assert (=> d!2079531 (= c!1223572 ((_ is EmptyExpr!16499) (regTwo!33510 r!7292)))))

(declare-fun e!4012262 () Bool)

(assert (=> d!2079531 (= lt!2419313 e!4012262)))

(declare-fun c!1223573 () Bool)

(assert (=> d!2079531 (= c!1223573 (isEmpty!37969 (_2!36781 (get!22830 lt!2419296))))))

(assert (=> d!2079531 (validRegex!8235 (regTwo!33510 r!7292))))

(assert (=> d!2079531 (= (matchR!8682 (regTwo!33510 r!7292) (_2!36781 (get!22830 lt!2419296))) lt!2419313)))

(declare-fun bm!582274 () Bool)

(declare-fun call!582279 () Bool)

(assert (=> bm!582274 (= call!582279 (isEmpty!37969 (_2!36781 (get!22830 lt!2419296))))))

(declare-fun b!6633863 () Bool)

(declare-fun e!4012261 () Bool)

(assert (=> b!6633863 (= e!4012265 e!4012261)))

(declare-fun c!1223574 () Bool)

(assert (=> b!6633863 (= c!1223574 ((_ is EmptyLang!16499) (regTwo!33510 r!7292)))))

(declare-fun b!6633864 () Bool)

(assert (=> b!6633864 (= e!4012261 (not lt!2419313))))

(declare-fun b!6633865 () Bool)

(assert (=> b!6633865 (= e!4012265 (= lt!2419313 call!582279))))

(declare-fun b!6633866 () Bool)

(assert (=> b!6633866 (= e!4012264 (= (head!13439 (_2!36781 (get!22830 lt!2419296))) (c!1223326 (regTwo!33510 r!7292))))))

(declare-fun b!6633867 () Bool)

(declare-fun res!2718759 () Bool)

(declare-fun e!4012263 () Bool)

(assert (=> b!6633867 (=> res!2718759 e!4012263)))

(assert (=> b!6633867 (= res!2718759 (not (isEmpty!37969 (tail!12524 (_2!36781 (get!22830 lt!2419296))))))))

(declare-fun b!6633868 () Bool)

(assert (=> b!6633868 (= e!4012263 (not (= (head!13439 (_2!36781 (get!22830 lt!2419296))) (c!1223326 (regTwo!33510 r!7292)))))))

(declare-fun b!6633869 () Bool)

(assert (=> b!6633869 (= e!4012262 (nullable!6492 (regTwo!33510 r!7292)))))

(declare-fun b!6633870 () Bool)

(declare-fun res!2718757 () Bool)

(assert (=> b!6633870 (=> (not res!2718757) (not e!4012264))))

(assert (=> b!6633870 (= res!2718757 (not call!582279))))

(declare-fun b!6633871 () Bool)

(declare-fun res!2718762 () Bool)

(assert (=> b!6633871 (=> (not res!2718762) (not e!4012264))))

(assert (=> b!6633871 (= res!2718762 (isEmpty!37969 (tail!12524 (_2!36781 (get!22830 lt!2419296)))))))

(declare-fun b!6633872 () Bool)

(declare-fun e!4012266 () Bool)

(assert (=> b!6633872 (= e!4012267 e!4012266)))

(declare-fun res!2718760 () Bool)

(assert (=> b!6633872 (=> (not res!2718760) (not e!4012266))))

(assert (=> b!6633872 (= res!2718760 (not lt!2419313))))

(declare-fun b!6633873 () Bool)

(declare-fun res!2718756 () Bool)

(assert (=> b!6633873 (=> res!2718756 e!4012267)))

(assert (=> b!6633873 (= res!2718756 (not ((_ is ElementMatch!16499) (regTwo!33510 r!7292))))))

(assert (=> b!6633873 (= e!4012261 e!4012267)))

(declare-fun b!6633874 () Bool)

(assert (=> b!6633874 (= e!4012262 (matchR!8682 (derivativeStep!5178 (regTwo!33510 r!7292) (head!13439 (_2!36781 (get!22830 lt!2419296)))) (tail!12524 (_2!36781 (get!22830 lt!2419296)))))))

(declare-fun b!6633875 () Bool)

(assert (=> b!6633875 (= e!4012266 e!4012263)))

(declare-fun res!2718758 () Bool)

(assert (=> b!6633875 (=> res!2718758 e!4012263)))

(assert (=> b!6633875 (= res!2718758 call!582279)))

(assert (= (and d!2079531 c!1223573) b!6633869))

(assert (= (and d!2079531 (not c!1223573)) b!6633874))

(assert (= (and d!2079531 c!1223572) b!6633865))

(assert (= (and d!2079531 (not c!1223572)) b!6633863))

(assert (= (and b!6633863 c!1223574) b!6633864))

(assert (= (and b!6633863 (not c!1223574)) b!6633873))

(assert (= (and b!6633873 (not res!2718756)) b!6633862))

(assert (= (and b!6633862 res!2718761) b!6633870))

(assert (= (and b!6633870 res!2718757) b!6633871))

(assert (= (and b!6633871 res!2718762) b!6633866))

(assert (= (and b!6633862 (not res!2718763)) b!6633872))

(assert (= (and b!6633872 res!2718760) b!6633875))

(assert (= (and b!6633875 (not res!2718758)) b!6633867))

(assert (= (and b!6633867 (not res!2718759)) b!6633868))

(assert (= (or b!6633865 b!6633870 b!6633875) bm!582274))

(declare-fun m!7402184 () Bool)

(assert (=> b!6633874 m!7402184))

(assert (=> b!6633874 m!7402184))

(declare-fun m!7402186 () Bool)

(assert (=> b!6633874 m!7402186))

(declare-fun m!7402188 () Bool)

(assert (=> b!6633874 m!7402188))

(assert (=> b!6633874 m!7402186))

(assert (=> b!6633874 m!7402188))

(declare-fun m!7402190 () Bool)

(assert (=> b!6633874 m!7402190))

(declare-fun m!7402192 () Bool)

(assert (=> d!2079531 m!7402192))

(assert (=> d!2079531 m!7401816))

(assert (=> b!6633866 m!7402184))

(assert (=> b!6633868 m!7402184))

(assert (=> bm!582274 m!7402192))

(assert (=> b!6633871 m!7402188))

(assert (=> b!6633871 m!7402188))

(declare-fun m!7402194 () Bool)

(assert (=> b!6633871 m!7402194))

(assert (=> b!6633869 m!7401824))

(assert (=> b!6633867 m!7402188))

(assert (=> b!6633867 m!7402188))

(assert (=> b!6633867 m!7402194))

(assert (=> b!6633542 d!2079531))

(declare-fun d!2079533 () Bool)

(assert (=> d!2079533 (= (get!22830 lt!2419296) (v!52582 lt!2419296))))

(assert (=> b!6633542 d!2079533))

(declare-fun b!6633884 () Bool)

(declare-fun e!4012273 () List!65798)

(assert (=> b!6633884 (= e!4012273 (_2!36781 (get!22830 lt!2419296)))))

(declare-fun b!6633886 () Bool)

(declare-fun res!2718768 () Bool)

(declare-fun e!4012272 () Bool)

(assert (=> b!6633886 (=> (not res!2718768) (not e!4012272))))

(declare-fun lt!2419316 () List!65798)

(declare-fun size!40557 (List!65798) Int)

(assert (=> b!6633886 (= res!2718768 (= (size!40557 lt!2419316) (+ (size!40557 (_1!36781 (get!22830 lt!2419296))) (size!40557 (_2!36781 (get!22830 lt!2419296))))))))

(declare-fun d!2079535 () Bool)

(assert (=> d!2079535 e!4012272))

(declare-fun res!2718769 () Bool)

(assert (=> d!2079535 (=> (not res!2718769) (not e!4012272))))

(declare-fun content!12685 (List!65798) (InoxSet C!33268))

(assert (=> d!2079535 (= res!2718769 (= (content!12685 lt!2419316) ((_ map or) (content!12685 (_1!36781 (get!22830 lt!2419296))) (content!12685 (_2!36781 (get!22830 lt!2419296))))))))

(assert (=> d!2079535 (= lt!2419316 e!4012273)))

(declare-fun c!1223577 () Bool)

(assert (=> d!2079535 (= c!1223577 ((_ is Nil!65674) (_1!36781 (get!22830 lt!2419296))))))

(assert (=> d!2079535 (= (++!14649 (_1!36781 (get!22830 lt!2419296)) (_2!36781 (get!22830 lt!2419296))) lt!2419316)))

(declare-fun b!6633885 () Bool)

(assert (=> b!6633885 (= e!4012273 (Cons!65674 (h!72122 (_1!36781 (get!22830 lt!2419296))) (++!14649 (t!379462 (_1!36781 (get!22830 lt!2419296))) (_2!36781 (get!22830 lt!2419296)))))))

(declare-fun b!6633887 () Bool)

(assert (=> b!6633887 (= e!4012272 (or (not (= (_2!36781 (get!22830 lt!2419296)) Nil!65674)) (= lt!2419316 (_1!36781 (get!22830 lt!2419296)))))))

(assert (= (and d!2079535 c!1223577) b!6633884))

(assert (= (and d!2079535 (not c!1223577)) b!6633885))

(assert (= (and d!2079535 res!2718769) b!6633886))

(assert (= (and b!6633886 res!2718768) b!6633887))

(declare-fun m!7402196 () Bool)

(assert (=> b!6633886 m!7402196))

(declare-fun m!7402198 () Bool)

(assert (=> b!6633886 m!7402198))

(declare-fun m!7402200 () Bool)

(assert (=> b!6633886 m!7402200))

(declare-fun m!7402202 () Bool)

(assert (=> d!2079535 m!7402202))

(declare-fun m!7402204 () Bool)

(assert (=> d!2079535 m!7402204))

(declare-fun m!7402206 () Bool)

(assert (=> d!2079535 m!7402206))

(declare-fun m!7402208 () Bool)

(assert (=> b!6633885 m!7402208))

(assert (=> b!6633546 d!2079535))

(assert (=> b!6633546 d!2079533))

(declare-fun bm!582275 () Bool)

(declare-fun call!582281 () Bool)

(declare-fun c!1223578 () Bool)

(assert (=> bm!582275 (= call!582281 (validRegex!8235 (ite c!1223578 (regTwo!33511 lt!2419240) (regTwo!33510 lt!2419240))))))

(declare-fun d!2079537 () Bool)

(declare-fun res!2718771 () Bool)

(declare-fun e!4012279 () Bool)

(assert (=> d!2079537 (=> res!2718771 e!4012279)))

(assert (=> d!2079537 (= res!2718771 ((_ is ElementMatch!16499) lt!2419240))))

(assert (=> d!2079537 (= (validRegex!8235 lt!2419240) e!4012279)))

(declare-fun bm!582276 () Bool)

(declare-fun call!582282 () Bool)

(declare-fun call!582280 () Bool)

(assert (=> bm!582276 (= call!582282 call!582280)))

(declare-fun bm!582277 () Bool)

(declare-fun c!1223579 () Bool)

(assert (=> bm!582277 (= call!582280 (validRegex!8235 (ite c!1223579 (reg!16828 lt!2419240) (ite c!1223578 (regOne!33511 lt!2419240) (regOne!33510 lt!2419240)))))))

(declare-fun b!6633888 () Bool)

(declare-fun e!4012277 () Bool)

(declare-fun e!4012280 () Bool)

(assert (=> b!6633888 (= e!4012277 e!4012280)))

(declare-fun res!2718774 () Bool)

(assert (=> b!6633888 (= res!2718774 (not (nullable!6492 (reg!16828 lt!2419240))))))

(assert (=> b!6633888 (=> (not res!2718774) (not e!4012280))))

(declare-fun b!6633889 () Bool)

(declare-fun res!2718772 () Bool)

(declare-fun e!4012276 () Bool)

(assert (=> b!6633889 (=> res!2718772 e!4012276)))

(assert (=> b!6633889 (= res!2718772 (not ((_ is Concat!25344) lt!2419240)))))

(declare-fun e!4012275 () Bool)

(assert (=> b!6633889 (= e!4012275 e!4012276)))

(declare-fun b!6633890 () Bool)

(declare-fun e!4012278 () Bool)

(assert (=> b!6633890 (= e!4012278 call!582281)))

(declare-fun b!6633891 () Bool)

(declare-fun e!4012274 () Bool)

(assert (=> b!6633891 (= e!4012274 call!582281)))

(declare-fun b!6633892 () Bool)

(assert (=> b!6633892 (= e!4012276 e!4012278)))

(declare-fun res!2718773 () Bool)

(assert (=> b!6633892 (=> (not res!2718773) (not e!4012278))))

(assert (=> b!6633892 (= res!2718773 call!582282)))

(declare-fun b!6633893 () Bool)

(assert (=> b!6633893 (= e!4012277 e!4012275)))

(assert (=> b!6633893 (= c!1223578 ((_ is Union!16499) lt!2419240))))

(declare-fun b!6633894 () Bool)

(declare-fun res!2718770 () Bool)

(assert (=> b!6633894 (=> (not res!2718770) (not e!4012274))))

(assert (=> b!6633894 (= res!2718770 call!582282)))

(assert (=> b!6633894 (= e!4012275 e!4012274)))

(declare-fun b!6633895 () Bool)

(assert (=> b!6633895 (= e!4012280 call!582280)))

(declare-fun b!6633896 () Bool)

(assert (=> b!6633896 (= e!4012279 e!4012277)))

(assert (=> b!6633896 (= c!1223579 ((_ is Star!16499) lt!2419240))))

(assert (= (and d!2079537 (not res!2718771)) b!6633896))

(assert (= (and b!6633896 c!1223579) b!6633888))

(assert (= (and b!6633896 (not c!1223579)) b!6633893))

(assert (= (and b!6633888 res!2718774) b!6633895))

(assert (= (and b!6633893 c!1223578) b!6633894))

(assert (= (and b!6633893 (not c!1223578)) b!6633889))

(assert (= (and b!6633894 res!2718770) b!6633891))

(assert (= (and b!6633889 (not res!2718772)) b!6633892))

(assert (= (and b!6633892 res!2718773) b!6633890))

(assert (= (or b!6633891 b!6633890) bm!582275))

(assert (= (or b!6633894 b!6633892) bm!582276))

(assert (= (or b!6633895 bm!582276) bm!582277))

(declare-fun m!7402210 () Bool)

(assert (=> bm!582275 m!7402210))

(declare-fun m!7402212 () Bool)

(assert (=> bm!582277 m!7402212))

(declare-fun m!7402214 () Bool)

(assert (=> b!6633888 m!7402214))

(assert (=> d!2079343 d!2079537))

(declare-fun d!2079539 () Bool)

(declare-fun res!2718775 () Bool)

(declare-fun e!4012281 () Bool)

(assert (=> d!2079539 (=> res!2718775 e!4012281)))

(assert (=> d!2079539 (= res!2718775 ((_ is Nil!65672) (t!379460 (exprs!6383 (h!72121 zl!343)))))))

(assert (=> d!2079539 (= (forall!15694 (t!379460 (exprs!6383 (h!72121 zl!343))) lambda!370593) e!4012281)))

(declare-fun b!6633897 () Bool)

(declare-fun e!4012282 () Bool)

(assert (=> b!6633897 (= e!4012281 e!4012282)))

(declare-fun res!2718776 () Bool)

(assert (=> b!6633897 (=> (not res!2718776) (not e!4012282))))

(assert (=> b!6633897 (= res!2718776 (dynLambda!26161 lambda!370593 (h!72120 (t!379460 (exprs!6383 (h!72121 zl!343))))))))

(declare-fun b!6633898 () Bool)

(assert (=> b!6633898 (= e!4012282 (forall!15694 (t!379460 (t!379460 (exprs!6383 (h!72121 zl!343)))) lambda!370593))))

(assert (= (and d!2079539 (not res!2718775)) b!6633897))

(assert (= (and b!6633897 res!2718776) b!6633898))

(declare-fun b_lambda!250773 () Bool)

(assert (=> (not b_lambda!250773) (not b!6633897)))

(declare-fun m!7402216 () Bool)

(assert (=> b!6633897 m!7402216))

(declare-fun m!7402218 () Bool)

(assert (=> b!6633898 m!7402218))

(assert (=> d!2079343 d!2079539))

(assert (=> b!6633218 d!2079391))

(declare-fun b!6633899 () Bool)

(declare-fun e!4012283 () (InoxSet Context!11766))

(declare-fun e!4012284 () (InoxSet Context!11766))

(assert (=> b!6633899 (= e!4012283 e!4012284)))

(declare-fun c!1223580 () Bool)

(assert (=> b!6633899 (= c!1223580 ((_ is Cons!65672) (exprs!6383 (Context!11767 (t!379460 (exprs!6383 (Context!11767 (Cons!65672 (h!72120 (exprs!6383 (h!72121 zl!343))) (t!379460 (exprs!6383 (h!72121 zl!343)))))))))))))

(declare-fun bm!582278 () Bool)

(declare-fun call!582283 () (InoxSet Context!11766))

(assert (=> bm!582278 (= call!582283 (derivationStepZipperDown!1747 (h!72120 (exprs!6383 (Context!11767 (t!379460 (exprs!6383 (Context!11767 (Cons!65672 (h!72120 (exprs!6383 (h!72121 zl!343))) (t!379460 (exprs!6383 (h!72121 zl!343)))))))))) (Context!11767 (t!379460 (exprs!6383 (Context!11767 (t!379460 (exprs!6383 (Context!11767 (Cons!65672 (h!72120 (exprs!6383 (h!72121 zl!343))) (t!379460 (exprs!6383 (h!72121 zl!343))))))))))) (h!72122 s!2326)))))

(declare-fun b!6633900 () Bool)

(assert (=> b!6633900 (= e!4012283 ((_ map or) call!582283 (derivationStepZipperUp!1673 (Context!11767 (t!379460 (exprs!6383 (Context!11767 (t!379460 (exprs!6383 (Context!11767 (Cons!65672 (h!72120 (exprs!6383 (h!72121 zl!343))) (t!379460 (exprs!6383 (h!72121 zl!343))))))))))) (h!72122 s!2326))))))

(declare-fun b!6633901 () Bool)

(declare-fun e!4012285 () Bool)

(assert (=> b!6633901 (= e!4012285 (nullable!6492 (h!72120 (exprs!6383 (Context!11767 (t!379460 (exprs!6383 (Context!11767 (Cons!65672 (h!72120 (exprs!6383 (h!72121 zl!343))) (t!379460 (exprs!6383 (h!72121 zl!343))))))))))))))

(declare-fun b!6633902 () Bool)

(assert (=> b!6633902 (= e!4012284 ((as const (Array Context!11766 Bool)) false))))

(declare-fun b!6633903 () Bool)

(assert (=> b!6633903 (= e!4012284 call!582283)))

(declare-fun d!2079541 () Bool)

(declare-fun c!1223581 () Bool)

(assert (=> d!2079541 (= c!1223581 e!4012285)))

(declare-fun res!2718777 () Bool)

(assert (=> d!2079541 (=> (not res!2718777) (not e!4012285))))

(assert (=> d!2079541 (= res!2718777 ((_ is Cons!65672) (exprs!6383 (Context!11767 (t!379460 (exprs!6383 (Context!11767 (Cons!65672 (h!72120 (exprs!6383 (h!72121 zl!343))) (t!379460 (exprs!6383 (h!72121 zl!343)))))))))))))

(assert (=> d!2079541 (= (derivationStepZipperUp!1673 (Context!11767 (t!379460 (exprs!6383 (Context!11767 (Cons!65672 (h!72120 (exprs!6383 (h!72121 zl!343))) (t!379460 (exprs!6383 (h!72121 zl!343)))))))) (h!72122 s!2326)) e!4012283)))

(assert (= (and d!2079541 res!2718777) b!6633901))

(assert (= (and d!2079541 c!1223581) b!6633900))

(assert (= (and d!2079541 (not c!1223581)) b!6633899))

(assert (= (and b!6633899 c!1223580) b!6633903))

(assert (= (and b!6633899 (not c!1223580)) b!6633902))

(assert (= (or b!6633900 b!6633903) bm!582278))

(declare-fun m!7402220 () Bool)

(assert (=> bm!582278 m!7402220))

(declare-fun m!7402222 () Bool)

(assert (=> b!6633900 m!7402222))

(declare-fun m!7402224 () Bool)

(assert (=> b!6633901 m!7402224))

(assert (=> b!6633411 d!2079541))

(declare-fun d!2079543 () Bool)

(assert (=> d!2079543 (= (isEmpty!37968 (unfocusZipperList!1920 zl!343)) ((_ is Nil!65672) (unfocusZipperList!1920 zl!343)))))

(assert (=> b!6633470 d!2079543))

(declare-fun d!2079545 () Bool)

(assert (=> d!2079545 (= (isEmpty!37969 (t!379462 s!2326)) ((_ is Nil!65674) (t!379462 s!2326)))))

(assert (=> d!2079293 d!2079545))

(declare-fun bs!1704714 () Bool)

(declare-fun d!2079547 () Bool)

(assert (= bs!1704714 (and d!2079547 d!2079403)))

(declare-fun lambda!370651 () Int)

(assert (=> bs!1704714 (= lambda!370651 lambda!370613)))

(declare-fun bs!1704715 () Bool)

(assert (= bs!1704715 (and d!2079547 d!2079389)))

(assert (=> bs!1704715 (= lambda!370651 lambda!370611)))

(declare-fun bs!1704716 () Bool)

(assert (= bs!1704716 (and d!2079547 d!2079411)))

(assert (=> bs!1704716 (= lambda!370651 lambda!370625)))

(declare-fun bs!1704717 () Bool)

(assert (= bs!1704717 (and d!2079547 d!2079327)))

(assert (=> bs!1704717 (= lambda!370651 lambda!370587)))

(declare-fun bs!1704718 () Bool)

(assert (= bs!1704718 (and d!2079547 d!2079343)))

(assert (=> bs!1704718 (= lambda!370651 lambda!370593)))

(declare-fun bs!1704719 () Bool)

(assert (= bs!1704719 (and d!2079547 d!2079405)))

(assert (=> bs!1704719 (= lambda!370651 lambda!370619)))

(declare-fun bs!1704720 () Bool)

(assert (= bs!1704720 (and d!2079547 d!2079509)))

(assert (=> bs!1704720 (= lambda!370651 lambda!370648)))

(assert (=> d!2079547 (= (inv!84494 (h!72121 (t!379461 zl!343))) (forall!15694 (exprs!6383 (h!72121 (t!379461 zl!343))) lambda!370651))))

(declare-fun bs!1704721 () Bool)

(assert (= bs!1704721 d!2079547))

(declare-fun m!7402226 () Bool)

(assert (=> bs!1704721 m!7402226))

(assert (=> b!6633685 d!2079547))

(declare-fun call!582285 () Bool)

(declare-fun bm!582279 () Bool)

(declare-fun c!1223582 () Bool)

(assert (=> bm!582279 (= call!582285 (validRegex!8235 (ite c!1223582 (regTwo!33511 (ite c!1223348 (reg!16828 r!7292) (ite c!1223347 (regOne!33511 r!7292) (regOne!33510 r!7292)))) (regTwo!33510 (ite c!1223348 (reg!16828 r!7292) (ite c!1223347 (regOne!33511 r!7292) (regOne!33510 r!7292)))))))))

(declare-fun d!2079549 () Bool)

(declare-fun res!2718779 () Bool)

(declare-fun e!4012291 () Bool)

(assert (=> d!2079549 (=> res!2718779 e!4012291)))

(assert (=> d!2079549 (= res!2718779 ((_ is ElementMatch!16499) (ite c!1223348 (reg!16828 r!7292) (ite c!1223347 (regOne!33511 r!7292) (regOne!33510 r!7292)))))))

(assert (=> d!2079549 (= (validRegex!8235 (ite c!1223348 (reg!16828 r!7292) (ite c!1223347 (regOne!33511 r!7292) (regOne!33510 r!7292)))) e!4012291)))

(declare-fun bm!582280 () Bool)

(declare-fun call!582286 () Bool)

(declare-fun call!582284 () Bool)

(assert (=> bm!582280 (= call!582286 call!582284)))

(declare-fun c!1223583 () Bool)

(declare-fun bm!582281 () Bool)

(assert (=> bm!582281 (= call!582284 (validRegex!8235 (ite c!1223583 (reg!16828 (ite c!1223348 (reg!16828 r!7292) (ite c!1223347 (regOne!33511 r!7292) (regOne!33510 r!7292)))) (ite c!1223582 (regOne!33511 (ite c!1223348 (reg!16828 r!7292) (ite c!1223347 (regOne!33511 r!7292) (regOne!33510 r!7292)))) (regOne!33510 (ite c!1223348 (reg!16828 r!7292) (ite c!1223347 (regOne!33511 r!7292) (regOne!33510 r!7292))))))))))

(declare-fun b!6633904 () Bool)

(declare-fun e!4012289 () Bool)

(declare-fun e!4012292 () Bool)

(assert (=> b!6633904 (= e!4012289 e!4012292)))

(declare-fun res!2718782 () Bool)

(assert (=> b!6633904 (= res!2718782 (not (nullable!6492 (reg!16828 (ite c!1223348 (reg!16828 r!7292) (ite c!1223347 (regOne!33511 r!7292) (regOne!33510 r!7292)))))))))

(assert (=> b!6633904 (=> (not res!2718782) (not e!4012292))))

(declare-fun b!6633905 () Bool)

(declare-fun res!2718780 () Bool)

(declare-fun e!4012288 () Bool)

(assert (=> b!6633905 (=> res!2718780 e!4012288)))

(assert (=> b!6633905 (= res!2718780 (not ((_ is Concat!25344) (ite c!1223348 (reg!16828 r!7292) (ite c!1223347 (regOne!33511 r!7292) (regOne!33510 r!7292))))))))

(declare-fun e!4012287 () Bool)

(assert (=> b!6633905 (= e!4012287 e!4012288)))

(declare-fun b!6633906 () Bool)

(declare-fun e!4012290 () Bool)

(assert (=> b!6633906 (= e!4012290 call!582285)))

(declare-fun b!6633907 () Bool)

(declare-fun e!4012286 () Bool)

(assert (=> b!6633907 (= e!4012286 call!582285)))

(declare-fun b!6633908 () Bool)

(assert (=> b!6633908 (= e!4012288 e!4012290)))

(declare-fun res!2718781 () Bool)

(assert (=> b!6633908 (=> (not res!2718781) (not e!4012290))))

(assert (=> b!6633908 (= res!2718781 call!582286)))

(declare-fun b!6633909 () Bool)

(assert (=> b!6633909 (= e!4012289 e!4012287)))

(assert (=> b!6633909 (= c!1223582 ((_ is Union!16499) (ite c!1223348 (reg!16828 r!7292) (ite c!1223347 (regOne!33511 r!7292) (regOne!33510 r!7292)))))))

(declare-fun b!6633910 () Bool)

(declare-fun res!2718778 () Bool)

(assert (=> b!6633910 (=> (not res!2718778) (not e!4012286))))

(assert (=> b!6633910 (= res!2718778 call!582286)))

(assert (=> b!6633910 (= e!4012287 e!4012286)))

(declare-fun b!6633911 () Bool)

(assert (=> b!6633911 (= e!4012292 call!582284)))

(declare-fun b!6633912 () Bool)

(assert (=> b!6633912 (= e!4012291 e!4012289)))

(assert (=> b!6633912 (= c!1223583 ((_ is Star!16499) (ite c!1223348 (reg!16828 r!7292) (ite c!1223347 (regOne!33511 r!7292) (regOne!33510 r!7292)))))))

(assert (= (and d!2079549 (not res!2718779)) b!6633912))

(assert (= (and b!6633912 c!1223583) b!6633904))

(assert (= (and b!6633912 (not c!1223583)) b!6633909))

(assert (= (and b!6633904 res!2718782) b!6633911))

(assert (= (and b!6633909 c!1223582) b!6633910))

(assert (= (and b!6633909 (not c!1223582)) b!6633905))

(assert (= (and b!6633910 res!2718778) b!6633907))

(assert (= (and b!6633905 (not res!2718780)) b!6633908))

(assert (= (and b!6633908 res!2718781) b!6633906))

(assert (= (or b!6633907 b!6633906) bm!582279))

(assert (= (or b!6633910 b!6633908) bm!582280))

(assert (= (or b!6633911 bm!582280) bm!582281))

(declare-fun m!7402228 () Bool)

(assert (=> bm!582279 m!7402228))

(declare-fun m!7402230 () Bool)

(assert (=> bm!582281 m!7402230))

(declare-fun m!7402232 () Bool)

(assert (=> b!6633904 m!7402232))

(assert (=> bm!582175 d!2079549))

(declare-fun d!2079551 () Bool)

(assert (=> d!2079551 true))

(assert (=> d!2079551 true))

(declare-fun res!2718785 () Bool)

(assert (=> d!2079551 (= (choose!49554 lambda!370571) res!2718785)))

(assert (=> d!2079435 d!2079551))

(declare-fun bs!1704722 () Bool)

(declare-fun d!2079553 () Bool)

(assert (= bs!1704722 (and d!2079553 d!2079547)))

(declare-fun lambda!370652 () Int)

(assert (=> bs!1704722 (= lambda!370652 lambda!370651)))

(declare-fun bs!1704723 () Bool)

(assert (= bs!1704723 (and d!2079553 d!2079403)))

(assert (=> bs!1704723 (= lambda!370652 lambda!370613)))

(declare-fun bs!1704724 () Bool)

(assert (= bs!1704724 (and d!2079553 d!2079389)))

(assert (=> bs!1704724 (= lambda!370652 lambda!370611)))

(declare-fun bs!1704725 () Bool)

(assert (= bs!1704725 (and d!2079553 d!2079411)))

(assert (=> bs!1704725 (= lambda!370652 lambda!370625)))

(declare-fun bs!1704726 () Bool)

(assert (= bs!1704726 (and d!2079553 d!2079327)))

(assert (=> bs!1704726 (= lambda!370652 lambda!370587)))

(declare-fun bs!1704727 () Bool)

(assert (= bs!1704727 (and d!2079553 d!2079343)))

(assert (=> bs!1704727 (= lambda!370652 lambda!370593)))

(declare-fun bs!1704728 () Bool)

(assert (= bs!1704728 (and d!2079553 d!2079405)))

(assert (=> bs!1704728 (= lambda!370652 lambda!370619)))

(declare-fun bs!1704729 () Bool)

(assert (= bs!1704729 (and d!2079553 d!2079509)))

(assert (=> bs!1704729 (= lambda!370652 lambda!370648)))

(declare-fun b!6633913 () Bool)

(declare-fun e!4012294 () Regex!16499)

(assert (=> b!6633913 (= e!4012294 (h!72120 (t!379460 (unfocusZipperList!1920 zl!343))))))

(declare-fun b!6633914 () Bool)

(declare-fun e!4012295 () Bool)

(declare-fun lt!2419317 () Regex!16499)

(assert (=> b!6633914 (= e!4012295 (= lt!2419317 (head!13440 (t!379460 (unfocusZipperList!1920 zl!343)))))))

(declare-fun b!6633915 () Bool)

(declare-fun e!4012293 () Bool)

(declare-fun e!4012296 () Bool)

(assert (=> b!6633915 (= e!4012293 e!4012296)))

(declare-fun c!1223586 () Bool)

(assert (=> b!6633915 (= c!1223586 (isEmpty!37968 (t!379460 (unfocusZipperList!1920 zl!343))))))

(declare-fun b!6633916 () Bool)

(declare-fun e!4012297 () Regex!16499)

(assert (=> b!6633916 (= e!4012294 e!4012297)))

(declare-fun c!1223584 () Bool)

(assert (=> b!6633916 (= c!1223584 ((_ is Cons!65672) (t!379460 (unfocusZipperList!1920 zl!343))))))

(assert (=> d!2079553 e!4012293))

(declare-fun res!2718786 () Bool)

(assert (=> d!2079553 (=> (not res!2718786) (not e!4012293))))

(assert (=> d!2079553 (= res!2718786 (validRegex!8235 lt!2419317))))

(assert (=> d!2079553 (= lt!2419317 e!4012294)))

(declare-fun c!1223585 () Bool)

(declare-fun e!4012298 () Bool)

(assert (=> d!2079553 (= c!1223585 e!4012298)))

(declare-fun res!2718787 () Bool)

(assert (=> d!2079553 (=> (not res!2718787) (not e!4012298))))

(assert (=> d!2079553 (= res!2718787 ((_ is Cons!65672) (t!379460 (unfocusZipperList!1920 zl!343))))))

(assert (=> d!2079553 (forall!15694 (t!379460 (unfocusZipperList!1920 zl!343)) lambda!370652)))

(assert (=> d!2079553 (= (generalisedUnion!2343 (t!379460 (unfocusZipperList!1920 zl!343))) lt!2419317)))

(declare-fun b!6633917 () Bool)

(assert (=> b!6633917 (= e!4012296 (isEmptyLang!1882 lt!2419317))))

(declare-fun b!6633918 () Bool)

(assert (=> b!6633918 (= e!4012297 (Union!16499 (h!72120 (t!379460 (unfocusZipperList!1920 zl!343))) (generalisedUnion!2343 (t!379460 (t!379460 (unfocusZipperList!1920 zl!343))))))))

(declare-fun b!6633919 () Bool)

(assert (=> b!6633919 (= e!4012295 (isUnion!1312 lt!2419317))))

(declare-fun b!6633920 () Bool)

(assert (=> b!6633920 (= e!4012298 (isEmpty!37968 (t!379460 (t!379460 (unfocusZipperList!1920 zl!343)))))))

(declare-fun b!6633921 () Bool)

(assert (=> b!6633921 (= e!4012296 e!4012295)))

(declare-fun c!1223587 () Bool)

(assert (=> b!6633921 (= c!1223587 (isEmpty!37968 (tail!12525 (t!379460 (unfocusZipperList!1920 zl!343)))))))

(declare-fun b!6633922 () Bool)

(assert (=> b!6633922 (= e!4012297 EmptyLang!16499)))

(assert (= (and d!2079553 res!2718787) b!6633920))

(assert (= (and d!2079553 c!1223585) b!6633913))

(assert (= (and d!2079553 (not c!1223585)) b!6633916))

(assert (= (and b!6633916 c!1223584) b!6633918))

(assert (= (and b!6633916 (not c!1223584)) b!6633922))

(assert (= (and d!2079553 res!2718786) b!6633915))

(assert (= (and b!6633915 c!1223586) b!6633917))

(assert (= (and b!6633915 (not c!1223586)) b!6633921))

(assert (= (and b!6633921 c!1223587) b!6633914))

(assert (= (and b!6633921 (not c!1223587)) b!6633919))

(assert (=> b!6633915 m!7401948))

(declare-fun m!7402234 () Bool)

(assert (=> b!6633921 m!7402234))

(assert (=> b!6633921 m!7402234))

(declare-fun m!7402236 () Bool)

(assert (=> b!6633921 m!7402236))

(declare-fun m!7402238 () Bool)

(assert (=> b!6633917 m!7402238))

(declare-fun m!7402240 () Bool)

(assert (=> d!2079553 m!7402240))

(declare-fun m!7402242 () Bool)

(assert (=> d!2079553 m!7402242))

(declare-fun m!7402244 () Bool)

(assert (=> b!6633918 m!7402244))

(declare-fun m!7402246 () Bool)

(assert (=> b!6633914 m!7402246))

(declare-fun m!7402248 () Bool)

(assert (=> b!6633919 m!7402248))

(declare-fun m!7402250 () Bool)

(assert (=> b!6633920 m!7402250))

(assert (=> b!6633473 d!2079553))

(declare-fun d!2079555 () Bool)

(declare-fun res!2718788 () Bool)

(declare-fun e!4012299 () Bool)

(assert (=> d!2079555 (=> res!2718788 e!4012299)))

(assert (=> d!2079555 (= res!2718788 ((_ is Nil!65672) lt!2419280))))

(assert (=> d!2079555 (= (forall!15694 lt!2419280 lambda!370625) e!4012299)))

(declare-fun b!6633923 () Bool)

(declare-fun e!4012300 () Bool)

(assert (=> b!6633923 (= e!4012299 e!4012300)))

(declare-fun res!2718789 () Bool)

(assert (=> b!6633923 (=> (not res!2718789) (not e!4012300))))

(assert (=> b!6633923 (= res!2718789 (dynLambda!26161 lambda!370625 (h!72120 lt!2419280)))))

(declare-fun b!6633924 () Bool)

(assert (=> b!6633924 (= e!4012300 (forall!15694 (t!379460 lt!2419280) lambda!370625))))

(assert (= (and d!2079555 (not res!2718788)) b!6633923))

(assert (= (and b!6633923 res!2718789) b!6633924))

(declare-fun b_lambda!250775 () Bool)

(assert (=> (not b_lambda!250775) (not b!6633923)))

(declare-fun m!7402252 () Bool)

(assert (=> b!6633923 m!7402252))

(declare-fun m!7402254 () Bool)

(assert (=> b!6633924 m!7402254))

(assert (=> d!2079411 d!2079555))

(assert (=> bm!582210 d!2079499))

(declare-fun b!6633925 () Bool)

(declare-fun res!2718797 () Bool)

(declare-fun e!4012307 () Bool)

(assert (=> b!6633925 (=> res!2718797 e!4012307)))

(declare-fun e!4012304 () Bool)

(assert (=> b!6633925 (= res!2718797 e!4012304)))

(declare-fun res!2718795 () Bool)

(assert (=> b!6633925 (=> (not res!2718795) (not e!4012304))))

(declare-fun lt!2419318 () Bool)

(assert (=> b!6633925 (= res!2718795 lt!2419318)))

(declare-fun d!2079557 () Bool)

(declare-fun e!4012305 () Bool)

(assert (=> d!2079557 e!4012305))

(declare-fun c!1223588 () Bool)

(assert (=> d!2079557 (= c!1223588 ((_ is EmptyExpr!16499) (derivativeStep!5178 r!7292 (head!13439 s!2326))))))

(declare-fun e!4012302 () Bool)

(assert (=> d!2079557 (= lt!2419318 e!4012302)))

(declare-fun c!1223589 () Bool)

(assert (=> d!2079557 (= c!1223589 (isEmpty!37969 (tail!12524 s!2326)))))

(assert (=> d!2079557 (validRegex!8235 (derivativeStep!5178 r!7292 (head!13439 s!2326)))))

(assert (=> d!2079557 (= (matchR!8682 (derivativeStep!5178 r!7292 (head!13439 s!2326)) (tail!12524 s!2326)) lt!2419318)))

(declare-fun bm!582282 () Bool)

(declare-fun call!582287 () Bool)

(assert (=> bm!582282 (= call!582287 (isEmpty!37969 (tail!12524 s!2326)))))

(declare-fun b!6633926 () Bool)

(declare-fun e!4012301 () Bool)

(assert (=> b!6633926 (= e!4012305 e!4012301)))

(declare-fun c!1223590 () Bool)

(assert (=> b!6633926 (= c!1223590 ((_ is EmptyLang!16499) (derivativeStep!5178 r!7292 (head!13439 s!2326))))))

(declare-fun b!6633927 () Bool)

(assert (=> b!6633927 (= e!4012301 (not lt!2419318))))

(declare-fun b!6633928 () Bool)

(assert (=> b!6633928 (= e!4012305 (= lt!2419318 call!582287))))

(declare-fun b!6633929 () Bool)

(assert (=> b!6633929 (= e!4012304 (= (head!13439 (tail!12524 s!2326)) (c!1223326 (derivativeStep!5178 r!7292 (head!13439 s!2326)))))))

(declare-fun b!6633930 () Bool)

(declare-fun res!2718793 () Bool)

(declare-fun e!4012303 () Bool)

(assert (=> b!6633930 (=> res!2718793 e!4012303)))

(assert (=> b!6633930 (= res!2718793 (not (isEmpty!37969 (tail!12524 (tail!12524 s!2326)))))))

(declare-fun b!6633931 () Bool)

(assert (=> b!6633931 (= e!4012303 (not (= (head!13439 (tail!12524 s!2326)) (c!1223326 (derivativeStep!5178 r!7292 (head!13439 s!2326))))))))

(declare-fun b!6633932 () Bool)

(assert (=> b!6633932 (= e!4012302 (nullable!6492 (derivativeStep!5178 r!7292 (head!13439 s!2326))))))

(declare-fun b!6633933 () Bool)

(declare-fun res!2718791 () Bool)

(assert (=> b!6633933 (=> (not res!2718791) (not e!4012304))))

(assert (=> b!6633933 (= res!2718791 (not call!582287))))

(declare-fun b!6633934 () Bool)

(declare-fun res!2718796 () Bool)

(assert (=> b!6633934 (=> (not res!2718796) (not e!4012304))))

(assert (=> b!6633934 (= res!2718796 (isEmpty!37969 (tail!12524 (tail!12524 s!2326))))))

(declare-fun b!6633935 () Bool)

(declare-fun e!4012306 () Bool)

(assert (=> b!6633935 (= e!4012307 e!4012306)))

(declare-fun res!2718794 () Bool)

(assert (=> b!6633935 (=> (not res!2718794) (not e!4012306))))

(assert (=> b!6633935 (= res!2718794 (not lt!2419318))))

(declare-fun b!6633936 () Bool)

(declare-fun res!2718790 () Bool)

(assert (=> b!6633936 (=> res!2718790 e!4012307)))

(assert (=> b!6633936 (= res!2718790 (not ((_ is ElementMatch!16499) (derivativeStep!5178 r!7292 (head!13439 s!2326)))))))

(assert (=> b!6633936 (= e!4012301 e!4012307)))

(declare-fun b!6633937 () Bool)

(assert (=> b!6633937 (= e!4012302 (matchR!8682 (derivativeStep!5178 (derivativeStep!5178 r!7292 (head!13439 s!2326)) (head!13439 (tail!12524 s!2326))) (tail!12524 (tail!12524 s!2326))))))

(declare-fun b!6633938 () Bool)

(assert (=> b!6633938 (= e!4012306 e!4012303)))

(declare-fun res!2718792 () Bool)

(assert (=> b!6633938 (=> res!2718792 e!4012303)))

(assert (=> b!6633938 (= res!2718792 call!582287)))

(assert (= (and d!2079557 c!1223589) b!6633932))

(assert (= (and d!2079557 (not c!1223589)) b!6633937))

(assert (= (and d!2079557 c!1223588) b!6633928))

(assert (= (and d!2079557 (not c!1223588)) b!6633926))

(assert (= (and b!6633926 c!1223590) b!6633927))

(assert (= (and b!6633926 (not c!1223590)) b!6633936))

(assert (= (and b!6633936 (not res!2718790)) b!6633925))

(assert (= (and b!6633925 res!2718795) b!6633933))

(assert (= (and b!6633933 res!2718791) b!6633934))

(assert (= (and b!6633934 res!2718796) b!6633929))

(assert (= (and b!6633925 (not res!2718797)) b!6633935))

(assert (= (and b!6633935 res!2718794) b!6633938))

(assert (= (and b!6633938 (not res!2718792)) b!6633930))

(assert (= (and b!6633930 (not res!2718793)) b!6633931))

(assert (= (or b!6633928 b!6633933 b!6633938) bm!582282))

(assert (=> b!6633937 m!7401676))

(declare-fun m!7402256 () Bool)

(assert (=> b!6633937 m!7402256))

(assert (=> b!6633937 m!7401674))

(assert (=> b!6633937 m!7402256))

(declare-fun m!7402258 () Bool)

(assert (=> b!6633937 m!7402258))

(assert (=> b!6633937 m!7401676))

(declare-fun m!7402260 () Bool)

(assert (=> b!6633937 m!7402260))

(assert (=> b!6633937 m!7402258))

(assert (=> b!6633937 m!7402260))

(declare-fun m!7402262 () Bool)

(assert (=> b!6633937 m!7402262))

(assert (=> d!2079557 m!7401676))

(assert (=> d!2079557 m!7401680))

(assert (=> d!2079557 m!7401674))

(declare-fun m!7402264 () Bool)

(assert (=> d!2079557 m!7402264))

(assert (=> b!6633929 m!7401676))

(assert (=> b!6633929 m!7402256))

(assert (=> b!6633931 m!7401676))

(assert (=> b!6633931 m!7402256))

(assert (=> bm!582282 m!7401676))

(assert (=> bm!582282 m!7401680))

(assert (=> b!6633934 m!7401676))

(assert (=> b!6633934 m!7402260))

(assert (=> b!6633934 m!7402260))

(declare-fun m!7402266 () Bool)

(assert (=> b!6633934 m!7402266))

(assert (=> b!6633932 m!7401674))

(declare-fun m!7402268 () Bool)

(assert (=> b!6633932 m!7402268))

(assert (=> b!6633930 m!7401676))

(assert (=> b!6633930 m!7402260))

(assert (=> b!6633930 m!7402260))

(assert (=> b!6633930 m!7402266))

(assert (=> b!6633134 d!2079557))

(declare-fun bm!582291 () Bool)

(declare-fun call!582298 () Regex!16499)

(declare-fun c!1223602 () Bool)

(declare-fun c!1223603 () Bool)

(assert (=> bm!582291 (= call!582298 (derivativeStep!5178 (ite c!1223603 (regOne!33511 r!7292) (ite c!1223602 (regTwo!33510 r!7292) (regOne!33510 r!7292))) (head!13439 s!2326)))))

(declare-fun b!6633959 () Bool)

(declare-fun e!4012318 () Regex!16499)

(assert (=> b!6633959 (= e!4012318 (ite (= (head!13439 s!2326) (c!1223326 r!7292)) EmptyExpr!16499 EmptyLang!16499))))

(declare-fun b!6633960 () Bool)

(assert (=> b!6633960 (= c!1223602 (nullable!6492 (regOne!33510 r!7292)))))

(declare-fun e!4012320 () Regex!16499)

(declare-fun e!4012319 () Regex!16499)

(assert (=> b!6633960 (= e!4012320 e!4012319)))

(declare-fun b!6633961 () Bool)

(declare-fun e!4012321 () Regex!16499)

(assert (=> b!6633961 (= e!4012321 EmptyLang!16499)))

(declare-fun call!582296 () Regex!16499)

(declare-fun b!6633962 () Bool)

(declare-fun call!582297 () Regex!16499)

(assert (=> b!6633962 (= e!4012319 (Union!16499 (Concat!25344 call!582296 (regTwo!33510 r!7292)) call!582297))))

(declare-fun b!6633963 () Bool)

(declare-fun e!4012322 () Regex!16499)

(assert (=> b!6633963 (= e!4012322 e!4012320)))

(declare-fun c!1223601 () Bool)

(assert (=> b!6633963 (= c!1223601 ((_ is Star!16499) r!7292))))

(declare-fun d!2079559 () Bool)

(declare-fun lt!2419321 () Regex!16499)

(assert (=> d!2079559 (validRegex!8235 lt!2419321)))

(assert (=> d!2079559 (= lt!2419321 e!4012321)))

(declare-fun c!1223604 () Bool)

(assert (=> d!2079559 (= c!1223604 (or ((_ is EmptyExpr!16499) r!7292) ((_ is EmptyLang!16499) r!7292)))))

(assert (=> d!2079559 (validRegex!8235 r!7292)))

(assert (=> d!2079559 (= (derivativeStep!5178 r!7292 (head!13439 s!2326)) lt!2419321)))

(declare-fun b!6633964 () Bool)

(assert (=> b!6633964 (= e!4012319 (Union!16499 (Concat!25344 call!582297 (regTwo!33510 r!7292)) EmptyLang!16499))))

(declare-fun b!6633965 () Bool)

(assert (=> b!6633965 (= e!4012320 (Concat!25344 call!582296 r!7292))))

(declare-fun b!6633966 () Bool)

(declare-fun call!582299 () Regex!16499)

(assert (=> b!6633966 (= e!4012322 (Union!16499 call!582298 call!582299))))

(declare-fun bm!582292 () Bool)

(assert (=> bm!582292 (= call!582297 call!582298)))

(declare-fun b!6633967 () Bool)

(assert (=> b!6633967 (= e!4012321 e!4012318)))

(declare-fun c!1223605 () Bool)

(assert (=> b!6633967 (= c!1223605 ((_ is ElementMatch!16499) r!7292))))

(declare-fun bm!582293 () Bool)

(assert (=> bm!582293 (= call!582296 call!582299)))

(declare-fun b!6633968 () Bool)

(assert (=> b!6633968 (= c!1223603 ((_ is Union!16499) r!7292))))

(assert (=> b!6633968 (= e!4012318 e!4012322)))

(declare-fun bm!582294 () Bool)

(assert (=> bm!582294 (= call!582299 (derivativeStep!5178 (ite c!1223603 (regTwo!33511 r!7292) (ite c!1223601 (reg!16828 r!7292) (regOne!33510 r!7292))) (head!13439 s!2326)))))

(assert (= (and d!2079559 c!1223604) b!6633961))

(assert (= (and d!2079559 (not c!1223604)) b!6633967))

(assert (= (and b!6633967 c!1223605) b!6633959))

(assert (= (and b!6633967 (not c!1223605)) b!6633968))

(assert (= (and b!6633968 c!1223603) b!6633966))

(assert (= (and b!6633968 (not c!1223603)) b!6633963))

(assert (= (and b!6633963 c!1223601) b!6633965))

(assert (= (and b!6633963 (not c!1223601)) b!6633960))

(assert (= (and b!6633960 c!1223602) b!6633962))

(assert (= (and b!6633960 (not c!1223602)) b!6633964))

(assert (= (or b!6633962 b!6633964) bm!582292))

(assert (= (or b!6633965 b!6633962) bm!582293))

(assert (= (or b!6633966 bm!582293) bm!582294))

(assert (= (or b!6633966 bm!582292) bm!582291))

(assert (=> bm!582291 m!7401672))

(declare-fun m!7402270 () Bool)

(assert (=> bm!582291 m!7402270))

(assert (=> b!6633960 m!7401790))

(declare-fun m!7402272 () Bool)

(assert (=> d!2079559 m!7402272))

(assert (=> d!2079559 m!7401576))

(assert (=> bm!582294 m!7401672))

(declare-fun m!7402274 () Bool)

(assert (=> bm!582294 m!7402274))

(assert (=> b!6633134 d!2079559))

(assert (=> b!6633134 d!2079513))

(assert (=> b!6633134 d!2079495))

(declare-fun d!2079561 () Bool)

(declare-fun c!1223606 () Bool)

(assert (=> d!2079561 (= c!1223606 (isEmpty!37969 (tail!12524 (t!379462 s!2326))))))

(declare-fun e!4012323 () Bool)

(assert (=> d!2079561 (= (matchZipper!2511 (derivationStepZipper!2465 ((_ map or) lt!2419195 lt!2419198) (head!13439 (t!379462 s!2326))) (tail!12524 (t!379462 s!2326))) e!4012323)))

(declare-fun b!6633969 () Bool)

(assert (=> b!6633969 (= e!4012323 (nullableZipper!2239 (derivationStepZipper!2465 ((_ map or) lt!2419195 lt!2419198) (head!13439 (t!379462 s!2326)))))))

(declare-fun b!6633970 () Bool)

(assert (=> b!6633970 (= e!4012323 (matchZipper!2511 (derivationStepZipper!2465 (derivationStepZipper!2465 ((_ map or) lt!2419195 lt!2419198) (head!13439 (t!379462 s!2326))) (head!13439 (tail!12524 (t!379462 s!2326)))) (tail!12524 (tail!12524 (t!379462 s!2326)))))))

(assert (= (and d!2079561 c!1223606) b!6633969))

(assert (= (and d!2079561 (not c!1223606)) b!6633970))

(assert (=> d!2079561 m!7401604))

(declare-fun m!7402276 () Bool)

(assert (=> d!2079561 m!7402276))

(assert (=> b!6633969 m!7401610))

(declare-fun m!7402278 () Bool)

(assert (=> b!6633969 m!7402278))

(assert (=> b!6633970 m!7401604))

(declare-fun m!7402280 () Bool)

(assert (=> b!6633970 m!7402280))

(assert (=> b!6633970 m!7401610))

(assert (=> b!6633970 m!7402280))

(declare-fun m!7402282 () Bool)

(assert (=> b!6633970 m!7402282))

(assert (=> b!6633970 m!7401604))

(declare-fun m!7402284 () Bool)

(assert (=> b!6633970 m!7402284))

(assert (=> b!6633970 m!7402282))

(assert (=> b!6633970 m!7402284))

(declare-fun m!7402286 () Bool)

(assert (=> b!6633970 m!7402286))

(assert (=> b!6632951 d!2079561))

(declare-fun bs!1704730 () Bool)

(declare-fun d!2079563 () Bool)

(assert (= bs!1704730 (and d!2079563 b!6632928)))

(declare-fun lambda!370653 () Int)

(assert (=> bs!1704730 (= (= (head!13439 (t!379462 s!2326)) (h!72122 s!2326)) (= lambda!370653 lambda!370573))))

(declare-fun bs!1704731 () Bool)

(assert (= bs!1704731 (and d!2079563 d!2079297)))

(assert (=> bs!1704731 (= (= (head!13439 (t!379462 s!2326)) (h!72122 s!2326)) (= lambda!370653 lambda!370576))))

(declare-fun bs!1704732 () Bool)

(assert (= bs!1704732 (and d!2079563 d!2079393)))

(assert (=> bs!1704732 (= (= (head!13439 (t!379462 s!2326)) (h!72122 s!2326)) (= lambda!370653 lambda!370612))))

(assert (=> d!2079563 true))

(assert (=> d!2079563 (= (derivationStepZipper!2465 ((_ map or) lt!2419195 lt!2419198) (head!13439 (t!379462 s!2326))) (flatMap!2004 ((_ map or) lt!2419195 lt!2419198) lambda!370653))))

(declare-fun bs!1704733 () Bool)

(assert (= bs!1704733 d!2079563))

(declare-fun m!7402288 () Bool)

(assert (=> bs!1704733 m!7402288))

(assert (=> b!6632951 d!2079563))

(declare-fun d!2079565 () Bool)

(assert (=> d!2079565 (= (head!13439 (t!379462 s!2326)) (h!72122 (t!379462 s!2326)))))

(assert (=> b!6632951 d!2079565))

(declare-fun d!2079567 () Bool)

(assert (=> d!2079567 (= (tail!12524 (t!379462 s!2326)) (t!379462 (t!379462 s!2326)))))

(assert (=> b!6632951 d!2079567))

(declare-fun bs!1704734 () Bool)

(declare-fun b!6633972 () Bool)

(assert (= bs!1704734 (and b!6633972 d!2079443)))

(declare-fun lambda!370654 () Int)

(assert (=> bs!1704734 (not (= lambda!370654 lambda!370642))))

(declare-fun bs!1704735 () Bool)

(assert (= bs!1704735 (and b!6633972 b!6633257)))

(assert (=> bs!1704735 (not (= lambda!370654 lambda!370601))))

(declare-fun bs!1704736 () Bool)

(assert (= bs!1704736 (and b!6633972 b!6633228)))

(assert (=> bs!1704736 (not (= lambda!370654 lambda!370597))))

(declare-fun bs!1704737 () Bool)

(assert (= bs!1704737 (and b!6633972 b!6633059)))

(assert (=> bs!1704737 (= (and (= (reg!16828 (regOne!33511 r!7292)) (reg!16828 r!7292)) (= (regOne!33511 r!7292) r!7292)) (= lambda!370654 lambda!370581))))

(declare-fun bs!1704738 () Bool)

(assert (= bs!1704738 (and b!6633972 b!6633250)))

(assert (=> bs!1704738 (= (and (= (reg!16828 (regOne!33511 r!7292)) (reg!16828 (regTwo!33510 r!7292))) (= (regOne!33511 r!7292) (regTwo!33510 r!7292))) (= lambda!370654 lambda!370600))))

(declare-fun bs!1704739 () Bool)

(assert (= bs!1704739 (and b!6633972 d!2079437)))

(assert (=> bs!1704739 (not (= lambda!370654 lambda!370636))))

(declare-fun bs!1704740 () Bool)

(assert (= bs!1704740 (and b!6633972 b!6633065)))

(assert (=> bs!1704740 (not (= lambda!370654 lambda!370582))))

(declare-fun bs!1704741 () Bool)

(assert (= bs!1704741 (and b!6633972 b!6632927)))

(assert (=> bs!1704741 (not (= lambda!370654 lambda!370572))))

(declare-fun bs!1704742 () Bool)

(assert (= bs!1704742 (and b!6633972 b!6633853)))

(assert (=> bs!1704742 (not (= lambda!370654 lambda!370650))))

(assert (=> bs!1704739 (not (= lambda!370654 lambda!370637))))

(declare-fun bs!1704743 () Bool)

(assert (= bs!1704743 (and b!6633972 b!6633847)))

(assert (=> bs!1704743 (= (and (= (reg!16828 (regOne!33511 r!7292)) (reg!16828 (regTwo!33511 (regOne!33510 r!7292)))) (= (regOne!33511 r!7292) (regTwo!33511 (regOne!33510 r!7292)))) (= lambda!370654 lambda!370649))))

(assert (=> bs!1704741 (not (= lambda!370654 lambda!370571))))

(declare-fun bs!1704744 () Bool)

(assert (= bs!1704744 (and b!6633972 b!6633222)))

(assert (=> bs!1704744 (= (and (= (reg!16828 (regOne!33511 r!7292)) (reg!16828 (regOne!33510 r!7292))) (= (regOne!33511 r!7292) (regOne!33510 r!7292))) (= lambda!370654 lambda!370596))))

(assert (=> b!6633972 true))

(assert (=> b!6633972 true))

(declare-fun bs!1704745 () Bool)

(declare-fun b!6633978 () Bool)

(assert (= bs!1704745 (and b!6633978 d!2079443)))

(declare-fun lambda!370655 () Int)

(assert (=> bs!1704745 (not (= lambda!370655 lambda!370642))))

(declare-fun bs!1704746 () Bool)

(assert (= bs!1704746 (and b!6633978 b!6633257)))

(assert (=> bs!1704746 (= (and (= (regOne!33510 (regOne!33511 r!7292)) (regOne!33510 (regTwo!33510 r!7292))) (= (regTwo!33510 (regOne!33511 r!7292)) (regTwo!33510 (regTwo!33510 r!7292)))) (= lambda!370655 lambda!370601))))

(declare-fun bs!1704747 () Bool)

(assert (= bs!1704747 (and b!6633978 b!6633228)))

(assert (=> bs!1704747 (= (and (= (regOne!33510 (regOne!33511 r!7292)) (regOne!33510 (regOne!33510 r!7292))) (= (regTwo!33510 (regOne!33511 r!7292)) (regTwo!33510 (regOne!33510 r!7292)))) (= lambda!370655 lambda!370597))))

(declare-fun bs!1704748 () Bool)

(assert (= bs!1704748 (and b!6633978 b!6633059)))

(assert (=> bs!1704748 (not (= lambda!370655 lambda!370581))))

(declare-fun bs!1704749 () Bool)

(assert (= bs!1704749 (and b!6633978 b!6633250)))

(assert (=> bs!1704749 (not (= lambda!370655 lambda!370600))))

(declare-fun bs!1704750 () Bool)

(assert (= bs!1704750 (and b!6633978 b!6633972)))

(assert (=> bs!1704750 (not (= lambda!370655 lambda!370654))))

(declare-fun bs!1704751 () Bool)

(assert (= bs!1704751 (and b!6633978 d!2079437)))

(assert (=> bs!1704751 (not (= lambda!370655 lambda!370636))))

(declare-fun bs!1704752 () Bool)

(assert (= bs!1704752 (and b!6633978 b!6633065)))

(assert (=> bs!1704752 (= (and (= (regOne!33510 (regOne!33511 r!7292)) (regOne!33510 r!7292)) (= (regTwo!33510 (regOne!33511 r!7292)) (regTwo!33510 r!7292))) (= lambda!370655 lambda!370582))))

(declare-fun bs!1704753 () Bool)

(assert (= bs!1704753 (and b!6633978 b!6632927)))

(assert (=> bs!1704753 (= (and (= (regOne!33510 (regOne!33511 r!7292)) (regOne!33510 r!7292)) (= (regTwo!33510 (regOne!33511 r!7292)) (regTwo!33510 r!7292))) (= lambda!370655 lambda!370572))))

(declare-fun bs!1704754 () Bool)

(assert (= bs!1704754 (and b!6633978 b!6633853)))

(assert (=> bs!1704754 (= (and (= (regOne!33510 (regOne!33511 r!7292)) (regOne!33510 (regTwo!33511 (regOne!33510 r!7292)))) (= (regTwo!33510 (regOne!33511 r!7292)) (regTwo!33510 (regTwo!33511 (regOne!33510 r!7292))))) (= lambda!370655 lambda!370650))))

(assert (=> bs!1704751 (= (and (= (regOne!33510 (regOne!33511 r!7292)) (regOne!33510 r!7292)) (= (regTwo!33510 (regOne!33511 r!7292)) (regTwo!33510 r!7292))) (= lambda!370655 lambda!370637))))

(declare-fun bs!1704755 () Bool)

(assert (= bs!1704755 (and b!6633978 b!6633847)))

(assert (=> bs!1704755 (not (= lambda!370655 lambda!370649))))

(assert (=> bs!1704753 (not (= lambda!370655 lambda!370571))))

(declare-fun bs!1704756 () Bool)

(assert (= bs!1704756 (and b!6633978 b!6633222)))

(assert (=> bs!1704756 (not (= lambda!370655 lambda!370596))))

(assert (=> b!6633978 true))

(assert (=> b!6633978 true))

(declare-fun b!6633971 () Bool)

(declare-fun c!1223610 () Bool)

(assert (=> b!6633971 (= c!1223610 ((_ is Union!16499) (regOne!33511 r!7292)))))

(declare-fun e!4012328 () Bool)

(declare-fun e!4012325 () Bool)

(assert (=> b!6633971 (= e!4012328 e!4012325)))

(declare-fun bm!582295 () Bool)

(declare-fun call!582300 () Bool)

(assert (=> bm!582295 (= call!582300 (isEmpty!37969 s!2326))))

(declare-fun e!4012324 () Bool)

(declare-fun call!582301 () Bool)

(assert (=> b!6633972 (= e!4012324 call!582301)))

(declare-fun b!6633973 () Bool)

(assert (=> b!6633973 (= e!4012328 (= s!2326 (Cons!65674 (c!1223326 (regOne!33511 r!7292)) Nil!65674)))))

(declare-fun b!6633974 () Bool)

(declare-fun e!4012327 () Bool)

(assert (=> b!6633974 (= e!4012325 e!4012327)))

(declare-fun res!2718800 () Bool)

(assert (=> b!6633974 (= res!2718800 (matchRSpec!3600 (regOne!33511 (regOne!33511 r!7292)) s!2326))))

(assert (=> b!6633974 (=> res!2718800 e!4012327)))

(declare-fun b!6633975 () Bool)

(declare-fun e!4012330 () Bool)

(declare-fun e!4012326 () Bool)

(assert (=> b!6633975 (= e!4012330 e!4012326)))

(declare-fun res!2718799 () Bool)

(assert (=> b!6633975 (= res!2718799 (not ((_ is EmptyLang!16499) (regOne!33511 r!7292))))))

(assert (=> b!6633975 (=> (not res!2718799) (not e!4012326))))

(declare-fun bm!582296 () Bool)

(declare-fun c!1223608 () Bool)

(assert (=> bm!582296 (= call!582301 (Exists!3569 (ite c!1223608 lambda!370654 lambda!370655)))))

(declare-fun b!6633976 () Bool)

(declare-fun e!4012329 () Bool)

(assert (=> b!6633976 (= e!4012325 e!4012329)))

(assert (=> b!6633976 (= c!1223608 ((_ is Star!16499) (regOne!33511 r!7292)))))

(declare-fun d!2079569 () Bool)

(declare-fun c!1223607 () Bool)

(assert (=> d!2079569 (= c!1223607 ((_ is EmptyExpr!16499) (regOne!33511 r!7292)))))

(assert (=> d!2079569 (= (matchRSpec!3600 (regOne!33511 r!7292) s!2326) e!4012330)))

(declare-fun b!6633977 () Bool)

(declare-fun c!1223609 () Bool)

(assert (=> b!6633977 (= c!1223609 ((_ is ElementMatch!16499) (regOne!33511 r!7292)))))

(assert (=> b!6633977 (= e!4012326 e!4012328)))

(assert (=> b!6633978 (= e!4012329 call!582301)))

(declare-fun b!6633979 () Bool)

(declare-fun res!2718798 () Bool)

(assert (=> b!6633979 (=> res!2718798 e!4012324)))

(assert (=> b!6633979 (= res!2718798 call!582300)))

(assert (=> b!6633979 (= e!4012329 e!4012324)))

(declare-fun b!6633980 () Bool)

(assert (=> b!6633980 (= e!4012327 (matchRSpec!3600 (regTwo!33511 (regOne!33511 r!7292)) s!2326))))

(declare-fun b!6633981 () Bool)

(assert (=> b!6633981 (= e!4012330 call!582300)))

(assert (= (and d!2079569 c!1223607) b!6633981))

(assert (= (and d!2079569 (not c!1223607)) b!6633975))

(assert (= (and b!6633975 res!2718799) b!6633977))

(assert (= (and b!6633977 c!1223609) b!6633973))

(assert (= (and b!6633977 (not c!1223609)) b!6633971))

(assert (= (and b!6633971 c!1223610) b!6633974))

(assert (= (and b!6633971 (not c!1223610)) b!6633976))

(assert (= (and b!6633974 (not res!2718800)) b!6633980))

(assert (= (and b!6633976 c!1223608) b!6633979))

(assert (= (and b!6633976 (not c!1223608)) b!6633978))

(assert (= (and b!6633979 (not res!2718798)) b!6633972))

(assert (= (or b!6633972 b!6633978) bm!582296))

(assert (= (or b!6633981 b!6633979) bm!582295))

(assert (=> bm!582295 m!7401664))

(declare-fun m!7402290 () Bool)

(assert (=> b!6633974 m!7402290))

(declare-fun m!7402292 () Bool)

(assert (=> bm!582296 m!7402292))

(declare-fun m!7402294 () Bool)

(assert (=> b!6633980 m!7402294))

(assert (=> b!6633061 d!2079569))

(assert (=> b!6633237 d!2079493))

(assert (=> b!6633237 d!2079495))

(assert (=> d!2079341 d!2079337))

(assert (=> d!2079341 d!2079339))

(declare-fun d!2079571 () Bool)

(assert (=> d!2079571 (= (matchR!8682 lt!2419180 s!2326) (matchZipper!2511 lt!2419202 s!2326))))

(assert (=> d!2079571 true))

(declare-fun _$44!1701 () Unit!159351)

(assert (=> d!2079571 (= (choose!49545 lt!2419202 (Cons!65673 lt!2419182 Nil!65673) lt!2419180 s!2326) _$44!1701)))

(declare-fun bs!1704757 () Bool)

(assert (= bs!1704757 d!2079571))

(assert (=> bs!1704757 m!7401506))

(assert (=> bs!1704757 m!7401508))

(assert (=> d!2079341 d!2079571))

(assert (=> d!2079341 d!2079523))

(declare-fun d!2079573 () Bool)

(assert (=> d!2079573 (= (flatMap!2004 z!1189 lambda!370576) (choose!49550 z!1189 lambda!370576))))

(declare-fun bs!1704758 () Bool)

(assert (= bs!1704758 d!2079573))

(declare-fun m!7402296 () Bool)

(assert (=> bs!1704758 m!7402296))

(assert (=> d!2079297 d!2079573))

(declare-fun bm!582297 () Bool)

(declare-fun call!582303 () Bool)

(declare-fun c!1223611 () Bool)

(assert (=> bm!582297 (= call!582303 (validRegex!8235 (ite c!1223611 (regTwo!33511 lt!2419228) (regTwo!33510 lt!2419228))))))

(declare-fun d!2079575 () Bool)

(declare-fun res!2718802 () Bool)

(declare-fun e!4012336 () Bool)

(assert (=> d!2079575 (=> res!2718802 e!4012336)))

(assert (=> d!2079575 (= res!2718802 ((_ is ElementMatch!16499) lt!2419228))))

(assert (=> d!2079575 (= (validRegex!8235 lt!2419228) e!4012336)))

(declare-fun bm!582298 () Bool)

(declare-fun call!582304 () Bool)

(declare-fun call!582302 () Bool)

(assert (=> bm!582298 (= call!582304 call!582302)))

(declare-fun bm!582299 () Bool)

(declare-fun c!1223612 () Bool)

(assert (=> bm!582299 (= call!582302 (validRegex!8235 (ite c!1223612 (reg!16828 lt!2419228) (ite c!1223611 (regOne!33511 lt!2419228) (regOne!33510 lt!2419228)))))))

(declare-fun b!6633982 () Bool)

(declare-fun e!4012334 () Bool)

(declare-fun e!4012337 () Bool)

(assert (=> b!6633982 (= e!4012334 e!4012337)))

(declare-fun res!2718805 () Bool)

(assert (=> b!6633982 (= res!2718805 (not (nullable!6492 (reg!16828 lt!2419228))))))

(assert (=> b!6633982 (=> (not res!2718805) (not e!4012337))))

(declare-fun b!6633983 () Bool)

(declare-fun res!2718803 () Bool)

(declare-fun e!4012333 () Bool)

(assert (=> b!6633983 (=> res!2718803 e!4012333)))

(assert (=> b!6633983 (= res!2718803 (not ((_ is Concat!25344) lt!2419228)))))

(declare-fun e!4012332 () Bool)

(assert (=> b!6633983 (= e!4012332 e!4012333)))

(declare-fun b!6633984 () Bool)

(declare-fun e!4012335 () Bool)

(assert (=> b!6633984 (= e!4012335 call!582303)))

(declare-fun b!6633985 () Bool)

(declare-fun e!4012331 () Bool)

(assert (=> b!6633985 (= e!4012331 call!582303)))

(declare-fun b!6633986 () Bool)

(assert (=> b!6633986 (= e!4012333 e!4012335)))

(declare-fun res!2718804 () Bool)

(assert (=> b!6633986 (=> (not res!2718804) (not e!4012335))))

(assert (=> b!6633986 (= res!2718804 call!582304)))

(declare-fun b!6633987 () Bool)

(assert (=> b!6633987 (= e!4012334 e!4012332)))

(assert (=> b!6633987 (= c!1223611 ((_ is Union!16499) lt!2419228))))

(declare-fun b!6633988 () Bool)

(declare-fun res!2718801 () Bool)

(assert (=> b!6633988 (=> (not res!2718801) (not e!4012331))))

(assert (=> b!6633988 (= res!2718801 call!582304)))

(assert (=> b!6633988 (= e!4012332 e!4012331)))

(declare-fun b!6633989 () Bool)

(assert (=> b!6633989 (= e!4012337 call!582302)))

(declare-fun b!6633990 () Bool)

(assert (=> b!6633990 (= e!4012336 e!4012334)))

(assert (=> b!6633990 (= c!1223612 ((_ is Star!16499) lt!2419228))))

(assert (= (and d!2079575 (not res!2718802)) b!6633990))

(assert (= (and b!6633990 c!1223612) b!6633982))

(assert (= (and b!6633990 (not c!1223612)) b!6633987))

(assert (= (and b!6633982 res!2718805) b!6633989))

(assert (= (and b!6633987 c!1223611) b!6633988))

(assert (= (and b!6633987 (not c!1223611)) b!6633983))

(assert (= (and b!6633988 res!2718801) b!6633985))

(assert (= (and b!6633983 (not res!2718803)) b!6633986))

(assert (= (and b!6633986 res!2718804) b!6633984))

(assert (= (or b!6633985 b!6633984) bm!582297))

(assert (= (or b!6633988 b!6633986) bm!582298))

(assert (= (or b!6633989 bm!582298) bm!582299))

(declare-fun m!7402298 () Bool)

(assert (=> bm!582297 m!7402298))

(declare-fun m!7402300 () Bool)

(assert (=> bm!582299 m!7402300))

(declare-fun m!7402302 () Bool)

(assert (=> b!6633982 m!7402302))

(assert (=> d!2079327 d!2079575))

(declare-fun d!2079577 () Bool)

(declare-fun res!2718806 () Bool)

(declare-fun e!4012338 () Bool)

(assert (=> d!2079577 (=> res!2718806 e!4012338)))

(assert (=> d!2079577 (= res!2718806 ((_ is Nil!65672) (exprs!6383 (h!72121 zl!343))))))

(assert (=> d!2079577 (= (forall!15694 (exprs!6383 (h!72121 zl!343)) lambda!370587) e!4012338)))

(declare-fun b!6633991 () Bool)

(declare-fun e!4012339 () Bool)

(assert (=> b!6633991 (= e!4012338 e!4012339)))

(declare-fun res!2718807 () Bool)

(assert (=> b!6633991 (=> (not res!2718807) (not e!4012339))))

(assert (=> b!6633991 (= res!2718807 (dynLambda!26161 lambda!370587 (h!72120 (exprs!6383 (h!72121 zl!343)))))))

(declare-fun b!6633992 () Bool)

(assert (=> b!6633992 (= e!4012339 (forall!15694 (t!379460 (exprs!6383 (h!72121 zl!343))) lambda!370587))))

(assert (= (and d!2079577 (not res!2718806)) b!6633991))

(assert (= (and b!6633991 res!2718807) b!6633992))

(declare-fun b_lambda!250777 () Bool)

(assert (=> (not b_lambda!250777) (not b!6633991)))

(declare-fun m!7402304 () Bool)

(assert (=> b!6633991 m!7402304))

(declare-fun m!7402306 () Bool)

(assert (=> b!6633992 m!7402306))

(assert (=> d!2079327 d!2079577))

(assert (=> d!2079323 d!2079499))

(assert (=> d!2079323 d!2079301))

(declare-fun bm!582300 () Bool)

(declare-fun call!582306 () List!65796)

(declare-fun call!582307 () List!65796)

(assert (=> bm!582300 (= call!582306 call!582307)))

(declare-fun b!6633993 () Bool)

(declare-fun e!4012343 () (InoxSet Context!11766))

(declare-fun call!582305 () (InoxSet Context!11766))

(assert (=> b!6633993 (= e!4012343 call!582305)))

(declare-fun bm!582301 () Bool)

(declare-fun call!582309 () (InoxSet Context!11766))

(declare-fun call!582310 () (InoxSet Context!11766))

(assert (=> bm!582301 (= call!582309 call!582310)))

(declare-fun b!6633994 () Bool)

(declare-fun e!4012342 () (InoxSet Context!11766))

(declare-fun e!4012340 () (InoxSet Context!11766))

(assert (=> b!6633994 (= e!4012342 e!4012340)))

(declare-fun c!1223616 () Bool)

(assert (=> b!6633994 (= c!1223616 ((_ is Union!16499) (h!72120 (exprs!6383 (h!72121 zl!343)))))))

(declare-fun d!2079579 () Bool)

(declare-fun c!1223615 () Bool)

(assert (=> d!2079579 (= c!1223615 (and ((_ is ElementMatch!16499) (h!72120 (exprs!6383 (h!72121 zl!343)))) (= (c!1223326 (h!72120 (exprs!6383 (h!72121 zl!343)))) (h!72122 s!2326))))))

(assert (=> d!2079579 (= (derivationStepZipperDown!1747 (h!72120 (exprs!6383 (h!72121 zl!343))) (Context!11767 (t!379460 (exprs!6383 (h!72121 zl!343)))) (h!72122 s!2326)) e!4012342)))

(declare-fun b!6633995 () Bool)

(assert (=> b!6633995 (= e!4012342 (store ((as const (Array Context!11766 Bool)) false) (Context!11767 (t!379460 (exprs!6383 (h!72121 zl!343)))) true))))

(declare-fun b!6633996 () Bool)

(declare-fun c!1223614 () Bool)

(declare-fun e!4012344 () Bool)

(assert (=> b!6633996 (= c!1223614 e!4012344)))

(declare-fun res!2718808 () Bool)

(assert (=> b!6633996 (=> (not res!2718808) (not e!4012344))))

(assert (=> b!6633996 (= res!2718808 ((_ is Concat!25344) (h!72120 (exprs!6383 (h!72121 zl!343)))))))

(declare-fun e!4012341 () (InoxSet Context!11766))

(assert (=> b!6633996 (= e!4012340 e!4012341)))

(declare-fun b!6633997 () Bool)

(assert (=> b!6633997 (= e!4012341 e!4012343)))

(declare-fun c!1223613 () Bool)

(assert (=> b!6633997 (= c!1223613 ((_ is Concat!25344) (h!72120 (exprs!6383 (h!72121 zl!343)))))))

(declare-fun b!6633998 () Bool)

(declare-fun call!582308 () (InoxSet Context!11766))

(assert (=> b!6633998 (= e!4012340 ((_ map or) call!582308 call!582310))))

(declare-fun b!6633999 () Bool)

(assert (=> b!6633999 (= e!4012344 (nullable!6492 (regOne!33510 (h!72120 (exprs!6383 (h!72121 zl!343))))))))

(declare-fun bm!582302 () Bool)

(assert (=> bm!582302 (= call!582308 (derivationStepZipperDown!1747 (ite c!1223616 (regOne!33511 (h!72120 (exprs!6383 (h!72121 zl!343)))) (regOne!33510 (h!72120 (exprs!6383 (h!72121 zl!343))))) (ite c!1223616 (Context!11767 (t!379460 (exprs!6383 (h!72121 zl!343)))) (Context!11767 call!582307)) (h!72122 s!2326)))))

(declare-fun b!6634000 () Bool)

(declare-fun e!4012345 () (InoxSet Context!11766))

(assert (=> b!6634000 (= e!4012345 ((as const (Array Context!11766 Bool)) false))))

(declare-fun bm!582303 () Bool)

(assert (=> bm!582303 (= call!582307 ($colon$colon!2336 (exprs!6383 (Context!11767 (t!379460 (exprs!6383 (h!72121 zl!343))))) (ite (or c!1223614 c!1223613) (regTwo!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))) (h!72120 (exprs!6383 (h!72121 zl!343))))))))

(declare-fun b!6634001 () Bool)

(assert (=> b!6634001 (= e!4012345 call!582305)))

(declare-fun bm!582304 () Bool)

(assert (=> bm!582304 (= call!582310 (derivationStepZipperDown!1747 (ite c!1223616 (regTwo!33511 (h!72120 (exprs!6383 (h!72121 zl!343)))) (ite c!1223614 (regTwo!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))) (ite c!1223613 (regOne!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))) (reg!16828 (h!72120 (exprs!6383 (h!72121 zl!343))))))) (ite (or c!1223616 c!1223614) (Context!11767 (t!379460 (exprs!6383 (h!72121 zl!343)))) (Context!11767 call!582306)) (h!72122 s!2326)))))

(declare-fun b!6634002 () Bool)

(declare-fun c!1223617 () Bool)

(assert (=> b!6634002 (= c!1223617 ((_ is Star!16499) (h!72120 (exprs!6383 (h!72121 zl!343)))))))

(assert (=> b!6634002 (= e!4012343 e!4012345)))

(declare-fun b!6634003 () Bool)

(assert (=> b!6634003 (= e!4012341 ((_ map or) call!582308 call!582309))))

(declare-fun bm!582305 () Bool)

(assert (=> bm!582305 (= call!582305 call!582309)))

(assert (= (and d!2079579 c!1223615) b!6633995))

(assert (= (and d!2079579 (not c!1223615)) b!6633994))

(assert (= (and b!6633994 c!1223616) b!6633998))

(assert (= (and b!6633994 (not c!1223616)) b!6633996))

(assert (= (and b!6633996 res!2718808) b!6633999))

(assert (= (and b!6633996 c!1223614) b!6634003))

(assert (= (and b!6633996 (not c!1223614)) b!6633997))

(assert (= (and b!6633997 c!1223613) b!6633993))

(assert (= (and b!6633997 (not c!1223613)) b!6634002))

(assert (= (and b!6634002 c!1223617) b!6634001))

(assert (= (and b!6634002 (not c!1223617)) b!6634000))

(assert (= (or b!6633993 b!6634001) bm!582300))

(assert (= (or b!6633993 b!6634001) bm!582305))

(assert (= (or b!6634003 bm!582300) bm!582303))

(assert (= (or b!6634003 bm!582305) bm!582301))

(assert (= (or b!6633998 bm!582301) bm!582304))

(assert (= (or b!6633998 b!6634003) bm!582302))

(declare-fun m!7402308 () Bool)

(assert (=> bm!582302 m!7402308))

(assert (=> b!6633999 m!7401872))

(declare-fun m!7402310 () Bool)

(assert (=> bm!582303 m!7402310))

(declare-fun m!7402312 () Bool)

(assert (=> b!6633995 m!7402312))

(declare-fun m!7402314 () Bool)

(assert (=> bm!582304 m!7402314))

(assert (=> bm!582214 d!2079579))

(assert (=> d!2079453 d!2079499))

(assert (=> d!2079303 d!2079545))

(assert (=> b!6633291 d!2079513))

(declare-fun d!2079581 () Bool)

(assert (=> d!2079581 (= (isConcat!1395 lt!2419228) ((_ is Concat!25344) lt!2419228))))

(assert (=> b!6633179 d!2079581))

(assert (=> bm!582205 d!2079499))

(assert (=> d!2079363 d!2079359))

(assert (=> d!2079363 d!2079357))

(declare-fun d!2079583 () Bool)

(assert (=> d!2079583 (= (matchR!8682 (regTwo!33510 r!7292) s!2326) (matchRSpec!3600 (regTwo!33510 r!7292) s!2326))))

(assert (=> d!2079583 true))

(declare-fun _$88!5347 () Unit!159351)

(assert (=> d!2079583 (= (choose!49541 (regTwo!33510 r!7292) s!2326) _$88!5347)))

(declare-fun bs!1704759 () Bool)

(assert (= bs!1704759 d!2079583))

(assert (=> bs!1704759 m!7401554))

(assert (=> bs!1704759 m!7401564))

(assert (=> d!2079363 d!2079583))

(declare-fun bm!582306 () Bool)

(declare-fun call!582312 () Bool)

(declare-fun c!1223618 () Bool)

(assert (=> bm!582306 (= call!582312 (validRegex!8235 (ite c!1223618 (regTwo!33511 (regTwo!33510 r!7292)) (regTwo!33510 (regTwo!33510 r!7292)))))))

(declare-fun d!2079585 () Bool)

(declare-fun res!2718810 () Bool)

(declare-fun e!4012351 () Bool)

(assert (=> d!2079585 (=> res!2718810 e!4012351)))

(assert (=> d!2079585 (= res!2718810 ((_ is ElementMatch!16499) (regTwo!33510 r!7292)))))

(assert (=> d!2079585 (= (validRegex!8235 (regTwo!33510 r!7292)) e!4012351)))

(declare-fun bm!582307 () Bool)

(declare-fun call!582313 () Bool)

(declare-fun call!582311 () Bool)

(assert (=> bm!582307 (= call!582313 call!582311)))

(declare-fun c!1223619 () Bool)

(declare-fun bm!582308 () Bool)

(assert (=> bm!582308 (= call!582311 (validRegex!8235 (ite c!1223619 (reg!16828 (regTwo!33510 r!7292)) (ite c!1223618 (regOne!33511 (regTwo!33510 r!7292)) (regOne!33510 (regTwo!33510 r!7292))))))))

(declare-fun b!6634004 () Bool)

(declare-fun e!4012349 () Bool)

(declare-fun e!4012352 () Bool)

(assert (=> b!6634004 (= e!4012349 e!4012352)))

(declare-fun res!2718813 () Bool)

(assert (=> b!6634004 (= res!2718813 (not (nullable!6492 (reg!16828 (regTwo!33510 r!7292)))))))

(assert (=> b!6634004 (=> (not res!2718813) (not e!4012352))))

(declare-fun b!6634005 () Bool)

(declare-fun res!2718811 () Bool)

(declare-fun e!4012348 () Bool)

(assert (=> b!6634005 (=> res!2718811 e!4012348)))

(assert (=> b!6634005 (= res!2718811 (not ((_ is Concat!25344) (regTwo!33510 r!7292))))))

(declare-fun e!4012347 () Bool)

(assert (=> b!6634005 (= e!4012347 e!4012348)))

(declare-fun b!6634006 () Bool)

(declare-fun e!4012350 () Bool)

(assert (=> b!6634006 (= e!4012350 call!582312)))

(declare-fun b!6634007 () Bool)

(declare-fun e!4012346 () Bool)

(assert (=> b!6634007 (= e!4012346 call!582312)))

(declare-fun b!6634008 () Bool)

(assert (=> b!6634008 (= e!4012348 e!4012350)))

(declare-fun res!2718812 () Bool)

(assert (=> b!6634008 (=> (not res!2718812) (not e!4012350))))

(assert (=> b!6634008 (= res!2718812 call!582313)))

(declare-fun b!6634009 () Bool)

(assert (=> b!6634009 (= e!4012349 e!4012347)))

(assert (=> b!6634009 (= c!1223618 ((_ is Union!16499) (regTwo!33510 r!7292)))))

(declare-fun b!6634010 () Bool)

(declare-fun res!2718809 () Bool)

(assert (=> b!6634010 (=> (not res!2718809) (not e!4012346))))

(assert (=> b!6634010 (= res!2718809 call!582313)))

(assert (=> b!6634010 (= e!4012347 e!4012346)))

(declare-fun b!6634011 () Bool)

(assert (=> b!6634011 (= e!4012352 call!582311)))

(declare-fun b!6634012 () Bool)

(assert (=> b!6634012 (= e!4012351 e!4012349)))

(assert (=> b!6634012 (= c!1223619 ((_ is Star!16499) (regTwo!33510 r!7292)))))

(assert (= (and d!2079585 (not res!2718810)) b!6634012))

(assert (= (and b!6634012 c!1223619) b!6634004))

(assert (= (and b!6634012 (not c!1223619)) b!6634009))

(assert (= (and b!6634004 res!2718813) b!6634011))

(assert (= (and b!6634009 c!1223618) b!6634010))

(assert (= (and b!6634009 (not c!1223618)) b!6634005))

(assert (= (and b!6634010 res!2718809) b!6634007))

(assert (= (and b!6634005 (not res!2718811)) b!6634008))

(assert (= (and b!6634008 res!2718812) b!6634006))

(assert (= (or b!6634007 b!6634006) bm!582306))

(assert (= (or b!6634010 b!6634008) bm!582307))

(assert (= (or b!6634011 bm!582307) bm!582308))

(declare-fun m!7402316 () Bool)

(assert (=> bm!582306 m!7402316))

(declare-fun m!7402318 () Bool)

(assert (=> bm!582308 m!7402318))

(declare-fun m!7402320 () Bool)

(assert (=> b!6634004 m!7402320))

(assert (=> d!2079363 d!2079585))

(declare-fun d!2079587 () Bool)

(declare-fun res!2718814 () Bool)

(declare-fun e!4012353 () Bool)

(assert (=> d!2079587 (=> res!2718814 e!4012353)))

(assert (=> d!2079587 (= res!2718814 ((_ is Nil!65672) (exprs!6383 setElem!45336)))))

(assert (=> d!2079587 (= (forall!15694 (exprs!6383 setElem!45336) lambda!370613) e!4012353)))

(declare-fun b!6634013 () Bool)

(declare-fun e!4012354 () Bool)

(assert (=> b!6634013 (= e!4012353 e!4012354)))

(declare-fun res!2718815 () Bool)

(assert (=> b!6634013 (=> (not res!2718815) (not e!4012354))))

(assert (=> b!6634013 (= res!2718815 (dynLambda!26161 lambda!370613 (h!72120 (exprs!6383 setElem!45336))))))

(declare-fun b!6634014 () Bool)

(assert (=> b!6634014 (= e!4012354 (forall!15694 (t!379460 (exprs!6383 setElem!45336)) lambda!370613))))

(assert (= (and d!2079587 (not res!2718814)) b!6634013))

(assert (= (and b!6634013 res!2718815) b!6634014))

(declare-fun b_lambda!250779 () Bool)

(assert (=> (not b_lambda!250779) (not b!6634013)))

(declare-fun m!7402322 () Bool)

(assert (=> b!6634013 m!7402322))

(declare-fun m!7402324 () Bool)

(assert (=> b!6634014 m!7402324))

(assert (=> d!2079403 d!2079587))

(assert (=> bm!582203 d!2079499))

(declare-fun b!6634015 () Bool)

(declare-fun e!4012355 () (InoxSet Context!11766))

(declare-fun e!4012356 () (InoxSet Context!11766))

(assert (=> b!6634015 (= e!4012355 e!4012356)))

(declare-fun c!1223620 () Bool)

(assert (=> b!6634015 (= c!1223620 ((_ is Cons!65672) (exprs!6383 (Context!11767 (t!379460 (exprs!6383 (h!72121 zl!343)))))))))

(declare-fun bm!582309 () Bool)

(declare-fun call!582314 () (InoxSet Context!11766))

(assert (=> bm!582309 (= call!582314 (derivationStepZipperDown!1747 (h!72120 (exprs!6383 (Context!11767 (t!379460 (exprs!6383 (h!72121 zl!343)))))) (Context!11767 (t!379460 (exprs!6383 (Context!11767 (t!379460 (exprs!6383 (h!72121 zl!343))))))) (h!72122 s!2326)))))

(declare-fun b!6634016 () Bool)

(assert (=> b!6634016 (= e!4012355 ((_ map or) call!582314 (derivationStepZipperUp!1673 (Context!11767 (t!379460 (exprs!6383 (Context!11767 (t!379460 (exprs!6383 (h!72121 zl!343))))))) (h!72122 s!2326))))))

(declare-fun b!6634017 () Bool)

(declare-fun e!4012357 () Bool)

(assert (=> b!6634017 (= e!4012357 (nullable!6492 (h!72120 (exprs!6383 (Context!11767 (t!379460 (exprs!6383 (h!72121 zl!343))))))))))

(declare-fun b!6634018 () Bool)

(assert (=> b!6634018 (= e!4012356 ((as const (Array Context!11766 Bool)) false))))

(declare-fun b!6634019 () Bool)

(assert (=> b!6634019 (= e!4012356 call!582314)))

(declare-fun d!2079589 () Bool)

(declare-fun c!1223621 () Bool)

(assert (=> d!2079589 (= c!1223621 e!4012357)))

(declare-fun res!2718816 () Bool)

(assert (=> d!2079589 (=> (not res!2718816) (not e!4012357))))

(assert (=> d!2079589 (= res!2718816 ((_ is Cons!65672) (exprs!6383 (Context!11767 (t!379460 (exprs!6383 (h!72121 zl!343)))))))))

(assert (=> d!2079589 (= (derivationStepZipperUp!1673 (Context!11767 (t!379460 (exprs!6383 (h!72121 zl!343)))) (h!72122 s!2326)) e!4012355)))

(assert (= (and d!2079589 res!2718816) b!6634017))

(assert (= (and d!2079589 c!1223621) b!6634016))

(assert (= (and d!2079589 (not c!1223621)) b!6634015))

(assert (= (and b!6634015 c!1223620) b!6634019))

(assert (= (and b!6634015 (not c!1223620)) b!6634018))

(assert (= (or b!6634016 b!6634019) bm!582309))

(declare-fun m!7402326 () Bool)

(assert (=> bm!582309 m!7402326))

(declare-fun m!7402328 () Bool)

(assert (=> b!6634016 m!7402328))

(declare-fun m!7402330 () Bool)

(assert (=> b!6634017 m!7402330))

(assert (=> b!6633325 d!2079589))

(declare-fun bm!582310 () Bool)

(declare-fun call!582316 () List!65796)

(declare-fun call!582317 () List!65796)

(assert (=> bm!582310 (= call!582316 call!582317)))

(declare-fun b!6634020 () Bool)

(declare-fun e!4012361 () (InoxSet Context!11766))

(declare-fun call!582315 () (InoxSet Context!11766))

(assert (=> b!6634020 (= e!4012361 call!582315)))

(declare-fun bm!582311 () Bool)

(declare-fun call!582319 () (InoxSet Context!11766))

(declare-fun call!582320 () (InoxSet Context!11766))

(assert (=> bm!582311 (= call!582319 call!582320)))

(declare-fun b!6634021 () Bool)

(declare-fun e!4012360 () (InoxSet Context!11766))

(declare-fun e!4012358 () (InoxSet Context!11766))

(assert (=> b!6634021 (= e!4012360 e!4012358)))

(declare-fun c!1223625 () Bool)

(assert (=> b!6634021 (= c!1223625 ((_ is Union!16499) (h!72120 (exprs!6383 lt!2419182))))))

(declare-fun d!2079591 () Bool)

(declare-fun c!1223624 () Bool)

(assert (=> d!2079591 (= c!1223624 (and ((_ is ElementMatch!16499) (h!72120 (exprs!6383 lt!2419182))) (= (c!1223326 (h!72120 (exprs!6383 lt!2419182))) (h!72122 s!2326))))))

(assert (=> d!2079591 (= (derivationStepZipperDown!1747 (h!72120 (exprs!6383 lt!2419182)) (Context!11767 (t!379460 (exprs!6383 lt!2419182))) (h!72122 s!2326)) e!4012360)))

(declare-fun b!6634022 () Bool)

(assert (=> b!6634022 (= e!4012360 (store ((as const (Array Context!11766 Bool)) false) (Context!11767 (t!379460 (exprs!6383 lt!2419182))) true))))

(declare-fun b!6634023 () Bool)

(declare-fun c!1223623 () Bool)

(declare-fun e!4012362 () Bool)

(assert (=> b!6634023 (= c!1223623 e!4012362)))

(declare-fun res!2718817 () Bool)

(assert (=> b!6634023 (=> (not res!2718817) (not e!4012362))))

(assert (=> b!6634023 (= res!2718817 ((_ is Concat!25344) (h!72120 (exprs!6383 lt!2419182))))))

(declare-fun e!4012359 () (InoxSet Context!11766))

(assert (=> b!6634023 (= e!4012358 e!4012359)))

(declare-fun b!6634024 () Bool)

(assert (=> b!6634024 (= e!4012359 e!4012361)))

(declare-fun c!1223622 () Bool)

(assert (=> b!6634024 (= c!1223622 ((_ is Concat!25344) (h!72120 (exprs!6383 lt!2419182))))))

(declare-fun b!6634025 () Bool)

(declare-fun call!582318 () (InoxSet Context!11766))

(assert (=> b!6634025 (= e!4012358 ((_ map or) call!582318 call!582320))))

(declare-fun b!6634026 () Bool)

(assert (=> b!6634026 (= e!4012362 (nullable!6492 (regOne!33510 (h!72120 (exprs!6383 lt!2419182)))))))

(declare-fun bm!582312 () Bool)

(assert (=> bm!582312 (= call!582318 (derivationStepZipperDown!1747 (ite c!1223625 (regOne!33511 (h!72120 (exprs!6383 lt!2419182))) (regOne!33510 (h!72120 (exprs!6383 lt!2419182)))) (ite c!1223625 (Context!11767 (t!379460 (exprs!6383 lt!2419182))) (Context!11767 call!582317)) (h!72122 s!2326)))))

(declare-fun b!6634027 () Bool)

(declare-fun e!4012363 () (InoxSet Context!11766))

(assert (=> b!6634027 (= e!4012363 ((as const (Array Context!11766 Bool)) false))))

(declare-fun bm!582313 () Bool)

(assert (=> bm!582313 (= call!582317 ($colon$colon!2336 (exprs!6383 (Context!11767 (t!379460 (exprs!6383 lt!2419182)))) (ite (or c!1223623 c!1223622) (regTwo!33510 (h!72120 (exprs!6383 lt!2419182))) (h!72120 (exprs!6383 lt!2419182)))))))

(declare-fun b!6634028 () Bool)

(assert (=> b!6634028 (= e!4012363 call!582315)))

(declare-fun bm!582314 () Bool)

(assert (=> bm!582314 (= call!582320 (derivationStepZipperDown!1747 (ite c!1223625 (regTwo!33511 (h!72120 (exprs!6383 lt!2419182))) (ite c!1223623 (regTwo!33510 (h!72120 (exprs!6383 lt!2419182))) (ite c!1223622 (regOne!33510 (h!72120 (exprs!6383 lt!2419182))) (reg!16828 (h!72120 (exprs!6383 lt!2419182)))))) (ite (or c!1223625 c!1223623) (Context!11767 (t!379460 (exprs!6383 lt!2419182))) (Context!11767 call!582316)) (h!72122 s!2326)))))

(declare-fun b!6634029 () Bool)

(declare-fun c!1223626 () Bool)

(assert (=> b!6634029 (= c!1223626 ((_ is Star!16499) (h!72120 (exprs!6383 lt!2419182))))))

(assert (=> b!6634029 (= e!4012361 e!4012363)))

(declare-fun b!6634030 () Bool)

(assert (=> b!6634030 (= e!4012359 ((_ map or) call!582318 call!582319))))

(declare-fun bm!582315 () Bool)

(assert (=> bm!582315 (= call!582315 call!582319)))

(assert (= (and d!2079591 c!1223624) b!6634022))

(assert (= (and d!2079591 (not c!1223624)) b!6634021))

(assert (= (and b!6634021 c!1223625) b!6634025))

(assert (= (and b!6634021 (not c!1223625)) b!6634023))

(assert (= (and b!6634023 res!2718817) b!6634026))

(assert (= (and b!6634023 c!1223623) b!6634030))

(assert (= (and b!6634023 (not c!1223623)) b!6634024))

(assert (= (and b!6634024 c!1223622) b!6634020))

(assert (= (and b!6634024 (not c!1223622)) b!6634029))

(assert (= (and b!6634029 c!1223626) b!6634028))

(assert (= (and b!6634029 (not c!1223626)) b!6634027))

(assert (= (or b!6634020 b!6634028) bm!582310))

(assert (= (or b!6634020 b!6634028) bm!582315))

(assert (= (or b!6634030 bm!582310) bm!582313))

(assert (= (or b!6634030 bm!582315) bm!582311))

(assert (= (or b!6634025 bm!582311) bm!582314))

(assert (= (or b!6634025 b!6634030) bm!582312))

(declare-fun m!7402332 () Bool)

(assert (=> bm!582312 m!7402332))

(declare-fun m!7402334 () Bool)

(assert (=> b!6634026 m!7402334))

(declare-fun m!7402336 () Bool)

(assert (=> bm!582313 m!7402336))

(declare-fun m!7402338 () Bool)

(assert (=> b!6634022 m!7402338))

(declare-fun m!7402340 () Bool)

(assert (=> bm!582314 m!7402340))

(assert (=> bm!582213 d!2079591))

(declare-fun d!2079593 () Bool)

(assert (=> d!2079593 (= (isConcat!1395 lt!2419240) ((_ is Concat!25344) lt!2419240))))

(assert (=> b!6633213 d!2079593))

(declare-fun bm!582316 () Bool)

(declare-fun call!582322 () List!65796)

(declare-fun call!582323 () List!65796)

(assert (=> bm!582316 (= call!582322 call!582323)))

(declare-fun b!6634031 () Bool)

(declare-fun e!4012367 () (InoxSet Context!11766))

(declare-fun call!582321 () (InoxSet Context!11766))

(assert (=> b!6634031 (= e!4012367 call!582321)))

(declare-fun bm!582317 () Bool)

(declare-fun call!582325 () (InoxSet Context!11766))

(declare-fun call!582326 () (InoxSet Context!11766))

(assert (=> bm!582317 (= call!582325 call!582326)))

(declare-fun b!6634032 () Bool)

(declare-fun e!4012366 () (InoxSet Context!11766))

(declare-fun e!4012364 () (InoxSet Context!11766))

(assert (=> b!6634032 (= e!4012366 e!4012364)))

(declare-fun c!1223630 () Bool)

(assert (=> b!6634032 (= c!1223630 ((_ is Union!16499) (ite c!1223473 (regOne!33511 (h!72120 (exprs!6383 (h!72121 zl!343)))) (regOne!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))))))))

(declare-fun c!1223629 () Bool)

(declare-fun d!2079595 () Bool)

(assert (=> d!2079595 (= c!1223629 (and ((_ is ElementMatch!16499) (ite c!1223473 (regOne!33511 (h!72120 (exprs!6383 (h!72121 zl!343)))) (regOne!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))))) (= (c!1223326 (ite c!1223473 (regOne!33511 (h!72120 (exprs!6383 (h!72121 zl!343)))) (regOne!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))))) (h!72122 s!2326))))))

(assert (=> d!2079595 (= (derivationStepZipperDown!1747 (ite c!1223473 (regOne!33511 (h!72120 (exprs!6383 (h!72121 zl!343)))) (regOne!33510 (h!72120 (exprs!6383 (h!72121 zl!343))))) (ite c!1223473 lt!2419182 (Context!11767 call!582237)) (h!72122 s!2326)) e!4012366)))

(declare-fun b!6634033 () Bool)

(assert (=> b!6634033 (= e!4012366 (store ((as const (Array Context!11766 Bool)) false) (ite c!1223473 lt!2419182 (Context!11767 call!582237)) true))))

(declare-fun b!6634034 () Bool)

(declare-fun c!1223628 () Bool)

(declare-fun e!4012368 () Bool)

(assert (=> b!6634034 (= c!1223628 e!4012368)))

(declare-fun res!2718818 () Bool)

(assert (=> b!6634034 (=> (not res!2718818) (not e!4012368))))

(assert (=> b!6634034 (= res!2718818 ((_ is Concat!25344) (ite c!1223473 (regOne!33511 (h!72120 (exprs!6383 (h!72121 zl!343)))) (regOne!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))))))))

(declare-fun e!4012365 () (InoxSet Context!11766))

(assert (=> b!6634034 (= e!4012364 e!4012365)))

(declare-fun b!6634035 () Bool)

(assert (=> b!6634035 (= e!4012365 e!4012367)))

(declare-fun c!1223627 () Bool)

(assert (=> b!6634035 (= c!1223627 ((_ is Concat!25344) (ite c!1223473 (regOne!33511 (h!72120 (exprs!6383 (h!72121 zl!343)))) (regOne!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))))))))

(declare-fun b!6634036 () Bool)

(declare-fun call!582324 () (InoxSet Context!11766))

(assert (=> b!6634036 (= e!4012364 ((_ map or) call!582324 call!582326))))

(declare-fun b!6634037 () Bool)

(assert (=> b!6634037 (= e!4012368 (nullable!6492 (regOne!33510 (ite c!1223473 (regOne!33511 (h!72120 (exprs!6383 (h!72121 zl!343)))) (regOne!33510 (h!72120 (exprs!6383 (h!72121 zl!343))))))))))

(declare-fun bm!582318 () Bool)

(assert (=> bm!582318 (= call!582324 (derivationStepZipperDown!1747 (ite c!1223630 (regOne!33511 (ite c!1223473 (regOne!33511 (h!72120 (exprs!6383 (h!72121 zl!343)))) (regOne!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))))) (regOne!33510 (ite c!1223473 (regOne!33511 (h!72120 (exprs!6383 (h!72121 zl!343)))) (regOne!33510 (h!72120 (exprs!6383 (h!72121 zl!343))))))) (ite c!1223630 (ite c!1223473 lt!2419182 (Context!11767 call!582237)) (Context!11767 call!582323)) (h!72122 s!2326)))))

(declare-fun b!6634038 () Bool)

(declare-fun e!4012369 () (InoxSet Context!11766))

(assert (=> b!6634038 (= e!4012369 ((as const (Array Context!11766 Bool)) false))))

(declare-fun bm!582319 () Bool)

(assert (=> bm!582319 (= call!582323 ($colon$colon!2336 (exprs!6383 (ite c!1223473 lt!2419182 (Context!11767 call!582237))) (ite (or c!1223628 c!1223627) (regTwo!33510 (ite c!1223473 (regOne!33511 (h!72120 (exprs!6383 (h!72121 zl!343)))) (regOne!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))))) (ite c!1223473 (regOne!33511 (h!72120 (exprs!6383 (h!72121 zl!343)))) (regOne!33510 (h!72120 (exprs!6383 (h!72121 zl!343))))))))))

(declare-fun b!6634039 () Bool)

(assert (=> b!6634039 (= e!4012369 call!582321)))

(declare-fun bm!582320 () Bool)

(assert (=> bm!582320 (= call!582326 (derivationStepZipperDown!1747 (ite c!1223630 (regTwo!33511 (ite c!1223473 (regOne!33511 (h!72120 (exprs!6383 (h!72121 zl!343)))) (regOne!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))))) (ite c!1223628 (regTwo!33510 (ite c!1223473 (regOne!33511 (h!72120 (exprs!6383 (h!72121 zl!343)))) (regOne!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))))) (ite c!1223627 (regOne!33510 (ite c!1223473 (regOne!33511 (h!72120 (exprs!6383 (h!72121 zl!343)))) (regOne!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))))) (reg!16828 (ite c!1223473 (regOne!33511 (h!72120 (exprs!6383 (h!72121 zl!343)))) (regOne!33510 (h!72120 (exprs!6383 (h!72121 zl!343))))))))) (ite (or c!1223630 c!1223628) (ite c!1223473 lt!2419182 (Context!11767 call!582237)) (Context!11767 call!582322)) (h!72122 s!2326)))))

(declare-fun b!6634040 () Bool)

(declare-fun c!1223631 () Bool)

(assert (=> b!6634040 (= c!1223631 ((_ is Star!16499) (ite c!1223473 (regOne!33511 (h!72120 (exprs!6383 (h!72121 zl!343)))) (regOne!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))))))))

(assert (=> b!6634040 (= e!4012367 e!4012369)))

(declare-fun b!6634041 () Bool)

(assert (=> b!6634041 (= e!4012365 ((_ map or) call!582324 call!582325))))

(declare-fun bm!582321 () Bool)

(assert (=> bm!582321 (= call!582321 call!582325)))

(assert (= (and d!2079595 c!1223629) b!6634033))

(assert (= (and d!2079595 (not c!1223629)) b!6634032))

(assert (= (and b!6634032 c!1223630) b!6634036))

(assert (= (and b!6634032 (not c!1223630)) b!6634034))

(assert (= (and b!6634034 res!2718818) b!6634037))

(assert (= (and b!6634034 c!1223628) b!6634041))

(assert (= (and b!6634034 (not c!1223628)) b!6634035))

(assert (= (and b!6634035 c!1223627) b!6634031))

(assert (= (and b!6634035 (not c!1223627)) b!6634040))

(assert (= (and b!6634040 c!1223631) b!6634039))

(assert (= (and b!6634040 (not c!1223631)) b!6634038))

(assert (= (or b!6634031 b!6634039) bm!582316))

(assert (= (or b!6634031 b!6634039) bm!582321))

(assert (= (or b!6634041 bm!582316) bm!582319))

(assert (= (or b!6634041 bm!582321) bm!582317))

(assert (= (or b!6634036 bm!582317) bm!582320))

(assert (= (or b!6634036 b!6634041) bm!582318))

(declare-fun m!7402342 () Bool)

(assert (=> bm!582318 m!7402342))

(declare-fun m!7402344 () Bool)

(assert (=> b!6634037 m!7402344))

(declare-fun m!7402346 () Bool)

(assert (=> bm!582319 m!7402346))

(declare-fun m!7402348 () Bool)

(assert (=> b!6634033 m!7402348))

(declare-fun m!7402350 () Bool)

(assert (=> bm!582320 m!7402350))

(assert (=> bm!582232 d!2079595))

(declare-fun bm!582322 () Bool)

(declare-fun call!582328 () Bool)

(declare-fun c!1223632 () Bool)

(assert (=> bm!582322 (= call!582328 (nullable!6492 (ite c!1223632 (regTwo!33511 (regOne!33510 (regOne!33510 r!7292))) (regTwo!33510 (regOne!33510 (regOne!33510 r!7292))))))))

(declare-fun b!6634042 () Bool)

(declare-fun e!4012370 () Bool)

(assert (=> b!6634042 (= e!4012370 call!582328)))

(declare-fun d!2079597 () Bool)

(declare-fun res!2718819 () Bool)

(declare-fun e!4012374 () Bool)

(assert (=> d!2079597 (=> res!2718819 e!4012374)))

(assert (=> d!2079597 (= res!2718819 ((_ is EmptyExpr!16499) (regOne!33510 (regOne!33510 r!7292))))))

(assert (=> d!2079597 (= (nullableFct!2413 (regOne!33510 (regOne!33510 r!7292))) e!4012374)))

(declare-fun b!6634043 () Bool)

(declare-fun e!4012371 () Bool)

(declare-fun e!4012373 () Bool)

(assert (=> b!6634043 (= e!4012371 e!4012373)))

(assert (=> b!6634043 (= c!1223632 ((_ is Union!16499) (regOne!33510 (regOne!33510 r!7292))))))

(declare-fun b!6634044 () Bool)

(declare-fun e!4012375 () Bool)

(assert (=> b!6634044 (= e!4012375 e!4012371)))

(declare-fun res!2718823 () Bool)

(assert (=> b!6634044 (=> res!2718823 e!4012371)))

(assert (=> b!6634044 (= res!2718823 ((_ is Star!16499) (regOne!33510 (regOne!33510 r!7292))))))

(declare-fun b!6634045 () Bool)

(declare-fun e!4012372 () Bool)

(assert (=> b!6634045 (= e!4012372 call!582328)))

(declare-fun b!6634046 () Bool)

(assert (=> b!6634046 (= e!4012373 e!4012372)))

(declare-fun res!2718820 () Bool)

(declare-fun call!582327 () Bool)

(assert (=> b!6634046 (= res!2718820 call!582327)))

(assert (=> b!6634046 (=> res!2718820 e!4012372)))

(declare-fun b!6634047 () Bool)

(assert (=> b!6634047 (= e!4012373 e!4012370)))

(declare-fun res!2718821 () Bool)

(assert (=> b!6634047 (= res!2718821 call!582327)))

(assert (=> b!6634047 (=> (not res!2718821) (not e!4012370))))

(declare-fun b!6634048 () Bool)

(assert (=> b!6634048 (= e!4012374 e!4012375)))

(declare-fun res!2718822 () Bool)

(assert (=> b!6634048 (=> (not res!2718822) (not e!4012375))))

(assert (=> b!6634048 (= res!2718822 (and (not ((_ is EmptyLang!16499) (regOne!33510 (regOne!33510 r!7292)))) (not ((_ is ElementMatch!16499) (regOne!33510 (regOne!33510 r!7292))))))))

(declare-fun bm!582323 () Bool)

(assert (=> bm!582323 (= call!582327 (nullable!6492 (ite c!1223632 (regOne!33511 (regOne!33510 (regOne!33510 r!7292))) (regOne!33510 (regOne!33510 (regOne!33510 r!7292))))))))

(assert (= (and d!2079597 (not res!2718819)) b!6634048))

(assert (= (and b!6634048 res!2718822) b!6634044))

(assert (= (and b!6634044 (not res!2718823)) b!6634043))

(assert (= (and b!6634043 c!1223632) b!6634046))

(assert (= (and b!6634043 (not c!1223632)) b!6634047))

(assert (= (and b!6634046 (not res!2718820)) b!6634045))

(assert (= (and b!6634047 res!2718821) b!6634042))

(assert (= (or b!6634045 b!6634042) bm!582322))

(assert (= (or b!6634046 b!6634047) bm!582323))

(declare-fun m!7402352 () Bool)

(assert (=> bm!582322 m!7402352))

(declare-fun m!7402354 () Bool)

(assert (=> bm!582323 m!7402354))

(assert (=> d!2079289 d!2079597))

(assert (=> b!6633296 d!2079493))

(assert (=> b!6633296 d!2079495))

(declare-fun d!2079599 () Bool)

(assert (=> d!2079599 (= (isEmpty!37968 (exprs!6383 (h!72121 zl!343))) ((_ is Nil!65672) (exprs!6383 (h!72121 zl!343))))))

(assert (=> b!6633184 d!2079599))

(declare-fun d!2079601 () Bool)

(assert (=> d!2079601 (= (Exists!3569 (ite c!1223413 lambda!370596 lambda!370597)) (choose!49554 (ite c!1223413 lambda!370596 lambda!370597)))))

(declare-fun bs!1704760 () Bool)

(assert (= bs!1704760 d!2079601))

(declare-fun m!7402356 () Bool)

(assert (=> bs!1704760 m!7402356))

(assert (=> bm!582206 d!2079601))

(declare-fun d!2079603 () Bool)

(assert (=> d!2079603 (= (head!13440 (unfocusZipperList!1920 zl!343)) (h!72120 (unfocusZipperList!1920 zl!343)))))

(assert (=> b!6633469 d!2079603))

(declare-fun bm!582324 () Bool)

(declare-fun call!582330 () List!65796)

(declare-fun call!582331 () List!65796)

(assert (=> bm!582324 (= call!582330 call!582331)))

(declare-fun b!6634049 () Bool)

(declare-fun e!4012379 () (InoxSet Context!11766))

(declare-fun call!582329 () (InoxSet Context!11766))

(assert (=> b!6634049 (= e!4012379 call!582329)))

(declare-fun bm!582325 () Bool)

(declare-fun call!582333 () (InoxSet Context!11766))

(declare-fun call!582334 () (InoxSet Context!11766))

(assert (=> bm!582325 (= call!582333 call!582334)))

(declare-fun b!6634050 () Bool)

(declare-fun e!4012378 () (InoxSet Context!11766))

(declare-fun e!4012376 () (InoxSet Context!11766))

(assert (=> b!6634050 (= e!4012378 e!4012376)))

(declare-fun c!1223636 () Bool)

(assert (=> b!6634050 (= c!1223636 ((_ is Union!16499) (h!72120 (exprs!6383 (Context!11767 (Cons!65672 (h!72120 (exprs!6383 (h!72121 zl!343))) (t!379460 (exprs!6383 (h!72121 zl!343)))))))))))

(declare-fun d!2079605 () Bool)

(declare-fun c!1223635 () Bool)

(assert (=> d!2079605 (= c!1223635 (and ((_ is ElementMatch!16499) (h!72120 (exprs!6383 (Context!11767 (Cons!65672 (h!72120 (exprs!6383 (h!72121 zl!343))) (t!379460 (exprs!6383 (h!72121 zl!343)))))))) (= (c!1223326 (h!72120 (exprs!6383 (Context!11767 (Cons!65672 (h!72120 (exprs!6383 (h!72121 zl!343))) (t!379460 (exprs!6383 (h!72121 zl!343)))))))) (h!72122 s!2326))))))

(assert (=> d!2079605 (= (derivationStepZipperDown!1747 (h!72120 (exprs!6383 (Context!11767 (Cons!65672 (h!72120 (exprs!6383 (h!72121 zl!343))) (t!379460 (exprs!6383 (h!72121 zl!343))))))) (Context!11767 (t!379460 (exprs!6383 (Context!11767 (Cons!65672 (h!72120 (exprs!6383 (h!72121 zl!343))) (t!379460 (exprs!6383 (h!72121 zl!343)))))))) (h!72122 s!2326)) e!4012378)))

(declare-fun b!6634051 () Bool)

(assert (=> b!6634051 (= e!4012378 (store ((as const (Array Context!11766 Bool)) false) (Context!11767 (t!379460 (exprs!6383 (Context!11767 (Cons!65672 (h!72120 (exprs!6383 (h!72121 zl!343))) (t!379460 (exprs!6383 (h!72121 zl!343)))))))) true))))

(declare-fun b!6634052 () Bool)

(declare-fun c!1223634 () Bool)

(declare-fun e!4012380 () Bool)

(assert (=> b!6634052 (= c!1223634 e!4012380)))

(declare-fun res!2718824 () Bool)

(assert (=> b!6634052 (=> (not res!2718824) (not e!4012380))))

(assert (=> b!6634052 (= res!2718824 ((_ is Concat!25344) (h!72120 (exprs!6383 (Context!11767 (Cons!65672 (h!72120 (exprs!6383 (h!72121 zl!343))) (t!379460 (exprs!6383 (h!72121 zl!343)))))))))))

(declare-fun e!4012377 () (InoxSet Context!11766))

(assert (=> b!6634052 (= e!4012376 e!4012377)))

(declare-fun b!6634053 () Bool)

(assert (=> b!6634053 (= e!4012377 e!4012379)))

(declare-fun c!1223633 () Bool)

(assert (=> b!6634053 (= c!1223633 ((_ is Concat!25344) (h!72120 (exprs!6383 (Context!11767 (Cons!65672 (h!72120 (exprs!6383 (h!72121 zl!343))) (t!379460 (exprs!6383 (h!72121 zl!343)))))))))))

(declare-fun b!6634054 () Bool)

(declare-fun call!582332 () (InoxSet Context!11766))

(assert (=> b!6634054 (= e!4012376 ((_ map or) call!582332 call!582334))))

(declare-fun b!6634055 () Bool)

(assert (=> b!6634055 (= e!4012380 (nullable!6492 (regOne!33510 (h!72120 (exprs!6383 (Context!11767 (Cons!65672 (h!72120 (exprs!6383 (h!72121 zl!343))) (t!379460 (exprs!6383 (h!72121 zl!343))))))))))))

(declare-fun bm!582326 () Bool)

(assert (=> bm!582326 (= call!582332 (derivationStepZipperDown!1747 (ite c!1223636 (regOne!33511 (h!72120 (exprs!6383 (Context!11767 (Cons!65672 (h!72120 (exprs!6383 (h!72121 zl!343))) (t!379460 (exprs!6383 (h!72121 zl!343)))))))) (regOne!33510 (h!72120 (exprs!6383 (Context!11767 (Cons!65672 (h!72120 (exprs!6383 (h!72121 zl!343))) (t!379460 (exprs!6383 (h!72121 zl!343))))))))) (ite c!1223636 (Context!11767 (t!379460 (exprs!6383 (Context!11767 (Cons!65672 (h!72120 (exprs!6383 (h!72121 zl!343))) (t!379460 (exprs!6383 (h!72121 zl!343)))))))) (Context!11767 call!582331)) (h!72122 s!2326)))))

(declare-fun b!6634056 () Bool)

(declare-fun e!4012381 () (InoxSet Context!11766))

(assert (=> b!6634056 (= e!4012381 ((as const (Array Context!11766 Bool)) false))))

(declare-fun bm!582327 () Bool)

(assert (=> bm!582327 (= call!582331 ($colon$colon!2336 (exprs!6383 (Context!11767 (t!379460 (exprs!6383 (Context!11767 (Cons!65672 (h!72120 (exprs!6383 (h!72121 zl!343))) (t!379460 (exprs!6383 (h!72121 zl!343))))))))) (ite (or c!1223634 c!1223633) (regTwo!33510 (h!72120 (exprs!6383 (Context!11767 (Cons!65672 (h!72120 (exprs!6383 (h!72121 zl!343))) (t!379460 (exprs!6383 (h!72121 zl!343)))))))) (h!72120 (exprs!6383 (Context!11767 (Cons!65672 (h!72120 (exprs!6383 (h!72121 zl!343))) (t!379460 (exprs!6383 (h!72121 zl!343))))))))))))

(declare-fun b!6634057 () Bool)

(assert (=> b!6634057 (= e!4012381 call!582329)))

(declare-fun bm!582328 () Bool)

(assert (=> bm!582328 (= call!582334 (derivationStepZipperDown!1747 (ite c!1223636 (regTwo!33511 (h!72120 (exprs!6383 (Context!11767 (Cons!65672 (h!72120 (exprs!6383 (h!72121 zl!343))) (t!379460 (exprs!6383 (h!72121 zl!343)))))))) (ite c!1223634 (regTwo!33510 (h!72120 (exprs!6383 (Context!11767 (Cons!65672 (h!72120 (exprs!6383 (h!72121 zl!343))) (t!379460 (exprs!6383 (h!72121 zl!343)))))))) (ite c!1223633 (regOne!33510 (h!72120 (exprs!6383 (Context!11767 (Cons!65672 (h!72120 (exprs!6383 (h!72121 zl!343))) (t!379460 (exprs!6383 (h!72121 zl!343)))))))) (reg!16828 (h!72120 (exprs!6383 (Context!11767 (Cons!65672 (h!72120 (exprs!6383 (h!72121 zl!343))) (t!379460 (exprs!6383 (h!72121 zl!343))))))))))) (ite (or c!1223636 c!1223634) (Context!11767 (t!379460 (exprs!6383 (Context!11767 (Cons!65672 (h!72120 (exprs!6383 (h!72121 zl!343))) (t!379460 (exprs!6383 (h!72121 zl!343)))))))) (Context!11767 call!582330)) (h!72122 s!2326)))))

(declare-fun b!6634058 () Bool)

(declare-fun c!1223637 () Bool)

(assert (=> b!6634058 (= c!1223637 ((_ is Star!16499) (h!72120 (exprs!6383 (Context!11767 (Cons!65672 (h!72120 (exprs!6383 (h!72121 zl!343))) (t!379460 (exprs!6383 (h!72121 zl!343)))))))))))

(assert (=> b!6634058 (= e!4012379 e!4012381)))

(declare-fun b!6634059 () Bool)

(assert (=> b!6634059 (= e!4012377 ((_ map or) call!582332 call!582333))))

(declare-fun bm!582329 () Bool)

(assert (=> bm!582329 (= call!582329 call!582333)))

(assert (= (and d!2079605 c!1223635) b!6634051))

(assert (= (and d!2079605 (not c!1223635)) b!6634050))

(assert (= (and b!6634050 c!1223636) b!6634054))

(assert (= (and b!6634050 (not c!1223636)) b!6634052))

(assert (= (and b!6634052 res!2718824) b!6634055))

(assert (= (and b!6634052 c!1223634) b!6634059))

(assert (= (and b!6634052 (not c!1223634)) b!6634053))

(assert (= (and b!6634053 c!1223633) b!6634049))

(assert (= (and b!6634053 (not c!1223633)) b!6634058))

(assert (= (and b!6634058 c!1223637) b!6634057))

(assert (= (and b!6634058 (not c!1223637)) b!6634056))

(assert (= (or b!6634049 b!6634057) bm!582324))

(assert (= (or b!6634049 b!6634057) bm!582329))

(assert (= (or b!6634059 bm!582324) bm!582327))

(assert (= (or b!6634059 bm!582329) bm!582325))

(assert (= (or b!6634054 bm!582325) bm!582328))

(assert (= (or b!6634054 b!6634059) bm!582326))

(declare-fun m!7402358 () Bool)

(assert (=> bm!582326 m!7402358))

(declare-fun m!7402360 () Bool)

(assert (=> b!6634055 m!7402360))

(declare-fun m!7402362 () Bool)

(assert (=> bm!582327 m!7402362))

(declare-fun m!7402364 () Bool)

(assert (=> b!6634051 m!7402364))

(declare-fun m!7402366 () Bool)

(assert (=> bm!582328 m!7402366))

(assert (=> bm!582236 d!2079605))

(assert (=> d!2079295 d!2079545))

(assert (=> d!2079291 d!2079295))

(assert (=> d!2079291 d!2079293))

(declare-fun d!2079607 () Bool)

(declare-fun e!4012384 () Bool)

(assert (=> d!2079607 (= (matchZipper!2511 ((_ map or) lt!2419195 lt!2419198) (t!379462 s!2326)) e!4012384)))

(declare-fun res!2718827 () Bool)

(assert (=> d!2079607 (=> res!2718827 e!4012384)))

(assert (=> d!2079607 (= res!2718827 (matchZipper!2511 lt!2419195 (t!379462 s!2326)))))

(assert (=> d!2079607 true))

(declare-fun _$48!2357 () Unit!159351)

(assert (=> d!2079607 (= (choose!49537 lt!2419195 lt!2419198 (t!379462 s!2326)) _$48!2357)))

(declare-fun b!6634062 () Bool)

(assert (=> b!6634062 (= e!4012384 (matchZipper!2511 lt!2419198 (t!379462 s!2326)))))

(assert (= (and d!2079607 (not res!2718827)) b!6634062))

(assert (=> d!2079607 m!7401546))

(assert (=> d!2079607 m!7401544))

(assert (=> b!6634062 m!7401582))

(assert (=> d!2079291 d!2079607))

(assert (=> b!6633126 d!2079513))

(declare-fun b!6634063 () Bool)

(declare-fun res!2718835 () Bool)

(declare-fun e!4012391 () Bool)

(assert (=> b!6634063 (=> res!2718835 e!4012391)))

(declare-fun e!4012388 () Bool)

(assert (=> b!6634063 (= res!2718835 e!4012388)))

(declare-fun res!2718833 () Bool)

(assert (=> b!6634063 (=> (not res!2718833) (not e!4012388))))

(declare-fun lt!2419322 () Bool)

(assert (=> b!6634063 (= res!2718833 lt!2419322)))

(declare-fun d!2079609 () Bool)

(declare-fun e!4012389 () Bool)

(assert (=> d!2079609 e!4012389))

(declare-fun c!1223638 () Bool)

(assert (=> d!2079609 (= c!1223638 ((_ is EmptyExpr!16499) (regOne!33510 r!7292)))))

(declare-fun e!4012386 () Bool)

(assert (=> d!2079609 (= lt!2419322 e!4012386)))

(declare-fun c!1223639 () Bool)

(assert (=> d!2079609 (= c!1223639 (isEmpty!37969 (_1!36781 (get!22830 lt!2419296))))))

(assert (=> d!2079609 (validRegex!8235 (regOne!33510 r!7292))))

(assert (=> d!2079609 (= (matchR!8682 (regOne!33510 r!7292) (_1!36781 (get!22830 lt!2419296))) lt!2419322)))

(declare-fun bm!582330 () Bool)

(declare-fun call!582335 () Bool)

(assert (=> bm!582330 (= call!582335 (isEmpty!37969 (_1!36781 (get!22830 lt!2419296))))))

(declare-fun b!6634064 () Bool)

(declare-fun e!4012385 () Bool)

(assert (=> b!6634064 (= e!4012389 e!4012385)))

(declare-fun c!1223640 () Bool)

(assert (=> b!6634064 (= c!1223640 ((_ is EmptyLang!16499) (regOne!33510 r!7292)))))

(declare-fun b!6634065 () Bool)

(assert (=> b!6634065 (= e!4012385 (not lt!2419322))))

(declare-fun b!6634066 () Bool)

(assert (=> b!6634066 (= e!4012389 (= lt!2419322 call!582335))))

(declare-fun b!6634067 () Bool)

(assert (=> b!6634067 (= e!4012388 (= (head!13439 (_1!36781 (get!22830 lt!2419296))) (c!1223326 (regOne!33510 r!7292))))))

(declare-fun b!6634068 () Bool)

(declare-fun res!2718831 () Bool)

(declare-fun e!4012387 () Bool)

(assert (=> b!6634068 (=> res!2718831 e!4012387)))

(assert (=> b!6634068 (= res!2718831 (not (isEmpty!37969 (tail!12524 (_1!36781 (get!22830 lt!2419296))))))))

(declare-fun b!6634069 () Bool)

(assert (=> b!6634069 (= e!4012387 (not (= (head!13439 (_1!36781 (get!22830 lt!2419296))) (c!1223326 (regOne!33510 r!7292)))))))

(declare-fun b!6634070 () Bool)

(assert (=> b!6634070 (= e!4012386 (nullable!6492 (regOne!33510 r!7292)))))

(declare-fun b!6634071 () Bool)

(declare-fun res!2718829 () Bool)

(assert (=> b!6634071 (=> (not res!2718829) (not e!4012388))))

(assert (=> b!6634071 (= res!2718829 (not call!582335))))

(declare-fun b!6634072 () Bool)

(declare-fun res!2718834 () Bool)

(assert (=> b!6634072 (=> (not res!2718834) (not e!4012388))))

(assert (=> b!6634072 (= res!2718834 (isEmpty!37969 (tail!12524 (_1!36781 (get!22830 lt!2419296)))))))

(declare-fun b!6634073 () Bool)

(declare-fun e!4012390 () Bool)

(assert (=> b!6634073 (= e!4012391 e!4012390)))

(declare-fun res!2718832 () Bool)

(assert (=> b!6634073 (=> (not res!2718832) (not e!4012390))))

(assert (=> b!6634073 (= res!2718832 (not lt!2419322))))

(declare-fun b!6634074 () Bool)

(declare-fun res!2718828 () Bool)

(assert (=> b!6634074 (=> res!2718828 e!4012391)))

(assert (=> b!6634074 (= res!2718828 (not ((_ is ElementMatch!16499) (regOne!33510 r!7292))))))

(assert (=> b!6634074 (= e!4012385 e!4012391)))

(declare-fun b!6634075 () Bool)

(assert (=> b!6634075 (= e!4012386 (matchR!8682 (derivativeStep!5178 (regOne!33510 r!7292) (head!13439 (_1!36781 (get!22830 lt!2419296)))) (tail!12524 (_1!36781 (get!22830 lt!2419296)))))))

(declare-fun b!6634076 () Bool)

(assert (=> b!6634076 (= e!4012390 e!4012387)))

(declare-fun res!2718830 () Bool)

(assert (=> b!6634076 (=> res!2718830 e!4012387)))

(assert (=> b!6634076 (= res!2718830 call!582335)))

(assert (= (and d!2079609 c!1223639) b!6634070))

(assert (= (and d!2079609 (not c!1223639)) b!6634075))

(assert (= (and d!2079609 c!1223638) b!6634066))

(assert (= (and d!2079609 (not c!1223638)) b!6634064))

(assert (= (and b!6634064 c!1223640) b!6634065))

(assert (= (and b!6634064 (not c!1223640)) b!6634074))

(assert (= (and b!6634074 (not res!2718828)) b!6634063))

(assert (= (and b!6634063 res!2718833) b!6634071))

(assert (= (and b!6634071 res!2718829) b!6634072))

(assert (= (and b!6634072 res!2718834) b!6634067))

(assert (= (and b!6634063 (not res!2718835)) b!6634073))

(assert (= (and b!6634073 res!2718832) b!6634076))

(assert (= (and b!6634076 (not res!2718830)) b!6634068))

(assert (= (and b!6634068 (not res!2718831)) b!6634069))

(assert (= (or b!6634066 b!6634071 b!6634076) bm!582330))

(declare-fun m!7402368 () Bool)

(assert (=> b!6634075 m!7402368))

(assert (=> b!6634075 m!7402368))

(declare-fun m!7402370 () Bool)

(assert (=> b!6634075 m!7402370))

(declare-fun m!7402372 () Bool)

(assert (=> b!6634075 m!7402372))

(assert (=> b!6634075 m!7402370))

(assert (=> b!6634075 m!7402372))

(declare-fun m!7402374 () Bool)

(assert (=> b!6634075 m!7402374))

(declare-fun m!7402376 () Bool)

(assert (=> d!2079609 m!7402376))

(assert (=> d!2079609 m!7401784))

(assert (=> b!6634067 m!7402368))

(assert (=> b!6634069 m!7402368))

(assert (=> bm!582330 m!7402376))

(assert (=> b!6634072 m!7402372))

(assert (=> b!6634072 m!7402372))

(declare-fun m!7402378 () Bool)

(assert (=> b!6634072 m!7402378))

(assert (=> b!6634070 m!7401790))

(assert (=> b!6634068 m!7402372))

(assert (=> b!6634068 m!7402372))

(assert (=> b!6634068 m!7402378))

(assert (=> b!6633541 d!2079609))

(assert (=> b!6633541 d!2079533))

(assert (=> d!2079339 d!2079499))

(assert (=> b!6632943 d!2079303))

(declare-fun b!6634077 () Bool)

(declare-fun e!4012393 () List!65798)

(assert (=> b!6634077 (= e!4012393 (t!379462 s!2326))))

(declare-fun b!6634079 () Bool)

(declare-fun res!2718836 () Bool)

(declare-fun e!4012392 () Bool)

(assert (=> b!6634079 (=> (not res!2718836) (not e!4012392))))

(declare-fun lt!2419323 () List!65798)

(assert (=> b!6634079 (= res!2718836 (= (size!40557 lt!2419323) (+ (size!40557 (++!14649 Nil!65674 (Cons!65674 (h!72122 s!2326) Nil!65674))) (size!40557 (t!379462 s!2326)))))))

(declare-fun d!2079611 () Bool)

(assert (=> d!2079611 e!4012392))

(declare-fun res!2718837 () Bool)

(assert (=> d!2079611 (=> (not res!2718837) (not e!4012392))))

(assert (=> d!2079611 (= res!2718837 (= (content!12685 lt!2419323) ((_ map or) (content!12685 (++!14649 Nil!65674 (Cons!65674 (h!72122 s!2326) Nil!65674))) (content!12685 (t!379462 s!2326)))))))

(assert (=> d!2079611 (= lt!2419323 e!4012393)))

(declare-fun c!1223641 () Bool)

(assert (=> d!2079611 (= c!1223641 ((_ is Nil!65674) (++!14649 Nil!65674 (Cons!65674 (h!72122 s!2326) Nil!65674))))))

(assert (=> d!2079611 (= (++!14649 (++!14649 Nil!65674 (Cons!65674 (h!72122 s!2326) Nil!65674)) (t!379462 s!2326)) lt!2419323)))

(declare-fun b!6634078 () Bool)

(assert (=> b!6634078 (= e!4012393 (Cons!65674 (h!72122 (++!14649 Nil!65674 (Cons!65674 (h!72122 s!2326) Nil!65674))) (++!14649 (t!379462 (++!14649 Nil!65674 (Cons!65674 (h!72122 s!2326) Nil!65674))) (t!379462 s!2326))))))

(declare-fun b!6634080 () Bool)

(assert (=> b!6634080 (= e!4012392 (or (not (= (t!379462 s!2326) Nil!65674)) (= lt!2419323 (++!14649 Nil!65674 (Cons!65674 (h!72122 s!2326) Nil!65674)))))))

(assert (= (and d!2079611 c!1223641) b!6634077))

(assert (= (and d!2079611 (not c!1223641)) b!6634078))

(assert (= (and d!2079611 res!2718837) b!6634079))

(assert (= (and b!6634079 res!2718836) b!6634080))

(declare-fun m!7402380 () Bool)

(assert (=> b!6634079 m!7402380))

(assert (=> b!6634079 m!7402004))

(declare-fun m!7402382 () Bool)

(assert (=> b!6634079 m!7402382))

(declare-fun m!7402384 () Bool)

(assert (=> b!6634079 m!7402384))

(declare-fun m!7402386 () Bool)

(assert (=> d!2079611 m!7402386))

(assert (=> d!2079611 m!7402004))

(declare-fun m!7402388 () Bool)

(assert (=> d!2079611 m!7402388))

(declare-fun m!7402390 () Bool)

(assert (=> d!2079611 m!7402390))

(declare-fun m!7402392 () Bool)

(assert (=> b!6634078 m!7402392))

(assert (=> b!6633545 d!2079611))

(declare-fun b!6634081 () Bool)

(declare-fun e!4012395 () List!65798)

(assert (=> b!6634081 (= e!4012395 (Cons!65674 (h!72122 s!2326) Nil!65674))))

(declare-fun b!6634083 () Bool)

(declare-fun res!2718838 () Bool)

(declare-fun e!4012394 () Bool)

(assert (=> b!6634083 (=> (not res!2718838) (not e!4012394))))

(declare-fun lt!2419324 () List!65798)

(assert (=> b!6634083 (= res!2718838 (= (size!40557 lt!2419324) (+ (size!40557 Nil!65674) (size!40557 (Cons!65674 (h!72122 s!2326) Nil!65674)))))))

(declare-fun d!2079613 () Bool)

(assert (=> d!2079613 e!4012394))

(declare-fun res!2718839 () Bool)

(assert (=> d!2079613 (=> (not res!2718839) (not e!4012394))))

(assert (=> d!2079613 (= res!2718839 (= (content!12685 lt!2419324) ((_ map or) (content!12685 Nil!65674) (content!12685 (Cons!65674 (h!72122 s!2326) Nil!65674)))))))

(assert (=> d!2079613 (= lt!2419324 e!4012395)))

(declare-fun c!1223642 () Bool)

(assert (=> d!2079613 (= c!1223642 ((_ is Nil!65674) Nil!65674))))

(assert (=> d!2079613 (= (++!14649 Nil!65674 (Cons!65674 (h!72122 s!2326) Nil!65674)) lt!2419324)))

(declare-fun b!6634082 () Bool)

(assert (=> b!6634082 (= e!4012395 (Cons!65674 (h!72122 Nil!65674) (++!14649 (t!379462 Nil!65674) (Cons!65674 (h!72122 s!2326) Nil!65674))))))

(declare-fun b!6634084 () Bool)

(assert (=> b!6634084 (= e!4012394 (or (not (= (Cons!65674 (h!72122 s!2326) Nil!65674) Nil!65674)) (= lt!2419324 Nil!65674)))))

(assert (= (and d!2079613 c!1223642) b!6634081))

(assert (= (and d!2079613 (not c!1223642)) b!6634082))

(assert (= (and d!2079613 res!2718839) b!6634083))

(assert (= (and b!6634083 res!2718838) b!6634084))

(declare-fun m!7402394 () Bool)

(assert (=> b!6634083 m!7402394))

(declare-fun m!7402396 () Bool)

(assert (=> b!6634083 m!7402396))

(declare-fun m!7402398 () Bool)

(assert (=> b!6634083 m!7402398))

(declare-fun m!7402400 () Bool)

(assert (=> d!2079613 m!7402400))

(declare-fun m!7402402 () Bool)

(assert (=> d!2079613 m!7402402))

(declare-fun m!7402404 () Bool)

(assert (=> d!2079613 m!7402404))

(declare-fun m!7402406 () Bool)

(assert (=> b!6634082 m!7402406))

(assert (=> b!6633545 d!2079613))

(declare-fun d!2079615 () Bool)

(assert (=> d!2079615 (= (++!14649 (++!14649 Nil!65674 (Cons!65674 (h!72122 s!2326) Nil!65674)) (t!379462 s!2326)) s!2326)))

(declare-fun lt!2419327 () Unit!159351)

(declare-fun choose!49557 (List!65798 C!33268 List!65798 List!65798) Unit!159351)

(assert (=> d!2079615 (= lt!2419327 (choose!49557 Nil!65674 (h!72122 s!2326) (t!379462 s!2326) s!2326))))

(assert (=> d!2079615 (= (++!14649 Nil!65674 (Cons!65674 (h!72122 s!2326) (t!379462 s!2326))) s!2326)))

(assert (=> d!2079615 (= (lemmaMoveElementToOtherListKeepsConcatEq!2638 Nil!65674 (h!72122 s!2326) (t!379462 s!2326) s!2326) lt!2419327)))

(declare-fun bs!1704761 () Bool)

(assert (= bs!1704761 d!2079615))

(assert (=> bs!1704761 m!7402004))

(assert (=> bs!1704761 m!7402004))

(assert (=> bs!1704761 m!7402006))

(declare-fun m!7402408 () Bool)

(assert (=> bs!1704761 m!7402408))

(declare-fun m!7402410 () Bool)

(assert (=> bs!1704761 m!7402410))

(assert (=> b!6633545 d!2079615))

(declare-fun b!6634085 () Bool)

(declare-fun e!4012396 () Bool)

(assert (=> b!6634085 (= e!4012396 (matchR!8682 (regTwo!33510 r!7292) (t!379462 s!2326)))))

(declare-fun b!6634086 () Bool)

(declare-fun res!2718840 () Bool)

(declare-fun e!4012400 () Bool)

(assert (=> b!6634086 (=> (not res!2718840) (not e!4012400))))

(declare-fun lt!2419329 () Option!16390)

(assert (=> b!6634086 (= res!2718840 (matchR!8682 (regOne!33510 r!7292) (_1!36781 (get!22830 lt!2419329))))))

(declare-fun b!6634087 () Bool)

(declare-fun res!2718843 () Bool)

(assert (=> b!6634087 (=> (not res!2718843) (not e!4012400))))

(assert (=> b!6634087 (= res!2718843 (matchR!8682 (regTwo!33510 r!7292) (_2!36781 (get!22830 lt!2419329))))))

(declare-fun b!6634088 () Bool)

(declare-fun e!4012397 () Bool)

(assert (=> b!6634088 (= e!4012397 (not (isDefined!13093 lt!2419329)))))

(declare-fun b!6634089 () Bool)

(declare-fun e!4012398 () Option!16390)

(assert (=> b!6634089 (= e!4012398 (Some!16389 (tuple2!66957 (++!14649 Nil!65674 (Cons!65674 (h!72122 s!2326) Nil!65674)) (t!379462 s!2326))))))

(declare-fun b!6634090 () Bool)

(declare-fun lt!2419328 () Unit!159351)

(declare-fun lt!2419330 () Unit!159351)

(assert (=> b!6634090 (= lt!2419328 lt!2419330)))

(assert (=> b!6634090 (= (++!14649 (++!14649 (++!14649 Nil!65674 (Cons!65674 (h!72122 s!2326) Nil!65674)) (Cons!65674 (h!72122 (t!379462 s!2326)) Nil!65674)) (t!379462 (t!379462 s!2326))) s!2326)))

(assert (=> b!6634090 (= lt!2419330 (lemmaMoveElementToOtherListKeepsConcatEq!2638 (++!14649 Nil!65674 (Cons!65674 (h!72122 s!2326) Nil!65674)) (h!72122 (t!379462 s!2326)) (t!379462 (t!379462 s!2326)) s!2326))))

(declare-fun e!4012399 () Option!16390)

(assert (=> b!6634090 (= e!4012399 (findConcatSeparation!2804 (regOne!33510 r!7292) (regTwo!33510 r!7292) (++!14649 (++!14649 Nil!65674 (Cons!65674 (h!72122 s!2326) Nil!65674)) (Cons!65674 (h!72122 (t!379462 s!2326)) Nil!65674)) (t!379462 (t!379462 s!2326)) s!2326))))

(declare-fun b!6634091 () Bool)

(assert (=> b!6634091 (= e!4012400 (= (++!14649 (_1!36781 (get!22830 lt!2419329)) (_2!36781 (get!22830 lt!2419329))) s!2326))))

(declare-fun d!2079617 () Bool)

(assert (=> d!2079617 e!4012397))

(declare-fun res!2718842 () Bool)

(assert (=> d!2079617 (=> res!2718842 e!4012397)))

(assert (=> d!2079617 (= res!2718842 e!4012400)))

(declare-fun res!2718844 () Bool)

(assert (=> d!2079617 (=> (not res!2718844) (not e!4012400))))

(assert (=> d!2079617 (= res!2718844 (isDefined!13093 lt!2419329))))

(assert (=> d!2079617 (= lt!2419329 e!4012398)))

(declare-fun c!1223643 () Bool)

(assert (=> d!2079617 (= c!1223643 e!4012396)))

(declare-fun res!2718841 () Bool)

(assert (=> d!2079617 (=> (not res!2718841) (not e!4012396))))

(assert (=> d!2079617 (= res!2718841 (matchR!8682 (regOne!33510 r!7292) (++!14649 Nil!65674 (Cons!65674 (h!72122 s!2326) Nil!65674))))))

(assert (=> d!2079617 (validRegex!8235 (regOne!33510 r!7292))))

(assert (=> d!2079617 (= (findConcatSeparation!2804 (regOne!33510 r!7292) (regTwo!33510 r!7292) (++!14649 Nil!65674 (Cons!65674 (h!72122 s!2326) Nil!65674)) (t!379462 s!2326) s!2326) lt!2419329)))

(declare-fun b!6634092 () Bool)

(assert (=> b!6634092 (= e!4012399 None!16389)))

(declare-fun b!6634093 () Bool)

(assert (=> b!6634093 (= e!4012398 e!4012399)))

(declare-fun c!1223644 () Bool)

(assert (=> b!6634093 (= c!1223644 ((_ is Nil!65674) (t!379462 s!2326)))))

(assert (= (and d!2079617 res!2718841) b!6634085))

(assert (= (and d!2079617 c!1223643) b!6634089))

(assert (= (and d!2079617 (not c!1223643)) b!6634093))

(assert (= (and b!6634093 c!1223644) b!6634092))

(assert (= (and b!6634093 (not c!1223644)) b!6634090))

(assert (= (and d!2079617 res!2718844) b!6634086))

(assert (= (and b!6634086 res!2718840) b!6634087))

(assert (= (and b!6634087 res!2718843) b!6634091))

(assert (= (and d!2079617 (not res!2718842)) b!6634088))

(declare-fun m!7402412 () Bool)

(assert (=> b!6634085 m!7402412))

(assert (=> b!6634090 m!7402004))

(declare-fun m!7402414 () Bool)

(assert (=> b!6634090 m!7402414))

(assert (=> b!6634090 m!7402414))

(declare-fun m!7402416 () Bool)

(assert (=> b!6634090 m!7402416))

(assert (=> b!6634090 m!7402004))

(declare-fun m!7402418 () Bool)

(assert (=> b!6634090 m!7402418))

(assert (=> b!6634090 m!7402414))

(declare-fun m!7402420 () Bool)

(assert (=> b!6634090 m!7402420))

(declare-fun m!7402422 () Bool)

(assert (=> b!6634087 m!7402422))

(declare-fun m!7402424 () Bool)

(assert (=> b!6634087 m!7402424))

(declare-fun m!7402426 () Bool)

(assert (=> d!2079617 m!7402426))

(assert (=> d!2079617 m!7402004))

(declare-fun m!7402428 () Bool)

(assert (=> d!2079617 m!7402428))

(assert (=> d!2079617 m!7401784))

(assert (=> b!6634086 m!7402422))

(declare-fun m!7402430 () Bool)

(assert (=> b!6634086 m!7402430))

(assert (=> b!6634088 m!7402426))

(assert (=> b!6634091 m!7402422))

(declare-fun m!7402432 () Bool)

(assert (=> b!6634091 m!7402432))

(assert (=> b!6633545 d!2079617))

(assert (=> b!6633193 d!2079513))

(declare-fun d!2079619 () Bool)

(declare-fun c!1223645 () Bool)

(assert (=> d!2079619 (= c!1223645 (isEmpty!37969 (tail!12524 s!2326)))))

(declare-fun e!4012401 () Bool)

(assert (=> d!2079619 (= (matchZipper!2511 (derivationStepZipper!2465 lt!2419202 (head!13439 s!2326)) (tail!12524 s!2326)) e!4012401)))

(declare-fun b!6634094 () Bool)

(assert (=> b!6634094 (= e!4012401 (nullableZipper!2239 (derivationStepZipper!2465 lt!2419202 (head!13439 s!2326))))))

(declare-fun b!6634095 () Bool)

(assert (=> b!6634095 (= e!4012401 (matchZipper!2511 (derivationStepZipper!2465 (derivationStepZipper!2465 lt!2419202 (head!13439 s!2326)) (head!13439 (tail!12524 s!2326))) (tail!12524 (tail!12524 s!2326))))))

(assert (= (and d!2079619 c!1223645) b!6634094))

(assert (= (and d!2079619 (not c!1223645)) b!6634095))

(assert (=> d!2079619 m!7401676))

(assert (=> d!2079619 m!7401680))

(assert (=> b!6634094 m!7401742))

(declare-fun m!7402434 () Bool)

(assert (=> b!6634094 m!7402434))

(assert (=> b!6634095 m!7401676))

(assert (=> b!6634095 m!7402256))

(assert (=> b!6634095 m!7401742))

(assert (=> b!6634095 m!7402256))

(declare-fun m!7402436 () Bool)

(assert (=> b!6634095 m!7402436))

(assert (=> b!6634095 m!7401676))

(assert (=> b!6634095 m!7402260))

(assert (=> b!6634095 m!7402436))

(assert (=> b!6634095 m!7402260))

(declare-fun m!7402438 () Bool)

(assert (=> b!6634095 m!7402438))

(assert (=> b!6633202 d!2079619))

(declare-fun bs!1704762 () Bool)

(declare-fun d!2079621 () Bool)

(assert (= bs!1704762 (and d!2079621 b!6632928)))

(declare-fun lambda!370656 () Int)

(assert (=> bs!1704762 (= (= (head!13439 s!2326) (h!72122 s!2326)) (= lambda!370656 lambda!370573))))

(declare-fun bs!1704763 () Bool)

(assert (= bs!1704763 (and d!2079621 d!2079297)))

(assert (=> bs!1704763 (= (= (head!13439 s!2326) (h!72122 s!2326)) (= lambda!370656 lambda!370576))))

(declare-fun bs!1704764 () Bool)

(assert (= bs!1704764 (and d!2079621 d!2079393)))

(assert (=> bs!1704764 (= (= (head!13439 s!2326) (h!72122 s!2326)) (= lambda!370656 lambda!370612))))

(declare-fun bs!1704765 () Bool)

(assert (= bs!1704765 (and d!2079621 d!2079563)))

(assert (=> bs!1704765 (= (= (head!13439 s!2326) (head!13439 (t!379462 s!2326))) (= lambda!370656 lambda!370653))))

(assert (=> d!2079621 true))

(assert (=> d!2079621 (= (derivationStepZipper!2465 lt!2419202 (head!13439 s!2326)) (flatMap!2004 lt!2419202 lambda!370656))))

(declare-fun bs!1704766 () Bool)

(assert (= bs!1704766 d!2079621))

(declare-fun m!7402440 () Bool)

(assert (=> bs!1704766 m!7402440))

(assert (=> b!6633202 d!2079621))

(assert (=> b!6633202 d!2079513))

(assert (=> b!6633202 d!2079495))

(declare-fun d!2079625 () Bool)

(assert (=> d!2079625 (= (isEmpty!37968 (t!379460 (t!379460 (exprs!6383 (h!72121 zl!343))))) ((_ is Nil!65672) (t!379460 (t!379460 (exprs!6383 (h!72121 zl!343))))))))

(assert (=> b!6633217 d!2079625))

(declare-fun bm!582331 () Bool)

(declare-fun call!582337 () List!65796)

(declare-fun call!582338 () List!65796)

(assert (=> bm!582331 (= call!582337 call!582338)))

(declare-fun b!6634098 () Bool)

(declare-fun e!4012406 () (InoxSet Context!11766))

(declare-fun call!582336 () (InoxSet Context!11766))

(assert (=> b!6634098 (= e!4012406 call!582336)))

(declare-fun bm!582332 () Bool)

(declare-fun call!582340 () (InoxSet Context!11766))

(declare-fun call!582341 () (InoxSet Context!11766))

(assert (=> bm!582332 (= call!582340 call!582341)))

(declare-fun b!6634099 () Bool)

(declare-fun e!4012405 () (InoxSet Context!11766))

(declare-fun e!4012403 () (InoxSet Context!11766))

(assert (=> b!6634099 (= e!4012405 e!4012403)))

(declare-fun c!1223650 () Bool)

(assert (=> b!6634099 (= c!1223650 ((_ is Union!16499) (ite c!1223473 (regTwo!33511 (h!72120 (exprs!6383 (h!72121 zl!343)))) (ite c!1223471 (regTwo!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))) (ite c!1223470 (regOne!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))) (reg!16828 (h!72120 (exprs!6383 (h!72121 zl!343)))))))))))

(declare-fun d!2079627 () Bool)

(declare-fun c!1223649 () Bool)

(assert (=> d!2079627 (= c!1223649 (and ((_ is ElementMatch!16499) (ite c!1223473 (regTwo!33511 (h!72120 (exprs!6383 (h!72121 zl!343)))) (ite c!1223471 (regTwo!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))) (ite c!1223470 (regOne!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))) (reg!16828 (h!72120 (exprs!6383 (h!72121 zl!343)))))))) (= (c!1223326 (ite c!1223473 (regTwo!33511 (h!72120 (exprs!6383 (h!72121 zl!343)))) (ite c!1223471 (regTwo!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))) (ite c!1223470 (regOne!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))) (reg!16828 (h!72120 (exprs!6383 (h!72121 zl!343)))))))) (h!72122 s!2326))))))

(assert (=> d!2079627 (= (derivationStepZipperDown!1747 (ite c!1223473 (regTwo!33511 (h!72120 (exprs!6383 (h!72121 zl!343)))) (ite c!1223471 (regTwo!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))) (ite c!1223470 (regOne!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))) (reg!16828 (h!72120 (exprs!6383 (h!72121 zl!343))))))) (ite (or c!1223473 c!1223471) lt!2419182 (Context!11767 call!582236)) (h!72122 s!2326)) e!4012405)))

(declare-fun b!6634100 () Bool)

(assert (=> b!6634100 (= e!4012405 (store ((as const (Array Context!11766 Bool)) false) (ite (or c!1223473 c!1223471) lt!2419182 (Context!11767 call!582236)) true))))

(declare-fun b!6634101 () Bool)

(declare-fun c!1223648 () Bool)

(declare-fun e!4012407 () Bool)

(assert (=> b!6634101 (= c!1223648 e!4012407)))

(declare-fun res!2718845 () Bool)

(assert (=> b!6634101 (=> (not res!2718845) (not e!4012407))))

(assert (=> b!6634101 (= res!2718845 ((_ is Concat!25344) (ite c!1223473 (regTwo!33511 (h!72120 (exprs!6383 (h!72121 zl!343)))) (ite c!1223471 (regTwo!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))) (ite c!1223470 (regOne!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))) (reg!16828 (h!72120 (exprs!6383 (h!72121 zl!343)))))))))))

(declare-fun e!4012404 () (InoxSet Context!11766))

(assert (=> b!6634101 (= e!4012403 e!4012404)))

(declare-fun b!6634102 () Bool)

(assert (=> b!6634102 (= e!4012404 e!4012406)))

(declare-fun c!1223647 () Bool)

(assert (=> b!6634102 (= c!1223647 ((_ is Concat!25344) (ite c!1223473 (regTwo!33511 (h!72120 (exprs!6383 (h!72121 zl!343)))) (ite c!1223471 (regTwo!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))) (ite c!1223470 (regOne!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))) (reg!16828 (h!72120 (exprs!6383 (h!72121 zl!343)))))))))))

(declare-fun b!6634103 () Bool)

(declare-fun call!582339 () (InoxSet Context!11766))

(assert (=> b!6634103 (= e!4012403 ((_ map or) call!582339 call!582341))))

(declare-fun b!6634104 () Bool)

(assert (=> b!6634104 (= e!4012407 (nullable!6492 (regOne!33510 (ite c!1223473 (regTwo!33511 (h!72120 (exprs!6383 (h!72121 zl!343)))) (ite c!1223471 (regTwo!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))) (ite c!1223470 (regOne!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))) (reg!16828 (h!72120 (exprs!6383 (h!72121 zl!343))))))))))))

(declare-fun bm!582333 () Bool)

(assert (=> bm!582333 (= call!582339 (derivationStepZipperDown!1747 (ite c!1223650 (regOne!33511 (ite c!1223473 (regTwo!33511 (h!72120 (exprs!6383 (h!72121 zl!343)))) (ite c!1223471 (regTwo!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))) (ite c!1223470 (regOne!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))) (reg!16828 (h!72120 (exprs!6383 (h!72121 zl!343)))))))) (regOne!33510 (ite c!1223473 (regTwo!33511 (h!72120 (exprs!6383 (h!72121 zl!343)))) (ite c!1223471 (regTwo!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))) (ite c!1223470 (regOne!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))) (reg!16828 (h!72120 (exprs!6383 (h!72121 zl!343))))))))) (ite c!1223650 (ite (or c!1223473 c!1223471) lt!2419182 (Context!11767 call!582236)) (Context!11767 call!582338)) (h!72122 s!2326)))))

(declare-fun b!6634105 () Bool)

(declare-fun e!4012408 () (InoxSet Context!11766))

(assert (=> b!6634105 (= e!4012408 ((as const (Array Context!11766 Bool)) false))))

(declare-fun bm!582334 () Bool)

(assert (=> bm!582334 (= call!582338 ($colon$colon!2336 (exprs!6383 (ite (or c!1223473 c!1223471) lt!2419182 (Context!11767 call!582236))) (ite (or c!1223648 c!1223647) (regTwo!33510 (ite c!1223473 (regTwo!33511 (h!72120 (exprs!6383 (h!72121 zl!343)))) (ite c!1223471 (regTwo!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))) (ite c!1223470 (regOne!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))) (reg!16828 (h!72120 (exprs!6383 (h!72121 zl!343)))))))) (ite c!1223473 (regTwo!33511 (h!72120 (exprs!6383 (h!72121 zl!343)))) (ite c!1223471 (regTwo!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))) (ite c!1223470 (regOne!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))) (reg!16828 (h!72120 (exprs!6383 (h!72121 zl!343))))))))))))

(declare-fun b!6634106 () Bool)

(assert (=> b!6634106 (= e!4012408 call!582336)))

(declare-fun bm!582335 () Bool)

(assert (=> bm!582335 (= call!582341 (derivationStepZipperDown!1747 (ite c!1223650 (regTwo!33511 (ite c!1223473 (regTwo!33511 (h!72120 (exprs!6383 (h!72121 zl!343)))) (ite c!1223471 (regTwo!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))) (ite c!1223470 (regOne!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))) (reg!16828 (h!72120 (exprs!6383 (h!72121 zl!343)))))))) (ite c!1223648 (regTwo!33510 (ite c!1223473 (regTwo!33511 (h!72120 (exprs!6383 (h!72121 zl!343)))) (ite c!1223471 (regTwo!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))) (ite c!1223470 (regOne!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))) (reg!16828 (h!72120 (exprs!6383 (h!72121 zl!343)))))))) (ite c!1223647 (regOne!33510 (ite c!1223473 (regTwo!33511 (h!72120 (exprs!6383 (h!72121 zl!343)))) (ite c!1223471 (regTwo!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))) (ite c!1223470 (regOne!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))) (reg!16828 (h!72120 (exprs!6383 (h!72121 zl!343)))))))) (reg!16828 (ite c!1223473 (regTwo!33511 (h!72120 (exprs!6383 (h!72121 zl!343)))) (ite c!1223471 (regTwo!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))) (ite c!1223470 (regOne!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))) (reg!16828 (h!72120 (exprs!6383 (h!72121 zl!343))))))))))) (ite (or c!1223650 c!1223648) (ite (or c!1223473 c!1223471) lt!2419182 (Context!11767 call!582236)) (Context!11767 call!582337)) (h!72122 s!2326)))))

(declare-fun b!6634107 () Bool)

(declare-fun c!1223651 () Bool)

(assert (=> b!6634107 (= c!1223651 ((_ is Star!16499) (ite c!1223473 (regTwo!33511 (h!72120 (exprs!6383 (h!72121 zl!343)))) (ite c!1223471 (regTwo!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))) (ite c!1223470 (regOne!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))) (reg!16828 (h!72120 (exprs!6383 (h!72121 zl!343)))))))))))

(assert (=> b!6634107 (= e!4012406 e!4012408)))

(declare-fun b!6634108 () Bool)

(assert (=> b!6634108 (= e!4012404 ((_ map or) call!582339 call!582340))))

(declare-fun bm!582336 () Bool)

(assert (=> bm!582336 (= call!582336 call!582340)))

(assert (= (and d!2079627 c!1223649) b!6634100))

(assert (= (and d!2079627 (not c!1223649)) b!6634099))

(assert (= (and b!6634099 c!1223650) b!6634103))

(assert (= (and b!6634099 (not c!1223650)) b!6634101))

(assert (= (and b!6634101 res!2718845) b!6634104))

(assert (= (and b!6634101 c!1223648) b!6634108))

(assert (= (and b!6634101 (not c!1223648)) b!6634102))

(assert (= (and b!6634102 c!1223647) b!6634098))

(assert (= (and b!6634102 (not c!1223647)) b!6634107))

(assert (= (and b!6634107 c!1223651) b!6634106))

(assert (= (and b!6634107 (not c!1223651)) b!6634105))

(assert (= (or b!6634098 b!6634106) bm!582331))

(assert (= (or b!6634098 b!6634106) bm!582336))

(assert (= (or b!6634108 bm!582331) bm!582334))

(assert (= (or b!6634108 bm!582336) bm!582332))

(assert (= (or b!6634103 bm!582332) bm!582335))

(assert (= (or b!6634103 b!6634108) bm!582333))

(declare-fun m!7402456 () Bool)

(assert (=> bm!582333 m!7402456))

(declare-fun m!7402458 () Bool)

(assert (=> b!6634104 m!7402458))

(declare-fun m!7402460 () Bool)

(assert (=> bm!582334 m!7402460))

(declare-fun m!7402462 () Bool)

(assert (=> b!6634100 m!7402462))

(declare-fun m!7402464 () Bool)

(assert (=> bm!582335 m!7402464))

(assert (=> bm!582234 d!2079627))

(assert (=> bm!582207 d!2079499))

(assert (=> b!6633196 d!2079493))

(assert (=> b!6633196 d!2079495))

(assert (=> bs!1704666 d!2079377))

(assert (=> d!2079443 d!2079417))

(declare-fun d!2079633 () Bool)

(assert (=> d!2079633 (= (Exists!3569 lambda!370642) (choose!49554 lambda!370642))))

(declare-fun bs!1704771 () Bool)

(assert (= bs!1704771 d!2079633))

(declare-fun m!7402466 () Bool)

(assert (=> bs!1704771 m!7402466))

(assert (=> d!2079443 d!2079633))

(declare-fun bm!582337 () Bool)

(declare-fun call!582343 () Bool)

(declare-fun c!1223652 () Bool)

(assert (=> bm!582337 (= call!582343 (validRegex!8235 (ite c!1223652 (regTwo!33511 (regOne!33510 r!7292)) (regTwo!33510 (regOne!33510 r!7292)))))))

(declare-fun d!2079635 () Bool)

(declare-fun res!2718847 () Bool)

(declare-fun e!4012414 () Bool)

(assert (=> d!2079635 (=> res!2718847 e!4012414)))

(assert (=> d!2079635 (= res!2718847 ((_ is ElementMatch!16499) (regOne!33510 r!7292)))))

(assert (=> d!2079635 (= (validRegex!8235 (regOne!33510 r!7292)) e!4012414)))

(declare-fun bm!582338 () Bool)

(declare-fun call!582344 () Bool)

(declare-fun call!582342 () Bool)

(assert (=> bm!582338 (= call!582344 call!582342)))

(declare-fun bm!582339 () Bool)

(declare-fun c!1223653 () Bool)

(assert (=> bm!582339 (= call!582342 (validRegex!8235 (ite c!1223653 (reg!16828 (regOne!33510 r!7292)) (ite c!1223652 (regOne!33511 (regOne!33510 r!7292)) (regOne!33510 (regOne!33510 r!7292))))))))

(declare-fun b!6634109 () Bool)

(declare-fun e!4012412 () Bool)

(declare-fun e!4012415 () Bool)

(assert (=> b!6634109 (= e!4012412 e!4012415)))

(declare-fun res!2718850 () Bool)

(assert (=> b!6634109 (= res!2718850 (not (nullable!6492 (reg!16828 (regOne!33510 r!7292)))))))

(assert (=> b!6634109 (=> (not res!2718850) (not e!4012415))))

(declare-fun b!6634110 () Bool)

(declare-fun res!2718848 () Bool)

(declare-fun e!4012411 () Bool)

(assert (=> b!6634110 (=> res!2718848 e!4012411)))

(assert (=> b!6634110 (= res!2718848 (not ((_ is Concat!25344) (regOne!33510 r!7292))))))

(declare-fun e!4012410 () Bool)

(assert (=> b!6634110 (= e!4012410 e!4012411)))

(declare-fun b!6634111 () Bool)

(declare-fun e!4012413 () Bool)

(assert (=> b!6634111 (= e!4012413 call!582343)))

(declare-fun b!6634112 () Bool)

(declare-fun e!4012409 () Bool)

(assert (=> b!6634112 (= e!4012409 call!582343)))

(declare-fun b!6634113 () Bool)

(assert (=> b!6634113 (= e!4012411 e!4012413)))

(declare-fun res!2718849 () Bool)

(assert (=> b!6634113 (=> (not res!2718849) (not e!4012413))))

(assert (=> b!6634113 (= res!2718849 call!582344)))

(declare-fun b!6634114 () Bool)

(assert (=> b!6634114 (= e!4012412 e!4012410)))

(assert (=> b!6634114 (= c!1223652 ((_ is Union!16499) (regOne!33510 r!7292)))))

(declare-fun b!6634115 () Bool)

(declare-fun res!2718846 () Bool)

(assert (=> b!6634115 (=> (not res!2718846) (not e!4012409))))

(assert (=> b!6634115 (= res!2718846 call!582344)))

(assert (=> b!6634115 (= e!4012410 e!4012409)))

(declare-fun b!6634116 () Bool)

(assert (=> b!6634116 (= e!4012415 call!582342)))

(declare-fun b!6634117 () Bool)

(assert (=> b!6634117 (= e!4012414 e!4012412)))

(assert (=> b!6634117 (= c!1223653 ((_ is Star!16499) (regOne!33510 r!7292)))))

(assert (= (and d!2079635 (not res!2718847)) b!6634117))

(assert (= (and b!6634117 c!1223653) b!6634109))

(assert (= (and b!6634117 (not c!1223653)) b!6634114))

(assert (= (and b!6634109 res!2718850) b!6634116))

(assert (= (and b!6634114 c!1223652) b!6634115))

(assert (= (and b!6634114 (not c!1223652)) b!6634110))

(assert (= (and b!6634115 res!2718846) b!6634112))

(assert (= (and b!6634110 (not res!2718848)) b!6634113))

(assert (= (and b!6634113 res!2718849) b!6634111))

(assert (= (or b!6634112 b!6634111) bm!582337))

(assert (= (or b!6634115 b!6634113) bm!582338))

(assert (= (or b!6634116 bm!582338) bm!582339))

(declare-fun m!7402468 () Bool)

(assert (=> bm!582337 m!7402468))

(declare-fun m!7402470 () Bool)

(assert (=> bm!582339 m!7402470))

(declare-fun m!7402472 () Bool)

(assert (=> b!6634109 m!7402472))

(assert (=> d!2079443 d!2079635))

(assert (=> d!2079443 d!2079441))

(declare-fun bs!1704772 () Bool)

(declare-fun d!2079641 () Bool)

(assert (= bs!1704772 (and d!2079641 d!2079443)))

(declare-fun lambda!370660 () Int)

(assert (=> bs!1704772 (= lambda!370660 lambda!370642)))

(declare-fun bs!1704773 () Bool)

(assert (= bs!1704773 (and d!2079641 b!6633257)))

(assert (=> bs!1704773 (not (= lambda!370660 lambda!370601))))

(declare-fun bs!1704774 () Bool)

(assert (= bs!1704774 (and d!2079641 b!6633978)))

(assert (=> bs!1704774 (not (= lambda!370660 lambda!370655))))

(declare-fun bs!1704775 () Bool)

(assert (= bs!1704775 (and d!2079641 b!6633228)))

(assert (=> bs!1704775 (not (= lambda!370660 lambda!370597))))

(declare-fun bs!1704776 () Bool)

(assert (= bs!1704776 (and d!2079641 b!6633059)))

(assert (=> bs!1704776 (not (= lambda!370660 lambda!370581))))

(declare-fun bs!1704777 () Bool)

(assert (= bs!1704777 (and d!2079641 b!6633250)))

(assert (=> bs!1704777 (not (= lambda!370660 lambda!370600))))

(declare-fun bs!1704778 () Bool)

(assert (= bs!1704778 (and d!2079641 b!6633972)))

(assert (=> bs!1704778 (not (= lambda!370660 lambda!370654))))

(declare-fun bs!1704779 () Bool)

(assert (= bs!1704779 (and d!2079641 d!2079437)))

(assert (=> bs!1704779 (= lambda!370660 lambda!370636)))

(declare-fun bs!1704780 () Bool)

(assert (= bs!1704780 (and d!2079641 b!6633065)))

(assert (=> bs!1704780 (not (= lambda!370660 lambda!370582))))

(declare-fun bs!1704781 () Bool)

(assert (= bs!1704781 (and d!2079641 b!6632927)))

(assert (=> bs!1704781 (not (= lambda!370660 lambda!370572))))

(declare-fun bs!1704782 () Bool)

(assert (= bs!1704782 (and d!2079641 b!6633853)))

(assert (=> bs!1704782 (not (= lambda!370660 lambda!370650))))

(assert (=> bs!1704779 (not (= lambda!370660 lambda!370637))))

(declare-fun bs!1704783 () Bool)

(assert (= bs!1704783 (and d!2079641 b!6633847)))

(assert (=> bs!1704783 (not (= lambda!370660 lambda!370649))))

(assert (=> bs!1704781 (= lambda!370660 lambda!370571)))

(declare-fun bs!1704784 () Bool)

(assert (= bs!1704784 (and d!2079641 b!6633222)))

(assert (=> bs!1704784 (not (= lambda!370660 lambda!370596))))

(assert (=> d!2079641 true))

(assert (=> d!2079641 true))

(assert (=> d!2079641 true))

(assert (=> d!2079641 (= (isDefined!13093 (findConcatSeparation!2804 (regOne!33510 r!7292) (regTwo!33510 r!7292) Nil!65674 s!2326 s!2326)) (Exists!3569 lambda!370660))))

(assert (=> d!2079641 true))

(declare-fun _$89!2848 () Unit!159351)

(assert (=> d!2079641 (= (choose!49556 (regOne!33510 r!7292) (regTwo!33510 r!7292) s!2326) _$89!2848)))

(declare-fun bs!1704785 () Bool)

(assert (= bs!1704785 d!2079641))

(assert (=> bs!1704785 m!7401494))

(assert (=> bs!1704785 m!7401494))

(assert (=> bs!1704785 m!7401496))

(declare-fun m!7402500 () Bool)

(assert (=> bs!1704785 m!7402500))

(assert (=> d!2079443 d!2079641))

(declare-fun d!2079655 () Bool)

(declare-fun lambda!370664 () Int)

(declare-fun exists!2669 ((InoxSet Context!11766) Int) Bool)

(assert (=> d!2079655 (= (nullableZipper!2239 ((_ map or) lt!2419195 lt!2419198)) (exists!2669 ((_ map or) lt!2419195 lt!2419198) lambda!370664))))

(declare-fun bs!1704791 () Bool)

(assert (= bs!1704791 d!2079655))

(declare-fun m!7402508 () Bool)

(assert (=> bs!1704791 m!7402508))

(assert (=> b!6632950 d!2079655))

(declare-fun bm!582347 () Bool)

(declare-fun call!582353 () Bool)

(declare-fun c!1223669 () Bool)

(assert (=> bm!582347 (= call!582353 (validRegex!8235 (ite c!1223669 (regTwo!33511 lt!2419243) (regTwo!33510 lt!2419243))))))

(declare-fun d!2079661 () Bool)

(declare-fun res!2718872 () Bool)

(declare-fun e!4012449 () Bool)

(assert (=> d!2079661 (=> res!2718872 e!4012449)))

(assert (=> d!2079661 (= res!2718872 ((_ is ElementMatch!16499) lt!2419243))))

(assert (=> d!2079661 (= (validRegex!8235 lt!2419243) e!4012449)))

(declare-fun bm!582348 () Bool)

(declare-fun call!582354 () Bool)

(declare-fun call!582352 () Bool)

(assert (=> bm!582348 (= call!582354 call!582352)))

(declare-fun bm!582349 () Bool)

(declare-fun c!1223670 () Bool)

(assert (=> bm!582349 (= call!582352 (validRegex!8235 (ite c!1223670 (reg!16828 lt!2419243) (ite c!1223669 (regOne!33511 lt!2419243) (regOne!33510 lt!2419243)))))))

(declare-fun b!6634164 () Bool)

(declare-fun e!4012447 () Bool)

(declare-fun e!4012450 () Bool)

(assert (=> b!6634164 (= e!4012447 e!4012450)))

(declare-fun res!2718875 () Bool)

(assert (=> b!6634164 (= res!2718875 (not (nullable!6492 (reg!16828 lt!2419243))))))

(assert (=> b!6634164 (=> (not res!2718875) (not e!4012450))))

(declare-fun b!6634165 () Bool)

(declare-fun res!2718873 () Bool)

(declare-fun e!4012446 () Bool)

(assert (=> b!6634165 (=> res!2718873 e!4012446)))

(assert (=> b!6634165 (= res!2718873 (not ((_ is Concat!25344) lt!2419243)))))

(declare-fun e!4012445 () Bool)

(assert (=> b!6634165 (= e!4012445 e!4012446)))

(declare-fun b!6634166 () Bool)

(declare-fun e!4012448 () Bool)

(assert (=> b!6634166 (= e!4012448 call!582353)))

(declare-fun b!6634167 () Bool)

(declare-fun e!4012444 () Bool)

(assert (=> b!6634167 (= e!4012444 call!582353)))

(declare-fun b!6634168 () Bool)

(assert (=> b!6634168 (= e!4012446 e!4012448)))

(declare-fun res!2718874 () Bool)

(assert (=> b!6634168 (=> (not res!2718874) (not e!4012448))))

(assert (=> b!6634168 (= res!2718874 call!582354)))

(declare-fun b!6634169 () Bool)

(assert (=> b!6634169 (= e!4012447 e!4012445)))

(assert (=> b!6634169 (= c!1223669 ((_ is Union!16499) lt!2419243))))

(declare-fun b!6634170 () Bool)

(declare-fun res!2718871 () Bool)

(assert (=> b!6634170 (=> (not res!2718871) (not e!4012444))))

(assert (=> b!6634170 (= res!2718871 call!582354)))

(assert (=> b!6634170 (= e!4012445 e!4012444)))

(declare-fun b!6634171 () Bool)

(assert (=> b!6634171 (= e!4012450 call!582352)))

(declare-fun b!6634172 () Bool)

(assert (=> b!6634172 (= e!4012449 e!4012447)))

(assert (=> b!6634172 (= c!1223670 ((_ is Star!16499) lt!2419243))))

(assert (= (and d!2079661 (not res!2718872)) b!6634172))

(assert (= (and b!6634172 c!1223670) b!6634164))

(assert (= (and b!6634172 (not c!1223670)) b!6634169))

(assert (= (and b!6634164 res!2718875) b!6634171))

(assert (= (and b!6634169 c!1223669) b!6634170))

(assert (= (and b!6634169 (not c!1223669)) b!6634165))

(assert (= (and b!6634170 res!2718871) b!6634167))

(assert (= (and b!6634165 (not res!2718873)) b!6634168))

(assert (= (and b!6634168 res!2718874) b!6634166))

(assert (= (or b!6634167 b!6634166) bm!582347))

(assert (= (or b!6634170 b!6634168) bm!582348))

(assert (= (or b!6634171 bm!582348) bm!582349))

(declare-fun m!7402510 () Bool)

(assert (=> bm!582347 m!7402510))

(declare-fun m!7402512 () Bool)

(assert (=> bm!582349 m!7402512))

(declare-fun m!7402514 () Bool)

(assert (=> b!6634164 m!7402514))

(assert (=> d!2079345 d!2079661))

(assert (=> d!2079345 d!2079405))

(assert (=> d!2079345 d!2079411))

(declare-fun d!2079663 () Bool)

(assert (=> d!2079663 (= (isEmpty!37968 (tail!12525 (unfocusZipperList!1920 zl!343))) ((_ is Nil!65672) (tail!12525 (unfocusZipperList!1920 zl!343))))))

(assert (=> b!6633476 d!2079663))

(declare-fun d!2079665 () Bool)

(assert (=> d!2079665 (= (tail!12525 (unfocusZipperList!1920 zl!343)) (t!379460 (unfocusZipperList!1920 zl!343)))))

(assert (=> b!6633476 d!2079665))

(declare-fun d!2079667 () Bool)

(assert (=> d!2079667 true))

(assert (=> d!2079667 true))

(declare-fun res!2718876 () Bool)

(assert (=> d!2079667 (= (choose!49554 lambda!370572) res!2718876)))

(assert (=> d!2079451 d!2079667))

(declare-fun d!2079669 () Bool)

(declare-fun c!1223671 () Bool)

(assert (=> d!2079669 (= c!1223671 (isEmpty!37969 (tail!12524 (t!379462 s!2326))))))

(declare-fun e!4012451 () Bool)

(assert (=> d!2079669 (= (matchZipper!2511 (derivationStepZipper!2465 lt!2419193 (head!13439 (t!379462 s!2326))) (tail!12524 (t!379462 s!2326))) e!4012451)))

(declare-fun b!6634173 () Bool)

(assert (=> b!6634173 (= e!4012451 (nullableZipper!2239 (derivationStepZipper!2465 lt!2419193 (head!13439 (t!379462 s!2326)))))))

(declare-fun b!6634174 () Bool)

(assert (=> b!6634174 (= e!4012451 (matchZipper!2511 (derivationStepZipper!2465 (derivationStepZipper!2465 lt!2419193 (head!13439 (t!379462 s!2326))) (head!13439 (tail!12524 (t!379462 s!2326)))) (tail!12524 (tail!12524 (t!379462 s!2326)))))))

(assert (= (and d!2079669 c!1223671) b!6634173))

(assert (= (and d!2079669 (not c!1223671)) b!6634174))

(assert (=> d!2079669 m!7401604))

(assert (=> d!2079669 m!7402276))

(assert (=> b!6634173 m!7402068))

(declare-fun m!7402516 () Bool)

(assert (=> b!6634173 m!7402516))

(assert (=> b!6634174 m!7401604))

(assert (=> b!6634174 m!7402280))

(assert (=> b!6634174 m!7402068))

(assert (=> b!6634174 m!7402280))

(declare-fun m!7402518 () Bool)

(assert (=> b!6634174 m!7402518))

(assert (=> b!6634174 m!7401604))

(assert (=> b!6634174 m!7402284))

(assert (=> b!6634174 m!7402518))

(assert (=> b!6634174 m!7402284))

(declare-fun m!7402520 () Bool)

(assert (=> b!6634174 m!7402520))

(assert (=> b!6633641 d!2079669))

(declare-fun bs!1704803 () Bool)

(declare-fun d!2079671 () Bool)

(assert (= bs!1704803 (and d!2079671 d!2079297)))

(declare-fun lambda!370666 () Int)

(assert (=> bs!1704803 (= (= (head!13439 (t!379462 s!2326)) (h!72122 s!2326)) (= lambda!370666 lambda!370576))))

(declare-fun bs!1704805 () Bool)

(assert (= bs!1704805 (and d!2079671 d!2079563)))

(assert (=> bs!1704805 (= lambda!370666 lambda!370653)))

(declare-fun bs!1704807 () Bool)

(assert (= bs!1704807 (and d!2079671 d!2079621)))

(assert (=> bs!1704807 (= (= (head!13439 (t!379462 s!2326)) (head!13439 s!2326)) (= lambda!370666 lambda!370656))))

(declare-fun bs!1704808 () Bool)

(assert (= bs!1704808 (and d!2079671 b!6632928)))

(assert (=> bs!1704808 (= (= (head!13439 (t!379462 s!2326)) (h!72122 s!2326)) (= lambda!370666 lambda!370573))))

(declare-fun bs!1704809 () Bool)

(assert (= bs!1704809 (and d!2079671 d!2079393)))

(assert (=> bs!1704809 (= (= (head!13439 (t!379462 s!2326)) (h!72122 s!2326)) (= lambda!370666 lambda!370612))))

(assert (=> d!2079671 true))

(assert (=> d!2079671 (= (derivationStepZipper!2465 lt!2419193 (head!13439 (t!379462 s!2326))) (flatMap!2004 lt!2419193 lambda!370666))))

(declare-fun bs!1704811 () Bool)

(assert (= bs!1704811 d!2079671))

(declare-fun m!7402522 () Bool)

(assert (=> bs!1704811 m!7402522))

(assert (=> b!6633641 d!2079671))

(assert (=> b!6633641 d!2079565))

(assert (=> b!6633641 d!2079567))

(declare-fun d!2079673 () Bool)

(assert (=> d!2079673 (= (isEmptyExpr!1872 lt!2419228) ((_ is EmptyExpr!16499) lt!2419228))))

(assert (=> b!6633178 d!2079673))

(assert (=> b!6633236 d!2079513))

(declare-fun bs!1704812 () Bool)

(declare-fun d!2079675 () Bool)

(assert (= bs!1704812 (and d!2079675 d!2079655)))

(declare-fun lambda!370667 () Int)

(assert (=> bs!1704812 (= lambda!370667 lambda!370664)))

(assert (=> d!2079675 (= (nullableZipper!2239 lt!2419198) (exists!2669 lt!2419198 lambda!370667))))

(declare-fun bs!1704813 () Bool)

(assert (= bs!1704813 d!2079675))

(declare-fun m!7402528 () Bool)

(assert (=> bs!1704813 m!7402528))

(assert (=> b!6633003 d!2079675))

(declare-fun d!2079677 () Bool)

(declare-fun c!1223672 () Bool)

(assert (=> d!2079677 (= c!1223672 (isEmpty!37969 (tail!12524 (t!379462 s!2326))))))

(declare-fun e!4012452 () Bool)

(assert (=> d!2079677 (= (matchZipper!2511 (derivationStepZipper!2465 lt!2419195 (head!13439 (t!379462 s!2326))) (tail!12524 (t!379462 s!2326))) e!4012452)))

(declare-fun b!6634175 () Bool)

(assert (=> b!6634175 (= e!4012452 (nullableZipper!2239 (derivationStepZipper!2465 lt!2419195 (head!13439 (t!379462 s!2326)))))))

(declare-fun b!6634176 () Bool)

(assert (=> b!6634176 (= e!4012452 (matchZipper!2511 (derivationStepZipper!2465 (derivationStepZipper!2465 lt!2419195 (head!13439 (t!379462 s!2326))) (head!13439 (tail!12524 (t!379462 s!2326)))) (tail!12524 (tail!12524 (t!379462 s!2326)))))))

(assert (= (and d!2079677 c!1223672) b!6634175))

(assert (= (and d!2079677 (not c!1223672)) b!6634176))

(assert (=> d!2079677 m!7401604))

(assert (=> d!2079677 m!7402276))

(assert (=> b!6634175 m!7401602))

(declare-fun m!7402534 () Bool)

(assert (=> b!6634175 m!7402534))

(assert (=> b!6634176 m!7401604))

(assert (=> b!6634176 m!7402280))

(assert (=> b!6634176 m!7401602))

(assert (=> b!6634176 m!7402280))

(declare-fun m!7402536 () Bool)

(assert (=> b!6634176 m!7402536))

(assert (=> b!6634176 m!7401604))

(assert (=> b!6634176 m!7402284))

(assert (=> b!6634176 m!7402536))

(assert (=> b!6634176 m!7402284))

(declare-fun m!7402538 () Bool)

(assert (=> b!6634176 m!7402538))

(assert (=> b!6632949 d!2079677))

(declare-fun bs!1704815 () Bool)

(declare-fun d!2079683 () Bool)

(assert (= bs!1704815 (and d!2079683 d!2079671)))

(declare-fun lambda!370668 () Int)

(assert (=> bs!1704815 (= lambda!370668 lambda!370666)))

(declare-fun bs!1704816 () Bool)

(assert (= bs!1704816 (and d!2079683 d!2079297)))

(assert (=> bs!1704816 (= (= (head!13439 (t!379462 s!2326)) (h!72122 s!2326)) (= lambda!370668 lambda!370576))))

(declare-fun bs!1704817 () Bool)

(assert (= bs!1704817 (and d!2079683 d!2079563)))

(assert (=> bs!1704817 (= lambda!370668 lambda!370653)))

(declare-fun bs!1704818 () Bool)

(assert (= bs!1704818 (and d!2079683 d!2079621)))

(assert (=> bs!1704818 (= (= (head!13439 (t!379462 s!2326)) (head!13439 s!2326)) (= lambda!370668 lambda!370656))))

(declare-fun bs!1704820 () Bool)

(assert (= bs!1704820 (and d!2079683 b!6632928)))

(assert (=> bs!1704820 (= (= (head!13439 (t!379462 s!2326)) (h!72122 s!2326)) (= lambda!370668 lambda!370573))))

(declare-fun bs!1704821 () Bool)

(assert (= bs!1704821 (and d!2079683 d!2079393)))

(assert (=> bs!1704821 (= (= (head!13439 (t!379462 s!2326)) (h!72122 s!2326)) (= lambda!370668 lambda!370612))))

(assert (=> d!2079683 true))

(assert (=> d!2079683 (= (derivationStepZipper!2465 lt!2419195 (head!13439 (t!379462 s!2326))) (flatMap!2004 lt!2419195 lambda!370668))))

(declare-fun bs!1704824 () Bool)

(assert (= bs!1704824 d!2079683))

(declare-fun m!7402546 () Bool)

(assert (=> bs!1704824 m!7402546))

(assert (=> b!6632949 d!2079683))

(assert (=> b!6632949 d!2079565))

(assert (=> b!6632949 d!2079567))

(declare-fun bs!1704827 () Bool)

(declare-fun b!6634180 () Bool)

(assert (= bs!1704827 (and b!6634180 d!2079443)))

(declare-fun lambda!370670 () Int)

(assert (=> bs!1704827 (not (= lambda!370670 lambda!370642))))

(declare-fun bs!1704828 () Bool)

(assert (= bs!1704828 (and b!6634180 b!6633257)))

(assert (=> bs!1704828 (not (= lambda!370670 lambda!370601))))

(declare-fun bs!1704829 () Bool)

(assert (= bs!1704829 (and b!6634180 b!6633978)))

(assert (=> bs!1704829 (not (= lambda!370670 lambda!370655))))

(declare-fun bs!1704830 () Bool)

(assert (= bs!1704830 (and b!6634180 b!6633228)))

(assert (=> bs!1704830 (not (= lambda!370670 lambda!370597))))

(declare-fun bs!1704831 () Bool)

(assert (= bs!1704831 (and b!6634180 b!6633059)))

(assert (=> bs!1704831 (= (and (= (reg!16828 (regTwo!33511 r!7292)) (reg!16828 r!7292)) (= (regTwo!33511 r!7292) r!7292)) (= lambda!370670 lambda!370581))))

(declare-fun bs!1704832 () Bool)

(assert (= bs!1704832 (and b!6634180 b!6633250)))

(assert (=> bs!1704832 (= (and (= (reg!16828 (regTwo!33511 r!7292)) (reg!16828 (regTwo!33510 r!7292))) (= (regTwo!33511 r!7292) (regTwo!33510 r!7292))) (= lambda!370670 lambda!370600))))

(declare-fun bs!1704834 () Bool)

(assert (= bs!1704834 (and b!6634180 b!6633972)))

(assert (=> bs!1704834 (= (and (= (reg!16828 (regTwo!33511 r!7292)) (reg!16828 (regOne!33511 r!7292))) (= (regTwo!33511 r!7292) (regOne!33511 r!7292))) (= lambda!370670 lambda!370654))))

(declare-fun bs!1704835 () Bool)

(assert (= bs!1704835 (and b!6634180 d!2079437)))

(assert (=> bs!1704835 (not (= lambda!370670 lambda!370636))))

(declare-fun bs!1704836 () Bool)

(assert (= bs!1704836 (and b!6634180 b!6632927)))

(assert (=> bs!1704836 (not (= lambda!370670 lambda!370572))))

(declare-fun bs!1704837 () Bool)

(assert (= bs!1704837 (and b!6634180 b!6633853)))

(assert (=> bs!1704837 (not (= lambda!370670 lambda!370650))))

(assert (=> bs!1704835 (not (= lambda!370670 lambda!370637))))

(declare-fun bs!1704838 () Bool)

(assert (= bs!1704838 (and b!6634180 b!6633847)))

(assert (=> bs!1704838 (= (and (= (reg!16828 (regTwo!33511 r!7292)) (reg!16828 (regTwo!33511 (regOne!33510 r!7292)))) (= (regTwo!33511 r!7292) (regTwo!33511 (regOne!33510 r!7292)))) (= lambda!370670 lambda!370649))))

(assert (=> bs!1704836 (not (= lambda!370670 lambda!370571))))

(declare-fun bs!1704839 () Bool)

(assert (= bs!1704839 (and b!6634180 b!6633222)))

(assert (=> bs!1704839 (= (and (= (reg!16828 (regTwo!33511 r!7292)) (reg!16828 (regOne!33510 r!7292))) (= (regTwo!33511 r!7292) (regOne!33510 r!7292))) (= lambda!370670 lambda!370596))))

(declare-fun bs!1704840 () Bool)

(assert (= bs!1704840 (and b!6634180 b!6633065)))

(assert (=> bs!1704840 (not (= lambda!370670 lambda!370582))))

(declare-fun bs!1704841 () Bool)

(assert (= bs!1704841 (and b!6634180 d!2079641)))

(assert (=> bs!1704841 (not (= lambda!370670 lambda!370660))))

(assert (=> b!6634180 true))

(assert (=> b!6634180 true))

(declare-fun bs!1704842 () Bool)

(declare-fun b!6634186 () Bool)

(assert (= bs!1704842 (and b!6634186 d!2079443)))

(declare-fun lambda!370671 () Int)

(assert (=> bs!1704842 (not (= lambda!370671 lambda!370642))))

(declare-fun bs!1704843 () Bool)

(assert (= bs!1704843 (and b!6634186 b!6633257)))

(assert (=> bs!1704843 (= (and (= (regOne!33510 (regTwo!33511 r!7292)) (regOne!33510 (regTwo!33510 r!7292))) (= (regTwo!33510 (regTwo!33511 r!7292)) (regTwo!33510 (regTwo!33510 r!7292)))) (= lambda!370671 lambda!370601))))

(declare-fun bs!1704844 () Bool)

(assert (= bs!1704844 (and b!6634186 b!6633978)))

(assert (=> bs!1704844 (= (and (= (regOne!33510 (regTwo!33511 r!7292)) (regOne!33510 (regOne!33511 r!7292))) (= (regTwo!33510 (regTwo!33511 r!7292)) (regTwo!33510 (regOne!33511 r!7292)))) (= lambda!370671 lambda!370655))))

(declare-fun bs!1704845 () Bool)

(assert (= bs!1704845 (and b!6634186 b!6633228)))

(assert (=> bs!1704845 (= (and (= (regOne!33510 (regTwo!33511 r!7292)) (regOne!33510 (regOne!33510 r!7292))) (= (regTwo!33510 (regTwo!33511 r!7292)) (regTwo!33510 (regOne!33510 r!7292)))) (= lambda!370671 lambda!370597))))

(declare-fun bs!1704846 () Bool)

(assert (= bs!1704846 (and b!6634186 b!6633250)))

(assert (=> bs!1704846 (not (= lambda!370671 lambda!370600))))

(declare-fun bs!1704847 () Bool)

(assert (= bs!1704847 (and b!6634186 b!6633972)))

(assert (=> bs!1704847 (not (= lambda!370671 lambda!370654))))

(declare-fun bs!1704848 () Bool)

(assert (= bs!1704848 (and b!6634186 d!2079437)))

(assert (=> bs!1704848 (not (= lambda!370671 lambda!370636))))

(declare-fun bs!1704849 () Bool)

(assert (= bs!1704849 (and b!6634186 b!6632927)))

(assert (=> bs!1704849 (= (and (= (regOne!33510 (regTwo!33511 r!7292)) (regOne!33510 r!7292)) (= (regTwo!33510 (regTwo!33511 r!7292)) (regTwo!33510 r!7292))) (= lambda!370671 lambda!370572))))

(declare-fun bs!1704850 () Bool)

(assert (= bs!1704850 (and b!6634186 b!6633853)))

(assert (=> bs!1704850 (= (and (= (regOne!33510 (regTwo!33511 r!7292)) (regOne!33510 (regTwo!33511 (regOne!33510 r!7292)))) (= (regTwo!33510 (regTwo!33511 r!7292)) (regTwo!33510 (regTwo!33511 (regOne!33510 r!7292))))) (= lambda!370671 lambda!370650))))

(assert (=> bs!1704848 (= (and (= (regOne!33510 (regTwo!33511 r!7292)) (regOne!33510 r!7292)) (= (regTwo!33510 (regTwo!33511 r!7292)) (regTwo!33510 r!7292))) (= lambda!370671 lambda!370637))))

(declare-fun bs!1704851 () Bool)

(assert (= bs!1704851 (and b!6634186 b!6633847)))

(assert (=> bs!1704851 (not (= lambda!370671 lambda!370649))))

(assert (=> bs!1704849 (not (= lambda!370671 lambda!370571))))

(declare-fun bs!1704852 () Bool)

(assert (= bs!1704852 (and b!6634186 b!6633222)))

(assert (=> bs!1704852 (not (= lambda!370671 lambda!370596))))

(declare-fun bs!1704853 () Bool)

(assert (= bs!1704853 (and b!6634186 b!6634180)))

(assert (=> bs!1704853 (not (= lambda!370671 lambda!370670))))

(declare-fun bs!1704854 () Bool)

(assert (= bs!1704854 (and b!6634186 b!6633059)))

(assert (=> bs!1704854 (not (= lambda!370671 lambda!370581))))

(declare-fun bs!1704855 () Bool)

(assert (= bs!1704855 (and b!6634186 b!6633065)))

(assert (=> bs!1704855 (= (and (= (regOne!33510 (regTwo!33511 r!7292)) (regOne!33510 r!7292)) (= (regTwo!33510 (regTwo!33511 r!7292)) (regTwo!33510 r!7292))) (= lambda!370671 lambda!370582))))

(declare-fun bs!1704856 () Bool)

(assert (= bs!1704856 (and b!6634186 d!2079641)))

(assert (=> bs!1704856 (not (= lambda!370671 lambda!370660))))

(assert (=> b!6634186 true))

(assert (=> b!6634186 true))

(declare-fun b!6634179 () Bool)

(declare-fun c!1223677 () Bool)

(assert (=> b!6634179 (= c!1223677 ((_ is Union!16499) (regTwo!33511 r!7292)))))

(declare-fun e!4012458 () Bool)

(declare-fun e!4012455 () Bool)

(assert (=> b!6634179 (= e!4012458 e!4012455)))

(declare-fun bm!582350 () Bool)

(declare-fun call!582355 () Bool)

(assert (=> bm!582350 (= call!582355 (isEmpty!37969 s!2326))))

(declare-fun e!4012454 () Bool)

(declare-fun call!582356 () Bool)

(assert (=> b!6634180 (= e!4012454 call!582356)))

(declare-fun b!6634181 () Bool)

(assert (=> b!6634181 (= e!4012458 (= s!2326 (Cons!65674 (c!1223326 (regTwo!33511 r!7292)) Nil!65674)))))

(declare-fun b!6634182 () Bool)

(declare-fun e!4012457 () Bool)

(assert (=> b!6634182 (= e!4012455 e!4012457)))

(declare-fun res!2718879 () Bool)

(assert (=> b!6634182 (= res!2718879 (matchRSpec!3600 (regOne!33511 (regTwo!33511 r!7292)) s!2326))))

(assert (=> b!6634182 (=> res!2718879 e!4012457)))

(declare-fun b!6634183 () Bool)

(declare-fun e!4012460 () Bool)

(declare-fun e!4012456 () Bool)

(assert (=> b!6634183 (= e!4012460 e!4012456)))

(declare-fun res!2718878 () Bool)

(assert (=> b!6634183 (= res!2718878 (not ((_ is EmptyLang!16499) (regTwo!33511 r!7292))))))

(assert (=> b!6634183 (=> (not res!2718878) (not e!4012456))))

(declare-fun c!1223675 () Bool)

(declare-fun bm!582351 () Bool)

(assert (=> bm!582351 (= call!582356 (Exists!3569 (ite c!1223675 lambda!370670 lambda!370671)))))

(declare-fun b!6634184 () Bool)

(declare-fun e!4012459 () Bool)

(assert (=> b!6634184 (= e!4012455 e!4012459)))

(assert (=> b!6634184 (= c!1223675 ((_ is Star!16499) (regTwo!33511 r!7292)))))

(declare-fun d!2079687 () Bool)

(declare-fun c!1223674 () Bool)

(assert (=> d!2079687 (= c!1223674 ((_ is EmptyExpr!16499) (regTwo!33511 r!7292)))))

(assert (=> d!2079687 (= (matchRSpec!3600 (regTwo!33511 r!7292) s!2326) e!4012460)))

(declare-fun b!6634185 () Bool)

(declare-fun c!1223676 () Bool)

(assert (=> b!6634185 (= c!1223676 ((_ is ElementMatch!16499) (regTwo!33511 r!7292)))))

(assert (=> b!6634185 (= e!4012456 e!4012458)))

(assert (=> b!6634186 (= e!4012459 call!582356)))

(declare-fun b!6634187 () Bool)

(declare-fun res!2718877 () Bool)

(assert (=> b!6634187 (=> res!2718877 e!4012454)))

(assert (=> b!6634187 (= res!2718877 call!582355)))

(assert (=> b!6634187 (= e!4012459 e!4012454)))

(declare-fun b!6634188 () Bool)

(assert (=> b!6634188 (= e!4012457 (matchRSpec!3600 (regTwo!33511 (regTwo!33511 r!7292)) s!2326))))

(declare-fun b!6634189 () Bool)

(assert (=> b!6634189 (= e!4012460 call!582355)))

(assert (= (and d!2079687 c!1223674) b!6634189))

(assert (= (and d!2079687 (not c!1223674)) b!6634183))

(assert (= (and b!6634183 res!2718878) b!6634185))

(assert (= (and b!6634185 c!1223676) b!6634181))

(assert (= (and b!6634185 (not c!1223676)) b!6634179))

(assert (= (and b!6634179 c!1223677) b!6634182))

(assert (= (and b!6634179 (not c!1223677)) b!6634184))

(assert (= (and b!6634182 (not res!2718879)) b!6634188))

(assert (= (and b!6634184 c!1223675) b!6634187))

(assert (= (and b!6634184 (not c!1223675)) b!6634186))

(assert (= (and b!6634187 (not res!2718877)) b!6634180))

(assert (= (or b!6634180 b!6634186) bm!582351))

(assert (= (or b!6634189 b!6634187) bm!582350))

(assert (=> bm!582350 m!7401664))

(declare-fun m!7402578 () Bool)

(assert (=> b!6634182 m!7402578))

(declare-fun m!7402580 () Bool)

(assert (=> bm!582351 m!7402580))

(declare-fun m!7402582 () Bool)

(assert (=> b!6634188 m!7402582))

(assert (=> b!6633067 d!2079687))

(declare-fun d!2079709 () Bool)

(declare-fun c!1223686 () Bool)

(assert (=> d!2079709 (= c!1223686 (isEmpty!37969 (tail!12524 s!2326)))))

(declare-fun e!4012475 () Bool)

(assert (=> d!2079709 (= (matchZipper!2511 (derivationStepZipper!2465 z!1189 (head!13439 s!2326)) (tail!12524 s!2326)) e!4012475)))

(declare-fun b!6634212 () Bool)

(assert (=> b!6634212 (= e!4012475 (nullableZipper!2239 (derivationStepZipper!2465 z!1189 (head!13439 s!2326))))))

(declare-fun b!6634213 () Bool)

(assert (=> b!6634213 (= e!4012475 (matchZipper!2511 (derivationStepZipper!2465 (derivationStepZipper!2465 z!1189 (head!13439 s!2326)) (head!13439 (tail!12524 s!2326))) (tail!12524 (tail!12524 s!2326))))))

(assert (= (and d!2079709 c!1223686) b!6634212))

(assert (= (and d!2079709 (not c!1223686)) b!6634213))

(assert (=> d!2079709 m!7401676))

(assert (=> d!2079709 m!7401680))

(assert (=> b!6634212 m!7402062))

(declare-fun m!7402586 () Bool)

(assert (=> b!6634212 m!7402586))

(assert (=> b!6634213 m!7401676))

(assert (=> b!6634213 m!7402256))

(assert (=> b!6634213 m!7402062))

(assert (=> b!6634213 m!7402256))

(declare-fun m!7402588 () Bool)

(assert (=> b!6634213 m!7402588))

(assert (=> b!6634213 m!7401676))

(assert (=> b!6634213 m!7402260))

(assert (=> b!6634213 m!7402588))

(assert (=> b!6634213 m!7402260))

(declare-fun m!7402590 () Bool)

(assert (=> b!6634213 m!7402590))

(assert (=> b!6633639 d!2079709))

(declare-fun bs!1704863 () Bool)

(declare-fun d!2079713 () Bool)

(assert (= bs!1704863 (and d!2079713 d!2079671)))

(declare-fun lambda!370673 () Int)

(assert (=> bs!1704863 (= (= (head!13439 s!2326) (head!13439 (t!379462 s!2326))) (= lambda!370673 lambda!370666))))

(declare-fun bs!1704864 () Bool)

(assert (= bs!1704864 (and d!2079713 d!2079297)))

(assert (=> bs!1704864 (= (= (head!13439 s!2326) (h!72122 s!2326)) (= lambda!370673 lambda!370576))))

(declare-fun bs!1704865 () Bool)

(assert (= bs!1704865 (and d!2079713 d!2079563)))

(assert (=> bs!1704865 (= (= (head!13439 s!2326) (head!13439 (t!379462 s!2326))) (= lambda!370673 lambda!370653))))

(declare-fun bs!1704866 () Bool)

(assert (= bs!1704866 (and d!2079713 d!2079621)))

(assert (=> bs!1704866 (= lambda!370673 lambda!370656)))

(declare-fun bs!1704867 () Bool)

(assert (= bs!1704867 (and d!2079713 d!2079683)))

(assert (=> bs!1704867 (= (= (head!13439 s!2326) (head!13439 (t!379462 s!2326))) (= lambda!370673 lambda!370668))))

(declare-fun bs!1704868 () Bool)

(assert (= bs!1704868 (and d!2079713 b!6632928)))

(assert (=> bs!1704868 (= (= (head!13439 s!2326) (h!72122 s!2326)) (= lambda!370673 lambda!370573))))

(declare-fun bs!1704869 () Bool)

(assert (= bs!1704869 (and d!2079713 d!2079393)))

(assert (=> bs!1704869 (= (= (head!13439 s!2326) (h!72122 s!2326)) (= lambda!370673 lambda!370612))))

(assert (=> d!2079713 true))

(assert (=> d!2079713 (= (derivationStepZipper!2465 z!1189 (head!13439 s!2326)) (flatMap!2004 z!1189 lambda!370673))))

(declare-fun bs!1704870 () Bool)

(assert (= bs!1704870 d!2079713))

(declare-fun m!7402592 () Bool)

(assert (=> bs!1704870 m!7402592))

(assert (=> b!6633639 d!2079713))

(assert (=> b!6633639 d!2079513))

(assert (=> b!6633639 d!2079495))

(declare-fun d!2079715 () Bool)

(declare-fun res!2718893 () Bool)

(declare-fun e!4012480 () Bool)

(assert (=> d!2079715 (=> res!2718893 e!4012480)))

(assert (=> d!2079715 (= res!2718893 ((_ is Nil!65673) lt!2419262))))

(assert (=> d!2079715 (= (noDuplicate!2300 lt!2419262) e!4012480)))

(declare-fun b!6634218 () Bool)

(declare-fun e!4012481 () Bool)

(assert (=> b!6634218 (= e!4012480 e!4012481)))

(declare-fun res!2718894 () Bool)

(assert (=> b!6634218 (=> (not res!2718894) (not e!4012481))))

(declare-fun contains!20227 (List!65797 Context!11766) Bool)

(assert (=> b!6634218 (= res!2718894 (not (contains!20227 (t!379461 lt!2419262) (h!72121 lt!2419262))))))

(declare-fun b!6634219 () Bool)

(assert (=> b!6634219 (= e!4012481 (noDuplicate!2300 (t!379461 lt!2419262)))))

(assert (= (and d!2079715 (not res!2718893)) b!6634218))

(assert (= (and b!6634218 res!2718894) b!6634219))

(declare-fun m!7402600 () Bool)

(assert (=> b!6634218 m!7402600))

(declare-fun m!7402602 () Bool)

(assert (=> b!6634219 m!7402602))

(assert (=> d!2079387 d!2079715))

(declare-fun d!2079725 () Bool)

(declare-fun e!4012496 () Bool)

(assert (=> d!2079725 e!4012496))

(declare-fun res!2718905 () Bool)

(assert (=> d!2079725 (=> (not res!2718905) (not e!4012496))))

(declare-fun res!2718904 () List!65797)

(assert (=> d!2079725 (= res!2718905 (noDuplicate!2300 res!2718904))))

(declare-fun e!4012497 () Bool)

(assert (=> d!2079725 e!4012497))

(assert (=> d!2079725 (= (choose!49553 z!1189) res!2718904)))

(declare-fun b!6634236 () Bool)

(declare-fun e!4012495 () Bool)

(declare-fun tp!1827388 () Bool)

(assert (=> b!6634236 (= e!4012495 tp!1827388)))

(declare-fun b!6634235 () Bool)

(declare-fun tp!1827389 () Bool)

(assert (=> b!6634235 (= e!4012497 (and (inv!84494 (h!72121 res!2718904)) e!4012495 tp!1827389))))

(declare-fun b!6634237 () Bool)

(assert (=> b!6634237 (= e!4012496 (= (content!12684 res!2718904) z!1189))))

(assert (= b!6634235 b!6634236))

(assert (= (and d!2079725 ((_ is Cons!65673) res!2718904)) b!6634235))

(assert (= (and d!2079725 res!2718905) b!6634237))

(declare-fun m!7402610 () Bool)

(assert (=> d!2079725 m!7402610))

(declare-fun m!7402612 () Bool)

(assert (=> b!6634235 m!7402612))

(declare-fun m!7402614 () Bool)

(assert (=> b!6634237 m!7402614))

(assert (=> d!2079387 d!2079725))

(assert (=> b!6633183 d!2079391))

(assert (=> b!6633241 d!2079493))

(assert (=> b!6633241 d!2079495))

(assert (=> b!6633540 d!2079359))

(declare-fun d!2079729 () Bool)

(declare-fun c!1223691 () Bool)

(assert (=> d!2079729 (= c!1223691 (isEmpty!37969 (tail!12524 (t!379462 s!2326))))))

(declare-fun e!4012498 () Bool)

(assert (=> d!2079729 (= (matchZipper!2511 (derivationStepZipper!2465 lt!2419198 (head!13439 (t!379462 s!2326))) (tail!12524 (t!379462 s!2326))) e!4012498)))

(declare-fun b!6634238 () Bool)

(assert (=> b!6634238 (= e!4012498 (nullableZipper!2239 (derivationStepZipper!2465 lt!2419198 (head!13439 (t!379462 s!2326)))))))

(declare-fun b!6634239 () Bool)

(assert (=> b!6634239 (= e!4012498 (matchZipper!2511 (derivationStepZipper!2465 (derivationStepZipper!2465 lt!2419198 (head!13439 (t!379462 s!2326))) (head!13439 (tail!12524 (t!379462 s!2326)))) (tail!12524 (tail!12524 (t!379462 s!2326)))))))

(assert (= (and d!2079729 c!1223691) b!6634238))

(assert (= (and d!2079729 (not c!1223691)) b!6634239))

(assert (=> d!2079729 m!7401604))

(assert (=> d!2079729 m!7402276))

(assert (=> b!6634238 m!7401624))

(declare-fun m!7402616 () Bool)

(assert (=> b!6634238 m!7402616))

(assert (=> b!6634239 m!7401604))

(assert (=> b!6634239 m!7402280))

(assert (=> b!6634239 m!7401624))

(assert (=> b!6634239 m!7402280))

(declare-fun m!7402618 () Bool)

(assert (=> b!6634239 m!7402618))

(assert (=> b!6634239 m!7401604))

(assert (=> b!6634239 m!7402284))

(assert (=> b!6634239 m!7402618))

(assert (=> b!6634239 m!7402284))

(declare-fun m!7402620 () Bool)

(assert (=> b!6634239 m!7402620))

(assert (=> b!6633004 d!2079729))

(declare-fun bs!1704876 () Bool)

(declare-fun d!2079731 () Bool)

(assert (= bs!1704876 (and d!2079731 d!2079671)))

(declare-fun lambda!370678 () Int)

(assert (=> bs!1704876 (= lambda!370678 lambda!370666)))

(declare-fun bs!1704877 () Bool)

(assert (= bs!1704877 (and d!2079731 d!2079297)))

(assert (=> bs!1704877 (= (= (head!13439 (t!379462 s!2326)) (h!72122 s!2326)) (= lambda!370678 lambda!370576))))

(declare-fun bs!1704878 () Bool)

(assert (= bs!1704878 (and d!2079731 d!2079713)))

(assert (=> bs!1704878 (= (= (head!13439 (t!379462 s!2326)) (head!13439 s!2326)) (= lambda!370678 lambda!370673))))

(declare-fun bs!1704879 () Bool)

(assert (= bs!1704879 (and d!2079731 d!2079563)))

(assert (=> bs!1704879 (= lambda!370678 lambda!370653)))

(declare-fun bs!1704880 () Bool)

(assert (= bs!1704880 (and d!2079731 d!2079621)))

(assert (=> bs!1704880 (= (= (head!13439 (t!379462 s!2326)) (head!13439 s!2326)) (= lambda!370678 lambda!370656))))

(declare-fun bs!1704881 () Bool)

(assert (= bs!1704881 (and d!2079731 d!2079683)))

(assert (=> bs!1704881 (= lambda!370678 lambda!370668)))

(declare-fun bs!1704882 () Bool)

(assert (= bs!1704882 (and d!2079731 b!6632928)))

(assert (=> bs!1704882 (= (= (head!13439 (t!379462 s!2326)) (h!72122 s!2326)) (= lambda!370678 lambda!370573))))

(declare-fun bs!1704883 () Bool)

(assert (= bs!1704883 (and d!2079731 d!2079393)))

(assert (=> bs!1704883 (= (= (head!13439 (t!379462 s!2326)) (h!72122 s!2326)) (= lambda!370678 lambda!370612))))

(assert (=> d!2079731 true))

(assert (=> d!2079731 (= (derivationStepZipper!2465 lt!2419198 (head!13439 (t!379462 s!2326))) (flatMap!2004 lt!2419198 lambda!370678))))

(declare-fun bs!1704884 () Bool)

(assert (= bs!1704884 d!2079731))

(declare-fun m!7402622 () Bool)

(assert (=> bs!1704884 m!7402622))

(assert (=> b!6633004 d!2079731))

(assert (=> b!6633004 d!2079565))

(assert (=> b!6633004 d!2079567))

(declare-fun d!2079737 () Bool)

(assert (=> d!2079737 (= (isEmpty!37972 (findConcatSeparation!2804 (regOne!33510 r!7292) (regTwo!33510 r!7292) Nil!65674 s!2326 s!2326)) (not ((_ is Some!16389) (findConcatSeparation!2804 (regOne!33510 r!7292) (regTwo!33510 r!7292) Nil!65674 s!2326 s!2326))))))

(assert (=> d!2079441 d!2079737))

(declare-fun d!2079739 () Bool)

(assert (=> d!2079739 (= (nullable!6492 (regOne!33510 (h!72120 (exprs!6383 (h!72121 zl!343))))) (nullableFct!2413 (regOne!33510 (h!72120 (exprs!6383 (h!72121 zl!343))))))))

(declare-fun bs!1704885 () Bool)

(assert (= bs!1704885 d!2079739))

(declare-fun m!7402624 () Bool)

(assert (=> bs!1704885 m!7402624))

(assert (=> b!6633399 d!2079739))

(declare-fun d!2079741 () Bool)

(assert (=> d!2079741 (= (isEmptyExpr!1872 lt!2419240) ((_ is EmptyExpr!16499) lt!2419240))))

(assert (=> b!6633212 d!2079741))

(assert (=> d!2079373 d!2079365))

(declare-fun d!2079743 () Bool)

(assert (=> d!2079743 (= (flatMap!2004 z!1189 lambda!370573) (dynLambda!26160 lambda!370573 (h!72121 zl!343)))))

(assert (=> d!2079743 true))

(declare-fun _$13!3921 () Unit!159351)

(assert (=> d!2079743 (= (choose!49551 z!1189 (h!72121 zl!343) lambda!370573) _$13!3921)))

(declare-fun b_lambda!250781 () Bool)

(assert (=> (not b_lambda!250781) (not d!2079743)))

(declare-fun bs!1704886 () Bool)

(assert (= bs!1704886 d!2079743))

(assert (=> bs!1704886 m!7401538))

(assert (=> bs!1704886 m!7401844))

(assert (=> d!2079373 d!2079743))

(declare-fun bs!1704887 () Bool)

(declare-fun d!2079745 () Bool)

(assert (= bs!1704887 (and d!2079745 d!2079547)))

(declare-fun lambda!370679 () Int)

(assert (=> bs!1704887 (= lambda!370679 lambda!370651)))

(declare-fun bs!1704888 () Bool)

(assert (= bs!1704888 (and d!2079745 d!2079403)))

(assert (=> bs!1704888 (= lambda!370679 lambda!370613)))

(declare-fun bs!1704889 () Bool)

(assert (= bs!1704889 (and d!2079745 d!2079411)))

(assert (=> bs!1704889 (= lambda!370679 lambda!370625)))

(declare-fun bs!1704890 () Bool)

(assert (= bs!1704890 (and d!2079745 d!2079327)))

(assert (=> bs!1704890 (= lambda!370679 lambda!370587)))

(declare-fun bs!1704891 () Bool)

(assert (= bs!1704891 (and d!2079745 d!2079343)))

(assert (=> bs!1704891 (= lambda!370679 lambda!370593)))

(declare-fun bs!1704892 () Bool)

(assert (= bs!1704892 (and d!2079745 d!2079389)))

(assert (=> bs!1704892 (= lambda!370679 lambda!370611)))

(declare-fun bs!1704893 () Bool)

(assert (= bs!1704893 (and d!2079745 d!2079553)))

(assert (=> bs!1704893 (= lambda!370679 lambda!370652)))

(declare-fun bs!1704894 () Bool)

(assert (= bs!1704894 (and d!2079745 d!2079405)))

(assert (=> bs!1704894 (= lambda!370679 lambda!370619)))

(declare-fun bs!1704895 () Bool)

(assert (= bs!1704895 (and d!2079745 d!2079509)))

(assert (=> bs!1704895 (= lambda!370679 lambda!370648)))

(declare-fun b!6634254 () Bool)

(declare-fun e!4012511 () Regex!16499)

(assert (=> b!6634254 (= e!4012511 (h!72120 (t!379460 (t!379460 (exprs!6383 (h!72121 zl!343))))))))

(declare-fun b!6634255 () Bool)

(declare-fun e!4012515 () Bool)

(declare-fun lt!2419334 () Regex!16499)

(assert (=> b!6634255 (= e!4012515 (isEmptyExpr!1872 lt!2419334))))

(declare-fun b!6634256 () Bool)

(declare-fun e!4012514 () Bool)

(assert (=> b!6634256 (= e!4012514 (isConcat!1395 lt!2419334))))

(declare-fun e!4012516 () Bool)

(assert (=> d!2079745 e!4012516))

(declare-fun res!2718916 () Bool)

(assert (=> d!2079745 (=> (not res!2718916) (not e!4012516))))

(assert (=> d!2079745 (= res!2718916 (validRegex!8235 lt!2419334))))

(assert (=> d!2079745 (= lt!2419334 e!4012511)))

(declare-fun c!1223695 () Bool)

(declare-fun e!4012512 () Bool)

(assert (=> d!2079745 (= c!1223695 e!4012512)))

(declare-fun res!2718917 () Bool)

(assert (=> d!2079745 (=> (not res!2718917) (not e!4012512))))

(assert (=> d!2079745 (= res!2718917 ((_ is Cons!65672) (t!379460 (t!379460 (exprs!6383 (h!72121 zl!343))))))))

(assert (=> d!2079745 (forall!15694 (t!379460 (t!379460 (exprs!6383 (h!72121 zl!343)))) lambda!370679)))

(assert (=> d!2079745 (= (generalisedConcat!2096 (t!379460 (t!379460 (exprs!6383 (h!72121 zl!343))))) lt!2419334)))

(declare-fun b!6634257 () Bool)

(assert (=> b!6634257 (= e!4012514 (= lt!2419334 (head!13440 (t!379460 (t!379460 (exprs!6383 (h!72121 zl!343)))))))))

(declare-fun b!6634258 () Bool)

(assert (=> b!6634258 (= e!4012515 e!4012514)))

(declare-fun c!1223697 () Bool)

(assert (=> b!6634258 (= c!1223697 (isEmpty!37968 (tail!12525 (t!379460 (t!379460 (exprs!6383 (h!72121 zl!343)))))))))

(declare-fun b!6634259 () Bool)

(declare-fun e!4012513 () Regex!16499)

(assert (=> b!6634259 (= e!4012513 (Concat!25344 (h!72120 (t!379460 (t!379460 (exprs!6383 (h!72121 zl!343))))) (generalisedConcat!2096 (t!379460 (t!379460 (t!379460 (exprs!6383 (h!72121 zl!343))))))))))

(declare-fun b!6634260 () Bool)

(assert (=> b!6634260 (= e!4012512 (isEmpty!37968 (t!379460 (t!379460 (t!379460 (exprs!6383 (h!72121 zl!343)))))))))

(declare-fun b!6634261 () Bool)

(assert (=> b!6634261 (= e!4012516 e!4012515)))

(declare-fun c!1223696 () Bool)

(assert (=> b!6634261 (= c!1223696 (isEmpty!37968 (t!379460 (t!379460 (exprs!6383 (h!72121 zl!343))))))))

(declare-fun b!6634262 () Bool)

(assert (=> b!6634262 (= e!4012513 EmptyExpr!16499)))

(declare-fun b!6634263 () Bool)

(assert (=> b!6634263 (= e!4012511 e!4012513)))

(declare-fun c!1223694 () Bool)

(assert (=> b!6634263 (= c!1223694 ((_ is Cons!65672) (t!379460 (t!379460 (exprs!6383 (h!72121 zl!343))))))))

(assert (= (and d!2079745 res!2718917) b!6634260))

(assert (= (and d!2079745 c!1223695) b!6634254))

(assert (= (and d!2079745 (not c!1223695)) b!6634263))

(assert (= (and b!6634263 c!1223694) b!6634259))

(assert (= (and b!6634263 (not c!1223694)) b!6634262))

(assert (= (and d!2079745 res!2718916) b!6634261))

(assert (= (and b!6634261 c!1223696) b!6634255))

(assert (= (and b!6634261 (not c!1223696)) b!6634258))

(assert (= (and b!6634258 c!1223697) b!6634257))

(assert (= (and b!6634258 (not c!1223697)) b!6634256))

(declare-fun m!7402626 () Bool)

(assert (=> b!6634257 m!7402626))

(declare-fun m!7402628 () Bool)

(assert (=> b!6634255 m!7402628))

(declare-fun m!7402630 () Bool)

(assert (=> b!6634258 m!7402630))

(assert (=> b!6634258 m!7402630))

(declare-fun m!7402632 () Bool)

(assert (=> b!6634258 m!7402632))

(declare-fun m!7402634 () Bool)

(assert (=> d!2079745 m!7402634))

(declare-fun m!7402636 () Bool)

(assert (=> d!2079745 m!7402636))

(assert (=> b!6634261 m!7401762))

(declare-fun m!7402638 () Bool)

(assert (=> b!6634256 m!7402638))

(declare-fun m!7402640 () Bool)

(assert (=> b!6634260 m!7402640))

(declare-fun m!7402642 () Bool)

(assert (=> b!6634259 m!7402642))

(assert (=> b!6633216 d!2079745))

(declare-fun d!2079747 () Bool)

(assert (=> d!2079747 (= (Exists!3569 lambda!370636) (choose!49554 lambda!370636))))

(declare-fun bs!1704896 () Bool)

(assert (= bs!1704896 d!2079747))

(declare-fun m!7402644 () Bool)

(assert (=> bs!1704896 m!7402644))

(assert (=> d!2079437 d!2079747))

(declare-fun d!2079749 () Bool)

(assert (=> d!2079749 (= (Exists!3569 lambda!370637) (choose!49554 lambda!370637))))

(declare-fun bs!1704897 () Bool)

(assert (= bs!1704897 d!2079749))

(declare-fun m!7402646 () Bool)

(assert (=> bs!1704897 m!7402646))

(assert (=> d!2079437 d!2079749))

(declare-fun bs!1704915 () Bool)

(declare-fun d!2079751 () Bool)

(assert (= bs!1704915 (and d!2079751 d!2079443)))

(declare-fun lambda!370686 () Int)

(assert (=> bs!1704915 (= lambda!370686 lambda!370642)))

(declare-fun bs!1704917 () Bool)

(assert (= bs!1704917 (and d!2079751 b!6633257)))

(assert (=> bs!1704917 (not (= lambda!370686 lambda!370601))))

(declare-fun bs!1704919 () Bool)

(assert (= bs!1704919 (and d!2079751 b!6633978)))

(assert (=> bs!1704919 (not (= lambda!370686 lambda!370655))))

(declare-fun bs!1704921 () Bool)

(assert (= bs!1704921 (and d!2079751 b!6633228)))

(assert (=> bs!1704921 (not (= lambda!370686 lambda!370597))))

(declare-fun bs!1704923 () Bool)

(assert (= bs!1704923 (and d!2079751 b!6633250)))

(assert (=> bs!1704923 (not (= lambda!370686 lambda!370600))))

(declare-fun bs!1704925 () Bool)

(assert (= bs!1704925 (and d!2079751 b!6633972)))

(assert (=> bs!1704925 (not (= lambda!370686 lambda!370654))))

(declare-fun bs!1704927 () Bool)

(assert (= bs!1704927 (and d!2079751 d!2079437)))

(assert (=> bs!1704927 (= lambda!370686 lambda!370636)))

(declare-fun bs!1704928 () Bool)

(assert (= bs!1704928 (and d!2079751 b!6634186)))

(assert (=> bs!1704928 (not (= lambda!370686 lambda!370671))))

(declare-fun bs!1704930 () Bool)

(assert (= bs!1704930 (and d!2079751 b!6632927)))

(assert (=> bs!1704930 (not (= lambda!370686 lambda!370572))))

(declare-fun bs!1704931 () Bool)

(assert (= bs!1704931 (and d!2079751 b!6633853)))

(assert (=> bs!1704931 (not (= lambda!370686 lambda!370650))))

(assert (=> bs!1704927 (not (= lambda!370686 lambda!370637))))

(declare-fun bs!1704932 () Bool)

(assert (= bs!1704932 (and d!2079751 b!6633847)))

(assert (=> bs!1704932 (not (= lambda!370686 lambda!370649))))

(assert (=> bs!1704930 (= lambda!370686 lambda!370571)))

(declare-fun bs!1704933 () Bool)

(assert (= bs!1704933 (and d!2079751 b!6633222)))

(assert (=> bs!1704933 (not (= lambda!370686 lambda!370596))))

(declare-fun bs!1704934 () Bool)

(assert (= bs!1704934 (and d!2079751 b!6634180)))

(assert (=> bs!1704934 (not (= lambda!370686 lambda!370670))))

(declare-fun bs!1704935 () Bool)

(assert (= bs!1704935 (and d!2079751 b!6633059)))

(assert (=> bs!1704935 (not (= lambda!370686 lambda!370581))))

(declare-fun bs!1704936 () Bool)

(assert (= bs!1704936 (and d!2079751 b!6633065)))

(assert (=> bs!1704936 (not (= lambda!370686 lambda!370582))))

(declare-fun bs!1704938 () Bool)

(assert (= bs!1704938 (and d!2079751 d!2079641)))

(assert (=> bs!1704938 (= lambda!370686 lambda!370660)))

(assert (=> d!2079751 true))

(assert (=> d!2079751 true))

(assert (=> d!2079751 true))

(declare-fun lambda!370688 () Int)

(assert (=> bs!1704915 (not (= lambda!370688 lambda!370642))))

(assert (=> bs!1704917 (= (and (= (regOne!33510 r!7292) (regOne!33510 (regTwo!33510 r!7292))) (= (regTwo!33510 r!7292) (regTwo!33510 (regTwo!33510 r!7292)))) (= lambda!370688 lambda!370601))))

(assert (=> bs!1704919 (= (and (= (regOne!33510 r!7292) (regOne!33510 (regOne!33511 r!7292))) (= (regTwo!33510 r!7292) (regTwo!33510 (regOne!33511 r!7292)))) (= lambda!370688 lambda!370655))))

(assert (=> bs!1704921 (= (and (= (regOne!33510 r!7292) (regOne!33510 (regOne!33510 r!7292))) (= (regTwo!33510 r!7292) (regTwo!33510 (regOne!33510 r!7292)))) (= lambda!370688 lambda!370597))))

(assert (=> bs!1704923 (not (= lambda!370688 lambda!370600))))

(assert (=> bs!1704925 (not (= lambda!370688 lambda!370654))))

(assert (=> bs!1704927 (not (= lambda!370688 lambda!370636))))

(assert (=> bs!1704928 (= (and (= (regOne!33510 r!7292) (regOne!33510 (regTwo!33511 r!7292))) (= (regTwo!33510 r!7292) (regTwo!33510 (regTwo!33511 r!7292)))) (= lambda!370688 lambda!370671))))

(assert (=> bs!1704930 (= lambda!370688 lambda!370572)))

(assert (=> bs!1704931 (= (and (= (regOne!33510 r!7292) (regOne!33510 (regTwo!33511 (regOne!33510 r!7292)))) (= (regTwo!33510 r!7292) (regTwo!33510 (regTwo!33511 (regOne!33510 r!7292))))) (= lambda!370688 lambda!370650))))

(declare-fun bs!1704942 () Bool)

(assert (= bs!1704942 d!2079751))

(assert (=> bs!1704942 (not (= lambda!370688 lambda!370686))))

(assert (=> bs!1704927 (= lambda!370688 lambda!370637)))

(assert (=> bs!1704932 (not (= lambda!370688 lambda!370649))))

(assert (=> bs!1704930 (not (= lambda!370688 lambda!370571))))

(assert (=> bs!1704933 (not (= lambda!370688 lambda!370596))))

(assert (=> bs!1704934 (not (= lambda!370688 lambda!370670))))

(assert (=> bs!1704935 (not (= lambda!370688 lambda!370581))))

(assert (=> bs!1704936 (= lambda!370688 lambda!370582)))

(assert (=> bs!1704938 (not (= lambda!370688 lambda!370660))))

(assert (=> d!2079751 true))

(assert (=> d!2079751 true))

(assert (=> d!2079751 true))

(assert (=> d!2079751 (= (Exists!3569 lambda!370686) (Exists!3569 lambda!370688))))

(assert (=> d!2079751 true))

(declare-fun _$90!2470 () Unit!159351)

(assert (=> d!2079751 (= (choose!49555 (regOne!33510 r!7292) (regTwo!33510 r!7292) s!2326) _$90!2470)))

(declare-fun m!7402668 () Bool)

(assert (=> bs!1704942 m!7402668))

(declare-fun m!7402670 () Bool)

(assert (=> bs!1704942 m!7402670))

(assert (=> d!2079437 d!2079751))

(assert (=> d!2079437 d!2079635))

(declare-fun b!6634296 () Bool)

(declare-fun res!2718947 () Bool)

(declare-fun e!4012546 () Bool)

(assert (=> b!6634296 (=> res!2718947 e!4012546)))

(declare-fun e!4012543 () Bool)

(assert (=> b!6634296 (= res!2718947 e!4012543)))

(declare-fun res!2718945 () Bool)

(assert (=> b!6634296 (=> (not res!2718945) (not e!4012543))))

(declare-fun lt!2419335 () Bool)

(assert (=> b!6634296 (= res!2718945 lt!2419335)))

(declare-fun d!2079771 () Bool)

(declare-fun e!4012544 () Bool)

(assert (=> d!2079771 e!4012544))

(declare-fun c!1223703 () Bool)

(assert (=> d!2079771 (= c!1223703 ((_ is EmptyExpr!16499) (derivativeStep!5178 (regTwo!33510 r!7292) (head!13439 s!2326))))))

(declare-fun e!4012541 () Bool)

(assert (=> d!2079771 (= lt!2419335 e!4012541)))

(declare-fun c!1223704 () Bool)

(assert (=> d!2079771 (= c!1223704 (isEmpty!37969 (tail!12524 s!2326)))))

(assert (=> d!2079771 (validRegex!8235 (derivativeStep!5178 (regTwo!33510 r!7292) (head!13439 s!2326)))))

(assert (=> d!2079771 (= (matchR!8682 (derivativeStep!5178 (regTwo!33510 r!7292) (head!13439 s!2326)) (tail!12524 s!2326)) lt!2419335)))

(declare-fun bm!582372 () Bool)

(declare-fun call!582377 () Bool)

(assert (=> bm!582372 (= call!582377 (isEmpty!37969 (tail!12524 s!2326)))))

(declare-fun b!6634297 () Bool)

(declare-fun e!4012540 () Bool)

(assert (=> b!6634297 (= e!4012544 e!4012540)))

(declare-fun c!1223705 () Bool)

(assert (=> b!6634297 (= c!1223705 ((_ is EmptyLang!16499) (derivativeStep!5178 (regTwo!33510 r!7292) (head!13439 s!2326))))))

(declare-fun b!6634298 () Bool)

(assert (=> b!6634298 (= e!4012540 (not lt!2419335))))

(declare-fun b!6634299 () Bool)

(assert (=> b!6634299 (= e!4012544 (= lt!2419335 call!582377))))

(declare-fun b!6634300 () Bool)

(assert (=> b!6634300 (= e!4012543 (= (head!13439 (tail!12524 s!2326)) (c!1223326 (derivativeStep!5178 (regTwo!33510 r!7292) (head!13439 s!2326)))))))

(declare-fun b!6634301 () Bool)

(declare-fun res!2718943 () Bool)

(declare-fun e!4012542 () Bool)

(assert (=> b!6634301 (=> res!2718943 e!4012542)))

(assert (=> b!6634301 (= res!2718943 (not (isEmpty!37969 (tail!12524 (tail!12524 s!2326)))))))

(declare-fun b!6634302 () Bool)

(assert (=> b!6634302 (= e!4012542 (not (= (head!13439 (tail!12524 s!2326)) (c!1223326 (derivativeStep!5178 (regTwo!33510 r!7292) (head!13439 s!2326))))))))

(declare-fun b!6634303 () Bool)

(assert (=> b!6634303 (= e!4012541 (nullable!6492 (derivativeStep!5178 (regTwo!33510 r!7292) (head!13439 s!2326))))))

(declare-fun b!6634304 () Bool)

(declare-fun res!2718941 () Bool)

(assert (=> b!6634304 (=> (not res!2718941) (not e!4012543))))

(assert (=> b!6634304 (= res!2718941 (not call!582377))))

(declare-fun b!6634305 () Bool)

(declare-fun res!2718946 () Bool)

(assert (=> b!6634305 (=> (not res!2718946) (not e!4012543))))

(assert (=> b!6634305 (= res!2718946 (isEmpty!37969 (tail!12524 (tail!12524 s!2326))))))

(declare-fun b!6634306 () Bool)

(declare-fun e!4012545 () Bool)

(assert (=> b!6634306 (= e!4012546 e!4012545)))

(declare-fun res!2718944 () Bool)

(assert (=> b!6634306 (=> (not res!2718944) (not e!4012545))))

(assert (=> b!6634306 (= res!2718944 (not lt!2419335))))

(declare-fun b!6634307 () Bool)

(declare-fun res!2718940 () Bool)

(assert (=> b!6634307 (=> res!2718940 e!4012546)))

(assert (=> b!6634307 (= res!2718940 (not ((_ is ElementMatch!16499) (derivativeStep!5178 (regTwo!33510 r!7292) (head!13439 s!2326)))))))

(assert (=> b!6634307 (= e!4012540 e!4012546)))

(declare-fun b!6634308 () Bool)

(assert (=> b!6634308 (= e!4012541 (matchR!8682 (derivativeStep!5178 (derivativeStep!5178 (regTwo!33510 r!7292) (head!13439 s!2326)) (head!13439 (tail!12524 s!2326))) (tail!12524 (tail!12524 s!2326))))))

(declare-fun b!6634309 () Bool)

(assert (=> b!6634309 (= e!4012545 e!4012542)))

(declare-fun res!2718942 () Bool)

(assert (=> b!6634309 (=> res!2718942 e!4012542)))

(assert (=> b!6634309 (= res!2718942 call!582377)))

(assert (= (and d!2079771 c!1223704) b!6634303))

(assert (= (and d!2079771 (not c!1223704)) b!6634308))

(assert (= (and d!2079771 c!1223703) b!6634299))

(assert (= (and d!2079771 (not c!1223703)) b!6634297))

(assert (= (and b!6634297 c!1223705) b!6634298))

(assert (= (and b!6634297 (not c!1223705)) b!6634307))

(assert (= (and b!6634307 (not res!2718940)) b!6634296))

(assert (= (and b!6634296 res!2718945) b!6634304))

(assert (= (and b!6634304 res!2718941) b!6634305))

(assert (= (and b!6634305 res!2718946) b!6634300))

(assert (= (and b!6634296 (not res!2718947)) b!6634306))

(assert (= (and b!6634306 res!2718944) b!6634309))

(assert (= (and b!6634309 (not res!2718942)) b!6634301))

(assert (= (and b!6634301 (not res!2718943)) b!6634302))

(assert (= (or b!6634299 b!6634304 b!6634309) bm!582372))

(assert (=> b!6634308 m!7401676))

(assert (=> b!6634308 m!7402256))

(assert (=> b!6634308 m!7401802))

(assert (=> b!6634308 m!7402256))

(declare-fun m!7402674 () Bool)

(assert (=> b!6634308 m!7402674))

(assert (=> b!6634308 m!7401676))

(assert (=> b!6634308 m!7402260))

(assert (=> b!6634308 m!7402674))

(assert (=> b!6634308 m!7402260))

(declare-fun m!7402676 () Bool)

(assert (=> b!6634308 m!7402676))

(assert (=> d!2079771 m!7401676))

(assert (=> d!2079771 m!7401680))

(assert (=> d!2079771 m!7401802))

(declare-fun m!7402678 () Bool)

(assert (=> d!2079771 m!7402678))

(assert (=> b!6634300 m!7401676))

(assert (=> b!6634300 m!7402256))

(assert (=> b!6634302 m!7401676))

(assert (=> b!6634302 m!7402256))

(assert (=> bm!582372 m!7401676))

(assert (=> bm!582372 m!7401680))

(assert (=> b!6634305 m!7401676))

(assert (=> b!6634305 m!7402260))

(assert (=> b!6634305 m!7402260))

(assert (=> b!6634305 m!7402266))

(assert (=> b!6634303 m!7401802))

(declare-fun m!7402680 () Bool)

(assert (=> b!6634303 m!7402680))

(assert (=> b!6634301 m!7401676))

(assert (=> b!6634301 m!7402260))

(assert (=> b!6634301 m!7402260))

(assert (=> b!6634301 m!7402266))

(assert (=> b!6633299 d!2079771))

(declare-fun c!1223711 () Bool)

(declare-fun c!1223710 () Bool)

(declare-fun call!582381 () Regex!16499)

(declare-fun bm!582374 () Bool)

(assert (=> bm!582374 (= call!582381 (derivativeStep!5178 (ite c!1223711 (regOne!33511 (regTwo!33510 r!7292)) (ite c!1223710 (regTwo!33510 (regTwo!33510 r!7292)) (regOne!33510 (regTwo!33510 r!7292)))) (head!13439 s!2326)))))

(declare-fun b!6634324 () Bool)

(declare-fun e!4012554 () Regex!16499)

(assert (=> b!6634324 (= e!4012554 (ite (= (head!13439 s!2326) (c!1223326 (regTwo!33510 r!7292))) EmptyExpr!16499 EmptyLang!16499))))

(declare-fun b!6634325 () Bool)

(assert (=> b!6634325 (= c!1223710 (nullable!6492 (regOne!33510 (regTwo!33510 r!7292))))))

(declare-fun e!4012556 () Regex!16499)

(declare-fun e!4012555 () Regex!16499)

(assert (=> b!6634325 (= e!4012556 e!4012555)))

(declare-fun b!6634326 () Bool)

(declare-fun e!4012557 () Regex!16499)

(assert (=> b!6634326 (= e!4012557 EmptyLang!16499)))

(declare-fun b!6634327 () Bool)

(declare-fun call!582380 () Regex!16499)

(declare-fun call!582379 () Regex!16499)

(assert (=> b!6634327 (= e!4012555 (Union!16499 (Concat!25344 call!582379 (regTwo!33510 (regTwo!33510 r!7292))) call!582380))))

(declare-fun b!6634328 () Bool)

(declare-fun e!4012558 () Regex!16499)

(assert (=> b!6634328 (= e!4012558 e!4012556)))

(declare-fun c!1223709 () Bool)

(assert (=> b!6634328 (= c!1223709 ((_ is Star!16499) (regTwo!33510 r!7292)))))

(declare-fun d!2079775 () Bool)

(declare-fun lt!2419337 () Regex!16499)

(assert (=> d!2079775 (validRegex!8235 lt!2419337)))

(assert (=> d!2079775 (= lt!2419337 e!4012557)))

(declare-fun c!1223712 () Bool)

(assert (=> d!2079775 (= c!1223712 (or ((_ is EmptyExpr!16499) (regTwo!33510 r!7292)) ((_ is EmptyLang!16499) (regTwo!33510 r!7292))))))

(assert (=> d!2079775 (validRegex!8235 (regTwo!33510 r!7292))))

(assert (=> d!2079775 (= (derivativeStep!5178 (regTwo!33510 r!7292) (head!13439 s!2326)) lt!2419337)))

(declare-fun b!6634329 () Bool)

(assert (=> b!6634329 (= e!4012555 (Union!16499 (Concat!25344 call!582380 (regTwo!33510 (regTwo!33510 r!7292))) EmptyLang!16499))))

(declare-fun b!6634330 () Bool)

(assert (=> b!6634330 (= e!4012556 (Concat!25344 call!582379 (regTwo!33510 r!7292)))))

(declare-fun b!6634331 () Bool)

(declare-fun call!582382 () Regex!16499)

(assert (=> b!6634331 (= e!4012558 (Union!16499 call!582381 call!582382))))

(declare-fun bm!582375 () Bool)

(assert (=> bm!582375 (= call!582380 call!582381)))

(declare-fun b!6634332 () Bool)

(assert (=> b!6634332 (= e!4012557 e!4012554)))

(declare-fun c!1223713 () Bool)

(assert (=> b!6634332 (= c!1223713 ((_ is ElementMatch!16499) (regTwo!33510 r!7292)))))

(declare-fun bm!582376 () Bool)

(assert (=> bm!582376 (= call!582379 call!582382)))

(declare-fun b!6634333 () Bool)

(assert (=> b!6634333 (= c!1223711 ((_ is Union!16499) (regTwo!33510 r!7292)))))

(assert (=> b!6634333 (= e!4012554 e!4012558)))

(declare-fun bm!582377 () Bool)

(assert (=> bm!582377 (= call!582382 (derivativeStep!5178 (ite c!1223711 (regTwo!33511 (regTwo!33510 r!7292)) (ite c!1223709 (reg!16828 (regTwo!33510 r!7292)) (regOne!33510 (regTwo!33510 r!7292)))) (head!13439 s!2326)))))

(assert (= (and d!2079775 c!1223712) b!6634326))

(assert (= (and d!2079775 (not c!1223712)) b!6634332))

(assert (= (and b!6634332 c!1223713) b!6634324))

(assert (= (and b!6634332 (not c!1223713)) b!6634333))

(assert (= (and b!6634333 c!1223711) b!6634331))

(assert (= (and b!6634333 (not c!1223711)) b!6634328))

(assert (= (and b!6634328 c!1223709) b!6634330))

(assert (= (and b!6634328 (not c!1223709)) b!6634325))

(assert (= (and b!6634325 c!1223710) b!6634327))

(assert (= (and b!6634325 (not c!1223710)) b!6634329))

(assert (= (or b!6634327 b!6634329) bm!582375))

(assert (= (or b!6634330 b!6634327) bm!582376))

(assert (= (or b!6634331 bm!582376) bm!582377))

(assert (= (or b!6634331 bm!582375) bm!582374))

(assert (=> bm!582374 m!7401672))

(declare-fun m!7402692 () Bool)

(assert (=> bm!582374 m!7402692))

(declare-fun m!7402694 () Bool)

(assert (=> b!6634325 m!7402694))

(declare-fun m!7402696 () Bool)

(assert (=> d!2079775 m!7402696))

(assert (=> d!2079775 m!7401816))

(assert (=> bm!582377 m!7401672))

(declare-fun m!7402698 () Bool)

(assert (=> bm!582377 m!7402698))

(assert (=> b!6633299 d!2079775))

(assert (=> b!6633299 d!2079513))

(assert (=> b!6633299 d!2079495))

(declare-fun d!2079779 () Bool)

(assert (=> d!2079779 (= (isEmptyLang!1882 lt!2419272) ((_ is EmptyLang!16499) lt!2419272))))

(assert (=> b!6633472 d!2079779))

(declare-fun d!2079781 () Bool)

(assert (=> d!2079781 (= (nullable!6492 r!7292) (nullableFct!2413 r!7292))))

(declare-fun bs!1704948 () Bool)

(assert (= bs!1704948 d!2079781))

(declare-fun m!7402700 () Bool)

(assert (=> bs!1704948 m!7402700))

(assert (=> b!6633129 d!2079781))

(assert (=> b!6633192 d!2079493))

(assert (=> b!6633192 d!2079495))

(declare-fun bs!1704949 () Bool)

(declare-fun d!2079783 () Bool)

(assert (= bs!1704949 (and d!2079783 d!2079655)))

(declare-fun lambda!370690 () Int)

(assert (=> bs!1704949 (= lambda!370690 lambda!370664)))

(declare-fun bs!1704950 () Bool)

(assert (= bs!1704950 (and d!2079783 d!2079675)))

(assert (=> bs!1704950 (= lambda!370690 lambda!370667)))

(assert (=> d!2079783 (= (nullableZipper!2239 lt!2419202) (exists!2669 lt!2419202 lambda!370690))))

(declare-fun bs!1704951 () Bool)

(assert (= bs!1704951 d!2079783))

(declare-fun m!7402702 () Bool)

(assert (=> bs!1704951 m!7402702))

(assert (=> b!6633201 d!2079783))

(declare-fun d!2079785 () Bool)

(assert (=> d!2079785 (= (flatMap!2004 lt!2419202 lambda!370612) (choose!49550 lt!2419202 lambda!370612))))

(declare-fun bs!1704952 () Bool)

(assert (= bs!1704952 d!2079785))

(declare-fun m!7402704 () Bool)

(assert (=> bs!1704952 m!7402704))

(assert (=> d!2079393 d!2079785))

(assert (=> d!2079355 d!2079499))

(assert (=> d!2079355 d!2079635))

(assert (=> d!2079455 d!2079545))

(declare-fun bs!1704953 () Bool)

(declare-fun d!2079787 () Bool)

(assert (= bs!1704953 (and d!2079787 d!2079655)))

(declare-fun lambda!370691 () Int)

(assert (=> bs!1704953 (= lambda!370691 lambda!370664)))

(declare-fun bs!1704954 () Bool)

(assert (= bs!1704954 (and d!2079787 d!2079675)))

(assert (=> bs!1704954 (= lambda!370691 lambda!370667)))

(declare-fun bs!1704955 () Bool)

(assert (= bs!1704955 (and d!2079787 d!2079783)))

(assert (=> bs!1704955 (= lambda!370691 lambda!370690)))

(assert (=> d!2079787 (= (nullableZipper!2239 lt!2419195) (exists!2669 lt!2419195 lambda!370691))))

(declare-fun bs!1704956 () Bool)

(assert (= bs!1704956 d!2079787))

(declare-fun m!7402706 () Bool)

(assert (=> bs!1704956 m!7402706))

(assert (=> b!6632948 d!2079787))

(declare-fun bs!1704957 () Bool)

(declare-fun b!6634335 () Bool)

(assert (= bs!1704957 (and b!6634335 d!2079443)))

(declare-fun lambda!370692 () Int)

(assert (=> bs!1704957 (not (= lambda!370692 lambda!370642))))

(declare-fun bs!1704958 () Bool)

(assert (= bs!1704958 (and b!6634335 b!6633257)))

(assert (=> bs!1704958 (not (= lambda!370692 lambda!370601))))

(declare-fun bs!1704959 () Bool)

(assert (= bs!1704959 (and b!6634335 b!6633978)))

(assert (=> bs!1704959 (not (= lambda!370692 lambda!370655))))

(declare-fun bs!1704960 () Bool)

(assert (= bs!1704960 (and b!6634335 d!2079751)))

(assert (=> bs!1704960 (not (= lambda!370692 lambda!370688))))

(declare-fun bs!1704961 () Bool)

(assert (= bs!1704961 (and b!6634335 b!6633228)))

(assert (=> bs!1704961 (not (= lambda!370692 lambda!370597))))

(declare-fun bs!1704962 () Bool)

(assert (= bs!1704962 (and b!6634335 b!6633250)))

(assert (=> bs!1704962 (= (and (= (reg!16828 (regOne!33511 (regTwo!33510 r!7292))) (reg!16828 (regTwo!33510 r!7292))) (= (regOne!33511 (regTwo!33510 r!7292)) (regTwo!33510 r!7292))) (= lambda!370692 lambda!370600))))

(declare-fun bs!1704963 () Bool)

(assert (= bs!1704963 (and b!6634335 b!6633972)))

(assert (=> bs!1704963 (= (and (= (reg!16828 (regOne!33511 (regTwo!33510 r!7292))) (reg!16828 (regOne!33511 r!7292))) (= (regOne!33511 (regTwo!33510 r!7292)) (regOne!33511 r!7292))) (= lambda!370692 lambda!370654))))

(declare-fun bs!1704964 () Bool)

(assert (= bs!1704964 (and b!6634335 d!2079437)))

(assert (=> bs!1704964 (not (= lambda!370692 lambda!370636))))

(declare-fun bs!1704965 () Bool)

(assert (= bs!1704965 (and b!6634335 b!6634186)))

(assert (=> bs!1704965 (not (= lambda!370692 lambda!370671))))

(declare-fun bs!1704966 () Bool)

(assert (= bs!1704966 (and b!6634335 b!6632927)))

(assert (=> bs!1704966 (not (= lambda!370692 lambda!370572))))

(declare-fun bs!1704967 () Bool)

(assert (= bs!1704967 (and b!6634335 b!6633853)))

(assert (=> bs!1704967 (not (= lambda!370692 lambda!370650))))

(assert (=> bs!1704960 (not (= lambda!370692 lambda!370686))))

(assert (=> bs!1704964 (not (= lambda!370692 lambda!370637))))

(declare-fun bs!1704968 () Bool)

(assert (= bs!1704968 (and b!6634335 b!6633847)))

(assert (=> bs!1704968 (= (and (= (reg!16828 (regOne!33511 (regTwo!33510 r!7292))) (reg!16828 (regTwo!33511 (regOne!33510 r!7292)))) (= (regOne!33511 (regTwo!33510 r!7292)) (regTwo!33511 (regOne!33510 r!7292)))) (= lambda!370692 lambda!370649))))

(assert (=> bs!1704966 (not (= lambda!370692 lambda!370571))))

(declare-fun bs!1704969 () Bool)

(assert (= bs!1704969 (and b!6634335 b!6633222)))

(assert (=> bs!1704969 (= (and (= (reg!16828 (regOne!33511 (regTwo!33510 r!7292))) (reg!16828 (regOne!33510 r!7292))) (= (regOne!33511 (regTwo!33510 r!7292)) (regOne!33510 r!7292))) (= lambda!370692 lambda!370596))))

(declare-fun bs!1704970 () Bool)

(assert (= bs!1704970 (and b!6634335 b!6634180)))

(assert (=> bs!1704970 (= (and (= (reg!16828 (regOne!33511 (regTwo!33510 r!7292))) (reg!16828 (regTwo!33511 r!7292))) (= (regOne!33511 (regTwo!33510 r!7292)) (regTwo!33511 r!7292))) (= lambda!370692 lambda!370670))))

(declare-fun bs!1704971 () Bool)

(assert (= bs!1704971 (and b!6634335 b!6633059)))

(assert (=> bs!1704971 (= (and (= (reg!16828 (regOne!33511 (regTwo!33510 r!7292))) (reg!16828 r!7292)) (= (regOne!33511 (regTwo!33510 r!7292)) r!7292)) (= lambda!370692 lambda!370581))))

(declare-fun bs!1704972 () Bool)

(assert (= bs!1704972 (and b!6634335 b!6633065)))

(assert (=> bs!1704972 (not (= lambda!370692 lambda!370582))))

(declare-fun bs!1704973 () Bool)

(assert (= bs!1704973 (and b!6634335 d!2079641)))

(assert (=> bs!1704973 (not (= lambda!370692 lambda!370660))))

(assert (=> b!6634335 true))

(assert (=> b!6634335 true))

(declare-fun bs!1704974 () Bool)

(declare-fun b!6634341 () Bool)

(assert (= bs!1704974 (and b!6634341 d!2079443)))

(declare-fun lambda!370693 () Int)

(assert (=> bs!1704974 (not (= lambda!370693 lambda!370642))))

(declare-fun bs!1704975 () Bool)

(assert (= bs!1704975 (and b!6634341 b!6633257)))

(assert (=> bs!1704975 (= (and (= (regOne!33510 (regOne!33511 (regTwo!33510 r!7292))) (regOne!33510 (regTwo!33510 r!7292))) (= (regTwo!33510 (regOne!33511 (regTwo!33510 r!7292))) (regTwo!33510 (regTwo!33510 r!7292)))) (= lambda!370693 lambda!370601))))

(declare-fun bs!1704976 () Bool)

(assert (= bs!1704976 (and b!6634341 b!6633978)))

(assert (=> bs!1704976 (= (and (= (regOne!33510 (regOne!33511 (regTwo!33510 r!7292))) (regOne!33510 (regOne!33511 r!7292))) (= (regTwo!33510 (regOne!33511 (regTwo!33510 r!7292))) (regTwo!33510 (regOne!33511 r!7292)))) (= lambda!370693 lambda!370655))))

(declare-fun bs!1704977 () Bool)

(assert (= bs!1704977 (and b!6634341 d!2079751)))

(assert (=> bs!1704977 (= (and (= (regOne!33510 (regOne!33511 (regTwo!33510 r!7292))) (regOne!33510 r!7292)) (= (regTwo!33510 (regOne!33511 (regTwo!33510 r!7292))) (regTwo!33510 r!7292))) (= lambda!370693 lambda!370688))))

(declare-fun bs!1704978 () Bool)

(assert (= bs!1704978 (and b!6634341 b!6633228)))

(assert (=> bs!1704978 (= (and (= (regOne!33510 (regOne!33511 (regTwo!33510 r!7292))) (regOne!33510 (regOne!33510 r!7292))) (= (regTwo!33510 (regOne!33511 (regTwo!33510 r!7292))) (regTwo!33510 (regOne!33510 r!7292)))) (= lambda!370693 lambda!370597))))

(declare-fun bs!1704979 () Bool)

(assert (= bs!1704979 (and b!6634341 b!6633250)))

(assert (=> bs!1704979 (not (= lambda!370693 lambda!370600))))

(declare-fun bs!1704980 () Bool)

(assert (= bs!1704980 (and b!6634341 b!6633972)))

(assert (=> bs!1704980 (not (= lambda!370693 lambda!370654))))

(declare-fun bs!1704981 () Bool)

(assert (= bs!1704981 (and b!6634341 d!2079437)))

(assert (=> bs!1704981 (not (= lambda!370693 lambda!370636))))

(declare-fun bs!1704982 () Bool)

(assert (= bs!1704982 (and b!6634341 b!6634186)))

(assert (=> bs!1704982 (= (and (= (regOne!33510 (regOne!33511 (regTwo!33510 r!7292))) (regOne!33510 (regTwo!33511 r!7292))) (= (regTwo!33510 (regOne!33511 (regTwo!33510 r!7292))) (regTwo!33510 (regTwo!33511 r!7292)))) (= lambda!370693 lambda!370671))))

(declare-fun bs!1704983 () Bool)

(assert (= bs!1704983 (and b!6634341 b!6632927)))

(assert (=> bs!1704983 (= (and (= (regOne!33510 (regOne!33511 (regTwo!33510 r!7292))) (regOne!33510 r!7292)) (= (regTwo!33510 (regOne!33511 (regTwo!33510 r!7292))) (regTwo!33510 r!7292))) (= lambda!370693 lambda!370572))))

(declare-fun bs!1704984 () Bool)

(assert (= bs!1704984 (and b!6634341 b!6633853)))

(assert (=> bs!1704984 (= (and (= (regOne!33510 (regOne!33511 (regTwo!33510 r!7292))) (regOne!33510 (regTwo!33511 (regOne!33510 r!7292)))) (= (regTwo!33510 (regOne!33511 (regTwo!33510 r!7292))) (regTwo!33510 (regTwo!33511 (regOne!33510 r!7292))))) (= lambda!370693 lambda!370650))))

(declare-fun bs!1704985 () Bool)

(assert (= bs!1704985 (and b!6634341 b!6634335)))

(assert (=> bs!1704985 (not (= lambda!370693 lambda!370692))))

(assert (=> bs!1704977 (not (= lambda!370693 lambda!370686))))

(assert (=> bs!1704981 (= (and (= (regOne!33510 (regOne!33511 (regTwo!33510 r!7292))) (regOne!33510 r!7292)) (= (regTwo!33510 (regOne!33511 (regTwo!33510 r!7292))) (regTwo!33510 r!7292))) (= lambda!370693 lambda!370637))))

(declare-fun bs!1704986 () Bool)

(assert (= bs!1704986 (and b!6634341 b!6633847)))

(assert (=> bs!1704986 (not (= lambda!370693 lambda!370649))))

(assert (=> bs!1704983 (not (= lambda!370693 lambda!370571))))

(declare-fun bs!1704987 () Bool)

(assert (= bs!1704987 (and b!6634341 b!6633222)))

(assert (=> bs!1704987 (not (= lambda!370693 lambda!370596))))

(declare-fun bs!1704988 () Bool)

(assert (= bs!1704988 (and b!6634341 b!6634180)))

(assert (=> bs!1704988 (not (= lambda!370693 lambda!370670))))

(declare-fun bs!1704989 () Bool)

(assert (= bs!1704989 (and b!6634341 b!6633059)))

(assert (=> bs!1704989 (not (= lambda!370693 lambda!370581))))

(declare-fun bs!1704990 () Bool)

(assert (= bs!1704990 (and b!6634341 b!6633065)))

(assert (=> bs!1704990 (= (and (= (regOne!33510 (regOne!33511 (regTwo!33510 r!7292))) (regOne!33510 r!7292)) (= (regTwo!33510 (regOne!33511 (regTwo!33510 r!7292))) (regTwo!33510 r!7292))) (= lambda!370693 lambda!370582))))

(declare-fun bs!1704991 () Bool)

(assert (= bs!1704991 (and b!6634341 d!2079641)))

(assert (=> bs!1704991 (not (= lambda!370693 lambda!370660))))

(assert (=> b!6634341 true))

(assert (=> b!6634341 true))

(declare-fun b!6634334 () Bool)

(declare-fun c!1223717 () Bool)

(assert (=> b!6634334 (= c!1223717 ((_ is Union!16499) (regOne!33511 (regTwo!33510 r!7292))))))

(declare-fun e!4012563 () Bool)

(declare-fun e!4012560 () Bool)

(assert (=> b!6634334 (= e!4012563 e!4012560)))

(declare-fun bm!582378 () Bool)

(declare-fun call!582383 () Bool)

(assert (=> bm!582378 (= call!582383 (isEmpty!37969 s!2326))))

(declare-fun e!4012559 () Bool)

(declare-fun call!582384 () Bool)

(assert (=> b!6634335 (= e!4012559 call!582384)))

(declare-fun b!6634336 () Bool)

(assert (=> b!6634336 (= e!4012563 (= s!2326 (Cons!65674 (c!1223326 (regOne!33511 (regTwo!33510 r!7292))) Nil!65674)))))

(declare-fun b!6634337 () Bool)

(declare-fun e!4012562 () Bool)

(assert (=> b!6634337 (= e!4012560 e!4012562)))

(declare-fun res!2718958 () Bool)

(assert (=> b!6634337 (= res!2718958 (matchRSpec!3600 (regOne!33511 (regOne!33511 (regTwo!33510 r!7292))) s!2326))))

(assert (=> b!6634337 (=> res!2718958 e!4012562)))

(declare-fun b!6634338 () Bool)

(declare-fun e!4012565 () Bool)

(declare-fun e!4012561 () Bool)

(assert (=> b!6634338 (= e!4012565 e!4012561)))

(declare-fun res!2718957 () Bool)

(assert (=> b!6634338 (= res!2718957 (not ((_ is EmptyLang!16499) (regOne!33511 (regTwo!33510 r!7292)))))))

(assert (=> b!6634338 (=> (not res!2718957) (not e!4012561))))

(declare-fun bm!582379 () Bool)

(declare-fun c!1223715 () Bool)

(assert (=> bm!582379 (= call!582384 (Exists!3569 (ite c!1223715 lambda!370692 lambda!370693)))))

(declare-fun b!6634339 () Bool)

(declare-fun e!4012564 () Bool)

(assert (=> b!6634339 (= e!4012560 e!4012564)))

(assert (=> b!6634339 (= c!1223715 ((_ is Star!16499) (regOne!33511 (regTwo!33510 r!7292))))))

(declare-fun d!2079789 () Bool)

(declare-fun c!1223714 () Bool)

(assert (=> d!2079789 (= c!1223714 ((_ is EmptyExpr!16499) (regOne!33511 (regTwo!33510 r!7292))))))

(assert (=> d!2079789 (= (matchRSpec!3600 (regOne!33511 (regTwo!33510 r!7292)) s!2326) e!4012565)))

(declare-fun b!6634340 () Bool)

(declare-fun c!1223716 () Bool)

(assert (=> b!6634340 (= c!1223716 ((_ is ElementMatch!16499) (regOne!33511 (regTwo!33510 r!7292))))))

(assert (=> b!6634340 (= e!4012561 e!4012563)))

(assert (=> b!6634341 (= e!4012564 call!582384)))

(declare-fun b!6634342 () Bool)

(declare-fun res!2718956 () Bool)

(assert (=> b!6634342 (=> res!2718956 e!4012559)))

(assert (=> b!6634342 (= res!2718956 call!582383)))

(assert (=> b!6634342 (= e!4012564 e!4012559)))

(declare-fun b!6634343 () Bool)

(assert (=> b!6634343 (= e!4012562 (matchRSpec!3600 (regTwo!33511 (regOne!33511 (regTwo!33510 r!7292))) s!2326))))

(declare-fun b!6634344 () Bool)

(assert (=> b!6634344 (= e!4012565 call!582383)))

(assert (= (and d!2079789 c!1223714) b!6634344))

(assert (= (and d!2079789 (not c!1223714)) b!6634338))

(assert (= (and b!6634338 res!2718957) b!6634340))

(assert (= (and b!6634340 c!1223716) b!6634336))

(assert (= (and b!6634340 (not c!1223716)) b!6634334))

(assert (= (and b!6634334 c!1223717) b!6634337))

(assert (= (and b!6634334 (not c!1223717)) b!6634339))

(assert (= (and b!6634337 (not res!2718958)) b!6634343))

(assert (= (and b!6634339 c!1223715) b!6634342))

(assert (= (and b!6634339 (not c!1223715)) b!6634341))

(assert (= (and b!6634342 (not res!2718956)) b!6634335))

(assert (= (or b!6634335 b!6634341) bm!582379))

(assert (= (or b!6634344 b!6634342) bm!582378))

(assert (=> bm!582378 m!7401664))

(declare-fun m!7402708 () Bool)

(assert (=> b!6634337 m!7402708))

(declare-fun m!7402710 () Bool)

(assert (=> bm!582379 m!7402710))

(declare-fun m!7402712 () Bool)

(assert (=> b!6634343 m!7402712))

(assert (=> b!6633253 d!2079789))

(declare-fun b!6634365 () Bool)

(declare-fun res!2718966 () Bool)

(declare-fun e!4012582 () Bool)

(assert (=> b!6634365 (=> res!2718966 e!4012582)))

(declare-fun e!4012579 () Bool)

(assert (=> b!6634365 (= res!2718966 e!4012579)))

(declare-fun res!2718964 () Bool)

(assert (=> b!6634365 (=> (not res!2718964) (not e!4012579))))

(declare-fun lt!2419340 () Bool)

(assert (=> b!6634365 (= res!2718964 lt!2419340)))

(declare-fun d!2079791 () Bool)

(declare-fun e!4012580 () Bool)

(assert (=> d!2079791 e!4012580))

(declare-fun c!1223728 () Bool)

(assert (=> d!2079791 (= c!1223728 ((_ is EmptyExpr!16499) (derivativeStep!5178 lt!2419180 (head!13439 s!2326))))))

(declare-fun e!4012577 () Bool)

(assert (=> d!2079791 (= lt!2419340 e!4012577)))

(declare-fun c!1223729 () Bool)

(assert (=> d!2079791 (= c!1223729 (isEmpty!37969 (tail!12524 s!2326)))))

(assert (=> d!2079791 (validRegex!8235 (derivativeStep!5178 lt!2419180 (head!13439 s!2326)))))

(assert (=> d!2079791 (= (matchR!8682 (derivativeStep!5178 lt!2419180 (head!13439 s!2326)) (tail!12524 s!2326)) lt!2419340)))

(declare-fun bm!582388 () Bool)

(declare-fun call!582393 () Bool)

(assert (=> bm!582388 (= call!582393 (isEmpty!37969 (tail!12524 s!2326)))))

(declare-fun b!6634366 () Bool)

(declare-fun e!4012576 () Bool)

(assert (=> b!6634366 (= e!4012580 e!4012576)))

(declare-fun c!1223730 () Bool)

(assert (=> b!6634366 (= c!1223730 ((_ is EmptyLang!16499) (derivativeStep!5178 lt!2419180 (head!13439 s!2326))))))

(declare-fun b!6634367 () Bool)

(assert (=> b!6634367 (= e!4012576 (not lt!2419340))))

(declare-fun b!6634368 () Bool)

(assert (=> b!6634368 (= e!4012580 (= lt!2419340 call!582393))))

(declare-fun b!6634369 () Bool)

(assert (=> b!6634369 (= e!4012579 (= (head!13439 (tail!12524 s!2326)) (c!1223326 (derivativeStep!5178 lt!2419180 (head!13439 s!2326)))))))

(declare-fun b!6634370 () Bool)

(declare-fun res!2718962 () Bool)

(declare-fun e!4012578 () Bool)

(assert (=> b!6634370 (=> res!2718962 e!4012578)))

(assert (=> b!6634370 (= res!2718962 (not (isEmpty!37969 (tail!12524 (tail!12524 s!2326)))))))

(declare-fun b!6634371 () Bool)

(assert (=> b!6634371 (= e!4012578 (not (= (head!13439 (tail!12524 s!2326)) (c!1223326 (derivativeStep!5178 lt!2419180 (head!13439 s!2326))))))))

(declare-fun b!6634372 () Bool)

(assert (=> b!6634372 (= e!4012577 (nullable!6492 (derivativeStep!5178 lt!2419180 (head!13439 s!2326))))))

(declare-fun b!6634373 () Bool)

(declare-fun res!2718960 () Bool)

(assert (=> b!6634373 (=> (not res!2718960) (not e!4012579))))

(assert (=> b!6634373 (= res!2718960 (not call!582393))))

(declare-fun b!6634374 () Bool)

(declare-fun res!2718965 () Bool)

(assert (=> b!6634374 (=> (not res!2718965) (not e!4012579))))

(assert (=> b!6634374 (= res!2718965 (isEmpty!37969 (tail!12524 (tail!12524 s!2326))))))

(declare-fun b!6634375 () Bool)

(declare-fun e!4012581 () Bool)

(assert (=> b!6634375 (= e!4012582 e!4012581)))

(declare-fun res!2718963 () Bool)

(assert (=> b!6634375 (=> (not res!2718963) (not e!4012581))))

(assert (=> b!6634375 (= res!2718963 (not lt!2419340))))

(declare-fun b!6634376 () Bool)

(declare-fun res!2718959 () Bool)

(assert (=> b!6634376 (=> res!2718959 e!4012582)))

(assert (=> b!6634376 (= res!2718959 (not ((_ is ElementMatch!16499) (derivativeStep!5178 lt!2419180 (head!13439 s!2326)))))))

(assert (=> b!6634376 (= e!4012576 e!4012582)))

(declare-fun b!6634377 () Bool)

(assert (=> b!6634377 (= e!4012577 (matchR!8682 (derivativeStep!5178 (derivativeStep!5178 lt!2419180 (head!13439 s!2326)) (head!13439 (tail!12524 s!2326))) (tail!12524 (tail!12524 s!2326))))))

(declare-fun b!6634378 () Bool)

(assert (=> b!6634378 (= e!4012581 e!4012578)))

(declare-fun res!2718961 () Bool)

(assert (=> b!6634378 (=> res!2718961 e!4012578)))

(assert (=> b!6634378 (= res!2718961 call!582393)))

(assert (= (and d!2079791 c!1223729) b!6634372))

(assert (= (and d!2079791 (not c!1223729)) b!6634377))

(assert (= (and d!2079791 c!1223728) b!6634368))

(assert (= (and d!2079791 (not c!1223728)) b!6634366))

(assert (= (and b!6634366 c!1223730) b!6634367))

(assert (= (and b!6634366 (not c!1223730)) b!6634376))

(assert (= (and b!6634376 (not res!2718959)) b!6634365))

(assert (= (and b!6634365 res!2718964) b!6634373))

(assert (= (and b!6634373 res!2718960) b!6634374))

(assert (= (and b!6634374 res!2718965) b!6634369))

(assert (= (and b!6634365 (not res!2718966)) b!6634375))

(assert (= (and b!6634375 res!2718963) b!6634378))

(assert (= (and b!6634378 (not res!2718961)) b!6634370))

(assert (= (and b!6634370 (not res!2718962)) b!6634371))

(assert (= (or b!6634368 b!6634373 b!6634378) bm!582388))

(assert (=> b!6634377 m!7401676))

(assert (=> b!6634377 m!7402256))

(assert (=> b!6634377 m!7401732))

(assert (=> b!6634377 m!7402256))

(declare-fun m!7402714 () Bool)

(assert (=> b!6634377 m!7402714))

(assert (=> b!6634377 m!7401676))

(assert (=> b!6634377 m!7402260))

(assert (=> b!6634377 m!7402714))

(assert (=> b!6634377 m!7402260))

(declare-fun m!7402716 () Bool)

(assert (=> b!6634377 m!7402716))

(assert (=> d!2079791 m!7401676))

(assert (=> d!2079791 m!7401680))

(assert (=> d!2079791 m!7401732))

(declare-fun m!7402718 () Bool)

(assert (=> d!2079791 m!7402718))

(assert (=> b!6634369 m!7401676))

(assert (=> b!6634369 m!7402256))

(assert (=> b!6634371 m!7401676))

(assert (=> b!6634371 m!7402256))

(assert (=> bm!582388 m!7401676))

(assert (=> bm!582388 m!7401680))

(assert (=> b!6634374 m!7401676))

(assert (=> b!6634374 m!7402260))

(assert (=> b!6634374 m!7402260))

(assert (=> b!6634374 m!7402266))

(assert (=> b!6634372 m!7401732))

(declare-fun m!7402720 () Bool)

(assert (=> b!6634372 m!7402720))

(assert (=> b!6634370 m!7401676))

(assert (=> b!6634370 m!7402260))

(assert (=> b!6634370 m!7402260))

(assert (=> b!6634370 m!7402266))

(assert (=> b!6633199 d!2079791))

(declare-fun c!1223738 () Bool)

(declare-fun c!1223737 () Bool)

(declare-fun bm!582393 () Bool)

(declare-fun call!582400 () Regex!16499)

(assert (=> bm!582393 (= call!582400 (derivativeStep!5178 (ite c!1223738 (regOne!33511 lt!2419180) (ite c!1223737 (regTwo!33510 lt!2419180) (regOne!33510 lt!2419180))) (head!13439 s!2326)))))

(declare-fun b!6634389 () Bool)

(declare-fun e!4012588 () Regex!16499)

(assert (=> b!6634389 (= e!4012588 (ite (= (head!13439 s!2326) (c!1223326 lt!2419180)) EmptyExpr!16499 EmptyLang!16499))))

(declare-fun b!6634390 () Bool)

(assert (=> b!6634390 (= c!1223737 (nullable!6492 (regOne!33510 lt!2419180)))))

(declare-fun e!4012590 () Regex!16499)

(declare-fun e!4012589 () Regex!16499)

(assert (=> b!6634390 (= e!4012590 e!4012589)))

(declare-fun b!6634391 () Bool)

(declare-fun e!4012591 () Regex!16499)

(assert (=> b!6634391 (= e!4012591 EmptyLang!16499)))

(declare-fun b!6634392 () Bool)

(declare-fun call!582398 () Regex!16499)

(declare-fun call!582399 () Regex!16499)

(assert (=> b!6634392 (= e!4012589 (Union!16499 (Concat!25344 call!582398 (regTwo!33510 lt!2419180)) call!582399))))

(declare-fun b!6634393 () Bool)

(declare-fun e!4012592 () Regex!16499)

(assert (=> b!6634393 (= e!4012592 e!4012590)))

(declare-fun c!1223736 () Bool)

(assert (=> b!6634393 (= c!1223736 ((_ is Star!16499) lt!2419180))))

(declare-fun d!2079793 () Bool)

(declare-fun lt!2419342 () Regex!16499)

(assert (=> d!2079793 (validRegex!8235 lt!2419342)))

(assert (=> d!2079793 (= lt!2419342 e!4012591)))

(declare-fun c!1223739 () Bool)

(assert (=> d!2079793 (= c!1223739 (or ((_ is EmptyExpr!16499) lt!2419180) ((_ is EmptyLang!16499) lt!2419180)))))

(assert (=> d!2079793 (validRegex!8235 lt!2419180)))

(assert (=> d!2079793 (= (derivativeStep!5178 lt!2419180 (head!13439 s!2326)) lt!2419342)))

(declare-fun b!6634394 () Bool)

(assert (=> b!6634394 (= e!4012589 (Union!16499 (Concat!25344 call!582399 (regTwo!33510 lt!2419180)) EmptyLang!16499))))

(declare-fun b!6634395 () Bool)

(assert (=> b!6634395 (= e!4012590 (Concat!25344 call!582398 lt!2419180))))

(declare-fun b!6634396 () Bool)

(declare-fun call!582401 () Regex!16499)

(assert (=> b!6634396 (= e!4012592 (Union!16499 call!582400 call!582401))))

(declare-fun bm!582394 () Bool)

(assert (=> bm!582394 (= call!582399 call!582400)))

(declare-fun b!6634397 () Bool)

(assert (=> b!6634397 (= e!4012591 e!4012588)))

(declare-fun c!1223740 () Bool)

(assert (=> b!6634397 (= c!1223740 ((_ is ElementMatch!16499) lt!2419180))))

(declare-fun bm!582395 () Bool)

(assert (=> bm!582395 (= call!582398 call!582401)))

(declare-fun b!6634398 () Bool)

(assert (=> b!6634398 (= c!1223738 ((_ is Union!16499) lt!2419180))))

(assert (=> b!6634398 (= e!4012588 e!4012592)))

(declare-fun bm!582396 () Bool)

(assert (=> bm!582396 (= call!582401 (derivativeStep!5178 (ite c!1223738 (regTwo!33511 lt!2419180) (ite c!1223736 (reg!16828 lt!2419180) (regOne!33510 lt!2419180))) (head!13439 s!2326)))))

(assert (= (and d!2079793 c!1223739) b!6634391))

(assert (= (and d!2079793 (not c!1223739)) b!6634397))

(assert (= (and b!6634397 c!1223740) b!6634389))

(assert (= (and b!6634397 (not c!1223740)) b!6634398))

(assert (= (and b!6634398 c!1223738) b!6634396))

(assert (= (and b!6634398 (not c!1223738)) b!6634393))

(assert (= (and b!6634393 c!1223736) b!6634395))

(assert (= (and b!6634393 (not c!1223736)) b!6634390))

(assert (= (and b!6634390 c!1223737) b!6634392))

(assert (= (and b!6634390 (not c!1223737)) b!6634394))

(assert (= (or b!6634392 b!6634394) bm!582394))

(assert (= (or b!6634395 b!6634392) bm!582395))

(assert (= (or b!6634396 bm!582395) bm!582396))

(assert (= (or b!6634396 bm!582394) bm!582393))

(assert (=> bm!582393 m!7401672))

(declare-fun m!7402730 () Bool)

(assert (=> bm!582393 m!7402730))

(declare-fun m!7402732 () Bool)

(assert (=> b!6634390 m!7402732))

(declare-fun m!7402734 () Bool)

(assert (=> d!2079793 m!7402734))

(assert (=> d!2079793 m!7401736))

(assert (=> bm!582396 m!7401672))

(declare-fun m!7402736 () Bool)

(assert (=> bm!582396 m!7402736))

(assert (=> b!6633199 d!2079793))

(assert (=> b!6633199 d!2079513))

(assert (=> b!6633199 d!2079495))

(declare-fun d!2079797 () Bool)

(assert (=> d!2079797 (= (Exists!3569 (ite c!1223368 lambda!370581 lambda!370582)) (choose!49554 (ite c!1223368 lambda!370581 lambda!370582)))))

(declare-fun bs!1704992 () Bool)

(assert (= bs!1704992 d!2079797))

(declare-fun m!7402738 () Bool)

(assert (=> bs!1704992 m!7402738))

(assert (=> bm!582197 d!2079797))

(declare-fun bm!582397 () Bool)

(declare-fun call!582403 () Bool)

(declare-fun c!1223742 () Bool)

(assert (=> bm!582397 (= call!582403 (validRegex!8235 (ite c!1223742 (regTwo!33511 (ite c!1223347 (regTwo!33511 r!7292) (regTwo!33510 r!7292))) (regTwo!33510 (ite c!1223347 (regTwo!33511 r!7292) (regTwo!33510 r!7292))))))))

(declare-fun d!2079799 () Bool)

(declare-fun res!2718968 () Bool)

(declare-fun e!4012599 () Bool)

(assert (=> d!2079799 (=> res!2718968 e!4012599)))

(assert (=> d!2079799 (= res!2718968 ((_ is ElementMatch!16499) (ite c!1223347 (regTwo!33511 r!7292) (regTwo!33510 r!7292))))))

(assert (=> d!2079799 (= (validRegex!8235 (ite c!1223347 (regTwo!33511 r!7292) (regTwo!33510 r!7292))) e!4012599)))

(declare-fun bm!582398 () Bool)

(declare-fun call!582404 () Bool)

(declare-fun call!582402 () Bool)

(assert (=> bm!582398 (= call!582404 call!582402)))

(declare-fun c!1223743 () Bool)

(declare-fun bm!582399 () Bool)

(assert (=> bm!582399 (= call!582402 (validRegex!8235 (ite c!1223743 (reg!16828 (ite c!1223347 (regTwo!33511 r!7292) (regTwo!33510 r!7292))) (ite c!1223742 (regOne!33511 (ite c!1223347 (regTwo!33511 r!7292) (regTwo!33510 r!7292))) (regOne!33510 (ite c!1223347 (regTwo!33511 r!7292) (regTwo!33510 r!7292)))))))))

(declare-fun b!6634401 () Bool)

(declare-fun e!4012597 () Bool)

(declare-fun e!4012600 () Bool)

(assert (=> b!6634401 (= e!4012597 e!4012600)))

(declare-fun res!2718971 () Bool)

(assert (=> b!6634401 (= res!2718971 (not (nullable!6492 (reg!16828 (ite c!1223347 (regTwo!33511 r!7292) (regTwo!33510 r!7292))))))))

(assert (=> b!6634401 (=> (not res!2718971) (not e!4012600))))

(declare-fun b!6634402 () Bool)

(declare-fun res!2718969 () Bool)

(declare-fun e!4012596 () Bool)

(assert (=> b!6634402 (=> res!2718969 e!4012596)))

(assert (=> b!6634402 (= res!2718969 (not ((_ is Concat!25344) (ite c!1223347 (regTwo!33511 r!7292) (regTwo!33510 r!7292)))))))

(declare-fun e!4012595 () Bool)

(assert (=> b!6634402 (= e!4012595 e!4012596)))

(declare-fun b!6634403 () Bool)

(declare-fun e!4012598 () Bool)

(assert (=> b!6634403 (= e!4012598 call!582403)))

(declare-fun b!6634404 () Bool)

(declare-fun e!4012594 () Bool)

(assert (=> b!6634404 (= e!4012594 call!582403)))

(declare-fun b!6634405 () Bool)

(assert (=> b!6634405 (= e!4012596 e!4012598)))

(declare-fun res!2718970 () Bool)

(assert (=> b!6634405 (=> (not res!2718970) (not e!4012598))))

(assert (=> b!6634405 (= res!2718970 call!582404)))

(declare-fun b!6634406 () Bool)

(assert (=> b!6634406 (= e!4012597 e!4012595)))

(assert (=> b!6634406 (= c!1223742 ((_ is Union!16499) (ite c!1223347 (regTwo!33511 r!7292) (regTwo!33510 r!7292))))))

(declare-fun b!6634407 () Bool)

(declare-fun res!2718967 () Bool)

(assert (=> b!6634407 (=> (not res!2718967) (not e!4012594))))

(assert (=> b!6634407 (= res!2718967 call!582404)))

(assert (=> b!6634407 (= e!4012595 e!4012594)))

(declare-fun b!6634408 () Bool)

(assert (=> b!6634408 (= e!4012600 call!582402)))

(declare-fun b!6634409 () Bool)

(assert (=> b!6634409 (= e!4012599 e!4012597)))

(assert (=> b!6634409 (= c!1223743 ((_ is Star!16499) (ite c!1223347 (regTwo!33511 r!7292) (regTwo!33510 r!7292))))))

(assert (= (and d!2079799 (not res!2718968)) b!6634409))

(assert (= (and b!6634409 c!1223743) b!6634401))

(assert (= (and b!6634409 (not c!1223743)) b!6634406))

(assert (= (and b!6634401 res!2718971) b!6634408))

(assert (= (and b!6634406 c!1223742) b!6634407))

(assert (= (and b!6634406 (not c!1223742)) b!6634402))

(assert (= (and b!6634407 res!2718967) b!6634404))

(assert (= (and b!6634402 (not res!2718969)) b!6634405))

(assert (= (and b!6634405 res!2718970) b!6634403))

(assert (= (or b!6634404 b!6634403) bm!582397))

(assert (= (or b!6634407 b!6634405) bm!582398))

(assert (= (or b!6634408 bm!582398) bm!582399))

(declare-fun m!7402746 () Bool)

(assert (=> bm!582397 m!7402746))

(declare-fun m!7402748 () Bool)

(assert (=> bm!582399 m!7402748))

(declare-fun m!7402750 () Bool)

(assert (=> b!6634401 m!7402750))

(assert (=> bm!582173 d!2079799))

(declare-fun d!2079803 () Bool)

(assert (=> d!2079803 (= (isEmpty!37968 (t!379460 (unfocusZipperList!1920 zl!343))) ((_ is Nil!65672) (t!379460 (unfocusZipperList!1920 zl!343))))))

(assert (=> b!6633475 d!2079803))

(declare-fun d!2079805 () Bool)

(declare-fun c!1223751 () Bool)

(assert (=> d!2079805 (= c!1223751 ((_ is Nil!65673) lt!2419262))))

(declare-fun e!4012609 () (InoxSet Context!11766))

(assert (=> d!2079805 (= (content!12684 lt!2419262) e!4012609)))

(declare-fun b!6634425 () Bool)

(assert (=> b!6634425 (= e!4012609 ((as const (Array Context!11766 Bool)) false))))

(declare-fun b!6634426 () Bool)

(assert (=> b!6634426 (= e!4012609 ((_ map or) (store ((as const (Array Context!11766 Bool)) false) (h!72121 lt!2419262) true) (content!12684 (t!379461 lt!2419262))))))

(assert (= (and d!2079805 c!1223751) b!6634425))

(assert (= (and d!2079805 (not c!1223751)) b!6634426))

(declare-fun m!7402756 () Bool)

(assert (=> b!6634426 m!7402756))

(declare-fun m!7402760 () Bool)

(assert (=> b!6634426 m!7402760))

(assert (=> b!6633417 d!2079805))

(assert (=> bs!1704667 d!2079367))

(assert (=> b!6633484 d!2079327))

(declare-fun bs!1705000 () Bool)

(declare-fun d!2079809 () Bool)

(assert (= bs!1705000 (and d!2079809 d!2079547)))

(declare-fun lambda!370695 () Int)

(assert (=> bs!1705000 (= lambda!370695 lambda!370651)))

(declare-fun bs!1705001 () Bool)

(assert (= bs!1705001 (and d!2079809 d!2079745)))

(assert (=> bs!1705001 (= lambda!370695 lambda!370679)))

(declare-fun bs!1705002 () Bool)

(assert (= bs!1705002 (and d!2079809 d!2079403)))

(assert (=> bs!1705002 (= lambda!370695 lambda!370613)))

(declare-fun bs!1705003 () Bool)

(assert (= bs!1705003 (and d!2079809 d!2079411)))

(assert (=> bs!1705003 (= lambda!370695 lambda!370625)))

(declare-fun bs!1705004 () Bool)

(assert (= bs!1705004 (and d!2079809 d!2079327)))

(assert (=> bs!1705004 (= lambda!370695 lambda!370587)))

(declare-fun bs!1705005 () Bool)

(assert (= bs!1705005 (and d!2079809 d!2079343)))

(assert (=> bs!1705005 (= lambda!370695 lambda!370593)))

(declare-fun bs!1705006 () Bool)

(assert (= bs!1705006 (and d!2079809 d!2079389)))

(assert (=> bs!1705006 (= lambda!370695 lambda!370611)))

(declare-fun bs!1705007 () Bool)

(assert (= bs!1705007 (and d!2079809 d!2079553)))

(assert (=> bs!1705007 (= lambda!370695 lambda!370652)))

(declare-fun bs!1705008 () Bool)

(assert (= bs!1705008 (and d!2079809 d!2079405)))

(assert (=> bs!1705008 (= lambda!370695 lambda!370619)))

(declare-fun bs!1705009 () Bool)

(assert (= bs!1705009 (and d!2079809 d!2079509)))

(assert (=> bs!1705009 (= lambda!370695 lambda!370648)))

(declare-fun lt!2419343 () List!65796)

(assert (=> d!2079809 (forall!15694 lt!2419343 lambda!370695)))

(declare-fun e!4012610 () List!65796)

(assert (=> d!2079809 (= lt!2419343 e!4012610)))

(declare-fun c!1223752 () Bool)

(assert (=> d!2079809 (= c!1223752 ((_ is Cons!65673) (t!379461 zl!343)))))

(assert (=> d!2079809 (= (unfocusZipperList!1920 (t!379461 zl!343)) lt!2419343)))

(declare-fun b!6634427 () Bool)

(assert (=> b!6634427 (= e!4012610 (Cons!65672 (generalisedConcat!2096 (exprs!6383 (h!72121 (t!379461 zl!343)))) (unfocusZipperList!1920 (t!379461 (t!379461 zl!343)))))))

(declare-fun b!6634428 () Bool)

(assert (=> b!6634428 (= e!4012610 Nil!65672)))

(assert (= (and d!2079809 c!1223752) b!6634427))

(assert (= (and d!2079809 (not c!1223752)) b!6634428))

(declare-fun m!7402770 () Bool)

(assert (=> d!2079809 m!7402770))

(declare-fun m!7402772 () Bool)

(assert (=> b!6634427 m!7402772))

(declare-fun m!7402774 () Bool)

(assert (=> b!6634427 m!7402774))

(assert (=> b!6633484 d!2079809))

(declare-fun bs!1705010 () Bool)

(declare-fun d!2079813 () Bool)

(assert (= bs!1705010 (and d!2079813 d!2079655)))

(declare-fun lambda!370696 () Int)

(assert (=> bs!1705010 (= lambda!370696 lambda!370664)))

(declare-fun bs!1705011 () Bool)

(assert (= bs!1705011 (and d!2079813 d!2079675)))

(assert (=> bs!1705011 (= lambda!370696 lambda!370667)))

(declare-fun bs!1705012 () Bool)

(assert (= bs!1705012 (and d!2079813 d!2079783)))

(assert (=> bs!1705012 (= lambda!370696 lambda!370690)))

(declare-fun bs!1705013 () Bool)

(assert (= bs!1705013 (and d!2079813 d!2079787)))

(assert (=> bs!1705013 (= lambda!370696 lambda!370691)))

(assert (=> d!2079813 (= (nullableZipper!2239 lt!2419193) (exists!2669 lt!2419193 lambda!370696))))

(declare-fun bs!1705014 () Bool)

(assert (= bs!1705014 d!2079813))

(declare-fun m!7402782 () Bool)

(assert (=> bs!1705014 m!7402782))

(assert (=> b!6633640 d!2079813))

(declare-fun d!2079817 () Bool)

(assert (=> d!2079817 (= (isEmpty!37968 (tail!12525 (exprs!6383 (h!72121 zl!343)))) ((_ is Nil!65672) (tail!12525 (exprs!6383 (h!72121 zl!343)))))))

(assert (=> b!6633181 d!2079817))

(declare-fun d!2079819 () Bool)

(assert (=> d!2079819 (= (tail!12525 (exprs!6383 (h!72121 zl!343))) (t!379460 (exprs!6383 (h!72121 zl!343))))))

(assert (=> b!6633181 d!2079819))

(declare-fun d!2079821 () Bool)

(assert (=> d!2079821 (= (nullable!6492 (regOne!33510 r!7292)) (nullableFct!2413 (regOne!33510 r!7292)))))

(declare-fun bs!1705015 () Bool)

(assert (= bs!1705015 d!2079821))

(declare-fun m!7402784 () Bool)

(assert (=> bs!1705015 m!7402784))

(assert (=> b!6633239 d!2079821))

(declare-fun d!2079823 () Bool)

(assert (=> d!2079823 (= (isDefined!13093 lt!2419296) (not (isEmpty!37972 lt!2419296)))))

(declare-fun bs!1705016 () Bool)

(assert (= bs!1705016 d!2079823))

(declare-fun m!7402786 () Bool)

(assert (=> bs!1705016 m!7402786))

(assert (=> d!2079417 d!2079823))

(declare-fun b!6634453 () Bool)

(declare-fun res!2718988 () Bool)

(declare-fun e!4012629 () Bool)

(assert (=> b!6634453 (=> res!2718988 e!4012629)))

(declare-fun e!4012626 () Bool)

(assert (=> b!6634453 (= res!2718988 e!4012626)))

(declare-fun res!2718986 () Bool)

(assert (=> b!6634453 (=> (not res!2718986) (not e!4012626))))

(declare-fun lt!2419346 () Bool)

(assert (=> b!6634453 (= res!2718986 lt!2419346)))

(declare-fun d!2079825 () Bool)

(declare-fun e!4012627 () Bool)

(assert (=> d!2079825 e!4012627))

(declare-fun c!1223761 () Bool)

(assert (=> d!2079825 (= c!1223761 ((_ is EmptyExpr!16499) (regOne!33510 r!7292)))))

(declare-fun e!4012624 () Bool)

(assert (=> d!2079825 (= lt!2419346 e!4012624)))

(declare-fun c!1223762 () Bool)

(assert (=> d!2079825 (= c!1223762 (isEmpty!37969 Nil!65674))))

(assert (=> d!2079825 (validRegex!8235 (regOne!33510 r!7292))))

(assert (=> d!2079825 (= (matchR!8682 (regOne!33510 r!7292) Nil!65674) lt!2419346)))

(declare-fun bm!582411 () Bool)

(declare-fun call!582416 () Bool)

(assert (=> bm!582411 (= call!582416 (isEmpty!37969 Nil!65674))))

(declare-fun b!6634454 () Bool)

(declare-fun e!4012623 () Bool)

(assert (=> b!6634454 (= e!4012627 e!4012623)))

(declare-fun c!1223763 () Bool)

(assert (=> b!6634454 (= c!1223763 ((_ is EmptyLang!16499) (regOne!33510 r!7292)))))

(declare-fun b!6634455 () Bool)

(assert (=> b!6634455 (= e!4012623 (not lt!2419346))))

(declare-fun b!6634456 () Bool)

(assert (=> b!6634456 (= e!4012627 (= lt!2419346 call!582416))))

(declare-fun b!6634457 () Bool)

(assert (=> b!6634457 (= e!4012626 (= (head!13439 Nil!65674) (c!1223326 (regOne!33510 r!7292))))))

(declare-fun b!6634458 () Bool)

(declare-fun res!2718984 () Bool)

(declare-fun e!4012625 () Bool)

(assert (=> b!6634458 (=> res!2718984 e!4012625)))

(assert (=> b!6634458 (= res!2718984 (not (isEmpty!37969 (tail!12524 Nil!65674))))))

(declare-fun b!6634459 () Bool)

(assert (=> b!6634459 (= e!4012625 (not (= (head!13439 Nil!65674) (c!1223326 (regOne!33510 r!7292)))))))

(declare-fun b!6634460 () Bool)

(assert (=> b!6634460 (= e!4012624 (nullable!6492 (regOne!33510 r!7292)))))

(declare-fun b!6634461 () Bool)

(declare-fun res!2718982 () Bool)

(assert (=> b!6634461 (=> (not res!2718982) (not e!4012626))))

(assert (=> b!6634461 (= res!2718982 (not call!582416))))

(declare-fun b!6634462 () Bool)

(declare-fun res!2718987 () Bool)

(assert (=> b!6634462 (=> (not res!2718987) (not e!4012626))))

(assert (=> b!6634462 (= res!2718987 (isEmpty!37969 (tail!12524 Nil!65674)))))

(declare-fun b!6634463 () Bool)

(declare-fun e!4012628 () Bool)

(assert (=> b!6634463 (= e!4012629 e!4012628)))

(declare-fun res!2718985 () Bool)

(assert (=> b!6634463 (=> (not res!2718985) (not e!4012628))))

(assert (=> b!6634463 (= res!2718985 (not lt!2419346))))

(declare-fun b!6634464 () Bool)

(declare-fun res!2718981 () Bool)

(assert (=> b!6634464 (=> res!2718981 e!4012629)))

(assert (=> b!6634464 (= res!2718981 (not ((_ is ElementMatch!16499) (regOne!33510 r!7292))))))

(assert (=> b!6634464 (= e!4012623 e!4012629)))

(declare-fun b!6634465 () Bool)

(assert (=> b!6634465 (= e!4012624 (matchR!8682 (derivativeStep!5178 (regOne!33510 r!7292) (head!13439 Nil!65674)) (tail!12524 Nil!65674)))))

(declare-fun b!6634466 () Bool)

(assert (=> b!6634466 (= e!4012628 e!4012625)))

(declare-fun res!2718983 () Bool)

(assert (=> b!6634466 (=> res!2718983 e!4012625)))

(assert (=> b!6634466 (= res!2718983 call!582416)))

(assert (= (and d!2079825 c!1223762) b!6634460))

(assert (= (and d!2079825 (not c!1223762)) b!6634465))

(assert (= (and d!2079825 c!1223761) b!6634456))

(assert (= (and d!2079825 (not c!1223761)) b!6634454))

(assert (= (and b!6634454 c!1223763) b!6634455))

(assert (= (and b!6634454 (not c!1223763)) b!6634464))

(assert (= (and b!6634464 (not res!2718981)) b!6634453))

(assert (= (and b!6634453 res!2718986) b!6634461))

(assert (= (and b!6634461 res!2718982) b!6634462))

(assert (= (and b!6634462 res!2718987) b!6634457))

(assert (= (and b!6634453 (not res!2718988)) b!6634463))

(assert (= (and b!6634463 res!2718985) b!6634466))

(assert (= (and b!6634466 (not res!2718983)) b!6634458))

(assert (= (and b!6634458 (not res!2718984)) b!6634459))

(assert (= (or b!6634456 b!6634461 b!6634466) bm!582411))

(declare-fun m!7402794 () Bool)

(assert (=> b!6634465 m!7402794))

(assert (=> b!6634465 m!7402794))

(declare-fun m!7402796 () Bool)

(assert (=> b!6634465 m!7402796))

(declare-fun m!7402798 () Bool)

(assert (=> b!6634465 m!7402798))

(assert (=> b!6634465 m!7402796))

(assert (=> b!6634465 m!7402798))

(declare-fun m!7402800 () Bool)

(assert (=> b!6634465 m!7402800))

(declare-fun m!7402802 () Bool)

(assert (=> d!2079825 m!7402802))

(assert (=> d!2079825 m!7401784))

(assert (=> b!6634457 m!7402794))

(assert (=> b!6634459 m!7402794))

(assert (=> bm!582411 m!7402802))

(assert (=> b!6634462 m!7402798))

(assert (=> b!6634462 m!7402798))

(declare-fun m!7402804 () Bool)

(assert (=> b!6634462 m!7402804))

(assert (=> b!6634460 m!7401790))

(assert (=> b!6634458 m!7402798))

(assert (=> b!6634458 m!7402798))

(assert (=> b!6634458 m!7402804))

(assert (=> d!2079417 d!2079825))

(assert (=> d!2079417 d!2079635))

(declare-fun bs!1705017 () Bool)

(declare-fun b!6634468 () Bool)

(assert (= bs!1705017 (and b!6634468 d!2079443)))

(declare-fun lambda!370697 () Int)

(assert (=> bs!1705017 (not (= lambda!370697 lambda!370642))))

(declare-fun bs!1705018 () Bool)

(assert (= bs!1705018 (and b!6634468 b!6633257)))

(assert (=> bs!1705018 (not (= lambda!370697 lambda!370601))))

(declare-fun bs!1705019 () Bool)

(assert (= bs!1705019 (and b!6634468 b!6633978)))

(assert (=> bs!1705019 (not (= lambda!370697 lambda!370655))))

(declare-fun bs!1705020 () Bool)

(assert (= bs!1705020 (and b!6634468 b!6634341)))

(assert (=> bs!1705020 (not (= lambda!370697 lambda!370693))))

(declare-fun bs!1705021 () Bool)

(assert (= bs!1705021 (and b!6634468 d!2079751)))

(assert (=> bs!1705021 (not (= lambda!370697 lambda!370688))))

(declare-fun bs!1705022 () Bool)

(assert (= bs!1705022 (and b!6634468 b!6633228)))

(assert (=> bs!1705022 (not (= lambda!370697 lambda!370597))))

(declare-fun bs!1705023 () Bool)

(assert (= bs!1705023 (and b!6634468 b!6633250)))

(assert (=> bs!1705023 (= (and (= (reg!16828 (regTwo!33511 (regTwo!33510 r!7292))) (reg!16828 (regTwo!33510 r!7292))) (= (regTwo!33511 (regTwo!33510 r!7292)) (regTwo!33510 r!7292))) (= lambda!370697 lambda!370600))))

(declare-fun bs!1705024 () Bool)

(assert (= bs!1705024 (and b!6634468 b!6633972)))

(assert (=> bs!1705024 (= (and (= (reg!16828 (regTwo!33511 (regTwo!33510 r!7292))) (reg!16828 (regOne!33511 r!7292))) (= (regTwo!33511 (regTwo!33510 r!7292)) (regOne!33511 r!7292))) (= lambda!370697 lambda!370654))))

(declare-fun bs!1705025 () Bool)

(assert (= bs!1705025 (and b!6634468 d!2079437)))

(assert (=> bs!1705025 (not (= lambda!370697 lambda!370636))))

(declare-fun bs!1705026 () Bool)

(assert (= bs!1705026 (and b!6634468 b!6634186)))

(assert (=> bs!1705026 (not (= lambda!370697 lambda!370671))))

(declare-fun bs!1705027 () Bool)

(assert (= bs!1705027 (and b!6634468 b!6632927)))

(assert (=> bs!1705027 (not (= lambda!370697 lambda!370572))))

(declare-fun bs!1705028 () Bool)

(assert (= bs!1705028 (and b!6634468 b!6633853)))

(assert (=> bs!1705028 (not (= lambda!370697 lambda!370650))))

(declare-fun bs!1705029 () Bool)

(assert (= bs!1705029 (and b!6634468 b!6634335)))

(assert (=> bs!1705029 (= (and (= (reg!16828 (regTwo!33511 (regTwo!33510 r!7292))) (reg!16828 (regOne!33511 (regTwo!33510 r!7292)))) (= (regTwo!33511 (regTwo!33510 r!7292)) (regOne!33511 (regTwo!33510 r!7292)))) (= lambda!370697 lambda!370692))))

(assert (=> bs!1705021 (not (= lambda!370697 lambda!370686))))

(assert (=> bs!1705025 (not (= lambda!370697 lambda!370637))))

(declare-fun bs!1705030 () Bool)

(assert (= bs!1705030 (and b!6634468 b!6633847)))

(assert (=> bs!1705030 (= (and (= (reg!16828 (regTwo!33511 (regTwo!33510 r!7292))) (reg!16828 (regTwo!33511 (regOne!33510 r!7292)))) (= (regTwo!33511 (regTwo!33510 r!7292)) (regTwo!33511 (regOne!33510 r!7292)))) (= lambda!370697 lambda!370649))))

(assert (=> bs!1705027 (not (= lambda!370697 lambda!370571))))

(declare-fun bs!1705032 () Bool)

(assert (= bs!1705032 (and b!6634468 b!6633222)))

(assert (=> bs!1705032 (= (and (= (reg!16828 (regTwo!33511 (regTwo!33510 r!7292))) (reg!16828 (regOne!33510 r!7292))) (= (regTwo!33511 (regTwo!33510 r!7292)) (regOne!33510 r!7292))) (= lambda!370697 lambda!370596))))

(declare-fun bs!1705034 () Bool)

(assert (= bs!1705034 (and b!6634468 b!6634180)))

(assert (=> bs!1705034 (= (and (= (reg!16828 (regTwo!33511 (regTwo!33510 r!7292))) (reg!16828 (regTwo!33511 r!7292))) (= (regTwo!33511 (regTwo!33510 r!7292)) (regTwo!33511 r!7292))) (= lambda!370697 lambda!370670))))

(declare-fun bs!1705037 () Bool)

(assert (= bs!1705037 (and b!6634468 b!6633059)))

(assert (=> bs!1705037 (= (and (= (reg!16828 (regTwo!33511 (regTwo!33510 r!7292))) (reg!16828 r!7292)) (= (regTwo!33511 (regTwo!33510 r!7292)) r!7292)) (= lambda!370697 lambda!370581))))

(declare-fun bs!1705039 () Bool)

(assert (= bs!1705039 (and b!6634468 b!6633065)))

(assert (=> bs!1705039 (not (= lambda!370697 lambda!370582))))

(declare-fun bs!1705041 () Bool)

(assert (= bs!1705041 (and b!6634468 d!2079641)))

(assert (=> bs!1705041 (not (= lambda!370697 lambda!370660))))

(assert (=> b!6634468 true))

(assert (=> b!6634468 true))

(declare-fun bs!1705042 () Bool)

(declare-fun b!6634474 () Bool)

(assert (= bs!1705042 (and b!6634474 d!2079443)))

(declare-fun lambda!370699 () Int)

(assert (=> bs!1705042 (not (= lambda!370699 lambda!370642))))

(declare-fun bs!1705043 () Bool)

(assert (= bs!1705043 (and b!6634474 b!6633257)))

(assert (=> bs!1705043 (= (and (= (regOne!33510 (regTwo!33511 (regTwo!33510 r!7292))) (regOne!33510 (regTwo!33510 r!7292))) (= (regTwo!33510 (regTwo!33511 (regTwo!33510 r!7292))) (regTwo!33510 (regTwo!33510 r!7292)))) (= lambda!370699 lambda!370601))))

(declare-fun bs!1705044 () Bool)

(assert (= bs!1705044 (and b!6634474 b!6633978)))

(assert (=> bs!1705044 (= (and (= (regOne!33510 (regTwo!33511 (regTwo!33510 r!7292))) (regOne!33510 (regOne!33511 r!7292))) (= (regTwo!33510 (regTwo!33511 (regTwo!33510 r!7292))) (regTwo!33510 (regOne!33511 r!7292)))) (= lambda!370699 lambda!370655))))

(declare-fun bs!1705045 () Bool)

(assert (= bs!1705045 (and b!6634474 b!6634341)))

(assert (=> bs!1705045 (= (and (= (regOne!33510 (regTwo!33511 (regTwo!33510 r!7292))) (regOne!33510 (regOne!33511 (regTwo!33510 r!7292)))) (= (regTwo!33510 (regTwo!33511 (regTwo!33510 r!7292))) (regTwo!33510 (regOne!33511 (regTwo!33510 r!7292))))) (= lambda!370699 lambda!370693))))

(declare-fun bs!1705046 () Bool)

(assert (= bs!1705046 (and b!6634474 d!2079751)))

(assert (=> bs!1705046 (= (and (= (regOne!33510 (regTwo!33511 (regTwo!33510 r!7292))) (regOne!33510 r!7292)) (= (regTwo!33510 (regTwo!33511 (regTwo!33510 r!7292))) (regTwo!33510 r!7292))) (= lambda!370699 lambda!370688))))

(declare-fun bs!1705047 () Bool)

(assert (= bs!1705047 (and b!6634474 b!6633228)))

(assert (=> bs!1705047 (= (and (= (regOne!33510 (regTwo!33511 (regTwo!33510 r!7292))) (regOne!33510 (regOne!33510 r!7292))) (= (regTwo!33510 (regTwo!33511 (regTwo!33510 r!7292))) (regTwo!33510 (regOne!33510 r!7292)))) (= lambda!370699 lambda!370597))))

(declare-fun bs!1705048 () Bool)

(assert (= bs!1705048 (and b!6634474 b!6633250)))

(assert (=> bs!1705048 (not (= lambda!370699 lambda!370600))))

(declare-fun bs!1705049 () Bool)

(assert (= bs!1705049 (and b!6634474 b!6633972)))

(assert (=> bs!1705049 (not (= lambda!370699 lambda!370654))))

(declare-fun bs!1705050 () Bool)

(assert (= bs!1705050 (and b!6634474 d!2079437)))

(assert (=> bs!1705050 (not (= lambda!370699 lambda!370636))))

(declare-fun bs!1705051 () Bool)

(assert (= bs!1705051 (and b!6634474 b!6634468)))

(assert (=> bs!1705051 (not (= lambda!370699 lambda!370697))))

(declare-fun bs!1705052 () Bool)

(assert (= bs!1705052 (and b!6634474 b!6634186)))

(assert (=> bs!1705052 (= (and (= (regOne!33510 (regTwo!33511 (regTwo!33510 r!7292))) (regOne!33510 (regTwo!33511 r!7292))) (= (regTwo!33510 (regTwo!33511 (regTwo!33510 r!7292))) (regTwo!33510 (regTwo!33511 r!7292)))) (= lambda!370699 lambda!370671))))

(declare-fun bs!1705053 () Bool)

(assert (= bs!1705053 (and b!6634474 b!6632927)))

(assert (=> bs!1705053 (= (and (= (regOne!33510 (regTwo!33511 (regTwo!33510 r!7292))) (regOne!33510 r!7292)) (= (regTwo!33510 (regTwo!33511 (regTwo!33510 r!7292))) (regTwo!33510 r!7292))) (= lambda!370699 lambda!370572))))

(declare-fun bs!1705054 () Bool)

(assert (= bs!1705054 (and b!6634474 b!6633853)))

(assert (=> bs!1705054 (= (and (= (regOne!33510 (regTwo!33511 (regTwo!33510 r!7292))) (regOne!33510 (regTwo!33511 (regOne!33510 r!7292)))) (= (regTwo!33510 (regTwo!33511 (regTwo!33510 r!7292))) (regTwo!33510 (regTwo!33511 (regOne!33510 r!7292))))) (= lambda!370699 lambda!370650))))

(declare-fun bs!1705055 () Bool)

(assert (= bs!1705055 (and b!6634474 b!6634335)))

(assert (=> bs!1705055 (not (= lambda!370699 lambda!370692))))

(assert (=> bs!1705046 (not (= lambda!370699 lambda!370686))))

(assert (=> bs!1705050 (= (and (= (regOne!33510 (regTwo!33511 (regTwo!33510 r!7292))) (regOne!33510 r!7292)) (= (regTwo!33510 (regTwo!33511 (regTwo!33510 r!7292))) (regTwo!33510 r!7292))) (= lambda!370699 lambda!370637))))

(declare-fun bs!1705058 () Bool)

(assert (= bs!1705058 (and b!6634474 b!6633847)))

(assert (=> bs!1705058 (not (= lambda!370699 lambda!370649))))

(assert (=> bs!1705053 (not (= lambda!370699 lambda!370571))))

(declare-fun bs!1705062 () Bool)

(assert (= bs!1705062 (and b!6634474 b!6633222)))

(assert (=> bs!1705062 (not (= lambda!370699 lambda!370596))))

(declare-fun bs!1705065 () Bool)

(assert (= bs!1705065 (and b!6634474 b!6634180)))

(assert (=> bs!1705065 (not (= lambda!370699 lambda!370670))))

(declare-fun bs!1705066 () Bool)

(assert (= bs!1705066 (and b!6634474 b!6633059)))

(assert (=> bs!1705066 (not (= lambda!370699 lambda!370581))))

(declare-fun bs!1705068 () Bool)

(assert (= bs!1705068 (and b!6634474 b!6633065)))

(assert (=> bs!1705068 (= (and (= (regOne!33510 (regTwo!33511 (regTwo!33510 r!7292))) (regOne!33510 r!7292)) (= (regTwo!33510 (regTwo!33511 (regTwo!33510 r!7292))) (regTwo!33510 r!7292))) (= lambda!370699 lambda!370582))))

(declare-fun bs!1705070 () Bool)

(assert (= bs!1705070 (and b!6634474 d!2079641)))

(assert (=> bs!1705070 (not (= lambda!370699 lambda!370660))))

(assert (=> b!6634474 true))

(assert (=> b!6634474 true))

(declare-fun b!6634467 () Bool)

(declare-fun c!1223767 () Bool)

(assert (=> b!6634467 (= c!1223767 ((_ is Union!16499) (regTwo!33511 (regTwo!33510 r!7292))))))

(declare-fun e!4012634 () Bool)

(declare-fun e!4012631 () Bool)

(assert (=> b!6634467 (= e!4012634 e!4012631)))

(declare-fun bm!582412 () Bool)

(declare-fun call!582417 () Bool)

(assert (=> bm!582412 (= call!582417 (isEmpty!37969 s!2326))))

(declare-fun e!4012630 () Bool)

(declare-fun call!582418 () Bool)

(assert (=> b!6634468 (= e!4012630 call!582418)))

(declare-fun b!6634469 () Bool)

(assert (=> b!6634469 (= e!4012634 (= s!2326 (Cons!65674 (c!1223326 (regTwo!33511 (regTwo!33510 r!7292))) Nil!65674)))))

(declare-fun b!6634470 () Bool)

(declare-fun e!4012633 () Bool)

(assert (=> b!6634470 (= e!4012631 e!4012633)))

(declare-fun res!2718991 () Bool)

(assert (=> b!6634470 (= res!2718991 (matchRSpec!3600 (regOne!33511 (regTwo!33511 (regTwo!33510 r!7292))) s!2326))))

(assert (=> b!6634470 (=> res!2718991 e!4012633)))

(declare-fun b!6634471 () Bool)

(declare-fun e!4012636 () Bool)

(declare-fun e!4012632 () Bool)

(assert (=> b!6634471 (= e!4012636 e!4012632)))

(declare-fun res!2718990 () Bool)

(assert (=> b!6634471 (= res!2718990 (not ((_ is EmptyLang!16499) (regTwo!33511 (regTwo!33510 r!7292)))))))

(assert (=> b!6634471 (=> (not res!2718990) (not e!4012632))))

(declare-fun bm!582413 () Bool)

(declare-fun c!1223765 () Bool)

(assert (=> bm!582413 (= call!582418 (Exists!3569 (ite c!1223765 lambda!370697 lambda!370699)))))

(declare-fun b!6634472 () Bool)

(declare-fun e!4012635 () Bool)

(assert (=> b!6634472 (= e!4012631 e!4012635)))

(assert (=> b!6634472 (= c!1223765 ((_ is Star!16499) (regTwo!33511 (regTwo!33510 r!7292))))))

(declare-fun d!2079833 () Bool)

(declare-fun c!1223764 () Bool)

(assert (=> d!2079833 (= c!1223764 ((_ is EmptyExpr!16499) (regTwo!33511 (regTwo!33510 r!7292))))))

(assert (=> d!2079833 (= (matchRSpec!3600 (regTwo!33511 (regTwo!33510 r!7292)) s!2326) e!4012636)))

(declare-fun b!6634473 () Bool)

(declare-fun c!1223766 () Bool)

(assert (=> b!6634473 (= c!1223766 ((_ is ElementMatch!16499) (regTwo!33511 (regTwo!33510 r!7292))))))

(assert (=> b!6634473 (= e!4012632 e!4012634)))

(assert (=> b!6634474 (= e!4012635 call!582418)))

(declare-fun b!6634475 () Bool)

(declare-fun res!2718989 () Bool)

(assert (=> b!6634475 (=> res!2718989 e!4012630)))

(assert (=> b!6634475 (= res!2718989 call!582417)))

(assert (=> b!6634475 (= e!4012635 e!4012630)))

(declare-fun b!6634476 () Bool)

(assert (=> b!6634476 (= e!4012633 (matchRSpec!3600 (regTwo!33511 (regTwo!33511 (regTwo!33510 r!7292))) s!2326))))

(declare-fun b!6634477 () Bool)

(assert (=> b!6634477 (= e!4012636 call!582417)))

(assert (= (and d!2079833 c!1223764) b!6634477))

(assert (= (and d!2079833 (not c!1223764)) b!6634471))

(assert (= (and b!6634471 res!2718990) b!6634473))

(assert (= (and b!6634473 c!1223766) b!6634469))

(assert (= (and b!6634473 (not c!1223766)) b!6634467))

(assert (= (and b!6634467 c!1223767) b!6634470))

(assert (= (and b!6634467 (not c!1223767)) b!6634472))

(assert (= (and b!6634470 (not res!2718991)) b!6634476))

(assert (= (and b!6634472 c!1223765) b!6634475))

(assert (= (and b!6634472 (not c!1223765)) b!6634474))

(assert (= (and b!6634475 (not res!2718989)) b!6634468))

(assert (= (or b!6634468 b!6634474) bm!582413))

(assert (= (or b!6634477 b!6634475) bm!582412))

(assert (=> bm!582412 m!7401664))

(declare-fun m!7402854 () Bool)

(assert (=> b!6634470 m!7402854))

(declare-fun m!7402856 () Bool)

(assert (=> bm!582413 m!7402856))

(declare-fun m!7402858 () Bool)

(assert (=> b!6634476 m!7402858))

(assert (=> b!6633259 d!2079833))

(declare-fun d!2079853 () Bool)

(assert (=> d!2079853 (= (nullable!6492 (regTwo!33510 r!7292)) (nullableFct!2413 (regTwo!33510 r!7292)))))

(declare-fun bs!1705076 () Bool)

(assert (= bs!1705076 d!2079853))

(declare-fun m!7402860 () Bool)

(assert (=> bs!1705076 m!7402860))

(assert (=> b!6633294 d!2079853))

(assert (=> b!6633182 d!2079343))

(declare-fun bs!1705077 () Bool)

(declare-fun b!6634529 () Bool)

(assert (= bs!1705077 (and b!6634529 d!2079443)))

(declare-fun lambda!370702 () Int)

(assert (=> bs!1705077 (not (= lambda!370702 lambda!370642))))

(declare-fun bs!1705078 () Bool)

(assert (= bs!1705078 (and b!6634529 b!6633257)))

(assert (=> bs!1705078 (not (= lambda!370702 lambda!370601))))

(declare-fun bs!1705079 () Bool)

(assert (= bs!1705079 (and b!6634529 b!6633978)))

(assert (=> bs!1705079 (not (= lambda!370702 lambda!370655))))

(declare-fun bs!1705080 () Bool)

(assert (= bs!1705080 (and b!6634529 b!6634341)))

(assert (=> bs!1705080 (not (= lambda!370702 lambda!370693))))

(declare-fun bs!1705081 () Bool)

(assert (= bs!1705081 (and b!6634529 b!6634474)))

(assert (=> bs!1705081 (not (= lambda!370702 lambda!370699))))

(declare-fun bs!1705082 () Bool)

(assert (= bs!1705082 (and b!6634529 d!2079751)))

(assert (=> bs!1705082 (not (= lambda!370702 lambda!370688))))

(declare-fun bs!1705083 () Bool)

(assert (= bs!1705083 (and b!6634529 b!6633228)))

(assert (=> bs!1705083 (not (= lambda!370702 lambda!370597))))

(declare-fun bs!1705084 () Bool)

(assert (= bs!1705084 (and b!6634529 b!6633250)))

(assert (=> bs!1705084 (= (and (= (reg!16828 (regOne!33511 (regOne!33510 r!7292))) (reg!16828 (regTwo!33510 r!7292))) (= (regOne!33511 (regOne!33510 r!7292)) (regTwo!33510 r!7292))) (= lambda!370702 lambda!370600))))

(declare-fun bs!1705085 () Bool)

(assert (= bs!1705085 (and b!6634529 b!6633972)))

(assert (=> bs!1705085 (= (and (= (reg!16828 (regOne!33511 (regOne!33510 r!7292))) (reg!16828 (regOne!33511 r!7292))) (= (regOne!33511 (regOne!33510 r!7292)) (regOne!33511 r!7292))) (= lambda!370702 lambda!370654))))

(declare-fun bs!1705086 () Bool)

(assert (= bs!1705086 (and b!6634529 d!2079437)))

(assert (=> bs!1705086 (not (= lambda!370702 lambda!370636))))

(declare-fun bs!1705087 () Bool)

(assert (= bs!1705087 (and b!6634529 b!6634468)))

(assert (=> bs!1705087 (= (and (= (reg!16828 (regOne!33511 (regOne!33510 r!7292))) (reg!16828 (regTwo!33511 (regTwo!33510 r!7292)))) (= (regOne!33511 (regOne!33510 r!7292)) (regTwo!33511 (regTwo!33510 r!7292)))) (= lambda!370702 lambda!370697))))

(declare-fun bs!1705088 () Bool)

(assert (= bs!1705088 (and b!6634529 b!6634186)))

(assert (=> bs!1705088 (not (= lambda!370702 lambda!370671))))

(declare-fun bs!1705089 () Bool)

(assert (= bs!1705089 (and b!6634529 b!6632927)))

(assert (=> bs!1705089 (not (= lambda!370702 lambda!370572))))

(declare-fun bs!1705090 () Bool)

(assert (= bs!1705090 (and b!6634529 b!6633853)))

(assert (=> bs!1705090 (not (= lambda!370702 lambda!370650))))

(declare-fun bs!1705091 () Bool)

(assert (= bs!1705091 (and b!6634529 b!6634335)))

(assert (=> bs!1705091 (= (and (= (reg!16828 (regOne!33511 (regOne!33510 r!7292))) (reg!16828 (regOne!33511 (regTwo!33510 r!7292)))) (= (regOne!33511 (regOne!33510 r!7292)) (regOne!33511 (regTwo!33510 r!7292)))) (= lambda!370702 lambda!370692))))

(assert (=> bs!1705082 (not (= lambda!370702 lambda!370686))))

(assert (=> bs!1705086 (not (= lambda!370702 lambda!370637))))

(declare-fun bs!1705092 () Bool)

(assert (= bs!1705092 (and b!6634529 b!6633847)))

(assert (=> bs!1705092 (= (and (= (reg!16828 (regOne!33511 (regOne!33510 r!7292))) (reg!16828 (regTwo!33511 (regOne!33510 r!7292)))) (= (regOne!33511 (regOne!33510 r!7292)) (regTwo!33511 (regOne!33510 r!7292)))) (= lambda!370702 lambda!370649))))

(assert (=> bs!1705089 (not (= lambda!370702 lambda!370571))))

(declare-fun bs!1705093 () Bool)

(assert (= bs!1705093 (and b!6634529 b!6633222)))

(assert (=> bs!1705093 (= (and (= (reg!16828 (regOne!33511 (regOne!33510 r!7292))) (reg!16828 (regOne!33510 r!7292))) (= (regOne!33511 (regOne!33510 r!7292)) (regOne!33510 r!7292))) (= lambda!370702 lambda!370596))))

(declare-fun bs!1705094 () Bool)

(assert (= bs!1705094 (and b!6634529 b!6634180)))

(assert (=> bs!1705094 (= (and (= (reg!16828 (regOne!33511 (regOne!33510 r!7292))) (reg!16828 (regTwo!33511 r!7292))) (= (regOne!33511 (regOne!33510 r!7292)) (regTwo!33511 r!7292))) (= lambda!370702 lambda!370670))))

(declare-fun bs!1705095 () Bool)

(assert (= bs!1705095 (and b!6634529 b!6633059)))

(assert (=> bs!1705095 (= (and (= (reg!16828 (regOne!33511 (regOne!33510 r!7292))) (reg!16828 r!7292)) (= (regOne!33511 (regOne!33510 r!7292)) r!7292)) (= lambda!370702 lambda!370581))))

(declare-fun bs!1705096 () Bool)

(assert (= bs!1705096 (and b!6634529 b!6633065)))

(assert (=> bs!1705096 (not (= lambda!370702 lambda!370582))))

(declare-fun bs!1705097 () Bool)

(assert (= bs!1705097 (and b!6634529 d!2079641)))

(assert (=> bs!1705097 (not (= lambda!370702 lambda!370660))))

(assert (=> b!6634529 true))

(assert (=> b!6634529 true))

(declare-fun bs!1705098 () Bool)

(declare-fun b!6634535 () Bool)

(assert (= bs!1705098 (and b!6634535 d!2079443)))

(declare-fun lambda!370703 () Int)

(assert (=> bs!1705098 (not (= lambda!370703 lambda!370642))))

(declare-fun bs!1705100 () Bool)

(assert (= bs!1705100 (and b!6634535 b!6633257)))

(assert (=> bs!1705100 (= (and (= (regOne!33510 (regOne!33511 (regOne!33510 r!7292))) (regOne!33510 (regTwo!33510 r!7292))) (= (regTwo!33510 (regOne!33511 (regOne!33510 r!7292))) (regTwo!33510 (regTwo!33510 r!7292)))) (= lambda!370703 lambda!370601))))

(declare-fun bs!1705101 () Bool)

(assert (= bs!1705101 (and b!6634535 b!6633978)))

(assert (=> bs!1705101 (= (and (= (regOne!33510 (regOne!33511 (regOne!33510 r!7292))) (regOne!33510 (regOne!33511 r!7292))) (= (regTwo!33510 (regOne!33511 (regOne!33510 r!7292))) (regTwo!33510 (regOne!33511 r!7292)))) (= lambda!370703 lambda!370655))))

(declare-fun bs!1705102 () Bool)

(assert (= bs!1705102 (and b!6634535 b!6634341)))

(assert (=> bs!1705102 (= (and (= (regOne!33510 (regOne!33511 (regOne!33510 r!7292))) (regOne!33510 (regOne!33511 (regTwo!33510 r!7292)))) (= (regTwo!33510 (regOne!33511 (regOne!33510 r!7292))) (regTwo!33510 (regOne!33511 (regTwo!33510 r!7292))))) (= lambda!370703 lambda!370693))))

(declare-fun bs!1705103 () Bool)

(assert (= bs!1705103 (and b!6634535 b!6634474)))

(assert (=> bs!1705103 (= (and (= (regOne!33510 (regOne!33511 (regOne!33510 r!7292))) (regOne!33510 (regTwo!33511 (regTwo!33510 r!7292)))) (= (regTwo!33510 (regOne!33511 (regOne!33510 r!7292))) (regTwo!33510 (regTwo!33511 (regTwo!33510 r!7292))))) (= lambda!370703 lambda!370699))))

(declare-fun bs!1705104 () Bool)

(assert (= bs!1705104 (and b!6634535 d!2079751)))

(assert (=> bs!1705104 (= (and (= (regOne!33510 (regOne!33511 (regOne!33510 r!7292))) (regOne!33510 r!7292)) (= (regTwo!33510 (regOne!33511 (regOne!33510 r!7292))) (regTwo!33510 r!7292))) (= lambda!370703 lambda!370688))))

(declare-fun bs!1705105 () Bool)

(assert (= bs!1705105 (and b!6634535 b!6633228)))

(assert (=> bs!1705105 (= (and (= (regOne!33510 (regOne!33511 (regOne!33510 r!7292))) (regOne!33510 (regOne!33510 r!7292))) (= (regTwo!33510 (regOne!33511 (regOne!33510 r!7292))) (regTwo!33510 (regOne!33510 r!7292)))) (= lambda!370703 lambda!370597))))

(declare-fun bs!1705106 () Bool)

(assert (= bs!1705106 (and b!6634535 b!6633250)))

(assert (=> bs!1705106 (not (= lambda!370703 lambda!370600))))

(declare-fun bs!1705107 () Bool)

(assert (= bs!1705107 (and b!6634535 b!6633972)))

(assert (=> bs!1705107 (not (= lambda!370703 lambda!370654))))

(declare-fun bs!1705108 () Bool)

(assert (= bs!1705108 (and b!6634535 d!2079437)))

(assert (=> bs!1705108 (not (= lambda!370703 lambda!370636))))

(declare-fun bs!1705109 () Bool)

(assert (= bs!1705109 (and b!6634535 b!6634468)))

(assert (=> bs!1705109 (not (= lambda!370703 lambda!370697))))

(declare-fun bs!1705110 () Bool)

(assert (= bs!1705110 (and b!6634535 b!6634186)))

(assert (=> bs!1705110 (= (and (= (regOne!33510 (regOne!33511 (regOne!33510 r!7292))) (regOne!33510 (regTwo!33511 r!7292))) (= (regTwo!33510 (regOne!33511 (regOne!33510 r!7292))) (regTwo!33510 (regTwo!33511 r!7292)))) (= lambda!370703 lambda!370671))))

(declare-fun bs!1705111 () Bool)

(assert (= bs!1705111 (and b!6634535 b!6634529)))

(assert (=> bs!1705111 (not (= lambda!370703 lambda!370702))))

(declare-fun bs!1705112 () Bool)

(assert (= bs!1705112 (and b!6634535 b!6632927)))

(assert (=> bs!1705112 (= (and (= (regOne!33510 (regOne!33511 (regOne!33510 r!7292))) (regOne!33510 r!7292)) (= (regTwo!33510 (regOne!33511 (regOne!33510 r!7292))) (regTwo!33510 r!7292))) (= lambda!370703 lambda!370572))))

(declare-fun bs!1705113 () Bool)

(assert (= bs!1705113 (and b!6634535 b!6633853)))

(assert (=> bs!1705113 (= (and (= (regOne!33510 (regOne!33511 (regOne!33510 r!7292))) (regOne!33510 (regTwo!33511 (regOne!33510 r!7292)))) (= (regTwo!33510 (regOne!33511 (regOne!33510 r!7292))) (regTwo!33510 (regTwo!33511 (regOne!33510 r!7292))))) (= lambda!370703 lambda!370650))))

(declare-fun bs!1705114 () Bool)

(assert (= bs!1705114 (and b!6634535 b!6634335)))

(assert (=> bs!1705114 (not (= lambda!370703 lambda!370692))))

(assert (=> bs!1705104 (not (= lambda!370703 lambda!370686))))

(assert (=> bs!1705108 (= (and (= (regOne!33510 (regOne!33511 (regOne!33510 r!7292))) (regOne!33510 r!7292)) (= (regTwo!33510 (regOne!33511 (regOne!33510 r!7292))) (regTwo!33510 r!7292))) (= lambda!370703 lambda!370637))))

(declare-fun bs!1705115 () Bool)

(assert (= bs!1705115 (and b!6634535 b!6633847)))

(assert (=> bs!1705115 (not (= lambda!370703 lambda!370649))))

(assert (=> bs!1705112 (not (= lambda!370703 lambda!370571))))

(declare-fun bs!1705116 () Bool)

(assert (= bs!1705116 (and b!6634535 b!6633222)))

(assert (=> bs!1705116 (not (= lambda!370703 lambda!370596))))

(declare-fun bs!1705117 () Bool)

(assert (= bs!1705117 (and b!6634535 b!6634180)))

(assert (=> bs!1705117 (not (= lambda!370703 lambda!370670))))

(declare-fun bs!1705118 () Bool)

(assert (= bs!1705118 (and b!6634535 b!6633059)))

(assert (=> bs!1705118 (not (= lambda!370703 lambda!370581))))

(declare-fun bs!1705120 () Bool)

(assert (= bs!1705120 (and b!6634535 b!6633065)))

(assert (=> bs!1705120 (= (and (= (regOne!33510 (regOne!33511 (regOne!33510 r!7292))) (regOne!33510 r!7292)) (= (regTwo!33510 (regOne!33511 (regOne!33510 r!7292))) (regTwo!33510 r!7292))) (= lambda!370703 lambda!370582))))

(declare-fun bs!1705121 () Bool)

(assert (= bs!1705121 (and b!6634535 d!2079641)))

(assert (=> bs!1705121 (not (= lambda!370703 lambda!370660))))

(assert (=> b!6634535 true))

(assert (=> b!6634535 true))

(declare-fun b!6634528 () Bool)

(declare-fun c!1223790 () Bool)

(assert (=> b!6634528 (= c!1223790 ((_ is Union!16499) (regOne!33511 (regOne!33510 r!7292))))))

(declare-fun e!4012668 () Bool)

(declare-fun e!4012665 () Bool)

(assert (=> b!6634528 (= e!4012668 e!4012665)))

(declare-fun bm!582426 () Bool)

(declare-fun call!582431 () Bool)

(assert (=> bm!582426 (= call!582431 (isEmpty!37969 s!2326))))

(declare-fun e!4012664 () Bool)

(declare-fun call!582432 () Bool)

(assert (=> b!6634529 (= e!4012664 call!582432)))

(declare-fun b!6634530 () Bool)

(assert (=> b!6634530 (= e!4012668 (= s!2326 (Cons!65674 (c!1223326 (regOne!33511 (regOne!33510 r!7292))) Nil!65674)))))

(declare-fun b!6634531 () Bool)

(declare-fun e!4012667 () Bool)

(assert (=> b!6634531 (= e!4012665 e!4012667)))

(declare-fun res!2719006 () Bool)

(assert (=> b!6634531 (= res!2719006 (matchRSpec!3600 (regOne!33511 (regOne!33511 (regOne!33510 r!7292))) s!2326))))

(assert (=> b!6634531 (=> res!2719006 e!4012667)))

(declare-fun b!6634532 () Bool)

(declare-fun e!4012670 () Bool)

(declare-fun e!4012666 () Bool)

(assert (=> b!6634532 (= e!4012670 e!4012666)))

(declare-fun res!2719005 () Bool)

(assert (=> b!6634532 (= res!2719005 (not ((_ is EmptyLang!16499) (regOne!33511 (regOne!33510 r!7292)))))))

(assert (=> b!6634532 (=> (not res!2719005) (not e!4012666))))

(declare-fun bm!582427 () Bool)

(declare-fun c!1223788 () Bool)

(assert (=> bm!582427 (= call!582432 (Exists!3569 (ite c!1223788 lambda!370702 lambda!370703)))))

(declare-fun b!6634533 () Bool)

(declare-fun e!4012669 () Bool)

(assert (=> b!6634533 (= e!4012665 e!4012669)))

(assert (=> b!6634533 (= c!1223788 ((_ is Star!16499) (regOne!33511 (regOne!33510 r!7292))))))

(declare-fun d!2079855 () Bool)

(declare-fun c!1223787 () Bool)

(assert (=> d!2079855 (= c!1223787 ((_ is EmptyExpr!16499) (regOne!33511 (regOne!33510 r!7292))))))

(assert (=> d!2079855 (= (matchRSpec!3600 (regOne!33511 (regOne!33510 r!7292)) s!2326) e!4012670)))

(declare-fun b!6634534 () Bool)

(declare-fun c!1223789 () Bool)

(assert (=> b!6634534 (= c!1223789 ((_ is ElementMatch!16499) (regOne!33511 (regOne!33510 r!7292))))))

(assert (=> b!6634534 (= e!4012666 e!4012668)))

(assert (=> b!6634535 (= e!4012669 call!582432)))

(declare-fun b!6634536 () Bool)

(declare-fun res!2719004 () Bool)

(assert (=> b!6634536 (=> res!2719004 e!4012664)))

(assert (=> b!6634536 (= res!2719004 call!582431)))

(assert (=> b!6634536 (= e!4012669 e!4012664)))

(declare-fun b!6634537 () Bool)

(assert (=> b!6634537 (= e!4012667 (matchRSpec!3600 (regTwo!33511 (regOne!33511 (regOne!33510 r!7292))) s!2326))))

(declare-fun b!6634538 () Bool)

(assert (=> b!6634538 (= e!4012670 call!582431)))

(assert (= (and d!2079855 c!1223787) b!6634538))

(assert (= (and d!2079855 (not c!1223787)) b!6634532))

(assert (= (and b!6634532 res!2719005) b!6634534))

(assert (= (and b!6634534 c!1223789) b!6634530))

(assert (= (and b!6634534 (not c!1223789)) b!6634528))

(assert (= (and b!6634528 c!1223790) b!6634531))

(assert (= (and b!6634528 (not c!1223790)) b!6634533))

(assert (= (and b!6634531 (not res!2719006)) b!6634537))

(assert (= (and b!6634533 c!1223788) b!6634536))

(assert (= (and b!6634533 (not c!1223788)) b!6634535))

(assert (= (and b!6634536 (not res!2719004)) b!6634529))

(assert (= (or b!6634529 b!6634535) bm!582427))

(assert (= (or b!6634538 b!6634536) bm!582426))

(assert (=> bm!582426 m!7401664))

(declare-fun m!7402890 () Bool)

(assert (=> b!6634531 m!7402890))

(declare-fun m!7402892 () Bool)

(assert (=> bm!582427 m!7402892))

(declare-fun m!7402894 () Bool)

(assert (=> b!6634537 m!7402894))

(assert (=> b!6633224 d!2079855))

(declare-fun bs!1705129 () Bool)

(declare-fun d!2079875 () Bool)

(assert (= bs!1705129 (and d!2079875 d!2079813)))

(declare-fun lambda!370705 () Int)

(assert (=> bs!1705129 (= lambda!370705 lambda!370696)))

(declare-fun bs!1705131 () Bool)

(assert (= bs!1705131 (and d!2079875 d!2079655)))

(assert (=> bs!1705131 (= lambda!370705 lambda!370664)))

(declare-fun bs!1705132 () Bool)

(assert (= bs!1705132 (and d!2079875 d!2079675)))

(assert (=> bs!1705132 (= lambda!370705 lambda!370667)))

(declare-fun bs!1705134 () Bool)

(assert (= bs!1705134 (and d!2079875 d!2079787)))

(assert (=> bs!1705134 (= lambda!370705 lambda!370691)))

(declare-fun bs!1705135 () Bool)

(assert (= bs!1705135 (and d!2079875 d!2079783)))

(assert (=> bs!1705135 (= lambda!370705 lambda!370690)))

(assert (=> d!2079875 (= (nullableZipper!2239 z!1189) (exists!2669 z!1189 lambda!370705))))

(declare-fun bs!1705136 () Bool)

(assert (= bs!1705136 d!2079875))

(declare-fun m!7402898 () Bool)

(assert (=> bs!1705136 m!7402898))

(assert (=> b!6633638 d!2079875))

(assert (=> d!2079333 d!2079293))

(declare-fun d!2079879 () Bool)

(assert (=> d!2079879 (not (matchZipper!2511 lt!2419195 (t!379462 s!2326)))))

(assert (=> d!2079879 true))

(declare-fun _$64!799 () Unit!159351)

(assert (=> d!2079879 (= (choose!49542 lt!2419195 (t!379462 s!2326)) _$64!799)))

(declare-fun bs!1705147 () Bool)

(assert (= bs!1705147 d!2079879))

(assert (=> bs!1705147 m!7401544))

(assert (=> d!2079333 d!2079879))

(assert (=> d!2079353 d!2079355))

(assert (=> d!2079353 d!2079351))

(declare-fun d!2079887 () Bool)

(assert (=> d!2079887 (= (matchR!8682 (regOne!33510 r!7292) s!2326) (matchRSpec!3600 (regOne!33510 r!7292) s!2326))))

(assert (=> d!2079887 true))

(declare-fun _$88!5352 () Unit!159351)

(assert (=> d!2079887 (= (choose!49541 (regOne!33510 r!7292) s!2326) _$88!5352)))

(declare-fun bs!1705148 () Bool)

(assert (= bs!1705148 d!2079887))

(assert (=> bs!1705148 m!7401560))

(assert (=> bs!1705148 m!7401562))

(assert (=> d!2079353 d!2079887))

(assert (=> d!2079353 d!2079635))

(assert (=> bm!582204 d!2079499))

(declare-fun b!6634579 () Bool)

(declare-fun res!2719024 () Bool)

(declare-fun e!4012702 () Bool)

(assert (=> b!6634579 (=> res!2719024 e!4012702)))

(declare-fun e!4012699 () Bool)

(assert (=> b!6634579 (= res!2719024 e!4012699)))

(declare-fun res!2719022 () Bool)

(assert (=> b!6634579 (=> (not res!2719022) (not e!4012699))))

(declare-fun lt!2419351 () Bool)

(assert (=> b!6634579 (= res!2719022 lt!2419351)))

(declare-fun d!2079889 () Bool)

(declare-fun e!4012700 () Bool)

(assert (=> d!2079889 e!4012700))

(declare-fun c!1223806 () Bool)

(assert (=> d!2079889 (= c!1223806 ((_ is EmptyExpr!16499) (derivativeStep!5178 (regOne!33510 r!7292) (head!13439 s!2326))))))

(declare-fun e!4012697 () Bool)

(assert (=> d!2079889 (= lt!2419351 e!4012697)))

(declare-fun c!1223807 () Bool)

(assert (=> d!2079889 (= c!1223807 (isEmpty!37969 (tail!12524 s!2326)))))

(assert (=> d!2079889 (validRegex!8235 (derivativeStep!5178 (regOne!33510 r!7292) (head!13439 s!2326)))))

(assert (=> d!2079889 (= (matchR!8682 (derivativeStep!5178 (regOne!33510 r!7292) (head!13439 s!2326)) (tail!12524 s!2326)) lt!2419351)))

(declare-fun bm!582443 () Bool)

(declare-fun call!582448 () Bool)

(assert (=> bm!582443 (= call!582448 (isEmpty!37969 (tail!12524 s!2326)))))

(declare-fun b!6634580 () Bool)

(declare-fun e!4012696 () Bool)

(assert (=> b!6634580 (= e!4012700 e!4012696)))

(declare-fun c!1223808 () Bool)

(assert (=> b!6634580 (= c!1223808 ((_ is EmptyLang!16499) (derivativeStep!5178 (regOne!33510 r!7292) (head!13439 s!2326))))))

(declare-fun b!6634581 () Bool)

(assert (=> b!6634581 (= e!4012696 (not lt!2419351))))

(declare-fun b!6634582 () Bool)

(assert (=> b!6634582 (= e!4012700 (= lt!2419351 call!582448))))

(declare-fun b!6634583 () Bool)

(assert (=> b!6634583 (= e!4012699 (= (head!13439 (tail!12524 s!2326)) (c!1223326 (derivativeStep!5178 (regOne!33510 r!7292) (head!13439 s!2326)))))))

(declare-fun b!6634584 () Bool)

(declare-fun res!2719020 () Bool)

(declare-fun e!4012698 () Bool)

(assert (=> b!6634584 (=> res!2719020 e!4012698)))

(assert (=> b!6634584 (= res!2719020 (not (isEmpty!37969 (tail!12524 (tail!12524 s!2326)))))))

(declare-fun b!6634585 () Bool)

(assert (=> b!6634585 (= e!4012698 (not (= (head!13439 (tail!12524 s!2326)) (c!1223326 (derivativeStep!5178 (regOne!33510 r!7292) (head!13439 s!2326))))))))

(declare-fun b!6634586 () Bool)

(assert (=> b!6634586 (= e!4012697 (nullable!6492 (derivativeStep!5178 (regOne!33510 r!7292) (head!13439 s!2326))))))

(declare-fun b!6634587 () Bool)

(declare-fun res!2719018 () Bool)

(assert (=> b!6634587 (=> (not res!2719018) (not e!4012699))))

(assert (=> b!6634587 (= res!2719018 (not call!582448))))

(declare-fun b!6634588 () Bool)

(declare-fun res!2719023 () Bool)

(assert (=> b!6634588 (=> (not res!2719023) (not e!4012699))))

(assert (=> b!6634588 (= res!2719023 (isEmpty!37969 (tail!12524 (tail!12524 s!2326))))))

(declare-fun b!6634589 () Bool)

(declare-fun e!4012701 () Bool)

(assert (=> b!6634589 (= e!4012702 e!4012701)))

(declare-fun res!2719021 () Bool)

(assert (=> b!6634589 (=> (not res!2719021) (not e!4012701))))

(assert (=> b!6634589 (= res!2719021 (not lt!2419351))))

(declare-fun b!6634590 () Bool)

(declare-fun res!2719017 () Bool)

(assert (=> b!6634590 (=> res!2719017 e!4012702)))

(assert (=> b!6634590 (= res!2719017 (not ((_ is ElementMatch!16499) (derivativeStep!5178 (regOne!33510 r!7292) (head!13439 s!2326)))))))

(assert (=> b!6634590 (= e!4012696 e!4012702)))

(declare-fun b!6634591 () Bool)

(assert (=> b!6634591 (= e!4012697 (matchR!8682 (derivativeStep!5178 (derivativeStep!5178 (regOne!33510 r!7292) (head!13439 s!2326)) (head!13439 (tail!12524 s!2326))) (tail!12524 (tail!12524 s!2326))))))

(declare-fun b!6634592 () Bool)

(assert (=> b!6634592 (= e!4012701 e!4012698)))

(declare-fun res!2719019 () Bool)

(assert (=> b!6634592 (=> res!2719019 e!4012698)))

(assert (=> b!6634592 (= res!2719019 call!582448)))

(assert (= (and d!2079889 c!1223807) b!6634586))

(assert (= (and d!2079889 (not c!1223807)) b!6634591))

(assert (= (and d!2079889 c!1223806) b!6634582))

(assert (= (and d!2079889 (not c!1223806)) b!6634580))

(assert (= (and b!6634580 c!1223808) b!6634581))

(assert (= (and b!6634580 (not c!1223808)) b!6634590))

(assert (= (and b!6634590 (not res!2719017)) b!6634579))

(assert (= (and b!6634579 res!2719022) b!6634587))

(assert (= (and b!6634587 res!2719018) b!6634588))

(assert (= (and b!6634588 res!2719023) b!6634583))

(assert (= (and b!6634579 (not res!2719024)) b!6634589))

(assert (= (and b!6634589 res!2719021) b!6634592))

(assert (= (and b!6634592 (not res!2719019)) b!6634584))

(assert (= (and b!6634584 (not res!2719020)) b!6634585))

(assert (= (or b!6634582 b!6634587 b!6634592) bm!582443))

(assert (=> b!6634591 m!7401676))

(assert (=> b!6634591 m!7402256))

(assert (=> b!6634591 m!7401786))

(assert (=> b!6634591 m!7402256))

(declare-fun m!7402912 () Bool)

(assert (=> b!6634591 m!7402912))

(assert (=> b!6634591 m!7401676))

(assert (=> b!6634591 m!7402260))

(assert (=> b!6634591 m!7402912))

(assert (=> b!6634591 m!7402260))

(declare-fun m!7402914 () Bool)

(assert (=> b!6634591 m!7402914))

(assert (=> d!2079889 m!7401676))

(assert (=> d!2079889 m!7401680))

(assert (=> d!2079889 m!7401786))

(declare-fun m!7402920 () Bool)

(assert (=> d!2079889 m!7402920))

(assert (=> b!6634583 m!7401676))

(assert (=> b!6634583 m!7402256))

(assert (=> b!6634585 m!7401676))

(assert (=> b!6634585 m!7402256))

(assert (=> bm!582443 m!7401676))

(assert (=> bm!582443 m!7401680))

(assert (=> b!6634588 m!7401676))

(assert (=> b!6634588 m!7402260))

(assert (=> b!6634588 m!7402260))

(assert (=> b!6634588 m!7402266))

(assert (=> b!6634586 m!7401786))

(declare-fun m!7402922 () Bool)

(assert (=> b!6634586 m!7402922))

(assert (=> b!6634584 m!7401676))

(assert (=> b!6634584 m!7402260))

(assert (=> b!6634584 m!7402260))

(assert (=> b!6634584 m!7402266))

(assert (=> b!6633244 d!2079889))

(declare-fun c!1223812 () Bool)

(declare-fun bm!582444 () Bool)

(declare-fun c!1223813 () Bool)

(declare-fun call!582451 () Regex!16499)

(assert (=> bm!582444 (= call!582451 (derivativeStep!5178 (ite c!1223813 (regOne!33511 (regOne!33510 r!7292)) (ite c!1223812 (regTwo!33510 (regOne!33510 r!7292)) (regOne!33510 (regOne!33510 r!7292)))) (head!13439 s!2326)))))

(declare-fun b!6634597 () Bool)

(declare-fun e!4012705 () Regex!16499)

(assert (=> b!6634597 (= e!4012705 (ite (= (head!13439 s!2326) (c!1223326 (regOne!33510 r!7292))) EmptyExpr!16499 EmptyLang!16499))))

(declare-fun b!6634598 () Bool)

(assert (=> b!6634598 (= c!1223812 (nullable!6492 (regOne!33510 (regOne!33510 r!7292))))))

(declare-fun e!4012707 () Regex!16499)

(declare-fun e!4012706 () Regex!16499)

(assert (=> b!6634598 (= e!4012707 e!4012706)))

(declare-fun b!6634599 () Bool)

(declare-fun e!4012708 () Regex!16499)

(assert (=> b!6634599 (= e!4012708 EmptyLang!16499)))

(declare-fun call!582449 () Regex!16499)

(declare-fun call!582450 () Regex!16499)

(declare-fun b!6634600 () Bool)

(assert (=> b!6634600 (= e!4012706 (Union!16499 (Concat!25344 call!582449 (regTwo!33510 (regOne!33510 r!7292))) call!582450))))

(declare-fun b!6634601 () Bool)

(declare-fun e!4012709 () Regex!16499)

(assert (=> b!6634601 (= e!4012709 e!4012707)))

(declare-fun c!1223811 () Bool)

(assert (=> b!6634601 (= c!1223811 ((_ is Star!16499) (regOne!33510 r!7292)))))

(declare-fun d!2079893 () Bool)

(declare-fun lt!2419352 () Regex!16499)

(assert (=> d!2079893 (validRegex!8235 lt!2419352)))

(assert (=> d!2079893 (= lt!2419352 e!4012708)))

(declare-fun c!1223814 () Bool)

(assert (=> d!2079893 (= c!1223814 (or ((_ is EmptyExpr!16499) (regOne!33510 r!7292)) ((_ is EmptyLang!16499) (regOne!33510 r!7292))))))

(assert (=> d!2079893 (validRegex!8235 (regOne!33510 r!7292))))

(assert (=> d!2079893 (= (derivativeStep!5178 (regOne!33510 r!7292) (head!13439 s!2326)) lt!2419352)))

(declare-fun b!6634602 () Bool)

(assert (=> b!6634602 (= e!4012706 (Union!16499 (Concat!25344 call!582450 (regTwo!33510 (regOne!33510 r!7292))) EmptyLang!16499))))

(declare-fun b!6634603 () Bool)

(assert (=> b!6634603 (= e!4012707 (Concat!25344 call!582449 (regOne!33510 r!7292)))))

(declare-fun b!6634604 () Bool)

(declare-fun call!582452 () Regex!16499)

(assert (=> b!6634604 (= e!4012709 (Union!16499 call!582451 call!582452))))

(declare-fun bm!582445 () Bool)

(assert (=> bm!582445 (= call!582450 call!582451)))

(declare-fun b!6634605 () Bool)

(assert (=> b!6634605 (= e!4012708 e!4012705)))

(declare-fun c!1223815 () Bool)

(assert (=> b!6634605 (= c!1223815 ((_ is ElementMatch!16499) (regOne!33510 r!7292)))))

(declare-fun bm!582446 () Bool)

(assert (=> bm!582446 (= call!582449 call!582452)))

(declare-fun b!6634606 () Bool)

(assert (=> b!6634606 (= c!1223813 ((_ is Union!16499) (regOne!33510 r!7292)))))

(assert (=> b!6634606 (= e!4012705 e!4012709)))

(declare-fun bm!582447 () Bool)

(assert (=> bm!582447 (= call!582452 (derivativeStep!5178 (ite c!1223813 (regTwo!33511 (regOne!33510 r!7292)) (ite c!1223811 (reg!16828 (regOne!33510 r!7292)) (regOne!33510 (regOne!33510 r!7292)))) (head!13439 s!2326)))))

(assert (= (and d!2079893 c!1223814) b!6634599))

(assert (= (and d!2079893 (not c!1223814)) b!6634605))

(assert (= (and b!6634605 c!1223815) b!6634597))

(assert (= (and b!6634605 (not c!1223815)) b!6634606))

(assert (= (and b!6634606 c!1223813) b!6634604))

(assert (= (and b!6634606 (not c!1223813)) b!6634601))

(assert (= (and b!6634601 c!1223811) b!6634603))

(assert (= (and b!6634601 (not c!1223811)) b!6634598))

(assert (= (and b!6634598 c!1223812) b!6634600))

(assert (= (and b!6634598 (not c!1223812)) b!6634602))

(assert (= (or b!6634600 b!6634602) bm!582445))

(assert (= (or b!6634603 b!6634600) bm!582446))

(assert (= (or b!6634604 bm!582446) bm!582447))

(assert (= (or b!6634604 bm!582445) bm!582444))

(assert (=> bm!582444 m!7401672))

(declare-fun m!7402930 () Bool)

(assert (=> bm!582444 m!7402930))

(assert (=> b!6634598 m!7401566))

(declare-fun m!7402932 () Bool)

(assert (=> d!2079893 m!7402932))

(assert (=> d!2079893 m!7401784))

(assert (=> bm!582447 m!7401672))

(declare-fun m!7402934 () Bool)

(assert (=> bm!582447 m!7402934))

(assert (=> b!6633244 d!2079893))

(assert (=> b!6633244 d!2079513))

(assert (=> b!6633244 d!2079495))

(assert (=> bm!582208 d!2079499))

(assert (=> b!6633191 d!2079513))

(declare-fun d!2079897 () Bool)

(assert (=> d!2079897 (= (nullable!6492 (h!72120 (exprs!6383 lt!2419182))) (nullableFct!2413 (h!72120 (exprs!6383 lt!2419182))))))

(declare-fun bs!1705155 () Bool)

(assert (= bs!1705155 d!2079897))

(declare-fun m!7402936 () Bool)

(assert (=> bs!1705155 m!7402936))

(assert (=> b!6633319 d!2079897))

(assert (=> b!6633543 d!2079823))

(declare-fun d!2079899 () Bool)

(assert (=> d!2079899 (= (isEmpty!37968 (tail!12525 (t!379460 (exprs!6383 (h!72121 zl!343))))) ((_ is Nil!65672) (tail!12525 (t!379460 (exprs!6383 (h!72121 zl!343))))))))

(assert (=> b!6633215 d!2079899))

(declare-fun d!2079901 () Bool)

(assert (=> d!2079901 (= (tail!12525 (t!379460 (exprs!6383 (h!72121 zl!343)))) (t!379460 (t!379460 (exprs!6383 (h!72121 zl!343)))))))

(assert (=> b!6633215 d!2079901))

(declare-fun d!2079905 () Bool)

(assert (=> d!2079905 (= ($colon$colon!2336 (exprs!6383 lt!2419182) (ite (or c!1223471 c!1223470) (regTwo!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))) (h!72120 (exprs!6383 (h!72121 zl!343))))) (Cons!65672 (ite (or c!1223471 c!1223470) (regTwo!33510 (h!72120 (exprs!6383 (h!72121 zl!343)))) (h!72120 (exprs!6383 (h!72121 zl!343)))) (exprs!6383 lt!2419182)))))

(assert (=> bm!582233 d!2079905))

(assert (=> d!2079359 d!2079499))

(assert (=> d!2079359 d!2079585))

(declare-fun d!2079913 () Bool)

(assert (=> d!2079913 (= (nullable!6492 (h!72120 (exprs!6383 (Context!11767 (Cons!65672 (h!72120 (exprs!6383 (h!72121 zl!343))) (t!379460 (exprs!6383 (h!72121 zl!343)))))))) (nullableFct!2413 (h!72120 (exprs!6383 (Context!11767 (Cons!65672 (h!72120 (exprs!6383 (h!72121 zl!343))) (t!379460 (exprs!6383 (h!72121 zl!343)))))))))))

(declare-fun bs!1705159 () Bool)

(assert (= bs!1705159 d!2079913))

(declare-fun m!7402940 () Bool)

(assert (=> bs!1705159 m!7402940))

(assert (=> b!6633412 d!2079913))

(assert (=> b!6633128 d!2079513))

(assert (=> d!2079399 d!2079397))

(declare-fun d!2079915 () Bool)

(assert (=> d!2079915 (= (flatMap!2004 lt!2419202 lambda!370573) (dynLambda!26160 lambda!370573 lt!2419182))))

(assert (=> d!2079915 true))

(declare-fun _$13!3925 () Unit!159351)

(assert (=> d!2079915 (= (choose!49551 lt!2419202 lt!2419182 lambda!370573) _$13!3925)))

(declare-fun b_lambda!250787 () Bool)

(assert (=> (not b_lambda!250787) (not d!2079915)))

(declare-fun bs!1705160 () Bool)

(assert (= bs!1705160 d!2079915))

(assert (=> bs!1705160 m!7401570))

(assert (=> bs!1705160 m!7401904))

(assert (=> d!2079399 d!2079915))

(declare-fun b!6634608 () Bool)

(declare-fun e!4012711 () Bool)

(declare-fun tp!1827396 () Bool)

(assert (=> b!6634608 (= e!4012711 tp!1827396)))

(declare-fun tp!1827397 () Bool)

(declare-fun b!6634607 () Bool)

(declare-fun e!4012710 () Bool)

(assert (=> b!6634607 (= e!4012710 (and (inv!84494 (h!72121 (t!379461 (t!379461 zl!343)))) e!4012711 tp!1827397))))

(assert (=> b!6633685 (= tp!1827291 e!4012710)))

(assert (= b!6634607 b!6634608))

(assert (= (and b!6633685 ((_ is Cons!65673) (t!379461 (t!379461 zl!343)))) b!6634607))

(declare-fun m!7402942 () Bool)

(assert (=> b!6634607 m!7402942))

(declare-fun e!4012712 () Bool)

(assert (=> b!6633715 (= tp!1827309 e!4012712)))

(declare-fun b!6634612 () Bool)

(declare-fun tp!1827401 () Bool)

(declare-fun tp!1827400 () Bool)

(assert (=> b!6634612 (= e!4012712 (and tp!1827401 tp!1827400))))

(declare-fun b!6634609 () Bool)

(assert (=> b!6634609 (= e!4012712 tp_is_empty!42251)))

(declare-fun b!6634610 () Bool)

(declare-fun tp!1827402 () Bool)

(declare-fun tp!1827398 () Bool)

(assert (=> b!6634610 (= e!4012712 (and tp!1827402 tp!1827398))))

(declare-fun b!6634611 () Bool)

(declare-fun tp!1827399 () Bool)

(assert (=> b!6634611 (= e!4012712 tp!1827399)))

(assert (= (and b!6633715 ((_ is ElementMatch!16499) (reg!16828 (regOne!33510 r!7292)))) b!6634609))

(assert (= (and b!6633715 ((_ is Concat!25344) (reg!16828 (regOne!33510 r!7292)))) b!6634610))

(assert (= (and b!6633715 ((_ is Star!16499) (reg!16828 (regOne!33510 r!7292)))) b!6634611))

(assert (= (and b!6633715 ((_ is Union!16499) (reg!16828 (regOne!33510 r!7292)))) b!6634612))

(declare-fun e!4012713 () Bool)

(assert (=> b!6633659 (= tp!1827278 e!4012713)))

(declare-fun b!6634616 () Bool)

(declare-fun tp!1827406 () Bool)

(declare-fun tp!1827405 () Bool)

(assert (=> b!6634616 (= e!4012713 (and tp!1827406 tp!1827405))))

(declare-fun b!6634613 () Bool)

(assert (=> b!6634613 (= e!4012713 tp_is_empty!42251)))

(declare-fun b!6634614 () Bool)

(declare-fun tp!1827407 () Bool)

(declare-fun tp!1827403 () Bool)

(assert (=> b!6634614 (= e!4012713 (and tp!1827407 tp!1827403))))

(declare-fun b!6634615 () Bool)

(declare-fun tp!1827404 () Bool)

(assert (=> b!6634615 (= e!4012713 tp!1827404)))

(assert (= (and b!6633659 ((_ is ElementMatch!16499) (regOne!33511 (regTwo!33511 r!7292)))) b!6634613))

(assert (= (and b!6633659 ((_ is Concat!25344) (regOne!33511 (regTwo!33511 r!7292)))) b!6634614))

(assert (= (and b!6633659 ((_ is Star!16499) (regOne!33511 (regTwo!33511 r!7292)))) b!6634615))

(assert (= (and b!6633659 ((_ is Union!16499) (regOne!33511 (regTwo!33511 r!7292)))) b!6634616))

(declare-fun e!4012714 () Bool)

(assert (=> b!6633659 (= tp!1827277 e!4012714)))

(declare-fun b!6634620 () Bool)

(declare-fun tp!1827411 () Bool)

(declare-fun tp!1827410 () Bool)

(assert (=> b!6634620 (= e!4012714 (and tp!1827411 tp!1827410))))

(declare-fun b!6634617 () Bool)

(assert (=> b!6634617 (= e!4012714 tp_is_empty!42251)))

(declare-fun b!6634618 () Bool)

(declare-fun tp!1827412 () Bool)

(declare-fun tp!1827408 () Bool)

(assert (=> b!6634618 (= e!4012714 (and tp!1827412 tp!1827408))))

(declare-fun b!6634619 () Bool)

(declare-fun tp!1827409 () Bool)

(assert (=> b!6634619 (= e!4012714 tp!1827409)))

(assert (= (and b!6633659 ((_ is ElementMatch!16499) (regTwo!33511 (regTwo!33511 r!7292)))) b!6634617))

(assert (= (and b!6633659 ((_ is Concat!25344) (regTwo!33511 (regTwo!33511 r!7292)))) b!6634618))

(assert (= (and b!6633659 ((_ is Star!16499) (regTwo!33511 (regTwo!33511 r!7292)))) b!6634619))

(assert (= (and b!6633659 ((_ is Union!16499) (regTwo!33511 (regTwo!33511 r!7292)))) b!6634620))

(declare-fun e!4012715 () Bool)

(assert (=> b!6633657 (= tp!1827279 e!4012715)))

(declare-fun b!6634624 () Bool)

(declare-fun tp!1827416 () Bool)

(declare-fun tp!1827415 () Bool)

(assert (=> b!6634624 (= e!4012715 (and tp!1827416 tp!1827415))))

(declare-fun b!6634621 () Bool)

(assert (=> b!6634621 (= e!4012715 tp_is_empty!42251)))

(declare-fun b!6634622 () Bool)

(declare-fun tp!1827417 () Bool)

(declare-fun tp!1827413 () Bool)

(assert (=> b!6634622 (= e!4012715 (and tp!1827417 tp!1827413))))

(declare-fun b!6634623 () Bool)

(declare-fun tp!1827414 () Bool)

(assert (=> b!6634623 (= e!4012715 tp!1827414)))

(assert (= (and b!6633657 ((_ is ElementMatch!16499) (regOne!33510 (regTwo!33511 r!7292)))) b!6634621))

(assert (= (and b!6633657 ((_ is Concat!25344) (regOne!33510 (regTwo!33511 r!7292)))) b!6634622))

(assert (= (and b!6633657 ((_ is Star!16499) (regOne!33510 (regTwo!33511 r!7292)))) b!6634623))

(assert (= (and b!6633657 ((_ is Union!16499) (regOne!33510 (regTwo!33511 r!7292)))) b!6634624))

(declare-fun e!4012716 () Bool)

(assert (=> b!6633657 (= tp!1827275 e!4012716)))

(declare-fun b!6634628 () Bool)

(declare-fun tp!1827421 () Bool)

(declare-fun tp!1827420 () Bool)

(assert (=> b!6634628 (= e!4012716 (and tp!1827421 tp!1827420))))

(declare-fun b!6634625 () Bool)

(assert (=> b!6634625 (= e!4012716 tp_is_empty!42251)))

(declare-fun b!6634626 () Bool)

(declare-fun tp!1827422 () Bool)

(declare-fun tp!1827418 () Bool)

(assert (=> b!6634626 (= e!4012716 (and tp!1827422 tp!1827418))))

(declare-fun b!6634627 () Bool)

(declare-fun tp!1827419 () Bool)

(assert (=> b!6634627 (= e!4012716 tp!1827419)))

(assert (= (and b!6633657 ((_ is ElementMatch!16499) (regTwo!33510 (regTwo!33511 r!7292)))) b!6634625))

(assert (= (and b!6633657 ((_ is Concat!25344) (regTwo!33510 (regTwo!33511 r!7292)))) b!6634626))

(assert (= (and b!6633657 ((_ is Star!16499) (regTwo!33510 (regTwo!33511 r!7292)))) b!6634627))

(assert (= (and b!6633657 ((_ is Union!16499) (regTwo!33510 (regTwo!33511 r!7292)))) b!6634628))

(declare-fun e!4012717 () Bool)

(assert (=> b!6633658 (= tp!1827276 e!4012717)))

(declare-fun b!6634632 () Bool)

(declare-fun tp!1827426 () Bool)

(declare-fun tp!1827425 () Bool)

(assert (=> b!6634632 (= e!4012717 (and tp!1827426 tp!1827425))))

(declare-fun b!6634629 () Bool)

(assert (=> b!6634629 (= e!4012717 tp_is_empty!42251)))

(declare-fun b!6634630 () Bool)

(declare-fun tp!1827427 () Bool)

(declare-fun tp!1827423 () Bool)

(assert (=> b!6634630 (= e!4012717 (and tp!1827427 tp!1827423))))

(declare-fun b!6634631 () Bool)

(declare-fun tp!1827424 () Bool)

(assert (=> b!6634631 (= e!4012717 tp!1827424)))

(assert (= (and b!6633658 ((_ is ElementMatch!16499) (reg!16828 (regTwo!33511 r!7292)))) b!6634629))

(assert (= (and b!6633658 ((_ is Concat!25344) (reg!16828 (regTwo!33511 r!7292)))) b!6634630))

(assert (= (and b!6633658 ((_ is Star!16499) (reg!16828 (regTwo!33511 r!7292)))) b!6634631))

(assert (= (and b!6633658 ((_ is Union!16499) (reg!16828 (regTwo!33511 r!7292)))) b!6634632))

(declare-fun e!4012718 () Bool)

(assert (=> b!6633714 (= tp!1827312 e!4012718)))

(declare-fun b!6634636 () Bool)

(declare-fun tp!1827431 () Bool)

(declare-fun tp!1827430 () Bool)

(assert (=> b!6634636 (= e!4012718 (and tp!1827431 tp!1827430))))

(declare-fun b!6634633 () Bool)

(assert (=> b!6634633 (= e!4012718 tp_is_empty!42251)))

(declare-fun b!6634634 () Bool)

(declare-fun tp!1827432 () Bool)

(declare-fun tp!1827428 () Bool)

(assert (=> b!6634634 (= e!4012718 (and tp!1827432 tp!1827428))))

(declare-fun b!6634635 () Bool)

(declare-fun tp!1827429 () Bool)

(assert (=> b!6634635 (= e!4012718 tp!1827429)))

(assert (= (and b!6633714 ((_ is ElementMatch!16499) (regOne!33510 (regOne!33510 r!7292)))) b!6634633))

(assert (= (and b!6633714 ((_ is Concat!25344) (regOne!33510 (regOne!33510 r!7292)))) b!6634634))

(assert (= (and b!6633714 ((_ is Star!16499) (regOne!33510 (regOne!33510 r!7292)))) b!6634635))

(assert (= (and b!6633714 ((_ is Union!16499) (regOne!33510 (regOne!33510 r!7292)))) b!6634636))

(declare-fun e!4012719 () Bool)

(assert (=> b!6633714 (= tp!1827308 e!4012719)))

(declare-fun b!6634640 () Bool)

(declare-fun tp!1827436 () Bool)

(declare-fun tp!1827435 () Bool)

(assert (=> b!6634640 (= e!4012719 (and tp!1827436 tp!1827435))))

(declare-fun b!6634637 () Bool)

(assert (=> b!6634637 (= e!4012719 tp_is_empty!42251)))

(declare-fun b!6634638 () Bool)

(declare-fun tp!1827437 () Bool)

(declare-fun tp!1827433 () Bool)

(assert (=> b!6634638 (= e!4012719 (and tp!1827437 tp!1827433))))

(declare-fun b!6634639 () Bool)

(declare-fun tp!1827434 () Bool)

(assert (=> b!6634639 (= e!4012719 tp!1827434)))

(assert (= (and b!6633714 ((_ is ElementMatch!16499) (regTwo!33510 (regOne!33510 r!7292)))) b!6634637))

(assert (= (and b!6633714 ((_ is Concat!25344) (regTwo!33510 (regOne!33510 r!7292)))) b!6634638))

(assert (= (and b!6633714 ((_ is Star!16499) (regTwo!33510 (regOne!33510 r!7292)))) b!6634639))

(assert (= (and b!6633714 ((_ is Union!16499) (regTwo!33510 (regOne!33510 r!7292)))) b!6634640))

(declare-fun b!6634641 () Bool)

(declare-fun e!4012720 () Bool)

(declare-fun tp!1827438 () Bool)

(declare-fun tp!1827439 () Bool)

(assert (=> b!6634641 (= e!4012720 (and tp!1827438 tp!1827439))))

(assert (=> b!6633686 (= tp!1827290 e!4012720)))

(assert (= (and b!6633686 ((_ is Cons!65672) (exprs!6383 (h!72121 (t!379461 zl!343))))) b!6634641))

(declare-fun e!4012721 () Bool)

(assert (=> b!6633716 (= tp!1827311 e!4012721)))

(declare-fun b!6634645 () Bool)

(declare-fun tp!1827443 () Bool)

(declare-fun tp!1827442 () Bool)

(assert (=> b!6634645 (= e!4012721 (and tp!1827443 tp!1827442))))

(declare-fun b!6634642 () Bool)

(assert (=> b!6634642 (= e!4012721 tp_is_empty!42251)))

(declare-fun b!6634643 () Bool)

(declare-fun tp!1827444 () Bool)

(declare-fun tp!1827440 () Bool)

(assert (=> b!6634643 (= e!4012721 (and tp!1827444 tp!1827440))))

(declare-fun b!6634644 () Bool)

(declare-fun tp!1827441 () Bool)

(assert (=> b!6634644 (= e!4012721 tp!1827441)))

(assert (= (and b!6633716 ((_ is ElementMatch!16499) (regOne!33511 (regOne!33510 r!7292)))) b!6634642))

(assert (= (and b!6633716 ((_ is Concat!25344) (regOne!33511 (regOne!33510 r!7292)))) b!6634643))

(assert (= (and b!6633716 ((_ is Star!16499) (regOne!33511 (regOne!33510 r!7292)))) b!6634644))

(assert (= (and b!6633716 ((_ is Union!16499) (regOne!33511 (regOne!33510 r!7292)))) b!6634645))

(declare-fun e!4012722 () Bool)

(assert (=> b!6633716 (= tp!1827310 e!4012722)))

(declare-fun b!6634649 () Bool)

(declare-fun tp!1827448 () Bool)

(declare-fun tp!1827447 () Bool)

(assert (=> b!6634649 (= e!4012722 (and tp!1827448 tp!1827447))))

(declare-fun b!6634646 () Bool)

(assert (=> b!6634646 (= e!4012722 tp_is_empty!42251)))

(declare-fun b!6634647 () Bool)

(declare-fun tp!1827449 () Bool)

(declare-fun tp!1827445 () Bool)

(assert (=> b!6634647 (= e!4012722 (and tp!1827449 tp!1827445))))

(declare-fun b!6634648 () Bool)

(declare-fun tp!1827446 () Bool)

(assert (=> b!6634648 (= e!4012722 tp!1827446)))

(assert (= (and b!6633716 ((_ is ElementMatch!16499) (regTwo!33511 (regOne!33510 r!7292)))) b!6634646))

(assert (= (and b!6633716 ((_ is Concat!25344) (regTwo!33511 (regOne!33510 r!7292)))) b!6634647))

(assert (= (and b!6633716 ((_ is Star!16499) (regTwo!33511 (regOne!33510 r!7292)))) b!6634648))

(assert (= (and b!6633716 ((_ is Union!16499) (regTwo!33511 (regOne!33510 r!7292)))) b!6634649))

(declare-fun condSetEmpty!45350 () Bool)

(assert (=> setNonEmpty!45339 (= condSetEmpty!45350 (= setRest!45339 ((as const (Array Context!11766 Bool)) false)))))

(declare-fun setRes!45350 () Bool)

(assert (=> setNonEmpty!45339 (= tp!1827301 setRes!45350)))

(declare-fun setIsEmpty!45350 () Bool)

(assert (=> setIsEmpty!45350 setRes!45350))

(declare-fun e!4012723 () Bool)

(declare-fun setElem!45350 () Context!11766)

(declare-fun setNonEmpty!45350 () Bool)

(declare-fun tp!1827450 () Bool)

(assert (=> setNonEmpty!45350 (= setRes!45350 (and tp!1827450 (inv!84494 setElem!45350) e!4012723))))

(declare-fun setRest!45350 () (InoxSet Context!11766))

(assert (=> setNonEmpty!45350 (= setRest!45339 ((_ map or) (store ((as const (Array Context!11766 Bool)) false) setElem!45350 true) setRest!45350))))

(declare-fun b!6634650 () Bool)

(declare-fun tp!1827451 () Bool)

(assert (=> b!6634650 (= e!4012723 tp!1827451)))

(assert (= (and setNonEmpty!45339 condSetEmpty!45350) setIsEmpty!45350))

(assert (= (and setNonEmpty!45339 (not condSetEmpty!45350)) setNonEmpty!45350))

(assert (= setNonEmpty!45350 b!6634650))

(declare-fun m!7402944 () Bool)

(assert (=> setNonEmpty!45350 m!7402944))

(declare-fun b!6634651 () Bool)

(declare-fun e!4012724 () Bool)

(declare-fun tp!1827452 () Bool)

(declare-fun tp!1827453 () Bool)

(assert (=> b!6634651 (= e!4012724 (and tp!1827452 tp!1827453))))

(assert (=> b!6633706 (= tp!1827302 e!4012724)))

(assert (= (and b!6633706 ((_ is Cons!65672) (exprs!6383 setElem!45339))) b!6634651))

(declare-fun e!4012725 () Bool)

(assert (=> b!6633653 (= tp!1827274 e!4012725)))

(declare-fun b!6634655 () Bool)

(declare-fun tp!1827457 () Bool)

(declare-fun tp!1827456 () Bool)

(assert (=> b!6634655 (= e!4012725 (and tp!1827457 tp!1827456))))

(declare-fun b!6634652 () Bool)

(assert (=> b!6634652 (= e!4012725 tp_is_empty!42251)))

(declare-fun b!6634653 () Bool)

(declare-fun tp!1827458 () Bool)

(declare-fun tp!1827454 () Bool)

(assert (=> b!6634653 (= e!4012725 (and tp!1827458 tp!1827454))))

(declare-fun b!6634654 () Bool)

(declare-fun tp!1827455 () Bool)

(assert (=> b!6634654 (= e!4012725 tp!1827455)))

(assert (= (and b!6633653 ((_ is ElementMatch!16499) (regOne!33510 (regOne!33511 r!7292)))) b!6634652))

(assert (= (and b!6633653 ((_ is Concat!25344) (regOne!33510 (regOne!33511 r!7292)))) b!6634653))

(assert (= (and b!6633653 ((_ is Star!16499) (regOne!33510 (regOne!33511 r!7292)))) b!6634654))

(assert (= (and b!6633653 ((_ is Union!16499) (regOne!33510 (regOne!33511 r!7292)))) b!6634655))

(declare-fun e!4012726 () Bool)

(assert (=> b!6633653 (= tp!1827270 e!4012726)))

(declare-fun b!6634659 () Bool)

(declare-fun tp!1827462 () Bool)

(declare-fun tp!1827461 () Bool)

(assert (=> b!6634659 (= e!4012726 (and tp!1827462 tp!1827461))))

(declare-fun b!6634656 () Bool)

(assert (=> b!6634656 (= e!4012726 tp_is_empty!42251)))

(declare-fun b!6634657 () Bool)

(declare-fun tp!1827463 () Bool)

(declare-fun tp!1827459 () Bool)

(assert (=> b!6634657 (= e!4012726 (and tp!1827463 tp!1827459))))

(declare-fun b!6634658 () Bool)

(declare-fun tp!1827460 () Bool)

(assert (=> b!6634658 (= e!4012726 tp!1827460)))

(assert (= (and b!6633653 ((_ is ElementMatch!16499) (regTwo!33510 (regOne!33511 r!7292)))) b!6634656))

(assert (= (and b!6633653 ((_ is Concat!25344) (regTwo!33510 (regOne!33511 r!7292)))) b!6634657))

(assert (= (and b!6633653 ((_ is Star!16499) (regTwo!33510 (regOne!33511 r!7292)))) b!6634658))

(assert (= (and b!6633653 ((_ is Union!16499) (regTwo!33510 (regOne!33511 r!7292)))) b!6634659))

(declare-fun b!6634662 () Bool)

(declare-fun e!4012729 () Bool)

(declare-fun tp!1827464 () Bool)

(assert (=> b!6634662 (= e!4012729 (and tp_is_empty!42251 tp!1827464))))

(assert (=> b!6633711 (= tp!1827305 e!4012729)))

(assert (= (and b!6633711 ((_ is Cons!65674) (t!379462 (t!379462 s!2326)))) b!6634662))

(declare-fun e!4012730 () Bool)

(assert (=> b!6633655 (= tp!1827273 e!4012730)))

(declare-fun b!6634668 () Bool)

(declare-fun tp!1827468 () Bool)

(declare-fun tp!1827467 () Bool)

(assert (=> b!6634668 (= e!4012730 (and tp!1827468 tp!1827467))))

(declare-fun b!6634665 () Bool)

(assert (=> b!6634665 (= e!4012730 tp_is_empty!42251)))

(declare-fun b!6634666 () Bool)

(declare-fun tp!1827469 () Bool)

(declare-fun tp!1827465 () Bool)

(assert (=> b!6634666 (= e!4012730 (and tp!1827469 tp!1827465))))

(declare-fun b!6634667 () Bool)

(declare-fun tp!1827466 () Bool)

(assert (=> b!6634667 (= e!4012730 tp!1827466)))

(assert (= (and b!6633655 ((_ is ElementMatch!16499) (regOne!33511 (regOne!33511 r!7292)))) b!6634665))

(assert (= (and b!6633655 ((_ is Concat!25344) (regOne!33511 (regOne!33511 r!7292)))) b!6634666))

(assert (= (and b!6633655 ((_ is Star!16499) (regOne!33511 (regOne!33511 r!7292)))) b!6634667))

(assert (= (and b!6633655 ((_ is Union!16499) (regOne!33511 (regOne!33511 r!7292)))) b!6634668))

(declare-fun e!4012731 () Bool)

(assert (=> b!6633655 (= tp!1827272 e!4012731)))

(declare-fun b!6634672 () Bool)

(declare-fun tp!1827473 () Bool)

(declare-fun tp!1827472 () Bool)

(assert (=> b!6634672 (= e!4012731 (and tp!1827473 tp!1827472))))

(declare-fun b!6634669 () Bool)

(assert (=> b!6634669 (= e!4012731 tp_is_empty!42251)))

(declare-fun b!6634670 () Bool)

(declare-fun tp!1827474 () Bool)

(declare-fun tp!1827470 () Bool)

(assert (=> b!6634670 (= e!4012731 (and tp!1827474 tp!1827470))))

(declare-fun b!6634671 () Bool)

(declare-fun tp!1827471 () Bool)

(assert (=> b!6634671 (= e!4012731 tp!1827471)))

(assert (= (and b!6633655 ((_ is ElementMatch!16499) (regTwo!33511 (regOne!33511 r!7292)))) b!6634669))

(assert (= (and b!6633655 ((_ is Concat!25344) (regTwo!33511 (regOne!33511 r!7292)))) b!6634670))

(assert (= (and b!6633655 ((_ is Star!16499) (regTwo!33511 (regOne!33511 r!7292)))) b!6634671))

(assert (= (and b!6633655 ((_ is Union!16499) (regTwo!33511 (regOne!33511 r!7292)))) b!6634672))

(declare-fun e!4012732 () Bool)

(assert (=> b!6633712 (= tp!1827306 e!4012732)))

(declare-fun b!6634676 () Bool)

(declare-fun tp!1827478 () Bool)

(declare-fun tp!1827477 () Bool)

(assert (=> b!6634676 (= e!4012732 (and tp!1827478 tp!1827477))))

(declare-fun b!6634673 () Bool)

(assert (=> b!6634673 (= e!4012732 tp_is_empty!42251)))

(declare-fun b!6634674 () Bool)

(declare-fun tp!1827479 () Bool)

(declare-fun tp!1827475 () Bool)

(assert (=> b!6634674 (= e!4012732 (and tp!1827479 tp!1827475))))

(declare-fun b!6634675 () Bool)

(declare-fun tp!1827476 () Bool)

(assert (=> b!6634675 (= e!4012732 tp!1827476)))

(assert (= (and b!6633712 ((_ is ElementMatch!16499) (h!72120 (exprs!6383 setElem!45336)))) b!6634673))

(assert (= (and b!6633712 ((_ is Concat!25344) (h!72120 (exprs!6383 setElem!45336)))) b!6634674))

(assert (= (and b!6633712 ((_ is Star!16499) (h!72120 (exprs!6383 setElem!45336)))) b!6634675))

(assert (= (and b!6633712 ((_ is Union!16499) (h!72120 (exprs!6383 setElem!45336)))) b!6634676))

(declare-fun b!6634677 () Bool)

(declare-fun e!4012733 () Bool)

(declare-fun tp!1827480 () Bool)

(declare-fun tp!1827481 () Bool)

(assert (=> b!6634677 (= e!4012733 (and tp!1827480 tp!1827481))))

(assert (=> b!6633712 (= tp!1827307 e!4012733)))

(assert (= (and b!6633712 ((_ is Cons!65672) (t!379460 (exprs!6383 setElem!45336)))) b!6634677))

(declare-fun e!4012734 () Bool)

(assert (=> b!6633688 (= tp!1827296 e!4012734)))

(declare-fun b!6634681 () Bool)

(declare-fun tp!1827485 () Bool)

(declare-fun tp!1827484 () Bool)

(assert (=> b!6634681 (= e!4012734 (and tp!1827485 tp!1827484))))

(declare-fun b!6634678 () Bool)

(assert (=> b!6634678 (= e!4012734 tp_is_empty!42251)))

(declare-fun b!6634679 () Bool)

(declare-fun tp!1827486 () Bool)

(declare-fun tp!1827482 () Bool)

(assert (=> b!6634679 (= e!4012734 (and tp!1827486 tp!1827482))))

(declare-fun b!6634680 () Bool)

(declare-fun tp!1827483 () Bool)

(assert (=> b!6634680 (= e!4012734 tp!1827483)))

(assert (= (and b!6633688 ((_ is ElementMatch!16499) (regOne!33510 (reg!16828 r!7292)))) b!6634678))

(assert (= (and b!6633688 ((_ is Concat!25344) (regOne!33510 (reg!16828 r!7292)))) b!6634679))

(assert (= (and b!6633688 ((_ is Star!16499) (regOne!33510 (reg!16828 r!7292)))) b!6634680))

(assert (= (and b!6633688 ((_ is Union!16499) (regOne!33510 (reg!16828 r!7292)))) b!6634681))

(declare-fun e!4012735 () Bool)

(assert (=> b!6633688 (= tp!1827292 e!4012735)))

(declare-fun b!6634685 () Bool)

(declare-fun tp!1827490 () Bool)

(declare-fun tp!1827489 () Bool)

(assert (=> b!6634685 (= e!4012735 (and tp!1827490 tp!1827489))))

(declare-fun b!6634682 () Bool)

(assert (=> b!6634682 (= e!4012735 tp_is_empty!42251)))

(declare-fun b!6634683 () Bool)

(declare-fun tp!1827491 () Bool)

(declare-fun tp!1827487 () Bool)

(assert (=> b!6634683 (= e!4012735 (and tp!1827491 tp!1827487))))

(declare-fun b!6634684 () Bool)

(declare-fun tp!1827488 () Bool)

(assert (=> b!6634684 (= e!4012735 tp!1827488)))

(assert (= (and b!6633688 ((_ is ElementMatch!16499) (regTwo!33510 (reg!16828 r!7292)))) b!6634682))

(assert (= (and b!6633688 ((_ is Concat!25344) (regTwo!33510 (reg!16828 r!7292)))) b!6634683))

(assert (= (and b!6633688 ((_ is Star!16499) (regTwo!33510 (reg!16828 r!7292)))) b!6634684))

(assert (= (and b!6633688 ((_ is Union!16499) (regTwo!33510 (reg!16828 r!7292)))) b!6634685))

(declare-fun e!4012736 () Bool)

(assert (=> b!6633718 (= tp!1827317 e!4012736)))

(declare-fun b!6634689 () Bool)

(declare-fun tp!1827495 () Bool)

(declare-fun tp!1827494 () Bool)

(assert (=> b!6634689 (= e!4012736 (and tp!1827495 tp!1827494))))

(declare-fun b!6634686 () Bool)

(assert (=> b!6634686 (= e!4012736 tp_is_empty!42251)))

(declare-fun b!6634687 () Bool)

(declare-fun tp!1827496 () Bool)

(declare-fun tp!1827492 () Bool)

(assert (=> b!6634687 (= e!4012736 (and tp!1827496 tp!1827492))))

(declare-fun b!6634688 () Bool)

(declare-fun tp!1827493 () Bool)

(assert (=> b!6634688 (= e!4012736 tp!1827493)))

(assert (= (and b!6633718 ((_ is ElementMatch!16499) (regOne!33510 (regTwo!33510 r!7292)))) b!6634686))

(assert (= (and b!6633718 ((_ is Concat!25344) (regOne!33510 (regTwo!33510 r!7292)))) b!6634687))

(assert (= (and b!6633718 ((_ is Star!16499) (regOne!33510 (regTwo!33510 r!7292)))) b!6634688))

(assert (= (and b!6633718 ((_ is Union!16499) (regOne!33510 (regTwo!33510 r!7292)))) b!6634689))

(declare-fun e!4012737 () Bool)

(assert (=> b!6633718 (= tp!1827313 e!4012737)))

(declare-fun b!6634693 () Bool)

(declare-fun tp!1827500 () Bool)

(declare-fun tp!1827499 () Bool)

(assert (=> b!6634693 (= e!4012737 (and tp!1827500 tp!1827499))))

(declare-fun b!6634690 () Bool)

(assert (=> b!6634690 (= e!4012737 tp_is_empty!42251)))

(declare-fun b!6634691 () Bool)

(declare-fun tp!1827501 () Bool)

(declare-fun tp!1827497 () Bool)

(assert (=> b!6634691 (= e!4012737 (and tp!1827501 tp!1827497))))

(declare-fun b!6634692 () Bool)

(declare-fun tp!1827498 () Bool)

(assert (=> b!6634692 (= e!4012737 tp!1827498)))

(assert (= (and b!6633718 ((_ is ElementMatch!16499) (regTwo!33510 (regTwo!33510 r!7292)))) b!6634690))

(assert (= (and b!6633718 ((_ is Concat!25344) (regTwo!33510 (regTwo!33510 r!7292)))) b!6634691))

(assert (= (and b!6633718 ((_ is Star!16499) (regTwo!33510 (regTwo!33510 r!7292)))) b!6634692))

(assert (= (and b!6633718 ((_ is Union!16499) (regTwo!33510 (regTwo!33510 r!7292)))) b!6634693))

(declare-fun e!4012738 () Bool)

(assert (=> b!6633654 (= tp!1827271 e!4012738)))

(declare-fun b!6634697 () Bool)

(declare-fun tp!1827505 () Bool)

(declare-fun tp!1827504 () Bool)

(assert (=> b!6634697 (= e!4012738 (and tp!1827505 tp!1827504))))

(declare-fun b!6634694 () Bool)

(assert (=> b!6634694 (= e!4012738 tp_is_empty!42251)))

(declare-fun b!6634695 () Bool)

(declare-fun tp!1827506 () Bool)

(declare-fun tp!1827502 () Bool)

(assert (=> b!6634695 (= e!4012738 (and tp!1827506 tp!1827502))))

(declare-fun b!6634696 () Bool)

(declare-fun tp!1827503 () Bool)

(assert (=> b!6634696 (= e!4012738 tp!1827503)))

(assert (= (and b!6633654 ((_ is ElementMatch!16499) (reg!16828 (regOne!33511 r!7292)))) b!6634694))

(assert (= (and b!6633654 ((_ is Concat!25344) (reg!16828 (regOne!33511 r!7292)))) b!6634695))

(assert (= (and b!6633654 ((_ is Star!16499) (reg!16828 (regOne!33511 r!7292)))) b!6634696))

(assert (= (and b!6633654 ((_ is Union!16499) (reg!16828 (regOne!33511 r!7292)))) b!6634697))

(declare-fun e!4012739 () Bool)

(assert (=> b!6633690 (= tp!1827295 e!4012739)))

(declare-fun b!6634701 () Bool)

(declare-fun tp!1827510 () Bool)

(declare-fun tp!1827509 () Bool)

(assert (=> b!6634701 (= e!4012739 (and tp!1827510 tp!1827509))))

(declare-fun b!6634698 () Bool)

(assert (=> b!6634698 (= e!4012739 tp_is_empty!42251)))

(declare-fun b!6634699 () Bool)

(declare-fun tp!1827511 () Bool)

(declare-fun tp!1827507 () Bool)

(assert (=> b!6634699 (= e!4012739 (and tp!1827511 tp!1827507))))

(declare-fun b!6634700 () Bool)

(declare-fun tp!1827508 () Bool)

(assert (=> b!6634700 (= e!4012739 tp!1827508)))

(assert (= (and b!6633690 ((_ is ElementMatch!16499) (regOne!33511 (reg!16828 r!7292)))) b!6634698))

(assert (= (and b!6633690 ((_ is Concat!25344) (regOne!33511 (reg!16828 r!7292)))) b!6634699))

(assert (= (and b!6633690 ((_ is Star!16499) (regOne!33511 (reg!16828 r!7292)))) b!6634700))

(assert (= (and b!6633690 ((_ is Union!16499) (regOne!33511 (reg!16828 r!7292)))) b!6634701))

(declare-fun e!4012740 () Bool)

(assert (=> b!6633690 (= tp!1827294 e!4012740)))

(declare-fun b!6634705 () Bool)

(declare-fun tp!1827515 () Bool)

(declare-fun tp!1827514 () Bool)

(assert (=> b!6634705 (= e!4012740 (and tp!1827515 tp!1827514))))

(declare-fun b!6634702 () Bool)

(assert (=> b!6634702 (= e!4012740 tp_is_empty!42251)))

(declare-fun b!6634703 () Bool)

(declare-fun tp!1827516 () Bool)

(declare-fun tp!1827512 () Bool)

(assert (=> b!6634703 (= e!4012740 (and tp!1827516 tp!1827512))))

(declare-fun b!6634704 () Bool)

(declare-fun tp!1827513 () Bool)

(assert (=> b!6634704 (= e!4012740 tp!1827513)))

(assert (= (and b!6633690 ((_ is ElementMatch!16499) (regTwo!33511 (reg!16828 r!7292)))) b!6634702))

(assert (= (and b!6633690 ((_ is Concat!25344) (regTwo!33511 (reg!16828 r!7292)))) b!6634703))

(assert (= (and b!6633690 ((_ is Star!16499) (regTwo!33511 (reg!16828 r!7292)))) b!6634704))

(assert (= (and b!6633690 ((_ is Union!16499) (regTwo!33511 (reg!16828 r!7292)))) b!6634705))

(declare-fun e!4012741 () Bool)

(assert (=> b!6633720 (= tp!1827316 e!4012741)))

(declare-fun b!6634709 () Bool)

(declare-fun tp!1827520 () Bool)

(declare-fun tp!1827519 () Bool)

(assert (=> b!6634709 (= e!4012741 (and tp!1827520 tp!1827519))))

(declare-fun b!6634706 () Bool)

(assert (=> b!6634706 (= e!4012741 tp_is_empty!42251)))

(declare-fun b!6634707 () Bool)

(declare-fun tp!1827521 () Bool)

(declare-fun tp!1827517 () Bool)

(assert (=> b!6634707 (= e!4012741 (and tp!1827521 tp!1827517))))

(declare-fun b!6634708 () Bool)

(declare-fun tp!1827518 () Bool)

(assert (=> b!6634708 (= e!4012741 tp!1827518)))

(assert (= (and b!6633720 ((_ is ElementMatch!16499) (regOne!33511 (regTwo!33510 r!7292)))) b!6634706))

(assert (= (and b!6633720 ((_ is Concat!25344) (regOne!33511 (regTwo!33510 r!7292)))) b!6634707))

(assert (= (and b!6633720 ((_ is Star!16499) (regOne!33511 (regTwo!33510 r!7292)))) b!6634708))

(assert (= (and b!6633720 ((_ is Union!16499) (regOne!33511 (regTwo!33510 r!7292)))) b!6634709))

(declare-fun e!4012742 () Bool)

(assert (=> b!6633720 (= tp!1827315 e!4012742)))

(declare-fun b!6634713 () Bool)

(declare-fun tp!1827525 () Bool)

(declare-fun tp!1827524 () Bool)

(assert (=> b!6634713 (= e!4012742 (and tp!1827525 tp!1827524))))

(declare-fun b!6634710 () Bool)

(assert (=> b!6634710 (= e!4012742 tp_is_empty!42251)))

(declare-fun b!6634711 () Bool)

(declare-fun tp!1827526 () Bool)

(declare-fun tp!1827522 () Bool)

(assert (=> b!6634711 (= e!4012742 (and tp!1827526 tp!1827522))))

(declare-fun b!6634712 () Bool)

(declare-fun tp!1827523 () Bool)

(assert (=> b!6634712 (= e!4012742 tp!1827523)))

(assert (= (and b!6633720 ((_ is ElementMatch!16499) (regTwo!33511 (regTwo!33510 r!7292)))) b!6634710))

(assert (= (and b!6633720 ((_ is Concat!25344) (regTwo!33511 (regTwo!33510 r!7292)))) b!6634711))

(assert (= (and b!6633720 ((_ is Star!16499) (regTwo!33511 (regTwo!33510 r!7292)))) b!6634712))

(assert (= (and b!6633720 ((_ is Union!16499) (regTwo!33511 (regTwo!33510 r!7292)))) b!6634713))

(declare-fun e!4012743 () Bool)

(assert (=> b!6633689 (= tp!1827293 e!4012743)))

(declare-fun b!6634717 () Bool)

(declare-fun tp!1827530 () Bool)

(declare-fun tp!1827529 () Bool)

(assert (=> b!6634717 (= e!4012743 (and tp!1827530 tp!1827529))))

(declare-fun b!6634714 () Bool)

(assert (=> b!6634714 (= e!4012743 tp_is_empty!42251)))

(declare-fun b!6634715 () Bool)

(declare-fun tp!1827531 () Bool)

(declare-fun tp!1827527 () Bool)

(assert (=> b!6634715 (= e!4012743 (and tp!1827531 tp!1827527))))

(declare-fun b!6634716 () Bool)

(declare-fun tp!1827528 () Bool)

(assert (=> b!6634716 (= e!4012743 tp!1827528)))

(assert (= (and b!6633689 ((_ is ElementMatch!16499) (reg!16828 (reg!16828 r!7292)))) b!6634714))

(assert (= (and b!6633689 ((_ is Concat!25344) (reg!16828 (reg!16828 r!7292)))) b!6634715))

(assert (= (and b!6633689 ((_ is Star!16499) (reg!16828 (reg!16828 r!7292)))) b!6634716))

(assert (= (and b!6633689 ((_ is Union!16499) (reg!16828 (reg!16828 r!7292)))) b!6634717))

(declare-fun e!4012744 () Bool)

(assert (=> b!6633719 (= tp!1827314 e!4012744)))

(declare-fun b!6634721 () Bool)

(declare-fun tp!1827535 () Bool)

(declare-fun tp!1827534 () Bool)

(assert (=> b!6634721 (= e!4012744 (and tp!1827535 tp!1827534))))

(declare-fun b!6634718 () Bool)

(assert (=> b!6634718 (= e!4012744 tp_is_empty!42251)))

(declare-fun b!6634719 () Bool)

(declare-fun tp!1827536 () Bool)

(declare-fun tp!1827532 () Bool)

(assert (=> b!6634719 (= e!4012744 (and tp!1827536 tp!1827532))))

(declare-fun b!6634720 () Bool)

(declare-fun tp!1827533 () Bool)

(assert (=> b!6634720 (= e!4012744 tp!1827533)))

(assert (= (and b!6633719 ((_ is ElementMatch!16499) (reg!16828 (regTwo!33510 r!7292)))) b!6634718))

(assert (= (and b!6633719 ((_ is Concat!25344) (reg!16828 (regTwo!33510 r!7292)))) b!6634719))

(assert (= (and b!6633719 ((_ is Star!16499) (reg!16828 (regTwo!33510 r!7292)))) b!6634720))

(assert (= (and b!6633719 ((_ is Union!16499) (reg!16828 (regTwo!33510 r!7292)))) b!6634721))

(declare-fun e!4012745 () Bool)

(assert (=> b!6633664 (= tp!1827284 e!4012745)))

(declare-fun b!6634725 () Bool)

(declare-fun tp!1827540 () Bool)

(declare-fun tp!1827539 () Bool)

(assert (=> b!6634725 (= e!4012745 (and tp!1827540 tp!1827539))))

(declare-fun b!6634722 () Bool)

(assert (=> b!6634722 (= e!4012745 tp_is_empty!42251)))

(declare-fun b!6634723 () Bool)

(declare-fun tp!1827541 () Bool)

(declare-fun tp!1827537 () Bool)

(assert (=> b!6634723 (= e!4012745 (and tp!1827541 tp!1827537))))

(declare-fun b!6634724 () Bool)

(declare-fun tp!1827538 () Bool)

(assert (=> b!6634724 (= e!4012745 tp!1827538)))

(assert (= (and b!6633664 ((_ is ElementMatch!16499) (h!72120 (exprs!6383 (h!72121 zl!343))))) b!6634722))

(assert (= (and b!6633664 ((_ is Concat!25344) (h!72120 (exprs!6383 (h!72121 zl!343))))) b!6634723))

(assert (= (and b!6633664 ((_ is Star!16499) (h!72120 (exprs!6383 (h!72121 zl!343))))) b!6634724))

(assert (= (and b!6633664 ((_ is Union!16499) (h!72120 (exprs!6383 (h!72121 zl!343))))) b!6634725))

(declare-fun b!6634726 () Bool)

(declare-fun e!4012746 () Bool)

(declare-fun tp!1827542 () Bool)

(declare-fun tp!1827543 () Bool)

(assert (=> b!6634726 (= e!4012746 (and tp!1827542 tp!1827543))))

(assert (=> b!6633664 (= tp!1827285 e!4012746)))

(assert (= (and b!6633664 ((_ is Cons!65672) (t!379460 (exprs!6383 (h!72121 zl!343))))) b!6634726))

(declare-fun b_lambda!250789 () Bool)

(assert (= b_lambda!250781 (or b!6632928 b_lambda!250789)))

(assert (=> d!2079743 d!2079463))

(declare-fun b_lambda!250791 () Bool)

(assert (= b_lambda!250771 (or d!2079389 b_lambda!250791)))

(declare-fun bs!1705172 () Bool)

(declare-fun d!2079917 () Bool)

(assert (= bs!1705172 (and d!2079917 d!2079389)))

(assert (=> bs!1705172 (= (dynLambda!26161 lambda!370611 (h!72120 (exprs!6383 (h!72121 zl!343)))) (validRegex!8235 (h!72120 (exprs!6383 (h!72121 zl!343)))))))

(declare-fun m!7402946 () Bool)

(assert (=> bs!1705172 m!7402946))

(assert (=> b!6633831 d!2079917))

(declare-fun b_lambda!250793 () Bool)

(assert (= b_lambda!250769 (or d!2079405 b_lambda!250793)))

(declare-fun bs!1705174 () Bool)

(declare-fun d!2079919 () Bool)

(assert (= bs!1705174 (and d!2079919 d!2079405)))

(assert (=> bs!1705174 (= (dynLambda!26161 lambda!370619 (h!72120 (unfocusZipperList!1920 zl!343))) (validRegex!8235 (h!72120 (unfocusZipperList!1920 zl!343))))))

(declare-fun m!7402948 () Bool)

(assert (=> bs!1705174 m!7402948))

(assert (=> b!6633808 d!2079919))

(declare-fun b_lambda!250795 () Bool)

(assert (= b_lambda!250777 (or d!2079327 b_lambda!250795)))

(declare-fun bs!1705175 () Bool)

(declare-fun d!2079921 () Bool)

(assert (= bs!1705175 (and d!2079921 d!2079327)))

(assert (=> bs!1705175 (= (dynLambda!26161 lambda!370587 (h!72120 (exprs!6383 (h!72121 zl!343)))) (validRegex!8235 (h!72120 (exprs!6383 (h!72121 zl!343)))))))

(assert (=> bs!1705175 m!7402946))

(assert (=> b!6633991 d!2079921))

(declare-fun b_lambda!250797 () Bool)

(assert (= b_lambda!250775 (or d!2079411 b_lambda!250797)))

(declare-fun bs!1705177 () Bool)

(declare-fun d!2079923 () Bool)

(assert (= bs!1705177 (and d!2079923 d!2079411)))

(assert (=> bs!1705177 (= (dynLambda!26161 lambda!370625 (h!72120 lt!2419280)) (validRegex!8235 (h!72120 lt!2419280)))))

(declare-fun m!7402950 () Bool)

(assert (=> bs!1705177 m!7402950))

(assert (=> b!6633923 d!2079923))

(declare-fun b_lambda!250799 () Bool)

(assert (= b_lambda!250773 (or d!2079343 b_lambda!250799)))

(declare-fun bs!1705178 () Bool)

(declare-fun d!2079925 () Bool)

(assert (= bs!1705178 (and d!2079925 d!2079343)))

(assert (=> bs!1705178 (= (dynLambda!26161 lambda!370593 (h!72120 (t!379460 (exprs!6383 (h!72121 zl!343))))) (validRegex!8235 (h!72120 (t!379460 (exprs!6383 (h!72121 zl!343))))))))

(declare-fun m!7402952 () Bool)

(assert (=> bs!1705178 m!7402952))

(assert (=> b!6633897 d!2079925))

(declare-fun b_lambda!250801 () Bool)

(assert (= b_lambda!250779 (or d!2079403 b_lambda!250801)))

(declare-fun bs!1705179 () Bool)

(declare-fun d!2079927 () Bool)

(assert (= bs!1705179 (and d!2079927 d!2079403)))

(assert (=> bs!1705179 (= (dynLambda!26161 lambda!370613 (h!72120 (exprs!6383 setElem!45336))) (validRegex!8235 (h!72120 (exprs!6383 setElem!45336))))))

(declare-fun m!7402954 () Bool)

(assert (=> bs!1705179 m!7402954))

(assert (=> b!6634013 d!2079927))

(declare-fun b_lambda!250803 () Bool)

(assert (= b_lambda!250787 (or b!6632928 b_lambda!250803)))

(assert (=> d!2079915 d!2079465))

(check-sat (not b!6634651) (not d!2079787) (not bm!582333) (not b!6634622) (not d!2079889) (not b!6634657) (not b!6634427) (not b!6634325) (not bm!582303) (not b!6634078) (not d!2079913) (not bm!582302) (not d!2079619) (not b!6634654) (not bm!582426) (not b!6634219) (not d!2079915) (not b!6634591) (not bm!582335) (not b!6634638) (not d!2079621) (not bm!582411) (not b!6634085) (not b_lambda!250793) (not bm!582267) (not d!2079825) (not b!6633835) (not d!2079783) (not b!6634026) (not b!6634476) (not d!2079613) (not d!2079797) (not b!6634004) (not b!6633867) (not bm!582327) (not b!6634176) (not b!6634647) (not b!6634677) (not b!6633871) (not bm!582312) (not b!6634627) (not b!6633886) (not b!6634235) (not b!6634236) (not d!2079617) (not b!6634705) (not bm!582291) (not d!2079557) (not bm!582259) (not b!6634700) (not d!2079641) (not b!6634087) (not b!6634094) (not b!6634693) (not b!6634537) (not bm!582261) (not b!6633888) (not b!6634630) (not b!6634645) (not d!2079601) (not bm!582337) (not bm!582334) (not b!6634095) (not d!2079611) (not bm!582270) (not b!6634683) (not d!2079749) (not d!2079563) (not b!6634256) (not b!6634370) (not b!6633931) (not b_lambda!250799) (not b!6634239) (not b!6633974) (not b!6634703) (not b!6634090) (not b!6634016) (not b!6633885) (not b_lambda!250789) (not b!6634692) (not b!6634531) (not b!6633929) (not b!6634255) (not d!2079775) (not b!6634715) (not b!6633795) (not b!6634390) (not b!6634685) (not d!2079875) (not b!6633918) (not b!6634072) (not b!6633832) (not bm!582272) (not b!6633837) (not b!6634668) (not bm!582318) (not b!6633960) (not bm!582328) (not d!2079615) (not b!6633920) (not b!6634337) (not b!6634707) (not bm!582308) (not bm!582347) (not b!6633868) (not b_lambda!250801) (not bm!582295) (not b!6634173) (not b!6634174) (not b!6634632) (not b!6634258) (not b!6633901) (not b!6634261) (not bm!582379) (not b!6634369) (not b!6633900) (not b!6634069) (not b!6633982) (not b!6634075) (not bm!582397) (not b!6633874) (not b!6634615) (not b!6634586) (not bm!582372) (not bm!582282) (not d!2079785) (not b!6634588) (not b!6633969) (not b!6633809) (not b!6633836) (not b!6634711) (not b!6634086) (not bm!582320) (not b!6634610) (not d!2079879) (not b!6634726) (not b!6634725) (not d!2079571) (not b!6634640) (not d!2079729) (not b!6634213) (not b!6634460) (not b!6634704) (not d!2079491) (not b!6634037) (not d!2079887) (not b!6634612) (not b!6634257) (not b!6634462) (not d!2079853) (not d!2079791) (not b!6633904) (not b!6633917) (not b!6634238) (not d!2079739) (not b!6634068) (not b!6634671) (not b!6634465) (not b!6634648) (not b!6634182) (not d!2079607) (not b!6634188) (not b!6633930) (not b!6633937) (not b!6633919) (not b!6634458) (not b!6634713) (not bm!582274) (not b!6634259) (not bm!582323) (not b!6634639) (not bm!582319) (not b!6634716) (not b_lambda!250761) (not b!6634583) (not b!6634082) (not b!6634091) (not b!6634634) (not b!6634641) (not bm!582294) (not d!2079497) (not d!2079633) (not b!6634699) (not d!2079731) (not bm!582374) (not d!2079561) (not bm!582296) (not b!6633921) (not d!2079505) (not b!6633849) (not d!2079793) (not bm!582268) (not b!6633970) (not b!6634697) (not b!6633855) (not b!6634303) (not d!2079747) (not bm!582304) (not b!6634655) (not b!6634667) (not bm!582306) (not bm!582297) (not d!2079751) tp_is_empty!42251 (not b!6633980) (not d!2079713) (not b!6634377) (not b!6634658) (not b!6634088) (not b!6634662) (not b!6634237) (not b!6634618) (not bm!582275) (not bm!582339) (not b!6634343) (not b!6634695) (not d!2079547) (not b!6634218) (not bm!582377) (not d!2079809) (not b_lambda!250803) (not b!6633924) (not d!2079893) (not b!6634305) (not b_lambda!250759) (not b!6634670) (not b!6634014) (not b!6634301) (not bm!582277) (not b!6634674) (not b!6634708) (not b!6634372) (not b!6633866) (not d!2079535) (not b!6634585) (not b!6634055) (not b!6634300) (not b!6634720) (not b!6634017) (not d!2079553) (not d!2079559) (not b!6634104) (not d!2079573) (not b!6634709) (not b!6634426) (not b!6634470) (not b!6634109) (not b!6634666) (not d!2079897) (not bm!582396) (not bm!582412) (not b!6634308) (not b!6634619) (not bm!582326) (not b_lambda!250791) (not d!2079677) (not bm!582378) (not b!6634719) (not d!2079709) (not b!6634631) (not d!2079813) (not b_lambda!250795) (not bm!582388) (not d!2079683) (not b!6634175) (not b!6634401) (not b!6634620) (not b!6634649) (not bm!582427) (not bm!582278) (not b!6634083) (not b!6634721) (not d!2079583) (not b!6633932) (not b!6634643) (not b!6634687) (not b!6634689) (not bm!582349) (not bm!582273) (not bm!582322) (not b!6634614) (not b!6634635) (not bm!582413) (not b!6634672) (not bs!1705178) (not bs!1705177) (not b!6634688) (not b!6633934) (not d!2079509) (not b!6634653) (not setNonEmpty!45346) (not b!6634624) (not bs!1705174) (not b!6633992) (not d!2079671) (not bm!582399) (not b!6634628) (not b!6634679) (not b!6634680) (not b!6634626) (not bm!582393) (not b!6634374) (not b!6634712) (not b_lambda!250797) (not b!6634302) (not bm!582281) (not b!6634212) (not b!6634681) (not b!6634691) (not b!6634584) (not bm!582447) (not bs!1705172) (not d!2079531) (not d!2079823) (not b!6634636) (not b!6634070) (not b!6633858) (not b!6634675) (not b!6634644) (not setNonEmpty!45350) (not b!6634457) (not d!2079821) (not d!2079655) (not b!6634062) (not bm!582309) (not b!6634676) (not b!6634598) (not d!2079745) (not b!6634079) (not b!6633898) (not d!2079725) (not b!6634459) (not b!6634650) (not bm!582266) (not d!2079669) (not b!6634701) (not b!6634067) (not bm!582279) (not bm!582351) (not b!6634724) (not b!6633914) (not d!2079527) (not bm!582443) (not d!2079781) (not d!2079771) (not b!6634684) (not bm!582271) (not b!6634616) (not b!6633915) (not b!6634611) (not b!6634659) (not b!6634717) (not b!6633869) (not bm!582313) (not bm!582299) (not b!6634696) (not b!6633999) (not bm!582314) (not b!6634371) (not bm!582330) (not d!2079743) (not bs!1705175) (not bm!582444) (not bm!582350) (not b!6634608) (not d!2079675) (not b!6634723) (not b!6634607) (not d!2079609) (not bs!1705179) (not b!6634164) (not b!6634623) (not setNonEmpty!45345) (not b!6633859) (not b!6634260))
(check-sat)
