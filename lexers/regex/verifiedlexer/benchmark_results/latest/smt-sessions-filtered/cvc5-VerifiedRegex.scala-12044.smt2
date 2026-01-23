; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!675546 () Bool)

(assert start!675546)

(declare-fun b!7013151 () Bool)

(assert (=> b!7013151 true))

(declare-fun b!7013142 () Bool)

(assert (=> b!7013142 true))

(declare-fun b!7013140 () Bool)

(assert (=> b!7013140 true))

(declare-fun bs!1866352 () Bool)

(declare-fun b!7013145 () Bool)

(assert (= bs!1866352 (and b!7013145 b!7013151)))

(declare-datatypes ((C!34938 0))(
  ( (C!34939 (val!27171 Int)) )
))
(declare-datatypes ((List!67547 0))(
  ( (Nil!67423) (Cons!67423 (h!73871 C!34938) (t!381302 List!67547)) )
))
(declare-fun lt!2506767 () List!67547)

(declare-fun lambda!409325 () Int)

(declare-fun s!7408 () List!67547)

(declare-fun lambda!409329 () Int)

(assert (=> bs!1866352 (= (= lt!2506767 s!7408) (= lambda!409329 lambda!409325))))

(assert (=> b!7013145 true))

(declare-fun b!7013126 () Bool)

(declare-fun e!4215691 () Bool)

(declare-fun tp!1932665 () Bool)

(assert (=> b!7013126 (= e!4215691 tp!1932665)))

(declare-fun b!7013127 () Bool)

(declare-fun res!2862149 () Bool)

(declare-fun e!4215680 () Bool)

(assert (=> b!7013127 (=> res!2862149 e!4215680)))

(declare-datatypes ((Regex!17334 0))(
  ( (ElementMatch!17334 (c!1302789 C!34938)) (Concat!26179 (regOne!35180 Regex!17334) (regTwo!35180 Regex!17334)) (EmptyExpr!17334) (Star!17334 (reg!17663 Regex!17334)) (EmptyLang!17334) (Union!17334 (regOne!35181 Regex!17334) (regTwo!35181 Regex!17334)) )
))
(declare-datatypes ((List!67548 0))(
  ( (Nil!67424) (Cons!67424 (h!73872 Regex!17334) (t!381303 List!67548)) )
))
(declare-datatypes ((Context!12660 0))(
  ( (Context!12661 (exprs!6830 List!67548)) )
))
(declare-fun lt!2506788 () Context!12660)

(assert (=> b!7013127 (= res!2862149 (not (is-Cons!67424 (exprs!6830 lt!2506788))))))

(declare-fun b!7013128 () Bool)

(declare-fun e!4215679 () Bool)

(declare-fun e!4215686 () Bool)

(assert (=> b!7013128 (= e!4215679 e!4215686)))

(declare-fun res!2862147 () Bool)

(assert (=> b!7013128 (=> res!2862147 e!4215686)))

(declare-fun e!4215689 () Bool)

(assert (=> b!7013128 (= res!2862147 e!4215689)))

(declare-fun res!2862146 () Bool)

(assert (=> b!7013128 (=> (not res!2862146) (not e!4215689))))

(declare-fun lt!2506776 () Bool)

(declare-fun lt!2506773 () Bool)

(assert (=> b!7013128 (= res!2862146 (not (= lt!2506776 lt!2506773)))))

(declare-fun lt!2506771 () (Set Context!12660))

(declare-fun matchZipper!2874 ((Set Context!12660) List!67547) Bool)

(assert (=> b!7013128 (= lt!2506776 (matchZipper!2874 lt!2506771 (t!381302 s!7408)))))

(declare-fun lt!2506783 () List!67548)

(declare-fun lambda!409327 () Int)

(declare-fun ct2!306 () Context!12660)

(declare-datatypes ((Unit!161346 0))(
  ( (Unit!161347) )
))
(declare-fun lt!2506805 () Unit!161346)

(declare-fun lemmaConcatPreservesForall!670 (List!67548 List!67548 Int) Unit!161346)

(assert (=> b!7013128 (= lt!2506805 (lemmaConcatPreservesForall!670 lt!2506783 (exprs!6830 ct2!306) lambda!409327))))

(declare-fun lt!2506780 () (Set Context!12660))

(declare-fun e!4215692 () Bool)

(assert (=> b!7013128 (= (matchZipper!2874 lt!2506780 (t!381302 s!7408)) e!4215692)))

(declare-fun res!2862131 () Bool)

(assert (=> b!7013128 (=> res!2862131 e!4215692)))

(assert (=> b!7013128 (= res!2862131 lt!2506773)))

(declare-fun lt!2506801 () (Set Context!12660))

(assert (=> b!7013128 (= lt!2506773 (matchZipper!2874 lt!2506801 (t!381302 s!7408)))))

(declare-fun lt!2506761 () Unit!161346)

(declare-fun lt!2506781 () (Set Context!12660))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1507 ((Set Context!12660) (Set Context!12660) List!67547) Unit!161346)

(assert (=> b!7013128 (= lt!2506761 (lemmaZipperConcatMatchesSameAsBothZippers!1507 lt!2506801 lt!2506781 (t!381302 s!7408)))))

(declare-fun lt!2506808 () Unit!161346)

(assert (=> b!7013128 (= lt!2506808 (lemmaConcatPreservesForall!670 lt!2506783 (exprs!6830 ct2!306) lambda!409327))))

(declare-fun lt!2506770 () Unit!161346)

(assert (=> b!7013128 (= lt!2506770 (lemmaConcatPreservesForall!670 lt!2506783 (exprs!6830 ct2!306) lambda!409327))))

(declare-fun tp!1932664 () Bool)

(declare-fun setElem!48425 () Context!12660)

(declare-fun setRes!48425 () Bool)

(declare-fun e!4215677 () Bool)

(declare-fun setNonEmpty!48425 () Bool)

(declare-fun inv!86195 (Context!12660) Bool)

(assert (=> setNonEmpty!48425 (= setRes!48425 (and tp!1932664 (inv!86195 setElem!48425) e!4215677))))

(declare-fun z1!570 () (Set Context!12660))

(declare-fun setRest!48425 () (Set Context!12660))

(assert (=> setNonEmpty!48425 (= z1!570 (set.union (set.insert setElem!48425 (as set.empty (Set Context!12660))) setRest!48425))))

(declare-fun b!7013129 () Bool)

(declare-fun res!2862133 () Bool)

(declare-fun e!4215674 () Bool)

(assert (=> b!7013129 (=> res!2862133 e!4215674)))

(declare-fun lt!2506779 () Bool)

(assert (=> b!7013129 (= res!2862133 (not lt!2506779))))

(declare-fun b!7013130 () Bool)

(declare-fun res!2862132 () Bool)

(assert (=> b!7013130 (=> res!2862132 e!4215686)))

(assert (=> b!7013130 (= res!2862132 (not lt!2506776))))

(declare-fun b!7013131 () Bool)

(declare-fun e!4215676 () Bool)

(assert (=> b!7013131 (= e!4215680 e!4215676)))

(declare-fun res!2862141 () Bool)

(assert (=> b!7013131 (=> res!2862141 e!4215676)))

(declare-fun nullable!7094 (Regex!17334) Bool)

(assert (=> b!7013131 (= res!2862141 (not (nullable!7094 (h!73872 (exprs!6830 lt!2506788)))))))

(declare-fun lt!2506790 () Context!12660)

(assert (=> b!7013131 (= lt!2506790 (Context!12661 lt!2506783))))

(declare-fun tail!13414 (List!67548) List!67548)

(assert (=> b!7013131 (= lt!2506783 (tail!13414 (exprs!6830 lt!2506788)))))

(declare-fun b!7013132 () Bool)

(declare-fun e!4215681 () Bool)

(declare-fun tp_is_empty!43893 () Bool)

(declare-fun tp!1932667 () Bool)

(assert (=> b!7013132 (= e!4215681 (and tp_is_empty!43893 tp!1932667))))

(declare-fun b!7013134 () Bool)

(declare-fun tp!1932666 () Bool)

(assert (=> b!7013134 (= e!4215677 tp!1932666)))

(declare-fun b!7013135 () Bool)

(declare-fun e!4215675 () Bool)

(assert (=> b!7013135 (= e!4215675 e!4215674)))

(declare-fun res!2862153 () Bool)

(assert (=> b!7013135 (=> res!2862153 e!4215674)))

(declare-fun e!4215693 () Bool)

(assert (=> b!7013135 (= res!2862153 e!4215693)))

(declare-fun res!2862135 () Bool)

(assert (=> b!7013135 (=> (not res!2862135) (not e!4215693))))

(assert (=> b!7013135 (= res!2862135 (not lt!2506779))))

(declare-fun lt!2506764 () (Set Context!12660))

(assert (=> b!7013135 (= lt!2506779 (matchZipper!2874 lt!2506764 lt!2506767))))

(declare-datatypes ((tuple2!67974 0))(
  ( (tuple2!67975 (_1!37290 List!67547) (_2!37290 List!67547)) )
))
(declare-fun lt!2506775 () tuple2!67974)

(assert (=> b!7013135 (= lt!2506767 (Cons!67423 (h!73871 s!7408) (_1!37290 lt!2506775)))))

(declare-fun lt!2506786 () (Set Context!12660))

(assert (=> b!7013135 (matchZipper!2874 lt!2506786 (_1!37290 lt!2506775))))

(declare-fun lt!2506760 () (Set Context!12660))

(declare-fun lt!2506778 () (Set Context!12660))

(declare-fun lt!2506789 () Unit!161346)

(assert (=> b!7013135 (= lt!2506789 (lemmaZipperConcatMatchesSameAsBothZippers!1507 lt!2506778 lt!2506760 (_1!37290 lt!2506775)))))

(declare-fun b!7013136 () Bool)

(assert (=> b!7013136 (= e!4215676 e!4215679)))

(declare-fun res!2862137 () Bool)

(assert (=> b!7013136 (=> res!2862137 e!4215679)))

(assert (=> b!7013136 (= res!2862137 (not (= lt!2506771 lt!2506780)))))

(assert (=> b!7013136 (= lt!2506780 (set.union lt!2506801 lt!2506781))))

(declare-fun lt!2506763 () Context!12660)

(declare-fun derivationStepZipperUp!1984 (Context!12660 C!34938) (Set Context!12660))

(assert (=> b!7013136 (= lt!2506781 (derivationStepZipperUp!1984 lt!2506763 (h!73871 s!7408)))))

(declare-fun derivationStepZipperDown!2052 (Regex!17334 Context!12660 C!34938) (Set Context!12660))

(assert (=> b!7013136 (= lt!2506801 (derivationStepZipperDown!2052 (h!73872 (exprs!6830 lt!2506788)) lt!2506763 (h!73871 s!7408)))))

(declare-fun ++!15347 (List!67548 List!67548) List!67548)

(assert (=> b!7013136 (= lt!2506763 (Context!12661 (++!15347 lt!2506783 (exprs!6830 ct2!306))))))

(declare-fun lt!2506765 () Unit!161346)

(assert (=> b!7013136 (= lt!2506765 (lemmaConcatPreservesForall!670 lt!2506783 (exprs!6830 ct2!306) lambda!409327))))

(declare-fun lt!2506793 () Unit!161346)

(assert (=> b!7013136 (= lt!2506793 (lemmaConcatPreservesForall!670 lt!2506783 (exprs!6830 ct2!306) lambda!409327))))

(declare-fun b!7013137 () Bool)

(declare-fun e!4215688 () Bool)

(declare-fun e!4215687 () Bool)

(assert (=> b!7013137 (= e!4215688 e!4215687)))

(declare-fun res!2862139 () Bool)

(assert (=> b!7013137 (=> res!2862139 e!4215687)))

(assert (=> b!7013137 (= res!2862139 (not (matchZipper!2874 lt!2506778 (_1!37290 lt!2506775))))))

(declare-datatypes ((Option!16819 0))(
  ( (None!16818) (Some!16818 (v!53096 tuple2!67974)) )
))
(declare-fun lt!2506791 () Option!16819)

(declare-fun get!23648 (Option!16819) tuple2!67974)

(assert (=> b!7013137 (= lt!2506775 (get!23648 lt!2506791))))

(declare-fun isDefined!13520 (Option!16819) Bool)

(assert (=> b!7013137 (isDefined!13520 lt!2506791)))

(declare-fun lt!2506796 () (Set Context!12660))

(declare-fun findConcatSeparationZippers!335 ((Set Context!12660) (Set Context!12660) List!67547 List!67547 List!67547) Option!16819)

(assert (=> b!7013137 (= lt!2506791 (findConcatSeparationZippers!335 lt!2506778 lt!2506796 Nil!67423 (t!381302 s!7408) (t!381302 s!7408)))))

(assert (=> b!7013137 (= lt!2506796 (set.insert ct2!306 (as set.empty (Set Context!12660))))))

(declare-fun lt!2506792 () Unit!161346)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!335 ((Set Context!12660) Context!12660 List!67547) Unit!161346)

(assert (=> b!7013137 (= lt!2506792 (lemmaConcatZipperMatchesStringThenFindConcatDefined!335 lt!2506778 ct2!306 (t!381302 s!7408)))))

(declare-fun lt!2506784 () Unit!161346)

(assert (=> b!7013137 (= lt!2506784 (lemmaConcatPreservesForall!670 lt!2506783 (exprs!6830 ct2!306) lambda!409327))))

(declare-fun appendTo!455 ((Set Context!12660) Context!12660) (Set Context!12660))

(assert (=> b!7013137 (= lt!2506801 (appendTo!455 lt!2506778 ct2!306))))

(assert (=> b!7013137 (= lt!2506778 (derivationStepZipperDown!2052 (h!73872 (exprs!6830 lt!2506788)) lt!2506790 (h!73871 s!7408)))))

(declare-fun lt!2506787 () Unit!161346)

(assert (=> b!7013137 (= lt!2506787 (lemmaConcatPreservesForall!670 lt!2506783 (exprs!6830 ct2!306) lambda!409327))))

(declare-fun lt!2506794 () Unit!161346)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!33 (Context!12660 Regex!17334 C!34938 Context!12660) Unit!161346)

(assert (=> b!7013137 (= lt!2506794 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!33 lt!2506790 (h!73872 (exprs!6830 lt!2506788)) (h!73871 s!7408) ct2!306))))

(declare-fun b!7013138 () Bool)

(assert (=> b!7013138 (= e!4215692 (matchZipper!2874 lt!2506781 (t!381302 s!7408)))))

(declare-fun b!7013139 () Bool)

(declare-fun res!2862151 () Bool)

(assert (=> b!7013139 (=> res!2862151 e!4215687)))

(declare-fun ++!15348 (List!67547 List!67547) List!67547)

(assert (=> b!7013139 (= res!2862151 (not (= (++!15348 (_1!37290 lt!2506775) (_2!37290 lt!2506775)) (t!381302 s!7408))))))

(declare-fun e!4215678 () Bool)

(assert (=> b!7013140 (= e!4215678 e!4215680)))

(declare-fun res!2862130 () Bool)

(assert (=> b!7013140 (=> res!2862130 e!4215680)))

(declare-fun lt!2506795 () (Set Context!12660))

(declare-fun derivationStepZipper!2814 ((Set Context!12660) C!34938) (Set Context!12660))

(assert (=> b!7013140 (= res!2862130 (not (= (derivationStepZipper!2814 lt!2506795 (h!73871 s!7408)) lt!2506771)))))

(declare-fun lt!2506777 () Context!12660)

(declare-fun lambda!409328 () Int)

(declare-fun flatMap!2320 ((Set Context!12660) Int) (Set Context!12660))

(assert (=> b!7013140 (= (flatMap!2320 lt!2506795 lambda!409328) (derivationStepZipperUp!1984 lt!2506777 (h!73871 s!7408)))))

(declare-fun lt!2506759 () Unit!161346)

(declare-fun lemmaFlatMapOnSingletonSet!1835 ((Set Context!12660) Context!12660 Int) Unit!161346)

(assert (=> b!7013140 (= lt!2506759 (lemmaFlatMapOnSingletonSet!1835 lt!2506795 lt!2506777 lambda!409328))))

(assert (=> b!7013140 (= lt!2506771 (derivationStepZipperUp!1984 lt!2506777 (h!73871 s!7408)))))

(declare-fun lt!2506807 () Unit!161346)

(assert (=> b!7013140 (= lt!2506807 (lemmaConcatPreservesForall!670 (exprs!6830 lt!2506788) (exprs!6830 ct2!306) lambda!409327))))

(declare-fun b!7013141 () Bool)

(declare-fun res!2862143 () Bool)

(declare-fun e!4215683 () Bool)

(assert (=> b!7013141 (=> res!2862143 e!4215683)))

(declare-fun lt!2506799 () Context!12660)

(declare-fun lt!2506774 () (Set Context!12660))

(assert (=> b!7013141 (= res!2862143 (not (set.member lt!2506799 lt!2506774)))))

(declare-fun e!4215685 () Bool)

(assert (=> b!7013142 (= e!4215683 e!4215685)))

(declare-fun res!2862152 () Bool)

(assert (=> b!7013142 (=> res!2862152 e!4215685)))

(assert (=> b!7013142 (= res!2862152 (or (not (= lt!2506777 lt!2506799)) (not (set.member lt!2506788 z1!570))))))

(assert (=> b!7013142 (= lt!2506777 (Context!12661 (++!15347 (exprs!6830 lt!2506788) (exprs!6830 ct2!306))))))

(declare-fun lt!2506769 () Unit!161346)

(assert (=> b!7013142 (= lt!2506769 (lemmaConcatPreservesForall!670 (exprs!6830 lt!2506788) (exprs!6830 ct2!306) lambda!409327))))

(declare-fun lambda!409326 () Int)

(declare-fun mapPost2!189 ((Set Context!12660) Int Context!12660) Context!12660)

(assert (=> b!7013142 (= lt!2506788 (mapPost2!189 z1!570 lambda!409326 lt!2506799))))

(declare-fun setIsEmpty!48425 () Bool)

(assert (=> setIsEmpty!48425 setRes!48425))

(declare-fun b!7013143 () Bool)

(declare-fun res!2862144 () Bool)

(assert (=> b!7013143 (=> res!2862144 e!4215680)))

(declare-fun isEmpty!39376 (List!67548) Bool)

(assert (=> b!7013143 (= res!2862144 (isEmpty!39376 (exprs!6830 lt!2506788)))))

(declare-fun b!7013144 () Bool)

(declare-fun e!4215682 () Bool)

(assert (=> b!7013144 (= e!4215687 e!4215682)))

(declare-fun res!2862145 () Bool)

(assert (=> b!7013144 (=> res!2862145 e!4215682)))

(declare-fun lt!2506757 () (Set Context!12660))

(declare-fun lt!2506766 () (Set Context!12660))

(assert (=> b!7013144 (= res!2862145 (not (= lt!2506757 lt!2506766)))))

(assert (=> b!7013144 (= (flatMap!2320 lt!2506764 lambda!409328) (derivationStepZipperUp!1984 lt!2506788 (h!73871 s!7408)))))

(declare-fun lt!2506772 () Unit!161346)

(assert (=> b!7013144 (= lt!2506772 (lemmaFlatMapOnSingletonSet!1835 lt!2506764 lt!2506788 lambda!409328))))

(assert (=> b!7013144 (= lt!2506766 (derivationStepZipperUp!1984 lt!2506788 (h!73871 s!7408)))))

(assert (=> b!7013144 (= lt!2506757 (derivationStepZipper!2814 lt!2506764 (h!73871 s!7408)))))

(assert (=> b!7013144 (= lt!2506764 (set.insert lt!2506788 (as set.empty (Set Context!12660))))))

(assert (=> b!7013145 (= e!4215674 (= (++!15348 Nil!67423 s!7408) s!7408))))

(assert (=> b!7013145 (isDefined!13520 (findConcatSeparationZippers!335 z1!570 lt!2506796 Nil!67423 s!7408 s!7408))))

(declare-fun lt!2506762 () Unit!161346)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!21 ((Set Context!12660) (Set Context!12660) List!67547 List!67547 List!67547 List!67547 List!67547) Unit!161346)

(assert (=> b!7013145 (= lt!2506762 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!21 z1!570 lt!2506796 lt!2506767 (_2!37290 lt!2506775) s!7408 Nil!67423 s!7408))))

(declare-datatypes ((List!67549 0))(
  ( (Nil!67425) (Cons!67425 (h!73873 Context!12660) (t!381304 List!67549)) )
))
(declare-fun lt!2506798 () List!67549)

(declare-fun content!13390 (List!67549) (Set Context!12660))

(assert (=> b!7013145 (matchZipper!2874 (content!13390 lt!2506798) lt!2506767)))

(declare-fun lt!2506800 () Unit!161346)

(declare-fun lemmaExistsMatchingContextThenMatchingString!29 (List!67549 List!67547) Unit!161346)

(assert (=> b!7013145 (= lt!2506800 (lemmaExistsMatchingContextThenMatchingString!29 lt!2506798 lt!2506767))))

(declare-fun toList!10694 ((Set Context!12660)) List!67549)

(assert (=> b!7013145 (= lt!2506798 (toList!10694 z1!570))))

(declare-fun exists!3187 ((Set Context!12660) Int) Bool)

(assert (=> b!7013145 (exists!3187 z1!570 lambda!409329)))

(declare-fun lt!2506802 () Unit!161346)

(declare-fun lemmaContainsThenExists!98 ((Set Context!12660) Context!12660 Int) Unit!161346)

(assert (=> b!7013145 (= lt!2506802 (lemmaContainsThenExists!98 z1!570 lt!2506788 lambda!409329))))

(assert (=> b!7013145 (isDefined!13520 (findConcatSeparationZippers!335 lt!2506764 lt!2506796 Nil!67423 s!7408 s!7408))))

(declare-fun lt!2506758 () Unit!161346)

(assert (=> b!7013145 (= lt!2506758 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!21 lt!2506764 lt!2506796 lt!2506767 (_2!37290 lt!2506775) s!7408 Nil!67423 s!7408))))

(declare-fun b!7013146 () Bool)

(assert (=> b!7013146 (= e!4215689 (not (matchZipper!2874 lt!2506781 (t!381302 s!7408))))))

(declare-fun lt!2506803 () Unit!161346)

(assert (=> b!7013146 (= lt!2506803 (lemmaConcatPreservesForall!670 lt!2506783 (exprs!6830 ct2!306) lambda!409327))))

(declare-fun b!7013147 () Bool)

(assert (=> b!7013147 (= e!4215685 e!4215678)))

(declare-fun res!2862154 () Bool)

(assert (=> b!7013147 (=> res!2862154 e!4215678)))

(declare-fun lt!2506768 () (Set Context!12660))

(assert (=> b!7013147 (= res!2862154 (not (= lt!2506795 lt!2506768)))))

(assert (=> b!7013147 (= lt!2506795 (set.insert lt!2506777 (as set.empty (Set Context!12660))))))

(declare-fun lt!2506804 () Unit!161346)

(assert (=> b!7013147 (= lt!2506804 (lemmaConcatPreservesForall!670 (exprs!6830 lt!2506788) (exprs!6830 ct2!306) lambda!409327))))

(declare-fun b!7013148 () Bool)

(declare-fun e!4215690 () Bool)

(assert (=> b!7013148 (= e!4215690 e!4215688)))

(declare-fun res!2862134 () Bool)

(assert (=> b!7013148 (=> res!2862134 e!4215688)))

(assert (=> b!7013148 (= res!2862134 (not lt!2506773))))

(declare-fun lt!2506785 () Unit!161346)

(assert (=> b!7013148 (= lt!2506785 (lemmaConcatPreservesForall!670 lt!2506783 (exprs!6830 ct2!306) lambda!409327))))

(declare-fun lt!2506809 () Unit!161346)

(assert (=> b!7013148 (= lt!2506809 (lemmaConcatPreservesForall!670 lt!2506783 (exprs!6830 ct2!306) lambda!409327))))

(declare-fun b!7013149 () Bool)

(assert (=> b!7013149 (= e!4215682 e!4215675)))

(declare-fun res!2862140 () Bool)

(assert (=> b!7013149 (=> res!2862140 e!4215675)))

(assert (=> b!7013149 (= res!2862140 (not (= lt!2506757 lt!2506786)))))

(assert (=> b!7013149 (= lt!2506786 (set.union lt!2506778 lt!2506760))))

(assert (=> b!7013149 (= lt!2506760 (derivationStepZipperUp!1984 lt!2506790 (h!73871 s!7408)))))

(declare-fun b!7013133 () Bool)

(declare-fun res!2862148 () Bool)

(assert (=> b!7013133 (=> res!2862148 e!4215687)))

(assert (=> b!7013133 (= res!2862148 (not (matchZipper!2874 lt!2506796 (_2!37290 lt!2506775))))))

(declare-fun res!2862142 () Bool)

(declare-fun e!4215684 () Bool)

(assert (=> start!675546 (=> (not res!2862142) (not e!4215684))))

(assert (=> start!675546 (= res!2862142 (matchZipper!2874 lt!2506774 s!7408))))

(assert (=> start!675546 (= lt!2506774 (appendTo!455 z1!570 ct2!306))))

(assert (=> start!675546 e!4215684))

(declare-fun condSetEmpty!48425 () Bool)

(assert (=> start!675546 (= condSetEmpty!48425 (= z1!570 (as set.empty (Set Context!12660))))))

(assert (=> start!675546 setRes!48425))

(assert (=> start!675546 (and (inv!86195 ct2!306) e!4215691)))

(assert (=> start!675546 e!4215681))

(declare-fun b!7013150 () Bool)

(assert (=> b!7013150 (= e!4215686 e!4215690)))

(declare-fun res!2862136 () Bool)

(assert (=> b!7013150 (=> res!2862136 e!4215690)))

(assert (=> b!7013150 (= res!2862136 (matchZipper!2874 lt!2506781 (t!381302 s!7408)))))

(declare-fun lt!2506806 () Unit!161346)

(assert (=> b!7013150 (= lt!2506806 (lemmaConcatPreservesForall!670 lt!2506783 (exprs!6830 ct2!306) lambda!409327))))

(assert (=> b!7013151 (= e!4215684 (not e!4215683))))

(declare-fun res!2862150 () Bool)

(assert (=> b!7013151 (=> res!2862150 e!4215683)))

(assert (=> b!7013151 (= res!2862150 (not (matchZipper!2874 lt!2506768 s!7408)))))

(assert (=> b!7013151 (= lt!2506768 (set.insert lt!2506799 (as set.empty (Set Context!12660))))))

(declare-fun getWitness!1281 ((Set Context!12660) Int) Context!12660)

(assert (=> b!7013151 (= lt!2506799 (getWitness!1281 lt!2506774 lambda!409325))))

(declare-fun lt!2506782 () List!67549)

(declare-fun exists!3188 (List!67549 Int) Bool)

(assert (=> b!7013151 (exists!3188 lt!2506782 lambda!409325)))

(declare-fun lt!2506797 () Unit!161346)

(declare-fun lemmaZipperMatchesExistsMatchingContext!303 (List!67549 List!67547) Unit!161346)

(assert (=> b!7013151 (= lt!2506797 (lemmaZipperMatchesExistsMatchingContext!303 lt!2506782 s!7408))))

(assert (=> b!7013151 (= lt!2506782 (toList!10694 lt!2506774))))

(declare-fun b!7013152 () Bool)

(declare-fun res!2862138 () Bool)

(assert (=> b!7013152 (=> (not res!2862138) (not e!4215684))))

(assert (=> b!7013152 (= res!2862138 (is-Cons!67423 s!7408))))

(declare-fun b!7013153 () Bool)

(assert (=> b!7013153 (= e!4215693 (not (matchZipper!2874 lt!2506760 (_1!37290 lt!2506775))))))

(assert (= (and start!675546 res!2862142) b!7013152))

(assert (= (and b!7013152 res!2862138) b!7013151))

(assert (= (and b!7013151 (not res!2862150)) b!7013141))

(assert (= (and b!7013141 (not res!2862143)) b!7013142))

(assert (= (and b!7013142 (not res!2862152)) b!7013147))

(assert (= (and b!7013147 (not res!2862154)) b!7013140))

(assert (= (and b!7013140 (not res!2862130)) b!7013127))

(assert (= (and b!7013127 (not res!2862149)) b!7013143))

(assert (= (and b!7013143 (not res!2862144)) b!7013131))

(assert (= (and b!7013131 (not res!2862141)) b!7013136))

(assert (= (and b!7013136 (not res!2862137)) b!7013128))

(assert (= (and b!7013128 (not res!2862131)) b!7013138))

(assert (= (and b!7013128 res!2862146) b!7013146))

(assert (= (and b!7013128 (not res!2862147)) b!7013130))

(assert (= (and b!7013130 (not res!2862132)) b!7013150))

(assert (= (and b!7013150 (not res!2862136)) b!7013148))

(assert (= (and b!7013148 (not res!2862134)) b!7013137))

(assert (= (and b!7013137 (not res!2862139)) b!7013133))

(assert (= (and b!7013133 (not res!2862148)) b!7013139))

(assert (= (and b!7013139 (not res!2862151)) b!7013144))

(assert (= (and b!7013144 (not res!2862145)) b!7013149))

(assert (= (and b!7013149 (not res!2862140)) b!7013135))

(assert (= (and b!7013135 res!2862135) b!7013153))

(assert (= (and b!7013135 (not res!2862153)) b!7013129))

(assert (= (and b!7013129 (not res!2862133)) b!7013145))

(assert (= (and start!675546 condSetEmpty!48425) setIsEmpty!48425))

(assert (= (and start!675546 (not condSetEmpty!48425)) setNonEmpty!48425))

(assert (= setNonEmpty!48425 b!7013134))

(assert (= start!675546 b!7013126))

(assert (= (and start!675546 (is-Cons!67423 s!7408)) b!7013132))

(declare-fun m!7711932 () Bool)

(assert (=> b!7013135 m!7711932))

(declare-fun m!7711934 () Bool)

(assert (=> b!7013135 m!7711934))

(declare-fun m!7711936 () Bool)

(assert (=> b!7013135 m!7711936))

(declare-fun m!7711938 () Bool)

(assert (=> start!675546 m!7711938))

(declare-fun m!7711940 () Bool)

(assert (=> start!675546 m!7711940))

(declare-fun m!7711942 () Bool)

(assert (=> start!675546 m!7711942))

(declare-fun m!7711944 () Bool)

(assert (=> b!7013137 m!7711944))

(declare-fun m!7711946 () Bool)

(assert (=> b!7013137 m!7711946))

(declare-fun m!7711948 () Bool)

(assert (=> b!7013137 m!7711948))

(declare-fun m!7711950 () Bool)

(assert (=> b!7013137 m!7711950))

(declare-fun m!7711952 () Bool)

(assert (=> b!7013137 m!7711952))

(declare-fun m!7711954 () Bool)

(assert (=> b!7013137 m!7711954))

(declare-fun m!7711956 () Bool)

(assert (=> b!7013137 m!7711956))

(declare-fun m!7711958 () Bool)

(assert (=> b!7013137 m!7711958))

(declare-fun m!7711960 () Bool)

(assert (=> b!7013137 m!7711960))

(declare-fun m!7711962 () Bool)

(assert (=> b!7013137 m!7711962))

(assert (=> b!7013137 m!7711956))

(declare-fun m!7711964 () Bool)

(assert (=> b!7013151 m!7711964))

(declare-fun m!7711966 () Bool)

(assert (=> b!7013151 m!7711966))

(declare-fun m!7711968 () Bool)

(assert (=> b!7013151 m!7711968))

(declare-fun m!7711970 () Bool)

(assert (=> b!7013151 m!7711970))

(declare-fun m!7711972 () Bool)

(assert (=> b!7013151 m!7711972))

(declare-fun m!7711974 () Bool)

(assert (=> b!7013151 m!7711974))

(declare-fun m!7711976 () Bool)

(assert (=> b!7013145 m!7711976))

(declare-fun m!7711978 () Bool)

(assert (=> b!7013145 m!7711978))

(declare-fun m!7711980 () Bool)

(assert (=> b!7013145 m!7711980))

(declare-fun m!7711982 () Bool)

(assert (=> b!7013145 m!7711982))

(declare-fun m!7711984 () Bool)

(assert (=> b!7013145 m!7711984))

(declare-fun m!7711986 () Bool)

(assert (=> b!7013145 m!7711986))

(declare-fun m!7711988 () Bool)

(assert (=> b!7013145 m!7711988))

(declare-fun m!7711990 () Bool)

(assert (=> b!7013145 m!7711990))

(assert (=> b!7013145 m!7711986))

(declare-fun m!7711992 () Bool)

(assert (=> b!7013145 m!7711992))

(declare-fun m!7711994 () Bool)

(assert (=> b!7013145 m!7711994))

(declare-fun m!7711996 () Bool)

(assert (=> b!7013145 m!7711996))

(assert (=> b!7013145 m!7711992))

(declare-fun m!7711998 () Bool)

(assert (=> b!7013145 m!7711998))

(assert (=> b!7013145 m!7711994))

(declare-fun m!7712000 () Bool)

(assert (=> b!7013145 m!7712000))

(declare-fun m!7712002 () Bool)

(assert (=> setNonEmpty!48425 m!7712002))

(declare-fun m!7712004 () Bool)

(assert (=> b!7013131 m!7712004))

(declare-fun m!7712006 () Bool)

(assert (=> b!7013131 m!7712006))

(declare-fun m!7712008 () Bool)

(assert (=> b!7013142 m!7712008))

(declare-fun m!7712010 () Bool)

(assert (=> b!7013142 m!7712010))

(declare-fun m!7712012 () Bool)

(assert (=> b!7013142 m!7712012))

(declare-fun m!7712014 () Bool)

(assert (=> b!7013142 m!7712014))

(declare-fun m!7712016 () Bool)

(assert (=> b!7013139 m!7712016))

(declare-fun m!7712018 () Bool)

(assert (=> b!7013150 m!7712018))

(assert (=> b!7013150 m!7711956))

(declare-fun m!7712020 () Bool)

(assert (=> b!7013144 m!7712020))

(declare-fun m!7712022 () Bool)

(assert (=> b!7013144 m!7712022))

(declare-fun m!7712024 () Bool)

(assert (=> b!7013144 m!7712024))

(declare-fun m!7712026 () Bool)

(assert (=> b!7013144 m!7712026))

(declare-fun m!7712028 () Bool)

(assert (=> b!7013144 m!7712028))

(declare-fun m!7712030 () Bool)

(assert (=> b!7013143 m!7712030))

(declare-fun m!7712032 () Bool)

(assert (=> b!7013140 m!7712032))

(declare-fun m!7712034 () Bool)

(assert (=> b!7013140 m!7712034))

(declare-fun m!7712036 () Bool)

(assert (=> b!7013140 m!7712036))

(assert (=> b!7013140 m!7712012))

(declare-fun m!7712038 () Bool)

(assert (=> b!7013140 m!7712038))

(assert (=> b!7013146 m!7712018))

(assert (=> b!7013146 m!7711956))

(declare-fun m!7712040 () Bool)

(assert (=> b!7013147 m!7712040))

(assert (=> b!7013147 m!7712012))

(declare-fun m!7712042 () Bool)

(assert (=> b!7013128 m!7712042))

(declare-fun m!7712044 () Bool)

(assert (=> b!7013128 m!7712044))

(declare-fun m!7712046 () Bool)

(assert (=> b!7013128 m!7712046))

(assert (=> b!7013128 m!7711956))

(assert (=> b!7013128 m!7711956))

(assert (=> b!7013128 m!7711956))

(declare-fun m!7712048 () Bool)

(assert (=> b!7013128 m!7712048))

(assert (=> b!7013148 m!7711956))

(assert (=> b!7013148 m!7711956))

(assert (=> b!7013136 m!7711956))

(declare-fun m!7712050 () Bool)

(assert (=> b!7013136 m!7712050))

(declare-fun m!7712052 () Bool)

(assert (=> b!7013136 m!7712052))

(declare-fun m!7712054 () Bool)

(assert (=> b!7013136 m!7712054))

(assert (=> b!7013136 m!7711956))

(declare-fun m!7712056 () Bool)

(assert (=> b!7013149 m!7712056))

(declare-fun m!7712058 () Bool)

(assert (=> b!7013153 m!7712058))

(assert (=> b!7013138 m!7712018))

(declare-fun m!7712060 () Bool)

(assert (=> b!7013133 m!7712060))

(declare-fun m!7712062 () Bool)

(assert (=> b!7013141 m!7712062))

(push 1)

(assert (not b!7013138))

(assert (not start!675546))

(assert (not b!7013145))

(assert (not b!7013139))

(assert (not setNonEmpty!48425))

(assert (not b!7013146))

(assert (not b!7013137))

(assert (not b!7013135))

(assert (not b!7013143))

(assert (not b!7013128))

(assert (not b!7013126))

(assert (not b!7013151))

(assert (not b!7013153))

(assert (not b!7013144))

(assert (not b!7013133))

(assert (not b!7013147))

(assert tp_is_empty!43893)

(assert (not b!7013136))

(assert (not b!7013148))

(assert (not b!7013134))

(assert (not b!7013131))

(assert (not b!7013150))

(assert (not b!7013149))

(assert (not b!7013142))

(assert (not b!7013140))

(assert (not b!7013132))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2185933 () Bool)

(declare-fun c!1302805 () Bool)

(declare-fun isEmpty!39378 (List!67547) Bool)

(assert (=> d!2185933 (= c!1302805 (isEmpty!39378 s!7408))))

(declare-fun e!4215756 () Bool)

(assert (=> d!2185933 (= (matchZipper!2874 lt!2506774 s!7408) e!4215756)))

(declare-fun b!7013254 () Bool)

(declare-fun nullableZipper!2493 ((Set Context!12660)) Bool)

(assert (=> b!7013254 (= e!4215756 (nullableZipper!2493 lt!2506774))))

(declare-fun b!7013255 () Bool)

(declare-fun head!14179 (List!67547) C!34938)

(declare-fun tail!13416 (List!67547) List!67547)

(assert (=> b!7013255 (= e!4215756 (matchZipper!2874 (derivationStepZipper!2814 lt!2506774 (head!14179 s!7408)) (tail!13416 s!7408)))))

(assert (= (and d!2185933 c!1302805) b!7013254))

(assert (= (and d!2185933 (not c!1302805)) b!7013255))

(declare-fun m!7712196 () Bool)

(assert (=> d!2185933 m!7712196))

(declare-fun m!7712198 () Bool)

(assert (=> b!7013254 m!7712198))

(declare-fun m!7712200 () Bool)

(assert (=> b!7013255 m!7712200))

(assert (=> b!7013255 m!7712200))

(declare-fun m!7712202 () Bool)

(assert (=> b!7013255 m!7712202))

(declare-fun m!7712204 () Bool)

(assert (=> b!7013255 m!7712204))

(assert (=> b!7013255 m!7712202))

(assert (=> b!7013255 m!7712204))

(declare-fun m!7712206 () Bool)

(assert (=> b!7013255 m!7712206))

(assert (=> start!675546 d!2185933))

(declare-fun bs!1866354 () Bool)

(declare-fun d!2185935 () Bool)

(assert (= bs!1866354 (and d!2185935 b!7013142)))

(declare-fun lambda!409381 () Int)

(assert (=> bs!1866354 (= lambda!409381 lambda!409326)))

(assert (=> d!2185935 true))

(declare-fun map!15624 ((Set Context!12660) Int) (Set Context!12660))

(assert (=> d!2185935 (= (appendTo!455 z1!570 ct2!306) (map!15624 z1!570 lambda!409381))))

(declare-fun bs!1866355 () Bool)

(assert (= bs!1866355 d!2185935))

(declare-fun m!7712208 () Bool)

(assert (=> bs!1866355 m!7712208))

(assert (=> start!675546 d!2185935))

(declare-fun bs!1866356 () Bool)

(declare-fun d!2185937 () Bool)

(assert (= bs!1866356 (and d!2185937 b!7013142)))

(declare-fun lambda!409384 () Int)

(assert (=> bs!1866356 (= lambda!409384 lambda!409327)))

(declare-fun forall!16245 (List!67548 Int) Bool)

(assert (=> d!2185937 (= (inv!86195 ct2!306) (forall!16245 (exprs!6830 ct2!306) lambda!409384))))

(declare-fun bs!1866357 () Bool)

(assert (= bs!1866357 d!2185937))

(declare-fun m!7712210 () Bool)

(assert (=> bs!1866357 m!7712210))

(assert (=> start!675546 d!2185937))

(declare-fun d!2185939 () Bool)

(declare-fun nullableFct!2687 (Regex!17334) Bool)

(assert (=> d!2185939 (= (nullable!7094 (h!73872 (exprs!6830 lt!2506788))) (nullableFct!2687 (h!73872 (exprs!6830 lt!2506788))))))

(declare-fun bs!1866358 () Bool)

(assert (= bs!1866358 d!2185939))

(declare-fun m!7712212 () Bool)

(assert (=> bs!1866358 m!7712212))

(assert (=> b!7013131 d!2185939))

(declare-fun d!2185941 () Bool)

(assert (=> d!2185941 (= (tail!13414 (exprs!6830 lt!2506788)) (t!381303 (exprs!6830 lt!2506788)))))

(assert (=> b!7013131 d!2185941))

(declare-fun d!2185943 () Bool)

(declare-fun e!4215762 () Bool)

(assert (=> d!2185943 e!4215762))

(declare-fun res!2862236 () Bool)

(assert (=> d!2185943 (=> (not res!2862236) (not e!4215762))))

(declare-fun lt!2506975 () List!67548)

(declare-fun content!13392 (List!67548) (Set Regex!17334))

(assert (=> d!2185943 (= res!2862236 (= (content!13392 lt!2506975) (set.union (content!13392 (exprs!6830 lt!2506788)) (content!13392 (exprs!6830 ct2!306)))))))

(declare-fun e!4215761 () List!67548)

(assert (=> d!2185943 (= lt!2506975 e!4215761)))

(declare-fun c!1302809 () Bool)

(assert (=> d!2185943 (= c!1302809 (is-Nil!67424 (exprs!6830 lt!2506788)))))

(assert (=> d!2185943 (= (++!15347 (exprs!6830 lt!2506788) (exprs!6830 ct2!306)) lt!2506975)))

(declare-fun b!7013264 () Bool)

(assert (=> b!7013264 (= e!4215761 (exprs!6830 ct2!306))))

(declare-fun b!7013266 () Bool)

(declare-fun res!2862237 () Bool)

(assert (=> b!7013266 (=> (not res!2862237) (not e!4215762))))

(declare-fun size!40983 (List!67548) Int)

(assert (=> b!7013266 (= res!2862237 (= (size!40983 lt!2506975) (+ (size!40983 (exprs!6830 lt!2506788)) (size!40983 (exprs!6830 ct2!306)))))))

(declare-fun b!7013265 () Bool)

(assert (=> b!7013265 (= e!4215761 (Cons!67424 (h!73872 (exprs!6830 lt!2506788)) (++!15347 (t!381303 (exprs!6830 lt!2506788)) (exprs!6830 ct2!306))))))

(declare-fun b!7013267 () Bool)

(assert (=> b!7013267 (= e!4215762 (or (not (= (exprs!6830 ct2!306) Nil!67424)) (= lt!2506975 (exprs!6830 lt!2506788))))))

(assert (= (and d!2185943 c!1302809) b!7013264))

(assert (= (and d!2185943 (not c!1302809)) b!7013265))

(assert (= (and d!2185943 res!2862236) b!7013266))

(assert (= (and b!7013266 res!2862237) b!7013267))

(declare-fun m!7712214 () Bool)

(assert (=> d!2185943 m!7712214))

(declare-fun m!7712216 () Bool)

(assert (=> d!2185943 m!7712216))

(declare-fun m!7712218 () Bool)

(assert (=> d!2185943 m!7712218))

(declare-fun m!7712220 () Bool)

(assert (=> b!7013266 m!7712220))

(declare-fun m!7712222 () Bool)

(assert (=> b!7013266 m!7712222))

(declare-fun m!7712224 () Bool)

(assert (=> b!7013266 m!7712224))

(declare-fun m!7712226 () Bool)

(assert (=> b!7013265 m!7712226))

(assert (=> b!7013142 d!2185943))

(declare-fun d!2185945 () Bool)

(assert (=> d!2185945 (forall!16245 (++!15347 (exprs!6830 lt!2506788) (exprs!6830 ct2!306)) lambda!409327)))

(declare-fun lt!2506978 () Unit!161346)

(declare-fun choose!52748 (List!67548 List!67548 Int) Unit!161346)

(assert (=> d!2185945 (= lt!2506978 (choose!52748 (exprs!6830 lt!2506788) (exprs!6830 ct2!306) lambda!409327))))

(assert (=> d!2185945 (forall!16245 (exprs!6830 lt!2506788) lambda!409327)))

(assert (=> d!2185945 (= (lemmaConcatPreservesForall!670 (exprs!6830 lt!2506788) (exprs!6830 ct2!306) lambda!409327) lt!2506978)))

(declare-fun bs!1866359 () Bool)

(assert (= bs!1866359 d!2185945))

(assert (=> bs!1866359 m!7712010))

(assert (=> bs!1866359 m!7712010))

(declare-fun m!7712228 () Bool)

(assert (=> bs!1866359 m!7712228))

(declare-fun m!7712230 () Bool)

(assert (=> bs!1866359 m!7712230))

(declare-fun m!7712232 () Bool)

(assert (=> bs!1866359 m!7712232))

(assert (=> b!7013142 d!2185945))

(declare-fun d!2185947 () Bool)

(declare-fun e!4215765 () Bool)

(assert (=> d!2185947 e!4215765))

(declare-fun res!2862240 () Bool)

(assert (=> d!2185947 (=> (not res!2862240) (not e!4215765))))

(declare-fun lt!2506981 () Context!12660)

(declare-fun dynLambda!27122 (Int Context!12660) Context!12660)

(assert (=> d!2185947 (= res!2862240 (= lt!2506799 (dynLambda!27122 lambda!409326 lt!2506981)))))

(declare-fun choose!52749 ((Set Context!12660) Int Context!12660) Context!12660)

(assert (=> d!2185947 (= lt!2506981 (choose!52749 z1!570 lambda!409326 lt!2506799))))

(assert (=> d!2185947 (set.member lt!2506799 (map!15624 z1!570 lambda!409326))))

(assert (=> d!2185947 (= (mapPost2!189 z1!570 lambda!409326 lt!2506799) lt!2506981)))

(declare-fun b!7013271 () Bool)

(assert (=> b!7013271 (= e!4215765 (set.member lt!2506981 z1!570))))

(assert (= (and d!2185947 res!2862240) b!7013271))

(declare-fun b_lambda!264455 () Bool)

(assert (=> (not b_lambda!264455) (not d!2185947)))

(declare-fun m!7712234 () Bool)

(assert (=> d!2185947 m!7712234))

(declare-fun m!7712236 () Bool)

(assert (=> d!2185947 m!7712236))

(declare-fun m!7712238 () Bool)

(assert (=> d!2185947 m!7712238))

(declare-fun m!7712240 () Bool)

(assert (=> d!2185947 m!7712240))

(declare-fun m!7712242 () Bool)

(assert (=> b!7013271 m!7712242))

(assert (=> b!7013142 d!2185947))

(declare-fun d!2185949 () Bool)

(declare-fun c!1302810 () Bool)

(assert (=> d!2185949 (= c!1302810 (isEmpty!39378 (_1!37290 lt!2506775)))))

(declare-fun e!4215766 () Bool)

(assert (=> d!2185949 (= (matchZipper!2874 lt!2506760 (_1!37290 lt!2506775)) e!4215766)))

(declare-fun b!7013272 () Bool)

(assert (=> b!7013272 (= e!4215766 (nullableZipper!2493 lt!2506760))))

(declare-fun b!7013273 () Bool)

(assert (=> b!7013273 (= e!4215766 (matchZipper!2874 (derivationStepZipper!2814 lt!2506760 (head!14179 (_1!37290 lt!2506775))) (tail!13416 (_1!37290 lt!2506775))))))

(assert (= (and d!2185949 c!1302810) b!7013272))

(assert (= (and d!2185949 (not c!1302810)) b!7013273))

(declare-fun m!7712244 () Bool)

(assert (=> d!2185949 m!7712244))

(declare-fun m!7712246 () Bool)

(assert (=> b!7013272 m!7712246))

(declare-fun m!7712248 () Bool)

(assert (=> b!7013273 m!7712248))

(assert (=> b!7013273 m!7712248))

(declare-fun m!7712250 () Bool)

(assert (=> b!7013273 m!7712250))

(declare-fun m!7712252 () Bool)

(assert (=> b!7013273 m!7712252))

(assert (=> b!7013273 m!7712250))

(assert (=> b!7013273 m!7712252))

(declare-fun m!7712254 () Bool)

(assert (=> b!7013273 m!7712254))

(assert (=> b!7013153 d!2185949))

(declare-fun d!2185951 () Bool)

(declare-fun c!1302811 () Bool)

(assert (=> d!2185951 (= c!1302811 (isEmpty!39378 (_2!37290 lt!2506775)))))

(declare-fun e!4215767 () Bool)

(assert (=> d!2185951 (= (matchZipper!2874 lt!2506796 (_2!37290 lt!2506775)) e!4215767)))

(declare-fun b!7013274 () Bool)

(assert (=> b!7013274 (= e!4215767 (nullableZipper!2493 lt!2506796))))

(declare-fun b!7013275 () Bool)

(assert (=> b!7013275 (= e!4215767 (matchZipper!2874 (derivationStepZipper!2814 lt!2506796 (head!14179 (_2!37290 lt!2506775))) (tail!13416 (_2!37290 lt!2506775))))))

(assert (= (and d!2185951 c!1302811) b!7013274))

(assert (= (and d!2185951 (not c!1302811)) b!7013275))

(declare-fun m!7712256 () Bool)

(assert (=> d!2185951 m!7712256))

(declare-fun m!7712258 () Bool)

(assert (=> b!7013274 m!7712258))

(declare-fun m!7712260 () Bool)

(assert (=> b!7013275 m!7712260))

(assert (=> b!7013275 m!7712260))

(declare-fun m!7712262 () Bool)

(assert (=> b!7013275 m!7712262))

(declare-fun m!7712264 () Bool)

(assert (=> b!7013275 m!7712264))

(assert (=> b!7013275 m!7712262))

(assert (=> b!7013275 m!7712264))

(declare-fun m!7712266 () Bool)

(assert (=> b!7013275 m!7712266))

(assert (=> b!7013133 d!2185951))

(declare-fun d!2185953 () Bool)

(assert (=> d!2185953 (= (isEmpty!39376 (exprs!6830 lt!2506788)) (is-Nil!67424 (exprs!6830 lt!2506788)))))

(assert (=> b!7013143 d!2185953))

(declare-fun b!7013286 () Bool)

(declare-fun res!2862245 () Bool)

(declare-fun e!4215772 () Bool)

(assert (=> b!7013286 (=> (not res!2862245) (not e!4215772))))

(declare-fun lt!2506984 () List!67547)

(declare-fun size!40984 (List!67547) Int)

(assert (=> b!7013286 (= res!2862245 (= (size!40984 lt!2506984) (+ (size!40984 (_1!37290 lt!2506775)) (size!40984 (_2!37290 lt!2506775)))))))

(declare-fun b!7013284 () Bool)

(declare-fun e!4215773 () List!67547)

(assert (=> b!7013284 (= e!4215773 (_2!37290 lt!2506775))))

(declare-fun b!7013285 () Bool)

(assert (=> b!7013285 (= e!4215773 (Cons!67423 (h!73871 (_1!37290 lt!2506775)) (++!15348 (t!381302 (_1!37290 lt!2506775)) (_2!37290 lt!2506775))))))

(declare-fun d!2185955 () Bool)

(assert (=> d!2185955 e!4215772))

(declare-fun res!2862246 () Bool)

(assert (=> d!2185955 (=> (not res!2862246) (not e!4215772))))

(declare-fun content!13393 (List!67547) (Set C!34938))

(assert (=> d!2185955 (= res!2862246 (= (content!13393 lt!2506984) (set.union (content!13393 (_1!37290 lt!2506775)) (content!13393 (_2!37290 lt!2506775)))))))

(assert (=> d!2185955 (= lt!2506984 e!4215773)))

(declare-fun c!1302814 () Bool)

(assert (=> d!2185955 (= c!1302814 (is-Nil!67423 (_1!37290 lt!2506775)))))

(assert (=> d!2185955 (= (++!15348 (_1!37290 lt!2506775) (_2!37290 lt!2506775)) lt!2506984)))

(declare-fun b!7013287 () Bool)

(assert (=> b!7013287 (= e!4215772 (or (not (= (_2!37290 lt!2506775) Nil!67423)) (= lt!2506984 (_1!37290 lt!2506775))))))

(assert (= (and d!2185955 c!1302814) b!7013284))

(assert (= (and d!2185955 (not c!1302814)) b!7013285))

(assert (= (and d!2185955 res!2862246) b!7013286))

(assert (= (and b!7013286 res!2862245) b!7013287))

(declare-fun m!7712268 () Bool)

(assert (=> b!7013286 m!7712268))

(declare-fun m!7712270 () Bool)

(assert (=> b!7013286 m!7712270))

(declare-fun m!7712272 () Bool)

(assert (=> b!7013286 m!7712272))

(declare-fun m!7712274 () Bool)

(assert (=> b!7013285 m!7712274))

(declare-fun m!7712276 () Bool)

(assert (=> d!2185955 m!7712276))

(declare-fun m!7712278 () Bool)

(assert (=> d!2185955 m!7712278))

(declare-fun m!7712280 () Bool)

(assert (=> d!2185955 m!7712280))

(assert (=> b!7013139 d!2185955))

(declare-fun b!7013298 () Bool)

(declare-fun e!4215782 () (Set Context!12660))

(declare-fun e!4215780 () (Set Context!12660))

(assert (=> b!7013298 (= e!4215782 e!4215780)))

(declare-fun c!1302820 () Bool)

(assert (=> b!7013298 (= c!1302820 (is-Cons!67424 (exprs!6830 lt!2506790)))))

(declare-fun b!7013299 () Bool)

(declare-fun e!4215781 () Bool)

(assert (=> b!7013299 (= e!4215781 (nullable!7094 (h!73872 (exprs!6830 lt!2506790))))))

(declare-fun bm!636942 () Bool)

(declare-fun call!636947 () (Set Context!12660))

(assert (=> bm!636942 (= call!636947 (derivationStepZipperDown!2052 (h!73872 (exprs!6830 lt!2506790)) (Context!12661 (t!381303 (exprs!6830 lt!2506790))) (h!73871 s!7408)))))

(declare-fun b!7013300 () Bool)

(assert (=> b!7013300 (= e!4215780 call!636947)))

(declare-fun b!7013301 () Bool)

(assert (=> b!7013301 (= e!4215782 (set.union call!636947 (derivationStepZipperUp!1984 (Context!12661 (t!381303 (exprs!6830 lt!2506790))) (h!73871 s!7408))))))

(declare-fun b!7013302 () Bool)

(assert (=> b!7013302 (= e!4215780 (as set.empty (Set Context!12660)))))

(declare-fun d!2185957 () Bool)

(declare-fun c!1302819 () Bool)

(assert (=> d!2185957 (= c!1302819 e!4215781)))

(declare-fun res!2862249 () Bool)

(assert (=> d!2185957 (=> (not res!2862249) (not e!4215781))))

(assert (=> d!2185957 (= res!2862249 (is-Cons!67424 (exprs!6830 lt!2506790)))))

(assert (=> d!2185957 (= (derivationStepZipperUp!1984 lt!2506790 (h!73871 s!7408)) e!4215782)))

(assert (= (and d!2185957 res!2862249) b!7013299))

(assert (= (and d!2185957 c!1302819) b!7013301))

(assert (= (and d!2185957 (not c!1302819)) b!7013298))

(assert (= (and b!7013298 c!1302820) b!7013300))

(assert (= (and b!7013298 (not c!1302820)) b!7013302))

(assert (= (or b!7013301 b!7013300) bm!636942))

(declare-fun m!7712282 () Bool)

(assert (=> b!7013299 m!7712282))

(declare-fun m!7712284 () Bool)

(assert (=> bm!636942 m!7712284))

(declare-fun m!7712286 () Bool)

(assert (=> b!7013301 m!7712286))

(assert (=> b!7013149 d!2185957))

(declare-fun d!2185959 () Bool)

(declare-fun dynLambda!27123 (Int Context!12660) (Set Context!12660))

(assert (=> d!2185959 (= (flatMap!2320 lt!2506795 lambda!409328) (dynLambda!27123 lambda!409328 lt!2506777))))

(declare-fun lt!2506987 () Unit!161346)

(declare-fun choose!52750 ((Set Context!12660) Context!12660 Int) Unit!161346)

(assert (=> d!2185959 (= lt!2506987 (choose!52750 lt!2506795 lt!2506777 lambda!409328))))

(assert (=> d!2185959 (= lt!2506795 (set.insert lt!2506777 (as set.empty (Set Context!12660))))))

(assert (=> d!2185959 (= (lemmaFlatMapOnSingletonSet!1835 lt!2506795 lt!2506777 lambda!409328) lt!2506987)))

(declare-fun b_lambda!264457 () Bool)

(assert (=> (not b_lambda!264457) (not d!2185959)))

(declare-fun bs!1866360 () Bool)

(assert (= bs!1866360 d!2185959))

(assert (=> bs!1866360 m!7712038))

(declare-fun m!7712288 () Bool)

(assert (=> bs!1866360 m!7712288))

(declare-fun m!7712290 () Bool)

(assert (=> bs!1866360 m!7712290))

(assert (=> bs!1866360 m!7712040))

(assert (=> b!7013140 d!2185959))

(declare-fun bs!1866361 () Bool)

(declare-fun d!2185961 () Bool)

(assert (= bs!1866361 (and d!2185961 b!7013140)))

(declare-fun lambda!409387 () Int)

(assert (=> bs!1866361 (= lambda!409387 lambda!409328)))

(assert (=> d!2185961 true))

(assert (=> d!2185961 (= (derivationStepZipper!2814 lt!2506795 (h!73871 s!7408)) (flatMap!2320 lt!2506795 lambda!409387))))

(declare-fun bs!1866362 () Bool)

(assert (= bs!1866362 d!2185961))

(declare-fun m!7712292 () Bool)

(assert (=> bs!1866362 m!7712292))

(assert (=> b!7013140 d!2185961))

(declare-fun d!2185963 () Bool)

(declare-fun choose!52751 ((Set Context!12660) Int) (Set Context!12660))

(assert (=> d!2185963 (= (flatMap!2320 lt!2506795 lambda!409328) (choose!52751 lt!2506795 lambda!409328))))

(declare-fun bs!1866363 () Bool)

(assert (= bs!1866363 d!2185963))

(declare-fun m!7712294 () Bool)

(assert (=> bs!1866363 m!7712294))

(assert (=> b!7013140 d!2185963))

(assert (=> b!7013140 d!2185945))

(declare-fun b!7013305 () Bool)

(declare-fun e!4215785 () (Set Context!12660))

(declare-fun e!4215783 () (Set Context!12660))

(assert (=> b!7013305 (= e!4215785 e!4215783)))

(declare-fun c!1302824 () Bool)

(assert (=> b!7013305 (= c!1302824 (is-Cons!67424 (exprs!6830 lt!2506777)))))

(declare-fun b!7013306 () Bool)

(declare-fun e!4215784 () Bool)

(assert (=> b!7013306 (= e!4215784 (nullable!7094 (h!73872 (exprs!6830 lt!2506777))))))

(declare-fun bm!636943 () Bool)

(declare-fun call!636948 () (Set Context!12660))

(assert (=> bm!636943 (= call!636948 (derivationStepZipperDown!2052 (h!73872 (exprs!6830 lt!2506777)) (Context!12661 (t!381303 (exprs!6830 lt!2506777))) (h!73871 s!7408)))))

(declare-fun b!7013307 () Bool)

(assert (=> b!7013307 (= e!4215783 call!636948)))

(declare-fun b!7013308 () Bool)

(assert (=> b!7013308 (= e!4215785 (set.union call!636948 (derivationStepZipperUp!1984 (Context!12661 (t!381303 (exprs!6830 lt!2506777))) (h!73871 s!7408))))))

(declare-fun b!7013309 () Bool)

(assert (=> b!7013309 (= e!4215783 (as set.empty (Set Context!12660)))))

(declare-fun d!2185965 () Bool)

(declare-fun c!1302823 () Bool)

(assert (=> d!2185965 (= c!1302823 e!4215784)))

(declare-fun res!2862250 () Bool)

(assert (=> d!2185965 (=> (not res!2862250) (not e!4215784))))

(assert (=> d!2185965 (= res!2862250 (is-Cons!67424 (exprs!6830 lt!2506777)))))

(assert (=> d!2185965 (= (derivationStepZipperUp!1984 lt!2506777 (h!73871 s!7408)) e!4215785)))

(assert (= (and d!2185965 res!2862250) b!7013306))

(assert (= (and d!2185965 c!1302823) b!7013308))

(assert (= (and d!2185965 (not c!1302823)) b!7013305))

(assert (= (and b!7013305 c!1302824) b!7013307))

(assert (= (and b!7013305 (not c!1302824)) b!7013309))

(assert (= (or b!7013308 b!7013307) bm!636943))

(declare-fun m!7712296 () Bool)

(assert (=> b!7013306 m!7712296))

(declare-fun m!7712298 () Bool)

(assert (=> bm!636943 m!7712298))

(declare-fun m!7712300 () Bool)

(assert (=> b!7013308 m!7712300))

(assert (=> b!7013140 d!2185965))

(declare-fun d!2185967 () Bool)

(declare-fun c!1302825 () Bool)

(assert (=> d!2185967 (= c!1302825 (isEmpty!39378 (t!381302 s!7408)))))

(declare-fun e!4215786 () Bool)

(assert (=> d!2185967 (= (matchZipper!2874 lt!2506781 (t!381302 s!7408)) e!4215786)))

(declare-fun b!7013310 () Bool)

(assert (=> b!7013310 (= e!4215786 (nullableZipper!2493 lt!2506781))))

(declare-fun b!7013311 () Bool)

(assert (=> b!7013311 (= e!4215786 (matchZipper!2874 (derivationStepZipper!2814 lt!2506781 (head!14179 (t!381302 s!7408))) (tail!13416 (t!381302 s!7408))))))

(assert (= (and d!2185967 c!1302825) b!7013310))

(assert (= (and d!2185967 (not c!1302825)) b!7013311))

(declare-fun m!7712302 () Bool)

(assert (=> d!2185967 m!7712302))

(declare-fun m!7712304 () Bool)

(assert (=> b!7013310 m!7712304))

(declare-fun m!7712306 () Bool)

(assert (=> b!7013311 m!7712306))

(assert (=> b!7013311 m!7712306))

(declare-fun m!7712308 () Bool)

(assert (=> b!7013311 m!7712308))

(declare-fun m!7712310 () Bool)

(assert (=> b!7013311 m!7712310))

(assert (=> b!7013311 m!7712308))

(assert (=> b!7013311 m!7712310))

(declare-fun m!7712312 () Bool)

(assert (=> b!7013311 m!7712312))

(assert (=> b!7013150 d!2185967))

(declare-fun d!2185969 () Bool)

(assert (=> d!2185969 (forall!16245 (++!15347 lt!2506783 (exprs!6830 ct2!306)) lambda!409327)))

(declare-fun lt!2506988 () Unit!161346)

(assert (=> d!2185969 (= lt!2506988 (choose!52748 lt!2506783 (exprs!6830 ct2!306) lambda!409327))))

(assert (=> d!2185969 (forall!16245 lt!2506783 lambda!409327)))

(assert (=> d!2185969 (= (lemmaConcatPreservesForall!670 lt!2506783 (exprs!6830 ct2!306) lambda!409327) lt!2506988)))

(declare-fun bs!1866364 () Bool)

(assert (= bs!1866364 d!2185969))

(assert (=> bs!1866364 m!7712054))

(assert (=> bs!1866364 m!7712054))

(declare-fun m!7712314 () Bool)

(assert (=> bs!1866364 m!7712314))

(declare-fun m!7712316 () Bool)

(assert (=> bs!1866364 m!7712316))

(declare-fun m!7712318 () Bool)

(assert (=> bs!1866364 m!7712318))

(assert (=> b!7013150 d!2185969))

(declare-fun d!2185971 () Bool)

(declare-fun e!4215789 () Bool)

(assert (=> d!2185971 e!4215789))

(declare-fun res!2862253 () Bool)

(assert (=> d!2185971 (=> (not res!2862253) (not e!4215789))))

(declare-fun lt!2506991 () List!67549)

(declare-fun noDuplicate!2571 (List!67549) Bool)

(assert (=> d!2185971 (= res!2862253 (noDuplicate!2571 lt!2506991))))

(declare-fun choose!52752 ((Set Context!12660)) List!67549)

(assert (=> d!2185971 (= lt!2506991 (choose!52752 lt!2506774))))

(assert (=> d!2185971 (= (toList!10694 lt!2506774) lt!2506991)))

(declare-fun b!7013314 () Bool)

(assert (=> b!7013314 (= e!4215789 (= (content!13390 lt!2506991) lt!2506774))))

(assert (= (and d!2185971 res!2862253) b!7013314))

(declare-fun m!7712320 () Bool)

(assert (=> d!2185971 m!7712320))

(declare-fun m!7712322 () Bool)

(assert (=> d!2185971 m!7712322))

(declare-fun m!7712324 () Bool)

(assert (=> b!7013314 m!7712324))

(assert (=> b!7013151 d!2185971))

(declare-fun d!2185973 () Bool)

(declare-fun e!4215792 () Bool)

(assert (=> d!2185973 e!4215792))

(declare-fun res!2862256 () Bool)

(assert (=> d!2185973 (=> (not res!2862256) (not e!4215792))))

(declare-fun lt!2506994 () Context!12660)

(declare-fun dynLambda!27124 (Int Context!12660) Bool)

(assert (=> d!2185973 (= res!2862256 (dynLambda!27124 lambda!409325 lt!2506994))))

(declare-fun getWitness!1283 (List!67549 Int) Context!12660)

(assert (=> d!2185973 (= lt!2506994 (getWitness!1283 (toList!10694 lt!2506774) lambda!409325))))

(assert (=> d!2185973 (exists!3187 lt!2506774 lambda!409325)))

(assert (=> d!2185973 (= (getWitness!1281 lt!2506774 lambda!409325) lt!2506994)))

(declare-fun b!7013317 () Bool)

(assert (=> b!7013317 (= e!4215792 (set.member lt!2506994 lt!2506774))))

(assert (= (and d!2185973 res!2862256) b!7013317))

(declare-fun b_lambda!264459 () Bool)

(assert (=> (not b_lambda!264459) (not d!2185973)))

(declare-fun m!7712326 () Bool)

(assert (=> d!2185973 m!7712326))

(assert (=> d!2185973 m!7711968))

(assert (=> d!2185973 m!7711968))

(declare-fun m!7712328 () Bool)

(assert (=> d!2185973 m!7712328))

(declare-fun m!7712330 () Bool)

(assert (=> d!2185973 m!7712330))

(declare-fun m!7712332 () Bool)

(assert (=> b!7013317 m!7712332))

(assert (=> b!7013151 d!2185973))

(declare-fun bs!1866365 () Bool)

(declare-fun d!2185975 () Bool)

(assert (= bs!1866365 (and d!2185975 b!7013151)))

(declare-fun lambda!409390 () Int)

(assert (=> bs!1866365 (= lambda!409390 lambda!409325)))

(declare-fun bs!1866366 () Bool)

(assert (= bs!1866366 (and d!2185975 b!7013145)))

(assert (=> bs!1866366 (= (= s!7408 lt!2506767) (= lambda!409390 lambda!409329))))

(assert (=> d!2185975 true))

(assert (=> d!2185975 (exists!3188 lt!2506782 lambda!409390)))

(declare-fun lt!2506997 () Unit!161346)

(declare-fun choose!52753 (List!67549 List!67547) Unit!161346)

(assert (=> d!2185975 (= lt!2506997 (choose!52753 lt!2506782 s!7408))))

(assert (=> d!2185975 (matchZipper!2874 (content!13390 lt!2506782) s!7408)))

(assert (=> d!2185975 (= (lemmaZipperMatchesExistsMatchingContext!303 lt!2506782 s!7408) lt!2506997)))

(declare-fun bs!1866367 () Bool)

(assert (= bs!1866367 d!2185975))

(declare-fun m!7712334 () Bool)

(assert (=> bs!1866367 m!7712334))

(declare-fun m!7712336 () Bool)

(assert (=> bs!1866367 m!7712336))

(declare-fun m!7712338 () Bool)

(assert (=> bs!1866367 m!7712338))

(assert (=> bs!1866367 m!7712338))

(declare-fun m!7712340 () Bool)

(assert (=> bs!1866367 m!7712340))

(assert (=> b!7013151 d!2185975))

(declare-fun d!2185977 () Bool)

(declare-fun c!1302828 () Bool)

(assert (=> d!2185977 (= c!1302828 (isEmpty!39378 s!7408))))

(declare-fun e!4215793 () Bool)

(assert (=> d!2185977 (= (matchZipper!2874 lt!2506768 s!7408) e!4215793)))

(declare-fun b!7013318 () Bool)

(assert (=> b!7013318 (= e!4215793 (nullableZipper!2493 lt!2506768))))

(declare-fun b!7013319 () Bool)

(assert (=> b!7013319 (= e!4215793 (matchZipper!2874 (derivationStepZipper!2814 lt!2506768 (head!14179 s!7408)) (tail!13416 s!7408)))))

(assert (= (and d!2185977 c!1302828) b!7013318))

(assert (= (and d!2185977 (not c!1302828)) b!7013319))

(assert (=> d!2185977 m!7712196))

(declare-fun m!7712342 () Bool)

(assert (=> b!7013318 m!7712342))

(assert (=> b!7013319 m!7712200))

(assert (=> b!7013319 m!7712200))

(declare-fun m!7712344 () Bool)

(assert (=> b!7013319 m!7712344))

(assert (=> b!7013319 m!7712204))

(assert (=> b!7013319 m!7712344))

(assert (=> b!7013319 m!7712204))

(declare-fun m!7712346 () Bool)

(assert (=> b!7013319 m!7712346))

(assert (=> b!7013151 d!2185977))

(declare-fun bs!1866368 () Bool)

(declare-fun d!2185979 () Bool)

(assert (= bs!1866368 (and d!2185979 b!7013151)))

(declare-fun lambda!409393 () Int)

(assert (=> bs!1866368 (not (= lambda!409393 lambda!409325))))

(declare-fun bs!1866369 () Bool)

(assert (= bs!1866369 (and d!2185979 b!7013145)))

(assert (=> bs!1866369 (not (= lambda!409393 lambda!409329))))

(declare-fun bs!1866370 () Bool)

(assert (= bs!1866370 (and d!2185979 d!2185975)))

(assert (=> bs!1866370 (not (= lambda!409393 lambda!409390))))

(assert (=> d!2185979 true))

(declare-fun order!28043 () Int)

(declare-fun dynLambda!27125 (Int Int) Int)

(assert (=> d!2185979 (< (dynLambda!27125 order!28043 lambda!409325) (dynLambda!27125 order!28043 lambda!409393))))

(declare-fun forall!16246 (List!67549 Int) Bool)

(assert (=> d!2185979 (= (exists!3188 lt!2506782 lambda!409325) (not (forall!16246 lt!2506782 lambda!409393)))))

(declare-fun bs!1866371 () Bool)

(assert (= bs!1866371 d!2185979))

(declare-fun m!7712348 () Bool)

(assert (=> bs!1866371 m!7712348))

(assert (=> b!7013151 d!2185979))

(assert (=> b!7013146 d!2185967))

(assert (=> b!7013146 d!2185969))

(declare-fun bs!1866372 () Bool)

(declare-fun d!2185981 () Bool)

(assert (= bs!1866372 (and d!2185981 b!7013142)))

(declare-fun lambda!409396 () Int)

(assert (=> bs!1866372 (= lambda!409396 lambda!409327)))

(declare-fun bs!1866373 () Bool)

(assert (= bs!1866373 (and d!2185981 d!2185937)))

(assert (=> bs!1866373 (= lambda!409396 lambda!409384)))

(assert (=> d!2185981 (= (derivationStepZipperDown!2052 (h!73872 (exprs!6830 lt!2506788)) (Context!12661 (++!15347 (exprs!6830 lt!2506790) (exprs!6830 ct2!306))) (h!73871 s!7408)) (appendTo!455 (derivationStepZipperDown!2052 (h!73872 (exprs!6830 lt!2506788)) lt!2506790 (h!73871 s!7408)) ct2!306))))

(declare-fun lt!2507003 () Unit!161346)

(assert (=> d!2185981 (= lt!2507003 (lemmaConcatPreservesForall!670 (exprs!6830 lt!2506790) (exprs!6830 ct2!306) lambda!409396))))

(declare-fun lt!2507002 () Unit!161346)

(declare-fun choose!52754 (Context!12660 Regex!17334 C!34938 Context!12660) Unit!161346)

(assert (=> d!2185981 (= lt!2507002 (choose!52754 lt!2506790 (h!73872 (exprs!6830 lt!2506788)) (h!73871 s!7408) ct2!306))))

(declare-fun validRegex!8895 (Regex!17334) Bool)

(assert (=> d!2185981 (validRegex!8895 (h!73872 (exprs!6830 lt!2506788)))))

(assert (=> d!2185981 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!33 lt!2506790 (h!73872 (exprs!6830 lt!2506788)) (h!73871 s!7408) ct2!306) lt!2507002)))

(declare-fun bs!1866374 () Bool)

(assert (= bs!1866374 d!2185981))

(declare-fun m!7712350 () Bool)

(assert (=> bs!1866374 m!7712350))

(assert (=> bs!1866374 m!7711944))

(declare-fun m!7712352 () Bool)

(assert (=> bs!1866374 m!7712352))

(declare-fun m!7712354 () Bool)

(assert (=> bs!1866374 m!7712354))

(declare-fun m!7712356 () Bool)

(assert (=> bs!1866374 m!7712356))

(declare-fun m!7712358 () Bool)

(assert (=> bs!1866374 m!7712358))

(declare-fun m!7712360 () Bool)

(assert (=> bs!1866374 m!7712360))

(assert (=> bs!1866374 m!7711944))

(assert (=> b!7013137 d!2185981))

(declare-fun d!2185983 () Bool)

(assert (=> d!2185983 (= (get!23648 lt!2506791) (v!53096 lt!2506791))))

(assert (=> b!7013137 d!2185983))

(declare-fun d!2185985 () Bool)

(declare-fun isEmpty!39379 (Option!16819) Bool)

(assert (=> d!2185985 (= (isDefined!13520 lt!2506791) (not (isEmpty!39379 lt!2506791)))))

(declare-fun bs!1866375 () Bool)

(assert (= bs!1866375 d!2185985))

(declare-fun m!7712362 () Bool)

(assert (=> bs!1866375 m!7712362))

(assert (=> b!7013137 d!2185985))

(declare-fun bs!1866376 () Bool)

(declare-fun d!2185987 () Bool)

(assert (= bs!1866376 (and d!2185987 b!7013142)))

(declare-fun lambda!409397 () Int)

(assert (=> bs!1866376 (= lambda!409397 lambda!409326)))

(declare-fun bs!1866377 () Bool)

(assert (= bs!1866377 (and d!2185987 d!2185935)))

(assert (=> bs!1866377 (= lambda!409397 lambda!409381)))

(assert (=> d!2185987 true))

(assert (=> d!2185987 (= (appendTo!455 lt!2506778 ct2!306) (map!15624 lt!2506778 lambda!409397))))

(declare-fun bs!1866378 () Bool)

(assert (= bs!1866378 d!2185987))

(declare-fun m!7712364 () Bool)

(assert (=> bs!1866378 m!7712364))

(assert (=> b!7013137 d!2185987))

(assert (=> b!7013137 d!2185969))

(declare-fun d!2185989 () Bool)

(declare-fun c!1302830 () Bool)

(assert (=> d!2185989 (= c!1302830 (isEmpty!39378 (_1!37290 lt!2506775)))))

(declare-fun e!4215794 () Bool)

(assert (=> d!2185989 (= (matchZipper!2874 lt!2506778 (_1!37290 lt!2506775)) e!4215794)))

(declare-fun b!7013322 () Bool)

(assert (=> b!7013322 (= e!4215794 (nullableZipper!2493 lt!2506778))))

(declare-fun b!7013323 () Bool)

(assert (=> b!7013323 (= e!4215794 (matchZipper!2874 (derivationStepZipper!2814 lt!2506778 (head!14179 (_1!37290 lt!2506775))) (tail!13416 (_1!37290 lt!2506775))))))

(assert (= (and d!2185989 c!1302830) b!7013322))

(assert (= (and d!2185989 (not c!1302830)) b!7013323))

(assert (=> d!2185989 m!7712244))

(declare-fun m!7712366 () Bool)

(assert (=> b!7013322 m!7712366))

(assert (=> b!7013323 m!7712248))

(assert (=> b!7013323 m!7712248))

(declare-fun m!7712368 () Bool)

(assert (=> b!7013323 m!7712368))

(assert (=> b!7013323 m!7712252))

(assert (=> b!7013323 m!7712368))

(assert (=> b!7013323 m!7712252))

(declare-fun m!7712370 () Bool)

(assert (=> b!7013323 m!7712370))

(assert (=> b!7013137 d!2185989))

(declare-fun d!2185991 () Bool)

(assert (=> d!2185991 (isDefined!13520 (findConcatSeparationZippers!335 lt!2506778 (set.insert ct2!306 (as set.empty (Set Context!12660))) Nil!67423 (t!381302 s!7408) (t!381302 s!7408)))))

(declare-fun lt!2507006 () Unit!161346)

(declare-fun choose!52755 ((Set Context!12660) Context!12660 List!67547) Unit!161346)

(assert (=> d!2185991 (= lt!2507006 (choose!52755 lt!2506778 ct2!306 (t!381302 s!7408)))))

(assert (=> d!2185991 (matchZipper!2874 (appendTo!455 lt!2506778 ct2!306) (t!381302 s!7408))))

(assert (=> d!2185991 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!335 lt!2506778 ct2!306 (t!381302 s!7408)) lt!2507006)))

(declare-fun bs!1866379 () Bool)

(assert (= bs!1866379 d!2185991))

(assert (=> bs!1866379 m!7711958))

(assert (=> bs!1866379 m!7711958))

(declare-fun m!7712372 () Bool)

(assert (=> bs!1866379 m!7712372))

(assert (=> bs!1866379 m!7712372))

(declare-fun m!7712374 () Bool)

(assert (=> bs!1866379 m!7712374))

(assert (=> bs!1866379 m!7711960))

(declare-fun m!7712376 () Bool)

(assert (=> bs!1866379 m!7712376))

(declare-fun m!7712378 () Bool)

(assert (=> bs!1866379 m!7712378))

(assert (=> bs!1866379 m!7711960))

(assert (=> b!7013137 d!2185991))

(declare-fun b!7013342 () Bool)

(declare-fun e!4215807 () Option!16819)

(assert (=> b!7013342 (= e!4215807 None!16818)))

(declare-fun d!2185993 () Bool)

(declare-fun e!4215809 () Bool)

(assert (=> d!2185993 e!4215809))

(declare-fun res!2862269 () Bool)

(assert (=> d!2185993 (=> res!2862269 e!4215809)))

(declare-fun e!4215805 () Bool)

(assert (=> d!2185993 (= res!2862269 e!4215805)))

(declare-fun res!2862271 () Bool)

(assert (=> d!2185993 (=> (not res!2862271) (not e!4215805))))

(declare-fun lt!2507015 () Option!16819)

(assert (=> d!2185993 (= res!2862271 (isDefined!13520 lt!2507015))))

(declare-fun e!4215806 () Option!16819)

(assert (=> d!2185993 (= lt!2507015 e!4215806)))

(declare-fun c!1302835 () Bool)

(declare-fun e!4215808 () Bool)

(assert (=> d!2185993 (= c!1302835 e!4215808)))

(declare-fun res!2862267 () Bool)

(assert (=> d!2185993 (=> (not res!2862267) (not e!4215808))))

(assert (=> d!2185993 (= res!2862267 (matchZipper!2874 lt!2506778 Nil!67423))))

(assert (=> d!2185993 (= (++!15348 Nil!67423 (t!381302 s!7408)) (t!381302 s!7408))))

(assert (=> d!2185993 (= (findConcatSeparationZippers!335 lt!2506778 lt!2506796 Nil!67423 (t!381302 s!7408) (t!381302 s!7408)) lt!2507015)))

(declare-fun b!7013343 () Bool)

(assert (=> b!7013343 (= e!4215809 (not (isDefined!13520 lt!2507015)))))

(declare-fun b!7013344 () Bool)

(declare-fun res!2862268 () Bool)

(assert (=> b!7013344 (=> (not res!2862268) (not e!4215805))))

(assert (=> b!7013344 (= res!2862268 (matchZipper!2874 lt!2506796 (_2!37290 (get!23648 lt!2507015))))))

(declare-fun b!7013345 () Bool)

(assert (=> b!7013345 (= e!4215805 (= (++!15348 (_1!37290 (get!23648 lt!2507015)) (_2!37290 (get!23648 lt!2507015))) (t!381302 s!7408)))))

(declare-fun b!7013346 () Bool)

(declare-fun lt!2507014 () Unit!161346)

(declare-fun lt!2507013 () Unit!161346)

(assert (=> b!7013346 (= lt!2507014 lt!2507013)))

(assert (=> b!7013346 (= (++!15348 (++!15348 Nil!67423 (Cons!67423 (h!73871 (t!381302 s!7408)) Nil!67423)) (t!381302 (t!381302 s!7408))) (t!381302 s!7408))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2899 (List!67547 C!34938 List!67547 List!67547) Unit!161346)

(assert (=> b!7013346 (= lt!2507013 (lemmaMoveElementToOtherListKeepsConcatEq!2899 Nil!67423 (h!73871 (t!381302 s!7408)) (t!381302 (t!381302 s!7408)) (t!381302 s!7408)))))

(assert (=> b!7013346 (= e!4215807 (findConcatSeparationZippers!335 lt!2506778 lt!2506796 (++!15348 Nil!67423 (Cons!67423 (h!73871 (t!381302 s!7408)) Nil!67423)) (t!381302 (t!381302 s!7408)) (t!381302 s!7408)))))

(declare-fun b!7013347 () Bool)

(assert (=> b!7013347 (= e!4215806 e!4215807)))

(declare-fun c!1302836 () Bool)

(assert (=> b!7013347 (= c!1302836 (is-Nil!67423 (t!381302 s!7408)))))

(declare-fun b!7013348 () Bool)

(assert (=> b!7013348 (= e!4215806 (Some!16818 (tuple2!67975 Nil!67423 (t!381302 s!7408))))))

(declare-fun b!7013349 () Bool)

(assert (=> b!7013349 (= e!4215808 (matchZipper!2874 lt!2506796 (t!381302 s!7408)))))

(declare-fun b!7013350 () Bool)

(declare-fun res!2862270 () Bool)

(assert (=> b!7013350 (=> (not res!2862270) (not e!4215805))))

(assert (=> b!7013350 (= res!2862270 (matchZipper!2874 lt!2506778 (_1!37290 (get!23648 lt!2507015))))))

(assert (= (and d!2185993 res!2862267) b!7013349))

(assert (= (and d!2185993 c!1302835) b!7013348))

(assert (= (and d!2185993 (not c!1302835)) b!7013347))

(assert (= (and b!7013347 c!1302836) b!7013342))

(assert (= (and b!7013347 (not c!1302836)) b!7013346))

(assert (= (and d!2185993 res!2862271) b!7013350))

(assert (= (and b!7013350 res!2862270) b!7013344))

(assert (= (and b!7013344 res!2862268) b!7013345))

(assert (= (and d!2185993 (not res!2862269)) b!7013343))

(declare-fun m!7712380 () Bool)

(assert (=> b!7013345 m!7712380))

(declare-fun m!7712382 () Bool)

(assert (=> b!7013345 m!7712382))

(assert (=> b!7013344 m!7712380))

(declare-fun m!7712384 () Bool)

(assert (=> b!7013344 m!7712384))

(declare-fun m!7712386 () Bool)

(assert (=> d!2185993 m!7712386))

(declare-fun m!7712388 () Bool)

(assert (=> d!2185993 m!7712388))

(declare-fun m!7712390 () Bool)

(assert (=> d!2185993 m!7712390))

(declare-fun m!7712392 () Bool)

(assert (=> b!7013346 m!7712392))

(assert (=> b!7013346 m!7712392))

(declare-fun m!7712394 () Bool)

(assert (=> b!7013346 m!7712394))

(declare-fun m!7712396 () Bool)

(assert (=> b!7013346 m!7712396))

(assert (=> b!7013346 m!7712392))

(declare-fun m!7712398 () Bool)

(assert (=> b!7013346 m!7712398))

(assert (=> b!7013343 m!7712386))

(assert (=> b!7013350 m!7712380))

(declare-fun m!7712400 () Bool)

(assert (=> b!7013350 m!7712400))

(declare-fun m!7712402 () Bool)

(assert (=> b!7013349 m!7712402))

(assert (=> b!7013137 d!2185993))

(declare-fun b!7013373 () Bool)

(declare-fun c!1302851 () Bool)

(declare-fun e!4215827 () Bool)

(assert (=> b!7013373 (= c!1302851 e!4215827)))

(declare-fun res!2862274 () Bool)

(assert (=> b!7013373 (=> (not res!2862274) (not e!4215827))))

(assert (=> b!7013373 (= res!2862274 (is-Concat!26179 (h!73872 (exprs!6830 lt!2506788))))))

(declare-fun e!4215823 () (Set Context!12660))

(declare-fun e!4215826 () (Set Context!12660))

(assert (=> b!7013373 (= e!4215823 e!4215826)))

(declare-fun call!636965 () List!67548)

(declare-fun c!1302849 () Bool)

(declare-fun bm!636956 () Bool)

(declare-fun $colon$colon!2534 (List!67548 Regex!17334) List!67548)

(assert (=> bm!636956 (= call!636965 ($colon$colon!2534 (exprs!6830 lt!2506790) (ite (or c!1302851 c!1302849) (regTwo!35180 (h!73872 (exprs!6830 lt!2506788))) (h!73872 (exprs!6830 lt!2506788)))))))

(declare-fun b!7013374 () Bool)

(assert (=> b!7013374 (= e!4215827 (nullable!7094 (regOne!35180 (h!73872 (exprs!6830 lt!2506788)))))))

(declare-fun bm!636957 () Bool)

(declare-fun call!636966 () (Set Context!12660))

(declare-fun c!1302850 () Bool)

(assert (=> bm!636957 (= call!636966 (derivationStepZipperDown!2052 (ite c!1302850 (regOne!35181 (h!73872 (exprs!6830 lt!2506788))) (regOne!35180 (h!73872 (exprs!6830 lt!2506788)))) (ite c!1302850 lt!2506790 (Context!12661 call!636965)) (h!73871 s!7408)))))

(declare-fun b!7013375 () Bool)

(declare-fun e!4215822 () (Set Context!12660))

(declare-fun call!636961 () (Set Context!12660))

(assert (=> b!7013375 (= e!4215822 call!636961)))

(declare-fun b!7013376 () Bool)

(assert (=> b!7013376 (= e!4215826 e!4215822)))

(assert (=> b!7013376 (= c!1302849 (is-Concat!26179 (h!73872 (exprs!6830 lt!2506788))))))

(declare-fun b!7013377 () Bool)

(declare-fun e!4215825 () (Set Context!12660))

(assert (=> b!7013377 (= e!4215825 (set.insert lt!2506790 (as set.empty (Set Context!12660))))))

(declare-fun b!7013378 () Bool)

(declare-fun e!4215824 () (Set Context!12660))

(assert (=> b!7013378 (= e!4215824 call!636961)))

(declare-fun b!7013379 () Bool)

(assert (=> b!7013379 (= e!4215825 e!4215823)))

(assert (=> b!7013379 (= c!1302850 (is-Union!17334 (h!73872 (exprs!6830 lt!2506788))))))

(declare-fun b!7013380 () Bool)

(declare-fun call!636962 () (Set Context!12660))

(assert (=> b!7013380 (= e!4215823 (set.union call!636966 call!636962))))

(declare-fun bm!636958 () Bool)

(declare-fun call!636963 () (Set Context!12660))

(assert (=> bm!636958 (= call!636961 call!636963)))

(declare-fun call!636964 () List!67548)

(declare-fun bm!636959 () Bool)

(assert (=> bm!636959 (= call!636962 (derivationStepZipperDown!2052 (ite c!1302850 (regTwo!35181 (h!73872 (exprs!6830 lt!2506788))) (ite c!1302851 (regTwo!35180 (h!73872 (exprs!6830 lt!2506788))) (ite c!1302849 (regOne!35180 (h!73872 (exprs!6830 lt!2506788))) (reg!17663 (h!73872 (exprs!6830 lt!2506788)))))) (ite (or c!1302850 c!1302851) lt!2506790 (Context!12661 call!636964)) (h!73871 s!7408)))))

(declare-fun b!7013381 () Bool)

(assert (=> b!7013381 (= e!4215826 (set.union call!636966 call!636963))))

(declare-fun d!2185995 () Bool)

(declare-fun c!1302847 () Bool)

(assert (=> d!2185995 (= c!1302847 (and (is-ElementMatch!17334 (h!73872 (exprs!6830 lt!2506788))) (= (c!1302789 (h!73872 (exprs!6830 lt!2506788))) (h!73871 s!7408))))))

(assert (=> d!2185995 (= (derivationStepZipperDown!2052 (h!73872 (exprs!6830 lt!2506788)) lt!2506790 (h!73871 s!7408)) e!4215825)))

(declare-fun bm!636960 () Bool)

(assert (=> bm!636960 (= call!636964 call!636965)))

(declare-fun b!7013382 () Bool)

(assert (=> b!7013382 (= e!4215824 (as set.empty (Set Context!12660)))))

(declare-fun bm!636961 () Bool)

(assert (=> bm!636961 (= call!636963 call!636962)))

(declare-fun b!7013383 () Bool)

(declare-fun c!1302848 () Bool)

(assert (=> b!7013383 (= c!1302848 (is-Star!17334 (h!73872 (exprs!6830 lt!2506788))))))

(assert (=> b!7013383 (= e!4215822 e!4215824)))

(assert (= (and d!2185995 c!1302847) b!7013377))

(assert (= (and d!2185995 (not c!1302847)) b!7013379))

(assert (= (and b!7013379 c!1302850) b!7013380))

(assert (= (and b!7013379 (not c!1302850)) b!7013373))

(assert (= (and b!7013373 res!2862274) b!7013374))

(assert (= (and b!7013373 c!1302851) b!7013381))

(assert (= (and b!7013373 (not c!1302851)) b!7013376))

(assert (= (and b!7013376 c!1302849) b!7013375))

(assert (= (and b!7013376 (not c!1302849)) b!7013383))

(assert (= (and b!7013383 c!1302848) b!7013378))

(assert (= (and b!7013383 (not c!1302848)) b!7013382))

(assert (= (or b!7013375 b!7013378) bm!636960))

(assert (= (or b!7013375 b!7013378) bm!636958))

(assert (= (or b!7013381 bm!636958) bm!636961))

(assert (= (or b!7013381 bm!636960) bm!636956))

(assert (= (or b!7013380 b!7013381) bm!636957))

(assert (= (or b!7013380 bm!636961) bm!636959))

(declare-fun m!7712404 () Bool)

(assert (=> b!7013377 m!7712404))

(declare-fun m!7712406 () Bool)

(assert (=> bm!636959 m!7712406))

(declare-fun m!7712408 () Bool)

(assert (=> bm!636956 m!7712408))

(declare-fun m!7712410 () Bool)

(assert (=> bm!636957 m!7712410))

(declare-fun m!7712412 () Bool)

(assert (=> b!7013374 m!7712412))

(assert (=> b!7013137 d!2185995))

(assert (=> b!7013147 d!2185945))

(declare-fun d!2185997 () Bool)

(declare-fun e!4215830 () Bool)

(assert (=> d!2185997 (= (matchZipper!2874 (set.union lt!2506801 lt!2506781) (t!381302 s!7408)) e!4215830)))

(declare-fun res!2862277 () Bool)

(assert (=> d!2185997 (=> res!2862277 e!4215830)))

(assert (=> d!2185997 (= res!2862277 (matchZipper!2874 lt!2506801 (t!381302 s!7408)))))

(declare-fun lt!2507018 () Unit!161346)

(declare-fun choose!52756 ((Set Context!12660) (Set Context!12660) List!67547) Unit!161346)

(assert (=> d!2185997 (= lt!2507018 (choose!52756 lt!2506801 lt!2506781 (t!381302 s!7408)))))

(assert (=> d!2185997 (= (lemmaZipperConcatMatchesSameAsBothZippers!1507 lt!2506801 lt!2506781 (t!381302 s!7408)) lt!2507018)))

(declare-fun b!7013386 () Bool)

(assert (=> b!7013386 (= e!4215830 (matchZipper!2874 lt!2506781 (t!381302 s!7408)))))

(assert (= (and d!2185997 (not res!2862277)) b!7013386))

(declare-fun m!7712414 () Bool)

(assert (=> d!2185997 m!7712414))

(assert (=> d!2185997 m!7712044))

(declare-fun m!7712416 () Bool)

(assert (=> d!2185997 m!7712416))

(assert (=> b!7013386 m!7712018))

(assert (=> b!7013128 d!2185997))

(declare-fun d!2185999 () Bool)

(declare-fun c!1302852 () Bool)

(assert (=> d!2185999 (= c!1302852 (isEmpty!39378 (t!381302 s!7408)))))

(declare-fun e!4215831 () Bool)

(assert (=> d!2185999 (= (matchZipper!2874 lt!2506780 (t!381302 s!7408)) e!4215831)))

(declare-fun b!7013387 () Bool)

(assert (=> b!7013387 (= e!4215831 (nullableZipper!2493 lt!2506780))))

(declare-fun b!7013388 () Bool)

(assert (=> b!7013388 (= e!4215831 (matchZipper!2874 (derivationStepZipper!2814 lt!2506780 (head!14179 (t!381302 s!7408))) (tail!13416 (t!381302 s!7408))))))

(assert (= (and d!2185999 c!1302852) b!7013387))

(assert (= (and d!2185999 (not c!1302852)) b!7013388))

(assert (=> d!2185999 m!7712302))

(declare-fun m!7712418 () Bool)

(assert (=> b!7013387 m!7712418))

(assert (=> b!7013388 m!7712306))

(assert (=> b!7013388 m!7712306))

(declare-fun m!7712420 () Bool)

(assert (=> b!7013388 m!7712420))

(assert (=> b!7013388 m!7712310))

(assert (=> b!7013388 m!7712420))

(assert (=> b!7013388 m!7712310))

(declare-fun m!7712422 () Bool)

(assert (=> b!7013388 m!7712422))

(assert (=> b!7013128 d!2185999))

(declare-fun d!2186001 () Bool)

(declare-fun c!1302853 () Bool)

(assert (=> d!2186001 (= c!1302853 (isEmpty!39378 (t!381302 s!7408)))))

(declare-fun e!4215832 () Bool)

(assert (=> d!2186001 (= (matchZipper!2874 lt!2506771 (t!381302 s!7408)) e!4215832)))

(declare-fun b!7013389 () Bool)

(assert (=> b!7013389 (= e!4215832 (nullableZipper!2493 lt!2506771))))

(declare-fun b!7013390 () Bool)

(assert (=> b!7013390 (= e!4215832 (matchZipper!2874 (derivationStepZipper!2814 lt!2506771 (head!14179 (t!381302 s!7408))) (tail!13416 (t!381302 s!7408))))))

(assert (= (and d!2186001 c!1302853) b!7013389))

(assert (= (and d!2186001 (not c!1302853)) b!7013390))

(assert (=> d!2186001 m!7712302))

(declare-fun m!7712424 () Bool)

(assert (=> b!7013389 m!7712424))

(assert (=> b!7013390 m!7712306))

(assert (=> b!7013390 m!7712306))

(declare-fun m!7712426 () Bool)

(assert (=> b!7013390 m!7712426))

(assert (=> b!7013390 m!7712310))

(assert (=> b!7013390 m!7712426))

(assert (=> b!7013390 m!7712310))

(declare-fun m!7712428 () Bool)

(assert (=> b!7013390 m!7712428))

(assert (=> b!7013128 d!2186001))

(declare-fun d!2186003 () Bool)

(declare-fun c!1302854 () Bool)

(assert (=> d!2186003 (= c!1302854 (isEmpty!39378 (t!381302 s!7408)))))

(declare-fun e!4215833 () Bool)

(assert (=> d!2186003 (= (matchZipper!2874 lt!2506801 (t!381302 s!7408)) e!4215833)))

(declare-fun b!7013391 () Bool)

(assert (=> b!7013391 (= e!4215833 (nullableZipper!2493 lt!2506801))))

(declare-fun b!7013392 () Bool)

(assert (=> b!7013392 (= e!4215833 (matchZipper!2874 (derivationStepZipper!2814 lt!2506801 (head!14179 (t!381302 s!7408))) (tail!13416 (t!381302 s!7408))))))

(assert (= (and d!2186003 c!1302854) b!7013391))

(assert (= (and d!2186003 (not c!1302854)) b!7013392))

(assert (=> d!2186003 m!7712302))

(declare-fun m!7712430 () Bool)

(assert (=> b!7013391 m!7712430))

(assert (=> b!7013392 m!7712306))

(assert (=> b!7013392 m!7712306))

(declare-fun m!7712432 () Bool)

(assert (=> b!7013392 m!7712432))

(assert (=> b!7013392 m!7712310))

(assert (=> b!7013392 m!7712432))

(assert (=> b!7013392 m!7712310))

(declare-fun m!7712434 () Bool)

(assert (=> b!7013392 m!7712434))

(assert (=> b!7013128 d!2186003))

(assert (=> b!7013128 d!2185969))

(assert (=> b!7013138 d!2185967))

(assert (=> b!7013148 d!2185969))

(declare-fun bs!1866380 () Bool)

(declare-fun d!2186005 () Bool)

(assert (= bs!1866380 (and d!2186005 b!7013142)))

(declare-fun lambda!409398 () Int)

(assert (=> bs!1866380 (= lambda!409398 lambda!409327)))

(declare-fun bs!1866381 () Bool)

(assert (= bs!1866381 (and d!2186005 d!2185937)))

(assert (=> bs!1866381 (= lambda!409398 lambda!409384)))

(declare-fun bs!1866382 () Bool)

(assert (= bs!1866382 (and d!2186005 d!2185981)))

(assert (=> bs!1866382 (= lambda!409398 lambda!409396)))

(assert (=> d!2186005 (= (inv!86195 setElem!48425) (forall!16245 (exprs!6830 setElem!48425) lambda!409398))))

(declare-fun bs!1866383 () Bool)

(assert (= bs!1866383 d!2186005))

(declare-fun m!7712436 () Bool)

(assert (=> bs!1866383 m!7712436))

(assert (=> setNonEmpty!48425 d!2186005))

(declare-fun d!2186007 () Bool)

(assert (=> d!2186007 (= (flatMap!2320 lt!2506764 lambda!409328) (choose!52751 lt!2506764 lambda!409328))))

(declare-fun bs!1866384 () Bool)

(assert (= bs!1866384 d!2186007))

(declare-fun m!7712438 () Bool)

(assert (=> bs!1866384 m!7712438))

(assert (=> b!7013144 d!2186007))

(declare-fun b!7013393 () Bool)

(declare-fun e!4215836 () (Set Context!12660))

(declare-fun e!4215834 () (Set Context!12660))

(assert (=> b!7013393 (= e!4215836 e!4215834)))

(declare-fun c!1302856 () Bool)

(assert (=> b!7013393 (= c!1302856 (is-Cons!67424 (exprs!6830 lt!2506788)))))

(declare-fun b!7013394 () Bool)

(declare-fun e!4215835 () Bool)

(assert (=> b!7013394 (= e!4215835 (nullable!7094 (h!73872 (exprs!6830 lt!2506788))))))

(declare-fun bm!636962 () Bool)

(declare-fun call!636967 () (Set Context!12660))

(assert (=> bm!636962 (= call!636967 (derivationStepZipperDown!2052 (h!73872 (exprs!6830 lt!2506788)) (Context!12661 (t!381303 (exprs!6830 lt!2506788))) (h!73871 s!7408)))))

(declare-fun b!7013395 () Bool)

(assert (=> b!7013395 (= e!4215834 call!636967)))

(declare-fun b!7013396 () Bool)

(assert (=> b!7013396 (= e!4215836 (set.union call!636967 (derivationStepZipperUp!1984 (Context!12661 (t!381303 (exprs!6830 lt!2506788))) (h!73871 s!7408))))))

(declare-fun b!7013397 () Bool)

(assert (=> b!7013397 (= e!4215834 (as set.empty (Set Context!12660)))))

(declare-fun d!2186009 () Bool)

(declare-fun c!1302855 () Bool)

(assert (=> d!2186009 (= c!1302855 e!4215835)))

(declare-fun res!2862278 () Bool)

(assert (=> d!2186009 (=> (not res!2862278) (not e!4215835))))

(assert (=> d!2186009 (= res!2862278 (is-Cons!67424 (exprs!6830 lt!2506788)))))

(assert (=> d!2186009 (= (derivationStepZipperUp!1984 lt!2506788 (h!73871 s!7408)) e!4215836)))

(assert (= (and d!2186009 res!2862278) b!7013394))

(assert (= (and d!2186009 c!1302855) b!7013396))

(assert (= (and d!2186009 (not c!1302855)) b!7013393))

(assert (= (and b!7013393 c!1302856) b!7013395))

(assert (= (and b!7013393 (not c!1302856)) b!7013397))

(assert (= (or b!7013396 b!7013395) bm!636962))

(assert (=> b!7013394 m!7712004))

(declare-fun m!7712440 () Bool)

(assert (=> bm!636962 m!7712440))

(declare-fun m!7712442 () Bool)

(assert (=> b!7013396 m!7712442))

(assert (=> b!7013144 d!2186009))

(declare-fun d!2186011 () Bool)

(assert (=> d!2186011 (= (flatMap!2320 lt!2506764 lambda!409328) (dynLambda!27123 lambda!409328 lt!2506788))))

(declare-fun lt!2507019 () Unit!161346)

(assert (=> d!2186011 (= lt!2507019 (choose!52750 lt!2506764 lt!2506788 lambda!409328))))

(assert (=> d!2186011 (= lt!2506764 (set.insert lt!2506788 (as set.empty (Set Context!12660))))))

(assert (=> d!2186011 (= (lemmaFlatMapOnSingletonSet!1835 lt!2506764 lt!2506788 lambda!409328) lt!2507019)))

(declare-fun b_lambda!264461 () Bool)

(assert (=> (not b_lambda!264461) (not d!2186011)))

(declare-fun bs!1866385 () Bool)

(assert (= bs!1866385 d!2186011))

(assert (=> bs!1866385 m!7712022))

(declare-fun m!7712444 () Bool)

(assert (=> bs!1866385 m!7712444))

(declare-fun m!7712446 () Bool)

(assert (=> bs!1866385 m!7712446))

(assert (=> bs!1866385 m!7712026))

(assert (=> b!7013144 d!2186011))

(declare-fun bs!1866386 () Bool)

(declare-fun d!2186013 () Bool)

(assert (= bs!1866386 (and d!2186013 b!7013140)))

(declare-fun lambda!409399 () Int)

(assert (=> bs!1866386 (= lambda!409399 lambda!409328)))

(declare-fun bs!1866387 () Bool)

(assert (= bs!1866387 (and d!2186013 d!2185961)))

(assert (=> bs!1866387 (= lambda!409399 lambda!409387)))

(assert (=> d!2186013 true))

(assert (=> d!2186013 (= (derivationStepZipper!2814 lt!2506764 (h!73871 s!7408)) (flatMap!2320 lt!2506764 lambda!409399))))

(declare-fun bs!1866388 () Bool)

(assert (= bs!1866388 d!2186013))

(declare-fun m!7712448 () Bool)

(assert (=> bs!1866388 m!7712448))

(assert (=> b!7013144 d!2186013))

(declare-fun d!2186015 () Bool)

(declare-fun c!1302857 () Bool)

(assert (=> d!2186015 (= c!1302857 (isEmpty!39378 lt!2506767))))

(declare-fun e!4215837 () Bool)

(assert (=> d!2186015 (= (matchZipper!2874 lt!2506764 lt!2506767) e!4215837)))

(declare-fun b!7013398 () Bool)

(assert (=> b!7013398 (= e!4215837 (nullableZipper!2493 lt!2506764))))

(declare-fun b!7013399 () Bool)

(assert (=> b!7013399 (= e!4215837 (matchZipper!2874 (derivationStepZipper!2814 lt!2506764 (head!14179 lt!2506767)) (tail!13416 lt!2506767)))))

(assert (= (and d!2186015 c!1302857) b!7013398))

(assert (= (and d!2186015 (not c!1302857)) b!7013399))

(declare-fun m!7712450 () Bool)

(assert (=> d!2186015 m!7712450))

(declare-fun m!7712452 () Bool)

(assert (=> b!7013398 m!7712452))

(declare-fun m!7712454 () Bool)

(assert (=> b!7013399 m!7712454))

(assert (=> b!7013399 m!7712454))

(declare-fun m!7712456 () Bool)

(assert (=> b!7013399 m!7712456))

(declare-fun m!7712458 () Bool)

(assert (=> b!7013399 m!7712458))

(assert (=> b!7013399 m!7712456))

(assert (=> b!7013399 m!7712458))

(declare-fun m!7712460 () Bool)

(assert (=> b!7013399 m!7712460))

(assert (=> b!7013135 d!2186015))

(declare-fun d!2186017 () Bool)

(declare-fun c!1302858 () Bool)

(assert (=> d!2186017 (= c!1302858 (isEmpty!39378 (_1!37290 lt!2506775)))))

(declare-fun e!4215838 () Bool)

(assert (=> d!2186017 (= (matchZipper!2874 lt!2506786 (_1!37290 lt!2506775)) e!4215838)))

(declare-fun b!7013400 () Bool)

(assert (=> b!7013400 (= e!4215838 (nullableZipper!2493 lt!2506786))))

(declare-fun b!7013401 () Bool)

(assert (=> b!7013401 (= e!4215838 (matchZipper!2874 (derivationStepZipper!2814 lt!2506786 (head!14179 (_1!37290 lt!2506775))) (tail!13416 (_1!37290 lt!2506775))))))

(assert (= (and d!2186017 c!1302858) b!7013400))

(assert (= (and d!2186017 (not c!1302858)) b!7013401))

(assert (=> d!2186017 m!7712244))

(declare-fun m!7712462 () Bool)

(assert (=> b!7013400 m!7712462))

(assert (=> b!7013401 m!7712248))

(assert (=> b!7013401 m!7712248))

(declare-fun m!7712464 () Bool)

(assert (=> b!7013401 m!7712464))

(assert (=> b!7013401 m!7712252))

(assert (=> b!7013401 m!7712464))

(assert (=> b!7013401 m!7712252))

(declare-fun m!7712466 () Bool)

(assert (=> b!7013401 m!7712466))

(assert (=> b!7013135 d!2186017))

(declare-fun e!4215839 () Bool)

(declare-fun d!2186019 () Bool)

(assert (=> d!2186019 (= (matchZipper!2874 (set.union lt!2506778 lt!2506760) (_1!37290 lt!2506775)) e!4215839)))

(declare-fun res!2862279 () Bool)

(assert (=> d!2186019 (=> res!2862279 e!4215839)))

(assert (=> d!2186019 (= res!2862279 (matchZipper!2874 lt!2506778 (_1!37290 lt!2506775)))))

(declare-fun lt!2507020 () Unit!161346)

(assert (=> d!2186019 (= lt!2507020 (choose!52756 lt!2506778 lt!2506760 (_1!37290 lt!2506775)))))

(assert (=> d!2186019 (= (lemmaZipperConcatMatchesSameAsBothZippers!1507 lt!2506778 lt!2506760 (_1!37290 lt!2506775)) lt!2507020)))

(declare-fun b!7013402 () Bool)

(assert (=> b!7013402 (= e!4215839 (matchZipper!2874 lt!2506760 (_1!37290 lt!2506775)))))

(assert (= (and d!2186019 (not res!2862279)) b!7013402))

(declare-fun m!7712468 () Bool)

(assert (=> d!2186019 m!7712468))

(assert (=> d!2186019 m!7711952))

(declare-fun m!7712470 () Bool)

(assert (=> d!2186019 m!7712470))

(assert (=> b!7013402 m!7712058))

(assert (=> b!7013135 d!2186019))

(declare-fun d!2186021 () Bool)

(assert (=> d!2186021 (isDefined!13520 (findConcatSeparationZippers!335 lt!2506764 lt!2506796 Nil!67423 s!7408 s!7408))))

(declare-fun lt!2507023 () Unit!161346)

(declare-fun choose!52757 ((Set Context!12660) (Set Context!12660) List!67547 List!67547 List!67547 List!67547 List!67547) Unit!161346)

(assert (=> d!2186021 (= lt!2507023 (choose!52757 lt!2506764 lt!2506796 lt!2506767 (_2!37290 lt!2506775) s!7408 Nil!67423 s!7408))))

(assert (=> d!2186021 (matchZipper!2874 lt!2506764 lt!2506767)))

(assert (=> d!2186021 (= (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!21 lt!2506764 lt!2506796 lt!2506767 (_2!37290 lt!2506775) s!7408 Nil!67423 s!7408) lt!2507023)))

(declare-fun bs!1866389 () Bool)

(assert (= bs!1866389 d!2186021))

(assert (=> bs!1866389 m!7711986))

(assert (=> bs!1866389 m!7711986))

(assert (=> bs!1866389 m!7711988))

(declare-fun m!7712472 () Bool)

(assert (=> bs!1866389 m!7712472))

(assert (=> bs!1866389 m!7711932))

(assert (=> b!7013145 d!2186021))

(declare-fun d!2186023 () Bool)

(declare-fun lt!2507026 () Bool)

(assert (=> d!2186023 (= lt!2507026 (exists!3188 (toList!10694 z1!570) lambda!409329))))

(declare-fun choose!52758 ((Set Context!12660) Int) Bool)

(assert (=> d!2186023 (= lt!2507026 (choose!52758 z1!570 lambda!409329))))

(assert (=> d!2186023 (= (exists!3187 z1!570 lambda!409329) lt!2507026)))

(declare-fun bs!1866390 () Bool)

(assert (= bs!1866390 d!2186023))

(assert (=> bs!1866390 m!7711978))

(assert (=> bs!1866390 m!7711978))

(declare-fun m!7712474 () Bool)

(assert (=> bs!1866390 m!7712474))

(declare-fun m!7712476 () Bool)

(assert (=> bs!1866390 m!7712476))

(assert (=> b!7013145 d!2186023))

(declare-fun b!7013403 () Bool)

(declare-fun e!4215842 () Option!16819)

(assert (=> b!7013403 (= e!4215842 None!16818)))

(declare-fun d!2186025 () Bool)

(declare-fun e!4215844 () Bool)

(assert (=> d!2186025 e!4215844))

(declare-fun res!2862282 () Bool)

(assert (=> d!2186025 (=> res!2862282 e!4215844)))

(declare-fun e!4215840 () Bool)

(assert (=> d!2186025 (= res!2862282 e!4215840)))

(declare-fun res!2862284 () Bool)

(assert (=> d!2186025 (=> (not res!2862284) (not e!4215840))))

(declare-fun lt!2507029 () Option!16819)

(assert (=> d!2186025 (= res!2862284 (isDefined!13520 lt!2507029))))

(declare-fun e!4215841 () Option!16819)

(assert (=> d!2186025 (= lt!2507029 e!4215841)))

(declare-fun c!1302859 () Bool)

(declare-fun e!4215843 () Bool)

(assert (=> d!2186025 (= c!1302859 e!4215843)))

(declare-fun res!2862280 () Bool)

(assert (=> d!2186025 (=> (not res!2862280) (not e!4215843))))

(assert (=> d!2186025 (= res!2862280 (matchZipper!2874 lt!2506764 Nil!67423))))

(assert (=> d!2186025 (= (++!15348 Nil!67423 s!7408) s!7408)))

(assert (=> d!2186025 (= (findConcatSeparationZippers!335 lt!2506764 lt!2506796 Nil!67423 s!7408 s!7408) lt!2507029)))

(declare-fun b!7013404 () Bool)

(assert (=> b!7013404 (= e!4215844 (not (isDefined!13520 lt!2507029)))))

(declare-fun b!7013405 () Bool)

(declare-fun res!2862281 () Bool)

(assert (=> b!7013405 (=> (not res!2862281) (not e!4215840))))

(assert (=> b!7013405 (= res!2862281 (matchZipper!2874 lt!2506796 (_2!37290 (get!23648 lt!2507029))))))

(declare-fun b!7013406 () Bool)

(assert (=> b!7013406 (= e!4215840 (= (++!15348 (_1!37290 (get!23648 lt!2507029)) (_2!37290 (get!23648 lt!2507029))) s!7408))))

(declare-fun b!7013407 () Bool)

(declare-fun lt!2507028 () Unit!161346)

(declare-fun lt!2507027 () Unit!161346)

(assert (=> b!7013407 (= lt!2507028 lt!2507027)))

(assert (=> b!7013407 (= (++!15348 (++!15348 Nil!67423 (Cons!67423 (h!73871 s!7408) Nil!67423)) (t!381302 s!7408)) s!7408)))

(assert (=> b!7013407 (= lt!2507027 (lemmaMoveElementToOtherListKeepsConcatEq!2899 Nil!67423 (h!73871 s!7408) (t!381302 s!7408) s!7408))))

(assert (=> b!7013407 (= e!4215842 (findConcatSeparationZippers!335 lt!2506764 lt!2506796 (++!15348 Nil!67423 (Cons!67423 (h!73871 s!7408) Nil!67423)) (t!381302 s!7408) s!7408))))

(declare-fun b!7013408 () Bool)

(assert (=> b!7013408 (= e!4215841 e!4215842)))

(declare-fun c!1302860 () Bool)

(assert (=> b!7013408 (= c!1302860 (is-Nil!67423 s!7408))))

(declare-fun b!7013409 () Bool)

(assert (=> b!7013409 (= e!4215841 (Some!16818 (tuple2!67975 Nil!67423 s!7408)))))

(declare-fun b!7013410 () Bool)

(assert (=> b!7013410 (= e!4215843 (matchZipper!2874 lt!2506796 s!7408))))

(declare-fun b!7013411 () Bool)

(declare-fun res!2862283 () Bool)

(assert (=> b!7013411 (=> (not res!2862283) (not e!4215840))))

(assert (=> b!7013411 (= res!2862283 (matchZipper!2874 lt!2506764 (_1!37290 (get!23648 lt!2507029))))))

(assert (= (and d!2186025 res!2862280) b!7013410))

(assert (= (and d!2186025 c!1302859) b!7013409))

(assert (= (and d!2186025 (not c!1302859)) b!7013408))

(assert (= (and b!7013408 c!1302860) b!7013403))

(assert (= (and b!7013408 (not c!1302860)) b!7013407))

(assert (= (and d!2186025 res!2862284) b!7013411))

(assert (= (and b!7013411 res!2862283) b!7013405))

(assert (= (and b!7013405 res!2862281) b!7013406))

(assert (= (and d!2186025 (not res!2862282)) b!7013404))

(declare-fun m!7712478 () Bool)

(assert (=> b!7013406 m!7712478))

(declare-fun m!7712480 () Bool)

(assert (=> b!7013406 m!7712480))

(assert (=> b!7013405 m!7712478))

(declare-fun m!7712482 () Bool)

(assert (=> b!7013405 m!7712482))

(declare-fun m!7712484 () Bool)

(assert (=> d!2186025 m!7712484))

(declare-fun m!7712486 () Bool)

(assert (=> d!2186025 m!7712486))

(assert (=> d!2186025 m!7711984))

(declare-fun m!7712488 () Bool)

(assert (=> b!7013407 m!7712488))

(assert (=> b!7013407 m!7712488))

(declare-fun m!7712490 () Bool)

(assert (=> b!7013407 m!7712490))

(declare-fun m!7712492 () Bool)

(assert (=> b!7013407 m!7712492))

(assert (=> b!7013407 m!7712488))

(declare-fun m!7712494 () Bool)

(assert (=> b!7013407 m!7712494))

(assert (=> b!7013404 m!7712484))

(assert (=> b!7013411 m!7712478))

(declare-fun m!7712496 () Bool)

(assert (=> b!7013411 m!7712496))

(declare-fun m!7712498 () Bool)

(assert (=> b!7013410 m!7712498))

(assert (=> b!7013145 d!2186025))

(declare-fun d!2186027 () Bool)

(declare-fun e!4215845 () Bool)

(assert (=> d!2186027 e!4215845))

(declare-fun res!2862285 () Bool)

(assert (=> d!2186027 (=> (not res!2862285) (not e!4215845))))

(declare-fun lt!2507030 () List!67549)

(assert (=> d!2186027 (= res!2862285 (noDuplicate!2571 lt!2507030))))

(assert (=> d!2186027 (= lt!2507030 (choose!52752 z1!570))))

(assert (=> d!2186027 (= (toList!10694 z1!570) lt!2507030)))

(declare-fun b!7013412 () Bool)

(assert (=> b!7013412 (= e!4215845 (= (content!13390 lt!2507030) z1!570))))

(assert (= (and d!2186027 res!2862285) b!7013412))

(declare-fun m!7712500 () Bool)

(assert (=> d!2186027 m!7712500))

(declare-fun m!7712502 () Bool)

(assert (=> d!2186027 m!7712502))

(declare-fun m!7712504 () Bool)

(assert (=> b!7013412 m!7712504))

(assert (=> b!7013145 d!2186027))

(declare-fun d!2186029 () Bool)

(assert (=> d!2186029 (isDefined!13520 (findConcatSeparationZippers!335 z1!570 lt!2506796 Nil!67423 s!7408 s!7408))))

(declare-fun lt!2507031 () Unit!161346)

(assert (=> d!2186029 (= lt!2507031 (choose!52757 z1!570 lt!2506796 lt!2506767 (_2!37290 lt!2506775) s!7408 Nil!67423 s!7408))))

(assert (=> d!2186029 (matchZipper!2874 z1!570 lt!2506767)))

(assert (=> d!2186029 (= (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!21 z1!570 lt!2506796 lt!2506767 (_2!37290 lt!2506775) s!7408 Nil!67423 s!7408) lt!2507031)))

(declare-fun bs!1866391 () Bool)

(assert (= bs!1866391 d!2186029))

(assert (=> bs!1866391 m!7711994))

(assert (=> bs!1866391 m!7711994))

(assert (=> bs!1866391 m!7712000))

(declare-fun m!7712506 () Bool)

(assert (=> bs!1866391 m!7712506))

(declare-fun m!7712508 () Bool)

(assert (=> bs!1866391 m!7712508))

(assert (=> b!7013145 d!2186029))

(declare-fun d!2186031 () Bool)

(declare-fun c!1302861 () Bool)

(assert (=> d!2186031 (= c!1302861 (isEmpty!39378 lt!2506767))))

(declare-fun e!4215846 () Bool)

(assert (=> d!2186031 (= (matchZipper!2874 (content!13390 lt!2506798) lt!2506767) e!4215846)))

(declare-fun b!7013413 () Bool)

(assert (=> b!7013413 (= e!4215846 (nullableZipper!2493 (content!13390 lt!2506798)))))

(declare-fun b!7013414 () Bool)

(assert (=> b!7013414 (= e!4215846 (matchZipper!2874 (derivationStepZipper!2814 (content!13390 lt!2506798) (head!14179 lt!2506767)) (tail!13416 lt!2506767)))))

(assert (= (and d!2186031 c!1302861) b!7013413))

(assert (= (and d!2186031 (not c!1302861)) b!7013414))

(assert (=> d!2186031 m!7712450))

(assert (=> b!7013413 m!7711992))

(declare-fun m!7712510 () Bool)

(assert (=> b!7013413 m!7712510))

(assert (=> b!7013414 m!7712454))

(assert (=> b!7013414 m!7711992))

(assert (=> b!7013414 m!7712454))

(declare-fun m!7712512 () Bool)

(assert (=> b!7013414 m!7712512))

(assert (=> b!7013414 m!7712458))

(assert (=> b!7013414 m!7712512))

(assert (=> b!7013414 m!7712458))

(declare-fun m!7712514 () Bool)

(assert (=> b!7013414 m!7712514))

(assert (=> b!7013145 d!2186031))

(declare-fun b!7013417 () Bool)

(declare-fun res!2862286 () Bool)

(declare-fun e!4215847 () Bool)

(assert (=> b!7013417 (=> (not res!2862286) (not e!4215847))))

(declare-fun lt!2507032 () List!67547)

(assert (=> b!7013417 (= res!2862286 (= (size!40984 lt!2507032) (+ (size!40984 Nil!67423) (size!40984 s!7408))))))

(declare-fun b!7013415 () Bool)

(declare-fun e!4215848 () List!67547)

(assert (=> b!7013415 (= e!4215848 s!7408)))

(declare-fun b!7013416 () Bool)

(assert (=> b!7013416 (= e!4215848 (Cons!67423 (h!73871 Nil!67423) (++!15348 (t!381302 Nil!67423) s!7408)))))

(declare-fun d!2186033 () Bool)

(assert (=> d!2186033 e!4215847))

(declare-fun res!2862287 () Bool)

(assert (=> d!2186033 (=> (not res!2862287) (not e!4215847))))

(assert (=> d!2186033 (= res!2862287 (= (content!13393 lt!2507032) (set.union (content!13393 Nil!67423) (content!13393 s!7408))))))

(assert (=> d!2186033 (= lt!2507032 e!4215848)))

(declare-fun c!1302862 () Bool)

(assert (=> d!2186033 (= c!1302862 (is-Nil!67423 Nil!67423))))

(assert (=> d!2186033 (= (++!15348 Nil!67423 s!7408) lt!2507032)))

(declare-fun b!7013418 () Bool)

(assert (=> b!7013418 (= e!4215847 (or (not (= s!7408 Nil!67423)) (= lt!2507032 Nil!67423)))))

(assert (= (and d!2186033 c!1302862) b!7013415))

(assert (= (and d!2186033 (not c!1302862)) b!7013416))

(assert (= (and d!2186033 res!2862287) b!7013417))

(assert (= (and b!7013417 res!2862286) b!7013418))

(declare-fun m!7712516 () Bool)

(assert (=> b!7013417 m!7712516))

(declare-fun m!7712518 () Bool)

(assert (=> b!7013417 m!7712518))

(declare-fun m!7712520 () Bool)

(assert (=> b!7013417 m!7712520))

(declare-fun m!7712522 () Bool)

(assert (=> b!7013416 m!7712522))

(declare-fun m!7712524 () Bool)

(assert (=> d!2186033 m!7712524))

(declare-fun m!7712526 () Bool)

(assert (=> d!2186033 m!7712526))

(declare-fun m!7712528 () Bool)

(assert (=> d!2186033 m!7712528))

(assert (=> b!7013145 d!2186033))

(declare-fun d!2186035 () Bool)

(assert (=> d!2186035 (exists!3187 z1!570 lambda!409329)))

(declare-fun lt!2507035 () Unit!161346)

(declare-fun choose!52759 ((Set Context!12660) Context!12660 Int) Unit!161346)

(assert (=> d!2186035 (= lt!2507035 (choose!52759 z1!570 lt!2506788 lambda!409329))))

(assert (=> d!2186035 (set.member lt!2506788 z1!570)))

(assert (=> d!2186035 (= (lemmaContainsThenExists!98 z1!570 lt!2506788 lambda!409329) lt!2507035)))

(declare-fun bs!1866392 () Bool)

(assert (= bs!1866392 d!2186035))

(assert (=> bs!1866392 m!7711976))

(declare-fun m!7712530 () Bool)

(assert (=> bs!1866392 m!7712530))

(assert (=> bs!1866392 m!7712008))

(assert (=> b!7013145 d!2186035))

(declare-fun b!7013419 () Bool)

(declare-fun e!4215852 () Option!16819)

(assert (=> b!7013419 (= e!4215852 None!16818)))

(declare-fun d!2186037 () Bool)

(declare-fun e!4215854 () Bool)

(assert (=> d!2186037 e!4215854))

(declare-fun res!2862290 () Bool)

(assert (=> d!2186037 (=> res!2862290 e!4215854)))

(declare-fun e!4215850 () Bool)

(assert (=> d!2186037 (= res!2862290 e!4215850)))

(declare-fun res!2862292 () Bool)

(assert (=> d!2186037 (=> (not res!2862292) (not e!4215850))))

(declare-fun lt!2507038 () Option!16819)

(assert (=> d!2186037 (= res!2862292 (isDefined!13520 lt!2507038))))

(declare-fun e!4215851 () Option!16819)

(assert (=> d!2186037 (= lt!2507038 e!4215851)))

(declare-fun c!1302863 () Bool)

(declare-fun e!4215853 () Bool)

(assert (=> d!2186037 (= c!1302863 e!4215853)))

(declare-fun res!2862288 () Bool)

(assert (=> d!2186037 (=> (not res!2862288) (not e!4215853))))

(assert (=> d!2186037 (= res!2862288 (matchZipper!2874 z1!570 Nil!67423))))

(assert (=> d!2186037 (= (++!15348 Nil!67423 s!7408) s!7408)))

(assert (=> d!2186037 (= (findConcatSeparationZippers!335 z1!570 lt!2506796 Nil!67423 s!7408 s!7408) lt!2507038)))

(declare-fun b!7013420 () Bool)

(assert (=> b!7013420 (= e!4215854 (not (isDefined!13520 lt!2507038)))))

(declare-fun b!7013421 () Bool)

(declare-fun res!2862289 () Bool)

(assert (=> b!7013421 (=> (not res!2862289) (not e!4215850))))

(assert (=> b!7013421 (= res!2862289 (matchZipper!2874 lt!2506796 (_2!37290 (get!23648 lt!2507038))))))

(declare-fun b!7013422 () Bool)

(assert (=> b!7013422 (= e!4215850 (= (++!15348 (_1!37290 (get!23648 lt!2507038)) (_2!37290 (get!23648 lt!2507038))) s!7408))))

(declare-fun b!7013423 () Bool)

(declare-fun lt!2507037 () Unit!161346)

(declare-fun lt!2507036 () Unit!161346)

(assert (=> b!7013423 (= lt!2507037 lt!2507036)))

(assert (=> b!7013423 (= (++!15348 (++!15348 Nil!67423 (Cons!67423 (h!73871 s!7408) Nil!67423)) (t!381302 s!7408)) s!7408)))

(assert (=> b!7013423 (= lt!2507036 (lemmaMoveElementToOtherListKeepsConcatEq!2899 Nil!67423 (h!73871 s!7408) (t!381302 s!7408) s!7408))))

(assert (=> b!7013423 (= e!4215852 (findConcatSeparationZippers!335 z1!570 lt!2506796 (++!15348 Nil!67423 (Cons!67423 (h!73871 s!7408) Nil!67423)) (t!381302 s!7408) s!7408))))

(declare-fun b!7013424 () Bool)

(assert (=> b!7013424 (= e!4215851 e!4215852)))

(declare-fun c!1302864 () Bool)

(assert (=> b!7013424 (= c!1302864 (is-Nil!67423 s!7408))))

(declare-fun b!7013425 () Bool)

(assert (=> b!7013425 (= e!4215851 (Some!16818 (tuple2!67975 Nil!67423 s!7408)))))

(declare-fun b!7013426 () Bool)

(assert (=> b!7013426 (= e!4215853 (matchZipper!2874 lt!2506796 s!7408))))

(declare-fun b!7013427 () Bool)

(declare-fun res!2862291 () Bool)

(assert (=> b!7013427 (=> (not res!2862291) (not e!4215850))))

(assert (=> b!7013427 (= res!2862291 (matchZipper!2874 z1!570 (_1!37290 (get!23648 lt!2507038))))))

(assert (= (and d!2186037 res!2862288) b!7013426))

(assert (= (and d!2186037 c!1302863) b!7013425))

(assert (= (and d!2186037 (not c!1302863)) b!7013424))

(assert (= (and b!7013424 c!1302864) b!7013419))

(assert (= (and b!7013424 (not c!1302864)) b!7013423))

(assert (= (and d!2186037 res!2862292) b!7013427))

(assert (= (and b!7013427 res!2862291) b!7013421))

(assert (= (and b!7013421 res!2862289) b!7013422))

(assert (= (and d!2186037 (not res!2862290)) b!7013420))

(declare-fun m!7712532 () Bool)

(assert (=> b!7013422 m!7712532))

(declare-fun m!7712534 () Bool)

(assert (=> b!7013422 m!7712534))

(assert (=> b!7013421 m!7712532))

(declare-fun m!7712536 () Bool)

(assert (=> b!7013421 m!7712536))

(declare-fun m!7712538 () Bool)

(assert (=> d!2186037 m!7712538))

(declare-fun m!7712540 () Bool)

(assert (=> d!2186037 m!7712540))

(assert (=> d!2186037 m!7711984))

(assert (=> b!7013423 m!7712488))

(assert (=> b!7013423 m!7712488))

(assert (=> b!7013423 m!7712490))

(assert (=> b!7013423 m!7712492))

(assert (=> b!7013423 m!7712488))

(declare-fun m!7712542 () Bool)

(assert (=> b!7013423 m!7712542))

(assert (=> b!7013420 m!7712538))

(assert (=> b!7013427 m!7712532))

(declare-fun m!7712544 () Bool)

(assert (=> b!7013427 m!7712544))

(assert (=> b!7013426 m!7712498))

(assert (=> b!7013145 d!2186037))

(declare-fun bs!1866393 () Bool)

(declare-fun d!2186039 () Bool)

(assert (= bs!1866393 (and d!2186039 b!7013151)))

(declare-fun lambda!409402 () Int)

(assert (=> bs!1866393 (= (= lt!2506767 s!7408) (= lambda!409402 lambda!409325))))

(declare-fun bs!1866394 () Bool)

(assert (= bs!1866394 (and d!2186039 b!7013145)))

(assert (=> bs!1866394 (= lambda!409402 lambda!409329)))

(declare-fun bs!1866395 () Bool)

(assert (= bs!1866395 (and d!2186039 d!2185975)))

(assert (=> bs!1866395 (= (= lt!2506767 s!7408) (= lambda!409402 lambda!409390))))

(declare-fun bs!1866396 () Bool)

(assert (= bs!1866396 (and d!2186039 d!2185979)))

(assert (=> bs!1866396 (not (= lambda!409402 lambda!409393))))

(assert (=> d!2186039 true))

(assert (=> d!2186039 (matchZipper!2874 (content!13390 lt!2506798) lt!2506767)))

(declare-fun lt!2507041 () Unit!161346)

(declare-fun choose!52760 (List!67549 List!67547) Unit!161346)

(assert (=> d!2186039 (= lt!2507041 (choose!52760 lt!2506798 lt!2506767))))

(assert (=> d!2186039 (exists!3188 lt!2506798 lambda!409402)))

(assert (=> d!2186039 (= (lemmaExistsMatchingContextThenMatchingString!29 lt!2506798 lt!2506767) lt!2507041)))

(declare-fun bs!1866397 () Bool)

(assert (= bs!1866397 d!2186039))

(assert (=> bs!1866397 m!7711992))

(assert (=> bs!1866397 m!7711992))

(assert (=> bs!1866397 m!7711998))

(declare-fun m!7712546 () Bool)

(assert (=> bs!1866397 m!7712546))

(declare-fun m!7712548 () Bool)

(assert (=> bs!1866397 m!7712548))

(assert (=> b!7013145 d!2186039))

(declare-fun d!2186041 () Bool)

(assert (=> d!2186041 (= (isDefined!13520 (findConcatSeparationZippers!335 z1!570 lt!2506796 Nil!67423 s!7408 s!7408)) (not (isEmpty!39379 (findConcatSeparationZippers!335 z1!570 lt!2506796 Nil!67423 s!7408 s!7408))))))

(declare-fun bs!1866398 () Bool)

(assert (= bs!1866398 d!2186041))

(assert (=> bs!1866398 m!7711994))

(declare-fun m!7712550 () Bool)

(assert (=> bs!1866398 m!7712550))

(assert (=> b!7013145 d!2186041))

(declare-fun d!2186043 () Bool)

(declare-fun c!1302869 () Bool)

(assert (=> d!2186043 (= c!1302869 (is-Nil!67425 lt!2506798))))

(declare-fun e!4215857 () (Set Context!12660))

(assert (=> d!2186043 (= (content!13390 lt!2506798) e!4215857)))

(declare-fun b!7013432 () Bool)

(assert (=> b!7013432 (= e!4215857 (as set.empty (Set Context!12660)))))

(declare-fun b!7013433 () Bool)

(assert (=> b!7013433 (= e!4215857 (set.union (set.insert (h!73873 lt!2506798) (as set.empty (Set Context!12660))) (content!13390 (t!381304 lt!2506798))))))

(assert (= (and d!2186043 c!1302869) b!7013432))

(assert (= (and d!2186043 (not c!1302869)) b!7013433))

(declare-fun m!7712552 () Bool)

(assert (=> b!7013433 m!7712552))

(declare-fun m!7712554 () Bool)

(assert (=> b!7013433 m!7712554))

(assert (=> b!7013145 d!2186043))

(declare-fun d!2186045 () Bool)

(assert (=> d!2186045 (= (isDefined!13520 (findConcatSeparationZippers!335 lt!2506764 lt!2506796 Nil!67423 s!7408 s!7408)) (not (isEmpty!39379 (findConcatSeparationZippers!335 lt!2506764 lt!2506796 Nil!67423 s!7408 s!7408))))))

(declare-fun bs!1866399 () Bool)

(assert (= bs!1866399 d!2186045))

(assert (=> bs!1866399 m!7711986))

(declare-fun m!7712556 () Bool)

(assert (=> bs!1866399 m!7712556))

(assert (=> b!7013145 d!2186045))

(declare-fun b!7013434 () Bool)

(declare-fun c!1302874 () Bool)

(declare-fun e!4215863 () Bool)

(assert (=> b!7013434 (= c!1302874 e!4215863)))

(declare-fun res!2862293 () Bool)

(assert (=> b!7013434 (=> (not res!2862293) (not e!4215863))))

(assert (=> b!7013434 (= res!2862293 (is-Concat!26179 (h!73872 (exprs!6830 lt!2506788))))))

(declare-fun e!4215859 () (Set Context!12660))

(declare-fun e!4215862 () (Set Context!12660))

(assert (=> b!7013434 (= e!4215859 e!4215862)))

(declare-fun c!1302872 () Bool)

(declare-fun call!636972 () List!67548)

(declare-fun bm!636963 () Bool)

(assert (=> bm!636963 (= call!636972 ($colon$colon!2534 (exprs!6830 lt!2506763) (ite (or c!1302874 c!1302872) (regTwo!35180 (h!73872 (exprs!6830 lt!2506788))) (h!73872 (exprs!6830 lt!2506788)))))))

(declare-fun b!7013435 () Bool)

(assert (=> b!7013435 (= e!4215863 (nullable!7094 (regOne!35180 (h!73872 (exprs!6830 lt!2506788)))))))

(declare-fun c!1302873 () Bool)

(declare-fun bm!636964 () Bool)

(declare-fun call!636973 () (Set Context!12660))

(assert (=> bm!636964 (= call!636973 (derivationStepZipperDown!2052 (ite c!1302873 (regOne!35181 (h!73872 (exprs!6830 lt!2506788))) (regOne!35180 (h!73872 (exprs!6830 lt!2506788)))) (ite c!1302873 lt!2506763 (Context!12661 call!636972)) (h!73871 s!7408)))))

(declare-fun b!7013436 () Bool)

(declare-fun e!4215858 () (Set Context!12660))

(declare-fun call!636968 () (Set Context!12660))

(assert (=> b!7013436 (= e!4215858 call!636968)))

(declare-fun b!7013437 () Bool)

(assert (=> b!7013437 (= e!4215862 e!4215858)))

(assert (=> b!7013437 (= c!1302872 (is-Concat!26179 (h!73872 (exprs!6830 lt!2506788))))))

(declare-fun b!7013438 () Bool)

(declare-fun e!4215861 () (Set Context!12660))

(assert (=> b!7013438 (= e!4215861 (set.insert lt!2506763 (as set.empty (Set Context!12660))))))

(declare-fun b!7013439 () Bool)

(declare-fun e!4215860 () (Set Context!12660))

(assert (=> b!7013439 (= e!4215860 call!636968)))

(declare-fun b!7013440 () Bool)

(assert (=> b!7013440 (= e!4215861 e!4215859)))

(assert (=> b!7013440 (= c!1302873 (is-Union!17334 (h!73872 (exprs!6830 lt!2506788))))))

(declare-fun b!7013441 () Bool)

(declare-fun call!636969 () (Set Context!12660))

(assert (=> b!7013441 (= e!4215859 (set.union call!636973 call!636969))))

(declare-fun bm!636965 () Bool)

(declare-fun call!636970 () (Set Context!12660))

(assert (=> bm!636965 (= call!636968 call!636970)))

(declare-fun call!636971 () List!67548)

(declare-fun bm!636966 () Bool)

(assert (=> bm!636966 (= call!636969 (derivationStepZipperDown!2052 (ite c!1302873 (regTwo!35181 (h!73872 (exprs!6830 lt!2506788))) (ite c!1302874 (regTwo!35180 (h!73872 (exprs!6830 lt!2506788))) (ite c!1302872 (regOne!35180 (h!73872 (exprs!6830 lt!2506788))) (reg!17663 (h!73872 (exprs!6830 lt!2506788)))))) (ite (or c!1302873 c!1302874) lt!2506763 (Context!12661 call!636971)) (h!73871 s!7408)))))

(declare-fun b!7013442 () Bool)

(assert (=> b!7013442 (= e!4215862 (set.union call!636973 call!636970))))

(declare-fun d!2186047 () Bool)

(declare-fun c!1302870 () Bool)

(assert (=> d!2186047 (= c!1302870 (and (is-ElementMatch!17334 (h!73872 (exprs!6830 lt!2506788))) (= (c!1302789 (h!73872 (exprs!6830 lt!2506788))) (h!73871 s!7408))))))

(assert (=> d!2186047 (= (derivationStepZipperDown!2052 (h!73872 (exprs!6830 lt!2506788)) lt!2506763 (h!73871 s!7408)) e!4215861)))

(declare-fun bm!636967 () Bool)

(assert (=> bm!636967 (= call!636971 call!636972)))

(declare-fun b!7013443 () Bool)

(assert (=> b!7013443 (= e!4215860 (as set.empty (Set Context!12660)))))

(declare-fun bm!636968 () Bool)

(assert (=> bm!636968 (= call!636970 call!636969)))

(declare-fun b!7013444 () Bool)

(declare-fun c!1302871 () Bool)

(assert (=> b!7013444 (= c!1302871 (is-Star!17334 (h!73872 (exprs!6830 lt!2506788))))))

(assert (=> b!7013444 (= e!4215858 e!4215860)))

(assert (= (and d!2186047 c!1302870) b!7013438))

(assert (= (and d!2186047 (not c!1302870)) b!7013440))

(assert (= (and b!7013440 c!1302873) b!7013441))

(assert (= (and b!7013440 (not c!1302873)) b!7013434))

(assert (= (and b!7013434 res!2862293) b!7013435))

(assert (= (and b!7013434 c!1302874) b!7013442))

(assert (= (and b!7013434 (not c!1302874)) b!7013437))

(assert (= (and b!7013437 c!1302872) b!7013436))

(assert (= (and b!7013437 (not c!1302872)) b!7013444))

(assert (= (and b!7013444 c!1302871) b!7013439))

(assert (= (and b!7013444 (not c!1302871)) b!7013443))

(assert (= (or b!7013436 b!7013439) bm!636967))

(assert (= (or b!7013436 b!7013439) bm!636965))

(assert (= (or b!7013442 bm!636965) bm!636968))

(assert (= (or b!7013442 bm!636967) bm!636963))

(assert (= (or b!7013441 b!7013442) bm!636964))

(assert (= (or b!7013441 bm!636968) bm!636966))

(declare-fun m!7712558 () Bool)

(assert (=> b!7013438 m!7712558))

(declare-fun m!7712560 () Bool)

(assert (=> bm!636966 m!7712560))

(declare-fun m!7712562 () Bool)

(assert (=> bm!636963 m!7712562))

(declare-fun m!7712564 () Bool)

(assert (=> bm!636964 m!7712564))

(assert (=> b!7013435 m!7712412))

(assert (=> b!7013136 d!2186047))

(declare-fun b!7013445 () Bool)

(declare-fun e!4215866 () (Set Context!12660))

(declare-fun e!4215864 () (Set Context!12660))

(assert (=> b!7013445 (= e!4215866 e!4215864)))

(declare-fun c!1302876 () Bool)

(assert (=> b!7013445 (= c!1302876 (is-Cons!67424 (exprs!6830 lt!2506763)))))

(declare-fun b!7013446 () Bool)

(declare-fun e!4215865 () Bool)

(assert (=> b!7013446 (= e!4215865 (nullable!7094 (h!73872 (exprs!6830 lt!2506763))))))

(declare-fun bm!636969 () Bool)

(declare-fun call!636974 () (Set Context!12660))

(assert (=> bm!636969 (= call!636974 (derivationStepZipperDown!2052 (h!73872 (exprs!6830 lt!2506763)) (Context!12661 (t!381303 (exprs!6830 lt!2506763))) (h!73871 s!7408)))))

(declare-fun b!7013447 () Bool)

(assert (=> b!7013447 (= e!4215864 call!636974)))

(declare-fun b!7013448 () Bool)

(assert (=> b!7013448 (= e!4215866 (set.union call!636974 (derivationStepZipperUp!1984 (Context!12661 (t!381303 (exprs!6830 lt!2506763))) (h!73871 s!7408))))))

(declare-fun b!7013449 () Bool)

(assert (=> b!7013449 (= e!4215864 (as set.empty (Set Context!12660)))))

(declare-fun d!2186049 () Bool)

(declare-fun c!1302875 () Bool)

(assert (=> d!2186049 (= c!1302875 e!4215865)))

(declare-fun res!2862294 () Bool)

(assert (=> d!2186049 (=> (not res!2862294) (not e!4215865))))

(assert (=> d!2186049 (= res!2862294 (is-Cons!67424 (exprs!6830 lt!2506763)))))

(assert (=> d!2186049 (= (derivationStepZipperUp!1984 lt!2506763 (h!73871 s!7408)) e!4215866)))

(assert (= (and d!2186049 res!2862294) b!7013446))

(assert (= (and d!2186049 c!1302875) b!7013448))

(assert (= (and d!2186049 (not c!1302875)) b!7013445))

(assert (= (and b!7013445 c!1302876) b!7013447))

(assert (= (and b!7013445 (not c!1302876)) b!7013449))

(assert (= (or b!7013448 b!7013447) bm!636969))

(declare-fun m!7712566 () Bool)

(assert (=> b!7013446 m!7712566))

(declare-fun m!7712568 () Bool)

(assert (=> bm!636969 m!7712568))

(declare-fun m!7712570 () Bool)

(assert (=> b!7013448 m!7712570))

(assert (=> b!7013136 d!2186049))

(declare-fun d!2186051 () Bool)

(declare-fun e!4215868 () Bool)

(assert (=> d!2186051 e!4215868))

(declare-fun res!2862295 () Bool)

(assert (=> d!2186051 (=> (not res!2862295) (not e!4215868))))

(declare-fun lt!2507042 () List!67548)

(assert (=> d!2186051 (= res!2862295 (= (content!13392 lt!2507042) (set.union (content!13392 lt!2506783) (content!13392 (exprs!6830 ct2!306)))))))

(declare-fun e!4215867 () List!67548)

(assert (=> d!2186051 (= lt!2507042 e!4215867)))

(declare-fun c!1302877 () Bool)

(assert (=> d!2186051 (= c!1302877 (is-Nil!67424 lt!2506783))))

(assert (=> d!2186051 (= (++!15347 lt!2506783 (exprs!6830 ct2!306)) lt!2507042)))

(declare-fun b!7013450 () Bool)

(assert (=> b!7013450 (= e!4215867 (exprs!6830 ct2!306))))

(declare-fun b!7013452 () Bool)

(declare-fun res!2862296 () Bool)

(assert (=> b!7013452 (=> (not res!2862296) (not e!4215868))))

(assert (=> b!7013452 (= res!2862296 (= (size!40983 lt!2507042) (+ (size!40983 lt!2506783) (size!40983 (exprs!6830 ct2!306)))))))

(declare-fun b!7013451 () Bool)

(assert (=> b!7013451 (= e!4215867 (Cons!67424 (h!73872 lt!2506783) (++!15347 (t!381303 lt!2506783) (exprs!6830 ct2!306))))))

(declare-fun b!7013453 () Bool)

(assert (=> b!7013453 (= e!4215868 (or (not (= (exprs!6830 ct2!306) Nil!67424)) (= lt!2507042 lt!2506783)))))

(assert (= (and d!2186051 c!1302877) b!7013450))

(assert (= (and d!2186051 (not c!1302877)) b!7013451))

(assert (= (and d!2186051 res!2862295) b!7013452))

(assert (= (and b!7013452 res!2862296) b!7013453))

(declare-fun m!7712572 () Bool)

(assert (=> d!2186051 m!7712572))

(declare-fun m!7712574 () Bool)

(assert (=> d!2186051 m!7712574))

(assert (=> d!2186051 m!7712218))

(declare-fun m!7712576 () Bool)

(assert (=> b!7013452 m!7712576))

(declare-fun m!7712578 () Bool)

(assert (=> b!7013452 m!7712578))

(assert (=> b!7013452 m!7712224))

(declare-fun m!7712580 () Bool)

(assert (=> b!7013451 m!7712580))

(assert (=> b!7013136 d!2186051))

(assert (=> b!7013136 d!2185969))

(declare-fun b!7013458 () Bool)

(declare-fun e!4215871 () Bool)

(declare-fun tp!1932682 () Bool)

(assert (=> b!7013458 (= e!4215871 (and tp_is_empty!43893 tp!1932682))))

(assert (=> b!7013132 (= tp!1932667 e!4215871)))

(assert (= (and b!7013132 (is-Cons!67423 (t!381302 s!7408))) b!7013458))

(declare-fun condSetEmpty!48431 () Bool)

(assert (=> setNonEmpty!48425 (= condSetEmpty!48431 (= setRest!48425 (as set.empty (Set Context!12660))))))

(declare-fun setRes!48431 () Bool)

(assert (=> setNonEmpty!48425 (= tp!1932664 setRes!48431)))

(declare-fun setIsEmpty!48431 () Bool)

(assert (=> setIsEmpty!48431 setRes!48431))

(declare-fun setNonEmpty!48431 () Bool)

(declare-fun setElem!48431 () Context!12660)

(declare-fun e!4215874 () Bool)

(declare-fun tp!1932688 () Bool)

(assert (=> setNonEmpty!48431 (= setRes!48431 (and tp!1932688 (inv!86195 setElem!48431) e!4215874))))

(declare-fun setRest!48431 () (Set Context!12660))

(assert (=> setNonEmpty!48431 (= setRest!48425 (set.union (set.insert setElem!48431 (as set.empty (Set Context!12660))) setRest!48431))))

(declare-fun b!7013463 () Bool)

(declare-fun tp!1932687 () Bool)

(assert (=> b!7013463 (= e!4215874 tp!1932687)))

(assert (= (and setNonEmpty!48425 condSetEmpty!48431) setIsEmpty!48431))

(assert (= (and setNonEmpty!48425 (not condSetEmpty!48431)) setNonEmpty!48431))

(assert (= setNonEmpty!48431 b!7013463))

(declare-fun m!7712582 () Bool)

(assert (=> setNonEmpty!48431 m!7712582))

(declare-fun b!7013468 () Bool)

(declare-fun e!4215877 () Bool)

(declare-fun tp!1932693 () Bool)

(declare-fun tp!1932694 () Bool)

(assert (=> b!7013468 (= e!4215877 (and tp!1932693 tp!1932694))))

(assert (=> b!7013134 (= tp!1932666 e!4215877)))

(assert (= (and b!7013134 (is-Cons!67424 (exprs!6830 setElem!48425))) b!7013468))

(declare-fun b!7013469 () Bool)

(declare-fun e!4215878 () Bool)

(declare-fun tp!1932695 () Bool)

(declare-fun tp!1932696 () Bool)

(assert (=> b!7013469 (= e!4215878 (and tp!1932695 tp!1932696))))

(assert (=> b!7013126 (= tp!1932665 e!4215878)))

(assert (= (and b!7013126 (is-Cons!67424 (exprs!6830 ct2!306))) b!7013469))

(declare-fun b_lambda!264463 () Bool)

(assert (= b_lambda!264459 (or b!7013151 b_lambda!264463)))

(declare-fun bs!1866400 () Bool)

(declare-fun d!2186053 () Bool)

(assert (= bs!1866400 (and d!2186053 b!7013151)))

(assert (=> bs!1866400 (= (dynLambda!27124 lambda!409325 lt!2506994) (matchZipper!2874 (set.insert lt!2506994 (as set.empty (Set Context!12660))) s!7408))))

(declare-fun m!7712584 () Bool)

(assert (=> bs!1866400 m!7712584))

(assert (=> bs!1866400 m!7712584))

(declare-fun m!7712586 () Bool)

(assert (=> bs!1866400 m!7712586))

(assert (=> d!2185973 d!2186053))

(declare-fun b_lambda!264465 () Bool)

(assert (= b_lambda!264457 (or b!7013140 b_lambda!264465)))

(declare-fun bs!1866401 () Bool)

(declare-fun d!2186055 () Bool)

(assert (= bs!1866401 (and d!2186055 b!7013140)))

(assert (=> bs!1866401 (= (dynLambda!27123 lambda!409328 lt!2506777) (derivationStepZipperUp!1984 lt!2506777 (h!73871 s!7408)))))

(assert (=> bs!1866401 m!7712032))

(assert (=> d!2185959 d!2186055))

(declare-fun b_lambda!264467 () Bool)

(assert (= b_lambda!264461 (or b!7013140 b_lambda!264467)))

(declare-fun bs!1866402 () Bool)

(declare-fun d!2186057 () Bool)

(assert (= bs!1866402 (and d!2186057 b!7013140)))

(assert (=> bs!1866402 (= (dynLambda!27123 lambda!409328 lt!2506788) (derivationStepZipperUp!1984 lt!2506788 (h!73871 s!7408)))))

(assert (=> bs!1866402 m!7712020))

(assert (=> d!2186011 d!2186057))

(declare-fun b_lambda!264469 () Bool)

(assert (= b_lambda!264455 (or b!7013142 b_lambda!264469)))

(declare-fun bs!1866403 () Bool)

(declare-fun d!2186059 () Bool)

(assert (= bs!1866403 (and d!2186059 b!7013142)))

(declare-fun lt!2507043 () Unit!161346)

(assert (=> bs!1866403 (= lt!2507043 (lemmaConcatPreservesForall!670 (exprs!6830 lt!2506981) (exprs!6830 ct2!306) lambda!409327))))

(assert (=> bs!1866403 (= (dynLambda!27122 lambda!409326 lt!2506981) (Context!12661 (++!15347 (exprs!6830 lt!2506981) (exprs!6830 ct2!306))))))

(declare-fun m!7712588 () Bool)

(assert (=> bs!1866403 m!7712588))

(declare-fun m!7712590 () Bool)

(assert (=> bs!1866403 m!7712590))

(assert (=> d!2185947 d!2186059))

(push 1)

(assert (not d!2186027))

(assert (not b!7013346))

(assert (not d!2185935))

(assert (not d!2185959))

(assert (not b!7013301))

(assert (not b!7013435))

(assert (not b!7013310))

(assert (not b_lambda!264469))

(assert (not b!7013427))

(assert (not d!2185943))

(assert (not b!7013410))

(assert (not bm!636959))

(assert (not b!7013414))

(assert (not d!2185945))

(assert (not b!7013254))

(assert (not d!2186045))

(assert (not bm!636942))

(assert (not d!2186005))

(assert (not d!2186041))

(assert (not bm!636943))

(assert (not d!2186051))

(assert (not bm!636962))

(assert (not d!2186013))

(assert (not b!7013396))

(assert (not bs!1866402))

(assert (not b!7013469))

(assert (not b!7013421))

(assert (not b!7013394))

(assert (not b!7013402))

(assert (not b!7013422))

(assert (not b!7013265))

(assert (not b!7013390))

(assert (not b!7013458))

(assert (not d!2186033))

(assert (not d!2186017))

(assert (not b!7013389))

(assert (not b!7013405))

(assert (not d!2186003))

(assert (not b!7013343))

(assert (not b!7013399))

(assert (not d!2185971))

(assert (not b!7013420))

(assert (not d!2186025))

(assert (not d!2185989))

(assert (not b!7013451))

(assert (not b!7013275))

(assert (not b!7013426))

(assert (not b!7013463))

(assert (not b_lambda!264463))

(assert (not d!2185999))

(assert (not d!2186011))

(assert (not b!7013468))

(assert (not d!2185997))

(assert (not b!7013274))

(assert (not d!2186037))

(assert (not bm!636963))

(assert (not b!7013413))

(assert (not d!2185937))

(assert (not d!2185981))

(assert (not d!2186031))

(assert (not b_lambda!264465))

(assert (not b!7013285))

(assert (not b!7013266))

(assert (not d!2185987))

(assert tp_is_empty!43893)

(assert (not b!7013404))

(assert (not bm!636956))

(assert (not d!2185951))

(assert (not b!7013322))

(assert (not bs!1866400))

(assert (not d!2186039))

(assert (not b!7013306))

(assert (not d!2185973))

(assert (not d!2186001))

(assert (not d!2185991))

(assert (not b!7013401))

(assert (not d!2185955))

(assert (not b!7013411))

(assert (not b!7013391))

(assert (not b!7013412))

(assert (not b!7013272))

(assert (not bs!1866403))

(assert (not b!7013345))

(assert (not d!2185977))

(assert (not d!2185949))

(assert (not d!2186023))

(assert (not b!7013433))

(assert (not b!7013374))

(assert (not b!7013448))

(assert (not d!2185967))

(assert (not setNonEmpty!48431))

(assert (not d!2185969))

(assert (not b!7013446))

(assert (not d!2185979))

(assert (not b!7013400))

(assert (not d!2186019))

(assert (not b!7013452))

(assert (not d!2185963))

(assert (not d!2185961))

(assert (not b!7013388))

(assert (not b!7013350))

(assert (not d!2186007))

(assert (not b!7013416))

(assert (not b!7013387))

(assert (not d!2185985))

(assert (not b!7013314))

(assert (not b!7013406))

(assert (not d!2186015))

(assert (not b!7013311))

(assert (not bm!636969))

(assert (not b!7013299))

(assert (not b!7013392))

(assert (not d!2185947))

(assert (not bm!636964))

(assert (not d!2185939))

(assert (not b!7013386))

(assert (not b!7013273))

(assert (not b!7013344))

(assert (not b!7013318))

(assert (not b!7013349))

(assert (not d!2186029))

(assert (not b!7013323))

(assert (not d!2186021))

(assert (not b_lambda!264467))

(assert (not d!2185933))

(assert (not b!7013417))

(assert (not b!7013308))

(assert (not bs!1866401))

(assert (not d!2185993))

(assert (not b!7013255))

(assert (not b!7013398))

(assert (not d!2186035))

(assert (not bm!636966))

(assert (not b!7013319))

(assert (not d!2185975))

(assert (not b!7013286))

(assert (not bm!636957))

(assert (not b!7013423))

(assert (not b!7013407))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

