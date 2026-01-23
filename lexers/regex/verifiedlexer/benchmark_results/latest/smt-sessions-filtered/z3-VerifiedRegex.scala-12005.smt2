; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!672614 () Bool)

(assert start!672614)

(declare-fun b!6995164 () Bool)

(assert (=> b!6995164 true))

(declare-fun b!6995155 () Bool)

(assert (=> b!6995155 true))

(declare-fun b!6995161 () Bool)

(assert (=> b!6995161 true))

(declare-fun b!6995142 () Bool)

(declare-fun e!4204578 () Bool)

(assert (=> b!6995142 (= e!4204578 true)))

(declare-datatypes ((C!34784 0))(
  ( (C!34785 (val!27094 Int)) )
))
(declare-datatypes ((List!67316 0))(
  ( (Nil!67192) (Cons!67192 (h!73640 C!34784) (t!381063 List!67316)) )
))
(declare-fun lt!2492840 () List!67316)

(declare-datatypes ((tuple2!67860 0))(
  ( (tuple2!67861 (_1!37233 List!67316) (_2!37233 List!67316)) )
))
(declare-fun lt!2492835 () tuple2!67860)

(declare-fun ++!15215 (List!67316 List!67316) List!67316)

(assert (=> b!6995142 (= lt!2492840 (++!15215 (_1!37233 lt!2492835) (_2!37233 lt!2492835)))))

(declare-fun b!6995143 () Bool)

(declare-fun e!4204583 () Bool)

(declare-fun e!4204584 () Bool)

(assert (=> b!6995143 (= e!4204583 e!4204584)))

(declare-fun res!2853555 () Bool)

(assert (=> b!6995143 (=> res!2853555 e!4204584)))

(declare-fun lt!2492822 () Int)

(declare-datatypes ((Regex!17257 0))(
  ( (ElementMatch!17257 (c!1297842 C!34784)) (Concat!26102 (regOne!35026 Regex!17257) (regTwo!35026 Regex!17257)) (EmptyExpr!17257) (Star!17257 (reg!17586 Regex!17257)) (EmptyLang!17257) (Union!17257 (regOne!35027 Regex!17257) (regTwo!35027 Regex!17257)) )
))
(declare-datatypes ((List!67317 0))(
  ( (Nil!67193) (Cons!67193 (h!73641 Regex!17257) (t!381064 List!67317)) )
))
(declare-datatypes ((Context!12506 0))(
  ( (Context!12507 (exprs!6753 List!67317)) )
))
(declare-fun lt!2492859 () Context!12506)

(declare-fun contextDepthTotal!450 (Context!12506) Int)

(assert (=> b!6995143 (= res!2853555 (<= lt!2492822 (contextDepthTotal!450 lt!2492859)))))

(declare-fun lt!2492836 () Int)

(assert (=> b!6995143 (<= lt!2492822 lt!2492836)))

(declare-datatypes ((List!67318 0))(
  ( (Nil!67194) (Cons!67194 (h!73642 Context!12506) (t!381065 List!67318)) )
))
(declare-fun lt!2492826 () List!67318)

(declare-fun zipperDepthTotal!478 (List!67318) Int)

(assert (=> b!6995143 (= lt!2492836 (zipperDepthTotal!478 lt!2492826))))

(declare-fun lt!2492847 () Context!12506)

(assert (=> b!6995143 (= lt!2492822 (contextDepthTotal!450 lt!2492847))))

(declare-datatypes ((Unit!161169 0))(
  ( (Unit!161170) )
))
(declare-fun lt!2492845 () Unit!161169)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!18 (List!67318 Context!12506) Unit!161169)

(assert (=> b!6995143 (= lt!2492845 (lemmaTotalDepthZipperLargerThanOfAnyContext!18 lt!2492826 lt!2492847))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z1!570 () (InoxSet Context!12506))

(declare-fun toList!10617 ((InoxSet Context!12506)) List!67318)

(assert (=> b!6995143 (= lt!2492826 (toList!10617 z1!570))))

(declare-fun lt!2492851 () List!67317)

(declare-fun lt!2492866 () Unit!161169)

(declare-fun ct2!306 () Context!12506)

(declare-fun lambda!404181 () Int)

(declare-fun lemmaConcatPreservesForall!593 (List!67317 List!67317 Int) Unit!161169)

(assert (=> b!6995143 (= lt!2492866 (lemmaConcatPreservesForall!593 lt!2492851 (exprs!6753 ct2!306) lambda!404181))))

(declare-fun lt!2492820 () Unit!161169)

(assert (=> b!6995143 (= lt!2492820 (lemmaConcatPreservesForall!593 lt!2492851 (exprs!6753 ct2!306) lambda!404181))))

(declare-fun lt!2492864 () Unit!161169)

(assert (=> b!6995143 (= lt!2492864 (lemmaConcatPreservesForall!593 lt!2492851 (exprs!6753 ct2!306) lambda!404181))))

(declare-fun lambda!404182 () Int)

(declare-fun s!7408 () List!67316)

(declare-fun lt!2492825 () (InoxSet Context!12506))

(declare-fun flatMap!2243 ((InoxSet Context!12506) Int) (InoxSet Context!12506))

(declare-fun derivationStepZipperUp!1907 (Context!12506 C!34784) (InoxSet Context!12506))

(assert (=> b!6995143 (= (flatMap!2243 lt!2492825 lambda!404182) (derivationStepZipperUp!1907 lt!2492859 (h!73640 s!7408)))))

(declare-fun lt!2492844 () Unit!161169)

(declare-fun lemmaFlatMapOnSingletonSet!1758 ((InoxSet Context!12506) Context!12506 Int) Unit!161169)

(assert (=> b!6995143 (= lt!2492844 (lemmaFlatMapOnSingletonSet!1758 lt!2492825 lt!2492859 lambda!404182))))

(declare-fun lambda!404180 () Int)

(declare-fun map!15532 ((InoxSet Context!12506) Int) (InoxSet Context!12506))

(declare-fun ++!15216 (List!67317 List!67317) List!67317)

(assert (=> b!6995143 (= (map!15532 lt!2492825 lambda!404180) (store ((as const (Array Context!12506 Bool)) false) (Context!12507 (++!15216 lt!2492851 (exprs!6753 ct2!306))) true))))

(declare-fun lt!2492824 () Unit!161169)

(assert (=> b!6995143 (= lt!2492824 (lemmaConcatPreservesForall!593 lt!2492851 (exprs!6753 ct2!306) lambda!404181))))

(declare-fun lt!2492869 () Unit!161169)

(declare-fun lemmaMapOnSingletonSet!322 ((InoxSet Context!12506) Context!12506 Int) Unit!161169)

(assert (=> b!6995143 (= lt!2492869 (lemmaMapOnSingletonSet!322 lt!2492825 lt!2492859 lambda!404180))))

(assert (=> b!6995143 (= lt!2492825 (store ((as const (Array Context!12506 Bool)) false) lt!2492859 true))))

(declare-fun setNonEmpty!47979 () Bool)

(declare-fun setRes!47979 () Bool)

(declare-fun e!4204577 () Bool)

(declare-fun setElem!47979 () Context!12506)

(declare-fun tp!1930472 () Bool)

(declare-fun inv!86001 (Context!12506) Bool)

(assert (=> setNonEmpty!47979 (= setRes!47979 (and tp!1930472 (inv!86001 setElem!47979) e!4204577))))

(declare-fun setRest!47979 () (InoxSet Context!12506))

(assert (=> setNonEmpty!47979 (= z1!570 ((_ map or) (store ((as const (Array Context!12506 Bool)) false) setElem!47979 true) setRest!47979))))

(declare-fun b!6995144 () Bool)

(declare-fun e!4204582 () Bool)

(declare-fun e!4204594 () Bool)

(assert (=> b!6995144 (= e!4204582 e!4204594)))

(declare-fun res!2853561 () Bool)

(assert (=> b!6995144 (=> res!2853561 e!4204594)))

(declare-fun lt!2492832 () (InoxSet Context!12506))

(declare-fun matchZipper!2797 ((InoxSet Context!12506) List!67316) Bool)

(assert (=> b!6995144 (= res!2853561 (not (matchZipper!2797 lt!2492832 (t!381063 s!7408))))))

(declare-fun lt!2492837 () Unit!161169)

(assert (=> b!6995144 (= lt!2492837 (lemmaConcatPreservesForall!593 lt!2492851 (exprs!6753 ct2!306) lambda!404181))))

(declare-fun b!6995145 () Bool)

(declare-fun tp!1930474 () Bool)

(assert (=> b!6995145 (= e!4204577 tp!1930474)))

(declare-fun b!6995146 () Bool)

(declare-fun e!4204587 () Bool)

(declare-fun tp_is_empty!43739 () Bool)

(declare-fun tp!1930471 () Bool)

(assert (=> b!6995146 (= e!4204587 (and tp_is_empty!43739 tp!1930471))))

(declare-fun b!6995147 () Bool)

(declare-fun e!4204592 () Bool)

(assert (=> b!6995147 (= e!4204592 e!4204583)))

(declare-fun res!2853562 () Bool)

(assert (=> b!6995147 (=> res!2853562 e!4204583)))

(declare-fun lt!2492839 () (InoxSet Context!12506))

(assert (=> b!6995147 (= res!2853562 (not (matchZipper!2797 lt!2492839 s!7408)))))

(declare-fun lt!2492857 () Unit!161169)

(assert (=> b!6995147 (= lt!2492857 (lemmaConcatPreservesForall!593 lt!2492851 (exprs!6753 ct2!306) lambda!404181))))

(declare-fun b!6995148 () Bool)

(declare-fun e!4204588 () Bool)

(declare-fun e!4204593 () Bool)

(assert (=> b!6995148 (= e!4204588 e!4204593)))

(declare-fun res!2853554 () Bool)

(assert (=> b!6995148 (=> res!2853554 e!4204593)))

(declare-fun nullable!7017 (Regex!17257) Bool)

(assert (=> b!6995148 (= res!2853554 (not (nullable!7017 (h!73641 (exprs!6753 lt!2492847)))))))

(assert (=> b!6995148 (= lt!2492859 (Context!12507 lt!2492851))))

(declare-fun tail!13283 (List!67317) List!67317)

(assert (=> b!6995148 (= lt!2492851 (tail!13283 (exprs!6753 lt!2492847)))))

(declare-fun b!6995149 () Bool)

(assert (=> b!6995149 (= e!4204594 e!4204592)))

(declare-fun res!2853557 () Bool)

(assert (=> b!6995149 (=> res!2853557 e!4204592)))

(declare-fun derivationStepZipper!2737 ((InoxSet Context!12506) C!34784) (InoxSet Context!12506))

(assert (=> b!6995149 (= res!2853557 (not (= (derivationStepZipper!2737 lt!2492839 (h!73640 s!7408)) lt!2492832)))))

(declare-fun lt!2492852 () Unit!161169)

(assert (=> b!6995149 (= lt!2492852 (lemmaConcatPreservesForall!593 lt!2492851 (exprs!6753 ct2!306) lambda!404181))))

(declare-fun lt!2492863 () Unit!161169)

(assert (=> b!6995149 (= lt!2492863 (lemmaConcatPreservesForall!593 lt!2492851 (exprs!6753 ct2!306) lambda!404181))))

(declare-fun lt!2492818 () Context!12506)

(assert (=> b!6995149 (= (flatMap!2243 lt!2492839 lambda!404182) (derivationStepZipperUp!1907 lt!2492818 (h!73640 s!7408)))))

(declare-fun lt!2492843 () Unit!161169)

(assert (=> b!6995149 (= lt!2492843 (lemmaFlatMapOnSingletonSet!1758 lt!2492839 lt!2492818 lambda!404182))))

(assert (=> b!6995149 (= lt!2492839 (store ((as const (Array Context!12506 Bool)) false) lt!2492818 true))))

(declare-fun lt!2492842 () Unit!161169)

(assert (=> b!6995149 (= lt!2492842 (lemmaConcatPreservesForall!593 lt!2492851 (exprs!6753 ct2!306) lambda!404181))))

(declare-fun lt!2492831 () Unit!161169)

(assert (=> b!6995149 (= lt!2492831 (lemmaConcatPreservesForall!593 lt!2492851 (exprs!6753 ct2!306) lambda!404181))))

(declare-fun b!6995150 () Bool)

(declare-fun e!4204586 () Bool)

(declare-fun e!4204579 () Bool)

(assert (=> b!6995150 (= e!4204586 e!4204579)))

(declare-fun res!2853563 () Bool)

(assert (=> b!6995150 (=> res!2853563 e!4204579)))

(declare-fun lt!2492834 () (InoxSet Context!12506))

(declare-fun lt!2492861 () (InoxSet Context!12506))

(assert (=> b!6995150 (= res!2853563 (not (= lt!2492834 lt!2492861)))))

(declare-fun lt!2492862 () Context!12506)

(assert (=> b!6995150 (= lt!2492834 (store ((as const (Array Context!12506 Bool)) false) lt!2492862 true))))

(declare-fun lt!2492850 () Unit!161169)

(assert (=> b!6995150 (= lt!2492850 (lemmaConcatPreservesForall!593 (exprs!6753 lt!2492847) (exprs!6753 ct2!306) lambda!404181))))

(declare-fun b!6995151 () Bool)

(declare-fun res!2853546 () Bool)

(assert (=> b!6995151 (=> res!2853546 e!4204578)))

(declare-fun lt!2492858 () (InoxSet Context!12506))

(assert (=> b!6995151 (= res!2853546 (not (matchZipper!2797 lt!2492858 (_2!37233 lt!2492835))))))

(declare-fun b!6995152 () Bool)

(assert (=> b!6995152 (= e!4204584 e!4204578)))

(declare-fun res!2853548 () Bool)

(assert (=> b!6995152 (=> res!2853548 e!4204578)))

(assert (=> b!6995152 (= res!2853548 (not (matchZipper!2797 lt!2492825 (_1!37233 lt!2492835))))))

(declare-datatypes ((Option!16762 0))(
  ( (None!16761) (Some!16761 (v!53033 tuple2!67860)) )
))
(declare-fun lt!2492860 () Option!16762)

(declare-fun get!23555 (Option!16762) tuple2!67860)

(assert (=> b!6995152 (= lt!2492835 (get!23555 lt!2492860))))

(declare-fun isDefined!13463 (Option!16762) Bool)

(assert (=> b!6995152 (isDefined!13463 lt!2492860)))

(declare-fun findConcatSeparationZippers!278 ((InoxSet Context!12506) (InoxSet Context!12506) List!67316 List!67316 List!67316) Option!16762)

(assert (=> b!6995152 (= lt!2492860 (findConcatSeparationZippers!278 lt!2492825 lt!2492858 Nil!67192 s!7408 s!7408))))

(assert (=> b!6995152 (= lt!2492858 (store ((as const (Array Context!12506 Bool)) false) ct2!306 true))))

(declare-fun lt!2492827 () Unit!161169)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!278 ((InoxSet Context!12506) Context!12506 List!67316) Unit!161169)

(assert (=> b!6995152 (= lt!2492827 (lemmaConcatZipperMatchesStringThenFindConcatDefined!278 lt!2492825 ct2!306 s!7408))))

(declare-fun b!6995153 () Bool)

(declare-fun e!4204585 () Bool)

(assert (=> b!6995153 (= e!4204585 e!4204582)))

(declare-fun res!2853566 () Bool)

(assert (=> b!6995153 (=> res!2853566 e!4204582)))

(declare-fun e!4204589 () Bool)

(assert (=> b!6995153 (= res!2853566 e!4204589)))

(declare-fun res!2853552 () Bool)

(assert (=> b!6995153 (=> (not res!2853552) (not e!4204589))))

(declare-fun lt!2492853 () Bool)

(declare-fun lt!2492829 () Bool)

(assert (=> b!6995153 (= res!2853552 (not (= lt!2492853 lt!2492829)))))

(declare-fun lt!2492846 () (InoxSet Context!12506))

(assert (=> b!6995153 (= lt!2492853 (matchZipper!2797 lt!2492846 (t!381063 s!7408)))))

(declare-fun lt!2492833 () Unit!161169)

(assert (=> b!6995153 (= lt!2492833 (lemmaConcatPreservesForall!593 lt!2492851 (exprs!6753 ct2!306) lambda!404181))))

(declare-fun lt!2492856 () (InoxSet Context!12506))

(declare-fun e!4204591 () Bool)

(assert (=> b!6995153 (= (matchZipper!2797 lt!2492856 (t!381063 s!7408)) e!4204591)))

(declare-fun res!2853551 () Bool)

(assert (=> b!6995153 (=> res!2853551 e!4204591)))

(assert (=> b!6995153 (= res!2853551 lt!2492829)))

(declare-fun lt!2492849 () (InoxSet Context!12506))

(assert (=> b!6995153 (= lt!2492829 (matchZipper!2797 lt!2492849 (t!381063 s!7408)))))

(declare-fun lt!2492854 () Unit!161169)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1430 ((InoxSet Context!12506) (InoxSet Context!12506) List!67316) Unit!161169)

(assert (=> b!6995153 (= lt!2492854 (lemmaZipperConcatMatchesSameAsBothZippers!1430 lt!2492849 lt!2492832 (t!381063 s!7408)))))

(declare-fun lt!2492838 () Unit!161169)

(assert (=> b!6995153 (= lt!2492838 (lemmaConcatPreservesForall!593 lt!2492851 (exprs!6753 ct2!306) lambda!404181))))

(declare-fun lt!2492867 () Unit!161169)

(assert (=> b!6995153 (= lt!2492867 (lemmaConcatPreservesForall!593 lt!2492851 (exprs!6753 ct2!306) lambda!404181))))

(declare-fun b!6995154 () Bool)

(declare-fun e!4204590 () Bool)

(declare-fun tp!1930473 () Bool)

(assert (=> b!6995154 (= e!4204590 tp!1930473)))

(declare-fun e!4204580 () Bool)

(assert (=> b!6995155 (= e!4204580 e!4204586)))

(declare-fun res!2853553 () Bool)

(assert (=> b!6995155 (=> res!2853553 e!4204586)))

(declare-fun lt!2492819 () Context!12506)

(assert (=> b!6995155 (= res!2853553 (or (not (= lt!2492862 lt!2492819)) (not (select z1!570 lt!2492847))))))

(assert (=> b!6995155 (= lt!2492862 (Context!12507 (++!15216 (exprs!6753 lt!2492847) (exprs!6753 ct2!306))))))

(declare-fun lt!2492865 () Unit!161169)

(assert (=> b!6995155 (= lt!2492865 (lemmaConcatPreservesForall!593 (exprs!6753 lt!2492847) (exprs!6753 ct2!306) lambda!404181))))

(declare-fun mapPost2!112 ((InoxSet Context!12506) Int Context!12506) Context!12506)

(assert (=> b!6995155 (= lt!2492847 (mapPost2!112 z1!570 lambda!404180 lt!2492819))))

(declare-fun b!6995156 () Bool)

(assert (=> b!6995156 (= e!4204593 e!4204585)))

(declare-fun res!2853550 () Bool)

(assert (=> b!6995156 (=> res!2853550 e!4204585)))

(assert (=> b!6995156 (= res!2853550 (not (= lt!2492846 lt!2492856)))))

(assert (=> b!6995156 (= lt!2492856 ((_ map or) lt!2492849 lt!2492832))))

(assert (=> b!6995156 (= lt!2492832 (derivationStepZipperUp!1907 lt!2492818 (h!73640 s!7408)))))

(declare-fun derivationStepZipperDown!1975 (Regex!17257 Context!12506 C!34784) (InoxSet Context!12506))

(assert (=> b!6995156 (= lt!2492849 (derivationStepZipperDown!1975 (h!73641 (exprs!6753 lt!2492847)) lt!2492818 (h!73640 s!7408)))))

(assert (=> b!6995156 (= lt!2492818 (Context!12507 (++!15216 lt!2492851 (exprs!6753 ct2!306))))))

(declare-fun lt!2492841 () Unit!161169)

(assert (=> b!6995156 (= lt!2492841 (lemmaConcatPreservesForall!593 lt!2492851 (exprs!6753 ct2!306) lambda!404181))))

(declare-fun lt!2492848 () Unit!161169)

(assert (=> b!6995156 (= lt!2492848 (lemmaConcatPreservesForall!593 lt!2492851 (exprs!6753 ct2!306) lambda!404181))))

(declare-fun b!6995157 () Bool)

(declare-fun res!2853560 () Bool)

(assert (=> b!6995157 (=> res!2853560 e!4204582)))

(assert (=> b!6995157 (= res!2853560 (not lt!2492853))))

(declare-fun b!6995158 () Bool)

(assert (=> b!6995158 (= e!4204589 (not (matchZipper!2797 lt!2492832 (t!381063 s!7408))))))

(declare-fun lt!2492868 () Unit!161169)

(assert (=> b!6995158 (= lt!2492868 (lemmaConcatPreservesForall!593 lt!2492851 (exprs!6753 ct2!306) lambda!404181))))

(declare-fun b!6995159 () Bool)

(declare-fun res!2853558 () Bool)

(assert (=> b!6995159 (=> res!2853558 e!4204584)))

(assert (=> b!6995159 (= res!2853558 (>= (zipperDepthTotal!478 (Cons!67194 lt!2492859 Nil!67194)) lt!2492836))))

(declare-fun setIsEmpty!47979 () Bool)

(assert (=> setIsEmpty!47979 setRes!47979))

(declare-fun b!6995160 () Bool)

(assert (=> b!6995160 (= e!4204591 (matchZipper!2797 lt!2492832 (t!381063 s!7408)))))

(assert (=> b!6995161 (= e!4204579 e!4204588)))

(declare-fun res!2853549 () Bool)

(assert (=> b!6995161 (=> res!2853549 e!4204588)))

(assert (=> b!6995161 (= res!2853549 (not (= (derivationStepZipper!2737 lt!2492834 (h!73640 s!7408)) lt!2492846)))))

(assert (=> b!6995161 (= (flatMap!2243 lt!2492834 lambda!404182) (derivationStepZipperUp!1907 lt!2492862 (h!73640 s!7408)))))

(declare-fun lt!2492821 () Unit!161169)

(assert (=> b!6995161 (= lt!2492821 (lemmaFlatMapOnSingletonSet!1758 lt!2492834 lt!2492862 lambda!404182))))

(assert (=> b!6995161 (= lt!2492846 (derivationStepZipperUp!1907 lt!2492862 (h!73640 s!7408)))))

(declare-fun lt!2492828 () Unit!161169)

(assert (=> b!6995161 (= lt!2492828 (lemmaConcatPreservesForall!593 (exprs!6753 lt!2492847) (exprs!6753 ct2!306) lambda!404181))))

(declare-fun b!6995162 () Bool)

(declare-fun res!2853547 () Bool)

(declare-fun e!4204581 () Bool)

(assert (=> b!6995162 (=> (not res!2853547) (not e!4204581))))

(get-info :version)

(assert (=> b!6995162 (= res!2853547 ((_ is Cons!67192) s!7408))))

(declare-fun b!6995163 () Bool)

(declare-fun res!2853565 () Bool)

(assert (=> b!6995163 (=> res!2853565 e!4204588)))

(assert (=> b!6995163 (= res!2853565 (not ((_ is Cons!67193) (exprs!6753 lt!2492847))))))

(assert (=> b!6995164 (= e!4204581 (not e!4204580))))

(declare-fun res!2853545 () Bool)

(assert (=> b!6995164 (=> res!2853545 e!4204580)))

(assert (=> b!6995164 (= res!2853545 (not (matchZipper!2797 lt!2492861 s!7408)))))

(assert (=> b!6995164 (= lt!2492861 (store ((as const (Array Context!12506 Bool)) false) lt!2492819 true))))

(declare-fun lt!2492823 () (InoxSet Context!12506))

(declare-fun lambda!404179 () Int)

(declare-fun getWitness!1168 ((InoxSet Context!12506) Int) Context!12506)

(assert (=> b!6995164 (= lt!2492819 (getWitness!1168 lt!2492823 lambda!404179))))

(declare-fun lt!2492855 () List!67318)

(declare-fun exists!3064 (List!67318 Int) Bool)

(assert (=> b!6995164 (exists!3064 lt!2492855 lambda!404179)))

(declare-fun lt!2492830 () Unit!161169)

(declare-fun lemmaZipperMatchesExistsMatchingContext!226 (List!67318 List!67316) Unit!161169)

(assert (=> b!6995164 (= lt!2492830 (lemmaZipperMatchesExistsMatchingContext!226 lt!2492855 s!7408))))

(assert (=> b!6995164 (= lt!2492855 (toList!10617 lt!2492823))))

(declare-fun b!6995165 () Bool)

(declare-fun res!2853559 () Bool)

(assert (=> b!6995165 (=> res!2853559 e!4204588)))

(declare-fun isEmpty!39218 (List!67317) Bool)

(assert (=> b!6995165 (= res!2853559 (isEmpty!39218 (exprs!6753 lt!2492847)))))

(declare-fun res!2853564 () Bool)

(assert (=> start!672614 (=> (not res!2853564) (not e!4204581))))

(assert (=> start!672614 (= res!2853564 (matchZipper!2797 lt!2492823 s!7408))))

(declare-fun appendTo!378 ((InoxSet Context!12506) Context!12506) (InoxSet Context!12506))

(assert (=> start!672614 (= lt!2492823 (appendTo!378 z1!570 ct2!306))))

(assert (=> start!672614 e!4204581))

(declare-fun condSetEmpty!47979 () Bool)

(assert (=> start!672614 (= condSetEmpty!47979 (= z1!570 ((as const (Array Context!12506 Bool)) false)))))

(assert (=> start!672614 setRes!47979))

(assert (=> start!672614 (and (inv!86001 ct2!306) e!4204590)))

(assert (=> start!672614 e!4204587))

(declare-fun b!6995166 () Bool)

(declare-fun res!2853556 () Bool)

(assert (=> b!6995166 (=> res!2853556 e!4204580)))

(assert (=> b!6995166 (= res!2853556 (not (select lt!2492823 lt!2492819)))))

(assert (= (and start!672614 res!2853564) b!6995162))

(assert (= (and b!6995162 res!2853547) b!6995164))

(assert (= (and b!6995164 (not res!2853545)) b!6995166))

(assert (= (and b!6995166 (not res!2853556)) b!6995155))

(assert (= (and b!6995155 (not res!2853553)) b!6995150))

(assert (= (and b!6995150 (not res!2853563)) b!6995161))

(assert (= (and b!6995161 (not res!2853549)) b!6995163))

(assert (= (and b!6995163 (not res!2853565)) b!6995165))

(assert (= (and b!6995165 (not res!2853559)) b!6995148))

(assert (= (and b!6995148 (not res!2853554)) b!6995156))

(assert (= (and b!6995156 (not res!2853550)) b!6995153))

(assert (= (and b!6995153 (not res!2853551)) b!6995160))

(assert (= (and b!6995153 res!2853552) b!6995158))

(assert (= (and b!6995153 (not res!2853566)) b!6995157))

(assert (= (and b!6995157 (not res!2853560)) b!6995144))

(assert (= (and b!6995144 (not res!2853561)) b!6995149))

(assert (= (and b!6995149 (not res!2853557)) b!6995147))

(assert (= (and b!6995147 (not res!2853562)) b!6995143))

(assert (= (and b!6995143 (not res!2853555)) b!6995159))

(assert (= (and b!6995159 (not res!2853558)) b!6995152))

(assert (= (and b!6995152 (not res!2853548)) b!6995151))

(assert (= (and b!6995151 (not res!2853546)) b!6995142))

(assert (= (and start!672614 condSetEmpty!47979) setIsEmpty!47979))

(assert (= (and start!672614 (not condSetEmpty!47979)) setNonEmpty!47979))

(assert (= setNonEmpty!47979 b!6995145))

(assert (= start!672614 b!6995154))

(assert (= (and start!672614 ((_ is Cons!67192) s!7408)) b!6995146))

(declare-fun m!7686300 () Bool)

(assert (=> b!6995151 m!7686300))

(declare-fun m!7686302 () Bool)

(assert (=> b!6995153 m!7686302))

(declare-fun m!7686304 () Bool)

(assert (=> b!6995153 m!7686304))

(declare-fun m!7686306 () Bool)

(assert (=> b!6995153 m!7686306))

(assert (=> b!6995153 m!7686302))

(assert (=> b!6995153 m!7686302))

(declare-fun m!7686308 () Bool)

(assert (=> b!6995153 m!7686308))

(declare-fun m!7686310 () Bool)

(assert (=> b!6995153 m!7686310))

(declare-fun m!7686312 () Bool)

(assert (=> b!6995156 m!7686312))

(assert (=> b!6995156 m!7686302))

(declare-fun m!7686314 () Bool)

(assert (=> b!6995156 m!7686314))

(assert (=> b!6995156 m!7686302))

(declare-fun m!7686316 () Bool)

(assert (=> b!6995156 m!7686316))

(declare-fun m!7686318 () Bool)

(assert (=> start!672614 m!7686318))

(declare-fun m!7686320 () Bool)

(assert (=> start!672614 m!7686320))

(declare-fun m!7686322 () Bool)

(assert (=> start!672614 m!7686322))

(declare-fun m!7686324 () Bool)

(assert (=> b!6995166 m!7686324))

(declare-fun m!7686326 () Bool)

(assert (=> setNonEmpty!47979 m!7686326))

(declare-fun m!7686328 () Bool)

(assert (=> b!6995155 m!7686328))

(declare-fun m!7686330 () Bool)

(assert (=> b!6995155 m!7686330))

(declare-fun m!7686332 () Bool)

(assert (=> b!6995155 m!7686332))

(declare-fun m!7686334 () Bool)

(assert (=> b!6995155 m!7686334))

(declare-fun m!7686336 () Bool)

(assert (=> b!6995152 m!7686336))

(declare-fun m!7686338 () Bool)

(assert (=> b!6995152 m!7686338))

(declare-fun m!7686340 () Bool)

(assert (=> b!6995152 m!7686340))

(declare-fun m!7686342 () Bool)

(assert (=> b!6995152 m!7686342))

(declare-fun m!7686344 () Bool)

(assert (=> b!6995152 m!7686344))

(declare-fun m!7686346 () Bool)

(assert (=> b!6995152 m!7686346))

(declare-fun m!7686348 () Bool)

(assert (=> b!6995160 m!7686348))

(declare-fun m!7686350 () Bool)

(assert (=> b!6995159 m!7686350))

(declare-fun m!7686352 () Bool)

(assert (=> b!6995148 m!7686352))

(declare-fun m!7686354 () Bool)

(assert (=> b!6995148 m!7686354))

(assert (=> b!6995158 m!7686348))

(assert (=> b!6995158 m!7686302))

(declare-fun m!7686356 () Bool)

(assert (=> b!6995164 m!7686356))

(declare-fun m!7686358 () Bool)

(assert (=> b!6995164 m!7686358))

(declare-fun m!7686360 () Bool)

(assert (=> b!6995164 m!7686360))

(declare-fun m!7686362 () Bool)

(assert (=> b!6995164 m!7686362))

(declare-fun m!7686364 () Bool)

(assert (=> b!6995164 m!7686364))

(declare-fun m!7686366 () Bool)

(assert (=> b!6995164 m!7686366))

(declare-fun m!7686368 () Bool)

(assert (=> b!6995150 m!7686368))

(assert (=> b!6995150 m!7686332))

(declare-fun m!7686370 () Bool)

(assert (=> b!6995161 m!7686370))

(declare-fun m!7686372 () Bool)

(assert (=> b!6995161 m!7686372))

(declare-fun m!7686374 () Bool)

(assert (=> b!6995161 m!7686374))

(declare-fun m!7686376 () Bool)

(assert (=> b!6995161 m!7686376))

(assert (=> b!6995161 m!7686332))

(declare-fun m!7686378 () Bool)

(assert (=> b!6995149 m!7686378))

(assert (=> b!6995149 m!7686302))

(declare-fun m!7686380 () Bool)

(assert (=> b!6995149 m!7686380))

(declare-fun m!7686382 () Bool)

(assert (=> b!6995149 m!7686382))

(declare-fun m!7686384 () Bool)

(assert (=> b!6995149 m!7686384))

(assert (=> b!6995149 m!7686302))

(assert (=> b!6995149 m!7686316))

(assert (=> b!6995149 m!7686302))

(assert (=> b!6995149 m!7686302))

(assert (=> b!6995143 m!7686312))

(declare-fun m!7686386 () Bool)

(assert (=> b!6995143 m!7686386))

(declare-fun m!7686388 () Bool)

(assert (=> b!6995143 m!7686388))

(declare-fun m!7686390 () Bool)

(assert (=> b!6995143 m!7686390))

(assert (=> b!6995143 m!7686302))

(declare-fun m!7686392 () Bool)

(assert (=> b!6995143 m!7686392))

(assert (=> b!6995143 m!7686302))

(declare-fun m!7686394 () Bool)

(assert (=> b!6995143 m!7686394))

(declare-fun m!7686396 () Bool)

(assert (=> b!6995143 m!7686396))

(declare-fun m!7686398 () Bool)

(assert (=> b!6995143 m!7686398))

(assert (=> b!6995143 m!7686302))

(declare-fun m!7686400 () Bool)

(assert (=> b!6995143 m!7686400))

(assert (=> b!6995143 m!7686302))

(declare-fun m!7686402 () Bool)

(assert (=> b!6995143 m!7686402))

(declare-fun m!7686404 () Bool)

(assert (=> b!6995143 m!7686404))

(declare-fun m!7686406 () Bool)

(assert (=> b!6995143 m!7686406))

(declare-fun m!7686408 () Bool)

(assert (=> b!6995143 m!7686408))

(declare-fun m!7686410 () Bool)

(assert (=> b!6995147 m!7686410))

(assert (=> b!6995147 m!7686302))

(declare-fun m!7686412 () Bool)

(assert (=> b!6995142 m!7686412))

(assert (=> b!6995144 m!7686348))

(assert (=> b!6995144 m!7686302))

(declare-fun m!7686414 () Bool)

(assert (=> b!6995165 m!7686414))

(check-sat (not b!6995153) (not b!6995149) (not b!6995151) tp_is_empty!43739 (not b!6995152) (not b!6995142) (not b!6995147) (not b!6995154) (not b!6995156) (not start!672614) (not b!6995164) (not b!6995145) (not b!6995161) (not b!6995165) (not b!6995159) (not b!6995160) (not b!6995148) (not b!6995143) (not b!6995158) (not b!6995146) (not b!6995155) (not b!6995144) (not b!6995150) (not setNonEmpty!47979))
(check-sat)
