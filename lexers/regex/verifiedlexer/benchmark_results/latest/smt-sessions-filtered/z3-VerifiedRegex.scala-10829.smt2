; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!557650 () Bool)

(assert start!557650)

(declare-fun b!5281634 () Bool)

(assert (=> b!5281634 true))

(assert (=> b!5281634 true))

(declare-fun lambda!266835 () Int)

(declare-fun lambda!266834 () Int)

(assert (=> b!5281634 (not (= lambda!266835 lambda!266834))))

(assert (=> b!5281634 true))

(assert (=> b!5281634 true))

(declare-fun b!5281613 () Bool)

(assert (=> b!5281613 true))

(declare-fun b!5281612 () Bool)

(declare-fun e!3284042 () Bool)

(declare-fun tp_is_empty!39063 () Bool)

(assert (=> b!5281612 (= e!3284042 tp_is_empty!39063)))

(declare-fun e!3284051 () Bool)

(declare-fun e!3284060 () Bool)

(assert (=> b!5281613 (= e!3284051 e!3284060)))

(declare-fun res!2240016 () Bool)

(assert (=> b!5281613 (=> res!2240016 e!3284060)))

(declare-datatypes ((C!30080 0))(
  ( (C!30081 (val!24742 Int)) )
))
(declare-datatypes ((Regex!14905 0))(
  ( (ElementMatch!14905 (c!915577 C!30080)) (Concat!23750 (regOne!30322 Regex!14905) (regTwo!30322 Regex!14905)) (EmptyExpr!14905) (Star!14905 (reg!15234 Regex!14905)) (EmptyLang!14905) (Union!14905 (regOne!30323 Regex!14905) (regTwo!30323 Regex!14905)) )
))
(declare-fun r!7292 () Regex!14905)

(declare-datatypes ((List!61014 0))(
  ( (Nil!60890) (Cons!60890 (h!67338 C!30080) (t!374217 List!61014)) )
))
(declare-fun s!2326 () List!61014)

(get-info :version)

(assert (=> b!5281613 (= res!2240016 (or (and ((_ is ElementMatch!14905) (regOne!30322 r!7292)) (= (c!915577 (regOne!30322 r!7292)) (h!67338 s!2326))) ((_ is Union!14905) (regOne!30322 r!7292)) (not ((_ is Concat!23750) (regOne!30322 r!7292)))))))

(declare-datatypes ((Unit!153138 0))(
  ( (Unit!153139) )
))
(declare-fun lt!2158783 () Unit!153138)

(declare-fun e!3284045 () Unit!153138)

(assert (=> b!5281613 (= lt!2158783 e!3284045)))

(declare-fun c!915576 () Bool)

(declare-datatypes ((List!61015 0))(
  ( (Nil!60891) (Cons!60891 (h!67339 Regex!14905) (t!374218 List!61015)) )
))
(declare-datatypes ((Context!8578 0))(
  ( (Context!8579 (exprs!4789 List!61015)) )
))
(declare-datatypes ((List!61016 0))(
  ( (Nil!60892) (Cons!60892 (h!67340 Context!8578) (t!374219 List!61016)) )
))
(declare-fun zl!343 () List!61016)

(declare-fun nullable!5074 (Regex!14905) Bool)

(assert (=> b!5281613 (= c!915576 (nullable!5074 (h!67339 (exprs!4789 (h!67340 zl!343)))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8578))

(declare-fun lambda!266836 () Int)

(declare-fun flatMap!632 ((InoxSet Context!8578) Int) (InoxSet Context!8578))

(declare-fun derivationStepZipperUp!277 (Context!8578 C!30080) (InoxSet Context!8578))

(assert (=> b!5281613 (= (flatMap!632 z!1189 lambda!266836) (derivationStepZipperUp!277 (h!67340 zl!343) (h!67338 s!2326)))))

(declare-fun lt!2158775 () Unit!153138)

(declare-fun lemmaFlatMapOnSingletonSet!164 ((InoxSet Context!8578) Context!8578 Int) Unit!153138)

(assert (=> b!5281613 (= lt!2158775 (lemmaFlatMapOnSingletonSet!164 z!1189 (h!67340 zl!343) lambda!266836))))

(declare-fun lt!2158782 () (InoxSet Context!8578))

(declare-fun lt!2158766 () Context!8578)

(assert (=> b!5281613 (= lt!2158782 (derivationStepZipperUp!277 lt!2158766 (h!67338 s!2326)))))

(declare-fun lt!2158797 () (InoxSet Context!8578))

(declare-fun derivationStepZipperDown!353 (Regex!14905 Context!8578 C!30080) (InoxSet Context!8578))

(assert (=> b!5281613 (= lt!2158797 (derivationStepZipperDown!353 (h!67339 (exprs!4789 (h!67340 zl!343))) lt!2158766 (h!67338 s!2326)))))

(assert (=> b!5281613 (= lt!2158766 (Context!8579 (t!374218 (exprs!4789 (h!67340 zl!343)))))))

(declare-fun lt!2158779 () (InoxSet Context!8578))

(assert (=> b!5281613 (= lt!2158779 (derivationStepZipperUp!277 (Context!8579 (Cons!60891 (h!67339 (exprs!4789 (h!67340 zl!343))) (t!374218 (exprs!4789 (h!67340 zl!343))))) (h!67338 s!2326)))))

(declare-fun setIsEmpty!33857 () Bool)

(declare-fun setRes!33857 () Bool)

(assert (=> setIsEmpty!33857 setRes!33857))

(declare-fun b!5281614 () Bool)

(declare-fun e!3284052 () Bool)

(declare-fun e!3284049 () Bool)

(assert (=> b!5281614 (= e!3284052 e!3284049)))

(declare-fun res!2240000 () Bool)

(assert (=> b!5281614 (=> res!2240000 e!3284049)))

(declare-fun lt!2158774 () List!61016)

(declare-fun zipperDepthTotal!66 (List!61016) Int)

(assert (=> b!5281614 (= res!2240000 (>= (zipperDepthTotal!66 lt!2158774) (zipperDepthTotal!66 zl!343)))))

(declare-fun lt!2158781 () Context!8578)

(assert (=> b!5281614 (= lt!2158774 (Cons!60892 lt!2158781 Nil!60892))))

(declare-fun b!5281615 () Bool)

(declare-fun tp!1475476 () Bool)

(assert (=> b!5281615 (= e!3284042 tp!1475476)))

(declare-fun b!5281616 () Bool)

(declare-fun e!3284056 () Bool)

(declare-fun e!3284046 () Bool)

(assert (=> b!5281616 (= e!3284056 e!3284046)))

(declare-fun res!2239999 () Bool)

(assert (=> b!5281616 (=> res!2239999 e!3284046)))

(declare-fun e!3284043 () Bool)

(assert (=> b!5281616 (= res!2239999 e!3284043)))

(declare-fun res!2240008 () Bool)

(assert (=> b!5281616 (=> (not res!2240008) (not e!3284043))))

(declare-fun lt!2158792 () Bool)

(declare-fun lt!2158795 () Bool)

(assert (=> b!5281616 (= res!2240008 (not (= lt!2158792 lt!2158795)))))

(declare-fun matchZipper!1149 ((InoxSet Context!8578) List!61014) Bool)

(assert (=> b!5281616 (= lt!2158792 (matchZipper!1149 lt!2158797 (t!374217 s!2326)))))

(declare-fun lt!2158776 () (InoxSet Context!8578))

(declare-fun e!3284041 () Bool)

(assert (=> b!5281616 (= (matchZipper!1149 lt!2158776 (t!374217 s!2326)) e!3284041)))

(declare-fun res!2240011 () Bool)

(assert (=> b!5281616 (=> res!2240011 e!3284041)))

(assert (=> b!5281616 (= res!2240011 lt!2158795)))

(declare-fun lt!2158764 () (InoxSet Context!8578))

(assert (=> b!5281616 (= lt!2158795 (matchZipper!1149 lt!2158764 (t!374217 s!2326)))))

(declare-fun lt!2158770 () Unit!153138)

(declare-fun lt!2158785 () (InoxSet Context!8578))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!142 ((InoxSet Context!8578) (InoxSet Context!8578) List!61014) Unit!153138)

(assert (=> b!5281616 (= lt!2158770 (lemmaZipperConcatMatchesSameAsBothZippers!142 lt!2158764 lt!2158785 (t!374217 s!2326)))))

(declare-fun b!5281617 () Bool)

(declare-fun e!3284058 () Bool)

(declare-fun tp!1475474 () Bool)

(assert (=> b!5281617 (= e!3284058 (and tp_is_empty!39063 tp!1475474))))

(declare-fun b!5281619 () Bool)

(declare-fun e!3284055 () Bool)

(assert (=> b!5281619 (= e!3284055 (matchZipper!1149 lt!2158782 (t!374217 s!2326)))))

(declare-fun b!5281620 () Bool)

(declare-fun Unit!153140 () Unit!153138)

(assert (=> b!5281620 (= e!3284045 Unit!153140)))

(declare-fun b!5281621 () Bool)

(declare-fun e!3284057 () Bool)

(declare-fun tp!1475473 () Bool)

(assert (=> b!5281621 (= e!3284057 tp!1475473)))

(declare-fun b!5281622 () Bool)

(declare-fun e!3284054 () Bool)

(declare-fun e!3284048 () Bool)

(assert (=> b!5281622 (= e!3284054 (not e!3284048))))

(declare-fun res!2240015 () Bool)

(assert (=> b!5281622 (=> res!2240015 e!3284048)))

(assert (=> b!5281622 (= res!2240015 (not ((_ is Cons!60892) zl!343)))))

(declare-fun lt!2158773 () Bool)

(declare-fun matchRSpec!2008 (Regex!14905 List!61014) Bool)

(assert (=> b!5281622 (= lt!2158773 (matchRSpec!2008 r!7292 s!2326))))

(declare-fun matchR!7090 (Regex!14905 List!61014) Bool)

(assert (=> b!5281622 (= lt!2158773 (matchR!7090 r!7292 s!2326))))

(declare-fun lt!2158788 () Unit!153138)

(declare-fun mainMatchTheorem!2008 (Regex!14905 List!61014) Unit!153138)

(assert (=> b!5281622 (= lt!2158788 (mainMatchTheorem!2008 r!7292 s!2326))))

(declare-fun setElem!33857 () Context!8578)

(declare-fun tp!1475469 () Bool)

(declare-fun setNonEmpty!33857 () Bool)

(declare-fun inv!80509 (Context!8578) Bool)

(assert (=> setNonEmpty!33857 (= setRes!33857 (and tp!1475469 (inv!80509 setElem!33857) e!3284057))))

(declare-fun setRest!33857 () (InoxSet Context!8578))

(assert (=> setNonEmpty!33857 (= z!1189 ((_ map or) (store ((as const (Array Context!8578 Bool)) false) setElem!33857 true) setRest!33857))))

(declare-fun b!5281623 () Bool)

(declare-fun res!2240012 () Bool)

(assert (=> b!5281623 (=> res!2240012 e!3284048)))

(declare-fun generalisedUnion!834 (List!61015) Regex!14905)

(declare-fun unfocusZipperList!347 (List!61016) List!61015)

(assert (=> b!5281623 (= res!2240012 (not (= r!7292 (generalisedUnion!834 (unfocusZipperList!347 zl!343)))))))

(declare-fun b!5281624 () Bool)

(assert (=> b!5281624 (= e!3284041 (matchZipper!1149 lt!2158785 (t!374217 s!2326)))))

(declare-fun b!5281625 () Bool)

(declare-fun res!2240007 () Bool)

(assert (=> b!5281625 (=> res!2240007 e!3284049)))

(declare-fun zipperDepth!22 (List!61016) Int)

(assert (=> b!5281625 (= res!2240007 (> (zipperDepth!22 lt!2158774) (zipperDepth!22 zl!343)))))

(declare-fun b!5281626 () Bool)

(declare-fun res!2240001 () Bool)

(assert (=> b!5281626 (=> res!2240001 e!3284060)))

(assert (=> b!5281626 (= res!2240001 (not (nullable!5074 (regOne!30322 (regOne!30322 r!7292)))))))

(declare-fun b!5281627 () Bool)

(declare-fun res!2239998 () Bool)

(assert (=> b!5281627 (=> res!2239998 e!3284048)))

(declare-fun isEmpty!32843 (List!61016) Bool)

(assert (=> b!5281627 (= res!2239998 (not (isEmpty!32843 (t!374219 zl!343))))))

(declare-fun tp!1475470 () Bool)

(declare-fun e!3284044 () Bool)

(declare-fun e!3284047 () Bool)

(declare-fun b!5281628 () Bool)

(assert (=> b!5281628 (= e!3284047 (and (inv!80509 (h!67340 zl!343)) e!3284044 tp!1475470))))

(declare-fun b!5281629 () Bool)

(declare-fun e!3284053 () Bool)

(assert (=> b!5281629 (= e!3284053 e!3284052)))

(declare-fun res!2240004 () Bool)

(assert (=> b!5281629 (=> res!2240004 e!3284052)))

(declare-fun e!3284050 () Bool)

(assert (=> b!5281629 (= res!2240004 e!3284050)))

(declare-fun res!2239996 () Bool)

(assert (=> b!5281629 (=> (not res!2239996) (not e!3284050))))

(declare-fun lt!2158794 () (InoxSet Context!8578))

(assert (=> b!5281629 (= res!2239996 (not (= lt!2158792 (matchZipper!1149 lt!2158794 (t!374217 s!2326)))))))

(declare-fun lt!2158763 () (InoxSet Context!8578))

(declare-fun e!3284059 () Bool)

(assert (=> b!5281629 (= (matchZipper!1149 lt!2158763 (t!374217 s!2326)) e!3284059)))

(declare-fun res!2240013 () Bool)

(assert (=> b!5281629 (=> res!2240013 e!3284059)))

(assert (=> b!5281629 (= res!2240013 lt!2158795)))

(declare-fun lt!2158767 () Unit!153138)

(declare-fun lt!2158793 () (InoxSet Context!8578))

(assert (=> b!5281629 (= lt!2158767 (lemmaZipperConcatMatchesSameAsBothZippers!142 lt!2158764 lt!2158793 (t!374217 s!2326)))))

(declare-fun lt!2158789 () Context!8578)

(declare-fun lt!2158780 () (InoxSet Context!8578))

(assert (=> b!5281629 (= (flatMap!632 lt!2158780 lambda!266836) (derivationStepZipperUp!277 lt!2158789 (h!67338 s!2326)))))

(declare-fun lt!2158772 () Unit!153138)

(assert (=> b!5281629 (= lt!2158772 (lemmaFlatMapOnSingletonSet!164 lt!2158780 lt!2158789 lambda!266836))))

(declare-fun b!5281630 () Bool)

(assert (=> b!5281630 (= e!3284060 e!3284056)))

(declare-fun res!2240018 () Bool)

(assert (=> b!5281630 (=> res!2240018 e!3284056)))

(assert (=> b!5281630 (= res!2240018 (not (= lt!2158797 lt!2158776)))))

(assert (=> b!5281630 (= lt!2158776 ((_ map or) lt!2158764 lt!2158785))))

(assert (=> b!5281630 (= lt!2158785 (derivationStepZipperDown!353 (regTwo!30322 (regOne!30322 r!7292)) lt!2158766 (h!67338 s!2326)))))

(assert (=> b!5281630 (= lt!2158764 (derivationStepZipperDown!353 (regOne!30322 (regOne!30322 r!7292)) lt!2158789 (h!67338 s!2326)))))

(declare-fun lt!2158791 () List!61015)

(assert (=> b!5281630 (= lt!2158789 (Context!8579 lt!2158791))))

(assert (=> b!5281630 (= lt!2158791 (Cons!60891 (regTwo!30322 (regOne!30322 r!7292)) (t!374218 (exprs!4789 (h!67340 zl!343)))))))

(declare-fun b!5281631 () Bool)

(declare-fun tp!1475468 () Bool)

(declare-fun tp!1475471 () Bool)

(assert (=> b!5281631 (= e!3284042 (and tp!1475468 tp!1475471))))

(declare-fun b!5281632 () Bool)

(declare-fun res!2239994 () Bool)

(assert (=> b!5281632 (=> res!2239994 e!3284048)))

(assert (=> b!5281632 (= res!2239994 (or ((_ is EmptyExpr!14905) r!7292) ((_ is EmptyLang!14905) r!7292) ((_ is ElementMatch!14905) r!7292) ((_ is Union!14905) r!7292) (not ((_ is Concat!23750) r!7292))))))

(declare-fun b!5281633 () Bool)

(declare-fun tp!1475475 () Bool)

(assert (=> b!5281633 (= e!3284044 tp!1475475)))

(declare-fun b!5281618 () Bool)

(declare-fun res!2240019 () Bool)

(assert (=> b!5281618 (=> res!2240019 e!3284048)))

(declare-fun generalisedConcat!574 (List!61015) Regex!14905)

(assert (=> b!5281618 (= res!2240019 (not (= r!7292 (generalisedConcat!574 (exprs!4789 (h!67340 zl!343))))))))

(declare-fun res!2239995 () Bool)

(assert (=> start!557650 (=> (not res!2239995) (not e!3284054))))

(declare-fun validRegex!6641 (Regex!14905) Bool)

(assert (=> start!557650 (= res!2239995 (validRegex!6641 r!7292))))

(assert (=> start!557650 e!3284054))

(assert (=> start!557650 e!3284042))

(declare-fun condSetEmpty!33857 () Bool)

(assert (=> start!557650 (= condSetEmpty!33857 (= z!1189 ((as const (Array Context!8578 Bool)) false)))))

(assert (=> start!557650 setRes!33857))

(assert (=> start!557650 e!3284047))

(assert (=> start!557650 e!3284058))

(assert (=> b!5281634 (= e!3284048 e!3284051)))

(declare-fun res!2240017 () Bool)

(assert (=> b!5281634 (=> res!2240017 e!3284051)))

(declare-fun lt!2158778 () Bool)

(assert (=> b!5281634 (= res!2240017 (or (not (= lt!2158773 lt!2158778)) ((_ is Nil!60890) s!2326)))))

(declare-fun Exists!2086 (Int) Bool)

(assert (=> b!5281634 (= (Exists!2086 lambda!266834) (Exists!2086 lambda!266835))))

(declare-fun lt!2158786 () Unit!153138)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!740 (Regex!14905 Regex!14905 List!61014) Unit!153138)

(assert (=> b!5281634 (= lt!2158786 (lemmaExistCutMatchRandMatchRSpecEquivalent!740 (regOne!30322 r!7292) (regTwo!30322 r!7292) s!2326))))

(assert (=> b!5281634 (= lt!2158778 (Exists!2086 lambda!266834))))

(declare-datatypes ((tuple2!64208 0))(
  ( (tuple2!64209 (_1!35407 List!61014) (_2!35407 List!61014)) )
))
(declare-datatypes ((Option!15016 0))(
  ( (None!15015) (Some!15015 (v!51044 tuple2!64208)) )
))
(declare-fun isDefined!11719 (Option!15016) Bool)

(declare-fun findConcatSeparation!1430 (Regex!14905 Regex!14905 List!61014 List!61014 List!61014) Option!15016)

(assert (=> b!5281634 (= lt!2158778 (isDefined!11719 (findConcatSeparation!1430 (regOne!30322 r!7292) (regTwo!30322 r!7292) Nil!60890 s!2326 s!2326)))))

(declare-fun lt!2158768 () Unit!153138)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1194 (Regex!14905 Regex!14905 List!61014) Unit!153138)

(assert (=> b!5281634 (= lt!2158768 (lemmaFindConcatSeparationEquivalentToExists!1194 (regOne!30322 r!7292) (regTwo!30322 r!7292) s!2326))))

(declare-fun b!5281635 () Bool)

(declare-fun res!2240003 () Bool)

(assert (=> b!5281635 (=> res!2240003 e!3284052)))

(assert (=> b!5281635 (= res!2240003 (not (= (exprs!4789 (h!67340 zl!343)) (Cons!60891 (Concat!23750 (regOne!30322 (regOne!30322 r!7292)) (regTwo!30322 (regOne!30322 r!7292))) (t!374218 (exprs!4789 (h!67340 zl!343)))))))))

(declare-fun b!5281636 () Bool)

(assert (=> b!5281636 (= e!3284059 (matchZipper!1149 lt!2158793 (t!374217 s!2326)))))

(declare-fun b!5281637 () Bool)

(declare-fun derivationStepZipper!1148 ((InoxSet Context!8578) C!30080) (InoxSet Context!8578))

(assert (=> b!5281637 (= e!3284050 (not (matchZipper!1149 (derivationStepZipper!1148 lt!2158780 (h!67338 s!2326)) (t!374217 s!2326))))))

(declare-fun b!5281638 () Bool)

(declare-fun tp!1475477 () Bool)

(declare-fun tp!1475472 () Bool)

(assert (=> b!5281638 (= e!3284042 (and tp!1475477 tp!1475472))))

(declare-fun b!5281639 () Bool)

(declare-fun lt!2158798 () List!61015)

(declare-fun lambda!266837 () Int)

(declare-fun forall!14313 (List!61015 Int) Bool)

(assert (=> b!5281639 (= e!3284049 (forall!14313 lt!2158798 lambda!266837))))

(declare-fun lt!2158769 () Regex!14905)

(assert (=> b!5281639 (= (matchR!7090 lt!2158769 s!2326) (matchZipper!1149 lt!2158780 s!2326))))

(declare-fun lt!2158787 () Unit!153138)

(declare-fun theoremZipperRegexEquiv!315 ((InoxSet Context!8578) List!61016 Regex!14905 List!61014) Unit!153138)

(assert (=> b!5281639 (= lt!2158787 (theoremZipperRegexEquiv!315 lt!2158780 (Cons!60892 lt!2158789 Nil!60892) lt!2158769 s!2326))))

(assert (=> b!5281639 (= lt!2158769 (generalisedConcat!574 lt!2158791))))

(declare-fun lt!2158784 () Regex!14905)

(declare-fun lt!2158796 () (InoxSet Context!8578))

(assert (=> b!5281639 (= (matchR!7090 lt!2158784 s!2326) (matchZipper!1149 lt!2158796 s!2326))))

(declare-fun lt!2158771 () Unit!153138)

(assert (=> b!5281639 (= lt!2158771 (theoremZipperRegexEquiv!315 lt!2158796 lt!2158774 lt!2158784 s!2326))))

(assert (=> b!5281639 (= lt!2158784 (generalisedConcat!574 lt!2158798))))

(declare-fun b!5281640 () Bool)

(declare-fun res!2240002 () Bool)

(assert (=> b!5281640 (=> res!2240002 e!3284048)))

(assert (=> b!5281640 (= res!2240002 (not ((_ is Cons!60891) (exprs!4789 (h!67340 zl!343)))))))

(declare-fun b!5281641 () Bool)

(assert (=> b!5281641 (= e!3284046 e!3284053)))

(declare-fun res!2240009 () Bool)

(assert (=> b!5281641 (=> res!2240009 e!3284053)))

(assert (=> b!5281641 (= res!2240009 (not (= lt!2158794 lt!2158763)))))

(assert (=> b!5281641 (= lt!2158763 ((_ map or) lt!2158764 lt!2158793))))

(assert (=> b!5281641 (= lt!2158793 (derivationStepZipperUp!277 lt!2158789 (h!67338 s!2326)))))

(assert (=> b!5281641 (= (flatMap!632 lt!2158796 lambda!266836) (derivationStepZipperUp!277 lt!2158781 (h!67338 s!2326)))))

(declare-fun lt!2158765 () Unit!153138)

(assert (=> b!5281641 (= lt!2158765 (lemmaFlatMapOnSingletonSet!164 lt!2158796 lt!2158781 lambda!266836))))

(declare-fun lt!2158790 () (InoxSet Context!8578))

(assert (=> b!5281641 (= lt!2158790 (derivationStepZipperUp!277 lt!2158781 (h!67338 s!2326)))))

(assert (=> b!5281641 (= lt!2158794 (derivationStepZipper!1148 lt!2158796 (h!67338 s!2326)))))

(assert (=> b!5281641 (= lt!2158780 (store ((as const (Array Context!8578 Bool)) false) lt!2158789 true))))

(assert (=> b!5281641 (= lt!2158796 (store ((as const (Array Context!8578 Bool)) false) lt!2158781 true))))

(assert (=> b!5281641 (= lt!2158781 (Context!8579 lt!2158798))))

(assert (=> b!5281641 (= lt!2158798 (Cons!60891 (regOne!30322 (regOne!30322 r!7292)) lt!2158791))))

(declare-fun b!5281642 () Bool)

(declare-fun res!2240010 () Bool)

(assert (=> b!5281642 (=> (not res!2240010) (not e!3284054))))

(declare-fun toList!8689 ((InoxSet Context!8578)) List!61016)

(assert (=> b!5281642 (= res!2240010 (= (toList!8689 z!1189) zl!343))))

(declare-fun b!5281643 () Bool)

(declare-fun Unit!153141 () Unit!153138)

(assert (=> b!5281643 (= e!3284045 Unit!153141)))

(declare-fun lt!2158777 () Unit!153138)

(assert (=> b!5281643 (= lt!2158777 (lemmaZipperConcatMatchesSameAsBothZippers!142 lt!2158797 lt!2158782 (t!374217 s!2326)))))

(declare-fun res!2239997 () Bool)

(assert (=> b!5281643 (= res!2239997 (matchZipper!1149 lt!2158797 (t!374217 s!2326)))))

(assert (=> b!5281643 (=> res!2239997 e!3284055)))

(assert (=> b!5281643 (= (matchZipper!1149 ((_ map or) lt!2158797 lt!2158782) (t!374217 s!2326)) e!3284055)))

(declare-fun b!5281644 () Bool)

(declare-fun res!2240006 () Bool)

(assert (=> b!5281644 (=> res!2240006 e!3284051)))

(declare-fun isEmpty!32844 (List!61015) Bool)

(assert (=> b!5281644 (= res!2240006 (isEmpty!32844 (t!374218 (exprs!4789 (h!67340 zl!343)))))))

(declare-fun b!5281645 () Bool)

(declare-fun res!2240014 () Bool)

(assert (=> b!5281645 (=> (not res!2240014) (not e!3284054))))

(declare-fun unfocusZipper!647 (List!61016) Regex!14905)

(assert (=> b!5281645 (= res!2240014 (= r!7292 (unfocusZipper!647 zl!343)))))

(declare-fun b!5281646 () Bool)

(declare-fun res!2240005 () Bool)

(assert (=> b!5281646 (=> res!2240005 e!3284052)))

(declare-fun contextDepthTotal!46 (Context!8578) Int)

(assert (=> b!5281646 (= res!2240005 (>= (contextDepthTotal!46 lt!2158781) (contextDepthTotal!46 (h!67340 zl!343))))))

(declare-fun b!5281647 () Bool)

(assert (=> b!5281647 (= e!3284043 (not (matchZipper!1149 lt!2158785 (t!374217 s!2326))))))

(assert (= (and start!557650 res!2239995) b!5281642))

(assert (= (and b!5281642 res!2240010) b!5281645))

(assert (= (and b!5281645 res!2240014) b!5281622))

(assert (= (and b!5281622 (not res!2240015)) b!5281627))

(assert (= (and b!5281627 (not res!2239998)) b!5281618))

(assert (= (and b!5281618 (not res!2240019)) b!5281640))

(assert (= (and b!5281640 (not res!2240002)) b!5281623))

(assert (= (and b!5281623 (not res!2240012)) b!5281632))

(assert (= (and b!5281632 (not res!2239994)) b!5281634))

(assert (= (and b!5281634 (not res!2240017)) b!5281644))

(assert (= (and b!5281644 (not res!2240006)) b!5281613))

(assert (= (and b!5281613 c!915576) b!5281643))

(assert (= (and b!5281613 (not c!915576)) b!5281620))

(assert (= (and b!5281643 (not res!2239997)) b!5281619))

(assert (= (and b!5281613 (not res!2240016)) b!5281626))

(assert (= (and b!5281626 (not res!2240001)) b!5281630))

(assert (= (and b!5281630 (not res!2240018)) b!5281616))

(assert (= (and b!5281616 (not res!2240011)) b!5281624))

(assert (= (and b!5281616 res!2240008) b!5281647))

(assert (= (and b!5281616 (not res!2239999)) b!5281641))

(assert (= (and b!5281641 (not res!2240009)) b!5281629))

(assert (= (and b!5281629 (not res!2240013)) b!5281636))

(assert (= (and b!5281629 res!2239996) b!5281637))

(assert (= (and b!5281629 (not res!2240004)) b!5281635))

(assert (= (and b!5281635 (not res!2240003)) b!5281646))

(assert (= (and b!5281646 (not res!2240005)) b!5281614))

(assert (= (and b!5281614 (not res!2240000)) b!5281625))

(assert (= (and b!5281625 (not res!2240007)) b!5281639))

(assert (= (and start!557650 ((_ is ElementMatch!14905) r!7292)) b!5281612))

(assert (= (and start!557650 ((_ is Concat!23750) r!7292)) b!5281638))

(assert (= (and start!557650 ((_ is Star!14905) r!7292)) b!5281615))

(assert (= (and start!557650 ((_ is Union!14905) r!7292)) b!5281631))

(assert (= (and start!557650 condSetEmpty!33857) setIsEmpty!33857))

(assert (= (and start!557650 (not condSetEmpty!33857)) setNonEmpty!33857))

(assert (= setNonEmpty!33857 b!5281621))

(assert (= b!5281628 b!5281633))

(assert (= (and start!557650 ((_ is Cons!60892) zl!343)) b!5281628))

(assert (= (and start!557650 ((_ is Cons!60890) s!2326)) b!5281617))

(declare-fun m!6319510 () Bool)

(assert (=> b!5281630 m!6319510))

(declare-fun m!6319512 () Bool)

(assert (=> b!5281630 m!6319512))

(declare-fun m!6319514 () Bool)

(assert (=> b!5281614 m!6319514))

(declare-fun m!6319516 () Bool)

(assert (=> b!5281614 m!6319516))

(declare-fun m!6319518 () Bool)

(assert (=> b!5281626 m!6319518))

(declare-fun m!6319520 () Bool)

(assert (=> b!5281616 m!6319520))

(declare-fun m!6319522 () Bool)

(assert (=> b!5281616 m!6319522))

(declare-fun m!6319524 () Bool)

(assert (=> b!5281616 m!6319524))

(declare-fun m!6319526 () Bool)

(assert (=> b!5281616 m!6319526))

(declare-fun m!6319528 () Bool)

(assert (=> b!5281628 m!6319528))

(declare-fun m!6319530 () Bool)

(assert (=> b!5281646 m!6319530))

(declare-fun m!6319532 () Bool)

(assert (=> b!5281646 m!6319532))

(declare-fun m!6319534 () Bool)

(assert (=> b!5281625 m!6319534))

(declare-fun m!6319536 () Bool)

(assert (=> b!5281625 m!6319536))

(declare-fun m!6319538 () Bool)

(assert (=> b!5281645 m!6319538))

(declare-fun m!6319540 () Bool)

(assert (=> b!5281637 m!6319540))

(assert (=> b!5281637 m!6319540))

(declare-fun m!6319542 () Bool)

(assert (=> b!5281637 m!6319542))

(declare-fun m!6319544 () Bool)

(assert (=> b!5281636 m!6319544))

(declare-fun m!6319546 () Bool)

(assert (=> setNonEmpty!33857 m!6319546))

(declare-fun m!6319548 () Bool)

(assert (=> b!5281622 m!6319548))

(declare-fun m!6319550 () Bool)

(assert (=> b!5281622 m!6319550))

(declare-fun m!6319552 () Bool)

(assert (=> b!5281622 m!6319552))

(declare-fun m!6319554 () Bool)

(assert (=> b!5281644 m!6319554))

(declare-fun m!6319556 () Bool)

(assert (=> start!557650 m!6319556))

(declare-fun m!6319558 () Bool)

(assert (=> b!5281639 m!6319558))

(declare-fun m!6319560 () Bool)

(assert (=> b!5281639 m!6319560))

(declare-fun m!6319562 () Bool)

(assert (=> b!5281639 m!6319562))

(declare-fun m!6319564 () Bool)

(assert (=> b!5281639 m!6319564))

(declare-fun m!6319566 () Bool)

(assert (=> b!5281639 m!6319566))

(declare-fun m!6319568 () Bool)

(assert (=> b!5281639 m!6319568))

(declare-fun m!6319570 () Bool)

(assert (=> b!5281639 m!6319570))

(declare-fun m!6319572 () Bool)

(assert (=> b!5281639 m!6319572))

(declare-fun m!6319574 () Bool)

(assert (=> b!5281639 m!6319574))

(declare-fun m!6319576 () Bool)

(assert (=> b!5281619 m!6319576))

(declare-fun m!6319578 () Bool)

(assert (=> b!5281647 m!6319578))

(declare-fun m!6319580 () Bool)

(assert (=> b!5281643 m!6319580))

(assert (=> b!5281643 m!6319520))

(declare-fun m!6319582 () Bool)

(assert (=> b!5281643 m!6319582))

(declare-fun m!6319584 () Bool)

(assert (=> b!5281634 m!6319584))

(declare-fun m!6319586 () Bool)

(assert (=> b!5281634 m!6319586))

(declare-fun m!6319588 () Bool)

(assert (=> b!5281634 m!6319588))

(declare-fun m!6319590 () Bool)

(assert (=> b!5281634 m!6319590))

(assert (=> b!5281634 m!6319588))

(declare-fun m!6319592 () Bool)

(assert (=> b!5281634 m!6319592))

(assert (=> b!5281634 m!6319584))

(declare-fun m!6319594 () Bool)

(assert (=> b!5281634 m!6319594))

(declare-fun m!6319596 () Bool)

(assert (=> b!5281641 m!6319596))

(declare-fun m!6319598 () Bool)

(assert (=> b!5281641 m!6319598))

(declare-fun m!6319600 () Bool)

(assert (=> b!5281641 m!6319600))

(declare-fun m!6319602 () Bool)

(assert (=> b!5281641 m!6319602))

(declare-fun m!6319604 () Bool)

(assert (=> b!5281641 m!6319604))

(declare-fun m!6319606 () Bool)

(assert (=> b!5281641 m!6319606))

(declare-fun m!6319608 () Bool)

(assert (=> b!5281641 m!6319608))

(declare-fun m!6319610 () Bool)

(assert (=> b!5281613 m!6319610))

(declare-fun m!6319612 () Bool)

(assert (=> b!5281613 m!6319612))

(declare-fun m!6319614 () Bool)

(assert (=> b!5281613 m!6319614))

(declare-fun m!6319616 () Bool)

(assert (=> b!5281613 m!6319616))

(declare-fun m!6319618 () Bool)

(assert (=> b!5281613 m!6319618))

(declare-fun m!6319620 () Bool)

(assert (=> b!5281613 m!6319620))

(declare-fun m!6319622 () Bool)

(assert (=> b!5281613 m!6319622))

(declare-fun m!6319624 () Bool)

(assert (=> b!5281629 m!6319624))

(assert (=> b!5281629 m!6319604))

(declare-fun m!6319626 () Bool)

(assert (=> b!5281629 m!6319626))

(declare-fun m!6319628 () Bool)

(assert (=> b!5281629 m!6319628))

(declare-fun m!6319630 () Bool)

(assert (=> b!5281629 m!6319630))

(declare-fun m!6319632 () Bool)

(assert (=> b!5281629 m!6319632))

(assert (=> b!5281624 m!6319578))

(declare-fun m!6319634 () Bool)

(assert (=> b!5281623 m!6319634))

(assert (=> b!5281623 m!6319634))

(declare-fun m!6319636 () Bool)

(assert (=> b!5281623 m!6319636))

(declare-fun m!6319638 () Bool)

(assert (=> b!5281627 m!6319638))

(declare-fun m!6319640 () Bool)

(assert (=> b!5281642 m!6319640))

(declare-fun m!6319642 () Bool)

(assert (=> b!5281618 m!6319642))

(check-sat (not b!5281625) (not b!5281629) (not b!5281626) (not b!5281645) (not b!5281637) (not b!5281647) (not b!5281619) (not b!5281634) (not b!5281622) (not b!5281615) tp_is_empty!39063 (not setNonEmpty!33857) (not b!5281646) (not b!5281633) (not b!5281616) (not b!5281617) (not b!5281621) (not b!5281614) (not b!5281641) (not start!557650) (not b!5281630) (not b!5281636) (not b!5281631) (not b!5281642) (not b!5281643) (not b!5281618) (not b!5281624) (not b!5281628) (not b!5281627) (not b!5281613) (not b!5281623) (not b!5281639) (not b!5281644) (not b!5281638))
(check-sat)
(get-model)

(declare-fun bs!1224461 () Bool)

(declare-fun d!1699834 () Bool)

(assert (= bs!1224461 (and d!1699834 b!5281639)))

(declare-fun lambda!266857 () Int)

(assert (=> bs!1224461 (= lambda!266857 lambda!266837)))

(declare-fun b!5281918 () Bool)

(declare-fun e!3284220 () Regex!14905)

(assert (=> b!5281918 (= e!3284220 EmptyLang!14905)))

(declare-fun e!3284221 () Bool)

(assert (=> d!1699834 e!3284221))

(declare-fun res!2240112 () Bool)

(assert (=> d!1699834 (=> (not res!2240112) (not e!3284221))))

(declare-fun lt!2158843 () Regex!14905)

(assert (=> d!1699834 (= res!2240112 (validRegex!6641 lt!2158843))))

(declare-fun e!3284219 () Regex!14905)

(assert (=> d!1699834 (= lt!2158843 e!3284219)))

(declare-fun c!915667 () Bool)

(declare-fun e!3284218 () Bool)

(assert (=> d!1699834 (= c!915667 e!3284218)))

(declare-fun res!2240113 () Bool)

(assert (=> d!1699834 (=> (not res!2240113) (not e!3284218))))

(assert (=> d!1699834 (= res!2240113 ((_ is Cons!60891) (unfocusZipperList!347 zl!343)))))

(assert (=> d!1699834 (forall!14313 (unfocusZipperList!347 zl!343) lambda!266857)))

(assert (=> d!1699834 (= (generalisedUnion!834 (unfocusZipperList!347 zl!343)) lt!2158843)))

(declare-fun b!5281919 () Bool)

(declare-fun e!3284223 () Bool)

(declare-fun e!3284222 () Bool)

(assert (=> b!5281919 (= e!3284223 e!3284222)))

(declare-fun c!915666 () Bool)

(declare-fun tail!10415 (List!61015) List!61015)

(assert (=> b!5281919 (= c!915666 (isEmpty!32844 (tail!10415 (unfocusZipperList!347 zl!343))))))

(declare-fun b!5281920 () Bool)

(assert (=> b!5281920 (= e!3284220 (Union!14905 (h!67339 (unfocusZipperList!347 zl!343)) (generalisedUnion!834 (t!374218 (unfocusZipperList!347 zl!343)))))))

(declare-fun b!5281921 () Bool)

(declare-fun isUnion!275 (Regex!14905) Bool)

(assert (=> b!5281921 (= e!3284222 (isUnion!275 lt!2158843))))

(declare-fun b!5281922 () Bool)

(assert (=> b!5281922 (= e!3284219 e!3284220)))

(declare-fun c!915668 () Bool)

(assert (=> b!5281922 (= c!915668 ((_ is Cons!60891) (unfocusZipperList!347 zl!343)))))

(declare-fun b!5281923 () Bool)

(assert (=> b!5281923 (= e!3284219 (h!67339 (unfocusZipperList!347 zl!343)))))

(declare-fun b!5281924 () Bool)

(declare-fun head!11318 (List!61015) Regex!14905)

(assert (=> b!5281924 (= e!3284222 (= lt!2158843 (head!11318 (unfocusZipperList!347 zl!343))))))

(declare-fun b!5281925 () Bool)

(assert (=> b!5281925 (= e!3284221 e!3284223)))

(declare-fun c!915669 () Bool)

(assert (=> b!5281925 (= c!915669 (isEmpty!32844 (unfocusZipperList!347 zl!343)))))

(declare-fun b!5281926 () Bool)

(declare-fun isEmptyLang!843 (Regex!14905) Bool)

(assert (=> b!5281926 (= e!3284223 (isEmptyLang!843 lt!2158843))))

(declare-fun b!5281927 () Bool)

(assert (=> b!5281927 (= e!3284218 (isEmpty!32844 (t!374218 (unfocusZipperList!347 zl!343))))))

(assert (= (and d!1699834 res!2240113) b!5281927))

(assert (= (and d!1699834 c!915667) b!5281923))

(assert (= (and d!1699834 (not c!915667)) b!5281922))

(assert (= (and b!5281922 c!915668) b!5281920))

(assert (= (and b!5281922 (not c!915668)) b!5281918))

(assert (= (and d!1699834 res!2240112) b!5281925))

(assert (= (and b!5281925 c!915669) b!5281926))

(assert (= (and b!5281925 (not c!915669)) b!5281919))

(assert (= (and b!5281919 c!915666) b!5281924))

(assert (= (and b!5281919 (not c!915666)) b!5281921))

(declare-fun m!6319866 () Bool)

(assert (=> d!1699834 m!6319866))

(assert (=> d!1699834 m!6319634))

(declare-fun m!6319868 () Bool)

(assert (=> d!1699834 m!6319868))

(assert (=> b!5281919 m!6319634))

(declare-fun m!6319872 () Bool)

(assert (=> b!5281919 m!6319872))

(assert (=> b!5281919 m!6319872))

(declare-fun m!6319878 () Bool)

(assert (=> b!5281919 m!6319878))

(declare-fun m!6319884 () Bool)

(assert (=> b!5281921 m!6319884))

(assert (=> b!5281924 m!6319634))

(declare-fun m!6319888 () Bool)

(assert (=> b!5281924 m!6319888))

(declare-fun m!6319894 () Bool)

(assert (=> b!5281927 m!6319894))

(declare-fun m!6319896 () Bool)

(assert (=> b!5281920 m!6319896))

(declare-fun m!6319900 () Bool)

(assert (=> b!5281926 m!6319900))

(assert (=> b!5281925 m!6319634))

(declare-fun m!6319904 () Bool)

(assert (=> b!5281925 m!6319904))

(assert (=> b!5281623 d!1699834))

(declare-fun bs!1224464 () Bool)

(declare-fun d!1699850 () Bool)

(assert (= bs!1224464 (and d!1699850 b!5281639)))

(declare-fun lambda!266863 () Int)

(assert (=> bs!1224464 (= lambda!266863 lambda!266837)))

(declare-fun bs!1224466 () Bool)

(assert (= bs!1224466 (and d!1699850 d!1699834)))

(assert (=> bs!1224466 (= lambda!266863 lambda!266857)))

(declare-fun lt!2158852 () List!61015)

(assert (=> d!1699850 (forall!14313 lt!2158852 lambda!266863)))

(declare-fun e!3284233 () List!61015)

(assert (=> d!1699850 (= lt!2158852 e!3284233)))

(declare-fun c!915674 () Bool)

(assert (=> d!1699850 (= c!915674 ((_ is Cons!60892) zl!343))))

(assert (=> d!1699850 (= (unfocusZipperList!347 zl!343) lt!2158852)))

(declare-fun b!5281945 () Bool)

(assert (=> b!5281945 (= e!3284233 (Cons!60891 (generalisedConcat!574 (exprs!4789 (h!67340 zl!343))) (unfocusZipperList!347 (t!374219 zl!343))))))

(declare-fun b!5281946 () Bool)

(assert (=> b!5281946 (= e!3284233 Nil!60891)))

(assert (= (and d!1699850 c!915674) b!5281945))

(assert (= (and d!1699850 (not c!915674)) b!5281946))

(declare-fun m!6319918 () Bool)

(assert (=> d!1699850 m!6319918))

(assert (=> b!5281945 m!6319642))

(declare-fun m!6319920 () Bool)

(assert (=> b!5281945 m!6319920))

(assert (=> b!5281623 d!1699850))

(declare-fun d!1699860 () Bool)

(assert (=> d!1699860 (= (isEmpty!32844 (t!374218 (exprs!4789 (h!67340 zl!343)))) ((_ is Nil!60891) (t!374218 (exprs!4789 (h!67340 zl!343)))))))

(assert (=> b!5281644 d!1699860))

(declare-fun bs!1224468 () Bool)

(declare-fun d!1699862 () Bool)

(assert (= bs!1224468 (and d!1699862 b!5281639)))

(declare-fun lambda!266866 () Int)

(assert (=> bs!1224468 (= lambda!266866 lambda!266837)))

(declare-fun bs!1224469 () Bool)

(assert (= bs!1224469 (and d!1699862 d!1699834)))

(assert (=> bs!1224469 (= lambda!266866 lambda!266857)))

(declare-fun bs!1224470 () Bool)

(assert (= bs!1224470 (and d!1699862 d!1699850)))

(assert (=> bs!1224470 (= lambda!266866 lambda!266863)))

(assert (=> d!1699862 (= (inv!80509 setElem!33857) (forall!14313 (exprs!4789 setElem!33857) lambda!266866))))

(declare-fun bs!1224471 () Bool)

(assert (= bs!1224471 d!1699862))

(declare-fun m!6319922 () Bool)

(assert (=> bs!1224471 m!6319922))

(assert (=> setNonEmpty!33857 d!1699862))

(declare-fun d!1699864 () Bool)

(declare-fun c!915677 () Bool)

(declare-fun isEmpty!32846 (List!61014) Bool)

(assert (=> d!1699864 (= c!915677 (isEmpty!32846 (t!374217 s!2326)))))

(declare-fun e!3284240 () Bool)

(assert (=> d!1699864 (= (matchZipper!1149 lt!2158785 (t!374217 s!2326)) e!3284240)))

(declare-fun b!5281959 () Bool)

(declare-fun nullableZipper!1300 ((InoxSet Context!8578)) Bool)

(assert (=> b!5281959 (= e!3284240 (nullableZipper!1300 lt!2158785))))

(declare-fun b!5281960 () Bool)

(declare-fun head!11319 (List!61014) C!30080)

(declare-fun tail!10416 (List!61014) List!61014)

(assert (=> b!5281960 (= e!3284240 (matchZipper!1149 (derivationStepZipper!1148 lt!2158785 (head!11319 (t!374217 s!2326))) (tail!10416 (t!374217 s!2326))))))

(assert (= (and d!1699864 c!915677) b!5281959))

(assert (= (and d!1699864 (not c!915677)) b!5281960))

(declare-fun m!6319932 () Bool)

(assert (=> d!1699864 m!6319932))

(declare-fun m!6319934 () Bool)

(assert (=> b!5281959 m!6319934))

(declare-fun m!6319936 () Bool)

(assert (=> b!5281960 m!6319936))

(assert (=> b!5281960 m!6319936))

(declare-fun m!6319938 () Bool)

(assert (=> b!5281960 m!6319938))

(declare-fun m!6319940 () Bool)

(assert (=> b!5281960 m!6319940))

(assert (=> b!5281960 m!6319938))

(assert (=> b!5281960 m!6319940))

(declare-fun m!6319942 () Bool)

(assert (=> b!5281960 m!6319942))

(assert (=> b!5281624 d!1699864))

(declare-fun d!1699870 () Bool)

(declare-fun lt!2158866 () Regex!14905)

(assert (=> d!1699870 (validRegex!6641 lt!2158866)))

(assert (=> d!1699870 (= lt!2158866 (generalisedUnion!834 (unfocusZipperList!347 zl!343)))))

(assert (=> d!1699870 (= (unfocusZipper!647 zl!343) lt!2158866)))

(declare-fun bs!1224476 () Bool)

(assert (= bs!1224476 d!1699870))

(declare-fun m!6319944 () Bool)

(assert (=> bs!1224476 m!6319944))

(assert (=> bs!1224476 m!6319634))

(assert (=> bs!1224476 m!6319634))

(assert (=> bs!1224476 m!6319636))

(assert (=> b!5281645 d!1699870))

(declare-fun d!1699872 () Bool)

(declare-fun dynLambda!24076 (Int Context!8578) (InoxSet Context!8578))

(assert (=> d!1699872 (= (flatMap!632 lt!2158796 lambda!266836) (dynLambda!24076 lambda!266836 lt!2158781))))

(declare-fun lt!2158877 () Unit!153138)

(declare-fun choose!39412 ((InoxSet Context!8578) Context!8578 Int) Unit!153138)

(assert (=> d!1699872 (= lt!2158877 (choose!39412 lt!2158796 lt!2158781 lambda!266836))))

(assert (=> d!1699872 (= lt!2158796 (store ((as const (Array Context!8578 Bool)) false) lt!2158781 true))))

(assert (=> d!1699872 (= (lemmaFlatMapOnSingletonSet!164 lt!2158796 lt!2158781 lambda!266836) lt!2158877)))

(declare-fun b_lambda!203795 () Bool)

(assert (=> (not b_lambda!203795) (not d!1699872)))

(declare-fun bs!1224483 () Bool)

(assert (= bs!1224483 d!1699872))

(assert (=> bs!1224483 m!6319596))

(declare-fun m!6319970 () Bool)

(assert (=> bs!1224483 m!6319970))

(declare-fun m!6319972 () Bool)

(assert (=> bs!1224483 m!6319972))

(assert (=> bs!1224483 m!6319608))

(assert (=> b!5281641 d!1699872))

(declare-fun b!5282007 () Bool)

(declare-fun e!3284269 () (InoxSet Context!8578))

(declare-fun e!3284267 () (InoxSet Context!8578))

(assert (=> b!5282007 (= e!3284269 e!3284267)))

(declare-fun c!915703 () Bool)

(assert (=> b!5282007 (= c!915703 ((_ is Cons!60891) (exprs!4789 lt!2158789)))))

(declare-fun d!1699878 () Bool)

(declare-fun c!915702 () Bool)

(declare-fun e!3284268 () Bool)

(assert (=> d!1699878 (= c!915702 e!3284268)))

(declare-fun res!2240139 () Bool)

(assert (=> d!1699878 (=> (not res!2240139) (not e!3284268))))

(assert (=> d!1699878 (= res!2240139 ((_ is Cons!60891) (exprs!4789 lt!2158789)))))

(assert (=> d!1699878 (= (derivationStepZipperUp!277 lt!2158789 (h!67338 s!2326)) e!3284269)))

(declare-fun call!376166 () (InoxSet Context!8578))

(declare-fun b!5282008 () Bool)

(assert (=> b!5282008 (= e!3284269 ((_ map or) call!376166 (derivationStepZipperUp!277 (Context!8579 (t!374218 (exprs!4789 lt!2158789))) (h!67338 s!2326))))))

(declare-fun bm!376161 () Bool)

(assert (=> bm!376161 (= call!376166 (derivationStepZipperDown!353 (h!67339 (exprs!4789 lt!2158789)) (Context!8579 (t!374218 (exprs!4789 lt!2158789))) (h!67338 s!2326)))))

(declare-fun b!5282009 () Bool)

(assert (=> b!5282009 (= e!3284268 (nullable!5074 (h!67339 (exprs!4789 lt!2158789))))))

(declare-fun b!5282010 () Bool)

(assert (=> b!5282010 (= e!3284267 call!376166)))

(declare-fun b!5282011 () Bool)

(assert (=> b!5282011 (= e!3284267 ((as const (Array Context!8578 Bool)) false))))

(assert (= (and d!1699878 res!2240139) b!5282009))

(assert (= (and d!1699878 c!915702) b!5282008))

(assert (= (and d!1699878 (not c!915702)) b!5282007))

(assert (= (and b!5282007 c!915703) b!5282010))

(assert (= (and b!5282007 (not c!915703)) b!5282011))

(assert (= (or b!5282008 b!5282010) bm!376161))

(declare-fun m!6319974 () Bool)

(assert (=> b!5282008 m!6319974))

(declare-fun m!6319976 () Bool)

(assert (=> bm!376161 m!6319976))

(declare-fun m!6319978 () Bool)

(assert (=> b!5282009 m!6319978))

(assert (=> b!5281641 d!1699878))

(declare-fun b!5282023 () Bool)

(declare-fun e!3284278 () (InoxSet Context!8578))

(declare-fun e!3284276 () (InoxSet Context!8578))

(assert (=> b!5282023 (= e!3284278 e!3284276)))

(declare-fun c!915710 () Bool)

(assert (=> b!5282023 (= c!915710 ((_ is Cons!60891) (exprs!4789 lt!2158781)))))

(declare-fun d!1699880 () Bool)

(declare-fun c!915709 () Bool)

(declare-fun e!3284277 () Bool)

(assert (=> d!1699880 (= c!915709 e!3284277)))

(declare-fun res!2240141 () Bool)

(assert (=> d!1699880 (=> (not res!2240141) (not e!3284277))))

(assert (=> d!1699880 (= res!2240141 ((_ is Cons!60891) (exprs!4789 lt!2158781)))))

(assert (=> d!1699880 (= (derivationStepZipperUp!277 lt!2158781 (h!67338 s!2326)) e!3284278)))

(declare-fun b!5282024 () Bool)

(declare-fun call!376173 () (InoxSet Context!8578))

(assert (=> b!5282024 (= e!3284278 ((_ map or) call!376173 (derivationStepZipperUp!277 (Context!8579 (t!374218 (exprs!4789 lt!2158781))) (h!67338 s!2326))))))

(declare-fun bm!376168 () Bool)

(assert (=> bm!376168 (= call!376173 (derivationStepZipperDown!353 (h!67339 (exprs!4789 lt!2158781)) (Context!8579 (t!374218 (exprs!4789 lt!2158781))) (h!67338 s!2326)))))

(declare-fun b!5282025 () Bool)

(assert (=> b!5282025 (= e!3284277 (nullable!5074 (h!67339 (exprs!4789 lt!2158781))))))

(declare-fun b!5282026 () Bool)

(assert (=> b!5282026 (= e!3284276 call!376173)))

(declare-fun b!5282027 () Bool)

(assert (=> b!5282027 (= e!3284276 ((as const (Array Context!8578 Bool)) false))))

(assert (= (and d!1699880 res!2240141) b!5282025))

(assert (= (and d!1699880 c!915709) b!5282024))

(assert (= (and d!1699880 (not c!915709)) b!5282023))

(assert (= (and b!5282023 c!915710) b!5282026))

(assert (= (and b!5282023 (not c!915710)) b!5282027))

(assert (= (or b!5282024 b!5282026) bm!376168))

(declare-fun m!6319990 () Bool)

(assert (=> b!5282024 m!6319990))

(declare-fun m!6319998 () Bool)

(assert (=> bm!376168 m!6319998))

(declare-fun m!6320000 () Bool)

(assert (=> b!5282025 m!6320000))

(assert (=> b!5281641 d!1699880))

(declare-fun bs!1224487 () Bool)

(declare-fun d!1699886 () Bool)

(assert (= bs!1224487 (and d!1699886 b!5281613)))

(declare-fun lambda!266887 () Int)

(assert (=> bs!1224487 (= lambda!266887 lambda!266836)))

(assert (=> d!1699886 true))

(assert (=> d!1699886 (= (derivationStepZipper!1148 lt!2158796 (h!67338 s!2326)) (flatMap!632 lt!2158796 lambda!266887))))

(declare-fun bs!1224488 () Bool)

(assert (= bs!1224488 d!1699886))

(declare-fun m!6320022 () Bool)

(assert (=> bs!1224488 m!6320022))

(assert (=> b!5281641 d!1699886))

(declare-fun d!1699898 () Bool)

(declare-fun choose!39415 ((InoxSet Context!8578) Int) (InoxSet Context!8578))

(assert (=> d!1699898 (= (flatMap!632 lt!2158796 lambda!266836) (choose!39415 lt!2158796 lambda!266836))))

(declare-fun bs!1224489 () Bool)

(assert (= bs!1224489 d!1699898))

(declare-fun m!6320024 () Bool)

(assert (=> bs!1224489 m!6320024))

(assert (=> b!5281641 d!1699898))

(declare-fun e!3284308 () Bool)

(declare-fun d!1699900 () Bool)

(assert (=> d!1699900 (= (matchZipper!1149 ((_ map or) lt!2158797 lt!2158782) (t!374217 s!2326)) e!3284308)))

(declare-fun res!2240163 () Bool)

(assert (=> d!1699900 (=> res!2240163 e!3284308)))

(assert (=> d!1699900 (= res!2240163 (matchZipper!1149 lt!2158797 (t!374217 s!2326)))))

(declare-fun lt!2158881 () Unit!153138)

(declare-fun choose!39416 ((InoxSet Context!8578) (InoxSet Context!8578) List!61014) Unit!153138)

(assert (=> d!1699900 (= lt!2158881 (choose!39416 lt!2158797 lt!2158782 (t!374217 s!2326)))))

(assert (=> d!1699900 (= (lemmaZipperConcatMatchesSameAsBothZippers!142 lt!2158797 lt!2158782 (t!374217 s!2326)) lt!2158881)))

(declare-fun b!5282079 () Bool)

(assert (=> b!5282079 (= e!3284308 (matchZipper!1149 lt!2158782 (t!374217 s!2326)))))

(assert (= (and d!1699900 (not res!2240163)) b!5282079))

(assert (=> d!1699900 m!6319582))

(assert (=> d!1699900 m!6319520))

(declare-fun m!6320026 () Bool)

(assert (=> d!1699900 m!6320026))

(assert (=> b!5282079 m!6319576))

(assert (=> b!5281643 d!1699900))

(declare-fun d!1699902 () Bool)

(declare-fun c!915727 () Bool)

(assert (=> d!1699902 (= c!915727 (isEmpty!32846 (t!374217 s!2326)))))

(declare-fun e!3284309 () Bool)

(assert (=> d!1699902 (= (matchZipper!1149 lt!2158797 (t!374217 s!2326)) e!3284309)))

(declare-fun b!5282080 () Bool)

(assert (=> b!5282080 (= e!3284309 (nullableZipper!1300 lt!2158797))))

(declare-fun b!5282081 () Bool)

(assert (=> b!5282081 (= e!3284309 (matchZipper!1149 (derivationStepZipper!1148 lt!2158797 (head!11319 (t!374217 s!2326))) (tail!10416 (t!374217 s!2326))))))

(assert (= (and d!1699902 c!915727) b!5282080))

(assert (= (and d!1699902 (not c!915727)) b!5282081))

(assert (=> d!1699902 m!6319932))

(declare-fun m!6320028 () Bool)

(assert (=> b!5282080 m!6320028))

(assert (=> b!5282081 m!6319936))

(assert (=> b!5282081 m!6319936))

(declare-fun m!6320030 () Bool)

(assert (=> b!5282081 m!6320030))

(assert (=> b!5282081 m!6319940))

(assert (=> b!5282081 m!6320030))

(assert (=> b!5282081 m!6319940))

(declare-fun m!6320032 () Bool)

(assert (=> b!5282081 m!6320032))

(assert (=> b!5281643 d!1699902))

(declare-fun d!1699904 () Bool)

(declare-fun c!915728 () Bool)

(assert (=> d!1699904 (= c!915728 (isEmpty!32846 (t!374217 s!2326)))))

(declare-fun e!3284310 () Bool)

(assert (=> d!1699904 (= (matchZipper!1149 ((_ map or) lt!2158797 lt!2158782) (t!374217 s!2326)) e!3284310)))

(declare-fun b!5282082 () Bool)

(assert (=> b!5282082 (= e!3284310 (nullableZipper!1300 ((_ map or) lt!2158797 lt!2158782)))))

(declare-fun b!5282083 () Bool)

(assert (=> b!5282083 (= e!3284310 (matchZipper!1149 (derivationStepZipper!1148 ((_ map or) lt!2158797 lt!2158782) (head!11319 (t!374217 s!2326))) (tail!10416 (t!374217 s!2326))))))

(assert (= (and d!1699904 c!915728) b!5282082))

(assert (= (and d!1699904 (not c!915728)) b!5282083))

(assert (=> d!1699904 m!6319932))

(declare-fun m!6320034 () Bool)

(assert (=> b!5282082 m!6320034))

(assert (=> b!5282083 m!6319936))

(assert (=> b!5282083 m!6319936))

(declare-fun m!6320036 () Bool)

(assert (=> b!5282083 m!6320036))

(assert (=> b!5282083 m!6319940))

(assert (=> b!5282083 m!6320036))

(assert (=> b!5282083 m!6319940))

(declare-fun m!6320038 () Bool)

(assert (=> b!5282083 m!6320038))

(assert (=> b!5281643 d!1699904))

(declare-fun bs!1224517 () Bool)

(declare-fun b!5282241 () Bool)

(assert (= bs!1224517 (and b!5282241 b!5281634)))

(declare-fun lambda!266900 () Int)

(assert (=> bs!1224517 (not (= lambda!266900 lambda!266834))))

(assert (=> bs!1224517 (not (= lambda!266900 lambda!266835))))

(assert (=> b!5282241 true))

(assert (=> b!5282241 true))

(declare-fun bs!1224518 () Bool)

(declare-fun b!5282247 () Bool)

(assert (= bs!1224518 (and b!5282247 b!5281634)))

(declare-fun lambda!266901 () Int)

(assert (=> bs!1224518 (not (= lambda!266901 lambda!266834))))

(assert (=> bs!1224518 (= lambda!266901 lambda!266835)))

(declare-fun bs!1224519 () Bool)

(assert (= bs!1224519 (and b!5282247 b!5282241)))

(assert (=> bs!1224519 (not (= lambda!266901 lambda!266900))))

(assert (=> b!5282247 true))

(assert (=> b!5282247 true))

(declare-fun bm!376195 () Bool)

(declare-fun call!376200 () Bool)

(assert (=> bm!376195 (= call!376200 (isEmpty!32846 s!2326))))

(declare-fun b!5282240 () Bool)

(declare-fun e!3284393 () Bool)

(assert (=> b!5282240 (= e!3284393 (matchRSpec!2008 (regTwo!30323 r!7292) s!2326))))

(declare-fun d!1699906 () Bool)

(declare-fun c!915767 () Bool)

(assert (=> d!1699906 (= c!915767 ((_ is EmptyExpr!14905) r!7292))))

(declare-fun e!3284392 () Bool)

(assert (=> d!1699906 (= (matchRSpec!2008 r!7292 s!2326) e!3284392)))

(declare-fun e!3284395 () Bool)

(declare-fun call!376201 () Bool)

(assert (=> b!5282241 (= e!3284395 call!376201)))

(declare-fun b!5282242 () Bool)

(declare-fun c!915765 () Bool)

(assert (=> b!5282242 (= c!915765 ((_ is ElementMatch!14905) r!7292))))

(declare-fun e!3284396 () Bool)

(declare-fun e!3284391 () Bool)

(assert (=> b!5282242 (= e!3284396 e!3284391)))

(declare-fun b!5282243 () Bool)

(assert (=> b!5282243 (= e!3284392 call!376200)))

(declare-fun bm!376196 () Bool)

(declare-fun c!915764 () Bool)

(assert (=> bm!376196 (= call!376201 (Exists!2086 (ite c!915764 lambda!266900 lambda!266901)))))

(declare-fun b!5282244 () Bool)

(declare-fun c!915766 () Bool)

(assert (=> b!5282244 (= c!915766 ((_ is Union!14905) r!7292))))

(declare-fun e!3284394 () Bool)

(assert (=> b!5282244 (= e!3284391 e!3284394)))

(declare-fun b!5282245 () Bool)

(assert (=> b!5282245 (= e!3284391 (= s!2326 (Cons!60890 (c!915577 r!7292) Nil!60890)))))

(declare-fun b!5282246 () Bool)

(assert (=> b!5282246 (= e!3284392 e!3284396)))

(declare-fun res!2240197 () Bool)

(assert (=> b!5282246 (= res!2240197 (not ((_ is EmptyLang!14905) r!7292)))))

(assert (=> b!5282246 (=> (not res!2240197) (not e!3284396))))

(declare-fun e!3284397 () Bool)

(assert (=> b!5282247 (= e!3284397 call!376201)))

(declare-fun b!5282248 () Bool)

(assert (=> b!5282248 (= e!3284394 e!3284397)))

(assert (=> b!5282248 (= c!915764 ((_ is Star!14905) r!7292))))

(declare-fun b!5282249 () Bool)

(assert (=> b!5282249 (= e!3284394 e!3284393)))

(declare-fun res!2240196 () Bool)

(assert (=> b!5282249 (= res!2240196 (matchRSpec!2008 (regOne!30323 r!7292) s!2326))))

(assert (=> b!5282249 (=> res!2240196 e!3284393)))

(declare-fun b!5282250 () Bool)

(declare-fun res!2240198 () Bool)

(assert (=> b!5282250 (=> res!2240198 e!3284395)))

(assert (=> b!5282250 (= res!2240198 call!376200)))

(assert (=> b!5282250 (= e!3284397 e!3284395)))

(assert (= (and d!1699906 c!915767) b!5282243))

(assert (= (and d!1699906 (not c!915767)) b!5282246))

(assert (= (and b!5282246 res!2240197) b!5282242))

(assert (= (and b!5282242 c!915765) b!5282245))

(assert (= (and b!5282242 (not c!915765)) b!5282244))

(assert (= (and b!5282244 c!915766) b!5282249))

(assert (= (and b!5282244 (not c!915766)) b!5282248))

(assert (= (and b!5282249 (not res!2240196)) b!5282240))

(assert (= (and b!5282248 c!915764) b!5282250))

(assert (= (and b!5282248 (not c!915764)) b!5282247))

(assert (= (and b!5282250 (not res!2240198)) b!5282241))

(assert (= (or b!5282241 b!5282247) bm!376196))

(assert (= (or b!5282243 b!5282250) bm!376195))

(declare-fun m!6320118 () Bool)

(assert (=> bm!376195 m!6320118))

(declare-fun m!6320120 () Bool)

(assert (=> b!5282240 m!6320120))

(declare-fun m!6320122 () Bool)

(assert (=> bm!376196 m!6320122))

(declare-fun m!6320124 () Bool)

(assert (=> b!5282249 m!6320124))

(assert (=> b!5281622 d!1699906))

(declare-fun b!5282279 () Bool)

(declare-fun res!2240218 () Bool)

(declare-fun e!3284414 () Bool)

(assert (=> b!5282279 (=> (not res!2240218) (not e!3284414))))

(declare-fun call!376204 () Bool)

(assert (=> b!5282279 (= res!2240218 (not call!376204))))

(declare-fun bm!376199 () Bool)

(assert (=> bm!376199 (= call!376204 (isEmpty!32846 s!2326))))

(declare-fun b!5282281 () Bool)

(declare-fun e!3284413 () Bool)

(declare-fun lt!2158894 () Bool)

(assert (=> b!5282281 (= e!3284413 (not lt!2158894))))

(declare-fun b!5282282 () Bool)

(declare-fun e!3284415 () Bool)

(declare-fun derivativeStep!4121 (Regex!14905 C!30080) Regex!14905)

(assert (=> b!5282282 (= e!3284415 (matchR!7090 (derivativeStep!4121 r!7292 (head!11319 s!2326)) (tail!10416 s!2326)))))

(declare-fun b!5282283 () Bool)

(declare-fun e!3284416 () Bool)

(declare-fun e!3284412 () Bool)

(assert (=> b!5282283 (= e!3284416 e!3284412)))

(declare-fun res!2240220 () Bool)

(assert (=> b!5282283 (=> res!2240220 e!3284412)))

(assert (=> b!5282283 (= res!2240220 call!376204)))

(declare-fun b!5282284 () Bool)

(assert (=> b!5282284 (= e!3284412 (not (= (head!11319 s!2326) (c!915577 r!7292))))))

(declare-fun b!5282285 () Bool)

(assert (=> b!5282285 (= e!3284414 (= (head!11319 s!2326) (c!915577 r!7292)))))

(declare-fun b!5282280 () Bool)

(declare-fun res!2240221 () Bool)

(declare-fun e!3284417 () Bool)

(assert (=> b!5282280 (=> res!2240221 e!3284417)))

(assert (=> b!5282280 (= res!2240221 e!3284414)))

(declare-fun res!2240216 () Bool)

(assert (=> b!5282280 (=> (not res!2240216) (not e!3284414))))

(assert (=> b!5282280 (= res!2240216 lt!2158894)))

(declare-fun d!1699944 () Bool)

(declare-fun e!3284418 () Bool)

(assert (=> d!1699944 e!3284418))

(declare-fun c!915776 () Bool)

(assert (=> d!1699944 (= c!915776 ((_ is EmptyExpr!14905) r!7292))))

(assert (=> d!1699944 (= lt!2158894 e!3284415)))

(declare-fun c!915775 () Bool)

(assert (=> d!1699944 (= c!915775 (isEmpty!32846 s!2326))))

(assert (=> d!1699944 (validRegex!6641 r!7292)))

(assert (=> d!1699944 (= (matchR!7090 r!7292 s!2326) lt!2158894)))

(declare-fun b!5282286 () Bool)

(assert (=> b!5282286 (= e!3284417 e!3284416)))

(declare-fun res!2240215 () Bool)

(assert (=> b!5282286 (=> (not res!2240215) (not e!3284416))))

(assert (=> b!5282286 (= res!2240215 (not lt!2158894))))

(declare-fun b!5282287 () Bool)

(assert (=> b!5282287 (= e!3284418 (= lt!2158894 call!376204))))

(declare-fun b!5282288 () Bool)

(declare-fun res!2240222 () Bool)

(assert (=> b!5282288 (=> (not res!2240222) (not e!3284414))))

(assert (=> b!5282288 (= res!2240222 (isEmpty!32846 (tail!10416 s!2326)))))

(declare-fun b!5282289 () Bool)

(declare-fun res!2240219 () Bool)

(assert (=> b!5282289 (=> res!2240219 e!3284412)))

(assert (=> b!5282289 (= res!2240219 (not (isEmpty!32846 (tail!10416 s!2326))))))

(declare-fun b!5282290 () Bool)

(assert (=> b!5282290 (= e!3284415 (nullable!5074 r!7292))))

(declare-fun b!5282291 () Bool)

(declare-fun res!2240217 () Bool)

(assert (=> b!5282291 (=> res!2240217 e!3284417)))

(assert (=> b!5282291 (= res!2240217 (not ((_ is ElementMatch!14905) r!7292)))))

(assert (=> b!5282291 (= e!3284413 e!3284417)))

(declare-fun b!5282292 () Bool)

(assert (=> b!5282292 (= e!3284418 e!3284413)))

(declare-fun c!915774 () Bool)

(assert (=> b!5282292 (= c!915774 ((_ is EmptyLang!14905) r!7292))))

(assert (= (and d!1699944 c!915775) b!5282290))

(assert (= (and d!1699944 (not c!915775)) b!5282282))

(assert (= (and d!1699944 c!915776) b!5282287))

(assert (= (and d!1699944 (not c!915776)) b!5282292))

(assert (= (and b!5282292 c!915774) b!5282281))

(assert (= (and b!5282292 (not c!915774)) b!5282291))

(assert (= (and b!5282291 (not res!2240217)) b!5282280))

(assert (= (and b!5282280 res!2240216) b!5282279))

(assert (= (and b!5282279 res!2240218) b!5282288))

(assert (= (and b!5282288 res!2240222) b!5282285))

(assert (= (and b!5282280 (not res!2240221)) b!5282286))

(assert (= (and b!5282286 res!2240215) b!5282283))

(assert (= (and b!5282283 (not res!2240220)) b!5282289))

(assert (= (and b!5282289 (not res!2240219)) b!5282284))

(assert (= (or b!5282287 b!5282279 b!5282283) bm!376199))

(assert (=> d!1699944 m!6320118))

(assert (=> d!1699944 m!6319556))

(declare-fun m!6320126 () Bool)

(assert (=> b!5282285 m!6320126))

(assert (=> b!5282282 m!6320126))

(assert (=> b!5282282 m!6320126))

(declare-fun m!6320128 () Bool)

(assert (=> b!5282282 m!6320128))

(declare-fun m!6320130 () Bool)

(assert (=> b!5282282 m!6320130))

(assert (=> b!5282282 m!6320128))

(assert (=> b!5282282 m!6320130))

(declare-fun m!6320132 () Bool)

(assert (=> b!5282282 m!6320132))

(assert (=> b!5282289 m!6320130))

(assert (=> b!5282289 m!6320130))

(declare-fun m!6320134 () Bool)

(assert (=> b!5282289 m!6320134))

(assert (=> bm!376199 m!6320118))

(assert (=> b!5282288 m!6320130))

(assert (=> b!5282288 m!6320130))

(assert (=> b!5282288 m!6320134))

(declare-fun m!6320136 () Bool)

(assert (=> b!5282290 m!6320136))

(assert (=> b!5282284 m!6320126))

(assert (=> b!5281622 d!1699944))

(declare-fun d!1699946 () Bool)

(assert (=> d!1699946 (= (matchR!7090 r!7292 s!2326) (matchRSpec!2008 r!7292 s!2326))))

(declare-fun lt!2158897 () Unit!153138)

(declare-fun choose!39418 (Regex!14905 List!61014) Unit!153138)

(assert (=> d!1699946 (= lt!2158897 (choose!39418 r!7292 s!2326))))

(assert (=> d!1699946 (validRegex!6641 r!7292)))

(assert (=> d!1699946 (= (mainMatchTheorem!2008 r!7292 s!2326) lt!2158897)))

(declare-fun bs!1224520 () Bool)

(assert (= bs!1224520 d!1699946))

(assert (=> bs!1224520 m!6319550))

(assert (=> bs!1224520 m!6319548))

(declare-fun m!6320138 () Bool)

(assert (=> bs!1224520 m!6320138))

(assert (=> bs!1224520 m!6319556))

(assert (=> b!5281622 d!1699946))

(declare-fun d!1699948 () Bool)

(declare-fun e!3284421 () Bool)

(assert (=> d!1699948 e!3284421))

(declare-fun res!2240225 () Bool)

(assert (=> d!1699948 (=> (not res!2240225) (not e!3284421))))

(declare-fun lt!2158900 () List!61016)

(declare-fun noDuplicate!1255 (List!61016) Bool)

(assert (=> d!1699948 (= res!2240225 (noDuplicate!1255 lt!2158900))))

(declare-fun choose!39419 ((InoxSet Context!8578)) List!61016)

(assert (=> d!1699948 (= lt!2158900 (choose!39419 z!1189))))

(assert (=> d!1699948 (= (toList!8689 z!1189) lt!2158900)))

(declare-fun b!5282295 () Bool)

(declare-fun content!10841 (List!61016) (InoxSet Context!8578))

(assert (=> b!5282295 (= e!3284421 (= (content!10841 lt!2158900) z!1189))))

(assert (= (and d!1699948 res!2240225) b!5282295))

(declare-fun m!6320140 () Bool)

(assert (=> d!1699948 m!6320140))

(declare-fun m!6320142 () Bool)

(assert (=> d!1699948 m!6320142))

(declare-fun m!6320144 () Bool)

(assert (=> b!5282295 m!6320144))

(assert (=> b!5281642 d!1699948))

(declare-fun d!1699950 () Bool)

(assert (=> d!1699950 (= (matchR!7090 lt!2158769 s!2326) (matchZipper!1149 lt!2158780 s!2326))))

(declare-fun lt!2158903 () Unit!153138)

(declare-fun choose!39420 ((InoxSet Context!8578) List!61016 Regex!14905 List!61014) Unit!153138)

(assert (=> d!1699950 (= lt!2158903 (choose!39420 lt!2158780 (Cons!60892 lt!2158789 Nil!60892) lt!2158769 s!2326))))

(assert (=> d!1699950 (validRegex!6641 lt!2158769)))

(assert (=> d!1699950 (= (theoremZipperRegexEquiv!315 lt!2158780 (Cons!60892 lt!2158789 Nil!60892) lt!2158769 s!2326) lt!2158903)))

(declare-fun bs!1224521 () Bool)

(assert (= bs!1224521 d!1699950))

(assert (=> bs!1224521 m!6319560))

(assert (=> bs!1224521 m!6319566))

(declare-fun m!6320146 () Bool)

(assert (=> bs!1224521 m!6320146))

(declare-fun m!6320148 () Bool)

(assert (=> bs!1224521 m!6320148))

(assert (=> b!5281639 d!1699950))

(declare-fun d!1699952 () Bool)

(assert (=> d!1699952 (= (matchR!7090 lt!2158784 s!2326) (matchZipper!1149 lt!2158796 s!2326))))

(declare-fun lt!2158904 () Unit!153138)

(assert (=> d!1699952 (= lt!2158904 (choose!39420 lt!2158796 lt!2158774 lt!2158784 s!2326))))

(assert (=> d!1699952 (validRegex!6641 lt!2158784)))

(assert (=> d!1699952 (= (theoremZipperRegexEquiv!315 lt!2158796 lt!2158774 lt!2158784 s!2326) lt!2158904)))

(declare-fun bs!1224522 () Bool)

(assert (= bs!1224522 d!1699952))

(assert (=> bs!1224522 m!6319574))

(assert (=> bs!1224522 m!6319572))

(declare-fun m!6320150 () Bool)

(assert (=> bs!1224522 m!6320150))

(declare-fun m!6320152 () Bool)

(assert (=> bs!1224522 m!6320152))

(assert (=> b!5281639 d!1699952))

(declare-fun d!1699954 () Bool)

(declare-fun res!2240230 () Bool)

(declare-fun e!3284426 () Bool)

(assert (=> d!1699954 (=> res!2240230 e!3284426)))

(assert (=> d!1699954 (= res!2240230 ((_ is Nil!60891) lt!2158798))))

(assert (=> d!1699954 (= (forall!14313 lt!2158798 lambda!266837) e!3284426)))

(declare-fun b!5282300 () Bool)

(declare-fun e!3284427 () Bool)

(assert (=> b!5282300 (= e!3284426 e!3284427)))

(declare-fun res!2240231 () Bool)

(assert (=> b!5282300 (=> (not res!2240231) (not e!3284427))))

(declare-fun dynLambda!24077 (Int Regex!14905) Bool)

(assert (=> b!5282300 (= res!2240231 (dynLambda!24077 lambda!266837 (h!67339 lt!2158798)))))

(declare-fun b!5282301 () Bool)

(assert (=> b!5282301 (= e!3284427 (forall!14313 (t!374218 lt!2158798) lambda!266837))))

(assert (= (and d!1699954 (not res!2240230)) b!5282300))

(assert (= (and b!5282300 res!2240231) b!5282301))

(declare-fun b_lambda!203807 () Bool)

(assert (=> (not b_lambda!203807) (not b!5282300)))

(declare-fun m!6320154 () Bool)

(assert (=> b!5282300 m!6320154))

(declare-fun m!6320156 () Bool)

(assert (=> b!5282301 m!6320156))

(assert (=> b!5281639 d!1699954))

(declare-fun bs!1224523 () Bool)

(declare-fun d!1699956 () Bool)

(assert (= bs!1224523 (and d!1699956 b!5281639)))

(declare-fun lambda!266904 () Int)

(assert (=> bs!1224523 (= lambda!266904 lambda!266837)))

(declare-fun bs!1224524 () Bool)

(assert (= bs!1224524 (and d!1699956 d!1699834)))

(assert (=> bs!1224524 (= lambda!266904 lambda!266857)))

(declare-fun bs!1224525 () Bool)

(assert (= bs!1224525 (and d!1699956 d!1699850)))

(assert (=> bs!1224525 (= lambda!266904 lambda!266863)))

(declare-fun bs!1224526 () Bool)

(assert (= bs!1224526 (and d!1699956 d!1699862)))

(assert (=> bs!1224526 (= lambda!266904 lambda!266866)))

(declare-fun b!5282322 () Bool)

(declare-fun e!3284443 () Bool)

(declare-fun e!3284440 () Bool)

(assert (=> b!5282322 (= e!3284443 e!3284440)))

(declare-fun c!915788 () Bool)

(assert (=> b!5282322 (= c!915788 (isEmpty!32844 lt!2158798))))

(declare-fun b!5282323 () Bool)

(declare-fun e!3284442 () Regex!14905)

(assert (=> b!5282323 (= e!3284442 (Concat!23750 (h!67339 lt!2158798) (generalisedConcat!574 (t!374218 lt!2158798))))))

(declare-fun b!5282324 () Bool)

(declare-fun e!3284444 () Bool)

(declare-fun lt!2158907 () Regex!14905)

(declare-fun isConcat!358 (Regex!14905) Bool)

(assert (=> b!5282324 (= e!3284444 (isConcat!358 lt!2158907))))

(declare-fun b!5282325 () Bool)

(declare-fun isEmptyExpr!835 (Regex!14905) Bool)

(assert (=> b!5282325 (= e!3284440 (isEmptyExpr!835 lt!2158907))))

(declare-fun b!5282326 () Bool)

(assert (=> b!5282326 (= e!3284444 (= lt!2158907 (head!11318 lt!2158798)))))

(declare-fun b!5282327 () Bool)

(declare-fun e!3284441 () Regex!14905)

(assert (=> b!5282327 (= e!3284441 e!3284442)))

(declare-fun c!915787 () Bool)

(assert (=> b!5282327 (= c!915787 ((_ is Cons!60891) lt!2158798))))

(declare-fun b!5282328 () Bool)

(assert (=> b!5282328 (= e!3284441 (h!67339 lt!2158798))))

(assert (=> d!1699956 e!3284443))

(declare-fun res!2240236 () Bool)

(assert (=> d!1699956 (=> (not res!2240236) (not e!3284443))))

(assert (=> d!1699956 (= res!2240236 (validRegex!6641 lt!2158907))))

(assert (=> d!1699956 (= lt!2158907 e!3284441)))

(declare-fun c!915786 () Bool)

(declare-fun e!3284445 () Bool)

(assert (=> d!1699956 (= c!915786 e!3284445)))

(declare-fun res!2240237 () Bool)

(assert (=> d!1699956 (=> (not res!2240237) (not e!3284445))))

(assert (=> d!1699956 (= res!2240237 ((_ is Cons!60891) lt!2158798))))

(assert (=> d!1699956 (forall!14313 lt!2158798 lambda!266904)))

(assert (=> d!1699956 (= (generalisedConcat!574 lt!2158798) lt!2158907)))

(declare-fun b!5282329 () Bool)

(assert (=> b!5282329 (= e!3284445 (isEmpty!32844 (t!374218 lt!2158798)))))

(declare-fun b!5282330 () Bool)

(assert (=> b!5282330 (= e!3284442 EmptyExpr!14905)))

(declare-fun b!5282331 () Bool)

(assert (=> b!5282331 (= e!3284440 e!3284444)))

(declare-fun c!915785 () Bool)

(assert (=> b!5282331 (= c!915785 (isEmpty!32844 (tail!10415 lt!2158798)))))

(assert (= (and d!1699956 res!2240237) b!5282329))

(assert (= (and d!1699956 c!915786) b!5282328))

(assert (= (and d!1699956 (not c!915786)) b!5282327))

(assert (= (and b!5282327 c!915787) b!5282323))

(assert (= (and b!5282327 (not c!915787)) b!5282330))

(assert (= (and d!1699956 res!2240236) b!5282322))

(assert (= (and b!5282322 c!915788) b!5282325))

(assert (= (and b!5282322 (not c!915788)) b!5282331))

(assert (= (and b!5282331 c!915785) b!5282326))

(assert (= (and b!5282331 (not c!915785)) b!5282324))

(declare-fun m!6320158 () Bool)

(assert (=> b!5282331 m!6320158))

(assert (=> b!5282331 m!6320158))

(declare-fun m!6320160 () Bool)

(assert (=> b!5282331 m!6320160))

(declare-fun m!6320162 () Bool)

(assert (=> b!5282323 m!6320162))

(declare-fun m!6320164 () Bool)

(assert (=> b!5282324 m!6320164))

(declare-fun m!6320166 () Bool)

(assert (=> d!1699956 m!6320166))

(declare-fun m!6320168 () Bool)

(assert (=> d!1699956 m!6320168))

(declare-fun m!6320170 () Bool)

(assert (=> b!5282329 m!6320170))

(declare-fun m!6320172 () Bool)

(assert (=> b!5282326 m!6320172))

(declare-fun m!6320174 () Bool)

(assert (=> b!5282325 m!6320174))

(declare-fun m!6320176 () Bool)

(assert (=> b!5282322 m!6320176))

(assert (=> b!5281639 d!1699956))

(declare-fun b!5282332 () Bool)

(declare-fun res!2240241 () Bool)

(declare-fun e!3284448 () Bool)

(assert (=> b!5282332 (=> (not res!2240241) (not e!3284448))))

(declare-fun call!376205 () Bool)

(assert (=> b!5282332 (= res!2240241 (not call!376205))))

(declare-fun bm!376200 () Bool)

(assert (=> bm!376200 (= call!376205 (isEmpty!32846 s!2326))))

(declare-fun b!5282334 () Bool)

(declare-fun e!3284447 () Bool)

(declare-fun lt!2158908 () Bool)

(assert (=> b!5282334 (= e!3284447 (not lt!2158908))))

(declare-fun b!5282335 () Bool)

(declare-fun e!3284449 () Bool)

(assert (=> b!5282335 (= e!3284449 (matchR!7090 (derivativeStep!4121 lt!2158784 (head!11319 s!2326)) (tail!10416 s!2326)))))

(declare-fun b!5282336 () Bool)

(declare-fun e!3284450 () Bool)

(declare-fun e!3284446 () Bool)

(assert (=> b!5282336 (= e!3284450 e!3284446)))

(declare-fun res!2240243 () Bool)

(assert (=> b!5282336 (=> res!2240243 e!3284446)))

(assert (=> b!5282336 (= res!2240243 call!376205)))

(declare-fun b!5282337 () Bool)

(assert (=> b!5282337 (= e!3284446 (not (= (head!11319 s!2326) (c!915577 lt!2158784))))))

(declare-fun b!5282338 () Bool)

(assert (=> b!5282338 (= e!3284448 (= (head!11319 s!2326) (c!915577 lt!2158784)))))

(declare-fun b!5282333 () Bool)

(declare-fun res!2240244 () Bool)

(declare-fun e!3284451 () Bool)

(assert (=> b!5282333 (=> res!2240244 e!3284451)))

(assert (=> b!5282333 (= res!2240244 e!3284448)))

(declare-fun res!2240239 () Bool)

(assert (=> b!5282333 (=> (not res!2240239) (not e!3284448))))

(assert (=> b!5282333 (= res!2240239 lt!2158908)))

(declare-fun d!1699958 () Bool)

(declare-fun e!3284452 () Bool)

(assert (=> d!1699958 e!3284452))

(declare-fun c!915791 () Bool)

(assert (=> d!1699958 (= c!915791 ((_ is EmptyExpr!14905) lt!2158784))))

(assert (=> d!1699958 (= lt!2158908 e!3284449)))

(declare-fun c!915790 () Bool)

(assert (=> d!1699958 (= c!915790 (isEmpty!32846 s!2326))))

(assert (=> d!1699958 (validRegex!6641 lt!2158784)))

(assert (=> d!1699958 (= (matchR!7090 lt!2158784 s!2326) lt!2158908)))

(declare-fun b!5282339 () Bool)

(assert (=> b!5282339 (= e!3284451 e!3284450)))

(declare-fun res!2240238 () Bool)

(assert (=> b!5282339 (=> (not res!2240238) (not e!3284450))))

(assert (=> b!5282339 (= res!2240238 (not lt!2158908))))

(declare-fun b!5282340 () Bool)

(assert (=> b!5282340 (= e!3284452 (= lt!2158908 call!376205))))

(declare-fun b!5282341 () Bool)

(declare-fun res!2240245 () Bool)

(assert (=> b!5282341 (=> (not res!2240245) (not e!3284448))))

(assert (=> b!5282341 (= res!2240245 (isEmpty!32846 (tail!10416 s!2326)))))

(declare-fun b!5282342 () Bool)

(declare-fun res!2240242 () Bool)

(assert (=> b!5282342 (=> res!2240242 e!3284446)))

(assert (=> b!5282342 (= res!2240242 (not (isEmpty!32846 (tail!10416 s!2326))))))

(declare-fun b!5282343 () Bool)

(assert (=> b!5282343 (= e!3284449 (nullable!5074 lt!2158784))))

(declare-fun b!5282344 () Bool)

(declare-fun res!2240240 () Bool)

(assert (=> b!5282344 (=> res!2240240 e!3284451)))

(assert (=> b!5282344 (= res!2240240 (not ((_ is ElementMatch!14905) lt!2158784)))))

(assert (=> b!5282344 (= e!3284447 e!3284451)))

(declare-fun b!5282345 () Bool)

(assert (=> b!5282345 (= e!3284452 e!3284447)))

(declare-fun c!915789 () Bool)

(assert (=> b!5282345 (= c!915789 ((_ is EmptyLang!14905) lt!2158784))))

(assert (= (and d!1699958 c!915790) b!5282343))

(assert (= (and d!1699958 (not c!915790)) b!5282335))

(assert (= (and d!1699958 c!915791) b!5282340))

(assert (= (and d!1699958 (not c!915791)) b!5282345))

(assert (= (and b!5282345 c!915789) b!5282334))

(assert (= (and b!5282345 (not c!915789)) b!5282344))

(assert (= (and b!5282344 (not res!2240240)) b!5282333))

(assert (= (and b!5282333 res!2240239) b!5282332))

(assert (= (and b!5282332 res!2240241) b!5282341))

(assert (= (and b!5282341 res!2240245) b!5282338))

(assert (= (and b!5282333 (not res!2240244)) b!5282339))

(assert (= (and b!5282339 res!2240238) b!5282336))

(assert (= (and b!5282336 (not res!2240243)) b!5282342))

(assert (= (and b!5282342 (not res!2240242)) b!5282337))

(assert (= (or b!5282340 b!5282332 b!5282336) bm!376200))

(assert (=> d!1699958 m!6320118))

(assert (=> d!1699958 m!6320152))

(assert (=> b!5282338 m!6320126))

(assert (=> b!5282335 m!6320126))

(assert (=> b!5282335 m!6320126))

(declare-fun m!6320178 () Bool)

(assert (=> b!5282335 m!6320178))

(assert (=> b!5282335 m!6320130))

(assert (=> b!5282335 m!6320178))

(assert (=> b!5282335 m!6320130))

(declare-fun m!6320180 () Bool)

(assert (=> b!5282335 m!6320180))

(assert (=> b!5282342 m!6320130))

(assert (=> b!5282342 m!6320130))

(assert (=> b!5282342 m!6320134))

(assert (=> bm!376200 m!6320118))

(assert (=> b!5282341 m!6320130))

(assert (=> b!5282341 m!6320130))

(assert (=> b!5282341 m!6320134))

(declare-fun m!6320182 () Bool)

(assert (=> b!5282343 m!6320182))

(assert (=> b!5282337 m!6320126))

(assert (=> b!5281639 d!1699958))

(declare-fun d!1699960 () Bool)

(declare-fun c!915792 () Bool)

(assert (=> d!1699960 (= c!915792 (isEmpty!32846 s!2326))))

(declare-fun e!3284453 () Bool)

(assert (=> d!1699960 (= (matchZipper!1149 lt!2158780 s!2326) e!3284453)))

(declare-fun b!5282346 () Bool)

(assert (=> b!5282346 (= e!3284453 (nullableZipper!1300 lt!2158780))))

(declare-fun b!5282347 () Bool)

(assert (=> b!5282347 (= e!3284453 (matchZipper!1149 (derivationStepZipper!1148 lt!2158780 (head!11319 s!2326)) (tail!10416 s!2326)))))

(assert (= (and d!1699960 c!915792) b!5282346))

(assert (= (and d!1699960 (not c!915792)) b!5282347))

(assert (=> d!1699960 m!6320118))

(declare-fun m!6320184 () Bool)

(assert (=> b!5282346 m!6320184))

(assert (=> b!5282347 m!6320126))

(assert (=> b!5282347 m!6320126))

(declare-fun m!6320186 () Bool)

(assert (=> b!5282347 m!6320186))

(assert (=> b!5282347 m!6320130))

(assert (=> b!5282347 m!6320186))

(assert (=> b!5282347 m!6320130))

(declare-fun m!6320188 () Bool)

(assert (=> b!5282347 m!6320188))

(assert (=> b!5281639 d!1699960))

(declare-fun d!1699962 () Bool)

(declare-fun c!915793 () Bool)

(assert (=> d!1699962 (= c!915793 (isEmpty!32846 s!2326))))

(declare-fun e!3284454 () Bool)

(assert (=> d!1699962 (= (matchZipper!1149 lt!2158796 s!2326) e!3284454)))

(declare-fun b!5282348 () Bool)

(assert (=> b!5282348 (= e!3284454 (nullableZipper!1300 lt!2158796))))

(declare-fun b!5282349 () Bool)

(assert (=> b!5282349 (= e!3284454 (matchZipper!1149 (derivationStepZipper!1148 lt!2158796 (head!11319 s!2326)) (tail!10416 s!2326)))))

(assert (= (and d!1699962 c!915793) b!5282348))

(assert (= (and d!1699962 (not c!915793)) b!5282349))

(assert (=> d!1699962 m!6320118))

(declare-fun m!6320190 () Bool)

(assert (=> b!5282348 m!6320190))

(assert (=> b!5282349 m!6320126))

(assert (=> b!5282349 m!6320126))

(declare-fun m!6320192 () Bool)

(assert (=> b!5282349 m!6320192))

(assert (=> b!5282349 m!6320130))

(assert (=> b!5282349 m!6320192))

(assert (=> b!5282349 m!6320130))

(declare-fun m!6320194 () Bool)

(assert (=> b!5282349 m!6320194))

(assert (=> b!5281639 d!1699962))

(declare-fun bs!1224527 () Bool)

(declare-fun d!1699964 () Bool)

(assert (= bs!1224527 (and d!1699964 d!1699956)))

(declare-fun lambda!266905 () Int)

(assert (=> bs!1224527 (= lambda!266905 lambda!266904)))

(declare-fun bs!1224528 () Bool)

(assert (= bs!1224528 (and d!1699964 d!1699834)))

(assert (=> bs!1224528 (= lambda!266905 lambda!266857)))

(declare-fun bs!1224529 () Bool)

(assert (= bs!1224529 (and d!1699964 b!5281639)))

(assert (=> bs!1224529 (= lambda!266905 lambda!266837)))

(declare-fun bs!1224530 () Bool)

(assert (= bs!1224530 (and d!1699964 d!1699850)))

(assert (=> bs!1224530 (= lambda!266905 lambda!266863)))

(declare-fun bs!1224531 () Bool)

(assert (= bs!1224531 (and d!1699964 d!1699862)))

(assert (=> bs!1224531 (= lambda!266905 lambda!266866)))

(declare-fun b!5282350 () Bool)

(declare-fun e!3284458 () Bool)

(declare-fun e!3284455 () Bool)

(assert (=> b!5282350 (= e!3284458 e!3284455)))

(declare-fun c!915797 () Bool)

(assert (=> b!5282350 (= c!915797 (isEmpty!32844 lt!2158791))))

(declare-fun b!5282351 () Bool)

(declare-fun e!3284457 () Regex!14905)

(assert (=> b!5282351 (= e!3284457 (Concat!23750 (h!67339 lt!2158791) (generalisedConcat!574 (t!374218 lt!2158791))))))

(declare-fun b!5282352 () Bool)

(declare-fun e!3284459 () Bool)

(declare-fun lt!2158909 () Regex!14905)

(assert (=> b!5282352 (= e!3284459 (isConcat!358 lt!2158909))))

(declare-fun b!5282353 () Bool)

(assert (=> b!5282353 (= e!3284455 (isEmptyExpr!835 lt!2158909))))

(declare-fun b!5282354 () Bool)

(assert (=> b!5282354 (= e!3284459 (= lt!2158909 (head!11318 lt!2158791)))))

(declare-fun b!5282355 () Bool)

(declare-fun e!3284456 () Regex!14905)

(assert (=> b!5282355 (= e!3284456 e!3284457)))

(declare-fun c!915796 () Bool)

(assert (=> b!5282355 (= c!915796 ((_ is Cons!60891) lt!2158791))))

(declare-fun b!5282356 () Bool)

(assert (=> b!5282356 (= e!3284456 (h!67339 lt!2158791))))

(assert (=> d!1699964 e!3284458))

(declare-fun res!2240246 () Bool)

(assert (=> d!1699964 (=> (not res!2240246) (not e!3284458))))

(assert (=> d!1699964 (= res!2240246 (validRegex!6641 lt!2158909))))

(assert (=> d!1699964 (= lt!2158909 e!3284456)))

(declare-fun c!915795 () Bool)

(declare-fun e!3284460 () Bool)

(assert (=> d!1699964 (= c!915795 e!3284460)))

(declare-fun res!2240247 () Bool)

(assert (=> d!1699964 (=> (not res!2240247) (not e!3284460))))

(assert (=> d!1699964 (= res!2240247 ((_ is Cons!60891) lt!2158791))))

(assert (=> d!1699964 (forall!14313 lt!2158791 lambda!266905)))

(assert (=> d!1699964 (= (generalisedConcat!574 lt!2158791) lt!2158909)))

(declare-fun b!5282357 () Bool)

(assert (=> b!5282357 (= e!3284460 (isEmpty!32844 (t!374218 lt!2158791)))))

(declare-fun b!5282358 () Bool)

(assert (=> b!5282358 (= e!3284457 EmptyExpr!14905)))

(declare-fun b!5282359 () Bool)

(assert (=> b!5282359 (= e!3284455 e!3284459)))

(declare-fun c!915794 () Bool)

(assert (=> b!5282359 (= c!915794 (isEmpty!32844 (tail!10415 lt!2158791)))))

(assert (= (and d!1699964 res!2240247) b!5282357))

(assert (= (and d!1699964 c!915795) b!5282356))

(assert (= (and d!1699964 (not c!915795)) b!5282355))

(assert (= (and b!5282355 c!915796) b!5282351))

(assert (= (and b!5282355 (not c!915796)) b!5282358))

(assert (= (and d!1699964 res!2240246) b!5282350))

(assert (= (and b!5282350 c!915797) b!5282353))

(assert (= (and b!5282350 (not c!915797)) b!5282359))

(assert (= (and b!5282359 c!915794) b!5282354))

(assert (= (and b!5282359 (not c!915794)) b!5282352))

(declare-fun m!6320196 () Bool)

(assert (=> b!5282359 m!6320196))

(assert (=> b!5282359 m!6320196))

(declare-fun m!6320198 () Bool)

(assert (=> b!5282359 m!6320198))

(declare-fun m!6320200 () Bool)

(assert (=> b!5282351 m!6320200))

(declare-fun m!6320202 () Bool)

(assert (=> b!5282352 m!6320202))

(declare-fun m!6320204 () Bool)

(assert (=> d!1699964 m!6320204))

(declare-fun m!6320206 () Bool)

(assert (=> d!1699964 m!6320206))

(declare-fun m!6320208 () Bool)

(assert (=> b!5282357 m!6320208))

(declare-fun m!6320210 () Bool)

(assert (=> b!5282354 m!6320210))

(declare-fun m!6320212 () Bool)

(assert (=> b!5282353 m!6320212))

(declare-fun m!6320214 () Bool)

(assert (=> b!5282350 m!6320214))

(assert (=> b!5281639 d!1699964))

(declare-fun b!5282360 () Bool)

(declare-fun res!2240251 () Bool)

(declare-fun e!3284463 () Bool)

(assert (=> b!5282360 (=> (not res!2240251) (not e!3284463))))

(declare-fun call!376206 () Bool)

(assert (=> b!5282360 (= res!2240251 (not call!376206))))

(declare-fun bm!376201 () Bool)

(assert (=> bm!376201 (= call!376206 (isEmpty!32846 s!2326))))

(declare-fun b!5282362 () Bool)

(declare-fun e!3284462 () Bool)

(declare-fun lt!2158910 () Bool)

(assert (=> b!5282362 (= e!3284462 (not lt!2158910))))

(declare-fun b!5282363 () Bool)

(declare-fun e!3284464 () Bool)

(assert (=> b!5282363 (= e!3284464 (matchR!7090 (derivativeStep!4121 lt!2158769 (head!11319 s!2326)) (tail!10416 s!2326)))))

(declare-fun b!5282364 () Bool)

(declare-fun e!3284465 () Bool)

(declare-fun e!3284461 () Bool)

(assert (=> b!5282364 (= e!3284465 e!3284461)))

(declare-fun res!2240253 () Bool)

(assert (=> b!5282364 (=> res!2240253 e!3284461)))

(assert (=> b!5282364 (= res!2240253 call!376206)))

(declare-fun b!5282365 () Bool)

(assert (=> b!5282365 (= e!3284461 (not (= (head!11319 s!2326) (c!915577 lt!2158769))))))

(declare-fun b!5282366 () Bool)

(assert (=> b!5282366 (= e!3284463 (= (head!11319 s!2326) (c!915577 lt!2158769)))))

(declare-fun b!5282361 () Bool)

(declare-fun res!2240254 () Bool)

(declare-fun e!3284466 () Bool)

(assert (=> b!5282361 (=> res!2240254 e!3284466)))

(assert (=> b!5282361 (= res!2240254 e!3284463)))

(declare-fun res!2240249 () Bool)

(assert (=> b!5282361 (=> (not res!2240249) (not e!3284463))))

(assert (=> b!5282361 (= res!2240249 lt!2158910)))

(declare-fun d!1699966 () Bool)

(declare-fun e!3284467 () Bool)

(assert (=> d!1699966 e!3284467))

(declare-fun c!915800 () Bool)

(assert (=> d!1699966 (= c!915800 ((_ is EmptyExpr!14905) lt!2158769))))

(assert (=> d!1699966 (= lt!2158910 e!3284464)))

(declare-fun c!915799 () Bool)

(assert (=> d!1699966 (= c!915799 (isEmpty!32846 s!2326))))

(assert (=> d!1699966 (validRegex!6641 lt!2158769)))

(assert (=> d!1699966 (= (matchR!7090 lt!2158769 s!2326) lt!2158910)))

(declare-fun b!5282367 () Bool)

(assert (=> b!5282367 (= e!3284466 e!3284465)))

(declare-fun res!2240248 () Bool)

(assert (=> b!5282367 (=> (not res!2240248) (not e!3284465))))

(assert (=> b!5282367 (= res!2240248 (not lt!2158910))))

(declare-fun b!5282368 () Bool)

(assert (=> b!5282368 (= e!3284467 (= lt!2158910 call!376206))))

(declare-fun b!5282369 () Bool)

(declare-fun res!2240255 () Bool)

(assert (=> b!5282369 (=> (not res!2240255) (not e!3284463))))

(assert (=> b!5282369 (= res!2240255 (isEmpty!32846 (tail!10416 s!2326)))))

(declare-fun b!5282370 () Bool)

(declare-fun res!2240252 () Bool)

(assert (=> b!5282370 (=> res!2240252 e!3284461)))

(assert (=> b!5282370 (= res!2240252 (not (isEmpty!32846 (tail!10416 s!2326))))))

(declare-fun b!5282371 () Bool)

(assert (=> b!5282371 (= e!3284464 (nullable!5074 lt!2158769))))

(declare-fun b!5282372 () Bool)

(declare-fun res!2240250 () Bool)

(assert (=> b!5282372 (=> res!2240250 e!3284466)))

(assert (=> b!5282372 (= res!2240250 (not ((_ is ElementMatch!14905) lt!2158769)))))

(assert (=> b!5282372 (= e!3284462 e!3284466)))

(declare-fun b!5282373 () Bool)

(assert (=> b!5282373 (= e!3284467 e!3284462)))

(declare-fun c!915798 () Bool)

(assert (=> b!5282373 (= c!915798 ((_ is EmptyLang!14905) lt!2158769))))

(assert (= (and d!1699966 c!915799) b!5282371))

(assert (= (and d!1699966 (not c!915799)) b!5282363))

(assert (= (and d!1699966 c!915800) b!5282368))

(assert (= (and d!1699966 (not c!915800)) b!5282373))

(assert (= (and b!5282373 c!915798) b!5282362))

(assert (= (and b!5282373 (not c!915798)) b!5282372))

(assert (= (and b!5282372 (not res!2240250)) b!5282361))

(assert (= (and b!5282361 res!2240249) b!5282360))

(assert (= (and b!5282360 res!2240251) b!5282369))

(assert (= (and b!5282369 res!2240255) b!5282366))

(assert (= (and b!5282361 (not res!2240254)) b!5282367))

(assert (= (and b!5282367 res!2240248) b!5282364))

(assert (= (and b!5282364 (not res!2240253)) b!5282370))

(assert (= (and b!5282370 (not res!2240252)) b!5282365))

(assert (= (or b!5282368 b!5282360 b!5282364) bm!376201))

(assert (=> d!1699966 m!6320118))

(assert (=> d!1699966 m!6320148))

(assert (=> b!5282366 m!6320126))

(assert (=> b!5282363 m!6320126))

(assert (=> b!5282363 m!6320126))

(declare-fun m!6320216 () Bool)

(assert (=> b!5282363 m!6320216))

(assert (=> b!5282363 m!6320130))

(assert (=> b!5282363 m!6320216))

(assert (=> b!5282363 m!6320130))

(declare-fun m!6320218 () Bool)

(assert (=> b!5282363 m!6320218))

(assert (=> b!5282370 m!6320130))

(assert (=> b!5282370 m!6320130))

(assert (=> b!5282370 m!6320134))

(assert (=> bm!376201 m!6320118))

(assert (=> b!5282369 m!6320130))

(assert (=> b!5282369 m!6320130))

(assert (=> b!5282369 m!6320134))

(declare-fun m!6320220 () Bool)

(assert (=> b!5282371 m!6320220))

(assert (=> b!5282365 m!6320126))

(assert (=> b!5281639 d!1699966))

(declare-fun bs!1224532 () Bool)

(declare-fun d!1699968 () Bool)

(assert (= bs!1224532 (and d!1699968 d!1699956)))

(declare-fun lambda!266906 () Int)

(assert (=> bs!1224532 (= lambda!266906 lambda!266904)))

(declare-fun bs!1224533 () Bool)

(assert (= bs!1224533 (and d!1699968 d!1699834)))

(assert (=> bs!1224533 (= lambda!266906 lambda!266857)))

(declare-fun bs!1224534 () Bool)

(assert (= bs!1224534 (and d!1699968 b!5281639)))

(assert (=> bs!1224534 (= lambda!266906 lambda!266837)))

(declare-fun bs!1224535 () Bool)

(assert (= bs!1224535 (and d!1699968 d!1699850)))

(assert (=> bs!1224535 (= lambda!266906 lambda!266863)))

(declare-fun bs!1224536 () Bool)

(assert (= bs!1224536 (and d!1699968 d!1699862)))

(assert (=> bs!1224536 (= lambda!266906 lambda!266866)))

(declare-fun bs!1224537 () Bool)

(assert (= bs!1224537 (and d!1699968 d!1699964)))

(assert (=> bs!1224537 (= lambda!266906 lambda!266905)))

(declare-fun b!5282374 () Bool)

(declare-fun e!3284471 () Bool)

(declare-fun e!3284468 () Bool)

(assert (=> b!5282374 (= e!3284471 e!3284468)))

(declare-fun c!915804 () Bool)

(assert (=> b!5282374 (= c!915804 (isEmpty!32844 (exprs!4789 (h!67340 zl!343))))))

(declare-fun b!5282375 () Bool)

(declare-fun e!3284470 () Regex!14905)

(assert (=> b!5282375 (= e!3284470 (Concat!23750 (h!67339 (exprs!4789 (h!67340 zl!343))) (generalisedConcat!574 (t!374218 (exprs!4789 (h!67340 zl!343))))))))

(declare-fun b!5282376 () Bool)

(declare-fun e!3284472 () Bool)

(declare-fun lt!2158911 () Regex!14905)

(assert (=> b!5282376 (= e!3284472 (isConcat!358 lt!2158911))))

(declare-fun b!5282377 () Bool)

(assert (=> b!5282377 (= e!3284468 (isEmptyExpr!835 lt!2158911))))

(declare-fun b!5282378 () Bool)

(assert (=> b!5282378 (= e!3284472 (= lt!2158911 (head!11318 (exprs!4789 (h!67340 zl!343)))))))

(declare-fun b!5282379 () Bool)

(declare-fun e!3284469 () Regex!14905)

(assert (=> b!5282379 (= e!3284469 e!3284470)))

(declare-fun c!915803 () Bool)

(assert (=> b!5282379 (= c!915803 ((_ is Cons!60891) (exprs!4789 (h!67340 zl!343))))))

(declare-fun b!5282380 () Bool)

(assert (=> b!5282380 (= e!3284469 (h!67339 (exprs!4789 (h!67340 zl!343))))))

(assert (=> d!1699968 e!3284471))

(declare-fun res!2240256 () Bool)

(assert (=> d!1699968 (=> (not res!2240256) (not e!3284471))))

(assert (=> d!1699968 (= res!2240256 (validRegex!6641 lt!2158911))))

(assert (=> d!1699968 (= lt!2158911 e!3284469)))

(declare-fun c!915802 () Bool)

(declare-fun e!3284473 () Bool)

(assert (=> d!1699968 (= c!915802 e!3284473)))

(declare-fun res!2240257 () Bool)

(assert (=> d!1699968 (=> (not res!2240257) (not e!3284473))))

(assert (=> d!1699968 (= res!2240257 ((_ is Cons!60891) (exprs!4789 (h!67340 zl!343))))))

(assert (=> d!1699968 (forall!14313 (exprs!4789 (h!67340 zl!343)) lambda!266906)))

(assert (=> d!1699968 (= (generalisedConcat!574 (exprs!4789 (h!67340 zl!343))) lt!2158911)))

(declare-fun b!5282381 () Bool)

(assert (=> b!5282381 (= e!3284473 (isEmpty!32844 (t!374218 (exprs!4789 (h!67340 zl!343)))))))

(declare-fun b!5282382 () Bool)

(assert (=> b!5282382 (= e!3284470 EmptyExpr!14905)))

(declare-fun b!5282383 () Bool)

(assert (=> b!5282383 (= e!3284468 e!3284472)))

(declare-fun c!915801 () Bool)

(assert (=> b!5282383 (= c!915801 (isEmpty!32844 (tail!10415 (exprs!4789 (h!67340 zl!343)))))))

(assert (= (and d!1699968 res!2240257) b!5282381))

(assert (= (and d!1699968 c!915802) b!5282380))

(assert (= (and d!1699968 (not c!915802)) b!5282379))

(assert (= (and b!5282379 c!915803) b!5282375))

(assert (= (and b!5282379 (not c!915803)) b!5282382))

(assert (= (and d!1699968 res!2240256) b!5282374))

(assert (= (and b!5282374 c!915804) b!5282377))

(assert (= (and b!5282374 (not c!915804)) b!5282383))

(assert (= (and b!5282383 c!915801) b!5282378))

(assert (= (and b!5282383 (not c!915801)) b!5282376))

(declare-fun m!6320222 () Bool)

(assert (=> b!5282383 m!6320222))

(assert (=> b!5282383 m!6320222))

(declare-fun m!6320224 () Bool)

(assert (=> b!5282383 m!6320224))

(declare-fun m!6320226 () Bool)

(assert (=> b!5282375 m!6320226))

(declare-fun m!6320228 () Bool)

(assert (=> b!5282376 m!6320228))

(declare-fun m!6320230 () Bool)

(assert (=> d!1699968 m!6320230))

(declare-fun m!6320232 () Bool)

(assert (=> d!1699968 m!6320232))

(assert (=> b!5282381 m!6319554))

(declare-fun m!6320234 () Bool)

(assert (=> b!5282378 m!6320234))

(declare-fun m!6320236 () Bool)

(assert (=> b!5282377 m!6320236))

(declare-fun m!6320238 () Bool)

(assert (=> b!5282374 m!6320238))

(assert (=> b!5281618 d!1699968))

(declare-fun d!1699970 () Bool)

(declare-fun c!915805 () Bool)

(assert (=> d!1699970 (= c!915805 (isEmpty!32846 (t!374217 s!2326)))))

(declare-fun e!3284474 () Bool)

(assert (=> d!1699970 (= (matchZipper!1149 lt!2158782 (t!374217 s!2326)) e!3284474)))

(declare-fun b!5282384 () Bool)

(assert (=> b!5282384 (= e!3284474 (nullableZipper!1300 lt!2158782))))

(declare-fun b!5282385 () Bool)

(assert (=> b!5282385 (= e!3284474 (matchZipper!1149 (derivationStepZipper!1148 lt!2158782 (head!11319 (t!374217 s!2326))) (tail!10416 (t!374217 s!2326))))))

(assert (= (and d!1699970 c!915805) b!5282384))

(assert (= (and d!1699970 (not c!915805)) b!5282385))

(assert (=> d!1699970 m!6319932))

(declare-fun m!6320240 () Bool)

(assert (=> b!5282384 m!6320240))

(assert (=> b!5282385 m!6319936))

(assert (=> b!5282385 m!6319936))

(declare-fun m!6320242 () Bool)

(assert (=> b!5282385 m!6320242))

(assert (=> b!5282385 m!6319940))

(assert (=> b!5282385 m!6320242))

(assert (=> b!5282385 m!6319940))

(declare-fun m!6320244 () Bool)

(assert (=> b!5282385 m!6320244))

(assert (=> b!5281619 d!1699970))

(assert (=> b!5281616 d!1699902))

(declare-fun d!1699972 () Bool)

(declare-fun c!915806 () Bool)

(assert (=> d!1699972 (= c!915806 (isEmpty!32846 (t!374217 s!2326)))))

(declare-fun e!3284475 () Bool)

(assert (=> d!1699972 (= (matchZipper!1149 lt!2158776 (t!374217 s!2326)) e!3284475)))

(declare-fun b!5282386 () Bool)

(assert (=> b!5282386 (= e!3284475 (nullableZipper!1300 lt!2158776))))

(declare-fun b!5282387 () Bool)

(assert (=> b!5282387 (= e!3284475 (matchZipper!1149 (derivationStepZipper!1148 lt!2158776 (head!11319 (t!374217 s!2326))) (tail!10416 (t!374217 s!2326))))))

(assert (= (and d!1699972 c!915806) b!5282386))

(assert (= (and d!1699972 (not c!915806)) b!5282387))

(assert (=> d!1699972 m!6319932))

(declare-fun m!6320246 () Bool)

(assert (=> b!5282386 m!6320246))

(assert (=> b!5282387 m!6319936))

(assert (=> b!5282387 m!6319936))

(declare-fun m!6320248 () Bool)

(assert (=> b!5282387 m!6320248))

(assert (=> b!5282387 m!6319940))

(assert (=> b!5282387 m!6320248))

(assert (=> b!5282387 m!6319940))

(declare-fun m!6320250 () Bool)

(assert (=> b!5282387 m!6320250))

(assert (=> b!5281616 d!1699972))

(declare-fun d!1699974 () Bool)

(declare-fun c!915807 () Bool)

(assert (=> d!1699974 (= c!915807 (isEmpty!32846 (t!374217 s!2326)))))

(declare-fun e!3284476 () Bool)

(assert (=> d!1699974 (= (matchZipper!1149 lt!2158764 (t!374217 s!2326)) e!3284476)))

(declare-fun b!5282388 () Bool)

(assert (=> b!5282388 (= e!3284476 (nullableZipper!1300 lt!2158764))))

(declare-fun b!5282389 () Bool)

(assert (=> b!5282389 (= e!3284476 (matchZipper!1149 (derivationStepZipper!1148 lt!2158764 (head!11319 (t!374217 s!2326))) (tail!10416 (t!374217 s!2326))))))

(assert (= (and d!1699974 c!915807) b!5282388))

(assert (= (and d!1699974 (not c!915807)) b!5282389))

(assert (=> d!1699974 m!6319932))

(declare-fun m!6320252 () Bool)

(assert (=> b!5282388 m!6320252))

(assert (=> b!5282389 m!6319936))

(assert (=> b!5282389 m!6319936))

(declare-fun m!6320254 () Bool)

(assert (=> b!5282389 m!6320254))

(assert (=> b!5282389 m!6319940))

(assert (=> b!5282389 m!6320254))

(assert (=> b!5282389 m!6319940))

(declare-fun m!6320256 () Bool)

(assert (=> b!5282389 m!6320256))

(assert (=> b!5281616 d!1699974))

(declare-fun e!3284477 () Bool)

(declare-fun d!1699976 () Bool)

(assert (=> d!1699976 (= (matchZipper!1149 ((_ map or) lt!2158764 lt!2158785) (t!374217 s!2326)) e!3284477)))

(declare-fun res!2240258 () Bool)

(assert (=> d!1699976 (=> res!2240258 e!3284477)))

(assert (=> d!1699976 (= res!2240258 (matchZipper!1149 lt!2158764 (t!374217 s!2326)))))

(declare-fun lt!2158912 () Unit!153138)

(assert (=> d!1699976 (= lt!2158912 (choose!39416 lt!2158764 lt!2158785 (t!374217 s!2326)))))

(assert (=> d!1699976 (= (lemmaZipperConcatMatchesSameAsBothZippers!142 lt!2158764 lt!2158785 (t!374217 s!2326)) lt!2158912)))

(declare-fun b!5282390 () Bool)

(assert (=> b!5282390 (= e!3284477 (matchZipper!1149 lt!2158785 (t!374217 s!2326)))))

(assert (= (and d!1699976 (not res!2240258)) b!5282390))

(declare-fun m!6320258 () Bool)

(assert (=> d!1699976 m!6320258))

(assert (=> d!1699976 m!6319524))

(declare-fun m!6320260 () Bool)

(assert (=> d!1699976 m!6320260))

(assert (=> b!5282390 m!6319578))

(assert (=> b!5281616 d!1699976))

(declare-fun d!1699978 () Bool)

(declare-fun c!915808 () Bool)

(assert (=> d!1699978 (= c!915808 (isEmpty!32846 (t!374217 s!2326)))))

(declare-fun e!3284478 () Bool)

(assert (=> d!1699978 (= (matchZipper!1149 lt!2158793 (t!374217 s!2326)) e!3284478)))

(declare-fun b!5282391 () Bool)

(assert (=> b!5282391 (= e!3284478 (nullableZipper!1300 lt!2158793))))

(declare-fun b!5282392 () Bool)

(assert (=> b!5282392 (= e!3284478 (matchZipper!1149 (derivationStepZipper!1148 lt!2158793 (head!11319 (t!374217 s!2326))) (tail!10416 (t!374217 s!2326))))))

(assert (= (and d!1699978 c!915808) b!5282391))

(assert (= (and d!1699978 (not c!915808)) b!5282392))

(assert (=> d!1699978 m!6319932))

(declare-fun m!6320262 () Bool)

(assert (=> b!5282391 m!6320262))

(assert (=> b!5282392 m!6319936))

(assert (=> b!5282392 m!6319936))

(declare-fun m!6320264 () Bool)

(assert (=> b!5282392 m!6320264))

(assert (=> b!5282392 m!6319940))

(assert (=> b!5282392 m!6320264))

(assert (=> b!5282392 m!6319940))

(declare-fun m!6320266 () Bool)

(assert (=> b!5282392 m!6320266))

(assert (=> b!5281636 d!1699978))

(declare-fun d!1699980 () Bool)

(declare-fun c!915809 () Bool)

(assert (=> d!1699980 (= c!915809 (isEmpty!32846 (t!374217 s!2326)))))

(declare-fun e!3284479 () Bool)

(assert (=> d!1699980 (= (matchZipper!1149 (derivationStepZipper!1148 lt!2158780 (h!67338 s!2326)) (t!374217 s!2326)) e!3284479)))

(declare-fun b!5282393 () Bool)

(assert (=> b!5282393 (= e!3284479 (nullableZipper!1300 (derivationStepZipper!1148 lt!2158780 (h!67338 s!2326))))))

(declare-fun b!5282394 () Bool)

(assert (=> b!5282394 (= e!3284479 (matchZipper!1149 (derivationStepZipper!1148 (derivationStepZipper!1148 lt!2158780 (h!67338 s!2326)) (head!11319 (t!374217 s!2326))) (tail!10416 (t!374217 s!2326))))))

(assert (= (and d!1699980 c!915809) b!5282393))

(assert (= (and d!1699980 (not c!915809)) b!5282394))

(assert (=> d!1699980 m!6319932))

(assert (=> b!5282393 m!6319540))

(declare-fun m!6320268 () Bool)

(assert (=> b!5282393 m!6320268))

(assert (=> b!5282394 m!6319936))

(assert (=> b!5282394 m!6319540))

(assert (=> b!5282394 m!6319936))

(declare-fun m!6320270 () Bool)

(assert (=> b!5282394 m!6320270))

(assert (=> b!5282394 m!6319940))

(assert (=> b!5282394 m!6320270))

(assert (=> b!5282394 m!6319940))

(declare-fun m!6320272 () Bool)

(assert (=> b!5282394 m!6320272))

(assert (=> b!5281637 d!1699980))

(declare-fun bs!1224538 () Bool)

(declare-fun d!1699982 () Bool)

(assert (= bs!1224538 (and d!1699982 b!5281613)))

(declare-fun lambda!266907 () Int)

(assert (=> bs!1224538 (= lambda!266907 lambda!266836)))

(declare-fun bs!1224539 () Bool)

(assert (= bs!1224539 (and d!1699982 d!1699886)))

(assert (=> bs!1224539 (= lambda!266907 lambda!266887)))

(assert (=> d!1699982 true))

(assert (=> d!1699982 (= (derivationStepZipper!1148 lt!2158780 (h!67338 s!2326)) (flatMap!632 lt!2158780 lambda!266907))))

(declare-fun bs!1224540 () Bool)

(assert (= bs!1224540 d!1699982))

(declare-fun m!6320274 () Bool)

(assert (=> bs!1224540 m!6320274))

(assert (=> b!5281637 d!1699982))

(declare-fun d!1699984 () Bool)

(declare-fun lt!2158915 () Int)

(assert (=> d!1699984 (>= lt!2158915 0)))

(declare-fun e!3284482 () Int)

(assert (=> d!1699984 (= lt!2158915 e!3284482)))

(declare-fun c!915812 () Bool)

(assert (=> d!1699984 (= c!915812 ((_ is Cons!60892) lt!2158774))))

(assert (=> d!1699984 (= (zipperDepthTotal!66 lt!2158774) lt!2158915)))

(declare-fun b!5282399 () Bool)

(assert (=> b!5282399 (= e!3284482 (+ (contextDepthTotal!46 (h!67340 lt!2158774)) (zipperDepthTotal!66 (t!374219 lt!2158774))))))

(declare-fun b!5282400 () Bool)

(assert (=> b!5282400 (= e!3284482 0)))

(assert (= (and d!1699984 c!915812) b!5282399))

(assert (= (and d!1699984 (not c!915812)) b!5282400))

(declare-fun m!6320276 () Bool)

(assert (=> b!5282399 m!6320276))

(declare-fun m!6320278 () Bool)

(assert (=> b!5282399 m!6320278))

(assert (=> b!5281614 d!1699984))

(declare-fun d!1699986 () Bool)

(declare-fun lt!2158916 () Int)

(assert (=> d!1699986 (>= lt!2158916 0)))

(declare-fun e!3284483 () Int)

(assert (=> d!1699986 (= lt!2158916 e!3284483)))

(declare-fun c!915813 () Bool)

(assert (=> d!1699986 (= c!915813 ((_ is Cons!60892) zl!343))))

(assert (=> d!1699986 (= (zipperDepthTotal!66 zl!343) lt!2158916)))

(declare-fun b!5282401 () Bool)

(assert (=> b!5282401 (= e!3284483 (+ (contextDepthTotal!46 (h!67340 zl!343)) (zipperDepthTotal!66 (t!374219 zl!343))))))

(declare-fun b!5282402 () Bool)

(assert (=> b!5282402 (= e!3284483 0)))

(assert (= (and d!1699986 c!915813) b!5282401))

(assert (= (and d!1699986 (not c!915813)) b!5282402))

(assert (=> b!5282401 m!6319532))

(declare-fun m!6320280 () Bool)

(assert (=> b!5282401 m!6320280))

(assert (=> b!5281614 d!1699986))

(declare-fun d!1699988 () Bool)

(declare-fun choose!39422 (Int) Bool)

(assert (=> d!1699988 (= (Exists!2086 lambda!266835) (choose!39422 lambda!266835))))

(declare-fun bs!1224541 () Bool)

(assert (= bs!1224541 d!1699988))

(declare-fun m!6320282 () Bool)

(assert (=> bs!1224541 m!6320282))

(assert (=> b!5281634 d!1699988))

(declare-fun b!5282421 () Bool)

(declare-fun e!3284498 () Option!15016)

(declare-fun e!3284495 () Option!15016)

(assert (=> b!5282421 (= e!3284498 e!3284495)))

(declare-fun c!915818 () Bool)

(assert (=> b!5282421 (= c!915818 ((_ is Nil!60890) s!2326))))

(declare-fun b!5282422 () Bool)

(declare-fun res!2240271 () Bool)

(declare-fun e!3284497 () Bool)

(assert (=> b!5282422 (=> (not res!2240271) (not e!3284497))))

(declare-fun lt!2158923 () Option!15016)

(declare-fun get!20938 (Option!15016) tuple2!64208)

(assert (=> b!5282422 (= res!2240271 (matchR!7090 (regOne!30322 r!7292) (_1!35407 (get!20938 lt!2158923))))))

(declare-fun d!1699990 () Bool)

(declare-fun e!3284494 () Bool)

(assert (=> d!1699990 e!3284494))

(declare-fun res!2240272 () Bool)

(assert (=> d!1699990 (=> res!2240272 e!3284494)))

(assert (=> d!1699990 (= res!2240272 e!3284497)))

(declare-fun res!2240270 () Bool)

(assert (=> d!1699990 (=> (not res!2240270) (not e!3284497))))

(assert (=> d!1699990 (= res!2240270 (isDefined!11719 lt!2158923))))

(assert (=> d!1699990 (= lt!2158923 e!3284498)))

(declare-fun c!915819 () Bool)

(declare-fun e!3284496 () Bool)

(assert (=> d!1699990 (= c!915819 e!3284496)))

(declare-fun res!2240269 () Bool)

(assert (=> d!1699990 (=> (not res!2240269) (not e!3284496))))

(assert (=> d!1699990 (= res!2240269 (matchR!7090 (regOne!30322 r!7292) Nil!60890))))

(assert (=> d!1699990 (validRegex!6641 (regOne!30322 r!7292))))

(assert (=> d!1699990 (= (findConcatSeparation!1430 (regOne!30322 r!7292) (regTwo!30322 r!7292) Nil!60890 s!2326 s!2326) lt!2158923)))

(declare-fun b!5282423 () Bool)

(declare-fun lt!2158925 () Unit!153138)

(declare-fun lt!2158924 () Unit!153138)

(assert (=> b!5282423 (= lt!2158925 lt!2158924)))

(declare-fun ++!13280 (List!61014 List!61014) List!61014)

(assert (=> b!5282423 (= (++!13280 (++!13280 Nil!60890 (Cons!60890 (h!67338 s!2326) Nil!60890)) (t!374217 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1695 (List!61014 C!30080 List!61014 List!61014) Unit!153138)

(assert (=> b!5282423 (= lt!2158924 (lemmaMoveElementToOtherListKeepsConcatEq!1695 Nil!60890 (h!67338 s!2326) (t!374217 s!2326) s!2326))))

(assert (=> b!5282423 (= e!3284495 (findConcatSeparation!1430 (regOne!30322 r!7292) (regTwo!30322 r!7292) (++!13280 Nil!60890 (Cons!60890 (h!67338 s!2326) Nil!60890)) (t!374217 s!2326) s!2326))))

(declare-fun b!5282424 () Bool)

(assert (=> b!5282424 (= e!3284498 (Some!15015 (tuple2!64209 Nil!60890 s!2326)))))

(declare-fun b!5282425 () Bool)

(assert (=> b!5282425 (= e!3284494 (not (isDefined!11719 lt!2158923)))))

(declare-fun b!5282426 () Bool)

(assert (=> b!5282426 (= e!3284495 None!15015)))

(declare-fun b!5282427 () Bool)

(assert (=> b!5282427 (= e!3284497 (= (++!13280 (_1!35407 (get!20938 lt!2158923)) (_2!35407 (get!20938 lt!2158923))) s!2326))))

(declare-fun b!5282428 () Bool)

(assert (=> b!5282428 (= e!3284496 (matchR!7090 (regTwo!30322 r!7292) s!2326))))

(declare-fun b!5282429 () Bool)

(declare-fun res!2240273 () Bool)

(assert (=> b!5282429 (=> (not res!2240273) (not e!3284497))))

(assert (=> b!5282429 (= res!2240273 (matchR!7090 (regTwo!30322 r!7292) (_2!35407 (get!20938 lt!2158923))))))

(assert (= (and d!1699990 res!2240269) b!5282428))

(assert (= (and d!1699990 c!915819) b!5282424))

(assert (= (and d!1699990 (not c!915819)) b!5282421))

(assert (= (and b!5282421 c!915818) b!5282426))

(assert (= (and b!5282421 (not c!915818)) b!5282423))

(assert (= (and d!1699990 res!2240270) b!5282422))

(assert (= (and b!5282422 res!2240271) b!5282429))

(assert (= (and b!5282429 res!2240273) b!5282427))

(assert (= (and d!1699990 (not res!2240272)) b!5282425))

(declare-fun m!6320284 () Bool)

(assert (=> b!5282428 m!6320284))

(declare-fun m!6320286 () Bool)

(assert (=> b!5282425 m!6320286))

(assert (=> d!1699990 m!6320286))

(declare-fun m!6320288 () Bool)

(assert (=> d!1699990 m!6320288))

(declare-fun m!6320290 () Bool)

(assert (=> d!1699990 m!6320290))

(declare-fun m!6320292 () Bool)

(assert (=> b!5282423 m!6320292))

(assert (=> b!5282423 m!6320292))

(declare-fun m!6320294 () Bool)

(assert (=> b!5282423 m!6320294))

(declare-fun m!6320296 () Bool)

(assert (=> b!5282423 m!6320296))

(assert (=> b!5282423 m!6320292))

(declare-fun m!6320298 () Bool)

(assert (=> b!5282423 m!6320298))

(declare-fun m!6320300 () Bool)

(assert (=> b!5282429 m!6320300))

(declare-fun m!6320302 () Bool)

(assert (=> b!5282429 m!6320302))

(assert (=> b!5282427 m!6320300))

(declare-fun m!6320304 () Bool)

(assert (=> b!5282427 m!6320304))

(assert (=> b!5282422 m!6320300))

(declare-fun m!6320306 () Bool)

(assert (=> b!5282422 m!6320306))

(assert (=> b!5281634 d!1699990))

(declare-fun d!1699992 () Bool)

(assert (=> d!1699992 (= (Exists!2086 lambda!266834) (choose!39422 lambda!266834))))

(declare-fun bs!1224542 () Bool)

(assert (= bs!1224542 d!1699992))

(declare-fun m!6320308 () Bool)

(assert (=> bs!1224542 m!6320308))

(assert (=> b!5281634 d!1699992))

(declare-fun bs!1224543 () Bool)

(declare-fun d!1699994 () Bool)

(assert (= bs!1224543 (and d!1699994 b!5281634)))

(declare-fun lambda!266910 () Int)

(assert (=> bs!1224543 (= lambda!266910 lambda!266834)))

(assert (=> bs!1224543 (not (= lambda!266910 lambda!266835))))

(declare-fun bs!1224544 () Bool)

(assert (= bs!1224544 (and d!1699994 b!5282241)))

(assert (=> bs!1224544 (not (= lambda!266910 lambda!266900))))

(declare-fun bs!1224545 () Bool)

(assert (= bs!1224545 (and d!1699994 b!5282247)))

(assert (=> bs!1224545 (not (= lambda!266910 lambda!266901))))

(assert (=> d!1699994 true))

(assert (=> d!1699994 true))

(assert (=> d!1699994 true))

(assert (=> d!1699994 (= (isDefined!11719 (findConcatSeparation!1430 (regOne!30322 r!7292) (regTwo!30322 r!7292) Nil!60890 s!2326 s!2326)) (Exists!2086 lambda!266910))))

(declare-fun lt!2158928 () Unit!153138)

(declare-fun choose!39423 (Regex!14905 Regex!14905 List!61014) Unit!153138)

(assert (=> d!1699994 (= lt!2158928 (choose!39423 (regOne!30322 r!7292) (regTwo!30322 r!7292) s!2326))))

(assert (=> d!1699994 (validRegex!6641 (regOne!30322 r!7292))))

(assert (=> d!1699994 (= (lemmaFindConcatSeparationEquivalentToExists!1194 (regOne!30322 r!7292) (regTwo!30322 r!7292) s!2326) lt!2158928)))

(declare-fun bs!1224546 () Bool)

(assert (= bs!1224546 d!1699994))

(assert (=> bs!1224546 m!6319584))

(assert (=> bs!1224546 m!6319586))

(assert (=> bs!1224546 m!6320290))

(assert (=> bs!1224546 m!6319584))

(declare-fun m!6320310 () Bool)

(assert (=> bs!1224546 m!6320310))

(declare-fun m!6320312 () Bool)

(assert (=> bs!1224546 m!6320312))

(assert (=> b!5281634 d!1699994))

(declare-fun bs!1224547 () Bool)

(declare-fun d!1699996 () Bool)

(assert (= bs!1224547 (and d!1699996 d!1699994)))

(declare-fun lambda!266915 () Int)

(assert (=> bs!1224547 (= lambda!266915 lambda!266910)))

(declare-fun bs!1224548 () Bool)

(assert (= bs!1224548 (and d!1699996 b!5282247)))

(assert (=> bs!1224548 (not (= lambda!266915 lambda!266901))))

(declare-fun bs!1224549 () Bool)

(assert (= bs!1224549 (and d!1699996 b!5281634)))

(assert (=> bs!1224549 (= lambda!266915 lambda!266834)))

(declare-fun bs!1224550 () Bool)

(assert (= bs!1224550 (and d!1699996 b!5282241)))

(assert (=> bs!1224550 (not (= lambda!266915 lambda!266900))))

(assert (=> bs!1224549 (not (= lambda!266915 lambda!266835))))

(assert (=> d!1699996 true))

(assert (=> d!1699996 true))

(assert (=> d!1699996 true))

(declare-fun lambda!266916 () Int)

(assert (=> bs!1224547 (not (= lambda!266916 lambda!266910))))

(assert (=> bs!1224548 (= lambda!266916 lambda!266901)))

(assert (=> bs!1224549 (not (= lambda!266916 lambda!266834))))

(declare-fun bs!1224551 () Bool)

(assert (= bs!1224551 d!1699996))

(assert (=> bs!1224551 (not (= lambda!266916 lambda!266915))))

(assert (=> bs!1224550 (not (= lambda!266916 lambda!266900))))

(assert (=> bs!1224549 (= lambda!266916 lambda!266835)))

(assert (=> d!1699996 true))

(assert (=> d!1699996 true))

(assert (=> d!1699996 true))

(assert (=> d!1699996 (= (Exists!2086 lambda!266915) (Exists!2086 lambda!266916))))

(declare-fun lt!2158931 () Unit!153138)

(declare-fun choose!39424 (Regex!14905 Regex!14905 List!61014) Unit!153138)

(assert (=> d!1699996 (= lt!2158931 (choose!39424 (regOne!30322 r!7292) (regTwo!30322 r!7292) s!2326))))

(assert (=> d!1699996 (validRegex!6641 (regOne!30322 r!7292))))

(assert (=> d!1699996 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!740 (regOne!30322 r!7292) (regTwo!30322 r!7292) s!2326) lt!2158931)))

(declare-fun m!6320314 () Bool)

(assert (=> bs!1224551 m!6320314))

(declare-fun m!6320316 () Bool)

(assert (=> bs!1224551 m!6320316))

(declare-fun m!6320318 () Bool)

(assert (=> bs!1224551 m!6320318))

(assert (=> bs!1224551 m!6320290))

(assert (=> b!5281634 d!1699996))

(declare-fun d!1699998 () Bool)

(declare-fun isEmpty!32848 (Option!15016) Bool)

(assert (=> d!1699998 (= (isDefined!11719 (findConcatSeparation!1430 (regOne!30322 r!7292) (regTwo!30322 r!7292) Nil!60890 s!2326 s!2326)) (not (isEmpty!32848 (findConcatSeparation!1430 (regOne!30322 r!7292) (regTwo!30322 r!7292) Nil!60890 s!2326 s!2326))))))

(declare-fun bs!1224552 () Bool)

(assert (= bs!1224552 d!1699998))

(assert (=> bs!1224552 m!6319584))

(declare-fun m!6320320 () Bool)

(assert (=> bs!1224552 m!6320320))

(assert (=> b!5281634 d!1699998))

(declare-fun b!5282464 () Bool)

(declare-fun e!3284519 () (InoxSet Context!8578))

(declare-fun e!3284518 () (InoxSet Context!8578))

(assert (=> b!5282464 (= e!3284519 e!3284518)))

(declare-fun c!915831 () Bool)

(assert (=> b!5282464 (= c!915831 ((_ is Union!14905) (regTwo!30322 (regOne!30322 r!7292))))))

(declare-fun b!5282465 () Bool)

(declare-fun e!3284522 () (InoxSet Context!8578))

(declare-fun call!376221 () (InoxSet Context!8578))

(assert (=> b!5282465 (= e!3284522 call!376221)))

(declare-fun b!5282466 () Bool)

(declare-fun c!915832 () Bool)

(assert (=> b!5282466 (= c!915832 ((_ is Star!14905) (regTwo!30322 (regOne!30322 r!7292))))))

(declare-fun e!3284521 () (InoxSet Context!8578))

(assert (=> b!5282466 (= e!3284522 e!3284521)))

(declare-fun bm!376214 () Bool)

(declare-fun call!376220 () (InoxSet Context!8578))

(declare-fun call!376224 () (InoxSet Context!8578))

(assert (=> bm!376214 (= call!376220 call!376224)))

(declare-fun b!5282467 () Bool)

(declare-fun e!3284517 () (InoxSet Context!8578))

(assert (=> b!5282467 (= e!3284517 e!3284522)))

(declare-fun c!915833 () Bool)

(assert (=> b!5282467 (= c!915833 ((_ is Concat!23750) (regTwo!30322 (regOne!30322 r!7292))))))

(declare-fun c!915834 () Bool)

(declare-fun bm!376215 () Bool)

(declare-fun call!376222 () List!61015)

(declare-fun $colon$colon!1350 (List!61015 Regex!14905) List!61015)

(assert (=> bm!376215 (= call!376222 ($colon$colon!1350 (exprs!4789 lt!2158766) (ite (or c!915834 c!915833) (regTwo!30322 (regTwo!30322 (regOne!30322 r!7292))) (regTwo!30322 (regOne!30322 r!7292)))))))

(declare-fun bm!376216 () Bool)

(declare-fun call!376223 () List!61015)

(assert (=> bm!376216 (= call!376223 call!376222)))

(declare-fun d!1700000 () Bool)

(declare-fun c!915830 () Bool)

(assert (=> d!1700000 (= c!915830 (and ((_ is ElementMatch!14905) (regTwo!30322 (regOne!30322 r!7292))) (= (c!915577 (regTwo!30322 (regOne!30322 r!7292))) (h!67338 s!2326))))))

(assert (=> d!1700000 (= (derivationStepZipperDown!353 (regTwo!30322 (regOne!30322 r!7292)) lt!2158766 (h!67338 s!2326)) e!3284519)))

(declare-fun b!5282468 () Bool)

(assert (=> b!5282468 (= e!3284521 ((as const (Array Context!8578 Bool)) false))))

(declare-fun b!5282469 () Bool)

(assert (=> b!5282469 (= e!3284519 (store ((as const (Array Context!8578 Bool)) false) lt!2158766 true))))

(declare-fun bm!376217 () Bool)

(assert (=> bm!376217 (= call!376221 call!376220)))

(declare-fun b!5282470 () Bool)

(assert (=> b!5282470 (= e!3284521 call!376221)))

(declare-fun b!5282471 () Bool)

(declare-fun call!376219 () (InoxSet Context!8578))

(assert (=> b!5282471 (= e!3284517 ((_ map or) call!376219 call!376220))))

(declare-fun bm!376218 () Bool)

(assert (=> bm!376218 (= call!376219 (derivationStepZipperDown!353 (ite c!915831 (regTwo!30323 (regTwo!30322 (regOne!30322 r!7292))) (regOne!30322 (regTwo!30322 (regOne!30322 r!7292)))) (ite c!915831 lt!2158766 (Context!8579 call!376222)) (h!67338 s!2326)))))

(declare-fun bm!376219 () Bool)

(assert (=> bm!376219 (= call!376224 (derivationStepZipperDown!353 (ite c!915831 (regOne!30323 (regTwo!30322 (regOne!30322 r!7292))) (ite c!915834 (regTwo!30322 (regTwo!30322 (regOne!30322 r!7292))) (ite c!915833 (regOne!30322 (regTwo!30322 (regOne!30322 r!7292))) (reg!15234 (regTwo!30322 (regOne!30322 r!7292)))))) (ite (or c!915831 c!915834) lt!2158766 (Context!8579 call!376223)) (h!67338 s!2326)))))

(declare-fun b!5282472 () Bool)

(declare-fun e!3284520 () Bool)

(assert (=> b!5282472 (= c!915834 e!3284520)))

(declare-fun res!2240288 () Bool)

(assert (=> b!5282472 (=> (not res!2240288) (not e!3284520))))

(assert (=> b!5282472 (= res!2240288 ((_ is Concat!23750) (regTwo!30322 (regOne!30322 r!7292))))))

(assert (=> b!5282472 (= e!3284518 e!3284517)))

(declare-fun b!5282473 () Bool)

(assert (=> b!5282473 (= e!3284520 (nullable!5074 (regOne!30322 (regTwo!30322 (regOne!30322 r!7292)))))))

(declare-fun b!5282474 () Bool)

(assert (=> b!5282474 (= e!3284518 ((_ map or) call!376224 call!376219))))

(assert (= (and d!1700000 c!915830) b!5282469))

(assert (= (and d!1700000 (not c!915830)) b!5282464))

(assert (= (and b!5282464 c!915831) b!5282474))

(assert (= (and b!5282464 (not c!915831)) b!5282472))

(assert (= (and b!5282472 res!2240288) b!5282473))

(assert (= (and b!5282472 c!915834) b!5282471))

(assert (= (and b!5282472 (not c!915834)) b!5282467))

(assert (= (and b!5282467 c!915833) b!5282465))

(assert (= (and b!5282467 (not c!915833)) b!5282466))

(assert (= (and b!5282466 c!915832) b!5282470))

(assert (= (and b!5282466 (not c!915832)) b!5282468))

(assert (= (or b!5282465 b!5282470) bm!376216))

(assert (= (or b!5282465 b!5282470) bm!376217))

(assert (= (or b!5282471 bm!376216) bm!376215))

(assert (= (or b!5282471 bm!376217) bm!376214))

(assert (= (or b!5282474 b!5282471) bm!376218))

(assert (= (or b!5282474 bm!376214) bm!376219))

(declare-fun m!6320322 () Bool)

(assert (=> bm!376215 m!6320322))

(declare-fun m!6320324 () Bool)

(assert (=> bm!376219 m!6320324))

(declare-fun m!6320326 () Bool)

(assert (=> b!5282469 m!6320326))

(declare-fun m!6320328 () Bool)

(assert (=> bm!376218 m!6320328))

(declare-fun m!6320330 () Bool)

(assert (=> b!5282473 m!6320330))

(assert (=> b!5281630 d!1700000))

(declare-fun b!5282475 () Bool)

(declare-fun e!3284525 () (InoxSet Context!8578))

(declare-fun e!3284524 () (InoxSet Context!8578))

(assert (=> b!5282475 (= e!3284525 e!3284524)))

(declare-fun c!915836 () Bool)

(assert (=> b!5282475 (= c!915836 ((_ is Union!14905) (regOne!30322 (regOne!30322 r!7292))))))

(declare-fun b!5282476 () Bool)

(declare-fun e!3284528 () (InoxSet Context!8578))

(declare-fun call!376227 () (InoxSet Context!8578))

(assert (=> b!5282476 (= e!3284528 call!376227)))

(declare-fun b!5282477 () Bool)

(declare-fun c!915837 () Bool)

(assert (=> b!5282477 (= c!915837 ((_ is Star!14905) (regOne!30322 (regOne!30322 r!7292))))))

(declare-fun e!3284527 () (InoxSet Context!8578))

(assert (=> b!5282477 (= e!3284528 e!3284527)))

(declare-fun bm!376220 () Bool)

(declare-fun call!376226 () (InoxSet Context!8578))

(declare-fun call!376230 () (InoxSet Context!8578))

(assert (=> bm!376220 (= call!376226 call!376230)))

(declare-fun b!5282478 () Bool)

(declare-fun e!3284523 () (InoxSet Context!8578))

(assert (=> b!5282478 (= e!3284523 e!3284528)))

(declare-fun c!915838 () Bool)

(assert (=> b!5282478 (= c!915838 ((_ is Concat!23750) (regOne!30322 (regOne!30322 r!7292))))))

(declare-fun c!915839 () Bool)

(declare-fun bm!376221 () Bool)

(declare-fun call!376228 () List!61015)

(assert (=> bm!376221 (= call!376228 ($colon$colon!1350 (exprs!4789 lt!2158789) (ite (or c!915839 c!915838) (regTwo!30322 (regOne!30322 (regOne!30322 r!7292))) (regOne!30322 (regOne!30322 r!7292)))))))

(declare-fun bm!376222 () Bool)

(declare-fun call!376229 () List!61015)

(assert (=> bm!376222 (= call!376229 call!376228)))

(declare-fun d!1700002 () Bool)

(declare-fun c!915835 () Bool)

(assert (=> d!1700002 (= c!915835 (and ((_ is ElementMatch!14905) (regOne!30322 (regOne!30322 r!7292))) (= (c!915577 (regOne!30322 (regOne!30322 r!7292))) (h!67338 s!2326))))))

(assert (=> d!1700002 (= (derivationStepZipperDown!353 (regOne!30322 (regOne!30322 r!7292)) lt!2158789 (h!67338 s!2326)) e!3284525)))

(declare-fun b!5282479 () Bool)

(assert (=> b!5282479 (= e!3284527 ((as const (Array Context!8578 Bool)) false))))

(declare-fun b!5282480 () Bool)

(assert (=> b!5282480 (= e!3284525 (store ((as const (Array Context!8578 Bool)) false) lt!2158789 true))))

(declare-fun bm!376223 () Bool)

(assert (=> bm!376223 (= call!376227 call!376226)))

(declare-fun b!5282481 () Bool)

(assert (=> b!5282481 (= e!3284527 call!376227)))

(declare-fun b!5282482 () Bool)

(declare-fun call!376225 () (InoxSet Context!8578))

(assert (=> b!5282482 (= e!3284523 ((_ map or) call!376225 call!376226))))

(declare-fun bm!376224 () Bool)

(assert (=> bm!376224 (= call!376225 (derivationStepZipperDown!353 (ite c!915836 (regTwo!30323 (regOne!30322 (regOne!30322 r!7292))) (regOne!30322 (regOne!30322 (regOne!30322 r!7292)))) (ite c!915836 lt!2158789 (Context!8579 call!376228)) (h!67338 s!2326)))))

(declare-fun bm!376225 () Bool)

(assert (=> bm!376225 (= call!376230 (derivationStepZipperDown!353 (ite c!915836 (regOne!30323 (regOne!30322 (regOne!30322 r!7292))) (ite c!915839 (regTwo!30322 (regOne!30322 (regOne!30322 r!7292))) (ite c!915838 (regOne!30322 (regOne!30322 (regOne!30322 r!7292))) (reg!15234 (regOne!30322 (regOne!30322 r!7292)))))) (ite (or c!915836 c!915839) lt!2158789 (Context!8579 call!376229)) (h!67338 s!2326)))))

(declare-fun b!5282483 () Bool)

(declare-fun e!3284526 () Bool)

(assert (=> b!5282483 (= c!915839 e!3284526)))

(declare-fun res!2240289 () Bool)

(assert (=> b!5282483 (=> (not res!2240289) (not e!3284526))))

(assert (=> b!5282483 (= res!2240289 ((_ is Concat!23750) (regOne!30322 (regOne!30322 r!7292))))))

(assert (=> b!5282483 (= e!3284524 e!3284523)))

(declare-fun b!5282484 () Bool)

(assert (=> b!5282484 (= e!3284526 (nullable!5074 (regOne!30322 (regOne!30322 (regOne!30322 r!7292)))))))

(declare-fun b!5282485 () Bool)

(assert (=> b!5282485 (= e!3284524 ((_ map or) call!376230 call!376225))))

(assert (= (and d!1700002 c!915835) b!5282480))

(assert (= (and d!1700002 (not c!915835)) b!5282475))

(assert (= (and b!5282475 c!915836) b!5282485))

(assert (= (and b!5282475 (not c!915836)) b!5282483))

(assert (= (and b!5282483 res!2240289) b!5282484))

(assert (= (and b!5282483 c!915839) b!5282482))

(assert (= (and b!5282483 (not c!915839)) b!5282478))

(assert (= (and b!5282478 c!915838) b!5282476))

(assert (= (and b!5282478 (not c!915838)) b!5282477))

(assert (= (and b!5282477 c!915837) b!5282481))

(assert (= (and b!5282477 (not c!915837)) b!5282479))

(assert (= (or b!5282476 b!5282481) bm!376222))

(assert (= (or b!5282476 b!5282481) bm!376223))

(assert (= (or b!5282482 bm!376222) bm!376221))

(assert (= (or b!5282482 bm!376223) bm!376220))

(assert (= (or b!5282485 b!5282482) bm!376224))

(assert (= (or b!5282485 bm!376220) bm!376225))

(declare-fun m!6320332 () Bool)

(assert (=> bm!376221 m!6320332))

(declare-fun m!6320334 () Bool)

(assert (=> bm!376225 m!6320334))

(assert (=> b!5282480 m!6319600))

(declare-fun m!6320336 () Bool)

(assert (=> bm!376224 m!6320336))

(declare-fun m!6320338 () Bool)

(assert (=> b!5282484 m!6320338))

(assert (=> b!5281630 d!1700002))

(declare-fun d!1700004 () Bool)

(declare-fun nullableFct!1452 (Regex!14905) Bool)

(assert (=> d!1700004 (= (nullable!5074 (h!67339 (exprs!4789 (h!67340 zl!343)))) (nullableFct!1452 (h!67339 (exprs!4789 (h!67340 zl!343)))))))

(declare-fun bs!1224553 () Bool)

(assert (= bs!1224553 d!1700004))

(declare-fun m!6320340 () Bool)

(assert (=> bs!1224553 m!6320340))

(assert (=> b!5281613 d!1700004))

(declare-fun b!5282486 () Bool)

(declare-fun e!3284531 () (InoxSet Context!8578))

(declare-fun e!3284529 () (InoxSet Context!8578))

(assert (=> b!5282486 (= e!3284531 e!3284529)))

(declare-fun c!915841 () Bool)

(assert (=> b!5282486 (= c!915841 ((_ is Cons!60891) (exprs!4789 (Context!8579 (Cons!60891 (h!67339 (exprs!4789 (h!67340 zl!343))) (t!374218 (exprs!4789 (h!67340 zl!343))))))))))

(declare-fun d!1700006 () Bool)

(declare-fun c!915840 () Bool)

(declare-fun e!3284530 () Bool)

(assert (=> d!1700006 (= c!915840 e!3284530)))

(declare-fun res!2240290 () Bool)

(assert (=> d!1700006 (=> (not res!2240290) (not e!3284530))))

(assert (=> d!1700006 (= res!2240290 ((_ is Cons!60891) (exprs!4789 (Context!8579 (Cons!60891 (h!67339 (exprs!4789 (h!67340 zl!343))) (t!374218 (exprs!4789 (h!67340 zl!343))))))))))

(assert (=> d!1700006 (= (derivationStepZipperUp!277 (Context!8579 (Cons!60891 (h!67339 (exprs!4789 (h!67340 zl!343))) (t!374218 (exprs!4789 (h!67340 zl!343))))) (h!67338 s!2326)) e!3284531)))

(declare-fun call!376231 () (InoxSet Context!8578))

(declare-fun b!5282487 () Bool)

(assert (=> b!5282487 (= e!3284531 ((_ map or) call!376231 (derivationStepZipperUp!277 (Context!8579 (t!374218 (exprs!4789 (Context!8579 (Cons!60891 (h!67339 (exprs!4789 (h!67340 zl!343))) (t!374218 (exprs!4789 (h!67340 zl!343)))))))) (h!67338 s!2326))))))

(declare-fun bm!376226 () Bool)

(assert (=> bm!376226 (= call!376231 (derivationStepZipperDown!353 (h!67339 (exprs!4789 (Context!8579 (Cons!60891 (h!67339 (exprs!4789 (h!67340 zl!343))) (t!374218 (exprs!4789 (h!67340 zl!343))))))) (Context!8579 (t!374218 (exprs!4789 (Context!8579 (Cons!60891 (h!67339 (exprs!4789 (h!67340 zl!343))) (t!374218 (exprs!4789 (h!67340 zl!343)))))))) (h!67338 s!2326)))))

(declare-fun b!5282488 () Bool)

(assert (=> b!5282488 (= e!3284530 (nullable!5074 (h!67339 (exprs!4789 (Context!8579 (Cons!60891 (h!67339 (exprs!4789 (h!67340 zl!343))) (t!374218 (exprs!4789 (h!67340 zl!343)))))))))))

(declare-fun b!5282489 () Bool)

(assert (=> b!5282489 (= e!3284529 call!376231)))

(declare-fun b!5282490 () Bool)

(assert (=> b!5282490 (= e!3284529 ((as const (Array Context!8578 Bool)) false))))

(assert (= (and d!1700006 res!2240290) b!5282488))

(assert (= (and d!1700006 c!915840) b!5282487))

(assert (= (and d!1700006 (not c!915840)) b!5282486))

(assert (= (and b!5282486 c!915841) b!5282489))

(assert (= (and b!5282486 (not c!915841)) b!5282490))

(assert (= (or b!5282487 b!5282489) bm!376226))

(declare-fun m!6320342 () Bool)

(assert (=> b!5282487 m!6320342))

(declare-fun m!6320344 () Bool)

(assert (=> bm!376226 m!6320344))

(declare-fun m!6320346 () Bool)

(assert (=> b!5282488 m!6320346))

(assert (=> b!5281613 d!1700006))

(declare-fun d!1700008 () Bool)

(assert (=> d!1700008 (= (flatMap!632 z!1189 lambda!266836) (dynLambda!24076 lambda!266836 (h!67340 zl!343)))))

(declare-fun lt!2158932 () Unit!153138)

(assert (=> d!1700008 (= lt!2158932 (choose!39412 z!1189 (h!67340 zl!343) lambda!266836))))

(assert (=> d!1700008 (= z!1189 (store ((as const (Array Context!8578 Bool)) false) (h!67340 zl!343) true))))

(assert (=> d!1700008 (= (lemmaFlatMapOnSingletonSet!164 z!1189 (h!67340 zl!343) lambda!266836) lt!2158932)))

(declare-fun b_lambda!203809 () Bool)

(assert (=> (not b_lambda!203809) (not d!1700008)))

(declare-fun bs!1224554 () Bool)

(assert (= bs!1224554 d!1700008))

(assert (=> bs!1224554 m!6319616))

(declare-fun m!6320348 () Bool)

(assert (=> bs!1224554 m!6320348))

(declare-fun m!6320350 () Bool)

(assert (=> bs!1224554 m!6320350))

(declare-fun m!6320352 () Bool)

(assert (=> bs!1224554 m!6320352))

(assert (=> b!5281613 d!1700008))

(declare-fun d!1700010 () Bool)

(assert (=> d!1700010 (= (flatMap!632 z!1189 lambda!266836) (choose!39415 z!1189 lambda!266836))))

(declare-fun bs!1224555 () Bool)

(assert (= bs!1224555 d!1700010))

(declare-fun m!6320354 () Bool)

(assert (=> bs!1224555 m!6320354))

(assert (=> b!5281613 d!1700010))

(declare-fun b!5282491 () Bool)

(declare-fun e!3284534 () (InoxSet Context!8578))

(declare-fun e!3284532 () (InoxSet Context!8578))

(assert (=> b!5282491 (= e!3284534 e!3284532)))

(declare-fun c!915843 () Bool)

(assert (=> b!5282491 (= c!915843 ((_ is Cons!60891) (exprs!4789 lt!2158766)))))

(declare-fun d!1700012 () Bool)

(declare-fun c!915842 () Bool)

(declare-fun e!3284533 () Bool)

(assert (=> d!1700012 (= c!915842 e!3284533)))

(declare-fun res!2240291 () Bool)

(assert (=> d!1700012 (=> (not res!2240291) (not e!3284533))))

(assert (=> d!1700012 (= res!2240291 ((_ is Cons!60891) (exprs!4789 lt!2158766)))))

(assert (=> d!1700012 (= (derivationStepZipperUp!277 lt!2158766 (h!67338 s!2326)) e!3284534)))

(declare-fun b!5282492 () Bool)

(declare-fun call!376232 () (InoxSet Context!8578))

(assert (=> b!5282492 (= e!3284534 ((_ map or) call!376232 (derivationStepZipperUp!277 (Context!8579 (t!374218 (exprs!4789 lt!2158766))) (h!67338 s!2326))))))

(declare-fun bm!376227 () Bool)

(assert (=> bm!376227 (= call!376232 (derivationStepZipperDown!353 (h!67339 (exprs!4789 lt!2158766)) (Context!8579 (t!374218 (exprs!4789 lt!2158766))) (h!67338 s!2326)))))

(declare-fun b!5282493 () Bool)

(assert (=> b!5282493 (= e!3284533 (nullable!5074 (h!67339 (exprs!4789 lt!2158766))))))

(declare-fun b!5282494 () Bool)

(assert (=> b!5282494 (= e!3284532 call!376232)))

(declare-fun b!5282495 () Bool)

(assert (=> b!5282495 (= e!3284532 ((as const (Array Context!8578 Bool)) false))))

(assert (= (and d!1700012 res!2240291) b!5282493))

(assert (= (and d!1700012 c!915842) b!5282492))

(assert (= (and d!1700012 (not c!915842)) b!5282491))

(assert (= (and b!5282491 c!915843) b!5282494))

(assert (= (and b!5282491 (not c!915843)) b!5282495))

(assert (= (or b!5282492 b!5282494) bm!376227))

(declare-fun m!6320356 () Bool)

(assert (=> b!5282492 m!6320356))

(declare-fun m!6320358 () Bool)

(assert (=> bm!376227 m!6320358))

(declare-fun m!6320360 () Bool)

(assert (=> b!5282493 m!6320360))

(assert (=> b!5281613 d!1700012))

(declare-fun b!5282496 () Bool)

(declare-fun e!3284537 () (InoxSet Context!8578))

(declare-fun e!3284536 () (InoxSet Context!8578))

(assert (=> b!5282496 (= e!3284537 e!3284536)))

(declare-fun c!915845 () Bool)

(assert (=> b!5282496 (= c!915845 ((_ is Union!14905) (h!67339 (exprs!4789 (h!67340 zl!343)))))))

(declare-fun b!5282497 () Bool)

(declare-fun e!3284540 () (InoxSet Context!8578))

(declare-fun call!376235 () (InoxSet Context!8578))

(assert (=> b!5282497 (= e!3284540 call!376235)))

(declare-fun b!5282498 () Bool)

(declare-fun c!915846 () Bool)

(assert (=> b!5282498 (= c!915846 ((_ is Star!14905) (h!67339 (exprs!4789 (h!67340 zl!343)))))))

(declare-fun e!3284539 () (InoxSet Context!8578))

(assert (=> b!5282498 (= e!3284540 e!3284539)))

(declare-fun bm!376228 () Bool)

(declare-fun call!376234 () (InoxSet Context!8578))

(declare-fun call!376238 () (InoxSet Context!8578))

(assert (=> bm!376228 (= call!376234 call!376238)))

(declare-fun b!5282499 () Bool)

(declare-fun e!3284535 () (InoxSet Context!8578))

(assert (=> b!5282499 (= e!3284535 e!3284540)))

(declare-fun c!915847 () Bool)

(assert (=> b!5282499 (= c!915847 ((_ is Concat!23750) (h!67339 (exprs!4789 (h!67340 zl!343)))))))

(declare-fun bm!376229 () Bool)

(declare-fun call!376236 () List!61015)

(declare-fun c!915848 () Bool)

(assert (=> bm!376229 (= call!376236 ($colon$colon!1350 (exprs!4789 lt!2158766) (ite (or c!915848 c!915847) (regTwo!30322 (h!67339 (exprs!4789 (h!67340 zl!343)))) (h!67339 (exprs!4789 (h!67340 zl!343))))))))

(declare-fun bm!376230 () Bool)

(declare-fun call!376237 () List!61015)

(assert (=> bm!376230 (= call!376237 call!376236)))

(declare-fun d!1700014 () Bool)

(declare-fun c!915844 () Bool)

(assert (=> d!1700014 (= c!915844 (and ((_ is ElementMatch!14905) (h!67339 (exprs!4789 (h!67340 zl!343)))) (= (c!915577 (h!67339 (exprs!4789 (h!67340 zl!343)))) (h!67338 s!2326))))))

(assert (=> d!1700014 (= (derivationStepZipperDown!353 (h!67339 (exprs!4789 (h!67340 zl!343))) lt!2158766 (h!67338 s!2326)) e!3284537)))

(declare-fun b!5282500 () Bool)

(assert (=> b!5282500 (= e!3284539 ((as const (Array Context!8578 Bool)) false))))

(declare-fun b!5282501 () Bool)

(assert (=> b!5282501 (= e!3284537 (store ((as const (Array Context!8578 Bool)) false) lt!2158766 true))))

(declare-fun bm!376231 () Bool)

(assert (=> bm!376231 (= call!376235 call!376234)))

(declare-fun b!5282502 () Bool)

(assert (=> b!5282502 (= e!3284539 call!376235)))

(declare-fun b!5282503 () Bool)

(declare-fun call!376233 () (InoxSet Context!8578))

(assert (=> b!5282503 (= e!3284535 ((_ map or) call!376233 call!376234))))

(declare-fun bm!376232 () Bool)

(assert (=> bm!376232 (= call!376233 (derivationStepZipperDown!353 (ite c!915845 (regTwo!30323 (h!67339 (exprs!4789 (h!67340 zl!343)))) (regOne!30322 (h!67339 (exprs!4789 (h!67340 zl!343))))) (ite c!915845 lt!2158766 (Context!8579 call!376236)) (h!67338 s!2326)))))

(declare-fun bm!376233 () Bool)

(assert (=> bm!376233 (= call!376238 (derivationStepZipperDown!353 (ite c!915845 (regOne!30323 (h!67339 (exprs!4789 (h!67340 zl!343)))) (ite c!915848 (regTwo!30322 (h!67339 (exprs!4789 (h!67340 zl!343)))) (ite c!915847 (regOne!30322 (h!67339 (exprs!4789 (h!67340 zl!343)))) (reg!15234 (h!67339 (exprs!4789 (h!67340 zl!343))))))) (ite (or c!915845 c!915848) lt!2158766 (Context!8579 call!376237)) (h!67338 s!2326)))))

(declare-fun b!5282504 () Bool)

(declare-fun e!3284538 () Bool)

(assert (=> b!5282504 (= c!915848 e!3284538)))

(declare-fun res!2240292 () Bool)

(assert (=> b!5282504 (=> (not res!2240292) (not e!3284538))))

(assert (=> b!5282504 (= res!2240292 ((_ is Concat!23750) (h!67339 (exprs!4789 (h!67340 zl!343)))))))

(assert (=> b!5282504 (= e!3284536 e!3284535)))

(declare-fun b!5282505 () Bool)

(assert (=> b!5282505 (= e!3284538 (nullable!5074 (regOne!30322 (h!67339 (exprs!4789 (h!67340 zl!343))))))))

(declare-fun b!5282506 () Bool)

(assert (=> b!5282506 (= e!3284536 ((_ map or) call!376238 call!376233))))

(assert (= (and d!1700014 c!915844) b!5282501))

(assert (= (and d!1700014 (not c!915844)) b!5282496))

(assert (= (and b!5282496 c!915845) b!5282506))

(assert (= (and b!5282496 (not c!915845)) b!5282504))

(assert (= (and b!5282504 res!2240292) b!5282505))

(assert (= (and b!5282504 c!915848) b!5282503))

(assert (= (and b!5282504 (not c!915848)) b!5282499))

(assert (= (and b!5282499 c!915847) b!5282497))

(assert (= (and b!5282499 (not c!915847)) b!5282498))

(assert (= (and b!5282498 c!915846) b!5282502))

(assert (= (and b!5282498 (not c!915846)) b!5282500))

(assert (= (or b!5282497 b!5282502) bm!376230))

(assert (= (or b!5282497 b!5282502) bm!376231))

(assert (= (or b!5282503 bm!376230) bm!376229))

(assert (= (or b!5282503 bm!376231) bm!376228))

(assert (= (or b!5282506 b!5282503) bm!376232))

(assert (= (or b!5282506 bm!376228) bm!376233))

(declare-fun m!6320362 () Bool)

(assert (=> bm!376229 m!6320362))

(declare-fun m!6320364 () Bool)

(assert (=> bm!376233 m!6320364))

(assert (=> b!5282501 m!6320326))

(declare-fun m!6320366 () Bool)

(assert (=> bm!376232 m!6320366))

(declare-fun m!6320368 () Bool)

(assert (=> b!5282505 m!6320368))

(assert (=> b!5281613 d!1700014))

(declare-fun b!5282507 () Bool)

(declare-fun e!3284543 () (InoxSet Context!8578))

(declare-fun e!3284541 () (InoxSet Context!8578))

(assert (=> b!5282507 (= e!3284543 e!3284541)))

(declare-fun c!915850 () Bool)

(assert (=> b!5282507 (= c!915850 ((_ is Cons!60891) (exprs!4789 (h!67340 zl!343))))))

(declare-fun d!1700016 () Bool)

(declare-fun c!915849 () Bool)

(declare-fun e!3284542 () Bool)

(assert (=> d!1700016 (= c!915849 e!3284542)))

(declare-fun res!2240293 () Bool)

(assert (=> d!1700016 (=> (not res!2240293) (not e!3284542))))

(assert (=> d!1700016 (= res!2240293 ((_ is Cons!60891) (exprs!4789 (h!67340 zl!343))))))

(assert (=> d!1700016 (= (derivationStepZipperUp!277 (h!67340 zl!343) (h!67338 s!2326)) e!3284543)))

(declare-fun b!5282508 () Bool)

(declare-fun call!376239 () (InoxSet Context!8578))

(assert (=> b!5282508 (= e!3284543 ((_ map or) call!376239 (derivationStepZipperUp!277 (Context!8579 (t!374218 (exprs!4789 (h!67340 zl!343)))) (h!67338 s!2326))))))

(declare-fun bm!376234 () Bool)

(assert (=> bm!376234 (= call!376239 (derivationStepZipperDown!353 (h!67339 (exprs!4789 (h!67340 zl!343))) (Context!8579 (t!374218 (exprs!4789 (h!67340 zl!343)))) (h!67338 s!2326)))))

(declare-fun b!5282509 () Bool)

(assert (=> b!5282509 (= e!3284542 (nullable!5074 (h!67339 (exprs!4789 (h!67340 zl!343)))))))

(declare-fun b!5282510 () Bool)

(assert (=> b!5282510 (= e!3284541 call!376239)))

(declare-fun b!5282511 () Bool)

(assert (=> b!5282511 (= e!3284541 ((as const (Array Context!8578 Bool)) false))))

(assert (= (and d!1700016 res!2240293) b!5282509))

(assert (= (and d!1700016 c!915849) b!5282508))

(assert (= (and d!1700016 (not c!915849)) b!5282507))

(assert (= (and b!5282507 c!915850) b!5282510))

(assert (= (and b!5282507 (not c!915850)) b!5282511))

(assert (= (or b!5282508 b!5282510) bm!376234))

(declare-fun m!6320370 () Bool)

(assert (=> b!5282508 m!6320370))

(declare-fun m!6320372 () Bool)

(assert (=> bm!376234 m!6320372))

(assert (=> b!5282509 m!6319618))

(assert (=> b!5281613 d!1700016))

(declare-fun bs!1224556 () Bool)

(declare-fun d!1700018 () Bool)

(assert (= bs!1224556 (and d!1700018 d!1699956)))

(declare-fun lambda!266917 () Int)

(assert (=> bs!1224556 (= lambda!266917 lambda!266904)))

(declare-fun bs!1224557 () Bool)

(assert (= bs!1224557 (and d!1700018 d!1699834)))

(assert (=> bs!1224557 (= lambda!266917 lambda!266857)))

(declare-fun bs!1224558 () Bool)

(assert (= bs!1224558 (and d!1700018 d!1699850)))

(assert (=> bs!1224558 (= lambda!266917 lambda!266863)))

(declare-fun bs!1224559 () Bool)

(assert (= bs!1224559 (and d!1700018 d!1699862)))

(assert (=> bs!1224559 (= lambda!266917 lambda!266866)))

(declare-fun bs!1224560 () Bool)

(assert (= bs!1224560 (and d!1700018 d!1699964)))

(assert (=> bs!1224560 (= lambda!266917 lambda!266905)))

(declare-fun bs!1224561 () Bool)

(assert (= bs!1224561 (and d!1700018 b!5281639)))

(assert (=> bs!1224561 (= lambda!266917 lambda!266837)))

(declare-fun bs!1224562 () Bool)

(assert (= bs!1224562 (and d!1700018 d!1699968)))

(assert (=> bs!1224562 (= lambda!266917 lambda!266906)))

(assert (=> d!1700018 (= (inv!80509 (h!67340 zl!343)) (forall!14313 (exprs!4789 (h!67340 zl!343)) lambda!266917))))

(declare-fun bs!1224563 () Bool)

(assert (= bs!1224563 d!1700018))

(declare-fun m!6320374 () Bool)

(assert (=> bs!1224563 m!6320374))

(assert (=> b!5281628 d!1700018))

(assert (=> b!5281629 d!1699878))

(declare-fun d!1700020 () Bool)

(assert (=> d!1700020 (= (flatMap!632 lt!2158780 lambda!266836) (choose!39415 lt!2158780 lambda!266836))))

(declare-fun bs!1224564 () Bool)

(assert (= bs!1224564 d!1700020))

(declare-fun m!6320376 () Bool)

(assert (=> bs!1224564 m!6320376))

(assert (=> b!5281629 d!1700020))

(declare-fun d!1700022 () Bool)

(declare-fun c!915851 () Bool)

(assert (=> d!1700022 (= c!915851 (isEmpty!32846 (t!374217 s!2326)))))

(declare-fun e!3284544 () Bool)

(assert (=> d!1700022 (= (matchZipper!1149 lt!2158763 (t!374217 s!2326)) e!3284544)))

(declare-fun b!5282512 () Bool)

(assert (=> b!5282512 (= e!3284544 (nullableZipper!1300 lt!2158763))))

(declare-fun b!5282513 () Bool)

(assert (=> b!5282513 (= e!3284544 (matchZipper!1149 (derivationStepZipper!1148 lt!2158763 (head!11319 (t!374217 s!2326))) (tail!10416 (t!374217 s!2326))))))

(assert (= (and d!1700022 c!915851) b!5282512))

(assert (= (and d!1700022 (not c!915851)) b!5282513))

(assert (=> d!1700022 m!6319932))

(declare-fun m!6320378 () Bool)

(assert (=> b!5282512 m!6320378))

(assert (=> b!5282513 m!6319936))

(assert (=> b!5282513 m!6319936))

(declare-fun m!6320380 () Bool)

(assert (=> b!5282513 m!6320380))

(assert (=> b!5282513 m!6319940))

(assert (=> b!5282513 m!6320380))

(assert (=> b!5282513 m!6319940))

(declare-fun m!6320382 () Bool)

(assert (=> b!5282513 m!6320382))

(assert (=> b!5281629 d!1700022))

(declare-fun d!1700024 () Bool)

(declare-fun e!3284545 () Bool)

(assert (=> d!1700024 (= (matchZipper!1149 ((_ map or) lt!2158764 lt!2158793) (t!374217 s!2326)) e!3284545)))

(declare-fun res!2240294 () Bool)

(assert (=> d!1700024 (=> res!2240294 e!3284545)))

(assert (=> d!1700024 (= res!2240294 (matchZipper!1149 lt!2158764 (t!374217 s!2326)))))

(declare-fun lt!2158933 () Unit!153138)

(assert (=> d!1700024 (= lt!2158933 (choose!39416 lt!2158764 lt!2158793 (t!374217 s!2326)))))

(assert (=> d!1700024 (= (lemmaZipperConcatMatchesSameAsBothZippers!142 lt!2158764 lt!2158793 (t!374217 s!2326)) lt!2158933)))

(declare-fun b!5282514 () Bool)

(assert (=> b!5282514 (= e!3284545 (matchZipper!1149 lt!2158793 (t!374217 s!2326)))))

(assert (= (and d!1700024 (not res!2240294)) b!5282514))

(declare-fun m!6320384 () Bool)

(assert (=> d!1700024 m!6320384))

(assert (=> d!1700024 m!6319524))

(declare-fun m!6320386 () Bool)

(assert (=> d!1700024 m!6320386))

(assert (=> b!5282514 m!6319544))

(assert (=> b!5281629 d!1700024))

(declare-fun d!1700026 () Bool)

(declare-fun c!915852 () Bool)

(assert (=> d!1700026 (= c!915852 (isEmpty!32846 (t!374217 s!2326)))))

(declare-fun e!3284546 () Bool)

(assert (=> d!1700026 (= (matchZipper!1149 lt!2158794 (t!374217 s!2326)) e!3284546)))

(declare-fun b!5282515 () Bool)

(assert (=> b!5282515 (= e!3284546 (nullableZipper!1300 lt!2158794))))

(declare-fun b!5282516 () Bool)

(assert (=> b!5282516 (= e!3284546 (matchZipper!1149 (derivationStepZipper!1148 lt!2158794 (head!11319 (t!374217 s!2326))) (tail!10416 (t!374217 s!2326))))))

(assert (= (and d!1700026 c!915852) b!5282515))

(assert (= (and d!1700026 (not c!915852)) b!5282516))

(assert (=> d!1700026 m!6319932))

(declare-fun m!6320388 () Bool)

(assert (=> b!5282515 m!6320388))

(assert (=> b!5282516 m!6319936))

(assert (=> b!5282516 m!6319936))

(declare-fun m!6320390 () Bool)

(assert (=> b!5282516 m!6320390))

(assert (=> b!5282516 m!6319940))

(assert (=> b!5282516 m!6320390))

(assert (=> b!5282516 m!6319940))

(declare-fun m!6320392 () Bool)

(assert (=> b!5282516 m!6320392))

(assert (=> b!5281629 d!1700026))

(declare-fun d!1700028 () Bool)

(assert (=> d!1700028 (= (flatMap!632 lt!2158780 lambda!266836) (dynLambda!24076 lambda!266836 lt!2158789))))

(declare-fun lt!2158934 () Unit!153138)

(assert (=> d!1700028 (= lt!2158934 (choose!39412 lt!2158780 lt!2158789 lambda!266836))))

(assert (=> d!1700028 (= lt!2158780 (store ((as const (Array Context!8578 Bool)) false) lt!2158789 true))))

(assert (=> d!1700028 (= (lemmaFlatMapOnSingletonSet!164 lt!2158780 lt!2158789 lambda!266836) lt!2158934)))

(declare-fun b_lambda!203811 () Bool)

(assert (=> (not b_lambda!203811) (not d!1700028)))

(declare-fun bs!1224565 () Bool)

(assert (= bs!1224565 d!1700028))

(assert (=> bs!1224565 m!6319632))

(declare-fun m!6320394 () Bool)

(assert (=> bs!1224565 m!6320394))

(declare-fun m!6320396 () Bool)

(assert (=> bs!1224565 m!6320396))

(assert (=> bs!1224565 m!6319600))

(assert (=> b!5281629 d!1700028))

(assert (=> b!5281647 d!1699864))

(declare-fun b!5282523 () Bool)

(assert (=> b!5282523 true))

(declare-fun bs!1224566 () Bool)

(declare-fun b!5282525 () Bool)

(assert (= bs!1224566 (and b!5282525 b!5282523)))

(declare-fun lambda!266925 () Int)

(declare-fun lt!2158943 () Int)

(declare-fun lambda!266926 () Int)

(declare-fun lt!2158944 () Int)

(assert (=> bs!1224566 (= (= lt!2158944 lt!2158943) (= lambda!266926 lambda!266925))))

(assert (=> b!5282525 true))

(declare-fun d!1700030 () Bool)

(declare-fun e!3284552 () Bool)

(assert (=> d!1700030 e!3284552))

(declare-fun res!2240297 () Bool)

(assert (=> d!1700030 (=> (not res!2240297) (not e!3284552))))

(assert (=> d!1700030 (= res!2240297 (>= lt!2158944 0))))

(declare-fun e!3284551 () Int)

(assert (=> d!1700030 (= lt!2158944 e!3284551)))

(declare-fun c!915861 () Bool)

(assert (=> d!1700030 (= c!915861 ((_ is Cons!60892) lt!2158774))))

(assert (=> d!1700030 (= (zipperDepth!22 lt!2158774) lt!2158944)))

(assert (=> b!5282523 (= e!3284551 lt!2158943)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!12 (Context!8578) Int)

(assert (=> b!5282523 (= lt!2158943 (maxBigInt!0 (contextDepth!12 (h!67340 lt!2158774)) (zipperDepth!22 (t!374219 lt!2158774))))))

(declare-fun lt!2158946 () Unit!153138)

(declare-fun lambda!266924 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!6 (List!61016 Int Int Int) Unit!153138)

(assert (=> b!5282523 (= lt!2158946 (lemmaForallContextDepthBiggerThanTransitive!6 (t!374219 lt!2158774) lt!2158943 (zipperDepth!22 (t!374219 lt!2158774)) lambda!266924))))

(declare-fun forall!14315 (List!61016 Int) Bool)

(assert (=> b!5282523 (forall!14315 (t!374219 lt!2158774) lambda!266925)))

(declare-fun lt!2158945 () Unit!153138)

(assert (=> b!5282523 (= lt!2158945 lt!2158946)))

(declare-fun b!5282524 () Bool)

(assert (=> b!5282524 (= e!3284551 0)))

(assert (=> b!5282525 (= e!3284552 (forall!14315 lt!2158774 lambda!266926))))

(assert (= (and d!1700030 c!915861) b!5282523))

(assert (= (and d!1700030 (not c!915861)) b!5282524))

(assert (= (and d!1700030 res!2240297) b!5282525))

(declare-fun m!6320398 () Bool)

(assert (=> b!5282523 m!6320398))

(declare-fun m!6320400 () Bool)

(assert (=> b!5282523 m!6320400))

(declare-fun m!6320402 () Bool)

(assert (=> b!5282523 m!6320402))

(assert (=> b!5282523 m!6320398))

(declare-fun m!6320404 () Bool)

(assert (=> b!5282523 m!6320404))

(assert (=> b!5282523 m!6320400))

(assert (=> b!5282523 m!6320400))

(declare-fun m!6320406 () Bool)

(assert (=> b!5282523 m!6320406))

(declare-fun m!6320408 () Bool)

(assert (=> b!5282525 m!6320408))

(assert (=> b!5281625 d!1700030))

(declare-fun bs!1224567 () Bool)

(declare-fun b!5282528 () Bool)

(assert (= bs!1224567 (and b!5282528 b!5282523)))

(declare-fun lambda!266927 () Int)

(assert (=> bs!1224567 (= lambda!266927 lambda!266924)))

(declare-fun lambda!266928 () Int)

(declare-fun lt!2158947 () Int)

(assert (=> bs!1224567 (= (= lt!2158947 lt!2158943) (= lambda!266928 lambda!266925))))

(declare-fun bs!1224568 () Bool)

(assert (= bs!1224568 (and b!5282528 b!5282525)))

(assert (=> bs!1224568 (= (= lt!2158947 lt!2158944) (= lambda!266928 lambda!266926))))

(assert (=> b!5282528 true))

(declare-fun bs!1224569 () Bool)

(declare-fun b!5282530 () Bool)

(assert (= bs!1224569 (and b!5282530 b!5282523)))

(declare-fun lt!2158948 () Int)

(declare-fun lambda!266929 () Int)

(assert (=> bs!1224569 (= (= lt!2158948 lt!2158943) (= lambda!266929 lambda!266925))))

(declare-fun bs!1224570 () Bool)

(assert (= bs!1224570 (and b!5282530 b!5282525)))

(assert (=> bs!1224570 (= (= lt!2158948 lt!2158944) (= lambda!266929 lambda!266926))))

(declare-fun bs!1224571 () Bool)

(assert (= bs!1224571 (and b!5282530 b!5282528)))

(assert (=> bs!1224571 (= (= lt!2158948 lt!2158947) (= lambda!266929 lambda!266928))))

(assert (=> b!5282530 true))

(declare-fun d!1700032 () Bool)

(declare-fun e!3284554 () Bool)

(assert (=> d!1700032 e!3284554))

(declare-fun res!2240298 () Bool)

(assert (=> d!1700032 (=> (not res!2240298) (not e!3284554))))

(assert (=> d!1700032 (= res!2240298 (>= lt!2158948 0))))

(declare-fun e!3284553 () Int)

(assert (=> d!1700032 (= lt!2158948 e!3284553)))

(declare-fun c!915862 () Bool)

(assert (=> d!1700032 (= c!915862 ((_ is Cons!60892) zl!343))))

(assert (=> d!1700032 (= (zipperDepth!22 zl!343) lt!2158948)))

(assert (=> b!5282528 (= e!3284553 lt!2158947)))

(assert (=> b!5282528 (= lt!2158947 (maxBigInt!0 (contextDepth!12 (h!67340 zl!343)) (zipperDepth!22 (t!374219 zl!343))))))

(declare-fun lt!2158950 () Unit!153138)

(assert (=> b!5282528 (= lt!2158950 (lemmaForallContextDepthBiggerThanTransitive!6 (t!374219 zl!343) lt!2158947 (zipperDepth!22 (t!374219 zl!343)) lambda!266927))))

(assert (=> b!5282528 (forall!14315 (t!374219 zl!343) lambda!266928)))

(declare-fun lt!2158949 () Unit!153138)

(assert (=> b!5282528 (= lt!2158949 lt!2158950)))

(declare-fun b!5282529 () Bool)

(assert (=> b!5282529 (= e!3284553 0)))

(assert (=> b!5282530 (= e!3284554 (forall!14315 zl!343 lambda!266929))))

(assert (= (and d!1700032 c!915862) b!5282528))

(assert (= (and d!1700032 (not c!915862)) b!5282529))

(assert (= (and d!1700032 res!2240298) b!5282530))

(declare-fun m!6320410 () Bool)

(assert (=> b!5282528 m!6320410))

(declare-fun m!6320412 () Bool)

(assert (=> b!5282528 m!6320412))

(declare-fun m!6320414 () Bool)

(assert (=> b!5282528 m!6320414))

(assert (=> b!5282528 m!6320410))

(declare-fun m!6320416 () Bool)

(assert (=> b!5282528 m!6320416))

(assert (=> b!5282528 m!6320412))

(assert (=> b!5282528 m!6320412))

(declare-fun m!6320418 () Bool)

(assert (=> b!5282528 m!6320418))

(declare-fun m!6320420 () Bool)

(assert (=> b!5282530 m!6320420))

(assert (=> b!5281625 d!1700032))

(declare-fun d!1700034 () Bool)

(declare-fun lt!2158953 () Int)

(assert (=> d!1700034 (>= lt!2158953 0)))

(declare-fun e!3284557 () Int)

(assert (=> d!1700034 (= lt!2158953 e!3284557)))

(declare-fun c!915866 () Bool)

(assert (=> d!1700034 (= c!915866 ((_ is Cons!60891) (exprs!4789 lt!2158781)))))

(assert (=> d!1700034 (= (contextDepthTotal!46 lt!2158781) lt!2158953)))

(declare-fun b!5282535 () Bool)

(declare-fun regexDepthTotal!12 (Regex!14905) Int)

(assert (=> b!5282535 (= e!3284557 (+ (regexDepthTotal!12 (h!67339 (exprs!4789 lt!2158781))) (contextDepthTotal!46 (Context!8579 (t!374218 (exprs!4789 lt!2158781))))))))

(declare-fun b!5282536 () Bool)

(assert (=> b!5282536 (= e!3284557 1)))

(assert (= (and d!1700034 c!915866) b!5282535))

(assert (= (and d!1700034 (not c!915866)) b!5282536))

(declare-fun m!6320422 () Bool)

(assert (=> b!5282535 m!6320422))

(declare-fun m!6320424 () Bool)

(assert (=> b!5282535 m!6320424))

(assert (=> b!5281646 d!1700034))

(declare-fun d!1700036 () Bool)

(declare-fun lt!2158954 () Int)

(assert (=> d!1700036 (>= lt!2158954 0)))

(declare-fun e!3284558 () Int)

(assert (=> d!1700036 (= lt!2158954 e!3284558)))

(declare-fun c!915867 () Bool)

(assert (=> d!1700036 (= c!915867 ((_ is Cons!60891) (exprs!4789 (h!67340 zl!343))))))

(assert (=> d!1700036 (= (contextDepthTotal!46 (h!67340 zl!343)) lt!2158954)))

(declare-fun b!5282537 () Bool)

(assert (=> b!5282537 (= e!3284558 (+ (regexDepthTotal!12 (h!67339 (exprs!4789 (h!67340 zl!343)))) (contextDepthTotal!46 (Context!8579 (t!374218 (exprs!4789 (h!67340 zl!343)))))))))

(declare-fun b!5282538 () Bool)

(assert (=> b!5282538 (= e!3284558 1)))

(assert (= (and d!1700036 c!915867) b!5282537))

(assert (= (and d!1700036 (not c!915867)) b!5282538))

(declare-fun m!6320426 () Bool)

(assert (=> b!5282537 m!6320426))

(declare-fun m!6320428 () Bool)

(assert (=> b!5282537 m!6320428))

(assert (=> b!5281646 d!1700036))

(declare-fun d!1700038 () Bool)

(assert (=> d!1700038 (= (isEmpty!32843 (t!374219 zl!343)) ((_ is Nil!60892) (t!374219 zl!343)))))

(assert (=> b!5281627 d!1700038))

(declare-fun b!5282557 () Bool)

(declare-fun res!2240309 () Bool)

(declare-fun e!3284578 () Bool)

(assert (=> b!5282557 (=> res!2240309 e!3284578)))

(assert (=> b!5282557 (= res!2240309 (not ((_ is Concat!23750) r!7292)))))

(declare-fun e!3284577 () Bool)

(assert (=> b!5282557 (= e!3284577 e!3284578)))

(declare-fun bm!376241 () Bool)

(declare-fun call!376247 () Bool)

(declare-fun c!915872 () Bool)

(assert (=> bm!376241 (= call!376247 (validRegex!6641 (ite c!915872 (regTwo!30323 r!7292) (regTwo!30322 r!7292))))))

(declare-fun bm!376242 () Bool)

(declare-fun call!376248 () Bool)

(declare-fun call!376246 () Bool)

(assert (=> bm!376242 (= call!376248 call!376246)))

(declare-fun b!5282558 () Bool)

(declare-fun e!3284575 () Bool)

(assert (=> b!5282558 (= e!3284575 e!3284577)))

(assert (=> b!5282558 (= c!915872 ((_ is Union!14905) r!7292))))

(declare-fun b!5282559 () Bool)

(declare-fun e!3284579 () Bool)

(assert (=> b!5282559 (= e!3284579 call!376246)))

(declare-fun d!1700040 () Bool)

(declare-fun res!2240313 () Bool)

(declare-fun e!3284574 () Bool)

(assert (=> d!1700040 (=> res!2240313 e!3284574)))

(assert (=> d!1700040 (= res!2240313 ((_ is ElementMatch!14905) r!7292))))

(assert (=> d!1700040 (= (validRegex!6641 r!7292) e!3284574)))

(declare-fun b!5282560 () Bool)

(declare-fun e!3284576 () Bool)

(assert (=> b!5282560 (= e!3284576 call!376247)))

(declare-fun bm!376243 () Bool)

(declare-fun c!915873 () Bool)

(assert (=> bm!376243 (= call!376246 (validRegex!6641 (ite c!915873 (reg!15234 r!7292) (ite c!915872 (regOne!30323 r!7292) (regOne!30322 r!7292)))))))

(declare-fun b!5282561 () Bool)

(assert (=> b!5282561 (= e!3284578 e!3284576)))

(declare-fun res!2240312 () Bool)

(assert (=> b!5282561 (=> (not res!2240312) (not e!3284576))))

(assert (=> b!5282561 (= res!2240312 call!376248)))

(declare-fun b!5282562 () Bool)

(assert (=> b!5282562 (= e!3284574 e!3284575)))

(assert (=> b!5282562 (= c!915873 ((_ is Star!14905) r!7292))))

(declare-fun b!5282563 () Bool)

(declare-fun e!3284573 () Bool)

(assert (=> b!5282563 (= e!3284573 call!376247)))

(declare-fun b!5282564 () Bool)

(assert (=> b!5282564 (= e!3284575 e!3284579)))

(declare-fun res!2240310 () Bool)

(assert (=> b!5282564 (= res!2240310 (not (nullable!5074 (reg!15234 r!7292))))))

(assert (=> b!5282564 (=> (not res!2240310) (not e!3284579))))

(declare-fun b!5282565 () Bool)

(declare-fun res!2240311 () Bool)

(assert (=> b!5282565 (=> (not res!2240311) (not e!3284573))))

(assert (=> b!5282565 (= res!2240311 call!376248)))

(assert (=> b!5282565 (= e!3284577 e!3284573)))

(assert (= (and d!1700040 (not res!2240313)) b!5282562))

(assert (= (and b!5282562 c!915873) b!5282564))

(assert (= (and b!5282562 (not c!915873)) b!5282558))

(assert (= (and b!5282564 res!2240310) b!5282559))

(assert (= (and b!5282558 c!915872) b!5282565))

(assert (= (and b!5282558 (not c!915872)) b!5282557))

(assert (= (and b!5282565 res!2240311) b!5282563))

(assert (= (and b!5282557 (not res!2240309)) b!5282561))

(assert (= (and b!5282561 res!2240312) b!5282560))

(assert (= (or b!5282563 b!5282560) bm!376241))

(assert (= (or b!5282565 b!5282561) bm!376242))

(assert (= (or b!5282559 bm!376242) bm!376243))

(declare-fun m!6320430 () Bool)

(assert (=> bm!376241 m!6320430))

(declare-fun m!6320432 () Bool)

(assert (=> bm!376243 m!6320432))

(declare-fun m!6320434 () Bool)

(assert (=> b!5282564 m!6320434))

(assert (=> start!557650 d!1700040))

(declare-fun d!1700042 () Bool)

(assert (=> d!1700042 (= (nullable!5074 (regOne!30322 (regOne!30322 r!7292))) (nullableFct!1452 (regOne!30322 (regOne!30322 r!7292))))))

(declare-fun bs!1224572 () Bool)

(assert (= bs!1224572 d!1700042))

(declare-fun m!6320436 () Bool)

(assert (=> bs!1224572 m!6320436))

(assert (=> b!5281626 d!1700042))

(declare-fun b!5282573 () Bool)

(declare-fun e!3284585 () Bool)

(declare-fun tp!1475540 () Bool)

(assert (=> b!5282573 (= e!3284585 tp!1475540)))

(declare-fun e!3284584 () Bool)

(declare-fun tp!1475541 () Bool)

(declare-fun b!5282572 () Bool)

(assert (=> b!5282572 (= e!3284584 (and (inv!80509 (h!67340 (t!374219 zl!343))) e!3284585 tp!1475541))))

(assert (=> b!5281628 (= tp!1475470 e!3284584)))

(assert (= b!5282572 b!5282573))

(assert (= (and b!5281628 ((_ is Cons!60892) (t!374219 zl!343))) b!5282572))

(declare-fun m!6320438 () Bool)

(assert (=> b!5282572 m!6320438))

(declare-fun b!5282578 () Bool)

(declare-fun e!3284588 () Bool)

(declare-fun tp!1475546 () Bool)

(declare-fun tp!1475547 () Bool)

(assert (=> b!5282578 (= e!3284588 (and tp!1475546 tp!1475547))))

(assert (=> b!5281633 (= tp!1475475 e!3284588)))

(assert (= (and b!5281633 ((_ is Cons!60891) (exprs!4789 (h!67340 zl!343)))) b!5282578))

(declare-fun condSetEmpty!33863 () Bool)

(assert (=> setNonEmpty!33857 (= condSetEmpty!33863 (= setRest!33857 ((as const (Array Context!8578 Bool)) false)))))

(declare-fun setRes!33863 () Bool)

(assert (=> setNonEmpty!33857 (= tp!1475469 setRes!33863)))

(declare-fun setIsEmpty!33863 () Bool)

(assert (=> setIsEmpty!33863 setRes!33863))

(declare-fun tp!1475553 () Bool)

(declare-fun setNonEmpty!33863 () Bool)

(declare-fun setElem!33863 () Context!8578)

(declare-fun e!3284591 () Bool)

(assert (=> setNonEmpty!33863 (= setRes!33863 (and tp!1475553 (inv!80509 setElem!33863) e!3284591))))

(declare-fun setRest!33863 () (InoxSet Context!8578))

(assert (=> setNonEmpty!33863 (= setRest!33857 ((_ map or) (store ((as const (Array Context!8578 Bool)) false) setElem!33863 true) setRest!33863))))

(declare-fun b!5282583 () Bool)

(declare-fun tp!1475552 () Bool)

(assert (=> b!5282583 (= e!3284591 tp!1475552)))

(assert (= (and setNonEmpty!33857 condSetEmpty!33863) setIsEmpty!33863))

(assert (= (and setNonEmpty!33857 (not condSetEmpty!33863)) setNonEmpty!33863))

(assert (= setNonEmpty!33863 b!5282583))

(declare-fun m!6320440 () Bool)

(assert (=> setNonEmpty!33863 m!6320440))

(declare-fun b!5282596 () Bool)

(declare-fun e!3284594 () Bool)

(declare-fun tp!1475564 () Bool)

(assert (=> b!5282596 (= e!3284594 tp!1475564)))

(declare-fun b!5282595 () Bool)

(declare-fun tp!1475566 () Bool)

(declare-fun tp!1475568 () Bool)

(assert (=> b!5282595 (= e!3284594 (and tp!1475566 tp!1475568))))

(assert (=> b!5281638 (= tp!1475477 e!3284594)))

(declare-fun b!5282597 () Bool)

(declare-fun tp!1475565 () Bool)

(declare-fun tp!1475567 () Bool)

(assert (=> b!5282597 (= e!3284594 (and tp!1475565 tp!1475567))))

(declare-fun b!5282594 () Bool)

(assert (=> b!5282594 (= e!3284594 tp_is_empty!39063)))

(assert (= (and b!5281638 ((_ is ElementMatch!14905) (regOne!30322 r!7292))) b!5282594))

(assert (= (and b!5281638 ((_ is Concat!23750) (regOne!30322 r!7292))) b!5282595))

(assert (= (and b!5281638 ((_ is Star!14905) (regOne!30322 r!7292))) b!5282596))

(assert (= (and b!5281638 ((_ is Union!14905) (regOne!30322 r!7292))) b!5282597))

(declare-fun b!5282600 () Bool)

(declare-fun e!3284595 () Bool)

(declare-fun tp!1475569 () Bool)

(assert (=> b!5282600 (= e!3284595 tp!1475569)))

(declare-fun b!5282599 () Bool)

(declare-fun tp!1475571 () Bool)

(declare-fun tp!1475573 () Bool)

(assert (=> b!5282599 (= e!3284595 (and tp!1475571 tp!1475573))))

(assert (=> b!5281638 (= tp!1475472 e!3284595)))

(declare-fun b!5282601 () Bool)

(declare-fun tp!1475570 () Bool)

(declare-fun tp!1475572 () Bool)

(assert (=> b!5282601 (= e!3284595 (and tp!1475570 tp!1475572))))

(declare-fun b!5282598 () Bool)

(assert (=> b!5282598 (= e!3284595 tp_is_empty!39063)))

(assert (= (and b!5281638 ((_ is ElementMatch!14905) (regTwo!30322 r!7292))) b!5282598))

(assert (= (and b!5281638 ((_ is Concat!23750) (regTwo!30322 r!7292))) b!5282599))

(assert (= (and b!5281638 ((_ is Star!14905) (regTwo!30322 r!7292))) b!5282600))

(assert (= (and b!5281638 ((_ is Union!14905) (regTwo!30322 r!7292))) b!5282601))

(declare-fun b!5282604 () Bool)

(declare-fun e!3284596 () Bool)

(declare-fun tp!1475574 () Bool)

(assert (=> b!5282604 (= e!3284596 tp!1475574)))

(declare-fun b!5282603 () Bool)

(declare-fun tp!1475576 () Bool)

(declare-fun tp!1475578 () Bool)

(assert (=> b!5282603 (= e!3284596 (and tp!1475576 tp!1475578))))

(assert (=> b!5281631 (= tp!1475468 e!3284596)))

(declare-fun b!5282605 () Bool)

(declare-fun tp!1475575 () Bool)

(declare-fun tp!1475577 () Bool)

(assert (=> b!5282605 (= e!3284596 (and tp!1475575 tp!1475577))))

(declare-fun b!5282602 () Bool)

(assert (=> b!5282602 (= e!3284596 tp_is_empty!39063)))

(assert (= (and b!5281631 ((_ is ElementMatch!14905) (regOne!30323 r!7292))) b!5282602))

(assert (= (and b!5281631 ((_ is Concat!23750) (regOne!30323 r!7292))) b!5282603))

(assert (= (and b!5281631 ((_ is Star!14905) (regOne!30323 r!7292))) b!5282604))

(assert (= (and b!5281631 ((_ is Union!14905) (regOne!30323 r!7292))) b!5282605))

(declare-fun b!5282608 () Bool)

(declare-fun e!3284597 () Bool)

(declare-fun tp!1475579 () Bool)

(assert (=> b!5282608 (= e!3284597 tp!1475579)))

(declare-fun b!5282607 () Bool)

(declare-fun tp!1475581 () Bool)

(declare-fun tp!1475583 () Bool)

(assert (=> b!5282607 (= e!3284597 (and tp!1475581 tp!1475583))))

(assert (=> b!5281631 (= tp!1475471 e!3284597)))

(declare-fun b!5282609 () Bool)

(declare-fun tp!1475580 () Bool)

(declare-fun tp!1475582 () Bool)

(assert (=> b!5282609 (= e!3284597 (and tp!1475580 tp!1475582))))

(declare-fun b!5282606 () Bool)

(assert (=> b!5282606 (= e!3284597 tp_is_empty!39063)))

(assert (= (and b!5281631 ((_ is ElementMatch!14905) (regTwo!30323 r!7292))) b!5282606))

(assert (= (and b!5281631 ((_ is Concat!23750) (regTwo!30323 r!7292))) b!5282607))

(assert (= (and b!5281631 ((_ is Star!14905) (regTwo!30323 r!7292))) b!5282608))

(assert (= (and b!5281631 ((_ is Union!14905) (regTwo!30323 r!7292))) b!5282609))

(declare-fun b!5282610 () Bool)

(declare-fun e!3284598 () Bool)

(declare-fun tp!1475584 () Bool)

(declare-fun tp!1475585 () Bool)

(assert (=> b!5282610 (= e!3284598 (and tp!1475584 tp!1475585))))

(assert (=> b!5281621 (= tp!1475473 e!3284598)))

(assert (= (and b!5281621 ((_ is Cons!60891) (exprs!4789 setElem!33857))) b!5282610))

(declare-fun b!5282613 () Bool)

(declare-fun e!3284599 () Bool)

(declare-fun tp!1475586 () Bool)

(assert (=> b!5282613 (= e!3284599 tp!1475586)))

(declare-fun b!5282612 () Bool)

(declare-fun tp!1475588 () Bool)

(declare-fun tp!1475590 () Bool)

(assert (=> b!5282612 (= e!3284599 (and tp!1475588 tp!1475590))))

(assert (=> b!5281615 (= tp!1475476 e!3284599)))

(declare-fun b!5282614 () Bool)

(declare-fun tp!1475587 () Bool)

(declare-fun tp!1475589 () Bool)

(assert (=> b!5282614 (= e!3284599 (and tp!1475587 tp!1475589))))

(declare-fun b!5282611 () Bool)

(assert (=> b!5282611 (= e!3284599 tp_is_empty!39063)))

(assert (= (and b!5281615 ((_ is ElementMatch!14905) (reg!15234 r!7292))) b!5282611))

(assert (= (and b!5281615 ((_ is Concat!23750) (reg!15234 r!7292))) b!5282612))

(assert (= (and b!5281615 ((_ is Star!14905) (reg!15234 r!7292))) b!5282613))

(assert (= (and b!5281615 ((_ is Union!14905) (reg!15234 r!7292))) b!5282614))

(declare-fun b!5282619 () Bool)

(declare-fun e!3284602 () Bool)

(declare-fun tp!1475593 () Bool)

(assert (=> b!5282619 (= e!3284602 (and tp_is_empty!39063 tp!1475593))))

(assert (=> b!5281617 (= tp!1475474 e!3284602)))

(assert (= (and b!5281617 ((_ is Cons!60890) (t!374217 s!2326))) b!5282619))

(declare-fun b_lambda!203813 () Bool)

(assert (= b_lambda!203809 (or b!5281613 b_lambda!203813)))

(declare-fun bs!1224573 () Bool)

(declare-fun d!1700044 () Bool)

(assert (= bs!1224573 (and d!1700044 b!5281613)))

(assert (=> bs!1224573 (= (dynLambda!24076 lambda!266836 (h!67340 zl!343)) (derivationStepZipperUp!277 (h!67340 zl!343) (h!67338 s!2326)))))

(assert (=> bs!1224573 m!6319622))

(assert (=> d!1700008 d!1700044))

(declare-fun b_lambda!203815 () Bool)

(assert (= b_lambda!203811 (or b!5281613 b_lambda!203815)))

(declare-fun bs!1224574 () Bool)

(declare-fun d!1700046 () Bool)

(assert (= bs!1224574 (and d!1700046 b!5281613)))

(assert (=> bs!1224574 (= (dynLambda!24076 lambda!266836 lt!2158789) (derivationStepZipperUp!277 lt!2158789 (h!67338 s!2326)))))

(assert (=> bs!1224574 m!6319604))

(assert (=> d!1700028 d!1700046))

(declare-fun b_lambda!203817 () Bool)

(assert (= b_lambda!203807 (or b!5281639 b_lambda!203817)))

(declare-fun bs!1224575 () Bool)

(declare-fun d!1700048 () Bool)

(assert (= bs!1224575 (and d!1700048 b!5281639)))

(assert (=> bs!1224575 (= (dynLambda!24077 lambda!266837 (h!67339 lt!2158798)) (validRegex!6641 (h!67339 lt!2158798)))))

(declare-fun m!6320442 () Bool)

(assert (=> bs!1224575 m!6320442))

(assert (=> b!5282300 d!1700048))

(declare-fun b_lambda!203819 () Bool)

(assert (= b_lambda!203795 (or b!5281613 b_lambda!203819)))

(declare-fun bs!1224576 () Bool)

(declare-fun d!1700050 () Bool)

(assert (= bs!1224576 (and d!1700050 b!5281613)))

(assert (=> bs!1224576 (= (dynLambda!24076 lambda!266836 lt!2158781) (derivationStepZipperUp!277 lt!2158781 (h!67338 s!2326)))))

(assert (=> bs!1224576 m!6319602))

(assert (=> d!1699872 d!1700050))

(check-sat (not d!1699962) (not b!5282386) (not b!5282525) (not b!5282388) (not b!5282354) (not b!5282357) (not b!5281924) (not b!5282359) (not d!1700018) (not b!5281926) (not bm!376168) (not b!5282324) (not b!5282578) (not b!5282583) (not bm!376161) (not b!5282370) (not b!5282429) (not bm!376224) (not b!5282326) (not bm!376226) (not bs!1224574) (not bm!376232) (not b!5282515) (not d!1699998) (not d!1699952) (not b!5282366) (not b!5282399) (not b!5282352) (not b!5282301) (not b!5282343) (not b!5282619) (not b_lambda!203817) (not b!5282335) (not d!1699966) (not d!1699972) (not b!5282392) (not b!5282604) (not d!1699948) (not b!5281959) (not b!5281925) (not b!5282325) (not b!5282323) (not b!5282387) (not b!5282508) (not b!5282572) (not b!5282610) (not b!5282603) (not b!5282607) (not d!1699886) (not b!5282523) (not bs!1224573) (not d!1700042) (not d!1699970) (not d!1699974) (not d!1700008) (not b!5282383) (not b!5282601) (not d!1699946) (not d!1700020) (not b!5282080) (not d!1699988) (not b!5282285) (not b!5282564) (not b!5281945) (not b!5282353) (not b!5282365) (not d!1699976) (not b!5282509) (not b!5282346) (not bm!376218) (not b!5282282) (not d!1699834) (not b!5282427) (not d!1699956) (not d!1699982) (not b!5282390) (not d!1699992) (not d!1699904) (not b!5281920) (not b!5282401) (not bm!376225) (not b!5282025) (not b!5282613) (not b!5282609) (not b!5282024) (not b!5282385) (not b!5282083) (not b!5282484) (not b!5282492) (not d!1699900) (not bm!376221) (not b!5282363) (not b!5282596) (not b!5282493) (not b!5282599) (not b!5282513) (not d!1699898) (not b!5282597) (not b!5282573) (not b!5282338) (not b_lambda!203813) (not b!5282347) (not b!5281927) (not d!1699862) (not b!5282612) (not b!5282342) (not b!5282322) (not d!1699980) (not b!5282384) (not b!5282391) (not bm!376219) (not b!5282284) (not b!5281921) (not b!5282378) (not d!1699958) (not d!1699964) (not b_lambda!203815) (not b!5282249) (not b!5281919) (not b!5282389) (not d!1699902) (not d!1700026) (not setNonEmpty!33863) (not d!1699950) (not b!5282381) (not d!1699960) (not bm!376195) (not bs!1224576) (not d!1699870) (not b!5282595) (not bm!376200) (not b!5282079) (not d!1699994) (not b!5282530) (not bs!1224575) (not b!5282600) (not b!5282081) (not b!5282009) (not bm!376215) (not b!5282351) (not b!5282488) (not b!5282350) (not b!5282516) (not d!1699872) (not b!5282423) (not bm!376196) (not b!5282393) (not d!1700004) (not bm!376229) (not bm!376233) (not b!5282537) (not b!5282349) (not b!5282008) (not b!5281960) (not b_lambda!203819) (not b!5282295) (not d!1700028) (not d!1699996) (not d!1700024) (not b!5282329) (not b!5282376) (not d!1699944) (not b!5282428) (not b!5282082) (not bm!376201) (not d!1700022) (not b!5282487) (not b!5282425) tp_is_empty!39063 (not d!1699968) (not b!5282535) (not bm!376241) (not b!5282375) (not b!5282614) (not b!5282337) (not b!5282528) (not b!5282369) (not b!5282377) (not b!5282348) (not d!1699978) (not bm!376234) (not d!1699990) (not d!1700010) (not d!1699850) (not bm!376227) (not b!5282341) (not bm!376199) (not d!1699864) (not b!5282394) (not b!5282240) (not b!5282422) (not b!5282289) (not b!5282288) (not b!5282605) (not b!5282608) (not bm!376243) (not b!5282331) (not b!5282505) (not b!5282290) (not b!5282374) (not b!5282514) (not b!5282512) (not b!5282473) (not b!5282371))
(check-sat)
