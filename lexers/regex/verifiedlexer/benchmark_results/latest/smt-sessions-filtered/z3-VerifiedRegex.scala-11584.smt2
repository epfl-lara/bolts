; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!641270 () Bool)

(assert start!641270)

(declare-fun b!6544609 () Bool)

(assert (=> b!6544609 true))

(assert (=> b!6544609 true))

(declare-fun lambda!363218 () Int)

(declare-fun lambda!363217 () Int)

(assert (=> b!6544609 (not (= lambda!363218 lambda!363217))))

(assert (=> b!6544609 true))

(assert (=> b!6544609 true))

(declare-fun b!6544642 () Bool)

(assert (=> b!6544642 true))

(declare-fun b!6544625 () Bool)

(assert (=> b!6544625 true))

(declare-fun b!6544603 () Bool)

(declare-fun res!2684607 () Bool)

(declare-fun e!3962713 () Bool)

(assert (=> b!6544603 (=> (not res!2684607) (not e!3962713))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!33100 0))(
  ( (C!33101 (val!26252 Int)) )
))
(declare-datatypes ((Regex!16415 0))(
  ( (ElementMatch!16415 (c!1201896 C!33100)) (Concat!25260 (regOne!33342 Regex!16415) (regTwo!33342 Regex!16415)) (EmptyExpr!16415) (Star!16415 (reg!16744 Regex!16415)) (EmptyLang!16415) (Union!16415 (regOne!33343 Regex!16415) (regTwo!33343 Regex!16415)) )
))
(declare-datatypes ((List!65544 0))(
  ( (Nil!65420) (Cons!65420 (h!71868 Regex!16415) (t!379186 List!65544)) )
))
(declare-datatypes ((Context!11598 0))(
  ( (Context!11599 (exprs!6299 List!65544)) )
))
(declare-fun z!1189 () (InoxSet Context!11598))

(declare-datatypes ((List!65545 0))(
  ( (Nil!65421) (Cons!65421 (h!71869 Context!11598) (t!379187 List!65545)) )
))
(declare-fun zl!343 () List!65545)

(declare-fun toList!10199 ((InoxSet Context!11598)) List!65545)

(assert (=> b!6544603 (= res!2684607 (= (toList!10199 z!1189) zl!343))))

(declare-fun b!6544604 () Bool)

(declare-fun e!3962711 () Bool)

(declare-fun e!3962728 () Bool)

(assert (=> b!6544604 (= e!3962711 e!3962728)))

(declare-fun res!2684620 () Bool)

(assert (=> b!6544604 (=> res!2684620 e!3962728)))

(declare-datatypes ((List!65546 0))(
  ( (Nil!65422) (Cons!65422 (h!71870 C!33100) (t!379188 List!65546)) )
))
(declare-fun s!2326 () List!65546)

(declare-fun lt!2399967 () (InoxSet Context!11598))

(declare-fun lt!2399939 () Bool)

(declare-fun matchZipper!2427 ((InoxSet Context!11598) List!65546) Bool)

(assert (=> b!6544604 (= res!2684620 (not (= lt!2399939 (matchZipper!2427 lt!2399967 (t!379188 s!2326)))))))

(declare-fun lt!2399950 () (InoxSet Context!11598))

(assert (=> b!6544604 (= lt!2399939 (matchZipper!2427 lt!2399950 s!2326))))

(declare-fun b!6544605 () Bool)

(declare-datatypes ((Unit!158995 0))(
  ( (Unit!158996) )
))
(declare-fun e!3962714 () Unit!158995)

(declare-fun Unit!158997 () Unit!158995)

(assert (=> b!6544605 (= e!3962714 Unit!158997)))

(declare-fun b!6544606 () Bool)

(declare-fun res!2684616 () Bool)

(assert (=> b!6544606 (=> res!2684616 e!3962728)))

(declare-fun lt!2399970 () Regex!16415)

(declare-fun r!7292 () Regex!16415)

(assert (=> b!6544606 (= res!2684616 (not (= lt!2399970 r!7292)))))

(declare-fun b!6544608 () Bool)

(declare-fun e!3962725 () Bool)

(declare-fun e!3962717 () Bool)

(assert (=> b!6544608 (= e!3962725 (not e!3962717))))

(declare-fun res!2684621 () Bool)

(assert (=> b!6544608 (=> res!2684621 e!3962717)))

(get-info :version)

(assert (=> b!6544608 (= res!2684621 (not ((_ is Cons!65421) zl!343)))))

(declare-fun lt!2399962 () Bool)

(declare-fun matchRSpec!3516 (Regex!16415 List!65546) Bool)

(assert (=> b!6544608 (= lt!2399962 (matchRSpec!3516 r!7292 s!2326))))

(declare-fun matchR!8598 (Regex!16415 List!65546) Bool)

(assert (=> b!6544608 (= lt!2399962 (matchR!8598 r!7292 s!2326))))

(declare-fun lt!2399941 () Unit!158995)

(declare-fun mainMatchTheorem!3516 (Regex!16415 List!65546) Unit!158995)

(assert (=> b!6544608 (= lt!2399941 (mainMatchTheorem!3516 r!7292 s!2326))))

(declare-fun e!3962716 () Bool)

(assert (=> b!6544609 (= e!3962717 e!3962716)))

(declare-fun res!2684627 () Bool)

(assert (=> b!6544609 (=> res!2684627 e!3962716)))

(declare-fun lt!2399959 () Bool)

(assert (=> b!6544609 (= res!2684627 (or (not (= lt!2399962 lt!2399959)) ((_ is Nil!65422) s!2326)))))

(declare-fun Exists!3485 (Int) Bool)

(assert (=> b!6544609 (= (Exists!3485 lambda!363217) (Exists!3485 lambda!363218))))

(declare-fun lt!2399956 () Unit!158995)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2022 (Regex!16415 Regex!16415 List!65546) Unit!158995)

(assert (=> b!6544609 (= lt!2399956 (lemmaExistCutMatchRandMatchRSpecEquivalent!2022 (regOne!33342 r!7292) (regTwo!33342 r!7292) s!2326))))

(assert (=> b!6544609 (= lt!2399959 (Exists!3485 lambda!363217))))

(declare-datatypes ((tuple2!66788 0))(
  ( (tuple2!66789 (_1!36697 List!65546) (_2!36697 List!65546)) )
))
(declare-datatypes ((Option!16306 0))(
  ( (None!16305) (Some!16305 (v!52490 tuple2!66788)) )
))
(declare-fun isDefined!13009 (Option!16306) Bool)

(declare-fun findConcatSeparation!2720 (Regex!16415 Regex!16415 List!65546 List!65546 List!65546) Option!16306)

(assert (=> b!6544609 (= lt!2399959 (isDefined!13009 (findConcatSeparation!2720 (regOne!33342 r!7292) (regTwo!33342 r!7292) Nil!65422 s!2326 s!2326)))))

(declare-fun lt!2399947 () Unit!158995)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2484 (Regex!16415 Regex!16415 List!65546) Unit!158995)

(assert (=> b!6544609 (= lt!2399947 (lemmaFindConcatSeparationEquivalentToExists!2484 (regOne!33342 r!7292) (regTwo!33342 r!7292) s!2326))))

(declare-fun b!6544610 () Bool)

(declare-fun e!3962718 () Bool)

(declare-fun tp!1810650 () Bool)

(assert (=> b!6544610 (= e!3962718 tp!1810650)))

(declare-fun b!6544611 () Bool)

(declare-fun e!3962708 () Bool)

(declare-fun tp!1810646 () Bool)

(assert (=> b!6544611 (= e!3962708 tp!1810646)))

(declare-fun b!6544612 () Bool)

(declare-fun e!3962706 () Bool)

(declare-fun e!3962720 () Bool)

(assert (=> b!6544612 (= e!3962706 e!3962720)))

(declare-fun res!2684622 () Bool)

(assert (=> b!6544612 (=> res!2684622 e!3962720)))

(declare-fun lt!2399945 () List!65545)

(declare-fun lt!2399926 () Regex!16415)

(declare-fun unfocusZipper!2157 (List!65545) Regex!16415)

(assert (=> b!6544612 (= res!2684622 (not (= (unfocusZipper!2157 lt!2399945) lt!2399926)))))

(declare-fun lt!2399927 () Context!11598)

(assert (=> b!6544612 (= lt!2399945 (Cons!65421 lt!2399927 Nil!65421))))

(declare-fun b!6544613 () Bool)

(declare-fun e!3962729 () Bool)

(declare-fun e!3962727 () Bool)

(assert (=> b!6544613 (= e!3962729 e!3962727)))

(declare-fun res!2684608 () Bool)

(assert (=> b!6544613 (=> res!2684608 e!3962727)))

(declare-fun lt!2399964 () List!65546)

(assert (=> b!6544613 (= res!2684608 (not (= s!2326 lt!2399964)))))

(declare-fun lt!2399961 () tuple2!66788)

(declare-fun ++!14532 (List!65546 List!65546) List!65546)

(assert (=> b!6544613 (= lt!2399964 (++!14532 (_1!36697 lt!2399961) (_2!36697 lt!2399961)))))

(declare-fun lt!2399925 () Option!16306)

(declare-fun get!22704 (Option!16306) tuple2!66788)

(assert (=> b!6544613 (= lt!2399961 (get!22704 lt!2399925))))

(assert (=> b!6544613 (isDefined!13009 lt!2399925)))

(declare-fun lt!2399955 () (InoxSet Context!11598))

(declare-fun lt!2399944 () (InoxSet Context!11598))

(declare-fun findConcatSeparationZippers!180 ((InoxSet Context!11598) (InoxSet Context!11598) List!65546 List!65546 List!65546) Option!16306)

(assert (=> b!6544613 (= lt!2399925 (findConcatSeparationZippers!180 lt!2399944 lt!2399955 Nil!65422 s!2326 s!2326))))

(declare-fun lt!2399934 () Unit!158995)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!180 ((InoxSet Context!11598) Context!11598 List!65546) Unit!158995)

(assert (=> b!6544613 (= lt!2399934 (lemmaConcatZipperMatchesStringThenFindConcatDefined!180 lt!2399944 lt!2399927 s!2326))))

(declare-fun b!6544614 () Bool)

(declare-fun res!2684600 () Bool)

(assert (=> b!6544614 (=> res!2684600 e!3962717)))

(assert (=> b!6544614 (= res!2684600 (not ((_ is Cons!65420) (exprs!6299 (h!71869 zl!343)))))))

(declare-fun b!6544615 () Bool)

(declare-fun res!2684619 () Bool)

(declare-fun e!3962715 () Bool)

(assert (=> b!6544615 (=> res!2684619 e!3962715)))

(assert (=> b!6544615 (= res!2684619 (not (matchZipper!2427 z!1189 s!2326)))))

(declare-fun b!6544616 () Bool)

(declare-fun e!3962707 () Bool)

(declare-fun e!3962724 () Bool)

(assert (=> b!6544616 (= e!3962707 e!3962724)))

(declare-fun res!2684610 () Bool)

(assert (=> b!6544616 (=> res!2684610 e!3962724)))

(declare-fun lt!2399942 () (InoxSet Context!11598))

(declare-fun lt!2399953 () (InoxSet Context!11598))

(assert (=> b!6544616 (= res!2684610 (not (= lt!2399942 lt!2399953)))))

(declare-fun derivationStepZipperDown!1663 (Regex!16415 Context!11598 C!33100) (InoxSet Context!11598))

(assert (=> b!6544616 (= lt!2399953 (derivationStepZipperDown!1663 (reg!16744 (regOne!33342 r!7292)) lt!2399927 (h!71870 s!2326)))))

(declare-fun lt!2399936 () List!65544)

(assert (=> b!6544616 (= lt!2399927 (Context!11599 lt!2399936))))

(declare-fun lt!2399969 () Regex!16415)

(assert (=> b!6544616 (= lt!2399936 (Cons!65420 lt!2399969 (t!379186 (exprs!6299 (h!71869 zl!343)))))))

(assert (=> b!6544616 (= lt!2399969 (Star!16415 (reg!16744 (regOne!33342 r!7292))))))

(declare-fun b!6544617 () Bool)

(declare-fun e!3962719 () Bool)

(assert (=> b!6544617 (= e!3962728 e!3962719)))

(declare-fun res!2684615 () Bool)

(assert (=> b!6544617 (=> res!2684615 e!3962719)))

(assert (=> b!6544617 (= res!2684615 (not (= r!7292 lt!2399926)))))

(assert (=> b!6544617 (= lt!2399926 (Concat!25260 lt!2399969 (regTwo!33342 r!7292)))))

(declare-fun b!6544618 () Bool)

(declare-fun res!2684606 () Bool)

(assert (=> b!6544618 (=> res!2684606 e!3962727)))

(assert (=> b!6544618 (= res!2684606 (not (matchZipper!2427 lt!2399955 (_2!36697 lt!2399961))))))

(declare-fun b!6544619 () Bool)

(assert (=> b!6544619 (= e!3962713 e!3962725)))

(declare-fun res!2684601 () Bool)

(assert (=> b!6544619 (=> (not res!2684601) (not e!3962725))))

(assert (=> b!6544619 (= res!2684601 (= r!7292 lt!2399970))))

(assert (=> b!6544619 (= lt!2399970 (unfocusZipper!2157 zl!343))))

(declare-fun b!6544620 () Bool)

(declare-fun res!2684611 () Bool)

(assert (=> b!6544620 (=> res!2684611 e!3962707)))

(assert (=> b!6544620 (= res!2684611 (or ((_ is Concat!25260) (regOne!33342 r!7292)) (not ((_ is Star!16415) (regOne!33342 r!7292)))))))

(declare-fun b!6544621 () Bool)

(declare-fun e!3962712 () Bool)

(declare-fun tp!1810648 () Bool)

(declare-fun tp!1810649 () Bool)

(assert (=> b!6544621 (= e!3962712 (and tp!1810648 tp!1810649))))

(declare-fun b!6544622 () Bool)

(declare-fun res!2684603 () Bool)

(declare-fun e!3962723 () Bool)

(assert (=> b!6544622 (=> res!2684603 e!3962723)))

(declare-fun lt!2399921 () Bool)

(assert (=> b!6544622 (= res!2684603 (or (not lt!2399921) (not lt!2399939)))))

(declare-fun b!6544623 () Bool)

(assert (=> b!6544623 (= e!3962715 e!3962723)))

(declare-fun res!2684629 () Bool)

(assert (=> b!6544623 (=> res!2684629 e!3962723)))

(declare-fun e!3962710 () Bool)

(assert (=> b!6544623 (= res!2684629 e!3962710)))

(declare-fun res!2684605 () Bool)

(assert (=> b!6544623 (=> (not res!2684605) (not e!3962710))))

(assert (=> b!6544623 (= res!2684605 (not lt!2399921))))

(assert (=> b!6544623 (= lt!2399921 (matchZipper!2427 lt!2399942 (t!379188 s!2326)))))

(declare-fun b!6544624 () Bool)

(declare-fun e!3962722 () Bool)

(assert (=> b!6544624 (= e!3962722 e!3962706)))

(declare-fun res!2684624 () Bool)

(assert (=> b!6544624 (=> res!2684624 e!3962706)))

(declare-fun lt!2399968 () List!65545)

(assert (=> b!6544624 (= res!2684624 (not (= (unfocusZipper!2157 lt!2399968) (reg!16744 (regOne!33342 r!7292)))))))

(declare-fun lt!2399948 () Context!11598)

(assert (=> b!6544624 (= lt!2399968 (Cons!65421 lt!2399948 Nil!65421))))

(declare-fun lambda!363219 () Int)

(declare-fun flatMap!1920 ((InoxSet Context!11598) Int) (InoxSet Context!11598))

(declare-fun derivationStepZipperUp!1589 (Context!11598 C!33100) (InoxSet Context!11598))

(assert (=> b!6544624 (= (flatMap!1920 lt!2399955 lambda!363219) (derivationStepZipperUp!1589 lt!2399927 (h!71870 s!2326)))))

(declare-fun lt!2399963 () Unit!158995)

(declare-fun lemmaFlatMapOnSingletonSet!1446 ((InoxSet Context!11598) Context!11598 Int) Unit!158995)

(assert (=> b!6544624 (= lt!2399963 (lemmaFlatMapOnSingletonSet!1446 lt!2399955 lt!2399927 lambda!363219))))

(assert (=> b!6544624 (= (flatMap!1920 lt!2399944 lambda!363219) (derivationStepZipperUp!1589 lt!2399948 (h!71870 s!2326)))))

(declare-fun lt!2399924 () Unit!158995)

(assert (=> b!6544624 (= lt!2399924 (lemmaFlatMapOnSingletonSet!1446 lt!2399944 lt!2399948 lambda!363219))))

(declare-fun lt!2399958 () (InoxSet Context!11598))

(assert (=> b!6544624 (= lt!2399958 (derivationStepZipperUp!1589 lt!2399927 (h!71870 s!2326)))))

(declare-fun lt!2399932 () (InoxSet Context!11598))

(assert (=> b!6544624 (= lt!2399932 (derivationStepZipperUp!1589 lt!2399948 (h!71870 s!2326)))))

(assert (=> b!6544624 (= lt!2399955 (store ((as const (Array Context!11598 Bool)) false) lt!2399927 true))))

(assert (=> b!6544624 (= lt!2399944 (store ((as const (Array Context!11598 Bool)) false) lt!2399948 true))))

(declare-fun lt!2399960 () List!65544)

(assert (=> b!6544624 (= lt!2399948 (Context!11599 lt!2399960))))

(assert (=> b!6544624 (= lt!2399960 (Cons!65420 (reg!16744 (regOne!33342 r!7292)) Nil!65420))))

(declare-fun b!6544607 () Bool)

(declare-fun e!3962730 () Bool)

(declare-fun lt!2399940 () (InoxSet Context!11598))

(assert (=> b!6544607 (= e!3962730 (matchZipper!2427 lt!2399940 (t!379188 s!2326)))))

(declare-fun res!2684597 () Bool)

(assert (=> start!641270 (=> (not res!2684597) (not e!3962713))))

(declare-fun validRegex!8151 (Regex!16415) Bool)

(assert (=> start!641270 (= res!2684597 (validRegex!8151 r!7292))))

(assert (=> start!641270 e!3962713))

(assert (=> start!641270 e!3962712))

(declare-fun condSetEmpty!44652 () Bool)

(assert (=> start!641270 (= condSetEmpty!44652 (= z!1189 ((as const (Array Context!11598 Bool)) false)))))

(declare-fun setRes!44652 () Bool)

(assert (=> start!641270 setRes!44652))

(declare-fun e!3962709 () Bool)

(assert (=> start!641270 e!3962709))

(declare-fun e!3962721 () Bool)

(assert (=> start!641270 e!3962721))

(assert (=> b!6544625 (= e!3962723 e!3962729)))

(declare-fun res!2684604 () Bool)

(assert (=> b!6544625 (=> res!2684604 e!3962729)))

(declare-fun appendTo!176 ((InoxSet Context!11598) Context!11598) (InoxSet Context!11598))

(assert (=> b!6544625 (= res!2684604 (not (= (appendTo!176 lt!2399944 lt!2399927) lt!2399950)))))

(declare-fun lambda!363220 () Int)

(declare-fun map!14931 ((InoxSet Context!11598) Int) (InoxSet Context!11598))

(declare-fun ++!14533 (List!65544 List!65544) List!65544)

(assert (=> b!6544625 (= (map!14931 lt!2399944 lambda!363220) (store ((as const (Array Context!11598 Bool)) false) (Context!11599 (++!14533 lt!2399960 lt!2399936)) true))))

(declare-fun lt!2399933 () Unit!158995)

(declare-fun lambda!363221 () Int)

(declare-fun lemmaConcatPreservesForall!388 (List!65544 List!65544 Int) Unit!158995)

(assert (=> b!6544625 (= lt!2399933 (lemmaConcatPreservesForall!388 lt!2399960 lt!2399936 lambda!363221))))

(declare-fun lt!2399949 () Unit!158995)

(declare-fun lemmaMapOnSingletonSet!198 ((InoxSet Context!11598) Context!11598 Int) Unit!158995)

(assert (=> b!6544625 (= lt!2399949 (lemmaMapOnSingletonSet!198 lt!2399944 lt!2399948 lambda!363220))))

(declare-fun b!6544626 () Bool)

(declare-fun tp_is_empty!42083 () Bool)

(assert (=> b!6544626 (= e!3962712 tp_is_empty!42083)))

(declare-fun b!6544627 () Bool)

(declare-fun res!2684598 () Bool)

(assert (=> b!6544627 (=> res!2684598 e!3962717)))

(declare-fun generalisedConcat!2012 (List!65544) Regex!16415)

(assert (=> b!6544627 (= res!2684598 (not (= r!7292 (generalisedConcat!2012 (exprs!6299 (h!71869 zl!343))))))))

(declare-fun b!6544628 () Bool)

(declare-fun res!2684623 () Bool)

(assert (=> b!6544628 (=> res!2684623 e!3962717)))

(assert (=> b!6544628 (= res!2684623 (or ((_ is EmptyExpr!16415) r!7292) ((_ is EmptyLang!16415) r!7292) ((_ is ElementMatch!16415) r!7292) ((_ is Union!16415) r!7292) (not ((_ is Concat!25260) r!7292))))))

(declare-fun b!6544629 () Bool)

(declare-fun tp!1810642 () Bool)

(declare-fun inv!84284 (Context!11598) Bool)

(assert (=> b!6544629 (= e!3962709 (and (inv!84284 (h!71869 zl!343)) e!3962708 tp!1810642))))

(declare-fun b!6544630 () Bool)

(declare-fun Unit!158998 () Unit!158995)

(assert (=> b!6544630 (= e!3962714 Unit!158998)))

(declare-fun lt!2399966 () Unit!158995)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1246 ((InoxSet Context!11598) (InoxSet Context!11598) List!65546) Unit!158995)

(assert (=> b!6544630 (= lt!2399966 (lemmaZipperConcatMatchesSameAsBothZippers!1246 lt!2399942 lt!2399940 (t!379188 s!2326)))))

(declare-fun res!2684628 () Bool)

(assert (=> b!6544630 (= res!2684628 (matchZipper!2427 lt!2399942 (t!379188 s!2326)))))

(assert (=> b!6544630 (=> res!2684628 e!3962730)))

(assert (=> b!6544630 (= (matchZipper!2427 ((_ map or) lt!2399942 lt!2399940) (t!379188 s!2326)) e!3962730)))

(declare-fun b!6544631 () Bool)

(declare-fun res!2684602 () Bool)

(assert (=> b!6544631 (=> res!2684602 e!3962717)))

(declare-fun generalisedUnion!2259 (List!65544) Regex!16415)

(declare-fun unfocusZipperList!1836 (List!65545) List!65544)

(assert (=> b!6544631 (= res!2684602 (not (= r!7292 (generalisedUnion!2259 (unfocusZipperList!1836 zl!343)))))))

(declare-fun b!6544632 () Bool)

(assert (=> b!6544632 (= e!3962720 e!3962715)))

(declare-fun res!2684599 () Bool)

(assert (=> b!6544632 (=> res!2684599 e!3962715)))

(assert (=> b!6544632 (= res!2684599 lt!2399962)))

(declare-fun lt!2399935 () Bool)

(declare-fun lt!2399929 () Regex!16415)

(assert (=> b!6544632 (= lt!2399935 (matchRSpec!3516 lt!2399929 s!2326))))

(assert (=> b!6544632 (= lt!2399935 (matchR!8598 lt!2399929 s!2326))))

(declare-fun lt!2399922 () Unit!158995)

(assert (=> b!6544632 (= lt!2399922 (mainMatchTheorem!3516 lt!2399929 s!2326))))

(declare-fun b!6544633 () Bool)

(declare-fun tp!1810647 () Bool)

(declare-fun tp!1810644 () Bool)

(assert (=> b!6544633 (= e!3962712 (and tp!1810647 tp!1810644))))

(declare-fun b!6544634 () Bool)

(declare-fun e!3962726 () Bool)

(declare-fun nullable!6408 (Regex!16415) Bool)

(assert (=> b!6544634 (= e!3962726 (nullable!6408 (regOne!33342 (regOne!33342 r!7292))))))

(declare-fun b!6544635 () Bool)

(declare-fun tp!1810643 () Bool)

(assert (=> b!6544635 (= e!3962712 tp!1810643)))

(declare-fun b!6544636 () Bool)

(declare-fun res!2684617 () Bool)

(assert (=> b!6544636 (=> res!2684617 e!3962717)))

(declare-fun isEmpty!37641 (List!65545) Bool)

(assert (=> b!6544636 (= res!2684617 (not (isEmpty!37641 (t!379187 zl!343))))))

(declare-fun setIsEmpty!44652 () Bool)

(assert (=> setIsEmpty!44652 setRes!44652))

(declare-fun b!6544637 () Bool)

(assert (=> b!6544637 (= e!3962719 e!3962722)))

(declare-fun res!2684625 () Bool)

(assert (=> b!6544637 (=> res!2684625 e!3962722)))

(declare-fun lt!2399938 () Context!11598)

(assert (=> b!6544637 (= res!2684625 (not (= (unfocusZipper!2157 (Cons!65421 lt!2399938 Nil!65421)) lt!2399929)))))

(assert (=> b!6544637 (= lt!2399929 (Concat!25260 (reg!16744 (regOne!33342 r!7292)) lt!2399926))))

(declare-fun b!6544638 () Bool)

(assert (=> b!6544638 (= e!3962710 (not (matchZipper!2427 lt!2399940 (t!379188 s!2326))))))

(declare-fun b!6544639 () Bool)

(declare-fun tp!1810651 () Bool)

(assert (=> b!6544639 (= e!3962721 (and tp_is_empty!42083 tp!1810651))))

(declare-fun b!6544640 () Bool)

(assert (=> b!6544640 (= e!3962727 lt!2399935)))

(assert (=> b!6544640 (matchR!8598 lt!2399929 lt!2399964)))

(declare-fun lt!2399930 () Unit!158995)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!336 (Regex!16415 Regex!16415 List!65546 List!65546) Unit!158995)

(assert (=> b!6544640 (= lt!2399930 (lemmaTwoRegexMatchThenConcatMatchesConcatString!336 (reg!16744 (regOne!33342 r!7292)) lt!2399926 (_1!36697 lt!2399961) (_2!36697 lt!2399961)))))

(assert (=> b!6544640 (matchR!8598 lt!2399926 (_2!36697 lt!2399961))))

(declare-fun lt!2399931 () Unit!158995)

(declare-fun theoremZipperRegexEquiv!851 ((InoxSet Context!11598) List!65545 Regex!16415 List!65546) Unit!158995)

(assert (=> b!6544640 (= lt!2399931 (theoremZipperRegexEquiv!851 lt!2399955 lt!2399945 lt!2399926 (_2!36697 lt!2399961)))))

(assert (=> b!6544640 (matchR!8598 (reg!16744 (regOne!33342 r!7292)) (_1!36697 lt!2399961))))

(declare-fun lt!2399923 () Unit!158995)

(assert (=> b!6544640 (= lt!2399923 (theoremZipperRegexEquiv!851 lt!2399944 lt!2399968 (reg!16744 (regOne!33342 r!7292)) (_1!36697 lt!2399961)))))

(assert (=> b!6544640 (matchZipper!2427 (store ((as const (Array Context!11598 Bool)) false) (Context!11599 (++!14533 lt!2399960 lt!2399936)) true) lt!2399964)))

(declare-fun lt!2399946 () Unit!158995)

(assert (=> b!6544640 (= lt!2399946 (lemmaConcatPreservesForall!388 lt!2399960 lt!2399936 lambda!363221))))

(declare-fun lt!2399965 () Unit!158995)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!196 (Context!11598 Context!11598 List!65546 List!65546) Unit!158995)

(assert (=> b!6544640 (= lt!2399965 (lemmaConcatenateContextMatchesConcatOfStrings!196 lt!2399948 lt!2399927 (_1!36697 lt!2399961) (_2!36697 lt!2399961)))))

(declare-fun b!6544641 () Bool)

(declare-fun res!2684614 () Bool)

(assert (=> b!6544641 (=> res!2684614 e!3962715)))

(declare-fun lt!2399954 () Bool)

(assert (=> b!6544641 (= res!2684614 (not lt!2399954))))

(assert (=> b!6544642 (= e!3962716 e!3962707)))

(declare-fun res!2684609 () Bool)

(assert (=> b!6544642 (=> res!2684609 e!3962707)))

(assert (=> b!6544642 (= res!2684609 (or (and ((_ is ElementMatch!16415) (regOne!33342 r!7292)) (= (c!1201896 (regOne!33342 r!7292)) (h!71870 s!2326))) ((_ is Union!16415) (regOne!33342 r!7292))))))

(declare-fun lt!2399951 () Unit!158995)

(assert (=> b!6544642 (= lt!2399951 e!3962714)))

(declare-fun c!1201895 () Bool)

(assert (=> b!6544642 (= c!1201895 lt!2399954)))

(assert (=> b!6544642 (= lt!2399954 (nullable!6408 (h!71868 (exprs!6299 (h!71869 zl!343)))))))

(assert (=> b!6544642 (= (flatMap!1920 z!1189 lambda!363219) (derivationStepZipperUp!1589 (h!71869 zl!343) (h!71870 s!2326)))))

(declare-fun lt!2399928 () Unit!158995)

(assert (=> b!6544642 (= lt!2399928 (lemmaFlatMapOnSingletonSet!1446 z!1189 (h!71869 zl!343) lambda!363219))))

(declare-fun lt!2399937 () Context!11598)

(assert (=> b!6544642 (= lt!2399940 (derivationStepZipperUp!1589 lt!2399937 (h!71870 s!2326)))))

(assert (=> b!6544642 (= lt!2399942 (derivationStepZipperDown!1663 (h!71868 (exprs!6299 (h!71869 zl!343))) lt!2399937 (h!71870 s!2326)))))

(assert (=> b!6544642 (= lt!2399937 (Context!11599 (t!379186 (exprs!6299 (h!71869 zl!343)))))))

(declare-fun lt!2399943 () (InoxSet Context!11598))

(assert (=> b!6544642 (= lt!2399943 (derivationStepZipperUp!1589 (Context!11599 (Cons!65420 (h!71868 (exprs!6299 (h!71869 zl!343))) (t!379186 (exprs!6299 (h!71869 zl!343))))) (h!71870 s!2326)))))

(declare-fun b!6544643 () Bool)

(declare-fun res!2684613 () Bool)

(assert (=> b!6544643 (=> res!2684613 e!3962727)))

(assert (=> b!6544643 (= res!2684613 (not (matchZipper!2427 lt!2399944 (_1!36697 lt!2399961))))))

(declare-fun b!6544644 () Bool)

(declare-fun res!2684626 () Bool)

(assert (=> b!6544644 (=> res!2684626 e!3962716)))

(declare-fun isEmpty!37642 (List!65544) Bool)

(assert (=> b!6544644 (= res!2684626 (isEmpty!37642 (t!379186 (exprs!6299 (h!71869 zl!343)))))))

(declare-fun tp!1810645 () Bool)

(declare-fun setElem!44652 () Context!11598)

(declare-fun setNonEmpty!44652 () Bool)

(assert (=> setNonEmpty!44652 (= setRes!44652 (and tp!1810645 (inv!84284 setElem!44652) e!3962718))))

(declare-fun setRest!44652 () (InoxSet Context!11598))

(assert (=> setNonEmpty!44652 (= z!1189 ((_ map or) (store ((as const (Array Context!11598 Bool)) false) setElem!44652 true) setRest!44652))))

(declare-fun b!6544645 () Bool)

(assert (=> b!6544645 (= e!3962724 e!3962711)))

(declare-fun res!2684630 () Bool)

(assert (=> b!6544645 (=> res!2684630 e!3962711)))

(assert (=> b!6544645 (= res!2684630 (not (= lt!2399967 lt!2399953)))))

(assert (=> b!6544645 (= (flatMap!1920 lt!2399950 lambda!363219) (derivationStepZipperUp!1589 lt!2399938 (h!71870 s!2326)))))

(declare-fun lt!2399957 () Unit!158995)

(assert (=> b!6544645 (= lt!2399957 (lemmaFlatMapOnSingletonSet!1446 lt!2399950 lt!2399938 lambda!363219))))

(declare-fun lt!2399952 () (InoxSet Context!11598))

(assert (=> b!6544645 (= lt!2399952 (derivationStepZipperUp!1589 lt!2399938 (h!71870 s!2326)))))

(declare-fun derivationStepZipper!2381 ((InoxSet Context!11598) C!33100) (InoxSet Context!11598))

(assert (=> b!6544645 (= lt!2399967 (derivationStepZipper!2381 lt!2399950 (h!71870 s!2326)))))

(assert (=> b!6544645 (= lt!2399950 (store ((as const (Array Context!11598 Bool)) false) lt!2399938 true))))

(assert (=> b!6544645 (= lt!2399938 (Context!11599 (Cons!65420 (reg!16744 (regOne!33342 r!7292)) lt!2399936)))))

(declare-fun b!6544646 () Bool)

(declare-fun res!2684612 () Bool)

(assert (=> b!6544646 (=> res!2684612 e!3962707)))

(assert (=> b!6544646 (= res!2684612 e!3962726)))

(declare-fun res!2684618 () Bool)

(assert (=> b!6544646 (=> (not res!2684618) (not e!3962726))))

(assert (=> b!6544646 (= res!2684618 ((_ is Concat!25260) (regOne!33342 r!7292)))))

(assert (= (and start!641270 res!2684597) b!6544603))

(assert (= (and b!6544603 res!2684607) b!6544619))

(assert (= (and b!6544619 res!2684601) b!6544608))

(assert (= (and b!6544608 (not res!2684621)) b!6544636))

(assert (= (and b!6544636 (not res!2684617)) b!6544627))

(assert (= (and b!6544627 (not res!2684598)) b!6544614))

(assert (= (and b!6544614 (not res!2684600)) b!6544631))

(assert (= (and b!6544631 (not res!2684602)) b!6544628))

(assert (= (and b!6544628 (not res!2684623)) b!6544609))

(assert (= (and b!6544609 (not res!2684627)) b!6544644))

(assert (= (and b!6544644 (not res!2684626)) b!6544642))

(assert (= (and b!6544642 c!1201895) b!6544630))

(assert (= (and b!6544642 (not c!1201895)) b!6544605))

(assert (= (and b!6544630 (not res!2684628)) b!6544607))

(assert (= (and b!6544642 (not res!2684609)) b!6544646))

(assert (= (and b!6544646 res!2684618) b!6544634))

(assert (= (and b!6544646 (not res!2684612)) b!6544620))

(assert (= (and b!6544620 (not res!2684611)) b!6544616))

(assert (= (and b!6544616 (not res!2684610)) b!6544645))

(assert (= (and b!6544645 (not res!2684630)) b!6544604))

(assert (= (and b!6544604 (not res!2684620)) b!6544606))

(assert (= (and b!6544606 (not res!2684616)) b!6544617))

(assert (= (and b!6544617 (not res!2684615)) b!6544637))

(assert (= (and b!6544637 (not res!2684625)) b!6544624))

(assert (= (and b!6544624 (not res!2684624)) b!6544612))

(assert (= (and b!6544612 (not res!2684622)) b!6544632))

(assert (= (and b!6544632 (not res!2684599)) b!6544615))

(assert (= (and b!6544615 (not res!2684619)) b!6544641))

(assert (= (and b!6544641 (not res!2684614)) b!6544623))

(assert (= (and b!6544623 res!2684605) b!6544638))

(assert (= (and b!6544623 (not res!2684629)) b!6544622))

(assert (= (and b!6544622 (not res!2684603)) b!6544625))

(assert (= (and b!6544625 (not res!2684604)) b!6544613))

(assert (= (and b!6544613 (not res!2684608)) b!6544643))

(assert (= (and b!6544643 (not res!2684613)) b!6544618))

(assert (= (and b!6544618 (not res!2684606)) b!6544640))

(assert (= (and start!641270 ((_ is ElementMatch!16415) r!7292)) b!6544626))

(assert (= (and start!641270 ((_ is Concat!25260) r!7292)) b!6544621))

(assert (= (and start!641270 ((_ is Star!16415) r!7292)) b!6544635))

(assert (= (and start!641270 ((_ is Union!16415) r!7292)) b!6544633))

(assert (= (and start!641270 condSetEmpty!44652) setIsEmpty!44652))

(assert (= (and start!641270 (not condSetEmpty!44652)) setNonEmpty!44652))

(assert (= setNonEmpty!44652 b!6544610))

(assert (= b!6544629 b!6544611))

(assert (= (and start!641270 ((_ is Cons!65421) zl!343)) b!6544629))

(assert (= (and start!641270 ((_ is Cons!65422) s!2326)) b!6544639))

(declare-fun m!7327562 () Bool)

(assert (=> b!6544636 m!7327562))

(declare-fun m!7327564 () Bool)

(assert (=> b!6544632 m!7327564))

(declare-fun m!7327566 () Bool)

(assert (=> b!6544632 m!7327566))

(declare-fun m!7327568 () Bool)

(assert (=> b!6544632 m!7327568))

(declare-fun m!7327570 () Bool)

(assert (=> b!6544642 m!7327570))

(declare-fun m!7327572 () Bool)

(assert (=> b!6544642 m!7327572))

(declare-fun m!7327574 () Bool)

(assert (=> b!6544642 m!7327574))

(declare-fun m!7327576 () Bool)

(assert (=> b!6544642 m!7327576))

(declare-fun m!7327578 () Bool)

(assert (=> b!6544642 m!7327578))

(declare-fun m!7327580 () Bool)

(assert (=> b!6544642 m!7327580))

(declare-fun m!7327582 () Bool)

(assert (=> b!6544642 m!7327582))

(declare-fun m!7327584 () Bool)

(assert (=> b!6544604 m!7327584))

(declare-fun m!7327586 () Bool)

(assert (=> b!6544604 m!7327586))

(declare-fun m!7327588 () Bool)

(assert (=> b!6544624 m!7327588))

(declare-fun m!7327590 () Bool)

(assert (=> b!6544624 m!7327590))

(declare-fun m!7327592 () Bool)

(assert (=> b!6544624 m!7327592))

(declare-fun m!7327594 () Bool)

(assert (=> b!6544624 m!7327594))

(declare-fun m!7327596 () Bool)

(assert (=> b!6544624 m!7327596))

(declare-fun m!7327598 () Bool)

(assert (=> b!6544624 m!7327598))

(declare-fun m!7327600 () Bool)

(assert (=> b!6544624 m!7327600))

(declare-fun m!7327602 () Bool)

(assert (=> b!6544624 m!7327602))

(declare-fun m!7327604 () Bool)

(assert (=> b!6544624 m!7327604))

(declare-fun m!7327606 () Bool)

(assert (=> b!6544607 m!7327606))

(declare-fun m!7327608 () Bool)

(assert (=> b!6544634 m!7327608))

(declare-fun m!7327610 () Bool)

(assert (=> b!6544603 m!7327610))

(declare-fun m!7327612 () Bool)

(assert (=> b!6544608 m!7327612))

(declare-fun m!7327614 () Bool)

(assert (=> b!6544608 m!7327614))

(declare-fun m!7327616 () Bool)

(assert (=> b!6544608 m!7327616))

(declare-fun m!7327618 () Bool)

(assert (=> b!6544644 m!7327618))

(declare-fun m!7327620 () Bool)

(assert (=> b!6544643 m!7327620))

(declare-fun m!7327622 () Bool)

(assert (=> b!6544618 m!7327622))

(declare-fun m!7327624 () Bool)

(assert (=> b!6544623 m!7327624))

(declare-fun m!7327626 () Bool)

(assert (=> start!641270 m!7327626))

(declare-fun m!7327628 () Bool)

(assert (=> b!6544645 m!7327628))

(declare-fun m!7327630 () Bool)

(assert (=> b!6544645 m!7327630))

(declare-fun m!7327632 () Bool)

(assert (=> b!6544645 m!7327632))

(declare-fun m!7327634 () Bool)

(assert (=> b!6544645 m!7327634))

(declare-fun m!7327636 () Bool)

(assert (=> b!6544645 m!7327636))

(declare-fun m!7327638 () Bool)

(assert (=> b!6544630 m!7327638))

(assert (=> b!6544630 m!7327624))

(declare-fun m!7327640 () Bool)

(assert (=> b!6544630 m!7327640))

(declare-fun m!7327642 () Bool)

(assert (=> b!6544609 m!7327642))

(declare-fun m!7327644 () Bool)

(assert (=> b!6544609 m!7327644))

(declare-fun m!7327646 () Bool)

(assert (=> b!6544609 m!7327646))

(assert (=> b!6544609 m!7327642))

(declare-fun m!7327648 () Bool)

(assert (=> b!6544609 m!7327648))

(declare-fun m!7327650 () Bool)

(assert (=> b!6544609 m!7327650))

(declare-fun m!7327652 () Bool)

(assert (=> b!6544609 m!7327652))

(assert (=> b!6544609 m!7327646))

(declare-fun m!7327654 () Bool)

(assert (=> b!6544627 m!7327654))

(declare-fun m!7327656 () Bool)

(assert (=> b!6544625 m!7327656))

(declare-fun m!7327658 () Bool)

(assert (=> b!6544625 m!7327658))

(declare-fun m!7327660 () Bool)

(assert (=> b!6544625 m!7327660))

(declare-fun m!7327662 () Bool)

(assert (=> b!6544625 m!7327662))

(declare-fun m!7327664 () Bool)

(assert (=> b!6544625 m!7327664))

(declare-fun m!7327666 () Bool)

(assert (=> b!6544625 m!7327666))

(declare-fun m!7327668 () Bool)

(assert (=> b!6544612 m!7327668))

(declare-fun m!7327670 () Bool)

(assert (=> b!6544631 m!7327670))

(assert (=> b!6544631 m!7327670))

(declare-fun m!7327672 () Bool)

(assert (=> b!6544631 m!7327672))

(declare-fun m!7327674 () Bool)

(assert (=> b!6544640 m!7327674))

(assert (=> b!6544640 m!7327656))

(declare-fun m!7327676 () Bool)

(assert (=> b!6544640 m!7327676))

(declare-fun m!7327678 () Bool)

(assert (=> b!6544640 m!7327678))

(assert (=> b!6544640 m!7327660))

(assert (=> b!6544640 m!7327660))

(declare-fun m!7327680 () Bool)

(assert (=> b!6544640 m!7327680))

(declare-fun m!7327682 () Bool)

(assert (=> b!6544640 m!7327682))

(declare-fun m!7327684 () Bool)

(assert (=> b!6544640 m!7327684))

(assert (=> b!6544640 m!7327664))

(declare-fun m!7327686 () Bool)

(assert (=> b!6544640 m!7327686))

(declare-fun m!7327688 () Bool)

(assert (=> b!6544640 m!7327688))

(declare-fun m!7327690 () Bool)

(assert (=> setNonEmpty!44652 m!7327690))

(declare-fun m!7327692 () Bool)

(assert (=> b!6544613 m!7327692))

(declare-fun m!7327694 () Bool)

(assert (=> b!6544613 m!7327694))

(declare-fun m!7327696 () Bool)

(assert (=> b!6544613 m!7327696))

(declare-fun m!7327698 () Bool)

(assert (=> b!6544613 m!7327698))

(declare-fun m!7327700 () Bool)

(assert (=> b!6544613 m!7327700))

(declare-fun m!7327702 () Bool)

(assert (=> b!6544637 m!7327702))

(declare-fun m!7327704 () Bool)

(assert (=> b!6544629 m!7327704))

(assert (=> b!6544638 m!7327606))

(declare-fun m!7327706 () Bool)

(assert (=> b!6544616 m!7327706))

(declare-fun m!7327708 () Bool)

(assert (=> b!6544615 m!7327708))

(declare-fun m!7327710 () Bool)

(assert (=> b!6544619 m!7327710))

(check-sat (not b!6544632) (not b!6544608) (not b!6544613) (not b!6544639) (not b!6544615) (not b!6544640) (not b!6544644) (not b!6544629) (not b!6544607) (not b!6544625) (not b!6544618) (not b!6544642) (not b!6544636) (not setNonEmpty!44652) (not b!6544616) (not b!6544635) (not b!6544645) (not b!6544633) tp_is_empty!42083 (not start!641270) (not b!6544604) (not b!6544623) (not b!6544624) (not b!6544619) (not b!6544627) (not b!6544631) (not b!6544630) (not b!6544634) (not b!6544637) (not b!6544611) (not b!6544638) (not b!6544612) (not b!6544603) (not b!6544609) (not b!6544610) (not b!6544643) (not b!6544621))
(check-sat)
