; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!674104 () Bool)

(assert start!674104)

(declare-fun b!7004693 () Bool)

(assert (=> b!7004693 true))

(declare-fun b!7004691 () Bool)

(assert (=> b!7004691 true))

(declare-fun b!7004690 () Bool)

(assert (=> b!7004690 true))

(declare-fun bs!1865208 () Bool)

(declare-fun b!7004694 () Bool)

(assert (= bs!1865208 (and b!7004694 b!7004693)))

(declare-fun lambda!406737 () Int)

(declare-fun lambda!406733 () Int)

(assert (=> bs!1865208 (not (= lambda!406737 lambda!406733))))

(declare-fun bs!1865209 () Bool)

(declare-fun b!7004670 () Bool)

(assert (= bs!1865209 (and b!7004670 b!7004693)))

(declare-datatypes ((C!34846 0))(
  ( (C!34847 (val!27125 Int)) )
))
(declare-datatypes ((List!67409 0))(
  ( (Nil!67285) (Cons!67285 (h!73733 C!34846) (t!381162 List!67409)) )
))
(declare-datatypes ((tuple2!67922 0))(
  ( (tuple2!67923 (_1!37264 List!67409) (_2!37264 List!67409)) )
))
(declare-fun lt!2500040 () tuple2!67922)

(declare-fun s!7408 () List!67409)

(declare-fun lambda!406738 () Int)

(assert (=> bs!1865209 (= (= (_1!37264 lt!2500040) s!7408) (= lambda!406738 lambda!406733))))

(declare-fun bs!1865210 () Bool)

(assert (= bs!1865210 (and b!7004670 b!7004694)))

(assert (=> bs!1865210 (not (= lambda!406738 lambda!406737))))

(assert (=> b!7004670 true))

(declare-fun b!7004668 () Bool)

(declare-fun res!2857914 () Bool)

(declare-fun e!4210406 () Bool)

(assert (=> b!7004668 (=> res!2857914 e!4210406)))

(declare-datatypes ((Regex!17288 0))(
  ( (ElementMatch!17288 (c!1300679 C!34846)) (Concat!26133 (regOne!35088 Regex!17288) (regTwo!35088 Regex!17288)) (EmptyExpr!17288) (Star!17288 (reg!17617 Regex!17288)) (EmptyLang!17288) (Union!17288 (regOne!35089 Regex!17288) (regTwo!35089 Regex!17288)) )
))
(declare-datatypes ((List!67410 0))(
  ( (Nil!67286) (Cons!67286 (h!73734 Regex!17288) (t!381163 List!67410)) )
))
(declare-datatypes ((Context!12568 0))(
  ( (Context!12569 (exprs!6784 List!67410)) )
))
(declare-fun lt!2500100 () Context!12568)

(declare-fun lt!2500052 () Int)

(declare-datatypes ((List!67411 0))(
  ( (Nil!67287) (Cons!67287 (h!73735 Context!12568) (t!381164 List!67411)) )
))
(declare-fun zipperDepthTotal!509 (List!67411) Int)

(assert (=> b!7004668 (= res!2857914 (>= (zipperDepthTotal!509 (Cons!67287 lt!2500100 Nil!67287)) lt!2500052))))

(declare-fun b!7004669 () Bool)

(declare-fun res!2857910 () Bool)

(declare-fun e!4210404 () Bool)

(assert (=> b!7004669 (=> res!2857910 e!4210404)))

(declare-fun lt!2500045 () Context!12568)

(assert (=> b!7004669 (= res!2857910 (not (is-Cons!67286 (exprs!6784 lt!2500045))))))

(declare-fun lt!2500065 () (Set Context!12568))

(declare-fun lt!2500088 () (Set Context!12568))

(declare-fun c!1300678 () Bool)

(declare-datatypes ((Option!16793 0))(
  ( (None!16792) (Some!16792 (v!53070 tuple2!67922)) )
))
(declare-fun call!636030 () Option!16793)

(declare-fun bm!636024 () Bool)

(declare-fun lt!2500066 () (Set Context!12568))

(declare-fun findConcatSeparationZippers!309 ((Set Context!12568) (Set Context!12568) List!67409 List!67409 List!67409) Option!16793)

(assert (=> bm!636024 (= call!636030 (findConcatSeparationZippers!309 (ite c!1300678 lt!2500088 lt!2500066) lt!2500065 Nil!67285 s!7408 s!7408))))

(declare-fun res!2857907 () Bool)

(declare-fun e!4210394 () Bool)

(assert (=> start!674104 (=> (not res!2857907) (not e!4210394))))

(declare-fun lt!2500044 () (Set Context!12568))

(declare-fun matchZipper!2828 ((Set Context!12568) List!67409) Bool)

(assert (=> start!674104 (= res!2857907 (matchZipper!2828 lt!2500044 s!7408))))

(declare-fun z1!570 () (Set Context!12568))

(declare-fun ct2!306 () Context!12568)

(declare-fun appendTo!409 ((Set Context!12568) Context!12568) (Set Context!12568))

(assert (=> start!674104 (= lt!2500044 (appendTo!409 z1!570 ct2!306))))

(assert (=> start!674104 e!4210394))

(declare-fun condSetEmpty!48192 () Bool)

(assert (=> start!674104 (= condSetEmpty!48192 (= z1!570 (as set.empty (Set Context!12568))))))

(declare-fun setRes!48192 () Bool)

(assert (=> start!674104 setRes!48192))

(declare-fun e!4210387 () Bool)

(declare-fun inv!86080 (Context!12568) Bool)

(assert (=> start!674104 (and (inv!86080 ct2!306) e!4210387)))

(declare-fun e!4210398 () Bool)

(assert (=> start!674104 e!4210398))

(declare-fun bm!636025 () Bool)

(declare-fun call!636031 () Bool)

(declare-fun isDefined!13494 (Option!16793) Bool)

(assert (=> bm!636025 (= call!636031 (isDefined!13494 call!636030))))

(declare-fun e!4210395 () Bool)

(declare-fun ++!15277 (List!67409 List!67409) List!67409)

(assert (=> b!7004670 (= e!4210395 (= (++!15277 Nil!67285 s!7408) s!7408))))

(assert (=> b!7004670 (isDefined!13494 (findConcatSeparationZippers!309 z1!570 lt!2500065 Nil!67285 s!7408 s!7408))))

(declare-datatypes ((Unit!161248 0))(
  ( (Unit!161249) )
))
(declare-fun lt!2500056 () Unit!161248)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!11 ((Set Context!12568) (Set Context!12568) List!67409 List!67409 List!67409 List!67409 List!67409) Unit!161248)

(assert (=> b!7004670 (= lt!2500056 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!11 z1!570 lt!2500065 (_1!37264 lt!2500040) (_2!37264 lt!2500040) s!7408 Nil!67285 s!7408))))

(declare-fun lt!2500082 () List!67411)

(declare-fun content!13335 (List!67411) (Set Context!12568))

(assert (=> b!7004670 (matchZipper!2828 (content!13335 lt!2500082) (_1!37264 lt!2500040))))

(declare-fun lt!2500057 () Unit!161248)

(declare-fun lemmaExistsMatchingContextThenMatchingString!25 (List!67411 List!67409) Unit!161248)

(assert (=> b!7004670 (= lt!2500057 (lemmaExistsMatchingContextThenMatchingString!25 lt!2500082 (_1!37264 lt!2500040)))))

(declare-fun exists!3116 ((Set Context!12568) Int) Bool)

(assert (=> b!7004670 (exists!3116 z1!570 lambda!406738)))

(declare-fun lt!2500093 () Unit!161248)

(declare-fun lemmaContainsThenExists!92 ((Set Context!12568) Context!12568 Int) Unit!161248)

(assert (=> b!7004670 (= lt!2500093 (lemmaContainsThenExists!92 z1!570 lt!2500045 lambda!406738))))

(declare-fun lt!2500039 () Unit!161248)

(declare-fun e!4210390 () Unit!161248)

(assert (=> b!7004670 (= lt!2500039 e!4210390)))

(declare-fun isEmpty!39295 (List!67409) Bool)

(assert (=> b!7004670 (= c!1300678 (isEmpty!39295 (_1!37264 lt!2500040)))))

(declare-fun b!7004671 () Bool)

(declare-fun e!4210388 () Bool)

(declare-fun lt!2500059 () (Set Context!12568))

(assert (=> b!7004671 (= e!4210388 (not (matchZipper!2828 lt!2500059 (t!381162 s!7408))))))

(declare-fun lambda!406735 () Int)

(declare-fun lt!2500077 () List!67410)

(declare-fun lt!2500053 () Unit!161248)

(declare-fun lemmaConcatPreservesForall!624 (List!67410 List!67410 Int) Unit!161248)

(assert (=> b!7004671 (= lt!2500053 (lemmaConcatPreservesForall!624 lt!2500077 (exprs!6784 ct2!306) lambda!406735))))

(declare-fun b!7004672 () Bool)

(declare-fun e!4210405 () Bool)

(assert (=> b!7004672 (= e!4210405 e!4210406)))

(declare-fun res!2857916 () Bool)

(assert (=> b!7004672 (=> res!2857916 e!4210406)))

(declare-fun lt!2500081 () Int)

(declare-fun contextDepthTotal!481 (Context!12568) Int)

(assert (=> b!7004672 (= res!2857916 (<= lt!2500081 (contextDepthTotal!481 lt!2500100)))))

(assert (=> b!7004672 (<= lt!2500081 lt!2500052)))

(assert (=> b!7004672 (= lt!2500052 (zipperDepthTotal!509 lt!2500082))))

(assert (=> b!7004672 (= lt!2500081 (contextDepthTotal!481 lt!2500045))))

(declare-fun lt!2500091 () Unit!161248)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!49 (List!67411 Context!12568) Unit!161248)

(assert (=> b!7004672 (= lt!2500091 (lemmaTotalDepthZipperLargerThanOfAnyContext!49 lt!2500082 lt!2500045))))

(declare-fun toList!10648 ((Set Context!12568)) List!67411)

(assert (=> b!7004672 (= lt!2500082 (toList!10648 z1!570))))

(declare-fun lt!2500064 () Unit!161248)

(assert (=> b!7004672 (= lt!2500064 (lemmaConcatPreservesForall!624 lt!2500077 (exprs!6784 ct2!306) lambda!406735))))

(declare-fun lt!2500079 () Unit!161248)

(assert (=> b!7004672 (= lt!2500079 (lemmaConcatPreservesForall!624 lt!2500077 (exprs!6784 ct2!306) lambda!406735))))

(declare-fun lt!2500074 () Unit!161248)

(assert (=> b!7004672 (= lt!2500074 (lemmaConcatPreservesForall!624 lt!2500077 (exprs!6784 ct2!306) lambda!406735))))

(declare-fun lambda!406736 () Int)

(declare-fun lt!2500097 () (Set Context!12568))

(declare-fun flatMap!2274 ((Set Context!12568) Int) (Set Context!12568))

(declare-fun derivationStepZipperUp!1938 (Context!12568 C!34846) (Set Context!12568))

(assert (=> b!7004672 (= (flatMap!2274 lt!2500097 lambda!406736) (derivationStepZipperUp!1938 lt!2500100 (h!73733 s!7408)))))

(declare-fun lt!2500035 () Unit!161248)

(declare-fun lemmaFlatMapOnSingletonSet!1789 ((Set Context!12568) Context!12568 Int) Unit!161248)

(assert (=> b!7004672 (= lt!2500035 (lemmaFlatMapOnSingletonSet!1789 lt!2500097 lt!2500100 lambda!406736))))

(declare-fun lambda!406734 () Int)

(declare-fun map!15579 ((Set Context!12568) Int) (Set Context!12568))

(declare-fun ++!15278 (List!67410 List!67410) List!67410)

(assert (=> b!7004672 (= (map!15579 lt!2500097 lambda!406734) (set.insert (Context!12569 (++!15278 lt!2500077 (exprs!6784 ct2!306))) (as set.empty (Set Context!12568))))))

(declare-fun lt!2500090 () Unit!161248)

(assert (=> b!7004672 (= lt!2500090 (lemmaConcatPreservesForall!624 lt!2500077 (exprs!6784 ct2!306) lambda!406735))))

(declare-fun lt!2500063 () Unit!161248)

(declare-fun lemmaMapOnSingletonSet!353 ((Set Context!12568) Context!12568 Int) Unit!161248)

(assert (=> b!7004672 (= lt!2500063 (lemmaMapOnSingletonSet!353 lt!2500097 lt!2500100 lambda!406734))))

(assert (=> b!7004672 (= lt!2500097 (set.insert lt!2500100 (as set.empty (Set Context!12568))))))

(declare-fun b!7004673 () Bool)

(declare-fun e!4210389 () Bool)

(declare-fun tp!1931532 () Bool)

(assert (=> b!7004673 (= e!4210389 tp!1931532)))

(declare-fun b!7004674 () Bool)

(declare-fun tp_is_empty!43801 () Bool)

(declare-fun tp!1931533 () Bool)

(assert (=> b!7004674 (= e!4210398 (and tp_is_empty!43801 tp!1931533))))

(declare-fun b!7004675 () Bool)

(declare-fun e!4210391 () Bool)

(declare-fun lt!2500047 () (Set Context!12568))

(declare-fun lt!2500095 () List!67409)

(assert (=> b!7004675 (= e!4210391 (matchZipper!2828 lt!2500047 lt!2500095))))

(declare-fun b!7004676 () Bool)

(declare-fun res!2857905 () Bool)

(assert (=> b!7004676 (=> (not res!2857905) (not e!4210394))))

(assert (=> b!7004676 (= res!2857905 (is-Cons!67285 s!7408))))

(declare-fun b!7004677 () Bool)

(declare-fun e!4210400 () Bool)

(assert (=> b!7004677 (= e!4210404 e!4210400)))

(declare-fun res!2857911 () Bool)

(assert (=> b!7004677 (=> res!2857911 e!4210400)))

(declare-fun nullable!7048 (Regex!17288) Bool)

(assert (=> b!7004677 (= res!2857911 (not (nullable!7048 (h!73734 (exprs!6784 lt!2500045)))))))

(assert (=> b!7004677 (= lt!2500100 (Context!12569 lt!2500077))))

(declare-fun tail!13344 (List!67410) List!67410)

(assert (=> b!7004677 (= lt!2500077 (tail!13344 (exprs!6784 lt!2500045)))))

(declare-fun b!7004678 () Bool)

(declare-fun res!2857900 () Bool)

(declare-fun e!4210392 () Bool)

(assert (=> b!7004678 (=> res!2857900 e!4210392)))

(declare-fun lt!2500060 () Context!12568)

(assert (=> b!7004678 (= res!2857900 (not (set.member lt!2500060 lt!2500044)))))

(declare-fun b!7004679 () Bool)

(declare-fun e!4210403 () Bool)

(assert (=> b!7004679 (= e!4210403 (matchZipper!2828 lt!2500059 (t!381162 s!7408)))))

(declare-fun b!7004680 () Bool)

(declare-fun res!2857919 () Bool)

(assert (=> b!7004680 (=> res!2857919 e!4210404)))

(declare-fun isEmpty!39296 (List!67410) Bool)

(assert (=> b!7004680 (= res!2857919 (isEmpty!39296 (exprs!6784 lt!2500045)))))

(declare-fun call!636029 () Unit!161248)

(declare-fun bm!636026 () Bool)

(assert (=> bm!636026 (= call!636029 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!11 (ite c!1300678 lt!2500088 lt!2500066) lt!2500065 (_1!37264 lt!2500040) (_2!37264 lt!2500040) s!7408 Nil!67285 s!7408))))

(declare-fun b!7004681 () Bool)

(declare-fun e!4210397 () Bool)

(declare-fun e!4210402 () Bool)

(assert (=> b!7004681 (= e!4210397 e!4210402)))

(declare-fun res!2857906 () Bool)

(assert (=> b!7004681 (=> res!2857906 e!4210402)))

(assert (=> b!7004681 (= res!2857906 (not (matchZipper!2828 lt!2500059 (t!381162 s!7408))))))

(declare-fun lt!2500042 () Unit!161248)

(assert (=> b!7004681 (= lt!2500042 (lemmaConcatPreservesForall!624 lt!2500077 (exprs!6784 ct2!306) lambda!406735))))

(declare-fun b!7004682 () Bool)

(declare-fun e!4210401 () Bool)

(assert (=> b!7004682 (= e!4210401 e!4210405)))

(declare-fun res!2857922 () Bool)

(assert (=> b!7004682 (=> res!2857922 e!4210405)))

(declare-fun lt!2500054 () (Set Context!12568))

(assert (=> b!7004682 (= res!2857922 (not (matchZipper!2828 lt!2500054 s!7408)))))

(declare-fun lt!2500037 () Unit!161248)

(assert (=> b!7004682 (= lt!2500037 (lemmaConcatPreservesForall!624 lt!2500077 (exprs!6784 ct2!306) lambda!406735))))

(declare-fun b!7004683 () Bool)

(declare-fun e!4210399 () Bool)

(assert (=> b!7004683 (= e!4210400 e!4210399)))

(declare-fun res!2857915 () Bool)

(assert (=> b!7004683 (=> res!2857915 e!4210399)))

(declare-fun lt!2500101 () (Set Context!12568))

(declare-fun lt!2500070 () (Set Context!12568))

(assert (=> b!7004683 (= res!2857915 (not (= lt!2500101 lt!2500070)))))

(declare-fun lt!2500051 () (Set Context!12568))

(assert (=> b!7004683 (= lt!2500070 (set.union lt!2500051 lt!2500059))))

(declare-fun lt!2500083 () Context!12568)

(assert (=> b!7004683 (= lt!2500059 (derivationStepZipperUp!1938 lt!2500083 (h!73733 s!7408)))))

(declare-fun derivationStepZipperDown!2006 (Regex!17288 Context!12568 C!34846) (Set Context!12568))

(assert (=> b!7004683 (= lt!2500051 (derivationStepZipperDown!2006 (h!73734 (exprs!6784 lt!2500045)) lt!2500083 (h!73733 s!7408)))))

(assert (=> b!7004683 (= lt!2500083 (Context!12569 (++!15278 lt!2500077 (exprs!6784 ct2!306))))))

(declare-fun lt!2500085 () Unit!161248)

(assert (=> b!7004683 (= lt!2500085 (lemmaConcatPreservesForall!624 lt!2500077 (exprs!6784 ct2!306) lambda!406735))))

(declare-fun lt!2500058 () Unit!161248)

(assert (=> b!7004683 (= lt!2500058 (lemmaConcatPreservesForall!624 lt!2500077 (exprs!6784 ct2!306) lambda!406735))))

(declare-fun b!7004684 () Bool)

(declare-fun res!2857918 () Bool)

(assert (=> b!7004684 (=> res!2857918 e!4210395)))

(assert (=> b!7004684 (= res!2857918 (not (= (++!15277 (_1!37264 lt!2500040) (_2!37264 lt!2500040)) s!7408)))))

(declare-fun b!7004685 () Bool)

(declare-fun Unit!161250 () Unit!161248)

(assert (=> b!7004685 (= e!4210390 Unit!161250)))

(assert (=> b!7004685 (= lt!2500066 (set.insert lt!2500045 (as set.empty (Set Context!12568))))))

(declare-fun lt!2500076 () Unit!161248)

(assert (=> b!7004685 (= lt!2500076 (lemmaFlatMapOnSingletonSet!1789 lt!2500066 lt!2500045 lambda!406736))))

(assert (=> b!7004685 (= (flatMap!2274 lt!2500066 lambda!406736) (derivationStepZipperUp!1938 lt!2500045 (h!73733 s!7408)))))

(declare-fun lt!2500036 () (Set Context!12568))

(assert (=> b!7004685 (= lt!2500036 (derivationStepZipperDown!2006 (h!73734 (exprs!6784 lt!2500045)) lt!2500100 (h!73733 s!7408)))))

(assert (=> b!7004685 (= lt!2500047 (derivationStepZipperUp!1938 lt!2500100 (h!73733 s!7408)))))

(declare-fun tail!13345 (List!67409) List!67409)

(assert (=> b!7004685 (= lt!2500095 (tail!13345 (_1!37264 lt!2500040)))))

(declare-fun lt!2500038 () Unit!161248)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1461 ((Set Context!12568) (Set Context!12568) List!67409) Unit!161248)

(assert (=> b!7004685 (= lt!2500038 (lemmaZipperConcatMatchesSameAsBothZippers!1461 lt!2500036 lt!2500047 lt!2500095))))

(declare-fun res!2857913 () Bool)

(assert (=> b!7004685 (= res!2857913 (matchZipper!2828 lt!2500036 lt!2500095))))

(assert (=> b!7004685 (=> res!2857913 e!4210391)))

(assert (=> b!7004685 (= (matchZipper!2828 (set.union lt!2500036 lt!2500047) lt!2500095) e!4210391)))

(declare-fun lt!2500096 () Unit!161248)

(assert (=> b!7004685 (= lt!2500096 (lemmaFlatMapOnSingletonSet!1789 lt!2500097 lt!2500100 lambda!406736))))

(assert (=> b!7004685 (= (flatMap!2274 lt!2500097 lambda!406736) (derivationStepZipperUp!1938 lt!2500100 (h!73733 s!7408)))))

(declare-fun lt!2500069 () Unit!161248)

(assert (=> b!7004685 (= lt!2500069 call!636029)))

(assert (=> b!7004685 call!636031))

(declare-fun b!7004686 () Bool)

(declare-fun res!2857921 () Bool)

(assert (=> b!7004686 (=> res!2857921 e!4210397)))

(declare-fun lt!2500078 () Bool)

(assert (=> b!7004686 (= res!2857921 (not lt!2500078))))

(declare-fun b!7004687 () Bool)

(declare-fun tp!1931534 () Bool)

(assert (=> b!7004687 (= e!4210387 tp!1931534)))

(declare-fun b!7004688 () Bool)

(declare-fun res!2857899 () Bool)

(assert (=> b!7004688 (=> res!2857899 e!4210395)))

(assert (=> b!7004688 (= res!2857899 (not (matchZipper!2828 lt!2500065 (_2!37264 lt!2500040))))))

(declare-fun b!7004689 () Bool)

(assert (=> b!7004689 (= e!4210406 e!4210395)))

(declare-fun res!2857903 () Bool)

(assert (=> b!7004689 (=> res!2857903 e!4210395)))

(assert (=> b!7004689 (= res!2857903 (not (matchZipper!2828 lt!2500097 (_1!37264 lt!2500040))))))

(declare-fun lt!2500050 () Option!16793)

(declare-fun get!23602 (Option!16793) tuple2!67922)

(assert (=> b!7004689 (= lt!2500040 (get!23602 lt!2500050))))

(assert (=> b!7004689 (isDefined!13494 lt!2500050)))

(assert (=> b!7004689 (= lt!2500050 (findConcatSeparationZippers!309 lt!2500097 lt!2500065 Nil!67285 s!7408 s!7408))))

(assert (=> b!7004689 (= lt!2500065 (set.insert ct2!306 (as set.empty (Set Context!12568))))))

(declare-fun lt!2500061 () Unit!161248)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!309 ((Set Context!12568) Context!12568 List!67409) Unit!161248)

(assert (=> b!7004689 (= lt!2500061 (lemmaConcatZipperMatchesStringThenFindConcatDefined!309 lt!2500097 ct2!306 s!7408))))

(declare-fun e!4210393 () Bool)

(assert (=> b!7004690 (= e!4210393 e!4210404)))

(declare-fun res!2857909 () Bool)

(assert (=> b!7004690 (=> res!2857909 e!4210404)))

(declare-fun lt!2500098 () (Set Context!12568))

(declare-fun derivationStepZipper!2768 ((Set Context!12568) C!34846) (Set Context!12568))

(assert (=> b!7004690 (= res!2857909 (not (= (derivationStepZipper!2768 lt!2500098 (h!73733 s!7408)) lt!2500101)))))

(declare-fun lt!2500092 () Context!12568)

(assert (=> b!7004690 (= (flatMap!2274 lt!2500098 lambda!406736) (derivationStepZipperUp!1938 lt!2500092 (h!73733 s!7408)))))

(declare-fun lt!2500086 () Unit!161248)

(assert (=> b!7004690 (= lt!2500086 (lemmaFlatMapOnSingletonSet!1789 lt!2500098 lt!2500092 lambda!406736))))

(assert (=> b!7004690 (= lt!2500101 (derivationStepZipperUp!1938 lt!2500092 (h!73733 s!7408)))))

(declare-fun lt!2500094 () Unit!161248)

(assert (=> b!7004690 (= lt!2500094 (lemmaConcatPreservesForall!624 (exprs!6784 lt!2500045) (exprs!6784 ct2!306) lambda!406735))))

(declare-fun setElem!48192 () Context!12568)

(declare-fun tp!1931531 () Bool)

(declare-fun setNonEmpty!48192 () Bool)

(assert (=> setNonEmpty!48192 (= setRes!48192 (and tp!1931531 (inv!86080 setElem!48192) e!4210389))))

(declare-fun setRest!48192 () (Set Context!12568))

(assert (=> setNonEmpty!48192 (= z1!570 (set.union (set.insert setElem!48192 (as set.empty (Set Context!12568))) setRest!48192))))

(declare-fun e!4210396 () Bool)

(assert (=> b!7004691 (= e!4210392 e!4210396)))

(declare-fun res!2857904 () Bool)

(assert (=> b!7004691 (=> res!2857904 e!4210396)))

(assert (=> b!7004691 (= res!2857904 (or (not (= lt!2500092 lt!2500060)) (not (set.member lt!2500045 z1!570))))))

(assert (=> b!7004691 (= lt!2500092 (Context!12569 (++!15278 (exprs!6784 lt!2500045) (exprs!6784 ct2!306))))))

(declare-fun lt!2500041 () Unit!161248)

(assert (=> b!7004691 (= lt!2500041 (lemmaConcatPreservesForall!624 (exprs!6784 lt!2500045) (exprs!6784 ct2!306) lambda!406735))))

(declare-fun mapPost2!143 ((Set Context!12568) Int Context!12568) Context!12568)

(assert (=> b!7004691 (= lt!2500045 (mapPost2!143 z1!570 lambda!406734 lt!2500060))))

(declare-fun b!7004692 () Bool)

(assert (=> b!7004692 (= e!4210399 e!4210397)))

(declare-fun res!2857902 () Bool)

(assert (=> b!7004692 (=> res!2857902 e!4210397)))

(assert (=> b!7004692 (= res!2857902 e!4210388)))

(declare-fun res!2857917 () Bool)

(assert (=> b!7004692 (=> (not res!2857917) (not e!4210388))))

(declare-fun lt!2500072 () Bool)

(assert (=> b!7004692 (= res!2857917 (not (= lt!2500078 lt!2500072)))))

(assert (=> b!7004692 (= lt!2500078 (matchZipper!2828 lt!2500101 (t!381162 s!7408)))))

(declare-fun lt!2500071 () Unit!161248)

(assert (=> b!7004692 (= lt!2500071 (lemmaConcatPreservesForall!624 lt!2500077 (exprs!6784 ct2!306) lambda!406735))))

(assert (=> b!7004692 (= (matchZipper!2828 lt!2500070 (t!381162 s!7408)) e!4210403)))

(declare-fun res!2857908 () Bool)

(assert (=> b!7004692 (=> res!2857908 e!4210403)))

(assert (=> b!7004692 (= res!2857908 lt!2500072)))

(assert (=> b!7004692 (= lt!2500072 (matchZipper!2828 lt!2500051 (t!381162 s!7408)))))

(declare-fun lt!2500080 () Unit!161248)

(assert (=> b!7004692 (= lt!2500080 (lemmaZipperConcatMatchesSameAsBothZippers!1461 lt!2500051 lt!2500059 (t!381162 s!7408)))))

(declare-fun lt!2500048 () Unit!161248)

(assert (=> b!7004692 (= lt!2500048 (lemmaConcatPreservesForall!624 lt!2500077 (exprs!6784 ct2!306) lambda!406735))))

(declare-fun lt!2500055 () Unit!161248)

(assert (=> b!7004692 (= lt!2500055 (lemmaConcatPreservesForall!624 lt!2500077 (exprs!6784 ct2!306) lambda!406735))))

(assert (=> b!7004693 (= e!4210394 (not e!4210392))))

(declare-fun res!2857920 () Bool)

(assert (=> b!7004693 (=> res!2857920 e!4210392)))

(declare-fun lt!2500062 () (Set Context!12568))

(assert (=> b!7004693 (= res!2857920 (not (matchZipper!2828 lt!2500062 s!7408)))))

(assert (=> b!7004693 (= lt!2500062 (set.insert lt!2500060 (as set.empty (Set Context!12568))))))

(declare-fun getWitness!1214 ((Set Context!12568) Int) Context!12568)

(assert (=> b!7004693 (= lt!2500060 (getWitness!1214 lt!2500044 lambda!406733))))

(declare-fun lt!2500075 () List!67411)

(declare-fun exists!3117 (List!67411 Int) Bool)

(assert (=> b!7004693 (exists!3117 lt!2500075 lambda!406733)))

(declare-fun lt!2500049 () Unit!161248)

(declare-fun lemmaZipperMatchesExistsMatchingContext!257 (List!67411 List!67409) Unit!161248)

(assert (=> b!7004693 (= lt!2500049 (lemmaZipperMatchesExistsMatchingContext!257 lt!2500075 s!7408))))

(assert (=> b!7004693 (= lt!2500075 (toList!10648 lt!2500044))))

(declare-fun Unit!161251 () Unit!161248)

(assert (=> b!7004694 (= e!4210390 Unit!161251)))

(declare-fun lt!2500089 () Context!12568)

(assert (=> b!7004694 (= lt!2500089 (getWitness!1214 lt!2500097 lambda!406737))))

(declare-fun lt!2500046 () Unit!161248)

(assert (=> b!7004694 (= lt!2500046 (lemmaContainsThenExists!92 lt!2500097 lt!2500100 lambda!406737))))

(assert (=> b!7004694 (exists!3116 lt!2500097 lambda!406737)))

(assert (=> b!7004694 (= lt!2500088 (set.insert lt!2500045 (as set.empty (Set Context!12568))))))

(declare-fun lt!2500067 () Unit!161248)

(assert (=> b!7004694 (= lt!2500067 (lemmaContainsThenExists!92 lt!2500088 lt!2500045 lambda!406737))))

(assert (=> b!7004694 (exists!3116 lt!2500088 lambda!406737)))

(declare-fun lt!2500068 () Unit!161248)

(assert (=> b!7004694 (= lt!2500068 call!636029)))

(assert (=> b!7004694 call!636031))

(declare-fun b!7004695 () Bool)

(assert (=> b!7004695 (= e!4210402 e!4210401)))

(declare-fun res!2857912 () Bool)

(assert (=> b!7004695 (=> res!2857912 e!4210401)))

(assert (=> b!7004695 (= res!2857912 (not (= (derivationStepZipper!2768 lt!2500054 (h!73733 s!7408)) lt!2500059)))))

(declare-fun lt!2500102 () Unit!161248)

(assert (=> b!7004695 (= lt!2500102 (lemmaConcatPreservesForall!624 lt!2500077 (exprs!6784 ct2!306) lambda!406735))))

(declare-fun lt!2500099 () Unit!161248)

(assert (=> b!7004695 (= lt!2500099 (lemmaConcatPreservesForall!624 lt!2500077 (exprs!6784 ct2!306) lambda!406735))))

(assert (=> b!7004695 (= (flatMap!2274 lt!2500054 lambda!406736) (derivationStepZipperUp!1938 lt!2500083 (h!73733 s!7408)))))

(declare-fun lt!2500043 () Unit!161248)

(assert (=> b!7004695 (= lt!2500043 (lemmaFlatMapOnSingletonSet!1789 lt!2500054 lt!2500083 lambda!406736))))

(assert (=> b!7004695 (= lt!2500054 (set.insert lt!2500083 (as set.empty (Set Context!12568))))))

(declare-fun lt!2500084 () Unit!161248)

(assert (=> b!7004695 (= lt!2500084 (lemmaConcatPreservesForall!624 lt!2500077 (exprs!6784 ct2!306) lambda!406735))))

(declare-fun lt!2500087 () Unit!161248)

(assert (=> b!7004695 (= lt!2500087 (lemmaConcatPreservesForall!624 lt!2500077 (exprs!6784 ct2!306) lambda!406735))))

(declare-fun setIsEmpty!48192 () Bool)

(assert (=> setIsEmpty!48192 setRes!48192))

(declare-fun b!7004696 () Bool)

(assert (=> b!7004696 (= e!4210396 e!4210393)))

(declare-fun res!2857901 () Bool)

(assert (=> b!7004696 (=> res!2857901 e!4210393)))

(assert (=> b!7004696 (= res!2857901 (not (= lt!2500098 lt!2500062)))))

(assert (=> b!7004696 (= lt!2500098 (set.insert lt!2500092 (as set.empty (Set Context!12568))))))

(declare-fun lt!2500073 () Unit!161248)

(assert (=> b!7004696 (= lt!2500073 (lemmaConcatPreservesForall!624 (exprs!6784 lt!2500045) (exprs!6784 ct2!306) lambda!406735))))

(assert (= (and start!674104 res!2857907) b!7004676))

(assert (= (and b!7004676 res!2857905) b!7004693))

(assert (= (and b!7004693 (not res!2857920)) b!7004678))

(assert (= (and b!7004678 (not res!2857900)) b!7004691))

(assert (= (and b!7004691 (not res!2857904)) b!7004696))

(assert (= (and b!7004696 (not res!2857901)) b!7004690))

(assert (= (and b!7004690 (not res!2857909)) b!7004669))

(assert (= (and b!7004669 (not res!2857910)) b!7004680))

(assert (= (and b!7004680 (not res!2857919)) b!7004677))

(assert (= (and b!7004677 (not res!2857911)) b!7004683))

(assert (= (and b!7004683 (not res!2857915)) b!7004692))

(assert (= (and b!7004692 (not res!2857908)) b!7004679))

(assert (= (and b!7004692 res!2857917) b!7004671))

(assert (= (and b!7004692 (not res!2857902)) b!7004686))

(assert (= (and b!7004686 (not res!2857921)) b!7004681))

(assert (= (and b!7004681 (not res!2857906)) b!7004695))

(assert (= (and b!7004695 (not res!2857912)) b!7004682))

(assert (= (and b!7004682 (not res!2857922)) b!7004672))

(assert (= (and b!7004672 (not res!2857916)) b!7004668))

(assert (= (and b!7004668 (not res!2857914)) b!7004689))

(assert (= (and b!7004689 (not res!2857903)) b!7004688))

(assert (= (and b!7004688 (not res!2857899)) b!7004684))

(assert (= (and b!7004684 (not res!2857918)) b!7004670))

(assert (= (and b!7004670 c!1300678) b!7004694))

(assert (= (and b!7004670 (not c!1300678)) b!7004685))

(assert (= (and b!7004685 (not res!2857913)) b!7004675))

(assert (= (or b!7004694 b!7004685) bm!636026))

(assert (= (or b!7004694 b!7004685) bm!636024))

(assert (= (or b!7004694 b!7004685) bm!636025))

(assert (= (and start!674104 condSetEmpty!48192) setIsEmpty!48192))

(assert (= (and start!674104 (not condSetEmpty!48192)) setNonEmpty!48192))

(assert (= setNonEmpty!48192 b!7004673))

(assert (= start!674104 b!7004687))

(assert (= (and start!674104 (is-Cons!67285 s!7408)) b!7004674))

(declare-fun m!7700744 () Bool)

(assert (=> b!7004683 m!7700744))

(declare-fun m!7700746 () Bool)

(assert (=> b!7004683 m!7700746))

(declare-fun m!7700748 () Bool)

(assert (=> b!7004683 m!7700748))

(declare-fun m!7700750 () Bool)

(assert (=> b!7004683 m!7700750))

(assert (=> b!7004683 m!7700748))

(declare-fun m!7700752 () Bool)

(assert (=> b!7004680 m!7700752))

(declare-fun m!7700754 () Bool)

(assert (=> b!7004696 m!7700754))

(declare-fun m!7700756 () Bool)

(assert (=> b!7004696 m!7700756))

(declare-fun m!7700758 () Bool)

(assert (=> b!7004671 m!7700758))

(assert (=> b!7004671 m!7700748))

(declare-fun m!7700760 () Bool)

(assert (=> b!7004682 m!7700760))

(assert (=> b!7004682 m!7700748))

(declare-fun m!7700762 () Bool)

(assert (=> b!7004675 m!7700762))

(assert (=> b!7004692 m!7700748))

(declare-fun m!7700764 () Bool)

(assert (=> b!7004692 m!7700764))

(assert (=> b!7004692 m!7700748))

(assert (=> b!7004692 m!7700748))

(declare-fun m!7700766 () Bool)

(assert (=> b!7004692 m!7700766))

(declare-fun m!7700768 () Bool)

(assert (=> b!7004692 m!7700768))

(declare-fun m!7700770 () Bool)

(assert (=> b!7004692 m!7700770))

(declare-fun m!7700772 () Bool)

(assert (=> b!7004685 m!7700772))

(declare-fun m!7700774 () Bool)

(assert (=> b!7004685 m!7700774))

(declare-fun m!7700776 () Bool)

(assert (=> b!7004685 m!7700776))

(declare-fun m!7700778 () Bool)

(assert (=> b!7004685 m!7700778))

(declare-fun m!7700780 () Bool)

(assert (=> b!7004685 m!7700780))

(declare-fun m!7700782 () Bool)

(assert (=> b!7004685 m!7700782))

(declare-fun m!7700784 () Bool)

(assert (=> b!7004685 m!7700784))

(declare-fun m!7700786 () Bool)

(assert (=> b!7004685 m!7700786))

(declare-fun m!7700788 () Bool)

(assert (=> b!7004685 m!7700788))

(declare-fun m!7700790 () Bool)

(assert (=> b!7004685 m!7700790))

(declare-fun m!7700792 () Bool)

(assert (=> b!7004685 m!7700792))

(declare-fun m!7700794 () Bool)

(assert (=> b!7004685 m!7700794))

(assert (=> b!7004694 m!7700778))

(declare-fun m!7700796 () Bool)

(assert (=> b!7004694 m!7700796))

(declare-fun m!7700798 () Bool)

(assert (=> b!7004694 m!7700798))

(declare-fun m!7700800 () Bool)

(assert (=> b!7004694 m!7700800))

(declare-fun m!7700802 () Bool)

(assert (=> b!7004694 m!7700802))

(declare-fun m!7700804 () Bool)

(assert (=> b!7004694 m!7700804))

(declare-fun m!7700806 () Bool)

(assert (=> b!7004690 m!7700806))

(declare-fun m!7700808 () Bool)

(assert (=> b!7004690 m!7700808))

(declare-fun m!7700810 () Bool)

(assert (=> b!7004690 m!7700810))

(declare-fun m!7700812 () Bool)

(assert (=> b!7004690 m!7700812))

(assert (=> b!7004690 m!7700756))

(declare-fun m!7700814 () Bool)

(assert (=> start!674104 m!7700814))

(declare-fun m!7700816 () Bool)

(assert (=> start!674104 m!7700816))

(declare-fun m!7700818 () Bool)

(assert (=> start!674104 m!7700818))

(assert (=> b!7004681 m!7700758))

(assert (=> b!7004681 m!7700748))

(declare-fun m!7700820 () Bool)

(assert (=> setNonEmpty!48192 m!7700820))

(assert (=> b!7004672 m!7700744))

(declare-fun m!7700822 () Bool)

(assert (=> b!7004672 m!7700822))

(assert (=> b!7004672 m!7700748))

(declare-fun m!7700824 () Bool)

(assert (=> b!7004672 m!7700824))

(declare-fun m!7700826 () Bool)

(assert (=> b!7004672 m!7700826))

(assert (=> b!7004672 m!7700748))

(declare-fun m!7700828 () Bool)

(assert (=> b!7004672 m!7700828))

(assert (=> b!7004672 m!7700788))

(assert (=> b!7004672 m!7700772))

(assert (=> b!7004672 m!7700776))

(declare-fun m!7700830 () Bool)

(assert (=> b!7004672 m!7700830))

(declare-fun m!7700832 () Bool)

(assert (=> b!7004672 m!7700832))

(assert (=> b!7004672 m!7700748))

(declare-fun m!7700834 () Bool)

(assert (=> b!7004672 m!7700834))

(declare-fun m!7700836 () Bool)

(assert (=> b!7004672 m!7700836))

(declare-fun m!7700838 () Bool)

(assert (=> b!7004672 m!7700838))

(assert (=> b!7004672 m!7700748))

(declare-fun m!7700840 () Bool)

(assert (=> b!7004677 m!7700840))

(declare-fun m!7700842 () Bool)

(assert (=> b!7004677 m!7700842))

(declare-fun m!7700844 () Bool)

(assert (=> b!7004688 m!7700844))

(declare-fun m!7700846 () Bool)

(assert (=> b!7004691 m!7700846))

(declare-fun m!7700848 () Bool)

(assert (=> b!7004691 m!7700848))

(assert (=> b!7004691 m!7700756))

(declare-fun m!7700850 () Bool)

(assert (=> b!7004691 m!7700850))

(declare-fun m!7700852 () Bool)

(assert (=> b!7004668 m!7700852))

(declare-fun m!7700854 () Bool)

(assert (=> b!7004678 m!7700854))

(declare-fun m!7700856 () Bool)

(assert (=> b!7004695 m!7700856))

(assert (=> b!7004695 m!7700748))

(declare-fun m!7700858 () Bool)

(assert (=> b!7004695 m!7700858))

(assert (=> b!7004695 m!7700750))

(declare-fun m!7700860 () Bool)

(assert (=> b!7004695 m!7700860))

(assert (=> b!7004695 m!7700748))

(declare-fun m!7700862 () Bool)

(assert (=> b!7004695 m!7700862))

(assert (=> b!7004695 m!7700748))

(assert (=> b!7004695 m!7700748))

(declare-fun m!7700864 () Bool)

(assert (=> bm!636024 m!7700864))

(declare-fun m!7700866 () Bool)

(assert (=> bm!636025 m!7700866))

(declare-fun m!7700868 () Bool)

(assert (=> b!7004693 m!7700868))

(declare-fun m!7700870 () Bool)

(assert (=> b!7004693 m!7700870))

(declare-fun m!7700872 () Bool)

(assert (=> b!7004693 m!7700872))

(declare-fun m!7700874 () Bool)

(assert (=> b!7004693 m!7700874))

(declare-fun m!7700876 () Bool)

(assert (=> b!7004693 m!7700876))

(declare-fun m!7700878 () Bool)

(assert (=> b!7004693 m!7700878))

(declare-fun m!7700880 () Bool)

(assert (=> b!7004689 m!7700880))

(declare-fun m!7700882 () Bool)

(assert (=> b!7004689 m!7700882))

(declare-fun m!7700884 () Bool)

(assert (=> b!7004689 m!7700884))

(declare-fun m!7700886 () Bool)

(assert (=> b!7004689 m!7700886))

(declare-fun m!7700888 () Bool)

(assert (=> b!7004689 m!7700888))

(declare-fun m!7700890 () Bool)

(assert (=> b!7004689 m!7700890))

(declare-fun m!7700892 () Bool)

(assert (=> b!7004670 m!7700892))

(declare-fun m!7700894 () Bool)

(assert (=> b!7004670 m!7700894))

(declare-fun m!7700896 () Bool)

(assert (=> b!7004670 m!7700896))

(declare-fun m!7700898 () Bool)

(assert (=> b!7004670 m!7700898))

(declare-fun m!7700900 () Bool)

(assert (=> b!7004670 m!7700900))

(declare-fun m!7700902 () Bool)

(assert (=> b!7004670 m!7700902))

(declare-fun m!7700904 () Bool)

(assert (=> b!7004670 m!7700904))

(assert (=> b!7004670 m!7700900))

(declare-fun m!7700906 () Bool)

(assert (=> b!7004670 m!7700906))

(declare-fun m!7700908 () Bool)

(assert (=> b!7004670 m!7700908))

(assert (=> b!7004670 m!7700896))

(declare-fun m!7700910 () Bool)

(assert (=> b!7004670 m!7700910))

(assert (=> b!7004679 m!7700758))

(declare-fun m!7700912 () Bool)

(assert (=> b!7004684 m!7700912))

(declare-fun m!7700914 () Bool)

(assert (=> bm!636026 m!7700914))

(push 1)

(assert (not b!7004680))

(assert (not b!7004690))

(assert (not b!7004696))

(assert (not setNonEmpty!48192))

(assert (not b!7004694))

(assert (not b!7004693))

(assert (not b!7004685))

(assert (not b!7004681))

(assert (not b!7004674))

(assert (not b!7004677))

(assert (not bm!636026))

(assert (not b!7004683))

(assert (not bm!636024))

(assert (not b!7004668))

(assert (not b!7004687))

(assert (not b!7004682))

(assert (not b!7004688))

(assert tp_is_empty!43801)

(assert (not b!7004679))

(assert (not bm!636025))

(assert (not b!7004692))

(assert (not start!674104))

(assert (not b!7004672))

(assert (not b!7004675))

(assert (not b!7004670))

(assert (not b!7004673))

(assert (not b!7004684))

(assert (not b!7004691))

(assert (not b!7004689))

(assert (not b!7004695))

(assert (not b!7004671))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2183284 () Bool)

(declare-fun c!1300712 () Bool)

(assert (=> d!2183284 (= c!1300712 (isEmpty!39295 (_2!37264 lt!2500040)))))

(declare-fun e!4210469 () Bool)

(assert (=> d!2183284 (= (matchZipper!2828 lt!2500065 (_2!37264 lt!2500040)) e!4210469)))

(declare-fun b!7004804 () Bool)

(declare-fun nullableZipper!2469 ((Set Context!12568)) Bool)

(assert (=> b!7004804 (= e!4210469 (nullableZipper!2469 lt!2500065))))

(declare-fun b!7004805 () Bool)

(declare-fun head!14153 (List!67409) C!34846)

(assert (=> b!7004805 (= e!4210469 (matchZipper!2828 (derivationStepZipper!2768 lt!2500065 (head!14153 (_2!37264 lt!2500040))) (tail!13345 (_2!37264 lt!2500040))))))

(assert (= (and d!2183284 c!1300712) b!7004804))

(assert (= (and d!2183284 (not c!1300712)) b!7004805))

(declare-fun m!7701088 () Bool)

(assert (=> d!2183284 m!7701088))

(declare-fun m!7701090 () Bool)

(assert (=> b!7004804 m!7701090))

(declare-fun m!7701092 () Bool)

(assert (=> b!7004805 m!7701092))

(assert (=> b!7004805 m!7701092))

(declare-fun m!7701094 () Bool)

(assert (=> b!7004805 m!7701094))

(declare-fun m!7701096 () Bool)

(assert (=> b!7004805 m!7701096))

(assert (=> b!7004805 m!7701094))

(assert (=> b!7004805 m!7701096))

(declare-fun m!7701098 () Bool)

(assert (=> b!7004805 m!7701098))

(assert (=> b!7004688 d!2183284))

(declare-fun b!7004824 () Bool)

(declare-fun e!4210483 () Option!16793)

(assert (=> b!7004824 (= e!4210483 None!16792)))

(declare-fun b!7004825 () Bool)

(declare-fun e!4210482 () Bool)

(declare-fun lt!2500317 () Option!16793)

(assert (=> b!7004825 (= e!4210482 (not (isDefined!13494 lt!2500317)))))

(declare-fun b!7004826 () Bool)

(declare-fun e!4210480 () Option!16793)

(assert (=> b!7004826 (= e!4210480 e!4210483)))

(declare-fun c!1300718 () Bool)

(assert (=> b!7004826 (= c!1300718 (is-Nil!67285 s!7408))))

(declare-fun b!7004827 () Bool)

(declare-fun lt!2500318 () Unit!161248)

(declare-fun lt!2500319 () Unit!161248)

(assert (=> b!7004827 (= lt!2500318 lt!2500319)))

(assert (=> b!7004827 (= (++!15277 (++!15277 Nil!67285 (Cons!67285 (h!73733 s!7408) Nil!67285)) (t!381162 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2889 (List!67409 C!34846 List!67409 List!67409) Unit!161248)

(assert (=> b!7004827 (= lt!2500319 (lemmaMoveElementToOtherListKeepsConcatEq!2889 Nil!67285 (h!73733 s!7408) (t!381162 s!7408) s!7408))))

(assert (=> b!7004827 (= e!4210483 (findConcatSeparationZippers!309 (ite c!1300678 lt!2500088 lt!2500066) lt!2500065 (++!15277 Nil!67285 (Cons!67285 (h!73733 s!7408) Nil!67285)) (t!381162 s!7408) s!7408))))

(declare-fun b!7004828 () Bool)

(declare-fun e!4210481 () Bool)

(assert (=> b!7004828 (= e!4210481 (= (++!15277 (_1!37264 (get!23602 lt!2500317)) (_2!37264 (get!23602 lt!2500317))) s!7408))))

(declare-fun d!2183286 () Bool)

(assert (=> d!2183286 e!4210482))

(declare-fun res!2858006 () Bool)

(assert (=> d!2183286 (=> res!2858006 e!4210482)))

(assert (=> d!2183286 (= res!2858006 e!4210481)))

(declare-fun res!2858009 () Bool)

(assert (=> d!2183286 (=> (not res!2858009) (not e!4210481))))

(assert (=> d!2183286 (= res!2858009 (isDefined!13494 lt!2500317))))

(assert (=> d!2183286 (= lt!2500317 e!4210480)))

(declare-fun c!1300717 () Bool)

(declare-fun e!4210484 () Bool)

(assert (=> d!2183286 (= c!1300717 e!4210484)))

(declare-fun res!2858007 () Bool)

(assert (=> d!2183286 (=> (not res!2858007) (not e!4210484))))

(assert (=> d!2183286 (= res!2858007 (matchZipper!2828 (ite c!1300678 lt!2500088 lt!2500066) Nil!67285))))

(assert (=> d!2183286 (= (++!15277 Nil!67285 s!7408) s!7408)))

(assert (=> d!2183286 (= (findConcatSeparationZippers!309 (ite c!1300678 lt!2500088 lt!2500066) lt!2500065 Nil!67285 s!7408 s!7408) lt!2500317)))

(declare-fun b!7004829 () Bool)

(declare-fun res!2858008 () Bool)

(assert (=> b!7004829 (=> (not res!2858008) (not e!4210481))))

(assert (=> b!7004829 (= res!2858008 (matchZipper!2828 (ite c!1300678 lt!2500088 lt!2500066) (_1!37264 (get!23602 lt!2500317))))))

(declare-fun b!7004830 () Bool)

(assert (=> b!7004830 (= e!4210480 (Some!16792 (tuple2!67923 Nil!67285 s!7408)))))

(declare-fun b!7004831 () Bool)

(assert (=> b!7004831 (= e!4210484 (matchZipper!2828 lt!2500065 s!7408))))

(declare-fun b!7004832 () Bool)

(declare-fun res!2858010 () Bool)

(assert (=> b!7004832 (=> (not res!2858010) (not e!4210481))))

(assert (=> b!7004832 (= res!2858010 (matchZipper!2828 lt!2500065 (_2!37264 (get!23602 lt!2500317))))))

(assert (= (and d!2183286 res!2858007) b!7004831))

(assert (= (and d!2183286 c!1300717) b!7004830))

(assert (= (and d!2183286 (not c!1300717)) b!7004826))

(assert (= (and b!7004826 c!1300718) b!7004824))

(assert (= (and b!7004826 (not c!1300718)) b!7004827))

(assert (= (and d!2183286 res!2858009) b!7004829))

(assert (= (and b!7004829 res!2858008) b!7004832))

(assert (= (and b!7004832 res!2858010) b!7004828))

(assert (= (and d!2183286 (not res!2858006)) b!7004825))

(declare-fun m!7701100 () Bool)

(assert (=> b!7004825 m!7701100))

(declare-fun m!7701102 () Bool)

(assert (=> b!7004827 m!7701102))

(assert (=> b!7004827 m!7701102))

(declare-fun m!7701104 () Bool)

(assert (=> b!7004827 m!7701104))

(declare-fun m!7701106 () Bool)

(assert (=> b!7004827 m!7701106))

(assert (=> b!7004827 m!7701102))

(declare-fun m!7701108 () Bool)

(assert (=> b!7004827 m!7701108))

(declare-fun m!7701110 () Bool)

(assert (=> b!7004832 m!7701110))

(declare-fun m!7701112 () Bool)

(assert (=> b!7004832 m!7701112))

(assert (=> b!7004829 m!7701110))

(declare-fun m!7701114 () Bool)

(assert (=> b!7004829 m!7701114))

(declare-fun m!7701116 () Bool)

(assert (=> b!7004831 m!7701116))

(assert (=> d!2183286 m!7701100))

(declare-fun m!7701118 () Bool)

(assert (=> d!2183286 m!7701118))

(assert (=> d!2183286 m!7700904))

(assert (=> b!7004828 m!7701110))

(declare-fun m!7701120 () Bool)

(assert (=> b!7004828 m!7701120))

(assert (=> bm!636024 d!2183286))

(declare-fun d!2183288 () Bool)

(declare-fun lt!2500322 () Int)

(assert (=> d!2183288 (>= lt!2500322 0)))

(declare-fun e!4210487 () Int)

(assert (=> d!2183288 (= lt!2500322 e!4210487)))

(declare-fun c!1300721 () Bool)

(assert (=> d!2183288 (= c!1300721 (is-Cons!67287 (Cons!67287 lt!2500100 Nil!67287)))))

(assert (=> d!2183288 (= (zipperDepthTotal!509 (Cons!67287 lt!2500100 Nil!67287)) lt!2500322)))

(declare-fun b!7004837 () Bool)

(assert (=> b!7004837 (= e!4210487 (+ (contextDepthTotal!481 (h!73735 (Cons!67287 lt!2500100 Nil!67287))) (zipperDepthTotal!509 (t!381164 (Cons!67287 lt!2500100 Nil!67287)))))))

(declare-fun b!7004838 () Bool)

(assert (=> b!7004838 (= e!4210487 0)))

(assert (= (and d!2183288 c!1300721) b!7004837))

(assert (= (and d!2183288 (not c!1300721)) b!7004838))

(declare-fun m!7701122 () Bool)

(assert (=> b!7004837 m!7701122))

(declare-fun m!7701124 () Bool)

(assert (=> b!7004837 m!7701124))

(assert (=> b!7004668 d!2183288))

(declare-fun d!2183290 () Bool)

(declare-fun c!1300722 () Bool)

(assert (=> d!2183290 (= c!1300722 (isEmpty!39295 s!7408))))

(declare-fun e!4210488 () Bool)

(assert (=> d!2183290 (= (matchZipper!2828 lt!2500044 s!7408) e!4210488)))

(declare-fun b!7004839 () Bool)

(assert (=> b!7004839 (= e!4210488 (nullableZipper!2469 lt!2500044))))

(declare-fun b!7004840 () Bool)

(assert (=> b!7004840 (= e!4210488 (matchZipper!2828 (derivationStepZipper!2768 lt!2500044 (head!14153 s!7408)) (tail!13345 s!7408)))))

(assert (= (and d!2183290 c!1300722) b!7004839))

(assert (= (and d!2183290 (not c!1300722)) b!7004840))

(declare-fun m!7701126 () Bool)

(assert (=> d!2183290 m!7701126))

(declare-fun m!7701128 () Bool)

(assert (=> b!7004839 m!7701128))

(declare-fun m!7701130 () Bool)

(assert (=> b!7004840 m!7701130))

(assert (=> b!7004840 m!7701130))

(declare-fun m!7701132 () Bool)

(assert (=> b!7004840 m!7701132))

(declare-fun m!7701134 () Bool)

(assert (=> b!7004840 m!7701134))

(assert (=> b!7004840 m!7701132))

(assert (=> b!7004840 m!7701134))

(declare-fun m!7701136 () Bool)

(assert (=> b!7004840 m!7701136))

(assert (=> start!674104 d!2183290))

(declare-fun bs!1865214 () Bool)

(declare-fun d!2183292 () Bool)

(assert (= bs!1865214 (and d!2183292 b!7004691)))

(declare-fun lambda!406817 () Int)

(assert (=> bs!1865214 (= lambda!406817 lambda!406734)))

(assert (=> d!2183292 true))

(assert (=> d!2183292 (= (appendTo!409 z1!570 ct2!306) (map!15579 z1!570 lambda!406817))))

(declare-fun bs!1865215 () Bool)

(assert (= bs!1865215 d!2183292))

(declare-fun m!7701138 () Bool)

(assert (=> bs!1865215 m!7701138))

(assert (=> start!674104 d!2183292))

(declare-fun bs!1865216 () Bool)

(declare-fun d!2183294 () Bool)

(assert (= bs!1865216 (and d!2183294 b!7004691)))

(declare-fun lambda!406820 () Int)

(assert (=> bs!1865216 (= lambda!406820 lambda!406735)))

(declare-fun forall!16197 (List!67410 Int) Bool)

(assert (=> d!2183294 (= (inv!86080 ct2!306) (forall!16197 (exprs!6784 ct2!306) lambda!406820))))

(declare-fun bs!1865217 () Bool)

(assert (= bs!1865217 d!2183294))

(declare-fun m!7701140 () Bool)

(assert (=> bs!1865217 m!7701140))

(assert (=> start!674104 d!2183294))

(declare-fun bs!1865218 () Bool)

(declare-fun d!2183296 () Bool)

(assert (= bs!1865218 (and d!2183296 b!7004693)))

(declare-fun lambda!406823 () Int)

(assert (=> bs!1865218 (= (= (_1!37264 lt!2500040) s!7408) (= lambda!406823 lambda!406733))))

(declare-fun bs!1865219 () Bool)

(assert (= bs!1865219 (and d!2183296 b!7004694)))

(assert (=> bs!1865219 (not (= lambda!406823 lambda!406737))))

(declare-fun bs!1865220 () Bool)

(assert (= bs!1865220 (and d!2183296 b!7004670)))

(assert (=> bs!1865220 (= lambda!406823 lambda!406738)))

(assert (=> d!2183296 true))

(assert (=> d!2183296 (matchZipper!2828 (content!13335 lt!2500082) (_1!37264 lt!2500040))))

(declare-fun lt!2500327 () Unit!161248)

(declare-fun choose!52553 (List!67411 List!67409) Unit!161248)

(assert (=> d!2183296 (= lt!2500327 (choose!52553 lt!2500082 (_1!37264 lt!2500040)))))

(assert (=> d!2183296 (exists!3117 lt!2500082 lambda!406823)))

(assert (=> d!2183296 (= (lemmaExistsMatchingContextThenMatchingString!25 lt!2500082 (_1!37264 lt!2500040)) lt!2500327)))

(declare-fun bs!1865221 () Bool)

(assert (= bs!1865221 d!2183296))

(assert (=> bs!1865221 m!7700896))

(assert (=> bs!1865221 m!7700896))

(assert (=> bs!1865221 m!7700910))

(declare-fun m!7701142 () Bool)

(assert (=> bs!1865221 m!7701142))

(declare-fun m!7701144 () Bool)

(assert (=> bs!1865221 m!7701144))

(assert (=> b!7004670 d!2183296))

(declare-fun d!2183298 () Bool)

(declare-fun c!1300728 () Bool)

(assert (=> d!2183298 (= c!1300728 (is-Nil!67287 lt!2500082))))

(declare-fun e!4210491 () (Set Context!12568))

(assert (=> d!2183298 (= (content!13335 lt!2500082) e!4210491)))

(declare-fun b!7004845 () Bool)

(assert (=> b!7004845 (= e!4210491 (as set.empty (Set Context!12568)))))

(declare-fun b!7004846 () Bool)

(assert (=> b!7004846 (= e!4210491 (set.union (set.insert (h!73735 lt!2500082) (as set.empty (Set Context!12568))) (content!13335 (t!381164 lt!2500082))))))

(assert (= (and d!2183298 c!1300728) b!7004845))

(assert (= (and d!2183298 (not c!1300728)) b!7004846))

(declare-fun m!7701146 () Bool)

(assert (=> b!7004846 m!7701146))

(declare-fun m!7701148 () Bool)

(assert (=> b!7004846 m!7701148))

(assert (=> b!7004670 d!2183298))

(declare-fun d!2183300 () Bool)

(declare-fun c!1300729 () Bool)

(assert (=> d!2183300 (= c!1300729 (isEmpty!39295 (_1!37264 lt!2500040)))))

(declare-fun e!4210492 () Bool)

(assert (=> d!2183300 (= (matchZipper!2828 (content!13335 lt!2500082) (_1!37264 lt!2500040)) e!4210492)))

(declare-fun b!7004847 () Bool)

(assert (=> b!7004847 (= e!4210492 (nullableZipper!2469 (content!13335 lt!2500082)))))

(declare-fun b!7004848 () Bool)

(assert (=> b!7004848 (= e!4210492 (matchZipper!2828 (derivationStepZipper!2768 (content!13335 lt!2500082) (head!14153 (_1!37264 lt!2500040))) (tail!13345 (_1!37264 lt!2500040))))))

(assert (= (and d!2183300 c!1300729) b!7004847))

(assert (= (and d!2183300 (not c!1300729)) b!7004848))

(assert (=> d!2183300 m!7700908))

(assert (=> b!7004847 m!7700896))

(declare-fun m!7701150 () Bool)

(assert (=> b!7004847 m!7701150))

(declare-fun m!7701152 () Bool)

(assert (=> b!7004848 m!7701152))

(assert (=> b!7004848 m!7700896))

(assert (=> b!7004848 m!7701152))

(declare-fun m!7701154 () Bool)

(assert (=> b!7004848 m!7701154))

(assert (=> b!7004848 m!7700790))

(assert (=> b!7004848 m!7701154))

(assert (=> b!7004848 m!7700790))

(declare-fun m!7701156 () Bool)

(assert (=> b!7004848 m!7701156))

(assert (=> b!7004670 d!2183300))

(declare-fun d!2183302 () Bool)

(assert (=> d!2183302 (isDefined!13494 (findConcatSeparationZippers!309 z1!570 lt!2500065 Nil!67285 s!7408 s!7408))))

(declare-fun lt!2500330 () Unit!161248)

(declare-fun choose!52554 ((Set Context!12568) (Set Context!12568) List!67409 List!67409 List!67409 List!67409 List!67409) Unit!161248)

(assert (=> d!2183302 (= lt!2500330 (choose!52554 z1!570 lt!2500065 (_1!37264 lt!2500040) (_2!37264 lt!2500040) s!7408 Nil!67285 s!7408))))

(assert (=> d!2183302 (matchZipper!2828 z1!570 (_1!37264 lt!2500040))))

(assert (=> d!2183302 (= (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!11 z1!570 lt!2500065 (_1!37264 lt!2500040) (_2!37264 lt!2500040) s!7408 Nil!67285 s!7408) lt!2500330)))

(declare-fun bs!1865222 () Bool)

(assert (= bs!1865222 d!2183302))

(assert (=> bs!1865222 m!7700900))

(assert (=> bs!1865222 m!7700900))

(assert (=> bs!1865222 m!7700906))

(declare-fun m!7701158 () Bool)

(assert (=> bs!1865222 m!7701158))

(declare-fun m!7701160 () Bool)

(assert (=> bs!1865222 m!7701160))

(assert (=> b!7004670 d!2183302))

(declare-fun d!2183304 () Bool)

(assert (=> d!2183304 (exists!3116 z1!570 lambda!406738)))

(declare-fun lt!2500333 () Unit!161248)

(declare-fun choose!52555 ((Set Context!12568) Context!12568 Int) Unit!161248)

(assert (=> d!2183304 (= lt!2500333 (choose!52555 z1!570 lt!2500045 lambda!406738))))

(assert (=> d!2183304 (set.member lt!2500045 z1!570)))

(assert (=> d!2183304 (= (lemmaContainsThenExists!92 z1!570 lt!2500045 lambda!406738) lt!2500333)))

(declare-fun bs!1865223 () Bool)

(assert (= bs!1865223 d!2183304))

(assert (=> bs!1865223 m!7700894))

(declare-fun m!7701162 () Bool)

(assert (=> bs!1865223 m!7701162))

(assert (=> bs!1865223 m!7700846))

(assert (=> b!7004670 d!2183304))

(declare-fun d!2183306 () Bool)

(assert (=> d!2183306 (= (isEmpty!39295 (_1!37264 lt!2500040)) (is-Nil!67285 (_1!37264 lt!2500040)))))

(assert (=> b!7004670 d!2183306))

(declare-fun b!7004849 () Bool)

(declare-fun e!4210497 () Option!16793)

(assert (=> b!7004849 (= e!4210497 None!16792)))

(declare-fun b!7004850 () Bool)

(declare-fun e!4210496 () Bool)

(declare-fun lt!2500334 () Option!16793)

(assert (=> b!7004850 (= e!4210496 (not (isDefined!13494 lt!2500334)))))

(declare-fun b!7004851 () Bool)

(declare-fun e!4210494 () Option!16793)

(assert (=> b!7004851 (= e!4210494 e!4210497)))

(declare-fun c!1300731 () Bool)

(assert (=> b!7004851 (= c!1300731 (is-Nil!67285 s!7408))))

(declare-fun b!7004852 () Bool)

(declare-fun lt!2500335 () Unit!161248)

(declare-fun lt!2500336 () Unit!161248)

(assert (=> b!7004852 (= lt!2500335 lt!2500336)))

(assert (=> b!7004852 (= (++!15277 (++!15277 Nil!67285 (Cons!67285 (h!73733 s!7408) Nil!67285)) (t!381162 s!7408)) s!7408)))

(assert (=> b!7004852 (= lt!2500336 (lemmaMoveElementToOtherListKeepsConcatEq!2889 Nil!67285 (h!73733 s!7408) (t!381162 s!7408) s!7408))))

(assert (=> b!7004852 (= e!4210497 (findConcatSeparationZippers!309 z1!570 lt!2500065 (++!15277 Nil!67285 (Cons!67285 (h!73733 s!7408) Nil!67285)) (t!381162 s!7408) s!7408))))

(declare-fun b!7004853 () Bool)

(declare-fun e!4210495 () Bool)

(assert (=> b!7004853 (= e!4210495 (= (++!15277 (_1!37264 (get!23602 lt!2500334)) (_2!37264 (get!23602 lt!2500334))) s!7408))))

(declare-fun d!2183308 () Bool)

(assert (=> d!2183308 e!4210496))

(declare-fun res!2858011 () Bool)

(assert (=> d!2183308 (=> res!2858011 e!4210496)))

(assert (=> d!2183308 (= res!2858011 e!4210495)))

(declare-fun res!2858014 () Bool)

(assert (=> d!2183308 (=> (not res!2858014) (not e!4210495))))

(assert (=> d!2183308 (= res!2858014 (isDefined!13494 lt!2500334))))

(assert (=> d!2183308 (= lt!2500334 e!4210494)))

(declare-fun c!1300730 () Bool)

(declare-fun e!4210498 () Bool)

(assert (=> d!2183308 (= c!1300730 e!4210498)))

(declare-fun res!2858012 () Bool)

(assert (=> d!2183308 (=> (not res!2858012) (not e!4210498))))

(assert (=> d!2183308 (= res!2858012 (matchZipper!2828 z1!570 Nil!67285))))

(assert (=> d!2183308 (= (++!15277 Nil!67285 s!7408) s!7408)))

(assert (=> d!2183308 (= (findConcatSeparationZippers!309 z1!570 lt!2500065 Nil!67285 s!7408 s!7408) lt!2500334)))

(declare-fun b!7004854 () Bool)

(declare-fun res!2858013 () Bool)

(assert (=> b!7004854 (=> (not res!2858013) (not e!4210495))))

(assert (=> b!7004854 (= res!2858013 (matchZipper!2828 z1!570 (_1!37264 (get!23602 lt!2500334))))))

(declare-fun b!7004855 () Bool)

(assert (=> b!7004855 (= e!4210494 (Some!16792 (tuple2!67923 Nil!67285 s!7408)))))

(declare-fun b!7004856 () Bool)

(assert (=> b!7004856 (= e!4210498 (matchZipper!2828 lt!2500065 s!7408))))

(declare-fun b!7004857 () Bool)

(declare-fun res!2858015 () Bool)

(assert (=> b!7004857 (=> (not res!2858015) (not e!4210495))))

(assert (=> b!7004857 (= res!2858015 (matchZipper!2828 lt!2500065 (_2!37264 (get!23602 lt!2500334))))))

(assert (= (and d!2183308 res!2858012) b!7004856))

(assert (= (and d!2183308 c!1300730) b!7004855))

(assert (= (and d!2183308 (not c!1300730)) b!7004851))

(assert (= (and b!7004851 c!1300731) b!7004849))

(assert (= (and b!7004851 (not c!1300731)) b!7004852))

(assert (= (and d!2183308 res!2858014) b!7004854))

(assert (= (and b!7004854 res!2858013) b!7004857))

(assert (= (and b!7004857 res!2858015) b!7004853))

(assert (= (and d!2183308 (not res!2858011)) b!7004850))

(declare-fun m!7701164 () Bool)

(assert (=> b!7004850 m!7701164))

(assert (=> b!7004852 m!7701102))

(assert (=> b!7004852 m!7701102))

(assert (=> b!7004852 m!7701104))

(assert (=> b!7004852 m!7701106))

(assert (=> b!7004852 m!7701102))

(declare-fun m!7701166 () Bool)

(assert (=> b!7004852 m!7701166))

(declare-fun m!7701168 () Bool)

(assert (=> b!7004857 m!7701168))

(declare-fun m!7701170 () Bool)

(assert (=> b!7004857 m!7701170))

(assert (=> b!7004854 m!7701168))

(declare-fun m!7701172 () Bool)

(assert (=> b!7004854 m!7701172))

(assert (=> b!7004856 m!7701116))

(assert (=> d!2183308 m!7701164))

(declare-fun m!7701174 () Bool)

(assert (=> d!2183308 m!7701174))

(assert (=> d!2183308 m!7700904))

(assert (=> b!7004853 m!7701168))

(declare-fun m!7701176 () Bool)

(assert (=> b!7004853 m!7701176))

(assert (=> b!7004670 d!2183308))

(declare-fun b!7004869 () Bool)

(declare-fun e!4210504 () Bool)

(declare-fun lt!2500339 () List!67409)

(assert (=> b!7004869 (= e!4210504 (or (not (= s!7408 Nil!67285)) (= lt!2500339 Nil!67285)))))

(declare-fun b!7004866 () Bool)

(declare-fun e!4210503 () List!67409)

(assert (=> b!7004866 (= e!4210503 s!7408)))

(declare-fun b!7004868 () Bool)

(declare-fun res!2858020 () Bool)

(assert (=> b!7004868 (=> (not res!2858020) (not e!4210504))))

(declare-fun size!40951 (List!67409) Int)

(assert (=> b!7004868 (= res!2858020 (= (size!40951 lt!2500339) (+ (size!40951 Nil!67285) (size!40951 s!7408))))))

(declare-fun d!2183310 () Bool)

(assert (=> d!2183310 e!4210504))

(declare-fun res!2858021 () Bool)

(assert (=> d!2183310 (=> (not res!2858021) (not e!4210504))))

(declare-fun content!13337 (List!67409) (Set C!34846))

(assert (=> d!2183310 (= res!2858021 (= (content!13337 lt!2500339) (set.union (content!13337 Nil!67285) (content!13337 s!7408))))))

(assert (=> d!2183310 (= lt!2500339 e!4210503)))

(declare-fun c!1300734 () Bool)

(assert (=> d!2183310 (= c!1300734 (is-Nil!67285 Nil!67285))))

(assert (=> d!2183310 (= (++!15277 Nil!67285 s!7408) lt!2500339)))

(declare-fun b!7004867 () Bool)

(assert (=> b!7004867 (= e!4210503 (Cons!67285 (h!73733 Nil!67285) (++!15277 (t!381162 Nil!67285) s!7408)))))

(assert (= (and d!2183310 c!1300734) b!7004866))

(assert (= (and d!2183310 (not c!1300734)) b!7004867))

(assert (= (and d!2183310 res!2858021) b!7004868))

(assert (= (and b!7004868 res!2858020) b!7004869))

(declare-fun m!7701178 () Bool)

(assert (=> b!7004868 m!7701178))

(declare-fun m!7701180 () Bool)

(assert (=> b!7004868 m!7701180))

(declare-fun m!7701182 () Bool)

(assert (=> b!7004868 m!7701182))

(declare-fun m!7701184 () Bool)

(assert (=> d!2183310 m!7701184))

(declare-fun m!7701186 () Bool)

(assert (=> d!2183310 m!7701186))

(declare-fun m!7701188 () Bool)

(assert (=> d!2183310 m!7701188))

(declare-fun m!7701190 () Bool)

(assert (=> b!7004867 m!7701190))

(assert (=> b!7004670 d!2183310))

(declare-fun d!2183312 () Bool)

(declare-fun lt!2500342 () Bool)

(assert (=> d!2183312 (= lt!2500342 (exists!3117 (toList!10648 z1!570) lambda!406738))))

(declare-fun choose!52556 ((Set Context!12568) Int) Bool)

(assert (=> d!2183312 (= lt!2500342 (choose!52556 z1!570 lambda!406738))))

(assert (=> d!2183312 (= (exists!3116 z1!570 lambda!406738) lt!2500342)))

(declare-fun bs!1865224 () Bool)

(assert (= bs!1865224 d!2183312))

(assert (=> bs!1865224 m!7700830))

(assert (=> bs!1865224 m!7700830))

(declare-fun m!7701192 () Bool)

(assert (=> bs!1865224 m!7701192))

(declare-fun m!7701194 () Bool)

(assert (=> bs!1865224 m!7701194))

(assert (=> b!7004670 d!2183312))

(declare-fun d!2183314 () Bool)

(declare-fun isEmpty!39299 (Option!16793) Bool)

(assert (=> d!2183314 (= (isDefined!13494 (findConcatSeparationZippers!309 z1!570 lt!2500065 Nil!67285 s!7408 s!7408)) (not (isEmpty!39299 (findConcatSeparationZippers!309 z1!570 lt!2500065 Nil!67285 s!7408 s!7408))))))

(declare-fun bs!1865225 () Bool)

(assert (= bs!1865225 d!2183314))

(assert (=> bs!1865225 m!7700900))

(declare-fun m!7701196 () Bool)

(assert (=> bs!1865225 m!7701196))

(assert (=> b!7004670 d!2183314))

(declare-fun bs!1865226 () Bool)

(declare-fun d!2183316 () Bool)

(assert (= bs!1865226 (and d!2183316 b!7004691)))

(declare-fun lambda!406824 () Int)

(assert (=> bs!1865226 (= lambda!406824 lambda!406735)))

(declare-fun bs!1865227 () Bool)

(assert (= bs!1865227 (and d!2183316 d!2183294)))

(assert (=> bs!1865227 (= lambda!406824 lambda!406820)))

(assert (=> d!2183316 (= (inv!86080 setElem!48192) (forall!16197 (exprs!6784 setElem!48192) lambda!406824))))

(declare-fun bs!1865228 () Bool)

(assert (= bs!1865228 d!2183316))

(declare-fun m!7701198 () Bool)

(assert (=> bs!1865228 m!7701198))

(assert (=> setNonEmpty!48192 d!2183316))

(declare-fun d!2183318 () Bool)

(declare-fun c!1300735 () Bool)

(assert (=> d!2183318 (= c!1300735 (isEmpty!39295 (t!381162 s!7408)))))

(declare-fun e!4210505 () Bool)

(assert (=> d!2183318 (= (matchZipper!2828 lt!2500059 (t!381162 s!7408)) e!4210505)))

(declare-fun b!7004870 () Bool)

(assert (=> b!7004870 (= e!4210505 (nullableZipper!2469 lt!2500059))))

(declare-fun b!7004871 () Bool)

(assert (=> b!7004871 (= e!4210505 (matchZipper!2828 (derivationStepZipper!2768 lt!2500059 (head!14153 (t!381162 s!7408))) (tail!13345 (t!381162 s!7408))))))

(assert (= (and d!2183318 c!1300735) b!7004870))

(assert (= (and d!2183318 (not c!1300735)) b!7004871))

(declare-fun m!7701200 () Bool)

(assert (=> d!2183318 m!7701200))

(declare-fun m!7701202 () Bool)

(assert (=> b!7004870 m!7701202))

(declare-fun m!7701204 () Bool)

(assert (=> b!7004871 m!7701204))

(assert (=> b!7004871 m!7701204))

(declare-fun m!7701206 () Bool)

(assert (=> b!7004871 m!7701206))

(declare-fun m!7701208 () Bool)

(assert (=> b!7004871 m!7701208))

(assert (=> b!7004871 m!7701206))

(assert (=> b!7004871 m!7701208))

(declare-fun m!7701210 () Bool)

(assert (=> b!7004871 m!7701210))

(assert (=> b!7004671 d!2183318))

(declare-fun d!2183320 () Bool)

(assert (=> d!2183320 (forall!16197 (++!15278 lt!2500077 (exprs!6784 ct2!306)) lambda!406735)))

(declare-fun lt!2500345 () Unit!161248)

(declare-fun choose!52557 (List!67410 List!67410 Int) Unit!161248)

(assert (=> d!2183320 (= lt!2500345 (choose!52557 lt!2500077 (exprs!6784 ct2!306) lambda!406735))))

(assert (=> d!2183320 (forall!16197 lt!2500077 lambda!406735)))

(assert (=> d!2183320 (= (lemmaConcatPreservesForall!624 lt!2500077 (exprs!6784 ct2!306) lambda!406735) lt!2500345)))

(declare-fun bs!1865229 () Bool)

(assert (= bs!1865229 d!2183320))

(assert (=> bs!1865229 m!7700744))

(assert (=> bs!1865229 m!7700744))

(declare-fun m!7701212 () Bool)

(assert (=> bs!1865229 m!7701212))

(declare-fun m!7701214 () Bool)

(assert (=> bs!1865229 m!7701214))

(declare-fun m!7701216 () Bool)

(assert (=> bs!1865229 m!7701216))

(assert (=> b!7004671 d!2183320))

(declare-fun b!7004872 () Bool)

(declare-fun e!4210509 () Option!16793)

(assert (=> b!7004872 (= e!4210509 None!16792)))

(declare-fun b!7004873 () Bool)

(declare-fun e!4210508 () Bool)

(declare-fun lt!2500346 () Option!16793)

(assert (=> b!7004873 (= e!4210508 (not (isDefined!13494 lt!2500346)))))

(declare-fun b!7004874 () Bool)

(declare-fun e!4210506 () Option!16793)

(assert (=> b!7004874 (= e!4210506 e!4210509)))

(declare-fun c!1300737 () Bool)

(assert (=> b!7004874 (= c!1300737 (is-Nil!67285 s!7408))))

(declare-fun b!7004875 () Bool)

(declare-fun lt!2500347 () Unit!161248)

(declare-fun lt!2500348 () Unit!161248)

(assert (=> b!7004875 (= lt!2500347 lt!2500348)))

(assert (=> b!7004875 (= (++!15277 (++!15277 Nil!67285 (Cons!67285 (h!73733 s!7408) Nil!67285)) (t!381162 s!7408)) s!7408)))

(assert (=> b!7004875 (= lt!2500348 (lemmaMoveElementToOtherListKeepsConcatEq!2889 Nil!67285 (h!73733 s!7408) (t!381162 s!7408) s!7408))))

(assert (=> b!7004875 (= e!4210509 (findConcatSeparationZippers!309 lt!2500097 lt!2500065 (++!15277 Nil!67285 (Cons!67285 (h!73733 s!7408) Nil!67285)) (t!381162 s!7408) s!7408))))

(declare-fun b!7004876 () Bool)

(declare-fun e!4210507 () Bool)

(assert (=> b!7004876 (= e!4210507 (= (++!15277 (_1!37264 (get!23602 lt!2500346)) (_2!37264 (get!23602 lt!2500346))) s!7408))))

(declare-fun d!2183322 () Bool)

(assert (=> d!2183322 e!4210508))

(declare-fun res!2858022 () Bool)

(assert (=> d!2183322 (=> res!2858022 e!4210508)))

(assert (=> d!2183322 (= res!2858022 e!4210507)))

(declare-fun res!2858025 () Bool)

(assert (=> d!2183322 (=> (not res!2858025) (not e!4210507))))

(assert (=> d!2183322 (= res!2858025 (isDefined!13494 lt!2500346))))

(assert (=> d!2183322 (= lt!2500346 e!4210506)))

(declare-fun c!1300736 () Bool)

(declare-fun e!4210510 () Bool)

(assert (=> d!2183322 (= c!1300736 e!4210510)))

(declare-fun res!2858023 () Bool)

(assert (=> d!2183322 (=> (not res!2858023) (not e!4210510))))

(assert (=> d!2183322 (= res!2858023 (matchZipper!2828 lt!2500097 Nil!67285))))

(assert (=> d!2183322 (= (++!15277 Nil!67285 s!7408) s!7408)))

(assert (=> d!2183322 (= (findConcatSeparationZippers!309 lt!2500097 lt!2500065 Nil!67285 s!7408 s!7408) lt!2500346)))

(declare-fun b!7004877 () Bool)

(declare-fun res!2858024 () Bool)

(assert (=> b!7004877 (=> (not res!2858024) (not e!4210507))))

(assert (=> b!7004877 (= res!2858024 (matchZipper!2828 lt!2500097 (_1!37264 (get!23602 lt!2500346))))))

(declare-fun b!7004878 () Bool)

(assert (=> b!7004878 (= e!4210506 (Some!16792 (tuple2!67923 Nil!67285 s!7408)))))

(declare-fun b!7004879 () Bool)

(assert (=> b!7004879 (= e!4210510 (matchZipper!2828 lt!2500065 s!7408))))

(declare-fun b!7004880 () Bool)

(declare-fun res!2858026 () Bool)

(assert (=> b!7004880 (=> (not res!2858026) (not e!4210507))))

(assert (=> b!7004880 (= res!2858026 (matchZipper!2828 lt!2500065 (_2!37264 (get!23602 lt!2500346))))))

(assert (= (and d!2183322 res!2858023) b!7004879))

(assert (= (and d!2183322 c!1300736) b!7004878))

(assert (= (and d!2183322 (not c!1300736)) b!7004874))

(assert (= (and b!7004874 c!1300737) b!7004872))

(assert (= (and b!7004874 (not c!1300737)) b!7004875))

(assert (= (and d!2183322 res!2858025) b!7004877))

(assert (= (and b!7004877 res!2858024) b!7004880))

(assert (= (and b!7004880 res!2858026) b!7004876))

(assert (= (and d!2183322 (not res!2858022)) b!7004873))

(declare-fun m!7701218 () Bool)

(assert (=> b!7004873 m!7701218))

(assert (=> b!7004875 m!7701102))

(assert (=> b!7004875 m!7701102))

(assert (=> b!7004875 m!7701104))

(assert (=> b!7004875 m!7701106))

(assert (=> b!7004875 m!7701102))

(declare-fun m!7701220 () Bool)

(assert (=> b!7004875 m!7701220))

(declare-fun m!7701222 () Bool)

(assert (=> b!7004880 m!7701222))

(declare-fun m!7701224 () Bool)

(assert (=> b!7004880 m!7701224))

(assert (=> b!7004877 m!7701222))

(declare-fun m!7701226 () Bool)

(assert (=> b!7004877 m!7701226))

(assert (=> b!7004879 m!7701116))

(assert (=> d!2183322 m!7701218))

(declare-fun m!7701228 () Bool)

(assert (=> d!2183322 m!7701228))

(assert (=> d!2183322 m!7700904))

(assert (=> b!7004876 m!7701222))

(declare-fun m!7701230 () Bool)

(assert (=> b!7004876 m!7701230))

(assert (=> b!7004689 d!2183322))

(declare-fun d!2183324 () Bool)

(declare-fun c!1300738 () Bool)

(assert (=> d!2183324 (= c!1300738 (isEmpty!39295 (_1!37264 lt!2500040)))))

(declare-fun e!4210511 () Bool)

(assert (=> d!2183324 (= (matchZipper!2828 lt!2500097 (_1!37264 lt!2500040)) e!4210511)))

(declare-fun b!7004881 () Bool)

(assert (=> b!7004881 (= e!4210511 (nullableZipper!2469 lt!2500097))))

(declare-fun b!7004882 () Bool)

(assert (=> b!7004882 (= e!4210511 (matchZipper!2828 (derivationStepZipper!2768 lt!2500097 (head!14153 (_1!37264 lt!2500040))) (tail!13345 (_1!37264 lt!2500040))))))

(assert (= (and d!2183324 c!1300738) b!7004881))

(assert (= (and d!2183324 (not c!1300738)) b!7004882))

(assert (=> d!2183324 m!7700908))

(declare-fun m!7701232 () Bool)

(assert (=> b!7004881 m!7701232))

(assert (=> b!7004882 m!7701152))

(assert (=> b!7004882 m!7701152))

(declare-fun m!7701234 () Bool)

(assert (=> b!7004882 m!7701234))

(assert (=> b!7004882 m!7700790))

(assert (=> b!7004882 m!7701234))

(assert (=> b!7004882 m!7700790))

(declare-fun m!7701236 () Bool)

(assert (=> b!7004882 m!7701236))

(assert (=> b!7004689 d!2183324))

(declare-fun d!2183326 () Bool)

(assert (=> d!2183326 (= (isDefined!13494 lt!2500050) (not (isEmpty!39299 lt!2500050)))))

(declare-fun bs!1865230 () Bool)

(assert (= bs!1865230 d!2183326))

(declare-fun m!7701238 () Bool)

(assert (=> bs!1865230 m!7701238))

(assert (=> b!7004689 d!2183326))

(declare-fun d!2183328 () Bool)

(assert (=> d!2183328 (= (get!23602 lt!2500050) (v!53070 lt!2500050))))

(assert (=> b!7004689 d!2183328))

(declare-fun d!2183330 () Bool)

(assert (=> d!2183330 (isDefined!13494 (findConcatSeparationZippers!309 lt!2500097 (set.insert ct2!306 (as set.empty (Set Context!12568))) Nil!67285 s!7408 s!7408))))

(declare-fun lt!2500351 () Unit!161248)

(declare-fun choose!52558 ((Set Context!12568) Context!12568 List!67409) Unit!161248)

(assert (=> d!2183330 (= lt!2500351 (choose!52558 lt!2500097 ct2!306 s!7408))))

(assert (=> d!2183330 (matchZipper!2828 (appendTo!409 lt!2500097 ct2!306) s!7408)))

(assert (=> d!2183330 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!309 lt!2500097 ct2!306 s!7408) lt!2500351)))

(declare-fun bs!1865231 () Bool)

(assert (= bs!1865231 d!2183330))

(assert (=> bs!1865231 m!7700884))

(declare-fun m!7701240 () Bool)

(assert (=> bs!1865231 m!7701240))

(assert (=> bs!1865231 m!7700884))

(assert (=> bs!1865231 m!7701240))

(declare-fun m!7701242 () Bool)

(assert (=> bs!1865231 m!7701242))

(declare-fun m!7701244 () Bool)

(assert (=> bs!1865231 m!7701244))

(declare-fun m!7701246 () Bool)

(assert (=> bs!1865231 m!7701246))

(declare-fun m!7701248 () Bool)

(assert (=> bs!1865231 m!7701248))

(assert (=> bs!1865231 m!7701246))

(assert (=> b!7004689 d!2183330))

(declare-fun d!2183332 () Bool)

(assert (=> d!2183332 (= (isDefined!13494 call!636030) (not (isEmpty!39299 call!636030)))))

(declare-fun bs!1865232 () Bool)

(assert (= bs!1865232 d!2183332))

(declare-fun m!7701250 () Bool)

(assert (=> bs!1865232 m!7701250))

(assert (=> bm!636025 d!2183332))

(declare-fun bs!1865233 () Bool)

(declare-fun d!2183334 () Bool)

(assert (= bs!1865233 (and d!2183334 b!7004690)))

(declare-fun lambda!406827 () Int)

(assert (=> bs!1865233 (= lambda!406827 lambda!406736)))

(assert (=> d!2183334 true))

(assert (=> d!2183334 (= (derivationStepZipper!2768 lt!2500098 (h!73733 s!7408)) (flatMap!2274 lt!2500098 lambda!406827))))

(declare-fun bs!1865234 () Bool)

(assert (= bs!1865234 d!2183334))

(declare-fun m!7701252 () Bool)

(assert (=> bs!1865234 m!7701252))

(assert (=> b!7004690 d!2183334))

(declare-fun d!2183336 () Bool)

(declare-fun choose!52559 ((Set Context!12568) Int) (Set Context!12568))

(assert (=> d!2183336 (= (flatMap!2274 lt!2500098 lambda!406736) (choose!52559 lt!2500098 lambda!406736))))

(declare-fun bs!1865235 () Bool)

(assert (= bs!1865235 d!2183336))

(declare-fun m!7701254 () Bool)

(assert (=> bs!1865235 m!7701254))

(assert (=> b!7004690 d!2183336))

(declare-fun d!2183338 () Bool)

(assert (=> d!2183338 (forall!16197 (++!15278 (exprs!6784 lt!2500045) (exprs!6784 ct2!306)) lambda!406735)))

(declare-fun lt!2500352 () Unit!161248)

(assert (=> d!2183338 (= lt!2500352 (choose!52557 (exprs!6784 lt!2500045) (exprs!6784 ct2!306) lambda!406735))))

(assert (=> d!2183338 (forall!16197 (exprs!6784 lt!2500045) lambda!406735)))

(assert (=> d!2183338 (= (lemmaConcatPreservesForall!624 (exprs!6784 lt!2500045) (exprs!6784 ct2!306) lambda!406735) lt!2500352)))

(declare-fun bs!1865236 () Bool)

(assert (= bs!1865236 d!2183338))

(assert (=> bs!1865236 m!7700848))

(assert (=> bs!1865236 m!7700848))

(declare-fun m!7701256 () Bool)

(assert (=> bs!1865236 m!7701256))

(declare-fun m!7701258 () Bool)

(assert (=> bs!1865236 m!7701258))

(declare-fun m!7701260 () Bool)

(assert (=> bs!1865236 m!7701260))

(assert (=> b!7004690 d!2183338))

(declare-fun b!7004895 () Bool)

(declare-fun e!4210519 () Bool)

(assert (=> b!7004895 (= e!4210519 (nullable!7048 (h!73734 (exprs!6784 lt!2500092))))))

(declare-fun b!7004896 () Bool)

(declare-fun e!4210520 () (Set Context!12568))

(declare-fun e!4210518 () (Set Context!12568))

(assert (=> b!7004896 (= e!4210520 e!4210518)))

(declare-fun c!1300746 () Bool)

(assert (=> b!7004896 (= c!1300746 (is-Cons!67286 (exprs!6784 lt!2500092)))))

(declare-fun b!7004897 () Bool)

(assert (=> b!7004897 (= e!4210518 (as set.empty (Set Context!12568)))))

(declare-fun b!7004898 () Bool)

(declare-fun call!636043 () (Set Context!12568))

(assert (=> b!7004898 (= e!4210520 (set.union call!636043 (derivationStepZipperUp!1938 (Context!12569 (t!381163 (exprs!6784 lt!2500092))) (h!73733 s!7408))))))

(declare-fun bm!636038 () Bool)

(assert (=> bm!636038 (= call!636043 (derivationStepZipperDown!2006 (h!73734 (exprs!6784 lt!2500092)) (Context!12569 (t!381163 (exprs!6784 lt!2500092))) (h!73733 s!7408)))))

(declare-fun d!2183340 () Bool)

(declare-fun c!1300745 () Bool)

(assert (=> d!2183340 (= c!1300745 e!4210519)))

(declare-fun res!2858029 () Bool)

(assert (=> d!2183340 (=> (not res!2858029) (not e!4210519))))

(assert (=> d!2183340 (= res!2858029 (is-Cons!67286 (exprs!6784 lt!2500092)))))

(assert (=> d!2183340 (= (derivationStepZipperUp!1938 lt!2500092 (h!73733 s!7408)) e!4210520)))

(declare-fun b!7004899 () Bool)

(assert (=> b!7004899 (= e!4210518 call!636043)))

(assert (= (and d!2183340 res!2858029) b!7004895))

(assert (= (and d!2183340 c!1300745) b!7004898))

(assert (= (and d!2183340 (not c!1300745)) b!7004896))

(assert (= (and b!7004896 c!1300746) b!7004899))

(assert (= (and b!7004896 (not c!1300746)) b!7004897))

(assert (= (or b!7004898 b!7004899) bm!636038))

(declare-fun m!7701262 () Bool)

(assert (=> b!7004895 m!7701262))

(declare-fun m!7701264 () Bool)

(assert (=> b!7004898 m!7701264))

(declare-fun m!7701266 () Bool)

(assert (=> bm!636038 m!7701266))

(assert (=> b!7004690 d!2183340))

(declare-fun d!2183342 () Bool)

(declare-fun dynLambda!27026 (Int Context!12568) (Set Context!12568))

(assert (=> d!2183342 (= (flatMap!2274 lt!2500098 lambda!406736) (dynLambda!27026 lambda!406736 lt!2500092))))

(declare-fun lt!2500355 () Unit!161248)

(declare-fun choose!52560 ((Set Context!12568) Context!12568 Int) Unit!161248)

(assert (=> d!2183342 (= lt!2500355 (choose!52560 lt!2500098 lt!2500092 lambda!406736))))

(assert (=> d!2183342 (= lt!2500098 (set.insert lt!2500092 (as set.empty (Set Context!12568))))))

(assert (=> d!2183342 (= (lemmaFlatMapOnSingletonSet!1789 lt!2500098 lt!2500092 lambda!406736) lt!2500355)))

(declare-fun b_lambda!263911 () Bool)

(assert (=> (not b_lambda!263911) (not d!2183342)))

(declare-fun bs!1865237 () Bool)

(assert (= bs!1865237 d!2183342))

(assert (=> bs!1865237 m!7700812))

(declare-fun m!7701268 () Bool)

(assert (=> bs!1865237 m!7701268))

(declare-fun m!7701270 () Bool)

(assert (=> bs!1865237 m!7701270))

(assert (=> bs!1865237 m!7700754))

(assert (=> b!7004690 d!2183342))

(declare-fun b!7004900 () Bool)

(declare-fun e!4210522 () Bool)

(assert (=> b!7004900 (= e!4210522 (nullable!7048 (h!73734 (exprs!6784 lt!2500083))))))

(declare-fun b!7004901 () Bool)

(declare-fun e!4210523 () (Set Context!12568))

(declare-fun e!4210521 () (Set Context!12568))

(assert (=> b!7004901 (= e!4210523 e!4210521)))

(declare-fun c!1300748 () Bool)

(assert (=> b!7004901 (= c!1300748 (is-Cons!67286 (exprs!6784 lt!2500083)))))

(declare-fun b!7004902 () Bool)

(assert (=> b!7004902 (= e!4210521 (as set.empty (Set Context!12568)))))

(declare-fun call!636044 () (Set Context!12568))

(declare-fun b!7004903 () Bool)

(assert (=> b!7004903 (= e!4210523 (set.union call!636044 (derivationStepZipperUp!1938 (Context!12569 (t!381163 (exprs!6784 lt!2500083))) (h!73733 s!7408))))))

(declare-fun bm!636039 () Bool)

(assert (=> bm!636039 (= call!636044 (derivationStepZipperDown!2006 (h!73734 (exprs!6784 lt!2500083)) (Context!12569 (t!381163 (exprs!6784 lt!2500083))) (h!73733 s!7408)))))

(declare-fun d!2183344 () Bool)

(declare-fun c!1300747 () Bool)

(assert (=> d!2183344 (= c!1300747 e!4210522)))

(declare-fun res!2858030 () Bool)

(assert (=> d!2183344 (=> (not res!2858030) (not e!4210522))))

(assert (=> d!2183344 (= res!2858030 (is-Cons!67286 (exprs!6784 lt!2500083)))))

(assert (=> d!2183344 (= (derivationStepZipperUp!1938 lt!2500083 (h!73733 s!7408)) e!4210523)))

(declare-fun b!7004904 () Bool)

(assert (=> b!7004904 (= e!4210521 call!636044)))

(assert (= (and d!2183344 res!2858030) b!7004900))

(assert (= (and d!2183344 c!1300747) b!7004903))

(assert (= (and d!2183344 (not c!1300747)) b!7004901))

(assert (= (and b!7004901 c!1300748) b!7004904))

(assert (= (and b!7004901 (not c!1300748)) b!7004902))

(assert (= (or b!7004903 b!7004904) bm!636039))

(declare-fun m!7701272 () Bool)

(assert (=> b!7004900 m!7701272))

(declare-fun m!7701274 () Bool)

(assert (=> b!7004903 m!7701274))

(declare-fun m!7701276 () Bool)

(assert (=> bm!636039 m!7701276))

(assert (=> b!7004683 d!2183344))

(assert (=> b!7004683 d!2183320))

(declare-fun call!636061 () List!67410)

(declare-fun bm!636052 () Bool)

(declare-fun c!1300762 () Bool)

(declare-fun call!636062 () (Set Context!12568))

(assert (=> bm!636052 (= call!636062 (derivationStepZipperDown!2006 (ite c!1300762 (regOne!35089 (h!73734 (exprs!6784 lt!2500045))) (regOne!35088 (h!73734 (exprs!6784 lt!2500045)))) (ite c!1300762 lt!2500083 (Context!12569 call!636061)) (h!73733 s!7408)))))

(declare-fun bm!636053 () Bool)

(declare-fun call!636057 () (Set Context!12568))

(declare-fun call!636060 () (Set Context!12568))

(assert (=> bm!636053 (= call!636057 call!636060)))

(declare-fun d!2183346 () Bool)

(declare-fun c!1300760 () Bool)

(assert (=> d!2183346 (= c!1300760 (and (is-ElementMatch!17288 (h!73734 (exprs!6784 lt!2500045))) (= (c!1300679 (h!73734 (exprs!6784 lt!2500045))) (h!73733 s!7408))))))

(declare-fun e!4210538 () (Set Context!12568))

(assert (=> d!2183346 (= (derivationStepZipperDown!2006 (h!73734 (exprs!6784 lt!2500045)) lt!2500083 (h!73733 s!7408)) e!4210538)))

(declare-fun b!7004927 () Bool)

(declare-fun e!4210541 () (Set Context!12568))

(assert (=> b!7004927 (= e!4210541 call!636057)))

(declare-fun b!7004928 () Bool)

(declare-fun e!4210539 () (Set Context!12568))

(assert (=> b!7004928 (= e!4210539 (set.union call!636062 call!636060))))

(declare-fun b!7004929 () Bool)

(assert (=> b!7004929 (= e!4210541 (as set.empty (Set Context!12568)))))

(declare-fun bm!636054 () Bool)

(declare-fun c!1300759 () Bool)

(declare-fun c!1300761 () Bool)

(declare-fun call!636059 () (Set Context!12568))

(declare-fun call!636058 () List!67410)

(assert (=> bm!636054 (= call!636059 (derivationStepZipperDown!2006 (ite c!1300762 (regTwo!35089 (h!73734 (exprs!6784 lt!2500045))) (ite c!1300759 (regTwo!35088 (h!73734 (exprs!6784 lt!2500045))) (ite c!1300761 (regOne!35088 (h!73734 (exprs!6784 lt!2500045))) (reg!17617 (h!73734 (exprs!6784 lt!2500045)))))) (ite (or c!1300762 c!1300759) lt!2500083 (Context!12569 call!636058)) (h!73733 s!7408)))))

(declare-fun bm!636055 () Bool)

(declare-fun $colon$colon!2512 (List!67410 Regex!17288) List!67410)

(assert (=> bm!636055 (= call!636061 ($colon$colon!2512 (exprs!6784 lt!2500083) (ite (or c!1300759 c!1300761) (regTwo!35088 (h!73734 (exprs!6784 lt!2500045))) (h!73734 (exprs!6784 lt!2500045)))))))

(declare-fun b!7004930 () Bool)

(declare-fun e!4210536 () Bool)

(assert (=> b!7004930 (= e!4210536 (nullable!7048 (regOne!35088 (h!73734 (exprs!6784 lt!2500045)))))))

(declare-fun b!7004931 () Bool)

(declare-fun e!4210537 () (Set Context!12568))

(assert (=> b!7004931 (= e!4210538 e!4210537)))

(assert (=> b!7004931 (= c!1300762 (is-Union!17288 (h!73734 (exprs!6784 lt!2500045))))))

(declare-fun b!7004932 () Bool)

(assert (=> b!7004932 (= e!4210537 (set.union call!636062 call!636059))))

(declare-fun b!7004933 () Bool)

(declare-fun e!4210540 () (Set Context!12568))

(assert (=> b!7004933 (= e!4210539 e!4210540)))

(assert (=> b!7004933 (= c!1300761 (is-Concat!26133 (h!73734 (exprs!6784 lt!2500045))))))

(declare-fun b!7004934 () Bool)

(assert (=> b!7004934 (= e!4210540 call!636057)))

(declare-fun b!7004935 () Bool)

(assert (=> b!7004935 (= c!1300759 e!4210536)))

(declare-fun res!2858033 () Bool)

(assert (=> b!7004935 (=> (not res!2858033) (not e!4210536))))

(assert (=> b!7004935 (= res!2858033 (is-Concat!26133 (h!73734 (exprs!6784 lt!2500045))))))

(assert (=> b!7004935 (= e!4210537 e!4210539)))

(declare-fun b!7004936 () Bool)

(declare-fun c!1300763 () Bool)

(assert (=> b!7004936 (= c!1300763 (is-Star!17288 (h!73734 (exprs!6784 lt!2500045))))))

(assert (=> b!7004936 (= e!4210540 e!4210541)))

(declare-fun bm!636056 () Bool)

(assert (=> bm!636056 (= call!636058 call!636061)))

(declare-fun b!7004937 () Bool)

(assert (=> b!7004937 (= e!4210538 (set.insert lt!2500083 (as set.empty (Set Context!12568))))))

(declare-fun bm!636057 () Bool)

(assert (=> bm!636057 (= call!636060 call!636059)))

(assert (= (and d!2183346 c!1300760) b!7004937))

(assert (= (and d!2183346 (not c!1300760)) b!7004931))

(assert (= (and b!7004931 c!1300762) b!7004932))

(assert (= (and b!7004931 (not c!1300762)) b!7004935))

(assert (= (and b!7004935 res!2858033) b!7004930))

(assert (= (and b!7004935 c!1300759) b!7004928))

(assert (= (and b!7004935 (not c!1300759)) b!7004933))

(assert (= (and b!7004933 c!1300761) b!7004934))

(assert (= (and b!7004933 (not c!1300761)) b!7004936))

(assert (= (and b!7004936 c!1300763) b!7004927))

(assert (= (and b!7004936 (not c!1300763)) b!7004929))

(assert (= (or b!7004934 b!7004927) bm!636056))

(assert (= (or b!7004934 b!7004927) bm!636053))

(assert (= (or b!7004928 bm!636053) bm!636057))

(assert (= (or b!7004928 bm!636056) bm!636055))

(assert (= (or b!7004932 b!7004928) bm!636052))

(assert (= (or b!7004932 bm!636057) bm!636054))

(declare-fun m!7701278 () Bool)

(assert (=> bm!636052 m!7701278))

(assert (=> b!7004937 m!7700858))

(declare-fun m!7701280 () Bool)

(assert (=> bm!636055 m!7701280))

(declare-fun m!7701282 () Bool)

(assert (=> b!7004930 m!7701282))

(declare-fun m!7701284 () Bool)

(assert (=> bm!636054 m!7701284))

(assert (=> b!7004683 d!2183346))

(declare-fun b!7004948 () Bool)

(declare-fun res!2858038 () Bool)

(declare-fun e!4210546 () Bool)

(assert (=> b!7004948 (=> (not res!2858038) (not e!4210546))))

(declare-fun lt!2500358 () List!67410)

(declare-fun size!40952 (List!67410) Int)

(assert (=> b!7004948 (= res!2858038 (= (size!40952 lt!2500358) (+ (size!40952 lt!2500077) (size!40952 (exprs!6784 ct2!306)))))))

(declare-fun b!7004947 () Bool)

(declare-fun e!4210547 () List!67410)

(assert (=> b!7004947 (= e!4210547 (Cons!67286 (h!73734 lt!2500077) (++!15278 (t!381163 lt!2500077) (exprs!6784 ct2!306))))))

(declare-fun d!2183348 () Bool)

(assert (=> d!2183348 e!4210546))

(declare-fun res!2858039 () Bool)

(assert (=> d!2183348 (=> (not res!2858039) (not e!4210546))))

(declare-fun content!13338 (List!67410) (Set Regex!17288))

(assert (=> d!2183348 (= res!2858039 (= (content!13338 lt!2500358) (set.union (content!13338 lt!2500077) (content!13338 (exprs!6784 ct2!306)))))))

(assert (=> d!2183348 (= lt!2500358 e!4210547)))

(declare-fun c!1300766 () Bool)

(assert (=> d!2183348 (= c!1300766 (is-Nil!67286 lt!2500077))))

(assert (=> d!2183348 (= (++!15278 lt!2500077 (exprs!6784 ct2!306)) lt!2500358)))

(declare-fun b!7004946 () Bool)

(assert (=> b!7004946 (= e!4210547 (exprs!6784 ct2!306))))

(declare-fun b!7004949 () Bool)

(assert (=> b!7004949 (= e!4210546 (or (not (= (exprs!6784 ct2!306) Nil!67286)) (= lt!2500358 lt!2500077)))))

(assert (= (and d!2183348 c!1300766) b!7004946))

(assert (= (and d!2183348 (not c!1300766)) b!7004947))

(assert (= (and d!2183348 res!2858039) b!7004948))

(assert (= (and b!7004948 res!2858038) b!7004949))

(declare-fun m!7701286 () Bool)

(assert (=> b!7004948 m!7701286))

(declare-fun m!7701288 () Bool)

(assert (=> b!7004948 m!7701288))

(declare-fun m!7701290 () Bool)

(assert (=> b!7004948 m!7701290))

(declare-fun m!7701292 () Bool)

(assert (=> b!7004947 m!7701292))

(declare-fun m!7701294 () Bool)

(assert (=> d!2183348 m!7701294))

(declare-fun m!7701296 () Bool)

(assert (=> d!2183348 m!7701296))

(declare-fun m!7701298 () Bool)

(assert (=> d!2183348 m!7701298))

(assert (=> b!7004683 d!2183348))

(assert (=> b!7004681 d!2183318))

(assert (=> b!7004681 d!2183320))

(declare-fun d!2183350 () Bool)

(declare-fun c!1300767 () Bool)

(assert (=> d!2183350 (= c!1300767 (isEmpty!39295 s!7408))))

(declare-fun e!4210548 () Bool)

(assert (=> d!2183350 (= (matchZipper!2828 lt!2500054 s!7408) e!4210548)))

(declare-fun b!7004950 () Bool)

(assert (=> b!7004950 (= e!4210548 (nullableZipper!2469 lt!2500054))))

(declare-fun b!7004951 () Bool)

(assert (=> b!7004951 (= e!4210548 (matchZipper!2828 (derivationStepZipper!2768 lt!2500054 (head!14153 s!7408)) (tail!13345 s!7408)))))

(assert (= (and d!2183350 c!1300767) b!7004950))

(assert (= (and d!2183350 (not c!1300767)) b!7004951))

(assert (=> d!2183350 m!7701126))

(declare-fun m!7701300 () Bool)

(assert (=> b!7004950 m!7701300))

(assert (=> b!7004951 m!7701130))

(assert (=> b!7004951 m!7701130))

(declare-fun m!7701302 () Bool)

(assert (=> b!7004951 m!7701302))

(assert (=> b!7004951 m!7701134))

(assert (=> b!7004951 m!7701302))

(assert (=> b!7004951 m!7701134))

(declare-fun m!7701304 () Bool)

(assert (=> b!7004951 m!7701304))

(assert (=> b!7004682 d!2183350))

(assert (=> b!7004682 d!2183320))

(declare-fun b!7004952 () Bool)

(declare-fun e!4210550 () Bool)

(assert (=> b!7004952 (= e!4210550 (nullable!7048 (h!73734 (exprs!6784 lt!2500045))))))

(declare-fun b!7004953 () Bool)

(declare-fun e!4210551 () (Set Context!12568))

(declare-fun e!4210549 () (Set Context!12568))

(assert (=> b!7004953 (= e!4210551 e!4210549)))

(declare-fun c!1300769 () Bool)

(assert (=> b!7004953 (= c!1300769 (is-Cons!67286 (exprs!6784 lt!2500045)))))

(declare-fun b!7004954 () Bool)

(assert (=> b!7004954 (= e!4210549 (as set.empty (Set Context!12568)))))

(declare-fun b!7004955 () Bool)

(declare-fun call!636063 () (Set Context!12568))

(assert (=> b!7004955 (= e!4210551 (set.union call!636063 (derivationStepZipperUp!1938 (Context!12569 (t!381163 (exprs!6784 lt!2500045))) (h!73733 s!7408))))))

(declare-fun bm!636058 () Bool)

(assert (=> bm!636058 (= call!636063 (derivationStepZipperDown!2006 (h!73734 (exprs!6784 lt!2500045)) (Context!12569 (t!381163 (exprs!6784 lt!2500045))) (h!73733 s!7408)))))

(declare-fun d!2183352 () Bool)

(declare-fun c!1300768 () Bool)

(assert (=> d!2183352 (= c!1300768 e!4210550)))

(declare-fun res!2858040 () Bool)

(assert (=> d!2183352 (=> (not res!2858040) (not e!4210550))))

(assert (=> d!2183352 (= res!2858040 (is-Cons!67286 (exprs!6784 lt!2500045)))))

(assert (=> d!2183352 (= (derivationStepZipperUp!1938 lt!2500045 (h!73733 s!7408)) e!4210551)))

(declare-fun b!7004956 () Bool)

(assert (=> b!7004956 (= e!4210549 call!636063)))

(assert (= (and d!2183352 res!2858040) b!7004952))

(assert (= (and d!2183352 c!1300768) b!7004955))

(assert (= (and d!2183352 (not c!1300768)) b!7004953))

(assert (= (and b!7004953 c!1300769) b!7004956))

(assert (= (and b!7004953 (not c!1300769)) b!7004954))

(assert (= (or b!7004955 b!7004956) bm!636058))

(assert (=> b!7004952 m!7700840))

(declare-fun m!7701306 () Bool)

(assert (=> b!7004955 m!7701306))

(declare-fun m!7701308 () Bool)

(assert (=> bm!636058 m!7701308))

(assert (=> b!7004685 d!2183352))

(declare-fun d!2183354 () Bool)

(assert (=> d!2183354 (= (tail!13345 (_1!37264 lt!2500040)) (t!381162 (_1!37264 lt!2500040)))))

(assert (=> b!7004685 d!2183354))

(declare-fun d!2183356 () Bool)

(assert (=> d!2183356 (= (flatMap!2274 lt!2500066 lambda!406736) (dynLambda!27026 lambda!406736 lt!2500045))))

(declare-fun lt!2500359 () Unit!161248)

(assert (=> d!2183356 (= lt!2500359 (choose!52560 lt!2500066 lt!2500045 lambda!406736))))

(assert (=> d!2183356 (= lt!2500066 (set.insert lt!2500045 (as set.empty (Set Context!12568))))))

(assert (=> d!2183356 (= (lemmaFlatMapOnSingletonSet!1789 lt!2500066 lt!2500045 lambda!406736) lt!2500359)))

(declare-fun b_lambda!263913 () Bool)

(assert (=> (not b_lambda!263913) (not d!2183356)))

(declare-fun bs!1865238 () Bool)

(assert (= bs!1865238 d!2183356))

(assert (=> bs!1865238 m!7700792))

(declare-fun m!7701310 () Bool)

(assert (=> bs!1865238 m!7701310))

(declare-fun m!7701312 () Bool)

(assert (=> bs!1865238 m!7701312))

(assert (=> bs!1865238 m!7700778))

(assert (=> b!7004685 d!2183356))

(declare-fun b!7004957 () Bool)

(declare-fun e!4210553 () Bool)

(assert (=> b!7004957 (= e!4210553 (nullable!7048 (h!73734 (exprs!6784 lt!2500100))))))

(declare-fun b!7004958 () Bool)

(declare-fun e!4210554 () (Set Context!12568))

(declare-fun e!4210552 () (Set Context!12568))

(assert (=> b!7004958 (= e!4210554 e!4210552)))

(declare-fun c!1300771 () Bool)

(assert (=> b!7004958 (= c!1300771 (is-Cons!67286 (exprs!6784 lt!2500100)))))

(declare-fun b!7004959 () Bool)

(assert (=> b!7004959 (= e!4210552 (as set.empty (Set Context!12568)))))

(declare-fun b!7004960 () Bool)

(declare-fun call!636064 () (Set Context!12568))

(assert (=> b!7004960 (= e!4210554 (set.union call!636064 (derivationStepZipperUp!1938 (Context!12569 (t!381163 (exprs!6784 lt!2500100))) (h!73733 s!7408))))))

(declare-fun bm!636059 () Bool)

(assert (=> bm!636059 (= call!636064 (derivationStepZipperDown!2006 (h!73734 (exprs!6784 lt!2500100)) (Context!12569 (t!381163 (exprs!6784 lt!2500100))) (h!73733 s!7408)))))

(declare-fun d!2183358 () Bool)

(declare-fun c!1300770 () Bool)

(assert (=> d!2183358 (= c!1300770 e!4210553)))

(declare-fun res!2858041 () Bool)

(assert (=> d!2183358 (=> (not res!2858041) (not e!4210553))))

(assert (=> d!2183358 (= res!2858041 (is-Cons!67286 (exprs!6784 lt!2500100)))))

(assert (=> d!2183358 (= (derivationStepZipperUp!1938 lt!2500100 (h!73733 s!7408)) e!4210554)))

(declare-fun b!7004961 () Bool)

(assert (=> b!7004961 (= e!4210552 call!636064)))

(assert (= (and d!2183358 res!2858041) b!7004957))

(assert (= (and d!2183358 c!1300770) b!7004960))

(assert (= (and d!2183358 (not c!1300770)) b!7004958))

(assert (= (and b!7004958 c!1300771) b!7004961))

(assert (= (and b!7004958 (not c!1300771)) b!7004959))

(assert (= (or b!7004960 b!7004961) bm!636059))

(declare-fun m!7701314 () Bool)

(assert (=> b!7004957 m!7701314))

(declare-fun m!7701316 () Bool)

(assert (=> b!7004960 m!7701316))

(declare-fun m!7701318 () Bool)

(assert (=> bm!636059 m!7701318))

(assert (=> b!7004685 d!2183358))

(declare-fun call!636070 () (Set Context!12568))

(declare-fun c!1300775 () Bool)

(declare-fun bm!636060 () Bool)

(declare-fun call!636069 () List!67410)

(assert (=> bm!636060 (= call!636070 (derivationStepZipperDown!2006 (ite c!1300775 (regOne!35089 (h!73734 (exprs!6784 lt!2500045))) (regOne!35088 (h!73734 (exprs!6784 lt!2500045)))) (ite c!1300775 lt!2500100 (Context!12569 call!636069)) (h!73733 s!7408)))))

(declare-fun bm!636061 () Bool)

(declare-fun call!636065 () (Set Context!12568))

(declare-fun call!636068 () (Set Context!12568))

(assert (=> bm!636061 (= call!636065 call!636068)))

(declare-fun d!2183360 () Bool)

(declare-fun c!1300773 () Bool)

(assert (=> d!2183360 (= c!1300773 (and (is-ElementMatch!17288 (h!73734 (exprs!6784 lt!2500045))) (= (c!1300679 (h!73734 (exprs!6784 lt!2500045))) (h!73733 s!7408))))))

(declare-fun e!4210557 () (Set Context!12568))

(assert (=> d!2183360 (= (derivationStepZipperDown!2006 (h!73734 (exprs!6784 lt!2500045)) lt!2500100 (h!73733 s!7408)) e!4210557)))

(declare-fun b!7004962 () Bool)

(declare-fun e!4210560 () (Set Context!12568))

(assert (=> b!7004962 (= e!4210560 call!636065)))

(declare-fun b!7004963 () Bool)

(declare-fun e!4210558 () (Set Context!12568))

(assert (=> b!7004963 (= e!4210558 (set.union call!636070 call!636068))))

(declare-fun b!7004964 () Bool)

(assert (=> b!7004964 (= e!4210560 (as set.empty (Set Context!12568)))))

(declare-fun call!636066 () List!67410)

(declare-fun c!1300772 () Bool)

(declare-fun call!636067 () (Set Context!12568))

(declare-fun bm!636062 () Bool)

(declare-fun c!1300774 () Bool)

(assert (=> bm!636062 (= call!636067 (derivationStepZipperDown!2006 (ite c!1300775 (regTwo!35089 (h!73734 (exprs!6784 lt!2500045))) (ite c!1300772 (regTwo!35088 (h!73734 (exprs!6784 lt!2500045))) (ite c!1300774 (regOne!35088 (h!73734 (exprs!6784 lt!2500045))) (reg!17617 (h!73734 (exprs!6784 lt!2500045)))))) (ite (or c!1300775 c!1300772) lt!2500100 (Context!12569 call!636066)) (h!73733 s!7408)))))

(declare-fun bm!636063 () Bool)

(assert (=> bm!636063 (= call!636069 ($colon$colon!2512 (exprs!6784 lt!2500100) (ite (or c!1300772 c!1300774) (regTwo!35088 (h!73734 (exprs!6784 lt!2500045))) (h!73734 (exprs!6784 lt!2500045)))))))

(declare-fun b!7004965 () Bool)

(declare-fun e!4210555 () Bool)

(assert (=> b!7004965 (= e!4210555 (nullable!7048 (regOne!35088 (h!73734 (exprs!6784 lt!2500045)))))))

(declare-fun b!7004966 () Bool)

(declare-fun e!4210556 () (Set Context!12568))

(assert (=> b!7004966 (= e!4210557 e!4210556)))

(assert (=> b!7004966 (= c!1300775 (is-Union!17288 (h!73734 (exprs!6784 lt!2500045))))))

(declare-fun b!7004967 () Bool)

(assert (=> b!7004967 (= e!4210556 (set.union call!636070 call!636067))))

(declare-fun b!7004968 () Bool)

(declare-fun e!4210559 () (Set Context!12568))

(assert (=> b!7004968 (= e!4210558 e!4210559)))

(assert (=> b!7004968 (= c!1300774 (is-Concat!26133 (h!73734 (exprs!6784 lt!2500045))))))

(declare-fun b!7004969 () Bool)

(assert (=> b!7004969 (= e!4210559 call!636065)))

(declare-fun b!7004970 () Bool)

(assert (=> b!7004970 (= c!1300772 e!4210555)))

(declare-fun res!2858042 () Bool)

(assert (=> b!7004970 (=> (not res!2858042) (not e!4210555))))

(assert (=> b!7004970 (= res!2858042 (is-Concat!26133 (h!73734 (exprs!6784 lt!2500045))))))

(assert (=> b!7004970 (= e!4210556 e!4210558)))

(declare-fun b!7004971 () Bool)

(declare-fun c!1300776 () Bool)

(assert (=> b!7004971 (= c!1300776 (is-Star!17288 (h!73734 (exprs!6784 lt!2500045))))))

(assert (=> b!7004971 (= e!4210559 e!4210560)))

(declare-fun bm!636064 () Bool)

(assert (=> bm!636064 (= call!636066 call!636069)))

(declare-fun b!7004972 () Bool)

(assert (=> b!7004972 (= e!4210557 (set.insert lt!2500100 (as set.empty (Set Context!12568))))))

(declare-fun bm!636065 () Bool)

(assert (=> bm!636065 (= call!636068 call!636067)))

(assert (= (and d!2183360 c!1300773) b!7004972))

(assert (= (and d!2183360 (not c!1300773)) b!7004966))

(assert (= (and b!7004966 c!1300775) b!7004967))

(assert (= (and b!7004966 (not c!1300775)) b!7004970))

(assert (= (and b!7004970 res!2858042) b!7004965))

(assert (= (and b!7004970 c!1300772) b!7004963))

(assert (= (and b!7004970 (not c!1300772)) b!7004968))

(assert (= (and b!7004968 c!1300774) b!7004969))

(assert (= (and b!7004968 (not c!1300774)) b!7004971))

(assert (= (and b!7004971 c!1300776) b!7004962))

(assert (= (and b!7004971 (not c!1300776)) b!7004964))

(assert (= (or b!7004969 b!7004962) bm!636064))

(assert (= (or b!7004969 b!7004962) bm!636061))

(assert (= (or b!7004963 bm!636061) bm!636065))

(assert (= (or b!7004963 bm!636064) bm!636063))

(assert (= (or b!7004967 b!7004963) bm!636060))

(assert (= (or b!7004967 bm!636065) bm!636062))

(declare-fun m!7701320 () Bool)

(assert (=> bm!636060 m!7701320))

(assert (=> b!7004972 m!7700834))

(declare-fun m!7701322 () Bool)

(assert (=> bm!636063 m!7701322))

(assert (=> b!7004965 m!7701282))

(declare-fun m!7701324 () Bool)

(assert (=> bm!636062 m!7701324))

(assert (=> b!7004685 d!2183360))

(declare-fun e!4210563 () Bool)

(declare-fun d!2183362 () Bool)

(assert (=> d!2183362 (= (matchZipper!2828 (set.union lt!2500036 lt!2500047) lt!2500095) e!4210563)))

(declare-fun res!2858045 () Bool)

(assert (=> d!2183362 (=> res!2858045 e!4210563)))

(assert (=> d!2183362 (= res!2858045 (matchZipper!2828 lt!2500036 lt!2500095))))

(declare-fun lt!2500362 () Unit!161248)

(declare-fun choose!52561 ((Set Context!12568) (Set Context!12568) List!67409) Unit!161248)

(assert (=> d!2183362 (= lt!2500362 (choose!52561 lt!2500036 lt!2500047 lt!2500095))))

(assert (=> d!2183362 (= (lemmaZipperConcatMatchesSameAsBothZippers!1461 lt!2500036 lt!2500047 lt!2500095) lt!2500362)))

(declare-fun b!7004975 () Bool)

(assert (=> b!7004975 (= e!4210563 (matchZipper!2828 lt!2500047 lt!2500095))))

(assert (= (and d!2183362 (not res!2858045)) b!7004975))

(assert (=> d!2183362 m!7700786))

(assert (=> d!2183362 m!7700784))

(declare-fun m!7701326 () Bool)

(assert (=> d!2183362 m!7701326))

(assert (=> b!7004975 m!7700762))

(assert (=> b!7004685 d!2183362))

(declare-fun d!2183364 () Bool)

(assert (=> d!2183364 (= (flatMap!2274 lt!2500097 lambda!406736) (choose!52559 lt!2500097 lambda!406736))))

(declare-fun bs!1865239 () Bool)

(assert (= bs!1865239 d!2183364))

(declare-fun m!7701328 () Bool)

(assert (=> bs!1865239 m!7701328))

(assert (=> b!7004685 d!2183364))

(declare-fun d!2183366 () Bool)

(assert (=> d!2183366 (= (flatMap!2274 lt!2500097 lambda!406736) (dynLambda!27026 lambda!406736 lt!2500100))))

(declare-fun lt!2500363 () Unit!161248)

(assert (=> d!2183366 (= lt!2500363 (choose!52560 lt!2500097 lt!2500100 lambda!406736))))

(assert (=> d!2183366 (= lt!2500097 (set.insert lt!2500100 (as set.empty (Set Context!12568))))))

(assert (=> d!2183366 (= (lemmaFlatMapOnSingletonSet!1789 lt!2500097 lt!2500100 lambda!406736) lt!2500363)))

(declare-fun b_lambda!263915 () Bool)

(assert (=> (not b_lambda!263915) (not d!2183366)))

(declare-fun bs!1865240 () Bool)

(assert (= bs!1865240 d!2183366))

(assert (=> bs!1865240 m!7700772))

(declare-fun m!7701330 () Bool)

(assert (=> bs!1865240 m!7701330))

(declare-fun m!7701332 () Bool)

(assert (=> bs!1865240 m!7701332))

(assert (=> bs!1865240 m!7700834))

(assert (=> b!7004685 d!2183366))

(declare-fun d!2183368 () Bool)

(declare-fun c!1300777 () Bool)

(assert (=> d!2183368 (= c!1300777 (isEmpty!39295 lt!2500095))))

(declare-fun e!4210564 () Bool)

(assert (=> d!2183368 (= (matchZipper!2828 (set.union lt!2500036 lt!2500047) lt!2500095) e!4210564)))

(declare-fun b!7004976 () Bool)

(assert (=> b!7004976 (= e!4210564 (nullableZipper!2469 (set.union lt!2500036 lt!2500047)))))

(declare-fun b!7004977 () Bool)

(assert (=> b!7004977 (= e!4210564 (matchZipper!2828 (derivationStepZipper!2768 (set.union lt!2500036 lt!2500047) (head!14153 lt!2500095)) (tail!13345 lt!2500095)))))

(assert (= (and d!2183368 c!1300777) b!7004976))

(assert (= (and d!2183368 (not c!1300777)) b!7004977))

(declare-fun m!7701334 () Bool)

(assert (=> d!2183368 m!7701334))

(declare-fun m!7701336 () Bool)

(assert (=> b!7004976 m!7701336))

(declare-fun m!7701338 () Bool)

(assert (=> b!7004977 m!7701338))

(assert (=> b!7004977 m!7701338))

(declare-fun m!7701340 () Bool)

(assert (=> b!7004977 m!7701340))

(declare-fun m!7701342 () Bool)

(assert (=> b!7004977 m!7701342))

(assert (=> b!7004977 m!7701340))

(assert (=> b!7004977 m!7701342))

(declare-fun m!7701344 () Bool)

(assert (=> b!7004977 m!7701344))

(assert (=> b!7004685 d!2183368))

(declare-fun d!2183370 () Bool)

(declare-fun c!1300778 () Bool)

(assert (=> d!2183370 (= c!1300778 (isEmpty!39295 lt!2500095))))

(declare-fun e!4210565 () Bool)

(assert (=> d!2183370 (= (matchZipper!2828 lt!2500036 lt!2500095) e!4210565)))

(declare-fun b!7004978 () Bool)

(assert (=> b!7004978 (= e!4210565 (nullableZipper!2469 lt!2500036))))

(declare-fun b!7004979 () Bool)

(assert (=> b!7004979 (= e!4210565 (matchZipper!2828 (derivationStepZipper!2768 lt!2500036 (head!14153 lt!2500095)) (tail!13345 lt!2500095)))))

(assert (= (and d!2183370 c!1300778) b!7004978))

(assert (= (and d!2183370 (not c!1300778)) b!7004979))

(assert (=> d!2183370 m!7701334))

(declare-fun m!7701346 () Bool)

(assert (=> b!7004978 m!7701346))

(assert (=> b!7004979 m!7701338))

(assert (=> b!7004979 m!7701338))

(declare-fun m!7701348 () Bool)

(assert (=> b!7004979 m!7701348))

(assert (=> b!7004979 m!7701342))

(assert (=> b!7004979 m!7701348))

(assert (=> b!7004979 m!7701342))

(declare-fun m!7701350 () Bool)

(assert (=> b!7004979 m!7701350))

(assert (=> b!7004685 d!2183370))

(declare-fun d!2183372 () Bool)

(assert (=> d!2183372 (= (flatMap!2274 lt!2500066 lambda!406736) (choose!52559 lt!2500066 lambda!406736))))

(declare-fun bs!1865241 () Bool)

(assert (= bs!1865241 d!2183372))

(declare-fun m!7701352 () Bool)

(assert (=> bs!1865241 m!7701352))

(assert (=> b!7004685 d!2183372))

(declare-fun b!7004983 () Bool)

(declare-fun e!4210567 () Bool)

(declare-fun lt!2500364 () List!67409)

(assert (=> b!7004983 (= e!4210567 (or (not (= (_2!37264 lt!2500040) Nil!67285)) (= lt!2500364 (_1!37264 lt!2500040))))))

(declare-fun b!7004980 () Bool)

(declare-fun e!4210566 () List!67409)

(assert (=> b!7004980 (= e!4210566 (_2!37264 lt!2500040))))

(declare-fun b!7004982 () Bool)

(declare-fun res!2858046 () Bool)

(assert (=> b!7004982 (=> (not res!2858046) (not e!4210567))))

(assert (=> b!7004982 (= res!2858046 (= (size!40951 lt!2500364) (+ (size!40951 (_1!37264 lt!2500040)) (size!40951 (_2!37264 lt!2500040)))))))

(declare-fun d!2183374 () Bool)

(assert (=> d!2183374 e!4210567))

(declare-fun res!2858047 () Bool)

(assert (=> d!2183374 (=> (not res!2858047) (not e!4210567))))

(assert (=> d!2183374 (= res!2858047 (= (content!13337 lt!2500364) (set.union (content!13337 (_1!37264 lt!2500040)) (content!13337 (_2!37264 lt!2500040)))))))

(assert (=> d!2183374 (= lt!2500364 e!4210566)))

(declare-fun c!1300779 () Bool)

(assert (=> d!2183374 (= c!1300779 (is-Nil!67285 (_1!37264 lt!2500040)))))

(assert (=> d!2183374 (= (++!15277 (_1!37264 lt!2500040) (_2!37264 lt!2500040)) lt!2500364)))

(declare-fun b!7004981 () Bool)

(assert (=> b!7004981 (= e!4210566 (Cons!67285 (h!73733 (_1!37264 lt!2500040)) (++!15277 (t!381162 (_1!37264 lt!2500040)) (_2!37264 lt!2500040))))))

(assert (= (and d!2183374 c!1300779) b!7004980))

(assert (= (and d!2183374 (not c!1300779)) b!7004981))

(assert (= (and d!2183374 res!2858047) b!7004982))

(assert (= (and b!7004982 res!2858046) b!7004983))

(declare-fun m!7701354 () Bool)

(assert (=> b!7004982 m!7701354))

(declare-fun m!7701356 () Bool)

(assert (=> b!7004982 m!7701356))

(declare-fun m!7701358 () Bool)

(assert (=> b!7004982 m!7701358))

(declare-fun m!7701360 () Bool)

(assert (=> d!2183374 m!7701360))

(declare-fun m!7701362 () Bool)

(assert (=> d!2183374 m!7701362))

(declare-fun m!7701364 () Bool)

(assert (=> d!2183374 m!7701364))

(declare-fun m!7701366 () Bool)

(assert (=> b!7004981 m!7701366))

(assert (=> b!7004684 d!2183374))

(assert (=> b!7004679 d!2183318))

(declare-fun d!2183376 () Bool)

(declare-fun nullableFct!2665 (Regex!17288) Bool)

(assert (=> d!2183376 (= (nullable!7048 (h!73734 (exprs!6784 lt!2500045))) (nullableFct!2665 (h!73734 (exprs!6784 lt!2500045))))))

(declare-fun bs!1865242 () Bool)

(assert (= bs!1865242 d!2183376))

(declare-fun m!7701368 () Bool)

(assert (=> bs!1865242 m!7701368))

(assert (=> b!7004677 d!2183376))

(declare-fun d!2183378 () Bool)

(assert (=> d!2183378 (= (tail!13344 (exprs!6784 lt!2500045)) (t!381163 (exprs!6784 lt!2500045)))))

(assert (=> b!7004677 d!2183378))

(assert (=> b!7004696 d!2183338))

(declare-fun d!2183380 () Bool)

(assert (=> d!2183380 (isDefined!13494 (findConcatSeparationZippers!309 (ite c!1300678 lt!2500088 lt!2500066) lt!2500065 Nil!67285 s!7408 s!7408))))

(declare-fun lt!2500365 () Unit!161248)

(assert (=> d!2183380 (= lt!2500365 (choose!52554 (ite c!1300678 lt!2500088 lt!2500066) lt!2500065 (_1!37264 lt!2500040) (_2!37264 lt!2500040) s!7408 Nil!67285 s!7408))))

(assert (=> d!2183380 (matchZipper!2828 (ite c!1300678 lt!2500088 lt!2500066) (_1!37264 lt!2500040))))

(assert (=> d!2183380 (= (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!11 (ite c!1300678 lt!2500088 lt!2500066) lt!2500065 (_1!37264 lt!2500040) (_2!37264 lt!2500040) s!7408 Nil!67285 s!7408) lt!2500365)))

(declare-fun bs!1865243 () Bool)

(assert (= bs!1865243 d!2183380))

(assert (=> bs!1865243 m!7700864))

(assert (=> bs!1865243 m!7700864))

(declare-fun m!7701370 () Bool)

(assert (=> bs!1865243 m!7701370))

(declare-fun m!7701372 () Bool)

(assert (=> bs!1865243 m!7701372))

(declare-fun m!7701374 () Bool)

(assert (=> bs!1865243 m!7701374))

(assert (=> bm!636026 d!2183380))

(declare-fun d!2183382 () Bool)

(assert (=> d!2183382 (= (isEmpty!39296 (exprs!6784 lt!2500045)) (is-Nil!67286 (exprs!6784 lt!2500045)))))

(assert (=> b!7004680 d!2183382))

(declare-fun d!2183384 () Bool)

(declare-fun c!1300780 () Bool)

(assert (=> d!2183384 (= c!1300780 (isEmpty!39295 (t!381162 s!7408)))))

(declare-fun e!4210568 () Bool)

(assert (=> d!2183384 (= (matchZipper!2828 lt!2500070 (t!381162 s!7408)) e!4210568)))

(declare-fun b!7004984 () Bool)

(assert (=> b!7004984 (= e!4210568 (nullableZipper!2469 lt!2500070))))

(declare-fun b!7004985 () Bool)

(assert (=> b!7004985 (= e!4210568 (matchZipper!2828 (derivationStepZipper!2768 lt!2500070 (head!14153 (t!381162 s!7408))) (tail!13345 (t!381162 s!7408))))))

(assert (= (and d!2183384 c!1300780) b!7004984))

(assert (= (and d!2183384 (not c!1300780)) b!7004985))

(assert (=> d!2183384 m!7701200))

(declare-fun m!7701376 () Bool)

(assert (=> b!7004984 m!7701376))

(assert (=> b!7004985 m!7701204))

(assert (=> b!7004985 m!7701204))

(declare-fun m!7701378 () Bool)

(assert (=> b!7004985 m!7701378))

(assert (=> b!7004985 m!7701208))

(assert (=> b!7004985 m!7701378))

(assert (=> b!7004985 m!7701208))

(declare-fun m!7701380 () Bool)

(assert (=> b!7004985 m!7701380))

(assert (=> b!7004692 d!2183384))

(assert (=> b!7004692 d!2183320))

(declare-fun e!4210569 () Bool)

(declare-fun d!2183386 () Bool)

(assert (=> d!2183386 (= (matchZipper!2828 (set.union lt!2500051 lt!2500059) (t!381162 s!7408)) e!4210569)))

(declare-fun res!2858048 () Bool)

(assert (=> d!2183386 (=> res!2858048 e!4210569)))

(assert (=> d!2183386 (= res!2858048 (matchZipper!2828 lt!2500051 (t!381162 s!7408)))))

(declare-fun lt!2500366 () Unit!161248)

(assert (=> d!2183386 (= lt!2500366 (choose!52561 lt!2500051 lt!2500059 (t!381162 s!7408)))))

(assert (=> d!2183386 (= (lemmaZipperConcatMatchesSameAsBothZippers!1461 lt!2500051 lt!2500059 (t!381162 s!7408)) lt!2500366)))

(declare-fun b!7004986 () Bool)

(assert (=> b!7004986 (= e!4210569 (matchZipper!2828 lt!2500059 (t!381162 s!7408)))))

(assert (= (and d!2183386 (not res!2858048)) b!7004986))

(declare-fun m!7701382 () Bool)

(assert (=> d!2183386 m!7701382))

(assert (=> d!2183386 m!7700770))

(declare-fun m!7701384 () Bool)

(assert (=> d!2183386 m!7701384))

(assert (=> b!7004986 m!7700758))

(assert (=> b!7004692 d!2183386))

(declare-fun d!2183388 () Bool)

(declare-fun c!1300781 () Bool)

(assert (=> d!2183388 (= c!1300781 (isEmpty!39295 (t!381162 s!7408)))))

(declare-fun e!4210570 () Bool)

(assert (=> d!2183388 (= (matchZipper!2828 lt!2500101 (t!381162 s!7408)) e!4210570)))

(declare-fun b!7004987 () Bool)

(assert (=> b!7004987 (= e!4210570 (nullableZipper!2469 lt!2500101))))

(declare-fun b!7004988 () Bool)

(assert (=> b!7004988 (= e!4210570 (matchZipper!2828 (derivationStepZipper!2768 lt!2500101 (head!14153 (t!381162 s!7408))) (tail!13345 (t!381162 s!7408))))))

(assert (= (and d!2183388 c!1300781) b!7004987))

(assert (= (and d!2183388 (not c!1300781)) b!7004988))

(assert (=> d!2183388 m!7701200))

(declare-fun m!7701386 () Bool)

(assert (=> b!7004987 m!7701386))

(assert (=> b!7004988 m!7701204))

(assert (=> b!7004988 m!7701204))

(declare-fun m!7701388 () Bool)

(assert (=> b!7004988 m!7701388))

(assert (=> b!7004988 m!7701208))

(assert (=> b!7004988 m!7701388))

(assert (=> b!7004988 m!7701208))

(declare-fun m!7701390 () Bool)

(assert (=> b!7004988 m!7701390))

(assert (=> b!7004692 d!2183388))

(declare-fun d!2183390 () Bool)

(declare-fun c!1300782 () Bool)

(assert (=> d!2183390 (= c!1300782 (isEmpty!39295 (t!381162 s!7408)))))

(declare-fun e!4210571 () Bool)

(assert (=> d!2183390 (= (matchZipper!2828 lt!2500051 (t!381162 s!7408)) e!4210571)))

(declare-fun b!7004989 () Bool)

(assert (=> b!7004989 (= e!4210571 (nullableZipper!2469 lt!2500051))))

(declare-fun b!7004990 () Bool)

(assert (=> b!7004990 (= e!4210571 (matchZipper!2828 (derivationStepZipper!2768 lt!2500051 (head!14153 (t!381162 s!7408))) (tail!13345 (t!381162 s!7408))))))

(assert (= (and d!2183390 c!1300782) b!7004989))

(assert (= (and d!2183390 (not c!1300782)) b!7004990))

(assert (=> d!2183390 m!7701200))

(declare-fun m!7701392 () Bool)

(assert (=> b!7004989 m!7701392))

(assert (=> b!7004990 m!7701204))

(assert (=> b!7004990 m!7701204))

(declare-fun m!7701394 () Bool)

(assert (=> b!7004990 m!7701394))

(assert (=> b!7004990 m!7701208))

(assert (=> b!7004990 m!7701394))

(assert (=> b!7004990 m!7701208))

(declare-fun m!7701396 () Bool)

(assert (=> b!7004990 m!7701396))

(assert (=> b!7004692 d!2183390))

(declare-fun d!2183392 () Bool)

(declare-fun e!4210574 () Bool)

(assert (=> d!2183392 e!4210574))

(declare-fun res!2858051 () Bool)

(assert (=> d!2183392 (=> (not res!2858051) (not e!4210574))))

(declare-fun lt!2500369 () Context!12568)

(declare-fun dynLambda!27027 (Int Context!12568) Bool)

(assert (=> d!2183392 (= res!2858051 (dynLambda!27027 lambda!406733 lt!2500369))))

(declare-fun getWitness!1216 (List!67411 Int) Context!12568)

(assert (=> d!2183392 (= lt!2500369 (getWitness!1216 (toList!10648 lt!2500044) lambda!406733))))

(assert (=> d!2183392 (exists!3116 lt!2500044 lambda!406733)))

(assert (=> d!2183392 (= (getWitness!1214 lt!2500044 lambda!406733) lt!2500369)))

(declare-fun b!7004993 () Bool)

(assert (=> b!7004993 (= e!4210574 (set.member lt!2500369 lt!2500044))))

(assert (= (and d!2183392 res!2858051) b!7004993))

(declare-fun b_lambda!263917 () Bool)

(assert (=> (not b_lambda!263917) (not d!2183392)))

(declare-fun m!7701398 () Bool)

(assert (=> d!2183392 m!7701398))

(assert (=> d!2183392 m!7700872))

(assert (=> d!2183392 m!7700872))

(declare-fun m!7701400 () Bool)

(assert (=> d!2183392 m!7701400))

(declare-fun m!7701402 () Bool)

(assert (=> d!2183392 m!7701402))

(declare-fun m!7701404 () Bool)

(assert (=> b!7004993 m!7701404))

(assert (=> b!7004693 d!2183392))

(declare-fun d!2183394 () Bool)

(declare-fun c!1300783 () Bool)

(assert (=> d!2183394 (= c!1300783 (isEmpty!39295 s!7408))))

(declare-fun e!4210575 () Bool)

(assert (=> d!2183394 (= (matchZipper!2828 lt!2500062 s!7408) e!4210575)))

(declare-fun b!7004994 () Bool)

(assert (=> b!7004994 (= e!4210575 (nullableZipper!2469 lt!2500062))))

(declare-fun b!7004995 () Bool)

(assert (=> b!7004995 (= e!4210575 (matchZipper!2828 (derivationStepZipper!2768 lt!2500062 (head!14153 s!7408)) (tail!13345 s!7408)))))

(assert (= (and d!2183394 c!1300783) b!7004994))

(assert (= (and d!2183394 (not c!1300783)) b!7004995))

(assert (=> d!2183394 m!7701126))

(declare-fun m!7701406 () Bool)

(assert (=> b!7004994 m!7701406))

(assert (=> b!7004995 m!7701130))

(assert (=> b!7004995 m!7701130))

(declare-fun m!7701408 () Bool)

(assert (=> b!7004995 m!7701408))

(assert (=> b!7004995 m!7701134))

(assert (=> b!7004995 m!7701408))

(assert (=> b!7004995 m!7701134))

(declare-fun m!7701410 () Bool)

(assert (=> b!7004995 m!7701410))

(assert (=> b!7004693 d!2183394))

(declare-fun d!2183396 () Bool)

(declare-fun e!4210578 () Bool)

(assert (=> d!2183396 e!4210578))

(declare-fun res!2858054 () Bool)

(assert (=> d!2183396 (=> (not res!2858054) (not e!4210578))))

(declare-fun lt!2500372 () List!67411)

(declare-fun noDuplicate!2550 (List!67411) Bool)

(assert (=> d!2183396 (= res!2858054 (noDuplicate!2550 lt!2500372))))

(declare-fun choose!52562 ((Set Context!12568)) List!67411)

(assert (=> d!2183396 (= lt!2500372 (choose!52562 lt!2500044))))

(assert (=> d!2183396 (= (toList!10648 lt!2500044) lt!2500372)))

(declare-fun b!7004998 () Bool)

(assert (=> b!7004998 (= e!4210578 (= (content!13335 lt!2500372) lt!2500044))))

(assert (= (and d!2183396 res!2858054) b!7004998))

(declare-fun m!7701412 () Bool)

(assert (=> d!2183396 m!7701412))

(declare-fun m!7701414 () Bool)

(assert (=> d!2183396 m!7701414))

(declare-fun m!7701416 () Bool)

(assert (=> b!7004998 m!7701416))

(assert (=> b!7004693 d!2183396))

(declare-fun bs!1865244 () Bool)

(declare-fun d!2183398 () Bool)

(assert (= bs!1865244 (and d!2183398 b!7004693)))

(declare-fun lambda!406830 () Int)

(assert (=> bs!1865244 (not (= lambda!406830 lambda!406733))))

(declare-fun bs!1865245 () Bool)

(assert (= bs!1865245 (and d!2183398 b!7004694)))

(assert (=> bs!1865245 (not (= lambda!406830 lambda!406737))))

(declare-fun bs!1865246 () Bool)

(assert (= bs!1865246 (and d!2183398 b!7004670)))

(assert (=> bs!1865246 (not (= lambda!406830 lambda!406738))))

(declare-fun bs!1865247 () Bool)

(assert (= bs!1865247 (and d!2183398 d!2183296)))

(assert (=> bs!1865247 (not (= lambda!406830 lambda!406823))))

(assert (=> d!2183398 true))

(declare-fun order!27991 () Int)

(declare-fun dynLambda!27028 (Int Int) Int)

(assert (=> d!2183398 (< (dynLambda!27028 order!27991 lambda!406733) (dynLambda!27028 order!27991 lambda!406830))))

(declare-fun forall!16198 (List!67411 Int) Bool)

(assert (=> d!2183398 (= (exists!3117 lt!2500075 lambda!406733) (not (forall!16198 lt!2500075 lambda!406830)))))

(declare-fun bs!1865248 () Bool)

(assert (= bs!1865248 d!2183398))

(declare-fun m!7701418 () Bool)

(assert (=> bs!1865248 m!7701418))

(assert (=> b!7004693 d!2183398))

(declare-fun bs!1865249 () Bool)

(declare-fun d!2183400 () Bool)

(assert (= bs!1865249 (and d!2183400 b!7004694)))

(declare-fun lambda!406833 () Int)

(assert (=> bs!1865249 (not (= lambda!406833 lambda!406737))))

(declare-fun bs!1865250 () Bool)

(assert (= bs!1865250 (and d!2183400 d!2183398)))

(assert (=> bs!1865250 (not (= lambda!406833 lambda!406830))))

(declare-fun bs!1865251 () Bool)

(assert (= bs!1865251 (and d!2183400 d!2183296)))

(assert (=> bs!1865251 (= (= s!7408 (_1!37264 lt!2500040)) (= lambda!406833 lambda!406823))))

(declare-fun bs!1865252 () Bool)

(assert (= bs!1865252 (and d!2183400 b!7004693)))

(assert (=> bs!1865252 (= lambda!406833 lambda!406733)))

(declare-fun bs!1865253 () Bool)

(assert (= bs!1865253 (and d!2183400 b!7004670)))

(assert (=> bs!1865253 (= (= s!7408 (_1!37264 lt!2500040)) (= lambda!406833 lambda!406738))))

(assert (=> d!2183400 true))

(assert (=> d!2183400 (exists!3117 lt!2500075 lambda!406833)))

(declare-fun lt!2500375 () Unit!161248)

(declare-fun choose!52563 (List!67411 List!67409) Unit!161248)

(assert (=> d!2183400 (= lt!2500375 (choose!52563 lt!2500075 s!7408))))

(assert (=> d!2183400 (matchZipper!2828 (content!13335 lt!2500075) s!7408)))

(assert (=> d!2183400 (= (lemmaZipperMatchesExistsMatchingContext!257 lt!2500075 s!7408) lt!2500375)))

(declare-fun bs!1865254 () Bool)

(assert (= bs!1865254 d!2183400))

(declare-fun m!7701420 () Bool)

(assert (=> bs!1865254 m!7701420))

(declare-fun m!7701422 () Bool)

(assert (=> bs!1865254 m!7701422))

(declare-fun m!7701424 () Bool)

(assert (=> bs!1865254 m!7701424))

(assert (=> bs!1865254 m!7701424))

(declare-fun m!7701426 () Bool)

(assert (=> bs!1865254 m!7701426))

(assert (=> b!7004693 d!2183400))

(declare-fun b!7005003 () Bool)

(declare-fun res!2858055 () Bool)

(declare-fun e!4210579 () Bool)

(assert (=> b!7005003 (=> (not res!2858055) (not e!4210579))))

(declare-fun lt!2500376 () List!67410)

(assert (=> b!7005003 (= res!2858055 (= (size!40952 lt!2500376) (+ (size!40952 (exprs!6784 lt!2500045)) (size!40952 (exprs!6784 ct2!306)))))))

(declare-fun b!7005002 () Bool)

(declare-fun e!4210580 () List!67410)

(assert (=> b!7005002 (= e!4210580 (Cons!67286 (h!73734 (exprs!6784 lt!2500045)) (++!15278 (t!381163 (exprs!6784 lt!2500045)) (exprs!6784 ct2!306))))))

(declare-fun d!2183402 () Bool)

(assert (=> d!2183402 e!4210579))

(declare-fun res!2858056 () Bool)

(assert (=> d!2183402 (=> (not res!2858056) (not e!4210579))))

(assert (=> d!2183402 (= res!2858056 (= (content!13338 lt!2500376) (set.union (content!13338 (exprs!6784 lt!2500045)) (content!13338 (exprs!6784 ct2!306)))))))

(assert (=> d!2183402 (= lt!2500376 e!4210580)))

(declare-fun c!1300786 () Bool)

(assert (=> d!2183402 (= c!1300786 (is-Nil!67286 (exprs!6784 lt!2500045)))))

(assert (=> d!2183402 (= (++!15278 (exprs!6784 lt!2500045) (exprs!6784 ct2!306)) lt!2500376)))

(declare-fun b!7005001 () Bool)

(assert (=> b!7005001 (= e!4210580 (exprs!6784 ct2!306))))

(declare-fun b!7005004 () Bool)

(assert (=> b!7005004 (= e!4210579 (or (not (= (exprs!6784 ct2!306) Nil!67286)) (= lt!2500376 (exprs!6784 lt!2500045))))))

(assert (= (and d!2183402 c!1300786) b!7005001))

(assert (= (and d!2183402 (not c!1300786)) b!7005002))

(assert (= (and d!2183402 res!2858056) b!7005003))

(assert (= (and b!7005003 res!2858055) b!7005004))

(declare-fun m!7701428 () Bool)

(assert (=> b!7005003 m!7701428))

(declare-fun m!7701430 () Bool)

(assert (=> b!7005003 m!7701430))

(assert (=> b!7005003 m!7701290))

(declare-fun m!7701432 () Bool)

(assert (=> b!7005002 m!7701432))

(declare-fun m!7701434 () Bool)

(assert (=> d!2183402 m!7701434))

(declare-fun m!7701436 () Bool)

(assert (=> d!2183402 m!7701436))

(assert (=> d!2183402 m!7701298))

(assert (=> b!7004691 d!2183402))

(assert (=> b!7004691 d!2183338))

(declare-fun d!2183404 () Bool)

(declare-fun e!4210583 () Bool)

(assert (=> d!2183404 e!4210583))

(declare-fun res!2858059 () Bool)

(assert (=> d!2183404 (=> (not res!2858059) (not e!4210583))))

(declare-fun lt!2500379 () Context!12568)

(declare-fun dynLambda!27029 (Int Context!12568) Context!12568)

(assert (=> d!2183404 (= res!2858059 (= lt!2500060 (dynLambda!27029 lambda!406734 lt!2500379)))))

(declare-fun choose!52564 ((Set Context!12568) Int Context!12568) Context!12568)

(assert (=> d!2183404 (= lt!2500379 (choose!52564 z1!570 lambda!406734 lt!2500060))))

(assert (=> d!2183404 (set.member lt!2500060 (map!15579 z1!570 lambda!406734))))

(assert (=> d!2183404 (= (mapPost2!143 z1!570 lambda!406734 lt!2500060) lt!2500379)))

(declare-fun b!7005008 () Bool)

(assert (=> b!7005008 (= e!4210583 (set.member lt!2500379 z1!570))))

(assert (= (and d!2183404 res!2858059) b!7005008))

(declare-fun b_lambda!263919 () Bool)

(assert (=> (not b_lambda!263919) (not d!2183404)))

(declare-fun m!7701438 () Bool)

(assert (=> d!2183404 m!7701438))

(declare-fun m!7701440 () Bool)

(assert (=> d!2183404 m!7701440))

(declare-fun m!7701442 () Bool)

(assert (=> d!2183404 m!7701442))

(declare-fun m!7701444 () Bool)

(assert (=> d!2183404 m!7701444))

(declare-fun m!7701446 () Bool)

(assert (=> b!7005008 m!7701446))

(assert (=> b!7004691 d!2183404))

(declare-fun d!2183406 () Bool)

(declare-fun lt!2500382 () Int)

(assert (=> d!2183406 (>= lt!2500382 0)))

(declare-fun e!4210586 () Int)

(assert (=> d!2183406 (= lt!2500382 e!4210586)))

(declare-fun c!1300790 () Bool)

(assert (=> d!2183406 (= c!1300790 (is-Cons!67286 (exprs!6784 lt!2500100)))))

(assert (=> d!2183406 (= (contextDepthTotal!481 lt!2500100) lt!2500382)))

(declare-fun b!7005013 () Bool)

(declare-fun regexDepthTotal!287 (Regex!17288) Int)

(assert (=> b!7005013 (= e!4210586 (+ (regexDepthTotal!287 (h!73734 (exprs!6784 lt!2500100))) (contextDepthTotal!481 (Context!12569 (t!381163 (exprs!6784 lt!2500100))))))))

(declare-fun b!7005014 () Bool)

(assert (=> b!7005014 (= e!4210586 1)))

(assert (= (and d!2183406 c!1300790) b!7005013))

(assert (= (and d!2183406 (not c!1300790)) b!7005014))

(declare-fun m!7701448 () Bool)

(assert (=> b!7005013 m!7701448))

(declare-fun m!7701450 () Bool)

(assert (=> b!7005013 m!7701450))

(assert (=> b!7004672 d!2183406))

(declare-fun d!2183408 () Bool)

(declare-fun choose!52565 ((Set Context!12568) Int) (Set Context!12568))

(assert (=> d!2183408 (= (map!15579 lt!2500097 lambda!406734) (choose!52565 lt!2500097 lambda!406734))))

(declare-fun bs!1865255 () Bool)

(assert (= bs!1865255 d!2183408))

(declare-fun m!7701452 () Bool)

(assert (=> bs!1865255 m!7701452))

(assert (=> b!7004672 d!2183408))

(assert (=> b!7004672 d!2183348))

(assert (=> b!7004672 d!2183358))

(declare-fun d!2183410 () Bool)

(declare-fun lt!2500383 () Int)

(assert (=> d!2183410 (>= lt!2500383 0)))

(declare-fun e!4210587 () Int)

(assert (=> d!2183410 (= lt!2500383 e!4210587)))

(declare-fun c!1300791 () Bool)

(assert (=> d!2183410 (= c!1300791 (is-Cons!67287 lt!2500082))))

(assert (=> d!2183410 (= (zipperDepthTotal!509 lt!2500082) lt!2500383)))

(declare-fun b!7005015 () Bool)

(assert (=> b!7005015 (= e!4210587 (+ (contextDepthTotal!481 (h!73735 lt!2500082)) (zipperDepthTotal!509 (t!381164 lt!2500082))))))

(declare-fun b!7005016 () Bool)

(assert (=> b!7005016 (= e!4210587 0)))

(assert (= (and d!2183410 c!1300791) b!7005015))

(assert (= (and d!2183410 (not c!1300791)) b!7005016))

(declare-fun m!7701454 () Bool)

(assert (=> b!7005015 m!7701454))

(declare-fun m!7701456 () Bool)

(assert (=> b!7005015 m!7701456))

(assert (=> b!7004672 d!2183410))

(assert (=> b!7004672 d!2183366))

(assert (=> b!7004672 d!2183320))

(declare-fun d!2183412 () Bool)

(declare-fun lt!2500384 () Int)

(assert (=> d!2183412 (>= lt!2500384 0)))

(declare-fun e!4210588 () Int)

(assert (=> d!2183412 (= lt!2500384 e!4210588)))

(declare-fun c!1300792 () Bool)

(assert (=> d!2183412 (= c!1300792 (is-Cons!67286 (exprs!6784 lt!2500045)))))

(assert (=> d!2183412 (= (contextDepthTotal!481 lt!2500045) lt!2500384)))

(declare-fun b!7005017 () Bool)

(assert (=> b!7005017 (= e!4210588 (+ (regexDepthTotal!287 (h!73734 (exprs!6784 lt!2500045))) (contextDepthTotal!481 (Context!12569 (t!381163 (exprs!6784 lt!2500045))))))))

(declare-fun b!7005018 () Bool)

(assert (=> b!7005018 (= e!4210588 1)))

(assert (= (and d!2183412 c!1300792) b!7005017))

(assert (= (and d!2183412 (not c!1300792)) b!7005018))

(declare-fun m!7701458 () Bool)

(assert (=> b!7005017 m!7701458))

(declare-fun m!7701460 () Bool)

(assert (=> b!7005017 m!7701460))

(assert (=> b!7004672 d!2183412))

(declare-fun d!2183414 () Bool)

(declare-fun e!4210589 () Bool)

(assert (=> d!2183414 e!4210589))

(declare-fun res!2858060 () Bool)

(assert (=> d!2183414 (=> (not res!2858060) (not e!4210589))))

(declare-fun lt!2500385 () List!67411)

(assert (=> d!2183414 (= res!2858060 (noDuplicate!2550 lt!2500385))))

(assert (=> d!2183414 (= lt!2500385 (choose!52562 z1!570))))

(assert (=> d!2183414 (= (toList!10648 z1!570) lt!2500385)))

(declare-fun b!7005019 () Bool)

(assert (=> b!7005019 (= e!4210589 (= (content!13335 lt!2500385) z1!570))))

(assert (= (and d!2183414 res!2858060) b!7005019))

(declare-fun m!7701462 () Bool)

(assert (=> d!2183414 m!7701462))

(declare-fun m!7701464 () Bool)

(assert (=> d!2183414 m!7701464))

(declare-fun m!7701466 () Bool)

(assert (=> b!7005019 m!7701466))

(assert (=> b!7004672 d!2183414))

(declare-fun d!2183416 () Bool)

(assert (=> d!2183416 (<= (contextDepthTotal!481 lt!2500045) (zipperDepthTotal!509 lt!2500082))))

(declare-fun lt!2500388 () Unit!161248)

(declare-fun choose!52566 (List!67411 Context!12568) Unit!161248)

(assert (=> d!2183416 (= lt!2500388 (choose!52566 lt!2500082 lt!2500045))))

(declare-fun contains!20429 (List!67411 Context!12568) Bool)

(assert (=> d!2183416 (contains!20429 lt!2500082 lt!2500045)))

(assert (=> d!2183416 (= (lemmaTotalDepthZipperLargerThanOfAnyContext!49 lt!2500082 lt!2500045) lt!2500388)))

(declare-fun bs!1865256 () Bool)

(assert (= bs!1865256 d!2183416))

(assert (=> bs!1865256 m!7700832))

(assert (=> bs!1865256 m!7700824))

(declare-fun m!7701468 () Bool)

(assert (=> bs!1865256 m!7701468))

(declare-fun m!7701470 () Bool)

(assert (=> bs!1865256 m!7701470))

(assert (=> b!7004672 d!2183416))

(assert (=> b!7004672 d!2183364))

(declare-fun d!2183418 () Bool)

(assert (=> d!2183418 (= (map!15579 lt!2500097 lambda!406734) (set.insert (dynLambda!27029 lambda!406734 lt!2500100) (as set.empty (Set Context!12568))))))

(declare-fun lt!2500391 () Unit!161248)

(declare-fun choose!52567 ((Set Context!12568) Context!12568 Int) Unit!161248)

(assert (=> d!2183418 (= lt!2500391 (choose!52567 lt!2500097 lt!2500100 lambda!406734))))

(assert (=> d!2183418 (= lt!2500097 (set.insert lt!2500100 (as set.empty (Set Context!12568))))))

(assert (=> d!2183418 (= (lemmaMapOnSingletonSet!353 lt!2500097 lt!2500100 lambda!406734) lt!2500391)))

(declare-fun b_lambda!263921 () Bool)

(assert (=> (not b_lambda!263921) (not d!2183418)))

(declare-fun bs!1865257 () Bool)

(assert (= bs!1865257 d!2183418))

(assert (=> bs!1865257 m!7700834))

(assert (=> bs!1865257 m!7700826))

(declare-fun m!7701472 () Bool)

(assert (=> bs!1865257 m!7701472))

(declare-fun m!7701474 () Bool)

(assert (=> bs!1865257 m!7701474))

(assert (=> bs!1865257 m!7701472))

(declare-fun m!7701476 () Bool)

(assert (=> bs!1865257 m!7701476))

(assert (=> b!7004672 d!2183418))

(declare-fun bs!1865258 () Bool)

(declare-fun d!2183420 () Bool)

(assert (= bs!1865258 (and d!2183420 b!7004690)))

(declare-fun lambda!406834 () Int)

(assert (=> bs!1865258 (= lambda!406834 lambda!406736)))

(declare-fun bs!1865259 () Bool)

(assert (= bs!1865259 (and d!2183420 d!2183334)))

(assert (=> bs!1865259 (= lambda!406834 lambda!406827)))

(assert (=> d!2183420 true))

(assert (=> d!2183420 (= (derivationStepZipper!2768 lt!2500054 (h!73733 s!7408)) (flatMap!2274 lt!2500054 lambda!406834))))

(declare-fun bs!1865260 () Bool)

(assert (= bs!1865260 d!2183420))

(declare-fun m!7701478 () Bool)

(assert (=> bs!1865260 m!7701478))

(assert (=> b!7004695 d!2183420))

(declare-fun d!2183422 () Bool)

(assert (=> d!2183422 (= (flatMap!2274 lt!2500054 lambda!406736) (choose!52559 lt!2500054 lambda!406736))))

(declare-fun bs!1865261 () Bool)

(assert (= bs!1865261 d!2183422))

(declare-fun m!7701480 () Bool)

(assert (=> bs!1865261 m!7701480))

(assert (=> b!7004695 d!2183422))

(assert (=> b!7004695 d!2183344))

(assert (=> b!7004695 d!2183320))

(declare-fun d!2183424 () Bool)

(assert (=> d!2183424 (= (flatMap!2274 lt!2500054 lambda!406736) (dynLambda!27026 lambda!406736 lt!2500083))))

(declare-fun lt!2500392 () Unit!161248)

(assert (=> d!2183424 (= lt!2500392 (choose!52560 lt!2500054 lt!2500083 lambda!406736))))

(assert (=> d!2183424 (= lt!2500054 (set.insert lt!2500083 (as set.empty (Set Context!12568))))))

(assert (=> d!2183424 (= (lemmaFlatMapOnSingletonSet!1789 lt!2500054 lt!2500083 lambda!406736) lt!2500392)))

(declare-fun b_lambda!263923 () Bool)

(assert (=> (not b_lambda!263923) (not d!2183424)))

(declare-fun bs!1865262 () Bool)

(assert (= bs!1865262 d!2183424))

(assert (=> bs!1865262 m!7700862))

(declare-fun m!7701482 () Bool)

(assert (=> bs!1865262 m!7701482))

(declare-fun m!7701484 () Bool)

(assert (=> bs!1865262 m!7701484))

(assert (=> bs!1865262 m!7700858))

(assert (=> b!7004695 d!2183424))

(declare-fun d!2183426 () Bool)

(declare-fun e!4210590 () Bool)

(assert (=> d!2183426 e!4210590))

(declare-fun res!2858061 () Bool)

(assert (=> d!2183426 (=> (not res!2858061) (not e!4210590))))

(declare-fun lt!2500393 () Context!12568)

(assert (=> d!2183426 (= res!2858061 (dynLambda!27027 lambda!406737 lt!2500393))))

(assert (=> d!2183426 (= lt!2500393 (getWitness!1216 (toList!10648 lt!2500097) lambda!406737))))

(assert (=> d!2183426 (exists!3116 lt!2500097 lambda!406737)))

(assert (=> d!2183426 (= (getWitness!1214 lt!2500097 lambda!406737) lt!2500393)))

(declare-fun b!7005020 () Bool)

(assert (=> b!7005020 (= e!4210590 (set.member lt!2500393 lt!2500097))))

(assert (= (and d!2183426 res!2858061) b!7005020))

(declare-fun b_lambda!263925 () Bool)

(assert (=> (not b_lambda!263925) (not d!2183426)))

(declare-fun m!7701486 () Bool)

(assert (=> d!2183426 m!7701486))

(declare-fun m!7701488 () Bool)

(assert (=> d!2183426 m!7701488))

(assert (=> d!2183426 m!7701488))

(declare-fun m!7701490 () Bool)

(assert (=> d!2183426 m!7701490))

(assert (=> d!2183426 m!7700802))

(declare-fun m!7701492 () Bool)

(assert (=> b!7005020 m!7701492))

(assert (=> b!7004694 d!2183426))

(declare-fun d!2183428 () Bool)

(declare-fun lt!2500394 () Bool)

(assert (=> d!2183428 (= lt!2500394 (exists!3117 (toList!10648 lt!2500088) lambda!406737))))

(assert (=> d!2183428 (= lt!2500394 (choose!52556 lt!2500088 lambda!406737))))

(assert (=> d!2183428 (= (exists!3116 lt!2500088 lambda!406737) lt!2500394)))

(declare-fun bs!1865263 () Bool)

(assert (= bs!1865263 d!2183428))

(declare-fun m!7701494 () Bool)

(assert (=> bs!1865263 m!7701494))

(assert (=> bs!1865263 m!7701494))

(declare-fun m!7701496 () Bool)

(assert (=> bs!1865263 m!7701496))

(declare-fun m!7701498 () Bool)

(assert (=> bs!1865263 m!7701498))

(assert (=> b!7004694 d!2183428))

(declare-fun d!2183430 () Bool)

(assert (=> d!2183430 (exists!3116 lt!2500088 lambda!406737)))

(declare-fun lt!2500395 () Unit!161248)

(assert (=> d!2183430 (= lt!2500395 (choose!52555 lt!2500088 lt!2500045 lambda!406737))))

(assert (=> d!2183430 (set.member lt!2500045 lt!2500088)))

(assert (=> d!2183430 (= (lemmaContainsThenExists!92 lt!2500088 lt!2500045 lambda!406737) lt!2500395)))

(declare-fun bs!1865264 () Bool)

(assert (= bs!1865264 d!2183430))

(assert (=> bs!1865264 m!7700804))

(declare-fun m!7701500 () Bool)

(assert (=> bs!1865264 m!7701500))

(declare-fun m!7701502 () Bool)

(assert (=> bs!1865264 m!7701502))

(assert (=> b!7004694 d!2183430))

(declare-fun d!2183432 () Bool)

(declare-fun lt!2500396 () Bool)

(assert (=> d!2183432 (= lt!2500396 (exists!3117 (toList!10648 lt!2500097) lambda!406737))))

(assert (=> d!2183432 (= lt!2500396 (choose!52556 lt!2500097 lambda!406737))))

(assert (=> d!2183432 (= (exists!3116 lt!2500097 lambda!406737) lt!2500396)))

(declare-fun bs!1865265 () Bool)

(assert (= bs!1865265 d!2183432))

(assert (=> bs!1865265 m!7701488))

(assert (=> bs!1865265 m!7701488))

(declare-fun m!7701504 () Bool)

(assert (=> bs!1865265 m!7701504))

(declare-fun m!7701506 () Bool)

(assert (=> bs!1865265 m!7701506))

(assert (=> b!7004694 d!2183432))

(declare-fun d!2183434 () Bool)

(assert (=> d!2183434 (exists!3116 lt!2500097 lambda!406737)))

(declare-fun lt!2500397 () Unit!161248)

(assert (=> d!2183434 (= lt!2500397 (choose!52555 lt!2500097 lt!2500100 lambda!406737))))

(assert (=> d!2183434 (set.member lt!2500100 lt!2500097)))

(assert (=> d!2183434 (= (lemmaContainsThenExists!92 lt!2500097 lt!2500100 lambda!406737) lt!2500397)))

(declare-fun bs!1865266 () Bool)

(assert (= bs!1865266 d!2183434))

(assert (=> bs!1865266 m!7700802))

(declare-fun m!7701508 () Bool)

(assert (=> bs!1865266 m!7701508))

(declare-fun m!7701510 () Bool)

(assert (=> bs!1865266 m!7701510))

(assert (=> b!7004694 d!2183434))

(declare-fun d!2183436 () Bool)

(declare-fun c!1300794 () Bool)

(assert (=> d!2183436 (= c!1300794 (isEmpty!39295 lt!2500095))))

(declare-fun e!4210591 () Bool)

(assert (=> d!2183436 (= (matchZipper!2828 lt!2500047 lt!2500095) e!4210591)))

(declare-fun b!7005021 () Bool)

(assert (=> b!7005021 (= e!4210591 (nullableZipper!2469 lt!2500047))))

(declare-fun b!7005022 () Bool)

(assert (=> b!7005022 (= e!4210591 (matchZipper!2828 (derivationStepZipper!2768 lt!2500047 (head!14153 lt!2500095)) (tail!13345 lt!2500095)))))

(assert (= (and d!2183436 c!1300794) b!7005021))

(assert (= (and d!2183436 (not c!1300794)) b!7005022))

(assert (=> d!2183436 m!7701334))

(declare-fun m!7701512 () Bool)

(assert (=> b!7005021 m!7701512))

(assert (=> b!7005022 m!7701338))

(assert (=> b!7005022 m!7701338))

(declare-fun m!7701514 () Bool)

(assert (=> b!7005022 m!7701514))

(assert (=> b!7005022 m!7701342))

(assert (=> b!7005022 m!7701514))

(assert (=> b!7005022 m!7701342))

(declare-fun m!7701516 () Bool)

(assert (=> b!7005022 m!7701516))

(assert (=> b!7004675 d!2183436))

(declare-fun b!7005027 () Bool)

(declare-fun e!4210594 () Bool)

(declare-fun tp!1931551 () Bool)

(declare-fun tp!1931552 () Bool)

(assert (=> b!7005027 (= e!4210594 (and tp!1931551 tp!1931552))))

(assert (=> b!7004673 (= tp!1931532 e!4210594)))

(assert (= (and b!7004673 (is-Cons!67286 (exprs!6784 setElem!48192))) b!7005027))

(declare-fun b!7005028 () Bool)

(declare-fun e!4210595 () Bool)

(declare-fun tp!1931553 () Bool)

(declare-fun tp!1931554 () Bool)

(assert (=> b!7005028 (= e!4210595 (and tp!1931553 tp!1931554))))

(assert (=> b!7004687 (= tp!1931534 e!4210595)))

(assert (= (and b!7004687 (is-Cons!67286 (exprs!6784 ct2!306))) b!7005028))

(declare-fun condSetEmpty!48198 () Bool)

(assert (=> setNonEmpty!48192 (= condSetEmpty!48198 (= setRest!48192 (as set.empty (Set Context!12568))))))

(declare-fun setRes!48198 () Bool)

(assert (=> setNonEmpty!48192 (= tp!1931531 setRes!48198)))

(declare-fun setIsEmpty!48198 () Bool)

(assert (=> setIsEmpty!48198 setRes!48198))

(declare-fun tp!1931560 () Bool)

(declare-fun setElem!48198 () Context!12568)

(declare-fun setNonEmpty!48198 () Bool)

(declare-fun e!4210598 () Bool)

(assert (=> setNonEmpty!48198 (= setRes!48198 (and tp!1931560 (inv!86080 setElem!48198) e!4210598))))

(declare-fun setRest!48198 () (Set Context!12568))

(assert (=> setNonEmpty!48198 (= setRest!48192 (set.union (set.insert setElem!48198 (as set.empty (Set Context!12568))) setRest!48198))))

(declare-fun b!7005033 () Bool)

(declare-fun tp!1931559 () Bool)

(assert (=> b!7005033 (= e!4210598 tp!1931559)))

(assert (= (and setNonEmpty!48192 condSetEmpty!48198) setIsEmpty!48198))

(assert (= (and setNonEmpty!48192 (not condSetEmpty!48198)) setNonEmpty!48198))

(assert (= setNonEmpty!48198 b!7005033))

(declare-fun m!7701518 () Bool)

(assert (=> setNonEmpty!48198 m!7701518))

(declare-fun b!7005038 () Bool)

(declare-fun e!4210601 () Bool)

(declare-fun tp!1931563 () Bool)

(assert (=> b!7005038 (= e!4210601 (and tp_is_empty!43801 tp!1931563))))

(assert (=> b!7004674 (= tp!1931533 e!4210601)))

(assert (= (and b!7004674 (is-Cons!67285 (t!381162 s!7408))) b!7005038))

(declare-fun b_lambda!263927 () Bool)

(assert (= b_lambda!263919 (or b!7004691 b_lambda!263927)))

(declare-fun bs!1865267 () Bool)

(declare-fun d!2183438 () Bool)

(assert (= bs!1865267 (and d!2183438 b!7004691)))

(declare-fun lt!2500398 () Unit!161248)

(assert (=> bs!1865267 (= lt!2500398 (lemmaConcatPreservesForall!624 (exprs!6784 lt!2500379) (exprs!6784 ct2!306) lambda!406735))))

(assert (=> bs!1865267 (= (dynLambda!27029 lambda!406734 lt!2500379) (Context!12569 (++!15278 (exprs!6784 lt!2500379) (exprs!6784 ct2!306))))))

(declare-fun m!7701520 () Bool)

(assert (=> bs!1865267 m!7701520))

(declare-fun m!7701522 () Bool)

(assert (=> bs!1865267 m!7701522))

(assert (=> d!2183404 d!2183438))

(declare-fun b_lambda!263929 () Bool)

(assert (= b_lambda!263917 (or b!7004693 b_lambda!263929)))

(declare-fun bs!1865268 () Bool)

(declare-fun d!2183440 () Bool)

(assert (= bs!1865268 (and d!2183440 b!7004693)))

(assert (=> bs!1865268 (= (dynLambda!27027 lambda!406733 lt!2500369) (matchZipper!2828 (set.insert lt!2500369 (as set.empty (Set Context!12568))) s!7408))))

(declare-fun m!7701524 () Bool)

(assert (=> bs!1865268 m!7701524))

(assert (=> bs!1865268 m!7701524))

(declare-fun m!7701526 () Bool)

(assert (=> bs!1865268 m!7701526))

(assert (=> d!2183392 d!2183440))

(declare-fun b_lambda!263931 () Bool)

(assert (= b_lambda!263921 (or b!7004691 b_lambda!263931)))

(declare-fun bs!1865269 () Bool)

(declare-fun d!2183442 () Bool)

(assert (= bs!1865269 (and d!2183442 b!7004691)))

(declare-fun lt!2500399 () Unit!161248)

(assert (=> bs!1865269 (= lt!2500399 (lemmaConcatPreservesForall!624 (exprs!6784 lt!2500100) (exprs!6784 ct2!306) lambda!406735))))

(assert (=> bs!1865269 (= (dynLambda!27029 lambda!406734 lt!2500100) (Context!12569 (++!15278 (exprs!6784 lt!2500100) (exprs!6784 ct2!306))))))

(declare-fun m!7701528 () Bool)

(assert (=> bs!1865269 m!7701528))

(declare-fun m!7701530 () Bool)

(assert (=> bs!1865269 m!7701530))

(assert (=> d!2183418 d!2183442))

(declare-fun b_lambda!263933 () Bool)

(assert (= b_lambda!263915 (or b!7004690 b_lambda!263933)))

(declare-fun bs!1865270 () Bool)

(declare-fun d!2183444 () Bool)

(assert (= bs!1865270 (and d!2183444 b!7004690)))

(assert (=> bs!1865270 (= (dynLambda!27026 lambda!406736 lt!2500100) (derivationStepZipperUp!1938 lt!2500100 (h!73733 s!7408)))))

(assert (=> bs!1865270 m!7700788))

(assert (=> d!2183366 d!2183444))

(declare-fun b_lambda!263935 () Bool)

(assert (= b_lambda!263925 (or b!7004694 b_lambda!263935)))

(declare-fun bs!1865271 () Bool)

(declare-fun d!2183446 () Bool)

(assert (= bs!1865271 (and d!2183446 b!7004694)))

(declare-fun nullableContext!53 (Context!12568) Bool)

(assert (=> bs!1865271 (= (dynLambda!27027 lambda!406737 lt!2500393) (nullableContext!53 lt!2500393))))

(declare-fun m!7701532 () Bool)

(assert (=> bs!1865271 m!7701532))

(assert (=> d!2183426 d!2183446))

(declare-fun b_lambda!263937 () Bool)

(assert (= b_lambda!263923 (or b!7004690 b_lambda!263937)))

(declare-fun bs!1865272 () Bool)

(declare-fun d!2183448 () Bool)

(assert (= bs!1865272 (and d!2183448 b!7004690)))

(assert (=> bs!1865272 (= (dynLambda!27026 lambda!406736 lt!2500083) (derivationStepZipperUp!1938 lt!2500083 (h!73733 s!7408)))))

(assert (=> bs!1865272 m!7700750))

(assert (=> d!2183424 d!2183448))

(declare-fun b_lambda!263939 () Bool)

(assert (= b_lambda!263913 (or b!7004690 b_lambda!263939)))

(declare-fun bs!1865273 () Bool)

(declare-fun d!2183450 () Bool)

(assert (= bs!1865273 (and d!2183450 b!7004690)))

(assert (=> bs!1865273 (= (dynLambda!27026 lambda!406736 lt!2500045) (derivationStepZipperUp!1938 lt!2500045 (h!73733 s!7408)))))

(assert (=> bs!1865273 m!7700782))

(assert (=> d!2183356 d!2183450))

(declare-fun b_lambda!263941 () Bool)

(assert (= b_lambda!263911 (or b!7004690 b_lambda!263941)))

(declare-fun bs!1865274 () Bool)

(declare-fun d!2183452 () Bool)

(assert (= bs!1865274 (and d!2183452 b!7004690)))

(assert (=> bs!1865274 (= (dynLambda!27026 lambda!406736 lt!2500092) (derivationStepZipperUp!1938 lt!2500092 (h!73733 s!7408)))))

(assert (=> bs!1865274 m!7700806))

(assert (=> d!2183342 d!2183452))

(push 1)

(assert (not b!7004804))

(assert (not b!7004952))

(assert (not b!7004839))

(assert (not b!7004827))

(assert (not bm!636054))

(assert (not b!7004986))

(assert (not d!2183286))

(assert (not d!2183330))

(assert (not d!2183422))

(assert (not b!7004831))

(assert (not b!7004805))

(assert (not b!7004895))

(assert (not b!7004985))

(assert (not b!7004832))

(assert (not d!2183398))

(assert (not b!7004879))

(assert (not b!7005028))

(assert (not d!2183308))

(assert (not b!7004903))

(assert (not d!2183294))

(assert (not d!2183368))

(assert (not d!2183388))

(assert (not d!2183428))

(assert (not d!2183362))

(assert tp_is_empty!43801)

(assert (not b!7004976))

(assert (not d!2183384))

(assert (not b!7005027))

(assert (not b!7004951))

(assert (not b!7004882))

(assert (not bs!1865270))

(assert (not bs!1865267))

(assert (not d!2183434))

(assert (not b!7004829))

(assert (not b!7004848))

(assert (not d!2183322))

(assert (not b!7004990))

(assert (not d!2183348))

(assert (not b!7004948))

(assert (not d!2183296))

(assert (not b!7004977))

(assert (not d!2183302))

(assert (not d!2183390))

(assert (not d!2183316))

(assert (not bs!1865273))

(assert (not b!7004900))

(assert (not d!2183326))

(assert (not b!7004856))

(assert (not b!7004867))

(assert (not d!2183366))

(assert (not d!2183416))

(assert (not b!7004965))

(assert (not d!2183370))

(assert (not bm!636055))

(assert (not b!7004955))

(assert (not d!2183300))

(assert (not d!2183304))

(assert (not b_lambda!263933))

(assert (not d!2183430))

(assert (not d!2183318))

(assert (not bm!636063))

(assert (not b!7005019))

(assert (not d!2183336))

(assert (not d!2183414))

(assert (not bm!636062))

(assert (not b!7004854))

(assert (not b!7005013))

(assert (not b!7004960))

(assert (not d!2183356))

(assert (not bs!1865269))

(assert (not b_lambda!263939))

(assert (not d!2183342))

(assert (not b!7004873))

(assert (not b!7004898))

(assert (not b!7004875))

(assert (not d!2183392))

(assert (not b!7004984))

(assert (not bs!1865271))

(assert (not b!7005021))

(assert (not d!2183386))

(assert (not d!2183334))

(assert (not d!2183320))

(assert (not b!7004987))

(assert (not bm!636038))

(assert (not b!7004877))

(assert (not b!7005017))

(assert (not bm!636058))

(assert (not b!7004979))

(assert (not bs!1865272))

(assert (not d!2183424))

(assert (not b!7004975))

(assert (not b_lambda!263931))

(assert (not b!7004881))

(assert (not b_lambda!263935))

(assert (not b!7005003))

(assert (not d!2183396))

(assert (not b!7004876))

(assert (not bm!636060))

(assert (not d!2183420))

(assert (not d!2183380))

(assert (not b_lambda!263937))

(assert (not b!7004982))

(assert (not d!2183290))

(assert (not d!2183402))

(assert (not b!7004957))

(assert (not d!2183312))

(assert (not b!7004837))

(assert (not bs!1865268))

(assert (not b!7004846))

(assert (not b!7004853))

(assert (not b!7004988))

(assert (not d!2183332))

(assert (not b!7004868))

(assert (not b!7005002))

(assert (not b!7005033))

(assert (not d!2183404))

(assert (not setNonEmpty!48198))

(assert (not d!2183432))

(assert (not d!2183310))

(assert (not d!2183284))

(assert (not b!7004828))

(assert (not b!7004978))

(assert (not d!2183292))

(assert (not b!7004995))

(assert (not b!7004852))

(assert (not b!7004930))

(assert (not d!2183372))

(assert (not bm!636039))

(assert (not d!2183350))

(assert (not b!7004950))

(assert (not b!7004870))

(assert (not bm!636059))

(assert (not b!7004947))

(assert (not d!2183418))

(assert (not d!2183314))

(assert (not b_lambda!263941))

(assert (not d!2183408))

(assert (not bm!636052))

(assert (not d!2183376))

(assert (not b_lambda!263927))

(assert (not d!2183374))

(assert (not b!7004994))

(assert (not b!7004989))

(assert (not b_lambda!263929))

(assert (not b!7004871))

(assert (not b!7004981))

(assert (not b!7004850))

(assert (not b!7005022))

(assert (not d!2183324))

(assert (not d!2183338))

(assert (not b!7004840))

(assert (not d!2183364))

(assert (not d!2183436))

(assert (not b!7005015))

(assert (not b!7004880))

(assert (not b!7004998))

(assert (not b!7004847))

(assert (not d!2183394))

(assert (not bs!1865274))

(assert (not b!7005038))

(assert (not b!7004857))

(assert (not d!2183426))

(assert (not d!2183400))

(assert (not b!7004825))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

