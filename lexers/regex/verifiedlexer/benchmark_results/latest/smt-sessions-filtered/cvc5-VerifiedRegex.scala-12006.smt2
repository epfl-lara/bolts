; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!672616 () Bool)

(assert start!672616)

(declare-fun b!6995245 () Bool)

(assert (=> b!6995245 true))

(declare-fun b!6995229 () Bool)

(assert (=> b!6995229 true))

(declare-fun b!6995234 () Bool)

(assert (=> b!6995234 true))

(declare-fun e!4204635 () Bool)

(declare-fun e!4204648 () Bool)

(assert (=> b!6995229 (= e!4204635 e!4204648)))

(declare-fun res!2853622 () Bool)

(assert (=> b!6995229 (=> res!2853622 e!4204648)))

(declare-datatypes ((C!34786 0))(
  ( (C!34787 (val!27095 Int)) )
))
(declare-datatypes ((Regex!17258 0))(
  ( (ElementMatch!17258 (c!1297859 C!34786)) (Concat!26103 (regOne!35028 Regex!17258) (regTwo!35028 Regex!17258)) (EmptyExpr!17258) (Star!17258 (reg!17587 Regex!17258)) (EmptyLang!17258) (Union!17258 (regOne!35029 Regex!17258) (regTwo!35029 Regex!17258)) )
))
(declare-datatypes ((List!67319 0))(
  ( (Nil!67195) (Cons!67195 (h!73643 Regex!17258) (t!381066 List!67319)) )
))
(declare-datatypes ((Context!12508 0))(
  ( (Context!12509 (exprs!6754 List!67319)) )
))
(declare-fun lt!2492983 () Context!12508)

(declare-fun z1!570 () (Set Context!12508))

(declare-fun lt!2493029 () Context!12508)

(declare-fun lt!2492982 () Context!12508)

(assert (=> b!6995229 (= res!2853622 (or (not (= lt!2492982 lt!2492983)) (not (set.member lt!2493029 z1!570))))))

(declare-fun ct2!306 () Context!12508)

(declare-fun ++!15217 (List!67319 List!67319) List!67319)

(assert (=> b!6995229 (= lt!2492982 (Context!12509 (++!15217 (exprs!6754 lt!2493029) (exprs!6754 ct2!306))))))

(declare-datatypes ((Unit!161171 0))(
  ( (Unit!161172) )
))
(declare-fun lt!2493014 () Unit!161171)

(declare-fun lambda!404243 () Int)

(declare-fun lemmaConcatPreservesForall!594 (List!67319 List!67319 Int) Unit!161171)

(assert (=> b!6995229 (= lt!2493014 (lemmaConcatPreservesForall!594 (exprs!6754 lt!2493029) (exprs!6754 ct2!306) lambda!404243))))

(declare-fun lambda!404242 () Int)

(declare-fun mapPost2!113 ((Set Context!12508) Int Context!12508) Context!12508)

(assert (=> b!6995229 (= lt!2493029 (mapPost2!113 z1!570 lambda!404242 lt!2492983))))

(declare-fun b!6995230 () Bool)

(declare-fun res!2853632 () Bool)

(declare-fun e!4204643 () Bool)

(assert (=> b!6995230 (=> res!2853632 e!4204643)))

(declare-datatypes ((List!67320 0))(
  ( (Nil!67196) (Cons!67196 (h!73644 C!34786) (t!381067 List!67320)) )
))
(declare-datatypes ((tuple2!67862 0))(
  ( (tuple2!67863 (_1!37234 List!67320) (_2!37234 List!67320)) )
))
(declare-fun lt!2493025 () tuple2!67862)

(declare-fun isEmpty!39219 (List!67320) Bool)

(assert (=> b!6995230 (= res!2853632 (isEmpty!39219 (_1!37234 lt!2493025)))))

(declare-fun b!6995231 () Bool)

(declare-fun e!4204636 () Bool)

(assert (=> b!6995231 (= e!4204643 e!4204636)))

(declare-fun res!2853620 () Bool)

(assert (=> b!6995231 (=> res!2853620 e!4204636)))

(declare-fun s!7408 () List!67320)

(declare-fun lt!2493023 () (Set Context!12508))

(declare-fun derivationStepZipper!2738 ((Set Context!12508) C!34786) (Set Context!12508))

(declare-fun derivationStepZipperUp!1908 (Context!12508 C!34786) (Set Context!12508))

(assert (=> b!6995231 (= res!2853620 (not (= (derivationStepZipper!2738 lt!2493023 (h!73644 s!7408)) (derivationStepZipperUp!1908 lt!2493029 (h!73644 s!7408)))))))

(declare-fun lambda!404244 () Int)

(declare-fun flatMap!2244 ((Set Context!12508) Int) (Set Context!12508))

(assert (=> b!6995231 (= (flatMap!2244 lt!2493023 lambda!404244) (derivationStepZipperUp!1908 lt!2493029 (h!73644 s!7408)))))

(declare-fun lt!2493003 () Unit!161171)

(declare-fun lemmaFlatMapOnSingletonSet!1759 ((Set Context!12508) Context!12508 Int) Unit!161171)

(assert (=> b!6995231 (= lt!2493003 (lemmaFlatMapOnSingletonSet!1759 lt!2493023 lt!2493029 lambda!404244))))

(assert (=> b!6995231 (= lt!2493023 (set.insert lt!2493029 (as set.empty (Set Context!12508))))))

(declare-fun b!6995232 () Bool)

(declare-fun e!4204642 () Bool)

(assert (=> b!6995232 (= e!4204642 e!4204643)))

(declare-fun res!2853625 () Bool)

(assert (=> b!6995232 (=> res!2853625 e!4204643)))

(declare-fun lt!2493018 () (Set Context!12508))

(declare-fun matchZipper!2798 ((Set Context!12508) List!67320) Bool)

(assert (=> b!6995232 (= res!2853625 (not (matchZipper!2798 lt!2493018 (_1!37234 lt!2493025))))))

(declare-datatypes ((Option!16763 0))(
  ( (None!16762) (Some!16762 (v!53034 tuple2!67862)) )
))
(declare-fun lt!2493022 () Option!16763)

(declare-fun get!23557 (Option!16763) tuple2!67862)

(assert (=> b!6995232 (= lt!2493025 (get!23557 lt!2493022))))

(declare-fun isDefined!13464 (Option!16763) Bool)

(assert (=> b!6995232 (isDefined!13464 lt!2493022)))

(declare-fun lt!2493021 () (Set Context!12508))

(declare-fun findConcatSeparationZippers!279 ((Set Context!12508) (Set Context!12508) List!67320 List!67320 List!67320) Option!16763)

(assert (=> b!6995232 (= lt!2493022 (findConcatSeparationZippers!279 lt!2493018 lt!2493021 Nil!67196 s!7408 s!7408))))

(assert (=> b!6995232 (= lt!2493021 (set.insert ct2!306 (as set.empty (Set Context!12508))))))

(declare-fun lt!2493024 () Unit!161171)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!279 ((Set Context!12508) Context!12508 List!67320) Unit!161171)

(assert (=> b!6995232 (= lt!2493024 (lemmaConcatZipperMatchesStringThenFindConcatDefined!279 lt!2493018 ct2!306 s!7408))))

(declare-fun b!6995233 () Bool)

(declare-fun res!2853626 () Bool)

(assert (=> b!6995233 (=> res!2853626 e!4204635)))

(declare-fun lt!2492981 () (Set Context!12508))

(assert (=> b!6995233 (= res!2853626 (not (set.member lt!2492983 lt!2492981)))))

(declare-fun e!4204650 () Bool)

(declare-fun e!4204647 () Bool)

(assert (=> b!6995234 (= e!4204650 e!4204647)))

(declare-fun res!2853618 () Bool)

(assert (=> b!6995234 (=> res!2853618 e!4204647)))

(declare-fun lt!2493019 () (Set Context!12508))

(declare-fun lt!2492988 () (Set Context!12508))

(assert (=> b!6995234 (= res!2853618 (not (= (derivationStepZipper!2738 lt!2493019 (h!73644 s!7408)) lt!2492988)))))

(assert (=> b!6995234 (= (flatMap!2244 lt!2493019 lambda!404244) (derivationStepZipperUp!1908 lt!2492982 (h!73644 s!7408)))))

(declare-fun lt!2492987 () Unit!161171)

(assert (=> b!6995234 (= lt!2492987 (lemmaFlatMapOnSingletonSet!1759 lt!2493019 lt!2492982 lambda!404244))))

(assert (=> b!6995234 (= lt!2492988 (derivationStepZipperUp!1908 lt!2492982 (h!73644 s!7408)))))

(declare-fun lt!2493012 () Unit!161171)

(assert (=> b!6995234 (= lt!2493012 (lemmaConcatPreservesForall!594 (exprs!6754 lt!2493029) (exprs!6754 ct2!306) lambda!404243))))

(declare-fun b!6995235 () Bool)

(declare-fun e!4204651 () Bool)

(declare-fun lt!2492996 () (Set Context!12508))

(assert (=> b!6995235 (= e!4204651 (not (matchZipper!2798 lt!2492996 (t!381067 s!7408))))))

(declare-fun lt!2493032 () Unit!161171)

(declare-fun lt!2493020 () List!67319)

(assert (=> b!6995235 (= lt!2493032 (lemmaConcatPreservesForall!594 lt!2493020 (exprs!6754 ct2!306) lambda!404243))))

(declare-fun b!6995236 () Bool)

(declare-fun res!2853640 () Bool)

(assert (=> b!6995236 (=> res!2853640 e!4204647)))

(declare-fun isEmpty!39220 (List!67319) Bool)

(assert (=> b!6995236 (= res!2853640 (isEmpty!39220 (exprs!6754 lt!2493029)))))

(declare-fun b!6995237 () Bool)

(declare-fun e!4204638 () Bool)

(declare-fun tp!1930484 () Bool)

(assert (=> b!6995237 (= e!4204638 tp!1930484)))

(declare-fun res!2853636 () Bool)

(declare-fun e!4204645 () Bool)

(assert (=> start!672616 (=> (not res!2853636) (not e!4204645))))

(assert (=> start!672616 (= res!2853636 (matchZipper!2798 lt!2492981 s!7408))))

(declare-fun appendTo!379 ((Set Context!12508) Context!12508) (Set Context!12508))

(assert (=> start!672616 (= lt!2492981 (appendTo!379 z1!570 ct2!306))))

(assert (=> start!672616 e!4204645))

(declare-fun condSetEmpty!47982 () Bool)

(assert (=> start!672616 (= condSetEmpty!47982 (= z1!570 (as set.empty (Set Context!12508))))))

(declare-fun setRes!47982 () Bool)

(assert (=> start!672616 setRes!47982))

(declare-fun e!4204634 () Bool)

(declare-fun inv!86005 (Context!12508) Bool)

(assert (=> start!672616 (and (inv!86005 ct2!306) e!4204634)))

(declare-fun e!4204649 () Bool)

(assert (=> start!672616 e!4204649))

(declare-fun b!6995238 () Bool)

(declare-fun e!4204637 () Bool)

(assert (=> b!6995238 (= e!4204637 e!4204642)))

(declare-fun res!2853623 () Bool)

(assert (=> b!6995238 (=> res!2853623 e!4204642)))

(declare-fun lt!2492991 () Int)

(declare-fun lt!2492984 () Context!12508)

(declare-fun contextDepthTotal!451 (Context!12508) Int)

(assert (=> b!6995238 (= res!2853623 (<= lt!2492991 (contextDepthTotal!451 lt!2492984)))))

(declare-fun lt!2492998 () Int)

(assert (=> b!6995238 (<= lt!2492991 lt!2492998)))

(declare-datatypes ((List!67321 0))(
  ( (Nil!67197) (Cons!67197 (h!73645 Context!12508) (t!381068 List!67321)) )
))
(declare-fun lt!2492995 () List!67321)

(declare-fun zipperDepthTotal!479 (List!67321) Int)

(assert (=> b!6995238 (= lt!2492998 (zipperDepthTotal!479 lt!2492995))))

(assert (=> b!6995238 (= lt!2492991 (contextDepthTotal!451 lt!2493029))))

(declare-fun lt!2493008 () Unit!161171)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!19 (List!67321 Context!12508) Unit!161171)

(assert (=> b!6995238 (= lt!2493008 (lemmaTotalDepthZipperLargerThanOfAnyContext!19 lt!2492995 lt!2493029))))

(declare-fun toList!10618 ((Set Context!12508)) List!67321)

(assert (=> b!6995238 (= lt!2492995 (toList!10618 z1!570))))

(declare-fun lt!2492994 () Unit!161171)

(assert (=> b!6995238 (= lt!2492994 (lemmaConcatPreservesForall!594 lt!2493020 (exprs!6754 ct2!306) lambda!404243))))

(declare-fun lt!2493002 () Unit!161171)

(assert (=> b!6995238 (= lt!2493002 (lemmaConcatPreservesForall!594 lt!2493020 (exprs!6754 ct2!306) lambda!404243))))

(declare-fun lt!2493031 () Unit!161171)

(assert (=> b!6995238 (= lt!2493031 (lemmaConcatPreservesForall!594 lt!2493020 (exprs!6754 ct2!306) lambda!404243))))

(assert (=> b!6995238 (= (flatMap!2244 lt!2493018 lambda!404244) (derivationStepZipperUp!1908 lt!2492984 (h!73644 s!7408)))))

(declare-fun lt!2493026 () Unit!161171)

(assert (=> b!6995238 (= lt!2493026 (lemmaFlatMapOnSingletonSet!1759 lt!2493018 lt!2492984 lambda!404244))))

(declare-fun map!15534 ((Set Context!12508) Int) (Set Context!12508))

(assert (=> b!6995238 (= (map!15534 lt!2493018 lambda!404242) (set.insert (Context!12509 (++!15217 lt!2493020 (exprs!6754 ct2!306))) (as set.empty (Set Context!12508))))))

(declare-fun lt!2492999 () Unit!161171)

(assert (=> b!6995238 (= lt!2492999 (lemmaConcatPreservesForall!594 lt!2493020 (exprs!6754 ct2!306) lambda!404243))))

(declare-fun lt!2493001 () Unit!161171)

(declare-fun lemmaMapOnSingletonSet!323 ((Set Context!12508) Context!12508 Int) Unit!161171)

(assert (=> b!6995238 (= lt!2493001 (lemmaMapOnSingletonSet!323 lt!2493018 lt!2492984 lambda!404242))))

(assert (=> b!6995238 (= lt!2493018 (set.insert lt!2492984 (as set.empty (Set Context!12508))))))

(declare-fun b!6995239 () Bool)

(assert (=> b!6995239 (= e!4204648 e!4204650)))

(declare-fun res!2853621 () Bool)

(assert (=> b!6995239 (=> res!2853621 e!4204650)))

(declare-fun lt!2493016 () (Set Context!12508))

(assert (=> b!6995239 (= res!2853621 (not (= lt!2493019 lt!2493016)))))

(assert (=> b!6995239 (= lt!2493019 (set.insert lt!2492982 (as set.empty (Set Context!12508))))))

(declare-fun lt!2493006 () Unit!161171)

(assert (=> b!6995239 (= lt!2493006 (lemmaConcatPreservesForall!594 (exprs!6754 lt!2493029) (exprs!6754 ct2!306) lambda!404243))))

(declare-fun setIsEmpty!47982 () Bool)

(assert (=> setIsEmpty!47982 setRes!47982))

(declare-fun b!6995240 () Bool)

(declare-fun res!2853637 () Bool)

(assert (=> b!6995240 (=> (not res!2853637) (not e!4204645))))

(assert (=> b!6995240 (= res!2853637 (is-Cons!67196 s!7408))))

(declare-fun b!6995241 () Bool)

(declare-fun res!2853634 () Bool)

(assert (=> b!6995241 (=> res!2853634 e!4204647)))

(assert (=> b!6995241 (= res!2853634 (not (is-Cons!67195 (exprs!6754 lt!2493029))))))

(declare-fun b!6995242 () Bool)

(declare-fun res!2853624 () Bool)

(assert (=> b!6995242 (=> res!2853624 e!4204642)))

(assert (=> b!6995242 (= res!2853624 (>= (zipperDepthTotal!479 (Cons!67197 lt!2492984 Nil!67197)) lt!2492998))))

(declare-fun b!6995243 () Bool)

(declare-fun tp!1930485 () Bool)

(assert (=> b!6995243 (= e!4204634 tp!1930485)))

(declare-fun b!6995244 () Bool)

(declare-fun e!4204641 () Bool)

(assert (=> b!6995244 (= e!4204647 e!4204641)))

(declare-fun res!2853635 () Bool)

(assert (=> b!6995244 (=> res!2853635 e!4204641)))

(declare-fun nullable!7018 (Regex!17258) Bool)

(assert (=> b!6995244 (= res!2853635 (not (nullable!7018 (h!73643 (exprs!6754 lt!2493029)))))))

(assert (=> b!6995244 (= lt!2492984 (Context!12509 lt!2493020))))

(declare-fun tail!13284 (List!67319) List!67319)

(assert (=> b!6995244 (= lt!2493020 (tail!13284 (exprs!6754 lt!2493029)))))

(assert (=> b!6995245 (= e!4204645 (not e!4204635))))

(declare-fun res!2853641 () Bool)

(assert (=> b!6995245 (=> res!2853641 e!4204635)))

(assert (=> b!6995245 (= res!2853641 (not (matchZipper!2798 lt!2493016 s!7408)))))

(assert (=> b!6995245 (= lt!2493016 (set.insert lt!2492983 (as set.empty (Set Context!12508))))))

(declare-fun lambda!404241 () Int)

(declare-fun getWitness!1169 ((Set Context!12508) Int) Context!12508)

(assert (=> b!6995245 (= lt!2492983 (getWitness!1169 lt!2492981 lambda!404241))))

(declare-fun lt!2493013 () List!67321)

(declare-fun exists!3065 (List!67321 Int) Bool)

(assert (=> b!6995245 (exists!3065 lt!2493013 lambda!404241)))

(declare-fun lt!2493011 () Unit!161171)

(declare-fun lemmaZipperMatchesExistsMatchingContext!227 (List!67321 List!67320) Unit!161171)

(assert (=> b!6995245 (= lt!2493011 (lemmaZipperMatchesExistsMatchingContext!227 lt!2493013 s!7408))))

(assert (=> b!6995245 (= lt!2493013 (toList!10618 lt!2492981))))

(declare-fun b!6995246 () Bool)

(declare-fun e!4204646 () Bool)

(declare-fun e!4204633 () Bool)

(assert (=> b!6995246 (= e!4204646 e!4204633)))

(declare-fun res!2853633 () Bool)

(assert (=> b!6995246 (=> res!2853633 e!4204633)))

(declare-fun lt!2493015 () (Set Context!12508))

(assert (=> b!6995246 (= res!2853633 (not (= (derivationStepZipper!2738 lt!2493015 (h!73644 s!7408)) lt!2492996)))))

(declare-fun lt!2492980 () Unit!161171)

(assert (=> b!6995246 (= lt!2492980 (lemmaConcatPreservesForall!594 lt!2493020 (exprs!6754 ct2!306) lambda!404243))))

(declare-fun lt!2492990 () Unit!161171)

(assert (=> b!6995246 (= lt!2492990 (lemmaConcatPreservesForall!594 lt!2493020 (exprs!6754 ct2!306) lambda!404243))))

(declare-fun lt!2493007 () Context!12508)

(assert (=> b!6995246 (= (flatMap!2244 lt!2493015 lambda!404244) (derivationStepZipperUp!1908 lt!2493007 (h!73644 s!7408)))))

(declare-fun lt!2493000 () Unit!161171)

(assert (=> b!6995246 (= lt!2493000 (lemmaFlatMapOnSingletonSet!1759 lt!2493015 lt!2493007 lambda!404244))))

(assert (=> b!6995246 (= lt!2493015 (set.insert lt!2493007 (as set.empty (Set Context!12508))))))

(declare-fun lt!2492997 () Unit!161171)

(assert (=> b!6995246 (= lt!2492997 (lemmaConcatPreservesForall!594 lt!2493020 (exprs!6754 ct2!306) lambda!404243))))

(declare-fun lt!2492986 () Unit!161171)

(assert (=> b!6995246 (= lt!2492986 (lemmaConcatPreservesForall!594 lt!2493020 (exprs!6754 ct2!306) lambda!404243))))

(declare-fun b!6995247 () Bool)

(declare-fun e!4204640 () Bool)

(assert (=> b!6995247 (= e!4204641 e!4204640)))

(declare-fun res!2853619 () Bool)

(assert (=> b!6995247 (=> res!2853619 e!4204640)))

(declare-fun lt!2493004 () (Set Context!12508))

(assert (=> b!6995247 (= res!2853619 (not (= lt!2492988 lt!2493004)))))

(declare-fun lt!2492985 () (Set Context!12508))

(assert (=> b!6995247 (= lt!2493004 (set.union lt!2492985 lt!2492996))))

(assert (=> b!6995247 (= lt!2492996 (derivationStepZipperUp!1908 lt!2493007 (h!73644 s!7408)))))

(declare-fun derivationStepZipperDown!1976 (Regex!17258 Context!12508 C!34786) (Set Context!12508))

(assert (=> b!6995247 (= lt!2492985 (derivationStepZipperDown!1976 (h!73643 (exprs!6754 lt!2493029)) lt!2493007 (h!73644 s!7408)))))

(assert (=> b!6995247 (= lt!2493007 (Context!12509 (++!15217 lt!2493020 (exprs!6754 ct2!306))))))

(declare-fun lt!2493010 () Unit!161171)

(assert (=> b!6995247 (= lt!2493010 (lemmaConcatPreservesForall!594 lt!2493020 (exprs!6754 ct2!306) lambda!404243))))

(declare-fun lt!2493005 () Unit!161171)

(assert (=> b!6995247 (= lt!2493005 (lemmaConcatPreservesForall!594 lt!2493020 (exprs!6754 ct2!306) lambda!404243))))

(declare-fun b!6995248 () Bool)

(declare-fun res!2853617 () Bool)

(assert (=> b!6995248 (=> res!2853617 e!4204643)))

(assert (=> b!6995248 (= res!2853617 (not (matchZipper!2798 lt!2493021 (_2!37234 lt!2493025))))))

(declare-fun b!6995249 () Bool)

(declare-fun e!4204644 () Bool)

(assert (=> b!6995249 (= e!4204640 e!4204644)))

(declare-fun res!2853631 () Bool)

(assert (=> b!6995249 (=> res!2853631 e!4204644)))

(assert (=> b!6995249 (= res!2853631 e!4204651)))

(declare-fun res!2853627 () Bool)

(assert (=> b!6995249 (=> (not res!2853627) (not e!4204651))))

(declare-fun lt!2493028 () Bool)

(declare-fun lt!2493017 () Bool)

(assert (=> b!6995249 (= res!2853627 (not (= lt!2493028 lt!2493017)))))

(assert (=> b!6995249 (= lt!2493028 (matchZipper!2798 lt!2492988 (t!381067 s!7408)))))

(declare-fun lt!2493009 () Unit!161171)

(assert (=> b!6995249 (= lt!2493009 (lemmaConcatPreservesForall!594 lt!2493020 (exprs!6754 ct2!306) lambda!404243))))

(declare-fun e!4204639 () Bool)

(assert (=> b!6995249 (= (matchZipper!2798 lt!2493004 (t!381067 s!7408)) e!4204639)))

(declare-fun res!2853638 () Bool)

(assert (=> b!6995249 (=> res!2853638 e!4204639)))

(assert (=> b!6995249 (= res!2853638 lt!2493017)))

(assert (=> b!6995249 (= lt!2493017 (matchZipper!2798 lt!2492985 (t!381067 s!7408)))))

(declare-fun lt!2492992 () Unit!161171)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1431 ((Set Context!12508) (Set Context!12508) List!67320) Unit!161171)

(assert (=> b!6995249 (= lt!2492992 (lemmaZipperConcatMatchesSameAsBothZippers!1431 lt!2492985 lt!2492996 (t!381067 s!7408)))))

(declare-fun lt!2492989 () Unit!161171)

(assert (=> b!6995249 (= lt!2492989 (lemmaConcatPreservesForall!594 lt!2493020 (exprs!6754 ct2!306) lambda!404243))))

(declare-fun lt!2493030 () Unit!161171)

(assert (=> b!6995249 (= lt!2493030 (lemmaConcatPreservesForall!594 lt!2493020 (exprs!6754 ct2!306) lambda!404243))))

(declare-fun b!6995250 () Bool)

(assert (=> b!6995250 (= e!4204639 (matchZipper!2798 lt!2492996 (t!381067 s!7408)))))

(declare-fun b!6995251 () Bool)

(assert (=> b!6995251 (= e!4204633 e!4204637)))

(declare-fun res!2853629 () Bool)

(assert (=> b!6995251 (=> res!2853629 e!4204637)))

(assert (=> b!6995251 (= res!2853629 (not (matchZipper!2798 lt!2493015 s!7408)))))

(declare-fun lt!2492993 () Unit!161171)

(assert (=> b!6995251 (= lt!2492993 (lemmaConcatPreservesForall!594 lt!2493020 (exprs!6754 ct2!306) lambda!404243))))

(declare-fun b!6995252 () Bool)

(declare-fun tp_is_empty!43741 () Bool)

(declare-fun tp!1930483 () Bool)

(assert (=> b!6995252 (= e!4204649 (and tp_is_empty!43741 tp!1930483))))

(declare-fun b!6995253 () Bool)

(declare-fun res!2853630 () Bool)

(assert (=> b!6995253 (=> res!2853630 e!4204643)))

(declare-fun ++!15218 (List!67320 List!67320) List!67320)

(assert (=> b!6995253 (= res!2853630 (not (= (++!15218 (_1!37234 lt!2493025) (_2!37234 lt!2493025)) s!7408)))))

(declare-fun b!6995254 () Bool)

(declare-fun res!2853639 () Bool)

(assert (=> b!6995254 (=> res!2853639 e!4204644)))

(assert (=> b!6995254 (= res!2853639 (not lt!2493028))))

(declare-fun b!6995255 () Bool)

(declare-fun validRegex!8868 (Regex!17258) Bool)

(assert (=> b!6995255 (= e!4204636 (validRegex!8868 (h!73643 (exprs!6754 lt!2493029))))))

(declare-fun setNonEmpty!47982 () Bool)

(declare-fun setElem!47982 () Context!12508)

(declare-fun tp!1930486 () Bool)

(assert (=> setNonEmpty!47982 (= setRes!47982 (and tp!1930486 (inv!86005 setElem!47982) e!4204638))))

(declare-fun setRest!47982 () (Set Context!12508))

(assert (=> setNonEmpty!47982 (= z1!570 (set.union (set.insert setElem!47982 (as set.empty (Set Context!12508))) setRest!47982))))

(declare-fun b!6995256 () Bool)

(assert (=> b!6995256 (= e!4204644 e!4204646)))

(declare-fun res!2853628 () Bool)

(assert (=> b!6995256 (=> res!2853628 e!4204646)))

(assert (=> b!6995256 (= res!2853628 (not (matchZipper!2798 lt!2492996 (t!381067 s!7408))))))

(declare-fun lt!2493027 () Unit!161171)

(assert (=> b!6995256 (= lt!2493027 (lemmaConcatPreservesForall!594 lt!2493020 (exprs!6754 ct2!306) lambda!404243))))

(assert (= (and start!672616 res!2853636) b!6995240))

(assert (= (and b!6995240 res!2853637) b!6995245))

(assert (= (and b!6995245 (not res!2853641)) b!6995233))

(assert (= (and b!6995233 (not res!2853626)) b!6995229))

(assert (= (and b!6995229 (not res!2853622)) b!6995239))

(assert (= (and b!6995239 (not res!2853621)) b!6995234))

(assert (= (and b!6995234 (not res!2853618)) b!6995241))

(assert (= (and b!6995241 (not res!2853634)) b!6995236))

(assert (= (and b!6995236 (not res!2853640)) b!6995244))

(assert (= (and b!6995244 (not res!2853635)) b!6995247))

(assert (= (and b!6995247 (not res!2853619)) b!6995249))

(assert (= (and b!6995249 (not res!2853638)) b!6995250))

(assert (= (and b!6995249 res!2853627) b!6995235))

(assert (= (and b!6995249 (not res!2853631)) b!6995254))

(assert (= (and b!6995254 (not res!2853639)) b!6995256))

(assert (= (and b!6995256 (not res!2853628)) b!6995246))

(assert (= (and b!6995246 (not res!2853633)) b!6995251))

(assert (= (and b!6995251 (not res!2853629)) b!6995238))

(assert (= (and b!6995238 (not res!2853623)) b!6995242))

(assert (= (and b!6995242 (not res!2853624)) b!6995232))

(assert (= (and b!6995232 (not res!2853625)) b!6995248))

(assert (= (and b!6995248 (not res!2853617)) b!6995253))

(assert (= (and b!6995253 (not res!2853630)) b!6995230))

(assert (= (and b!6995230 (not res!2853632)) b!6995231))

(assert (= (and b!6995231 (not res!2853620)) b!6995255))

(assert (= (and start!672616 condSetEmpty!47982) setIsEmpty!47982))

(assert (= (and start!672616 (not condSetEmpty!47982)) setNonEmpty!47982))

(assert (= setNonEmpty!47982 b!6995237))

(assert (= start!672616 b!6995243))

(assert (= (and start!672616 (is-Cons!67196 s!7408)) b!6995252))

(declare-fun m!7686416 () Bool)

(assert (=> b!6995253 m!7686416))

(declare-fun m!7686418 () Bool)

(assert (=> b!6995242 m!7686418))

(declare-fun m!7686420 () Bool)

(assert (=> b!6995248 m!7686420))

(declare-fun m!7686422 () Bool)

(assert (=> b!6995235 m!7686422))

(declare-fun m!7686424 () Bool)

(assert (=> b!6995235 m!7686424))

(declare-fun m!7686426 () Bool)

(assert (=> b!6995255 m!7686426))

(declare-fun m!7686428 () Bool)

(assert (=> b!6995230 m!7686428))

(declare-fun m!7686430 () Bool)

(assert (=> b!6995231 m!7686430))

(declare-fun m!7686432 () Bool)

(assert (=> b!6995231 m!7686432))

(declare-fun m!7686434 () Bool)

(assert (=> b!6995231 m!7686434))

(declare-fun m!7686436 () Bool)

(assert (=> b!6995231 m!7686436))

(declare-fun m!7686438 () Bool)

(assert (=> b!6995231 m!7686438))

(assert (=> b!6995250 m!7686422))

(declare-fun m!7686440 () Bool)

(assert (=> b!6995232 m!7686440))

(declare-fun m!7686442 () Bool)

(assert (=> b!6995232 m!7686442))

(declare-fun m!7686444 () Bool)

(assert (=> b!6995232 m!7686444))

(declare-fun m!7686446 () Bool)

(assert (=> b!6995232 m!7686446))

(declare-fun m!7686448 () Bool)

(assert (=> b!6995232 m!7686448))

(declare-fun m!7686450 () Bool)

(assert (=> b!6995232 m!7686450))

(declare-fun m!7686452 () Bool)

(assert (=> setNonEmpty!47982 m!7686452))

(declare-fun m!7686454 () Bool)

(assert (=> b!6995238 m!7686454))

(declare-fun m!7686456 () Bool)

(assert (=> b!6995238 m!7686456))

(declare-fun m!7686458 () Bool)

(assert (=> b!6995238 m!7686458))

(declare-fun m!7686460 () Bool)

(assert (=> b!6995238 m!7686460))

(declare-fun m!7686462 () Bool)

(assert (=> b!6995238 m!7686462))

(declare-fun m!7686464 () Bool)

(assert (=> b!6995238 m!7686464))

(declare-fun m!7686466 () Bool)

(assert (=> b!6995238 m!7686466))

(declare-fun m!7686468 () Bool)

(assert (=> b!6995238 m!7686468))

(declare-fun m!7686470 () Bool)

(assert (=> b!6995238 m!7686470))

(assert (=> b!6995238 m!7686424))

(assert (=> b!6995238 m!7686424))

(assert (=> b!6995238 m!7686424))

(declare-fun m!7686472 () Bool)

(assert (=> b!6995238 m!7686472))

(declare-fun m!7686474 () Bool)

(assert (=> b!6995238 m!7686474))

(declare-fun m!7686476 () Bool)

(assert (=> b!6995238 m!7686476))

(declare-fun m!7686478 () Bool)

(assert (=> b!6995238 m!7686478))

(assert (=> b!6995238 m!7686424))

(declare-fun m!7686480 () Bool)

(assert (=> b!6995236 m!7686480))

(declare-fun m!7686482 () Bool)

(assert (=> b!6995244 m!7686482))

(declare-fun m!7686484 () Bool)

(assert (=> b!6995244 m!7686484))

(declare-fun m!7686486 () Bool)

(assert (=> b!6995239 m!7686486))

(declare-fun m!7686488 () Bool)

(assert (=> b!6995239 m!7686488))

(declare-fun m!7686490 () Bool)

(assert (=> b!6995245 m!7686490))

(declare-fun m!7686492 () Bool)

(assert (=> b!6995245 m!7686492))

(declare-fun m!7686494 () Bool)

(assert (=> b!6995245 m!7686494))

(declare-fun m!7686496 () Bool)

(assert (=> b!6995245 m!7686496))

(declare-fun m!7686498 () Bool)

(assert (=> b!6995245 m!7686498))

(declare-fun m!7686500 () Bool)

(assert (=> b!6995245 m!7686500))

(declare-fun m!7686502 () Bool)

(assert (=> b!6995251 m!7686502))

(assert (=> b!6995251 m!7686424))

(declare-fun m!7686504 () Bool)

(assert (=> b!6995233 m!7686504))

(declare-fun m!7686506 () Bool)

(assert (=> start!672616 m!7686506))

(declare-fun m!7686508 () Bool)

(assert (=> start!672616 m!7686508))

(declare-fun m!7686510 () Bool)

(assert (=> start!672616 m!7686510))

(assert (=> b!6995234 m!7686488))

(declare-fun m!7686512 () Bool)

(assert (=> b!6995234 m!7686512))

(declare-fun m!7686514 () Bool)

(assert (=> b!6995234 m!7686514))

(declare-fun m!7686516 () Bool)

(assert (=> b!6995234 m!7686516))

(declare-fun m!7686518 () Bool)

(assert (=> b!6995234 m!7686518))

(assert (=> b!6995256 m!7686422))

(assert (=> b!6995256 m!7686424))

(declare-fun m!7686520 () Bool)

(assert (=> b!6995229 m!7686520))

(declare-fun m!7686522 () Bool)

(assert (=> b!6995229 m!7686522))

(assert (=> b!6995229 m!7686488))

(declare-fun m!7686524 () Bool)

(assert (=> b!6995229 m!7686524))

(assert (=> b!6995249 m!7686424))

(declare-fun m!7686526 () Bool)

(assert (=> b!6995249 m!7686526))

(assert (=> b!6995249 m!7686424))

(assert (=> b!6995249 m!7686424))

(declare-fun m!7686528 () Bool)

(assert (=> b!6995249 m!7686528))

(declare-fun m!7686530 () Bool)

(assert (=> b!6995249 m!7686530))

(declare-fun m!7686532 () Bool)

(assert (=> b!6995249 m!7686532))

(declare-fun m!7686534 () Bool)

(assert (=> b!6995246 m!7686534))

(assert (=> b!6995246 m!7686424))

(assert (=> b!6995246 m!7686424))

(declare-fun m!7686536 () Bool)

(assert (=> b!6995246 m!7686536))

(declare-fun m!7686538 () Bool)

(assert (=> b!6995246 m!7686538))

(declare-fun m!7686540 () Bool)

(assert (=> b!6995246 m!7686540))

(assert (=> b!6995246 m!7686424))

(assert (=> b!6995246 m!7686424))

(declare-fun m!7686542 () Bool)

(assert (=> b!6995246 m!7686542))

(declare-fun m!7686544 () Bool)

(assert (=> b!6995247 m!7686544))

(assert (=> b!6995247 m!7686538))

(assert (=> b!6995247 m!7686424))

(assert (=> b!6995247 m!7686424))

(assert (=> b!6995247 m!7686474))

(push 1)

(assert (not b!6995253))

(assert (not b!6995238))

(assert (not b!6995246))

(assert (not b!6995235))

(assert (not b!6995256))

(assert (not b!6995248))

(assert (not b!6995252))

(assert tp_is_empty!43741)

(assert (not b!6995247))

(assert (not setNonEmpty!47982))

(assert (not b!6995230))

(assert (not b!6995236))

(assert (not b!6995250))

(assert (not b!6995237))

(assert (not b!6995251))

(assert (not b!6995231))

(assert (not b!6995245))

(assert (not b!6995234))

(assert (not b!6995249))

(assert (not b!6995232))

(assert (not b!6995244))

(assert (not b!6995242))

(assert (not b!6995255))

(assert (not b!6995243))

(assert (not b!6995229))

(assert (not start!672616))

(assert (not b!6995239))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6995371 () Bool)

(declare-fun e!4204728 () Bool)

(declare-fun e!4204729 () Bool)

(assert (=> b!6995371 (= e!4204728 e!4204729)))

(declare-fun res!2853730 () Bool)

(assert (=> b!6995371 (= res!2853730 (not (nullable!7018 (reg!17587 (h!73643 (exprs!6754 lt!2493029))))))))

(assert (=> b!6995371 (=> (not res!2853730) (not e!4204729))))

(declare-fun b!6995372 () Bool)

(declare-fun e!4204723 () Bool)

(assert (=> b!6995372 (= e!4204723 e!4204728)))

(declare-fun c!1297882 () Bool)

(assert (=> b!6995372 (= c!1297882 (is-Star!17258 (h!73643 (exprs!6754 lt!2493029))))))

(declare-fun b!6995373 () Bool)

(declare-fun res!2853731 () Bool)

(declare-fun e!4204724 () Bool)

(assert (=> b!6995373 (=> (not res!2853731) (not e!4204724))))

(declare-fun call!634951 () Bool)

(assert (=> b!6995373 (= res!2853731 call!634951)))

(declare-fun e!4204727 () Bool)

(assert (=> b!6995373 (= e!4204727 e!4204724)))

(declare-fun bm!634945 () Bool)

(declare-fun call!634950 () Bool)

(declare-fun c!1297881 () Bool)

(assert (=> bm!634945 (= call!634950 (validRegex!8868 (ite c!1297881 (regTwo!35029 (h!73643 (exprs!6754 lt!2493029))) (regTwo!35028 (h!73643 (exprs!6754 lt!2493029))))))))

(declare-fun b!6995374 () Bool)

(assert (=> b!6995374 (= e!4204724 call!634950)))

(declare-fun d!2178983 () Bool)

(declare-fun res!2853732 () Bool)

(assert (=> d!2178983 (=> res!2853732 e!4204723)))

(assert (=> d!2178983 (= res!2853732 (is-ElementMatch!17258 (h!73643 (exprs!6754 lt!2493029))))))

(assert (=> d!2178983 (= (validRegex!8868 (h!73643 (exprs!6754 lt!2493029))) e!4204723)))

(declare-fun b!6995375 () Bool)

(assert (=> b!6995375 (= e!4204728 e!4204727)))

(assert (=> b!6995375 (= c!1297881 (is-Union!17258 (h!73643 (exprs!6754 lt!2493029))))))

(declare-fun bm!634946 () Bool)

(declare-fun call!634952 () Bool)

(assert (=> bm!634946 (= call!634951 call!634952)))

(declare-fun b!6995376 () Bool)

(declare-fun e!4204725 () Bool)

(assert (=> b!6995376 (= e!4204725 call!634950)))

(declare-fun b!6995377 () Bool)

(declare-fun res!2853729 () Bool)

(declare-fun e!4204726 () Bool)

(assert (=> b!6995377 (=> res!2853729 e!4204726)))

(assert (=> b!6995377 (= res!2853729 (not (is-Concat!26103 (h!73643 (exprs!6754 lt!2493029)))))))

(assert (=> b!6995377 (= e!4204727 e!4204726)))

(declare-fun b!6995378 () Bool)

(assert (=> b!6995378 (= e!4204729 call!634952)))

(declare-fun b!6995379 () Bool)

(assert (=> b!6995379 (= e!4204726 e!4204725)))

(declare-fun res!2853728 () Bool)

(assert (=> b!6995379 (=> (not res!2853728) (not e!4204725))))

(assert (=> b!6995379 (= res!2853728 call!634951)))

(declare-fun bm!634947 () Bool)

(assert (=> bm!634947 (= call!634952 (validRegex!8868 (ite c!1297882 (reg!17587 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297881 (regOne!35029 (h!73643 (exprs!6754 lt!2493029))) (regOne!35028 (h!73643 (exprs!6754 lt!2493029)))))))))

(assert (= (and d!2178983 (not res!2853732)) b!6995372))

(assert (= (and b!6995372 c!1297882) b!6995371))

(assert (= (and b!6995372 (not c!1297882)) b!6995375))

(assert (= (and b!6995371 res!2853730) b!6995378))

(assert (= (and b!6995375 c!1297881) b!6995373))

(assert (= (and b!6995375 (not c!1297881)) b!6995377))

(assert (= (and b!6995373 res!2853731) b!6995374))

(assert (= (and b!6995377 (not res!2853729)) b!6995379))

(assert (= (and b!6995379 res!2853728) b!6995376))

(assert (= (or b!6995374 b!6995376) bm!634945))

(assert (= (or b!6995373 b!6995379) bm!634946))

(assert (= (or b!6995378 bm!634946) bm!634947))

(declare-fun m!7686676 () Bool)

(assert (=> b!6995371 m!7686676))

(declare-fun m!7686678 () Bool)

(assert (=> bm!634945 m!7686678))

(declare-fun m!7686680 () Bool)

(assert (=> bm!634947 m!7686680))

(assert (=> b!6995255 d!2178983))

(declare-fun d!2178985 () Bool)

(declare-fun c!1297885 () Bool)

(assert (=> d!2178985 (= c!1297885 (isEmpty!39219 (t!381067 s!7408)))))

(declare-fun e!4204732 () Bool)

(assert (=> d!2178985 (= (matchZipper!2798 lt!2492996 (t!381067 s!7408)) e!4204732)))

(declare-fun b!6995384 () Bool)

(declare-fun nullableZipper!2453 ((Set Context!12508)) Bool)

(assert (=> b!6995384 (= e!4204732 (nullableZipper!2453 lt!2492996))))

(declare-fun b!6995385 () Bool)

(declare-fun head!14128 (List!67320) C!34786)

(declare-fun tail!13286 (List!67320) List!67320)

(assert (=> b!6995385 (= e!4204732 (matchZipper!2798 (derivationStepZipper!2738 lt!2492996 (head!14128 (t!381067 s!7408))) (tail!13286 (t!381067 s!7408))))))

(assert (= (and d!2178985 c!1297885) b!6995384))

(assert (= (and d!2178985 (not c!1297885)) b!6995385))

(declare-fun m!7686682 () Bool)

(assert (=> d!2178985 m!7686682))

(declare-fun m!7686684 () Bool)

(assert (=> b!6995384 m!7686684))

(declare-fun m!7686686 () Bool)

(assert (=> b!6995385 m!7686686))

(assert (=> b!6995385 m!7686686))

(declare-fun m!7686688 () Bool)

(assert (=> b!6995385 m!7686688))

(declare-fun m!7686690 () Bool)

(assert (=> b!6995385 m!7686690))

(assert (=> b!6995385 m!7686688))

(assert (=> b!6995385 m!7686690))

(declare-fun m!7686692 () Bool)

(assert (=> b!6995385 m!7686692))

(assert (=> b!6995235 d!2178985))

(declare-fun d!2178987 () Bool)

(declare-fun forall!16166 (List!67319 Int) Bool)

(assert (=> d!2178987 (forall!16166 (++!15217 lt!2493020 (exprs!6754 ct2!306)) lambda!404243)))

(declare-fun lt!2493198 () Unit!161171)

(declare-fun choose!52383 (List!67319 List!67319 Int) Unit!161171)

(assert (=> d!2178987 (= lt!2493198 (choose!52383 lt!2493020 (exprs!6754 ct2!306) lambda!404243))))

(assert (=> d!2178987 (forall!16166 lt!2493020 lambda!404243)))

(assert (=> d!2178987 (= (lemmaConcatPreservesForall!594 lt!2493020 (exprs!6754 ct2!306) lambda!404243) lt!2493198)))

(declare-fun bs!1862883 () Bool)

(assert (= bs!1862883 d!2178987))

(assert (=> bs!1862883 m!7686474))

(assert (=> bs!1862883 m!7686474))

(declare-fun m!7686694 () Bool)

(assert (=> bs!1862883 m!7686694))

(declare-fun m!7686696 () Bool)

(assert (=> bs!1862883 m!7686696))

(declare-fun m!7686698 () Bool)

(assert (=> bs!1862883 m!7686698))

(assert (=> b!6995235 d!2178987))

(declare-fun b!6995396 () Bool)

(declare-fun e!4204739 () Bool)

(assert (=> b!6995396 (= e!4204739 (nullable!7018 (h!73643 (exprs!6754 lt!2492982))))))

(declare-fun b!6995397 () Bool)

(declare-fun e!4204740 () (Set Context!12508))

(assert (=> b!6995397 (= e!4204740 (as set.empty (Set Context!12508)))))

(declare-fun e!4204741 () (Set Context!12508))

(declare-fun b!6995398 () Bool)

(declare-fun call!634955 () (Set Context!12508))

(assert (=> b!6995398 (= e!4204741 (set.union call!634955 (derivationStepZipperUp!1908 (Context!12509 (t!381066 (exprs!6754 lt!2492982))) (h!73644 s!7408))))))

(declare-fun b!6995399 () Bool)

(assert (=> b!6995399 (= e!4204741 e!4204740)))

(declare-fun c!1297891 () Bool)

(assert (=> b!6995399 (= c!1297891 (is-Cons!67195 (exprs!6754 lt!2492982)))))

(declare-fun b!6995400 () Bool)

(assert (=> b!6995400 (= e!4204740 call!634955)))

(declare-fun d!2178989 () Bool)

(declare-fun c!1297890 () Bool)

(assert (=> d!2178989 (= c!1297890 e!4204739)))

(declare-fun res!2853735 () Bool)

(assert (=> d!2178989 (=> (not res!2853735) (not e!4204739))))

(assert (=> d!2178989 (= res!2853735 (is-Cons!67195 (exprs!6754 lt!2492982)))))

(assert (=> d!2178989 (= (derivationStepZipperUp!1908 lt!2492982 (h!73644 s!7408)) e!4204741)))

(declare-fun bm!634950 () Bool)

(assert (=> bm!634950 (= call!634955 (derivationStepZipperDown!1976 (h!73643 (exprs!6754 lt!2492982)) (Context!12509 (t!381066 (exprs!6754 lt!2492982))) (h!73644 s!7408)))))

(assert (= (and d!2178989 res!2853735) b!6995396))

(assert (= (and d!2178989 c!1297890) b!6995398))

(assert (= (and d!2178989 (not c!1297890)) b!6995399))

(assert (= (and b!6995399 c!1297891) b!6995400))

(assert (= (and b!6995399 (not c!1297891)) b!6995397))

(assert (= (or b!6995398 b!6995400) bm!634950))

(declare-fun m!7686700 () Bool)

(assert (=> b!6995396 m!7686700))

(declare-fun m!7686702 () Bool)

(assert (=> b!6995398 m!7686702))

(declare-fun m!7686704 () Bool)

(assert (=> bm!634950 m!7686704))

(assert (=> b!6995234 d!2178989))

(declare-fun d!2178991 () Bool)

(declare-fun choose!52384 ((Set Context!12508) Int) (Set Context!12508))

(assert (=> d!2178991 (= (flatMap!2244 lt!2493019 lambda!404244) (choose!52384 lt!2493019 lambda!404244))))

(declare-fun bs!1862884 () Bool)

(assert (= bs!1862884 d!2178991))

(declare-fun m!7686706 () Bool)

(assert (=> bs!1862884 m!7686706))

(assert (=> b!6995234 d!2178991))

(declare-fun d!2178993 () Bool)

(declare-fun dynLambda!26962 (Int Context!12508) (Set Context!12508))

(assert (=> d!2178993 (= (flatMap!2244 lt!2493019 lambda!404244) (dynLambda!26962 lambda!404244 lt!2492982))))

(declare-fun lt!2493201 () Unit!161171)

(declare-fun choose!52385 ((Set Context!12508) Context!12508 Int) Unit!161171)

(assert (=> d!2178993 (= lt!2493201 (choose!52385 lt!2493019 lt!2492982 lambda!404244))))

(assert (=> d!2178993 (= lt!2493019 (set.insert lt!2492982 (as set.empty (Set Context!12508))))))

(assert (=> d!2178993 (= (lemmaFlatMapOnSingletonSet!1759 lt!2493019 lt!2492982 lambda!404244) lt!2493201)))

(declare-fun b_lambda!263059 () Bool)

(assert (=> (not b_lambda!263059) (not d!2178993)))

(declare-fun bs!1862885 () Bool)

(assert (= bs!1862885 d!2178993))

(assert (=> bs!1862885 m!7686512))

(declare-fun m!7686708 () Bool)

(assert (=> bs!1862885 m!7686708))

(declare-fun m!7686710 () Bool)

(assert (=> bs!1862885 m!7686710))

(assert (=> bs!1862885 m!7686486))

(assert (=> b!6995234 d!2178993))

(declare-fun d!2178995 () Bool)

(assert (=> d!2178995 (forall!16166 (++!15217 (exprs!6754 lt!2493029) (exprs!6754 ct2!306)) lambda!404243)))

(declare-fun lt!2493202 () Unit!161171)

(assert (=> d!2178995 (= lt!2493202 (choose!52383 (exprs!6754 lt!2493029) (exprs!6754 ct2!306) lambda!404243))))

(assert (=> d!2178995 (forall!16166 (exprs!6754 lt!2493029) lambda!404243)))

(assert (=> d!2178995 (= (lemmaConcatPreservesForall!594 (exprs!6754 lt!2493029) (exprs!6754 ct2!306) lambda!404243) lt!2493202)))

(declare-fun bs!1862886 () Bool)

(assert (= bs!1862886 d!2178995))

(assert (=> bs!1862886 m!7686522))

(assert (=> bs!1862886 m!7686522))

(declare-fun m!7686712 () Bool)

(assert (=> bs!1862886 m!7686712))

(declare-fun m!7686714 () Bool)

(assert (=> bs!1862886 m!7686714))

(declare-fun m!7686716 () Bool)

(assert (=> bs!1862886 m!7686716))

(assert (=> b!6995234 d!2178995))

(declare-fun bs!1862887 () Bool)

(declare-fun d!2178997 () Bool)

(assert (= bs!1862887 (and d!2178997 b!6995234)))

(declare-fun lambda!404309 () Int)

(assert (=> bs!1862887 (= lambda!404309 lambda!404244)))

(assert (=> d!2178997 true))

(assert (=> d!2178997 (= (derivationStepZipper!2738 lt!2493019 (h!73644 s!7408)) (flatMap!2244 lt!2493019 lambda!404309))))

(declare-fun bs!1862888 () Bool)

(assert (= bs!1862888 d!2178997))

(declare-fun m!7686718 () Bool)

(assert (=> bs!1862888 m!7686718))

(assert (=> b!6995234 d!2178997))

(declare-fun d!2178999 () Bool)

(declare-fun nullableFct!2651 (Regex!17258) Bool)

(assert (=> d!2178999 (= (nullable!7018 (h!73643 (exprs!6754 lt!2493029))) (nullableFct!2651 (h!73643 (exprs!6754 lt!2493029))))))

(declare-fun bs!1862889 () Bool)

(assert (= bs!1862889 d!2178999))

(declare-fun m!7686720 () Bool)

(assert (=> bs!1862889 m!7686720))

(assert (=> b!6995244 d!2178999))

(declare-fun d!2179001 () Bool)

(assert (=> d!2179001 (= (tail!13284 (exprs!6754 lt!2493029)) (t!381066 (exprs!6754 lt!2493029)))))

(assert (=> b!6995244 d!2179001))

(declare-fun b!6995413 () Bool)

(declare-fun res!2853742 () Bool)

(declare-fun e!4204746 () Bool)

(assert (=> b!6995413 (=> (not res!2853742) (not e!4204746))))

(declare-fun lt!2493205 () List!67320)

(declare-fun size!40922 (List!67320) Int)

(assert (=> b!6995413 (= res!2853742 (= (size!40922 lt!2493205) (+ (size!40922 (_1!37234 lt!2493025)) (size!40922 (_2!37234 lt!2493025)))))))

(declare-fun b!6995412 () Bool)

(declare-fun e!4204747 () List!67320)

(assert (=> b!6995412 (= e!4204747 (Cons!67196 (h!73644 (_1!37234 lt!2493025)) (++!15218 (t!381067 (_1!37234 lt!2493025)) (_2!37234 lt!2493025))))))

(declare-fun b!6995414 () Bool)

(assert (=> b!6995414 (= e!4204746 (or (not (= (_2!37234 lt!2493025) Nil!67196)) (= lt!2493205 (_1!37234 lt!2493025))))))

(declare-fun d!2179003 () Bool)

(assert (=> d!2179003 e!4204746))

(declare-fun res!2853741 () Bool)

(assert (=> d!2179003 (=> (not res!2853741) (not e!4204746))))

(declare-fun content!13289 (List!67320) (Set C!34786))

(assert (=> d!2179003 (= res!2853741 (= (content!13289 lt!2493205) (set.union (content!13289 (_1!37234 lt!2493025)) (content!13289 (_2!37234 lt!2493025)))))))

(assert (=> d!2179003 (= lt!2493205 e!4204747)))

(declare-fun c!1297896 () Bool)

(assert (=> d!2179003 (= c!1297896 (is-Nil!67196 (_1!37234 lt!2493025)))))

(assert (=> d!2179003 (= (++!15218 (_1!37234 lt!2493025) (_2!37234 lt!2493025)) lt!2493205)))

(declare-fun b!6995411 () Bool)

(assert (=> b!6995411 (= e!4204747 (_2!37234 lt!2493025))))

(assert (= (and d!2179003 c!1297896) b!6995411))

(assert (= (and d!2179003 (not c!1297896)) b!6995412))

(assert (= (and d!2179003 res!2853741) b!6995413))

(assert (= (and b!6995413 res!2853742) b!6995414))

(declare-fun m!7686722 () Bool)

(assert (=> b!6995413 m!7686722))

(declare-fun m!7686724 () Bool)

(assert (=> b!6995413 m!7686724))

(declare-fun m!7686726 () Bool)

(assert (=> b!6995413 m!7686726))

(declare-fun m!7686728 () Bool)

(assert (=> b!6995412 m!7686728))

(declare-fun m!7686730 () Bool)

(assert (=> d!2179003 m!7686730))

(declare-fun m!7686732 () Bool)

(assert (=> d!2179003 m!7686732))

(declare-fun m!7686734 () Bool)

(assert (=> d!2179003 m!7686734))

(assert (=> b!6995253 d!2179003))

(declare-fun b!6995423 () Bool)

(declare-fun e!4204753 () List!67319)

(assert (=> b!6995423 (= e!4204753 (exprs!6754 ct2!306))))

(declare-fun b!6995424 () Bool)

(assert (=> b!6995424 (= e!4204753 (Cons!67195 (h!73643 lt!2493020) (++!15217 (t!381066 lt!2493020) (exprs!6754 ct2!306))))))

(declare-fun e!4204752 () Bool)

(declare-fun b!6995426 () Bool)

(declare-fun lt!2493208 () List!67319)

(assert (=> b!6995426 (= e!4204752 (or (not (= (exprs!6754 ct2!306) Nil!67195)) (= lt!2493208 lt!2493020)))))

(declare-fun b!6995425 () Bool)

(declare-fun res!2853748 () Bool)

(assert (=> b!6995425 (=> (not res!2853748) (not e!4204752))))

(declare-fun size!40923 (List!67319) Int)

(assert (=> b!6995425 (= res!2853748 (= (size!40923 lt!2493208) (+ (size!40923 lt!2493020) (size!40923 (exprs!6754 ct2!306)))))))

(declare-fun d!2179005 () Bool)

(assert (=> d!2179005 e!4204752))

(declare-fun res!2853747 () Bool)

(assert (=> d!2179005 (=> (not res!2853747) (not e!4204752))))

(declare-fun content!13290 (List!67319) (Set Regex!17258))

(assert (=> d!2179005 (= res!2853747 (= (content!13290 lt!2493208) (set.union (content!13290 lt!2493020) (content!13290 (exprs!6754 ct2!306)))))))

(assert (=> d!2179005 (= lt!2493208 e!4204753)))

(declare-fun c!1297899 () Bool)

(assert (=> d!2179005 (= c!1297899 (is-Nil!67195 lt!2493020))))

(assert (=> d!2179005 (= (++!15217 lt!2493020 (exprs!6754 ct2!306)) lt!2493208)))

(assert (= (and d!2179005 c!1297899) b!6995423))

(assert (= (and d!2179005 (not c!1297899)) b!6995424))

(assert (= (and d!2179005 res!2853747) b!6995425))

(assert (= (and b!6995425 res!2853748) b!6995426))

(declare-fun m!7686736 () Bool)

(assert (=> b!6995424 m!7686736))

(declare-fun m!7686738 () Bool)

(assert (=> b!6995425 m!7686738))

(declare-fun m!7686740 () Bool)

(assert (=> b!6995425 m!7686740))

(declare-fun m!7686742 () Bool)

(assert (=> b!6995425 m!7686742))

(declare-fun m!7686744 () Bool)

(assert (=> d!2179005 m!7686744))

(declare-fun m!7686746 () Bool)

(assert (=> d!2179005 m!7686746))

(declare-fun m!7686748 () Bool)

(assert (=> d!2179005 m!7686748))

(assert (=> b!6995247 d!2179005))

(assert (=> b!6995247 d!2178987))

(declare-fun b!6995427 () Bool)

(declare-fun e!4204754 () Bool)

(assert (=> b!6995427 (= e!4204754 (nullable!7018 (h!73643 (exprs!6754 lt!2493007))))))

(declare-fun b!6995428 () Bool)

(declare-fun e!4204755 () (Set Context!12508))

(assert (=> b!6995428 (= e!4204755 (as set.empty (Set Context!12508)))))

(declare-fun call!634956 () (Set Context!12508))

(declare-fun b!6995429 () Bool)

(declare-fun e!4204756 () (Set Context!12508))

(assert (=> b!6995429 (= e!4204756 (set.union call!634956 (derivationStepZipperUp!1908 (Context!12509 (t!381066 (exprs!6754 lt!2493007))) (h!73644 s!7408))))))

(declare-fun b!6995430 () Bool)

(assert (=> b!6995430 (= e!4204756 e!4204755)))

(declare-fun c!1297901 () Bool)

(assert (=> b!6995430 (= c!1297901 (is-Cons!67195 (exprs!6754 lt!2493007)))))

(declare-fun b!6995431 () Bool)

(assert (=> b!6995431 (= e!4204755 call!634956)))

(declare-fun d!2179007 () Bool)

(declare-fun c!1297900 () Bool)

(assert (=> d!2179007 (= c!1297900 e!4204754)))

(declare-fun res!2853749 () Bool)

(assert (=> d!2179007 (=> (not res!2853749) (not e!4204754))))

(assert (=> d!2179007 (= res!2853749 (is-Cons!67195 (exprs!6754 lt!2493007)))))

(assert (=> d!2179007 (= (derivationStepZipperUp!1908 lt!2493007 (h!73644 s!7408)) e!4204756)))

(declare-fun bm!634951 () Bool)

(assert (=> bm!634951 (= call!634956 (derivationStepZipperDown!1976 (h!73643 (exprs!6754 lt!2493007)) (Context!12509 (t!381066 (exprs!6754 lt!2493007))) (h!73644 s!7408)))))

(assert (= (and d!2179007 res!2853749) b!6995427))

(assert (= (and d!2179007 c!1297900) b!6995429))

(assert (= (and d!2179007 (not c!1297900)) b!6995430))

(assert (= (and b!6995430 c!1297901) b!6995431))

(assert (= (and b!6995430 (not c!1297901)) b!6995428))

(assert (= (or b!6995429 b!6995431) bm!634951))

(declare-fun m!7686750 () Bool)

(assert (=> b!6995427 m!7686750))

(declare-fun m!7686752 () Bool)

(assert (=> b!6995429 m!7686752))

(declare-fun m!7686754 () Bool)

(assert (=> bm!634951 m!7686754))

(assert (=> b!6995247 d!2179007))

(declare-fun call!634974 () List!67319)

(declare-fun c!1297915 () Bool)

(declare-fun c!1297912 () Bool)

(declare-fun bm!634964 () Bool)

(declare-fun $colon$colon!2497 (List!67319 Regex!17258) List!67319)

(assert (=> bm!634964 (= call!634974 ($colon$colon!2497 (exprs!6754 lt!2493007) (ite (or c!1297915 c!1297912) (regTwo!35028 (h!73643 (exprs!6754 lt!2493029))) (h!73643 (exprs!6754 lt!2493029)))))))

(declare-fun bm!634965 () Bool)

(declare-fun c!1297913 () Bool)

(declare-fun call!634972 () (Set Context!12508))

(assert (=> bm!634965 (= call!634972 (derivationStepZipperDown!1976 (ite c!1297913 (regOne!35029 (h!73643 (exprs!6754 lt!2493029))) (regOne!35028 (h!73643 (exprs!6754 lt!2493029)))) (ite c!1297913 lt!2493007 (Context!12509 call!634974)) (h!73644 s!7408)))))

(declare-fun b!6995454 () Bool)

(declare-fun e!4204772 () (Set Context!12508))

(declare-fun call!634973 () (Set Context!12508))

(assert (=> b!6995454 (= e!4204772 (set.union call!634972 call!634973))))

(declare-fun b!6995455 () Bool)

(declare-fun e!4204769 () (Set Context!12508))

(declare-fun call!634970 () (Set Context!12508))

(assert (=> b!6995455 (= e!4204769 (set.union call!634972 call!634970))))

(declare-fun b!6995456 () Bool)

(declare-fun e!4204771 () (Set Context!12508))

(declare-fun call!634969 () (Set Context!12508))

(assert (=> b!6995456 (= e!4204771 call!634969)))

(declare-fun b!6995457 () Bool)

(declare-fun e!4204770 () (Set Context!12508))

(assert (=> b!6995457 (= e!4204769 e!4204770)))

(assert (=> b!6995457 (= c!1297912 (is-Concat!26103 (h!73643 (exprs!6754 lt!2493029))))))

(declare-fun bm!634966 () Bool)

(declare-fun call!634971 () List!67319)

(assert (=> bm!634966 (= call!634971 call!634974)))

(declare-fun d!2179009 () Bool)

(declare-fun c!1297916 () Bool)

(assert (=> d!2179009 (= c!1297916 (and (is-ElementMatch!17258 (h!73643 (exprs!6754 lt!2493029))) (= (c!1297859 (h!73643 (exprs!6754 lt!2493029))) (h!73644 s!7408))))))

(declare-fun e!4204774 () (Set Context!12508))

(assert (=> d!2179009 (= (derivationStepZipperDown!1976 (h!73643 (exprs!6754 lt!2493029)) lt!2493007 (h!73644 s!7408)) e!4204774)))

(declare-fun b!6995458 () Bool)

(declare-fun e!4204773 () Bool)

(assert (=> b!6995458 (= c!1297915 e!4204773)))

(declare-fun res!2853752 () Bool)

(assert (=> b!6995458 (=> (not res!2853752) (not e!4204773))))

(assert (=> b!6995458 (= res!2853752 (is-Concat!26103 (h!73643 (exprs!6754 lt!2493029))))))

(assert (=> b!6995458 (= e!4204772 e!4204769)))

(declare-fun b!6995459 () Bool)

(assert (=> b!6995459 (= e!4204773 (nullable!7018 (regOne!35028 (h!73643 (exprs!6754 lt!2493029)))))))

(declare-fun b!6995460 () Bool)

(declare-fun c!1297914 () Bool)

(assert (=> b!6995460 (= c!1297914 (is-Star!17258 (h!73643 (exprs!6754 lt!2493029))))))

(assert (=> b!6995460 (= e!4204770 e!4204771)))

(declare-fun b!6995461 () Bool)

(assert (=> b!6995461 (= e!4204774 (set.insert lt!2493007 (as set.empty (Set Context!12508))))))

(declare-fun bm!634967 () Bool)

(assert (=> bm!634967 (= call!634969 call!634970)))

(declare-fun b!6995462 () Bool)

(assert (=> b!6995462 (= e!4204774 e!4204772)))

(assert (=> b!6995462 (= c!1297913 (is-Union!17258 (h!73643 (exprs!6754 lt!2493029))))))

(declare-fun bm!634968 () Bool)

(assert (=> bm!634968 (= call!634973 (derivationStepZipperDown!1976 (ite c!1297913 (regTwo!35029 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297915 (regTwo!35028 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297912 (regOne!35028 (h!73643 (exprs!6754 lt!2493029))) (reg!17587 (h!73643 (exprs!6754 lt!2493029)))))) (ite (or c!1297913 c!1297915) lt!2493007 (Context!12509 call!634971)) (h!73644 s!7408)))))

(declare-fun b!6995463 () Bool)

(assert (=> b!6995463 (= e!4204771 (as set.empty (Set Context!12508)))))

(declare-fun b!6995464 () Bool)

(assert (=> b!6995464 (= e!4204770 call!634969)))

(declare-fun bm!634969 () Bool)

(assert (=> bm!634969 (= call!634970 call!634973)))

(assert (= (and d!2179009 c!1297916) b!6995461))

(assert (= (and d!2179009 (not c!1297916)) b!6995462))

(assert (= (and b!6995462 c!1297913) b!6995454))

(assert (= (and b!6995462 (not c!1297913)) b!6995458))

(assert (= (and b!6995458 res!2853752) b!6995459))

(assert (= (and b!6995458 c!1297915) b!6995455))

(assert (= (and b!6995458 (not c!1297915)) b!6995457))

(assert (= (and b!6995457 c!1297912) b!6995464))

(assert (= (and b!6995457 (not c!1297912)) b!6995460))

(assert (= (and b!6995460 c!1297914) b!6995456))

(assert (= (and b!6995460 (not c!1297914)) b!6995463))

(assert (= (or b!6995464 b!6995456) bm!634966))

(assert (= (or b!6995464 b!6995456) bm!634967))

(assert (= (or b!6995455 bm!634967) bm!634969))

(assert (= (or b!6995455 bm!634966) bm!634964))

(assert (= (or b!6995454 b!6995455) bm!634965))

(assert (= (or b!6995454 bm!634969) bm!634968))

(declare-fun m!7686756 () Bool)

(assert (=> bm!634964 m!7686756))

(assert (=> b!6995461 m!7686536))

(declare-fun m!7686758 () Bool)

(assert (=> b!6995459 m!7686758))

(declare-fun m!7686760 () Bool)

(assert (=> bm!634965 m!7686760))

(declare-fun m!7686762 () Bool)

(assert (=> bm!634968 m!7686762))

(assert (=> b!6995247 d!2179009))

(assert (=> b!6995256 d!2178985))

(assert (=> b!6995256 d!2178987))

(declare-fun d!2179011 () Bool)

(assert (=> d!2179011 (= (isEmpty!39220 (exprs!6754 lt!2493029)) (is-Nil!67195 (exprs!6754 lt!2493029)))))

(assert (=> b!6995236 d!2179011))

(declare-fun d!2179013 () Bool)

(assert (=> d!2179013 (= (flatMap!2244 lt!2493015 lambda!404244) (dynLambda!26962 lambda!404244 lt!2493007))))

(declare-fun lt!2493209 () Unit!161171)

(assert (=> d!2179013 (= lt!2493209 (choose!52385 lt!2493015 lt!2493007 lambda!404244))))

(assert (=> d!2179013 (= lt!2493015 (set.insert lt!2493007 (as set.empty (Set Context!12508))))))

(assert (=> d!2179013 (= (lemmaFlatMapOnSingletonSet!1759 lt!2493015 lt!2493007 lambda!404244) lt!2493209)))

(declare-fun b_lambda!263061 () Bool)

(assert (=> (not b_lambda!263061) (not d!2179013)))

(declare-fun bs!1862890 () Bool)

(assert (= bs!1862890 d!2179013))

(assert (=> bs!1862890 m!7686542))

(declare-fun m!7686764 () Bool)

(assert (=> bs!1862890 m!7686764))

(declare-fun m!7686766 () Bool)

(assert (=> bs!1862890 m!7686766))

(assert (=> bs!1862890 m!7686536))

(assert (=> b!6995246 d!2179013))

(declare-fun bs!1862891 () Bool)

(declare-fun d!2179015 () Bool)

(assert (= bs!1862891 (and d!2179015 b!6995234)))

(declare-fun lambda!404310 () Int)

(assert (=> bs!1862891 (= lambda!404310 lambda!404244)))

(declare-fun bs!1862892 () Bool)

(assert (= bs!1862892 (and d!2179015 d!2178997)))

(assert (=> bs!1862892 (= lambda!404310 lambda!404309)))

(assert (=> d!2179015 true))

(assert (=> d!2179015 (= (derivationStepZipper!2738 lt!2493015 (h!73644 s!7408)) (flatMap!2244 lt!2493015 lambda!404310))))

(declare-fun bs!1862893 () Bool)

(assert (= bs!1862893 d!2179015))

(declare-fun m!7686768 () Bool)

(assert (=> bs!1862893 m!7686768))

(assert (=> b!6995246 d!2179015))

(declare-fun d!2179017 () Bool)

(assert (=> d!2179017 (= (flatMap!2244 lt!2493015 lambda!404244) (choose!52384 lt!2493015 lambda!404244))))

(declare-fun bs!1862894 () Bool)

(assert (= bs!1862894 d!2179017))

(declare-fun m!7686770 () Bool)

(assert (=> bs!1862894 m!7686770))

(assert (=> b!6995246 d!2179017))

(assert (=> b!6995246 d!2178987))

(assert (=> b!6995246 d!2179007))

(declare-fun d!2179019 () Bool)

(declare-fun e!4204777 () Bool)

(assert (=> d!2179019 e!4204777))

(declare-fun res!2853755 () Bool)

(assert (=> d!2179019 (=> (not res!2853755) (not e!4204777))))

(declare-fun lt!2493212 () List!67321)

(declare-fun noDuplicate!2535 (List!67321) Bool)

(assert (=> d!2179019 (= res!2853755 (noDuplicate!2535 lt!2493212))))

(declare-fun choose!52386 ((Set Context!12508)) List!67321)

(assert (=> d!2179019 (= lt!2493212 (choose!52386 lt!2492981))))

(assert (=> d!2179019 (= (toList!10618 lt!2492981) lt!2493212)))

(declare-fun b!6995467 () Bool)

(declare-fun content!13291 (List!67321) (Set Context!12508))

(assert (=> b!6995467 (= e!4204777 (= (content!13291 lt!2493212) lt!2492981))))

(assert (= (and d!2179019 res!2853755) b!6995467))

(declare-fun m!7686772 () Bool)

(assert (=> d!2179019 m!7686772))

(declare-fun m!7686774 () Bool)

(assert (=> d!2179019 m!7686774))

(declare-fun m!7686776 () Bool)

(assert (=> b!6995467 m!7686776))

(assert (=> b!6995245 d!2179019))

(declare-fun d!2179021 () Bool)

(declare-fun e!4204780 () Bool)

(assert (=> d!2179021 e!4204780))

(declare-fun res!2853758 () Bool)

(assert (=> d!2179021 (=> (not res!2853758) (not e!4204780))))

(declare-fun lt!2493215 () Context!12508)

(declare-fun dynLambda!26963 (Int Context!12508) Bool)

(assert (=> d!2179021 (= res!2853758 (dynLambda!26963 lambda!404241 lt!2493215))))

(declare-fun getWitness!1171 (List!67321 Int) Context!12508)

(assert (=> d!2179021 (= lt!2493215 (getWitness!1171 (toList!10618 lt!2492981) lambda!404241))))

(declare-fun exists!3067 ((Set Context!12508) Int) Bool)

(assert (=> d!2179021 (exists!3067 lt!2492981 lambda!404241)))

(assert (=> d!2179021 (= (getWitness!1169 lt!2492981 lambda!404241) lt!2493215)))

(declare-fun b!6995470 () Bool)

(assert (=> b!6995470 (= e!4204780 (set.member lt!2493215 lt!2492981))))

(assert (= (and d!2179021 res!2853758) b!6995470))

(declare-fun b_lambda!263063 () Bool)

(assert (=> (not b_lambda!263063) (not d!2179021)))

(declare-fun m!7686778 () Bool)

(assert (=> d!2179021 m!7686778))

(assert (=> d!2179021 m!7686498))

(assert (=> d!2179021 m!7686498))

(declare-fun m!7686780 () Bool)

(assert (=> d!2179021 m!7686780))

(declare-fun m!7686782 () Bool)

(assert (=> d!2179021 m!7686782))

(declare-fun m!7686784 () Bool)

(assert (=> b!6995470 m!7686784))

(assert (=> b!6995245 d!2179021))

(declare-fun d!2179023 () Bool)

(declare-fun c!1297917 () Bool)

(assert (=> d!2179023 (= c!1297917 (isEmpty!39219 s!7408))))

(declare-fun e!4204781 () Bool)

(assert (=> d!2179023 (= (matchZipper!2798 lt!2493016 s!7408) e!4204781)))

(declare-fun b!6995471 () Bool)

(assert (=> b!6995471 (= e!4204781 (nullableZipper!2453 lt!2493016))))

(declare-fun b!6995472 () Bool)

(assert (=> b!6995472 (= e!4204781 (matchZipper!2798 (derivationStepZipper!2738 lt!2493016 (head!14128 s!7408)) (tail!13286 s!7408)))))

(assert (= (and d!2179023 c!1297917) b!6995471))

(assert (= (and d!2179023 (not c!1297917)) b!6995472))

(declare-fun m!7686786 () Bool)

(assert (=> d!2179023 m!7686786))

(declare-fun m!7686788 () Bool)

(assert (=> b!6995471 m!7686788))

(declare-fun m!7686790 () Bool)

(assert (=> b!6995472 m!7686790))

(assert (=> b!6995472 m!7686790))

(declare-fun m!7686792 () Bool)

(assert (=> b!6995472 m!7686792))

(declare-fun m!7686794 () Bool)

(assert (=> b!6995472 m!7686794))

(assert (=> b!6995472 m!7686792))

(assert (=> b!6995472 m!7686794))

(declare-fun m!7686796 () Bool)

(assert (=> b!6995472 m!7686796))

(assert (=> b!6995245 d!2179023))

(declare-fun bs!1862895 () Bool)

(declare-fun d!2179025 () Bool)

(assert (= bs!1862895 (and d!2179025 b!6995245)))

(declare-fun lambda!404313 () Int)

(assert (=> bs!1862895 (= lambda!404313 lambda!404241)))

(assert (=> d!2179025 true))

(assert (=> d!2179025 (exists!3065 lt!2493013 lambda!404313)))

(declare-fun lt!2493218 () Unit!161171)

(declare-fun choose!52387 (List!67321 List!67320) Unit!161171)

(assert (=> d!2179025 (= lt!2493218 (choose!52387 lt!2493013 s!7408))))

(assert (=> d!2179025 (matchZipper!2798 (content!13291 lt!2493013) s!7408)))

(assert (=> d!2179025 (= (lemmaZipperMatchesExistsMatchingContext!227 lt!2493013 s!7408) lt!2493218)))

(declare-fun bs!1862896 () Bool)

(assert (= bs!1862896 d!2179025))

(declare-fun m!7686798 () Bool)

(assert (=> bs!1862896 m!7686798))

(declare-fun m!7686800 () Bool)

(assert (=> bs!1862896 m!7686800))

(declare-fun m!7686802 () Bool)

(assert (=> bs!1862896 m!7686802))

(assert (=> bs!1862896 m!7686802))

(declare-fun m!7686804 () Bool)

(assert (=> bs!1862896 m!7686804))

(assert (=> b!6995245 d!2179025))

(declare-fun bs!1862897 () Bool)

(declare-fun d!2179027 () Bool)

(assert (= bs!1862897 (and d!2179027 b!6995245)))

(declare-fun lambda!404316 () Int)

(assert (=> bs!1862897 (not (= lambda!404316 lambda!404241))))

(declare-fun bs!1862898 () Bool)

(assert (= bs!1862898 (and d!2179027 d!2179025)))

(assert (=> bs!1862898 (not (= lambda!404316 lambda!404313))))

(assert (=> d!2179027 true))

(declare-fun order!27957 () Int)

(declare-fun dynLambda!26964 (Int Int) Int)

(assert (=> d!2179027 (< (dynLambda!26964 order!27957 lambda!404241) (dynLambda!26964 order!27957 lambda!404316))))

(declare-fun forall!16167 (List!67321 Int) Bool)

(assert (=> d!2179027 (= (exists!3065 lt!2493013 lambda!404241) (not (forall!16167 lt!2493013 lambda!404316)))))

(declare-fun bs!1862899 () Bool)

(assert (= bs!1862899 d!2179027))

(declare-fun m!7686806 () Bool)

(assert (=> bs!1862899 m!7686806))

(assert (=> b!6995245 d!2179027))

(declare-fun bs!1862900 () Bool)

(declare-fun d!2179029 () Bool)

(assert (= bs!1862900 (and d!2179029 b!6995229)))

(declare-fun lambda!404319 () Int)

(assert (=> bs!1862900 (= lambda!404319 lambda!404243)))

(assert (=> d!2179029 (= (inv!86005 setElem!47982) (forall!16166 (exprs!6754 setElem!47982) lambda!404319))))

(declare-fun bs!1862901 () Bool)

(assert (= bs!1862901 d!2179029))

(declare-fun m!7686808 () Bool)

(assert (=> bs!1862901 m!7686808))

(assert (=> setNonEmpty!47982 d!2179029))

(assert (=> b!6995250 d!2178985))

(declare-fun e!4204784 () Bool)

(declare-fun d!2179031 () Bool)

(assert (=> d!2179031 (= (matchZipper!2798 (set.union lt!2492985 lt!2492996) (t!381067 s!7408)) e!4204784)))

(declare-fun res!2853761 () Bool)

(assert (=> d!2179031 (=> res!2853761 e!4204784)))

(assert (=> d!2179031 (= res!2853761 (matchZipper!2798 lt!2492985 (t!381067 s!7408)))))

(declare-fun lt!2493221 () Unit!161171)

(declare-fun choose!52388 ((Set Context!12508) (Set Context!12508) List!67320) Unit!161171)

(assert (=> d!2179031 (= lt!2493221 (choose!52388 lt!2492985 lt!2492996 (t!381067 s!7408)))))

(assert (=> d!2179031 (= (lemmaZipperConcatMatchesSameAsBothZippers!1431 lt!2492985 lt!2492996 (t!381067 s!7408)) lt!2493221)))

(declare-fun b!6995477 () Bool)

(assert (=> b!6995477 (= e!4204784 (matchZipper!2798 lt!2492996 (t!381067 s!7408)))))

(assert (= (and d!2179031 (not res!2853761)) b!6995477))

(declare-fun m!7686810 () Bool)

(assert (=> d!2179031 m!7686810))

(assert (=> d!2179031 m!7686526))

(declare-fun m!7686812 () Bool)

(assert (=> d!2179031 m!7686812))

(assert (=> b!6995477 m!7686422))

(assert (=> b!6995249 d!2179031))

(declare-fun d!2179033 () Bool)

(declare-fun c!1297920 () Bool)

(assert (=> d!2179033 (= c!1297920 (isEmpty!39219 (t!381067 s!7408)))))

(declare-fun e!4204785 () Bool)

(assert (=> d!2179033 (= (matchZipper!2798 lt!2492988 (t!381067 s!7408)) e!4204785)))

(declare-fun b!6995478 () Bool)

(assert (=> b!6995478 (= e!4204785 (nullableZipper!2453 lt!2492988))))

(declare-fun b!6995479 () Bool)

(assert (=> b!6995479 (= e!4204785 (matchZipper!2798 (derivationStepZipper!2738 lt!2492988 (head!14128 (t!381067 s!7408))) (tail!13286 (t!381067 s!7408))))))

(assert (= (and d!2179033 c!1297920) b!6995478))

(assert (= (and d!2179033 (not c!1297920)) b!6995479))

(assert (=> d!2179033 m!7686682))

(declare-fun m!7686814 () Bool)

(assert (=> b!6995478 m!7686814))

(assert (=> b!6995479 m!7686686))

(assert (=> b!6995479 m!7686686))

(declare-fun m!7686816 () Bool)

(assert (=> b!6995479 m!7686816))

(assert (=> b!6995479 m!7686690))

(assert (=> b!6995479 m!7686816))

(assert (=> b!6995479 m!7686690))

(declare-fun m!7686818 () Bool)

(assert (=> b!6995479 m!7686818))

(assert (=> b!6995249 d!2179033))

(declare-fun d!2179035 () Bool)

(declare-fun c!1297921 () Bool)

(assert (=> d!2179035 (= c!1297921 (isEmpty!39219 (t!381067 s!7408)))))

(declare-fun e!4204786 () Bool)

(assert (=> d!2179035 (= (matchZipper!2798 lt!2493004 (t!381067 s!7408)) e!4204786)))

(declare-fun b!6995480 () Bool)

(assert (=> b!6995480 (= e!4204786 (nullableZipper!2453 lt!2493004))))

(declare-fun b!6995481 () Bool)

(assert (=> b!6995481 (= e!4204786 (matchZipper!2798 (derivationStepZipper!2738 lt!2493004 (head!14128 (t!381067 s!7408))) (tail!13286 (t!381067 s!7408))))))

(assert (= (and d!2179035 c!1297921) b!6995480))

(assert (= (and d!2179035 (not c!1297921)) b!6995481))

(assert (=> d!2179035 m!7686682))

(declare-fun m!7686820 () Bool)

(assert (=> b!6995480 m!7686820))

(assert (=> b!6995481 m!7686686))

(assert (=> b!6995481 m!7686686))

(declare-fun m!7686822 () Bool)

(assert (=> b!6995481 m!7686822))

(assert (=> b!6995481 m!7686690))

(assert (=> b!6995481 m!7686822))

(assert (=> b!6995481 m!7686690))

(declare-fun m!7686824 () Bool)

(assert (=> b!6995481 m!7686824))

(assert (=> b!6995249 d!2179035))

(declare-fun d!2179037 () Bool)

(declare-fun c!1297922 () Bool)

(assert (=> d!2179037 (= c!1297922 (isEmpty!39219 (t!381067 s!7408)))))

(declare-fun e!4204787 () Bool)

(assert (=> d!2179037 (= (matchZipper!2798 lt!2492985 (t!381067 s!7408)) e!4204787)))

(declare-fun b!6995482 () Bool)

(assert (=> b!6995482 (= e!4204787 (nullableZipper!2453 lt!2492985))))

(declare-fun b!6995483 () Bool)

(assert (=> b!6995483 (= e!4204787 (matchZipper!2798 (derivationStepZipper!2738 lt!2492985 (head!14128 (t!381067 s!7408))) (tail!13286 (t!381067 s!7408))))))

(assert (= (and d!2179037 c!1297922) b!6995482))

(assert (= (and d!2179037 (not c!1297922)) b!6995483))

(assert (=> d!2179037 m!7686682))

(declare-fun m!7686826 () Bool)

(assert (=> b!6995482 m!7686826))

(assert (=> b!6995483 m!7686686))

(assert (=> b!6995483 m!7686686))

(declare-fun m!7686828 () Bool)

(assert (=> b!6995483 m!7686828))

(assert (=> b!6995483 m!7686690))

(assert (=> b!6995483 m!7686828))

(assert (=> b!6995483 m!7686690))

(declare-fun m!7686830 () Bool)

(assert (=> b!6995483 m!7686830))

(assert (=> b!6995249 d!2179037))

(assert (=> b!6995249 d!2178987))

(declare-fun b!6995484 () Bool)

(declare-fun e!4204789 () List!67319)

(assert (=> b!6995484 (= e!4204789 (exprs!6754 ct2!306))))

(declare-fun b!6995485 () Bool)

(assert (=> b!6995485 (= e!4204789 (Cons!67195 (h!73643 (exprs!6754 lt!2493029)) (++!15217 (t!381066 (exprs!6754 lt!2493029)) (exprs!6754 ct2!306))))))

(declare-fun lt!2493222 () List!67319)

(declare-fun b!6995487 () Bool)

(declare-fun e!4204788 () Bool)

(assert (=> b!6995487 (= e!4204788 (or (not (= (exprs!6754 ct2!306) Nil!67195)) (= lt!2493222 (exprs!6754 lt!2493029))))))

(declare-fun b!6995486 () Bool)

(declare-fun res!2853763 () Bool)

(assert (=> b!6995486 (=> (not res!2853763) (not e!4204788))))

(assert (=> b!6995486 (= res!2853763 (= (size!40923 lt!2493222) (+ (size!40923 (exprs!6754 lt!2493029)) (size!40923 (exprs!6754 ct2!306)))))))

(declare-fun d!2179039 () Bool)

(assert (=> d!2179039 e!4204788))

(declare-fun res!2853762 () Bool)

(assert (=> d!2179039 (=> (not res!2853762) (not e!4204788))))

(assert (=> d!2179039 (= res!2853762 (= (content!13290 lt!2493222) (set.union (content!13290 (exprs!6754 lt!2493029)) (content!13290 (exprs!6754 ct2!306)))))))

(assert (=> d!2179039 (= lt!2493222 e!4204789)))

(declare-fun c!1297923 () Bool)

(assert (=> d!2179039 (= c!1297923 (is-Nil!67195 (exprs!6754 lt!2493029)))))

(assert (=> d!2179039 (= (++!15217 (exprs!6754 lt!2493029) (exprs!6754 ct2!306)) lt!2493222)))

(assert (= (and d!2179039 c!1297923) b!6995484))

(assert (= (and d!2179039 (not c!1297923)) b!6995485))

(assert (= (and d!2179039 res!2853762) b!6995486))

(assert (= (and b!6995486 res!2853763) b!6995487))

(declare-fun m!7686832 () Bool)

(assert (=> b!6995485 m!7686832))

(declare-fun m!7686834 () Bool)

(assert (=> b!6995486 m!7686834))

(declare-fun m!7686836 () Bool)

(assert (=> b!6995486 m!7686836))

(assert (=> b!6995486 m!7686742))

(declare-fun m!7686838 () Bool)

(assert (=> d!2179039 m!7686838))

(declare-fun m!7686840 () Bool)

(assert (=> d!2179039 m!7686840))

(assert (=> d!2179039 m!7686748))

(assert (=> b!6995229 d!2179039))

(assert (=> b!6995229 d!2178995))

(declare-fun d!2179041 () Bool)

(declare-fun e!4204792 () Bool)

(assert (=> d!2179041 e!4204792))

(declare-fun res!2853766 () Bool)

(assert (=> d!2179041 (=> (not res!2853766) (not e!4204792))))

(declare-fun lt!2493225 () Context!12508)

(declare-fun dynLambda!26965 (Int Context!12508) Context!12508)

(assert (=> d!2179041 (= res!2853766 (= lt!2492983 (dynLambda!26965 lambda!404242 lt!2493225)))))

(declare-fun choose!52390 ((Set Context!12508) Int Context!12508) Context!12508)

(assert (=> d!2179041 (= lt!2493225 (choose!52390 z1!570 lambda!404242 lt!2492983))))

(assert (=> d!2179041 (set.member lt!2492983 (map!15534 z1!570 lambda!404242))))

(assert (=> d!2179041 (= (mapPost2!113 z1!570 lambda!404242 lt!2492983) lt!2493225)))

(declare-fun b!6995491 () Bool)

(assert (=> b!6995491 (= e!4204792 (set.member lt!2493225 z1!570))))

(assert (= (and d!2179041 res!2853766) b!6995491))

(declare-fun b_lambda!263065 () Bool)

(assert (=> (not b_lambda!263065) (not d!2179041)))

(declare-fun m!7686842 () Bool)

(assert (=> d!2179041 m!7686842))

(declare-fun m!7686844 () Bool)

(assert (=> d!2179041 m!7686844))

(declare-fun m!7686846 () Bool)

(assert (=> d!2179041 m!7686846))

(declare-fun m!7686848 () Bool)

(assert (=> d!2179041 m!7686848))

(declare-fun m!7686850 () Bool)

(assert (=> b!6995491 m!7686850))

(assert (=> b!6995229 d!2179041))

(assert (=> b!6995239 d!2178995))

(declare-fun d!2179043 () Bool)

(assert (=> d!2179043 (<= (contextDepthTotal!451 lt!2493029) (zipperDepthTotal!479 lt!2492995))))

(declare-fun lt!2493228 () Unit!161171)

(declare-fun choose!52391 (List!67321 Context!12508) Unit!161171)

(assert (=> d!2179043 (= lt!2493228 (choose!52391 lt!2492995 lt!2493029))))

(declare-fun contains!20416 (List!67321 Context!12508) Bool)

(assert (=> d!2179043 (contains!20416 lt!2492995 lt!2493029)))

(assert (=> d!2179043 (= (lemmaTotalDepthZipperLargerThanOfAnyContext!19 lt!2492995 lt!2493029) lt!2493228)))

(declare-fun bs!1862902 () Bool)

(assert (= bs!1862902 d!2179043))

(assert (=> bs!1862902 m!7686472))

(assert (=> bs!1862902 m!7686468))

(declare-fun m!7686852 () Bool)

(assert (=> bs!1862902 m!7686852))

(declare-fun m!7686854 () Bool)

(assert (=> bs!1862902 m!7686854))

(assert (=> b!6995238 d!2179043))

(declare-fun d!2179045 () Bool)

(declare-fun e!4204793 () Bool)

(assert (=> d!2179045 e!4204793))

(declare-fun res!2853767 () Bool)

(assert (=> d!2179045 (=> (not res!2853767) (not e!4204793))))

(declare-fun lt!2493229 () List!67321)

(assert (=> d!2179045 (= res!2853767 (noDuplicate!2535 lt!2493229))))

(assert (=> d!2179045 (= lt!2493229 (choose!52386 z1!570))))

(assert (=> d!2179045 (= (toList!10618 z1!570) lt!2493229)))

(declare-fun b!6995492 () Bool)

(assert (=> b!6995492 (= e!4204793 (= (content!13291 lt!2493229) z1!570))))

(assert (= (and d!2179045 res!2853767) b!6995492))

(declare-fun m!7686856 () Bool)

(assert (=> d!2179045 m!7686856))

(declare-fun m!7686858 () Bool)

(assert (=> d!2179045 m!7686858))

(declare-fun m!7686860 () Bool)

(assert (=> b!6995492 m!7686860))

(assert (=> b!6995238 d!2179045))

(declare-fun d!2179047 () Bool)

(declare-fun choose!52392 ((Set Context!12508) Int) (Set Context!12508))

(assert (=> d!2179047 (= (map!15534 lt!2493018 lambda!404242) (choose!52392 lt!2493018 lambda!404242))))

(declare-fun bs!1862903 () Bool)

(assert (= bs!1862903 d!2179047))

(declare-fun m!7686862 () Bool)

(assert (=> bs!1862903 m!7686862))

(assert (=> b!6995238 d!2179047))

(declare-fun d!2179049 () Bool)

(assert (=> d!2179049 (= (flatMap!2244 lt!2493018 lambda!404244) (choose!52384 lt!2493018 lambda!404244))))

(declare-fun bs!1862904 () Bool)

(assert (= bs!1862904 d!2179049))

(declare-fun m!7686864 () Bool)

(assert (=> bs!1862904 m!7686864))

(assert (=> b!6995238 d!2179049))

(declare-fun d!2179051 () Bool)

(assert (=> d!2179051 (= (flatMap!2244 lt!2493018 lambda!404244) (dynLambda!26962 lambda!404244 lt!2492984))))

(declare-fun lt!2493230 () Unit!161171)

(assert (=> d!2179051 (= lt!2493230 (choose!52385 lt!2493018 lt!2492984 lambda!404244))))

(assert (=> d!2179051 (= lt!2493018 (set.insert lt!2492984 (as set.empty (Set Context!12508))))))

(assert (=> d!2179051 (= (lemmaFlatMapOnSingletonSet!1759 lt!2493018 lt!2492984 lambda!404244) lt!2493230)))

(declare-fun b_lambda!263067 () Bool)

(assert (=> (not b_lambda!263067) (not d!2179051)))

(declare-fun bs!1862905 () Bool)

(assert (= bs!1862905 d!2179051))

(assert (=> bs!1862905 m!7686460))

(declare-fun m!7686866 () Bool)

(assert (=> bs!1862905 m!7686866))

(declare-fun m!7686868 () Bool)

(assert (=> bs!1862905 m!7686868))

(assert (=> bs!1862905 m!7686470))

(assert (=> b!6995238 d!2179051))

(assert (=> b!6995238 d!2178987))

(declare-fun d!2179053 () Bool)

(declare-fun lt!2493233 () Int)

(assert (=> d!2179053 (>= lt!2493233 0)))

(declare-fun e!4204796 () Int)

(assert (=> d!2179053 (= lt!2493233 e!4204796)))

(declare-fun c!1297928 () Bool)

(assert (=> d!2179053 (= c!1297928 (is-Cons!67195 (exprs!6754 lt!2492984)))))

(assert (=> d!2179053 (= (contextDepthTotal!451 lt!2492984) lt!2493233)))

(declare-fun b!6995497 () Bool)

(declare-fun regexDepthTotal!274 (Regex!17258) Int)

(assert (=> b!6995497 (= e!4204796 (+ (regexDepthTotal!274 (h!73643 (exprs!6754 lt!2492984))) (contextDepthTotal!451 (Context!12509 (t!381066 (exprs!6754 lt!2492984))))))))

(declare-fun b!6995498 () Bool)

(assert (=> b!6995498 (= e!4204796 1)))

(assert (= (and d!2179053 c!1297928) b!6995497))

(assert (= (and d!2179053 (not c!1297928)) b!6995498))

(declare-fun m!7686870 () Bool)

(assert (=> b!6995497 m!7686870))

(declare-fun m!7686872 () Bool)

(assert (=> b!6995497 m!7686872))

(assert (=> b!6995238 d!2179053))

(declare-fun d!2179055 () Bool)

(declare-fun lt!2493236 () Int)

(assert (=> d!2179055 (>= lt!2493236 0)))

(declare-fun e!4204799 () Int)

(assert (=> d!2179055 (= lt!2493236 e!4204799)))

(declare-fun c!1297931 () Bool)

(assert (=> d!2179055 (= c!1297931 (is-Cons!67197 lt!2492995))))

(assert (=> d!2179055 (= (zipperDepthTotal!479 lt!2492995) lt!2493236)))

(declare-fun b!6995503 () Bool)

(assert (=> b!6995503 (= e!4204799 (+ (contextDepthTotal!451 (h!73645 lt!2492995)) (zipperDepthTotal!479 (t!381068 lt!2492995))))))

(declare-fun b!6995504 () Bool)

(assert (=> b!6995504 (= e!4204799 0)))

(assert (= (and d!2179055 c!1297931) b!6995503))

(assert (= (and d!2179055 (not c!1297931)) b!6995504))

(declare-fun m!7686874 () Bool)

(assert (=> b!6995503 m!7686874))

(declare-fun m!7686876 () Bool)

(assert (=> b!6995503 m!7686876))

(assert (=> b!6995238 d!2179055))

(assert (=> b!6995238 d!2179005))

(declare-fun d!2179057 () Bool)

(assert (=> d!2179057 (= (map!15534 lt!2493018 lambda!404242) (set.insert (dynLambda!26965 lambda!404242 lt!2492984) (as set.empty (Set Context!12508))))))

(declare-fun lt!2493239 () Unit!161171)

(declare-fun choose!52395 ((Set Context!12508) Context!12508 Int) Unit!161171)

(assert (=> d!2179057 (= lt!2493239 (choose!52395 lt!2493018 lt!2492984 lambda!404242))))

(assert (=> d!2179057 (= lt!2493018 (set.insert lt!2492984 (as set.empty (Set Context!12508))))))

(assert (=> d!2179057 (= (lemmaMapOnSingletonSet!323 lt!2493018 lt!2492984 lambda!404242) lt!2493239)))

(declare-fun b_lambda!263069 () Bool)

(assert (=> (not b_lambda!263069) (not d!2179057)))

(declare-fun bs!1862906 () Bool)

(assert (= bs!1862906 d!2179057))

(declare-fun m!7686878 () Bool)

(assert (=> bs!1862906 m!7686878))

(declare-fun m!7686880 () Bool)

(assert (=> bs!1862906 m!7686880))

(assert (=> bs!1862906 m!7686458))

(assert (=> bs!1862906 m!7686878))

(assert (=> bs!1862906 m!7686470))

(declare-fun m!7686882 () Bool)

(assert (=> bs!1862906 m!7686882))

(assert (=> b!6995238 d!2179057))

(declare-fun d!2179061 () Bool)

(declare-fun lt!2493242 () Int)

(assert (=> d!2179061 (>= lt!2493242 0)))

(declare-fun e!4204800 () Int)

(assert (=> d!2179061 (= lt!2493242 e!4204800)))

(declare-fun c!1297932 () Bool)

(assert (=> d!2179061 (= c!1297932 (is-Cons!67195 (exprs!6754 lt!2493029)))))

(assert (=> d!2179061 (= (contextDepthTotal!451 lt!2493029) lt!2493242)))

(declare-fun b!6995505 () Bool)

(assert (=> b!6995505 (= e!4204800 (+ (regexDepthTotal!274 (h!73643 (exprs!6754 lt!2493029))) (contextDepthTotal!451 (Context!12509 (t!381066 (exprs!6754 lt!2493029))))))))

(declare-fun b!6995506 () Bool)

(assert (=> b!6995506 (= e!4204800 1)))

(assert (= (and d!2179061 c!1297932) b!6995505))

(assert (= (and d!2179061 (not c!1297932)) b!6995506))

(declare-fun m!7686884 () Bool)

(assert (=> b!6995505 m!7686884))

(declare-fun m!7686886 () Bool)

(assert (=> b!6995505 m!7686886))

(assert (=> b!6995238 d!2179061))

(declare-fun b!6995507 () Bool)

(declare-fun e!4204801 () Bool)

(assert (=> b!6995507 (= e!4204801 (nullable!7018 (h!73643 (exprs!6754 lt!2492984))))))

(declare-fun b!6995508 () Bool)

(declare-fun e!4204802 () (Set Context!12508))

(assert (=> b!6995508 (= e!4204802 (as set.empty (Set Context!12508)))))

(declare-fun e!4204803 () (Set Context!12508))

(declare-fun b!6995509 () Bool)

(declare-fun call!634975 () (Set Context!12508))

(assert (=> b!6995509 (= e!4204803 (set.union call!634975 (derivationStepZipperUp!1908 (Context!12509 (t!381066 (exprs!6754 lt!2492984))) (h!73644 s!7408))))))

(declare-fun b!6995510 () Bool)

(assert (=> b!6995510 (= e!4204803 e!4204802)))

(declare-fun c!1297934 () Bool)

(assert (=> b!6995510 (= c!1297934 (is-Cons!67195 (exprs!6754 lt!2492984)))))

(declare-fun b!6995511 () Bool)

(assert (=> b!6995511 (= e!4204802 call!634975)))

(declare-fun d!2179063 () Bool)

(declare-fun c!1297933 () Bool)

(assert (=> d!2179063 (= c!1297933 e!4204801)))

(declare-fun res!2853768 () Bool)

(assert (=> d!2179063 (=> (not res!2853768) (not e!4204801))))

(assert (=> d!2179063 (= res!2853768 (is-Cons!67195 (exprs!6754 lt!2492984)))))

(assert (=> d!2179063 (= (derivationStepZipperUp!1908 lt!2492984 (h!73644 s!7408)) e!4204803)))

(declare-fun bm!634970 () Bool)

(assert (=> bm!634970 (= call!634975 (derivationStepZipperDown!1976 (h!73643 (exprs!6754 lt!2492984)) (Context!12509 (t!381066 (exprs!6754 lt!2492984))) (h!73644 s!7408)))))

(assert (= (and d!2179063 res!2853768) b!6995507))

(assert (= (and d!2179063 c!1297933) b!6995509))

(assert (= (and d!2179063 (not c!1297933)) b!6995510))

(assert (= (and b!6995510 c!1297934) b!6995511))

(assert (= (and b!6995510 (not c!1297934)) b!6995508))

(assert (= (or b!6995509 b!6995511) bm!634970))

(declare-fun m!7686888 () Bool)

(assert (=> b!6995507 m!7686888))

(declare-fun m!7686890 () Bool)

(assert (=> b!6995509 m!7686890))

(declare-fun m!7686894 () Bool)

(assert (=> bm!634970 m!7686894))

(assert (=> b!6995238 d!2179063))

(declare-fun d!2179065 () Bool)

(declare-fun c!1297935 () Bool)

(assert (=> d!2179065 (= c!1297935 (isEmpty!39219 (_2!37234 lt!2493025)))))

(declare-fun e!4204804 () Bool)

(assert (=> d!2179065 (= (matchZipper!2798 lt!2493021 (_2!37234 lt!2493025)) e!4204804)))

(declare-fun b!6995512 () Bool)

(assert (=> b!6995512 (= e!4204804 (nullableZipper!2453 lt!2493021))))

(declare-fun b!6995513 () Bool)

(assert (=> b!6995513 (= e!4204804 (matchZipper!2798 (derivationStepZipper!2738 lt!2493021 (head!14128 (_2!37234 lt!2493025))) (tail!13286 (_2!37234 lt!2493025))))))

(assert (= (and d!2179065 c!1297935) b!6995512))

(assert (= (and d!2179065 (not c!1297935)) b!6995513))

(declare-fun m!7686900 () Bool)

(assert (=> d!2179065 m!7686900))

(declare-fun m!7686902 () Bool)

(assert (=> b!6995512 m!7686902))

(declare-fun m!7686904 () Bool)

(assert (=> b!6995513 m!7686904))

(assert (=> b!6995513 m!7686904))

(declare-fun m!7686906 () Bool)

(assert (=> b!6995513 m!7686906))

(declare-fun m!7686908 () Bool)

(assert (=> b!6995513 m!7686908))

(assert (=> b!6995513 m!7686906))

(assert (=> b!6995513 m!7686908))

(declare-fun m!7686910 () Bool)

(assert (=> b!6995513 m!7686910))

(assert (=> b!6995248 d!2179065))

(declare-fun d!2179069 () Bool)

(declare-fun c!1297936 () Bool)

(assert (=> d!2179069 (= c!1297936 (isEmpty!39219 s!7408))))

(declare-fun e!4204805 () Bool)

(assert (=> d!2179069 (= (matchZipper!2798 lt!2492981 s!7408) e!4204805)))

(declare-fun b!6995514 () Bool)

(assert (=> b!6995514 (= e!4204805 (nullableZipper!2453 lt!2492981))))

(declare-fun b!6995515 () Bool)

(assert (=> b!6995515 (= e!4204805 (matchZipper!2798 (derivationStepZipper!2738 lt!2492981 (head!14128 s!7408)) (tail!13286 s!7408)))))

(assert (= (and d!2179069 c!1297936) b!6995514))

(assert (= (and d!2179069 (not c!1297936)) b!6995515))

(assert (=> d!2179069 m!7686786))

(declare-fun m!7686912 () Bool)

(assert (=> b!6995514 m!7686912))

(assert (=> b!6995515 m!7686790))

(assert (=> b!6995515 m!7686790))

(declare-fun m!7686914 () Bool)

(assert (=> b!6995515 m!7686914))

(assert (=> b!6995515 m!7686794))

(assert (=> b!6995515 m!7686914))

(assert (=> b!6995515 m!7686794))

(declare-fun m!7686916 () Bool)

(assert (=> b!6995515 m!7686916))

(assert (=> start!672616 d!2179069))

(declare-fun bs!1862908 () Bool)

(declare-fun d!2179071 () Bool)

(assert (= bs!1862908 (and d!2179071 b!6995229)))

(declare-fun lambda!404324 () Int)

(assert (=> bs!1862908 (= lambda!404324 lambda!404242)))

(assert (=> d!2179071 true))

(assert (=> d!2179071 (= (appendTo!379 z1!570 ct2!306) (map!15534 z1!570 lambda!404324))))

(declare-fun bs!1862909 () Bool)

(assert (= bs!1862909 d!2179071))

(declare-fun m!7686918 () Bool)

(assert (=> bs!1862909 m!7686918))

(assert (=> start!672616 d!2179071))

(declare-fun bs!1862910 () Bool)

(declare-fun d!2179073 () Bool)

(assert (= bs!1862910 (and d!2179073 b!6995229)))

(declare-fun lambda!404325 () Int)

(assert (=> bs!1862910 (= lambda!404325 lambda!404243)))

(declare-fun bs!1862911 () Bool)

(assert (= bs!1862911 (and d!2179073 d!2179029)))

(assert (=> bs!1862911 (= lambda!404325 lambda!404319)))

(assert (=> d!2179073 (= (inv!86005 ct2!306) (forall!16166 (exprs!6754 ct2!306) lambda!404325))))

(declare-fun bs!1862912 () Bool)

(assert (= bs!1862912 d!2179073))

(declare-fun m!7686920 () Bool)

(assert (=> bs!1862912 m!7686920))

(assert (=> start!672616 d!2179073))

(declare-fun d!2179075 () Bool)

(declare-fun isEmpty!39223 (Option!16763) Bool)

(assert (=> d!2179075 (= (isDefined!13464 lt!2493022) (not (isEmpty!39223 lt!2493022)))))

(declare-fun bs!1862913 () Bool)

(assert (= bs!1862913 d!2179075))

(declare-fun m!7686922 () Bool)

(assert (=> bs!1862913 m!7686922))

(assert (=> b!6995232 d!2179075))

(declare-fun b!6995594 () Bool)

(declare-fun e!4204851 () Option!16763)

(assert (=> b!6995594 (= e!4204851 None!16762)))

(declare-fun d!2179077 () Bool)

(declare-fun e!4204852 () Bool)

(assert (=> d!2179077 e!4204852))

(declare-fun res!2853795 () Bool)

(assert (=> d!2179077 (=> res!2853795 e!4204852)))

(declare-fun e!4204850 () Bool)

(assert (=> d!2179077 (= res!2853795 e!4204850)))

(declare-fun res!2853791 () Bool)

(assert (=> d!2179077 (=> (not res!2853791) (not e!4204850))))

(declare-fun lt!2493257 () Option!16763)

(assert (=> d!2179077 (= res!2853791 (isDefined!13464 lt!2493257))))

(declare-fun e!4204849 () Option!16763)

(assert (=> d!2179077 (= lt!2493257 e!4204849)))

(declare-fun c!1297966 () Bool)

(declare-fun e!4204853 () Bool)

(assert (=> d!2179077 (= c!1297966 e!4204853)))

(declare-fun res!2853793 () Bool)

(assert (=> d!2179077 (=> (not res!2853793) (not e!4204853))))

(assert (=> d!2179077 (= res!2853793 (matchZipper!2798 lt!2493018 Nil!67196))))

(assert (=> d!2179077 (= (++!15218 Nil!67196 s!7408) s!7408)))

(assert (=> d!2179077 (= (findConcatSeparationZippers!279 lt!2493018 lt!2493021 Nil!67196 s!7408 s!7408) lt!2493257)))

(declare-fun b!6995595 () Bool)

(assert (=> b!6995595 (= e!4204850 (= (++!15218 (_1!37234 (get!23557 lt!2493257)) (_2!37234 (get!23557 lt!2493257))) s!7408))))

(declare-fun b!6995596 () Bool)

(assert (=> b!6995596 (= e!4204852 (not (isDefined!13464 lt!2493257)))))

(declare-fun b!6995597 () Bool)

(declare-fun res!2853794 () Bool)

(assert (=> b!6995597 (=> (not res!2853794) (not e!4204850))))

(assert (=> b!6995597 (= res!2853794 (matchZipper!2798 lt!2493021 (_2!37234 (get!23557 lt!2493257))))))

(declare-fun b!6995598 () Bool)

(assert (=> b!6995598 (= e!4204849 e!4204851)))

(declare-fun c!1297967 () Bool)

(assert (=> b!6995598 (= c!1297967 (is-Nil!67196 s!7408))))

(declare-fun b!6995599 () Bool)

(declare-fun lt!2493256 () Unit!161171)

(declare-fun lt!2493255 () Unit!161171)

(assert (=> b!6995599 (= lt!2493256 lt!2493255)))

(assert (=> b!6995599 (= (++!15218 (++!15218 Nil!67196 (Cons!67196 (h!73644 s!7408) Nil!67196)) (t!381067 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2873 (List!67320 C!34786 List!67320 List!67320) Unit!161171)

(assert (=> b!6995599 (= lt!2493255 (lemmaMoveElementToOtherListKeepsConcatEq!2873 Nil!67196 (h!73644 s!7408) (t!381067 s!7408) s!7408))))

(assert (=> b!6995599 (= e!4204851 (findConcatSeparationZippers!279 lt!2493018 lt!2493021 (++!15218 Nil!67196 (Cons!67196 (h!73644 s!7408) Nil!67196)) (t!381067 s!7408) s!7408))))

(declare-fun b!6995600 () Bool)

(declare-fun res!2853792 () Bool)

(assert (=> b!6995600 (=> (not res!2853792) (not e!4204850))))

(assert (=> b!6995600 (= res!2853792 (matchZipper!2798 lt!2493018 (_1!37234 (get!23557 lt!2493257))))))

(declare-fun b!6995601 () Bool)

(assert (=> b!6995601 (= e!4204853 (matchZipper!2798 lt!2493021 s!7408))))

(declare-fun b!6995602 () Bool)

(assert (=> b!6995602 (= e!4204849 (Some!16762 (tuple2!67863 Nil!67196 s!7408)))))

(assert (= (and d!2179077 res!2853793) b!6995601))

(assert (= (and d!2179077 c!1297966) b!6995602))

(assert (= (and d!2179077 (not c!1297966)) b!6995598))

(assert (= (and b!6995598 c!1297967) b!6995594))

(assert (= (and b!6995598 (not c!1297967)) b!6995599))

(assert (= (and d!2179077 res!2853791) b!6995600))

(assert (= (and b!6995600 res!2853792) b!6995597))

(assert (= (and b!6995597 res!2853794) b!6995595))

(assert (= (and d!2179077 (not res!2853795)) b!6995596))

(declare-fun m!7686954 () Bool)

(assert (=> b!6995597 m!7686954))

(declare-fun m!7686956 () Bool)

(assert (=> b!6995597 m!7686956))

(declare-fun m!7686958 () Bool)

(assert (=> d!2179077 m!7686958))

(declare-fun m!7686960 () Bool)

(assert (=> d!2179077 m!7686960))

(declare-fun m!7686962 () Bool)

(assert (=> d!2179077 m!7686962))

(assert (=> b!6995596 m!7686958))

(assert (=> b!6995600 m!7686954))

(declare-fun m!7686964 () Bool)

(assert (=> b!6995600 m!7686964))

(assert (=> b!6995595 m!7686954))

(declare-fun m!7686966 () Bool)

(assert (=> b!6995595 m!7686966))

(declare-fun m!7686968 () Bool)

(assert (=> b!6995599 m!7686968))

(assert (=> b!6995599 m!7686968))

(declare-fun m!7686970 () Bool)

(assert (=> b!6995599 m!7686970))

(declare-fun m!7686972 () Bool)

(assert (=> b!6995599 m!7686972))

(assert (=> b!6995599 m!7686968))

(declare-fun m!7686974 () Bool)

(assert (=> b!6995599 m!7686974))

(declare-fun m!7686976 () Bool)

(assert (=> b!6995601 m!7686976))

(assert (=> b!6995232 d!2179077))

(declare-fun d!2179087 () Bool)

(assert (=> d!2179087 (= (get!23557 lt!2493022) (v!53034 lt!2493022))))

(assert (=> b!6995232 d!2179087))

(declare-fun d!2179089 () Bool)

(declare-fun c!1297968 () Bool)

(assert (=> d!2179089 (= c!1297968 (isEmpty!39219 (_1!37234 lt!2493025)))))

(declare-fun e!4204854 () Bool)

(assert (=> d!2179089 (= (matchZipper!2798 lt!2493018 (_1!37234 lt!2493025)) e!4204854)))

(declare-fun b!6995603 () Bool)

(assert (=> b!6995603 (= e!4204854 (nullableZipper!2453 lt!2493018))))

(declare-fun b!6995604 () Bool)

(assert (=> b!6995604 (= e!4204854 (matchZipper!2798 (derivationStepZipper!2738 lt!2493018 (head!14128 (_1!37234 lt!2493025))) (tail!13286 (_1!37234 lt!2493025))))))

(assert (= (and d!2179089 c!1297968) b!6995603))

(assert (= (and d!2179089 (not c!1297968)) b!6995604))

(assert (=> d!2179089 m!7686428))

(declare-fun m!7686978 () Bool)

(assert (=> b!6995603 m!7686978))

(declare-fun m!7686980 () Bool)

(assert (=> b!6995604 m!7686980))

(assert (=> b!6995604 m!7686980))

(declare-fun m!7686982 () Bool)

(assert (=> b!6995604 m!7686982))

(declare-fun m!7686984 () Bool)

(assert (=> b!6995604 m!7686984))

(assert (=> b!6995604 m!7686982))

(assert (=> b!6995604 m!7686984))

(declare-fun m!7686986 () Bool)

(assert (=> b!6995604 m!7686986))

(assert (=> b!6995232 d!2179089))

(declare-fun d!2179091 () Bool)

(assert (=> d!2179091 (isDefined!13464 (findConcatSeparationZippers!279 lt!2493018 (set.insert ct2!306 (as set.empty (Set Context!12508))) Nil!67196 s!7408 s!7408))))

(declare-fun lt!2493263 () Unit!161171)

(declare-fun choose!52400 ((Set Context!12508) Context!12508 List!67320) Unit!161171)

(assert (=> d!2179091 (= lt!2493263 (choose!52400 lt!2493018 ct2!306 s!7408))))

(assert (=> d!2179091 (matchZipper!2798 (appendTo!379 lt!2493018 ct2!306) s!7408)))

(assert (=> d!2179091 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!279 lt!2493018 ct2!306 s!7408) lt!2493263)))

(declare-fun bs!1862918 () Bool)

(assert (= bs!1862918 d!2179091))

(declare-fun m!7687000 () Bool)

(assert (=> bs!1862918 m!7687000))

(declare-fun m!7687004 () Bool)

(assert (=> bs!1862918 m!7687004))

(declare-fun m!7687008 () Bool)

(assert (=> bs!1862918 m!7687008))

(assert (=> bs!1862918 m!7687004))

(assert (=> bs!1862918 m!7686440))

(declare-fun m!7687012 () Bool)

(assert (=> bs!1862918 m!7687012))

(assert (=> bs!1862918 m!7686440))

(assert (=> bs!1862918 m!7687012))

(declare-fun m!7687014 () Bool)

(assert (=> bs!1862918 m!7687014))

(assert (=> b!6995232 d!2179091))

(declare-fun d!2179099 () Bool)

(declare-fun lt!2493264 () Int)

(assert (=> d!2179099 (>= lt!2493264 0)))

(declare-fun e!4204858 () Int)

(assert (=> d!2179099 (= lt!2493264 e!4204858)))

(declare-fun c!1297974 () Bool)

(assert (=> d!2179099 (= c!1297974 (is-Cons!67197 (Cons!67197 lt!2492984 Nil!67197)))))

(assert (=> d!2179099 (= (zipperDepthTotal!479 (Cons!67197 lt!2492984 Nil!67197)) lt!2493264)))

(declare-fun b!6995613 () Bool)

(assert (=> b!6995613 (= e!4204858 (+ (contextDepthTotal!451 (h!73645 (Cons!67197 lt!2492984 Nil!67197))) (zipperDepthTotal!479 (t!381068 (Cons!67197 lt!2492984 Nil!67197)))))))

(declare-fun b!6995614 () Bool)

(assert (=> b!6995614 (= e!4204858 0)))

(assert (= (and d!2179099 c!1297974) b!6995613))

(assert (= (and d!2179099 (not c!1297974)) b!6995614))

(declare-fun m!7687016 () Bool)

(assert (=> b!6995613 m!7687016))

(declare-fun m!7687018 () Bool)

(assert (=> b!6995613 m!7687018))

(assert (=> b!6995242 d!2179099))

(declare-fun d!2179101 () Bool)

(declare-fun c!1297975 () Bool)

(assert (=> d!2179101 (= c!1297975 (isEmpty!39219 s!7408))))

(declare-fun e!4204859 () Bool)

(assert (=> d!2179101 (= (matchZipper!2798 lt!2493015 s!7408) e!4204859)))

(declare-fun b!6995615 () Bool)

(assert (=> b!6995615 (= e!4204859 (nullableZipper!2453 lt!2493015))))

(declare-fun b!6995616 () Bool)

(assert (=> b!6995616 (= e!4204859 (matchZipper!2798 (derivationStepZipper!2738 lt!2493015 (head!14128 s!7408)) (tail!13286 s!7408)))))

(assert (= (and d!2179101 c!1297975) b!6995615))

(assert (= (and d!2179101 (not c!1297975)) b!6995616))

(assert (=> d!2179101 m!7686786))

(declare-fun m!7687020 () Bool)

(assert (=> b!6995615 m!7687020))

(assert (=> b!6995616 m!7686790))

(assert (=> b!6995616 m!7686790))

(declare-fun m!7687022 () Bool)

(assert (=> b!6995616 m!7687022))

(assert (=> b!6995616 m!7686794))

(assert (=> b!6995616 m!7687022))

(assert (=> b!6995616 m!7686794))

(declare-fun m!7687024 () Bool)

(assert (=> b!6995616 m!7687024))

(assert (=> b!6995251 d!2179101))

(assert (=> b!6995251 d!2178987))

(declare-fun bs!1862919 () Bool)

(declare-fun d!2179103 () Bool)

(assert (= bs!1862919 (and d!2179103 b!6995234)))

(declare-fun lambda!404329 () Int)

(assert (=> bs!1862919 (= lambda!404329 lambda!404244)))

(declare-fun bs!1862920 () Bool)

(assert (= bs!1862920 (and d!2179103 d!2178997)))

(assert (=> bs!1862920 (= lambda!404329 lambda!404309)))

(declare-fun bs!1862921 () Bool)

(assert (= bs!1862921 (and d!2179103 d!2179015)))

(assert (=> bs!1862921 (= lambda!404329 lambda!404310)))

(assert (=> d!2179103 true))

(assert (=> d!2179103 (= (derivationStepZipper!2738 lt!2493023 (h!73644 s!7408)) (flatMap!2244 lt!2493023 lambda!404329))))

(declare-fun bs!1862922 () Bool)

(assert (= bs!1862922 d!2179103))

(declare-fun m!7687026 () Bool)

(assert (=> bs!1862922 m!7687026))

(assert (=> b!6995231 d!2179103))

(declare-fun b!6995617 () Bool)

(declare-fun e!4204860 () Bool)

(assert (=> b!6995617 (= e!4204860 (nullable!7018 (h!73643 (exprs!6754 lt!2493029))))))

(declare-fun b!6995618 () Bool)

(declare-fun e!4204861 () (Set Context!12508))

(assert (=> b!6995618 (= e!4204861 (as set.empty (Set Context!12508)))))

(declare-fun e!4204862 () (Set Context!12508))

(declare-fun b!6995619 () Bool)

(declare-fun call!634997 () (Set Context!12508))

(assert (=> b!6995619 (= e!4204862 (set.union call!634997 (derivationStepZipperUp!1908 (Context!12509 (t!381066 (exprs!6754 lt!2493029))) (h!73644 s!7408))))))

(declare-fun b!6995620 () Bool)

(assert (=> b!6995620 (= e!4204862 e!4204861)))

(declare-fun c!1297977 () Bool)

(assert (=> b!6995620 (= c!1297977 (is-Cons!67195 (exprs!6754 lt!2493029)))))

(declare-fun b!6995621 () Bool)

(assert (=> b!6995621 (= e!4204861 call!634997)))

(declare-fun d!2179105 () Bool)

(declare-fun c!1297976 () Bool)

(assert (=> d!2179105 (= c!1297976 e!4204860)))

(declare-fun res!2853796 () Bool)

(assert (=> d!2179105 (=> (not res!2853796) (not e!4204860))))

(assert (=> d!2179105 (= res!2853796 (is-Cons!67195 (exprs!6754 lt!2493029)))))

(assert (=> d!2179105 (= (derivationStepZipperUp!1908 lt!2493029 (h!73644 s!7408)) e!4204862)))

(declare-fun bm!634992 () Bool)

(assert (=> bm!634992 (= call!634997 (derivationStepZipperDown!1976 (h!73643 (exprs!6754 lt!2493029)) (Context!12509 (t!381066 (exprs!6754 lt!2493029))) (h!73644 s!7408)))))

(assert (= (and d!2179105 res!2853796) b!6995617))

(assert (= (and d!2179105 c!1297976) b!6995619))

(assert (= (and d!2179105 (not c!1297976)) b!6995620))

(assert (= (and b!6995620 c!1297977) b!6995621))

(assert (= (and b!6995620 (not c!1297977)) b!6995618))

(assert (= (or b!6995619 b!6995621) bm!634992))

(assert (=> b!6995617 m!7686482))

(declare-fun m!7687028 () Bool)

(assert (=> b!6995619 m!7687028))

(declare-fun m!7687030 () Bool)

(assert (=> bm!634992 m!7687030))

(assert (=> b!6995231 d!2179105))

(declare-fun d!2179107 () Bool)

(assert (=> d!2179107 (= (flatMap!2244 lt!2493023 lambda!404244) (choose!52384 lt!2493023 lambda!404244))))

(declare-fun bs!1862923 () Bool)

(assert (= bs!1862923 d!2179107))

(declare-fun m!7687032 () Bool)

(assert (=> bs!1862923 m!7687032))

(assert (=> b!6995231 d!2179107))

(declare-fun d!2179109 () Bool)

(assert (=> d!2179109 (= (flatMap!2244 lt!2493023 lambda!404244) (dynLambda!26962 lambda!404244 lt!2493029))))

(declare-fun lt!2493265 () Unit!161171)

(assert (=> d!2179109 (= lt!2493265 (choose!52385 lt!2493023 lt!2493029 lambda!404244))))

(assert (=> d!2179109 (= lt!2493023 (set.insert lt!2493029 (as set.empty (Set Context!12508))))))

(assert (=> d!2179109 (= (lemmaFlatMapOnSingletonSet!1759 lt!2493023 lt!2493029 lambda!404244) lt!2493265)))

(declare-fun b_lambda!263073 () Bool)

(assert (=> (not b_lambda!263073) (not d!2179109)))

(declare-fun bs!1862924 () Bool)

(assert (= bs!1862924 d!2179109))

(assert (=> bs!1862924 m!7686432))

(declare-fun m!7687034 () Bool)

(assert (=> bs!1862924 m!7687034))

(declare-fun m!7687036 () Bool)

(assert (=> bs!1862924 m!7687036))

(assert (=> bs!1862924 m!7686436))

(assert (=> b!6995231 d!2179109))

(declare-fun d!2179111 () Bool)

(assert (=> d!2179111 (= (isEmpty!39219 (_1!37234 lt!2493025)) (is-Nil!67196 (_1!37234 lt!2493025)))))

(assert (=> b!6995230 d!2179111))

(declare-fun b!6995626 () Bool)

(declare-fun e!4204865 () Bool)

(declare-fun tp!1930503 () Bool)

(declare-fun tp!1930504 () Bool)

(assert (=> b!6995626 (= e!4204865 (and tp!1930503 tp!1930504))))

(assert (=> b!6995243 (= tp!1930485 e!4204865)))

(assert (= (and b!6995243 (is-Cons!67195 (exprs!6754 ct2!306))) b!6995626))

(declare-fun b!6995631 () Bool)

(declare-fun e!4204868 () Bool)

(declare-fun tp!1930507 () Bool)

(assert (=> b!6995631 (= e!4204868 (and tp_is_empty!43741 tp!1930507))))

(assert (=> b!6995252 (= tp!1930483 e!4204868)))

(assert (= (and b!6995252 (is-Cons!67196 (t!381067 s!7408))) b!6995631))

(declare-fun b!6995632 () Bool)

(declare-fun e!4204869 () Bool)

(declare-fun tp!1930508 () Bool)

(declare-fun tp!1930509 () Bool)

(assert (=> b!6995632 (= e!4204869 (and tp!1930508 tp!1930509))))

(assert (=> b!6995237 (= tp!1930484 e!4204869)))

(assert (= (and b!6995237 (is-Cons!67195 (exprs!6754 setElem!47982))) b!6995632))

(declare-fun condSetEmpty!47988 () Bool)

(assert (=> setNonEmpty!47982 (= condSetEmpty!47988 (= setRest!47982 (as set.empty (Set Context!12508))))))

(declare-fun setRes!47988 () Bool)

(assert (=> setNonEmpty!47982 (= tp!1930486 setRes!47988)))

(declare-fun setIsEmpty!47988 () Bool)

(assert (=> setIsEmpty!47988 setRes!47988))

(declare-fun tp!1930515 () Bool)

(declare-fun setElem!47988 () Context!12508)

(declare-fun e!4204872 () Bool)

(declare-fun setNonEmpty!47988 () Bool)

(assert (=> setNonEmpty!47988 (= setRes!47988 (and tp!1930515 (inv!86005 setElem!47988) e!4204872))))

(declare-fun setRest!47988 () (Set Context!12508))

(assert (=> setNonEmpty!47988 (= setRest!47982 (set.union (set.insert setElem!47988 (as set.empty (Set Context!12508))) setRest!47988))))

(declare-fun b!6995637 () Bool)

(declare-fun tp!1930514 () Bool)

(assert (=> b!6995637 (= e!4204872 tp!1930514)))

(assert (= (and setNonEmpty!47982 condSetEmpty!47988) setIsEmpty!47988))

(assert (= (and setNonEmpty!47982 (not condSetEmpty!47988)) setNonEmpty!47988))

(assert (= setNonEmpty!47988 b!6995637))

(declare-fun m!7687038 () Bool)

(assert (=> setNonEmpty!47988 m!7687038))

(declare-fun b_lambda!263075 () Bool)

(assert (= b_lambda!263073 (or b!6995234 b_lambda!263075)))

(declare-fun bs!1862927 () Bool)

(declare-fun d!2179113 () Bool)

(assert (= bs!1862927 (and d!2179113 b!6995234)))

(assert (=> bs!1862927 (= (dynLambda!26962 lambda!404244 lt!2493029) (derivationStepZipperUp!1908 lt!2493029 (h!73644 s!7408)))))

(assert (=> bs!1862927 m!7686434))

(assert (=> d!2179109 d!2179113))

(declare-fun b_lambda!263077 () Bool)

(assert (= b_lambda!263067 (or b!6995234 b_lambda!263077)))

(declare-fun bs!1862928 () Bool)

(declare-fun d!2179117 () Bool)

(assert (= bs!1862928 (and d!2179117 b!6995234)))

(assert (=> bs!1862928 (= (dynLambda!26962 lambda!404244 lt!2492984) (derivationStepZipperUp!1908 lt!2492984 (h!73644 s!7408)))))

(assert (=> bs!1862928 m!7686464))

(assert (=> d!2179051 d!2179117))

(declare-fun b_lambda!263079 () Bool)

(assert (= b_lambda!263069 (or b!6995229 b_lambda!263079)))

(declare-fun bs!1862929 () Bool)

(declare-fun d!2179119 () Bool)

(assert (= bs!1862929 (and d!2179119 b!6995229)))

(declare-fun lt!2493268 () Unit!161171)

(assert (=> bs!1862929 (= lt!2493268 (lemmaConcatPreservesForall!594 (exprs!6754 lt!2492984) (exprs!6754 ct2!306) lambda!404243))))

(assert (=> bs!1862929 (= (dynLambda!26965 lambda!404242 lt!2492984) (Context!12509 (++!15217 (exprs!6754 lt!2492984) (exprs!6754 ct2!306))))))

(declare-fun m!7687042 () Bool)

(assert (=> bs!1862929 m!7687042))

(declare-fun m!7687044 () Bool)

(assert (=> bs!1862929 m!7687044))

(assert (=> d!2179057 d!2179119))

(declare-fun b_lambda!263081 () Bool)

(assert (= b_lambda!263063 (or b!6995245 b_lambda!263081)))

(declare-fun bs!1862930 () Bool)

(declare-fun d!2179121 () Bool)

(assert (= bs!1862930 (and d!2179121 b!6995245)))

(assert (=> bs!1862930 (= (dynLambda!26963 lambda!404241 lt!2493215) (matchZipper!2798 (set.insert lt!2493215 (as set.empty (Set Context!12508))) s!7408))))

(declare-fun m!7687046 () Bool)

(assert (=> bs!1862930 m!7687046))

(assert (=> bs!1862930 m!7687046))

(declare-fun m!7687048 () Bool)

(assert (=> bs!1862930 m!7687048))

(assert (=> d!2179021 d!2179121))

(declare-fun b_lambda!263083 () Bool)

(assert (= b_lambda!263061 (or b!6995234 b_lambda!263083)))

(declare-fun bs!1862931 () Bool)

(declare-fun d!2179123 () Bool)

(assert (= bs!1862931 (and d!2179123 b!6995234)))

(assert (=> bs!1862931 (= (dynLambda!26962 lambda!404244 lt!2493007) (derivationStepZipperUp!1908 lt!2493007 (h!73644 s!7408)))))

(assert (=> bs!1862931 m!7686538))

(assert (=> d!2179013 d!2179123))

(declare-fun b_lambda!263085 () Bool)

(assert (= b_lambda!263065 (or b!6995229 b_lambda!263085)))

(declare-fun bs!1862932 () Bool)

(declare-fun d!2179125 () Bool)

(assert (= bs!1862932 (and d!2179125 b!6995229)))

(declare-fun lt!2493269 () Unit!161171)

(assert (=> bs!1862932 (= lt!2493269 (lemmaConcatPreservesForall!594 (exprs!6754 lt!2493225) (exprs!6754 ct2!306) lambda!404243))))

(assert (=> bs!1862932 (= (dynLambda!26965 lambda!404242 lt!2493225) (Context!12509 (++!15217 (exprs!6754 lt!2493225) (exprs!6754 ct2!306))))))

(declare-fun m!7687050 () Bool)

(assert (=> bs!1862932 m!7687050))

(declare-fun m!7687052 () Bool)

(assert (=> bs!1862932 m!7687052))

(assert (=> d!2179041 d!2179125))

(declare-fun b_lambda!263087 () Bool)

(assert (= b_lambda!263059 (or b!6995234 b_lambda!263087)))

(declare-fun bs!1862933 () Bool)

(declare-fun d!2179127 () Bool)

(assert (= bs!1862933 (and d!2179127 b!6995234)))

(assert (=> bs!1862933 (= (dynLambda!26962 lambda!404244 lt!2492982) (derivationStepZipperUp!1908 lt!2492982 (h!73644 s!7408)))))

(assert (=> bs!1862933 m!7686518))

(assert (=> d!2178993 d!2179127))

(push 1)

(assert (not b!6995615))

(assert (not b!6995398))

(assert (not b!6995631))

(assert (not bs!1862932))

(assert (not b!6995497))

(assert (not b!6995604))

(assert (not b!6995471))

(assert (not d!2179029))

(assert (not d!2179023))

(assert (not d!2179045))

(assert (not b_lambda!263083))

(assert (not b!6995596))

(assert (not b!6995601))

(assert (not d!2179075))

(assert (not d!2178995))

(assert (not b!6995599))

(assert (not b_lambda!263079))

(assert (not d!2179027))

(assert (not setNonEmpty!47988))

(assert (not d!2179017))

(assert (not d!2179071))

(assert (not d!2178985))

(assert (not b_lambda!263087))

(assert (not d!2179073))

(assert (not b_lambda!263081))

(assert (not b!6995459))

(assert (not d!2179101))

(assert (not d!2179025))

(assert (not d!2178999))

(assert (not b!6995385))

(assert (not b!6995514))

(assert (not b!6995424))

(assert (not b!6995467))

(assert (not b!6995413))

(assert (not b!6995515))

(assert (not d!2179019))

(assert (not b!6995619))

(assert (not d!2179015))

(assert (not b!6995412))

(assert (not b!6995597))

(assert (not d!2179043))

(assert (not b!6995507))

(assert (not b!6995632))

(assert (not b!6995509))

(assert (not bm!634964))

(assert (not b!6995626))

(assert (not d!2179047))

(assert (not d!2179003))

(assert (not b!6995429))

(assert (not bs!1862927))

(assert (not bs!1862930))

(assert (not d!2178987))

(assert (not b!6995482))

(assert (not b_lambda!263075))

(assert (not d!2179041))

(assert (not d!2179103))

(assert (not b!6995513))

(assert tp_is_empty!43741)

(assert (not b!6995485))

(assert (not bs!1862931))

(assert (not b_lambda!263077))

(assert (not b!6995427))

(assert (not bs!1862929))

(assert (not b!6995479))

(assert (not d!2179005))

(assert (not d!2179031))

(assert (not bm!634947))

(assert (not b!6995603))

(assert (not b!6995384))

(assert (not d!2179049))

(assert (not bm!634965))

(assert (not b!6995616))

(assert (not b!6995617))

(assert (not b!6995486))

(assert (not d!2179037))

(assert (not b!6995492))

(assert (not b!6995503))

(assert (not b!6995505))

(assert (not b!6995600))

(assert (not b!6995512))

(assert (not d!2179109))

(assert (not bm!634992))

(assert (not d!2179021))

(assert (not d!2179013))

(assert (not d!2179057))

(assert (not bm!634945))

(assert (not b!6995371))

(assert (not d!2178991))

(assert (not d!2179051))

(assert (not d!2179077))

(assert (not d!2179089))

(assert (not bm!634970))

(assert (not d!2179065))

(assert (not b!6995481))

(assert (not bs!1862928))

(assert (not b!6995613))

(assert (not d!2179039))

(assert (not b!6995595))

(assert (not b!6995483))

(assert (not b!6995478))

(assert (not d!2178993))

(assert (not d!2179069))

(assert (not bm!634950))

(assert (not b!6995425))

(assert (not bs!1862933))

(assert (not bm!634968))

(assert (not b!6995637))

(assert (not d!2179035))

(assert (not bm!634951))

(assert (not d!2179033))

(assert (not d!2179107))

(assert (not b!6995477))

(assert (not b!6995396))

(assert (not d!2179091))

(assert (not b!6995480))

(assert (not d!2178997))

(assert (not b_lambda!263085))

(assert (not b!6995472))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6995787 () Bool)

(declare-fun e!4204966 () List!67319)

(assert (=> b!6995787 (= e!4204966 (exprs!6754 ct2!306))))

(declare-fun b!6995788 () Bool)

(assert (=> b!6995788 (= e!4204966 (Cons!67195 (h!73643 (t!381066 lt!2493020)) (++!15217 (t!381066 (t!381066 lt!2493020)) (exprs!6754 ct2!306))))))

(declare-fun e!4204965 () Bool)

(declare-fun lt!2493322 () List!67319)

(declare-fun b!6995790 () Bool)

(assert (=> b!6995790 (= e!4204965 (or (not (= (exprs!6754 ct2!306) Nil!67195)) (= lt!2493322 (t!381066 lt!2493020))))))

(declare-fun b!6995789 () Bool)

(declare-fun res!2853852 () Bool)

(assert (=> b!6995789 (=> (not res!2853852) (not e!4204965))))

(assert (=> b!6995789 (= res!2853852 (= (size!40923 lt!2493322) (+ (size!40923 (t!381066 lt!2493020)) (size!40923 (exprs!6754 ct2!306)))))))

(declare-fun d!2179235 () Bool)

(assert (=> d!2179235 e!4204965))

(declare-fun res!2853851 () Bool)

(assert (=> d!2179235 (=> (not res!2853851) (not e!4204965))))

(assert (=> d!2179235 (= res!2853851 (= (content!13290 lt!2493322) (set.union (content!13290 (t!381066 lt!2493020)) (content!13290 (exprs!6754 ct2!306)))))))

(assert (=> d!2179235 (= lt!2493322 e!4204966)))

(declare-fun c!1298021 () Bool)

(assert (=> d!2179235 (= c!1298021 (is-Nil!67195 (t!381066 lt!2493020)))))

(assert (=> d!2179235 (= (++!15217 (t!381066 lt!2493020) (exprs!6754 ct2!306)) lt!2493322)))

(assert (= (and d!2179235 c!1298021) b!6995787))

(assert (= (and d!2179235 (not c!1298021)) b!6995788))

(assert (= (and d!2179235 res!2853851) b!6995789))

(assert (= (and b!6995789 res!2853852) b!6995790))

(declare-fun m!7687320 () Bool)

(assert (=> b!6995788 m!7687320))

(declare-fun m!7687322 () Bool)

(assert (=> b!6995789 m!7687322))

(declare-fun m!7687324 () Bool)

(assert (=> b!6995789 m!7687324))

(assert (=> b!6995789 m!7686742))

(declare-fun m!7687326 () Bool)

(assert (=> d!2179235 m!7687326))

(declare-fun m!7687328 () Bool)

(assert (=> d!2179235 m!7687328))

(assert (=> d!2179235 m!7686748))

(assert (=> b!6995424 d!2179235))

(declare-fun d!2179237 () Bool)

(declare-fun c!1298022 () Bool)

(assert (=> d!2179237 (= c!1298022 (isEmpty!39219 (tail!13286 (t!381067 s!7408))))))

(declare-fun e!4204967 () Bool)

(assert (=> d!2179237 (= (matchZipper!2798 (derivationStepZipper!2738 lt!2492985 (head!14128 (t!381067 s!7408))) (tail!13286 (t!381067 s!7408))) e!4204967)))

(declare-fun b!6995791 () Bool)

(assert (=> b!6995791 (= e!4204967 (nullableZipper!2453 (derivationStepZipper!2738 lt!2492985 (head!14128 (t!381067 s!7408)))))))

(declare-fun b!6995792 () Bool)

(assert (=> b!6995792 (= e!4204967 (matchZipper!2798 (derivationStepZipper!2738 (derivationStepZipper!2738 lt!2492985 (head!14128 (t!381067 s!7408))) (head!14128 (tail!13286 (t!381067 s!7408)))) (tail!13286 (tail!13286 (t!381067 s!7408)))))))

(assert (= (and d!2179237 c!1298022) b!6995791))

(assert (= (and d!2179237 (not c!1298022)) b!6995792))

(assert (=> d!2179237 m!7686690))

(declare-fun m!7687330 () Bool)

(assert (=> d!2179237 m!7687330))

(assert (=> b!6995791 m!7686828))

(declare-fun m!7687332 () Bool)

(assert (=> b!6995791 m!7687332))

(assert (=> b!6995792 m!7686690))

(declare-fun m!7687334 () Bool)

(assert (=> b!6995792 m!7687334))

(assert (=> b!6995792 m!7686828))

(assert (=> b!6995792 m!7687334))

(declare-fun m!7687336 () Bool)

(assert (=> b!6995792 m!7687336))

(assert (=> b!6995792 m!7686690))

(declare-fun m!7687338 () Bool)

(assert (=> b!6995792 m!7687338))

(assert (=> b!6995792 m!7687336))

(assert (=> b!6995792 m!7687338))

(declare-fun m!7687340 () Bool)

(assert (=> b!6995792 m!7687340))

(assert (=> b!6995483 d!2179237))

(declare-fun bs!1862971 () Bool)

(declare-fun d!2179239 () Bool)

(assert (= bs!1862971 (and d!2179239 b!6995234)))

(declare-fun lambda!404347 () Int)

(assert (=> bs!1862971 (= (= (head!14128 (t!381067 s!7408)) (h!73644 s!7408)) (= lambda!404347 lambda!404244))))

(declare-fun bs!1862972 () Bool)

(assert (= bs!1862972 (and d!2179239 d!2178997)))

(assert (=> bs!1862972 (= (= (head!14128 (t!381067 s!7408)) (h!73644 s!7408)) (= lambda!404347 lambda!404309))))

(declare-fun bs!1862973 () Bool)

(assert (= bs!1862973 (and d!2179239 d!2179015)))

(assert (=> bs!1862973 (= (= (head!14128 (t!381067 s!7408)) (h!73644 s!7408)) (= lambda!404347 lambda!404310))))

(declare-fun bs!1862974 () Bool)

(assert (= bs!1862974 (and d!2179239 d!2179103)))

(assert (=> bs!1862974 (= (= (head!14128 (t!381067 s!7408)) (h!73644 s!7408)) (= lambda!404347 lambda!404329))))

(assert (=> d!2179239 true))

(assert (=> d!2179239 (= (derivationStepZipper!2738 lt!2492985 (head!14128 (t!381067 s!7408))) (flatMap!2244 lt!2492985 lambda!404347))))

(declare-fun bs!1862975 () Bool)

(assert (= bs!1862975 d!2179239))

(declare-fun m!7687342 () Bool)

(assert (=> bs!1862975 m!7687342))

(assert (=> b!6995483 d!2179239))

(declare-fun d!2179241 () Bool)

(assert (=> d!2179241 (= (head!14128 (t!381067 s!7408)) (h!73644 (t!381067 s!7408)))))

(assert (=> b!6995483 d!2179241))

(declare-fun d!2179243 () Bool)

(assert (=> d!2179243 (= (tail!13286 (t!381067 s!7408)) (t!381067 (t!381067 s!7408)))))

(assert (=> b!6995483 d!2179243))

(assert (=> d!2179109 d!2179107))

(declare-fun d!2179245 () Bool)

(assert (=> d!2179245 (= (flatMap!2244 lt!2493023 lambda!404244) (dynLambda!26962 lambda!404244 lt!2493029))))

(assert (=> d!2179245 true))

(declare-fun _$13!4376 () Unit!161171)

(assert (=> d!2179245 (= (choose!52385 lt!2493023 lt!2493029 lambda!404244) _$13!4376)))

(declare-fun b_lambda!263115 () Bool)

(assert (=> (not b_lambda!263115) (not d!2179245)))

(declare-fun bs!1862976 () Bool)

(assert (= bs!1862976 d!2179245))

(assert (=> bs!1862976 m!7686432))

(assert (=> bs!1862976 m!7687034))

(assert (=> d!2179109 d!2179245))

(declare-fun d!2179247 () Bool)

(assert (=> d!2179247 (= (isEmpty!39219 (t!381067 s!7408)) (is-Nil!67196 (t!381067 s!7408)))))

(assert (=> d!2179037 d!2179247))

(declare-fun d!2179249 () Bool)

(declare-fun lt!2493325 () Int)

(assert (=> d!2179249 (>= lt!2493325 0)))

(declare-fun e!4204970 () Int)

(assert (=> d!2179249 (= lt!2493325 e!4204970)))

(declare-fun c!1298025 () Bool)

(assert (=> d!2179249 (= c!1298025 (is-Nil!67195 lt!2493222))))

(assert (=> d!2179249 (= (size!40923 lt!2493222) lt!2493325)))

(declare-fun b!6995797 () Bool)

(assert (=> b!6995797 (= e!4204970 0)))

(declare-fun b!6995798 () Bool)

(assert (=> b!6995798 (= e!4204970 (+ 1 (size!40923 (t!381066 lt!2493222))))))

(assert (= (and d!2179249 c!1298025) b!6995797))

(assert (= (and d!2179249 (not c!1298025)) b!6995798))

(declare-fun m!7687344 () Bool)

(assert (=> b!6995798 m!7687344))

(assert (=> b!6995486 d!2179249))

(declare-fun d!2179251 () Bool)

(declare-fun lt!2493326 () Int)

(assert (=> d!2179251 (>= lt!2493326 0)))

(declare-fun e!4204971 () Int)

(assert (=> d!2179251 (= lt!2493326 e!4204971)))

(declare-fun c!1298026 () Bool)

(assert (=> d!2179251 (= c!1298026 (is-Nil!67195 (exprs!6754 lt!2493029)))))

(assert (=> d!2179251 (= (size!40923 (exprs!6754 lt!2493029)) lt!2493326)))

(declare-fun b!6995799 () Bool)

(assert (=> b!6995799 (= e!4204971 0)))

(declare-fun b!6995800 () Bool)

(assert (=> b!6995800 (= e!4204971 (+ 1 (size!40923 (t!381066 (exprs!6754 lt!2493029)))))))

(assert (= (and d!2179251 c!1298026) b!6995799))

(assert (= (and d!2179251 (not c!1298026)) b!6995800))

(declare-fun m!7687346 () Bool)

(assert (=> b!6995800 m!7687346))

(assert (=> b!6995486 d!2179251))

(declare-fun d!2179253 () Bool)

(declare-fun lt!2493327 () Int)

(assert (=> d!2179253 (>= lt!2493327 0)))

(declare-fun e!4204972 () Int)

(assert (=> d!2179253 (= lt!2493327 e!4204972)))

(declare-fun c!1298027 () Bool)

(assert (=> d!2179253 (= c!1298027 (is-Nil!67195 (exprs!6754 ct2!306)))))

(assert (=> d!2179253 (= (size!40923 (exprs!6754 ct2!306)) lt!2493327)))

(declare-fun b!6995801 () Bool)

(assert (=> b!6995801 (= e!4204972 0)))

(declare-fun b!6995802 () Bool)

(assert (=> b!6995802 (= e!4204972 (+ 1 (size!40923 (t!381066 (exprs!6754 ct2!306)))))))

(assert (= (and d!2179253 c!1298027) b!6995801))

(assert (= (and d!2179253 (not c!1298027)) b!6995802))

(declare-fun m!7687348 () Bool)

(assert (=> b!6995802 m!7687348))

(assert (=> b!6995486 d!2179253))

(declare-fun bs!1862977 () Bool)

(declare-fun d!2179255 () Bool)

(assert (= bs!1862977 (and d!2179255 b!6995245)))

(declare-fun lambda!404350 () Int)

(assert (=> bs!1862977 (not (= lambda!404350 lambda!404241))))

(declare-fun bs!1862978 () Bool)

(assert (= bs!1862978 (and d!2179255 d!2179025)))

(assert (=> bs!1862978 (not (= lambda!404350 lambda!404313))))

(declare-fun bs!1862979 () Bool)

(assert (= bs!1862979 (and d!2179255 d!2179027)))

(assert (=> bs!1862979 (not (= lambda!404350 lambda!404316))))

(assert (=> d!2179255 (= (nullableZipper!2453 lt!2493015) (exists!3067 lt!2493015 lambda!404350))))

(declare-fun bs!1862980 () Bool)

(assert (= bs!1862980 d!2179255))

(declare-fun m!7687350 () Bool)

(assert (=> bs!1862980 m!7687350))

(assert (=> b!6995615 d!2179255))

(declare-fun d!2179257 () Bool)

(assert (=> d!2179257 (= (nullable!7018 (h!73643 (exprs!6754 lt!2492984))) (nullableFct!2651 (h!73643 (exprs!6754 lt!2492984))))))

(declare-fun bs!1862981 () Bool)

(assert (= bs!1862981 d!2179257))

(declare-fun m!7687352 () Bool)

(assert (=> bs!1862981 m!7687352))

(assert (=> b!6995507 d!2179257))

(declare-fun bs!1862982 () Bool)

(declare-fun d!2179259 () Bool)

(assert (= bs!1862982 (and d!2179259 b!6995245)))

(declare-fun lambda!404351 () Int)

(assert (=> bs!1862982 (not (= lambda!404351 lambda!404241))))

(declare-fun bs!1862983 () Bool)

(assert (= bs!1862983 (and d!2179259 d!2179025)))

(assert (=> bs!1862983 (not (= lambda!404351 lambda!404313))))

(declare-fun bs!1862984 () Bool)

(assert (= bs!1862984 (and d!2179259 d!2179027)))

(assert (=> bs!1862984 (not (= lambda!404351 lambda!404316))))

(declare-fun bs!1862985 () Bool)

(assert (= bs!1862985 (and d!2179259 d!2179255)))

(assert (=> bs!1862985 (= lambda!404351 lambda!404350)))

(assert (=> d!2179259 (= (nullableZipper!2453 lt!2492988) (exists!3067 lt!2492988 lambda!404351))))

(declare-fun bs!1862986 () Bool)

(assert (= bs!1862986 d!2179259))

(declare-fun m!7687354 () Bool)

(assert (=> bs!1862986 m!7687354))

(assert (=> b!6995478 d!2179259))

(declare-fun d!2179261 () Bool)

(declare-fun c!1298032 () Bool)

(assert (=> d!2179261 (= c!1298032 (is-Nil!67197 lt!2493212))))

(declare-fun e!4204975 () (Set Context!12508))

(assert (=> d!2179261 (= (content!13291 lt!2493212) e!4204975)))

(declare-fun b!6995807 () Bool)

(assert (=> b!6995807 (= e!4204975 (as set.empty (Set Context!12508)))))

(declare-fun b!6995808 () Bool)

(assert (=> b!6995808 (= e!4204975 (set.union (set.insert (h!73645 lt!2493212) (as set.empty (Set Context!12508))) (content!13291 (t!381068 lt!2493212))))))

(assert (= (and d!2179261 c!1298032) b!6995807))

(assert (= (and d!2179261 (not c!1298032)) b!6995808))

(declare-fun m!7687356 () Bool)

(assert (=> b!6995808 m!7687356))

(declare-fun m!7687358 () Bool)

(assert (=> b!6995808 m!7687358))

(assert (=> b!6995467 d!2179261))

(assert (=> d!2179051 d!2179049))

(declare-fun d!2179263 () Bool)

(assert (=> d!2179263 (= (flatMap!2244 lt!2493018 lambda!404244) (dynLambda!26962 lambda!404244 lt!2492984))))

(assert (=> d!2179263 true))

(declare-fun _$13!4377 () Unit!161171)

(assert (=> d!2179263 (= (choose!52385 lt!2493018 lt!2492984 lambda!404244) _$13!4377)))

(declare-fun b_lambda!263117 () Bool)

(assert (=> (not b_lambda!263117) (not d!2179263)))

(declare-fun bs!1862987 () Bool)

(assert (= bs!1862987 d!2179263))

(assert (=> bs!1862987 m!7686460))

(assert (=> bs!1862987 m!7686866))

(assert (=> d!2179051 d!2179263))

(assert (=> d!2179013 d!2179017))

(declare-fun d!2179265 () Bool)

(assert (=> d!2179265 (= (flatMap!2244 lt!2493015 lambda!404244) (dynLambda!26962 lambda!404244 lt!2493007))))

(assert (=> d!2179265 true))

(declare-fun _$13!4378 () Unit!161171)

(assert (=> d!2179265 (= (choose!52385 lt!2493015 lt!2493007 lambda!404244) _$13!4378)))

(declare-fun b_lambda!263119 () Bool)

(assert (=> (not b_lambda!263119) (not d!2179265)))

(declare-fun bs!1862988 () Bool)

(assert (= bs!1862988 d!2179265))

(assert (=> bs!1862988 m!7686542))

(assert (=> bs!1862988 m!7686764))

(assert (=> d!2179013 d!2179265))

(assert (=> bs!1862931 d!2179007))

(assert (=> bs!1862927 d!2179105))

(declare-fun d!2179267 () Bool)

(declare-fun c!1298033 () Bool)

(assert (=> d!2179267 (= c!1298033 (isEmpty!39219 (tail!13286 (t!381067 s!7408))))))

(declare-fun e!4204976 () Bool)

(assert (=> d!2179267 (= (matchZipper!2798 (derivationStepZipper!2738 lt!2492996 (head!14128 (t!381067 s!7408))) (tail!13286 (t!381067 s!7408))) e!4204976)))

(declare-fun b!6995809 () Bool)

(assert (=> b!6995809 (= e!4204976 (nullableZipper!2453 (derivationStepZipper!2738 lt!2492996 (head!14128 (t!381067 s!7408)))))))

(declare-fun b!6995810 () Bool)

(assert (=> b!6995810 (= e!4204976 (matchZipper!2798 (derivationStepZipper!2738 (derivationStepZipper!2738 lt!2492996 (head!14128 (t!381067 s!7408))) (head!14128 (tail!13286 (t!381067 s!7408)))) (tail!13286 (tail!13286 (t!381067 s!7408)))))))

(assert (= (and d!2179267 c!1298033) b!6995809))

(assert (= (and d!2179267 (not c!1298033)) b!6995810))

(assert (=> d!2179267 m!7686690))

(assert (=> d!2179267 m!7687330))

(assert (=> b!6995809 m!7686688))

(declare-fun m!7687360 () Bool)

(assert (=> b!6995809 m!7687360))

(assert (=> b!6995810 m!7686690))

(assert (=> b!6995810 m!7687334))

(assert (=> b!6995810 m!7686688))

(assert (=> b!6995810 m!7687334))

(declare-fun m!7687362 () Bool)

(assert (=> b!6995810 m!7687362))

(assert (=> b!6995810 m!7686690))

(assert (=> b!6995810 m!7687338))

(assert (=> b!6995810 m!7687362))

(assert (=> b!6995810 m!7687338))

(declare-fun m!7687364 () Bool)

(assert (=> b!6995810 m!7687364))

(assert (=> b!6995385 d!2179267))

(declare-fun bs!1862989 () Bool)

(declare-fun d!2179269 () Bool)

(assert (= bs!1862989 (and d!2179269 d!2179015)))

(declare-fun lambda!404352 () Int)

(assert (=> bs!1862989 (= (= (head!14128 (t!381067 s!7408)) (h!73644 s!7408)) (= lambda!404352 lambda!404310))))

(declare-fun bs!1862990 () Bool)

(assert (= bs!1862990 (and d!2179269 d!2178997)))

(assert (=> bs!1862990 (= (= (head!14128 (t!381067 s!7408)) (h!73644 s!7408)) (= lambda!404352 lambda!404309))))

(declare-fun bs!1862991 () Bool)

(assert (= bs!1862991 (and d!2179269 d!2179239)))

(assert (=> bs!1862991 (= lambda!404352 lambda!404347)))

(declare-fun bs!1862992 () Bool)

(assert (= bs!1862992 (and d!2179269 d!2179103)))

(assert (=> bs!1862992 (= (= (head!14128 (t!381067 s!7408)) (h!73644 s!7408)) (= lambda!404352 lambda!404329))))

(declare-fun bs!1862993 () Bool)

(assert (= bs!1862993 (and d!2179269 b!6995234)))

(assert (=> bs!1862993 (= (= (head!14128 (t!381067 s!7408)) (h!73644 s!7408)) (= lambda!404352 lambda!404244))))

(assert (=> d!2179269 true))

(assert (=> d!2179269 (= (derivationStepZipper!2738 lt!2492996 (head!14128 (t!381067 s!7408))) (flatMap!2244 lt!2492996 lambda!404352))))

(declare-fun bs!1862994 () Bool)

(assert (= bs!1862994 d!2179269))

(declare-fun m!7687366 () Bool)

(assert (=> bs!1862994 m!7687366))

(assert (=> b!6995385 d!2179269))

(assert (=> b!6995385 d!2179241))

(assert (=> b!6995385 d!2179243))

(declare-fun call!635015 () List!67319)

(declare-fun c!1298034 () Bool)

(declare-fun c!1298037 () Bool)

(declare-fun bm!635005 () Bool)

(assert (=> bm!635005 (= call!635015 ($colon$colon!2497 (exprs!6754 (ite c!1297913 lt!2493007 (Context!12509 call!634974))) (ite (or c!1298037 c!1298034) (regTwo!35028 (ite c!1297913 (regOne!35029 (h!73643 (exprs!6754 lt!2493029))) (regOne!35028 (h!73643 (exprs!6754 lt!2493029))))) (ite c!1297913 (regOne!35029 (h!73643 (exprs!6754 lt!2493029))) (regOne!35028 (h!73643 (exprs!6754 lt!2493029)))))))))

(declare-fun call!635013 () (Set Context!12508))

(declare-fun bm!635006 () Bool)

(declare-fun c!1298035 () Bool)

(assert (=> bm!635006 (= call!635013 (derivationStepZipperDown!1976 (ite c!1298035 (regOne!35029 (ite c!1297913 (regOne!35029 (h!73643 (exprs!6754 lt!2493029))) (regOne!35028 (h!73643 (exprs!6754 lt!2493029))))) (regOne!35028 (ite c!1297913 (regOne!35029 (h!73643 (exprs!6754 lt!2493029))) (regOne!35028 (h!73643 (exprs!6754 lt!2493029)))))) (ite c!1298035 (ite c!1297913 lt!2493007 (Context!12509 call!634974)) (Context!12509 call!635015)) (h!73644 s!7408)))))

(declare-fun b!6995811 () Bool)

(declare-fun e!4204980 () (Set Context!12508))

(declare-fun call!635014 () (Set Context!12508))

(assert (=> b!6995811 (= e!4204980 (set.union call!635013 call!635014))))

(declare-fun b!6995812 () Bool)

(declare-fun e!4204977 () (Set Context!12508))

(declare-fun call!635011 () (Set Context!12508))

(assert (=> b!6995812 (= e!4204977 (set.union call!635013 call!635011))))

(declare-fun b!6995813 () Bool)

(declare-fun e!4204979 () (Set Context!12508))

(declare-fun call!635010 () (Set Context!12508))

(assert (=> b!6995813 (= e!4204979 call!635010)))

(declare-fun b!6995814 () Bool)

(declare-fun e!4204978 () (Set Context!12508))

(assert (=> b!6995814 (= e!4204977 e!4204978)))

(assert (=> b!6995814 (= c!1298034 (is-Concat!26103 (ite c!1297913 (regOne!35029 (h!73643 (exprs!6754 lt!2493029))) (regOne!35028 (h!73643 (exprs!6754 lt!2493029))))))))

(declare-fun bm!635007 () Bool)

(declare-fun call!635012 () List!67319)

(assert (=> bm!635007 (= call!635012 call!635015)))

(declare-fun d!2179271 () Bool)

(declare-fun c!1298038 () Bool)

(assert (=> d!2179271 (= c!1298038 (and (is-ElementMatch!17258 (ite c!1297913 (regOne!35029 (h!73643 (exprs!6754 lt!2493029))) (regOne!35028 (h!73643 (exprs!6754 lt!2493029))))) (= (c!1297859 (ite c!1297913 (regOne!35029 (h!73643 (exprs!6754 lt!2493029))) (regOne!35028 (h!73643 (exprs!6754 lt!2493029))))) (h!73644 s!7408))))))

(declare-fun e!4204982 () (Set Context!12508))

(assert (=> d!2179271 (= (derivationStepZipperDown!1976 (ite c!1297913 (regOne!35029 (h!73643 (exprs!6754 lt!2493029))) (regOne!35028 (h!73643 (exprs!6754 lt!2493029)))) (ite c!1297913 lt!2493007 (Context!12509 call!634974)) (h!73644 s!7408)) e!4204982)))

(declare-fun b!6995815 () Bool)

(declare-fun e!4204981 () Bool)

(assert (=> b!6995815 (= c!1298037 e!4204981)))

(declare-fun res!2853853 () Bool)

(assert (=> b!6995815 (=> (not res!2853853) (not e!4204981))))

(assert (=> b!6995815 (= res!2853853 (is-Concat!26103 (ite c!1297913 (regOne!35029 (h!73643 (exprs!6754 lt!2493029))) (regOne!35028 (h!73643 (exprs!6754 lt!2493029))))))))

(assert (=> b!6995815 (= e!4204980 e!4204977)))

(declare-fun b!6995816 () Bool)

(assert (=> b!6995816 (= e!4204981 (nullable!7018 (regOne!35028 (ite c!1297913 (regOne!35029 (h!73643 (exprs!6754 lt!2493029))) (regOne!35028 (h!73643 (exprs!6754 lt!2493029)))))))))

(declare-fun b!6995817 () Bool)

(declare-fun c!1298036 () Bool)

(assert (=> b!6995817 (= c!1298036 (is-Star!17258 (ite c!1297913 (regOne!35029 (h!73643 (exprs!6754 lt!2493029))) (regOne!35028 (h!73643 (exprs!6754 lt!2493029))))))))

(assert (=> b!6995817 (= e!4204978 e!4204979)))

(declare-fun b!6995818 () Bool)

(assert (=> b!6995818 (= e!4204982 (set.insert (ite c!1297913 lt!2493007 (Context!12509 call!634974)) (as set.empty (Set Context!12508))))))

(declare-fun bm!635008 () Bool)

(assert (=> bm!635008 (= call!635010 call!635011)))

(declare-fun b!6995819 () Bool)

(assert (=> b!6995819 (= e!4204982 e!4204980)))

(assert (=> b!6995819 (= c!1298035 (is-Union!17258 (ite c!1297913 (regOne!35029 (h!73643 (exprs!6754 lt!2493029))) (regOne!35028 (h!73643 (exprs!6754 lt!2493029))))))))

(declare-fun bm!635009 () Bool)

(assert (=> bm!635009 (= call!635014 (derivationStepZipperDown!1976 (ite c!1298035 (regTwo!35029 (ite c!1297913 (regOne!35029 (h!73643 (exprs!6754 lt!2493029))) (regOne!35028 (h!73643 (exprs!6754 lt!2493029))))) (ite c!1298037 (regTwo!35028 (ite c!1297913 (regOne!35029 (h!73643 (exprs!6754 lt!2493029))) (regOne!35028 (h!73643 (exprs!6754 lt!2493029))))) (ite c!1298034 (regOne!35028 (ite c!1297913 (regOne!35029 (h!73643 (exprs!6754 lt!2493029))) (regOne!35028 (h!73643 (exprs!6754 lt!2493029))))) (reg!17587 (ite c!1297913 (regOne!35029 (h!73643 (exprs!6754 lt!2493029))) (regOne!35028 (h!73643 (exprs!6754 lt!2493029)))))))) (ite (or c!1298035 c!1298037) (ite c!1297913 lt!2493007 (Context!12509 call!634974)) (Context!12509 call!635012)) (h!73644 s!7408)))))

(declare-fun b!6995820 () Bool)

(assert (=> b!6995820 (= e!4204979 (as set.empty (Set Context!12508)))))

(declare-fun b!6995821 () Bool)

(assert (=> b!6995821 (= e!4204978 call!635010)))

(declare-fun bm!635010 () Bool)

(assert (=> bm!635010 (= call!635011 call!635014)))

(assert (= (and d!2179271 c!1298038) b!6995818))

(assert (= (and d!2179271 (not c!1298038)) b!6995819))

(assert (= (and b!6995819 c!1298035) b!6995811))

(assert (= (and b!6995819 (not c!1298035)) b!6995815))

(assert (= (and b!6995815 res!2853853) b!6995816))

(assert (= (and b!6995815 c!1298037) b!6995812))

(assert (= (and b!6995815 (not c!1298037)) b!6995814))

(assert (= (and b!6995814 c!1298034) b!6995821))

(assert (= (and b!6995814 (not c!1298034)) b!6995817))

(assert (= (and b!6995817 c!1298036) b!6995813))

(assert (= (and b!6995817 (not c!1298036)) b!6995820))

(assert (= (or b!6995821 b!6995813) bm!635007))

(assert (= (or b!6995821 b!6995813) bm!635008))

(assert (= (or b!6995812 bm!635008) bm!635010))

(assert (= (or b!6995812 bm!635007) bm!635005))

(assert (= (or b!6995811 b!6995812) bm!635006))

(assert (= (or b!6995811 bm!635010) bm!635009))

(declare-fun m!7687368 () Bool)

(assert (=> bm!635005 m!7687368))

(declare-fun m!7687370 () Bool)

(assert (=> b!6995818 m!7687370))

(declare-fun m!7687372 () Bool)

(assert (=> b!6995816 m!7687372))

(declare-fun m!7687374 () Bool)

(assert (=> bm!635006 m!7687374))

(declare-fun m!7687376 () Bool)

(assert (=> bm!635009 m!7687376))

(assert (=> bm!634965 d!2179271))

(declare-fun d!2179273 () Bool)

(assert (=> d!2179273 true))

(declare-fun setRes!47994 () Bool)

(assert (=> d!2179273 setRes!47994))

(declare-fun condSetEmpty!47994 () Bool)

(declare-fun res!2853856 () (Set Context!12508))

(assert (=> d!2179273 (= condSetEmpty!47994 (= res!2853856 (as set.empty (Set Context!12508))))))

(assert (=> d!2179273 (= (choose!52384 lt!2493018 lambda!404244) res!2853856)))

(declare-fun setIsEmpty!47994 () Bool)

(assert (=> setIsEmpty!47994 setRes!47994))

(declare-fun setElem!47994 () Context!12508)

(declare-fun tp!1930538 () Bool)

(declare-fun setNonEmpty!47994 () Bool)

(declare-fun e!4204985 () Bool)

(assert (=> setNonEmpty!47994 (= setRes!47994 (and tp!1930538 (inv!86005 setElem!47994) e!4204985))))

(declare-fun setRest!47994 () (Set Context!12508))

(assert (=> setNonEmpty!47994 (= res!2853856 (set.union (set.insert setElem!47994 (as set.empty (Set Context!12508))) setRest!47994))))

(declare-fun b!6995824 () Bool)

(declare-fun tp!1930537 () Bool)

(assert (=> b!6995824 (= e!4204985 tp!1930537)))

(assert (= (and d!2179273 condSetEmpty!47994) setIsEmpty!47994))

(assert (= (and d!2179273 (not condSetEmpty!47994)) setNonEmpty!47994))

(assert (= setNonEmpty!47994 b!6995824))

(declare-fun m!7687378 () Bool)

(assert (=> setNonEmpty!47994 m!7687378))

(assert (=> d!2179049 d!2179273))

(declare-fun b!6995827 () Bool)

(declare-fun res!2853858 () Bool)

(declare-fun e!4204986 () Bool)

(assert (=> b!6995827 (=> (not res!2853858) (not e!4204986))))

(declare-fun lt!2493328 () List!67320)

(assert (=> b!6995827 (= res!2853858 (= (size!40922 lt!2493328) (+ (size!40922 (++!15218 Nil!67196 (Cons!67196 (h!73644 s!7408) Nil!67196))) (size!40922 (t!381067 s!7408)))))))

(declare-fun b!6995826 () Bool)

(declare-fun e!4204987 () List!67320)

(assert (=> b!6995826 (= e!4204987 (Cons!67196 (h!73644 (++!15218 Nil!67196 (Cons!67196 (h!73644 s!7408) Nil!67196))) (++!15218 (t!381067 (++!15218 Nil!67196 (Cons!67196 (h!73644 s!7408) Nil!67196))) (t!381067 s!7408))))))

(declare-fun b!6995828 () Bool)

(assert (=> b!6995828 (= e!4204986 (or (not (= (t!381067 s!7408) Nil!67196)) (= lt!2493328 (++!15218 Nil!67196 (Cons!67196 (h!73644 s!7408) Nil!67196)))))))

(declare-fun d!2179275 () Bool)

(assert (=> d!2179275 e!4204986))

(declare-fun res!2853857 () Bool)

(assert (=> d!2179275 (=> (not res!2853857) (not e!4204986))))

(assert (=> d!2179275 (= res!2853857 (= (content!13289 lt!2493328) (set.union (content!13289 (++!15218 Nil!67196 (Cons!67196 (h!73644 s!7408) Nil!67196))) (content!13289 (t!381067 s!7408)))))))

(assert (=> d!2179275 (= lt!2493328 e!4204987)))

(declare-fun c!1298039 () Bool)

(assert (=> d!2179275 (= c!1298039 (is-Nil!67196 (++!15218 Nil!67196 (Cons!67196 (h!73644 s!7408) Nil!67196))))))

(assert (=> d!2179275 (= (++!15218 (++!15218 Nil!67196 (Cons!67196 (h!73644 s!7408) Nil!67196)) (t!381067 s!7408)) lt!2493328)))

(declare-fun b!6995825 () Bool)

(assert (=> b!6995825 (= e!4204987 (t!381067 s!7408))))

(assert (= (and d!2179275 c!1298039) b!6995825))

(assert (= (and d!2179275 (not c!1298039)) b!6995826))

(assert (= (and d!2179275 res!2853857) b!6995827))

(assert (= (and b!6995827 res!2853858) b!6995828))

(declare-fun m!7687380 () Bool)

(assert (=> b!6995827 m!7687380))

(assert (=> b!6995827 m!7686968))

(declare-fun m!7687382 () Bool)

(assert (=> b!6995827 m!7687382))

(declare-fun m!7687384 () Bool)

(assert (=> b!6995827 m!7687384))

(declare-fun m!7687386 () Bool)

(assert (=> b!6995826 m!7687386))

(declare-fun m!7687388 () Bool)

(assert (=> d!2179275 m!7687388))

(assert (=> d!2179275 m!7686968))

(declare-fun m!7687390 () Bool)

(assert (=> d!2179275 m!7687390))

(declare-fun m!7687392 () Bool)

(assert (=> d!2179275 m!7687392))

(assert (=> b!6995599 d!2179275))

(declare-fun b!6995831 () Bool)

(declare-fun res!2853860 () Bool)

(declare-fun e!4204988 () Bool)

(assert (=> b!6995831 (=> (not res!2853860) (not e!4204988))))

(declare-fun lt!2493329 () List!67320)

(assert (=> b!6995831 (= res!2853860 (= (size!40922 lt!2493329) (+ (size!40922 Nil!67196) (size!40922 (Cons!67196 (h!73644 s!7408) Nil!67196)))))))

(declare-fun b!6995830 () Bool)

(declare-fun e!4204989 () List!67320)

(assert (=> b!6995830 (= e!4204989 (Cons!67196 (h!73644 Nil!67196) (++!15218 (t!381067 Nil!67196) (Cons!67196 (h!73644 s!7408) Nil!67196))))))

(declare-fun b!6995832 () Bool)

(assert (=> b!6995832 (= e!4204988 (or (not (= (Cons!67196 (h!73644 s!7408) Nil!67196) Nil!67196)) (= lt!2493329 Nil!67196)))))

(declare-fun d!2179277 () Bool)

(assert (=> d!2179277 e!4204988))

(declare-fun res!2853859 () Bool)

(assert (=> d!2179277 (=> (not res!2853859) (not e!4204988))))

(assert (=> d!2179277 (= res!2853859 (= (content!13289 lt!2493329) (set.union (content!13289 Nil!67196) (content!13289 (Cons!67196 (h!73644 s!7408) Nil!67196)))))))

(assert (=> d!2179277 (= lt!2493329 e!4204989)))

(declare-fun c!1298040 () Bool)

(assert (=> d!2179277 (= c!1298040 (is-Nil!67196 Nil!67196))))

(assert (=> d!2179277 (= (++!15218 Nil!67196 (Cons!67196 (h!73644 s!7408) Nil!67196)) lt!2493329)))

(declare-fun b!6995829 () Bool)

(assert (=> b!6995829 (= e!4204989 (Cons!67196 (h!73644 s!7408) Nil!67196))))

(assert (= (and d!2179277 c!1298040) b!6995829))

(assert (= (and d!2179277 (not c!1298040)) b!6995830))

(assert (= (and d!2179277 res!2853859) b!6995831))

(assert (= (and b!6995831 res!2853860) b!6995832))

(declare-fun m!7687394 () Bool)

(assert (=> b!6995831 m!7687394))

(declare-fun m!7687396 () Bool)

(assert (=> b!6995831 m!7687396))

(declare-fun m!7687398 () Bool)

(assert (=> b!6995831 m!7687398))

(declare-fun m!7687400 () Bool)

(assert (=> b!6995830 m!7687400))

(declare-fun m!7687402 () Bool)

(assert (=> d!2179277 m!7687402))

(declare-fun m!7687404 () Bool)

(assert (=> d!2179277 m!7687404))

(declare-fun m!7687406 () Bool)

(assert (=> d!2179277 m!7687406))

(assert (=> b!6995599 d!2179277))

(declare-fun d!2179279 () Bool)

(assert (=> d!2179279 (= (++!15218 (++!15218 Nil!67196 (Cons!67196 (h!73644 s!7408) Nil!67196)) (t!381067 s!7408)) s!7408)))

(declare-fun lt!2493332 () Unit!161171)

(declare-fun choose!52405 (List!67320 C!34786 List!67320 List!67320) Unit!161171)

(assert (=> d!2179279 (= lt!2493332 (choose!52405 Nil!67196 (h!73644 s!7408) (t!381067 s!7408) s!7408))))

(assert (=> d!2179279 (= (++!15218 Nil!67196 (Cons!67196 (h!73644 s!7408) (t!381067 s!7408))) s!7408)))

(assert (=> d!2179279 (= (lemmaMoveElementToOtherListKeepsConcatEq!2873 Nil!67196 (h!73644 s!7408) (t!381067 s!7408) s!7408) lt!2493332)))

(declare-fun bs!1862995 () Bool)

(assert (= bs!1862995 d!2179279))

(assert (=> bs!1862995 m!7686968))

(assert (=> bs!1862995 m!7686968))

(assert (=> bs!1862995 m!7686970))

(declare-fun m!7687408 () Bool)

(assert (=> bs!1862995 m!7687408))

(declare-fun m!7687410 () Bool)

(assert (=> bs!1862995 m!7687410))

(assert (=> b!6995599 d!2179279))

(declare-fun b!6995833 () Bool)

(declare-fun e!4204992 () Option!16763)

(assert (=> b!6995833 (= e!4204992 None!16762)))

(declare-fun d!2179281 () Bool)

(declare-fun e!4204993 () Bool)

(assert (=> d!2179281 e!4204993))

(declare-fun res!2853865 () Bool)

(assert (=> d!2179281 (=> res!2853865 e!4204993)))

(declare-fun e!4204991 () Bool)

(assert (=> d!2179281 (= res!2853865 e!4204991)))

(declare-fun res!2853861 () Bool)

(assert (=> d!2179281 (=> (not res!2853861) (not e!4204991))))

(declare-fun lt!2493335 () Option!16763)

(assert (=> d!2179281 (= res!2853861 (isDefined!13464 lt!2493335))))

(declare-fun e!4204990 () Option!16763)

(assert (=> d!2179281 (= lt!2493335 e!4204990)))

(declare-fun c!1298041 () Bool)

(declare-fun e!4204994 () Bool)

(assert (=> d!2179281 (= c!1298041 e!4204994)))

(declare-fun res!2853863 () Bool)

(assert (=> d!2179281 (=> (not res!2853863) (not e!4204994))))

(assert (=> d!2179281 (= res!2853863 (matchZipper!2798 lt!2493018 (++!15218 Nil!67196 (Cons!67196 (h!73644 s!7408) Nil!67196))))))

(assert (=> d!2179281 (= (++!15218 (++!15218 Nil!67196 (Cons!67196 (h!73644 s!7408) Nil!67196)) (t!381067 s!7408)) s!7408)))

(assert (=> d!2179281 (= (findConcatSeparationZippers!279 lt!2493018 lt!2493021 (++!15218 Nil!67196 (Cons!67196 (h!73644 s!7408) Nil!67196)) (t!381067 s!7408) s!7408) lt!2493335)))

(declare-fun b!6995834 () Bool)

(assert (=> b!6995834 (= e!4204991 (= (++!15218 (_1!37234 (get!23557 lt!2493335)) (_2!37234 (get!23557 lt!2493335))) s!7408))))

(declare-fun b!6995835 () Bool)

(assert (=> b!6995835 (= e!4204993 (not (isDefined!13464 lt!2493335)))))

(declare-fun b!6995836 () Bool)

(declare-fun res!2853864 () Bool)

(assert (=> b!6995836 (=> (not res!2853864) (not e!4204991))))

(assert (=> b!6995836 (= res!2853864 (matchZipper!2798 lt!2493021 (_2!37234 (get!23557 lt!2493335))))))

(declare-fun b!6995837 () Bool)

(assert (=> b!6995837 (= e!4204990 e!4204992)))

(declare-fun c!1298042 () Bool)

(assert (=> b!6995837 (= c!1298042 (is-Nil!67196 (t!381067 s!7408)))))

(declare-fun b!6995838 () Bool)

(declare-fun lt!2493334 () Unit!161171)

(declare-fun lt!2493333 () Unit!161171)

(assert (=> b!6995838 (= lt!2493334 lt!2493333)))

(assert (=> b!6995838 (= (++!15218 (++!15218 (++!15218 Nil!67196 (Cons!67196 (h!73644 s!7408) Nil!67196)) (Cons!67196 (h!73644 (t!381067 s!7408)) Nil!67196)) (t!381067 (t!381067 s!7408))) s!7408)))

(assert (=> b!6995838 (= lt!2493333 (lemmaMoveElementToOtherListKeepsConcatEq!2873 (++!15218 Nil!67196 (Cons!67196 (h!73644 s!7408) Nil!67196)) (h!73644 (t!381067 s!7408)) (t!381067 (t!381067 s!7408)) s!7408))))

(assert (=> b!6995838 (= e!4204992 (findConcatSeparationZippers!279 lt!2493018 lt!2493021 (++!15218 (++!15218 Nil!67196 (Cons!67196 (h!73644 s!7408) Nil!67196)) (Cons!67196 (h!73644 (t!381067 s!7408)) Nil!67196)) (t!381067 (t!381067 s!7408)) s!7408))))

(declare-fun b!6995839 () Bool)

(declare-fun res!2853862 () Bool)

(assert (=> b!6995839 (=> (not res!2853862) (not e!4204991))))

(assert (=> b!6995839 (= res!2853862 (matchZipper!2798 lt!2493018 (_1!37234 (get!23557 lt!2493335))))))

(declare-fun b!6995840 () Bool)

(assert (=> b!6995840 (= e!4204994 (matchZipper!2798 lt!2493021 (t!381067 s!7408)))))

(declare-fun b!6995841 () Bool)

(assert (=> b!6995841 (= e!4204990 (Some!16762 (tuple2!67863 (++!15218 Nil!67196 (Cons!67196 (h!73644 s!7408) Nil!67196)) (t!381067 s!7408))))))

(assert (= (and d!2179281 res!2853863) b!6995840))

(assert (= (and d!2179281 c!1298041) b!6995841))

(assert (= (and d!2179281 (not c!1298041)) b!6995837))

(assert (= (and b!6995837 c!1298042) b!6995833))

(assert (= (and b!6995837 (not c!1298042)) b!6995838))

(assert (= (and d!2179281 res!2853861) b!6995839))

(assert (= (and b!6995839 res!2853862) b!6995836))

(assert (= (and b!6995836 res!2853864) b!6995834))

(assert (= (and d!2179281 (not res!2853865)) b!6995835))

(declare-fun m!7687412 () Bool)

(assert (=> b!6995836 m!7687412))

(declare-fun m!7687414 () Bool)

(assert (=> b!6995836 m!7687414))

(declare-fun m!7687416 () Bool)

(assert (=> d!2179281 m!7687416))

(assert (=> d!2179281 m!7686968))

(declare-fun m!7687418 () Bool)

(assert (=> d!2179281 m!7687418))

(assert (=> d!2179281 m!7686968))

(assert (=> d!2179281 m!7686970))

(assert (=> b!6995835 m!7687416))

(assert (=> b!6995839 m!7687412))

(declare-fun m!7687420 () Bool)

(assert (=> b!6995839 m!7687420))

(assert (=> b!6995834 m!7687412))

(declare-fun m!7687422 () Bool)

(assert (=> b!6995834 m!7687422))

(assert (=> b!6995838 m!7686968))

(declare-fun m!7687424 () Bool)

(assert (=> b!6995838 m!7687424))

(assert (=> b!6995838 m!7687424))

(declare-fun m!7687426 () Bool)

(assert (=> b!6995838 m!7687426))

(assert (=> b!6995838 m!7686968))

(declare-fun m!7687428 () Bool)

(assert (=> b!6995838 m!7687428))

(assert (=> b!6995838 m!7687424))

(declare-fun m!7687430 () Bool)

(assert (=> b!6995838 m!7687430))

(declare-fun m!7687432 () Bool)

(assert (=> b!6995840 m!7687432))

(assert (=> b!6995599 d!2179281))

(declare-fun d!2179283 () Bool)

(declare-fun res!2853870 () Bool)

(declare-fun e!4204999 () Bool)

(assert (=> d!2179283 (=> res!2853870 e!4204999)))

(assert (=> d!2179283 (= res!2853870 (is-Nil!67197 lt!2493229))))

(assert (=> d!2179283 (= (noDuplicate!2535 lt!2493229) e!4204999)))

(declare-fun b!6995846 () Bool)

(declare-fun e!4205000 () Bool)

(assert (=> b!6995846 (= e!4204999 e!4205000)))

(declare-fun res!2853871 () Bool)

(assert (=> b!6995846 (=> (not res!2853871) (not e!4205000))))

(assert (=> b!6995846 (= res!2853871 (not (contains!20416 (t!381068 lt!2493229) (h!73645 lt!2493229))))))

(declare-fun b!6995847 () Bool)

(assert (=> b!6995847 (= e!4205000 (noDuplicate!2535 (t!381068 lt!2493229)))))

(assert (= (and d!2179283 (not res!2853870)) b!6995846))

(assert (= (and b!6995846 res!2853871) b!6995847))

(declare-fun m!7687434 () Bool)

(assert (=> b!6995846 m!7687434))

(declare-fun m!7687436 () Bool)

(assert (=> b!6995847 m!7687436))

(assert (=> d!2179045 d!2179283))

(declare-fun d!2179285 () Bool)

(declare-fun e!4205007 () Bool)

(assert (=> d!2179285 e!4205007))

(declare-fun res!2853876 () Bool)

(assert (=> d!2179285 (=> (not res!2853876) (not e!4205007))))

(declare-fun res!2853877 () List!67321)

(assert (=> d!2179285 (= res!2853876 (noDuplicate!2535 res!2853877))))

(declare-fun e!4205009 () Bool)

(assert (=> d!2179285 e!4205009))

(assert (=> d!2179285 (= (choose!52386 z1!570) res!2853877)))

(declare-fun b!6995855 () Bool)

(declare-fun e!4205008 () Bool)

(declare-fun tp!1930543 () Bool)

(assert (=> b!6995855 (= e!4205008 tp!1930543)))

(declare-fun tp!1930544 () Bool)

(declare-fun b!6995854 () Bool)

(assert (=> b!6995854 (= e!4205009 (and (inv!86005 (h!73645 res!2853877)) e!4205008 tp!1930544))))

(declare-fun b!6995856 () Bool)

(assert (=> b!6995856 (= e!4205007 (= (content!13291 res!2853877) z1!570))))

(assert (= b!6995854 b!6995855))

(assert (= (and d!2179285 (is-Cons!67197 res!2853877)) b!6995854))

(assert (= (and d!2179285 res!2853876) b!6995856))

(declare-fun m!7687438 () Bool)

(assert (=> d!2179285 m!7687438))

(declare-fun m!7687440 () Bool)

(assert (=> b!6995854 m!7687440))

(declare-fun m!7687442 () Bool)

(assert (=> b!6995856 m!7687442))

(assert (=> d!2179045 d!2179285))

(declare-fun d!2179287 () Bool)

(declare-fun c!1298043 () Bool)

(assert (=> d!2179287 (= c!1298043 (is-Nil!67197 lt!2493229))))

(declare-fun e!4205010 () (Set Context!12508))

(assert (=> d!2179287 (= (content!13291 lt!2493229) e!4205010)))

(declare-fun b!6995857 () Bool)

(assert (=> b!6995857 (= e!4205010 (as set.empty (Set Context!12508)))))

(declare-fun b!6995858 () Bool)

(assert (=> b!6995858 (= e!4205010 (set.union (set.insert (h!73645 lt!2493229) (as set.empty (Set Context!12508))) (content!13291 (t!381068 lt!2493229))))))

(assert (= (and d!2179287 c!1298043) b!6995857))

(assert (= (and d!2179287 (not c!1298043)) b!6995858))

(declare-fun m!7687444 () Bool)

(assert (=> b!6995858 m!7687444))

(declare-fun m!7687446 () Bool)

(assert (=> b!6995858 m!7687446))

(assert (=> b!6995492 d!2179287))

(declare-fun d!2179289 () Bool)

(declare-fun c!1298044 () Bool)

(assert (=> d!2179289 (= c!1298044 (isEmpty!39219 (t!381067 s!7408)))))

(declare-fun e!4205011 () Bool)

(assert (=> d!2179289 (= (matchZipper!2798 (set.union lt!2492985 lt!2492996) (t!381067 s!7408)) e!4205011)))

(declare-fun b!6995859 () Bool)

(assert (=> b!6995859 (= e!4205011 (nullableZipper!2453 (set.union lt!2492985 lt!2492996)))))

(declare-fun b!6995860 () Bool)

(assert (=> b!6995860 (= e!4205011 (matchZipper!2798 (derivationStepZipper!2738 (set.union lt!2492985 lt!2492996) (head!14128 (t!381067 s!7408))) (tail!13286 (t!381067 s!7408))))))

(assert (= (and d!2179289 c!1298044) b!6995859))

(assert (= (and d!2179289 (not c!1298044)) b!6995860))

(assert (=> d!2179289 m!7686682))

(declare-fun m!7687448 () Bool)

(assert (=> b!6995859 m!7687448))

(assert (=> b!6995860 m!7686686))

(assert (=> b!6995860 m!7686686))

(declare-fun m!7687450 () Bool)

(assert (=> b!6995860 m!7687450))

(assert (=> b!6995860 m!7686690))

(assert (=> b!6995860 m!7687450))

(assert (=> b!6995860 m!7686690))

(declare-fun m!7687452 () Bool)

(assert (=> b!6995860 m!7687452))

(assert (=> d!2179031 d!2179289))

(assert (=> d!2179031 d!2179037))

(declare-fun d!2179291 () Bool)

(declare-fun e!4205014 () Bool)

(assert (=> d!2179291 (= (matchZipper!2798 (set.union lt!2492985 lt!2492996) (t!381067 s!7408)) e!4205014)))

(declare-fun res!2853880 () Bool)

(assert (=> d!2179291 (=> res!2853880 e!4205014)))

(assert (=> d!2179291 (= res!2853880 (matchZipper!2798 lt!2492985 (t!381067 s!7408)))))

(assert (=> d!2179291 true))

(declare-fun _$48!2429 () Unit!161171)

(assert (=> d!2179291 (= (choose!52388 lt!2492985 lt!2492996 (t!381067 s!7408)) _$48!2429)))

(declare-fun b!6995863 () Bool)

(assert (=> b!6995863 (= e!4205014 (matchZipper!2798 lt!2492996 (t!381067 s!7408)))))

(assert (= (and d!2179291 (not res!2853880)) b!6995863))

(assert (=> d!2179291 m!7686810))

(assert (=> d!2179291 m!7686526))

(assert (=> b!6995863 m!7686422))

(assert (=> d!2179031 d!2179291))

(assert (=> d!2179057 d!2179047))

(declare-fun d!2179293 () Bool)

(assert (=> d!2179293 (= (map!15534 lt!2493018 lambda!404242) (set.insert (dynLambda!26965 lambda!404242 lt!2492984) (as set.empty (Set Context!12508))))))

(assert (=> d!2179293 true))

(declare-fun _$12!2096 () Unit!161171)

(assert (=> d!2179293 (= (choose!52395 lt!2493018 lt!2492984 lambda!404242) _$12!2096)))

(declare-fun b_lambda!263121 () Bool)

(assert (=> (not b_lambda!263121) (not d!2179293)))

(declare-fun bs!1862996 () Bool)

(assert (= bs!1862996 d!2179293))

(assert (=> bs!1862996 m!7686458))

(assert (=> bs!1862996 m!7686878))

(assert (=> bs!1862996 m!7686878))

(assert (=> bs!1862996 m!7686880))

(assert (=> d!2179057 d!2179293))

(declare-fun bs!1862997 () Bool)

(declare-fun d!2179295 () Bool)

(assert (= bs!1862997 (and d!2179295 b!6995245)))

(declare-fun lambda!404353 () Int)

(assert (=> bs!1862997 (not (= lambda!404353 lambda!404241))))

(declare-fun bs!1862998 () Bool)

(assert (= bs!1862998 (and d!2179295 d!2179027)))

(assert (=> bs!1862998 (not (= lambda!404353 lambda!404316))))

(declare-fun bs!1862999 () Bool)

(assert (= bs!1862999 (and d!2179295 d!2179025)))

(assert (=> bs!1862999 (not (= lambda!404353 lambda!404313))))

(declare-fun bs!1863000 () Bool)

(assert (= bs!1863000 (and d!2179295 d!2179259)))

(assert (=> bs!1863000 (= lambda!404353 lambda!404351)))

(declare-fun bs!1863001 () Bool)

(assert (= bs!1863001 (and d!2179295 d!2179255)))

(assert (=> bs!1863001 (= lambda!404353 lambda!404350)))

(assert (=> d!2179295 (= (nullableZipper!2453 lt!2493018) (exists!3067 lt!2493018 lambda!404353))))

(declare-fun bs!1863002 () Bool)

(assert (= bs!1863002 d!2179295))

(declare-fun m!7687454 () Bool)

(assert (=> bs!1863002 m!7687454))

(assert (=> b!6995603 d!2179295))

(declare-fun d!2179297 () Bool)

(assert (=> d!2179297 (= (isDefined!13464 lt!2493257) (not (isEmpty!39223 lt!2493257)))))

(declare-fun bs!1863003 () Bool)

(assert (= bs!1863003 d!2179297))

(declare-fun m!7687456 () Bool)

(assert (=> bs!1863003 m!7687456))

(assert (=> b!6995596 d!2179297))

(declare-fun d!2179299 () Bool)

(declare-fun c!1298045 () Bool)

(assert (=> d!2179299 (= c!1298045 (isEmpty!39219 s!7408))))

(declare-fun e!4205015 () Bool)

(assert (=> d!2179299 (= (matchZipper!2798 (appendTo!379 lt!2493018 ct2!306) s!7408) e!4205015)))

(declare-fun b!6995864 () Bool)

(assert (=> b!6995864 (= e!4205015 (nullableZipper!2453 (appendTo!379 lt!2493018 ct2!306)))))

(declare-fun b!6995865 () Bool)

(assert (=> b!6995865 (= e!4205015 (matchZipper!2798 (derivationStepZipper!2738 (appendTo!379 lt!2493018 ct2!306) (head!14128 s!7408)) (tail!13286 s!7408)))))

(assert (= (and d!2179299 c!1298045) b!6995864))

(assert (= (and d!2179299 (not c!1298045)) b!6995865))

(assert (=> d!2179299 m!7686786))

(assert (=> b!6995864 m!7687004))

(declare-fun m!7687458 () Bool)

(assert (=> b!6995864 m!7687458))

(assert (=> b!6995865 m!7686790))

(assert (=> b!6995865 m!7687004))

(assert (=> b!6995865 m!7686790))

(declare-fun m!7687460 () Bool)

(assert (=> b!6995865 m!7687460))

(assert (=> b!6995865 m!7686794))

(assert (=> b!6995865 m!7687460))

(assert (=> b!6995865 m!7686794))

(declare-fun m!7687462 () Bool)

(assert (=> b!6995865 m!7687462))

(assert (=> d!2179091 d!2179299))

(declare-fun bs!1863004 () Bool)

(declare-fun d!2179301 () Bool)

(assert (= bs!1863004 (and d!2179301 b!6995229)))

(declare-fun lambda!404354 () Int)

(assert (=> bs!1863004 (= lambda!404354 lambda!404242)))

(declare-fun bs!1863005 () Bool)

(assert (= bs!1863005 (and d!2179301 d!2179071)))

(assert (=> bs!1863005 (= lambda!404354 lambda!404324)))

(assert (=> d!2179301 true))

(assert (=> d!2179301 (= (appendTo!379 lt!2493018 ct2!306) (map!15534 lt!2493018 lambda!404354))))

(declare-fun bs!1863006 () Bool)

(assert (= bs!1863006 d!2179301))

(declare-fun m!7687464 () Bool)

(assert (=> bs!1863006 m!7687464))

(assert (=> d!2179091 d!2179301))

(declare-fun d!2179303 () Bool)

(assert (=> d!2179303 (= (isDefined!13464 (findConcatSeparationZippers!279 lt!2493018 (set.insert ct2!306 (as set.empty (Set Context!12508))) Nil!67196 s!7408 s!7408)) (not (isEmpty!39223 (findConcatSeparationZippers!279 lt!2493018 (set.insert ct2!306 (as set.empty (Set Context!12508))) Nil!67196 s!7408 s!7408))))))

(declare-fun bs!1863007 () Bool)

(assert (= bs!1863007 d!2179303))

(assert (=> bs!1863007 m!7687012))

(declare-fun m!7687466 () Bool)

(assert (=> bs!1863007 m!7687466))

(assert (=> d!2179091 d!2179303))

(declare-fun d!2179305 () Bool)

(assert (=> d!2179305 (isDefined!13464 (findConcatSeparationZippers!279 lt!2493018 (set.insert ct2!306 (as set.empty (Set Context!12508))) Nil!67196 s!7408 s!7408))))

(assert (=> d!2179305 true))

(declare-fun _$50!545 () Unit!161171)

(assert (=> d!2179305 (= (choose!52400 lt!2493018 ct2!306 s!7408) _$50!545)))

(declare-fun bs!1863008 () Bool)

(assert (= bs!1863008 d!2179305))

(assert (=> bs!1863008 m!7686440))

(assert (=> bs!1863008 m!7686440))

(assert (=> bs!1863008 m!7687012))

(assert (=> bs!1863008 m!7687012))

(assert (=> bs!1863008 m!7687014))

(assert (=> d!2179091 d!2179305))

(declare-fun b!6995866 () Bool)

(declare-fun e!4205018 () Option!16763)

(assert (=> b!6995866 (= e!4205018 None!16762)))

(declare-fun d!2179307 () Bool)

(declare-fun e!4205019 () Bool)

(assert (=> d!2179307 e!4205019))

(declare-fun res!2853885 () Bool)

(assert (=> d!2179307 (=> res!2853885 e!4205019)))

(declare-fun e!4205017 () Bool)

(assert (=> d!2179307 (= res!2853885 e!4205017)))

(declare-fun res!2853881 () Bool)

(assert (=> d!2179307 (=> (not res!2853881) (not e!4205017))))

(declare-fun lt!2493338 () Option!16763)

(assert (=> d!2179307 (= res!2853881 (isDefined!13464 lt!2493338))))

(declare-fun e!4205016 () Option!16763)

(assert (=> d!2179307 (= lt!2493338 e!4205016)))

(declare-fun c!1298046 () Bool)

(declare-fun e!4205020 () Bool)

(assert (=> d!2179307 (= c!1298046 e!4205020)))

(declare-fun res!2853883 () Bool)

(assert (=> d!2179307 (=> (not res!2853883) (not e!4205020))))

(assert (=> d!2179307 (= res!2853883 (matchZipper!2798 lt!2493018 Nil!67196))))

(assert (=> d!2179307 (= (++!15218 Nil!67196 s!7408) s!7408)))

(assert (=> d!2179307 (= (findConcatSeparationZippers!279 lt!2493018 (set.insert ct2!306 (as set.empty (Set Context!12508))) Nil!67196 s!7408 s!7408) lt!2493338)))

(declare-fun b!6995867 () Bool)

(assert (=> b!6995867 (= e!4205017 (= (++!15218 (_1!37234 (get!23557 lt!2493338)) (_2!37234 (get!23557 lt!2493338))) s!7408))))

(declare-fun b!6995868 () Bool)

(assert (=> b!6995868 (= e!4205019 (not (isDefined!13464 lt!2493338)))))

(declare-fun b!6995869 () Bool)

(declare-fun res!2853884 () Bool)

(assert (=> b!6995869 (=> (not res!2853884) (not e!4205017))))

(assert (=> b!6995869 (= res!2853884 (matchZipper!2798 (set.insert ct2!306 (as set.empty (Set Context!12508))) (_2!37234 (get!23557 lt!2493338))))))

(declare-fun b!6995870 () Bool)

(assert (=> b!6995870 (= e!4205016 e!4205018)))

(declare-fun c!1298047 () Bool)

(assert (=> b!6995870 (= c!1298047 (is-Nil!67196 s!7408))))

(declare-fun b!6995871 () Bool)

(declare-fun lt!2493337 () Unit!161171)

(declare-fun lt!2493336 () Unit!161171)

(assert (=> b!6995871 (= lt!2493337 lt!2493336)))

(assert (=> b!6995871 (= (++!15218 (++!15218 Nil!67196 (Cons!67196 (h!73644 s!7408) Nil!67196)) (t!381067 s!7408)) s!7408)))

(assert (=> b!6995871 (= lt!2493336 (lemmaMoveElementToOtherListKeepsConcatEq!2873 Nil!67196 (h!73644 s!7408) (t!381067 s!7408) s!7408))))

(assert (=> b!6995871 (= e!4205018 (findConcatSeparationZippers!279 lt!2493018 (set.insert ct2!306 (as set.empty (Set Context!12508))) (++!15218 Nil!67196 (Cons!67196 (h!73644 s!7408) Nil!67196)) (t!381067 s!7408) s!7408))))

(declare-fun b!6995872 () Bool)

(declare-fun res!2853882 () Bool)

(assert (=> b!6995872 (=> (not res!2853882) (not e!4205017))))

(assert (=> b!6995872 (= res!2853882 (matchZipper!2798 lt!2493018 (_1!37234 (get!23557 lt!2493338))))))

(declare-fun b!6995873 () Bool)

(assert (=> b!6995873 (= e!4205020 (matchZipper!2798 (set.insert ct2!306 (as set.empty (Set Context!12508))) s!7408))))

(declare-fun b!6995874 () Bool)

(assert (=> b!6995874 (= e!4205016 (Some!16762 (tuple2!67863 Nil!67196 s!7408)))))

(assert (= (and d!2179307 res!2853883) b!6995873))

(assert (= (and d!2179307 c!1298046) b!6995874))

(assert (= (and d!2179307 (not c!1298046)) b!6995870))

(assert (= (and b!6995870 c!1298047) b!6995866))

(assert (= (and b!6995870 (not c!1298047)) b!6995871))

(assert (= (and d!2179307 res!2853881) b!6995872))

(assert (= (and b!6995872 res!2853882) b!6995869))

(assert (= (and b!6995869 res!2853884) b!6995867))

(assert (= (and d!2179307 (not res!2853885)) b!6995868))

(declare-fun m!7687468 () Bool)

(assert (=> b!6995869 m!7687468))

(assert (=> b!6995869 m!7686440))

(declare-fun m!7687470 () Bool)

(assert (=> b!6995869 m!7687470))

(declare-fun m!7687472 () Bool)

(assert (=> d!2179307 m!7687472))

(assert (=> d!2179307 m!7686960))

(assert (=> d!2179307 m!7686962))

(assert (=> b!6995868 m!7687472))

(assert (=> b!6995872 m!7687468))

(declare-fun m!7687474 () Bool)

(assert (=> b!6995872 m!7687474))

(assert (=> b!6995867 m!7687468))

(declare-fun m!7687476 () Bool)

(assert (=> b!6995867 m!7687476))

(assert (=> b!6995871 m!7686968))

(assert (=> b!6995871 m!7686968))

(assert (=> b!6995871 m!7686970))

(assert (=> b!6995871 m!7686972))

(assert (=> b!6995871 m!7686440))

(assert (=> b!6995871 m!7686968))

(declare-fun m!7687478 () Bool)

(assert (=> b!6995871 m!7687478))

(assert (=> b!6995873 m!7686440))

(declare-fun m!7687480 () Bool)

(assert (=> b!6995873 m!7687480))

(assert (=> d!2179091 d!2179307))

(declare-fun c!1298048 () Bool)

(declare-fun bm!635011 () Bool)

(declare-fun c!1298051 () Bool)

(declare-fun call!635021 () List!67319)

(assert (=> bm!635011 (= call!635021 ($colon$colon!2497 (exprs!6754 (Context!12509 (t!381066 (exprs!6754 lt!2492982)))) (ite (or c!1298051 c!1298048) (regTwo!35028 (h!73643 (exprs!6754 lt!2492982))) (h!73643 (exprs!6754 lt!2492982)))))))

(declare-fun c!1298049 () Bool)

(declare-fun call!635019 () (Set Context!12508))

(declare-fun bm!635012 () Bool)

(assert (=> bm!635012 (= call!635019 (derivationStepZipperDown!1976 (ite c!1298049 (regOne!35029 (h!73643 (exprs!6754 lt!2492982))) (regOne!35028 (h!73643 (exprs!6754 lt!2492982)))) (ite c!1298049 (Context!12509 (t!381066 (exprs!6754 lt!2492982))) (Context!12509 call!635021)) (h!73644 s!7408)))))

(declare-fun b!6995875 () Bool)

(declare-fun e!4205024 () (Set Context!12508))

(declare-fun call!635020 () (Set Context!12508))

(assert (=> b!6995875 (= e!4205024 (set.union call!635019 call!635020))))

(declare-fun b!6995876 () Bool)

(declare-fun e!4205021 () (Set Context!12508))

(declare-fun call!635017 () (Set Context!12508))

(assert (=> b!6995876 (= e!4205021 (set.union call!635019 call!635017))))

(declare-fun b!6995877 () Bool)

(declare-fun e!4205023 () (Set Context!12508))

(declare-fun call!635016 () (Set Context!12508))

(assert (=> b!6995877 (= e!4205023 call!635016)))

(declare-fun b!6995878 () Bool)

(declare-fun e!4205022 () (Set Context!12508))

(assert (=> b!6995878 (= e!4205021 e!4205022)))

(assert (=> b!6995878 (= c!1298048 (is-Concat!26103 (h!73643 (exprs!6754 lt!2492982))))))

(declare-fun bm!635013 () Bool)

(declare-fun call!635018 () List!67319)

(assert (=> bm!635013 (= call!635018 call!635021)))

(declare-fun d!2179309 () Bool)

(declare-fun c!1298052 () Bool)

(assert (=> d!2179309 (= c!1298052 (and (is-ElementMatch!17258 (h!73643 (exprs!6754 lt!2492982))) (= (c!1297859 (h!73643 (exprs!6754 lt!2492982))) (h!73644 s!7408))))))

(declare-fun e!4205026 () (Set Context!12508))

(assert (=> d!2179309 (= (derivationStepZipperDown!1976 (h!73643 (exprs!6754 lt!2492982)) (Context!12509 (t!381066 (exprs!6754 lt!2492982))) (h!73644 s!7408)) e!4205026)))

(declare-fun b!6995879 () Bool)

(declare-fun e!4205025 () Bool)

(assert (=> b!6995879 (= c!1298051 e!4205025)))

(declare-fun res!2853886 () Bool)

(assert (=> b!6995879 (=> (not res!2853886) (not e!4205025))))

(assert (=> b!6995879 (= res!2853886 (is-Concat!26103 (h!73643 (exprs!6754 lt!2492982))))))

(assert (=> b!6995879 (= e!4205024 e!4205021)))

(declare-fun b!6995880 () Bool)

(assert (=> b!6995880 (= e!4205025 (nullable!7018 (regOne!35028 (h!73643 (exprs!6754 lt!2492982)))))))

(declare-fun b!6995881 () Bool)

(declare-fun c!1298050 () Bool)

(assert (=> b!6995881 (= c!1298050 (is-Star!17258 (h!73643 (exprs!6754 lt!2492982))))))

(assert (=> b!6995881 (= e!4205022 e!4205023)))

(declare-fun b!6995882 () Bool)

(assert (=> b!6995882 (= e!4205026 (set.insert (Context!12509 (t!381066 (exprs!6754 lt!2492982))) (as set.empty (Set Context!12508))))))

(declare-fun bm!635014 () Bool)

(assert (=> bm!635014 (= call!635016 call!635017)))

(declare-fun b!6995883 () Bool)

(assert (=> b!6995883 (= e!4205026 e!4205024)))

(assert (=> b!6995883 (= c!1298049 (is-Union!17258 (h!73643 (exprs!6754 lt!2492982))))))

(declare-fun bm!635015 () Bool)

(assert (=> bm!635015 (= call!635020 (derivationStepZipperDown!1976 (ite c!1298049 (regTwo!35029 (h!73643 (exprs!6754 lt!2492982))) (ite c!1298051 (regTwo!35028 (h!73643 (exprs!6754 lt!2492982))) (ite c!1298048 (regOne!35028 (h!73643 (exprs!6754 lt!2492982))) (reg!17587 (h!73643 (exprs!6754 lt!2492982)))))) (ite (or c!1298049 c!1298051) (Context!12509 (t!381066 (exprs!6754 lt!2492982))) (Context!12509 call!635018)) (h!73644 s!7408)))))

(declare-fun b!6995884 () Bool)

(assert (=> b!6995884 (= e!4205023 (as set.empty (Set Context!12508)))))

(declare-fun b!6995885 () Bool)

(assert (=> b!6995885 (= e!4205022 call!635016)))

(declare-fun bm!635016 () Bool)

(assert (=> bm!635016 (= call!635017 call!635020)))

(assert (= (and d!2179309 c!1298052) b!6995882))

(assert (= (and d!2179309 (not c!1298052)) b!6995883))

(assert (= (and b!6995883 c!1298049) b!6995875))

(assert (= (and b!6995883 (not c!1298049)) b!6995879))

(assert (= (and b!6995879 res!2853886) b!6995880))

(assert (= (and b!6995879 c!1298051) b!6995876))

(assert (= (and b!6995879 (not c!1298051)) b!6995878))

(assert (= (and b!6995878 c!1298048) b!6995885))

(assert (= (and b!6995878 (not c!1298048)) b!6995881))

(assert (= (and b!6995881 c!1298050) b!6995877))

(assert (= (and b!6995881 (not c!1298050)) b!6995884))

(assert (= (or b!6995885 b!6995877) bm!635013))

(assert (= (or b!6995885 b!6995877) bm!635014))

(assert (= (or b!6995876 bm!635014) bm!635016))

(assert (= (or b!6995876 bm!635013) bm!635011))

(assert (= (or b!6995875 b!6995876) bm!635012))

(assert (= (or b!6995875 bm!635016) bm!635015))

(declare-fun m!7687482 () Bool)

(assert (=> bm!635011 m!7687482))

(declare-fun m!7687484 () Bool)

(assert (=> b!6995882 m!7687484))

(declare-fun m!7687486 () Bool)

(assert (=> b!6995880 m!7687486))

(declare-fun m!7687488 () Bool)

(assert (=> bm!635012 m!7687488))

(declare-fun m!7687490 () Bool)

(assert (=> bm!635015 m!7687490))

(assert (=> bm!634950 d!2179309))

(declare-fun bs!1863009 () Bool)

(declare-fun d!2179311 () Bool)

(assert (= bs!1863009 (and d!2179311 b!6995245)))

(declare-fun lambda!404355 () Int)

(assert (=> bs!1863009 (not (= lambda!404355 lambda!404241))))

(declare-fun bs!1863010 () Bool)

(assert (= bs!1863010 (and d!2179311 d!2179027)))

(assert (=> bs!1863010 (= (= lambda!404313 lambda!404241) (= lambda!404355 lambda!404316))))

(declare-fun bs!1863011 () Bool)

(assert (= bs!1863011 (and d!2179311 d!2179295)))

(assert (=> bs!1863011 (not (= lambda!404355 lambda!404353))))

(declare-fun bs!1863012 () Bool)

(assert (= bs!1863012 (and d!2179311 d!2179025)))

(assert (=> bs!1863012 (not (= lambda!404355 lambda!404313))))

(declare-fun bs!1863013 () Bool)

(assert (= bs!1863013 (and d!2179311 d!2179259)))

(assert (=> bs!1863013 (not (= lambda!404355 lambda!404351))))

(declare-fun bs!1863014 () Bool)

(assert (= bs!1863014 (and d!2179311 d!2179255)))

(assert (=> bs!1863014 (not (= lambda!404355 lambda!404350))))

(assert (=> d!2179311 true))

(assert (=> d!2179311 (< (dynLambda!26964 order!27957 lambda!404313) (dynLambda!26964 order!27957 lambda!404355))))

(assert (=> d!2179311 (= (exists!3065 lt!2493013 lambda!404313) (not (forall!16167 lt!2493013 lambda!404355)))))

(declare-fun bs!1863015 () Bool)

(assert (= bs!1863015 d!2179311))

(declare-fun m!7687492 () Bool)

(assert (=> bs!1863015 m!7687492))

(assert (=> d!2179025 d!2179311))

(declare-fun bs!1863016 () Bool)

(declare-fun d!2179313 () Bool)

(assert (= bs!1863016 (and d!2179313 b!6995245)))

(declare-fun lambda!404358 () Int)

(assert (=> bs!1863016 (= lambda!404358 lambda!404241)))

(declare-fun bs!1863017 () Bool)

(assert (= bs!1863017 (and d!2179313 d!2179027)))

(assert (=> bs!1863017 (not (= lambda!404358 lambda!404316))))

(declare-fun bs!1863018 () Bool)

(assert (= bs!1863018 (and d!2179313 d!2179295)))

(assert (=> bs!1863018 (not (= lambda!404358 lambda!404353))))

(declare-fun bs!1863019 () Bool)

(assert (= bs!1863019 (and d!2179313 d!2179311)))

(assert (=> bs!1863019 (not (= lambda!404358 lambda!404355))))

(declare-fun bs!1863020 () Bool)

(assert (= bs!1863020 (and d!2179313 d!2179025)))

(assert (=> bs!1863020 (= lambda!404358 lambda!404313)))

(declare-fun bs!1863021 () Bool)

(assert (= bs!1863021 (and d!2179313 d!2179259)))

(assert (=> bs!1863021 (not (= lambda!404358 lambda!404351))))

(declare-fun bs!1863022 () Bool)

(assert (= bs!1863022 (and d!2179313 d!2179255)))

(assert (=> bs!1863022 (not (= lambda!404358 lambda!404350))))

(assert (=> d!2179313 true))

(assert (=> d!2179313 (exists!3065 lt!2493013 lambda!404358)))

(assert (=> d!2179313 true))

(declare-fun _$60!1057 () Unit!161171)

(assert (=> d!2179313 (= (choose!52387 lt!2493013 s!7408) _$60!1057)))

(declare-fun bs!1863023 () Bool)

(assert (= bs!1863023 d!2179313))

(declare-fun m!7687494 () Bool)

(assert (=> bs!1863023 m!7687494))

(assert (=> d!2179025 d!2179313))

(declare-fun d!2179315 () Bool)

(declare-fun c!1298055 () Bool)

(assert (=> d!2179315 (= c!1298055 (isEmpty!39219 s!7408))))

(declare-fun e!4205027 () Bool)

(assert (=> d!2179315 (= (matchZipper!2798 (content!13291 lt!2493013) s!7408) e!4205027)))

(declare-fun b!6995886 () Bool)

(assert (=> b!6995886 (= e!4205027 (nullableZipper!2453 (content!13291 lt!2493013)))))

(declare-fun b!6995887 () Bool)

(assert (=> b!6995887 (= e!4205027 (matchZipper!2798 (derivationStepZipper!2738 (content!13291 lt!2493013) (head!14128 s!7408)) (tail!13286 s!7408)))))

(assert (= (and d!2179315 c!1298055) b!6995886))

(assert (= (and d!2179315 (not c!1298055)) b!6995887))

(assert (=> d!2179315 m!7686786))

(assert (=> b!6995886 m!7686802))

(declare-fun m!7687496 () Bool)

(assert (=> b!6995886 m!7687496))

(assert (=> b!6995887 m!7686790))

(assert (=> b!6995887 m!7686802))

(assert (=> b!6995887 m!7686790))

(declare-fun m!7687498 () Bool)

(assert (=> b!6995887 m!7687498))

(assert (=> b!6995887 m!7686794))

(assert (=> b!6995887 m!7687498))

(assert (=> b!6995887 m!7686794))

(declare-fun m!7687500 () Bool)

(assert (=> b!6995887 m!7687500))

(assert (=> d!2179025 d!2179315))

(declare-fun d!2179317 () Bool)

(declare-fun c!1298056 () Bool)

(assert (=> d!2179317 (= c!1298056 (is-Nil!67197 lt!2493013))))

(declare-fun e!4205028 () (Set Context!12508))

(assert (=> d!2179317 (= (content!13291 lt!2493013) e!4205028)))

(declare-fun b!6995888 () Bool)

(assert (=> b!6995888 (= e!4205028 (as set.empty (Set Context!12508)))))

(declare-fun b!6995889 () Bool)

(assert (=> b!6995889 (= e!4205028 (set.union (set.insert (h!73645 lt!2493013) (as set.empty (Set Context!12508))) (content!13291 (t!381068 lt!2493013))))))

(assert (= (and d!2179317 c!1298056) b!6995888))

(assert (= (and d!2179317 (not c!1298056)) b!6995889))

(declare-fun m!7687502 () Bool)

(assert (=> b!6995889 m!7687502))

(declare-fun m!7687504 () Bool)

(assert (=> b!6995889 m!7687504))

(assert (=> d!2179025 d!2179317))

(declare-fun d!2179319 () Bool)

(declare-fun c!1298059 () Bool)

(assert (=> d!2179319 (= c!1298059 (is-Nil!67195 lt!2493222))))

(declare-fun e!4205031 () (Set Regex!17258))

(assert (=> d!2179319 (= (content!13290 lt!2493222) e!4205031)))

(declare-fun b!6995894 () Bool)

(assert (=> b!6995894 (= e!4205031 (as set.empty (Set Regex!17258)))))

(declare-fun b!6995895 () Bool)

(assert (=> b!6995895 (= e!4205031 (set.union (set.insert (h!73643 lt!2493222) (as set.empty (Set Regex!17258))) (content!13290 (t!381066 lt!2493222))))))

(assert (= (and d!2179319 c!1298059) b!6995894))

(assert (= (and d!2179319 (not c!1298059)) b!6995895))

(declare-fun m!7687506 () Bool)

(assert (=> b!6995895 m!7687506))

(declare-fun m!7687508 () Bool)

(assert (=> b!6995895 m!7687508))

(assert (=> d!2179039 d!2179319))

(declare-fun d!2179321 () Bool)

(declare-fun c!1298060 () Bool)

(assert (=> d!2179321 (= c!1298060 (is-Nil!67195 (exprs!6754 lt!2493029)))))

(declare-fun e!4205032 () (Set Regex!17258))

(assert (=> d!2179321 (= (content!13290 (exprs!6754 lt!2493029)) e!4205032)))

(declare-fun b!6995896 () Bool)

(assert (=> b!6995896 (= e!4205032 (as set.empty (Set Regex!17258)))))

(declare-fun b!6995897 () Bool)

(assert (=> b!6995897 (= e!4205032 (set.union (set.insert (h!73643 (exprs!6754 lt!2493029)) (as set.empty (Set Regex!17258))) (content!13290 (t!381066 (exprs!6754 lt!2493029)))))))

(assert (= (and d!2179321 c!1298060) b!6995896))

(assert (= (and d!2179321 (not c!1298060)) b!6995897))

(declare-fun m!7687510 () Bool)

(assert (=> b!6995897 m!7687510))

(declare-fun m!7687512 () Bool)

(assert (=> b!6995897 m!7687512))

(assert (=> d!2179039 d!2179321))

(declare-fun d!2179323 () Bool)

(declare-fun c!1298061 () Bool)

(assert (=> d!2179323 (= c!1298061 (is-Nil!67195 (exprs!6754 ct2!306)))))

(declare-fun e!4205033 () (Set Regex!17258))

(assert (=> d!2179323 (= (content!13290 (exprs!6754 ct2!306)) e!4205033)))

(declare-fun b!6995898 () Bool)

(assert (=> b!6995898 (= e!4205033 (as set.empty (Set Regex!17258)))))

(declare-fun b!6995899 () Bool)

(assert (=> b!6995899 (= e!4205033 (set.union (set.insert (h!73643 (exprs!6754 ct2!306)) (as set.empty (Set Regex!17258))) (content!13290 (t!381066 (exprs!6754 ct2!306)))))))

(assert (= (and d!2179323 c!1298061) b!6995898))

(assert (= (and d!2179323 (not c!1298061)) b!6995899))

(declare-fun m!7687514 () Bool)

(assert (=> b!6995899 m!7687514))

(declare-fun m!7687516 () Bool)

(assert (=> b!6995899 m!7687516))

(assert (=> d!2179039 d!2179323))

(declare-fun b!6995914 () Bool)

(declare-fun e!4205049 () Bool)

(declare-fun e!4205051 () Bool)

(assert (=> b!6995914 (= e!4205049 e!4205051)))

(declare-fun res!2853899 () Bool)

(assert (=> b!6995914 (=> res!2853899 e!4205051)))

(assert (=> b!6995914 (= res!2853899 (is-Star!17258 (h!73643 (exprs!6754 lt!2493029))))))

(declare-fun bm!635021 () Bool)

(declare-fun call!635026 () Bool)

(declare-fun c!1298064 () Bool)

(assert (=> bm!635021 (= call!635026 (nullable!7018 (ite c!1298064 (regOne!35029 (h!73643 (exprs!6754 lt!2493029))) (regTwo!35028 (h!73643 (exprs!6754 lt!2493029))))))))

(declare-fun b!6995916 () Bool)

(declare-fun e!4205050 () Bool)

(assert (=> b!6995916 (= e!4205050 e!4205049)))

(declare-fun res!2853900 () Bool)

(assert (=> b!6995916 (=> (not res!2853900) (not e!4205049))))

(assert (=> b!6995916 (= res!2853900 (and (not (is-EmptyLang!17258 (h!73643 (exprs!6754 lt!2493029)))) (not (is-ElementMatch!17258 (h!73643 (exprs!6754 lt!2493029))))))))

(declare-fun b!6995917 () Bool)

(declare-fun e!4205046 () Bool)

(declare-fun e!4205048 () Bool)

(assert (=> b!6995917 (= e!4205046 e!4205048)))

(declare-fun res!2853897 () Bool)

(declare-fun call!635027 () Bool)

(assert (=> b!6995917 (= res!2853897 call!635027)))

(assert (=> b!6995917 (=> (not res!2853897) (not e!4205048))))

(declare-fun bm!635022 () Bool)

(assert (=> bm!635022 (= call!635027 (nullable!7018 (ite c!1298064 (regTwo!35029 (h!73643 (exprs!6754 lt!2493029))) (regOne!35028 (h!73643 (exprs!6754 lt!2493029))))))))

(declare-fun b!6995918 () Bool)

(declare-fun e!4205047 () Bool)

(assert (=> b!6995918 (= e!4205047 call!635027)))

(declare-fun b!6995915 () Bool)

(assert (=> b!6995915 (= e!4205051 e!4205046)))

(assert (=> b!6995915 (= c!1298064 (is-Union!17258 (h!73643 (exprs!6754 lt!2493029))))))

(declare-fun d!2179325 () Bool)

(declare-fun res!2853898 () Bool)

(assert (=> d!2179325 (=> res!2853898 e!4205050)))

(assert (=> d!2179325 (= res!2853898 (is-EmptyExpr!17258 (h!73643 (exprs!6754 lt!2493029))))))

(assert (=> d!2179325 (= (nullableFct!2651 (h!73643 (exprs!6754 lt!2493029))) e!4205050)))

(declare-fun b!6995919 () Bool)

(assert (=> b!6995919 (= e!4205048 call!635026)))

(declare-fun b!6995920 () Bool)

(assert (=> b!6995920 (= e!4205046 e!4205047)))

(declare-fun res!2853901 () Bool)

(assert (=> b!6995920 (= res!2853901 call!635026)))

(assert (=> b!6995920 (=> res!2853901 e!4205047)))

(assert (= (and d!2179325 (not res!2853898)) b!6995916))

(assert (= (and b!6995916 res!2853900) b!6995914))

(assert (= (and b!6995914 (not res!2853899)) b!6995915))

(assert (= (and b!6995915 c!1298064) b!6995920))

(assert (= (and b!6995915 (not c!1298064)) b!6995917))

(assert (= (and b!6995920 (not res!2853901)) b!6995918))

(assert (= (and b!6995917 res!2853897) b!6995919))

(assert (= (or b!6995918 b!6995917) bm!635022))

(assert (= (or b!6995920 b!6995919) bm!635021))

(declare-fun m!7687518 () Bool)

(assert (=> bm!635021 m!7687518))

(declare-fun m!7687520 () Bool)

(assert (=> bm!635022 m!7687520))

(assert (=> d!2178999 d!2179325))

(assert (=> b!6995477 d!2178985))

(assert (=> d!2178993 d!2178991))

(declare-fun d!2179327 () Bool)

(assert (=> d!2179327 (= (flatMap!2244 lt!2493019 lambda!404244) (dynLambda!26962 lambda!404244 lt!2492982))))

(assert (=> d!2179327 true))

(declare-fun _$13!4379 () Unit!161171)

(assert (=> d!2179327 (= (choose!52385 lt!2493019 lt!2492982 lambda!404244) _$13!4379)))

(declare-fun b_lambda!263123 () Bool)

(assert (=> (not b_lambda!263123) (not d!2179327)))

(declare-fun bs!1863024 () Bool)

(assert (= bs!1863024 d!2179327))

(assert (=> bs!1863024 m!7686512))

(assert (=> bs!1863024 m!7686708))

(assert (=> d!2178993 d!2179327))

(declare-fun bs!1863025 () Bool)

(declare-fun d!2179329 () Bool)

(assert (= bs!1863025 (and d!2179329 b!6995245)))

(declare-fun lambda!404359 () Int)

(assert (=> bs!1863025 (not (= lambda!404359 lambda!404241))))

(declare-fun bs!1863026 () Bool)

(assert (= bs!1863026 (and d!2179329 d!2179313)))

(assert (=> bs!1863026 (not (= lambda!404359 lambda!404358))))

(declare-fun bs!1863027 () Bool)

(assert (= bs!1863027 (and d!2179329 d!2179027)))

(assert (=> bs!1863027 (not (= lambda!404359 lambda!404316))))

(declare-fun bs!1863028 () Bool)

(assert (= bs!1863028 (and d!2179329 d!2179295)))

(assert (=> bs!1863028 (= lambda!404359 lambda!404353)))

(declare-fun bs!1863029 () Bool)

(assert (= bs!1863029 (and d!2179329 d!2179311)))

(assert (=> bs!1863029 (not (= lambda!404359 lambda!404355))))

(declare-fun bs!1863030 () Bool)

(assert (= bs!1863030 (and d!2179329 d!2179025)))

(assert (=> bs!1863030 (not (= lambda!404359 lambda!404313))))

(declare-fun bs!1863031 () Bool)

(assert (= bs!1863031 (and d!2179329 d!2179259)))

(assert (=> bs!1863031 (= lambda!404359 lambda!404351)))

(declare-fun bs!1863032 () Bool)

(assert (= bs!1863032 (and d!2179329 d!2179255)))

(assert (=> bs!1863032 (= lambda!404359 lambda!404350)))

(assert (=> d!2179329 (= (nullableZipper!2453 lt!2493004) (exists!3067 lt!2493004 lambda!404359))))

(declare-fun bs!1863033 () Bool)

(assert (= bs!1863033 d!2179329))

(declare-fun m!7687522 () Bool)

(assert (=> bs!1863033 m!7687522))

(assert (=> b!6995480 d!2179329))

(declare-fun bs!1863034 () Bool)

(declare-fun d!2179331 () Bool)

(assert (= bs!1863034 (and d!2179331 d!2179329)))

(declare-fun lambda!404360 () Int)

(assert (=> bs!1863034 (= lambda!404360 lambda!404359)))

(declare-fun bs!1863035 () Bool)

(assert (= bs!1863035 (and d!2179331 b!6995245)))

(assert (=> bs!1863035 (not (= lambda!404360 lambda!404241))))

(declare-fun bs!1863036 () Bool)

(assert (= bs!1863036 (and d!2179331 d!2179313)))

(assert (=> bs!1863036 (not (= lambda!404360 lambda!404358))))

(declare-fun bs!1863037 () Bool)

(assert (= bs!1863037 (and d!2179331 d!2179027)))

(assert (=> bs!1863037 (not (= lambda!404360 lambda!404316))))

(declare-fun bs!1863038 () Bool)

(assert (= bs!1863038 (and d!2179331 d!2179295)))

(assert (=> bs!1863038 (= lambda!404360 lambda!404353)))

(declare-fun bs!1863039 () Bool)

(assert (= bs!1863039 (and d!2179331 d!2179311)))

(assert (=> bs!1863039 (not (= lambda!404360 lambda!404355))))

(declare-fun bs!1863040 () Bool)

(assert (= bs!1863040 (and d!2179331 d!2179025)))

(assert (=> bs!1863040 (not (= lambda!404360 lambda!404313))))

(declare-fun bs!1863041 () Bool)

(assert (= bs!1863041 (and d!2179331 d!2179259)))

(assert (=> bs!1863041 (= lambda!404360 lambda!404351)))

(declare-fun bs!1863042 () Bool)

(assert (= bs!1863042 (and d!2179331 d!2179255)))

(assert (=> bs!1863042 (= lambda!404360 lambda!404350)))

(assert (=> d!2179331 (= (nullableZipper!2453 lt!2493021) (exists!3067 lt!2493021 lambda!404360))))

(declare-fun bs!1863043 () Bool)

(assert (= bs!1863043 d!2179331))

(declare-fun m!7687524 () Bool)

(assert (=> bs!1863043 m!7687524))

(assert (=> b!6995512 d!2179331))

(declare-fun bm!635023 () Bool)

(declare-fun call!635033 () List!67319)

(declare-fun c!1298065 () Bool)

(declare-fun c!1298068 () Bool)

(assert (=> bm!635023 (= call!635033 ($colon$colon!2497 (exprs!6754 (Context!12509 (t!381066 (exprs!6754 lt!2492984)))) (ite (or c!1298068 c!1298065) (regTwo!35028 (h!73643 (exprs!6754 lt!2492984))) (h!73643 (exprs!6754 lt!2492984)))))))

(declare-fun c!1298066 () Bool)

(declare-fun call!635031 () (Set Context!12508))

(declare-fun bm!635024 () Bool)

(assert (=> bm!635024 (= call!635031 (derivationStepZipperDown!1976 (ite c!1298066 (regOne!35029 (h!73643 (exprs!6754 lt!2492984))) (regOne!35028 (h!73643 (exprs!6754 lt!2492984)))) (ite c!1298066 (Context!12509 (t!381066 (exprs!6754 lt!2492984))) (Context!12509 call!635033)) (h!73644 s!7408)))))

(declare-fun b!6995921 () Bool)

(declare-fun e!4205055 () (Set Context!12508))

(declare-fun call!635032 () (Set Context!12508))

(assert (=> b!6995921 (= e!4205055 (set.union call!635031 call!635032))))

(declare-fun b!6995922 () Bool)

(declare-fun e!4205052 () (Set Context!12508))

(declare-fun call!635029 () (Set Context!12508))

(assert (=> b!6995922 (= e!4205052 (set.union call!635031 call!635029))))

(declare-fun b!6995923 () Bool)

(declare-fun e!4205054 () (Set Context!12508))

(declare-fun call!635028 () (Set Context!12508))

(assert (=> b!6995923 (= e!4205054 call!635028)))

(declare-fun b!6995924 () Bool)

(declare-fun e!4205053 () (Set Context!12508))

(assert (=> b!6995924 (= e!4205052 e!4205053)))

(assert (=> b!6995924 (= c!1298065 (is-Concat!26103 (h!73643 (exprs!6754 lt!2492984))))))

(declare-fun bm!635025 () Bool)

(declare-fun call!635030 () List!67319)

(assert (=> bm!635025 (= call!635030 call!635033)))

(declare-fun d!2179333 () Bool)

(declare-fun c!1298069 () Bool)

(assert (=> d!2179333 (= c!1298069 (and (is-ElementMatch!17258 (h!73643 (exprs!6754 lt!2492984))) (= (c!1297859 (h!73643 (exprs!6754 lt!2492984))) (h!73644 s!7408))))))

(declare-fun e!4205057 () (Set Context!12508))

(assert (=> d!2179333 (= (derivationStepZipperDown!1976 (h!73643 (exprs!6754 lt!2492984)) (Context!12509 (t!381066 (exprs!6754 lt!2492984))) (h!73644 s!7408)) e!4205057)))

(declare-fun b!6995925 () Bool)

(declare-fun e!4205056 () Bool)

(assert (=> b!6995925 (= c!1298068 e!4205056)))

(declare-fun res!2853902 () Bool)

(assert (=> b!6995925 (=> (not res!2853902) (not e!4205056))))

(assert (=> b!6995925 (= res!2853902 (is-Concat!26103 (h!73643 (exprs!6754 lt!2492984))))))

(assert (=> b!6995925 (= e!4205055 e!4205052)))

(declare-fun b!6995926 () Bool)

(assert (=> b!6995926 (= e!4205056 (nullable!7018 (regOne!35028 (h!73643 (exprs!6754 lt!2492984)))))))

(declare-fun b!6995927 () Bool)

(declare-fun c!1298067 () Bool)

(assert (=> b!6995927 (= c!1298067 (is-Star!17258 (h!73643 (exprs!6754 lt!2492984))))))

(assert (=> b!6995927 (= e!4205053 e!4205054)))

(declare-fun b!6995928 () Bool)

(assert (=> b!6995928 (= e!4205057 (set.insert (Context!12509 (t!381066 (exprs!6754 lt!2492984))) (as set.empty (Set Context!12508))))))

(declare-fun bm!635026 () Bool)

(assert (=> bm!635026 (= call!635028 call!635029)))

(declare-fun b!6995929 () Bool)

(assert (=> b!6995929 (= e!4205057 e!4205055)))

(assert (=> b!6995929 (= c!1298066 (is-Union!17258 (h!73643 (exprs!6754 lt!2492984))))))

(declare-fun bm!635027 () Bool)

(assert (=> bm!635027 (= call!635032 (derivationStepZipperDown!1976 (ite c!1298066 (regTwo!35029 (h!73643 (exprs!6754 lt!2492984))) (ite c!1298068 (regTwo!35028 (h!73643 (exprs!6754 lt!2492984))) (ite c!1298065 (regOne!35028 (h!73643 (exprs!6754 lt!2492984))) (reg!17587 (h!73643 (exprs!6754 lt!2492984)))))) (ite (or c!1298066 c!1298068) (Context!12509 (t!381066 (exprs!6754 lt!2492984))) (Context!12509 call!635030)) (h!73644 s!7408)))))

(declare-fun b!6995930 () Bool)

(assert (=> b!6995930 (= e!4205054 (as set.empty (Set Context!12508)))))

(declare-fun b!6995931 () Bool)

(assert (=> b!6995931 (= e!4205053 call!635028)))

(declare-fun bm!635028 () Bool)

(assert (=> bm!635028 (= call!635029 call!635032)))

(assert (= (and d!2179333 c!1298069) b!6995928))

(assert (= (and d!2179333 (not c!1298069)) b!6995929))

(assert (= (and b!6995929 c!1298066) b!6995921))

(assert (= (and b!6995929 (not c!1298066)) b!6995925))

(assert (= (and b!6995925 res!2853902) b!6995926))

(assert (= (and b!6995925 c!1298068) b!6995922))

(assert (= (and b!6995925 (not c!1298068)) b!6995924))

(assert (= (and b!6995924 c!1298065) b!6995931))

(assert (= (and b!6995924 (not c!1298065)) b!6995927))

(assert (= (and b!6995927 c!1298067) b!6995923))

(assert (= (and b!6995927 (not c!1298067)) b!6995930))

(assert (= (or b!6995931 b!6995923) bm!635025))

(assert (= (or b!6995931 b!6995923) bm!635026))

(assert (= (or b!6995922 bm!635026) bm!635028))

(assert (= (or b!6995922 bm!635025) bm!635023))

(assert (= (or b!6995921 b!6995922) bm!635024))

(assert (= (or b!6995921 bm!635028) bm!635027))

(declare-fun m!7687526 () Bool)

(assert (=> bm!635023 m!7687526))

(declare-fun m!7687528 () Bool)

(assert (=> b!6995928 m!7687528))

(declare-fun m!7687530 () Bool)

(assert (=> b!6995926 m!7687530))

(declare-fun m!7687532 () Bool)

(assert (=> bm!635024 m!7687532))

(declare-fun m!7687534 () Bool)

(assert (=> bm!635027 m!7687534))

(assert (=> bm!634970 d!2179333))

(declare-fun d!2179335 () Bool)

(declare-fun c!1298072 () Bool)

(assert (=> d!2179335 (= c!1298072 (is-Nil!67196 lt!2493205))))

(declare-fun e!4205060 () (Set C!34786))

(assert (=> d!2179335 (= (content!13289 lt!2493205) e!4205060)))

(declare-fun b!6995936 () Bool)

(assert (=> b!6995936 (= e!4205060 (as set.empty (Set C!34786)))))

(declare-fun b!6995937 () Bool)

(assert (=> b!6995937 (= e!4205060 (set.union (set.insert (h!73644 lt!2493205) (as set.empty (Set C!34786))) (content!13289 (t!381067 lt!2493205))))))

(assert (= (and d!2179335 c!1298072) b!6995936))

(assert (= (and d!2179335 (not c!1298072)) b!6995937))

(declare-fun m!7687536 () Bool)

(assert (=> b!6995937 m!7687536))

(declare-fun m!7687538 () Bool)

(assert (=> b!6995937 m!7687538))

(assert (=> d!2179003 d!2179335))

(declare-fun d!2179337 () Bool)

(declare-fun c!1298073 () Bool)

(assert (=> d!2179337 (= c!1298073 (is-Nil!67196 (_1!37234 lt!2493025)))))

(declare-fun e!4205061 () (Set C!34786))

(assert (=> d!2179337 (= (content!13289 (_1!37234 lt!2493025)) e!4205061)))

(declare-fun b!6995938 () Bool)

(assert (=> b!6995938 (= e!4205061 (as set.empty (Set C!34786)))))

(declare-fun b!6995939 () Bool)

(assert (=> b!6995939 (= e!4205061 (set.union (set.insert (h!73644 (_1!37234 lt!2493025)) (as set.empty (Set C!34786))) (content!13289 (t!381067 (_1!37234 lt!2493025)))))))

(assert (= (and d!2179337 c!1298073) b!6995938))

(assert (= (and d!2179337 (not c!1298073)) b!6995939))

(declare-fun m!7687540 () Bool)

(assert (=> b!6995939 m!7687540))

(declare-fun m!7687542 () Bool)

(assert (=> b!6995939 m!7687542))

(assert (=> d!2179003 d!2179337))

(declare-fun d!2179339 () Bool)

(declare-fun c!1298074 () Bool)

(assert (=> d!2179339 (= c!1298074 (is-Nil!67196 (_2!37234 lt!2493025)))))

(declare-fun e!4205062 () (Set C!34786))

(assert (=> d!2179339 (= (content!13289 (_2!37234 lt!2493025)) e!4205062)))

(declare-fun b!6995940 () Bool)

(assert (=> b!6995940 (= e!4205062 (as set.empty (Set C!34786)))))

(declare-fun b!6995941 () Bool)

(assert (=> b!6995941 (= e!4205062 (set.union (set.insert (h!73644 (_2!37234 lt!2493025)) (as set.empty (Set C!34786))) (content!13289 (t!381067 (_2!37234 lt!2493025)))))))

(assert (= (and d!2179339 c!1298074) b!6995940))

(assert (= (and d!2179339 (not c!1298074)) b!6995941))

(declare-fun m!7687544 () Bool)

(assert (=> b!6995941 m!7687544))

(declare-fun m!7687546 () Bool)

(assert (=> b!6995941 m!7687546))

(assert (=> d!2179003 d!2179339))

(assert (=> b!6995617 d!2178999))

(assert (=> d!2178985 d!2179247))

(declare-fun d!2179341 () Bool)

(declare-fun lt!2493339 () Int)

(assert (=> d!2179341 (>= lt!2493339 0)))

(declare-fun e!4205063 () Int)

(assert (=> d!2179341 (= lt!2493339 e!4205063)))

(declare-fun c!1298075 () Bool)

(assert (=> d!2179341 (= c!1298075 (is-Nil!67195 lt!2493208))))

(assert (=> d!2179341 (= (size!40923 lt!2493208) lt!2493339)))

(declare-fun b!6995942 () Bool)

(assert (=> b!6995942 (= e!4205063 0)))

(declare-fun b!6995943 () Bool)

(assert (=> b!6995943 (= e!4205063 (+ 1 (size!40923 (t!381066 lt!2493208))))))

(assert (= (and d!2179341 c!1298075) b!6995942))

(assert (= (and d!2179341 (not c!1298075)) b!6995943))

(declare-fun m!7687548 () Bool)

(assert (=> b!6995943 m!7687548))

(assert (=> b!6995425 d!2179341))

(declare-fun d!2179343 () Bool)

(declare-fun lt!2493340 () Int)

(assert (=> d!2179343 (>= lt!2493340 0)))

(declare-fun e!4205064 () Int)

(assert (=> d!2179343 (= lt!2493340 e!4205064)))

(declare-fun c!1298076 () Bool)

(assert (=> d!2179343 (= c!1298076 (is-Nil!67195 lt!2493020))))

(assert (=> d!2179343 (= (size!40923 lt!2493020) lt!2493340)))

(declare-fun b!6995944 () Bool)

(assert (=> b!6995944 (= e!4205064 0)))

(declare-fun b!6995945 () Bool)

(assert (=> b!6995945 (= e!4205064 (+ 1 (size!40923 (t!381066 lt!2493020))))))

(assert (= (and d!2179343 c!1298076) b!6995944))

(assert (= (and d!2179343 (not c!1298076)) b!6995945))

(assert (=> b!6995945 m!7687324))

(assert (=> b!6995425 d!2179343))

(assert (=> b!6995425 d!2179253))

(declare-fun d!2179345 () Bool)

(assert (=> d!2179345 true))

(declare-fun setRes!47995 () Bool)

(assert (=> d!2179345 setRes!47995))

(declare-fun condSetEmpty!47995 () Bool)

(declare-fun res!2853903 () (Set Context!12508))

(assert (=> d!2179345 (= condSetEmpty!47995 (= res!2853903 (as set.empty (Set Context!12508))))))

(assert (=> d!2179345 (= (choose!52384 lt!2493015 lambda!404244) res!2853903)))

(declare-fun setIsEmpty!47995 () Bool)

(assert (=> setIsEmpty!47995 setRes!47995))

(declare-fun setNonEmpty!47995 () Bool)

(declare-fun setElem!47995 () Context!12508)

(declare-fun e!4205065 () Bool)

(declare-fun tp!1930546 () Bool)

(assert (=> setNonEmpty!47995 (= setRes!47995 (and tp!1930546 (inv!86005 setElem!47995) e!4205065))))

(declare-fun setRest!47995 () (Set Context!12508))

(assert (=> setNonEmpty!47995 (= res!2853903 (set.union (set.insert setElem!47995 (as set.empty (Set Context!12508))) setRest!47995))))

(declare-fun b!6995946 () Bool)

(declare-fun tp!1930545 () Bool)

(assert (=> b!6995946 (= e!4205065 tp!1930545)))

(assert (= (and d!2179345 condSetEmpty!47995) setIsEmpty!47995))

(assert (= (and d!2179345 (not condSetEmpty!47995)) setNonEmpty!47995))

(assert (= setNonEmpty!47995 b!6995946))

(declare-fun m!7687550 () Bool)

(assert (=> setNonEmpty!47995 m!7687550))

(assert (=> d!2179017 d!2179345))

(declare-fun b!6995947 () Bool)

(declare-fun e!4205071 () Bool)

(declare-fun e!4205072 () Bool)

(assert (=> b!6995947 (= e!4205071 e!4205072)))

(declare-fun res!2853906 () Bool)

(assert (=> b!6995947 (= res!2853906 (not (nullable!7018 (reg!17587 (ite c!1297882 (reg!17587 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297881 (regOne!35029 (h!73643 (exprs!6754 lt!2493029))) (regOne!35028 (h!73643 (exprs!6754 lt!2493029)))))))))))

(assert (=> b!6995947 (=> (not res!2853906) (not e!4205072))))

(declare-fun b!6995948 () Bool)

(declare-fun e!4205066 () Bool)

(assert (=> b!6995948 (= e!4205066 e!4205071)))

(declare-fun c!1298078 () Bool)

(assert (=> b!6995948 (= c!1298078 (is-Star!17258 (ite c!1297882 (reg!17587 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297881 (regOne!35029 (h!73643 (exprs!6754 lt!2493029))) (regOne!35028 (h!73643 (exprs!6754 lt!2493029)))))))))

(declare-fun b!6995949 () Bool)

(declare-fun res!2853907 () Bool)

(declare-fun e!4205067 () Bool)

(assert (=> b!6995949 (=> (not res!2853907) (not e!4205067))))

(declare-fun call!635035 () Bool)

(assert (=> b!6995949 (= res!2853907 call!635035)))

(declare-fun e!4205070 () Bool)

(assert (=> b!6995949 (= e!4205070 e!4205067)))

(declare-fun bm!635029 () Bool)

(declare-fun c!1298077 () Bool)

(declare-fun call!635034 () Bool)

(assert (=> bm!635029 (= call!635034 (validRegex!8868 (ite c!1298077 (regTwo!35029 (ite c!1297882 (reg!17587 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297881 (regOne!35029 (h!73643 (exprs!6754 lt!2493029))) (regOne!35028 (h!73643 (exprs!6754 lt!2493029)))))) (regTwo!35028 (ite c!1297882 (reg!17587 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297881 (regOne!35029 (h!73643 (exprs!6754 lt!2493029))) (regOne!35028 (h!73643 (exprs!6754 lt!2493029)))))))))))

(declare-fun b!6995950 () Bool)

(assert (=> b!6995950 (= e!4205067 call!635034)))

(declare-fun d!2179347 () Bool)

(declare-fun res!2853908 () Bool)

(assert (=> d!2179347 (=> res!2853908 e!4205066)))

(assert (=> d!2179347 (= res!2853908 (is-ElementMatch!17258 (ite c!1297882 (reg!17587 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297881 (regOne!35029 (h!73643 (exprs!6754 lt!2493029))) (regOne!35028 (h!73643 (exprs!6754 lt!2493029)))))))))

(assert (=> d!2179347 (= (validRegex!8868 (ite c!1297882 (reg!17587 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297881 (regOne!35029 (h!73643 (exprs!6754 lt!2493029))) (regOne!35028 (h!73643 (exprs!6754 lt!2493029)))))) e!4205066)))

(declare-fun b!6995951 () Bool)

(assert (=> b!6995951 (= e!4205071 e!4205070)))

(assert (=> b!6995951 (= c!1298077 (is-Union!17258 (ite c!1297882 (reg!17587 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297881 (regOne!35029 (h!73643 (exprs!6754 lt!2493029))) (regOne!35028 (h!73643 (exprs!6754 lt!2493029)))))))))

(declare-fun bm!635030 () Bool)

(declare-fun call!635036 () Bool)

(assert (=> bm!635030 (= call!635035 call!635036)))

(declare-fun b!6995952 () Bool)

(declare-fun e!4205068 () Bool)

(assert (=> b!6995952 (= e!4205068 call!635034)))

(declare-fun b!6995953 () Bool)

(declare-fun res!2853905 () Bool)

(declare-fun e!4205069 () Bool)

(assert (=> b!6995953 (=> res!2853905 e!4205069)))

(assert (=> b!6995953 (= res!2853905 (not (is-Concat!26103 (ite c!1297882 (reg!17587 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297881 (regOne!35029 (h!73643 (exprs!6754 lt!2493029))) (regOne!35028 (h!73643 (exprs!6754 lt!2493029))))))))))

(assert (=> b!6995953 (= e!4205070 e!4205069)))

(declare-fun b!6995954 () Bool)

(assert (=> b!6995954 (= e!4205072 call!635036)))

(declare-fun b!6995955 () Bool)

(assert (=> b!6995955 (= e!4205069 e!4205068)))

(declare-fun res!2853904 () Bool)

(assert (=> b!6995955 (=> (not res!2853904) (not e!4205068))))

(assert (=> b!6995955 (= res!2853904 call!635035)))

(declare-fun bm!635031 () Bool)

(assert (=> bm!635031 (= call!635036 (validRegex!8868 (ite c!1298078 (reg!17587 (ite c!1297882 (reg!17587 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297881 (regOne!35029 (h!73643 (exprs!6754 lt!2493029))) (regOne!35028 (h!73643 (exprs!6754 lt!2493029)))))) (ite c!1298077 (regOne!35029 (ite c!1297882 (reg!17587 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297881 (regOne!35029 (h!73643 (exprs!6754 lt!2493029))) (regOne!35028 (h!73643 (exprs!6754 lt!2493029)))))) (regOne!35028 (ite c!1297882 (reg!17587 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297881 (regOne!35029 (h!73643 (exprs!6754 lt!2493029))) (regOne!35028 (h!73643 (exprs!6754 lt!2493029))))))))))))

(assert (= (and d!2179347 (not res!2853908)) b!6995948))

(assert (= (and b!6995948 c!1298078) b!6995947))

(assert (= (and b!6995948 (not c!1298078)) b!6995951))

(assert (= (and b!6995947 res!2853906) b!6995954))

(assert (= (and b!6995951 c!1298077) b!6995949))

(assert (= (and b!6995951 (not c!1298077)) b!6995953))

(assert (= (and b!6995949 res!2853907) b!6995950))

(assert (= (and b!6995953 (not res!2853905)) b!6995955))

(assert (= (and b!6995955 res!2853904) b!6995952))

(assert (= (or b!6995950 b!6995952) bm!635029))

(assert (= (or b!6995949 b!6995955) bm!635030))

(assert (= (or b!6995954 bm!635030) bm!635031))

(declare-fun m!7687552 () Bool)

(assert (=> b!6995947 m!7687552))

(declare-fun m!7687554 () Bool)

(assert (=> bm!635029 m!7687554))

(declare-fun m!7687556 () Bool)

(assert (=> bm!635031 m!7687556))

(assert (=> bm!634947 d!2179347))

(declare-fun bs!1863044 () Bool)

(declare-fun d!2179349 () Bool)

(assert (= bs!1863044 (and d!2179349 d!2179329)))

(declare-fun lambda!404361 () Int)

(assert (=> bs!1863044 (= lambda!404361 lambda!404359)))

(declare-fun bs!1863045 () Bool)

(assert (= bs!1863045 (and d!2179349 b!6995245)))

(assert (=> bs!1863045 (not (= lambda!404361 lambda!404241))))

(declare-fun bs!1863046 () Bool)

(assert (= bs!1863046 (and d!2179349 d!2179313)))

(assert (=> bs!1863046 (not (= lambda!404361 lambda!404358))))

(declare-fun bs!1863047 () Bool)

(assert (= bs!1863047 (and d!2179349 d!2179027)))

(assert (=> bs!1863047 (not (= lambda!404361 lambda!404316))))

(declare-fun bs!1863048 () Bool)

(assert (= bs!1863048 (and d!2179349 d!2179311)))

(assert (=> bs!1863048 (not (= lambda!404361 lambda!404355))))

(declare-fun bs!1863049 () Bool)

(assert (= bs!1863049 (and d!2179349 d!2179025)))

(assert (=> bs!1863049 (not (= lambda!404361 lambda!404313))))

(declare-fun bs!1863050 () Bool)

(assert (= bs!1863050 (and d!2179349 d!2179259)))

(assert (=> bs!1863050 (= lambda!404361 lambda!404351)))

(declare-fun bs!1863051 () Bool)

(assert (= bs!1863051 (and d!2179349 d!2179255)))

(assert (=> bs!1863051 (= lambda!404361 lambda!404350)))

(declare-fun bs!1863052 () Bool)

(assert (= bs!1863052 (and d!2179349 d!2179331)))

(assert (=> bs!1863052 (= lambda!404361 lambda!404360)))

(declare-fun bs!1863053 () Bool)

(assert (= bs!1863053 (and d!2179349 d!2179295)))

(assert (=> bs!1863053 (= lambda!404361 lambda!404353)))

(assert (=> d!2179349 (= (nullableZipper!2453 lt!2493016) (exists!3067 lt!2493016 lambda!404361))))

(declare-fun bs!1863054 () Bool)

(assert (= bs!1863054 d!2179349))

(declare-fun m!7687558 () Bool)

(assert (=> bs!1863054 m!7687558))

(assert (=> b!6995471 d!2179349))

(declare-fun d!2179351 () Bool)

(declare-fun c!1298079 () Bool)

(assert (=> d!2179351 (= c!1298079 (isEmpty!39219 (tail!13286 (t!381067 s!7408))))))

(declare-fun e!4205073 () Bool)

(assert (=> d!2179351 (= (matchZipper!2798 (derivationStepZipper!2738 lt!2492988 (head!14128 (t!381067 s!7408))) (tail!13286 (t!381067 s!7408))) e!4205073)))

(declare-fun b!6995956 () Bool)

(assert (=> b!6995956 (= e!4205073 (nullableZipper!2453 (derivationStepZipper!2738 lt!2492988 (head!14128 (t!381067 s!7408)))))))

(declare-fun b!6995957 () Bool)

(assert (=> b!6995957 (= e!4205073 (matchZipper!2798 (derivationStepZipper!2738 (derivationStepZipper!2738 lt!2492988 (head!14128 (t!381067 s!7408))) (head!14128 (tail!13286 (t!381067 s!7408)))) (tail!13286 (tail!13286 (t!381067 s!7408)))))))

(assert (= (and d!2179351 c!1298079) b!6995956))

(assert (= (and d!2179351 (not c!1298079)) b!6995957))

(assert (=> d!2179351 m!7686690))

(assert (=> d!2179351 m!7687330))

(assert (=> b!6995956 m!7686816))

(declare-fun m!7687560 () Bool)

(assert (=> b!6995956 m!7687560))

(assert (=> b!6995957 m!7686690))

(assert (=> b!6995957 m!7687334))

(assert (=> b!6995957 m!7686816))

(assert (=> b!6995957 m!7687334))

(declare-fun m!7687562 () Bool)

(assert (=> b!6995957 m!7687562))

(assert (=> b!6995957 m!7686690))

(assert (=> b!6995957 m!7687338))

(assert (=> b!6995957 m!7687562))

(assert (=> b!6995957 m!7687338))

(declare-fun m!7687564 () Bool)

(assert (=> b!6995957 m!7687564))

(assert (=> b!6995479 d!2179351))

(declare-fun bs!1863055 () Bool)

(declare-fun d!2179353 () Bool)

(assert (= bs!1863055 (and d!2179353 d!2179015)))

(declare-fun lambda!404362 () Int)

(assert (=> bs!1863055 (= (= (head!14128 (t!381067 s!7408)) (h!73644 s!7408)) (= lambda!404362 lambda!404310))))

(declare-fun bs!1863056 () Bool)

(assert (= bs!1863056 (and d!2179353 d!2178997)))

(assert (=> bs!1863056 (= (= (head!14128 (t!381067 s!7408)) (h!73644 s!7408)) (= lambda!404362 lambda!404309))))

(declare-fun bs!1863057 () Bool)

(assert (= bs!1863057 (and d!2179353 d!2179239)))

(assert (=> bs!1863057 (= lambda!404362 lambda!404347)))

(declare-fun bs!1863058 () Bool)

(assert (= bs!1863058 (and d!2179353 d!2179103)))

(assert (=> bs!1863058 (= (= (head!14128 (t!381067 s!7408)) (h!73644 s!7408)) (= lambda!404362 lambda!404329))))

(declare-fun bs!1863059 () Bool)

(assert (= bs!1863059 (and d!2179353 d!2179269)))

(assert (=> bs!1863059 (= lambda!404362 lambda!404352)))

(declare-fun bs!1863060 () Bool)

(assert (= bs!1863060 (and d!2179353 b!6995234)))

(assert (=> bs!1863060 (= (= (head!14128 (t!381067 s!7408)) (h!73644 s!7408)) (= lambda!404362 lambda!404244))))

(assert (=> d!2179353 true))

(assert (=> d!2179353 (= (derivationStepZipper!2738 lt!2492988 (head!14128 (t!381067 s!7408))) (flatMap!2244 lt!2492988 lambda!404362))))

(declare-fun bs!1863061 () Bool)

(assert (= bs!1863061 d!2179353))

(declare-fun m!7687566 () Bool)

(assert (=> bs!1863061 m!7687566))

(assert (=> b!6995479 d!2179353))

(assert (=> b!6995479 d!2179241))

(assert (=> b!6995479 d!2179243))

(declare-fun d!2179355 () Bool)

(declare-fun c!1298080 () Bool)

(assert (=> d!2179355 (= c!1298080 (isEmpty!39219 (tail!13286 s!7408)))))

(declare-fun e!4205074 () Bool)

(assert (=> d!2179355 (= (matchZipper!2798 (derivationStepZipper!2738 lt!2493015 (head!14128 s!7408)) (tail!13286 s!7408)) e!4205074)))

(declare-fun b!6995958 () Bool)

(assert (=> b!6995958 (= e!4205074 (nullableZipper!2453 (derivationStepZipper!2738 lt!2493015 (head!14128 s!7408))))))

(declare-fun b!6995959 () Bool)

(assert (=> b!6995959 (= e!4205074 (matchZipper!2798 (derivationStepZipper!2738 (derivationStepZipper!2738 lt!2493015 (head!14128 s!7408)) (head!14128 (tail!13286 s!7408))) (tail!13286 (tail!13286 s!7408))))))

(assert (= (and d!2179355 c!1298080) b!6995958))

(assert (= (and d!2179355 (not c!1298080)) b!6995959))

(assert (=> d!2179355 m!7686794))

(declare-fun m!7687568 () Bool)

(assert (=> d!2179355 m!7687568))

(assert (=> b!6995958 m!7687022))

(declare-fun m!7687570 () Bool)

(assert (=> b!6995958 m!7687570))

(assert (=> b!6995959 m!7686794))

(declare-fun m!7687572 () Bool)

(assert (=> b!6995959 m!7687572))

(assert (=> b!6995959 m!7687022))

(assert (=> b!6995959 m!7687572))

(declare-fun m!7687574 () Bool)

(assert (=> b!6995959 m!7687574))

(assert (=> b!6995959 m!7686794))

(declare-fun m!7687576 () Bool)

(assert (=> b!6995959 m!7687576))

(assert (=> b!6995959 m!7687574))

(assert (=> b!6995959 m!7687576))

(declare-fun m!7687578 () Bool)

(assert (=> b!6995959 m!7687578))

(assert (=> b!6995616 d!2179355))

(declare-fun bs!1863062 () Bool)

(declare-fun d!2179357 () Bool)

(assert (= bs!1863062 (and d!2179357 d!2179015)))

(declare-fun lambda!404363 () Int)

(assert (=> bs!1863062 (= (= (head!14128 s!7408) (h!73644 s!7408)) (= lambda!404363 lambda!404310))))

(declare-fun bs!1863063 () Bool)

(assert (= bs!1863063 (and d!2179357 d!2179239)))

(assert (=> bs!1863063 (= (= (head!14128 s!7408) (head!14128 (t!381067 s!7408))) (= lambda!404363 lambda!404347))))

(declare-fun bs!1863064 () Bool)

(assert (= bs!1863064 (and d!2179357 d!2179103)))

(assert (=> bs!1863064 (= (= (head!14128 s!7408) (h!73644 s!7408)) (= lambda!404363 lambda!404329))))

(declare-fun bs!1863065 () Bool)

(assert (= bs!1863065 (and d!2179357 d!2179269)))

(assert (=> bs!1863065 (= (= (head!14128 s!7408) (head!14128 (t!381067 s!7408))) (= lambda!404363 lambda!404352))))

(declare-fun bs!1863066 () Bool)

(assert (= bs!1863066 (and d!2179357 b!6995234)))

(assert (=> bs!1863066 (= (= (head!14128 s!7408) (h!73644 s!7408)) (= lambda!404363 lambda!404244))))

(declare-fun bs!1863067 () Bool)

(assert (= bs!1863067 (and d!2179357 d!2178997)))

(assert (=> bs!1863067 (= (= (head!14128 s!7408) (h!73644 s!7408)) (= lambda!404363 lambda!404309))))

(declare-fun bs!1863068 () Bool)

(assert (= bs!1863068 (and d!2179357 d!2179353)))

(assert (=> bs!1863068 (= (= (head!14128 s!7408) (head!14128 (t!381067 s!7408))) (= lambda!404363 lambda!404362))))

(assert (=> d!2179357 true))

(assert (=> d!2179357 (= (derivationStepZipper!2738 lt!2493015 (head!14128 s!7408)) (flatMap!2244 lt!2493015 lambda!404363))))

(declare-fun bs!1863069 () Bool)

(assert (= bs!1863069 d!2179357))

(declare-fun m!7687580 () Bool)

(assert (=> bs!1863069 m!7687580))

(assert (=> b!6995616 d!2179357))

(declare-fun d!2179359 () Bool)

(assert (=> d!2179359 (= (head!14128 s!7408) (h!73644 s!7408))))

(assert (=> b!6995616 d!2179359))

(declare-fun d!2179361 () Bool)

(assert (=> d!2179361 (= (tail!13286 s!7408) (t!381067 s!7408))))

(assert (=> b!6995616 d!2179361))

(declare-fun b!6995962 () Bool)

(declare-fun res!2853910 () Bool)

(declare-fun e!4205075 () Bool)

(assert (=> b!6995962 (=> (not res!2853910) (not e!4205075))))

(declare-fun lt!2493341 () List!67320)

(assert (=> b!6995962 (= res!2853910 (= (size!40922 lt!2493341) (+ (size!40922 (t!381067 (_1!37234 lt!2493025))) (size!40922 (_2!37234 lt!2493025)))))))

(declare-fun b!6995961 () Bool)

(declare-fun e!4205076 () List!67320)

(assert (=> b!6995961 (= e!4205076 (Cons!67196 (h!73644 (t!381067 (_1!37234 lt!2493025))) (++!15218 (t!381067 (t!381067 (_1!37234 lt!2493025))) (_2!37234 lt!2493025))))))

(declare-fun b!6995963 () Bool)

(assert (=> b!6995963 (= e!4205075 (or (not (= (_2!37234 lt!2493025) Nil!67196)) (= lt!2493341 (t!381067 (_1!37234 lt!2493025)))))))

(declare-fun d!2179363 () Bool)

(assert (=> d!2179363 e!4205075))

(declare-fun res!2853909 () Bool)

(assert (=> d!2179363 (=> (not res!2853909) (not e!4205075))))

(assert (=> d!2179363 (= res!2853909 (= (content!13289 lt!2493341) (set.union (content!13289 (t!381067 (_1!37234 lt!2493025))) (content!13289 (_2!37234 lt!2493025)))))))

(assert (=> d!2179363 (= lt!2493341 e!4205076)))

(declare-fun c!1298081 () Bool)

(assert (=> d!2179363 (= c!1298081 (is-Nil!67196 (t!381067 (_1!37234 lt!2493025))))))

(assert (=> d!2179363 (= (++!15218 (t!381067 (_1!37234 lt!2493025)) (_2!37234 lt!2493025)) lt!2493341)))

(declare-fun b!6995960 () Bool)

(assert (=> b!6995960 (= e!4205076 (_2!37234 lt!2493025))))

(assert (= (and d!2179363 c!1298081) b!6995960))

(assert (= (and d!2179363 (not c!1298081)) b!6995961))

(assert (= (and d!2179363 res!2853909) b!6995962))

(assert (= (and b!6995962 res!2853910) b!6995963))

(declare-fun m!7687582 () Bool)

(assert (=> b!6995962 m!7687582))

(declare-fun m!7687584 () Bool)

(assert (=> b!6995962 m!7687584))

(assert (=> b!6995962 m!7686726))

(declare-fun m!7687586 () Bool)

(assert (=> b!6995961 m!7687586))

(declare-fun m!7687588 () Bool)

(assert (=> d!2179363 m!7687588))

(assert (=> d!2179363 m!7687542))

(assert (=> d!2179363 m!7686734))

(assert (=> b!6995412 d!2179363))

(declare-fun d!2179365 () Bool)

(declare-fun c!1298082 () Bool)

(assert (=> d!2179365 (= c!1298082 (isEmpty!39219 (_1!37234 (get!23557 lt!2493257))))))

(declare-fun e!4205077 () Bool)

(assert (=> d!2179365 (= (matchZipper!2798 lt!2493018 (_1!37234 (get!23557 lt!2493257))) e!4205077)))

(declare-fun b!6995964 () Bool)

(assert (=> b!6995964 (= e!4205077 (nullableZipper!2453 lt!2493018))))

(declare-fun b!6995965 () Bool)

(assert (=> b!6995965 (= e!4205077 (matchZipper!2798 (derivationStepZipper!2738 lt!2493018 (head!14128 (_1!37234 (get!23557 lt!2493257)))) (tail!13286 (_1!37234 (get!23557 lt!2493257)))))))

(assert (= (and d!2179365 c!1298082) b!6995964))

(assert (= (and d!2179365 (not c!1298082)) b!6995965))

(declare-fun m!7687590 () Bool)

(assert (=> d!2179365 m!7687590))

(assert (=> b!6995964 m!7686978))

(declare-fun m!7687592 () Bool)

(assert (=> b!6995965 m!7687592))

(assert (=> b!6995965 m!7687592))

(declare-fun m!7687594 () Bool)

(assert (=> b!6995965 m!7687594))

(declare-fun m!7687596 () Bool)

(assert (=> b!6995965 m!7687596))

(assert (=> b!6995965 m!7687594))

(assert (=> b!6995965 m!7687596))

(declare-fun m!7687598 () Bool)

(assert (=> b!6995965 m!7687598))

(assert (=> b!6995600 d!2179365))

(declare-fun d!2179367 () Bool)

(assert (=> d!2179367 (= (get!23557 lt!2493257) (v!53034 lt!2493257))))

(assert (=> b!6995600 d!2179367))

(declare-fun d!2179369 () Bool)

(declare-fun res!2853915 () Bool)

(declare-fun e!4205082 () Bool)

(assert (=> d!2179369 (=> res!2853915 e!4205082)))

(assert (=> d!2179369 (= res!2853915 (is-Nil!67197 lt!2493013))))

(assert (=> d!2179369 (= (forall!16167 lt!2493013 lambda!404316) e!4205082)))

(declare-fun b!6995970 () Bool)

(declare-fun e!4205083 () Bool)

(assert (=> b!6995970 (= e!4205082 e!4205083)))

(declare-fun res!2853916 () Bool)

(assert (=> b!6995970 (=> (not res!2853916) (not e!4205083))))

(assert (=> b!6995970 (= res!2853916 (dynLambda!26963 lambda!404316 (h!73645 lt!2493013)))))

(declare-fun b!6995971 () Bool)

(assert (=> b!6995971 (= e!4205083 (forall!16167 (t!381068 lt!2493013) lambda!404316))))

(assert (= (and d!2179369 (not res!2853915)) b!6995970))

(assert (= (and b!6995970 res!2853916) b!6995971))

(declare-fun b_lambda!263125 () Bool)

(assert (=> (not b_lambda!263125) (not b!6995970)))

(declare-fun m!7687600 () Bool)

(assert (=> b!6995970 m!7687600))

(declare-fun m!7687602 () Bool)

(assert (=> b!6995971 m!7687602))

(assert (=> d!2179027 d!2179369))

(declare-fun bs!1863070 () Bool)

(declare-fun d!2179371 () Bool)

(assert (= bs!1863070 (and d!2179371 b!6995229)))

(declare-fun lambda!404364 () Int)

(assert (=> bs!1863070 (= lambda!404364 lambda!404243)))

(declare-fun bs!1863071 () Bool)

(assert (= bs!1863071 (and d!2179371 d!2179029)))

(assert (=> bs!1863071 (= lambda!404364 lambda!404319)))

(declare-fun bs!1863072 () Bool)

(assert (= bs!1863072 (and d!2179371 d!2179073)))

(assert (=> bs!1863072 (= lambda!404364 lambda!404325)))

(assert (=> d!2179371 (= (inv!86005 setElem!47988) (forall!16166 (exprs!6754 setElem!47988) lambda!404364))))

(declare-fun bs!1863073 () Bool)

(assert (= bs!1863073 d!2179371))

(declare-fun m!7687604 () Bool)

(assert (=> bs!1863073 m!7687604))

(assert (=> setNonEmpty!47988 d!2179371))

(declare-fun d!2179373 () Bool)

(declare-fun c!1298083 () Bool)

(assert (=> d!2179373 (= c!1298083 (isEmpty!39219 (tail!13286 (_1!37234 lt!2493025))))))

(declare-fun e!4205084 () Bool)

(assert (=> d!2179373 (= (matchZipper!2798 (derivationStepZipper!2738 lt!2493018 (head!14128 (_1!37234 lt!2493025))) (tail!13286 (_1!37234 lt!2493025))) e!4205084)))

(declare-fun b!6995972 () Bool)

(assert (=> b!6995972 (= e!4205084 (nullableZipper!2453 (derivationStepZipper!2738 lt!2493018 (head!14128 (_1!37234 lt!2493025)))))))

(declare-fun b!6995973 () Bool)

(assert (=> b!6995973 (= e!4205084 (matchZipper!2798 (derivationStepZipper!2738 (derivationStepZipper!2738 lt!2493018 (head!14128 (_1!37234 lt!2493025))) (head!14128 (tail!13286 (_1!37234 lt!2493025)))) (tail!13286 (tail!13286 (_1!37234 lt!2493025)))))))

(assert (= (and d!2179373 c!1298083) b!6995972))

(assert (= (and d!2179373 (not c!1298083)) b!6995973))

(assert (=> d!2179373 m!7686984))

(declare-fun m!7687606 () Bool)

(assert (=> d!2179373 m!7687606))

(assert (=> b!6995972 m!7686982))

(declare-fun m!7687608 () Bool)

(assert (=> b!6995972 m!7687608))

(assert (=> b!6995973 m!7686984))

(declare-fun m!7687610 () Bool)

(assert (=> b!6995973 m!7687610))

(assert (=> b!6995973 m!7686982))

(assert (=> b!6995973 m!7687610))

(declare-fun m!7687612 () Bool)

(assert (=> b!6995973 m!7687612))

(assert (=> b!6995973 m!7686984))

(declare-fun m!7687614 () Bool)

(assert (=> b!6995973 m!7687614))

(assert (=> b!6995973 m!7687612))

(assert (=> b!6995973 m!7687614))

(declare-fun m!7687616 () Bool)

(assert (=> b!6995973 m!7687616))

(assert (=> b!6995604 d!2179373))

(declare-fun bs!1863074 () Bool)

(declare-fun d!2179375 () Bool)

(assert (= bs!1863074 (and d!2179375 d!2179015)))

(declare-fun lambda!404365 () Int)

(assert (=> bs!1863074 (= (= (head!14128 (_1!37234 lt!2493025)) (h!73644 s!7408)) (= lambda!404365 lambda!404310))))

(declare-fun bs!1863075 () Bool)

(assert (= bs!1863075 (and d!2179375 d!2179239)))

(assert (=> bs!1863075 (= (= (head!14128 (_1!37234 lt!2493025)) (head!14128 (t!381067 s!7408))) (= lambda!404365 lambda!404347))))

(declare-fun bs!1863076 () Bool)

(assert (= bs!1863076 (and d!2179375 d!2179103)))

(assert (=> bs!1863076 (= (= (head!14128 (_1!37234 lt!2493025)) (h!73644 s!7408)) (= lambda!404365 lambda!404329))))

(declare-fun bs!1863077 () Bool)

(assert (= bs!1863077 (and d!2179375 d!2179269)))

(assert (=> bs!1863077 (= (= (head!14128 (_1!37234 lt!2493025)) (head!14128 (t!381067 s!7408))) (= lambda!404365 lambda!404352))))

(declare-fun bs!1863078 () Bool)

(assert (= bs!1863078 (and d!2179375 b!6995234)))

(assert (=> bs!1863078 (= (= (head!14128 (_1!37234 lt!2493025)) (h!73644 s!7408)) (= lambda!404365 lambda!404244))))

(declare-fun bs!1863079 () Bool)

(assert (= bs!1863079 (and d!2179375 d!2179357)))

(assert (=> bs!1863079 (= (= (head!14128 (_1!37234 lt!2493025)) (head!14128 s!7408)) (= lambda!404365 lambda!404363))))

(declare-fun bs!1863080 () Bool)

(assert (= bs!1863080 (and d!2179375 d!2178997)))

(assert (=> bs!1863080 (= (= (head!14128 (_1!37234 lt!2493025)) (h!73644 s!7408)) (= lambda!404365 lambda!404309))))

(declare-fun bs!1863081 () Bool)

(assert (= bs!1863081 (and d!2179375 d!2179353)))

(assert (=> bs!1863081 (= (= (head!14128 (_1!37234 lt!2493025)) (head!14128 (t!381067 s!7408))) (= lambda!404365 lambda!404362))))

(assert (=> d!2179375 true))

(assert (=> d!2179375 (= (derivationStepZipper!2738 lt!2493018 (head!14128 (_1!37234 lt!2493025))) (flatMap!2244 lt!2493018 lambda!404365))))

(declare-fun bs!1863082 () Bool)

(assert (= bs!1863082 d!2179375))

(declare-fun m!7687618 () Bool)

(assert (=> bs!1863082 m!7687618))

(assert (=> b!6995604 d!2179375))

(declare-fun d!2179377 () Bool)

(assert (=> d!2179377 (= (head!14128 (_1!37234 lt!2493025)) (h!73644 (_1!37234 lt!2493025)))))

(assert (=> b!6995604 d!2179377))

(declare-fun d!2179379 () Bool)

(assert (=> d!2179379 (= (tail!13286 (_1!37234 lt!2493025)) (t!381067 (_1!37234 lt!2493025)))))

(assert (=> b!6995604 d!2179379))

(declare-fun d!2179381 () Bool)

(assert (=> d!2179381 (= (nullable!7018 (h!73643 (exprs!6754 lt!2493007))) (nullableFct!2651 (h!73643 (exprs!6754 lt!2493007))))))

(declare-fun bs!1863083 () Bool)

(assert (= bs!1863083 d!2179381))

(declare-fun m!7687620 () Bool)

(assert (=> bs!1863083 m!7687620))

(assert (=> b!6995427 d!2179381))

(assert (=> d!2179035 d!2179247))

(declare-fun d!2179383 () Bool)

(assert (=> d!2179383 (= (flatMap!2244 lt!2493023 lambda!404329) (choose!52384 lt!2493023 lambda!404329))))

(declare-fun bs!1863084 () Bool)

(assert (= bs!1863084 d!2179383))

(declare-fun m!7687622 () Bool)

(assert (=> bs!1863084 m!7687622))

(assert (=> d!2179103 d!2179383))

(declare-fun b!6995974 () Bool)

(declare-fun e!4205085 () Bool)

(assert (=> b!6995974 (= e!4205085 (nullable!7018 (h!73643 (exprs!6754 (Context!12509 (t!381066 (exprs!6754 lt!2492982)))))))))

(declare-fun b!6995975 () Bool)

(declare-fun e!4205086 () (Set Context!12508))

(assert (=> b!6995975 (= e!4205086 (as set.empty (Set Context!12508)))))

(declare-fun b!6995976 () Bool)

(declare-fun call!635037 () (Set Context!12508))

(declare-fun e!4205087 () (Set Context!12508))

(assert (=> b!6995976 (= e!4205087 (set.union call!635037 (derivationStepZipperUp!1908 (Context!12509 (t!381066 (exprs!6754 (Context!12509 (t!381066 (exprs!6754 lt!2492982)))))) (h!73644 s!7408))))))

(declare-fun b!6995977 () Bool)

(assert (=> b!6995977 (= e!4205087 e!4205086)))

(declare-fun c!1298085 () Bool)

(assert (=> b!6995977 (= c!1298085 (is-Cons!67195 (exprs!6754 (Context!12509 (t!381066 (exprs!6754 lt!2492982))))))))

(declare-fun b!6995978 () Bool)

(assert (=> b!6995978 (= e!4205086 call!635037)))

(declare-fun d!2179385 () Bool)

(declare-fun c!1298084 () Bool)

(assert (=> d!2179385 (= c!1298084 e!4205085)))

(declare-fun res!2853917 () Bool)

(assert (=> d!2179385 (=> (not res!2853917) (not e!4205085))))

(assert (=> d!2179385 (= res!2853917 (is-Cons!67195 (exprs!6754 (Context!12509 (t!381066 (exprs!6754 lt!2492982))))))))

(assert (=> d!2179385 (= (derivationStepZipperUp!1908 (Context!12509 (t!381066 (exprs!6754 lt!2492982))) (h!73644 s!7408)) e!4205087)))

(declare-fun bm!635032 () Bool)

(assert (=> bm!635032 (= call!635037 (derivationStepZipperDown!1976 (h!73643 (exprs!6754 (Context!12509 (t!381066 (exprs!6754 lt!2492982))))) (Context!12509 (t!381066 (exprs!6754 (Context!12509 (t!381066 (exprs!6754 lt!2492982)))))) (h!73644 s!7408)))))

(assert (= (and d!2179385 res!2853917) b!6995974))

(assert (= (and d!2179385 c!1298084) b!6995976))

(assert (= (and d!2179385 (not c!1298084)) b!6995977))

(assert (= (and b!6995977 c!1298085) b!6995978))

(assert (= (and b!6995977 (not c!1298085)) b!6995975))

(assert (= (or b!6995976 b!6995978) bm!635032))

(declare-fun m!7687624 () Bool)

(assert (=> b!6995974 m!7687624))

(declare-fun m!7687626 () Bool)

(assert (=> b!6995976 m!7687626))

(declare-fun m!7687628 () Bool)

(assert (=> bm!635032 m!7687628))

(assert (=> b!6995398 d!2179385))

(declare-fun d!2179387 () Bool)

(declare-fun c!1298086 () Bool)

(assert (=> d!2179387 (= c!1298086 (isEmpty!39219 (tail!13286 (t!381067 s!7408))))))

(declare-fun e!4205088 () Bool)

(assert (=> d!2179387 (= (matchZipper!2798 (derivationStepZipper!2738 lt!2493004 (head!14128 (t!381067 s!7408))) (tail!13286 (t!381067 s!7408))) e!4205088)))

(declare-fun b!6995979 () Bool)

(assert (=> b!6995979 (= e!4205088 (nullableZipper!2453 (derivationStepZipper!2738 lt!2493004 (head!14128 (t!381067 s!7408)))))))

(declare-fun b!6995980 () Bool)

(assert (=> b!6995980 (= e!4205088 (matchZipper!2798 (derivationStepZipper!2738 (derivationStepZipper!2738 lt!2493004 (head!14128 (t!381067 s!7408))) (head!14128 (tail!13286 (t!381067 s!7408)))) (tail!13286 (tail!13286 (t!381067 s!7408)))))))

(assert (= (and d!2179387 c!1298086) b!6995979))

(assert (= (and d!2179387 (not c!1298086)) b!6995980))

(assert (=> d!2179387 m!7686690))

(assert (=> d!2179387 m!7687330))

(assert (=> b!6995979 m!7686822))

(declare-fun m!7687630 () Bool)

(assert (=> b!6995979 m!7687630))

(assert (=> b!6995980 m!7686690))

(assert (=> b!6995980 m!7687334))

(assert (=> b!6995980 m!7686822))

(assert (=> b!6995980 m!7687334))

(declare-fun m!7687632 () Bool)

(assert (=> b!6995980 m!7687632))

(assert (=> b!6995980 m!7686690))

(assert (=> b!6995980 m!7687338))

(assert (=> b!6995980 m!7687632))

(assert (=> b!6995980 m!7687338))

(declare-fun m!7687634 () Bool)

(assert (=> b!6995980 m!7687634))

(assert (=> b!6995481 d!2179387))

(declare-fun bs!1863085 () Bool)

(declare-fun d!2179389 () Bool)

(assert (= bs!1863085 (and d!2179389 d!2179015)))

(declare-fun lambda!404366 () Int)

(assert (=> bs!1863085 (= (= (head!14128 (t!381067 s!7408)) (h!73644 s!7408)) (= lambda!404366 lambda!404310))))

(declare-fun bs!1863086 () Bool)

(assert (= bs!1863086 (and d!2179389 d!2179239)))

(assert (=> bs!1863086 (= lambda!404366 lambda!404347)))

(declare-fun bs!1863087 () Bool)

(assert (= bs!1863087 (and d!2179389 d!2179103)))

(assert (=> bs!1863087 (= (= (head!14128 (t!381067 s!7408)) (h!73644 s!7408)) (= lambda!404366 lambda!404329))))

(declare-fun bs!1863088 () Bool)

(assert (= bs!1863088 (and d!2179389 d!2179269)))

(assert (=> bs!1863088 (= lambda!404366 lambda!404352)))

(declare-fun bs!1863089 () Bool)

(assert (= bs!1863089 (and d!2179389 d!2179375)))

(assert (=> bs!1863089 (= (= (head!14128 (t!381067 s!7408)) (head!14128 (_1!37234 lt!2493025))) (= lambda!404366 lambda!404365))))

(declare-fun bs!1863090 () Bool)

(assert (= bs!1863090 (and d!2179389 b!6995234)))

(assert (=> bs!1863090 (= (= (head!14128 (t!381067 s!7408)) (h!73644 s!7408)) (= lambda!404366 lambda!404244))))

(declare-fun bs!1863091 () Bool)

(assert (= bs!1863091 (and d!2179389 d!2179357)))

(assert (=> bs!1863091 (= (= (head!14128 (t!381067 s!7408)) (head!14128 s!7408)) (= lambda!404366 lambda!404363))))

(declare-fun bs!1863092 () Bool)

(assert (= bs!1863092 (and d!2179389 d!2178997)))

(assert (=> bs!1863092 (= (= (head!14128 (t!381067 s!7408)) (h!73644 s!7408)) (= lambda!404366 lambda!404309))))

(declare-fun bs!1863093 () Bool)

(assert (= bs!1863093 (and d!2179389 d!2179353)))

(assert (=> bs!1863093 (= lambda!404366 lambda!404362)))

(assert (=> d!2179389 true))

(assert (=> d!2179389 (= (derivationStepZipper!2738 lt!2493004 (head!14128 (t!381067 s!7408))) (flatMap!2244 lt!2493004 lambda!404366))))

(declare-fun bs!1863094 () Bool)

(assert (= bs!1863094 d!2179389))

(declare-fun m!7687636 () Bool)

(assert (=> bs!1863094 m!7687636))

(assert (=> b!6995481 d!2179389))

(assert (=> b!6995481 d!2179241))

(assert (=> b!6995481 d!2179243))

(declare-fun d!2179391 () Bool)

(declare-fun e!4205093 () Bool)

(assert (=> d!2179391 e!4205093))

(declare-fun res!2853920 () Bool)

(assert (=> d!2179391 (=> (not res!2853920) (not e!4205093))))

(declare-fun a!12810 () Context!12508)

(assert (=> d!2179391 (= res!2853920 (= lt!2492983 (dynLambda!26965 lambda!404242 a!12810)))))

(declare-fun e!4205094 () Bool)

(assert (=> d!2179391 (and (inv!86005 a!12810) e!4205094)))

(assert (=> d!2179391 (= (choose!52390 z1!570 lambda!404242 lt!2492983) a!12810)))

(declare-fun b!6995986 () Bool)

(declare-fun tp!1930549 () Bool)

(assert (=> b!6995986 (= e!4205094 tp!1930549)))

(declare-fun b!6995987 () Bool)

(assert (=> b!6995987 (= e!4205093 (set.member a!12810 z1!570))))

(assert (= d!2179391 b!6995986))

(assert (= (and d!2179391 res!2853920) b!6995987))

(declare-fun b_lambda!263127 () Bool)

(assert (=> (not b_lambda!263127) (not d!2179391)))

(declare-fun m!7687638 () Bool)

(assert (=> d!2179391 m!7687638))

(declare-fun m!7687640 () Bool)

(assert (=> d!2179391 m!7687640))

(declare-fun m!7687642 () Bool)

(assert (=> b!6995987 m!7687642))

(assert (=> d!2179041 d!2179391))

(declare-fun d!2179393 () Bool)

(assert (=> d!2179393 (= (map!15534 z1!570 lambda!404242) (choose!52392 z1!570 lambda!404242))))

(declare-fun bs!1863095 () Bool)

(assert (= bs!1863095 d!2179393))

(declare-fun m!7687644 () Bool)

(assert (=> bs!1863095 m!7687644))

(assert (=> d!2179041 d!2179393))

(declare-fun d!2179395 () Bool)

(declare-fun res!2853921 () Bool)

(declare-fun e!4205095 () Bool)

(assert (=> d!2179395 (=> res!2853921 e!4205095)))

(assert (=> d!2179395 (= res!2853921 (is-Nil!67197 lt!2493212))))

(assert (=> d!2179395 (= (noDuplicate!2535 lt!2493212) e!4205095)))

(declare-fun b!6995988 () Bool)

(declare-fun e!4205096 () Bool)

(assert (=> b!6995988 (= e!4205095 e!4205096)))

(declare-fun res!2853922 () Bool)

(assert (=> b!6995988 (=> (not res!2853922) (not e!4205096))))

(assert (=> b!6995988 (= res!2853922 (not (contains!20416 (t!381068 lt!2493212) (h!73645 lt!2493212))))))

(declare-fun b!6995989 () Bool)

(assert (=> b!6995989 (= e!4205096 (noDuplicate!2535 (t!381068 lt!2493212)))))

(assert (= (and d!2179395 (not res!2853921)) b!6995988))

(assert (= (and b!6995988 res!2853922) b!6995989))

(declare-fun m!7687646 () Bool)

(assert (=> b!6995988 m!7687646))

(declare-fun m!7687648 () Bool)

(assert (=> b!6995989 m!7687648))

(assert (=> d!2179019 d!2179395))

(declare-fun d!2179397 () Bool)

(declare-fun e!4205097 () Bool)

(assert (=> d!2179397 e!4205097))

(declare-fun res!2853923 () Bool)

(assert (=> d!2179397 (=> (not res!2853923) (not e!4205097))))

(declare-fun res!2853924 () List!67321)

(assert (=> d!2179397 (= res!2853923 (noDuplicate!2535 res!2853924))))

(declare-fun e!4205099 () Bool)

(assert (=> d!2179397 e!4205099))

(assert (=> d!2179397 (= (choose!52386 lt!2492981) res!2853924)))

(declare-fun b!6995991 () Bool)

(declare-fun e!4205098 () Bool)

(declare-fun tp!1930550 () Bool)

(assert (=> b!6995991 (= e!4205098 tp!1930550)))

(declare-fun tp!1930551 () Bool)

(declare-fun b!6995990 () Bool)

(assert (=> b!6995990 (= e!4205099 (and (inv!86005 (h!73645 res!2853924)) e!4205098 tp!1930551))))

(declare-fun b!6995992 () Bool)

(assert (=> b!6995992 (= e!4205097 (= (content!13291 res!2853924) lt!2492981))))

(assert (= b!6995990 b!6995991))

(assert (= (and d!2179397 (is-Cons!67197 res!2853924)) b!6995990))

(assert (= (and d!2179397 res!2853923) b!6995992))

(declare-fun m!7687650 () Bool)

(assert (=> d!2179397 m!7687650))

(declare-fun m!7687652 () Bool)

(assert (=> b!6995990 m!7687652))

(declare-fun m!7687654 () Bool)

(assert (=> b!6995992 m!7687654))

(assert (=> d!2179019 d!2179397))

(declare-fun b!6996009 () Bool)

(declare-fun e!4205110 () Int)

(declare-fun call!635046 () Int)

(assert (=> b!6996009 (= e!4205110 (+ 1 call!635046))))

(declare-fun bm!635039 () Bool)

(declare-fun call!635045 () Int)

(declare-fun c!1298098 () Bool)

(assert (=> bm!635039 (= call!635045 (regexDepthTotal!274 (ite c!1298098 (regOne!35029 (h!73643 (exprs!6754 lt!2492984))) (regTwo!35028 (h!73643 (exprs!6754 lt!2492984))))))))

(declare-fun b!6996010 () Bool)

(declare-fun e!4205109 () Int)

(declare-fun call!635044 () Int)

(assert (=> b!6996010 (= e!4205109 (+ 1 call!635045 call!635044))))

(declare-fun bm!635040 () Bool)

(declare-fun c!1298095 () Bool)

(assert (=> bm!635040 (= call!635046 (regexDepthTotal!274 (ite c!1298095 (reg!17587 (h!73643 (exprs!6754 lt!2492984))) (ite c!1298098 (regTwo!35029 (h!73643 (exprs!6754 lt!2492984))) (regOne!35028 (h!73643 (exprs!6754 lt!2492984)))))))))

(declare-fun b!6996011 () Bool)

(declare-fun e!4205108 () Int)

(assert (=> b!6996011 (= e!4205108 1)))

(declare-fun b!6996012 () Bool)

(declare-fun e!4205111 () Int)

(assert (=> b!6996012 (= e!4205111 (+ 1 call!635044 call!635045))))

(declare-fun b!6996013 () Bool)

(assert (=> b!6996013 (= e!4205108 e!4205110)))

(assert (=> b!6996013 (= c!1298095 (is-Star!17258 (h!73643 (exprs!6754 lt!2492984))))))

(declare-fun b!6996014 () Bool)

(assert (=> b!6996014 (= c!1298098 (is-Union!17258 (h!73643 (exprs!6754 lt!2492984))))))

(assert (=> b!6996014 (= e!4205110 e!4205109)))

(declare-fun d!2179399 () Bool)

(declare-fun lt!2493344 () Int)

(assert (=> d!2179399 (> lt!2493344 0)))

(assert (=> d!2179399 (= lt!2493344 e!4205108)))

(declare-fun c!1298096 () Bool)

(assert (=> d!2179399 (= c!1298096 (is-ElementMatch!17258 (h!73643 (exprs!6754 lt!2492984))))))

(assert (=> d!2179399 (= (regexDepthTotal!274 (h!73643 (exprs!6754 lt!2492984))) lt!2493344)))

(declare-fun bm!635041 () Bool)

(assert (=> bm!635041 (= call!635044 call!635046)))

(declare-fun b!6996015 () Bool)

(assert (=> b!6996015 (= e!4205111 1)))

(declare-fun b!6996016 () Bool)

(assert (=> b!6996016 (= e!4205109 e!4205111)))

(declare-fun c!1298097 () Bool)

(assert (=> b!6996016 (= c!1298097 (is-Concat!26103 (h!73643 (exprs!6754 lt!2492984))))))

(assert (= (and d!2179399 c!1298096) b!6996011))

(assert (= (and d!2179399 (not c!1298096)) b!6996013))

(assert (= (and b!6996013 c!1298095) b!6996009))

(assert (= (and b!6996013 (not c!1298095)) b!6996014))

(assert (= (and b!6996014 c!1298098) b!6996010))

(assert (= (and b!6996014 (not c!1298098)) b!6996016))

(assert (= (and b!6996016 c!1298097) b!6996012))

(assert (= (and b!6996016 (not c!1298097)) b!6996015))

(assert (= (or b!6996010 b!6996012) bm!635041))

(assert (= (or b!6996010 b!6996012) bm!635039))

(assert (= (or b!6996009 bm!635041) bm!635040))

(declare-fun m!7687656 () Bool)

(assert (=> bm!635039 m!7687656))

(declare-fun m!7687658 () Bool)

(assert (=> bm!635040 m!7687658))

(assert (=> b!6995497 d!2179399))

(declare-fun d!2179401 () Bool)

(declare-fun lt!2493345 () Int)

(assert (=> d!2179401 (>= lt!2493345 0)))

(declare-fun e!4205112 () Int)

(assert (=> d!2179401 (= lt!2493345 e!4205112)))

(declare-fun c!1298099 () Bool)

(assert (=> d!2179401 (= c!1298099 (is-Cons!67195 (exprs!6754 (Context!12509 (t!381066 (exprs!6754 lt!2492984))))))))

(assert (=> d!2179401 (= (contextDepthTotal!451 (Context!12509 (t!381066 (exprs!6754 lt!2492984)))) lt!2493345)))

(declare-fun b!6996017 () Bool)

(assert (=> b!6996017 (= e!4205112 (+ (regexDepthTotal!274 (h!73643 (exprs!6754 (Context!12509 (t!381066 (exprs!6754 lt!2492984)))))) (contextDepthTotal!451 (Context!12509 (t!381066 (exprs!6754 (Context!12509 (t!381066 (exprs!6754 lt!2492984)))))))))))

(declare-fun b!6996018 () Bool)

(assert (=> b!6996018 (= e!4205112 1)))

(assert (= (and d!2179401 c!1298099) b!6996017))

(assert (= (and d!2179401 (not c!1298099)) b!6996018))

(declare-fun m!7687660 () Bool)

(assert (=> b!6996017 m!7687660))

(declare-fun m!7687662 () Bool)

(assert (=> b!6996017 m!7687662))

(assert (=> b!6995497 d!2179401))

(assert (=> d!2179089 d!2179111))

(declare-fun b!6996031 () Bool)

(declare-fun e!4205124 () Context!12508)

(assert (=> b!6996031 (= e!4205124 (h!73645 (toList!10618 lt!2492981)))))

(declare-fun b!6996032 () Bool)

(declare-fun e!4205121 () Context!12508)

(assert (=> b!6996032 (= e!4205124 e!4205121)))

(declare-fun c!1298104 () Bool)

(assert (=> b!6996032 (= c!1298104 (is-Cons!67197 (toList!10618 lt!2492981)))))

(declare-fun d!2179403 () Bool)

(declare-fun e!4205122 () Bool)

(assert (=> d!2179403 e!4205122))

(declare-fun res!2853929 () Bool)

(assert (=> d!2179403 (=> (not res!2853929) (not e!4205122))))

(declare-fun lt!2493350 () Context!12508)

(assert (=> d!2179403 (= res!2853929 (dynLambda!26963 lambda!404241 lt!2493350))))

(assert (=> d!2179403 (= lt!2493350 e!4205124)))

(declare-fun c!1298105 () Bool)

(declare-fun e!4205123 () Bool)

(assert (=> d!2179403 (= c!1298105 e!4205123)))

(declare-fun res!2853930 () Bool)

(assert (=> d!2179403 (=> (not res!2853930) (not e!4205123))))

(assert (=> d!2179403 (= res!2853930 (is-Cons!67197 (toList!10618 lt!2492981)))))

(assert (=> d!2179403 (exists!3065 (toList!10618 lt!2492981) lambda!404241)))

(assert (=> d!2179403 (= (getWitness!1171 (toList!10618 lt!2492981) lambda!404241) lt!2493350)))

(declare-fun b!6996033 () Bool)

(declare-fun lt!2493351 () Unit!161171)

(declare-fun Unit!161175 () Unit!161171)

(assert (=> b!6996033 (= lt!2493351 Unit!161175)))

(assert (=> b!6996033 false))

(declare-fun head!14130 (List!67321) Context!12508)

(assert (=> b!6996033 (= e!4205121 (head!14130 (toList!10618 lt!2492981)))))

(declare-fun b!6996034 () Bool)

(assert (=> b!6996034 (= e!4205123 (dynLambda!26963 lambda!404241 (h!73645 (toList!10618 lt!2492981))))))

(declare-fun b!6996035 () Bool)

(assert (=> b!6996035 (= e!4205122 (contains!20416 (toList!10618 lt!2492981) lt!2493350))))

(declare-fun b!6996036 () Bool)

(assert (=> b!6996036 (= e!4205121 (getWitness!1171 (t!381068 (toList!10618 lt!2492981)) lambda!404241))))

(assert (= (and d!2179403 res!2853930) b!6996034))

(assert (= (and d!2179403 c!1298105) b!6996031))

(assert (= (and d!2179403 (not c!1298105)) b!6996032))

(assert (= (and b!6996032 c!1298104) b!6996036))

(assert (= (and b!6996032 (not c!1298104)) b!6996033))

(assert (= (and d!2179403 res!2853929) b!6996035))

(declare-fun b_lambda!263129 () Bool)

(assert (=> (not b_lambda!263129) (not d!2179403)))

(declare-fun b_lambda!263131 () Bool)

(assert (=> (not b_lambda!263131) (not b!6996034)))

(declare-fun m!7687664 () Bool)

(assert (=> b!6996036 m!7687664))

(declare-fun m!7687666 () Bool)

(assert (=> b!6996034 m!7687666))

(assert (=> b!6996035 m!7686498))

(declare-fun m!7687668 () Bool)

(assert (=> b!6996035 m!7687668))

(declare-fun m!7687670 () Bool)

(assert (=> d!2179403 m!7687670))

(assert (=> d!2179403 m!7686498))

(declare-fun m!7687672 () Bool)

(assert (=> d!2179403 m!7687672))

(assert (=> b!6996033 m!7686498))

(declare-fun m!7687674 () Bool)

(assert (=> b!6996033 m!7687674))

(assert (=> d!2179021 d!2179403))

(assert (=> d!2179021 d!2179019))

(declare-fun d!2179405 () Bool)

(declare-fun lt!2493354 () Bool)

(assert (=> d!2179405 (= lt!2493354 (exists!3065 (toList!10618 lt!2492981) lambda!404241))))

(declare-fun choose!52406 ((Set Context!12508) Int) Bool)

(assert (=> d!2179405 (= lt!2493354 (choose!52406 lt!2492981 lambda!404241))))

(assert (=> d!2179405 (= (exists!3067 lt!2492981 lambda!404241) lt!2493354)))

(declare-fun bs!1863096 () Bool)

(assert (= bs!1863096 d!2179405))

(assert (=> bs!1863096 m!7686498))

(assert (=> bs!1863096 m!7686498))

(assert (=> bs!1863096 m!7687672))

(declare-fun m!7687676 () Bool)

(assert (=> bs!1863096 m!7687676))

(assert (=> d!2179021 d!2179405))

(declare-fun d!2179407 () Bool)

(declare-fun c!1298106 () Bool)

(assert (=> d!2179407 (= c!1298106 (isEmpty!39219 (tail!13286 (_2!37234 lt!2493025))))))

(declare-fun e!4205125 () Bool)

(assert (=> d!2179407 (= (matchZipper!2798 (derivationStepZipper!2738 lt!2493021 (head!14128 (_2!37234 lt!2493025))) (tail!13286 (_2!37234 lt!2493025))) e!4205125)))

(declare-fun b!6996037 () Bool)

(assert (=> b!6996037 (= e!4205125 (nullableZipper!2453 (derivationStepZipper!2738 lt!2493021 (head!14128 (_2!37234 lt!2493025)))))))

(declare-fun b!6996038 () Bool)

(assert (=> b!6996038 (= e!4205125 (matchZipper!2798 (derivationStepZipper!2738 (derivationStepZipper!2738 lt!2493021 (head!14128 (_2!37234 lt!2493025))) (head!14128 (tail!13286 (_2!37234 lt!2493025)))) (tail!13286 (tail!13286 (_2!37234 lt!2493025)))))))

(assert (= (and d!2179407 c!1298106) b!6996037))

(assert (= (and d!2179407 (not c!1298106)) b!6996038))

(assert (=> d!2179407 m!7686908))

(declare-fun m!7687678 () Bool)

(assert (=> d!2179407 m!7687678))

(assert (=> b!6996037 m!7686906))

(declare-fun m!7687680 () Bool)

(assert (=> b!6996037 m!7687680))

(assert (=> b!6996038 m!7686908))

(declare-fun m!7687682 () Bool)

(assert (=> b!6996038 m!7687682))

(assert (=> b!6996038 m!7686906))

(assert (=> b!6996038 m!7687682))

(declare-fun m!7687684 () Bool)

(assert (=> b!6996038 m!7687684))

(assert (=> b!6996038 m!7686908))

(declare-fun m!7687686 () Bool)

(assert (=> b!6996038 m!7687686))

(assert (=> b!6996038 m!7687684))

(assert (=> b!6996038 m!7687686))

(declare-fun m!7687688 () Bool)

(assert (=> b!6996038 m!7687688))

(assert (=> b!6995513 d!2179407))

(declare-fun bs!1863097 () Bool)

(declare-fun d!2179409 () Bool)

(assert (= bs!1863097 (and d!2179409 d!2179015)))

(declare-fun lambda!404367 () Int)

(assert (=> bs!1863097 (= (= (head!14128 (_2!37234 lt!2493025)) (h!73644 s!7408)) (= lambda!404367 lambda!404310))))

(declare-fun bs!1863098 () Bool)

(assert (= bs!1863098 (and d!2179409 d!2179239)))

(assert (=> bs!1863098 (= (= (head!14128 (_2!37234 lt!2493025)) (head!14128 (t!381067 s!7408))) (= lambda!404367 lambda!404347))))

(declare-fun bs!1863099 () Bool)

(assert (= bs!1863099 (and d!2179409 d!2179389)))

(assert (=> bs!1863099 (= (= (head!14128 (_2!37234 lt!2493025)) (head!14128 (t!381067 s!7408))) (= lambda!404367 lambda!404366))))

(declare-fun bs!1863100 () Bool)

(assert (= bs!1863100 (and d!2179409 d!2179103)))

(assert (=> bs!1863100 (= (= (head!14128 (_2!37234 lt!2493025)) (h!73644 s!7408)) (= lambda!404367 lambda!404329))))

(declare-fun bs!1863101 () Bool)

(assert (= bs!1863101 (and d!2179409 d!2179269)))

(assert (=> bs!1863101 (= (= (head!14128 (_2!37234 lt!2493025)) (head!14128 (t!381067 s!7408))) (= lambda!404367 lambda!404352))))

(declare-fun bs!1863102 () Bool)

(assert (= bs!1863102 (and d!2179409 d!2179375)))

(assert (=> bs!1863102 (= (= (head!14128 (_2!37234 lt!2493025)) (head!14128 (_1!37234 lt!2493025))) (= lambda!404367 lambda!404365))))

(declare-fun bs!1863103 () Bool)

(assert (= bs!1863103 (and d!2179409 b!6995234)))

(assert (=> bs!1863103 (= (= (head!14128 (_2!37234 lt!2493025)) (h!73644 s!7408)) (= lambda!404367 lambda!404244))))

(declare-fun bs!1863104 () Bool)

(assert (= bs!1863104 (and d!2179409 d!2179357)))

(assert (=> bs!1863104 (= (= (head!14128 (_2!37234 lt!2493025)) (head!14128 s!7408)) (= lambda!404367 lambda!404363))))

(declare-fun bs!1863105 () Bool)

(assert (= bs!1863105 (and d!2179409 d!2178997)))

(assert (=> bs!1863105 (= (= (head!14128 (_2!37234 lt!2493025)) (h!73644 s!7408)) (= lambda!404367 lambda!404309))))

(declare-fun bs!1863106 () Bool)

(assert (= bs!1863106 (and d!2179409 d!2179353)))

(assert (=> bs!1863106 (= (= (head!14128 (_2!37234 lt!2493025)) (head!14128 (t!381067 s!7408))) (= lambda!404367 lambda!404362))))

(assert (=> d!2179409 true))

(assert (=> d!2179409 (= (derivationStepZipper!2738 lt!2493021 (head!14128 (_2!37234 lt!2493025))) (flatMap!2244 lt!2493021 lambda!404367))))

(declare-fun bs!1863107 () Bool)

(assert (= bs!1863107 d!2179409))

(declare-fun m!7687690 () Bool)

(assert (=> bs!1863107 m!7687690))

(assert (=> b!6995513 d!2179409))

(declare-fun d!2179411 () Bool)

(assert (=> d!2179411 (= (head!14128 (_2!37234 lt!2493025)) (h!73644 (_2!37234 lt!2493025)))))

(assert (=> b!6995513 d!2179411))

(declare-fun d!2179413 () Bool)

(assert (=> d!2179413 (= (tail!13286 (_2!37234 lt!2493025)) (t!381067 (_2!37234 lt!2493025)))))

(assert (=> b!6995513 d!2179413))

(declare-fun b!6996039 () Bool)

(declare-fun e!4205128 () Int)

(declare-fun call!635049 () Int)

(assert (=> b!6996039 (= e!4205128 (+ 1 call!635049))))

(declare-fun bm!635042 () Bool)

(declare-fun call!635048 () Int)

(declare-fun c!1298110 () Bool)

(assert (=> bm!635042 (= call!635048 (regexDepthTotal!274 (ite c!1298110 (regOne!35029 (h!73643 (exprs!6754 lt!2493029))) (regTwo!35028 (h!73643 (exprs!6754 lt!2493029))))))))

(declare-fun b!6996040 () Bool)

(declare-fun e!4205127 () Int)

(declare-fun call!635047 () Int)

(assert (=> b!6996040 (= e!4205127 (+ 1 call!635048 call!635047))))

(declare-fun bm!635043 () Bool)

(declare-fun c!1298107 () Bool)

(assert (=> bm!635043 (= call!635049 (regexDepthTotal!274 (ite c!1298107 (reg!17587 (h!73643 (exprs!6754 lt!2493029))) (ite c!1298110 (regTwo!35029 (h!73643 (exprs!6754 lt!2493029))) (regOne!35028 (h!73643 (exprs!6754 lt!2493029)))))))))

(declare-fun b!6996041 () Bool)

(declare-fun e!4205126 () Int)

(assert (=> b!6996041 (= e!4205126 1)))

(declare-fun b!6996042 () Bool)

(declare-fun e!4205129 () Int)

(assert (=> b!6996042 (= e!4205129 (+ 1 call!635047 call!635048))))

(declare-fun b!6996043 () Bool)

(assert (=> b!6996043 (= e!4205126 e!4205128)))

(assert (=> b!6996043 (= c!1298107 (is-Star!17258 (h!73643 (exprs!6754 lt!2493029))))))

(declare-fun b!6996044 () Bool)

(assert (=> b!6996044 (= c!1298110 (is-Union!17258 (h!73643 (exprs!6754 lt!2493029))))))

(assert (=> b!6996044 (= e!4205128 e!4205127)))

(declare-fun d!2179415 () Bool)

(declare-fun lt!2493355 () Int)

(assert (=> d!2179415 (> lt!2493355 0)))

(assert (=> d!2179415 (= lt!2493355 e!4205126)))

(declare-fun c!1298108 () Bool)

(assert (=> d!2179415 (= c!1298108 (is-ElementMatch!17258 (h!73643 (exprs!6754 lt!2493029))))))

(assert (=> d!2179415 (= (regexDepthTotal!274 (h!73643 (exprs!6754 lt!2493029))) lt!2493355)))

(declare-fun bm!635044 () Bool)

(assert (=> bm!635044 (= call!635047 call!635049)))

(declare-fun b!6996045 () Bool)

(assert (=> b!6996045 (= e!4205129 1)))

(declare-fun b!6996046 () Bool)

(assert (=> b!6996046 (= e!4205127 e!4205129)))

(declare-fun c!1298109 () Bool)

(assert (=> b!6996046 (= c!1298109 (is-Concat!26103 (h!73643 (exprs!6754 lt!2493029))))))

(assert (= (and d!2179415 c!1298108) b!6996041))

(assert (= (and d!2179415 (not c!1298108)) b!6996043))

(assert (= (and b!6996043 c!1298107) b!6996039))

(assert (= (and b!6996043 (not c!1298107)) b!6996044))

(assert (= (and b!6996044 c!1298110) b!6996040))

(assert (= (and b!6996044 (not c!1298110)) b!6996046))

(assert (= (and b!6996046 c!1298109) b!6996042))

(assert (= (and b!6996046 (not c!1298109)) b!6996045))

(assert (= (or b!6996040 b!6996042) bm!635044))

(assert (= (or b!6996040 b!6996042) bm!635042))

(assert (= (or b!6996039 bm!635044) bm!635043))

(declare-fun m!7687692 () Bool)

(assert (=> bm!635042 m!7687692))

(declare-fun m!7687694 () Bool)

(assert (=> bm!635043 m!7687694))

(assert (=> b!6995505 d!2179415))

(declare-fun d!2179417 () Bool)

(declare-fun lt!2493356 () Int)

(assert (=> d!2179417 (>= lt!2493356 0)))

(declare-fun e!4205130 () Int)

(assert (=> d!2179417 (= lt!2493356 e!4205130)))

(declare-fun c!1298111 () Bool)

(assert (=> d!2179417 (= c!1298111 (is-Cons!67195 (exprs!6754 (Context!12509 (t!381066 (exprs!6754 lt!2493029))))))))

(assert (=> d!2179417 (= (contextDepthTotal!451 (Context!12509 (t!381066 (exprs!6754 lt!2493029)))) lt!2493356)))

(declare-fun b!6996047 () Bool)

(assert (=> b!6996047 (= e!4205130 (+ (regexDepthTotal!274 (h!73643 (exprs!6754 (Context!12509 (t!381066 (exprs!6754 lt!2493029)))))) (contextDepthTotal!451 (Context!12509 (t!381066 (exprs!6754 (Context!12509 (t!381066 (exprs!6754 lt!2493029)))))))))))

(declare-fun b!6996048 () Bool)

(assert (=> b!6996048 (= e!4205130 1)))

(assert (= (and d!2179417 c!1298111) b!6996047))

(assert (= (and d!2179417 (not c!1298111)) b!6996048))

(declare-fun m!7687696 () Bool)

(assert (=> b!6996047 m!7687696))

(declare-fun m!7687698 () Bool)

(assert (=> b!6996047 m!7687698))

(assert (=> b!6995505 d!2179417))

(declare-fun d!2179419 () Bool)

(assert (=> d!2179419 (forall!16166 (++!15217 (exprs!6754 lt!2492984) (exprs!6754 ct2!306)) lambda!404243)))

(declare-fun lt!2493357 () Unit!161171)

(assert (=> d!2179419 (= lt!2493357 (choose!52383 (exprs!6754 lt!2492984) (exprs!6754 ct2!306) lambda!404243))))

(assert (=> d!2179419 (forall!16166 (exprs!6754 lt!2492984) lambda!404243)))

(assert (=> d!2179419 (= (lemmaConcatPreservesForall!594 (exprs!6754 lt!2492984) (exprs!6754 ct2!306) lambda!404243) lt!2493357)))

(declare-fun bs!1863108 () Bool)

(assert (= bs!1863108 d!2179419))

(assert (=> bs!1863108 m!7687044))

(assert (=> bs!1863108 m!7687044))

(declare-fun m!7687700 () Bool)

(assert (=> bs!1863108 m!7687700))

(declare-fun m!7687702 () Bool)

(assert (=> bs!1863108 m!7687702))

(declare-fun m!7687704 () Bool)

(assert (=> bs!1863108 m!7687704))

(assert (=> bs!1862929 d!2179419))

(declare-fun b!6996049 () Bool)

(declare-fun e!4205132 () List!67319)

(assert (=> b!6996049 (= e!4205132 (exprs!6754 ct2!306))))

(declare-fun b!6996050 () Bool)

(assert (=> b!6996050 (= e!4205132 (Cons!67195 (h!73643 (exprs!6754 lt!2492984)) (++!15217 (t!381066 (exprs!6754 lt!2492984)) (exprs!6754 ct2!306))))))

(declare-fun e!4205131 () Bool)

(declare-fun b!6996052 () Bool)

(declare-fun lt!2493358 () List!67319)

(assert (=> b!6996052 (= e!4205131 (or (not (= (exprs!6754 ct2!306) Nil!67195)) (= lt!2493358 (exprs!6754 lt!2492984))))))

(declare-fun b!6996051 () Bool)

(declare-fun res!2853932 () Bool)

(assert (=> b!6996051 (=> (not res!2853932) (not e!4205131))))

(assert (=> b!6996051 (= res!2853932 (= (size!40923 lt!2493358) (+ (size!40923 (exprs!6754 lt!2492984)) (size!40923 (exprs!6754 ct2!306)))))))

(declare-fun d!2179421 () Bool)

(assert (=> d!2179421 e!4205131))

(declare-fun res!2853931 () Bool)

(assert (=> d!2179421 (=> (not res!2853931) (not e!4205131))))

(assert (=> d!2179421 (= res!2853931 (= (content!13290 lt!2493358) (set.union (content!13290 (exprs!6754 lt!2492984)) (content!13290 (exprs!6754 ct2!306)))))))

(assert (=> d!2179421 (= lt!2493358 e!4205132)))

(declare-fun c!1298112 () Bool)

(assert (=> d!2179421 (= c!1298112 (is-Nil!67195 (exprs!6754 lt!2492984)))))

(assert (=> d!2179421 (= (++!15217 (exprs!6754 lt!2492984) (exprs!6754 ct2!306)) lt!2493358)))

(assert (= (and d!2179421 c!1298112) b!6996049))

(assert (= (and d!2179421 (not c!1298112)) b!6996050))

(assert (= (and d!2179421 res!2853931) b!6996051))

(assert (= (and b!6996051 res!2853932) b!6996052))

(declare-fun m!7687706 () Bool)

(assert (=> b!6996050 m!7687706))

(declare-fun m!7687708 () Bool)

(assert (=> b!6996051 m!7687708))

(declare-fun m!7687710 () Bool)

(assert (=> b!6996051 m!7687710))

(assert (=> b!6996051 m!7686742))

(declare-fun m!7687712 () Bool)

(assert (=> d!2179421 m!7687712))

(declare-fun m!7687714 () Bool)

(assert (=> d!2179421 m!7687714))

(assert (=> d!2179421 m!7686748))

(assert (=> bs!1862929 d!2179421))

(declare-fun d!2179423 () Bool)

(declare-fun c!1298113 () Bool)

(assert (=> d!2179423 (= c!1298113 (isEmpty!39219 (tail!13286 s!7408)))))

(declare-fun e!4205133 () Bool)

(assert (=> d!2179423 (= (matchZipper!2798 (derivationStepZipper!2738 lt!2493016 (head!14128 s!7408)) (tail!13286 s!7408)) e!4205133)))

(declare-fun b!6996053 () Bool)

(assert (=> b!6996053 (= e!4205133 (nullableZipper!2453 (derivationStepZipper!2738 lt!2493016 (head!14128 s!7408))))))

(declare-fun b!6996054 () Bool)

(assert (=> b!6996054 (= e!4205133 (matchZipper!2798 (derivationStepZipper!2738 (derivationStepZipper!2738 lt!2493016 (head!14128 s!7408)) (head!14128 (tail!13286 s!7408))) (tail!13286 (tail!13286 s!7408))))))

(assert (= (and d!2179423 c!1298113) b!6996053))

(assert (= (and d!2179423 (not c!1298113)) b!6996054))

(assert (=> d!2179423 m!7686794))

(assert (=> d!2179423 m!7687568))

(assert (=> b!6996053 m!7686792))

(declare-fun m!7687716 () Bool)

(assert (=> b!6996053 m!7687716))

(assert (=> b!6996054 m!7686794))

(assert (=> b!6996054 m!7687572))

(assert (=> b!6996054 m!7686792))

(assert (=> b!6996054 m!7687572))

(declare-fun m!7687718 () Bool)

(assert (=> b!6996054 m!7687718))

(assert (=> b!6996054 m!7686794))

(assert (=> b!6996054 m!7687576))

(assert (=> b!6996054 m!7687718))

(assert (=> b!6996054 m!7687576))

(declare-fun m!7687720 () Bool)

(assert (=> b!6996054 m!7687720))

(assert (=> b!6995472 d!2179423))

(declare-fun bs!1863109 () Bool)

(declare-fun d!2179425 () Bool)

(assert (= bs!1863109 (and d!2179425 d!2179015)))

(declare-fun lambda!404368 () Int)

(assert (=> bs!1863109 (= (= (head!14128 s!7408) (h!73644 s!7408)) (= lambda!404368 lambda!404310))))

(declare-fun bs!1863110 () Bool)

(assert (= bs!1863110 (and d!2179425 d!2179239)))

(assert (=> bs!1863110 (= (= (head!14128 s!7408) (head!14128 (t!381067 s!7408))) (= lambda!404368 lambda!404347))))

(declare-fun bs!1863111 () Bool)

(assert (= bs!1863111 (and d!2179425 d!2179389)))

(assert (=> bs!1863111 (= (= (head!14128 s!7408) (head!14128 (t!381067 s!7408))) (= lambda!404368 lambda!404366))))

(declare-fun bs!1863112 () Bool)

(assert (= bs!1863112 (and d!2179425 d!2179103)))

(assert (=> bs!1863112 (= (= (head!14128 s!7408) (h!73644 s!7408)) (= lambda!404368 lambda!404329))))

(declare-fun bs!1863113 () Bool)

(assert (= bs!1863113 (and d!2179425 d!2179269)))

(assert (=> bs!1863113 (= (= (head!14128 s!7408) (head!14128 (t!381067 s!7408))) (= lambda!404368 lambda!404352))))

(declare-fun bs!1863114 () Bool)

(assert (= bs!1863114 (and d!2179425 b!6995234)))

(assert (=> bs!1863114 (= (= (head!14128 s!7408) (h!73644 s!7408)) (= lambda!404368 lambda!404244))))

(declare-fun bs!1863115 () Bool)

(assert (= bs!1863115 (and d!2179425 d!2179357)))

(assert (=> bs!1863115 (= lambda!404368 lambda!404363)))

(declare-fun bs!1863116 () Bool)

(assert (= bs!1863116 (and d!2179425 d!2178997)))

(assert (=> bs!1863116 (= (= (head!14128 s!7408) (h!73644 s!7408)) (= lambda!404368 lambda!404309))))

(declare-fun bs!1863117 () Bool)

(assert (= bs!1863117 (and d!2179425 d!2179353)))

(assert (=> bs!1863117 (= (= (head!14128 s!7408) (head!14128 (t!381067 s!7408))) (= lambda!404368 lambda!404362))))

(declare-fun bs!1863118 () Bool)

(assert (= bs!1863118 (and d!2179425 d!2179375)))

(assert (=> bs!1863118 (= (= (head!14128 s!7408) (head!14128 (_1!37234 lt!2493025))) (= lambda!404368 lambda!404365))))

(declare-fun bs!1863119 () Bool)

(assert (= bs!1863119 (and d!2179425 d!2179409)))

(assert (=> bs!1863119 (= (= (head!14128 s!7408) (head!14128 (_2!37234 lt!2493025))) (= lambda!404368 lambda!404367))))

(assert (=> d!2179425 true))

(assert (=> d!2179425 (= (derivationStepZipper!2738 lt!2493016 (head!14128 s!7408)) (flatMap!2244 lt!2493016 lambda!404368))))

(declare-fun bs!1863120 () Bool)

(assert (= bs!1863120 d!2179425))

(declare-fun m!7687722 () Bool)

(assert (=> bs!1863120 m!7687722))

(assert (=> b!6995472 d!2179425))

(assert (=> b!6995472 d!2179359))

(assert (=> b!6995472 d!2179361))

(declare-fun d!2179427 () Bool)

(assert (=> d!2179427 (= (isEmpty!39223 lt!2493022) (not (is-Some!16762 lt!2493022)))))

(assert (=> d!2179075 d!2179427))

(declare-fun d!2179429 () Bool)

(assert (=> d!2179429 (= (isEmpty!39219 (_2!37234 lt!2493025)) (is-Nil!67196 (_2!37234 lt!2493025)))))

(assert (=> d!2179065 d!2179429))

(declare-fun b!6996055 () Bool)

(declare-fun e!4205134 () Bool)

(assert (=> b!6996055 (= e!4205134 (nullable!7018 (h!73643 (exprs!6754 (Context!12509 (t!381066 (exprs!6754 lt!2492984)))))))))

(declare-fun b!6996056 () Bool)

(declare-fun e!4205135 () (Set Context!12508))

(assert (=> b!6996056 (= e!4205135 (as set.empty (Set Context!12508)))))

(declare-fun b!6996057 () Bool)

(declare-fun call!635050 () (Set Context!12508))

(declare-fun e!4205136 () (Set Context!12508))

(assert (=> b!6996057 (= e!4205136 (set.union call!635050 (derivationStepZipperUp!1908 (Context!12509 (t!381066 (exprs!6754 (Context!12509 (t!381066 (exprs!6754 lt!2492984)))))) (h!73644 s!7408))))))

(declare-fun b!6996058 () Bool)

(assert (=> b!6996058 (= e!4205136 e!4205135)))

(declare-fun c!1298115 () Bool)

(assert (=> b!6996058 (= c!1298115 (is-Cons!67195 (exprs!6754 (Context!12509 (t!381066 (exprs!6754 lt!2492984))))))))

(declare-fun b!6996059 () Bool)

(assert (=> b!6996059 (= e!4205135 call!635050)))

(declare-fun d!2179431 () Bool)

(declare-fun c!1298114 () Bool)

(assert (=> d!2179431 (= c!1298114 e!4205134)))

(declare-fun res!2853933 () Bool)

(assert (=> d!2179431 (=> (not res!2853933) (not e!4205134))))

(assert (=> d!2179431 (= res!2853933 (is-Cons!67195 (exprs!6754 (Context!12509 (t!381066 (exprs!6754 lt!2492984))))))))

(assert (=> d!2179431 (= (derivationStepZipperUp!1908 (Context!12509 (t!381066 (exprs!6754 lt!2492984))) (h!73644 s!7408)) e!4205136)))

(declare-fun bm!635045 () Bool)

(assert (=> bm!635045 (= call!635050 (derivationStepZipperDown!1976 (h!73643 (exprs!6754 (Context!12509 (t!381066 (exprs!6754 lt!2492984))))) (Context!12509 (t!381066 (exprs!6754 (Context!12509 (t!381066 (exprs!6754 lt!2492984)))))) (h!73644 s!7408)))))

(assert (= (and d!2179431 res!2853933) b!6996055))

(assert (= (and d!2179431 c!1298114) b!6996057))

(assert (= (and d!2179431 (not c!1298114)) b!6996058))

(assert (= (and b!6996058 c!1298115) b!6996059))

(assert (= (and b!6996058 (not c!1298115)) b!6996056))

(assert (= (or b!6996057 b!6996059) bm!635045))

(declare-fun m!7687724 () Bool)

(assert (=> b!6996055 m!7687724))

(declare-fun m!7687726 () Bool)

(assert (=> b!6996057 m!7687726))

(declare-fun m!7687728 () Bool)

(assert (=> bm!635045 m!7687728))

(assert (=> b!6995509 d!2179431))

(declare-fun d!2179433 () Bool)

(declare-fun res!2853938 () Bool)

(declare-fun e!4205141 () Bool)

(assert (=> d!2179433 (=> res!2853938 e!4205141)))

(assert (=> d!2179433 (= res!2853938 (is-Nil!67195 (exprs!6754 setElem!47982)))))

(assert (=> d!2179433 (= (forall!16166 (exprs!6754 setElem!47982) lambda!404319) e!4205141)))

(declare-fun b!6996064 () Bool)

(declare-fun e!4205142 () Bool)

(assert (=> b!6996064 (= e!4205141 e!4205142)))

(declare-fun res!2853939 () Bool)

(assert (=> b!6996064 (=> (not res!2853939) (not e!4205142))))

(declare-fun dynLambda!26970 (Int Regex!17258) Bool)

(assert (=> b!6996064 (= res!2853939 (dynLambda!26970 lambda!404319 (h!73643 (exprs!6754 setElem!47982))))))

(declare-fun b!6996065 () Bool)

(assert (=> b!6996065 (= e!4205142 (forall!16166 (t!381066 (exprs!6754 setElem!47982)) lambda!404319))))

(assert (= (and d!2179433 (not res!2853938)) b!6996064))

(assert (= (and b!6996064 res!2853939) b!6996065))

(declare-fun b_lambda!263133 () Bool)

(assert (=> (not b_lambda!263133) (not b!6996064)))

(declare-fun m!7687730 () Bool)

(assert (=> b!6996064 m!7687730))

(declare-fun m!7687732 () Bool)

(assert (=> b!6996065 m!7687732))

(assert (=> d!2179029 d!2179433))

(assert (=> d!2179043 d!2179061))

(assert (=> d!2179043 d!2179055))

(declare-fun d!2179435 () Bool)

(assert (=> d!2179435 (<= (contextDepthTotal!451 lt!2493029) (zipperDepthTotal!479 lt!2492995))))

(assert (=> d!2179435 true))

(declare-fun _$53!80 () Unit!161171)

(assert (=> d!2179435 (= (choose!52391 lt!2492995 lt!2493029) _$53!80)))

(declare-fun bs!1863121 () Bool)

(assert (= bs!1863121 d!2179435))

(assert (=> bs!1863121 m!7686472))

(assert (=> bs!1863121 m!7686468))

(assert (=> d!2179043 d!2179435))

(declare-fun d!2179437 () Bool)

(declare-fun lt!2493361 () Bool)

(assert (=> d!2179437 (= lt!2493361 (set.member lt!2493029 (content!13291 lt!2492995)))))

(declare-fun e!4205147 () Bool)

(assert (=> d!2179437 (= lt!2493361 e!4205147)))

(declare-fun res!2853944 () Bool)

(assert (=> d!2179437 (=> (not res!2853944) (not e!4205147))))

(assert (=> d!2179437 (= res!2853944 (is-Cons!67197 lt!2492995))))

(assert (=> d!2179437 (= (contains!20416 lt!2492995 lt!2493029) lt!2493361)))

(declare-fun b!6996070 () Bool)

(declare-fun e!4205148 () Bool)

(assert (=> b!6996070 (= e!4205147 e!4205148)))

(declare-fun res!2853945 () Bool)

(assert (=> b!6996070 (=> res!2853945 e!4205148)))

(assert (=> b!6996070 (= res!2853945 (= (h!73645 lt!2492995) lt!2493029))))

(declare-fun b!6996071 () Bool)

(assert (=> b!6996071 (= e!4205148 (contains!20416 (t!381068 lt!2492995) lt!2493029))))

(assert (= (and d!2179437 res!2853944) b!6996070))

(assert (= (and b!6996070 (not res!2853945)) b!6996071))

(declare-fun m!7687734 () Bool)

(assert (=> d!2179437 m!7687734))

(declare-fun m!7687736 () Bool)

(assert (=> d!2179437 m!7687736))

(declare-fun m!7687738 () Bool)

(assert (=> b!6996071 m!7687738))

(assert (=> d!2179043 d!2179437))

(declare-fun bs!1863122 () Bool)

(declare-fun d!2179439 () Bool)

(assert (= bs!1863122 (and d!2179439 d!2179329)))

(declare-fun lambda!404369 () Int)

(assert (=> bs!1863122 (= lambda!404369 lambda!404359)))

(declare-fun bs!1863123 () Bool)

(assert (= bs!1863123 (and d!2179439 d!2179349)))

(assert (=> bs!1863123 (= lambda!404369 lambda!404361)))

(declare-fun bs!1863124 () Bool)

(assert (= bs!1863124 (and d!2179439 b!6995245)))

(assert (=> bs!1863124 (not (= lambda!404369 lambda!404241))))

(declare-fun bs!1863125 () Bool)

(assert (= bs!1863125 (and d!2179439 d!2179313)))

(assert (=> bs!1863125 (not (= lambda!404369 lambda!404358))))

(declare-fun bs!1863126 () Bool)

(assert (= bs!1863126 (and d!2179439 d!2179027)))

(assert (=> bs!1863126 (not (= lambda!404369 lambda!404316))))

(declare-fun bs!1863127 () Bool)

(assert (= bs!1863127 (and d!2179439 d!2179311)))

(assert (=> bs!1863127 (not (= lambda!404369 lambda!404355))))

(declare-fun bs!1863128 () Bool)

(assert (= bs!1863128 (and d!2179439 d!2179025)))

(assert (=> bs!1863128 (not (= lambda!404369 lambda!404313))))

(declare-fun bs!1863129 () Bool)

(assert (= bs!1863129 (and d!2179439 d!2179259)))

(assert (=> bs!1863129 (= lambda!404369 lambda!404351)))

(declare-fun bs!1863130 () Bool)

(assert (= bs!1863130 (and d!2179439 d!2179255)))

(assert (=> bs!1863130 (= lambda!404369 lambda!404350)))

(declare-fun bs!1863131 () Bool)

(assert (= bs!1863131 (and d!2179439 d!2179331)))

(assert (=> bs!1863131 (= lambda!404369 lambda!404360)))

(declare-fun bs!1863132 () Bool)

(assert (= bs!1863132 (and d!2179439 d!2179295)))

(assert (=> bs!1863132 (= lambda!404369 lambda!404353)))

(assert (=> d!2179439 (= (nullableZipper!2453 lt!2492981) (exists!3067 lt!2492981 lambda!404369))))

(declare-fun bs!1863133 () Bool)

(assert (= bs!1863133 d!2179439))

(declare-fun m!7687740 () Bool)

(assert (=> bs!1863133 m!7687740))

(assert (=> b!6995514 d!2179439))

(declare-fun d!2179441 () Bool)

(assert (=> d!2179441 (= (nullable!7018 (regOne!35028 (h!73643 (exprs!6754 lt!2493029)))) (nullableFct!2651 (regOne!35028 (h!73643 (exprs!6754 lt!2493029)))))))

(declare-fun bs!1863134 () Bool)

(assert (= bs!1863134 d!2179441))

(declare-fun m!7687742 () Bool)

(assert (=> bs!1863134 m!7687742))

(assert (=> b!6995459 d!2179441))

(declare-fun d!2179443 () Bool)

(declare-fun res!2853946 () Bool)

(declare-fun e!4205149 () Bool)

(assert (=> d!2179443 (=> res!2853946 e!4205149)))

(assert (=> d!2179443 (= res!2853946 (is-Nil!67195 (++!15217 lt!2493020 (exprs!6754 ct2!306))))))

(assert (=> d!2179443 (= (forall!16166 (++!15217 lt!2493020 (exprs!6754 ct2!306)) lambda!404243) e!4205149)))

(declare-fun b!6996072 () Bool)

(declare-fun e!4205150 () Bool)

(assert (=> b!6996072 (= e!4205149 e!4205150)))

(declare-fun res!2853947 () Bool)

(assert (=> b!6996072 (=> (not res!2853947) (not e!4205150))))

(assert (=> b!6996072 (= res!2853947 (dynLambda!26970 lambda!404243 (h!73643 (++!15217 lt!2493020 (exprs!6754 ct2!306)))))))

(declare-fun b!6996073 () Bool)

(assert (=> b!6996073 (= e!4205150 (forall!16166 (t!381066 (++!15217 lt!2493020 (exprs!6754 ct2!306))) lambda!404243))))

(assert (= (and d!2179443 (not res!2853946)) b!6996072))

(assert (= (and b!6996072 res!2853947) b!6996073))

(declare-fun b_lambda!263135 () Bool)

(assert (=> (not b_lambda!263135) (not b!6996072)))

(declare-fun m!7687744 () Bool)

(assert (=> b!6996072 m!7687744))

(declare-fun m!7687746 () Bool)

(assert (=> b!6996073 m!7687746))

(assert (=> d!2178987 d!2179443))

(assert (=> d!2178987 d!2179005))

(declare-fun d!2179445 () Bool)

(assert (=> d!2179445 (forall!16166 (++!15217 lt!2493020 (exprs!6754 ct2!306)) lambda!404243)))

(assert (=> d!2179445 true))

(declare-fun _$78!495 () Unit!161171)

(assert (=> d!2179445 (= (choose!52383 lt!2493020 (exprs!6754 ct2!306) lambda!404243) _$78!495)))

(declare-fun bs!1863135 () Bool)

(assert (= bs!1863135 d!2179445))

(assert (=> bs!1863135 m!7686474))

(assert (=> bs!1863135 m!7686474))

(assert (=> bs!1863135 m!7686694))

(assert (=> d!2178987 d!2179445))

(declare-fun d!2179447 () Bool)

(declare-fun res!2853948 () Bool)

(declare-fun e!4205151 () Bool)

(assert (=> d!2179447 (=> res!2853948 e!4205151)))

(assert (=> d!2179447 (= res!2853948 (is-Nil!67195 lt!2493020))))

(assert (=> d!2179447 (= (forall!16166 lt!2493020 lambda!404243) e!4205151)))

(declare-fun b!6996074 () Bool)

(declare-fun e!4205152 () Bool)

(assert (=> b!6996074 (= e!4205151 e!4205152)))

(declare-fun res!2853949 () Bool)

(assert (=> b!6996074 (=> (not res!2853949) (not e!4205152))))

(assert (=> b!6996074 (= res!2853949 (dynLambda!26970 lambda!404243 (h!73643 lt!2493020)))))

(declare-fun b!6996075 () Bool)

(assert (=> b!6996075 (= e!4205152 (forall!16166 (t!381066 lt!2493020) lambda!404243))))

(assert (= (and d!2179447 (not res!2853948)) b!6996074))

(assert (= (and b!6996074 res!2853949) b!6996075))

(declare-fun b_lambda!263137 () Bool)

(assert (=> (not b_lambda!263137) (not b!6996074)))

(declare-fun m!7687748 () Bool)

(assert (=> b!6996074 m!7687748))

(declare-fun m!7687750 () Bool)

(assert (=> b!6996075 m!7687750))

(assert (=> d!2178987 d!2179447))

(declare-fun c!1298117 () Bool)

(declare-fun call!635056 () List!67319)

(declare-fun bm!635046 () Bool)

(declare-fun c!1298120 () Bool)

(assert (=> bm!635046 (= call!635056 ($colon$colon!2497 (exprs!6754 (Context!12509 (t!381066 (exprs!6754 lt!2493007)))) (ite (or c!1298120 c!1298117) (regTwo!35028 (h!73643 (exprs!6754 lt!2493007))) (h!73643 (exprs!6754 lt!2493007)))))))

(declare-fun call!635054 () (Set Context!12508))

(declare-fun bm!635047 () Bool)

(declare-fun c!1298118 () Bool)

(assert (=> bm!635047 (= call!635054 (derivationStepZipperDown!1976 (ite c!1298118 (regOne!35029 (h!73643 (exprs!6754 lt!2493007))) (regOne!35028 (h!73643 (exprs!6754 lt!2493007)))) (ite c!1298118 (Context!12509 (t!381066 (exprs!6754 lt!2493007))) (Context!12509 call!635056)) (h!73644 s!7408)))))

(declare-fun b!6996076 () Bool)

(declare-fun e!4205156 () (Set Context!12508))

(declare-fun call!635055 () (Set Context!12508))

(assert (=> b!6996076 (= e!4205156 (set.union call!635054 call!635055))))

(declare-fun b!6996077 () Bool)

(declare-fun e!4205153 () (Set Context!12508))

(declare-fun call!635052 () (Set Context!12508))

(assert (=> b!6996077 (= e!4205153 (set.union call!635054 call!635052))))

(declare-fun b!6996078 () Bool)

(declare-fun e!4205155 () (Set Context!12508))

(declare-fun call!635051 () (Set Context!12508))

(assert (=> b!6996078 (= e!4205155 call!635051)))

(declare-fun b!6996079 () Bool)

(declare-fun e!4205154 () (Set Context!12508))

(assert (=> b!6996079 (= e!4205153 e!4205154)))

(assert (=> b!6996079 (= c!1298117 (is-Concat!26103 (h!73643 (exprs!6754 lt!2493007))))))

(declare-fun bm!635048 () Bool)

(declare-fun call!635053 () List!67319)

(assert (=> bm!635048 (= call!635053 call!635056)))

(declare-fun d!2179449 () Bool)

(declare-fun c!1298121 () Bool)

(assert (=> d!2179449 (= c!1298121 (and (is-ElementMatch!17258 (h!73643 (exprs!6754 lt!2493007))) (= (c!1297859 (h!73643 (exprs!6754 lt!2493007))) (h!73644 s!7408))))))

(declare-fun e!4205158 () (Set Context!12508))

(assert (=> d!2179449 (= (derivationStepZipperDown!1976 (h!73643 (exprs!6754 lt!2493007)) (Context!12509 (t!381066 (exprs!6754 lt!2493007))) (h!73644 s!7408)) e!4205158)))

(declare-fun b!6996080 () Bool)

(declare-fun e!4205157 () Bool)

(assert (=> b!6996080 (= c!1298120 e!4205157)))

(declare-fun res!2853950 () Bool)

(assert (=> b!6996080 (=> (not res!2853950) (not e!4205157))))

(assert (=> b!6996080 (= res!2853950 (is-Concat!26103 (h!73643 (exprs!6754 lt!2493007))))))

(assert (=> b!6996080 (= e!4205156 e!4205153)))

(declare-fun b!6996081 () Bool)

(assert (=> b!6996081 (= e!4205157 (nullable!7018 (regOne!35028 (h!73643 (exprs!6754 lt!2493007)))))))

(declare-fun b!6996082 () Bool)

(declare-fun c!1298119 () Bool)

(assert (=> b!6996082 (= c!1298119 (is-Star!17258 (h!73643 (exprs!6754 lt!2493007))))))

(assert (=> b!6996082 (= e!4205154 e!4205155)))

(declare-fun b!6996083 () Bool)

(assert (=> b!6996083 (= e!4205158 (set.insert (Context!12509 (t!381066 (exprs!6754 lt!2493007))) (as set.empty (Set Context!12508))))))

(declare-fun bm!635049 () Bool)

(assert (=> bm!635049 (= call!635051 call!635052)))

(declare-fun b!6996084 () Bool)

(assert (=> b!6996084 (= e!4205158 e!4205156)))

(assert (=> b!6996084 (= c!1298118 (is-Union!17258 (h!73643 (exprs!6754 lt!2493007))))))

(declare-fun bm!635050 () Bool)

(assert (=> bm!635050 (= call!635055 (derivationStepZipperDown!1976 (ite c!1298118 (regTwo!35029 (h!73643 (exprs!6754 lt!2493007))) (ite c!1298120 (regTwo!35028 (h!73643 (exprs!6754 lt!2493007))) (ite c!1298117 (regOne!35028 (h!73643 (exprs!6754 lt!2493007))) (reg!17587 (h!73643 (exprs!6754 lt!2493007)))))) (ite (or c!1298118 c!1298120) (Context!12509 (t!381066 (exprs!6754 lt!2493007))) (Context!12509 call!635053)) (h!73644 s!7408)))))

(declare-fun b!6996085 () Bool)

(assert (=> b!6996085 (= e!4205155 (as set.empty (Set Context!12508)))))

(declare-fun b!6996086 () Bool)

(assert (=> b!6996086 (= e!4205154 call!635051)))

(declare-fun bm!635051 () Bool)

(assert (=> bm!635051 (= call!635052 call!635055)))

(assert (= (and d!2179449 c!1298121) b!6996083))

(assert (= (and d!2179449 (not c!1298121)) b!6996084))

(assert (= (and b!6996084 c!1298118) b!6996076))

(assert (= (and b!6996084 (not c!1298118)) b!6996080))

(assert (= (and b!6996080 res!2853950) b!6996081))

(assert (= (and b!6996080 c!1298120) b!6996077))

(assert (= (and b!6996080 (not c!1298120)) b!6996079))

(assert (= (and b!6996079 c!1298117) b!6996086))

(assert (= (and b!6996079 (not c!1298117)) b!6996082))

(assert (= (and b!6996082 c!1298119) b!6996078))

(assert (= (and b!6996082 (not c!1298119)) b!6996085))

(assert (= (or b!6996086 b!6996078) bm!635048))

(assert (= (or b!6996086 b!6996078) bm!635049))

(assert (= (or b!6996077 bm!635049) bm!635051))

(assert (= (or b!6996077 bm!635048) bm!635046))

(assert (= (or b!6996076 b!6996077) bm!635047))

(assert (= (or b!6996076 bm!635051) bm!635050))

(declare-fun m!7687752 () Bool)

(assert (=> bm!635046 m!7687752))

(declare-fun m!7687754 () Bool)

(assert (=> b!6996083 m!7687754))

(declare-fun m!7687756 () Bool)

(assert (=> b!6996081 m!7687756))

(declare-fun m!7687758 () Bool)

(assert (=> bm!635047 m!7687758))

(declare-fun m!7687760 () Bool)

(assert (=> bm!635050 m!7687760))

(assert (=> bm!634951 d!2179449))

(declare-fun d!2179451 () Bool)

(declare-fun c!1298122 () Bool)

(assert (=> d!2179451 (= c!1298122 (isEmpty!39219 s!7408))))

(declare-fun e!4205159 () Bool)

(assert (=> d!2179451 (= (matchZipper!2798 (set.insert lt!2493215 (as set.empty (Set Context!12508))) s!7408) e!4205159)))

(declare-fun b!6996087 () Bool)

(assert (=> b!6996087 (= e!4205159 (nullableZipper!2453 (set.insert lt!2493215 (as set.empty (Set Context!12508)))))))

(declare-fun b!6996088 () Bool)

(assert (=> b!6996088 (= e!4205159 (matchZipper!2798 (derivationStepZipper!2738 (set.insert lt!2493215 (as set.empty (Set Context!12508))) (head!14128 s!7408)) (tail!13286 s!7408)))))

(assert (= (and d!2179451 c!1298122) b!6996087))

(assert (= (and d!2179451 (not c!1298122)) b!6996088))

(assert (=> d!2179451 m!7686786))

(assert (=> b!6996087 m!7687046))

(declare-fun m!7687762 () Bool)

(assert (=> b!6996087 m!7687762))

(assert (=> b!6996088 m!7686790))

(assert (=> b!6996088 m!7687046))

(assert (=> b!6996088 m!7686790))

(declare-fun m!7687764 () Bool)

(assert (=> b!6996088 m!7687764))

(assert (=> b!6996088 m!7686794))

(assert (=> b!6996088 m!7687764))

(assert (=> b!6996088 m!7686794))

(declare-fun m!7687766 () Bool)

(assert (=> b!6996088 m!7687766))

(assert (=> bs!1862930 d!2179451))

(assert (=> d!2179033 d!2179247))

(declare-fun d!2179453 () Bool)

(assert (=> d!2179453 (= (isEmpty!39219 s!7408) (is-Nil!67196 s!7408))))

(assert (=> d!2179101 d!2179453))

(declare-fun d!2179455 () Bool)

(declare-fun res!2853951 () Bool)

(declare-fun e!4205160 () Bool)

(assert (=> d!2179455 (=> res!2853951 e!4205160)))

(assert (=> d!2179455 (= res!2853951 (is-Nil!67195 (++!15217 (exprs!6754 lt!2493029) (exprs!6754 ct2!306))))))

(assert (=> d!2179455 (= (forall!16166 (++!15217 (exprs!6754 lt!2493029) (exprs!6754 ct2!306)) lambda!404243) e!4205160)))

(declare-fun b!6996089 () Bool)

(declare-fun e!4205161 () Bool)

(assert (=> b!6996089 (= e!4205160 e!4205161)))

(declare-fun res!2853952 () Bool)

(assert (=> b!6996089 (=> (not res!2853952) (not e!4205161))))

(assert (=> b!6996089 (= res!2853952 (dynLambda!26970 lambda!404243 (h!73643 (++!15217 (exprs!6754 lt!2493029) (exprs!6754 ct2!306)))))))

(declare-fun b!6996090 () Bool)

(assert (=> b!6996090 (= e!4205161 (forall!16166 (t!381066 (++!15217 (exprs!6754 lt!2493029) (exprs!6754 ct2!306))) lambda!404243))))

(assert (= (and d!2179455 (not res!2853951)) b!6996089))

(assert (= (and b!6996089 res!2853952) b!6996090))

(declare-fun b_lambda!263139 () Bool)

(assert (=> (not b_lambda!263139) (not b!6996089)))

(declare-fun m!7687768 () Bool)

(assert (=> b!6996089 m!7687768))

(declare-fun m!7687770 () Bool)

(assert (=> b!6996090 m!7687770))

(assert (=> d!2178995 d!2179455))

(assert (=> d!2178995 d!2179039))

(declare-fun d!2179457 () Bool)

(assert (=> d!2179457 (forall!16166 (++!15217 (exprs!6754 lt!2493029) (exprs!6754 ct2!306)) lambda!404243)))

(assert (=> d!2179457 true))

(declare-fun _$78!496 () Unit!161171)

(assert (=> d!2179457 (= (choose!52383 (exprs!6754 lt!2493029) (exprs!6754 ct2!306) lambda!404243) _$78!496)))

(declare-fun bs!1863136 () Bool)

(assert (= bs!1863136 d!2179457))

(assert (=> bs!1863136 m!7686522))

(assert (=> bs!1863136 m!7686522))

(assert (=> bs!1863136 m!7686712))

(assert (=> d!2178995 d!2179457))

(declare-fun d!2179459 () Bool)

(declare-fun res!2853953 () Bool)

(declare-fun e!4205162 () Bool)

(assert (=> d!2179459 (=> res!2853953 e!4205162)))

(assert (=> d!2179459 (= res!2853953 (is-Nil!67195 (exprs!6754 lt!2493029)))))

(assert (=> d!2179459 (= (forall!16166 (exprs!6754 lt!2493029) lambda!404243) e!4205162)))

(declare-fun b!6996091 () Bool)

(declare-fun e!4205163 () Bool)

(assert (=> b!6996091 (= e!4205162 e!4205163)))

(declare-fun res!2853954 () Bool)

(assert (=> b!6996091 (=> (not res!2853954) (not e!4205163))))

(assert (=> b!6996091 (= res!2853954 (dynLambda!26970 lambda!404243 (h!73643 (exprs!6754 lt!2493029))))))

(declare-fun b!6996092 () Bool)

(assert (=> b!6996092 (= e!4205163 (forall!16166 (t!381066 (exprs!6754 lt!2493029)) lambda!404243))))

(assert (= (and d!2179459 (not res!2853953)) b!6996091))

(assert (= (and b!6996091 res!2853954) b!6996092))

(declare-fun b_lambda!263141 () Bool)

(assert (=> (not b_lambda!263141) (not b!6996091)))

(declare-fun m!7687772 () Bool)

(assert (=> b!6996091 m!7687772))

(declare-fun m!7687774 () Bool)

(assert (=> b!6996092 m!7687774))

(assert (=> d!2178995 d!2179459))

(declare-fun d!2179461 () Bool)

(declare-fun c!1298123 () Bool)

(assert (=> d!2179461 (= c!1298123 (isEmpty!39219 s!7408))))

(declare-fun e!4205164 () Bool)

(assert (=> d!2179461 (= (matchZipper!2798 lt!2493021 s!7408) e!4205164)))

(declare-fun b!6996093 () Bool)

(assert (=> b!6996093 (= e!4205164 (nullableZipper!2453 lt!2493021))))

(declare-fun b!6996094 () Bool)

(assert (=> b!6996094 (= e!4205164 (matchZipper!2798 (derivationStepZipper!2738 lt!2493021 (head!14128 s!7408)) (tail!13286 s!7408)))))

(assert (= (and d!2179461 c!1298123) b!6996093))

(assert (= (and d!2179461 (not c!1298123)) b!6996094))

(assert (=> d!2179461 m!7686786))

(assert (=> b!6996093 m!7686902))

(assert (=> b!6996094 m!7686790))

(assert (=> b!6996094 m!7686790))

(declare-fun m!7687776 () Bool)

(assert (=> b!6996094 m!7687776))

(assert (=> b!6996094 m!7686794))

(assert (=> b!6996094 m!7687776))

(assert (=> b!6996094 m!7686794))

(declare-fun m!7687778 () Bool)

(assert (=> b!6996094 m!7687778))

(assert (=> b!6995601 d!2179461))

(declare-fun d!2179463 () Bool)

(declare-fun lt!2493364 () Int)

(assert (=> d!2179463 (>= lt!2493364 0)))

(declare-fun e!4205167 () Int)

(assert (=> d!2179463 (= lt!2493364 e!4205167)))

(declare-fun c!1298126 () Bool)

(assert (=> d!2179463 (= c!1298126 (is-Nil!67196 lt!2493205))))

(assert (=> d!2179463 (= (size!40922 lt!2493205) lt!2493364)))

(declare-fun b!6996099 () Bool)

(assert (=> b!6996099 (= e!4205167 0)))

(declare-fun b!6996100 () Bool)

(assert (=> b!6996100 (= e!4205167 (+ 1 (size!40922 (t!381067 lt!2493205))))))

(assert (= (and d!2179463 c!1298126) b!6996099))

(assert (= (and d!2179463 (not c!1298126)) b!6996100))

(declare-fun m!7687780 () Bool)

(assert (=> b!6996100 m!7687780))

(assert (=> b!6995413 d!2179463))

(declare-fun d!2179465 () Bool)

(declare-fun lt!2493365 () Int)

(assert (=> d!2179465 (>= lt!2493365 0)))

(declare-fun e!4205168 () Int)

(assert (=> d!2179465 (= lt!2493365 e!4205168)))

(declare-fun c!1298127 () Bool)

(assert (=> d!2179465 (= c!1298127 (is-Nil!67196 (_1!37234 lt!2493025)))))

(assert (=> d!2179465 (= (size!40922 (_1!37234 lt!2493025)) lt!2493365)))

(declare-fun b!6996101 () Bool)

(assert (=> b!6996101 (= e!4205168 0)))

(declare-fun b!6996102 () Bool)

(assert (=> b!6996102 (= e!4205168 (+ 1 (size!40922 (t!381067 (_1!37234 lt!2493025)))))))

(assert (= (and d!2179465 c!1298127) b!6996101))

(assert (= (and d!2179465 (not c!1298127)) b!6996102))

(assert (=> b!6996102 m!7687584))

(assert (=> b!6995413 d!2179465))

(declare-fun d!2179467 () Bool)

(declare-fun lt!2493366 () Int)

(assert (=> d!2179467 (>= lt!2493366 0)))

(declare-fun e!4205169 () Int)

(assert (=> d!2179467 (= lt!2493366 e!4205169)))

(declare-fun c!1298128 () Bool)

(assert (=> d!2179467 (= c!1298128 (is-Nil!67196 (_2!37234 lt!2493025)))))

(assert (=> d!2179467 (= (size!40922 (_2!37234 lt!2493025)) lt!2493366)))

(declare-fun b!6996103 () Bool)

(assert (=> b!6996103 (= e!4205169 0)))

(declare-fun b!6996104 () Bool)

(assert (=> b!6996104 (= e!4205169 (+ 1 (size!40922 (t!381067 (_2!37234 lt!2493025)))))))

(assert (= (and d!2179467 c!1298128) b!6996103))

(assert (= (and d!2179467 (not c!1298128)) b!6996104))

(declare-fun m!7687782 () Bool)

(assert (=> b!6996104 m!7687782))

(assert (=> b!6995413 d!2179467))

(declare-fun call!635062 () List!67319)

(declare-fun c!1298132 () Bool)

(declare-fun bm!635052 () Bool)

(declare-fun c!1298129 () Bool)

(assert (=> bm!635052 (= call!635062 ($colon$colon!2497 (exprs!6754 (Context!12509 (t!381066 (exprs!6754 lt!2493029)))) (ite (or c!1298132 c!1298129) (regTwo!35028 (h!73643 (exprs!6754 lt!2493029))) (h!73643 (exprs!6754 lt!2493029)))))))

(declare-fun c!1298130 () Bool)

(declare-fun call!635060 () (Set Context!12508))

(declare-fun bm!635053 () Bool)

(assert (=> bm!635053 (= call!635060 (derivationStepZipperDown!1976 (ite c!1298130 (regOne!35029 (h!73643 (exprs!6754 lt!2493029))) (regOne!35028 (h!73643 (exprs!6754 lt!2493029)))) (ite c!1298130 (Context!12509 (t!381066 (exprs!6754 lt!2493029))) (Context!12509 call!635062)) (h!73644 s!7408)))))

(declare-fun b!6996105 () Bool)

(declare-fun e!4205173 () (Set Context!12508))

(declare-fun call!635061 () (Set Context!12508))

(assert (=> b!6996105 (= e!4205173 (set.union call!635060 call!635061))))

(declare-fun b!6996106 () Bool)

(declare-fun e!4205170 () (Set Context!12508))

(declare-fun call!635058 () (Set Context!12508))

(assert (=> b!6996106 (= e!4205170 (set.union call!635060 call!635058))))

(declare-fun b!6996107 () Bool)

(declare-fun e!4205172 () (Set Context!12508))

(declare-fun call!635057 () (Set Context!12508))

(assert (=> b!6996107 (= e!4205172 call!635057)))

(declare-fun b!6996108 () Bool)

(declare-fun e!4205171 () (Set Context!12508))

(assert (=> b!6996108 (= e!4205170 e!4205171)))

(assert (=> b!6996108 (= c!1298129 (is-Concat!26103 (h!73643 (exprs!6754 lt!2493029))))))

(declare-fun bm!635054 () Bool)

(declare-fun call!635059 () List!67319)

(assert (=> bm!635054 (= call!635059 call!635062)))

(declare-fun d!2179469 () Bool)

(declare-fun c!1298133 () Bool)

(assert (=> d!2179469 (= c!1298133 (and (is-ElementMatch!17258 (h!73643 (exprs!6754 lt!2493029))) (= (c!1297859 (h!73643 (exprs!6754 lt!2493029))) (h!73644 s!7408))))))

(declare-fun e!4205175 () (Set Context!12508))

(assert (=> d!2179469 (= (derivationStepZipperDown!1976 (h!73643 (exprs!6754 lt!2493029)) (Context!12509 (t!381066 (exprs!6754 lt!2493029))) (h!73644 s!7408)) e!4205175)))

(declare-fun b!6996109 () Bool)

(declare-fun e!4205174 () Bool)

(assert (=> b!6996109 (= c!1298132 e!4205174)))

(declare-fun res!2853955 () Bool)

(assert (=> b!6996109 (=> (not res!2853955) (not e!4205174))))

(assert (=> b!6996109 (= res!2853955 (is-Concat!26103 (h!73643 (exprs!6754 lt!2493029))))))

(assert (=> b!6996109 (= e!4205173 e!4205170)))

(declare-fun b!6996110 () Bool)

(assert (=> b!6996110 (= e!4205174 (nullable!7018 (regOne!35028 (h!73643 (exprs!6754 lt!2493029)))))))

(declare-fun b!6996111 () Bool)

(declare-fun c!1298131 () Bool)

(assert (=> b!6996111 (= c!1298131 (is-Star!17258 (h!73643 (exprs!6754 lt!2493029))))))

(assert (=> b!6996111 (= e!4205171 e!4205172)))

(declare-fun b!6996112 () Bool)

(assert (=> b!6996112 (= e!4205175 (set.insert (Context!12509 (t!381066 (exprs!6754 lt!2493029))) (as set.empty (Set Context!12508))))))

(declare-fun bm!635055 () Bool)

(assert (=> bm!635055 (= call!635057 call!635058)))

(declare-fun b!6996113 () Bool)

(assert (=> b!6996113 (= e!4205175 e!4205173)))

(assert (=> b!6996113 (= c!1298130 (is-Union!17258 (h!73643 (exprs!6754 lt!2493029))))))

(declare-fun bm!635056 () Bool)

(assert (=> bm!635056 (= call!635061 (derivationStepZipperDown!1976 (ite c!1298130 (regTwo!35029 (h!73643 (exprs!6754 lt!2493029))) (ite c!1298132 (regTwo!35028 (h!73643 (exprs!6754 lt!2493029))) (ite c!1298129 (regOne!35028 (h!73643 (exprs!6754 lt!2493029))) (reg!17587 (h!73643 (exprs!6754 lt!2493029)))))) (ite (or c!1298130 c!1298132) (Context!12509 (t!381066 (exprs!6754 lt!2493029))) (Context!12509 call!635059)) (h!73644 s!7408)))))

(declare-fun b!6996114 () Bool)

(assert (=> b!6996114 (= e!4205172 (as set.empty (Set Context!12508)))))

(declare-fun b!6996115 () Bool)

(assert (=> b!6996115 (= e!4205171 call!635057)))

(declare-fun bm!635057 () Bool)

(assert (=> bm!635057 (= call!635058 call!635061)))

(assert (= (and d!2179469 c!1298133) b!6996112))

(assert (= (and d!2179469 (not c!1298133)) b!6996113))

(assert (= (and b!6996113 c!1298130) b!6996105))

(assert (= (and b!6996113 (not c!1298130)) b!6996109))

(assert (= (and b!6996109 res!2853955) b!6996110))

(assert (= (and b!6996109 c!1298132) b!6996106))

(assert (= (and b!6996109 (not c!1298132)) b!6996108))

(assert (= (and b!6996108 c!1298129) b!6996115))

(assert (= (and b!6996108 (not c!1298129)) b!6996111))

(assert (= (and b!6996111 c!1298131) b!6996107))

(assert (= (and b!6996111 (not c!1298131)) b!6996114))

(assert (= (or b!6996115 b!6996107) bm!635054))

(assert (= (or b!6996115 b!6996107) bm!635055))

(assert (= (or b!6996106 bm!635055) bm!635057))

(assert (= (or b!6996106 bm!635054) bm!635052))

(assert (= (or b!6996105 b!6996106) bm!635053))

(assert (= (or b!6996105 bm!635057) bm!635056))

(declare-fun m!7687784 () Bool)

(assert (=> bm!635052 m!7687784))

(declare-fun m!7687786 () Bool)

(assert (=> b!6996112 m!7687786))

(assert (=> b!6996110 m!7686758))

(declare-fun m!7687788 () Bool)

(assert (=> bm!635053 m!7687788))

(declare-fun m!7687790 () Bool)

(assert (=> bm!635056 m!7687790))

(assert (=> bm!634992 d!2179469))

(declare-fun d!2179471 () Bool)

(assert (=> d!2179471 (= (flatMap!2244 lt!2493015 lambda!404310) (choose!52384 lt!2493015 lambda!404310))))

(declare-fun bs!1863137 () Bool)

(assert (= bs!1863137 d!2179471))

(declare-fun m!7687792 () Bool)

(assert (=> bs!1863137 m!7687792))

(assert (=> d!2179015 d!2179471))

(declare-fun d!2179473 () Bool)

(declare-fun c!1298134 () Bool)

(assert (=> d!2179473 (= c!1298134 (isEmpty!39219 (_2!37234 (get!23557 lt!2493257))))))

(declare-fun e!4205176 () Bool)

(assert (=> d!2179473 (= (matchZipper!2798 lt!2493021 (_2!37234 (get!23557 lt!2493257))) e!4205176)))

(declare-fun b!6996116 () Bool)

(assert (=> b!6996116 (= e!4205176 (nullableZipper!2453 lt!2493021))))

(declare-fun b!6996117 () Bool)

(assert (=> b!6996117 (= e!4205176 (matchZipper!2798 (derivationStepZipper!2738 lt!2493021 (head!14128 (_2!37234 (get!23557 lt!2493257)))) (tail!13286 (_2!37234 (get!23557 lt!2493257)))))))

(assert (= (and d!2179473 c!1298134) b!6996116))

(assert (= (and d!2179473 (not c!1298134)) b!6996117))

(declare-fun m!7687794 () Bool)

(assert (=> d!2179473 m!7687794))

(assert (=> b!6996116 m!7686902))

(declare-fun m!7687796 () Bool)

(assert (=> b!6996117 m!7687796))

(assert (=> b!6996117 m!7687796))

(declare-fun m!7687798 () Bool)

(assert (=> b!6996117 m!7687798))

(declare-fun m!7687800 () Bool)

(assert (=> b!6996117 m!7687800))

(assert (=> b!6996117 m!7687798))

(assert (=> b!6996117 m!7687800))

(declare-fun m!7687802 () Bool)

(assert (=> b!6996117 m!7687802))

(assert (=> b!6995597 d!2179473))

(assert (=> b!6995597 d!2179367))

(declare-fun b!6996118 () Bool)

(declare-fun e!4205182 () Bool)

(declare-fun e!4205183 () Bool)

(assert (=> b!6996118 (= e!4205182 e!4205183)))

(declare-fun res!2853958 () Bool)

(assert (=> b!6996118 (= res!2853958 (not (nullable!7018 (reg!17587 (ite c!1297881 (regTwo!35029 (h!73643 (exprs!6754 lt!2493029))) (regTwo!35028 (h!73643 (exprs!6754 lt!2493029))))))))))

(assert (=> b!6996118 (=> (not res!2853958) (not e!4205183))))

(declare-fun b!6996119 () Bool)

(declare-fun e!4205177 () Bool)

(assert (=> b!6996119 (= e!4205177 e!4205182)))

(declare-fun c!1298136 () Bool)

(assert (=> b!6996119 (= c!1298136 (is-Star!17258 (ite c!1297881 (regTwo!35029 (h!73643 (exprs!6754 lt!2493029))) (regTwo!35028 (h!73643 (exprs!6754 lt!2493029))))))))

(declare-fun b!6996120 () Bool)

(declare-fun res!2853959 () Bool)

(declare-fun e!4205178 () Bool)

(assert (=> b!6996120 (=> (not res!2853959) (not e!4205178))))

(declare-fun call!635064 () Bool)

(assert (=> b!6996120 (= res!2853959 call!635064)))

(declare-fun e!4205181 () Bool)

(assert (=> b!6996120 (= e!4205181 e!4205178)))

(declare-fun c!1298135 () Bool)

(declare-fun call!635063 () Bool)

(declare-fun bm!635058 () Bool)

(assert (=> bm!635058 (= call!635063 (validRegex!8868 (ite c!1298135 (regTwo!35029 (ite c!1297881 (regTwo!35029 (h!73643 (exprs!6754 lt!2493029))) (regTwo!35028 (h!73643 (exprs!6754 lt!2493029))))) (regTwo!35028 (ite c!1297881 (regTwo!35029 (h!73643 (exprs!6754 lt!2493029))) (regTwo!35028 (h!73643 (exprs!6754 lt!2493029))))))))))

(declare-fun b!6996121 () Bool)

(assert (=> b!6996121 (= e!4205178 call!635063)))

(declare-fun d!2179475 () Bool)

(declare-fun res!2853960 () Bool)

(assert (=> d!2179475 (=> res!2853960 e!4205177)))

(assert (=> d!2179475 (= res!2853960 (is-ElementMatch!17258 (ite c!1297881 (regTwo!35029 (h!73643 (exprs!6754 lt!2493029))) (regTwo!35028 (h!73643 (exprs!6754 lt!2493029))))))))

(assert (=> d!2179475 (= (validRegex!8868 (ite c!1297881 (regTwo!35029 (h!73643 (exprs!6754 lt!2493029))) (regTwo!35028 (h!73643 (exprs!6754 lt!2493029))))) e!4205177)))

(declare-fun b!6996122 () Bool)

(assert (=> b!6996122 (= e!4205182 e!4205181)))

(assert (=> b!6996122 (= c!1298135 (is-Union!17258 (ite c!1297881 (regTwo!35029 (h!73643 (exprs!6754 lt!2493029))) (regTwo!35028 (h!73643 (exprs!6754 lt!2493029))))))))

(declare-fun bm!635059 () Bool)

(declare-fun call!635065 () Bool)

(assert (=> bm!635059 (= call!635064 call!635065)))

(declare-fun b!6996123 () Bool)

(declare-fun e!4205179 () Bool)

(assert (=> b!6996123 (= e!4205179 call!635063)))

(declare-fun b!6996124 () Bool)

(declare-fun res!2853957 () Bool)

(declare-fun e!4205180 () Bool)

(assert (=> b!6996124 (=> res!2853957 e!4205180)))

(assert (=> b!6996124 (= res!2853957 (not (is-Concat!26103 (ite c!1297881 (regTwo!35029 (h!73643 (exprs!6754 lt!2493029))) (regTwo!35028 (h!73643 (exprs!6754 lt!2493029)))))))))

(assert (=> b!6996124 (= e!4205181 e!4205180)))

(declare-fun b!6996125 () Bool)

(assert (=> b!6996125 (= e!4205183 call!635065)))

(declare-fun b!6996126 () Bool)

(assert (=> b!6996126 (= e!4205180 e!4205179)))

(declare-fun res!2853956 () Bool)

(assert (=> b!6996126 (=> (not res!2853956) (not e!4205179))))

(assert (=> b!6996126 (= res!2853956 call!635064)))

(declare-fun bm!635060 () Bool)

(assert (=> bm!635060 (= call!635065 (validRegex!8868 (ite c!1298136 (reg!17587 (ite c!1297881 (regTwo!35029 (h!73643 (exprs!6754 lt!2493029))) (regTwo!35028 (h!73643 (exprs!6754 lt!2493029))))) (ite c!1298135 (regOne!35029 (ite c!1297881 (regTwo!35029 (h!73643 (exprs!6754 lt!2493029))) (regTwo!35028 (h!73643 (exprs!6754 lt!2493029))))) (regOne!35028 (ite c!1297881 (regTwo!35029 (h!73643 (exprs!6754 lt!2493029))) (regTwo!35028 (h!73643 (exprs!6754 lt!2493029)))))))))))

(assert (= (and d!2179475 (not res!2853960)) b!6996119))

(assert (= (and b!6996119 c!1298136) b!6996118))

(assert (= (and b!6996119 (not c!1298136)) b!6996122))

(assert (= (and b!6996118 res!2853958) b!6996125))

(assert (= (and b!6996122 c!1298135) b!6996120))

(assert (= (and b!6996122 (not c!1298135)) b!6996124))

(assert (= (and b!6996120 res!2853959) b!6996121))

(assert (= (and b!6996124 (not res!2853957)) b!6996126))

(assert (= (and b!6996126 res!2853956) b!6996123))

(assert (= (or b!6996121 b!6996123) bm!635058))

(assert (= (or b!6996120 b!6996126) bm!635059))

(assert (= (or b!6996125 bm!635059) bm!635060))

(declare-fun m!7687804 () Bool)

(assert (=> b!6996118 m!7687804))

(declare-fun m!7687806 () Bool)

(assert (=> bm!635058 m!7687806))

(declare-fun m!7687808 () Bool)

(assert (=> bm!635060 m!7687808))

(assert (=> bm!634945 d!2179475))

(declare-fun d!2179477 () Bool)

(declare-fun c!1298137 () Bool)

(assert (=> d!2179477 (= c!1298137 (is-Nil!67195 lt!2493208))))

(declare-fun e!4205184 () (Set Regex!17258))

(assert (=> d!2179477 (= (content!13290 lt!2493208) e!4205184)))

(declare-fun b!6996127 () Bool)

(assert (=> b!6996127 (= e!4205184 (as set.empty (Set Regex!17258)))))

(declare-fun b!6996128 () Bool)

(assert (=> b!6996128 (= e!4205184 (set.union (set.insert (h!73643 lt!2493208) (as set.empty (Set Regex!17258))) (content!13290 (t!381066 lt!2493208))))))

(assert (= (and d!2179477 c!1298137) b!6996127))

(assert (= (and d!2179477 (not c!1298137)) b!6996128))

(declare-fun m!7687810 () Bool)

(assert (=> b!6996128 m!7687810))

(declare-fun m!7687812 () Bool)

(assert (=> b!6996128 m!7687812))

(assert (=> d!2179005 d!2179477))

(declare-fun d!2179479 () Bool)

(declare-fun c!1298138 () Bool)

(assert (=> d!2179479 (= c!1298138 (is-Nil!67195 lt!2493020))))

(declare-fun e!4205185 () (Set Regex!17258))

(assert (=> d!2179479 (= (content!13290 lt!2493020) e!4205185)))

(declare-fun b!6996129 () Bool)

(assert (=> b!6996129 (= e!4205185 (as set.empty (Set Regex!17258)))))

(declare-fun b!6996130 () Bool)

(assert (=> b!6996130 (= e!4205185 (set.union (set.insert (h!73643 lt!2493020) (as set.empty (Set Regex!17258))) (content!13290 (t!381066 lt!2493020))))))

(assert (= (and d!2179479 c!1298138) b!6996129))

(assert (= (and d!2179479 (not c!1298138)) b!6996130))

(declare-fun m!7687814 () Bool)

(assert (=> b!6996130 m!7687814))

(assert (=> b!6996130 m!7687328))

(assert (=> d!2179005 d!2179479))

(assert (=> d!2179005 d!2179323))

(assert (=> d!2179077 d!2179297))

(declare-fun d!2179481 () Bool)

(declare-fun c!1298139 () Bool)

(assert (=> d!2179481 (= c!1298139 (isEmpty!39219 Nil!67196))))

(declare-fun e!4205186 () Bool)

(assert (=> d!2179481 (= (matchZipper!2798 lt!2493018 Nil!67196) e!4205186)))

(declare-fun b!6996131 () Bool)

(assert (=> b!6996131 (= e!4205186 (nullableZipper!2453 lt!2493018))))

(declare-fun b!6996132 () Bool)

(assert (=> b!6996132 (= e!4205186 (matchZipper!2798 (derivationStepZipper!2738 lt!2493018 (head!14128 Nil!67196)) (tail!13286 Nil!67196)))))

(assert (= (and d!2179481 c!1298139) b!6996131))

(assert (= (and d!2179481 (not c!1298139)) b!6996132))

(declare-fun m!7687816 () Bool)

(assert (=> d!2179481 m!7687816))

(assert (=> b!6996131 m!7686978))

(declare-fun m!7687818 () Bool)

(assert (=> b!6996132 m!7687818))

(assert (=> b!6996132 m!7687818))

(declare-fun m!7687820 () Bool)

(assert (=> b!6996132 m!7687820))

(declare-fun m!7687822 () Bool)

(assert (=> b!6996132 m!7687822))

(assert (=> b!6996132 m!7687820))

(assert (=> b!6996132 m!7687822))

(declare-fun m!7687824 () Bool)

(assert (=> b!6996132 m!7687824))

(assert (=> d!2179077 d!2179481))

(declare-fun b!6996135 () Bool)

(declare-fun res!2853962 () Bool)

(declare-fun e!4205187 () Bool)

(assert (=> b!6996135 (=> (not res!2853962) (not e!4205187))))

(declare-fun lt!2493367 () List!67320)

(assert (=> b!6996135 (= res!2853962 (= (size!40922 lt!2493367) (+ (size!40922 Nil!67196) (size!40922 s!7408))))))

(declare-fun b!6996134 () Bool)

(declare-fun e!4205188 () List!67320)

(assert (=> b!6996134 (= e!4205188 (Cons!67196 (h!73644 Nil!67196) (++!15218 (t!381067 Nil!67196) s!7408)))))

(declare-fun b!6996136 () Bool)

(assert (=> b!6996136 (= e!4205187 (or (not (= s!7408 Nil!67196)) (= lt!2493367 Nil!67196)))))

(declare-fun d!2179483 () Bool)

(assert (=> d!2179483 e!4205187))

(declare-fun res!2853961 () Bool)

(assert (=> d!2179483 (=> (not res!2853961) (not e!4205187))))

(assert (=> d!2179483 (= res!2853961 (= (content!13289 lt!2493367) (set.union (content!13289 Nil!67196) (content!13289 s!7408))))))

(assert (=> d!2179483 (= lt!2493367 e!4205188)))

(declare-fun c!1298140 () Bool)

(assert (=> d!2179483 (= c!1298140 (is-Nil!67196 Nil!67196))))

(assert (=> d!2179483 (= (++!15218 Nil!67196 s!7408) lt!2493367)))

(declare-fun b!6996133 () Bool)

(assert (=> b!6996133 (= e!4205188 s!7408)))

(assert (= (and d!2179483 c!1298140) b!6996133))

(assert (= (and d!2179483 (not c!1298140)) b!6996134))

(assert (= (and d!2179483 res!2853961) b!6996135))

(assert (= (and b!6996135 res!2853962) b!6996136))

(declare-fun m!7687826 () Bool)

(assert (=> b!6996135 m!7687826))

(assert (=> b!6996135 m!7687396))

(declare-fun m!7687828 () Bool)

(assert (=> b!6996135 m!7687828))

(declare-fun m!7687830 () Bool)

(assert (=> b!6996134 m!7687830))

(declare-fun m!7687832 () Bool)

(assert (=> d!2179483 m!7687832))

(assert (=> d!2179483 m!7687404))

(declare-fun m!7687834 () Bool)

(assert (=> d!2179483 m!7687834))

(assert (=> d!2179077 d!2179483))

(declare-fun d!2179485 () Bool)

(assert (=> d!2179485 true))

(declare-fun setRes!47998 () Bool)

(assert (=> d!2179485 setRes!47998))

(declare-fun condSetEmpty!47998 () Bool)

(declare-fun res!2853965 () (Set Context!12508))

(assert (=> d!2179485 (= condSetEmpty!47998 (= res!2853965 (as set.empty (Set Context!12508))))))

(assert (=> d!2179485 (= (choose!52392 lt!2493018 lambda!404242) res!2853965)))

(declare-fun setIsEmpty!47998 () Bool)

(assert (=> setIsEmpty!47998 setRes!47998))

(declare-fun e!4205191 () Bool)

(declare-fun setElem!47998 () Context!12508)

(declare-fun setNonEmpty!47998 () Bool)

(declare-fun tp!1930557 () Bool)

(assert (=> setNonEmpty!47998 (= setRes!47998 (and tp!1930557 (inv!86005 setElem!47998) e!4205191))))

(declare-fun setRest!47998 () (Set Context!12508))

(assert (=> setNonEmpty!47998 (= res!2853965 (set.union (set.insert setElem!47998 (as set.empty (Set Context!12508))) setRest!47998))))

(declare-fun b!6996139 () Bool)

(declare-fun tp!1930556 () Bool)

(assert (=> b!6996139 (= e!4205191 tp!1930556)))

(assert (= (and d!2179485 condSetEmpty!47998) setIsEmpty!47998))

(assert (= (and d!2179485 (not condSetEmpty!47998)) setNonEmpty!47998))

(assert (= setNonEmpty!47998 b!6996139))

(declare-fun m!7687836 () Bool)

(assert (=> setNonEmpty!47998 m!7687836))

(assert (=> d!2179047 d!2179485))

(declare-fun d!2179487 () Bool)

(assert (=> d!2179487 true))

(declare-fun setRes!47999 () Bool)

(assert (=> d!2179487 setRes!47999))

(declare-fun condSetEmpty!47999 () Bool)

(declare-fun res!2853966 () (Set Context!12508))

(assert (=> d!2179487 (= condSetEmpty!47999 (= res!2853966 (as set.empty (Set Context!12508))))))

(assert (=> d!2179487 (= (choose!52384 lt!2493019 lambda!404244) res!2853966)))

(declare-fun setIsEmpty!47999 () Bool)

(assert (=> setIsEmpty!47999 setRes!47999))

(declare-fun tp!1930559 () Bool)

(declare-fun setNonEmpty!47999 () Bool)

(declare-fun setElem!47999 () Context!12508)

(declare-fun e!4205192 () Bool)

(assert (=> setNonEmpty!47999 (= setRes!47999 (and tp!1930559 (inv!86005 setElem!47999) e!4205192))))

(declare-fun setRest!47999 () (Set Context!12508))

(assert (=> setNonEmpty!47999 (= res!2853966 (set.union (set.insert setElem!47999 (as set.empty (Set Context!12508))) setRest!47999))))

(declare-fun b!6996140 () Bool)

(declare-fun tp!1930558 () Bool)

(assert (=> b!6996140 (= e!4205192 tp!1930558)))

(assert (= (and d!2179487 condSetEmpty!47999) setIsEmpty!47999))

(assert (= (and d!2179487 (not condSetEmpty!47999)) setNonEmpty!47999))

(assert (= setNonEmpty!47999 b!6996140))

(declare-fun m!7687838 () Bool)

(assert (=> setNonEmpty!47999 m!7687838))

(assert (=> d!2178991 d!2179487))

(declare-fun d!2179489 () Bool)

(assert (=> d!2179489 (forall!16166 (++!15217 (exprs!6754 lt!2493225) (exprs!6754 ct2!306)) lambda!404243)))

(declare-fun lt!2493368 () Unit!161171)

(assert (=> d!2179489 (= lt!2493368 (choose!52383 (exprs!6754 lt!2493225) (exprs!6754 ct2!306) lambda!404243))))

(assert (=> d!2179489 (forall!16166 (exprs!6754 lt!2493225) lambda!404243)))

(assert (=> d!2179489 (= (lemmaConcatPreservesForall!594 (exprs!6754 lt!2493225) (exprs!6754 ct2!306) lambda!404243) lt!2493368)))

(declare-fun bs!1863138 () Bool)

(assert (= bs!1863138 d!2179489))

(assert (=> bs!1863138 m!7687052))

(assert (=> bs!1863138 m!7687052))

(declare-fun m!7687840 () Bool)

(assert (=> bs!1863138 m!7687840))

(declare-fun m!7687842 () Bool)

(assert (=> bs!1863138 m!7687842))

(declare-fun m!7687844 () Bool)

(assert (=> bs!1863138 m!7687844))

(assert (=> bs!1862932 d!2179489))

(declare-fun b!6996141 () Bool)

(declare-fun e!4205194 () List!67319)

(assert (=> b!6996141 (= e!4205194 (exprs!6754 ct2!306))))

(declare-fun b!6996142 () Bool)

(assert (=> b!6996142 (= e!4205194 (Cons!67195 (h!73643 (exprs!6754 lt!2493225)) (++!15217 (t!381066 (exprs!6754 lt!2493225)) (exprs!6754 ct2!306))))))

(declare-fun b!6996144 () Bool)

(declare-fun lt!2493369 () List!67319)

(declare-fun e!4205193 () Bool)

(assert (=> b!6996144 (= e!4205193 (or (not (= (exprs!6754 ct2!306) Nil!67195)) (= lt!2493369 (exprs!6754 lt!2493225))))))

(declare-fun b!6996143 () Bool)

(declare-fun res!2853968 () Bool)

(assert (=> b!6996143 (=> (not res!2853968) (not e!4205193))))

(assert (=> b!6996143 (= res!2853968 (= (size!40923 lt!2493369) (+ (size!40923 (exprs!6754 lt!2493225)) (size!40923 (exprs!6754 ct2!306)))))))

(declare-fun d!2179491 () Bool)

(assert (=> d!2179491 e!4205193))

(declare-fun res!2853967 () Bool)

(assert (=> d!2179491 (=> (not res!2853967) (not e!4205193))))

(assert (=> d!2179491 (= res!2853967 (= (content!13290 lt!2493369) (set.union (content!13290 (exprs!6754 lt!2493225)) (content!13290 (exprs!6754 ct2!306)))))))

(assert (=> d!2179491 (= lt!2493369 e!4205194)))

(declare-fun c!1298141 () Bool)

(assert (=> d!2179491 (= c!1298141 (is-Nil!67195 (exprs!6754 lt!2493225)))))

(assert (=> d!2179491 (= (++!15217 (exprs!6754 lt!2493225) (exprs!6754 ct2!306)) lt!2493369)))

(assert (= (and d!2179491 c!1298141) b!6996141))

(assert (= (and d!2179491 (not c!1298141)) b!6996142))

(assert (= (and d!2179491 res!2853967) b!6996143))

(assert (= (and b!6996143 res!2853968) b!6996144))

(declare-fun m!7687846 () Bool)

(assert (=> b!6996142 m!7687846))

(declare-fun m!7687848 () Bool)

(assert (=> b!6996143 m!7687848))

(declare-fun m!7687850 () Bool)

(assert (=> b!6996143 m!7687850))

(assert (=> b!6996143 m!7686742))

(declare-fun m!7687852 () Bool)

(assert (=> d!2179491 m!7687852))

(declare-fun m!7687854 () Bool)

(assert (=> d!2179491 m!7687854))

(assert (=> d!2179491 m!7686748))

(assert (=> bs!1862932 d!2179491))

(assert (=> bs!1862928 d!2179063))

(declare-fun d!2179493 () Bool)

(assert (=> d!2179493 (= (nullable!7018 (h!73643 (exprs!6754 lt!2492982))) (nullableFct!2651 (h!73643 (exprs!6754 lt!2492982))))))

(declare-fun bs!1863139 () Bool)

(assert (= bs!1863139 d!2179493))

(declare-fun m!7687856 () Bool)

(assert (=> bs!1863139 m!7687856))

(assert (=> b!6995396 d!2179493))

(declare-fun d!2179495 () Bool)

(declare-fun lt!2493370 () Int)

(assert (=> d!2179495 (>= lt!2493370 0)))

(declare-fun e!4205195 () Int)

(assert (=> d!2179495 (= lt!2493370 e!4205195)))

(declare-fun c!1298142 () Bool)

(assert (=> d!2179495 (= c!1298142 (is-Cons!67195 (exprs!6754 (h!73645 lt!2492995))))))

(assert (=> d!2179495 (= (contextDepthTotal!451 (h!73645 lt!2492995)) lt!2493370)))

(declare-fun b!6996145 () Bool)

(assert (=> b!6996145 (= e!4205195 (+ (regexDepthTotal!274 (h!73643 (exprs!6754 (h!73645 lt!2492995)))) (contextDepthTotal!451 (Context!12509 (t!381066 (exprs!6754 (h!73645 lt!2492995)))))))))

(declare-fun b!6996146 () Bool)

(assert (=> b!6996146 (= e!4205195 1)))

(assert (= (and d!2179495 c!1298142) b!6996145))

(assert (= (and d!2179495 (not c!1298142)) b!6996146))

(declare-fun m!7687858 () Bool)

(assert (=> b!6996145 m!7687858))

(declare-fun m!7687860 () Bool)

(assert (=> b!6996145 m!7687860))

(assert (=> b!6995503 d!2179495))

(declare-fun d!2179497 () Bool)

(declare-fun lt!2493371 () Int)

(assert (=> d!2179497 (>= lt!2493371 0)))

(declare-fun e!4205196 () Int)

(assert (=> d!2179497 (= lt!2493371 e!4205196)))

(declare-fun c!1298143 () Bool)

(assert (=> d!2179497 (= c!1298143 (is-Cons!67197 (t!381068 lt!2492995)))))

(assert (=> d!2179497 (= (zipperDepthTotal!479 (t!381068 lt!2492995)) lt!2493371)))

(declare-fun b!6996147 () Bool)

(assert (=> b!6996147 (= e!4205196 (+ (contextDepthTotal!451 (h!73645 (t!381068 lt!2492995))) (zipperDepthTotal!479 (t!381068 (t!381068 lt!2492995)))))))

(declare-fun b!6996148 () Bool)

(assert (=> b!6996148 (= e!4205196 0)))

(assert (= (and d!2179497 c!1298143) b!6996147))

(assert (= (and d!2179497 (not c!1298143)) b!6996148))

(declare-fun m!7687862 () Bool)

(assert (=> b!6996147 m!7687862))

(declare-fun m!7687864 () Bool)

(assert (=> b!6996147 m!7687864))

(assert (=> b!6995503 d!2179497))

(declare-fun call!635071 () List!67319)

(declare-fun bm!635061 () Bool)

(declare-fun c!1298147 () Bool)

(declare-fun c!1298144 () Bool)

(assert (=> bm!635061 (= call!635071 ($colon$colon!2497 (exprs!6754 (ite (or c!1297913 c!1297915) lt!2493007 (Context!12509 call!634971))) (ite (or c!1298147 c!1298144) (regTwo!35028 (ite c!1297913 (regTwo!35029 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297915 (regTwo!35028 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297912 (regOne!35028 (h!73643 (exprs!6754 lt!2493029))) (reg!17587 (h!73643 (exprs!6754 lt!2493029))))))) (ite c!1297913 (regTwo!35029 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297915 (regTwo!35028 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297912 (regOne!35028 (h!73643 (exprs!6754 lt!2493029))) (reg!17587 (h!73643 (exprs!6754 lt!2493029)))))))))))

(declare-fun c!1298145 () Bool)

(declare-fun call!635069 () (Set Context!12508))

(declare-fun bm!635062 () Bool)

(assert (=> bm!635062 (= call!635069 (derivationStepZipperDown!1976 (ite c!1298145 (regOne!35029 (ite c!1297913 (regTwo!35029 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297915 (regTwo!35028 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297912 (regOne!35028 (h!73643 (exprs!6754 lt!2493029))) (reg!17587 (h!73643 (exprs!6754 lt!2493029))))))) (regOne!35028 (ite c!1297913 (regTwo!35029 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297915 (regTwo!35028 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297912 (regOne!35028 (h!73643 (exprs!6754 lt!2493029))) (reg!17587 (h!73643 (exprs!6754 lt!2493029)))))))) (ite c!1298145 (ite (or c!1297913 c!1297915) lt!2493007 (Context!12509 call!634971)) (Context!12509 call!635071)) (h!73644 s!7408)))))

(declare-fun b!6996149 () Bool)

(declare-fun e!4205200 () (Set Context!12508))

(declare-fun call!635070 () (Set Context!12508))

(assert (=> b!6996149 (= e!4205200 (set.union call!635069 call!635070))))

(declare-fun b!6996150 () Bool)

(declare-fun e!4205197 () (Set Context!12508))

(declare-fun call!635067 () (Set Context!12508))

(assert (=> b!6996150 (= e!4205197 (set.union call!635069 call!635067))))

(declare-fun b!6996151 () Bool)

(declare-fun e!4205199 () (Set Context!12508))

(declare-fun call!635066 () (Set Context!12508))

(assert (=> b!6996151 (= e!4205199 call!635066)))

(declare-fun b!6996152 () Bool)

(declare-fun e!4205198 () (Set Context!12508))

(assert (=> b!6996152 (= e!4205197 e!4205198)))

(assert (=> b!6996152 (= c!1298144 (is-Concat!26103 (ite c!1297913 (regTwo!35029 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297915 (regTwo!35028 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297912 (regOne!35028 (h!73643 (exprs!6754 lt!2493029))) (reg!17587 (h!73643 (exprs!6754 lt!2493029))))))))))

(declare-fun bm!635063 () Bool)

(declare-fun call!635068 () List!67319)

(assert (=> bm!635063 (= call!635068 call!635071)))

(declare-fun c!1298148 () Bool)

(declare-fun d!2179499 () Bool)

(assert (=> d!2179499 (= c!1298148 (and (is-ElementMatch!17258 (ite c!1297913 (regTwo!35029 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297915 (regTwo!35028 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297912 (regOne!35028 (h!73643 (exprs!6754 lt!2493029))) (reg!17587 (h!73643 (exprs!6754 lt!2493029))))))) (= (c!1297859 (ite c!1297913 (regTwo!35029 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297915 (regTwo!35028 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297912 (regOne!35028 (h!73643 (exprs!6754 lt!2493029))) (reg!17587 (h!73643 (exprs!6754 lt!2493029))))))) (h!73644 s!7408))))))

(declare-fun e!4205202 () (Set Context!12508))

(assert (=> d!2179499 (= (derivationStepZipperDown!1976 (ite c!1297913 (regTwo!35029 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297915 (regTwo!35028 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297912 (regOne!35028 (h!73643 (exprs!6754 lt!2493029))) (reg!17587 (h!73643 (exprs!6754 lt!2493029)))))) (ite (or c!1297913 c!1297915) lt!2493007 (Context!12509 call!634971)) (h!73644 s!7408)) e!4205202)))

(declare-fun b!6996153 () Bool)

(declare-fun e!4205201 () Bool)

(assert (=> b!6996153 (= c!1298147 e!4205201)))

(declare-fun res!2853969 () Bool)

(assert (=> b!6996153 (=> (not res!2853969) (not e!4205201))))

(assert (=> b!6996153 (= res!2853969 (is-Concat!26103 (ite c!1297913 (regTwo!35029 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297915 (regTwo!35028 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297912 (regOne!35028 (h!73643 (exprs!6754 lt!2493029))) (reg!17587 (h!73643 (exprs!6754 lt!2493029))))))))))

(assert (=> b!6996153 (= e!4205200 e!4205197)))

(declare-fun b!6996154 () Bool)

(assert (=> b!6996154 (= e!4205201 (nullable!7018 (regOne!35028 (ite c!1297913 (regTwo!35029 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297915 (regTwo!35028 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297912 (regOne!35028 (h!73643 (exprs!6754 lt!2493029))) (reg!17587 (h!73643 (exprs!6754 lt!2493029)))))))))))

(declare-fun b!6996155 () Bool)

(declare-fun c!1298146 () Bool)

(assert (=> b!6996155 (= c!1298146 (is-Star!17258 (ite c!1297913 (regTwo!35029 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297915 (regTwo!35028 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297912 (regOne!35028 (h!73643 (exprs!6754 lt!2493029))) (reg!17587 (h!73643 (exprs!6754 lt!2493029))))))))))

(assert (=> b!6996155 (= e!4205198 e!4205199)))

(declare-fun b!6996156 () Bool)

(assert (=> b!6996156 (= e!4205202 (set.insert (ite (or c!1297913 c!1297915) lt!2493007 (Context!12509 call!634971)) (as set.empty (Set Context!12508))))))

(declare-fun bm!635064 () Bool)

(assert (=> bm!635064 (= call!635066 call!635067)))

(declare-fun b!6996157 () Bool)

(assert (=> b!6996157 (= e!4205202 e!4205200)))

(assert (=> b!6996157 (= c!1298145 (is-Union!17258 (ite c!1297913 (regTwo!35029 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297915 (regTwo!35028 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297912 (regOne!35028 (h!73643 (exprs!6754 lt!2493029))) (reg!17587 (h!73643 (exprs!6754 lt!2493029))))))))))

(declare-fun bm!635065 () Bool)

(assert (=> bm!635065 (= call!635070 (derivationStepZipperDown!1976 (ite c!1298145 (regTwo!35029 (ite c!1297913 (regTwo!35029 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297915 (regTwo!35028 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297912 (regOne!35028 (h!73643 (exprs!6754 lt!2493029))) (reg!17587 (h!73643 (exprs!6754 lt!2493029))))))) (ite c!1298147 (regTwo!35028 (ite c!1297913 (regTwo!35029 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297915 (regTwo!35028 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297912 (regOne!35028 (h!73643 (exprs!6754 lt!2493029))) (reg!17587 (h!73643 (exprs!6754 lt!2493029))))))) (ite c!1298144 (regOne!35028 (ite c!1297913 (regTwo!35029 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297915 (regTwo!35028 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297912 (regOne!35028 (h!73643 (exprs!6754 lt!2493029))) (reg!17587 (h!73643 (exprs!6754 lt!2493029))))))) (reg!17587 (ite c!1297913 (regTwo!35029 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297915 (regTwo!35028 (h!73643 (exprs!6754 lt!2493029))) (ite c!1297912 (regOne!35028 (h!73643 (exprs!6754 lt!2493029))) (reg!17587 (h!73643 (exprs!6754 lt!2493029)))))))))) (ite (or c!1298145 c!1298147) (ite (or c!1297913 c!1297915) lt!2493007 (Context!12509 call!634971)) (Context!12509 call!635068)) (h!73644 s!7408)))))

(declare-fun b!6996158 () Bool)

(assert (=> b!6996158 (= e!4205199 (as set.empty (Set Context!12508)))))

(declare-fun b!6996159 () Bool)

(assert (=> b!6996159 (= e!4205198 call!635066)))

(declare-fun bm!635066 () Bool)

(assert (=> bm!635066 (= call!635067 call!635070)))

(assert (= (and d!2179499 c!1298148) b!6996156))

(assert (= (and d!2179499 (not c!1298148)) b!6996157))

(assert (= (and b!6996157 c!1298145) b!6996149))

(assert (= (and b!6996157 (not c!1298145)) b!6996153))

(assert (= (and b!6996153 res!2853969) b!6996154))

(assert (= (and b!6996153 c!1298147) b!6996150))

(assert (= (and b!6996153 (not c!1298147)) b!6996152))

(assert (= (and b!6996152 c!1298144) b!6996159))

(assert (= (and b!6996152 (not c!1298144)) b!6996155))

(assert (= (and b!6996155 c!1298146) b!6996151))

(assert (= (and b!6996155 (not c!1298146)) b!6996158))

(assert (= (or b!6996159 b!6996151) bm!635063))

(assert (= (or b!6996159 b!6996151) bm!635064))

(assert (= (or b!6996150 bm!635064) bm!635066))

(assert (= (or b!6996150 bm!635063) bm!635061))

(assert (= (or b!6996149 b!6996150) bm!635062))

(assert (= (or b!6996149 bm!635066) bm!635065))

(declare-fun m!7687866 () Bool)

(assert (=> bm!635061 m!7687866))

(declare-fun m!7687868 () Bool)

(assert (=> b!6996156 m!7687868))

(declare-fun m!7687870 () Bool)

(assert (=> b!6996154 m!7687870))

(declare-fun m!7687872 () Bool)

(assert (=> bm!635062 m!7687872))

(declare-fun m!7687874 () Bool)

(assert (=> bm!635065 m!7687874))

(assert (=> bm!634968 d!2179499))

(declare-fun b!6996160 () Bool)

(declare-fun e!4205203 () Bool)

(assert (=> b!6996160 (= e!4205203 (nullable!7018 (h!73643 (exprs!6754 (Context!12509 (t!381066 (exprs!6754 lt!2493029)))))))))

(declare-fun b!6996161 () Bool)

(declare-fun e!4205204 () (Set Context!12508))

(assert (=> b!6996161 (= e!4205204 (as set.empty (Set Context!12508)))))

(declare-fun b!6996162 () Bool)

(declare-fun e!4205205 () (Set Context!12508))

(declare-fun call!635072 () (Set Context!12508))

(assert (=> b!6996162 (= e!4205205 (set.union call!635072 (derivationStepZipperUp!1908 (Context!12509 (t!381066 (exprs!6754 (Context!12509 (t!381066 (exprs!6754 lt!2493029)))))) (h!73644 s!7408))))))

(declare-fun b!6996163 () Bool)

(assert (=> b!6996163 (= e!4205205 e!4205204)))

(declare-fun c!1298150 () Bool)

(assert (=> b!6996163 (= c!1298150 (is-Cons!67195 (exprs!6754 (Context!12509 (t!381066 (exprs!6754 lt!2493029))))))))

(declare-fun b!6996164 () Bool)

(assert (=> b!6996164 (= e!4205204 call!635072)))

(declare-fun d!2179501 () Bool)

(declare-fun c!1298149 () Bool)

(assert (=> d!2179501 (= c!1298149 e!4205203)))

(declare-fun res!2853970 () Bool)

(assert (=> d!2179501 (=> (not res!2853970) (not e!4205203))))

(assert (=> d!2179501 (= res!2853970 (is-Cons!67195 (exprs!6754 (Context!12509 (t!381066 (exprs!6754 lt!2493029))))))))

(assert (=> d!2179501 (= (derivationStepZipperUp!1908 (Context!12509 (t!381066 (exprs!6754 lt!2493029))) (h!73644 s!7408)) e!4205205)))

(declare-fun bm!635067 () Bool)

(assert (=> bm!635067 (= call!635072 (derivationStepZipperDown!1976 (h!73643 (exprs!6754 (Context!12509 (t!381066 (exprs!6754 lt!2493029))))) (Context!12509 (t!381066 (exprs!6754 (Context!12509 (t!381066 (exprs!6754 lt!2493029)))))) (h!73644 s!7408)))))

(assert (= (and d!2179501 res!2853970) b!6996160))

(assert (= (and d!2179501 c!1298149) b!6996162))

(assert (= (and d!2179501 (not c!1298149)) b!6996163))

(assert (= (and b!6996163 c!1298150) b!6996164))

(assert (= (and b!6996163 (not c!1298150)) b!6996161))

(assert (= (or b!6996162 b!6996164) bm!635067))

(declare-fun m!7687876 () Bool)

(assert (=> b!6996160 m!7687876))

(declare-fun m!7687878 () Bool)

(assert (=> b!6996162 m!7687878))

(declare-fun m!7687880 () Bool)

(assert (=> bm!635067 m!7687880))

(assert (=> b!6995619 d!2179501))

(declare-fun d!2179503 () Bool)

(assert (=> d!2179503 (= (flatMap!2244 lt!2493019 lambda!404309) (choose!52384 lt!2493019 lambda!404309))))

(declare-fun bs!1863140 () Bool)

(assert (= bs!1863140 d!2179503))

(declare-fun m!7687882 () Bool)

(assert (=> bs!1863140 m!7687882))

(assert (=> d!2178997 d!2179503))

(declare-fun b!6996165 () Bool)

(declare-fun e!4205207 () List!67319)

(assert (=> b!6996165 (= e!4205207 (exprs!6754 ct2!306))))

(declare-fun b!6996166 () Bool)

(assert (=> b!6996166 (= e!4205207 (Cons!67195 (h!73643 (t!381066 (exprs!6754 lt!2493029))) (++!15217 (t!381066 (t!381066 (exprs!6754 lt!2493029))) (exprs!6754 ct2!306))))))

(declare-fun lt!2493372 () List!67319)

(declare-fun b!6996168 () Bool)

(declare-fun e!4205206 () Bool)

(assert (=> b!6996168 (= e!4205206 (or (not (= (exprs!6754 ct2!306) Nil!67195)) (= lt!2493372 (t!381066 (exprs!6754 lt!2493029)))))))

(declare-fun b!6996167 () Bool)

(declare-fun res!2853972 () Bool)

(assert (=> b!6996167 (=> (not res!2853972) (not e!4205206))))

(assert (=> b!6996167 (= res!2853972 (= (size!40923 lt!2493372) (+ (size!40923 (t!381066 (exprs!6754 lt!2493029))) (size!40923 (exprs!6754 ct2!306)))))))

(declare-fun d!2179505 () Bool)

(assert (=> d!2179505 e!4205206))

(declare-fun res!2853971 () Bool)

(assert (=> d!2179505 (=> (not res!2853971) (not e!4205206))))

(assert (=> d!2179505 (= res!2853971 (= (content!13290 lt!2493372) (set.union (content!13290 (t!381066 (exprs!6754 lt!2493029))) (content!13290 (exprs!6754 ct2!306)))))))

(assert (=> d!2179505 (= lt!2493372 e!4205207)))

(declare-fun c!1298151 () Bool)

(assert (=> d!2179505 (= c!1298151 (is-Nil!67195 (t!381066 (exprs!6754 lt!2493029))))))

(assert (=> d!2179505 (= (++!15217 (t!381066 (exprs!6754 lt!2493029)) (exprs!6754 ct2!306)) lt!2493372)))

(assert (= (and d!2179505 c!1298151) b!6996165))

(assert (= (and d!2179505 (not c!1298151)) b!6996166))

(assert (= (and d!2179505 res!2853971) b!6996167))

(assert (= (and b!6996167 res!2853972) b!6996168))

(declare-fun m!7687884 () Bool)

(assert (=> b!6996166 m!7687884))

(declare-fun m!7687886 () Bool)

(assert (=> b!6996167 m!7687886))

(assert (=> b!6996167 m!7687346))

(assert (=> b!6996167 m!7686742))

(declare-fun m!7687888 () Bool)

(assert (=> d!2179505 m!7687888))

(assert (=> d!2179505 m!7687512))

(assert (=> d!2179505 m!7686748))

(assert (=> b!6995485 d!2179505))

(assert (=> d!2179069 d!2179453))

(declare-fun d!2179507 () Bool)

(assert (=> d!2179507 true))

(declare-fun setRes!48000 () Bool)

(assert (=> d!2179507 setRes!48000))

(declare-fun condSetEmpty!48000 () Bool)

(declare-fun res!2853973 () (Set Context!12508))

(assert (=> d!2179507 (= condSetEmpty!48000 (= res!2853973 (as set.empty (Set Context!12508))))))

(assert (=> d!2179507 (= (choose!52384 lt!2493023 lambda!404244) res!2853973)))

(declare-fun setIsEmpty!48000 () Bool)

(assert (=> setIsEmpty!48000 setRes!48000))

(declare-fun setNonEmpty!48000 () Bool)

(declare-fun e!4205208 () Bool)

(declare-fun setElem!48000 () Context!12508)

(declare-fun tp!1930561 () Bool)

(assert (=> setNonEmpty!48000 (= setRes!48000 (and tp!1930561 (inv!86005 setElem!48000) e!4205208))))

(declare-fun setRest!48000 () (Set Context!12508))

(assert (=> setNonEmpty!48000 (= res!2853973 (set.union (set.insert setElem!48000 (as set.empty (Set Context!12508))) setRest!48000))))

(declare-fun b!6996169 () Bool)

(declare-fun tp!1930560 () Bool)

(assert (=> b!6996169 (= e!4205208 tp!1930560)))

(assert (= (and d!2179507 condSetEmpty!48000) setIsEmpty!48000))

(assert (= (and d!2179507 (not condSetEmpty!48000)) setNonEmpty!48000))

(assert (= setNonEmpty!48000 b!6996169))

(declare-fun m!7687890 () Bool)

(assert (=> setNonEmpty!48000 m!7687890))

(assert (=> d!2179107 d!2179507))

(declare-fun bs!1863141 () Bool)

(declare-fun d!2179509 () Bool)

(assert (= bs!1863141 (and d!2179509 d!2179329)))

(declare-fun lambda!404370 () Int)

(assert (=> bs!1863141 (= lambda!404370 lambda!404359)))

(declare-fun bs!1863142 () Bool)

(assert (= bs!1863142 (and d!2179509 d!2179349)))

(assert (=> bs!1863142 (= lambda!404370 lambda!404361)))

(declare-fun bs!1863143 () Bool)

(assert (= bs!1863143 (and d!2179509 b!6995245)))

(assert (=> bs!1863143 (not (= lambda!404370 lambda!404241))))

(declare-fun bs!1863144 () Bool)

(assert (= bs!1863144 (and d!2179509 d!2179313)))

(assert (=> bs!1863144 (not (= lambda!404370 lambda!404358))))

(declare-fun bs!1863145 () Bool)

(assert (= bs!1863145 (and d!2179509 d!2179027)))

(assert (=> bs!1863145 (not (= lambda!404370 lambda!404316))))

(declare-fun bs!1863146 () Bool)

(assert (= bs!1863146 (and d!2179509 d!2179439)))

(assert (=> bs!1863146 (= lambda!404370 lambda!404369)))

(declare-fun bs!1863147 () Bool)

(assert (= bs!1863147 (and d!2179509 d!2179311)))

(assert (=> bs!1863147 (not (= lambda!404370 lambda!404355))))

(declare-fun bs!1863148 () Bool)

(assert (= bs!1863148 (and d!2179509 d!2179025)))

(assert (=> bs!1863148 (not (= lambda!404370 lambda!404313))))

(declare-fun bs!1863149 () Bool)

(assert (= bs!1863149 (and d!2179509 d!2179259)))

(assert (=> bs!1863149 (= lambda!404370 lambda!404351)))

(declare-fun bs!1863150 () Bool)

(assert (= bs!1863150 (and d!2179509 d!2179255)))

(assert (=> bs!1863150 (= lambda!404370 lambda!404350)))

(declare-fun bs!1863151 () Bool)

(assert (= bs!1863151 (and d!2179509 d!2179331)))

(assert (=> bs!1863151 (= lambda!404370 lambda!404360)))

(declare-fun bs!1863152 () Bool)

(assert (= bs!1863152 (and d!2179509 d!2179295)))

(assert (=> bs!1863152 (= lambda!404370 lambda!404353)))

(assert (=> d!2179509 (= (nullableZipper!2453 lt!2492985) (exists!3067 lt!2492985 lambda!404370))))

(declare-fun bs!1863153 () Bool)

(assert (= bs!1863153 d!2179509))

(declare-fun m!7687892 () Bool)

(assert (=> bs!1863153 m!7687892))

(assert (=> b!6995482 d!2179509))

(declare-fun d!2179511 () Bool)

(declare-fun c!1298152 () Bool)

(assert (=> d!2179511 (= c!1298152 (isEmpty!39219 (tail!13286 s!7408)))))

(declare-fun e!4205209 () Bool)

(assert (=> d!2179511 (= (matchZipper!2798 (derivationStepZipper!2738 lt!2492981 (head!14128 s!7408)) (tail!13286 s!7408)) e!4205209)))

(declare-fun b!6996170 () Bool)

(assert (=> b!6996170 (= e!4205209 (nullableZipper!2453 (derivationStepZipper!2738 lt!2492981 (head!14128 s!7408))))))

(declare-fun b!6996171 () Bool)

(assert (=> b!6996171 (= e!4205209 (matchZipper!2798 (derivationStepZipper!2738 (derivationStepZipper!2738 lt!2492981 (head!14128 s!7408)) (head!14128 (tail!13286 s!7408))) (tail!13286 (tail!13286 s!7408))))))

(assert (= (and d!2179511 c!1298152) b!6996170))

(assert (= (and d!2179511 (not c!1298152)) b!6996171))

(assert (=> d!2179511 m!7686794))

(assert (=> d!2179511 m!7687568))

(assert (=> b!6996170 m!7686914))

(declare-fun m!7687894 () Bool)

(assert (=> b!6996170 m!7687894))

(assert (=> b!6996171 m!7686794))

(assert (=> b!6996171 m!7687572))

(assert (=> b!6996171 m!7686914))

(assert (=> b!6996171 m!7687572))

(declare-fun m!7687896 () Bool)

(assert (=> b!6996171 m!7687896))

(assert (=> b!6996171 m!7686794))

(assert (=> b!6996171 m!7687576))

(assert (=> b!6996171 m!7687896))

(assert (=> b!6996171 m!7687576))

(declare-fun m!7687898 () Bool)

(assert (=> b!6996171 m!7687898))

(assert (=> b!6995515 d!2179511))

(declare-fun bs!1863154 () Bool)

(declare-fun d!2179513 () Bool)

(assert (= bs!1863154 (and d!2179513 d!2179239)))

(declare-fun lambda!404371 () Int)

(assert (=> bs!1863154 (= (= (head!14128 s!7408) (head!14128 (t!381067 s!7408))) (= lambda!404371 lambda!404347))))

(declare-fun bs!1863155 () Bool)

(assert (= bs!1863155 (and d!2179513 d!2179389)))

(assert (=> bs!1863155 (= (= (head!14128 s!7408) (head!14128 (t!381067 s!7408))) (= lambda!404371 lambda!404366))))

(declare-fun bs!1863156 () Bool)

(assert (= bs!1863156 (and d!2179513 d!2179103)))

(assert (=> bs!1863156 (= (= (head!14128 s!7408) (h!73644 s!7408)) (= lambda!404371 lambda!404329))))

(declare-fun bs!1863157 () Bool)

(assert (= bs!1863157 (and d!2179513 d!2179269)))

(assert (=> bs!1863157 (= (= (head!14128 s!7408) (head!14128 (t!381067 s!7408))) (= lambda!404371 lambda!404352))))

(declare-fun bs!1863158 () Bool)

(assert (= bs!1863158 (and d!2179513 b!6995234)))

(assert (=> bs!1863158 (= (= (head!14128 s!7408) (h!73644 s!7408)) (= lambda!404371 lambda!404244))))

(declare-fun bs!1863159 () Bool)

(assert (= bs!1863159 (and d!2179513 d!2179357)))

(assert (=> bs!1863159 (= lambda!404371 lambda!404363)))

(declare-fun bs!1863160 () Bool)

(assert (= bs!1863160 (and d!2179513 d!2179015)))

(assert (=> bs!1863160 (= (= (head!14128 s!7408) (h!73644 s!7408)) (= lambda!404371 lambda!404310))))

(declare-fun bs!1863161 () Bool)

(assert (= bs!1863161 (and d!2179513 d!2179425)))

(assert (=> bs!1863161 (= lambda!404371 lambda!404368)))

(declare-fun bs!1863162 () Bool)

(assert (= bs!1863162 (and d!2179513 d!2178997)))

(assert (=> bs!1863162 (= (= (head!14128 s!7408) (h!73644 s!7408)) (= lambda!404371 lambda!404309))))

(declare-fun bs!1863163 () Bool)

(assert (= bs!1863163 (and d!2179513 d!2179353)))

(assert (=> bs!1863163 (= (= (head!14128 s!7408) (head!14128 (t!381067 s!7408))) (= lambda!404371 lambda!404362))))

(declare-fun bs!1863164 () Bool)

(assert (= bs!1863164 (and d!2179513 d!2179375)))

(assert (=> bs!1863164 (= (= (head!14128 s!7408) (head!14128 (_1!37234 lt!2493025))) (= lambda!404371 lambda!404365))))

(declare-fun bs!1863165 () Bool)

(assert (= bs!1863165 (and d!2179513 d!2179409)))

(assert (=> bs!1863165 (= (= (head!14128 s!7408) (head!14128 (_2!37234 lt!2493025))) (= lambda!404371 lambda!404367))))

(assert (=> d!2179513 true))

(assert (=> d!2179513 (= (derivationStepZipper!2738 lt!2492981 (head!14128 s!7408)) (flatMap!2244 lt!2492981 lambda!404371))))

(declare-fun bs!1863166 () Bool)

(assert (= bs!1863166 d!2179513))

(declare-fun m!7687900 () Bool)

(assert (=> bs!1863166 m!7687900))

(assert (=> b!6995515 d!2179513))

(assert (=> b!6995515 d!2179359))

(assert (=> b!6995515 d!2179361))

(declare-fun bs!1863167 () Bool)

(declare-fun d!2179515 () Bool)

(assert (= bs!1863167 (and d!2179515 d!2179329)))

(declare-fun lambda!404372 () Int)

(assert (=> bs!1863167 (= lambda!404372 lambda!404359)))

(declare-fun bs!1863168 () Bool)

(assert (= bs!1863168 (and d!2179515 d!2179349)))

(assert (=> bs!1863168 (= lambda!404372 lambda!404361)))

(declare-fun bs!1863169 () Bool)

(assert (= bs!1863169 (and d!2179515 b!6995245)))

(assert (=> bs!1863169 (not (= lambda!404372 lambda!404241))))

(declare-fun bs!1863170 () Bool)

(assert (= bs!1863170 (and d!2179515 d!2179313)))

(assert (=> bs!1863170 (not (= lambda!404372 lambda!404358))))

(declare-fun bs!1863171 () Bool)

(assert (= bs!1863171 (and d!2179515 d!2179027)))

(assert (=> bs!1863171 (not (= lambda!404372 lambda!404316))))

(declare-fun bs!1863172 () Bool)

(assert (= bs!1863172 (and d!2179515 d!2179439)))

(assert (=> bs!1863172 (= lambda!404372 lambda!404369)))

(declare-fun bs!1863173 () Bool)

(assert (= bs!1863173 (and d!2179515 d!2179311)))

(assert (=> bs!1863173 (not (= lambda!404372 lambda!404355))))

(declare-fun bs!1863174 () Bool)

(assert (= bs!1863174 (and d!2179515 d!2179025)))

(assert (=> bs!1863174 (not (= lambda!404372 lambda!404313))))

(declare-fun bs!1863175 () Bool)

(assert (= bs!1863175 (and d!2179515 d!2179259)))

(assert (=> bs!1863175 (= lambda!404372 lambda!404351)))

(declare-fun bs!1863176 () Bool)

(assert (= bs!1863176 (and d!2179515 d!2179509)))

(assert (=> bs!1863176 (= lambda!404372 lambda!404370)))

(declare-fun bs!1863177 () Bool)

(assert (= bs!1863177 (and d!2179515 d!2179255)))

(assert (=> bs!1863177 (= lambda!404372 lambda!404350)))

(declare-fun bs!1863178 () Bool)

(assert (= bs!1863178 (and d!2179515 d!2179331)))

(assert (=> bs!1863178 (= lambda!404372 lambda!404360)))

(declare-fun bs!1863179 () Bool)

(assert (= bs!1863179 (and d!2179515 d!2179295)))

(assert (=> bs!1863179 (= lambda!404372 lambda!404353)))

(assert (=> d!2179515 (= (nullableZipper!2453 lt!2492996) (exists!3067 lt!2492996 lambda!404372))))

(declare-fun bs!1863180 () Bool)

(assert (= bs!1863180 d!2179515))

(declare-fun m!7687902 () Bool)

(assert (=> bs!1863180 m!7687902))

(assert (=> b!6995384 d!2179515))

(declare-fun d!2179517 () Bool)

(assert (=> d!2179517 (= ($colon$colon!2497 (exprs!6754 lt!2493007) (ite (or c!1297915 c!1297912) (regTwo!35028 (h!73643 (exprs!6754 lt!2493029))) (h!73643 (exprs!6754 lt!2493029)))) (Cons!67195 (ite (or c!1297915 c!1297912) (regTwo!35028 (h!73643 (exprs!6754 lt!2493029))) (h!73643 (exprs!6754 lt!2493029))) (exprs!6754 lt!2493007)))))

(assert (=> bm!634964 d!2179517))

(assert (=> d!2179023 d!2179453))

(declare-fun d!2179519 () Bool)

(assert (=> d!2179519 (= (map!15534 z1!570 lambda!404324) (choose!52392 z1!570 lambda!404324))))

(declare-fun bs!1863181 () Bool)

(assert (= bs!1863181 d!2179519))

(declare-fun m!7687904 () Bool)

(assert (=> bs!1863181 m!7687904))

(assert (=> d!2179071 d!2179519))

(declare-fun d!2179521 () Bool)

(declare-fun lt!2493373 () Int)

(assert (=> d!2179521 (>= lt!2493373 0)))

(declare-fun e!4205210 () Int)

(assert (=> d!2179521 (= lt!2493373 e!4205210)))

(declare-fun c!1298153 () Bool)

(assert (=> d!2179521 (= c!1298153 (is-Cons!67195 (exprs!6754 (h!73645 (Cons!67197 lt!2492984 Nil!67197)))))))

(assert (=> d!2179521 (= (contextDepthTotal!451 (h!73645 (Cons!67197 lt!2492984 Nil!67197))) lt!2493373)))

(declare-fun b!6996172 () Bool)

(assert (=> b!6996172 (= e!4205210 (+ (regexDepthTotal!274 (h!73643 (exprs!6754 (h!73645 (Cons!67197 lt!2492984 Nil!67197))))) (contextDepthTotal!451 (Context!12509 (t!381066 (exprs!6754 (h!73645 (Cons!67197 lt!2492984 Nil!67197))))))))))

(declare-fun b!6996173 () Bool)

(assert (=> b!6996173 (= e!4205210 1)))

(assert (= (and d!2179521 c!1298153) b!6996172))

(assert (= (and d!2179521 (not c!1298153)) b!6996173))

(declare-fun m!7687906 () Bool)

(assert (=> b!6996172 m!7687906))

(declare-fun m!7687908 () Bool)

(assert (=> b!6996172 m!7687908))

(assert (=> b!6995613 d!2179521))

(declare-fun d!2179523 () Bool)

(declare-fun lt!2493374 () Int)

(assert (=> d!2179523 (>= lt!2493374 0)))

(declare-fun e!4205211 () Int)

(assert (=> d!2179523 (= lt!2493374 e!4205211)))

(declare-fun c!1298154 () Bool)

(assert (=> d!2179523 (= c!1298154 (is-Cons!67197 (t!381068 (Cons!67197 lt!2492984 Nil!67197))))))

(assert (=> d!2179523 (= (zipperDepthTotal!479 (t!381068 (Cons!67197 lt!2492984 Nil!67197))) lt!2493374)))

(declare-fun b!6996174 () Bool)

(assert (=> b!6996174 (= e!4205211 (+ (contextDepthTotal!451 (h!73645 (t!381068 (Cons!67197 lt!2492984 Nil!67197)))) (zipperDepthTotal!479 (t!381068 (t!381068 (Cons!67197 lt!2492984 Nil!67197))))))))

(declare-fun b!6996175 () Bool)

(assert (=> b!6996175 (= e!4205211 0)))

(assert (= (and d!2179523 c!1298154) b!6996174))

(assert (= (and d!2179523 (not c!1298154)) b!6996175))

(declare-fun m!7687910 () Bool)

(assert (=> b!6996174 m!7687910))

(declare-fun m!7687912 () Bool)

(assert (=> b!6996174 m!7687912))

(assert (=> b!6995613 d!2179523))

(declare-fun d!2179525 () Bool)

(declare-fun res!2853974 () Bool)

(declare-fun e!4205212 () Bool)

(assert (=> d!2179525 (=> res!2853974 e!4205212)))

(assert (=> d!2179525 (= res!2853974 (is-Nil!67195 (exprs!6754 ct2!306)))))

(assert (=> d!2179525 (= (forall!16166 (exprs!6754 ct2!306) lambda!404325) e!4205212)))

(declare-fun b!6996176 () Bool)

(declare-fun e!4205213 () Bool)

(assert (=> b!6996176 (= e!4205212 e!4205213)))

(declare-fun res!2853975 () Bool)

(assert (=> b!6996176 (=> (not res!2853975) (not e!4205213))))

(assert (=> b!6996176 (= res!2853975 (dynLambda!26970 lambda!404325 (h!73643 (exprs!6754 ct2!306))))))

(declare-fun b!6996177 () Bool)

(assert (=> b!6996177 (= e!4205213 (forall!16166 (t!381066 (exprs!6754 ct2!306)) lambda!404325))))

(assert (= (and d!2179525 (not res!2853974)) b!6996176))

(assert (= (and b!6996176 res!2853975) b!6996177))

(declare-fun b_lambda!263143 () Bool)

(assert (=> (not b_lambda!263143) (not b!6996176)))

(declare-fun m!7687914 () Bool)

(assert (=> b!6996176 m!7687914))

(declare-fun m!7687916 () Bool)

(assert (=> b!6996177 m!7687916))

(assert (=> d!2179073 d!2179525))

(declare-fun d!2179527 () Bool)

(assert (=> d!2179527 (= (nullable!7018 (reg!17587 (h!73643 (exprs!6754 lt!2493029)))) (nullableFct!2651 (reg!17587 (h!73643 (exprs!6754 lt!2493029)))))))

(declare-fun bs!1863182 () Bool)

(assert (= bs!1863182 d!2179527))

(declare-fun m!7687918 () Bool)

(assert (=> bs!1863182 m!7687918))

(assert (=> b!6995371 d!2179527))

(declare-fun b!6996180 () Bool)

(declare-fun res!2853977 () Bool)

(declare-fun e!4205214 () Bool)

(assert (=> b!6996180 (=> (not res!2853977) (not e!4205214))))

(declare-fun lt!2493375 () List!67320)

(assert (=> b!6996180 (= res!2853977 (= (size!40922 lt!2493375) (+ (size!40922 (_1!37234 (get!23557 lt!2493257))) (size!40922 (_2!37234 (get!23557 lt!2493257))))))))

(declare-fun b!6996179 () Bool)

(declare-fun e!4205215 () List!67320)

(assert (=> b!6996179 (= e!4205215 (Cons!67196 (h!73644 (_1!37234 (get!23557 lt!2493257))) (++!15218 (t!381067 (_1!37234 (get!23557 lt!2493257))) (_2!37234 (get!23557 lt!2493257)))))))

(declare-fun b!6996181 () Bool)

(assert (=> b!6996181 (= e!4205214 (or (not (= (_2!37234 (get!23557 lt!2493257)) Nil!67196)) (= lt!2493375 (_1!37234 (get!23557 lt!2493257)))))))

(declare-fun d!2179529 () Bool)

(assert (=> d!2179529 e!4205214))

(declare-fun res!2853976 () Bool)

(assert (=> d!2179529 (=> (not res!2853976) (not e!4205214))))

(assert (=> d!2179529 (= res!2853976 (= (content!13289 lt!2493375) (set.union (content!13289 (_1!37234 (get!23557 lt!2493257))) (content!13289 (_2!37234 (get!23557 lt!2493257))))))))

(assert (=> d!2179529 (= lt!2493375 e!4205215)))

(declare-fun c!1298155 () Bool)

(assert (=> d!2179529 (= c!1298155 (is-Nil!67196 (_1!37234 (get!23557 lt!2493257))))))

(assert (=> d!2179529 (= (++!15218 (_1!37234 (get!23557 lt!2493257)) (_2!37234 (get!23557 lt!2493257))) lt!2493375)))

(declare-fun b!6996178 () Bool)

(assert (=> b!6996178 (= e!4205215 (_2!37234 (get!23557 lt!2493257)))))

(assert (= (and d!2179529 c!1298155) b!6996178))

(assert (= (and d!2179529 (not c!1298155)) b!6996179))

(assert (= (and d!2179529 res!2853976) b!6996180))

(assert (= (and b!6996180 res!2853977) b!6996181))

(declare-fun m!7687920 () Bool)

(assert (=> b!6996180 m!7687920))

(declare-fun m!7687922 () Bool)

(assert (=> b!6996180 m!7687922))

(declare-fun m!7687924 () Bool)

(assert (=> b!6996180 m!7687924))

(declare-fun m!7687926 () Bool)

(assert (=> b!6996179 m!7687926))

(declare-fun m!7687928 () Bool)

(assert (=> d!2179529 m!7687928))

(declare-fun m!7687930 () Bool)

(assert (=> d!2179529 m!7687930))

(declare-fun m!7687932 () Bool)

(assert (=> d!2179529 m!7687932))

(assert (=> b!6995595 d!2179529))

(assert (=> b!6995595 d!2179367))

(assert (=> bs!1862933 d!2178989))

(declare-fun b!6996182 () Bool)

(declare-fun e!4205216 () Bool)

(assert (=> b!6996182 (= e!4205216 (nullable!7018 (h!73643 (exprs!6754 (Context!12509 (t!381066 (exprs!6754 lt!2493007)))))))))

(declare-fun b!6996183 () Bool)

(declare-fun e!4205217 () (Set Context!12508))

(assert (=> b!6996183 (= e!4205217 (as set.empty (Set Context!12508)))))

(declare-fun call!635073 () (Set Context!12508))

(declare-fun e!4205218 () (Set Context!12508))

(declare-fun b!6996184 () Bool)

(assert (=> b!6996184 (= e!4205218 (set.union call!635073 (derivationStepZipperUp!1908 (Context!12509 (t!381066 (exprs!6754 (Context!12509 (t!381066 (exprs!6754 lt!2493007)))))) (h!73644 s!7408))))))

(declare-fun b!6996185 () Bool)

(assert (=> b!6996185 (= e!4205218 e!4205217)))

(declare-fun c!1298157 () Bool)

(assert (=> b!6996185 (= c!1298157 (is-Cons!67195 (exprs!6754 (Context!12509 (t!381066 (exprs!6754 lt!2493007))))))))

(declare-fun b!6996186 () Bool)

(assert (=> b!6996186 (= e!4205217 call!635073)))

(declare-fun d!2179531 () Bool)

(declare-fun c!1298156 () Bool)

(assert (=> d!2179531 (= c!1298156 e!4205216)))

(declare-fun res!2853978 () Bool)

(assert (=> d!2179531 (=> (not res!2853978) (not e!4205216))))

(assert (=> d!2179531 (= res!2853978 (is-Cons!67195 (exprs!6754 (Context!12509 (t!381066 (exprs!6754 lt!2493007))))))))

(assert (=> d!2179531 (= (derivationStepZipperUp!1908 (Context!12509 (t!381066 (exprs!6754 lt!2493007))) (h!73644 s!7408)) e!4205218)))

(declare-fun bm!635068 () Bool)

(assert (=> bm!635068 (= call!635073 (derivationStepZipperDown!1976 (h!73643 (exprs!6754 (Context!12509 (t!381066 (exprs!6754 lt!2493007))))) (Context!12509 (t!381066 (exprs!6754 (Context!12509 (t!381066 (exprs!6754 lt!2493007)))))) (h!73644 s!7408)))))

(assert (= (and d!2179531 res!2853978) b!6996182))

(assert (= (and d!2179531 c!1298156) b!6996184))

(assert (= (and d!2179531 (not c!1298156)) b!6996185))

(assert (= (and b!6996185 c!1298157) b!6996186))

(assert (= (and b!6996185 (not c!1298157)) b!6996183))

(assert (= (or b!6996184 b!6996186) bm!635068))

(declare-fun m!7687934 () Bool)

(assert (=> b!6996182 m!7687934))

(declare-fun m!7687936 () Bool)

(assert (=> b!6996184 m!7687936))

(declare-fun m!7687938 () Bool)

(assert (=> bm!635068 m!7687938))

(assert (=> b!6995429 d!2179531))

(declare-fun e!4205221 () Bool)

(assert (=> b!6995626 (= tp!1930503 e!4205221)))

(declare-fun b!6996199 () Bool)

(declare-fun tp!1930573 () Bool)

(assert (=> b!6996199 (= e!4205221 tp!1930573)))

(declare-fun b!6996200 () Bool)

(declare-fun tp!1930572 () Bool)

(declare-fun tp!1930575 () Bool)

(assert (=> b!6996200 (= e!4205221 (and tp!1930572 tp!1930575))))

(declare-fun b!6996198 () Bool)

(declare-fun tp!1930576 () Bool)

(declare-fun tp!1930574 () Bool)

(assert (=> b!6996198 (= e!4205221 (and tp!1930576 tp!1930574))))

(declare-fun b!6996197 () Bool)

(assert (=> b!6996197 (= e!4205221 tp_is_empty!43741)))

(assert (= (and b!6995626 (is-ElementMatch!17258 (h!73643 (exprs!6754 ct2!306)))) b!6996197))

(assert (= (and b!6995626 (is-Concat!26103 (h!73643 (exprs!6754 ct2!306)))) b!6996198))

(assert (= (and b!6995626 (is-Star!17258 (h!73643 (exprs!6754 ct2!306)))) b!6996199))

(assert (= (and b!6995626 (is-Union!17258 (h!73643 (exprs!6754 ct2!306)))) b!6996200))

(declare-fun b!6996201 () Bool)

(declare-fun e!4205222 () Bool)

(declare-fun tp!1930577 () Bool)

(declare-fun tp!1930578 () Bool)

(assert (=> b!6996201 (= e!4205222 (and tp!1930577 tp!1930578))))

(assert (=> b!6995626 (= tp!1930504 e!4205222)))

(assert (= (and b!6995626 (is-Cons!67195 (t!381066 (exprs!6754 ct2!306)))) b!6996201))

(declare-fun condSetEmpty!48001 () Bool)

(assert (=> setNonEmpty!47988 (= condSetEmpty!48001 (= setRest!47988 (as set.empty (Set Context!12508))))))

(declare-fun setRes!48001 () Bool)

(assert (=> setNonEmpty!47988 (= tp!1930515 setRes!48001)))

(declare-fun setIsEmpty!48001 () Bool)

(assert (=> setIsEmpty!48001 setRes!48001))

(declare-fun setNonEmpty!48001 () Bool)

(declare-fun setElem!48001 () Context!12508)

(declare-fun e!4205223 () Bool)

(declare-fun tp!1930580 () Bool)

(assert (=> setNonEmpty!48001 (= setRes!48001 (and tp!1930580 (inv!86005 setElem!48001) e!4205223))))

(declare-fun setRest!48001 () (Set Context!12508))

(assert (=> setNonEmpty!48001 (= setRest!47988 (set.union (set.insert setElem!48001 (as set.empty (Set Context!12508))) setRest!48001))))

(declare-fun b!6996202 () Bool)

(declare-fun tp!1930579 () Bool)

(assert (=> b!6996202 (= e!4205223 tp!1930579)))

(assert (= (and setNonEmpty!47988 condSetEmpty!48001) setIsEmpty!48001))

(assert (= (and setNonEmpty!47988 (not condSetEmpty!48001)) setNonEmpty!48001))

(assert (= setNonEmpty!48001 b!6996202))

(declare-fun m!7687940 () Bool)

(assert (=> setNonEmpty!48001 m!7687940))

(declare-fun b!6996203 () Bool)

(declare-fun e!4205224 () Bool)

(declare-fun tp!1930581 () Bool)

(declare-fun tp!1930582 () Bool)

(assert (=> b!6996203 (= e!4205224 (and tp!1930581 tp!1930582))))

(assert (=> b!6995637 (= tp!1930514 e!4205224)))

(assert (= (and b!6995637 (is-Cons!67195 (exprs!6754 setElem!47988))) b!6996203))

(declare-fun b!6996204 () Bool)

(declare-fun e!4205225 () Bool)

(declare-fun tp!1930583 () Bool)

(assert (=> b!6996204 (= e!4205225 (and tp_is_empty!43741 tp!1930583))))

(assert (=> b!6995631 (= tp!1930507 e!4205225)))

(assert (= (and b!6995631 (is-Cons!67196 (t!381067 (t!381067 s!7408)))) b!6996204))

(declare-fun e!4205226 () Bool)

(assert (=> b!6995632 (= tp!1930508 e!4205226)))

(declare-fun b!6996207 () Bool)

(declare-fun tp!1930585 () Bool)

(assert (=> b!6996207 (= e!4205226 tp!1930585)))

(declare-fun b!6996208 () Bool)

(declare-fun tp!1930584 () Bool)

(declare-fun tp!1930587 () Bool)

(assert (=> b!6996208 (= e!4205226 (and tp!1930584 tp!1930587))))

(declare-fun b!6996206 () Bool)

(declare-fun tp!1930588 () Bool)

(declare-fun tp!1930586 () Bool)

(assert (=> b!6996206 (= e!4205226 (and tp!1930588 tp!1930586))))

(declare-fun b!6996205 () Bool)

(assert (=> b!6996205 (= e!4205226 tp_is_empty!43741)))

(assert (= (and b!6995632 (is-ElementMatch!17258 (h!73643 (exprs!6754 setElem!47982)))) b!6996205))

(assert (= (and b!6995632 (is-Concat!26103 (h!73643 (exprs!6754 setElem!47982)))) b!6996206))

(assert (= (and b!6995632 (is-Star!17258 (h!73643 (exprs!6754 setElem!47982)))) b!6996207))

(assert (= (and b!6995632 (is-Union!17258 (h!73643 (exprs!6754 setElem!47982)))) b!6996208))

(declare-fun b!6996209 () Bool)

(declare-fun e!4205227 () Bool)

(declare-fun tp!1930589 () Bool)

(declare-fun tp!1930590 () Bool)

(assert (=> b!6996209 (= e!4205227 (and tp!1930589 tp!1930590))))

(assert (=> b!6995632 (= tp!1930509 e!4205227)))

(assert (= (and b!6995632 (is-Cons!67195 (t!381066 (exprs!6754 setElem!47982)))) b!6996209))

(declare-fun b_lambda!263145 () Bool)

(assert (= b_lambda!263141 (or b!6995229 b_lambda!263145)))

(declare-fun bs!1863183 () Bool)

(declare-fun d!2179533 () Bool)

(assert (= bs!1863183 (and d!2179533 b!6995229)))

(assert (=> bs!1863183 (= (dynLambda!26970 lambda!404243 (h!73643 (exprs!6754 lt!2493029))) (validRegex!8868 (h!73643 (exprs!6754 lt!2493029))))))

(assert (=> bs!1863183 m!7686426))

(assert (=> b!6996091 d!2179533))

(declare-fun b_lambda!263147 () Bool)

(assert (= b_lambda!263133 (or d!2179029 b_lambda!263147)))

(declare-fun bs!1863184 () Bool)

(declare-fun d!2179535 () Bool)

(assert (= bs!1863184 (and d!2179535 d!2179029)))

(assert (=> bs!1863184 (= (dynLambda!26970 lambda!404319 (h!73643 (exprs!6754 setElem!47982))) (validRegex!8868 (h!73643 (exprs!6754 setElem!47982))))))

(declare-fun m!7687942 () Bool)

(assert (=> bs!1863184 m!7687942))

(assert (=> b!6996064 d!2179535))

(declare-fun b_lambda!263149 () Bool)

(assert (= b_lambda!263135 (or b!6995229 b_lambda!263149)))

(declare-fun bs!1863185 () Bool)

(declare-fun d!2179537 () Bool)

(assert (= bs!1863185 (and d!2179537 b!6995229)))

(assert (=> bs!1863185 (= (dynLambda!26970 lambda!404243 (h!73643 (++!15217 lt!2493020 (exprs!6754 ct2!306)))) (validRegex!8868 (h!73643 (++!15217 lt!2493020 (exprs!6754 ct2!306)))))))

(declare-fun m!7687944 () Bool)

(assert (=> bs!1863185 m!7687944))

(assert (=> b!6996072 d!2179537))

(declare-fun b_lambda!263151 () Bool)

(assert (= b_lambda!263121 (or b!6995229 b_lambda!263151)))

(assert (=> d!2179293 d!2179119))

(declare-fun b_lambda!263153 () Bool)

(assert (= b_lambda!263125 (or d!2179027 b_lambda!263153)))

(declare-fun bs!1863186 () Bool)

(declare-fun d!2179539 () Bool)

(assert (= bs!1863186 (and d!2179539 d!2179027)))

(assert (=> bs!1863186 (= (dynLambda!26963 lambda!404316 (h!73645 lt!2493013)) (not (dynLambda!26963 lambda!404241 (h!73645 lt!2493013))))))

(declare-fun b_lambda!263175 () Bool)

(assert (=> (not b_lambda!263175) (not bs!1863186)))

(declare-fun m!7687946 () Bool)

(assert (=> bs!1863186 m!7687946))

(assert (=> b!6995970 d!2179539))

(declare-fun b_lambda!263155 () Bool)

(assert (= b_lambda!263137 (or b!6995229 b_lambda!263155)))

(declare-fun bs!1863187 () Bool)

(declare-fun d!2179541 () Bool)

(assert (= bs!1863187 (and d!2179541 b!6995229)))

(assert (=> bs!1863187 (= (dynLambda!26970 lambda!404243 (h!73643 lt!2493020)) (validRegex!8868 (h!73643 lt!2493020)))))

(declare-fun m!7687948 () Bool)

(assert (=> bs!1863187 m!7687948))

(assert (=> b!6996074 d!2179541))

(declare-fun b_lambda!263157 () Bool)

(assert (= b_lambda!263139 (or b!6995229 b_lambda!263157)))

(declare-fun bs!1863188 () Bool)

(declare-fun d!2179543 () Bool)

(assert (= bs!1863188 (and d!2179543 b!6995229)))

(assert (=> bs!1863188 (= (dynLambda!26970 lambda!404243 (h!73643 (++!15217 (exprs!6754 lt!2493029) (exprs!6754 ct2!306)))) (validRegex!8868 (h!73643 (++!15217 (exprs!6754 lt!2493029) (exprs!6754 ct2!306)))))))

(declare-fun m!7687950 () Bool)

(assert (=> bs!1863188 m!7687950))

(assert (=> b!6996089 d!2179543))

(declare-fun b_lambda!263159 () Bool)

(assert (= b_lambda!263119 (or b!6995234 b_lambda!263159)))

(assert (=> d!2179265 d!2179123))

(declare-fun b_lambda!263161 () Bool)

(assert (= b_lambda!263117 (or b!6995234 b_lambda!263161)))

(assert (=> d!2179263 d!2179117))

(declare-fun b_lambda!263163 () Bool)

(assert (= b_lambda!263127 (or b!6995229 b_lambda!263163)))

(declare-fun bs!1863189 () Bool)

(declare-fun d!2179545 () Bool)

(assert (= bs!1863189 (and d!2179545 b!6995229)))

(declare-fun lt!2493376 () Unit!161171)

(assert (=> bs!1863189 (= lt!2493376 (lemmaConcatPreservesForall!594 (exprs!6754 a!12810) (exprs!6754 ct2!306) lambda!404243))))

(assert (=> bs!1863189 (= (dynLambda!26965 lambda!404242 a!12810) (Context!12509 (++!15217 (exprs!6754 a!12810) (exprs!6754 ct2!306))))))

(declare-fun m!7687952 () Bool)

(assert (=> bs!1863189 m!7687952))

(declare-fun m!7687954 () Bool)

(assert (=> bs!1863189 m!7687954))

(assert (=> d!2179391 d!2179545))

(declare-fun b_lambda!263165 () Bool)

(assert (= b_lambda!263115 (or b!6995234 b_lambda!263165)))

(assert (=> d!2179245 d!2179113))

(declare-fun b_lambda!263167 () Bool)

(assert (= b_lambda!263131 (or b!6995245 b_lambda!263167)))

(declare-fun bs!1863190 () Bool)

(declare-fun d!2179547 () Bool)

(assert (= bs!1863190 (and d!2179547 b!6995245)))

(assert (=> bs!1863190 (= (dynLambda!26963 lambda!404241 (h!73645 (toList!10618 lt!2492981))) (matchZipper!2798 (set.insert (h!73645 (toList!10618 lt!2492981)) (as set.empty (Set Context!12508))) s!7408))))

(declare-fun m!7687956 () Bool)

(assert (=> bs!1863190 m!7687956))

(assert (=> bs!1863190 m!7687956))

(declare-fun m!7687958 () Bool)

(assert (=> bs!1863190 m!7687958))

(assert (=> b!6996034 d!2179547))

(declare-fun b_lambda!263169 () Bool)

(assert (= b_lambda!263143 (or d!2179073 b_lambda!263169)))

(declare-fun bs!1863191 () Bool)

(declare-fun d!2179549 () Bool)

(assert (= bs!1863191 (and d!2179549 d!2179073)))

(assert (=> bs!1863191 (= (dynLambda!26970 lambda!404325 (h!73643 (exprs!6754 ct2!306))) (validRegex!8868 (h!73643 (exprs!6754 ct2!306))))))

(declare-fun m!7687960 () Bool)

(assert (=> bs!1863191 m!7687960))

(assert (=> b!6996176 d!2179549))

(declare-fun b_lambda!263171 () Bool)

(assert (= b_lambda!263129 (or b!6995245 b_lambda!263171)))

(declare-fun bs!1863192 () Bool)

(declare-fun d!2179551 () Bool)

(assert (= bs!1863192 (and d!2179551 b!6995245)))

(assert (=> bs!1863192 (= (dynLambda!26963 lambda!404241 lt!2493350) (matchZipper!2798 (set.insert lt!2493350 (as set.empty (Set Context!12508))) s!7408))))

(declare-fun m!7687962 () Bool)

(assert (=> bs!1863192 m!7687962))

(assert (=> bs!1863192 m!7687962))

(declare-fun m!7687964 () Bool)

(assert (=> bs!1863192 m!7687964))

(assert (=> d!2179403 d!2179551))

(declare-fun b_lambda!263173 () Bool)

(assert (= b_lambda!263123 (or b!6995234 b_lambda!263173)))

(assert (=> d!2179327 d!2179127))

(push 1)

(assert (not d!2179353))

(assert (not b!6995791))

(assert (not d!2179375))

(assert (not b!6995858))

(assert (not d!2179275))

(assert (not b_lambda!263169))

(assert (not setNonEmpty!47998))

(assert (not b!6996065))

(assert (not d!2179235))

(assert (not b!6995989))

(assert (not bm!635053))

(assert (not d!2179255))

(assert (not d!2179363))

(assert (not b_lambda!263083))

(assert (not d!2179329))

(assert (not d!2179349))

(assert (not b!6995880))

(assert (not b!6995810))

(assert (not b!6996033))

(assert (not b!6996140))

(assert (not d!2179257))

(assert (not b!6996177))

(assert (not b!6996171))

(assert (not b!6996118))

(assert (not setNonEmpty!47999))

(assert (not setNonEmpty!47995))

(assert (not b!6995979))

(assert (not b!6996172))

(assert (not d!2179527))

(assert (not b!6995946))

(assert (not d!2179383))

(assert (not b_lambda!263087))

(assert (not b_lambda!263079))

(assert (not b!6995943))

(assert (not b!6996180))

(assert (not d!2179239))

(assert (not d!2179303))

(assert (not b_lambda!263081))

(assert (not b!6996017))

(assert (not b!6996132))

(assert (not d!2179365))

(assert (not b!6995838))

(assert (not bm!635061))

(assert (not d!2179505))

(assert (not b!6996038))

(assert (not b!6996050))

(assert (not b!6996182))

(assert (not b!6996071))

(assert (not b!6995958))

(assert (not d!2179285))

(assert (not b!6995816))

(assert (not b!6995939))

(assert (not b!6995965))

(assert (not b!6996093))

(assert (not b!6995871))

(assert (not d!2179279))

(assert (not b!6995947))

(assert (not b!6996135))

(assert (not bm!635039))

(assert (not b!6996174))

(assert (not bm!635068))

(assert (not b!6995855))

(assert (not d!2179515))

(assert (not d!2179245))

(assert (not b!6996198))

(assert (not bs!1863192))

(assert (not b!6995840))

(assert (not b_lambda!263173))

(assert (not bm!635056))

(assert (not d!2179389))

(assert (not b!6995956))

(assert (not b!6995792))

(assert (not bm!635015))

(assert (not b!6996128))

(assert (not b!6995826))

(assert (not b!6995976))

(assert (not b!6996100))

(assert (not b!6995986))

(assert (not b_lambda!263167))

(assert (not d!2179409))

(assert (not bs!1863183))

(assert (not bs!1863189))

(assert (not b!6995973))

(assert (not setNonEmpty!47994))

(assert (not d!2179265))

(assert (not b!6995846))

(assert (not d!2179301))

(assert (not b!6996202))

(assert (not bm!635050))

(assert (not b!6995897))

(assert (not b!6996203))

(assert (not d!2179457))

(assert (not d!2179289))

(assert (not b!6995798))

(assert (not b!6996208))

(assert (not b!6995835))

(assert (not b_lambda!263155))

(assert (not b!6996087))

(assert (not b_lambda!263075))

(assert (not b!6995830))

(assert tp_is_empty!43741)

(assert (not setNonEmpty!48000))

(assert (not b!6996145))

(assert (not d!2179529))

(assert (not b_lambda!263077))

(assert (not b!6996209))

(assert (not b!6996117))

(assert (not bm!635012))

(assert (not b!6996162))

(assert (not b!6996081))

(assert (not b!6996139))

(assert (not bm!635032))

(assert (not bm!635047))

(assert (not b!6995895))

(assert (not d!2179297))

(assert (not b!6995886))

(assert (not d!2179473))

(assert (not b!6995789))

(assert (not d!2179307))

(assert (not b!6995988))

(assert (not b!6995863))

(assert (not b!6995899))

(assert (not bs!1863184))

(assert (not bm!635040))

(assert (not b!6996090))

(assert (not bm!635060))

(assert (not d!2179489))

(assert (not b!6995859))

(assert (not bm!635024))

(assert (not b!6996036))

(assert (not bs!1863185))

(assert (not b!6995809))

(assert (not b!6995971))

(assert (not b!6995992))

(assert (not d!2179405))

(assert (not b!6996054))

(assert (not d!2179503))

(assert (not b!6996035))

(assert (not d!2179315))

(assert (not b!6995839))

(assert (not d!2179299))

(assert (not bm!635009))

(assert (not d!2179373))

(assert (not d!2179481))

(assert (not bm!635022))

(assert (not b!6996143))

(assert (not b_lambda!263157))

(assert (not d!2179357))

(assert (not b!6995873))

(assert (not d!2179291))

(assert (not d!2179509))

(assert (not d!2179451))

(assert (not d!2179435))

(assert (not bs!1863191))

(assert (not b!6995941))

(assert (not b_lambda!263151))

(assert (not b!6995990))

(assert (not b!6995834))

(assert (not b!6995854))

(assert (not d!2179281))

(assert (not setNonEmpty!48001))

(assert (not b_lambda!263149))

(assert (not d!2179445))

(assert (not b!6995887))

(assert (not b!6995872))

(assert (not b!6996075))

(assert (not b!6996179))

(assert (not d!2179277))

(assert (not b!6996154))

(assert (not d!2179293))

(assert (not b!6995827))

(assert (not b!6996047))

(assert (not d!2179371))

(assert (not bm!635045))

(assert (not bs!1863188))

(assert (not b!6995972))

(assert (not bm!635042))

(assert (not d!2179471))

(assert (not b_lambda!263175))

(assert (not b!6996206))

(assert (not b!6996057))

(assert (not b!6996088))

(assert (not d!2179269))

(assert (not b!6996167))

(assert (not d!2179391))

(assert (not d!2179267))

(assert (not b!6995991))

(assert (not b!6996110))

(assert (not d!2179419))

(assert (not b!6996092))

(assert (not bm!635043))

(assert (not b_lambda!263163))

(assert (not b!6996073))

(assert (not d!2179355))

(assert (not bm!635029))

(assert (not b!6995945))

(assert (not b!6995867))

(assert (not d!2179423))

(assert (not d!2179295))

(assert (not bm!635005))

(assert (not b_lambda!263153))

(assert (not b!6996053))

(assert (not b!6995836))

(assert (not b!6996094))

(assert (not b!6996102))

(assert (not d!2179327))

(assert (not bm!635027))

(assert (not d!2179421))

(assert (not d!2179387))

(assert (not d!2179441))

(assert (not bm!635062))

(assert (not b!6995824))

(assert (not b!6995802))

(assert (not bm!635021))

(assert (not b!6995926))

(assert (not d!2179381))

(assert (not bm!635046))

(assert (not d!2179397))

(assert (not b!6996207))

(assert (not b!6996169))

(assert (not b!6995964))

(assert (not b!6995961))

(assert (not b!6996131))

(assert (not b!6995860))

(assert (not b!6996130))

(assert (not b!6996201))

(assert (not b!6995864))

(assert (not b!6996142))

(assert (not bs!1863187))

(assert (not b!6995865))

(assert (not d!2179437))

(assert (not d!2179511))

(assert (not bm!635052))

(assert (not b!6995868))

(assert (not bs!1863190))

(assert (not d!2179425))

(assert (not b!6995962))

(assert (not b!6995831))

(assert (not b!6996166))

(assert (not b!6996051))

(assert (not b!6995889))

(assert (not b!6996055))

(assert (not d!2179313))

(assert (not d!2179393))

(assert (not b!6995788))

(assert (not d!2179483))

(assert (not b!6996104))

(assert (not bm!635031))

(assert (not bm!635011))

(assert (not d!2179461))

(assert (not b!6996116))

(assert (not b_lambda!263171))

(assert (not b!6996134))

(assert (not bm!635006))

(assert (not b!6995847))

(assert (not d!2179513))

(assert (not b_lambda!263161))

(assert (not d!2179237))

(assert (not b_lambda!263147))

(assert (not b!6996147))

(assert (not d!2179263))

(assert (not b!6995800))

(assert (not b!6995980))

(assert (not d!2179407))

(assert (not d!2179491))

(assert (not b!6996037))

(assert (not b_lambda!263165))

(assert (not b!6995974))

(assert (not b!6995957))

(assert (not b!6996200))

(assert (not b!6995937))

(assert (not bm!635067))

(assert (not b!6996184))

(assert (not d!2179351))

(assert (not bm!635065))

(assert (not b_lambda!263145))

(assert (not d!2179305))

(assert (not b!6996160))

(assert (not d!2179519))

(assert (not b!6996199))

(assert (not d!2179403))

(assert (not d!2179259))

(assert (not b!6995808))

(assert (not b_lambda!263085))

(assert (not d!2179493))

(assert (not b!6995959))

(assert (not bm!635023))

(assert (not b!6995869))

(assert (not bm!635058))

(assert (not d!2179331))

(assert (not d!2179311))

(assert (not b!6995856))

(assert (not b_lambda!263159))

(assert (not b!6996170))

(assert (not b!6996204))

(assert (not d!2179439))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

