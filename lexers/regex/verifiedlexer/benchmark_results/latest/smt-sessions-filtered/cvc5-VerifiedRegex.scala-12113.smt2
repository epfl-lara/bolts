; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!680280 () Bool)

(assert start!680280)

(declare-fun b!7036157 () Bool)

(assert (=> b!7036157 true))

(declare-fun b!7036151 () Bool)

(assert (=> b!7036151 true))

(declare-fun b!7036143 () Bool)

(assert (=> b!7036143 true))

(declare-fun b!7036128 () Bool)

(declare-fun e!4229826 () Bool)

(declare-fun e!4229828 () Bool)

(assert (=> b!7036128 (= e!4229826 e!4229828)))

(declare-fun res!2872284 () Bool)

(assert (=> b!7036128 (=> res!2872284 e!4229828)))

(declare-datatypes ((C!35214 0))(
  ( (C!35215 (val!27309 Int)) )
))
(declare-datatypes ((Regex!17472 0))(
  ( (ElementMatch!17472 (c!1309148 C!35214)) (Concat!26317 (regOne!35456 Regex!17472) (regTwo!35456 Regex!17472)) (EmptyExpr!17472) (Star!17472 (reg!17801 Regex!17472)) (EmptyLang!17472) (Union!17472 (regOne!35457 Regex!17472) (regTwo!35457 Regex!17472)) )
))
(declare-datatypes ((List!67944 0))(
  ( (Nil!67820) (Cons!67820 (h!74268 Regex!17472) (t!381713 List!67944)) )
))
(declare-datatypes ((Context!12936 0))(
  ( (Context!12937 (exprs!6968 List!67944)) )
))
(declare-fun lt!2520803 () (Set Context!12936))

(declare-datatypes ((List!67945 0))(
  ( (Nil!67821) (Cons!67821 (h!74269 C!35214) (t!381714 List!67945)) )
))
(declare-datatypes ((tuple2!68090 0))(
  ( (tuple2!68091 (_1!37348 List!67945) (_2!37348 List!67945)) )
))
(declare-fun lt!2520831 () tuple2!68090)

(declare-fun matchZipper!3012 ((Set Context!12936) List!67945) Bool)

(assert (=> b!7036128 (= res!2872284 (not (matchZipper!3012 lt!2520803 (_1!37348 lt!2520831))))))

(declare-datatypes ((Option!16877 0))(
  ( (None!16876) (Some!16876 (v!53164 tuple2!68090)) )
))
(declare-fun lt!2520810 () Option!16877)

(declare-fun get!23764 (Option!16877) tuple2!68090)

(assert (=> b!7036128 (= lt!2520831 (get!23764 lt!2520810))))

(declare-fun isDefined!13578 (Option!16877) Bool)

(assert (=> b!7036128 (isDefined!13578 lt!2520810)))

(declare-fun lt!2520799 () (Set Context!12936))

(declare-fun s!7408 () List!67945)

(declare-fun findConcatSeparationZippers!393 ((Set Context!12936) (Set Context!12936) List!67945 List!67945 List!67945) Option!16877)

(assert (=> b!7036128 (= lt!2520810 (findConcatSeparationZippers!393 lt!2520803 lt!2520799 Nil!67821 s!7408 s!7408))))

(declare-fun ct2!306 () Context!12936)

(assert (=> b!7036128 (= lt!2520799 (set.insert ct2!306 (as set.empty (Set Context!12936))))))

(declare-datatypes ((Unit!161622 0))(
  ( (Unit!161623) )
))
(declare-fun lt!2520813 () Unit!161622)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!381 ((Set Context!12936) Context!12936 List!67945) Unit!161622)

(assert (=> b!7036128 (= lt!2520813 (lemmaConcatZipperMatchesStringThenFindConcatDefined!381 lt!2520803 ct2!306 s!7408))))

(declare-fun res!2872299 () Bool)

(declare-fun e!4229829 () Bool)

(assert (=> start!680280 (=> (not res!2872299) (not e!4229829))))

(declare-fun lt!2520837 () (Set Context!12936))

(assert (=> start!680280 (= res!2872299 (matchZipper!3012 lt!2520837 s!7408))))

(declare-fun z1!570 () (Set Context!12936))

(declare-fun appendTo!593 ((Set Context!12936) Context!12936) (Set Context!12936))

(assert (=> start!680280 (= lt!2520837 (appendTo!593 z1!570 ct2!306))))

(assert (=> start!680280 e!4229829))

(declare-fun condSetEmpty!49235 () Bool)

(assert (=> start!680280 (= condSetEmpty!49235 (= z1!570 (as set.empty (Set Context!12936))))))

(declare-fun setRes!49235 () Bool)

(assert (=> start!680280 setRes!49235))

(declare-fun e!4229819 () Bool)

(declare-fun inv!86540 (Context!12936) Bool)

(assert (=> start!680280 (and (inv!86540 ct2!306) e!4229819)))

(declare-fun e!4229821 () Bool)

(assert (=> start!680280 e!4229821))

(declare-fun b!7036129 () Bool)

(declare-fun e!4229835 () Bool)

(declare-fun e!4229827 () Bool)

(assert (=> b!7036129 (= e!4229835 e!4229827)))

(declare-fun res!2872292 () Bool)

(assert (=> b!7036129 (=> res!2872292 e!4229827)))

(declare-fun lt!2520838 () (Set Context!12936))

(declare-fun lt!2520815 () (Set Context!12936))

(assert (=> b!7036129 (= res!2872292 (not (= lt!2520838 lt!2520815)))))

(declare-fun lt!2520812 () (Set Context!12936))

(declare-fun lt!2520800 () (Set Context!12936))

(assert (=> b!7036129 (= lt!2520815 (set.union lt!2520812 lt!2520800))))

(declare-fun lt!2520842 () Context!12936)

(declare-fun derivationStepZipperUp!2082 (Context!12936 C!35214) (Set Context!12936))

(assert (=> b!7036129 (= lt!2520800 (derivationStepZipperUp!2082 lt!2520842 (h!74269 s!7408)))))

(declare-fun lt!2520817 () Context!12936)

(declare-fun derivationStepZipperDown!2136 (Regex!17472 Context!12936 C!35214) (Set Context!12936))

(assert (=> b!7036129 (= lt!2520812 (derivationStepZipperDown!2136 (h!74268 (exprs!6968 lt!2520817)) lt!2520842 (h!74269 s!7408)))))

(declare-fun lt!2520840 () List!67944)

(declare-fun ++!15524 (List!67944 List!67944) List!67944)

(assert (=> b!7036129 (= lt!2520842 (Context!12937 (++!15524 lt!2520840 (exprs!6968 ct2!306))))))

(declare-fun lt!2520824 () Unit!161622)

(declare-fun lambda!415521 () Int)

(declare-fun lemmaConcatPreservesForall!793 (List!67944 List!67944 Int) Unit!161622)

(assert (=> b!7036129 (= lt!2520824 (lemmaConcatPreservesForall!793 lt!2520840 (exprs!6968 ct2!306) lambda!415521))))

(declare-fun lt!2520841 () Unit!161622)

(assert (=> b!7036129 (= lt!2520841 (lemmaConcatPreservesForall!793 lt!2520840 (exprs!6968 ct2!306) lambda!415521))))

(declare-fun b!7036130 () Bool)

(declare-fun res!2872290 () Bool)

(declare-fun e!4229838 () Bool)

(assert (=> b!7036130 (=> res!2872290 e!4229838)))

(assert (=> b!7036130 (= res!2872290 (not (is-Cons!67820 (exprs!6968 lt!2520817))))))

(declare-fun b!7036131 () Bool)

(declare-fun e!4229822 () Bool)

(assert (=> b!7036131 (= e!4229822 e!4229826)))

(declare-fun res!2872281 () Bool)

(assert (=> b!7036131 (=> res!2872281 e!4229826)))

(declare-fun lt!2520819 () Int)

(declare-fun lt!2520844 () Context!12936)

(declare-fun contextDepthTotal!507 (Context!12936) Int)

(assert (=> b!7036131 (= res!2872281 (<= lt!2520819 (contextDepthTotal!507 lt!2520844)))))

(declare-fun lt!2520834 () Int)

(assert (=> b!7036131 (<= lt!2520819 lt!2520834)))

(declare-datatypes ((List!67946 0))(
  ( (Nil!67822) (Cons!67822 (h!74270 Context!12936) (t!381715 List!67946)) )
))
(declare-fun lt!2520821 () List!67946)

(declare-fun zipperDepthTotal!535 (List!67946) Int)

(assert (=> b!7036131 (= lt!2520834 (zipperDepthTotal!535 lt!2520821))))

(assert (=> b!7036131 (= lt!2520819 (contextDepthTotal!507 lt!2520817))))

(declare-fun lt!2520797 () Unit!161622)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!75 (List!67946 Context!12936) Unit!161622)

(assert (=> b!7036131 (= lt!2520797 (lemmaTotalDepthZipperLargerThanOfAnyContext!75 lt!2520821 lt!2520817))))

(declare-fun toList!10815 ((Set Context!12936)) List!67946)

(assert (=> b!7036131 (= lt!2520821 (toList!10815 z1!570))))

(declare-fun lt!2520852 () Unit!161622)

(assert (=> b!7036131 (= lt!2520852 (lemmaConcatPreservesForall!793 lt!2520840 (exprs!6968 ct2!306) lambda!415521))))

(declare-fun lt!2520806 () Unit!161622)

(assert (=> b!7036131 (= lt!2520806 (lemmaConcatPreservesForall!793 lt!2520840 (exprs!6968 ct2!306) lambda!415521))))

(declare-fun lt!2520798 () Unit!161622)

(assert (=> b!7036131 (= lt!2520798 (lemmaConcatPreservesForall!793 lt!2520840 (exprs!6968 ct2!306) lambda!415521))))

(declare-fun lambda!415522 () Int)

(declare-fun flatMap!2419 ((Set Context!12936) Int) (Set Context!12936))

(assert (=> b!7036131 (= (flatMap!2419 lt!2520803 lambda!415522) (derivationStepZipperUp!2082 lt!2520844 (h!74269 s!7408)))))

(declare-fun lt!2520805 () Unit!161622)

(declare-fun lemmaFlatMapOnSingletonSet!1933 ((Set Context!12936) Context!12936 Int) Unit!161622)

(assert (=> b!7036131 (= lt!2520805 (lemmaFlatMapOnSingletonSet!1933 lt!2520803 lt!2520844 lambda!415522))))

(declare-fun lambda!415520 () Int)

(declare-fun map!15776 ((Set Context!12936) Int) (Set Context!12936))

(assert (=> b!7036131 (= (map!15776 lt!2520803 lambda!415520) (set.insert (Context!12937 (++!15524 lt!2520840 (exprs!6968 ct2!306))) (as set.empty (Set Context!12936))))))

(declare-fun lt!2520843 () Unit!161622)

(assert (=> b!7036131 (= lt!2520843 (lemmaConcatPreservesForall!793 lt!2520840 (exprs!6968 ct2!306) lambda!415521))))

(declare-fun lt!2520818 () Unit!161622)

(declare-fun lemmaMapOnSingletonSet!383 ((Set Context!12936) Context!12936 Int) Unit!161622)

(assert (=> b!7036131 (= lt!2520818 (lemmaMapOnSingletonSet!383 lt!2520803 lt!2520844 lambda!415520))))

(assert (=> b!7036131 (= lt!2520803 (set.insert lt!2520844 (as set.empty (Set Context!12936))))))

(declare-fun b!7036132 () Bool)

(declare-fun e!4229832 () Bool)

(declare-fun e!4229820 () Bool)

(assert (=> b!7036132 (= e!4229832 e!4229820)))

(declare-fun res!2872295 () Bool)

(assert (=> b!7036132 (=> res!2872295 e!4229820)))

(declare-fun lt!2520822 () (Set Context!12936))

(declare-fun lt!2520796 () Bool)

(assert (=> b!7036132 (= res!2872295 (= (matchZipper!3012 lt!2520822 (_1!37348 lt!2520831)) lt!2520796))))

(declare-fun lt!2520820 () (Set Context!12936))

(declare-fun lt!2520827 () List!67945)

(declare-fun e!4229818 () Bool)

(assert (=> b!7036132 (= (matchZipper!3012 lt!2520820 lt!2520827) e!4229818)))

(declare-fun res!2872305 () Bool)

(assert (=> b!7036132 (=> res!2872305 e!4229818)))

(assert (=> b!7036132 (= res!2872305 lt!2520796)))

(declare-fun lt!2520794 () (Set Context!12936))

(assert (=> b!7036132 (= lt!2520796 (matchZipper!3012 lt!2520794 lt!2520827))))

(declare-fun lt!2520848 () (Set Context!12936))

(declare-fun lt!2520851 () Unit!161622)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1545 ((Set Context!12936) (Set Context!12936) List!67945) Unit!161622)

(assert (=> b!7036132 (= lt!2520851 (lemmaZipperConcatMatchesSameAsBothZippers!1545 lt!2520794 lt!2520848 lt!2520827))))

(declare-fun tail!13565 (List!67945) List!67945)

(assert (=> b!7036132 (= lt!2520827 (tail!13565 (_1!37348 lt!2520831)))))

(declare-fun b!7036133 () Bool)

(declare-fun e!4229834 () Bool)

(assert (=> b!7036133 (= e!4229834 (not (matchZipper!3012 lt!2520800 (t!381714 s!7408))))))

(declare-fun lt!2520832 () Unit!161622)

(assert (=> b!7036133 (= lt!2520832 (lemmaConcatPreservesForall!793 lt!2520840 (exprs!6968 ct2!306) lambda!415521))))

(declare-fun b!7036134 () Bool)

(declare-fun e!4229824 () Bool)

(assert (=> b!7036134 (= e!4229824 (matchZipper!3012 lt!2520800 (t!381714 s!7408)))))

(declare-fun b!7036135 () Bool)

(declare-fun res!2872286 () Bool)

(assert (=> b!7036135 (=> res!2872286 e!4229828)))

(declare-fun isEmpty!39563 (List!67945) Bool)

(assert (=> b!7036135 (= res!2872286 (isEmpty!39563 (_1!37348 lt!2520831)))))

(declare-fun b!7036136 () Bool)

(declare-fun e!4229823 () Bool)

(assert (=> b!7036136 (= e!4229823 e!4229822)))

(declare-fun res!2872297 () Bool)

(assert (=> b!7036136 (=> res!2872297 e!4229822)))

(declare-fun lt!2520793 () (Set Context!12936))

(assert (=> b!7036136 (= res!2872297 (not (matchZipper!3012 lt!2520793 s!7408)))))

(declare-fun lt!2520816 () Unit!161622)

(assert (=> b!7036136 (= lt!2520816 (lemmaConcatPreservesForall!793 lt!2520840 (exprs!6968 ct2!306) lambda!415521))))

(declare-fun b!7036137 () Bool)

(declare-fun e!4229817 () Bool)

(assert (=> b!7036137 (= e!4229828 e!4229817)))

(declare-fun res!2872306 () Bool)

(assert (=> b!7036137 (=> res!2872306 e!4229817)))

(declare-fun lt!2520809 () (Set Context!12936))

(declare-fun derivationStepZipper!2928 ((Set Context!12936) C!35214) (Set Context!12936))

(assert (=> b!7036137 (= res!2872306 (not (= (derivationStepZipper!2928 lt!2520822 (h!74269 s!7408)) lt!2520809)))))

(assert (=> b!7036137 (= lt!2520809 (derivationStepZipperUp!2082 lt!2520817 (h!74269 s!7408)))))

(assert (=> b!7036137 (= (flatMap!2419 lt!2520822 lambda!415522) (derivationStepZipperUp!2082 lt!2520817 (h!74269 s!7408)))))

(declare-fun lt!2520828 () Unit!161622)

(assert (=> b!7036137 (= lt!2520828 (lemmaFlatMapOnSingletonSet!1933 lt!2520822 lt!2520817 lambda!415522))))

(assert (=> b!7036137 (= lt!2520822 (set.insert lt!2520817 (as set.empty (Set Context!12936))))))

(declare-fun b!7036138 () Bool)

(declare-fun res!2872300 () Bool)

(assert (=> b!7036138 (=> res!2872300 e!4229826)))

(assert (=> b!7036138 (= res!2872300 (>= (zipperDepthTotal!535 (Cons!67822 lt!2520844 Nil!67822)) lt!2520834))))

(declare-fun b!7036139 () Bool)

(assert (=> b!7036139 (= e!4229820 (matchZipper!3012 lt!2520848 lt!2520827))))

(declare-fun b!7036140 () Bool)

(declare-fun res!2872285 () Bool)

(declare-fun e!4229831 () Bool)

(assert (=> b!7036140 (=> res!2872285 e!4229831)))

(declare-fun lt!2520830 () Context!12936)

(assert (=> b!7036140 (= res!2872285 (not (set.member lt!2520830 lt!2520837)))))

(declare-fun b!7036141 () Bool)

(declare-fun res!2872287 () Bool)

(assert (=> b!7036141 (=> res!2872287 e!4229838)))

(declare-fun isEmpty!39564 (List!67944) Bool)

(assert (=> b!7036141 (= res!2872287 (isEmpty!39564 (exprs!6968 lt!2520817)))))

(declare-fun b!7036142 () Bool)

(assert (=> b!7036142 (= e!4229817 e!4229832)))

(declare-fun res!2872283 () Bool)

(assert (=> b!7036142 (=> res!2872283 e!4229832)))

(assert (=> b!7036142 (= res!2872283 (not (= lt!2520809 lt!2520820)))))

(assert (=> b!7036142 (= lt!2520820 (set.union lt!2520794 lt!2520848))))

(assert (=> b!7036142 (= lt!2520848 (derivationStepZipperUp!2082 lt!2520844 (h!74269 s!7408)))))

(assert (=> b!7036142 (= lt!2520794 (derivationStepZipperDown!2136 (h!74268 (exprs!6968 lt!2520817)) lt!2520844 (h!74269 s!7408)))))

(declare-fun e!4229836 () Bool)

(assert (=> b!7036143 (= e!4229836 e!4229838)))

(declare-fun res!2872304 () Bool)

(assert (=> b!7036143 (=> res!2872304 e!4229838)))

(declare-fun lt!2520847 () (Set Context!12936))

(assert (=> b!7036143 (= res!2872304 (not (= (derivationStepZipper!2928 lt!2520847 (h!74269 s!7408)) lt!2520838)))))

(declare-fun lt!2520807 () Context!12936)

(assert (=> b!7036143 (= (flatMap!2419 lt!2520847 lambda!415522) (derivationStepZipperUp!2082 lt!2520807 (h!74269 s!7408)))))

(declare-fun lt!2520850 () Unit!161622)

(assert (=> b!7036143 (= lt!2520850 (lemmaFlatMapOnSingletonSet!1933 lt!2520847 lt!2520807 lambda!415522))))

(assert (=> b!7036143 (= lt!2520838 (derivationStepZipperUp!2082 lt!2520807 (h!74269 s!7408)))))

(declare-fun lt!2520801 () Unit!161622)

(assert (=> b!7036143 (= lt!2520801 (lemmaConcatPreservesForall!793 (exprs!6968 lt!2520817) (exprs!6968 ct2!306) lambda!415521))))

(declare-fun b!7036144 () Bool)

(declare-fun res!2872282 () Bool)

(assert (=> b!7036144 (=> (not res!2872282) (not e!4229829))))

(assert (=> b!7036144 (= res!2872282 (is-Cons!67821 s!7408))))

(declare-fun b!7036145 () Bool)

(declare-fun e!4229837 () Bool)

(declare-fun e!4229830 () Bool)

(assert (=> b!7036145 (= e!4229837 e!4229830)))

(declare-fun res!2872280 () Bool)

(assert (=> b!7036145 (=> res!2872280 e!4229830)))

(assert (=> b!7036145 (= res!2872280 (not (matchZipper!3012 lt!2520800 (t!381714 s!7408))))))

(declare-fun lt!2520826 () Unit!161622)

(assert (=> b!7036145 (= lt!2520826 (lemmaConcatPreservesForall!793 lt!2520840 (exprs!6968 ct2!306) lambda!415521))))

(declare-fun e!4229825 () Bool)

(declare-fun setElem!49235 () Context!12936)

(declare-fun tp!1936852 () Bool)

(declare-fun setNonEmpty!49235 () Bool)

(assert (=> setNonEmpty!49235 (= setRes!49235 (and tp!1936852 (inv!86540 setElem!49235) e!4229825))))

(declare-fun setRest!49235 () (Set Context!12936))

(assert (=> setNonEmpty!49235 (= z1!570 (set.union (set.insert setElem!49235 (as set.empty (Set Context!12936))) setRest!49235))))

(declare-fun b!7036146 () Bool)

(assert (=> b!7036146 (= e!4229838 e!4229835)))

(declare-fun res!2872294 () Bool)

(assert (=> b!7036146 (=> res!2872294 e!4229835)))

(declare-fun nullable!7183 (Regex!17472) Bool)

(assert (=> b!7036146 (= res!2872294 (not (nullable!7183 (h!74268 (exprs!6968 lt!2520817)))))))

(assert (=> b!7036146 (= lt!2520844 (Context!12937 lt!2520840))))

(declare-fun tail!13566 (List!67944) List!67944)

(assert (=> b!7036146 (= lt!2520840 (tail!13566 (exprs!6968 lt!2520817)))))

(declare-fun setIsEmpty!49235 () Bool)

(assert (=> setIsEmpty!49235 setRes!49235))

(declare-fun b!7036147 () Bool)

(declare-fun res!2872303 () Bool)

(assert (=> b!7036147 (=> res!2872303 e!4229828)))

(assert (=> b!7036147 (= res!2872303 (not (matchZipper!3012 lt!2520799 (_2!37348 lt!2520831))))))

(declare-fun b!7036148 () Bool)

(declare-fun res!2872291 () Bool)

(assert (=> b!7036148 (=> res!2872291 e!4229837)))

(declare-fun lt!2520829 () Bool)

(assert (=> b!7036148 (= res!2872291 (not lt!2520829))))

(declare-fun b!7036149 () Bool)

(declare-fun tp!1936853 () Bool)

(assert (=> b!7036149 (= e!4229819 tp!1936853)))

(declare-fun b!7036150 () Bool)

(declare-fun e!4229833 () Bool)

(assert (=> b!7036150 (= e!4229833 e!4229836)))

(declare-fun res!2872301 () Bool)

(assert (=> b!7036150 (=> res!2872301 e!4229836)))

(declare-fun lt!2520833 () (Set Context!12936))

(assert (=> b!7036150 (= res!2872301 (not (= lt!2520847 lt!2520833)))))

(assert (=> b!7036150 (= lt!2520847 (set.insert lt!2520807 (as set.empty (Set Context!12936))))))

(declare-fun lt!2520804 () Unit!161622)

(assert (=> b!7036150 (= lt!2520804 (lemmaConcatPreservesForall!793 (exprs!6968 lt!2520817) (exprs!6968 ct2!306) lambda!415521))))

(assert (=> b!7036151 (= e!4229831 e!4229833)))

(declare-fun res!2872298 () Bool)

(assert (=> b!7036151 (=> res!2872298 e!4229833)))

(assert (=> b!7036151 (= res!2872298 (or (not (= lt!2520807 lt!2520830)) (not (set.member lt!2520817 z1!570))))))

(assert (=> b!7036151 (= lt!2520807 (Context!12937 (++!15524 (exprs!6968 lt!2520817) (exprs!6968 ct2!306))))))

(declare-fun lt!2520823 () Unit!161622)

(assert (=> b!7036151 (= lt!2520823 (lemmaConcatPreservesForall!793 (exprs!6968 lt!2520817) (exprs!6968 ct2!306) lambda!415521))))

(declare-fun mapPost2!313 ((Set Context!12936) Int Context!12936) Context!12936)

(assert (=> b!7036151 (= lt!2520817 (mapPost2!313 z1!570 lambda!415520 lt!2520830))))

(declare-fun b!7036152 () Bool)

(declare-fun tp_is_empty!44169 () Bool)

(declare-fun tp!1936851 () Bool)

(assert (=> b!7036152 (= e!4229821 (and tp_is_empty!44169 tp!1936851))))

(declare-fun b!7036153 () Bool)

(declare-fun tp!1936850 () Bool)

(assert (=> b!7036153 (= e!4229825 tp!1936850)))

(declare-fun b!7036154 () Bool)

(declare-fun res!2872296 () Bool)

(assert (=> b!7036154 (=> res!2872296 e!4229828)))

(declare-fun ++!15525 (List!67945 List!67945) List!67945)

(assert (=> b!7036154 (= res!2872296 (not (= (++!15525 (_1!37348 lt!2520831) (_2!37348 lt!2520831)) s!7408)))))

(declare-fun b!7036155 () Bool)

(assert (=> b!7036155 (= e!4229827 e!4229837)))

(declare-fun res!2872289 () Bool)

(assert (=> b!7036155 (=> res!2872289 e!4229837)))

(assert (=> b!7036155 (= res!2872289 e!4229834)))

(declare-fun res!2872279 () Bool)

(assert (=> b!7036155 (=> (not res!2872279) (not e!4229834))))

(declare-fun lt!2520808 () Bool)

(assert (=> b!7036155 (= res!2872279 (not (= lt!2520829 lt!2520808)))))

(assert (=> b!7036155 (= lt!2520829 (matchZipper!3012 lt!2520838 (t!381714 s!7408)))))

(declare-fun lt!2520835 () Unit!161622)

(assert (=> b!7036155 (= lt!2520835 (lemmaConcatPreservesForall!793 lt!2520840 (exprs!6968 ct2!306) lambda!415521))))

(assert (=> b!7036155 (= (matchZipper!3012 lt!2520815 (t!381714 s!7408)) e!4229824)))

(declare-fun res!2872288 () Bool)

(assert (=> b!7036155 (=> res!2872288 e!4229824)))

(assert (=> b!7036155 (= res!2872288 lt!2520808)))

(assert (=> b!7036155 (= lt!2520808 (matchZipper!3012 lt!2520812 (t!381714 s!7408)))))

(declare-fun lt!2520836 () Unit!161622)

(assert (=> b!7036155 (= lt!2520836 (lemmaZipperConcatMatchesSameAsBothZippers!1545 lt!2520812 lt!2520800 (t!381714 s!7408)))))

(declare-fun lt!2520846 () Unit!161622)

(assert (=> b!7036155 (= lt!2520846 (lemmaConcatPreservesForall!793 lt!2520840 (exprs!6968 ct2!306) lambda!415521))))

(declare-fun lt!2520795 () Unit!161622)

(assert (=> b!7036155 (= lt!2520795 (lemmaConcatPreservesForall!793 lt!2520840 (exprs!6968 ct2!306) lambda!415521))))

(declare-fun b!7036156 () Bool)

(assert (=> b!7036156 (= e!4229830 e!4229823)))

(declare-fun res!2872293 () Bool)

(assert (=> b!7036156 (=> res!2872293 e!4229823)))

(assert (=> b!7036156 (= res!2872293 (not (= (derivationStepZipper!2928 lt!2520793 (h!74269 s!7408)) lt!2520800)))))

(declare-fun lt!2520802 () Unit!161622)

(assert (=> b!7036156 (= lt!2520802 (lemmaConcatPreservesForall!793 lt!2520840 (exprs!6968 ct2!306) lambda!415521))))

(declare-fun lt!2520825 () Unit!161622)

(assert (=> b!7036156 (= lt!2520825 (lemmaConcatPreservesForall!793 lt!2520840 (exprs!6968 ct2!306) lambda!415521))))

(assert (=> b!7036156 (= (flatMap!2419 lt!2520793 lambda!415522) (derivationStepZipperUp!2082 lt!2520842 (h!74269 s!7408)))))

(declare-fun lt!2520814 () Unit!161622)

(assert (=> b!7036156 (= lt!2520814 (lemmaFlatMapOnSingletonSet!1933 lt!2520793 lt!2520842 lambda!415522))))

(assert (=> b!7036156 (= lt!2520793 (set.insert lt!2520842 (as set.empty (Set Context!12936))))))

(declare-fun lt!2520839 () Unit!161622)

(assert (=> b!7036156 (= lt!2520839 (lemmaConcatPreservesForall!793 lt!2520840 (exprs!6968 ct2!306) lambda!415521))))

(declare-fun lt!2520845 () Unit!161622)

(assert (=> b!7036156 (= lt!2520845 (lemmaConcatPreservesForall!793 lt!2520840 (exprs!6968 ct2!306) lambda!415521))))

(assert (=> b!7036157 (= e!4229829 (not e!4229831))))

(declare-fun res!2872302 () Bool)

(assert (=> b!7036157 (=> res!2872302 e!4229831)))

(assert (=> b!7036157 (= res!2872302 (not (matchZipper!3012 lt!2520833 s!7408)))))

(assert (=> b!7036157 (= lt!2520833 (set.insert lt!2520830 (as set.empty (Set Context!12936))))))

(declare-fun lambda!415519 () Int)

(declare-fun getWitness!1484 ((Set Context!12936) Int) Context!12936)

(assert (=> b!7036157 (= lt!2520830 (getWitness!1484 lt!2520837 lambda!415519))))

(declare-fun lt!2520811 () List!67946)

(declare-fun exists!3405 (List!67946 Int) Bool)

(assert (=> b!7036157 (exists!3405 lt!2520811 lambda!415519)))

(declare-fun lt!2520849 () Unit!161622)

(declare-fun lemmaZipperMatchesExistsMatchingContext!411 (List!67946 List!67945) Unit!161622)

(assert (=> b!7036157 (= lt!2520849 (lemmaZipperMatchesExistsMatchingContext!411 lt!2520811 s!7408))))

(assert (=> b!7036157 (= lt!2520811 (toList!10815 lt!2520837))))

(declare-fun b!7036158 () Bool)

(assert (=> b!7036158 (= e!4229818 (matchZipper!3012 lt!2520848 lt!2520827))))

(assert (= (and start!680280 res!2872299) b!7036144))

(assert (= (and b!7036144 res!2872282) b!7036157))

(assert (= (and b!7036157 (not res!2872302)) b!7036140))

(assert (= (and b!7036140 (not res!2872285)) b!7036151))

(assert (= (and b!7036151 (not res!2872298)) b!7036150))

(assert (= (and b!7036150 (not res!2872301)) b!7036143))

(assert (= (and b!7036143 (not res!2872304)) b!7036130))

(assert (= (and b!7036130 (not res!2872290)) b!7036141))

(assert (= (and b!7036141 (not res!2872287)) b!7036146))

(assert (= (and b!7036146 (not res!2872294)) b!7036129))

(assert (= (and b!7036129 (not res!2872292)) b!7036155))

(assert (= (and b!7036155 (not res!2872288)) b!7036134))

(assert (= (and b!7036155 res!2872279) b!7036133))

(assert (= (and b!7036155 (not res!2872289)) b!7036148))

(assert (= (and b!7036148 (not res!2872291)) b!7036145))

(assert (= (and b!7036145 (not res!2872280)) b!7036156))

(assert (= (and b!7036156 (not res!2872293)) b!7036136))

(assert (= (and b!7036136 (not res!2872297)) b!7036131))

(assert (= (and b!7036131 (not res!2872281)) b!7036138))

(assert (= (and b!7036138 (not res!2872300)) b!7036128))

(assert (= (and b!7036128 (not res!2872284)) b!7036147))

(assert (= (and b!7036147 (not res!2872303)) b!7036154))

(assert (= (and b!7036154 (not res!2872296)) b!7036135))

(assert (= (and b!7036135 (not res!2872286)) b!7036137))

(assert (= (and b!7036137 (not res!2872306)) b!7036142))

(assert (= (and b!7036142 (not res!2872283)) b!7036132))

(assert (= (and b!7036132 (not res!2872305)) b!7036158))

(assert (= (and b!7036132 (not res!2872295)) b!7036139))

(assert (= (and start!680280 condSetEmpty!49235) setIsEmpty!49235))

(assert (= (and start!680280 (not condSetEmpty!49235)) setNonEmpty!49235))

(assert (= setNonEmpty!49235 b!7036153))

(assert (= start!680280 b!7036149))

(assert (= (and start!680280 (is-Cons!67821 s!7408)) b!7036152))

(declare-fun m!7744866 () Bool)

(assert (=> b!7036129 m!7744866))

(declare-fun m!7744868 () Bool)

(assert (=> b!7036129 m!7744868))

(declare-fun m!7744870 () Bool)

(assert (=> b!7036129 m!7744870))

(declare-fun m!7744872 () Bool)

(assert (=> b!7036129 m!7744872))

(assert (=> b!7036129 m!7744870))

(declare-fun m!7744874 () Bool)

(assert (=> b!7036158 m!7744874))

(declare-fun m!7744876 () Bool)

(assert (=> b!7036151 m!7744876))

(declare-fun m!7744878 () Bool)

(assert (=> b!7036151 m!7744878))

(declare-fun m!7744880 () Bool)

(assert (=> b!7036151 m!7744880))

(declare-fun m!7744882 () Bool)

(assert (=> b!7036151 m!7744882))

(declare-fun m!7744884 () Bool)

(assert (=> start!680280 m!7744884))

(declare-fun m!7744886 () Bool)

(assert (=> start!680280 m!7744886))

(declare-fun m!7744888 () Bool)

(assert (=> start!680280 m!7744888))

(declare-fun m!7744890 () Bool)

(assert (=> b!7036150 m!7744890))

(assert (=> b!7036150 m!7744880))

(declare-fun m!7744892 () Bool)

(assert (=> b!7036133 m!7744892))

(assert (=> b!7036133 m!7744870))

(declare-fun m!7744894 () Bool)

(assert (=> setNonEmpty!49235 m!7744894))

(declare-fun m!7744896 () Bool)

(assert (=> b!7036146 m!7744896))

(declare-fun m!7744898 () Bool)

(assert (=> b!7036146 m!7744898))

(declare-fun m!7744900 () Bool)

(assert (=> b!7036137 m!7744900))

(declare-fun m!7744902 () Bool)

(assert (=> b!7036137 m!7744902))

(declare-fun m!7744904 () Bool)

(assert (=> b!7036137 m!7744904))

(declare-fun m!7744906 () Bool)

(assert (=> b!7036137 m!7744906))

(declare-fun m!7744908 () Bool)

(assert (=> b!7036137 m!7744908))

(declare-fun m!7744910 () Bool)

(assert (=> b!7036135 m!7744910))

(declare-fun m!7744912 () Bool)

(assert (=> b!7036141 m!7744912))

(declare-fun m!7744914 () Bool)

(assert (=> b!7036140 m!7744914))

(declare-fun m!7744916 () Bool)

(assert (=> b!7036142 m!7744916))

(declare-fun m!7744918 () Bool)

(assert (=> b!7036142 m!7744918))

(declare-fun m!7744920 () Bool)

(assert (=> b!7036154 m!7744920))

(declare-fun m!7744922 () Bool)

(assert (=> b!7036155 m!7744922))

(declare-fun m!7744924 () Bool)

(assert (=> b!7036155 m!7744924))

(declare-fun m!7744926 () Bool)

(assert (=> b!7036155 m!7744926))

(assert (=> b!7036155 m!7744870))

(assert (=> b!7036155 m!7744870))

(declare-fun m!7744928 () Bool)

(assert (=> b!7036155 m!7744928))

(assert (=> b!7036155 m!7744870))

(assert (=> b!7036134 m!7744892))

(declare-fun m!7744930 () Bool)

(assert (=> b!7036157 m!7744930))

(declare-fun m!7744932 () Bool)

(assert (=> b!7036157 m!7744932))

(declare-fun m!7744934 () Bool)

(assert (=> b!7036157 m!7744934))

(declare-fun m!7744936 () Bool)

(assert (=> b!7036157 m!7744936))

(declare-fun m!7744938 () Bool)

(assert (=> b!7036157 m!7744938))

(declare-fun m!7744940 () Bool)

(assert (=> b!7036157 m!7744940))

(assert (=> b!7036156 m!7744870))

(assert (=> b!7036156 m!7744870))

(assert (=> b!7036156 m!7744868))

(declare-fun m!7744942 () Bool)

(assert (=> b!7036156 m!7744942))

(assert (=> b!7036156 m!7744870))

(declare-fun m!7744944 () Bool)

(assert (=> b!7036156 m!7744944))

(declare-fun m!7744946 () Bool)

(assert (=> b!7036156 m!7744946))

(declare-fun m!7744948 () Bool)

(assert (=> b!7036156 m!7744948))

(assert (=> b!7036156 m!7744870))

(assert (=> b!7036145 m!7744892))

(assert (=> b!7036145 m!7744870))

(declare-fun m!7744950 () Bool)

(assert (=> b!7036131 m!7744950))

(declare-fun m!7744952 () Bool)

(assert (=> b!7036131 m!7744952))

(declare-fun m!7744954 () Bool)

(assert (=> b!7036131 m!7744954))

(assert (=> b!7036131 m!7744870))

(declare-fun m!7744956 () Bool)

(assert (=> b!7036131 m!7744956))

(declare-fun m!7744958 () Bool)

(assert (=> b!7036131 m!7744958))

(assert (=> b!7036131 m!7744916))

(declare-fun m!7744960 () Bool)

(assert (=> b!7036131 m!7744960))

(assert (=> b!7036131 m!7744872))

(assert (=> b!7036131 m!7744870))

(declare-fun m!7744962 () Bool)

(assert (=> b!7036131 m!7744962))

(assert (=> b!7036131 m!7744870))

(declare-fun m!7744964 () Bool)

(assert (=> b!7036131 m!7744964))

(assert (=> b!7036131 m!7744870))

(declare-fun m!7744966 () Bool)

(assert (=> b!7036131 m!7744966))

(declare-fun m!7744968 () Bool)

(assert (=> b!7036131 m!7744968))

(declare-fun m!7744970 () Bool)

(assert (=> b!7036131 m!7744970))

(declare-fun m!7744972 () Bool)

(assert (=> b!7036136 m!7744972))

(assert (=> b!7036136 m!7744870))

(declare-fun m!7744974 () Bool)

(assert (=> b!7036147 m!7744974))

(declare-fun m!7744976 () Bool)

(assert (=> b!7036143 m!7744976))

(declare-fun m!7744978 () Bool)

(assert (=> b!7036143 m!7744978))

(assert (=> b!7036143 m!7744880))

(declare-fun m!7744980 () Bool)

(assert (=> b!7036143 m!7744980))

(declare-fun m!7744982 () Bool)

(assert (=> b!7036143 m!7744982))

(declare-fun m!7744984 () Bool)

(assert (=> b!7036138 m!7744984))

(declare-fun m!7744986 () Bool)

(assert (=> b!7036132 m!7744986))

(declare-fun m!7744988 () Bool)

(assert (=> b!7036132 m!7744988))

(declare-fun m!7744990 () Bool)

(assert (=> b!7036132 m!7744990))

(declare-fun m!7744992 () Bool)

(assert (=> b!7036132 m!7744992))

(declare-fun m!7744994 () Bool)

(assert (=> b!7036132 m!7744994))

(declare-fun m!7744996 () Bool)

(assert (=> b!7036128 m!7744996))

(declare-fun m!7744998 () Bool)

(assert (=> b!7036128 m!7744998))

(declare-fun m!7745000 () Bool)

(assert (=> b!7036128 m!7745000))

(declare-fun m!7745002 () Bool)

(assert (=> b!7036128 m!7745002))

(declare-fun m!7745004 () Bool)

(assert (=> b!7036128 m!7745004))

(declare-fun m!7745006 () Bool)

(assert (=> b!7036128 m!7745006))

(assert (=> b!7036139 m!7744874))

(push 1)

(assert (not b!7036158))

(assert (not b!7036149))

(assert (not b!7036134))

(assert (not b!7036146))

(assert (not start!680280))

(assert (not b!7036138))

(assert (not b!7036131))

(assert (not b!7036132))

(assert (not setNonEmpty!49235))

(assert (not b!7036128))

(assert (not b!7036141))

(assert (not b!7036151))

(assert (not b!7036143))

(assert (not b!7036133))

(assert (not b!7036142))

(assert (not b!7036139))

(assert (not b!7036150))

(assert (not b!7036152))

(assert (not b!7036147))

(assert (not b!7036156))

(assert (not b!7036129))

(assert (not b!7036137))

(assert (not b!7036136))

(assert (not b!7036155))

(assert (not b!7036145))

(assert (not b!7036157))

(assert (not b!7036153))

(assert (not b!7036154))

(assert tp_is_empty!44169)

(assert (not b!7036135))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2196052 () Bool)

(assert (=> d!2196052 (= (isEmpty!39563 (_1!37348 lt!2520831)) (is-Nil!67821 (_1!37348 lt!2520831)))))

(assert (=> b!7036135 d!2196052))

(declare-fun d!2196054 () Bool)

(declare-fun c!1309168 () Bool)

(assert (=> d!2196054 (= c!1309168 (isEmpty!39563 s!7408))))

(declare-fun e!4229907 () Bool)

(assert (=> d!2196054 (= (matchZipper!3012 lt!2520793 s!7408) e!4229907)))

(declare-fun b!7036268 () Bool)

(declare-fun nullableZipper!2585 ((Set Context!12936)) Bool)

(assert (=> b!7036268 (= e!4229907 (nullableZipper!2585 lt!2520793))))

(declare-fun b!7036269 () Bool)

(declare-fun head!14272 (List!67945) C!35214)

(assert (=> b!7036269 (= e!4229907 (matchZipper!3012 (derivationStepZipper!2928 lt!2520793 (head!14272 s!7408)) (tail!13565 s!7408)))))

(assert (= (and d!2196054 c!1309168) b!7036268))

(assert (= (and d!2196054 (not c!1309168)) b!7036269))

(declare-fun m!7745150 () Bool)

(assert (=> d!2196054 m!7745150))

(declare-fun m!7745152 () Bool)

(assert (=> b!7036268 m!7745152))

(declare-fun m!7745154 () Bool)

(assert (=> b!7036269 m!7745154))

(assert (=> b!7036269 m!7745154))

(declare-fun m!7745156 () Bool)

(assert (=> b!7036269 m!7745156))

(declare-fun m!7745158 () Bool)

(assert (=> b!7036269 m!7745158))

(assert (=> b!7036269 m!7745156))

(assert (=> b!7036269 m!7745158))

(declare-fun m!7745160 () Bool)

(assert (=> b!7036269 m!7745160))

(assert (=> b!7036136 d!2196054))

(declare-fun d!2196056 () Bool)

(declare-fun forall!16389 (List!67944 Int) Bool)

(assert (=> d!2196056 (forall!16389 (++!15524 lt!2520840 (exprs!6968 ct2!306)) lambda!415521)))

(declare-fun lt!2521039 () Unit!161622)

(declare-fun choose!53326 (List!67944 List!67944 Int) Unit!161622)

(assert (=> d!2196056 (= lt!2521039 (choose!53326 lt!2520840 (exprs!6968 ct2!306) lambda!415521))))

(assert (=> d!2196056 (forall!16389 lt!2520840 lambda!415521)))

(assert (=> d!2196056 (= (lemmaConcatPreservesForall!793 lt!2520840 (exprs!6968 ct2!306) lambda!415521) lt!2521039)))

(declare-fun bs!1872030 () Bool)

(assert (= bs!1872030 d!2196056))

(assert (=> bs!1872030 m!7744872))

(assert (=> bs!1872030 m!7744872))

(declare-fun m!7745162 () Bool)

(assert (=> bs!1872030 m!7745162))

(declare-fun m!7745164 () Bool)

(assert (=> bs!1872030 m!7745164))

(declare-fun m!7745166 () Bool)

(assert (=> bs!1872030 m!7745166))

(assert (=> b!7036136 d!2196056))

(declare-fun d!2196058 () Bool)

(declare-fun c!1309169 () Bool)

(assert (=> d!2196058 (= c!1309169 (isEmpty!39563 (t!381714 s!7408)))))

(declare-fun e!4229908 () Bool)

(assert (=> d!2196058 (= (matchZipper!3012 lt!2520815 (t!381714 s!7408)) e!4229908)))

(declare-fun b!7036270 () Bool)

(assert (=> b!7036270 (= e!4229908 (nullableZipper!2585 lt!2520815))))

(declare-fun b!7036271 () Bool)

(assert (=> b!7036271 (= e!4229908 (matchZipper!3012 (derivationStepZipper!2928 lt!2520815 (head!14272 (t!381714 s!7408))) (tail!13565 (t!381714 s!7408))))))

(assert (= (and d!2196058 c!1309169) b!7036270))

(assert (= (and d!2196058 (not c!1309169)) b!7036271))

(declare-fun m!7745168 () Bool)

(assert (=> d!2196058 m!7745168))

(declare-fun m!7745170 () Bool)

(assert (=> b!7036270 m!7745170))

(declare-fun m!7745172 () Bool)

(assert (=> b!7036271 m!7745172))

(assert (=> b!7036271 m!7745172))

(declare-fun m!7745174 () Bool)

(assert (=> b!7036271 m!7745174))

(declare-fun m!7745176 () Bool)

(assert (=> b!7036271 m!7745176))

(assert (=> b!7036271 m!7745174))

(assert (=> b!7036271 m!7745176))

(declare-fun m!7745178 () Bool)

(assert (=> b!7036271 m!7745178))

(assert (=> b!7036155 d!2196058))

(declare-fun d!2196060 () Bool)

(declare-fun c!1309170 () Bool)

(assert (=> d!2196060 (= c!1309170 (isEmpty!39563 (t!381714 s!7408)))))

(declare-fun e!4229909 () Bool)

(assert (=> d!2196060 (= (matchZipper!3012 lt!2520838 (t!381714 s!7408)) e!4229909)))

(declare-fun b!7036272 () Bool)

(assert (=> b!7036272 (= e!4229909 (nullableZipper!2585 lt!2520838))))

(declare-fun b!7036273 () Bool)

(assert (=> b!7036273 (= e!4229909 (matchZipper!3012 (derivationStepZipper!2928 lt!2520838 (head!14272 (t!381714 s!7408))) (tail!13565 (t!381714 s!7408))))))

(assert (= (and d!2196060 c!1309170) b!7036272))

(assert (= (and d!2196060 (not c!1309170)) b!7036273))

(assert (=> d!2196060 m!7745168))

(declare-fun m!7745180 () Bool)

(assert (=> b!7036272 m!7745180))

(assert (=> b!7036273 m!7745172))

(assert (=> b!7036273 m!7745172))

(declare-fun m!7745182 () Bool)

(assert (=> b!7036273 m!7745182))

(assert (=> b!7036273 m!7745176))

(assert (=> b!7036273 m!7745182))

(assert (=> b!7036273 m!7745176))

(declare-fun m!7745184 () Bool)

(assert (=> b!7036273 m!7745184))

(assert (=> b!7036155 d!2196060))

(declare-fun d!2196062 () Bool)

(declare-fun c!1309171 () Bool)

(assert (=> d!2196062 (= c!1309171 (isEmpty!39563 (t!381714 s!7408)))))

(declare-fun e!4229910 () Bool)

(assert (=> d!2196062 (= (matchZipper!3012 lt!2520812 (t!381714 s!7408)) e!4229910)))

(declare-fun b!7036274 () Bool)

(assert (=> b!7036274 (= e!4229910 (nullableZipper!2585 lt!2520812))))

(declare-fun b!7036275 () Bool)

(assert (=> b!7036275 (= e!4229910 (matchZipper!3012 (derivationStepZipper!2928 lt!2520812 (head!14272 (t!381714 s!7408))) (tail!13565 (t!381714 s!7408))))))

(assert (= (and d!2196062 c!1309171) b!7036274))

(assert (= (and d!2196062 (not c!1309171)) b!7036275))

(assert (=> d!2196062 m!7745168))

(declare-fun m!7745186 () Bool)

(assert (=> b!7036274 m!7745186))

(assert (=> b!7036275 m!7745172))

(assert (=> b!7036275 m!7745172))

(declare-fun m!7745188 () Bool)

(assert (=> b!7036275 m!7745188))

(assert (=> b!7036275 m!7745176))

(assert (=> b!7036275 m!7745188))

(assert (=> b!7036275 m!7745176))

(declare-fun m!7745190 () Bool)

(assert (=> b!7036275 m!7745190))

(assert (=> b!7036155 d!2196062))

(declare-fun e!4229913 () Bool)

(declare-fun d!2196064 () Bool)

(assert (=> d!2196064 (= (matchZipper!3012 (set.union lt!2520812 lt!2520800) (t!381714 s!7408)) e!4229913)))

(declare-fun res!2872394 () Bool)

(assert (=> d!2196064 (=> res!2872394 e!4229913)))

(assert (=> d!2196064 (= res!2872394 (matchZipper!3012 lt!2520812 (t!381714 s!7408)))))

(declare-fun lt!2521042 () Unit!161622)

(declare-fun choose!53327 ((Set Context!12936) (Set Context!12936) List!67945) Unit!161622)

(assert (=> d!2196064 (= lt!2521042 (choose!53327 lt!2520812 lt!2520800 (t!381714 s!7408)))))

(assert (=> d!2196064 (= (lemmaZipperConcatMatchesSameAsBothZippers!1545 lt!2520812 lt!2520800 (t!381714 s!7408)) lt!2521042)))

(declare-fun b!7036278 () Bool)

(assert (=> b!7036278 (= e!4229913 (matchZipper!3012 lt!2520800 (t!381714 s!7408)))))

(assert (= (and d!2196064 (not res!2872394)) b!7036278))

(declare-fun m!7745192 () Bool)

(assert (=> d!2196064 m!7745192))

(assert (=> d!2196064 m!7744926))

(declare-fun m!7745194 () Bool)

(assert (=> d!2196064 m!7745194))

(assert (=> b!7036278 m!7744892))

(assert (=> b!7036155 d!2196064))

(assert (=> b!7036155 d!2196056))

(declare-fun d!2196066 () Bool)

(declare-fun dynLambda!27405 (Int Context!12936) (Set Context!12936))

(assert (=> d!2196066 (= (flatMap!2419 lt!2520793 lambda!415522) (dynLambda!27405 lambda!415522 lt!2520842))))

(declare-fun lt!2521045 () Unit!161622)

(declare-fun choose!53328 ((Set Context!12936) Context!12936 Int) Unit!161622)

(assert (=> d!2196066 (= lt!2521045 (choose!53328 lt!2520793 lt!2520842 lambda!415522))))

(assert (=> d!2196066 (= lt!2520793 (set.insert lt!2520842 (as set.empty (Set Context!12936))))))

(assert (=> d!2196066 (= (lemmaFlatMapOnSingletonSet!1933 lt!2520793 lt!2520842 lambda!415522) lt!2521045)))

(declare-fun b_lambda!266891 () Bool)

(assert (=> (not b_lambda!266891) (not d!2196066)))

(declare-fun bs!1872031 () Bool)

(assert (= bs!1872031 d!2196066))

(assert (=> bs!1872031 m!7744946))

(declare-fun m!7745196 () Bool)

(assert (=> bs!1872031 m!7745196))

(declare-fun m!7745198 () Bool)

(assert (=> bs!1872031 m!7745198))

(assert (=> bs!1872031 m!7744944))

(assert (=> b!7036156 d!2196066))

(declare-fun d!2196068 () Bool)

(declare-fun c!1309176 () Bool)

(declare-fun e!4229920 () Bool)

(assert (=> d!2196068 (= c!1309176 e!4229920)))

(declare-fun res!2872397 () Bool)

(assert (=> d!2196068 (=> (not res!2872397) (not e!4229920))))

(assert (=> d!2196068 (= res!2872397 (is-Cons!67820 (exprs!6968 lt!2520842)))))

(declare-fun e!4229922 () (Set Context!12936))

(assert (=> d!2196068 (= (derivationStepZipperUp!2082 lt!2520842 (h!74269 s!7408)) e!4229922)))

(declare-fun b!7036289 () Bool)

(assert (=> b!7036289 (= e!4229920 (nullable!7183 (h!74268 (exprs!6968 lt!2520842))))))

(declare-fun b!7036290 () Bool)

(declare-fun e!4229921 () (Set Context!12936))

(assert (=> b!7036290 (= e!4229921 (as set.empty (Set Context!12936)))))

(declare-fun b!7036291 () Bool)

(declare-fun call!638988 () (Set Context!12936))

(assert (=> b!7036291 (= e!4229921 call!638988)))

(declare-fun bm!638983 () Bool)

(assert (=> bm!638983 (= call!638988 (derivationStepZipperDown!2136 (h!74268 (exprs!6968 lt!2520842)) (Context!12937 (t!381713 (exprs!6968 lt!2520842))) (h!74269 s!7408)))))

(declare-fun b!7036292 () Bool)

(assert (=> b!7036292 (= e!4229922 (set.union call!638988 (derivationStepZipperUp!2082 (Context!12937 (t!381713 (exprs!6968 lt!2520842))) (h!74269 s!7408))))))

(declare-fun b!7036293 () Bool)

(assert (=> b!7036293 (= e!4229922 e!4229921)))

(declare-fun c!1309177 () Bool)

(assert (=> b!7036293 (= c!1309177 (is-Cons!67820 (exprs!6968 lt!2520842)))))

(assert (= (and d!2196068 res!2872397) b!7036289))

(assert (= (and d!2196068 c!1309176) b!7036292))

(assert (= (and d!2196068 (not c!1309176)) b!7036293))

(assert (= (and b!7036293 c!1309177) b!7036291))

(assert (= (and b!7036293 (not c!1309177)) b!7036290))

(assert (= (or b!7036292 b!7036291) bm!638983))

(declare-fun m!7745200 () Bool)

(assert (=> b!7036289 m!7745200))

(declare-fun m!7745202 () Bool)

(assert (=> bm!638983 m!7745202))

(declare-fun m!7745204 () Bool)

(assert (=> b!7036292 m!7745204))

(assert (=> b!7036156 d!2196068))

(declare-fun bs!1872032 () Bool)

(declare-fun d!2196070 () Bool)

(assert (= bs!1872032 (and d!2196070 b!7036143)))

(declare-fun lambda!415587 () Int)

(assert (=> bs!1872032 (= lambda!415587 lambda!415522)))

(assert (=> d!2196070 true))

(assert (=> d!2196070 (= (derivationStepZipper!2928 lt!2520793 (h!74269 s!7408)) (flatMap!2419 lt!2520793 lambda!415587))))

(declare-fun bs!1872033 () Bool)

(assert (= bs!1872033 d!2196070))

(declare-fun m!7745206 () Bool)

(assert (=> bs!1872033 m!7745206))

(assert (=> b!7036156 d!2196070))

(assert (=> b!7036156 d!2196056))

(declare-fun d!2196072 () Bool)

(declare-fun choose!53329 ((Set Context!12936) Int) (Set Context!12936))

(assert (=> d!2196072 (= (flatMap!2419 lt!2520793 lambda!415522) (choose!53329 lt!2520793 lambda!415522))))

(declare-fun bs!1872034 () Bool)

(assert (= bs!1872034 d!2196072))

(declare-fun m!7745208 () Bool)

(assert (=> bs!1872034 m!7745208))

(assert (=> b!7036156 d!2196072))

(declare-fun bs!1872035 () Bool)

(declare-fun d!2196074 () Bool)

(assert (= bs!1872035 (and d!2196074 b!7036143)))

(declare-fun lambda!415588 () Int)

(assert (=> bs!1872035 (= lambda!415588 lambda!415522)))

(declare-fun bs!1872036 () Bool)

(assert (= bs!1872036 (and d!2196074 d!2196070)))

(assert (=> bs!1872036 (= lambda!415588 lambda!415587)))

(assert (=> d!2196074 true))

(assert (=> d!2196074 (= (derivationStepZipper!2928 lt!2520822 (h!74269 s!7408)) (flatMap!2419 lt!2520822 lambda!415588))))

(declare-fun bs!1872037 () Bool)

(assert (= bs!1872037 d!2196074))

(declare-fun m!7745210 () Bool)

(assert (=> bs!1872037 m!7745210))

(assert (=> b!7036137 d!2196074))

(declare-fun d!2196076 () Bool)

(declare-fun c!1309180 () Bool)

(declare-fun e!4229923 () Bool)

(assert (=> d!2196076 (= c!1309180 e!4229923)))

(declare-fun res!2872398 () Bool)

(assert (=> d!2196076 (=> (not res!2872398) (not e!4229923))))

(assert (=> d!2196076 (= res!2872398 (is-Cons!67820 (exprs!6968 lt!2520817)))))

(declare-fun e!4229925 () (Set Context!12936))

(assert (=> d!2196076 (= (derivationStepZipperUp!2082 lt!2520817 (h!74269 s!7408)) e!4229925)))

(declare-fun b!7036296 () Bool)

(assert (=> b!7036296 (= e!4229923 (nullable!7183 (h!74268 (exprs!6968 lt!2520817))))))

(declare-fun b!7036297 () Bool)

(declare-fun e!4229924 () (Set Context!12936))

(assert (=> b!7036297 (= e!4229924 (as set.empty (Set Context!12936)))))

(declare-fun b!7036298 () Bool)

(declare-fun call!638989 () (Set Context!12936))

(assert (=> b!7036298 (= e!4229924 call!638989)))

(declare-fun bm!638984 () Bool)

(assert (=> bm!638984 (= call!638989 (derivationStepZipperDown!2136 (h!74268 (exprs!6968 lt!2520817)) (Context!12937 (t!381713 (exprs!6968 lt!2520817))) (h!74269 s!7408)))))

(declare-fun b!7036299 () Bool)

(assert (=> b!7036299 (= e!4229925 (set.union call!638989 (derivationStepZipperUp!2082 (Context!12937 (t!381713 (exprs!6968 lt!2520817))) (h!74269 s!7408))))))

(declare-fun b!7036300 () Bool)

(assert (=> b!7036300 (= e!4229925 e!4229924)))

(declare-fun c!1309181 () Bool)

(assert (=> b!7036300 (= c!1309181 (is-Cons!67820 (exprs!6968 lt!2520817)))))

(assert (= (and d!2196076 res!2872398) b!7036296))

(assert (= (and d!2196076 c!1309180) b!7036299))

(assert (= (and d!2196076 (not c!1309180)) b!7036300))

(assert (= (and b!7036300 c!1309181) b!7036298))

(assert (= (and b!7036300 (not c!1309181)) b!7036297))

(assert (= (or b!7036299 b!7036298) bm!638984))

(assert (=> b!7036296 m!7744896))

(declare-fun m!7745212 () Bool)

(assert (=> bm!638984 m!7745212))

(declare-fun m!7745214 () Bool)

(assert (=> b!7036299 m!7745214))

(assert (=> b!7036137 d!2196076))

(declare-fun d!2196078 () Bool)

(assert (=> d!2196078 (= (flatMap!2419 lt!2520822 lambda!415522) (choose!53329 lt!2520822 lambda!415522))))

(declare-fun bs!1872038 () Bool)

(assert (= bs!1872038 d!2196078))

(declare-fun m!7745216 () Bool)

(assert (=> bs!1872038 m!7745216))

(assert (=> b!7036137 d!2196078))

(declare-fun d!2196080 () Bool)

(assert (=> d!2196080 (= (flatMap!2419 lt!2520822 lambda!415522) (dynLambda!27405 lambda!415522 lt!2520817))))

(declare-fun lt!2521046 () Unit!161622)

(assert (=> d!2196080 (= lt!2521046 (choose!53328 lt!2520822 lt!2520817 lambda!415522))))

(assert (=> d!2196080 (= lt!2520822 (set.insert lt!2520817 (as set.empty (Set Context!12936))))))

(assert (=> d!2196080 (= (lemmaFlatMapOnSingletonSet!1933 lt!2520822 lt!2520817 lambda!415522) lt!2521046)))

(declare-fun b_lambda!266893 () Bool)

(assert (=> (not b_lambda!266893) (not d!2196080)))

(declare-fun bs!1872039 () Bool)

(assert (= bs!1872039 d!2196080))

(assert (=> bs!1872039 m!7744902))

(declare-fun m!7745218 () Bool)

(assert (=> bs!1872039 m!7745218))

(declare-fun m!7745220 () Bool)

(assert (=> bs!1872039 m!7745220))

(assert (=> bs!1872039 m!7744906))

(assert (=> b!7036137 d!2196080))

(declare-fun d!2196082 () Bool)

(declare-fun lt!2521049 () Int)

(assert (=> d!2196082 (>= lt!2521049 0)))

(declare-fun e!4229928 () Int)

(assert (=> d!2196082 (= lt!2521049 e!4229928)))

(declare-fun c!1309184 () Bool)

(assert (=> d!2196082 (= c!1309184 (is-Cons!67822 (Cons!67822 lt!2520844 Nil!67822)))))

(assert (=> d!2196082 (= (zipperDepthTotal!535 (Cons!67822 lt!2520844 Nil!67822)) lt!2521049)))

(declare-fun b!7036305 () Bool)

(assert (=> b!7036305 (= e!4229928 (+ (contextDepthTotal!507 (h!74270 (Cons!67822 lt!2520844 Nil!67822))) (zipperDepthTotal!535 (t!381715 (Cons!67822 lt!2520844 Nil!67822)))))))

(declare-fun b!7036306 () Bool)

(assert (=> b!7036306 (= e!4229928 0)))

(assert (= (and d!2196082 c!1309184) b!7036305))

(assert (= (and d!2196082 (not c!1309184)) b!7036306))

(declare-fun m!7745222 () Bool)

(assert (=> b!7036305 m!7745222))

(declare-fun m!7745224 () Bool)

(assert (=> b!7036305 m!7745224))

(assert (=> b!7036138 d!2196082))

(declare-fun bs!1872040 () Bool)

(declare-fun d!2196084 () Bool)

(assert (= bs!1872040 (and d!2196084 b!7036157)))

(declare-fun lambda!415591 () Int)

(assert (=> bs!1872040 (= lambda!415591 lambda!415519)))

(assert (=> d!2196084 true))

(assert (=> d!2196084 (exists!3405 lt!2520811 lambda!415591)))

(declare-fun lt!2521052 () Unit!161622)

(declare-fun choose!53330 (List!67946 List!67945) Unit!161622)

(assert (=> d!2196084 (= lt!2521052 (choose!53330 lt!2520811 s!7408))))

(declare-fun content!13550 (List!67946) (Set Context!12936))

(assert (=> d!2196084 (matchZipper!3012 (content!13550 lt!2520811) s!7408)))

(assert (=> d!2196084 (= (lemmaZipperMatchesExistsMatchingContext!411 lt!2520811 s!7408) lt!2521052)))

(declare-fun bs!1872041 () Bool)

(assert (= bs!1872041 d!2196084))

(declare-fun m!7745226 () Bool)

(assert (=> bs!1872041 m!7745226))

(declare-fun m!7745228 () Bool)

(assert (=> bs!1872041 m!7745228))

(declare-fun m!7745230 () Bool)

(assert (=> bs!1872041 m!7745230))

(assert (=> bs!1872041 m!7745230))

(declare-fun m!7745232 () Bool)

(assert (=> bs!1872041 m!7745232))

(assert (=> b!7036157 d!2196084))

(declare-fun d!2196086 () Bool)

(declare-fun e!4229931 () Bool)

(assert (=> d!2196086 e!4229931))

(declare-fun res!2872401 () Bool)

(assert (=> d!2196086 (=> (not res!2872401) (not e!4229931))))

(declare-fun lt!2521055 () List!67946)

(declare-fun noDuplicate!2633 (List!67946) Bool)

(assert (=> d!2196086 (= res!2872401 (noDuplicate!2633 lt!2521055))))

(declare-fun choose!53331 ((Set Context!12936)) List!67946)

(assert (=> d!2196086 (= lt!2521055 (choose!53331 lt!2520837))))

(assert (=> d!2196086 (= (toList!10815 lt!2520837) lt!2521055)))

(declare-fun b!7036309 () Bool)

(assert (=> b!7036309 (= e!4229931 (= (content!13550 lt!2521055) lt!2520837))))

(assert (= (and d!2196086 res!2872401) b!7036309))

(declare-fun m!7745234 () Bool)

(assert (=> d!2196086 m!7745234))

(declare-fun m!7745236 () Bool)

(assert (=> d!2196086 m!7745236))

(declare-fun m!7745238 () Bool)

(assert (=> b!7036309 m!7745238))

(assert (=> b!7036157 d!2196086))

(declare-fun bs!1872042 () Bool)

(declare-fun d!2196088 () Bool)

(assert (= bs!1872042 (and d!2196088 b!7036157)))

(declare-fun lambda!415594 () Int)

(assert (=> bs!1872042 (not (= lambda!415594 lambda!415519))))

(declare-fun bs!1872043 () Bool)

(assert (= bs!1872043 (and d!2196088 d!2196084)))

(assert (=> bs!1872043 (not (= lambda!415594 lambda!415591))))

(assert (=> d!2196088 true))

(declare-fun order!28185 () Int)

(declare-fun dynLambda!27406 (Int Int) Int)

(assert (=> d!2196088 (< (dynLambda!27406 order!28185 lambda!415519) (dynLambda!27406 order!28185 lambda!415594))))

(declare-fun forall!16390 (List!67946 Int) Bool)

(assert (=> d!2196088 (= (exists!3405 lt!2520811 lambda!415519) (not (forall!16390 lt!2520811 lambda!415594)))))

(declare-fun bs!1872044 () Bool)

(assert (= bs!1872044 d!2196088))

(declare-fun m!7745240 () Bool)

(assert (=> bs!1872044 m!7745240))

(assert (=> b!7036157 d!2196088))

(declare-fun d!2196090 () Bool)

(declare-fun c!1309187 () Bool)

(assert (=> d!2196090 (= c!1309187 (isEmpty!39563 s!7408))))

(declare-fun e!4229932 () Bool)

(assert (=> d!2196090 (= (matchZipper!3012 lt!2520833 s!7408) e!4229932)))

(declare-fun b!7036312 () Bool)

(assert (=> b!7036312 (= e!4229932 (nullableZipper!2585 lt!2520833))))

(declare-fun b!7036313 () Bool)

(assert (=> b!7036313 (= e!4229932 (matchZipper!3012 (derivationStepZipper!2928 lt!2520833 (head!14272 s!7408)) (tail!13565 s!7408)))))

(assert (= (and d!2196090 c!1309187) b!7036312))

(assert (= (and d!2196090 (not c!1309187)) b!7036313))

(assert (=> d!2196090 m!7745150))

(declare-fun m!7745242 () Bool)

(assert (=> b!7036312 m!7745242))

(assert (=> b!7036313 m!7745154))

(assert (=> b!7036313 m!7745154))

(declare-fun m!7745244 () Bool)

(assert (=> b!7036313 m!7745244))

(assert (=> b!7036313 m!7745158))

(assert (=> b!7036313 m!7745244))

(assert (=> b!7036313 m!7745158))

(declare-fun m!7745246 () Bool)

(assert (=> b!7036313 m!7745246))

(assert (=> b!7036157 d!2196090))

(declare-fun d!2196092 () Bool)

(declare-fun e!4229935 () Bool)

(assert (=> d!2196092 e!4229935))

(declare-fun res!2872404 () Bool)

(assert (=> d!2196092 (=> (not res!2872404) (not e!4229935))))

(declare-fun lt!2521058 () Context!12936)

(declare-fun dynLambda!27407 (Int Context!12936) Bool)

(assert (=> d!2196092 (= res!2872404 (dynLambda!27407 lambda!415519 lt!2521058))))

(declare-fun getWitness!1486 (List!67946 Int) Context!12936)

(assert (=> d!2196092 (= lt!2521058 (getWitness!1486 (toList!10815 lt!2520837) lambda!415519))))

(declare-fun exists!3407 ((Set Context!12936) Int) Bool)

(assert (=> d!2196092 (exists!3407 lt!2520837 lambda!415519)))

(assert (=> d!2196092 (= (getWitness!1484 lt!2520837 lambda!415519) lt!2521058)))

(declare-fun b!7036316 () Bool)

(assert (=> b!7036316 (= e!4229935 (set.member lt!2521058 lt!2520837))))

(assert (= (and d!2196092 res!2872404) b!7036316))

(declare-fun b_lambda!266895 () Bool)

(assert (=> (not b_lambda!266895) (not d!2196092)))

(declare-fun m!7745248 () Bool)

(assert (=> d!2196092 m!7745248))

(assert (=> d!2196092 m!7744932))

(assert (=> d!2196092 m!7744932))

(declare-fun m!7745250 () Bool)

(assert (=> d!2196092 m!7745250))

(declare-fun m!7745252 () Bool)

(assert (=> d!2196092 m!7745252))

(declare-fun m!7745254 () Bool)

(assert (=> b!7036316 m!7745254))

(assert (=> b!7036157 d!2196092))

(declare-fun d!2196094 () Bool)

(declare-fun c!1309188 () Bool)

(assert (=> d!2196094 (= c!1309188 (isEmpty!39563 lt!2520827))))

(declare-fun e!4229936 () Bool)

(assert (=> d!2196094 (= (matchZipper!3012 lt!2520848 lt!2520827) e!4229936)))

(declare-fun b!7036317 () Bool)

(assert (=> b!7036317 (= e!4229936 (nullableZipper!2585 lt!2520848))))

(declare-fun b!7036318 () Bool)

(assert (=> b!7036318 (= e!4229936 (matchZipper!3012 (derivationStepZipper!2928 lt!2520848 (head!14272 lt!2520827)) (tail!13565 lt!2520827)))))

(assert (= (and d!2196094 c!1309188) b!7036317))

(assert (= (and d!2196094 (not c!1309188)) b!7036318))

(declare-fun m!7745256 () Bool)

(assert (=> d!2196094 m!7745256))

(declare-fun m!7745258 () Bool)

(assert (=> b!7036317 m!7745258))

(declare-fun m!7745260 () Bool)

(assert (=> b!7036318 m!7745260))

(assert (=> b!7036318 m!7745260))

(declare-fun m!7745262 () Bool)

(assert (=> b!7036318 m!7745262))

(declare-fun m!7745264 () Bool)

(assert (=> b!7036318 m!7745264))

(assert (=> b!7036318 m!7745262))

(assert (=> b!7036318 m!7745264))

(declare-fun m!7745266 () Bool)

(assert (=> b!7036318 m!7745266))

(assert (=> b!7036158 d!2196094))

(assert (=> b!7036139 d!2196094))

(declare-fun d!2196096 () Bool)

(assert (=> d!2196096 (forall!16389 (++!15524 (exprs!6968 lt!2520817) (exprs!6968 ct2!306)) lambda!415521)))

(declare-fun lt!2521059 () Unit!161622)

(assert (=> d!2196096 (= lt!2521059 (choose!53326 (exprs!6968 lt!2520817) (exprs!6968 ct2!306) lambda!415521))))

(assert (=> d!2196096 (forall!16389 (exprs!6968 lt!2520817) lambda!415521)))

(assert (=> d!2196096 (= (lemmaConcatPreservesForall!793 (exprs!6968 lt!2520817) (exprs!6968 ct2!306) lambda!415521) lt!2521059)))

(declare-fun bs!1872045 () Bool)

(assert (= bs!1872045 d!2196096))

(assert (=> bs!1872045 m!7744878))

(assert (=> bs!1872045 m!7744878))

(declare-fun m!7745268 () Bool)

(assert (=> bs!1872045 m!7745268))

(declare-fun m!7745270 () Bool)

(assert (=> bs!1872045 m!7745270))

(declare-fun m!7745272 () Bool)

(assert (=> bs!1872045 m!7745272))

(assert (=> b!7036150 d!2196096))

(declare-fun d!2196098 () Bool)

(declare-fun lt!2521060 () Int)

(assert (=> d!2196098 (>= lt!2521060 0)))

(declare-fun e!4229937 () Int)

(assert (=> d!2196098 (= lt!2521060 e!4229937)))

(declare-fun c!1309189 () Bool)

(assert (=> d!2196098 (= c!1309189 (is-Cons!67822 lt!2520821))))

(assert (=> d!2196098 (= (zipperDepthTotal!535 lt!2520821) lt!2521060)))

(declare-fun b!7036319 () Bool)

(assert (=> b!7036319 (= e!4229937 (+ (contextDepthTotal!507 (h!74270 lt!2520821)) (zipperDepthTotal!535 (t!381715 lt!2520821))))))

(declare-fun b!7036320 () Bool)

(assert (=> b!7036320 (= e!4229937 0)))

(assert (= (and d!2196098 c!1309189) b!7036319))

(assert (= (and d!2196098 (not c!1309189)) b!7036320))

(declare-fun m!7745274 () Bool)

(assert (=> b!7036319 m!7745274))

(declare-fun m!7745276 () Bool)

(assert (=> b!7036319 m!7745276))

(assert (=> b!7036131 d!2196098))

(declare-fun d!2196100 () Bool)

(declare-fun dynLambda!27408 (Int Context!12936) Context!12936)

(assert (=> d!2196100 (= (map!15776 lt!2520803 lambda!415520) (set.insert (dynLambda!27408 lambda!415520 lt!2520844) (as set.empty (Set Context!12936))))))

(declare-fun lt!2521063 () Unit!161622)

(declare-fun choose!53332 ((Set Context!12936) Context!12936 Int) Unit!161622)

(assert (=> d!2196100 (= lt!2521063 (choose!53332 lt!2520803 lt!2520844 lambda!415520))))

(assert (=> d!2196100 (= lt!2520803 (set.insert lt!2520844 (as set.empty (Set Context!12936))))))

(assert (=> d!2196100 (= (lemmaMapOnSingletonSet!383 lt!2520803 lt!2520844 lambda!415520) lt!2521063)))

(declare-fun b_lambda!266897 () Bool)

(assert (=> (not b_lambda!266897) (not d!2196100)))

(declare-fun bs!1872046 () Bool)

(assert (= bs!1872046 d!2196100))

(assert (=> bs!1872046 m!7744968))

(declare-fun m!7745278 () Bool)

(assert (=> bs!1872046 m!7745278))

(declare-fun m!7745280 () Bool)

(assert (=> bs!1872046 m!7745280))

(assert (=> bs!1872046 m!7744956))

(assert (=> bs!1872046 m!7745278))

(declare-fun m!7745282 () Bool)

(assert (=> bs!1872046 m!7745282))

(assert (=> b!7036131 d!2196100))

(declare-fun d!2196102 () Bool)

(declare-fun c!1309190 () Bool)

(declare-fun e!4229938 () Bool)

(assert (=> d!2196102 (= c!1309190 e!4229938)))

(declare-fun res!2872405 () Bool)

(assert (=> d!2196102 (=> (not res!2872405) (not e!4229938))))

(assert (=> d!2196102 (= res!2872405 (is-Cons!67820 (exprs!6968 lt!2520844)))))

(declare-fun e!4229940 () (Set Context!12936))

(assert (=> d!2196102 (= (derivationStepZipperUp!2082 lt!2520844 (h!74269 s!7408)) e!4229940)))

(declare-fun b!7036321 () Bool)

(assert (=> b!7036321 (= e!4229938 (nullable!7183 (h!74268 (exprs!6968 lt!2520844))))))

(declare-fun b!7036322 () Bool)

(declare-fun e!4229939 () (Set Context!12936))

(assert (=> b!7036322 (= e!4229939 (as set.empty (Set Context!12936)))))

(declare-fun b!7036323 () Bool)

(declare-fun call!638990 () (Set Context!12936))

(assert (=> b!7036323 (= e!4229939 call!638990)))

(declare-fun bm!638985 () Bool)

(assert (=> bm!638985 (= call!638990 (derivationStepZipperDown!2136 (h!74268 (exprs!6968 lt!2520844)) (Context!12937 (t!381713 (exprs!6968 lt!2520844))) (h!74269 s!7408)))))

(declare-fun b!7036324 () Bool)

(assert (=> b!7036324 (= e!4229940 (set.union call!638990 (derivationStepZipperUp!2082 (Context!12937 (t!381713 (exprs!6968 lt!2520844))) (h!74269 s!7408))))))

(declare-fun b!7036325 () Bool)

(assert (=> b!7036325 (= e!4229940 e!4229939)))

(declare-fun c!1309191 () Bool)

(assert (=> b!7036325 (= c!1309191 (is-Cons!67820 (exprs!6968 lt!2520844)))))

(assert (= (and d!2196102 res!2872405) b!7036321))

(assert (= (and d!2196102 c!1309190) b!7036324))

(assert (= (and d!2196102 (not c!1309190)) b!7036325))

(assert (= (and b!7036325 c!1309191) b!7036323))

(assert (= (and b!7036325 (not c!1309191)) b!7036322))

(assert (= (or b!7036324 b!7036323) bm!638985))

(declare-fun m!7745284 () Bool)

(assert (=> b!7036321 m!7745284))

(declare-fun m!7745286 () Bool)

(assert (=> bm!638985 m!7745286))

(declare-fun m!7745288 () Bool)

(assert (=> b!7036324 m!7745288))

(assert (=> b!7036131 d!2196102))

(declare-fun d!2196104 () Bool)

(assert (=> d!2196104 (<= (contextDepthTotal!507 lt!2520817) (zipperDepthTotal!535 lt!2520821))))

(declare-fun lt!2521066 () Unit!161622)

(declare-fun choose!53333 (List!67946 Context!12936) Unit!161622)

(assert (=> d!2196104 (= lt!2521066 (choose!53333 lt!2520821 lt!2520817))))

(declare-fun contains!20462 (List!67946 Context!12936) Bool)

(assert (=> d!2196104 (contains!20462 lt!2520821 lt!2520817)))

(assert (=> d!2196104 (= (lemmaTotalDepthZipperLargerThanOfAnyContext!75 lt!2520821 lt!2520817) lt!2521066)))

(declare-fun bs!1872047 () Bool)

(assert (= bs!1872047 d!2196104))

(assert (=> bs!1872047 m!7744958))

(assert (=> bs!1872047 m!7744970))

(declare-fun m!7745290 () Bool)

(assert (=> bs!1872047 m!7745290))

(declare-fun m!7745292 () Bool)

(assert (=> bs!1872047 m!7745292))

(assert (=> b!7036131 d!2196104))

(declare-fun d!2196106 () Bool)

(assert (=> d!2196106 (= (flatMap!2419 lt!2520803 lambda!415522) (choose!53329 lt!2520803 lambda!415522))))

(declare-fun bs!1872048 () Bool)

(assert (= bs!1872048 d!2196106))

(declare-fun m!7745294 () Bool)

(assert (=> bs!1872048 m!7745294))

(assert (=> b!7036131 d!2196106))

(declare-fun b!7036336 () Bool)

(declare-fun res!2872410 () Bool)

(declare-fun e!4229946 () Bool)

(assert (=> b!7036336 (=> (not res!2872410) (not e!4229946))))

(declare-fun lt!2521069 () List!67944)

(declare-fun size!41074 (List!67944) Int)

(assert (=> b!7036336 (= res!2872410 (= (size!41074 lt!2521069) (+ (size!41074 lt!2520840) (size!41074 (exprs!6968 ct2!306)))))))

(declare-fun b!7036337 () Bool)

(assert (=> b!7036337 (= e!4229946 (or (not (= (exprs!6968 ct2!306) Nil!67820)) (= lt!2521069 lt!2520840)))))

(declare-fun b!7036335 () Bool)

(declare-fun e!4229945 () List!67944)

(assert (=> b!7036335 (= e!4229945 (Cons!67820 (h!74268 lt!2520840) (++!15524 (t!381713 lt!2520840) (exprs!6968 ct2!306))))))

(declare-fun b!7036334 () Bool)

(assert (=> b!7036334 (= e!4229945 (exprs!6968 ct2!306))))

(declare-fun d!2196108 () Bool)

(assert (=> d!2196108 e!4229946))

(declare-fun res!2872411 () Bool)

(assert (=> d!2196108 (=> (not res!2872411) (not e!4229946))))

(declare-fun content!13551 (List!67944) (Set Regex!17472))

(assert (=> d!2196108 (= res!2872411 (= (content!13551 lt!2521069) (set.union (content!13551 lt!2520840) (content!13551 (exprs!6968 ct2!306)))))))

(assert (=> d!2196108 (= lt!2521069 e!4229945)))

(declare-fun c!1309195 () Bool)

(assert (=> d!2196108 (= c!1309195 (is-Nil!67820 lt!2520840))))

(assert (=> d!2196108 (= (++!15524 lt!2520840 (exprs!6968 ct2!306)) lt!2521069)))

(assert (= (and d!2196108 c!1309195) b!7036334))

(assert (= (and d!2196108 (not c!1309195)) b!7036335))

(assert (= (and d!2196108 res!2872411) b!7036336))

(assert (= (and b!7036336 res!2872410) b!7036337))

(declare-fun m!7745296 () Bool)

(assert (=> b!7036336 m!7745296))

(declare-fun m!7745298 () Bool)

(assert (=> b!7036336 m!7745298))

(declare-fun m!7745300 () Bool)

(assert (=> b!7036336 m!7745300))

(declare-fun m!7745302 () Bool)

(assert (=> b!7036335 m!7745302))

(declare-fun m!7745304 () Bool)

(assert (=> d!2196108 m!7745304))

(declare-fun m!7745306 () Bool)

(assert (=> d!2196108 m!7745306))

(declare-fun m!7745308 () Bool)

(assert (=> d!2196108 m!7745308))

(assert (=> b!7036131 d!2196108))

(assert (=> b!7036131 d!2196056))

(declare-fun d!2196110 () Bool)

(declare-fun lt!2521072 () Int)

(assert (=> d!2196110 (>= lt!2521072 0)))

(declare-fun e!4229949 () Int)

(assert (=> d!2196110 (= lt!2521072 e!4229949)))

(declare-fun c!1309199 () Bool)

(assert (=> d!2196110 (= c!1309199 (is-Cons!67820 (exprs!6968 lt!2520817)))))

(assert (=> d!2196110 (= (contextDepthTotal!507 lt!2520817) lt!2521072)))

(declare-fun b!7036342 () Bool)

(declare-fun regexDepthTotal!308 (Regex!17472) Int)

(assert (=> b!7036342 (= e!4229949 (+ (regexDepthTotal!308 (h!74268 (exprs!6968 lt!2520817))) (contextDepthTotal!507 (Context!12937 (t!381713 (exprs!6968 lt!2520817))))))))

(declare-fun b!7036343 () Bool)

(assert (=> b!7036343 (= e!4229949 1)))

(assert (= (and d!2196110 c!1309199) b!7036342))

(assert (= (and d!2196110 (not c!1309199)) b!7036343))

(declare-fun m!7745310 () Bool)

(assert (=> b!7036342 m!7745310))

(declare-fun m!7745312 () Bool)

(assert (=> b!7036342 m!7745312))

(assert (=> b!7036131 d!2196110))

(declare-fun d!2196112 () Bool)

(declare-fun e!4229950 () Bool)

(assert (=> d!2196112 e!4229950))

(declare-fun res!2872412 () Bool)

(assert (=> d!2196112 (=> (not res!2872412) (not e!4229950))))

(declare-fun lt!2521073 () List!67946)

(assert (=> d!2196112 (= res!2872412 (noDuplicate!2633 lt!2521073))))

(assert (=> d!2196112 (= lt!2521073 (choose!53331 z1!570))))

(assert (=> d!2196112 (= (toList!10815 z1!570) lt!2521073)))

(declare-fun b!7036344 () Bool)

(assert (=> b!7036344 (= e!4229950 (= (content!13550 lt!2521073) z1!570))))

(assert (= (and d!2196112 res!2872412) b!7036344))

(declare-fun m!7745314 () Bool)

(assert (=> d!2196112 m!7745314))

(declare-fun m!7745316 () Bool)

(assert (=> d!2196112 m!7745316))

(declare-fun m!7745318 () Bool)

(assert (=> b!7036344 m!7745318))

(assert (=> b!7036131 d!2196112))

(declare-fun d!2196114 () Bool)

(assert (=> d!2196114 (= (flatMap!2419 lt!2520803 lambda!415522) (dynLambda!27405 lambda!415522 lt!2520844))))

(declare-fun lt!2521074 () Unit!161622)

(assert (=> d!2196114 (= lt!2521074 (choose!53328 lt!2520803 lt!2520844 lambda!415522))))

(assert (=> d!2196114 (= lt!2520803 (set.insert lt!2520844 (as set.empty (Set Context!12936))))))

(assert (=> d!2196114 (= (lemmaFlatMapOnSingletonSet!1933 lt!2520803 lt!2520844 lambda!415522) lt!2521074)))

(declare-fun b_lambda!266899 () Bool)

(assert (=> (not b_lambda!266899) (not d!2196114)))

(declare-fun bs!1872049 () Bool)

(assert (= bs!1872049 d!2196114))

(assert (=> bs!1872049 m!7744960))

(declare-fun m!7745320 () Bool)

(assert (=> bs!1872049 m!7745320))

(declare-fun m!7745322 () Bool)

(assert (=> bs!1872049 m!7745322))

(assert (=> bs!1872049 m!7744956))

(assert (=> b!7036131 d!2196114))

(declare-fun d!2196116 () Bool)

(declare-fun lt!2521075 () Int)

(assert (=> d!2196116 (>= lt!2521075 0)))

(declare-fun e!4229951 () Int)

(assert (=> d!2196116 (= lt!2521075 e!4229951)))

(declare-fun c!1309200 () Bool)

(assert (=> d!2196116 (= c!1309200 (is-Cons!67820 (exprs!6968 lt!2520844)))))

(assert (=> d!2196116 (= (contextDepthTotal!507 lt!2520844) lt!2521075)))

(declare-fun b!7036345 () Bool)

(assert (=> b!7036345 (= e!4229951 (+ (regexDepthTotal!308 (h!74268 (exprs!6968 lt!2520844))) (contextDepthTotal!507 (Context!12937 (t!381713 (exprs!6968 lt!2520844))))))))

(declare-fun b!7036346 () Bool)

(assert (=> b!7036346 (= e!4229951 1)))

(assert (= (and d!2196116 c!1309200) b!7036345))

(assert (= (and d!2196116 (not c!1309200)) b!7036346))

(declare-fun m!7745324 () Bool)

(assert (=> b!7036345 m!7745324))

(declare-fun m!7745326 () Bool)

(assert (=> b!7036345 m!7745326))

(assert (=> b!7036131 d!2196116))

(declare-fun d!2196118 () Bool)

(declare-fun choose!53334 ((Set Context!12936) Int) (Set Context!12936))

(assert (=> d!2196118 (= (map!15776 lt!2520803 lambda!415520) (choose!53334 lt!2520803 lambda!415520))))

(declare-fun bs!1872050 () Bool)

(assert (= bs!1872050 d!2196118))

(declare-fun m!7745328 () Bool)

(assert (=> bs!1872050 m!7745328))

(assert (=> b!7036131 d!2196118))

(declare-fun d!2196120 () Bool)

(assert (=> d!2196120 (= (tail!13565 (_1!37348 lt!2520831)) (t!381714 (_1!37348 lt!2520831)))))

(assert (=> b!7036132 d!2196120))

(declare-fun e!4229952 () Bool)

(declare-fun d!2196122 () Bool)

(assert (=> d!2196122 (= (matchZipper!3012 (set.union lt!2520794 lt!2520848) lt!2520827) e!4229952)))

(declare-fun res!2872413 () Bool)

(assert (=> d!2196122 (=> res!2872413 e!4229952)))

(assert (=> d!2196122 (= res!2872413 (matchZipper!3012 lt!2520794 lt!2520827))))

(declare-fun lt!2521076 () Unit!161622)

(assert (=> d!2196122 (= lt!2521076 (choose!53327 lt!2520794 lt!2520848 lt!2520827))))

(assert (=> d!2196122 (= (lemmaZipperConcatMatchesSameAsBothZippers!1545 lt!2520794 lt!2520848 lt!2520827) lt!2521076)))

(declare-fun b!7036347 () Bool)

(assert (=> b!7036347 (= e!4229952 (matchZipper!3012 lt!2520848 lt!2520827))))

(assert (= (and d!2196122 (not res!2872413)) b!7036347))

(declare-fun m!7745330 () Bool)

(assert (=> d!2196122 m!7745330))

(assert (=> d!2196122 m!7744990))

(declare-fun m!7745332 () Bool)

(assert (=> d!2196122 m!7745332))

(assert (=> b!7036347 m!7744874))

(assert (=> b!7036132 d!2196122))

(declare-fun d!2196124 () Bool)

(declare-fun c!1309201 () Bool)

(assert (=> d!2196124 (= c!1309201 (isEmpty!39563 lt!2520827))))

(declare-fun e!4229953 () Bool)

(assert (=> d!2196124 (= (matchZipper!3012 lt!2520820 lt!2520827) e!4229953)))

(declare-fun b!7036348 () Bool)

(assert (=> b!7036348 (= e!4229953 (nullableZipper!2585 lt!2520820))))

(declare-fun b!7036349 () Bool)

(assert (=> b!7036349 (= e!4229953 (matchZipper!3012 (derivationStepZipper!2928 lt!2520820 (head!14272 lt!2520827)) (tail!13565 lt!2520827)))))

(assert (= (and d!2196124 c!1309201) b!7036348))

(assert (= (and d!2196124 (not c!1309201)) b!7036349))

(assert (=> d!2196124 m!7745256))

(declare-fun m!7745334 () Bool)

(assert (=> b!7036348 m!7745334))

(assert (=> b!7036349 m!7745260))

(assert (=> b!7036349 m!7745260))

(declare-fun m!7745336 () Bool)

(assert (=> b!7036349 m!7745336))

(assert (=> b!7036349 m!7745264))

(assert (=> b!7036349 m!7745336))

(assert (=> b!7036349 m!7745264))

(declare-fun m!7745338 () Bool)

(assert (=> b!7036349 m!7745338))

(assert (=> b!7036132 d!2196124))

(declare-fun d!2196126 () Bool)

(declare-fun c!1309202 () Bool)

(assert (=> d!2196126 (= c!1309202 (isEmpty!39563 (_1!37348 lt!2520831)))))

(declare-fun e!4229954 () Bool)

(assert (=> d!2196126 (= (matchZipper!3012 lt!2520822 (_1!37348 lt!2520831)) e!4229954)))

(declare-fun b!7036350 () Bool)

(assert (=> b!7036350 (= e!4229954 (nullableZipper!2585 lt!2520822))))

(declare-fun b!7036351 () Bool)

(assert (=> b!7036351 (= e!4229954 (matchZipper!3012 (derivationStepZipper!2928 lt!2520822 (head!14272 (_1!37348 lt!2520831))) (tail!13565 (_1!37348 lt!2520831))))))

(assert (= (and d!2196126 c!1309202) b!7036350))

(assert (= (and d!2196126 (not c!1309202)) b!7036351))

(assert (=> d!2196126 m!7744910))

(declare-fun m!7745340 () Bool)

(assert (=> b!7036350 m!7745340))

(declare-fun m!7745342 () Bool)

(assert (=> b!7036351 m!7745342))

(assert (=> b!7036351 m!7745342))

(declare-fun m!7745344 () Bool)

(assert (=> b!7036351 m!7745344))

(assert (=> b!7036351 m!7744988))

(assert (=> b!7036351 m!7745344))

(assert (=> b!7036351 m!7744988))

(declare-fun m!7745346 () Bool)

(assert (=> b!7036351 m!7745346))

(assert (=> b!7036132 d!2196126))

(declare-fun d!2196128 () Bool)

(declare-fun c!1309203 () Bool)

(assert (=> d!2196128 (= c!1309203 (isEmpty!39563 lt!2520827))))

(declare-fun e!4229955 () Bool)

(assert (=> d!2196128 (= (matchZipper!3012 lt!2520794 lt!2520827) e!4229955)))

(declare-fun b!7036352 () Bool)

(assert (=> b!7036352 (= e!4229955 (nullableZipper!2585 lt!2520794))))

(declare-fun b!7036353 () Bool)

(assert (=> b!7036353 (= e!4229955 (matchZipper!3012 (derivationStepZipper!2928 lt!2520794 (head!14272 lt!2520827)) (tail!13565 lt!2520827)))))

(assert (= (and d!2196128 c!1309203) b!7036352))

(assert (= (and d!2196128 (not c!1309203)) b!7036353))

(assert (=> d!2196128 m!7745256))

(declare-fun m!7745348 () Bool)

(assert (=> b!7036352 m!7745348))

(assert (=> b!7036353 m!7745260))

(assert (=> b!7036353 m!7745260))

(declare-fun m!7745350 () Bool)

(assert (=> b!7036353 m!7745350))

(assert (=> b!7036353 m!7745264))

(assert (=> b!7036353 m!7745350))

(assert (=> b!7036353 m!7745264))

(declare-fun m!7745352 () Bool)

(assert (=> b!7036353 m!7745352))

(assert (=> b!7036132 d!2196128))

(declare-fun b!7036356 () Bool)

(declare-fun res!2872414 () Bool)

(declare-fun e!4229957 () Bool)

(assert (=> b!7036356 (=> (not res!2872414) (not e!4229957))))

(declare-fun lt!2521077 () List!67944)

(assert (=> b!7036356 (= res!2872414 (= (size!41074 lt!2521077) (+ (size!41074 (exprs!6968 lt!2520817)) (size!41074 (exprs!6968 ct2!306)))))))

(declare-fun b!7036357 () Bool)

(assert (=> b!7036357 (= e!4229957 (or (not (= (exprs!6968 ct2!306) Nil!67820)) (= lt!2521077 (exprs!6968 lt!2520817))))))

(declare-fun b!7036355 () Bool)

(declare-fun e!4229956 () List!67944)

(assert (=> b!7036355 (= e!4229956 (Cons!67820 (h!74268 (exprs!6968 lt!2520817)) (++!15524 (t!381713 (exprs!6968 lt!2520817)) (exprs!6968 ct2!306))))))

(declare-fun b!7036354 () Bool)

(assert (=> b!7036354 (= e!4229956 (exprs!6968 ct2!306))))

(declare-fun d!2196130 () Bool)

(assert (=> d!2196130 e!4229957))

(declare-fun res!2872415 () Bool)

(assert (=> d!2196130 (=> (not res!2872415) (not e!4229957))))

(assert (=> d!2196130 (= res!2872415 (= (content!13551 lt!2521077) (set.union (content!13551 (exprs!6968 lt!2520817)) (content!13551 (exprs!6968 ct2!306)))))))

(assert (=> d!2196130 (= lt!2521077 e!4229956)))

(declare-fun c!1309204 () Bool)

(assert (=> d!2196130 (= c!1309204 (is-Nil!67820 (exprs!6968 lt!2520817)))))

(assert (=> d!2196130 (= (++!15524 (exprs!6968 lt!2520817) (exprs!6968 ct2!306)) lt!2521077)))

(assert (= (and d!2196130 c!1309204) b!7036354))

(assert (= (and d!2196130 (not c!1309204)) b!7036355))

(assert (= (and d!2196130 res!2872415) b!7036356))

(assert (= (and b!7036356 res!2872414) b!7036357))

(declare-fun m!7745354 () Bool)

(assert (=> b!7036356 m!7745354))

(declare-fun m!7745356 () Bool)

(assert (=> b!7036356 m!7745356))

(assert (=> b!7036356 m!7745300))

(declare-fun m!7745358 () Bool)

(assert (=> b!7036355 m!7745358))

(declare-fun m!7745360 () Bool)

(assert (=> d!2196130 m!7745360))

(declare-fun m!7745362 () Bool)

(assert (=> d!2196130 m!7745362))

(assert (=> d!2196130 m!7745308))

(assert (=> b!7036151 d!2196130))

(assert (=> b!7036151 d!2196096))

(declare-fun d!2196132 () Bool)

(declare-fun e!4229960 () Bool)

(assert (=> d!2196132 e!4229960))

(declare-fun res!2872418 () Bool)

(assert (=> d!2196132 (=> (not res!2872418) (not e!4229960))))

(declare-fun lt!2521080 () Context!12936)

(assert (=> d!2196132 (= res!2872418 (= lt!2520830 (dynLambda!27408 lambda!415520 lt!2521080)))))

(declare-fun choose!53335 ((Set Context!12936) Int Context!12936) Context!12936)

(assert (=> d!2196132 (= lt!2521080 (choose!53335 z1!570 lambda!415520 lt!2520830))))

(assert (=> d!2196132 (set.member lt!2520830 (map!15776 z1!570 lambda!415520))))

(assert (=> d!2196132 (= (mapPost2!313 z1!570 lambda!415520 lt!2520830) lt!2521080)))

(declare-fun b!7036361 () Bool)

(assert (=> b!7036361 (= e!4229960 (set.member lt!2521080 z1!570))))

(assert (= (and d!2196132 res!2872418) b!7036361))

(declare-fun b_lambda!266901 () Bool)

(assert (=> (not b_lambda!266901) (not d!2196132)))

(declare-fun m!7745364 () Bool)

(assert (=> d!2196132 m!7745364))

(declare-fun m!7745366 () Bool)

(assert (=> d!2196132 m!7745366))

(declare-fun m!7745368 () Bool)

(assert (=> d!2196132 m!7745368))

(declare-fun m!7745370 () Bool)

(assert (=> d!2196132 m!7745370))

(declare-fun m!7745372 () Bool)

(assert (=> b!7036361 m!7745372))

(assert (=> b!7036151 d!2196132))

(declare-fun d!2196134 () Bool)

(declare-fun c!1309205 () Bool)

(assert (=> d!2196134 (= c!1309205 (isEmpty!39563 (t!381714 s!7408)))))

(declare-fun e!4229961 () Bool)

(assert (=> d!2196134 (= (matchZipper!3012 lt!2520800 (t!381714 s!7408)) e!4229961)))

(declare-fun b!7036362 () Bool)

(assert (=> b!7036362 (= e!4229961 (nullableZipper!2585 lt!2520800))))

(declare-fun b!7036363 () Bool)

(assert (=> b!7036363 (= e!4229961 (matchZipper!3012 (derivationStepZipper!2928 lt!2520800 (head!14272 (t!381714 s!7408))) (tail!13565 (t!381714 s!7408))))))

(assert (= (and d!2196134 c!1309205) b!7036362))

(assert (= (and d!2196134 (not c!1309205)) b!7036363))

(assert (=> d!2196134 m!7745168))

(declare-fun m!7745374 () Bool)

(assert (=> b!7036362 m!7745374))

(assert (=> b!7036363 m!7745172))

(assert (=> b!7036363 m!7745172))

(declare-fun m!7745376 () Bool)

(assert (=> b!7036363 m!7745376))

(assert (=> b!7036363 m!7745176))

(assert (=> b!7036363 m!7745376))

(assert (=> b!7036363 m!7745176))

(declare-fun m!7745378 () Bool)

(assert (=> b!7036363 m!7745378))

(assert (=> b!7036133 d!2196134))

(assert (=> b!7036133 d!2196056))

(assert (=> b!7036134 d!2196134))

(declare-fun b!7036374 () Bool)

(declare-fun res!2872424 () Bool)

(declare-fun e!4229967 () Bool)

(assert (=> b!7036374 (=> (not res!2872424) (not e!4229967))))

(declare-fun lt!2521083 () List!67945)

(declare-fun size!41075 (List!67945) Int)

(assert (=> b!7036374 (= res!2872424 (= (size!41075 lt!2521083) (+ (size!41075 (_1!37348 lt!2520831)) (size!41075 (_2!37348 lt!2520831)))))))

(declare-fun b!7036375 () Bool)

(assert (=> b!7036375 (= e!4229967 (or (not (= (_2!37348 lt!2520831) Nil!67821)) (= lt!2521083 (_1!37348 lt!2520831))))))

(declare-fun d!2196136 () Bool)

(assert (=> d!2196136 e!4229967))

(declare-fun res!2872423 () Bool)

(assert (=> d!2196136 (=> (not res!2872423) (not e!4229967))))

(declare-fun content!13552 (List!67945) (Set C!35214))

(assert (=> d!2196136 (= res!2872423 (= (content!13552 lt!2521083) (set.union (content!13552 (_1!37348 lt!2520831)) (content!13552 (_2!37348 lt!2520831)))))))

(declare-fun e!4229966 () List!67945)

(assert (=> d!2196136 (= lt!2521083 e!4229966)))

(declare-fun c!1309208 () Bool)

(assert (=> d!2196136 (= c!1309208 (is-Nil!67821 (_1!37348 lt!2520831)))))

(assert (=> d!2196136 (= (++!15525 (_1!37348 lt!2520831) (_2!37348 lt!2520831)) lt!2521083)))

(declare-fun b!7036372 () Bool)

(assert (=> b!7036372 (= e!4229966 (_2!37348 lt!2520831))))

(declare-fun b!7036373 () Bool)

(assert (=> b!7036373 (= e!4229966 (Cons!67821 (h!74269 (_1!37348 lt!2520831)) (++!15525 (t!381714 (_1!37348 lt!2520831)) (_2!37348 lt!2520831))))))

(assert (= (and d!2196136 c!1309208) b!7036372))

(assert (= (and d!2196136 (not c!1309208)) b!7036373))

(assert (= (and d!2196136 res!2872423) b!7036374))

(assert (= (and b!7036374 res!2872424) b!7036375))

(declare-fun m!7745380 () Bool)

(assert (=> b!7036374 m!7745380))

(declare-fun m!7745382 () Bool)

(assert (=> b!7036374 m!7745382))

(declare-fun m!7745384 () Bool)

(assert (=> b!7036374 m!7745384))

(declare-fun m!7745386 () Bool)

(assert (=> d!2196136 m!7745386))

(declare-fun m!7745388 () Bool)

(assert (=> d!2196136 m!7745388))

(declare-fun m!7745390 () Bool)

(assert (=> d!2196136 m!7745390))

(declare-fun m!7745392 () Bool)

(assert (=> b!7036373 m!7745392))

(assert (=> b!7036154 d!2196136))

(declare-fun bs!1872051 () Bool)

(declare-fun d!2196138 () Bool)

(assert (= bs!1872051 (and d!2196138 b!7036151)))

(declare-fun lambda!415597 () Int)

(assert (=> bs!1872051 (= lambda!415597 lambda!415521)))

(assert (=> d!2196138 (= (inv!86540 setElem!49235) (forall!16389 (exprs!6968 setElem!49235) lambda!415597))))

(declare-fun bs!1872052 () Bool)

(assert (= bs!1872052 d!2196138))

(declare-fun m!7745394 () Bool)

(assert (=> bs!1872052 m!7745394))

(assert (=> setNonEmpty!49235 d!2196138))

(declare-fun d!2196140 () Bool)

(declare-fun nullableFct!2733 (Regex!17472) Bool)

(assert (=> d!2196140 (= (nullable!7183 (h!74268 (exprs!6968 lt!2520817))) (nullableFct!2733 (h!74268 (exprs!6968 lt!2520817))))))

(declare-fun bs!1872053 () Bool)

(assert (= bs!1872053 d!2196140))

(declare-fun m!7745396 () Bool)

(assert (=> bs!1872053 m!7745396))

(assert (=> b!7036146 d!2196140))

(declare-fun d!2196142 () Bool)

(assert (=> d!2196142 (= (tail!13566 (exprs!6968 lt!2520817)) (t!381713 (exprs!6968 lt!2520817)))))

(assert (=> b!7036146 d!2196142))

(declare-fun d!2196144 () Bool)

(declare-fun isEmpty!39567 (Option!16877) Bool)

(assert (=> d!2196144 (= (isDefined!13578 lt!2520810) (not (isEmpty!39567 lt!2520810)))))

(declare-fun bs!1872054 () Bool)

(assert (= bs!1872054 d!2196144))

(declare-fun m!7745398 () Bool)

(assert (=> bs!1872054 m!7745398))

(assert (=> b!7036128 d!2196144))

(declare-fun b!7036394 () Bool)

(declare-fun e!4229981 () Bool)

(assert (=> b!7036394 (= e!4229981 (matchZipper!3012 lt!2520799 s!7408))))

(declare-fun b!7036395 () Bool)

(declare-fun res!2872436 () Bool)

(declare-fun e!4229982 () Bool)

(assert (=> b!7036395 (=> (not res!2872436) (not e!4229982))))

(declare-fun lt!2521091 () Option!16877)

(assert (=> b!7036395 (= res!2872436 (matchZipper!3012 lt!2520803 (_1!37348 (get!23764 lt!2521091))))))

(declare-fun b!7036396 () Bool)

(declare-fun lt!2521092 () Unit!161622)

(declare-fun lt!2521090 () Unit!161622)

(assert (=> b!7036396 (= lt!2521092 lt!2521090)))

(assert (=> b!7036396 (= (++!15525 (++!15525 Nil!67821 (Cons!67821 (h!74269 s!7408) Nil!67821)) (t!381714 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2929 (List!67945 C!35214 List!67945 List!67945) Unit!161622)

(assert (=> b!7036396 (= lt!2521090 (lemmaMoveElementToOtherListKeepsConcatEq!2929 Nil!67821 (h!74269 s!7408) (t!381714 s!7408) s!7408))))

(declare-fun e!4229980 () Option!16877)

(assert (=> b!7036396 (= e!4229980 (findConcatSeparationZippers!393 lt!2520803 lt!2520799 (++!15525 Nil!67821 (Cons!67821 (h!74269 s!7408) Nil!67821)) (t!381714 s!7408) s!7408))))

(declare-fun d!2196146 () Bool)

(declare-fun e!4229979 () Bool)

(assert (=> d!2196146 e!4229979))

(declare-fun res!2872439 () Bool)

(assert (=> d!2196146 (=> res!2872439 e!4229979)))

(assert (=> d!2196146 (= res!2872439 e!4229982)))

(declare-fun res!2872438 () Bool)

(assert (=> d!2196146 (=> (not res!2872438) (not e!4229982))))

(assert (=> d!2196146 (= res!2872438 (isDefined!13578 lt!2521091))))

(declare-fun e!4229978 () Option!16877)

(assert (=> d!2196146 (= lt!2521091 e!4229978)))

(declare-fun c!1309214 () Bool)

(assert (=> d!2196146 (= c!1309214 e!4229981)))

(declare-fun res!2872437 () Bool)

(assert (=> d!2196146 (=> (not res!2872437) (not e!4229981))))

(assert (=> d!2196146 (= res!2872437 (matchZipper!3012 lt!2520803 Nil!67821))))

(assert (=> d!2196146 (= (++!15525 Nil!67821 s!7408) s!7408)))

(assert (=> d!2196146 (= (findConcatSeparationZippers!393 lt!2520803 lt!2520799 Nil!67821 s!7408 s!7408) lt!2521091)))

(declare-fun b!7036397 () Bool)

(assert (=> b!7036397 (= e!4229982 (= (++!15525 (_1!37348 (get!23764 lt!2521091)) (_2!37348 (get!23764 lt!2521091))) s!7408))))

(declare-fun b!7036398 () Bool)

(declare-fun res!2872435 () Bool)

(assert (=> b!7036398 (=> (not res!2872435) (not e!4229982))))

(assert (=> b!7036398 (= res!2872435 (matchZipper!3012 lt!2520799 (_2!37348 (get!23764 lt!2521091))))))

(declare-fun b!7036399 () Bool)

(assert (=> b!7036399 (= e!4229978 (Some!16876 (tuple2!68091 Nil!67821 s!7408)))))

(declare-fun b!7036400 () Bool)

(assert (=> b!7036400 (= e!4229980 None!16876)))

(declare-fun b!7036401 () Bool)

(assert (=> b!7036401 (= e!4229978 e!4229980)))

(declare-fun c!1309213 () Bool)

(assert (=> b!7036401 (= c!1309213 (is-Nil!67821 s!7408))))

(declare-fun b!7036402 () Bool)

(assert (=> b!7036402 (= e!4229979 (not (isDefined!13578 lt!2521091)))))

(assert (= (and d!2196146 res!2872437) b!7036394))

(assert (= (and d!2196146 c!1309214) b!7036399))

(assert (= (and d!2196146 (not c!1309214)) b!7036401))

(assert (= (and b!7036401 c!1309213) b!7036400))

(assert (= (and b!7036401 (not c!1309213)) b!7036396))

(assert (= (and d!2196146 res!2872438) b!7036395))

(assert (= (and b!7036395 res!2872436) b!7036398))

(assert (= (and b!7036398 res!2872435) b!7036397))

(assert (= (and d!2196146 (not res!2872439)) b!7036402))

(declare-fun m!7745400 () Bool)

(assert (=> b!7036395 m!7745400))

(declare-fun m!7745402 () Bool)

(assert (=> b!7036395 m!7745402))

(declare-fun m!7745404 () Bool)

(assert (=> b!7036396 m!7745404))

(assert (=> b!7036396 m!7745404))

(declare-fun m!7745406 () Bool)

(assert (=> b!7036396 m!7745406))

(declare-fun m!7745408 () Bool)

(assert (=> b!7036396 m!7745408))

(assert (=> b!7036396 m!7745404))

(declare-fun m!7745410 () Bool)

(assert (=> b!7036396 m!7745410))

(declare-fun m!7745412 () Bool)

(assert (=> b!7036394 m!7745412))

(assert (=> b!7036398 m!7745400))

(declare-fun m!7745414 () Bool)

(assert (=> b!7036398 m!7745414))

(declare-fun m!7745416 () Bool)

(assert (=> d!2196146 m!7745416))

(declare-fun m!7745418 () Bool)

(assert (=> d!2196146 m!7745418))

(declare-fun m!7745420 () Bool)

(assert (=> d!2196146 m!7745420))

(assert (=> b!7036402 m!7745416))

(assert (=> b!7036397 m!7745400))

(declare-fun m!7745422 () Bool)

(assert (=> b!7036397 m!7745422))

(assert (=> b!7036128 d!2196146))

(declare-fun d!2196148 () Bool)

(assert (=> d!2196148 (= (get!23764 lt!2520810) (v!53164 lt!2520810))))

(assert (=> b!7036128 d!2196148))

(declare-fun d!2196150 () Bool)

(assert (=> d!2196150 (isDefined!13578 (findConcatSeparationZippers!393 lt!2520803 (set.insert ct2!306 (as set.empty (Set Context!12936))) Nil!67821 s!7408 s!7408))))

(declare-fun lt!2521095 () Unit!161622)

(declare-fun choose!53336 ((Set Context!12936) Context!12936 List!67945) Unit!161622)

(assert (=> d!2196150 (= lt!2521095 (choose!53336 lt!2520803 ct2!306 s!7408))))

(assert (=> d!2196150 (matchZipper!3012 (appendTo!593 lt!2520803 ct2!306) s!7408)))

(assert (=> d!2196150 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!381 lt!2520803 ct2!306 s!7408) lt!2521095)))

(declare-fun bs!1872055 () Bool)

(assert (= bs!1872055 d!2196150))

(declare-fun m!7745424 () Bool)

(assert (=> bs!1872055 m!7745424))

(declare-fun m!7745426 () Bool)

(assert (=> bs!1872055 m!7745426))

(assert (=> bs!1872055 m!7745000))

(assert (=> bs!1872055 m!7745000))

(declare-fun m!7745428 () Bool)

(assert (=> bs!1872055 m!7745428))

(assert (=> bs!1872055 m!7745428))

(declare-fun m!7745430 () Bool)

(assert (=> bs!1872055 m!7745430))

(assert (=> bs!1872055 m!7745424))

(declare-fun m!7745432 () Bool)

(assert (=> bs!1872055 m!7745432))

(assert (=> b!7036128 d!2196150))

(declare-fun d!2196152 () Bool)

(declare-fun c!1309215 () Bool)

(assert (=> d!2196152 (= c!1309215 (isEmpty!39563 (_1!37348 lt!2520831)))))

(declare-fun e!4229983 () Bool)

(assert (=> d!2196152 (= (matchZipper!3012 lt!2520803 (_1!37348 lt!2520831)) e!4229983)))

(declare-fun b!7036403 () Bool)

(assert (=> b!7036403 (= e!4229983 (nullableZipper!2585 lt!2520803))))

(declare-fun b!7036404 () Bool)

(assert (=> b!7036404 (= e!4229983 (matchZipper!3012 (derivationStepZipper!2928 lt!2520803 (head!14272 (_1!37348 lt!2520831))) (tail!13565 (_1!37348 lt!2520831))))))

(assert (= (and d!2196152 c!1309215) b!7036403))

(assert (= (and d!2196152 (not c!1309215)) b!7036404))

(assert (=> d!2196152 m!7744910))

(declare-fun m!7745434 () Bool)

(assert (=> b!7036403 m!7745434))

(assert (=> b!7036404 m!7745342))

(assert (=> b!7036404 m!7745342))

(declare-fun m!7745436 () Bool)

(assert (=> b!7036404 m!7745436))

(assert (=> b!7036404 m!7744988))

(assert (=> b!7036404 m!7745436))

(assert (=> b!7036404 m!7744988))

(declare-fun m!7745438 () Bool)

(assert (=> b!7036404 m!7745438))

(assert (=> b!7036128 d!2196152))

(declare-fun d!2196154 () Bool)

(declare-fun c!1309216 () Bool)

(assert (=> d!2196154 (= c!1309216 (isEmpty!39563 (_2!37348 lt!2520831)))))

(declare-fun e!4229984 () Bool)

(assert (=> d!2196154 (= (matchZipper!3012 lt!2520799 (_2!37348 lt!2520831)) e!4229984)))

(declare-fun b!7036405 () Bool)

(assert (=> b!7036405 (= e!4229984 (nullableZipper!2585 lt!2520799))))

(declare-fun b!7036406 () Bool)

(assert (=> b!7036406 (= e!4229984 (matchZipper!3012 (derivationStepZipper!2928 lt!2520799 (head!14272 (_2!37348 lt!2520831))) (tail!13565 (_2!37348 lt!2520831))))))

(assert (= (and d!2196154 c!1309216) b!7036405))

(assert (= (and d!2196154 (not c!1309216)) b!7036406))

(declare-fun m!7745440 () Bool)

(assert (=> d!2196154 m!7745440))

(declare-fun m!7745442 () Bool)

(assert (=> b!7036405 m!7745442))

(declare-fun m!7745444 () Bool)

(assert (=> b!7036406 m!7745444))

(assert (=> b!7036406 m!7745444))

(declare-fun m!7745446 () Bool)

(assert (=> b!7036406 m!7745446))

(declare-fun m!7745448 () Bool)

(assert (=> b!7036406 m!7745448))

(assert (=> b!7036406 m!7745446))

(assert (=> b!7036406 m!7745448))

(declare-fun m!7745450 () Bool)

(assert (=> b!7036406 m!7745450))

(assert (=> b!7036147 d!2196154))

(declare-fun d!2196156 () Bool)

(declare-fun c!1309217 () Bool)

(assert (=> d!2196156 (= c!1309217 (isEmpty!39563 s!7408))))

(declare-fun e!4229985 () Bool)

(assert (=> d!2196156 (= (matchZipper!3012 lt!2520837 s!7408) e!4229985)))

(declare-fun b!7036407 () Bool)

(assert (=> b!7036407 (= e!4229985 (nullableZipper!2585 lt!2520837))))

(declare-fun b!7036408 () Bool)

(assert (=> b!7036408 (= e!4229985 (matchZipper!3012 (derivationStepZipper!2928 lt!2520837 (head!14272 s!7408)) (tail!13565 s!7408)))))

(assert (= (and d!2196156 c!1309217) b!7036407))

(assert (= (and d!2196156 (not c!1309217)) b!7036408))

(assert (=> d!2196156 m!7745150))

(declare-fun m!7745452 () Bool)

(assert (=> b!7036407 m!7745452))

(assert (=> b!7036408 m!7745154))

(assert (=> b!7036408 m!7745154))

(declare-fun m!7745454 () Bool)

(assert (=> b!7036408 m!7745454))

(assert (=> b!7036408 m!7745158))

(assert (=> b!7036408 m!7745454))

(assert (=> b!7036408 m!7745158))

(declare-fun m!7745456 () Bool)

(assert (=> b!7036408 m!7745456))

(assert (=> start!680280 d!2196156))

(declare-fun bs!1872056 () Bool)

(declare-fun d!2196158 () Bool)

(assert (= bs!1872056 (and d!2196158 b!7036151)))

(declare-fun lambda!415602 () Int)

(assert (=> bs!1872056 (= lambda!415602 lambda!415520)))

(assert (=> d!2196158 true))

(assert (=> d!2196158 (= (appendTo!593 z1!570 ct2!306) (map!15776 z1!570 lambda!415602))))

(declare-fun bs!1872057 () Bool)

(assert (= bs!1872057 d!2196158))

(declare-fun m!7745458 () Bool)

(assert (=> bs!1872057 m!7745458))

(assert (=> start!680280 d!2196158))

(declare-fun bs!1872058 () Bool)

(declare-fun d!2196160 () Bool)

(assert (= bs!1872058 (and d!2196160 b!7036151)))

(declare-fun lambda!415603 () Int)

(assert (=> bs!1872058 (= lambda!415603 lambda!415521)))

(declare-fun bs!1872059 () Bool)

(assert (= bs!1872059 (and d!2196160 d!2196138)))

(assert (=> bs!1872059 (= lambda!415603 lambda!415597)))

(assert (=> d!2196160 (= (inv!86540 ct2!306) (forall!16389 (exprs!6968 ct2!306) lambda!415603))))

(declare-fun bs!1872060 () Bool)

(assert (= bs!1872060 d!2196160))

(declare-fun m!7745460 () Bool)

(assert (=> bs!1872060 m!7745460))

(assert (=> start!680280 d!2196160))

(declare-fun call!639003 () List!67944)

(declare-fun bm!638998 () Bool)

(declare-fun c!1309233 () Bool)

(declare-fun c!1309229 () Bool)

(declare-fun $colon$colon!2579 (List!67944 Regex!17472) List!67944)

(assert (=> bm!638998 (= call!639003 ($colon$colon!2579 (exprs!6968 lt!2520842) (ite (or c!1309229 c!1309233) (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (h!74268 (exprs!6968 lt!2520817)))))))

(declare-fun b!7036431 () Bool)

(declare-fun c!1309231 () Bool)

(assert (=> b!7036431 (= c!1309231 (is-Star!17472 (h!74268 (exprs!6968 lt!2520817))))))

(declare-fun e!4230002 () (Set Context!12936))

(declare-fun e!4230000 () (Set Context!12936))

(assert (=> b!7036431 (= e!4230002 e!4230000)))

(declare-fun bm!638999 () Bool)

(declare-fun call!639006 () (Set Context!12936))

(declare-fun call!639008 () (Set Context!12936))

(assert (=> bm!638999 (= call!639006 call!639008)))

(declare-fun b!7036432 () Bool)

(assert (=> b!7036432 (= e!4230000 (as set.empty (Set Context!12936)))))

(declare-fun b!7036433 () Bool)

(declare-fun e!4230001 () (Set Context!12936))

(declare-fun call!639004 () (Set Context!12936))

(declare-fun call!639005 () (Set Context!12936))

(assert (=> b!7036433 (= e!4230001 (set.union call!639004 call!639005))))

(declare-fun bm!639000 () Bool)

(assert (=> bm!639000 (= call!639008 call!639005)))

(declare-fun b!7036434 () Bool)

(declare-fun e!4229999 () (Set Context!12936))

(assert (=> b!7036434 (= e!4229999 e!4230002)))

(assert (=> b!7036434 (= c!1309233 (is-Concat!26317 (h!74268 (exprs!6968 lt!2520817))))))

(declare-fun d!2196162 () Bool)

(declare-fun c!1309232 () Bool)

(assert (=> d!2196162 (= c!1309232 (and (is-ElementMatch!17472 (h!74268 (exprs!6968 lt!2520817))) (= (c!1309148 (h!74268 (exprs!6968 lt!2520817))) (h!74269 s!7408))))))

(declare-fun e!4229998 () (Set Context!12936))

(assert (=> d!2196162 (= (derivationStepZipperDown!2136 (h!74268 (exprs!6968 lt!2520817)) lt!2520842 (h!74269 s!7408)) e!4229998)))

(declare-fun b!7036435 () Bool)

(assert (=> b!7036435 (= e!4230000 call!639006)))

(declare-fun bm!639001 () Bool)

(declare-fun call!639007 () List!67944)

(assert (=> bm!639001 (= call!639007 call!639003)))

(declare-fun b!7036436 () Bool)

(assert (=> b!7036436 (= e!4229999 (set.union call!639004 call!639008))))

(declare-fun c!1309230 () Bool)

(declare-fun bm!639002 () Bool)

(assert (=> bm!639002 (= call!639004 (derivationStepZipperDown!2136 (ite c!1309230 (regOne!35457 (h!74268 (exprs!6968 lt!2520817))) (regOne!35456 (h!74268 (exprs!6968 lt!2520817)))) (ite c!1309230 lt!2520842 (Context!12937 call!639003)) (h!74269 s!7408)))))

(declare-fun b!7036437 () Bool)

(assert (=> b!7036437 (= e!4230002 call!639006)))

(declare-fun b!7036438 () Bool)

(assert (=> b!7036438 (= e!4229998 e!4230001)))

(assert (=> b!7036438 (= c!1309230 (is-Union!17472 (h!74268 (exprs!6968 lt!2520817))))))

(declare-fun b!7036439 () Bool)

(declare-fun e!4230003 () Bool)

(assert (=> b!7036439 (= c!1309229 e!4230003)))

(declare-fun res!2872442 () Bool)

(assert (=> b!7036439 (=> (not res!2872442) (not e!4230003))))

(assert (=> b!7036439 (= res!2872442 (is-Concat!26317 (h!74268 (exprs!6968 lt!2520817))))))

(assert (=> b!7036439 (= e!4230001 e!4229999)))

(declare-fun b!7036440 () Bool)

(assert (=> b!7036440 (= e!4229998 (set.insert lt!2520842 (as set.empty (Set Context!12936))))))

(declare-fun bm!639003 () Bool)

(assert (=> bm!639003 (= call!639005 (derivationStepZipperDown!2136 (ite c!1309230 (regTwo!35457 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309229 (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309233 (regOne!35456 (h!74268 (exprs!6968 lt!2520817))) (reg!17801 (h!74268 (exprs!6968 lt!2520817)))))) (ite (or c!1309230 c!1309229) lt!2520842 (Context!12937 call!639007)) (h!74269 s!7408)))))

(declare-fun b!7036441 () Bool)

(assert (=> b!7036441 (= e!4230003 (nullable!7183 (regOne!35456 (h!74268 (exprs!6968 lt!2520817)))))))

(assert (= (and d!2196162 c!1309232) b!7036440))

(assert (= (and d!2196162 (not c!1309232)) b!7036438))

(assert (= (and b!7036438 c!1309230) b!7036433))

(assert (= (and b!7036438 (not c!1309230)) b!7036439))

(assert (= (and b!7036439 res!2872442) b!7036441))

(assert (= (and b!7036439 c!1309229) b!7036436))

(assert (= (and b!7036439 (not c!1309229)) b!7036434))

(assert (= (and b!7036434 c!1309233) b!7036437))

(assert (= (and b!7036434 (not c!1309233)) b!7036431))

(assert (= (and b!7036431 c!1309231) b!7036435))

(assert (= (and b!7036431 (not c!1309231)) b!7036432))

(assert (= (or b!7036437 b!7036435) bm!639001))

(assert (= (or b!7036437 b!7036435) bm!638999))

(assert (= (or b!7036436 bm!638999) bm!639000))

(assert (= (or b!7036436 bm!639001) bm!638998))

(assert (= (or b!7036433 b!7036436) bm!639002))

(assert (= (or b!7036433 bm!639000) bm!639003))

(declare-fun m!7745462 () Bool)

(assert (=> bm!638998 m!7745462))

(declare-fun m!7745464 () Bool)

(assert (=> bm!639002 m!7745464))

(assert (=> b!7036440 m!7744944))

(declare-fun m!7745466 () Bool)

(assert (=> bm!639003 m!7745466))

(declare-fun m!7745468 () Bool)

(assert (=> b!7036441 m!7745468))

(assert (=> b!7036129 d!2196162))

(assert (=> b!7036129 d!2196068))

(assert (=> b!7036129 d!2196056))

(assert (=> b!7036129 d!2196108))

(declare-fun d!2196164 () Bool)

(assert (=> d!2196164 (= (isEmpty!39564 (exprs!6968 lt!2520817)) (is-Nil!67820 (exprs!6968 lt!2520817)))))

(assert (=> b!7036141 d!2196164))

(assert (=> b!7036142 d!2196102))

(declare-fun call!639009 () List!67944)

(declare-fun c!1309238 () Bool)

(declare-fun bm!639004 () Bool)

(declare-fun c!1309234 () Bool)

(assert (=> bm!639004 (= call!639009 ($colon$colon!2579 (exprs!6968 lt!2520844) (ite (or c!1309234 c!1309238) (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (h!74268 (exprs!6968 lt!2520817)))))))

(declare-fun b!7036442 () Bool)

(declare-fun c!1309236 () Bool)

(assert (=> b!7036442 (= c!1309236 (is-Star!17472 (h!74268 (exprs!6968 lt!2520817))))))

(declare-fun e!4230008 () (Set Context!12936))

(declare-fun e!4230006 () (Set Context!12936))

(assert (=> b!7036442 (= e!4230008 e!4230006)))

(declare-fun bm!639005 () Bool)

(declare-fun call!639012 () (Set Context!12936))

(declare-fun call!639014 () (Set Context!12936))

(assert (=> bm!639005 (= call!639012 call!639014)))

(declare-fun b!7036443 () Bool)

(assert (=> b!7036443 (= e!4230006 (as set.empty (Set Context!12936)))))

(declare-fun b!7036444 () Bool)

(declare-fun e!4230007 () (Set Context!12936))

(declare-fun call!639010 () (Set Context!12936))

(declare-fun call!639011 () (Set Context!12936))

(assert (=> b!7036444 (= e!4230007 (set.union call!639010 call!639011))))

(declare-fun bm!639006 () Bool)

(assert (=> bm!639006 (= call!639014 call!639011)))

(declare-fun b!7036445 () Bool)

(declare-fun e!4230005 () (Set Context!12936))

(assert (=> b!7036445 (= e!4230005 e!4230008)))

(assert (=> b!7036445 (= c!1309238 (is-Concat!26317 (h!74268 (exprs!6968 lt!2520817))))))

(declare-fun d!2196166 () Bool)

(declare-fun c!1309237 () Bool)

(assert (=> d!2196166 (= c!1309237 (and (is-ElementMatch!17472 (h!74268 (exprs!6968 lt!2520817))) (= (c!1309148 (h!74268 (exprs!6968 lt!2520817))) (h!74269 s!7408))))))

(declare-fun e!4230004 () (Set Context!12936))

(assert (=> d!2196166 (= (derivationStepZipperDown!2136 (h!74268 (exprs!6968 lt!2520817)) lt!2520844 (h!74269 s!7408)) e!4230004)))

(declare-fun b!7036446 () Bool)

(assert (=> b!7036446 (= e!4230006 call!639012)))

(declare-fun bm!639007 () Bool)

(declare-fun call!639013 () List!67944)

(assert (=> bm!639007 (= call!639013 call!639009)))

(declare-fun b!7036447 () Bool)

(assert (=> b!7036447 (= e!4230005 (set.union call!639010 call!639014))))

(declare-fun bm!639008 () Bool)

(declare-fun c!1309235 () Bool)

(assert (=> bm!639008 (= call!639010 (derivationStepZipperDown!2136 (ite c!1309235 (regOne!35457 (h!74268 (exprs!6968 lt!2520817))) (regOne!35456 (h!74268 (exprs!6968 lt!2520817)))) (ite c!1309235 lt!2520844 (Context!12937 call!639009)) (h!74269 s!7408)))))

(declare-fun b!7036448 () Bool)

(assert (=> b!7036448 (= e!4230008 call!639012)))

(declare-fun b!7036449 () Bool)

(assert (=> b!7036449 (= e!4230004 e!4230007)))

(assert (=> b!7036449 (= c!1309235 (is-Union!17472 (h!74268 (exprs!6968 lt!2520817))))))

(declare-fun b!7036450 () Bool)

(declare-fun e!4230009 () Bool)

(assert (=> b!7036450 (= c!1309234 e!4230009)))

(declare-fun res!2872443 () Bool)

(assert (=> b!7036450 (=> (not res!2872443) (not e!4230009))))

(assert (=> b!7036450 (= res!2872443 (is-Concat!26317 (h!74268 (exprs!6968 lt!2520817))))))

(assert (=> b!7036450 (= e!4230007 e!4230005)))

(declare-fun b!7036451 () Bool)

(assert (=> b!7036451 (= e!4230004 (set.insert lt!2520844 (as set.empty (Set Context!12936))))))

(declare-fun bm!639009 () Bool)

(assert (=> bm!639009 (= call!639011 (derivationStepZipperDown!2136 (ite c!1309235 (regTwo!35457 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309234 (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309238 (regOne!35456 (h!74268 (exprs!6968 lt!2520817))) (reg!17801 (h!74268 (exprs!6968 lt!2520817)))))) (ite (or c!1309235 c!1309234) lt!2520844 (Context!12937 call!639013)) (h!74269 s!7408)))))

(declare-fun b!7036452 () Bool)

(assert (=> b!7036452 (= e!4230009 (nullable!7183 (regOne!35456 (h!74268 (exprs!6968 lt!2520817)))))))

(assert (= (and d!2196166 c!1309237) b!7036451))

(assert (= (and d!2196166 (not c!1309237)) b!7036449))

(assert (= (and b!7036449 c!1309235) b!7036444))

(assert (= (and b!7036449 (not c!1309235)) b!7036450))

(assert (= (and b!7036450 res!2872443) b!7036452))

(assert (= (and b!7036450 c!1309234) b!7036447))

(assert (= (and b!7036450 (not c!1309234)) b!7036445))

(assert (= (and b!7036445 c!1309238) b!7036448))

(assert (= (and b!7036445 (not c!1309238)) b!7036442))

(assert (= (and b!7036442 c!1309236) b!7036446))

(assert (= (and b!7036442 (not c!1309236)) b!7036443))

(assert (= (or b!7036448 b!7036446) bm!639007))

(assert (= (or b!7036448 b!7036446) bm!639005))

(assert (= (or b!7036447 bm!639005) bm!639006))

(assert (= (or b!7036447 bm!639007) bm!639004))

(assert (= (or b!7036444 b!7036447) bm!639008))

(assert (= (or b!7036444 bm!639006) bm!639009))

(declare-fun m!7745470 () Bool)

(assert (=> bm!639004 m!7745470))

(declare-fun m!7745472 () Bool)

(assert (=> bm!639008 m!7745472))

(assert (=> b!7036451 m!7744956))

(declare-fun m!7745474 () Bool)

(assert (=> bm!639009 m!7745474))

(assert (=> b!7036452 m!7745468))

(assert (=> b!7036142 d!2196166))

(assert (=> b!7036143 d!2196096))

(declare-fun d!2196168 () Bool)

(declare-fun c!1309239 () Bool)

(declare-fun e!4230010 () Bool)

(assert (=> d!2196168 (= c!1309239 e!4230010)))

(declare-fun res!2872444 () Bool)

(assert (=> d!2196168 (=> (not res!2872444) (not e!4230010))))

(assert (=> d!2196168 (= res!2872444 (is-Cons!67820 (exprs!6968 lt!2520807)))))

(declare-fun e!4230012 () (Set Context!12936))

(assert (=> d!2196168 (= (derivationStepZipperUp!2082 lt!2520807 (h!74269 s!7408)) e!4230012)))

(declare-fun b!7036453 () Bool)

(assert (=> b!7036453 (= e!4230010 (nullable!7183 (h!74268 (exprs!6968 lt!2520807))))))

(declare-fun b!7036454 () Bool)

(declare-fun e!4230011 () (Set Context!12936))

(assert (=> b!7036454 (= e!4230011 (as set.empty (Set Context!12936)))))

(declare-fun b!7036455 () Bool)

(declare-fun call!639015 () (Set Context!12936))

(assert (=> b!7036455 (= e!4230011 call!639015)))

(declare-fun bm!639010 () Bool)

(assert (=> bm!639010 (= call!639015 (derivationStepZipperDown!2136 (h!74268 (exprs!6968 lt!2520807)) (Context!12937 (t!381713 (exprs!6968 lt!2520807))) (h!74269 s!7408)))))

(declare-fun b!7036456 () Bool)

(assert (=> b!7036456 (= e!4230012 (set.union call!639015 (derivationStepZipperUp!2082 (Context!12937 (t!381713 (exprs!6968 lt!2520807))) (h!74269 s!7408))))))

(declare-fun b!7036457 () Bool)

(assert (=> b!7036457 (= e!4230012 e!4230011)))

(declare-fun c!1309240 () Bool)

(assert (=> b!7036457 (= c!1309240 (is-Cons!67820 (exprs!6968 lt!2520807)))))

(assert (= (and d!2196168 res!2872444) b!7036453))

(assert (= (and d!2196168 c!1309239) b!7036456))

(assert (= (and d!2196168 (not c!1309239)) b!7036457))

(assert (= (and b!7036457 c!1309240) b!7036455))

(assert (= (and b!7036457 (not c!1309240)) b!7036454))

(assert (= (or b!7036456 b!7036455) bm!639010))

(declare-fun m!7745476 () Bool)

(assert (=> b!7036453 m!7745476))

(declare-fun m!7745478 () Bool)

(assert (=> bm!639010 m!7745478))

(declare-fun m!7745480 () Bool)

(assert (=> b!7036456 m!7745480))

(assert (=> b!7036143 d!2196168))

(declare-fun d!2196170 () Bool)

(assert (=> d!2196170 (= (flatMap!2419 lt!2520847 lambda!415522) (dynLambda!27405 lambda!415522 lt!2520807))))

(declare-fun lt!2521098 () Unit!161622)

(assert (=> d!2196170 (= lt!2521098 (choose!53328 lt!2520847 lt!2520807 lambda!415522))))

(assert (=> d!2196170 (= lt!2520847 (set.insert lt!2520807 (as set.empty (Set Context!12936))))))

(assert (=> d!2196170 (= (lemmaFlatMapOnSingletonSet!1933 lt!2520847 lt!2520807 lambda!415522) lt!2521098)))

(declare-fun b_lambda!266903 () Bool)

(assert (=> (not b_lambda!266903) (not d!2196170)))

(declare-fun bs!1872061 () Bool)

(assert (= bs!1872061 d!2196170))

(assert (=> bs!1872061 m!7744982))

(declare-fun m!7745482 () Bool)

(assert (=> bs!1872061 m!7745482))

(declare-fun m!7745484 () Bool)

(assert (=> bs!1872061 m!7745484))

(assert (=> bs!1872061 m!7744890))

(assert (=> b!7036143 d!2196170))

(declare-fun d!2196172 () Bool)

(assert (=> d!2196172 (= (flatMap!2419 lt!2520847 lambda!415522) (choose!53329 lt!2520847 lambda!415522))))

(declare-fun bs!1872062 () Bool)

(assert (= bs!1872062 d!2196172))

(declare-fun m!7745486 () Bool)

(assert (=> bs!1872062 m!7745486))

(assert (=> b!7036143 d!2196172))

(declare-fun bs!1872063 () Bool)

(declare-fun d!2196174 () Bool)

(assert (= bs!1872063 (and d!2196174 b!7036143)))

(declare-fun lambda!415604 () Int)

(assert (=> bs!1872063 (= lambda!415604 lambda!415522)))

(declare-fun bs!1872064 () Bool)

(assert (= bs!1872064 (and d!2196174 d!2196070)))

(assert (=> bs!1872064 (= lambda!415604 lambda!415587)))

(declare-fun bs!1872065 () Bool)

(assert (= bs!1872065 (and d!2196174 d!2196074)))

(assert (=> bs!1872065 (= lambda!415604 lambda!415588)))

(assert (=> d!2196174 true))

(assert (=> d!2196174 (= (derivationStepZipper!2928 lt!2520847 (h!74269 s!7408)) (flatMap!2419 lt!2520847 lambda!415604))))

(declare-fun bs!1872066 () Bool)

(assert (= bs!1872066 d!2196174))

(declare-fun m!7745488 () Bool)

(assert (=> bs!1872066 m!7745488))

(assert (=> b!7036143 d!2196174))

(assert (=> b!7036145 d!2196134))

(assert (=> b!7036145 d!2196056))

(declare-fun condSetEmpty!49241 () Bool)

(assert (=> setNonEmpty!49235 (= condSetEmpty!49241 (= setRest!49235 (as set.empty (Set Context!12936))))))

(declare-fun setRes!49241 () Bool)

(assert (=> setNonEmpty!49235 (= tp!1936852 setRes!49241)))

(declare-fun setIsEmpty!49241 () Bool)

(assert (=> setIsEmpty!49241 setRes!49241))

(declare-fun tp!1936870 () Bool)

(declare-fun e!4230015 () Bool)

(declare-fun setNonEmpty!49241 () Bool)

(declare-fun setElem!49241 () Context!12936)

(assert (=> setNonEmpty!49241 (= setRes!49241 (and tp!1936870 (inv!86540 setElem!49241) e!4230015))))

(declare-fun setRest!49241 () (Set Context!12936))

(assert (=> setNonEmpty!49241 (= setRest!49235 (set.union (set.insert setElem!49241 (as set.empty (Set Context!12936))) setRest!49241))))

(declare-fun b!7036462 () Bool)

(declare-fun tp!1936871 () Bool)

(assert (=> b!7036462 (= e!4230015 tp!1936871)))

(assert (= (and setNonEmpty!49235 condSetEmpty!49241) setIsEmpty!49241))

(assert (= (and setNonEmpty!49235 (not condSetEmpty!49241)) setNonEmpty!49241))

(assert (= setNonEmpty!49241 b!7036462))

(declare-fun m!7745490 () Bool)

(assert (=> setNonEmpty!49241 m!7745490))

(declare-fun b!7036467 () Bool)

(declare-fun e!4230018 () Bool)

(declare-fun tp!1936876 () Bool)

(declare-fun tp!1936877 () Bool)

(assert (=> b!7036467 (= e!4230018 (and tp!1936876 tp!1936877))))

(assert (=> b!7036149 (= tp!1936853 e!4230018)))

(assert (= (and b!7036149 (is-Cons!67820 (exprs!6968 ct2!306))) b!7036467))

(declare-fun b!7036472 () Bool)

(declare-fun e!4230021 () Bool)

(declare-fun tp!1936880 () Bool)

(assert (=> b!7036472 (= e!4230021 (and tp_is_empty!44169 tp!1936880))))

(assert (=> b!7036152 (= tp!1936851 e!4230021)))

(assert (= (and b!7036152 (is-Cons!67821 (t!381714 s!7408))) b!7036472))

(declare-fun b!7036473 () Bool)

(declare-fun e!4230022 () Bool)

(declare-fun tp!1936881 () Bool)

(declare-fun tp!1936882 () Bool)

(assert (=> b!7036473 (= e!4230022 (and tp!1936881 tp!1936882))))

(assert (=> b!7036153 (= tp!1936850 e!4230022)))

(assert (= (and b!7036153 (is-Cons!67820 (exprs!6968 setElem!49235))) b!7036473))

(declare-fun b_lambda!266905 () Bool)

(assert (= b_lambda!266895 (or b!7036157 b_lambda!266905)))

(declare-fun bs!1872067 () Bool)

(declare-fun d!2196176 () Bool)

(assert (= bs!1872067 (and d!2196176 b!7036157)))

(assert (=> bs!1872067 (= (dynLambda!27407 lambda!415519 lt!2521058) (matchZipper!3012 (set.insert lt!2521058 (as set.empty (Set Context!12936))) s!7408))))

(declare-fun m!7745492 () Bool)

(assert (=> bs!1872067 m!7745492))

(assert (=> bs!1872067 m!7745492))

(declare-fun m!7745494 () Bool)

(assert (=> bs!1872067 m!7745494))

(assert (=> d!2196092 d!2196176))

(declare-fun b_lambda!266907 () Bool)

(assert (= b_lambda!266891 (or b!7036143 b_lambda!266907)))

(declare-fun bs!1872068 () Bool)

(declare-fun d!2196178 () Bool)

(assert (= bs!1872068 (and d!2196178 b!7036143)))

(assert (=> bs!1872068 (= (dynLambda!27405 lambda!415522 lt!2520842) (derivationStepZipperUp!2082 lt!2520842 (h!74269 s!7408)))))

(assert (=> bs!1872068 m!7744868))

(assert (=> d!2196066 d!2196178))

(declare-fun b_lambda!266909 () Bool)

(assert (= b_lambda!266901 (or b!7036151 b_lambda!266909)))

(declare-fun bs!1872069 () Bool)

(declare-fun d!2196180 () Bool)

(assert (= bs!1872069 (and d!2196180 b!7036151)))

(declare-fun lt!2521099 () Unit!161622)

(assert (=> bs!1872069 (= lt!2521099 (lemmaConcatPreservesForall!793 (exprs!6968 lt!2521080) (exprs!6968 ct2!306) lambda!415521))))

(assert (=> bs!1872069 (= (dynLambda!27408 lambda!415520 lt!2521080) (Context!12937 (++!15524 (exprs!6968 lt!2521080) (exprs!6968 ct2!306))))))

(declare-fun m!7745496 () Bool)

(assert (=> bs!1872069 m!7745496))

(declare-fun m!7745498 () Bool)

(assert (=> bs!1872069 m!7745498))

(assert (=> d!2196132 d!2196180))

(declare-fun b_lambda!266911 () Bool)

(assert (= b_lambda!266897 (or b!7036151 b_lambda!266911)))

(declare-fun bs!1872070 () Bool)

(declare-fun d!2196182 () Bool)

(assert (= bs!1872070 (and d!2196182 b!7036151)))

(declare-fun lt!2521100 () Unit!161622)

(assert (=> bs!1872070 (= lt!2521100 (lemmaConcatPreservesForall!793 (exprs!6968 lt!2520844) (exprs!6968 ct2!306) lambda!415521))))

(assert (=> bs!1872070 (= (dynLambda!27408 lambda!415520 lt!2520844) (Context!12937 (++!15524 (exprs!6968 lt!2520844) (exprs!6968 ct2!306))))))

(declare-fun m!7745500 () Bool)

(assert (=> bs!1872070 m!7745500))

(declare-fun m!7745502 () Bool)

(assert (=> bs!1872070 m!7745502))

(assert (=> d!2196100 d!2196182))

(declare-fun b_lambda!266913 () Bool)

(assert (= b_lambda!266903 (or b!7036143 b_lambda!266913)))

(declare-fun bs!1872071 () Bool)

(declare-fun d!2196184 () Bool)

(assert (= bs!1872071 (and d!2196184 b!7036143)))

(assert (=> bs!1872071 (= (dynLambda!27405 lambda!415522 lt!2520807) (derivationStepZipperUp!2082 lt!2520807 (h!74269 s!7408)))))

(assert (=> bs!1872071 m!7744976))

(assert (=> d!2196170 d!2196184))

(declare-fun b_lambda!266915 () Bool)

(assert (= b_lambda!266893 (or b!7036143 b_lambda!266915)))

(declare-fun bs!1872072 () Bool)

(declare-fun d!2196186 () Bool)

(assert (= bs!1872072 (and d!2196186 b!7036143)))

(assert (=> bs!1872072 (= (dynLambda!27405 lambda!415522 lt!2520817) (derivationStepZipperUp!2082 lt!2520817 (h!74269 s!7408)))))

(assert (=> bs!1872072 m!7744904))

(assert (=> d!2196080 d!2196186))

(declare-fun b_lambda!266917 () Bool)

(assert (= b_lambda!266899 (or b!7036143 b_lambda!266917)))

(declare-fun bs!1872073 () Bool)

(declare-fun d!2196188 () Bool)

(assert (= bs!1872073 (and d!2196188 b!7036143)))

(assert (=> bs!1872073 (= (dynLambda!27405 lambda!415522 lt!2520844) (derivationStepZipperUp!2082 lt!2520844 (h!74269 s!7408)))))

(assert (=> bs!1872073 m!7744916))

(assert (=> d!2196114 d!2196188))

(push 1)

(assert (not d!2196138))

(assert (not d!2196064))

(assert (not d!2196134))

(assert (not d!2196104))

(assert (not d!2196132))

(assert (not d!2196080))

(assert (not b!7036406))

(assert (not b!7036321))

(assert (not b!7036355))

(assert (not b_lambda!266909))

(assert (not b!7036292))

(assert (not bm!639002))

(assert (not b!7036441))

(assert (not b!7036407))

(assert (not b!7036452))

(assert (not d!2196130))

(assert (not b!7036356))

(assert (not bm!639004))

(assert (not d!2196072))

(assert (not d!2196172))

(assert (not b!7036396))

(assert (not bs!1872067))

(assert (not b_lambda!266917))

(assert (not d!2196084))

(assert (not d!2196090))

(assert (not b!7036342))

(assert (not d!2196112))

(assert (not b!7036374))

(assert (not d!2196108))

(assert (not b!7036270))

(assert (not b!7036352))

(assert (not setNonEmpty!49241))

(assert (not d!2196170))

(assert (not b!7036347))

(assert (not d!2196114))

(assert (not bs!1872073))

(assert (not b!7036462))

(assert (not d!2196136))

(assert (not d!2196086))

(assert (not b!7036274))

(assert (not b!7036296))

(assert (not b!7036312))

(assert (not d!2196122))

(assert (not b!7036324))

(assert (not d!2196066))

(assert (not d!2196174))

(assert (not b!7036473))

(assert (not b_lambda!266905))

(assert (not d!2196088))

(assert (not b!7036467))

(assert (not b!7036405))

(assert (not bm!639009))

(assert (not d!2196140))

(assert (not d!2196078))

(assert (not d!2196070))

(assert (not b!7036472))

(assert (not bm!639003))

(assert (not b!7036373))

(assert (not b!7036271))

(assert (not b!7036268))

(assert (not b!7036362))

(assert (not b!7036402))

(assert (not bs!1872071))

(assert (not b!7036273))

(assert (not b!7036318))

(assert (not b!7036309))

(assert (not bm!638984))

(assert (not b!7036403))

(assert (not d!2196092))

(assert (not bs!1872070))

(assert (not b!7036408))

(assert (not d!2196106))

(assert (not b!7036349))

(assert (not bs!1872069))

(assert (not d!2196144))

(assert (not bm!639008))

(assert (not d!2196060))

(assert (not bm!638983))

(assert (not b!7036278))

(assert (not b!7036269))

(assert (not b!7036344))

(assert (not d!2196128))

(assert (not b!7036348))

(assert (not bm!639010))

(assert (not d!2196124))

(assert (not d!2196118))

(assert (not d!2196100))

(assert (not b!7036345))

(assert (not b!7036397))

(assert (not d!2196062))

(assert (not b!7036351))

(assert (not d!2196154))

(assert (not b!7036299))

(assert (not d!2196096))

(assert (not d!2196146))

(assert (not b!7036305))

(assert (not d!2196152))

(assert (not d!2196056))

(assert (not b!7036289))

(assert (not d!2196094))

(assert (not b!7036317))

(assert (not d!2196126))

(assert (not b!7036398))

(assert (not bs!1872068))

(assert (not d!2196150))

(assert (not b!7036404))

(assert (not b!7036353))

(assert (not b!7036275))

(assert (not d!2196160))

(assert (not b!7036319))

(assert (not bm!638985))

(assert (not d!2196158))

(assert (not b_lambda!266913))

(assert (not b_lambda!266911))

(assert (not b!7036335))

(assert tp_is_empty!44169)

(assert (not bm!638998))

(assert (not b!7036313))

(assert (not d!2196156))

(assert (not d!2196058))

(assert (not b!7036394))

(assert (not b!7036453))

(assert (not d!2196074))

(assert (not b!7036456))

(assert (not b!7036395))

(assert (not b!7036336))

(assert (not b_lambda!266915))

(assert (not b_lambda!266907))

(assert (not bs!1872072))

(assert (not b!7036350))

(assert (not b!7036272))

(assert (not b!7036363))

(assert (not d!2196054))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2196328 () Bool)

(assert (=> d!2196328 (forall!16389 (++!15524 (exprs!6968 lt!2521080) (exprs!6968 ct2!306)) lambda!415521)))

(declare-fun lt!2521165 () Unit!161622)

(assert (=> d!2196328 (= lt!2521165 (choose!53326 (exprs!6968 lt!2521080) (exprs!6968 ct2!306) lambda!415521))))

(assert (=> d!2196328 (forall!16389 (exprs!6968 lt!2521080) lambda!415521)))

(assert (=> d!2196328 (= (lemmaConcatPreservesForall!793 (exprs!6968 lt!2521080) (exprs!6968 ct2!306) lambda!415521) lt!2521165)))

(declare-fun bs!1872118 () Bool)

(assert (= bs!1872118 d!2196328))

(assert (=> bs!1872118 m!7745498))

(assert (=> bs!1872118 m!7745498))

(declare-fun m!7745858 () Bool)

(assert (=> bs!1872118 m!7745858))

(declare-fun m!7745860 () Bool)

(assert (=> bs!1872118 m!7745860))

(declare-fun m!7745862 () Bool)

(assert (=> bs!1872118 m!7745862))

(assert (=> bs!1872069 d!2196328))

(declare-fun b!7036686 () Bool)

(declare-fun res!2872499 () Bool)

(declare-fun e!4230142 () Bool)

(assert (=> b!7036686 (=> (not res!2872499) (not e!4230142))))

(declare-fun lt!2521166 () List!67944)

(assert (=> b!7036686 (= res!2872499 (= (size!41074 lt!2521166) (+ (size!41074 (exprs!6968 lt!2521080)) (size!41074 (exprs!6968 ct2!306)))))))

(declare-fun b!7036687 () Bool)

(assert (=> b!7036687 (= e!4230142 (or (not (= (exprs!6968 ct2!306) Nil!67820)) (= lt!2521166 (exprs!6968 lt!2521080))))))

(declare-fun b!7036685 () Bool)

(declare-fun e!4230141 () List!67944)

(assert (=> b!7036685 (= e!4230141 (Cons!67820 (h!74268 (exprs!6968 lt!2521080)) (++!15524 (t!381713 (exprs!6968 lt!2521080)) (exprs!6968 ct2!306))))))

(declare-fun b!7036684 () Bool)

(assert (=> b!7036684 (= e!4230141 (exprs!6968 ct2!306))))

(declare-fun d!2196330 () Bool)

(assert (=> d!2196330 e!4230142))

(declare-fun res!2872500 () Bool)

(assert (=> d!2196330 (=> (not res!2872500) (not e!4230142))))

(assert (=> d!2196330 (= res!2872500 (= (content!13551 lt!2521166) (set.union (content!13551 (exprs!6968 lt!2521080)) (content!13551 (exprs!6968 ct2!306)))))))

(assert (=> d!2196330 (= lt!2521166 e!4230141)))

(declare-fun c!1309316 () Bool)

(assert (=> d!2196330 (= c!1309316 (is-Nil!67820 (exprs!6968 lt!2521080)))))

(assert (=> d!2196330 (= (++!15524 (exprs!6968 lt!2521080) (exprs!6968 ct2!306)) lt!2521166)))

(assert (= (and d!2196330 c!1309316) b!7036684))

(assert (= (and d!2196330 (not c!1309316)) b!7036685))

(assert (= (and d!2196330 res!2872500) b!7036686))

(assert (= (and b!7036686 res!2872499) b!7036687))

(declare-fun m!7745864 () Bool)

(assert (=> b!7036686 m!7745864))

(declare-fun m!7745866 () Bool)

(assert (=> b!7036686 m!7745866))

(assert (=> b!7036686 m!7745300))

(declare-fun m!7745868 () Bool)

(assert (=> b!7036685 m!7745868))

(declare-fun m!7745870 () Bool)

(assert (=> d!2196330 m!7745870))

(declare-fun m!7745872 () Bool)

(assert (=> d!2196330 m!7745872))

(assert (=> d!2196330 m!7745308))

(assert (=> bs!1872069 d!2196330))

(declare-fun d!2196332 () Bool)

(assert (=> d!2196332 (= (isEmpty!39563 lt!2520827) (is-Nil!67821 lt!2520827))))

(assert (=> d!2196094 d!2196332))

(declare-fun d!2196334 () Bool)

(assert (=> d!2196334 (= (flatMap!2419 lt!2520847 lambda!415604) (choose!53329 lt!2520847 lambda!415604))))

(declare-fun bs!1872119 () Bool)

(assert (= bs!1872119 d!2196334))

(declare-fun m!7745874 () Bool)

(assert (=> bs!1872119 m!7745874))

(assert (=> d!2196174 d!2196334))

(declare-fun bs!1872120 () Bool)

(declare-fun d!2196336 () Bool)

(assert (= bs!1872120 (and d!2196336 b!7036151)))

(declare-fun lambda!415625 () Int)

(assert (=> bs!1872120 (= lambda!415625 lambda!415521)))

(declare-fun bs!1872121 () Bool)

(assert (= bs!1872121 (and d!2196336 d!2196138)))

(assert (=> bs!1872121 (= lambda!415625 lambda!415597)))

(declare-fun bs!1872122 () Bool)

(assert (= bs!1872122 (and d!2196336 d!2196160)))

(assert (=> bs!1872122 (= lambda!415625 lambda!415603)))

(assert (=> d!2196336 (= (inv!86540 setElem!49241) (forall!16389 (exprs!6968 setElem!49241) lambda!415625))))

(declare-fun bs!1872123 () Bool)

(assert (= bs!1872123 d!2196336))

(declare-fun m!7745876 () Bool)

(assert (=> bs!1872123 m!7745876))

(assert (=> setNonEmpty!49241 d!2196336))

(declare-fun b!7036690 () Bool)

(declare-fun res!2872501 () Bool)

(declare-fun e!4230144 () Bool)

(assert (=> b!7036690 (=> (not res!2872501) (not e!4230144))))

(declare-fun lt!2521167 () List!67944)

(assert (=> b!7036690 (= res!2872501 (= (size!41074 lt!2521167) (+ (size!41074 (t!381713 lt!2520840)) (size!41074 (exprs!6968 ct2!306)))))))

(declare-fun b!7036691 () Bool)

(assert (=> b!7036691 (= e!4230144 (or (not (= (exprs!6968 ct2!306) Nil!67820)) (= lt!2521167 (t!381713 lt!2520840))))))

(declare-fun b!7036689 () Bool)

(declare-fun e!4230143 () List!67944)

(assert (=> b!7036689 (= e!4230143 (Cons!67820 (h!74268 (t!381713 lt!2520840)) (++!15524 (t!381713 (t!381713 lt!2520840)) (exprs!6968 ct2!306))))))

(declare-fun b!7036688 () Bool)

(assert (=> b!7036688 (= e!4230143 (exprs!6968 ct2!306))))

(declare-fun d!2196338 () Bool)

(assert (=> d!2196338 e!4230144))

(declare-fun res!2872502 () Bool)

(assert (=> d!2196338 (=> (not res!2872502) (not e!4230144))))

(assert (=> d!2196338 (= res!2872502 (= (content!13551 lt!2521167) (set.union (content!13551 (t!381713 lt!2520840)) (content!13551 (exprs!6968 ct2!306)))))))

(assert (=> d!2196338 (= lt!2521167 e!4230143)))

(declare-fun c!1309317 () Bool)

(assert (=> d!2196338 (= c!1309317 (is-Nil!67820 (t!381713 lt!2520840)))))

(assert (=> d!2196338 (= (++!15524 (t!381713 lt!2520840) (exprs!6968 ct2!306)) lt!2521167)))

(assert (= (and d!2196338 c!1309317) b!7036688))

(assert (= (and d!2196338 (not c!1309317)) b!7036689))

(assert (= (and d!2196338 res!2872502) b!7036690))

(assert (= (and b!7036690 res!2872501) b!7036691))

(declare-fun m!7745878 () Bool)

(assert (=> b!7036690 m!7745878))

(declare-fun m!7745880 () Bool)

(assert (=> b!7036690 m!7745880))

(assert (=> b!7036690 m!7745300))

(declare-fun m!7745882 () Bool)

(assert (=> b!7036689 m!7745882))

(declare-fun m!7745884 () Bool)

(assert (=> d!2196338 m!7745884))

(declare-fun m!7745886 () Bool)

(assert (=> d!2196338 m!7745886))

(assert (=> d!2196338 m!7745308))

(assert (=> b!7036335 d!2196338))

(declare-fun bs!1872124 () Bool)

(declare-fun d!2196340 () Bool)

(assert (= bs!1872124 (and d!2196340 b!7036157)))

(declare-fun lambda!415628 () Int)

(assert (=> bs!1872124 (not (= lambda!415628 lambda!415519))))

(declare-fun bs!1872125 () Bool)

(assert (= bs!1872125 (and d!2196340 d!2196084)))

(assert (=> bs!1872125 (not (= lambda!415628 lambda!415591))))

(declare-fun bs!1872126 () Bool)

(assert (= bs!1872126 (and d!2196340 d!2196088)))

(assert (=> bs!1872126 (not (= lambda!415628 lambda!415594))))

(assert (=> d!2196340 (= (nullableZipper!2585 lt!2520800) (exists!3407 lt!2520800 lambda!415628))))

(declare-fun bs!1872127 () Bool)

(assert (= bs!1872127 d!2196340))

(declare-fun m!7745888 () Bool)

(assert (=> bs!1872127 m!7745888))

(assert (=> b!7036362 d!2196340))

(declare-fun d!2196342 () Bool)

(declare-fun lt!2521170 () Int)

(assert (=> d!2196342 (>= lt!2521170 0)))

(declare-fun e!4230147 () Int)

(assert (=> d!2196342 (= lt!2521170 e!4230147)))

(declare-fun c!1309322 () Bool)

(assert (=> d!2196342 (= c!1309322 (is-Nil!67821 lt!2521083))))

(assert (=> d!2196342 (= (size!41075 lt!2521083) lt!2521170)))

(declare-fun b!7036696 () Bool)

(assert (=> b!7036696 (= e!4230147 0)))

(declare-fun b!7036697 () Bool)

(assert (=> b!7036697 (= e!4230147 (+ 1 (size!41075 (t!381714 lt!2521083))))))

(assert (= (and d!2196342 c!1309322) b!7036696))

(assert (= (and d!2196342 (not c!1309322)) b!7036697))

(declare-fun m!7745890 () Bool)

(assert (=> b!7036697 m!7745890))

(assert (=> b!7036374 d!2196342))

(declare-fun d!2196344 () Bool)

(declare-fun lt!2521171 () Int)

(assert (=> d!2196344 (>= lt!2521171 0)))

(declare-fun e!4230148 () Int)

(assert (=> d!2196344 (= lt!2521171 e!4230148)))

(declare-fun c!1309323 () Bool)

(assert (=> d!2196344 (= c!1309323 (is-Nil!67821 (_1!37348 lt!2520831)))))

(assert (=> d!2196344 (= (size!41075 (_1!37348 lt!2520831)) lt!2521171)))

(declare-fun b!7036698 () Bool)

(assert (=> b!7036698 (= e!4230148 0)))

(declare-fun b!7036699 () Bool)

(assert (=> b!7036699 (= e!4230148 (+ 1 (size!41075 (t!381714 (_1!37348 lt!2520831)))))))

(assert (= (and d!2196344 c!1309323) b!7036698))

(assert (= (and d!2196344 (not c!1309323)) b!7036699))

(declare-fun m!7745892 () Bool)

(assert (=> b!7036699 m!7745892))

(assert (=> b!7036374 d!2196344))

(declare-fun d!2196346 () Bool)

(declare-fun lt!2521172 () Int)

(assert (=> d!2196346 (>= lt!2521172 0)))

(declare-fun e!4230149 () Int)

(assert (=> d!2196346 (= lt!2521172 e!4230149)))

(declare-fun c!1309324 () Bool)

(assert (=> d!2196346 (= c!1309324 (is-Nil!67821 (_2!37348 lt!2520831)))))

(assert (=> d!2196346 (= (size!41075 (_2!37348 lt!2520831)) lt!2521172)))

(declare-fun b!7036700 () Bool)

(assert (=> b!7036700 (= e!4230149 0)))

(declare-fun b!7036701 () Bool)

(assert (=> b!7036701 (= e!4230149 (+ 1 (size!41075 (t!381714 (_2!37348 lt!2520831)))))))

(assert (= (and d!2196346 c!1309324) b!7036700))

(assert (= (and d!2196346 (not c!1309324)) b!7036701))

(declare-fun m!7745894 () Bool)

(assert (=> b!7036701 m!7745894))

(assert (=> b!7036374 d!2196346))

(declare-fun d!2196348 () Bool)

(assert (=> d!2196348 true))

(declare-fun setRes!49247 () Bool)

(assert (=> d!2196348 setRes!49247))

(declare-fun condSetEmpty!49247 () Bool)

(declare-fun res!2872505 () (Set Context!12936))

(assert (=> d!2196348 (= condSetEmpty!49247 (= res!2872505 (as set.empty (Set Context!12936))))))

(assert (=> d!2196348 (= (choose!53329 lt!2520822 lambda!415522) res!2872505)))

(declare-fun setIsEmpty!49247 () Bool)

(assert (=> setIsEmpty!49247 setRes!49247))

(declare-fun setNonEmpty!49247 () Bool)

(declare-fun setElem!49247 () Context!12936)

(declare-fun tp!1936905 () Bool)

(declare-fun e!4230152 () Bool)

(assert (=> setNonEmpty!49247 (= setRes!49247 (and tp!1936905 (inv!86540 setElem!49247) e!4230152))))

(declare-fun setRest!49247 () (Set Context!12936))

(assert (=> setNonEmpty!49247 (= res!2872505 (set.union (set.insert setElem!49247 (as set.empty (Set Context!12936))) setRest!49247))))

(declare-fun b!7036704 () Bool)

(declare-fun tp!1936904 () Bool)

(assert (=> b!7036704 (= e!4230152 tp!1936904)))

(assert (= (and d!2196348 condSetEmpty!49247) setIsEmpty!49247))

(assert (= (and d!2196348 (not condSetEmpty!49247)) setNonEmpty!49247))

(assert (= setNonEmpty!49247 b!7036704))

(declare-fun m!7745896 () Bool)

(assert (=> setNonEmpty!49247 m!7745896))

(assert (=> d!2196078 d!2196348))

(declare-fun d!2196350 () Bool)

(declare-fun res!2872510 () Bool)

(declare-fun e!4230157 () Bool)

(assert (=> d!2196350 (=> res!2872510 e!4230157)))

(assert (=> d!2196350 (= res!2872510 (is-Nil!67822 lt!2521073))))

(assert (=> d!2196350 (= (noDuplicate!2633 lt!2521073) e!4230157)))

(declare-fun b!7036709 () Bool)

(declare-fun e!4230158 () Bool)

(assert (=> b!7036709 (= e!4230157 e!4230158)))

(declare-fun res!2872511 () Bool)

(assert (=> b!7036709 (=> (not res!2872511) (not e!4230158))))

(assert (=> b!7036709 (= res!2872511 (not (contains!20462 (t!381715 lt!2521073) (h!74270 lt!2521073))))))

(declare-fun b!7036710 () Bool)

(assert (=> b!7036710 (= e!4230158 (noDuplicate!2633 (t!381715 lt!2521073)))))

(assert (= (and d!2196350 (not res!2872510)) b!7036709))

(assert (= (and b!7036709 res!2872511) b!7036710))

(declare-fun m!7745898 () Bool)

(assert (=> b!7036709 m!7745898))

(declare-fun m!7745900 () Bool)

(assert (=> b!7036710 m!7745900))

(assert (=> d!2196112 d!2196350))

(declare-fun d!2196352 () Bool)

(declare-fun e!4230167 () Bool)

(assert (=> d!2196352 e!4230167))

(declare-fun res!2872517 () Bool)

(assert (=> d!2196352 (=> (not res!2872517) (not e!4230167))))

(declare-fun res!2872516 () List!67946)

(assert (=> d!2196352 (= res!2872517 (noDuplicate!2633 res!2872516))))

(declare-fun e!4230166 () Bool)

(assert (=> d!2196352 e!4230166))

(assert (=> d!2196352 (= (choose!53331 z1!570) res!2872516)))

(declare-fun b!7036718 () Bool)

(declare-fun e!4230165 () Bool)

(declare-fun tp!1936911 () Bool)

(assert (=> b!7036718 (= e!4230165 tp!1936911)))

(declare-fun tp!1936910 () Bool)

(declare-fun b!7036717 () Bool)

(assert (=> b!7036717 (= e!4230166 (and (inv!86540 (h!74270 res!2872516)) e!4230165 tp!1936910))))

(declare-fun b!7036719 () Bool)

(assert (=> b!7036719 (= e!4230167 (= (content!13550 res!2872516) z1!570))))

(assert (= b!7036717 b!7036718))

(assert (= (and d!2196352 (is-Cons!67822 res!2872516)) b!7036717))

(assert (= (and d!2196352 res!2872517) b!7036719))

(declare-fun m!7745902 () Bool)

(assert (=> d!2196352 m!7745902))

(declare-fun m!7745904 () Bool)

(assert (=> b!7036717 m!7745904))

(declare-fun m!7745906 () Bool)

(assert (=> b!7036719 m!7745906))

(assert (=> d!2196112 d!2196352))

(declare-fun b!7036722 () Bool)

(declare-fun res!2872519 () Bool)

(declare-fun e!4230169 () Bool)

(assert (=> b!7036722 (=> (not res!2872519) (not e!4230169))))

(declare-fun lt!2521173 () List!67945)

(assert (=> b!7036722 (= res!2872519 (= (size!41075 lt!2521173) (+ (size!41075 (_1!37348 (get!23764 lt!2521091))) (size!41075 (_2!37348 (get!23764 lt!2521091))))))))

(declare-fun b!7036723 () Bool)

(assert (=> b!7036723 (= e!4230169 (or (not (= (_2!37348 (get!23764 lt!2521091)) Nil!67821)) (= lt!2521173 (_1!37348 (get!23764 lt!2521091)))))))

(declare-fun d!2196354 () Bool)

(assert (=> d!2196354 e!4230169))

(declare-fun res!2872518 () Bool)

(assert (=> d!2196354 (=> (not res!2872518) (not e!4230169))))

(assert (=> d!2196354 (= res!2872518 (= (content!13552 lt!2521173) (set.union (content!13552 (_1!37348 (get!23764 lt!2521091))) (content!13552 (_2!37348 (get!23764 lt!2521091))))))))

(declare-fun e!4230168 () List!67945)

(assert (=> d!2196354 (= lt!2521173 e!4230168)))

(declare-fun c!1309325 () Bool)

(assert (=> d!2196354 (= c!1309325 (is-Nil!67821 (_1!37348 (get!23764 lt!2521091))))))

(assert (=> d!2196354 (= (++!15525 (_1!37348 (get!23764 lt!2521091)) (_2!37348 (get!23764 lt!2521091))) lt!2521173)))

(declare-fun b!7036720 () Bool)

(assert (=> b!7036720 (= e!4230168 (_2!37348 (get!23764 lt!2521091)))))

(declare-fun b!7036721 () Bool)

(assert (=> b!7036721 (= e!4230168 (Cons!67821 (h!74269 (_1!37348 (get!23764 lt!2521091))) (++!15525 (t!381714 (_1!37348 (get!23764 lt!2521091))) (_2!37348 (get!23764 lt!2521091)))))))

(assert (= (and d!2196354 c!1309325) b!7036720))

(assert (= (and d!2196354 (not c!1309325)) b!7036721))

(assert (= (and d!2196354 res!2872518) b!7036722))

(assert (= (and b!7036722 res!2872519) b!7036723))

(declare-fun m!7745908 () Bool)

(assert (=> b!7036722 m!7745908))

(declare-fun m!7745910 () Bool)

(assert (=> b!7036722 m!7745910))

(declare-fun m!7745912 () Bool)

(assert (=> b!7036722 m!7745912))

(declare-fun m!7745914 () Bool)

(assert (=> d!2196354 m!7745914))

(declare-fun m!7745916 () Bool)

(assert (=> d!2196354 m!7745916))

(declare-fun m!7745918 () Bool)

(assert (=> d!2196354 m!7745918))

(declare-fun m!7745920 () Bool)

(assert (=> b!7036721 m!7745920))

(assert (=> b!7036397 d!2196354))

(declare-fun d!2196356 () Bool)

(assert (=> d!2196356 (= (get!23764 lt!2521091) (v!53164 lt!2521091))))

(assert (=> b!7036397 d!2196356))

(assert (=> d!2196066 d!2196072))

(declare-fun d!2196358 () Bool)

(assert (=> d!2196358 (= (flatMap!2419 lt!2520793 lambda!415522) (dynLambda!27405 lambda!415522 lt!2520842))))

(assert (=> d!2196358 true))

(declare-fun _$13!4494 () Unit!161622)

(assert (=> d!2196358 (= (choose!53328 lt!2520793 lt!2520842 lambda!415522) _$13!4494)))

(declare-fun b_lambda!266947 () Bool)

(assert (=> (not b_lambda!266947) (not d!2196358)))

(declare-fun bs!1872128 () Bool)

(assert (= bs!1872128 d!2196358))

(assert (=> bs!1872128 m!7744946))

(assert (=> bs!1872128 m!7745196))

(assert (=> d!2196066 d!2196358))

(declare-fun d!2196360 () Bool)

(declare-fun res!2872524 () Bool)

(declare-fun e!4230174 () Bool)

(assert (=> d!2196360 (=> res!2872524 e!4230174)))

(assert (=> d!2196360 (= res!2872524 (is-Nil!67822 lt!2520811))))

(assert (=> d!2196360 (= (forall!16390 lt!2520811 lambda!415594) e!4230174)))

(declare-fun b!7036728 () Bool)

(declare-fun e!4230175 () Bool)

(assert (=> b!7036728 (= e!4230174 e!4230175)))

(declare-fun res!2872525 () Bool)

(assert (=> b!7036728 (=> (not res!2872525) (not e!4230175))))

(assert (=> b!7036728 (= res!2872525 (dynLambda!27407 lambda!415594 (h!74270 lt!2520811)))))

(declare-fun b!7036729 () Bool)

(assert (=> b!7036729 (= e!4230175 (forall!16390 (t!381715 lt!2520811) lambda!415594))))

(assert (= (and d!2196360 (not res!2872524)) b!7036728))

(assert (= (and b!7036728 res!2872525) b!7036729))

(declare-fun b_lambda!266949 () Bool)

(assert (=> (not b_lambda!266949) (not b!7036728)))

(declare-fun m!7745922 () Bool)

(assert (=> b!7036728 m!7745922))

(declare-fun m!7745924 () Bool)

(assert (=> b!7036729 m!7745924))

(assert (=> d!2196088 d!2196360))

(declare-fun d!2196362 () Bool)

(declare-fun res!2872530 () Bool)

(declare-fun e!4230180 () Bool)

(assert (=> d!2196362 (=> res!2872530 e!4230180)))

(assert (=> d!2196362 (= res!2872530 (is-Nil!67820 (exprs!6968 setElem!49235)))))

(assert (=> d!2196362 (= (forall!16389 (exprs!6968 setElem!49235) lambda!415597) e!4230180)))

(declare-fun b!7036734 () Bool)

(declare-fun e!4230181 () Bool)

(assert (=> b!7036734 (= e!4230180 e!4230181)))

(declare-fun res!2872531 () Bool)

(assert (=> b!7036734 (=> (not res!2872531) (not e!4230181))))

(declare-fun dynLambda!27413 (Int Regex!17472) Bool)

(assert (=> b!7036734 (= res!2872531 (dynLambda!27413 lambda!415597 (h!74268 (exprs!6968 setElem!49235))))))

(declare-fun b!7036735 () Bool)

(assert (=> b!7036735 (= e!4230181 (forall!16389 (t!381713 (exprs!6968 setElem!49235)) lambda!415597))))

(assert (= (and d!2196362 (not res!2872530)) b!7036734))

(assert (= (and b!7036734 res!2872531) b!7036735))

(declare-fun b_lambda!266951 () Bool)

(assert (=> (not b_lambda!266951) (not b!7036734)))

(declare-fun m!7745926 () Bool)

(assert (=> b!7036734 m!7745926))

(declare-fun m!7745928 () Bool)

(assert (=> b!7036735 m!7745928))

(assert (=> d!2196138 d!2196362))

(declare-fun d!2196364 () Bool)

(assert (=> d!2196364 (= (nullable!7183 (h!74268 (exprs!6968 lt!2520842))) (nullableFct!2733 (h!74268 (exprs!6968 lt!2520842))))))

(declare-fun bs!1872129 () Bool)

(assert (= bs!1872129 d!2196364))

(declare-fun m!7745930 () Bool)

(assert (=> bs!1872129 m!7745930))

(assert (=> b!7036289 d!2196364))

(declare-fun bs!1872130 () Bool)

(declare-fun d!2196366 () Bool)

(assert (= bs!1872130 (and d!2196366 b!7036157)))

(declare-fun lambda!415629 () Int)

(assert (=> bs!1872130 (not (= lambda!415629 lambda!415519))))

(declare-fun bs!1872131 () Bool)

(assert (= bs!1872131 (and d!2196366 d!2196084)))

(assert (=> bs!1872131 (not (= lambda!415629 lambda!415591))))

(declare-fun bs!1872132 () Bool)

(assert (= bs!1872132 (and d!2196366 d!2196088)))

(assert (=> bs!1872132 (not (= lambda!415629 lambda!415594))))

(declare-fun bs!1872133 () Bool)

(assert (= bs!1872133 (and d!2196366 d!2196340)))

(assert (=> bs!1872133 (= lambda!415629 lambda!415628)))

(assert (=> d!2196366 (= (nullableZipper!2585 lt!2520799) (exists!3407 lt!2520799 lambda!415629))))

(declare-fun bs!1872134 () Bool)

(assert (= bs!1872134 d!2196366))

(declare-fun m!7745932 () Bool)

(assert (=> bs!1872134 m!7745932))

(assert (=> b!7036405 d!2196366))

(declare-fun d!2196368 () Bool)

(declare-fun c!1309328 () Bool)

(assert (=> d!2196368 (= c!1309328 (is-Nil!67822 lt!2521055))))

(declare-fun e!4230184 () (Set Context!12936))

(assert (=> d!2196368 (= (content!13550 lt!2521055) e!4230184)))

(declare-fun b!7036740 () Bool)

(assert (=> b!7036740 (= e!4230184 (as set.empty (Set Context!12936)))))

(declare-fun b!7036741 () Bool)

(assert (=> b!7036741 (= e!4230184 (set.union (set.insert (h!74270 lt!2521055) (as set.empty (Set Context!12936))) (content!13550 (t!381715 lt!2521055))))))

(assert (= (and d!2196368 c!1309328) b!7036740))

(assert (= (and d!2196368 (not c!1309328)) b!7036741))

(declare-fun m!7745934 () Bool)

(assert (=> b!7036741 m!7745934))

(declare-fun m!7745936 () Bool)

(assert (=> b!7036741 m!7745936))

(assert (=> b!7036309 d!2196368))

(declare-fun b!7036758 () Bool)

(declare-fun c!1309339 () Bool)

(assert (=> b!7036758 (= c!1309339 (is-Union!17472 (h!74268 (exprs!6968 lt!2520844))))))

(declare-fun e!4230194 () Int)

(declare-fun e!4230196 () Int)

(assert (=> b!7036758 (= e!4230194 e!4230196)))

(declare-fun b!7036759 () Bool)

(declare-fun e!4230193 () Int)

(declare-fun call!639052 () Int)

(declare-fun call!639053 () Int)

(assert (=> b!7036759 (= e!4230193 (+ 1 call!639052 call!639053))))

(declare-fun b!7036760 () Bool)

(declare-fun e!4230195 () Int)

(assert (=> b!7036760 (= e!4230195 e!4230194)))

(declare-fun c!1309340 () Bool)

(assert (=> b!7036760 (= c!1309340 (is-Star!17472 (h!74268 (exprs!6968 lt!2520844))))))

(declare-fun b!7036761 () Bool)

(declare-fun call!639054 () Int)

(assert (=> b!7036761 (= e!4230194 (+ 1 call!639054))))

(declare-fun b!7036762 () Bool)

(assert (=> b!7036762 (= e!4230196 (+ 1 call!639053 call!639052))))

(declare-fun bm!639047 () Bool)

(assert (=> bm!639047 (= call!639054 (regexDepthTotal!308 (ite c!1309340 (reg!17801 (h!74268 (exprs!6968 lt!2520844))) (ite c!1309339 (regTwo!35457 (h!74268 (exprs!6968 lt!2520844))) (regOne!35456 (h!74268 (exprs!6968 lt!2520844)))))))))

(declare-fun d!2196370 () Bool)

(declare-fun lt!2521176 () Int)

(assert (=> d!2196370 (> lt!2521176 0)))

(assert (=> d!2196370 (= lt!2521176 e!4230195)))

(declare-fun c!1309337 () Bool)

(assert (=> d!2196370 (= c!1309337 (is-ElementMatch!17472 (h!74268 (exprs!6968 lt!2520844))))))

(assert (=> d!2196370 (= (regexDepthTotal!308 (h!74268 (exprs!6968 lt!2520844))) lt!2521176)))

(declare-fun bm!639048 () Bool)

(assert (=> bm!639048 (= call!639052 call!639054)))

(declare-fun bm!639049 () Bool)

(assert (=> bm!639049 (= call!639053 (regexDepthTotal!308 (ite c!1309339 (regOne!35457 (h!74268 (exprs!6968 lt!2520844))) (regTwo!35456 (h!74268 (exprs!6968 lt!2520844))))))))

(declare-fun b!7036763 () Bool)

(assert (=> b!7036763 (= e!4230193 1)))

(declare-fun b!7036764 () Bool)

(assert (=> b!7036764 (= e!4230196 e!4230193)))

(declare-fun c!1309338 () Bool)

(assert (=> b!7036764 (= c!1309338 (is-Concat!26317 (h!74268 (exprs!6968 lt!2520844))))))

(declare-fun b!7036765 () Bool)

(assert (=> b!7036765 (= e!4230195 1)))

(assert (= (and d!2196370 c!1309337) b!7036765))

(assert (= (and d!2196370 (not c!1309337)) b!7036760))

(assert (= (and b!7036760 c!1309340) b!7036761))

(assert (= (and b!7036760 (not c!1309340)) b!7036758))

(assert (= (and b!7036758 c!1309339) b!7036762))

(assert (= (and b!7036758 (not c!1309339)) b!7036764))

(assert (= (and b!7036764 c!1309338) b!7036759))

(assert (= (and b!7036764 (not c!1309338)) b!7036763))

(assert (= (or b!7036762 b!7036759) bm!639048))

(assert (= (or b!7036762 b!7036759) bm!639049))

(assert (= (or b!7036761 bm!639048) bm!639047))

(declare-fun m!7745938 () Bool)

(assert (=> bm!639047 m!7745938))

(declare-fun m!7745940 () Bool)

(assert (=> bm!639049 m!7745940))

(assert (=> b!7036345 d!2196370))

(declare-fun d!2196372 () Bool)

(declare-fun lt!2521177 () Int)

(assert (=> d!2196372 (>= lt!2521177 0)))

(declare-fun e!4230197 () Int)

(assert (=> d!2196372 (= lt!2521177 e!4230197)))

(declare-fun c!1309341 () Bool)

(assert (=> d!2196372 (= c!1309341 (is-Cons!67820 (exprs!6968 (Context!12937 (t!381713 (exprs!6968 lt!2520844))))))))

(assert (=> d!2196372 (= (contextDepthTotal!507 (Context!12937 (t!381713 (exprs!6968 lt!2520844)))) lt!2521177)))

(declare-fun b!7036766 () Bool)

(assert (=> b!7036766 (= e!4230197 (+ (regexDepthTotal!308 (h!74268 (exprs!6968 (Context!12937 (t!381713 (exprs!6968 lt!2520844)))))) (contextDepthTotal!507 (Context!12937 (t!381713 (exprs!6968 (Context!12937 (t!381713 (exprs!6968 lt!2520844)))))))))))

(declare-fun b!7036767 () Bool)

(assert (=> b!7036767 (= e!4230197 1)))

(assert (= (and d!2196372 c!1309341) b!7036766))

(assert (= (and d!2196372 (not c!1309341)) b!7036767))

(declare-fun m!7745942 () Bool)

(assert (=> b!7036766 m!7745942))

(declare-fun m!7745944 () Bool)

(assert (=> b!7036766 m!7745944))

(assert (=> b!7036345 d!2196372))

(declare-fun d!2196374 () Bool)

(declare-fun c!1309342 () Bool)

(assert (=> d!2196374 (= c!1309342 (isEmpty!39563 lt!2520827))))

(declare-fun e!4230198 () Bool)

(assert (=> d!2196374 (= (matchZipper!3012 (set.union lt!2520794 lt!2520848) lt!2520827) e!4230198)))

(declare-fun b!7036768 () Bool)

(assert (=> b!7036768 (= e!4230198 (nullableZipper!2585 (set.union lt!2520794 lt!2520848)))))

(declare-fun b!7036769 () Bool)

(assert (=> b!7036769 (= e!4230198 (matchZipper!3012 (derivationStepZipper!2928 (set.union lt!2520794 lt!2520848) (head!14272 lt!2520827)) (tail!13565 lt!2520827)))))

(assert (= (and d!2196374 c!1309342) b!7036768))

(assert (= (and d!2196374 (not c!1309342)) b!7036769))

(assert (=> d!2196374 m!7745256))

(declare-fun m!7745946 () Bool)

(assert (=> b!7036768 m!7745946))

(assert (=> b!7036769 m!7745260))

(assert (=> b!7036769 m!7745260))

(declare-fun m!7745948 () Bool)

(assert (=> b!7036769 m!7745948))

(assert (=> b!7036769 m!7745264))

(assert (=> b!7036769 m!7745948))

(assert (=> b!7036769 m!7745264))

(declare-fun m!7745950 () Bool)

(assert (=> b!7036769 m!7745950))

(assert (=> d!2196122 d!2196374))

(assert (=> d!2196122 d!2196128))

(declare-fun e!4230201 () Bool)

(declare-fun d!2196376 () Bool)

(assert (=> d!2196376 (= (matchZipper!3012 (set.union lt!2520794 lt!2520848) lt!2520827) e!4230201)))

(declare-fun res!2872534 () Bool)

(assert (=> d!2196376 (=> res!2872534 e!4230201)))

(assert (=> d!2196376 (= res!2872534 (matchZipper!3012 lt!2520794 lt!2520827))))

(assert (=> d!2196376 true))

(declare-fun _$48!2497 () Unit!161622)

(assert (=> d!2196376 (= (choose!53327 lt!2520794 lt!2520848 lt!2520827) _$48!2497)))

(declare-fun b!7036772 () Bool)

(assert (=> b!7036772 (= e!4230201 (matchZipper!3012 lt!2520848 lt!2520827))))

(assert (= (and d!2196376 (not res!2872534)) b!7036772))

(assert (=> d!2196376 m!7745330))

(assert (=> d!2196376 m!7744990))

(assert (=> b!7036772 m!7744874))

(assert (=> d!2196122 d!2196376))

(declare-fun d!2196378 () Bool)

(assert (=> d!2196378 (= (isDefined!13578 lt!2521091) (not (isEmpty!39567 lt!2521091)))))

(declare-fun bs!1872135 () Bool)

(assert (= bs!1872135 d!2196378))

(declare-fun m!7745952 () Bool)

(assert (=> bs!1872135 m!7745952))

(assert (=> b!7036402 d!2196378))

(declare-fun d!2196380 () Bool)

(declare-fun c!1309343 () Bool)

(declare-fun e!4230202 () Bool)

(assert (=> d!2196380 (= c!1309343 e!4230202)))

(declare-fun res!2872535 () Bool)

(assert (=> d!2196380 (=> (not res!2872535) (not e!4230202))))

(assert (=> d!2196380 (= res!2872535 (is-Cons!67820 (exprs!6968 (Context!12937 (t!381713 (exprs!6968 lt!2520842))))))))

(declare-fun e!4230204 () (Set Context!12936))

(assert (=> d!2196380 (= (derivationStepZipperUp!2082 (Context!12937 (t!381713 (exprs!6968 lt!2520842))) (h!74269 s!7408)) e!4230204)))

(declare-fun b!7036773 () Bool)

(assert (=> b!7036773 (= e!4230202 (nullable!7183 (h!74268 (exprs!6968 (Context!12937 (t!381713 (exprs!6968 lt!2520842)))))))))

(declare-fun b!7036774 () Bool)

(declare-fun e!4230203 () (Set Context!12936))

(assert (=> b!7036774 (= e!4230203 (as set.empty (Set Context!12936)))))

(declare-fun b!7036775 () Bool)

(declare-fun call!639055 () (Set Context!12936))

(assert (=> b!7036775 (= e!4230203 call!639055)))

(declare-fun bm!639050 () Bool)

(assert (=> bm!639050 (= call!639055 (derivationStepZipperDown!2136 (h!74268 (exprs!6968 (Context!12937 (t!381713 (exprs!6968 lt!2520842))))) (Context!12937 (t!381713 (exprs!6968 (Context!12937 (t!381713 (exprs!6968 lt!2520842)))))) (h!74269 s!7408)))))

(declare-fun b!7036776 () Bool)

(assert (=> b!7036776 (= e!4230204 (set.union call!639055 (derivationStepZipperUp!2082 (Context!12937 (t!381713 (exprs!6968 (Context!12937 (t!381713 (exprs!6968 lt!2520842)))))) (h!74269 s!7408))))))

(declare-fun b!7036777 () Bool)

(assert (=> b!7036777 (= e!4230204 e!4230203)))

(declare-fun c!1309344 () Bool)

(assert (=> b!7036777 (= c!1309344 (is-Cons!67820 (exprs!6968 (Context!12937 (t!381713 (exprs!6968 lt!2520842))))))))

(assert (= (and d!2196380 res!2872535) b!7036773))

(assert (= (and d!2196380 c!1309343) b!7036776))

(assert (= (and d!2196380 (not c!1309343)) b!7036777))

(assert (= (and b!7036777 c!1309344) b!7036775))

(assert (= (and b!7036777 (not c!1309344)) b!7036774))

(assert (= (or b!7036776 b!7036775) bm!639050))

(declare-fun m!7745954 () Bool)

(assert (=> b!7036773 m!7745954))

(declare-fun m!7745956 () Bool)

(assert (=> bm!639050 m!7745956))

(declare-fun m!7745958 () Bool)

(assert (=> b!7036776 m!7745958))

(assert (=> b!7036292 d!2196380))

(declare-fun d!2196382 () Bool)

(declare-fun c!1309345 () Bool)

(assert (=> d!2196382 (= c!1309345 (isEmpty!39563 (tail!13565 (t!381714 s!7408))))))

(declare-fun e!4230205 () Bool)

(assert (=> d!2196382 (= (matchZipper!3012 (derivationStepZipper!2928 lt!2520800 (head!14272 (t!381714 s!7408))) (tail!13565 (t!381714 s!7408))) e!4230205)))

(declare-fun b!7036778 () Bool)

(assert (=> b!7036778 (= e!4230205 (nullableZipper!2585 (derivationStepZipper!2928 lt!2520800 (head!14272 (t!381714 s!7408)))))))

(declare-fun b!7036779 () Bool)

(assert (=> b!7036779 (= e!4230205 (matchZipper!3012 (derivationStepZipper!2928 (derivationStepZipper!2928 lt!2520800 (head!14272 (t!381714 s!7408))) (head!14272 (tail!13565 (t!381714 s!7408)))) (tail!13565 (tail!13565 (t!381714 s!7408)))))))

(assert (= (and d!2196382 c!1309345) b!7036778))

(assert (= (and d!2196382 (not c!1309345)) b!7036779))

(assert (=> d!2196382 m!7745176))

(declare-fun m!7745960 () Bool)

(assert (=> d!2196382 m!7745960))

(assert (=> b!7036778 m!7745376))

(declare-fun m!7745962 () Bool)

(assert (=> b!7036778 m!7745962))

(assert (=> b!7036779 m!7745176))

(declare-fun m!7745964 () Bool)

(assert (=> b!7036779 m!7745964))

(assert (=> b!7036779 m!7745376))

(assert (=> b!7036779 m!7745964))

(declare-fun m!7745966 () Bool)

(assert (=> b!7036779 m!7745966))

(assert (=> b!7036779 m!7745176))

(declare-fun m!7745968 () Bool)

(assert (=> b!7036779 m!7745968))

(assert (=> b!7036779 m!7745966))

(assert (=> b!7036779 m!7745968))

(declare-fun m!7745970 () Bool)

(assert (=> b!7036779 m!7745970))

(assert (=> b!7036363 d!2196382))

(declare-fun bs!1872136 () Bool)

(declare-fun d!2196384 () Bool)

(assert (= bs!1872136 (and d!2196384 b!7036143)))

(declare-fun lambda!415630 () Int)

(assert (=> bs!1872136 (= (= (head!14272 (t!381714 s!7408)) (h!74269 s!7408)) (= lambda!415630 lambda!415522))))

(declare-fun bs!1872137 () Bool)

(assert (= bs!1872137 (and d!2196384 d!2196070)))

(assert (=> bs!1872137 (= (= (head!14272 (t!381714 s!7408)) (h!74269 s!7408)) (= lambda!415630 lambda!415587))))

(declare-fun bs!1872138 () Bool)

(assert (= bs!1872138 (and d!2196384 d!2196074)))

(assert (=> bs!1872138 (= (= (head!14272 (t!381714 s!7408)) (h!74269 s!7408)) (= lambda!415630 lambda!415588))))

(declare-fun bs!1872139 () Bool)

(assert (= bs!1872139 (and d!2196384 d!2196174)))

(assert (=> bs!1872139 (= (= (head!14272 (t!381714 s!7408)) (h!74269 s!7408)) (= lambda!415630 lambda!415604))))

(assert (=> d!2196384 true))

(assert (=> d!2196384 (= (derivationStepZipper!2928 lt!2520800 (head!14272 (t!381714 s!7408))) (flatMap!2419 lt!2520800 lambda!415630))))

(declare-fun bs!1872140 () Bool)

(assert (= bs!1872140 d!2196384))

(declare-fun m!7745972 () Bool)

(assert (=> bs!1872140 m!7745972))

(assert (=> b!7036363 d!2196384))

(declare-fun d!2196386 () Bool)

(assert (=> d!2196386 (= (head!14272 (t!381714 s!7408)) (h!74269 (t!381714 s!7408)))))

(assert (=> b!7036363 d!2196386))

(declare-fun d!2196388 () Bool)

(assert (=> d!2196388 (= (tail!13565 (t!381714 s!7408)) (t!381714 (t!381714 s!7408)))))

(assert (=> b!7036363 d!2196388))

(declare-fun c!1309350 () Bool)

(declare-fun bm!639051 () Bool)

(declare-fun c!1309346 () Bool)

(declare-fun call!639056 () List!67944)

(assert (=> bm!639051 (= call!639056 ($colon$colon!2579 (exprs!6968 (Context!12937 (t!381713 (exprs!6968 lt!2520807)))) (ite (or c!1309346 c!1309350) (regTwo!35456 (h!74268 (exprs!6968 lt!2520807))) (h!74268 (exprs!6968 lt!2520807)))))))

(declare-fun b!7036780 () Bool)

(declare-fun c!1309348 () Bool)

(assert (=> b!7036780 (= c!1309348 (is-Star!17472 (h!74268 (exprs!6968 lt!2520807))))))

(declare-fun e!4230210 () (Set Context!12936))

(declare-fun e!4230208 () (Set Context!12936))

(assert (=> b!7036780 (= e!4230210 e!4230208)))

(declare-fun bm!639052 () Bool)

(declare-fun call!639059 () (Set Context!12936))

(declare-fun call!639061 () (Set Context!12936))

(assert (=> bm!639052 (= call!639059 call!639061)))

(declare-fun b!7036781 () Bool)

(assert (=> b!7036781 (= e!4230208 (as set.empty (Set Context!12936)))))

(declare-fun b!7036782 () Bool)

(declare-fun e!4230209 () (Set Context!12936))

(declare-fun call!639057 () (Set Context!12936))

(declare-fun call!639058 () (Set Context!12936))

(assert (=> b!7036782 (= e!4230209 (set.union call!639057 call!639058))))

(declare-fun bm!639053 () Bool)

(assert (=> bm!639053 (= call!639061 call!639058)))

(declare-fun b!7036783 () Bool)

(declare-fun e!4230207 () (Set Context!12936))

(assert (=> b!7036783 (= e!4230207 e!4230210)))

(assert (=> b!7036783 (= c!1309350 (is-Concat!26317 (h!74268 (exprs!6968 lt!2520807))))))

(declare-fun d!2196390 () Bool)

(declare-fun c!1309349 () Bool)

(assert (=> d!2196390 (= c!1309349 (and (is-ElementMatch!17472 (h!74268 (exprs!6968 lt!2520807))) (= (c!1309148 (h!74268 (exprs!6968 lt!2520807))) (h!74269 s!7408))))))

(declare-fun e!4230206 () (Set Context!12936))

(assert (=> d!2196390 (= (derivationStepZipperDown!2136 (h!74268 (exprs!6968 lt!2520807)) (Context!12937 (t!381713 (exprs!6968 lt!2520807))) (h!74269 s!7408)) e!4230206)))

(declare-fun b!7036784 () Bool)

(assert (=> b!7036784 (= e!4230208 call!639059)))

(declare-fun bm!639054 () Bool)

(declare-fun call!639060 () List!67944)

(assert (=> bm!639054 (= call!639060 call!639056)))

(declare-fun b!7036785 () Bool)

(assert (=> b!7036785 (= e!4230207 (set.union call!639057 call!639061))))

(declare-fun c!1309347 () Bool)

(declare-fun bm!639055 () Bool)

(assert (=> bm!639055 (= call!639057 (derivationStepZipperDown!2136 (ite c!1309347 (regOne!35457 (h!74268 (exprs!6968 lt!2520807))) (regOne!35456 (h!74268 (exprs!6968 lt!2520807)))) (ite c!1309347 (Context!12937 (t!381713 (exprs!6968 lt!2520807))) (Context!12937 call!639056)) (h!74269 s!7408)))))

(declare-fun b!7036786 () Bool)

(assert (=> b!7036786 (= e!4230210 call!639059)))

(declare-fun b!7036787 () Bool)

(assert (=> b!7036787 (= e!4230206 e!4230209)))

(assert (=> b!7036787 (= c!1309347 (is-Union!17472 (h!74268 (exprs!6968 lt!2520807))))))

(declare-fun b!7036788 () Bool)

(declare-fun e!4230211 () Bool)

(assert (=> b!7036788 (= c!1309346 e!4230211)))

(declare-fun res!2872536 () Bool)

(assert (=> b!7036788 (=> (not res!2872536) (not e!4230211))))

(assert (=> b!7036788 (= res!2872536 (is-Concat!26317 (h!74268 (exprs!6968 lt!2520807))))))

(assert (=> b!7036788 (= e!4230209 e!4230207)))

(declare-fun b!7036789 () Bool)

(assert (=> b!7036789 (= e!4230206 (set.insert (Context!12937 (t!381713 (exprs!6968 lt!2520807))) (as set.empty (Set Context!12936))))))

(declare-fun bm!639056 () Bool)

(assert (=> bm!639056 (= call!639058 (derivationStepZipperDown!2136 (ite c!1309347 (regTwo!35457 (h!74268 (exprs!6968 lt!2520807))) (ite c!1309346 (regTwo!35456 (h!74268 (exprs!6968 lt!2520807))) (ite c!1309350 (regOne!35456 (h!74268 (exprs!6968 lt!2520807))) (reg!17801 (h!74268 (exprs!6968 lt!2520807)))))) (ite (or c!1309347 c!1309346) (Context!12937 (t!381713 (exprs!6968 lt!2520807))) (Context!12937 call!639060)) (h!74269 s!7408)))))

(declare-fun b!7036790 () Bool)

(assert (=> b!7036790 (= e!4230211 (nullable!7183 (regOne!35456 (h!74268 (exprs!6968 lt!2520807)))))))

(assert (= (and d!2196390 c!1309349) b!7036789))

(assert (= (and d!2196390 (not c!1309349)) b!7036787))

(assert (= (and b!7036787 c!1309347) b!7036782))

(assert (= (and b!7036787 (not c!1309347)) b!7036788))

(assert (= (and b!7036788 res!2872536) b!7036790))

(assert (= (and b!7036788 c!1309346) b!7036785))

(assert (= (and b!7036788 (not c!1309346)) b!7036783))

(assert (= (and b!7036783 c!1309350) b!7036786))

(assert (= (and b!7036783 (not c!1309350)) b!7036780))

(assert (= (and b!7036780 c!1309348) b!7036784))

(assert (= (and b!7036780 (not c!1309348)) b!7036781))

(assert (= (or b!7036786 b!7036784) bm!639054))

(assert (= (or b!7036786 b!7036784) bm!639052))

(assert (= (or b!7036785 bm!639052) bm!639053))

(assert (= (or b!7036785 bm!639054) bm!639051))

(assert (= (or b!7036782 b!7036785) bm!639055))

(assert (= (or b!7036782 bm!639053) bm!639056))

(declare-fun m!7745974 () Bool)

(assert (=> bm!639051 m!7745974))

(declare-fun m!7745976 () Bool)

(assert (=> bm!639055 m!7745976))

(declare-fun m!7745978 () Bool)

(assert (=> b!7036789 m!7745978))

(declare-fun m!7745980 () Bool)

(assert (=> bm!639056 m!7745980))

(declare-fun m!7745982 () Bool)

(assert (=> b!7036790 m!7745982))

(assert (=> bm!639010 d!2196390))

(declare-fun d!2196392 () Bool)

(declare-fun c!1309353 () Bool)

(assert (=> d!2196392 (= c!1309353 (is-Nil!67821 lt!2521083))))

(declare-fun e!4230214 () (Set C!35214))

(assert (=> d!2196392 (= (content!13552 lt!2521083) e!4230214)))

(declare-fun b!7036795 () Bool)

(assert (=> b!7036795 (= e!4230214 (as set.empty (Set C!35214)))))

(declare-fun b!7036796 () Bool)

(assert (=> b!7036796 (= e!4230214 (set.union (set.insert (h!74269 lt!2521083) (as set.empty (Set C!35214))) (content!13552 (t!381714 lt!2521083))))))

(assert (= (and d!2196392 c!1309353) b!7036795))

(assert (= (and d!2196392 (not c!1309353)) b!7036796))

(declare-fun m!7745984 () Bool)

(assert (=> b!7036796 m!7745984))

(declare-fun m!7745986 () Bool)

(assert (=> b!7036796 m!7745986))

(assert (=> d!2196136 d!2196392))

(declare-fun d!2196394 () Bool)

(declare-fun c!1309354 () Bool)

(assert (=> d!2196394 (= c!1309354 (is-Nil!67821 (_1!37348 lt!2520831)))))

(declare-fun e!4230215 () (Set C!35214))

(assert (=> d!2196394 (= (content!13552 (_1!37348 lt!2520831)) e!4230215)))

(declare-fun b!7036797 () Bool)

(assert (=> b!7036797 (= e!4230215 (as set.empty (Set C!35214)))))

(declare-fun b!7036798 () Bool)

(assert (=> b!7036798 (= e!4230215 (set.union (set.insert (h!74269 (_1!37348 lt!2520831)) (as set.empty (Set C!35214))) (content!13552 (t!381714 (_1!37348 lt!2520831)))))))

(assert (= (and d!2196394 c!1309354) b!7036797))

(assert (= (and d!2196394 (not c!1309354)) b!7036798))

(declare-fun m!7745988 () Bool)

(assert (=> b!7036798 m!7745988))

(declare-fun m!7745990 () Bool)

(assert (=> b!7036798 m!7745990))

(assert (=> d!2196136 d!2196394))

(declare-fun d!2196396 () Bool)

(declare-fun c!1309355 () Bool)

(assert (=> d!2196396 (= c!1309355 (is-Nil!67821 (_2!37348 lt!2520831)))))

(declare-fun e!4230216 () (Set C!35214))

(assert (=> d!2196396 (= (content!13552 (_2!37348 lt!2520831)) e!4230216)))

(declare-fun b!7036799 () Bool)

(assert (=> b!7036799 (= e!4230216 (as set.empty (Set C!35214)))))

(declare-fun b!7036800 () Bool)

(assert (=> b!7036800 (= e!4230216 (set.union (set.insert (h!74269 (_2!37348 lt!2520831)) (as set.empty (Set C!35214))) (content!13552 (t!381714 (_2!37348 lt!2520831)))))))

(assert (= (and d!2196396 c!1309355) b!7036799))

(assert (= (and d!2196396 (not c!1309355)) b!7036800))

(declare-fun m!7745992 () Bool)

(assert (=> b!7036800 m!7745992))

(declare-fun m!7745994 () Bool)

(assert (=> b!7036800 m!7745994))

(assert (=> d!2196136 d!2196396))

(declare-fun bs!1872141 () Bool)

(declare-fun d!2196398 () Bool)

(assert (= bs!1872141 (and d!2196398 d!2196366)))

(declare-fun lambda!415631 () Int)

(assert (=> bs!1872141 (= lambda!415631 lambda!415629)))

(declare-fun bs!1872142 () Bool)

(assert (= bs!1872142 (and d!2196398 d!2196084)))

(assert (=> bs!1872142 (not (= lambda!415631 lambda!415591))))

(declare-fun bs!1872143 () Bool)

(assert (= bs!1872143 (and d!2196398 d!2196340)))

(assert (=> bs!1872143 (= lambda!415631 lambda!415628)))

(declare-fun bs!1872144 () Bool)

(assert (= bs!1872144 (and d!2196398 b!7036157)))

(assert (=> bs!1872144 (not (= lambda!415631 lambda!415519))))

(declare-fun bs!1872145 () Bool)

(assert (= bs!1872145 (and d!2196398 d!2196088)))

(assert (=> bs!1872145 (not (= lambda!415631 lambda!415594))))

(assert (=> d!2196398 (= (nullableZipper!2585 lt!2520833) (exists!3407 lt!2520833 lambda!415631))))

(declare-fun bs!1872146 () Bool)

(assert (= bs!1872146 d!2196398))

(declare-fun m!7745996 () Bool)

(assert (=> bs!1872146 m!7745996))

(assert (=> b!7036312 d!2196398))

(declare-fun d!2196400 () Bool)

(declare-fun c!1309356 () Bool)

(assert (=> d!2196400 (= c!1309356 (isEmpty!39563 (tail!13565 s!7408)))))

(declare-fun e!4230217 () Bool)

(assert (=> d!2196400 (= (matchZipper!3012 (derivationStepZipper!2928 lt!2520793 (head!14272 s!7408)) (tail!13565 s!7408)) e!4230217)))

(declare-fun b!7036801 () Bool)

(assert (=> b!7036801 (= e!4230217 (nullableZipper!2585 (derivationStepZipper!2928 lt!2520793 (head!14272 s!7408))))))

(declare-fun b!7036802 () Bool)

(assert (=> b!7036802 (= e!4230217 (matchZipper!3012 (derivationStepZipper!2928 (derivationStepZipper!2928 lt!2520793 (head!14272 s!7408)) (head!14272 (tail!13565 s!7408))) (tail!13565 (tail!13565 s!7408))))))

(assert (= (and d!2196400 c!1309356) b!7036801))

(assert (= (and d!2196400 (not c!1309356)) b!7036802))

(assert (=> d!2196400 m!7745158))

(declare-fun m!7745998 () Bool)

(assert (=> d!2196400 m!7745998))

(assert (=> b!7036801 m!7745156))

(declare-fun m!7746000 () Bool)

(assert (=> b!7036801 m!7746000))

(assert (=> b!7036802 m!7745158))

(declare-fun m!7746002 () Bool)

(assert (=> b!7036802 m!7746002))

(assert (=> b!7036802 m!7745156))

(assert (=> b!7036802 m!7746002))

(declare-fun m!7746004 () Bool)

(assert (=> b!7036802 m!7746004))

(assert (=> b!7036802 m!7745158))

(declare-fun m!7746006 () Bool)

(assert (=> b!7036802 m!7746006))

(assert (=> b!7036802 m!7746004))

(assert (=> b!7036802 m!7746006))

(declare-fun m!7746008 () Bool)

(assert (=> b!7036802 m!7746008))

(assert (=> b!7036269 d!2196400))

(declare-fun bs!1872147 () Bool)

(declare-fun d!2196402 () Bool)

(assert (= bs!1872147 (and d!2196402 d!2196174)))

(declare-fun lambda!415632 () Int)

(assert (=> bs!1872147 (= (= (head!14272 s!7408) (h!74269 s!7408)) (= lambda!415632 lambda!415604))))

(declare-fun bs!1872148 () Bool)

(assert (= bs!1872148 (and d!2196402 d!2196074)))

(assert (=> bs!1872148 (= (= (head!14272 s!7408) (h!74269 s!7408)) (= lambda!415632 lambda!415588))))

(declare-fun bs!1872149 () Bool)

(assert (= bs!1872149 (and d!2196402 b!7036143)))

(assert (=> bs!1872149 (= (= (head!14272 s!7408) (h!74269 s!7408)) (= lambda!415632 lambda!415522))))

(declare-fun bs!1872150 () Bool)

(assert (= bs!1872150 (and d!2196402 d!2196384)))

(assert (=> bs!1872150 (= (= (head!14272 s!7408) (head!14272 (t!381714 s!7408))) (= lambda!415632 lambda!415630))))

(declare-fun bs!1872151 () Bool)

(assert (= bs!1872151 (and d!2196402 d!2196070)))

(assert (=> bs!1872151 (= (= (head!14272 s!7408) (h!74269 s!7408)) (= lambda!415632 lambda!415587))))

(assert (=> d!2196402 true))

(assert (=> d!2196402 (= (derivationStepZipper!2928 lt!2520793 (head!14272 s!7408)) (flatMap!2419 lt!2520793 lambda!415632))))

(declare-fun bs!1872152 () Bool)

(assert (= bs!1872152 d!2196402))

(declare-fun m!7746010 () Bool)

(assert (=> bs!1872152 m!7746010))

(assert (=> b!7036269 d!2196402))

(declare-fun d!2196404 () Bool)

(assert (=> d!2196404 (= (head!14272 s!7408) (h!74269 s!7408))))

(assert (=> b!7036269 d!2196404))

(declare-fun d!2196406 () Bool)

(assert (=> d!2196406 (= (tail!13565 s!7408) (t!381714 s!7408))))

(assert (=> b!7036269 d!2196406))

(assert (=> b!7036347 d!2196094))

(declare-fun bm!639057 () Bool)

(declare-fun c!1309357 () Bool)

(declare-fun c!1309361 () Bool)

(declare-fun call!639062 () List!67944)

(assert (=> bm!639057 (= call!639062 ($colon$colon!2579 (exprs!6968 (Context!12937 (t!381713 (exprs!6968 lt!2520817)))) (ite (or c!1309357 c!1309361) (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (h!74268 (exprs!6968 lt!2520817)))))))

(declare-fun b!7036803 () Bool)

(declare-fun c!1309359 () Bool)

(assert (=> b!7036803 (= c!1309359 (is-Star!17472 (h!74268 (exprs!6968 lt!2520817))))))

(declare-fun e!4230222 () (Set Context!12936))

(declare-fun e!4230220 () (Set Context!12936))

(assert (=> b!7036803 (= e!4230222 e!4230220)))

(declare-fun bm!639058 () Bool)

(declare-fun call!639065 () (Set Context!12936))

(declare-fun call!639067 () (Set Context!12936))

(assert (=> bm!639058 (= call!639065 call!639067)))

(declare-fun b!7036804 () Bool)

(assert (=> b!7036804 (= e!4230220 (as set.empty (Set Context!12936)))))

(declare-fun b!7036805 () Bool)

(declare-fun e!4230221 () (Set Context!12936))

(declare-fun call!639063 () (Set Context!12936))

(declare-fun call!639064 () (Set Context!12936))

(assert (=> b!7036805 (= e!4230221 (set.union call!639063 call!639064))))

(declare-fun bm!639059 () Bool)

(assert (=> bm!639059 (= call!639067 call!639064)))

(declare-fun b!7036806 () Bool)

(declare-fun e!4230219 () (Set Context!12936))

(assert (=> b!7036806 (= e!4230219 e!4230222)))

(assert (=> b!7036806 (= c!1309361 (is-Concat!26317 (h!74268 (exprs!6968 lt!2520817))))))

(declare-fun d!2196408 () Bool)

(declare-fun c!1309360 () Bool)

(assert (=> d!2196408 (= c!1309360 (and (is-ElementMatch!17472 (h!74268 (exprs!6968 lt!2520817))) (= (c!1309148 (h!74268 (exprs!6968 lt!2520817))) (h!74269 s!7408))))))

(declare-fun e!4230218 () (Set Context!12936))

(assert (=> d!2196408 (= (derivationStepZipperDown!2136 (h!74268 (exprs!6968 lt!2520817)) (Context!12937 (t!381713 (exprs!6968 lt!2520817))) (h!74269 s!7408)) e!4230218)))

(declare-fun b!7036807 () Bool)

(assert (=> b!7036807 (= e!4230220 call!639065)))

(declare-fun bm!639060 () Bool)

(declare-fun call!639066 () List!67944)

(assert (=> bm!639060 (= call!639066 call!639062)))

(declare-fun b!7036808 () Bool)

(assert (=> b!7036808 (= e!4230219 (set.union call!639063 call!639067))))

(declare-fun bm!639061 () Bool)

(declare-fun c!1309358 () Bool)

(assert (=> bm!639061 (= call!639063 (derivationStepZipperDown!2136 (ite c!1309358 (regOne!35457 (h!74268 (exprs!6968 lt!2520817))) (regOne!35456 (h!74268 (exprs!6968 lt!2520817)))) (ite c!1309358 (Context!12937 (t!381713 (exprs!6968 lt!2520817))) (Context!12937 call!639062)) (h!74269 s!7408)))))

(declare-fun b!7036809 () Bool)

(assert (=> b!7036809 (= e!4230222 call!639065)))

(declare-fun b!7036810 () Bool)

(assert (=> b!7036810 (= e!4230218 e!4230221)))

(assert (=> b!7036810 (= c!1309358 (is-Union!17472 (h!74268 (exprs!6968 lt!2520817))))))

(declare-fun b!7036811 () Bool)

(declare-fun e!4230223 () Bool)

(assert (=> b!7036811 (= c!1309357 e!4230223)))

(declare-fun res!2872537 () Bool)

(assert (=> b!7036811 (=> (not res!2872537) (not e!4230223))))

(assert (=> b!7036811 (= res!2872537 (is-Concat!26317 (h!74268 (exprs!6968 lt!2520817))))))

(assert (=> b!7036811 (= e!4230221 e!4230219)))

(declare-fun b!7036812 () Bool)

(assert (=> b!7036812 (= e!4230218 (set.insert (Context!12937 (t!381713 (exprs!6968 lt!2520817))) (as set.empty (Set Context!12936))))))

(declare-fun bm!639062 () Bool)

(assert (=> bm!639062 (= call!639064 (derivationStepZipperDown!2136 (ite c!1309358 (regTwo!35457 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309357 (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309361 (regOne!35456 (h!74268 (exprs!6968 lt!2520817))) (reg!17801 (h!74268 (exprs!6968 lt!2520817)))))) (ite (or c!1309358 c!1309357) (Context!12937 (t!381713 (exprs!6968 lt!2520817))) (Context!12937 call!639066)) (h!74269 s!7408)))))

(declare-fun b!7036813 () Bool)

(assert (=> b!7036813 (= e!4230223 (nullable!7183 (regOne!35456 (h!74268 (exprs!6968 lt!2520817)))))))

(assert (= (and d!2196408 c!1309360) b!7036812))

(assert (= (and d!2196408 (not c!1309360)) b!7036810))

(assert (= (and b!7036810 c!1309358) b!7036805))

(assert (= (and b!7036810 (not c!1309358)) b!7036811))

(assert (= (and b!7036811 res!2872537) b!7036813))

(assert (= (and b!7036811 c!1309357) b!7036808))

(assert (= (and b!7036811 (not c!1309357)) b!7036806))

(assert (= (and b!7036806 c!1309361) b!7036809))

(assert (= (and b!7036806 (not c!1309361)) b!7036803))

(assert (= (and b!7036803 c!1309359) b!7036807))

(assert (= (and b!7036803 (not c!1309359)) b!7036804))

(assert (= (or b!7036809 b!7036807) bm!639060))

(assert (= (or b!7036809 b!7036807) bm!639058))

(assert (= (or b!7036808 bm!639058) bm!639059))

(assert (= (or b!7036808 bm!639060) bm!639057))

(assert (= (or b!7036805 b!7036808) bm!639061))

(assert (= (or b!7036805 bm!639059) bm!639062))

(declare-fun m!7746012 () Bool)

(assert (=> bm!639057 m!7746012))

(declare-fun m!7746014 () Bool)

(assert (=> bm!639061 m!7746014))

(declare-fun m!7746016 () Bool)

(assert (=> b!7036812 m!7746016))

(declare-fun m!7746018 () Bool)

(assert (=> bm!639062 m!7746018))

(assert (=> b!7036813 m!7745468))

(assert (=> bm!638984 d!2196408))

(declare-fun d!2196410 () Bool)

(assert (=> d!2196410 true))

(declare-fun setRes!49248 () Bool)

(assert (=> d!2196410 setRes!49248))

(declare-fun condSetEmpty!49248 () Bool)

(declare-fun res!2872538 () (Set Context!12936))

(assert (=> d!2196410 (= condSetEmpty!49248 (= res!2872538 (as set.empty (Set Context!12936))))))

(assert (=> d!2196410 (= (choose!53329 lt!2520803 lambda!415522) res!2872538)))

(declare-fun setIsEmpty!49248 () Bool)

(assert (=> setIsEmpty!49248 setRes!49248))

(declare-fun setElem!49248 () Context!12936)

(declare-fun setNonEmpty!49248 () Bool)

(declare-fun e!4230224 () Bool)

(declare-fun tp!1936913 () Bool)

(assert (=> setNonEmpty!49248 (= setRes!49248 (and tp!1936913 (inv!86540 setElem!49248) e!4230224))))

(declare-fun setRest!49248 () (Set Context!12936))

(assert (=> setNonEmpty!49248 (= res!2872538 (set.union (set.insert setElem!49248 (as set.empty (Set Context!12936))) setRest!49248))))

(declare-fun b!7036814 () Bool)

(declare-fun tp!1936912 () Bool)

(assert (=> b!7036814 (= e!4230224 tp!1936912)))

(assert (= (and d!2196410 condSetEmpty!49248) setIsEmpty!49248))

(assert (= (and d!2196410 (not condSetEmpty!49248)) setNonEmpty!49248))

(assert (= setNonEmpty!49248 b!7036814))

(declare-fun m!7746020 () Bool)

(assert (=> setNonEmpty!49248 m!7746020))

(assert (=> d!2196106 d!2196410))

(declare-fun bs!1872153 () Bool)

(declare-fun d!2196412 () Bool)

(assert (= bs!1872153 (and d!2196412 d!2196366)))

(declare-fun lambda!415633 () Int)

(assert (=> bs!1872153 (= lambda!415633 lambda!415629)))

(declare-fun bs!1872154 () Bool)

(assert (= bs!1872154 (and d!2196412 d!2196084)))

(assert (=> bs!1872154 (not (= lambda!415633 lambda!415591))))

(declare-fun bs!1872155 () Bool)

(assert (= bs!1872155 (and d!2196412 d!2196340)))

(assert (=> bs!1872155 (= lambda!415633 lambda!415628)))

(declare-fun bs!1872156 () Bool)

(assert (= bs!1872156 (and d!2196412 b!7036157)))

(assert (=> bs!1872156 (not (= lambda!415633 lambda!415519))))

(declare-fun bs!1872157 () Bool)

(assert (= bs!1872157 (and d!2196412 d!2196088)))

(assert (=> bs!1872157 (not (= lambda!415633 lambda!415594))))

(declare-fun bs!1872158 () Bool)

(assert (= bs!1872158 (and d!2196412 d!2196398)))

(assert (=> bs!1872158 (= lambda!415633 lambda!415631)))

(assert (=> d!2196412 (= (nullableZipper!2585 lt!2520822) (exists!3407 lt!2520822 lambda!415633))))

(declare-fun bs!1872159 () Bool)

(assert (= bs!1872159 d!2196412))

(declare-fun m!7746022 () Bool)

(assert (=> bs!1872159 m!7746022))

(assert (=> b!7036350 d!2196412))

(declare-fun bm!639063 () Bool)

(declare-fun c!1309362 () Bool)

(declare-fun c!1309366 () Bool)

(declare-fun call!639068 () List!67944)

(assert (=> bm!639063 (= call!639068 ($colon$colon!2579 (exprs!6968 (ite c!1309235 lt!2520844 (Context!12937 call!639009))) (ite (or c!1309362 c!1309366) (regTwo!35456 (ite c!1309235 (regOne!35457 (h!74268 (exprs!6968 lt!2520817))) (regOne!35456 (h!74268 (exprs!6968 lt!2520817))))) (ite c!1309235 (regOne!35457 (h!74268 (exprs!6968 lt!2520817))) (regOne!35456 (h!74268 (exprs!6968 lt!2520817)))))))))

(declare-fun b!7036815 () Bool)

(declare-fun c!1309364 () Bool)

(assert (=> b!7036815 (= c!1309364 (is-Star!17472 (ite c!1309235 (regOne!35457 (h!74268 (exprs!6968 lt!2520817))) (regOne!35456 (h!74268 (exprs!6968 lt!2520817))))))))

(declare-fun e!4230229 () (Set Context!12936))

(declare-fun e!4230227 () (Set Context!12936))

(assert (=> b!7036815 (= e!4230229 e!4230227)))

(declare-fun bm!639064 () Bool)

(declare-fun call!639071 () (Set Context!12936))

(declare-fun call!639073 () (Set Context!12936))

(assert (=> bm!639064 (= call!639071 call!639073)))

(declare-fun b!7036816 () Bool)

(assert (=> b!7036816 (= e!4230227 (as set.empty (Set Context!12936)))))

(declare-fun b!7036817 () Bool)

(declare-fun e!4230228 () (Set Context!12936))

(declare-fun call!639069 () (Set Context!12936))

(declare-fun call!639070 () (Set Context!12936))

(assert (=> b!7036817 (= e!4230228 (set.union call!639069 call!639070))))

(declare-fun bm!639065 () Bool)

(assert (=> bm!639065 (= call!639073 call!639070)))

(declare-fun b!7036818 () Bool)

(declare-fun e!4230226 () (Set Context!12936))

(assert (=> b!7036818 (= e!4230226 e!4230229)))

(assert (=> b!7036818 (= c!1309366 (is-Concat!26317 (ite c!1309235 (regOne!35457 (h!74268 (exprs!6968 lt!2520817))) (regOne!35456 (h!74268 (exprs!6968 lt!2520817))))))))

(declare-fun d!2196414 () Bool)

(declare-fun c!1309365 () Bool)

(assert (=> d!2196414 (= c!1309365 (and (is-ElementMatch!17472 (ite c!1309235 (regOne!35457 (h!74268 (exprs!6968 lt!2520817))) (regOne!35456 (h!74268 (exprs!6968 lt!2520817))))) (= (c!1309148 (ite c!1309235 (regOne!35457 (h!74268 (exprs!6968 lt!2520817))) (regOne!35456 (h!74268 (exprs!6968 lt!2520817))))) (h!74269 s!7408))))))

(declare-fun e!4230225 () (Set Context!12936))

(assert (=> d!2196414 (= (derivationStepZipperDown!2136 (ite c!1309235 (regOne!35457 (h!74268 (exprs!6968 lt!2520817))) (regOne!35456 (h!74268 (exprs!6968 lt!2520817)))) (ite c!1309235 lt!2520844 (Context!12937 call!639009)) (h!74269 s!7408)) e!4230225)))

(declare-fun b!7036819 () Bool)

(assert (=> b!7036819 (= e!4230227 call!639071)))

(declare-fun bm!639066 () Bool)

(declare-fun call!639072 () List!67944)

(assert (=> bm!639066 (= call!639072 call!639068)))

(declare-fun b!7036820 () Bool)

(assert (=> b!7036820 (= e!4230226 (set.union call!639069 call!639073))))

(declare-fun bm!639067 () Bool)

(declare-fun c!1309363 () Bool)

(assert (=> bm!639067 (= call!639069 (derivationStepZipperDown!2136 (ite c!1309363 (regOne!35457 (ite c!1309235 (regOne!35457 (h!74268 (exprs!6968 lt!2520817))) (regOne!35456 (h!74268 (exprs!6968 lt!2520817))))) (regOne!35456 (ite c!1309235 (regOne!35457 (h!74268 (exprs!6968 lt!2520817))) (regOne!35456 (h!74268 (exprs!6968 lt!2520817)))))) (ite c!1309363 (ite c!1309235 lt!2520844 (Context!12937 call!639009)) (Context!12937 call!639068)) (h!74269 s!7408)))))

(declare-fun b!7036821 () Bool)

(assert (=> b!7036821 (= e!4230229 call!639071)))

(declare-fun b!7036822 () Bool)

(assert (=> b!7036822 (= e!4230225 e!4230228)))

(assert (=> b!7036822 (= c!1309363 (is-Union!17472 (ite c!1309235 (regOne!35457 (h!74268 (exprs!6968 lt!2520817))) (regOne!35456 (h!74268 (exprs!6968 lt!2520817))))))))

(declare-fun b!7036823 () Bool)

(declare-fun e!4230230 () Bool)

(assert (=> b!7036823 (= c!1309362 e!4230230)))

(declare-fun res!2872539 () Bool)

(assert (=> b!7036823 (=> (not res!2872539) (not e!4230230))))

(assert (=> b!7036823 (= res!2872539 (is-Concat!26317 (ite c!1309235 (regOne!35457 (h!74268 (exprs!6968 lt!2520817))) (regOne!35456 (h!74268 (exprs!6968 lt!2520817))))))))

(assert (=> b!7036823 (= e!4230228 e!4230226)))

(declare-fun b!7036824 () Bool)

(assert (=> b!7036824 (= e!4230225 (set.insert (ite c!1309235 lt!2520844 (Context!12937 call!639009)) (as set.empty (Set Context!12936))))))

(declare-fun bm!639068 () Bool)

(assert (=> bm!639068 (= call!639070 (derivationStepZipperDown!2136 (ite c!1309363 (regTwo!35457 (ite c!1309235 (regOne!35457 (h!74268 (exprs!6968 lt!2520817))) (regOne!35456 (h!74268 (exprs!6968 lt!2520817))))) (ite c!1309362 (regTwo!35456 (ite c!1309235 (regOne!35457 (h!74268 (exprs!6968 lt!2520817))) (regOne!35456 (h!74268 (exprs!6968 lt!2520817))))) (ite c!1309366 (regOne!35456 (ite c!1309235 (regOne!35457 (h!74268 (exprs!6968 lt!2520817))) (regOne!35456 (h!74268 (exprs!6968 lt!2520817))))) (reg!17801 (ite c!1309235 (regOne!35457 (h!74268 (exprs!6968 lt!2520817))) (regOne!35456 (h!74268 (exprs!6968 lt!2520817)))))))) (ite (or c!1309363 c!1309362) (ite c!1309235 lt!2520844 (Context!12937 call!639009)) (Context!12937 call!639072)) (h!74269 s!7408)))))

(declare-fun b!7036825 () Bool)

(assert (=> b!7036825 (= e!4230230 (nullable!7183 (regOne!35456 (ite c!1309235 (regOne!35457 (h!74268 (exprs!6968 lt!2520817))) (regOne!35456 (h!74268 (exprs!6968 lt!2520817)))))))))

(assert (= (and d!2196414 c!1309365) b!7036824))

(assert (= (and d!2196414 (not c!1309365)) b!7036822))

(assert (= (and b!7036822 c!1309363) b!7036817))

(assert (= (and b!7036822 (not c!1309363)) b!7036823))

(assert (= (and b!7036823 res!2872539) b!7036825))

(assert (= (and b!7036823 c!1309362) b!7036820))

(assert (= (and b!7036823 (not c!1309362)) b!7036818))

(assert (= (and b!7036818 c!1309366) b!7036821))

(assert (= (and b!7036818 (not c!1309366)) b!7036815))

(assert (= (and b!7036815 c!1309364) b!7036819))

(assert (= (and b!7036815 (not c!1309364)) b!7036816))

(assert (= (or b!7036821 b!7036819) bm!639066))

(assert (= (or b!7036821 b!7036819) bm!639064))

(assert (= (or b!7036820 bm!639064) bm!639065))

(assert (= (or b!7036820 bm!639066) bm!639063))

(assert (= (or b!7036817 b!7036820) bm!639067))

(assert (= (or b!7036817 bm!639065) bm!639068))

(declare-fun m!7746024 () Bool)

(assert (=> bm!639063 m!7746024))

(declare-fun m!7746026 () Bool)

(assert (=> bm!639067 m!7746026))

(declare-fun m!7746028 () Bool)

(assert (=> b!7036824 m!7746028))

(declare-fun m!7746030 () Bool)

(assert (=> bm!639068 m!7746030))

(declare-fun m!7746032 () Bool)

(assert (=> b!7036825 m!7746032))

(assert (=> bm!639008 d!2196414))

(declare-fun d!2196416 () Bool)

(assert (=> d!2196416 (= (nullable!7183 (h!74268 (exprs!6968 lt!2520844))) (nullableFct!2733 (h!74268 (exprs!6968 lt!2520844))))))

(declare-fun bs!1872160 () Bool)

(assert (= bs!1872160 d!2196416))

(declare-fun m!7746034 () Bool)

(assert (=> bs!1872160 m!7746034))

(assert (=> b!7036321 d!2196416))

(declare-fun bs!1872161 () Bool)

(declare-fun d!2196418 () Bool)

(assert (= bs!1872161 (and d!2196418 d!2196084)))

(declare-fun lambda!415634 () Int)

(assert (=> bs!1872161 (not (= lambda!415634 lambda!415591))))

(declare-fun bs!1872162 () Bool)

(assert (= bs!1872162 (and d!2196418 d!2196340)))

(assert (=> bs!1872162 (= lambda!415634 lambda!415628)))

(declare-fun bs!1872163 () Bool)

(assert (= bs!1872163 (and d!2196418 b!7036157)))

(assert (=> bs!1872163 (not (= lambda!415634 lambda!415519))))

(declare-fun bs!1872164 () Bool)

(assert (= bs!1872164 (and d!2196418 d!2196366)))

(assert (=> bs!1872164 (= lambda!415634 lambda!415629)))

(declare-fun bs!1872165 () Bool)

(assert (= bs!1872165 (and d!2196418 d!2196412)))

(assert (=> bs!1872165 (= lambda!415634 lambda!415633)))

(declare-fun bs!1872166 () Bool)

(assert (= bs!1872166 (and d!2196418 d!2196088)))

(assert (=> bs!1872166 (not (= lambda!415634 lambda!415594))))

(declare-fun bs!1872167 () Bool)

(assert (= bs!1872167 (and d!2196418 d!2196398)))

(assert (=> bs!1872167 (= lambda!415634 lambda!415631)))

(assert (=> d!2196418 (= (nullableZipper!2585 lt!2520848) (exists!3407 lt!2520848 lambda!415634))))

(declare-fun bs!1872168 () Bool)

(assert (= bs!1872168 d!2196418))

(declare-fun m!7746036 () Bool)

(assert (=> bs!1872168 m!7746036))

(assert (=> b!7036317 d!2196418))

(declare-fun d!2196420 () Bool)

(declare-fun c!1309367 () Bool)

(assert (=> d!2196420 (= c!1309367 (isEmpty!39563 (tail!13565 lt!2520827)))))

(declare-fun e!4230231 () Bool)

(assert (=> d!2196420 (= (matchZipper!3012 (derivationStepZipper!2928 lt!2520794 (head!14272 lt!2520827)) (tail!13565 lt!2520827)) e!4230231)))

(declare-fun b!7036826 () Bool)

(assert (=> b!7036826 (= e!4230231 (nullableZipper!2585 (derivationStepZipper!2928 lt!2520794 (head!14272 lt!2520827))))))

(declare-fun b!7036827 () Bool)

(assert (=> b!7036827 (= e!4230231 (matchZipper!3012 (derivationStepZipper!2928 (derivationStepZipper!2928 lt!2520794 (head!14272 lt!2520827)) (head!14272 (tail!13565 lt!2520827))) (tail!13565 (tail!13565 lt!2520827))))))

(assert (= (and d!2196420 c!1309367) b!7036826))

(assert (= (and d!2196420 (not c!1309367)) b!7036827))

(assert (=> d!2196420 m!7745264))

(declare-fun m!7746038 () Bool)

(assert (=> d!2196420 m!7746038))

(assert (=> b!7036826 m!7745350))

(declare-fun m!7746040 () Bool)

(assert (=> b!7036826 m!7746040))

(assert (=> b!7036827 m!7745264))

(declare-fun m!7746042 () Bool)

(assert (=> b!7036827 m!7746042))

(assert (=> b!7036827 m!7745350))

(assert (=> b!7036827 m!7746042))

(declare-fun m!7746044 () Bool)

(assert (=> b!7036827 m!7746044))

(assert (=> b!7036827 m!7745264))

(declare-fun m!7746046 () Bool)

(assert (=> b!7036827 m!7746046))

(assert (=> b!7036827 m!7746044))

(assert (=> b!7036827 m!7746046))

(declare-fun m!7746048 () Bool)

(assert (=> b!7036827 m!7746048))

(assert (=> b!7036353 d!2196420))

(declare-fun bs!1872169 () Bool)

(declare-fun d!2196422 () Bool)

(assert (= bs!1872169 (and d!2196422 d!2196174)))

(declare-fun lambda!415635 () Int)

(assert (=> bs!1872169 (= (= (head!14272 lt!2520827) (h!74269 s!7408)) (= lambda!415635 lambda!415604))))

(declare-fun bs!1872170 () Bool)

(assert (= bs!1872170 (and d!2196422 d!2196402)))

(assert (=> bs!1872170 (= (= (head!14272 lt!2520827) (head!14272 s!7408)) (= lambda!415635 lambda!415632))))

(declare-fun bs!1872171 () Bool)

(assert (= bs!1872171 (and d!2196422 d!2196074)))

(assert (=> bs!1872171 (= (= (head!14272 lt!2520827) (h!74269 s!7408)) (= lambda!415635 lambda!415588))))

(declare-fun bs!1872172 () Bool)

(assert (= bs!1872172 (and d!2196422 b!7036143)))

(assert (=> bs!1872172 (= (= (head!14272 lt!2520827) (h!74269 s!7408)) (= lambda!415635 lambda!415522))))

(declare-fun bs!1872173 () Bool)

(assert (= bs!1872173 (and d!2196422 d!2196384)))

(assert (=> bs!1872173 (= (= (head!14272 lt!2520827) (head!14272 (t!381714 s!7408))) (= lambda!415635 lambda!415630))))

(declare-fun bs!1872174 () Bool)

(assert (= bs!1872174 (and d!2196422 d!2196070)))

(assert (=> bs!1872174 (= (= (head!14272 lt!2520827) (h!74269 s!7408)) (= lambda!415635 lambda!415587))))

(assert (=> d!2196422 true))

(assert (=> d!2196422 (= (derivationStepZipper!2928 lt!2520794 (head!14272 lt!2520827)) (flatMap!2419 lt!2520794 lambda!415635))))

(declare-fun bs!1872175 () Bool)

(assert (= bs!1872175 d!2196422))

(declare-fun m!7746050 () Bool)

(assert (=> bs!1872175 m!7746050))

(assert (=> b!7036353 d!2196422))

(declare-fun d!2196424 () Bool)

(assert (=> d!2196424 (= (head!14272 lt!2520827) (h!74269 lt!2520827))))

(assert (=> b!7036353 d!2196424))

(declare-fun d!2196426 () Bool)

(assert (=> d!2196426 (= (tail!13565 lt!2520827) (t!381714 lt!2520827))))

(assert (=> b!7036353 d!2196426))

(assert (=> d!2196104 d!2196110))

(assert (=> d!2196104 d!2196098))

(declare-fun d!2196428 () Bool)

(assert (=> d!2196428 (<= (contextDepthTotal!507 lt!2520817) (zipperDepthTotal!535 lt!2520821))))

(assert (=> d!2196428 true))

(declare-fun _$53!128 () Unit!161622)

(assert (=> d!2196428 (= (choose!53333 lt!2520821 lt!2520817) _$53!128)))

(declare-fun bs!1872176 () Bool)

(assert (= bs!1872176 d!2196428))

(assert (=> bs!1872176 m!7744958))

(assert (=> bs!1872176 m!7744970))

(assert (=> d!2196104 d!2196428))

(declare-fun d!2196430 () Bool)

(declare-fun lt!2521180 () Bool)

(assert (=> d!2196430 (= lt!2521180 (set.member lt!2520817 (content!13550 lt!2520821)))))

(declare-fun e!4230236 () Bool)

(assert (=> d!2196430 (= lt!2521180 e!4230236)))

(declare-fun res!2872545 () Bool)

(assert (=> d!2196430 (=> (not res!2872545) (not e!4230236))))

(assert (=> d!2196430 (= res!2872545 (is-Cons!67822 lt!2520821))))

(assert (=> d!2196430 (= (contains!20462 lt!2520821 lt!2520817) lt!2521180)))

(declare-fun b!7036832 () Bool)

(declare-fun e!4230237 () Bool)

(assert (=> b!7036832 (= e!4230236 e!4230237)))

(declare-fun res!2872544 () Bool)

(assert (=> b!7036832 (=> res!2872544 e!4230237)))

(assert (=> b!7036832 (= res!2872544 (= (h!74270 lt!2520821) lt!2520817))))

(declare-fun b!7036833 () Bool)

(assert (=> b!7036833 (= e!4230237 (contains!20462 (t!381715 lt!2520821) lt!2520817))))

(assert (= (and d!2196430 res!2872545) b!7036832))

(assert (= (and b!7036832 (not res!2872544)) b!7036833))

(declare-fun m!7746052 () Bool)

(assert (=> d!2196430 m!7746052))

(declare-fun m!7746054 () Bool)

(assert (=> d!2196430 m!7746054))

(declare-fun m!7746056 () Bool)

(assert (=> b!7036833 m!7746056))

(assert (=> d!2196104 d!2196430))

(declare-fun d!2196432 () Bool)

(assert (=> d!2196432 (= (isEmpty!39563 s!7408) (is-Nil!67821 s!7408))))

(assert (=> d!2196156 d!2196432))

(declare-fun b!7036836 () Bool)

(declare-fun res!2872547 () Bool)

(declare-fun e!4230239 () Bool)

(assert (=> b!7036836 (=> (not res!2872547) (not e!4230239))))

(declare-fun lt!2521181 () List!67945)

(assert (=> b!7036836 (= res!2872547 (= (size!41075 lt!2521181) (+ (size!41075 (t!381714 (_1!37348 lt!2520831))) (size!41075 (_2!37348 lt!2520831)))))))

(declare-fun b!7036837 () Bool)

(assert (=> b!7036837 (= e!4230239 (or (not (= (_2!37348 lt!2520831) Nil!67821)) (= lt!2521181 (t!381714 (_1!37348 lt!2520831)))))))

(declare-fun d!2196434 () Bool)

(assert (=> d!2196434 e!4230239))

(declare-fun res!2872546 () Bool)

(assert (=> d!2196434 (=> (not res!2872546) (not e!4230239))))

(assert (=> d!2196434 (= res!2872546 (= (content!13552 lt!2521181) (set.union (content!13552 (t!381714 (_1!37348 lt!2520831))) (content!13552 (_2!37348 lt!2520831)))))))

(declare-fun e!4230238 () List!67945)

(assert (=> d!2196434 (= lt!2521181 e!4230238)))

(declare-fun c!1309369 () Bool)

(assert (=> d!2196434 (= c!1309369 (is-Nil!67821 (t!381714 (_1!37348 lt!2520831))))))

(assert (=> d!2196434 (= (++!15525 (t!381714 (_1!37348 lt!2520831)) (_2!37348 lt!2520831)) lt!2521181)))

(declare-fun b!7036834 () Bool)

(assert (=> b!7036834 (= e!4230238 (_2!37348 lt!2520831))))

(declare-fun b!7036835 () Bool)

(assert (=> b!7036835 (= e!4230238 (Cons!67821 (h!74269 (t!381714 (_1!37348 lt!2520831))) (++!15525 (t!381714 (t!381714 (_1!37348 lt!2520831))) (_2!37348 lt!2520831))))))

(assert (= (and d!2196434 c!1309369) b!7036834))

(assert (= (and d!2196434 (not c!1309369)) b!7036835))

(assert (= (and d!2196434 res!2872546) b!7036836))

(assert (= (and b!7036836 res!2872547) b!7036837))

(declare-fun m!7746058 () Bool)

(assert (=> b!7036836 m!7746058))

(assert (=> b!7036836 m!7745892))

(assert (=> b!7036836 m!7745384))

(declare-fun m!7746060 () Bool)

(assert (=> d!2196434 m!7746060))

(assert (=> d!2196434 m!7745990))

(assert (=> d!2196434 m!7745390))

(declare-fun m!7746062 () Bool)

(assert (=> b!7036835 m!7746062))

(assert (=> b!7036373 d!2196434))

(declare-fun d!2196436 () Bool)

(declare-fun c!1309370 () Bool)

(assert (=> d!2196436 (= c!1309370 (isEmpty!39563 (tail!13565 (t!381714 s!7408))))))

(declare-fun e!4230240 () Bool)

(assert (=> d!2196436 (= (matchZipper!3012 (derivationStepZipper!2928 lt!2520838 (head!14272 (t!381714 s!7408))) (tail!13565 (t!381714 s!7408))) e!4230240)))

(declare-fun b!7036838 () Bool)

(assert (=> b!7036838 (= e!4230240 (nullableZipper!2585 (derivationStepZipper!2928 lt!2520838 (head!14272 (t!381714 s!7408)))))))

(declare-fun b!7036839 () Bool)

(assert (=> b!7036839 (= e!4230240 (matchZipper!3012 (derivationStepZipper!2928 (derivationStepZipper!2928 lt!2520838 (head!14272 (t!381714 s!7408))) (head!14272 (tail!13565 (t!381714 s!7408)))) (tail!13565 (tail!13565 (t!381714 s!7408)))))))

(assert (= (and d!2196436 c!1309370) b!7036838))

(assert (= (and d!2196436 (not c!1309370)) b!7036839))

(assert (=> d!2196436 m!7745176))

(assert (=> d!2196436 m!7745960))

(assert (=> b!7036838 m!7745182))

(declare-fun m!7746064 () Bool)

(assert (=> b!7036838 m!7746064))

(assert (=> b!7036839 m!7745176))

(assert (=> b!7036839 m!7745964))

(assert (=> b!7036839 m!7745182))

(assert (=> b!7036839 m!7745964))

(declare-fun m!7746066 () Bool)

(assert (=> b!7036839 m!7746066))

(assert (=> b!7036839 m!7745176))

(assert (=> b!7036839 m!7745968))

(assert (=> b!7036839 m!7746066))

(assert (=> b!7036839 m!7745968))

(declare-fun m!7746068 () Bool)

(assert (=> b!7036839 m!7746068))

(assert (=> b!7036273 d!2196436))

(declare-fun bs!1872177 () Bool)

(declare-fun d!2196438 () Bool)

(assert (= bs!1872177 (and d!2196438 d!2196422)))

(declare-fun lambda!415636 () Int)

(assert (=> bs!1872177 (= (= (head!14272 (t!381714 s!7408)) (head!14272 lt!2520827)) (= lambda!415636 lambda!415635))))

(declare-fun bs!1872178 () Bool)

(assert (= bs!1872178 (and d!2196438 d!2196174)))

(assert (=> bs!1872178 (= (= (head!14272 (t!381714 s!7408)) (h!74269 s!7408)) (= lambda!415636 lambda!415604))))

(declare-fun bs!1872179 () Bool)

(assert (= bs!1872179 (and d!2196438 d!2196402)))

(assert (=> bs!1872179 (= (= (head!14272 (t!381714 s!7408)) (head!14272 s!7408)) (= lambda!415636 lambda!415632))))

(declare-fun bs!1872180 () Bool)

(assert (= bs!1872180 (and d!2196438 d!2196074)))

(assert (=> bs!1872180 (= (= (head!14272 (t!381714 s!7408)) (h!74269 s!7408)) (= lambda!415636 lambda!415588))))

(declare-fun bs!1872181 () Bool)

(assert (= bs!1872181 (and d!2196438 b!7036143)))

(assert (=> bs!1872181 (= (= (head!14272 (t!381714 s!7408)) (h!74269 s!7408)) (= lambda!415636 lambda!415522))))

(declare-fun bs!1872182 () Bool)

(assert (= bs!1872182 (and d!2196438 d!2196384)))

(assert (=> bs!1872182 (= lambda!415636 lambda!415630)))

(declare-fun bs!1872183 () Bool)

(assert (= bs!1872183 (and d!2196438 d!2196070)))

(assert (=> bs!1872183 (= (= (head!14272 (t!381714 s!7408)) (h!74269 s!7408)) (= lambda!415636 lambda!415587))))

(assert (=> d!2196438 true))

(assert (=> d!2196438 (= (derivationStepZipper!2928 lt!2520838 (head!14272 (t!381714 s!7408))) (flatMap!2419 lt!2520838 lambda!415636))))

(declare-fun bs!1872184 () Bool)

(assert (= bs!1872184 d!2196438))

(declare-fun m!7746070 () Bool)

(assert (=> bs!1872184 m!7746070))

(assert (=> b!7036273 d!2196438))

(assert (=> b!7036273 d!2196386))

(assert (=> b!7036273 d!2196388))

(declare-fun b!7036842 () Bool)

(declare-fun res!2872549 () Bool)

(declare-fun e!4230242 () Bool)

(assert (=> b!7036842 (=> (not res!2872549) (not e!4230242))))

(declare-fun lt!2521182 () List!67945)

(assert (=> b!7036842 (= res!2872549 (= (size!41075 lt!2521182) (+ (size!41075 (++!15525 Nil!67821 (Cons!67821 (h!74269 s!7408) Nil!67821))) (size!41075 (t!381714 s!7408)))))))

(declare-fun b!7036843 () Bool)

(assert (=> b!7036843 (= e!4230242 (or (not (= (t!381714 s!7408) Nil!67821)) (= lt!2521182 (++!15525 Nil!67821 (Cons!67821 (h!74269 s!7408) Nil!67821)))))))

(declare-fun d!2196440 () Bool)

(assert (=> d!2196440 e!4230242))

(declare-fun res!2872548 () Bool)

(assert (=> d!2196440 (=> (not res!2872548) (not e!4230242))))

(assert (=> d!2196440 (= res!2872548 (= (content!13552 lt!2521182) (set.union (content!13552 (++!15525 Nil!67821 (Cons!67821 (h!74269 s!7408) Nil!67821))) (content!13552 (t!381714 s!7408)))))))

(declare-fun e!4230241 () List!67945)

(assert (=> d!2196440 (= lt!2521182 e!4230241)))

(declare-fun c!1309371 () Bool)

(assert (=> d!2196440 (= c!1309371 (is-Nil!67821 (++!15525 Nil!67821 (Cons!67821 (h!74269 s!7408) Nil!67821))))))

(assert (=> d!2196440 (= (++!15525 (++!15525 Nil!67821 (Cons!67821 (h!74269 s!7408) Nil!67821)) (t!381714 s!7408)) lt!2521182)))

(declare-fun b!7036840 () Bool)

(assert (=> b!7036840 (= e!4230241 (t!381714 s!7408))))

(declare-fun b!7036841 () Bool)

(assert (=> b!7036841 (= e!4230241 (Cons!67821 (h!74269 (++!15525 Nil!67821 (Cons!67821 (h!74269 s!7408) Nil!67821))) (++!15525 (t!381714 (++!15525 Nil!67821 (Cons!67821 (h!74269 s!7408) Nil!67821))) (t!381714 s!7408))))))

(assert (= (and d!2196440 c!1309371) b!7036840))

(assert (= (and d!2196440 (not c!1309371)) b!7036841))

(assert (= (and d!2196440 res!2872548) b!7036842))

(assert (= (and b!7036842 res!2872549) b!7036843))

(declare-fun m!7746072 () Bool)

(assert (=> b!7036842 m!7746072))

(assert (=> b!7036842 m!7745404))

(declare-fun m!7746074 () Bool)

(assert (=> b!7036842 m!7746074))

(declare-fun m!7746076 () Bool)

(assert (=> b!7036842 m!7746076))

(declare-fun m!7746078 () Bool)

(assert (=> d!2196440 m!7746078))

(assert (=> d!2196440 m!7745404))

(declare-fun m!7746080 () Bool)

(assert (=> d!2196440 m!7746080))

(declare-fun m!7746082 () Bool)

(assert (=> d!2196440 m!7746082))

(declare-fun m!7746084 () Bool)

(assert (=> b!7036841 m!7746084))

(assert (=> b!7036396 d!2196440))

(declare-fun b!7036846 () Bool)

(declare-fun res!2872551 () Bool)

(declare-fun e!4230244 () Bool)

(assert (=> b!7036846 (=> (not res!2872551) (not e!4230244))))

(declare-fun lt!2521183 () List!67945)

(assert (=> b!7036846 (= res!2872551 (= (size!41075 lt!2521183) (+ (size!41075 Nil!67821) (size!41075 (Cons!67821 (h!74269 s!7408) Nil!67821)))))))

(declare-fun b!7036847 () Bool)

(assert (=> b!7036847 (= e!4230244 (or (not (= (Cons!67821 (h!74269 s!7408) Nil!67821) Nil!67821)) (= lt!2521183 Nil!67821)))))

(declare-fun d!2196442 () Bool)

(assert (=> d!2196442 e!4230244))

(declare-fun res!2872550 () Bool)

(assert (=> d!2196442 (=> (not res!2872550) (not e!4230244))))

(assert (=> d!2196442 (= res!2872550 (= (content!13552 lt!2521183) (set.union (content!13552 Nil!67821) (content!13552 (Cons!67821 (h!74269 s!7408) Nil!67821)))))))

(declare-fun e!4230243 () List!67945)

(assert (=> d!2196442 (= lt!2521183 e!4230243)))

(declare-fun c!1309372 () Bool)

(assert (=> d!2196442 (= c!1309372 (is-Nil!67821 Nil!67821))))

(assert (=> d!2196442 (= (++!15525 Nil!67821 (Cons!67821 (h!74269 s!7408) Nil!67821)) lt!2521183)))

(declare-fun b!7036844 () Bool)

(assert (=> b!7036844 (= e!4230243 (Cons!67821 (h!74269 s!7408) Nil!67821))))

(declare-fun b!7036845 () Bool)

(assert (=> b!7036845 (= e!4230243 (Cons!67821 (h!74269 Nil!67821) (++!15525 (t!381714 Nil!67821) (Cons!67821 (h!74269 s!7408) Nil!67821))))))

(assert (= (and d!2196442 c!1309372) b!7036844))

(assert (= (and d!2196442 (not c!1309372)) b!7036845))

(assert (= (and d!2196442 res!2872550) b!7036846))

(assert (= (and b!7036846 res!2872551) b!7036847))

(declare-fun m!7746086 () Bool)

(assert (=> b!7036846 m!7746086))

(declare-fun m!7746088 () Bool)

(assert (=> b!7036846 m!7746088))

(declare-fun m!7746090 () Bool)

(assert (=> b!7036846 m!7746090))

(declare-fun m!7746092 () Bool)

(assert (=> d!2196442 m!7746092))

(declare-fun m!7746094 () Bool)

(assert (=> d!2196442 m!7746094))

(declare-fun m!7746096 () Bool)

(assert (=> d!2196442 m!7746096))

(declare-fun m!7746098 () Bool)

(assert (=> b!7036845 m!7746098))

(assert (=> b!7036396 d!2196442))

(declare-fun d!2196444 () Bool)

(assert (=> d!2196444 (= (++!15525 (++!15525 Nil!67821 (Cons!67821 (h!74269 s!7408) Nil!67821)) (t!381714 s!7408)) s!7408)))

(declare-fun lt!2521186 () Unit!161622)

(declare-fun choose!53348 (List!67945 C!35214 List!67945 List!67945) Unit!161622)

(assert (=> d!2196444 (= lt!2521186 (choose!53348 Nil!67821 (h!74269 s!7408) (t!381714 s!7408) s!7408))))

(assert (=> d!2196444 (= (++!15525 Nil!67821 (Cons!67821 (h!74269 s!7408) (t!381714 s!7408))) s!7408)))

(assert (=> d!2196444 (= (lemmaMoveElementToOtherListKeepsConcatEq!2929 Nil!67821 (h!74269 s!7408) (t!381714 s!7408) s!7408) lt!2521186)))

(declare-fun bs!1872185 () Bool)

(assert (= bs!1872185 d!2196444))

(assert (=> bs!1872185 m!7745404))

(assert (=> bs!1872185 m!7745404))

(assert (=> bs!1872185 m!7745406))

(declare-fun m!7746100 () Bool)

(assert (=> bs!1872185 m!7746100))

(declare-fun m!7746102 () Bool)

(assert (=> bs!1872185 m!7746102))

(assert (=> b!7036396 d!2196444))

(declare-fun b!7036848 () Bool)

(declare-fun e!4230248 () Bool)

(assert (=> b!7036848 (= e!4230248 (matchZipper!3012 lt!2520799 (t!381714 s!7408)))))

(declare-fun b!7036849 () Bool)

(declare-fun res!2872553 () Bool)

(declare-fun e!4230249 () Bool)

(assert (=> b!7036849 (=> (not res!2872553) (not e!4230249))))

(declare-fun lt!2521188 () Option!16877)

(assert (=> b!7036849 (= res!2872553 (matchZipper!3012 lt!2520803 (_1!37348 (get!23764 lt!2521188))))))

(declare-fun b!7036850 () Bool)

(declare-fun lt!2521189 () Unit!161622)

(declare-fun lt!2521187 () Unit!161622)

(assert (=> b!7036850 (= lt!2521189 lt!2521187)))

(assert (=> b!7036850 (= (++!15525 (++!15525 (++!15525 Nil!67821 (Cons!67821 (h!74269 s!7408) Nil!67821)) (Cons!67821 (h!74269 (t!381714 s!7408)) Nil!67821)) (t!381714 (t!381714 s!7408))) s!7408)))

(assert (=> b!7036850 (= lt!2521187 (lemmaMoveElementToOtherListKeepsConcatEq!2929 (++!15525 Nil!67821 (Cons!67821 (h!74269 s!7408) Nil!67821)) (h!74269 (t!381714 s!7408)) (t!381714 (t!381714 s!7408)) s!7408))))

(declare-fun e!4230247 () Option!16877)

(assert (=> b!7036850 (= e!4230247 (findConcatSeparationZippers!393 lt!2520803 lt!2520799 (++!15525 (++!15525 Nil!67821 (Cons!67821 (h!74269 s!7408) Nil!67821)) (Cons!67821 (h!74269 (t!381714 s!7408)) Nil!67821)) (t!381714 (t!381714 s!7408)) s!7408))))

(declare-fun d!2196446 () Bool)

(declare-fun e!4230246 () Bool)

(assert (=> d!2196446 e!4230246))

(declare-fun res!2872556 () Bool)

(assert (=> d!2196446 (=> res!2872556 e!4230246)))

(assert (=> d!2196446 (= res!2872556 e!4230249)))

(declare-fun res!2872555 () Bool)

(assert (=> d!2196446 (=> (not res!2872555) (not e!4230249))))

(assert (=> d!2196446 (= res!2872555 (isDefined!13578 lt!2521188))))

(declare-fun e!4230245 () Option!16877)

(assert (=> d!2196446 (= lt!2521188 e!4230245)))

(declare-fun c!1309374 () Bool)

(assert (=> d!2196446 (= c!1309374 e!4230248)))

(declare-fun res!2872554 () Bool)

(assert (=> d!2196446 (=> (not res!2872554) (not e!4230248))))

(assert (=> d!2196446 (= res!2872554 (matchZipper!3012 lt!2520803 (++!15525 Nil!67821 (Cons!67821 (h!74269 s!7408) Nil!67821))))))

(assert (=> d!2196446 (= (++!15525 (++!15525 Nil!67821 (Cons!67821 (h!74269 s!7408) Nil!67821)) (t!381714 s!7408)) s!7408)))

(assert (=> d!2196446 (= (findConcatSeparationZippers!393 lt!2520803 lt!2520799 (++!15525 Nil!67821 (Cons!67821 (h!74269 s!7408) Nil!67821)) (t!381714 s!7408) s!7408) lt!2521188)))

(declare-fun b!7036851 () Bool)

(assert (=> b!7036851 (= e!4230249 (= (++!15525 (_1!37348 (get!23764 lt!2521188)) (_2!37348 (get!23764 lt!2521188))) s!7408))))

(declare-fun b!7036852 () Bool)

(declare-fun res!2872552 () Bool)

(assert (=> b!7036852 (=> (not res!2872552) (not e!4230249))))

(assert (=> b!7036852 (= res!2872552 (matchZipper!3012 lt!2520799 (_2!37348 (get!23764 lt!2521188))))))

(declare-fun b!7036853 () Bool)

(assert (=> b!7036853 (= e!4230245 (Some!16876 (tuple2!68091 (++!15525 Nil!67821 (Cons!67821 (h!74269 s!7408) Nil!67821)) (t!381714 s!7408))))))

(declare-fun b!7036854 () Bool)

(assert (=> b!7036854 (= e!4230247 None!16876)))

(declare-fun b!7036855 () Bool)

(assert (=> b!7036855 (= e!4230245 e!4230247)))

(declare-fun c!1309373 () Bool)

(assert (=> b!7036855 (= c!1309373 (is-Nil!67821 (t!381714 s!7408)))))

(declare-fun b!7036856 () Bool)

(assert (=> b!7036856 (= e!4230246 (not (isDefined!13578 lt!2521188)))))

(assert (= (and d!2196446 res!2872554) b!7036848))

(assert (= (and d!2196446 c!1309374) b!7036853))

(assert (= (and d!2196446 (not c!1309374)) b!7036855))

(assert (= (and b!7036855 c!1309373) b!7036854))

(assert (= (and b!7036855 (not c!1309373)) b!7036850))

(assert (= (and d!2196446 res!2872555) b!7036849))

(assert (= (and b!7036849 res!2872553) b!7036852))

(assert (= (and b!7036852 res!2872552) b!7036851))

(assert (= (and d!2196446 (not res!2872556)) b!7036856))

(declare-fun m!7746104 () Bool)

(assert (=> b!7036849 m!7746104))

(declare-fun m!7746106 () Bool)

(assert (=> b!7036849 m!7746106))

(assert (=> b!7036850 m!7745404))

(declare-fun m!7746108 () Bool)

(assert (=> b!7036850 m!7746108))

(assert (=> b!7036850 m!7746108))

(declare-fun m!7746110 () Bool)

(assert (=> b!7036850 m!7746110))

(assert (=> b!7036850 m!7745404))

(declare-fun m!7746112 () Bool)

(assert (=> b!7036850 m!7746112))

(assert (=> b!7036850 m!7746108))

(declare-fun m!7746114 () Bool)

(assert (=> b!7036850 m!7746114))

(declare-fun m!7746116 () Bool)

(assert (=> b!7036848 m!7746116))

(assert (=> b!7036852 m!7746104))

(declare-fun m!7746118 () Bool)

(assert (=> b!7036852 m!7746118))

(declare-fun m!7746120 () Bool)

(assert (=> d!2196446 m!7746120))

(assert (=> d!2196446 m!7745404))

(declare-fun m!7746122 () Bool)

(assert (=> d!2196446 m!7746122))

(assert (=> d!2196446 m!7745404))

(assert (=> d!2196446 m!7745406))

(assert (=> b!7036856 m!7746120))

(assert (=> b!7036851 m!7746104))

(declare-fun m!7746124 () Bool)

(assert (=> b!7036851 m!7746124))

(assert (=> b!7036396 d!2196446))

(declare-fun d!2196448 () Bool)

(assert (=> d!2196448 (= ($colon$colon!2579 (exprs!6968 lt!2520844) (ite (or c!1309234 c!1309238) (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (h!74268 (exprs!6968 lt!2520817)))) (Cons!67820 (ite (or c!1309234 c!1309238) (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (h!74268 (exprs!6968 lt!2520817))) (exprs!6968 lt!2520844)))))

(assert (=> bm!639004 d!2196448))

(assert (=> d!2196128 d!2196332))

(declare-fun d!2196450 () Bool)

(declare-fun lt!2521192 () Int)

(assert (=> d!2196450 (>= lt!2521192 0)))

(declare-fun e!4230252 () Int)

(assert (=> d!2196450 (= lt!2521192 e!4230252)))

(declare-fun c!1309377 () Bool)

(assert (=> d!2196450 (= c!1309377 (is-Nil!67820 lt!2521077))))

(assert (=> d!2196450 (= (size!41074 lt!2521077) lt!2521192)))

(declare-fun b!7036861 () Bool)

(assert (=> b!7036861 (= e!4230252 0)))

(declare-fun b!7036862 () Bool)

(assert (=> b!7036862 (= e!4230252 (+ 1 (size!41074 (t!381713 lt!2521077))))))

(assert (= (and d!2196450 c!1309377) b!7036861))

(assert (= (and d!2196450 (not c!1309377)) b!7036862))

(declare-fun m!7746126 () Bool)

(assert (=> b!7036862 m!7746126))

(assert (=> b!7036356 d!2196450))

(declare-fun d!2196452 () Bool)

(declare-fun lt!2521193 () Int)

(assert (=> d!2196452 (>= lt!2521193 0)))

(declare-fun e!4230253 () Int)

(assert (=> d!2196452 (= lt!2521193 e!4230253)))

(declare-fun c!1309378 () Bool)

(assert (=> d!2196452 (= c!1309378 (is-Nil!67820 (exprs!6968 lt!2520817)))))

(assert (=> d!2196452 (= (size!41074 (exprs!6968 lt!2520817)) lt!2521193)))

(declare-fun b!7036863 () Bool)

(assert (=> b!7036863 (= e!4230253 0)))

(declare-fun b!7036864 () Bool)

(assert (=> b!7036864 (= e!4230253 (+ 1 (size!41074 (t!381713 (exprs!6968 lt!2520817)))))))

(assert (= (and d!2196452 c!1309378) b!7036863))

(assert (= (and d!2196452 (not c!1309378)) b!7036864))

(declare-fun m!7746128 () Bool)

(assert (=> b!7036864 m!7746128))

(assert (=> b!7036356 d!2196452))

(declare-fun d!2196454 () Bool)

(declare-fun lt!2521194 () Int)

(assert (=> d!2196454 (>= lt!2521194 0)))

(declare-fun e!4230254 () Int)

(assert (=> d!2196454 (= lt!2521194 e!4230254)))

(declare-fun c!1309379 () Bool)

(assert (=> d!2196454 (= c!1309379 (is-Nil!67820 (exprs!6968 ct2!306)))))

(assert (=> d!2196454 (= (size!41074 (exprs!6968 ct2!306)) lt!2521194)))

(declare-fun b!7036865 () Bool)

(assert (=> b!7036865 (= e!4230254 0)))

(declare-fun b!7036866 () Bool)

(assert (=> b!7036866 (= e!4230254 (+ 1 (size!41074 (t!381713 (exprs!6968 ct2!306)))))))

(assert (= (and d!2196454 c!1309379) b!7036865))

(assert (= (and d!2196454 (not c!1309379)) b!7036866))

(declare-fun m!7746130 () Bool)

(assert (=> b!7036866 m!7746130))

(assert (=> b!7036356 d!2196454))

(declare-fun c!1309384 () Bool)

(declare-fun c!1309380 () Bool)

(declare-fun call!639074 () List!67944)

(declare-fun bm!639069 () Bool)

(assert (=> bm!639069 (= call!639074 ($colon$colon!2579 (exprs!6968 (Context!12937 (t!381713 (exprs!6968 lt!2520842)))) (ite (or c!1309380 c!1309384) (regTwo!35456 (h!74268 (exprs!6968 lt!2520842))) (h!74268 (exprs!6968 lt!2520842)))))))

(declare-fun b!7036867 () Bool)

(declare-fun c!1309382 () Bool)

(assert (=> b!7036867 (= c!1309382 (is-Star!17472 (h!74268 (exprs!6968 lt!2520842))))))

(declare-fun e!4230259 () (Set Context!12936))

(declare-fun e!4230257 () (Set Context!12936))

(assert (=> b!7036867 (= e!4230259 e!4230257)))

(declare-fun bm!639070 () Bool)

(declare-fun call!639077 () (Set Context!12936))

(declare-fun call!639079 () (Set Context!12936))

(assert (=> bm!639070 (= call!639077 call!639079)))

(declare-fun b!7036868 () Bool)

(assert (=> b!7036868 (= e!4230257 (as set.empty (Set Context!12936)))))

(declare-fun b!7036869 () Bool)

(declare-fun e!4230258 () (Set Context!12936))

(declare-fun call!639075 () (Set Context!12936))

(declare-fun call!639076 () (Set Context!12936))

(assert (=> b!7036869 (= e!4230258 (set.union call!639075 call!639076))))

(declare-fun bm!639071 () Bool)

(assert (=> bm!639071 (= call!639079 call!639076)))

(declare-fun b!7036870 () Bool)

(declare-fun e!4230256 () (Set Context!12936))

(assert (=> b!7036870 (= e!4230256 e!4230259)))

(assert (=> b!7036870 (= c!1309384 (is-Concat!26317 (h!74268 (exprs!6968 lt!2520842))))))

(declare-fun d!2196456 () Bool)

(declare-fun c!1309383 () Bool)

(assert (=> d!2196456 (= c!1309383 (and (is-ElementMatch!17472 (h!74268 (exprs!6968 lt!2520842))) (= (c!1309148 (h!74268 (exprs!6968 lt!2520842))) (h!74269 s!7408))))))

(declare-fun e!4230255 () (Set Context!12936))

(assert (=> d!2196456 (= (derivationStepZipperDown!2136 (h!74268 (exprs!6968 lt!2520842)) (Context!12937 (t!381713 (exprs!6968 lt!2520842))) (h!74269 s!7408)) e!4230255)))

(declare-fun b!7036871 () Bool)

(assert (=> b!7036871 (= e!4230257 call!639077)))

(declare-fun bm!639072 () Bool)

(declare-fun call!639078 () List!67944)

(assert (=> bm!639072 (= call!639078 call!639074)))

(declare-fun b!7036872 () Bool)

(assert (=> b!7036872 (= e!4230256 (set.union call!639075 call!639079))))

(declare-fun c!1309381 () Bool)

(declare-fun bm!639073 () Bool)

(assert (=> bm!639073 (= call!639075 (derivationStepZipperDown!2136 (ite c!1309381 (regOne!35457 (h!74268 (exprs!6968 lt!2520842))) (regOne!35456 (h!74268 (exprs!6968 lt!2520842)))) (ite c!1309381 (Context!12937 (t!381713 (exprs!6968 lt!2520842))) (Context!12937 call!639074)) (h!74269 s!7408)))))

(declare-fun b!7036873 () Bool)

(assert (=> b!7036873 (= e!4230259 call!639077)))

(declare-fun b!7036874 () Bool)

(assert (=> b!7036874 (= e!4230255 e!4230258)))

(assert (=> b!7036874 (= c!1309381 (is-Union!17472 (h!74268 (exprs!6968 lt!2520842))))))

(declare-fun b!7036875 () Bool)

(declare-fun e!4230260 () Bool)

(assert (=> b!7036875 (= c!1309380 e!4230260)))

(declare-fun res!2872557 () Bool)

(assert (=> b!7036875 (=> (not res!2872557) (not e!4230260))))

(assert (=> b!7036875 (= res!2872557 (is-Concat!26317 (h!74268 (exprs!6968 lt!2520842))))))

(assert (=> b!7036875 (= e!4230258 e!4230256)))

(declare-fun b!7036876 () Bool)

(assert (=> b!7036876 (= e!4230255 (set.insert (Context!12937 (t!381713 (exprs!6968 lt!2520842))) (as set.empty (Set Context!12936))))))

(declare-fun bm!639074 () Bool)

(assert (=> bm!639074 (= call!639076 (derivationStepZipperDown!2136 (ite c!1309381 (regTwo!35457 (h!74268 (exprs!6968 lt!2520842))) (ite c!1309380 (regTwo!35456 (h!74268 (exprs!6968 lt!2520842))) (ite c!1309384 (regOne!35456 (h!74268 (exprs!6968 lt!2520842))) (reg!17801 (h!74268 (exprs!6968 lt!2520842)))))) (ite (or c!1309381 c!1309380) (Context!12937 (t!381713 (exprs!6968 lt!2520842))) (Context!12937 call!639078)) (h!74269 s!7408)))))

(declare-fun b!7036877 () Bool)

(assert (=> b!7036877 (= e!4230260 (nullable!7183 (regOne!35456 (h!74268 (exprs!6968 lt!2520842)))))))

(assert (= (and d!2196456 c!1309383) b!7036876))

(assert (= (and d!2196456 (not c!1309383)) b!7036874))

(assert (= (and b!7036874 c!1309381) b!7036869))

(assert (= (and b!7036874 (not c!1309381)) b!7036875))

(assert (= (and b!7036875 res!2872557) b!7036877))

(assert (= (and b!7036875 c!1309380) b!7036872))

(assert (= (and b!7036875 (not c!1309380)) b!7036870))

(assert (= (and b!7036870 c!1309384) b!7036873))

(assert (= (and b!7036870 (not c!1309384)) b!7036867))

(assert (= (and b!7036867 c!1309382) b!7036871))

(assert (= (and b!7036867 (not c!1309382)) b!7036868))

(assert (= (or b!7036873 b!7036871) bm!639072))

(assert (= (or b!7036873 b!7036871) bm!639070))

(assert (= (or b!7036872 bm!639070) bm!639071))

(assert (= (or b!7036872 bm!639072) bm!639069))

(assert (= (or b!7036869 b!7036872) bm!639073))

(assert (= (or b!7036869 bm!639071) bm!639074))

(declare-fun m!7746132 () Bool)

(assert (=> bm!639069 m!7746132))

(declare-fun m!7746134 () Bool)

(assert (=> bm!639073 m!7746134))

(declare-fun m!7746136 () Bool)

(assert (=> b!7036876 m!7746136))

(declare-fun m!7746138 () Bool)

(assert (=> bm!639074 m!7746138))

(declare-fun m!7746140 () Bool)

(assert (=> b!7036877 m!7746140))

(assert (=> bm!638983 d!2196456))

(declare-fun d!2196458 () Bool)

(assert (=> d!2196458 (forall!16389 (++!15524 (exprs!6968 lt!2520844) (exprs!6968 ct2!306)) lambda!415521)))

(declare-fun lt!2521195 () Unit!161622)

(assert (=> d!2196458 (= lt!2521195 (choose!53326 (exprs!6968 lt!2520844) (exprs!6968 ct2!306) lambda!415521))))

(assert (=> d!2196458 (forall!16389 (exprs!6968 lt!2520844) lambda!415521)))

(assert (=> d!2196458 (= (lemmaConcatPreservesForall!793 (exprs!6968 lt!2520844) (exprs!6968 ct2!306) lambda!415521) lt!2521195)))

(declare-fun bs!1872186 () Bool)

(assert (= bs!1872186 d!2196458))

(assert (=> bs!1872186 m!7745502))

(assert (=> bs!1872186 m!7745502))

(declare-fun m!7746142 () Bool)

(assert (=> bs!1872186 m!7746142))

(declare-fun m!7746144 () Bool)

(assert (=> bs!1872186 m!7746144))

(declare-fun m!7746146 () Bool)

(assert (=> bs!1872186 m!7746146))

(assert (=> bs!1872070 d!2196458))

(declare-fun b!7036880 () Bool)

(declare-fun res!2872558 () Bool)

(declare-fun e!4230262 () Bool)

(assert (=> b!7036880 (=> (not res!2872558) (not e!4230262))))

(declare-fun lt!2521196 () List!67944)

(assert (=> b!7036880 (= res!2872558 (= (size!41074 lt!2521196) (+ (size!41074 (exprs!6968 lt!2520844)) (size!41074 (exprs!6968 ct2!306)))))))

(declare-fun b!7036881 () Bool)

(assert (=> b!7036881 (= e!4230262 (or (not (= (exprs!6968 ct2!306) Nil!67820)) (= lt!2521196 (exprs!6968 lt!2520844))))))

(declare-fun b!7036879 () Bool)

(declare-fun e!4230261 () List!67944)

(assert (=> b!7036879 (= e!4230261 (Cons!67820 (h!74268 (exprs!6968 lt!2520844)) (++!15524 (t!381713 (exprs!6968 lt!2520844)) (exprs!6968 ct2!306))))))

(declare-fun b!7036878 () Bool)

(assert (=> b!7036878 (= e!4230261 (exprs!6968 ct2!306))))

(declare-fun d!2196460 () Bool)

(assert (=> d!2196460 e!4230262))

(declare-fun res!2872559 () Bool)

(assert (=> d!2196460 (=> (not res!2872559) (not e!4230262))))

(assert (=> d!2196460 (= res!2872559 (= (content!13551 lt!2521196) (set.union (content!13551 (exprs!6968 lt!2520844)) (content!13551 (exprs!6968 ct2!306)))))))

(assert (=> d!2196460 (= lt!2521196 e!4230261)))

(declare-fun c!1309385 () Bool)

(assert (=> d!2196460 (= c!1309385 (is-Nil!67820 (exprs!6968 lt!2520844)))))

(assert (=> d!2196460 (= (++!15524 (exprs!6968 lt!2520844) (exprs!6968 ct2!306)) lt!2521196)))

(assert (= (and d!2196460 c!1309385) b!7036878))

(assert (= (and d!2196460 (not c!1309385)) b!7036879))

(assert (= (and d!2196460 res!2872559) b!7036880))

(assert (= (and b!7036880 res!2872558) b!7036881))

(declare-fun m!7746148 () Bool)

(assert (=> b!7036880 m!7746148))

(declare-fun m!7746150 () Bool)

(assert (=> b!7036880 m!7746150))

(assert (=> b!7036880 m!7745300))

(declare-fun m!7746152 () Bool)

(assert (=> b!7036879 m!7746152))

(declare-fun m!7746154 () Bool)

(assert (=> d!2196460 m!7746154))

(declare-fun m!7746156 () Bool)

(assert (=> d!2196460 m!7746156))

(assert (=> d!2196460 m!7745308))

(assert (=> bs!1872070 d!2196460))

(declare-fun d!2196462 () Bool)

(declare-fun c!1309386 () Bool)

(assert (=> d!2196462 (= c!1309386 (is-Nil!67822 lt!2521073))))

(declare-fun e!4230263 () (Set Context!12936))

(assert (=> d!2196462 (= (content!13550 lt!2521073) e!4230263)))

(declare-fun b!7036882 () Bool)

(assert (=> b!7036882 (= e!4230263 (as set.empty (Set Context!12936)))))

(declare-fun b!7036883 () Bool)

(assert (=> b!7036883 (= e!4230263 (set.union (set.insert (h!74270 lt!2521073) (as set.empty (Set Context!12936))) (content!13550 (t!381715 lt!2521073))))))

(assert (= (and d!2196462 c!1309386) b!7036882))

(assert (= (and d!2196462 (not c!1309386)) b!7036883))

(declare-fun m!7746158 () Bool)

(assert (=> b!7036883 m!7746158))

(declare-fun m!7746160 () Bool)

(assert (=> b!7036883 m!7746160))

(assert (=> b!7036344 d!2196462))

(declare-fun d!2196464 () Bool)

(assert (=> d!2196464 (= (isEmpty!39563 (t!381714 s!7408)) (is-Nil!67821 (t!381714 s!7408)))))

(assert (=> d!2196060 d!2196464))

(assert (=> bs!1872071 d!2196168))

(assert (=> d!2196114 d!2196106))

(declare-fun d!2196466 () Bool)

(assert (=> d!2196466 (= (flatMap!2419 lt!2520803 lambda!415522) (dynLambda!27405 lambda!415522 lt!2520844))))

(assert (=> d!2196466 true))

(declare-fun _$13!4495 () Unit!161622)

(assert (=> d!2196466 (= (choose!53328 lt!2520803 lt!2520844 lambda!415522) _$13!4495)))

(declare-fun b_lambda!266953 () Bool)

(assert (=> (not b_lambda!266953) (not d!2196466)))

(declare-fun bs!1872187 () Bool)

(assert (= bs!1872187 d!2196466))

(assert (=> bs!1872187 m!7744960))

(assert (=> bs!1872187 m!7745320))

(assert (=> d!2196114 d!2196466))

(declare-fun d!2196468 () Bool)

(declare-fun c!1309387 () Bool)

(assert (=> d!2196468 (= c!1309387 (isEmpty!39563 (tail!13565 lt!2520827)))))

(declare-fun e!4230264 () Bool)

(assert (=> d!2196468 (= (matchZipper!3012 (derivationStepZipper!2928 lt!2520848 (head!14272 lt!2520827)) (tail!13565 lt!2520827)) e!4230264)))

(declare-fun b!7036884 () Bool)

(assert (=> b!7036884 (= e!4230264 (nullableZipper!2585 (derivationStepZipper!2928 lt!2520848 (head!14272 lt!2520827))))))

(declare-fun b!7036885 () Bool)

(assert (=> b!7036885 (= e!4230264 (matchZipper!3012 (derivationStepZipper!2928 (derivationStepZipper!2928 lt!2520848 (head!14272 lt!2520827)) (head!14272 (tail!13565 lt!2520827))) (tail!13565 (tail!13565 lt!2520827))))))

(assert (= (and d!2196468 c!1309387) b!7036884))

(assert (= (and d!2196468 (not c!1309387)) b!7036885))

(assert (=> d!2196468 m!7745264))

(assert (=> d!2196468 m!7746038))

(assert (=> b!7036884 m!7745262))

(declare-fun m!7746162 () Bool)

(assert (=> b!7036884 m!7746162))

(assert (=> b!7036885 m!7745264))

(assert (=> b!7036885 m!7746042))

(assert (=> b!7036885 m!7745262))

(assert (=> b!7036885 m!7746042))

(declare-fun m!7746164 () Bool)

(assert (=> b!7036885 m!7746164))

(assert (=> b!7036885 m!7745264))

(assert (=> b!7036885 m!7746046))

(assert (=> b!7036885 m!7746164))

(assert (=> b!7036885 m!7746046))

(declare-fun m!7746166 () Bool)

(assert (=> b!7036885 m!7746166))

(assert (=> b!7036318 d!2196468))

(declare-fun bs!1872188 () Bool)

(declare-fun d!2196470 () Bool)

(assert (= bs!1872188 (and d!2196470 d!2196422)))

(declare-fun lambda!415637 () Int)

(assert (=> bs!1872188 (= lambda!415637 lambda!415635)))

(declare-fun bs!1872189 () Bool)

(assert (= bs!1872189 (and d!2196470 d!2196174)))

(assert (=> bs!1872189 (= (= (head!14272 lt!2520827) (h!74269 s!7408)) (= lambda!415637 lambda!415604))))

(declare-fun bs!1872190 () Bool)

(assert (= bs!1872190 (and d!2196470 d!2196402)))

(assert (=> bs!1872190 (= (= (head!14272 lt!2520827) (head!14272 s!7408)) (= lambda!415637 lambda!415632))))

(declare-fun bs!1872191 () Bool)

(assert (= bs!1872191 (and d!2196470 d!2196438)))

(assert (=> bs!1872191 (= (= (head!14272 lt!2520827) (head!14272 (t!381714 s!7408))) (= lambda!415637 lambda!415636))))

(declare-fun bs!1872192 () Bool)

(assert (= bs!1872192 (and d!2196470 d!2196074)))

(assert (=> bs!1872192 (= (= (head!14272 lt!2520827) (h!74269 s!7408)) (= lambda!415637 lambda!415588))))

(declare-fun bs!1872193 () Bool)

(assert (= bs!1872193 (and d!2196470 b!7036143)))

(assert (=> bs!1872193 (= (= (head!14272 lt!2520827) (h!74269 s!7408)) (= lambda!415637 lambda!415522))))

(declare-fun bs!1872194 () Bool)

(assert (= bs!1872194 (and d!2196470 d!2196384)))

(assert (=> bs!1872194 (= (= (head!14272 lt!2520827) (head!14272 (t!381714 s!7408))) (= lambda!415637 lambda!415630))))

(declare-fun bs!1872195 () Bool)

(assert (= bs!1872195 (and d!2196470 d!2196070)))

(assert (=> bs!1872195 (= (= (head!14272 lt!2520827) (h!74269 s!7408)) (= lambda!415637 lambda!415587))))

(assert (=> d!2196470 true))

(assert (=> d!2196470 (= (derivationStepZipper!2928 lt!2520848 (head!14272 lt!2520827)) (flatMap!2419 lt!2520848 lambda!415637))))

(declare-fun bs!1872196 () Bool)

(assert (= bs!1872196 d!2196470))

(declare-fun m!7746168 () Bool)

(assert (=> bs!1872196 m!7746168))

(assert (=> b!7036318 d!2196470))

(assert (=> b!7036318 d!2196424))

(assert (=> b!7036318 d!2196426))

(declare-fun d!2196472 () Bool)

(assert (=> d!2196472 (= ($colon$colon!2579 (exprs!6968 lt!2520842) (ite (or c!1309229 c!1309233) (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (h!74268 (exprs!6968 lt!2520817)))) (Cons!67820 (ite (or c!1309229 c!1309233) (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (h!74268 (exprs!6968 lt!2520817))) (exprs!6968 lt!2520842)))))

(assert (=> bm!638998 d!2196472))

(declare-fun d!2196474 () Bool)

(assert (=> d!2196474 true))

(declare-fun setRes!49251 () Bool)

(assert (=> d!2196474 setRes!49251))

(declare-fun condSetEmpty!49251 () Bool)

(declare-fun res!2872562 () (Set Context!12936))

(assert (=> d!2196474 (= condSetEmpty!49251 (= res!2872562 (as set.empty (Set Context!12936))))))

(assert (=> d!2196474 (= (choose!53334 lt!2520803 lambda!415520) res!2872562)))

(declare-fun setIsEmpty!49251 () Bool)

(assert (=> setIsEmpty!49251 setRes!49251))

(declare-fun setElem!49251 () Context!12936)

(declare-fun setNonEmpty!49251 () Bool)

(declare-fun tp!1936918 () Bool)

(declare-fun e!4230267 () Bool)

(assert (=> setNonEmpty!49251 (= setRes!49251 (and tp!1936918 (inv!86540 setElem!49251) e!4230267))))

(declare-fun setRest!49251 () (Set Context!12936))

(assert (=> setNonEmpty!49251 (= res!2872562 (set.union (set.insert setElem!49251 (as set.empty (Set Context!12936))) setRest!49251))))

(declare-fun b!7036888 () Bool)

(declare-fun tp!1936919 () Bool)

(assert (=> b!7036888 (= e!4230267 tp!1936919)))

(assert (= (and d!2196474 condSetEmpty!49251) setIsEmpty!49251))

(assert (= (and d!2196474 (not condSetEmpty!49251)) setNonEmpty!49251))

(assert (= setNonEmpty!49251 b!7036888))

(declare-fun m!7746170 () Bool)

(assert (=> setNonEmpty!49251 m!7746170))

(assert (=> d!2196118 d!2196474))

(declare-fun d!2196476 () Bool)

(declare-fun e!4230272 () Bool)

(assert (=> d!2196476 e!4230272))

(declare-fun res!2872565 () Bool)

(assert (=> d!2196476 (=> (not res!2872565) (not e!4230272))))

(declare-fun a!13238 () Context!12936)

(assert (=> d!2196476 (= res!2872565 (= lt!2520830 (dynLambda!27408 lambda!415520 a!13238)))))

(declare-fun e!4230273 () Bool)

(assert (=> d!2196476 (and (inv!86540 a!13238) e!4230273)))

(assert (=> d!2196476 (= (choose!53335 z1!570 lambda!415520 lt!2520830) a!13238)))

(declare-fun b!7036894 () Bool)

(declare-fun tp!1936922 () Bool)

(assert (=> b!7036894 (= e!4230273 tp!1936922)))

(declare-fun b!7036895 () Bool)

(assert (=> b!7036895 (= e!4230272 (set.member a!13238 z1!570))))

(assert (= d!2196476 b!7036894))

(assert (= (and d!2196476 res!2872565) b!7036895))

(declare-fun b_lambda!266955 () Bool)

(assert (=> (not b_lambda!266955) (not d!2196476)))

(declare-fun m!7746172 () Bool)

(assert (=> d!2196476 m!7746172))

(declare-fun m!7746174 () Bool)

(assert (=> d!2196476 m!7746174))

(declare-fun m!7746176 () Bool)

(assert (=> b!7036895 m!7746176))

(assert (=> d!2196132 d!2196476))

(declare-fun d!2196478 () Bool)

(assert (=> d!2196478 (= (map!15776 z1!570 lambda!415520) (choose!53334 z1!570 lambda!415520))))

(declare-fun bs!1872197 () Bool)

(assert (= bs!1872197 d!2196478))

(declare-fun m!7746178 () Bool)

(assert (=> bs!1872197 m!7746178))

(assert (=> d!2196132 d!2196478))

(declare-fun d!2196480 () Bool)

(assert (=> d!2196480 true))

(declare-fun setRes!49252 () Bool)

(assert (=> d!2196480 setRes!49252))

(declare-fun condSetEmpty!49252 () Bool)

(declare-fun res!2872566 () (Set Context!12936))

(assert (=> d!2196480 (= condSetEmpty!49252 (= res!2872566 (as set.empty (Set Context!12936))))))

(assert (=> d!2196480 (= (choose!53329 lt!2520847 lambda!415522) res!2872566)))

(declare-fun setIsEmpty!49252 () Bool)

(assert (=> setIsEmpty!49252 setRes!49252))

(declare-fun tp!1936924 () Bool)

(declare-fun setNonEmpty!49252 () Bool)

(declare-fun e!4230274 () Bool)

(declare-fun setElem!49252 () Context!12936)

(assert (=> setNonEmpty!49252 (= setRes!49252 (and tp!1936924 (inv!86540 setElem!49252) e!4230274))))

(declare-fun setRest!49252 () (Set Context!12936))

(assert (=> setNonEmpty!49252 (= res!2872566 (set.union (set.insert setElem!49252 (as set.empty (Set Context!12936))) setRest!49252))))

(declare-fun b!7036896 () Bool)

(declare-fun tp!1936923 () Bool)

(assert (=> b!7036896 (= e!4230274 tp!1936923)))

(assert (= (and d!2196480 condSetEmpty!49252) setIsEmpty!49252))

(assert (= (and d!2196480 (not condSetEmpty!49252)) setNonEmpty!49252))

(assert (= setNonEmpty!49252 b!7036896))

(declare-fun m!7746180 () Bool)

(assert (=> setNonEmpty!49252 m!7746180))

(assert (=> d!2196172 d!2196480))

(declare-fun bs!1872198 () Bool)

(declare-fun d!2196482 () Bool)

(assert (= bs!1872198 (and d!2196482 d!2196418)))

(declare-fun lambda!415638 () Int)

(assert (=> bs!1872198 (= lambda!415638 lambda!415634)))

(declare-fun bs!1872199 () Bool)

(assert (= bs!1872199 (and d!2196482 d!2196084)))

(assert (=> bs!1872199 (not (= lambda!415638 lambda!415591))))

(declare-fun bs!1872200 () Bool)

(assert (= bs!1872200 (and d!2196482 d!2196340)))

(assert (=> bs!1872200 (= lambda!415638 lambda!415628)))

(declare-fun bs!1872201 () Bool)

(assert (= bs!1872201 (and d!2196482 b!7036157)))

(assert (=> bs!1872201 (not (= lambda!415638 lambda!415519))))

(declare-fun bs!1872202 () Bool)

(assert (= bs!1872202 (and d!2196482 d!2196366)))

(assert (=> bs!1872202 (= lambda!415638 lambda!415629)))

(declare-fun bs!1872203 () Bool)

(assert (= bs!1872203 (and d!2196482 d!2196412)))

(assert (=> bs!1872203 (= lambda!415638 lambda!415633)))

(declare-fun bs!1872204 () Bool)

(assert (= bs!1872204 (and d!2196482 d!2196088)))

(assert (=> bs!1872204 (not (= lambda!415638 lambda!415594))))

(declare-fun bs!1872205 () Bool)

(assert (= bs!1872205 (and d!2196482 d!2196398)))

(assert (=> bs!1872205 (= lambda!415638 lambda!415631)))

(assert (=> d!2196482 (= (nullableZipper!2585 lt!2520793) (exists!3407 lt!2520793 lambda!415638))))

(declare-fun bs!1872206 () Bool)

(assert (= bs!1872206 d!2196482))

(declare-fun m!7746182 () Bool)

(assert (=> bs!1872206 m!7746182))

(assert (=> b!7036268 d!2196482))

(declare-fun b!7036899 () Bool)

(declare-fun res!2872567 () Bool)

(declare-fun e!4230276 () Bool)

(assert (=> b!7036899 (=> (not res!2872567) (not e!4230276))))

(declare-fun lt!2521197 () List!67944)

(assert (=> b!7036899 (= res!2872567 (= (size!41074 lt!2521197) (+ (size!41074 (t!381713 (exprs!6968 lt!2520817))) (size!41074 (exprs!6968 ct2!306)))))))

(declare-fun b!7036900 () Bool)

(assert (=> b!7036900 (= e!4230276 (or (not (= (exprs!6968 ct2!306) Nil!67820)) (= lt!2521197 (t!381713 (exprs!6968 lt!2520817)))))))

(declare-fun b!7036898 () Bool)

(declare-fun e!4230275 () List!67944)

(assert (=> b!7036898 (= e!4230275 (Cons!67820 (h!74268 (t!381713 (exprs!6968 lt!2520817))) (++!15524 (t!381713 (t!381713 (exprs!6968 lt!2520817))) (exprs!6968 ct2!306))))))

(declare-fun b!7036897 () Bool)

(assert (=> b!7036897 (= e!4230275 (exprs!6968 ct2!306))))

(declare-fun d!2196484 () Bool)

(assert (=> d!2196484 e!4230276))

(declare-fun res!2872568 () Bool)

(assert (=> d!2196484 (=> (not res!2872568) (not e!4230276))))

(assert (=> d!2196484 (= res!2872568 (= (content!13551 lt!2521197) (set.union (content!13551 (t!381713 (exprs!6968 lt!2520817))) (content!13551 (exprs!6968 ct2!306)))))))

(assert (=> d!2196484 (= lt!2521197 e!4230275)))

(declare-fun c!1309388 () Bool)

(assert (=> d!2196484 (= c!1309388 (is-Nil!67820 (t!381713 (exprs!6968 lt!2520817))))))

(assert (=> d!2196484 (= (++!15524 (t!381713 (exprs!6968 lt!2520817)) (exprs!6968 ct2!306)) lt!2521197)))

(assert (= (and d!2196484 c!1309388) b!7036897))

(assert (= (and d!2196484 (not c!1309388)) b!7036898))

(assert (= (and d!2196484 res!2872568) b!7036899))

(assert (= (and b!7036899 res!2872567) b!7036900))

(declare-fun m!7746184 () Bool)

(assert (=> b!7036899 m!7746184))

(assert (=> b!7036899 m!7746128))

(assert (=> b!7036899 m!7745300))

(declare-fun m!7746186 () Bool)

(assert (=> b!7036898 m!7746186))

(declare-fun m!7746188 () Bool)

(assert (=> d!2196484 m!7746188))

(declare-fun m!7746190 () Bool)

(assert (=> d!2196484 m!7746190))

(assert (=> d!2196484 m!7745308))

(assert (=> b!7036355 d!2196484))

(declare-fun d!2196486 () Bool)

(declare-fun c!1309389 () Bool)

(assert (=> d!2196486 (= c!1309389 (isEmpty!39563 (tail!13565 (_1!37348 lt!2520831))))))

(declare-fun e!4230277 () Bool)

(assert (=> d!2196486 (= (matchZipper!3012 (derivationStepZipper!2928 lt!2520803 (head!14272 (_1!37348 lt!2520831))) (tail!13565 (_1!37348 lt!2520831))) e!4230277)))

(declare-fun b!7036901 () Bool)

(assert (=> b!7036901 (= e!4230277 (nullableZipper!2585 (derivationStepZipper!2928 lt!2520803 (head!14272 (_1!37348 lt!2520831)))))))

(declare-fun b!7036902 () Bool)

(assert (=> b!7036902 (= e!4230277 (matchZipper!3012 (derivationStepZipper!2928 (derivationStepZipper!2928 lt!2520803 (head!14272 (_1!37348 lt!2520831))) (head!14272 (tail!13565 (_1!37348 lt!2520831)))) (tail!13565 (tail!13565 (_1!37348 lt!2520831)))))))

(assert (= (and d!2196486 c!1309389) b!7036901))

(assert (= (and d!2196486 (not c!1309389)) b!7036902))

(assert (=> d!2196486 m!7744988))

(declare-fun m!7746192 () Bool)

(assert (=> d!2196486 m!7746192))

(assert (=> b!7036901 m!7745436))

(declare-fun m!7746194 () Bool)

(assert (=> b!7036901 m!7746194))

(assert (=> b!7036902 m!7744988))

(declare-fun m!7746196 () Bool)

(assert (=> b!7036902 m!7746196))

(assert (=> b!7036902 m!7745436))

(assert (=> b!7036902 m!7746196))

(declare-fun m!7746198 () Bool)

(assert (=> b!7036902 m!7746198))

(assert (=> b!7036902 m!7744988))

(declare-fun m!7746200 () Bool)

(assert (=> b!7036902 m!7746200))

(assert (=> b!7036902 m!7746198))

(assert (=> b!7036902 m!7746200))

(declare-fun m!7746202 () Bool)

(assert (=> b!7036902 m!7746202))

(assert (=> b!7036404 d!2196486))

(declare-fun bs!1872207 () Bool)

(declare-fun d!2196488 () Bool)

(assert (= bs!1872207 (and d!2196488 d!2196422)))

(declare-fun lambda!415639 () Int)

(assert (=> bs!1872207 (= (= (head!14272 (_1!37348 lt!2520831)) (head!14272 lt!2520827)) (= lambda!415639 lambda!415635))))

(declare-fun bs!1872208 () Bool)

(assert (= bs!1872208 (and d!2196488 d!2196174)))

(assert (=> bs!1872208 (= (= (head!14272 (_1!37348 lt!2520831)) (h!74269 s!7408)) (= lambda!415639 lambda!415604))))

(declare-fun bs!1872209 () Bool)

(assert (= bs!1872209 (and d!2196488 d!2196402)))

(assert (=> bs!1872209 (= (= (head!14272 (_1!37348 lt!2520831)) (head!14272 s!7408)) (= lambda!415639 lambda!415632))))

(declare-fun bs!1872210 () Bool)

(assert (= bs!1872210 (and d!2196488 d!2196438)))

(assert (=> bs!1872210 (= (= (head!14272 (_1!37348 lt!2520831)) (head!14272 (t!381714 s!7408))) (= lambda!415639 lambda!415636))))

(declare-fun bs!1872211 () Bool)

(assert (= bs!1872211 (and d!2196488 d!2196074)))

(assert (=> bs!1872211 (= (= (head!14272 (_1!37348 lt!2520831)) (h!74269 s!7408)) (= lambda!415639 lambda!415588))))

(declare-fun bs!1872212 () Bool)

(assert (= bs!1872212 (and d!2196488 b!7036143)))

(assert (=> bs!1872212 (= (= (head!14272 (_1!37348 lt!2520831)) (h!74269 s!7408)) (= lambda!415639 lambda!415522))))

(declare-fun bs!1872213 () Bool)

(assert (= bs!1872213 (and d!2196488 d!2196384)))

(assert (=> bs!1872213 (= (= (head!14272 (_1!37348 lt!2520831)) (head!14272 (t!381714 s!7408))) (= lambda!415639 lambda!415630))))

(declare-fun bs!1872214 () Bool)

(assert (= bs!1872214 (and d!2196488 d!2196070)))

(assert (=> bs!1872214 (= (= (head!14272 (_1!37348 lt!2520831)) (h!74269 s!7408)) (= lambda!415639 lambda!415587))))

(declare-fun bs!1872215 () Bool)

(assert (= bs!1872215 (and d!2196488 d!2196470)))

(assert (=> bs!1872215 (= (= (head!14272 (_1!37348 lt!2520831)) (head!14272 lt!2520827)) (= lambda!415639 lambda!415637))))

(assert (=> d!2196488 true))

(assert (=> d!2196488 (= (derivationStepZipper!2928 lt!2520803 (head!14272 (_1!37348 lt!2520831))) (flatMap!2419 lt!2520803 lambda!415639))))

(declare-fun bs!1872216 () Bool)

(assert (= bs!1872216 d!2196488))

(declare-fun m!7746204 () Bool)

(assert (=> bs!1872216 m!7746204))

(assert (=> b!7036404 d!2196488))

(declare-fun d!2196490 () Bool)

(assert (=> d!2196490 (= (head!14272 (_1!37348 lt!2520831)) (h!74269 (_1!37348 lt!2520831)))))

(assert (=> b!7036404 d!2196490))

(assert (=> b!7036404 d!2196120))

(declare-fun d!2196492 () Bool)

(declare-fun c!1309390 () Bool)

(assert (=> d!2196492 (= c!1309390 (isEmpty!39563 (tail!13565 (t!381714 s!7408))))))

(declare-fun e!4230278 () Bool)

(assert (=> d!2196492 (= (matchZipper!3012 (derivationStepZipper!2928 lt!2520815 (head!14272 (t!381714 s!7408))) (tail!13565 (t!381714 s!7408))) e!4230278)))

(declare-fun b!7036903 () Bool)

(assert (=> b!7036903 (= e!4230278 (nullableZipper!2585 (derivationStepZipper!2928 lt!2520815 (head!14272 (t!381714 s!7408)))))))

(declare-fun b!7036904 () Bool)

(assert (=> b!7036904 (= e!4230278 (matchZipper!3012 (derivationStepZipper!2928 (derivationStepZipper!2928 lt!2520815 (head!14272 (t!381714 s!7408))) (head!14272 (tail!13565 (t!381714 s!7408)))) (tail!13565 (tail!13565 (t!381714 s!7408)))))))

(assert (= (and d!2196492 c!1309390) b!7036903))

(assert (= (and d!2196492 (not c!1309390)) b!7036904))

(assert (=> d!2196492 m!7745176))

(assert (=> d!2196492 m!7745960))

(assert (=> b!7036903 m!7745174))

(declare-fun m!7746206 () Bool)

(assert (=> b!7036903 m!7746206))

(assert (=> b!7036904 m!7745176))

(assert (=> b!7036904 m!7745964))

(assert (=> b!7036904 m!7745174))

(assert (=> b!7036904 m!7745964))

(declare-fun m!7746208 () Bool)

(assert (=> b!7036904 m!7746208))

(assert (=> b!7036904 m!7745176))

(assert (=> b!7036904 m!7745968))

(assert (=> b!7036904 m!7746208))

(assert (=> b!7036904 m!7745968))

(declare-fun m!7746210 () Bool)

(assert (=> b!7036904 m!7746210))

(assert (=> b!7036271 d!2196492))

(declare-fun bs!1872217 () Bool)

(declare-fun d!2196494 () Bool)

(assert (= bs!1872217 (and d!2196494 d!2196422)))

(declare-fun lambda!415640 () Int)

(assert (=> bs!1872217 (= (= (head!14272 (t!381714 s!7408)) (head!14272 lt!2520827)) (= lambda!415640 lambda!415635))))

(declare-fun bs!1872218 () Bool)

(assert (= bs!1872218 (and d!2196494 d!2196488)))

(assert (=> bs!1872218 (= (= (head!14272 (t!381714 s!7408)) (head!14272 (_1!37348 lt!2520831))) (= lambda!415640 lambda!415639))))

(declare-fun bs!1872219 () Bool)

(assert (= bs!1872219 (and d!2196494 d!2196174)))

(assert (=> bs!1872219 (= (= (head!14272 (t!381714 s!7408)) (h!74269 s!7408)) (= lambda!415640 lambda!415604))))

(declare-fun bs!1872220 () Bool)

(assert (= bs!1872220 (and d!2196494 d!2196402)))

(assert (=> bs!1872220 (= (= (head!14272 (t!381714 s!7408)) (head!14272 s!7408)) (= lambda!415640 lambda!415632))))

(declare-fun bs!1872221 () Bool)

(assert (= bs!1872221 (and d!2196494 d!2196438)))

(assert (=> bs!1872221 (= lambda!415640 lambda!415636)))

(declare-fun bs!1872222 () Bool)

(assert (= bs!1872222 (and d!2196494 d!2196074)))

(assert (=> bs!1872222 (= (= (head!14272 (t!381714 s!7408)) (h!74269 s!7408)) (= lambda!415640 lambda!415588))))

(declare-fun bs!1872223 () Bool)

(assert (= bs!1872223 (and d!2196494 b!7036143)))

(assert (=> bs!1872223 (= (= (head!14272 (t!381714 s!7408)) (h!74269 s!7408)) (= lambda!415640 lambda!415522))))

(declare-fun bs!1872224 () Bool)

(assert (= bs!1872224 (and d!2196494 d!2196384)))

(assert (=> bs!1872224 (= lambda!415640 lambda!415630)))

(declare-fun bs!1872225 () Bool)

(assert (= bs!1872225 (and d!2196494 d!2196070)))

(assert (=> bs!1872225 (= (= (head!14272 (t!381714 s!7408)) (h!74269 s!7408)) (= lambda!415640 lambda!415587))))

(declare-fun bs!1872226 () Bool)

(assert (= bs!1872226 (and d!2196494 d!2196470)))

(assert (=> bs!1872226 (= (= (head!14272 (t!381714 s!7408)) (head!14272 lt!2520827)) (= lambda!415640 lambda!415637))))

(assert (=> d!2196494 true))

(assert (=> d!2196494 (= (derivationStepZipper!2928 lt!2520815 (head!14272 (t!381714 s!7408))) (flatMap!2419 lt!2520815 lambda!415640))))

(declare-fun bs!1872227 () Bool)

(assert (= bs!1872227 d!2196494))

(declare-fun m!7746212 () Bool)

(assert (=> bs!1872227 m!7746212))

(assert (=> b!7036271 d!2196494))

(assert (=> b!7036271 d!2196386))

(assert (=> b!7036271 d!2196388))

(declare-fun d!2196496 () Bool)

(declare-fun res!2872569 () Bool)

(declare-fun e!4230279 () Bool)

(assert (=> d!2196496 (=> res!2872569 e!4230279)))

(assert (=> d!2196496 (= res!2872569 (is-Nil!67820 (exprs!6968 ct2!306)))))

(assert (=> d!2196496 (= (forall!16389 (exprs!6968 ct2!306) lambda!415603) e!4230279)))

(declare-fun b!7036905 () Bool)

(declare-fun e!4230280 () Bool)

(assert (=> b!7036905 (= e!4230279 e!4230280)))

(declare-fun res!2872570 () Bool)

(assert (=> b!7036905 (=> (not res!2872570) (not e!4230280))))

(assert (=> b!7036905 (= res!2872570 (dynLambda!27413 lambda!415603 (h!74268 (exprs!6968 ct2!306))))))

(declare-fun b!7036906 () Bool)

(assert (=> b!7036906 (= e!4230280 (forall!16389 (t!381713 (exprs!6968 ct2!306)) lambda!415603))))

(assert (= (and d!2196496 (not res!2872569)) b!7036905))

(assert (= (and b!7036905 res!2872570) b!7036906))

(declare-fun b_lambda!266957 () Bool)

(assert (=> (not b_lambda!266957) (not b!7036905)))

(declare-fun m!7746214 () Bool)

(assert (=> b!7036905 m!7746214))

(declare-fun m!7746216 () Bool)

(assert (=> b!7036906 m!7746216))

(assert (=> d!2196160 d!2196496))

(declare-fun d!2196498 () Bool)

(declare-fun res!2872571 () Bool)

(declare-fun e!4230281 () Bool)

(assert (=> d!2196498 (=> res!2872571 e!4230281)))

(assert (=> d!2196498 (= res!2872571 (is-Nil!67820 (++!15524 lt!2520840 (exprs!6968 ct2!306))))))

(assert (=> d!2196498 (= (forall!16389 (++!15524 lt!2520840 (exprs!6968 ct2!306)) lambda!415521) e!4230281)))

(declare-fun b!7036907 () Bool)

(declare-fun e!4230282 () Bool)

(assert (=> b!7036907 (= e!4230281 e!4230282)))

(declare-fun res!2872572 () Bool)

(assert (=> b!7036907 (=> (not res!2872572) (not e!4230282))))

(assert (=> b!7036907 (= res!2872572 (dynLambda!27413 lambda!415521 (h!74268 (++!15524 lt!2520840 (exprs!6968 ct2!306)))))))

(declare-fun b!7036908 () Bool)

(assert (=> b!7036908 (= e!4230282 (forall!16389 (t!381713 (++!15524 lt!2520840 (exprs!6968 ct2!306))) lambda!415521))))

(assert (= (and d!2196498 (not res!2872571)) b!7036907))

(assert (= (and b!7036907 res!2872572) b!7036908))

(declare-fun b_lambda!266959 () Bool)

(assert (=> (not b_lambda!266959) (not b!7036907)))

(declare-fun m!7746218 () Bool)

(assert (=> b!7036907 m!7746218))

(declare-fun m!7746220 () Bool)

(assert (=> b!7036908 m!7746220))

(assert (=> d!2196056 d!2196498))

(assert (=> d!2196056 d!2196108))

(declare-fun d!2196500 () Bool)

(assert (=> d!2196500 (forall!16389 (++!15524 lt!2520840 (exprs!6968 ct2!306)) lambda!415521)))

(assert (=> d!2196500 true))

(declare-fun _$78!597 () Unit!161622)

(assert (=> d!2196500 (= (choose!53326 lt!2520840 (exprs!6968 ct2!306) lambda!415521) _$78!597)))

(declare-fun bs!1872228 () Bool)

(assert (= bs!1872228 d!2196500))

(assert (=> bs!1872228 m!7744872))

(assert (=> bs!1872228 m!7744872))

(assert (=> bs!1872228 m!7745162))

(assert (=> d!2196056 d!2196500))

(declare-fun d!2196502 () Bool)

(declare-fun res!2872573 () Bool)

(declare-fun e!4230283 () Bool)

(assert (=> d!2196502 (=> res!2872573 e!4230283)))

(assert (=> d!2196502 (= res!2872573 (is-Nil!67820 lt!2520840))))

(assert (=> d!2196502 (= (forall!16389 lt!2520840 lambda!415521) e!4230283)))

(declare-fun b!7036909 () Bool)

(declare-fun e!4230284 () Bool)

(assert (=> b!7036909 (= e!4230283 e!4230284)))

(declare-fun res!2872574 () Bool)

(assert (=> b!7036909 (=> (not res!2872574) (not e!4230284))))

(assert (=> b!7036909 (= res!2872574 (dynLambda!27413 lambda!415521 (h!74268 lt!2520840)))))

(declare-fun b!7036910 () Bool)

(assert (=> b!7036910 (= e!4230284 (forall!16389 (t!381713 lt!2520840) lambda!415521))))

(assert (= (and d!2196502 (not res!2872573)) b!7036909))

(assert (= (and b!7036909 res!2872574) b!7036910))

(declare-fun b_lambda!266961 () Bool)

(assert (=> (not b_lambda!266961) (not b!7036909)))

(declare-fun m!7746222 () Bool)

(assert (=> b!7036909 m!7746222))

(declare-fun m!7746224 () Bool)

(assert (=> b!7036910 m!7746224))

(assert (=> d!2196056 d!2196502))

(assert (=> bs!1872072 d!2196076))

(declare-fun d!2196504 () Bool)

(assert (=> d!2196504 true))

(declare-fun setRes!49253 () Bool)

(assert (=> d!2196504 setRes!49253))

(declare-fun condSetEmpty!49253 () Bool)

(declare-fun res!2872575 () (Set Context!12936))

(assert (=> d!2196504 (= condSetEmpty!49253 (= res!2872575 (as set.empty (Set Context!12936))))))

(assert (=> d!2196504 (= (choose!53329 lt!2520793 lambda!415522) res!2872575)))

(declare-fun setIsEmpty!49253 () Bool)

(assert (=> setIsEmpty!49253 setRes!49253))

(declare-fun tp!1936926 () Bool)

(declare-fun setNonEmpty!49253 () Bool)

(declare-fun e!4230285 () Bool)

(declare-fun setElem!49253 () Context!12936)

(assert (=> setNonEmpty!49253 (= setRes!49253 (and tp!1936926 (inv!86540 setElem!49253) e!4230285))))

(declare-fun setRest!49253 () (Set Context!12936))

(assert (=> setNonEmpty!49253 (= res!2872575 (set.union (set.insert setElem!49253 (as set.empty (Set Context!12936))) setRest!49253))))

(declare-fun b!7036911 () Bool)

(declare-fun tp!1936925 () Bool)

(assert (=> b!7036911 (= e!4230285 tp!1936925)))

(assert (= (and d!2196504 condSetEmpty!49253) setIsEmpty!49253))

(assert (= (and d!2196504 (not condSetEmpty!49253)) setNonEmpty!49253))

(assert (= setNonEmpty!49253 b!7036911))

(declare-fun m!7746226 () Bool)

(assert (=> setNonEmpty!49253 m!7746226))

(assert (=> d!2196072 d!2196504))

(assert (=> d!2196124 d!2196332))

(declare-fun d!2196506 () Bool)

(assert (=> d!2196506 (= (nullable!7183 (regOne!35456 (h!74268 (exprs!6968 lt!2520817)))) (nullableFct!2733 (regOne!35456 (h!74268 (exprs!6968 lt!2520817)))))))

(declare-fun bs!1872229 () Bool)

(assert (= bs!1872229 d!2196506))

(declare-fun m!7746228 () Bool)

(assert (=> bs!1872229 m!7746228))

(assert (=> b!7036452 d!2196506))

(declare-fun bs!1872230 () Bool)

(declare-fun d!2196508 () Bool)

(assert (= bs!1872230 (and d!2196508 b!7036151)))

(declare-fun lambda!415641 () Int)

(assert (=> bs!1872230 (= lambda!415641 lambda!415520)))

(declare-fun bs!1872231 () Bool)

(assert (= bs!1872231 (and d!2196508 d!2196158)))

(assert (=> bs!1872231 (= lambda!415641 lambda!415602)))

(assert (=> d!2196508 true))

(assert (=> d!2196508 (= (appendTo!593 lt!2520803 ct2!306) (map!15776 lt!2520803 lambda!415641))))

(declare-fun bs!1872232 () Bool)

(assert (= bs!1872232 d!2196508))

(declare-fun m!7746230 () Bool)

(assert (=> bs!1872232 m!7746230))

(assert (=> d!2196150 d!2196508))

(declare-fun d!2196510 () Bool)

(declare-fun c!1309391 () Bool)

(assert (=> d!2196510 (= c!1309391 (isEmpty!39563 s!7408))))

(declare-fun e!4230286 () Bool)

(assert (=> d!2196510 (= (matchZipper!3012 (appendTo!593 lt!2520803 ct2!306) s!7408) e!4230286)))

(declare-fun b!7036912 () Bool)

(assert (=> b!7036912 (= e!4230286 (nullableZipper!2585 (appendTo!593 lt!2520803 ct2!306)))))

(declare-fun b!7036913 () Bool)

(assert (=> b!7036913 (= e!4230286 (matchZipper!3012 (derivationStepZipper!2928 (appendTo!593 lt!2520803 ct2!306) (head!14272 s!7408)) (tail!13565 s!7408)))))

(assert (= (and d!2196510 c!1309391) b!7036912))

(assert (= (and d!2196510 (not c!1309391)) b!7036913))

(assert (=> d!2196510 m!7745150))

(assert (=> b!7036912 m!7745424))

(declare-fun m!7746232 () Bool)

(assert (=> b!7036912 m!7746232))

(assert (=> b!7036913 m!7745154))

(assert (=> b!7036913 m!7745424))

(assert (=> b!7036913 m!7745154))

(declare-fun m!7746234 () Bool)

(assert (=> b!7036913 m!7746234))

(assert (=> b!7036913 m!7745158))

(assert (=> b!7036913 m!7746234))

(assert (=> b!7036913 m!7745158))

(declare-fun m!7746236 () Bool)

(assert (=> b!7036913 m!7746236))

(assert (=> d!2196150 d!2196510))

(declare-fun b!7036914 () Bool)

(declare-fun e!4230290 () Bool)

(assert (=> b!7036914 (= e!4230290 (matchZipper!3012 (set.insert ct2!306 (as set.empty (Set Context!12936))) s!7408))))

(declare-fun b!7036915 () Bool)

(declare-fun res!2872577 () Bool)

(declare-fun e!4230291 () Bool)

(assert (=> b!7036915 (=> (not res!2872577) (not e!4230291))))

(declare-fun lt!2521199 () Option!16877)

(assert (=> b!7036915 (= res!2872577 (matchZipper!3012 lt!2520803 (_1!37348 (get!23764 lt!2521199))))))

(declare-fun b!7036916 () Bool)

(declare-fun lt!2521200 () Unit!161622)

(declare-fun lt!2521198 () Unit!161622)

(assert (=> b!7036916 (= lt!2521200 lt!2521198)))

(assert (=> b!7036916 (= (++!15525 (++!15525 Nil!67821 (Cons!67821 (h!74269 s!7408) Nil!67821)) (t!381714 s!7408)) s!7408)))

(assert (=> b!7036916 (= lt!2521198 (lemmaMoveElementToOtherListKeepsConcatEq!2929 Nil!67821 (h!74269 s!7408) (t!381714 s!7408) s!7408))))

(declare-fun e!4230289 () Option!16877)

(assert (=> b!7036916 (= e!4230289 (findConcatSeparationZippers!393 lt!2520803 (set.insert ct2!306 (as set.empty (Set Context!12936))) (++!15525 Nil!67821 (Cons!67821 (h!74269 s!7408) Nil!67821)) (t!381714 s!7408) s!7408))))

(declare-fun d!2196512 () Bool)

(declare-fun e!4230288 () Bool)

(assert (=> d!2196512 e!4230288))

(declare-fun res!2872580 () Bool)

(assert (=> d!2196512 (=> res!2872580 e!4230288)))

(assert (=> d!2196512 (= res!2872580 e!4230291)))

(declare-fun res!2872579 () Bool)

(assert (=> d!2196512 (=> (not res!2872579) (not e!4230291))))

(assert (=> d!2196512 (= res!2872579 (isDefined!13578 lt!2521199))))

(declare-fun e!4230287 () Option!16877)

(assert (=> d!2196512 (= lt!2521199 e!4230287)))

(declare-fun c!1309393 () Bool)

(assert (=> d!2196512 (= c!1309393 e!4230290)))

(declare-fun res!2872578 () Bool)

(assert (=> d!2196512 (=> (not res!2872578) (not e!4230290))))

(assert (=> d!2196512 (= res!2872578 (matchZipper!3012 lt!2520803 Nil!67821))))

(assert (=> d!2196512 (= (++!15525 Nil!67821 s!7408) s!7408)))

(assert (=> d!2196512 (= (findConcatSeparationZippers!393 lt!2520803 (set.insert ct2!306 (as set.empty (Set Context!12936))) Nil!67821 s!7408 s!7408) lt!2521199)))

(declare-fun b!7036917 () Bool)

(assert (=> b!7036917 (= e!4230291 (= (++!15525 (_1!37348 (get!23764 lt!2521199)) (_2!37348 (get!23764 lt!2521199))) s!7408))))

(declare-fun b!7036918 () Bool)

(declare-fun res!2872576 () Bool)

(assert (=> b!7036918 (=> (not res!2872576) (not e!4230291))))

(assert (=> b!7036918 (= res!2872576 (matchZipper!3012 (set.insert ct2!306 (as set.empty (Set Context!12936))) (_2!37348 (get!23764 lt!2521199))))))

(declare-fun b!7036919 () Bool)

(assert (=> b!7036919 (= e!4230287 (Some!16876 (tuple2!68091 Nil!67821 s!7408)))))

(declare-fun b!7036920 () Bool)

(assert (=> b!7036920 (= e!4230289 None!16876)))

(declare-fun b!7036921 () Bool)

(assert (=> b!7036921 (= e!4230287 e!4230289)))

(declare-fun c!1309392 () Bool)

(assert (=> b!7036921 (= c!1309392 (is-Nil!67821 s!7408))))

(declare-fun b!7036922 () Bool)

(assert (=> b!7036922 (= e!4230288 (not (isDefined!13578 lt!2521199)))))

(assert (= (and d!2196512 res!2872578) b!7036914))

(assert (= (and d!2196512 c!1309393) b!7036919))

(assert (= (and d!2196512 (not c!1309393)) b!7036921))

(assert (= (and b!7036921 c!1309392) b!7036920))

(assert (= (and b!7036921 (not c!1309392)) b!7036916))

(assert (= (and d!2196512 res!2872579) b!7036915))

(assert (= (and b!7036915 res!2872577) b!7036918))

(assert (= (and b!7036918 res!2872576) b!7036917))

(assert (= (and d!2196512 (not res!2872580)) b!7036922))

(declare-fun m!7746238 () Bool)

(assert (=> b!7036915 m!7746238))

(declare-fun m!7746240 () Bool)

(assert (=> b!7036915 m!7746240))

(assert (=> b!7036916 m!7745404))

(assert (=> b!7036916 m!7745404))

(assert (=> b!7036916 m!7745406))

(assert (=> b!7036916 m!7745408))

(assert (=> b!7036916 m!7745000))

(assert (=> b!7036916 m!7745404))

(declare-fun m!7746242 () Bool)

(assert (=> b!7036916 m!7746242))

(assert (=> b!7036914 m!7745000))

(declare-fun m!7746244 () Bool)

(assert (=> b!7036914 m!7746244))

(assert (=> b!7036918 m!7746238))

(assert (=> b!7036918 m!7745000))

(declare-fun m!7746246 () Bool)

(assert (=> b!7036918 m!7746246))

(declare-fun m!7746248 () Bool)

(assert (=> d!2196512 m!7746248))

(assert (=> d!2196512 m!7745418))

(assert (=> d!2196512 m!7745420))

(assert (=> b!7036922 m!7746248))

(assert (=> b!7036917 m!7746238))

(declare-fun m!7746250 () Bool)

(assert (=> b!7036917 m!7746250))

(assert (=> d!2196150 d!2196512))

(declare-fun d!2196514 () Bool)

(assert (=> d!2196514 (isDefined!13578 (findConcatSeparationZippers!393 lt!2520803 (set.insert ct2!306 (as set.empty (Set Context!12936))) Nil!67821 s!7408 s!7408))))

(assert (=> d!2196514 true))

(declare-fun _$50!581 () Unit!161622)

(assert (=> d!2196514 (= (choose!53336 lt!2520803 ct2!306 s!7408) _$50!581)))

(declare-fun bs!1872233 () Bool)

(assert (= bs!1872233 d!2196514))

(assert (=> bs!1872233 m!7745000))

(assert (=> bs!1872233 m!7745000))

(assert (=> bs!1872233 m!7745428))

(assert (=> bs!1872233 m!7745428))

(assert (=> bs!1872233 m!7745430))

(assert (=> d!2196150 d!2196514))

(declare-fun d!2196516 () Bool)

(assert (=> d!2196516 (= (isDefined!13578 (findConcatSeparationZippers!393 lt!2520803 (set.insert ct2!306 (as set.empty (Set Context!12936))) Nil!67821 s!7408 s!7408)) (not (isEmpty!39567 (findConcatSeparationZippers!393 lt!2520803 (set.insert ct2!306 (as set.empty (Set Context!12936))) Nil!67821 s!7408 s!7408))))))

(declare-fun bs!1872234 () Bool)

(assert (= bs!1872234 d!2196516))

(assert (=> bs!1872234 m!7745428))

(declare-fun m!7746252 () Bool)

(assert (=> bs!1872234 m!7746252))

(assert (=> d!2196150 d!2196516))

(assert (=> d!2196152 d!2196052))

(assert (=> d!2196090 d!2196432))

(declare-fun d!2196518 () Bool)

(assert (=> d!2196518 (= (map!15776 z1!570 lambda!415602) (choose!53334 z1!570 lambda!415602))))

(declare-fun bs!1872235 () Bool)

(assert (= bs!1872235 d!2196518))

(declare-fun m!7746254 () Bool)

(assert (=> bs!1872235 m!7746254))

(assert (=> d!2196158 d!2196518))

(declare-fun bs!1872236 () Bool)

(declare-fun d!2196520 () Bool)

(assert (= bs!1872236 (and d!2196520 d!2196418)))

(declare-fun lambda!415642 () Int)

(assert (=> bs!1872236 (= lambda!415642 lambda!415634)))

(declare-fun bs!1872237 () Bool)

(assert (= bs!1872237 (and d!2196520 d!2196482)))

(assert (=> bs!1872237 (= lambda!415642 lambda!415638)))

(declare-fun bs!1872238 () Bool)

(assert (= bs!1872238 (and d!2196520 d!2196084)))

(assert (=> bs!1872238 (not (= lambda!415642 lambda!415591))))

(declare-fun bs!1872239 () Bool)

(assert (= bs!1872239 (and d!2196520 d!2196340)))

(assert (=> bs!1872239 (= lambda!415642 lambda!415628)))

(declare-fun bs!1872240 () Bool)

(assert (= bs!1872240 (and d!2196520 b!7036157)))

(assert (=> bs!1872240 (not (= lambda!415642 lambda!415519))))

(declare-fun bs!1872241 () Bool)

(assert (= bs!1872241 (and d!2196520 d!2196366)))

(assert (=> bs!1872241 (= lambda!415642 lambda!415629)))

(declare-fun bs!1872242 () Bool)

(assert (= bs!1872242 (and d!2196520 d!2196412)))

(assert (=> bs!1872242 (= lambda!415642 lambda!415633)))

(declare-fun bs!1872243 () Bool)

(assert (= bs!1872243 (and d!2196520 d!2196088)))

(assert (=> bs!1872243 (not (= lambda!415642 lambda!415594))))

(declare-fun bs!1872244 () Bool)

(assert (= bs!1872244 (and d!2196520 d!2196398)))

(assert (=> bs!1872244 (= lambda!415642 lambda!415631)))

(assert (=> d!2196520 (= (nullableZipper!2585 lt!2520794) (exists!3407 lt!2520794 lambda!415642))))

(declare-fun bs!1872245 () Bool)

(assert (= bs!1872245 d!2196520))

(declare-fun m!7746256 () Bool)

(assert (=> bs!1872245 m!7746256))

(assert (=> b!7036352 d!2196520))

(assert (=> d!2196170 d!2196172))

(declare-fun d!2196522 () Bool)

(assert (=> d!2196522 (= (flatMap!2419 lt!2520847 lambda!415522) (dynLambda!27405 lambda!415522 lt!2520807))))

(assert (=> d!2196522 true))

(declare-fun _$13!4496 () Unit!161622)

(assert (=> d!2196522 (= (choose!53328 lt!2520847 lt!2520807 lambda!415522) _$13!4496)))

(declare-fun b_lambda!266963 () Bool)

(assert (=> (not b_lambda!266963) (not d!2196522)))

(declare-fun bs!1872246 () Bool)

(assert (= bs!1872246 d!2196522))

(assert (=> bs!1872246 m!7744982))

(assert (=> bs!1872246 m!7745482))

(assert (=> d!2196170 d!2196522))

(declare-fun d!2196524 () Bool)

(declare-fun c!1309394 () Bool)

(assert (=> d!2196524 (= c!1309394 (isEmpty!39563 (t!381714 s!7408)))))

(declare-fun e!4230292 () Bool)

(assert (=> d!2196524 (= (matchZipper!3012 (set.union lt!2520812 lt!2520800) (t!381714 s!7408)) e!4230292)))

(declare-fun b!7036923 () Bool)

(assert (=> b!7036923 (= e!4230292 (nullableZipper!2585 (set.union lt!2520812 lt!2520800)))))

(declare-fun b!7036924 () Bool)

(assert (=> b!7036924 (= e!4230292 (matchZipper!3012 (derivationStepZipper!2928 (set.union lt!2520812 lt!2520800) (head!14272 (t!381714 s!7408))) (tail!13565 (t!381714 s!7408))))))

(assert (= (and d!2196524 c!1309394) b!7036923))

(assert (= (and d!2196524 (not c!1309394)) b!7036924))

(assert (=> d!2196524 m!7745168))

(declare-fun m!7746258 () Bool)

(assert (=> b!7036923 m!7746258))

(assert (=> b!7036924 m!7745172))

(assert (=> b!7036924 m!7745172))

(declare-fun m!7746260 () Bool)

(assert (=> b!7036924 m!7746260))

(assert (=> b!7036924 m!7745176))

(assert (=> b!7036924 m!7746260))

(assert (=> b!7036924 m!7745176))

(declare-fun m!7746262 () Bool)

(assert (=> b!7036924 m!7746262))

(assert (=> d!2196064 d!2196524))

(assert (=> d!2196064 d!2196062))

(declare-fun e!4230293 () Bool)

(declare-fun d!2196526 () Bool)

(assert (=> d!2196526 (= (matchZipper!3012 (set.union lt!2520812 lt!2520800) (t!381714 s!7408)) e!4230293)))

(declare-fun res!2872581 () Bool)

(assert (=> d!2196526 (=> res!2872581 e!4230293)))

(assert (=> d!2196526 (= res!2872581 (matchZipper!3012 lt!2520812 (t!381714 s!7408)))))

(assert (=> d!2196526 true))

(declare-fun _$48!2498 () Unit!161622)

(assert (=> d!2196526 (= (choose!53327 lt!2520812 lt!2520800 (t!381714 s!7408)) _$48!2498)))

(declare-fun b!7036925 () Bool)

(assert (=> b!7036925 (= e!4230293 (matchZipper!3012 lt!2520800 (t!381714 s!7408)))))

(assert (= (and d!2196526 (not res!2872581)) b!7036925))

(assert (=> d!2196526 m!7745192))

(assert (=> d!2196526 m!7744926))

(assert (=> b!7036925 m!7744892))

(assert (=> d!2196064 d!2196526))

(declare-fun bs!1872247 () Bool)

(declare-fun d!2196528 () Bool)

(assert (= bs!1872247 (and d!2196528 d!2196418)))

(declare-fun lambda!415643 () Int)

(assert (=> bs!1872247 (= lambda!415643 lambda!415634)))

(declare-fun bs!1872248 () Bool)

(assert (= bs!1872248 (and d!2196528 d!2196482)))

(assert (=> bs!1872248 (= lambda!415643 lambda!415638)))

(declare-fun bs!1872249 () Bool)

(assert (= bs!1872249 (and d!2196528 d!2196084)))

(assert (=> bs!1872249 (not (= lambda!415643 lambda!415591))))

(declare-fun bs!1872250 () Bool)

(assert (= bs!1872250 (and d!2196528 d!2196340)))

(assert (=> bs!1872250 (= lambda!415643 lambda!415628)))

(declare-fun bs!1872251 () Bool)

(assert (= bs!1872251 (and d!2196528 b!7036157)))

(assert (=> bs!1872251 (not (= lambda!415643 lambda!415519))))

(declare-fun bs!1872252 () Bool)

(assert (= bs!1872252 (and d!2196528 d!2196366)))

(assert (=> bs!1872252 (= lambda!415643 lambda!415629)))

(declare-fun bs!1872253 () Bool)

(assert (= bs!1872253 (and d!2196528 d!2196520)))

(assert (=> bs!1872253 (= lambda!415643 lambda!415642)))

(declare-fun bs!1872254 () Bool)

(assert (= bs!1872254 (and d!2196528 d!2196412)))

(assert (=> bs!1872254 (= lambda!415643 lambda!415633)))

(declare-fun bs!1872255 () Bool)

(assert (= bs!1872255 (and d!2196528 d!2196088)))

(assert (=> bs!1872255 (not (= lambda!415643 lambda!415594))))

(declare-fun bs!1872256 () Bool)

(assert (= bs!1872256 (and d!2196528 d!2196398)))

(assert (=> bs!1872256 (= lambda!415643 lambda!415631)))

(assert (=> d!2196528 (= (nullableZipper!2585 lt!2520838) (exists!3407 lt!2520838 lambda!415643))))

(declare-fun bs!1872257 () Bool)

(assert (= bs!1872257 d!2196528))

(declare-fun m!7746264 () Bool)

(assert (=> bs!1872257 m!7746264))

(assert (=> b!7036272 d!2196528))

(assert (=> d!2196058 d!2196464))

(declare-fun d!2196530 () Bool)

(declare-fun res!2872582 () Bool)

(declare-fun e!4230294 () Bool)

(assert (=> d!2196530 (=> res!2872582 e!4230294)))

(assert (=> d!2196530 (= res!2872582 (is-Nil!67822 lt!2521055))))

(assert (=> d!2196530 (= (noDuplicate!2633 lt!2521055) e!4230294)))

(declare-fun b!7036926 () Bool)

(declare-fun e!4230295 () Bool)

(assert (=> b!7036926 (= e!4230294 e!4230295)))

(declare-fun res!2872583 () Bool)

(assert (=> b!7036926 (=> (not res!2872583) (not e!4230295))))

(assert (=> b!7036926 (= res!2872583 (not (contains!20462 (t!381715 lt!2521055) (h!74270 lt!2521055))))))

(declare-fun b!7036927 () Bool)

(assert (=> b!7036927 (= e!4230295 (noDuplicate!2633 (t!381715 lt!2521055)))))

(assert (= (and d!2196530 (not res!2872582)) b!7036926))

(assert (= (and b!7036926 res!2872583) b!7036927))

(declare-fun m!7746266 () Bool)

(assert (=> b!7036926 m!7746266))

(declare-fun m!7746268 () Bool)

(assert (=> b!7036927 m!7746268))

(assert (=> d!2196086 d!2196530))

(declare-fun d!2196532 () Bool)

(declare-fun e!4230298 () Bool)

(assert (=> d!2196532 e!4230298))

(declare-fun res!2872585 () Bool)

(assert (=> d!2196532 (=> (not res!2872585) (not e!4230298))))

(declare-fun res!2872584 () List!67946)

(assert (=> d!2196532 (= res!2872585 (noDuplicate!2633 res!2872584))))

(declare-fun e!4230297 () Bool)

(assert (=> d!2196532 e!4230297))

(assert (=> d!2196532 (= (choose!53331 lt!2520837) res!2872584)))

(declare-fun b!7036929 () Bool)

(declare-fun e!4230296 () Bool)

(declare-fun tp!1936928 () Bool)

(assert (=> b!7036929 (= e!4230296 tp!1936928)))

(declare-fun b!7036928 () Bool)

(declare-fun tp!1936927 () Bool)

(assert (=> b!7036928 (= e!4230297 (and (inv!86540 (h!74270 res!2872584)) e!4230296 tp!1936927))))

(declare-fun b!7036930 () Bool)

(assert (=> b!7036930 (= e!4230298 (= (content!13550 res!2872584) lt!2520837))))

(assert (= b!7036928 b!7036929))

(assert (= (and d!2196532 (is-Cons!67822 res!2872584)) b!7036928))

(assert (= (and d!2196532 res!2872585) b!7036930))

(declare-fun m!7746270 () Bool)

(assert (=> d!2196532 m!7746270))

(declare-fun m!7746272 () Bool)

(assert (=> b!7036928 m!7746272))

(declare-fun m!7746274 () Bool)

(assert (=> b!7036930 m!7746274))

(assert (=> d!2196086 d!2196532))

(declare-fun d!2196534 () Bool)

(declare-fun c!1309395 () Bool)

(assert (=> d!2196534 (= c!1309395 (isEmpty!39563 (tail!13565 lt!2520827)))))

(declare-fun e!4230299 () Bool)

(assert (=> d!2196534 (= (matchZipper!3012 (derivationStepZipper!2928 lt!2520820 (head!14272 lt!2520827)) (tail!13565 lt!2520827)) e!4230299)))

(declare-fun b!7036931 () Bool)

(assert (=> b!7036931 (= e!4230299 (nullableZipper!2585 (derivationStepZipper!2928 lt!2520820 (head!14272 lt!2520827))))))

(declare-fun b!7036932 () Bool)

(assert (=> b!7036932 (= e!4230299 (matchZipper!3012 (derivationStepZipper!2928 (derivationStepZipper!2928 lt!2520820 (head!14272 lt!2520827)) (head!14272 (tail!13565 lt!2520827))) (tail!13565 (tail!13565 lt!2520827))))))

(assert (= (and d!2196534 c!1309395) b!7036931))

(assert (= (and d!2196534 (not c!1309395)) b!7036932))

(assert (=> d!2196534 m!7745264))

(assert (=> d!2196534 m!7746038))

(assert (=> b!7036931 m!7745336))

(declare-fun m!7746276 () Bool)

(assert (=> b!7036931 m!7746276))

(assert (=> b!7036932 m!7745264))

(assert (=> b!7036932 m!7746042))

(assert (=> b!7036932 m!7745336))

(assert (=> b!7036932 m!7746042))

(declare-fun m!7746278 () Bool)

(assert (=> b!7036932 m!7746278))

(assert (=> b!7036932 m!7745264))

(assert (=> b!7036932 m!7746046))

(assert (=> b!7036932 m!7746278))

(assert (=> b!7036932 m!7746046))

(declare-fun m!7746280 () Bool)

(assert (=> b!7036932 m!7746280))

(assert (=> b!7036349 d!2196534))

(declare-fun bs!1872258 () Bool)

(declare-fun d!2196536 () Bool)

(assert (= bs!1872258 (and d!2196536 d!2196422)))

(declare-fun lambda!415644 () Int)

(assert (=> bs!1872258 (= lambda!415644 lambda!415635)))

(declare-fun bs!1872259 () Bool)

(assert (= bs!1872259 (and d!2196536 d!2196488)))

(assert (=> bs!1872259 (= (= (head!14272 lt!2520827) (head!14272 (_1!37348 lt!2520831))) (= lambda!415644 lambda!415639))))

(declare-fun bs!1872260 () Bool)

(assert (= bs!1872260 (and d!2196536 d!2196174)))

(assert (=> bs!1872260 (= (= (head!14272 lt!2520827) (h!74269 s!7408)) (= lambda!415644 lambda!415604))))

(declare-fun bs!1872261 () Bool)

(assert (= bs!1872261 (and d!2196536 d!2196402)))

(assert (=> bs!1872261 (= (= (head!14272 lt!2520827) (head!14272 s!7408)) (= lambda!415644 lambda!415632))))

(declare-fun bs!1872262 () Bool)

(assert (= bs!1872262 (and d!2196536 d!2196438)))

(assert (=> bs!1872262 (= (= (head!14272 lt!2520827) (head!14272 (t!381714 s!7408))) (= lambda!415644 lambda!415636))))

(declare-fun bs!1872263 () Bool)

(assert (= bs!1872263 (and d!2196536 d!2196074)))

(assert (=> bs!1872263 (= (= (head!14272 lt!2520827) (h!74269 s!7408)) (= lambda!415644 lambda!415588))))

(declare-fun bs!1872264 () Bool)

(assert (= bs!1872264 (and d!2196536 b!7036143)))

(assert (=> bs!1872264 (= (= (head!14272 lt!2520827) (h!74269 s!7408)) (= lambda!415644 lambda!415522))))

(declare-fun bs!1872265 () Bool)

(assert (= bs!1872265 (and d!2196536 d!2196384)))

(assert (=> bs!1872265 (= (= (head!14272 lt!2520827) (head!14272 (t!381714 s!7408))) (= lambda!415644 lambda!415630))))

(declare-fun bs!1872266 () Bool)

(assert (= bs!1872266 (and d!2196536 d!2196070)))

(assert (=> bs!1872266 (= (= (head!14272 lt!2520827) (h!74269 s!7408)) (= lambda!415644 lambda!415587))))

(declare-fun bs!1872267 () Bool)

(assert (= bs!1872267 (and d!2196536 d!2196470)))

(assert (=> bs!1872267 (= lambda!415644 lambda!415637)))

(declare-fun bs!1872268 () Bool)

(assert (= bs!1872268 (and d!2196536 d!2196494)))

(assert (=> bs!1872268 (= (= (head!14272 lt!2520827) (head!14272 (t!381714 s!7408))) (= lambda!415644 lambda!415640))))

(assert (=> d!2196536 true))

(assert (=> d!2196536 (= (derivationStepZipper!2928 lt!2520820 (head!14272 lt!2520827)) (flatMap!2419 lt!2520820 lambda!415644))))

(declare-fun bs!1872269 () Bool)

(assert (= bs!1872269 d!2196536))

(declare-fun m!7746282 () Bool)

(assert (=> bs!1872269 m!7746282))

(assert (=> b!7036349 d!2196536))

(assert (=> b!7036349 d!2196424))

(assert (=> b!7036349 d!2196426))

(declare-fun d!2196538 () Bool)

(declare-fun c!1309396 () Bool)

(assert (=> d!2196538 (= c!1309396 (isEmpty!39563 (_1!37348 (get!23764 lt!2521091))))))

(declare-fun e!4230300 () Bool)

(assert (=> d!2196538 (= (matchZipper!3012 lt!2520803 (_1!37348 (get!23764 lt!2521091))) e!4230300)))

(declare-fun b!7036933 () Bool)

(assert (=> b!7036933 (= e!4230300 (nullableZipper!2585 lt!2520803))))

(declare-fun b!7036934 () Bool)

(assert (=> b!7036934 (= e!4230300 (matchZipper!3012 (derivationStepZipper!2928 lt!2520803 (head!14272 (_1!37348 (get!23764 lt!2521091)))) (tail!13565 (_1!37348 (get!23764 lt!2521091)))))))

(assert (= (and d!2196538 c!1309396) b!7036933))

(assert (= (and d!2196538 (not c!1309396)) b!7036934))

(declare-fun m!7746284 () Bool)

(assert (=> d!2196538 m!7746284))

(assert (=> b!7036933 m!7745434))

(declare-fun m!7746286 () Bool)

(assert (=> b!7036934 m!7746286))

(assert (=> b!7036934 m!7746286))

(declare-fun m!7746288 () Bool)

(assert (=> b!7036934 m!7746288))

(declare-fun m!7746290 () Bool)

(assert (=> b!7036934 m!7746290))

(assert (=> b!7036934 m!7746288))

(assert (=> b!7036934 m!7746290))

(declare-fun m!7746292 () Bool)

(assert (=> b!7036934 m!7746292))

(assert (=> b!7036395 d!2196538))

(assert (=> b!7036395 d!2196356))

(assert (=> b!7036441 d!2196506))

(declare-fun d!2196540 () Bool)

(assert (=> d!2196540 (= (flatMap!2419 lt!2520822 lambda!415588) (choose!53329 lt!2520822 lambda!415588))))

(declare-fun bs!1872270 () Bool)

(assert (= bs!1872270 d!2196540))

(declare-fun m!7746294 () Bool)

(assert (=> bs!1872270 m!7746294))

(assert (=> d!2196074 d!2196540))

(declare-fun d!2196542 () Bool)

(declare-fun lt!2521201 () Int)

(assert (=> d!2196542 (>= lt!2521201 0)))

(declare-fun e!4230301 () Int)

(assert (=> d!2196542 (= lt!2521201 e!4230301)))

(declare-fun c!1309397 () Bool)

(assert (=> d!2196542 (= c!1309397 (is-Cons!67820 (exprs!6968 (h!74270 lt!2520821))))))

(assert (=> d!2196542 (= (contextDepthTotal!507 (h!74270 lt!2520821)) lt!2521201)))

(declare-fun b!7036935 () Bool)

(assert (=> b!7036935 (= e!4230301 (+ (regexDepthTotal!308 (h!74268 (exprs!6968 (h!74270 lt!2520821)))) (contextDepthTotal!507 (Context!12937 (t!381713 (exprs!6968 (h!74270 lt!2520821)))))))))

(declare-fun b!7036936 () Bool)

(assert (=> b!7036936 (= e!4230301 1)))

(assert (= (and d!2196542 c!1309397) b!7036935))

(assert (= (and d!2196542 (not c!1309397)) b!7036936))

(declare-fun m!7746296 () Bool)

(assert (=> b!7036935 m!7746296))

(declare-fun m!7746298 () Bool)

(assert (=> b!7036935 m!7746298))

(assert (=> b!7036319 d!2196542))

(declare-fun d!2196544 () Bool)

(declare-fun lt!2521202 () Int)

(assert (=> d!2196544 (>= lt!2521202 0)))

(declare-fun e!4230302 () Int)

(assert (=> d!2196544 (= lt!2521202 e!4230302)))

(declare-fun c!1309398 () Bool)

(assert (=> d!2196544 (= c!1309398 (is-Cons!67822 (t!381715 lt!2520821)))))

(assert (=> d!2196544 (= (zipperDepthTotal!535 (t!381715 lt!2520821)) lt!2521202)))

(declare-fun b!7036937 () Bool)

(assert (=> b!7036937 (= e!4230302 (+ (contextDepthTotal!507 (h!74270 (t!381715 lt!2520821))) (zipperDepthTotal!535 (t!381715 (t!381715 lt!2520821)))))))

(declare-fun b!7036938 () Bool)

(assert (=> b!7036938 (= e!4230302 0)))

(assert (= (and d!2196544 c!1309398) b!7036937))

(assert (= (and d!2196544 (not c!1309398)) b!7036938))

(declare-fun m!7746300 () Bool)

(assert (=> b!7036937 m!7746300))

(declare-fun m!7746302 () Bool)

(assert (=> b!7036937 m!7746302))

(assert (=> b!7036319 d!2196544))

(declare-fun d!2196546 () Bool)

(declare-fun c!1309399 () Bool)

(assert (=> d!2196546 (= c!1309399 (isEmpty!39563 (tail!13565 s!7408)))))

(declare-fun e!4230303 () Bool)

(assert (=> d!2196546 (= (matchZipper!3012 (derivationStepZipper!2928 lt!2520837 (head!14272 s!7408)) (tail!13565 s!7408)) e!4230303)))

(declare-fun b!7036939 () Bool)

(assert (=> b!7036939 (= e!4230303 (nullableZipper!2585 (derivationStepZipper!2928 lt!2520837 (head!14272 s!7408))))))

(declare-fun b!7036940 () Bool)

(assert (=> b!7036940 (= e!4230303 (matchZipper!3012 (derivationStepZipper!2928 (derivationStepZipper!2928 lt!2520837 (head!14272 s!7408)) (head!14272 (tail!13565 s!7408))) (tail!13565 (tail!13565 s!7408))))))

(assert (= (and d!2196546 c!1309399) b!7036939))

(assert (= (and d!2196546 (not c!1309399)) b!7036940))

(assert (=> d!2196546 m!7745158))

(assert (=> d!2196546 m!7745998))

(assert (=> b!7036939 m!7745454))

(declare-fun m!7746304 () Bool)

(assert (=> b!7036939 m!7746304))

(assert (=> b!7036940 m!7745158))

(assert (=> b!7036940 m!7746002))

(assert (=> b!7036940 m!7745454))

(assert (=> b!7036940 m!7746002))

(declare-fun m!7746306 () Bool)

(assert (=> b!7036940 m!7746306))

(assert (=> b!7036940 m!7745158))

(assert (=> b!7036940 m!7746006))

(assert (=> b!7036940 m!7746306))

(assert (=> b!7036940 m!7746006))

(declare-fun m!7746308 () Bool)

(assert (=> b!7036940 m!7746308))

(assert (=> b!7036408 d!2196546))

(declare-fun bs!1872271 () Bool)

(declare-fun d!2196548 () Bool)

(assert (= bs!1872271 (and d!2196548 d!2196422)))

(declare-fun lambda!415645 () Int)

(assert (=> bs!1872271 (= (= (head!14272 s!7408) (head!14272 lt!2520827)) (= lambda!415645 lambda!415635))))

(declare-fun bs!1872272 () Bool)

(assert (= bs!1872272 (and d!2196548 d!2196488)))

(assert (=> bs!1872272 (= (= (head!14272 s!7408) (head!14272 (_1!37348 lt!2520831))) (= lambda!415645 lambda!415639))))

(declare-fun bs!1872273 () Bool)

(assert (= bs!1872273 (and d!2196548 d!2196174)))

(assert (=> bs!1872273 (= (= (head!14272 s!7408) (h!74269 s!7408)) (= lambda!415645 lambda!415604))))

(declare-fun bs!1872274 () Bool)

(assert (= bs!1872274 (and d!2196548 d!2196402)))

(assert (=> bs!1872274 (= lambda!415645 lambda!415632)))

(declare-fun bs!1872275 () Bool)

(assert (= bs!1872275 (and d!2196548 d!2196438)))

(assert (=> bs!1872275 (= (= (head!14272 s!7408) (head!14272 (t!381714 s!7408))) (= lambda!415645 lambda!415636))))

(declare-fun bs!1872276 () Bool)

(assert (= bs!1872276 (and d!2196548 d!2196536)))

(assert (=> bs!1872276 (= (= (head!14272 s!7408) (head!14272 lt!2520827)) (= lambda!415645 lambda!415644))))

(declare-fun bs!1872277 () Bool)

(assert (= bs!1872277 (and d!2196548 d!2196074)))

(assert (=> bs!1872277 (= (= (head!14272 s!7408) (h!74269 s!7408)) (= lambda!415645 lambda!415588))))

(declare-fun bs!1872278 () Bool)

(assert (= bs!1872278 (and d!2196548 b!7036143)))

(assert (=> bs!1872278 (= (= (head!14272 s!7408) (h!74269 s!7408)) (= lambda!415645 lambda!415522))))

(declare-fun bs!1872279 () Bool)

(assert (= bs!1872279 (and d!2196548 d!2196384)))

(assert (=> bs!1872279 (= (= (head!14272 s!7408) (head!14272 (t!381714 s!7408))) (= lambda!415645 lambda!415630))))

(declare-fun bs!1872280 () Bool)

(assert (= bs!1872280 (and d!2196548 d!2196070)))

(assert (=> bs!1872280 (= (= (head!14272 s!7408) (h!74269 s!7408)) (= lambda!415645 lambda!415587))))

(declare-fun bs!1872281 () Bool)

(assert (= bs!1872281 (and d!2196548 d!2196470)))

(assert (=> bs!1872281 (= (= (head!14272 s!7408) (head!14272 lt!2520827)) (= lambda!415645 lambda!415637))))

(declare-fun bs!1872282 () Bool)

(assert (= bs!1872282 (and d!2196548 d!2196494)))

(assert (=> bs!1872282 (= (= (head!14272 s!7408) (head!14272 (t!381714 s!7408))) (= lambda!415645 lambda!415640))))

(assert (=> d!2196548 true))

(assert (=> d!2196548 (= (derivationStepZipper!2928 lt!2520837 (head!14272 s!7408)) (flatMap!2419 lt!2520837 lambda!415645))))

(declare-fun bs!1872283 () Bool)

(assert (= bs!1872283 d!2196548))

(declare-fun m!7746310 () Bool)

(assert (=> bs!1872283 m!7746310))

(assert (=> b!7036408 d!2196548))

(assert (=> b!7036408 d!2196404))

(assert (=> b!7036408 d!2196406))

(assert (=> b!7036278 d!2196134))

(assert (=> d!2196062 d!2196464))

(declare-fun d!2196550 () Bool)

(declare-fun lt!2521203 () Int)

(assert (=> d!2196550 (>= lt!2521203 0)))

(declare-fun e!4230304 () Int)

(assert (=> d!2196550 (= lt!2521203 e!4230304)))

(declare-fun c!1309400 () Bool)

(assert (=> d!2196550 (= c!1309400 (is-Cons!67820 (exprs!6968 (h!74270 (Cons!67822 lt!2520844 Nil!67822)))))))

(assert (=> d!2196550 (= (contextDepthTotal!507 (h!74270 (Cons!67822 lt!2520844 Nil!67822))) lt!2521203)))

(declare-fun b!7036941 () Bool)

(assert (=> b!7036941 (= e!4230304 (+ (regexDepthTotal!308 (h!74268 (exprs!6968 (h!74270 (Cons!67822 lt!2520844 Nil!67822))))) (contextDepthTotal!507 (Context!12937 (t!381713 (exprs!6968 (h!74270 (Cons!67822 lt!2520844 Nil!67822))))))))))

(declare-fun b!7036942 () Bool)

(assert (=> b!7036942 (= e!4230304 1)))

(assert (= (and d!2196550 c!1309400) b!7036941))

(assert (= (and d!2196550 (not c!1309400)) b!7036942))

(declare-fun m!7746312 () Bool)

(assert (=> b!7036941 m!7746312))

(declare-fun m!7746314 () Bool)

(assert (=> b!7036941 m!7746314))

(assert (=> b!7036305 d!2196550))

(declare-fun d!2196552 () Bool)

(declare-fun lt!2521204 () Int)

(assert (=> d!2196552 (>= lt!2521204 0)))

(declare-fun e!4230305 () Int)

(assert (=> d!2196552 (= lt!2521204 e!4230305)))

(declare-fun c!1309401 () Bool)

(assert (=> d!2196552 (= c!1309401 (is-Cons!67822 (t!381715 (Cons!67822 lt!2520844 Nil!67822))))))

(assert (=> d!2196552 (= (zipperDepthTotal!535 (t!381715 (Cons!67822 lt!2520844 Nil!67822))) lt!2521204)))

(declare-fun b!7036943 () Bool)

(assert (=> b!7036943 (= e!4230305 (+ (contextDepthTotal!507 (h!74270 (t!381715 (Cons!67822 lt!2520844 Nil!67822)))) (zipperDepthTotal!535 (t!381715 (t!381715 (Cons!67822 lt!2520844 Nil!67822))))))))

(declare-fun b!7036944 () Bool)

(assert (=> b!7036944 (= e!4230305 0)))

(assert (= (and d!2196552 c!1309401) b!7036943))

(assert (= (and d!2196552 (not c!1309401)) b!7036944))

(declare-fun m!7746316 () Bool)

(assert (=> b!7036943 m!7746316))

(declare-fun m!7746318 () Bool)

(assert (=> b!7036943 m!7746318))

(assert (=> b!7036305 d!2196552))

(declare-fun d!2196554 () Bool)

(declare-fun c!1309402 () Bool)

(declare-fun e!4230306 () Bool)

(assert (=> d!2196554 (= c!1309402 e!4230306)))

(declare-fun res!2872586 () Bool)

(assert (=> d!2196554 (=> (not res!2872586) (not e!4230306))))

(assert (=> d!2196554 (= res!2872586 (is-Cons!67820 (exprs!6968 (Context!12937 (t!381713 (exprs!6968 lt!2520844))))))))

(declare-fun e!4230308 () (Set Context!12936))

(assert (=> d!2196554 (= (derivationStepZipperUp!2082 (Context!12937 (t!381713 (exprs!6968 lt!2520844))) (h!74269 s!7408)) e!4230308)))

(declare-fun b!7036945 () Bool)

(assert (=> b!7036945 (= e!4230306 (nullable!7183 (h!74268 (exprs!6968 (Context!12937 (t!381713 (exprs!6968 lt!2520844)))))))))

(declare-fun b!7036946 () Bool)

(declare-fun e!4230307 () (Set Context!12936))

(assert (=> b!7036946 (= e!4230307 (as set.empty (Set Context!12936)))))

(declare-fun b!7036947 () Bool)

(declare-fun call!639080 () (Set Context!12936))

(assert (=> b!7036947 (= e!4230307 call!639080)))

(declare-fun bm!639075 () Bool)

(assert (=> bm!639075 (= call!639080 (derivationStepZipperDown!2136 (h!74268 (exprs!6968 (Context!12937 (t!381713 (exprs!6968 lt!2520844))))) (Context!12937 (t!381713 (exprs!6968 (Context!12937 (t!381713 (exprs!6968 lt!2520844)))))) (h!74269 s!7408)))))

(declare-fun b!7036948 () Bool)

(assert (=> b!7036948 (= e!4230308 (set.union call!639080 (derivationStepZipperUp!2082 (Context!12937 (t!381713 (exprs!6968 (Context!12937 (t!381713 (exprs!6968 lt!2520844)))))) (h!74269 s!7408))))))

(declare-fun b!7036949 () Bool)

(assert (=> b!7036949 (= e!4230308 e!4230307)))

(declare-fun c!1309403 () Bool)

(assert (=> b!7036949 (= c!1309403 (is-Cons!67820 (exprs!6968 (Context!12937 (t!381713 (exprs!6968 lt!2520844))))))))

(assert (= (and d!2196554 res!2872586) b!7036945))

(assert (= (and d!2196554 c!1309402) b!7036948))

(assert (= (and d!2196554 (not c!1309402)) b!7036949))

(assert (= (and b!7036949 c!1309403) b!7036947))

(assert (= (and b!7036949 (not c!1309403)) b!7036946))

(assert (= (or b!7036948 b!7036947) bm!639075))

(declare-fun m!7746320 () Bool)

(assert (=> b!7036945 m!7746320))

(declare-fun m!7746322 () Bool)

(assert (=> bm!639075 m!7746322))

(declare-fun m!7746324 () Bool)

(assert (=> b!7036948 m!7746324))

(assert (=> b!7036324 d!2196554))

(declare-fun d!2196556 () Bool)

(declare-fun c!1309406 () Bool)

(assert (=> d!2196556 (= c!1309406 (is-Nil!67820 lt!2521077))))

(declare-fun e!4230311 () (Set Regex!17472))

(assert (=> d!2196556 (= (content!13551 lt!2521077) e!4230311)))

(declare-fun b!7036954 () Bool)

(assert (=> b!7036954 (= e!4230311 (as set.empty (Set Regex!17472)))))

(declare-fun b!7036955 () Bool)

(assert (=> b!7036955 (= e!4230311 (set.union (set.insert (h!74268 lt!2521077) (as set.empty (Set Regex!17472))) (content!13551 (t!381713 lt!2521077))))))

(assert (= (and d!2196556 c!1309406) b!7036954))

(assert (= (and d!2196556 (not c!1309406)) b!7036955))

(declare-fun m!7746326 () Bool)

(assert (=> b!7036955 m!7746326))

(declare-fun m!7746328 () Bool)

(assert (=> b!7036955 m!7746328))

(assert (=> d!2196130 d!2196556))

(declare-fun d!2196558 () Bool)

(declare-fun c!1309407 () Bool)

(assert (=> d!2196558 (= c!1309407 (is-Nil!67820 (exprs!6968 lt!2520817)))))

(declare-fun e!4230312 () (Set Regex!17472))

(assert (=> d!2196558 (= (content!13551 (exprs!6968 lt!2520817)) e!4230312)))

(declare-fun b!7036956 () Bool)

(assert (=> b!7036956 (= e!4230312 (as set.empty (Set Regex!17472)))))

(declare-fun b!7036957 () Bool)

(assert (=> b!7036957 (= e!4230312 (set.union (set.insert (h!74268 (exprs!6968 lt!2520817)) (as set.empty (Set Regex!17472))) (content!13551 (t!381713 (exprs!6968 lt!2520817)))))))

(assert (= (and d!2196558 c!1309407) b!7036956))

(assert (= (and d!2196558 (not c!1309407)) b!7036957))

(declare-fun m!7746330 () Bool)

(assert (=> b!7036957 m!7746330))

(assert (=> b!7036957 m!7746190))

(assert (=> d!2196130 d!2196558))

(declare-fun d!2196560 () Bool)

(declare-fun c!1309408 () Bool)

(assert (=> d!2196560 (= c!1309408 (is-Nil!67820 (exprs!6968 ct2!306)))))

(declare-fun e!4230313 () (Set Regex!17472))

(assert (=> d!2196560 (= (content!13551 (exprs!6968 ct2!306)) e!4230313)))

(declare-fun b!7036958 () Bool)

(assert (=> b!7036958 (= e!4230313 (as set.empty (Set Regex!17472)))))

(declare-fun b!7036959 () Bool)

(assert (=> b!7036959 (= e!4230313 (set.union (set.insert (h!74268 (exprs!6968 ct2!306)) (as set.empty (Set Regex!17472))) (content!13551 (t!381713 (exprs!6968 ct2!306)))))))

(assert (= (and d!2196560 c!1309408) b!7036958))

(assert (= (and d!2196560 (not c!1309408)) b!7036959))

(declare-fun m!7746332 () Bool)

(assert (=> b!7036959 m!7746332))

(declare-fun m!7746334 () Bool)

(assert (=> b!7036959 m!7746334))

(assert (=> d!2196130 d!2196560))

(declare-fun d!2196562 () Bool)

(declare-fun c!1309409 () Bool)

(assert (=> d!2196562 (= c!1309409 (isEmpty!39563 (tail!13565 (t!381714 s!7408))))))

(declare-fun e!4230314 () Bool)

(assert (=> d!2196562 (= (matchZipper!3012 (derivationStepZipper!2928 lt!2520812 (head!14272 (t!381714 s!7408))) (tail!13565 (t!381714 s!7408))) e!4230314)))

(declare-fun b!7036960 () Bool)

(assert (=> b!7036960 (= e!4230314 (nullableZipper!2585 (derivationStepZipper!2928 lt!2520812 (head!14272 (t!381714 s!7408)))))))

(declare-fun b!7036961 () Bool)

(assert (=> b!7036961 (= e!4230314 (matchZipper!3012 (derivationStepZipper!2928 (derivationStepZipper!2928 lt!2520812 (head!14272 (t!381714 s!7408))) (head!14272 (tail!13565 (t!381714 s!7408)))) (tail!13565 (tail!13565 (t!381714 s!7408)))))))

(assert (= (and d!2196562 c!1309409) b!7036960))

(assert (= (and d!2196562 (not c!1309409)) b!7036961))

(assert (=> d!2196562 m!7745176))

(assert (=> d!2196562 m!7745960))

(assert (=> b!7036960 m!7745188))

(declare-fun m!7746336 () Bool)

(assert (=> b!7036960 m!7746336))

(assert (=> b!7036961 m!7745176))

(assert (=> b!7036961 m!7745964))

(assert (=> b!7036961 m!7745188))

(assert (=> b!7036961 m!7745964))

(declare-fun m!7746338 () Bool)

(assert (=> b!7036961 m!7746338))

(assert (=> b!7036961 m!7745176))

(assert (=> b!7036961 m!7745968))

(assert (=> b!7036961 m!7746338))

(assert (=> b!7036961 m!7745968))

(declare-fun m!7746340 () Bool)

(assert (=> b!7036961 m!7746340))

(assert (=> b!7036275 d!2196562))

(declare-fun bs!1872284 () Bool)

(declare-fun d!2196564 () Bool)

(assert (= bs!1872284 (and d!2196564 d!2196422)))

(declare-fun lambda!415646 () Int)

(assert (=> bs!1872284 (= (= (head!14272 (t!381714 s!7408)) (head!14272 lt!2520827)) (= lambda!415646 lambda!415635))))

(declare-fun bs!1872285 () Bool)

(assert (= bs!1872285 (and d!2196564 d!2196488)))

(assert (=> bs!1872285 (= (= (head!14272 (t!381714 s!7408)) (head!14272 (_1!37348 lt!2520831))) (= lambda!415646 lambda!415639))))

(declare-fun bs!1872286 () Bool)

(assert (= bs!1872286 (and d!2196564 d!2196174)))

(assert (=> bs!1872286 (= (= (head!14272 (t!381714 s!7408)) (h!74269 s!7408)) (= lambda!415646 lambda!415604))))

(declare-fun bs!1872287 () Bool)

(assert (= bs!1872287 (and d!2196564 d!2196402)))

(assert (=> bs!1872287 (= (= (head!14272 (t!381714 s!7408)) (head!14272 s!7408)) (= lambda!415646 lambda!415632))))

(declare-fun bs!1872288 () Bool)

(assert (= bs!1872288 (and d!2196564 d!2196438)))

(assert (=> bs!1872288 (= lambda!415646 lambda!415636)))

(declare-fun bs!1872289 () Bool)

(assert (= bs!1872289 (and d!2196564 d!2196536)))

(assert (=> bs!1872289 (= (= (head!14272 (t!381714 s!7408)) (head!14272 lt!2520827)) (= lambda!415646 lambda!415644))))

(declare-fun bs!1872290 () Bool)

(assert (= bs!1872290 (and d!2196564 d!2196074)))

(assert (=> bs!1872290 (= (= (head!14272 (t!381714 s!7408)) (h!74269 s!7408)) (= lambda!415646 lambda!415588))))

(declare-fun bs!1872291 () Bool)

(assert (= bs!1872291 (and d!2196564 b!7036143)))

(assert (=> bs!1872291 (= (= (head!14272 (t!381714 s!7408)) (h!74269 s!7408)) (= lambda!415646 lambda!415522))))

(declare-fun bs!1872292 () Bool)

(assert (= bs!1872292 (and d!2196564 d!2196384)))

(assert (=> bs!1872292 (= lambda!415646 lambda!415630)))

(declare-fun bs!1872293 () Bool)

(assert (= bs!1872293 (and d!2196564 d!2196070)))

(assert (=> bs!1872293 (= (= (head!14272 (t!381714 s!7408)) (h!74269 s!7408)) (= lambda!415646 lambda!415587))))

(declare-fun bs!1872294 () Bool)

(assert (= bs!1872294 (and d!2196564 d!2196470)))

(assert (=> bs!1872294 (= (= (head!14272 (t!381714 s!7408)) (head!14272 lt!2520827)) (= lambda!415646 lambda!415637))))

(declare-fun bs!1872295 () Bool)

(assert (= bs!1872295 (and d!2196564 d!2196548)))

(assert (=> bs!1872295 (= (= (head!14272 (t!381714 s!7408)) (head!14272 s!7408)) (= lambda!415646 lambda!415645))))

(declare-fun bs!1872296 () Bool)

(assert (= bs!1872296 (and d!2196564 d!2196494)))

(assert (=> bs!1872296 (= lambda!415646 lambda!415640)))

(assert (=> d!2196564 true))

(assert (=> d!2196564 (= (derivationStepZipper!2928 lt!2520812 (head!14272 (t!381714 s!7408))) (flatMap!2419 lt!2520812 lambda!415646))))

(declare-fun bs!1872297 () Bool)

(assert (= bs!1872297 d!2196564))

(declare-fun m!7746342 () Bool)

(assert (=> bs!1872297 m!7746342))

(assert (=> b!7036275 d!2196564))

(assert (=> b!7036275 d!2196386))

(assert (=> b!7036275 d!2196388))

(declare-fun d!2196566 () Bool)

(declare-fun c!1309410 () Bool)

(assert (=> d!2196566 (= c!1309410 (isEmpty!39563 s!7408))))

(declare-fun e!4230315 () Bool)

(assert (=> d!2196566 (= (matchZipper!3012 (set.insert lt!2521058 (as set.empty (Set Context!12936))) s!7408) e!4230315)))

(declare-fun b!7036962 () Bool)

(assert (=> b!7036962 (= e!4230315 (nullableZipper!2585 (set.insert lt!2521058 (as set.empty (Set Context!12936)))))))

(declare-fun b!7036963 () Bool)

(assert (=> b!7036963 (= e!4230315 (matchZipper!3012 (derivationStepZipper!2928 (set.insert lt!2521058 (as set.empty (Set Context!12936))) (head!14272 s!7408)) (tail!13565 s!7408)))))

(assert (= (and d!2196566 c!1309410) b!7036962))

(assert (= (and d!2196566 (not c!1309410)) b!7036963))

(assert (=> d!2196566 m!7745150))

(assert (=> b!7036962 m!7745492))

(declare-fun m!7746344 () Bool)

(assert (=> b!7036962 m!7746344))

(assert (=> b!7036963 m!7745154))

(assert (=> b!7036963 m!7745492))

(assert (=> b!7036963 m!7745154))

(declare-fun m!7746346 () Bool)

(assert (=> b!7036963 m!7746346))

(assert (=> b!7036963 m!7745158))

(assert (=> b!7036963 m!7746346))

(assert (=> b!7036963 m!7745158))

(declare-fun m!7746348 () Bool)

(assert (=> b!7036963 m!7746348))

(assert (=> bs!1872067 d!2196566))

(declare-fun bs!1872298 () Bool)

(declare-fun d!2196568 () Bool)

(assert (= bs!1872298 (and d!2196568 d!2196528)))

(declare-fun lambda!415647 () Int)

(assert (=> bs!1872298 (= lambda!415647 lambda!415643)))

(declare-fun bs!1872299 () Bool)

(assert (= bs!1872299 (and d!2196568 d!2196418)))

(assert (=> bs!1872299 (= lambda!415647 lambda!415634)))

(declare-fun bs!1872300 () Bool)

(assert (= bs!1872300 (and d!2196568 d!2196482)))

(assert (=> bs!1872300 (= lambda!415647 lambda!415638)))

(declare-fun bs!1872301 () Bool)

(assert (= bs!1872301 (and d!2196568 d!2196084)))

(assert (=> bs!1872301 (not (= lambda!415647 lambda!415591))))

(declare-fun bs!1872302 () Bool)

(assert (= bs!1872302 (and d!2196568 d!2196340)))

(assert (=> bs!1872302 (= lambda!415647 lambda!415628)))

(declare-fun bs!1872303 () Bool)

(assert (= bs!1872303 (and d!2196568 b!7036157)))

(assert (=> bs!1872303 (not (= lambda!415647 lambda!415519))))

(declare-fun bs!1872304 () Bool)

(assert (= bs!1872304 (and d!2196568 d!2196366)))

(assert (=> bs!1872304 (= lambda!415647 lambda!415629)))

(declare-fun bs!1872305 () Bool)

(assert (= bs!1872305 (and d!2196568 d!2196520)))

(assert (=> bs!1872305 (= lambda!415647 lambda!415642)))

(declare-fun bs!1872306 () Bool)

(assert (= bs!1872306 (and d!2196568 d!2196412)))

(assert (=> bs!1872306 (= lambda!415647 lambda!415633)))

(declare-fun bs!1872307 () Bool)

(assert (= bs!1872307 (and d!2196568 d!2196088)))

(assert (=> bs!1872307 (not (= lambda!415647 lambda!415594))))

(declare-fun bs!1872308 () Bool)

(assert (= bs!1872308 (and d!2196568 d!2196398)))

(assert (=> bs!1872308 (= lambda!415647 lambda!415631)))

(assert (=> d!2196568 (= (nullableZipper!2585 lt!2520815) (exists!3407 lt!2520815 lambda!415647))))

(declare-fun bs!1872309 () Bool)

(assert (= bs!1872309 d!2196568))

(declare-fun m!7746350 () Bool)

(assert (=> bs!1872309 m!7746350))

(assert (=> b!7036270 d!2196568))

(declare-fun bs!1872310 () Bool)

(declare-fun d!2196570 () Bool)

(assert (= bs!1872310 (and d!2196570 d!2196528)))

(declare-fun lambda!415648 () Int)

(assert (=> bs!1872310 (= lambda!415648 lambda!415643)))

(declare-fun bs!1872311 () Bool)

(assert (= bs!1872311 (and d!2196570 d!2196418)))

(assert (=> bs!1872311 (= lambda!415648 lambda!415634)))

(declare-fun bs!1872312 () Bool)

(assert (= bs!1872312 (and d!2196570 d!2196482)))

(assert (=> bs!1872312 (= lambda!415648 lambda!415638)))

(declare-fun bs!1872313 () Bool)

(assert (= bs!1872313 (and d!2196570 d!2196084)))

(assert (=> bs!1872313 (not (= lambda!415648 lambda!415591))))

(declare-fun bs!1872314 () Bool)

(assert (= bs!1872314 (and d!2196570 d!2196340)))

(assert (=> bs!1872314 (= lambda!415648 lambda!415628)))

(declare-fun bs!1872315 () Bool)

(assert (= bs!1872315 (and d!2196570 b!7036157)))

(assert (=> bs!1872315 (not (= lambda!415648 lambda!415519))))

(declare-fun bs!1872316 () Bool)

(assert (= bs!1872316 (and d!2196570 d!2196568)))

(assert (=> bs!1872316 (= lambda!415648 lambda!415647)))

(declare-fun bs!1872317 () Bool)

(assert (= bs!1872317 (and d!2196570 d!2196366)))

(assert (=> bs!1872317 (= lambda!415648 lambda!415629)))

(declare-fun bs!1872318 () Bool)

(assert (= bs!1872318 (and d!2196570 d!2196520)))

(assert (=> bs!1872318 (= lambda!415648 lambda!415642)))

(declare-fun bs!1872319 () Bool)

(assert (= bs!1872319 (and d!2196570 d!2196412)))

(assert (=> bs!1872319 (= lambda!415648 lambda!415633)))

(declare-fun bs!1872320 () Bool)

(assert (= bs!1872320 (and d!2196570 d!2196088)))

(assert (=> bs!1872320 (not (= lambda!415648 lambda!415594))))

(declare-fun bs!1872321 () Bool)

(assert (= bs!1872321 (and d!2196570 d!2196398)))

(assert (=> bs!1872321 (= lambda!415648 lambda!415631)))

(assert (=> d!2196570 (= (nullableZipper!2585 lt!2520820) (exists!3407 lt!2520820 lambda!415648))))

(declare-fun bs!1872322 () Bool)

(assert (= bs!1872322 d!2196570))

(declare-fun m!7746352 () Bool)

(assert (=> bs!1872322 m!7746352))

(assert (=> b!7036348 d!2196570))

(declare-fun d!2196572 () Bool)

(declare-fun c!1309411 () Bool)

(assert (=> d!2196572 (= c!1309411 (isEmpty!39563 s!7408))))

(declare-fun e!4230316 () Bool)

(assert (=> d!2196572 (= (matchZipper!3012 lt!2520799 s!7408) e!4230316)))

(declare-fun b!7036964 () Bool)

(assert (=> b!7036964 (= e!4230316 (nullableZipper!2585 lt!2520799))))

(declare-fun b!7036965 () Bool)

(assert (=> b!7036965 (= e!4230316 (matchZipper!3012 (derivationStepZipper!2928 lt!2520799 (head!14272 s!7408)) (tail!13565 s!7408)))))

(assert (= (and d!2196572 c!1309411) b!7036964))

(assert (= (and d!2196572 (not c!1309411)) b!7036965))

(assert (=> d!2196572 m!7745150))

(assert (=> b!7036964 m!7745442))

(assert (=> b!7036965 m!7745154))

(assert (=> b!7036965 m!7745154))

(declare-fun m!7746354 () Bool)

(assert (=> b!7036965 m!7746354))

(assert (=> b!7036965 m!7745158))

(assert (=> b!7036965 m!7746354))

(assert (=> b!7036965 m!7745158))

(declare-fun m!7746356 () Bool)

(assert (=> b!7036965 m!7746356))

(assert (=> b!7036394 d!2196572))

(assert (=> d!2196080 d!2196078))

(declare-fun d!2196574 () Bool)

(assert (=> d!2196574 (= (flatMap!2419 lt!2520822 lambda!415522) (dynLambda!27405 lambda!415522 lt!2520817))))

(assert (=> d!2196574 true))

(declare-fun _$13!4497 () Unit!161622)

(assert (=> d!2196574 (= (choose!53328 lt!2520822 lt!2520817 lambda!415522) _$13!4497)))

(declare-fun b_lambda!266965 () Bool)

(assert (=> (not b_lambda!266965) (not d!2196574)))

(declare-fun bs!1872323 () Bool)

(assert (= bs!1872323 d!2196574))

(assert (=> bs!1872323 m!7744902))

(assert (=> bs!1872323 m!7745218))

(assert (=> d!2196080 d!2196574))

(declare-fun bs!1872324 () Bool)

(declare-fun d!2196576 () Bool)

(assert (= bs!1872324 (and d!2196576 d!2196528)))

(declare-fun lambda!415649 () Int)

(assert (=> bs!1872324 (= lambda!415649 lambda!415643)))

(declare-fun bs!1872325 () Bool)

(assert (= bs!1872325 (and d!2196576 d!2196570)))

(assert (=> bs!1872325 (= lambda!415649 lambda!415648)))

(declare-fun bs!1872326 () Bool)

(assert (= bs!1872326 (and d!2196576 d!2196418)))

(assert (=> bs!1872326 (= lambda!415649 lambda!415634)))

(declare-fun bs!1872327 () Bool)

(assert (= bs!1872327 (and d!2196576 d!2196482)))

(assert (=> bs!1872327 (= lambda!415649 lambda!415638)))

(declare-fun bs!1872328 () Bool)

(assert (= bs!1872328 (and d!2196576 d!2196084)))

(assert (=> bs!1872328 (not (= lambda!415649 lambda!415591))))

(declare-fun bs!1872329 () Bool)

(assert (= bs!1872329 (and d!2196576 d!2196340)))

(assert (=> bs!1872329 (= lambda!415649 lambda!415628)))

(declare-fun bs!1872330 () Bool)

(assert (= bs!1872330 (and d!2196576 b!7036157)))

(assert (=> bs!1872330 (not (= lambda!415649 lambda!415519))))

(declare-fun bs!1872331 () Bool)

(assert (= bs!1872331 (and d!2196576 d!2196568)))

(assert (=> bs!1872331 (= lambda!415649 lambda!415647)))

(declare-fun bs!1872332 () Bool)

(assert (= bs!1872332 (and d!2196576 d!2196366)))

(assert (=> bs!1872332 (= lambda!415649 lambda!415629)))

(declare-fun bs!1872333 () Bool)

(assert (= bs!1872333 (and d!2196576 d!2196520)))

(assert (=> bs!1872333 (= lambda!415649 lambda!415642)))

(declare-fun bs!1872334 () Bool)

(assert (= bs!1872334 (and d!2196576 d!2196412)))

(assert (=> bs!1872334 (= lambda!415649 lambda!415633)))

(declare-fun bs!1872335 () Bool)

(assert (= bs!1872335 (and d!2196576 d!2196088)))

(assert (=> bs!1872335 (not (= lambda!415649 lambda!415594))))

(declare-fun bs!1872336 () Bool)

(assert (= bs!1872336 (and d!2196576 d!2196398)))

(assert (=> bs!1872336 (= lambda!415649 lambda!415631)))

(assert (=> d!2196576 (= (nullableZipper!2585 lt!2520803) (exists!3407 lt!2520803 lambda!415649))))

(declare-fun bs!1872337 () Bool)

(assert (= bs!1872337 d!2196576))

(declare-fun m!7746358 () Bool)

(assert (=> bs!1872337 m!7746358))

(assert (=> b!7036403 d!2196576))

(declare-fun d!2196578 () Bool)

(assert (=> d!2196578 (= (flatMap!2419 lt!2520793 lambda!415587) (choose!53329 lt!2520793 lambda!415587))))

(declare-fun bs!1872338 () Bool)

(assert (= bs!1872338 d!2196578))

(declare-fun m!7746360 () Bool)

(assert (=> bs!1872338 m!7746360))

(assert (=> d!2196070 d!2196578))

(assert (=> bs!1872068 d!2196068))

(declare-fun d!2196580 () Bool)

(declare-fun lt!2521205 () Int)

(assert (=> d!2196580 (>= lt!2521205 0)))

(declare-fun e!4230317 () Int)

(assert (=> d!2196580 (= lt!2521205 e!4230317)))

(declare-fun c!1309412 () Bool)

(assert (=> d!2196580 (= c!1309412 (is-Nil!67820 lt!2521069))))

(assert (=> d!2196580 (= (size!41074 lt!2521069) lt!2521205)))

(declare-fun b!7036966 () Bool)

(assert (=> b!7036966 (= e!4230317 0)))

(declare-fun b!7036967 () Bool)

(assert (=> b!7036967 (= e!4230317 (+ 1 (size!41074 (t!381713 lt!2521069))))))

(assert (= (and d!2196580 c!1309412) b!7036966))

(assert (= (and d!2196580 (not c!1309412)) b!7036967))

(declare-fun m!7746362 () Bool)

(assert (=> b!7036967 m!7746362))

(assert (=> b!7036336 d!2196580))

(declare-fun d!2196582 () Bool)

(declare-fun lt!2521206 () Int)

(assert (=> d!2196582 (>= lt!2521206 0)))

(declare-fun e!4230318 () Int)

(assert (=> d!2196582 (= lt!2521206 e!4230318)))

(declare-fun c!1309413 () Bool)

(assert (=> d!2196582 (= c!1309413 (is-Nil!67820 lt!2520840))))

(assert (=> d!2196582 (= (size!41074 lt!2520840) lt!2521206)))

(declare-fun b!7036968 () Bool)

(assert (=> b!7036968 (= e!4230318 0)))

(declare-fun b!7036969 () Bool)

(assert (=> b!7036969 (= e!4230318 (+ 1 (size!41074 (t!381713 lt!2520840))))))

(assert (= (and d!2196582 c!1309413) b!7036968))

(assert (= (and d!2196582 (not c!1309413)) b!7036969))

(assert (=> b!7036969 m!7745880))

(assert (=> b!7036336 d!2196582))

(assert (=> b!7036336 d!2196454))

(declare-fun call!639081 () List!67944)

(declare-fun bm!639076 () Bool)

(declare-fun c!1309418 () Bool)

(declare-fun c!1309414 () Bool)

(assert (=> bm!639076 (= call!639081 ($colon$colon!2579 (exprs!6968 (ite (or c!1309235 c!1309234) lt!2520844 (Context!12937 call!639013))) (ite (or c!1309414 c!1309418) (regTwo!35456 (ite c!1309235 (regTwo!35457 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309234 (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309238 (regOne!35456 (h!74268 (exprs!6968 lt!2520817))) (reg!17801 (h!74268 (exprs!6968 lt!2520817))))))) (ite c!1309235 (regTwo!35457 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309234 (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309238 (regOne!35456 (h!74268 (exprs!6968 lt!2520817))) (reg!17801 (h!74268 (exprs!6968 lt!2520817)))))))))))

(declare-fun c!1309416 () Bool)

(declare-fun b!7036970 () Bool)

(assert (=> b!7036970 (= c!1309416 (is-Star!17472 (ite c!1309235 (regTwo!35457 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309234 (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309238 (regOne!35456 (h!74268 (exprs!6968 lt!2520817))) (reg!17801 (h!74268 (exprs!6968 lt!2520817))))))))))

(declare-fun e!4230323 () (Set Context!12936))

(declare-fun e!4230321 () (Set Context!12936))

(assert (=> b!7036970 (= e!4230323 e!4230321)))

(declare-fun bm!639077 () Bool)

(declare-fun call!639084 () (Set Context!12936))

(declare-fun call!639086 () (Set Context!12936))

(assert (=> bm!639077 (= call!639084 call!639086)))

(declare-fun b!7036971 () Bool)

(assert (=> b!7036971 (= e!4230321 (as set.empty (Set Context!12936)))))

(declare-fun b!7036972 () Bool)

(declare-fun e!4230322 () (Set Context!12936))

(declare-fun call!639082 () (Set Context!12936))

(declare-fun call!639083 () (Set Context!12936))

(assert (=> b!7036972 (= e!4230322 (set.union call!639082 call!639083))))

(declare-fun bm!639078 () Bool)

(assert (=> bm!639078 (= call!639086 call!639083)))

(declare-fun b!7036973 () Bool)

(declare-fun e!4230320 () (Set Context!12936))

(assert (=> b!7036973 (= e!4230320 e!4230323)))

(assert (=> b!7036973 (= c!1309418 (is-Concat!26317 (ite c!1309235 (regTwo!35457 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309234 (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309238 (regOne!35456 (h!74268 (exprs!6968 lt!2520817))) (reg!17801 (h!74268 (exprs!6968 lt!2520817))))))))))

(declare-fun d!2196584 () Bool)

(declare-fun c!1309417 () Bool)

(assert (=> d!2196584 (= c!1309417 (and (is-ElementMatch!17472 (ite c!1309235 (regTwo!35457 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309234 (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309238 (regOne!35456 (h!74268 (exprs!6968 lt!2520817))) (reg!17801 (h!74268 (exprs!6968 lt!2520817))))))) (= (c!1309148 (ite c!1309235 (regTwo!35457 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309234 (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309238 (regOne!35456 (h!74268 (exprs!6968 lt!2520817))) (reg!17801 (h!74268 (exprs!6968 lt!2520817))))))) (h!74269 s!7408))))))

(declare-fun e!4230319 () (Set Context!12936))

(assert (=> d!2196584 (= (derivationStepZipperDown!2136 (ite c!1309235 (regTwo!35457 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309234 (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309238 (regOne!35456 (h!74268 (exprs!6968 lt!2520817))) (reg!17801 (h!74268 (exprs!6968 lt!2520817)))))) (ite (or c!1309235 c!1309234) lt!2520844 (Context!12937 call!639013)) (h!74269 s!7408)) e!4230319)))

(declare-fun b!7036974 () Bool)

(assert (=> b!7036974 (= e!4230321 call!639084)))

(declare-fun bm!639079 () Bool)

(declare-fun call!639085 () List!67944)

(assert (=> bm!639079 (= call!639085 call!639081)))

(declare-fun b!7036975 () Bool)

(assert (=> b!7036975 (= e!4230320 (set.union call!639082 call!639086))))

(declare-fun c!1309415 () Bool)

(declare-fun bm!639080 () Bool)

(assert (=> bm!639080 (= call!639082 (derivationStepZipperDown!2136 (ite c!1309415 (regOne!35457 (ite c!1309235 (regTwo!35457 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309234 (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309238 (regOne!35456 (h!74268 (exprs!6968 lt!2520817))) (reg!17801 (h!74268 (exprs!6968 lt!2520817))))))) (regOne!35456 (ite c!1309235 (regTwo!35457 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309234 (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309238 (regOne!35456 (h!74268 (exprs!6968 lt!2520817))) (reg!17801 (h!74268 (exprs!6968 lt!2520817)))))))) (ite c!1309415 (ite (or c!1309235 c!1309234) lt!2520844 (Context!12937 call!639013)) (Context!12937 call!639081)) (h!74269 s!7408)))))

(declare-fun b!7036976 () Bool)

(assert (=> b!7036976 (= e!4230323 call!639084)))

(declare-fun b!7036977 () Bool)

(assert (=> b!7036977 (= e!4230319 e!4230322)))

(assert (=> b!7036977 (= c!1309415 (is-Union!17472 (ite c!1309235 (regTwo!35457 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309234 (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309238 (regOne!35456 (h!74268 (exprs!6968 lt!2520817))) (reg!17801 (h!74268 (exprs!6968 lt!2520817))))))))))

(declare-fun b!7036978 () Bool)

(declare-fun e!4230324 () Bool)

(assert (=> b!7036978 (= c!1309414 e!4230324)))

(declare-fun res!2872587 () Bool)

(assert (=> b!7036978 (=> (not res!2872587) (not e!4230324))))

(assert (=> b!7036978 (= res!2872587 (is-Concat!26317 (ite c!1309235 (regTwo!35457 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309234 (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309238 (regOne!35456 (h!74268 (exprs!6968 lt!2520817))) (reg!17801 (h!74268 (exprs!6968 lt!2520817))))))))))

(assert (=> b!7036978 (= e!4230322 e!4230320)))

(declare-fun b!7036979 () Bool)

(assert (=> b!7036979 (= e!4230319 (set.insert (ite (or c!1309235 c!1309234) lt!2520844 (Context!12937 call!639013)) (as set.empty (Set Context!12936))))))

(declare-fun bm!639081 () Bool)

(assert (=> bm!639081 (= call!639083 (derivationStepZipperDown!2136 (ite c!1309415 (regTwo!35457 (ite c!1309235 (regTwo!35457 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309234 (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309238 (regOne!35456 (h!74268 (exprs!6968 lt!2520817))) (reg!17801 (h!74268 (exprs!6968 lt!2520817))))))) (ite c!1309414 (regTwo!35456 (ite c!1309235 (regTwo!35457 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309234 (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309238 (regOne!35456 (h!74268 (exprs!6968 lt!2520817))) (reg!17801 (h!74268 (exprs!6968 lt!2520817))))))) (ite c!1309418 (regOne!35456 (ite c!1309235 (regTwo!35457 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309234 (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309238 (regOne!35456 (h!74268 (exprs!6968 lt!2520817))) (reg!17801 (h!74268 (exprs!6968 lt!2520817))))))) (reg!17801 (ite c!1309235 (regTwo!35457 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309234 (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309238 (regOne!35456 (h!74268 (exprs!6968 lt!2520817))) (reg!17801 (h!74268 (exprs!6968 lt!2520817)))))))))) (ite (or c!1309415 c!1309414) (ite (or c!1309235 c!1309234) lt!2520844 (Context!12937 call!639013)) (Context!12937 call!639085)) (h!74269 s!7408)))))

(declare-fun b!7036980 () Bool)

(assert (=> b!7036980 (= e!4230324 (nullable!7183 (regOne!35456 (ite c!1309235 (regTwo!35457 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309234 (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309238 (regOne!35456 (h!74268 (exprs!6968 lt!2520817))) (reg!17801 (h!74268 (exprs!6968 lt!2520817)))))))))))

(assert (= (and d!2196584 c!1309417) b!7036979))

(assert (= (and d!2196584 (not c!1309417)) b!7036977))

(assert (= (and b!7036977 c!1309415) b!7036972))

(assert (= (and b!7036977 (not c!1309415)) b!7036978))

(assert (= (and b!7036978 res!2872587) b!7036980))

(assert (= (and b!7036978 c!1309414) b!7036975))

(assert (= (and b!7036978 (not c!1309414)) b!7036973))

(assert (= (and b!7036973 c!1309418) b!7036976))

(assert (= (and b!7036973 (not c!1309418)) b!7036970))

(assert (= (and b!7036970 c!1309416) b!7036974))

(assert (= (and b!7036970 (not c!1309416)) b!7036971))

(assert (= (or b!7036976 b!7036974) bm!639079))

(assert (= (or b!7036976 b!7036974) bm!639077))

(assert (= (or b!7036975 bm!639077) bm!639078))

(assert (= (or b!7036975 bm!639079) bm!639076))

(assert (= (or b!7036972 b!7036975) bm!639080))

(assert (= (or b!7036972 bm!639078) bm!639081))

(declare-fun m!7746364 () Bool)

(assert (=> bm!639076 m!7746364))

(declare-fun m!7746366 () Bool)

(assert (=> bm!639080 m!7746366))

(declare-fun m!7746368 () Bool)

(assert (=> b!7036979 m!7746368))

(declare-fun m!7746370 () Bool)

(assert (=> bm!639081 m!7746370))

(declare-fun m!7746372 () Bool)

(assert (=> b!7036980 m!7746372))

(assert (=> bm!639009 d!2196584))

(declare-fun b!7036993 () Bool)

(declare-fun e!4230333 () Context!12936)

(assert (=> b!7036993 (= e!4230333 (getWitness!1486 (t!381715 (toList!10815 lt!2520837)) lambda!415519))))

(declare-fun b!7036994 () Bool)

(declare-fun e!4230335 () Context!12936)

(assert (=> b!7036994 (= e!4230335 (h!74270 (toList!10815 lt!2520837)))))

(declare-fun b!7036995 () Bool)

(declare-fun e!4230334 () Bool)

(declare-fun lt!2521212 () Context!12936)

(assert (=> b!7036995 (= e!4230334 (contains!20462 (toList!10815 lt!2520837) lt!2521212))))

(declare-fun b!7036996 () Bool)

(assert (=> b!7036996 (= e!4230335 e!4230333)))

(declare-fun c!1309424 () Bool)

(assert (=> b!7036996 (= c!1309424 (is-Cons!67822 (toList!10815 lt!2520837)))))

(declare-fun b!7036997 () Bool)

(declare-fun lt!2521211 () Unit!161622)

(declare-fun Unit!161626 () Unit!161622)

(assert (=> b!7036997 (= lt!2521211 Unit!161626)))

(assert (=> b!7036997 false))

(declare-fun head!14274 (List!67946) Context!12936)

(assert (=> b!7036997 (= e!4230333 (head!14274 (toList!10815 lt!2520837)))))

(declare-fun d!2196586 () Bool)

(assert (=> d!2196586 e!4230334))

(declare-fun res!2872593 () Bool)

(assert (=> d!2196586 (=> (not res!2872593) (not e!4230334))))

(assert (=> d!2196586 (= res!2872593 (dynLambda!27407 lambda!415519 lt!2521212))))

(assert (=> d!2196586 (= lt!2521212 e!4230335)))

(declare-fun c!1309423 () Bool)

(declare-fun e!4230336 () Bool)

(assert (=> d!2196586 (= c!1309423 e!4230336)))

(declare-fun res!2872592 () Bool)

(assert (=> d!2196586 (=> (not res!2872592) (not e!4230336))))

(assert (=> d!2196586 (= res!2872592 (is-Cons!67822 (toList!10815 lt!2520837)))))

(assert (=> d!2196586 (exists!3405 (toList!10815 lt!2520837) lambda!415519)))

(assert (=> d!2196586 (= (getWitness!1486 (toList!10815 lt!2520837) lambda!415519) lt!2521212)))

(declare-fun b!7036998 () Bool)

(assert (=> b!7036998 (= e!4230336 (dynLambda!27407 lambda!415519 (h!74270 (toList!10815 lt!2520837))))))

(assert (= (and d!2196586 res!2872592) b!7036998))

(assert (= (and d!2196586 c!1309423) b!7036994))

(assert (= (and d!2196586 (not c!1309423)) b!7036996))

(assert (= (and b!7036996 c!1309424) b!7036993))

(assert (= (and b!7036996 (not c!1309424)) b!7036997))

(assert (= (and d!2196586 res!2872593) b!7036995))

(declare-fun b_lambda!266967 () Bool)

(assert (=> (not b_lambda!266967) (not d!2196586)))

(declare-fun b_lambda!266969 () Bool)

(assert (=> (not b_lambda!266969) (not b!7036998)))

(declare-fun m!7746374 () Bool)

(assert (=> b!7036993 m!7746374))

(assert (=> b!7036997 m!7744932))

(declare-fun m!7746376 () Bool)

(assert (=> b!7036997 m!7746376))

(declare-fun m!7746378 () Bool)

(assert (=> d!2196586 m!7746378))

(assert (=> d!2196586 m!7744932))

(declare-fun m!7746380 () Bool)

(assert (=> d!2196586 m!7746380))

(declare-fun m!7746382 () Bool)

(assert (=> b!7036998 m!7746382))

(assert (=> b!7036995 m!7744932))

(declare-fun m!7746384 () Bool)

(assert (=> b!7036995 m!7746384))

(assert (=> d!2196092 d!2196586))

(assert (=> d!2196092 d!2196086))

(declare-fun d!2196588 () Bool)

(declare-fun lt!2521215 () Bool)

(assert (=> d!2196588 (= lt!2521215 (exists!3405 (toList!10815 lt!2520837) lambda!415519))))

(declare-fun choose!53349 ((Set Context!12936) Int) Bool)

(assert (=> d!2196588 (= lt!2521215 (choose!53349 lt!2520837 lambda!415519))))

(assert (=> d!2196588 (= (exists!3407 lt!2520837 lambda!415519) lt!2521215)))

(declare-fun bs!1872339 () Bool)

(assert (= bs!1872339 d!2196588))

(assert (=> bs!1872339 m!7744932))

(assert (=> bs!1872339 m!7744932))

(assert (=> bs!1872339 m!7746380))

(declare-fun m!7746386 () Bool)

(assert (=> bs!1872339 m!7746386))

(assert (=> d!2196092 d!2196588))

(declare-fun bm!639082 () Bool)

(declare-fun c!1309429 () Bool)

(declare-fun c!1309425 () Bool)

(declare-fun call!639087 () List!67944)

(assert (=> bm!639082 (= call!639087 ($colon$colon!2579 (exprs!6968 (ite c!1309230 lt!2520842 (Context!12937 call!639003))) (ite (or c!1309425 c!1309429) (regTwo!35456 (ite c!1309230 (regOne!35457 (h!74268 (exprs!6968 lt!2520817))) (regOne!35456 (h!74268 (exprs!6968 lt!2520817))))) (ite c!1309230 (regOne!35457 (h!74268 (exprs!6968 lt!2520817))) (regOne!35456 (h!74268 (exprs!6968 lt!2520817)))))))))

(declare-fun b!7036999 () Bool)

(declare-fun c!1309427 () Bool)

(assert (=> b!7036999 (= c!1309427 (is-Star!17472 (ite c!1309230 (regOne!35457 (h!74268 (exprs!6968 lt!2520817))) (regOne!35456 (h!74268 (exprs!6968 lt!2520817))))))))

(declare-fun e!4230341 () (Set Context!12936))

(declare-fun e!4230339 () (Set Context!12936))

(assert (=> b!7036999 (= e!4230341 e!4230339)))

(declare-fun bm!639083 () Bool)

(declare-fun call!639090 () (Set Context!12936))

(declare-fun call!639092 () (Set Context!12936))

(assert (=> bm!639083 (= call!639090 call!639092)))

(declare-fun b!7037000 () Bool)

(assert (=> b!7037000 (= e!4230339 (as set.empty (Set Context!12936)))))

(declare-fun b!7037001 () Bool)

(declare-fun e!4230340 () (Set Context!12936))

(declare-fun call!639088 () (Set Context!12936))

(declare-fun call!639089 () (Set Context!12936))

(assert (=> b!7037001 (= e!4230340 (set.union call!639088 call!639089))))

(declare-fun bm!639084 () Bool)

(assert (=> bm!639084 (= call!639092 call!639089)))

(declare-fun b!7037002 () Bool)

(declare-fun e!4230338 () (Set Context!12936))

(assert (=> b!7037002 (= e!4230338 e!4230341)))

(assert (=> b!7037002 (= c!1309429 (is-Concat!26317 (ite c!1309230 (regOne!35457 (h!74268 (exprs!6968 lt!2520817))) (regOne!35456 (h!74268 (exprs!6968 lt!2520817))))))))

(declare-fun c!1309428 () Bool)

(declare-fun d!2196590 () Bool)

(assert (=> d!2196590 (= c!1309428 (and (is-ElementMatch!17472 (ite c!1309230 (regOne!35457 (h!74268 (exprs!6968 lt!2520817))) (regOne!35456 (h!74268 (exprs!6968 lt!2520817))))) (= (c!1309148 (ite c!1309230 (regOne!35457 (h!74268 (exprs!6968 lt!2520817))) (regOne!35456 (h!74268 (exprs!6968 lt!2520817))))) (h!74269 s!7408))))))

(declare-fun e!4230337 () (Set Context!12936))

(assert (=> d!2196590 (= (derivationStepZipperDown!2136 (ite c!1309230 (regOne!35457 (h!74268 (exprs!6968 lt!2520817))) (regOne!35456 (h!74268 (exprs!6968 lt!2520817)))) (ite c!1309230 lt!2520842 (Context!12937 call!639003)) (h!74269 s!7408)) e!4230337)))

(declare-fun b!7037003 () Bool)

(assert (=> b!7037003 (= e!4230339 call!639090)))

(declare-fun bm!639085 () Bool)

(declare-fun call!639091 () List!67944)

(assert (=> bm!639085 (= call!639091 call!639087)))

(declare-fun b!7037004 () Bool)

(assert (=> b!7037004 (= e!4230338 (set.union call!639088 call!639092))))

(declare-fun c!1309426 () Bool)

(declare-fun bm!639086 () Bool)

(assert (=> bm!639086 (= call!639088 (derivationStepZipperDown!2136 (ite c!1309426 (regOne!35457 (ite c!1309230 (regOne!35457 (h!74268 (exprs!6968 lt!2520817))) (regOne!35456 (h!74268 (exprs!6968 lt!2520817))))) (regOne!35456 (ite c!1309230 (regOne!35457 (h!74268 (exprs!6968 lt!2520817))) (regOne!35456 (h!74268 (exprs!6968 lt!2520817)))))) (ite c!1309426 (ite c!1309230 lt!2520842 (Context!12937 call!639003)) (Context!12937 call!639087)) (h!74269 s!7408)))))

(declare-fun b!7037005 () Bool)

(assert (=> b!7037005 (= e!4230341 call!639090)))

(declare-fun b!7037006 () Bool)

(assert (=> b!7037006 (= e!4230337 e!4230340)))

(assert (=> b!7037006 (= c!1309426 (is-Union!17472 (ite c!1309230 (regOne!35457 (h!74268 (exprs!6968 lt!2520817))) (regOne!35456 (h!74268 (exprs!6968 lt!2520817))))))))

(declare-fun b!7037007 () Bool)

(declare-fun e!4230342 () Bool)

(assert (=> b!7037007 (= c!1309425 e!4230342)))

(declare-fun res!2872594 () Bool)

(assert (=> b!7037007 (=> (not res!2872594) (not e!4230342))))

(assert (=> b!7037007 (= res!2872594 (is-Concat!26317 (ite c!1309230 (regOne!35457 (h!74268 (exprs!6968 lt!2520817))) (regOne!35456 (h!74268 (exprs!6968 lt!2520817))))))))

(assert (=> b!7037007 (= e!4230340 e!4230338)))

(declare-fun b!7037008 () Bool)

(assert (=> b!7037008 (= e!4230337 (set.insert (ite c!1309230 lt!2520842 (Context!12937 call!639003)) (as set.empty (Set Context!12936))))))

(declare-fun bm!639087 () Bool)

(assert (=> bm!639087 (= call!639089 (derivationStepZipperDown!2136 (ite c!1309426 (regTwo!35457 (ite c!1309230 (regOne!35457 (h!74268 (exprs!6968 lt!2520817))) (regOne!35456 (h!74268 (exprs!6968 lt!2520817))))) (ite c!1309425 (regTwo!35456 (ite c!1309230 (regOne!35457 (h!74268 (exprs!6968 lt!2520817))) (regOne!35456 (h!74268 (exprs!6968 lt!2520817))))) (ite c!1309429 (regOne!35456 (ite c!1309230 (regOne!35457 (h!74268 (exprs!6968 lt!2520817))) (regOne!35456 (h!74268 (exprs!6968 lt!2520817))))) (reg!17801 (ite c!1309230 (regOne!35457 (h!74268 (exprs!6968 lt!2520817))) (regOne!35456 (h!74268 (exprs!6968 lt!2520817)))))))) (ite (or c!1309426 c!1309425) (ite c!1309230 lt!2520842 (Context!12937 call!639003)) (Context!12937 call!639091)) (h!74269 s!7408)))))

(declare-fun b!7037009 () Bool)

(assert (=> b!7037009 (= e!4230342 (nullable!7183 (regOne!35456 (ite c!1309230 (regOne!35457 (h!74268 (exprs!6968 lt!2520817))) (regOne!35456 (h!74268 (exprs!6968 lt!2520817)))))))))

(assert (= (and d!2196590 c!1309428) b!7037008))

(assert (= (and d!2196590 (not c!1309428)) b!7037006))

(assert (= (and b!7037006 c!1309426) b!7037001))

(assert (= (and b!7037006 (not c!1309426)) b!7037007))

(assert (= (and b!7037007 res!2872594) b!7037009))

(assert (= (and b!7037007 c!1309425) b!7037004))

(assert (= (and b!7037007 (not c!1309425)) b!7037002))

(assert (= (and b!7037002 c!1309429) b!7037005))

(assert (= (and b!7037002 (not c!1309429)) b!7036999))

(assert (= (and b!7036999 c!1309427) b!7037003))

(assert (= (and b!7036999 (not c!1309427)) b!7037000))

(assert (= (or b!7037005 b!7037003) bm!639085))

(assert (= (or b!7037005 b!7037003) bm!639083))

(assert (= (or b!7037004 bm!639083) bm!639084))

(assert (= (or b!7037004 bm!639085) bm!639082))

(assert (= (or b!7037001 b!7037004) bm!639086))

(assert (= (or b!7037001 bm!639084) bm!639087))

(declare-fun m!7746388 () Bool)

(assert (=> bm!639082 m!7746388))

(declare-fun m!7746390 () Bool)

(assert (=> bm!639086 m!7746390))

(declare-fun m!7746392 () Bool)

(assert (=> b!7037008 m!7746392))

(declare-fun m!7746394 () Bool)

(assert (=> bm!639087 m!7746394))

(declare-fun m!7746396 () Bool)

(assert (=> b!7037009 m!7746396))

(assert (=> bm!639002 d!2196590))

(declare-fun b!7037010 () Bool)

(declare-fun c!1309432 () Bool)

(assert (=> b!7037010 (= c!1309432 (is-Union!17472 (h!74268 (exprs!6968 lt!2520817))))))

(declare-fun e!4230344 () Int)

(declare-fun e!4230346 () Int)

(assert (=> b!7037010 (= e!4230344 e!4230346)))

(declare-fun b!7037011 () Bool)

(declare-fun e!4230343 () Int)

(declare-fun call!639093 () Int)

(declare-fun call!639094 () Int)

(assert (=> b!7037011 (= e!4230343 (+ 1 call!639093 call!639094))))

(declare-fun b!7037012 () Bool)

(declare-fun e!4230345 () Int)

(assert (=> b!7037012 (= e!4230345 e!4230344)))

(declare-fun c!1309433 () Bool)

(assert (=> b!7037012 (= c!1309433 (is-Star!17472 (h!74268 (exprs!6968 lt!2520817))))))

(declare-fun b!7037013 () Bool)

(declare-fun call!639095 () Int)

(assert (=> b!7037013 (= e!4230344 (+ 1 call!639095))))

(declare-fun b!7037014 () Bool)

(assert (=> b!7037014 (= e!4230346 (+ 1 call!639094 call!639093))))

(declare-fun bm!639088 () Bool)

(assert (=> bm!639088 (= call!639095 (regexDepthTotal!308 (ite c!1309433 (reg!17801 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309432 (regTwo!35457 (h!74268 (exprs!6968 lt!2520817))) (regOne!35456 (h!74268 (exprs!6968 lt!2520817)))))))))

(declare-fun d!2196592 () Bool)

(declare-fun lt!2521216 () Int)

(assert (=> d!2196592 (> lt!2521216 0)))

(assert (=> d!2196592 (= lt!2521216 e!4230345)))

(declare-fun c!1309430 () Bool)

(assert (=> d!2196592 (= c!1309430 (is-ElementMatch!17472 (h!74268 (exprs!6968 lt!2520817))))))

(assert (=> d!2196592 (= (regexDepthTotal!308 (h!74268 (exprs!6968 lt!2520817))) lt!2521216)))

(declare-fun bm!639089 () Bool)

(assert (=> bm!639089 (= call!639093 call!639095)))

(declare-fun bm!639090 () Bool)

(assert (=> bm!639090 (= call!639094 (regexDepthTotal!308 (ite c!1309432 (regOne!35457 (h!74268 (exprs!6968 lt!2520817))) (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))))))))

(declare-fun b!7037015 () Bool)

(assert (=> b!7037015 (= e!4230343 1)))

(declare-fun b!7037016 () Bool)

(assert (=> b!7037016 (= e!4230346 e!4230343)))

(declare-fun c!1309431 () Bool)

(assert (=> b!7037016 (= c!1309431 (is-Concat!26317 (h!74268 (exprs!6968 lt!2520817))))))

(declare-fun b!7037017 () Bool)

(assert (=> b!7037017 (= e!4230345 1)))

(assert (= (and d!2196592 c!1309430) b!7037017))

(assert (= (and d!2196592 (not c!1309430)) b!7037012))

(assert (= (and b!7037012 c!1309433) b!7037013))

(assert (= (and b!7037012 (not c!1309433)) b!7037010))

(assert (= (and b!7037010 c!1309432) b!7037014))

(assert (= (and b!7037010 (not c!1309432)) b!7037016))

(assert (= (and b!7037016 c!1309431) b!7037011))

(assert (= (and b!7037016 (not c!1309431)) b!7037015))

(assert (= (or b!7037014 b!7037011) bm!639089))

(assert (= (or b!7037014 b!7037011) bm!639090))

(assert (= (or b!7037013 bm!639089) bm!639088))

(declare-fun m!7746398 () Bool)

(assert (=> bm!639088 m!7746398))

(declare-fun m!7746400 () Bool)

(assert (=> bm!639090 m!7746400))

(assert (=> b!7036342 d!2196592))

(declare-fun d!2196594 () Bool)

(declare-fun lt!2521217 () Int)

(assert (=> d!2196594 (>= lt!2521217 0)))

(declare-fun e!4230347 () Int)

(assert (=> d!2196594 (= lt!2521217 e!4230347)))

(declare-fun c!1309434 () Bool)

(assert (=> d!2196594 (= c!1309434 (is-Cons!67820 (exprs!6968 (Context!12937 (t!381713 (exprs!6968 lt!2520817))))))))

(assert (=> d!2196594 (= (contextDepthTotal!507 (Context!12937 (t!381713 (exprs!6968 lt!2520817)))) lt!2521217)))

(declare-fun b!7037018 () Bool)

(assert (=> b!7037018 (= e!4230347 (+ (regexDepthTotal!308 (h!74268 (exprs!6968 (Context!12937 (t!381713 (exprs!6968 lt!2520817)))))) (contextDepthTotal!507 (Context!12937 (t!381713 (exprs!6968 (Context!12937 (t!381713 (exprs!6968 lt!2520817)))))))))))

(declare-fun b!7037019 () Bool)

(assert (=> b!7037019 (= e!4230347 1)))

(assert (= (and d!2196594 c!1309434) b!7037018))

(assert (= (and d!2196594 (not c!1309434)) b!7037019))

(declare-fun m!7746402 () Bool)

(assert (=> b!7037018 m!7746402))

(declare-fun m!7746404 () Bool)

(assert (=> b!7037018 m!7746404))

(assert (=> b!7036342 d!2196594))

(declare-fun d!2196596 () Bool)

(declare-fun c!1309435 () Bool)

(assert (=> d!2196596 (= c!1309435 (isEmpty!39563 (_2!37348 (get!23764 lt!2521091))))))

(declare-fun e!4230348 () Bool)

(assert (=> d!2196596 (= (matchZipper!3012 lt!2520799 (_2!37348 (get!23764 lt!2521091))) e!4230348)))

(declare-fun b!7037020 () Bool)

(assert (=> b!7037020 (= e!4230348 (nullableZipper!2585 lt!2520799))))

(declare-fun b!7037021 () Bool)

(assert (=> b!7037021 (= e!4230348 (matchZipper!3012 (derivationStepZipper!2928 lt!2520799 (head!14272 (_2!37348 (get!23764 lt!2521091)))) (tail!13565 (_2!37348 (get!23764 lt!2521091)))))))

(assert (= (and d!2196596 c!1309435) b!7037020))

(assert (= (and d!2196596 (not c!1309435)) b!7037021))

(declare-fun m!7746406 () Bool)

(assert (=> d!2196596 m!7746406))

(assert (=> b!7037020 m!7745442))

(declare-fun m!7746408 () Bool)

(assert (=> b!7037021 m!7746408))

(assert (=> b!7037021 m!7746408))

(declare-fun m!7746410 () Bool)

(assert (=> b!7037021 m!7746410))

(declare-fun m!7746412 () Bool)

(assert (=> b!7037021 m!7746412))

(assert (=> b!7037021 m!7746410))

(assert (=> b!7037021 m!7746412))

(declare-fun m!7746414 () Bool)

(assert (=> b!7037021 m!7746414))

(assert (=> b!7036398 d!2196596))

(assert (=> b!7036398 d!2196356))

(assert (=> d!2196134 d!2196464))

(assert (=> d!2196100 d!2196118))

(declare-fun d!2196598 () Bool)

(assert (=> d!2196598 (= (map!15776 lt!2520803 lambda!415520) (set.insert (dynLambda!27408 lambda!415520 lt!2520844) (as set.empty (Set Context!12936))))))

(assert (=> d!2196598 true))

(declare-fun _$12!2372 () Unit!161622)

(assert (=> d!2196598 (= (choose!53332 lt!2520803 lt!2520844 lambda!415520) _$12!2372)))

(declare-fun b_lambda!266971 () Bool)

(assert (=> (not b_lambda!266971) (not d!2196598)))

(declare-fun bs!1872340 () Bool)

(assert (= bs!1872340 d!2196598))

(assert (=> bs!1872340 m!7744968))

(assert (=> bs!1872340 m!7745278))

(assert (=> bs!1872340 m!7745278))

(assert (=> bs!1872340 m!7745282))

(assert (=> d!2196100 d!2196598))

(declare-fun d!2196600 () Bool)

(declare-fun res!2872595 () Bool)

(declare-fun e!4230349 () Bool)

(assert (=> d!2196600 (=> res!2872595 e!4230349)))

(assert (=> d!2196600 (= res!2872595 (is-Nil!67820 (++!15524 (exprs!6968 lt!2520817) (exprs!6968 ct2!306))))))

(assert (=> d!2196600 (= (forall!16389 (++!15524 (exprs!6968 lt!2520817) (exprs!6968 ct2!306)) lambda!415521) e!4230349)))

(declare-fun b!7037022 () Bool)

(declare-fun e!4230350 () Bool)

(assert (=> b!7037022 (= e!4230349 e!4230350)))

(declare-fun res!2872596 () Bool)

(assert (=> b!7037022 (=> (not res!2872596) (not e!4230350))))

(assert (=> b!7037022 (= res!2872596 (dynLambda!27413 lambda!415521 (h!74268 (++!15524 (exprs!6968 lt!2520817) (exprs!6968 ct2!306)))))))

(declare-fun b!7037023 () Bool)

(assert (=> b!7037023 (= e!4230350 (forall!16389 (t!381713 (++!15524 (exprs!6968 lt!2520817) (exprs!6968 ct2!306))) lambda!415521))))

(assert (= (and d!2196600 (not res!2872595)) b!7037022))

(assert (= (and b!7037022 res!2872596) b!7037023))

(declare-fun b_lambda!266973 () Bool)

(assert (=> (not b_lambda!266973) (not b!7037022)))

(declare-fun m!7746416 () Bool)

(assert (=> b!7037022 m!7746416))

(declare-fun m!7746418 () Bool)

(assert (=> b!7037023 m!7746418))

(assert (=> d!2196096 d!2196600))

(assert (=> d!2196096 d!2196130))

(declare-fun d!2196602 () Bool)

(assert (=> d!2196602 (forall!16389 (++!15524 (exprs!6968 lt!2520817) (exprs!6968 ct2!306)) lambda!415521)))

(assert (=> d!2196602 true))

(declare-fun _$78!598 () Unit!161622)

(assert (=> d!2196602 (= (choose!53326 (exprs!6968 lt!2520817) (exprs!6968 ct2!306) lambda!415521) _$78!598)))

(declare-fun bs!1872341 () Bool)

(assert (= bs!1872341 d!2196602))

(assert (=> bs!1872341 m!7744878))

(assert (=> bs!1872341 m!7744878))

(assert (=> bs!1872341 m!7745268))

(assert (=> d!2196096 d!2196602))

(declare-fun d!2196604 () Bool)

(declare-fun res!2872597 () Bool)

(declare-fun e!4230351 () Bool)

(assert (=> d!2196604 (=> res!2872597 e!4230351)))

(assert (=> d!2196604 (= res!2872597 (is-Nil!67820 (exprs!6968 lt!2520817)))))

(assert (=> d!2196604 (= (forall!16389 (exprs!6968 lt!2520817) lambda!415521) e!4230351)))

(declare-fun b!7037024 () Bool)

(declare-fun e!4230352 () Bool)

(assert (=> b!7037024 (= e!4230351 e!4230352)))

(declare-fun res!2872598 () Bool)

(assert (=> b!7037024 (=> (not res!2872598) (not e!4230352))))

(assert (=> b!7037024 (= res!2872598 (dynLambda!27413 lambda!415521 (h!74268 (exprs!6968 lt!2520817))))))

(declare-fun b!7037025 () Bool)

(assert (=> b!7037025 (= e!4230352 (forall!16389 (t!381713 (exprs!6968 lt!2520817)) lambda!415521))))

(assert (= (and d!2196604 (not res!2872597)) b!7037024))

(assert (= (and b!7037024 res!2872598) b!7037025))

(declare-fun b_lambda!266975 () Bool)

(assert (=> (not b_lambda!266975) (not b!7037024)))

(declare-fun m!7746420 () Bool)

(assert (=> b!7037024 m!7746420))

(declare-fun m!7746422 () Bool)

(assert (=> b!7037025 m!7746422))

(assert (=> d!2196096 d!2196604))

(assert (=> bs!1872073 d!2196102))

(declare-fun d!2196606 () Bool)

(declare-fun c!1309436 () Bool)

(declare-fun e!4230353 () Bool)

(assert (=> d!2196606 (= c!1309436 e!4230353)))

(declare-fun res!2872599 () Bool)

(assert (=> d!2196606 (=> (not res!2872599) (not e!4230353))))

(assert (=> d!2196606 (= res!2872599 (is-Cons!67820 (exprs!6968 (Context!12937 (t!381713 (exprs!6968 lt!2520817))))))))

(declare-fun e!4230355 () (Set Context!12936))

(assert (=> d!2196606 (= (derivationStepZipperUp!2082 (Context!12937 (t!381713 (exprs!6968 lt!2520817))) (h!74269 s!7408)) e!4230355)))

(declare-fun b!7037026 () Bool)

(assert (=> b!7037026 (= e!4230353 (nullable!7183 (h!74268 (exprs!6968 (Context!12937 (t!381713 (exprs!6968 lt!2520817)))))))))

(declare-fun b!7037027 () Bool)

(declare-fun e!4230354 () (Set Context!12936))

(assert (=> b!7037027 (= e!4230354 (as set.empty (Set Context!12936)))))

(declare-fun b!7037028 () Bool)

(declare-fun call!639096 () (Set Context!12936))

(assert (=> b!7037028 (= e!4230354 call!639096)))

(declare-fun bm!639091 () Bool)

(assert (=> bm!639091 (= call!639096 (derivationStepZipperDown!2136 (h!74268 (exprs!6968 (Context!12937 (t!381713 (exprs!6968 lt!2520817))))) (Context!12937 (t!381713 (exprs!6968 (Context!12937 (t!381713 (exprs!6968 lt!2520817)))))) (h!74269 s!7408)))))

(declare-fun b!7037029 () Bool)

(assert (=> b!7037029 (= e!4230355 (set.union call!639096 (derivationStepZipperUp!2082 (Context!12937 (t!381713 (exprs!6968 (Context!12937 (t!381713 (exprs!6968 lt!2520817)))))) (h!74269 s!7408))))))

(declare-fun b!7037030 () Bool)

(assert (=> b!7037030 (= e!4230355 e!4230354)))

(declare-fun c!1309437 () Bool)

(assert (=> b!7037030 (= c!1309437 (is-Cons!67820 (exprs!6968 (Context!12937 (t!381713 (exprs!6968 lt!2520817))))))))

(assert (= (and d!2196606 res!2872599) b!7037026))

(assert (= (and d!2196606 c!1309436) b!7037029))

(assert (= (and d!2196606 (not c!1309436)) b!7037030))

(assert (= (and b!7037030 c!1309437) b!7037028))

(assert (= (and b!7037030 (not c!1309437)) b!7037027))

(assert (= (or b!7037029 b!7037028) bm!639091))

(declare-fun m!7746424 () Bool)

(assert (=> b!7037026 m!7746424))

(declare-fun m!7746426 () Bool)

(assert (=> bm!639091 m!7746426))

(declare-fun m!7746428 () Bool)

(assert (=> b!7037029 m!7746428))

(assert (=> b!7036299 d!2196606))

(declare-fun c!1309438 () Bool)

(declare-fun call!639097 () List!67944)

(declare-fun c!1309442 () Bool)

(declare-fun bm!639092 () Bool)

(assert (=> bm!639092 (= call!639097 ($colon$colon!2579 (exprs!6968 (ite (or c!1309230 c!1309229) lt!2520842 (Context!12937 call!639007))) (ite (or c!1309438 c!1309442) (regTwo!35456 (ite c!1309230 (regTwo!35457 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309229 (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309233 (regOne!35456 (h!74268 (exprs!6968 lt!2520817))) (reg!17801 (h!74268 (exprs!6968 lt!2520817))))))) (ite c!1309230 (regTwo!35457 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309229 (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309233 (regOne!35456 (h!74268 (exprs!6968 lt!2520817))) (reg!17801 (h!74268 (exprs!6968 lt!2520817)))))))))))

(declare-fun b!7037031 () Bool)

(declare-fun c!1309440 () Bool)

(assert (=> b!7037031 (= c!1309440 (is-Star!17472 (ite c!1309230 (regTwo!35457 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309229 (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309233 (regOne!35456 (h!74268 (exprs!6968 lt!2520817))) (reg!17801 (h!74268 (exprs!6968 lt!2520817))))))))))

(declare-fun e!4230360 () (Set Context!12936))

(declare-fun e!4230358 () (Set Context!12936))

(assert (=> b!7037031 (= e!4230360 e!4230358)))

(declare-fun bm!639093 () Bool)

(declare-fun call!639100 () (Set Context!12936))

(declare-fun call!639102 () (Set Context!12936))

(assert (=> bm!639093 (= call!639100 call!639102)))

(declare-fun b!7037032 () Bool)

(assert (=> b!7037032 (= e!4230358 (as set.empty (Set Context!12936)))))

(declare-fun b!7037033 () Bool)

(declare-fun e!4230359 () (Set Context!12936))

(declare-fun call!639098 () (Set Context!12936))

(declare-fun call!639099 () (Set Context!12936))

(assert (=> b!7037033 (= e!4230359 (set.union call!639098 call!639099))))

(declare-fun bm!639094 () Bool)

(assert (=> bm!639094 (= call!639102 call!639099)))

(declare-fun b!7037034 () Bool)

(declare-fun e!4230357 () (Set Context!12936))

(assert (=> b!7037034 (= e!4230357 e!4230360)))

(assert (=> b!7037034 (= c!1309442 (is-Concat!26317 (ite c!1309230 (regTwo!35457 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309229 (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309233 (regOne!35456 (h!74268 (exprs!6968 lt!2520817))) (reg!17801 (h!74268 (exprs!6968 lt!2520817))))))))))

(declare-fun c!1309441 () Bool)

(declare-fun d!2196608 () Bool)

(assert (=> d!2196608 (= c!1309441 (and (is-ElementMatch!17472 (ite c!1309230 (regTwo!35457 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309229 (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309233 (regOne!35456 (h!74268 (exprs!6968 lt!2520817))) (reg!17801 (h!74268 (exprs!6968 lt!2520817))))))) (= (c!1309148 (ite c!1309230 (regTwo!35457 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309229 (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309233 (regOne!35456 (h!74268 (exprs!6968 lt!2520817))) (reg!17801 (h!74268 (exprs!6968 lt!2520817))))))) (h!74269 s!7408))))))

(declare-fun e!4230356 () (Set Context!12936))

(assert (=> d!2196608 (= (derivationStepZipperDown!2136 (ite c!1309230 (regTwo!35457 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309229 (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309233 (regOne!35456 (h!74268 (exprs!6968 lt!2520817))) (reg!17801 (h!74268 (exprs!6968 lt!2520817)))))) (ite (or c!1309230 c!1309229) lt!2520842 (Context!12937 call!639007)) (h!74269 s!7408)) e!4230356)))

(declare-fun b!7037035 () Bool)

(assert (=> b!7037035 (= e!4230358 call!639100)))

(declare-fun bm!639095 () Bool)

(declare-fun call!639101 () List!67944)

(assert (=> bm!639095 (= call!639101 call!639097)))

(declare-fun b!7037036 () Bool)

(assert (=> b!7037036 (= e!4230357 (set.union call!639098 call!639102))))

(declare-fun c!1309439 () Bool)

(declare-fun bm!639096 () Bool)

(assert (=> bm!639096 (= call!639098 (derivationStepZipperDown!2136 (ite c!1309439 (regOne!35457 (ite c!1309230 (regTwo!35457 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309229 (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309233 (regOne!35456 (h!74268 (exprs!6968 lt!2520817))) (reg!17801 (h!74268 (exprs!6968 lt!2520817))))))) (regOne!35456 (ite c!1309230 (regTwo!35457 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309229 (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309233 (regOne!35456 (h!74268 (exprs!6968 lt!2520817))) (reg!17801 (h!74268 (exprs!6968 lt!2520817)))))))) (ite c!1309439 (ite (or c!1309230 c!1309229) lt!2520842 (Context!12937 call!639007)) (Context!12937 call!639097)) (h!74269 s!7408)))))

(declare-fun b!7037037 () Bool)

(assert (=> b!7037037 (= e!4230360 call!639100)))

(declare-fun b!7037038 () Bool)

(assert (=> b!7037038 (= e!4230356 e!4230359)))

(assert (=> b!7037038 (= c!1309439 (is-Union!17472 (ite c!1309230 (regTwo!35457 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309229 (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309233 (regOne!35456 (h!74268 (exprs!6968 lt!2520817))) (reg!17801 (h!74268 (exprs!6968 lt!2520817))))))))))

(declare-fun b!7037039 () Bool)

(declare-fun e!4230361 () Bool)

(assert (=> b!7037039 (= c!1309438 e!4230361)))

(declare-fun res!2872600 () Bool)

(assert (=> b!7037039 (=> (not res!2872600) (not e!4230361))))

(assert (=> b!7037039 (= res!2872600 (is-Concat!26317 (ite c!1309230 (regTwo!35457 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309229 (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309233 (regOne!35456 (h!74268 (exprs!6968 lt!2520817))) (reg!17801 (h!74268 (exprs!6968 lt!2520817))))))))))

(assert (=> b!7037039 (= e!4230359 e!4230357)))

(declare-fun b!7037040 () Bool)

(assert (=> b!7037040 (= e!4230356 (set.insert (ite (or c!1309230 c!1309229) lt!2520842 (Context!12937 call!639007)) (as set.empty (Set Context!12936))))))

(declare-fun bm!639097 () Bool)

(assert (=> bm!639097 (= call!639099 (derivationStepZipperDown!2136 (ite c!1309439 (regTwo!35457 (ite c!1309230 (regTwo!35457 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309229 (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309233 (regOne!35456 (h!74268 (exprs!6968 lt!2520817))) (reg!17801 (h!74268 (exprs!6968 lt!2520817))))))) (ite c!1309438 (regTwo!35456 (ite c!1309230 (regTwo!35457 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309229 (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309233 (regOne!35456 (h!74268 (exprs!6968 lt!2520817))) (reg!17801 (h!74268 (exprs!6968 lt!2520817))))))) (ite c!1309442 (regOne!35456 (ite c!1309230 (regTwo!35457 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309229 (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309233 (regOne!35456 (h!74268 (exprs!6968 lt!2520817))) (reg!17801 (h!74268 (exprs!6968 lt!2520817))))))) (reg!17801 (ite c!1309230 (regTwo!35457 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309229 (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309233 (regOne!35456 (h!74268 (exprs!6968 lt!2520817))) (reg!17801 (h!74268 (exprs!6968 lt!2520817)))))))))) (ite (or c!1309439 c!1309438) (ite (or c!1309230 c!1309229) lt!2520842 (Context!12937 call!639007)) (Context!12937 call!639101)) (h!74269 s!7408)))))

(declare-fun b!7037041 () Bool)

(assert (=> b!7037041 (= e!4230361 (nullable!7183 (regOne!35456 (ite c!1309230 (regTwo!35457 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309229 (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))) (ite c!1309233 (regOne!35456 (h!74268 (exprs!6968 lt!2520817))) (reg!17801 (h!74268 (exprs!6968 lt!2520817)))))))))))

(assert (= (and d!2196608 c!1309441) b!7037040))

(assert (= (and d!2196608 (not c!1309441)) b!7037038))

(assert (= (and b!7037038 c!1309439) b!7037033))

(assert (= (and b!7037038 (not c!1309439)) b!7037039))

(assert (= (and b!7037039 res!2872600) b!7037041))

(assert (= (and b!7037039 c!1309438) b!7037036))

(assert (= (and b!7037039 (not c!1309438)) b!7037034))

(assert (= (and b!7037034 c!1309442) b!7037037))

(assert (= (and b!7037034 (not c!1309442)) b!7037031))

(assert (= (and b!7037031 c!1309440) b!7037035))

(assert (= (and b!7037031 (not c!1309440)) b!7037032))

(assert (= (or b!7037037 b!7037035) bm!639095))

(assert (= (or b!7037037 b!7037035) bm!639093))

(assert (= (or b!7037036 bm!639093) bm!639094))

(assert (= (or b!7037036 bm!639095) bm!639092))

(assert (= (or b!7037033 b!7037036) bm!639096))

(assert (= (or b!7037033 bm!639094) bm!639097))

(declare-fun m!7746430 () Bool)

(assert (=> bm!639092 m!7746430))

(declare-fun m!7746432 () Bool)

(assert (=> bm!639096 m!7746432))

(declare-fun m!7746434 () Bool)

(assert (=> b!7037040 m!7746434))

(declare-fun m!7746436 () Bool)

(assert (=> bm!639097 m!7746436))

(declare-fun m!7746438 () Bool)

(assert (=> b!7037041 m!7746438))

(assert (=> bm!639003 d!2196608))

(assert (=> d!2196126 d!2196052))

(declare-fun d!2196610 () Bool)

(assert (=> d!2196610 (= (isEmpty!39563 (_2!37348 lt!2520831)) (is-Nil!67821 (_2!37348 lt!2520831)))))

(assert (=> d!2196154 d!2196610))

(declare-fun bs!1872342 () Bool)

(declare-fun d!2196612 () Bool)

(assert (= bs!1872342 (and d!2196612 d!2196528)))

(declare-fun lambda!415650 () Int)

(assert (=> bs!1872342 (not (= lambda!415650 lambda!415643))))

(declare-fun bs!1872343 () Bool)

(assert (= bs!1872343 (and d!2196612 d!2196570)))

(assert (=> bs!1872343 (not (= lambda!415650 lambda!415648))))

(declare-fun bs!1872344 () Bool)

(assert (= bs!1872344 (and d!2196612 d!2196418)))

(assert (=> bs!1872344 (not (= lambda!415650 lambda!415634))))

(declare-fun bs!1872345 () Bool)

(assert (= bs!1872345 (and d!2196612 d!2196482)))

(assert (=> bs!1872345 (not (= lambda!415650 lambda!415638))))

(declare-fun bs!1872346 () Bool)

(assert (= bs!1872346 (and d!2196612 d!2196084)))

(assert (=> bs!1872346 (not (= lambda!415650 lambda!415591))))

(declare-fun bs!1872347 () Bool)

(assert (= bs!1872347 (and d!2196612 d!2196340)))

(assert (=> bs!1872347 (not (= lambda!415650 lambda!415628))))

(declare-fun bs!1872348 () Bool)

(assert (= bs!1872348 (and d!2196612 b!7036157)))

(assert (=> bs!1872348 (not (= lambda!415650 lambda!415519))))

(declare-fun bs!1872349 () Bool)

(assert (= bs!1872349 (and d!2196612 d!2196568)))

(assert (=> bs!1872349 (not (= lambda!415650 lambda!415647))))

(declare-fun bs!1872350 () Bool)

(assert (= bs!1872350 (and d!2196612 d!2196576)))

(assert (=> bs!1872350 (not (= lambda!415650 lambda!415649))))

(declare-fun bs!1872351 () Bool)

(assert (= bs!1872351 (and d!2196612 d!2196366)))

(assert (=> bs!1872351 (not (= lambda!415650 lambda!415629))))

(declare-fun bs!1872352 () Bool)

(assert (= bs!1872352 (and d!2196612 d!2196520)))

(assert (=> bs!1872352 (not (= lambda!415650 lambda!415642))))

(declare-fun bs!1872353 () Bool)

(assert (= bs!1872353 (and d!2196612 d!2196412)))

(assert (=> bs!1872353 (not (= lambda!415650 lambda!415633))))

(declare-fun bs!1872354 () Bool)

(assert (= bs!1872354 (and d!2196612 d!2196088)))

(assert (=> bs!1872354 (= (= lambda!415591 lambda!415519) (= lambda!415650 lambda!415594))))

(declare-fun bs!1872355 () Bool)

(assert (= bs!1872355 (and d!2196612 d!2196398)))

(assert (=> bs!1872355 (not (= lambda!415650 lambda!415631))))

(assert (=> d!2196612 true))

(assert (=> d!2196612 (< (dynLambda!27406 order!28185 lambda!415591) (dynLambda!27406 order!28185 lambda!415650))))

(assert (=> d!2196612 (= (exists!3405 lt!2520811 lambda!415591) (not (forall!16390 lt!2520811 lambda!415650)))))

(declare-fun bs!1872356 () Bool)

(assert (= bs!1872356 d!2196612))

(declare-fun m!7746440 () Bool)

(assert (=> bs!1872356 m!7746440))

(assert (=> d!2196084 d!2196612))

(declare-fun bs!1872357 () Bool)

(declare-fun d!2196614 () Bool)

(assert (= bs!1872357 (and d!2196614 d!2196528)))

(declare-fun lambda!415653 () Int)

(assert (=> bs!1872357 (not (= lambda!415653 lambda!415643))))

(declare-fun bs!1872358 () Bool)

(assert (= bs!1872358 (and d!2196614 d!2196570)))

(assert (=> bs!1872358 (not (= lambda!415653 lambda!415648))))

(declare-fun bs!1872359 () Bool)

(assert (= bs!1872359 (and d!2196614 d!2196418)))

(assert (=> bs!1872359 (not (= lambda!415653 lambda!415634))))

(declare-fun bs!1872360 () Bool)

(assert (= bs!1872360 (and d!2196614 d!2196482)))

(assert (=> bs!1872360 (not (= lambda!415653 lambda!415638))))

(declare-fun bs!1872361 () Bool)

(assert (= bs!1872361 (and d!2196614 d!2196084)))

(assert (=> bs!1872361 (= lambda!415653 lambda!415591)))

(declare-fun bs!1872362 () Bool)

(assert (= bs!1872362 (and d!2196614 d!2196340)))

(assert (=> bs!1872362 (not (= lambda!415653 lambda!415628))))

(declare-fun bs!1872363 () Bool)

(assert (= bs!1872363 (and d!2196614 b!7036157)))

(assert (=> bs!1872363 (= lambda!415653 lambda!415519)))

(declare-fun bs!1872364 () Bool)

(assert (= bs!1872364 (and d!2196614 d!2196568)))

(assert (=> bs!1872364 (not (= lambda!415653 lambda!415647))))

(declare-fun bs!1872365 () Bool)

(assert (= bs!1872365 (and d!2196614 d!2196612)))

(assert (=> bs!1872365 (not (= lambda!415653 lambda!415650))))

(declare-fun bs!1872366 () Bool)

(assert (= bs!1872366 (and d!2196614 d!2196576)))

(assert (=> bs!1872366 (not (= lambda!415653 lambda!415649))))

(declare-fun bs!1872367 () Bool)

(assert (= bs!1872367 (and d!2196614 d!2196366)))

(assert (=> bs!1872367 (not (= lambda!415653 lambda!415629))))

(declare-fun bs!1872368 () Bool)

(assert (= bs!1872368 (and d!2196614 d!2196520)))

(assert (=> bs!1872368 (not (= lambda!415653 lambda!415642))))

(declare-fun bs!1872369 () Bool)

(assert (= bs!1872369 (and d!2196614 d!2196412)))

(assert (=> bs!1872369 (not (= lambda!415653 lambda!415633))))

(declare-fun bs!1872370 () Bool)

(assert (= bs!1872370 (and d!2196614 d!2196088)))

(assert (=> bs!1872370 (not (= lambda!415653 lambda!415594))))

(declare-fun bs!1872371 () Bool)

(assert (= bs!1872371 (and d!2196614 d!2196398)))

(assert (=> bs!1872371 (not (= lambda!415653 lambda!415631))))

(assert (=> d!2196614 true))

(assert (=> d!2196614 (exists!3405 lt!2520811 lambda!415653)))

(assert (=> d!2196614 true))

(declare-fun _$60!1135 () Unit!161622)

(assert (=> d!2196614 (= (choose!53330 lt!2520811 s!7408) _$60!1135)))

(declare-fun bs!1872372 () Bool)

(assert (= bs!1872372 d!2196614))

(declare-fun m!7746442 () Bool)

(assert (=> bs!1872372 m!7746442))

(assert (=> d!2196084 d!2196614))

(declare-fun d!2196616 () Bool)

(declare-fun c!1309445 () Bool)

(assert (=> d!2196616 (= c!1309445 (isEmpty!39563 s!7408))))

(declare-fun e!4230362 () Bool)

(assert (=> d!2196616 (= (matchZipper!3012 (content!13550 lt!2520811) s!7408) e!4230362)))

(declare-fun b!7037042 () Bool)

(assert (=> b!7037042 (= e!4230362 (nullableZipper!2585 (content!13550 lt!2520811)))))

(declare-fun b!7037043 () Bool)

(assert (=> b!7037043 (= e!4230362 (matchZipper!3012 (derivationStepZipper!2928 (content!13550 lt!2520811) (head!14272 s!7408)) (tail!13565 s!7408)))))

(assert (= (and d!2196616 c!1309445) b!7037042))

(assert (= (and d!2196616 (not c!1309445)) b!7037043))

(assert (=> d!2196616 m!7745150))

(assert (=> b!7037042 m!7745230))

(declare-fun m!7746444 () Bool)

(assert (=> b!7037042 m!7746444))

(assert (=> b!7037043 m!7745154))

(assert (=> b!7037043 m!7745230))

(assert (=> b!7037043 m!7745154))

(declare-fun m!7746446 () Bool)

(assert (=> b!7037043 m!7746446))

(assert (=> b!7037043 m!7745158))

(assert (=> b!7037043 m!7746446))

(assert (=> b!7037043 m!7745158))

(declare-fun m!7746448 () Bool)

(assert (=> b!7037043 m!7746448))

(assert (=> d!2196084 d!2196616))

(declare-fun d!2196618 () Bool)

(declare-fun c!1309446 () Bool)

(assert (=> d!2196618 (= c!1309446 (is-Nil!67822 lt!2520811))))

(declare-fun e!4230363 () (Set Context!12936))

(assert (=> d!2196618 (= (content!13550 lt!2520811) e!4230363)))

(declare-fun b!7037044 () Bool)

(assert (=> b!7037044 (= e!4230363 (as set.empty (Set Context!12936)))))

(declare-fun b!7037045 () Bool)

(assert (=> b!7037045 (= e!4230363 (set.union (set.insert (h!74270 lt!2520811) (as set.empty (Set Context!12936))) (content!13550 (t!381715 lt!2520811))))))

(assert (= (and d!2196618 c!1309446) b!7037044))

(assert (= (and d!2196618 (not c!1309446)) b!7037045))

(declare-fun m!7746450 () Bool)

(assert (=> b!7037045 m!7746450))

(declare-fun m!7746452 () Bool)

(assert (=> b!7037045 m!7746452))

(assert (=> d!2196084 d!2196618))

(declare-fun bs!1872373 () Bool)

(declare-fun d!2196620 () Bool)

(assert (= bs!1872373 (and d!2196620 d!2196614)))

(declare-fun lambda!415654 () Int)

(assert (=> bs!1872373 (not (= lambda!415654 lambda!415653))))

(declare-fun bs!1872374 () Bool)

(assert (= bs!1872374 (and d!2196620 d!2196528)))

(assert (=> bs!1872374 (= lambda!415654 lambda!415643)))

(declare-fun bs!1872375 () Bool)

(assert (= bs!1872375 (and d!2196620 d!2196570)))

(assert (=> bs!1872375 (= lambda!415654 lambda!415648)))

(declare-fun bs!1872376 () Bool)

(assert (= bs!1872376 (and d!2196620 d!2196418)))

(assert (=> bs!1872376 (= lambda!415654 lambda!415634)))

(declare-fun bs!1872377 () Bool)

(assert (= bs!1872377 (and d!2196620 d!2196482)))

(assert (=> bs!1872377 (= lambda!415654 lambda!415638)))

(declare-fun bs!1872378 () Bool)

(assert (= bs!1872378 (and d!2196620 d!2196084)))

(assert (=> bs!1872378 (not (= lambda!415654 lambda!415591))))

(declare-fun bs!1872379 () Bool)

(assert (= bs!1872379 (and d!2196620 d!2196340)))

(assert (=> bs!1872379 (= lambda!415654 lambda!415628)))

(declare-fun bs!1872380 () Bool)

(assert (= bs!1872380 (and d!2196620 b!7036157)))

(assert (=> bs!1872380 (not (= lambda!415654 lambda!415519))))

(declare-fun bs!1872381 () Bool)

(assert (= bs!1872381 (and d!2196620 d!2196568)))

(assert (=> bs!1872381 (= lambda!415654 lambda!415647)))

(declare-fun bs!1872382 () Bool)

(assert (= bs!1872382 (and d!2196620 d!2196612)))

(assert (=> bs!1872382 (not (= lambda!415654 lambda!415650))))

(declare-fun bs!1872383 () Bool)

(assert (= bs!1872383 (and d!2196620 d!2196576)))

(assert (=> bs!1872383 (= lambda!415654 lambda!415649)))

(declare-fun bs!1872384 () Bool)

(assert (= bs!1872384 (and d!2196620 d!2196366)))

(assert (=> bs!1872384 (= lambda!415654 lambda!415629)))

(declare-fun bs!1872385 () Bool)

(assert (= bs!1872385 (and d!2196620 d!2196520)))

(assert (=> bs!1872385 (= lambda!415654 lambda!415642)))

(declare-fun bs!1872386 () Bool)

(assert (= bs!1872386 (and d!2196620 d!2196412)))

(assert (=> bs!1872386 (= lambda!415654 lambda!415633)))

(declare-fun bs!1872387 () Bool)

(assert (= bs!1872387 (and d!2196620 d!2196088)))

(assert (=> bs!1872387 (not (= lambda!415654 lambda!415594))))

(declare-fun bs!1872388 () Bool)

(assert (= bs!1872388 (and d!2196620 d!2196398)))

(assert (=> bs!1872388 (= lambda!415654 lambda!415631)))

(assert (=> d!2196620 (= (nullableZipper!2585 lt!2520837) (exists!3407 lt!2520837 lambda!415654))))

(declare-fun bs!1872389 () Bool)

(assert (= bs!1872389 d!2196620))

(declare-fun m!7746454 () Bool)

(assert (=> bs!1872389 m!7746454))

(assert (=> b!7036407 d!2196620))

(assert (=> d!2196054 d!2196432))

(declare-fun d!2196622 () Bool)

(declare-fun c!1309447 () Bool)

(assert (=> d!2196622 (= c!1309447 (is-Nil!67820 lt!2521069))))

(declare-fun e!4230364 () (Set Regex!17472))

(assert (=> d!2196622 (= (content!13551 lt!2521069) e!4230364)))

(declare-fun b!7037046 () Bool)

(assert (=> b!7037046 (= e!4230364 (as set.empty (Set Regex!17472)))))

(declare-fun b!7037047 () Bool)

(assert (=> b!7037047 (= e!4230364 (set.union (set.insert (h!74268 lt!2521069) (as set.empty (Set Regex!17472))) (content!13551 (t!381713 lt!2521069))))))

(assert (= (and d!2196622 c!1309447) b!7037046))

(assert (= (and d!2196622 (not c!1309447)) b!7037047))

(declare-fun m!7746456 () Bool)

(assert (=> b!7037047 m!7746456))

(declare-fun m!7746458 () Bool)

(assert (=> b!7037047 m!7746458))

(assert (=> d!2196108 d!2196622))

(declare-fun d!2196624 () Bool)

(declare-fun c!1309448 () Bool)

(assert (=> d!2196624 (= c!1309448 (is-Nil!67820 lt!2520840))))

(declare-fun e!4230365 () (Set Regex!17472))

(assert (=> d!2196624 (= (content!13551 lt!2520840) e!4230365)))

(declare-fun b!7037048 () Bool)

(assert (=> b!7037048 (= e!4230365 (as set.empty (Set Regex!17472)))))

(declare-fun b!7037049 () Bool)

(assert (=> b!7037049 (= e!4230365 (set.union (set.insert (h!74268 lt!2520840) (as set.empty (Set Regex!17472))) (content!13551 (t!381713 lt!2520840))))))

(assert (= (and d!2196624 c!1309448) b!7037048))

(assert (= (and d!2196624 (not c!1309448)) b!7037049))

(declare-fun m!7746460 () Bool)

(assert (=> b!7037049 m!7746460))

(assert (=> b!7037049 m!7745886))

(assert (=> d!2196108 d!2196624))

(assert (=> d!2196108 d!2196560))

(declare-fun d!2196626 () Bool)

(assert (=> d!2196626 (= (isEmpty!39567 lt!2520810) (not (is-Some!16876 lt!2520810)))))

(assert (=> d!2196144 d!2196626))

(declare-fun d!2196628 () Bool)

(declare-fun c!1309449 () Bool)

(declare-fun e!4230366 () Bool)

(assert (=> d!2196628 (= c!1309449 e!4230366)))

(declare-fun res!2872601 () Bool)

(assert (=> d!2196628 (=> (not res!2872601) (not e!4230366))))

(assert (=> d!2196628 (= res!2872601 (is-Cons!67820 (exprs!6968 (Context!12937 (t!381713 (exprs!6968 lt!2520807))))))))

(declare-fun e!4230368 () (Set Context!12936))

(assert (=> d!2196628 (= (derivationStepZipperUp!2082 (Context!12937 (t!381713 (exprs!6968 lt!2520807))) (h!74269 s!7408)) e!4230368)))

(declare-fun b!7037050 () Bool)

(assert (=> b!7037050 (= e!4230366 (nullable!7183 (h!74268 (exprs!6968 (Context!12937 (t!381713 (exprs!6968 lt!2520807)))))))))

(declare-fun b!7037051 () Bool)

(declare-fun e!4230367 () (Set Context!12936))

(assert (=> b!7037051 (= e!4230367 (as set.empty (Set Context!12936)))))

(declare-fun b!7037052 () Bool)

(declare-fun call!639103 () (Set Context!12936))

(assert (=> b!7037052 (= e!4230367 call!639103)))

(declare-fun bm!639098 () Bool)

(assert (=> bm!639098 (= call!639103 (derivationStepZipperDown!2136 (h!74268 (exprs!6968 (Context!12937 (t!381713 (exprs!6968 lt!2520807))))) (Context!12937 (t!381713 (exprs!6968 (Context!12937 (t!381713 (exprs!6968 lt!2520807)))))) (h!74269 s!7408)))))

(declare-fun b!7037053 () Bool)

(assert (=> b!7037053 (= e!4230368 (set.union call!639103 (derivationStepZipperUp!2082 (Context!12937 (t!381713 (exprs!6968 (Context!12937 (t!381713 (exprs!6968 lt!2520807)))))) (h!74269 s!7408))))))

(declare-fun b!7037054 () Bool)

(assert (=> b!7037054 (= e!4230368 e!4230367)))

(declare-fun c!1309450 () Bool)

(assert (=> b!7037054 (= c!1309450 (is-Cons!67820 (exprs!6968 (Context!12937 (t!381713 (exprs!6968 lt!2520807))))))))

(assert (= (and d!2196628 res!2872601) b!7037050))

(assert (= (and d!2196628 c!1309449) b!7037053))

(assert (= (and d!2196628 (not c!1309449)) b!7037054))

(assert (= (and b!7037054 c!1309450) b!7037052))

(assert (= (and b!7037054 (not c!1309450)) b!7037051))

(assert (= (or b!7037053 b!7037052) bm!639098))

(declare-fun m!7746462 () Bool)

(assert (=> b!7037050 m!7746462))

(declare-fun m!7746464 () Bool)

(assert (=> bm!639098 m!7746464))

(declare-fun m!7746466 () Bool)

(assert (=> b!7037053 m!7746466))

(assert (=> b!7036456 d!2196628))

(assert (=> b!7036296 d!2196140))

(declare-fun bm!639099 () Bool)

(declare-fun c!1309451 () Bool)

(declare-fun c!1309455 () Bool)

(declare-fun call!639104 () List!67944)

(assert (=> bm!639099 (= call!639104 ($colon$colon!2579 (exprs!6968 (Context!12937 (t!381713 (exprs!6968 lt!2520844)))) (ite (or c!1309451 c!1309455) (regTwo!35456 (h!74268 (exprs!6968 lt!2520844))) (h!74268 (exprs!6968 lt!2520844)))))))

(declare-fun b!7037055 () Bool)

(declare-fun c!1309453 () Bool)

(assert (=> b!7037055 (= c!1309453 (is-Star!17472 (h!74268 (exprs!6968 lt!2520844))))))

(declare-fun e!4230373 () (Set Context!12936))

(declare-fun e!4230371 () (Set Context!12936))

(assert (=> b!7037055 (= e!4230373 e!4230371)))

(declare-fun bm!639100 () Bool)

(declare-fun call!639107 () (Set Context!12936))

(declare-fun call!639109 () (Set Context!12936))

(assert (=> bm!639100 (= call!639107 call!639109)))

(declare-fun b!7037056 () Bool)

(assert (=> b!7037056 (= e!4230371 (as set.empty (Set Context!12936)))))

(declare-fun b!7037057 () Bool)

(declare-fun e!4230372 () (Set Context!12936))

(declare-fun call!639105 () (Set Context!12936))

(declare-fun call!639106 () (Set Context!12936))

(assert (=> b!7037057 (= e!4230372 (set.union call!639105 call!639106))))

(declare-fun bm!639101 () Bool)

(assert (=> bm!639101 (= call!639109 call!639106)))

(declare-fun b!7037058 () Bool)

(declare-fun e!4230370 () (Set Context!12936))

(assert (=> b!7037058 (= e!4230370 e!4230373)))

(assert (=> b!7037058 (= c!1309455 (is-Concat!26317 (h!74268 (exprs!6968 lt!2520844))))))

(declare-fun d!2196630 () Bool)

(declare-fun c!1309454 () Bool)

(assert (=> d!2196630 (= c!1309454 (and (is-ElementMatch!17472 (h!74268 (exprs!6968 lt!2520844))) (= (c!1309148 (h!74268 (exprs!6968 lt!2520844))) (h!74269 s!7408))))))

(declare-fun e!4230369 () (Set Context!12936))

(assert (=> d!2196630 (= (derivationStepZipperDown!2136 (h!74268 (exprs!6968 lt!2520844)) (Context!12937 (t!381713 (exprs!6968 lt!2520844))) (h!74269 s!7408)) e!4230369)))

(declare-fun b!7037059 () Bool)

(assert (=> b!7037059 (= e!4230371 call!639107)))

(declare-fun bm!639102 () Bool)

(declare-fun call!639108 () List!67944)

(assert (=> bm!639102 (= call!639108 call!639104)))

(declare-fun b!7037060 () Bool)

(assert (=> b!7037060 (= e!4230370 (set.union call!639105 call!639109))))

(declare-fun bm!639103 () Bool)

(declare-fun c!1309452 () Bool)

(assert (=> bm!639103 (= call!639105 (derivationStepZipperDown!2136 (ite c!1309452 (regOne!35457 (h!74268 (exprs!6968 lt!2520844))) (regOne!35456 (h!74268 (exprs!6968 lt!2520844)))) (ite c!1309452 (Context!12937 (t!381713 (exprs!6968 lt!2520844))) (Context!12937 call!639104)) (h!74269 s!7408)))))

(declare-fun b!7037061 () Bool)

(assert (=> b!7037061 (= e!4230373 call!639107)))

(declare-fun b!7037062 () Bool)

(assert (=> b!7037062 (= e!4230369 e!4230372)))

(assert (=> b!7037062 (= c!1309452 (is-Union!17472 (h!74268 (exprs!6968 lt!2520844))))))

(declare-fun b!7037063 () Bool)

(declare-fun e!4230374 () Bool)

(assert (=> b!7037063 (= c!1309451 e!4230374)))

(declare-fun res!2872602 () Bool)

(assert (=> b!7037063 (=> (not res!2872602) (not e!4230374))))

(assert (=> b!7037063 (= res!2872602 (is-Concat!26317 (h!74268 (exprs!6968 lt!2520844))))))

(assert (=> b!7037063 (= e!4230372 e!4230370)))

(declare-fun b!7037064 () Bool)

(assert (=> b!7037064 (= e!4230369 (set.insert (Context!12937 (t!381713 (exprs!6968 lt!2520844))) (as set.empty (Set Context!12936))))))

(declare-fun bm!639104 () Bool)

(assert (=> bm!639104 (= call!639106 (derivationStepZipperDown!2136 (ite c!1309452 (regTwo!35457 (h!74268 (exprs!6968 lt!2520844))) (ite c!1309451 (regTwo!35456 (h!74268 (exprs!6968 lt!2520844))) (ite c!1309455 (regOne!35456 (h!74268 (exprs!6968 lt!2520844))) (reg!17801 (h!74268 (exprs!6968 lt!2520844)))))) (ite (or c!1309452 c!1309451) (Context!12937 (t!381713 (exprs!6968 lt!2520844))) (Context!12937 call!639108)) (h!74269 s!7408)))))

(declare-fun b!7037065 () Bool)

(assert (=> b!7037065 (= e!4230374 (nullable!7183 (regOne!35456 (h!74268 (exprs!6968 lt!2520844)))))))

(assert (= (and d!2196630 c!1309454) b!7037064))

(assert (= (and d!2196630 (not c!1309454)) b!7037062))

(assert (= (and b!7037062 c!1309452) b!7037057))

(assert (= (and b!7037062 (not c!1309452)) b!7037063))

(assert (= (and b!7037063 res!2872602) b!7037065))

(assert (= (and b!7037063 c!1309451) b!7037060))

(assert (= (and b!7037063 (not c!1309451)) b!7037058))

(assert (= (and b!7037058 c!1309455) b!7037061))

(assert (= (and b!7037058 (not c!1309455)) b!7037055))

(assert (= (and b!7037055 c!1309453) b!7037059))

(assert (= (and b!7037055 (not c!1309453)) b!7037056))

(assert (= (or b!7037061 b!7037059) bm!639102))

(assert (= (or b!7037061 b!7037059) bm!639100))

(assert (= (or b!7037060 bm!639100) bm!639101))

(assert (= (or b!7037060 bm!639102) bm!639099))

(assert (= (or b!7037057 b!7037060) bm!639103))

(assert (= (or b!7037057 bm!639101) bm!639104))

(declare-fun m!7746468 () Bool)

(assert (=> bm!639099 m!7746468))

(declare-fun m!7746470 () Bool)

(assert (=> bm!639103 m!7746470))

(declare-fun m!7746472 () Bool)

(assert (=> b!7037064 m!7746472))

(declare-fun m!7746474 () Bool)

(assert (=> bm!639104 m!7746474))

(declare-fun m!7746476 () Bool)

(assert (=> b!7037065 m!7746476))

(assert (=> bm!638985 d!2196630))

(declare-fun bm!639109 () Bool)

(declare-fun call!639115 () Bool)

(declare-fun c!1309458 () Bool)

(assert (=> bm!639109 (= call!639115 (nullable!7183 (ite c!1309458 (regTwo!35457 (h!74268 (exprs!6968 lt!2520817))) (regOne!35456 (h!74268 (exprs!6968 lt!2520817))))))))

(declare-fun b!7037080 () Bool)

(declare-fun e!4230387 () Bool)

(assert (=> b!7037080 (= e!4230387 call!639115)))

(declare-fun b!7037081 () Bool)

(declare-fun e!4230388 () Bool)

(declare-fun e!4230391 () Bool)

(assert (=> b!7037081 (= e!4230388 e!4230391)))

(declare-fun res!2872617 () Bool)

(assert (=> b!7037081 (=> res!2872617 e!4230391)))

(assert (=> b!7037081 (= res!2872617 (is-Star!17472 (h!74268 (exprs!6968 lt!2520817))))))

(declare-fun b!7037082 () Bool)

(declare-fun e!4230392 () Bool)

(declare-fun call!639114 () Bool)

(assert (=> b!7037082 (= e!4230392 call!639114)))

(declare-fun b!7037083 () Bool)

(declare-fun e!4230389 () Bool)

(assert (=> b!7037083 (= e!4230389 e!4230388)))

(declare-fun res!2872615 () Bool)

(assert (=> b!7037083 (=> (not res!2872615) (not e!4230388))))

(assert (=> b!7037083 (= res!2872615 (and (not (is-EmptyLang!17472 (h!74268 (exprs!6968 lt!2520817)))) (not (is-ElementMatch!17472 (h!74268 (exprs!6968 lt!2520817))))))))

(declare-fun d!2196632 () Bool)

(declare-fun res!2872614 () Bool)

(assert (=> d!2196632 (=> res!2872614 e!4230389)))

(assert (=> d!2196632 (= res!2872614 (is-EmptyExpr!17472 (h!74268 (exprs!6968 lt!2520817))))))

(assert (=> d!2196632 (= (nullableFct!2733 (h!74268 (exprs!6968 lt!2520817))) e!4230389)))

(declare-fun b!7037084 () Bool)

(declare-fun e!4230390 () Bool)

(assert (=> b!7037084 (= e!4230391 e!4230390)))

(assert (=> b!7037084 (= c!1309458 (is-Union!17472 (h!74268 (exprs!6968 lt!2520817))))))

(declare-fun b!7037085 () Bool)

(assert (=> b!7037085 (= e!4230390 e!4230392)))

(declare-fun res!2872613 () Bool)

(assert (=> b!7037085 (= res!2872613 call!639115)))

(assert (=> b!7037085 (=> (not res!2872613) (not e!4230392))))

(declare-fun bm!639110 () Bool)

(assert (=> bm!639110 (= call!639114 (nullable!7183 (ite c!1309458 (regOne!35457 (h!74268 (exprs!6968 lt!2520817))) (regTwo!35456 (h!74268 (exprs!6968 lt!2520817))))))))

(declare-fun b!7037086 () Bool)

(assert (=> b!7037086 (= e!4230390 e!4230387)))

(declare-fun res!2872616 () Bool)

(assert (=> b!7037086 (= res!2872616 call!639114)))

(assert (=> b!7037086 (=> res!2872616 e!4230387)))

(assert (= (and d!2196632 (not res!2872614)) b!7037083))

(assert (= (and b!7037083 res!2872615) b!7037081))

(assert (= (and b!7037081 (not res!2872617)) b!7037084))

(assert (= (and b!7037084 c!1309458) b!7037086))

(assert (= (and b!7037084 (not c!1309458)) b!7037085))

(assert (= (and b!7037086 (not res!2872616)) b!7037080))

(assert (= (and b!7037085 res!2872613) b!7037082))

(assert (= (or b!7037080 b!7037085) bm!639109))

(assert (= (or b!7037086 b!7037082) bm!639110))

(declare-fun m!7746478 () Bool)

(assert (=> bm!639109 m!7746478))

(declare-fun m!7746480 () Bool)

(assert (=> bm!639110 m!7746480))

(assert (=> d!2196140 d!2196632))

(assert (=> d!2196146 d!2196378))

(declare-fun d!2196634 () Bool)

(declare-fun c!1309459 () Bool)

(assert (=> d!2196634 (= c!1309459 (isEmpty!39563 Nil!67821))))

(declare-fun e!4230393 () Bool)

(assert (=> d!2196634 (= (matchZipper!3012 lt!2520803 Nil!67821) e!4230393)))

(declare-fun b!7037087 () Bool)

(assert (=> b!7037087 (= e!4230393 (nullableZipper!2585 lt!2520803))))

(declare-fun b!7037088 () Bool)

(assert (=> b!7037088 (= e!4230393 (matchZipper!3012 (derivationStepZipper!2928 lt!2520803 (head!14272 Nil!67821)) (tail!13565 Nil!67821)))))

(assert (= (and d!2196634 c!1309459) b!7037087))

(assert (= (and d!2196634 (not c!1309459)) b!7037088))

(declare-fun m!7746482 () Bool)

(assert (=> d!2196634 m!7746482))

(assert (=> b!7037087 m!7745434))

(declare-fun m!7746484 () Bool)

(assert (=> b!7037088 m!7746484))

(assert (=> b!7037088 m!7746484))

(declare-fun m!7746486 () Bool)

(assert (=> b!7037088 m!7746486))

(declare-fun m!7746488 () Bool)

(assert (=> b!7037088 m!7746488))

(assert (=> b!7037088 m!7746486))

(assert (=> b!7037088 m!7746488))

(declare-fun m!7746490 () Bool)

(assert (=> b!7037088 m!7746490))

(assert (=> d!2196146 d!2196634))

(declare-fun b!7037091 () Bool)

(declare-fun res!2872619 () Bool)

(declare-fun e!4230395 () Bool)

(assert (=> b!7037091 (=> (not res!2872619) (not e!4230395))))

(declare-fun lt!2521218 () List!67945)

(assert (=> b!7037091 (= res!2872619 (= (size!41075 lt!2521218) (+ (size!41075 Nil!67821) (size!41075 s!7408))))))

(declare-fun b!7037092 () Bool)

(assert (=> b!7037092 (= e!4230395 (or (not (= s!7408 Nil!67821)) (= lt!2521218 Nil!67821)))))

(declare-fun d!2196636 () Bool)

(assert (=> d!2196636 e!4230395))

(declare-fun res!2872618 () Bool)

(assert (=> d!2196636 (=> (not res!2872618) (not e!4230395))))

(assert (=> d!2196636 (= res!2872618 (= (content!13552 lt!2521218) (set.union (content!13552 Nil!67821) (content!13552 s!7408))))))

(declare-fun e!4230394 () List!67945)

(assert (=> d!2196636 (= lt!2521218 e!4230394)))

(declare-fun c!1309460 () Bool)

(assert (=> d!2196636 (= c!1309460 (is-Nil!67821 Nil!67821))))

(assert (=> d!2196636 (= (++!15525 Nil!67821 s!7408) lt!2521218)))

(declare-fun b!7037089 () Bool)

(assert (=> b!7037089 (= e!4230394 s!7408)))

(declare-fun b!7037090 () Bool)

(assert (=> b!7037090 (= e!4230394 (Cons!67821 (h!74269 Nil!67821) (++!15525 (t!381714 Nil!67821) s!7408)))))

(assert (= (and d!2196636 c!1309460) b!7037089))

(assert (= (and d!2196636 (not c!1309460)) b!7037090))

(assert (= (and d!2196636 res!2872618) b!7037091))

(assert (= (and b!7037091 res!2872619) b!7037092))

(declare-fun m!7746492 () Bool)

(assert (=> b!7037091 m!7746492))

(assert (=> b!7037091 m!7746088))

(declare-fun m!7746494 () Bool)

(assert (=> b!7037091 m!7746494))

(declare-fun m!7746496 () Bool)

(assert (=> d!2196636 m!7746496))

(assert (=> d!2196636 m!7746094))

(declare-fun m!7746498 () Bool)

(assert (=> d!2196636 m!7746498))

(declare-fun m!7746500 () Bool)

(assert (=> b!7037090 m!7746500))

(assert (=> d!2196146 d!2196636))

(declare-fun d!2196638 () Bool)

(declare-fun c!1309461 () Bool)

(assert (=> d!2196638 (= c!1309461 (isEmpty!39563 (tail!13565 s!7408)))))

(declare-fun e!4230396 () Bool)

(assert (=> d!2196638 (= (matchZipper!3012 (derivationStepZipper!2928 lt!2520833 (head!14272 s!7408)) (tail!13565 s!7408)) e!4230396)))

(declare-fun b!7037093 () Bool)

(assert (=> b!7037093 (= e!4230396 (nullableZipper!2585 (derivationStepZipper!2928 lt!2520833 (head!14272 s!7408))))))

(declare-fun b!7037094 () Bool)

(assert (=> b!7037094 (= e!4230396 (matchZipper!3012 (derivationStepZipper!2928 (derivationStepZipper!2928 lt!2520833 (head!14272 s!7408)) (head!14272 (tail!13565 s!7408))) (tail!13565 (tail!13565 s!7408))))))

(assert (= (and d!2196638 c!1309461) b!7037093))

(assert (= (and d!2196638 (not c!1309461)) b!7037094))

(assert (=> d!2196638 m!7745158))

(assert (=> d!2196638 m!7745998))

(assert (=> b!7037093 m!7745244))

(declare-fun m!7746502 () Bool)

(assert (=> b!7037093 m!7746502))

(assert (=> b!7037094 m!7745158))

(assert (=> b!7037094 m!7746002))

(assert (=> b!7037094 m!7745244))

(assert (=> b!7037094 m!7746002))

(declare-fun m!7746504 () Bool)

(assert (=> b!7037094 m!7746504))

(assert (=> b!7037094 m!7745158))

(assert (=> b!7037094 m!7746006))

(assert (=> b!7037094 m!7746504))

(assert (=> b!7037094 m!7746006))

(declare-fun m!7746506 () Bool)

(assert (=> b!7037094 m!7746506))

(assert (=> b!7036313 d!2196638))

(declare-fun bs!1872390 () Bool)

(declare-fun d!2196640 () Bool)

(assert (= bs!1872390 (and d!2196640 d!2196422)))

(declare-fun lambda!415655 () Int)

(assert (=> bs!1872390 (= (= (head!14272 s!7408) (head!14272 lt!2520827)) (= lambda!415655 lambda!415635))))

(declare-fun bs!1872391 () Bool)

(assert (= bs!1872391 (and d!2196640 d!2196488)))

(assert (=> bs!1872391 (= (= (head!14272 s!7408) (head!14272 (_1!37348 lt!2520831))) (= lambda!415655 lambda!415639))))

(declare-fun bs!1872392 () Bool)

(assert (= bs!1872392 (and d!2196640 d!2196174)))

(assert (=> bs!1872392 (= (= (head!14272 s!7408) (h!74269 s!7408)) (= lambda!415655 lambda!415604))))

(declare-fun bs!1872393 () Bool)

(assert (= bs!1872393 (and d!2196640 d!2196402)))

(assert (=> bs!1872393 (= lambda!415655 lambda!415632)))

(declare-fun bs!1872394 () Bool)

(assert (= bs!1872394 (and d!2196640 d!2196438)))

(assert (=> bs!1872394 (= (= (head!14272 s!7408) (head!14272 (t!381714 s!7408))) (= lambda!415655 lambda!415636))))

(declare-fun bs!1872395 () Bool)

(assert (= bs!1872395 (and d!2196640 d!2196536)))

(assert (=> bs!1872395 (= (= (head!14272 s!7408) (head!14272 lt!2520827)) (= lambda!415655 lambda!415644))))

(declare-fun bs!1872396 () Bool)

(assert (= bs!1872396 (and d!2196640 d!2196074)))

(assert (=> bs!1872396 (= (= (head!14272 s!7408) (h!74269 s!7408)) (= lambda!415655 lambda!415588))))

(declare-fun bs!1872397 () Bool)

(assert (= bs!1872397 (and d!2196640 b!7036143)))

(assert (=> bs!1872397 (= (= (head!14272 s!7408) (h!74269 s!7408)) (= lambda!415655 lambda!415522))))

(declare-fun bs!1872398 () Bool)

(assert (= bs!1872398 (and d!2196640 d!2196384)))

(assert (=> bs!1872398 (= (= (head!14272 s!7408) (head!14272 (t!381714 s!7408))) (= lambda!415655 lambda!415630))))

(declare-fun bs!1872399 () Bool)

(assert (= bs!1872399 (and d!2196640 d!2196564)))

(assert (=> bs!1872399 (= (= (head!14272 s!7408) (head!14272 (t!381714 s!7408))) (= lambda!415655 lambda!415646))))

(declare-fun bs!1872400 () Bool)

(assert (= bs!1872400 (and d!2196640 d!2196070)))

(assert (=> bs!1872400 (= (= (head!14272 s!7408) (h!74269 s!7408)) (= lambda!415655 lambda!415587))))

(declare-fun bs!1872401 () Bool)

(assert (= bs!1872401 (and d!2196640 d!2196470)))

(assert (=> bs!1872401 (= (= (head!14272 s!7408) (head!14272 lt!2520827)) (= lambda!415655 lambda!415637))))

(declare-fun bs!1872402 () Bool)

(assert (= bs!1872402 (and d!2196640 d!2196548)))

(assert (=> bs!1872402 (= lambda!415655 lambda!415645)))

(declare-fun bs!1872403 () Bool)

(assert (= bs!1872403 (and d!2196640 d!2196494)))

(assert (=> bs!1872403 (= (= (head!14272 s!7408) (head!14272 (t!381714 s!7408))) (= lambda!415655 lambda!415640))))

(assert (=> d!2196640 true))

(assert (=> d!2196640 (= (derivationStepZipper!2928 lt!2520833 (head!14272 s!7408)) (flatMap!2419 lt!2520833 lambda!415655))))

(declare-fun bs!1872404 () Bool)

(assert (= bs!1872404 d!2196640))

(declare-fun m!7746508 () Bool)

(assert (=> bs!1872404 m!7746508))

(assert (=> b!7036313 d!2196640))

(assert (=> b!7036313 d!2196404))

(assert (=> b!7036313 d!2196406))

(declare-fun d!2196642 () Bool)

(declare-fun c!1309462 () Bool)

(assert (=> d!2196642 (= c!1309462 (isEmpty!39563 (tail!13565 (_1!37348 lt!2520831))))))

(declare-fun e!4230397 () Bool)

(assert (=> d!2196642 (= (matchZipper!3012 (derivationStepZipper!2928 lt!2520822 (head!14272 (_1!37348 lt!2520831))) (tail!13565 (_1!37348 lt!2520831))) e!4230397)))

(declare-fun b!7037095 () Bool)

(assert (=> b!7037095 (= e!4230397 (nullableZipper!2585 (derivationStepZipper!2928 lt!2520822 (head!14272 (_1!37348 lt!2520831)))))))

(declare-fun b!7037096 () Bool)

(assert (=> b!7037096 (= e!4230397 (matchZipper!3012 (derivationStepZipper!2928 (derivationStepZipper!2928 lt!2520822 (head!14272 (_1!37348 lt!2520831))) (head!14272 (tail!13565 (_1!37348 lt!2520831)))) (tail!13565 (tail!13565 (_1!37348 lt!2520831)))))))

(assert (= (and d!2196642 c!1309462) b!7037095))

(assert (= (and d!2196642 (not c!1309462)) b!7037096))

(assert (=> d!2196642 m!7744988))

(assert (=> d!2196642 m!7746192))

(assert (=> b!7037095 m!7745344))

(declare-fun m!7746510 () Bool)

(assert (=> b!7037095 m!7746510))

(assert (=> b!7037096 m!7744988))

(assert (=> b!7037096 m!7746196))

(assert (=> b!7037096 m!7745344))

(assert (=> b!7037096 m!7746196))

(declare-fun m!7746512 () Bool)

(assert (=> b!7037096 m!7746512))

(assert (=> b!7037096 m!7744988))

(assert (=> b!7037096 m!7746200))

(assert (=> b!7037096 m!7746512))

(assert (=> b!7037096 m!7746200))

(declare-fun m!7746514 () Bool)

(assert (=> b!7037096 m!7746514))

(assert (=> b!7036351 d!2196642))

(declare-fun bs!1872405 () Bool)

(declare-fun d!2196644 () Bool)

(assert (= bs!1872405 (and d!2196644 d!2196488)))

(declare-fun lambda!415656 () Int)

(assert (=> bs!1872405 (= lambda!415656 lambda!415639)))

(declare-fun bs!1872406 () Bool)

(assert (= bs!1872406 (and d!2196644 d!2196174)))

(assert (=> bs!1872406 (= (= (head!14272 (_1!37348 lt!2520831)) (h!74269 s!7408)) (= lambda!415656 lambda!415604))))

(declare-fun bs!1872407 () Bool)

(assert (= bs!1872407 (and d!2196644 d!2196402)))

(assert (=> bs!1872407 (= (= (head!14272 (_1!37348 lt!2520831)) (head!14272 s!7408)) (= lambda!415656 lambda!415632))))

(declare-fun bs!1872408 () Bool)

(assert (= bs!1872408 (and d!2196644 d!2196438)))

(assert (=> bs!1872408 (= (= (head!14272 (_1!37348 lt!2520831)) (head!14272 (t!381714 s!7408))) (= lambda!415656 lambda!415636))))

(declare-fun bs!1872409 () Bool)

(assert (= bs!1872409 (and d!2196644 d!2196536)))

(assert (=> bs!1872409 (= (= (head!14272 (_1!37348 lt!2520831)) (head!14272 lt!2520827)) (= lambda!415656 lambda!415644))))

(declare-fun bs!1872410 () Bool)

(assert (= bs!1872410 (and d!2196644 d!2196074)))

(assert (=> bs!1872410 (= (= (head!14272 (_1!37348 lt!2520831)) (h!74269 s!7408)) (= lambda!415656 lambda!415588))))

(declare-fun bs!1872411 () Bool)

(assert (= bs!1872411 (and d!2196644 b!7036143)))

(assert (=> bs!1872411 (= (= (head!14272 (_1!37348 lt!2520831)) (h!74269 s!7408)) (= lambda!415656 lambda!415522))))

(declare-fun bs!1872412 () Bool)

(assert (= bs!1872412 (and d!2196644 d!2196384)))

(assert (=> bs!1872412 (= (= (head!14272 (_1!37348 lt!2520831)) (head!14272 (t!381714 s!7408))) (= lambda!415656 lambda!415630))))

(declare-fun bs!1872413 () Bool)

(assert (= bs!1872413 (and d!2196644 d!2196564)))

(assert (=> bs!1872413 (= (= (head!14272 (_1!37348 lt!2520831)) (head!14272 (t!381714 s!7408))) (= lambda!415656 lambda!415646))))

(declare-fun bs!1872414 () Bool)

(assert (= bs!1872414 (and d!2196644 d!2196070)))

(assert (=> bs!1872414 (= (= (head!14272 (_1!37348 lt!2520831)) (h!74269 s!7408)) (= lambda!415656 lambda!415587))))

(declare-fun bs!1872415 () Bool)

(assert (= bs!1872415 (and d!2196644 d!2196470)))

(assert (=> bs!1872415 (= (= (head!14272 (_1!37348 lt!2520831)) (head!14272 lt!2520827)) (= lambda!415656 lambda!415637))))

(declare-fun bs!1872416 () Bool)

(assert (= bs!1872416 (and d!2196644 d!2196548)))

(assert (=> bs!1872416 (= (= (head!14272 (_1!37348 lt!2520831)) (head!14272 s!7408)) (= lambda!415656 lambda!415645))))

(declare-fun bs!1872417 () Bool)

(assert (= bs!1872417 (and d!2196644 d!2196494)))

(assert (=> bs!1872417 (= (= (head!14272 (_1!37348 lt!2520831)) (head!14272 (t!381714 s!7408))) (= lambda!415656 lambda!415640))))

(declare-fun bs!1872418 () Bool)

(assert (= bs!1872418 (and d!2196644 d!2196640)))

(assert (=> bs!1872418 (= (= (head!14272 (_1!37348 lt!2520831)) (head!14272 s!7408)) (= lambda!415656 lambda!415655))))

(declare-fun bs!1872419 () Bool)

(assert (= bs!1872419 (and d!2196644 d!2196422)))

(assert (=> bs!1872419 (= (= (head!14272 (_1!37348 lt!2520831)) (head!14272 lt!2520827)) (= lambda!415656 lambda!415635))))

(assert (=> d!2196644 true))

(assert (=> d!2196644 (= (derivationStepZipper!2928 lt!2520822 (head!14272 (_1!37348 lt!2520831))) (flatMap!2419 lt!2520822 lambda!415656))))

(declare-fun bs!1872420 () Bool)

(assert (= bs!1872420 d!2196644))

(declare-fun m!7746516 () Bool)

(assert (=> bs!1872420 m!7746516))

(assert (=> b!7036351 d!2196644))

(assert (=> b!7036351 d!2196490))

(assert (=> b!7036351 d!2196120))

(declare-fun bs!1872421 () Bool)

(declare-fun d!2196646 () Bool)

(assert (= bs!1872421 (and d!2196646 d!2196614)))

(declare-fun lambda!415657 () Int)

(assert (=> bs!1872421 (not (= lambda!415657 lambda!415653))))

(declare-fun bs!1872422 () Bool)

(assert (= bs!1872422 (and d!2196646 d!2196528)))

(assert (=> bs!1872422 (= lambda!415657 lambda!415643)))

(declare-fun bs!1872423 () Bool)

(assert (= bs!1872423 (and d!2196646 d!2196570)))

(assert (=> bs!1872423 (= lambda!415657 lambda!415648)))

(declare-fun bs!1872424 () Bool)

(assert (= bs!1872424 (and d!2196646 d!2196418)))

(assert (=> bs!1872424 (= lambda!415657 lambda!415634)))

(declare-fun bs!1872425 () Bool)

(assert (= bs!1872425 (and d!2196646 d!2196482)))

(assert (=> bs!1872425 (= lambda!415657 lambda!415638)))

(declare-fun bs!1872426 () Bool)

(assert (= bs!1872426 (and d!2196646 d!2196084)))

(assert (=> bs!1872426 (not (= lambda!415657 lambda!415591))))

(declare-fun bs!1872427 () Bool)

(assert (= bs!1872427 (and d!2196646 d!2196340)))

(assert (=> bs!1872427 (= lambda!415657 lambda!415628)))

(declare-fun bs!1872428 () Bool)

(assert (= bs!1872428 (and d!2196646 b!7036157)))

(assert (=> bs!1872428 (not (= lambda!415657 lambda!415519))))

(declare-fun bs!1872429 () Bool)

(assert (= bs!1872429 (and d!2196646 d!2196568)))

(assert (=> bs!1872429 (= lambda!415657 lambda!415647)))

(declare-fun bs!1872430 () Bool)

(assert (= bs!1872430 (and d!2196646 d!2196612)))

(assert (=> bs!1872430 (not (= lambda!415657 lambda!415650))))

(declare-fun bs!1872431 () Bool)

(assert (= bs!1872431 (and d!2196646 d!2196620)))

(assert (=> bs!1872431 (= lambda!415657 lambda!415654)))

(declare-fun bs!1872432 () Bool)

(assert (= bs!1872432 (and d!2196646 d!2196576)))

(assert (=> bs!1872432 (= lambda!415657 lambda!415649)))

(declare-fun bs!1872433 () Bool)

(assert (= bs!1872433 (and d!2196646 d!2196366)))

(assert (=> bs!1872433 (= lambda!415657 lambda!415629)))

(declare-fun bs!1872434 () Bool)

(assert (= bs!1872434 (and d!2196646 d!2196520)))

(assert (=> bs!1872434 (= lambda!415657 lambda!415642)))

(declare-fun bs!1872435 () Bool)

(assert (= bs!1872435 (and d!2196646 d!2196412)))

(assert (=> bs!1872435 (= lambda!415657 lambda!415633)))

(declare-fun bs!1872436 () Bool)

(assert (= bs!1872436 (and d!2196646 d!2196088)))

(assert (=> bs!1872436 (not (= lambda!415657 lambda!415594))))

(declare-fun bs!1872437 () Bool)

(assert (= bs!1872437 (and d!2196646 d!2196398)))

(assert (=> bs!1872437 (= lambda!415657 lambda!415631)))

(assert (=> d!2196646 (= (nullableZipper!2585 lt!2520812) (exists!3407 lt!2520812 lambda!415657))))

(declare-fun bs!1872438 () Bool)

(assert (= bs!1872438 d!2196646))

(declare-fun m!7746518 () Bool)

(assert (=> bs!1872438 m!7746518))

(assert (=> b!7036274 d!2196646))

(declare-fun d!2196648 () Bool)

(assert (=> d!2196648 (= (nullable!7183 (h!74268 (exprs!6968 lt!2520807))) (nullableFct!2733 (h!74268 (exprs!6968 lt!2520807))))))

(declare-fun bs!1872439 () Bool)

(assert (= bs!1872439 d!2196648))

(declare-fun m!7746520 () Bool)

(assert (=> bs!1872439 m!7746520))

(assert (=> b!7036453 d!2196648))

(declare-fun d!2196650 () Bool)

(declare-fun c!1309463 () Bool)

(assert (=> d!2196650 (= c!1309463 (isEmpty!39563 (tail!13565 (_2!37348 lt!2520831))))))

(declare-fun e!4230398 () Bool)

(assert (=> d!2196650 (= (matchZipper!3012 (derivationStepZipper!2928 lt!2520799 (head!14272 (_2!37348 lt!2520831))) (tail!13565 (_2!37348 lt!2520831))) e!4230398)))

(declare-fun b!7037097 () Bool)

(assert (=> b!7037097 (= e!4230398 (nullableZipper!2585 (derivationStepZipper!2928 lt!2520799 (head!14272 (_2!37348 lt!2520831)))))))

(declare-fun b!7037098 () Bool)

(assert (=> b!7037098 (= e!4230398 (matchZipper!3012 (derivationStepZipper!2928 (derivationStepZipper!2928 lt!2520799 (head!14272 (_2!37348 lt!2520831))) (head!14272 (tail!13565 (_2!37348 lt!2520831)))) (tail!13565 (tail!13565 (_2!37348 lt!2520831)))))))

(assert (= (and d!2196650 c!1309463) b!7037097))

(assert (= (and d!2196650 (not c!1309463)) b!7037098))

(assert (=> d!2196650 m!7745448))

(declare-fun m!7746522 () Bool)

(assert (=> d!2196650 m!7746522))

(assert (=> b!7037097 m!7745446))

(declare-fun m!7746524 () Bool)

(assert (=> b!7037097 m!7746524))

(assert (=> b!7037098 m!7745448))

(declare-fun m!7746526 () Bool)

(assert (=> b!7037098 m!7746526))

(assert (=> b!7037098 m!7745446))

(assert (=> b!7037098 m!7746526))

(declare-fun m!7746528 () Bool)

(assert (=> b!7037098 m!7746528))

(assert (=> b!7037098 m!7745448))

(declare-fun m!7746530 () Bool)

(assert (=> b!7037098 m!7746530))

(assert (=> b!7037098 m!7746528))

(assert (=> b!7037098 m!7746530))

(declare-fun m!7746532 () Bool)

(assert (=> b!7037098 m!7746532))

(assert (=> b!7036406 d!2196650))

(declare-fun bs!1872440 () Bool)

(declare-fun d!2196652 () Bool)

(assert (= bs!1872440 (and d!2196652 d!2196488)))

(declare-fun lambda!415658 () Int)

(assert (=> bs!1872440 (= (= (head!14272 (_2!37348 lt!2520831)) (head!14272 (_1!37348 lt!2520831))) (= lambda!415658 lambda!415639))))

(declare-fun bs!1872441 () Bool)

(assert (= bs!1872441 (and d!2196652 d!2196174)))

(assert (=> bs!1872441 (= (= (head!14272 (_2!37348 lt!2520831)) (h!74269 s!7408)) (= lambda!415658 lambda!415604))))

(declare-fun bs!1872442 () Bool)

(assert (= bs!1872442 (and d!2196652 d!2196402)))

(assert (=> bs!1872442 (= (= (head!14272 (_2!37348 lt!2520831)) (head!14272 s!7408)) (= lambda!415658 lambda!415632))))

(declare-fun bs!1872443 () Bool)

(assert (= bs!1872443 (and d!2196652 d!2196438)))

(assert (=> bs!1872443 (= (= (head!14272 (_2!37348 lt!2520831)) (head!14272 (t!381714 s!7408))) (= lambda!415658 lambda!415636))))

(declare-fun bs!1872444 () Bool)

(assert (= bs!1872444 (and d!2196652 d!2196536)))

(assert (=> bs!1872444 (= (= (head!14272 (_2!37348 lt!2520831)) (head!14272 lt!2520827)) (= lambda!415658 lambda!415644))))

(declare-fun bs!1872445 () Bool)

(assert (= bs!1872445 (and d!2196652 d!2196074)))

(assert (=> bs!1872445 (= (= (head!14272 (_2!37348 lt!2520831)) (h!74269 s!7408)) (= lambda!415658 lambda!415588))))

(declare-fun bs!1872446 () Bool)

(assert (= bs!1872446 (and d!2196652 b!7036143)))

(assert (=> bs!1872446 (= (= (head!14272 (_2!37348 lt!2520831)) (h!74269 s!7408)) (= lambda!415658 lambda!415522))))

(declare-fun bs!1872447 () Bool)

(assert (= bs!1872447 (and d!2196652 d!2196384)))

(assert (=> bs!1872447 (= (= (head!14272 (_2!37348 lt!2520831)) (head!14272 (t!381714 s!7408))) (= lambda!415658 lambda!415630))))

(declare-fun bs!1872448 () Bool)

(assert (= bs!1872448 (and d!2196652 d!2196564)))

(assert (=> bs!1872448 (= (= (head!14272 (_2!37348 lt!2520831)) (head!14272 (t!381714 s!7408))) (= lambda!415658 lambda!415646))))

(declare-fun bs!1872449 () Bool)

(assert (= bs!1872449 (and d!2196652 d!2196070)))

(assert (=> bs!1872449 (= (= (head!14272 (_2!37348 lt!2520831)) (h!74269 s!7408)) (= lambda!415658 lambda!415587))))

(declare-fun bs!1872450 () Bool)

(assert (= bs!1872450 (and d!2196652 d!2196644)))

(assert (=> bs!1872450 (= (= (head!14272 (_2!37348 lt!2520831)) (head!14272 (_1!37348 lt!2520831))) (= lambda!415658 lambda!415656))))

(declare-fun bs!1872451 () Bool)

(assert (= bs!1872451 (and d!2196652 d!2196470)))

(assert (=> bs!1872451 (= (= (head!14272 (_2!37348 lt!2520831)) (head!14272 lt!2520827)) (= lambda!415658 lambda!415637))))

(declare-fun bs!1872452 () Bool)

(assert (= bs!1872452 (and d!2196652 d!2196548)))

(assert (=> bs!1872452 (= (= (head!14272 (_2!37348 lt!2520831)) (head!14272 s!7408)) (= lambda!415658 lambda!415645))))

(declare-fun bs!1872453 () Bool)

(assert (= bs!1872453 (and d!2196652 d!2196494)))

(assert (=> bs!1872453 (= (= (head!14272 (_2!37348 lt!2520831)) (head!14272 (t!381714 s!7408))) (= lambda!415658 lambda!415640))))

(declare-fun bs!1872454 () Bool)

(assert (= bs!1872454 (and d!2196652 d!2196640)))

(assert (=> bs!1872454 (= (= (head!14272 (_2!37348 lt!2520831)) (head!14272 s!7408)) (= lambda!415658 lambda!415655))))

(declare-fun bs!1872455 () Bool)

(assert (= bs!1872455 (and d!2196652 d!2196422)))

(assert (=> bs!1872455 (= (= (head!14272 (_2!37348 lt!2520831)) (head!14272 lt!2520827)) (= lambda!415658 lambda!415635))))

(assert (=> d!2196652 true))

(assert (=> d!2196652 (= (derivationStepZipper!2928 lt!2520799 (head!14272 (_2!37348 lt!2520831))) (flatMap!2419 lt!2520799 lambda!415658))))

(declare-fun bs!1872456 () Bool)

(assert (= bs!1872456 d!2196652))

(declare-fun m!7746534 () Bool)

(assert (=> bs!1872456 m!7746534))

(assert (=> b!7036406 d!2196652))

(declare-fun d!2196654 () Bool)

(assert (=> d!2196654 (= (head!14272 (_2!37348 lt!2520831)) (h!74269 (_2!37348 lt!2520831)))))

(assert (=> b!7036406 d!2196654))

(declare-fun d!2196656 () Bool)

(assert (=> d!2196656 (= (tail!13565 (_2!37348 lt!2520831)) (t!381714 (_2!37348 lt!2520831)))))

(assert (=> b!7036406 d!2196656))

(declare-fun b!7037099 () Bool)

(declare-fun e!4230399 () Bool)

(declare-fun tp!1936929 () Bool)

(declare-fun tp!1936930 () Bool)

(assert (=> b!7037099 (= e!4230399 (and tp!1936929 tp!1936930))))

(assert (=> b!7036462 (= tp!1936871 e!4230399)))

(assert (= (and b!7036462 (is-Cons!67820 (exprs!6968 setElem!49241))) b!7037099))

(declare-fun condSetEmpty!49254 () Bool)

(assert (=> setNonEmpty!49241 (= condSetEmpty!49254 (= setRest!49241 (as set.empty (Set Context!12936))))))

(declare-fun setRes!49254 () Bool)

(assert (=> setNonEmpty!49241 (= tp!1936870 setRes!49254)))

(declare-fun setIsEmpty!49254 () Bool)

(assert (=> setIsEmpty!49254 setRes!49254))

(declare-fun setNonEmpty!49254 () Bool)

(declare-fun e!4230400 () Bool)

(declare-fun setElem!49254 () Context!12936)

(declare-fun tp!1936931 () Bool)

(assert (=> setNonEmpty!49254 (= setRes!49254 (and tp!1936931 (inv!86540 setElem!49254) e!4230400))))

(declare-fun setRest!49254 () (Set Context!12936))

(assert (=> setNonEmpty!49254 (= setRest!49241 (set.union (set.insert setElem!49254 (as set.empty (Set Context!12936))) setRest!49254))))

(declare-fun b!7037100 () Bool)

(declare-fun tp!1936932 () Bool)

(assert (=> b!7037100 (= e!4230400 tp!1936932)))

(assert (= (and setNonEmpty!49241 condSetEmpty!49254) setIsEmpty!49254))

(assert (= (and setNonEmpty!49241 (not condSetEmpty!49254)) setNonEmpty!49254))

(assert (= setNonEmpty!49254 b!7037100))

(declare-fun m!7746536 () Bool)

(assert (=> setNonEmpty!49254 m!7746536))

(declare-fun b!7037113 () Bool)

(declare-fun e!4230403 () Bool)

(declare-fun tp!1936946 () Bool)

(assert (=> b!7037113 (= e!4230403 tp!1936946)))

(declare-fun b!7037114 () Bool)

(declare-fun tp!1936944 () Bool)

(declare-fun tp!1936943 () Bool)

(assert (=> b!7037114 (= e!4230403 (and tp!1936944 tp!1936943))))

(assert (=> b!7036467 (= tp!1936876 e!4230403)))

(declare-fun b!7037111 () Bool)

(assert (=> b!7037111 (= e!4230403 tp_is_empty!44169)))

(declare-fun b!7037112 () Bool)

(declare-fun tp!1936947 () Bool)

(declare-fun tp!1936945 () Bool)

(assert (=> b!7037112 (= e!4230403 (and tp!1936947 tp!1936945))))

(assert (= (and b!7036467 (is-ElementMatch!17472 (h!74268 (exprs!6968 ct2!306)))) b!7037111))

(assert (= (and b!7036467 (is-Concat!26317 (h!74268 (exprs!6968 ct2!306)))) b!7037112))

(assert (= (and b!7036467 (is-Star!17472 (h!74268 (exprs!6968 ct2!306)))) b!7037113))

(assert (= (and b!7036467 (is-Union!17472 (h!74268 (exprs!6968 ct2!306)))) b!7037114))

(declare-fun b!7037115 () Bool)

(declare-fun e!4230404 () Bool)

(declare-fun tp!1936948 () Bool)

(declare-fun tp!1936949 () Bool)

(assert (=> b!7037115 (= e!4230404 (and tp!1936948 tp!1936949))))

(assert (=> b!7036467 (= tp!1936877 e!4230404)))

(assert (= (and b!7036467 (is-Cons!67820 (t!381713 (exprs!6968 ct2!306)))) b!7037115))

(declare-fun b!7037118 () Bool)

(declare-fun e!4230405 () Bool)

(declare-fun tp!1936953 () Bool)

(assert (=> b!7037118 (= e!4230405 tp!1936953)))

(declare-fun b!7037119 () Bool)

(declare-fun tp!1936951 () Bool)

(declare-fun tp!1936950 () Bool)

(assert (=> b!7037119 (= e!4230405 (and tp!1936951 tp!1936950))))

(assert (=> b!7036473 (= tp!1936881 e!4230405)))

(declare-fun b!7037116 () Bool)

(assert (=> b!7037116 (= e!4230405 tp_is_empty!44169)))

(declare-fun b!7037117 () Bool)

(declare-fun tp!1936954 () Bool)

(declare-fun tp!1936952 () Bool)

(assert (=> b!7037117 (= e!4230405 (and tp!1936954 tp!1936952))))

(assert (= (and b!7036473 (is-ElementMatch!17472 (h!74268 (exprs!6968 setElem!49235)))) b!7037116))

(assert (= (and b!7036473 (is-Concat!26317 (h!74268 (exprs!6968 setElem!49235)))) b!7037117))

(assert (= (and b!7036473 (is-Star!17472 (h!74268 (exprs!6968 setElem!49235)))) b!7037118))

(assert (= (and b!7036473 (is-Union!17472 (h!74268 (exprs!6968 setElem!49235)))) b!7037119))

(declare-fun b!7037120 () Bool)

(declare-fun e!4230406 () Bool)

(declare-fun tp!1936955 () Bool)

(declare-fun tp!1936956 () Bool)

(assert (=> b!7037120 (= e!4230406 (and tp!1936955 tp!1936956))))

(assert (=> b!7036473 (= tp!1936882 e!4230406)))

(assert (= (and b!7036473 (is-Cons!67820 (t!381713 (exprs!6968 setElem!49235)))) b!7037120))

(declare-fun b!7037121 () Bool)

(declare-fun e!4230407 () Bool)

(declare-fun tp!1936957 () Bool)

(assert (=> b!7037121 (= e!4230407 (and tp_is_empty!44169 tp!1936957))))

(assert (=> b!7036472 (= tp!1936880 e!4230407)))

(assert (= (and b!7036472 (is-Cons!67821 (t!381714 (t!381714 s!7408)))) b!7037121))

(declare-fun b_lambda!266977 () Bool)

(assert (= b_lambda!266959 (or b!7036151 b_lambda!266977)))

(declare-fun bs!1872457 () Bool)

(declare-fun d!2196658 () Bool)

(assert (= bs!1872457 (and d!2196658 b!7036151)))

(declare-fun validRegex!8932 (Regex!17472) Bool)

(assert (=> bs!1872457 (= (dynLambda!27413 lambda!415521 (h!74268 (++!15524 lt!2520840 (exprs!6968 ct2!306)))) (validRegex!8932 (h!74268 (++!15524 lt!2520840 (exprs!6968 ct2!306)))))))

(declare-fun m!7746538 () Bool)

(assert (=> bs!1872457 m!7746538))

(assert (=> b!7036907 d!2196658))

(declare-fun b_lambda!266979 () Bool)

(assert (= b_lambda!266975 (or b!7036151 b_lambda!266979)))

(declare-fun bs!1872458 () Bool)

(declare-fun d!2196660 () Bool)

(assert (= bs!1872458 (and d!2196660 b!7036151)))

(assert (=> bs!1872458 (= (dynLambda!27413 lambda!415521 (h!74268 (exprs!6968 lt!2520817))) (validRegex!8932 (h!74268 (exprs!6968 lt!2520817))))))

(declare-fun m!7746540 () Bool)

(assert (=> bs!1872458 m!7746540))

(assert (=> b!7037024 d!2196660))

(declare-fun b_lambda!266981 () Bool)

(assert (= b_lambda!266949 (or d!2196088 b_lambda!266981)))

(declare-fun bs!1872459 () Bool)

(declare-fun d!2196662 () Bool)

(assert (= bs!1872459 (and d!2196662 d!2196088)))

(assert (=> bs!1872459 (= (dynLambda!27407 lambda!415594 (h!74270 lt!2520811)) (not (dynLambda!27407 lambda!415519 (h!74270 lt!2520811))))))

(declare-fun b_lambda!267007 () Bool)

(assert (=> (not b_lambda!267007) (not bs!1872459)))

(declare-fun m!7746542 () Bool)

(assert (=> bs!1872459 m!7746542))

(assert (=> b!7036728 d!2196662))

(declare-fun b_lambda!266983 () Bool)

(assert (= b_lambda!266955 (or b!7036151 b_lambda!266983)))

(declare-fun bs!1872460 () Bool)

(declare-fun d!2196664 () Bool)

(assert (= bs!1872460 (and d!2196664 b!7036151)))

(declare-fun lt!2521219 () Unit!161622)

(assert (=> bs!1872460 (= lt!2521219 (lemmaConcatPreservesForall!793 (exprs!6968 a!13238) (exprs!6968 ct2!306) lambda!415521))))

(assert (=> bs!1872460 (= (dynLambda!27408 lambda!415520 a!13238) (Context!12937 (++!15524 (exprs!6968 a!13238) (exprs!6968 ct2!306))))))

(declare-fun m!7746544 () Bool)

(assert (=> bs!1872460 m!7746544))

(declare-fun m!7746546 () Bool)

(assert (=> bs!1872460 m!7746546))

(assert (=> d!2196476 d!2196664))

(declare-fun b_lambda!266985 () Bool)

(assert (= b_lambda!266957 (or d!2196160 b_lambda!266985)))

(declare-fun bs!1872461 () Bool)

(declare-fun d!2196666 () Bool)

(assert (= bs!1872461 (and d!2196666 d!2196160)))

(assert (=> bs!1872461 (= (dynLambda!27413 lambda!415603 (h!74268 (exprs!6968 ct2!306))) (validRegex!8932 (h!74268 (exprs!6968 ct2!306))))))

(declare-fun m!7746548 () Bool)

(assert (=> bs!1872461 m!7746548))

(assert (=> b!7036905 d!2196666))

(declare-fun b_lambda!266987 () Bool)

(assert (= b_lambda!266973 (or b!7036151 b_lambda!266987)))

(declare-fun bs!1872462 () Bool)

(declare-fun d!2196668 () Bool)

(assert (= bs!1872462 (and d!2196668 b!7036151)))

(assert (=> bs!1872462 (= (dynLambda!27413 lambda!415521 (h!74268 (++!15524 (exprs!6968 lt!2520817) (exprs!6968 ct2!306)))) (validRegex!8932 (h!74268 (++!15524 (exprs!6968 lt!2520817) (exprs!6968 ct2!306)))))))

(declare-fun m!7746550 () Bool)

(assert (=> bs!1872462 m!7746550))

(assert (=> b!7037022 d!2196668))

(declare-fun b_lambda!266989 () Bool)

(assert (= b_lambda!266951 (or d!2196138 b_lambda!266989)))

(declare-fun bs!1872463 () Bool)

(declare-fun d!2196670 () Bool)

(assert (= bs!1872463 (and d!2196670 d!2196138)))

(assert (=> bs!1872463 (= (dynLambda!27413 lambda!415597 (h!74268 (exprs!6968 setElem!49235))) (validRegex!8932 (h!74268 (exprs!6968 setElem!49235))))))

(declare-fun m!7746552 () Bool)

(assert (=> bs!1872463 m!7746552))

(assert (=> b!7036734 d!2196670))

(declare-fun b_lambda!266991 () Bool)

(assert (= b_lambda!266963 (or b!7036143 b_lambda!266991)))

(assert (=> d!2196522 d!2196184))

(declare-fun b_lambda!266993 () Bool)

(assert (= b_lambda!266965 (or b!7036143 b_lambda!266993)))

(assert (=> d!2196574 d!2196186))

(declare-fun b_lambda!266995 () Bool)

(assert (= b_lambda!266969 (or b!7036157 b_lambda!266995)))

(declare-fun bs!1872464 () Bool)

(declare-fun d!2196672 () Bool)

(assert (= bs!1872464 (and d!2196672 b!7036157)))

(assert (=> bs!1872464 (= (dynLambda!27407 lambda!415519 (h!74270 (toList!10815 lt!2520837))) (matchZipper!3012 (set.insert (h!74270 (toList!10815 lt!2520837)) (as set.empty (Set Context!12936))) s!7408))))

(declare-fun m!7746554 () Bool)

(assert (=> bs!1872464 m!7746554))

(assert (=> bs!1872464 m!7746554))

(declare-fun m!7746556 () Bool)

(assert (=> bs!1872464 m!7746556))

(assert (=> b!7036998 d!2196672))

(declare-fun b_lambda!266997 () Bool)

(assert (= b_lambda!266961 (or b!7036151 b_lambda!266997)))

(declare-fun bs!1872465 () Bool)

(declare-fun d!2196674 () Bool)

(assert (= bs!1872465 (and d!2196674 b!7036151)))

(assert (=> bs!1872465 (= (dynLambda!27413 lambda!415521 (h!74268 lt!2520840)) (validRegex!8932 (h!74268 lt!2520840)))))

(declare-fun m!7746558 () Bool)

(assert (=> bs!1872465 m!7746558))

(assert (=> b!7036909 d!2196674))

(declare-fun b_lambda!266999 () Bool)

(assert (= b_lambda!266947 (or b!7036143 b_lambda!266999)))

(assert (=> d!2196358 d!2196178))

(declare-fun b_lambda!267001 () Bool)

(assert (= b_lambda!266953 (or b!7036143 b_lambda!267001)))

(assert (=> d!2196466 d!2196188))

(declare-fun b_lambda!267003 () Bool)

(assert (= b_lambda!266967 (or b!7036157 b_lambda!267003)))

(declare-fun bs!1872466 () Bool)

(declare-fun d!2196676 () Bool)

(assert (= bs!1872466 (and d!2196676 b!7036157)))

(assert (=> bs!1872466 (= (dynLambda!27407 lambda!415519 lt!2521212) (matchZipper!3012 (set.insert lt!2521212 (as set.empty (Set Context!12936))) s!7408))))

(declare-fun m!7746560 () Bool)

(assert (=> bs!1872466 m!7746560))

(assert (=> bs!1872466 m!7746560))

(declare-fun m!7746562 () Bool)

(assert (=> bs!1872466 m!7746562))

(assert (=> d!2196586 d!2196676))

(declare-fun b_lambda!267005 () Bool)

(assert (= b_lambda!266971 (or b!7036151 b_lambda!267005)))

(assert (=> d!2196598 d!2196182))

(push 1)

(assert (not bm!639080))

(assert (not b!7036884))

(assert (not b!7037115))

(assert (not b!7036826))

(assert (not b!7037091))

(assert (not b!7037049))

(assert (not b!7036914))

(assert (not b!7036773))

(assert (not d!2196508))

(assert (not b!7037114))

(assert (not bm!639097))

(assert (not d!2196636))

(assert (not b_lambda!266981))

(assert (not b!7036924))

(assert (not bs!1872466))

(assert (not b_lambda!266909))

(assert (not d!2196478))

(assert (not b!7036685))

(assert (not d!2196458))

(assert (not b!7036927))

(assert (not b!7037093))

(assert (not bs!1872461))

(assert (not b!7036709))

(assert (not b!7036722))

(assert (not b!7036827))

(assert (not bm!639082))

(assert (not b!7036903))

(assert (not b!7036864))

(assert (not b!7036735))

(assert (not b!7036948))

(assert (not bm!639110))

(assert (not d!2196442))

(assert (not b!7036883))

(assert (not bm!639057))

(assert (not b!7036801))

(assert (not b!7037119))

(assert (not b!7036699))

(assert (not bm!639075))

(assert (not b!7037021))

(assert (not d!2196534))

(assert (not b!7037041))

(assert (not d!2196648))

(assert (not b!7036922))

(assert (not b_lambda!266997))

(assert (not d!2196614))

(assert (not b!7036776))

(assert (not b!7036935))

(assert (not bm!639061))

(assert (not b_lambda!266917))

(assert (not bm!639047))

(assert (not b!7036866))

(assert (not b!7037053))

(assert (not b!7036993))

(assert (not b!7036850))

(assert (not b!7036997))

(assert (not d!2196384))

(assert (not d!2196382))

(assert (not d!2196576))

(assert (not bs!1872457))

(assert (not bm!639063))

(assert (not d!2196638))

(assert (not b!7037112))

(assert (not d!2196466))

(assert (not b!7037117))

(assert (not d!2196364))

(assert (not b_lambda!266977))

(assert (not b!7036965))

(assert (not b!7037065))

(assert (not d!2196330))

(assert (not d!2196470))

(assert (not b_lambda!266985))

(assert (not d!2196516))

(assert (not b_lambda!267005))

(assert (not d!2196640))

(assert (not b!7036928))

(assert (not bm!639092))

(assert (not b!7037098))

(assert (not d!2196358))

(assert (not b!7037094))

(assert (not bm!639069))

(assert (not b!7036918))

(assert (not b!7036877))

(assert (not d!2196400))

(assert (not b!7036943))

(assert (not setNonEmpty!49252))

(assert (not b!7036910))

(assert (not b_lambda!266989))

(assert (not b_lambda!266905))

(assert (not d!2196564))

(assert (not setNonEmpty!49247))

(assert (not d!2196418))

(assert (not d!2196436))

(assert (not b!7036902))

(assert (not bm!639091))

(assert (not b!7036961))

(assert (not d!2196616))

(assert (not b!7036980))

(assert (not b!7036849))

(assert (not b!7036802))

(assert (not b!7036710))

(assert (not d!2196366))

(assert (not b!7036906))

(assert (not b!7036896))

(assert (not b!7036689))

(assert (not b!7036851))

(assert (not d!2196620))

(assert (not d!2196540))

(assert (not bs!1872465))

(assert (not b!7036766))

(assert (not bs!1872460))

(assert (not b!7036856))

(assert (not b!7036845))

(assert (not d!2196522))

(assert (not b!7036741))

(assert (not b!7036779))

(assert (not b!7036926))

(assert (not d!2196546))

(assert (not b!7037095))

(assert (not d!2196598))

(assert (not d!2196334))

(assert (not b!7036729))

(assert (not d!2196430))

(assert (not bm!639073))

(assert (not d!2196528))

(assert (not b!7037088))

(assert (not d!2196416))

(assert (not b!7036842))

(assert (not b!7036941))

(assert (not bm!639088))

(assert (not d!2196524))

(assert (not d!2196574))

(assert (not b!7036846))

(assert (not d!2196420))

(assert (not b!7036934))

(assert (not b!7036852))

(assert (not d!2196376))

(assert (not b!7036862))

(assert (not b!7037120))

(assert (not b!7036838))

(assert (not b!7036701))

(assert (not b!7036957))

(assert (not b!7037097))

(assert (not b!7036885))

(assert (not b!7036933))

(assert (not d!2196446))

(assert (not bs!1872463))

(assert (not b_lambda!266993))

(assert (not d!2196412))

(assert (not b!7036686))

(assert (not b!7036932))

(assert (not b!7036963))

(assert (not b!7036995))

(assert (not b!7037047))

(assert (not b!7036721))

(assert (not d!2196444))

(assert (not d!2196602))

(assert (not bm!639090))

(assert (not d!2196354))

(assert (not d!2196578))

(assert (not b_lambda!267003))

(assert (not b!7037043))

(assert (not d!2196512))

(assert (not bm!639103))

(assert (not b!7036911))

(assert (not bs!1872462))

(assert (not bm!639074))

(assert (not b!7036704))

(assert (not b!7036888))

(assert (not d!2196612))

(assert (not b!7037009))

(assert (not setNonEmpty!49254))

(assert (not b!7036955))

(assert (not b_lambda!266991))

(assert (not b!7036967))

(assert (not b!7036962))

(assert (not d!2196634))

(assert (not b!7037096))

(assert (not d!2196440))

(assert (not bm!639062))

(assert (not bm!639109))

(assert (not b!7036894))

(assert (not b_lambda!266983))

(assert (not b!7036960))

(assert (not b!7036769))

(assert (not d!2196468))

(assert (not b!7036908))

(assert (not b!7036848))

(assert (not d!2196642))

(assert (not b!7037026))

(assert (not b!7036836))

(assert (not bm!639056))

(assert (not b!7036931))

(assert (not b!7036798))

(assert (not b!7036717))

(assert (not d!2196422))

(assert (not bm!639055))

(assert (not d!2196644))

(assert (not b!7036790))

(assert (not b!7036697))

(assert (not b!7036814))

(assert (not bm!639051))

(assert (not bm!639087))

(assert (not b!7037099))

(assert (not bm!639098))

(assert (not b!7036939))

(assert (not b_lambda!266995))

(assert (not b!7036959))

(assert (not b!7036813))

(assert (not d!2196596))

(assert (not d!2196484))

(assert (not b!7036917))

(assert (not bm!639068))

(assert (not b!7037023))

(assert (not d!2196570))

(assert (not d!2196652))

(assert (not b!7036879))

(assert (not bm!639067))

(assert (not d!2196514))

(assert (not b!7036930))

(assert (not d!2196338))

(assert (not b!7036719))

(assert (not b!7036913))

(assert (not d!2196572))

(assert (not b!7036916))

(assert (not d!2196438))

(assert (not b!7037020))

(assert (not d!2196650))

(assert (not bm!639096))

(assert (not d!2196566))

(assert (not b!7037045))

(assert (not b!7037121))

(assert (not bm!639049))

(assert (not d!2196500))

(assert (not b_lambda!267001))

(assert (not setNonEmpty!49248))

(assert (not bm!639099))

(assert (not b!7037090))

(assert (not d!2196520))

(assert (not b!7036825))

(assert (not b!7036915))

(assert (not b!7037025))

(assert (not b!7036898))

(assert (not b!7037113))

(assert (not d!2196476))

(assert (not d!2196526))

(assert (not b!7037100))

(assert (not b!7036929))

(assert (not b!7036945))

(assert (not b_lambda!266913))

(assert (not b_lambda!266911))

(assert (not d!2196340))

(assert (not bs!1872458))

(assert (not b!7036772))

(assert (not d!2196646))

(assert (not bm!639104))

(assert (not b!7036964))

(assert (not b!7036899))

(assert (not d!2196486))

(assert (not b!7036912))

(assert (not d!2196548))

(assert (not d!2196586))

(assert (not b!7037018))

(assert (not d!2196538))

(assert (not bm!639050))

(assert (not d!2196588))

(assert (not setNonEmpty!49253))

(assert tp_is_empty!44169)

(assert (not d!2196374))

(assert (not bm!639076))

(assert (not d!2196488))

(assert (not b!7037118))

(assert (not d!2196328))

(assert (not b!7036937))

(assert (not d!2196536))

(assert (not d!2196510))

(assert (not d!2196532))

(assert (not b_lambda!267007))

(assert (not setNonEmpty!49251))

(assert (not b!7036778))

(assert (not d!2196352))

(assert (not b!7036904))

(assert (not b!7036835))

(assert (not b!7037029))

(assert (not bm!639081))

(assert (not b!7036841))

(assert (not b!7036925))

(assert (not b_lambda!266979))

(assert (not b!7036833))

(assert (not b!7036690))

(assert (not b!7036839))

(assert (not b!7036923))

(assert (not d!2196428))

(assert (not d!2196398))

(assert (not d!2196336))

(assert (not bs!1872464))

(assert (not d!2196482))

(assert (not d!2196568))

(assert (not d!2196506))

(assert (not bm!639086))

(assert (not d!2196562))

(assert (not d!2196378))

(assert (not b_lambda!266915))

(assert (not d!2196518))

(assert (not b!7036940))

(assert (not d!2196402))

(assert (not b!7037087))

(assert (not d!2196494))

(assert (not b!7037042))

(assert (not b_lambda!266907))

(assert (not b!7036901))

(assert (not b!7037050))

(assert (not b_lambda!266999))

(assert (not b!7036800))

(assert (not d!2196460))

(assert (not b_lambda!266987))

(assert (not b!7036768))

(assert (not b!7036969))

(assert (not b!7036880))

(assert (not b!7036796))

(assert (not d!2196434))

(assert (not d!2196492))

(assert (not b!7036718))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

