; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!672458 () Bool)

(assert start!672458)

(declare-fun b!6993808 () Bool)

(assert (=> b!6993808 true))

(declare-fun b!6993802 () Bool)

(assert (=> b!6993802 true))

(declare-fun b!6993821 () Bool)

(assert (=> b!6993821 true))

(declare-fun bs!1862752 () Bool)

(declare-fun b!6993798 () Bool)

(assert (= bs!1862752 (and b!6993798 b!6993808)))

(declare-fun lambda!403476 () Int)

(declare-fun lambda!403472 () Int)

(assert (=> bs!1862752 (not (= lambda!403476 lambda!403472))))

(declare-fun res!2852634 () Bool)

(declare-fun e!4203775 () Bool)

(assert (=> start!672458 (=> (not res!2852634) (not e!4203775))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!34764 0))(
  ( (C!34765 (val!27084 Int)) )
))
(declare-datatypes ((Regex!17247 0))(
  ( (ElementMatch!17247 (c!1297502 C!34764)) (Concat!26092 (regOne!35006 Regex!17247) (regTwo!35006 Regex!17247)) (EmptyExpr!17247) (Star!17247 (reg!17576 Regex!17247)) (EmptyLang!17247) (Union!17247 (regOne!35007 Regex!17247) (regTwo!35007 Regex!17247)) )
))
(declare-datatypes ((List!67286 0))(
  ( (Nil!67162) (Cons!67162 (h!73610 Regex!17247) (t!381033 List!67286)) )
))
(declare-datatypes ((Context!12486 0))(
  ( (Context!12487 (exprs!6743 List!67286)) )
))
(declare-fun lt!2491049 () (InoxSet Context!12486))

(declare-datatypes ((List!67287 0))(
  ( (Nil!67163) (Cons!67163 (h!73611 C!34764) (t!381034 List!67287)) )
))
(declare-fun s!7408 () List!67287)

(declare-fun matchZipper!2787 ((InoxSet Context!12486) List!67287) Bool)

(assert (=> start!672458 (= res!2852634 (matchZipper!2787 lt!2491049 s!7408))))

(declare-fun z1!570 () (InoxSet Context!12486))

(declare-fun ct2!306 () Context!12486)

(declare-fun appendTo!368 ((InoxSet Context!12486) Context!12486) (InoxSet Context!12486))

(assert (=> start!672458 (= lt!2491049 (appendTo!368 z1!570 ct2!306))))

(assert (=> start!672458 e!4203775))

(declare-fun condSetEmpty!47943 () Bool)

(assert (=> start!672458 (= condSetEmpty!47943 (= z1!570 ((as const (Array Context!12486 Bool)) false)))))

(declare-fun setRes!47943 () Bool)

(assert (=> start!672458 setRes!47943))

(declare-fun e!4203781 () Bool)

(declare-fun inv!85976 (Context!12486) Bool)

(assert (=> start!672458 (and (inv!85976 ct2!306) e!4203781)))

(declare-fun e!4203776 () Bool)

(assert (=> start!672458 e!4203776))

(declare-fun b!6993795 () Bool)

(declare-fun res!2852644 () Bool)

(declare-fun e!4203780 () Bool)

(assert (=> b!6993795 (=> res!2852644 e!4203780)))

(declare-fun lt!2491039 () Bool)

(assert (=> b!6993795 (= res!2852644 (not lt!2491039))))

(declare-fun setIsEmpty!47943 () Bool)

(assert (=> setIsEmpty!47943 setRes!47943))

(declare-fun b!6993796 () Bool)

(declare-fun e!4203789 () Bool)

(declare-fun e!4203785 () Bool)

(assert (=> b!6993796 (= e!4203789 e!4203785)))

(declare-fun res!2852632 () Bool)

(assert (=> b!6993796 (=> res!2852632 e!4203785)))

(declare-fun lt!2491040 () (InoxSet Context!12486))

(declare-fun lt!2491021 () (InoxSet Context!12486))

(assert (=> b!6993796 (= res!2852632 (not (= lt!2491040 lt!2491021)))))

(declare-fun lt!2491050 () Context!12486)

(assert (=> b!6993796 (= lt!2491040 (store ((as const (Array Context!12486 Bool)) false) lt!2491050 true))))

(declare-fun lambda!403474 () Int)

(declare-datatypes ((Unit!161149 0))(
  ( (Unit!161150) )
))
(declare-fun lt!2491035 () Unit!161149)

(declare-fun lt!2491029 () Context!12486)

(declare-fun lemmaConcatPreservesForall!583 (List!67286 List!67286 Int) Unit!161149)

(assert (=> b!6993796 (= lt!2491035 (lemmaConcatPreservesForall!583 (exprs!6743 lt!2491029) (exprs!6743 ct2!306) lambda!403474))))

(declare-fun b!6993797 () Bool)

(declare-fun e!4203783 () Bool)

(declare-fun lt!2491038 () (InoxSet Context!12486))

(assert (=> b!6993797 (= e!4203783 (not (matchZipper!2787 lt!2491038 (t!381034 s!7408))))))

(declare-fun lt!2491011 () Unit!161149)

(declare-fun lt!2491019 () List!67286)

(assert (=> b!6993797 (= lt!2491011 (lemmaConcatPreservesForall!583 lt!2491019 (exprs!6743 ct2!306) lambda!403474))))

(declare-fun res!2852647 () Bool)

(declare-fun e!4203787 () Bool)

(assert (=> b!6993798 (=> res!2852647 e!4203787)))

(declare-fun lt!2491028 () (InoxSet Context!12486))

(declare-fun exists!3045 ((InoxSet Context!12486) Int) Bool)

(assert (=> b!6993798 (= res!2852647 (not (exists!3045 lt!2491028 lambda!403476)))))

(declare-fun b!6993799 () Bool)

(assert (=> b!6993799 (= e!4203787 (exists!3045 lt!2491028 lambda!403476))))

(declare-fun b!6993800 () Bool)

(declare-fun res!2852645 () Bool)

(declare-fun e!4203777 () Bool)

(assert (=> b!6993800 (=> res!2852645 e!4203777)))

(declare-fun isEmpty!39197 (List!67286) Bool)

(assert (=> b!6993800 (= res!2852645 (isEmpty!39197 (exprs!6743 lt!2491029)))))

(declare-fun b!6993801 () Bool)

(declare-fun e!4203790 () Bool)

(assert (=> b!6993801 (= e!4203790 e!4203787)))

(declare-fun res!2852656 () Bool)

(assert (=> b!6993801 (=> res!2852656 e!4203787)))

(declare-datatypes ((tuple2!67840 0))(
  ( (tuple2!67841 (_1!37223 List!67287) (_2!37223 List!67287)) )
))
(declare-fun lt!2491051 () tuple2!67840)

(assert (=> b!6993801 (= res!2852656 (not (matchZipper!2787 lt!2491028 (_1!37223 lt!2491051))))))

(declare-datatypes ((Option!16752 0))(
  ( (None!16751) (Some!16751 (v!53023 tuple2!67840)) )
))
(declare-fun lt!2491024 () Option!16752)

(declare-fun get!23540 (Option!16752) tuple2!67840)

(assert (=> b!6993801 (= lt!2491051 (get!23540 lt!2491024))))

(declare-fun isDefined!13453 (Option!16752) Bool)

(assert (=> b!6993801 (isDefined!13453 lt!2491024)))

(declare-fun lt!2491052 () (InoxSet Context!12486))

(declare-fun findConcatSeparationZippers!268 ((InoxSet Context!12486) (InoxSet Context!12486) List!67287 List!67287 List!67287) Option!16752)

(assert (=> b!6993801 (= lt!2491024 (findConcatSeparationZippers!268 lt!2491028 lt!2491052 Nil!67163 s!7408 s!7408))))

(assert (=> b!6993801 (= lt!2491052 (store ((as const (Array Context!12486 Bool)) false) ct2!306 true))))

(declare-fun lt!2491006 () Unit!161149)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!268 ((InoxSet Context!12486) Context!12486 List!67287) Unit!161149)

(assert (=> b!6993801 (= lt!2491006 (lemmaConcatZipperMatchesStringThenFindConcatDefined!268 lt!2491028 ct2!306 s!7408))))

(declare-fun e!4203778 () Bool)

(assert (=> b!6993802 (= e!4203778 e!4203789)))

(declare-fun res!2852651 () Bool)

(assert (=> b!6993802 (=> res!2852651 e!4203789)))

(declare-fun lt!2491025 () Context!12486)

(assert (=> b!6993802 (= res!2852651 (or (not (= lt!2491050 lt!2491025)) (not (select z1!570 lt!2491029))))))

(declare-fun ++!15195 (List!67286 List!67286) List!67286)

(assert (=> b!6993802 (= lt!2491050 (Context!12487 (++!15195 (exprs!6743 lt!2491029) (exprs!6743 ct2!306))))))

(declare-fun lt!2491017 () Unit!161149)

(assert (=> b!6993802 (= lt!2491017 (lemmaConcatPreservesForall!583 (exprs!6743 lt!2491029) (exprs!6743 ct2!306) lambda!403474))))

(declare-fun lambda!403473 () Int)

(declare-fun mapPost2!102 ((InoxSet Context!12486) Int Context!12486) Context!12486)

(assert (=> b!6993802 (= lt!2491029 (mapPost2!102 z1!570 lambda!403473 lt!2491025))))

(declare-fun b!6993803 () Bool)

(declare-fun res!2852652 () Bool)

(assert (=> b!6993803 (=> (not res!2852652) (not e!4203775))))

(get-info :version)

(assert (=> b!6993803 (= res!2852652 ((_ is Cons!67163) s!7408))))

(declare-fun b!6993804 () Bool)

(declare-fun res!2852637 () Bool)

(assert (=> b!6993804 (=> res!2852637 e!4203790)))

(declare-fun lt!2491042 () Context!12486)

(declare-fun lt!2491009 () Int)

(declare-datatypes ((List!67288 0))(
  ( (Nil!67164) (Cons!67164 (h!73612 Context!12486) (t!381035 List!67288)) )
))
(declare-fun zipperDepthTotal!468 (List!67288) Int)

(assert (=> b!6993804 (= res!2852637 (>= (zipperDepthTotal!468 (Cons!67164 lt!2491042 Nil!67164)) lt!2491009))))

(declare-fun b!6993805 () Bool)

(declare-fun res!2852650 () Bool)

(assert (=> b!6993805 (=> res!2852650 e!4203787)))

(declare-fun ++!15196 (List!67287 List!67287) List!67287)

(assert (=> b!6993805 (= res!2852650 (not (= (++!15196 (_1!37223 lt!2491051) (_2!37223 lt!2491051)) s!7408)))))

(declare-fun b!6993806 () Bool)

(declare-fun e!4203788 () Bool)

(assert (=> b!6993806 (= e!4203788 e!4203780)))

(declare-fun res!2852638 () Bool)

(assert (=> b!6993806 (=> res!2852638 e!4203780)))

(assert (=> b!6993806 (= res!2852638 e!4203783)))

(declare-fun res!2852639 () Bool)

(assert (=> b!6993806 (=> (not res!2852639) (not e!4203783))))

(declare-fun lt!2491048 () Bool)

(assert (=> b!6993806 (= res!2852639 (not (= lt!2491039 lt!2491048)))))

(declare-fun lt!2491046 () (InoxSet Context!12486))

(assert (=> b!6993806 (= lt!2491039 (matchZipper!2787 lt!2491046 (t!381034 s!7408)))))

(declare-fun lt!2491036 () Unit!161149)

(assert (=> b!6993806 (= lt!2491036 (lemmaConcatPreservesForall!583 lt!2491019 (exprs!6743 ct2!306) lambda!403474))))

(declare-fun lt!2491020 () (InoxSet Context!12486))

(declare-fun e!4203782 () Bool)

(assert (=> b!6993806 (= (matchZipper!2787 lt!2491020 (t!381034 s!7408)) e!4203782)))

(declare-fun res!2852649 () Bool)

(assert (=> b!6993806 (=> res!2852649 e!4203782)))

(assert (=> b!6993806 (= res!2852649 lt!2491048)))

(declare-fun lt!2491045 () (InoxSet Context!12486))

(assert (=> b!6993806 (= lt!2491048 (matchZipper!2787 lt!2491045 (t!381034 s!7408)))))

(declare-fun lt!2491053 () Unit!161149)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1420 ((InoxSet Context!12486) (InoxSet Context!12486) List!67287) Unit!161149)

(assert (=> b!6993806 (= lt!2491053 (lemmaZipperConcatMatchesSameAsBothZippers!1420 lt!2491045 lt!2491038 (t!381034 s!7408)))))

(declare-fun lt!2491033 () Unit!161149)

(assert (=> b!6993806 (= lt!2491033 (lemmaConcatPreservesForall!583 lt!2491019 (exprs!6743 ct2!306) lambda!403474))))

(declare-fun lt!2491010 () Unit!161149)

(assert (=> b!6993806 (= lt!2491010 (lemmaConcatPreservesForall!583 lt!2491019 (exprs!6743 ct2!306) lambda!403474))))

(declare-fun b!6993807 () Bool)

(declare-fun e!4203773 () Bool)

(assert (=> b!6993807 (= e!4203773 e!4203788)))

(declare-fun res!2852655 () Bool)

(assert (=> b!6993807 (=> res!2852655 e!4203788)))

(assert (=> b!6993807 (= res!2852655 (not (= lt!2491046 lt!2491020)))))

(assert (=> b!6993807 (= lt!2491020 ((_ map or) lt!2491045 lt!2491038))))

(declare-fun lt!2491008 () Context!12486)

(declare-fun derivationStepZipperUp!1897 (Context!12486 C!34764) (InoxSet Context!12486))

(assert (=> b!6993807 (= lt!2491038 (derivationStepZipperUp!1897 lt!2491008 (h!73611 s!7408)))))

(declare-fun derivationStepZipperDown!1965 (Regex!17247 Context!12486 C!34764) (InoxSet Context!12486))

(assert (=> b!6993807 (= lt!2491045 (derivationStepZipperDown!1965 (h!73610 (exprs!6743 lt!2491029)) lt!2491008 (h!73611 s!7408)))))

(assert (=> b!6993807 (= lt!2491008 (Context!12487 (++!15195 lt!2491019 (exprs!6743 ct2!306))))))

(declare-fun lt!2491043 () Unit!161149)

(assert (=> b!6993807 (= lt!2491043 (lemmaConcatPreservesForall!583 lt!2491019 (exprs!6743 ct2!306) lambda!403474))))

(declare-fun lt!2491022 () Unit!161149)

(assert (=> b!6993807 (= lt!2491022 (lemmaConcatPreservesForall!583 lt!2491019 (exprs!6743 ct2!306) lambda!403474))))

(assert (=> b!6993808 (= e!4203775 (not e!4203778))))

(declare-fun res!2852646 () Bool)

(assert (=> b!6993808 (=> res!2852646 e!4203778)))

(assert (=> b!6993808 (= res!2852646 (not (matchZipper!2787 lt!2491021 s!7408)))))

(assert (=> b!6993808 (= lt!2491021 (store ((as const (Array Context!12486 Bool)) false) lt!2491025 true))))

(declare-fun getWitness!1156 ((InoxSet Context!12486) Int) Context!12486)

(assert (=> b!6993808 (= lt!2491025 (getWitness!1156 lt!2491049 lambda!403472))))

(declare-fun lt!2491003 () List!67288)

(declare-fun exists!3046 (List!67288 Int) Bool)

(assert (=> b!6993808 (exists!3046 lt!2491003 lambda!403472)))

(declare-fun lt!2491005 () Unit!161149)

(declare-fun lemmaZipperMatchesExistsMatchingContext!216 (List!67288 List!67287) Unit!161149)

(assert (=> b!6993808 (= lt!2491005 (lemmaZipperMatchesExistsMatchingContext!216 lt!2491003 s!7408))))

(declare-fun toList!10607 ((InoxSet Context!12486)) List!67288)

(assert (=> b!6993808 (= lt!2491003 (toList!10607 lt!2491049))))

(declare-fun b!6993809 () Bool)

(declare-fun tp!1930319 () Bool)

(assert (=> b!6993809 (= e!4203781 tp!1930319)))

(declare-fun b!6993810 () Bool)

(declare-fun e!4203774 () Bool)

(assert (=> b!6993810 (= e!4203774 e!4203790)))

(declare-fun res!2852641 () Bool)

(assert (=> b!6993810 (=> res!2852641 e!4203790)))

(declare-fun lt!2491047 () Int)

(declare-fun contextDepthTotal!440 (Context!12486) Int)

(assert (=> b!6993810 (= res!2852641 (<= lt!2491047 (contextDepthTotal!440 lt!2491042)))))

(assert (=> b!6993810 (<= lt!2491047 lt!2491009)))

(declare-fun lt!2491004 () List!67288)

(assert (=> b!6993810 (= lt!2491009 (zipperDepthTotal!468 lt!2491004))))

(assert (=> b!6993810 (= lt!2491047 (contextDepthTotal!440 lt!2491029))))

(declare-fun lt!2491018 () Unit!161149)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!8 (List!67288 Context!12486) Unit!161149)

(assert (=> b!6993810 (= lt!2491018 (lemmaTotalDepthZipperLargerThanOfAnyContext!8 lt!2491004 lt!2491029))))

(assert (=> b!6993810 (= lt!2491004 (toList!10607 z1!570))))

(declare-fun lt!2491037 () Unit!161149)

(assert (=> b!6993810 (= lt!2491037 (lemmaConcatPreservesForall!583 lt!2491019 (exprs!6743 ct2!306) lambda!403474))))

(declare-fun lt!2491007 () Unit!161149)

(assert (=> b!6993810 (= lt!2491007 (lemmaConcatPreservesForall!583 lt!2491019 (exprs!6743 ct2!306) lambda!403474))))

(declare-fun lt!2491032 () Unit!161149)

(assert (=> b!6993810 (= lt!2491032 (lemmaConcatPreservesForall!583 lt!2491019 (exprs!6743 ct2!306) lambda!403474))))

(declare-fun lambda!403475 () Int)

(declare-fun flatMap!2233 ((InoxSet Context!12486) Int) (InoxSet Context!12486))

(assert (=> b!6993810 (= (flatMap!2233 lt!2491028 lambda!403475) (derivationStepZipperUp!1897 lt!2491042 (h!73611 s!7408)))))

(declare-fun lt!2491012 () Unit!161149)

(declare-fun lemmaFlatMapOnSingletonSet!1748 ((InoxSet Context!12486) Context!12486 Int) Unit!161149)

(assert (=> b!6993810 (= lt!2491012 (lemmaFlatMapOnSingletonSet!1748 lt!2491028 lt!2491042 lambda!403475))))

(declare-fun map!15517 ((InoxSet Context!12486) Int) (InoxSet Context!12486))

(assert (=> b!6993810 (= (map!15517 lt!2491028 lambda!403473) (store ((as const (Array Context!12486 Bool)) false) (Context!12487 (++!15195 lt!2491019 (exprs!6743 ct2!306))) true))))

(declare-fun lt!2491031 () Unit!161149)

(assert (=> b!6993810 (= lt!2491031 (lemmaConcatPreservesForall!583 lt!2491019 (exprs!6743 ct2!306) lambda!403474))))

(declare-fun lt!2491013 () Unit!161149)

(declare-fun lemmaMapOnSingletonSet!312 ((InoxSet Context!12486) Context!12486 Int) Unit!161149)

(assert (=> b!6993810 (= lt!2491013 (lemmaMapOnSingletonSet!312 lt!2491028 lt!2491042 lambda!403473))))

(assert (=> b!6993810 (= lt!2491028 (store ((as const (Array Context!12486 Bool)) false) lt!2491042 true))))

(declare-fun b!6993811 () Bool)

(declare-fun e!4203786 () Bool)

(declare-fun e!4203784 () Bool)

(assert (=> b!6993811 (= e!4203786 e!4203784)))

(declare-fun res!2852648 () Bool)

(assert (=> b!6993811 (=> res!2852648 e!4203784)))

(declare-fun lt!2491023 () (InoxSet Context!12486))

(declare-fun derivationStepZipper!2727 ((InoxSet Context!12486) C!34764) (InoxSet Context!12486))

(assert (=> b!6993811 (= res!2852648 (not (= (derivationStepZipper!2727 lt!2491023 (h!73611 s!7408)) lt!2491038)))))

(declare-fun lt!2491041 () Unit!161149)

(assert (=> b!6993811 (= lt!2491041 (lemmaConcatPreservesForall!583 lt!2491019 (exprs!6743 ct2!306) lambda!403474))))

(declare-fun lt!2491044 () Unit!161149)

(assert (=> b!6993811 (= lt!2491044 (lemmaConcatPreservesForall!583 lt!2491019 (exprs!6743 ct2!306) lambda!403474))))

(assert (=> b!6993811 (= (flatMap!2233 lt!2491023 lambda!403475) (derivationStepZipperUp!1897 lt!2491008 (h!73611 s!7408)))))

(declare-fun lt!2491034 () Unit!161149)

(assert (=> b!6993811 (= lt!2491034 (lemmaFlatMapOnSingletonSet!1748 lt!2491023 lt!2491008 lambda!403475))))

(assert (=> b!6993811 (= lt!2491023 (store ((as const (Array Context!12486 Bool)) false) lt!2491008 true))))

(declare-fun lt!2491016 () Unit!161149)

(assert (=> b!6993811 (= lt!2491016 (lemmaConcatPreservesForall!583 lt!2491019 (exprs!6743 ct2!306) lambda!403474))))

(declare-fun lt!2491015 () Unit!161149)

(assert (=> b!6993811 (= lt!2491015 (lemmaConcatPreservesForall!583 lt!2491019 (exprs!6743 ct2!306) lambda!403474))))

(declare-fun b!6993812 () Bool)

(declare-fun res!2852654 () Bool)

(assert (=> b!6993812 (=> res!2852654 e!4203787)))

(assert (=> b!6993812 (= res!2852654 (not (matchZipper!2787 lt!2491052 (_2!37223 lt!2491051))))))

(declare-fun b!6993813 () Bool)

(declare-fun e!4203779 () Bool)

(declare-fun tp!1930317 () Bool)

(assert (=> b!6993813 (= e!4203779 tp!1930317)))

(declare-fun b!6993814 () Bool)

(assert (=> b!6993814 (= e!4203777 e!4203773)))

(declare-fun res!2852643 () Bool)

(assert (=> b!6993814 (=> res!2852643 e!4203773)))

(declare-fun nullable!7007 (Regex!17247) Bool)

(assert (=> b!6993814 (= res!2852643 (not (nullable!7007 (h!73610 (exprs!6743 lt!2491029)))))))

(assert (=> b!6993814 (= lt!2491042 (Context!12487 lt!2491019))))

(declare-fun tail!13271 (List!67286) List!67286)

(assert (=> b!6993814 (= lt!2491019 (tail!13271 (exprs!6743 lt!2491029)))))

(declare-fun b!6993815 () Bool)

(declare-fun tp_is_empty!43719 () Bool)

(declare-fun tp!1930318 () Bool)

(assert (=> b!6993815 (= e!4203776 (and tp_is_empty!43719 tp!1930318))))

(declare-fun b!6993816 () Bool)

(declare-fun res!2852653 () Bool)

(assert (=> b!6993816 (=> res!2852653 e!4203787)))

(declare-fun isEmpty!39198 (List!67287) Bool)

(assert (=> b!6993816 (= res!2852653 (not (isEmpty!39198 (_1!37223 lt!2491051))))))

(declare-fun tp!1930320 () Bool)

(declare-fun setElem!47943 () Context!12486)

(declare-fun setNonEmpty!47943 () Bool)

(assert (=> setNonEmpty!47943 (= setRes!47943 (and tp!1930320 (inv!85976 setElem!47943) e!4203779))))

(declare-fun setRest!47943 () (InoxSet Context!12486))

(assert (=> setNonEmpty!47943 (= z1!570 ((_ map or) (store ((as const (Array Context!12486 Bool)) false) setElem!47943 true) setRest!47943))))

(declare-fun b!6993817 () Bool)

(assert (=> b!6993817 (= e!4203782 (matchZipper!2787 lt!2491038 (t!381034 s!7408)))))

(declare-fun b!6993818 () Bool)

(declare-fun res!2852642 () Bool)

(assert (=> b!6993818 (=> res!2852642 e!4203778)))

(assert (=> b!6993818 (= res!2852642 (not (select lt!2491049 lt!2491025)))))

(declare-fun b!6993819 () Bool)

(assert (=> b!6993819 (= e!4203784 e!4203774)))

(declare-fun res!2852635 () Bool)

(assert (=> b!6993819 (=> res!2852635 e!4203774)))

(assert (=> b!6993819 (= res!2852635 (not (matchZipper!2787 lt!2491023 s!7408)))))

(declare-fun lt!2491027 () Unit!161149)

(assert (=> b!6993819 (= lt!2491027 (lemmaConcatPreservesForall!583 lt!2491019 (exprs!6743 ct2!306) lambda!403474))))

(declare-fun b!6993820 () Bool)

(declare-fun res!2852640 () Bool)

(assert (=> b!6993820 (=> res!2852640 e!4203777)))

(assert (=> b!6993820 (= res!2852640 (not ((_ is Cons!67162) (exprs!6743 lt!2491029))))))

(assert (=> b!6993821 (= e!4203785 e!4203777)))

(declare-fun res!2852633 () Bool)

(assert (=> b!6993821 (=> res!2852633 e!4203777)))

(assert (=> b!6993821 (= res!2852633 (not (= (derivationStepZipper!2727 lt!2491040 (h!73611 s!7408)) lt!2491046)))))

(assert (=> b!6993821 (= (flatMap!2233 lt!2491040 lambda!403475) (derivationStepZipperUp!1897 lt!2491050 (h!73611 s!7408)))))

(declare-fun lt!2491026 () Unit!161149)

(assert (=> b!6993821 (= lt!2491026 (lemmaFlatMapOnSingletonSet!1748 lt!2491040 lt!2491050 lambda!403475))))

(assert (=> b!6993821 (= lt!2491046 (derivationStepZipperUp!1897 lt!2491050 (h!73611 s!7408)))))

(declare-fun lt!2491014 () Unit!161149)

(assert (=> b!6993821 (= lt!2491014 (lemmaConcatPreservesForall!583 (exprs!6743 lt!2491029) (exprs!6743 ct2!306) lambda!403474))))

(declare-fun b!6993822 () Bool)

(assert (=> b!6993822 (= e!4203780 e!4203786)))

(declare-fun res!2852636 () Bool)

(assert (=> b!6993822 (=> res!2852636 e!4203786)))

(assert (=> b!6993822 (= res!2852636 (not (matchZipper!2787 lt!2491038 (t!381034 s!7408))))))

(declare-fun lt!2491030 () Unit!161149)

(assert (=> b!6993822 (= lt!2491030 (lemmaConcatPreservesForall!583 lt!2491019 (exprs!6743 ct2!306) lambda!403474))))

(assert (= (and start!672458 res!2852634) b!6993803))

(assert (= (and b!6993803 res!2852652) b!6993808))

(assert (= (and b!6993808 (not res!2852646)) b!6993818))

(assert (= (and b!6993818 (not res!2852642)) b!6993802))

(assert (= (and b!6993802 (not res!2852651)) b!6993796))

(assert (= (and b!6993796 (not res!2852632)) b!6993821))

(assert (= (and b!6993821 (not res!2852633)) b!6993820))

(assert (= (and b!6993820 (not res!2852640)) b!6993800))

(assert (= (and b!6993800 (not res!2852645)) b!6993814))

(assert (= (and b!6993814 (not res!2852643)) b!6993807))

(assert (= (and b!6993807 (not res!2852655)) b!6993806))

(assert (= (and b!6993806 (not res!2852649)) b!6993817))

(assert (= (and b!6993806 res!2852639) b!6993797))

(assert (= (and b!6993806 (not res!2852638)) b!6993795))

(assert (= (and b!6993795 (not res!2852644)) b!6993822))

(assert (= (and b!6993822 (not res!2852636)) b!6993811))

(assert (= (and b!6993811 (not res!2852648)) b!6993819))

(assert (= (and b!6993819 (not res!2852635)) b!6993810))

(assert (= (and b!6993810 (not res!2852641)) b!6993804))

(assert (= (and b!6993804 (not res!2852637)) b!6993801))

(assert (= (and b!6993801 (not res!2852656)) b!6993812))

(assert (= (and b!6993812 (not res!2852654)) b!6993805))

(assert (= (and b!6993805 (not res!2852650)) b!6993816))

(assert (= (and b!6993816 (not res!2852653)) b!6993798))

(assert (= (and b!6993798 (not res!2852647)) b!6993799))

(assert (= (and start!672458 condSetEmpty!47943) setIsEmpty!47943))

(assert (= (and start!672458 (not condSetEmpty!47943)) setNonEmpty!47943))

(assert (= setNonEmpty!47943 b!6993813))

(assert (= start!672458 b!6993809))

(assert (= (and start!672458 ((_ is Cons!67163) s!7408)) b!6993815))

(declare-fun m!7684244 () Bool)

(assert (=> b!6993818 m!7684244))

(declare-fun m!7684246 () Bool)

(assert (=> b!6993811 m!7684246))

(declare-fun m!7684248 () Bool)

(assert (=> b!6993811 m!7684248))

(assert (=> b!6993811 m!7684246))

(assert (=> b!6993811 m!7684246))

(declare-fun m!7684250 () Bool)

(assert (=> b!6993811 m!7684250))

(declare-fun m!7684252 () Bool)

(assert (=> b!6993811 m!7684252))

(declare-fun m!7684254 () Bool)

(assert (=> b!6993811 m!7684254))

(assert (=> b!6993811 m!7684246))

(declare-fun m!7684256 () Bool)

(assert (=> b!6993811 m!7684256))

(assert (=> b!6993807 m!7684246))

(declare-fun m!7684258 () Bool)

(assert (=> b!6993807 m!7684258))

(assert (=> b!6993807 m!7684246))

(declare-fun m!7684260 () Bool)

(assert (=> b!6993807 m!7684260))

(assert (=> b!6993807 m!7684254))

(declare-fun m!7684262 () Bool)

(assert (=> start!672458 m!7684262))

(declare-fun m!7684264 () Bool)

(assert (=> start!672458 m!7684264))

(declare-fun m!7684266 () Bool)

(assert (=> start!672458 m!7684266))

(declare-fun m!7684268 () Bool)

(assert (=> b!6993810 m!7684268))

(assert (=> b!6993810 m!7684246))

(declare-fun m!7684270 () Bool)

(assert (=> b!6993810 m!7684270))

(declare-fun m!7684272 () Bool)

(assert (=> b!6993810 m!7684272))

(assert (=> b!6993810 m!7684246))

(declare-fun m!7684274 () Bool)

(assert (=> b!6993810 m!7684274))

(declare-fun m!7684276 () Bool)

(assert (=> b!6993810 m!7684276))

(declare-fun m!7684278 () Bool)

(assert (=> b!6993810 m!7684278))

(assert (=> b!6993810 m!7684258))

(declare-fun m!7684280 () Bool)

(assert (=> b!6993810 m!7684280))

(assert (=> b!6993810 m!7684246))

(assert (=> b!6993810 m!7684246))

(declare-fun m!7684282 () Bool)

(assert (=> b!6993810 m!7684282))

(declare-fun m!7684284 () Bool)

(assert (=> b!6993810 m!7684284))

(declare-fun m!7684286 () Bool)

(assert (=> b!6993810 m!7684286))

(declare-fun m!7684288 () Bool)

(assert (=> b!6993810 m!7684288))

(declare-fun m!7684290 () Bool)

(assert (=> b!6993810 m!7684290))

(declare-fun m!7684292 () Bool)

(assert (=> b!6993796 m!7684292))

(declare-fun m!7684294 () Bool)

(assert (=> b!6993796 m!7684294))

(declare-fun m!7684296 () Bool)

(assert (=> b!6993821 m!7684296))

(assert (=> b!6993821 m!7684294))

(declare-fun m!7684298 () Bool)

(assert (=> b!6993821 m!7684298))

(declare-fun m!7684300 () Bool)

(assert (=> b!6993821 m!7684300))

(declare-fun m!7684302 () Bool)

(assert (=> b!6993821 m!7684302))

(declare-fun m!7684304 () Bool)

(assert (=> b!6993802 m!7684304))

(declare-fun m!7684306 () Bool)

(assert (=> b!6993802 m!7684306))

(assert (=> b!6993802 m!7684294))

(declare-fun m!7684308 () Bool)

(assert (=> b!6993802 m!7684308))

(declare-fun m!7684310 () Bool)

(assert (=> b!6993812 m!7684310))

(declare-fun m!7684312 () Bool)

(assert (=> b!6993804 m!7684312))

(declare-fun m!7684314 () Bool)

(assert (=> setNonEmpty!47943 m!7684314))

(declare-fun m!7684316 () Bool)

(assert (=> b!6993800 m!7684316))

(declare-fun m!7684318 () Bool)

(assert (=> b!6993801 m!7684318))

(declare-fun m!7684320 () Bool)

(assert (=> b!6993801 m!7684320))

(declare-fun m!7684322 () Bool)

(assert (=> b!6993801 m!7684322))

(declare-fun m!7684324 () Bool)

(assert (=> b!6993801 m!7684324))

(declare-fun m!7684326 () Bool)

(assert (=> b!6993801 m!7684326))

(declare-fun m!7684328 () Bool)

(assert (=> b!6993801 m!7684328))

(declare-fun m!7684330 () Bool)

(assert (=> b!6993806 m!7684330))

(assert (=> b!6993806 m!7684246))

(declare-fun m!7684332 () Bool)

(assert (=> b!6993806 m!7684332))

(assert (=> b!6993806 m!7684246))

(declare-fun m!7684334 () Bool)

(assert (=> b!6993806 m!7684334))

(declare-fun m!7684336 () Bool)

(assert (=> b!6993806 m!7684336))

(assert (=> b!6993806 m!7684246))

(declare-fun m!7684338 () Bool)

(assert (=> b!6993808 m!7684338))

(declare-fun m!7684340 () Bool)

(assert (=> b!6993808 m!7684340))

(declare-fun m!7684342 () Bool)

(assert (=> b!6993808 m!7684342))

(declare-fun m!7684344 () Bool)

(assert (=> b!6993808 m!7684344))

(declare-fun m!7684346 () Bool)

(assert (=> b!6993808 m!7684346))

(declare-fun m!7684348 () Bool)

(assert (=> b!6993808 m!7684348))

(declare-fun m!7684350 () Bool)

(assert (=> b!6993805 m!7684350))

(declare-fun m!7684352 () Bool)

(assert (=> b!6993817 m!7684352))

(assert (=> b!6993822 m!7684352))

(assert (=> b!6993822 m!7684246))

(declare-fun m!7684354 () Bool)

(assert (=> b!6993814 m!7684354))

(declare-fun m!7684356 () Bool)

(assert (=> b!6993814 m!7684356))

(declare-fun m!7684358 () Bool)

(assert (=> b!6993819 m!7684358))

(assert (=> b!6993819 m!7684246))

(assert (=> b!6993797 m!7684352))

(assert (=> b!6993797 m!7684246))

(declare-fun m!7684360 () Bool)

(assert (=> b!6993816 m!7684360))

(declare-fun m!7684362 () Bool)

(assert (=> b!6993799 m!7684362))

(assert (=> b!6993798 m!7684362))

(check-sat (not b!6993804) (not b!6993808) (not b!6993807) (not b!6993821) (not b!6993796) (not start!672458) (not b!6993816) (not b!6993811) (not b!6993813) (not b!6993822) (not b!6993809) (not b!6993814) tp_is_empty!43719 (not b!6993799) (not b!6993802) (not b!6993805) (not setNonEmpty!47943) (not b!6993819) (not b!6993815) (not b!6993797) (not b!6993798) (not b!6993806) (not b!6993801) (not b!6993800) (not b!6993810) (not b!6993812) (not b!6993817))
(check-sat)
