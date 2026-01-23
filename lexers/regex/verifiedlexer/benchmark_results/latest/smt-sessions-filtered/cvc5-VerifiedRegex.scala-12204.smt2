; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!687390 () Bool)

(assert start!687390)

(declare-fun b!7074134 () Bool)

(assert (=> b!7074134 true))

(declare-fun b!7074150 () Bool)

(assert (=> b!7074150 true))

(declare-fun b!7074145 () Bool)

(assert (=> b!7074145 true))

(declare-fun bs!1880989 () Bool)

(declare-fun b!7074131 () Bool)

(assert (= bs!1880989 (and b!7074131 b!7074134)))

(declare-fun lambda!426187 () Int)

(declare-datatypes ((C!35578 0))(
  ( (C!35579 (val!27491 Int)) )
))
(declare-datatypes ((List!68488 0))(
  ( (Nil!68364) (Cons!68364 (h!74812 C!35578) (t!382271 List!68488)) )
))
(declare-fun lt!2547823 () List!68488)

(declare-fun lambda!426183 () Int)

(declare-fun s!7408 () List!68488)

(assert (=> bs!1880989 (= (= lt!2547823 s!7408) (= lambda!426187 lambda!426183))))

(assert (=> b!7074131 true))

(declare-fun b!7074126 () Bool)

(declare-fun e!4252993 () Bool)

(declare-datatypes ((Regex!17654 0))(
  ( (ElementMatch!17654 (c!1319726 C!35578)) (Concat!26499 (regOne!35820 Regex!17654) (regTwo!35820 Regex!17654)) (EmptyExpr!17654) (Star!17654 (reg!17983 Regex!17654)) (EmptyLang!17654) (Union!17654 (regOne!35821 Regex!17654) (regTwo!35821 Regex!17654)) )
))
(declare-datatypes ((List!68489 0))(
  ( (Nil!68365) (Cons!68365 (h!74813 Regex!17654) (t!382272 List!68489)) )
))
(declare-datatypes ((Context!13300 0))(
  ( (Context!13301 (exprs!7150 List!68489)) )
))
(declare-fun lt!2547798 () (Set Context!13300))

(declare-fun matchZipper!3194 ((Set Context!13300) List!68488) Bool)

(assert (=> b!7074126 (= e!4252993 (matchZipper!3194 lt!2547798 (t!382271 s!7408)))))

(declare-fun b!7074127 () Bool)

(declare-fun e!4252979 () Bool)

(declare-fun e!4252990 () Bool)

(assert (=> b!7074127 (= e!4252979 e!4252990)))

(declare-fun res!2889371 () Bool)

(assert (=> b!7074127 (=> res!2889371 e!4252990)))

(declare-fun lt!2547839 () Bool)

(assert (=> b!7074127 (= res!2889371 (not lt!2547839))))

(declare-datatypes ((Unit!162018 0))(
  ( (Unit!162019) )
))
(declare-fun lt!2547824 () Unit!162018)

(declare-fun lt!2547793 () List!68489)

(declare-fun lambda!426185 () Int)

(declare-fun ct2!306 () Context!13300)

(declare-fun lemmaConcatPreservesForall!965 (List!68489 List!68489 Int) Unit!162018)

(assert (=> b!7074127 (= lt!2547824 (lemmaConcatPreservesForall!965 lt!2547793 (exprs!7150 ct2!306) lambda!426185))))

(declare-fun lt!2547806 () Unit!162018)

(assert (=> b!7074127 (= lt!2547806 (lemmaConcatPreservesForall!965 lt!2547793 (exprs!7150 ct2!306) lambda!426185))))

(declare-fun b!7074128 () Bool)

(declare-fun e!4252998 () Bool)

(declare-fun tp!1942538 () Bool)

(assert (=> b!7074128 (= e!4252998 tp!1942538)))

(declare-fun b!7074129 () Bool)

(declare-fun e!4252987 () Bool)

(declare-fun tp!1942537 () Bool)

(assert (=> b!7074129 (= e!4252987 tp!1942537)))

(declare-fun b!7074130 () Bool)

(declare-fun e!4252994 () Bool)

(declare-fun e!4252984 () Bool)

(assert (=> b!7074130 (= e!4252994 e!4252984)))

(declare-fun res!2889366 () Bool)

(assert (=> b!7074130 (=> res!2889366 e!4252984)))

(declare-fun lt!2547828 () (Set Context!13300))

(declare-fun lt!2547805 () (Set Context!13300))

(assert (=> b!7074130 (= res!2889366 (not (= lt!2547828 lt!2547805)))))

(declare-fun lt!2547836 () (Set Context!13300))

(declare-fun lt!2547840 () (Set Context!13300))

(assert (=> b!7074130 (= lt!2547805 (set.union lt!2547836 lt!2547840))))

(declare-fun lt!2547803 () Context!13300)

(declare-fun derivationStepZipperUp!2238 (Context!13300 C!35578) (Set Context!13300))

(assert (=> b!7074130 (= lt!2547840 (derivationStepZipperUp!2238 lt!2547803 (h!74812 s!7408)))))

(declare-fun e!4252989 () Bool)

(declare-fun e!4252986 () Bool)

(assert (=> b!7074131 (= e!4252989 e!4252986)))

(declare-fun res!2889367 () Bool)

(assert (=> b!7074131 (=> res!2889367 e!4252986)))

(declare-fun z1!570 () (Set Context!13300))

(assert (=> b!7074131 (= res!2889367 (not (matchZipper!3194 z1!570 lt!2547823)))))

(declare-datatypes ((List!68490 0))(
  ( (Nil!68366) (Cons!68366 (h!74814 Context!13300) (t!382273 List!68490)) )
))
(declare-fun lt!2547808 () List!68490)

(declare-fun content!13809 (List!68490) (Set Context!13300))

(assert (=> b!7074131 (matchZipper!3194 (content!13809 lt!2547808) lt!2547823)))

(declare-fun lt!2547812 () Unit!162018)

(declare-fun lemmaExistsMatchingContextThenMatchingString!57 (List!68490 List!68488) Unit!162018)

(assert (=> b!7074131 (= lt!2547812 (lemmaExistsMatchingContextThenMatchingString!57 lt!2547808 lt!2547823))))

(declare-fun toList!10995 ((Set Context!13300)) List!68490)

(assert (=> b!7074131 (= lt!2547808 (toList!10995 z1!570))))

(declare-fun exists!3708 ((Set Context!13300) Int) Bool)

(assert (=> b!7074131 (exists!3708 z1!570 lambda!426187)))

(declare-fun lt!2547816 () Context!13300)

(declare-fun lt!2547794 () Unit!162018)

(declare-fun lemmaContainsThenExists!162 ((Set Context!13300) Context!13300 Int) Unit!162018)

(assert (=> b!7074131 (= lt!2547794 (lemmaContainsThenExists!162 z1!570 lt!2547816 lambda!426187))))

(declare-fun lt!2547818 () (Set Context!13300))

(declare-fun lt!2547796 () (Set Context!13300))

(declare-datatypes ((tuple2!68282 0))(
  ( (tuple2!68283 (_1!37444 List!68488) (_2!37444 List!68488)) )
))
(declare-datatypes ((Option!16973 0))(
  ( (None!16972) (Some!16972 (v!53266 tuple2!68282)) )
))
(declare-fun isDefined!13674 (Option!16973) Bool)

(declare-fun findConcatSeparationZippers!489 ((Set Context!13300) (Set Context!13300) List!68488 List!68488 List!68488) Option!16973)

(assert (=> b!7074131 (isDefined!13674 (findConcatSeparationZippers!489 lt!2547818 lt!2547796 Nil!68364 s!7408 s!7408))))

(declare-fun lt!2547802 () Unit!162018)

(declare-fun lt!2547804 () tuple2!68282)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!81 ((Set Context!13300) (Set Context!13300) List!68488 List!68488 List!68488 List!68488 List!68488) Unit!162018)

(assert (=> b!7074131 (= lt!2547802 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!81 lt!2547818 lt!2547796 lt!2547823 (_2!37444 lt!2547804) s!7408 Nil!68364 s!7408))))

(declare-fun b!7074132 () Bool)

(declare-fun ++!15791 (List!68488 List!68488) List!68488)

(assert (=> b!7074132 (= e!4252986 (= (++!15791 Nil!68364 s!7408) s!7408))))

(declare-fun res!2889369 () Bool)

(declare-fun e!4252996 () Bool)

(assert (=> start!687390 (=> (not res!2889369) (not e!4252996))))

(declare-fun lt!2547810 () (Set Context!13300))

(assert (=> start!687390 (= res!2889369 (matchZipper!3194 lt!2547810 s!7408))))

(declare-fun appendTo!775 ((Set Context!13300) Context!13300) (Set Context!13300))

(assert (=> start!687390 (= lt!2547810 (appendTo!775 z1!570 ct2!306))))

(assert (=> start!687390 e!4252996))

(declare-fun condSetEmpty!50306 () Bool)

(assert (=> start!687390 (= condSetEmpty!50306 (= z1!570 (as set.empty (Set Context!13300))))))

(declare-fun setRes!50306 () Bool)

(assert (=> start!687390 setRes!50306))

(declare-fun inv!86995 (Context!13300) Bool)

(assert (=> start!687390 (and (inv!86995 ct2!306) e!4252987)))

(declare-fun e!4252983 () Bool)

(assert (=> start!687390 e!4252983))

(declare-fun b!7074133 () Bool)

(declare-fun e!4252992 () Bool)

(declare-fun e!4252988 () Bool)

(assert (=> b!7074133 (= e!4252992 e!4252988)))

(declare-fun res!2889351 () Bool)

(assert (=> b!7074133 (=> res!2889351 e!4252988)))

(declare-fun e!4252985 () Bool)

(assert (=> b!7074133 (= res!2889351 e!4252985)))

(declare-fun res!2889363 () Bool)

(assert (=> b!7074133 (=> (not res!2889363) (not e!4252985))))

(declare-fun lt!2547829 () Bool)

(assert (=> b!7074133 (= res!2889363 (not (= lt!2547829 lt!2547839)))))

(declare-fun lt!2547813 () (Set Context!13300))

(assert (=> b!7074133 (= lt!2547829 (matchZipper!3194 lt!2547813 (t!382271 s!7408)))))

(declare-fun lt!2547821 () Unit!162018)

(assert (=> b!7074133 (= lt!2547821 (lemmaConcatPreservesForall!965 lt!2547793 (exprs!7150 ct2!306) lambda!426185))))

(declare-fun lt!2547801 () (Set Context!13300))

(assert (=> b!7074133 (= (matchZipper!3194 lt!2547801 (t!382271 s!7408)) e!4252993)))

(declare-fun res!2889350 () Bool)

(assert (=> b!7074133 (=> res!2889350 e!4252993)))

(assert (=> b!7074133 (= res!2889350 lt!2547839)))

(declare-fun lt!2547811 () (Set Context!13300))

(assert (=> b!7074133 (= lt!2547839 (matchZipper!3194 lt!2547811 (t!382271 s!7408)))))

(declare-fun lt!2547838 () Unit!162018)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1667 ((Set Context!13300) (Set Context!13300) List!68488) Unit!162018)

(assert (=> b!7074133 (= lt!2547838 (lemmaZipperConcatMatchesSameAsBothZippers!1667 lt!2547811 lt!2547798 (t!382271 s!7408)))))

(declare-fun lt!2547830 () Unit!162018)

(assert (=> b!7074133 (= lt!2547830 (lemmaConcatPreservesForall!965 lt!2547793 (exprs!7150 ct2!306) lambda!426185))))

(declare-fun lt!2547834 () Unit!162018)

(assert (=> b!7074133 (= lt!2547834 (lemmaConcatPreservesForall!965 lt!2547793 (exprs!7150 ct2!306) lambda!426185))))

(declare-fun e!4252995 () Bool)

(assert (=> b!7074134 (= e!4252996 (not e!4252995))))

(declare-fun res!2889359 () Bool)

(assert (=> b!7074134 (=> res!2889359 e!4252995)))

(declare-fun lt!2547822 () (Set Context!13300))

(assert (=> b!7074134 (= res!2889359 (not (matchZipper!3194 lt!2547822 s!7408)))))

(declare-fun lt!2547820 () Context!13300)

(assert (=> b!7074134 (= lt!2547822 (set.insert lt!2547820 (as set.empty (Set Context!13300))))))

(declare-fun getWitness!1761 ((Set Context!13300) Int) Context!13300)

(assert (=> b!7074134 (= lt!2547820 (getWitness!1761 lt!2547810 lambda!426183))))

(declare-fun lt!2547817 () List!68490)

(declare-fun exists!3709 (List!68490 Int) Bool)

(assert (=> b!7074134 (exists!3709 lt!2547817 lambda!426183)))

(declare-fun lt!2547795 () Unit!162018)

(declare-fun lemmaZipperMatchesExistsMatchingContext!575 (List!68490 List!68488) Unit!162018)

(assert (=> b!7074134 (= lt!2547795 (lemmaZipperMatchesExistsMatchingContext!575 lt!2547817 s!7408))))

(assert (=> b!7074134 (= lt!2547817 (toList!10995 lt!2547810))))

(declare-fun setIsEmpty!50306 () Bool)

(assert (=> setIsEmpty!50306 setRes!50306))

(declare-fun b!7074135 () Bool)

(declare-fun e!4252980 () Bool)

(declare-fun e!4252991 () Bool)

(assert (=> b!7074135 (= e!4252980 e!4252991)))

(declare-fun res!2889358 () Bool)

(assert (=> b!7074135 (=> res!2889358 e!4252991)))

(declare-fun nullable!7337 (Regex!17654) Bool)

(assert (=> b!7074135 (= res!2889358 (not (nullable!7337 (h!74813 (exprs!7150 lt!2547816)))))))

(assert (=> b!7074135 (= lt!2547803 (Context!13301 lt!2547793))))

(declare-fun tail!13843 (List!68489) List!68489)

(assert (=> b!7074135 (= lt!2547793 (tail!13843 (exprs!7150 lt!2547816)))))

(declare-fun b!7074136 () Bool)

(declare-fun res!2889356 () Bool)

(assert (=> b!7074136 (=> res!2889356 e!4252989)))

(declare-fun lt!2547815 () Bool)

(assert (=> b!7074136 (= res!2889356 (not lt!2547815))))

(declare-fun b!7074137 () Bool)

(declare-fun res!2889355 () Bool)

(declare-fun e!4252981 () Bool)

(assert (=> b!7074137 (=> res!2889355 e!4252981)))

(assert (=> b!7074137 (= res!2889355 (not (= (++!15791 (_1!37444 lt!2547804) (_2!37444 lt!2547804)) (t!382271 s!7408))))))

(declare-fun b!7074138 () Bool)

(assert (=> b!7074138 (= e!4252990 e!4252981)))

(declare-fun res!2889353 () Bool)

(assert (=> b!7074138 (=> res!2889353 e!4252981)))

(assert (=> b!7074138 (= res!2889353 (not (matchZipper!3194 lt!2547836 (_1!37444 lt!2547804))))))

(declare-fun lt!2547832 () Option!16973)

(declare-fun get!23951 (Option!16973) tuple2!68282)

(assert (=> b!7074138 (= lt!2547804 (get!23951 lt!2547832))))

(assert (=> b!7074138 (isDefined!13674 lt!2547832)))

(assert (=> b!7074138 (= lt!2547832 (findConcatSeparationZippers!489 lt!2547836 lt!2547796 Nil!68364 (t!382271 s!7408) (t!382271 s!7408)))))

(assert (=> b!7074138 (= lt!2547796 (set.insert ct2!306 (as set.empty (Set Context!13300))))))

(declare-fun lt!2547835 () Unit!162018)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!477 ((Set Context!13300) Context!13300 List!68488) Unit!162018)

(assert (=> b!7074138 (= lt!2547835 (lemmaConcatZipperMatchesStringThenFindConcatDefined!477 lt!2547836 ct2!306 (t!382271 s!7408)))))

(declare-fun lt!2547800 () Unit!162018)

(assert (=> b!7074138 (= lt!2547800 (lemmaConcatPreservesForall!965 lt!2547793 (exprs!7150 ct2!306) lambda!426185))))

(assert (=> b!7074138 (= lt!2547811 (appendTo!775 lt!2547836 ct2!306))))

(declare-fun derivationStepZipperDown!2288 (Regex!17654 Context!13300 C!35578) (Set Context!13300))

(assert (=> b!7074138 (= lt!2547836 (derivationStepZipperDown!2288 (h!74813 (exprs!7150 lt!2547816)) lt!2547803 (h!74812 s!7408)))))

(declare-fun lt!2547837 () Unit!162018)

(assert (=> b!7074138 (= lt!2547837 (lemmaConcatPreservesForall!965 lt!2547793 (exprs!7150 ct2!306) lambda!426185))))

(declare-fun lt!2547792 () Unit!162018)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!125 (Context!13300 Regex!17654 C!35578 Context!13300) Unit!162018)

(assert (=> b!7074138 (= lt!2547792 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!125 lt!2547803 (h!74813 (exprs!7150 lt!2547816)) (h!74812 s!7408) ct2!306))))

(declare-fun b!7074139 () Bool)

(assert (=> b!7074139 (= e!4252988 e!4252979)))

(declare-fun res!2889357 () Bool)

(assert (=> b!7074139 (=> res!2889357 e!4252979)))

(assert (=> b!7074139 (= res!2889357 (matchZipper!3194 lt!2547798 (t!382271 s!7408)))))

(declare-fun lt!2547791 () Unit!162018)

(assert (=> b!7074139 (= lt!2547791 (lemmaConcatPreservesForall!965 lt!2547793 (exprs!7150 ct2!306) lambda!426185))))

(declare-fun b!7074140 () Bool)

(declare-fun tp_is_empty!44533 () Bool)

(declare-fun tp!1942535 () Bool)

(assert (=> b!7074140 (= e!4252983 (and tp_is_empty!44533 tp!1942535))))

(declare-fun b!7074141 () Bool)

(declare-fun res!2889365 () Bool)

(assert (=> b!7074141 (=> res!2889365 e!4252986)))

(assert (=> b!7074141 (= res!2889365 (not (= (++!15791 lt!2547823 (_2!37444 lt!2547804)) s!7408)))))

(declare-fun b!7074142 () Bool)

(declare-fun res!2889372 () Bool)

(assert (=> b!7074142 (=> res!2889372 e!4252988)))

(assert (=> b!7074142 (= res!2889372 (not lt!2547829))))

(declare-fun b!7074143 () Bool)

(declare-fun e!4252997 () Bool)

(assert (=> b!7074143 (= e!4252997 (not (matchZipper!3194 lt!2547840 (_1!37444 lt!2547804))))))

(declare-fun b!7074144 () Bool)

(declare-fun res!2889361 () Bool)

(assert (=> b!7074144 (=> res!2889361 e!4252981)))

(assert (=> b!7074144 (= res!2889361 (not (matchZipper!3194 lt!2547796 (_2!37444 lt!2547804))))))

(declare-fun e!4252999 () Bool)

(assert (=> b!7074145 (= e!4252999 e!4252980)))

(declare-fun res!2889346 () Bool)

(assert (=> b!7074145 (=> res!2889346 e!4252980)))

(declare-fun lt!2547819 () (Set Context!13300))

(declare-fun derivationStepZipper!3104 ((Set Context!13300) C!35578) (Set Context!13300))

(assert (=> b!7074145 (= res!2889346 (not (= (derivationStepZipper!3104 lt!2547819 (h!74812 s!7408)) lt!2547813)))))

(declare-fun lt!2547814 () Context!13300)

(declare-fun lambda!426186 () Int)

(declare-fun flatMap!2580 ((Set Context!13300) Int) (Set Context!13300))

(assert (=> b!7074145 (= (flatMap!2580 lt!2547819 lambda!426186) (derivationStepZipperUp!2238 lt!2547814 (h!74812 s!7408)))))

(declare-fun lt!2547833 () Unit!162018)

(declare-fun lemmaFlatMapOnSingletonSet!2089 ((Set Context!13300) Context!13300 Int) Unit!162018)

(assert (=> b!7074145 (= lt!2547833 (lemmaFlatMapOnSingletonSet!2089 lt!2547819 lt!2547814 lambda!426186))))

(assert (=> b!7074145 (= lt!2547813 (derivationStepZipperUp!2238 lt!2547814 (h!74812 s!7408)))))

(declare-fun lt!2547797 () Unit!162018)

(assert (=> b!7074145 (= lt!2547797 (lemmaConcatPreservesForall!965 (exprs!7150 lt!2547816) (exprs!7150 ct2!306) lambda!426185))))

(declare-fun b!7074146 () Bool)

(declare-fun res!2889370 () Bool)

(assert (=> b!7074146 (=> res!2889370 e!4252986)))

(declare-fun isPrefix!5857 (List!68488 List!68488) Bool)

(assert (=> b!7074146 (= res!2889370 (not (isPrefix!5857 Nil!68364 lt!2547823)))))

(declare-fun setNonEmpty!50306 () Bool)

(declare-fun tp!1942536 () Bool)

(declare-fun setElem!50306 () Context!13300)

(assert (=> setNonEmpty!50306 (= setRes!50306 (and tp!1942536 (inv!86995 setElem!50306) e!4252998))))

(declare-fun setRest!50306 () (Set Context!13300))

(assert (=> setNonEmpty!50306 (= z1!570 (set.union (set.insert setElem!50306 (as set.empty (Set Context!13300))) setRest!50306))))

(declare-fun b!7074147 () Bool)

(declare-fun res!2889347 () Bool)

(assert (=> b!7074147 (=> res!2889347 e!4252980)))

(assert (=> b!7074147 (= res!2889347 (not (is-Cons!68365 (exprs!7150 lt!2547816))))))

(declare-fun b!7074148 () Bool)

(declare-fun res!2889368 () Bool)

(assert (=> b!7074148 (=> res!2889368 e!4252995)))

(assert (=> b!7074148 (= res!2889368 (not (set.member lt!2547820 lt!2547810)))))

(declare-fun b!7074149 () Bool)

(assert (=> b!7074149 (= e!4252991 e!4252992)))

(declare-fun res!2889349 () Bool)

(assert (=> b!7074149 (=> res!2889349 e!4252992)))

(assert (=> b!7074149 (= res!2889349 (not (= lt!2547813 lt!2547801)))))

(assert (=> b!7074149 (= lt!2547801 (set.union lt!2547811 lt!2547798))))

(declare-fun lt!2547799 () Context!13300)

(assert (=> b!7074149 (= lt!2547798 (derivationStepZipperUp!2238 lt!2547799 (h!74812 s!7408)))))

(assert (=> b!7074149 (= lt!2547811 (derivationStepZipperDown!2288 (h!74813 (exprs!7150 lt!2547816)) lt!2547799 (h!74812 s!7408)))))

(declare-fun ++!15792 (List!68489 List!68489) List!68489)

(assert (=> b!7074149 (= lt!2547799 (Context!13301 (++!15792 lt!2547793 (exprs!7150 ct2!306))))))

(declare-fun lt!2547826 () Unit!162018)

(assert (=> b!7074149 (= lt!2547826 (lemmaConcatPreservesForall!965 lt!2547793 (exprs!7150 ct2!306) lambda!426185))))

(declare-fun lt!2547807 () Unit!162018)

(assert (=> b!7074149 (= lt!2547807 (lemmaConcatPreservesForall!965 lt!2547793 (exprs!7150 ct2!306) lambda!426185))))

(declare-fun e!4252982 () Bool)

(assert (=> b!7074150 (= e!4252995 e!4252982)))

(declare-fun res!2889348 () Bool)

(assert (=> b!7074150 (=> res!2889348 e!4252982)))

(assert (=> b!7074150 (= res!2889348 (or (not (= lt!2547814 lt!2547820)) (not (set.member lt!2547816 z1!570))))))

(assert (=> b!7074150 (= lt!2547814 (Context!13301 (++!15792 (exprs!7150 lt!2547816) (exprs!7150 ct2!306))))))

(declare-fun lt!2547790 () Unit!162018)

(assert (=> b!7074150 (= lt!2547790 (lemmaConcatPreservesForall!965 (exprs!7150 lt!2547816) (exprs!7150 ct2!306) lambda!426185))))

(declare-fun lambda!426184 () Int)

(declare-fun mapPost2!483 ((Set Context!13300) Int Context!13300) Context!13300)

(assert (=> b!7074150 (= lt!2547816 (mapPost2!483 z1!570 lambda!426184 lt!2547820))))

(declare-fun b!7074151 () Bool)

(declare-fun res!2889373 () Bool)

(assert (=> b!7074151 (=> (not res!2889373) (not e!4252996))))

(assert (=> b!7074151 (= res!2889373 (is-Cons!68364 s!7408))))

(declare-fun b!7074152 () Bool)

(assert (=> b!7074152 (= e!4252985 (not (matchZipper!3194 lt!2547798 (t!382271 s!7408))))))

(declare-fun lt!2547825 () Unit!162018)

(assert (=> b!7074152 (= lt!2547825 (lemmaConcatPreservesForall!965 lt!2547793 (exprs!7150 ct2!306) lambda!426185))))

(declare-fun b!7074153 () Bool)

(assert (=> b!7074153 (= e!4252982 e!4252999)))

(declare-fun res!2889362 () Bool)

(assert (=> b!7074153 (=> res!2889362 e!4252999)))

(assert (=> b!7074153 (= res!2889362 (not (= lt!2547819 lt!2547822)))))

(assert (=> b!7074153 (= lt!2547819 (set.insert lt!2547814 (as set.empty (Set Context!13300))))))

(declare-fun lt!2547831 () Unit!162018)

(assert (=> b!7074153 (= lt!2547831 (lemmaConcatPreservesForall!965 (exprs!7150 lt!2547816) (exprs!7150 ct2!306) lambda!426185))))

(declare-fun b!7074154 () Bool)

(declare-fun res!2889352 () Bool)

(assert (=> b!7074154 (=> res!2889352 e!4252980)))

(declare-fun isEmpty!39901 (List!68489) Bool)

(assert (=> b!7074154 (= res!2889352 (isEmpty!39901 (exprs!7150 lt!2547816)))))

(declare-fun b!7074155 () Bool)

(assert (=> b!7074155 (= e!4252981 e!4252994)))

(declare-fun res!2889360 () Bool)

(assert (=> b!7074155 (=> res!2889360 e!4252994)))

(declare-fun lt!2547841 () (Set Context!13300))

(assert (=> b!7074155 (= res!2889360 (not (= lt!2547828 lt!2547841)))))

(assert (=> b!7074155 (= (flatMap!2580 lt!2547818 lambda!426186) (derivationStepZipperUp!2238 lt!2547816 (h!74812 s!7408)))))

(declare-fun lt!2547827 () Unit!162018)

(assert (=> b!7074155 (= lt!2547827 (lemmaFlatMapOnSingletonSet!2089 lt!2547818 lt!2547816 lambda!426186))))

(assert (=> b!7074155 (= lt!2547841 (derivationStepZipperUp!2238 lt!2547816 (h!74812 s!7408)))))

(assert (=> b!7074155 (= lt!2547828 (derivationStepZipper!3104 lt!2547818 (h!74812 s!7408)))))

(assert (=> b!7074155 (= lt!2547818 (set.insert lt!2547816 (as set.empty (Set Context!13300))))))

(declare-fun b!7074156 () Bool)

(assert (=> b!7074156 (= e!4252984 e!4252989)))

(declare-fun res!2889364 () Bool)

(assert (=> b!7074156 (=> res!2889364 e!4252989)))

(assert (=> b!7074156 (= res!2889364 e!4252997)))

(declare-fun res!2889354 () Bool)

(assert (=> b!7074156 (=> (not res!2889354) (not e!4252997))))

(assert (=> b!7074156 (= res!2889354 (not lt!2547815))))

(assert (=> b!7074156 (= lt!2547815 (matchZipper!3194 lt!2547818 lt!2547823))))

(assert (=> b!7074156 (= lt!2547823 (Cons!68364 (h!74812 s!7408) (_1!37444 lt!2547804)))))

(assert (=> b!7074156 (matchZipper!3194 lt!2547805 (_1!37444 lt!2547804))))

(declare-fun lt!2547809 () Unit!162018)

(assert (=> b!7074156 (= lt!2547809 (lemmaZipperConcatMatchesSameAsBothZippers!1667 lt!2547836 lt!2547840 (_1!37444 lt!2547804)))))

(assert (= (and start!687390 res!2889369) b!7074151))

(assert (= (and b!7074151 res!2889373) b!7074134))

(assert (= (and b!7074134 (not res!2889359)) b!7074148))

(assert (= (and b!7074148 (not res!2889368)) b!7074150))

(assert (= (and b!7074150 (not res!2889348)) b!7074153))

(assert (= (and b!7074153 (not res!2889362)) b!7074145))

(assert (= (and b!7074145 (not res!2889346)) b!7074147))

(assert (= (and b!7074147 (not res!2889347)) b!7074154))

(assert (= (and b!7074154 (not res!2889352)) b!7074135))

(assert (= (and b!7074135 (not res!2889358)) b!7074149))

(assert (= (and b!7074149 (not res!2889349)) b!7074133))

(assert (= (and b!7074133 (not res!2889350)) b!7074126))

(assert (= (and b!7074133 res!2889363) b!7074152))

(assert (= (and b!7074133 (not res!2889351)) b!7074142))

(assert (= (and b!7074142 (not res!2889372)) b!7074139))

(assert (= (and b!7074139 (not res!2889357)) b!7074127))

(assert (= (and b!7074127 (not res!2889371)) b!7074138))

(assert (= (and b!7074138 (not res!2889353)) b!7074144))

(assert (= (and b!7074144 (not res!2889361)) b!7074137))

(assert (= (and b!7074137 (not res!2889355)) b!7074155))

(assert (= (and b!7074155 (not res!2889360)) b!7074130))

(assert (= (and b!7074130 (not res!2889366)) b!7074156))

(assert (= (and b!7074156 res!2889354) b!7074143))

(assert (= (and b!7074156 (not res!2889364)) b!7074136))

(assert (= (and b!7074136 (not res!2889356)) b!7074131))

(assert (= (and b!7074131 (not res!2889367)) b!7074141))

(assert (= (and b!7074141 (not res!2889365)) b!7074146))

(assert (= (and b!7074146 (not res!2889370)) b!7074132))

(assert (= (and start!687390 condSetEmpty!50306) setIsEmpty!50306))

(assert (= (and start!687390 (not condSetEmpty!50306)) setNonEmpty!50306))

(assert (= setNonEmpty!50306 b!7074128))

(assert (= start!687390 b!7074129))

(assert (= (and start!687390 (is-Cons!68364 s!7408)) b!7074140))

(declare-fun m!7801314 () Bool)

(assert (=> b!7074133 m!7801314))

(declare-fun m!7801316 () Bool)

(assert (=> b!7074133 m!7801316))

(declare-fun m!7801318 () Bool)

(assert (=> b!7074133 m!7801318))

(assert (=> b!7074133 m!7801318))

(declare-fun m!7801320 () Bool)

(assert (=> b!7074133 m!7801320))

(assert (=> b!7074133 m!7801318))

(declare-fun m!7801322 () Bool)

(assert (=> b!7074133 m!7801322))

(declare-fun m!7801324 () Bool)

(assert (=> b!7074143 m!7801324))

(declare-fun m!7801326 () Bool)

(assert (=> b!7074144 m!7801326))

(declare-fun m!7801328 () Bool)

(assert (=> b!7074146 m!7801328))

(declare-fun m!7801330 () Bool)

(assert (=> b!7074156 m!7801330))

(declare-fun m!7801332 () Bool)

(assert (=> b!7074156 m!7801332))

(declare-fun m!7801334 () Bool)

(assert (=> b!7074156 m!7801334))

(declare-fun m!7801336 () Bool)

(assert (=> b!7074132 m!7801336))

(declare-fun m!7801338 () Bool)

(assert (=> b!7074155 m!7801338))

(declare-fun m!7801340 () Bool)

(assert (=> b!7074155 m!7801340))

(declare-fun m!7801342 () Bool)

(assert (=> b!7074155 m!7801342))

(declare-fun m!7801344 () Bool)

(assert (=> b!7074155 m!7801344))

(declare-fun m!7801346 () Bool)

(assert (=> b!7074155 m!7801346))

(declare-fun m!7801348 () Bool)

(assert (=> b!7074145 m!7801348))

(declare-fun m!7801350 () Bool)

(assert (=> b!7074145 m!7801350))

(declare-fun m!7801352 () Bool)

(assert (=> b!7074145 m!7801352))

(declare-fun m!7801354 () Bool)

(assert (=> b!7074145 m!7801354))

(declare-fun m!7801356 () Bool)

(assert (=> b!7074145 m!7801356))

(declare-fun m!7801358 () Bool)

(assert (=> b!7074134 m!7801358))

(declare-fun m!7801360 () Bool)

(assert (=> b!7074134 m!7801360))

(declare-fun m!7801362 () Bool)

(assert (=> b!7074134 m!7801362))

(declare-fun m!7801364 () Bool)

(assert (=> b!7074134 m!7801364))

(declare-fun m!7801366 () Bool)

(assert (=> b!7074134 m!7801366))

(declare-fun m!7801368 () Bool)

(assert (=> b!7074134 m!7801368))

(declare-fun m!7801370 () Bool)

(assert (=> start!687390 m!7801370))

(declare-fun m!7801372 () Bool)

(assert (=> start!687390 m!7801372))

(declare-fun m!7801374 () Bool)

(assert (=> start!687390 m!7801374))

(declare-fun m!7801376 () Bool)

(assert (=> setNonEmpty!50306 m!7801376))

(declare-fun m!7801378 () Bool)

(assert (=> b!7074138 m!7801378))

(declare-fun m!7801380 () Bool)

(assert (=> b!7074138 m!7801380))

(declare-fun m!7801382 () Bool)

(assert (=> b!7074138 m!7801382))

(declare-fun m!7801384 () Bool)

(assert (=> b!7074138 m!7801384))

(assert (=> b!7074138 m!7801318))

(assert (=> b!7074138 m!7801318))

(declare-fun m!7801386 () Bool)

(assert (=> b!7074138 m!7801386))

(declare-fun m!7801388 () Bool)

(assert (=> b!7074138 m!7801388))

(declare-fun m!7801390 () Bool)

(assert (=> b!7074138 m!7801390))

(declare-fun m!7801392 () Bool)

(assert (=> b!7074138 m!7801392))

(declare-fun m!7801394 () Bool)

(assert (=> b!7074138 m!7801394))

(assert (=> b!7074127 m!7801318))

(assert (=> b!7074127 m!7801318))

(declare-fun m!7801396 () Bool)

(assert (=> b!7074150 m!7801396))

(declare-fun m!7801398 () Bool)

(assert (=> b!7074150 m!7801398))

(assert (=> b!7074150 m!7801354))

(declare-fun m!7801400 () Bool)

(assert (=> b!7074150 m!7801400))

(assert (=> b!7074149 m!7801318))

(declare-fun m!7801402 () Bool)

(assert (=> b!7074149 m!7801402))

(declare-fun m!7801404 () Bool)

(assert (=> b!7074149 m!7801404))

(assert (=> b!7074149 m!7801318))

(declare-fun m!7801406 () Bool)

(assert (=> b!7074149 m!7801406))

(declare-fun m!7801408 () Bool)

(assert (=> b!7074139 m!7801408))

(assert (=> b!7074139 m!7801318))

(declare-fun m!7801410 () Bool)

(assert (=> b!7074148 m!7801410))

(declare-fun m!7801412 () Bool)

(assert (=> b!7074153 m!7801412))

(assert (=> b!7074153 m!7801354))

(declare-fun m!7801414 () Bool)

(assert (=> b!7074154 m!7801414))

(assert (=> b!7074126 m!7801408))

(declare-fun m!7801416 () Bool)

(assert (=> b!7074137 m!7801416))

(declare-fun m!7801418 () Bool)

(assert (=> b!7074130 m!7801418))

(assert (=> b!7074152 m!7801408))

(assert (=> b!7074152 m!7801318))

(declare-fun m!7801420 () Bool)

(assert (=> b!7074141 m!7801420))

(declare-fun m!7801422 () Bool)

(assert (=> b!7074131 m!7801422))

(declare-fun m!7801424 () Bool)

(assert (=> b!7074131 m!7801424))

(declare-fun m!7801426 () Bool)

(assert (=> b!7074131 m!7801426))

(declare-fun m!7801428 () Bool)

(assert (=> b!7074131 m!7801428))

(declare-fun m!7801430 () Bool)

(assert (=> b!7074131 m!7801430))

(declare-fun m!7801432 () Bool)

(assert (=> b!7074131 m!7801432))

(assert (=> b!7074131 m!7801426))

(declare-fun m!7801434 () Bool)

(assert (=> b!7074131 m!7801434))

(declare-fun m!7801436 () Bool)

(assert (=> b!7074131 m!7801436))

(declare-fun m!7801438 () Bool)

(assert (=> b!7074131 m!7801438))

(declare-fun m!7801440 () Bool)

(assert (=> b!7074131 m!7801440))

(assert (=> b!7074131 m!7801422))

(declare-fun m!7801442 () Bool)

(assert (=> b!7074135 m!7801442))

(declare-fun m!7801444 () Bool)

(assert (=> b!7074135 m!7801444))

(push 1)

(assert (not b!7074155))

(assert (not b!7074152))

(assert tp_is_empty!44533)

(assert (not b!7074141))

(assert (not b!7074134))

(assert (not b!7074153))

(assert (not b!7074144))

(assert (not b!7074154))

(assert (not b!7074127))

(assert (not b!7074135))

(assert (not setNonEmpty!50306))

(assert (not start!687390))

(assert (not b!7074149))

(assert (not b!7074138))

(assert (not b!7074143))

(assert (not b!7074133))

(assert (not b!7074145))

(assert (not b!7074132))

(assert (not b!7074126))

(assert (not b!7074129))

(assert (not b!7074146))

(assert (not b!7074156))

(assert (not b!7074137))

(assert (not b!7074128))

(assert (not b!7074150))

(assert (not b!7074140))

(assert (not b!7074130))

(assert (not b!7074139))

(assert (not b!7074131))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2212301 () Bool)

(declare-fun e!4253065 () Bool)

(assert (=> d!2212301 e!4253065))

(declare-fun res!2889461 () Bool)

(assert (=> d!2212301 (=> (not res!2889461) (not e!4253065))))

(declare-fun lt!2548002 () Context!13300)

(declare-fun dynLambda!27820 (Int Context!13300) Bool)

(assert (=> d!2212301 (= res!2889461 (dynLambda!27820 lambda!426183 lt!2548002))))

(declare-fun getWitness!1763 (List!68490 Int) Context!13300)

(assert (=> d!2212301 (= lt!2548002 (getWitness!1763 (toList!10995 lt!2547810) lambda!426183))))

(assert (=> d!2212301 (exists!3708 lt!2547810 lambda!426183)))

(assert (=> d!2212301 (= (getWitness!1761 lt!2547810 lambda!426183) lt!2548002)))

(declare-fun b!7074264 () Bool)

(assert (=> b!7074264 (= e!4253065 (set.member lt!2548002 lt!2547810))))

(assert (= (and d!2212301 res!2889461) b!7074264))

(declare-fun b_lambda!270095 () Bool)

(assert (=> (not b_lambda!270095) (not d!2212301)))

(declare-fun m!7801578 () Bool)

(assert (=> d!2212301 m!7801578))

(assert (=> d!2212301 m!7801358))

(assert (=> d!2212301 m!7801358))

(declare-fun m!7801580 () Bool)

(assert (=> d!2212301 m!7801580))

(declare-fun m!7801582 () Bool)

(assert (=> d!2212301 m!7801582))

(declare-fun m!7801584 () Bool)

(assert (=> b!7074264 m!7801584))

(assert (=> b!7074134 d!2212301))

(declare-fun bs!1880991 () Bool)

(declare-fun d!2212303 () Bool)

(assert (= bs!1880991 (and d!2212303 b!7074134)))

(declare-fun lambda!426237 () Int)

(assert (=> bs!1880991 (= lambda!426237 lambda!426183)))

(declare-fun bs!1880992 () Bool)

(assert (= bs!1880992 (and d!2212303 b!7074131)))

(assert (=> bs!1880992 (= (= s!7408 lt!2547823) (= lambda!426237 lambda!426187))))

(assert (=> d!2212303 true))

(assert (=> d!2212303 (exists!3709 lt!2547817 lambda!426237)))

(declare-fun lt!2548005 () Unit!162018)

(declare-fun choose!54267 (List!68490 List!68488) Unit!162018)

(assert (=> d!2212303 (= lt!2548005 (choose!54267 lt!2547817 s!7408))))

(assert (=> d!2212303 (matchZipper!3194 (content!13809 lt!2547817) s!7408)))

(assert (=> d!2212303 (= (lemmaZipperMatchesExistsMatchingContext!575 lt!2547817 s!7408) lt!2548005)))

(declare-fun bs!1880993 () Bool)

(assert (= bs!1880993 d!2212303))

(declare-fun m!7801586 () Bool)

(assert (=> bs!1880993 m!7801586))

(declare-fun m!7801588 () Bool)

(assert (=> bs!1880993 m!7801588))

(declare-fun m!7801590 () Bool)

(assert (=> bs!1880993 m!7801590))

(assert (=> bs!1880993 m!7801590))

(declare-fun m!7801592 () Bool)

(assert (=> bs!1880993 m!7801592))

(assert (=> b!7074134 d!2212303))

(declare-fun d!2212305 () Bool)

(declare-fun e!4253068 () Bool)

(assert (=> d!2212305 e!4253068))

(declare-fun res!2889464 () Bool)

(assert (=> d!2212305 (=> (not res!2889464) (not e!4253068))))

(declare-fun lt!2548008 () List!68490)

(declare-fun noDuplicate!2733 (List!68490) Bool)

(assert (=> d!2212305 (= res!2889464 (noDuplicate!2733 lt!2548008))))

(declare-fun choose!54268 ((Set Context!13300)) List!68490)

(assert (=> d!2212305 (= lt!2548008 (choose!54268 lt!2547810))))

(assert (=> d!2212305 (= (toList!10995 lt!2547810) lt!2548008)))

(declare-fun b!7074267 () Bool)

(assert (=> b!7074267 (= e!4253068 (= (content!13809 lt!2548008) lt!2547810))))

(assert (= (and d!2212305 res!2889464) b!7074267))

(declare-fun m!7801594 () Bool)

(assert (=> d!2212305 m!7801594))

(declare-fun m!7801596 () Bool)

(assert (=> d!2212305 m!7801596))

(declare-fun m!7801598 () Bool)

(assert (=> b!7074267 m!7801598))

(assert (=> b!7074134 d!2212305))

(declare-fun bs!1880994 () Bool)

(declare-fun d!2212307 () Bool)

(assert (= bs!1880994 (and d!2212307 b!7074134)))

(declare-fun lambda!426240 () Int)

(assert (=> bs!1880994 (not (= lambda!426240 lambda!426183))))

(declare-fun bs!1880995 () Bool)

(assert (= bs!1880995 (and d!2212307 b!7074131)))

(assert (=> bs!1880995 (not (= lambda!426240 lambda!426187))))

(declare-fun bs!1880996 () Bool)

(assert (= bs!1880996 (and d!2212307 d!2212303)))

(assert (=> bs!1880996 (not (= lambda!426240 lambda!426237))))

(assert (=> d!2212307 true))

(declare-fun order!28419 () Int)

(declare-fun dynLambda!27821 (Int Int) Int)

(assert (=> d!2212307 (< (dynLambda!27821 order!28419 lambda!426183) (dynLambda!27821 order!28419 lambda!426240))))

(declare-fun forall!16608 (List!68490 Int) Bool)

(assert (=> d!2212307 (= (exists!3709 lt!2547817 lambda!426183) (not (forall!16608 lt!2547817 lambda!426240)))))

(declare-fun bs!1880997 () Bool)

(assert (= bs!1880997 d!2212307))

(declare-fun m!7801600 () Bool)

(assert (=> bs!1880997 m!7801600))

(assert (=> b!7074134 d!2212307))

(declare-fun d!2212309 () Bool)

(declare-fun c!1319744 () Bool)

(declare-fun isEmpty!39903 (List!68488) Bool)

(assert (=> d!2212309 (= c!1319744 (isEmpty!39903 s!7408))))

(declare-fun e!4253071 () Bool)

(assert (=> d!2212309 (= (matchZipper!3194 lt!2547822 s!7408) e!4253071)))

(declare-fun b!7074274 () Bool)

(declare-fun nullableZipper!2705 ((Set Context!13300)) Bool)

(assert (=> b!7074274 (= e!4253071 (nullableZipper!2705 lt!2547822))))

(declare-fun b!7074275 () Bool)

(declare-fun head!14413 (List!68488) C!35578)

(declare-fun tail!13845 (List!68488) List!68488)

(assert (=> b!7074275 (= e!4253071 (matchZipper!3194 (derivationStepZipper!3104 lt!2547822 (head!14413 s!7408)) (tail!13845 s!7408)))))

(assert (= (and d!2212309 c!1319744) b!7074274))

(assert (= (and d!2212309 (not c!1319744)) b!7074275))

(declare-fun m!7801602 () Bool)

(assert (=> d!2212309 m!7801602))

(declare-fun m!7801604 () Bool)

(assert (=> b!7074274 m!7801604))

(declare-fun m!7801606 () Bool)

(assert (=> b!7074275 m!7801606))

(assert (=> b!7074275 m!7801606))

(declare-fun m!7801608 () Bool)

(assert (=> b!7074275 m!7801608))

(declare-fun m!7801610 () Bool)

(assert (=> b!7074275 m!7801610))

(assert (=> b!7074275 m!7801608))

(assert (=> b!7074275 m!7801610))

(declare-fun m!7801612 () Bool)

(assert (=> b!7074275 m!7801612))

(assert (=> b!7074134 d!2212309))

(declare-fun d!2212311 () Bool)

(declare-fun forall!16609 (List!68489 Int) Bool)

(assert (=> d!2212311 (forall!16609 (++!15792 (exprs!7150 lt!2547816) (exprs!7150 ct2!306)) lambda!426185)))

(declare-fun lt!2548011 () Unit!162018)

(declare-fun choose!54269 (List!68489 List!68489 Int) Unit!162018)

(assert (=> d!2212311 (= lt!2548011 (choose!54269 (exprs!7150 lt!2547816) (exprs!7150 ct2!306) lambda!426185))))

(assert (=> d!2212311 (forall!16609 (exprs!7150 lt!2547816) lambda!426185)))

(assert (=> d!2212311 (= (lemmaConcatPreservesForall!965 (exprs!7150 lt!2547816) (exprs!7150 ct2!306) lambda!426185) lt!2548011)))

(declare-fun bs!1880998 () Bool)

(assert (= bs!1880998 d!2212311))

(assert (=> bs!1880998 m!7801398))

(assert (=> bs!1880998 m!7801398))

(declare-fun m!7801614 () Bool)

(assert (=> bs!1880998 m!7801614))

(declare-fun m!7801616 () Bool)

(assert (=> bs!1880998 m!7801616))

(declare-fun m!7801618 () Bool)

(assert (=> bs!1880998 m!7801618))

(assert (=> b!7074153 d!2212311))

(declare-fun d!2212313 () Bool)

(declare-fun c!1319745 () Bool)

(assert (=> d!2212313 (= c!1319745 (isEmpty!39903 (t!382271 s!7408)))))

(declare-fun e!4253072 () Bool)

(assert (=> d!2212313 (= (matchZipper!3194 lt!2547813 (t!382271 s!7408)) e!4253072)))

(declare-fun b!7074276 () Bool)

(assert (=> b!7074276 (= e!4253072 (nullableZipper!2705 lt!2547813))))

(declare-fun b!7074277 () Bool)

(assert (=> b!7074277 (= e!4253072 (matchZipper!3194 (derivationStepZipper!3104 lt!2547813 (head!14413 (t!382271 s!7408))) (tail!13845 (t!382271 s!7408))))))

(assert (= (and d!2212313 c!1319745) b!7074276))

(assert (= (and d!2212313 (not c!1319745)) b!7074277))

(declare-fun m!7801620 () Bool)

(assert (=> d!2212313 m!7801620))

(declare-fun m!7801622 () Bool)

(assert (=> b!7074276 m!7801622))

(declare-fun m!7801624 () Bool)

(assert (=> b!7074277 m!7801624))

(assert (=> b!7074277 m!7801624))

(declare-fun m!7801626 () Bool)

(assert (=> b!7074277 m!7801626))

(declare-fun m!7801628 () Bool)

(assert (=> b!7074277 m!7801628))

(assert (=> b!7074277 m!7801626))

(assert (=> b!7074277 m!7801628))

(declare-fun m!7801630 () Bool)

(assert (=> b!7074277 m!7801630))

(assert (=> b!7074133 d!2212313))

(declare-fun d!2212315 () Bool)

(declare-fun e!4253075 () Bool)

(assert (=> d!2212315 (= (matchZipper!3194 (set.union lt!2547811 lt!2547798) (t!382271 s!7408)) e!4253075)))

(declare-fun res!2889467 () Bool)

(assert (=> d!2212315 (=> res!2889467 e!4253075)))

(assert (=> d!2212315 (= res!2889467 (matchZipper!3194 lt!2547811 (t!382271 s!7408)))))

(declare-fun lt!2548014 () Unit!162018)

(declare-fun choose!54270 ((Set Context!13300) (Set Context!13300) List!68488) Unit!162018)

(assert (=> d!2212315 (= lt!2548014 (choose!54270 lt!2547811 lt!2547798 (t!382271 s!7408)))))

(assert (=> d!2212315 (= (lemmaZipperConcatMatchesSameAsBothZippers!1667 lt!2547811 lt!2547798 (t!382271 s!7408)) lt!2548014)))

(declare-fun b!7074280 () Bool)

(assert (=> b!7074280 (= e!4253075 (matchZipper!3194 lt!2547798 (t!382271 s!7408)))))

(assert (= (and d!2212315 (not res!2889467)) b!7074280))

(declare-fun m!7801632 () Bool)

(assert (=> d!2212315 m!7801632))

(assert (=> d!2212315 m!7801320))

(declare-fun m!7801634 () Bool)

(assert (=> d!2212315 m!7801634))

(assert (=> b!7074280 m!7801408))

(assert (=> b!7074133 d!2212315))

(declare-fun d!2212317 () Bool)

(declare-fun c!1319746 () Bool)

(assert (=> d!2212317 (= c!1319746 (isEmpty!39903 (t!382271 s!7408)))))

(declare-fun e!4253076 () Bool)

(assert (=> d!2212317 (= (matchZipper!3194 lt!2547801 (t!382271 s!7408)) e!4253076)))

(declare-fun b!7074281 () Bool)

(assert (=> b!7074281 (= e!4253076 (nullableZipper!2705 lt!2547801))))

(declare-fun b!7074282 () Bool)

(assert (=> b!7074282 (= e!4253076 (matchZipper!3194 (derivationStepZipper!3104 lt!2547801 (head!14413 (t!382271 s!7408))) (tail!13845 (t!382271 s!7408))))))

(assert (= (and d!2212317 c!1319746) b!7074281))

(assert (= (and d!2212317 (not c!1319746)) b!7074282))

(assert (=> d!2212317 m!7801620))

(declare-fun m!7801636 () Bool)

(assert (=> b!7074281 m!7801636))

(assert (=> b!7074282 m!7801624))

(assert (=> b!7074282 m!7801624))

(declare-fun m!7801638 () Bool)

(assert (=> b!7074282 m!7801638))

(assert (=> b!7074282 m!7801628))

(assert (=> b!7074282 m!7801638))

(assert (=> b!7074282 m!7801628))

(declare-fun m!7801640 () Bool)

(assert (=> b!7074282 m!7801640))

(assert (=> b!7074133 d!2212317))

(declare-fun d!2212319 () Bool)

(assert (=> d!2212319 (forall!16609 (++!15792 lt!2547793 (exprs!7150 ct2!306)) lambda!426185)))

(declare-fun lt!2548015 () Unit!162018)

(assert (=> d!2212319 (= lt!2548015 (choose!54269 lt!2547793 (exprs!7150 ct2!306) lambda!426185))))

(assert (=> d!2212319 (forall!16609 lt!2547793 lambda!426185)))

(assert (=> d!2212319 (= (lemmaConcatPreservesForall!965 lt!2547793 (exprs!7150 ct2!306) lambda!426185) lt!2548015)))

(declare-fun bs!1880999 () Bool)

(assert (= bs!1880999 d!2212319))

(assert (=> bs!1880999 m!7801404))

(assert (=> bs!1880999 m!7801404))

(declare-fun m!7801642 () Bool)

(assert (=> bs!1880999 m!7801642))

(declare-fun m!7801644 () Bool)

(assert (=> bs!1880999 m!7801644))

(declare-fun m!7801646 () Bool)

(assert (=> bs!1880999 m!7801646))

(assert (=> b!7074133 d!2212319))

(declare-fun d!2212321 () Bool)

(declare-fun c!1319747 () Bool)

(assert (=> d!2212321 (= c!1319747 (isEmpty!39903 (t!382271 s!7408)))))

(declare-fun e!4253077 () Bool)

(assert (=> d!2212321 (= (matchZipper!3194 lt!2547811 (t!382271 s!7408)) e!4253077)))

(declare-fun b!7074283 () Bool)

(assert (=> b!7074283 (= e!4253077 (nullableZipper!2705 lt!2547811))))

(declare-fun b!7074284 () Bool)

(assert (=> b!7074284 (= e!4253077 (matchZipper!3194 (derivationStepZipper!3104 lt!2547811 (head!14413 (t!382271 s!7408))) (tail!13845 (t!382271 s!7408))))))

(assert (= (and d!2212321 c!1319747) b!7074283))

(assert (= (and d!2212321 (not c!1319747)) b!7074284))

(assert (=> d!2212321 m!7801620))

(declare-fun m!7801648 () Bool)

(assert (=> b!7074283 m!7801648))

(assert (=> b!7074284 m!7801624))

(assert (=> b!7074284 m!7801624))

(declare-fun m!7801650 () Bool)

(assert (=> b!7074284 m!7801650))

(assert (=> b!7074284 m!7801628))

(assert (=> b!7074284 m!7801650))

(assert (=> b!7074284 m!7801628))

(declare-fun m!7801652 () Bool)

(assert (=> b!7074284 m!7801652))

(assert (=> b!7074133 d!2212321))

(declare-fun d!2212323 () Bool)

(declare-fun c!1319748 () Bool)

(assert (=> d!2212323 (= c!1319748 (isEmpty!39903 (t!382271 s!7408)))))

(declare-fun e!4253078 () Bool)

(assert (=> d!2212323 (= (matchZipper!3194 lt!2547798 (t!382271 s!7408)) e!4253078)))

(declare-fun b!7074285 () Bool)

(assert (=> b!7074285 (= e!4253078 (nullableZipper!2705 lt!2547798))))

(declare-fun b!7074286 () Bool)

(assert (=> b!7074286 (= e!4253078 (matchZipper!3194 (derivationStepZipper!3104 lt!2547798 (head!14413 (t!382271 s!7408))) (tail!13845 (t!382271 s!7408))))))

(assert (= (and d!2212323 c!1319748) b!7074285))

(assert (= (and d!2212323 (not c!1319748)) b!7074286))

(assert (=> d!2212323 m!7801620))

(declare-fun m!7801654 () Bool)

(assert (=> b!7074285 m!7801654))

(assert (=> b!7074286 m!7801624))

(assert (=> b!7074286 m!7801624))

(declare-fun m!7801656 () Bool)

(assert (=> b!7074286 m!7801656))

(assert (=> b!7074286 m!7801628))

(assert (=> b!7074286 m!7801656))

(assert (=> b!7074286 m!7801628))

(declare-fun m!7801658 () Bool)

(assert (=> b!7074286 m!7801658))

(assert (=> b!7074152 d!2212323))

(assert (=> b!7074152 d!2212319))

(declare-fun b!7074296 () Bool)

(declare-fun e!4253084 () List!68488)

(assert (=> b!7074296 (= e!4253084 (Cons!68364 (h!74812 Nil!68364) (++!15791 (t!382271 Nil!68364) s!7408)))))

(declare-fun b!7074297 () Bool)

(declare-fun res!2889472 () Bool)

(declare-fun e!4253083 () Bool)

(assert (=> b!7074297 (=> (not res!2889472) (not e!4253083))))

(declare-fun lt!2548018 () List!68488)

(declare-fun size!41223 (List!68488) Int)

(assert (=> b!7074297 (= res!2889472 (= (size!41223 lt!2548018) (+ (size!41223 Nil!68364) (size!41223 s!7408))))))

(declare-fun d!2212325 () Bool)

(assert (=> d!2212325 e!4253083))

(declare-fun res!2889473 () Bool)

(assert (=> d!2212325 (=> (not res!2889473) (not e!4253083))))

(declare-fun content!13811 (List!68488) (Set C!35578))

(assert (=> d!2212325 (= res!2889473 (= (content!13811 lt!2548018) (set.union (content!13811 Nil!68364) (content!13811 s!7408))))))

(assert (=> d!2212325 (= lt!2548018 e!4253084)))

(declare-fun c!1319751 () Bool)

(assert (=> d!2212325 (= c!1319751 (is-Nil!68364 Nil!68364))))

(assert (=> d!2212325 (= (++!15791 Nil!68364 s!7408) lt!2548018)))

(declare-fun b!7074295 () Bool)

(assert (=> b!7074295 (= e!4253084 s!7408)))

(declare-fun b!7074298 () Bool)

(assert (=> b!7074298 (= e!4253083 (or (not (= s!7408 Nil!68364)) (= lt!2548018 Nil!68364)))))

(assert (= (and d!2212325 c!1319751) b!7074295))

(assert (= (and d!2212325 (not c!1319751)) b!7074296))

(assert (= (and d!2212325 res!2889473) b!7074297))

(assert (= (and b!7074297 res!2889472) b!7074298))

(declare-fun m!7801660 () Bool)

(assert (=> b!7074296 m!7801660))

(declare-fun m!7801662 () Bool)

(assert (=> b!7074297 m!7801662))

(declare-fun m!7801664 () Bool)

(assert (=> b!7074297 m!7801664))

(declare-fun m!7801666 () Bool)

(assert (=> b!7074297 m!7801666))

(declare-fun m!7801668 () Bool)

(assert (=> d!2212325 m!7801668))

(declare-fun m!7801670 () Bool)

(assert (=> d!2212325 m!7801670))

(declare-fun m!7801672 () Bool)

(assert (=> d!2212325 m!7801672))

(assert (=> b!7074132 d!2212325))

(declare-fun d!2212327 () Bool)

(declare-fun c!1319752 () Bool)

(assert (=> d!2212327 (= c!1319752 (isEmpty!39903 lt!2547823))))

(declare-fun e!4253085 () Bool)

(assert (=> d!2212327 (= (matchZipper!3194 (content!13809 lt!2547808) lt!2547823) e!4253085)))

(declare-fun b!7074299 () Bool)

(assert (=> b!7074299 (= e!4253085 (nullableZipper!2705 (content!13809 lt!2547808)))))

(declare-fun b!7074300 () Bool)

(assert (=> b!7074300 (= e!4253085 (matchZipper!3194 (derivationStepZipper!3104 (content!13809 lt!2547808) (head!14413 lt!2547823)) (tail!13845 lt!2547823)))))

(assert (= (and d!2212327 c!1319752) b!7074299))

(assert (= (and d!2212327 (not c!1319752)) b!7074300))

(declare-fun m!7801674 () Bool)

(assert (=> d!2212327 m!7801674))

(assert (=> b!7074299 m!7801422))

(declare-fun m!7801676 () Bool)

(assert (=> b!7074299 m!7801676))

(declare-fun m!7801678 () Bool)

(assert (=> b!7074300 m!7801678))

(assert (=> b!7074300 m!7801422))

(assert (=> b!7074300 m!7801678))

(declare-fun m!7801680 () Bool)

(assert (=> b!7074300 m!7801680))

(declare-fun m!7801682 () Bool)

(assert (=> b!7074300 m!7801682))

(assert (=> b!7074300 m!7801680))

(assert (=> b!7074300 m!7801682))

(declare-fun m!7801684 () Bool)

(assert (=> b!7074300 m!7801684))

(assert (=> b!7074131 d!2212327))

(declare-fun b!7074319 () Bool)

(declare-fun res!2889485 () Bool)

(declare-fun e!4253099 () Bool)

(assert (=> b!7074319 (=> (not res!2889485) (not e!4253099))))

(declare-fun lt!2548026 () Option!16973)

(assert (=> b!7074319 (= res!2889485 (matchZipper!3194 lt!2547818 (_1!37444 (get!23951 lt!2548026))))))

(declare-fun b!7074320 () Bool)

(declare-fun e!4253097 () Option!16973)

(assert (=> b!7074320 (= e!4253097 (Some!16972 (tuple2!68283 Nil!68364 s!7408)))))

(declare-fun b!7074321 () Bool)

(assert (=> b!7074321 (= e!4253099 (= (++!15791 (_1!37444 (get!23951 lt!2548026)) (_2!37444 (get!23951 lt!2548026))) s!7408))))

(declare-fun b!7074322 () Bool)

(declare-fun e!4253098 () Bool)

(assert (=> b!7074322 (= e!4253098 (not (isDefined!13674 lt!2548026)))))

(declare-fun b!7074324 () Bool)

(declare-fun res!2889487 () Bool)

(assert (=> b!7074324 (=> (not res!2889487) (not e!4253099))))

(assert (=> b!7074324 (= res!2889487 (matchZipper!3194 lt!2547796 (_2!37444 (get!23951 lt!2548026))))))

(declare-fun b!7074325 () Bool)

(declare-fun e!4253100 () Option!16973)

(assert (=> b!7074325 (= e!4253100 None!16972)))

(declare-fun b!7074326 () Bool)

(assert (=> b!7074326 (= e!4253097 e!4253100)))

(declare-fun c!1319758 () Bool)

(assert (=> b!7074326 (= c!1319758 (is-Nil!68364 s!7408))))

(declare-fun b!7074327 () Bool)

(declare-fun lt!2548027 () Unit!162018)

(declare-fun lt!2548025 () Unit!162018)

(assert (=> b!7074327 (= lt!2548027 lt!2548025)))

(assert (=> b!7074327 (= (++!15791 (++!15791 Nil!68364 (Cons!68364 (h!74812 s!7408) Nil!68364)) (t!382271 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2979 (List!68488 C!35578 List!68488 List!68488) Unit!162018)

(assert (=> b!7074327 (= lt!2548025 (lemmaMoveElementToOtherListKeepsConcatEq!2979 Nil!68364 (h!74812 s!7408) (t!382271 s!7408) s!7408))))

(assert (=> b!7074327 (= e!4253100 (findConcatSeparationZippers!489 lt!2547818 lt!2547796 (++!15791 Nil!68364 (Cons!68364 (h!74812 s!7408) Nil!68364)) (t!382271 s!7408) s!7408))))

(declare-fun b!7074323 () Bool)

(declare-fun e!4253096 () Bool)

(assert (=> b!7074323 (= e!4253096 (matchZipper!3194 lt!2547796 s!7408))))

(declare-fun d!2212329 () Bool)

(assert (=> d!2212329 e!4253098))

(declare-fun res!2889484 () Bool)

(assert (=> d!2212329 (=> res!2889484 e!4253098)))

(assert (=> d!2212329 (= res!2889484 e!4253099)))

(declare-fun res!2889488 () Bool)

(assert (=> d!2212329 (=> (not res!2889488) (not e!4253099))))

(assert (=> d!2212329 (= res!2889488 (isDefined!13674 lt!2548026))))

(assert (=> d!2212329 (= lt!2548026 e!4253097)))

(declare-fun c!1319757 () Bool)

(assert (=> d!2212329 (= c!1319757 e!4253096)))

(declare-fun res!2889486 () Bool)

(assert (=> d!2212329 (=> (not res!2889486) (not e!4253096))))

(assert (=> d!2212329 (= res!2889486 (matchZipper!3194 lt!2547818 Nil!68364))))

(assert (=> d!2212329 (= (++!15791 Nil!68364 s!7408) s!7408)))

(assert (=> d!2212329 (= (findConcatSeparationZippers!489 lt!2547818 lt!2547796 Nil!68364 s!7408 s!7408) lt!2548026)))

(assert (= (and d!2212329 res!2889486) b!7074323))

(assert (= (and d!2212329 c!1319757) b!7074320))

(assert (= (and d!2212329 (not c!1319757)) b!7074326))

(assert (= (and b!7074326 c!1319758) b!7074325))

(assert (= (and b!7074326 (not c!1319758)) b!7074327))

(assert (= (and d!2212329 res!2889488) b!7074319))

(assert (= (and b!7074319 res!2889485) b!7074324))

(assert (= (and b!7074324 res!2889487) b!7074321))

(assert (= (and d!2212329 (not res!2889484)) b!7074322))

(declare-fun m!7801686 () Bool)

(assert (=> b!7074324 m!7801686))

(declare-fun m!7801688 () Bool)

(assert (=> b!7074324 m!7801688))

(declare-fun m!7801690 () Bool)

(assert (=> b!7074322 m!7801690))

(assert (=> b!7074319 m!7801686))

(declare-fun m!7801692 () Bool)

(assert (=> b!7074319 m!7801692))

(assert (=> b!7074321 m!7801686))

(declare-fun m!7801694 () Bool)

(assert (=> b!7074321 m!7801694))

(assert (=> d!2212329 m!7801690))

(declare-fun m!7801696 () Bool)

(assert (=> d!2212329 m!7801696))

(assert (=> d!2212329 m!7801336))

(declare-fun m!7801698 () Bool)

(assert (=> b!7074323 m!7801698))

(declare-fun m!7801700 () Bool)

(assert (=> b!7074327 m!7801700))

(assert (=> b!7074327 m!7801700))

(declare-fun m!7801702 () Bool)

(assert (=> b!7074327 m!7801702))

(declare-fun m!7801704 () Bool)

(assert (=> b!7074327 m!7801704))

(assert (=> b!7074327 m!7801700))

(declare-fun m!7801706 () Bool)

(assert (=> b!7074327 m!7801706))

(assert (=> b!7074131 d!2212329))

(declare-fun d!2212331 () Bool)

(assert (=> d!2212331 (exists!3708 z1!570 lambda!426187)))

(declare-fun lt!2548030 () Unit!162018)

(declare-fun choose!54271 ((Set Context!13300) Context!13300 Int) Unit!162018)

(assert (=> d!2212331 (= lt!2548030 (choose!54271 z1!570 lt!2547816 lambda!426187))))

(assert (=> d!2212331 (set.member lt!2547816 z1!570)))

(assert (=> d!2212331 (= (lemmaContainsThenExists!162 z1!570 lt!2547816 lambda!426187) lt!2548030)))

(declare-fun bs!1881000 () Bool)

(assert (= bs!1881000 d!2212331))

(assert (=> bs!1881000 m!7801436))

(declare-fun m!7801708 () Bool)

(assert (=> bs!1881000 m!7801708))

(assert (=> bs!1881000 m!7801396))

(assert (=> b!7074131 d!2212331))

(declare-fun d!2212333 () Bool)

(declare-fun lt!2548033 () Bool)

(assert (=> d!2212333 (= lt!2548033 (exists!3709 (toList!10995 z1!570) lambda!426187))))

(declare-fun choose!54272 ((Set Context!13300) Int) Bool)

(assert (=> d!2212333 (= lt!2548033 (choose!54272 z1!570 lambda!426187))))

(assert (=> d!2212333 (= (exists!3708 z1!570 lambda!426187) lt!2548033)))

(declare-fun bs!1881001 () Bool)

(assert (= bs!1881001 d!2212333))

(assert (=> bs!1881001 m!7801430))

(assert (=> bs!1881001 m!7801430))

(declare-fun m!7801710 () Bool)

(assert (=> bs!1881001 m!7801710))

(declare-fun m!7801712 () Bool)

(assert (=> bs!1881001 m!7801712))

(assert (=> b!7074131 d!2212333))

(declare-fun d!2212335 () Bool)

(declare-fun e!4253102 () Bool)

(assert (=> d!2212335 e!4253102))

(declare-fun res!2889489 () Bool)

(assert (=> d!2212335 (=> (not res!2889489) (not e!4253102))))

(declare-fun lt!2548034 () List!68490)

(assert (=> d!2212335 (= res!2889489 (noDuplicate!2733 lt!2548034))))

(assert (=> d!2212335 (= lt!2548034 (choose!54268 z1!570))))

(assert (=> d!2212335 (= (toList!10995 z1!570) lt!2548034)))

(declare-fun b!7074328 () Bool)

(assert (=> b!7074328 (= e!4253102 (= (content!13809 lt!2548034) z1!570))))

(assert (= (and d!2212335 res!2889489) b!7074328))

(declare-fun m!7801714 () Bool)

(assert (=> d!2212335 m!7801714))

(declare-fun m!7801716 () Bool)

(assert (=> d!2212335 m!7801716))

(declare-fun m!7801718 () Bool)

(assert (=> b!7074328 m!7801718))

(assert (=> b!7074131 d!2212335))

(declare-fun d!2212337 () Bool)

(assert (=> d!2212337 (isDefined!13674 (findConcatSeparationZippers!489 lt!2547818 lt!2547796 Nil!68364 s!7408 s!7408))))

(declare-fun lt!2548037 () Unit!162018)

(declare-fun choose!54273 ((Set Context!13300) (Set Context!13300) List!68488 List!68488 List!68488 List!68488 List!68488) Unit!162018)

(assert (=> d!2212337 (= lt!2548037 (choose!54273 lt!2547818 lt!2547796 lt!2547823 (_2!37444 lt!2547804) s!7408 Nil!68364 s!7408))))

(assert (=> d!2212337 (matchZipper!3194 lt!2547818 lt!2547823)))

(assert (=> d!2212337 (= (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!81 lt!2547818 lt!2547796 lt!2547823 (_2!37444 lt!2547804) s!7408 Nil!68364 s!7408) lt!2548037)))

(declare-fun bs!1881002 () Bool)

(assert (= bs!1881002 d!2212337))

(assert (=> bs!1881002 m!7801426))

(assert (=> bs!1881002 m!7801426))

(assert (=> bs!1881002 m!7801428))

(declare-fun m!7801720 () Bool)

(assert (=> bs!1881002 m!7801720))

(assert (=> bs!1881002 m!7801330))

(assert (=> b!7074131 d!2212337))

(declare-fun d!2212339 () Bool)

(declare-fun isEmpty!39904 (Option!16973) Bool)

(assert (=> d!2212339 (= (isDefined!13674 (findConcatSeparationZippers!489 lt!2547818 lt!2547796 Nil!68364 s!7408 s!7408)) (not (isEmpty!39904 (findConcatSeparationZippers!489 lt!2547818 lt!2547796 Nil!68364 s!7408 s!7408))))))

(declare-fun bs!1881003 () Bool)

(assert (= bs!1881003 d!2212339))

(assert (=> bs!1881003 m!7801426))

(declare-fun m!7801722 () Bool)

(assert (=> bs!1881003 m!7801722))

(assert (=> b!7074131 d!2212339))

(declare-fun d!2212341 () Bool)

(declare-fun c!1319759 () Bool)

(assert (=> d!2212341 (= c!1319759 (isEmpty!39903 lt!2547823))))

(declare-fun e!4253103 () Bool)

(assert (=> d!2212341 (= (matchZipper!3194 z1!570 lt!2547823) e!4253103)))

(declare-fun b!7074329 () Bool)

(assert (=> b!7074329 (= e!4253103 (nullableZipper!2705 z1!570))))

(declare-fun b!7074330 () Bool)

(assert (=> b!7074330 (= e!4253103 (matchZipper!3194 (derivationStepZipper!3104 z1!570 (head!14413 lt!2547823)) (tail!13845 lt!2547823)))))

(assert (= (and d!2212341 c!1319759) b!7074329))

(assert (= (and d!2212341 (not c!1319759)) b!7074330))

(assert (=> d!2212341 m!7801674))

(declare-fun m!7801724 () Bool)

(assert (=> b!7074329 m!7801724))

(assert (=> b!7074330 m!7801678))

(assert (=> b!7074330 m!7801678))

(declare-fun m!7801726 () Bool)

(assert (=> b!7074330 m!7801726))

(assert (=> b!7074330 m!7801682))

(assert (=> b!7074330 m!7801726))

(assert (=> b!7074330 m!7801682))

(declare-fun m!7801728 () Bool)

(assert (=> b!7074330 m!7801728))

(assert (=> b!7074131 d!2212341))

(declare-fun d!2212343 () Bool)

(declare-fun c!1319762 () Bool)

(assert (=> d!2212343 (= c!1319762 (is-Nil!68366 lt!2547808))))

(declare-fun e!4253106 () (Set Context!13300))

(assert (=> d!2212343 (= (content!13809 lt!2547808) e!4253106)))

(declare-fun b!7074335 () Bool)

(assert (=> b!7074335 (= e!4253106 (as set.empty (Set Context!13300)))))

(declare-fun b!7074336 () Bool)

(assert (=> b!7074336 (= e!4253106 (set.union (set.insert (h!74814 lt!2547808) (as set.empty (Set Context!13300))) (content!13809 (t!382273 lt!2547808))))))

(assert (= (and d!2212343 c!1319762) b!7074335))

(assert (= (and d!2212343 (not c!1319762)) b!7074336))

(declare-fun m!7801730 () Bool)

(assert (=> b!7074336 m!7801730))

(declare-fun m!7801732 () Bool)

(assert (=> b!7074336 m!7801732))

(assert (=> b!7074131 d!2212343))

(declare-fun bs!1881004 () Bool)

(declare-fun d!2212345 () Bool)

(assert (= bs!1881004 (and d!2212345 b!7074134)))

(declare-fun lambda!426243 () Int)

(assert (=> bs!1881004 (= (= lt!2547823 s!7408) (= lambda!426243 lambda!426183))))

(declare-fun bs!1881005 () Bool)

(assert (= bs!1881005 (and d!2212345 b!7074131)))

(assert (=> bs!1881005 (= lambda!426243 lambda!426187)))

(declare-fun bs!1881006 () Bool)

(assert (= bs!1881006 (and d!2212345 d!2212303)))

(assert (=> bs!1881006 (= (= lt!2547823 s!7408) (= lambda!426243 lambda!426237))))

(declare-fun bs!1881007 () Bool)

(assert (= bs!1881007 (and d!2212345 d!2212307)))

(assert (=> bs!1881007 (not (= lambda!426243 lambda!426240))))

(assert (=> d!2212345 true))

(assert (=> d!2212345 (matchZipper!3194 (content!13809 lt!2547808) lt!2547823)))

(declare-fun lt!2548040 () Unit!162018)

(declare-fun choose!54274 (List!68490 List!68488) Unit!162018)

(assert (=> d!2212345 (= lt!2548040 (choose!54274 lt!2547808 lt!2547823))))

(assert (=> d!2212345 (exists!3709 lt!2547808 lambda!426243)))

(assert (=> d!2212345 (= (lemmaExistsMatchingContextThenMatchingString!57 lt!2547808 lt!2547823) lt!2548040)))

(declare-fun bs!1881008 () Bool)

(assert (= bs!1881008 d!2212345))

(assert (=> bs!1881008 m!7801422))

(assert (=> bs!1881008 m!7801422))

(assert (=> bs!1881008 m!7801424))

(declare-fun m!7801734 () Bool)

(assert (=> bs!1881008 m!7801734))

(declare-fun m!7801736 () Bool)

(assert (=> bs!1881008 m!7801736))

(assert (=> b!7074131 d!2212345))

(declare-fun b!7074346 () Bool)

(declare-fun e!4253112 () List!68489)

(assert (=> b!7074346 (= e!4253112 (Cons!68365 (h!74813 (exprs!7150 lt!2547816)) (++!15792 (t!382272 (exprs!7150 lt!2547816)) (exprs!7150 ct2!306))))))

(declare-fun d!2212347 () Bool)

(declare-fun e!4253111 () Bool)

(assert (=> d!2212347 e!4253111))

(declare-fun res!2889495 () Bool)

(assert (=> d!2212347 (=> (not res!2889495) (not e!4253111))))

(declare-fun lt!2548043 () List!68489)

(declare-fun content!13812 (List!68489) (Set Regex!17654))

(assert (=> d!2212347 (= res!2889495 (= (content!13812 lt!2548043) (set.union (content!13812 (exprs!7150 lt!2547816)) (content!13812 (exprs!7150 ct2!306)))))))

(assert (=> d!2212347 (= lt!2548043 e!4253112)))

(declare-fun c!1319767 () Bool)

(assert (=> d!2212347 (= c!1319767 (is-Nil!68365 (exprs!7150 lt!2547816)))))

(assert (=> d!2212347 (= (++!15792 (exprs!7150 lt!2547816) (exprs!7150 ct2!306)) lt!2548043)))

(declare-fun b!7074345 () Bool)

(assert (=> b!7074345 (= e!4253112 (exprs!7150 ct2!306))))

(declare-fun b!7074347 () Bool)

(declare-fun res!2889494 () Bool)

(assert (=> b!7074347 (=> (not res!2889494) (not e!4253111))))

(declare-fun size!41224 (List!68489) Int)

(assert (=> b!7074347 (= res!2889494 (= (size!41224 lt!2548043) (+ (size!41224 (exprs!7150 lt!2547816)) (size!41224 (exprs!7150 ct2!306)))))))

(declare-fun b!7074348 () Bool)

(assert (=> b!7074348 (= e!4253111 (or (not (= (exprs!7150 ct2!306) Nil!68365)) (= lt!2548043 (exprs!7150 lt!2547816))))))

(assert (= (and d!2212347 c!1319767) b!7074345))

(assert (= (and d!2212347 (not c!1319767)) b!7074346))

(assert (= (and d!2212347 res!2889495) b!7074347))

(assert (= (and b!7074347 res!2889494) b!7074348))

(declare-fun m!7801738 () Bool)

(assert (=> b!7074346 m!7801738))

(declare-fun m!7801740 () Bool)

(assert (=> d!2212347 m!7801740))

(declare-fun m!7801742 () Bool)

(assert (=> d!2212347 m!7801742))

(declare-fun m!7801744 () Bool)

(assert (=> d!2212347 m!7801744))

(declare-fun m!7801746 () Bool)

(assert (=> b!7074347 m!7801746))

(declare-fun m!7801748 () Bool)

(assert (=> b!7074347 m!7801748))

(declare-fun m!7801750 () Bool)

(assert (=> b!7074347 m!7801750))

(assert (=> b!7074150 d!2212347))

(assert (=> b!7074150 d!2212311))

(declare-fun d!2212349 () Bool)

(declare-fun e!4253115 () Bool)

(assert (=> d!2212349 e!4253115))

(declare-fun res!2889498 () Bool)

(assert (=> d!2212349 (=> (not res!2889498) (not e!4253115))))

(declare-fun lt!2548046 () Context!13300)

(declare-fun dynLambda!27822 (Int Context!13300) Context!13300)

(assert (=> d!2212349 (= res!2889498 (= lt!2547820 (dynLambda!27822 lambda!426184 lt!2548046)))))

(declare-fun choose!54275 ((Set Context!13300) Int Context!13300) Context!13300)

(assert (=> d!2212349 (= lt!2548046 (choose!54275 z1!570 lambda!426184 lt!2547820))))

(declare-fun map!16001 ((Set Context!13300) Int) (Set Context!13300))

(assert (=> d!2212349 (set.member lt!2547820 (map!16001 z1!570 lambda!426184))))

(assert (=> d!2212349 (= (mapPost2!483 z1!570 lambda!426184 lt!2547820) lt!2548046)))

(declare-fun b!7074352 () Bool)

(assert (=> b!7074352 (= e!4253115 (set.member lt!2548046 z1!570))))

(assert (= (and d!2212349 res!2889498) b!7074352))

(declare-fun b_lambda!270097 () Bool)

(assert (=> (not b_lambda!270097) (not d!2212349)))

(declare-fun m!7801752 () Bool)

(assert (=> d!2212349 m!7801752))

(declare-fun m!7801754 () Bool)

(assert (=> d!2212349 m!7801754))

(declare-fun m!7801756 () Bool)

(assert (=> d!2212349 m!7801756))

(declare-fun m!7801758 () Bool)

(assert (=> d!2212349 m!7801758))

(declare-fun m!7801760 () Bool)

(assert (=> b!7074352 m!7801760))

(assert (=> b!7074150 d!2212349))

(declare-fun b!7074363 () Bool)

(declare-fun e!4253124 () (Set Context!13300))

(declare-fun call!642918 () (Set Context!13300))

(assert (=> b!7074363 (= e!4253124 call!642918)))

(declare-fun b!7074364 () Bool)

(declare-fun e!4253122 () Bool)

(assert (=> b!7074364 (= e!4253122 (nullable!7337 (h!74813 (exprs!7150 lt!2547803))))))

(declare-fun d!2212351 () Bool)

(declare-fun c!1319772 () Bool)

(assert (=> d!2212351 (= c!1319772 e!4253122)))

(declare-fun res!2889501 () Bool)

(assert (=> d!2212351 (=> (not res!2889501) (not e!4253122))))

(assert (=> d!2212351 (= res!2889501 (is-Cons!68365 (exprs!7150 lt!2547803)))))

(declare-fun e!4253123 () (Set Context!13300))

(assert (=> d!2212351 (= (derivationStepZipperUp!2238 lt!2547803 (h!74812 s!7408)) e!4253123)))

(declare-fun b!7074365 () Bool)

(assert (=> b!7074365 (= e!4253123 (set.union call!642918 (derivationStepZipperUp!2238 (Context!13301 (t!382272 (exprs!7150 lt!2547803))) (h!74812 s!7408))))))

(declare-fun b!7074366 () Bool)

(assert (=> b!7074366 (= e!4253124 (as set.empty (Set Context!13300)))))

(declare-fun bm!642913 () Bool)

(assert (=> bm!642913 (= call!642918 (derivationStepZipperDown!2288 (h!74813 (exprs!7150 lt!2547803)) (Context!13301 (t!382272 (exprs!7150 lt!2547803))) (h!74812 s!7408)))))

(declare-fun b!7074367 () Bool)

(assert (=> b!7074367 (= e!4253123 e!4253124)))

(declare-fun c!1319773 () Bool)

(assert (=> b!7074367 (= c!1319773 (is-Cons!68365 (exprs!7150 lt!2547803)))))

(assert (= (and d!2212351 res!2889501) b!7074364))

(assert (= (and d!2212351 c!1319772) b!7074365))

(assert (= (and d!2212351 (not c!1319772)) b!7074367))

(assert (= (and b!7074367 c!1319773) b!7074363))

(assert (= (and b!7074367 (not c!1319773)) b!7074366))

(assert (= (or b!7074365 b!7074363) bm!642913))

(declare-fun m!7801762 () Bool)

(assert (=> b!7074364 m!7801762))

(declare-fun m!7801764 () Bool)

(assert (=> b!7074365 m!7801764))

(declare-fun m!7801766 () Bool)

(assert (=> bm!642913 m!7801766))

(assert (=> b!7074130 d!2212351))

(declare-fun b!7074390 () Bool)

(declare-fun e!4253141 () (Set Context!13300))

(assert (=> b!7074390 (= e!4253141 (as set.empty (Set Context!13300)))))

(declare-fun b!7074391 () Bool)

(declare-fun c!1319786 () Bool)

(assert (=> b!7074391 (= c!1319786 (is-Star!17654 (h!74813 (exprs!7150 lt!2547816))))))

(declare-fun e!4253139 () (Set Context!13300))

(assert (=> b!7074391 (= e!4253139 e!4253141)))

(declare-fun b!7074392 () Bool)

(declare-fun e!4253138 () (Set Context!13300))

(declare-fun call!642931 () (Set Context!13300))

(declare-fun call!642935 () (Set Context!13300))

(assert (=> b!7074392 (= e!4253138 (set.union call!642931 call!642935))))

(declare-fun b!7074393 () Bool)

(declare-fun call!642933 () (Set Context!13300))

(assert (=> b!7074393 (= e!4253141 call!642933)))

(declare-fun b!7074394 () Bool)

(declare-fun e!4253142 () (Set Context!13300))

(assert (=> b!7074394 (= e!4253142 (set.insert lt!2547799 (as set.empty (Set Context!13300))))))

(declare-fun c!1319785 () Bool)

(declare-fun call!642936 () List!68489)

(declare-fun bm!642926 () Bool)

(assert (=> bm!642926 (= call!642931 (derivationStepZipperDown!2288 (ite c!1319785 (regTwo!35821 (h!74813 (exprs!7150 lt!2547816))) (regOne!35820 (h!74813 (exprs!7150 lt!2547816)))) (ite c!1319785 lt!2547799 (Context!13301 call!642936)) (h!74812 s!7408)))))

(declare-fun c!1319784 () Bool)

(declare-fun c!1319788 () Bool)

(declare-fun bm!642927 () Bool)

(declare-fun $colon$colon!2664 (List!68489 Regex!17654) List!68489)

(assert (=> bm!642927 (= call!642936 ($colon$colon!2664 (exprs!7150 lt!2547799) (ite (or c!1319788 c!1319784) (regTwo!35820 (h!74813 (exprs!7150 lt!2547816))) (h!74813 (exprs!7150 lt!2547816)))))))

(declare-fun bm!642928 () Bool)

(assert (=> bm!642928 (= call!642933 call!642935)))

(declare-fun b!7074396 () Bool)

(assert (=> b!7074396 (= e!4253138 e!4253139)))

(assert (=> b!7074396 (= c!1319784 (is-Concat!26499 (h!74813 (exprs!7150 lt!2547816))))))

(declare-fun b!7074397 () Bool)

(declare-fun e!4253140 () Bool)

(assert (=> b!7074397 (= c!1319788 e!4253140)))

(declare-fun res!2889504 () Bool)

(assert (=> b!7074397 (=> (not res!2889504) (not e!4253140))))

(assert (=> b!7074397 (= res!2889504 (is-Concat!26499 (h!74813 (exprs!7150 lt!2547816))))))

(declare-fun e!4253137 () (Set Context!13300))

(assert (=> b!7074397 (= e!4253137 e!4253138)))

(declare-fun bm!642929 () Bool)

(declare-fun call!642932 () (Set Context!13300))

(assert (=> bm!642929 (= call!642935 call!642932)))

(declare-fun bm!642930 () Bool)

(declare-fun call!642934 () List!68489)

(assert (=> bm!642930 (= call!642932 (derivationStepZipperDown!2288 (ite c!1319785 (regOne!35821 (h!74813 (exprs!7150 lt!2547816))) (ite c!1319788 (regTwo!35820 (h!74813 (exprs!7150 lt!2547816))) (ite c!1319784 (regOne!35820 (h!74813 (exprs!7150 lt!2547816))) (reg!17983 (h!74813 (exprs!7150 lt!2547816)))))) (ite (or c!1319785 c!1319788) lt!2547799 (Context!13301 call!642934)) (h!74812 s!7408)))))

(declare-fun b!7074395 () Bool)

(assert (=> b!7074395 (= e!4253140 (nullable!7337 (regOne!35820 (h!74813 (exprs!7150 lt!2547816)))))))

(declare-fun d!2212353 () Bool)

(declare-fun c!1319787 () Bool)

(assert (=> d!2212353 (= c!1319787 (and (is-ElementMatch!17654 (h!74813 (exprs!7150 lt!2547816))) (= (c!1319726 (h!74813 (exprs!7150 lt!2547816))) (h!74812 s!7408))))))

(assert (=> d!2212353 (= (derivationStepZipperDown!2288 (h!74813 (exprs!7150 lt!2547816)) lt!2547799 (h!74812 s!7408)) e!4253142)))

(declare-fun bm!642931 () Bool)

(assert (=> bm!642931 (= call!642934 call!642936)))

(declare-fun b!7074398 () Bool)

(assert (=> b!7074398 (= e!4253139 call!642933)))

(declare-fun b!7074399 () Bool)

(assert (=> b!7074399 (= e!4253142 e!4253137)))

(assert (=> b!7074399 (= c!1319785 (is-Union!17654 (h!74813 (exprs!7150 lt!2547816))))))

(declare-fun b!7074400 () Bool)

(assert (=> b!7074400 (= e!4253137 (set.union call!642932 call!642931))))

(assert (= (and d!2212353 c!1319787) b!7074394))

(assert (= (and d!2212353 (not c!1319787)) b!7074399))

(assert (= (and b!7074399 c!1319785) b!7074400))

(assert (= (and b!7074399 (not c!1319785)) b!7074397))

(assert (= (and b!7074397 res!2889504) b!7074395))

(assert (= (and b!7074397 c!1319788) b!7074392))

(assert (= (and b!7074397 (not c!1319788)) b!7074396))

(assert (= (and b!7074396 c!1319784) b!7074398))

(assert (= (and b!7074396 (not c!1319784)) b!7074391))

(assert (= (and b!7074391 c!1319786) b!7074393))

(assert (= (and b!7074391 (not c!1319786)) b!7074390))

(assert (= (or b!7074398 b!7074393) bm!642931))

(assert (= (or b!7074398 b!7074393) bm!642928))

(assert (= (or b!7074392 bm!642928) bm!642929))

(assert (= (or b!7074392 bm!642931) bm!642927))

(assert (= (or b!7074400 bm!642929) bm!642930))

(assert (= (or b!7074400 b!7074392) bm!642926))

(declare-fun m!7801768 () Bool)

(assert (=> b!7074394 m!7801768))

(declare-fun m!7801770 () Bool)

(assert (=> bm!642930 m!7801770))

(declare-fun m!7801772 () Bool)

(assert (=> bm!642927 m!7801772))

(declare-fun m!7801774 () Bool)

(assert (=> b!7074395 m!7801774))

(declare-fun m!7801776 () Bool)

(assert (=> bm!642926 m!7801776))

(assert (=> b!7074149 d!2212353))

(assert (=> b!7074149 d!2212319))

(declare-fun b!7074402 () Bool)

(declare-fun e!4253144 () List!68489)

(assert (=> b!7074402 (= e!4253144 (Cons!68365 (h!74813 lt!2547793) (++!15792 (t!382272 lt!2547793) (exprs!7150 ct2!306))))))

(declare-fun d!2212355 () Bool)

(declare-fun e!4253143 () Bool)

(assert (=> d!2212355 e!4253143))

(declare-fun res!2889506 () Bool)

(assert (=> d!2212355 (=> (not res!2889506) (not e!4253143))))

(declare-fun lt!2548047 () List!68489)

(assert (=> d!2212355 (= res!2889506 (= (content!13812 lt!2548047) (set.union (content!13812 lt!2547793) (content!13812 (exprs!7150 ct2!306)))))))

(assert (=> d!2212355 (= lt!2548047 e!4253144)))

(declare-fun c!1319789 () Bool)

(assert (=> d!2212355 (= c!1319789 (is-Nil!68365 lt!2547793))))

(assert (=> d!2212355 (= (++!15792 lt!2547793 (exprs!7150 ct2!306)) lt!2548047)))

(declare-fun b!7074401 () Bool)

(assert (=> b!7074401 (= e!4253144 (exprs!7150 ct2!306))))

(declare-fun b!7074403 () Bool)

(declare-fun res!2889505 () Bool)

(assert (=> b!7074403 (=> (not res!2889505) (not e!4253143))))

(assert (=> b!7074403 (= res!2889505 (= (size!41224 lt!2548047) (+ (size!41224 lt!2547793) (size!41224 (exprs!7150 ct2!306)))))))

(declare-fun b!7074404 () Bool)

(assert (=> b!7074404 (= e!4253143 (or (not (= (exprs!7150 ct2!306) Nil!68365)) (= lt!2548047 lt!2547793)))))

(assert (= (and d!2212355 c!1319789) b!7074401))

(assert (= (and d!2212355 (not c!1319789)) b!7074402))

(assert (= (and d!2212355 res!2889506) b!7074403))

(assert (= (and b!7074403 res!2889505) b!7074404))

(declare-fun m!7801778 () Bool)

(assert (=> b!7074402 m!7801778))

(declare-fun m!7801780 () Bool)

(assert (=> d!2212355 m!7801780))

(declare-fun m!7801782 () Bool)

(assert (=> d!2212355 m!7801782))

(assert (=> d!2212355 m!7801744))

(declare-fun m!7801784 () Bool)

(assert (=> b!7074403 m!7801784))

(declare-fun m!7801786 () Bool)

(assert (=> b!7074403 m!7801786))

(assert (=> b!7074403 m!7801750))

(assert (=> b!7074149 d!2212355))

(declare-fun b!7074405 () Bool)

(declare-fun e!4253147 () (Set Context!13300))

(declare-fun call!642937 () (Set Context!13300))

(assert (=> b!7074405 (= e!4253147 call!642937)))

(declare-fun b!7074406 () Bool)

(declare-fun e!4253145 () Bool)

(assert (=> b!7074406 (= e!4253145 (nullable!7337 (h!74813 (exprs!7150 lt!2547799))))))

(declare-fun d!2212357 () Bool)

(declare-fun c!1319790 () Bool)

(assert (=> d!2212357 (= c!1319790 e!4253145)))

(declare-fun res!2889507 () Bool)

(assert (=> d!2212357 (=> (not res!2889507) (not e!4253145))))

(assert (=> d!2212357 (= res!2889507 (is-Cons!68365 (exprs!7150 lt!2547799)))))

(declare-fun e!4253146 () (Set Context!13300))

(assert (=> d!2212357 (= (derivationStepZipperUp!2238 lt!2547799 (h!74812 s!7408)) e!4253146)))

(declare-fun b!7074407 () Bool)

(assert (=> b!7074407 (= e!4253146 (set.union call!642937 (derivationStepZipperUp!2238 (Context!13301 (t!382272 (exprs!7150 lt!2547799))) (h!74812 s!7408))))))

(declare-fun b!7074408 () Bool)

(assert (=> b!7074408 (= e!4253147 (as set.empty (Set Context!13300)))))

(declare-fun bm!642932 () Bool)

(assert (=> bm!642932 (= call!642937 (derivationStepZipperDown!2288 (h!74813 (exprs!7150 lt!2547799)) (Context!13301 (t!382272 (exprs!7150 lt!2547799))) (h!74812 s!7408)))))

(declare-fun b!7074409 () Bool)

(assert (=> b!7074409 (= e!4253146 e!4253147)))

(declare-fun c!1319791 () Bool)

(assert (=> b!7074409 (= c!1319791 (is-Cons!68365 (exprs!7150 lt!2547799)))))

(assert (= (and d!2212357 res!2889507) b!7074406))

(assert (= (and d!2212357 c!1319790) b!7074407))

(assert (= (and d!2212357 (not c!1319790)) b!7074409))

(assert (= (and b!7074409 c!1319791) b!7074405))

(assert (= (and b!7074409 (not c!1319791)) b!7074408))

(assert (= (or b!7074407 b!7074405) bm!642932))

(declare-fun m!7801788 () Bool)

(assert (=> b!7074406 m!7801788))

(declare-fun m!7801790 () Bool)

(assert (=> b!7074407 m!7801790))

(declare-fun m!7801792 () Bool)

(assert (=> bm!642932 m!7801792))

(assert (=> b!7074149 d!2212357))

(assert (=> b!7074127 d!2212319))

(declare-fun bs!1881009 () Bool)

(declare-fun d!2212359 () Bool)

(assert (= bs!1881009 (and d!2212359 b!7074150)))

(declare-fun lambda!426246 () Int)

(assert (=> bs!1881009 (= lambda!426246 lambda!426185)))

(assert (=> d!2212359 (= (inv!86995 setElem!50306) (forall!16609 (exprs!7150 setElem!50306) lambda!426246))))

(declare-fun bs!1881010 () Bool)

(assert (= bs!1881010 d!2212359))

(declare-fun m!7801794 () Bool)

(assert (=> bs!1881010 m!7801794))

(assert (=> setNonEmpty!50306 d!2212359))

(assert (=> b!7074126 d!2212323))

(declare-fun d!2212361 () Bool)

(declare-fun e!4253154 () Bool)

(assert (=> d!2212361 e!4253154))

(declare-fun res!2889518 () Bool)

(assert (=> d!2212361 (=> res!2889518 e!4253154)))

(declare-fun lt!2548050 () Bool)

(assert (=> d!2212361 (= res!2889518 (not lt!2548050))))

(declare-fun e!4253155 () Bool)

(assert (=> d!2212361 (= lt!2548050 e!4253155)))

(declare-fun res!2889516 () Bool)

(assert (=> d!2212361 (=> res!2889516 e!4253155)))

(assert (=> d!2212361 (= res!2889516 (is-Nil!68364 Nil!68364))))

(assert (=> d!2212361 (= (isPrefix!5857 Nil!68364 lt!2547823) lt!2548050)))

(declare-fun b!7074421 () Bool)

(assert (=> b!7074421 (= e!4253154 (>= (size!41223 lt!2547823) (size!41223 Nil!68364)))))

(declare-fun b!7074420 () Bool)

(declare-fun e!4253156 () Bool)

(assert (=> b!7074420 (= e!4253156 (isPrefix!5857 (tail!13845 Nil!68364) (tail!13845 lt!2547823)))))

(declare-fun b!7074419 () Bool)

(declare-fun res!2889517 () Bool)

(assert (=> b!7074419 (=> (not res!2889517) (not e!4253156))))

(assert (=> b!7074419 (= res!2889517 (= (head!14413 Nil!68364) (head!14413 lt!2547823)))))

(declare-fun b!7074418 () Bool)

(assert (=> b!7074418 (= e!4253155 e!4253156)))

(declare-fun res!2889519 () Bool)

(assert (=> b!7074418 (=> (not res!2889519) (not e!4253156))))

(assert (=> b!7074418 (= res!2889519 (not (is-Nil!68364 lt!2547823)))))

(assert (= (and d!2212361 (not res!2889516)) b!7074418))

(assert (= (and b!7074418 res!2889519) b!7074419))

(assert (= (and b!7074419 res!2889517) b!7074420))

(assert (= (and d!2212361 (not res!2889518)) b!7074421))

(declare-fun m!7801796 () Bool)

(assert (=> b!7074421 m!7801796))

(assert (=> b!7074421 m!7801664))

(declare-fun m!7801798 () Bool)

(assert (=> b!7074420 m!7801798))

(assert (=> b!7074420 m!7801682))

(assert (=> b!7074420 m!7801798))

(assert (=> b!7074420 m!7801682))

(declare-fun m!7801800 () Bool)

(assert (=> b!7074420 m!7801800))

(declare-fun m!7801802 () Bool)

(assert (=> b!7074419 m!7801802))

(assert (=> b!7074419 m!7801678))

(assert (=> b!7074146 d!2212361))

(declare-fun b!7074422 () Bool)

(declare-fun e!4253159 () (Set Context!13300))

(declare-fun call!642938 () (Set Context!13300))

(assert (=> b!7074422 (= e!4253159 call!642938)))

(declare-fun b!7074423 () Bool)

(declare-fun e!4253157 () Bool)

(assert (=> b!7074423 (= e!4253157 (nullable!7337 (h!74813 (exprs!7150 lt!2547814))))))

(declare-fun d!2212363 () Bool)

(declare-fun c!1319792 () Bool)

(assert (=> d!2212363 (= c!1319792 e!4253157)))

(declare-fun res!2889520 () Bool)

(assert (=> d!2212363 (=> (not res!2889520) (not e!4253157))))

(assert (=> d!2212363 (= res!2889520 (is-Cons!68365 (exprs!7150 lt!2547814)))))

(declare-fun e!4253158 () (Set Context!13300))

(assert (=> d!2212363 (= (derivationStepZipperUp!2238 lt!2547814 (h!74812 s!7408)) e!4253158)))

(declare-fun b!7074424 () Bool)

(assert (=> b!7074424 (= e!4253158 (set.union call!642938 (derivationStepZipperUp!2238 (Context!13301 (t!382272 (exprs!7150 lt!2547814))) (h!74812 s!7408))))))

(declare-fun b!7074425 () Bool)

(assert (=> b!7074425 (= e!4253159 (as set.empty (Set Context!13300)))))

(declare-fun bm!642933 () Bool)

(assert (=> bm!642933 (= call!642938 (derivationStepZipperDown!2288 (h!74813 (exprs!7150 lt!2547814)) (Context!13301 (t!382272 (exprs!7150 lt!2547814))) (h!74812 s!7408)))))

(declare-fun b!7074426 () Bool)

(assert (=> b!7074426 (= e!4253158 e!4253159)))

(declare-fun c!1319793 () Bool)

(assert (=> b!7074426 (= c!1319793 (is-Cons!68365 (exprs!7150 lt!2547814)))))

(assert (= (and d!2212363 res!2889520) b!7074423))

(assert (= (and d!2212363 c!1319792) b!7074424))

(assert (= (and d!2212363 (not c!1319792)) b!7074426))

(assert (= (and b!7074426 c!1319793) b!7074422))

(assert (= (and b!7074426 (not c!1319793)) b!7074425))

(assert (= (or b!7074424 b!7074422) bm!642933))

(declare-fun m!7801804 () Bool)

(assert (=> b!7074423 m!7801804))

(declare-fun m!7801806 () Bool)

(assert (=> b!7074424 m!7801806))

(declare-fun m!7801808 () Bool)

(assert (=> bm!642933 m!7801808))

(assert (=> b!7074145 d!2212363))

(assert (=> b!7074145 d!2212311))

(declare-fun d!2212365 () Bool)

(declare-fun dynLambda!27823 (Int Context!13300) (Set Context!13300))

(assert (=> d!2212365 (= (flatMap!2580 lt!2547819 lambda!426186) (dynLambda!27823 lambda!426186 lt!2547814))))

(declare-fun lt!2548053 () Unit!162018)

(declare-fun choose!54276 ((Set Context!13300) Context!13300 Int) Unit!162018)

(assert (=> d!2212365 (= lt!2548053 (choose!54276 lt!2547819 lt!2547814 lambda!426186))))

(assert (=> d!2212365 (= lt!2547819 (set.insert lt!2547814 (as set.empty (Set Context!13300))))))

(assert (=> d!2212365 (= (lemmaFlatMapOnSingletonSet!2089 lt!2547819 lt!2547814 lambda!426186) lt!2548053)))

(declare-fun b_lambda!270099 () Bool)

(assert (=> (not b_lambda!270099) (not d!2212365)))

(declare-fun bs!1881011 () Bool)

(assert (= bs!1881011 d!2212365))

(assert (=> bs!1881011 m!7801348))

(declare-fun m!7801810 () Bool)

(assert (=> bs!1881011 m!7801810))

(declare-fun m!7801812 () Bool)

(assert (=> bs!1881011 m!7801812))

(assert (=> bs!1881011 m!7801412))

(assert (=> b!7074145 d!2212365))

(declare-fun bs!1881012 () Bool)

(declare-fun d!2212367 () Bool)

(assert (= bs!1881012 (and d!2212367 b!7074145)))

(declare-fun lambda!426249 () Int)

(assert (=> bs!1881012 (= lambda!426249 lambda!426186)))

(assert (=> d!2212367 true))

(assert (=> d!2212367 (= (derivationStepZipper!3104 lt!2547819 (h!74812 s!7408)) (flatMap!2580 lt!2547819 lambda!426249))))

(declare-fun bs!1881013 () Bool)

(assert (= bs!1881013 d!2212367))

(declare-fun m!7801814 () Bool)

(assert (=> bs!1881013 m!7801814))

(assert (=> b!7074145 d!2212367))

(declare-fun d!2212369 () Bool)

(declare-fun choose!54277 ((Set Context!13300) Int) (Set Context!13300))

(assert (=> d!2212369 (= (flatMap!2580 lt!2547819 lambda!426186) (choose!54277 lt!2547819 lambda!426186))))

(declare-fun bs!1881014 () Bool)

(assert (= bs!1881014 d!2212369))

(declare-fun m!7801816 () Bool)

(assert (=> bs!1881014 m!7801816))

(assert (=> b!7074145 d!2212369))

(declare-fun d!2212371 () Bool)

(declare-fun c!1319796 () Bool)

(assert (=> d!2212371 (= c!1319796 (isEmpty!39903 (_2!37444 lt!2547804)))))

(declare-fun e!4253160 () Bool)

(assert (=> d!2212371 (= (matchZipper!3194 lt!2547796 (_2!37444 lt!2547804)) e!4253160)))

(declare-fun b!7074429 () Bool)

(assert (=> b!7074429 (= e!4253160 (nullableZipper!2705 lt!2547796))))

(declare-fun b!7074430 () Bool)

(assert (=> b!7074430 (= e!4253160 (matchZipper!3194 (derivationStepZipper!3104 lt!2547796 (head!14413 (_2!37444 lt!2547804))) (tail!13845 (_2!37444 lt!2547804))))))

(assert (= (and d!2212371 c!1319796) b!7074429))

(assert (= (and d!2212371 (not c!1319796)) b!7074430))

(declare-fun m!7801818 () Bool)

(assert (=> d!2212371 m!7801818))

(declare-fun m!7801820 () Bool)

(assert (=> b!7074429 m!7801820))

(declare-fun m!7801822 () Bool)

(assert (=> b!7074430 m!7801822))

(assert (=> b!7074430 m!7801822))

(declare-fun m!7801824 () Bool)

(assert (=> b!7074430 m!7801824))

(declare-fun m!7801826 () Bool)

(assert (=> b!7074430 m!7801826))

(assert (=> b!7074430 m!7801824))

(assert (=> b!7074430 m!7801826))

(declare-fun m!7801828 () Bool)

(assert (=> b!7074430 m!7801828))

(assert (=> b!7074144 d!2212371))

(declare-fun d!2212373 () Bool)

(declare-fun c!1319797 () Bool)

(assert (=> d!2212373 (= c!1319797 (isEmpty!39903 (_1!37444 lt!2547804)))))

(declare-fun e!4253161 () Bool)

(assert (=> d!2212373 (= (matchZipper!3194 lt!2547840 (_1!37444 lt!2547804)) e!4253161)))

(declare-fun b!7074431 () Bool)

(assert (=> b!7074431 (= e!4253161 (nullableZipper!2705 lt!2547840))))

(declare-fun b!7074432 () Bool)

(assert (=> b!7074432 (= e!4253161 (matchZipper!3194 (derivationStepZipper!3104 lt!2547840 (head!14413 (_1!37444 lt!2547804))) (tail!13845 (_1!37444 lt!2547804))))))

(assert (= (and d!2212373 c!1319797) b!7074431))

(assert (= (and d!2212373 (not c!1319797)) b!7074432))

(declare-fun m!7801830 () Bool)

(assert (=> d!2212373 m!7801830))

(declare-fun m!7801832 () Bool)

(assert (=> b!7074431 m!7801832))

(declare-fun m!7801834 () Bool)

(assert (=> b!7074432 m!7801834))

(assert (=> b!7074432 m!7801834))

(declare-fun m!7801836 () Bool)

(assert (=> b!7074432 m!7801836))

(declare-fun m!7801838 () Bool)

(assert (=> b!7074432 m!7801838))

(assert (=> b!7074432 m!7801836))

(assert (=> b!7074432 m!7801838))

(declare-fun m!7801840 () Bool)

(assert (=> b!7074432 m!7801840))

(assert (=> b!7074143 d!2212373))

(declare-fun b!7074434 () Bool)

(declare-fun e!4253163 () List!68488)

(assert (=> b!7074434 (= e!4253163 (Cons!68364 (h!74812 lt!2547823) (++!15791 (t!382271 lt!2547823) (_2!37444 lt!2547804))))))

(declare-fun b!7074435 () Bool)

(declare-fun res!2889521 () Bool)

(declare-fun e!4253162 () Bool)

(assert (=> b!7074435 (=> (not res!2889521) (not e!4253162))))

(declare-fun lt!2548054 () List!68488)

(assert (=> b!7074435 (= res!2889521 (= (size!41223 lt!2548054) (+ (size!41223 lt!2547823) (size!41223 (_2!37444 lt!2547804)))))))

(declare-fun d!2212375 () Bool)

(assert (=> d!2212375 e!4253162))

(declare-fun res!2889522 () Bool)

(assert (=> d!2212375 (=> (not res!2889522) (not e!4253162))))

(assert (=> d!2212375 (= res!2889522 (= (content!13811 lt!2548054) (set.union (content!13811 lt!2547823) (content!13811 (_2!37444 lt!2547804)))))))

(assert (=> d!2212375 (= lt!2548054 e!4253163)))

(declare-fun c!1319798 () Bool)

(assert (=> d!2212375 (= c!1319798 (is-Nil!68364 lt!2547823))))

(assert (=> d!2212375 (= (++!15791 lt!2547823 (_2!37444 lt!2547804)) lt!2548054)))

(declare-fun b!7074433 () Bool)

(assert (=> b!7074433 (= e!4253163 (_2!37444 lt!2547804))))

(declare-fun b!7074436 () Bool)

(assert (=> b!7074436 (= e!4253162 (or (not (= (_2!37444 lt!2547804) Nil!68364)) (= lt!2548054 lt!2547823)))))

(assert (= (and d!2212375 c!1319798) b!7074433))

(assert (= (and d!2212375 (not c!1319798)) b!7074434))

(assert (= (and d!2212375 res!2889522) b!7074435))

(assert (= (and b!7074435 res!2889521) b!7074436))

(declare-fun m!7801842 () Bool)

(assert (=> b!7074434 m!7801842))

(declare-fun m!7801844 () Bool)

(assert (=> b!7074435 m!7801844))

(assert (=> b!7074435 m!7801796))

(declare-fun m!7801846 () Bool)

(assert (=> b!7074435 m!7801846))

(declare-fun m!7801848 () Bool)

(assert (=> d!2212375 m!7801848))

(declare-fun m!7801850 () Bool)

(assert (=> d!2212375 m!7801850))

(declare-fun m!7801852 () Bool)

(assert (=> d!2212375 m!7801852))

(assert (=> b!7074141 d!2212375))

(declare-fun d!2212377 () Bool)

(declare-fun c!1319799 () Bool)

(assert (=> d!2212377 (= c!1319799 (isEmpty!39903 s!7408))))

(declare-fun e!4253164 () Bool)

(assert (=> d!2212377 (= (matchZipper!3194 lt!2547810 s!7408) e!4253164)))

(declare-fun b!7074437 () Bool)

(assert (=> b!7074437 (= e!4253164 (nullableZipper!2705 lt!2547810))))

(declare-fun b!7074438 () Bool)

(assert (=> b!7074438 (= e!4253164 (matchZipper!3194 (derivationStepZipper!3104 lt!2547810 (head!14413 s!7408)) (tail!13845 s!7408)))))

(assert (= (and d!2212377 c!1319799) b!7074437))

(assert (= (and d!2212377 (not c!1319799)) b!7074438))

(assert (=> d!2212377 m!7801602))

(declare-fun m!7801854 () Bool)

(assert (=> b!7074437 m!7801854))

(assert (=> b!7074438 m!7801606))

(assert (=> b!7074438 m!7801606))

(declare-fun m!7801856 () Bool)

(assert (=> b!7074438 m!7801856))

(assert (=> b!7074438 m!7801610))

(assert (=> b!7074438 m!7801856))

(assert (=> b!7074438 m!7801610))

(declare-fun m!7801858 () Bool)

(assert (=> b!7074438 m!7801858))

(assert (=> start!687390 d!2212377))

(declare-fun bs!1881015 () Bool)

(declare-fun d!2212379 () Bool)

(assert (= bs!1881015 (and d!2212379 b!7074150)))

(declare-fun lambda!426254 () Int)

(assert (=> bs!1881015 (= lambda!426254 lambda!426184)))

(assert (=> d!2212379 true))

(assert (=> d!2212379 (= (appendTo!775 z1!570 ct2!306) (map!16001 z1!570 lambda!426254))))

(declare-fun bs!1881016 () Bool)

(assert (= bs!1881016 d!2212379))

(declare-fun m!7801860 () Bool)

(assert (=> bs!1881016 m!7801860))

(assert (=> start!687390 d!2212379))

(declare-fun bs!1881017 () Bool)

(declare-fun d!2212381 () Bool)

(assert (= bs!1881017 (and d!2212381 b!7074150)))

(declare-fun lambda!426255 () Int)

(assert (=> bs!1881017 (= lambda!426255 lambda!426185)))

(declare-fun bs!1881018 () Bool)

(assert (= bs!1881018 (and d!2212381 d!2212359)))

(assert (=> bs!1881018 (= lambda!426255 lambda!426246)))

(assert (=> d!2212381 (= (inv!86995 ct2!306) (forall!16609 (exprs!7150 ct2!306) lambda!426255))))

(declare-fun bs!1881019 () Bool)

(assert (= bs!1881019 d!2212381))

(declare-fun m!7801862 () Bool)

(assert (=> bs!1881019 m!7801862))

(assert (=> start!687390 d!2212381))

(assert (=> b!7074139 d!2212323))

(assert (=> b!7074139 d!2212319))

(declare-fun bs!1881020 () Bool)

(declare-fun d!2212383 () Bool)

(assert (= bs!1881020 (and d!2212383 b!7074150)))

(declare-fun lambda!426256 () Int)

(assert (=> bs!1881020 (= lambda!426256 lambda!426184)))

(declare-fun bs!1881021 () Bool)

(assert (= bs!1881021 (and d!2212383 d!2212379)))

(assert (=> bs!1881021 (= lambda!426256 lambda!426254)))

(assert (=> d!2212383 true))

(assert (=> d!2212383 (= (appendTo!775 lt!2547836 ct2!306) (map!16001 lt!2547836 lambda!426256))))

(declare-fun bs!1881022 () Bool)

(assert (= bs!1881022 d!2212383))

(declare-fun m!7801864 () Bool)

(assert (=> bs!1881022 m!7801864))

(assert (=> b!7074138 d!2212383))

(declare-fun bs!1881023 () Bool)

(declare-fun d!2212385 () Bool)

(assert (= bs!1881023 (and d!2212385 b!7074150)))

(declare-fun lambda!426259 () Int)

(assert (=> bs!1881023 (= lambda!426259 lambda!426185)))

(declare-fun bs!1881024 () Bool)

(assert (= bs!1881024 (and d!2212385 d!2212359)))

(assert (=> bs!1881024 (= lambda!426259 lambda!426246)))

(declare-fun bs!1881025 () Bool)

(assert (= bs!1881025 (and d!2212385 d!2212381)))

(assert (=> bs!1881025 (= lambda!426259 lambda!426255)))

(assert (=> d!2212385 (= (derivationStepZipperDown!2288 (h!74813 (exprs!7150 lt!2547816)) (Context!13301 (++!15792 (exprs!7150 lt!2547803) (exprs!7150 ct2!306))) (h!74812 s!7408)) (appendTo!775 (derivationStepZipperDown!2288 (h!74813 (exprs!7150 lt!2547816)) lt!2547803 (h!74812 s!7408)) ct2!306))))

(declare-fun lt!2548062 () Unit!162018)

(assert (=> d!2212385 (= lt!2548062 (lemmaConcatPreservesForall!965 (exprs!7150 lt!2547803) (exprs!7150 ct2!306) lambda!426259))))

(declare-fun lt!2548061 () Unit!162018)

(declare-fun choose!54278 (Context!13300 Regex!17654 C!35578 Context!13300) Unit!162018)

(assert (=> d!2212385 (= lt!2548061 (choose!54278 lt!2547803 (h!74813 (exprs!7150 lt!2547816)) (h!74812 s!7408) ct2!306))))

(declare-fun validRegex!8976 (Regex!17654) Bool)

(assert (=> d!2212385 (validRegex!8976 (h!74813 (exprs!7150 lt!2547816)))))

(assert (=> d!2212385 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!125 lt!2547803 (h!74813 (exprs!7150 lt!2547816)) (h!74812 s!7408) ct2!306) lt!2548061)))

(declare-fun bs!1881026 () Bool)

(assert (= bs!1881026 d!2212385))

(declare-fun m!7801866 () Bool)

(assert (=> bs!1881026 m!7801866))

(declare-fun m!7801868 () Bool)

(assert (=> bs!1881026 m!7801868))

(declare-fun m!7801870 () Bool)

(assert (=> bs!1881026 m!7801870))

(assert (=> bs!1881026 m!7801382))

(declare-fun m!7801872 () Bool)

(assert (=> bs!1881026 m!7801872))

(assert (=> bs!1881026 m!7801382))

(declare-fun m!7801874 () Bool)

(assert (=> bs!1881026 m!7801874))

(declare-fun m!7801876 () Bool)

(assert (=> bs!1881026 m!7801876))

(assert (=> b!7074138 d!2212385))

(declare-fun d!2212387 () Bool)

(declare-fun c!1319802 () Bool)

(assert (=> d!2212387 (= c!1319802 (isEmpty!39903 (_1!37444 lt!2547804)))))

(declare-fun e!4253165 () Bool)

(assert (=> d!2212387 (= (matchZipper!3194 lt!2547836 (_1!37444 lt!2547804)) e!4253165)))

(declare-fun b!7074439 () Bool)

(assert (=> b!7074439 (= e!4253165 (nullableZipper!2705 lt!2547836))))

(declare-fun b!7074440 () Bool)

(assert (=> b!7074440 (= e!4253165 (matchZipper!3194 (derivationStepZipper!3104 lt!2547836 (head!14413 (_1!37444 lt!2547804))) (tail!13845 (_1!37444 lt!2547804))))))

(assert (= (and d!2212387 c!1319802) b!7074439))

(assert (= (and d!2212387 (not c!1319802)) b!7074440))

(assert (=> d!2212387 m!7801830))

(declare-fun m!7801878 () Bool)

(assert (=> b!7074439 m!7801878))

(assert (=> b!7074440 m!7801834))

(assert (=> b!7074440 m!7801834))

(declare-fun m!7801880 () Bool)

(assert (=> b!7074440 m!7801880))

(assert (=> b!7074440 m!7801838))

(assert (=> b!7074440 m!7801880))

(assert (=> b!7074440 m!7801838))

(declare-fun m!7801882 () Bool)

(assert (=> b!7074440 m!7801882))

(assert (=> b!7074138 d!2212387))

(assert (=> b!7074138 d!2212319))

(declare-fun d!2212389 () Bool)

(assert (=> d!2212389 (= (get!23951 lt!2547832) (v!53266 lt!2547832))))

(assert (=> b!7074138 d!2212389))

(declare-fun d!2212391 () Bool)

(assert (=> d!2212391 (isDefined!13674 (findConcatSeparationZippers!489 lt!2547836 (set.insert ct2!306 (as set.empty (Set Context!13300))) Nil!68364 (t!382271 s!7408) (t!382271 s!7408)))))

(declare-fun lt!2548065 () Unit!162018)

(declare-fun choose!54279 ((Set Context!13300) Context!13300 List!68488) Unit!162018)

(assert (=> d!2212391 (= lt!2548065 (choose!54279 lt!2547836 ct2!306 (t!382271 s!7408)))))

(assert (=> d!2212391 (matchZipper!3194 (appendTo!775 lt!2547836 ct2!306) (t!382271 s!7408))))

(assert (=> d!2212391 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!477 lt!2547836 ct2!306 (t!382271 s!7408)) lt!2548065)))

(declare-fun bs!1881027 () Bool)

(assert (= bs!1881027 d!2212391))

(assert (=> bs!1881027 m!7801380))

(assert (=> bs!1881027 m!7801380))

(declare-fun m!7801884 () Bool)

(assert (=> bs!1881027 m!7801884))

(assert (=> bs!1881027 m!7801884))

(declare-fun m!7801886 () Bool)

(assert (=> bs!1881027 m!7801886))

(assert (=> bs!1881027 m!7801388))

(declare-fun m!7801888 () Bool)

(assert (=> bs!1881027 m!7801888))

(assert (=> bs!1881027 m!7801388))

(declare-fun m!7801890 () Bool)

(assert (=> bs!1881027 m!7801890))

(assert (=> b!7074138 d!2212391))

(declare-fun b!7074441 () Bool)

(declare-fun e!4253170 () (Set Context!13300))

(assert (=> b!7074441 (= e!4253170 (as set.empty (Set Context!13300)))))

(declare-fun b!7074442 () Bool)

(declare-fun c!1319805 () Bool)

(assert (=> b!7074442 (= c!1319805 (is-Star!17654 (h!74813 (exprs!7150 lt!2547816))))))

(declare-fun e!4253168 () (Set Context!13300))

(assert (=> b!7074442 (= e!4253168 e!4253170)))

(declare-fun b!7074443 () Bool)

(declare-fun e!4253167 () (Set Context!13300))

(declare-fun call!642939 () (Set Context!13300))

(declare-fun call!642943 () (Set Context!13300))

(assert (=> b!7074443 (= e!4253167 (set.union call!642939 call!642943))))

(declare-fun b!7074444 () Bool)

(declare-fun call!642941 () (Set Context!13300))

(assert (=> b!7074444 (= e!4253170 call!642941)))

(declare-fun b!7074445 () Bool)

(declare-fun e!4253171 () (Set Context!13300))

(assert (=> b!7074445 (= e!4253171 (set.insert lt!2547803 (as set.empty (Set Context!13300))))))

(declare-fun bm!642934 () Bool)

(declare-fun c!1319804 () Bool)

(declare-fun call!642944 () List!68489)

(assert (=> bm!642934 (= call!642939 (derivationStepZipperDown!2288 (ite c!1319804 (regTwo!35821 (h!74813 (exprs!7150 lt!2547816))) (regOne!35820 (h!74813 (exprs!7150 lt!2547816)))) (ite c!1319804 lt!2547803 (Context!13301 call!642944)) (h!74812 s!7408)))))

(declare-fun bm!642935 () Bool)

(declare-fun c!1319807 () Bool)

(declare-fun c!1319803 () Bool)

(assert (=> bm!642935 (= call!642944 ($colon$colon!2664 (exprs!7150 lt!2547803) (ite (or c!1319807 c!1319803) (regTwo!35820 (h!74813 (exprs!7150 lt!2547816))) (h!74813 (exprs!7150 lt!2547816)))))))

(declare-fun bm!642936 () Bool)

(assert (=> bm!642936 (= call!642941 call!642943)))

(declare-fun b!7074447 () Bool)

(assert (=> b!7074447 (= e!4253167 e!4253168)))

(assert (=> b!7074447 (= c!1319803 (is-Concat!26499 (h!74813 (exprs!7150 lt!2547816))))))

(declare-fun b!7074448 () Bool)

(declare-fun e!4253169 () Bool)

(assert (=> b!7074448 (= c!1319807 e!4253169)))

(declare-fun res!2889523 () Bool)

(assert (=> b!7074448 (=> (not res!2889523) (not e!4253169))))

(assert (=> b!7074448 (= res!2889523 (is-Concat!26499 (h!74813 (exprs!7150 lt!2547816))))))

(declare-fun e!4253166 () (Set Context!13300))

(assert (=> b!7074448 (= e!4253166 e!4253167)))

(declare-fun bm!642937 () Bool)

(declare-fun call!642940 () (Set Context!13300))

(assert (=> bm!642937 (= call!642943 call!642940)))

(declare-fun bm!642938 () Bool)

(declare-fun call!642942 () List!68489)

(assert (=> bm!642938 (= call!642940 (derivationStepZipperDown!2288 (ite c!1319804 (regOne!35821 (h!74813 (exprs!7150 lt!2547816))) (ite c!1319807 (regTwo!35820 (h!74813 (exprs!7150 lt!2547816))) (ite c!1319803 (regOne!35820 (h!74813 (exprs!7150 lt!2547816))) (reg!17983 (h!74813 (exprs!7150 lt!2547816)))))) (ite (or c!1319804 c!1319807) lt!2547803 (Context!13301 call!642942)) (h!74812 s!7408)))))

(declare-fun b!7074446 () Bool)

(assert (=> b!7074446 (= e!4253169 (nullable!7337 (regOne!35820 (h!74813 (exprs!7150 lt!2547816)))))))

(declare-fun d!2212393 () Bool)

(declare-fun c!1319806 () Bool)

(assert (=> d!2212393 (= c!1319806 (and (is-ElementMatch!17654 (h!74813 (exprs!7150 lt!2547816))) (= (c!1319726 (h!74813 (exprs!7150 lt!2547816))) (h!74812 s!7408))))))

(assert (=> d!2212393 (= (derivationStepZipperDown!2288 (h!74813 (exprs!7150 lt!2547816)) lt!2547803 (h!74812 s!7408)) e!4253171)))

(declare-fun bm!642939 () Bool)

(assert (=> bm!642939 (= call!642942 call!642944)))

(declare-fun b!7074449 () Bool)

(assert (=> b!7074449 (= e!4253168 call!642941)))

(declare-fun b!7074450 () Bool)

(assert (=> b!7074450 (= e!4253171 e!4253166)))

(assert (=> b!7074450 (= c!1319804 (is-Union!17654 (h!74813 (exprs!7150 lt!2547816))))))

(declare-fun b!7074451 () Bool)

(assert (=> b!7074451 (= e!4253166 (set.union call!642940 call!642939))))

(assert (= (and d!2212393 c!1319806) b!7074445))

(assert (= (and d!2212393 (not c!1319806)) b!7074450))

(assert (= (and b!7074450 c!1319804) b!7074451))

(assert (= (and b!7074450 (not c!1319804)) b!7074448))

(assert (= (and b!7074448 res!2889523) b!7074446))

(assert (= (and b!7074448 c!1319807) b!7074443))

(assert (= (and b!7074448 (not c!1319807)) b!7074447))

(assert (= (and b!7074447 c!1319803) b!7074449))

(assert (= (and b!7074447 (not c!1319803)) b!7074442))

(assert (= (and b!7074442 c!1319805) b!7074444))

(assert (= (and b!7074442 (not c!1319805)) b!7074441))

(assert (= (or b!7074449 b!7074444) bm!642939))

(assert (= (or b!7074449 b!7074444) bm!642936))

(assert (= (or b!7074443 bm!642936) bm!642937))

(assert (= (or b!7074443 bm!642939) bm!642935))

(assert (= (or b!7074451 bm!642937) bm!642938))

(assert (= (or b!7074451 b!7074443) bm!642934))

(declare-fun m!7801892 () Bool)

(assert (=> b!7074445 m!7801892))

(declare-fun m!7801894 () Bool)

(assert (=> bm!642938 m!7801894))

(declare-fun m!7801896 () Bool)

(assert (=> bm!642935 m!7801896))

(assert (=> b!7074446 m!7801774))

(declare-fun m!7801898 () Bool)

(assert (=> bm!642934 m!7801898))

(assert (=> b!7074138 d!2212393))

(declare-fun b!7074452 () Bool)

(declare-fun res!2889525 () Bool)

(declare-fun e!4253175 () Bool)

(assert (=> b!7074452 (=> (not res!2889525) (not e!4253175))))

(declare-fun lt!2548067 () Option!16973)

(assert (=> b!7074452 (= res!2889525 (matchZipper!3194 lt!2547836 (_1!37444 (get!23951 lt!2548067))))))

(declare-fun b!7074453 () Bool)

(declare-fun e!4253173 () Option!16973)

(assert (=> b!7074453 (= e!4253173 (Some!16972 (tuple2!68283 Nil!68364 (t!382271 s!7408))))))

(declare-fun b!7074454 () Bool)

(assert (=> b!7074454 (= e!4253175 (= (++!15791 (_1!37444 (get!23951 lt!2548067)) (_2!37444 (get!23951 lt!2548067))) (t!382271 s!7408)))))

(declare-fun b!7074455 () Bool)

(declare-fun e!4253174 () Bool)

(assert (=> b!7074455 (= e!4253174 (not (isDefined!13674 lt!2548067)))))

(declare-fun b!7074457 () Bool)

(declare-fun res!2889527 () Bool)

(assert (=> b!7074457 (=> (not res!2889527) (not e!4253175))))

(assert (=> b!7074457 (= res!2889527 (matchZipper!3194 lt!2547796 (_2!37444 (get!23951 lt!2548067))))))

(declare-fun b!7074458 () Bool)

(declare-fun e!4253176 () Option!16973)

(assert (=> b!7074458 (= e!4253176 None!16972)))

(declare-fun b!7074459 () Bool)

(assert (=> b!7074459 (= e!4253173 e!4253176)))

(declare-fun c!1319809 () Bool)

(assert (=> b!7074459 (= c!1319809 (is-Nil!68364 (t!382271 s!7408)))))

(declare-fun b!7074460 () Bool)

(declare-fun lt!2548068 () Unit!162018)

(declare-fun lt!2548066 () Unit!162018)

(assert (=> b!7074460 (= lt!2548068 lt!2548066)))

(assert (=> b!7074460 (= (++!15791 (++!15791 Nil!68364 (Cons!68364 (h!74812 (t!382271 s!7408)) Nil!68364)) (t!382271 (t!382271 s!7408))) (t!382271 s!7408))))

(assert (=> b!7074460 (= lt!2548066 (lemmaMoveElementToOtherListKeepsConcatEq!2979 Nil!68364 (h!74812 (t!382271 s!7408)) (t!382271 (t!382271 s!7408)) (t!382271 s!7408)))))

(assert (=> b!7074460 (= e!4253176 (findConcatSeparationZippers!489 lt!2547836 lt!2547796 (++!15791 Nil!68364 (Cons!68364 (h!74812 (t!382271 s!7408)) Nil!68364)) (t!382271 (t!382271 s!7408)) (t!382271 s!7408)))))

(declare-fun b!7074456 () Bool)

(declare-fun e!4253172 () Bool)

(assert (=> b!7074456 (= e!4253172 (matchZipper!3194 lt!2547796 (t!382271 s!7408)))))

(declare-fun d!2212395 () Bool)

(assert (=> d!2212395 e!4253174))

(declare-fun res!2889524 () Bool)

(assert (=> d!2212395 (=> res!2889524 e!4253174)))

(assert (=> d!2212395 (= res!2889524 e!4253175)))

(declare-fun res!2889528 () Bool)

(assert (=> d!2212395 (=> (not res!2889528) (not e!4253175))))

(assert (=> d!2212395 (= res!2889528 (isDefined!13674 lt!2548067))))

(assert (=> d!2212395 (= lt!2548067 e!4253173)))

(declare-fun c!1319808 () Bool)

(assert (=> d!2212395 (= c!1319808 e!4253172)))

(declare-fun res!2889526 () Bool)

(assert (=> d!2212395 (=> (not res!2889526) (not e!4253172))))

(assert (=> d!2212395 (= res!2889526 (matchZipper!3194 lt!2547836 Nil!68364))))

(assert (=> d!2212395 (= (++!15791 Nil!68364 (t!382271 s!7408)) (t!382271 s!7408))))

(assert (=> d!2212395 (= (findConcatSeparationZippers!489 lt!2547836 lt!2547796 Nil!68364 (t!382271 s!7408) (t!382271 s!7408)) lt!2548067)))

(assert (= (and d!2212395 res!2889526) b!7074456))

(assert (= (and d!2212395 c!1319808) b!7074453))

(assert (= (and d!2212395 (not c!1319808)) b!7074459))

(assert (= (and b!7074459 c!1319809) b!7074458))

(assert (= (and b!7074459 (not c!1319809)) b!7074460))

(assert (= (and d!2212395 res!2889528) b!7074452))

(assert (= (and b!7074452 res!2889525) b!7074457))

(assert (= (and b!7074457 res!2889527) b!7074454))

(assert (= (and d!2212395 (not res!2889524)) b!7074455))

(declare-fun m!7801900 () Bool)

(assert (=> b!7074457 m!7801900))

(declare-fun m!7801902 () Bool)

(assert (=> b!7074457 m!7801902))

(declare-fun m!7801904 () Bool)

(assert (=> b!7074455 m!7801904))

(assert (=> b!7074452 m!7801900))

(declare-fun m!7801906 () Bool)

(assert (=> b!7074452 m!7801906))

(assert (=> b!7074454 m!7801900))

(declare-fun m!7801908 () Bool)

(assert (=> b!7074454 m!7801908))

(assert (=> d!2212395 m!7801904))

(declare-fun m!7801910 () Bool)

(assert (=> d!2212395 m!7801910))

(declare-fun m!7801912 () Bool)

(assert (=> d!2212395 m!7801912))

(declare-fun m!7801914 () Bool)

(assert (=> b!7074456 m!7801914))

(declare-fun m!7801916 () Bool)

(assert (=> b!7074460 m!7801916))

(assert (=> b!7074460 m!7801916))

(declare-fun m!7801918 () Bool)

(assert (=> b!7074460 m!7801918))

(declare-fun m!7801920 () Bool)

(assert (=> b!7074460 m!7801920))

(assert (=> b!7074460 m!7801916))

(declare-fun m!7801922 () Bool)

(assert (=> b!7074460 m!7801922))

(assert (=> b!7074138 d!2212395))

(declare-fun d!2212397 () Bool)

(assert (=> d!2212397 (= (isDefined!13674 lt!2547832) (not (isEmpty!39904 lt!2547832)))))

(declare-fun bs!1881028 () Bool)

(assert (= bs!1881028 d!2212397))

(declare-fun m!7801924 () Bool)

(assert (=> bs!1881028 m!7801924))

(assert (=> b!7074138 d!2212397))

(declare-fun b!7074462 () Bool)

(declare-fun e!4253178 () List!68488)

(assert (=> b!7074462 (= e!4253178 (Cons!68364 (h!74812 (_1!37444 lt!2547804)) (++!15791 (t!382271 (_1!37444 lt!2547804)) (_2!37444 lt!2547804))))))

(declare-fun b!7074463 () Bool)

(declare-fun res!2889529 () Bool)

(declare-fun e!4253177 () Bool)

(assert (=> b!7074463 (=> (not res!2889529) (not e!4253177))))

(declare-fun lt!2548069 () List!68488)

(assert (=> b!7074463 (= res!2889529 (= (size!41223 lt!2548069) (+ (size!41223 (_1!37444 lt!2547804)) (size!41223 (_2!37444 lt!2547804)))))))

(declare-fun d!2212399 () Bool)

(assert (=> d!2212399 e!4253177))

(declare-fun res!2889530 () Bool)

(assert (=> d!2212399 (=> (not res!2889530) (not e!4253177))))

(assert (=> d!2212399 (= res!2889530 (= (content!13811 lt!2548069) (set.union (content!13811 (_1!37444 lt!2547804)) (content!13811 (_2!37444 lt!2547804)))))))

(assert (=> d!2212399 (= lt!2548069 e!4253178)))

(declare-fun c!1319810 () Bool)

(assert (=> d!2212399 (= c!1319810 (is-Nil!68364 (_1!37444 lt!2547804)))))

(assert (=> d!2212399 (= (++!15791 (_1!37444 lt!2547804) (_2!37444 lt!2547804)) lt!2548069)))

(declare-fun b!7074461 () Bool)

(assert (=> b!7074461 (= e!4253178 (_2!37444 lt!2547804))))

(declare-fun b!7074464 () Bool)

(assert (=> b!7074464 (= e!4253177 (or (not (= (_2!37444 lt!2547804) Nil!68364)) (= lt!2548069 (_1!37444 lt!2547804))))))

(assert (= (and d!2212399 c!1319810) b!7074461))

(assert (= (and d!2212399 (not c!1319810)) b!7074462))

(assert (= (and d!2212399 res!2889530) b!7074463))

(assert (= (and b!7074463 res!2889529) b!7074464))

(declare-fun m!7801926 () Bool)

(assert (=> b!7074462 m!7801926))

(declare-fun m!7801928 () Bool)

(assert (=> b!7074463 m!7801928))

(declare-fun m!7801930 () Bool)

(assert (=> b!7074463 m!7801930))

(assert (=> b!7074463 m!7801846))

(declare-fun m!7801932 () Bool)

(assert (=> d!2212399 m!7801932))

(declare-fun m!7801934 () Bool)

(assert (=> d!2212399 m!7801934))

(assert (=> d!2212399 m!7801852))

(assert (=> b!7074137 d!2212399))

(declare-fun d!2212401 () Bool)

(declare-fun c!1319811 () Bool)

(assert (=> d!2212401 (= c!1319811 (isEmpty!39903 lt!2547823))))

(declare-fun e!4253179 () Bool)

(assert (=> d!2212401 (= (matchZipper!3194 lt!2547818 lt!2547823) e!4253179)))

(declare-fun b!7074465 () Bool)

(assert (=> b!7074465 (= e!4253179 (nullableZipper!2705 lt!2547818))))

(declare-fun b!7074466 () Bool)

(assert (=> b!7074466 (= e!4253179 (matchZipper!3194 (derivationStepZipper!3104 lt!2547818 (head!14413 lt!2547823)) (tail!13845 lt!2547823)))))

(assert (= (and d!2212401 c!1319811) b!7074465))

(assert (= (and d!2212401 (not c!1319811)) b!7074466))

(assert (=> d!2212401 m!7801674))

(declare-fun m!7801936 () Bool)

(assert (=> b!7074465 m!7801936))

(assert (=> b!7074466 m!7801678))

(assert (=> b!7074466 m!7801678))

(declare-fun m!7801938 () Bool)

(assert (=> b!7074466 m!7801938))

(assert (=> b!7074466 m!7801682))

(assert (=> b!7074466 m!7801938))

(assert (=> b!7074466 m!7801682))

(declare-fun m!7801940 () Bool)

(assert (=> b!7074466 m!7801940))

(assert (=> b!7074156 d!2212401))

(declare-fun d!2212403 () Bool)

(declare-fun c!1319812 () Bool)

(assert (=> d!2212403 (= c!1319812 (isEmpty!39903 (_1!37444 lt!2547804)))))

(declare-fun e!4253180 () Bool)

(assert (=> d!2212403 (= (matchZipper!3194 lt!2547805 (_1!37444 lt!2547804)) e!4253180)))

(declare-fun b!7074467 () Bool)

(assert (=> b!7074467 (= e!4253180 (nullableZipper!2705 lt!2547805))))

(declare-fun b!7074468 () Bool)

(assert (=> b!7074468 (= e!4253180 (matchZipper!3194 (derivationStepZipper!3104 lt!2547805 (head!14413 (_1!37444 lt!2547804))) (tail!13845 (_1!37444 lt!2547804))))))

(assert (= (and d!2212403 c!1319812) b!7074467))

(assert (= (and d!2212403 (not c!1319812)) b!7074468))

(assert (=> d!2212403 m!7801830))

(declare-fun m!7801942 () Bool)

(assert (=> b!7074467 m!7801942))

(assert (=> b!7074468 m!7801834))

(assert (=> b!7074468 m!7801834))

(declare-fun m!7801944 () Bool)

(assert (=> b!7074468 m!7801944))

(assert (=> b!7074468 m!7801838))

(assert (=> b!7074468 m!7801944))

(assert (=> b!7074468 m!7801838))

(declare-fun m!7801946 () Bool)

(assert (=> b!7074468 m!7801946))

(assert (=> b!7074156 d!2212403))

(declare-fun e!4253181 () Bool)

(declare-fun d!2212405 () Bool)

(assert (=> d!2212405 (= (matchZipper!3194 (set.union lt!2547836 lt!2547840) (_1!37444 lt!2547804)) e!4253181)))

(declare-fun res!2889531 () Bool)

(assert (=> d!2212405 (=> res!2889531 e!4253181)))

(assert (=> d!2212405 (= res!2889531 (matchZipper!3194 lt!2547836 (_1!37444 lt!2547804)))))

(declare-fun lt!2548070 () Unit!162018)

(assert (=> d!2212405 (= lt!2548070 (choose!54270 lt!2547836 lt!2547840 (_1!37444 lt!2547804)))))

(assert (=> d!2212405 (= (lemmaZipperConcatMatchesSameAsBothZippers!1667 lt!2547836 lt!2547840 (_1!37444 lt!2547804)) lt!2548070)))

(declare-fun b!7074469 () Bool)

(assert (=> b!7074469 (= e!4253181 (matchZipper!3194 lt!2547840 (_1!37444 lt!2547804)))))

(assert (= (and d!2212405 (not res!2889531)) b!7074469))

(declare-fun m!7801948 () Bool)

(assert (=> d!2212405 m!7801948))

(assert (=> d!2212405 m!7801394))

(declare-fun m!7801950 () Bool)

(assert (=> d!2212405 m!7801950))

(assert (=> b!7074469 m!7801324))

(assert (=> b!7074156 d!2212405))

(declare-fun d!2212407 () Bool)

(declare-fun nullableFct!2818 (Regex!17654) Bool)

(assert (=> d!2212407 (= (nullable!7337 (h!74813 (exprs!7150 lt!2547816))) (nullableFct!2818 (h!74813 (exprs!7150 lt!2547816))))))

(declare-fun bs!1881029 () Bool)

(assert (= bs!1881029 d!2212407))

(declare-fun m!7801952 () Bool)

(assert (=> bs!1881029 m!7801952))

(assert (=> b!7074135 d!2212407))

(declare-fun d!2212409 () Bool)

(assert (=> d!2212409 (= (tail!13843 (exprs!7150 lt!2547816)) (t!382272 (exprs!7150 lt!2547816)))))

(assert (=> b!7074135 d!2212409))

(declare-fun d!2212411 () Bool)

(assert (=> d!2212411 (= (flatMap!2580 lt!2547818 lambda!426186) (choose!54277 lt!2547818 lambda!426186))))

(declare-fun bs!1881030 () Bool)

(assert (= bs!1881030 d!2212411))

(declare-fun m!7801954 () Bool)

(assert (=> bs!1881030 m!7801954))

(assert (=> b!7074155 d!2212411))

(declare-fun b!7074470 () Bool)

(declare-fun e!4253184 () (Set Context!13300))

(declare-fun call!642945 () (Set Context!13300))

(assert (=> b!7074470 (= e!4253184 call!642945)))

(declare-fun b!7074471 () Bool)

(declare-fun e!4253182 () Bool)

(assert (=> b!7074471 (= e!4253182 (nullable!7337 (h!74813 (exprs!7150 lt!2547816))))))

(declare-fun d!2212413 () Bool)

(declare-fun c!1319813 () Bool)

(assert (=> d!2212413 (= c!1319813 e!4253182)))

(declare-fun res!2889532 () Bool)

(assert (=> d!2212413 (=> (not res!2889532) (not e!4253182))))

(assert (=> d!2212413 (= res!2889532 (is-Cons!68365 (exprs!7150 lt!2547816)))))

(declare-fun e!4253183 () (Set Context!13300))

(assert (=> d!2212413 (= (derivationStepZipperUp!2238 lt!2547816 (h!74812 s!7408)) e!4253183)))

(declare-fun b!7074472 () Bool)

(assert (=> b!7074472 (= e!4253183 (set.union call!642945 (derivationStepZipperUp!2238 (Context!13301 (t!382272 (exprs!7150 lt!2547816))) (h!74812 s!7408))))))

(declare-fun b!7074473 () Bool)

(assert (=> b!7074473 (= e!4253184 (as set.empty (Set Context!13300)))))

(declare-fun bm!642940 () Bool)

(assert (=> bm!642940 (= call!642945 (derivationStepZipperDown!2288 (h!74813 (exprs!7150 lt!2547816)) (Context!13301 (t!382272 (exprs!7150 lt!2547816))) (h!74812 s!7408)))))

(declare-fun b!7074474 () Bool)

(assert (=> b!7074474 (= e!4253183 e!4253184)))

(declare-fun c!1319814 () Bool)

(assert (=> b!7074474 (= c!1319814 (is-Cons!68365 (exprs!7150 lt!2547816)))))

(assert (= (and d!2212413 res!2889532) b!7074471))

(assert (= (and d!2212413 c!1319813) b!7074472))

(assert (= (and d!2212413 (not c!1319813)) b!7074474))

(assert (= (and b!7074474 c!1319814) b!7074470))

(assert (= (and b!7074474 (not c!1319814)) b!7074473))

(assert (= (or b!7074472 b!7074470) bm!642940))

(assert (=> b!7074471 m!7801442))

(declare-fun m!7801956 () Bool)

(assert (=> b!7074472 m!7801956))

(declare-fun m!7801958 () Bool)

(assert (=> bm!642940 m!7801958))

(assert (=> b!7074155 d!2212413))

(declare-fun d!2212415 () Bool)

(assert (=> d!2212415 (= (flatMap!2580 lt!2547818 lambda!426186) (dynLambda!27823 lambda!426186 lt!2547816))))

(declare-fun lt!2548071 () Unit!162018)

(assert (=> d!2212415 (= lt!2548071 (choose!54276 lt!2547818 lt!2547816 lambda!426186))))

(assert (=> d!2212415 (= lt!2547818 (set.insert lt!2547816 (as set.empty (Set Context!13300))))))

(assert (=> d!2212415 (= (lemmaFlatMapOnSingletonSet!2089 lt!2547818 lt!2547816 lambda!426186) lt!2548071)))

(declare-fun b_lambda!270101 () Bool)

(assert (=> (not b_lambda!270101) (not d!2212415)))

(declare-fun bs!1881031 () Bool)

(assert (= bs!1881031 d!2212415))

(assert (=> bs!1881031 m!7801342))

(declare-fun m!7801960 () Bool)

(assert (=> bs!1881031 m!7801960))

(declare-fun m!7801962 () Bool)

(assert (=> bs!1881031 m!7801962))

(assert (=> bs!1881031 m!7801340))

(assert (=> b!7074155 d!2212415))

(declare-fun bs!1881032 () Bool)

(declare-fun d!2212417 () Bool)

(assert (= bs!1881032 (and d!2212417 b!7074145)))

(declare-fun lambda!426260 () Int)

(assert (=> bs!1881032 (= lambda!426260 lambda!426186)))

(declare-fun bs!1881033 () Bool)

(assert (= bs!1881033 (and d!2212417 d!2212367)))

(assert (=> bs!1881033 (= lambda!426260 lambda!426249)))

(assert (=> d!2212417 true))

(assert (=> d!2212417 (= (derivationStepZipper!3104 lt!2547818 (h!74812 s!7408)) (flatMap!2580 lt!2547818 lambda!426260))))

(declare-fun bs!1881034 () Bool)

(assert (= bs!1881034 d!2212417))

(declare-fun m!7801964 () Bool)

(assert (=> bs!1881034 m!7801964))

(assert (=> b!7074155 d!2212417))

(declare-fun d!2212419 () Bool)

(assert (=> d!2212419 (= (isEmpty!39901 (exprs!7150 lt!2547816)) (is-Nil!68365 (exprs!7150 lt!2547816)))))

(assert (=> b!7074154 d!2212419))

(declare-fun b!7074479 () Bool)

(declare-fun e!4253187 () Bool)

(declare-fun tp!1942555 () Bool)

(declare-fun tp!1942556 () Bool)

(assert (=> b!7074479 (= e!4253187 (and tp!1942555 tp!1942556))))

(assert (=> b!7074129 (= tp!1942537 e!4253187)))

(assert (= (and b!7074129 (is-Cons!68365 (exprs!7150 ct2!306))) b!7074479))

(declare-fun b!7074480 () Bool)

(declare-fun e!4253188 () Bool)

(declare-fun tp!1942557 () Bool)

(declare-fun tp!1942558 () Bool)

(assert (=> b!7074480 (= e!4253188 (and tp!1942557 tp!1942558))))

(assert (=> b!7074128 (= tp!1942538 e!4253188)))

(assert (= (and b!7074128 (is-Cons!68365 (exprs!7150 setElem!50306))) b!7074480))

(declare-fun condSetEmpty!50312 () Bool)

(assert (=> setNonEmpty!50306 (= condSetEmpty!50312 (= setRest!50306 (as set.empty (Set Context!13300))))))

(declare-fun setRes!50312 () Bool)

(assert (=> setNonEmpty!50306 (= tp!1942536 setRes!50312)))

(declare-fun setIsEmpty!50312 () Bool)

(assert (=> setIsEmpty!50312 setRes!50312))

(declare-fun setNonEmpty!50312 () Bool)

(declare-fun e!4253191 () Bool)

(declare-fun setElem!50312 () Context!13300)

(declare-fun tp!1942564 () Bool)

(assert (=> setNonEmpty!50312 (= setRes!50312 (and tp!1942564 (inv!86995 setElem!50312) e!4253191))))

(declare-fun setRest!50312 () (Set Context!13300))

(assert (=> setNonEmpty!50312 (= setRest!50306 (set.union (set.insert setElem!50312 (as set.empty (Set Context!13300))) setRest!50312))))

(declare-fun b!7074485 () Bool)

(declare-fun tp!1942563 () Bool)

(assert (=> b!7074485 (= e!4253191 tp!1942563)))

(assert (= (and setNonEmpty!50306 condSetEmpty!50312) setIsEmpty!50312))

(assert (= (and setNonEmpty!50306 (not condSetEmpty!50312)) setNonEmpty!50312))

(assert (= setNonEmpty!50312 b!7074485))

(declare-fun m!7801966 () Bool)

(assert (=> setNonEmpty!50312 m!7801966))

(declare-fun b!7074490 () Bool)

(declare-fun e!4253194 () Bool)

(declare-fun tp!1942567 () Bool)

(assert (=> b!7074490 (= e!4253194 (and tp_is_empty!44533 tp!1942567))))

(assert (=> b!7074140 (= tp!1942535 e!4253194)))

(assert (= (and b!7074140 (is-Cons!68364 (t!382271 s!7408))) b!7074490))

(declare-fun b_lambda!270103 () Bool)

(assert (= b_lambda!270099 (or b!7074145 b_lambda!270103)))

(declare-fun bs!1881035 () Bool)

(declare-fun d!2212421 () Bool)

(assert (= bs!1881035 (and d!2212421 b!7074145)))

(assert (=> bs!1881035 (= (dynLambda!27823 lambda!426186 lt!2547814) (derivationStepZipperUp!2238 lt!2547814 (h!74812 s!7408)))))

(assert (=> bs!1881035 m!7801356))

(assert (=> d!2212365 d!2212421))

(declare-fun b_lambda!270105 () Bool)

(assert (= b_lambda!270097 (or b!7074150 b_lambda!270105)))

(declare-fun bs!1881036 () Bool)

(declare-fun d!2212423 () Bool)

(assert (= bs!1881036 (and d!2212423 b!7074150)))

(declare-fun lt!2548072 () Unit!162018)

(assert (=> bs!1881036 (= lt!2548072 (lemmaConcatPreservesForall!965 (exprs!7150 lt!2548046) (exprs!7150 ct2!306) lambda!426185))))

(assert (=> bs!1881036 (= (dynLambda!27822 lambda!426184 lt!2548046) (Context!13301 (++!15792 (exprs!7150 lt!2548046) (exprs!7150 ct2!306))))))

(declare-fun m!7801968 () Bool)

(assert (=> bs!1881036 m!7801968))

(declare-fun m!7801970 () Bool)

(assert (=> bs!1881036 m!7801970))

(assert (=> d!2212349 d!2212423))

(declare-fun b_lambda!270107 () Bool)

(assert (= b_lambda!270095 (or b!7074134 b_lambda!270107)))

(declare-fun bs!1881037 () Bool)

(declare-fun d!2212425 () Bool)

(assert (= bs!1881037 (and d!2212425 b!7074134)))

(assert (=> bs!1881037 (= (dynLambda!27820 lambda!426183 lt!2548002) (matchZipper!3194 (set.insert lt!2548002 (as set.empty (Set Context!13300))) s!7408))))

(declare-fun m!7801972 () Bool)

(assert (=> bs!1881037 m!7801972))

(assert (=> bs!1881037 m!7801972))

(declare-fun m!7801974 () Bool)

(assert (=> bs!1881037 m!7801974))

(assert (=> d!2212301 d!2212425))

(declare-fun b_lambda!270109 () Bool)

(assert (= b_lambda!270101 (or b!7074145 b_lambda!270109)))

(declare-fun bs!1881038 () Bool)

(declare-fun d!2212427 () Bool)

(assert (= bs!1881038 (and d!2212427 b!7074145)))

(assert (=> bs!1881038 (= (dynLambda!27823 lambda!426186 lt!2547816) (derivationStepZipperUp!2238 lt!2547816 (h!74812 s!7408)))))

(assert (=> bs!1881038 m!7801346))

(assert (=> d!2212415 d!2212427))

(push 1)

(assert (not b!7074402))

(assert (not bm!642933))

(assert (not d!2212339))

(assert (not d!2212383))

(assert (not d!2212405))

(assert (not b!7074330))

(assert (not b!7074286))

(assert (not b!7074471))

(assert (not b!7074440))

(assert (not d!2212349))

(assert (not b!7074430))

(assert (not b!7074446))

(assert (not b!7074455))

(assert (not b!7074452))

(assert (not d!2212329))

(assert (not d!2212321))

(assert (not d!2212323))

(assert (not b!7074365))

(assert (not b_lambda!270103))

(assert (not b!7074319))

(assert (not d!2212367))

(assert (not d!2212345))

(assert (not b!7074480))

(assert (not b!7074329))

(assert (not d!2212407))

(assert (not b!7074395))

(assert (not d!2212371))

(assert (not b!7074479))

(assert (not b!7074346))

(assert (not b!7074454))

(assert (not b_lambda!270107))

(assert (not bm!642913))

(assert (not b!7074490))

(assert (not d!2212311))

(assert (not b!7074467))

(assert (not bm!642930))

(assert (not b!7074347))

(assert (not b!7074327))

(assert (not d!2212387))

(assert tp_is_empty!44533)

(assert (not b!7074280))

(assert (not b!7074421))

(assert (not b!7074324))

(assert (not b!7074463))

(assert (not d!2212327))

(assert (not b!7074434))

(assert (not b!7074300))

(assert (not b!7074431))

(assert (not b!7074328))

(assert (not b!7074466))

(assert (not b!7074275))

(assert (not bm!642935))

(assert (not b!7074438))

(assert (not d!2212301))

(assert (not d!2212391))

(assert (not b!7074465))

(assert (not d!2212309))

(assert (not d!2212373))

(assert (not d!2212347))

(assert (not b!7074297))

(assert (not b!7074419))

(assert (not d!2212403))

(assert (not d!2212377))

(assert (not d!2212313))

(assert (not d!2212331))

(assert (not b!7074267))

(assert (not d!2212337))

(assert (not d!2212305))

(assert (not b!7074429))

(assert (not b!7074282))

(assert (not bm!642932))

(assert (not b!7074296))

(assert (not d!2212365))

(assert (not b!7074423))

(assert (not b!7074276))

(assert (not d!2212303))

(assert (not b!7074364))

(assert (not b!7074281))

(assert (not d!2212399))

(assert (not bm!642934))

(assert (not d!2212335))

(assert (not b!7074323))

(assert (not b!7074321))

(assert (not b!7074472))

(assert (not d!2212379))

(assert (not b!7074403))

(assert (not b!7074462))

(assert (not d!2212395))

(assert (not b!7074424))

(assert (not d!2212315))

(assert (not b!7074285))

(assert (not d!2212341))

(assert (not b!7074432))

(assert (not b_lambda!270105))

(assert (not b!7074468))

(assert (not d!2212369))

(assert (not bm!642927))

(assert (not b!7074437))

(assert (not bs!1881035))

(assert (not d!2212319))

(assert (not b!7074420))

(assert (not b!7074322))

(assert (not d!2212381))

(assert (not setNonEmpty!50312))

(assert (not d!2212307))

(assert (not d!2212415))

(assert (not d!2212397))

(assert (not d!2212355))

(assert (not b!7074456))

(assert (not bs!1881037))

(assert (not bm!642938))

(assert (not d!2212333))

(assert (not b!7074407))

(assert (not b!7074406))

(assert (not bs!1881038))

(assert (not b!7074283))

(assert (not d!2212401))

(assert (not b!7074457))

(assert (not d!2212325))

(assert (not d!2212417))

(assert (not b!7074274))

(assert (not bm!642940))

(assert (not d!2212411))

(assert (not b!7074299))

(assert (not b!7074469))

(assert (not b!7074336))

(assert (not d!2212317))

(assert (not b!7074435))

(assert (not b!7074439))

(assert (not bm!642926))

(assert (not d!2212359))

(assert (not b!7074277))

(assert (not d!2212375))

(assert (not b!7074485))

(assert (not b!7074284))

(assert (not d!2212385))

(assert (not b_lambda!270109))

(assert (not bs!1881036))

(assert (not b!7074460))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

