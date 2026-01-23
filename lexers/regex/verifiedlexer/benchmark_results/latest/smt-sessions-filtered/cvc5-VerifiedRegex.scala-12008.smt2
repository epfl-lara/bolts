; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!673112 () Bool)

(assert start!673112)

(declare-fun b!6998251 () Bool)

(assert (=> b!6998251 true))

(declare-fun b!6998243 () Bool)

(assert (=> b!6998243 true))

(declare-fun b!6998237 () Bool)

(assert (=> b!6998237 true))

(declare-fun b!6998223 () Bool)

(declare-fun e!4206479 () Bool)

(declare-fun e!4206461 () Bool)

(assert (=> b!6998223 (= e!4206479 e!4206461)))

(declare-fun res!2854725 () Bool)

(assert (=> b!6998223 (=> res!2854725 e!4206461)))

(declare-datatypes ((C!34794 0))(
  ( (C!34795 (val!27099 Int)) )
))
(declare-datatypes ((Regex!17262 0))(
  ( (ElementMatch!17262 (c!1298793 C!34794)) (Concat!26107 (regOne!35036 Regex!17262) (regTwo!35036 Regex!17262)) (EmptyExpr!17262) (Star!17262 (reg!17591 Regex!17262)) (EmptyLang!17262) (Union!17262 (regOne!35037 Regex!17262) (regTwo!35037 Regex!17262)) )
))
(declare-datatypes ((List!67331 0))(
  ( (Nil!67207) (Cons!67207 (h!73655 Regex!17262) (t!381082 List!67331)) )
))
(declare-datatypes ((Context!12516 0))(
  ( (Context!12517 (exprs!6758 List!67331)) )
))
(declare-fun lt!2494137 () (Set Context!12516))

(declare-fun lt!2494122 () (Set Context!12516))

(assert (=> b!6998223 (= res!2854725 (not (= lt!2494137 lt!2494122)))))

(declare-fun lt!2494164 () Context!12516)

(assert (=> b!6998223 (= lt!2494137 (set.insert lt!2494164 (as set.empty (Set Context!12516))))))

(declare-fun lambda!404675 () Int)

(declare-datatypes ((Unit!161182 0))(
  ( (Unit!161183) )
))
(declare-fun lt!2494133 () Unit!161182)

(declare-fun lt!2494127 () Context!12516)

(declare-fun ct2!306 () Context!12516)

(declare-fun lemmaConcatPreservesForall!598 (List!67331 List!67331 Int) Unit!161182)

(assert (=> b!6998223 (= lt!2494133 (lemmaConcatPreservesForall!598 (exprs!6758 lt!2494127) (exprs!6758 ct2!306) lambda!404675))))

(declare-fun b!6998224 () Bool)

(declare-fun e!4206469 () Bool)

(declare-fun tp!1930833 () Bool)

(assert (=> b!6998224 (= e!4206469 tp!1930833)))

(declare-fun b!6998225 () Bool)

(declare-fun e!4206473 () Bool)

(declare-fun e!4206477 () Bool)

(assert (=> b!6998225 (= e!4206473 e!4206477)))

(declare-fun res!2854721 () Bool)

(assert (=> b!6998225 (=> res!2854721 e!4206477)))

(declare-fun nullable!7022 (Regex!17262) Bool)

(assert (=> b!6998225 (= res!2854721 (not (nullable!7022 (h!73655 (exprs!6758 lt!2494127)))))))

(declare-fun lt!2494162 () Context!12516)

(declare-fun lt!2494147 () List!67331)

(assert (=> b!6998225 (= lt!2494162 (Context!12517 lt!2494147))))

(declare-fun tail!13292 (List!67331) List!67331)

(assert (=> b!6998225 (= lt!2494147 (tail!13292 (exprs!6758 lt!2494127)))))

(declare-fun b!6998226 () Bool)

(declare-fun e!4206478 () Bool)

(declare-fun e!4206463 () Bool)

(assert (=> b!6998226 (= e!4206478 e!4206463)))

(declare-fun res!2854718 () Bool)

(assert (=> b!6998226 (=> res!2854718 e!4206463)))

(declare-fun e!4206462 () Bool)

(assert (=> b!6998226 (= res!2854718 e!4206462)))

(declare-fun res!2854728 () Bool)

(assert (=> b!6998226 (=> (not res!2854728) (not e!4206462))))

(declare-fun lt!2494145 () Bool)

(declare-fun lt!2494155 () Bool)

(assert (=> b!6998226 (= res!2854728 (not (= lt!2494145 lt!2494155)))))

(declare-fun lt!2494113 () (Set Context!12516))

(declare-datatypes ((List!67332 0))(
  ( (Nil!67208) (Cons!67208 (h!73656 C!34794) (t!381083 List!67332)) )
))
(declare-fun s!7408 () List!67332)

(declare-fun matchZipper!2802 ((Set Context!12516) List!67332) Bool)

(assert (=> b!6998226 (= lt!2494145 (matchZipper!2802 lt!2494113 (t!381083 s!7408)))))

(declare-fun lt!2494118 () Unit!161182)

(assert (=> b!6998226 (= lt!2494118 (lemmaConcatPreservesForall!598 lt!2494147 (exprs!6758 ct2!306) lambda!404675))))

(declare-fun lt!2494156 () (Set Context!12516))

(declare-fun e!4206470 () Bool)

(assert (=> b!6998226 (= (matchZipper!2802 lt!2494156 (t!381083 s!7408)) e!4206470)))

(declare-fun res!2854712 () Bool)

(assert (=> b!6998226 (=> res!2854712 e!4206470)))

(assert (=> b!6998226 (= res!2854712 lt!2494155)))

(declare-fun lt!2494157 () (Set Context!12516))

(assert (=> b!6998226 (= lt!2494155 (matchZipper!2802 lt!2494157 (t!381083 s!7408)))))

(declare-fun lt!2494139 () Unit!161182)

(declare-fun lt!2494154 () (Set Context!12516))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1435 ((Set Context!12516) (Set Context!12516) List!67332) Unit!161182)

(assert (=> b!6998226 (= lt!2494139 (lemmaZipperConcatMatchesSameAsBothZippers!1435 lt!2494157 lt!2494154 (t!381083 s!7408)))))

(declare-fun lt!2494119 () Unit!161182)

(assert (=> b!6998226 (= lt!2494119 (lemmaConcatPreservesForall!598 lt!2494147 (exprs!6758 ct2!306) lambda!404675))))

(declare-fun lt!2494130 () Unit!161182)

(assert (=> b!6998226 (= lt!2494130 (lemmaConcatPreservesForall!598 lt!2494147 (exprs!6758 ct2!306) lambda!404675))))

(declare-fun b!6998227 () Bool)

(declare-fun res!2854729 () Bool)

(declare-fun e!4206472 () Bool)

(assert (=> b!6998227 (=> res!2854729 e!4206472)))

(declare-fun lt!2494159 () (Set Context!12516))

(declare-datatypes ((tuple2!67870 0))(
  ( (tuple2!67871 (_1!37238 List!67332) (_2!37238 List!67332)) )
))
(declare-fun lt!2494138 () tuple2!67870)

(assert (=> b!6998227 (= res!2854729 (not (matchZipper!2802 lt!2494159 (_2!37238 lt!2494138))))))

(declare-fun b!6998229 () Bool)

(declare-fun e!4206474 () Bool)

(declare-fun e!4206465 () Bool)

(assert (=> b!6998229 (= e!4206474 e!4206465)))

(declare-fun res!2854723 () Bool)

(assert (=> b!6998229 (=> res!2854723 e!4206465)))

(declare-fun lt!2494146 () (Set Context!12516))

(assert (=> b!6998229 (= res!2854723 (not (matchZipper!2802 lt!2494146 s!7408)))))

(declare-fun lt!2494153 () Unit!161182)

(assert (=> b!6998229 (= lt!2494153 (lemmaConcatPreservesForall!598 lt!2494147 (exprs!6758 ct2!306) lambda!404675))))

(declare-fun b!6998230 () Bool)

(declare-fun res!2854722 () Bool)

(assert (=> b!6998230 (=> res!2854722 e!4206472)))

(declare-fun ++!15225 (List!67332 List!67332) List!67332)

(assert (=> b!6998230 (= res!2854722 (not (= (++!15225 (_1!37238 lt!2494138) (_2!37238 lt!2494138)) s!7408)))))

(declare-fun b!6998231 () Bool)

(declare-fun res!2854714 () Bool)

(assert (=> b!6998231 (=> res!2854714 e!4206463)))

(assert (=> b!6998231 (= res!2854714 (not lt!2494145))))

(declare-fun b!6998232 () Bool)

(declare-fun res!2854726 () Bool)

(declare-fun e!4206464 () Bool)

(assert (=> b!6998232 (=> (not res!2854726) (not e!4206464))))

(assert (=> b!6998232 (= res!2854726 (is-Cons!67208 s!7408))))

(declare-fun setNonEmpty!48046 () Bool)

(declare-fun tp!1930834 () Bool)

(declare-fun setRes!48046 () Bool)

(declare-fun setElem!48046 () Context!12516)

(declare-fun inv!86015 (Context!12516) Bool)

(assert (=> setNonEmpty!48046 (= setRes!48046 (and tp!1930834 (inv!86015 setElem!48046) e!4206469))))

(declare-fun z1!570 () (Set Context!12516))

(declare-fun setRest!48046 () (Set Context!12516))

(assert (=> setNonEmpty!48046 (= z1!570 (set.union (set.insert setElem!48046 (as set.empty (Set Context!12516))) setRest!48046))))

(declare-fun b!6998233 () Bool)

(declare-fun e!4206467 () Bool)

(assert (=> b!6998233 (= e!4206467 e!4206474)))

(declare-fun res!2854730 () Bool)

(assert (=> b!6998233 (=> res!2854730 e!4206474)))

(declare-fun derivationStepZipper!2742 ((Set Context!12516) C!34794) (Set Context!12516))

(assert (=> b!6998233 (= res!2854730 (not (= (derivationStepZipper!2742 lt!2494146 (h!73656 s!7408)) lt!2494154)))))

(declare-fun lt!2494120 () Unit!161182)

(assert (=> b!6998233 (= lt!2494120 (lemmaConcatPreservesForall!598 lt!2494147 (exprs!6758 ct2!306) lambda!404675))))

(declare-fun lt!2494148 () Unit!161182)

(assert (=> b!6998233 (= lt!2494148 (lemmaConcatPreservesForall!598 lt!2494147 (exprs!6758 ct2!306) lambda!404675))))

(declare-fun lambda!404676 () Int)

(declare-fun lt!2494144 () Context!12516)

(declare-fun flatMap!2248 ((Set Context!12516) Int) (Set Context!12516))

(declare-fun derivationStepZipperUp!1912 (Context!12516 C!34794) (Set Context!12516))

(assert (=> b!6998233 (= (flatMap!2248 lt!2494146 lambda!404676) (derivationStepZipperUp!1912 lt!2494144 (h!73656 s!7408)))))

(declare-fun lt!2494141 () Unit!161182)

(declare-fun lemmaFlatMapOnSingletonSet!1763 ((Set Context!12516) Context!12516 Int) Unit!161182)

(assert (=> b!6998233 (= lt!2494141 (lemmaFlatMapOnSingletonSet!1763 lt!2494146 lt!2494144 lambda!404676))))

(assert (=> b!6998233 (= lt!2494146 (set.insert lt!2494144 (as set.empty (Set Context!12516))))))

(declare-fun lt!2494149 () Unit!161182)

(assert (=> b!6998233 (= lt!2494149 (lemmaConcatPreservesForall!598 lt!2494147 (exprs!6758 ct2!306) lambda!404675))))

(declare-fun lt!2494142 () Unit!161182)

(assert (=> b!6998233 (= lt!2494142 (lemmaConcatPreservesForall!598 lt!2494147 (exprs!6758 ct2!306) lambda!404675))))

(declare-fun b!6998234 () Bool)

(assert (=> b!6998234 (= e!4206470 (matchZipper!2802 lt!2494154 (t!381083 s!7408)))))

(declare-fun b!6998235 () Bool)

(declare-fun res!2854734 () Bool)

(assert (=> b!6998235 (=> res!2854734 e!4206473)))

(assert (=> b!6998235 (= res!2854734 (not (is-Cons!67207 (exprs!6758 lt!2494127))))))

(declare-fun b!6998236 () Bool)

(declare-fun res!2854717 () Bool)

(declare-fun e!4206471 () Bool)

(assert (=> b!6998236 (=> res!2854717 e!4206471)))

(declare-fun lt!2494135 () Int)

(declare-datatypes ((List!67333 0))(
  ( (Nil!67209) (Cons!67209 (h!73657 Context!12516) (t!381084 List!67333)) )
))
(declare-fun zipperDepthTotal!483 (List!67333) Int)

(assert (=> b!6998236 (= res!2854717 (>= (zipperDepthTotal!483 (Cons!67209 lt!2494162 Nil!67209)) lt!2494135))))

(assert (=> b!6998237 (= e!4206461 e!4206473)))

(declare-fun res!2854727 () Bool)

(assert (=> b!6998237 (=> res!2854727 e!4206473)))

(assert (=> b!6998237 (= res!2854727 (not (= (derivationStepZipper!2742 lt!2494137 (h!73656 s!7408)) lt!2494113)))))

(assert (=> b!6998237 (= (flatMap!2248 lt!2494137 lambda!404676) (derivationStepZipperUp!1912 lt!2494164 (h!73656 s!7408)))))

(declare-fun lt!2494165 () Unit!161182)

(assert (=> b!6998237 (= lt!2494165 (lemmaFlatMapOnSingletonSet!1763 lt!2494137 lt!2494164 lambda!404676))))

(assert (=> b!6998237 (= lt!2494113 (derivationStepZipperUp!1912 lt!2494164 (h!73656 s!7408)))))

(declare-fun lt!2494123 () Unit!161182)

(assert (=> b!6998237 (= lt!2494123 (lemmaConcatPreservesForall!598 (exprs!6758 lt!2494127) (exprs!6758 ct2!306) lambda!404675))))

(declare-fun b!6998238 () Bool)

(assert (=> b!6998238 (= e!4206471 e!4206472)))

(declare-fun res!2854719 () Bool)

(assert (=> b!6998238 (=> res!2854719 e!4206472)))

(declare-fun lt!2494117 () (Set Context!12516))

(assert (=> b!6998238 (= res!2854719 (not (matchZipper!2802 lt!2494117 (_1!37238 lt!2494138))))))

(declare-datatypes ((Option!16767 0))(
  ( (None!16766) (Some!16766 (v!53042 tuple2!67870)) )
))
(declare-fun lt!2494112 () Option!16767)

(declare-fun get!23563 (Option!16767) tuple2!67870)

(assert (=> b!6998238 (= lt!2494138 (get!23563 lt!2494112))))

(declare-fun isDefined!13468 (Option!16767) Bool)

(assert (=> b!6998238 (isDefined!13468 lt!2494112)))

(declare-fun findConcatSeparationZippers!283 ((Set Context!12516) (Set Context!12516) List!67332 List!67332 List!67332) Option!16767)

(assert (=> b!6998238 (= lt!2494112 (findConcatSeparationZippers!283 lt!2494117 lt!2494159 Nil!67208 s!7408 s!7408))))

(assert (=> b!6998238 (= lt!2494159 (set.insert ct2!306 (as set.empty (Set Context!12516))))))

(declare-fun lt!2494163 () Unit!161182)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!283 ((Set Context!12516) Context!12516 List!67332) Unit!161182)

(assert (=> b!6998238 (= lt!2494163 (lemmaConcatZipperMatchesStringThenFindConcatDefined!283 lt!2494117 ct2!306 s!7408))))

(declare-fun b!6998239 () Bool)

(declare-fun e!4206475 () Bool)

(declare-fun tp_is_empty!43749 () Bool)

(declare-fun tp!1930832 () Bool)

(assert (=> b!6998239 (= e!4206475 (and tp_is_empty!43749 tp!1930832))))

(declare-fun b!6998240 () Bool)

(declare-fun res!2854731 () Bool)

(declare-fun e!4206466 () Bool)

(assert (=> b!6998240 (=> res!2854731 e!4206466)))

(declare-fun lt!2494134 () (Set Context!12516))

(declare-fun derivationStepZipperDown!1980 (Regex!17262 Context!12516 C!34794) (Set Context!12516))

(assert (=> b!6998240 (= res!2854731 (not (= lt!2494134 (set.union (derivationStepZipperDown!1980 (h!73655 (exprs!6758 lt!2494127)) lt!2494162 (h!73656 s!7408)) (derivationStepZipperUp!1912 lt!2494162 (h!73656 s!7408))))))))

(declare-fun b!6998241 () Bool)

(assert (=> b!6998241 (= e!4206472 e!4206466)))

(declare-fun res!2854732 () Bool)

(assert (=> b!6998241 (=> res!2854732 e!4206466)))

(declare-fun lt!2494160 () (Set Context!12516))

(assert (=> b!6998241 (= res!2854732 (not (= (derivationStepZipper!2742 lt!2494160 (h!73656 s!7408)) lt!2494134)))))

(assert (=> b!6998241 (= lt!2494134 (derivationStepZipperUp!1912 lt!2494127 (h!73656 s!7408)))))

(assert (=> b!6998241 (= (flatMap!2248 lt!2494160 lambda!404676) (derivationStepZipperUp!1912 lt!2494127 (h!73656 s!7408)))))

(declare-fun lt!2494152 () Unit!161182)

(assert (=> b!6998241 (= lt!2494152 (lemmaFlatMapOnSingletonSet!1763 lt!2494160 lt!2494127 lambda!404676))))

(assert (=> b!6998241 (= lt!2494160 (set.insert lt!2494127 (as set.empty (Set Context!12516))))))

(declare-fun b!6998228 () Bool)

(declare-fun e!4206468 () Bool)

(declare-fun tp!1930831 () Bool)

(assert (=> b!6998228 (= e!4206468 tp!1930831)))

(declare-fun res!2854724 () Bool)

(assert (=> start!673112 (=> (not res!2854724) (not e!4206464))))

(declare-fun lt!2494131 () (Set Context!12516))

(assert (=> start!673112 (= res!2854724 (matchZipper!2802 lt!2494131 s!7408))))

(declare-fun appendTo!383 ((Set Context!12516) Context!12516) (Set Context!12516))

(assert (=> start!673112 (= lt!2494131 (appendTo!383 z1!570 ct2!306))))

(assert (=> start!673112 e!4206464))

(declare-fun condSetEmpty!48046 () Bool)

(assert (=> start!673112 (= condSetEmpty!48046 (= z1!570 (as set.empty (Set Context!12516))))))

(assert (=> start!673112 setRes!48046))

(assert (=> start!673112 (and (inv!86015 ct2!306) e!4206468)))

(assert (=> start!673112 e!4206475))

(declare-fun b!6998242 () Bool)

(assert (=> b!6998242 (= e!4206466 (not (= (_1!37238 lt!2494138) Nil!67208)))))

(declare-fun e!4206476 () Bool)

(assert (=> b!6998243 (= e!4206476 e!4206479)))

(declare-fun res!2854735 () Bool)

(assert (=> b!6998243 (=> res!2854735 e!4206479)))

(declare-fun lt!2494121 () Context!12516)

(assert (=> b!6998243 (= res!2854735 (or (not (= lt!2494164 lt!2494121)) (not (set.member lt!2494127 z1!570))))))

(declare-fun ++!15226 (List!67331 List!67331) List!67331)

(assert (=> b!6998243 (= lt!2494164 (Context!12517 (++!15226 (exprs!6758 lt!2494127) (exprs!6758 ct2!306))))))

(declare-fun lt!2494150 () Unit!161182)

(assert (=> b!6998243 (= lt!2494150 (lemmaConcatPreservesForall!598 (exprs!6758 lt!2494127) (exprs!6758 ct2!306) lambda!404675))))

(declare-fun lambda!404674 () Int)

(declare-fun mapPost2!117 ((Set Context!12516) Int Context!12516) Context!12516)

(assert (=> b!6998243 (= lt!2494127 (mapPost2!117 z1!570 lambda!404674 lt!2494121))))

(declare-fun b!6998244 () Bool)

(declare-fun res!2854733 () Bool)

(assert (=> b!6998244 (=> res!2854733 e!4206476)))

(assert (=> b!6998244 (= res!2854733 (not (set.member lt!2494121 lt!2494131)))))

(declare-fun b!6998245 () Bool)

(assert (=> b!6998245 (= e!4206465 e!4206471)))

(declare-fun res!2854736 () Bool)

(assert (=> b!6998245 (=> res!2854736 e!4206471)))

(declare-fun lt!2494124 () Int)

(declare-fun contextDepthTotal!455 (Context!12516) Int)

(assert (=> b!6998245 (= res!2854736 (<= lt!2494124 (contextDepthTotal!455 lt!2494162)))))

(assert (=> b!6998245 (<= lt!2494124 lt!2494135)))

(declare-fun lt!2494128 () List!67333)

(assert (=> b!6998245 (= lt!2494135 (zipperDepthTotal!483 lt!2494128))))

(assert (=> b!6998245 (= lt!2494124 (contextDepthTotal!455 lt!2494127))))

(declare-fun lt!2494151 () Unit!161182)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!23 (List!67333 Context!12516) Unit!161182)

(assert (=> b!6998245 (= lt!2494151 (lemmaTotalDepthZipperLargerThanOfAnyContext!23 lt!2494128 lt!2494127))))

(declare-fun toList!10622 ((Set Context!12516)) List!67333)

(assert (=> b!6998245 (= lt!2494128 (toList!10622 z1!570))))

(declare-fun lt!2494140 () Unit!161182)

(assert (=> b!6998245 (= lt!2494140 (lemmaConcatPreservesForall!598 lt!2494147 (exprs!6758 ct2!306) lambda!404675))))

(declare-fun lt!2494161 () Unit!161182)

(assert (=> b!6998245 (= lt!2494161 (lemmaConcatPreservesForall!598 lt!2494147 (exprs!6758 ct2!306) lambda!404675))))

(declare-fun lt!2494116 () Unit!161182)

(assert (=> b!6998245 (= lt!2494116 (lemmaConcatPreservesForall!598 lt!2494147 (exprs!6758 ct2!306) lambda!404675))))

(assert (=> b!6998245 (= (flatMap!2248 lt!2494117 lambda!404676) (derivationStepZipperUp!1912 lt!2494162 (h!73656 s!7408)))))

(declare-fun lt!2494158 () Unit!161182)

(assert (=> b!6998245 (= lt!2494158 (lemmaFlatMapOnSingletonSet!1763 lt!2494117 lt!2494162 lambda!404676))))

(declare-fun map!15540 ((Set Context!12516) Int) (Set Context!12516))

(assert (=> b!6998245 (= (map!15540 lt!2494117 lambda!404674) (set.insert (Context!12517 (++!15226 lt!2494147 (exprs!6758 ct2!306))) (as set.empty (Set Context!12516))))))

(declare-fun lt!2494132 () Unit!161182)

(assert (=> b!6998245 (= lt!2494132 (lemmaConcatPreservesForall!598 lt!2494147 (exprs!6758 ct2!306) lambda!404675))))

(declare-fun lt!2494136 () Unit!161182)

(declare-fun lemmaMapOnSingletonSet!327 ((Set Context!12516) Context!12516 Int) Unit!161182)

(assert (=> b!6998245 (= lt!2494136 (lemmaMapOnSingletonSet!327 lt!2494117 lt!2494162 lambda!404674))))

(assert (=> b!6998245 (= lt!2494117 (set.insert lt!2494162 (as set.empty (Set Context!12516))))))

(declare-fun b!6998246 () Bool)

(assert (=> b!6998246 (= e!4206477 e!4206478)))

(declare-fun res!2854711 () Bool)

(assert (=> b!6998246 (=> res!2854711 e!4206478)))

(assert (=> b!6998246 (= res!2854711 (not (= lt!2494113 lt!2494156)))))

(assert (=> b!6998246 (= lt!2494156 (set.union lt!2494157 lt!2494154))))

(assert (=> b!6998246 (= lt!2494154 (derivationStepZipperUp!1912 lt!2494144 (h!73656 s!7408)))))

(assert (=> b!6998246 (= lt!2494157 (derivationStepZipperDown!1980 (h!73655 (exprs!6758 lt!2494127)) lt!2494144 (h!73656 s!7408)))))

(assert (=> b!6998246 (= lt!2494144 (Context!12517 (++!15226 lt!2494147 (exprs!6758 ct2!306))))))

(declare-fun lt!2494125 () Unit!161182)

(assert (=> b!6998246 (= lt!2494125 (lemmaConcatPreservesForall!598 lt!2494147 (exprs!6758 ct2!306) lambda!404675))))

(declare-fun lt!2494129 () Unit!161182)

(assert (=> b!6998246 (= lt!2494129 (lemmaConcatPreservesForall!598 lt!2494147 (exprs!6758 ct2!306) lambda!404675))))

(declare-fun b!6998247 () Bool)

(assert (=> b!6998247 (= e!4206463 e!4206467)))

(declare-fun res!2854720 () Bool)

(assert (=> b!6998247 (=> res!2854720 e!4206467)))

(assert (=> b!6998247 (= res!2854720 (not (matchZipper!2802 lt!2494154 (t!381083 s!7408))))))

(declare-fun lt!2494115 () Unit!161182)

(assert (=> b!6998247 (= lt!2494115 (lemmaConcatPreservesForall!598 lt!2494147 (exprs!6758 ct2!306) lambda!404675))))

(declare-fun b!6998248 () Bool)

(assert (=> b!6998248 (= e!4206462 (not (matchZipper!2802 lt!2494154 (t!381083 s!7408))))))

(declare-fun lt!2494143 () Unit!161182)

(assert (=> b!6998248 (= lt!2494143 (lemmaConcatPreservesForall!598 lt!2494147 (exprs!6758 ct2!306) lambda!404675))))

(declare-fun b!6998249 () Bool)

(declare-fun res!2854713 () Bool)

(assert (=> b!6998249 (=> res!2854713 e!4206472)))

(declare-fun isEmpty!39231 (List!67332) Bool)

(assert (=> b!6998249 (= res!2854713 (isEmpty!39231 (_1!37238 lt!2494138)))))

(declare-fun setIsEmpty!48046 () Bool)

(assert (=> setIsEmpty!48046 setRes!48046))

(declare-fun b!6998250 () Bool)

(declare-fun res!2854715 () Bool)

(assert (=> b!6998250 (=> res!2854715 e!4206473)))

(declare-fun isEmpty!39232 (List!67331) Bool)

(assert (=> b!6998250 (= res!2854715 (isEmpty!39232 (exprs!6758 lt!2494127)))))

(assert (=> b!6998251 (= e!4206464 (not e!4206476))))

(declare-fun res!2854716 () Bool)

(assert (=> b!6998251 (=> res!2854716 e!4206476)))

(assert (=> b!6998251 (= res!2854716 (not (matchZipper!2802 lt!2494122 s!7408)))))

(assert (=> b!6998251 (= lt!2494122 (set.insert lt!2494121 (as set.empty (Set Context!12516))))))

(declare-fun lambda!404673 () Int)

(declare-fun getWitness!1177 ((Set Context!12516) Int) Context!12516)

(assert (=> b!6998251 (= lt!2494121 (getWitness!1177 lt!2494131 lambda!404673))))

(declare-fun lt!2494126 () List!67333)

(declare-fun exists!3073 (List!67333 Int) Bool)

(assert (=> b!6998251 (exists!3073 lt!2494126 lambda!404673)))

(declare-fun lt!2494114 () Unit!161182)

(declare-fun lemmaZipperMatchesExistsMatchingContext!231 (List!67333 List!67332) Unit!161182)

(assert (=> b!6998251 (= lt!2494114 (lemmaZipperMatchesExistsMatchingContext!231 lt!2494126 s!7408))))

(assert (=> b!6998251 (= lt!2494126 (toList!10622 lt!2494131))))

(assert (= (and start!673112 res!2854724) b!6998232))

(assert (= (and b!6998232 res!2854726) b!6998251))

(assert (= (and b!6998251 (not res!2854716)) b!6998244))

(assert (= (and b!6998244 (not res!2854733)) b!6998243))

(assert (= (and b!6998243 (not res!2854735)) b!6998223))

(assert (= (and b!6998223 (not res!2854725)) b!6998237))

(assert (= (and b!6998237 (not res!2854727)) b!6998235))

(assert (= (and b!6998235 (not res!2854734)) b!6998250))

(assert (= (and b!6998250 (not res!2854715)) b!6998225))

(assert (= (and b!6998225 (not res!2854721)) b!6998246))

(assert (= (and b!6998246 (not res!2854711)) b!6998226))

(assert (= (and b!6998226 (not res!2854712)) b!6998234))

(assert (= (and b!6998226 res!2854728) b!6998248))

(assert (= (and b!6998226 (not res!2854718)) b!6998231))

(assert (= (and b!6998231 (not res!2854714)) b!6998247))

(assert (= (and b!6998247 (not res!2854720)) b!6998233))

(assert (= (and b!6998233 (not res!2854730)) b!6998229))

(assert (= (and b!6998229 (not res!2854723)) b!6998245))

(assert (= (and b!6998245 (not res!2854736)) b!6998236))

(assert (= (and b!6998236 (not res!2854717)) b!6998238))

(assert (= (and b!6998238 (not res!2854719)) b!6998227))

(assert (= (and b!6998227 (not res!2854729)) b!6998230))

(assert (= (and b!6998230 (not res!2854722)) b!6998249))

(assert (= (and b!6998249 (not res!2854713)) b!6998241))

(assert (= (and b!6998241 (not res!2854732)) b!6998240))

(assert (= (and b!6998240 (not res!2854731)) b!6998242))

(assert (= (and start!673112 condSetEmpty!48046) setIsEmpty!48046))

(assert (= (and start!673112 (not condSetEmpty!48046)) setNonEmpty!48046))

(assert (= setNonEmpty!48046 b!6998224))

(assert (= start!673112 b!6998228))

(assert (= (and start!673112 (is-Cons!67208 s!7408)) b!6998239))

(declare-fun m!7690864 () Bool)

(assert (=> b!6998225 m!7690864))

(declare-fun m!7690866 () Bool)

(assert (=> b!6998225 m!7690866))

(declare-fun m!7690868 () Bool)

(assert (=> start!673112 m!7690868))

(declare-fun m!7690870 () Bool)

(assert (=> start!673112 m!7690870))

(declare-fun m!7690872 () Bool)

(assert (=> start!673112 m!7690872))

(declare-fun m!7690874 () Bool)

(assert (=> setNonEmpty!48046 m!7690874))

(declare-fun m!7690876 () Bool)

(assert (=> b!6998246 m!7690876))

(declare-fun m!7690878 () Bool)

(assert (=> b!6998246 m!7690878))

(declare-fun m!7690880 () Bool)

(assert (=> b!6998246 m!7690880))

(assert (=> b!6998246 m!7690878))

(declare-fun m!7690882 () Bool)

(assert (=> b!6998246 m!7690882))

(declare-fun m!7690884 () Bool)

(assert (=> b!6998247 m!7690884))

(assert (=> b!6998247 m!7690878))

(declare-fun m!7690886 () Bool)

(assert (=> b!6998249 m!7690886))

(declare-fun m!7690888 () Bool)

(assert (=> b!6998229 m!7690888))

(assert (=> b!6998229 m!7690878))

(declare-fun m!7690890 () Bool)

(assert (=> b!6998230 m!7690890))

(assert (=> b!6998248 m!7690884))

(assert (=> b!6998248 m!7690878))

(declare-fun m!7690892 () Bool)

(assert (=> b!6998223 m!7690892))

(declare-fun m!7690894 () Bool)

(assert (=> b!6998223 m!7690894))

(declare-fun m!7690896 () Bool)

(assert (=> b!6998238 m!7690896))

(declare-fun m!7690898 () Bool)

(assert (=> b!6998238 m!7690898))

(declare-fun m!7690900 () Bool)

(assert (=> b!6998238 m!7690900))

(declare-fun m!7690902 () Bool)

(assert (=> b!6998238 m!7690902))

(declare-fun m!7690904 () Bool)

(assert (=> b!6998238 m!7690904))

(declare-fun m!7690906 () Bool)

(assert (=> b!6998238 m!7690906))

(declare-fun m!7690908 () Bool)

(assert (=> b!6998241 m!7690908))

(declare-fun m!7690910 () Bool)

(assert (=> b!6998241 m!7690910))

(declare-fun m!7690912 () Bool)

(assert (=> b!6998241 m!7690912))

(declare-fun m!7690914 () Bool)

(assert (=> b!6998241 m!7690914))

(declare-fun m!7690916 () Bool)

(assert (=> b!6998241 m!7690916))

(declare-fun m!7690918 () Bool)

(assert (=> b!6998237 m!7690918))

(declare-fun m!7690920 () Bool)

(assert (=> b!6998237 m!7690920))

(assert (=> b!6998237 m!7690894))

(declare-fun m!7690922 () Bool)

(assert (=> b!6998237 m!7690922))

(declare-fun m!7690924 () Bool)

(assert (=> b!6998237 m!7690924))

(declare-fun m!7690926 () Bool)

(assert (=> b!6998236 m!7690926))

(declare-fun m!7690928 () Bool)

(assert (=> b!6998233 m!7690928))

(declare-fun m!7690930 () Bool)

(assert (=> b!6998233 m!7690930))

(assert (=> b!6998233 m!7690878))

(declare-fun m!7690932 () Bool)

(assert (=> b!6998233 m!7690932))

(assert (=> b!6998233 m!7690878))

(assert (=> b!6998233 m!7690878))

(assert (=> b!6998233 m!7690880))

(declare-fun m!7690934 () Bool)

(assert (=> b!6998233 m!7690934))

(assert (=> b!6998233 m!7690878))

(declare-fun m!7690936 () Bool)

(assert (=> b!6998227 m!7690936))

(declare-fun m!7690938 () Bool)

(assert (=> b!6998250 m!7690938))

(declare-fun m!7690940 () Bool)

(assert (=> b!6998244 m!7690940))

(declare-fun m!7690942 () Bool)

(assert (=> b!6998243 m!7690942))

(declare-fun m!7690944 () Bool)

(assert (=> b!6998243 m!7690944))

(assert (=> b!6998243 m!7690894))

(declare-fun m!7690946 () Bool)

(assert (=> b!6998243 m!7690946))

(declare-fun m!7690948 () Bool)

(assert (=> b!6998240 m!7690948))

(declare-fun m!7690950 () Bool)

(assert (=> b!6998240 m!7690950))

(assert (=> b!6998234 m!7690884))

(declare-fun m!7690952 () Bool)

(assert (=> b!6998226 m!7690952))

(assert (=> b!6998226 m!7690878))

(declare-fun m!7690954 () Bool)

(assert (=> b!6998226 m!7690954))

(assert (=> b!6998226 m!7690878))

(assert (=> b!6998226 m!7690878))

(declare-fun m!7690956 () Bool)

(assert (=> b!6998226 m!7690956))

(declare-fun m!7690958 () Bool)

(assert (=> b!6998226 m!7690958))

(declare-fun m!7690960 () Bool)

(assert (=> b!6998245 m!7690960))

(assert (=> b!6998245 m!7690876))

(declare-fun m!7690962 () Bool)

(assert (=> b!6998245 m!7690962))

(declare-fun m!7690964 () Bool)

(assert (=> b!6998245 m!7690964))

(assert (=> b!6998245 m!7690878))

(declare-fun m!7690966 () Bool)

(assert (=> b!6998245 m!7690966))

(declare-fun m!7690968 () Bool)

(assert (=> b!6998245 m!7690968))

(assert (=> b!6998245 m!7690878))

(declare-fun m!7690970 () Bool)

(assert (=> b!6998245 m!7690970))

(assert (=> b!6998245 m!7690878))

(assert (=> b!6998245 m!7690950))

(assert (=> b!6998245 m!7690878))

(declare-fun m!7690972 () Bool)

(assert (=> b!6998245 m!7690972))

(declare-fun m!7690974 () Bool)

(assert (=> b!6998245 m!7690974))

(declare-fun m!7690976 () Bool)

(assert (=> b!6998245 m!7690976))

(declare-fun m!7690978 () Bool)

(assert (=> b!6998245 m!7690978))

(declare-fun m!7690980 () Bool)

(assert (=> b!6998245 m!7690980))

(declare-fun m!7690982 () Bool)

(assert (=> b!6998251 m!7690982))

(declare-fun m!7690984 () Bool)

(assert (=> b!6998251 m!7690984))

(declare-fun m!7690986 () Bool)

(assert (=> b!6998251 m!7690986))

(declare-fun m!7690988 () Bool)

(assert (=> b!6998251 m!7690988))

(declare-fun m!7690990 () Bool)

(assert (=> b!6998251 m!7690990))

(declare-fun m!7690992 () Bool)

(assert (=> b!6998251 m!7690992))

(push 1)

(assert (not b!6998243))

(assert (not b!6998247))

(assert (not b!6998228))

(assert (not b!6998249))

(assert (not b!6998233))

(assert (not b!6998245))

(assert (not setNonEmpty!48046))

(assert (not b!6998236))

(assert tp_is_empty!43749)

(assert (not b!6998234))

(assert (not b!6998230))

(assert (not b!6998224))

(assert (not b!6998240))

(assert (not b!6998246))

(assert (not b!6998241))

(assert (not b!6998239))

(assert (not b!6998227))

(assert (not b!6998250))

(assert (not b!6998248))

(assert (not b!6998226))

(assert (not b!6998225))

(assert (not b!6998251))

(assert (not b!6998229))

(assert (not b!6998223))

(assert (not b!6998238))

(assert (not b!6998237))

(assert (not start!673112))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2180777 () Bool)

(declare-fun c!1298813 () Bool)

(assert (=> d!2180777 (= c!1298813 (isEmpty!39231 (_2!37238 lt!2494138)))))

(declare-fun e!4206539 () Bool)

(assert (=> d!2180777 (= (matchZipper!2802 lt!2494159 (_2!37238 lt!2494138)) e!4206539)))

(declare-fun b!6998355 () Bool)

(declare-fun nullableZipper!2457 ((Set Context!12516)) Bool)

(assert (=> b!6998355 (= e!4206539 (nullableZipper!2457 lt!2494159))))

(declare-fun b!6998356 () Bool)

(declare-fun head!14135 (List!67332) C!34794)

(declare-fun tail!13294 (List!67332) List!67332)

(assert (=> b!6998356 (= e!4206539 (matchZipper!2802 (derivationStepZipper!2742 lt!2494159 (head!14135 (_2!37238 lt!2494138))) (tail!13294 (_2!37238 lt!2494138))))))

(assert (= (and d!2180777 c!1298813) b!6998355))

(assert (= (and d!2180777 (not c!1298813)) b!6998356))

(declare-fun m!7691124 () Bool)

(assert (=> d!2180777 m!7691124))

(declare-fun m!7691126 () Bool)

(assert (=> b!6998355 m!7691126))

(declare-fun m!7691128 () Bool)

(assert (=> b!6998356 m!7691128))

(assert (=> b!6998356 m!7691128))

(declare-fun m!7691130 () Bool)

(assert (=> b!6998356 m!7691130))

(declare-fun m!7691132 () Bool)

(assert (=> b!6998356 m!7691132))

(assert (=> b!6998356 m!7691130))

(assert (=> b!6998356 m!7691132))

(declare-fun m!7691134 () Bool)

(assert (=> b!6998356 m!7691134))

(assert (=> b!6998227 d!2180777))

(declare-fun bs!1863951 () Bool)

(declare-fun d!2180779 () Bool)

(assert (= bs!1863951 (and d!2180779 b!6998237)))

(declare-fun lambda!404741 () Int)

(assert (=> bs!1863951 (= lambda!404741 lambda!404676)))

(assert (=> d!2180779 true))

(assert (=> d!2180779 (= (derivationStepZipper!2742 lt!2494137 (h!73656 s!7408)) (flatMap!2248 lt!2494137 lambda!404741))))

(declare-fun bs!1863952 () Bool)

(assert (= bs!1863952 d!2180779))

(declare-fun m!7691136 () Bool)

(assert (=> bs!1863952 m!7691136))

(assert (=> b!6998237 d!2180779))

(declare-fun d!2180781 () Bool)

(declare-fun forall!16174 (List!67331 Int) Bool)

(assert (=> d!2180781 (forall!16174 (++!15226 (exprs!6758 lt!2494127) (exprs!6758 ct2!306)) lambda!404675)))

(declare-fun lt!2494334 () Unit!161182)

(declare-fun choose!52434 (List!67331 List!67331 Int) Unit!161182)

(assert (=> d!2180781 (= lt!2494334 (choose!52434 (exprs!6758 lt!2494127) (exprs!6758 ct2!306) lambda!404675))))

(assert (=> d!2180781 (forall!16174 (exprs!6758 lt!2494127) lambda!404675)))

(assert (=> d!2180781 (= (lemmaConcatPreservesForall!598 (exprs!6758 lt!2494127) (exprs!6758 ct2!306) lambda!404675) lt!2494334)))

(declare-fun bs!1863953 () Bool)

(assert (= bs!1863953 d!2180781))

(assert (=> bs!1863953 m!7690944))

(assert (=> bs!1863953 m!7690944))

(declare-fun m!7691138 () Bool)

(assert (=> bs!1863953 m!7691138))

(declare-fun m!7691140 () Bool)

(assert (=> bs!1863953 m!7691140))

(declare-fun m!7691142 () Bool)

(assert (=> bs!1863953 m!7691142))

(assert (=> b!6998237 d!2180781))

(declare-fun b!6998369 () Bool)

(declare-fun e!4206548 () (Set Context!12516))

(declare-fun e!4206547 () (Set Context!12516))

(assert (=> b!6998369 (= e!4206548 e!4206547)))

(declare-fun c!1298821 () Bool)

(assert (=> b!6998369 (= c!1298821 (is-Cons!67207 (exprs!6758 lt!2494164)))))

(declare-fun d!2180783 () Bool)

(declare-fun c!1298820 () Bool)

(declare-fun e!4206546 () Bool)

(assert (=> d!2180783 (= c!1298820 e!4206546)))

(declare-fun res!2854818 () Bool)

(assert (=> d!2180783 (=> (not res!2854818) (not e!4206546))))

(assert (=> d!2180783 (= res!2854818 (is-Cons!67207 (exprs!6758 lt!2494164)))))

(assert (=> d!2180783 (= (derivationStepZipperUp!1912 lt!2494164 (h!73656 s!7408)) e!4206548)))

(declare-fun call!635370 () (Set Context!12516))

(declare-fun b!6998370 () Bool)

(assert (=> b!6998370 (= e!4206548 (set.union call!635370 (derivationStepZipperUp!1912 (Context!12517 (t!381082 (exprs!6758 lt!2494164))) (h!73656 s!7408))))))

(declare-fun b!6998371 () Bool)

(assert (=> b!6998371 (= e!4206546 (nullable!7022 (h!73655 (exprs!6758 lt!2494164))))))

(declare-fun b!6998372 () Bool)

(assert (=> b!6998372 (= e!4206547 call!635370)))

(declare-fun bm!635365 () Bool)

(assert (=> bm!635365 (= call!635370 (derivationStepZipperDown!1980 (h!73655 (exprs!6758 lt!2494164)) (Context!12517 (t!381082 (exprs!6758 lt!2494164))) (h!73656 s!7408)))))

(declare-fun b!6998373 () Bool)

(assert (=> b!6998373 (= e!4206547 (as set.empty (Set Context!12516)))))

(assert (= (and d!2180783 res!2854818) b!6998371))

(assert (= (and d!2180783 c!1298820) b!6998370))

(assert (= (and d!2180783 (not c!1298820)) b!6998369))

(assert (= (and b!6998369 c!1298821) b!6998372))

(assert (= (and b!6998369 (not c!1298821)) b!6998373))

(assert (= (or b!6998370 b!6998372) bm!635365))

(declare-fun m!7691144 () Bool)

(assert (=> b!6998370 m!7691144))

(declare-fun m!7691146 () Bool)

(assert (=> b!6998371 m!7691146))

(declare-fun m!7691148 () Bool)

(assert (=> bm!635365 m!7691148))

(assert (=> b!6998237 d!2180783))

(declare-fun d!2180785 () Bool)

(declare-fun choose!52435 ((Set Context!12516) Int) (Set Context!12516))

(assert (=> d!2180785 (= (flatMap!2248 lt!2494137 lambda!404676) (choose!52435 lt!2494137 lambda!404676))))

(declare-fun bs!1863954 () Bool)

(assert (= bs!1863954 d!2180785))

(declare-fun m!7691150 () Bool)

(assert (=> bs!1863954 m!7691150))

(assert (=> b!6998237 d!2180785))

(declare-fun d!2180787 () Bool)

(declare-fun dynLambda!26982 (Int Context!12516) (Set Context!12516))

(assert (=> d!2180787 (= (flatMap!2248 lt!2494137 lambda!404676) (dynLambda!26982 lambda!404676 lt!2494164))))

(declare-fun lt!2494337 () Unit!161182)

(declare-fun choose!52436 ((Set Context!12516) Context!12516 Int) Unit!161182)

(assert (=> d!2180787 (= lt!2494337 (choose!52436 lt!2494137 lt!2494164 lambda!404676))))

(assert (=> d!2180787 (= lt!2494137 (set.insert lt!2494164 (as set.empty (Set Context!12516))))))

(assert (=> d!2180787 (= (lemmaFlatMapOnSingletonSet!1763 lt!2494137 lt!2494164 lambda!404676) lt!2494337)))

(declare-fun b_lambda!263419 () Bool)

(assert (=> (not b_lambda!263419) (not d!2180787)))

(declare-fun bs!1863955 () Bool)

(assert (= bs!1863955 d!2180787))

(assert (=> bs!1863955 m!7690922))

(declare-fun m!7691152 () Bool)

(assert (=> bs!1863955 m!7691152))

(declare-fun m!7691154 () Bool)

(assert (=> bs!1863955 m!7691154))

(assert (=> bs!1863955 m!7690892))

(assert (=> b!6998237 d!2180787))

(declare-fun d!2180789 () Bool)

(declare-fun c!1298822 () Bool)

(assert (=> d!2180789 (= c!1298822 (isEmpty!39231 (t!381083 s!7408)))))

(declare-fun e!4206549 () Bool)

(assert (=> d!2180789 (= (matchZipper!2802 lt!2494154 (t!381083 s!7408)) e!4206549)))

(declare-fun b!6998374 () Bool)

(assert (=> b!6998374 (= e!4206549 (nullableZipper!2457 lt!2494154))))

(declare-fun b!6998375 () Bool)

(assert (=> b!6998375 (= e!4206549 (matchZipper!2802 (derivationStepZipper!2742 lt!2494154 (head!14135 (t!381083 s!7408))) (tail!13294 (t!381083 s!7408))))))

(assert (= (and d!2180789 c!1298822) b!6998374))

(assert (= (and d!2180789 (not c!1298822)) b!6998375))

(declare-fun m!7691156 () Bool)

(assert (=> d!2180789 m!7691156))

(declare-fun m!7691158 () Bool)

(assert (=> b!6998374 m!7691158))

(declare-fun m!7691160 () Bool)

(assert (=> b!6998375 m!7691160))

(assert (=> b!6998375 m!7691160))

(declare-fun m!7691162 () Bool)

(assert (=> b!6998375 m!7691162))

(declare-fun m!7691164 () Bool)

(assert (=> b!6998375 m!7691164))

(assert (=> b!6998375 m!7691162))

(assert (=> b!6998375 m!7691164))

(declare-fun m!7691166 () Bool)

(assert (=> b!6998375 m!7691166))

(assert (=> b!6998248 d!2180789))

(declare-fun d!2180791 () Bool)

(assert (=> d!2180791 (forall!16174 (++!15226 lt!2494147 (exprs!6758 ct2!306)) lambda!404675)))

(declare-fun lt!2494338 () Unit!161182)

(assert (=> d!2180791 (= lt!2494338 (choose!52434 lt!2494147 (exprs!6758 ct2!306) lambda!404675))))

(assert (=> d!2180791 (forall!16174 lt!2494147 lambda!404675)))

(assert (=> d!2180791 (= (lemmaConcatPreservesForall!598 lt!2494147 (exprs!6758 ct2!306) lambda!404675) lt!2494338)))

(declare-fun bs!1863956 () Bool)

(assert (= bs!1863956 d!2180791))

(assert (=> bs!1863956 m!7690876))

(assert (=> bs!1863956 m!7690876))

(declare-fun m!7691168 () Bool)

(assert (=> bs!1863956 m!7691168))

(declare-fun m!7691170 () Bool)

(assert (=> bs!1863956 m!7691170))

(declare-fun m!7691172 () Bool)

(assert (=> bs!1863956 m!7691172))

(assert (=> b!6998248 d!2180791))

(declare-fun d!2180793 () Bool)

(declare-fun e!4206555 () Bool)

(assert (=> d!2180793 e!4206555))

(declare-fun res!2854824 () Bool)

(assert (=> d!2180793 (=> (not res!2854824) (not e!4206555))))

(declare-fun lt!2494341 () List!67331)

(declare-fun content!13301 (List!67331) (Set Regex!17262))

(assert (=> d!2180793 (= res!2854824 (= (content!13301 lt!2494341) (set.union (content!13301 lt!2494147) (content!13301 (exprs!6758 ct2!306)))))))

(declare-fun e!4206554 () List!67331)

(assert (=> d!2180793 (= lt!2494341 e!4206554)))

(declare-fun c!1298825 () Bool)

(assert (=> d!2180793 (= c!1298825 (is-Nil!67207 lt!2494147))))

(assert (=> d!2180793 (= (++!15226 lt!2494147 (exprs!6758 ct2!306)) lt!2494341)))

(declare-fun b!6998387 () Bool)

(assert (=> b!6998387 (= e!4206555 (or (not (= (exprs!6758 ct2!306) Nil!67207)) (= lt!2494341 lt!2494147)))))

(declare-fun b!6998385 () Bool)

(assert (=> b!6998385 (= e!4206554 (Cons!67207 (h!73655 lt!2494147) (++!15226 (t!381082 lt!2494147) (exprs!6758 ct2!306))))))

(declare-fun b!6998386 () Bool)

(declare-fun res!2854823 () Bool)

(assert (=> b!6998386 (=> (not res!2854823) (not e!4206555))))

(declare-fun size!40930 (List!67331) Int)

(assert (=> b!6998386 (= res!2854823 (= (size!40930 lt!2494341) (+ (size!40930 lt!2494147) (size!40930 (exprs!6758 ct2!306)))))))

(declare-fun b!6998384 () Bool)

(assert (=> b!6998384 (= e!4206554 (exprs!6758 ct2!306))))

(assert (= (and d!2180793 c!1298825) b!6998384))

(assert (= (and d!2180793 (not c!1298825)) b!6998385))

(assert (= (and d!2180793 res!2854824) b!6998386))

(assert (= (and b!6998386 res!2854823) b!6998387))

(declare-fun m!7691174 () Bool)

(assert (=> d!2180793 m!7691174))

(declare-fun m!7691176 () Bool)

(assert (=> d!2180793 m!7691176))

(declare-fun m!7691178 () Bool)

(assert (=> d!2180793 m!7691178))

(declare-fun m!7691180 () Bool)

(assert (=> b!6998385 m!7691180))

(declare-fun m!7691182 () Bool)

(assert (=> b!6998386 m!7691182))

(declare-fun m!7691184 () Bool)

(assert (=> b!6998386 m!7691184))

(declare-fun m!7691186 () Bool)

(assert (=> b!6998386 m!7691186))

(assert (=> b!6998246 d!2180793))

(declare-fun b!6998410 () Bool)

(declare-fun e!4206568 () Bool)

(assert (=> b!6998410 (= e!4206568 (nullable!7022 (regOne!35036 (h!73655 (exprs!6758 lt!2494127)))))))

(declare-fun call!635387 () (Set Context!12516))

(declare-fun bm!635378 () Bool)

(declare-fun c!1298837 () Bool)

(declare-fun call!635383 () List!67331)

(assert (=> bm!635378 (= call!635387 (derivationStepZipperDown!1980 (ite c!1298837 (regOne!35037 (h!73655 (exprs!6758 lt!2494127))) (regOne!35036 (h!73655 (exprs!6758 lt!2494127)))) (ite c!1298837 lt!2494144 (Context!12517 call!635383)) (h!73656 s!7408)))))

(declare-fun b!6998411 () Bool)

(declare-fun e!4206569 () (Set Context!12516))

(declare-fun e!4206570 () (Set Context!12516))

(assert (=> b!6998411 (= e!4206569 e!4206570)))

(assert (=> b!6998411 (= c!1298837 (is-Union!17262 (h!73655 (exprs!6758 lt!2494127))))))

(declare-fun b!6998412 () Bool)

(declare-fun c!1298840 () Bool)

(assert (=> b!6998412 (= c!1298840 (is-Star!17262 (h!73655 (exprs!6758 lt!2494127))))))

(declare-fun e!4206571 () (Set Context!12516))

(declare-fun e!4206573 () (Set Context!12516))

(assert (=> b!6998412 (= e!4206571 e!4206573)))

(declare-fun b!6998413 () Bool)

(assert (=> b!6998413 (= e!4206569 (set.insert lt!2494144 (as set.empty (Set Context!12516))))))

(declare-fun b!6998415 () Bool)

(declare-fun call!635385 () (Set Context!12516))

(assert (=> b!6998415 (= e!4206570 (set.union call!635387 call!635385))))

(declare-fun bm!635379 () Bool)

(declare-fun call!635386 () (Set Context!12516))

(assert (=> bm!635379 (= call!635386 call!635385)))

(declare-fun bm!635380 () Bool)

(declare-fun call!635388 () (Set Context!12516))

(assert (=> bm!635380 (= call!635388 call!635386)))

(declare-fun bm!635381 () Bool)

(declare-fun call!635384 () List!67331)

(assert (=> bm!635381 (= call!635384 call!635383)))

(declare-fun b!6998416 () Bool)

(declare-fun c!1298839 () Bool)

(assert (=> b!6998416 (= c!1298839 e!4206568)))

(declare-fun res!2854827 () Bool)

(assert (=> b!6998416 (=> (not res!2854827) (not e!4206568))))

(assert (=> b!6998416 (= res!2854827 (is-Concat!26107 (h!73655 (exprs!6758 lt!2494127))))))

(declare-fun e!4206572 () (Set Context!12516))

(assert (=> b!6998416 (= e!4206570 e!4206572)))

(declare-fun d!2180795 () Bool)

(declare-fun c!1298838 () Bool)

(assert (=> d!2180795 (= c!1298838 (and (is-ElementMatch!17262 (h!73655 (exprs!6758 lt!2494127))) (= (c!1298793 (h!73655 (exprs!6758 lt!2494127))) (h!73656 s!7408))))))

(assert (=> d!2180795 (= (derivationStepZipperDown!1980 (h!73655 (exprs!6758 lt!2494127)) lt!2494144 (h!73656 s!7408)) e!4206569)))

(declare-fun b!6998414 () Bool)

(assert (=> b!6998414 (= e!4206573 call!635388)))

(declare-fun b!6998417 () Bool)

(assert (=> b!6998417 (= e!4206571 call!635388)))

(declare-fun b!6998418 () Bool)

(assert (=> b!6998418 (= e!4206572 (set.union call!635387 call!635386))))

(declare-fun b!6998419 () Bool)

(assert (=> b!6998419 (= e!4206573 (as set.empty (Set Context!12516)))))

(declare-fun bm!635382 () Bool)

(declare-fun c!1298836 () Bool)

(declare-fun $colon$colon!2501 (List!67331 Regex!17262) List!67331)

(assert (=> bm!635382 (= call!635383 ($colon$colon!2501 (exprs!6758 lt!2494144) (ite (or c!1298839 c!1298836) (regTwo!35036 (h!73655 (exprs!6758 lt!2494127))) (h!73655 (exprs!6758 lt!2494127)))))))

(declare-fun bm!635383 () Bool)

(assert (=> bm!635383 (= call!635385 (derivationStepZipperDown!1980 (ite c!1298837 (regTwo!35037 (h!73655 (exprs!6758 lt!2494127))) (ite c!1298839 (regTwo!35036 (h!73655 (exprs!6758 lt!2494127))) (ite c!1298836 (regOne!35036 (h!73655 (exprs!6758 lt!2494127))) (reg!17591 (h!73655 (exprs!6758 lt!2494127)))))) (ite (or c!1298837 c!1298839) lt!2494144 (Context!12517 call!635384)) (h!73656 s!7408)))))

(declare-fun b!6998420 () Bool)

(assert (=> b!6998420 (= e!4206572 e!4206571)))

(assert (=> b!6998420 (= c!1298836 (is-Concat!26107 (h!73655 (exprs!6758 lt!2494127))))))

(assert (= (and d!2180795 c!1298838) b!6998413))

(assert (= (and d!2180795 (not c!1298838)) b!6998411))

(assert (= (and b!6998411 c!1298837) b!6998415))

(assert (= (and b!6998411 (not c!1298837)) b!6998416))

(assert (= (and b!6998416 res!2854827) b!6998410))

(assert (= (and b!6998416 c!1298839) b!6998418))

(assert (= (and b!6998416 (not c!1298839)) b!6998420))

(assert (= (and b!6998420 c!1298836) b!6998417))

(assert (= (and b!6998420 (not c!1298836)) b!6998412))

(assert (= (and b!6998412 c!1298840) b!6998414))

(assert (= (and b!6998412 (not c!1298840)) b!6998419))

(assert (= (or b!6998417 b!6998414) bm!635381))

(assert (= (or b!6998417 b!6998414) bm!635380))

(assert (= (or b!6998418 bm!635380) bm!635379))

(assert (= (or b!6998418 bm!635381) bm!635382))

(assert (= (or b!6998415 b!6998418) bm!635378))

(assert (= (or b!6998415 bm!635379) bm!635383))

(declare-fun m!7691188 () Bool)

(assert (=> bm!635378 m!7691188))

(declare-fun m!7691190 () Bool)

(assert (=> bm!635383 m!7691190))

(assert (=> b!6998413 m!7690928))

(declare-fun m!7691192 () Bool)

(assert (=> bm!635382 m!7691192))

(declare-fun m!7691194 () Bool)

(assert (=> b!6998410 m!7691194))

(assert (=> b!6998246 d!2180795))

(declare-fun b!6998421 () Bool)

(declare-fun e!4206576 () (Set Context!12516))

(declare-fun e!4206575 () (Set Context!12516))

(assert (=> b!6998421 (= e!4206576 e!4206575)))

(declare-fun c!1298842 () Bool)

(assert (=> b!6998421 (= c!1298842 (is-Cons!67207 (exprs!6758 lt!2494144)))))

(declare-fun d!2180797 () Bool)

(declare-fun c!1298841 () Bool)

(declare-fun e!4206574 () Bool)

(assert (=> d!2180797 (= c!1298841 e!4206574)))

(declare-fun res!2854828 () Bool)

(assert (=> d!2180797 (=> (not res!2854828) (not e!4206574))))

(assert (=> d!2180797 (= res!2854828 (is-Cons!67207 (exprs!6758 lt!2494144)))))

(assert (=> d!2180797 (= (derivationStepZipperUp!1912 lt!2494144 (h!73656 s!7408)) e!4206576)))

(declare-fun b!6998422 () Bool)

(declare-fun call!635389 () (Set Context!12516))

(assert (=> b!6998422 (= e!4206576 (set.union call!635389 (derivationStepZipperUp!1912 (Context!12517 (t!381082 (exprs!6758 lt!2494144))) (h!73656 s!7408))))))

(declare-fun b!6998423 () Bool)

(assert (=> b!6998423 (= e!4206574 (nullable!7022 (h!73655 (exprs!6758 lt!2494144))))))

(declare-fun b!6998424 () Bool)

(assert (=> b!6998424 (= e!4206575 call!635389)))

(declare-fun bm!635384 () Bool)

(assert (=> bm!635384 (= call!635389 (derivationStepZipperDown!1980 (h!73655 (exprs!6758 lt!2494144)) (Context!12517 (t!381082 (exprs!6758 lt!2494144))) (h!73656 s!7408)))))

(declare-fun b!6998425 () Bool)

(assert (=> b!6998425 (= e!4206575 (as set.empty (Set Context!12516)))))

(assert (= (and d!2180797 res!2854828) b!6998423))

(assert (= (and d!2180797 c!1298841) b!6998422))

(assert (= (and d!2180797 (not c!1298841)) b!6998421))

(assert (= (and b!6998421 c!1298842) b!6998424))

(assert (= (and b!6998421 (not c!1298842)) b!6998425))

(assert (= (or b!6998422 b!6998424) bm!635384))

(declare-fun m!7691196 () Bool)

(assert (=> b!6998422 m!7691196))

(declare-fun m!7691198 () Bool)

(assert (=> b!6998423 m!7691198))

(declare-fun m!7691200 () Bool)

(assert (=> bm!635384 m!7691200))

(assert (=> b!6998246 d!2180797))

(assert (=> b!6998246 d!2180791))

(declare-fun d!2180799 () Bool)

(declare-fun e!4206579 () Bool)

(assert (=> d!2180799 (= (matchZipper!2802 (set.union lt!2494157 lt!2494154) (t!381083 s!7408)) e!4206579)))

(declare-fun res!2854831 () Bool)

(assert (=> d!2180799 (=> res!2854831 e!4206579)))

(assert (=> d!2180799 (= res!2854831 (matchZipper!2802 lt!2494157 (t!381083 s!7408)))))

(declare-fun lt!2494344 () Unit!161182)

(declare-fun choose!52437 ((Set Context!12516) (Set Context!12516) List!67332) Unit!161182)

(assert (=> d!2180799 (= lt!2494344 (choose!52437 lt!2494157 lt!2494154 (t!381083 s!7408)))))

(assert (=> d!2180799 (= (lemmaZipperConcatMatchesSameAsBothZippers!1435 lt!2494157 lt!2494154 (t!381083 s!7408)) lt!2494344)))

(declare-fun b!6998428 () Bool)

(assert (=> b!6998428 (= e!4206579 (matchZipper!2802 lt!2494154 (t!381083 s!7408)))))

(assert (= (and d!2180799 (not res!2854831)) b!6998428))

(declare-fun m!7691202 () Bool)

(assert (=> d!2180799 m!7691202))

(assert (=> d!2180799 m!7690958))

(declare-fun m!7691204 () Bool)

(assert (=> d!2180799 m!7691204))

(assert (=> b!6998428 m!7690884))

(assert (=> b!6998226 d!2180799))

(assert (=> b!6998226 d!2180791))

(declare-fun d!2180801 () Bool)

(declare-fun c!1298843 () Bool)

(assert (=> d!2180801 (= c!1298843 (isEmpty!39231 (t!381083 s!7408)))))

(declare-fun e!4206580 () Bool)

(assert (=> d!2180801 (= (matchZipper!2802 lt!2494157 (t!381083 s!7408)) e!4206580)))

(declare-fun b!6998429 () Bool)

(assert (=> b!6998429 (= e!4206580 (nullableZipper!2457 lt!2494157))))

(declare-fun b!6998430 () Bool)

(assert (=> b!6998430 (= e!4206580 (matchZipper!2802 (derivationStepZipper!2742 lt!2494157 (head!14135 (t!381083 s!7408))) (tail!13294 (t!381083 s!7408))))))

(assert (= (and d!2180801 c!1298843) b!6998429))

(assert (= (and d!2180801 (not c!1298843)) b!6998430))

(assert (=> d!2180801 m!7691156))

(declare-fun m!7691206 () Bool)

(assert (=> b!6998429 m!7691206))

(assert (=> b!6998430 m!7691160))

(assert (=> b!6998430 m!7691160))

(declare-fun m!7691208 () Bool)

(assert (=> b!6998430 m!7691208))

(assert (=> b!6998430 m!7691164))

(assert (=> b!6998430 m!7691208))

(assert (=> b!6998430 m!7691164))

(declare-fun m!7691210 () Bool)

(assert (=> b!6998430 m!7691210))

(assert (=> b!6998226 d!2180801))

(declare-fun d!2180803 () Bool)

(declare-fun c!1298844 () Bool)

(assert (=> d!2180803 (= c!1298844 (isEmpty!39231 (t!381083 s!7408)))))

(declare-fun e!4206581 () Bool)

(assert (=> d!2180803 (= (matchZipper!2802 lt!2494156 (t!381083 s!7408)) e!4206581)))

(declare-fun b!6998431 () Bool)

(assert (=> b!6998431 (= e!4206581 (nullableZipper!2457 lt!2494156))))

(declare-fun b!6998432 () Bool)

(assert (=> b!6998432 (= e!4206581 (matchZipper!2802 (derivationStepZipper!2742 lt!2494156 (head!14135 (t!381083 s!7408))) (tail!13294 (t!381083 s!7408))))))

(assert (= (and d!2180803 c!1298844) b!6998431))

(assert (= (and d!2180803 (not c!1298844)) b!6998432))

(assert (=> d!2180803 m!7691156))

(declare-fun m!7691212 () Bool)

(assert (=> b!6998431 m!7691212))

(assert (=> b!6998432 m!7691160))

(assert (=> b!6998432 m!7691160))

(declare-fun m!7691214 () Bool)

(assert (=> b!6998432 m!7691214))

(assert (=> b!6998432 m!7691164))

(assert (=> b!6998432 m!7691214))

(assert (=> b!6998432 m!7691164))

(declare-fun m!7691216 () Bool)

(assert (=> b!6998432 m!7691216))

(assert (=> b!6998226 d!2180803))

(declare-fun d!2180805 () Bool)

(declare-fun c!1298845 () Bool)

(assert (=> d!2180805 (= c!1298845 (isEmpty!39231 (t!381083 s!7408)))))

(declare-fun e!4206582 () Bool)

(assert (=> d!2180805 (= (matchZipper!2802 lt!2494113 (t!381083 s!7408)) e!4206582)))

(declare-fun b!6998433 () Bool)

(assert (=> b!6998433 (= e!4206582 (nullableZipper!2457 lt!2494113))))

(declare-fun b!6998434 () Bool)

(assert (=> b!6998434 (= e!4206582 (matchZipper!2802 (derivationStepZipper!2742 lt!2494113 (head!14135 (t!381083 s!7408))) (tail!13294 (t!381083 s!7408))))))

(assert (= (and d!2180805 c!1298845) b!6998433))

(assert (= (and d!2180805 (not c!1298845)) b!6998434))

(assert (=> d!2180805 m!7691156))

(declare-fun m!7691218 () Bool)

(assert (=> b!6998433 m!7691218))

(assert (=> b!6998434 m!7691160))

(assert (=> b!6998434 m!7691160))

(declare-fun m!7691220 () Bool)

(assert (=> b!6998434 m!7691220))

(assert (=> b!6998434 m!7691164))

(assert (=> b!6998434 m!7691220))

(assert (=> b!6998434 m!7691164))

(declare-fun m!7691222 () Bool)

(assert (=> b!6998434 m!7691222))

(assert (=> b!6998226 d!2180805))

(declare-fun d!2180807 () Bool)

(declare-fun lt!2494347 () Int)

(assert (=> d!2180807 (>= lt!2494347 0)))

(declare-fun e!4206585 () Int)

(assert (=> d!2180807 (= lt!2494347 e!4206585)))

(declare-fun c!1298848 () Bool)

(assert (=> d!2180807 (= c!1298848 (is-Cons!67209 (Cons!67209 lt!2494162 Nil!67209)))))

(assert (=> d!2180807 (= (zipperDepthTotal!483 (Cons!67209 lt!2494162 Nil!67209)) lt!2494347)))

(declare-fun b!6998439 () Bool)

(assert (=> b!6998439 (= e!4206585 (+ (contextDepthTotal!455 (h!73657 (Cons!67209 lt!2494162 Nil!67209))) (zipperDepthTotal!483 (t!381084 (Cons!67209 lt!2494162 Nil!67209)))))))

(declare-fun b!6998440 () Bool)

(assert (=> b!6998440 (= e!4206585 0)))

(assert (= (and d!2180807 c!1298848) b!6998439))

(assert (= (and d!2180807 (not c!1298848)) b!6998440))

(declare-fun m!7691224 () Bool)

(assert (=> b!6998439 m!7691224))

(declare-fun m!7691226 () Bool)

(assert (=> b!6998439 m!7691226))

(assert (=> b!6998236 d!2180807))

(assert (=> b!6998247 d!2180789))

(assert (=> b!6998247 d!2180791))

(declare-fun b!6998451 () Bool)

(declare-fun res!2854837 () Bool)

(declare-fun e!4206591 () Bool)

(assert (=> b!6998451 (=> (not res!2854837) (not e!4206591))))

(declare-fun lt!2494350 () List!67332)

(declare-fun size!40931 (List!67332) Int)

(assert (=> b!6998451 (= res!2854837 (= (size!40931 lt!2494350) (+ (size!40931 (_1!37238 lt!2494138)) (size!40931 (_2!37238 lt!2494138)))))))

(declare-fun b!6998450 () Bool)

(declare-fun e!4206590 () List!67332)

(assert (=> b!6998450 (= e!4206590 (Cons!67208 (h!73656 (_1!37238 lt!2494138)) (++!15225 (t!381083 (_1!37238 lt!2494138)) (_2!37238 lt!2494138))))))

(declare-fun d!2180809 () Bool)

(assert (=> d!2180809 e!4206591))

(declare-fun res!2854836 () Bool)

(assert (=> d!2180809 (=> (not res!2854836) (not e!4206591))))

(declare-fun content!13302 (List!67332) (Set C!34794))

(assert (=> d!2180809 (= res!2854836 (= (content!13302 lt!2494350) (set.union (content!13302 (_1!37238 lt!2494138)) (content!13302 (_2!37238 lt!2494138)))))))

(assert (=> d!2180809 (= lt!2494350 e!4206590)))

(declare-fun c!1298851 () Bool)

(assert (=> d!2180809 (= c!1298851 (is-Nil!67208 (_1!37238 lt!2494138)))))

(assert (=> d!2180809 (= (++!15225 (_1!37238 lt!2494138) (_2!37238 lt!2494138)) lt!2494350)))

(declare-fun b!6998449 () Bool)

(assert (=> b!6998449 (= e!4206590 (_2!37238 lt!2494138))))

(declare-fun b!6998452 () Bool)

(assert (=> b!6998452 (= e!4206591 (or (not (= (_2!37238 lt!2494138) Nil!67208)) (= lt!2494350 (_1!37238 lt!2494138))))))

(assert (= (and d!2180809 c!1298851) b!6998449))

(assert (= (and d!2180809 (not c!1298851)) b!6998450))

(assert (= (and d!2180809 res!2854836) b!6998451))

(assert (= (and b!6998451 res!2854837) b!6998452))

(declare-fun m!7691228 () Bool)

(assert (=> b!6998451 m!7691228))

(declare-fun m!7691230 () Bool)

(assert (=> b!6998451 m!7691230))

(declare-fun m!7691232 () Bool)

(assert (=> b!6998451 m!7691232))

(declare-fun m!7691234 () Bool)

(assert (=> b!6998450 m!7691234))

(declare-fun m!7691236 () Bool)

(assert (=> d!2180809 m!7691236))

(declare-fun m!7691238 () Bool)

(assert (=> d!2180809 m!7691238))

(declare-fun m!7691240 () Bool)

(assert (=> d!2180809 m!7691240))

(assert (=> b!6998230 d!2180809))

(declare-fun b!6998453 () Bool)

(declare-fun e!4206592 () Bool)

(assert (=> b!6998453 (= e!4206592 (nullable!7022 (regOne!35036 (h!73655 (exprs!6758 lt!2494127)))))))

(declare-fun call!635390 () List!67331)

(declare-fun call!635394 () (Set Context!12516))

(declare-fun bm!635385 () Bool)

(declare-fun c!1298853 () Bool)

(assert (=> bm!635385 (= call!635394 (derivationStepZipperDown!1980 (ite c!1298853 (regOne!35037 (h!73655 (exprs!6758 lt!2494127))) (regOne!35036 (h!73655 (exprs!6758 lt!2494127)))) (ite c!1298853 lt!2494162 (Context!12517 call!635390)) (h!73656 s!7408)))))

(declare-fun b!6998454 () Bool)

(declare-fun e!4206593 () (Set Context!12516))

(declare-fun e!4206594 () (Set Context!12516))

(assert (=> b!6998454 (= e!4206593 e!4206594)))

(assert (=> b!6998454 (= c!1298853 (is-Union!17262 (h!73655 (exprs!6758 lt!2494127))))))

(declare-fun b!6998455 () Bool)

(declare-fun c!1298856 () Bool)

(assert (=> b!6998455 (= c!1298856 (is-Star!17262 (h!73655 (exprs!6758 lt!2494127))))))

(declare-fun e!4206595 () (Set Context!12516))

(declare-fun e!4206597 () (Set Context!12516))

(assert (=> b!6998455 (= e!4206595 e!4206597)))

(declare-fun b!6998456 () Bool)

(assert (=> b!6998456 (= e!4206593 (set.insert lt!2494162 (as set.empty (Set Context!12516))))))

(declare-fun b!6998458 () Bool)

(declare-fun call!635392 () (Set Context!12516))

(assert (=> b!6998458 (= e!4206594 (set.union call!635394 call!635392))))

(declare-fun bm!635386 () Bool)

(declare-fun call!635393 () (Set Context!12516))

(assert (=> bm!635386 (= call!635393 call!635392)))

(declare-fun bm!635387 () Bool)

(declare-fun call!635395 () (Set Context!12516))

(assert (=> bm!635387 (= call!635395 call!635393)))

(declare-fun bm!635388 () Bool)

(declare-fun call!635391 () List!67331)

(assert (=> bm!635388 (= call!635391 call!635390)))

(declare-fun b!6998459 () Bool)

(declare-fun c!1298855 () Bool)

(assert (=> b!6998459 (= c!1298855 e!4206592)))

(declare-fun res!2854838 () Bool)

(assert (=> b!6998459 (=> (not res!2854838) (not e!4206592))))

(assert (=> b!6998459 (= res!2854838 (is-Concat!26107 (h!73655 (exprs!6758 lt!2494127))))))

(declare-fun e!4206596 () (Set Context!12516))

(assert (=> b!6998459 (= e!4206594 e!4206596)))

(declare-fun d!2180811 () Bool)

(declare-fun c!1298854 () Bool)

(assert (=> d!2180811 (= c!1298854 (and (is-ElementMatch!17262 (h!73655 (exprs!6758 lt!2494127))) (= (c!1298793 (h!73655 (exprs!6758 lt!2494127))) (h!73656 s!7408))))))

(assert (=> d!2180811 (= (derivationStepZipperDown!1980 (h!73655 (exprs!6758 lt!2494127)) lt!2494162 (h!73656 s!7408)) e!4206593)))

(declare-fun b!6998457 () Bool)

(assert (=> b!6998457 (= e!4206597 call!635395)))

(declare-fun b!6998460 () Bool)

(assert (=> b!6998460 (= e!4206595 call!635395)))

(declare-fun b!6998461 () Bool)

(assert (=> b!6998461 (= e!4206596 (set.union call!635394 call!635393))))

(declare-fun b!6998462 () Bool)

(assert (=> b!6998462 (= e!4206597 (as set.empty (Set Context!12516)))))

(declare-fun c!1298852 () Bool)

(declare-fun bm!635389 () Bool)

(assert (=> bm!635389 (= call!635390 ($colon$colon!2501 (exprs!6758 lt!2494162) (ite (or c!1298855 c!1298852) (regTwo!35036 (h!73655 (exprs!6758 lt!2494127))) (h!73655 (exprs!6758 lt!2494127)))))))

(declare-fun bm!635390 () Bool)

(assert (=> bm!635390 (= call!635392 (derivationStepZipperDown!1980 (ite c!1298853 (regTwo!35037 (h!73655 (exprs!6758 lt!2494127))) (ite c!1298855 (regTwo!35036 (h!73655 (exprs!6758 lt!2494127))) (ite c!1298852 (regOne!35036 (h!73655 (exprs!6758 lt!2494127))) (reg!17591 (h!73655 (exprs!6758 lt!2494127)))))) (ite (or c!1298853 c!1298855) lt!2494162 (Context!12517 call!635391)) (h!73656 s!7408)))))

(declare-fun b!6998463 () Bool)

(assert (=> b!6998463 (= e!4206596 e!4206595)))

(assert (=> b!6998463 (= c!1298852 (is-Concat!26107 (h!73655 (exprs!6758 lt!2494127))))))

(assert (= (and d!2180811 c!1298854) b!6998456))

(assert (= (and d!2180811 (not c!1298854)) b!6998454))

(assert (= (and b!6998454 c!1298853) b!6998458))

(assert (= (and b!6998454 (not c!1298853)) b!6998459))

(assert (= (and b!6998459 res!2854838) b!6998453))

(assert (= (and b!6998459 c!1298855) b!6998461))

(assert (= (and b!6998459 (not c!1298855)) b!6998463))

(assert (= (and b!6998463 c!1298852) b!6998460))

(assert (= (and b!6998463 (not c!1298852)) b!6998455))

(assert (= (and b!6998455 c!1298856) b!6998457))

(assert (= (and b!6998455 (not c!1298856)) b!6998462))

(assert (= (or b!6998460 b!6998457) bm!635388))

(assert (= (or b!6998460 b!6998457) bm!635387))

(assert (= (or b!6998461 bm!635387) bm!635386))

(assert (= (or b!6998461 bm!635388) bm!635389))

(assert (= (or b!6998458 b!6998461) bm!635385))

(assert (= (or b!6998458 bm!635386) bm!635390))

(declare-fun m!7691242 () Bool)

(assert (=> bm!635385 m!7691242))

(declare-fun m!7691244 () Bool)

(assert (=> bm!635390 m!7691244))

(assert (=> b!6998456 m!7690962))

(declare-fun m!7691246 () Bool)

(assert (=> bm!635389 m!7691246))

(assert (=> b!6998453 m!7691194))

(assert (=> b!6998240 d!2180811))

(declare-fun b!6998464 () Bool)

(declare-fun e!4206600 () (Set Context!12516))

(declare-fun e!4206599 () (Set Context!12516))

(assert (=> b!6998464 (= e!4206600 e!4206599)))

(declare-fun c!1298858 () Bool)

(assert (=> b!6998464 (= c!1298858 (is-Cons!67207 (exprs!6758 lt!2494162)))))

(declare-fun d!2180813 () Bool)

(declare-fun c!1298857 () Bool)

(declare-fun e!4206598 () Bool)

(assert (=> d!2180813 (= c!1298857 e!4206598)))

(declare-fun res!2854839 () Bool)

(assert (=> d!2180813 (=> (not res!2854839) (not e!4206598))))

(assert (=> d!2180813 (= res!2854839 (is-Cons!67207 (exprs!6758 lt!2494162)))))

(assert (=> d!2180813 (= (derivationStepZipperUp!1912 lt!2494162 (h!73656 s!7408)) e!4206600)))

(declare-fun b!6998465 () Bool)

(declare-fun call!635396 () (Set Context!12516))

(assert (=> b!6998465 (= e!4206600 (set.union call!635396 (derivationStepZipperUp!1912 (Context!12517 (t!381082 (exprs!6758 lt!2494162))) (h!73656 s!7408))))))

(declare-fun b!6998466 () Bool)

(assert (=> b!6998466 (= e!4206598 (nullable!7022 (h!73655 (exprs!6758 lt!2494162))))))

(declare-fun b!6998467 () Bool)

(assert (=> b!6998467 (= e!4206599 call!635396)))

(declare-fun bm!635391 () Bool)

(assert (=> bm!635391 (= call!635396 (derivationStepZipperDown!1980 (h!73655 (exprs!6758 lt!2494162)) (Context!12517 (t!381082 (exprs!6758 lt!2494162))) (h!73656 s!7408)))))

(declare-fun b!6998468 () Bool)

(assert (=> b!6998468 (= e!4206599 (as set.empty (Set Context!12516)))))

(assert (= (and d!2180813 res!2854839) b!6998466))

(assert (= (and d!2180813 c!1298857) b!6998465))

(assert (= (and d!2180813 (not c!1298857)) b!6998464))

(assert (= (and b!6998464 c!1298858) b!6998467))

(assert (= (and b!6998464 (not c!1298858)) b!6998468))

(assert (= (or b!6998465 b!6998467) bm!635391))

(declare-fun m!7691248 () Bool)

(assert (=> b!6998465 m!7691248))

(declare-fun m!7691250 () Bool)

(assert (=> b!6998466 m!7691250))

(declare-fun m!7691252 () Bool)

(assert (=> bm!635391 m!7691252))

(assert (=> b!6998240 d!2180813))

(declare-fun d!2180815 () Bool)

(assert (=> d!2180815 (= (isEmpty!39232 (exprs!6758 lt!2494127)) (is-Nil!67207 (exprs!6758 lt!2494127)))))

(assert (=> b!6998250 d!2180815))

(declare-fun d!2180817 () Bool)

(declare-fun c!1298859 () Bool)

(assert (=> d!2180817 (= c!1298859 (isEmpty!39231 (_1!37238 lt!2494138)))))

(declare-fun e!4206601 () Bool)

(assert (=> d!2180817 (= (matchZipper!2802 lt!2494117 (_1!37238 lt!2494138)) e!4206601)))

(declare-fun b!6998469 () Bool)

(assert (=> b!6998469 (= e!4206601 (nullableZipper!2457 lt!2494117))))

(declare-fun b!6998470 () Bool)

(assert (=> b!6998470 (= e!4206601 (matchZipper!2802 (derivationStepZipper!2742 lt!2494117 (head!14135 (_1!37238 lt!2494138))) (tail!13294 (_1!37238 lt!2494138))))))

(assert (= (and d!2180817 c!1298859) b!6998469))

(assert (= (and d!2180817 (not c!1298859)) b!6998470))

(assert (=> d!2180817 m!7690886))

(declare-fun m!7691254 () Bool)

(assert (=> b!6998469 m!7691254))

(declare-fun m!7691256 () Bool)

(assert (=> b!6998470 m!7691256))

(assert (=> b!6998470 m!7691256))

(declare-fun m!7691258 () Bool)

(assert (=> b!6998470 m!7691258))

(declare-fun m!7691260 () Bool)

(assert (=> b!6998470 m!7691260))

(assert (=> b!6998470 m!7691258))

(assert (=> b!6998470 m!7691260))

(declare-fun m!7691262 () Bool)

(assert (=> b!6998470 m!7691262))

(assert (=> b!6998238 d!2180817))

(declare-fun d!2180819 () Bool)

(declare-fun isEmpty!39235 (Option!16767) Bool)

(assert (=> d!2180819 (= (isDefined!13468 lt!2494112) (not (isEmpty!39235 lt!2494112)))))

(declare-fun bs!1863957 () Bool)

(assert (= bs!1863957 d!2180819))

(declare-fun m!7691264 () Bool)

(assert (=> bs!1863957 m!7691264))

(assert (=> b!6998238 d!2180819))

(declare-fun b!6998489 () Bool)

(declare-fun e!4206614 () Bool)

(declare-fun lt!2494357 () Option!16767)

(assert (=> b!6998489 (= e!4206614 (= (++!15225 (_1!37238 (get!23563 lt!2494357)) (_2!37238 (get!23563 lt!2494357))) s!7408))))

(declare-fun b!6998490 () Bool)

(declare-fun e!4206613 () Option!16767)

(assert (=> b!6998490 (= e!4206613 None!16766)))

(declare-fun b!6998491 () Bool)

(declare-fun e!4206615 () Bool)

(assert (=> b!6998491 (= e!4206615 (not (isDefined!13468 lt!2494357)))))

(declare-fun d!2180821 () Bool)

(assert (=> d!2180821 e!4206615))

(declare-fun res!2854851 () Bool)

(assert (=> d!2180821 (=> res!2854851 e!4206615)))

(assert (=> d!2180821 (= res!2854851 e!4206614)))

(declare-fun res!2854854 () Bool)

(assert (=> d!2180821 (=> (not res!2854854) (not e!4206614))))

(assert (=> d!2180821 (= res!2854854 (isDefined!13468 lt!2494357))))

(declare-fun e!4206612 () Option!16767)

(assert (=> d!2180821 (= lt!2494357 e!4206612)))

(declare-fun c!1298864 () Bool)

(declare-fun e!4206616 () Bool)

(assert (=> d!2180821 (= c!1298864 e!4206616)))

(declare-fun res!2854850 () Bool)

(assert (=> d!2180821 (=> (not res!2854850) (not e!4206616))))

(assert (=> d!2180821 (= res!2854850 (matchZipper!2802 lt!2494117 Nil!67208))))

(assert (=> d!2180821 (= (++!15225 Nil!67208 s!7408) s!7408)))

(assert (=> d!2180821 (= (findConcatSeparationZippers!283 lt!2494117 lt!2494159 Nil!67208 s!7408 s!7408) lt!2494357)))

(declare-fun b!6998492 () Bool)

(assert (=> b!6998492 (= e!4206612 (Some!16766 (tuple2!67871 Nil!67208 s!7408)))))

(declare-fun b!6998493 () Bool)

(declare-fun res!2854853 () Bool)

(assert (=> b!6998493 (=> (not res!2854853) (not e!4206614))))

(assert (=> b!6998493 (= res!2854853 (matchZipper!2802 lt!2494159 (_2!37238 (get!23563 lt!2494357))))))

(declare-fun b!6998494 () Bool)

(declare-fun res!2854852 () Bool)

(assert (=> b!6998494 (=> (not res!2854852) (not e!4206614))))

(assert (=> b!6998494 (= res!2854852 (matchZipper!2802 lt!2494117 (_1!37238 (get!23563 lt!2494357))))))

(declare-fun b!6998495 () Bool)

(assert (=> b!6998495 (= e!4206612 e!4206613)))

(declare-fun c!1298865 () Bool)

(assert (=> b!6998495 (= c!1298865 (is-Nil!67208 s!7408))))

(declare-fun b!6998496 () Bool)

(assert (=> b!6998496 (= e!4206616 (matchZipper!2802 lt!2494159 s!7408))))

(declare-fun b!6998497 () Bool)

(declare-fun lt!2494358 () Unit!161182)

(declare-fun lt!2494359 () Unit!161182)

(assert (=> b!6998497 (= lt!2494358 lt!2494359)))

(assert (=> b!6998497 (= (++!15225 (++!15225 Nil!67208 (Cons!67208 (h!73656 s!7408) Nil!67208)) (t!381083 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2877 (List!67332 C!34794 List!67332 List!67332) Unit!161182)

(assert (=> b!6998497 (= lt!2494359 (lemmaMoveElementToOtherListKeepsConcatEq!2877 Nil!67208 (h!73656 s!7408) (t!381083 s!7408) s!7408))))

(assert (=> b!6998497 (= e!4206613 (findConcatSeparationZippers!283 lt!2494117 lt!2494159 (++!15225 Nil!67208 (Cons!67208 (h!73656 s!7408) Nil!67208)) (t!381083 s!7408) s!7408))))

(assert (= (and d!2180821 res!2854850) b!6998496))

(assert (= (and d!2180821 c!1298864) b!6998492))

(assert (= (and d!2180821 (not c!1298864)) b!6998495))

(assert (= (and b!6998495 c!1298865) b!6998490))

(assert (= (and b!6998495 (not c!1298865)) b!6998497))

(assert (= (and d!2180821 res!2854854) b!6998494))

(assert (= (and b!6998494 res!2854852) b!6998493))

(assert (= (and b!6998493 res!2854853) b!6998489))

(assert (= (and d!2180821 (not res!2854851)) b!6998491))

(declare-fun m!7691266 () Bool)

(assert (=> d!2180821 m!7691266))

(declare-fun m!7691268 () Bool)

(assert (=> d!2180821 m!7691268))

(declare-fun m!7691270 () Bool)

(assert (=> d!2180821 m!7691270))

(declare-fun m!7691272 () Bool)

(assert (=> b!6998493 m!7691272))

(declare-fun m!7691274 () Bool)

(assert (=> b!6998493 m!7691274))

(assert (=> b!6998494 m!7691272))

(declare-fun m!7691276 () Bool)

(assert (=> b!6998494 m!7691276))

(assert (=> b!6998491 m!7691266))

(assert (=> b!6998489 m!7691272))

(declare-fun m!7691278 () Bool)

(assert (=> b!6998489 m!7691278))

(declare-fun m!7691280 () Bool)

(assert (=> b!6998497 m!7691280))

(assert (=> b!6998497 m!7691280))

(declare-fun m!7691282 () Bool)

(assert (=> b!6998497 m!7691282))

(declare-fun m!7691284 () Bool)

(assert (=> b!6998497 m!7691284))

(assert (=> b!6998497 m!7691280))

(declare-fun m!7691286 () Bool)

(assert (=> b!6998497 m!7691286))

(declare-fun m!7691288 () Bool)

(assert (=> b!6998496 m!7691288))

(assert (=> b!6998238 d!2180821))

(declare-fun d!2180823 () Bool)

(assert (=> d!2180823 (= (get!23563 lt!2494112) (v!53042 lt!2494112))))

(assert (=> b!6998238 d!2180823))

(declare-fun d!2180825 () Bool)

(assert (=> d!2180825 (isDefined!13468 (findConcatSeparationZippers!283 lt!2494117 (set.insert ct2!306 (as set.empty (Set Context!12516))) Nil!67208 s!7408 s!7408))))

(declare-fun lt!2494362 () Unit!161182)

(declare-fun choose!52438 ((Set Context!12516) Context!12516 List!67332) Unit!161182)

(assert (=> d!2180825 (= lt!2494362 (choose!52438 lt!2494117 ct2!306 s!7408))))

(assert (=> d!2180825 (matchZipper!2802 (appendTo!383 lt!2494117 ct2!306) s!7408)))

(assert (=> d!2180825 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!283 lt!2494117 ct2!306 s!7408) lt!2494362)))

(declare-fun bs!1863958 () Bool)

(assert (= bs!1863958 d!2180825))

(declare-fun m!7691290 () Bool)

(assert (=> bs!1863958 m!7691290))

(declare-fun m!7691292 () Bool)

(assert (=> bs!1863958 m!7691292))

(declare-fun m!7691294 () Bool)

(assert (=> bs!1863958 m!7691294))

(declare-fun m!7691296 () Bool)

(assert (=> bs!1863958 m!7691296))

(assert (=> bs!1863958 m!7691290))

(declare-fun m!7691298 () Bool)

(assert (=> bs!1863958 m!7691298))

(assert (=> bs!1863958 m!7690896))

(assert (=> bs!1863958 m!7690896))

(assert (=> bs!1863958 m!7691292))

(assert (=> b!6998238 d!2180825))

(declare-fun d!2180827 () Bool)

(assert (=> d!2180827 (= (isEmpty!39231 (_1!37238 lt!2494138)) (is-Nil!67208 (_1!37238 lt!2494138)))))

(assert (=> b!6998249 d!2180827))

(declare-fun d!2180829 () Bool)

(declare-fun c!1298866 () Bool)

(assert (=> d!2180829 (= c!1298866 (isEmpty!39231 s!7408))))

(declare-fun e!4206617 () Bool)

(assert (=> d!2180829 (= (matchZipper!2802 lt!2494146 s!7408) e!4206617)))

(declare-fun b!6998498 () Bool)

(assert (=> b!6998498 (= e!4206617 (nullableZipper!2457 lt!2494146))))

(declare-fun b!6998499 () Bool)

(assert (=> b!6998499 (= e!4206617 (matchZipper!2802 (derivationStepZipper!2742 lt!2494146 (head!14135 s!7408)) (tail!13294 s!7408)))))

(assert (= (and d!2180829 c!1298866) b!6998498))

(assert (= (and d!2180829 (not c!1298866)) b!6998499))

(declare-fun m!7691300 () Bool)

(assert (=> d!2180829 m!7691300))

(declare-fun m!7691302 () Bool)

(assert (=> b!6998498 m!7691302))

(declare-fun m!7691304 () Bool)

(assert (=> b!6998499 m!7691304))

(assert (=> b!6998499 m!7691304))

(declare-fun m!7691306 () Bool)

(assert (=> b!6998499 m!7691306))

(declare-fun m!7691308 () Bool)

(assert (=> b!6998499 m!7691308))

(assert (=> b!6998499 m!7691306))

(assert (=> b!6998499 m!7691308))

(declare-fun m!7691310 () Bool)

(assert (=> b!6998499 m!7691310))

(assert (=> b!6998229 d!2180829))

(assert (=> b!6998229 d!2180791))

(declare-fun d!2180831 () Bool)

(declare-fun c!1298867 () Bool)

(assert (=> d!2180831 (= c!1298867 (isEmpty!39231 s!7408))))

(declare-fun e!4206618 () Bool)

(assert (=> d!2180831 (= (matchZipper!2802 lt!2494131 s!7408) e!4206618)))

(declare-fun b!6998500 () Bool)

(assert (=> b!6998500 (= e!4206618 (nullableZipper!2457 lt!2494131))))

(declare-fun b!6998501 () Bool)

(assert (=> b!6998501 (= e!4206618 (matchZipper!2802 (derivationStepZipper!2742 lt!2494131 (head!14135 s!7408)) (tail!13294 s!7408)))))

(assert (= (and d!2180831 c!1298867) b!6998500))

(assert (= (and d!2180831 (not c!1298867)) b!6998501))

(assert (=> d!2180831 m!7691300))

(declare-fun m!7691312 () Bool)

(assert (=> b!6998500 m!7691312))

(assert (=> b!6998501 m!7691304))

(assert (=> b!6998501 m!7691304))

(declare-fun m!7691314 () Bool)

(assert (=> b!6998501 m!7691314))

(assert (=> b!6998501 m!7691308))

(assert (=> b!6998501 m!7691314))

(assert (=> b!6998501 m!7691308))

(declare-fun m!7691316 () Bool)

(assert (=> b!6998501 m!7691316))

(assert (=> start!673112 d!2180831))

(declare-fun bs!1863959 () Bool)

(declare-fun d!2180833 () Bool)

(assert (= bs!1863959 (and d!2180833 b!6998243)))

(declare-fun lambda!404746 () Int)

(assert (=> bs!1863959 (= lambda!404746 lambda!404674)))

(assert (=> d!2180833 true))

(assert (=> d!2180833 (= (appendTo!383 z1!570 ct2!306) (map!15540 z1!570 lambda!404746))))

(declare-fun bs!1863960 () Bool)

(assert (= bs!1863960 d!2180833))

(declare-fun m!7691318 () Bool)

(assert (=> bs!1863960 m!7691318))

(assert (=> start!673112 d!2180833))

(declare-fun bs!1863961 () Bool)

(declare-fun d!2180835 () Bool)

(assert (= bs!1863961 (and d!2180835 b!6998243)))

(declare-fun lambda!404749 () Int)

(assert (=> bs!1863961 (= lambda!404749 lambda!404675)))

(assert (=> d!2180835 (= (inv!86015 ct2!306) (forall!16174 (exprs!6758 ct2!306) lambda!404749))))

(declare-fun bs!1863962 () Bool)

(assert (= bs!1863962 d!2180835))

(declare-fun m!7691320 () Bool)

(assert (=> bs!1863962 m!7691320))

(assert (=> start!673112 d!2180835))

(declare-fun bs!1863963 () Bool)

(declare-fun d!2180837 () Bool)

(assert (= bs!1863963 (and d!2180837 b!6998243)))

(declare-fun lambda!404750 () Int)

(assert (=> bs!1863963 (= lambda!404750 lambda!404675)))

(declare-fun bs!1863964 () Bool)

(assert (= bs!1863964 (and d!2180837 d!2180835)))

(assert (=> bs!1863964 (= lambda!404750 lambda!404749)))

(assert (=> d!2180837 (= (inv!86015 setElem!48046) (forall!16174 (exprs!6758 setElem!48046) lambda!404750))))

(declare-fun bs!1863965 () Bool)

(assert (= bs!1863965 d!2180837))

(declare-fun m!7691322 () Bool)

(assert (=> bs!1863965 m!7691322))

(assert (=> setNonEmpty!48046 d!2180837))

(declare-fun d!2180839 () Bool)

(declare-fun e!4206620 () Bool)

(assert (=> d!2180839 e!4206620))

(declare-fun res!2854856 () Bool)

(assert (=> d!2180839 (=> (not res!2854856) (not e!4206620))))

(declare-fun lt!2494365 () List!67331)

(assert (=> d!2180839 (= res!2854856 (= (content!13301 lt!2494365) (set.union (content!13301 (exprs!6758 lt!2494127)) (content!13301 (exprs!6758 ct2!306)))))))

(declare-fun e!4206619 () List!67331)

(assert (=> d!2180839 (= lt!2494365 e!4206619)))

(declare-fun c!1298869 () Bool)

(assert (=> d!2180839 (= c!1298869 (is-Nil!67207 (exprs!6758 lt!2494127)))))

(assert (=> d!2180839 (= (++!15226 (exprs!6758 lt!2494127) (exprs!6758 ct2!306)) lt!2494365)))

(declare-fun b!6998505 () Bool)

(assert (=> b!6998505 (= e!4206620 (or (not (= (exprs!6758 ct2!306) Nil!67207)) (= lt!2494365 (exprs!6758 lt!2494127))))))

(declare-fun b!6998503 () Bool)

(assert (=> b!6998503 (= e!4206619 (Cons!67207 (h!73655 (exprs!6758 lt!2494127)) (++!15226 (t!381082 (exprs!6758 lt!2494127)) (exprs!6758 ct2!306))))))

(declare-fun b!6998504 () Bool)

(declare-fun res!2854855 () Bool)

(assert (=> b!6998504 (=> (not res!2854855) (not e!4206620))))

(assert (=> b!6998504 (= res!2854855 (= (size!40930 lt!2494365) (+ (size!40930 (exprs!6758 lt!2494127)) (size!40930 (exprs!6758 ct2!306)))))))

(declare-fun b!6998502 () Bool)

(assert (=> b!6998502 (= e!4206619 (exprs!6758 ct2!306))))

(assert (= (and d!2180839 c!1298869) b!6998502))

(assert (= (and d!2180839 (not c!1298869)) b!6998503))

(assert (= (and d!2180839 res!2854856) b!6998504))

(assert (= (and b!6998504 res!2854855) b!6998505))

(declare-fun m!7691324 () Bool)

(assert (=> d!2180839 m!7691324))

(declare-fun m!7691326 () Bool)

(assert (=> d!2180839 m!7691326))

(assert (=> d!2180839 m!7691178))

(declare-fun m!7691328 () Bool)

(assert (=> b!6998503 m!7691328))

(declare-fun m!7691330 () Bool)

(assert (=> b!6998504 m!7691330))

(declare-fun m!7691332 () Bool)

(assert (=> b!6998504 m!7691332))

(assert (=> b!6998504 m!7691186))

(assert (=> b!6998243 d!2180839))

(assert (=> b!6998243 d!2180781))

(declare-fun d!2180841 () Bool)

(declare-fun e!4206623 () Bool)

(assert (=> d!2180841 e!4206623))

(declare-fun res!2854859 () Bool)

(assert (=> d!2180841 (=> (not res!2854859) (not e!4206623))))

(declare-fun lt!2494368 () Context!12516)

(declare-fun dynLambda!26983 (Int Context!12516) Context!12516)

(assert (=> d!2180841 (= res!2854859 (= lt!2494121 (dynLambda!26983 lambda!404674 lt!2494368)))))

(declare-fun choose!52439 ((Set Context!12516) Int Context!12516) Context!12516)

(assert (=> d!2180841 (= lt!2494368 (choose!52439 z1!570 lambda!404674 lt!2494121))))

(assert (=> d!2180841 (set.member lt!2494121 (map!15540 z1!570 lambda!404674))))

(assert (=> d!2180841 (= (mapPost2!117 z1!570 lambda!404674 lt!2494121) lt!2494368)))

(declare-fun b!6998509 () Bool)

(assert (=> b!6998509 (= e!4206623 (set.member lt!2494368 z1!570))))

(assert (= (and d!2180841 res!2854859) b!6998509))

(declare-fun b_lambda!263421 () Bool)

(assert (=> (not b_lambda!263421) (not d!2180841)))

(declare-fun m!7691334 () Bool)

(assert (=> d!2180841 m!7691334))

(declare-fun m!7691336 () Bool)

(assert (=> d!2180841 m!7691336))

(declare-fun m!7691338 () Bool)

(assert (=> d!2180841 m!7691338))

(declare-fun m!7691340 () Bool)

(assert (=> d!2180841 m!7691340))

(declare-fun m!7691342 () Bool)

(assert (=> b!6998509 m!7691342))

(assert (=> b!6998243 d!2180841))

(declare-fun bs!1863966 () Bool)

(declare-fun d!2180843 () Bool)

(assert (= bs!1863966 (and d!2180843 b!6998237)))

(declare-fun lambda!404751 () Int)

(assert (=> bs!1863966 (= lambda!404751 lambda!404676)))

(declare-fun bs!1863967 () Bool)

(assert (= bs!1863967 (and d!2180843 d!2180779)))

(assert (=> bs!1863967 (= lambda!404751 lambda!404741)))

(assert (=> d!2180843 true))

(assert (=> d!2180843 (= (derivationStepZipper!2742 lt!2494160 (h!73656 s!7408)) (flatMap!2248 lt!2494160 lambda!404751))))

(declare-fun bs!1863968 () Bool)

(assert (= bs!1863968 d!2180843))

(declare-fun m!7691344 () Bool)

(assert (=> bs!1863968 m!7691344))

(assert (=> b!6998241 d!2180843))

(declare-fun b!6998510 () Bool)

(declare-fun e!4206626 () (Set Context!12516))

(declare-fun e!4206625 () (Set Context!12516))

(assert (=> b!6998510 (= e!4206626 e!4206625)))

(declare-fun c!1298871 () Bool)

(assert (=> b!6998510 (= c!1298871 (is-Cons!67207 (exprs!6758 lt!2494127)))))

(declare-fun d!2180845 () Bool)

(declare-fun c!1298870 () Bool)

(declare-fun e!4206624 () Bool)

(assert (=> d!2180845 (= c!1298870 e!4206624)))

(declare-fun res!2854860 () Bool)

(assert (=> d!2180845 (=> (not res!2854860) (not e!4206624))))

(assert (=> d!2180845 (= res!2854860 (is-Cons!67207 (exprs!6758 lt!2494127)))))

(assert (=> d!2180845 (= (derivationStepZipperUp!1912 lt!2494127 (h!73656 s!7408)) e!4206626)))

(declare-fun b!6998511 () Bool)

(declare-fun call!635397 () (Set Context!12516))

(assert (=> b!6998511 (= e!4206626 (set.union call!635397 (derivationStepZipperUp!1912 (Context!12517 (t!381082 (exprs!6758 lt!2494127))) (h!73656 s!7408))))))

(declare-fun b!6998512 () Bool)

(assert (=> b!6998512 (= e!4206624 (nullable!7022 (h!73655 (exprs!6758 lt!2494127))))))

(declare-fun b!6998513 () Bool)

(assert (=> b!6998513 (= e!4206625 call!635397)))

(declare-fun bm!635392 () Bool)

(assert (=> bm!635392 (= call!635397 (derivationStepZipperDown!1980 (h!73655 (exprs!6758 lt!2494127)) (Context!12517 (t!381082 (exprs!6758 lt!2494127))) (h!73656 s!7408)))))

(declare-fun b!6998514 () Bool)

(assert (=> b!6998514 (= e!4206625 (as set.empty (Set Context!12516)))))

(assert (= (and d!2180845 res!2854860) b!6998512))

(assert (= (and d!2180845 c!1298870) b!6998511))

(assert (= (and d!2180845 (not c!1298870)) b!6998510))

(assert (= (and b!6998510 c!1298871) b!6998513))

(assert (= (and b!6998510 (not c!1298871)) b!6998514))

(assert (= (or b!6998511 b!6998513) bm!635392))

(declare-fun m!7691346 () Bool)

(assert (=> b!6998511 m!7691346))

(assert (=> b!6998512 m!7690864))

(declare-fun m!7691348 () Bool)

(assert (=> bm!635392 m!7691348))

(assert (=> b!6998241 d!2180845))

(declare-fun d!2180847 () Bool)

(assert (=> d!2180847 (= (flatMap!2248 lt!2494160 lambda!404676) (choose!52435 lt!2494160 lambda!404676))))

(declare-fun bs!1863969 () Bool)

(assert (= bs!1863969 d!2180847))

(declare-fun m!7691350 () Bool)

(assert (=> bs!1863969 m!7691350))

(assert (=> b!6998241 d!2180847))

(declare-fun d!2180849 () Bool)

(assert (=> d!2180849 (= (flatMap!2248 lt!2494160 lambda!404676) (dynLambda!26982 lambda!404676 lt!2494127))))

(declare-fun lt!2494369 () Unit!161182)

(assert (=> d!2180849 (= lt!2494369 (choose!52436 lt!2494160 lt!2494127 lambda!404676))))

(assert (=> d!2180849 (= lt!2494160 (set.insert lt!2494127 (as set.empty (Set Context!12516))))))

(assert (=> d!2180849 (= (lemmaFlatMapOnSingletonSet!1763 lt!2494160 lt!2494127 lambda!404676) lt!2494369)))

(declare-fun b_lambda!263423 () Bool)

(assert (=> (not b_lambda!263423) (not d!2180849)))

(declare-fun bs!1863970 () Bool)

(assert (= bs!1863970 d!2180849))

(assert (=> bs!1863970 m!7690912))

(declare-fun m!7691352 () Bool)

(assert (=> bs!1863970 m!7691352))

(declare-fun m!7691354 () Bool)

(assert (=> bs!1863970 m!7691354))

(assert (=> bs!1863970 m!7690916))

(assert (=> b!6998241 d!2180849))

(declare-fun d!2180851 () Bool)

(declare-fun e!4206629 () Bool)

(assert (=> d!2180851 e!4206629))

(declare-fun res!2854864 () Bool)

(assert (=> d!2180851 (=> (not res!2854864) (not e!4206629))))

(declare-fun lt!2494372 () Context!12516)

(declare-fun dynLambda!26984 (Int Context!12516) Bool)

(assert (=> d!2180851 (= res!2854864 (dynLambda!26984 lambda!404673 lt!2494372))))

(declare-fun getWitness!1179 (List!67333 Int) Context!12516)

(assert (=> d!2180851 (= lt!2494372 (getWitness!1179 (toList!10622 lt!2494131) lambda!404673))))

(declare-fun exists!3075 ((Set Context!12516) Int) Bool)

(assert (=> d!2180851 (exists!3075 lt!2494131 lambda!404673)))

(assert (=> d!2180851 (= (getWitness!1177 lt!2494131 lambda!404673) lt!2494372)))

(declare-fun b!6998517 () Bool)

(assert (=> b!6998517 (= e!4206629 (set.member lt!2494372 lt!2494131))))

(assert (= (and d!2180851 res!2854864) b!6998517))

(declare-fun b_lambda!263425 () Bool)

(assert (=> (not b_lambda!263425) (not d!2180851)))

(declare-fun m!7691356 () Bool)

(assert (=> d!2180851 m!7691356))

(assert (=> d!2180851 m!7690982))

(assert (=> d!2180851 m!7690982))

(declare-fun m!7691358 () Bool)

(assert (=> d!2180851 m!7691358))

(declare-fun m!7691360 () Bool)

(assert (=> d!2180851 m!7691360))

(declare-fun m!7691362 () Bool)

(assert (=> b!6998517 m!7691362))

(assert (=> b!6998251 d!2180851))

(declare-fun d!2180853 () Bool)

(declare-fun e!4206632 () Bool)

(assert (=> d!2180853 e!4206632))

(declare-fun res!2854867 () Bool)

(assert (=> d!2180853 (=> (not res!2854867) (not e!4206632))))

(declare-fun lt!2494375 () List!67333)

(declare-fun noDuplicate!2539 (List!67333) Bool)

(assert (=> d!2180853 (= res!2854867 (noDuplicate!2539 lt!2494375))))

(declare-fun choose!52440 ((Set Context!12516)) List!67333)

(assert (=> d!2180853 (= lt!2494375 (choose!52440 lt!2494131))))

(assert (=> d!2180853 (= (toList!10622 lt!2494131) lt!2494375)))

(declare-fun b!6998520 () Bool)

(declare-fun content!13303 (List!67333) (Set Context!12516))

(assert (=> b!6998520 (= e!4206632 (= (content!13303 lt!2494375) lt!2494131))))

(assert (= (and d!2180853 res!2854867) b!6998520))

(declare-fun m!7691364 () Bool)

(assert (=> d!2180853 m!7691364))

(declare-fun m!7691366 () Bool)

(assert (=> d!2180853 m!7691366))

(declare-fun m!7691368 () Bool)

(assert (=> b!6998520 m!7691368))

(assert (=> b!6998251 d!2180853))

(declare-fun bs!1863971 () Bool)

(declare-fun d!2180855 () Bool)

(assert (= bs!1863971 (and d!2180855 b!6998251)))

(declare-fun lambda!404754 () Int)

(assert (=> bs!1863971 (not (= lambda!404754 lambda!404673))))

(assert (=> d!2180855 true))

(declare-fun order!27965 () Int)

(declare-fun dynLambda!26985 (Int Int) Int)

(assert (=> d!2180855 (< (dynLambda!26985 order!27965 lambda!404673) (dynLambda!26985 order!27965 lambda!404754))))

(declare-fun forall!16175 (List!67333 Int) Bool)

(assert (=> d!2180855 (= (exists!3073 lt!2494126 lambda!404673) (not (forall!16175 lt!2494126 lambda!404754)))))

(declare-fun bs!1863972 () Bool)

(assert (= bs!1863972 d!2180855))

(declare-fun m!7691370 () Bool)

(assert (=> bs!1863972 m!7691370))

(assert (=> b!6998251 d!2180855))

(declare-fun d!2180857 () Bool)

(declare-fun c!1298872 () Bool)

(assert (=> d!2180857 (= c!1298872 (isEmpty!39231 s!7408))))

(declare-fun e!4206633 () Bool)

(assert (=> d!2180857 (= (matchZipper!2802 lt!2494122 s!7408) e!4206633)))

(declare-fun b!6998523 () Bool)

(assert (=> b!6998523 (= e!4206633 (nullableZipper!2457 lt!2494122))))

(declare-fun b!6998524 () Bool)

(assert (=> b!6998524 (= e!4206633 (matchZipper!2802 (derivationStepZipper!2742 lt!2494122 (head!14135 s!7408)) (tail!13294 s!7408)))))

(assert (= (and d!2180857 c!1298872) b!6998523))

(assert (= (and d!2180857 (not c!1298872)) b!6998524))

(assert (=> d!2180857 m!7691300))

(declare-fun m!7691372 () Bool)

(assert (=> b!6998523 m!7691372))

(assert (=> b!6998524 m!7691304))

(assert (=> b!6998524 m!7691304))

(declare-fun m!7691374 () Bool)

(assert (=> b!6998524 m!7691374))

(assert (=> b!6998524 m!7691308))

(assert (=> b!6998524 m!7691374))

(assert (=> b!6998524 m!7691308))

(declare-fun m!7691376 () Bool)

(assert (=> b!6998524 m!7691376))

(assert (=> b!6998251 d!2180857))

(declare-fun bs!1863973 () Bool)

(declare-fun d!2180859 () Bool)

(assert (= bs!1863973 (and d!2180859 b!6998251)))

(declare-fun lambda!404757 () Int)

(assert (=> bs!1863973 (= lambda!404757 lambda!404673)))

(declare-fun bs!1863974 () Bool)

(assert (= bs!1863974 (and d!2180859 d!2180855)))

(assert (=> bs!1863974 (not (= lambda!404757 lambda!404754))))

(assert (=> d!2180859 true))

(assert (=> d!2180859 (exists!3073 lt!2494126 lambda!404757)))

(declare-fun lt!2494378 () Unit!161182)

(declare-fun choose!52441 (List!67333 List!67332) Unit!161182)

(assert (=> d!2180859 (= lt!2494378 (choose!52441 lt!2494126 s!7408))))

(assert (=> d!2180859 (matchZipper!2802 (content!13303 lt!2494126) s!7408)))

(assert (=> d!2180859 (= (lemmaZipperMatchesExistsMatchingContext!231 lt!2494126 s!7408) lt!2494378)))

(declare-fun bs!1863975 () Bool)

(assert (= bs!1863975 d!2180859))

(declare-fun m!7691378 () Bool)

(assert (=> bs!1863975 m!7691378))

(declare-fun m!7691380 () Bool)

(assert (=> bs!1863975 m!7691380))

(declare-fun m!7691382 () Bool)

(assert (=> bs!1863975 m!7691382))

(assert (=> bs!1863975 m!7691382))

(declare-fun m!7691384 () Bool)

(assert (=> bs!1863975 m!7691384))

(assert (=> b!6998251 d!2180859))

(assert (=> b!6998234 d!2180789))

(declare-fun d!2180861 () Bool)

(declare-fun lt!2494381 () Int)

(assert (=> d!2180861 (>= lt!2494381 0)))

(declare-fun e!4206636 () Int)

(assert (=> d!2180861 (= lt!2494381 e!4206636)))

(declare-fun c!1298878 () Bool)

(assert (=> d!2180861 (= c!1298878 (is-Cons!67207 (exprs!6758 lt!2494127)))))

(assert (=> d!2180861 (= (contextDepthTotal!455 lt!2494127) lt!2494381)))

(declare-fun b!6998529 () Bool)

(declare-fun regexDepthTotal!278 (Regex!17262) Int)

(assert (=> b!6998529 (= e!4206636 (+ (regexDepthTotal!278 (h!73655 (exprs!6758 lt!2494127))) (contextDepthTotal!455 (Context!12517 (t!381082 (exprs!6758 lt!2494127))))))))

(declare-fun b!6998530 () Bool)

(assert (=> b!6998530 (= e!4206636 1)))

(assert (= (and d!2180861 c!1298878) b!6998529))

(assert (= (and d!2180861 (not c!1298878)) b!6998530))

(declare-fun m!7691386 () Bool)

(assert (=> b!6998529 m!7691386))

(declare-fun m!7691388 () Bool)

(assert (=> b!6998529 m!7691388))

(assert (=> b!6998245 d!2180861))

(declare-fun d!2180863 () Bool)

(assert (=> d!2180863 (= (flatMap!2248 lt!2494117 lambda!404676) (choose!52435 lt!2494117 lambda!404676))))

(declare-fun bs!1863976 () Bool)

(assert (= bs!1863976 d!2180863))

(declare-fun m!7691390 () Bool)

(assert (=> bs!1863976 m!7691390))

(assert (=> b!6998245 d!2180863))

(assert (=> b!6998245 d!2180813))

(declare-fun d!2180865 () Bool)

(declare-fun e!4206637 () Bool)

(assert (=> d!2180865 e!4206637))

(declare-fun res!2854868 () Bool)

(assert (=> d!2180865 (=> (not res!2854868) (not e!4206637))))

(declare-fun lt!2494382 () List!67333)

(assert (=> d!2180865 (= res!2854868 (noDuplicate!2539 lt!2494382))))

(assert (=> d!2180865 (= lt!2494382 (choose!52440 z1!570))))

(assert (=> d!2180865 (= (toList!10622 z1!570) lt!2494382)))

(declare-fun b!6998531 () Bool)

(assert (=> b!6998531 (= e!4206637 (= (content!13303 lt!2494382) z1!570))))

(assert (= (and d!2180865 res!2854868) b!6998531))

(declare-fun m!7691392 () Bool)

(assert (=> d!2180865 m!7691392))

(declare-fun m!7691394 () Bool)

(assert (=> d!2180865 m!7691394))

(declare-fun m!7691396 () Bool)

(assert (=> b!6998531 m!7691396))

(assert (=> b!6998245 d!2180865))

(assert (=> b!6998245 d!2180793))

(declare-fun d!2180867 () Bool)

(declare-fun choose!52442 ((Set Context!12516) Int) (Set Context!12516))

(assert (=> d!2180867 (= (map!15540 lt!2494117 lambda!404674) (choose!52442 lt!2494117 lambda!404674))))

(declare-fun bs!1863977 () Bool)

(assert (= bs!1863977 d!2180867))

(declare-fun m!7691398 () Bool)

(assert (=> bs!1863977 m!7691398))

(assert (=> b!6998245 d!2180867))

(declare-fun d!2180869 () Bool)

(assert (=> d!2180869 (= (flatMap!2248 lt!2494117 lambda!404676) (dynLambda!26982 lambda!404676 lt!2494162))))

(declare-fun lt!2494383 () Unit!161182)

(assert (=> d!2180869 (= lt!2494383 (choose!52436 lt!2494117 lt!2494162 lambda!404676))))

(assert (=> d!2180869 (= lt!2494117 (set.insert lt!2494162 (as set.empty (Set Context!12516))))))

(assert (=> d!2180869 (= (lemmaFlatMapOnSingletonSet!1763 lt!2494117 lt!2494162 lambda!404676) lt!2494383)))

(declare-fun b_lambda!263427 () Bool)

(assert (=> (not b_lambda!263427) (not d!2180869)))

(declare-fun bs!1863978 () Bool)

(assert (= bs!1863978 d!2180869))

(assert (=> bs!1863978 m!7690976))

(declare-fun m!7691400 () Bool)

(assert (=> bs!1863978 m!7691400))

(declare-fun m!7691402 () Bool)

(assert (=> bs!1863978 m!7691402))

(assert (=> bs!1863978 m!7690962))

(assert (=> b!6998245 d!2180869))

(declare-fun d!2180871 () Bool)

(declare-fun lt!2494384 () Int)

(assert (=> d!2180871 (>= lt!2494384 0)))

(declare-fun e!4206638 () Int)

(assert (=> d!2180871 (= lt!2494384 e!4206638)))

(declare-fun c!1298879 () Bool)

(assert (=> d!2180871 (= c!1298879 (is-Cons!67207 (exprs!6758 lt!2494162)))))

(assert (=> d!2180871 (= (contextDepthTotal!455 lt!2494162) lt!2494384)))

(declare-fun b!6998532 () Bool)

(assert (=> b!6998532 (= e!4206638 (+ (regexDepthTotal!278 (h!73655 (exprs!6758 lt!2494162))) (contextDepthTotal!455 (Context!12517 (t!381082 (exprs!6758 lt!2494162))))))))

(declare-fun b!6998533 () Bool)

(assert (=> b!6998533 (= e!4206638 1)))

(assert (= (and d!2180871 c!1298879) b!6998532))

(assert (= (and d!2180871 (not c!1298879)) b!6998533))

(declare-fun m!7691404 () Bool)

(assert (=> b!6998532 m!7691404))

(declare-fun m!7691406 () Bool)

(assert (=> b!6998532 m!7691406))

(assert (=> b!6998245 d!2180871))

(assert (=> b!6998245 d!2180791))

(declare-fun d!2180873 () Bool)

(declare-fun lt!2494385 () Int)

(assert (=> d!2180873 (>= lt!2494385 0)))

(declare-fun e!4206639 () Int)

(assert (=> d!2180873 (= lt!2494385 e!4206639)))

(declare-fun c!1298880 () Bool)

(assert (=> d!2180873 (= c!1298880 (is-Cons!67209 lt!2494128))))

(assert (=> d!2180873 (= (zipperDepthTotal!483 lt!2494128) lt!2494385)))

(declare-fun b!6998534 () Bool)

(assert (=> b!6998534 (= e!4206639 (+ (contextDepthTotal!455 (h!73657 lt!2494128)) (zipperDepthTotal!483 (t!381084 lt!2494128))))))

(declare-fun b!6998535 () Bool)

(assert (=> b!6998535 (= e!4206639 0)))

(assert (= (and d!2180873 c!1298880) b!6998534))

(assert (= (and d!2180873 (not c!1298880)) b!6998535))

(declare-fun m!7691408 () Bool)

(assert (=> b!6998534 m!7691408))

(declare-fun m!7691410 () Bool)

(assert (=> b!6998534 m!7691410))

(assert (=> b!6998245 d!2180873))

(declare-fun d!2180875 () Bool)

(assert (=> d!2180875 (<= (contextDepthTotal!455 lt!2494127) (zipperDepthTotal!483 lt!2494128))))

(declare-fun lt!2494388 () Unit!161182)

(declare-fun choose!52443 (List!67333 Context!12516) Unit!161182)

(assert (=> d!2180875 (= lt!2494388 (choose!52443 lt!2494128 lt!2494127))))

(declare-fun contains!20420 (List!67333 Context!12516) Bool)

(assert (=> d!2180875 (contains!20420 lt!2494128 lt!2494127)))

(assert (=> d!2180875 (= (lemmaTotalDepthZipperLargerThanOfAnyContext!23 lt!2494128 lt!2494127) lt!2494388)))

(declare-fun bs!1863979 () Bool)

(assert (= bs!1863979 d!2180875))

(assert (=> bs!1863979 m!7690974))

(assert (=> bs!1863979 m!7690972))

(declare-fun m!7691412 () Bool)

(assert (=> bs!1863979 m!7691412))

(declare-fun m!7691414 () Bool)

(assert (=> bs!1863979 m!7691414))

(assert (=> b!6998245 d!2180875))

(declare-fun d!2180877 () Bool)

(assert (=> d!2180877 (= (map!15540 lt!2494117 lambda!404674) (set.insert (dynLambda!26983 lambda!404674 lt!2494162) (as set.empty (Set Context!12516))))))

(declare-fun lt!2494391 () Unit!161182)

(declare-fun choose!52444 ((Set Context!12516) Context!12516 Int) Unit!161182)

(assert (=> d!2180877 (= lt!2494391 (choose!52444 lt!2494117 lt!2494162 lambda!404674))))

(assert (=> d!2180877 (= lt!2494117 (set.insert lt!2494162 (as set.empty (Set Context!12516))))))

(assert (=> d!2180877 (= (lemmaMapOnSingletonSet!327 lt!2494117 lt!2494162 lambda!404674) lt!2494391)))

(declare-fun b_lambda!263429 () Bool)

(assert (=> (not b_lambda!263429) (not d!2180877)))

(declare-fun bs!1863980 () Bool)

(assert (= bs!1863980 d!2180877))

(declare-fun m!7691416 () Bool)

(assert (=> bs!1863980 m!7691416))

(assert (=> bs!1863980 m!7690968))

(assert (=> bs!1863980 m!7691416))

(declare-fun m!7691418 () Bool)

(assert (=> bs!1863980 m!7691418))

(assert (=> bs!1863980 m!7690962))

(declare-fun m!7691420 () Bool)

(assert (=> bs!1863980 m!7691420))

(assert (=> b!6998245 d!2180877))

(declare-fun d!2180879 () Bool)

(declare-fun nullableFct!2655 (Regex!17262) Bool)

(assert (=> d!2180879 (= (nullable!7022 (h!73655 (exprs!6758 lt!2494127))) (nullableFct!2655 (h!73655 (exprs!6758 lt!2494127))))))

(declare-fun bs!1863981 () Bool)

(assert (= bs!1863981 d!2180879))

(declare-fun m!7691422 () Bool)

(assert (=> bs!1863981 m!7691422))

(assert (=> b!6998225 d!2180879))

(declare-fun d!2180881 () Bool)

(assert (=> d!2180881 (= (tail!13292 (exprs!6758 lt!2494127)) (t!381082 (exprs!6758 lt!2494127)))))

(assert (=> b!6998225 d!2180881))

(assert (=> b!6998223 d!2180781))

(assert (=> b!6998233 d!2180797))

(assert (=> b!6998233 d!2180791))

(declare-fun bs!1863982 () Bool)

(declare-fun d!2180883 () Bool)

(assert (= bs!1863982 (and d!2180883 b!6998237)))

(declare-fun lambda!404758 () Int)

(assert (=> bs!1863982 (= lambda!404758 lambda!404676)))

(declare-fun bs!1863983 () Bool)

(assert (= bs!1863983 (and d!2180883 d!2180779)))

(assert (=> bs!1863983 (= lambda!404758 lambda!404741)))

(declare-fun bs!1863984 () Bool)

(assert (= bs!1863984 (and d!2180883 d!2180843)))

(assert (=> bs!1863984 (= lambda!404758 lambda!404751)))

(assert (=> d!2180883 true))

(assert (=> d!2180883 (= (derivationStepZipper!2742 lt!2494146 (h!73656 s!7408)) (flatMap!2248 lt!2494146 lambda!404758))))

(declare-fun bs!1863985 () Bool)

(assert (= bs!1863985 d!2180883))

(declare-fun m!7691424 () Bool)

(assert (=> bs!1863985 m!7691424))

(assert (=> b!6998233 d!2180883))

(declare-fun d!2180885 () Bool)

(assert (=> d!2180885 (= (flatMap!2248 lt!2494146 lambda!404676) (choose!52435 lt!2494146 lambda!404676))))

(declare-fun bs!1863986 () Bool)

(assert (= bs!1863986 d!2180885))

(declare-fun m!7691426 () Bool)

(assert (=> bs!1863986 m!7691426))

(assert (=> b!6998233 d!2180885))

(declare-fun d!2180887 () Bool)

(assert (=> d!2180887 (= (flatMap!2248 lt!2494146 lambda!404676) (dynLambda!26982 lambda!404676 lt!2494144))))

(declare-fun lt!2494392 () Unit!161182)

(assert (=> d!2180887 (= lt!2494392 (choose!52436 lt!2494146 lt!2494144 lambda!404676))))

(assert (=> d!2180887 (= lt!2494146 (set.insert lt!2494144 (as set.empty (Set Context!12516))))))

(assert (=> d!2180887 (= (lemmaFlatMapOnSingletonSet!1763 lt!2494146 lt!2494144 lambda!404676) lt!2494392)))

(declare-fun b_lambda!263431 () Bool)

(assert (=> (not b_lambda!263431) (not d!2180887)))

(declare-fun bs!1863987 () Bool)

(assert (= bs!1863987 d!2180887))

(assert (=> bs!1863987 m!7690932))

(declare-fun m!7691428 () Bool)

(assert (=> bs!1863987 m!7691428))

(declare-fun m!7691430 () Bool)

(assert (=> bs!1863987 m!7691430))

(assert (=> bs!1863987 m!7690928))

(assert (=> b!6998233 d!2180887))

(declare-fun condSetEmpty!48052 () Bool)

(assert (=> setNonEmpty!48046 (= condSetEmpty!48052 (= setRest!48046 (as set.empty (Set Context!12516))))))

(declare-fun setRes!48052 () Bool)

(assert (=> setNonEmpty!48046 (= tp!1930834 setRes!48052)))

(declare-fun setIsEmpty!48052 () Bool)

(assert (=> setIsEmpty!48052 setRes!48052))

(declare-fun e!4206642 () Bool)

(declare-fun tp!1930852 () Bool)

(declare-fun setNonEmpty!48052 () Bool)

(declare-fun setElem!48052 () Context!12516)

(assert (=> setNonEmpty!48052 (= setRes!48052 (and tp!1930852 (inv!86015 setElem!48052) e!4206642))))

(declare-fun setRest!48052 () (Set Context!12516))

(assert (=> setNonEmpty!48052 (= setRest!48046 (set.union (set.insert setElem!48052 (as set.empty (Set Context!12516))) setRest!48052))))

(declare-fun b!6998540 () Bool)

(declare-fun tp!1930851 () Bool)

(assert (=> b!6998540 (= e!4206642 tp!1930851)))

(assert (= (and setNonEmpty!48046 condSetEmpty!48052) setIsEmpty!48052))

(assert (= (and setNonEmpty!48046 (not condSetEmpty!48052)) setNonEmpty!48052))

(assert (= setNonEmpty!48052 b!6998540))

(declare-fun m!7691432 () Bool)

(assert (=> setNonEmpty!48052 m!7691432))

(declare-fun b!6998545 () Bool)

(declare-fun e!4206645 () Bool)

(declare-fun tp!1930857 () Bool)

(declare-fun tp!1930858 () Bool)

(assert (=> b!6998545 (= e!4206645 (and tp!1930857 tp!1930858))))

(assert (=> b!6998228 (= tp!1930831 e!4206645)))

(assert (= (and b!6998228 (is-Cons!67207 (exprs!6758 ct2!306))) b!6998545))

(declare-fun b!6998546 () Bool)

(declare-fun e!4206646 () Bool)

(declare-fun tp!1930859 () Bool)

(declare-fun tp!1930860 () Bool)

(assert (=> b!6998546 (= e!4206646 (and tp!1930859 tp!1930860))))

(assert (=> b!6998224 (= tp!1930833 e!4206646)))

(assert (= (and b!6998224 (is-Cons!67207 (exprs!6758 setElem!48046))) b!6998546))

(declare-fun b!6998551 () Bool)

(declare-fun e!4206649 () Bool)

(declare-fun tp!1930863 () Bool)

(assert (=> b!6998551 (= e!4206649 (and tp_is_empty!43749 tp!1930863))))

(assert (=> b!6998239 (= tp!1930832 e!4206649)))

(assert (= (and b!6998239 (is-Cons!67208 (t!381083 s!7408))) b!6998551))

(declare-fun b_lambda!263433 () Bool)

(assert (= b_lambda!263431 (or b!6998237 b_lambda!263433)))

(declare-fun bs!1863988 () Bool)

(declare-fun d!2180889 () Bool)

(assert (= bs!1863988 (and d!2180889 b!6998237)))

(assert (=> bs!1863988 (= (dynLambda!26982 lambda!404676 lt!2494144) (derivationStepZipperUp!1912 lt!2494144 (h!73656 s!7408)))))

(assert (=> bs!1863988 m!7690880))

(assert (=> d!2180887 d!2180889))

(declare-fun b_lambda!263435 () Bool)

(assert (= b_lambda!263423 (or b!6998237 b_lambda!263435)))

(declare-fun bs!1863989 () Bool)

(declare-fun d!2180891 () Bool)

(assert (= bs!1863989 (and d!2180891 b!6998237)))

(assert (=> bs!1863989 (= (dynLambda!26982 lambda!404676 lt!2494127) (derivationStepZipperUp!1912 lt!2494127 (h!73656 s!7408)))))

(assert (=> bs!1863989 m!7690910))

(assert (=> d!2180849 d!2180891))

(declare-fun b_lambda!263437 () Bool)

(assert (= b_lambda!263419 (or b!6998237 b_lambda!263437)))

(declare-fun bs!1863990 () Bool)

(declare-fun d!2180893 () Bool)

(assert (= bs!1863990 (and d!2180893 b!6998237)))

(assert (=> bs!1863990 (= (dynLambda!26982 lambda!404676 lt!2494164) (derivationStepZipperUp!1912 lt!2494164 (h!73656 s!7408)))))

(assert (=> bs!1863990 m!7690920))

(assert (=> d!2180787 d!2180893))

(declare-fun b_lambda!263439 () Bool)

(assert (= b_lambda!263429 (or b!6998243 b_lambda!263439)))

(declare-fun bs!1863991 () Bool)

(declare-fun d!2180895 () Bool)

(assert (= bs!1863991 (and d!2180895 b!6998243)))

(declare-fun lt!2494393 () Unit!161182)

(assert (=> bs!1863991 (= lt!2494393 (lemmaConcatPreservesForall!598 (exprs!6758 lt!2494162) (exprs!6758 ct2!306) lambda!404675))))

(assert (=> bs!1863991 (= (dynLambda!26983 lambda!404674 lt!2494162) (Context!12517 (++!15226 (exprs!6758 lt!2494162) (exprs!6758 ct2!306))))))

(declare-fun m!7691434 () Bool)

(assert (=> bs!1863991 m!7691434))

(declare-fun m!7691436 () Bool)

(assert (=> bs!1863991 m!7691436))

(assert (=> d!2180877 d!2180895))

(declare-fun b_lambda!263441 () Bool)

(assert (= b_lambda!263421 (or b!6998243 b_lambda!263441)))

(declare-fun bs!1863992 () Bool)

(declare-fun d!2180897 () Bool)

(assert (= bs!1863992 (and d!2180897 b!6998243)))

(declare-fun lt!2494394 () Unit!161182)

(assert (=> bs!1863992 (= lt!2494394 (lemmaConcatPreservesForall!598 (exprs!6758 lt!2494368) (exprs!6758 ct2!306) lambda!404675))))

(assert (=> bs!1863992 (= (dynLambda!26983 lambda!404674 lt!2494368) (Context!12517 (++!15226 (exprs!6758 lt!2494368) (exprs!6758 ct2!306))))))

(declare-fun m!7691438 () Bool)

(assert (=> bs!1863992 m!7691438))

(declare-fun m!7691440 () Bool)

(assert (=> bs!1863992 m!7691440))

(assert (=> d!2180841 d!2180897))

(declare-fun b_lambda!263443 () Bool)

(assert (= b_lambda!263425 (or b!6998251 b_lambda!263443)))

(declare-fun bs!1863993 () Bool)

(declare-fun d!2180899 () Bool)

(assert (= bs!1863993 (and d!2180899 b!6998251)))

(assert (=> bs!1863993 (= (dynLambda!26984 lambda!404673 lt!2494372) (matchZipper!2802 (set.insert lt!2494372 (as set.empty (Set Context!12516))) s!7408))))

(declare-fun m!7691442 () Bool)

(assert (=> bs!1863993 m!7691442))

(assert (=> bs!1863993 m!7691442))

(declare-fun m!7691444 () Bool)

(assert (=> bs!1863993 m!7691444))

(assert (=> d!2180851 d!2180899))

(declare-fun b_lambda!263445 () Bool)

(assert (= b_lambda!263427 (or b!6998237 b_lambda!263445)))

(declare-fun bs!1863994 () Bool)

(declare-fun d!2180901 () Bool)

(assert (= bs!1863994 (and d!2180901 b!6998237)))

(assert (=> bs!1863994 (= (dynLambda!26982 lambda!404676 lt!2494162) (derivationStepZipperUp!1912 lt!2494162 (h!73656 s!7408)))))

(assert (=> bs!1863994 m!7690950))

(assert (=> d!2180869 d!2180901))

(push 1)

(assert (not d!2180839))

(assert (not d!2180857))

(assert (not b!6998497))

(assert (not b!6998469))

(assert (not bs!1863992))

(assert (not b!6998451))

(assert (not d!2180777))

(assert (not d!2180781))

(assert (not b!6998520))

(assert (not d!2180805))

(assert (not b!6998512))

(assert (not b!6998498))

(assert (not b!6998453))

(assert (not b!6998529))

(assert (not d!2180801))

(assert (not b!6998434))

(assert (not b_lambda!263443))

(assert (not d!2180859))

(assert (not b_lambda!263439))

(assert (not d!2180817))

(assert (not b!6998428))

(assert (not bm!635390))

(assert (not b!6998355))

(assert (not d!2180821))

(assert (not b!6998370))

(assert (not d!2180785))

(assert (not b!6998545))

(assert (not b_lambda!263441))

(assert (not d!2180863))

(assert (not b!6998540))

(assert (not d!2180833))

(assert (not bm!635383))

(assert (not b!6998531))

(assert (not b!6998430))

(assert (not b!6998422))

(assert (not b!6998466))

(assert (not d!2180851))

(assert (not d!2180841))

(assert (not bs!1863993))

(assert (not bm!635385))

(assert (not b!6998504))

(assert (not b!6998494))

(assert (not d!2180847))

(assert (not b!6998491))

(assert (not b!6998546))

(assert (not b_lambda!263435))

(assert (not b!6998499))

(assert (not d!2180803))

(assert (not d!2180799))

(assert (not b!6998375))

(assert (not b_lambda!263433))

(assert (not d!2180849))

(assert (not b!6998385))

(assert (not bm!635384))

(assert (not d!2180883))

(assert (not d!2180787))

(assert (not b!6998439))

(assert (not b!6998496))

(assert (not d!2180831))

(assert (not b!6998551))

(assert (not b!6998511))

(assert (not d!2180879))

(assert (not b!6998493))

(assert (not d!2180791))

(assert (not d!2180887))

(assert (not setNonEmpty!48052))

(assert (not b_lambda!263445))

(assert (not b!6998371))

(assert (not b!6998374))

(assert (not b!6998432))

(assert (not b!6998356))

(assert (not d!2180855))

(assert (not b!6998429))

(assert (not d!2180853))

(assert (not bm!635392))

(assert (not b!6998433))

(assert (not b!6998532))

(assert (not b!6998489))

(assert (not bs!1863989))

(assert (not d!2180837))

(assert (not b!6998465))

(assert (not b!6998501))

(assert (not bm!635365))

(assert (not bm!635378))

(assert (not b!6998450))

(assert (not d!2180843))

(assert (not b_lambda!263437))

(assert (not bs!1863988))

(assert (not b!6998534))

(assert (not d!2180865))

(assert (not b!6998524))

(assert (not bm!635389))

(assert (not d!2180867))

(assert (not b!6998523))

(assert (not d!2180789))

(assert (not d!2180779))

(assert (not bs!1863991))

(assert (not b!6998503))

(assert (not d!2180793))

(assert (not b!6998470))

(assert (not d!2180885))

(assert (not b!6998423))

(assert (not bm!635382))

(assert (not d!2180869))

(assert (not b!6998386))

(assert (not d!2180835))

(assert (not d!2180819))

(assert (not d!2180809))

(assert (not d!2180829))

(assert (not bs!1863994))

(assert (not b!6998500))

(assert (not bm!635391))

(assert (not b!6998410))

(assert (not d!2180877))

(assert (not d!2180825))

(assert (not d!2180875))

(assert (not bs!1863990))

(assert (not b!6998431))

(assert tp_is_empty!43749)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

