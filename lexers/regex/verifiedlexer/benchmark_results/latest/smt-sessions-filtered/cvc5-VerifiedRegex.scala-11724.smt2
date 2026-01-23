; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!662646 () Bool)

(assert start!662646)

(declare-fun b!6863998 () Bool)

(assert (=> b!6863998 true))

(declare-fun b!6864011 () Bool)

(assert (=> b!6864011 true))

(declare-fun bs!1834446 () Bool)

(declare-fun b!6864001 () Bool)

(assert (= bs!1834446 (and b!6864001 b!6863998)))

(declare-fun lambda!388340 () Int)

(declare-fun lambda!388338 () Int)

(assert (=> bs!1834446 (not (= lambda!388340 lambda!388338))))

(declare-fun b!6863994 () Bool)

(declare-fun e!4137988 () Bool)

(declare-fun tp!1883336 () Bool)

(declare-datatypes ((C!33658 0))(
  ( (C!33659 (val!26531 Int)) )
))
(declare-datatypes ((Regex!16694 0))(
  ( (ElementMatch!16694 (c!1277522 C!33658)) (Concat!25539 (regOne!33900 Regex!16694) (regTwo!33900 Regex!16694)) (EmptyExpr!16694) (Star!16694 (reg!17023 Regex!16694)) (EmptyLang!16694) (Union!16694 (regOne!33901 Regex!16694) (regTwo!33901 Regex!16694)) )
))
(declare-datatypes ((List!66381 0))(
  ( (Nil!66257) (Cons!66257 (h!72705 Regex!16694) (t!380124 List!66381)) )
))
(declare-datatypes ((Context!12156 0))(
  ( (Context!12157 (exprs!6578 List!66381)) )
))
(declare-datatypes ((List!66382 0))(
  ( (Nil!66258) (Cons!66258 (h!72706 Context!12156) (t!380125 List!66382)) )
))
(declare-fun zl!343 () List!66382)

(declare-fun e!4137986 () Bool)

(declare-fun inv!84983 (Context!12156) Bool)

(assert (=> b!6863994 (= e!4137988 (and (inv!84983 (h!72706 zl!343)) e!4137986 tp!1883336))))

(declare-fun b!6863995 () Bool)

(declare-fun res!2800315 () Bool)

(declare-fun e!4137984 () Bool)

(assert (=> b!6863995 (=> (not res!2800315) (not e!4137984))))

(declare-fun z!1189 () (Set Context!12156))

(declare-fun toList!10478 ((Set Context!12156)) List!66382)

(assert (=> b!6863995 (= res!2800315 (= (toList!10478 z!1189) zl!343))))

(declare-fun b!6863996 () Bool)

(declare-fun res!2800320 () Bool)

(declare-fun e!4137985 () Bool)

(assert (=> b!6863996 (=> res!2800320 e!4137985)))

(declare-fun lt!2457732 () List!66381)

(declare-fun exists!2820 (List!66381 Int) Bool)

(assert (=> b!6863996 (= res!2800320 (exists!2820 lt!2457732 lambda!388338))))

(declare-fun b!6863997 () Bool)

(declare-fun res!2800317 () Bool)

(assert (=> b!6863997 (=> res!2800317 e!4137985)))

(declare-datatypes ((List!66383 0))(
  ( (Nil!66259) (Cons!66259 (h!72707 C!33658) (t!380126 List!66383)) )
))
(declare-fun s!2326 () List!66383)

(declare-fun matchZipper!2660 ((Set Context!12156) List!66383) Bool)

(assert (=> b!6863997 (= res!2800317 (not (matchZipper!2660 z!1189 s!2326)))))

(declare-fun e!4137979 () Bool)

(assert (=> b!6863998 (= e!4137979 e!4137985)))

(declare-fun res!2800310 () Bool)

(assert (=> b!6863998 (=> res!2800310 e!4137985)))

(declare-fun lt!2457729 () Bool)

(assert (=> b!6863998 (= res!2800310 lt!2457729)))

(assert (=> b!6863998 (= lt!2457729 (exists!2820 lt!2457732 lambda!388338))))

(declare-fun r!7292 () Regex!16694)

(declare-datatypes ((Unit!160153 0))(
  ( (Unit!160154) )
))
(declare-fun lt!2457737 () Unit!160153)

(declare-fun matchRGenUnionSpec!333 (Regex!16694 List!66381 List!66383) Unit!160153)

(assert (=> b!6863998 (= lt!2457737 (matchRGenUnionSpec!333 r!7292 lt!2457732 s!2326))))

(declare-fun unfocusZipperList!2111 (List!66382) List!66381)

(assert (=> b!6863998 (= lt!2457732 (unfocusZipperList!2111 zl!343))))

(declare-fun b!6863999 () Bool)

(assert (=> b!6863999 (= e!4137984 (not e!4137979))))

(declare-fun res!2800316 () Bool)

(assert (=> b!6863999 (=> res!2800316 e!4137979)))

(declare-fun e!4137982 () Bool)

(assert (=> b!6863999 (= res!2800316 e!4137982)))

(declare-fun res!2800311 () Bool)

(assert (=> b!6863999 (=> (not res!2800311) (not e!4137982))))

(assert (=> b!6863999 (= res!2800311 (is-Cons!66258 zl!343))))

(declare-fun matchRSpec!3795 (Regex!16694 List!66383) Bool)

(assert (=> b!6863999 (= lt!2457729 (matchRSpec!3795 r!7292 s!2326))))

(declare-fun matchR!8877 (Regex!16694 List!66383) Bool)

(assert (=> b!6863999 (= lt!2457729 (matchR!8877 r!7292 s!2326))))

(declare-fun lt!2457733 () Unit!160153)

(declare-fun mainMatchTheorem!3795 (Regex!16694 List!66383) Unit!160153)

(assert (=> b!6863999 (= lt!2457733 (mainMatchTheorem!3795 r!7292 s!2326))))

(declare-fun setIsEmpty!47206 () Bool)

(declare-fun setRes!47206 () Bool)

(assert (=> setIsEmpty!47206 setRes!47206))

(declare-fun b!6864000 () Bool)

(declare-fun res!2800314 () Bool)

(declare-fun e!4137977 () Bool)

(assert (=> b!6864000 (=> res!2800314 e!4137977)))

(declare-fun lt!2457736 () Context!12156)

(declare-fun validRegex!8430 (Regex!16694) Bool)

(declare-fun generalisedConcat!2282 (List!66381) Regex!16694)

(assert (=> b!6864000 (= res!2800314 (not (validRegex!8430 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))))

(declare-fun e!4137987 () Bool)

(declare-fun e!4137981 () Bool)

(assert (=> b!6864001 (= e!4137987 e!4137981)))

(declare-fun res!2800318 () Bool)

(assert (=> b!6864001 (=> res!2800318 e!4137981)))

(declare-fun forall!15885 (List!66381 Int) Bool)

(assert (=> b!6864001 (= res!2800318 (not (forall!15885 (exprs!6578 lt!2457736) lambda!388340)))))

(assert (=> b!6864001 (forall!15885 (exprs!6578 lt!2457736) lambda!388340)))

(declare-fun lt!2457735 () Unit!160153)

(declare-fun lemmaContextForallValidExprs!69 (Context!12156 List!66381) Unit!160153)

(assert (=> b!6864001 (= lt!2457735 (lemmaContextForallValidExprs!69 lt!2457736 (exprs!6578 lt!2457736)))))

(declare-fun lambda!388339 () Int)

(declare-fun getWitness!973 (List!66382 Int) Context!12156)

(assert (=> b!6864001 (= lt!2457736 (getWitness!973 zl!343 lambda!388339))))

(declare-fun b!6864002 () Bool)

(declare-fun res!2800319 () Bool)

(assert (=> b!6864002 (=> res!2800319 e!4137979)))

(assert (=> b!6864002 (= res!2800319 (or (not (is-Cons!66258 zl!343)) (is-Nil!66259 s!2326) (not (= zl!343 (Cons!66258 (h!72706 zl!343) (t!380125 zl!343))))))))

(declare-fun b!6864003 () Bool)

(declare-fun tp!1883339 () Bool)

(assert (=> b!6864003 (= e!4137986 tp!1883339)))

(declare-fun b!6864004 () Bool)

(declare-fun e!4137978 () Bool)

(declare-fun tp!1883345 () Bool)

(declare-fun tp!1883340 () Bool)

(assert (=> b!6864004 (= e!4137978 (and tp!1883345 tp!1883340))))

(declare-fun b!6864005 () Bool)

(assert (=> b!6864005 (= e!4137981 e!4137977)))

(declare-fun res!2800313 () Bool)

(assert (=> b!6864005 (=> res!2800313 e!4137977)))

(declare-fun lt!2457731 () Int)

(declare-fun lt!2457734 () List!66382)

(declare-fun zipperDepthTotal!443 (List!66382) Int)

(assert (=> b!6864005 (= res!2800313 (<= lt!2457731 (zipperDepthTotal!443 lt!2457734)))))

(assert (=> b!6864005 (= lt!2457734 (Cons!66258 lt!2457736 Nil!66258))))

(declare-fun lt!2457739 () Int)

(assert (=> b!6864005 (< lt!2457739 lt!2457731)))

(assert (=> b!6864005 (= lt!2457731 (zipperDepthTotal!443 zl!343))))

(declare-fun contextDepthTotal!415 (Context!12156) Int)

(assert (=> b!6864005 (= lt!2457739 (contextDepthTotal!415 lt!2457736))))

(declare-fun lt!2457738 () Unit!160153)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!47 (List!66382 Context!12156) Unit!160153)

(assert (=> b!6864005 (= lt!2457738 (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!47 zl!343 lt!2457736))))

(declare-fun b!6864006 () Bool)

(declare-fun tp_is_empty!42641 () Bool)

(assert (=> b!6864006 (= e!4137978 tp_is_empty!42641)))

(declare-fun b!6864007 () Bool)

(declare-fun res!2800312 () Bool)

(assert (=> b!6864007 (=> res!2800312 e!4137979)))

(declare-fun isEmpty!38617 (List!66382) Bool)

(assert (=> b!6864007 (= res!2800312 (isEmpty!38617 (t!380125 zl!343)))))

(declare-fun res!2800309 () Bool)

(assert (=> start!662646 (=> (not res!2800309) (not e!4137984))))

(assert (=> start!662646 (= res!2800309 (validRegex!8430 r!7292))))

(assert (=> start!662646 e!4137984))

(assert (=> start!662646 e!4137978))

(declare-fun condSetEmpty!47206 () Bool)

(assert (=> start!662646 (= condSetEmpty!47206 (= z!1189 (as set.empty (Set Context!12156))))))

(assert (=> start!662646 setRes!47206))

(assert (=> start!662646 e!4137988))

(declare-fun e!4137983 () Bool)

(assert (=> start!662646 e!4137983))

(declare-fun b!6864008 () Bool)

(declare-fun e!4137980 () Bool)

(declare-fun tp!1883344 () Bool)

(assert (=> b!6864008 (= e!4137980 tp!1883344)))

(declare-fun b!6864009 () Bool)

(declare-fun tp!1883341 () Bool)

(assert (=> b!6864009 (= e!4137978 tp!1883341)))

(declare-fun b!6864010 () Bool)

(assert (=> b!6864010 (= e!4137977 (= (toList!10478 (set.insert lt!2457736 (as set.empty (Set Context!12156)))) lt!2457734))))

(assert (=> b!6864011 (= e!4137985 e!4137987)))

(declare-fun res!2800322 () Bool)

(assert (=> b!6864011 (=> res!2800322 e!4137987)))

(declare-fun exists!2821 (List!66382 Int) Bool)

(assert (=> b!6864011 (= res!2800322 (not (exists!2821 zl!343 lambda!388339)))))

(assert (=> b!6864011 (exists!2821 zl!343 lambda!388339)))

(declare-fun lt!2457730 () Unit!160153)

(declare-fun lemmaZipperMatchesExistsMatchingContext!93 (List!66382 List!66383) Unit!160153)

(assert (=> b!6864011 (= lt!2457730 (lemmaZipperMatchesExistsMatchingContext!93 zl!343 s!2326))))

(declare-fun b!6864012 () Bool)

(declare-fun tp!1883343 () Bool)

(declare-fun tp!1883338 () Bool)

(assert (=> b!6864012 (= e!4137978 (and tp!1883343 tp!1883338))))

(declare-fun b!6864013 () Bool)

(assert (=> b!6864013 (= e!4137982 (isEmpty!38617 (t!380125 zl!343)))))

(declare-fun setElem!47206 () Context!12156)

(declare-fun setNonEmpty!47206 () Bool)

(declare-fun tp!1883342 () Bool)

(assert (=> setNonEmpty!47206 (= setRes!47206 (and tp!1883342 (inv!84983 setElem!47206) e!4137980))))

(declare-fun setRest!47206 () (Set Context!12156))

(assert (=> setNonEmpty!47206 (= z!1189 (set.union (set.insert setElem!47206 (as set.empty (Set Context!12156))) setRest!47206))))

(declare-fun b!6864014 () Bool)

(declare-fun tp!1883337 () Bool)

(assert (=> b!6864014 (= e!4137983 (and tp_is_empty!42641 tp!1883337))))

(declare-fun b!6864015 () Bool)

(declare-fun res!2800321 () Bool)

(assert (=> b!6864015 (=> (not res!2800321) (not e!4137984))))

(declare-fun unfocusZipper!2436 (List!66382) Regex!16694)

(assert (=> b!6864015 (= res!2800321 (= r!7292 (unfocusZipper!2436 zl!343)))))

(assert (= (and start!662646 res!2800309) b!6863995))

(assert (= (and b!6863995 res!2800315) b!6864015))

(assert (= (and b!6864015 res!2800321) b!6863999))

(assert (= (and b!6863999 res!2800311) b!6864013))

(assert (= (and b!6863999 (not res!2800316)) b!6864002))

(assert (= (and b!6864002 (not res!2800319)) b!6864007))

(assert (= (and b!6864007 (not res!2800312)) b!6863998))

(assert (= (and b!6863998 (not res!2800310)) b!6863996))

(assert (= (and b!6863996 (not res!2800320)) b!6863997))

(assert (= (and b!6863997 (not res!2800317)) b!6864011))

(assert (= (and b!6864011 (not res!2800322)) b!6864001))

(assert (= (and b!6864001 (not res!2800318)) b!6864005))

(assert (= (and b!6864005 (not res!2800313)) b!6864000))

(assert (= (and b!6864000 (not res!2800314)) b!6864010))

(assert (= (and start!662646 (is-ElementMatch!16694 r!7292)) b!6864006))

(assert (= (and start!662646 (is-Concat!25539 r!7292)) b!6864004))

(assert (= (and start!662646 (is-Star!16694 r!7292)) b!6864009))

(assert (= (and start!662646 (is-Union!16694 r!7292)) b!6864012))

(assert (= (and start!662646 condSetEmpty!47206) setIsEmpty!47206))

(assert (= (and start!662646 (not condSetEmpty!47206)) setNonEmpty!47206))

(assert (= setNonEmpty!47206 b!6864008))

(assert (= b!6863994 b!6864003))

(assert (= (and start!662646 (is-Cons!66258 zl!343)) b!6863994))

(assert (= (and start!662646 (is-Cons!66259 s!2326)) b!6864014))

(declare-fun m!7597032 () Bool)

(assert (=> b!6863998 m!7597032))

(declare-fun m!7597034 () Bool)

(assert (=> b!6863998 m!7597034))

(declare-fun m!7597036 () Bool)

(assert (=> b!6863998 m!7597036))

(declare-fun m!7597038 () Bool)

(assert (=> b!6864007 m!7597038))

(declare-fun m!7597040 () Bool)

(assert (=> setNonEmpty!47206 m!7597040))

(declare-fun m!7597042 () Bool)

(assert (=> start!662646 m!7597042))

(declare-fun m!7597044 () Bool)

(assert (=> b!6864001 m!7597044))

(assert (=> b!6864001 m!7597044))

(declare-fun m!7597046 () Bool)

(assert (=> b!6864001 m!7597046))

(declare-fun m!7597048 () Bool)

(assert (=> b!6864001 m!7597048))

(assert (=> b!6864013 m!7597038))

(declare-fun m!7597050 () Bool)

(assert (=> b!6863999 m!7597050))

(declare-fun m!7597052 () Bool)

(assert (=> b!6863999 m!7597052))

(declare-fun m!7597054 () Bool)

(assert (=> b!6863999 m!7597054))

(declare-fun m!7597056 () Bool)

(assert (=> b!6864000 m!7597056))

(assert (=> b!6864000 m!7597056))

(declare-fun m!7597058 () Bool)

(assert (=> b!6864000 m!7597058))

(declare-fun m!7597060 () Bool)

(assert (=> b!6863997 m!7597060))

(assert (=> b!6863996 m!7597032))

(declare-fun m!7597062 () Bool)

(assert (=> b!6864015 m!7597062))

(declare-fun m!7597064 () Bool)

(assert (=> b!6864005 m!7597064))

(declare-fun m!7597066 () Bool)

(assert (=> b!6864005 m!7597066))

(declare-fun m!7597068 () Bool)

(assert (=> b!6864005 m!7597068))

(declare-fun m!7597070 () Bool)

(assert (=> b!6864005 m!7597070))

(declare-fun m!7597072 () Bool)

(assert (=> b!6864011 m!7597072))

(assert (=> b!6864011 m!7597072))

(declare-fun m!7597074 () Bool)

(assert (=> b!6864011 m!7597074))

(declare-fun m!7597076 () Bool)

(assert (=> b!6863994 m!7597076))

(declare-fun m!7597078 () Bool)

(assert (=> b!6864010 m!7597078))

(assert (=> b!6864010 m!7597078))

(declare-fun m!7597080 () Bool)

(assert (=> b!6864010 m!7597080))

(declare-fun m!7597082 () Bool)

(assert (=> b!6863995 m!7597082))

(push 1)

(assert (not b!6864007))

(assert tp_is_empty!42641)

(assert (not b!6863996))

(assert (not start!662646))

(assert (not b!6864015))

(assert (not b!6863995))

(assert (not b!6864009))

(assert (not b!6863997))

(assert (not b!6864003))

(assert (not setNonEmpty!47206))

(assert (not b!6863998))

(assert (not b!6863994))

(assert (not b!6864011))

(assert (not b!6864010))

(assert (not b!6864001))

(assert (not b!6864012))

(assert (not b!6864013))

(assert (not b!6864014))

(assert (not b!6863999))

(assert (not b!6864008))

(assert (not b!6864004))

(assert (not b!6864000))

(assert (not b!6864005))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6864112 () Bool)

(declare-fun res!2800381 () Bool)

(declare-fun e!4138043 () Bool)

(assert (=> b!6864112 (=> res!2800381 e!4138043)))

(assert (=> b!6864112 (= res!2800381 (not (is-Concat!25539 r!7292)))))

(declare-fun e!4138044 () Bool)

(assert (=> b!6864112 (= e!4138044 e!4138043)))

(declare-fun b!6864114 () Bool)

(declare-fun e!4138045 () Bool)

(assert (=> b!6864114 (= e!4138043 e!4138045)))

(declare-fun res!2800383 () Bool)

(assert (=> b!6864114 (=> (not res!2800383) (not e!4138045))))

(declare-fun call!625145 () Bool)

(assert (=> b!6864114 (= res!2800383 call!625145)))

(declare-fun b!6864115 () Bool)

(declare-fun res!2800382 () Bool)

(declare-fun e!4138049 () Bool)

(assert (=> b!6864115 (=> (not res!2800382) (not e!4138049))))

(assert (=> b!6864115 (= res!2800382 call!625145)))

(assert (=> b!6864115 (= e!4138044 e!4138049)))

(declare-fun b!6864116 () Bool)

(declare-fun e!4138046 () Bool)

(declare-fun call!625146 () Bool)

(assert (=> b!6864116 (= e!4138046 call!625146)))

(declare-fun b!6864117 () Bool)

(declare-fun e!4138048 () Bool)

(assert (=> b!6864117 (= e!4138048 e!4138044)))

(declare-fun c!1277531 () Bool)

(assert (=> b!6864117 (= c!1277531 (is-Union!16694 r!7292))))

(declare-fun bm!625139 () Bool)

(declare-fun call!625144 () Bool)

(assert (=> bm!625139 (= call!625144 call!625146)))

(declare-fun c!1277530 () Bool)

(declare-fun bm!625140 () Bool)

(assert (=> bm!625140 (= call!625146 (validRegex!8430 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))))))

(declare-fun b!6864118 () Bool)

(assert (=> b!6864118 (= e!4138048 e!4138046)))

(declare-fun res!2800380 () Bool)

(declare-fun nullable!6655 (Regex!16694) Bool)

(assert (=> b!6864118 (= res!2800380 (not (nullable!6655 (reg!17023 r!7292))))))

(assert (=> b!6864118 (=> (not res!2800380) (not e!4138046))))

(declare-fun b!6864119 () Bool)

(declare-fun e!4138047 () Bool)

(assert (=> b!6864119 (= e!4138047 e!4138048)))

(assert (=> b!6864119 (= c!1277530 (is-Star!16694 r!7292))))

(declare-fun b!6864113 () Bool)

(assert (=> b!6864113 (= e!4138049 call!625144)))

(declare-fun d!2156369 () Bool)

(declare-fun res!2800379 () Bool)

(assert (=> d!2156369 (=> res!2800379 e!4138047)))

(assert (=> d!2156369 (= res!2800379 (is-ElementMatch!16694 r!7292))))

(assert (=> d!2156369 (= (validRegex!8430 r!7292) e!4138047)))

(declare-fun bm!625141 () Bool)

(assert (=> bm!625141 (= call!625145 (validRegex!8430 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))))))

(declare-fun b!6864120 () Bool)

(assert (=> b!6864120 (= e!4138045 call!625144)))

(assert (= (and d!2156369 (not res!2800379)) b!6864119))

(assert (= (and b!6864119 c!1277530) b!6864118))

(assert (= (and b!6864119 (not c!1277530)) b!6864117))

(assert (= (and b!6864118 res!2800380) b!6864116))

(assert (= (and b!6864117 c!1277531) b!6864115))

(assert (= (and b!6864117 (not c!1277531)) b!6864112))

(assert (= (and b!6864115 res!2800382) b!6864113))

(assert (= (and b!6864112 (not res!2800381)) b!6864114))

(assert (= (and b!6864114 res!2800383) b!6864120))

(assert (= (or b!6864113 b!6864120) bm!625139))

(assert (= (or b!6864115 b!6864114) bm!625141))

(assert (= (or b!6864116 bm!625139) bm!625140))

(declare-fun m!7597136 () Bool)

(assert (=> bm!625140 m!7597136))

(declare-fun m!7597138 () Bool)

(assert (=> b!6864118 m!7597138))

(declare-fun m!7597140 () Bool)

(assert (=> bm!625141 m!7597140))

(assert (=> start!662646 d!2156369))

(declare-fun d!2156371 () Bool)

(declare-fun e!4138052 () Bool)

(assert (=> d!2156371 e!4138052))

(declare-fun res!2800386 () Bool)

(assert (=> d!2156371 (=> (not res!2800386) (not e!4138052))))

(declare-fun lt!2457775 () List!66382)

(declare-fun noDuplicate!2458 (List!66382) Bool)

(assert (=> d!2156371 (= res!2800386 (noDuplicate!2458 lt!2457775))))

(declare-fun choose!51156 ((Set Context!12156)) List!66382)

(assert (=> d!2156371 (= lt!2457775 (choose!51156 (set.insert lt!2457736 (as set.empty (Set Context!12156)))))))

(assert (=> d!2156371 (= (toList!10478 (set.insert lt!2457736 (as set.empty (Set Context!12156)))) lt!2457775)))

(declare-fun b!6864123 () Bool)

(declare-fun content!13007 (List!66382) (Set Context!12156))

(assert (=> b!6864123 (= e!4138052 (= (content!13007 lt!2457775) (set.insert lt!2457736 (as set.empty (Set Context!12156)))))))

(assert (= (and d!2156371 res!2800386) b!6864123))

(declare-fun m!7597142 () Bool)

(assert (=> d!2156371 m!7597142))

(assert (=> d!2156371 m!7597078))

(declare-fun m!7597144 () Bool)

(assert (=> d!2156371 m!7597144))

(declare-fun m!7597146 () Bool)

(assert (=> b!6864123 m!7597146))

(assert (=> b!6864010 d!2156371))

(declare-fun b!6864124 () Bool)

(declare-fun res!2800389 () Bool)

(declare-fun e!4138053 () Bool)

(assert (=> b!6864124 (=> res!2800389 e!4138053)))

(assert (=> b!6864124 (= res!2800389 (not (is-Concat!25539 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))))

(declare-fun e!4138054 () Bool)

(assert (=> b!6864124 (= e!4138054 e!4138053)))

(declare-fun b!6864126 () Bool)

(declare-fun e!4138055 () Bool)

(assert (=> b!6864126 (= e!4138053 e!4138055)))

(declare-fun res!2800391 () Bool)

(assert (=> b!6864126 (=> (not res!2800391) (not e!4138055))))

(declare-fun call!625148 () Bool)

(assert (=> b!6864126 (= res!2800391 call!625148)))

(declare-fun b!6864127 () Bool)

(declare-fun res!2800390 () Bool)

(declare-fun e!4138059 () Bool)

(assert (=> b!6864127 (=> (not res!2800390) (not e!4138059))))

(assert (=> b!6864127 (= res!2800390 call!625148)))

(assert (=> b!6864127 (= e!4138054 e!4138059)))

(declare-fun b!6864128 () Bool)

(declare-fun e!4138056 () Bool)

(declare-fun call!625149 () Bool)

(assert (=> b!6864128 (= e!4138056 call!625149)))

(declare-fun b!6864129 () Bool)

(declare-fun e!4138058 () Bool)

(assert (=> b!6864129 (= e!4138058 e!4138054)))

(declare-fun c!1277533 () Bool)

(assert (=> b!6864129 (= c!1277533 (is-Union!16694 (generalisedConcat!2282 (exprs!6578 lt!2457736))))))

(declare-fun bm!625142 () Bool)

(declare-fun call!625147 () Bool)

(assert (=> bm!625142 (= call!625147 call!625149)))

(declare-fun c!1277532 () Bool)

(declare-fun bm!625143 () Bool)

(assert (=> bm!625143 (= call!625149 (validRegex!8430 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))))))

(declare-fun b!6864130 () Bool)

(assert (=> b!6864130 (= e!4138058 e!4138056)))

(declare-fun res!2800388 () Bool)

(assert (=> b!6864130 (= res!2800388 (not (nullable!6655 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))))))))

(assert (=> b!6864130 (=> (not res!2800388) (not e!4138056))))

(declare-fun b!6864131 () Bool)

(declare-fun e!4138057 () Bool)

(assert (=> b!6864131 (= e!4138057 e!4138058)))

(assert (=> b!6864131 (= c!1277532 (is-Star!16694 (generalisedConcat!2282 (exprs!6578 lt!2457736))))))

(declare-fun b!6864125 () Bool)

(assert (=> b!6864125 (= e!4138059 call!625147)))

(declare-fun d!2156373 () Bool)

(declare-fun res!2800387 () Bool)

(assert (=> d!2156373 (=> res!2800387 e!4138057)))

(assert (=> d!2156373 (= res!2800387 (is-ElementMatch!16694 (generalisedConcat!2282 (exprs!6578 lt!2457736))))))

(assert (=> d!2156373 (= (validRegex!8430 (generalisedConcat!2282 (exprs!6578 lt!2457736))) e!4138057)))

(declare-fun bm!625144 () Bool)

(assert (=> bm!625144 (= call!625148 (validRegex!8430 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))))))

(declare-fun b!6864132 () Bool)

(assert (=> b!6864132 (= e!4138055 call!625147)))

(assert (= (and d!2156373 (not res!2800387)) b!6864131))

(assert (= (and b!6864131 c!1277532) b!6864130))

(assert (= (and b!6864131 (not c!1277532)) b!6864129))

(assert (= (and b!6864130 res!2800388) b!6864128))

(assert (= (and b!6864129 c!1277533) b!6864127))

(assert (= (and b!6864129 (not c!1277533)) b!6864124))

(assert (= (and b!6864127 res!2800390) b!6864125))

(assert (= (and b!6864124 (not res!2800389)) b!6864126))

(assert (= (and b!6864126 res!2800391) b!6864132))

(assert (= (or b!6864125 b!6864132) bm!625142))

(assert (= (or b!6864127 b!6864126) bm!625144))

(assert (= (or b!6864128 bm!625142) bm!625143))

(declare-fun m!7597148 () Bool)

(assert (=> bm!625143 m!7597148))

(declare-fun m!7597150 () Bool)

(assert (=> b!6864130 m!7597150))

(declare-fun m!7597152 () Bool)

(assert (=> bm!625144 m!7597152))

(assert (=> b!6864000 d!2156373))

(declare-fun bs!1834448 () Bool)

(declare-fun d!2156375 () Bool)

(assert (= bs!1834448 (and d!2156375 b!6863998)))

(declare-fun lambda!388360 () Int)

(assert (=> bs!1834448 (not (= lambda!388360 lambda!388338))))

(declare-fun bs!1834449 () Bool)

(assert (= bs!1834449 (and d!2156375 b!6864001)))

(assert (=> bs!1834449 (= lambda!388360 lambda!388340)))

(declare-fun b!6864153 () Bool)

(declare-fun e!4138076 () Regex!16694)

(assert (=> b!6864153 (= e!4138076 (Concat!25539 (h!72705 (exprs!6578 lt!2457736)) (generalisedConcat!2282 (t!380124 (exprs!6578 lt!2457736)))))))

(declare-fun b!6864154 () Bool)

(declare-fun e!4138074 () Bool)

(declare-fun e!4138075 () Bool)

(assert (=> b!6864154 (= e!4138074 e!4138075)))

(declare-fun c!1277543 () Bool)

(declare-fun isEmpty!38619 (List!66381) Bool)

(assert (=> b!6864154 (= c!1277543 (isEmpty!38619 (exprs!6578 lt!2457736)))))

(declare-fun b!6864155 () Bool)

(declare-fun e!4138072 () Bool)

(assert (=> b!6864155 (= e!4138075 e!4138072)))

(declare-fun c!1277545 () Bool)

(declare-fun tail!12829 (List!66381) List!66381)

(assert (=> b!6864155 (= c!1277545 (isEmpty!38619 (tail!12829 (exprs!6578 lt!2457736))))))

(declare-fun b!6864156 () Bool)

(declare-fun lt!2457778 () Regex!16694)

(declare-fun isConcat!1537 (Regex!16694) Bool)

(assert (=> b!6864156 (= e!4138072 (isConcat!1537 lt!2457778))))

(declare-fun b!6864157 () Bool)

(declare-fun isEmptyExpr!2014 (Regex!16694) Bool)

(assert (=> b!6864157 (= e!4138075 (isEmptyExpr!2014 lt!2457778))))

(declare-fun b!6864158 () Bool)

(declare-fun e!4138073 () Bool)

(assert (=> b!6864158 (= e!4138073 (isEmpty!38619 (t!380124 (exprs!6578 lt!2457736))))))

(declare-fun b!6864159 () Bool)

(declare-fun head!13770 (List!66381) Regex!16694)

(assert (=> b!6864159 (= e!4138072 (= lt!2457778 (head!13770 (exprs!6578 lt!2457736))))))

(declare-fun b!6864160 () Bool)

(assert (=> b!6864160 (= e!4138076 EmptyExpr!16694)))

(assert (=> d!2156375 e!4138074))

(declare-fun res!2800397 () Bool)

(assert (=> d!2156375 (=> (not res!2800397) (not e!4138074))))

(assert (=> d!2156375 (= res!2800397 (validRegex!8430 lt!2457778))))

(declare-fun e!4138077 () Regex!16694)

(assert (=> d!2156375 (= lt!2457778 e!4138077)))

(declare-fun c!1277544 () Bool)

(assert (=> d!2156375 (= c!1277544 e!4138073)))

(declare-fun res!2800396 () Bool)

(assert (=> d!2156375 (=> (not res!2800396) (not e!4138073))))

(assert (=> d!2156375 (= res!2800396 (is-Cons!66257 (exprs!6578 lt!2457736)))))

(assert (=> d!2156375 (forall!15885 (exprs!6578 lt!2457736) lambda!388360)))

(assert (=> d!2156375 (= (generalisedConcat!2282 (exprs!6578 lt!2457736)) lt!2457778)))

(declare-fun b!6864161 () Bool)

(assert (=> b!6864161 (= e!4138077 e!4138076)))

(declare-fun c!1277542 () Bool)

(assert (=> b!6864161 (= c!1277542 (is-Cons!66257 (exprs!6578 lt!2457736)))))

(declare-fun b!6864162 () Bool)

(assert (=> b!6864162 (= e!4138077 (h!72705 (exprs!6578 lt!2457736)))))

(assert (= (and d!2156375 res!2800396) b!6864158))

(assert (= (and d!2156375 c!1277544) b!6864162))

(assert (= (and d!2156375 (not c!1277544)) b!6864161))

(assert (= (and b!6864161 c!1277542) b!6864153))

(assert (= (and b!6864161 (not c!1277542)) b!6864160))

(assert (= (and d!2156375 res!2800397) b!6864154))

(assert (= (and b!6864154 c!1277543) b!6864157))

(assert (= (and b!6864154 (not c!1277543)) b!6864155))

(assert (= (and b!6864155 c!1277545) b!6864159))

(assert (= (and b!6864155 (not c!1277545)) b!6864156))

(declare-fun m!7597154 () Bool)

(assert (=> b!6864154 m!7597154))

(declare-fun m!7597156 () Bool)

(assert (=> b!6864153 m!7597156))

(declare-fun m!7597158 () Bool)

(assert (=> b!6864158 m!7597158))

(declare-fun m!7597160 () Bool)

(assert (=> b!6864157 m!7597160))

(declare-fun m!7597162 () Bool)

(assert (=> d!2156375 m!7597162))

(declare-fun m!7597164 () Bool)

(assert (=> d!2156375 m!7597164))

(declare-fun m!7597166 () Bool)

(assert (=> b!6864159 m!7597166))

(declare-fun m!7597168 () Bool)

(assert (=> b!6864156 m!7597168))

(declare-fun m!7597170 () Bool)

(assert (=> b!6864155 m!7597170))

(assert (=> b!6864155 m!7597170))

(declare-fun m!7597172 () Bool)

(assert (=> b!6864155 m!7597172))

(assert (=> b!6864000 d!2156375))

(declare-fun bs!1834450 () Bool)

(declare-fun d!2156377 () Bool)

(assert (= bs!1834450 (and d!2156377 b!6864011)))

(declare-fun lambda!388363 () Int)

(assert (=> bs!1834450 (not (= lambda!388363 lambda!388339))))

(assert (=> d!2156377 true))

(declare-fun order!27717 () Int)

(declare-fun dynLambda!26517 (Int Int) Int)

(assert (=> d!2156377 (< (dynLambda!26517 order!27717 lambda!388339) (dynLambda!26517 order!27717 lambda!388363))))

(declare-fun forall!15887 (List!66382 Int) Bool)

(assert (=> d!2156377 (= (exists!2821 zl!343 lambda!388339) (not (forall!15887 zl!343 lambda!388363)))))

(declare-fun bs!1834451 () Bool)

(assert (= bs!1834451 d!2156377))

(declare-fun m!7597174 () Bool)

(assert (=> bs!1834451 m!7597174))

(assert (=> b!6864011 d!2156377))

(declare-fun bs!1834452 () Bool)

(declare-fun d!2156379 () Bool)

(assert (= bs!1834452 (and d!2156379 b!6864011)))

(declare-fun lambda!388366 () Int)

(assert (=> bs!1834452 (= lambda!388366 lambda!388339)))

(declare-fun bs!1834453 () Bool)

(assert (= bs!1834453 (and d!2156379 d!2156377)))

(assert (=> bs!1834453 (not (= lambda!388366 lambda!388363))))

(assert (=> d!2156379 true))

(assert (=> d!2156379 (exists!2821 zl!343 lambda!388366)))

(declare-fun lt!2457781 () Unit!160153)

(declare-fun choose!51157 (List!66382 List!66383) Unit!160153)

(assert (=> d!2156379 (= lt!2457781 (choose!51157 zl!343 s!2326))))

(assert (=> d!2156379 (matchZipper!2660 (content!13007 zl!343) s!2326)))

(assert (=> d!2156379 (= (lemmaZipperMatchesExistsMatchingContext!93 zl!343 s!2326) lt!2457781)))

(declare-fun bs!1834454 () Bool)

(assert (= bs!1834454 d!2156379))

(declare-fun m!7597176 () Bool)

(assert (=> bs!1834454 m!7597176))

(declare-fun m!7597178 () Bool)

(assert (=> bs!1834454 m!7597178))

(declare-fun m!7597180 () Bool)

(assert (=> bs!1834454 m!7597180))

(assert (=> bs!1834454 m!7597180))

(declare-fun m!7597182 () Bool)

(assert (=> bs!1834454 m!7597182))

(assert (=> b!6864011 d!2156379))

(declare-fun d!2156381 () Bool)

(declare-fun res!2800402 () Bool)

(declare-fun e!4138082 () Bool)

(assert (=> d!2156381 (=> res!2800402 e!4138082)))

(assert (=> d!2156381 (= res!2800402 (is-Nil!66257 (exprs!6578 lt!2457736)))))

(assert (=> d!2156381 (= (forall!15885 (exprs!6578 lt!2457736) lambda!388340) e!4138082)))

(declare-fun b!6864169 () Bool)

(declare-fun e!4138083 () Bool)

(assert (=> b!6864169 (= e!4138082 e!4138083)))

(declare-fun res!2800403 () Bool)

(assert (=> b!6864169 (=> (not res!2800403) (not e!4138083))))

(declare-fun dynLambda!26518 (Int Regex!16694) Bool)

(assert (=> b!6864169 (= res!2800403 (dynLambda!26518 lambda!388340 (h!72705 (exprs!6578 lt!2457736))))))

(declare-fun b!6864170 () Bool)

(assert (=> b!6864170 (= e!4138083 (forall!15885 (t!380124 (exprs!6578 lt!2457736)) lambda!388340))))

(assert (= (and d!2156381 (not res!2800402)) b!6864169))

(assert (= (and b!6864169 res!2800403) b!6864170))

(declare-fun b_lambda!259467 () Bool)

(assert (=> (not b_lambda!259467) (not b!6864169)))

(declare-fun m!7597184 () Bool)

(assert (=> b!6864169 m!7597184))

(declare-fun m!7597186 () Bool)

(assert (=> b!6864170 m!7597186))

(assert (=> b!6864001 d!2156381))

(declare-fun bs!1834455 () Bool)

(declare-fun d!2156385 () Bool)

(assert (= bs!1834455 (and d!2156385 b!6863998)))

(declare-fun lambda!388369 () Int)

(assert (=> bs!1834455 (not (= lambda!388369 lambda!388338))))

(declare-fun bs!1834456 () Bool)

(assert (= bs!1834456 (and d!2156385 b!6864001)))

(assert (=> bs!1834456 (= lambda!388369 lambda!388340)))

(declare-fun bs!1834457 () Bool)

(assert (= bs!1834457 (and d!2156385 d!2156375)))

(assert (=> bs!1834457 (= lambda!388369 lambda!388360)))

(assert (=> d!2156385 (forall!15885 (exprs!6578 lt!2457736) lambda!388369)))

(declare-fun lt!2457784 () Unit!160153)

(declare-fun choose!51158 (Context!12156 List!66381) Unit!160153)

(assert (=> d!2156385 (= lt!2457784 (choose!51158 lt!2457736 (exprs!6578 lt!2457736)))))

(assert (=> d!2156385 (= (exprs!6578 lt!2457736) (exprs!6578 lt!2457736))))

(assert (=> d!2156385 (= (lemmaContextForallValidExprs!69 lt!2457736 (exprs!6578 lt!2457736)) lt!2457784)))

(declare-fun bs!1834458 () Bool)

(assert (= bs!1834458 d!2156385))

(declare-fun m!7597188 () Bool)

(assert (=> bs!1834458 m!7597188))

(declare-fun m!7597190 () Bool)

(assert (=> bs!1834458 m!7597190))

(assert (=> b!6864001 d!2156385))

(declare-fun b!6864183 () Bool)

(declare-fun e!4138093 () Context!12156)

(declare-fun e!4138095 () Context!12156)

(assert (=> b!6864183 (= e!4138093 e!4138095)))

(declare-fun c!1277553 () Bool)

(assert (=> b!6864183 (= c!1277553 (is-Cons!66258 zl!343))))

(declare-fun b!6864184 () Bool)

(assert (=> b!6864184 (= e!4138095 (getWitness!973 (t!380125 zl!343) lambda!388339))))

(declare-fun d!2156387 () Bool)

(declare-fun e!4138092 () Bool)

(assert (=> d!2156387 e!4138092))

(declare-fun res!2800408 () Bool)

(assert (=> d!2156387 (=> (not res!2800408) (not e!4138092))))

(declare-fun lt!2457793 () Context!12156)

(declare-fun dynLambda!26519 (Int Context!12156) Bool)

(assert (=> d!2156387 (= res!2800408 (dynLambda!26519 lambda!388339 lt!2457793))))

(assert (=> d!2156387 (= lt!2457793 e!4138093)))

(declare-fun c!1277554 () Bool)

(declare-fun e!4138094 () Bool)

(assert (=> d!2156387 (= c!1277554 e!4138094)))

(declare-fun res!2800409 () Bool)

(assert (=> d!2156387 (=> (not res!2800409) (not e!4138094))))

(assert (=> d!2156387 (= res!2800409 (is-Cons!66258 zl!343))))

(assert (=> d!2156387 (exists!2821 zl!343 lambda!388339)))

(assert (=> d!2156387 (= (getWitness!973 zl!343 lambda!388339) lt!2457793)))

(declare-fun b!6864185 () Bool)

(assert (=> b!6864185 (= e!4138093 (h!72706 zl!343))))

(declare-fun b!6864186 () Bool)

(declare-fun lt!2457792 () Unit!160153)

(declare-fun Unit!160157 () Unit!160153)

(assert (=> b!6864186 (= lt!2457792 Unit!160157)))

(assert (=> b!6864186 false))

(declare-fun head!13771 (List!66382) Context!12156)

(assert (=> b!6864186 (= e!4138095 (head!13771 zl!343))))

(declare-fun b!6864187 () Bool)

(declare-fun contains!20352 (List!66382 Context!12156) Bool)

(assert (=> b!6864187 (= e!4138092 (contains!20352 zl!343 lt!2457793))))

(declare-fun b!6864188 () Bool)

(assert (=> b!6864188 (= e!4138094 (dynLambda!26519 lambda!388339 (h!72706 zl!343)))))

(assert (= (and d!2156387 res!2800409) b!6864188))

(assert (= (and d!2156387 c!1277554) b!6864185))

(assert (= (and d!2156387 (not c!1277554)) b!6864183))

(assert (= (and b!6864183 c!1277553) b!6864184))

(assert (= (and b!6864183 (not c!1277553)) b!6864186))

(assert (= (and d!2156387 res!2800408) b!6864187))

(declare-fun b_lambda!259469 () Bool)

(assert (=> (not b_lambda!259469) (not d!2156387)))

(declare-fun b_lambda!259471 () Bool)

(assert (=> (not b_lambda!259471) (not b!6864188)))

(declare-fun m!7597196 () Bool)

(assert (=> b!6864187 m!7597196))

(declare-fun m!7597198 () Bool)

(assert (=> b!6864186 m!7597198))

(declare-fun m!7597200 () Bool)

(assert (=> b!6864188 m!7597200))

(declare-fun m!7597202 () Bool)

(assert (=> d!2156387 m!7597202))

(assert (=> d!2156387 m!7597072))

(declare-fun m!7597204 () Bool)

(assert (=> b!6864184 m!7597204))

(assert (=> b!6864001 d!2156387))

(declare-fun d!2156391 () Bool)

(declare-fun c!1277557 () Bool)

(declare-fun isEmpty!38620 (List!66383) Bool)

(assert (=> d!2156391 (= c!1277557 (isEmpty!38620 s!2326))))

(declare-fun e!4138098 () Bool)

(assert (=> d!2156391 (= (matchZipper!2660 z!1189 s!2326) e!4138098)))

(declare-fun b!6864193 () Bool)

(declare-fun nullableZipper!2367 ((Set Context!12156)) Bool)

(assert (=> b!6864193 (= e!4138098 (nullableZipper!2367 z!1189))))

(declare-fun b!6864194 () Bool)

(declare-fun derivationStepZipper!2614 ((Set Context!12156) C!33658) (Set Context!12156))

(declare-fun head!13772 (List!66383) C!33658)

(declare-fun tail!12830 (List!66383) List!66383)

(assert (=> b!6864194 (= e!4138098 (matchZipper!2660 (derivationStepZipper!2614 z!1189 (head!13772 s!2326)) (tail!12830 s!2326)))))

(assert (= (and d!2156391 c!1277557) b!6864193))

(assert (= (and d!2156391 (not c!1277557)) b!6864194))

(declare-fun m!7597206 () Bool)

(assert (=> d!2156391 m!7597206))

(declare-fun m!7597208 () Bool)

(assert (=> b!6864193 m!7597208))

(declare-fun m!7597210 () Bool)

(assert (=> b!6864194 m!7597210))

(assert (=> b!6864194 m!7597210))

(declare-fun m!7597212 () Bool)

(assert (=> b!6864194 m!7597212))

(declare-fun m!7597214 () Bool)

(assert (=> b!6864194 m!7597214))

(assert (=> b!6864194 m!7597212))

(assert (=> b!6864194 m!7597214))

(declare-fun m!7597216 () Bool)

(assert (=> b!6864194 m!7597216))

(assert (=> b!6863997 d!2156391))

(declare-fun d!2156393 () Bool)

(assert (=> d!2156393 (= (isEmpty!38617 (t!380125 zl!343)) (is-Nil!66258 (t!380125 zl!343)))))

(assert (=> b!6864007 d!2156393))

(declare-fun bs!1834460 () Bool)

(declare-fun d!2156395 () Bool)

(assert (= bs!1834460 (and d!2156395 b!6863998)))

(declare-fun lambda!388372 () Int)

(assert (=> bs!1834460 (not (= lambda!388372 lambda!388338))))

(declare-fun bs!1834461 () Bool)

(assert (= bs!1834461 (and d!2156395 b!6864001)))

(assert (=> bs!1834461 (not (= lambda!388372 lambda!388340))))

(declare-fun bs!1834462 () Bool)

(assert (= bs!1834462 (and d!2156395 d!2156375)))

(assert (=> bs!1834462 (not (= lambda!388372 lambda!388360))))

(declare-fun bs!1834463 () Bool)

(assert (= bs!1834463 (and d!2156395 d!2156385)))

(assert (=> bs!1834463 (not (= lambda!388372 lambda!388369))))

(assert (=> d!2156395 true))

(declare-fun order!27719 () Int)

(declare-fun dynLambda!26520 (Int Int) Int)

(assert (=> d!2156395 (< (dynLambda!26520 order!27719 lambda!388338) (dynLambda!26520 order!27719 lambda!388372))))

(assert (=> d!2156395 (= (exists!2820 lt!2457732 lambda!388338) (not (forall!15885 lt!2457732 lambda!388372)))))

(declare-fun bs!1834464 () Bool)

(assert (= bs!1834464 d!2156395))

(declare-fun m!7597218 () Bool)

(assert (=> bs!1834464 m!7597218))

(assert (=> b!6863998 d!2156395))

(declare-fun bs!1834465 () Bool)

(declare-fun d!2156397 () Bool)

(assert (= bs!1834465 (and d!2156397 b!6863998)))

(declare-fun lambda!388377 () Int)

(assert (=> bs!1834465 (not (= lambda!388377 lambda!388338))))

(declare-fun bs!1834466 () Bool)

(assert (= bs!1834466 (and d!2156397 d!2156375)))

(assert (=> bs!1834466 (= lambda!388377 lambda!388360)))

(declare-fun bs!1834467 () Bool)

(assert (= bs!1834467 (and d!2156397 b!6864001)))

(assert (=> bs!1834467 (= lambda!388377 lambda!388340)))

(declare-fun bs!1834468 () Bool)

(assert (= bs!1834468 (and d!2156397 d!2156385)))

(assert (=> bs!1834468 (= lambda!388377 lambda!388369)))

(declare-fun bs!1834469 () Bool)

(assert (= bs!1834469 (and d!2156397 d!2156395)))

(assert (=> bs!1834469 (not (= lambda!388377 lambda!388372))))

(declare-fun lambda!388378 () Int)

(assert (=> bs!1834466 (not (= lambda!388378 lambda!388360))))

(assert (=> bs!1834467 (not (= lambda!388378 lambda!388340))))

(assert (=> bs!1834468 (not (= lambda!388378 lambda!388369))))

(assert (=> bs!1834469 (not (= lambda!388378 lambda!388372))))

(assert (=> bs!1834465 (= lambda!388378 lambda!388338)))

(declare-fun bs!1834470 () Bool)

(assert (= bs!1834470 d!2156397))

(assert (=> bs!1834470 (not (= lambda!388378 lambda!388377))))

(assert (=> d!2156397 true))

(assert (=> d!2156397 (= (matchR!8877 r!7292 s!2326) (exists!2820 lt!2457732 lambda!388378))))

(declare-fun lt!2457798 () Unit!160153)

(declare-fun choose!51159 (Regex!16694 List!66381 List!66383) Unit!160153)

(assert (=> d!2156397 (= lt!2457798 (choose!51159 r!7292 lt!2457732 s!2326))))

(assert (=> d!2156397 (forall!15885 lt!2457732 lambda!388377)))

(assert (=> d!2156397 (= (matchRGenUnionSpec!333 r!7292 lt!2457732 s!2326) lt!2457798)))

(assert (=> bs!1834470 m!7597052))

(declare-fun m!7597232 () Bool)

(assert (=> bs!1834470 m!7597232))

(declare-fun m!7597234 () Bool)

(assert (=> bs!1834470 m!7597234))

(declare-fun m!7597236 () Bool)

(assert (=> bs!1834470 m!7597236))

(assert (=> b!6863998 d!2156397))

(declare-fun bs!1834471 () Bool)

(declare-fun d!2156401 () Bool)

(assert (= bs!1834471 (and d!2156401 d!2156397)))

(declare-fun lambda!388381 () Int)

(assert (=> bs!1834471 (not (= lambda!388381 lambda!388378))))

(declare-fun bs!1834472 () Bool)

(assert (= bs!1834472 (and d!2156401 d!2156375)))

(assert (=> bs!1834472 (= lambda!388381 lambda!388360)))

(declare-fun bs!1834473 () Bool)

(assert (= bs!1834473 (and d!2156401 b!6864001)))

(assert (=> bs!1834473 (= lambda!388381 lambda!388340)))

(declare-fun bs!1834474 () Bool)

(assert (= bs!1834474 (and d!2156401 d!2156385)))

(assert (=> bs!1834474 (= lambda!388381 lambda!388369)))

(declare-fun bs!1834475 () Bool)

(assert (= bs!1834475 (and d!2156401 d!2156395)))

(assert (=> bs!1834475 (not (= lambda!388381 lambda!388372))))

(declare-fun bs!1834476 () Bool)

(assert (= bs!1834476 (and d!2156401 b!6863998)))

(assert (=> bs!1834476 (not (= lambda!388381 lambda!388338))))

(assert (=> bs!1834471 (= lambda!388381 lambda!388377)))

(declare-fun lt!2457803 () List!66381)

(assert (=> d!2156401 (forall!15885 lt!2457803 lambda!388381)))

(declare-fun e!4138110 () List!66381)

(assert (=> d!2156401 (= lt!2457803 e!4138110)))

(declare-fun c!1277567 () Bool)

(assert (=> d!2156401 (= c!1277567 (is-Cons!66258 zl!343))))

(assert (=> d!2156401 (= (unfocusZipperList!2111 zl!343) lt!2457803)))

(declare-fun b!6864217 () Bool)

(assert (=> b!6864217 (= e!4138110 (Cons!66257 (generalisedConcat!2282 (exprs!6578 (h!72706 zl!343))) (unfocusZipperList!2111 (t!380125 zl!343))))))

(declare-fun b!6864218 () Bool)

(assert (=> b!6864218 (= e!4138110 Nil!66257)))

(assert (= (and d!2156401 c!1277567) b!6864217))

(assert (= (and d!2156401 (not c!1277567)) b!6864218))

(declare-fun m!7597246 () Bool)

(assert (=> d!2156401 m!7597246))

(declare-fun m!7597248 () Bool)

(assert (=> b!6864217 m!7597248))

(declare-fun m!7597250 () Bool)

(assert (=> b!6864217 m!7597250))

(assert (=> b!6863998 d!2156401))

(declare-fun b!6864260 () Bool)

(assert (=> b!6864260 true))

(assert (=> b!6864260 true))

(declare-fun bs!1834478 () Bool)

(declare-fun b!6864261 () Bool)

(assert (= bs!1834478 (and b!6864261 b!6864260)))

(declare-fun lambda!388387 () Int)

(declare-fun lambda!388386 () Int)

(assert (=> bs!1834478 (not (= lambda!388387 lambda!388386))))

(assert (=> b!6864261 true))

(assert (=> b!6864261 true))

(declare-fun b!6864257 () Bool)

(declare-fun e!4138138 () Bool)

(declare-fun e!4138132 () Bool)

(assert (=> b!6864257 (= e!4138138 e!4138132)))

(declare-fun c!1277583 () Bool)

(assert (=> b!6864257 (= c!1277583 (is-Star!16694 r!7292))))

(declare-fun b!6864258 () Bool)

(declare-fun e!4138134 () Bool)

(declare-fun e!4138133 () Bool)

(assert (=> b!6864258 (= e!4138134 e!4138133)))

(declare-fun res!2800430 () Bool)

(assert (=> b!6864258 (= res!2800430 (not (is-EmptyLang!16694 r!7292)))))

(assert (=> b!6864258 (=> (not res!2800430) (not e!4138133))))

(declare-fun b!6864259 () Bool)

(declare-fun c!1277582 () Bool)

(assert (=> b!6864259 (= c!1277582 (is-Union!16694 r!7292))))

(declare-fun e!4138137 () Bool)

(assert (=> b!6864259 (= e!4138137 e!4138138)))

(declare-fun e!4138135 () Bool)

(declare-fun call!625155 () Bool)

(assert (=> b!6864260 (= e!4138135 call!625155)))

(assert (=> b!6864261 (= e!4138132 call!625155)))

(declare-fun b!6864262 () Bool)

(declare-fun e!4138136 () Bool)

(assert (=> b!6864262 (= e!4138138 e!4138136)))

(declare-fun res!2800428 () Bool)

(assert (=> b!6864262 (= res!2800428 (matchRSpec!3795 (regOne!33901 r!7292) s!2326))))

(assert (=> b!6864262 (=> res!2800428 e!4138136)))

(declare-fun bm!625149 () Bool)

(declare-fun call!625154 () Bool)

(assert (=> bm!625149 (= call!625154 (isEmpty!38620 s!2326))))

(declare-fun d!2156407 () Bool)

(declare-fun c!1277584 () Bool)

(assert (=> d!2156407 (= c!1277584 (is-EmptyExpr!16694 r!7292))))

(assert (=> d!2156407 (= (matchRSpec!3795 r!7292 s!2326) e!4138134)))

(declare-fun b!6864263 () Bool)

(declare-fun c!1277581 () Bool)

(assert (=> b!6864263 (= c!1277581 (is-ElementMatch!16694 r!7292))))

(assert (=> b!6864263 (= e!4138133 e!4138137)))

(declare-fun b!6864264 () Bool)

(assert (=> b!6864264 (= e!4138137 (= s!2326 (Cons!66259 (c!1277522 r!7292) Nil!66259)))))

(declare-fun b!6864265 () Bool)

(declare-fun res!2800429 () Bool)

(assert (=> b!6864265 (=> res!2800429 e!4138135)))

(assert (=> b!6864265 (= res!2800429 call!625154)))

(assert (=> b!6864265 (= e!4138132 e!4138135)))

(declare-fun bm!625150 () Bool)

(declare-fun Exists!3754 (Int) Bool)

(assert (=> bm!625150 (= call!625155 (Exists!3754 (ite c!1277583 lambda!388386 lambda!388387)))))

(declare-fun b!6864266 () Bool)

(assert (=> b!6864266 (= e!4138136 (matchRSpec!3795 (regTwo!33901 r!7292) s!2326))))

(declare-fun b!6864267 () Bool)

(assert (=> b!6864267 (= e!4138134 call!625154)))

(assert (= (and d!2156407 c!1277584) b!6864267))

(assert (= (and d!2156407 (not c!1277584)) b!6864258))

(assert (= (and b!6864258 res!2800430) b!6864263))

(assert (= (and b!6864263 c!1277581) b!6864264))

(assert (= (and b!6864263 (not c!1277581)) b!6864259))

(assert (= (and b!6864259 c!1277582) b!6864262))

(assert (= (and b!6864259 (not c!1277582)) b!6864257))

(assert (= (and b!6864262 (not res!2800428)) b!6864266))

(assert (= (and b!6864257 c!1277583) b!6864265))

(assert (= (and b!6864257 (not c!1277583)) b!6864261))

(assert (= (and b!6864265 (not res!2800429)) b!6864260))

(assert (= (or b!6864260 b!6864261) bm!625150))

(assert (= (or b!6864267 b!6864265) bm!625149))

(declare-fun m!7597260 () Bool)

(assert (=> b!6864262 m!7597260))

(assert (=> bm!625149 m!7597206))

(declare-fun m!7597262 () Bool)

(assert (=> bm!625150 m!7597262))

(declare-fun m!7597264 () Bool)

(assert (=> b!6864266 m!7597264))

(assert (=> b!6863999 d!2156407))

(declare-fun b!6864302 () Bool)

(declare-fun res!2800452 () Bool)

(declare-fun e!4138154 () Bool)

(assert (=> b!6864302 (=> (not res!2800452) (not e!4138154))))

(declare-fun call!625158 () Bool)

(assert (=> b!6864302 (= res!2800452 (not call!625158))))

(declare-fun b!6864303 () Bool)

(declare-fun res!2800447 () Bool)

(declare-fun e!4138153 () Bool)

(assert (=> b!6864303 (=> res!2800447 e!4138153)))

(assert (=> b!6864303 (= res!2800447 (not (isEmpty!38620 (tail!12830 s!2326))))))

(declare-fun b!6864304 () Bool)

(declare-fun res!2800449 () Bool)

(declare-fun e!4138155 () Bool)

(assert (=> b!6864304 (=> res!2800449 e!4138155)))

(assert (=> b!6864304 (= res!2800449 (not (is-ElementMatch!16694 r!7292)))))

(declare-fun e!4138156 () Bool)

(assert (=> b!6864304 (= e!4138156 e!4138155)))

(declare-fun b!6864305 () Bool)

(declare-fun e!4138159 () Bool)

(assert (=> b!6864305 (= e!4138155 e!4138159)))

(declare-fun res!2800451 () Bool)

(assert (=> b!6864305 (=> (not res!2800451) (not e!4138159))))

(declare-fun lt!2457812 () Bool)

(assert (=> b!6864305 (= res!2800451 (not lt!2457812))))

(declare-fun d!2156415 () Bool)

(declare-fun e!4138158 () Bool)

(assert (=> d!2156415 e!4138158))

(declare-fun c!1277593 () Bool)

(assert (=> d!2156415 (= c!1277593 (is-EmptyExpr!16694 r!7292))))

(declare-fun e!4138157 () Bool)

(assert (=> d!2156415 (= lt!2457812 e!4138157)))

(declare-fun c!1277591 () Bool)

(assert (=> d!2156415 (= c!1277591 (isEmpty!38620 s!2326))))

(assert (=> d!2156415 (validRegex!8430 r!7292)))

(assert (=> d!2156415 (= (matchR!8877 r!7292 s!2326) lt!2457812)))

(declare-fun b!6864306 () Bool)

(assert (=> b!6864306 (= e!4138158 (= lt!2457812 call!625158))))

(declare-fun b!6864307 () Bool)

(declare-fun res!2800448 () Bool)

(assert (=> b!6864307 (=> res!2800448 e!4138155)))

(assert (=> b!6864307 (= res!2800448 e!4138154)))

(declare-fun res!2800454 () Bool)

(assert (=> b!6864307 (=> (not res!2800454) (not e!4138154))))

(assert (=> b!6864307 (= res!2800454 lt!2457812)))

(declare-fun b!6864308 () Bool)

(assert (=> b!6864308 (= e!4138156 (not lt!2457812))))

(declare-fun bm!625153 () Bool)

(assert (=> bm!625153 (= call!625158 (isEmpty!38620 s!2326))))

(declare-fun b!6864309 () Bool)

(assert (=> b!6864309 (= e!4138157 (nullable!6655 r!7292))))

(declare-fun b!6864310 () Bool)

(assert (=> b!6864310 (= e!4138158 e!4138156)))

(declare-fun c!1277592 () Bool)

(assert (=> b!6864310 (= c!1277592 (is-EmptyLang!16694 r!7292))))

(declare-fun b!6864311 () Bool)

(assert (=> b!6864311 (= e!4138159 e!4138153)))

(declare-fun res!2800450 () Bool)

(assert (=> b!6864311 (=> res!2800450 e!4138153)))

(assert (=> b!6864311 (= res!2800450 call!625158)))

(declare-fun b!6864312 () Bool)

(assert (=> b!6864312 (= e!4138153 (not (= (head!13772 s!2326) (c!1277522 r!7292))))))

(declare-fun b!6864313 () Bool)

(assert (=> b!6864313 (= e!4138154 (= (head!13772 s!2326) (c!1277522 r!7292)))))

(declare-fun b!6864314 () Bool)

(declare-fun derivativeStep!5337 (Regex!16694 C!33658) Regex!16694)

(assert (=> b!6864314 (= e!4138157 (matchR!8877 (derivativeStep!5337 r!7292 (head!13772 s!2326)) (tail!12830 s!2326)))))

(declare-fun b!6864315 () Bool)

(declare-fun res!2800453 () Bool)

(assert (=> b!6864315 (=> (not res!2800453) (not e!4138154))))

(assert (=> b!6864315 (= res!2800453 (isEmpty!38620 (tail!12830 s!2326)))))

(assert (= (and d!2156415 c!1277591) b!6864309))

(assert (= (and d!2156415 (not c!1277591)) b!6864314))

(assert (= (and d!2156415 c!1277593) b!6864306))

(assert (= (and d!2156415 (not c!1277593)) b!6864310))

(assert (= (and b!6864310 c!1277592) b!6864308))

(assert (= (and b!6864310 (not c!1277592)) b!6864304))

(assert (= (and b!6864304 (not res!2800449)) b!6864307))

(assert (= (and b!6864307 res!2800454) b!6864302))

(assert (= (and b!6864302 res!2800452) b!6864315))

(assert (= (and b!6864315 res!2800453) b!6864313))

(assert (= (and b!6864307 (not res!2800448)) b!6864305))

(assert (= (and b!6864305 res!2800451) b!6864311))

(assert (= (and b!6864311 (not res!2800450)) b!6864303))

(assert (= (and b!6864303 (not res!2800447)) b!6864312))

(assert (= (or b!6864306 b!6864302 b!6864311) bm!625153))

(assert (=> b!6864313 m!7597210))

(assert (=> bm!625153 m!7597206))

(assert (=> b!6864312 m!7597210))

(assert (=> b!6864314 m!7597210))

(assert (=> b!6864314 m!7597210))

(declare-fun m!7597268 () Bool)

(assert (=> b!6864314 m!7597268))

(assert (=> b!6864314 m!7597214))

(assert (=> b!6864314 m!7597268))

(assert (=> b!6864314 m!7597214))

(declare-fun m!7597270 () Bool)

(assert (=> b!6864314 m!7597270))

(assert (=> d!2156415 m!7597206))

(assert (=> d!2156415 m!7597042))

(assert (=> b!6864315 m!7597214))

(assert (=> b!6864315 m!7597214))

(declare-fun m!7597272 () Bool)

(assert (=> b!6864315 m!7597272))

(declare-fun m!7597274 () Bool)

(assert (=> b!6864309 m!7597274))

(assert (=> b!6864303 m!7597214))

(assert (=> b!6864303 m!7597214))

(assert (=> b!6864303 m!7597272))

(assert (=> b!6863999 d!2156415))

(declare-fun d!2156419 () Bool)

(assert (=> d!2156419 (= (matchR!8877 r!7292 s!2326) (matchRSpec!3795 r!7292 s!2326))))

(declare-fun lt!2457817 () Unit!160153)

(declare-fun choose!51160 (Regex!16694 List!66383) Unit!160153)

(assert (=> d!2156419 (= lt!2457817 (choose!51160 r!7292 s!2326))))

(assert (=> d!2156419 (validRegex!8430 r!7292)))

(assert (=> d!2156419 (= (mainMatchTheorem!3795 r!7292 s!2326) lt!2457817)))

(declare-fun bs!1834481 () Bool)

(assert (= bs!1834481 d!2156419))

(assert (=> bs!1834481 m!7597052))

(assert (=> bs!1834481 m!7597050))

(declare-fun m!7597276 () Bool)

(assert (=> bs!1834481 m!7597276))

(assert (=> bs!1834481 m!7597042))

(assert (=> b!6863999 d!2156419))

(declare-fun d!2156421 () Bool)

(declare-fun e!4138160 () Bool)

(assert (=> d!2156421 e!4138160))

(declare-fun res!2800455 () Bool)

(assert (=> d!2156421 (=> (not res!2800455) (not e!4138160))))

(declare-fun lt!2457818 () List!66382)

(assert (=> d!2156421 (= res!2800455 (noDuplicate!2458 lt!2457818))))

(assert (=> d!2156421 (= lt!2457818 (choose!51156 z!1189))))

(assert (=> d!2156421 (= (toList!10478 z!1189) lt!2457818)))

(declare-fun b!6864316 () Bool)

(assert (=> b!6864316 (= e!4138160 (= (content!13007 lt!2457818) z!1189))))

(assert (= (and d!2156421 res!2800455) b!6864316))

(declare-fun m!7597278 () Bool)

(assert (=> d!2156421 m!7597278))

(declare-fun m!7597280 () Bool)

(assert (=> d!2156421 m!7597280))

(declare-fun m!7597282 () Bool)

(assert (=> b!6864316 m!7597282))

(assert (=> b!6863995 d!2156421))

(declare-fun d!2156423 () Bool)

(declare-fun lt!2457822 () Int)

(assert (=> d!2156423 (>= lt!2457822 0)))

(declare-fun e!4138163 () Int)

(assert (=> d!2156423 (= lt!2457822 e!4138163)))

(declare-fun c!1277598 () Bool)

(assert (=> d!2156423 (= c!1277598 (is-Cons!66258 lt!2457734))))

(assert (=> d!2156423 (= (zipperDepthTotal!443 lt!2457734) lt!2457822)))

(declare-fun b!6864321 () Bool)

(assert (=> b!6864321 (= e!4138163 (+ (contextDepthTotal!415 (h!72706 lt!2457734)) (zipperDepthTotal!443 (t!380125 lt!2457734))))))

(declare-fun b!6864322 () Bool)

(assert (=> b!6864322 (= e!4138163 0)))

(assert (= (and d!2156423 c!1277598) b!6864321))

(assert (= (and d!2156423 (not c!1277598)) b!6864322))

(declare-fun m!7597290 () Bool)

(assert (=> b!6864321 m!7597290))

(declare-fun m!7597292 () Bool)

(assert (=> b!6864321 m!7597292))

(assert (=> b!6864005 d!2156423))

(declare-fun d!2156425 () Bool)

(declare-fun lt!2457823 () Int)

(assert (=> d!2156425 (>= lt!2457823 0)))

(declare-fun e!4138164 () Int)

(assert (=> d!2156425 (= lt!2457823 e!4138164)))

(declare-fun c!1277599 () Bool)

(assert (=> d!2156425 (= c!1277599 (is-Cons!66258 zl!343))))

(assert (=> d!2156425 (= (zipperDepthTotal!443 zl!343) lt!2457823)))

(declare-fun b!6864323 () Bool)

(assert (=> b!6864323 (= e!4138164 (+ (contextDepthTotal!415 (h!72706 zl!343)) (zipperDepthTotal!443 (t!380125 zl!343))))))

(declare-fun b!6864324 () Bool)

(assert (=> b!6864324 (= e!4138164 0)))

(assert (= (and d!2156425 c!1277599) b!6864323))

(assert (= (and d!2156425 (not c!1277599)) b!6864324))

(declare-fun m!7597296 () Bool)

(assert (=> b!6864323 m!7597296))

(declare-fun m!7597298 () Bool)

(assert (=> b!6864323 m!7597298))

(assert (=> b!6864005 d!2156425))

(declare-fun d!2156429 () Bool)

(declare-fun lt!2457826 () Int)

(assert (=> d!2156429 (>= lt!2457826 0)))

(declare-fun e!4138167 () Int)

(assert (=> d!2156429 (= lt!2457826 e!4138167)))

(declare-fun c!1277603 () Bool)

(assert (=> d!2156429 (= c!1277603 (is-Cons!66257 (exprs!6578 lt!2457736)))))

(assert (=> d!2156429 (= (contextDepthTotal!415 lt!2457736) lt!2457826)))

(declare-fun b!6864329 () Bool)

(declare-fun regexDepthTotal!260 (Regex!16694) Int)

(assert (=> b!6864329 (= e!4138167 (+ (regexDepthTotal!260 (h!72705 (exprs!6578 lt!2457736))) (contextDepthTotal!415 (Context!12157 (t!380124 (exprs!6578 lt!2457736))))))))

(declare-fun b!6864330 () Bool)

(assert (=> b!6864330 (= e!4138167 1)))

(assert (= (and d!2156429 c!1277603) b!6864329))

(assert (= (and d!2156429 (not c!1277603)) b!6864330))

(declare-fun m!7597300 () Bool)

(assert (=> b!6864329 m!7597300))

(declare-fun m!7597302 () Bool)

(assert (=> b!6864329 m!7597302))

(assert (=> b!6864005 d!2156429))

(declare-fun d!2156431 () Bool)

(assert (=> d!2156431 (< (contextDepthTotal!415 lt!2457736) (zipperDepthTotal!443 zl!343))))

(declare-fun lt!2457829 () Unit!160153)

(declare-fun choose!51161 (List!66382 Context!12156) Unit!160153)

(assert (=> d!2156431 (= lt!2457829 (choose!51161 zl!343 lt!2457736))))

(assert (=> d!2156431 (contains!20352 zl!343 lt!2457736)))

(assert (=> d!2156431 (= (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!47 zl!343 lt!2457736) lt!2457829)))

(declare-fun bs!1834485 () Bool)

(assert (= bs!1834485 d!2156431))

(assert (=> bs!1834485 m!7597068))

(assert (=> bs!1834485 m!7597066))

(declare-fun m!7597304 () Bool)

(assert (=> bs!1834485 m!7597304))

(declare-fun m!7597306 () Bool)

(assert (=> bs!1834485 m!7597306))

(assert (=> b!6864005 d!2156431))

(assert (=> b!6863996 d!2156395))

(declare-fun d!2156433 () Bool)

(declare-fun lt!2457832 () Regex!16694)

(assert (=> d!2156433 (validRegex!8430 lt!2457832)))

(declare-fun generalisedUnion!2529 (List!66381) Regex!16694)

(assert (=> d!2156433 (= lt!2457832 (generalisedUnion!2529 (unfocusZipperList!2111 zl!343)))))

(assert (=> d!2156433 (= (unfocusZipper!2436 zl!343) lt!2457832)))

(declare-fun bs!1834486 () Bool)

(assert (= bs!1834486 d!2156433))

(declare-fun m!7597308 () Bool)

(assert (=> bs!1834486 m!7597308))

(assert (=> bs!1834486 m!7597036))

(assert (=> bs!1834486 m!7597036))

(declare-fun m!7597310 () Bool)

(assert (=> bs!1834486 m!7597310))

(assert (=> b!6864015 d!2156433))

(assert (=> b!6864013 d!2156393))

(declare-fun bs!1834487 () Bool)

(declare-fun d!2156435 () Bool)

(assert (= bs!1834487 (and d!2156435 d!2156397)))

(declare-fun lambda!388396 () Int)

(assert (=> bs!1834487 (not (= lambda!388396 lambda!388378))))

(declare-fun bs!1834488 () Bool)

(assert (= bs!1834488 (and d!2156435 d!2156375)))

(assert (=> bs!1834488 (= lambda!388396 lambda!388360)))

(declare-fun bs!1834489 () Bool)

(assert (= bs!1834489 (and d!2156435 b!6864001)))

(assert (=> bs!1834489 (= lambda!388396 lambda!388340)))

(declare-fun bs!1834490 () Bool)

(assert (= bs!1834490 (and d!2156435 d!2156385)))

(assert (=> bs!1834490 (= lambda!388396 lambda!388369)))

(declare-fun bs!1834491 () Bool)

(assert (= bs!1834491 (and d!2156435 d!2156401)))

(assert (=> bs!1834491 (= lambda!388396 lambda!388381)))

(declare-fun bs!1834492 () Bool)

(assert (= bs!1834492 (and d!2156435 d!2156395)))

(assert (=> bs!1834492 (not (= lambda!388396 lambda!388372))))

(declare-fun bs!1834493 () Bool)

(assert (= bs!1834493 (and d!2156435 b!6863998)))

(assert (=> bs!1834493 (not (= lambda!388396 lambda!388338))))

(assert (=> bs!1834487 (= lambda!388396 lambda!388377)))

(assert (=> d!2156435 (= (inv!84983 (h!72706 zl!343)) (forall!15885 (exprs!6578 (h!72706 zl!343)) lambda!388396))))

(declare-fun bs!1834494 () Bool)

(assert (= bs!1834494 d!2156435))

(declare-fun m!7597312 () Bool)

(assert (=> bs!1834494 m!7597312))

(assert (=> b!6863994 d!2156435))

(declare-fun bs!1834495 () Bool)

(declare-fun d!2156437 () Bool)

(assert (= bs!1834495 (and d!2156437 d!2156397)))

(declare-fun lambda!388397 () Int)

(assert (=> bs!1834495 (not (= lambda!388397 lambda!388378))))

(declare-fun bs!1834496 () Bool)

(assert (= bs!1834496 (and d!2156437 d!2156375)))

(assert (=> bs!1834496 (= lambda!388397 lambda!388360)))

(declare-fun bs!1834497 () Bool)

(assert (= bs!1834497 (and d!2156437 d!2156435)))

(assert (=> bs!1834497 (= lambda!388397 lambda!388396)))

(declare-fun bs!1834498 () Bool)

(assert (= bs!1834498 (and d!2156437 b!6864001)))

(assert (=> bs!1834498 (= lambda!388397 lambda!388340)))

(declare-fun bs!1834499 () Bool)

(assert (= bs!1834499 (and d!2156437 d!2156385)))

(assert (=> bs!1834499 (= lambda!388397 lambda!388369)))

(declare-fun bs!1834500 () Bool)

(assert (= bs!1834500 (and d!2156437 d!2156401)))

(assert (=> bs!1834500 (= lambda!388397 lambda!388381)))

(declare-fun bs!1834501 () Bool)

(assert (= bs!1834501 (and d!2156437 d!2156395)))

(assert (=> bs!1834501 (not (= lambda!388397 lambda!388372))))

(declare-fun bs!1834502 () Bool)

(assert (= bs!1834502 (and d!2156437 b!6863998)))

(assert (=> bs!1834502 (not (= lambda!388397 lambda!388338))))

(assert (=> bs!1834495 (= lambda!388397 lambda!388377)))

(assert (=> d!2156437 (= (inv!84983 setElem!47206) (forall!15885 (exprs!6578 setElem!47206) lambda!388397))))

(declare-fun bs!1834503 () Bool)

(assert (= bs!1834503 d!2156437))

(declare-fun m!7597314 () Bool)

(assert (=> bs!1834503 m!7597314))

(assert (=> setNonEmpty!47206 d!2156437))

(declare-fun b!6864361 () Bool)

(declare-fun e!4138184 () Bool)

(declare-fun tp!1883390 () Bool)

(assert (=> b!6864361 (= e!4138184 tp!1883390)))

(declare-fun b!6864359 () Bool)

(assert (=> b!6864359 (= e!4138184 tp_is_empty!42641)))

(assert (=> b!6864004 (= tp!1883345 e!4138184)))

(declare-fun b!6864362 () Bool)

(declare-fun tp!1883386 () Bool)

(declare-fun tp!1883387 () Bool)

(assert (=> b!6864362 (= e!4138184 (and tp!1883386 tp!1883387))))

(declare-fun b!6864360 () Bool)

(declare-fun tp!1883388 () Bool)

(declare-fun tp!1883389 () Bool)

(assert (=> b!6864360 (= e!4138184 (and tp!1883388 tp!1883389))))

(assert (= (and b!6864004 (is-ElementMatch!16694 (regOne!33900 r!7292))) b!6864359))

(assert (= (and b!6864004 (is-Concat!25539 (regOne!33900 r!7292))) b!6864360))

(assert (= (and b!6864004 (is-Star!16694 (regOne!33900 r!7292))) b!6864361))

(assert (= (and b!6864004 (is-Union!16694 (regOne!33900 r!7292))) b!6864362))

(declare-fun b!6864365 () Bool)

(declare-fun e!4138185 () Bool)

(declare-fun tp!1883395 () Bool)

(assert (=> b!6864365 (= e!4138185 tp!1883395)))

(declare-fun b!6864363 () Bool)

(assert (=> b!6864363 (= e!4138185 tp_is_empty!42641)))

(assert (=> b!6864004 (= tp!1883340 e!4138185)))

(declare-fun b!6864366 () Bool)

(declare-fun tp!1883391 () Bool)

(declare-fun tp!1883392 () Bool)

(assert (=> b!6864366 (= e!4138185 (and tp!1883391 tp!1883392))))

(declare-fun b!6864364 () Bool)

(declare-fun tp!1883393 () Bool)

(declare-fun tp!1883394 () Bool)

(assert (=> b!6864364 (= e!4138185 (and tp!1883393 tp!1883394))))

(assert (= (and b!6864004 (is-ElementMatch!16694 (regTwo!33900 r!7292))) b!6864363))

(assert (= (and b!6864004 (is-Concat!25539 (regTwo!33900 r!7292))) b!6864364))

(assert (= (and b!6864004 (is-Star!16694 (regTwo!33900 r!7292))) b!6864365))

(assert (= (and b!6864004 (is-Union!16694 (regTwo!33900 r!7292))) b!6864366))

(declare-fun b!6864371 () Bool)

(declare-fun e!4138188 () Bool)

(declare-fun tp!1883398 () Bool)

(assert (=> b!6864371 (= e!4138188 (and tp_is_empty!42641 tp!1883398))))

(assert (=> b!6864014 (= tp!1883337 e!4138188)))

(assert (= (and b!6864014 (is-Cons!66259 (t!380126 s!2326))) b!6864371))

(declare-fun b!6864374 () Bool)

(declare-fun e!4138189 () Bool)

(declare-fun tp!1883403 () Bool)

(assert (=> b!6864374 (= e!4138189 tp!1883403)))

(declare-fun b!6864372 () Bool)

(assert (=> b!6864372 (= e!4138189 tp_is_empty!42641)))

(assert (=> b!6864012 (= tp!1883343 e!4138189)))

(declare-fun b!6864375 () Bool)

(declare-fun tp!1883399 () Bool)

(declare-fun tp!1883400 () Bool)

(assert (=> b!6864375 (= e!4138189 (and tp!1883399 tp!1883400))))

(declare-fun b!6864373 () Bool)

(declare-fun tp!1883401 () Bool)

(declare-fun tp!1883402 () Bool)

(assert (=> b!6864373 (= e!4138189 (and tp!1883401 tp!1883402))))

(assert (= (and b!6864012 (is-ElementMatch!16694 (regOne!33901 r!7292))) b!6864372))

(assert (= (and b!6864012 (is-Concat!25539 (regOne!33901 r!7292))) b!6864373))

(assert (= (and b!6864012 (is-Star!16694 (regOne!33901 r!7292))) b!6864374))

(assert (= (and b!6864012 (is-Union!16694 (regOne!33901 r!7292))) b!6864375))

(declare-fun b!6864378 () Bool)

(declare-fun e!4138190 () Bool)

(declare-fun tp!1883408 () Bool)

(assert (=> b!6864378 (= e!4138190 tp!1883408)))

(declare-fun b!6864376 () Bool)

(assert (=> b!6864376 (= e!4138190 tp_is_empty!42641)))

(assert (=> b!6864012 (= tp!1883338 e!4138190)))

(declare-fun b!6864379 () Bool)

(declare-fun tp!1883404 () Bool)

(declare-fun tp!1883405 () Bool)

(assert (=> b!6864379 (= e!4138190 (and tp!1883404 tp!1883405))))

(declare-fun b!6864377 () Bool)

(declare-fun tp!1883406 () Bool)

(declare-fun tp!1883407 () Bool)

(assert (=> b!6864377 (= e!4138190 (and tp!1883406 tp!1883407))))

(assert (= (and b!6864012 (is-ElementMatch!16694 (regTwo!33901 r!7292))) b!6864376))

(assert (= (and b!6864012 (is-Concat!25539 (regTwo!33901 r!7292))) b!6864377))

(assert (= (and b!6864012 (is-Star!16694 (regTwo!33901 r!7292))) b!6864378))

(assert (= (and b!6864012 (is-Union!16694 (regTwo!33901 r!7292))) b!6864379))

(declare-fun b!6864384 () Bool)

(declare-fun e!4138193 () Bool)

(declare-fun tp!1883413 () Bool)

(declare-fun tp!1883414 () Bool)

(assert (=> b!6864384 (= e!4138193 (and tp!1883413 tp!1883414))))

(assert (=> b!6864008 (= tp!1883344 e!4138193)))

(assert (= (and b!6864008 (is-Cons!66257 (exprs!6578 setElem!47206))) b!6864384))

(declare-fun b!6864385 () Bool)

(declare-fun e!4138194 () Bool)

(declare-fun tp!1883415 () Bool)

(declare-fun tp!1883416 () Bool)

(assert (=> b!6864385 (= e!4138194 (and tp!1883415 tp!1883416))))

(assert (=> b!6864003 (= tp!1883339 e!4138194)))

(assert (= (and b!6864003 (is-Cons!66257 (exprs!6578 (h!72706 zl!343)))) b!6864385))

(declare-fun b!6864393 () Bool)

(declare-fun e!4138200 () Bool)

(declare-fun tp!1883421 () Bool)

(assert (=> b!6864393 (= e!4138200 tp!1883421)))

(declare-fun b!6864392 () Bool)

(declare-fun e!4138199 () Bool)

(declare-fun tp!1883422 () Bool)

(assert (=> b!6864392 (= e!4138199 (and (inv!84983 (h!72706 (t!380125 zl!343))) e!4138200 tp!1883422))))

(assert (=> b!6863994 (= tp!1883336 e!4138199)))

(assert (= b!6864392 b!6864393))

(assert (= (and b!6863994 (is-Cons!66258 (t!380125 zl!343))) b!6864392))

(declare-fun m!7597316 () Bool)

(assert (=> b!6864392 m!7597316))

(declare-fun condSetEmpty!47212 () Bool)

(assert (=> setNonEmpty!47206 (= condSetEmpty!47212 (= setRest!47206 (as set.empty (Set Context!12156))))))

(declare-fun setRes!47212 () Bool)

(assert (=> setNonEmpty!47206 (= tp!1883342 setRes!47212)))

(declare-fun setIsEmpty!47212 () Bool)

(assert (=> setIsEmpty!47212 setRes!47212))

(declare-fun setElem!47212 () Context!12156)

(declare-fun setNonEmpty!47212 () Bool)

(declare-fun tp!1883428 () Bool)

(declare-fun e!4138207 () Bool)

(assert (=> setNonEmpty!47212 (= setRes!47212 (and tp!1883428 (inv!84983 setElem!47212) e!4138207))))

(declare-fun setRest!47212 () (Set Context!12156))

(assert (=> setNonEmpty!47212 (= setRest!47206 (set.union (set.insert setElem!47212 (as set.empty (Set Context!12156))) setRest!47212))))

(declare-fun b!6864398 () Bool)

(declare-fun tp!1883427 () Bool)

(assert (=> b!6864398 (= e!4138207 tp!1883427)))

(assert (= (and setNonEmpty!47206 condSetEmpty!47212) setIsEmpty!47212))

(assert (= (and setNonEmpty!47206 (not condSetEmpty!47212)) setNonEmpty!47212))

(assert (= setNonEmpty!47212 b!6864398))

(declare-fun m!7597318 () Bool)

(assert (=> setNonEmpty!47212 m!7597318))

(declare-fun b!6864410 () Bool)

(declare-fun e!4138211 () Bool)

(declare-fun tp!1883433 () Bool)

(assert (=> b!6864410 (= e!4138211 tp!1883433)))

(declare-fun b!6864408 () Bool)

(assert (=> b!6864408 (= e!4138211 tp_is_empty!42641)))

(assert (=> b!6864009 (= tp!1883341 e!4138211)))

(declare-fun b!6864411 () Bool)

(declare-fun tp!1883429 () Bool)

(declare-fun tp!1883430 () Bool)

(assert (=> b!6864411 (= e!4138211 (and tp!1883429 tp!1883430))))

(declare-fun b!6864409 () Bool)

(declare-fun tp!1883431 () Bool)

(declare-fun tp!1883432 () Bool)

(assert (=> b!6864409 (= e!4138211 (and tp!1883431 tp!1883432))))

(assert (= (and b!6864009 (is-ElementMatch!16694 (reg!17023 r!7292))) b!6864408))

(assert (= (and b!6864009 (is-Concat!25539 (reg!17023 r!7292))) b!6864409))

(assert (= (and b!6864009 (is-Star!16694 (reg!17023 r!7292))) b!6864410))

(assert (= (and b!6864009 (is-Union!16694 (reg!17023 r!7292))) b!6864411))

(declare-fun b_lambda!259473 () Bool)

(assert (= b_lambda!259467 (or b!6864001 b_lambda!259473)))

(declare-fun bs!1834504 () Bool)

(declare-fun d!2156439 () Bool)

(assert (= bs!1834504 (and d!2156439 b!6864001)))

(assert (=> bs!1834504 (= (dynLambda!26518 lambda!388340 (h!72705 (exprs!6578 lt!2457736))) (validRegex!8430 (h!72705 (exprs!6578 lt!2457736))))))

(declare-fun m!7597320 () Bool)

(assert (=> bs!1834504 m!7597320))

(assert (=> b!6864169 d!2156439))

(declare-fun b_lambda!259475 () Bool)

(assert (= b_lambda!259471 (or b!6864011 b_lambda!259475)))

(declare-fun bs!1834505 () Bool)

(declare-fun d!2156441 () Bool)

(assert (= bs!1834505 (and d!2156441 b!6864011)))

(assert (=> bs!1834505 (= (dynLambda!26519 lambda!388339 (h!72706 zl!343)) (matchZipper!2660 (set.insert (h!72706 zl!343) (as set.empty (Set Context!12156))) s!2326))))

(declare-fun m!7597322 () Bool)

(assert (=> bs!1834505 m!7597322))

(assert (=> bs!1834505 m!7597322))

(declare-fun m!7597324 () Bool)

(assert (=> bs!1834505 m!7597324))

(assert (=> b!6864188 d!2156441))

(declare-fun b_lambda!259477 () Bool)

(assert (= b_lambda!259469 (or b!6864011 b_lambda!259477)))

(declare-fun bs!1834506 () Bool)

(declare-fun d!2156443 () Bool)

(assert (= bs!1834506 (and d!2156443 b!6864011)))

(assert (=> bs!1834506 (= (dynLambda!26519 lambda!388339 lt!2457793) (matchZipper!2660 (set.insert lt!2457793 (as set.empty (Set Context!12156))) s!2326))))

(declare-fun m!7597326 () Bool)

(assert (=> bs!1834506 m!7597326))

(assert (=> bs!1834506 m!7597326))

(declare-fun m!7597328 () Bool)

(assert (=> bs!1834506 m!7597328))

(assert (=> d!2156387 d!2156443))

(push 1)

(assert (not bm!625149))

(assert (not b!6864118))

(assert (not b!6864194))

(assert (not b!6864309))

(assert (not b!6864361))

(assert (not b!6864329))

(assert tp_is_empty!42641)

(assert (not b!6864360))

(assert (not b!6864323))

(assert (not b_lambda!259475))

(assert (not b!6864123))

(assert (not setNonEmpty!47212))

(assert (not b!6864315))

(assert (not d!2156379))

(assert (not d!2156437))

(assert (not b!6864379))

(assert (not b!6864313))

(assert (not b_lambda!259473))

(assert (not b!6864398))

(assert (not b!6864375))

(assert (not b!6864262))

(assert (not b!6864187))

(assert (not d!2156401))

(assert (not b!6864316))

(assert (not d!2156421))

(assert (not b!6864384))

(assert (not b!6864377))

(assert (not d!2156415))

(assert (not b!6864374))

(assert (not b!6864266))

(assert (not b!6864153))

(assert (not d!2156391))

(assert (not b!6864385))

(assert (not b!6864364))

(assert (not b!6864186))

(assert (not b!6864303))

(assert (not d!2156435))

(assert (not bs!1834504))

(assert (not b!6864193))

(assert (not d!2156387))

(assert (not b!6864154))

(assert (not d!2156385))

(assert (not bm!625153))

(assert (not bm!625140))

(assert (not b_lambda!259477))

(assert (not bs!1834505))

(assert (not d!2156419))

(assert (not d!2156375))

(assert (not b!6864373))

(assert (not d!2156371))

(assert (not b!6864184))

(assert (not b!6864159))

(assert (not b!6864365))

(assert (not b!6864366))

(assert (not b!6864410))

(assert (not d!2156397))

(assert (not d!2156431))

(assert (not b!6864392))

(assert (not b!6864409))

(assert (not b!6864393))

(assert (not b!6864130))

(assert (not bs!1834506))

(assert (not b!6864158))

(assert (not d!2156433))

(assert (not d!2156395))

(assert (not b!6864314))

(assert (not b!6864217))

(assert (not bm!625143))

(assert (not bm!625144))

(assert (not b!6864321))

(assert (not b!6864362))

(assert (not b!6864156))

(assert (not b!6864157))

(assert (not b!6864312))

(assert (not b!6864378))

(assert (not b!6864411))

(assert (not b!6864371))

(assert (not d!2156377))

(assert (not bm!625150))

(assert (not bm!625141))

(assert (not b!6864170))

(assert (not b!6864155))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2156481 () Bool)

(declare-fun res!2800547 () Bool)

(declare-fun e!4138337 () Bool)

(assert (=> d!2156481 (=> res!2800547 e!4138337)))

(assert (=> d!2156481 (= res!2800547 (is-Nil!66258 lt!2457775))))

(assert (=> d!2156481 (= (noDuplicate!2458 lt!2457775) e!4138337)))

(declare-fun b!6864636 () Bool)

(declare-fun e!4138338 () Bool)

(assert (=> b!6864636 (= e!4138337 e!4138338)))

(declare-fun res!2800548 () Bool)

(assert (=> b!6864636 (=> (not res!2800548) (not e!4138338))))

(assert (=> b!6864636 (= res!2800548 (not (contains!20352 (t!380125 lt!2457775) (h!72706 lt!2457775))))))

(declare-fun b!6864637 () Bool)

(assert (=> b!6864637 (= e!4138338 (noDuplicate!2458 (t!380125 lt!2457775)))))

(assert (= (and d!2156481 (not res!2800547)) b!6864636))

(assert (= (and b!6864636 res!2800548) b!6864637))

(declare-fun m!7597440 () Bool)

(assert (=> b!6864636 m!7597440))

(declare-fun m!7597442 () Bool)

(assert (=> b!6864637 m!7597442))

(assert (=> d!2156371 d!2156481))

(declare-fun d!2156483 () Bool)

(declare-fun e!4138347 () Bool)

(assert (=> d!2156483 e!4138347))

(declare-fun res!2800553 () Bool)

(assert (=> d!2156483 (=> (not res!2800553) (not e!4138347))))

(declare-fun res!2800554 () List!66382)

(assert (=> d!2156483 (= res!2800553 (noDuplicate!2458 res!2800554))))

(declare-fun e!4138346 () Bool)

(assert (=> d!2156483 e!4138346))

(assert (=> d!2156483 (= (choose!51156 (set.insert lt!2457736 (as set.empty (Set Context!12156)))) res!2800554)))

(declare-fun b!6864645 () Bool)

(declare-fun e!4138345 () Bool)

(declare-fun tp!1883496 () Bool)

(assert (=> b!6864645 (= e!4138345 tp!1883496)))

(declare-fun tp!1883497 () Bool)

(declare-fun b!6864644 () Bool)

(assert (=> b!6864644 (= e!4138346 (and (inv!84983 (h!72706 res!2800554)) e!4138345 tp!1883497))))

(declare-fun b!6864646 () Bool)

(assert (=> b!6864646 (= e!4138347 (= (content!13007 res!2800554) (set.insert lt!2457736 (as set.empty (Set Context!12156)))))))

(assert (= b!6864644 b!6864645))

(assert (= (and d!2156483 (is-Cons!66258 res!2800554)) b!6864644))

(assert (= (and d!2156483 res!2800553) b!6864646))

(declare-fun m!7597444 () Bool)

(assert (=> d!2156483 m!7597444))

(declare-fun m!7597446 () Bool)

(assert (=> b!6864644 m!7597446))

(declare-fun m!7597448 () Bool)

(assert (=> b!6864646 m!7597448))

(assert (=> d!2156371 d!2156483))

(declare-fun b!6864647 () Bool)

(declare-fun res!2800557 () Bool)

(declare-fun e!4138348 () Bool)

(assert (=> b!6864647 (=> res!2800557 e!4138348)))

(assert (=> b!6864647 (= res!2800557 (not (is-Concat!25539 lt!2457778)))))

(declare-fun e!4138349 () Bool)

(assert (=> b!6864647 (= e!4138349 e!4138348)))

(declare-fun b!6864649 () Bool)

(declare-fun e!4138350 () Bool)

(assert (=> b!6864649 (= e!4138348 e!4138350)))

(declare-fun res!2800559 () Bool)

(assert (=> b!6864649 (=> (not res!2800559) (not e!4138350))))

(declare-fun call!625181 () Bool)

(assert (=> b!6864649 (= res!2800559 call!625181)))

(declare-fun b!6864650 () Bool)

(declare-fun res!2800558 () Bool)

(declare-fun e!4138354 () Bool)

(assert (=> b!6864650 (=> (not res!2800558) (not e!4138354))))

(assert (=> b!6864650 (= res!2800558 call!625181)))

(assert (=> b!6864650 (= e!4138349 e!4138354)))

(declare-fun b!6864651 () Bool)

(declare-fun e!4138351 () Bool)

(declare-fun call!625182 () Bool)

(assert (=> b!6864651 (= e!4138351 call!625182)))

(declare-fun b!6864652 () Bool)

(declare-fun e!4138353 () Bool)

(assert (=> b!6864652 (= e!4138353 e!4138349)))

(declare-fun c!1277657 () Bool)

(assert (=> b!6864652 (= c!1277657 (is-Union!16694 lt!2457778))))

(declare-fun bm!625175 () Bool)

(declare-fun call!625180 () Bool)

(assert (=> bm!625175 (= call!625180 call!625182)))

(declare-fun bm!625176 () Bool)

(declare-fun c!1277656 () Bool)

(assert (=> bm!625176 (= call!625182 (validRegex!8430 (ite c!1277656 (reg!17023 lt!2457778) (ite c!1277657 (regTwo!33901 lt!2457778) (regTwo!33900 lt!2457778)))))))

(declare-fun b!6864653 () Bool)

(assert (=> b!6864653 (= e!4138353 e!4138351)))

(declare-fun res!2800556 () Bool)

(assert (=> b!6864653 (= res!2800556 (not (nullable!6655 (reg!17023 lt!2457778))))))

(assert (=> b!6864653 (=> (not res!2800556) (not e!4138351))))

(declare-fun b!6864654 () Bool)

(declare-fun e!4138352 () Bool)

(assert (=> b!6864654 (= e!4138352 e!4138353)))

(assert (=> b!6864654 (= c!1277656 (is-Star!16694 lt!2457778))))

(declare-fun b!6864648 () Bool)

(assert (=> b!6864648 (= e!4138354 call!625180)))

(declare-fun d!2156485 () Bool)

(declare-fun res!2800555 () Bool)

(assert (=> d!2156485 (=> res!2800555 e!4138352)))

(assert (=> d!2156485 (= res!2800555 (is-ElementMatch!16694 lt!2457778))))

(assert (=> d!2156485 (= (validRegex!8430 lt!2457778) e!4138352)))

(declare-fun bm!625177 () Bool)

(assert (=> bm!625177 (= call!625181 (validRegex!8430 (ite c!1277657 (regOne!33901 lt!2457778) (regOne!33900 lt!2457778))))))

(declare-fun b!6864655 () Bool)

(assert (=> b!6864655 (= e!4138350 call!625180)))

(assert (= (and d!2156485 (not res!2800555)) b!6864654))

(assert (= (and b!6864654 c!1277656) b!6864653))

(assert (= (and b!6864654 (not c!1277656)) b!6864652))

(assert (= (and b!6864653 res!2800556) b!6864651))

(assert (= (and b!6864652 c!1277657) b!6864650))

(assert (= (and b!6864652 (not c!1277657)) b!6864647))

(assert (= (and b!6864650 res!2800558) b!6864648))

(assert (= (and b!6864647 (not res!2800557)) b!6864649))

(assert (= (and b!6864649 res!2800559) b!6864655))

(assert (= (or b!6864648 b!6864655) bm!625175))

(assert (= (or b!6864650 b!6864649) bm!625177))

(assert (= (or b!6864651 bm!625175) bm!625176))

(declare-fun m!7597450 () Bool)

(assert (=> bm!625176 m!7597450))

(declare-fun m!7597452 () Bool)

(assert (=> b!6864653 m!7597452))

(declare-fun m!7597454 () Bool)

(assert (=> bm!625177 m!7597454))

(assert (=> d!2156375 d!2156485))

(declare-fun d!2156487 () Bool)

(declare-fun res!2800560 () Bool)

(declare-fun e!4138355 () Bool)

(assert (=> d!2156487 (=> res!2800560 e!4138355)))

(assert (=> d!2156487 (= res!2800560 (is-Nil!66257 (exprs!6578 lt!2457736)))))

(assert (=> d!2156487 (= (forall!15885 (exprs!6578 lt!2457736) lambda!388360) e!4138355)))

(declare-fun b!6864656 () Bool)

(declare-fun e!4138356 () Bool)

(assert (=> b!6864656 (= e!4138355 e!4138356)))

(declare-fun res!2800561 () Bool)

(assert (=> b!6864656 (=> (not res!2800561) (not e!4138356))))

(assert (=> b!6864656 (= res!2800561 (dynLambda!26518 lambda!388360 (h!72705 (exprs!6578 lt!2457736))))))

(declare-fun b!6864657 () Bool)

(assert (=> b!6864657 (= e!4138356 (forall!15885 (t!380124 (exprs!6578 lt!2457736)) lambda!388360))))

(assert (= (and d!2156487 (not res!2800560)) b!6864656))

(assert (= (and b!6864656 res!2800561) b!6864657))

(declare-fun b_lambda!259491 () Bool)

(assert (=> (not b_lambda!259491) (not b!6864656)))

(declare-fun m!7597456 () Bool)

(assert (=> b!6864656 m!7597456))

(declare-fun m!7597458 () Bool)

(assert (=> b!6864657 m!7597458))

(assert (=> d!2156375 d!2156487))

(declare-fun bs!1834552 () Bool)

(declare-fun d!2156489 () Bool)

(assert (= bs!1834552 (and d!2156489 d!2156375)))

(declare-fun lambda!388426 () Int)

(assert (=> bs!1834552 (= lambda!388426 lambda!388360)))

(declare-fun bs!1834553 () Bool)

(assert (= bs!1834553 (and d!2156489 d!2156435)))

(assert (=> bs!1834553 (= lambda!388426 lambda!388396)))

(declare-fun bs!1834554 () Bool)

(assert (= bs!1834554 (and d!2156489 b!6864001)))

(assert (=> bs!1834554 (= lambda!388426 lambda!388340)))

(declare-fun bs!1834555 () Bool)

(assert (= bs!1834555 (and d!2156489 d!2156385)))

(assert (=> bs!1834555 (= lambda!388426 lambda!388369)))

(declare-fun bs!1834556 () Bool)

(assert (= bs!1834556 (and d!2156489 d!2156401)))

(assert (=> bs!1834556 (= lambda!388426 lambda!388381)))

(declare-fun bs!1834557 () Bool)

(assert (= bs!1834557 (and d!2156489 d!2156395)))

(assert (=> bs!1834557 (not (= lambda!388426 lambda!388372))))

(declare-fun bs!1834558 () Bool)

(assert (= bs!1834558 (and d!2156489 d!2156397)))

(assert (=> bs!1834558 (not (= lambda!388426 lambda!388378))))

(declare-fun bs!1834559 () Bool)

(assert (= bs!1834559 (and d!2156489 d!2156437)))

(assert (=> bs!1834559 (= lambda!388426 lambda!388397)))

(declare-fun bs!1834560 () Bool)

(assert (= bs!1834560 (and d!2156489 b!6863998)))

(assert (=> bs!1834560 (not (= lambda!388426 lambda!388338))))

(assert (=> bs!1834558 (= lambda!388426 lambda!388377)))

(assert (=> d!2156489 (= (inv!84983 (h!72706 (t!380125 zl!343))) (forall!15885 (exprs!6578 (h!72706 (t!380125 zl!343))) lambda!388426))))

(declare-fun bs!1834561 () Bool)

(assert (= bs!1834561 d!2156489))

(declare-fun m!7597460 () Bool)

(assert (=> bs!1834561 m!7597460))

(assert (=> b!6864392 d!2156489))

(declare-fun d!2156491 () Bool)

(declare-fun c!1277660 () Bool)

(assert (=> d!2156491 (= c!1277660 (is-Nil!66258 lt!2457775))))

(declare-fun e!4138359 () (Set Context!12156))

(assert (=> d!2156491 (= (content!13007 lt!2457775) e!4138359)))

(declare-fun b!6864662 () Bool)

(assert (=> b!6864662 (= e!4138359 (as set.empty (Set Context!12156)))))

(declare-fun b!6864663 () Bool)

(assert (=> b!6864663 (= e!4138359 (set.union (set.insert (h!72706 lt!2457775) (as set.empty (Set Context!12156))) (content!13007 (t!380125 lt!2457775))))))

(assert (= (and d!2156491 c!1277660) b!6864662))

(assert (= (and d!2156491 (not c!1277660)) b!6864663))

(declare-fun m!7597462 () Bool)

(assert (=> b!6864663 m!7597462))

(declare-fun m!7597464 () Bool)

(assert (=> b!6864663 m!7597464))

(assert (=> b!6864123 d!2156491))

(assert (=> d!2156397 d!2156415))

(declare-fun bs!1834562 () Bool)

(declare-fun d!2156493 () Bool)

(assert (= bs!1834562 (and d!2156493 d!2156375)))

(declare-fun lambda!388427 () Int)

(assert (=> bs!1834562 (not (= lambda!388427 lambda!388360))))

(declare-fun bs!1834563 () Bool)

(assert (= bs!1834563 (and d!2156493 d!2156435)))

(assert (=> bs!1834563 (not (= lambda!388427 lambda!388396))))

(declare-fun bs!1834564 () Bool)

(assert (= bs!1834564 (and d!2156493 b!6864001)))

(assert (=> bs!1834564 (not (= lambda!388427 lambda!388340))))

(declare-fun bs!1834565 () Bool)

(assert (= bs!1834565 (and d!2156493 d!2156385)))

(assert (=> bs!1834565 (not (= lambda!388427 lambda!388369))))

(declare-fun bs!1834566 () Bool)

(assert (= bs!1834566 (and d!2156493 d!2156401)))

(assert (=> bs!1834566 (not (= lambda!388427 lambda!388381))))

(declare-fun bs!1834567 () Bool)

(assert (= bs!1834567 (and d!2156493 d!2156397)))

(assert (=> bs!1834567 (not (= lambda!388427 lambda!388378))))

(declare-fun bs!1834568 () Bool)

(assert (= bs!1834568 (and d!2156493 d!2156437)))

(assert (=> bs!1834568 (not (= lambda!388427 lambda!388397))))

(declare-fun bs!1834569 () Bool)

(assert (= bs!1834569 (and d!2156493 b!6863998)))

(assert (=> bs!1834569 (not (= lambda!388427 lambda!388338))))

(assert (=> bs!1834567 (not (= lambda!388427 lambda!388377))))

(declare-fun bs!1834570 () Bool)

(assert (= bs!1834570 (and d!2156493 d!2156489)))

(assert (=> bs!1834570 (not (= lambda!388427 lambda!388426))))

(declare-fun bs!1834571 () Bool)

(assert (= bs!1834571 (and d!2156493 d!2156395)))

(assert (=> bs!1834571 (= (= lambda!388378 lambda!388338) (= lambda!388427 lambda!388372))))

(assert (=> d!2156493 true))

(assert (=> d!2156493 (< (dynLambda!26520 order!27719 lambda!388378) (dynLambda!26520 order!27719 lambda!388427))))

(assert (=> d!2156493 (= (exists!2820 lt!2457732 lambda!388378) (not (forall!15885 lt!2457732 lambda!388427)))))

(declare-fun bs!1834572 () Bool)

(assert (= bs!1834572 d!2156493))

(declare-fun m!7597466 () Bool)

(assert (=> bs!1834572 m!7597466))

(assert (=> d!2156397 d!2156493))

(declare-fun bs!1834573 () Bool)

(declare-fun d!2156495 () Bool)

(assert (= bs!1834573 (and d!2156495 d!2156375)))

(declare-fun lambda!388430 () Int)

(assert (=> bs!1834573 (not (= lambda!388430 lambda!388360))))

(declare-fun bs!1834574 () Bool)

(assert (= bs!1834574 (and d!2156495 d!2156435)))

(assert (=> bs!1834574 (not (= lambda!388430 lambda!388396))))

(declare-fun bs!1834575 () Bool)

(assert (= bs!1834575 (and d!2156495 b!6864001)))

(assert (=> bs!1834575 (not (= lambda!388430 lambda!388340))))

(declare-fun bs!1834576 () Bool)

(assert (= bs!1834576 (and d!2156495 d!2156385)))

(assert (=> bs!1834576 (not (= lambda!388430 lambda!388369))))

(declare-fun bs!1834577 () Bool)

(assert (= bs!1834577 (and d!2156495 d!2156401)))

(assert (=> bs!1834577 (not (= lambda!388430 lambda!388381))))

(declare-fun bs!1834578 () Bool)

(assert (= bs!1834578 (and d!2156495 d!2156493)))

(assert (=> bs!1834578 (not (= lambda!388430 lambda!388427))))

(declare-fun bs!1834579 () Bool)

(assert (= bs!1834579 (and d!2156495 d!2156397)))

(assert (=> bs!1834579 (= lambda!388430 lambda!388378)))

(declare-fun bs!1834580 () Bool)

(assert (= bs!1834580 (and d!2156495 d!2156437)))

(assert (=> bs!1834580 (not (= lambda!388430 lambda!388397))))

(declare-fun bs!1834581 () Bool)

(assert (= bs!1834581 (and d!2156495 b!6863998)))

(assert (=> bs!1834581 (= lambda!388430 lambda!388338)))

(assert (=> bs!1834579 (not (= lambda!388430 lambda!388377))))

(declare-fun bs!1834582 () Bool)

(assert (= bs!1834582 (and d!2156495 d!2156489)))

(assert (=> bs!1834582 (not (= lambda!388430 lambda!388426))))

(declare-fun bs!1834583 () Bool)

(assert (= bs!1834583 (and d!2156495 d!2156395)))

(assert (=> bs!1834583 (not (= lambda!388430 lambda!388372))))

(assert (=> d!2156495 true))

(assert (=> d!2156495 (= (matchR!8877 r!7292 s!2326) (exists!2820 lt!2457732 lambda!388430))))

(assert (=> d!2156495 true))

(declare-fun _$85!218 () Unit!160153)

(assert (=> d!2156495 (= (choose!51159 r!7292 lt!2457732 s!2326) _$85!218)))

(declare-fun bs!1834584 () Bool)

(assert (= bs!1834584 d!2156495))

(assert (=> bs!1834584 m!7597052))

(declare-fun m!7597468 () Bool)

(assert (=> bs!1834584 m!7597468))

(assert (=> d!2156397 d!2156495))

(declare-fun d!2156497 () Bool)

(declare-fun res!2800564 () Bool)

(declare-fun e!4138362 () Bool)

(assert (=> d!2156497 (=> res!2800564 e!4138362)))

(assert (=> d!2156497 (= res!2800564 (is-Nil!66257 lt!2457732))))

(assert (=> d!2156497 (= (forall!15885 lt!2457732 lambda!388377) e!4138362)))

(declare-fun b!6864666 () Bool)

(declare-fun e!4138363 () Bool)

(assert (=> b!6864666 (= e!4138362 e!4138363)))

(declare-fun res!2800565 () Bool)

(assert (=> b!6864666 (=> (not res!2800565) (not e!4138363))))

(assert (=> b!6864666 (= res!2800565 (dynLambda!26518 lambda!388377 (h!72705 lt!2457732)))))

(declare-fun b!6864667 () Bool)

(assert (=> b!6864667 (= e!4138363 (forall!15885 (t!380124 lt!2457732) lambda!388377))))

(assert (= (and d!2156497 (not res!2800564)) b!6864666))

(assert (= (and b!6864666 res!2800565) b!6864667))

(declare-fun b_lambda!259493 () Bool)

(assert (=> (not b_lambda!259493) (not b!6864666)))

(declare-fun m!7597470 () Bool)

(assert (=> b!6864666 m!7597470))

(declare-fun m!7597472 () Bool)

(assert (=> b!6864667 m!7597472))

(assert (=> d!2156397 d!2156497))

(declare-fun bs!1834585 () Bool)

(declare-fun b!6864671 () Bool)

(assert (= bs!1834585 (and b!6864671 b!6864260)))

(declare-fun lambda!388431 () Int)

(assert (=> bs!1834585 (= (and (= (reg!17023 (regOne!33901 r!7292)) (reg!17023 r!7292)) (= (regOne!33901 r!7292) r!7292)) (= lambda!388431 lambda!388386))))

(declare-fun bs!1834586 () Bool)

(assert (= bs!1834586 (and b!6864671 b!6864261)))

(assert (=> bs!1834586 (not (= lambda!388431 lambda!388387))))

(assert (=> b!6864671 true))

(assert (=> b!6864671 true))

(declare-fun bs!1834587 () Bool)

(declare-fun b!6864672 () Bool)

(assert (= bs!1834587 (and b!6864672 b!6864260)))

(declare-fun lambda!388432 () Int)

(assert (=> bs!1834587 (not (= lambda!388432 lambda!388386))))

(declare-fun bs!1834588 () Bool)

(assert (= bs!1834588 (and b!6864672 b!6864261)))

(assert (=> bs!1834588 (= (and (= (regOne!33900 (regOne!33901 r!7292)) (regOne!33900 r!7292)) (= (regTwo!33900 (regOne!33901 r!7292)) (regTwo!33900 r!7292))) (= lambda!388432 lambda!388387))))

(declare-fun bs!1834589 () Bool)

(assert (= bs!1834589 (and b!6864672 b!6864671)))

(assert (=> bs!1834589 (not (= lambda!388432 lambda!388431))))

(assert (=> b!6864672 true))

(assert (=> b!6864672 true))

(declare-fun b!6864668 () Bool)

(declare-fun e!4138370 () Bool)

(declare-fun e!4138364 () Bool)

(assert (=> b!6864668 (= e!4138370 e!4138364)))

(declare-fun c!1277663 () Bool)

(assert (=> b!6864668 (= c!1277663 (is-Star!16694 (regOne!33901 r!7292)))))

(declare-fun b!6864669 () Bool)

(declare-fun e!4138366 () Bool)

(declare-fun e!4138365 () Bool)

(assert (=> b!6864669 (= e!4138366 e!4138365)))

(declare-fun res!2800568 () Bool)

(assert (=> b!6864669 (= res!2800568 (not (is-EmptyLang!16694 (regOne!33901 r!7292))))))

(assert (=> b!6864669 (=> (not res!2800568) (not e!4138365))))

(declare-fun b!6864670 () Bool)

(declare-fun c!1277662 () Bool)

(assert (=> b!6864670 (= c!1277662 (is-Union!16694 (regOne!33901 r!7292)))))

(declare-fun e!4138369 () Bool)

(assert (=> b!6864670 (= e!4138369 e!4138370)))

(declare-fun e!4138367 () Bool)

(declare-fun call!625184 () Bool)

(assert (=> b!6864671 (= e!4138367 call!625184)))

(assert (=> b!6864672 (= e!4138364 call!625184)))

(declare-fun b!6864673 () Bool)

(declare-fun e!4138368 () Bool)

(assert (=> b!6864673 (= e!4138370 e!4138368)))

(declare-fun res!2800566 () Bool)

(assert (=> b!6864673 (= res!2800566 (matchRSpec!3795 (regOne!33901 (regOne!33901 r!7292)) s!2326))))

(assert (=> b!6864673 (=> res!2800566 e!4138368)))

(declare-fun bm!625178 () Bool)

(declare-fun call!625183 () Bool)

(assert (=> bm!625178 (= call!625183 (isEmpty!38620 s!2326))))

(declare-fun d!2156499 () Bool)

(declare-fun c!1277664 () Bool)

(assert (=> d!2156499 (= c!1277664 (is-EmptyExpr!16694 (regOne!33901 r!7292)))))

(assert (=> d!2156499 (= (matchRSpec!3795 (regOne!33901 r!7292) s!2326) e!4138366)))

(declare-fun b!6864674 () Bool)

(declare-fun c!1277661 () Bool)

(assert (=> b!6864674 (= c!1277661 (is-ElementMatch!16694 (regOne!33901 r!7292)))))

(assert (=> b!6864674 (= e!4138365 e!4138369)))

(declare-fun b!6864675 () Bool)

(assert (=> b!6864675 (= e!4138369 (= s!2326 (Cons!66259 (c!1277522 (regOne!33901 r!7292)) Nil!66259)))))

(declare-fun b!6864676 () Bool)

(declare-fun res!2800567 () Bool)

(assert (=> b!6864676 (=> res!2800567 e!4138367)))

(assert (=> b!6864676 (= res!2800567 call!625183)))

(assert (=> b!6864676 (= e!4138364 e!4138367)))

(declare-fun bm!625179 () Bool)

(assert (=> bm!625179 (= call!625184 (Exists!3754 (ite c!1277663 lambda!388431 lambda!388432)))))

(declare-fun b!6864677 () Bool)

(assert (=> b!6864677 (= e!4138368 (matchRSpec!3795 (regTwo!33901 (regOne!33901 r!7292)) s!2326))))

(declare-fun b!6864678 () Bool)

(assert (=> b!6864678 (= e!4138366 call!625183)))

(assert (= (and d!2156499 c!1277664) b!6864678))

(assert (= (and d!2156499 (not c!1277664)) b!6864669))

(assert (= (and b!6864669 res!2800568) b!6864674))

(assert (= (and b!6864674 c!1277661) b!6864675))

(assert (= (and b!6864674 (not c!1277661)) b!6864670))

(assert (= (and b!6864670 c!1277662) b!6864673))

(assert (= (and b!6864670 (not c!1277662)) b!6864668))

(assert (= (and b!6864673 (not res!2800566)) b!6864677))

(assert (= (and b!6864668 c!1277663) b!6864676))

(assert (= (and b!6864668 (not c!1277663)) b!6864672))

(assert (= (and b!6864676 (not res!2800567)) b!6864671))

(assert (= (or b!6864671 b!6864672) bm!625179))

(assert (= (or b!6864678 b!6864676) bm!625178))

(declare-fun m!7597474 () Bool)

(assert (=> b!6864673 m!7597474))

(assert (=> bm!625178 m!7597206))

(declare-fun m!7597476 () Bool)

(assert (=> bm!625179 m!7597476))

(declare-fun m!7597478 () Bool)

(assert (=> b!6864677 m!7597478))

(assert (=> b!6864262 d!2156499))

(declare-fun b!6864679 () Bool)

(declare-fun res!2800574 () Bool)

(declare-fun e!4138372 () Bool)

(assert (=> b!6864679 (=> (not res!2800574) (not e!4138372))))

(declare-fun call!625185 () Bool)

(assert (=> b!6864679 (= res!2800574 (not call!625185))))

(declare-fun b!6864680 () Bool)

(declare-fun res!2800569 () Bool)

(declare-fun e!4138371 () Bool)

(assert (=> b!6864680 (=> res!2800569 e!4138371)))

(assert (=> b!6864680 (= res!2800569 (not (isEmpty!38620 (tail!12830 (tail!12830 s!2326)))))))

(declare-fun b!6864681 () Bool)

(declare-fun res!2800571 () Bool)

(declare-fun e!4138373 () Bool)

(assert (=> b!6864681 (=> res!2800571 e!4138373)))

(assert (=> b!6864681 (= res!2800571 (not (is-ElementMatch!16694 (derivativeStep!5337 r!7292 (head!13772 s!2326)))))))

(declare-fun e!4138374 () Bool)

(assert (=> b!6864681 (= e!4138374 e!4138373)))

(declare-fun b!6864682 () Bool)

(declare-fun e!4138377 () Bool)

(assert (=> b!6864682 (= e!4138373 e!4138377)))

(declare-fun res!2800573 () Bool)

(assert (=> b!6864682 (=> (not res!2800573) (not e!4138377))))

(declare-fun lt!2457861 () Bool)

(assert (=> b!6864682 (= res!2800573 (not lt!2457861))))

(declare-fun d!2156501 () Bool)

(declare-fun e!4138376 () Bool)

(assert (=> d!2156501 e!4138376))

(declare-fun c!1277667 () Bool)

(assert (=> d!2156501 (= c!1277667 (is-EmptyExpr!16694 (derivativeStep!5337 r!7292 (head!13772 s!2326))))))

(declare-fun e!4138375 () Bool)

(assert (=> d!2156501 (= lt!2457861 e!4138375)))

(declare-fun c!1277665 () Bool)

(assert (=> d!2156501 (= c!1277665 (isEmpty!38620 (tail!12830 s!2326)))))

(assert (=> d!2156501 (validRegex!8430 (derivativeStep!5337 r!7292 (head!13772 s!2326)))))

(assert (=> d!2156501 (= (matchR!8877 (derivativeStep!5337 r!7292 (head!13772 s!2326)) (tail!12830 s!2326)) lt!2457861)))

(declare-fun b!6864683 () Bool)

(assert (=> b!6864683 (= e!4138376 (= lt!2457861 call!625185))))

(declare-fun b!6864684 () Bool)

(declare-fun res!2800570 () Bool)

(assert (=> b!6864684 (=> res!2800570 e!4138373)))

(assert (=> b!6864684 (= res!2800570 e!4138372)))

(declare-fun res!2800576 () Bool)

(assert (=> b!6864684 (=> (not res!2800576) (not e!4138372))))

(assert (=> b!6864684 (= res!2800576 lt!2457861)))

(declare-fun b!6864685 () Bool)

(assert (=> b!6864685 (= e!4138374 (not lt!2457861))))

(declare-fun bm!625180 () Bool)

(assert (=> bm!625180 (= call!625185 (isEmpty!38620 (tail!12830 s!2326)))))

(declare-fun b!6864686 () Bool)

(assert (=> b!6864686 (= e!4138375 (nullable!6655 (derivativeStep!5337 r!7292 (head!13772 s!2326))))))

(declare-fun b!6864687 () Bool)

(assert (=> b!6864687 (= e!4138376 e!4138374)))

(declare-fun c!1277666 () Bool)

(assert (=> b!6864687 (= c!1277666 (is-EmptyLang!16694 (derivativeStep!5337 r!7292 (head!13772 s!2326))))))

(declare-fun b!6864688 () Bool)

(assert (=> b!6864688 (= e!4138377 e!4138371)))

(declare-fun res!2800572 () Bool)

(assert (=> b!6864688 (=> res!2800572 e!4138371)))

(assert (=> b!6864688 (= res!2800572 call!625185)))

(declare-fun b!6864689 () Bool)

(assert (=> b!6864689 (= e!4138371 (not (= (head!13772 (tail!12830 s!2326)) (c!1277522 (derivativeStep!5337 r!7292 (head!13772 s!2326))))))))

(declare-fun b!6864690 () Bool)

(assert (=> b!6864690 (= e!4138372 (= (head!13772 (tail!12830 s!2326)) (c!1277522 (derivativeStep!5337 r!7292 (head!13772 s!2326)))))))

(declare-fun b!6864691 () Bool)

(assert (=> b!6864691 (= e!4138375 (matchR!8877 (derivativeStep!5337 (derivativeStep!5337 r!7292 (head!13772 s!2326)) (head!13772 (tail!12830 s!2326))) (tail!12830 (tail!12830 s!2326))))))

(declare-fun b!6864692 () Bool)

(declare-fun res!2800575 () Bool)

(assert (=> b!6864692 (=> (not res!2800575) (not e!4138372))))

(assert (=> b!6864692 (= res!2800575 (isEmpty!38620 (tail!12830 (tail!12830 s!2326))))))

(assert (= (and d!2156501 c!1277665) b!6864686))

(assert (= (and d!2156501 (not c!1277665)) b!6864691))

(assert (= (and d!2156501 c!1277667) b!6864683))

(assert (= (and d!2156501 (not c!1277667)) b!6864687))

(assert (= (and b!6864687 c!1277666) b!6864685))

(assert (= (and b!6864687 (not c!1277666)) b!6864681))

(assert (= (and b!6864681 (not res!2800571)) b!6864684))

(assert (= (and b!6864684 res!2800576) b!6864679))

(assert (= (and b!6864679 res!2800574) b!6864692))

(assert (= (and b!6864692 res!2800575) b!6864690))

(assert (= (and b!6864684 (not res!2800570)) b!6864682))

(assert (= (and b!6864682 res!2800573) b!6864688))

(assert (= (and b!6864688 (not res!2800572)) b!6864680))

(assert (= (and b!6864680 (not res!2800569)) b!6864689))

(assert (= (or b!6864683 b!6864679 b!6864688) bm!625180))

(assert (=> b!6864690 m!7597214))

(declare-fun m!7597480 () Bool)

(assert (=> b!6864690 m!7597480))

(assert (=> bm!625180 m!7597214))

(assert (=> bm!625180 m!7597272))

(assert (=> b!6864689 m!7597214))

(assert (=> b!6864689 m!7597480))

(assert (=> b!6864691 m!7597214))

(assert (=> b!6864691 m!7597480))

(assert (=> b!6864691 m!7597268))

(assert (=> b!6864691 m!7597480))

(declare-fun m!7597482 () Bool)

(assert (=> b!6864691 m!7597482))

(assert (=> b!6864691 m!7597214))

(declare-fun m!7597484 () Bool)

(assert (=> b!6864691 m!7597484))

(assert (=> b!6864691 m!7597482))

(assert (=> b!6864691 m!7597484))

(declare-fun m!7597486 () Bool)

(assert (=> b!6864691 m!7597486))

(assert (=> d!2156501 m!7597214))

(assert (=> d!2156501 m!7597272))

(assert (=> d!2156501 m!7597268))

(declare-fun m!7597488 () Bool)

(assert (=> d!2156501 m!7597488))

(assert (=> b!6864692 m!7597214))

(assert (=> b!6864692 m!7597484))

(assert (=> b!6864692 m!7597484))

(declare-fun m!7597490 () Bool)

(assert (=> b!6864692 m!7597490))

(assert (=> b!6864686 m!7597268))

(declare-fun m!7597492 () Bool)

(assert (=> b!6864686 m!7597492))

(assert (=> b!6864680 m!7597214))

(assert (=> b!6864680 m!7597484))

(assert (=> b!6864680 m!7597484))

(assert (=> b!6864680 m!7597490))

(assert (=> b!6864314 d!2156501))

(declare-fun b!6864713 () Bool)

(declare-fun c!1277679 () Bool)

(assert (=> b!6864713 (= c!1277679 (is-Union!16694 r!7292))))

(declare-fun e!4138392 () Regex!16694)

(declare-fun e!4138391 () Regex!16694)

(assert (=> b!6864713 (= e!4138392 e!4138391)))

(declare-fun b!6864714 () Bool)

(declare-fun e!4138390 () Regex!16694)

(assert (=> b!6864714 (= e!4138390 EmptyLang!16694)))

(declare-fun bm!625189 () Bool)

(declare-fun call!625197 () Regex!16694)

(declare-fun c!1277680 () Bool)

(assert (=> bm!625189 (= call!625197 (derivativeStep!5337 (ite c!1277679 (regTwo!33901 r!7292) (ite c!1277680 (reg!17023 r!7292) (regOne!33900 r!7292))) (head!13772 s!2326)))))

(declare-fun b!6864715 () Bool)

(declare-fun call!625194 () Regex!16694)

(assert (=> b!6864715 (= e!4138391 (Union!16694 call!625194 call!625197))))

(declare-fun b!6864716 () Bool)

(declare-fun e!4138388 () Regex!16694)

(assert (=> b!6864716 (= e!4138391 e!4138388)))

(assert (=> b!6864716 (= c!1277680 (is-Star!16694 r!7292))))

(declare-fun call!625195 () Regex!16694)

(declare-fun b!6864717 () Bool)

(declare-fun e!4138389 () Regex!16694)

(declare-fun call!625196 () Regex!16694)

(assert (=> b!6864717 (= e!4138389 (Union!16694 (Concat!25539 call!625195 (regTwo!33900 r!7292)) call!625196))))

(declare-fun b!6864718 () Bool)

(assert (=> b!6864718 (= e!4138389 (Union!16694 (Concat!25539 call!625196 (regTwo!33900 r!7292)) EmptyLang!16694))))

(declare-fun bm!625190 () Bool)

(assert (=> bm!625190 (= call!625196 call!625194)))

(declare-fun b!6864719 () Bool)

(assert (=> b!6864719 (= e!4138392 (ite (= (head!13772 s!2326) (c!1277522 r!7292)) EmptyExpr!16694 EmptyLang!16694))))

(declare-fun bm!625191 () Bool)

(assert (=> bm!625191 (= call!625195 call!625197)))

(declare-fun bm!625192 () Bool)

(declare-fun c!1277682 () Bool)

(assert (=> bm!625192 (= call!625194 (derivativeStep!5337 (ite c!1277679 (regOne!33901 r!7292) (ite c!1277682 (regTwo!33900 r!7292) (regOne!33900 r!7292))) (head!13772 s!2326)))))

(declare-fun b!6864721 () Bool)

(assert (=> b!6864721 (= c!1277682 (nullable!6655 (regOne!33900 r!7292)))))

(assert (=> b!6864721 (= e!4138388 e!4138389)))

(declare-fun b!6864722 () Bool)

(assert (=> b!6864722 (= e!4138388 (Concat!25539 call!625195 r!7292))))

(declare-fun d!2156503 () Bool)

(declare-fun lt!2457864 () Regex!16694)

(assert (=> d!2156503 (validRegex!8430 lt!2457864)))

(assert (=> d!2156503 (= lt!2457864 e!4138390)))

(declare-fun c!1277681 () Bool)

(assert (=> d!2156503 (= c!1277681 (or (is-EmptyExpr!16694 r!7292) (is-EmptyLang!16694 r!7292)))))

(assert (=> d!2156503 (validRegex!8430 r!7292)))

(assert (=> d!2156503 (= (derivativeStep!5337 r!7292 (head!13772 s!2326)) lt!2457864)))

(declare-fun b!6864720 () Bool)

(assert (=> b!6864720 (= e!4138390 e!4138392)))

(declare-fun c!1277678 () Bool)

(assert (=> b!6864720 (= c!1277678 (is-ElementMatch!16694 r!7292))))

(assert (= (and d!2156503 c!1277681) b!6864714))

(assert (= (and d!2156503 (not c!1277681)) b!6864720))

(assert (= (and b!6864720 c!1277678) b!6864719))

(assert (= (and b!6864720 (not c!1277678)) b!6864713))

(assert (= (and b!6864713 c!1277679) b!6864715))

(assert (= (and b!6864713 (not c!1277679)) b!6864716))

(assert (= (and b!6864716 c!1277680) b!6864722))

(assert (= (and b!6864716 (not c!1277680)) b!6864721))

(assert (= (and b!6864721 c!1277682) b!6864717))

(assert (= (and b!6864721 (not c!1277682)) b!6864718))

(assert (= (or b!6864717 b!6864718) bm!625190))

(assert (= (or b!6864722 b!6864717) bm!625191))

(assert (= (or b!6864715 bm!625191) bm!625189))

(assert (= (or b!6864715 bm!625190) bm!625192))

(assert (=> bm!625189 m!7597210))

(declare-fun m!7597494 () Bool)

(assert (=> bm!625189 m!7597494))

(assert (=> bm!625192 m!7597210))

(declare-fun m!7597496 () Bool)

(assert (=> bm!625192 m!7597496))

(declare-fun m!7597498 () Bool)

(assert (=> b!6864721 m!7597498))

(declare-fun m!7597500 () Bool)

(assert (=> d!2156503 m!7597500))

(assert (=> d!2156503 m!7597042))

(assert (=> b!6864314 d!2156503))

(declare-fun d!2156505 () Bool)

(assert (=> d!2156505 (= (head!13772 s!2326) (h!72707 s!2326))))

(assert (=> b!6864314 d!2156505))

(declare-fun d!2156507 () Bool)

(assert (=> d!2156507 (= (tail!12830 s!2326) (t!380126 s!2326))))

(assert (=> b!6864314 d!2156507))

(declare-fun d!2156509 () Bool)

(assert (=> d!2156509 (= (head!13770 (exprs!6578 lt!2457736)) (h!72705 (exprs!6578 lt!2457736)))))

(assert (=> b!6864159 d!2156509))

(declare-fun d!2156511 () Bool)

(declare-fun c!1277683 () Bool)

(assert (=> d!2156511 (= c!1277683 (isEmpty!38620 s!2326))))

(declare-fun e!4138393 () Bool)

(assert (=> d!2156511 (= (matchZipper!2660 (set.insert lt!2457793 (as set.empty (Set Context!12156))) s!2326) e!4138393)))

(declare-fun b!6864723 () Bool)

(assert (=> b!6864723 (= e!4138393 (nullableZipper!2367 (set.insert lt!2457793 (as set.empty (Set Context!12156)))))))

(declare-fun b!6864724 () Bool)

(assert (=> b!6864724 (= e!4138393 (matchZipper!2660 (derivationStepZipper!2614 (set.insert lt!2457793 (as set.empty (Set Context!12156))) (head!13772 s!2326)) (tail!12830 s!2326)))))

(assert (= (and d!2156511 c!1277683) b!6864723))

(assert (= (and d!2156511 (not c!1277683)) b!6864724))

(assert (=> d!2156511 m!7597206))

(assert (=> b!6864723 m!7597326))

(declare-fun m!7597502 () Bool)

(assert (=> b!6864723 m!7597502))

(assert (=> b!6864724 m!7597210))

(assert (=> b!6864724 m!7597326))

(assert (=> b!6864724 m!7597210))

(declare-fun m!7597504 () Bool)

(assert (=> b!6864724 m!7597504))

(assert (=> b!6864724 m!7597214))

(assert (=> b!6864724 m!7597504))

(assert (=> b!6864724 m!7597214))

(declare-fun m!7597506 () Bool)

(assert (=> b!6864724 m!7597506))

(assert (=> bs!1834506 d!2156511))

(assert (=> b!6864312 d!2156505))

(declare-fun d!2156513 () Bool)

(assert (=> d!2156513 (= (isEmpty!38619 (tail!12829 (exprs!6578 lt!2457736))) (is-Nil!66257 (tail!12829 (exprs!6578 lt!2457736))))))

(assert (=> b!6864155 d!2156513))

(declare-fun d!2156515 () Bool)

(assert (=> d!2156515 (= (tail!12829 (exprs!6578 lt!2457736)) (t!380124 (exprs!6578 lt!2457736)))))

(assert (=> b!6864155 d!2156515))

(declare-fun d!2156517 () Bool)

(declare-fun lt!2457865 () Int)

(assert (=> d!2156517 (>= lt!2457865 0)))

(declare-fun e!4138394 () Int)

(assert (=> d!2156517 (= lt!2457865 e!4138394)))

(declare-fun c!1277684 () Bool)

(assert (=> d!2156517 (= c!1277684 (is-Cons!66257 (exprs!6578 (h!72706 zl!343))))))

(assert (=> d!2156517 (= (contextDepthTotal!415 (h!72706 zl!343)) lt!2457865)))

(declare-fun b!6864725 () Bool)

(assert (=> b!6864725 (= e!4138394 (+ (regexDepthTotal!260 (h!72705 (exprs!6578 (h!72706 zl!343)))) (contextDepthTotal!415 (Context!12157 (t!380124 (exprs!6578 (h!72706 zl!343)))))))))

(declare-fun b!6864726 () Bool)

(assert (=> b!6864726 (= e!4138394 1)))

(assert (= (and d!2156517 c!1277684) b!6864725))

(assert (= (and d!2156517 (not c!1277684)) b!6864726))

(declare-fun m!7597508 () Bool)

(assert (=> b!6864725 m!7597508))

(declare-fun m!7597510 () Bool)

(assert (=> b!6864725 m!7597510))

(assert (=> b!6864323 d!2156517))

(declare-fun d!2156519 () Bool)

(declare-fun lt!2457866 () Int)

(assert (=> d!2156519 (>= lt!2457866 0)))

(declare-fun e!4138395 () Int)

(assert (=> d!2156519 (= lt!2457866 e!4138395)))

(declare-fun c!1277685 () Bool)

(assert (=> d!2156519 (= c!1277685 (is-Cons!66258 (t!380125 zl!343)))))

(assert (=> d!2156519 (= (zipperDepthTotal!443 (t!380125 zl!343)) lt!2457866)))

(declare-fun b!6864727 () Bool)

(assert (=> b!6864727 (= e!4138395 (+ (contextDepthTotal!415 (h!72706 (t!380125 zl!343))) (zipperDepthTotal!443 (t!380125 (t!380125 zl!343)))))))

(declare-fun b!6864728 () Bool)

(assert (=> b!6864728 (= e!4138395 0)))

(assert (= (and d!2156519 c!1277685) b!6864727))

(assert (= (and d!2156519 (not c!1277685)) b!6864728))

(declare-fun m!7597512 () Bool)

(assert (=> b!6864727 m!7597512))

(declare-fun m!7597514 () Bool)

(assert (=> b!6864727 m!7597514))

(assert (=> b!6864323 d!2156519))

(declare-fun d!2156521 () Bool)

(assert (=> d!2156521 (= (head!13771 zl!343) (h!72706 zl!343))))

(assert (=> b!6864186 d!2156521))

(declare-fun d!2156523 () Bool)

(assert (=> d!2156523 (= (isEmpty!38620 s!2326) (is-Nil!66259 s!2326))))

(assert (=> d!2156415 d!2156523))

(assert (=> d!2156415 d!2156369))

(assert (=> d!2156387 d!2156377))

(declare-fun b!6864729 () Bool)

(declare-fun res!2800579 () Bool)

(declare-fun e!4138396 () Bool)

(assert (=> b!6864729 (=> res!2800579 e!4138396)))

(assert (=> b!6864729 (= res!2800579 (not (is-Concat!25539 lt!2457832)))))

(declare-fun e!4138397 () Bool)

(assert (=> b!6864729 (= e!4138397 e!4138396)))

(declare-fun b!6864731 () Bool)

(declare-fun e!4138398 () Bool)

(assert (=> b!6864731 (= e!4138396 e!4138398)))

(declare-fun res!2800581 () Bool)

(assert (=> b!6864731 (=> (not res!2800581) (not e!4138398))))

(declare-fun call!625199 () Bool)

(assert (=> b!6864731 (= res!2800581 call!625199)))

(declare-fun b!6864732 () Bool)

(declare-fun res!2800580 () Bool)

(declare-fun e!4138402 () Bool)

(assert (=> b!6864732 (=> (not res!2800580) (not e!4138402))))

(assert (=> b!6864732 (= res!2800580 call!625199)))

(assert (=> b!6864732 (= e!4138397 e!4138402)))

(declare-fun b!6864733 () Bool)

(declare-fun e!4138399 () Bool)

(declare-fun call!625200 () Bool)

(assert (=> b!6864733 (= e!4138399 call!625200)))

(declare-fun b!6864734 () Bool)

(declare-fun e!4138401 () Bool)

(assert (=> b!6864734 (= e!4138401 e!4138397)))

(declare-fun c!1277687 () Bool)

(assert (=> b!6864734 (= c!1277687 (is-Union!16694 lt!2457832))))

(declare-fun bm!625193 () Bool)

(declare-fun call!625198 () Bool)

(assert (=> bm!625193 (= call!625198 call!625200)))

(declare-fun c!1277686 () Bool)

(declare-fun bm!625194 () Bool)

(assert (=> bm!625194 (= call!625200 (validRegex!8430 (ite c!1277686 (reg!17023 lt!2457832) (ite c!1277687 (regTwo!33901 lt!2457832) (regTwo!33900 lt!2457832)))))))

(declare-fun b!6864735 () Bool)

(assert (=> b!6864735 (= e!4138401 e!4138399)))

(declare-fun res!2800578 () Bool)

(assert (=> b!6864735 (= res!2800578 (not (nullable!6655 (reg!17023 lt!2457832))))))

(assert (=> b!6864735 (=> (not res!2800578) (not e!4138399))))

(declare-fun b!6864736 () Bool)

(declare-fun e!4138400 () Bool)

(assert (=> b!6864736 (= e!4138400 e!4138401)))

(assert (=> b!6864736 (= c!1277686 (is-Star!16694 lt!2457832))))

(declare-fun b!6864730 () Bool)

(assert (=> b!6864730 (= e!4138402 call!625198)))

(declare-fun d!2156525 () Bool)

(declare-fun res!2800577 () Bool)

(assert (=> d!2156525 (=> res!2800577 e!4138400)))

(assert (=> d!2156525 (= res!2800577 (is-ElementMatch!16694 lt!2457832))))

(assert (=> d!2156525 (= (validRegex!8430 lt!2457832) e!4138400)))

(declare-fun bm!625195 () Bool)

(assert (=> bm!625195 (= call!625199 (validRegex!8430 (ite c!1277687 (regOne!33901 lt!2457832) (regOne!33900 lt!2457832))))))

(declare-fun b!6864737 () Bool)

(assert (=> b!6864737 (= e!4138398 call!625198)))

(assert (= (and d!2156525 (not res!2800577)) b!6864736))

(assert (= (and b!6864736 c!1277686) b!6864735))

(assert (= (and b!6864736 (not c!1277686)) b!6864734))

(assert (= (and b!6864735 res!2800578) b!6864733))

(assert (= (and b!6864734 c!1277687) b!6864732))

(assert (= (and b!6864734 (not c!1277687)) b!6864729))

(assert (= (and b!6864732 res!2800580) b!6864730))

(assert (= (and b!6864729 (not res!2800579)) b!6864731))

(assert (= (and b!6864731 res!2800581) b!6864737))

(assert (= (or b!6864730 b!6864737) bm!625193))

(assert (= (or b!6864732 b!6864731) bm!625195))

(assert (= (or b!6864733 bm!625193) bm!625194))

(declare-fun m!7597516 () Bool)

(assert (=> bm!625194 m!7597516))

(declare-fun m!7597518 () Bool)

(assert (=> b!6864735 m!7597518))

(declare-fun m!7597520 () Bool)

(assert (=> bm!625195 m!7597520))

(assert (=> d!2156433 d!2156525))

(declare-fun bs!1834590 () Bool)

(declare-fun d!2156527 () Bool)

(assert (= bs!1834590 (and d!2156527 d!2156375)))

(declare-fun lambda!388435 () Int)

(assert (=> bs!1834590 (= lambda!388435 lambda!388360)))

(declare-fun bs!1834591 () Bool)

(assert (= bs!1834591 (and d!2156527 d!2156435)))

(assert (=> bs!1834591 (= lambda!388435 lambda!388396)))

(declare-fun bs!1834592 () Bool)

(assert (= bs!1834592 (and d!2156527 b!6864001)))

(assert (=> bs!1834592 (= lambda!388435 lambda!388340)))

(declare-fun bs!1834593 () Bool)

(assert (= bs!1834593 (and d!2156527 d!2156495)))

(assert (=> bs!1834593 (not (= lambda!388435 lambda!388430))))

(declare-fun bs!1834594 () Bool)

(assert (= bs!1834594 (and d!2156527 d!2156385)))

(assert (=> bs!1834594 (= lambda!388435 lambda!388369)))

(declare-fun bs!1834595 () Bool)

(assert (= bs!1834595 (and d!2156527 d!2156401)))

(assert (=> bs!1834595 (= lambda!388435 lambda!388381)))

(declare-fun bs!1834596 () Bool)

(assert (= bs!1834596 (and d!2156527 d!2156493)))

(assert (=> bs!1834596 (not (= lambda!388435 lambda!388427))))

(declare-fun bs!1834597 () Bool)

(assert (= bs!1834597 (and d!2156527 d!2156397)))

(assert (=> bs!1834597 (not (= lambda!388435 lambda!388378))))

(declare-fun bs!1834598 () Bool)

(assert (= bs!1834598 (and d!2156527 d!2156437)))

(assert (=> bs!1834598 (= lambda!388435 lambda!388397)))

(declare-fun bs!1834599 () Bool)

(assert (= bs!1834599 (and d!2156527 b!6863998)))

(assert (=> bs!1834599 (not (= lambda!388435 lambda!388338))))

(assert (=> bs!1834597 (= lambda!388435 lambda!388377)))

(declare-fun bs!1834600 () Bool)

(assert (= bs!1834600 (and d!2156527 d!2156489)))

(assert (=> bs!1834600 (= lambda!388435 lambda!388426)))

(declare-fun bs!1834601 () Bool)

(assert (= bs!1834601 (and d!2156527 d!2156395)))

(assert (=> bs!1834601 (not (= lambda!388435 lambda!388372))))

(declare-fun b!6864758 () Bool)

(declare-fun e!4138415 () Bool)

(assert (=> b!6864758 (= e!4138415 (isEmpty!38619 (t!380124 (unfocusZipperList!2111 zl!343))))))

(declare-fun b!6864759 () Bool)

(declare-fun e!4138416 () Bool)

(declare-fun e!4138419 () Bool)

(assert (=> b!6864759 (= e!4138416 e!4138419)))

(declare-fun c!1277699 () Bool)

(assert (=> b!6864759 (= c!1277699 (isEmpty!38619 (tail!12829 (unfocusZipperList!2111 zl!343))))))

(declare-fun b!6864760 () Bool)

(declare-fun lt!2457869 () Regex!16694)

(declare-fun isEmptyLang!2024 (Regex!16694) Bool)

(assert (=> b!6864760 (= e!4138416 (isEmptyLang!2024 lt!2457869))))

(declare-fun e!4138418 () Bool)

(assert (=> d!2156527 e!4138418))

(declare-fun res!2800587 () Bool)

(assert (=> d!2156527 (=> (not res!2800587) (not e!4138418))))

(assert (=> d!2156527 (= res!2800587 (validRegex!8430 lt!2457869))))

(declare-fun e!4138417 () Regex!16694)

(assert (=> d!2156527 (= lt!2457869 e!4138417)))

(declare-fun c!1277696 () Bool)

(assert (=> d!2156527 (= c!1277696 e!4138415)))

(declare-fun res!2800586 () Bool)

(assert (=> d!2156527 (=> (not res!2800586) (not e!4138415))))

(assert (=> d!2156527 (= res!2800586 (is-Cons!66257 (unfocusZipperList!2111 zl!343)))))

(assert (=> d!2156527 (forall!15885 (unfocusZipperList!2111 zl!343) lambda!388435)))

(assert (=> d!2156527 (= (generalisedUnion!2529 (unfocusZipperList!2111 zl!343)) lt!2457869)))

(declare-fun b!6864761 () Bool)

(declare-fun e!4138420 () Regex!16694)

(assert (=> b!6864761 (= e!4138417 e!4138420)))

(declare-fun c!1277697 () Bool)

(assert (=> b!6864761 (= c!1277697 (is-Cons!66257 (unfocusZipperList!2111 zl!343)))))

(declare-fun b!6864762 () Bool)

(assert (=> b!6864762 (= e!4138418 e!4138416)))

(declare-fun c!1277698 () Bool)

(assert (=> b!6864762 (= c!1277698 (isEmpty!38619 (unfocusZipperList!2111 zl!343)))))

(declare-fun b!6864763 () Bool)

(assert (=> b!6864763 (= e!4138417 (h!72705 (unfocusZipperList!2111 zl!343)))))

(declare-fun b!6864764 () Bool)

(assert (=> b!6864764 (= e!4138420 (Union!16694 (h!72705 (unfocusZipperList!2111 zl!343)) (generalisedUnion!2529 (t!380124 (unfocusZipperList!2111 zl!343)))))))

(declare-fun b!6864765 () Bool)

(declare-fun isUnion!1454 (Regex!16694) Bool)

(assert (=> b!6864765 (= e!4138419 (isUnion!1454 lt!2457869))))

(declare-fun b!6864766 () Bool)

(assert (=> b!6864766 (= e!4138419 (= lt!2457869 (head!13770 (unfocusZipperList!2111 zl!343))))))

(declare-fun b!6864767 () Bool)

(assert (=> b!6864767 (= e!4138420 EmptyLang!16694)))

(assert (= (and d!2156527 res!2800586) b!6864758))

(assert (= (and d!2156527 c!1277696) b!6864763))

(assert (= (and d!2156527 (not c!1277696)) b!6864761))

(assert (= (and b!6864761 c!1277697) b!6864764))

(assert (= (and b!6864761 (not c!1277697)) b!6864767))

(assert (= (and d!2156527 res!2800587) b!6864762))

(assert (= (and b!6864762 c!1277698) b!6864760))

(assert (= (and b!6864762 (not c!1277698)) b!6864759))

(assert (= (and b!6864759 c!1277699) b!6864766))

(assert (= (and b!6864759 (not c!1277699)) b!6864765))

(declare-fun m!7597522 () Bool)

(assert (=> b!6864765 m!7597522))

(declare-fun m!7597524 () Bool)

(assert (=> d!2156527 m!7597524))

(assert (=> d!2156527 m!7597036))

(declare-fun m!7597526 () Bool)

(assert (=> d!2156527 m!7597526))

(assert (=> b!6864759 m!7597036))

(declare-fun m!7597528 () Bool)

(assert (=> b!6864759 m!7597528))

(assert (=> b!6864759 m!7597528))

(declare-fun m!7597530 () Bool)

(assert (=> b!6864759 m!7597530))

(declare-fun m!7597532 () Bool)

(assert (=> b!6864760 m!7597532))

(assert (=> b!6864762 m!7597036))

(declare-fun m!7597534 () Bool)

(assert (=> b!6864762 m!7597534))

(declare-fun m!7597536 () Bool)

(assert (=> b!6864758 m!7597536))

(declare-fun m!7597538 () Bool)

(assert (=> b!6864764 m!7597538))

(assert (=> b!6864766 m!7597036))

(declare-fun m!7597540 () Bool)

(assert (=> b!6864766 m!7597540))

(assert (=> d!2156433 d!2156527))

(assert (=> d!2156433 d!2156401))

(declare-fun d!2156529 () Bool)

(assert (=> d!2156529 (= (isEmptyExpr!2014 lt!2457778) (is-EmptyExpr!16694 lt!2457778))))

(assert (=> b!6864157 d!2156529))

(declare-fun d!2156531 () Bool)

(declare-fun nullableFct!2529 (Regex!16694) Bool)

(assert (=> d!2156531 (= (nullable!6655 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736)))) (nullableFct!2529 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))))

(declare-fun bs!1834602 () Bool)

(assert (= bs!1834602 d!2156531))

(declare-fun m!7597542 () Bool)

(assert (=> bs!1834602 m!7597542))

(assert (=> b!6864130 d!2156531))

(declare-fun bs!1834603 () Bool)

(declare-fun d!2156533 () Bool)

(assert (= bs!1834603 (and d!2156533 d!2156375)))

(declare-fun lambda!388436 () Int)

(assert (=> bs!1834603 (= lambda!388436 lambda!388360)))

(declare-fun bs!1834604 () Bool)

(assert (= bs!1834604 (and d!2156533 d!2156435)))

(assert (=> bs!1834604 (= lambda!388436 lambda!388396)))

(declare-fun bs!1834605 () Bool)

(assert (= bs!1834605 (and d!2156533 b!6864001)))

(assert (=> bs!1834605 (= lambda!388436 lambda!388340)))

(declare-fun bs!1834606 () Bool)

(assert (= bs!1834606 (and d!2156533 d!2156495)))

(assert (=> bs!1834606 (not (= lambda!388436 lambda!388430))))

(declare-fun bs!1834607 () Bool)

(assert (= bs!1834607 (and d!2156533 d!2156385)))

(assert (=> bs!1834607 (= lambda!388436 lambda!388369)))

(declare-fun bs!1834608 () Bool)

(assert (= bs!1834608 (and d!2156533 d!2156401)))

(assert (=> bs!1834608 (= lambda!388436 lambda!388381)))

(declare-fun bs!1834609 () Bool)

(assert (= bs!1834609 (and d!2156533 d!2156493)))

(assert (=> bs!1834609 (not (= lambda!388436 lambda!388427))))

(declare-fun bs!1834610 () Bool)

(assert (= bs!1834610 (and d!2156533 d!2156527)))

(assert (=> bs!1834610 (= lambda!388436 lambda!388435)))

(declare-fun bs!1834611 () Bool)

(assert (= bs!1834611 (and d!2156533 d!2156397)))

(assert (=> bs!1834611 (not (= lambda!388436 lambda!388378))))

(declare-fun bs!1834612 () Bool)

(assert (= bs!1834612 (and d!2156533 d!2156437)))

(assert (=> bs!1834612 (= lambda!388436 lambda!388397)))

(declare-fun bs!1834613 () Bool)

(assert (= bs!1834613 (and d!2156533 b!6863998)))

(assert (=> bs!1834613 (not (= lambda!388436 lambda!388338))))

(assert (=> bs!1834611 (= lambda!388436 lambda!388377)))

(declare-fun bs!1834614 () Bool)

(assert (= bs!1834614 (and d!2156533 d!2156489)))

(assert (=> bs!1834614 (= lambda!388436 lambda!388426)))

(declare-fun bs!1834615 () Bool)

(assert (= bs!1834615 (and d!2156533 d!2156395)))

(assert (=> bs!1834615 (not (= lambda!388436 lambda!388372))))

(declare-fun b!6864768 () Bool)

(declare-fun e!4138425 () Regex!16694)

(assert (=> b!6864768 (= e!4138425 (Concat!25539 (h!72705 (t!380124 (exprs!6578 lt!2457736))) (generalisedConcat!2282 (t!380124 (t!380124 (exprs!6578 lt!2457736))))))))

(declare-fun b!6864769 () Bool)

(declare-fun e!4138423 () Bool)

(declare-fun e!4138424 () Bool)

(assert (=> b!6864769 (= e!4138423 e!4138424)))

(declare-fun c!1277701 () Bool)

(assert (=> b!6864769 (= c!1277701 (isEmpty!38619 (t!380124 (exprs!6578 lt!2457736))))))

(declare-fun b!6864770 () Bool)

(declare-fun e!4138421 () Bool)

(assert (=> b!6864770 (= e!4138424 e!4138421)))

(declare-fun c!1277703 () Bool)

(assert (=> b!6864770 (= c!1277703 (isEmpty!38619 (tail!12829 (t!380124 (exprs!6578 lt!2457736)))))))

(declare-fun b!6864771 () Bool)

(declare-fun lt!2457870 () Regex!16694)

(assert (=> b!6864771 (= e!4138421 (isConcat!1537 lt!2457870))))

(declare-fun b!6864772 () Bool)

(assert (=> b!6864772 (= e!4138424 (isEmptyExpr!2014 lt!2457870))))

(declare-fun b!6864773 () Bool)

(declare-fun e!4138422 () Bool)

(assert (=> b!6864773 (= e!4138422 (isEmpty!38619 (t!380124 (t!380124 (exprs!6578 lt!2457736)))))))

(declare-fun b!6864774 () Bool)

(assert (=> b!6864774 (= e!4138421 (= lt!2457870 (head!13770 (t!380124 (exprs!6578 lt!2457736)))))))

(declare-fun b!6864775 () Bool)

(assert (=> b!6864775 (= e!4138425 EmptyExpr!16694)))

(assert (=> d!2156533 e!4138423))

(declare-fun res!2800589 () Bool)

(assert (=> d!2156533 (=> (not res!2800589) (not e!4138423))))

(assert (=> d!2156533 (= res!2800589 (validRegex!8430 lt!2457870))))

(declare-fun e!4138426 () Regex!16694)

(assert (=> d!2156533 (= lt!2457870 e!4138426)))

(declare-fun c!1277702 () Bool)

(assert (=> d!2156533 (= c!1277702 e!4138422)))

(declare-fun res!2800588 () Bool)

(assert (=> d!2156533 (=> (not res!2800588) (not e!4138422))))

(assert (=> d!2156533 (= res!2800588 (is-Cons!66257 (t!380124 (exprs!6578 lt!2457736))))))

(assert (=> d!2156533 (forall!15885 (t!380124 (exprs!6578 lt!2457736)) lambda!388436)))

(assert (=> d!2156533 (= (generalisedConcat!2282 (t!380124 (exprs!6578 lt!2457736))) lt!2457870)))

(declare-fun b!6864776 () Bool)

(assert (=> b!6864776 (= e!4138426 e!4138425)))

(declare-fun c!1277700 () Bool)

(assert (=> b!6864776 (= c!1277700 (is-Cons!66257 (t!380124 (exprs!6578 lt!2457736))))))

(declare-fun b!6864777 () Bool)

(assert (=> b!6864777 (= e!4138426 (h!72705 (t!380124 (exprs!6578 lt!2457736))))))

(assert (= (and d!2156533 res!2800588) b!6864773))

(assert (= (and d!2156533 c!1277702) b!6864777))

(assert (= (and d!2156533 (not c!1277702)) b!6864776))

(assert (= (and b!6864776 c!1277700) b!6864768))

(assert (= (and b!6864776 (not c!1277700)) b!6864775))

(assert (= (and d!2156533 res!2800589) b!6864769))

(assert (= (and b!6864769 c!1277701) b!6864772))

(assert (= (and b!6864769 (not c!1277701)) b!6864770))

(assert (= (and b!6864770 c!1277703) b!6864774))

(assert (= (and b!6864770 (not c!1277703)) b!6864771))

(assert (=> b!6864769 m!7597158))

(declare-fun m!7597544 () Bool)

(assert (=> b!6864768 m!7597544))

(declare-fun m!7597546 () Bool)

(assert (=> b!6864773 m!7597546))

(declare-fun m!7597548 () Bool)

(assert (=> b!6864772 m!7597548))

(declare-fun m!7597550 () Bool)

(assert (=> d!2156533 m!7597550))

(declare-fun m!7597552 () Bool)

(assert (=> d!2156533 m!7597552))

(declare-fun m!7597554 () Bool)

(assert (=> b!6864774 m!7597554))

(declare-fun m!7597556 () Bool)

(assert (=> b!6864771 m!7597556))

(declare-fun m!7597558 () Bool)

(assert (=> b!6864770 m!7597558))

(assert (=> b!6864770 m!7597558))

(declare-fun m!7597560 () Bool)

(assert (=> b!6864770 m!7597560))

(assert (=> b!6864153 d!2156533))

(declare-fun d!2156535 () Bool)

(declare-fun res!2800590 () Bool)

(declare-fun e!4138427 () Bool)

(assert (=> d!2156535 (=> res!2800590 e!4138427)))

(assert (=> d!2156535 (= res!2800590 (is-Nil!66257 (exprs!6578 setElem!47206)))))

(assert (=> d!2156535 (= (forall!15885 (exprs!6578 setElem!47206) lambda!388397) e!4138427)))

(declare-fun b!6864778 () Bool)

(declare-fun e!4138428 () Bool)

(assert (=> b!6864778 (= e!4138427 e!4138428)))

(declare-fun res!2800591 () Bool)

(assert (=> b!6864778 (=> (not res!2800591) (not e!4138428))))

(assert (=> b!6864778 (= res!2800591 (dynLambda!26518 lambda!388397 (h!72705 (exprs!6578 setElem!47206))))))

(declare-fun b!6864779 () Bool)

(assert (=> b!6864779 (= e!4138428 (forall!15885 (t!380124 (exprs!6578 setElem!47206)) lambda!388397))))

(assert (= (and d!2156535 (not res!2800590)) b!6864778))

(assert (= (and b!6864778 res!2800591) b!6864779))

(declare-fun b_lambda!259495 () Bool)

(assert (=> (not b_lambda!259495) (not b!6864778)))

(declare-fun m!7597562 () Bool)

(assert (=> b!6864778 m!7597562))

(declare-fun m!7597564 () Bool)

(assert (=> b!6864779 m!7597564))

(assert (=> d!2156437 d!2156535))

(assert (=> bm!625153 d!2156523))

(declare-fun b!6864780 () Bool)

(declare-fun e!4138430 () Context!12156)

(declare-fun e!4138432 () Context!12156)

(assert (=> b!6864780 (= e!4138430 e!4138432)))

(declare-fun c!1277704 () Bool)

(assert (=> b!6864780 (= c!1277704 (is-Cons!66258 (t!380125 zl!343)))))

(declare-fun b!6864781 () Bool)

(assert (=> b!6864781 (= e!4138432 (getWitness!973 (t!380125 (t!380125 zl!343)) lambda!388339))))

(declare-fun d!2156537 () Bool)

(declare-fun e!4138429 () Bool)

(assert (=> d!2156537 e!4138429))

(declare-fun res!2800592 () Bool)

(assert (=> d!2156537 (=> (not res!2800592) (not e!4138429))))

(declare-fun lt!2457872 () Context!12156)

(assert (=> d!2156537 (= res!2800592 (dynLambda!26519 lambda!388339 lt!2457872))))

(assert (=> d!2156537 (= lt!2457872 e!4138430)))

(declare-fun c!1277705 () Bool)

(declare-fun e!4138431 () Bool)

(assert (=> d!2156537 (= c!1277705 e!4138431)))

(declare-fun res!2800593 () Bool)

(assert (=> d!2156537 (=> (not res!2800593) (not e!4138431))))

(assert (=> d!2156537 (= res!2800593 (is-Cons!66258 (t!380125 zl!343)))))

(assert (=> d!2156537 (exists!2821 (t!380125 zl!343) lambda!388339)))

(assert (=> d!2156537 (= (getWitness!973 (t!380125 zl!343) lambda!388339) lt!2457872)))

(declare-fun b!6864782 () Bool)

(assert (=> b!6864782 (= e!4138430 (h!72706 (t!380125 zl!343)))))

(declare-fun b!6864783 () Bool)

(declare-fun lt!2457871 () Unit!160153)

(declare-fun Unit!160159 () Unit!160153)

(assert (=> b!6864783 (= lt!2457871 Unit!160159)))

(assert (=> b!6864783 false))

(assert (=> b!6864783 (= e!4138432 (head!13771 (t!380125 zl!343)))))

(declare-fun b!6864784 () Bool)

(assert (=> b!6864784 (= e!4138429 (contains!20352 (t!380125 zl!343) lt!2457872))))

(declare-fun b!6864785 () Bool)

(assert (=> b!6864785 (= e!4138431 (dynLambda!26519 lambda!388339 (h!72706 (t!380125 zl!343))))))

(assert (= (and d!2156537 res!2800593) b!6864785))

(assert (= (and d!2156537 c!1277705) b!6864782))

(assert (= (and d!2156537 (not c!1277705)) b!6864780))

(assert (= (and b!6864780 c!1277704) b!6864781))

(assert (= (and b!6864780 (not c!1277704)) b!6864783))

(assert (= (and d!2156537 res!2800592) b!6864784))

(declare-fun b_lambda!259497 () Bool)

(assert (=> (not b_lambda!259497) (not d!2156537)))

(declare-fun b_lambda!259499 () Bool)

(assert (=> (not b_lambda!259499) (not b!6864785)))

(declare-fun m!7597566 () Bool)

(assert (=> b!6864784 m!7597566))

(declare-fun m!7597568 () Bool)

(assert (=> b!6864783 m!7597568))

(declare-fun m!7597570 () Bool)

(assert (=> b!6864785 m!7597570))

(declare-fun m!7597572 () Bool)

(assert (=> d!2156537 m!7597572))

(declare-fun m!7597574 () Bool)

(assert (=> d!2156537 m!7597574))

(declare-fun m!7597576 () Bool)

(assert (=> b!6864781 m!7597576))

(assert (=> b!6864184 d!2156537))

(declare-fun d!2156539 () Bool)

(declare-fun res!2800594 () Bool)

(declare-fun e!4138433 () Bool)

(assert (=> d!2156539 (=> res!2800594 e!4138433)))

(assert (=> d!2156539 (= res!2800594 (is-Nil!66257 lt!2457732))))

(assert (=> d!2156539 (= (forall!15885 lt!2457732 lambda!388372) e!4138433)))

(declare-fun b!6864786 () Bool)

(declare-fun e!4138434 () Bool)

(assert (=> b!6864786 (= e!4138433 e!4138434)))

(declare-fun res!2800595 () Bool)

(assert (=> b!6864786 (=> (not res!2800595) (not e!4138434))))

(assert (=> b!6864786 (= res!2800595 (dynLambda!26518 lambda!388372 (h!72705 lt!2457732)))))

(declare-fun b!6864787 () Bool)

(assert (=> b!6864787 (= e!4138434 (forall!15885 (t!380124 lt!2457732) lambda!388372))))

(assert (= (and d!2156539 (not res!2800594)) b!6864786))

(assert (= (and b!6864786 res!2800595) b!6864787))

(declare-fun b_lambda!259501 () Bool)

(assert (=> (not b_lambda!259501) (not b!6864786)))

(declare-fun m!7597578 () Bool)

(assert (=> b!6864786 m!7597578))

(declare-fun m!7597580 () Bool)

(assert (=> b!6864787 m!7597580))

(assert (=> d!2156395 d!2156539))

(declare-fun b!6864788 () Bool)

(declare-fun res!2800598 () Bool)

(declare-fun e!4138435 () Bool)

(assert (=> b!6864788 (=> res!2800598 e!4138435)))

(assert (=> b!6864788 (= res!2800598 (not (is-Concat!25539 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))))))

(declare-fun e!4138436 () Bool)

(assert (=> b!6864788 (= e!4138436 e!4138435)))

(declare-fun b!6864790 () Bool)

(declare-fun e!4138437 () Bool)

(assert (=> b!6864790 (= e!4138435 e!4138437)))

(declare-fun res!2800600 () Bool)

(assert (=> b!6864790 (=> (not res!2800600) (not e!4138437))))

(declare-fun call!625202 () Bool)

(assert (=> b!6864790 (= res!2800600 call!625202)))

(declare-fun b!6864791 () Bool)

(declare-fun res!2800599 () Bool)

(declare-fun e!4138441 () Bool)

(assert (=> b!6864791 (=> (not res!2800599) (not e!4138441))))

(assert (=> b!6864791 (= res!2800599 call!625202)))

(assert (=> b!6864791 (= e!4138436 e!4138441)))

(declare-fun b!6864792 () Bool)

(declare-fun e!4138438 () Bool)

(declare-fun call!625203 () Bool)

(assert (=> b!6864792 (= e!4138438 call!625203)))

(declare-fun b!6864793 () Bool)

(declare-fun e!4138440 () Bool)

(assert (=> b!6864793 (= e!4138440 e!4138436)))

(declare-fun c!1277707 () Bool)

(assert (=> b!6864793 (= c!1277707 (is-Union!16694 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))))))

(declare-fun bm!625196 () Bool)

(declare-fun call!625201 () Bool)

(assert (=> bm!625196 (= call!625201 call!625203)))

(declare-fun c!1277706 () Bool)

(declare-fun bm!625197 () Bool)

(assert (=> bm!625197 (= call!625203 (validRegex!8430 (ite c!1277706 (reg!17023 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))) (ite c!1277707 (regTwo!33901 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))) (regTwo!33900 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))))))))

(declare-fun b!6864794 () Bool)

(assert (=> b!6864794 (= e!4138440 e!4138438)))

(declare-fun res!2800597 () Bool)

(assert (=> b!6864794 (= res!2800597 (not (nullable!6655 (reg!17023 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))))))))

(assert (=> b!6864794 (=> (not res!2800597) (not e!4138438))))

(declare-fun b!6864795 () Bool)

(declare-fun e!4138439 () Bool)

(assert (=> b!6864795 (= e!4138439 e!4138440)))

(assert (=> b!6864795 (= c!1277706 (is-Star!16694 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))))))

(declare-fun b!6864789 () Bool)

(assert (=> b!6864789 (= e!4138441 call!625201)))

(declare-fun d!2156541 () Bool)

(declare-fun res!2800596 () Bool)

(assert (=> d!2156541 (=> res!2800596 e!4138439)))

(assert (=> d!2156541 (= res!2800596 (is-ElementMatch!16694 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))))))

(assert (=> d!2156541 (= (validRegex!8430 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))) e!4138439)))

(declare-fun bm!625198 () Bool)

(assert (=> bm!625198 (= call!625202 (validRegex!8430 (ite c!1277707 (regOne!33901 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))) (regOne!33900 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))))))))

(declare-fun b!6864796 () Bool)

(assert (=> b!6864796 (= e!4138437 call!625201)))

(assert (= (and d!2156541 (not res!2800596)) b!6864795))

(assert (= (and b!6864795 c!1277706) b!6864794))

(assert (= (and b!6864795 (not c!1277706)) b!6864793))

(assert (= (and b!6864794 res!2800597) b!6864792))

(assert (= (and b!6864793 c!1277707) b!6864791))

(assert (= (and b!6864793 (not c!1277707)) b!6864788))

(assert (= (and b!6864791 res!2800599) b!6864789))

(assert (= (and b!6864788 (not res!2800598)) b!6864790))

(assert (= (and b!6864790 res!2800600) b!6864796))

(assert (= (or b!6864789 b!6864796) bm!625196))

(assert (= (or b!6864791 b!6864790) bm!625198))

(assert (= (or b!6864792 bm!625196) bm!625197))

(declare-fun m!7597582 () Bool)

(assert (=> bm!625197 m!7597582))

(declare-fun m!7597584 () Bool)

(assert (=> b!6864794 m!7597584))

(declare-fun m!7597586 () Bool)

(assert (=> bm!625198 m!7597586))

(assert (=> bm!625144 d!2156541))

(declare-fun b!6864797 () Bool)

(declare-fun res!2800603 () Bool)

(declare-fun e!4138442 () Bool)

(assert (=> b!6864797 (=> res!2800603 e!4138442)))

(assert (=> b!6864797 (= res!2800603 (not (is-Concat!25539 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292))))))))

(declare-fun e!4138443 () Bool)

(assert (=> b!6864797 (= e!4138443 e!4138442)))

(declare-fun b!6864799 () Bool)

(declare-fun e!4138444 () Bool)

(assert (=> b!6864799 (= e!4138442 e!4138444)))

(declare-fun res!2800605 () Bool)

(assert (=> b!6864799 (=> (not res!2800605) (not e!4138444))))

(declare-fun call!625205 () Bool)

(assert (=> b!6864799 (= res!2800605 call!625205)))

(declare-fun b!6864800 () Bool)

(declare-fun res!2800604 () Bool)

(declare-fun e!4138448 () Bool)

(assert (=> b!6864800 (=> (not res!2800604) (not e!4138448))))

(assert (=> b!6864800 (= res!2800604 call!625205)))

(assert (=> b!6864800 (= e!4138443 e!4138448)))

(declare-fun b!6864801 () Bool)

(declare-fun e!4138445 () Bool)

(declare-fun call!625206 () Bool)

(assert (=> b!6864801 (= e!4138445 call!625206)))

(declare-fun b!6864802 () Bool)

(declare-fun e!4138447 () Bool)

(assert (=> b!6864802 (= e!4138447 e!4138443)))

(declare-fun c!1277709 () Bool)

(assert (=> b!6864802 (= c!1277709 (is-Union!16694 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))))))

(declare-fun bm!625199 () Bool)

(declare-fun call!625204 () Bool)

(assert (=> bm!625199 (= call!625204 call!625206)))

(declare-fun bm!625200 () Bool)

(declare-fun c!1277708 () Bool)

(assert (=> bm!625200 (= call!625206 (validRegex!8430 (ite c!1277708 (reg!17023 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))) (ite c!1277709 (regTwo!33901 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))) (regTwo!33900 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292))))))))))

(declare-fun b!6864803 () Bool)

(assert (=> b!6864803 (= e!4138447 e!4138445)))

(declare-fun res!2800602 () Bool)

(assert (=> b!6864803 (= res!2800602 (not (nullable!6655 (reg!17023 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))))))))

(assert (=> b!6864803 (=> (not res!2800602) (not e!4138445))))

(declare-fun b!6864804 () Bool)

(declare-fun e!4138446 () Bool)

(assert (=> b!6864804 (= e!4138446 e!4138447)))

(assert (=> b!6864804 (= c!1277708 (is-Star!16694 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))))))

(declare-fun b!6864798 () Bool)

(assert (=> b!6864798 (= e!4138448 call!625204)))

(declare-fun d!2156543 () Bool)

(declare-fun res!2800601 () Bool)

(assert (=> d!2156543 (=> res!2800601 e!4138446)))

(assert (=> d!2156543 (= res!2800601 (is-ElementMatch!16694 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))))))

(assert (=> d!2156543 (= (validRegex!8430 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))) e!4138446)))

(declare-fun bm!625201 () Bool)

(assert (=> bm!625201 (= call!625205 (validRegex!8430 (ite c!1277709 (regOne!33901 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))) (regOne!33900 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))))))))

(declare-fun b!6864805 () Bool)

(assert (=> b!6864805 (= e!4138444 call!625204)))

(assert (= (and d!2156543 (not res!2800601)) b!6864804))

(assert (= (and b!6864804 c!1277708) b!6864803))

(assert (= (and b!6864804 (not c!1277708)) b!6864802))

(assert (= (and b!6864803 res!2800602) b!6864801))

(assert (= (and b!6864802 c!1277709) b!6864800))

(assert (= (and b!6864802 (not c!1277709)) b!6864797))

(assert (= (and b!6864800 res!2800604) b!6864798))

(assert (= (and b!6864797 (not res!2800603)) b!6864799))

(assert (= (and b!6864799 res!2800605) b!6864805))

(assert (= (or b!6864798 b!6864805) bm!625199))

(assert (= (or b!6864800 b!6864799) bm!625201))

(assert (= (or b!6864801 bm!625199) bm!625200))

(declare-fun m!7597588 () Bool)

(assert (=> bm!625200 m!7597588))

(declare-fun m!7597590 () Bool)

(assert (=> b!6864803 m!7597590))

(declare-fun m!7597592 () Bool)

(assert (=> bm!625201 m!7597592))

(assert (=> bm!625140 d!2156543))

(declare-fun d!2156545 () Bool)

(declare-fun c!1277710 () Bool)

(assert (=> d!2156545 (= c!1277710 (isEmpty!38620 (tail!12830 s!2326)))))

(declare-fun e!4138449 () Bool)

(assert (=> d!2156545 (= (matchZipper!2660 (derivationStepZipper!2614 z!1189 (head!13772 s!2326)) (tail!12830 s!2326)) e!4138449)))

(declare-fun b!6864806 () Bool)

(assert (=> b!6864806 (= e!4138449 (nullableZipper!2367 (derivationStepZipper!2614 z!1189 (head!13772 s!2326))))))

(declare-fun b!6864807 () Bool)

(assert (=> b!6864807 (= e!4138449 (matchZipper!2660 (derivationStepZipper!2614 (derivationStepZipper!2614 z!1189 (head!13772 s!2326)) (head!13772 (tail!12830 s!2326))) (tail!12830 (tail!12830 s!2326))))))

(assert (= (and d!2156545 c!1277710) b!6864806))

(assert (= (and d!2156545 (not c!1277710)) b!6864807))

(assert (=> d!2156545 m!7597214))

(assert (=> d!2156545 m!7597272))

(assert (=> b!6864806 m!7597212))

(declare-fun m!7597594 () Bool)

(assert (=> b!6864806 m!7597594))

(assert (=> b!6864807 m!7597214))

(assert (=> b!6864807 m!7597480))

(assert (=> b!6864807 m!7597212))

(assert (=> b!6864807 m!7597480))

(declare-fun m!7597596 () Bool)

(assert (=> b!6864807 m!7597596))

(assert (=> b!6864807 m!7597214))

(assert (=> b!6864807 m!7597484))

(assert (=> b!6864807 m!7597596))

(assert (=> b!6864807 m!7597484))

(declare-fun m!7597598 () Bool)

(assert (=> b!6864807 m!7597598))

(assert (=> b!6864194 d!2156545))

(declare-fun d!2156547 () Bool)

(assert (=> d!2156547 true))

(declare-fun lambda!388439 () Int)

(declare-fun flatMap!2141 ((Set Context!12156) Int) (Set Context!12156))

(assert (=> d!2156547 (= (derivationStepZipper!2614 z!1189 (head!13772 s!2326)) (flatMap!2141 z!1189 lambda!388439))))

(declare-fun bs!1834616 () Bool)

(assert (= bs!1834616 d!2156547))

(declare-fun m!7597600 () Bool)

(assert (=> bs!1834616 m!7597600))

(assert (=> b!6864194 d!2156547))

(assert (=> b!6864194 d!2156505))

(assert (=> b!6864194 d!2156507))

(assert (=> d!2156419 d!2156415))

(assert (=> d!2156419 d!2156407))

(declare-fun d!2156549 () Bool)

(assert (=> d!2156549 (= (matchR!8877 r!7292 s!2326) (matchRSpec!3795 r!7292 s!2326))))

(assert (=> d!2156549 true))

(declare-fun _$88!5723 () Unit!160153)

(assert (=> d!2156549 (= (choose!51160 r!7292 s!2326) _$88!5723)))

(declare-fun bs!1834617 () Bool)

(assert (= bs!1834617 d!2156549))

(assert (=> bs!1834617 m!7597052))

(assert (=> bs!1834617 m!7597050))

(assert (=> d!2156419 d!2156549))

(assert (=> d!2156419 d!2156369))

(declare-fun bs!1834618 () Bool)

(declare-fun d!2156551 () Bool)

(assert (= bs!1834618 (and d!2156551 d!2156375)))

(declare-fun lambda!388440 () Int)

(assert (=> bs!1834618 (= lambda!388440 lambda!388360)))

(declare-fun bs!1834619 () Bool)

(assert (= bs!1834619 (and d!2156551 d!2156435)))

(assert (=> bs!1834619 (= lambda!388440 lambda!388396)))

(declare-fun bs!1834620 () Bool)

(assert (= bs!1834620 (and d!2156551 b!6864001)))

(assert (=> bs!1834620 (= lambda!388440 lambda!388340)))

(declare-fun bs!1834621 () Bool)

(assert (= bs!1834621 (and d!2156551 d!2156495)))

(assert (=> bs!1834621 (not (= lambda!388440 lambda!388430))))

(declare-fun bs!1834622 () Bool)

(assert (= bs!1834622 (and d!2156551 d!2156385)))

(assert (=> bs!1834622 (= lambda!388440 lambda!388369)))

(declare-fun bs!1834623 () Bool)

(assert (= bs!1834623 (and d!2156551 d!2156493)))

(assert (=> bs!1834623 (not (= lambda!388440 lambda!388427))))

(declare-fun bs!1834624 () Bool)

(assert (= bs!1834624 (and d!2156551 d!2156527)))

(assert (=> bs!1834624 (= lambda!388440 lambda!388435)))

(declare-fun bs!1834625 () Bool)

(assert (= bs!1834625 (and d!2156551 d!2156397)))

(assert (=> bs!1834625 (not (= lambda!388440 lambda!388378))))

(declare-fun bs!1834626 () Bool)

(assert (= bs!1834626 (and d!2156551 d!2156437)))

(assert (=> bs!1834626 (= lambda!388440 lambda!388397)))

(declare-fun bs!1834627 () Bool)

(assert (= bs!1834627 (and d!2156551 b!6863998)))

(assert (=> bs!1834627 (not (= lambda!388440 lambda!388338))))

(assert (=> bs!1834625 (= lambda!388440 lambda!388377)))

(declare-fun bs!1834628 () Bool)

(assert (= bs!1834628 (and d!2156551 d!2156533)))

(assert (=> bs!1834628 (= lambda!388440 lambda!388436)))

(declare-fun bs!1834629 () Bool)

(assert (= bs!1834629 (and d!2156551 d!2156401)))

(assert (=> bs!1834629 (= lambda!388440 lambda!388381)))

(declare-fun bs!1834630 () Bool)

(assert (= bs!1834630 (and d!2156551 d!2156489)))

(assert (=> bs!1834630 (= lambda!388440 lambda!388426)))

(declare-fun bs!1834631 () Bool)

(assert (= bs!1834631 (and d!2156551 d!2156395)))

(assert (=> bs!1834631 (not (= lambda!388440 lambda!388372))))

(assert (=> d!2156551 (= (inv!84983 setElem!47212) (forall!15885 (exprs!6578 setElem!47212) lambda!388440))))

(declare-fun bs!1834632 () Bool)

(assert (= bs!1834632 d!2156551))

(declare-fun m!7597602 () Bool)

(assert (=> bs!1834632 m!7597602))

(assert (=> setNonEmpty!47212 d!2156551))

(declare-fun d!2156553 () Bool)

(assert (=> d!2156553 (= (isEmpty!38620 (tail!12830 s!2326)) (is-Nil!66259 (tail!12830 s!2326)))))

(assert (=> b!6864303 d!2156553))

(assert (=> b!6864303 d!2156507))

(declare-fun d!2156555 () Bool)

(declare-fun res!2800610 () Bool)

(declare-fun e!4138454 () Bool)

(assert (=> d!2156555 (=> res!2800610 e!4138454)))

(assert (=> d!2156555 (= res!2800610 (is-Nil!66258 zl!343))))

(assert (=> d!2156555 (= (forall!15887 zl!343 lambda!388363) e!4138454)))

(declare-fun b!6864814 () Bool)

(declare-fun e!4138455 () Bool)

(assert (=> b!6864814 (= e!4138454 e!4138455)))

(declare-fun res!2800611 () Bool)

(assert (=> b!6864814 (=> (not res!2800611) (not e!4138455))))

(assert (=> b!6864814 (= res!2800611 (dynLambda!26519 lambda!388363 (h!72706 zl!343)))))

(declare-fun b!6864815 () Bool)

(assert (=> b!6864815 (= e!4138455 (forall!15887 (t!380125 zl!343) lambda!388363))))

(assert (= (and d!2156555 (not res!2800610)) b!6864814))

(assert (= (and b!6864814 res!2800611) b!6864815))

(declare-fun b_lambda!259503 () Bool)

(assert (=> (not b_lambda!259503) (not b!6864814)))

(declare-fun m!7597604 () Bool)

(assert (=> b!6864814 m!7597604))

(declare-fun m!7597606 () Bool)

(assert (=> b!6864815 m!7597606))

(assert (=> d!2156377 d!2156555))

(declare-fun d!2156557 () Bool)

(declare-fun res!2800612 () Bool)

(declare-fun e!4138456 () Bool)

(assert (=> d!2156557 (=> res!2800612 e!4138456)))

(assert (=> d!2156557 (= res!2800612 (is-Nil!66257 lt!2457803))))

(assert (=> d!2156557 (= (forall!15885 lt!2457803 lambda!388381) e!4138456)))

(declare-fun b!6864816 () Bool)

(declare-fun e!4138457 () Bool)

(assert (=> b!6864816 (= e!4138456 e!4138457)))

(declare-fun res!2800613 () Bool)

(assert (=> b!6864816 (=> (not res!2800613) (not e!4138457))))

(assert (=> b!6864816 (= res!2800613 (dynLambda!26518 lambda!388381 (h!72705 lt!2457803)))))

(declare-fun b!6864817 () Bool)

(assert (=> b!6864817 (= e!4138457 (forall!15885 (t!380124 lt!2457803) lambda!388381))))

(assert (= (and d!2156557 (not res!2800612)) b!6864816))

(assert (= (and b!6864816 res!2800613) b!6864817))

(declare-fun b_lambda!259505 () Bool)

(assert (=> (not b_lambda!259505) (not b!6864816)))

(declare-fun m!7597608 () Bool)

(assert (=> b!6864816 m!7597608))

(declare-fun m!7597610 () Bool)

(assert (=> b!6864817 m!7597610))

(assert (=> d!2156401 d!2156557))

(declare-fun d!2156559 () Bool)

(declare-fun choose!51168 (Int) Bool)

(assert (=> d!2156559 (= (Exists!3754 (ite c!1277583 lambda!388386 lambda!388387)) (choose!51168 (ite c!1277583 lambda!388386 lambda!388387)))))

(declare-fun bs!1834633 () Bool)

(assert (= bs!1834633 d!2156559))

(declare-fun m!7597612 () Bool)

(assert (=> bs!1834633 m!7597612))

(assert (=> bm!625150 d!2156559))

(declare-fun b!6864818 () Bool)

(declare-fun res!2800616 () Bool)

(declare-fun e!4138458 () Bool)

(assert (=> b!6864818 (=> res!2800616 e!4138458)))

(assert (=> b!6864818 (= res!2800616 (not (is-Concat!25539 (h!72705 (exprs!6578 lt!2457736)))))))

(declare-fun e!4138459 () Bool)

(assert (=> b!6864818 (= e!4138459 e!4138458)))

(declare-fun b!6864820 () Bool)

(declare-fun e!4138460 () Bool)

(assert (=> b!6864820 (= e!4138458 e!4138460)))

(declare-fun res!2800618 () Bool)

(assert (=> b!6864820 (=> (not res!2800618) (not e!4138460))))

(declare-fun call!625208 () Bool)

(assert (=> b!6864820 (= res!2800618 call!625208)))

(declare-fun b!6864821 () Bool)

(declare-fun res!2800617 () Bool)

(declare-fun e!4138464 () Bool)

(assert (=> b!6864821 (=> (not res!2800617) (not e!4138464))))

(assert (=> b!6864821 (= res!2800617 call!625208)))

(assert (=> b!6864821 (= e!4138459 e!4138464)))

(declare-fun b!6864822 () Bool)

(declare-fun e!4138461 () Bool)

(declare-fun call!625209 () Bool)

(assert (=> b!6864822 (= e!4138461 call!625209)))

(declare-fun b!6864823 () Bool)

(declare-fun e!4138463 () Bool)

(assert (=> b!6864823 (= e!4138463 e!4138459)))

(declare-fun c!1277714 () Bool)

(assert (=> b!6864823 (= c!1277714 (is-Union!16694 (h!72705 (exprs!6578 lt!2457736))))))

(declare-fun bm!625202 () Bool)

(declare-fun call!625207 () Bool)

(assert (=> bm!625202 (= call!625207 call!625209)))

(declare-fun c!1277713 () Bool)

(declare-fun bm!625203 () Bool)

(assert (=> bm!625203 (= call!625209 (validRegex!8430 (ite c!1277713 (reg!17023 (h!72705 (exprs!6578 lt!2457736))) (ite c!1277714 (regTwo!33901 (h!72705 (exprs!6578 lt!2457736))) (regTwo!33900 (h!72705 (exprs!6578 lt!2457736)))))))))

(declare-fun b!6864824 () Bool)

(assert (=> b!6864824 (= e!4138463 e!4138461)))

(declare-fun res!2800615 () Bool)

(assert (=> b!6864824 (= res!2800615 (not (nullable!6655 (reg!17023 (h!72705 (exprs!6578 lt!2457736))))))))

(assert (=> b!6864824 (=> (not res!2800615) (not e!4138461))))

(declare-fun b!6864825 () Bool)

(declare-fun e!4138462 () Bool)

(assert (=> b!6864825 (= e!4138462 e!4138463)))

(assert (=> b!6864825 (= c!1277713 (is-Star!16694 (h!72705 (exprs!6578 lt!2457736))))))

(declare-fun b!6864819 () Bool)

(assert (=> b!6864819 (= e!4138464 call!625207)))

(declare-fun d!2156561 () Bool)

(declare-fun res!2800614 () Bool)

(assert (=> d!2156561 (=> res!2800614 e!4138462)))

(assert (=> d!2156561 (= res!2800614 (is-ElementMatch!16694 (h!72705 (exprs!6578 lt!2457736))))))

(assert (=> d!2156561 (= (validRegex!8430 (h!72705 (exprs!6578 lt!2457736))) e!4138462)))

(declare-fun bm!625204 () Bool)

(assert (=> bm!625204 (= call!625208 (validRegex!8430 (ite c!1277714 (regOne!33901 (h!72705 (exprs!6578 lt!2457736))) (regOne!33900 (h!72705 (exprs!6578 lt!2457736))))))))

(declare-fun b!6864826 () Bool)

(assert (=> b!6864826 (= e!4138460 call!625207)))

(assert (= (and d!2156561 (not res!2800614)) b!6864825))

(assert (= (and b!6864825 c!1277713) b!6864824))

(assert (= (and b!6864825 (not c!1277713)) b!6864823))

(assert (= (and b!6864824 res!2800615) b!6864822))

(assert (= (and b!6864823 c!1277714) b!6864821))

(assert (= (and b!6864823 (not c!1277714)) b!6864818))

(assert (= (and b!6864821 res!2800617) b!6864819))

(assert (= (and b!6864818 (not res!2800616)) b!6864820))

(assert (= (and b!6864820 res!2800618) b!6864826))

(assert (= (or b!6864819 b!6864826) bm!625202))

(assert (= (or b!6864821 b!6864820) bm!625204))

(assert (= (or b!6864822 bm!625202) bm!625203))

(declare-fun m!7597614 () Bool)

(assert (=> bm!625203 m!7597614))

(declare-fun m!7597616 () Bool)

(assert (=> b!6864824 m!7597616))

(declare-fun m!7597618 () Bool)

(assert (=> bm!625204 m!7597618))

(assert (=> bs!1834504 d!2156561))

(assert (=> bm!625149 d!2156523))

(declare-fun b!6864843 () Bool)

(declare-fun e!4138474 () Int)

(assert (=> b!6864843 (= e!4138474 1)))

(declare-fun b!6864844 () Bool)

(declare-fun e!4138475 () Int)

(declare-fun call!625218 () Int)

(assert (=> b!6864844 (= e!4138475 (+ 1 call!625218))))

(declare-fun b!6864845 () Bool)

(declare-fun c!1277725 () Bool)

(assert (=> b!6864845 (= c!1277725 (is-Union!16694 (h!72705 (exprs!6578 lt!2457736))))))

(declare-fun e!4138473 () Int)

(assert (=> b!6864845 (= e!4138475 e!4138473)))

(declare-fun bm!625211 () Bool)

(declare-fun call!625216 () Int)

(assert (=> bm!625211 (= call!625216 call!625218)))

(declare-fun bm!625212 () Bool)

(declare-fun c!1277724 () Bool)

(assert (=> bm!625212 (= call!625218 (regexDepthTotal!260 (ite c!1277724 (reg!17023 (h!72705 (exprs!6578 lt!2457736))) (ite c!1277725 (regTwo!33901 (h!72705 (exprs!6578 lt!2457736))) (regTwo!33900 (h!72705 (exprs!6578 lt!2457736)))))))))

(declare-fun b!6864846 () Bool)

(declare-fun e!4138476 () Int)

(assert (=> b!6864846 (= e!4138476 1)))

(declare-fun b!6864847 () Bool)

(assert (=> b!6864847 (= e!4138474 e!4138475)))

(assert (=> b!6864847 (= c!1277724 (is-Star!16694 (h!72705 (exprs!6578 lt!2457736))))))

(declare-fun b!6864848 () Bool)

(declare-fun call!625217 () Int)

(assert (=> b!6864848 (= e!4138476 (+ 1 call!625217 call!625216))))

(declare-fun b!6864849 () Bool)

(assert (=> b!6864849 (= e!4138473 e!4138476)))

(declare-fun c!1277726 () Bool)

(assert (=> b!6864849 (= c!1277726 (is-Concat!25539 (h!72705 (exprs!6578 lt!2457736))))))

(declare-fun b!6864850 () Bool)

(assert (=> b!6864850 (= e!4138473 (+ 1 call!625217 call!625216))))

(declare-fun bm!625213 () Bool)

(assert (=> bm!625213 (= call!625217 (regexDepthTotal!260 (ite c!1277725 (regOne!33901 (h!72705 (exprs!6578 lt!2457736))) (regOne!33900 (h!72705 (exprs!6578 lt!2457736))))))))

(declare-fun d!2156563 () Bool)

(declare-fun lt!2457875 () Int)

(assert (=> d!2156563 (> lt!2457875 0)))

(assert (=> d!2156563 (= lt!2457875 e!4138474)))

(declare-fun c!1277723 () Bool)

(assert (=> d!2156563 (= c!1277723 (is-ElementMatch!16694 (h!72705 (exprs!6578 lt!2457736))))))

(assert (=> d!2156563 (= (regexDepthTotal!260 (h!72705 (exprs!6578 lt!2457736))) lt!2457875)))

(assert (= (and d!2156563 c!1277723) b!6864843))

(assert (= (and d!2156563 (not c!1277723)) b!6864847))

(assert (= (and b!6864847 c!1277724) b!6864844))

(assert (= (and b!6864847 (not c!1277724)) b!6864845))

(assert (= (and b!6864845 c!1277725) b!6864850))

(assert (= (and b!6864845 (not c!1277725)) b!6864849))

(assert (= (and b!6864849 c!1277726) b!6864848))

(assert (= (and b!6864849 (not c!1277726)) b!6864846))

(assert (= (or b!6864850 b!6864848) bm!625211))

(assert (= (or b!6864850 b!6864848) bm!625213))

(assert (= (or b!6864844 bm!625211) bm!625212))

(declare-fun m!7597620 () Bool)

(assert (=> bm!625212 m!7597620))

(declare-fun m!7597622 () Bool)

(assert (=> bm!625213 m!7597622))

(assert (=> b!6864329 d!2156563))

(declare-fun d!2156565 () Bool)

(declare-fun lt!2457876 () Int)

(assert (=> d!2156565 (>= lt!2457876 0)))

(declare-fun e!4138477 () Int)

(assert (=> d!2156565 (= lt!2457876 e!4138477)))

(declare-fun c!1277727 () Bool)

(assert (=> d!2156565 (= c!1277727 (is-Cons!66257 (exprs!6578 (Context!12157 (t!380124 (exprs!6578 lt!2457736))))))))

(assert (=> d!2156565 (= (contextDepthTotal!415 (Context!12157 (t!380124 (exprs!6578 lt!2457736)))) lt!2457876)))

(declare-fun b!6864851 () Bool)

(assert (=> b!6864851 (= e!4138477 (+ (regexDepthTotal!260 (h!72705 (exprs!6578 (Context!12157 (t!380124 (exprs!6578 lt!2457736)))))) (contextDepthTotal!415 (Context!12157 (t!380124 (exprs!6578 (Context!12157 (t!380124 (exprs!6578 lt!2457736)))))))))))

(declare-fun b!6864852 () Bool)

(assert (=> b!6864852 (= e!4138477 1)))

(assert (= (and d!2156565 c!1277727) b!6864851))

(assert (= (and d!2156565 (not c!1277727)) b!6864852))

(declare-fun m!7597624 () Bool)

(assert (=> b!6864851 m!7597624))

(declare-fun m!7597626 () Bool)

(assert (=> b!6864851 m!7597626))

(assert (=> b!6864329 d!2156565))

(declare-fun d!2156567 () Bool)

(declare-fun lt!2457877 () Int)

(assert (=> d!2156567 (>= lt!2457877 0)))

(declare-fun e!4138478 () Int)

(assert (=> d!2156567 (= lt!2457877 e!4138478)))

(declare-fun c!1277728 () Bool)

(assert (=> d!2156567 (= c!1277728 (is-Cons!66257 (exprs!6578 (h!72706 lt!2457734))))))

(assert (=> d!2156567 (= (contextDepthTotal!415 (h!72706 lt!2457734)) lt!2457877)))

(declare-fun b!6864853 () Bool)

(assert (=> b!6864853 (= e!4138478 (+ (regexDepthTotal!260 (h!72705 (exprs!6578 (h!72706 lt!2457734)))) (contextDepthTotal!415 (Context!12157 (t!380124 (exprs!6578 (h!72706 lt!2457734)))))))))

(declare-fun b!6864854 () Bool)

(assert (=> b!6864854 (= e!4138478 1)))

(assert (= (and d!2156567 c!1277728) b!6864853))

(assert (= (and d!2156567 (not c!1277728)) b!6864854))

(declare-fun m!7597628 () Bool)

(assert (=> b!6864853 m!7597628))

(declare-fun m!7597630 () Bool)

(assert (=> b!6864853 m!7597630))

(assert (=> b!6864321 d!2156567))

(declare-fun d!2156569 () Bool)

(declare-fun lt!2457878 () Int)

(assert (=> d!2156569 (>= lt!2457878 0)))

(declare-fun e!4138479 () Int)

(assert (=> d!2156569 (= lt!2457878 e!4138479)))

(declare-fun c!1277729 () Bool)

(assert (=> d!2156569 (= c!1277729 (is-Cons!66258 (t!380125 lt!2457734)))))

(assert (=> d!2156569 (= (zipperDepthTotal!443 (t!380125 lt!2457734)) lt!2457878)))

(declare-fun b!6864855 () Bool)

(assert (=> b!6864855 (= e!4138479 (+ (contextDepthTotal!415 (h!72706 (t!380125 lt!2457734))) (zipperDepthTotal!443 (t!380125 (t!380125 lt!2457734)))))))

(declare-fun b!6864856 () Bool)

(assert (=> b!6864856 (= e!4138479 0)))

(assert (= (and d!2156569 c!1277729) b!6864855))

(assert (= (and d!2156569 (not c!1277729)) b!6864856))

(declare-fun m!7597632 () Bool)

(assert (=> b!6864855 m!7597632))

(declare-fun m!7597634 () Bool)

(assert (=> b!6864855 m!7597634))

(assert (=> b!6864321 d!2156569))

(declare-fun d!2156571 () Bool)

(assert (=> d!2156571 (= (isEmpty!38619 (t!380124 (exprs!6578 lt!2457736))) (is-Nil!66257 (t!380124 (exprs!6578 lt!2457736))))))

(assert (=> b!6864158 d!2156571))

(assert (=> b!6864313 d!2156505))

(declare-fun d!2156573 () Bool)

(assert (=> d!2156573 (= (isConcat!1537 lt!2457778) (is-Concat!25539 lt!2457778))))

(assert (=> b!6864156 d!2156573))

(declare-fun d!2156575 () Bool)

(declare-fun res!2800619 () Bool)

(declare-fun e!4138480 () Bool)

(assert (=> d!2156575 (=> res!2800619 e!4138480)))

(assert (=> d!2156575 (= res!2800619 (is-Nil!66257 (exprs!6578 lt!2457736)))))

(assert (=> d!2156575 (= (forall!15885 (exprs!6578 lt!2457736) lambda!388369) e!4138480)))

(declare-fun b!6864857 () Bool)

(declare-fun e!4138481 () Bool)

(assert (=> b!6864857 (= e!4138480 e!4138481)))

(declare-fun res!2800620 () Bool)

(assert (=> b!6864857 (=> (not res!2800620) (not e!4138481))))

(assert (=> b!6864857 (= res!2800620 (dynLambda!26518 lambda!388369 (h!72705 (exprs!6578 lt!2457736))))))

(declare-fun b!6864858 () Bool)

(assert (=> b!6864858 (= e!4138481 (forall!15885 (t!380124 (exprs!6578 lt!2457736)) lambda!388369))))

(assert (= (and d!2156575 (not res!2800619)) b!6864857))

(assert (= (and b!6864857 res!2800620) b!6864858))

(declare-fun b_lambda!259507 () Bool)

(assert (=> (not b_lambda!259507) (not b!6864857)))

(declare-fun m!7597636 () Bool)

(assert (=> b!6864857 m!7597636))

(declare-fun m!7597638 () Bool)

(assert (=> b!6864858 m!7597638))

(assert (=> d!2156385 d!2156575))

(declare-fun bs!1834634 () Bool)

(declare-fun d!2156577 () Bool)

(assert (= bs!1834634 (and d!2156577 d!2156375)))

(declare-fun lambda!388443 () Int)

(assert (=> bs!1834634 (= lambda!388443 lambda!388360)))

(declare-fun bs!1834635 () Bool)

(assert (= bs!1834635 (and d!2156577 d!2156435)))

(assert (=> bs!1834635 (= lambda!388443 lambda!388396)))

(declare-fun bs!1834636 () Bool)

(assert (= bs!1834636 (and d!2156577 b!6864001)))

(assert (=> bs!1834636 (= lambda!388443 lambda!388340)))

(declare-fun bs!1834637 () Bool)

(assert (= bs!1834637 (and d!2156577 d!2156495)))

(assert (=> bs!1834637 (not (= lambda!388443 lambda!388430))))

(declare-fun bs!1834638 () Bool)

(assert (= bs!1834638 (and d!2156577 d!2156385)))

(assert (=> bs!1834638 (= lambda!388443 lambda!388369)))

(declare-fun bs!1834639 () Bool)

(assert (= bs!1834639 (and d!2156577 d!2156493)))

(assert (=> bs!1834639 (not (= lambda!388443 lambda!388427))))

(declare-fun bs!1834640 () Bool)

(assert (= bs!1834640 (and d!2156577 d!2156527)))

(assert (=> bs!1834640 (= lambda!388443 lambda!388435)))

(declare-fun bs!1834641 () Bool)

(assert (= bs!1834641 (and d!2156577 d!2156397)))

(assert (=> bs!1834641 (not (= lambda!388443 lambda!388378))))

(declare-fun bs!1834642 () Bool)

(assert (= bs!1834642 (and d!2156577 d!2156437)))

(assert (=> bs!1834642 (= lambda!388443 lambda!388397)))

(declare-fun bs!1834643 () Bool)

(assert (= bs!1834643 (and d!2156577 d!2156551)))

(assert (=> bs!1834643 (= lambda!388443 lambda!388440)))

(declare-fun bs!1834644 () Bool)

(assert (= bs!1834644 (and d!2156577 b!6863998)))

(assert (=> bs!1834644 (not (= lambda!388443 lambda!388338))))

(assert (=> bs!1834641 (= lambda!388443 lambda!388377)))

(declare-fun bs!1834645 () Bool)

(assert (= bs!1834645 (and d!2156577 d!2156533)))

(assert (=> bs!1834645 (= lambda!388443 lambda!388436)))

(declare-fun bs!1834646 () Bool)

(assert (= bs!1834646 (and d!2156577 d!2156401)))

(assert (=> bs!1834646 (= lambda!388443 lambda!388381)))

(declare-fun bs!1834647 () Bool)

(assert (= bs!1834647 (and d!2156577 d!2156489)))

(assert (=> bs!1834647 (= lambda!388443 lambda!388426)))

(declare-fun bs!1834648 () Bool)

(assert (= bs!1834648 (and d!2156577 d!2156395)))

(assert (=> bs!1834648 (not (= lambda!388443 lambda!388372))))

(assert (=> d!2156577 (forall!15885 (exprs!6578 lt!2457736) lambda!388443)))

(assert (=> d!2156577 true))

(declare-fun _$47!961 () Unit!160153)

(assert (=> d!2156577 (= (choose!51158 lt!2457736 (exprs!6578 lt!2457736)) _$47!961)))

(declare-fun bs!1834649 () Bool)

(assert (= bs!1834649 d!2156577))

(declare-fun m!7597640 () Bool)

(assert (=> bs!1834649 m!7597640))

(assert (=> d!2156385 d!2156577))

(declare-fun d!2156579 () Bool)

(declare-fun lt!2457881 () Bool)

(assert (=> d!2156579 (= lt!2457881 (set.member lt!2457793 (content!13007 zl!343)))))

(declare-fun e!4138486 () Bool)

(assert (=> d!2156579 (= lt!2457881 e!4138486)))

(declare-fun res!2800625 () Bool)

(assert (=> d!2156579 (=> (not res!2800625) (not e!4138486))))

(assert (=> d!2156579 (= res!2800625 (is-Cons!66258 zl!343))))

(assert (=> d!2156579 (= (contains!20352 zl!343 lt!2457793) lt!2457881)))

(declare-fun b!6864863 () Bool)

(declare-fun e!4138487 () Bool)

(assert (=> b!6864863 (= e!4138486 e!4138487)))

(declare-fun res!2800626 () Bool)

(assert (=> b!6864863 (=> res!2800626 e!4138487)))

(assert (=> b!6864863 (= res!2800626 (= (h!72706 zl!343) lt!2457793))))

(declare-fun b!6864864 () Bool)

(assert (=> b!6864864 (= e!4138487 (contains!20352 (t!380125 zl!343) lt!2457793))))

(assert (= (and d!2156579 res!2800625) b!6864863))

(assert (= (and b!6864863 (not res!2800626)) b!6864864))

(assert (=> d!2156579 m!7597180))

(declare-fun m!7597642 () Bool)

(assert (=> d!2156579 m!7597642))

(declare-fun m!7597644 () Bool)

(assert (=> b!6864864 m!7597644))

(assert (=> b!6864187 d!2156579))

(assert (=> b!6864315 d!2156553))

(assert (=> b!6864315 d!2156507))

(declare-fun d!2156581 () Bool)

(assert (=> d!2156581 (= (nullable!6655 (reg!17023 r!7292)) (nullableFct!2529 (reg!17023 r!7292)))))

(declare-fun bs!1834650 () Bool)

(assert (= bs!1834650 d!2156581))

(declare-fun m!7597646 () Bool)

(assert (=> bs!1834650 m!7597646))

(assert (=> b!6864118 d!2156581))

(assert (=> d!2156391 d!2156523))

(declare-fun d!2156583 () Bool)

(assert (=> d!2156583 (= (nullable!6655 r!7292) (nullableFct!2529 r!7292))))

(declare-fun bs!1834651 () Bool)

(assert (= bs!1834651 d!2156583))

(declare-fun m!7597648 () Bool)

(assert (=> bs!1834651 m!7597648))

(assert (=> b!6864309 d!2156583))

(declare-fun d!2156585 () Bool)

(assert (=> d!2156585 (= (isEmpty!38619 (exprs!6578 lt!2457736)) (is-Nil!66257 (exprs!6578 lt!2457736)))))

(assert (=> b!6864154 d!2156585))

(declare-fun b!6864865 () Bool)

(declare-fun res!2800629 () Bool)

(declare-fun e!4138488 () Bool)

(assert (=> b!6864865 (=> res!2800629 e!4138488)))

(assert (=> b!6864865 (= res!2800629 (not (is-Concat!25539 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292)))))))

(declare-fun e!4138489 () Bool)

(assert (=> b!6864865 (= e!4138489 e!4138488)))

(declare-fun b!6864867 () Bool)

(declare-fun e!4138490 () Bool)

(assert (=> b!6864867 (= e!4138488 e!4138490)))

(declare-fun res!2800631 () Bool)

(assert (=> b!6864867 (=> (not res!2800631) (not e!4138490))))

(declare-fun call!625220 () Bool)

(assert (=> b!6864867 (= res!2800631 call!625220)))

(declare-fun b!6864868 () Bool)

(declare-fun res!2800630 () Bool)

(declare-fun e!4138494 () Bool)

(assert (=> b!6864868 (=> (not res!2800630) (not e!4138494))))

(assert (=> b!6864868 (= res!2800630 call!625220)))

(assert (=> b!6864868 (= e!4138489 e!4138494)))

(declare-fun b!6864869 () Bool)

(declare-fun e!4138491 () Bool)

(declare-fun call!625221 () Bool)

(assert (=> b!6864869 (= e!4138491 call!625221)))

(declare-fun b!6864870 () Bool)

(declare-fun e!4138493 () Bool)

(assert (=> b!6864870 (= e!4138493 e!4138489)))

(declare-fun c!1277732 () Bool)

(assert (=> b!6864870 (= c!1277732 (is-Union!16694 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))))))

(declare-fun bm!625214 () Bool)

(declare-fun call!625219 () Bool)

(assert (=> bm!625214 (= call!625219 call!625221)))

(declare-fun bm!625215 () Bool)

(declare-fun c!1277731 () Bool)

(assert (=> bm!625215 (= call!625221 (validRegex!8430 (ite c!1277731 (reg!17023 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))) (ite c!1277732 (regTwo!33901 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))) (regTwo!33900 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292)))))))))

(declare-fun b!6864871 () Bool)

(assert (=> b!6864871 (= e!4138493 e!4138491)))

(declare-fun res!2800628 () Bool)

(assert (=> b!6864871 (= res!2800628 (not (nullable!6655 (reg!17023 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))))))))

(assert (=> b!6864871 (=> (not res!2800628) (not e!4138491))))

(declare-fun b!6864872 () Bool)

(declare-fun e!4138492 () Bool)

(assert (=> b!6864872 (= e!4138492 e!4138493)))

(assert (=> b!6864872 (= c!1277731 (is-Star!16694 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))))))

(declare-fun b!6864866 () Bool)

(assert (=> b!6864866 (= e!4138494 call!625219)))

(declare-fun d!2156587 () Bool)

(declare-fun res!2800627 () Bool)

(assert (=> d!2156587 (=> res!2800627 e!4138492)))

(assert (=> d!2156587 (= res!2800627 (is-ElementMatch!16694 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))))))

(assert (=> d!2156587 (= (validRegex!8430 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))) e!4138492)))

(declare-fun bm!625216 () Bool)

(assert (=> bm!625216 (= call!625220 (validRegex!8430 (ite c!1277732 (regOne!33901 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))) (regOne!33900 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))))))))

(declare-fun b!6864873 () Bool)

(assert (=> b!6864873 (= e!4138490 call!625219)))

(assert (= (and d!2156587 (not res!2800627)) b!6864872))

(assert (= (and b!6864872 c!1277731) b!6864871))

(assert (= (and b!6864872 (not c!1277731)) b!6864870))

(assert (= (and b!6864871 res!2800628) b!6864869))

(assert (= (and b!6864870 c!1277732) b!6864868))

(assert (= (and b!6864870 (not c!1277732)) b!6864865))

(assert (= (and b!6864868 res!2800630) b!6864866))

(assert (= (and b!6864865 (not res!2800629)) b!6864867))

(assert (= (and b!6864867 res!2800631) b!6864873))

(assert (= (or b!6864866 b!6864873) bm!625214))

(assert (= (or b!6864868 b!6864867) bm!625216))

(assert (= (or b!6864869 bm!625214) bm!625215))

(declare-fun m!7597650 () Bool)

(assert (=> bm!625215 m!7597650))

(declare-fun m!7597652 () Bool)

(assert (=> b!6864871 m!7597652))

(declare-fun m!7597654 () Bool)

(assert (=> bm!625216 m!7597654))

(assert (=> bm!625141 d!2156587))

(assert (=> d!2156431 d!2156429))

(assert (=> d!2156431 d!2156425))

(declare-fun d!2156589 () Bool)

(assert (=> d!2156589 (< (contextDepthTotal!415 lt!2457736) (zipperDepthTotal!443 zl!343))))

(assert (=> d!2156589 true))

(declare-fun _$54!213 () Unit!160153)

(assert (=> d!2156589 (= (choose!51161 zl!343 lt!2457736) _$54!213)))

(declare-fun bs!1834652 () Bool)

(assert (= bs!1834652 d!2156589))

(assert (=> bs!1834652 m!7597068))

(assert (=> bs!1834652 m!7597066))

(assert (=> d!2156431 d!2156589))

(declare-fun d!2156591 () Bool)

(declare-fun lt!2457882 () Bool)

(assert (=> d!2156591 (= lt!2457882 (set.member lt!2457736 (content!13007 zl!343)))))

(declare-fun e!4138495 () Bool)

(assert (=> d!2156591 (= lt!2457882 e!4138495)))

(declare-fun res!2800632 () Bool)

(assert (=> d!2156591 (=> (not res!2800632) (not e!4138495))))

(assert (=> d!2156591 (= res!2800632 (is-Cons!66258 zl!343))))

(assert (=> d!2156591 (= (contains!20352 zl!343 lt!2457736) lt!2457882)))

(declare-fun b!6864874 () Bool)

(declare-fun e!4138496 () Bool)

(assert (=> b!6864874 (= e!4138495 e!4138496)))

(declare-fun res!2800633 () Bool)

(assert (=> b!6864874 (=> res!2800633 e!4138496)))

(assert (=> b!6864874 (= res!2800633 (= (h!72706 zl!343) lt!2457736))))

(declare-fun b!6864875 () Bool)

(assert (=> b!6864875 (= e!4138496 (contains!20352 (t!380125 zl!343) lt!2457736))))

(assert (= (and d!2156591 res!2800632) b!6864874))

(assert (= (and b!6864874 (not res!2800633)) b!6864875))

(assert (=> d!2156591 m!7597180))

(declare-fun m!7597656 () Bool)

(assert (=> d!2156591 m!7597656))

(declare-fun m!7597658 () Bool)

(assert (=> b!6864875 m!7597658))

(assert (=> d!2156431 d!2156591))

(declare-fun bs!1834653 () Bool)

(declare-fun d!2156593 () Bool)

(assert (= bs!1834653 (and d!2156593 b!6864011)))

(declare-fun lambda!388444 () Int)

(assert (=> bs!1834653 (not (= lambda!388444 lambda!388339))))

(declare-fun bs!1834654 () Bool)

(assert (= bs!1834654 (and d!2156593 d!2156377)))

(assert (=> bs!1834654 (= (= lambda!388366 lambda!388339) (= lambda!388444 lambda!388363))))

(declare-fun bs!1834655 () Bool)

(assert (= bs!1834655 (and d!2156593 d!2156379)))

(assert (=> bs!1834655 (not (= lambda!388444 lambda!388366))))

(assert (=> d!2156593 true))

(assert (=> d!2156593 (< (dynLambda!26517 order!27717 lambda!388366) (dynLambda!26517 order!27717 lambda!388444))))

(assert (=> d!2156593 (= (exists!2821 zl!343 lambda!388366) (not (forall!15887 zl!343 lambda!388444)))))

(declare-fun bs!1834656 () Bool)

(assert (= bs!1834656 d!2156593))

(declare-fun m!7597660 () Bool)

(assert (=> bs!1834656 m!7597660))

(assert (=> d!2156379 d!2156593))

(declare-fun bs!1834657 () Bool)

(declare-fun d!2156595 () Bool)

(assert (= bs!1834657 (and d!2156595 b!6864011)))

(declare-fun lambda!388447 () Int)

(assert (=> bs!1834657 (= lambda!388447 lambda!388339)))

(declare-fun bs!1834658 () Bool)

(assert (= bs!1834658 (and d!2156595 d!2156377)))

(assert (=> bs!1834658 (not (= lambda!388447 lambda!388363))))

(declare-fun bs!1834659 () Bool)

(assert (= bs!1834659 (and d!2156595 d!2156379)))

(assert (=> bs!1834659 (= lambda!388447 lambda!388366)))

(declare-fun bs!1834660 () Bool)

(assert (= bs!1834660 (and d!2156595 d!2156593)))

(assert (=> bs!1834660 (not (= lambda!388447 lambda!388444))))

(assert (=> d!2156595 true))

(assert (=> d!2156595 (exists!2821 zl!343 lambda!388447)))

(assert (=> d!2156595 true))

(declare-fun _$60!1018 () Unit!160153)

(assert (=> d!2156595 (= (choose!51157 zl!343 s!2326) _$60!1018)))

(declare-fun bs!1834661 () Bool)

(assert (= bs!1834661 d!2156595))

(declare-fun m!7597662 () Bool)

(assert (=> bs!1834661 m!7597662))

(assert (=> d!2156379 d!2156595))

(declare-fun d!2156597 () Bool)

(declare-fun c!1277736 () Bool)

(assert (=> d!2156597 (= c!1277736 (isEmpty!38620 s!2326))))

(declare-fun e!4138497 () Bool)

(assert (=> d!2156597 (= (matchZipper!2660 (content!13007 zl!343) s!2326) e!4138497)))

(declare-fun b!6864876 () Bool)

(assert (=> b!6864876 (= e!4138497 (nullableZipper!2367 (content!13007 zl!343)))))

(declare-fun b!6864877 () Bool)

(assert (=> b!6864877 (= e!4138497 (matchZipper!2660 (derivationStepZipper!2614 (content!13007 zl!343) (head!13772 s!2326)) (tail!12830 s!2326)))))

(assert (= (and d!2156597 c!1277736) b!6864876))

(assert (= (and d!2156597 (not c!1277736)) b!6864877))

(assert (=> d!2156597 m!7597206))

(assert (=> b!6864876 m!7597180))

(declare-fun m!7597664 () Bool)

(assert (=> b!6864876 m!7597664))

(assert (=> b!6864877 m!7597210))

(assert (=> b!6864877 m!7597180))

(assert (=> b!6864877 m!7597210))

(declare-fun m!7597666 () Bool)

(assert (=> b!6864877 m!7597666))

(assert (=> b!6864877 m!7597214))

(assert (=> b!6864877 m!7597666))

(assert (=> b!6864877 m!7597214))

(declare-fun m!7597668 () Bool)

(assert (=> b!6864877 m!7597668))

(assert (=> d!2156379 d!2156597))

(declare-fun d!2156599 () Bool)

(declare-fun c!1277737 () Bool)

(assert (=> d!2156599 (= c!1277737 (is-Nil!66258 zl!343))))

(declare-fun e!4138498 () (Set Context!12156))

(assert (=> d!2156599 (= (content!13007 zl!343) e!4138498)))

(declare-fun b!6864878 () Bool)

(assert (=> b!6864878 (= e!4138498 (as set.empty (Set Context!12156)))))

(declare-fun b!6864879 () Bool)

(assert (=> b!6864879 (= e!4138498 (set.union (set.insert (h!72706 zl!343) (as set.empty (Set Context!12156))) (content!13007 (t!380125 zl!343))))))

(assert (= (and d!2156599 c!1277737) b!6864878))

(assert (= (and d!2156599 (not c!1277737)) b!6864879))

(assert (=> b!6864879 m!7597322))

(declare-fun m!7597670 () Bool)

(assert (=> b!6864879 m!7597670))

(assert (=> d!2156379 d!2156599))

(declare-fun d!2156601 () Bool)

(declare-fun c!1277738 () Bool)

(assert (=> d!2156601 (= c!1277738 (is-Nil!66258 lt!2457818))))

(declare-fun e!4138499 () (Set Context!12156))

(assert (=> d!2156601 (= (content!13007 lt!2457818) e!4138499)))

(declare-fun b!6864880 () Bool)

(assert (=> b!6864880 (= e!4138499 (as set.empty (Set Context!12156)))))

(declare-fun b!6864881 () Bool)

(assert (=> b!6864881 (= e!4138499 (set.union (set.insert (h!72706 lt!2457818) (as set.empty (Set Context!12156))) (content!13007 (t!380125 lt!2457818))))))

(assert (= (and d!2156601 c!1277738) b!6864880))

(assert (= (and d!2156601 (not c!1277738)) b!6864881))

(declare-fun m!7597672 () Bool)

(assert (=> b!6864881 m!7597672))

(declare-fun m!7597674 () Bool)

(assert (=> b!6864881 m!7597674))

(assert (=> b!6864316 d!2156601))

(declare-fun b!6864882 () Bool)

(declare-fun res!2800636 () Bool)

(declare-fun e!4138500 () Bool)

(assert (=> b!6864882 (=> res!2800636 e!4138500)))

(assert (=> b!6864882 (= res!2800636 (not (is-Concat!25539 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))))))))

(declare-fun e!4138501 () Bool)

(assert (=> b!6864882 (= e!4138501 e!4138500)))

(declare-fun b!6864884 () Bool)

(declare-fun e!4138502 () Bool)

(assert (=> b!6864884 (= e!4138500 e!4138502)))

(declare-fun res!2800638 () Bool)

(assert (=> b!6864884 (=> (not res!2800638) (not e!4138502))))

(declare-fun call!625223 () Bool)

(assert (=> b!6864884 (= res!2800638 call!625223)))

(declare-fun b!6864885 () Bool)

(declare-fun res!2800637 () Bool)

(declare-fun e!4138506 () Bool)

(assert (=> b!6864885 (=> (not res!2800637) (not e!4138506))))

(assert (=> b!6864885 (= res!2800637 call!625223)))

(assert (=> b!6864885 (= e!4138501 e!4138506)))

(declare-fun b!6864886 () Bool)

(declare-fun e!4138503 () Bool)

(declare-fun call!625224 () Bool)

(assert (=> b!6864886 (= e!4138503 call!625224)))

(declare-fun b!6864887 () Bool)

(declare-fun e!4138505 () Bool)

(assert (=> b!6864887 (= e!4138505 e!4138501)))

(declare-fun c!1277740 () Bool)

(assert (=> b!6864887 (= c!1277740 (is-Union!16694 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))))))

(declare-fun bm!625217 () Bool)

(declare-fun call!625222 () Bool)

(assert (=> bm!625217 (= call!625222 call!625224)))

(declare-fun bm!625218 () Bool)

(declare-fun c!1277739 () Bool)

(assert (=> bm!625218 (= call!625224 (validRegex!8430 (ite c!1277739 (reg!17023 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))) (ite c!1277740 (regTwo!33901 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))) (regTwo!33900 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))))))))))

(declare-fun b!6864888 () Bool)

(assert (=> b!6864888 (= e!4138505 e!4138503)))

(declare-fun res!2800635 () Bool)

(assert (=> b!6864888 (= res!2800635 (not (nullable!6655 (reg!17023 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))))))))

(assert (=> b!6864888 (=> (not res!2800635) (not e!4138503))))

(declare-fun b!6864889 () Bool)

(declare-fun e!4138504 () Bool)

(assert (=> b!6864889 (= e!4138504 e!4138505)))

(assert (=> b!6864889 (= c!1277739 (is-Star!16694 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))))))

(declare-fun b!6864883 () Bool)

(assert (=> b!6864883 (= e!4138506 call!625222)))

(declare-fun d!2156603 () Bool)

(declare-fun res!2800634 () Bool)

(assert (=> d!2156603 (=> res!2800634 e!4138504)))

(assert (=> d!2156603 (= res!2800634 (is-ElementMatch!16694 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))))))

(assert (=> d!2156603 (= (validRegex!8430 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))) e!4138504)))

(declare-fun bm!625219 () Bool)

(assert (=> bm!625219 (= call!625223 (validRegex!8430 (ite c!1277740 (regOne!33901 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))) (regOne!33900 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))))))))

(declare-fun b!6864890 () Bool)

(assert (=> b!6864890 (= e!4138502 call!625222)))

(assert (= (and d!2156603 (not res!2800634)) b!6864889))

(assert (= (and b!6864889 c!1277739) b!6864888))

(assert (= (and b!6864889 (not c!1277739)) b!6864887))

(assert (= (and b!6864888 res!2800635) b!6864886))

(assert (= (and b!6864887 c!1277740) b!6864885))

(assert (= (and b!6864887 (not c!1277740)) b!6864882))

(assert (= (and b!6864885 res!2800637) b!6864883))

(assert (= (and b!6864882 (not res!2800636)) b!6864884))

(assert (= (and b!6864884 res!2800638) b!6864890))

(assert (= (or b!6864883 b!6864890) bm!625217))

(assert (= (or b!6864885 b!6864884) bm!625219))

(assert (= (or b!6864886 bm!625217) bm!625218))

(declare-fun m!7597676 () Bool)

(assert (=> bm!625218 m!7597676))

(declare-fun m!7597678 () Bool)

(assert (=> b!6864888 m!7597678))

(declare-fun m!7597680 () Bool)

(assert (=> bm!625219 m!7597680))

(assert (=> bm!625143 d!2156603))

(declare-fun d!2156605 () Bool)

(declare-fun res!2800639 () Bool)

(declare-fun e!4138507 () Bool)

(assert (=> d!2156605 (=> res!2800639 e!4138507)))

(assert (=> d!2156605 (= res!2800639 (is-Nil!66257 (t!380124 (exprs!6578 lt!2457736))))))

(assert (=> d!2156605 (= (forall!15885 (t!380124 (exprs!6578 lt!2457736)) lambda!388340) e!4138507)))

(declare-fun b!6864891 () Bool)

(declare-fun e!4138508 () Bool)

(assert (=> b!6864891 (= e!4138507 e!4138508)))

(declare-fun res!2800640 () Bool)

(assert (=> b!6864891 (=> (not res!2800640) (not e!4138508))))

(assert (=> b!6864891 (= res!2800640 (dynLambda!26518 lambda!388340 (h!72705 (t!380124 (exprs!6578 lt!2457736)))))))

(declare-fun b!6864892 () Bool)

(assert (=> b!6864892 (= e!4138508 (forall!15885 (t!380124 (t!380124 (exprs!6578 lt!2457736))) lambda!388340))))

(assert (= (and d!2156605 (not res!2800639)) b!6864891))

(assert (= (and b!6864891 res!2800640) b!6864892))

(declare-fun b_lambda!259509 () Bool)

(assert (=> (not b_lambda!259509) (not b!6864891)))

(declare-fun m!7597682 () Bool)

(assert (=> b!6864891 m!7597682))

(declare-fun m!7597684 () Bool)

(assert (=> b!6864892 m!7597684))

(assert (=> b!6864170 d!2156605))

(declare-fun d!2156607 () Bool)

(declare-fun res!2800641 () Bool)

(declare-fun e!4138509 () Bool)

(assert (=> d!2156607 (=> res!2800641 e!4138509)))

(assert (=> d!2156607 (= res!2800641 (is-Nil!66258 lt!2457818))))

(assert (=> d!2156607 (= (noDuplicate!2458 lt!2457818) e!4138509)))

(declare-fun b!6864893 () Bool)

(declare-fun e!4138510 () Bool)

(assert (=> b!6864893 (= e!4138509 e!4138510)))

(declare-fun res!2800642 () Bool)

(assert (=> b!6864893 (=> (not res!2800642) (not e!4138510))))

(assert (=> b!6864893 (= res!2800642 (not (contains!20352 (t!380125 lt!2457818) (h!72706 lt!2457818))))))

(declare-fun b!6864894 () Bool)

(assert (=> b!6864894 (= e!4138510 (noDuplicate!2458 (t!380125 lt!2457818)))))

(assert (= (and d!2156607 (not res!2800641)) b!6864893))

(assert (= (and b!6864893 res!2800642) b!6864894))

(declare-fun m!7597686 () Bool)

(assert (=> b!6864893 m!7597686))

(declare-fun m!7597688 () Bool)

(assert (=> b!6864894 m!7597688))

(assert (=> d!2156421 d!2156607))

(declare-fun d!2156609 () Bool)

(declare-fun e!4138513 () Bool)

(assert (=> d!2156609 e!4138513))

(declare-fun res!2800643 () Bool)

(assert (=> d!2156609 (=> (not res!2800643) (not e!4138513))))

(declare-fun res!2800644 () List!66382)

(assert (=> d!2156609 (= res!2800643 (noDuplicate!2458 res!2800644))))

(declare-fun e!4138512 () Bool)

(assert (=> d!2156609 e!4138512))

(assert (=> d!2156609 (= (choose!51156 z!1189) res!2800644)))

(declare-fun b!6864896 () Bool)

(declare-fun e!4138511 () Bool)

(declare-fun tp!1883498 () Bool)

(assert (=> b!6864896 (= e!4138511 tp!1883498)))

(declare-fun tp!1883499 () Bool)

(declare-fun b!6864895 () Bool)

(assert (=> b!6864895 (= e!4138512 (and (inv!84983 (h!72706 res!2800644)) e!4138511 tp!1883499))))

(declare-fun b!6864897 () Bool)

(assert (=> b!6864897 (= e!4138513 (= (content!13007 res!2800644) z!1189))))

(assert (= b!6864895 b!6864896))

(assert (= (and d!2156609 (is-Cons!66258 res!2800644)) b!6864895))

(assert (= (and d!2156609 res!2800643) b!6864897))

(declare-fun m!7597690 () Bool)

(assert (=> d!2156609 m!7597690))

(declare-fun m!7597692 () Bool)

(assert (=> b!6864895 m!7597692))

(declare-fun m!7597694 () Bool)

(assert (=> b!6864897 m!7597694))

(assert (=> d!2156421 d!2156609))

(declare-fun bs!1834662 () Bool)

(declare-fun d!2156611 () Bool)

(assert (= bs!1834662 (and d!2156611 d!2156375)))

(declare-fun lambda!388448 () Int)

(assert (=> bs!1834662 (= lambda!388448 lambda!388360)))

(declare-fun bs!1834663 () Bool)

(assert (= bs!1834663 (and d!2156611 d!2156435)))

(assert (=> bs!1834663 (= lambda!388448 lambda!388396)))

(declare-fun bs!1834664 () Bool)

(assert (= bs!1834664 (and d!2156611 b!6864001)))

(assert (=> bs!1834664 (= lambda!388448 lambda!388340)))

(declare-fun bs!1834665 () Bool)

(assert (= bs!1834665 (and d!2156611 d!2156495)))

(assert (=> bs!1834665 (not (= lambda!388448 lambda!388430))))

(declare-fun bs!1834666 () Bool)

(assert (= bs!1834666 (and d!2156611 d!2156385)))

(assert (=> bs!1834666 (= lambda!388448 lambda!388369)))

(declare-fun bs!1834667 () Bool)

(assert (= bs!1834667 (and d!2156611 d!2156577)))

(assert (=> bs!1834667 (= lambda!388448 lambda!388443)))

(declare-fun bs!1834668 () Bool)

(assert (= bs!1834668 (and d!2156611 d!2156493)))

(assert (=> bs!1834668 (not (= lambda!388448 lambda!388427))))

(declare-fun bs!1834669 () Bool)

(assert (= bs!1834669 (and d!2156611 d!2156527)))

(assert (=> bs!1834669 (= lambda!388448 lambda!388435)))

(declare-fun bs!1834670 () Bool)

(assert (= bs!1834670 (and d!2156611 d!2156397)))

(assert (=> bs!1834670 (not (= lambda!388448 lambda!388378))))

(declare-fun bs!1834671 () Bool)

(assert (= bs!1834671 (and d!2156611 d!2156437)))

(assert (=> bs!1834671 (= lambda!388448 lambda!388397)))

(declare-fun bs!1834672 () Bool)

(assert (= bs!1834672 (and d!2156611 d!2156551)))

(assert (=> bs!1834672 (= lambda!388448 lambda!388440)))

(declare-fun bs!1834673 () Bool)

(assert (= bs!1834673 (and d!2156611 b!6863998)))

(assert (=> bs!1834673 (not (= lambda!388448 lambda!388338))))

(assert (=> bs!1834670 (= lambda!388448 lambda!388377)))

(declare-fun bs!1834674 () Bool)

(assert (= bs!1834674 (and d!2156611 d!2156533)))

(assert (=> bs!1834674 (= lambda!388448 lambda!388436)))

(declare-fun bs!1834675 () Bool)

(assert (= bs!1834675 (and d!2156611 d!2156401)))

(assert (=> bs!1834675 (= lambda!388448 lambda!388381)))

(declare-fun bs!1834676 () Bool)

(assert (= bs!1834676 (and d!2156611 d!2156489)))

(assert (=> bs!1834676 (= lambda!388448 lambda!388426)))

(declare-fun bs!1834677 () Bool)

(assert (= bs!1834677 (and d!2156611 d!2156395)))

(assert (=> bs!1834677 (not (= lambda!388448 lambda!388372))))

(declare-fun b!6864898 () Bool)

(declare-fun e!4138518 () Regex!16694)

(assert (=> b!6864898 (= e!4138518 (Concat!25539 (h!72705 (exprs!6578 (h!72706 zl!343))) (generalisedConcat!2282 (t!380124 (exprs!6578 (h!72706 zl!343))))))))

(declare-fun b!6864899 () Bool)

(declare-fun e!4138516 () Bool)

(declare-fun e!4138517 () Bool)

(assert (=> b!6864899 (= e!4138516 e!4138517)))

(declare-fun c!1277742 () Bool)

(assert (=> b!6864899 (= c!1277742 (isEmpty!38619 (exprs!6578 (h!72706 zl!343))))))

(declare-fun b!6864900 () Bool)

(declare-fun e!4138514 () Bool)

(assert (=> b!6864900 (= e!4138517 e!4138514)))

(declare-fun c!1277744 () Bool)

(assert (=> b!6864900 (= c!1277744 (isEmpty!38619 (tail!12829 (exprs!6578 (h!72706 zl!343)))))))

(declare-fun b!6864901 () Bool)

(declare-fun lt!2457883 () Regex!16694)

(assert (=> b!6864901 (= e!4138514 (isConcat!1537 lt!2457883))))

(declare-fun b!6864902 () Bool)

(assert (=> b!6864902 (= e!4138517 (isEmptyExpr!2014 lt!2457883))))

(declare-fun b!6864903 () Bool)

(declare-fun e!4138515 () Bool)

(assert (=> b!6864903 (= e!4138515 (isEmpty!38619 (t!380124 (exprs!6578 (h!72706 zl!343)))))))

(declare-fun b!6864904 () Bool)

(assert (=> b!6864904 (= e!4138514 (= lt!2457883 (head!13770 (exprs!6578 (h!72706 zl!343)))))))

(declare-fun b!6864905 () Bool)

(assert (=> b!6864905 (= e!4138518 EmptyExpr!16694)))

(assert (=> d!2156611 e!4138516))

(declare-fun res!2800646 () Bool)

(assert (=> d!2156611 (=> (not res!2800646) (not e!4138516))))

(assert (=> d!2156611 (= res!2800646 (validRegex!8430 lt!2457883))))

(declare-fun e!4138519 () Regex!16694)

(assert (=> d!2156611 (= lt!2457883 e!4138519)))

(declare-fun c!1277743 () Bool)

(assert (=> d!2156611 (= c!1277743 e!4138515)))

(declare-fun res!2800645 () Bool)

(assert (=> d!2156611 (=> (not res!2800645) (not e!4138515))))

(assert (=> d!2156611 (= res!2800645 (is-Cons!66257 (exprs!6578 (h!72706 zl!343))))))

(assert (=> d!2156611 (forall!15885 (exprs!6578 (h!72706 zl!343)) lambda!388448)))

(assert (=> d!2156611 (= (generalisedConcat!2282 (exprs!6578 (h!72706 zl!343))) lt!2457883)))

(declare-fun b!6864906 () Bool)

(assert (=> b!6864906 (= e!4138519 e!4138518)))

(declare-fun c!1277741 () Bool)

(assert (=> b!6864906 (= c!1277741 (is-Cons!66257 (exprs!6578 (h!72706 zl!343))))))

(declare-fun b!6864907 () Bool)

(assert (=> b!6864907 (= e!4138519 (h!72705 (exprs!6578 (h!72706 zl!343))))))

(assert (= (and d!2156611 res!2800645) b!6864903))

(assert (= (and d!2156611 c!1277743) b!6864907))

(assert (= (and d!2156611 (not c!1277743)) b!6864906))

(assert (= (and b!6864906 c!1277741) b!6864898))

(assert (= (and b!6864906 (not c!1277741)) b!6864905))

(assert (= (and d!2156611 res!2800646) b!6864899))

(assert (= (and b!6864899 c!1277742) b!6864902))

(assert (= (and b!6864899 (not c!1277742)) b!6864900))

(assert (= (and b!6864900 c!1277744) b!6864904))

(assert (= (and b!6864900 (not c!1277744)) b!6864901))

(declare-fun m!7597696 () Bool)

(assert (=> b!6864899 m!7597696))

(declare-fun m!7597698 () Bool)

(assert (=> b!6864898 m!7597698))

(declare-fun m!7597700 () Bool)

(assert (=> b!6864903 m!7597700))

(declare-fun m!7597702 () Bool)

(assert (=> b!6864902 m!7597702))

(declare-fun m!7597704 () Bool)

(assert (=> d!2156611 m!7597704))

(declare-fun m!7597706 () Bool)

(assert (=> d!2156611 m!7597706))

(declare-fun m!7597708 () Bool)

(assert (=> b!6864904 m!7597708))

(declare-fun m!7597710 () Bool)

(assert (=> b!6864901 m!7597710))

(declare-fun m!7597712 () Bool)

(assert (=> b!6864900 m!7597712))

(assert (=> b!6864900 m!7597712))

(declare-fun m!7597714 () Bool)

(assert (=> b!6864900 m!7597714))

(assert (=> b!6864217 d!2156611))

(declare-fun bs!1834678 () Bool)

(declare-fun d!2156613 () Bool)

(assert (= bs!1834678 (and d!2156613 d!2156375)))

(declare-fun lambda!388449 () Int)

(assert (=> bs!1834678 (= lambda!388449 lambda!388360)))

(declare-fun bs!1834679 () Bool)

(assert (= bs!1834679 (and d!2156613 d!2156435)))

(assert (=> bs!1834679 (= lambda!388449 lambda!388396)))

(declare-fun bs!1834680 () Bool)

(assert (= bs!1834680 (and d!2156613 b!6864001)))

(assert (=> bs!1834680 (= lambda!388449 lambda!388340)))

(declare-fun bs!1834681 () Bool)

(assert (= bs!1834681 (and d!2156613 d!2156495)))

(assert (=> bs!1834681 (not (= lambda!388449 lambda!388430))))

(declare-fun bs!1834682 () Bool)

(assert (= bs!1834682 (and d!2156613 d!2156611)))

(assert (=> bs!1834682 (= lambda!388449 lambda!388448)))

(declare-fun bs!1834683 () Bool)

(assert (= bs!1834683 (and d!2156613 d!2156385)))

(assert (=> bs!1834683 (= lambda!388449 lambda!388369)))

(declare-fun bs!1834684 () Bool)

(assert (= bs!1834684 (and d!2156613 d!2156577)))

(assert (=> bs!1834684 (= lambda!388449 lambda!388443)))

(declare-fun bs!1834685 () Bool)

(assert (= bs!1834685 (and d!2156613 d!2156493)))

(assert (=> bs!1834685 (not (= lambda!388449 lambda!388427))))

(declare-fun bs!1834686 () Bool)

(assert (= bs!1834686 (and d!2156613 d!2156527)))

(assert (=> bs!1834686 (= lambda!388449 lambda!388435)))

(declare-fun bs!1834687 () Bool)

(assert (= bs!1834687 (and d!2156613 d!2156397)))

(assert (=> bs!1834687 (not (= lambda!388449 lambda!388378))))

(declare-fun bs!1834688 () Bool)

(assert (= bs!1834688 (and d!2156613 d!2156437)))

(assert (=> bs!1834688 (= lambda!388449 lambda!388397)))

(declare-fun bs!1834689 () Bool)

(assert (= bs!1834689 (and d!2156613 d!2156551)))

(assert (=> bs!1834689 (= lambda!388449 lambda!388440)))

(declare-fun bs!1834690 () Bool)

(assert (= bs!1834690 (and d!2156613 b!6863998)))

(assert (=> bs!1834690 (not (= lambda!388449 lambda!388338))))

(assert (=> bs!1834687 (= lambda!388449 lambda!388377)))

(declare-fun bs!1834691 () Bool)

(assert (= bs!1834691 (and d!2156613 d!2156533)))

(assert (=> bs!1834691 (= lambda!388449 lambda!388436)))

(declare-fun bs!1834692 () Bool)

(assert (= bs!1834692 (and d!2156613 d!2156401)))

(assert (=> bs!1834692 (= lambda!388449 lambda!388381)))

(declare-fun bs!1834693 () Bool)

(assert (= bs!1834693 (and d!2156613 d!2156489)))

(assert (=> bs!1834693 (= lambda!388449 lambda!388426)))

(declare-fun bs!1834694 () Bool)

(assert (= bs!1834694 (and d!2156613 d!2156395)))

(assert (=> bs!1834694 (not (= lambda!388449 lambda!388372))))

(declare-fun lt!2457884 () List!66381)

(assert (=> d!2156613 (forall!15885 lt!2457884 lambda!388449)))

(declare-fun e!4138520 () List!66381)

(assert (=> d!2156613 (= lt!2457884 e!4138520)))

(declare-fun c!1277745 () Bool)

(assert (=> d!2156613 (= c!1277745 (is-Cons!66258 (t!380125 zl!343)))))

(assert (=> d!2156613 (= (unfocusZipperList!2111 (t!380125 zl!343)) lt!2457884)))

(declare-fun b!6864908 () Bool)

(assert (=> b!6864908 (= e!4138520 (Cons!66257 (generalisedConcat!2282 (exprs!6578 (h!72706 (t!380125 zl!343)))) (unfocusZipperList!2111 (t!380125 (t!380125 zl!343)))))))

(declare-fun b!6864909 () Bool)

(assert (=> b!6864909 (= e!4138520 Nil!66257)))

(assert (= (and d!2156613 c!1277745) b!6864908))

(assert (= (and d!2156613 (not c!1277745)) b!6864909))

(declare-fun m!7597716 () Bool)

(assert (=> d!2156613 m!7597716))

(declare-fun m!7597718 () Bool)

(assert (=> b!6864908 m!7597718))

(declare-fun m!7597720 () Bool)

(assert (=> b!6864908 m!7597720))

(assert (=> b!6864217 d!2156613))

(declare-fun d!2156615 () Bool)

(declare-fun res!2800647 () Bool)

(declare-fun e!4138521 () Bool)

(assert (=> d!2156615 (=> res!2800647 e!4138521)))

(assert (=> d!2156615 (= res!2800647 (is-Nil!66257 (exprs!6578 (h!72706 zl!343))))))

(assert (=> d!2156615 (= (forall!15885 (exprs!6578 (h!72706 zl!343)) lambda!388396) e!4138521)))

(declare-fun b!6864910 () Bool)

(declare-fun e!4138522 () Bool)

(assert (=> b!6864910 (= e!4138521 e!4138522)))

(declare-fun res!2800648 () Bool)

(assert (=> b!6864910 (=> (not res!2800648) (not e!4138522))))

(assert (=> b!6864910 (= res!2800648 (dynLambda!26518 lambda!388396 (h!72705 (exprs!6578 (h!72706 zl!343)))))))

(declare-fun b!6864911 () Bool)

(assert (=> b!6864911 (= e!4138522 (forall!15885 (t!380124 (exprs!6578 (h!72706 zl!343))) lambda!388396))))

(assert (= (and d!2156615 (not res!2800647)) b!6864910))

(assert (= (and b!6864910 res!2800648) b!6864911))

(declare-fun b_lambda!259511 () Bool)

(assert (=> (not b_lambda!259511) (not b!6864910)))

(declare-fun m!7597722 () Bool)

(assert (=> b!6864910 m!7597722))

(declare-fun m!7597724 () Bool)

(assert (=> b!6864911 m!7597724))

(assert (=> d!2156435 d!2156615))

(declare-fun d!2156617 () Bool)

(declare-fun c!1277746 () Bool)

(assert (=> d!2156617 (= c!1277746 (isEmpty!38620 s!2326))))

(declare-fun e!4138523 () Bool)

(assert (=> d!2156617 (= (matchZipper!2660 (set.insert (h!72706 zl!343) (as set.empty (Set Context!12156))) s!2326) e!4138523)))

(declare-fun b!6864912 () Bool)

(assert (=> b!6864912 (= e!4138523 (nullableZipper!2367 (set.insert (h!72706 zl!343) (as set.empty (Set Context!12156)))))))

(declare-fun b!6864913 () Bool)

(assert (=> b!6864913 (= e!4138523 (matchZipper!2660 (derivationStepZipper!2614 (set.insert (h!72706 zl!343) (as set.empty (Set Context!12156))) (head!13772 s!2326)) (tail!12830 s!2326)))))

(assert (= (and d!2156617 c!1277746) b!6864912))

(assert (= (and d!2156617 (not c!1277746)) b!6864913))

(assert (=> d!2156617 m!7597206))

(assert (=> b!6864912 m!7597322))

(declare-fun m!7597726 () Bool)

(assert (=> b!6864912 m!7597726))

(assert (=> b!6864913 m!7597210))

(assert (=> b!6864913 m!7597322))

(assert (=> b!6864913 m!7597210))

(declare-fun m!7597728 () Bool)

(assert (=> b!6864913 m!7597728))

(assert (=> b!6864913 m!7597214))

(assert (=> b!6864913 m!7597728))

(assert (=> b!6864913 m!7597214))

(declare-fun m!7597730 () Bool)

(assert (=> b!6864913 m!7597730))

(assert (=> bs!1834505 d!2156617))

(declare-fun bs!1834695 () Bool)

(declare-fun b!6864917 () Bool)

(assert (= bs!1834695 (and b!6864917 b!6864260)))

(declare-fun lambda!388450 () Int)

(assert (=> bs!1834695 (= (and (= (reg!17023 (regTwo!33901 r!7292)) (reg!17023 r!7292)) (= (regTwo!33901 r!7292) r!7292)) (= lambda!388450 lambda!388386))))

(declare-fun bs!1834696 () Bool)

(assert (= bs!1834696 (and b!6864917 b!6864261)))

(assert (=> bs!1834696 (not (= lambda!388450 lambda!388387))))

(declare-fun bs!1834697 () Bool)

(assert (= bs!1834697 (and b!6864917 b!6864671)))

(assert (=> bs!1834697 (= (and (= (reg!17023 (regTwo!33901 r!7292)) (reg!17023 (regOne!33901 r!7292))) (= (regTwo!33901 r!7292) (regOne!33901 r!7292))) (= lambda!388450 lambda!388431))))

(declare-fun bs!1834698 () Bool)

(assert (= bs!1834698 (and b!6864917 b!6864672)))

(assert (=> bs!1834698 (not (= lambda!388450 lambda!388432))))

(assert (=> b!6864917 true))

(assert (=> b!6864917 true))

(declare-fun bs!1834699 () Bool)

(declare-fun b!6864918 () Bool)

(assert (= bs!1834699 (and b!6864918 b!6864671)))

(declare-fun lambda!388451 () Int)

(assert (=> bs!1834699 (not (= lambda!388451 lambda!388431))))

(declare-fun bs!1834700 () Bool)

(assert (= bs!1834700 (and b!6864918 b!6864260)))

(assert (=> bs!1834700 (not (= lambda!388451 lambda!388386))))

(declare-fun bs!1834701 () Bool)

(assert (= bs!1834701 (and b!6864918 b!6864261)))

(assert (=> bs!1834701 (= (and (= (regOne!33900 (regTwo!33901 r!7292)) (regOne!33900 r!7292)) (= (regTwo!33900 (regTwo!33901 r!7292)) (regTwo!33900 r!7292))) (= lambda!388451 lambda!388387))))

(declare-fun bs!1834702 () Bool)

(assert (= bs!1834702 (and b!6864918 b!6864672)))

(assert (=> bs!1834702 (= (and (= (regOne!33900 (regTwo!33901 r!7292)) (regOne!33900 (regOne!33901 r!7292))) (= (regTwo!33900 (regTwo!33901 r!7292)) (regTwo!33900 (regOne!33901 r!7292)))) (= lambda!388451 lambda!388432))))

(declare-fun bs!1834703 () Bool)

(assert (= bs!1834703 (and b!6864918 b!6864917)))

(assert (=> bs!1834703 (not (= lambda!388451 lambda!388450))))

(assert (=> b!6864918 true))

(assert (=> b!6864918 true))

(declare-fun b!6864914 () Bool)

(declare-fun e!4138530 () Bool)

(declare-fun e!4138524 () Bool)

(assert (=> b!6864914 (= e!4138530 e!4138524)))

(declare-fun c!1277749 () Bool)

(assert (=> b!6864914 (= c!1277749 (is-Star!16694 (regTwo!33901 r!7292)))))

(declare-fun b!6864915 () Bool)

(declare-fun e!4138526 () Bool)

(declare-fun e!4138525 () Bool)

(assert (=> b!6864915 (= e!4138526 e!4138525)))

(declare-fun res!2800651 () Bool)

(assert (=> b!6864915 (= res!2800651 (not (is-EmptyLang!16694 (regTwo!33901 r!7292))))))

(assert (=> b!6864915 (=> (not res!2800651) (not e!4138525))))

(declare-fun b!6864916 () Bool)

(declare-fun c!1277748 () Bool)

(assert (=> b!6864916 (= c!1277748 (is-Union!16694 (regTwo!33901 r!7292)))))

(declare-fun e!4138529 () Bool)

(assert (=> b!6864916 (= e!4138529 e!4138530)))

(declare-fun e!4138527 () Bool)

(declare-fun call!625226 () Bool)

(assert (=> b!6864917 (= e!4138527 call!625226)))

(assert (=> b!6864918 (= e!4138524 call!625226)))

(declare-fun b!6864919 () Bool)

(declare-fun e!4138528 () Bool)

(assert (=> b!6864919 (= e!4138530 e!4138528)))

(declare-fun res!2800649 () Bool)

(assert (=> b!6864919 (= res!2800649 (matchRSpec!3795 (regOne!33901 (regTwo!33901 r!7292)) s!2326))))

(assert (=> b!6864919 (=> res!2800649 e!4138528)))

(declare-fun bm!625220 () Bool)

(declare-fun call!625225 () Bool)

(assert (=> bm!625220 (= call!625225 (isEmpty!38620 s!2326))))

(declare-fun d!2156619 () Bool)

(declare-fun c!1277750 () Bool)

(assert (=> d!2156619 (= c!1277750 (is-EmptyExpr!16694 (regTwo!33901 r!7292)))))

(assert (=> d!2156619 (= (matchRSpec!3795 (regTwo!33901 r!7292) s!2326) e!4138526)))

(declare-fun b!6864920 () Bool)

(declare-fun c!1277747 () Bool)

(assert (=> b!6864920 (= c!1277747 (is-ElementMatch!16694 (regTwo!33901 r!7292)))))

(assert (=> b!6864920 (= e!4138525 e!4138529)))

(declare-fun b!6864921 () Bool)

(assert (=> b!6864921 (= e!4138529 (= s!2326 (Cons!66259 (c!1277522 (regTwo!33901 r!7292)) Nil!66259)))))

(declare-fun b!6864922 () Bool)

(declare-fun res!2800650 () Bool)

(assert (=> b!6864922 (=> res!2800650 e!4138527)))

(assert (=> b!6864922 (= res!2800650 call!625225)))

(assert (=> b!6864922 (= e!4138524 e!4138527)))

(declare-fun bm!625221 () Bool)

(assert (=> bm!625221 (= call!625226 (Exists!3754 (ite c!1277749 lambda!388450 lambda!388451)))))

(declare-fun b!6864923 () Bool)

(assert (=> b!6864923 (= e!4138528 (matchRSpec!3795 (regTwo!33901 (regTwo!33901 r!7292)) s!2326))))

(declare-fun b!6864924 () Bool)

(assert (=> b!6864924 (= e!4138526 call!625225)))

(assert (= (and d!2156619 c!1277750) b!6864924))

(assert (= (and d!2156619 (not c!1277750)) b!6864915))

(assert (= (and b!6864915 res!2800651) b!6864920))

(assert (= (and b!6864920 c!1277747) b!6864921))

(assert (= (and b!6864920 (not c!1277747)) b!6864916))

(assert (= (and b!6864916 c!1277748) b!6864919))

(assert (= (and b!6864916 (not c!1277748)) b!6864914))

(assert (= (and b!6864919 (not res!2800649)) b!6864923))

(assert (= (and b!6864914 c!1277749) b!6864922))

(assert (= (and b!6864914 (not c!1277749)) b!6864918))

(assert (= (and b!6864922 (not res!2800650)) b!6864917))

(assert (= (or b!6864917 b!6864918) bm!625221))

(assert (= (or b!6864924 b!6864922) bm!625220))

(declare-fun m!7597732 () Bool)

(assert (=> b!6864919 m!7597732))

(assert (=> bm!625220 m!7597206))

(declare-fun m!7597734 () Bool)

(assert (=> bm!625221 m!7597734))

(declare-fun m!7597736 () Bool)

(assert (=> b!6864923 m!7597736))

(assert (=> b!6864266 d!2156619))

(declare-fun bs!1834704 () Bool)

(declare-fun d!2156621 () Bool)

(assert (= bs!1834704 (and d!2156621 d!2156377)))

(declare-fun lambda!388454 () Int)

(assert (=> bs!1834704 (not (= lambda!388454 lambda!388363))))

(declare-fun bs!1834705 () Bool)

(assert (= bs!1834705 (and d!2156621 d!2156379)))

(assert (=> bs!1834705 (not (= lambda!388454 lambda!388366))))

(declare-fun bs!1834706 () Bool)

(assert (= bs!1834706 (and d!2156621 b!6864011)))

(assert (=> bs!1834706 (not (= lambda!388454 lambda!388339))))

(declare-fun bs!1834707 () Bool)

(assert (= bs!1834707 (and d!2156621 d!2156595)))

(assert (=> bs!1834707 (not (= lambda!388454 lambda!388447))))

(declare-fun bs!1834708 () Bool)

(assert (= bs!1834708 (and d!2156621 d!2156593)))

(assert (=> bs!1834708 (not (= lambda!388454 lambda!388444))))

(declare-fun exists!2824 ((Set Context!12156) Int) Bool)

(assert (=> d!2156621 (= (nullableZipper!2367 z!1189) (exists!2824 z!1189 lambda!388454))))

(declare-fun bs!1834709 () Bool)

(assert (= bs!1834709 d!2156621))

(declare-fun m!7597738 () Bool)

(assert (=> bs!1834709 m!7597738))

(assert (=> b!6864193 d!2156621))

(declare-fun b!6864925 () Bool)

(declare-fun e!4138531 () Bool)

(declare-fun tp!1883500 () Bool)

(declare-fun tp!1883501 () Bool)

(assert (=> b!6864925 (= e!4138531 (and tp!1883500 tp!1883501))))

(assert (=> b!6864393 (= tp!1883421 e!4138531)))

(assert (= (and b!6864393 (is-Cons!66257 (exprs!6578 (h!72706 (t!380125 zl!343))))) b!6864925))

(declare-fun b!6864927 () Bool)

(declare-fun e!4138533 () Bool)

(declare-fun tp!1883502 () Bool)

(assert (=> b!6864927 (= e!4138533 tp!1883502)))

(declare-fun b!6864926 () Bool)

(declare-fun e!4138532 () Bool)

(declare-fun tp!1883503 () Bool)

(assert (=> b!6864926 (= e!4138532 (and (inv!84983 (h!72706 (t!380125 (t!380125 zl!343)))) e!4138533 tp!1883503))))

(assert (=> b!6864392 (= tp!1883422 e!4138532)))

(assert (= b!6864926 b!6864927))

(assert (= (and b!6864392 (is-Cons!66258 (t!380125 (t!380125 zl!343)))) b!6864926))

(declare-fun m!7597740 () Bool)

(assert (=> b!6864926 m!7597740))

(declare-fun b!6864928 () Bool)

(declare-fun e!4138534 () Bool)

(declare-fun tp!1883504 () Bool)

(assert (=> b!6864928 (= e!4138534 (and tp_is_empty!42641 tp!1883504))))

(assert (=> b!6864371 (= tp!1883398 e!4138534)))

(assert (= (and b!6864371 (is-Cons!66259 (t!380126 (t!380126 s!2326)))) b!6864928))

(declare-fun b!6864931 () Bool)

(declare-fun e!4138535 () Bool)

(declare-fun tp!1883509 () Bool)

(assert (=> b!6864931 (= e!4138535 tp!1883509)))

(declare-fun b!6864929 () Bool)

(assert (=> b!6864929 (= e!4138535 tp_is_empty!42641)))

(assert (=> b!6864364 (= tp!1883393 e!4138535)))

(declare-fun b!6864932 () Bool)

(declare-fun tp!1883505 () Bool)

(declare-fun tp!1883506 () Bool)

(assert (=> b!6864932 (= e!4138535 (and tp!1883505 tp!1883506))))

(declare-fun b!6864930 () Bool)

(declare-fun tp!1883507 () Bool)

(declare-fun tp!1883508 () Bool)

(assert (=> b!6864930 (= e!4138535 (and tp!1883507 tp!1883508))))

(assert (= (and b!6864364 (is-ElementMatch!16694 (regOne!33900 (regTwo!33900 r!7292)))) b!6864929))

(assert (= (and b!6864364 (is-Concat!25539 (regOne!33900 (regTwo!33900 r!7292)))) b!6864930))

(assert (= (and b!6864364 (is-Star!16694 (regOne!33900 (regTwo!33900 r!7292)))) b!6864931))

(assert (= (and b!6864364 (is-Union!16694 (regOne!33900 (regTwo!33900 r!7292)))) b!6864932))

(declare-fun b!6864935 () Bool)

(declare-fun e!4138536 () Bool)

(declare-fun tp!1883514 () Bool)

(assert (=> b!6864935 (= e!4138536 tp!1883514)))

(declare-fun b!6864933 () Bool)

(assert (=> b!6864933 (= e!4138536 tp_is_empty!42641)))

(assert (=> b!6864364 (= tp!1883394 e!4138536)))

(declare-fun b!6864936 () Bool)

(declare-fun tp!1883510 () Bool)

(declare-fun tp!1883511 () Bool)

(assert (=> b!6864936 (= e!4138536 (and tp!1883510 tp!1883511))))

(declare-fun b!6864934 () Bool)

(declare-fun tp!1883512 () Bool)

(declare-fun tp!1883513 () Bool)

(assert (=> b!6864934 (= e!4138536 (and tp!1883512 tp!1883513))))

(assert (= (and b!6864364 (is-ElementMatch!16694 (regTwo!33900 (regTwo!33900 r!7292)))) b!6864933))

(assert (= (and b!6864364 (is-Concat!25539 (regTwo!33900 (regTwo!33900 r!7292)))) b!6864934))

(assert (= (and b!6864364 (is-Star!16694 (regTwo!33900 (regTwo!33900 r!7292)))) b!6864935))

(assert (= (and b!6864364 (is-Union!16694 (regTwo!33900 (regTwo!33900 r!7292)))) b!6864936))

(declare-fun b!6864939 () Bool)

(declare-fun e!4138537 () Bool)

(declare-fun tp!1883519 () Bool)

(assert (=> b!6864939 (= e!4138537 tp!1883519)))

(declare-fun b!6864937 () Bool)

(assert (=> b!6864937 (= e!4138537 tp_is_empty!42641)))

(assert (=> b!6864377 (= tp!1883406 e!4138537)))

(declare-fun b!6864940 () Bool)

(declare-fun tp!1883515 () Bool)

(declare-fun tp!1883516 () Bool)

(assert (=> b!6864940 (= e!4138537 (and tp!1883515 tp!1883516))))

(declare-fun b!6864938 () Bool)

(declare-fun tp!1883517 () Bool)

(declare-fun tp!1883518 () Bool)

(assert (=> b!6864938 (= e!4138537 (and tp!1883517 tp!1883518))))

(assert (= (and b!6864377 (is-ElementMatch!16694 (regOne!33900 (regTwo!33901 r!7292)))) b!6864937))

(assert (= (and b!6864377 (is-Concat!25539 (regOne!33900 (regTwo!33901 r!7292)))) b!6864938))

(assert (= (and b!6864377 (is-Star!16694 (regOne!33900 (regTwo!33901 r!7292)))) b!6864939))

(assert (= (and b!6864377 (is-Union!16694 (regOne!33900 (regTwo!33901 r!7292)))) b!6864940))

(declare-fun b!6864943 () Bool)

(declare-fun e!4138538 () Bool)

(declare-fun tp!1883524 () Bool)

(assert (=> b!6864943 (= e!4138538 tp!1883524)))

(declare-fun b!6864941 () Bool)

(assert (=> b!6864941 (= e!4138538 tp_is_empty!42641)))

(assert (=> b!6864377 (= tp!1883407 e!4138538)))

(declare-fun b!6864944 () Bool)

(declare-fun tp!1883520 () Bool)

(declare-fun tp!1883521 () Bool)

(assert (=> b!6864944 (= e!4138538 (and tp!1883520 tp!1883521))))

(declare-fun b!6864942 () Bool)

(declare-fun tp!1883522 () Bool)

(declare-fun tp!1883523 () Bool)

(assert (=> b!6864942 (= e!4138538 (and tp!1883522 tp!1883523))))

(assert (= (and b!6864377 (is-ElementMatch!16694 (regTwo!33900 (regTwo!33901 r!7292)))) b!6864941))

(assert (= (and b!6864377 (is-Concat!25539 (regTwo!33900 (regTwo!33901 r!7292)))) b!6864942))

(assert (= (and b!6864377 (is-Star!16694 (regTwo!33900 (regTwo!33901 r!7292)))) b!6864943))

(assert (= (and b!6864377 (is-Union!16694 (regTwo!33900 (regTwo!33901 r!7292)))) b!6864944))

(declare-fun b!6864947 () Bool)

(declare-fun e!4138539 () Bool)

(declare-fun tp!1883529 () Bool)

(assert (=> b!6864947 (= e!4138539 tp!1883529)))

(declare-fun b!6864945 () Bool)

(assert (=> b!6864945 (= e!4138539 tp_is_empty!42641)))

(assert (=> b!6864362 (= tp!1883386 e!4138539)))

(declare-fun b!6864948 () Bool)

(declare-fun tp!1883525 () Bool)

(declare-fun tp!1883526 () Bool)

(assert (=> b!6864948 (= e!4138539 (and tp!1883525 tp!1883526))))

(declare-fun b!6864946 () Bool)

(declare-fun tp!1883527 () Bool)

(declare-fun tp!1883528 () Bool)

(assert (=> b!6864946 (= e!4138539 (and tp!1883527 tp!1883528))))

(assert (= (and b!6864362 (is-ElementMatch!16694 (regOne!33901 (regOne!33900 r!7292)))) b!6864945))

(assert (= (and b!6864362 (is-Concat!25539 (regOne!33901 (regOne!33900 r!7292)))) b!6864946))

(assert (= (and b!6864362 (is-Star!16694 (regOne!33901 (regOne!33900 r!7292)))) b!6864947))

(assert (= (and b!6864362 (is-Union!16694 (regOne!33901 (regOne!33900 r!7292)))) b!6864948))

(declare-fun b!6864951 () Bool)

(declare-fun e!4138540 () Bool)

(declare-fun tp!1883534 () Bool)

(assert (=> b!6864951 (= e!4138540 tp!1883534)))

(declare-fun b!6864949 () Bool)

(assert (=> b!6864949 (= e!4138540 tp_is_empty!42641)))

(assert (=> b!6864362 (= tp!1883387 e!4138540)))

(declare-fun b!6864952 () Bool)

(declare-fun tp!1883530 () Bool)

(declare-fun tp!1883531 () Bool)

(assert (=> b!6864952 (= e!4138540 (and tp!1883530 tp!1883531))))

(declare-fun b!6864950 () Bool)

(declare-fun tp!1883532 () Bool)

(declare-fun tp!1883533 () Bool)

(assert (=> b!6864950 (= e!4138540 (and tp!1883532 tp!1883533))))

(assert (= (and b!6864362 (is-ElementMatch!16694 (regTwo!33901 (regOne!33900 r!7292)))) b!6864949))

(assert (= (and b!6864362 (is-Concat!25539 (regTwo!33901 (regOne!33900 r!7292)))) b!6864950))

(assert (= (and b!6864362 (is-Star!16694 (regTwo!33901 (regOne!33900 r!7292)))) b!6864951))

(assert (= (and b!6864362 (is-Union!16694 (regTwo!33901 (regOne!33900 r!7292)))) b!6864952))

(declare-fun b!6864955 () Bool)

(declare-fun e!4138541 () Bool)

(declare-fun tp!1883539 () Bool)

(assert (=> b!6864955 (= e!4138541 tp!1883539)))

(declare-fun b!6864953 () Bool)

(assert (=> b!6864953 (= e!4138541 tp_is_empty!42641)))

(assert (=> b!6864411 (= tp!1883429 e!4138541)))

(declare-fun b!6864956 () Bool)

(declare-fun tp!1883535 () Bool)

(declare-fun tp!1883536 () Bool)

(assert (=> b!6864956 (= e!4138541 (and tp!1883535 tp!1883536))))

(declare-fun b!6864954 () Bool)

(declare-fun tp!1883537 () Bool)

(declare-fun tp!1883538 () Bool)

(assert (=> b!6864954 (= e!4138541 (and tp!1883537 tp!1883538))))

(assert (= (and b!6864411 (is-ElementMatch!16694 (regOne!33901 (reg!17023 r!7292)))) b!6864953))

(assert (= (and b!6864411 (is-Concat!25539 (regOne!33901 (reg!17023 r!7292)))) b!6864954))

(assert (= (and b!6864411 (is-Star!16694 (regOne!33901 (reg!17023 r!7292)))) b!6864955))

(assert (= (and b!6864411 (is-Union!16694 (regOne!33901 (reg!17023 r!7292)))) b!6864956))

(declare-fun b!6864959 () Bool)

(declare-fun e!4138542 () Bool)

(declare-fun tp!1883544 () Bool)

(assert (=> b!6864959 (= e!4138542 tp!1883544)))

(declare-fun b!6864957 () Bool)

(assert (=> b!6864957 (= e!4138542 tp_is_empty!42641)))

(assert (=> b!6864411 (= tp!1883430 e!4138542)))

(declare-fun b!6864960 () Bool)

(declare-fun tp!1883540 () Bool)

(declare-fun tp!1883541 () Bool)

(assert (=> b!6864960 (= e!4138542 (and tp!1883540 tp!1883541))))

(declare-fun b!6864958 () Bool)

(declare-fun tp!1883542 () Bool)

(declare-fun tp!1883543 () Bool)

(assert (=> b!6864958 (= e!4138542 (and tp!1883542 tp!1883543))))

(assert (= (and b!6864411 (is-ElementMatch!16694 (regTwo!33901 (reg!17023 r!7292)))) b!6864957))

(assert (= (and b!6864411 (is-Concat!25539 (regTwo!33901 (reg!17023 r!7292)))) b!6864958))

(assert (= (and b!6864411 (is-Star!16694 (regTwo!33901 (reg!17023 r!7292)))) b!6864959))

(assert (= (and b!6864411 (is-Union!16694 (regTwo!33901 (reg!17023 r!7292)))) b!6864960))

(declare-fun b!6864963 () Bool)

(declare-fun e!4138543 () Bool)

(declare-fun tp!1883549 () Bool)

(assert (=> b!6864963 (= e!4138543 tp!1883549)))

(declare-fun b!6864961 () Bool)

(assert (=> b!6864961 (= e!4138543 tp_is_empty!42641)))

(assert (=> b!6864361 (= tp!1883390 e!4138543)))

(declare-fun b!6864964 () Bool)

(declare-fun tp!1883545 () Bool)

(declare-fun tp!1883546 () Bool)

(assert (=> b!6864964 (= e!4138543 (and tp!1883545 tp!1883546))))

(declare-fun b!6864962 () Bool)

(declare-fun tp!1883547 () Bool)

(declare-fun tp!1883548 () Bool)

(assert (=> b!6864962 (= e!4138543 (and tp!1883547 tp!1883548))))

(assert (= (and b!6864361 (is-ElementMatch!16694 (reg!17023 (regOne!33900 r!7292)))) b!6864961))

(assert (= (and b!6864361 (is-Concat!25539 (reg!17023 (regOne!33900 r!7292)))) b!6864962))

(assert (= (and b!6864361 (is-Star!16694 (reg!17023 (regOne!33900 r!7292)))) b!6864963))

(assert (= (and b!6864361 (is-Union!16694 (reg!17023 (regOne!33900 r!7292)))) b!6864964))

(declare-fun b!6864967 () Bool)

(declare-fun e!4138544 () Bool)

(declare-fun tp!1883554 () Bool)

(assert (=> b!6864967 (= e!4138544 tp!1883554)))

(declare-fun b!6864965 () Bool)

(assert (=> b!6864965 (= e!4138544 tp_is_empty!42641)))

(assert (=> b!6864384 (= tp!1883413 e!4138544)))

(declare-fun b!6864968 () Bool)

(declare-fun tp!1883550 () Bool)

(declare-fun tp!1883551 () Bool)

(assert (=> b!6864968 (= e!4138544 (and tp!1883550 tp!1883551))))

(declare-fun b!6864966 () Bool)

(declare-fun tp!1883552 () Bool)

(declare-fun tp!1883553 () Bool)

(assert (=> b!6864966 (= e!4138544 (and tp!1883552 tp!1883553))))

(assert (= (and b!6864384 (is-ElementMatch!16694 (h!72705 (exprs!6578 setElem!47206)))) b!6864965))

(assert (= (and b!6864384 (is-Concat!25539 (h!72705 (exprs!6578 setElem!47206)))) b!6864966))

(assert (= (and b!6864384 (is-Star!16694 (h!72705 (exprs!6578 setElem!47206)))) b!6864967))

(assert (= (and b!6864384 (is-Union!16694 (h!72705 (exprs!6578 setElem!47206)))) b!6864968))

(declare-fun b!6864969 () Bool)

(declare-fun e!4138545 () Bool)

(declare-fun tp!1883555 () Bool)

(declare-fun tp!1883556 () Bool)

(assert (=> b!6864969 (= e!4138545 (and tp!1883555 tp!1883556))))

(assert (=> b!6864384 (= tp!1883414 e!4138545)))

(assert (= (and b!6864384 (is-Cons!66257 (t!380124 (exprs!6578 setElem!47206)))) b!6864969))

(declare-fun b!6864972 () Bool)

(declare-fun e!4138546 () Bool)

(declare-fun tp!1883561 () Bool)

(assert (=> b!6864972 (= e!4138546 tp!1883561)))

(declare-fun b!6864970 () Bool)

(assert (=> b!6864970 (= e!4138546 tp_is_empty!42641)))

(assert (=> b!6864410 (= tp!1883433 e!4138546)))

(declare-fun b!6864973 () Bool)

(declare-fun tp!1883557 () Bool)

(declare-fun tp!1883558 () Bool)

(assert (=> b!6864973 (= e!4138546 (and tp!1883557 tp!1883558))))

(declare-fun b!6864971 () Bool)

(declare-fun tp!1883559 () Bool)

(declare-fun tp!1883560 () Bool)

(assert (=> b!6864971 (= e!4138546 (and tp!1883559 tp!1883560))))

(assert (= (and b!6864410 (is-ElementMatch!16694 (reg!17023 (reg!17023 r!7292)))) b!6864970))

(assert (= (and b!6864410 (is-Concat!25539 (reg!17023 (reg!17023 r!7292)))) b!6864971))

(assert (= (and b!6864410 (is-Star!16694 (reg!17023 (reg!17023 r!7292)))) b!6864972))

(assert (= (and b!6864410 (is-Union!16694 (reg!17023 (reg!17023 r!7292)))) b!6864973))

(declare-fun b!6864976 () Bool)

(declare-fun e!4138547 () Bool)

(declare-fun tp!1883566 () Bool)

(assert (=> b!6864976 (= e!4138547 tp!1883566)))

(declare-fun b!6864974 () Bool)

(assert (=> b!6864974 (= e!4138547 tp_is_empty!42641)))

(assert (=> b!6864385 (= tp!1883415 e!4138547)))

(declare-fun b!6864977 () Bool)

(declare-fun tp!1883562 () Bool)

(declare-fun tp!1883563 () Bool)

(assert (=> b!6864977 (= e!4138547 (and tp!1883562 tp!1883563))))

(declare-fun b!6864975 () Bool)

(declare-fun tp!1883564 () Bool)

(declare-fun tp!1883565 () Bool)

(assert (=> b!6864975 (= e!4138547 (and tp!1883564 tp!1883565))))

(assert (= (and b!6864385 (is-ElementMatch!16694 (h!72705 (exprs!6578 (h!72706 zl!343))))) b!6864974))

(assert (= (and b!6864385 (is-Concat!25539 (h!72705 (exprs!6578 (h!72706 zl!343))))) b!6864975))

(assert (= (and b!6864385 (is-Star!16694 (h!72705 (exprs!6578 (h!72706 zl!343))))) b!6864976))

(assert (= (and b!6864385 (is-Union!16694 (h!72705 (exprs!6578 (h!72706 zl!343))))) b!6864977))

(declare-fun b!6864978 () Bool)

(declare-fun e!4138548 () Bool)

(declare-fun tp!1883567 () Bool)

(declare-fun tp!1883568 () Bool)

(assert (=> b!6864978 (= e!4138548 (and tp!1883567 tp!1883568))))

(assert (=> b!6864385 (= tp!1883416 e!4138548)))

(assert (= (and b!6864385 (is-Cons!66257 (t!380124 (exprs!6578 (h!72706 zl!343))))) b!6864978))

(declare-fun b!6864981 () Bool)

(declare-fun e!4138549 () Bool)

(declare-fun tp!1883573 () Bool)

(assert (=> b!6864981 (= e!4138549 tp!1883573)))

(declare-fun b!6864979 () Bool)

(assert (=> b!6864979 (= e!4138549 tp_is_empty!42641)))

(assert (=> b!6864379 (= tp!1883404 e!4138549)))

(declare-fun b!6864982 () Bool)

(declare-fun tp!1883569 () Bool)

(declare-fun tp!1883570 () Bool)

(assert (=> b!6864982 (= e!4138549 (and tp!1883569 tp!1883570))))

(declare-fun b!6864980 () Bool)

(declare-fun tp!1883571 () Bool)

(declare-fun tp!1883572 () Bool)

(assert (=> b!6864980 (= e!4138549 (and tp!1883571 tp!1883572))))

(assert (= (and b!6864379 (is-ElementMatch!16694 (regOne!33901 (regTwo!33901 r!7292)))) b!6864979))

(assert (= (and b!6864379 (is-Concat!25539 (regOne!33901 (regTwo!33901 r!7292)))) b!6864980))

(assert (= (and b!6864379 (is-Star!16694 (regOne!33901 (regTwo!33901 r!7292)))) b!6864981))

(assert (= (and b!6864379 (is-Union!16694 (regOne!33901 (regTwo!33901 r!7292)))) b!6864982))

(declare-fun b!6864985 () Bool)

(declare-fun e!4138550 () Bool)

(declare-fun tp!1883578 () Bool)

(assert (=> b!6864985 (= e!4138550 tp!1883578)))

(declare-fun b!6864983 () Bool)

(assert (=> b!6864983 (= e!4138550 tp_is_empty!42641)))

(assert (=> b!6864379 (= tp!1883405 e!4138550)))

(declare-fun b!6864986 () Bool)

(declare-fun tp!1883574 () Bool)

(declare-fun tp!1883575 () Bool)

(assert (=> b!6864986 (= e!4138550 (and tp!1883574 tp!1883575))))

(declare-fun b!6864984 () Bool)

(declare-fun tp!1883576 () Bool)

(declare-fun tp!1883577 () Bool)

(assert (=> b!6864984 (= e!4138550 (and tp!1883576 tp!1883577))))

(assert (= (and b!6864379 (is-ElementMatch!16694 (regTwo!33901 (regTwo!33901 r!7292)))) b!6864983))

(assert (= (and b!6864379 (is-Concat!25539 (regTwo!33901 (regTwo!33901 r!7292)))) b!6864984))

(assert (= (and b!6864379 (is-Star!16694 (regTwo!33901 (regTwo!33901 r!7292)))) b!6864985))

(assert (= (and b!6864379 (is-Union!16694 (regTwo!33901 (regTwo!33901 r!7292)))) b!6864986))

(declare-fun b!6864989 () Bool)

(declare-fun e!4138551 () Bool)

(declare-fun tp!1883583 () Bool)

(assert (=> b!6864989 (= e!4138551 tp!1883583)))

(declare-fun b!6864987 () Bool)

(assert (=> b!6864987 (= e!4138551 tp_is_empty!42641)))

(assert (=> b!6864378 (= tp!1883408 e!4138551)))

(declare-fun b!6864990 () Bool)

(declare-fun tp!1883579 () Bool)

(declare-fun tp!1883580 () Bool)

(assert (=> b!6864990 (= e!4138551 (and tp!1883579 tp!1883580))))

(declare-fun b!6864988 () Bool)

(declare-fun tp!1883581 () Bool)

(declare-fun tp!1883582 () Bool)

(assert (=> b!6864988 (= e!4138551 (and tp!1883581 tp!1883582))))

(assert (= (and b!6864378 (is-ElementMatch!16694 (reg!17023 (regTwo!33901 r!7292)))) b!6864987))

(assert (= (and b!6864378 (is-Concat!25539 (reg!17023 (regTwo!33901 r!7292)))) b!6864988))

(assert (= (and b!6864378 (is-Star!16694 (reg!17023 (regTwo!33901 r!7292)))) b!6864989))

(assert (= (and b!6864378 (is-Union!16694 (reg!17023 (regTwo!33901 r!7292)))) b!6864990))

(declare-fun b!6864993 () Bool)

(declare-fun e!4138552 () Bool)

(declare-fun tp!1883588 () Bool)

(assert (=> b!6864993 (= e!4138552 tp!1883588)))

(declare-fun b!6864991 () Bool)

(assert (=> b!6864991 (= e!4138552 tp_is_empty!42641)))

(assert (=> b!6864360 (= tp!1883388 e!4138552)))

(declare-fun b!6864994 () Bool)

(declare-fun tp!1883584 () Bool)

(declare-fun tp!1883585 () Bool)

(assert (=> b!6864994 (= e!4138552 (and tp!1883584 tp!1883585))))

(declare-fun b!6864992 () Bool)

(declare-fun tp!1883586 () Bool)

(declare-fun tp!1883587 () Bool)

(assert (=> b!6864992 (= e!4138552 (and tp!1883586 tp!1883587))))

(assert (= (and b!6864360 (is-ElementMatch!16694 (regOne!33900 (regOne!33900 r!7292)))) b!6864991))

(assert (= (and b!6864360 (is-Concat!25539 (regOne!33900 (regOne!33900 r!7292)))) b!6864992))

(assert (= (and b!6864360 (is-Star!16694 (regOne!33900 (regOne!33900 r!7292)))) b!6864993))

(assert (= (and b!6864360 (is-Union!16694 (regOne!33900 (regOne!33900 r!7292)))) b!6864994))

(declare-fun b!6864997 () Bool)

(declare-fun e!4138553 () Bool)

(declare-fun tp!1883593 () Bool)

(assert (=> b!6864997 (= e!4138553 tp!1883593)))

(declare-fun b!6864995 () Bool)

(assert (=> b!6864995 (= e!4138553 tp_is_empty!42641)))

(assert (=> b!6864360 (= tp!1883389 e!4138553)))

(declare-fun b!6864998 () Bool)

(declare-fun tp!1883589 () Bool)

(declare-fun tp!1883590 () Bool)

(assert (=> b!6864998 (= e!4138553 (and tp!1883589 tp!1883590))))

(declare-fun b!6864996 () Bool)

(declare-fun tp!1883591 () Bool)

(declare-fun tp!1883592 () Bool)

(assert (=> b!6864996 (= e!4138553 (and tp!1883591 tp!1883592))))

(assert (= (and b!6864360 (is-ElementMatch!16694 (regTwo!33900 (regOne!33900 r!7292)))) b!6864995))

(assert (= (and b!6864360 (is-Concat!25539 (regTwo!33900 (regOne!33900 r!7292)))) b!6864996))

(assert (= (and b!6864360 (is-Star!16694 (regTwo!33900 (regOne!33900 r!7292)))) b!6864997))

(assert (= (and b!6864360 (is-Union!16694 (regTwo!33900 (regOne!33900 r!7292)))) b!6864998))

(declare-fun b!6865001 () Bool)

(declare-fun e!4138554 () Bool)

(declare-fun tp!1883598 () Bool)

(assert (=> b!6865001 (= e!4138554 tp!1883598)))

(declare-fun b!6864999 () Bool)

(assert (=> b!6864999 (= e!4138554 tp_is_empty!42641)))

(assert (=> b!6864409 (= tp!1883431 e!4138554)))

(declare-fun b!6865002 () Bool)

(declare-fun tp!1883594 () Bool)

(declare-fun tp!1883595 () Bool)

(assert (=> b!6865002 (= e!4138554 (and tp!1883594 tp!1883595))))

(declare-fun b!6865000 () Bool)

(declare-fun tp!1883596 () Bool)

(declare-fun tp!1883597 () Bool)

(assert (=> b!6865000 (= e!4138554 (and tp!1883596 tp!1883597))))

(assert (= (and b!6864409 (is-ElementMatch!16694 (regOne!33900 (reg!17023 r!7292)))) b!6864999))

(assert (= (and b!6864409 (is-Concat!25539 (regOne!33900 (reg!17023 r!7292)))) b!6865000))

(assert (= (and b!6864409 (is-Star!16694 (regOne!33900 (reg!17023 r!7292)))) b!6865001))

(assert (= (and b!6864409 (is-Union!16694 (regOne!33900 (reg!17023 r!7292)))) b!6865002))

(declare-fun b!6865005 () Bool)

(declare-fun e!4138555 () Bool)

(declare-fun tp!1883603 () Bool)

(assert (=> b!6865005 (= e!4138555 tp!1883603)))

(declare-fun b!6865003 () Bool)

(assert (=> b!6865003 (= e!4138555 tp_is_empty!42641)))

(assert (=> b!6864409 (= tp!1883432 e!4138555)))

(declare-fun b!6865006 () Bool)

(declare-fun tp!1883599 () Bool)

(declare-fun tp!1883600 () Bool)

(assert (=> b!6865006 (= e!4138555 (and tp!1883599 tp!1883600))))

(declare-fun b!6865004 () Bool)

(declare-fun tp!1883601 () Bool)

(declare-fun tp!1883602 () Bool)

(assert (=> b!6865004 (= e!4138555 (and tp!1883601 tp!1883602))))

(assert (= (and b!6864409 (is-ElementMatch!16694 (regTwo!33900 (reg!17023 r!7292)))) b!6865003))

(assert (= (and b!6864409 (is-Concat!25539 (regTwo!33900 (reg!17023 r!7292)))) b!6865004))

(assert (= (and b!6864409 (is-Star!16694 (regTwo!33900 (reg!17023 r!7292)))) b!6865005))

(assert (= (and b!6864409 (is-Union!16694 (regTwo!33900 (reg!17023 r!7292)))) b!6865006))

(declare-fun condSetEmpty!47216 () Bool)

(assert (=> setNonEmpty!47212 (= condSetEmpty!47216 (= setRest!47212 (as set.empty (Set Context!12156))))))

(declare-fun setRes!47216 () Bool)

(assert (=> setNonEmpty!47212 (= tp!1883428 setRes!47216)))

(declare-fun setIsEmpty!47216 () Bool)

(assert (=> setIsEmpty!47216 setRes!47216))

(declare-fun e!4138556 () Bool)

(declare-fun setElem!47216 () Context!12156)

(declare-fun tp!1883605 () Bool)

(declare-fun setNonEmpty!47216 () Bool)

(assert (=> setNonEmpty!47216 (= setRes!47216 (and tp!1883605 (inv!84983 setElem!47216) e!4138556))))

(declare-fun setRest!47216 () (Set Context!12156))

(assert (=> setNonEmpty!47216 (= setRest!47212 (set.union (set.insert setElem!47216 (as set.empty (Set Context!12156))) setRest!47216))))

(declare-fun b!6865007 () Bool)

(declare-fun tp!1883604 () Bool)

(assert (=> b!6865007 (= e!4138556 tp!1883604)))

(assert (= (and setNonEmpty!47212 condSetEmpty!47216) setIsEmpty!47216))

(assert (= (and setNonEmpty!47212 (not condSetEmpty!47216)) setNonEmpty!47216))

(assert (= setNonEmpty!47216 b!6865007))

(declare-fun m!7597742 () Bool)

(assert (=> setNonEmpty!47216 m!7597742))

(declare-fun b!6865010 () Bool)

(declare-fun e!4138557 () Bool)

(declare-fun tp!1883610 () Bool)

(assert (=> b!6865010 (= e!4138557 tp!1883610)))

(declare-fun b!6865008 () Bool)

(assert (=> b!6865008 (= e!4138557 tp_is_empty!42641)))

(assert (=> b!6864366 (= tp!1883391 e!4138557)))

(declare-fun b!6865011 () Bool)

(declare-fun tp!1883606 () Bool)

(declare-fun tp!1883607 () Bool)

(assert (=> b!6865011 (= e!4138557 (and tp!1883606 tp!1883607))))

(declare-fun b!6865009 () Bool)

(declare-fun tp!1883608 () Bool)

(declare-fun tp!1883609 () Bool)

(assert (=> b!6865009 (= e!4138557 (and tp!1883608 tp!1883609))))

(assert (= (and b!6864366 (is-ElementMatch!16694 (regOne!33901 (regTwo!33900 r!7292)))) b!6865008))

(assert (= (and b!6864366 (is-Concat!25539 (regOne!33901 (regTwo!33900 r!7292)))) b!6865009))

(assert (= (and b!6864366 (is-Star!16694 (regOne!33901 (regTwo!33900 r!7292)))) b!6865010))

(assert (= (and b!6864366 (is-Union!16694 (regOne!33901 (regTwo!33900 r!7292)))) b!6865011))

(declare-fun b!6865014 () Bool)

(declare-fun e!4138558 () Bool)

(declare-fun tp!1883615 () Bool)

(assert (=> b!6865014 (= e!4138558 tp!1883615)))

(declare-fun b!6865012 () Bool)

(assert (=> b!6865012 (= e!4138558 tp_is_empty!42641)))

(assert (=> b!6864366 (= tp!1883392 e!4138558)))

(declare-fun b!6865015 () Bool)

(declare-fun tp!1883611 () Bool)

(declare-fun tp!1883612 () Bool)

(assert (=> b!6865015 (= e!4138558 (and tp!1883611 tp!1883612))))

(declare-fun b!6865013 () Bool)

(declare-fun tp!1883613 () Bool)

(declare-fun tp!1883614 () Bool)

(assert (=> b!6865013 (= e!4138558 (and tp!1883613 tp!1883614))))

(assert (= (and b!6864366 (is-ElementMatch!16694 (regTwo!33901 (regTwo!33900 r!7292)))) b!6865012))

(assert (= (and b!6864366 (is-Concat!25539 (regTwo!33901 (regTwo!33900 r!7292)))) b!6865013))

(assert (= (and b!6864366 (is-Star!16694 (regTwo!33901 (regTwo!33900 r!7292)))) b!6865014))

(assert (= (and b!6864366 (is-Union!16694 (regTwo!33901 (regTwo!33900 r!7292)))) b!6865015))

(declare-fun b!6865018 () Bool)

(declare-fun e!4138559 () Bool)

(declare-fun tp!1883620 () Bool)

(assert (=> b!6865018 (= e!4138559 tp!1883620)))

(declare-fun b!6865016 () Bool)

(assert (=> b!6865016 (= e!4138559 tp_is_empty!42641)))

(assert (=> b!6864365 (= tp!1883395 e!4138559)))

(declare-fun b!6865019 () Bool)

(declare-fun tp!1883616 () Bool)

(declare-fun tp!1883617 () Bool)

(assert (=> b!6865019 (= e!4138559 (and tp!1883616 tp!1883617))))

(declare-fun b!6865017 () Bool)

(declare-fun tp!1883618 () Bool)

(declare-fun tp!1883619 () Bool)

(assert (=> b!6865017 (= e!4138559 (and tp!1883618 tp!1883619))))

(assert (= (and b!6864365 (is-ElementMatch!16694 (reg!17023 (regTwo!33900 r!7292)))) b!6865016))

(assert (= (and b!6864365 (is-Concat!25539 (reg!17023 (regTwo!33900 r!7292)))) b!6865017))

(assert (= (and b!6864365 (is-Star!16694 (reg!17023 (regTwo!33900 r!7292)))) b!6865018))

(assert (= (and b!6864365 (is-Union!16694 (reg!17023 (regTwo!33900 r!7292)))) b!6865019))

(declare-fun b!6865022 () Bool)

(declare-fun e!4138560 () Bool)

(declare-fun tp!1883625 () Bool)

(assert (=> b!6865022 (= e!4138560 tp!1883625)))

(declare-fun b!6865020 () Bool)

(assert (=> b!6865020 (= e!4138560 tp_is_empty!42641)))

(assert (=> b!6864375 (= tp!1883399 e!4138560)))

(declare-fun b!6865023 () Bool)

(declare-fun tp!1883621 () Bool)

(declare-fun tp!1883622 () Bool)

(assert (=> b!6865023 (= e!4138560 (and tp!1883621 tp!1883622))))

(declare-fun b!6865021 () Bool)

(declare-fun tp!1883623 () Bool)

(declare-fun tp!1883624 () Bool)

(assert (=> b!6865021 (= e!4138560 (and tp!1883623 tp!1883624))))

(assert (= (and b!6864375 (is-ElementMatch!16694 (regOne!33901 (regOne!33901 r!7292)))) b!6865020))

(assert (= (and b!6864375 (is-Concat!25539 (regOne!33901 (regOne!33901 r!7292)))) b!6865021))

(assert (= (and b!6864375 (is-Star!16694 (regOne!33901 (regOne!33901 r!7292)))) b!6865022))

(assert (= (and b!6864375 (is-Union!16694 (regOne!33901 (regOne!33901 r!7292)))) b!6865023))

(declare-fun b!6865026 () Bool)

(declare-fun e!4138561 () Bool)

(declare-fun tp!1883630 () Bool)

(assert (=> b!6865026 (= e!4138561 tp!1883630)))

(declare-fun b!6865024 () Bool)

(assert (=> b!6865024 (= e!4138561 tp_is_empty!42641)))

(assert (=> b!6864375 (= tp!1883400 e!4138561)))

(declare-fun b!6865027 () Bool)

(declare-fun tp!1883626 () Bool)

(declare-fun tp!1883627 () Bool)

(assert (=> b!6865027 (= e!4138561 (and tp!1883626 tp!1883627))))

(declare-fun b!6865025 () Bool)

(declare-fun tp!1883628 () Bool)

(declare-fun tp!1883629 () Bool)

(assert (=> b!6865025 (= e!4138561 (and tp!1883628 tp!1883629))))

(assert (= (and b!6864375 (is-ElementMatch!16694 (regTwo!33901 (regOne!33901 r!7292)))) b!6865024))

(assert (= (and b!6864375 (is-Concat!25539 (regTwo!33901 (regOne!33901 r!7292)))) b!6865025))

(assert (= (and b!6864375 (is-Star!16694 (regTwo!33901 (regOne!33901 r!7292)))) b!6865026))

(assert (= (and b!6864375 (is-Union!16694 (regTwo!33901 (regOne!33901 r!7292)))) b!6865027))

(declare-fun b!6865028 () Bool)

(declare-fun e!4138562 () Bool)

(declare-fun tp!1883631 () Bool)

(declare-fun tp!1883632 () Bool)

(assert (=> b!6865028 (= e!4138562 (and tp!1883631 tp!1883632))))

(assert (=> b!6864398 (= tp!1883427 e!4138562)))

(assert (= (and b!6864398 (is-Cons!66257 (exprs!6578 setElem!47212))) b!6865028))

(declare-fun b!6865031 () Bool)

(declare-fun e!4138563 () Bool)

(declare-fun tp!1883637 () Bool)

(assert (=> b!6865031 (= e!4138563 tp!1883637)))

(declare-fun b!6865029 () Bool)

(assert (=> b!6865029 (= e!4138563 tp_is_empty!42641)))

(assert (=> b!6864374 (= tp!1883403 e!4138563)))

(declare-fun b!6865032 () Bool)

(declare-fun tp!1883633 () Bool)

(declare-fun tp!1883634 () Bool)

(assert (=> b!6865032 (= e!4138563 (and tp!1883633 tp!1883634))))

(declare-fun b!6865030 () Bool)

(declare-fun tp!1883635 () Bool)

(declare-fun tp!1883636 () Bool)

(assert (=> b!6865030 (= e!4138563 (and tp!1883635 tp!1883636))))

(assert (= (and b!6864374 (is-ElementMatch!16694 (reg!17023 (regOne!33901 r!7292)))) b!6865029))

(assert (= (and b!6864374 (is-Concat!25539 (reg!17023 (regOne!33901 r!7292)))) b!6865030))

(assert (= (and b!6864374 (is-Star!16694 (reg!17023 (regOne!33901 r!7292)))) b!6865031))

(assert (= (and b!6864374 (is-Union!16694 (reg!17023 (regOne!33901 r!7292)))) b!6865032))

(declare-fun b!6865035 () Bool)

(declare-fun e!4138564 () Bool)

(declare-fun tp!1883642 () Bool)

(assert (=> b!6865035 (= e!4138564 tp!1883642)))

(declare-fun b!6865033 () Bool)

(assert (=> b!6865033 (= e!4138564 tp_is_empty!42641)))

(assert (=> b!6864373 (= tp!1883401 e!4138564)))

(declare-fun b!6865036 () Bool)

(declare-fun tp!1883638 () Bool)

(declare-fun tp!1883639 () Bool)

(assert (=> b!6865036 (= e!4138564 (and tp!1883638 tp!1883639))))

(declare-fun b!6865034 () Bool)

(declare-fun tp!1883640 () Bool)

(declare-fun tp!1883641 () Bool)

(assert (=> b!6865034 (= e!4138564 (and tp!1883640 tp!1883641))))

(assert (= (and b!6864373 (is-ElementMatch!16694 (regOne!33900 (regOne!33901 r!7292)))) b!6865033))

(assert (= (and b!6864373 (is-Concat!25539 (regOne!33900 (regOne!33901 r!7292)))) b!6865034))

(assert (= (and b!6864373 (is-Star!16694 (regOne!33900 (regOne!33901 r!7292)))) b!6865035))

(assert (= (and b!6864373 (is-Union!16694 (regOne!33900 (regOne!33901 r!7292)))) b!6865036))

(declare-fun b!6865039 () Bool)

(declare-fun e!4138565 () Bool)

(declare-fun tp!1883647 () Bool)

(assert (=> b!6865039 (= e!4138565 tp!1883647)))

(declare-fun b!6865037 () Bool)

(assert (=> b!6865037 (= e!4138565 tp_is_empty!42641)))

(assert (=> b!6864373 (= tp!1883402 e!4138565)))

(declare-fun b!6865040 () Bool)

(declare-fun tp!1883643 () Bool)

(declare-fun tp!1883644 () Bool)

(assert (=> b!6865040 (= e!4138565 (and tp!1883643 tp!1883644))))

(declare-fun b!6865038 () Bool)

(declare-fun tp!1883645 () Bool)

(declare-fun tp!1883646 () Bool)

(assert (=> b!6865038 (= e!4138565 (and tp!1883645 tp!1883646))))

(assert (= (and b!6864373 (is-ElementMatch!16694 (regTwo!33900 (regOne!33901 r!7292)))) b!6865037))

(assert (= (and b!6864373 (is-Concat!25539 (regTwo!33900 (regOne!33901 r!7292)))) b!6865038))

(assert (= (and b!6864373 (is-Star!16694 (regTwo!33900 (regOne!33901 r!7292)))) b!6865039))

(assert (= (and b!6864373 (is-Union!16694 (regTwo!33900 (regOne!33901 r!7292)))) b!6865040))

(declare-fun b_lambda!259513 () Bool)

(assert (= b_lambda!259499 (or b!6864011 b_lambda!259513)))

(declare-fun bs!1834710 () Bool)

(declare-fun d!2156623 () Bool)

(assert (= bs!1834710 (and d!2156623 b!6864011)))

(assert (=> bs!1834710 (= (dynLambda!26519 lambda!388339 (h!72706 (t!380125 zl!343))) (matchZipper!2660 (set.insert (h!72706 (t!380125 zl!343)) (as set.empty (Set Context!12156))) s!2326))))

(declare-fun m!7597744 () Bool)

(assert (=> bs!1834710 m!7597744))

(assert (=> bs!1834710 m!7597744))

(declare-fun m!7597746 () Bool)

(assert (=> bs!1834710 m!7597746))

(assert (=> b!6864785 d!2156623))

(declare-fun b_lambda!259515 () Bool)

(assert (= b_lambda!259491 (or d!2156375 b_lambda!259515)))

(declare-fun bs!1834711 () Bool)

(declare-fun d!2156625 () Bool)

(assert (= bs!1834711 (and d!2156625 d!2156375)))

(assert (=> bs!1834711 (= (dynLambda!26518 lambda!388360 (h!72705 (exprs!6578 lt!2457736))) (validRegex!8430 (h!72705 (exprs!6578 lt!2457736))))))

(assert (=> bs!1834711 m!7597320))

(assert (=> b!6864656 d!2156625))

(declare-fun b_lambda!259517 () Bool)

(assert (= b_lambda!259505 (or d!2156401 b_lambda!259517)))

(declare-fun bs!1834712 () Bool)

(declare-fun d!2156627 () Bool)

(assert (= bs!1834712 (and d!2156627 d!2156401)))

(assert (=> bs!1834712 (= (dynLambda!26518 lambda!388381 (h!72705 lt!2457803)) (validRegex!8430 (h!72705 lt!2457803)))))

(declare-fun m!7597748 () Bool)

(assert (=> bs!1834712 m!7597748))

(assert (=> b!6864816 d!2156627))

(declare-fun b_lambda!259519 () Bool)

(assert (= b_lambda!259493 (or d!2156397 b_lambda!259519)))

(declare-fun bs!1834713 () Bool)

(declare-fun d!2156629 () Bool)

(assert (= bs!1834713 (and d!2156629 d!2156397)))

(assert (=> bs!1834713 (= (dynLambda!26518 lambda!388377 (h!72705 lt!2457732)) (validRegex!8430 (h!72705 lt!2457732)))))

(declare-fun m!7597750 () Bool)

(assert (=> bs!1834713 m!7597750))

(assert (=> b!6864666 d!2156629))

(declare-fun b_lambda!259521 () Bool)

(assert (= b_lambda!259503 (or d!2156377 b_lambda!259521)))

(declare-fun bs!1834714 () Bool)

(declare-fun d!2156631 () Bool)

(assert (= bs!1834714 (and d!2156631 d!2156377)))

(assert (=> bs!1834714 (= (dynLambda!26519 lambda!388363 (h!72706 zl!343)) (not (dynLambda!26519 lambda!388339 (h!72706 zl!343))))))

(declare-fun b_lambda!259535 () Bool)

(assert (=> (not b_lambda!259535) (not bs!1834714)))

(assert (=> bs!1834714 m!7597200))

(assert (=> b!6864814 d!2156631))

(declare-fun b_lambda!259523 () Bool)

(assert (= b_lambda!259511 (or d!2156435 b_lambda!259523)))

(declare-fun bs!1834715 () Bool)

(declare-fun d!2156633 () Bool)

(assert (= bs!1834715 (and d!2156633 d!2156435)))

(assert (=> bs!1834715 (= (dynLambda!26518 lambda!388396 (h!72705 (exprs!6578 (h!72706 zl!343)))) (validRegex!8430 (h!72705 (exprs!6578 (h!72706 zl!343)))))))

(declare-fun m!7597752 () Bool)

(assert (=> bs!1834715 m!7597752))

(assert (=> b!6864910 d!2156633))

(declare-fun b_lambda!259525 () Bool)

(assert (= b_lambda!259509 (or b!6864001 b_lambda!259525)))

(declare-fun bs!1834716 () Bool)

(declare-fun d!2156635 () Bool)

(assert (= bs!1834716 (and d!2156635 b!6864001)))

(assert (=> bs!1834716 (= (dynLambda!26518 lambda!388340 (h!72705 (t!380124 (exprs!6578 lt!2457736)))) (validRegex!8430 (h!72705 (t!380124 (exprs!6578 lt!2457736)))))))

(declare-fun m!7597754 () Bool)

(assert (=> bs!1834716 m!7597754))

(assert (=> b!6864891 d!2156635))

(declare-fun b_lambda!259527 () Bool)

(assert (= b_lambda!259507 (or d!2156385 b_lambda!259527)))

(declare-fun bs!1834717 () Bool)

(declare-fun d!2156637 () Bool)

(assert (= bs!1834717 (and d!2156637 d!2156385)))

(assert (=> bs!1834717 (= (dynLambda!26518 lambda!388369 (h!72705 (exprs!6578 lt!2457736))) (validRegex!8430 (h!72705 (exprs!6578 lt!2457736))))))

(assert (=> bs!1834717 m!7597320))

(assert (=> b!6864857 d!2156637))

(declare-fun b_lambda!259529 () Bool)

(assert (= b_lambda!259497 (or b!6864011 b_lambda!259529)))

(declare-fun bs!1834718 () Bool)

(declare-fun d!2156639 () Bool)

(assert (= bs!1834718 (and d!2156639 b!6864011)))

(assert (=> bs!1834718 (= (dynLambda!26519 lambda!388339 lt!2457872) (matchZipper!2660 (set.insert lt!2457872 (as set.empty (Set Context!12156))) s!2326))))

(declare-fun m!7597756 () Bool)

(assert (=> bs!1834718 m!7597756))

(assert (=> bs!1834718 m!7597756))

(declare-fun m!7597758 () Bool)

(assert (=> bs!1834718 m!7597758))

(assert (=> d!2156537 d!2156639))

(declare-fun b_lambda!259531 () Bool)

(assert (= b_lambda!259501 (or d!2156395 b_lambda!259531)))

(declare-fun bs!1834719 () Bool)

(declare-fun d!2156641 () Bool)

(assert (= bs!1834719 (and d!2156641 d!2156395)))

(assert (=> bs!1834719 (= (dynLambda!26518 lambda!388372 (h!72705 lt!2457732)) (not (dynLambda!26518 lambda!388338 (h!72705 lt!2457732))))))

(declare-fun b_lambda!259537 () Bool)

(assert (=> (not b_lambda!259537) (not bs!1834719)))

(declare-fun m!7597760 () Bool)

(assert (=> bs!1834719 m!7597760))

(assert (=> b!6864786 d!2156641))

(declare-fun b_lambda!259533 () Bool)

(assert (= b_lambda!259495 (or d!2156437 b_lambda!259533)))

(declare-fun bs!1834720 () Bool)

(declare-fun d!2156643 () Bool)

(assert (= bs!1834720 (and d!2156643 d!2156437)))

(assert (=> bs!1834720 (= (dynLambda!26518 lambda!388397 (h!72705 (exprs!6578 setElem!47206))) (validRegex!8430 (h!72705 (exprs!6578 setElem!47206))))))

(declare-fun m!7597762 () Bool)

(assert (=> bs!1834720 m!7597762))

(assert (=> b!6864778 d!2156643))

(push 1)

(assert (not setNonEmpty!47216))

(assert (not b!6864815))

(assert (not b!6865026))

(assert (not b!6864950))

(assert (not d!2156545))

(assert (not b!6864908))

(assert (not b!6864781))

(assert (not d!2156489))

(assert (not d!2156483))

(assert tp_is_empty!42641)

(assert (not bs!1834711))

(assert (not b!6864766))

(assert (not b!6864772))

(assert (not b!6864690))

(assert (not b_lambda!259515))

(assert (not b!6864758))

(assert (not b!6865034))

(assert (not b!6864982))

(assert (not b!6864976))

(assert (not b_lambda!259475))

(assert (not b!6864853))

(assert (not b!6864779))

(assert (not b!6864994))

(assert (not d!2156503))

(assert (not b!6864930))

(assert (not b!6864959))

(assert (not b!6864967))

(assert (not b!6864875))

(assert (not b!6865014))

(assert (not b!6865017))

(assert (not b_lambda!259521))

(assert (not b!6864794))

(assert (not b!6864871))

(assert (not b!6864989))

(assert (not b!6865005))

(assert (not d!2156549))

(assert (not b!6864787))

(assert (not b!6864977))

(assert (not b!6865011))

(assert (not b!6864939))

(assert (not b!6864981))

(assert (not b!6864951))

(assert (not bm!625195))

(assert (not b!6865030))

(assert (not b!6864881))

(assert (not b!6864879))

(assert (not d!2156611))

(assert (not b!6864931))

(assert (not b!6864673))

(assert (not b!6865023))

(assert (not b!6864858))

(assert (not b!6864898))

(assert (not b!6864663))

(assert (not d!2156589))

(assert (not b!6864986))

(assert (not b_lambda!259473))

(assert (not b!6864897))

(assert (not d!2156621))

(assert (not b!6864894))

(assert (not b!6864998))

(assert (not b_lambda!259513))

(assert (not b!6864727))

(assert (not b!6864954))

(assert (not b!6864768))

(assert (not b!6864956))

(assert (not bm!625178))

(assert (not b!6864783))

(assert (not b!6864984))

(assert (not b!6865000))

(assert (not b!6864971))

(assert (not b!6864926))

(assert (not b!6864723))

(assert (not b!6864932))

(assert (not b!6864993))

(assert (not b!6864958))

(assert (not b_lambda!259517))

(assert (not bs!1834710))

(assert (not b!6864855))

(assert (not b!6864774))

(assert (not bm!625194))

(assert (not bm!625218))

(assert (not b!6864771))

(assert (not bm!625189))

(assert (not d!2156493))

(assert (not bs!1834715))

(assert (not b!6865039))

(assert (not bs!1834712))

(assert (not b!6864985))

(assert (not b!6864637))

(assert (not b!6865002))

(assert (not b!6864770))

(assert (not b!6864824))

(assert (not b!6864902))

(assert (not b!6864966))

(assert (not b!6865038))

(assert (not b!6864759))

(assert (not b!6864725))

(assert (not b!6865040))

(assert (not b!6864896))

(assert (not b!6864980))

(assert (not b!6864784))

(assert (not b!6865028))

(assert (not b!6864689))

(assert (not b!6864735))

(assert (not b!6864876))

(assert (not b!6864644))

(assert (not b!6864934))

(assert (not bs!1834716))

(assert (not bm!625221))

(assert (not b!6864892))

(assert (not b!6864911))

(assert (not b_lambda!259519))

(assert (not b_lambda!259531))

(assert (not b!6864919))

(assert (not b!6864888))

(assert (not d!2156511))

(assert (not bs!1834717))

(assert (not b!6865001))

(assert (not b!6864762))

(assert (not b!6864969))

(assert (not bm!625192))

(assert (not b!6864923))

(assert (not b!6864935))

(assert (not b!6864901))

(assert (not b!6864900))

(assert (not d!2156581))

(assert (not b_lambda!259525))

(assert (not b!6864936))

(assert (not b!6864992))

(assert (not b!6864944))

(assert (not b!6864760))

(assert (not b!6864925))

(assert (not bm!625198))

(assert (not b!6864940))

(assert (not bm!625215))

(assert (not b!6864972))

(assert (not b!6865004))

(assert (not bm!625204))

(assert (not b!6864851))

(assert (not b_lambda!259533))

(assert (not b!6864667))

(assert (not b!6864978))

(assert (not b!6865006))

(assert (not b!6864928))

(assert (not bm!625213))

(assert (not b_lambda!259527))

(assert (not b_lambda!259477))

(assert (not b!6865035))

(assert (not d!2156609))

(assert (not b!6865015))

(assert (not b!6864817))

(assert (not b!6864899))

(assert (not bm!625201))

(assert (not bs!1834720))

(assert (not bm!625179))

(assert (not b!6864724))

(assert (not b!6864964))

(assert (not d!2156537))

(assert (not b!6864877))

(assert (not d!2156559))

(assert (not bs!1834718))

(assert (not b_lambda!259529))

(assert (not b!6864904))

(assert (not d!2156495))

(assert (not b!6864636))

(assert (not b!6864692))

(assert (not bm!625197))

(assert (not b!6864903))

(assert (not bm!625177))

(assert (not b!6864952))

(assert (not b!6865027))

(assert (not b!6864807))

(assert (not d!2156583))

(assert (not b!6864946))

(assert (not b_lambda!259537))

(assert (not b!6864765))

(assert (not d!2156593))

(assert (not b!6864677))

(assert (not b!6864645))

(assert (not bm!625220))

(assert (not b!6865032))

(assert (not b!6864773))

(assert (not b!6864996))

(assert (not b!6864893))

(assert (not bm!625180))

(assert (not d!2156617))

(assert (not bs!1834713))

(assert (not b!6865036))

(assert (not b!6864948))

(assert (not b!6865025))

(assert (not b!6864806))

(assert (not bm!625212))

(assert (not d!2156501))

(assert (not b!6864657))

(assert (not b!6865010))

(assert (not b!6864913))

(assert (not bm!625219))

(assert (not d!2156613))

(assert (not d!2156551))

(assert (not b!6864997))

(assert (not d!2156579))

(assert (not b!6864942))

(assert (not b!6864938))

(assert (not b!6864975))

(assert (not b!6864691))

(assert (not b!6864943))

(assert (not b!6864955))

(assert (not d!2156591))

(assert (not b!6864686))

(assert (not bm!625200))

(assert (not b!6865021))

(assert (not d!2156577))

(assert (not b!6864653))

(assert (not b!6864973))

(assert (not b!6865013))

(assert (not b!6865018))

(assert (not d!2156547))

(assert (not b!6864680))

(assert (not d!2156595))

(assert (not b!6864646))

(assert (not b!6865009))

(assert (not bm!625203))

(assert (not b!6865022))

(assert (not b!6864721))

(assert (not b!6864947))

(assert (not b!6864927))

(assert (not b!6864963))

(assert (not d!2156533))

(assert (not b!6864968))

(assert (not b!6864990))

(assert (not b_lambda!259535))

(assert (not b!6864769))

(assert (not b!6865031))

(assert (not b!6865019))

(assert (not bm!625176))

(assert (not b!6864912))

(assert (not b_lambda!259523))

(assert (not b!6864764))

(assert (not b!6864960))

(assert (not bm!625216))

(assert (not b!6864895))

(assert (not d!2156597))

(assert (not b!6864803))

(assert (not b!6864988))

(assert (not b!6864962))

(assert (not d!2156531))

(assert (not b!6865007))

(assert (not b!6864864))

(assert (not d!2156527))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!259587 () Bool)

(assert (= b_lambda!259537 (or b!6863998 b_lambda!259587)))

(declare-fun bs!1834890 () Bool)

(declare-fun d!2156809 () Bool)

(assert (= bs!1834890 (and d!2156809 b!6863998)))

(declare-fun res!2800761 () Bool)

(declare-fun e!4138799 () Bool)

(assert (=> bs!1834890 (=> (not res!2800761) (not e!4138799))))

(assert (=> bs!1834890 (= res!2800761 (validRegex!8430 (h!72705 lt!2457732)))))

(assert (=> bs!1834890 (= (dynLambda!26518 lambda!388338 (h!72705 lt!2457732)) e!4138799)))

(declare-fun b!6865450 () Bool)

(assert (=> b!6865450 (= e!4138799 (matchR!8877 (h!72705 lt!2457732) s!2326))))

(assert (= (and bs!1834890 res!2800761) b!6865450))

(assert (=> bs!1834890 m!7597750))

(declare-fun m!7598088 () Bool)

(assert (=> b!6865450 m!7598088))

(assert (=> bs!1834719 d!2156809))

(declare-fun b_lambda!259589 () Bool)

(assert (= b_lambda!259535 (or b!6864011 b_lambda!259589)))

(assert (=> bs!1834714 d!2156441))

(push 1)

(assert (not setNonEmpty!47216))

(assert (not b!6864815))

(assert (not b!6865026))

(assert (not b!6864950))

(assert (not d!2156545))

(assert (not b!6864908))

(assert (not b!6864781))

(assert (not d!2156489))

(assert (not d!2156483))

(assert tp_is_empty!42641)

(assert (not bs!1834711))

(assert (not b!6864766))

(assert (not b!6864772))

(assert (not b!6864690))

(assert (not b_lambda!259515))

(assert (not b!6864758))

(assert (not b!6865034))

(assert (not b!6864982))

(assert (not b!6864976))

(assert (not b_lambda!259475))

(assert (not b!6864853))

(assert (not b!6864779))

(assert (not d!2156503))

(assert (not b!6864930))

(assert (not b!6864959))

(assert (not b!6864967))

(assert (not b!6864875))

(assert (not b!6865014))

(assert (not b!6865017))

(assert (not b_lambda!259521))

(assert (not b_lambda!259587))

(assert (not b!6864994))

(assert (not b!6864794))

(assert (not b!6864871))

(assert (not b!6864989))

(assert (not b!6865005))

(assert (not d!2156549))

(assert (not b!6864787))

(assert (not b!6864977))

(assert (not b!6865011))

(assert (not b!6864939))

(assert (not b!6864981))

(assert (not b!6864951))

(assert (not bm!625195))

(assert (not b!6865030))

(assert (not b!6864881))

(assert (not b!6864879))

(assert (not d!2156611))

(assert (not b!6864931))

(assert (not b!6864673))

(assert (not b!6865023))

(assert (not b!6864858))

(assert (not b!6864898))

(assert (not b!6864663))

(assert (not d!2156589))

(assert (not b!6864986))

(assert (not b_lambda!259473))

(assert (not b!6864897))

(assert (not d!2156621))

(assert (not b!6864894))

(assert (not b!6864998))

(assert (not b_lambda!259589))

(assert (not b_lambda!259513))

(assert (not b!6864727))

(assert (not b!6864954))

(assert (not b!6864768))

(assert (not b!6864956))

(assert (not bm!625178))

(assert (not b!6864783))

(assert (not b!6864984))

(assert (not b!6865000))

(assert (not b!6864971))

(assert (not b!6864926))

(assert (not b!6864723))

(assert (not b!6864932))

(assert (not b!6864993))

(assert (not b!6864958))

(assert (not b_lambda!259517))

(assert (not bs!1834710))

(assert (not b!6864855))

(assert (not b!6864774))

(assert (not bm!625194))

(assert (not bm!625218))

(assert (not b!6864771))

(assert (not bm!625189))

(assert (not d!2156493))

(assert (not bs!1834715))

(assert (not b!6865039))

(assert (not bs!1834712))

(assert (not b!6864985))

(assert (not b!6864637))

(assert (not b!6865002))

(assert (not b!6864770))

(assert (not b!6864824))

(assert (not b!6864902))

(assert (not b!6864966))

(assert (not b!6865038))

(assert (not b!6864759))

(assert (not b!6864725))

(assert (not b!6865040))

(assert (not b!6864896))

(assert (not b!6864980))

(assert (not b!6864784))

(assert (not b!6865028))

(assert (not b!6864689))

(assert (not b!6864735))

(assert (not b!6864876))

(assert (not b!6864644))

(assert (not b!6864934))

(assert (not bs!1834716))

(assert (not bm!625221))

(assert (not b!6864892))

(assert (not b!6864911))

(assert (not b_lambda!259519))

(assert (not b_lambda!259531))

(assert (not b!6864919))

(assert (not b!6864888))

(assert (not d!2156511))

(assert (not bs!1834717))

(assert (not b!6865001))

(assert (not b!6864762))

(assert (not b!6864969))

(assert (not bm!625192))

(assert (not b!6864923))

(assert (not b!6864935))

(assert (not b!6864901))

(assert (not b!6864900))

(assert (not d!2156581))

(assert (not b_lambda!259525))

(assert (not b!6864936))

(assert (not b!6864992))

(assert (not b!6864944))

(assert (not b!6864760))

(assert (not b!6864925))

(assert (not bm!625198))

(assert (not b!6864940))

(assert (not bm!625215))

(assert (not b!6864972))

(assert (not b!6865004))

(assert (not bm!625204))

(assert (not b!6864851))

(assert (not b_lambda!259533))

(assert (not b!6864667))

(assert (not b!6864978))

(assert (not b!6865006))

(assert (not b!6864928))

(assert (not bm!625213))

(assert (not b_lambda!259527))

(assert (not b_lambda!259477))

(assert (not b!6865035))

(assert (not d!2156609))

(assert (not b!6865015))

(assert (not b!6864817))

(assert (not b!6864899))

(assert (not bm!625201))

(assert (not bs!1834720))

(assert (not bm!625179))

(assert (not b!6864724))

(assert (not b!6864964))

(assert (not d!2156537))

(assert (not b!6864877))

(assert (not d!2156559))

(assert (not bs!1834718))

(assert (not b_lambda!259529))

(assert (not b!6864904))

(assert (not d!2156495))

(assert (not b!6864636))

(assert (not b!6864692))

(assert (not bm!625197))

(assert (not b!6864903))

(assert (not bm!625177))

(assert (not b!6864952))

(assert (not b!6865027))

(assert (not b!6864807))

(assert (not d!2156583))

(assert (not b!6864946))

(assert (not b!6864765))

(assert (not d!2156593))

(assert (not b!6864677))

(assert (not b!6864645))

(assert (not bm!625220))

(assert (not b!6865032))

(assert (not b!6864773))

(assert (not b!6864996))

(assert (not b!6864893))

(assert (not bm!625180))

(assert (not d!2156617))

(assert (not bs!1834713))

(assert (not b!6865450))

(assert (not b!6865036))

(assert (not b!6864948))

(assert (not b!6865025))

(assert (not b!6864806))

(assert (not bm!625212))

(assert (not d!2156501))

(assert (not b!6864657))

(assert (not b!6865010))

(assert (not b!6864913))

(assert (not bm!625219))

(assert (not d!2156613))

(assert (not d!2156551))

(assert (not b!6864997))

(assert (not d!2156579))

(assert (not b!6864942))

(assert (not b!6864938))

(assert (not b!6864975))

(assert (not b!6864691))

(assert (not b!6864943))

(assert (not b!6864955))

(assert (not d!2156591))

(assert (not b!6864686))

(assert (not bm!625200))

(assert (not b!6865021))

(assert (not d!2156577))

(assert (not b!6864653))

(assert (not b!6864973))

(assert (not b!6865013))

(assert (not b!6865018))

(assert (not d!2156547))

(assert (not b!6864680))

(assert (not d!2156595))

(assert (not b!6864646))

(assert (not b!6865009))

(assert (not bm!625203))

(assert (not b!6865022))

(assert (not b!6864721))

(assert (not b!6864947))

(assert (not b!6864927))

(assert (not b!6864963))

(assert (not d!2156533))

(assert (not b!6864968))

(assert (not b!6864990))

(assert (not b!6864769))

(assert (not b!6865031))

(assert (not b!6865019))

(assert (not bm!625176))

(assert (not b!6864912))

(assert (not b_lambda!259523))

(assert (not b!6864764))

(assert (not b!6864960))

(assert (not bm!625216))

(assert (not b!6864895))

(assert (not d!2156597))

(assert (not b!6864803))

(assert (not b!6864988))

(assert (not bs!1834890))

(assert (not b!6864962))

(assert (not d!2156531))

(assert (not b!6865007))

(assert (not b!6864864))

(assert (not d!2156527))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2156811 () Bool)

(declare-fun res!2800762 () Bool)

(declare-fun e!4138800 () Bool)

(assert (=> d!2156811 (=> res!2800762 e!4138800)))

(assert (=> d!2156811 (= res!2800762 (is-Nil!66257 (t!380124 lt!2457732)))))

(assert (=> d!2156811 (= (forall!15885 (t!380124 lt!2457732) lambda!388377) e!4138800)))

(declare-fun b!6865451 () Bool)

(declare-fun e!4138801 () Bool)

(assert (=> b!6865451 (= e!4138800 e!4138801)))

(declare-fun res!2800763 () Bool)

(assert (=> b!6865451 (=> (not res!2800763) (not e!4138801))))

(assert (=> b!6865451 (= res!2800763 (dynLambda!26518 lambda!388377 (h!72705 (t!380124 lt!2457732))))))

(declare-fun b!6865452 () Bool)

(assert (=> b!6865452 (= e!4138801 (forall!15885 (t!380124 (t!380124 lt!2457732)) lambda!388377))))

(assert (= (and d!2156811 (not res!2800762)) b!6865451))

(assert (= (and b!6865451 res!2800763) b!6865452))

(declare-fun b_lambda!259591 () Bool)

(assert (=> (not b_lambda!259591) (not b!6865451)))

(declare-fun m!7598090 () Bool)

(assert (=> b!6865451 m!7598090))

(declare-fun m!7598092 () Bool)

(assert (=> b!6865452 m!7598092))

(assert (=> b!6864667 d!2156811))

(declare-fun b!6865453 () Bool)

(declare-fun res!2800769 () Bool)

(declare-fun e!4138803 () Bool)

(assert (=> b!6865453 (=> (not res!2800769) (not e!4138803))))

(declare-fun call!625274 () Bool)

(assert (=> b!6865453 (= res!2800769 (not call!625274))))

(declare-fun b!6865454 () Bool)

(declare-fun res!2800764 () Bool)

(declare-fun e!4138802 () Bool)

(assert (=> b!6865454 (=> res!2800764 e!4138802)))

(assert (=> b!6865454 (= res!2800764 (not (isEmpty!38620 (tail!12830 s!2326))))))

(declare-fun b!6865455 () Bool)

(declare-fun res!2800766 () Bool)

(declare-fun e!4138804 () Bool)

(assert (=> b!6865455 (=> res!2800766 e!4138804)))

(assert (=> b!6865455 (= res!2800766 (not (is-ElementMatch!16694 (h!72705 lt!2457732))))))

(declare-fun e!4138805 () Bool)

(assert (=> b!6865455 (= e!4138805 e!4138804)))

(declare-fun b!6865456 () Bool)

(declare-fun e!4138808 () Bool)

(assert (=> b!6865456 (= e!4138804 e!4138808)))

(declare-fun res!2800768 () Bool)

(assert (=> b!6865456 (=> (not res!2800768) (not e!4138808))))

(declare-fun lt!2457909 () Bool)

(assert (=> b!6865456 (= res!2800768 (not lt!2457909))))

(declare-fun d!2156813 () Bool)

(declare-fun e!4138807 () Bool)

(assert (=> d!2156813 e!4138807))

(declare-fun c!1277852 () Bool)

(assert (=> d!2156813 (= c!1277852 (is-EmptyExpr!16694 (h!72705 lt!2457732)))))

(declare-fun e!4138806 () Bool)

(assert (=> d!2156813 (= lt!2457909 e!4138806)))

(declare-fun c!1277850 () Bool)

(assert (=> d!2156813 (= c!1277850 (isEmpty!38620 s!2326))))

(assert (=> d!2156813 (validRegex!8430 (h!72705 lt!2457732))))

(assert (=> d!2156813 (= (matchR!8877 (h!72705 lt!2457732) s!2326) lt!2457909)))

(declare-fun b!6865457 () Bool)

(assert (=> b!6865457 (= e!4138807 (= lt!2457909 call!625274))))

(declare-fun b!6865458 () Bool)

(declare-fun res!2800765 () Bool)

(assert (=> b!6865458 (=> res!2800765 e!4138804)))

(assert (=> b!6865458 (= res!2800765 e!4138803)))

(declare-fun res!2800771 () Bool)

(assert (=> b!6865458 (=> (not res!2800771) (not e!4138803))))

(assert (=> b!6865458 (= res!2800771 lt!2457909)))

(declare-fun b!6865459 () Bool)

(assert (=> b!6865459 (= e!4138805 (not lt!2457909))))

(declare-fun bm!625269 () Bool)

(assert (=> bm!625269 (= call!625274 (isEmpty!38620 s!2326))))

(declare-fun b!6865460 () Bool)

(assert (=> b!6865460 (= e!4138806 (nullable!6655 (h!72705 lt!2457732)))))

(declare-fun b!6865461 () Bool)

(assert (=> b!6865461 (= e!4138807 e!4138805)))

(declare-fun c!1277851 () Bool)

(assert (=> b!6865461 (= c!1277851 (is-EmptyLang!16694 (h!72705 lt!2457732)))))

(declare-fun b!6865462 () Bool)

(assert (=> b!6865462 (= e!4138808 e!4138802)))

(declare-fun res!2800767 () Bool)

(assert (=> b!6865462 (=> res!2800767 e!4138802)))

(assert (=> b!6865462 (= res!2800767 call!625274)))

(declare-fun b!6865463 () Bool)

(assert (=> b!6865463 (= e!4138802 (not (= (head!13772 s!2326) (c!1277522 (h!72705 lt!2457732)))))))

(declare-fun b!6865464 () Bool)

(assert (=> b!6865464 (= e!4138803 (= (head!13772 s!2326) (c!1277522 (h!72705 lt!2457732))))))

(declare-fun b!6865465 () Bool)

(assert (=> b!6865465 (= e!4138806 (matchR!8877 (derivativeStep!5337 (h!72705 lt!2457732) (head!13772 s!2326)) (tail!12830 s!2326)))))

(declare-fun b!6865466 () Bool)

(declare-fun res!2800770 () Bool)

(assert (=> b!6865466 (=> (not res!2800770) (not e!4138803))))

(assert (=> b!6865466 (= res!2800770 (isEmpty!38620 (tail!12830 s!2326)))))

(assert (= (and d!2156813 c!1277850) b!6865460))

(assert (= (and d!2156813 (not c!1277850)) b!6865465))

(assert (= (and d!2156813 c!1277852) b!6865457))

(assert (= (and d!2156813 (not c!1277852)) b!6865461))

(assert (= (and b!6865461 c!1277851) b!6865459))

(assert (= (and b!6865461 (not c!1277851)) b!6865455))

(assert (= (and b!6865455 (not res!2800766)) b!6865458))

(assert (= (and b!6865458 res!2800771) b!6865453))

(assert (= (and b!6865453 res!2800769) b!6865466))

(assert (= (and b!6865466 res!2800770) b!6865464))

(assert (= (and b!6865458 (not res!2800765)) b!6865456))

(assert (= (and b!6865456 res!2800768) b!6865462))

(assert (= (and b!6865462 (not res!2800767)) b!6865454))

(assert (= (and b!6865454 (not res!2800764)) b!6865463))

(assert (= (or b!6865457 b!6865453 b!6865462) bm!625269))

(assert (=> b!6865464 m!7597210))

(assert (=> bm!625269 m!7597206))

(assert (=> b!6865463 m!7597210))

(assert (=> b!6865465 m!7597210))

(assert (=> b!6865465 m!7597210))

(declare-fun m!7598094 () Bool)

(assert (=> b!6865465 m!7598094))

(assert (=> b!6865465 m!7597214))

(assert (=> b!6865465 m!7598094))

(assert (=> b!6865465 m!7597214))

(declare-fun m!7598096 () Bool)

(assert (=> b!6865465 m!7598096))

(assert (=> d!2156813 m!7597206))

(assert (=> d!2156813 m!7597750))

(assert (=> b!6865466 m!7597214))

(assert (=> b!6865466 m!7597214))

(assert (=> b!6865466 m!7597272))

(declare-fun m!7598098 () Bool)

(assert (=> b!6865460 m!7598098))

(assert (=> b!6865454 m!7597214))

(assert (=> b!6865454 m!7597214))

(assert (=> b!6865454 m!7597272))

(assert (=> b!6865450 d!2156813))

(declare-fun d!2156815 () Bool)

(declare-fun res!2800772 () Bool)

(declare-fun e!4138809 () Bool)

(assert (=> d!2156815 (=> res!2800772 e!4138809)))

(assert (=> d!2156815 (= res!2800772 (is-Nil!66258 (t!380125 lt!2457775)))))

(assert (=> d!2156815 (= (noDuplicate!2458 (t!380125 lt!2457775)) e!4138809)))

(declare-fun b!6865467 () Bool)

(declare-fun e!4138810 () Bool)

(assert (=> b!6865467 (= e!4138809 e!4138810)))

(declare-fun res!2800773 () Bool)

(assert (=> b!6865467 (=> (not res!2800773) (not e!4138810))))

(assert (=> b!6865467 (= res!2800773 (not (contains!20352 (t!380125 (t!380125 lt!2457775)) (h!72706 (t!380125 lt!2457775)))))))

(declare-fun b!6865468 () Bool)

(assert (=> b!6865468 (= e!4138810 (noDuplicate!2458 (t!380125 (t!380125 lt!2457775))))))

(assert (= (and d!2156815 (not res!2800772)) b!6865467))

(assert (= (and b!6865467 res!2800773) b!6865468))

(declare-fun m!7598100 () Bool)

(assert (=> b!6865467 m!7598100))

(declare-fun m!7598102 () Bool)

(assert (=> b!6865468 m!7598102))

(assert (=> b!6864637 d!2156815))

(declare-fun d!2156817 () Bool)

(assert (=> d!2156817 (= (isEmptyLang!2024 lt!2457869) (is-EmptyLang!16694 lt!2457869))))

(assert (=> b!6864760 d!2156817))

(assert (=> d!2156597 d!2156523))

(declare-fun b!6865469 () Bool)

(declare-fun res!2800776 () Bool)

(declare-fun e!4138811 () Bool)

(assert (=> b!6865469 (=> res!2800776 e!4138811)))

(assert (=> b!6865469 (= res!2800776 (not (is-Concat!25539 (ite c!1277709 (regOne!33901 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))) (regOne!33900 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292))))))))))

(declare-fun e!4138812 () Bool)

(assert (=> b!6865469 (= e!4138812 e!4138811)))

(declare-fun b!6865471 () Bool)

(declare-fun e!4138813 () Bool)

(assert (=> b!6865471 (= e!4138811 e!4138813)))

(declare-fun res!2800778 () Bool)

(assert (=> b!6865471 (=> (not res!2800778) (not e!4138813))))

(declare-fun call!625276 () Bool)

(assert (=> b!6865471 (= res!2800778 call!625276)))

(declare-fun b!6865472 () Bool)

(declare-fun res!2800777 () Bool)

(declare-fun e!4138817 () Bool)

(assert (=> b!6865472 (=> (not res!2800777) (not e!4138817))))

(assert (=> b!6865472 (= res!2800777 call!625276)))

(assert (=> b!6865472 (= e!4138812 e!4138817)))

(declare-fun b!6865473 () Bool)

(declare-fun e!4138814 () Bool)

(declare-fun call!625277 () Bool)

(assert (=> b!6865473 (= e!4138814 call!625277)))

(declare-fun b!6865474 () Bool)

(declare-fun e!4138816 () Bool)

(assert (=> b!6865474 (= e!4138816 e!4138812)))

(declare-fun c!1277854 () Bool)

(assert (=> b!6865474 (= c!1277854 (is-Union!16694 (ite c!1277709 (regOne!33901 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))) (regOne!33900 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))))))))

(declare-fun bm!625270 () Bool)

(declare-fun call!625275 () Bool)

(assert (=> bm!625270 (= call!625275 call!625277)))

(declare-fun bm!625271 () Bool)

(declare-fun c!1277853 () Bool)

(assert (=> bm!625271 (= call!625277 (validRegex!8430 (ite c!1277853 (reg!17023 (ite c!1277709 (regOne!33901 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))) (regOne!33900 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))))) (ite c!1277854 (regTwo!33901 (ite c!1277709 (regOne!33901 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))) (regOne!33900 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))))) (regTwo!33900 (ite c!1277709 (regOne!33901 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))) (regOne!33900 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292))))))))))))

(declare-fun b!6865475 () Bool)

(assert (=> b!6865475 (= e!4138816 e!4138814)))

(declare-fun res!2800775 () Bool)

(assert (=> b!6865475 (= res!2800775 (not (nullable!6655 (reg!17023 (ite c!1277709 (regOne!33901 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))) (regOne!33900 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))))))))))

(assert (=> b!6865475 (=> (not res!2800775) (not e!4138814))))

(declare-fun b!6865476 () Bool)

(declare-fun e!4138815 () Bool)

(assert (=> b!6865476 (= e!4138815 e!4138816)))

(assert (=> b!6865476 (= c!1277853 (is-Star!16694 (ite c!1277709 (regOne!33901 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))) (regOne!33900 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))))))))

(declare-fun b!6865470 () Bool)

(assert (=> b!6865470 (= e!4138817 call!625275)))

(declare-fun d!2156819 () Bool)

(declare-fun res!2800774 () Bool)

(assert (=> d!2156819 (=> res!2800774 e!4138815)))

(assert (=> d!2156819 (= res!2800774 (is-ElementMatch!16694 (ite c!1277709 (regOne!33901 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))) (regOne!33900 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))))))))

(assert (=> d!2156819 (= (validRegex!8430 (ite c!1277709 (regOne!33901 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))) (regOne!33900 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))))) e!4138815)))

(declare-fun bm!625272 () Bool)

(assert (=> bm!625272 (= call!625276 (validRegex!8430 (ite c!1277854 (regOne!33901 (ite c!1277709 (regOne!33901 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))) (regOne!33900 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))))) (regOne!33900 (ite c!1277709 (regOne!33901 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))) (regOne!33900 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))))))))))

(declare-fun b!6865477 () Bool)

(assert (=> b!6865477 (= e!4138813 call!625275)))

(assert (= (and d!2156819 (not res!2800774)) b!6865476))

(assert (= (and b!6865476 c!1277853) b!6865475))

(assert (= (and b!6865476 (not c!1277853)) b!6865474))

(assert (= (and b!6865475 res!2800775) b!6865473))

(assert (= (and b!6865474 c!1277854) b!6865472))

(assert (= (and b!6865474 (not c!1277854)) b!6865469))

(assert (= (and b!6865472 res!2800777) b!6865470))

(assert (= (and b!6865469 (not res!2800776)) b!6865471))

(assert (= (and b!6865471 res!2800778) b!6865477))

(assert (= (or b!6865470 b!6865477) bm!625270))

(assert (= (or b!6865472 b!6865471) bm!625272))

(assert (= (or b!6865473 bm!625270) bm!625271))

(declare-fun m!7598104 () Bool)

(assert (=> bm!625271 m!7598104))

(declare-fun m!7598106 () Bool)

(assert (=> b!6865475 m!7598106))

(declare-fun m!7598108 () Bool)

(assert (=> bm!625272 m!7598108))

(assert (=> bm!625201 d!2156819))

(declare-fun d!2156821 () Bool)

(declare-fun choose!51170 ((Set Context!12156) Int) (Set Context!12156))

(assert (=> d!2156821 (= (flatMap!2141 z!1189 lambda!388439) (choose!51170 z!1189 lambda!388439))))

(declare-fun bs!1834891 () Bool)

(assert (= bs!1834891 d!2156821))

(declare-fun m!7598110 () Bool)

(assert (=> bs!1834891 m!7598110))

(assert (=> d!2156547 d!2156821))

(declare-fun bs!1834892 () Bool)

(declare-fun d!2156823 () Bool)

(assert (= bs!1834892 (and d!2156823 d!2156435)))

(declare-fun lambda!388484 () Int)

(assert (=> bs!1834892 (= lambda!388484 lambda!388396)))

(declare-fun bs!1834893 () Bool)

(assert (= bs!1834893 (and d!2156823 b!6864001)))

(assert (=> bs!1834893 (= lambda!388484 lambda!388340)))

(declare-fun bs!1834894 () Bool)

(assert (= bs!1834894 (and d!2156823 d!2156495)))

(assert (=> bs!1834894 (not (= lambda!388484 lambda!388430))))

(declare-fun bs!1834895 () Bool)

(assert (= bs!1834895 (and d!2156823 d!2156611)))

(assert (=> bs!1834895 (= lambda!388484 lambda!388448)))

(declare-fun bs!1834896 () Bool)

(assert (= bs!1834896 (and d!2156823 d!2156385)))

(assert (=> bs!1834896 (= lambda!388484 lambda!388369)))

(declare-fun bs!1834897 () Bool)

(assert (= bs!1834897 (and d!2156823 d!2156577)))

(assert (=> bs!1834897 (= lambda!388484 lambda!388443)))

(declare-fun bs!1834898 () Bool)

(assert (= bs!1834898 (and d!2156823 d!2156493)))

(assert (=> bs!1834898 (not (= lambda!388484 lambda!388427))))

(declare-fun bs!1834899 () Bool)

(assert (= bs!1834899 (and d!2156823 d!2156527)))

(assert (=> bs!1834899 (= lambda!388484 lambda!388435)))

(declare-fun bs!1834900 () Bool)

(assert (= bs!1834900 (and d!2156823 d!2156397)))

(assert (=> bs!1834900 (not (= lambda!388484 lambda!388378))))

(declare-fun bs!1834901 () Bool)

(assert (= bs!1834901 (and d!2156823 d!2156437)))

(assert (=> bs!1834901 (= lambda!388484 lambda!388397)))

(declare-fun bs!1834902 () Bool)

(assert (= bs!1834902 (and d!2156823 d!2156551)))

(assert (=> bs!1834902 (= lambda!388484 lambda!388440)))

(declare-fun bs!1834903 () Bool)

(assert (= bs!1834903 (and d!2156823 b!6863998)))

(assert (=> bs!1834903 (not (= lambda!388484 lambda!388338))))

(assert (=> bs!1834900 (= lambda!388484 lambda!388377)))

(declare-fun bs!1834904 () Bool)

(assert (= bs!1834904 (and d!2156823 d!2156613)))

(assert (=> bs!1834904 (= lambda!388484 lambda!388449)))

(declare-fun bs!1834905 () Bool)

(assert (= bs!1834905 (and d!2156823 d!2156375)))

(assert (=> bs!1834905 (= lambda!388484 lambda!388360)))

(declare-fun bs!1834906 () Bool)

(assert (= bs!1834906 (and d!2156823 d!2156533)))

(assert (=> bs!1834906 (= lambda!388484 lambda!388436)))

(declare-fun bs!1834907 () Bool)

(assert (= bs!1834907 (and d!2156823 d!2156401)))

(assert (=> bs!1834907 (= lambda!388484 lambda!388381)))

(declare-fun bs!1834908 () Bool)

(assert (= bs!1834908 (and d!2156823 d!2156489)))

(assert (=> bs!1834908 (= lambda!388484 lambda!388426)))

(declare-fun bs!1834909 () Bool)

(assert (= bs!1834909 (and d!2156823 d!2156395)))

(assert (=> bs!1834909 (not (= lambda!388484 lambda!388372))))

(declare-fun b!6865478 () Bool)

(declare-fun e!4138818 () Bool)

(assert (=> b!6865478 (= e!4138818 (isEmpty!38619 (t!380124 (t!380124 (unfocusZipperList!2111 zl!343)))))))

(declare-fun b!6865479 () Bool)

(declare-fun e!4138819 () Bool)

(declare-fun e!4138822 () Bool)

(assert (=> b!6865479 (= e!4138819 e!4138822)))

(declare-fun c!1277858 () Bool)

(assert (=> b!6865479 (= c!1277858 (isEmpty!38619 (tail!12829 (t!380124 (unfocusZipperList!2111 zl!343)))))))

(declare-fun b!6865480 () Bool)

(declare-fun lt!2457910 () Regex!16694)

(assert (=> b!6865480 (= e!4138819 (isEmptyLang!2024 lt!2457910))))

(declare-fun e!4138821 () Bool)

(assert (=> d!2156823 e!4138821))

(declare-fun res!2800780 () Bool)

(assert (=> d!2156823 (=> (not res!2800780) (not e!4138821))))

(assert (=> d!2156823 (= res!2800780 (validRegex!8430 lt!2457910))))

(declare-fun e!4138820 () Regex!16694)

(assert (=> d!2156823 (= lt!2457910 e!4138820)))

(declare-fun c!1277855 () Bool)

(assert (=> d!2156823 (= c!1277855 e!4138818)))

(declare-fun res!2800779 () Bool)

(assert (=> d!2156823 (=> (not res!2800779) (not e!4138818))))

(assert (=> d!2156823 (= res!2800779 (is-Cons!66257 (t!380124 (unfocusZipperList!2111 zl!343))))))

(assert (=> d!2156823 (forall!15885 (t!380124 (unfocusZipperList!2111 zl!343)) lambda!388484)))

(assert (=> d!2156823 (= (generalisedUnion!2529 (t!380124 (unfocusZipperList!2111 zl!343))) lt!2457910)))

(declare-fun b!6865481 () Bool)

(declare-fun e!4138823 () Regex!16694)

(assert (=> b!6865481 (= e!4138820 e!4138823)))

(declare-fun c!1277856 () Bool)

(assert (=> b!6865481 (= c!1277856 (is-Cons!66257 (t!380124 (unfocusZipperList!2111 zl!343))))))

(declare-fun b!6865482 () Bool)

(assert (=> b!6865482 (= e!4138821 e!4138819)))

(declare-fun c!1277857 () Bool)

(assert (=> b!6865482 (= c!1277857 (isEmpty!38619 (t!380124 (unfocusZipperList!2111 zl!343))))))

(declare-fun b!6865483 () Bool)

(assert (=> b!6865483 (= e!4138820 (h!72705 (t!380124 (unfocusZipperList!2111 zl!343))))))

(declare-fun b!6865484 () Bool)

(assert (=> b!6865484 (= e!4138823 (Union!16694 (h!72705 (t!380124 (unfocusZipperList!2111 zl!343))) (generalisedUnion!2529 (t!380124 (t!380124 (unfocusZipperList!2111 zl!343))))))))

(declare-fun b!6865485 () Bool)

(assert (=> b!6865485 (= e!4138822 (isUnion!1454 lt!2457910))))

(declare-fun b!6865486 () Bool)

(assert (=> b!6865486 (= e!4138822 (= lt!2457910 (head!13770 (t!380124 (unfocusZipperList!2111 zl!343)))))))

(declare-fun b!6865487 () Bool)

(assert (=> b!6865487 (= e!4138823 EmptyLang!16694)))

(assert (= (and d!2156823 res!2800779) b!6865478))

(assert (= (and d!2156823 c!1277855) b!6865483))

(assert (= (and d!2156823 (not c!1277855)) b!6865481))

(assert (= (and b!6865481 c!1277856) b!6865484))

(assert (= (and b!6865481 (not c!1277856)) b!6865487))

(assert (= (and d!2156823 res!2800780) b!6865482))

(assert (= (and b!6865482 c!1277857) b!6865480))

(assert (= (and b!6865482 (not c!1277857)) b!6865479))

(assert (= (and b!6865479 c!1277858) b!6865486))

(assert (= (and b!6865479 (not c!1277858)) b!6865485))

(declare-fun m!7598112 () Bool)

(assert (=> b!6865485 m!7598112))

(declare-fun m!7598114 () Bool)

(assert (=> d!2156823 m!7598114))

(declare-fun m!7598116 () Bool)

(assert (=> d!2156823 m!7598116))

(declare-fun m!7598118 () Bool)

(assert (=> b!6865479 m!7598118))

(assert (=> b!6865479 m!7598118))

(declare-fun m!7598120 () Bool)

(assert (=> b!6865479 m!7598120))

(declare-fun m!7598122 () Bool)

(assert (=> b!6865480 m!7598122))

(assert (=> b!6865482 m!7597536))

(declare-fun m!7598124 () Bool)

(assert (=> b!6865478 m!7598124))

(declare-fun m!7598126 () Bool)

(assert (=> b!6865484 m!7598126))

(declare-fun m!7598128 () Bool)

(assert (=> b!6865486 m!7598128))

(assert (=> b!6864764 d!2156823))

(declare-fun d!2156825 () Bool)

(assert (=> d!2156825 (= (isEmpty!38620 (tail!12830 (tail!12830 s!2326))) (is-Nil!66259 (tail!12830 (tail!12830 s!2326))))))

(assert (=> b!6864692 d!2156825))

(declare-fun d!2156827 () Bool)

(assert (=> d!2156827 (= (tail!12830 (tail!12830 s!2326)) (t!380126 (tail!12830 s!2326)))))

(assert (=> b!6864692 d!2156827))

(declare-fun bs!1834910 () Bool)

(declare-fun d!2156829 () Bool)

(assert (= bs!1834910 (and d!2156829 d!2156435)))

(declare-fun lambda!388485 () Int)

(assert (=> bs!1834910 (= lambda!388485 lambda!388396)))

(declare-fun bs!1834911 () Bool)

(assert (= bs!1834911 (and d!2156829 b!6864001)))

(assert (=> bs!1834911 (= lambda!388485 lambda!388340)))

(declare-fun bs!1834912 () Bool)

(assert (= bs!1834912 (and d!2156829 d!2156495)))

(assert (=> bs!1834912 (not (= lambda!388485 lambda!388430))))

(declare-fun bs!1834913 () Bool)

(assert (= bs!1834913 (and d!2156829 d!2156611)))

(assert (=> bs!1834913 (= lambda!388485 lambda!388448)))

(declare-fun bs!1834914 () Bool)

(assert (= bs!1834914 (and d!2156829 d!2156385)))

(assert (=> bs!1834914 (= lambda!388485 lambda!388369)))

(declare-fun bs!1834915 () Bool)

(assert (= bs!1834915 (and d!2156829 d!2156577)))

(assert (=> bs!1834915 (= lambda!388485 lambda!388443)))

(declare-fun bs!1834916 () Bool)

(assert (= bs!1834916 (and d!2156829 d!2156493)))

(assert (=> bs!1834916 (not (= lambda!388485 lambda!388427))))

(declare-fun bs!1834917 () Bool)

(assert (= bs!1834917 (and d!2156829 d!2156823)))

(assert (=> bs!1834917 (= lambda!388485 lambda!388484)))

(declare-fun bs!1834918 () Bool)

(assert (= bs!1834918 (and d!2156829 d!2156527)))

(assert (=> bs!1834918 (= lambda!388485 lambda!388435)))

(declare-fun bs!1834919 () Bool)

(assert (= bs!1834919 (and d!2156829 d!2156397)))

(assert (=> bs!1834919 (not (= lambda!388485 lambda!388378))))

(declare-fun bs!1834920 () Bool)

(assert (= bs!1834920 (and d!2156829 d!2156437)))

(assert (=> bs!1834920 (= lambda!388485 lambda!388397)))

(declare-fun bs!1834921 () Bool)

(assert (= bs!1834921 (and d!2156829 d!2156551)))

(assert (=> bs!1834921 (= lambda!388485 lambda!388440)))

(declare-fun bs!1834922 () Bool)

(assert (= bs!1834922 (and d!2156829 b!6863998)))

(assert (=> bs!1834922 (not (= lambda!388485 lambda!388338))))

(assert (=> bs!1834919 (= lambda!388485 lambda!388377)))

(declare-fun bs!1834923 () Bool)

(assert (= bs!1834923 (and d!2156829 d!2156613)))

(assert (=> bs!1834923 (= lambda!388485 lambda!388449)))

(declare-fun bs!1834924 () Bool)

(assert (= bs!1834924 (and d!2156829 d!2156375)))

(assert (=> bs!1834924 (= lambda!388485 lambda!388360)))

(declare-fun bs!1834925 () Bool)

(assert (= bs!1834925 (and d!2156829 d!2156533)))

(assert (=> bs!1834925 (= lambda!388485 lambda!388436)))

(declare-fun bs!1834926 () Bool)

(assert (= bs!1834926 (and d!2156829 d!2156401)))

(assert (=> bs!1834926 (= lambda!388485 lambda!388381)))

(declare-fun bs!1834927 () Bool)

(assert (= bs!1834927 (and d!2156829 d!2156489)))

(assert (=> bs!1834927 (= lambda!388485 lambda!388426)))

(declare-fun bs!1834928 () Bool)

(assert (= bs!1834928 (and d!2156829 d!2156395)))

(assert (=> bs!1834928 (not (= lambda!388485 lambda!388372))))

(assert (=> d!2156829 (= (inv!84983 setElem!47216) (forall!15885 (exprs!6578 setElem!47216) lambda!388485))))

(declare-fun bs!1834929 () Bool)

(assert (= bs!1834929 d!2156829))

(declare-fun m!7598130 () Bool)

(assert (=> bs!1834929 m!7598130))

(assert (=> setNonEmpty!47216 d!2156829))

(declare-fun d!2156831 () Bool)

(declare-fun c!1277859 () Bool)

(assert (=> d!2156831 (= c!1277859 (isEmpty!38620 (tail!12830 s!2326)))))

(declare-fun e!4138824 () Bool)

(assert (=> d!2156831 (= (matchZipper!2660 (derivationStepZipper!2614 (content!13007 zl!343) (head!13772 s!2326)) (tail!12830 s!2326)) e!4138824)))

(declare-fun b!6865488 () Bool)

(assert (=> b!6865488 (= e!4138824 (nullableZipper!2367 (derivationStepZipper!2614 (content!13007 zl!343) (head!13772 s!2326))))))

(declare-fun b!6865489 () Bool)

(assert (=> b!6865489 (= e!4138824 (matchZipper!2660 (derivationStepZipper!2614 (derivationStepZipper!2614 (content!13007 zl!343) (head!13772 s!2326)) (head!13772 (tail!12830 s!2326))) (tail!12830 (tail!12830 s!2326))))))

(assert (= (and d!2156831 c!1277859) b!6865488))

(assert (= (and d!2156831 (not c!1277859)) b!6865489))

(assert (=> d!2156831 m!7597214))

(assert (=> d!2156831 m!7597272))

(assert (=> b!6865488 m!7597666))

(declare-fun m!7598132 () Bool)

(assert (=> b!6865488 m!7598132))

(assert (=> b!6865489 m!7597214))

(assert (=> b!6865489 m!7597480))

(assert (=> b!6865489 m!7597666))

(assert (=> b!6865489 m!7597480))

(declare-fun m!7598134 () Bool)

(assert (=> b!6865489 m!7598134))

(assert (=> b!6865489 m!7597214))

(assert (=> b!6865489 m!7597484))

(assert (=> b!6865489 m!7598134))

(assert (=> b!6865489 m!7597484))

(declare-fun m!7598136 () Bool)

(assert (=> b!6865489 m!7598136))

(assert (=> b!6864877 d!2156831))

(declare-fun bs!1834930 () Bool)

(declare-fun d!2156833 () Bool)

(assert (= bs!1834930 (and d!2156833 d!2156547)))

(declare-fun lambda!388486 () Int)

(assert (=> bs!1834930 (= lambda!388486 lambda!388439)))

(assert (=> d!2156833 true))

(assert (=> d!2156833 (= (derivationStepZipper!2614 (content!13007 zl!343) (head!13772 s!2326)) (flatMap!2141 (content!13007 zl!343) lambda!388486))))

(declare-fun bs!1834931 () Bool)

(assert (= bs!1834931 d!2156833))

(assert (=> bs!1834931 m!7597180))

(declare-fun m!7598138 () Bool)

(assert (=> bs!1834931 m!7598138))

(assert (=> b!6864877 d!2156833))

(assert (=> b!6864877 d!2156505))

(assert (=> b!6864877 d!2156507))

(assert (=> bs!1834717 d!2156561))

(assert (=> d!2156495 d!2156415))

(declare-fun bs!1834932 () Bool)

(declare-fun d!2156835 () Bool)

(assert (= bs!1834932 (and d!2156835 d!2156435)))

(declare-fun lambda!388487 () Int)

(assert (=> bs!1834932 (not (= lambda!388487 lambda!388396))))

(declare-fun bs!1834933 () Bool)

(assert (= bs!1834933 (and d!2156835 b!6864001)))

(assert (=> bs!1834933 (not (= lambda!388487 lambda!388340))))

(declare-fun bs!1834934 () Bool)

(assert (= bs!1834934 (and d!2156835 d!2156495)))

(assert (=> bs!1834934 (not (= lambda!388487 lambda!388430))))

(declare-fun bs!1834935 () Bool)

(assert (= bs!1834935 (and d!2156835 d!2156611)))

(assert (=> bs!1834935 (not (= lambda!388487 lambda!388448))))

(declare-fun bs!1834936 () Bool)

(assert (= bs!1834936 (and d!2156835 d!2156385)))

(assert (=> bs!1834936 (not (= lambda!388487 lambda!388369))))

(declare-fun bs!1834937 () Bool)

(assert (= bs!1834937 (and d!2156835 d!2156577)))

(assert (=> bs!1834937 (not (= lambda!388487 lambda!388443))))

(declare-fun bs!1834938 () Bool)

(assert (= bs!1834938 (and d!2156835 d!2156829)))

(assert (=> bs!1834938 (not (= lambda!388487 lambda!388485))))

(declare-fun bs!1834939 () Bool)

(assert (= bs!1834939 (and d!2156835 d!2156493)))

(assert (=> bs!1834939 (= (= lambda!388430 lambda!388378) (= lambda!388487 lambda!388427))))

(declare-fun bs!1834940 () Bool)

(assert (= bs!1834940 (and d!2156835 d!2156823)))

(assert (=> bs!1834940 (not (= lambda!388487 lambda!388484))))

(declare-fun bs!1834941 () Bool)

(assert (= bs!1834941 (and d!2156835 d!2156527)))

(assert (=> bs!1834941 (not (= lambda!388487 lambda!388435))))

(declare-fun bs!1834942 () Bool)

(assert (= bs!1834942 (and d!2156835 d!2156397)))

(assert (=> bs!1834942 (not (= lambda!388487 lambda!388378))))

(declare-fun bs!1834943 () Bool)

(assert (= bs!1834943 (and d!2156835 d!2156437)))

(assert (=> bs!1834943 (not (= lambda!388487 lambda!388397))))

(declare-fun bs!1834944 () Bool)

(assert (= bs!1834944 (and d!2156835 d!2156551)))

(assert (=> bs!1834944 (not (= lambda!388487 lambda!388440))))

(declare-fun bs!1834945 () Bool)

(assert (= bs!1834945 (and d!2156835 b!6863998)))

(assert (=> bs!1834945 (not (= lambda!388487 lambda!388338))))

(assert (=> bs!1834942 (not (= lambda!388487 lambda!388377))))

(declare-fun bs!1834946 () Bool)

(assert (= bs!1834946 (and d!2156835 d!2156613)))

(assert (=> bs!1834946 (not (= lambda!388487 lambda!388449))))

(declare-fun bs!1834947 () Bool)

(assert (= bs!1834947 (and d!2156835 d!2156375)))

(assert (=> bs!1834947 (not (= lambda!388487 lambda!388360))))

(declare-fun bs!1834948 () Bool)

(assert (= bs!1834948 (and d!2156835 d!2156533)))

(assert (=> bs!1834948 (not (= lambda!388487 lambda!388436))))

(declare-fun bs!1834949 () Bool)

(assert (= bs!1834949 (and d!2156835 d!2156401)))

(assert (=> bs!1834949 (not (= lambda!388487 lambda!388381))))

(declare-fun bs!1834950 () Bool)

(assert (= bs!1834950 (and d!2156835 d!2156489)))

(assert (=> bs!1834950 (not (= lambda!388487 lambda!388426))))

(declare-fun bs!1834951 () Bool)

(assert (= bs!1834951 (and d!2156835 d!2156395)))

(assert (=> bs!1834951 (= (= lambda!388430 lambda!388338) (= lambda!388487 lambda!388372))))

(assert (=> d!2156835 true))

(assert (=> d!2156835 (< (dynLambda!26520 order!27719 lambda!388430) (dynLambda!26520 order!27719 lambda!388487))))

(assert (=> d!2156835 (= (exists!2820 lt!2457732 lambda!388430) (not (forall!15885 lt!2457732 lambda!388487)))))

(declare-fun bs!1834952 () Bool)

(assert (= bs!1834952 d!2156835))

(declare-fun m!7598140 () Bool)

(assert (=> bs!1834952 m!7598140))

(assert (=> d!2156495 d!2156835))

(declare-fun d!2156837 () Bool)

(assert (=> d!2156837 (= (isEmpty!38619 (t!380124 (exprs!6578 (h!72706 zl!343)))) (is-Nil!66257 (t!380124 (exprs!6578 (h!72706 zl!343)))))))

(assert (=> b!6864903 d!2156837))

(declare-fun d!2156839 () Bool)

(declare-fun c!1277860 () Bool)

(assert (=> d!2156839 (= c!1277860 (isEmpty!38620 (tail!12830 (tail!12830 s!2326))))))

(declare-fun e!4138825 () Bool)

(assert (=> d!2156839 (= (matchZipper!2660 (derivationStepZipper!2614 (derivationStepZipper!2614 z!1189 (head!13772 s!2326)) (head!13772 (tail!12830 s!2326))) (tail!12830 (tail!12830 s!2326))) e!4138825)))

(declare-fun b!6865490 () Bool)

(assert (=> b!6865490 (= e!4138825 (nullableZipper!2367 (derivationStepZipper!2614 (derivationStepZipper!2614 z!1189 (head!13772 s!2326)) (head!13772 (tail!12830 s!2326)))))))

(declare-fun b!6865491 () Bool)

(assert (=> b!6865491 (= e!4138825 (matchZipper!2660 (derivationStepZipper!2614 (derivationStepZipper!2614 (derivationStepZipper!2614 z!1189 (head!13772 s!2326)) (head!13772 (tail!12830 s!2326))) (head!13772 (tail!12830 (tail!12830 s!2326)))) (tail!12830 (tail!12830 (tail!12830 s!2326)))))))

(assert (= (and d!2156839 c!1277860) b!6865490))

(assert (= (and d!2156839 (not c!1277860)) b!6865491))

(assert (=> d!2156839 m!7597484))

(assert (=> d!2156839 m!7597490))

(assert (=> b!6865490 m!7597596))

(declare-fun m!7598142 () Bool)

(assert (=> b!6865490 m!7598142))

(assert (=> b!6865491 m!7597484))

(declare-fun m!7598144 () Bool)

(assert (=> b!6865491 m!7598144))

(assert (=> b!6865491 m!7597596))

(assert (=> b!6865491 m!7598144))

(declare-fun m!7598146 () Bool)

(assert (=> b!6865491 m!7598146))

(assert (=> b!6865491 m!7597484))

(declare-fun m!7598148 () Bool)

(assert (=> b!6865491 m!7598148))

(assert (=> b!6865491 m!7598146))

(assert (=> b!6865491 m!7598148))

(declare-fun m!7598150 () Bool)

(assert (=> b!6865491 m!7598150))

(assert (=> b!6864807 d!2156839))

(declare-fun bs!1834953 () Bool)

(declare-fun d!2156841 () Bool)

(assert (= bs!1834953 (and d!2156841 d!2156547)))

(declare-fun lambda!388488 () Int)

(assert (=> bs!1834953 (= (= (head!13772 (tail!12830 s!2326)) (head!13772 s!2326)) (= lambda!388488 lambda!388439))))

(declare-fun bs!1834954 () Bool)

(assert (= bs!1834954 (and d!2156841 d!2156833)))

(assert (=> bs!1834954 (= (= (head!13772 (tail!12830 s!2326)) (head!13772 s!2326)) (= lambda!388488 lambda!388486))))

(assert (=> d!2156841 true))

(assert (=> d!2156841 (= (derivationStepZipper!2614 (derivationStepZipper!2614 z!1189 (head!13772 s!2326)) (head!13772 (tail!12830 s!2326))) (flatMap!2141 (derivationStepZipper!2614 z!1189 (head!13772 s!2326)) lambda!388488))))

(declare-fun bs!1834955 () Bool)

(assert (= bs!1834955 d!2156841))

(assert (=> bs!1834955 m!7597212))

(declare-fun m!7598152 () Bool)

(assert (=> bs!1834955 m!7598152))

(assert (=> b!6864807 d!2156841))

(declare-fun d!2156843 () Bool)

(assert (=> d!2156843 (= (head!13772 (tail!12830 s!2326)) (h!72707 (tail!12830 s!2326)))))

(assert (=> b!6864807 d!2156843))

(assert (=> b!6864807 d!2156827))

(declare-fun bs!1834956 () Bool)

(declare-fun d!2156845 () Bool)

(assert (= bs!1834956 (and d!2156845 d!2156435)))

(declare-fun lambda!388489 () Int)

(assert (=> bs!1834956 (= lambda!388489 lambda!388396)))

(declare-fun bs!1834957 () Bool)

(assert (= bs!1834957 (and d!2156845 b!6864001)))

(assert (=> bs!1834957 (= lambda!388489 lambda!388340)))

(declare-fun bs!1834958 () Bool)

(assert (= bs!1834958 (and d!2156845 d!2156495)))

(assert (=> bs!1834958 (not (= lambda!388489 lambda!388430))))

(declare-fun bs!1834959 () Bool)

(assert (= bs!1834959 (and d!2156845 d!2156611)))

(assert (=> bs!1834959 (= lambda!388489 lambda!388448)))

(declare-fun bs!1834960 () Bool)

(assert (= bs!1834960 (and d!2156845 d!2156385)))

(assert (=> bs!1834960 (= lambda!388489 lambda!388369)))

(declare-fun bs!1834961 () Bool)

(assert (= bs!1834961 (and d!2156845 d!2156577)))

(assert (=> bs!1834961 (= lambda!388489 lambda!388443)))

(declare-fun bs!1834962 () Bool)

(assert (= bs!1834962 (and d!2156845 d!2156835)))

(assert (=> bs!1834962 (not (= lambda!388489 lambda!388487))))

(declare-fun bs!1834963 () Bool)

(assert (= bs!1834963 (and d!2156845 d!2156829)))

(assert (=> bs!1834963 (= lambda!388489 lambda!388485)))

(declare-fun bs!1834964 () Bool)

(assert (= bs!1834964 (and d!2156845 d!2156493)))

(assert (=> bs!1834964 (not (= lambda!388489 lambda!388427))))

(declare-fun bs!1834965 () Bool)

(assert (= bs!1834965 (and d!2156845 d!2156823)))

(assert (=> bs!1834965 (= lambda!388489 lambda!388484)))

(declare-fun bs!1834966 () Bool)

(assert (= bs!1834966 (and d!2156845 d!2156527)))

(assert (=> bs!1834966 (= lambda!388489 lambda!388435)))

(declare-fun bs!1834967 () Bool)

(assert (= bs!1834967 (and d!2156845 d!2156397)))

(assert (=> bs!1834967 (not (= lambda!388489 lambda!388378))))

(declare-fun bs!1834968 () Bool)

(assert (= bs!1834968 (and d!2156845 d!2156437)))

(assert (=> bs!1834968 (= lambda!388489 lambda!388397)))

(declare-fun bs!1834969 () Bool)

(assert (= bs!1834969 (and d!2156845 d!2156551)))

(assert (=> bs!1834969 (= lambda!388489 lambda!388440)))

(declare-fun bs!1834970 () Bool)

(assert (= bs!1834970 (and d!2156845 b!6863998)))

(assert (=> bs!1834970 (not (= lambda!388489 lambda!388338))))

(assert (=> bs!1834967 (= lambda!388489 lambda!388377)))

(declare-fun bs!1834971 () Bool)

(assert (= bs!1834971 (and d!2156845 d!2156613)))

(assert (=> bs!1834971 (= lambda!388489 lambda!388449)))

(declare-fun bs!1834972 () Bool)

(assert (= bs!1834972 (and d!2156845 d!2156375)))

(assert (=> bs!1834972 (= lambda!388489 lambda!388360)))

(declare-fun bs!1834973 () Bool)

(assert (= bs!1834973 (and d!2156845 d!2156533)))

(assert (=> bs!1834973 (= lambda!388489 lambda!388436)))

(declare-fun bs!1834974 () Bool)

(assert (= bs!1834974 (and d!2156845 d!2156401)))

(assert (=> bs!1834974 (= lambda!388489 lambda!388381)))

(declare-fun bs!1834975 () Bool)

(assert (= bs!1834975 (and d!2156845 d!2156489)))

(assert (=> bs!1834975 (= lambda!388489 lambda!388426)))

(declare-fun bs!1834976 () Bool)

(assert (= bs!1834976 (and d!2156845 d!2156395)))

(assert (=> bs!1834976 (not (= lambda!388489 lambda!388372))))

(assert (=> d!2156845 (= (inv!84983 (h!72706 res!2800554)) (forall!15885 (exprs!6578 (h!72706 res!2800554)) lambda!388489))))

(declare-fun bs!1834977 () Bool)

(assert (= bs!1834977 d!2156845))

(declare-fun m!7598154 () Bool)

(assert (=> bs!1834977 m!7598154))

(assert (=> b!6864644 d!2156845))

(declare-fun bs!1834978 () Bool)

(declare-fun b!6865495 () Bool)

(assert (= bs!1834978 (and b!6865495 b!6864671)))

(declare-fun lambda!388490 () Int)

(assert (=> bs!1834978 (= (and (= (reg!17023 (regOne!33901 (regTwo!33901 r!7292))) (reg!17023 (regOne!33901 r!7292))) (= (regOne!33901 (regTwo!33901 r!7292)) (regOne!33901 r!7292))) (= lambda!388490 lambda!388431))))

(declare-fun bs!1834979 () Bool)

(assert (= bs!1834979 (and b!6865495 b!6864260)))

(assert (=> bs!1834979 (= (and (= (reg!17023 (regOne!33901 (regTwo!33901 r!7292))) (reg!17023 r!7292)) (= (regOne!33901 (regTwo!33901 r!7292)) r!7292)) (= lambda!388490 lambda!388386))))

(declare-fun bs!1834980 () Bool)

(assert (= bs!1834980 (and b!6865495 b!6864261)))

(assert (=> bs!1834980 (not (= lambda!388490 lambda!388387))))

(declare-fun bs!1834981 () Bool)

(assert (= bs!1834981 (and b!6865495 b!6864917)))

(assert (=> bs!1834981 (= (and (= (reg!17023 (regOne!33901 (regTwo!33901 r!7292))) (reg!17023 (regTwo!33901 r!7292))) (= (regOne!33901 (regTwo!33901 r!7292)) (regTwo!33901 r!7292))) (= lambda!388490 lambda!388450))))

(declare-fun bs!1834982 () Bool)

(assert (= bs!1834982 (and b!6865495 b!6864672)))

(assert (=> bs!1834982 (not (= lambda!388490 lambda!388432))))

(declare-fun bs!1834983 () Bool)

(assert (= bs!1834983 (and b!6865495 b!6864918)))

(assert (=> bs!1834983 (not (= lambda!388490 lambda!388451))))

(assert (=> b!6865495 true))

(assert (=> b!6865495 true))

(declare-fun bs!1834984 () Bool)

(declare-fun b!6865496 () Bool)

(assert (= bs!1834984 (and b!6865496 b!6864260)))

(declare-fun lambda!388491 () Int)

(assert (=> bs!1834984 (not (= lambda!388491 lambda!388386))))

(declare-fun bs!1834985 () Bool)

(assert (= bs!1834985 (and b!6865496 b!6864261)))

(assert (=> bs!1834985 (= (and (= (regOne!33900 (regOne!33901 (regTwo!33901 r!7292))) (regOne!33900 r!7292)) (= (regTwo!33900 (regOne!33901 (regTwo!33901 r!7292))) (regTwo!33900 r!7292))) (= lambda!388491 lambda!388387))))

(declare-fun bs!1834986 () Bool)

(assert (= bs!1834986 (and b!6865496 b!6864917)))

(assert (=> bs!1834986 (not (= lambda!388491 lambda!388450))))

(declare-fun bs!1834987 () Bool)

(assert (= bs!1834987 (and b!6865496 b!6864671)))

(assert (=> bs!1834987 (not (= lambda!388491 lambda!388431))))

(declare-fun bs!1834988 () Bool)

(assert (= bs!1834988 (and b!6865496 b!6865495)))

(assert (=> bs!1834988 (not (= lambda!388491 lambda!388490))))

(declare-fun bs!1834989 () Bool)

(assert (= bs!1834989 (and b!6865496 b!6864672)))

(assert (=> bs!1834989 (= (and (= (regOne!33900 (regOne!33901 (regTwo!33901 r!7292))) (regOne!33900 (regOne!33901 r!7292))) (= (regTwo!33900 (regOne!33901 (regTwo!33901 r!7292))) (regTwo!33900 (regOne!33901 r!7292)))) (= lambda!388491 lambda!388432))))

(declare-fun bs!1834990 () Bool)

(assert (= bs!1834990 (and b!6865496 b!6864918)))

(assert (=> bs!1834990 (= (and (= (regOne!33900 (regOne!33901 (regTwo!33901 r!7292))) (regOne!33900 (regTwo!33901 r!7292))) (= (regTwo!33900 (regOne!33901 (regTwo!33901 r!7292))) (regTwo!33900 (regTwo!33901 r!7292)))) (= lambda!388491 lambda!388451))))

(assert (=> b!6865496 true))

(assert (=> b!6865496 true))

(declare-fun b!6865492 () Bool)

(declare-fun e!4138832 () Bool)

(declare-fun e!4138826 () Bool)

(assert (=> b!6865492 (= e!4138832 e!4138826)))

(declare-fun c!1277863 () Bool)

(assert (=> b!6865492 (= c!1277863 (is-Star!16694 (regOne!33901 (regTwo!33901 r!7292))))))

(declare-fun b!6865493 () Bool)

(declare-fun e!4138828 () Bool)

(declare-fun e!4138827 () Bool)

(assert (=> b!6865493 (= e!4138828 e!4138827)))

(declare-fun res!2800783 () Bool)

(assert (=> b!6865493 (= res!2800783 (not (is-EmptyLang!16694 (regOne!33901 (regTwo!33901 r!7292)))))))

(assert (=> b!6865493 (=> (not res!2800783) (not e!4138827))))

(declare-fun b!6865494 () Bool)

(declare-fun c!1277862 () Bool)

(assert (=> b!6865494 (= c!1277862 (is-Union!16694 (regOne!33901 (regTwo!33901 r!7292))))))

(declare-fun e!4138831 () Bool)

(assert (=> b!6865494 (= e!4138831 e!4138832)))

(declare-fun e!4138829 () Bool)

(declare-fun call!625279 () Bool)

(assert (=> b!6865495 (= e!4138829 call!625279)))

(assert (=> b!6865496 (= e!4138826 call!625279)))

(declare-fun b!6865497 () Bool)

(declare-fun e!4138830 () Bool)

(assert (=> b!6865497 (= e!4138832 e!4138830)))

(declare-fun res!2800781 () Bool)

(assert (=> b!6865497 (= res!2800781 (matchRSpec!3795 (regOne!33901 (regOne!33901 (regTwo!33901 r!7292))) s!2326))))

(assert (=> b!6865497 (=> res!2800781 e!4138830)))

(declare-fun bm!625273 () Bool)

(declare-fun call!625278 () Bool)

(assert (=> bm!625273 (= call!625278 (isEmpty!38620 s!2326))))

(declare-fun d!2156847 () Bool)

(declare-fun c!1277864 () Bool)

(assert (=> d!2156847 (= c!1277864 (is-EmptyExpr!16694 (regOne!33901 (regTwo!33901 r!7292))))))

(assert (=> d!2156847 (= (matchRSpec!3795 (regOne!33901 (regTwo!33901 r!7292)) s!2326) e!4138828)))

(declare-fun b!6865498 () Bool)

(declare-fun c!1277861 () Bool)

(assert (=> b!6865498 (= c!1277861 (is-ElementMatch!16694 (regOne!33901 (regTwo!33901 r!7292))))))

(assert (=> b!6865498 (= e!4138827 e!4138831)))

(declare-fun b!6865499 () Bool)

(assert (=> b!6865499 (= e!4138831 (= s!2326 (Cons!66259 (c!1277522 (regOne!33901 (regTwo!33901 r!7292))) Nil!66259)))))

(declare-fun b!6865500 () Bool)

(declare-fun res!2800782 () Bool)

(assert (=> b!6865500 (=> res!2800782 e!4138829)))

(assert (=> b!6865500 (= res!2800782 call!625278)))

(assert (=> b!6865500 (= e!4138826 e!4138829)))

(declare-fun bm!625274 () Bool)

(assert (=> bm!625274 (= call!625279 (Exists!3754 (ite c!1277863 lambda!388490 lambda!388491)))))

(declare-fun b!6865501 () Bool)

(assert (=> b!6865501 (= e!4138830 (matchRSpec!3795 (regTwo!33901 (regOne!33901 (regTwo!33901 r!7292))) s!2326))))

(declare-fun b!6865502 () Bool)

(assert (=> b!6865502 (= e!4138828 call!625278)))

(assert (= (and d!2156847 c!1277864) b!6865502))

(assert (= (and d!2156847 (not c!1277864)) b!6865493))

(assert (= (and b!6865493 res!2800783) b!6865498))

(assert (= (and b!6865498 c!1277861) b!6865499))

(assert (= (and b!6865498 (not c!1277861)) b!6865494))

(assert (= (and b!6865494 c!1277862) b!6865497))

(assert (= (and b!6865494 (not c!1277862)) b!6865492))

(assert (= (and b!6865497 (not res!2800781)) b!6865501))

(assert (= (and b!6865492 c!1277863) b!6865500))

(assert (= (and b!6865492 (not c!1277863)) b!6865496))

(assert (= (and b!6865500 (not res!2800782)) b!6865495))

(assert (= (or b!6865495 b!6865496) bm!625274))

(assert (= (or b!6865502 b!6865500) bm!625273))

(declare-fun m!7598156 () Bool)

(assert (=> b!6865497 m!7598156))

(assert (=> bm!625273 m!7597206))

(declare-fun m!7598158 () Bool)

(assert (=> bm!625274 m!7598158))

(declare-fun m!7598160 () Bool)

(assert (=> b!6865501 m!7598160))

(assert (=> b!6864919 d!2156847))

(declare-fun bs!1834991 () Bool)

(declare-fun d!2156849 () Bool)

(assert (= bs!1834991 (and d!2156849 d!2156435)))

(declare-fun lambda!388492 () Int)

(assert (=> bs!1834991 (= lambda!388492 lambda!388396)))

(declare-fun bs!1834992 () Bool)

(assert (= bs!1834992 (and d!2156849 b!6864001)))

(assert (=> bs!1834992 (= lambda!388492 lambda!388340)))

(declare-fun bs!1834993 () Bool)

(assert (= bs!1834993 (and d!2156849 d!2156495)))

(assert (=> bs!1834993 (not (= lambda!388492 lambda!388430))))

(declare-fun bs!1834994 () Bool)

(assert (= bs!1834994 (and d!2156849 d!2156611)))

(assert (=> bs!1834994 (= lambda!388492 lambda!388448)))

(declare-fun bs!1834995 () Bool)

(assert (= bs!1834995 (and d!2156849 d!2156385)))

(assert (=> bs!1834995 (= lambda!388492 lambda!388369)))

(declare-fun bs!1834996 () Bool)

(assert (= bs!1834996 (and d!2156849 d!2156577)))

(assert (=> bs!1834996 (= lambda!388492 lambda!388443)))

(declare-fun bs!1834997 () Bool)

(assert (= bs!1834997 (and d!2156849 d!2156835)))

(assert (=> bs!1834997 (not (= lambda!388492 lambda!388487))))

(declare-fun bs!1834998 () Bool)

(assert (= bs!1834998 (and d!2156849 d!2156829)))

(assert (=> bs!1834998 (= lambda!388492 lambda!388485)))

(declare-fun bs!1834999 () Bool)

(assert (= bs!1834999 (and d!2156849 d!2156493)))

(assert (=> bs!1834999 (not (= lambda!388492 lambda!388427))))

(declare-fun bs!1835000 () Bool)

(assert (= bs!1835000 (and d!2156849 d!2156845)))

(assert (=> bs!1835000 (= lambda!388492 lambda!388489)))

(declare-fun bs!1835001 () Bool)

(assert (= bs!1835001 (and d!2156849 d!2156823)))

(assert (=> bs!1835001 (= lambda!388492 lambda!388484)))

(declare-fun bs!1835002 () Bool)

(assert (= bs!1835002 (and d!2156849 d!2156527)))

(assert (=> bs!1835002 (= lambda!388492 lambda!388435)))

(declare-fun bs!1835003 () Bool)

(assert (= bs!1835003 (and d!2156849 d!2156397)))

(assert (=> bs!1835003 (not (= lambda!388492 lambda!388378))))

(declare-fun bs!1835004 () Bool)

(assert (= bs!1835004 (and d!2156849 d!2156437)))

(assert (=> bs!1835004 (= lambda!388492 lambda!388397)))

(declare-fun bs!1835005 () Bool)

(assert (= bs!1835005 (and d!2156849 d!2156551)))

(assert (=> bs!1835005 (= lambda!388492 lambda!388440)))

(declare-fun bs!1835006 () Bool)

(assert (= bs!1835006 (and d!2156849 b!6863998)))

(assert (=> bs!1835006 (not (= lambda!388492 lambda!388338))))

(assert (=> bs!1835003 (= lambda!388492 lambda!388377)))

(declare-fun bs!1835007 () Bool)

(assert (= bs!1835007 (and d!2156849 d!2156613)))

(assert (=> bs!1835007 (= lambda!388492 lambda!388449)))

(declare-fun bs!1835008 () Bool)

(assert (= bs!1835008 (and d!2156849 d!2156375)))

(assert (=> bs!1835008 (= lambda!388492 lambda!388360)))

(declare-fun bs!1835009 () Bool)

(assert (= bs!1835009 (and d!2156849 d!2156533)))

(assert (=> bs!1835009 (= lambda!388492 lambda!388436)))

(declare-fun bs!1835010 () Bool)

(assert (= bs!1835010 (and d!2156849 d!2156401)))

(assert (=> bs!1835010 (= lambda!388492 lambda!388381)))

(declare-fun bs!1835011 () Bool)

(assert (= bs!1835011 (and d!2156849 d!2156489)))

(assert (=> bs!1835011 (= lambda!388492 lambda!388426)))

(declare-fun bs!1835012 () Bool)

(assert (= bs!1835012 (and d!2156849 d!2156395)))

(assert (=> bs!1835012 (not (= lambda!388492 lambda!388372))))

(assert (=> d!2156849 (= (inv!84983 (h!72706 res!2800644)) (forall!15885 (exprs!6578 (h!72706 res!2800644)) lambda!388492))))

(declare-fun bs!1835013 () Bool)

(assert (= bs!1835013 d!2156849))

(declare-fun m!7598162 () Bool)

(assert (=> bs!1835013 m!7598162))

(assert (=> b!6864895 d!2156849))

(declare-fun b!6865503 () Bool)

(declare-fun res!2800786 () Bool)

(declare-fun e!4138833 () Bool)

(assert (=> b!6865503 (=> res!2800786 e!4138833)))

(assert (=> b!6865503 (= res!2800786 (not (is-Concat!25539 (h!72705 lt!2457803))))))

(declare-fun e!4138834 () Bool)

(assert (=> b!6865503 (= e!4138834 e!4138833)))

(declare-fun b!6865505 () Bool)

(declare-fun e!4138835 () Bool)

(assert (=> b!6865505 (= e!4138833 e!4138835)))

(declare-fun res!2800788 () Bool)

(assert (=> b!6865505 (=> (not res!2800788) (not e!4138835))))

(declare-fun call!625281 () Bool)

(assert (=> b!6865505 (= res!2800788 call!625281)))

(declare-fun b!6865506 () Bool)

(declare-fun res!2800787 () Bool)

(declare-fun e!4138839 () Bool)

(assert (=> b!6865506 (=> (not res!2800787) (not e!4138839))))

(assert (=> b!6865506 (= res!2800787 call!625281)))

(assert (=> b!6865506 (= e!4138834 e!4138839)))

(declare-fun b!6865507 () Bool)

(declare-fun e!4138836 () Bool)

(declare-fun call!625282 () Bool)

(assert (=> b!6865507 (= e!4138836 call!625282)))

(declare-fun b!6865508 () Bool)

(declare-fun e!4138838 () Bool)

(assert (=> b!6865508 (= e!4138838 e!4138834)))

(declare-fun c!1277866 () Bool)

(assert (=> b!6865508 (= c!1277866 (is-Union!16694 (h!72705 lt!2457803)))))

(declare-fun bm!625275 () Bool)

(declare-fun call!625280 () Bool)

(assert (=> bm!625275 (= call!625280 call!625282)))

(declare-fun c!1277865 () Bool)

(declare-fun bm!625276 () Bool)

(assert (=> bm!625276 (= call!625282 (validRegex!8430 (ite c!1277865 (reg!17023 (h!72705 lt!2457803)) (ite c!1277866 (regTwo!33901 (h!72705 lt!2457803)) (regTwo!33900 (h!72705 lt!2457803))))))))

(declare-fun b!6865509 () Bool)

(assert (=> b!6865509 (= e!4138838 e!4138836)))

(declare-fun res!2800785 () Bool)

(assert (=> b!6865509 (= res!2800785 (not (nullable!6655 (reg!17023 (h!72705 lt!2457803)))))))

(assert (=> b!6865509 (=> (not res!2800785) (not e!4138836))))

(declare-fun b!6865510 () Bool)

(declare-fun e!4138837 () Bool)

(assert (=> b!6865510 (= e!4138837 e!4138838)))

(assert (=> b!6865510 (= c!1277865 (is-Star!16694 (h!72705 lt!2457803)))))

(declare-fun b!6865504 () Bool)

(assert (=> b!6865504 (= e!4138839 call!625280)))

(declare-fun d!2156851 () Bool)

(declare-fun res!2800784 () Bool)

(assert (=> d!2156851 (=> res!2800784 e!4138837)))

(assert (=> d!2156851 (= res!2800784 (is-ElementMatch!16694 (h!72705 lt!2457803)))))

(assert (=> d!2156851 (= (validRegex!8430 (h!72705 lt!2457803)) e!4138837)))

(declare-fun bm!625277 () Bool)

(assert (=> bm!625277 (= call!625281 (validRegex!8430 (ite c!1277866 (regOne!33901 (h!72705 lt!2457803)) (regOne!33900 (h!72705 lt!2457803)))))))

(declare-fun b!6865511 () Bool)

(assert (=> b!6865511 (= e!4138835 call!625280)))

(assert (= (and d!2156851 (not res!2800784)) b!6865510))

(assert (= (and b!6865510 c!1277865) b!6865509))

(assert (= (and b!6865510 (not c!1277865)) b!6865508))

(assert (= (and b!6865509 res!2800785) b!6865507))

(assert (= (and b!6865508 c!1277866) b!6865506))

(assert (= (and b!6865508 (not c!1277866)) b!6865503))

(assert (= (and b!6865506 res!2800787) b!6865504))

(assert (= (and b!6865503 (not res!2800786)) b!6865505))

(assert (= (and b!6865505 res!2800788) b!6865511))

(assert (= (or b!6865504 b!6865511) bm!625275))

(assert (= (or b!6865506 b!6865505) bm!625277))

(assert (= (or b!6865507 bm!625275) bm!625276))

(declare-fun m!7598164 () Bool)

(assert (=> bm!625276 m!7598164))

(declare-fun m!7598166 () Bool)

(assert (=> b!6865509 m!7598166))

(declare-fun m!7598168 () Bool)

(assert (=> bm!625277 m!7598168))

(assert (=> bs!1834712 d!2156851))

(declare-fun d!2156853 () Bool)

(assert (=> d!2156853 (= (isEmpty!38619 (exprs!6578 (h!72706 zl!343))) (is-Nil!66257 (exprs!6578 (h!72706 zl!343))))))

(assert (=> b!6864899 d!2156853))

(declare-fun d!2156855 () Bool)

(declare-fun res!2800789 () Bool)

(declare-fun e!4138840 () Bool)

(assert (=> d!2156855 (=> res!2800789 e!4138840)))

(assert (=> d!2156855 (= res!2800789 (is-Nil!66257 (t!380124 (exprs!6578 (h!72706 zl!343)))))))

(assert (=> d!2156855 (= (forall!15885 (t!380124 (exprs!6578 (h!72706 zl!343))) lambda!388396) e!4138840)))

(declare-fun b!6865512 () Bool)

(declare-fun e!4138841 () Bool)

(assert (=> b!6865512 (= e!4138840 e!4138841)))

(declare-fun res!2800790 () Bool)

(assert (=> b!6865512 (=> (not res!2800790) (not e!4138841))))

(assert (=> b!6865512 (= res!2800790 (dynLambda!26518 lambda!388396 (h!72705 (t!380124 (exprs!6578 (h!72706 zl!343))))))))

(declare-fun b!6865513 () Bool)

(assert (=> b!6865513 (= e!4138841 (forall!15885 (t!380124 (t!380124 (exprs!6578 (h!72706 zl!343)))) lambda!388396))))

(assert (= (and d!2156855 (not res!2800789)) b!6865512))

(assert (= (and b!6865512 res!2800790) b!6865513))

(declare-fun b_lambda!259593 () Bool)

(assert (=> (not b_lambda!259593) (not b!6865512)))

(declare-fun m!7598170 () Bool)

(assert (=> b!6865512 m!7598170))

(declare-fun m!7598172 () Bool)

(assert (=> b!6865513 m!7598172))

(assert (=> b!6864911 d!2156855))

(declare-fun d!2156857 () Bool)

(assert (=> d!2156857 true))

(assert (=> d!2156857 true))

(declare-fun res!2800793 () Bool)

(assert (=> d!2156857 (= (choose!51168 (ite c!1277583 lambda!388386 lambda!388387)) res!2800793)))

(assert (=> d!2156559 d!2156857))

(declare-fun b!6865514 () Bool)

(declare-fun res!2800796 () Bool)

(declare-fun e!4138842 () Bool)

(assert (=> b!6865514 (=> res!2800796 e!4138842)))

(assert (=> b!6865514 (= res!2800796 (not (is-Concat!25539 (ite c!1277731 (reg!17023 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))) (ite c!1277732 (regTwo!33901 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))) (regTwo!33900 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))))))))))

(declare-fun e!4138843 () Bool)

(assert (=> b!6865514 (= e!4138843 e!4138842)))

(declare-fun b!6865516 () Bool)

(declare-fun e!4138844 () Bool)

(assert (=> b!6865516 (= e!4138842 e!4138844)))

(declare-fun res!2800798 () Bool)

(assert (=> b!6865516 (=> (not res!2800798) (not e!4138844))))

(declare-fun call!625284 () Bool)

(assert (=> b!6865516 (= res!2800798 call!625284)))

(declare-fun b!6865517 () Bool)

(declare-fun res!2800797 () Bool)

(declare-fun e!4138848 () Bool)

(assert (=> b!6865517 (=> (not res!2800797) (not e!4138848))))

(assert (=> b!6865517 (= res!2800797 call!625284)))

(assert (=> b!6865517 (= e!4138843 e!4138848)))

(declare-fun b!6865518 () Bool)

(declare-fun e!4138845 () Bool)

(declare-fun call!625285 () Bool)

(assert (=> b!6865518 (= e!4138845 call!625285)))

(declare-fun b!6865519 () Bool)

(declare-fun e!4138847 () Bool)

(assert (=> b!6865519 (= e!4138847 e!4138843)))

(declare-fun c!1277868 () Bool)

(assert (=> b!6865519 (= c!1277868 (is-Union!16694 (ite c!1277731 (reg!17023 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))) (ite c!1277732 (regTwo!33901 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))) (regTwo!33900 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292)))))))))

(declare-fun bm!625278 () Bool)

(declare-fun call!625283 () Bool)

(assert (=> bm!625278 (= call!625283 call!625285)))

(declare-fun c!1277867 () Bool)

(declare-fun bm!625279 () Bool)

(assert (=> bm!625279 (= call!625285 (validRegex!8430 (ite c!1277867 (reg!17023 (ite c!1277731 (reg!17023 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))) (ite c!1277732 (regTwo!33901 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))) (regTwo!33900 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292)))))) (ite c!1277868 (regTwo!33901 (ite c!1277731 (reg!17023 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))) (ite c!1277732 (regTwo!33901 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))) (regTwo!33900 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292)))))) (regTwo!33900 (ite c!1277731 (reg!17023 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))) (ite c!1277732 (regTwo!33901 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))) (regTwo!33900 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))))))))))))

(declare-fun b!6865520 () Bool)

(assert (=> b!6865520 (= e!4138847 e!4138845)))

(declare-fun res!2800795 () Bool)

(assert (=> b!6865520 (= res!2800795 (not (nullable!6655 (reg!17023 (ite c!1277731 (reg!17023 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))) (ite c!1277732 (regTwo!33901 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))) (regTwo!33900 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292)))))))))))

(assert (=> b!6865520 (=> (not res!2800795) (not e!4138845))))

(declare-fun b!6865521 () Bool)

(declare-fun e!4138846 () Bool)

(assert (=> b!6865521 (= e!4138846 e!4138847)))

(assert (=> b!6865521 (= c!1277867 (is-Star!16694 (ite c!1277731 (reg!17023 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))) (ite c!1277732 (regTwo!33901 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))) (regTwo!33900 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292)))))))))

(declare-fun b!6865515 () Bool)

(assert (=> b!6865515 (= e!4138848 call!625283)))

(declare-fun d!2156859 () Bool)

(declare-fun res!2800794 () Bool)

(assert (=> d!2156859 (=> res!2800794 e!4138846)))

(assert (=> d!2156859 (= res!2800794 (is-ElementMatch!16694 (ite c!1277731 (reg!17023 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))) (ite c!1277732 (regTwo!33901 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))) (regTwo!33900 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292)))))))))

(assert (=> d!2156859 (= (validRegex!8430 (ite c!1277731 (reg!17023 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))) (ite c!1277732 (regTwo!33901 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))) (regTwo!33900 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292)))))) e!4138846)))

(declare-fun bm!625280 () Bool)

(assert (=> bm!625280 (= call!625284 (validRegex!8430 (ite c!1277868 (regOne!33901 (ite c!1277731 (reg!17023 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))) (ite c!1277732 (regTwo!33901 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))) (regTwo!33900 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292)))))) (regOne!33900 (ite c!1277731 (reg!17023 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))) (ite c!1277732 (regTwo!33901 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))) (regTwo!33900 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292)))))))))))

(declare-fun b!6865522 () Bool)

(assert (=> b!6865522 (= e!4138844 call!625283)))

(assert (= (and d!2156859 (not res!2800794)) b!6865521))

(assert (= (and b!6865521 c!1277867) b!6865520))

(assert (= (and b!6865521 (not c!1277867)) b!6865519))

(assert (= (and b!6865520 res!2800795) b!6865518))

(assert (= (and b!6865519 c!1277868) b!6865517))

(assert (= (and b!6865519 (not c!1277868)) b!6865514))

(assert (= (and b!6865517 res!2800797) b!6865515))

(assert (= (and b!6865514 (not res!2800796)) b!6865516))

(assert (= (and b!6865516 res!2800798) b!6865522))

(assert (= (or b!6865515 b!6865522) bm!625278))

(assert (= (or b!6865517 b!6865516) bm!625280))

(assert (= (or b!6865518 bm!625278) bm!625279))

(declare-fun m!7598174 () Bool)

(assert (=> bm!625279 m!7598174))

(declare-fun m!7598176 () Bool)

(assert (=> b!6865520 m!7598176))

(declare-fun m!7598178 () Bool)

(assert (=> bm!625280 m!7598178))

(assert (=> bm!625215 d!2156859))

(declare-fun bs!1835014 () Bool)

(declare-fun d!2156861 () Bool)

(assert (= bs!1835014 (and d!2156861 d!2156621)))

(declare-fun lambda!388493 () Int)

(assert (=> bs!1835014 (not (= lambda!388493 lambda!388454))))

(declare-fun bs!1835015 () Bool)

(assert (= bs!1835015 (and d!2156861 d!2156377)))

(assert (=> bs!1835015 (= lambda!388493 lambda!388363)))

(declare-fun bs!1835016 () Bool)

(assert (= bs!1835016 (and d!2156861 d!2156379)))

(assert (=> bs!1835016 (not (= lambda!388493 lambda!388366))))

(declare-fun bs!1835017 () Bool)

(assert (= bs!1835017 (and d!2156861 b!6864011)))

(assert (=> bs!1835017 (not (= lambda!388493 lambda!388339))))

(declare-fun bs!1835018 () Bool)

(assert (= bs!1835018 (and d!2156861 d!2156595)))

(assert (=> bs!1835018 (not (= lambda!388493 lambda!388447))))

(declare-fun bs!1835019 () Bool)

(assert (= bs!1835019 (and d!2156861 d!2156593)))

(assert (=> bs!1835019 (= (= lambda!388339 lambda!388366) (= lambda!388493 lambda!388444))))

(assert (=> d!2156861 true))

(assert (=> d!2156861 (< (dynLambda!26517 order!27717 lambda!388339) (dynLambda!26517 order!27717 lambda!388493))))

(assert (=> d!2156861 (= (exists!2821 (t!380125 zl!343) lambda!388339) (not (forall!15887 (t!380125 zl!343) lambda!388493)))))

(declare-fun bs!1835020 () Bool)

(assert (= bs!1835020 d!2156861))

(declare-fun m!7598180 () Bool)

(assert (=> bs!1835020 m!7598180))

(assert (=> d!2156537 d!2156861))

(declare-fun b!6865523 () Bool)

(declare-fun res!2800801 () Bool)

(declare-fun e!4138849 () Bool)

(assert (=> b!6865523 (=> res!2800801 e!4138849)))

(assert (=> b!6865523 (= res!2800801 (not (is-Concat!25539 (h!72705 (exprs!6578 setElem!47206)))))))

(declare-fun e!4138850 () Bool)

(assert (=> b!6865523 (= e!4138850 e!4138849)))

(declare-fun b!6865525 () Bool)

(declare-fun e!4138851 () Bool)

(assert (=> b!6865525 (= e!4138849 e!4138851)))

(declare-fun res!2800803 () Bool)

(assert (=> b!6865525 (=> (not res!2800803) (not e!4138851))))

(declare-fun call!625287 () Bool)

(assert (=> b!6865525 (= res!2800803 call!625287)))

(declare-fun b!6865526 () Bool)

(declare-fun res!2800802 () Bool)

(declare-fun e!4138855 () Bool)

(assert (=> b!6865526 (=> (not res!2800802) (not e!4138855))))

(assert (=> b!6865526 (= res!2800802 call!625287)))

(assert (=> b!6865526 (= e!4138850 e!4138855)))

(declare-fun b!6865527 () Bool)

(declare-fun e!4138852 () Bool)

(declare-fun call!625288 () Bool)

(assert (=> b!6865527 (= e!4138852 call!625288)))

(declare-fun b!6865528 () Bool)

(declare-fun e!4138854 () Bool)

(assert (=> b!6865528 (= e!4138854 e!4138850)))

(declare-fun c!1277870 () Bool)

(assert (=> b!6865528 (= c!1277870 (is-Union!16694 (h!72705 (exprs!6578 setElem!47206))))))

(declare-fun bm!625281 () Bool)

(declare-fun call!625286 () Bool)

(assert (=> bm!625281 (= call!625286 call!625288)))

(declare-fun bm!625282 () Bool)

(declare-fun c!1277869 () Bool)

(assert (=> bm!625282 (= call!625288 (validRegex!8430 (ite c!1277869 (reg!17023 (h!72705 (exprs!6578 setElem!47206))) (ite c!1277870 (regTwo!33901 (h!72705 (exprs!6578 setElem!47206))) (regTwo!33900 (h!72705 (exprs!6578 setElem!47206)))))))))

(declare-fun b!6865529 () Bool)

(assert (=> b!6865529 (= e!4138854 e!4138852)))

(declare-fun res!2800800 () Bool)

(assert (=> b!6865529 (= res!2800800 (not (nullable!6655 (reg!17023 (h!72705 (exprs!6578 setElem!47206))))))))

(assert (=> b!6865529 (=> (not res!2800800) (not e!4138852))))

(declare-fun b!6865530 () Bool)

(declare-fun e!4138853 () Bool)

(assert (=> b!6865530 (= e!4138853 e!4138854)))

(assert (=> b!6865530 (= c!1277869 (is-Star!16694 (h!72705 (exprs!6578 setElem!47206))))))

(declare-fun b!6865524 () Bool)

(assert (=> b!6865524 (= e!4138855 call!625286)))

(declare-fun d!2156863 () Bool)

(declare-fun res!2800799 () Bool)

(assert (=> d!2156863 (=> res!2800799 e!4138853)))

(assert (=> d!2156863 (= res!2800799 (is-ElementMatch!16694 (h!72705 (exprs!6578 setElem!47206))))))

(assert (=> d!2156863 (= (validRegex!8430 (h!72705 (exprs!6578 setElem!47206))) e!4138853)))

(declare-fun bm!625283 () Bool)

(assert (=> bm!625283 (= call!625287 (validRegex!8430 (ite c!1277870 (regOne!33901 (h!72705 (exprs!6578 setElem!47206))) (regOne!33900 (h!72705 (exprs!6578 setElem!47206))))))))

(declare-fun b!6865531 () Bool)

(assert (=> b!6865531 (= e!4138851 call!625286)))

(assert (= (and d!2156863 (not res!2800799)) b!6865530))

(assert (= (and b!6865530 c!1277869) b!6865529))

(assert (= (and b!6865530 (not c!1277869)) b!6865528))

(assert (= (and b!6865529 res!2800800) b!6865527))

(assert (= (and b!6865528 c!1277870) b!6865526))

(assert (= (and b!6865528 (not c!1277870)) b!6865523))

(assert (= (and b!6865526 res!2800802) b!6865524))

(assert (= (and b!6865523 (not res!2800801)) b!6865525))

(assert (= (and b!6865525 res!2800803) b!6865531))

(assert (= (or b!6865524 b!6865531) bm!625281))

(assert (= (or b!6865526 b!6865525) bm!625283))

(assert (= (or b!6865527 bm!625281) bm!625282))

(declare-fun m!7598182 () Bool)

(assert (=> bm!625282 m!7598182))

(declare-fun m!7598184 () Bool)

(assert (=> b!6865529 m!7598184))

(declare-fun m!7598186 () Bool)

(assert (=> bm!625283 m!7598186))

(assert (=> bs!1834720 d!2156863))

(declare-fun b!6865532 () Bool)

(declare-fun res!2800806 () Bool)

(declare-fun e!4138856 () Bool)

(assert (=> b!6865532 (=> res!2800806 e!4138856)))

(assert (=> b!6865532 (= res!2800806 (not (is-Concat!25539 lt!2457870)))))

(declare-fun e!4138857 () Bool)

(assert (=> b!6865532 (= e!4138857 e!4138856)))

(declare-fun b!6865534 () Bool)

(declare-fun e!4138858 () Bool)

(assert (=> b!6865534 (= e!4138856 e!4138858)))

(declare-fun res!2800808 () Bool)

(assert (=> b!6865534 (=> (not res!2800808) (not e!4138858))))

(declare-fun call!625290 () Bool)

(assert (=> b!6865534 (= res!2800808 call!625290)))

(declare-fun b!6865535 () Bool)

(declare-fun res!2800807 () Bool)

(declare-fun e!4138862 () Bool)

(assert (=> b!6865535 (=> (not res!2800807) (not e!4138862))))

(assert (=> b!6865535 (= res!2800807 call!625290)))

(assert (=> b!6865535 (= e!4138857 e!4138862)))

(declare-fun b!6865536 () Bool)

(declare-fun e!4138859 () Bool)

(declare-fun call!625291 () Bool)

(assert (=> b!6865536 (= e!4138859 call!625291)))

(declare-fun b!6865537 () Bool)

(declare-fun e!4138861 () Bool)

(assert (=> b!6865537 (= e!4138861 e!4138857)))

(declare-fun c!1277872 () Bool)

(assert (=> b!6865537 (= c!1277872 (is-Union!16694 lt!2457870))))

(declare-fun bm!625284 () Bool)

(declare-fun call!625289 () Bool)

(assert (=> bm!625284 (= call!625289 call!625291)))

(declare-fun c!1277871 () Bool)

(declare-fun bm!625285 () Bool)

(assert (=> bm!625285 (= call!625291 (validRegex!8430 (ite c!1277871 (reg!17023 lt!2457870) (ite c!1277872 (regTwo!33901 lt!2457870) (regTwo!33900 lt!2457870)))))))

(declare-fun b!6865538 () Bool)

(assert (=> b!6865538 (= e!4138861 e!4138859)))

(declare-fun res!2800805 () Bool)

(assert (=> b!6865538 (= res!2800805 (not (nullable!6655 (reg!17023 lt!2457870))))))

(assert (=> b!6865538 (=> (not res!2800805) (not e!4138859))))

(declare-fun b!6865539 () Bool)

(declare-fun e!4138860 () Bool)

(assert (=> b!6865539 (= e!4138860 e!4138861)))

(assert (=> b!6865539 (= c!1277871 (is-Star!16694 lt!2457870))))

(declare-fun b!6865533 () Bool)

(assert (=> b!6865533 (= e!4138862 call!625289)))

(declare-fun d!2156865 () Bool)

(declare-fun res!2800804 () Bool)

(assert (=> d!2156865 (=> res!2800804 e!4138860)))

(assert (=> d!2156865 (= res!2800804 (is-ElementMatch!16694 lt!2457870))))

(assert (=> d!2156865 (= (validRegex!8430 lt!2457870) e!4138860)))

(declare-fun bm!625286 () Bool)

(assert (=> bm!625286 (= call!625290 (validRegex!8430 (ite c!1277872 (regOne!33901 lt!2457870) (regOne!33900 lt!2457870))))))

(declare-fun b!6865540 () Bool)

(assert (=> b!6865540 (= e!4138858 call!625289)))

(assert (= (and d!2156865 (not res!2800804)) b!6865539))

(assert (= (and b!6865539 c!1277871) b!6865538))

(assert (= (and b!6865539 (not c!1277871)) b!6865537))

(assert (= (and b!6865538 res!2800805) b!6865536))

(assert (= (and b!6865537 c!1277872) b!6865535))

(assert (= (and b!6865537 (not c!1277872)) b!6865532))

(assert (= (and b!6865535 res!2800807) b!6865533))

(assert (= (and b!6865532 (not res!2800806)) b!6865534))

(assert (= (and b!6865534 res!2800808) b!6865540))

(assert (= (or b!6865533 b!6865540) bm!625284))

(assert (= (or b!6865535 b!6865534) bm!625286))

(assert (= (or b!6865536 bm!625284) bm!625285))

(declare-fun m!7598188 () Bool)

(assert (=> bm!625285 m!7598188))

(declare-fun m!7598190 () Bool)

(assert (=> b!6865538 m!7598190))

(declare-fun m!7598192 () Bool)

(assert (=> bm!625286 m!7598192))

(assert (=> d!2156533 d!2156865))

(declare-fun d!2156867 () Bool)

(declare-fun res!2800809 () Bool)

(declare-fun e!4138863 () Bool)

(assert (=> d!2156867 (=> res!2800809 e!4138863)))

(assert (=> d!2156867 (= res!2800809 (is-Nil!66257 (t!380124 (exprs!6578 lt!2457736))))))

(assert (=> d!2156867 (= (forall!15885 (t!380124 (exprs!6578 lt!2457736)) lambda!388436) e!4138863)))

(declare-fun b!6865541 () Bool)

(declare-fun e!4138864 () Bool)

(assert (=> b!6865541 (= e!4138863 e!4138864)))

(declare-fun res!2800810 () Bool)

(assert (=> b!6865541 (=> (not res!2800810) (not e!4138864))))

(assert (=> b!6865541 (= res!2800810 (dynLambda!26518 lambda!388436 (h!72705 (t!380124 (exprs!6578 lt!2457736)))))))

(declare-fun b!6865542 () Bool)

(assert (=> b!6865542 (= e!4138864 (forall!15885 (t!380124 (t!380124 (exprs!6578 lt!2457736))) lambda!388436))))

(assert (= (and d!2156867 (not res!2800809)) b!6865541))

(assert (= (and b!6865541 res!2800810) b!6865542))

(declare-fun b_lambda!259595 () Bool)

(assert (=> (not b_lambda!259595) (not b!6865541)))

(declare-fun m!7598194 () Bool)

(assert (=> b!6865541 m!7598194))

(declare-fun m!7598196 () Bool)

(assert (=> b!6865542 m!7598196))

(assert (=> d!2156533 d!2156867))

(declare-fun b!6865543 () Bool)

(declare-fun res!2800813 () Bool)

(declare-fun e!4138865 () Bool)

(assert (=> b!6865543 (=> res!2800813 e!4138865)))

(assert (=> b!6865543 (= res!2800813 (not (is-Concat!25539 (ite c!1277657 (regOne!33901 lt!2457778) (regOne!33900 lt!2457778)))))))

(declare-fun e!4138866 () Bool)

(assert (=> b!6865543 (= e!4138866 e!4138865)))

(declare-fun b!6865545 () Bool)

(declare-fun e!4138867 () Bool)

(assert (=> b!6865545 (= e!4138865 e!4138867)))

(declare-fun res!2800815 () Bool)

(assert (=> b!6865545 (=> (not res!2800815) (not e!4138867))))

(declare-fun call!625293 () Bool)

(assert (=> b!6865545 (= res!2800815 call!625293)))

(declare-fun b!6865546 () Bool)

(declare-fun res!2800814 () Bool)

(declare-fun e!4138871 () Bool)

(assert (=> b!6865546 (=> (not res!2800814) (not e!4138871))))

(assert (=> b!6865546 (= res!2800814 call!625293)))

(assert (=> b!6865546 (= e!4138866 e!4138871)))

(declare-fun b!6865547 () Bool)

(declare-fun e!4138868 () Bool)

(declare-fun call!625294 () Bool)

(assert (=> b!6865547 (= e!4138868 call!625294)))

(declare-fun b!6865548 () Bool)

(declare-fun e!4138870 () Bool)

(assert (=> b!6865548 (= e!4138870 e!4138866)))

(declare-fun c!1277874 () Bool)

(assert (=> b!6865548 (= c!1277874 (is-Union!16694 (ite c!1277657 (regOne!33901 lt!2457778) (regOne!33900 lt!2457778))))))

(declare-fun bm!625287 () Bool)

(declare-fun call!625292 () Bool)

(assert (=> bm!625287 (= call!625292 call!625294)))

(declare-fun bm!625288 () Bool)

(declare-fun c!1277873 () Bool)

(assert (=> bm!625288 (= call!625294 (validRegex!8430 (ite c!1277873 (reg!17023 (ite c!1277657 (regOne!33901 lt!2457778) (regOne!33900 lt!2457778))) (ite c!1277874 (regTwo!33901 (ite c!1277657 (regOne!33901 lt!2457778) (regOne!33900 lt!2457778))) (regTwo!33900 (ite c!1277657 (regOne!33901 lt!2457778) (regOne!33900 lt!2457778)))))))))

(declare-fun b!6865549 () Bool)

(assert (=> b!6865549 (= e!4138870 e!4138868)))

(declare-fun res!2800812 () Bool)

(assert (=> b!6865549 (= res!2800812 (not (nullable!6655 (reg!17023 (ite c!1277657 (regOne!33901 lt!2457778) (regOne!33900 lt!2457778))))))))

(assert (=> b!6865549 (=> (not res!2800812) (not e!4138868))))

(declare-fun b!6865550 () Bool)

(declare-fun e!4138869 () Bool)

(assert (=> b!6865550 (= e!4138869 e!4138870)))

(assert (=> b!6865550 (= c!1277873 (is-Star!16694 (ite c!1277657 (regOne!33901 lt!2457778) (regOne!33900 lt!2457778))))))

(declare-fun b!6865544 () Bool)

(assert (=> b!6865544 (= e!4138871 call!625292)))

(declare-fun d!2156869 () Bool)

(declare-fun res!2800811 () Bool)

(assert (=> d!2156869 (=> res!2800811 e!4138869)))

(assert (=> d!2156869 (= res!2800811 (is-ElementMatch!16694 (ite c!1277657 (regOne!33901 lt!2457778) (regOne!33900 lt!2457778))))))

(assert (=> d!2156869 (= (validRegex!8430 (ite c!1277657 (regOne!33901 lt!2457778) (regOne!33900 lt!2457778))) e!4138869)))

(declare-fun bm!625289 () Bool)

(assert (=> bm!625289 (= call!625293 (validRegex!8430 (ite c!1277874 (regOne!33901 (ite c!1277657 (regOne!33901 lt!2457778) (regOne!33900 lt!2457778))) (regOne!33900 (ite c!1277657 (regOne!33901 lt!2457778) (regOne!33900 lt!2457778))))))))

(declare-fun b!6865551 () Bool)

(assert (=> b!6865551 (= e!4138867 call!625292)))

(assert (= (and d!2156869 (not res!2800811)) b!6865550))

(assert (= (and b!6865550 c!1277873) b!6865549))

(assert (= (and b!6865550 (not c!1277873)) b!6865548))

(assert (= (and b!6865549 res!2800812) b!6865547))

(assert (= (and b!6865548 c!1277874) b!6865546))

(assert (= (and b!6865548 (not c!1277874)) b!6865543))

(assert (= (and b!6865546 res!2800814) b!6865544))

(assert (= (and b!6865543 (not res!2800813)) b!6865545))

(assert (= (and b!6865545 res!2800815) b!6865551))

(assert (= (or b!6865544 b!6865551) bm!625287))

(assert (= (or b!6865546 b!6865545) bm!625289))

(assert (= (or b!6865547 bm!625287) bm!625288))

(declare-fun m!7598198 () Bool)

(assert (=> bm!625288 m!7598198))

(declare-fun m!7598200 () Bool)

(assert (=> b!6865549 m!7598200))

(declare-fun m!7598202 () Bool)

(assert (=> bm!625289 m!7598202))

(assert (=> bm!625177 d!2156869))

(declare-fun d!2156871 () Bool)

(assert (=> d!2156871 (= (nullable!6655 (reg!17023 (h!72705 (exprs!6578 lt!2457736)))) (nullableFct!2529 (reg!17023 (h!72705 (exprs!6578 lt!2457736)))))))

(declare-fun bs!1835021 () Bool)

(assert (= bs!1835021 d!2156871))

(declare-fun m!7598204 () Bool)

(assert (=> bs!1835021 m!7598204))

(assert (=> b!6864824 d!2156871))

(declare-fun bs!1835022 () Bool)

(declare-fun b!6865555 () Bool)

(assert (= bs!1835022 (and b!6865555 b!6865496)))

(declare-fun lambda!388494 () Int)

(assert (=> bs!1835022 (not (= lambda!388494 lambda!388491))))

(declare-fun bs!1835023 () Bool)

(assert (= bs!1835023 (and b!6865555 b!6864260)))

(assert (=> bs!1835023 (= (and (= (reg!17023 (regOne!33901 (regOne!33901 r!7292))) (reg!17023 r!7292)) (= (regOne!33901 (regOne!33901 r!7292)) r!7292)) (= lambda!388494 lambda!388386))))

(declare-fun bs!1835024 () Bool)

(assert (= bs!1835024 (and b!6865555 b!6864261)))

(assert (=> bs!1835024 (not (= lambda!388494 lambda!388387))))

(declare-fun bs!1835025 () Bool)

(assert (= bs!1835025 (and b!6865555 b!6864917)))

(assert (=> bs!1835025 (= (and (= (reg!17023 (regOne!33901 (regOne!33901 r!7292))) (reg!17023 (regTwo!33901 r!7292))) (= (regOne!33901 (regOne!33901 r!7292)) (regTwo!33901 r!7292))) (= lambda!388494 lambda!388450))))

(declare-fun bs!1835026 () Bool)

(assert (= bs!1835026 (and b!6865555 b!6864671)))

(assert (=> bs!1835026 (= (and (= (reg!17023 (regOne!33901 (regOne!33901 r!7292))) (reg!17023 (regOne!33901 r!7292))) (= (regOne!33901 (regOne!33901 r!7292)) (regOne!33901 r!7292))) (= lambda!388494 lambda!388431))))

(declare-fun bs!1835027 () Bool)

(assert (= bs!1835027 (and b!6865555 b!6865495)))

(assert (=> bs!1835027 (= (and (= (reg!17023 (regOne!33901 (regOne!33901 r!7292))) (reg!17023 (regOne!33901 (regTwo!33901 r!7292)))) (= (regOne!33901 (regOne!33901 r!7292)) (regOne!33901 (regTwo!33901 r!7292)))) (= lambda!388494 lambda!388490))))

(declare-fun bs!1835028 () Bool)

(assert (= bs!1835028 (and b!6865555 b!6864672)))

(assert (=> bs!1835028 (not (= lambda!388494 lambda!388432))))

(declare-fun bs!1835029 () Bool)

(assert (= bs!1835029 (and b!6865555 b!6864918)))

(assert (=> bs!1835029 (not (= lambda!388494 lambda!388451))))

(assert (=> b!6865555 true))

(assert (=> b!6865555 true))

(declare-fun bs!1835030 () Bool)

(declare-fun b!6865556 () Bool)

(assert (= bs!1835030 (and b!6865556 b!6865496)))

(declare-fun lambda!388495 () Int)

(assert (=> bs!1835030 (= (and (= (regOne!33900 (regOne!33901 (regOne!33901 r!7292))) (regOne!33900 (regOne!33901 (regTwo!33901 r!7292)))) (= (regTwo!33900 (regOne!33901 (regOne!33901 r!7292))) (regTwo!33900 (regOne!33901 (regTwo!33901 r!7292))))) (= lambda!388495 lambda!388491))))

(declare-fun bs!1835031 () Bool)

(assert (= bs!1835031 (and b!6865556 b!6864260)))

(assert (=> bs!1835031 (not (= lambda!388495 lambda!388386))))

(declare-fun bs!1835032 () Bool)

(assert (= bs!1835032 (and b!6865556 b!6864261)))

(assert (=> bs!1835032 (= (and (= (regOne!33900 (regOne!33901 (regOne!33901 r!7292))) (regOne!33900 r!7292)) (= (regTwo!33900 (regOne!33901 (regOne!33901 r!7292))) (regTwo!33900 r!7292))) (= lambda!388495 lambda!388387))))

(declare-fun bs!1835033 () Bool)

(assert (= bs!1835033 (and b!6865556 b!6865555)))

(assert (=> bs!1835033 (not (= lambda!388495 lambda!388494))))

(declare-fun bs!1835034 () Bool)

(assert (= bs!1835034 (and b!6865556 b!6864917)))

(assert (=> bs!1835034 (not (= lambda!388495 lambda!388450))))

(declare-fun bs!1835035 () Bool)

(assert (= bs!1835035 (and b!6865556 b!6864671)))

(assert (=> bs!1835035 (not (= lambda!388495 lambda!388431))))

(declare-fun bs!1835036 () Bool)

(assert (= bs!1835036 (and b!6865556 b!6865495)))

(assert (=> bs!1835036 (not (= lambda!388495 lambda!388490))))

(declare-fun bs!1835037 () Bool)

(assert (= bs!1835037 (and b!6865556 b!6864672)))

(assert (=> bs!1835037 (= (and (= (regOne!33900 (regOne!33901 (regOne!33901 r!7292))) (regOne!33900 (regOne!33901 r!7292))) (= (regTwo!33900 (regOne!33901 (regOne!33901 r!7292))) (regTwo!33900 (regOne!33901 r!7292)))) (= lambda!388495 lambda!388432))))

(declare-fun bs!1835038 () Bool)

(assert (= bs!1835038 (and b!6865556 b!6864918)))

(assert (=> bs!1835038 (= (and (= (regOne!33900 (regOne!33901 (regOne!33901 r!7292))) (regOne!33900 (regTwo!33901 r!7292))) (= (regTwo!33900 (regOne!33901 (regOne!33901 r!7292))) (regTwo!33900 (regTwo!33901 r!7292)))) (= lambda!388495 lambda!388451))))

(assert (=> b!6865556 true))

(assert (=> b!6865556 true))

(declare-fun b!6865552 () Bool)

(declare-fun e!4138878 () Bool)

(declare-fun e!4138872 () Bool)

(assert (=> b!6865552 (= e!4138878 e!4138872)))

(declare-fun c!1277877 () Bool)

(assert (=> b!6865552 (= c!1277877 (is-Star!16694 (regOne!33901 (regOne!33901 r!7292))))))

(declare-fun b!6865553 () Bool)

(declare-fun e!4138874 () Bool)

(declare-fun e!4138873 () Bool)

(assert (=> b!6865553 (= e!4138874 e!4138873)))

(declare-fun res!2800818 () Bool)

(assert (=> b!6865553 (= res!2800818 (not (is-EmptyLang!16694 (regOne!33901 (regOne!33901 r!7292)))))))

(assert (=> b!6865553 (=> (not res!2800818) (not e!4138873))))

(declare-fun b!6865554 () Bool)

(declare-fun c!1277876 () Bool)

(assert (=> b!6865554 (= c!1277876 (is-Union!16694 (regOne!33901 (regOne!33901 r!7292))))))

(declare-fun e!4138877 () Bool)

(assert (=> b!6865554 (= e!4138877 e!4138878)))

(declare-fun e!4138875 () Bool)

(declare-fun call!625296 () Bool)

(assert (=> b!6865555 (= e!4138875 call!625296)))

(assert (=> b!6865556 (= e!4138872 call!625296)))

(declare-fun b!6865557 () Bool)

(declare-fun e!4138876 () Bool)

(assert (=> b!6865557 (= e!4138878 e!4138876)))

(declare-fun res!2800816 () Bool)

(assert (=> b!6865557 (= res!2800816 (matchRSpec!3795 (regOne!33901 (regOne!33901 (regOne!33901 r!7292))) s!2326))))

(assert (=> b!6865557 (=> res!2800816 e!4138876)))

(declare-fun bm!625290 () Bool)

(declare-fun call!625295 () Bool)

(assert (=> bm!625290 (= call!625295 (isEmpty!38620 s!2326))))

(declare-fun d!2156873 () Bool)

(declare-fun c!1277878 () Bool)

(assert (=> d!2156873 (= c!1277878 (is-EmptyExpr!16694 (regOne!33901 (regOne!33901 r!7292))))))

(assert (=> d!2156873 (= (matchRSpec!3795 (regOne!33901 (regOne!33901 r!7292)) s!2326) e!4138874)))

(declare-fun b!6865558 () Bool)

(declare-fun c!1277875 () Bool)

(assert (=> b!6865558 (= c!1277875 (is-ElementMatch!16694 (regOne!33901 (regOne!33901 r!7292))))))

(assert (=> b!6865558 (= e!4138873 e!4138877)))

(declare-fun b!6865559 () Bool)

(assert (=> b!6865559 (= e!4138877 (= s!2326 (Cons!66259 (c!1277522 (regOne!33901 (regOne!33901 r!7292))) Nil!66259)))))

(declare-fun b!6865560 () Bool)

(declare-fun res!2800817 () Bool)

(assert (=> b!6865560 (=> res!2800817 e!4138875)))

(assert (=> b!6865560 (= res!2800817 call!625295)))

(assert (=> b!6865560 (= e!4138872 e!4138875)))

(declare-fun bm!625291 () Bool)

(assert (=> bm!625291 (= call!625296 (Exists!3754 (ite c!1277877 lambda!388494 lambda!388495)))))

(declare-fun b!6865561 () Bool)

(assert (=> b!6865561 (= e!4138876 (matchRSpec!3795 (regTwo!33901 (regOne!33901 (regOne!33901 r!7292))) s!2326))))

(declare-fun b!6865562 () Bool)

(assert (=> b!6865562 (= e!4138874 call!625295)))

(assert (= (and d!2156873 c!1277878) b!6865562))

(assert (= (and d!2156873 (not c!1277878)) b!6865553))

(assert (= (and b!6865553 res!2800818) b!6865558))

(assert (= (and b!6865558 c!1277875) b!6865559))

(assert (= (and b!6865558 (not c!1277875)) b!6865554))

(assert (= (and b!6865554 c!1277876) b!6865557))

(assert (= (and b!6865554 (not c!1277876)) b!6865552))

(assert (= (and b!6865557 (not res!2800816)) b!6865561))

(assert (= (and b!6865552 c!1277877) b!6865560))

(assert (= (and b!6865552 (not c!1277877)) b!6865556))

(assert (= (and b!6865560 (not res!2800817)) b!6865555))

(assert (= (or b!6865555 b!6865556) bm!625291))

(assert (= (or b!6865562 b!6865560) bm!625290))

(declare-fun m!7598206 () Bool)

(assert (=> b!6865557 m!7598206))

(assert (=> bm!625290 m!7597206))

(declare-fun m!7598208 () Bool)

(assert (=> bm!625291 m!7598208))

(declare-fun m!7598210 () Bool)

(assert (=> b!6865561 m!7598210))

(assert (=> b!6864673 d!2156873))

(declare-fun d!2156875 () Bool)

(declare-fun res!2800819 () Bool)

(declare-fun e!4138879 () Bool)

(assert (=> d!2156875 (=> res!2800819 e!4138879)))

(assert (=> d!2156875 (= res!2800819 (is-Nil!66257 (t!380124 lt!2457803)))))

(assert (=> d!2156875 (= (forall!15885 (t!380124 lt!2457803) lambda!388381) e!4138879)))

(declare-fun b!6865563 () Bool)

(declare-fun e!4138880 () Bool)

(assert (=> b!6865563 (= e!4138879 e!4138880)))

(declare-fun res!2800820 () Bool)

(assert (=> b!6865563 (=> (not res!2800820) (not e!4138880))))

(assert (=> b!6865563 (= res!2800820 (dynLambda!26518 lambda!388381 (h!72705 (t!380124 lt!2457803))))))

(declare-fun b!6865564 () Bool)

(assert (=> b!6865564 (= e!4138880 (forall!15885 (t!380124 (t!380124 lt!2457803)) lambda!388381))))

(assert (= (and d!2156875 (not res!2800819)) b!6865563))

(assert (= (and b!6865563 res!2800820) b!6865564))

(declare-fun b_lambda!259597 () Bool)

(assert (=> (not b_lambda!259597) (not b!6865563)))

(declare-fun m!7598212 () Bool)

(assert (=> b!6865563 m!7598212))

(declare-fun m!7598214 () Bool)

(assert (=> b!6865564 m!7598214))

(assert (=> b!6864817 d!2156875))

(declare-fun d!2156877 () Bool)

(declare-fun res!2800821 () Bool)

(declare-fun e!4138881 () Bool)

(assert (=> d!2156877 (=> res!2800821 e!4138881)))

(assert (=> d!2156877 (= res!2800821 (is-Nil!66257 (t!380124 (exprs!6578 setElem!47206))))))

(assert (=> d!2156877 (= (forall!15885 (t!380124 (exprs!6578 setElem!47206)) lambda!388397) e!4138881)))

(declare-fun b!6865565 () Bool)

(declare-fun e!4138882 () Bool)

(assert (=> b!6865565 (= e!4138881 e!4138882)))

(declare-fun res!2800822 () Bool)

(assert (=> b!6865565 (=> (not res!2800822) (not e!4138882))))

(assert (=> b!6865565 (= res!2800822 (dynLambda!26518 lambda!388397 (h!72705 (t!380124 (exprs!6578 setElem!47206)))))))

(declare-fun b!6865566 () Bool)

(assert (=> b!6865566 (= e!4138882 (forall!15885 (t!380124 (t!380124 (exprs!6578 setElem!47206))) lambda!388397))))

(assert (= (and d!2156877 (not res!2800821)) b!6865565))

(assert (= (and b!6865565 res!2800822) b!6865566))

(declare-fun b_lambda!259599 () Bool)

(assert (=> (not b_lambda!259599) (not b!6865565)))

(declare-fun m!7598216 () Bool)

(assert (=> b!6865565 m!7598216))

(declare-fun m!7598218 () Bool)

(assert (=> b!6865566 m!7598218))

(assert (=> b!6864779 d!2156877))

(declare-fun b!6865567 () Bool)

(declare-fun e!4138884 () Int)

(assert (=> b!6865567 (= e!4138884 1)))

(declare-fun b!6865568 () Bool)

(declare-fun e!4138885 () Int)

(declare-fun call!625299 () Int)

(assert (=> b!6865568 (= e!4138885 (+ 1 call!625299))))

(declare-fun b!6865569 () Bool)

(declare-fun c!1277881 () Bool)

(assert (=> b!6865569 (= c!1277881 (is-Union!16694 (h!72705 (exprs!6578 (h!72706 zl!343)))))))

(declare-fun e!4138883 () Int)

(assert (=> b!6865569 (= e!4138885 e!4138883)))

(declare-fun bm!625292 () Bool)

(declare-fun call!625297 () Int)

(assert (=> bm!625292 (= call!625297 call!625299)))

(declare-fun bm!625293 () Bool)

(declare-fun c!1277880 () Bool)

(assert (=> bm!625293 (= call!625299 (regexDepthTotal!260 (ite c!1277880 (reg!17023 (h!72705 (exprs!6578 (h!72706 zl!343)))) (ite c!1277881 (regTwo!33901 (h!72705 (exprs!6578 (h!72706 zl!343)))) (regTwo!33900 (h!72705 (exprs!6578 (h!72706 zl!343))))))))))

(declare-fun b!6865570 () Bool)

(declare-fun e!4138886 () Int)

(assert (=> b!6865570 (= e!4138886 1)))

(declare-fun b!6865571 () Bool)

(assert (=> b!6865571 (= e!4138884 e!4138885)))

(assert (=> b!6865571 (= c!1277880 (is-Star!16694 (h!72705 (exprs!6578 (h!72706 zl!343)))))))

(declare-fun b!6865572 () Bool)

(declare-fun call!625298 () Int)

(assert (=> b!6865572 (= e!4138886 (+ 1 call!625298 call!625297))))

(declare-fun b!6865573 () Bool)

(assert (=> b!6865573 (= e!4138883 e!4138886)))

(declare-fun c!1277882 () Bool)

(assert (=> b!6865573 (= c!1277882 (is-Concat!25539 (h!72705 (exprs!6578 (h!72706 zl!343)))))))

(declare-fun b!6865574 () Bool)

(assert (=> b!6865574 (= e!4138883 (+ 1 call!625298 call!625297))))

(declare-fun bm!625294 () Bool)

(assert (=> bm!625294 (= call!625298 (regexDepthTotal!260 (ite c!1277881 (regOne!33901 (h!72705 (exprs!6578 (h!72706 zl!343)))) (regOne!33900 (h!72705 (exprs!6578 (h!72706 zl!343)))))))))

(declare-fun d!2156879 () Bool)

(declare-fun lt!2457911 () Int)

(assert (=> d!2156879 (> lt!2457911 0)))

(assert (=> d!2156879 (= lt!2457911 e!4138884)))

(declare-fun c!1277879 () Bool)

(assert (=> d!2156879 (= c!1277879 (is-ElementMatch!16694 (h!72705 (exprs!6578 (h!72706 zl!343)))))))

(assert (=> d!2156879 (= (regexDepthTotal!260 (h!72705 (exprs!6578 (h!72706 zl!343)))) lt!2457911)))

(assert (= (and d!2156879 c!1277879) b!6865567))

(assert (= (and d!2156879 (not c!1277879)) b!6865571))

(assert (= (and b!6865571 c!1277880) b!6865568))

(assert (= (and b!6865571 (not c!1277880)) b!6865569))

(assert (= (and b!6865569 c!1277881) b!6865574))

(assert (= (and b!6865569 (not c!1277881)) b!6865573))

(assert (= (and b!6865573 c!1277882) b!6865572))

(assert (= (and b!6865573 (not c!1277882)) b!6865570))

(assert (= (or b!6865574 b!6865572) bm!625292))

(assert (= (or b!6865574 b!6865572) bm!625294))

(assert (= (or b!6865568 bm!625292) bm!625293))

(declare-fun m!7598220 () Bool)

(assert (=> bm!625293 m!7598220))

(declare-fun m!7598222 () Bool)

(assert (=> bm!625294 m!7598222))

(assert (=> b!6864725 d!2156879))

(declare-fun d!2156881 () Bool)

(declare-fun lt!2457912 () Int)

(assert (=> d!2156881 (>= lt!2457912 0)))

(declare-fun e!4138887 () Int)

(assert (=> d!2156881 (= lt!2457912 e!4138887)))

(declare-fun c!1277883 () Bool)

(assert (=> d!2156881 (= c!1277883 (is-Cons!66257 (exprs!6578 (Context!12157 (t!380124 (exprs!6578 (h!72706 zl!343)))))))))

(assert (=> d!2156881 (= (contextDepthTotal!415 (Context!12157 (t!380124 (exprs!6578 (h!72706 zl!343))))) lt!2457912)))

(declare-fun b!6865575 () Bool)

(assert (=> b!6865575 (= e!4138887 (+ (regexDepthTotal!260 (h!72705 (exprs!6578 (Context!12157 (t!380124 (exprs!6578 (h!72706 zl!343))))))) (contextDepthTotal!415 (Context!12157 (t!380124 (exprs!6578 (Context!12157 (t!380124 (exprs!6578 (h!72706 zl!343))))))))))))

(declare-fun b!6865576 () Bool)

(assert (=> b!6865576 (= e!4138887 1)))

(assert (= (and d!2156881 c!1277883) b!6865575))

(assert (= (and d!2156881 (not c!1277883)) b!6865576))

(declare-fun m!7598224 () Bool)

(assert (=> b!6865575 m!7598224))

(declare-fun m!7598226 () Bool)

(assert (=> b!6865575 m!7598226))

(assert (=> b!6864725 d!2156881))

(declare-fun b!6865577 () Bool)

(declare-fun res!2800825 () Bool)

(declare-fun e!4138888 () Bool)

(assert (=> b!6865577 (=> res!2800825 e!4138888)))

(assert (=> b!6865577 (= res!2800825 (not (is-Concat!25539 (ite c!1277739 (reg!17023 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))) (ite c!1277740 (regTwo!33901 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))) (regTwo!33900 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))))))))))

(declare-fun e!4138889 () Bool)

(assert (=> b!6865577 (= e!4138889 e!4138888)))

(declare-fun b!6865579 () Bool)

(declare-fun e!4138890 () Bool)

(assert (=> b!6865579 (= e!4138888 e!4138890)))

(declare-fun res!2800827 () Bool)

(assert (=> b!6865579 (=> (not res!2800827) (not e!4138890))))

(declare-fun call!625301 () Bool)

(assert (=> b!6865579 (= res!2800827 call!625301)))

(declare-fun b!6865580 () Bool)

(declare-fun res!2800826 () Bool)

(declare-fun e!4138894 () Bool)

(assert (=> b!6865580 (=> (not res!2800826) (not e!4138894))))

(assert (=> b!6865580 (= res!2800826 call!625301)))

(assert (=> b!6865580 (= e!4138889 e!4138894)))

(declare-fun b!6865581 () Bool)

(declare-fun e!4138891 () Bool)

(declare-fun call!625302 () Bool)

(assert (=> b!6865581 (= e!4138891 call!625302)))

(declare-fun b!6865582 () Bool)

(declare-fun e!4138893 () Bool)

(assert (=> b!6865582 (= e!4138893 e!4138889)))

(declare-fun c!1277885 () Bool)

(assert (=> b!6865582 (= c!1277885 (is-Union!16694 (ite c!1277739 (reg!17023 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))) (ite c!1277740 (regTwo!33901 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))) (regTwo!33900 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))))))))))

(declare-fun bm!625295 () Bool)

(declare-fun call!625300 () Bool)

(assert (=> bm!625295 (= call!625300 call!625302)))

(declare-fun bm!625296 () Bool)

(declare-fun c!1277884 () Bool)

(assert (=> bm!625296 (= call!625302 (validRegex!8430 (ite c!1277884 (reg!17023 (ite c!1277739 (reg!17023 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))) (ite c!1277740 (regTwo!33901 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))) (regTwo!33900 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))))))) (ite c!1277885 (regTwo!33901 (ite c!1277739 (reg!17023 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))) (ite c!1277740 (regTwo!33901 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))) (regTwo!33900 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))))))) (regTwo!33900 (ite c!1277739 (reg!17023 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))) (ite c!1277740 (regTwo!33901 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))) (regTwo!33900 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))))))))))))

(declare-fun b!6865583 () Bool)

(assert (=> b!6865583 (= e!4138893 e!4138891)))

(declare-fun res!2800824 () Bool)

(assert (=> b!6865583 (= res!2800824 (not (nullable!6655 (reg!17023 (ite c!1277739 (reg!17023 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))) (ite c!1277740 (regTwo!33901 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))) (regTwo!33900 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))))))))))))

(assert (=> b!6865583 (=> (not res!2800824) (not e!4138891))))

(declare-fun b!6865584 () Bool)

(declare-fun e!4138892 () Bool)

(assert (=> b!6865584 (= e!4138892 e!4138893)))

(assert (=> b!6865584 (= c!1277884 (is-Star!16694 (ite c!1277739 (reg!17023 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))) (ite c!1277740 (regTwo!33901 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))) (regTwo!33900 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))))))))))

(declare-fun b!6865578 () Bool)

(assert (=> b!6865578 (= e!4138894 call!625300)))

(declare-fun d!2156883 () Bool)

(declare-fun res!2800823 () Bool)

(assert (=> d!2156883 (=> res!2800823 e!4138892)))

(assert (=> d!2156883 (= res!2800823 (is-ElementMatch!16694 (ite c!1277739 (reg!17023 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))) (ite c!1277740 (regTwo!33901 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))) (regTwo!33900 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))))))))))

(assert (=> d!2156883 (= (validRegex!8430 (ite c!1277739 (reg!17023 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))) (ite c!1277740 (regTwo!33901 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))) (regTwo!33900 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))))))) e!4138892)))

(declare-fun bm!625297 () Bool)

(assert (=> bm!625297 (= call!625301 (validRegex!8430 (ite c!1277885 (regOne!33901 (ite c!1277739 (reg!17023 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))) (ite c!1277740 (regTwo!33901 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))) (regTwo!33900 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))))))) (regOne!33900 (ite c!1277739 (reg!17023 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))) (ite c!1277740 (regTwo!33901 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))) (regTwo!33900 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))))))))))))

(declare-fun b!6865585 () Bool)

(assert (=> b!6865585 (= e!4138890 call!625300)))

(assert (= (and d!2156883 (not res!2800823)) b!6865584))

(assert (= (and b!6865584 c!1277884) b!6865583))

(assert (= (and b!6865584 (not c!1277884)) b!6865582))

(assert (= (and b!6865583 res!2800824) b!6865581))

(assert (= (and b!6865582 c!1277885) b!6865580))

(assert (= (and b!6865582 (not c!1277885)) b!6865577))

(assert (= (and b!6865580 res!2800826) b!6865578))

(assert (= (and b!6865577 (not res!2800825)) b!6865579))

(assert (= (and b!6865579 res!2800827) b!6865585))

(assert (= (or b!6865578 b!6865585) bm!625295))

(assert (= (or b!6865580 b!6865579) bm!625297))

(assert (= (or b!6865581 bm!625295) bm!625296))

(declare-fun m!7598228 () Bool)

(assert (=> bm!625296 m!7598228))

(declare-fun m!7598230 () Bool)

(assert (=> b!6865583 m!7598230))

(declare-fun m!7598232 () Bool)

(assert (=> bm!625297 m!7598232))

(assert (=> bm!625218 d!2156883))

(assert (=> d!2156545 d!2156553))

(declare-fun bs!1835039 () Bool)

(declare-fun d!2156885 () Bool)

(assert (= bs!1835039 (and d!2156885 d!2156435)))

(declare-fun lambda!388496 () Int)

(assert (=> bs!1835039 (= lambda!388496 lambda!388396)))

(declare-fun bs!1835040 () Bool)

(assert (= bs!1835040 (and d!2156885 b!6864001)))

(assert (=> bs!1835040 (= lambda!388496 lambda!388340)))

(declare-fun bs!1835041 () Bool)

(assert (= bs!1835041 (and d!2156885 d!2156495)))

(assert (=> bs!1835041 (not (= lambda!388496 lambda!388430))))

(declare-fun bs!1835042 () Bool)

(assert (= bs!1835042 (and d!2156885 d!2156611)))

(assert (=> bs!1835042 (= lambda!388496 lambda!388448)))

(declare-fun bs!1835043 () Bool)

(assert (= bs!1835043 (and d!2156885 d!2156385)))

(assert (=> bs!1835043 (= lambda!388496 lambda!388369)))

(declare-fun bs!1835044 () Bool)

(assert (= bs!1835044 (and d!2156885 d!2156577)))

(assert (=> bs!1835044 (= lambda!388496 lambda!388443)))

(declare-fun bs!1835045 () Bool)

(assert (= bs!1835045 (and d!2156885 d!2156835)))

(assert (=> bs!1835045 (not (= lambda!388496 lambda!388487))))

(declare-fun bs!1835046 () Bool)

(assert (= bs!1835046 (and d!2156885 d!2156829)))

(assert (=> bs!1835046 (= lambda!388496 lambda!388485)))

(declare-fun bs!1835047 () Bool)

(assert (= bs!1835047 (and d!2156885 d!2156493)))

(assert (=> bs!1835047 (not (= lambda!388496 lambda!388427))))

(declare-fun bs!1835048 () Bool)

(assert (= bs!1835048 (and d!2156885 d!2156845)))

(assert (=> bs!1835048 (= lambda!388496 lambda!388489)))

(declare-fun bs!1835049 () Bool)

(assert (= bs!1835049 (and d!2156885 d!2156823)))

(assert (=> bs!1835049 (= lambda!388496 lambda!388484)))

(declare-fun bs!1835050 () Bool)

(assert (= bs!1835050 (and d!2156885 d!2156527)))

(assert (=> bs!1835050 (= lambda!388496 lambda!388435)))

(declare-fun bs!1835051 () Bool)

(assert (= bs!1835051 (and d!2156885 d!2156397)))

(assert (=> bs!1835051 (not (= lambda!388496 lambda!388378))))

(declare-fun bs!1835052 () Bool)

(assert (= bs!1835052 (and d!2156885 d!2156437)))

(assert (=> bs!1835052 (= lambda!388496 lambda!388397)))

(declare-fun bs!1835053 () Bool)

(assert (= bs!1835053 (and d!2156885 d!2156551)))

(assert (=> bs!1835053 (= lambda!388496 lambda!388440)))

(declare-fun bs!1835054 () Bool)

(assert (= bs!1835054 (and d!2156885 b!6863998)))

(assert (=> bs!1835054 (not (= lambda!388496 lambda!388338))))

(assert (=> bs!1835051 (= lambda!388496 lambda!388377)))

(declare-fun bs!1835055 () Bool)

(assert (= bs!1835055 (and d!2156885 d!2156613)))

(assert (=> bs!1835055 (= lambda!388496 lambda!388449)))

(declare-fun bs!1835056 () Bool)

(assert (= bs!1835056 (and d!2156885 d!2156375)))

(assert (=> bs!1835056 (= lambda!388496 lambda!388360)))

(declare-fun bs!1835057 () Bool)

(assert (= bs!1835057 (and d!2156885 d!2156849)))

(assert (=> bs!1835057 (= lambda!388496 lambda!388492)))

(declare-fun bs!1835058 () Bool)

(assert (= bs!1835058 (and d!2156885 d!2156533)))

(assert (=> bs!1835058 (= lambda!388496 lambda!388436)))

(declare-fun bs!1835059 () Bool)

(assert (= bs!1835059 (and d!2156885 d!2156401)))

(assert (=> bs!1835059 (= lambda!388496 lambda!388381)))

(declare-fun bs!1835060 () Bool)

(assert (= bs!1835060 (and d!2156885 d!2156489)))

(assert (=> bs!1835060 (= lambda!388496 lambda!388426)))

(declare-fun bs!1835061 () Bool)

(assert (= bs!1835061 (and d!2156885 d!2156395)))

(assert (=> bs!1835061 (not (= lambda!388496 lambda!388372))))

(declare-fun b!6865586 () Bool)

(declare-fun e!4138899 () Regex!16694)

(assert (=> b!6865586 (= e!4138899 (Concat!25539 (h!72705 (exprs!6578 (h!72706 (t!380125 zl!343)))) (generalisedConcat!2282 (t!380124 (exprs!6578 (h!72706 (t!380125 zl!343)))))))))

(declare-fun b!6865587 () Bool)

(declare-fun e!4138897 () Bool)

(declare-fun e!4138898 () Bool)

(assert (=> b!6865587 (= e!4138897 e!4138898)))

(declare-fun c!1277887 () Bool)

(assert (=> b!6865587 (= c!1277887 (isEmpty!38619 (exprs!6578 (h!72706 (t!380125 zl!343)))))))

(declare-fun b!6865588 () Bool)

(declare-fun e!4138895 () Bool)

(assert (=> b!6865588 (= e!4138898 e!4138895)))

(declare-fun c!1277889 () Bool)

(assert (=> b!6865588 (= c!1277889 (isEmpty!38619 (tail!12829 (exprs!6578 (h!72706 (t!380125 zl!343))))))))

(declare-fun b!6865589 () Bool)

(declare-fun lt!2457913 () Regex!16694)

(assert (=> b!6865589 (= e!4138895 (isConcat!1537 lt!2457913))))

(declare-fun b!6865590 () Bool)

(assert (=> b!6865590 (= e!4138898 (isEmptyExpr!2014 lt!2457913))))

(declare-fun b!6865591 () Bool)

(declare-fun e!4138896 () Bool)

(assert (=> b!6865591 (= e!4138896 (isEmpty!38619 (t!380124 (exprs!6578 (h!72706 (t!380125 zl!343))))))))

(declare-fun b!6865592 () Bool)

(assert (=> b!6865592 (= e!4138895 (= lt!2457913 (head!13770 (exprs!6578 (h!72706 (t!380125 zl!343))))))))

(declare-fun b!6865593 () Bool)

(assert (=> b!6865593 (= e!4138899 EmptyExpr!16694)))

(assert (=> d!2156885 e!4138897))

(declare-fun res!2800829 () Bool)

(assert (=> d!2156885 (=> (not res!2800829) (not e!4138897))))

(assert (=> d!2156885 (= res!2800829 (validRegex!8430 lt!2457913))))

(declare-fun e!4138900 () Regex!16694)

(assert (=> d!2156885 (= lt!2457913 e!4138900)))

(declare-fun c!1277888 () Bool)

(assert (=> d!2156885 (= c!1277888 e!4138896)))

(declare-fun res!2800828 () Bool)

(assert (=> d!2156885 (=> (not res!2800828) (not e!4138896))))

(assert (=> d!2156885 (= res!2800828 (is-Cons!66257 (exprs!6578 (h!72706 (t!380125 zl!343)))))))

(assert (=> d!2156885 (forall!15885 (exprs!6578 (h!72706 (t!380125 zl!343))) lambda!388496)))

(assert (=> d!2156885 (= (generalisedConcat!2282 (exprs!6578 (h!72706 (t!380125 zl!343)))) lt!2457913)))

(declare-fun b!6865594 () Bool)

(assert (=> b!6865594 (= e!4138900 e!4138899)))

(declare-fun c!1277886 () Bool)

(assert (=> b!6865594 (= c!1277886 (is-Cons!66257 (exprs!6578 (h!72706 (t!380125 zl!343)))))))

(declare-fun b!6865595 () Bool)

(assert (=> b!6865595 (= e!4138900 (h!72705 (exprs!6578 (h!72706 (t!380125 zl!343)))))))

(assert (= (and d!2156885 res!2800828) b!6865591))

(assert (= (and d!2156885 c!1277888) b!6865595))

(assert (= (and d!2156885 (not c!1277888)) b!6865594))

(assert (= (and b!6865594 c!1277886) b!6865586))

(assert (= (and b!6865594 (not c!1277886)) b!6865593))

(assert (= (and d!2156885 res!2800829) b!6865587))

(assert (= (and b!6865587 c!1277887) b!6865590))

(assert (= (and b!6865587 (not c!1277887)) b!6865588))

(assert (= (and b!6865588 c!1277889) b!6865592))

(assert (= (and b!6865588 (not c!1277889)) b!6865589))

(declare-fun m!7598234 () Bool)

(assert (=> b!6865587 m!7598234))

(declare-fun m!7598236 () Bool)

(assert (=> b!6865586 m!7598236))

(declare-fun m!7598238 () Bool)

(assert (=> b!6865591 m!7598238))

(declare-fun m!7598240 () Bool)

(assert (=> b!6865590 m!7598240))

(declare-fun m!7598242 () Bool)

(assert (=> d!2156885 m!7598242))

(declare-fun m!7598244 () Bool)

(assert (=> d!2156885 m!7598244))

(declare-fun m!7598246 () Bool)

(assert (=> b!6865592 m!7598246))

(declare-fun m!7598248 () Bool)

(assert (=> b!6865589 m!7598248))

(declare-fun m!7598250 () Bool)

(assert (=> b!6865588 m!7598250))

(assert (=> b!6865588 m!7598250))

(declare-fun m!7598252 () Bool)

(assert (=> b!6865588 m!7598252))

(assert (=> b!6864908 d!2156885))

(declare-fun bs!1835062 () Bool)

(declare-fun d!2156887 () Bool)

(assert (= bs!1835062 (and d!2156887 d!2156435)))

(declare-fun lambda!388497 () Int)

(assert (=> bs!1835062 (= lambda!388497 lambda!388396)))

(declare-fun bs!1835063 () Bool)

(assert (= bs!1835063 (and d!2156887 b!6864001)))

(assert (=> bs!1835063 (= lambda!388497 lambda!388340)))

(declare-fun bs!1835064 () Bool)

(assert (= bs!1835064 (and d!2156887 d!2156495)))

(assert (=> bs!1835064 (not (= lambda!388497 lambda!388430))))

(declare-fun bs!1835065 () Bool)

(assert (= bs!1835065 (and d!2156887 d!2156611)))

(assert (=> bs!1835065 (= lambda!388497 lambda!388448)))

(declare-fun bs!1835066 () Bool)

(assert (= bs!1835066 (and d!2156887 d!2156385)))

(assert (=> bs!1835066 (= lambda!388497 lambda!388369)))

(declare-fun bs!1835067 () Bool)

(assert (= bs!1835067 (and d!2156887 d!2156577)))

(assert (=> bs!1835067 (= lambda!388497 lambda!388443)))

(declare-fun bs!1835068 () Bool)

(assert (= bs!1835068 (and d!2156887 d!2156835)))

(assert (=> bs!1835068 (not (= lambda!388497 lambda!388487))))

(declare-fun bs!1835069 () Bool)

(assert (= bs!1835069 (and d!2156887 d!2156829)))

(assert (=> bs!1835069 (= lambda!388497 lambda!388485)))

(declare-fun bs!1835070 () Bool)

(assert (= bs!1835070 (and d!2156887 d!2156493)))

(assert (=> bs!1835070 (not (= lambda!388497 lambda!388427))))

(declare-fun bs!1835071 () Bool)

(assert (= bs!1835071 (and d!2156887 d!2156845)))

(assert (=> bs!1835071 (= lambda!388497 lambda!388489)))

(declare-fun bs!1835072 () Bool)

(assert (= bs!1835072 (and d!2156887 d!2156823)))

(assert (=> bs!1835072 (= lambda!388497 lambda!388484)))

(declare-fun bs!1835073 () Bool)

(assert (= bs!1835073 (and d!2156887 d!2156527)))

(assert (=> bs!1835073 (= lambda!388497 lambda!388435)))

(declare-fun bs!1835074 () Bool)

(assert (= bs!1835074 (and d!2156887 d!2156397)))

(assert (=> bs!1835074 (not (= lambda!388497 lambda!388378))))

(declare-fun bs!1835075 () Bool)

(assert (= bs!1835075 (and d!2156887 d!2156437)))

(assert (=> bs!1835075 (= lambda!388497 lambda!388397)))

(declare-fun bs!1835076 () Bool)

(assert (= bs!1835076 (and d!2156887 d!2156551)))

(assert (=> bs!1835076 (= lambda!388497 lambda!388440)))

(declare-fun bs!1835077 () Bool)

(assert (= bs!1835077 (and d!2156887 b!6863998)))

(assert (=> bs!1835077 (not (= lambda!388497 lambda!388338))))

(assert (=> bs!1835074 (= lambda!388497 lambda!388377)))

(declare-fun bs!1835078 () Bool)

(assert (= bs!1835078 (and d!2156887 d!2156613)))

(assert (=> bs!1835078 (= lambda!388497 lambda!388449)))

(declare-fun bs!1835079 () Bool)

(assert (= bs!1835079 (and d!2156887 d!2156375)))

(assert (=> bs!1835079 (= lambda!388497 lambda!388360)))

(declare-fun bs!1835080 () Bool)

(assert (= bs!1835080 (and d!2156887 d!2156849)))

(assert (=> bs!1835080 (= lambda!388497 lambda!388492)))

(declare-fun bs!1835081 () Bool)

(assert (= bs!1835081 (and d!2156887 d!2156533)))

(assert (=> bs!1835081 (= lambda!388497 lambda!388436)))

(declare-fun bs!1835082 () Bool)

(assert (= bs!1835082 (and d!2156887 d!2156401)))

(assert (=> bs!1835082 (= lambda!388497 lambda!388381)))

(declare-fun bs!1835083 () Bool)

(assert (= bs!1835083 (and d!2156887 d!2156885)))

(assert (=> bs!1835083 (= lambda!388497 lambda!388496)))

(declare-fun bs!1835084 () Bool)

(assert (= bs!1835084 (and d!2156887 d!2156489)))

(assert (=> bs!1835084 (= lambda!388497 lambda!388426)))

(declare-fun bs!1835085 () Bool)

(assert (= bs!1835085 (and d!2156887 d!2156395)))

(assert (=> bs!1835085 (not (= lambda!388497 lambda!388372))))

(declare-fun lt!2457914 () List!66381)

(assert (=> d!2156887 (forall!15885 lt!2457914 lambda!388497)))

(declare-fun e!4138901 () List!66381)

(assert (=> d!2156887 (= lt!2457914 e!4138901)))

(declare-fun c!1277890 () Bool)

(assert (=> d!2156887 (= c!1277890 (is-Cons!66258 (t!380125 (t!380125 zl!343))))))

(assert (=> d!2156887 (= (unfocusZipperList!2111 (t!380125 (t!380125 zl!343))) lt!2457914)))

(declare-fun b!6865596 () Bool)

(assert (=> b!6865596 (= e!4138901 (Cons!66257 (generalisedConcat!2282 (exprs!6578 (h!72706 (t!380125 (t!380125 zl!343))))) (unfocusZipperList!2111 (t!380125 (t!380125 (t!380125 zl!343))))))))

(declare-fun b!6865597 () Bool)

(assert (=> b!6865597 (= e!4138901 Nil!66257)))

(assert (= (and d!2156887 c!1277890) b!6865596))

(assert (= (and d!2156887 (not c!1277890)) b!6865597))

(declare-fun m!7598254 () Bool)

(assert (=> d!2156887 m!7598254))

(declare-fun m!7598256 () Bool)

(assert (=> b!6865596 m!7598256))

(declare-fun m!7598258 () Bool)

(assert (=> b!6865596 m!7598258))

(assert (=> b!6864908 d!2156887))

(declare-fun bs!1835086 () Bool)

(declare-fun d!2156889 () Bool)

(assert (= bs!1835086 (and d!2156889 d!2156435)))

(declare-fun lambda!388498 () Int)

(assert (=> bs!1835086 (= lambda!388498 lambda!388396)))

(declare-fun bs!1835087 () Bool)

(assert (= bs!1835087 (and d!2156889 b!6864001)))

(assert (=> bs!1835087 (= lambda!388498 lambda!388340)))

(declare-fun bs!1835088 () Bool)

(assert (= bs!1835088 (and d!2156889 d!2156495)))

(assert (=> bs!1835088 (not (= lambda!388498 lambda!388430))))

(declare-fun bs!1835089 () Bool)

(assert (= bs!1835089 (and d!2156889 d!2156611)))

(assert (=> bs!1835089 (= lambda!388498 lambda!388448)))

(declare-fun bs!1835090 () Bool)

(assert (= bs!1835090 (and d!2156889 d!2156385)))

(assert (=> bs!1835090 (= lambda!388498 lambda!388369)))

(declare-fun bs!1835091 () Bool)

(assert (= bs!1835091 (and d!2156889 d!2156577)))

(assert (=> bs!1835091 (= lambda!388498 lambda!388443)))

(declare-fun bs!1835092 () Bool)

(assert (= bs!1835092 (and d!2156889 d!2156835)))

(assert (=> bs!1835092 (not (= lambda!388498 lambda!388487))))

(declare-fun bs!1835093 () Bool)

(assert (= bs!1835093 (and d!2156889 d!2156829)))

(assert (=> bs!1835093 (= lambda!388498 lambda!388485)))

(declare-fun bs!1835094 () Bool)

(assert (= bs!1835094 (and d!2156889 d!2156887)))

(assert (=> bs!1835094 (= lambda!388498 lambda!388497)))

(declare-fun bs!1835095 () Bool)

(assert (= bs!1835095 (and d!2156889 d!2156493)))

(assert (=> bs!1835095 (not (= lambda!388498 lambda!388427))))

(declare-fun bs!1835096 () Bool)

(assert (= bs!1835096 (and d!2156889 d!2156845)))

(assert (=> bs!1835096 (= lambda!388498 lambda!388489)))

(declare-fun bs!1835097 () Bool)

(assert (= bs!1835097 (and d!2156889 d!2156823)))

(assert (=> bs!1835097 (= lambda!388498 lambda!388484)))

(declare-fun bs!1835098 () Bool)

(assert (= bs!1835098 (and d!2156889 d!2156527)))

(assert (=> bs!1835098 (= lambda!388498 lambda!388435)))

(declare-fun bs!1835099 () Bool)

(assert (= bs!1835099 (and d!2156889 d!2156397)))

(assert (=> bs!1835099 (not (= lambda!388498 lambda!388378))))

(declare-fun bs!1835100 () Bool)

(assert (= bs!1835100 (and d!2156889 d!2156437)))

(assert (=> bs!1835100 (= lambda!388498 lambda!388397)))

(declare-fun bs!1835101 () Bool)

(assert (= bs!1835101 (and d!2156889 d!2156551)))

(assert (=> bs!1835101 (= lambda!388498 lambda!388440)))

(declare-fun bs!1835102 () Bool)

(assert (= bs!1835102 (and d!2156889 b!6863998)))

(assert (=> bs!1835102 (not (= lambda!388498 lambda!388338))))

(assert (=> bs!1835099 (= lambda!388498 lambda!388377)))

(declare-fun bs!1835103 () Bool)

(assert (= bs!1835103 (and d!2156889 d!2156613)))

(assert (=> bs!1835103 (= lambda!388498 lambda!388449)))

(declare-fun bs!1835104 () Bool)

(assert (= bs!1835104 (and d!2156889 d!2156375)))

(assert (=> bs!1835104 (= lambda!388498 lambda!388360)))

(declare-fun bs!1835105 () Bool)

(assert (= bs!1835105 (and d!2156889 d!2156849)))

(assert (=> bs!1835105 (= lambda!388498 lambda!388492)))

(declare-fun bs!1835106 () Bool)

(assert (= bs!1835106 (and d!2156889 d!2156533)))

(assert (=> bs!1835106 (= lambda!388498 lambda!388436)))

(declare-fun bs!1835107 () Bool)

(assert (= bs!1835107 (and d!2156889 d!2156401)))

(assert (=> bs!1835107 (= lambda!388498 lambda!388381)))

(declare-fun bs!1835108 () Bool)

(assert (= bs!1835108 (and d!2156889 d!2156885)))

(assert (=> bs!1835108 (= lambda!388498 lambda!388496)))

(declare-fun bs!1835109 () Bool)

(assert (= bs!1835109 (and d!2156889 d!2156489)))

(assert (=> bs!1835109 (= lambda!388498 lambda!388426)))

(declare-fun bs!1835110 () Bool)

(assert (= bs!1835110 (and d!2156889 d!2156395)))

(assert (=> bs!1835110 (not (= lambda!388498 lambda!388372))))

(assert (=> d!2156889 (= (inv!84983 (h!72706 (t!380125 (t!380125 zl!343)))) (forall!15885 (exprs!6578 (h!72706 (t!380125 (t!380125 zl!343)))) lambda!388498))))

(declare-fun bs!1835111 () Bool)

(assert (= bs!1835111 d!2156889))

(declare-fun m!7598260 () Bool)

(assert (=> bs!1835111 m!7598260))

(assert (=> b!6864926 d!2156889))

(declare-fun b!6865598 () Bool)

(declare-fun res!2800832 () Bool)

(declare-fun e!4138902 () Bool)

(assert (=> b!6865598 (=> res!2800832 e!4138902)))

(assert (=> b!6865598 (= res!2800832 (not (is-Concat!25539 (ite c!1277707 (regOne!33901 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))) (regOne!33900 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))))))))

(declare-fun e!4138903 () Bool)

(assert (=> b!6865598 (= e!4138903 e!4138902)))

(declare-fun b!6865600 () Bool)

(declare-fun e!4138904 () Bool)

(assert (=> b!6865600 (= e!4138902 e!4138904)))

(declare-fun res!2800834 () Bool)

(assert (=> b!6865600 (=> (not res!2800834) (not e!4138904))))

(declare-fun call!625304 () Bool)

(assert (=> b!6865600 (= res!2800834 call!625304)))

(declare-fun b!6865601 () Bool)

(declare-fun res!2800833 () Bool)

(declare-fun e!4138908 () Bool)

(assert (=> b!6865601 (=> (not res!2800833) (not e!4138908))))

(assert (=> b!6865601 (= res!2800833 call!625304)))

(assert (=> b!6865601 (= e!4138903 e!4138908)))

(declare-fun b!6865602 () Bool)

(declare-fun e!4138905 () Bool)

(declare-fun call!625305 () Bool)

(assert (=> b!6865602 (= e!4138905 call!625305)))

(declare-fun b!6865603 () Bool)

(declare-fun e!4138907 () Bool)

(assert (=> b!6865603 (= e!4138907 e!4138903)))

(declare-fun c!1277892 () Bool)

(assert (=> b!6865603 (= c!1277892 (is-Union!16694 (ite c!1277707 (regOne!33901 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))) (regOne!33900 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))))))))

(declare-fun bm!625298 () Bool)

(declare-fun call!625303 () Bool)

(assert (=> bm!625298 (= call!625303 call!625305)))

(declare-fun bm!625299 () Bool)

(declare-fun c!1277891 () Bool)

(assert (=> bm!625299 (= call!625305 (validRegex!8430 (ite c!1277891 (reg!17023 (ite c!1277707 (regOne!33901 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))) (regOne!33900 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))))) (ite c!1277892 (regTwo!33901 (ite c!1277707 (regOne!33901 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))) (regOne!33900 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))))) (regTwo!33900 (ite c!1277707 (regOne!33901 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))) (regOne!33900 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))))))))))

(declare-fun b!6865604 () Bool)

(assert (=> b!6865604 (= e!4138907 e!4138905)))

(declare-fun res!2800831 () Bool)

(assert (=> b!6865604 (= res!2800831 (not (nullable!6655 (reg!17023 (ite c!1277707 (regOne!33901 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))) (regOne!33900 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))))))))))

(assert (=> b!6865604 (=> (not res!2800831) (not e!4138905))))

(declare-fun b!6865605 () Bool)

(declare-fun e!4138906 () Bool)

(assert (=> b!6865605 (= e!4138906 e!4138907)))

(assert (=> b!6865605 (= c!1277891 (is-Star!16694 (ite c!1277707 (regOne!33901 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))) (regOne!33900 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))))))))

(declare-fun b!6865599 () Bool)

(assert (=> b!6865599 (= e!4138908 call!625303)))

(declare-fun d!2156891 () Bool)

(declare-fun res!2800830 () Bool)

(assert (=> d!2156891 (=> res!2800830 e!4138906)))

(assert (=> d!2156891 (= res!2800830 (is-ElementMatch!16694 (ite c!1277707 (regOne!33901 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))) (regOne!33900 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))))))))

(assert (=> d!2156891 (= (validRegex!8430 (ite c!1277707 (regOne!33901 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))) (regOne!33900 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))))) e!4138906)))

(declare-fun bm!625300 () Bool)

(assert (=> bm!625300 (= call!625304 (validRegex!8430 (ite c!1277892 (regOne!33901 (ite c!1277707 (regOne!33901 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))) (regOne!33900 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))))) (regOne!33900 (ite c!1277707 (regOne!33901 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))) (regOne!33900 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))))))))))

(declare-fun b!6865606 () Bool)

(assert (=> b!6865606 (= e!4138904 call!625303)))

(assert (= (and d!2156891 (not res!2800830)) b!6865605))

(assert (= (and b!6865605 c!1277891) b!6865604))

(assert (= (and b!6865605 (not c!1277891)) b!6865603))

(assert (= (and b!6865604 res!2800831) b!6865602))

(assert (= (and b!6865603 c!1277892) b!6865601))

(assert (= (and b!6865603 (not c!1277892)) b!6865598))

(assert (= (and b!6865601 res!2800833) b!6865599))

(assert (= (and b!6865598 (not res!2800832)) b!6865600))

(assert (= (and b!6865600 res!2800834) b!6865606))

(assert (= (or b!6865599 b!6865606) bm!625298))

(assert (= (or b!6865601 b!6865600) bm!625300))

(assert (= (or b!6865602 bm!625298) bm!625299))

(declare-fun m!7598262 () Bool)

(assert (=> bm!625299 m!7598262))

(declare-fun m!7598264 () Bool)

(assert (=> b!6865604 m!7598264))

(declare-fun m!7598266 () Bool)

(assert (=> bm!625300 m!7598266))

(assert (=> bm!625198 d!2156891))

(declare-fun d!2156893 () Bool)

(declare-fun res!2800835 () Bool)

(declare-fun e!4138909 () Bool)

(assert (=> d!2156893 (=> res!2800835 e!4138909)))

(assert (=> d!2156893 (= res!2800835 (is-Nil!66257 lt!2457732))))

(assert (=> d!2156893 (= (forall!15885 lt!2457732 lambda!388427) e!4138909)))

(declare-fun b!6865607 () Bool)

(declare-fun e!4138910 () Bool)

(assert (=> b!6865607 (= e!4138909 e!4138910)))

(declare-fun res!2800836 () Bool)

(assert (=> b!6865607 (=> (not res!2800836) (not e!4138910))))

(assert (=> b!6865607 (= res!2800836 (dynLambda!26518 lambda!388427 (h!72705 lt!2457732)))))

(declare-fun b!6865608 () Bool)

(assert (=> b!6865608 (= e!4138910 (forall!15885 (t!380124 lt!2457732) lambda!388427))))

(assert (= (and d!2156893 (not res!2800835)) b!6865607))

(assert (= (and b!6865607 res!2800836) b!6865608))

(declare-fun b_lambda!259601 () Bool)

(assert (=> (not b_lambda!259601) (not b!6865607)))

(declare-fun m!7598268 () Bool)

(assert (=> b!6865607 m!7598268))

(declare-fun m!7598270 () Bool)

(assert (=> b!6865608 m!7598270))

(assert (=> d!2156493 d!2156893))

(declare-fun d!2156895 () Bool)

(assert (=> d!2156895 (= (isConcat!1537 lt!2457870) (is-Concat!25539 lt!2457870))))

(assert (=> b!6864771 d!2156895))

(declare-fun d!2156897 () Bool)

(declare-fun res!2800837 () Bool)

(declare-fun e!4138911 () Bool)

(assert (=> d!2156897 (=> res!2800837 e!4138911)))

(assert (=> d!2156897 (= res!2800837 (is-Nil!66258 res!2800644))))

(assert (=> d!2156897 (= (noDuplicate!2458 res!2800644) e!4138911)))

(declare-fun b!6865609 () Bool)

(declare-fun e!4138912 () Bool)

(assert (=> b!6865609 (= e!4138911 e!4138912)))

(declare-fun res!2800838 () Bool)

(assert (=> b!6865609 (=> (not res!2800838) (not e!4138912))))

(assert (=> b!6865609 (= res!2800838 (not (contains!20352 (t!380125 res!2800644) (h!72706 res!2800644))))))

(declare-fun b!6865610 () Bool)

(assert (=> b!6865610 (= e!4138912 (noDuplicate!2458 (t!380125 res!2800644)))))

(assert (= (and d!2156897 (not res!2800837)) b!6865609))

(assert (= (and b!6865609 res!2800838) b!6865610))

(declare-fun m!7598272 () Bool)

(assert (=> b!6865609 m!7598272))

(declare-fun m!7598274 () Bool)

(assert (=> b!6865610 m!7598274))

(assert (=> d!2156609 d!2156897))

(declare-fun d!2156899 () Bool)

(assert (=> d!2156899 (= (isEmptyExpr!2014 lt!2457883) (is-EmptyExpr!16694 lt!2457883))))

(assert (=> b!6864902 d!2156899))

(declare-fun d!2156901 () Bool)

(declare-fun c!1277893 () Bool)

(assert (=> d!2156901 (= c!1277893 (is-Nil!66258 (t!380125 lt!2457775)))))

(declare-fun e!4138913 () (Set Context!12156))

(assert (=> d!2156901 (= (content!13007 (t!380125 lt!2457775)) e!4138913)))

(declare-fun b!6865611 () Bool)

(assert (=> b!6865611 (= e!4138913 (as set.empty (Set Context!12156)))))

(declare-fun b!6865612 () Bool)

(assert (=> b!6865612 (= e!4138913 (set.union (set.insert (h!72706 (t!380125 lt!2457775)) (as set.empty (Set Context!12156))) (content!13007 (t!380125 (t!380125 lt!2457775)))))))

(assert (= (and d!2156901 c!1277893) b!6865611))

(assert (= (and d!2156901 (not c!1277893)) b!6865612))

(declare-fun m!7598276 () Bool)

(assert (=> b!6865612 m!7598276))

(declare-fun m!7598278 () Bool)

(assert (=> b!6865612 m!7598278))

(assert (=> b!6864663 d!2156901))

(declare-fun d!2156903 () Bool)

(declare-fun lt!2457915 () Bool)

(assert (=> d!2156903 (= lt!2457915 (set.member (h!72706 lt!2457775) (content!13007 (t!380125 lt!2457775))))))

(declare-fun e!4138914 () Bool)

(assert (=> d!2156903 (= lt!2457915 e!4138914)))

(declare-fun res!2800839 () Bool)

(assert (=> d!2156903 (=> (not res!2800839) (not e!4138914))))

(assert (=> d!2156903 (= res!2800839 (is-Cons!66258 (t!380125 lt!2457775)))))

(assert (=> d!2156903 (= (contains!20352 (t!380125 lt!2457775) (h!72706 lt!2457775)) lt!2457915)))

(declare-fun b!6865613 () Bool)

(declare-fun e!4138915 () Bool)

(assert (=> b!6865613 (= e!4138914 e!4138915)))

(declare-fun res!2800840 () Bool)

(assert (=> b!6865613 (=> res!2800840 e!4138915)))

(assert (=> b!6865613 (= res!2800840 (= (h!72706 (t!380125 lt!2457775)) (h!72706 lt!2457775)))))

(declare-fun b!6865614 () Bool)

(assert (=> b!6865614 (= e!4138915 (contains!20352 (t!380125 (t!380125 lt!2457775)) (h!72706 lt!2457775)))))

(assert (= (and d!2156903 res!2800839) b!6865613))

(assert (= (and b!6865613 (not res!2800840)) b!6865614))

(assert (=> d!2156903 m!7597464))

(declare-fun m!7598280 () Bool)

(assert (=> d!2156903 m!7598280))

(declare-fun m!7598282 () Bool)

(assert (=> b!6865614 m!7598282))

(assert (=> b!6864636 d!2156903))

(declare-fun b!6865615 () Bool)

(declare-fun res!2800843 () Bool)

(declare-fun e!4138916 () Bool)

(assert (=> b!6865615 (=> res!2800843 e!4138916)))

(assert (=> b!6865615 (= res!2800843 (not (is-Concat!25539 (ite c!1277732 (regOne!33901 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))) (regOne!33900 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292)))))))))

(declare-fun e!4138917 () Bool)

(assert (=> b!6865615 (= e!4138917 e!4138916)))

(declare-fun b!6865617 () Bool)

(declare-fun e!4138918 () Bool)

(assert (=> b!6865617 (= e!4138916 e!4138918)))

(declare-fun res!2800845 () Bool)

(assert (=> b!6865617 (=> (not res!2800845) (not e!4138918))))

(declare-fun call!625307 () Bool)

(assert (=> b!6865617 (= res!2800845 call!625307)))

(declare-fun b!6865618 () Bool)

(declare-fun res!2800844 () Bool)

(declare-fun e!4138922 () Bool)

(assert (=> b!6865618 (=> (not res!2800844) (not e!4138922))))

(assert (=> b!6865618 (= res!2800844 call!625307)))

(assert (=> b!6865618 (= e!4138917 e!4138922)))

(declare-fun b!6865619 () Bool)

(declare-fun e!4138919 () Bool)

(declare-fun call!625308 () Bool)

(assert (=> b!6865619 (= e!4138919 call!625308)))

(declare-fun b!6865620 () Bool)

(declare-fun e!4138921 () Bool)

(assert (=> b!6865620 (= e!4138921 e!4138917)))

(declare-fun c!1277895 () Bool)

(assert (=> b!6865620 (= c!1277895 (is-Union!16694 (ite c!1277732 (regOne!33901 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))) (regOne!33900 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))))))))

(declare-fun bm!625301 () Bool)

(declare-fun call!625306 () Bool)

(assert (=> bm!625301 (= call!625306 call!625308)))

(declare-fun c!1277894 () Bool)

(declare-fun bm!625302 () Bool)

(assert (=> bm!625302 (= call!625308 (validRegex!8430 (ite c!1277894 (reg!17023 (ite c!1277732 (regOne!33901 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))) (regOne!33900 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))))) (ite c!1277895 (regTwo!33901 (ite c!1277732 (regOne!33901 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))) (regOne!33900 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))))) (regTwo!33900 (ite c!1277732 (regOne!33901 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))) (regOne!33900 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292)))))))))))

(declare-fun b!6865621 () Bool)

(assert (=> b!6865621 (= e!4138921 e!4138919)))

(declare-fun res!2800842 () Bool)

(assert (=> b!6865621 (= res!2800842 (not (nullable!6655 (reg!17023 (ite c!1277732 (regOne!33901 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))) (regOne!33900 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))))))))))

(assert (=> b!6865621 (=> (not res!2800842) (not e!4138919))))

(declare-fun b!6865622 () Bool)

(declare-fun e!4138920 () Bool)

(assert (=> b!6865622 (= e!4138920 e!4138921)))

(assert (=> b!6865622 (= c!1277894 (is-Star!16694 (ite c!1277732 (regOne!33901 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))) (regOne!33900 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))))))))

(declare-fun b!6865616 () Bool)

(assert (=> b!6865616 (= e!4138922 call!625306)))

(declare-fun d!2156905 () Bool)

(declare-fun res!2800841 () Bool)

(assert (=> d!2156905 (=> res!2800841 e!4138920)))

(assert (=> d!2156905 (= res!2800841 (is-ElementMatch!16694 (ite c!1277732 (regOne!33901 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))) (regOne!33900 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))))))))

(assert (=> d!2156905 (= (validRegex!8430 (ite c!1277732 (regOne!33901 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))) (regOne!33900 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))))) e!4138920)))

(declare-fun bm!625303 () Bool)

(assert (=> bm!625303 (= call!625307 (validRegex!8430 (ite c!1277895 (regOne!33901 (ite c!1277732 (regOne!33901 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))) (regOne!33900 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))))) (regOne!33900 (ite c!1277732 (regOne!33901 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))) (regOne!33900 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292))))))))))

(declare-fun b!6865623 () Bool)

(assert (=> b!6865623 (= e!4138918 call!625306)))

(assert (= (and d!2156905 (not res!2800841)) b!6865622))

(assert (= (and b!6865622 c!1277894) b!6865621))

(assert (= (and b!6865622 (not c!1277894)) b!6865620))

(assert (= (and b!6865621 res!2800842) b!6865619))

(assert (= (and b!6865620 c!1277895) b!6865618))

(assert (= (and b!6865620 (not c!1277895)) b!6865615))

(assert (= (and b!6865618 res!2800844) b!6865616))

(assert (= (and b!6865615 (not res!2800843)) b!6865617))

(assert (= (and b!6865617 res!2800845) b!6865623))

(assert (= (or b!6865616 b!6865623) bm!625301))

(assert (= (or b!6865618 b!6865617) bm!625303))

(assert (= (or b!6865619 bm!625301) bm!625302))

(declare-fun m!7598284 () Bool)

(assert (=> bm!625302 m!7598284))

(declare-fun m!7598286 () Bool)

(assert (=> b!6865621 m!7598286))

(declare-fun m!7598288 () Bool)

(assert (=> bm!625303 m!7598288))

(assert (=> bm!625216 d!2156905))

(declare-fun b!6865624 () Bool)

(declare-fun res!2800848 () Bool)

(declare-fun e!4138923 () Bool)

(assert (=> b!6865624 (=> res!2800848 e!4138923)))

(assert (=> b!6865624 (= res!2800848 (not (is-Concat!25539 (ite c!1277686 (reg!17023 lt!2457832) (ite c!1277687 (regTwo!33901 lt!2457832) (regTwo!33900 lt!2457832))))))))

(declare-fun e!4138924 () Bool)

(assert (=> b!6865624 (= e!4138924 e!4138923)))

(declare-fun b!6865626 () Bool)

(declare-fun e!4138925 () Bool)

(assert (=> b!6865626 (= e!4138923 e!4138925)))

(declare-fun res!2800850 () Bool)

(assert (=> b!6865626 (=> (not res!2800850) (not e!4138925))))

(declare-fun call!625310 () Bool)

(assert (=> b!6865626 (= res!2800850 call!625310)))

(declare-fun b!6865627 () Bool)

(declare-fun res!2800849 () Bool)

(declare-fun e!4138929 () Bool)

(assert (=> b!6865627 (=> (not res!2800849) (not e!4138929))))

(assert (=> b!6865627 (= res!2800849 call!625310)))

(assert (=> b!6865627 (= e!4138924 e!4138929)))

(declare-fun b!6865628 () Bool)

(declare-fun e!4138926 () Bool)

(declare-fun call!625311 () Bool)

(assert (=> b!6865628 (= e!4138926 call!625311)))

(declare-fun b!6865629 () Bool)

(declare-fun e!4138928 () Bool)

(assert (=> b!6865629 (= e!4138928 e!4138924)))

(declare-fun c!1277897 () Bool)

(assert (=> b!6865629 (= c!1277897 (is-Union!16694 (ite c!1277686 (reg!17023 lt!2457832) (ite c!1277687 (regTwo!33901 lt!2457832) (regTwo!33900 lt!2457832)))))))

(declare-fun bm!625304 () Bool)

(declare-fun call!625309 () Bool)

(assert (=> bm!625304 (= call!625309 call!625311)))

(declare-fun bm!625305 () Bool)

(declare-fun c!1277896 () Bool)

(assert (=> bm!625305 (= call!625311 (validRegex!8430 (ite c!1277896 (reg!17023 (ite c!1277686 (reg!17023 lt!2457832) (ite c!1277687 (regTwo!33901 lt!2457832) (regTwo!33900 lt!2457832)))) (ite c!1277897 (regTwo!33901 (ite c!1277686 (reg!17023 lt!2457832) (ite c!1277687 (regTwo!33901 lt!2457832) (regTwo!33900 lt!2457832)))) (regTwo!33900 (ite c!1277686 (reg!17023 lt!2457832) (ite c!1277687 (regTwo!33901 lt!2457832) (regTwo!33900 lt!2457832))))))))))

(declare-fun b!6865630 () Bool)

(assert (=> b!6865630 (= e!4138928 e!4138926)))

(declare-fun res!2800847 () Bool)

(assert (=> b!6865630 (= res!2800847 (not (nullable!6655 (reg!17023 (ite c!1277686 (reg!17023 lt!2457832) (ite c!1277687 (regTwo!33901 lt!2457832) (regTwo!33900 lt!2457832)))))))))

(assert (=> b!6865630 (=> (not res!2800847) (not e!4138926))))

(declare-fun b!6865631 () Bool)

(declare-fun e!4138927 () Bool)

(assert (=> b!6865631 (= e!4138927 e!4138928)))

(assert (=> b!6865631 (= c!1277896 (is-Star!16694 (ite c!1277686 (reg!17023 lt!2457832) (ite c!1277687 (regTwo!33901 lt!2457832) (regTwo!33900 lt!2457832)))))))

(declare-fun b!6865625 () Bool)

(assert (=> b!6865625 (= e!4138929 call!625309)))

(declare-fun d!2156907 () Bool)

(declare-fun res!2800846 () Bool)

(assert (=> d!2156907 (=> res!2800846 e!4138927)))

(assert (=> d!2156907 (= res!2800846 (is-ElementMatch!16694 (ite c!1277686 (reg!17023 lt!2457832) (ite c!1277687 (regTwo!33901 lt!2457832) (regTwo!33900 lt!2457832)))))))

(assert (=> d!2156907 (= (validRegex!8430 (ite c!1277686 (reg!17023 lt!2457832) (ite c!1277687 (regTwo!33901 lt!2457832) (regTwo!33900 lt!2457832)))) e!4138927)))

(declare-fun bm!625306 () Bool)

(assert (=> bm!625306 (= call!625310 (validRegex!8430 (ite c!1277897 (regOne!33901 (ite c!1277686 (reg!17023 lt!2457832) (ite c!1277687 (regTwo!33901 lt!2457832) (regTwo!33900 lt!2457832)))) (regOne!33900 (ite c!1277686 (reg!17023 lt!2457832) (ite c!1277687 (regTwo!33901 lt!2457832) (regTwo!33900 lt!2457832)))))))))

(declare-fun b!6865632 () Bool)

(assert (=> b!6865632 (= e!4138925 call!625309)))

(assert (= (and d!2156907 (not res!2800846)) b!6865631))

(assert (= (and b!6865631 c!1277896) b!6865630))

(assert (= (and b!6865631 (not c!1277896)) b!6865629))

(assert (= (and b!6865630 res!2800847) b!6865628))

(assert (= (and b!6865629 c!1277897) b!6865627))

(assert (= (and b!6865629 (not c!1277897)) b!6865624))

(assert (= (and b!6865627 res!2800849) b!6865625))

(assert (= (and b!6865624 (not res!2800848)) b!6865626))

(assert (= (and b!6865626 res!2800850) b!6865632))

(assert (= (or b!6865625 b!6865632) bm!625304))

(assert (= (or b!6865627 b!6865626) bm!625306))

(assert (= (or b!6865628 bm!625304) bm!625305))

(declare-fun m!7598290 () Bool)

(assert (=> bm!625305 m!7598290))

(declare-fun m!7598292 () Bool)

(assert (=> b!6865630 m!7598292))

(declare-fun m!7598294 () Bool)

(assert (=> bm!625306 m!7598294))

(assert (=> bm!625194 d!2156907))

(declare-fun bs!1835112 () Bool)

(declare-fun d!2156909 () Bool)

(assert (= bs!1835112 (and d!2156909 d!2156621)))

(declare-fun lambda!388499 () Int)

(assert (=> bs!1835112 (= lambda!388499 lambda!388454)))

(declare-fun bs!1835113 () Bool)

(assert (= bs!1835113 (and d!2156909 d!2156377)))

(assert (=> bs!1835113 (not (= lambda!388499 lambda!388363))))

(declare-fun bs!1835114 () Bool)

(assert (= bs!1835114 (and d!2156909 d!2156379)))

(assert (=> bs!1835114 (not (= lambda!388499 lambda!388366))))

(declare-fun bs!1835115 () Bool)

(assert (= bs!1835115 (and d!2156909 b!6864011)))

(assert (=> bs!1835115 (not (= lambda!388499 lambda!388339))))

(declare-fun bs!1835116 () Bool)

(assert (= bs!1835116 (and d!2156909 d!2156595)))

(assert (=> bs!1835116 (not (= lambda!388499 lambda!388447))))

(declare-fun bs!1835117 () Bool)

(assert (= bs!1835117 (and d!2156909 d!2156861)))

(assert (=> bs!1835117 (not (= lambda!388499 lambda!388493))))

(declare-fun bs!1835118 () Bool)

(assert (= bs!1835118 (and d!2156909 d!2156593)))

(assert (=> bs!1835118 (not (= lambda!388499 lambda!388444))))

(assert (=> d!2156909 (= (nullableZipper!2367 (content!13007 zl!343)) (exists!2824 (content!13007 zl!343) lambda!388499))))

(declare-fun bs!1835119 () Bool)

(assert (= bs!1835119 d!2156909))

(assert (=> bs!1835119 m!7597180))

(declare-fun m!7598296 () Bool)

(assert (=> bs!1835119 m!7598296))

(assert (=> b!6864876 d!2156909))

(declare-fun d!2156911 () Bool)

(declare-fun lt!2457916 () Int)

(assert (=> d!2156911 (>= lt!2457916 0)))

(declare-fun e!4138930 () Int)

(assert (=> d!2156911 (= lt!2457916 e!4138930)))

(declare-fun c!1277898 () Bool)

(assert (=> d!2156911 (= c!1277898 (is-Cons!66257 (exprs!6578 (h!72706 (t!380125 zl!343)))))))

(assert (=> d!2156911 (= (contextDepthTotal!415 (h!72706 (t!380125 zl!343))) lt!2457916)))

(declare-fun b!6865633 () Bool)

(assert (=> b!6865633 (= e!4138930 (+ (regexDepthTotal!260 (h!72705 (exprs!6578 (h!72706 (t!380125 zl!343))))) (contextDepthTotal!415 (Context!12157 (t!380124 (exprs!6578 (h!72706 (t!380125 zl!343))))))))))

(declare-fun b!6865634 () Bool)

(assert (=> b!6865634 (= e!4138930 1)))

(assert (= (and d!2156911 c!1277898) b!6865633))

(assert (= (and d!2156911 (not c!1277898)) b!6865634))

(declare-fun m!7598298 () Bool)

(assert (=> b!6865633 m!7598298))

(declare-fun m!7598300 () Bool)

(assert (=> b!6865633 m!7598300))

(assert (=> b!6864727 d!2156911))

(declare-fun d!2156913 () Bool)

(declare-fun lt!2457917 () Int)

(assert (=> d!2156913 (>= lt!2457917 0)))

(declare-fun e!4138931 () Int)

(assert (=> d!2156913 (= lt!2457917 e!4138931)))

(declare-fun c!1277899 () Bool)

(assert (=> d!2156913 (= c!1277899 (is-Cons!66258 (t!380125 (t!380125 zl!343))))))

(assert (=> d!2156913 (= (zipperDepthTotal!443 (t!380125 (t!380125 zl!343))) lt!2457917)))

(declare-fun b!6865635 () Bool)

(assert (=> b!6865635 (= e!4138931 (+ (contextDepthTotal!415 (h!72706 (t!380125 (t!380125 zl!343)))) (zipperDepthTotal!443 (t!380125 (t!380125 (t!380125 zl!343))))))))

(declare-fun b!6865636 () Bool)

(assert (=> b!6865636 (= e!4138931 0)))

(assert (= (and d!2156913 c!1277899) b!6865635))

(assert (= (and d!2156913 (not c!1277899)) b!6865636))

(declare-fun m!7598302 () Bool)

(assert (=> b!6865635 m!7598302))

(declare-fun m!7598304 () Bool)

(assert (=> b!6865635 m!7598304))

(assert (=> b!6864727 d!2156913))

(declare-fun d!2156915 () Bool)

(declare-fun res!2800851 () Bool)

(declare-fun e!4138932 () Bool)

(assert (=> d!2156915 (=> res!2800851 e!4138932)))

(assert (=> d!2156915 (= res!2800851 (is-Nil!66258 (t!380125 lt!2457818)))))

(assert (=> d!2156915 (= (noDuplicate!2458 (t!380125 lt!2457818)) e!4138932)))

(declare-fun b!6865637 () Bool)

(declare-fun e!4138933 () Bool)

(assert (=> b!6865637 (= e!4138932 e!4138933)))

(declare-fun res!2800852 () Bool)

(assert (=> b!6865637 (=> (not res!2800852) (not e!4138933))))

(assert (=> b!6865637 (= res!2800852 (not (contains!20352 (t!380125 (t!380125 lt!2457818)) (h!72706 (t!380125 lt!2457818)))))))

(declare-fun b!6865638 () Bool)

(assert (=> b!6865638 (= e!4138933 (noDuplicate!2458 (t!380125 (t!380125 lt!2457818))))))

(assert (= (and d!2156915 (not res!2800851)) b!6865637))

(assert (= (and b!6865637 res!2800852) b!6865638))

(declare-fun m!7598306 () Bool)

(assert (=> b!6865637 m!7598306))

(declare-fun m!7598308 () Bool)

(assert (=> b!6865638 m!7598308))

(assert (=> b!6864894 d!2156915))

(declare-fun b!6865639 () Bool)

(declare-fun res!2800858 () Bool)

(declare-fun e!4138935 () Bool)

(assert (=> b!6865639 (=> (not res!2800858) (not e!4138935))))

(declare-fun call!625312 () Bool)

(assert (=> b!6865639 (= res!2800858 (not call!625312))))

(declare-fun b!6865640 () Bool)

(declare-fun res!2800853 () Bool)

(declare-fun e!4138934 () Bool)

(assert (=> b!6865640 (=> res!2800853 e!4138934)))

(assert (=> b!6865640 (= res!2800853 (not (isEmpty!38620 (tail!12830 (tail!12830 (tail!12830 s!2326))))))))

(declare-fun b!6865641 () Bool)

(declare-fun res!2800855 () Bool)

(declare-fun e!4138936 () Bool)

(assert (=> b!6865641 (=> res!2800855 e!4138936)))

(assert (=> b!6865641 (= res!2800855 (not (is-ElementMatch!16694 (derivativeStep!5337 (derivativeStep!5337 r!7292 (head!13772 s!2326)) (head!13772 (tail!12830 s!2326))))))))

(declare-fun e!4138937 () Bool)

(assert (=> b!6865641 (= e!4138937 e!4138936)))

(declare-fun b!6865642 () Bool)

(declare-fun e!4138940 () Bool)

(assert (=> b!6865642 (= e!4138936 e!4138940)))

(declare-fun res!2800857 () Bool)

(assert (=> b!6865642 (=> (not res!2800857) (not e!4138940))))

(declare-fun lt!2457918 () Bool)

(assert (=> b!6865642 (= res!2800857 (not lt!2457918))))

(declare-fun d!2156917 () Bool)

(declare-fun e!4138939 () Bool)

(assert (=> d!2156917 e!4138939))

(declare-fun c!1277902 () Bool)

(assert (=> d!2156917 (= c!1277902 (is-EmptyExpr!16694 (derivativeStep!5337 (derivativeStep!5337 r!7292 (head!13772 s!2326)) (head!13772 (tail!12830 s!2326)))))))

(declare-fun e!4138938 () Bool)

(assert (=> d!2156917 (= lt!2457918 e!4138938)))

(declare-fun c!1277900 () Bool)

(assert (=> d!2156917 (= c!1277900 (isEmpty!38620 (tail!12830 (tail!12830 s!2326))))))

(assert (=> d!2156917 (validRegex!8430 (derivativeStep!5337 (derivativeStep!5337 r!7292 (head!13772 s!2326)) (head!13772 (tail!12830 s!2326))))))

(assert (=> d!2156917 (= (matchR!8877 (derivativeStep!5337 (derivativeStep!5337 r!7292 (head!13772 s!2326)) (head!13772 (tail!12830 s!2326))) (tail!12830 (tail!12830 s!2326))) lt!2457918)))

(declare-fun b!6865643 () Bool)

(assert (=> b!6865643 (= e!4138939 (= lt!2457918 call!625312))))

(declare-fun b!6865644 () Bool)

(declare-fun res!2800854 () Bool)

(assert (=> b!6865644 (=> res!2800854 e!4138936)))

(assert (=> b!6865644 (= res!2800854 e!4138935)))

(declare-fun res!2800860 () Bool)

(assert (=> b!6865644 (=> (not res!2800860) (not e!4138935))))

(assert (=> b!6865644 (= res!2800860 lt!2457918)))

(declare-fun b!6865645 () Bool)

(assert (=> b!6865645 (= e!4138937 (not lt!2457918))))

(declare-fun bm!625307 () Bool)

(assert (=> bm!625307 (= call!625312 (isEmpty!38620 (tail!12830 (tail!12830 s!2326))))))

(declare-fun b!6865646 () Bool)

(assert (=> b!6865646 (= e!4138938 (nullable!6655 (derivativeStep!5337 (derivativeStep!5337 r!7292 (head!13772 s!2326)) (head!13772 (tail!12830 s!2326)))))))

(declare-fun b!6865647 () Bool)

(assert (=> b!6865647 (= e!4138939 e!4138937)))

(declare-fun c!1277901 () Bool)

(assert (=> b!6865647 (= c!1277901 (is-EmptyLang!16694 (derivativeStep!5337 (derivativeStep!5337 r!7292 (head!13772 s!2326)) (head!13772 (tail!12830 s!2326)))))))

(declare-fun b!6865648 () Bool)

(assert (=> b!6865648 (= e!4138940 e!4138934)))

(declare-fun res!2800856 () Bool)

(assert (=> b!6865648 (=> res!2800856 e!4138934)))

(assert (=> b!6865648 (= res!2800856 call!625312)))

(declare-fun b!6865649 () Bool)

(assert (=> b!6865649 (= e!4138934 (not (= (head!13772 (tail!12830 (tail!12830 s!2326))) (c!1277522 (derivativeStep!5337 (derivativeStep!5337 r!7292 (head!13772 s!2326)) (head!13772 (tail!12830 s!2326)))))))))

(declare-fun b!6865650 () Bool)

(assert (=> b!6865650 (= e!4138935 (= (head!13772 (tail!12830 (tail!12830 s!2326))) (c!1277522 (derivativeStep!5337 (derivativeStep!5337 r!7292 (head!13772 s!2326)) (head!13772 (tail!12830 s!2326))))))))

(declare-fun b!6865651 () Bool)

(assert (=> b!6865651 (= e!4138938 (matchR!8877 (derivativeStep!5337 (derivativeStep!5337 (derivativeStep!5337 r!7292 (head!13772 s!2326)) (head!13772 (tail!12830 s!2326))) (head!13772 (tail!12830 (tail!12830 s!2326)))) (tail!12830 (tail!12830 (tail!12830 s!2326)))))))

(declare-fun b!6865652 () Bool)

(declare-fun res!2800859 () Bool)

(assert (=> b!6865652 (=> (not res!2800859) (not e!4138935))))

(assert (=> b!6865652 (= res!2800859 (isEmpty!38620 (tail!12830 (tail!12830 (tail!12830 s!2326)))))))

(assert (= (and d!2156917 c!1277900) b!6865646))

(assert (= (and d!2156917 (not c!1277900)) b!6865651))

(assert (= (and d!2156917 c!1277902) b!6865643))

(assert (= (and d!2156917 (not c!1277902)) b!6865647))

(assert (= (and b!6865647 c!1277901) b!6865645))

(assert (= (and b!6865647 (not c!1277901)) b!6865641))

(assert (= (and b!6865641 (not res!2800855)) b!6865644))

(assert (= (and b!6865644 res!2800860) b!6865639))

(assert (= (and b!6865639 res!2800858) b!6865652))

(assert (= (and b!6865652 res!2800859) b!6865650))

(assert (= (and b!6865644 (not res!2800854)) b!6865642))

(assert (= (and b!6865642 res!2800857) b!6865648))

(assert (= (and b!6865648 (not res!2800856)) b!6865640))

(assert (= (and b!6865640 (not res!2800853)) b!6865649))

(assert (= (or b!6865643 b!6865639 b!6865648) bm!625307))

(assert (=> b!6865650 m!7597484))

(assert (=> b!6865650 m!7598144))

(assert (=> bm!625307 m!7597484))

(assert (=> bm!625307 m!7597490))

(assert (=> b!6865649 m!7597484))

(assert (=> b!6865649 m!7598144))

(assert (=> b!6865651 m!7597484))

(assert (=> b!6865651 m!7598144))

(assert (=> b!6865651 m!7597482))

(assert (=> b!6865651 m!7598144))

(declare-fun m!7598310 () Bool)

(assert (=> b!6865651 m!7598310))

(assert (=> b!6865651 m!7597484))

(assert (=> b!6865651 m!7598148))

(assert (=> b!6865651 m!7598310))

(assert (=> b!6865651 m!7598148))

(declare-fun m!7598312 () Bool)

(assert (=> b!6865651 m!7598312))

(assert (=> d!2156917 m!7597484))

(assert (=> d!2156917 m!7597490))

(assert (=> d!2156917 m!7597482))

(declare-fun m!7598314 () Bool)

(assert (=> d!2156917 m!7598314))

(assert (=> b!6865652 m!7597484))

(assert (=> b!6865652 m!7598148))

(assert (=> b!6865652 m!7598148))

(declare-fun m!7598316 () Bool)

(assert (=> b!6865652 m!7598316))

(assert (=> b!6865646 m!7597482))

(declare-fun m!7598318 () Bool)

(assert (=> b!6865646 m!7598318))

(assert (=> b!6865640 m!7597484))

(assert (=> b!6865640 m!7598148))

(assert (=> b!6865640 m!7598148))

(assert (=> b!6865640 m!7598316))

(assert (=> b!6864691 d!2156917))

(declare-fun b!6865653 () Bool)

(declare-fun c!1277904 () Bool)

(assert (=> b!6865653 (= c!1277904 (is-Union!16694 (derivativeStep!5337 r!7292 (head!13772 s!2326))))))

(declare-fun e!4138945 () Regex!16694)

(declare-fun e!4138944 () Regex!16694)

(assert (=> b!6865653 (= e!4138945 e!4138944)))

(declare-fun b!6865654 () Bool)

(declare-fun e!4138943 () Regex!16694)

(assert (=> b!6865654 (= e!4138943 EmptyLang!16694)))

(declare-fun call!625316 () Regex!16694)

(declare-fun c!1277905 () Bool)

(declare-fun bm!625308 () Bool)

(assert (=> bm!625308 (= call!625316 (derivativeStep!5337 (ite c!1277904 (regTwo!33901 (derivativeStep!5337 r!7292 (head!13772 s!2326))) (ite c!1277905 (reg!17023 (derivativeStep!5337 r!7292 (head!13772 s!2326))) (regOne!33900 (derivativeStep!5337 r!7292 (head!13772 s!2326))))) (head!13772 (tail!12830 s!2326))))))

(declare-fun b!6865655 () Bool)

(declare-fun call!625313 () Regex!16694)

(assert (=> b!6865655 (= e!4138944 (Union!16694 call!625313 call!625316))))

(declare-fun b!6865656 () Bool)

(declare-fun e!4138941 () Regex!16694)

(assert (=> b!6865656 (= e!4138944 e!4138941)))

(assert (=> b!6865656 (= c!1277905 (is-Star!16694 (derivativeStep!5337 r!7292 (head!13772 s!2326))))))

(declare-fun call!625314 () Regex!16694)

(declare-fun call!625315 () Regex!16694)

(declare-fun e!4138942 () Regex!16694)

(declare-fun b!6865657 () Bool)

(assert (=> b!6865657 (= e!4138942 (Union!16694 (Concat!25539 call!625314 (regTwo!33900 (derivativeStep!5337 r!7292 (head!13772 s!2326)))) call!625315))))

(declare-fun b!6865658 () Bool)

(assert (=> b!6865658 (= e!4138942 (Union!16694 (Concat!25539 call!625315 (regTwo!33900 (derivativeStep!5337 r!7292 (head!13772 s!2326)))) EmptyLang!16694))))

(declare-fun bm!625309 () Bool)

(assert (=> bm!625309 (= call!625315 call!625313)))

(declare-fun b!6865659 () Bool)

(assert (=> b!6865659 (= e!4138945 (ite (= (head!13772 (tail!12830 s!2326)) (c!1277522 (derivativeStep!5337 r!7292 (head!13772 s!2326)))) EmptyExpr!16694 EmptyLang!16694))))

(declare-fun bm!625310 () Bool)

(assert (=> bm!625310 (= call!625314 call!625316)))

(declare-fun bm!625311 () Bool)

(declare-fun c!1277907 () Bool)

(assert (=> bm!625311 (= call!625313 (derivativeStep!5337 (ite c!1277904 (regOne!33901 (derivativeStep!5337 r!7292 (head!13772 s!2326))) (ite c!1277907 (regTwo!33900 (derivativeStep!5337 r!7292 (head!13772 s!2326))) (regOne!33900 (derivativeStep!5337 r!7292 (head!13772 s!2326))))) (head!13772 (tail!12830 s!2326))))))

(declare-fun b!6865661 () Bool)

(assert (=> b!6865661 (= c!1277907 (nullable!6655 (regOne!33900 (derivativeStep!5337 r!7292 (head!13772 s!2326)))))))

(assert (=> b!6865661 (= e!4138941 e!4138942)))

(declare-fun b!6865662 () Bool)

(assert (=> b!6865662 (= e!4138941 (Concat!25539 call!625314 (derivativeStep!5337 r!7292 (head!13772 s!2326))))))

(declare-fun d!2156919 () Bool)

(declare-fun lt!2457919 () Regex!16694)

(assert (=> d!2156919 (validRegex!8430 lt!2457919)))

(assert (=> d!2156919 (= lt!2457919 e!4138943)))

(declare-fun c!1277906 () Bool)

(assert (=> d!2156919 (= c!1277906 (or (is-EmptyExpr!16694 (derivativeStep!5337 r!7292 (head!13772 s!2326))) (is-EmptyLang!16694 (derivativeStep!5337 r!7292 (head!13772 s!2326)))))))

(assert (=> d!2156919 (validRegex!8430 (derivativeStep!5337 r!7292 (head!13772 s!2326)))))

(assert (=> d!2156919 (= (derivativeStep!5337 (derivativeStep!5337 r!7292 (head!13772 s!2326)) (head!13772 (tail!12830 s!2326))) lt!2457919)))

(declare-fun b!6865660 () Bool)

(assert (=> b!6865660 (= e!4138943 e!4138945)))

(declare-fun c!1277903 () Bool)

(assert (=> b!6865660 (= c!1277903 (is-ElementMatch!16694 (derivativeStep!5337 r!7292 (head!13772 s!2326))))))

(assert (= (and d!2156919 c!1277906) b!6865654))

(assert (= (and d!2156919 (not c!1277906)) b!6865660))

(assert (= (and b!6865660 c!1277903) b!6865659))

(assert (= (and b!6865660 (not c!1277903)) b!6865653))

(assert (= (and b!6865653 c!1277904) b!6865655))

(assert (= (and b!6865653 (not c!1277904)) b!6865656))

(assert (= (and b!6865656 c!1277905) b!6865662))

(assert (= (and b!6865656 (not c!1277905)) b!6865661))

(assert (= (and b!6865661 c!1277907) b!6865657))

(assert (= (and b!6865661 (not c!1277907)) b!6865658))

(assert (= (or b!6865657 b!6865658) bm!625309))

(assert (= (or b!6865662 b!6865657) bm!625310))

(assert (= (or b!6865655 bm!625310) bm!625308))

(assert (= (or b!6865655 bm!625309) bm!625311))

(assert (=> bm!625308 m!7597480))

(declare-fun m!7598320 () Bool)

(assert (=> bm!625308 m!7598320))

(assert (=> bm!625311 m!7597480))

(declare-fun m!7598322 () Bool)

(assert (=> bm!625311 m!7598322))

(declare-fun m!7598324 () Bool)

(assert (=> b!6865661 m!7598324))

(declare-fun m!7598326 () Bool)

(assert (=> d!2156919 m!7598326))

(assert (=> d!2156919 m!7597268))

(assert (=> d!2156919 m!7597488))

(assert (=> b!6864691 d!2156919))

(assert (=> b!6864691 d!2156843))

(assert (=> b!6864691 d!2156827))

(declare-fun d!2156921 () Bool)

(declare-fun c!1277908 () Bool)

(assert (=> d!2156921 (= c!1277908 (is-Nil!66258 (t!380125 lt!2457818)))))

(declare-fun e!4138946 () (Set Context!12156))

(assert (=> d!2156921 (= (content!13007 (t!380125 lt!2457818)) e!4138946)))

(declare-fun b!6865663 () Bool)

(assert (=> b!6865663 (= e!4138946 (as set.empty (Set Context!12156)))))

(declare-fun b!6865664 () Bool)

(assert (=> b!6865664 (= e!4138946 (set.union (set.insert (h!72706 (t!380125 lt!2457818)) (as set.empty (Set Context!12156))) (content!13007 (t!380125 (t!380125 lt!2457818)))))))

(assert (= (and d!2156921 c!1277908) b!6865663))

(assert (= (and d!2156921 (not c!1277908)) b!6865664))

(declare-fun m!7598328 () Bool)

(assert (=> b!6865664 m!7598328))

(declare-fun m!7598330 () Bool)

(assert (=> b!6865664 m!7598330))

(assert (=> b!6864881 d!2156921))

(declare-fun bs!1835120 () Bool)

(declare-fun d!2156923 () Bool)

(assert (= bs!1835120 (and d!2156923 d!2156621)))

(declare-fun lambda!388500 () Int)

(assert (=> bs!1835120 (= lambda!388500 lambda!388454)))

(declare-fun bs!1835121 () Bool)

(assert (= bs!1835121 (and d!2156923 d!2156909)))

(assert (=> bs!1835121 (= lambda!388500 lambda!388499)))

(declare-fun bs!1835122 () Bool)

(assert (= bs!1835122 (and d!2156923 d!2156377)))

(assert (=> bs!1835122 (not (= lambda!388500 lambda!388363))))

(declare-fun bs!1835123 () Bool)

(assert (= bs!1835123 (and d!2156923 d!2156379)))

(assert (=> bs!1835123 (not (= lambda!388500 lambda!388366))))

(declare-fun bs!1835124 () Bool)

(assert (= bs!1835124 (and d!2156923 b!6864011)))

(assert (=> bs!1835124 (not (= lambda!388500 lambda!388339))))

(declare-fun bs!1835125 () Bool)

(assert (= bs!1835125 (and d!2156923 d!2156595)))

(assert (=> bs!1835125 (not (= lambda!388500 lambda!388447))))

(declare-fun bs!1835126 () Bool)

(assert (= bs!1835126 (and d!2156923 d!2156861)))

(assert (=> bs!1835126 (not (= lambda!388500 lambda!388493))))

(declare-fun bs!1835127 () Bool)

(assert (= bs!1835127 (and d!2156923 d!2156593)))

(assert (=> bs!1835127 (not (= lambda!388500 lambda!388444))))

(assert (=> d!2156923 (= (nullableZipper!2367 (derivationStepZipper!2614 z!1189 (head!13772 s!2326))) (exists!2824 (derivationStepZipper!2614 z!1189 (head!13772 s!2326)) lambda!388500))))

(declare-fun bs!1835128 () Bool)

(assert (= bs!1835128 d!2156923))

(assert (=> bs!1835128 m!7597212))

(declare-fun m!7598332 () Bool)

(assert (=> bs!1835128 m!7598332))

(assert (=> b!6864806 d!2156923))

(declare-fun b!6865665 () Bool)

(declare-fun res!2800863 () Bool)

(declare-fun e!4138947 () Bool)

(assert (=> b!6865665 (=> res!2800863 e!4138947)))

(assert (=> b!6865665 (= res!2800863 (not (is-Concat!25539 (ite c!1277740 (regOne!33901 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))) (regOne!33900 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))))))))))

(declare-fun e!4138948 () Bool)

(assert (=> b!6865665 (= e!4138948 e!4138947)))

(declare-fun b!6865667 () Bool)

(declare-fun e!4138949 () Bool)

(assert (=> b!6865667 (= e!4138947 e!4138949)))

(declare-fun res!2800865 () Bool)

(assert (=> b!6865667 (=> (not res!2800865) (not e!4138949))))

(declare-fun call!625318 () Bool)

(assert (=> b!6865667 (= res!2800865 call!625318)))

(declare-fun b!6865668 () Bool)

(declare-fun res!2800864 () Bool)

(declare-fun e!4138953 () Bool)

(assert (=> b!6865668 (=> (not res!2800864) (not e!4138953))))

(assert (=> b!6865668 (= res!2800864 call!625318)))

(assert (=> b!6865668 (= e!4138948 e!4138953)))

(declare-fun b!6865669 () Bool)

(declare-fun e!4138950 () Bool)

(declare-fun call!625319 () Bool)

(assert (=> b!6865669 (= e!4138950 call!625319)))

(declare-fun b!6865670 () Bool)

(declare-fun e!4138952 () Bool)

(assert (=> b!6865670 (= e!4138952 e!4138948)))

(declare-fun c!1277910 () Bool)

(assert (=> b!6865670 (= c!1277910 (is-Union!16694 (ite c!1277740 (regOne!33901 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))) (regOne!33900 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))))))))

(declare-fun bm!625312 () Bool)

(declare-fun call!625317 () Bool)

(assert (=> bm!625312 (= call!625317 call!625319)))

(declare-fun c!1277909 () Bool)

(declare-fun bm!625313 () Bool)

(assert (=> bm!625313 (= call!625319 (validRegex!8430 (ite c!1277909 (reg!17023 (ite c!1277740 (regOne!33901 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))) (regOne!33900 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))))) (ite c!1277910 (regTwo!33901 (ite c!1277740 (regOne!33901 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))) (regOne!33900 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))))) (regTwo!33900 (ite c!1277740 (regOne!33901 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))) (regOne!33900 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))))))))))))

(declare-fun b!6865671 () Bool)

(assert (=> b!6865671 (= e!4138952 e!4138950)))

(declare-fun res!2800862 () Bool)

(assert (=> b!6865671 (= res!2800862 (not (nullable!6655 (reg!17023 (ite c!1277740 (regOne!33901 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))) (regOne!33900 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))))))))))

(assert (=> b!6865671 (=> (not res!2800862) (not e!4138950))))

(declare-fun b!6865672 () Bool)

(declare-fun e!4138951 () Bool)

(assert (=> b!6865672 (= e!4138951 e!4138952)))

(assert (=> b!6865672 (= c!1277909 (is-Star!16694 (ite c!1277740 (regOne!33901 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))) (regOne!33900 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))))))))

(declare-fun b!6865666 () Bool)

(assert (=> b!6865666 (= e!4138953 call!625317)))

(declare-fun d!2156925 () Bool)

(declare-fun res!2800861 () Bool)

(assert (=> d!2156925 (=> res!2800861 e!4138951)))

(assert (=> d!2156925 (= res!2800861 (is-ElementMatch!16694 (ite c!1277740 (regOne!33901 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))) (regOne!33900 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))))))))

(assert (=> d!2156925 (= (validRegex!8430 (ite c!1277740 (regOne!33901 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))) (regOne!33900 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))))) e!4138951)))

(declare-fun bm!625314 () Bool)

(assert (=> bm!625314 (= call!625318 (validRegex!8430 (ite c!1277910 (regOne!33901 (ite c!1277740 (regOne!33901 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))) (regOne!33900 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))))) (regOne!33900 (ite c!1277740 (regOne!33901 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))) (regOne!33900 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))))))))))

(declare-fun b!6865673 () Bool)

(assert (=> b!6865673 (= e!4138949 call!625317)))

(assert (= (and d!2156925 (not res!2800861)) b!6865672))

(assert (= (and b!6865672 c!1277909) b!6865671))

(assert (= (and b!6865672 (not c!1277909)) b!6865670))

(assert (= (and b!6865671 res!2800862) b!6865669))

(assert (= (and b!6865670 c!1277910) b!6865668))

(assert (= (and b!6865670 (not c!1277910)) b!6865665))

(assert (= (and b!6865668 res!2800864) b!6865666))

(assert (= (and b!6865665 (not res!2800863)) b!6865667))

(assert (= (and b!6865667 res!2800865) b!6865673))

(assert (= (or b!6865666 b!6865673) bm!625312))

(assert (= (or b!6865668 b!6865667) bm!625314))

(assert (= (or b!6865669 bm!625312) bm!625313))

(declare-fun m!7598334 () Bool)

(assert (=> bm!625313 m!7598334))

(declare-fun m!7598336 () Bool)

(assert (=> b!6865671 m!7598336))

(declare-fun m!7598338 () Bool)

(assert (=> bm!625314 m!7598338))

(assert (=> bm!625219 d!2156925))

(declare-fun d!2156927 () Bool)

(declare-fun c!1277911 () Bool)

(assert (=> d!2156927 (= c!1277911 (is-Nil!66258 (t!380125 zl!343)))))

(declare-fun e!4138954 () (Set Context!12156))

(assert (=> d!2156927 (= (content!13007 (t!380125 zl!343)) e!4138954)))

(declare-fun b!6865674 () Bool)

(assert (=> b!6865674 (= e!4138954 (as set.empty (Set Context!12156)))))

(declare-fun b!6865675 () Bool)

(assert (=> b!6865675 (= e!4138954 (set.union (set.insert (h!72706 (t!380125 zl!343)) (as set.empty (Set Context!12156))) (content!13007 (t!380125 (t!380125 zl!343)))))))

(assert (= (and d!2156927 c!1277911) b!6865674))

(assert (= (and d!2156927 (not c!1277911)) b!6865675))

(assert (=> b!6865675 m!7597744))

(declare-fun m!7598340 () Bool)

(assert (=> b!6865675 m!7598340))

(assert (=> b!6864879 d!2156927))

(declare-fun d!2156929 () Bool)

(assert (=> d!2156929 (= (isEmpty!38619 (tail!12829 (unfocusZipperList!2111 zl!343))) (is-Nil!66257 (tail!12829 (unfocusZipperList!2111 zl!343))))))

(assert (=> b!6864759 d!2156929))

(declare-fun d!2156931 () Bool)

(assert (=> d!2156931 (= (tail!12829 (unfocusZipperList!2111 zl!343)) (t!380124 (unfocusZipperList!2111 zl!343)))))

(assert (=> b!6864759 d!2156931))

(declare-fun b!6865676 () Bool)

(declare-fun res!2800868 () Bool)

(declare-fun e!4138955 () Bool)

(assert (=> b!6865676 (=> res!2800868 e!4138955)))

(assert (=> b!6865676 (= res!2800868 (not (is-Concat!25539 lt!2457864)))))

(declare-fun e!4138956 () Bool)

(assert (=> b!6865676 (= e!4138956 e!4138955)))

(declare-fun b!6865678 () Bool)

(declare-fun e!4138957 () Bool)

(assert (=> b!6865678 (= e!4138955 e!4138957)))

(declare-fun res!2800870 () Bool)

(assert (=> b!6865678 (=> (not res!2800870) (not e!4138957))))

(declare-fun call!625321 () Bool)

(assert (=> b!6865678 (= res!2800870 call!625321)))

(declare-fun b!6865679 () Bool)

(declare-fun res!2800869 () Bool)

(declare-fun e!4138961 () Bool)

(assert (=> b!6865679 (=> (not res!2800869) (not e!4138961))))

(assert (=> b!6865679 (= res!2800869 call!625321)))

(assert (=> b!6865679 (= e!4138956 e!4138961)))

(declare-fun b!6865680 () Bool)

(declare-fun e!4138958 () Bool)

(declare-fun call!625322 () Bool)

(assert (=> b!6865680 (= e!4138958 call!625322)))

(declare-fun b!6865681 () Bool)

(declare-fun e!4138960 () Bool)

(assert (=> b!6865681 (= e!4138960 e!4138956)))

(declare-fun c!1277913 () Bool)

(assert (=> b!6865681 (= c!1277913 (is-Union!16694 lt!2457864))))

(declare-fun bm!625315 () Bool)

(declare-fun call!625320 () Bool)

(assert (=> bm!625315 (= call!625320 call!625322)))

(declare-fun bm!625316 () Bool)

(declare-fun c!1277912 () Bool)

(assert (=> bm!625316 (= call!625322 (validRegex!8430 (ite c!1277912 (reg!17023 lt!2457864) (ite c!1277913 (regTwo!33901 lt!2457864) (regTwo!33900 lt!2457864)))))))

(declare-fun b!6865682 () Bool)

(assert (=> b!6865682 (= e!4138960 e!4138958)))

(declare-fun res!2800867 () Bool)

(assert (=> b!6865682 (= res!2800867 (not (nullable!6655 (reg!17023 lt!2457864))))))

(assert (=> b!6865682 (=> (not res!2800867) (not e!4138958))))

(declare-fun b!6865683 () Bool)

(declare-fun e!4138959 () Bool)

(assert (=> b!6865683 (= e!4138959 e!4138960)))

(assert (=> b!6865683 (= c!1277912 (is-Star!16694 lt!2457864))))

(declare-fun b!6865677 () Bool)

(assert (=> b!6865677 (= e!4138961 call!625320)))

(declare-fun d!2156933 () Bool)

(declare-fun res!2800866 () Bool)

(assert (=> d!2156933 (=> res!2800866 e!4138959)))

(assert (=> d!2156933 (= res!2800866 (is-ElementMatch!16694 lt!2457864))))

(assert (=> d!2156933 (= (validRegex!8430 lt!2457864) e!4138959)))

(declare-fun bm!625317 () Bool)

(assert (=> bm!625317 (= call!625321 (validRegex!8430 (ite c!1277913 (regOne!33901 lt!2457864) (regOne!33900 lt!2457864))))))

(declare-fun b!6865684 () Bool)

(assert (=> b!6865684 (= e!4138957 call!625320)))

(assert (= (and d!2156933 (not res!2800866)) b!6865683))

(assert (= (and b!6865683 c!1277912) b!6865682))

(assert (= (and b!6865683 (not c!1277912)) b!6865681))

(assert (= (and b!6865682 res!2800867) b!6865680))

(assert (= (and b!6865681 c!1277913) b!6865679))

(assert (= (and b!6865681 (not c!1277913)) b!6865676))

(assert (= (and b!6865679 res!2800869) b!6865677))

(assert (= (and b!6865676 (not res!2800868)) b!6865678))

(assert (= (and b!6865678 res!2800870) b!6865684))

(assert (= (or b!6865677 b!6865684) bm!625315))

(assert (= (or b!6865679 b!6865678) bm!625317))

(assert (= (or b!6865680 bm!625315) bm!625316))

(declare-fun m!7598342 () Bool)

(assert (=> bm!625316 m!7598342))

(declare-fun m!7598344 () Bool)

(assert (=> b!6865682 m!7598344))

(declare-fun m!7598346 () Bool)

(assert (=> bm!625317 m!7598346))

(assert (=> d!2156503 d!2156933))

(assert (=> d!2156503 d!2156369))

(declare-fun d!2156935 () Bool)

(declare-fun res!2800871 () Bool)

(declare-fun e!4138962 () Bool)

(assert (=> d!2156935 (=> res!2800871 e!4138962)))

(assert (=> d!2156935 (= res!2800871 (is-Nil!66258 (t!380125 zl!343)))))

(assert (=> d!2156935 (= (forall!15887 (t!380125 zl!343) lambda!388363) e!4138962)))

(declare-fun b!6865685 () Bool)

(declare-fun e!4138963 () Bool)

(assert (=> b!6865685 (= e!4138962 e!4138963)))

(declare-fun res!2800872 () Bool)

(assert (=> b!6865685 (=> (not res!2800872) (not e!4138963))))

(assert (=> b!6865685 (= res!2800872 (dynLambda!26519 lambda!388363 (h!72706 (t!380125 zl!343))))))

(declare-fun b!6865686 () Bool)

(assert (=> b!6865686 (= e!4138963 (forall!15887 (t!380125 (t!380125 zl!343)) lambda!388363))))

(assert (= (and d!2156935 (not res!2800871)) b!6865685))

(assert (= (and b!6865685 res!2800872) b!6865686))

(declare-fun b_lambda!259603 () Bool)

(assert (=> (not b_lambda!259603) (not b!6865685)))

(declare-fun m!7598348 () Bool)

(assert (=> b!6865685 m!7598348))

(declare-fun m!7598350 () Bool)

(assert (=> b!6865686 m!7598350))

(assert (=> b!6864815 d!2156935))

(declare-fun d!2156937 () Bool)

(declare-fun lt!2457920 () Bool)

(assert (=> d!2156937 (= lt!2457920 (set.member lt!2457793 (content!13007 (t!380125 zl!343))))))

(declare-fun e!4138964 () Bool)

(assert (=> d!2156937 (= lt!2457920 e!4138964)))

(declare-fun res!2800873 () Bool)

(assert (=> d!2156937 (=> (not res!2800873) (not e!4138964))))

(assert (=> d!2156937 (= res!2800873 (is-Cons!66258 (t!380125 zl!343)))))

(assert (=> d!2156937 (= (contains!20352 (t!380125 zl!343) lt!2457793) lt!2457920)))

(declare-fun b!6865687 () Bool)

(declare-fun e!4138965 () Bool)

(assert (=> b!6865687 (= e!4138964 e!4138965)))

(declare-fun res!2800874 () Bool)

(assert (=> b!6865687 (=> res!2800874 e!4138965)))

(assert (=> b!6865687 (= res!2800874 (= (h!72706 (t!380125 zl!343)) lt!2457793))))

(declare-fun b!6865688 () Bool)

(assert (=> b!6865688 (= e!4138965 (contains!20352 (t!380125 (t!380125 zl!343)) lt!2457793))))

(assert (= (and d!2156937 res!2800873) b!6865687))

(assert (= (and b!6865687 (not res!2800874)) b!6865688))

(assert (=> d!2156937 m!7597670))

(declare-fun m!7598352 () Bool)

(assert (=> d!2156937 m!7598352))

(declare-fun m!7598354 () Bool)

(assert (=> b!6865688 m!7598354))

(assert (=> b!6864864 d!2156937))

(declare-fun b!6865689 () Bool)

(declare-fun res!2800877 () Bool)

(declare-fun e!4138966 () Bool)

(assert (=> b!6865689 (=> res!2800877 e!4138966)))

(assert (=> b!6865689 (= res!2800877 (not (is-Concat!25539 (h!72705 (t!380124 (exprs!6578 lt!2457736))))))))

(declare-fun e!4138967 () Bool)

(assert (=> b!6865689 (= e!4138967 e!4138966)))

(declare-fun b!6865691 () Bool)

(declare-fun e!4138968 () Bool)

(assert (=> b!6865691 (= e!4138966 e!4138968)))

(declare-fun res!2800879 () Bool)

(assert (=> b!6865691 (=> (not res!2800879) (not e!4138968))))

(declare-fun call!625324 () Bool)

(assert (=> b!6865691 (= res!2800879 call!625324)))

(declare-fun b!6865692 () Bool)

(declare-fun res!2800878 () Bool)

(declare-fun e!4138972 () Bool)

(assert (=> b!6865692 (=> (not res!2800878) (not e!4138972))))

(assert (=> b!6865692 (= res!2800878 call!625324)))

(assert (=> b!6865692 (= e!4138967 e!4138972)))

(declare-fun b!6865693 () Bool)

(declare-fun e!4138969 () Bool)

(declare-fun call!625325 () Bool)

(assert (=> b!6865693 (= e!4138969 call!625325)))

(declare-fun b!6865694 () Bool)

(declare-fun e!4138971 () Bool)

(assert (=> b!6865694 (= e!4138971 e!4138967)))

(declare-fun c!1277915 () Bool)

(assert (=> b!6865694 (= c!1277915 (is-Union!16694 (h!72705 (t!380124 (exprs!6578 lt!2457736)))))))

(declare-fun bm!625318 () Bool)

(declare-fun call!625323 () Bool)

(assert (=> bm!625318 (= call!625323 call!625325)))

(declare-fun c!1277914 () Bool)

(declare-fun bm!625319 () Bool)

(assert (=> bm!625319 (= call!625325 (validRegex!8430 (ite c!1277914 (reg!17023 (h!72705 (t!380124 (exprs!6578 lt!2457736)))) (ite c!1277915 (regTwo!33901 (h!72705 (t!380124 (exprs!6578 lt!2457736)))) (regTwo!33900 (h!72705 (t!380124 (exprs!6578 lt!2457736))))))))))

(declare-fun b!6865695 () Bool)

(assert (=> b!6865695 (= e!4138971 e!4138969)))

(declare-fun res!2800876 () Bool)

(assert (=> b!6865695 (= res!2800876 (not (nullable!6655 (reg!17023 (h!72705 (t!380124 (exprs!6578 lt!2457736)))))))))

(assert (=> b!6865695 (=> (not res!2800876) (not e!4138969))))

(declare-fun b!6865696 () Bool)

(declare-fun e!4138970 () Bool)

(assert (=> b!6865696 (= e!4138970 e!4138971)))

(assert (=> b!6865696 (= c!1277914 (is-Star!16694 (h!72705 (t!380124 (exprs!6578 lt!2457736)))))))

(declare-fun b!6865690 () Bool)

(assert (=> b!6865690 (= e!4138972 call!625323)))

(declare-fun d!2156939 () Bool)

(declare-fun res!2800875 () Bool)

(assert (=> d!2156939 (=> res!2800875 e!4138970)))

(assert (=> d!2156939 (= res!2800875 (is-ElementMatch!16694 (h!72705 (t!380124 (exprs!6578 lt!2457736)))))))

(assert (=> d!2156939 (= (validRegex!8430 (h!72705 (t!380124 (exprs!6578 lt!2457736)))) e!4138970)))

(declare-fun bm!625320 () Bool)

(assert (=> bm!625320 (= call!625324 (validRegex!8430 (ite c!1277915 (regOne!33901 (h!72705 (t!380124 (exprs!6578 lt!2457736)))) (regOne!33900 (h!72705 (t!380124 (exprs!6578 lt!2457736)))))))))

(declare-fun b!6865697 () Bool)

(assert (=> b!6865697 (= e!4138968 call!625323)))

(assert (= (and d!2156939 (not res!2800875)) b!6865696))

(assert (= (and b!6865696 c!1277914) b!6865695))

(assert (= (and b!6865696 (not c!1277914)) b!6865694))

(assert (= (and b!6865695 res!2800876) b!6865693))

(assert (= (and b!6865694 c!1277915) b!6865692))

(assert (= (and b!6865694 (not c!1277915)) b!6865689))

(assert (= (and b!6865692 res!2800878) b!6865690))

(assert (= (and b!6865689 (not res!2800877)) b!6865691))

(assert (= (and b!6865691 res!2800879) b!6865697))

(assert (= (or b!6865690 b!6865697) bm!625318))

(assert (= (or b!6865692 b!6865691) bm!625320))

(assert (= (or b!6865693 bm!625318) bm!625319))

(declare-fun m!7598356 () Bool)

(assert (=> bm!625319 m!7598356))

(declare-fun m!7598358 () Bool)

(assert (=> b!6865695 m!7598358))

(declare-fun m!7598360 () Bool)

(assert (=> bm!625320 m!7598360))

(assert (=> bs!1834716 d!2156939))

(declare-fun bs!1835129 () Bool)

(declare-fun d!2156941 () Bool)

(assert (= bs!1835129 (and d!2156941 d!2156889)))

(declare-fun lambda!388501 () Int)

(assert (=> bs!1835129 (= lambda!388501 lambda!388498)))

(declare-fun bs!1835130 () Bool)

(assert (= bs!1835130 (and d!2156941 d!2156435)))

(assert (=> bs!1835130 (= lambda!388501 lambda!388396)))

(declare-fun bs!1835131 () Bool)

(assert (= bs!1835131 (and d!2156941 b!6864001)))

(assert (=> bs!1835131 (= lambda!388501 lambda!388340)))

(declare-fun bs!1835132 () Bool)

(assert (= bs!1835132 (and d!2156941 d!2156495)))

(assert (=> bs!1835132 (not (= lambda!388501 lambda!388430))))

(declare-fun bs!1835133 () Bool)

(assert (= bs!1835133 (and d!2156941 d!2156611)))

(assert (=> bs!1835133 (= lambda!388501 lambda!388448)))

(declare-fun bs!1835134 () Bool)

(assert (= bs!1835134 (and d!2156941 d!2156385)))

(assert (=> bs!1835134 (= lambda!388501 lambda!388369)))

(declare-fun bs!1835135 () Bool)

(assert (= bs!1835135 (and d!2156941 d!2156577)))

(assert (=> bs!1835135 (= lambda!388501 lambda!388443)))

(declare-fun bs!1835136 () Bool)

(assert (= bs!1835136 (and d!2156941 d!2156835)))

(assert (=> bs!1835136 (not (= lambda!388501 lambda!388487))))

(declare-fun bs!1835137 () Bool)

(assert (= bs!1835137 (and d!2156941 d!2156829)))

(assert (=> bs!1835137 (= lambda!388501 lambda!388485)))

(declare-fun bs!1835138 () Bool)

(assert (= bs!1835138 (and d!2156941 d!2156887)))

(assert (=> bs!1835138 (= lambda!388501 lambda!388497)))

(declare-fun bs!1835139 () Bool)

(assert (= bs!1835139 (and d!2156941 d!2156493)))

(assert (=> bs!1835139 (not (= lambda!388501 lambda!388427))))

(declare-fun bs!1835140 () Bool)

(assert (= bs!1835140 (and d!2156941 d!2156845)))

(assert (=> bs!1835140 (= lambda!388501 lambda!388489)))

(declare-fun bs!1835141 () Bool)

(assert (= bs!1835141 (and d!2156941 d!2156823)))

(assert (=> bs!1835141 (= lambda!388501 lambda!388484)))

(declare-fun bs!1835142 () Bool)

(assert (= bs!1835142 (and d!2156941 d!2156527)))

(assert (=> bs!1835142 (= lambda!388501 lambda!388435)))

(declare-fun bs!1835143 () Bool)

(assert (= bs!1835143 (and d!2156941 d!2156397)))

(assert (=> bs!1835143 (not (= lambda!388501 lambda!388378))))

(declare-fun bs!1835144 () Bool)

(assert (= bs!1835144 (and d!2156941 d!2156437)))

(assert (=> bs!1835144 (= lambda!388501 lambda!388397)))

(declare-fun bs!1835145 () Bool)

(assert (= bs!1835145 (and d!2156941 d!2156551)))

(assert (=> bs!1835145 (= lambda!388501 lambda!388440)))

(declare-fun bs!1835146 () Bool)

(assert (= bs!1835146 (and d!2156941 b!6863998)))

(assert (=> bs!1835146 (not (= lambda!388501 lambda!388338))))

(assert (=> bs!1835143 (= lambda!388501 lambda!388377)))

(declare-fun bs!1835147 () Bool)

(assert (= bs!1835147 (and d!2156941 d!2156613)))

(assert (=> bs!1835147 (= lambda!388501 lambda!388449)))

(declare-fun bs!1835148 () Bool)

(assert (= bs!1835148 (and d!2156941 d!2156375)))

(assert (=> bs!1835148 (= lambda!388501 lambda!388360)))

(declare-fun bs!1835149 () Bool)

(assert (= bs!1835149 (and d!2156941 d!2156849)))

(assert (=> bs!1835149 (= lambda!388501 lambda!388492)))

(declare-fun bs!1835150 () Bool)

(assert (= bs!1835150 (and d!2156941 d!2156533)))

(assert (=> bs!1835150 (= lambda!388501 lambda!388436)))

(declare-fun bs!1835151 () Bool)

(assert (= bs!1835151 (and d!2156941 d!2156401)))

(assert (=> bs!1835151 (= lambda!388501 lambda!388381)))

(declare-fun bs!1835152 () Bool)

(assert (= bs!1835152 (and d!2156941 d!2156885)))

(assert (=> bs!1835152 (= lambda!388501 lambda!388496)))

(declare-fun bs!1835153 () Bool)

(assert (= bs!1835153 (and d!2156941 d!2156489)))

(assert (=> bs!1835153 (= lambda!388501 lambda!388426)))

(declare-fun bs!1835154 () Bool)

(assert (= bs!1835154 (and d!2156941 d!2156395)))

(assert (=> bs!1835154 (not (= lambda!388501 lambda!388372))))

(declare-fun b!6865698 () Bool)

(declare-fun e!4138977 () Regex!16694)

(assert (=> b!6865698 (= e!4138977 (Concat!25539 (h!72705 (t!380124 (exprs!6578 (h!72706 zl!343)))) (generalisedConcat!2282 (t!380124 (t!380124 (exprs!6578 (h!72706 zl!343)))))))))

(declare-fun b!6865699 () Bool)

(declare-fun e!4138975 () Bool)

(declare-fun e!4138976 () Bool)

(assert (=> b!6865699 (= e!4138975 e!4138976)))

(declare-fun c!1277917 () Bool)

(assert (=> b!6865699 (= c!1277917 (isEmpty!38619 (t!380124 (exprs!6578 (h!72706 zl!343)))))))

(declare-fun b!6865700 () Bool)

(declare-fun e!4138973 () Bool)

(assert (=> b!6865700 (= e!4138976 e!4138973)))

(declare-fun c!1277919 () Bool)

(assert (=> b!6865700 (= c!1277919 (isEmpty!38619 (tail!12829 (t!380124 (exprs!6578 (h!72706 zl!343))))))))

(declare-fun b!6865701 () Bool)

(declare-fun lt!2457921 () Regex!16694)

(assert (=> b!6865701 (= e!4138973 (isConcat!1537 lt!2457921))))

(declare-fun b!6865702 () Bool)

(assert (=> b!6865702 (= e!4138976 (isEmptyExpr!2014 lt!2457921))))

(declare-fun b!6865703 () Bool)

(declare-fun e!4138974 () Bool)

(assert (=> b!6865703 (= e!4138974 (isEmpty!38619 (t!380124 (t!380124 (exprs!6578 (h!72706 zl!343))))))))

(declare-fun b!6865704 () Bool)

(assert (=> b!6865704 (= e!4138973 (= lt!2457921 (head!13770 (t!380124 (exprs!6578 (h!72706 zl!343))))))))

(declare-fun b!6865705 () Bool)

(assert (=> b!6865705 (= e!4138977 EmptyExpr!16694)))

(assert (=> d!2156941 e!4138975))

(declare-fun res!2800881 () Bool)

(assert (=> d!2156941 (=> (not res!2800881) (not e!4138975))))

(assert (=> d!2156941 (= res!2800881 (validRegex!8430 lt!2457921))))

(declare-fun e!4138978 () Regex!16694)

(assert (=> d!2156941 (= lt!2457921 e!4138978)))

(declare-fun c!1277918 () Bool)

(assert (=> d!2156941 (= c!1277918 e!4138974)))

(declare-fun res!2800880 () Bool)

(assert (=> d!2156941 (=> (not res!2800880) (not e!4138974))))

(assert (=> d!2156941 (= res!2800880 (is-Cons!66257 (t!380124 (exprs!6578 (h!72706 zl!343)))))))

(assert (=> d!2156941 (forall!15885 (t!380124 (exprs!6578 (h!72706 zl!343))) lambda!388501)))

(assert (=> d!2156941 (= (generalisedConcat!2282 (t!380124 (exprs!6578 (h!72706 zl!343)))) lt!2457921)))

(declare-fun b!6865706 () Bool)

(assert (=> b!6865706 (= e!4138978 e!4138977)))

(declare-fun c!1277916 () Bool)

(assert (=> b!6865706 (= c!1277916 (is-Cons!66257 (t!380124 (exprs!6578 (h!72706 zl!343)))))))

(declare-fun b!6865707 () Bool)

(assert (=> b!6865707 (= e!4138978 (h!72705 (t!380124 (exprs!6578 (h!72706 zl!343)))))))

(assert (= (and d!2156941 res!2800880) b!6865703))

(assert (= (and d!2156941 c!1277918) b!6865707))

(assert (= (and d!2156941 (not c!1277918)) b!6865706))

(assert (= (and b!6865706 c!1277916) b!6865698))

(assert (= (and b!6865706 (not c!1277916)) b!6865705))

(assert (= (and d!2156941 res!2800881) b!6865699))

(assert (= (and b!6865699 c!1277917) b!6865702))

(assert (= (and b!6865699 (not c!1277917)) b!6865700))

(assert (= (and b!6865700 c!1277919) b!6865704))

(assert (= (and b!6865700 (not c!1277919)) b!6865701))

(assert (=> b!6865699 m!7597700))

(declare-fun m!7598362 () Bool)

(assert (=> b!6865698 m!7598362))

(declare-fun m!7598364 () Bool)

(assert (=> b!6865703 m!7598364))

(declare-fun m!7598366 () Bool)

(assert (=> b!6865702 m!7598366))

(declare-fun m!7598368 () Bool)

(assert (=> d!2156941 m!7598368))

(declare-fun m!7598370 () Bool)

(assert (=> d!2156941 m!7598370))

(declare-fun m!7598372 () Bool)

(assert (=> b!6865704 m!7598372))

(declare-fun m!7598374 () Bool)

(assert (=> b!6865701 m!7598374))

(declare-fun m!7598376 () Bool)

(assert (=> b!6865700 m!7598376))

(assert (=> b!6865700 m!7598376))

(declare-fun m!7598378 () Bool)

(assert (=> b!6865700 m!7598378))

(assert (=> b!6864898 d!2156941))

(assert (=> b!6864680 d!2156825))

(assert (=> b!6864680 d!2156827))

(declare-fun d!2156943 () Bool)

(assert (=> d!2156943 (= (head!13770 (t!380124 (exprs!6578 lt!2457736))) (h!72705 (t!380124 (exprs!6578 lt!2457736))))))

(assert (=> b!6864774 d!2156943))

(assert (=> d!2156511 d!2156523))

(declare-fun d!2156945 () Bool)

(declare-fun c!1277920 () Bool)

(assert (=> d!2156945 (= c!1277920 (isEmpty!38620 (tail!12830 s!2326)))))

(declare-fun e!4138979 () Bool)

(assert (=> d!2156945 (= (matchZipper!2660 (derivationStepZipper!2614 (set.insert lt!2457793 (as set.empty (Set Context!12156))) (head!13772 s!2326)) (tail!12830 s!2326)) e!4138979)))

(declare-fun b!6865708 () Bool)

(assert (=> b!6865708 (= e!4138979 (nullableZipper!2367 (derivationStepZipper!2614 (set.insert lt!2457793 (as set.empty (Set Context!12156))) (head!13772 s!2326))))))

(declare-fun b!6865709 () Bool)

(assert (=> b!6865709 (= e!4138979 (matchZipper!2660 (derivationStepZipper!2614 (derivationStepZipper!2614 (set.insert lt!2457793 (as set.empty (Set Context!12156))) (head!13772 s!2326)) (head!13772 (tail!12830 s!2326))) (tail!12830 (tail!12830 s!2326))))))

(assert (= (and d!2156945 c!1277920) b!6865708))

(assert (= (and d!2156945 (not c!1277920)) b!6865709))

(assert (=> d!2156945 m!7597214))

(assert (=> d!2156945 m!7597272))

(assert (=> b!6865708 m!7597504))

(declare-fun m!7598380 () Bool)

(assert (=> b!6865708 m!7598380))

(assert (=> b!6865709 m!7597214))

(assert (=> b!6865709 m!7597480))

(assert (=> b!6865709 m!7597504))

(assert (=> b!6865709 m!7597480))

(declare-fun m!7598382 () Bool)

(assert (=> b!6865709 m!7598382))

(assert (=> b!6865709 m!7597214))

(assert (=> b!6865709 m!7597484))

(assert (=> b!6865709 m!7598382))

(assert (=> b!6865709 m!7597484))

(declare-fun m!7598384 () Bool)

(assert (=> b!6865709 m!7598384))

(assert (=> b!6864724 d!2156945))

(declare-fun bs!1835155 () Bool)

(declare-fun d!2156947 () Bool)

(assert (= bs!1835155 (and d!2156947 d!2156547)))

(declare-fun lambda!388502 () Int)

(assert (=> bs!1835155 (= lambda!388502 lambda!388439)))

(declare-fun bs!1835156 () Bool)

(assert (= bs!1835156 (and d!2156947 d!2156833)))

(assert (=> bs!1835156 (= lambda!388502 lambda!388486)))

(declare-fun bs!1835157 () Bool)

(assert (= bs!1835157 (and d!2156947 d!2156841)))

(assert (=> bs!1835157 (= (= (head!13772 s!2326) (head!13772 (tail!12830 s!2326))) (= lambda!388502 lambda!388488))))

(assert (=> d!2156947 true))

(assert (=> d!2156947 (= (derivationStepZipper!2614 (set.insert lt!2457793 (as set.empty (Set Context!12156))) (head!13772 s!2326)) (flatMap!2141 (set.insert lt!2457793 (as set.empty (Set Context!12156))) lambda!388502))))

(declare-fun bs!1835158 () Bool)

(assert (= bs!1835158 d!2156947))

(assert (=> bs!1835158 m!7597326))

(declare-fun m!7598386 () Bool)

(assert (=> bs!1835158 m!7598386))

(assert (=> b!6864724 d!2156947))

(assert (=> b!6864724 d!2156505))

(assert (=> b!6864724 d!2156507))

(assert (=> d!2156579 d!2156599))

(declare-fun d!2156949 () Bool)

(assert (=> d!2156949 (= (isEmpty!38619 (tail!12829 (t!380124 (exprs!6578 lt!2457736)))) (is-Nil!66257 (tail!12829 (t!380124 (exprs!6578 lt!2457736)))))))

(assert (=> b!6864770 d!2156949))

(declare-fun d!2156951 () Bool)

(assert (=> d!2156951 (= (tail!12829 (t!380124 (exprs!6578 lt!2457736))) (t!380124 (t!380124 (exprs!6578 lt!2457736))))))

(assert (=> b!6864770 d!2156951))

(assert (=> d!2156549 d!2156415))

(assert (=> d!2156549 d!2156407))

(declare-fun d!2156953 () Bool)

(assert (=> d!2156953 (= (nullable!6655 (reg!17023 lt!2457832)) (nullableFct!2529 (reg!17023 lt!2457832)))))

(declare-fun bs!1835159 () Bool)

(assert (= bs!1835159 d!2156953))

(declare-fun m!7598388 () Bool)

(assert (=> bs!1835159 m!7598388))

(assert (=> b!6864735 d!2156953))

(declare-fun d!2156955 () Bool)

(declare-fun lt!2457922 () Bool)

(assert (=> d!2156955 (= lt!2457922 (set.member lt!2457736 (content!13007 (t!380125 zl!343))))))

(declare-fun e!4138980 () Bool)

(assert (=> d!2156955 (= lt!2457922 e!4138980)))

(declare-fun res!2800882 () Bool)

(assert (=> d!2156955 (=> (not res!2800882) (not e!4138980))))

(assert (=> d!2156955 (= res!2800882 (is-Cons!66258 (t!380125 zl!343)))))

(assert (=> d!2156955 (= (contains!20352 (t!380125 zl!343) lt!2457736) lt!2457922)))

(declare-fun b!6865710 () Bool)

(declare-fun e!4138981 () Bool)

(assert (=> b!6865710 (= e!4138980 e!4138981)))

(declare-fun res!2800883 () Bool)

(assert (=> b!6865710 (=> res!2800883 e!4138981)))

(assert (=> b!6865710 (= res!2800883 (= (h!72706 (t!380125 zl!343)) lt!2457736))))

(declare-fun b!6865711 () Bool)

(assert (=> b!6865711 (= e!4138981 (contains!20352 (t!380125 (t!380125 zl!343)) lt!2457736))))

(assert (= (and d!2156955 res!2800882) b!6865710))

(assert (= (and b!6865710 (not res!2800883)) b!6865711))

(assert (=> d!2156955 m!7597670))

(declare-fun m!7598390 () Bool)

(assert (=> d!2156955 m!7598390))

(declare-fun m!7598392 () Bool)

(assert (=> b!6865711 m!7598392))

(assert (=> b!6864875 d!2156955))

(assert (=> d!2156617 d!2156523))

(declare-fun d!2156957 () Bool)

(declare-fun c!1277921 () Bool)

(assert (=> d!2156957 (= c!1277921 (isEmpty!38620 (tail!12830 s!2326)))))

(declare-fun e!4138982 () Bool)

(assert (=> d!2156957 (= (matchZipper!2660 (derivationStepZipper!2614 (set.insert (h!72706 zl!343) (as set.empty (Set Context!12156))) (head!13772 s!2326)) (tail!12830 s!2326)) e!4138982)))

(declare-fun b!6865712 () Bool)

(assert (=> b!6865712 (= e!4138982 (nullableZipper!2367 (derivationStepZipper!2614 (set.insert (h!72706 zl!343) (as set.empty (Set Context!12156))) (head!13772 s!2326))))))

(declare-fun b!6865713 () Bool)

(assert (=> b!6865713 (= e!4138982 (matchZipper!2660 (derivationStepZipper!2614 (derivationStepZipper!2614 (set.insert (h!72706 zl!343) (as set.empty (Set Context!12156))) (head!13772 s!2326)) (head!13772 (tail!12830 s!2326))) (tail!12830 (tail!12830 s!2326))))))

(assert (= (and d!2156957 c!1277921) b!6865712))

(assert (= (and d!2156957 (not c!1277921)) b!6865713))

(assert (=> d!2156957 m!7597214))

(assert (=> d!2156957 m!7597272))

(assert (=> b!6865712 m!7597728))

(declare-fun m!7598394 () Bool)

(assert (=> b!6865712 m!7598394))

(assert (=> b!6865713 m!7597214))

(assert (=> b!6865713 m!7597480))

(assert (=> b!6865713 m!7597728))

(assert (=> b!6865713 m!7597480))

(declare-fun m!7598396 () Bool)

(assert (=> b!6865713 m!7598396))

(assert (=> b!6865713 m!7597214))

(assert (=> b!6865713 m!7597484))

(assert (=> b!6865713 m!7598396))

(assert (=> b!6865713 m!7597484))

(declare-fun m!7598398 () Bool)

(assert (=> b!6865713 m!7598398))

(assert (=> b!6864913 d!2156957))

(declare-fun bs!1835160 () Bool)

(declare-fun d!2156959 () Bool)

(assert (= bs!1835160 (and d!2156959 d!2156547)))

(declare-fun lambda!388503 () Int)

(assert (=> bs!1835160 (= lambda!388503 lambda!388439)))

(declare-fun bs!1835161 () Bool)

(assert (= bs!1835161 (and d!2156959 d!2156833)))

(assert (=> bs!1835161 (= lambda!388503 lambda!388486)))

(declare-fun bs!1835162 () Bool)

(assert (= bs!1835162 (and d!2156959 d!2156841)))

(assert (=> bs!1835162 (= (= (head!13772 s!2326) (head!13772 (tail!12830 s!2326))) (= lambda!388503 lambda!388488))))

(declare-fun bs!1835163 () Bool)

(assert (= bs!1835163 (and d!2156959 d!2156947)))

(assert (=> bs!1835163 (= lambda!388503 lambda!388502)))

(assert (=> d!2156959 true))

(assert (=> d!2156959 (= (derivationStepZipper!2614 (set.insert (h!72706 zl!343) (as set.empty (Set Context!12156))) (head!13772 s!2326)) (flatMap!2141 (set.insert (h!72706 zl!343) (as set.empty (Set Context!12156))) lambda!388503))))

(declare-fun bs!1835164 () Bool)

(assert (= bs!1835164 d!2156959))

(assert (=> bs!1835164 m!7597322))

(declare-fun m!7598400 () Bool)

(assert (=> bs!1835164 m!7598400))

(assert (=> b!6864913 d!2156959))

(assert (=> b!6864913 d!2156505))

(assert (=> b!6864913 d!2156507))

(assert (=> d!2156589 d!2156429))

(assert (=> d!2156589 d!2156425))

(declare-fun b!6865714 () Bool)

(declare-fun e!4138984 () Context!12156)

(declare-fun e!4138986 () Context!12156)

(assert (=> b!6865714 (= e!4138984 e!4138986)))

(declare-fun c!1277922 () Bool)

(assert (=> b!6865714 (= c!1277922 (is-Cons!66258 (t!380125 (t!380125 zl!343))))))

(declare-fun b!6865715 () Bool)

(assert (=> b!6865715 (= e!4138986 (getWitness!973 (t!380125 (t!380125 (t!380125 zl!343))) lambda!388339))))

(declare-fun d!2156961 () Bool)

(declare-fun e!4138983 () Bool)

(assert (=> d!2156961 e!4138983))

(declare-fun res!2800884 () Bool)

(assert (=> d!2156961 (=> (not res!2800884) (not e!4138983))))

(declare-fun lt!2457924 () Context!12156)

(assert (=> d!2156961 (= res!2800884 (dynLambda!26519 lambda!388339 lt!2457924))))

(assert (=> d!2156961 (= lt!2457924 e!4138984)))

(declare-fun c!1277923 () Bool)

(declare-fun e!4138985 () Bool)

(assert (=> d!2156961 (= c!1277923 e!4138985)))

(declare-fun res!2800885 () Bool)

(assert (=> d!2156961 (=> (not res!2800885) (not e!4138985))))

(assert (=> d!2156961 (= res!2800885 (is-Cons!66258 (t!380125 (t!380125 zl!343))))))

(assert (=> d!2156961 (exists!2821 (t!380125 (t!380125 zl!343)) lambda!388339)))

(assert (=> d!2156961 (= (getWitness!973 (t!380125 (t!380125 zl!343)) lambda!388339) lt!2457924)))

(declare-fun b!6865716 () Bool)

(assert (=> b!6865716 (= e!4138984 (h!72706 (t!380125 (t!380125 zl!343))))))

(declare-fun b!6865717 () Bool)

(declare-fun lt!2457923 () Unit!160153)

(declare-fun Unit!160161 () Unit!160153)

(assert (=> b!6865717 (= lt!2457923 Unit!160161)))

(assert (=> b!6865717 false))

(assert (=> b!6865717 (= e!4138986 (head!13771 (t!380125 (t!380125 zl!343))))))

(declare-fun b!6865718 () Bool)

(assert (=> b!6865718 (= e!4138983 (contains!20352 (t!380125 (t!380125 zl!343)) lt!2457924))))

(declare-fun b!6865719 () Bool)

(assert (=> b!6865719 (= e!4138985 (dynLambda!26519 lambda!388339 (h!72706 (t!380125 (t!380125 zl!343)))))))

(assert (= (and d!2156961 res!2800885) b!6865719))

(assert (= (and d!2156961 c!1277923) b!6865716))

(assert (= (and d!2156961 (not c!1277923)) b!6865714))

(assert (= (and b!6865714 c!1277922) b!6865715))

(assert (= (and b!6865714 (not c!1277922)) b!6865717))

(assert (= (and d!2156961 res!2800884) b!6865718))

(declare-fun b_lambda!259605 () Bool)

(assert (=> (not b_lambda!259605) (not d!2156961)))

(declare-fun b_lambda!259607 () Bool)

(assert (=> (not b_lambda!259607) (not b!6865719)))

(declare-fun m!7598402 () Bool)

(assert (=> b!6865718 m!7598402))

(declare-fun m!7598404 () Bool)

(assert (=> b!6865717 m!7598404))

(declare-fun m!7598406 () Bool)

(assert (=> b!6865719 m!7598406))

(declare-fun m!7598408 () Bool)

(assert (=> d!2156961 m!7598408))

(declare-fun m!7598410 () Bool)

(assert (=> d!2156961 m!7598410))

(declare-fun m!7598412 () Bool)

(assert (=> b!6865715 m!7598412))

(assert (=> b!6864781 d!2156961))

(declare-fun b!6865720 () Bool)

(declare-fun res!2800888 () Bool)

(declare-fun e!4138987 () Bool)

(assert (=> b!6865720 (=> res!2800888 e!4138987)))

(assert (=> b!6865720 (= res!2800888 (not (is-Concat!25539 (ite c!1277713 (reg!17023 (h!72705 (exprs!6578 lt!2457736))) (ite c!1277714 (regTwo!33901 (h!72705 (exprs!6578 lt!2457736))) (regTwo!33900 (h!72705 (exprs!6578 lt!2457736))))))))))

(declare-fun e!4138988 () Bool)

(assert (=> b!6865720 (= e!4138988 e!4138987)))

(declare-fun b!6865722 () Bool)

(declare-fun e!4138989 () Bool)

(assert (=> b!6865722 (= e!4138987 e!4138989)))

(declare-fun res!2800890 () Bool)

(assert (=> b!6865722 (=> (not res!2800890) (not e!4138989))))

(declare-fun call!625327 () Bool)

(assert (=> b!6865722 (= res!2800890 call!625327)))

(declare-fun b!6865723 () Bool)

(declare-fun res!2800889 () Bool)

(declare-fun e!4138993 () Bool)

(assert (=> b!6865723 (=> (not res!2800889) (not e!4138993))))

(assert (=> b!6865723 (= res!2800889 call!625327)))

(assert (=> b!6865723 (= e!4138988 e!4138993)))

(declare-fun b!6865724 () Bool)

(declare-fun e!4138990 () Bool)

(declare-fun call!625328 () Bool)

(assert (=> b!6865724 (= e!4138990 call!625328)))

(declare-fun b!6865725 () Bool)

(declare-fun e!4138992 () Bool)

(assert (=> b!6865725 (= e!4138992 e!4138988)))

(declare-fun c!1277925 () Bool)

(assert (=> b!6865725 (= c!1277925 (is-Union!16694 (ite c!1277713 (reg!17023 (h!72705 (exprs!6578 lt!2457736))) (ite c!1277714 (regTwo!33901 (h!72705 (exprs!6578 lt!2457736))) (regTwo!33900 (h!72705 (exprs!6578 lt!2457736)))))))))

(declare-fun bm!625321 () Bool)

(declare-fun call!625326 () Bool)

(assert (=> bm!625321 (= call!625326 call!625328)))

(declare-fun c!1277924 () Bool)

(declare-fun bm!625322 () Bool)

(assert (=> bm!625322 (= call!625328 (validRegex!8430 (ite c!1277924 (reg!17023 (ite c!1277713 (reg!17023 (h!72705 (exprs!6578 lt!2457736))) (ite c!1277714 (regTwo!33901 (h!72705 (exprs!6578 lt!2457736))) (regTwo!33900 (h!72705 (exprs!6578 lt!2457736)))))) (ite c!1277925 (regTwo!33901 (ite c!1277713 (reg!17023 (h!72705 (exprs!6578 lt!2457736))) (ite c!1277714 (regTwo!33901 (h!72705 (exprs!6578 lt!2457736))) (regTwo!33900 (h!72705 (exprs!6578 lt!2457736)))))) (regTwo!33900 (ite c!1277713 (reg!17023 (h!72705 (exprs!6578 lt!2457736))) (ite c!1277714 (regTwo!33901 (h!72705 (exprs!6578 lt!2457736))) (regTwo!33900 (h!72705 (exprs!6578 lt!2457736))))))))))))

(declare-fun b!6865726 () Bool)

(assert (=> b!6865726 (= e!4138992 e!4138990)))

(declare-fun res!2800887 () Bool)

(assert (=> b!6865726 (= res!2800887 (not (nullable!6655 (reg!17023 (ite c!1277713 (reg!17023 (h!72705 (exprs!6578 lt!2457736))) (ite c!1277714 (regTwo!33901 (h!72705 (exprs!6578 lt!2457736))) (regTwo!33900 (h!72705 (exprs!6578 lt!2457736)))))))))))

(assert (=> b!6865726 (=> (not res!2800887) (not e!4138990))))

(declare-fun b!6865727 () Bool)

(declare-fun e!4138991 () Bool)

(assert (=> b!6865727 (= e!4138991 e!4138992)))

(assert (=> b!6865727 (= c!1277924 (is-Star!16694 (ite c!1277713 (reg!17023 (h!72705 (exprs!6578 lt!2457736))) (ite c!1277714 (regTwo!33901 (h!72705 (exprs!6578 lt!2457736))) (regTwo!33900 (h!72705 (exprs!6578 lt!2457736)))))))))

(declare-fun b!6865721 () Bool)

(assert (=> b!6865721 (= e!4138993 call!625326)))

(declare-fun d!2156963 () Bool)

(declare-fun res!2800886 () Bool)

(assert (=> d!2156963 (=> res!2800886 e!4138991)))

(assert (=> d!2156963 (= res!2800886 (is-ElementMatch!16694 (ite c!1277713 (reg!17023 (h!72705 (exprs!6578 lt!2457736))) (ite c!1277714 (regTwo!33901 (h!72705 (exprs!6578 lt!2457736))) (regTwo!33900 (h!72705 (exprs!6578 lt!2457736)))))))))

(assert (=> d!2156963 (= (validRegex!8430 (ite c!1277713 (reg!17023 (h!72705 (exprs!6578 lt!2457736))) (ite c!1277714 (regTwo!33901 (h!72705 (exprs!6578 lt!2457736))) (regTwo!33900 (h!72705 (exprs!6578 lt!2457736)))))) e!4138991)))

(declare-fun bm!625323 () Bool)

(assert (=> bm!625323 (= call!625327 (validRegex!8430 (ite c!1277925 (regOne!33901 (ite c!1277713 (reg!17023 (h!72705 (exprs!6578 lt!2457736))) (ite c!1277714 (regTwo!33901 (h!72705 (exprs!6578 lt!2457736))) (regTwo!33900 (h!72705 (exprs!6578 lt!2457736)))))) (regOne!33900 (ite c!1277713 (reg!17023 (h!72705 (exprs!6578 lt!2457736))) (ite c!1277714 (regTwo!33901 (h!72705 (exprs!6578 lt!2457736))) (regTwo!33900 (h!72705 (exprs!6578 lt!2457736)))))))))))

(declare-fun b!6865728 () Bool)

(assert (=> b!6865728 (= e!4138989 call!625326)))

(assert (= (and d!2156963 (not res!2800886)) b!6865727))

(assert (= (and b!6865727 c!1277924) b!6865726))

(assert (= (and b!6865727 (not c!1277924)) b!6865725))

(assert (= (and b!6865726 res!2800887) b!6865724))

(assert (= (and b!6865725 c!1277925) b!6865723))

(assert (= (and b!6865725 (not c!1277925)) b!6865720))

(assert (= (and b!6865723 res!2800889) b!6865721))

(assert (= (and b!6865720 (not res!2800888)) b!6865722))

(assert (= (and b!6865722 res!2800890) b!6865728))

(assert (= (or b!6865721 b!6865728) bm!625321))

(assert (= (or b!6865723 b!6865722) bm!625323))

(assert (= (or b!6865724 bm!625321) bm!625322))

(declare-fun m!7598414 () Bool)

(assert (=> bm!625322 m!7598414))

(declare-fun m!7598416 () Bool)

(assert (=> b!6865726 m!7598416))

(declare-fun m!7598418 () Bool)

(assert (=> bm!625323 m!7598418))

(assert (=> bm!625203 d!2156963))

(declare-fun b!6865729 () Bool)

(declare-fun e!4138995 () Int)

(assert (=> b!6865729 (= e!4138995 1)))

(declare-fun b!6865730 () Bool)

(declare-fun e!4138996 () Int)

(declare-fun call!625331 () Int)

(assert (=> b!6865730 (= e!4138996 (+ 1 call!625331))))

(declare-fun b!6865731 () Bool)

(declare-fun c!1277928 () Bool)

(assert (=> b!6865731 (= c!1277928 (is-Union!16694 (h!72705 (exprs!6578 (h!72706 lt!2457734)))))))

(declare-fun e!4138994 () Int)

(assert (=> b!6865731 (= e!4138996 e!4138994)))

(declare-fun bm!625324 () Bool)

(declare-fun call!625329 () Int)

(assert (=> bm!625324 (= call!625329 call!625331)))

(declare-fun bm!625325 () Bool)

(declare-fun c!1277927 () Bool)

(assert (=> bm!625325 (= call!625331 (regexDepthTotal!260 (ite c!1277927 (reg!17023 (h!72705 (exprs!6578 (h!72706 lt!2457734)))) (ite c!1277928 (regTwo!33901 (h!72705 (exprs!6578 (h!72706 lt!2457734)))) (regTwo!33900 (h!72705 (exprs!6578 (h!72706 lt!2457734))))))))))

(declare-fun b!6865732 () Bool)

(declare-fun e!4138997 () Int)

(assert (=> b!6865732 (= e!4138997 1)))

(declare-fun b!6865733 () Bool)

(assert (=> b!6865733 (= e!4138995 e!4138996)))

(assert (=> b!6865733 (= c!1277927 (is-Star!16694 (h!72705 (exprs!6578 (h!72706 lt!2457734)))))))

(declare-fun b!6865734 () Bool)

(declare-fun call!625330 () Int)

(assert (=> b!6865734 (= e!4138997 (+ 1 call!625330 call!625329))))

(declare-fun b!6865735 () Bool)

(assert (=> b!6865735 (= e!4138994 e!4138997)))

(declare-fun c!1277929 () Bool)

(assert (=> b!6865735 (= c!1277929 (is-Concat!25539 (h!72705 (exprs!6578 (h!72706 lt!2457734)))))))

(declare-fun b!6865736 () Bool)

(assert (=> b!6865736 (= e!4138994 (+ 1 call!625330 call!625329))))

(declare-fun bm!625326 () Bool)

(assert (=> bm!625326 (= call!625330 (regexDepthTotal!260 (ite c!1277928 (regOne!33901 (h!72705 (exprs!6578 (h!72706 lt!2457734)))) (regOne!33900 (h!72705 (exprs!6578 (h!72706 lt!2457734)))))))))

(declare-fun d!2156965 () Bool)

(declare-fun lt!2457925 () Int)

(assert (=> d!2156965 (> lt!2457925 0)))

(assert (=> d!2156965 (= lt!2457925 e!4138995)))

(declare-fun c!1277926 () Bool)

(assert (=> d!2156965 (= c!1277926 (is-ElementMatch!16694 (h!72705 (exprs!6578 (h!72706 lt!2457734)))))))

(assert (=> d!2156965 (= (regexDepthTotal!260 (h!72705 (exprs!6578 (h!72706 lt!2457734)))) lt!2457925)))

(assert (= (and d!2156965 c!1277926) b!6865729))

(assert (= (and d!2156965 (not c!1277926)) b!6865733))

(assert (= (and b!6865733 c!1277927) b!6865730))

(assert (= (and b!6865733 (not c!1277927)) b!6865731))

(assert (= (and b!6865731 c!1277928) b!6865736))

(assert (= (and b!6865731 (not c!1277928)) b!6865735))

(assert (= (and b!6865735 c!1277929) b!6865734))

(assert (= (and b!6865735 (not c!1277929)) b!6865732))

(assert (= (or b!6865736 b!6865734) bm!625324))

(assert (= (or b!6865736 b!6865734) bm!625326))

(assert (= (or b!6865730 bm!625324) bm!625325))

(declare-fun m!7598420 () Bool)

(assert (=> bm!625325 m!7598420))

(declare-fun m!7598422 () Bool)

(assert (=> bm!625326 m!7598422))

(assert (=> b!6864853 d!2156965))

(declare-fun d!2156967 () Bool)

(declare-fun lt!2457926 () Int)

(assert (=> d!2156967 (>= lt!2457926 0)))

(declare-fun e!4138998 () Int)

(assert (=> d!2156967 (= lt!2457926 e!4138998)))

(declare-fun c!1277930 () Bool)

(assert (=> d!2156967 (= c!1277930 (is-Cons!66257 (exprs!6578 (Context!12157 (t!380124 (exprs!6578 (h!72706 lt!2457734)))))))))

(assert (=> d!2156967 (= (contextDepthTotal!415 (Context!12157 (t!380124 (exprs!6578 (h!72706 lt!2457734))))) lt!2457926)))

(declare-fun b!6865737 () Bool)

(assert (=> b!6865737 (= e!4138998 (+ (regexDepthTotal!260 (h!72705 (exprs!6578 (Context!12157 (t!380124 (exprs!6578 (h!72706 lt!2457734))))))) (contextDepthTotal!415 (Context!12157 (t!380124 (exprs!6578 (Context!12157 (t!380124 (exprs!6578 (h!72706 lt!2457734))))))))))))

(declare-fun b!6865738 () Bool)

(assert (=> b!6865738 (= e!4138998 1)))

(assert (= (and d!2156967 c!1277930) b!6865737))

(assert (= (and d!2156967 (not c!1277930)) b!6865738))

(declare-fun m!7598424 () Bool)

(assert (=> b!6865737 m!7598424))

(declare-fun m!7598426 () Bool)

(assert (=> b!6865737 m!7598426))

(assert (=> b!6864853 d!2156967))

(declare-fun b!6865739 () Bool)

(declare-fun e!4139000 () Int)

(assert (=> b!6865739 (= e!4139000 1)))

(declare-fun b!6865740 () Bool)

(declare-fun e!4139001 () Int)

(declare-fun call!625334 () Int)

(assert (=> b!6865740 (= e!4139001 (+ 1 call!625334))))

(declare-fun b!6865741 () Bool)

(declare-fun c!1277933 () Bool)

(assert (=> b!6865741 (= c!1277933 (is-Union!16694 (ite c!1277725 (regOne!33901 (h!72705 (exprs!6578 lt!2457736))) (regOne!33900 (h!72705 (exprs!6578 lt!2457736))))))))

(declare-fun e!4138999 () Int)

(assert (=> b!6865741 (= e!4139001 e!4138999)))

(declare-fun bm!625327 () Bool)

(declare-fun call!625332 () Int)

(assert (=> bm!625327 (= call!625332 call!625334)))

(declare-fun c!1277932 () Bool)

(declare-fun bm!625328 () Bool)

(assert (=> bm!625328 (= call!625334 (regexDepthTotal!260 (ite c!1277932 (reg!17023 (ite c!1277725 (regOne!33901 (h!72705 (exprs!6578 lt!2457736))) (regOne!33900 (h!72705 (exprs!6578 lt!2457736))))) (ite c!1277933 (regTwo!33901 (ite c!1277725 (regOne!33901 (h!72705 (exprs!6578 lt!2457736))) (regOne!33900 (h!72705 (exprs!6578 lt!2457736))))) (regTwo!33900 (ite c!1277725 (regOne!33901 (h!72705 (exprs!6578 lt!2457736))) (regOne!33900 (h!72705 (exprs!6578 lt!2457736)))))))))))

(declare-fun b!6865742 () Bool)

(declare-fun e!4139002 () Int)

(assert (=> b!6865742 (= e!4139002 1)))

(declare-fun b!6865743 () Bool)

(assert (=> b!6865743 (= e!4139000 e!4139001)))

(assert (=> b!6865743 (= c!1277932 (is-Star!16694 (ite c!1277725 (regOne!33901 (h!72705 (exprs!6578 lt!2457736))) (regOne!33900 (h!72705 (exprs!6578 lt!2457736))))))))

(declare-fun b!6865744 () Bool)

(declare-fun call!625333 () Int)

(assert (=> b!6865744 (= e!4139002 (+ 1 call!625333 call!625332))))

(declare-fun b!6865745 () Bool)

(assert (=> b!6865745 (= e!4138999 e!4139002)))

(declare-fun c!1277934 () Bool)

(assert (=> b!6865745 (= c!1277934 (is-Concat!25539 (ite c!1277725 (regOne!33901 (h!72705 (exprs!6578 lt!2457736))) (regOne!33900 (h!72705 (exprs!6578 lt!2457736))))))))

(declare-fun b!6865746 () Bool)

(assert (=> b!6865746 (= e!4138999 (+ 1 call!625333 call!625332))))

(declare-fun bm!625329 () Bool)

(assert (=> bm!625329 (= call!625333 (regexDepthTotal!260 (ite c!1277933 (regOne!33901 (ite c!1277725 (regOne!33901 (h!72705 (exprs!6578 lt!2457736))) (regOne!33900 (h!72705 (exprs!6578 lt!2457736))))) (regOne!33900 (ite c!1277725 (regOne!33901 (h!72705 (exprs!6578 lt!2457736))) (regOne!33900 (h!72705 (exprs!6578 lt!2457736))))))))))

(declare-fun d!2156969 () Bool)

(declare-fun lt!2457927 () Int)

(assert (=> d!2156969 (> lt!2457927 0)))

(assert (=> d!2156969 (= lt!2457927 e!4139000)))

(declare-fun c!1277931 () Bool)

(assert (=> d!2156969 (= c!1277931 (is-ElementMatch!16694 (ite c!1277725 (regOne!33901 (h!72705 (exprs!6578 lt!2457736))) (regOne!33900 (h!72705 (exprs!6578 lt!2457736))))))))

(assert (=> d!2156969 (= (regexDepthTotal!260 (ite c!1277725 (regOne!33901 (h!72705 (exprs!6578 lt!2457736))) (regOne!33900 (h!72705 (exprs!6578 lt!2457736))))) lt!2457927)))

(assert (= (and d!2156969 c!1277931) b!6865739))

(assert (= (and d!2156969 (not c!1277931)) b!6865743))

(assert (= (and b!6865743 c!1277932) b!6865740))

(assert (= (and b!6865743 (not c!1277932)) b!6865741))

(assert (= (and b!6865741 c!1277933) b!6865746))

(assert (= (and b!6865741 (not c!1277933)) b!6865745))

(assert (= (and b!6865745 c!1277934) b!6865744))

(assert (= (and b!6865745 (not c!1277934)) b!6865742))

(assert (= (or b!6865746 b!6865744) bm!625327))

(assert (= (or b!6865746 b!6865744) bm!625329))

(assert (= (or b!6865740 bm!625327) bm!625328))

(declare-fun m!7598428 () Bool)

(assert (=> bm!625328 m!7598428))

(declare-fun m!7598430 () Bool)

(assert (=> bm!625329 m!7598430))

(assert (=> bm!625213 d!2156969))

(declare-fun d!2156971 () Bool)

(declare-fun lt!2457928 () Bool)

(assert (=> d!2156971 (= lt!2457928 (set.member (h!72706 lt!2457818) (content!13007 (t!380125 lt!2457818))))))

(declare-fun e!4139003 () Bool)

(assert (=> d!2156971 (= lt!2457928 e!4139003)))

(declare-fun res!2800891 () Bool)

(assert (=> d!2156971 (=> (not res!2800891) (not e!4139003))))

(assert (=> d!2156971 (= res!2800891 (is-Cons!66258 (t!380125 lt!2457818)))))

(assert (=> d!2156971 (= (contains!20352 (t!380125 lt!2457818) (h!72706 lt!2457818)) lt!2457928)))

(declare-fun b!6865747 () Bool)

(declare-fun e!4139004 () Bool)

(assert (=> b!6865747 (= e!4139003 e!4139004)))

(declare-fun res!2800892 () Bool)

(assert (=> b!6865747 (=> res!2800892 e!4139004)))

(assert (=> b!6865747 (= res!2800892 (= (h!72706 (t!380125 lt!2457818)) (h!72706 lt!2457818)))))

(declare-fun b!6865748 () Bool)

(assert (=> b!6865748 (= e!4139004 (contains!20352 (t!380125 (t!380125 lt!2457818)) (h!72706 lt!2457818)))))

(assert (= (and d!2156971 res!2800891) b!6865747))

(assert (= (and b!6865747 (not res!2800892)) b!6865748))

(assert (=> d!2156971 m!7597674))

(declare-fun m!7598432 () Bool)

(assert (=> d!2156971 m!7598432))

(declare-fun m!7598434 () Bool)

(assert (=> b!6865748 m!7598434))

(assert (=> b!6864893 d!2156971))

(declare-fun d!2156973 () Bool)

(assert (=> d!2156973 (= (nullable!6655 (reg!17023 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292))))) (nullableFct!2529 (reg!17023 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292))))))))

(declare-fun bs!1835165 () Bool)

(assert (= bs!1835165 d!2156973))

(declare-fun m!7598436 () Bool)

(assert (=> bs!1835165 m!7598436))

(assert (=> b!6864803 d!2156973))

(declare-fun d!2156975 () Bool)

(assert (=> d!2156975 (= (isEmpty!38619 (unfocusZipperList!2111 zl!343)) (is-Nil!66257 (unfocusZipperList!2111 zl!343)))))

(assert (=> b!6864762 d!2156975))

(declare-fun d!2156977 () Bool)

(assert (=> d!2156977 (= (isConcat!1537 lt!2457883) (is-Concat!25539 lt!2457883))))

(assert (=> b!6864901 d!2156977))

(declare-fun bs!1835166 () Bool)

(declare-fun d!2156979 () Bool)

(assert (= bs!1835166 (and d!2156979 d!2156889)))

(declare-fun lambda!388504 () Int)

(assert (=> bs!1835166 (= lambda!388504 lambda!388498)))

(declare-fun bs!1835167 () Bool)

(assert (= bs!1835167 (and d!2156979 d!2156435)))

(assert (=> bs!1835167 (= lambda!388504 lambda!388396)))

(declare-fun bs!1835168 () Bool)

(assert (= bs!1835168 (and d!2156979 b!6864001)))

(assert (=> bs!1835168 (= lambda!388504 lambda!388340)))

(declare-fun bs!1835169 () Bool)

(assert (= bs!1835169 (and d!2156979 d!2156495)))

(assert (=> bs!1835169 (not (= lambda!388504 lambda!388430))))

(declare-fun bs!1835170 () Bool)

(assert (= bs!1835170 (and d!2156979 d!2156611)))

(assert (=> bs!1835170 (= lambda!388504 lambda!388448)))

(declare-fun bs!1835171 () Bool)

(assert (= bs!1835171 (and d!2156979 d!2156385)))

(assert (=> bs!1835171 (= lambda!388504 lambda!388369)))

(declare-fun bs!1835172 () Bool)

(assert (= bs!1835172 (and d!2156979 d!2156577)))

(assert (=> bs!1835172 (= lambda!388504 lambda!388443)))

(declare-fun bs!1835173 () Bool)

(assert (= bs!1835173 (and d!2156979 d!2156835)))

(assert (=> bs!1835173 (not (= lambda!388504 lambda!388487))))

(declare-fun bs!1835174 () Bool)

(assert (= bs!1835174 (and d!2156979 d!2156829)))

(assert (=> bs!1835174 (= lambda!388504 lambda!388485)))

(declare-fun bs!1835175 () Bool)

(assert (= bs!1835175 (and d!2156979 d!2156887)))

(assert (=> bs!1835175 (= lambda!388504 lambda!388497)))

(declare-fun bs!1835176 () Bool)

(assert (= bs!1835176 (and d!2156979 d!2156493)))

(assert (=> bs!1835176 (not (= lambda!388504 lambda!388427))))

(declare-fun bs!1835177 () Bool)

(assert (= bs!1835177 (and d!2156979 d!2156845)))

(assert (=> bs!1835177 (= lambda!388504 lambda!388489)))

(declare-fun bs!1835178 () Bool)

(assert (= bs!1835178 (and d!2156979 d!2156527)))

(assert (=> bs!1835178 (= lambda!388504 lambda!388435)))

(declare-fun bs!1835179 () Bool)

(assert (= bs!1835179 (and d!2156979 d!2156397)))

(assert (=> bs!1835179 (not (= lambda!388504 lambda!388378))))

(declare-fun bs!1835180 () Bool)

(assert (= bs!1835180 (and d!2156979 d!2156437)))

(assert (=> bs!1835180 (= lambda!388504 lambda!388397)))

(declare-fun bs!1835181 () Bool)

(assert (= bs!1835181 (and d!2156979 d!2156551)))

(assert (=> bs!1835181 (= lambda!388504 lambda!388440)))

(declare-fun bs!1835182 () Bool)

(assert (= bs!1835182 (and d!2156979 b!6863998)))

(assert (=> bs!1835182 (not (= lambda!388504 lambda!388338))))

(assert (=> bs!1835179 (= lambda!388504 lambda!388377)))

(declare-fun bs!1835183 () Bool)

(assert (= bs!1835183 (and d!2156979 d!2156613)))

(assert (=> bs!1835183 (= lambda!388504 lambda!388449)))

(declare-fun bs!1835184 () Bool)

(assert (= bs!1835184 (and d!2156979 d!2156375)))

(assert (=> bs!1835184 (= lambda!388504 lambda!388360)))

(declare-fun bs!1835185 () Bool)

(assert (= bs!1835185 (and d!2156979 d!2156849)))

(assert (=> bs!1835185 (= lambda!388504 lambda!388492)))

(declare-fun bs!1835186 () Bool)

(assert (= bs!1835186 (and d!2156979 d!2156533)))

(assert (=> bs!1835186 (= lambda!388504 lambda!388436)))

(declare-fun bs!1835187 () Bool)

(assert (= bs!1835187 (and d!2156979 d!2156401)))

(assert (=> bs!1835187 (= lambda!388504 lambda!388381)))

(declare-fun bs!1835188 () Bool)

(assert (= bs!1835188 (and d!2156979 d!2156885)))

(assert (=> bs!1835188 (= lambda!388504 lambda!388496)))

(declare-fun bs!1835189 () Bool)

(assert (= bs!1835189 (and d!2156979 d!2156489)))

(assert (=> bs!1835189 (= lambda!388504 lambda!388426)))

(declare-fun bs!1835190 () Bool)

(assert (= bs!1835190 (and d!2156979 d!2156395)))

(assert (=> bs!1835190 (not (= lambda!388504 lambda!388372))))

(declare-fun bs!1835191 () Bool)

(assert (= bs!1835191 (and d!2156979 d!2156941)))

(assert (=> bs!1835191 (= lambda!388504 lambda!388501)))

(declare-fun bs!1835192 () Bool)

(assert (= bs!1835192 (and d!2156979 d!2156823)))

(assert (=> bs!1835192 (= lambda!388504 lambda!388484)))

(declare-fun b!6865749 () Bool)

(declare-fun e!4139009 () Regex!16694)

(assert (=> b!6865749 (= e!4139009 (Concat!25539 (h!72705 (t!380124 (t!380124 (exprs!6578 lt!2457736)))) (generalisedConcat!2282 (t!380124 (t!380124 (t!380124 (exprs!6578 lt!2457736)))))))))

(declare-fun b!6865750 () Bool)

(declare-fun e!4139007 () Bool)

(declare-fun e!4139008 () Bool)

(assert (=> b!6865750 (= e!4139007 e!4139008)))

(declare-fun c!1277936 () Bool)

(assert (=> b!6865750 (= c!1277936 (isEmpty!38619 (t!380124 (t!380124 (exprs!6578 lt!2457736)))))))

(declare-fun b!6865751 () Bool)

(declare-fun e!4139005 () Bool)

(assert (=> b!6865751 (= e!4139008 e!4139005)))

(declare-fun c!1277938 () Bool)

(assert (=> b!6865751 (= c!1277938 (isEmpty!38619 (tail!12829 (t!380124 (t!380124 (exprs!6578 lt!2457736))))))))

(declare-fun b!6865752 () Bool)

(declare-fun lt!2457929 () Regex!16694)

(assert (=> b!6865752 (= e!4139005 (isConcat!1537 lt!2457929))))

(declare-fun b!6865753 () Bool)

(assert (=> b!6865753 (= e!4139008 (isEmptyExpr!2014 lt!2457929))))

(declare-fun b!6865754 () Bool)

(declare-fun e!4139006 () Bool)

(assert (=> b!6865754 (= e!4139006 (isEmpty!38619 (t!380124 (t!380124 (t!380124 (exprs!6578 lt!2457736))))))))

(declare-fun b!6865755 () Bool)

(assert (=> b!6865755 (= e!4139005 (= lt!2457929 (head!13770 (t!380124 (t!380124 (exprs!6578 lt!2457736))))))))

(declare-fun b!6865756 () Bool)

(assert (=> b!6865756 (= e!4139009 EmptyExpr!16694)))

(assert (=> d!2156979 e!4139007))

(declare-fun res!2800894 () Bool)

(assert (=> d!2156979 (=> (not res!2800894) (not e!4139007))))

(assert (=> d!2156979 (= res!2800894 (validRegex!8430 lt!2457929))))

(declare-fun e!4139010 () Regex!16694)

(assert (=> d!2156979 (= lt!2457929 e!4139010)))

(declare-fun c!1277937 () Bool)

(assert (=> d!2156979 (= c!1277937 e!4139006)))

(declare-fun res!2800893 () Bool)

(assert (=> d!2156979 (=> (not res!2800893) (not e!4139006))))

(assert (=> d!2156979 (= res!2800893 (is-Cons!66257 (t!380124 (t!380124 (exprs!6578 lt!2457736)))))))

(assert (=> d!2156979 (forall!15885 (t!380124 (t!380124 (exprs!6578 lt!2457736))) lambda!388504)))

(assert (=> d!2156979 (= (generalisedConcat!2282 (t!380124 (t!380124 (exprs!6578 lt!2457736)))) lt!2457929)))

(declare-fun b!6865757 () Bool)

(assert (=> b!6865757 (= e!4139010 e!4139009)))

(declare-fun c!1277935 () Bool)

(assert (=> b!6865757 (= c!1277935 (is-Cons!66257 (t!380124 (t!380124 (exprs!6578 lt!2457736)))))))

(declare-fun b!6865758 () Bool)

(assert (=> b!6865758 (= e!4139010 (h!72705 (t!380124 (t!380124 (exprs!6578 lt!2457736)))))))

(assert (= (and d!2156979 res!2800893) b!6865754))

(assert (= (and d!2156979 c!1277937) b!6865758))

(assert (= (and d!2156979 (not c!1277937)) b!6865757))

(assert (= (and b!6865757 c!1277935) b!6865749))

(assert (= (and b!6865757 (not c!1277935)) b!6865756))

(assert (= (and d!2156979 res!2800894) b!6865750))

(assert (= (and b!6865750 c!1277936) b!6865753))

(assert (= (and b!6865750 (not c!1277936)) b!6865751))

(assert (= (and b!6865751 c!1277938) b!6865755))

(assert (= (and b!6865751 (not c!1277938)) b!6865752))

(assert (=> b!6865750 m!7597546))

(declare-fun m!7598438 () Bool)

(assert (=> b!6865749 m!7598438))

(declare-fun m!7598440 () Bool)

(assert (=> b!6865754 m!7598440))

(declare-fun m!7598442 () Bool)

(assert (=> b!6865753 m!7598442))

(declare-fun m!7598444 () Bool)

(assert (=> d!2156979 m!7598444))

(declare-fun m!7598446 () Bool)

(assert (=> d!2156979 m!7598446))

(declare-fun m!7598448 () Bool)

(assert (=> b!6865755 m!7598448))

(declare-fun m!7598450 () Bool)

(assert (=> b!6865752 m!7598450))

(declare-fun m!7598452 () Bool)

(assert (=> b!6865751 m!7598452))

(assert (=> b!6865751 m!7598452))

(declare-fun m!7598454 () Bool)

(assert (=> b!6865751 m!7598454))

(assert (=> b!6864768 d!2156979))

(declare-fun b!6865759 () Bool)

(declare-fun e!4139012 () Int)

(assert (=> b!6865759 (= e!4139012 1)))

(declare-fun b!6865760 () Bool)

(declare-fun e!4139013 () Int)

(declare-fun call!625337 () Int)

(assert (=> b!6865760 (= e!4139013 (+ 1 call!625337))))

(declare-fun b!6865761 () Bool)

(declare-fun c!1277941 () Bool)

(assert (=> b!6865761 (= c!1277941 (is-Union!16694 (ite c!1277724 (reg!17023 (h!72705 (exprs!6578 lt!2457736))) (ite c!1277725 (regTwo!33901 (h!72705 (exprs!6578 lt!2457736))) (regTwo!33900 (h!72705 (exprs!6578 lt!2457736)))))))))

(declare-fun e!4139011 () Int)

(assert (=> b!6865761 (= e!4139013 e!4139011)))

(declare-fun bm!625330 () Bool)

(declare-fun call!625335 () Int)

(assert (=> bm!625330 (= call!625335 call!625337)))

(declare-fun bm!625331 () Bool)

(declare-fun c!1277940 () Bool)

(assert (=> bm!625331 (= call!625337 (regexDepthTotal!260 (ite c!1277940 (reg!17023 (ite c!1277724 (reg!17023 (h!72705 (exprs!6578 lt!2457736))) (ite c!1277725 (regTwo!33901 (h!72705 (exprs!6578 lt!2457736))) (regTwo!33900 (h!72705 (exprs!6578 lt!2457736)))))) (ite c!1277941 (regTwo!33901 (ite c!1277724 (reg!17023 (h!72705 (exprs!6578 lt!2457736))) (ite c!1277725 (regTwo!33901 (h!72705 (exprs!6578 lt!2457736))) (regTwo!33900 (h!72705 (exprs!6578 lt!2457736)))))) (regTwo!33900 (ite c!1277724 (reg!17023 (h!72705 (exprs!6578 lt!2457736))) (ite c!1277725 (regTwo!33901 (h!72705 (exprs!6578 lt!2457736))) (regTwo!33900 (h!72705 (exprs!6578 lt!2457736))))))))))))

(declare-fun b!6865762 () Bool)

(declare-fun e!4139014 () Int)

(assert (=> b!6865762 (= e!4139014 1)))

(declare-fun b!6865763 () Bool)

(assert (=> b!6865763 (= e!4139012 e!4139013)))

(assert (=> b!6865763 (= c!1277940 (is-Star!16694 (ite c!1277724 (reg!17023 (h!72705 (exprs!6578 lt!2457736))) (ite c!1277725 (regTwo!33901 (h!72705 (exprs!6578 lt!2457736))) (regTwo!33900 (h!72705 (exprs!6578 lt!2457736)))))))))

(declare-fun b!6865764 () Bool)

(declare-fun call!625336 () Int)

(assert (=> b!6865764 (= e!4139014 (+ 1 call!625336 call!625335))))

(declare-fun b!6865765 () Bool)

(assert (=> b!6865765 (= e!4139011 e!4139014)))

(declare-fun c!1277942 () Bool)

(assert (=> b!6865765 (= c!1277942 (is-Concat!25539 (ite c!1277724 (reg!17023 (h!72705 (exprs!6578 lt!2457736))) (ite c!1277725 (regTwo!33901 (h!72705 (exprs!6578 lt!2457736))) (regTwo!33900 (h!72705 (exprs!6578 lt!2457736)))))))))

(declare-fun b!6865766 () Bool)

(assert (=> b!6865766 (= e!4139011 (+ 1 call!625336 call!625335))))

(declare-fun bm!625332 () Bool)

(assert (=> bm!625332 (= call!625336 (regexDepthTotal!260 (ite c!1277941 (regOne!33901 (ite c!1277724 (reg!17023 (h!72705 (exprs!6578 lt!2457736))) (ite c!1277725 (regTwo!33901 (h!72705 (exprs!6578 lt!2457736))) (regTwo!33900 (h!72705 (exprs!6578 lt!2457736)))))) (regOne!33900 (ite c!1277724 (reg!17023 (h!72705 (exprs!6578 lt!2457736))) (ite c!1277725 (regTwo!33901 (h!72705 (exprs!6578 lt!2457736))) (regTwo!33900 (h!72705 (exprs!6578 lt!2457736)))))))))))

(declare-fun d!2156981 () Bool)

(declare-fun lt!2457930 () Int)

(assert (=> d!2156981 (> lt!2457930 0)))

(assert (=> d!2156981 (= lt!2457930 e!4139012)))

(declare-fun c!1277939 () Bool)

(assert (=> d!2156981 (= c!1277939 (is-ElementMatch!16694 (ite c!1277724 (reg!17023 (h!72705 (exprs!6578 lt!2457736))) (ite c!1277725 (regTwo!33901 (h!72705 (exprs!6578 lt!2457736))) (regTwo!33900 (h!72705 (exprs!6578 lt!2457736)))))))))

(assert (=> d!2156981 (= (regexDepthTotal!260 (ite c!1277724 (reg!17023 (h!72705 (exprs!6578 lt!2457736))) (ite c!1277725 (regTwo!33901 (h!72705 (exprs!6578 lt!2457736))) (regTwo!33900 (h!72705 (exprs!6578 lt!2457736)))))) lt!2457930)))

(assert (= (and d!2156981 c!1277939) b!6865759))

(assert (= (and d!2156981 (not c!1277939)) b!6865763))

(assert (= (and b!6865763 c!1277940) b!6865760))

(assert (= (and b!6865763 (not c!1277940)) b!6865761))

(assert (= (and b!6865761 c!1277941) b!6865766))

(assert (= (and b!6865761 (not c!1277941)) b!6865765))

(assert (= (and b!6865765 c!1277942) b!6865764))

(assert (= (and b!6865765 (not c!1277942)) b!6865762))

(assert (= (or b!6865766 b!6865764) bm!625330))

(assert (= (or b!6865766 b!6865764) bm!625332))

(assert (= (or b!6865760 bm!625330) bm!625331))

(declare-fun m!7598456 () Bool)

(assert (=> bm!625331 m!7598456))

(declare-fun m!7598458 () Bool)

(assert (=> bm!625332 m!7598458))

(assert (=> bm!625212 d!2156981))

(assert (=> b!6864690 d!2156843))

(declare-fun bs!1835193 () Bool)

(declare-fun b!6865770 () Bool)

(assert (= bs!1835193 (and b!6865770 b!6865556)))

(declare-fun lambda!388505 () Int)

(assert (=> bs!1835193 (not (= lambda!388505 lambda!388495))))

(declare-fun bs!1835194 () Bool)

(assert (= bs!1835194 (and b!6865770 b!6865496)))

(assert (=> bs!1835194 (not (= lambda!388505 lambda!388491))))

(declare-fun bs!1835195 () Bool)

(assert (= bs!1835195 (and b!6865770 b!6864260)))

(assert (=> bs!1835195 (= (and (= (reg!17023 (regTwo!33901 (regTwo!33901 r!7292))) (reg!17023 r!7292)) (= (regTwo!33901 (regTwo!33901 r!7292)) r!7292)) (= lambda!388505 lambda!388386))))

(declare-fun bs!1835196 () Bool)

(assert (= bs!1835196 (and b!6865770 b!6864261)))

(assert (=> bs!1835196 (not (= lambda!388505 lambda!388387))))

(declare-fun bs!1835197 () Bool)

(assert (= bs!1835197 (and b!6865770 b!6865555)))

(assert (=> bs!1835197 (= (and (= (reg!17023 (regTwo!33901 (regTwo!33901 r!7292))) (reg!17023 (regOne!33901 (regOne!33901 r!7292)))) (= (regTwo!33901 (regTwo!33901 r!7292)) (regOne!33901 (regOne!33901 r!7292)))) (= lambda!388505 lambda!388494))))

(declare-fun bs!1835198 () Bool)

(assert (= bs!1835198 (and b!6865770 b!6864917)))

(assert (=> bs!1835198 (= (and (= (reg!17023 (regTwo!33901 (regTwo!33901 r!7292))) (reg!17023 (regTwo!33901 r!7292))) (= (regTwo!33901 (regTwo!33901 r!7292)) (regTwo!33901 r!7292))) (= lambda!388505 lambda!388450))))

(declare-fun bs!1835199 () Bool)

(assert (= bs!1835199 (and b!6865770 b!6864671)))

(assert (=> bs!1835199 (= (and (= (reg!17023 (regTwo!33901 (regTwo!33901 r!7292))) (reg!17023 (regOne!33901 r!7292))) (= (regTwo!33901 (regTwo!33901 r!7292)) (regOne!33901 r!7292))) (= lambda!388505 lambda!388431))))

(declare-fun bs!1835200 () Bool)

(assert (= bs!1835200 (and b!6865770 b!6865495)))

(assert (=> bs!1835200 (= (and (= (reg!17023 (regTwo!33901 (regTwo!33901 r!7292))) (reg!17023 (regOne!33901 (regTwo!33901 r!7292)))) (= (regTwo!33901 (regTwo!33901 r!7292)) (regOne!33901 (regTwo!33901 r!7292)))) (= lambda!388505 lambda!388490))))

(declare-fun bs!1835201 () Bool)

(assert (= bs!1835201 (and b!6865770 b!6864672)))

(assert (=> bs!1835201 (not (= lambda!388505 lambda!388432))))

(declare-fun bs!1835202 () Bool)

(assert (= bs!1835202 (and b!6865770 b!6864918)))

(assert (=> bs!1835202 (not (= lambda!388505 lambda!388451))))

(assert (=> b!6865770 true))

(assert (=> b!6865770 true))

(declare-fun bs!1835203 () Bool)

(declare-fun b!6865771 () Bool)

(assert (= bs!1835203 (and b!6865771 b!6865556)))

(declare-fun lambda!388506 () Int)

(assert (=> bs!1835203 (= (and (= (regOne!33900 (regTwo!33901 (regTwo!33901 r!7292))) (regOne!33900 (regOne!33901 (regOne!33901 r!7292)))) (= (regTwo!33900 (regTwo!33901 (regTwo!33901 r!7292))) (regTwo!33900 (regOne!33901 (regOne!33901 r!7292))))) (= lambda!388506 lambda!388495))))

(declare-fun bs!1835204 () Bool)

(assert (= bs!1835204 (and b!6865771 b!6865770)))

(assert (=> bs!1835204 (not (= lambda!388506 lambda!388505))))

(declare-fun bs!1835205 () Bool)

(assert (= bs!1835205 (and b!6865771 b!6865496)))

(assert (=> bs!1835205 (= (and (= (regOne!33900 (regTwo!33901 (regTwo!33901 r!7292))) (regOne!33900 (regOne!33901 (regTwo!33901 r!7292)))) (= (regTwo!33900 (regTwo!33901 (regTwo!33901 r!7292))) (regTwo!33900 (regOne!33901 (regTwo!33901 r!7292))))) (= lambda!388506 lambda!388491))))

(declare-fun bs!1835206 () Bool)

(assert (= bs!1835206 (and b!6865771 b!6864260)))

(assert (=> bs!1835206 (not (= lambda!388506 lambda!388386))))

(declare-fun bs!1835207 () Bool)

(assert (= bs!1835207 (and b!6865771 b!6864261)))

(assert (=> bs!1835207 (= (and (= (regOne!33900 (regTwo!33901 (regTwo!33901 r!7292))) (regOne!33900 r!7292)) (= (regTwo!33900 (regTwo!33901 (regTwo!33901 r!7292))) (regTwo!33900 r!7292))) (= lambda!388506 lambda!388387))))

(declare-fun bs!1835208 () Bool)

(assert (= bs!1835208 (and b!6865771 b!6865555)))

(assert (=> bs!1835208 (not (= lambda!388506 lambda!388494))))

(declare-fun bs!1835209 () Bool)

(assert (= bs!1835209 (and b!6865771 b!6864917)))

(assert (=> bs!1835209 (not (= lambda!388506 lambda!388450))))

(declare-fun bs!1835210 () Bool)

(assert (= bs!1835210 (and b!6865771 b!6864671)))

(assert (=> bs!1835210 (not (= lambda!388506 lambda!388431))))

(declare-fun bs!1835211 () Bool)

(assert (= bs!1835211 (and b!6865771 b!6865495)))

(assert (=> bs!1835211 (not (= lambda!388506 lambda!388490))))

(declare-fun bs!1835212 () Bool)

(assert (= bs!1835212 (and b!6865771 b!6864672)))

(assert (=> bs!1835212 (= (and (= (regOne!33900 (regTwo!33901 (regTwo!33901 r!7292))) (regOne!33900 (regOne!33901 r!7292))) (= (regTwo!33900 (regTwo!33901 (regTwo!33901 r!7292))) (regTwo!33900 (regOne!33901 r!7292)))) (= lambda!388506 lambda!388432))))

(declare-fun bs!1835213 () Bool)

(assert (= bs!1835213 (and b!6865771 b!6864918)))

(assert (=> bs!1835213 (= (and (= (regOne!33900 (regTwo!33901 (regTwo!33901 r!7292))) (regOne!33900 (regTwo!33901 r!7292))) (= (regTwo!33900 (regTwo!33901 (regTwo!33901 r!7292))) (regTwo!33900 (regTwo!33901 r!7292)))) (= lambda!388506 lambda!388451))))

(assert (=> b!6865771 true))

(assert (=> b!6865771 true))

(declare-fun b!6865767 () Bool)

(declare-fun e!4139021 () Bool)

(declare-fun e!4139015 () Bool)

(assert (=> b!6865767 (= e!4139021 e!4139015)))

(declare-fun c!1277945 () Bool)

(assert (=> b!6865767 (= c!1277945 (is-Star!16694 (regTwo!33901 (regTwo!33901 r!7292))))))

(declare-fun b!6865768 () Bool)

(declare-fun e!4139017 () Bool)

(declare-fun e!4139016 () Bool)

(assert (=> b!6865768 (= e!4139017 e!4139016)))

(declare-fun res!2800897 () Bool)

(assert (=> b!6865768 (= res!2800897 (not (is-EmptyLang!16694 (regTwo!33901 (regTwo!33901 r!7292)))))))

(assert (=> b!6865768 (=> (not res!2800897) (not e!4139016))))

(declare-fun b!6865769 () Bool)

(declare-fun c!1277944 () Bool)

(assert (=> b!6865769 (= c!1277944 (is-Union!16694 (regTwo!33901 (regTwo!33901 r!7292))))))

(declare-fun e!4139020 () Bool)

(assert (=> b!6865769 (= e!4139020 e!4139021)))

(declare-fun e!4139018 () Bool)

(declare-fun call!625339 () Bool)

(assert (=> b!6865770 (= e!4139018 call!625339)))

(assert (=> b!6865771 (= e!4139015 call!625339)))

(declare-fun b!6865772 () Bool)

(declare-fun e!4139019 () Bool)

(assert (=> b!6865772 (= e!4139021 e!4139019)))

(declare-fun res!2800895 () Bool)

(assert (=> b!6865772 (= res!2800895 (matchRSpec!3795 (regOne!33901 (regTwo!33901 (regTwo!33901 r!7292))) s!2326))))

(assert (=> b!6865772 (=> res!2800895 e!4139019)))

(declare-fun bm!625333 () Bool)

(declare-fun call!625338 () Bool)

(assert (=> bm!625333 (= call!625338 (isEmpty!38620 s!2326))))

(declare-fun d!2156983 () Bool)

(declare-fun c!1277946 () Bool)

(assert (=> d!2156983 (= c!1277946 (is-EmptyExpr!16694 (regTwo!33901 (regTwo!33901 r!7292))))))

(assert (=> d!2156983 (= (matchRSpec!3795 (regTwo!33901 (regTwo!33901 r!7292)) s!2326) e!4139017)))

(declare-fun b!6865773 () Bool)

(declare-fun c!1277943 () Bool)

(assert (=> b!6865773 (= c!1277943 (is-ElementMatch!16694 (regTwo!33901 (regTwo!33901 r!7292))))))

(assert (=> b!6865773 (= e!4139016 e!4139020)))

(declare-fun b!6865774 () Bool)

(assert (=> b!6865774 (= e!4139020 (= s!2326 (Cons!66259 (c!1277522 (regTwo!33901 (regTwo!33901 r!7292))) Nil!66259)))))

(declare-fun b!6865775 () Bool)

(declare-fun res!2800896 () Bool)

(assert (=> b!6865775 (=> res!2800896 e!4139018)))

(assert (=> b!6865775 (= res!2800896 call!625338)))

(assert (=> b!6865775 (= e!4139015 e!4139018)))

(declare-fun bm!625334 () Bool)

(assert (=> bm!625334 (= call!625339 (Exists!3754 (ite c!1277945 lambda!388505 lambda!388506)))))

(declare-fun b!6865776 () Bool)

(assert (=> b!6865776 (= e!4139019 (matchRSpec!3795 (regTwo!33901 (regTwo!33901 (regTwo!33901 r!7292))) s!2326))))

(declare-fun b!6865777 () Bool)

(assert (=> b!6865777 (= e!4139017 call!625338)))

(assert (= (and d!2156983 c!1277946) b!6865777))

(assert (= (and d!2156983 (not c!1277946)) b!6865768))

(assert (= (and b!6865768 res!2800897) b!6865773))

(assert (= (and b!6865773 c!1277943) b!6865774))

(assert (= (and b!6865773 (not c!1277943)) b!6865769))

(assert (= (and b!6865769 c!1277944) b!6865772))

(assert (= (and b!6865769 (not c!1277944)) b!6865767))

(assert (= (and b!6865772 (not res!2800895)) b!6865776))

(assert (= (and b!6865767 c!1277945) b!6865775))

(assert (= (and b!6865767 (not c!1277945)) b!6865771))

(assert (= (and b!6865775 (not res!2800896)) b!6865770))

(assert (= (or b!6865770 b!6865771) bm!625334))

(assert (= (or b!6865777 b!6865775) bm!625333))

(declare-fun m!7598460 () Bool)

(assert (=> b!6865772 m!7598460))

(assert (=> bm!625333 m!7597206))

(declare-fun m!7598462 () Bool)

(assert (=> bm!625334 m!7598462))

(declare-fun m!7598464 () Bool)

(assert (=> b!6865776 m!7598464))

(assert (=> b!6864923 d!2156983))

(declare-fun b!6865778 () Bool)

(declare-fun res!2800900 () Bool)

(declare-fun e!4139022 () Bool)

(assert (=> b!6865778 (=> res!2800900 e!4139022)))

(assert (=> b!6865778 (= res!2800900 (not (is-Concat!25539 lt!2457869)))))

(declare-fun e!4139023 () Bool)

(assert (=> b!6865778 (= e!4139023 e!4139022)))

(declare-fun b!6865780 () Bool)

(declare-fun e!4139024 () Bool)

(assert (=> b!6865780 (= e!4139022 e!4139024)))

(declare-fun res!2800902 () Bool)

(assert (=> b!6865780 (=> (not res!2800902) (not e!4139024))))

(declare-fun call!625341 () Bool)

(assert (=> b!6865780 (= res!2800902 call!625341)))

(declare-fun b!6865781 () Bool)

(declare-fun res!2800901 () Bool)

(declare-fun e!4139028 () Bool)

(assert (=> b!6865781 (=> (not res!2800901) (not e!4139028))))

(assert (=> b!6865781 (= res!2800901 call!625341)))

(assert (=> b!6865781 (= e!4139023 e!4139028)))

(declare-fun b!6865782 () Bool)

(declare-fun e!4139025 () Bool)

(declare-fun call!625342 () Bool)

(assert (=> b!6865782 (= e!4139025 call!625342)))

(declare-fun b!6865783 () Bool)

(declare-fun e!4139027 () Bool)

(assert (=> b!6865783 (= e!4139027 e!4139023)))

(declare-fun c!1277948 () Bool)

(assert (=> b!6865783 (= c!1277948 (is-Union!16694 lt!2457869))))

(declare-fun bm!625335 () Bool)

(declare-fun call!625340 () Bool)

(assert (=> bm!625335 (= call!625340 call!625342)))

(declare-fun bm!625336 () Bool)

(declare-fun c!1277947 () Bool)

(assert (=> bm!625336 (= call!625342 (validRegex!8430 (ite c!1277947 (reg!17023 lt!2457869) (ite c!1277948 (regTwo!33901 lt!2457869) (regTwo!33900 lt!2457869)))))))

(declare-fun b!6865784 () Bool)

(assert (=> b!6865784 (= e!4139027 e!4139025)))

(declare-fun res!2800899 () Bool)

(assert (=> b!6865784 (= res!2800899 (not (nullable!6655 (reg!17023 lt!2457869))))))

(assert (=> b!6865784 (=> (not res!2800899) (not e!4139025))))

(declare-fun b!6865785 () Bool)

(declare-fun e!4139026 () Bool)

(assert (=> b!6865785 (= e!4139026 e!4139027)))

(assert (=> b!6865785 (= c!1277947 (is-Star!16694 lt!2457869))))

(declare-fun b!6865779 () Bool)

(assert (=> b!6865779 (= e!4139028 call!625340)))

(declare-fun d!2156985 () Bool)

(declare-fun res!2800898 () Bool)

(assert (=> d!2156985 (=> res!2800898 e!4139026)))

(assert (=> d!2156985 (= res!2800898 (is-ElementMatch!16694 lt!2457869))))

(assert (=> d!2156985 (= (validRegex!8430 lt!2457869) e!4139026)))

(declare-fun bm!625337 () Bool)

(assert (=> bm!625337 (= call!625341 (validRegex!8430 (ite c!1277948 (regOne!33901 lt!2457869) (regOne!33900 lt!2457869))))))

(declare-fun b!6865786 () Bool)

(assert (=> b!6865786 (= e!4139024 call!625340)))

(assert (= (and d!2156985 (not res!2800898)) b!6865785))

(assert (= (and b!6865785 c!1277947) b!6865784))

(assert (= (and b!6865785 (not c!1277947)) b!6865783))

(assert (= (and b!6865784 res!2800899) b!6865782))

(assert (= (and b!6865783 c!1277948) b!6865781))

(assert (= (and b!6865783 (not c!1277948)) b!6865778))

(assert (= (and b!6865781 res!2800901) b!6865779))

(assert (= (and b!6865778 (not res!2800900)) b!6865780))

(assert (= (and b!6865780 res!2800902) b!6865786))

(assert (= (or b!6865779 b!6865786) bm!625335))

(assert (= (or b!6865781 b!6865780) bm!625337))

(assert (= (or b!6865782 bm!625335) bm!625336))

(declare-fun m!7598466 () Bool)

(assert (=> bm!625336 m!7598466))

(declare-fun m!7598468 () Bool)

(assert (=> b!6865784 m!7598468))

(declare-fun m!7598470 () Bool)

(assert (=> bm!625337 m!7598470))

(assert (=> d!2156527 d!2156985))

(declare-fun d!2156987 () Bool)

(declare-fun res!2800903 () Bool)

(declare-fun e!4139029 () Bool)

(assert (=> d!2156987 (=> res!2800903 e!4139029)))

(assert (=> d!2156987 (= res!2800903 (is-Nil!66257 (unfocusZipperList!2111 zl!343)))))

(assert (=> d!2156987 (= (forall!15885 (unfocusZipperList!2111 zl!343) lambda!388435) e!4139029)))

(declare-fun b!6865787 () Bool)

(declare-fun e!4139030 () Bool)

(assert (=> b!6865787 (= e!4139029 e!4139030)))

(declare-fun res!2800904 () Bool)

(assert (=> b!6865787 (=> (not res!2800904) (not e!4139030))))

(assert (=> b!6865787 (= res!2800904 (dynLambda!26518 lambda!388435 (h!72705 (unfocusZipperList!2111 zl!343))))))

(declare-fun b!6865788 () Bool)

(assert (=> b!6865788 (= e!4139030 (forall!15885 (t!380124 (unfocusZipperList!2111 zl!343)) lambda!388435))))

(assert (= (and d!2156987 (not res!2800903)) b!6865787))

(assert (= (and b!6865787 res!2800904) b!6865788))

(declare-fun b_lambda!259609 () Bool)

(assert (=> (not b_lambda!259609) (not b!6865787)))

(declare-fun m!7598472 () Bool)

(assert (=> b!6865787 m!7598472))

(declare-fun m!7598474 () Bool)

(assert (=> b!6865788 m!7598474))

(assert (=> d!2156527 d!2156987))

(declare-fun d!2156989 () Bool)

(declare-fun res!2800905 () Bool)

(declare-fun e!4139031 () Bool)

(assert (=> d!2156989 (=> res!2800905 e!4139031)))

(assert (=> d!2156989 (= res!2800905 (is-Nil!66257 (t!380124 lt!2457732)))))

(assert (=> d!2156989 (= (forall!15885 (t!380124 lt!2457732) lambda!388372) e!4139031)))

(declare-fun b!6865789 () Bool)

(declare-fun e!4139032 () Bool)

(assert (=> b!6865789 (= e!4139031 e!4139032)))

(declare-fun res!2800906 () Bool)

(assert (=> b!6865789 (=> (not res!2800906) (not e!4139032))))

(assert (=> b!6865789 (= res!2800906 (dynLambda!26518 lambda!388372 (h!72705 (t!380124 lt!2457732))))))

(declare-fun b!6865790 () Bool)

(assert (=> b!6865790 (= e!4139032 (forall!15885 (t!380124 (t!380124 lt!2457732)) lambda!388372))))

(assert (= (and d!2156989 (not res!2800905)) b!6865789))

(assert (= (and b!6865789 res!2800906) b!6865790))

(declare-fun b_lambda!259611 () Bool)

(assert (=> (not b_lambda!259611) (not b!6865789)))

(declare-fun m!7598476 () Bool)

(assert (=> b!6865789 m!7598476))

(declare-fun m!7598478 () Bool)

(assert (=> b!6865790 m!7598478))

(assert (=> b!6864787 d!2156989))

(declare-fun bs!1835214 () Bool)

(declare-fun b!6865794 () Bool)

(assert (= bs!1835214 (and b!6865794 b!6865556)))

(declare-fun lambda!388507 () Int)

(assert (=> bs!1835214 (not (= lambda!388507 lambda!388495))))

(declare-fun bs!1835215 () Bool)

(assert (= bs!1835215 (and b!6865794 b!6865770)))

(assert (=> bs!1835215 (= (and (= (reg!17023 (regTwo!33901 (regOne!33901 r!7292))) (reg!17023 (regTwo!33901 (regTwo!33901 r!7292)))) (= (regTwo!33901 (regOne!33901 r!7292)) (regTwo!33901 (regTwo!33901 r!7292)))) (= lambda!388507 lambda!388505))))

(declare-fun bs!1835216 () Bool)

(assert (= bs!1835216 (and b!6865794 b!6865496)))

(assert (=> bs!1835216 (not (= lambda!388507 lambda!388491))))

(declare-fun bs!1835217 () Bool)

(assert (= bs!1835217 (and b!6865794 b!6864260)))

(assert (=> bs!1835217 (= (and (= (reg!17023 (regTwo!33901 (regOne!33901 r!7292))) (reg!17023 r!7292)) (= (regTwo!33901 (regOne!33901 r!7292)) r!7292)) (= lambda!388507 lambda!388386))))

(declare-fun bs!1835218 () Bool)

(assert (= bs!1835218 (and b!6865794 b!6864261)))

(assert (=> bs!1835218 (not (= lambda!388507 lambda!388387))))

(declare-fun bs!1835219 () Bool)

(assert (= bs!1835219 (and b!6865794 b!6865555)))

(assert (=> bs!1835219 (= (and (= (reg!17023 (regTwo!33901 (regOne!33901 r!7292))) (reg!17023 (regOne!33901 (regOne!33901 r!7292)))) (= (regTwo!33901 (regOne!33901 r!7292)) (regOne!33901 (regOne!33901 r!7292)))) (= lambda!388507 lambda!388494))))

(declare-fun bs!1835220 () Bool)

(assert (= bs!1835220 (and b!6865794 b!6864917)))

(assert (=> bs!1835220 (= (and (= (reg!17023 (regTwo!33901 (regOne!33901 r!7292))) (reg!17023 (regTwo!33901 r!7292))) (= (regTwo!33901 (regOne!33901 r!7292)) (regTwo!33901 r!7292))) (= lambda!388507 lambda!388450))))

(declare-fun bs!1835221 () Bool)

(assert (= bs!1835221 (and b!6865794 b!6865771)))

(assert (=> bs!1835221 (not (= lambda!388507 lambda!388506))))

(declare-fun bs!1835222 () Bool)

(assert (= bs!1835222 (and b!6865794 b!6864671)))

(assert (=> bs!1835222 (= (and (= (reg!17023 (regTwo!33901 (regOne!33901 r!7292))) (reg!17023 (regOne!33901 r!7292))) (= (regTwo!33901 (regOne!33901 r!7292)) (regOne!33901 r!7292))) (= lambda!388507 lambda!388431))))

(declare-fun bs!1835223 () Bool)

(assert (= bs!1835223 (and b!6865794 b!6865495)))

(assert (=> bs!1835223 (= (and (= (reg!17023 (regTwo!33901 (regOne!33901 r!7292))) (reg!17023 (regOne!33901 (regTwo!33901 r!7292)))) (= (regTwo!33901 (regOne!33901 r!7292)) (regOne!33901 (regTwo!33901 r!7292)))) (= lambda!388507 lambda!388490))))

(declare-fun bs!1835224 () Bool)

(assert (= bs!1835224 (and b!6865794 b!6864672)))

(assert (=> bs!1835224 (not (= lambda!388507 lambda!388432))))

(declare-fun bs!1835225 () Bool)

(assert (= bs!1835225 (and b!6865794 b!6864918)))

(assert (=> bs!1835225 (not (= lambda!388507 lambda!388451))))

(assert (=> b!6865794 true))

(assert (=> b!6865794 true))

(declare-fun bs!1835226 () Bool)

(declare-fun b!6865795 () Bool)

(assert (= bs!1835226 (and b!6865795 b!6865556)))

(declare-fun lambda!388508 () Int)

(assert (=> bs!1835226 (= (and (= (regOne!33900 (regTwo!33901 (regOne!33901 r!7292))) (regOne!33900 (regOne!33901 (regOne!33901 r!7292)))) (= (regTwo!33900 (regTwo!33901 (regOne!33901 r!7292))) (regTwo!33900 (regOne!33901 (regOne!33901 r!7292))))) (= lambda!388508 lambda!388495))))

(declare-fun bs!1835227 () Bool)

(assert (= bs!1835227 (and b!6865795 b!6865770)))

(assert (=> bs!1835227 (not (= lambda!388508 lambda!388505))))

(declare-fun bs!1835228 () Bool)

(assert (= bs!1835228 (and b!6865795 b!6865496)))

(assert (=> bs!1835228 (= (and (= (regOne!33900 (regTwo!33901 (regOne!33901 r!7292))) (regOne!33900 (regOne!33901 (regTwo!33901 r!7292)))) (= (regTwo!33900 (regTwo!33901 (regOne!33901 r!7292))) (regTwo!33900 (regOne!33901 (regTwo!33901 r!7292))))) (= lambda!388508 lambda!388491))))

(declare-fun bs!1835229 () Bool)

(assert (= bs!1835229 (and b!6865795 b!6864260)))

(assert (=> bs!1835229 (not (= lambda!388508 lambda!388386))))

(declare-fun bs!1835230 () Bool)

(assert (= bs!1835230 (and b!6865795 b!6864261)))

(assert (=> bs!1835230 (= (and (= (regOne!33900 (regTwo!33901 (regOne!33901 r!7292))) (regOne!33900 r!7292)) (= (regTwo!33900 (regTwo!33901 (regOne!33901 r!7292))) (regTwo!33900 r!7292))) (= lambda!388508 lambda!388387))))

(declare-fun bs!1835231 () Bool)

(assert (= bs!1835231 (and b!6865795 b!6865794)))

(assert (=> bs!1835231 (not (= lambda!388508 lambda!388507))))

(declare-fun bs!1835232 () Bool)

(assert (= bs!1835232 (and b!6865795 b!6865555)))

(assert (=> bs!1835232 (not (= lambda!388508 lambda!388494))))

(declare-fun bs!1835233 () Bool)

(assert (= bs!1835233 (and b!6865795 b!6864917)))

(assert (=> bs!1835233 (not (= lambda!388508 lambda!388450))))

(declare-fun bs!1835234 () Bool)

(assert (= bs!1835234 (and b!6865795 b!6865771)))

(assert (=> bs!1835234 (= (and (= (regOne!33900 (regTwo!33901 (regOne!33901 r!7292))) (regOne!33900 (regTwo!33901 (regTwo!33901 r!7292)))) (= (regTwo!33900 (regTwo!33901 (regOne!33901 r!7292))) (regTwo!33900 (regTwo!33901 (regTwo!33901 r!7292))))) (= lambda!388508 lambda!388506))))

(declare-fun bs!1835235 () Bool)

(assert (= bs!1835235 (and b!6865795 b!6864671)))

(assert (=> bs!1835235 (not (= lambda!388508 lambda!388431))))

(declare-fun bs!1835236 () Bool)

(assert (= bs!1835236 (and b!6865795 b!6865495)))

(assert (=> bs!1835236 (not (= lambda!388508 lambda!388490))))

(declare-fun bs!1835237 () Bool)

(assert (= bs!1835237 (and b!6865795 b!6864672)))

(assert (=> bs!1835237 (= (and (= (regOne!33900 (regTwo!33901 (regOne!33901 r!7292))) (regOne!33900 (regOne!33901 r!7292))) (= (regTwo!33900 (regTwo!33901 (regOne!33901 r!7292))) (regTwo!33900 (regOne!33901 r!7292)))) (= lambda!388508 lambda!388432))))

(declare-fun bs!1835238 () Bool)

(assert (= bs!1835238 (and b!6865795 b!6864918)))

(assert (=> bs!1835238 (= (and (= (regOne!33900 (regTwo!33901 (regOne!33901 r!7292))) (regOne!33900 (regTwo!33901 r!7292))) (= (regTwo!33900 (regTwo!33901 (regOne!33901 r!7292))) (regTwo!33900 (regTwo!33901 r!7292)))) (= lambda!388508 lambda!388451))))

(assert (=> b!6865795 true))

(assert (=> b!6865795 true))

(declare-fun b!6865791 () Bool)

(declare-fun e!4139039 () Bool)

(declare-fun e!4139033 () Bool)

(assert (=> b!6865791 (= e!4139039 e!4139033)))

(declare-fun c!1277951 () Bool)

(assert (=> b!6865791 (= c!1277951 (is-Star!16694 (regTwo!33901 (regOne!33901 r!7292))))))

(declare-fun b!6865792 () Bool)

(declare-fun e!4139035 () Bool)

(declare-fun e!4139034 () Bool)

(assert (=> b!6865792 (= e!4139035 e!4139034)))

(declare-fun res!2800909 () Bool)

(assert (=> b!6865792 (= res!2800909 (not (is-EmptyLang!16694 (regTwo!33901 (regOne!33901 r!7292)))))))

(assert (=> b!6865792 (=> (not res!2800909) (not e!4139034))))

(declare-fun b!6865793 () Bool)

(declare-fun c!1277950 () Bool)

(assert (=> b!6865793 (= c!1277950 (is-Union!16694 (regTwo!33901 (regOne!33901 r!7292))))))

(declare-fun e!4139038 () Bool)

(assert (=> b!6865793 (= e!4139038 e!4139039)))

(declare-fun e!4139036 () Bool)

(declare-fun call!625344 () Bool)

(assert (=> b!6865794 (= e!4139036 call!625344)))

(assert (=> b!6865795 (= e!4139033 call!625344)))

(declare-fun b!6865796 () Bool)

(declare-fun e!4139037 () Bool)

(assert (=> b!6865796 (= e!4139039 e!4139037)))

(declare-fun res!2800907 () Bool)

(assert (=> b!6865796 (= res!2800907 (matchRSpec!3795 (regOne!33901 (regTwo!33901 (regOne!33901 r!7292))) s!2326))))

(assert (=> b!6865796 (=> res!2800907 e!4139037)))

(declare-fun bm!625338 () Bool)

(declare-fun call!625343 () Bool)

(assert (=> bm!625338 (= call!625343 (isEmpty!38620 s!2326))))

(declare-fun d!2156991 () Bool)

(declare-fun c!1277952 () Bool)

(assert (=> d!2156991 (= c!1277952 (is-EmptyExpr!16694 (regTwo!33901 (regOne!33901 r!7292))))))

(assert (=> d!2156991 (= (matchRSpec!3795 (regTwo!33901 (regOne!33901 r!7292)) s!2326) e!4139035)))

(declare-fun b!6865797 () Bool)

(declare-fun c!1277949 () Bool)

(assert (=> b!6865797 (= c!1277949 (is-ElementMatch!16694 (regTwo!33901 (regOne!33901 r!7292))))))

(assert (=> b!6865797 (= e!4139034 e!4139038)))

(declare-fun b!6865798 () Bool)

(assert (=> b!6865798 (= e!4139038 (= s!2326 (Cons!66259 (c!1277522 (regTwo!33901 (regOne!33901 r!7292))) Nil!66259)))))

(declare-fun b!6865799 () Bool)

(declare-fun res!2800908 () Bool)

(assert (=> b!6865799 (=> res!2800908 e!4139036)))

(assert (=> b!6865799 (= res!2800908 call!625343)))

(assert (=> b!6865799 (= e!4139033 e!4139036)))

(declare-fun bm!625339 () Bool)

(assert (=> bm!625339 (= call!625344 (Exists!3754 (ite c!1277951 lambda!388507 lambda!388508)))))

(declare-fun b!6865800 () Bool)

(assert (=> b!6865800 (= e!4139037 (matchRSpec!3795 (regTwo!33901 (regTwo!33901 (regOne!33901 r!7292))) s!2326))))

(declare-fun b!6865801 () Bool)

(assert (=> b!6865801 (= e!4139035 call!625343)))

(assert (= (and d!2156991 c!1277952) b!6865801))

(assert (= (and d!2156991 (not c!1277952)) b!6865792))

(assert (= (and b!6865792 res!2800909) b!6865797))

(assert (= (and b!6865797 c!1277949) b!6865798))

(assert (= (and b!6865797 (not c!1277949)) b!6865793))

(assert (= (and b!6865793 c!1277950) b!6865796))

(assert (= (and b!6865793 (not c!1277950)) b!6865791))

(assert (= (and b!6865796 (not res!2800907)) b!6865800))

(assert (= (and b!6865791 c!1277951) b!6865799))

(assert (= (and b!6865791 (not c!1277951)) b!6865795))

(assert (= (and b!6865799 (not res!2800908)) b!6865794))

(assert (= (or b!6865794 b!6865795) bm!625339))

(assert (= (or b!6865801 b!6865799) bm!625338))

(declare-fun m!7598480 () Bool)

(assert (=> b!6865796 m!7598480))

(assert (=> bm!625338 m!7597206))

(declare-fun m!7598482 () Bool)

(assert (=> bm!625339 m!7598482))

(declare-fun m!7598484 () Bool)

(assert (=> b!6865800 m!7598484))

(assert (=> b!6864677 d!2156991))

(declare-fun d!2156993 () Bool)

(assert (=> d!2156993 (= (nullable!6655 (derivativeStep!5337 r!7292 (head!13772 s!2326))) (nullableFct!2529 (derivativeStep!5337 r!7292 (head!13772 s!2326))))))

(declare-fun bs!1835239 () Bool)

(assert (= bs!1835239 d!2156993))

(assert (=> bs!1835239 m!7597268))

(declare-fun m!7598486 () Bool)

(assert (=> bs!1835239 m!7598486))

(assert (=> b!6864686 d!2156993))

(declare-fun bs!1835240 () Bool)

(declare-fun d!2156995 () Bool)

(assert (= bs!1835240 (and d!2156995 d!2156621)))

(declare-fun lambda!388509 () Int)

(assert (=> bs!1835240 (not (= lambda!388509 lambda!388454))))

(declare-fun bs!1835241 () Bool)

(assert (= bs!1835241 (and d!2156995 d!2156909)))

(assert (=> bs!1835241 (not (= lambda!388509 lambda!388499))))

(declare-fun bs!1835242 () Bool)

(assert (= bs!1835242 (and d!2156995 d!2156377)))

(assert (=> bs!1835242 (= (= lambda!388447 lambda!388339) (= lambda!388509 lambda!388363))))

(declare-fun bs!1835243 () Bool)

(assert (= bs!1835243 (and d!2156995 d!2156379)))

(assert (=> bs!1835243 (not (= lambda!388509 lambda!388366))))

(declare-fun bs!1835244 () Bool)

(assert (= bs!1835244 (and d!2156995 d!2156923)))

(assert (=> bs!1835244 (not (= lambda!388509 lambda!388500))))

(declare-fun bs!1835245 () Bool)

(assert (= bs!1835245 (and d!2156995 b!6864011)))

(assert (=> bs!1835245 (not (= lambda!388509 lambda!388339))))

(declare-fun bs!1835246 () Bool)

(assert (= bs!1835246 (and d!2156995 d!2156595)))

(assert (=> bs!1835246 (not (= lambda!388509 lambda!388447))))

(declare-fun bs!1835247 () Bool)

(assert (= bs!1835247 (and d!2156995 d!2156861)))

(assert (=> bs!1835247 (= (= lambda!388447 lambda!388339) (= lambda!388509 lambda!388493))))

(declare-fun bs!1835248 () Bool)

(assert (= bs!1835248 (and d!2156995 d!2156593)))

(assert (=> bs!1835248 (= (= lambda!388447 lambda!388366) (= lambda!388509 lambda!388444))))

(assert (=> d!2156995 true))

(assert (=> d!2156995 (< (dynLambda!26517 order!27717 lambda!388447) (dynLambda!26517 order!27717 lambda!388509))))

(assert (=> d!2156995 (= (exists!2821 zl!343 lambda!388447) (not (forall!15887 zl!343 lambda!388509)))))

(declare-fun bs!1835249 () Bool)

(assert (= bs!1835249 d!2156995))

(declare-fun m!7598488 () Bool)

(assert (=> bs!1835249 m!7598488))

(assert (=> d!2156595 d!2156995))

(declare-fun d!2156997 () Bool)

(declare-fun c!1277953 () Bool)

(assert (=> d!2156997 (= c!1277953 (is-Nil!66258 res!2800644))))

(declare-fun e!4139040 () (Set Context!12156))

(assert (=> d!2156997 (= (content!13007 res!2800644) e!4139040)))

(declare-fun b!6865802 () Bool)

(assert (=> b!6865802 (= e!4139040 (as set.empty (Set Context!12156)))))

(declare-fun b!6865803 () Bool)

(assert (=> b!6865803 (= e!4139040 (set.union (set.insert (h!72706 res!2800644) (as set.empty (Set Context!12156))) (content!13007 (t!380125 res!2800644))))))

(assert (= (and d!2156997 c!1277953) b!6865802))

(assert (= (and d!2156997 (not c!1277953)) b!6865803))

(declare-fun m!7598490 () Bool)

(assert (=> b!6865803 m!7598490))

(declare-fun m!7598492 () Bool)

(assert (=> b!6865803 m!7598492))

(assert (=> b!6864897 d!2156997))

(declare-fun d!2156999 () Bool)

(declare-fun c!1277954 () Bool)

(assert (=> d!2156999 (= c!1277954 (is-Nil!66258 res!2800554))))

(declare-fun e!4139041 () (Set Context!12156))

(assert (=> d!2156999 (= (content!13007 res!2800554) e!4139041)))

(declare-fun b!6865804 () Bool)

(assert (=> b!6865804 (= e!4139041 (as set.empty (Set Context!12156)))))

(declare-fun b!6865805 () Bool)

(assert (=> b!6865805 (= e!4139041 (set.union (set.insert (h!72706 res!2800554) (as set.empty (Set Context!12156))) (content!13007 (t!380125 res!2800554))))))

(assert (= (and d!2156999 c!1277954) b!6865804))

(assert (= (and d!2156999 (not c!1277954)) b!6865805))

(declare-fun m!7598494 () Bool)

(assert (=> b!6865805 m!7598494))

(declare-fun m!7598496 () Bool)

(assert (=> b!6865805 m!7598496))

(assert (=> b!6864646 d!2156999))

(declare-fun d!2157001 () Bool)

(declare-fun lt!2457931 () Int)

(assert (=> d!2157001 (>= lt!2457931 0)))

(declare-fun e!4139042 () Int)

(assert (=> d!2157001 (= lt!2457931 e!4139042)))

(declare-fun c!1277955 () Bool)

(assert (=> d!2157001 (= c!1277955 (is-Cons!66257 (exprs!6578 (h!72706 (t!380125 lt!2457734)))))))

(assert (=> d!2157001 (= (contextDepthTotal!415 (h!72706 (t!380125 lt!2457734))) lt!2457931)))

(declare-fun b!6865806 () Bool)

(assert (=> b!6865806 (= e!4139042 (+ (regexDepthTotal!260 (h!72705 (exprs!6578 (h!72706 (t!380125 lt!2457734))))) (contextDepthTotal!415 (Context!12157 (t!380124 (exprs!6578 (h!72706 (t!380125 lt!2457734))))))))))

(declare-fun b!6865807 () Bool)

(assert (=> b!6865807 (= e!4139042 1)))

(assert (= (and d!2157001 c!1277955) b!6865806))

(assert (= (and d!2157001 (not c!1277955)) b!6865807))

(declare-fun m!7598498 () Bool)

(assert (=> b!6865806 m!7598498))

(declare-fun m!7598500 () Bool)

(assert (=> b!6865806 m!7598500))

(assert (=> b!6864855 d!2157001))

(declare-fun d!2157003 () Bool)

(declare-fun lt!2457932 () Int)

(assert (=> d!2157003 (>= lt!2457932 0)))

(declare-fun e!4139043 () Int)

(assert (=> d!2157003 (= lt!2457932 e!4139043)))

(declare-fun c!1277956 () Bool)

(assert (=> d!2157003 (= c!1277956 (is-Cons!66258 (t!380125 (t!380125 lt!2457734))))))

(assert (=> d!2157003 (= (zipperDepthTotal!443 (t!380125 (t!380125 lt!2457734))) lt!2457932)))

(declare-fun b!6865808 () Bool)

(assert (=> b!6865808 (= e!4139043 (+ (contextDepthTotal!415 (h!72706 (t!380125 (t!380125 lt!2457734)))) (zipperDepthTotal!443 (t!380125 (t!380125 (t!380125 lt!2457734))))))))

(declare-fun b!6865809 () Bool)

(assert (=> b!6865809 (= e!4139043 0)))

(assert (= (and d!2157003 c!1277956) b!6865808))

(assert (= (and d!2157003 (not c!1277956)) b!6865809))

(declare-fun m!7598502 () Bool)

(assert (=> b!6865808 m!7598502))

(declare-fun m!7598504 () Bool)

(assert (=> b!6865808 m!7598504))

(assert (=> b!6864855 d!2157003))

(declare-fun d!2157005 () Bool)

(assert (=> d!2157005 (= (isEmpty!38619 (t!380124 (unfocusZipperList!2111 zl!343))) (is-Nil!66257 (t!380124 (unfocusZipperList!2111 zl!343))))))

(assert (=> b!6864758 d!2157005))

(assert (=> d!2156501 d!2156553))

(declare-fun b!6865810 () Bool)

(declare-fun res!2800912 () Bool)

(declare-fun e!4139044 () Bool)

(assert (=> b!6865810 (=> res!2800912 e!4139044)))

(assert (=> b!6865810 (= res!2800912 (not (is-Concat!25539 (derivativeStep!5337 r!7292 (head!13772 s!2326)))))))

(declare-fun e!4139045 () Bool)

(assert (=> b!6865810 (= e!4139045 e!4139044)))

(declare-fun b!6865812 () Bool)

(declare-fun e!4139046 () Bool)

(assert (=> b!6865812 (= e!4139044 e!4139046)))

(declare-fun res!2800914 () Bool)

(assert (=> b!6865812 (=> (not res!2800914) (not e!4139046))))

(declare-fun call!625346 () Bool)

(assert (=> b!6865812 (= res!2800914 call!625346)))

(declare-fun b!6865813 () Bool)

(declare-fun res!2800913 () Bool)

(declare-fun e!4139050 () Bool)

(assert (=> b!6865813 (=> (not res!2800913) (not e!4139050))))

(assert (=> b!6865813 (= res!2800913 call!625346)))

(assert (=> b!6865813 (= e!4139045 e!4139050)))

(declare-fun b!6865814 () Bool)

(declare-fun e!4139047 () Bool)

(declare-fun call!625347 () Bool)

(assert (=> b!6865814 (= e!4139047 call!625347)))

(declare-fun b!6865815 () Bool)

(declare-fun e!4139049 () Bool)

(assert (=> b!6865815 (= e!4139049 e!4139045)))

(declare-fun c!1277958 () Bool)

(assert (=> b!6865815 (= c!1277958 (is-Union!16694 (derivativeStep!5337 r!7292 (head!13772 s!2326))))))

(declare-fun bm!625340 () Bool)

(declare-fun call!625345 () Bool)

(assert (=> bm!625340 (= call!625345 call!625347)))

(declare-fun c!1277957 () Bool)

(declare-fun bm!625341 () Bool)

(assert (=> bm!625341 (= call!625347 (validRegex!8430 (ite c!1277957 (reg!17023 (derivativeStep!5337 r!7292 (head!13772 s!2326))) (ite c!1277958 (regTwo!33901 (derivativeStep!5337 r!7292 (head!13772 s!2326))) (regTwo!33900 (derivativeStep!5337 r!7292 (head!13772 s!2326)))))))))

(declare-fun b!6865816 () Bool)

(assert (=> b!6865816 (= e!4139049 e!4139047)))

(declare-fun res!2800911 () Bool)

(assert (=> b!6865816 (= res!2800911 (not (nullable!6655 (reg!17023 (derivativeStep!5337 r!7292 (head!13772 s!2326))))))))

(assert (=> b!6865816 (=> (not res!2800911) (not e!4139047))))

(declare-fun b!6865817 () Bool)

(declare-fun e!4139048 () Bool)

(assert (=> b!6865817 (= e!4139048 e!4139049)))

(assert (=> b!6865817 (= c!1277957 (is-Star!16694 (derivativeStep!5337 r!7292 (head!13772 s!2326))))))

(declare-fun b!6865811 () Bool)

(assert (=> b!6865811 (= e!4139050 call!625345)))

(declare-fun d!2157007 () Bool)

(declare-fun res!2800910 () Bool)

(assert (=> d!2157007 (=> res!2800910 e!4139048)))

(assert (=> d!2157007 (= res!2800910 (is-ElementMatch!16694 (derivativeStep!5337 r!7292 (head!13772 s!2326))))))

(assert (=> d!2157007 (= (validRegex!8430 (derivativeStep!5337 r!7292 (head!13772 s!2326))) e!4139048)))

(declare-fun bm!625342 () Bool)

(assert (=> bm!625342 (= call!625346 (validRegex!8430 (ite c!1277958 (regOne!33901 (derivativeStep!5337 r!7292 (head!13772 s!2326))) (regOne!33900 (derivativeStep!5337 r!7292 (head!13772 s!2326))))))))

(declare-fun b!6865818 () Bool)

(assert (=> b!6865818 (= e!4139046 call!625345)))

(assert (= (and d!2157007 (not res!2800910)) b!6865817))

(assert (= (and b!6865817 c!1277957) b!6865816))

(assert (= (and b!6865817 (not c!1277957)) b!6865815))

(assert (= (and b!6865816 res!2800911) b!6865814))

(assert (= (and b!6865815 c!1277958) b!6865813))

(assert (= (and b!6865815 (not c!1277958)) b!6865810))

(assert (= (and b!6865813 res!2800913) b!6865811))

(assert (= (and b!6865810 (not res!2800912)) b!6865812))

(assert (= (and b!6865812 res!2800914) b!6865818))

(assert (= (or b!6865811 b!6865818) bm!625340))

(assert (= (or b!6865813 b!6865812) bm!625342))

(assert (= (or b!6865814 bm!625340) bm!625341))

(declare-fun m!7598506 () Bool)

(assert (=> bm!625341 m!7598506))

(declare-fun m!7598508 () Bool)

(assert (=> b!6865816 m!7598508))

(declare-fun m!7598510 () Bool)

(assert (=> bm!625342 m!7598510))

(assert (=> d!2156501 d!2157007))

(declare-fun d!2157009 () Bool)

(declare-fun lt!2457933 () Bool)

(assert (=> d!2157009 (= lt!2457933 (set.member lt!2457872 (content!13007 (t!380125 zl!343))))))

(declare-fun e!4139051 () Bool)

(assert (=> d!2157009 (= lt!2457933 e!4139051)))

(declare-fun res!2800915 () Bool)

(assert (=> d!2157009 (=> (not res!2800915) (not e!4139051))))

(assert (=> d!2157009 (= res!2800915 (is-Cons!66258 (t!380125 zl!343)))))

(assert (=> d!2157009 (= (contains!20352 (t!380125 zl!343) lt!2457872) lt!2457933)))

(declare-fun b!6865819 () Bool)

(declare-fun e!4139052 () Bool)

(assert (=> b!6865819 (= e!4139051 e!4139052)))

(declare-fun res!2800916 () Bool)

(assert (=> b!6865819 (=> res!2800916 e!4139052)))

(assert (=> b!6865819 (= res!2800916 (= (h!72706 (t!380125 zl!343)) lt!2457872))))

(declare-fun b!6865820 () Bool)

(assert (=> b!6865820 (= e!4139052 (contains!20352 (t!380125 (t!380125 zl!343)) lt!2457872))))

(assert (= (and d!2157009 res!2800915) b!6865819))

(assert (= (and b!6865819 (not res!2800916)) b!6865820))

(assert (=> d!2157009 m!7597670))

(declare-fun m!7598512 () Bool)

(assert (=> d!2157009 m!7598512))

(declare-fun m!7598514 () Bool)

(assert (=> b!6865820 m!7598514))

(assert (=> b!6864784 d!2157009))

(declare-fun b!6865821 () Bool)

(declare-fun res!2800919 () Bool)

(declare-fun e!4139053 () Bool)

(assert (=> b!6865821 (=> res!2800919 e!4139053)))

(assert (=> b!6865821 (= res!2800919 (not (is-Concat!25539 (ite c!1277714 (regOne!33901 (h!72705 (exprs!6578 lt!2457736))) (regOne!33900 (h!72705 (exprs!6578 lt!2457736)))))))))

(declare-fun e!4139054 () Bool)

(assert (=> b!6865821 (= e!4139054 e!4139053)))

(declare-fun b!6865823 () Bool)

(declare-fun e!4139055 () Bool)

(assert (=> b!6865823 (= e!4139053 e!4139055)))

(declare-fun res!2800921 () Bool)

(assert (=> b!6865823 (=> (not res!2800921) (not e!4139055))))

(declare-fun call!625349 () Bool)

(assert (=> b!6865823 (= res!2800921 call!625349)))

(declare-fun b!6865824 () Bool)

(declare-fun res!2800920 () Bool)

(declare-fun e!4139059 () Bool)

(assert (=> b!6865824 (=> (not res!2800920) (not e!4139059))))

(assert (=> b!6865824 (= res!2800920 call!625349)))

(assert (=> b!6865824 (= e!4139054 e!4139059)))

(declare-fun b!6865825 () Bool)

(declare-fun e!4139056 () Bool)

(declare-fun call!625350 () Bool)

(assert (=> b!6865825 (= e!4139056 call!625350)))

(declare-fun b!6865826 () Bool)

(declare-fun e!4139058 () Bool)

(assert (=> b!6865826 (= e!4139058 e!4139054)))

(declare-fun c!1277960 () Bool)

(assert (=> b!6865826 (= c!1277960 (is-Union!16694 (ite c!1277714 (regOne!33901 (h!72705 (exprs!6578 lt!2457736))) (regOne!33900 (h!72705 (exprs!6578 lt!2457736))))))))

(declare-fun bm!625343 () Bool)

(declare-fun call!625348 () Bool)

(assert (=> bm!625343 (= call!625348 call!625350)))

(declare-fun c!1277959 () Bool)

(declare-fun bm!625344 () Bool)

(assert (=> bm!625344 (= call!625350 (validRegex!8430 (ite c!1277959 (reg!17023 (ite c!1277714 (regOne!33901 (h!72705 (exprs!6578 lt!2457736))) (regOne!33900 (h!72705 (exprs!6578 lt!2457736))))) (ite c!1277960 (regTwo!33901 (ite c!1277714 (regOne!33901 (h!72705 (exprs!6578 lt!2457736))) (regOne!33900 (h!72705 (exprs!6578 lt!2457736))))) (regTwo!33900 (ite c!1277714 (regOne!33901 (h!72705 (exprs!6578 lt!2457736))) (regOne!33900 (h!72705 (exprs!6578 lt!2457736)))))))))))

(declare-fun b!6865827 () Bool)

(assert (=> b!6865827 (= e!4139058 e!4139056)))

(declare-fun res!2800918 () Bool)

(assert (=> b!6865827 (= res!2800918 (not (nullable!6655 (reg!17023 (ite c!1277714 (regOne!33901 (h!72705 (exprs!6578 lt!2457736))) (regOne!33900 (h!72705 (exprs!6578 lt!2457736))))))))))

(assert (=> b!6865827 (=> (not res!2800918) (not e!4139056))))

(declare-fun b!6865828 () Bool)

(declare-fun e!4139057 () Bool)

(assert (=> b!6865828 (= e!4139057 e!4139058)))

(assert (=> b!6865828 (= c!1277959 (is-Star!16694 (ite c!1277714 (regOne!33901 (h!72705 (exprs!6578 lt!2457736))) (regOne!33900 (h!72705 (exprs!6578 lt!2457736))))))))

(declare-fun b!6865822 () Bool)

(assert (=> b!6865822 (= e!4139059 call!625348)))

(declare-fun d!2157011 () Bool)

(declare-fun res!2800917 () Bool)

(assert (=> d!2157011 (=> res!2800917 e!4139057)))

(assert (=> d!2157011 (= res!2800917 (is-ElementMatch!16694 (ite c!1277714 (regOne!33901 (h!72705 (exprs!6578 lt!2457736))) (regOne!33900 (h!72705 (exprs!6578 lt!2457736))))))))

(assert (=> d!2157011 (= (validRegex!8430 (ite c!1277714 (regOne!33901 (h!72705 (exprs!6578 lt!2457736))) (regOne!33900 (h!72705 (exprs!6578 lt!2457736))))) e!4139057)))

(declare-fun bm!625345 () Bool)

(assert (=> bm!625345 (= call!625349 (validRegex!8430 (ite c!1277960 (regOne!33901 (ite c!1277714 (regOne!33901 (h!72705 (exprs!6578 lt!2457736))) (regOne!33900 (h!72705 (exprs!6578 lt!2457736))))) (regOne!33900 (ite c!1277714 (regOne!33901 (h!72705 (exprs!6578 lt!2457736))) (regOne!33900 (h!72705 (exprs!6578 lt!2457736))))))))))

(declare-fun b!6865829 () Bool)

(assert (=> b!6865829 (= e!4139055 call!625348)))

(assert (= (and d!2157011 (not res!2800917)) b!6865828))

(assert (= (and b!6865828 c!1277959) b!6865827))

(assert (= (and b!6865828 (not c!1277959)) b!6865826))

(assert (= (and b!6865827 res!2800918) b!6865825))

(assert (= (and b!6865826 c!1277960) b!6865824))

(assert (= (and b!6865826 (not c!1277960)) b!6865821))

(assert (= (and b!6865824 res!2800920) b!6865822))

(assert (= (and b!6865821 (not res!2800919)) b!6865823))

(assert (= (and b!6865823 res!2800921) b!6865829))

(assert (= (or b!6865822 b!6865829) bm!625343))

(assert (= (or b!6865824 b!6865823) bm!625345))

(assert (= (or b!6865825 bm!625343) bm!625344))

(declare-fun m!7598516 () Bool)

(assert (=> bm!625344 m!7598516))

(declare-fun m!7598518 () Bool)

(assert (=> b!6865827 m!7598518))

(declare-fun m!7598520 () Bool)

(assert (=> bm!625345 m!7598520))

(assert (=> bm!625204 d!2157011))

(declare-fun d!2157013 () Bool)

(assert (=> d!2157013 (= (nullable!6655 (reg!17023 lt!2457778)) (nullableFct!2529 (reg!17023 lt!2457778)))))

(declare-fun bs!1835250 () Bool)

(assert (= bs!1835250 d!2157013))

(declare-fun m!7598522 () Bool)

(assert (=> bs!1835250 m!7598522))

(assert (=> b!6864653 d!2157013))

(declare-fun d!2157015 () Bool)

(declare-fun res!2800922 () Bool)

(declare-fun e!4139060 () Bool)

(assert (=> d!2157015 (=> res!2800922 e!4139060)))

(assert (=> d!2157015 (= res!2800922 (is-Nil!66257 (exprs!6578 (h!72706 (t!380125 zl!343)))))))

(assert (=> d!2157015 (= (forall!15885 (exprs!6578 (h!72706 (t!380125 zl!343))) lambda!388426) e!4139060)))

(declare-fun b!6865830 () Bool)

(declare-fun e!4139061 () Bool)

(assert (=> b!6865830 (= e!4139060 e!4139061)))

(declare-fun res!2800923 () Bool)

(assert (=> b!6865830 (=> (not res!2800923) (not e!4139061))))

(assert (=> b!6865830 (= res!2800923 (dynLambda!26518 lambda!388426 (h!72705 (exprs!6578 (h!72706 (t!380125 zl!343))))))))

(declare-fun b!6865831 () Bool)

(assert (=> b!6865831 (= e!4139061 (forall!15885 (t!380124 (exprs!6578 (h!72706 (t!380125 zl!343)))) lambda!388426))))

(assert (= (and d!2157015 (not res!2800922)) b!6865830))

(assert (= (and b!6865830 res!2800923) b!6865831))

(declare-fun b_lambda!259613 () Bool)

(assert (=> (not b_lambda!259613) (not b!6865830)))

(declare-fun m!7598524 () Bool)

(assert (=> b!6865830 m!7598524))

(declare-fun m!7598526 () Bool)

(assert (=> b!6865831 m!7598526))

(assert (=> d!2156489 d!2157015))

(declare-fun bs!1835251 () Bool)

(declare-fun d!2157017 () Bool)

(assert (= bs!1835251 (and d!2157017 d!2156995)))

(declare-fun lambda!388510 () Int)

(assert (=> bs!1835251 (not (= lambda!388510 lambda!388509))))

(declare-fun bs!1835252 () Bool)

(assert (= bs!1835252 (and d!2157017 d!2156621)))

(assert (=> bs!1835252 (= lambda!388510 lambda!388454)))

(declare-fun bs!1835253 () Bool)

(assert (= bs!1835253 (and d!2157017 d!2156909)))

(assert (=> bs!1835253 (= lambda!388510 lambda!388499)))

(declare-fun bs!1835254 () Bool)

(assert (= bs!1835254 (and d!2157017 d!2156377)))

(assert (=> bs!1835254 (not (= lambda!388510 lambda!388363))))

(declare-fun bs!1835255 () Bool)

(assert (= bs!1835255 (and d!2157017 d!2156379)))

(assert (=> bs!1835255 (not (= lambda!388510 lambda!388366))))

(declare-fun bs!1835256 () Bool)

(assert (= bs!1835256 (and d!2157017 d!2156923)))

(assert (=> bs!1835256 (= lambda!388510 lambda!388500)))

(declare-fun bs!1835257 () Bool)

(assert (= bs!1835257 (and d!2157017 b!6864011)))

(assert (=> bs!1835257 (not (= lambda!388510 lambda!388339))))

(declare-fun bs!1835258 () Bool)

(assert (= bs!1835258 (and d!2157017 d!2156595)))

(assert (=> bs!1835258 (not (= lambda!388510 lambda!388447))))

(declare-fun bs!1835259 () Bool)

(assert (= bs!1835259 (and d!2157017 d!2156861)))

(assert (=> bs!1835259 (not (= lambda!388510 lambda!388493))))

(declare-fun bs!1835260 () Bool)

(assert (= bs!1835260 (and d!2157017 d!2156593)))

(assert (=> bs!1835260 (not (= lambda!388510 lambda!388444))))

(assert (=> d!2157017 (= (nullableZipper!2367 (set.insert lt!2457793 (as set.empty (Set Context!12156)))) (exists!2824 (set.insert lt!2457793 (as set.empty (Set Context!12156))) lambda!388510))))

(declare-fun bs!1835261 () Bool)

(assert (= bs!1835261 d!2157017))

(assert (=> bs!1835261 m!7597326))

(declare-fun m!7598528 () Bool)

(assert (=> bs!1835261 m!7598528))

(assert (=> b!6864723 d!2157017))

(declare-fun b!6865832 () Bool)

(declare-fun res!2800926 () Bool)

(declare-fun e!4139062 () Bool)

(assert (=> b!6865832 (=> res!2800926 e!4139062)))

(assert (=> b!6865832 (= res!2800926 (not (is-Concat!25539 (h!72705 (exprs!6578 (h!72706 zl!343))))))))

(declare-fun e!4139063 () Bool)

(assert (=> b!6865832 (= e!4139063 e!4139062)))

(declare-fun b!6865834 () Bool)

(declare-fun e!4139064 () Bool)

(assert (=> b!6865834 (= e!4139062 e!4139064)))

(declare-fun res!2800928 () Bool)

(assert (=> b!6865834 (=> (not res!2800928) (not e!4139064))))

(declare-fun call!625352 () Bool)

(assert (=> b!6865834 (= res!2800928 call!625352)))

(declare-fun b!6865835 () Bool)

(declare-fun res!2800927 () Bool)

(declare-fun e!4139068 () Bool)

(assert (=> b!6865835 (=> (not res!2800927) (not e!4139068))))

(assert (=> b!6865835 (= res!2800927 call!625352)))

(assert (=> b!6865835 (= e!4139063 e!4139068)))

(declare-fun b!6865836 () Bool)

(declare-fun e!4139065 () Bool)

(declare-fun call!625353 () Bool)

(assert (=> b!6865836 (= e!4139065 call!625353)))

(declare-fun b!6865837 () Bool)

(declare-fun e!4139067 () Bool)

(assert (=> b!6865837 (= e!4139067 e!4139063)))

(declare-fun c!1277962 () Bool)

(assert (=> b!6865837 (= c!1277962 (is-Union!16694 (h!72705 (exprs!6578 (h!72706 zl!343)))))))

(declare-fun bm!625346 () Bool)

(declare-fun call!625351 () Bool)

(assert (=> bm!625346 (= call!625351 call!625353)))

(declare-fun c!1277961 () Bool)

(declare-fun bm!625347 () Bool)

(assert (=> bm!625347 (= call!625353 (validRegex!8430 (ite c!1277961 (reg!17023 (h!72705 (exprs!6578 (h!72706 zl!343)))) (ite c!1277962 (regTwo!33901 (h!72705 (exprs!6578 (h!72706 zl!343)))) (regTwo!33900 (h!72705 (exprs!6578 (h!72706 zl!343))))))))))

(declare-fun b!6865838 () Bool)

(assert (=> b!6865838 (= e!4139067 e!4139065)))

(declare-fun res!2800925 () Bool)

(assert (=> b!6865838 (= res!2800925 (not (nullable!6655 (reg!17023 (h!72705 (exprs!6578 (h!72706 zl!343)))))))))

(assert (=> b!6865838 (=> (not res!2800925) (not e!4139065))))

(declare-fun b!6865839 () Bool)

(declare-fun e!4139066 () Bool)

(assert (=> b!6865839 (= e!4139066 e!4139067)))

(assert (=> b!6865839 (= c!1277961 (is-Star!16694 (h!72705 (exprs!6578 (h!72706 zl!343)))))))

(declare-fun b!6865833 () Bool)

(assert (=> b!6865833 (= e!4139068 call!625351)))

(declare-fun d!2157019 () Bool)

(declare-fun res!2800924 () Bool)

(assert (=> d!2157019 (=> res!2800924 e!4139066)))

(assert (=> d!2157019 (= res!2800924 (is-ElementMatch!16694 (h!72705 (exprs!6578 (h!72706 zl!343)))))))

(assert (=> d!2157019 (= (validRegex!8430 (h!72705 (exprs!6578 (h!72706 zl!343)))) e!4139066)))

(declare-fun bm!625348 () Bool)

(assert (=> bm!625348 (= call!625352 (validRegex!8430 (ite c!1277962 (regOne!33901 (h!72705 (exprs!6578 (h!72706 zl!343)))) (regOne!33900 (h!72705 (exprs!6578 (h!72706 zl!343)))))))))

(declare-fun b!6865840 () Bool)

(assert (=> b!6865840 (= e!4139064 call!625351)))

(assert (= (and d!2157019 (not res!2800924)) b!6865839))

(assert (= (and b!6865839 c!1277961) b!6865838))

(assert (= (and b!6865839 (not c!1277961)) b!6865837))

(assert (= (and b!6865838 res!2800925) b!6865836))

(assert (= (and b!6865837 c!1277962) b!6865835))

(assert (= (and b!6865837 (not c!1277962)) b!6865832))

(assert (= (and b!6865835 res!2800927) b!6865833))

(assert (= (and b!6865832 (not res!2800926)) b!6865834))

(assert (= (and b!6865834 res!2800928) b!6865840))

(assert (= (or b!6865833 b!6865840) bm!625346))

(assert (= (or b!6865835 b!6865834) bm!625348))

(assert (= (or b!6865836 bm!625346) bm!625347))

(declare-fun m!7598530 () Bool)

(assert (=> bm!625347 m!7598530))

(declare-fun m!7598532 () Bool)

(assert (=> b!6865838 m!7598532))

(declare-fun m!7598534 () Bool)

(assert (=> bm!625348 m!7598534))

(assert (=> bs!1834715 d!2157019))

(declare-fun d!2157021 () Bool)

(declare-fun res!2800929 () Bool)

(declare-fun e!4139069 () Bool)

(assert (=> d!2157021 (=> res!2800929 e!4139069)))

(assert (=> d!2157021 (= res!2800929 (is-Nil!66257 (t!380124 (exprs!6578 lt!2457736))))))

(assert (=> d!2157021 (= (forall!15885 (t!380124 (exprs!6578 lt!2457736)) lambda!388360) e!4139069)))

(declare-fun b!6865841 () Bool)

(declare-fun e!4139070 () Bool)

(assert (=> b!6865841 (= e!4139069 e!4139070)))

(declare-fun res!2800930 () Bool)

(assert (=> b!6865841 (=> (not res!2800930) (not e!4139070))))

(assert (=> b!6865841 (= res!2800930 (dynLambda!26518 lambda!388360 (h!72705 (t!380124 (exprs!6578 lt!2457736)))))))

(declare-fun b!6865842 () Bool)

(assert (=> b!6865842 (= e!4139070 (forall!15885 (t!380124 (t!380124 (exprs!6578 lt!2457736))) lambda!388360))))

(assert (= (and d!2157021 (not res!2800929)) b!6865841))

(assert (= (and b!6865841 res!2800930) b!6865842))

(declare-fun b_lambda!259615 () Bool)

(assert (=> (not b_lambda!259615) (not b!6865841)))

(declare-fun m!7598536 () Bool)

(assert (=> b!6865841 m!7598536))

(declare-fun m!7598538 () Bool)

(assert (=> b!6865842 m!7598538))

(assert (=> b!6864657 d!2157021))

(declare-fun d!2157023 () Bool)

(declare-fun c!1277963 () Bool)

(assert (=> d!2157023 (= c!1277963 (isEmpty!38620 s!2326))))

(declare-fun e!4139071 () Bool)

(assert (=> d!2157023 (= (matchZipper!2660 (set.insert lt!2457872 (as set.empty (Set Context!12156))) s!2326) e!4139071)))

(declare-fun b!6865843 () Bool)

(assert (=> b!6865843 (= e!4139071 (nullableZipper!2367 (set.insert lt!2457872 (as set.empty (Set Context!12156)))))))

(declare-fun b!6865844 () Bool)

(assert (=> b!6865844 (= e!4139071 (matchZipper!2660 (derivationStepZipper!2614 (set.insert lt!2457872 (as set.empty (Set Context!12156))) (head!13772 s!2326)) (tail!12830 s!2326)))))

(assert (= (and d!2157023 c!1277963) b!6865843))

(assert (= (and d!2157023 (not c!1277963)) b!6865844))

(assert (=> d!2157023 m!7597206))

(assert (=> b!6865843 m!7597756))

(declare-fun m!7598540 () Bool)

(assert (=> b!6865843 m!7598540))

(assert (=> b!6865844 m!7597210))

(assert (=> b!6865844 m!7597756))

(assert (=> b!6865844 m!7597210))

(declare-fun m!7598542 () Bool)

(assert (=> b!6865844 m!7598542))

(assert (=> b!6865844 m!7597214))

(assert (=> b!6865844 m!7598542))

(assert (=> b!6865844 m!7597214))

(declare-fun m!7598544 () Bool)

(assert (=> b!6865844 m!7598544))

(assert (=> bs!1834718 d!2157023))

(declare-fun d!2157025 () Bool)

(assert (=> d!2157025 (= (nullable!6655 (regOne!33900 r!7292)) (nullableFct!2529 (regOne!33900 r!7292)))))

(declare-fun bs!1835262 () Bool)

(assert (= bs!1835262 d!2157025))

(declare-fun m!7598546 () Bool)

(assert (=> bs!1835262 m!7598546))

(assert (=> b!6864721 d!2157025))

(assert (=> b!6864769 d!2156571))

(declare-fun d!2157027 () Bool)

(assert (=> d!2157027 (= (isEmpty!38619 (t!380124 (t!380124 (exprs!6578 lt!2457736)))) (is-Nil!66257 (t!380124 (t!380124 (exprs!6578 lt!2457736)))))))

(assert (=> b!6864773 d!2157027))

(declare-fun d!2157029 () Bool)

(declare-fun c!1277964 () Bool)

(assert (=> d!2157029 (= c!1277964 (isEmpty!38620 s!2326))))

(declare-fun e!4139072 () Bool)

(assert (=> d!2157029 (= (matchZipper!2660 (set.insert (h!72706 (t!380125 zl!343)) (as set.empty (Set Context!12156))) s!2326) e!4139072)))

(declare-fun b!6865845 () Bool)

(assert (=> b!6865845 (= e!4139072 (nullableZipper!2367 (set.insert (h!72706 (t!380125 zl!343)) (as set.empty (Set Context!12156)))))))

(declare-fun b!6865846 () Bool)

(assert (=> b!6865846 (= e!4139072 (matchZipper!2660 (derivationStepZipper!2614 (set.insert (h!72706 (t!380125 zl!343)) (as set.empty (Set Context!12156))) (head!13772 s!2326)) (tail!12830 s!2326)))))

(assert (= (and d!2157029 c!1277964) b!6865845))

(assert (= (and d!2157029 (not c!1277964)) b!6865846))

(assert (=> d!2157029 m!7597206))

(assert (=> b!6865845 m!7597744))

(declare-fun m!7598548 () Bool)

(assert (=> b!6865845 m!7598548))

(assert (=> b!6865846 m!7597210))

(assert (=> b!6865846 m!7597744))

(assert (=> b!6865846 m!7597210))

(declare-fun m!7598550 () Bool)

(assert (=> b!6865846 m!7598550))

(assert (=> b!6865846 m!7597214))

(assert (=> b!6865846 m!7598550))

(assert (=> b!6865846 m!7597214))

(declare-fun m!7598552 () Bool)

(assert (=> b!6865846 m!7598552))

(assert (=> bs!1834710 d!2157029))

(declare-fun d!2157031 () Bool)

(assert (=> d!2157031 (= (nullable!6655 (reg!17023 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))) (nullableFct!2529 (reg!17023 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))))))

(declare-fun bs!1835263 () Bool)

(assert (= bs!1835263 d!2157031))

(declare-fun m!7598554 () Bool)

(assert (=> bs!1835263 m!7598554))

(assert (=> b!6864794 d!2157031))

(declare-fun bs!1835264 () Bool)

(declare-fun d!2157033 () Bool)

(assert (= bs!1835264 (and d!2157033 d!2156995)))

(declare-fun lambda!388511 () Int)

(assert (=> bs!1835264 (not (= lambda!388511 lambda!388509))))

(declare-fun bs!1835265 () Bool)

(assert (= bs!1835265 (and d!2157033 d!2156621)))

(assert (=> bs!1835265 (= lambda!388511 lambda!388454)))

(declare-fun bs!1835266 () Bool)

(assert (= bs!1835266 (and d!2157033 d!2156909)))

(assert (=> bs!1835266 (= lambda!388511 lambda!388499)))

(declare-fun bs!1835267 () Bool)

(assert (= bs!1835267 (and d!2157033 d!2156377)))

(assert (=> bs!1835267 (not (= lambda!388511 lambda!388363))))

(declare-fun bs!1835268 () Bool)

(assert (= bs!1835268 (and d!2157033 d!2156379)))

(assert (=> bs!1835268 (not (= lambda!388511 lambda!388366))))

(declare-fun bs!1835269 () Bool)

(assert (= bs!1835269 (and d!2157033 d!2156923)))

(assert (=> bs!1835269 (= lambda!388511 lambda!388500)))

(declare-fun bs!1835270 () Bool)

(assert (= bs!1835270 (and d!2157033 b!6864011)))

(assert (=> bs!1835270 (not (= lambda!388511 lambda!388339))))

(declare-fun bs!1835271 () Bool)

(assert (= bs!1835271 (and d!2157033 d!2157017)))

(assert (=> bs!1835271 (= lambda!388511 lambda!388510)))

(declare-fun bs!1835272 () Bool)

(assert (= bs!1835272 (and d!2157033 d!2156595)))

(assert (=> bs!1835272 (not (= lambda!388511 lambda!388447))))

(declare-fun bs!1835273 () Bool)

(assert (= bs!1835273 (and d!2157033 d!2156861)))

(assert (=> bs!1835273 (not (= lambda!388511 lambda!388493))))

(declare-fun bs!1835274 () Bool)

(assert (= bs!1835274 (and d!2157033 d!2156593)))

(assert (=> bs!1835274 (not (= lambda!388511 lambda!388444))))

(assert (=> d!2157033 (= (nullableZipper!2367 (set.insert (h!72706 zl!343) (as set.empty (Set Context!12156)))) (exists!2824 (set.insert (h!72706 zl!343) (as set.empty (Set Context!12156))) lambda!388511))))

(declare-fun bs!1835275 () Bool)

(assert (= bs!1835275 d!2157033))

(assert (=> bs!1835275 m!7597322))

(declare-fun m!7598556 () Bool)

(assert (=> bs!1835275 m!7598556))

(assert (=> b!6864912 d!2157033))

(assert (=> b!6864689 d!2156843))

(declare-fun b!6865847 () Bool)

(declare-fun res!2800933 () Bool)

(declare-fun e!4139073 () Bool)

(assert (=> b!6865847 (=> res!2800933 e!4139073)))

(assert (=> b!6865847 (= res!2800933 (not (is-Concat!25539 (ite c!1277708 (reg!17023 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))) (ite c!1277709 (regTwo!33901 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))) (regTwo!33900 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))))))))))

(declare-fun e!4139074 () Bool)

(assert (=> b!6865847 (= e!4139074 e!4139073)))

(declare-fun b!6865849 () Bool)

(declare-fun e!4139075 () Bool)

(assert (=> b!6865849 (= e!4139073 e!4139075)))

(declare-fun res!2800935 () Bool)

(assert (=> b!6865849 (=> (not res!2800935) (not e!4139075))))

(declare-fun call!625355 () Bool)

(assert (=> b!6865849 (= res!2800935 call!625355)))

(declare-fun b!6865850 () Bool)

(declare-fun res!2800934 () Bool)

(declare-fun e!4139079 () Bool)

(assert (=> b!6865850 (=> (not res!2800934) (not e!4139079))))

(assert (=> b!6865850 (= res!2800934 call!625355)))

(assert (=> b!6865850 (= e!4139074 e!4139079)))

(declare-fun b!6865851 () Bool)

(declare-fun e!4139076 () Bool)

(declare-fun call!625356 () Bool)

(assert (=> b!6865851 (= e!4139076 call!625356)))

(declare-fun b!6865852 () Bool)

(declare-fun e!4139078 () Bool)

(assert (=> b!6865852 (= e!4139078 e!4139074)))

(declare-fun c!1277966 () Bool)

(assert (=> b!6865852 (= c!1277966 (is-Union!16694 (ite c!1277708 (reg!17023 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))) (ite c!1277709 (regTwo!33901 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))) (regTwo!33900 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292))))))))))

(declare-fun bm!625349 () Bool)

(declare-fun call!625354 () Bool)

(assert (=> bm!625349 (= call!625354 call!625356)))

(declare-fun c!1277965 () Bool)

(declare-fun bm!625350 () Bool)

(assert (=> bm!625350 (= call!625356 (validRegex!8430 (ite c!1277965 (reg!17023 (ite c!1277708 (reg!17023 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))) (ite c!1277709 (regTwo!33901 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))) (regTwo!33900 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292))))))) (ite c!1277966 (regTwo!33901 (ite c!1277708 (reg!17023 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))) (ite c!1277709 (regTwo!33901 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))) (regTwo!33900 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292))))))) (regTwo!33900 (ite c!1277708 (reg!17023 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))) (ite c!1277709 (regTwo!33901 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))) (regTwo!33900 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))))))))))))

(declare-fun b!6865853 () Bool)

(assert (=> b!6865853 (= e!4139078 e!4139076)))

(declare-fun res!2800932 () Bool)

(assert (=> b!6865853 (= res!2800932 (not (nullable!6655 (reg!17023 (ite c!1277708 (reg!17023 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))) (ite c!1277709 (regTwo!33901 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))) (regTwo!33900 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292))))))))))))

(assert (=> b!6865853 (=> (not res!2800932) (not e!4139076))))

(declare-fun b!6865854 () Bool)

(declare-fun e!4139077 () Bool)

(assert (=> b!6865854 (= e!4139077 e!4139078)))

(assert (=> b!6865854 (= c!1277965 (is-Star!16694 (ite c!1277708 (reg!17023 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))) (ite c!1277709 (regTwo!33901 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))) (regTwo!33900 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292))))))))))

(declare-fun b!6865848 () Bool)

(assert (=> b!6865848 (= e!4139079 call!625354)))

(declare-fun d!2157035 () Bool)

(declare-fun res!2800931 () Bool)

(assert (=> d!2157035 (=> res!2800931 e!4139077)))

(assert (=> d!2157035 (= res!2800931 (is-ElementMatch!16694 (ite c!1277708 (reg!17023 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))) (ite c!1277709 (regTwo!33901 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))) (regTwo!33900 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292))))))))))

(assert (=> d!2157035 (= (validRegex!8430 (ite c!1277708 (reg!17023 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))) (ite c!1277709 (regTwo!33901 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))) (regTwo!33900 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292))))))) e!4139077)))

(declare-fun bm!625351 () Bool)

(assert (=> bm!625351 (= call!625355 (validRegex!8430 (ite c!1277966 (regOne!33901 (ite c!1277708 (reg!17023 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))) (ite c!1277709 (regTwo!33901 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))) (regTwo!33900 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292))))))) (regOne!33900 (ite c!1277708 (reg!17023 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))) (ite c!1277709 (regTwo!33901 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292)))) (regTwo!33900 (ite c!1277530 (reg!17023 r!7292) (ite c!1277531 (regTwo!33901 r!7292) (regTwo!33900 r!7292))))))))))))

(declare-fun b!6865855 () Bool)

(assert (=> b!6865855 (= e!4139075 call!625354)))

(assert (= (and d!2157035 (not res!2800931)) b!6865854))

(assert (= (and b!6865854 c!1277965) b!6865853))

(assert (= (and b!6865854 (not c!1277965)) b!6865852))

(assert (= (and b!6865853 res!2800932) b!6865851))

(assert (= (and b!6865852 c!1277966) b!6865850))

(assert (= (and b!6865852 (not c!1277966)) b!6865847))

(assert (= (and b!6865850 res!2800934) b!6865848))

(assert (= (and b!6865847 (not res!2800933)) b!6865849))

(assert (= (and b!6865849 res!2800935) b!6865855))

(assert (= (or b!6865848 b!6865855) bm!625349))

(assert (= (or b!6865850 b!6865849) bm!625351))

(assert (= (or b!6865851 bm!625349) bm!625350))

(declare-fun m!7598558 () Bool)

(assert (=> bm!625350 m!7598558))

(declare-fun m!7598560 () Bool)

(assert (=> b!6865853 m!7598560))

(declare-fun m!7598562 () Bool)

(assert (=> bm!625351 m!7598562))

(assert (=> bm!625200 d!2157035))

(declare-fun d!2157037 () Bool)

(declare-fun lt!2457936 () Bool)

(assert (=> d!2157037 (= lt!2457936 (exists!2821 (toList!10478 z!1189) lambda!388454))))

(declare-fun choose!51171 ((Set Context!12156) Int) Bool)

(assert (=> d!2157037 (= lt!2457936 (choose!51171 z!1189 lambda!388454))))

(assert (=> d!2157037 (= (exists!2824 z!1189 lambda!388454) lt!2457936)))

(declare-fun bs!1835276 () Bool)

(assert (= bs!1835276 d!2157037))

(assert (=> bs!1835276 m!7597082))

(assert (=> bs!1835276 m!7597082))

(declare-fun m!7598564 () Bool)

(assert (=> bs!1835276 m!7598564))

(declare-fun m!7598566 () Bool)

(assert (=> bs!1835276 m!7598566))

(assert (=> d!2156621 d!2157037))

(declare-fun d!2157039 () Bool)

(assert (=> d!2157039 (= (Exists!3754 (ite c!1277749 lambda!388450 lambda!388451)) (choose!51168 (ite c!1277749 lambda!388450 lambda!388451)))))

(declare-fun bs!1835277 () Bool)

(assert (= bs!1835277 d!2157039))

(declare-fun m!7598568 () Bool)

(assert (=> bs!1835277 m!7598568))

(assert (=> bm!625221 d!2157039))

(declare-fun d!2157041 () Bool)

(assert (=> d!2157041 (= (isEmpty!38619 (tail!12829 (exprs!6578 (h!72706 zl!343)))) (is-Nil!66257 (tail!12829 (exprs!6578 (h!72706 zl!343)))))))

(assert (=> b!6864900 d!2157041))

(declare-fun d!2157043 () Bool)

(assert (=> d!2157043 (= (tail!12829 (exprs!6578 (h!72706 zl!343))) (t!380124 (exprs!6578 (h!72706 zl!343))))))

(assert (=> b!6864900 d!2157043))

(declare-fun b!6865870 () Bool)

(declare-fun e!4139096 () Bool)

(declare-fun call!625361 () Bool)

(assert (=> b!6865870 (= e!4139096 call!625361)))

(declare-fun b!6865871 () Bool)

(declare-fun e!4139093 () Bool)

(declare-fun e!4139092 () Bool)

(assert (=> b!6865871 (= e!4139093 e!4139092)))

(declare-fun c!1277969 () Bool)

(assert (=> b!6865871 (= c!1277969 (is-Union!16694 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))))

(declare-fun bm!625356 () Bool)

(assert (=> bm!625356 (= call!625361 (nullable!6655 (ite c!1277969 (regTwo!33901 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736)))) (regTwo!33900 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))))))

(declare-fun b!6865872 () Bool)

(declare-fun e!4139095 () Bool)

(assert (=> b!6865872 (= e!4139095 e!4139093)))

(declare-fun res!2800947 () Bool)

(assert (=> b!6865872 (=> res!2800947 e!4139093)))

(assert (=> b!6865872 (= res!2800947 (is-Star!16694 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))))

(declare-fun b!6865873 () Bool)

(assert (=> b!6865873 (= e!4139092 e!4139096)))

(declare-fun res!2800950 () Bool)

(declare-fun call!625362 () Bool)

(assert (=> b!6865873 (= res!2800950 call!625362)))

(assert (=> b!6865873 (=> res!2800950 e!4139096)))

(declare-fun bm!625357 () Bool)

(assert (=> bm!625357 (= call!625362 (nullable!6655 (ite c!1277969 (regOne!33901 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736)))) (regOne!33900 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))))))

(declare-fun b!6865875 () Bool)

(declare-fun e!4139097 () Bool)

(assert (=> b!6865875 (= e!4139097 call!625361)))

(declare-fun b!6865876 () Bool)

(declare-fun e!4139094 () Bool)

(assert (=> b!6865876 (= e!4139094 e!4139095)))

(declare-fun res!2800946 () Bool)

(assert (=> b!6865876 (=> (not res!2800946) (not e!4139095))))

(assert (=> b!6865876 (= res!2800946 (and (not (is-EmptyLang!16694 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))))) (not (is-ElementMatch!16694 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))))))

(declare-fun b!6865874 () Bool)

(assert (=> b!6865874 (= e!4139092 e!4139097)))

(declare-fun res!2800949 () Bool)

(assert (=> b!6865874 (= res!2800949 call!625362)))

(assert (=> b!6865874 (=> (not res!2800949) (not e!4139097))))

(declare-fun d!2157045 () Bool)

(declare-fun res!2800948 () Bool)

(assert (=> d!2157045 (=> res!2800948 e!4139094)))

(assert (=> d!2157045 (= res!2800948 (is-EmptyExpr!16694 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))))

(assert (=> d!2157045 (= (nullableFct!2529 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736)))) e!4139094)))

(assert (= (and d!2157045 (not res!2800948)) b!6865876))

(assert (= (and b!6865876 res!2800946) b!6865872))

(assert (= (and b!6865872 (not res!2800947)) b!6865871))

(assert (= (and b!6865871 c!1277969) b!6865873))

(assert (= (and b!6865871 (not c!1277969)) b!6865874))

(assert (= (and b!6865873 (not res!2800950)) b!6865870))

(assert (= (and b!6865874 res!2800949) b!6865875))

(assert (= (or b!6865870 b!6865875) bm!625356))

(assert (= (or b!6865873 b!6865874) bm!625357))

(declare-fun m!7598570 () Bool)

(assert (=> bm!625356 m!7598570))

(declare-fun m!7598572 () Bool)

(assert (=> bm!625357 m!7598572))

(assert (=> d!2156531 d!2157045))

(declare-fun b!6865877 () Bool)

(declare-fun res!2800953 () Bool)

(declare-fun e!4139098 () Bool)

(assert (=> b!6865877 (=> res!2800953 e!4139098)))

(assert (=> b!6865877 (= res!2800953 (not (is-Concat!25539 (h!72705 lt!2457732))))))

(declare-fun e!4139099 () Bool)

(assert (=> b!6865877 (= e!4139099 e!4139098)))

(declare-fun b!6865879 () Bool)

(declare-fun e!4139100 () Bool)

(assert (=> b!6865879 (= e!4139098 e!4139100)))

(declare-fun res!2800955 () Bool)

(assert (=> b!6865879 (=> (not res!2800955) (not e!4139100))))

(declare-fun call!625364 () Bool)

(assert (=> b!6865879 (= res!2800955 call!625364)))

(declare-fun b!6865880 () Bool)

(declare-fun res!2800954 () Bool)

(declare-fun e!4139104 () Bool)

(assert (=> b!6865880 (=> (not res!2800954) (not e!4139104))))

(assert (=> b!6865880 (= res!2800954 call!625364)))

(assert (=> b!6865880 (= e!4139099 e!4139104)))

(declare-fun b!6865881 () Bool)

(declare-fun e!4139101 () Bool)

(declare-fun call!625365 () Bool)

(assert (=> b!6865881 (= e!4139101 call!625365)))

(declare-fun b!6865882 () Bool)

(declare-fun e!4139103 () Bool)

(assert (=> b!6865882 (= e!4139103 e!4139099)))

(declare-fun c!1277971 () Bool)

(assert (=> b!6865882 (= c!1277971 (is-Union!16694 (h!72705 lt!2457732)))))

(declare-fun bm!625358 () Bool)

(declare-fun call!625363 () Bool)

(assert (=> bm!625358 (= call!625363 call!625365)))

(declare-fun bm!625359 () Bool)

(declare-fun c!1277970 () Bool)

(assert (=> bm!625359 (= call!625365 (validRegex!8430 (ite c!1277970 (reg!17023 (h!72705 lt!2457732)) (ite c!1277971 (regTwo!33901 (h!72705 lt!2457732)) (regTwo!33900 (h!72705 lt!2457732))))))))

(declare-fun b!6865883 () Bool)

(assert (=> b!6865883 (= e!4139103 e!4139101)))

(declare-fun res!2800952 () Bool)

(assert (=> b!6865883 (= res!2800952 (not (nullable!6655 (reg!17023 (h!72705 lt!2457732)))))))

(assert (=> b!6865883 (=> (not res!2800952) (not e!4139101))))

(declare-fun b!6865884 () Bool)

(declare-fun e!4139102 () Bool)

(assert (=> b!6865884 (= e!4139102 e!4139103)))

(assert (=> b!6865884 (= c!1277970 (is-Star!16694 (h!72705 lt!2457732)))))

(declare-fun b!6865878 () Bool)

(assert (=> b!6865878 (= e!4139104 call!625363)))

(declare-fun d!2157047 () Bool)

(declare-fun res!2800951 () Bool)

(assert (=> d!2157047 (=> res!2800951 e!4139102)))

(assert (=> d!2157047 (= res!2800951 (is-ElementMatch!16694 (h!72705 lt!2457732)))))

(assert (=> d!2157047 (= (validRegex!8430 (h!72705 lt!2457732)) e!4139102)))

(declare-fun bm!625360 () Bool)

(assert (=> bm!625360 (= call!625364 (validRegex!8430 (ite c!1277971 (regOne!33901 (h!72705 lt!2457732)) (regOne!33900 (h!72705 lt!2457732)))))))

(declare-fun b!6865885 () Bool)

(assert (=> b!6865885 (= e!4139100 call!625363)))

(assert (= (and d!2157047 (not res!2800951)) b!6865884))

(assert (= (and b!6865884 c!1277970) b!6865883))

(assert (= (and b!6865884 (not c!1277970)) b!6865882))

(assert (= (and b!6865883 res!2800952) b!6865881))

(assert (= (and b!6865882 c!1277971) b!6865880))

(assert (= (and b!6865882 (not c!1277971)) b!6865877))

(assert (= (and b!6865880 res!2800954) b!6865878))

(assert (= (and b!6865877 (not res!2800953)) b!6865879))

(assert (= (and b!6865879 res!2800955) b!6865885))

(assert (= (or b!6865878 b!6865885) bm!625358))

(assert (= (or b!6865880 b!6865879) bm!625360))

(assert (= (or b!6865881 bm!625358) bm!625359))

(declare-fun m!7598574 () Bool)

(assert (=> bm!625359 m!7598574))

(declare-fun m!7598576 () Bool)

(assert (=> b!6865883 m!7598576))

(declare-fun m!7598578 () Bool)

(assert (=> bm!625360 m!7598578))

(assert (=> bs!1834713 d!2157047))

(declare-fun d!2157049 () Bool)

(assert (=> d!2157049 (= (head!13770 (exprs!6578 (h!72706 zl!343))) (h!72705 (exprs!6578 (h!72706 zl!343))))))

(assert (=> b!6864904 d!2157049))

(declare-fun b!6865886 () Bool)

(declare-fun c!1277973 () Bool)

(assert (=> b!6865886 (= c!1277973 (is-Union!16694 (ite c!1277679 (regOne!33901 r!7292) (ite c!1277682 (regTwo!33900 r!7292) (regOne!33900 r!7292)))))))

(declare-fun e!4139109 () Regex!16694)

(declare-fun e!4139108 () Regex!16694)

(assert (=> b!6865886 (= e!4139109 e!4139108)))

(declare-fun b!6865887 () Bool)

(declare-fun e!4139107 () Regex!16694)

(assert (=> b!6865887 (= e!4139107 EmptyLang!16694)))

(declare-fun bm!625361 () Bool)

(declare-fun call!625369 () Regex!16694)

(declare-fun c!1277974 () Bool)

(assert (=> bm!625361 (= call!625369 (derivativeStep!5337 (ite c!1277973 (regTwo!33901 (ite c!1277679 (regOne!33901 r!7292) (ite c!1277682 (regTwo!33900 r!7292) (regOne!33900 r!7292)))) (ite c!1277974 (reg!17023 (ite c!1277679 (regOne!33901 r!7292) (ite c!1277682 (regTwo!33900 r!7292) (regOne!33900 r!7292)))) (regOne!33900 (ite c!1277679 (regOne!33901 r!7292) (ite c!1277682 (regTwo!33900 r!7292) (regOne!33900 r!7292)))))) (head!13772 s!2326)))))

(declare-fun b!6865888 () Bool)

(declare-fun call!625366 () Regex!16694)

(assert (=> b!6865888 (= e!4139108 (Union!16694 call!625366 call!625369))))

(declare-fun b!6865889 () Bool)

(declare-fun e!4139105 () Regex!16694)

(assert (=> b!6865889 (= e!4139108 e!4139105)))

(assert (=> b!6865889 (= c!1277974 (is-Star!16694 (ite c!1277679 (regOne!33901 r!7292) (ite c!1277682 (regTwo!33900 r!7292) (regOne!33900 r!7292)))))))

(declare-fun call!625367 () Regex!16694)

(declare-fun call!625368 () Regex!16694)

(declare-fun b!6865890 () Bool)

(declare-fun e!4139106 () Regex!16694)

(assert (=> b!6865890 (= e!4139106 (Union!16694 (Concat!25539 call!625367 (regTwo!33900 (ite c!1277679 (regOne!33901 r!7292) (ite c!1277682 (regTwo!33900 r!7292) (regOne!33900 r!7292))))) call!625368))))

(declare-fun b!6865891 () Bool)

(assert (=> b!6865891 (= e!4139106 (Union!16694 (Concat!25539 call!625368 (regTwo!33900 (ite c!1277679 (regOne!33901 r!7292) (ite c!1277682 (regTwo!33900 r!7292) (regOne!33900 r!7292))))) EmptyLang!16694))))

(declare-fun bm!625362 () Bool)

(assert (=> bm!625362 (= call!625368 call!625366)))

(declare-fun b!6865892 () Bool)

(assert (=> b!6865892 (= e!4139109 (ite (= (head!13772 s!2326) (c!1277522 (ite c!1277679 (regOne!33901 r!7292) (ite c!1277682 (regTwo!33900 r!7292) (regOne!33900 r!7292))))) EmptyExpr!16694 EmptyLang!16694))))

(declare-fun bm!625363 () Bool)

(assert (=> bm!625363 (= call!625367 call!625369)))

(declare-fun bm!625364 () Bool)

(declare-fun c!1277976 () Bool)

(assert (=> bm!625364 (= call!625366 (derivativeStep!5337 (ite c!1277973 (regOne!33901 (ite c!1277679 (regOne!33901 r!7292) (ite c!1277682 (regTwo!33900 r!7292) (regOne!33900 r!7292)))) (ite c!1277976 (regTwo!33900 (ite c!1277679 (regOne!33901 r!7292) (ite c!1277682 (regTwo!33900 r!7292) (regOne!33900 r!7292)))) (regOne!33900 (ite c!1277679 (regOne!33901 r!7292) (ite c!1277682 (regTwo!33900 r!7292) (regOne!33900 r!7292)))))) (head!13772 s!2326)))))

(declare-fun b!6865894 () Bool)

(assert (=> b!6865894 (= c!1277976 (nullable!6655 (regOne!33900 (ite c!1277679 (regOne!33901 r!7292) (ite c!1277682 (regTwo!33900 r!7292) (regOne!33900 r!7292))))))))

(assert (=> b!6865894 (= e!4139105 e!4139106)))

(declare-fun b!6865895 () Bool)

(assert (=> b!6865895 (= e!4139105 (Concat!25539 call!625367 (ite c!1277679 (regOne!33901 r!7292) (ite c!1277682 (regTwo!33900 r!7292) (regOne!33900 r!7292)))))))

(declare-fun d!2157051 () Bool)

(declare-fun lt!2457937 () Regex!16694)

(assert (=> d!2157051 (validRegex!8430 lt!2457937)))

(assert (=> d!2157051 (= lt!2457937 e!4139107)))

(declare-fun c!1277975 () Bool)

(assert (=> d!2157051 (= c!1277975 (or (is-EmptyExpr!16694 (ite c!1277679 (regOne!33901 r!7292) (ite c!1277682 (regTwo!33900 r!7292) (regOne!33900 r!7292)))) (is-EmptyLang!16694 (ite c!1277679 (regOne!33901 r!7292) (ite c!1277682 (regTwo!33900 r!7292) (regOne!33900 r!7292))))))))

(assert (=> d!2157051 (validRegex!8430 (ite c!1277679 (regOne!33901 r!7292) (ite c!1277682 (regTwo!33900 r!7292) (regOne!33900 r!7292))))))

(assert (=> d!2157051 (= (derivativeStep!5337 (ite c!1277679 (regOne!33901 r!7292) (ite c!1277682 (regTwo!33900 r!7292) (regOne!33900 r!7292))) (head!13772 s!2326)) lt!2457937)))

(declare-fun b!6865893 () Bool)

(assert (=> b!6865893 (= e!4139107 e!4139109)))

(declare-fun c!1277972 () Bool)

(assert (=> b!6865893 (= c!1277972 (is-ElementMatch!16694 (ite c!1277679 (regOne!33901 r!7292) (ite c!1277682 (regTwo!33900 r!7292) (regOne!33900 r!7292)))))))

(assert (= (and d!2157051 c!1277975) b!6865887))

(assert (= (and d!2157051 (not c!1277975)) b!6865893))

(assert (= (and b!6865893 c!1277972) b!6865892))

(assert (= (and b!6865893 (not c!1277972)) b!6865886))

(assert (= (and b!6865886 c!1277973) b!6865888))

(assert (= (and b!6865886 (not c!1277973)) b!6865889))

(assert (= (and b!6865889 c!1277974) b!6865895))

(assert (= (and b!6865889 (not c!1277974)) b!6865894))

(assert (= (and b!6865894 c!1277976) b!6865890))

(assert (= (and b!6865894 (not c!1277976)) b!6865891))

(assert (= (or b!6865890 b!6865891) bm!625362))

(assert (= (or b!6865895 b!6865890) bm!625363))

(assert (= (or b!6865888 bm!625363) bm!625361))

(assert (= (or b!6865888 bm!625362) bm!625364))

(assert (=> bm!625361 m!7597210))

(declare-fun m!7598580 () Bool)

(assert (=> bm!625361 m!7598580))

(assert (=> bm!625364 m!7597210))

(declare-fun m!7598582 () Bool)

(assert (=> bm!625364 m!7598582))

(declare-fun m!7598584 () Bool)

(assert (=> b!6865894 m!7598584))

(declare-fun m!7598586 () Bool)

(assert (=> d!2157051 m!7598586))

(declare-fun m!7598588 () Bool)

(assert (=> d!2157051 m!7598588))

(assert (=> bm!625192 d!2157051))

(declare-fun d!2157053 () Bool)

(assert (=> d!2157053 (= (isUnion!1454 lt!2457869) (is-Union!16694 lt!2457869))))

(assert (=> b!6864765 d!2157053))

(declare-fun d!2157055 () Bool)

(declare-fun res!2800956 () Bool)

(declare-fun e!4139110 () Bool)

(assert (=> d!2157055 (=> res!2800956 e!4139110)))

(assert (=> d!2157055 (= res!2800956 (is-Nil!66257 (exprs!6578 lt!2457736)))))

(assert (=> d!2157055 (= (forall!15885 (exprs!6578 lt!2457736) lambda!388443) e!4139110)))

(declare-fun b!6865896 () Bool)

(declare-fun e!4139111 () Bool)

(assert (=> b!6865896 (= e!4139110 e!4139111)))

(declare-fun res!2800957 () Bool)

(assert (=> b!6865896 (=> (not res!2800957) (not e!4139111))))

(assert (=> b!6865896 (= res!2800957 (dynLambda!26518 lambda!388443 (h!72705 (exprs!6578 lt!2457736))))))

(declare-fun b!6865897 () Bool)

(assert (=> b!6865897 (= e!4139111 (forall!15885 (t!380124 (exprs!6578 lt!2457736)) lambda!388443))))

(assert (= (and d!2157055 (not res!2800956)) b!6865896))

(assert (= (and b!6865896 res!2800957) b!6865897))

(declare-fun b_lambda!259617 () Bool)

(assert (=> (not b_lambda!259617) (not b!6865896)))

(declare-fun m!7598590 () Bool)

(assert (=> b!6865896 m!7598590))

(declare-fun m!7598592 () Bool)

(assert (=> b!6865897 m!7598592))

(assert (=> d!2156577 d!2157055))

(declare-fun b!6865898 () Bool)

(declare-fun e!4139116 () Bool)

(declare-fun call!625370 () Bool)

(assert (=> b!6865898 (= e!4139116 call!625370)))

(declare-fun b!6865899 () Bool)

(declare-fun e!4139113 () Bool)

(declare-fun e!4139112 () Bool)

(assert (=> b!6865899 (= e!4139113 e!4139112)))

(declare-fun c!1277977 () Bool)

(assert (=> b!6865899 (= c!1277977 (is-Union!16694 (reg!17023 r!7292)))))

(declare-fun bm!625365 () Bool)

(assert (=> bm!625365 (= call!625370 (nullable!6655 (ite c!1277977 (regTwo!33901 (reg!17023 r!7292)) (regTwo!33900 (reg!17023 r!7292)))))))

(declare-fun b!6865900 () Bool)

(declare-fun e!4139115 () Bool)

(assert (=> b!6865900 (= e!4139115 e!4139113)))

(declare-fun res!2800959 () Bool)

(assert (=> b!6865900 (=> res!2800959 e!4139113)))

(assert (=> b!6865900 (= res!2800959 (is-Star!16694 (reg!17023 r!7292)))))

(declare-fun b!6865901 () Bool)

(assert (=> b!6865901 (= e!4139112 e!4139116)))

(declare-fun res!2800962 () Bool)

(declare-fun call!625371 () Bool)

(assert (=> b!6865901 (= res!2800962 call!625371)))

(assert (=> b!6865901 (=> res!2800962 e!4139116)))

(declare-fun bm!625366 () Bool)

(assert (=> bm!625366 (= call!625371 (nullable!6655 (ite c!1277977 (regOne!33901 (reg!17023 r!7292)) (regOne!33900 (reg!17023 r!7292)))))))

(declare-fun b!6865903 () Bool)

(declare-fun e!4139117 () Bool)

(assert (=> b!6865903 (= e!4139117 call!625370)))

(declare-fun b!6865904 () Bool)

(declare-fun e!4139114 () Bool)

(assert (=> b!6865904 (= e!4139114 e!4139115)))

(declare-fun res!2800958 () Bool)

(assert (=> b!6865904 (=> (not res!2800958) (not e!4139115))))

(assert (=> b!6865904 (= res!2800958 (and (not (is-EmptyLang!16694 (reg!17023 r!7292))) (not (is-ElementMatch!16694 (reg!17023 r!7292)))))))

(declare-fun b!6865902 () Bool)

(assert (=> b!6865902 (= e!4139112 e!4139117)))

(declare-fun res!2800961 () Bool)

(assert (=> b!6865902 (= res!2800961 call!625371)))

(assert (=> b!6865902 (=> (not res!2800961) (not e!4139117))))

(declare-fun d!2157057 () Bool)

(declare-fun res!2800960 () Bool)

(assert (=> d!2157057 (=> res!2800960 e!4139114)))

(assert (=> d!2157057 (= res!2800960 (is-EmptyExpr!16694 (reg!17023 r!7292)))))

(assert (=> d!2157057 (= (nullableFct!2529 (reg!17023 r!7292)) e!4139114)))

(assert (= (and d!2157057 (not res!2800960)) b!6865904))

(assert (= (and b!6865904 res!2800958) b!6865900))

(assert (= (and b!6865900 (not res!2800959)) b!6865899))

(assert (= (and b!6865899 c!1277977) b!6865901))

(assert (= (and b!6865899 (not c!1277977)) b!6865902))

(assert (= (and b!6865901 (not res!2800962)) b!6865898))

(assert (= (and b!6865902 res!2800961) b!6865903))

(assert (= (or b!6865898 b!6865903) bm!625365))

(assert (= (or b!6865901 b!6865902) bm!625366))

(declare-fun m!7598594 () Bool)

(assert (=> bm!625365 m!7598594))

(declare-fun m!7598596 () Bool)

(assert (=> bm!625366 m!7598596))

(assert (=> d!2156581 d!2157057))

(declare-fun d!2157059 () Bool)

(declare-fun res!2800963 () Bool)

(declare-fun e!4139118 () Bool)

(assert (=> d!2157059 (=> res!2800963 e!4139118)))

(assert (=> d!2157059 (= res!2800963 (is-Nil!66257 lt!2457884))))

(assert (=> d!2157059 (= (forall!15885 lt!2457884 lambda!388449) e!4139118)))

(declare-fun b!6865905 () Bool)

(declare-fun e!4139119 () Bool)

(assert (=> b!6865905 (= e!4139118 e!4139119)))

(declare-fun res!2800964 () Bool)

(assert (=> b!6865905 (=> (not res!2800964) (not e!4139119))))

(assert (=> b!6865905 (= res!2800964 (dynLambda!26518 lambda!388449 (h!72705 lt!2457884)))))

(declare-fun b!6865906 () Bool)

(assert (=> b!6865906 (= e!4139119 (forall!15885 (t!380124 lt!2457884) lambda!388449))))

(assert (= (and d!2157059 (not res!2800963)) b!6865905))

(assert (= (and b!6865905 res!2800964) b!6865906))

(declare-fun b_lambda!259619 () Bool)

(assert (=> (not b_lambda!259619) (not b!6865905)))

(declare-fun m!7598598 () Bool)

(assert (=> b!6865905 m!7598598))

(declare-fun m!7598600 () Bool)

(assert (=> b!6865906 m!7598600))

(assert (=> d!2156613 d!2157059))

(declare-fun d!2157061 () Bool)

(declare-fun res!2800965 () Bool)

(declare-fun e!4139120 () Bool)

(assert (=> d!2157061 (=> res!2800965 e!4139120)))

(assert (=> d!2157061 (= res!2800965 (is-Nil!66257 (exprs!6578 setElem!47212)))))

(assert (=> d!2157061 (= (forall!15885 (exprs!6578 setElem!47212) lambda!388440) e!4139120)))

(declare-fun b!6865907 () Bool)

(declare-fun e!4139121 () Bool)

(assert (=> b!6865907 (= e!4139120 e!4139121)))

(declare-fun res!2800966 () Bool)

(assert (=> b!6865907 (=> (not res!2800966) (not e!4139121))))

(assert (=> b!6865907 (= res!2800966 (dynLambda!26518 lambda!388440 (h!72705 (exprs!6578 setElem!47212))))))

(declare-fun b!6865908 () Bool)

(assert (=> b!6865908 (= e!4139121 (forall!15885 (t!380124 (exprs!6578 setElem!47212)) lambda!388440))))

(assert (= (and d!2157061 (not res!2800965)) b!6865907))

(assert (= (and b!6865907 res!2800966) b!6865908))

(declare-fun b_lambda!259621 () Bool)

(assert (=> (not b_lambda!259621) (not b!6865907)))

(declare-fun m!7598602 () Bool)

(assert (=> b!6865907 m!7598602))

(declare-fun m!7598604 () Bool)

(assert (=> b!6865908 m!7598604))

(assert (=> d!2156551 d!2157061))

(assert (=> bs!1834711 d!2156561))

(declare-fun c!1277979 () Bool)

(declare-fun b!6865909 () Bool)

(assert (=> b!6865909 (= c!1277979 (is-Union!16694 (ite c!1277679 (regTwo!33901 r!7292) (ite c!1277680 (reg!17023 r!7292) (regOne!33900 r!7292)))))))

(declare-fun e!4139126 () Regex!16694)

(declare-fun e!4139125 () Regex!16694)

(assert (=> b!6865909 (= e!4139126 e!4139125)))

(declare-fun b!6865910 () Bool)

(declare-fun e!4139124 () Regex!16694)

(assert (=> b!6865910 (= e!4139124 EmptyLang!16694)))

(declare-fun c!1277980 () Bool)

(declare-fun bm!625367 () Bool)

(declare-fun call!625375 () Regex!16694)

(assert (=> bm!625367 (= call!625375 (derivativeStep!5337 (ite c!1277979 (regTwo!33901 (ite c!1277679 (regTwo!33901 r!7292) (ite c!1277680 (reg!17023 r!7292) (regOne!33900 r!7292)))) (ite c!1277980 (reg!17023 (ite c!1277679 (regTwo!33901 r!7292) (ite c!1277680 (reg!17023 r!7292) (regOne!33900 r!7292)))) (regOne!33900 (ite c!1277679 (regTwo!33901 r!7292) (ite c!1277680 (reg!17023 r!7292) (regOne!33900 r!7292)))))) (head!13772 s!2326)))))

(declare-fun b!6865911 () Bool)

(declare-fun call!625372 () Regex!16694)

(assert (=> b!6865911 (= e!4139125 (Union!16694 call!625372 call!625375))))

(declare-fun b!6865912 () Bool)

(declare-fun e!4139122 () Regex!16694)

(assert (=> b!6865912 (= e!4139125 e!4139122)))

(assert (=> b!6865912 (= c!1277980 (is-Star!16694 (ite c!1277679 (regTwo!33901 r!7292) (ite c!1277680 (reg!17023 r!7292) (regOne!33900 r!7292)))))))

(declare-fun call!625373 () Regex!16694)

(declare-fun b!6865913 () Bool)

(declare-fun call!625374 () Regex!16694)

(declare-fun e!4139123 () Regex!16694)

(assert (=> b!6865913 (= e!4139123 (Union!16694 (Concat!25539 call!625373 (regTwo!33900 (ite c!1277679 (regTwo!33901 r!7292) (ite c!1277680 (reg!17023 r!7292) (regOne!33900 r!7292))))) call!625374))))

(declare-fun b!6865914 () Bool)

(assert (=> b!6865914 (= e!4139123 (Union!16694 (Concat!25539 call!625374 (regTwo!33900 (ite c!1277679 (regTwo!33901 r!7292) (ite c!1277680 (reg!17023 r!7292) (regOne!33900 r!7292))))) EmptyLang!16694))))

(declare-fun bm!625368 () Bool)

(assert (=> bm!625368 (= call!625374 call!625372)))

(declare-fun b!6865915 () Bool)

(assert (=> b!6865915 (= e!4139126 (ite (= (head!13772 s!2326) (c!1277522 (ite c!1277679 (regTwo!33901 r!7292) (ite c!1277680 (reg!17023 r!7292) (regOne!33900 r!7292))))) EmptyExpr!16694 EmptyLang!16694))))

(declare-fun bm!625369 () Bool)

(assert (=> bm!625369 (= call!625373 call!625375)))

(declare-fun bm!625370 () Bool)

(declare-fun c!1277982 () Bool)

(assert (=> bm!625370 (= call!625372 (derivativeStep!5337 (ite c!1277979 (regOne!33901 (ite c!1277679 (regTwo!33901 r!7292) (ite c!1277680 (reg!17023 r!7292) (regOne!33900 r!7292)))) (ite c!1277982 (regTwo!33900 (ite c!1277679 (regTwo!33901 r!7292) (ite c!1277680 (reg!17023 r!7292) (regOne!33900 r!7292)))) (regOne!33900 (ite c!1277679 (regTwo!33901 r!7292) (ite c!1277680 (reg!17023 r!7292) (regOne!33900 r!7292)))))) (head!13772 s!2326)))))

(declare-fun b!6865917 () Bool)

(assert (=> b!6865917 (= c!1277982 (nullable!6655 (regOne!33900 (ite c!1277679 (regTwo!33901 r!7292) (ite c!1277680 (reg!17023 r!7292) (regOne!33900 r!7292))))))))

(assert (=> b!6865917 (= e!4139122 e!4139123)))

(declare-fun b!6865918 () Bool)

(assert (=> b!6865918 (= e!4139122 (Concat!25539 call!625373 (ite c!1277679 (regTwo!33901 r!7292) (ite c!1277680 (reg!17023 r!7292) (regOne!33900 r!7292)))))))

(declare-fun d!2157063 () Bool)

(declare-fun lt!2457938 () Regex!16694)

(assert (=> d!2157063 (validRegex!8430 lt!2457938)))

(assert (=> d!2157063 (= lt!2457938 e!4139124)))

(declare-fun c!1277981 () Bool)

(assert (=> d!2157063 (= c!1277981 (or (is-EmptyExpr!16694 (ite c!1277679 (regTwo!33901 r!7292) (ite c!1277680 (reg!17023 r!7292) (regOne!33900 r!7292)))) (is-EmptyLang!16694 (ite c!1277679 (regTwo!33901 r!7292) (ite c!1277680 (reg!17023 r!7292) (regOne!33900 r!7292))))))))

(assert (=> d!2157063 (validRegex!8430 (ite c!1277679 (regTwo!33901 r!7292) (ite c!1277680 (reg!17023 r!7292) (regOne!33900 r!7292))))))

(assert (=> d!2157063 (= (derivativeStep!5337 (ite c!1277679 (regTwo!33901 r!7292) (ite c!1277680 (reg!17023 r!7292) (regOne!33900 r!7292))) (head!13772 s!2326)) lt!2457938)))

(declare-fun b!6865916 () Bool)

(assert (=> b!6865916 (= e!4139124 e!4139126)))

(declare-fun c!1277978 () Bool)

(assert (=> b!6865916 (= c!1277978 (is-ElementMatch!16694 (ite c!1277679 (regTwo!33901 r!7292) (ite c!1277680 (reg!17023 r!7292) (regOne!33900 r!7292)))))))

(assert (= (and d!2157063 c!1277981) b!6865910))

(assert (= (and d!2157063 (not c!1277981)) b!6865916))

(assert (= (and b!6865916 c!1277978) b!6865915))

(assert (= (and b!6865916 (not c!1277978)) b!6865909))

(assert (= (and b!6865909 c!1277979) b!6865911))

(assert (= (and b!6865909 (not c!1277979)) b!6865912))

(assert (= (and b!6865912 c!1277980) b!6865918))

(assert (= (and b!6865912 (not c!1277980)) b!6865917))

(assert (= (and b!6865917 c!1277982) b!6865913))

(assert (= (and b!6865917 (not c!1277982)) b!6865914))

(assert (= (or b!6865913 b!6865914) bm!625368))

(assert (= (or b!6865918 b!6865913) bm!625369))

(assert (= (or b!6865911 bm!625369) bm!625367))

(assert (= (or b!6865911 bm!625368) bm!625370))

(assert (=> bm!625367 m!7597210))

(declare-fun m!7598606 () Bool)

(assert (=> bm!625367 m!7598606))

(assert (=> bm!625370 m!7597210))

(declare-fun m!7598608 () Bool)

(assert (=> bm!625370 m!7598608))

(declare-fun m!7598610 () Bool)

(assert (=> b!6865917 m!7598610))

(declare-fun m!7598612 () Bool)

(assert (=> d!2157063 m!7598612))

(declare-fun m!7598614 () Bool)

(assert (=> d!2157063 m!7598614))

(assert (=> bm!625189 d!2157063))

(declare-fun d!2157065 () Bool)

(declare-fun res!2800967 () Bool)

(declare-fun e!4139127 () Bool)

(assert (=> d!2157065 (=> res!2800967 e!4139127)))

(assert (=> d!2157065 (= res!2800967 (is-Nil!66257 (t!380124 (exprs!6578 lt!2457736))))))

(assert (=> d!2157065 (= (forall!15885 (t!380124 (exprs!6578 lt!2457736)) lambda!388369) e!4139127)))

(declare-fun b!6865919 () Bool)

(declare-fun e!4139128 () Bool)

(assert (=> b!6865919 (= e!4139127 e!4139128)))

(declare-fun res!2800968 () Bool)

(assert (=> b!6865919 (=> (not res!2800968) (not e!4139128))))

(assert (=> b!6865919 (= res!2800968 (dynLambda!26518 lambda!388369 (h!72705 (t!380124 (exprs!6578 lt!2457736)))))))

(declare-fun b!6865920 () Bool)

(assert (=> b!6865920 (= e!4139128 (forall!15885 (t!380124 (t!380124 (exprs!6578 lt!2457736))) lambda!388369))))

(assert (= (and d!2157065 (not res!2800967)) b!6865919))

(assert (= (and b!6865919 res!2800968) b!6865920))

(declare-fun b_lambda!259623 () Bool)

(assert (=> (not b_lambda!259623) (not b!6865919)))

(declare-fun m!7598616 () Bool)

(assert (=> b!6865919 m!7598616))

(declare-fun m!7598618 () Bool)

(assert (=> b!6865920 m!7598618))

(assert (=> b!6864858 d!2157065))

(assert (=> d!2156591 d!2156599))

(declare-fun d!2157067 () Bool)

(assert (=> d!2157067 (= (nullable!6655 (reg!17023 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292)))) (nullableFct!2529 (reg!17023 (ite c!1277531 (regOne!33901 r!7292) (regOne!33900 r!7292)))))))

(declare-fun bs!1835278 () Bool)

(assert (= bs!1835278 d!2157067))

(declare-fun m!7598620 () Bool)

(assert (=> bs!1835278 m!7598620))

(assert (=> b!6864871 d!2157067))

(assert (=> bs!1834890 d!2157047))

(assert (=> bm!625180 d!2156553))

(declare-fun b!6865921 () Bool)

(declare-fun e!4139130 () Int)

(assert (=> b!6865921 (= e!4139130 1)))

(declare-fun b!6865922 () Bool)

(declare-fun e!4139131 () Int)

(declare-fun call!625378 () Int)

(assert (=> b!6865922 (= e!4139131 (+ 1 call!625378))))

(declare-fun b!6865923 () Bool)

(declare-fun c!1277985 () Bool)

(assert (=> b!6865923 (= c!1277985 (is-Union!16694 (h!72705 (exprs!6578 (Context!12157 (t!380124 (exprs!6578 lt!2457736)))))))))

(declare-fun e!4139129 () Int)

(assert (=> b!6865923 (= e!4139131 e!4139129)))

(declare-fun bm!625371 () Bool)

(declare-fun call!625376 () Int)

(assert (=> bm!625371 (= call!625376 call!625378)))

(declare-fun c!1277984 () Bool)

(declare-fun bm!625372 () Bool)

(assert (=> bm!625372 (= call!625378 (regexDepthTotal!260 (ite c!1277984 (reg!17023 (h!72705 (exprs!6578 (Context!12157 (t!380124 (exprs!6578 lt!2457736)))))) (ite c!1277985 (regTwo!33901 (h!72705 (exprs!6578 (Context!12157 (t!380124 (exprs!6578 lt!2457736)))))) (regTwo!33900 (h!72705 (exprs!6578 (Context!12157 (t!380124 (exprs!6578 lt!2457736))))))))))))

(declare-fun b!6865924 () Bool)

(declare-fun e!4139132 () Int)

(assert (=> b!6865924 (= e!4139132 1)))

(declare-fun b!6865925 () Bool)

(assert (=> b!6865925 (= e!4139130 e!4139131)))

(assert (=> b!6865925 (= c!1277984 (is-Star!16694 (h!72705 (exprs!6578 (Context!12157 (t!380124 (exprs!6578 lt!2457736)))))))))

(declare-fun b!6865926 () Bool)

(declare-fun call!625377 () Int)

(assert (=> b!6865926 (= e!4139132 (+ 1 call!625377 call!625376))))

(declare-fun b!6865927 () Bool)

(assert (=> b!6865927 (= e!4139129 e!4139132)))

(declare-fun c!1277986 () Bool)

(assert (=> b!6865927 (= c!1277986 (is-Concat!25539 (h!72705 (exprs!6578 (Context!12157 (t!380124 (exprs!6578 lt!2457736)))))))))

(declare-fun b!6865928 () Bool)

(assert (=> b!6865928 (= e!4139129 (+ 1 call!625377 call!625376))))

(declare-fun bm!625373 () Bool)

(assert (=> bm!625373 (= call!625377 (regexDepthTotal!260 (ite c!1277985 (regOne!33901 (h!72705 (exprs!6578 (Context!12157 (t!380124 (exprs!6578 lt!2457736)))))) (regOne!33900 (h!72705 (exprs!6578 (Context!12157 (t!380124 (exprs!6578 lt!2457736)))))))))))

(declare-fun d!2157069 () Bool)

(declare-fun lt!2457939 () Int)

(assert (=> d!2157069 (> lt!2457939 0)))

(assert (=> d!2157069 (= lt!2457939 e!4139130)))

(declare-fun c!1277983 () Bool)

(assert (=> d!2157069 (= c!1277983 (is-ElementMatch!16694 (h!72705 (exprs!6578 (Context!12157 (t!380124 (exprs!6578 lt!2457736)))))))))

(assert (=> d!2157069 (= (regexDepthTotal!260 (h!72705 (exprs!6578 (Context!12157 (t!380124 (exprs!6578 lt!2457736)))))) lt!2457939)))

(assert (= (and d!2157069 c!1277983) b!6865921))

(assert (= (and d!2157069 (not c!1277983)) b!6865925))

(assert (= (and b!6865925 c!1277984) b!6865922))

(assert (= (and b!6865925 (not c!1277984)) b!6865923))

(assert (= (and b!6865923 c!1277985) b!6865928))

(assert (= (and b!6865923 (not c!1277985)) b!6865927))

(assert (= (and b!6865927 c!1277986) b!6865926))

(assert (= (and b!6865927 (not c!1277986)) b!6865924))

(assert (= (or b!6865928 b!6865926) bm!625371))

(assert (= (or b!6865928 b!6865926) bm!625373))

(assert (= (or b!6865922 bm!625371) bm!625372))

(declare-fun m!7598622 () Bool)

(assert (=> bm!625372 m!7598622))

(declare-fun m!7598624 () Bool)

(assert (=> bm!625373 m!7598624))

(assert (=> b!6864851 d!2157069))

(declare-fun d!2157071 () Bool)

(declare-fun lt!2457940 () Int)

(assert (=> d!2157071 (>= lt!2457940 0)))

(declare-fun e!4139133 () Int)

(assert (=> d!2157071 (= lt!2457940 e!4139133)))

(declare-fun c!1277987 () Bool)

(assert (=> d!2157071 (= c!1277987 (is-Cons!66257 (exprs!6578 (Context!12157 (t!380124 (exprs!6578 (Context!12157 (t!380124 (exprs!6578 lt!2457736)))))))))))

(assert (=> d!2157071 (= (contextDepthTotal!415 (Context!12157 (t!380124 (exprs!6578 (Context!12157 (t!380124 (exprs!6578 lt!2457736))))))) lt!2457940)))

(declare-fun b!6865929 () Bool)

(assert (=> b!6865929 (= e!4139133 (+ (regexDepthTotal!260 (h!72705 (exprs!6578 (Context!12157 (t!380124 (exprs!6578 (Context!12157 (t!380124 (exprs!6578 lt!2457736))))))))) (contextDepthTotal!415 (Context!12157 (t!380124 (exprs!6578 (Context!12157 (t!380124 (exprs!6578 (Context!12157 (t!380124 (exprs!6578 lt!2457736))))))))))))))

(declare-fun b!6865930 () Bool)

(assert (=> b!6865930 (= e!4139133 1)))

(assert (= (and d!2157071 c!1277987) b!6865929))

(assert (= (and d!2157071 (not c!1277987)) b!6865930))

(declare-fun m!7598626 () Bool)

(assert (=> b!6865929 m!7598626))

(declare-fun m!7598628 () Bool)

(assert (=> b!6865929 m!7598628))

(assert (=> b!6864851 d!2157071))

(assert (=> bm!625220 d!2156523))

(declare-fun d!2157073 () Bool)

(assert (=> d!2157073 (= (head!13771 (t!380125 zl!343)) (h!72706 (t!380125 zl!343)))))

(assert (=> b!6864783 d!2157073))

(assert (=> bm!625178 d!2156523))

(declare-fun d!2157075 () Bool)

(declare-fun res!2800969 () Bool)

(declare-fun e!4139134 () Bool)

(assert (=> d!2157075 (=> res!2800969 e!4139134)))

(assert (=> d!2157075 (= res!2800969 (is-Nil!66258 zl!343))))

(assert (=> d!2157075 (= (forall!15887 zl!343 lambda!388444) e!4139134)))

(declare-fun b!6865931 () Bool)

(declare-fun e!4139135 () Bool)

(assert (=> b!6865931 (= e!4139134 e!4139135)))

(declare-fun res!2800970 () Bool)

(assert (=> b!6865931 (=> (not res!2800970) (not e!4139135))))

(assert (=> b!6865931 (= res!2800970 (dynLambda!26519 lambda!388444 (h!72706 zl!343)))))

(declare-fun b!6865932 () Bool)

(assert (=> b!6865932 (= e!4139135 (forall!15887 (t!380125 zl!343) lambda!388444))))

(assert (= (and d!2157075 (not res!2800969)) b!6865931))

(assert (= (and b!6865931 res!2800970) b!6865932))

(declare-fun b_lambda!259625 () Bool)

(assert (=> (not b_lambda!259625) (not b!6865931)))

(declare-fun m!7598630 () Bool)

(assert (=> b!6865931 m!7598630))

(declare-fun m!7598632 () Bool)

(assert (=> b!6865932 m!7598632))

(assert (=> d!2156593 d!2157075))

(declare-fun d!2157077 () Bool)

(assert (=> d!2157077 (= (Exists!3754 (ite c!1277663 lambda!388431 lambda!388432)) (choose!51168 (ite c!1277663 lambda!388431 lambda!388432)))))

(declare-fun bs!1835279 () Bool)

(assert (= bs!1835279 d!2157077))

(declare-fun m!7598634 () Bool)

(assert (=> bs!1835279 m!7598634))

(assert (=> bm!625179 d!2157077))

(declare-fun d!2157079 () Bool)

(assert (=> d!2157079 (= (nullable!6655 (reg!17023 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))))) (nullableFct!2529 (reg!17023 (ite c!1277532 (reg!17023 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (ite c!1277533 (regTwo!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regTwo!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))))))))

(declare-fun bs!1835280 () Bool)

(assert (= bs!1835280 d!2157079))

(declare-fun m!7598636 () Bool)

(assert (=> bs!1835280 m!7598636))

(assert (=> b!6864888 d!2157079))

(declare-fun b!6865933 () Bool)

(declare-fun res!2800973 () Bool)

(declare-fun e!4139136 () Bool)

(assert (=> b!6865933 (=> res!2800973 e!4139136)))

(assert (=> b!6865933 (= res!2800973 (not (is-Concat!25539 (ite c!1277706 (reg!17023 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))) (ite c!1277707 (regTwo!33901 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))) (regTwo!33900 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))))))))))

(declare-fun e!4139137 () Bool)

(assert (=> b!6865933 (= e!4139137 e!4139136)))

(declare-fun b!6865935 () Bool)

(declare-fun e!4139138 () Bool)

(assert (=> b!6865935 (= e!4139136 e!4139138)))

(declare-fun res!2800975 () Bool)

(assert (=> b!6865935 (=> (not res!2800975) (not e!4139138))))

(declare-fun call!625380 () Bool)

(assert (=> b!6865935 (= res!2800975 call!625380)))

(declare-fun b!6865936 () Bool)

(declare-fun res!2800974 () Bool)

(declare-fun e!4139142 () Bool)

(assert (=> b!6865936 (=> (not res!2800974) (not e!4139142))))

(assert (=> b!6865936 (= res!2800974 call!625380)))

(assert (=> b!6865936 (= e!4139137 e!4139142)))

(declare-fun b!6865937 () Bool)

(declare-fun e!4139139 () Bool)

(declare-fun call!625381 () Bool)

(assert (=> b!6865937 (= e!4139139 call!625381)))

(declare-fun b!6865938 () Bool)

(declare-fun e!4139141 () Bool)

(assert (=> b!6865938 (= e!4139141 e!4139137)))

(declare-fun c!1277989 () Bool)

(assert (=> b!6865938 (= c!1277989 (is-Union!16694 (ite c!1277706 (reg!17023 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))) (ite c!1277707 (regTwo!33901 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))) (regTwo!33900 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))))))))

(declare-fun bm!625374 () Bool)

(declare-fun call!625379 () Bool)

(assert (=> bm!625374 (= call!625379 call!625381)))

(declare-fun bm!625375 () Bool)

(declare-fun c!1277988 () Bool)

(assert (=> bm!625375 (= call!625381 (validRegex!8430 (ite c!1277988 (reg!17023 (ite c!1277706 (reg!17023 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))) (ite c!1277707 (regTwo!33901 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))) (regTwo!33900 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))))) (ite c!1277989 (regTwo!33901 (ite c!1277706 (reg!17023 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))) (ite c!1277707 (regTwo!33901 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))) (regTwo!33900 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))))) (regTwo!33900 (ite c!1277706 (reg!17023 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))) (ite c!1277707 (regTwo!33901 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))) (regTwo!33900 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))))))))))))

(declare-fun b!6865939 () Bool)

(assert (=> b!6865939 (= e!4139141 e!4139139)))

(declare-fun res!2800972 () Bool)

(assert (=> b!6865939 (= res!2800972 (not (nullable!6655 (reg!17023 (ite c!1277706 (reg!17023 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))) (ite c!1277707 (regTwo!33901 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))) (regTwo!33900 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))))))))))

(assert (=> b!6865939 (=> (not res!2800972) (not e!4139139))))

(declare-fun b!6865940 () Bool)

(declare-fun e!4139140 () Bool)

(assert (=> b!6865940 (= e!4139140 e!4139141)))

(assert (=> b!6865940 (= c!1277988 (is-Star!16694 (ite c!1277706 (reg!17023 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))) (ite c!1277707 (regTwo!33901 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))) (regTwo!33900 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))))))))

(declare-fun b!6865934 () Bool)

(assert (=> b!6865934 (= e!4139142 call!625379)))

(declare-fun d!2157081 () Bool)

(declare-fun res!2800971 () Bool)

(assert (=> d!2157081 (=> res!2800971 e!4139140)))

(assert (=> d!2157081 (= res!2800971 (is-ElementMatch!16694 (ite c!1277706 (reg!17023 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))) (ite c!1277707 (regTwo!33901 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))) (regTwo!33900 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))))))))

(assert (=> d!2157081 (= (validRegex!8430 (ite c!1277706 (reg!17023 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))) (ite c!1277707 (regTwo!33901 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))) (regTwo!33900 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))))) e!4139140)))

(declare-fun bm!625376 () Bool)

(assert (=> bm!625376 (= call!625380 (validRegex!8430 (ite c!1277989 (regOne!33901 (ite c!1277706 (reg!17023 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))) (ite c!1277707 (regTwo!33901 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))) (regTwo!33900 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))))) (regOne!33900 (ite c!1277706 (reg!17023 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))) (ite c!1277707 (regTwo!33901 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736))))) (regTwo!33900 (ite c!1277533 (regOne!33901 (generalisedConcat!2282 (exprs!6578 lt!2457736))) (regOne!33900 (generalisedConcat!2282 (exprs!6578 lt!2457736)))))))))))))

(declare-fun b!6865941 () Bool)

(assert (=> b!6865941 (= e!4139138 call!625379)))

(assert (= (and d!2157081 (not res!2800971)) b!6865940))

(assert (= (and b!6865940 c!1277988) b!6865939))

(assert (= (and b!6865940 (not c!1277988)) b!6865938))

(assert (= (and b!6865939 res!2800972) b!6865937))

(assert (= (and b!6865938 c!1277989) b!6865936))

(assert (= (and b!6865938 (not c!1277989)) b!6865933))

(assert (= (and b!6865936 res!2800974) b!6865934))

(assert (= (and b!6865933 (not res!2800973)) b!6865935))

(assert (= (and b!6865935 res!2800975) b!6865941))

(assert (= (or b!6865934 b!6865941) bm!625374))

(assert (= (or b!6865936 b!6865935) bm!625376))

(assert (= (or b!6865937 bm!625374) bm!625375))

(declare-fun m!7598638 () Bool)

(assert (=> bm!625375 m!7598638))

(declare-fun m!7598640 () Bool)

(assert (=> b!6865939 m!7598640))

(declare-fun m!7598642 () Bool)

(assert (=> bm!625376 m!7598642))

(assert (=> bm!625197 d!2157081))

(declare-fun d!2157083 () Bool)

(declare-fun res!2800976 () Bool)

(declare-fun e!4139143 () Bool)

(assert (=> d!2157083 (=> res!2800976 e!4139143)))

(assert (=> d!2157083 (= res!2800976 (is-Nil!66258 res!2800554))))

(assert (=> d!2157083 (= (noDuplicate!2458 res!2800554) e!4139143)))

(declare-fun b!6865942 () Bool)

(declare-fun e!4139144 () Bool)

(assert (=> b!6865942 (= e!4139143 e!4139144)))

(declare-fun res!2800977 () Bool)

(assert (=> b!6865942 (=> (not res!2800977) (not e!4139144))))

(assert (=> b!6865942 (= res!2800977 (not (contains!20352 (t!380125 res!2800554) (h!72706 res!2800554))))))

(declare-fun b!6865943 () Bool)

(assert (=> b!6865943 (= e!4139144 (noDuplicate!2458 (t!380125 res!2800554)))))

(assert (= (and d!2157083 (not res!2800976)) b!6865942))

(assert (= (and b!6865942 res!2800977) b!6865943))

(declare-fun m!7598644 () Bool)

(assert (=> b!6865942 m!7598644))

(declare-fun m!7598646 () Bool)

(assert (=> b!6865943 m!7598646))

(assert (=> d!2156483 d!2157083))

(declare-fun b!6865944 () Bool)

(declare-fun res!2800980 () Bool)

(declare-fun e!4139145 () Bool)

(assert (=> b!6865944 (=> res!2800980 e!4139145)))

(assert (=> b!6865944 (= res!2800980 (not (is-Concat!25539 (ite c!1277687 (regOne!33901 lt!2457832) (regOne!33900 lt!2457832)))))))

(declare-fun e!4139146 () Bool)

(assert (=> b!6865944 (= e!4139146 e!4139145)))

(declare-fun b!6865946 () Bool)

(declare-fun e!4139147 () Bool)

(assert (=> b!6865946 (= e!4139145 e!4139147)))

(declare-fun res!2800982 () Bool)

(assert (=> b!6865946 (=> (not res!2800982) (not e!4139147))))

(declare-fun call!625383 () Bool)

(assert (=> b!6865946 (= res!2800982 call!625383)))

(declare-fun b!6865947 () Bool)

(declare-fun res!2800981 () Bool)

(declare-fun e!4139151 () Bool)

(assert (=> b!6865947 (=> (not res!2800981) (not e!4139151))))

(assert (=> b!6865947 (= res!2800981 call!625383)))

(assert (=> b!6865947 (= e!4139146 e!4139151)))

(declare-fun b!6865948 () Bool)

(declare-fun e!4139148 () Bool)

(declare-fun call!625384 () Bool)

(assert (=> b!6865948 (= e!4139148 call!625384)))

(declare-fun b!6865949 () Bool)

(declare-fun e!4139150 () Bool)

(assert (=> b!6865949 (= e!4139150 e!4139146)))

(declare-fun c!1277991 () Bool)

(assert (=> b!6865949 (= c!1277991 (is-Union!16694 (ite c!1277687 (regOne!33901 lt!2457832) (regOne!33900 lt!2457832))))))

(declare-fun bm!625377 () Bool)

(declare-fun call!625382 () Bool)

(assert (=> bm!625377 (= call!625382 call!625384)))

(declare-fun bm!625378 () Bool)

(declare-fun c!1277990 () Bool)

(assert (=> bm!625378 (= call!625384 (validRegex!8430 (ite c!1277990 (reg!17023 (ite c!1277687 (regOne!33901 lt!2457832) (regOne!33900 lt!2457832))) (ite c!1277991 (regTwo!33901 (ite c!1277687 (regOne!33901 lt!2457832) (regOne!33900 lt!2457832))) (regTwo!33900 (ite c!1277687 (regOne!33901 lt!2457832) (regOne!33900 lt!2457832)))))))))

(declare-fun b!6865950 () Bool)

(assert (=> b!6865950 (= e!4139150 e!4139148)))

(declare-fun res!2800979 () Bool)

(assert (=> b!6865950 (= res!2800979 (not (nullable!6655 (reg!17023 (ite c!1277687 (regOne!33901 lt!2457832) (regOne!33900 lt!2457832))))))))

(assert (=> b!6865950 (=> (not res!2800979) (not e!4139148))))

(declare-fun b!6865951 () Bool)

(declare-fun e!4139149 () Bool)

(assert (=> b!6865951 (= e!4139149 e!4139150)))

(assert (=> b!6865951 (= c!1277990 (is-Star!16694 (ite c!1277687 (regOne!33901 lt!2457832) (regOne!33900 lt!2457832))))))

(declare-fun b!6865945 () Bool)

(assert (=> b!6865945 (= e!4139151 call!625382)))

(declare-fun d!2157085 () Bool)

(declare-fun res!2800978 () Bool)

(assert (=> d!2157085 (=> res!2800978 e!4139149)))

(assert (=> d!2157085 (= res!2800978 (is-ElementMatch!16694 (ite c!1277687 (regOne!33901 lt!2457832) (regOne!33900 lt!2457832))))))

(assert (=> d!2157085 (= (validRegex!8430 (ite c!1277687 (regOne!33901 lt!2457832) (regOne!33900 lt!2457832))) e!4139149)))

(declare-fun bm!625379 () Bool)

(assert (=> bm!625379 (= call!625383 (validRegex!8430 (ite c!1277991 (regOne!33901 (ite c!1277687 (regOne!33901 lt!2457832) (regOne!33900 lt!2457832))) (regOne!33900 (ite c!1277687 (regOne!33901 lt!2457832) (regOne!33900 lt!2457832))))))))

(declare-fun b!6865952 () Bool)

(assert (=> b!6865952 (= e!4139147 call!625382)))

(assert (= (and d!2157085 (not res!2800978)) b!6865951))

(assert (= (and b!6865951 c!1277990) b!6865950))

(assert (= (and b!6865951 (not c!1277990)) b!6865949))

(assert (= (and b!6865950 res!2800979) b!6865948))

(assert (= (and b!6865949 c!1277991) b!6865947))

(assert (= (and b!6865949 (not c!1277991)) b!6865944))

(assert (= (and b!6865947 res!2800981) b!6865945))

(assert (= (and b!6865944 (not res!2800980)) b!6865946))

(assert (= (and b!6865946 res!2800982) b!6865952))

(assert (= (or b!6865945 b!6865952) bm!625377))

(assert (= (or b!6865947 b!6865946) bm!625379))

(assert (= (or b!6865948 bm!625377) bm!625378))

(declare-fun m!7598648 () Bool)

(assert (=> bm!625378 m!7598648))

(declare-fun m!7598650 () Bool)

(assert (=> b!6865950 m!7598650))

(declare-fun m!7598652 () Bool)

(assert (=> bm!625379 m!7598652))

(assert (=> bm!625195 d!2157085))

(declare-fun b!6865953 () Bool)

(declare-fun res!2800985 () Bool)

(declare-fun e!4139152 () Bool)

(assert (=> b!6865953 (=> res!2800985 e!4139152)))

(assert (=> b!6865953 (= res!2800985 (not (is-Concat!25539 lt!2457883)))))

(declare-fun e!4139153 () Bool)

(assert (=> b!6865953 (= e!4139153 e!4139152)))

(declare-fun b!6865955 () Bool)

(declare-fun e!4139154 () Bool)

(assert (=> b!6865955 (= e!4139152 e!4139154)))

(declare-fun res!2800987 () Bool)

(assert (=> b!6865955 (=> (not res!2800987) (not e!4139154))))

(declare-fun call!625386 () Bool)

(assert (=> b!6865955 (= res!2800987 call!625386)))

(declare-fun b!6865956 () Bool)

(declare-fun res!2800986 () Bool)

(declare-fun e!4139158 () Bool)

(assert (=> b!6865956 (=> (not res!2800986) (not e!4139158))))

(assert (=> b!6865956 (= res!2800986 call!625386)))

(assert (=> b!6865956 (= e!4139153 e!4139158)))

(declare-fun b!6865957 () Bool)

(declare-fun e!4139155 () Bool)

(declare-fun call!625387 () Bool)

(assert (=> b!6865957 (= e!4139155 call!625387)))

(declare-fun b!6865958 () Bool)

(declare-fun e!4139157 () Bool)

(assert (=> b!6865958 (= e!4139157 e!4139153)))

(declare-fun c!1277993 () Bool)

(assert (=> b!6865958 (= c!1277993 (is-Union!16694 lt!2457883))))

(declare-fun bm!625380 () Bool)

(declare-fun call!625385 () Bool)

(assert (=> bm!625380 (= call!625385 call!625387)))

(declare-fun c!1277992 () Bool)

(declare-fun bm!625381 () Bool)

(assert (=> bm!625381 (= call!625387 (validRegex!8430 (ite c!1277992 (reg!17023 lt!2457883) (ite c!1277993 (regTwo!33901 lt!2457883) (regTwo!33900 lt!2457883)))))))

(declare-fun b!6865959 () Bool)

(assert (=> b!6865959 (= e!4139157 e!4139155)))

(declare-fun res!2800984 () Bool)

(assert (=> b!6865959 (= res!2800984 (not (nullable!6655 (reg!17023 lt!2457883))))))

(assert (=> b!6865959 (=> (not res!2800984) (not e!4139155))))

(declare-fun b!6865960 () Bool)

(declare-fun e!4139156 () Bool)

(assert (=> b!6865960 (= e!4139156 e!4139157)))

(assert (=> b!6865960 (= c!1277992 (is-Star!16694 lt!2457883))))

(declare-fun b!6865954 () Bool)

(assert (=> b!6865954 (= e!4139158 call!625385)))

(declare-fun d!2157087 () Bool)

(declare-fun res!2800983 () Bool)

(assert (=> d!2157087 (=> res!2800983 e!4139156)))

(assert (=> d!2157087 (= res!2800983 (is-ElementMatch!16694 lt!2457883))))

(assert (=> d!2157087 (= (validRegex!8430 lt!2457883) e!4139156)))

(declare-fun bm!625382 () Bool)

(assert (=> bm!625382 (= call!625386 (validRegex!8430 (ite c!1277993 (regOne!33901 lt!2457883) (regOne!33900 lt!2457883))))))

(declare-fun b!6865961 () Bool)

(assert (=> b!6865961 (= e!4139154 call!625385)))

(assert (= (and d!2157087 (not res!2800983)) b!6865960))

(assert (= (and b!6865960 c!1277992) b!6865959))

(assert (= (and b!6865960 (not c!1277992)) b!6865958))

(assert (= (and b!6865959 res!2800984) b!6865957))

(assert (= (and b!6865958 c!1277993) b!6865956))

(assert (= (and b!6865958 (not c!1277993)) b!6865953))

(assert (= (and b!6865956 res!2800986) b!6865954))

(assert (= (and b!6865953 (not res!2800985)) b!6865955))

(assert (= (and b!6865955 res!2800987) b!6865961))

(assert (= (or b!6865954 b!6865961) bm!625380))

(assert (= (or b!6865956 b!6865955) bm!625382))

(assert (= (or b!6865957 bm!625380) bm!625381))

(declare-fun m!7598654 () Bool)

(assert (=> bm!625381 m!7598654))

(declare-fun m!7598656 () Bool)

(assert (=> b!6865959 m!7598656))

(declare-fun m!7598658 () Bool)

(assert (=> bm!625382 m!7598658))

(assert (=> d!2156611 d!2157087))

(declare-fun d!2157089 () Bool)

(declare-fun res!2800988 () Bool)

(declare-fun e!4139159 () Bool)

(assert (=> d!2157089 (=> res!2800988 e!4139159)))

(assert (=> d!2157089 (= res!2800988 (is-Nil!66257 (exprs!6578 (h!72706 zl!343))))))

(assert (=> d!2157089 (= (forall!15885 (exprs!6578 (h!72706 zl!343)) lambda!388448) e!4139159)))

(declare-fun b!6865962 () Bool)

(declare-fun e!4139160 () Bool)

(assert (=> b!6865962 (= e!4139159 e!4139160)))

(declare-fun res!2800989 () Bool)

(assert (=> b!6865962 (=> (not res!2800989) (not e!4139160))))

(assert (=> b!6865962 (= res!2800989 (dynLambda!26518 lambda!388448 (h!72705 (exprs!6578 (h!72706 zl!343)))))))

(declare-fun b!6865963 () Bool)

(assert (=> b!6865963 (= e!4139160 (forall!15885 (t!380124 (exprs!6578 (h!72706 zl!343))) lambda!388448))))

(assert (= (and d!2157089 (not res!2800988)) b!6865962))

(assert (= (and b!6865962 res!2800989) b!6865963))

(declare-fun b_lambda!259627 () Bool)

(assert (=> (not b_lambda!259627) (not b!6865962)))

(declare-fun m!7598660 () Bool)

(assert (=> b!6865962 m!7598660))

(declare-fun m!7598662 () Bool)

(assert (=> b!6865963 m!7598662))

(assert (=> d!2156611 d!2157089))

(declare-fun d!2157091 () Bool)

(assert (=> d!2157091 (= (head!13770 (unfocusZipperList!2111 zl!343)) (h!72705 (unfocusZipperList!2111 zl!343)))))

(assert (=> b!6864766 d!2157091))

(declare-fun b!6865964 () Bool)

(declare-fun res!2800992 () Bool)

(declare-fun e!4139161 () Bool)

(assert (=> b!6865964 (=> res!2800992 e!4139161)))

(assert (=> b!6865964 (= res!2800992 (not (is-Concat!25539 (ite c!1277656 (reg!17023 lt!2457778) (ite c!1277657 (regTwo!33901 lt!2457778) (regTwo!33900 lt!2457778))))))))

(declare-fun e!4139162 () Bool)

(assert (=> b!6865964 (= e!4139162 e!4139161)))

(declare-fun b!6865966 () Bool)

(declare-fun e!4139163 () Bool)

(assert (=> b!6865966 (= e!4139161 e!4139163)))

(declare-fun res!2800994 () Bool)

(assert (=> b!6865966 (=> (not res!2800994) (not e!4139163))))

(declare-fun call!625389 () Bool)

(assert (=> b!6865966 (= res!2800994 call!625389)))

(declare-fun b!6865967 () Bool)

(declare-fun res!2800993 () Bool)

(declare-fun e!4139167 () Bool)

(assert (=> b!6865967 (=> (not res!2800993) (not e!4139167))))

(assert (=> b!6865967 (= res!2800993 call!625389)))

(assert (=> b!6865967 (= e!4139162 e!4139167)))

(declare-fun b!6865968 () Bool)

(declare-fun e!4139164 () Bool)

(declare-fun call!625390 () Bool)

(assert (=> b!6865968 (= e!4139164 call!625390)))

(declare-fun b!6865969 () Bool)

(declare-fun e!4139166 () Bool)

(assert (=> b!6865969 (= e!4139166 e!4139162)))

(declare-fun c!1277995 () Bool)

(assert (=> b!6865969 (= c!1277995 (is-Union!16694 (ite c!1277656 (reg!17023 lt!2457778) (ite c!1277657 (regTwo!33901 lt!2457778) (regTwo!33900 lt!2457778)))))))

(declare-fun bm!625383 () Bool)

(declare-fun call!625388 () Bool)

(assert (=> bm!625383 (= call!625388 call!625390)))

(declare-fun c!1277994 () Bool)

(declare-fun bm!625384 () Bool)

(assert (=> bm!625384 (= call!625390 (validRegex!8430 (ite c!1277994 (reg!17023 (ite c!1277656 (reg!17023 lt!2457778) (ite c!1277657 (regTwo!33901 lt!2457778) (regTwo!33900 lt!2457778)))) (ite c!1277995 (regTwo!33901 (ite c!1277656 (reg!17023 lt!2457778) (ite c!1277657 (regTwo!33901 lt!2457778) (regTwo!33900 lt!2457778)))) (regTwo!33900 (ite c!1277656 (reg!17023 lt!2457778) (ite c!1277657 (regTwo!33901 lt!2457778) (regTwo!33900 lt!2457778))))))))))

(declare-fun b!6865970 () Bool)

(assert (=> b!6865970 (= e!4139166 e!4139164)))

(declare-fun res!2800991 () Bool)

(assert (=> b!6865970 (= res!2800991 (not (nullable!6655 (reg!17023 (ite c!1277656 (reg!17023 lt!2457778) (ite c!1277657 (regTwo!33901 lt!2457778) (regTwo!33900 lt!2457778)))))))))

(assert (=> b!6865970 (=> (not res!2800991) (not e!4139164))))

(declare-fun b!6865971 () Bool)

(declare-fun e!4139165 () Bool)

(assert (=> b!6865971 (= e!4139165 e!4139166)))

(assert (=> b!6865971 (= c!1277994 (is-Star!16694 (ite c!1277656 (reg!17023 lt!2457778) (ite c!1277657 (regTwo!33901 lt!2457778) (regTwo!33900 lt!2457778)))))))

(declare-fun b!6865965 () Bool)

(assert (=> b!6865965 (= e!4139167 call!625388)))

(declare-fun d!2157093 () Bool)

(declare-fun res!2800990 () Bool)

(assert (=> d!2157093 (=> res!2800990 e!4139165)))

(assert (=> d!2157093 (= res!2800990 (is-ElementMatch!16694 (ite c!1277656 (reg!17023 lt!2457778) (ite c!1277657 (regTwo!33901 lt!2457778) (regTwo!33900 lt!2457778)))))))

(assert (=> d!2157093 (= (validRegex!8430 (ite c!1277656 (reg!17023 lt!2457778) (ite c!1277657 (regTwo!33901 lt!2457778) (regTwo!33900 lt!2457778)))) e!4139165)))

(declare-fun bm!625385 () Bool)

(assert (=> bm!625385 (= call!625389 (validRegex!8430 (ite c!1277995 (regOne!33901 (ite c!1277656 (reg!17023 lt!2457778) (ite c!1277657 (regTwo!33901 lt!2457778) (regTwo!33900 lt!2457778)))) (regOne!33900 (ite c!1277656 (reg!17023 lt!2457778) (ite c!1277657 (regTwo!33901 lt!2457778) (regTwo!33900 lt!2457778)))))))))

(declare-fun b!6865972 () Bool)

(assert (=> b!6865972 (= e!4139163 call!625388)))

(assert (= (and d!2157093 (not res!2800990)) b!6865971))

(assert (= (and b!6865971 c!1277994) b!6865970))

(assert (= (and b!6865971 (not c!1277994)) b!6865969))

(assert (= (and b!6865970 res!2800991) b!6865968))

(assert (= (and b!6865969 c!1277995) b!6865967))

(assert (= (and b!6865969 (not c!1277995)) b!6865964))

(assert (= (and b!6865967 res!2800993) b!6865965))

(assert (= (and b!6865964 (not res!2800992)) b!6865966))

(assert (= (and b!6865966 res!2800994) b!6865972))

(assert (= (or b!6865965 b!6865972) bm!625383))

(assert (= (or b!6865967 b!6865966) bm!625385))

(assert (= (or b!6865968 bm!625383) bm!625384))

(declare-fun m!7598664 () Bool)

(assert (=> bm!625384 m!7598664))

(declare-fun m!7598666 () Bool)

(assert (=> b!6865970 m!7598666))

(declare-fun m!7598668 () Bool)

(assert (=> bm!625385 m!7598668))

(assert (=> bm!625176 d!2157093))

(declare-fun d!2157095 () Bool)

(declare-fun res!2800995 () Bool)

(declare-fun e!4139168 () Bool)

(assert (=> d!2157095 (=> res!2800995 e!4139168)))

(assert (=> d!2157095 (= res!2800995 (is-Nil!66257 (t!380124 (t!380124 (exprs!6578 lt!2457736)))))))

(assert (=> d!2157095 (= (forall!15885 (t!380124 (t!380124 (exprs!6578 lt!2457736))) lambda!388340) e!4139168)))

(declare-fun b!6865973 () Bool)

(declare-fun e!4139169 () Bool)

(assert (=> b!6865973 (= e!4139168 e!4139169)))

(declare-fun res!2800996 () Bool)

(assert (=> b!6865973 (=> (not res!2800996) (not e!4139169))))

(assert (=> b!6865973 (= res!2800996 (dynLambda!26518 lambda!388340 (h!72705 (t!380124 (t!380124 (exprs!6578 lt!2457736))))))))

(declare-fun b!6865974 () Bool)

(assert (=> b!6865974 (= e!4139169 (forall!15885 (t!380124 (t!380124 (t!380124 (exprs!6578 lt!2457736)))) lambda!388340))))

(assert (= (and d!2157095 (not res!2800995)) b!6865973))

(assert (= (and b!6865973 res!2800996) b!6865974))

(declare-fun b_lambda!259629 () Bool)

(assert (=> (not b_lambda!259629) (not b!6865973)))

(declare-fun m!7598670 () Bool)

(assert (=> b!6865973 m!7598670))

(declare-fun m!7598672 () Bool)

(assert (=> b!6865974 m!7598672))

(assert (=> b!6864892 d!2157095))

(declare-fun d!2157097 () Bool)

(assert (=> d!2157097 (= (isEmptyExpr!2014 lt!2457870) (is-EmptyExpr!16694 lt!2457870))))

(assert (=> b!6864772 d!2157097))

(declare-fun b!6865975 () Bool)

(declare-fun e!4139174 () Bool)

(declare-fun call!625391 () Bool)

(assert (=> b!6865975 (= e!4139174 call!625391)))

(declare-fun b!6865976 () Bool)

(declare-fun e!4139171 () Bool)

(declare-fun e!4139170 () Bool)

(assert (=> b!6865976 (= e!4139171 e!4139170)))

(declare-fun c!1277996 () Bool)

(assert (=> b!6865976 (= c!1277996 (is-Union!16694 r!7292))))

(declare-fun bm!625386 () Bool)

(assert (=> bm!625386 (= call!625391 (nullable!6655 (ite c!1277996 (regTwo!33901 r!7292) (regTwo!33900 r!7292))))))

(declare-fun b!6865977 () Bool)

(declare-fun e!4139173 () Bool)

(assert (=> b!6865977 (= e!4139173 e!4139171)))

(declare-fun res!2800998 () Bool)

(assert (=> b!6865977 (=> res!2800998 e!4139171)))

(assert (=> b!6865977 (= res!2800998 (is-Star!16694 r!7292))))

(declare-fun b!6865978 () Bool)

(assert (=> b!6865978 (= e!4139170 e!4139174)))

(declare-fun res!2801001 () Bool)

(declare-fun call!625392 () Bool)

(assert (=> b!6865978 (= res!2801001 call!625392)))

(assert (=> b!6865978 (=> res!2801001 e!4139174)))

(declare-fun bm!625387 () Bool)

(assert (=> bm!625387 (= call!625392 (nullable!6655 (ite c!1277996 (regOne!33901 r!7292) (regOne!33900 r!7292))))))

(declare-fun b!6865980 () Bool)

(declare-fun e!4139175 () Bool)

(assert (=> b!6865980 (= e!4139175 call!625391)))

(declare-fun b!6865981 () Bool)

(declare-fun e!4139172 () Bool)

(assert (=> b!6865981 (= e!4139172 e!4139173)))

(declare-fun res!2800997 () Bool)

(assert (=> b!6865981 (=> (not res!2800997) (not e!4139173))))

(assert (=> b!6865981 (= res!2800997 (and (not (is-EmptyLang!16694 r!7292)) (not (is-ElementMatch!16694 r!7292))))))

(declare-fun b!6865979 () Bool)

(assert (=> b!6865979 (= e!4139170 e!4139175)))

(declare-fun res!2801000 () Bool)

(assert (=> b!6865979 (= res!2801000 call!625392)))

(assert (=> b!6865979 (=> (not res!2801000) (not e!4139175))))

(declare-fun d!2157099 () Bool)

(declare-fun res!2800999 () Bool)

(assert (=> d!2157099 (=> res!2800999 e!4139172)))

(assert (=> d!2157099 (= res!2800999 (is-EmptyExpr!16694 r!7292))))

(assert (=> d!2157099 (= (nullableFct!2529 r!7292) e!4139172)))

(assert (= (and d!2157099 (not res!2800999)) b!6865981))

(assert (= (and b!6865981 res!2800997) b!6865977))

(assert (= (and b!6865977 (not res!2800998)) b!6865976))

(assert (= (and b!6865976 c!1277996) b!6865978))

(assert (= (and b!6865976 (not c!1277996)) b!6865979))

(assert (= (and b!6865978 (not res!2801001)) b!6865975))

(assert (= (and b!6865979 res!2801000) b!6865980))

(assert (= (or b!6865975 b!6865980) bm!625386))

(assert (= (or b!6865978 b!6865979) bm!625387))

(declare-fun m!7598674 () Bool)

(assert (=> bm!625386 m!7598674))

(declare-fun m!7598676 () Bool)

(assert (=> bm!625387 m!7598676))

(assert (=> d!2156583 d!2157099))

(declare-fun b!6865984 () Bool)

(declare-fun e!4139176 () Bool)

(declare-fun tp!1883808 () Bool)

(assert (=> b!6865984 (= e!4139176 tp!1883808)))

(declare-fun b!6865982 () Bool)

(assert (=> b!6865982 (= e!4139176 tp_is_empty!42641)))

(assert (=> b!6864932 (= tp!1883505 e!4139176)))

(declare-fun b!6865985 () Bool)

(declare-fun tp!1883804 () Bool)

(declare-fun tp!1883805 () Bool)

(assert (=> b!6865985 (= e!4139176 (and tp!1883804 tp!1883805))))

(declare-fun b!6865983 () Bool)

(declare-fun tp!1883806 () Bool)

(declare-fun tp!1883807 () Bool)

(assert (=> b!6865983 (= e!4139176 (and tp!1883806 tp!1883807))))

(assert (= (and b!6864932 (is-ElementMatch!16694 (regOne!33901 (regOne!33900 (regTwo!33900 r!7292))))) b!6865982))

(assert (= (and b!6864932 (is-Concat!25539 (regOne!33901 (regOne!33900 (regTwo!33900 r!7292))))) b!6865983))

(assert (= (and b!6864932 (is-Star!16694 (regOne!33901 (regOne!33900 (regTwo!33900 r!7292))))) b!6865984))

(assert (= (and b!6864932 (is-Union!16694 (regOne!33901 (regOne!33900 (regTwo!33900 r!7292))))) b!6865985))

(declare-fun b!6865988 () Bool)

(declare-fun e!4139177 () Bool)

(declare-fun tp!1883813 () Bool)

(assert (=> b!6865988 (= e!4139177 tp!1883813)))

(declare-fun b!6865986 () Bool)

(assert (=> b!6865986 (= e!4139177 tp_is_empty!42641)))

(assert (=> b!6864932 (= tp!1883506 e!4139177)))

(declare-fun b!6865989 () Bool)

(declare-fun tp!1883809 () Bool)

(declare-fun tp!1883810 () Bool)

(assert (=> b!6865989 (= e!4139177 (and tp!1883809 tp!1883810))))

(declare-fun b!6865987 () Bool)

(declare-fun tp!1883811 () Bool)

(declare-fun tp!1883812 () Bool)

(assert (=> b!6865987 (= e!4139177 (and tp!1883811 tp!1883812))))

(assert (= (and b!6864932 (is-ElementMatch!16694 (regTwo!33901 (regOne!33900 (regTwo!33900 r!7292))))) b!6865986))

(assert (= (and b!6864932 (is-Concat!25539 (regTwo!33901 (regOne!33900 (regTwo!33900 r!7292))))) b!6865987))

(assert (= (and b!6864932 (is-Star!16694 (regTwo!33901 (regOne!33900 (regTwo!33900 r!7292))))) b!6865988))

(assert (= (and b!6864932 (is-Union!16694 (regTwo!33901 (regOne!33900 (regTwo!33900 r!7292))))) b!6865989))

(declare-fun b!6865992 () Bool)

(declare-fun e!4139178 () Bool)

(declare-fun tp!1883818 () Bool)

(assert (=> b!6865992 (= e!4139178 tp!1883818)))

(declare-fun b!6865990 () Bool)

(assert (=> b!6865990 (= e!4139178 tp_is_empty!42641)))

(assert (=> b!6864982 (= tp!1883569 e!4139178)))

(declare-fun b!6865993 () Bool)

(declare-fun tp!1883814 () Bool)

(declare-fun tp!1883815 () Bool)

(assert (=> b!6865993 (= e!4139178 (and tp!1883814 tp!1883815))))

(declare-fun b!6865991 () Bool)

(declare-fun tp!1883816 () Bool)

(declare-fun tp!1883817 () Bool)

(assert (=> b!6865991 (= e!4139178 (and tp!1883816 tp!1883817))))

(assert (= (and b!6864982 (is-ElementMatch!16694 (regOne!33901 (regOne!33901 (regTwo!33901 r!7292))))) b!6865990))

(assert (= (and b!6864982 (is-Concat!25539 (regOne!33901 (regOne!33901 (regTwo!33901 r!7292))))) b!6865991))

(assert (= (and b!6864982 (is-Star!16694 (regOne!33901 (regOne!33901 (regTwo!33901 r!7292))))) b!6865992))

(assert (= (and b!6864982 (is-Union!16694 (regOne!33901 (regOne!33901 (regTwo!33901 r!7292))))) b!6865993))

(declare-fun b!6865996 () Bool)

(declare-fun e!4139179 () Bool)

(declare-fun tp!1883823 () Bool)

(assert (=> b!6865996 (= e!4139179 tp!1883823)))

(declare-fun b!6865994 () Bool)

(assert (=> b!6865994 (= e!4139179 tp_is_empty!42641)))

(assert (=> b!6864982 (= tp!1883570 e!4139179)))

(declare-fun b!6865997 () Bool)

(declare-fun tp!1883819 () Bool)

(declare-fun tp!1883820 () Bool)

(assert (=> b!6865997 (= e!4139179 (and tp!1883819 tp!1883820))))

(declare-fun b!6865995 () Bool)

(declare-fun tp!1883821 () Bool)

(declare-fun tp!1883822 () Bool)

(assert (=> b!6865995 (= e!4139179 (and tp!1883821 tp!1883822))))

(assert (= (and b!6864982 (is-ElementMatch!16694 (regTwo!33901 (regOne!33901 (regTwo!33901 r!7292))))) b!6865994))

(assert (= (and b!6864982 (is-Concat!25539 (regTwo!33901 (regOne!33901 (regTwo!33901 r!7292))))) b!6865995))

(assert (= (and b!6864982 (is-Star!16694 (regTwo!33901 (regOne!33901 (regTwo!33901 r!7292))))) b!6865996))

(assert (= (and b!6864982 (is-Union!16694 (regTwo!33901 (regOne!33901 (regTwo!33901 r!7292))))) b!6865997))

(declare-fun b!6866000 () Bool)

(declare-fun e!4139180 () Bool)

(declare-fun tp!1883828 () Bool)

(assert (=> b!6866000 (= e!4139180 tp!1883828)))

(declare-fun b!6865998 () Bool)

(assert (=> b!6865998 (= e!4139180 tp_is_empty!42641)))

(assert (=> b!6864925 (= tp!1883500 e!4139180)))

(declare-fun b!6866001 () Bool)

(declare-fun tp!1883824 () Bool)

(declare-fun tp!1883825 () Bool)

(assert (=> b!6866001 (= e!4139180 (and tp!1883824 tp!1883825))))

(declare-fun b!6865999 () Bool)

(declare-fun tp!1883826 () Bool)

(declare-fun tp!1883827 () Bool)

(assert (=> b!6865999 (= e!4139180 (and tp!1883826 tp!1883827))))

(assert (= (and b!6864925 (is-ElementMatch!16694 (h!72705 (exprs!6578 (h!72706 (t!380125 zl!343)))))) b!6865998))

(assert (= (and b!6864925 (is-Concat!25539 (h!72705 (exprs!6578 (h!72706 (t!380125 zl!343)))))) b!6865999))

(assert (= (and b!6864925 (is-Star!16694 (h!72705 (exprs!6578 (h!72706 (t!380125 zl!343)))))) b!6866000))

(assert (= (and b!6864925 (is-Union!16694 (h!72705 (exprs!6578 (h!72706 (t!380125 zl!343)))))) b!6866001))

(declare-fun b!6866002 () Bool)

(declare-fun e!4139181 () Bool)

(declare-fun tp!1883829 () Bool)

(declare-fun tp!1883830 () Bool)

(assert (=> b!6866002 (= e!4139181 (and tp!1883829 tp!1883830))))

(assert (=> b!6864925 (= tp!1883501 e!4139181)))

(assert (= (and b!6864925 (is-Cons!66257 (t!380124 (exprs!6578 (h!72706 (t!380125 zl!343)))))) b!6866002))

(declare-fun b!6866005 () Bool)

(declare-fun e!4139182 () Bool)

(declare-fun tp!1883835 () Bool)

(assert (=> b!6866005 (= e!4139182 tp!1883835)))

(declare-fun b!6866003 () Bool)

(assert (=> b!6866003 (= e!4139182 tp_is_empty!42641)))

(assert (=> b!6865022 (= tp!1883625 e!4139182)))

(declare-fun b!6866006 () Bool)

(declare-fun tp!1883831 () Bool)

(declare-fun tp!1883832 () Bool)

(assert (=> b!6866006 (= e!4139182 (and tp!1883831 tp!1883832))))

(declare-fun b!6866004 () Bool)

(declare-fun tp!1883833 () Bool)

(declare-fun tp!1883834 () Bool)

(assert (=> b!6866004 (= e!4139182 (and tp!1883833 tp!1883834))))

(assert (= (and b!6865022 (is-ElementMatch!16694 (reg!17023 (regOne!33901 (regOne!33901 r!7292))))) b!6866003))

(assert (= (and b!6865022 (is-Concat!25539 (reg!17023 (regOne!33901 (regOne!33901 r!7292))))) b!6866004))

(assert (= (and b!6865022 (is-Star!16694 (reg!17023 (regOne!33901 (regOne!33901 r!7292))))) b!6866005))

(assert (= (and b!6865022 (is-Union!16694 (reg!17023 (regOne!33901 (regOne!33901 r!7292))))) b!6866006))

(declare-fun b!6866009 () Bool)

(declare-fun e!4139183 () Bool)

(declare-fun tp!1883840 () Bool)

(assert (=> b!6866009 (= e!4139183 tp!1883840)))

(declare-fun b!6866007 () Bool)

(assert (=> b!6866007 (= e!4139183 tp_is_empty!42641)))

(assert (=> b!6865013 (= tp!1883613 e!4139183)))

(declare-fun b!6866010 () Bool)

(declare-fun tp!1883836 () Bool)

(declare-fun tp!1883837 () Bool)

(assert (=> b!6866010 (= e!4139183 (and tp!1883836 tp!1883837))))

(declare-fun b!6866008 () Bool)

(declare-fun tp!1883838 () Bool)

(declare-fun tp!1883839 () Bool)

(assert (=> b!6866008 (= e!4139183 (and tp!1883838 tp!1883839))))

(assert (= (and b!6865013 (is-ElementMatch!16694 (regOne!33900 (regTwo!33901 (regTwo!33900 r!7292))))) b!6866007))

(assert (= (and b!6865013 (is-Concat!25539 (regOne!33900 (regTwo!33901 (regTwo!33900 r!7292))))) b!6866008))

(assert (= (and b!6865013 (is-Star!16694 (regOne!33900 (regTwo!33901 (regTwo!33900 r!7292))))) b!6866009))

(assert (= (and b!6865013 (is-Union!16694 (regOne!33900 (regTwo!33901 (regTwo!33900 r!7292))))) b!6866010))

(declare-fun b!6866013 () Bool)

(declare-fun e!4139184 () Bool)

(declare-fun tp!1883845 () Bool)

(assert (=> b!6866013 (= e!4139184 tp!1883845)))

(declare-fun b!6866011 () Bool)

(assert (=> b!6866011 (= e!4139184 tp_is_empty!42641)))

(assert (=> b!6865013 (= tp!1883614 e!4139184)))

(declare-fun b!6866014 () Bool)

(declare-fun tp!1883841 () Bool)

(declare-fun tp!1883842 () Bool)

(assert (=> b!6866014 (= e!4139184 (and tp!1883841 tp!1883842))))

(declare-fun b!6866012 () Bool)

(declare-fun tp!1883843 () Bool)

(declare-fun tp!1883844 () Bool)

(assert (=> b!6866012 (= e!4139184 (and tp!1883843 tp!1883844))))

(assert (= (and b!6865013 (is-ElementMatch!16694 (regTwo!33900 (regTwo!33901 (regTwo!33900 r!7292))))) b!6866011))

(assert (= (and b!6865013 (is-Concat!25539 (regTwo!33900 (regTwo!33901 (regTwo!33900 r!7292))))) b!6866012))

(assert (= (and b!6865013 (is-Star!16694 (regTwo!33900 (regTwo!33901 (regTwo!33900 r!7292))))) b!6866013))

(assert (= (and b!6865013 (is-Union!16694 (regTwo!33900 (regTwo!33901 (regTwo!33900 r!7292))))) b!6866014))

(declare-fun b!6866017 () Bool)

(declare-fun e!4139185 () Bool)

(declare-fun tp!1883850 () Bool)

(assert (=> b!6866017 (= e!4139185 tp!1883850)))

(declare-fun b!6866015 () Bool)

(assert (=> b!6866015 (= e!4139185 tp_is_empty!42641)))

(assert (=> b!6864968 (= tp!1883550 e!4139185)))

(declare-fun b!6866018 () Bool)

(declare-fun tp!1883846 () Bool)

(declare-fun tp!1883847 () Bool)

(assert (=> b!6866018 (= e!4139185 (and tp!1883846 tp!1883847))))

(declare-fun b!6866016 () Bool)

(declare-fun tp!1883848 () Bool)

(declare-fun tp!1883849 () Bool)

(assert (=> b!6866016 (= e!4139185 (and tp!1883848 tp!1883849))))

(assert (= (and b!6864968 (is-ElementMatch!16694 (regOne!33901 (h!72705 (exprs!6578 setElem!47206))))) b!6866015))

(assert (= (and b!6864968 (is-Concat!25539 (regOne!33901 (h!72705 (exprs!6578 setElem!47206))))) b!6866016))

(assert (= (and b!6864968 (is-Star!16694 (regOne!33901 (h!72705 (exprs!6578 setElem!47206))))) b!6866017))

(assert (= (and b!6864968 (is-Union!16694 (regOne!33901 (h!72705 (exprs!6578 setElem!47206))))) b!6866018))

(declare-fun b!6866021 () Bool)

(declare-fun e!4139186 () Bool)

(declare-fun tp!1883855 () Bool)

(assert (=> b!6866021 (= e!4139186 tp!1883855)))

(declare-fun b!6866019 () Bool)

(assert (=> b!6866019 (= e!4139186 tp_is_empty!42641)))

(assert (=> b!6864968 (= tp!1883551 e!4139186)))

(declare-fun b!6866022 () Bool)

(declare-fun tp!1883851 () Bool)

(declare-fun tp!1883852 () Bool)

(assert (=> b!6866022 (= e!4139186 (and tp!1883851 tp!1883852))))

(declare-fun b!6866020 () Bool)

(declare-fun tp!1883853 () Bool)

(declare-fun tp!1883854 () Bool)

(assert (=> b!6866020 (= e!4139186 (and tp!1883853 tp!1883854))))

(assert (= (and b!6864968 (is-ElementMatch!16694 (regTwo!33901 (h!72705 (exprs!6578 setElem!47206))))) b!6866019))

(assert (= (and b!6864968 (is-Concat!25539 (regTwo!33901 (h!72705 (exprs!6578 setElem!47206))))) b!6866020))

(assert (= (and b!6864968 (is-Star!16694 (regTwo!33901 (h!72705 (exprs!6578 setElem!47206))))) b!6866021))

(assert (= (and b!6864968 (is-Union!16694 (regTwo!33901 (h!72705 (exprs!6578 setElem!47206))))) b!6866022))

(declare-fun condSetEmpty!47218 () Bool)

(assert (=> setNonEmpty!47216 (= condSetEmpty!47218 (= setRest!47216 (as set.empty (Set Context!12156))))))

(declare-fun setRes!47218 () Bool)

(assert (=> setNonEmpty!47216 (= tp!1883605 setRes!47218)))

(declare-fun setIsEmpty!47218 () Bool)

(assert (=> setIsEmpty!47218 setRes!47218))

(declare-fun setElem!47218 () Context!12156)

(declare-fun e!4139187 () Bool)

(declare-fun tp!1883857 () Bool)

(declare-fun setNonEmpty!47218 () Bool)

(assert (=> setNonEmpty!47218 (= setRes!47218 (and tp!1883857 (inv!84983 setElem!47218) e!4139187))))

(declare-fun setRest!47218 () (Set Context!12156))

(assert (=> setNonEmpty!47218 (= setRest!47216 (set.union (set.insert setElem!47218 (as set.empty (Set Context!12156))) setRest!47218))))

(declare-fun b!6866023 () Bool)

(declare-fun tp!1883856 () Bool)

(assert (=> b!6866023 (= e!4139187 tp!1883856)))

(assert (= (and setNonEmpty!47216 condSetEmpty!47218) setIsEmpty!47218))

(assert (= (and setNonEmpty!47216 (not condSetEmpty!47218)) setNonEmpty!47218))

(assert (= setNonEmpty!47218 b!6866023))

(declare-fun m!7598678 () Bool)

(assert (=> setNonEmpty!47218 m!7598678))

(declare-fun b!6866026 () Bool)

(declare-fun e!4139188 () Bool)

(declare-fun tp!1883862 () Bool)

(assert (=> b!6866026 (= e!4139188 tp!1883862)))

(declare-fun b!6866024 () Bool)

(assert (=> b!6866024 (= e!4139188 tp_is_empty!42641)))

(assert (=> b!6864959 (= tp!1883544 e!4139188)))

(declare-fun b!6866027 () Bool)

(declare-fun tp!1883858 () Bool)

(declare-fun tp!1883859 () Bool)

(assert (=> b!6866027 (= e!4139188 (and tp!1883858 tp!1883859))))

(declare-fun b!6866025 () Bool)

(declare-fun tp!1883860 () Bool)

(declare-fun tp!1883861 () Bool)

(assert (=> b!6866025 (= e!4139188 (and tp!1883860 tp!1883861))))

(assert (= (and b!6864959 (is-ElementMatch!16694 (reg!17023 (regTwo!33901 (reg!17023 r!7292))))) b!6866024))

(assert (= (and b!6864959 (is-Concat!25539 (reg!17023 (regTwo!33901 (reg!17023 r!7292))))) b!6866025))

(assert (= (and b!6864959 (is-Star!16694 (reg!17023 (regTwo!33901 (reg!17023 r!7292))))) b!6866026))

(assert (= (and b!6864959 (is-Union!16694 (reg!17023 (regTwo!33901 (reg!17023 r!7292))))) b!6866027))

(declare-fun b!6866030 () Bool)

(declare-fun e!4139189 () Bool)

(declare-fun tp!1883867 () Bool)

(assert (=> b!6866030 (= e!4139189 tp!1883867)))

(declare-fun b!6866028 () Bool)

(assert (=> b!6866028 (= e!4139189 tp_is_empty!42641)))

(assert (=> b!6864966 (= tp!1883552 e!4139189)))

(declare-fun b!6866031 () Bool)

(declare-fun tp!1883863 () Bool)

(declare-fun tp!1883864 () Bool)

(assert (=> b!6866031 (= e!4139189 (and tp!1883863 tp!1883864))))

(declare-fun b!6866029 () Bool)

(declare-fun tp!1883865 () Bool)

(declare-fun tp!1883866 () Bool)

(assert (=> b!6866029 (= e!4139189 (and tp!1883865 tp!1883866))))

(assert (= (and b!6864966 (is-ElementMatch!16694 (regOne!33900 (h!72705 (exprs!6578 setElem!47206))))) b!6866028))

(assert (= (and b!6864966 (is-Concat!25539 (regOne!33900 (h!72705 (exprs!6578 setElem!47206))))) b!6866029))

(assert (= (and b!6864966 (is-Star!16694 (regOne!33900 (h!72705 (exprs!6578 setElem!47206))))) b!6866030))

(assert (= (and b!6864966 (is-Union!16694 (regOne!33900 (h!72705 (exprs!6578 setElem!47206))))) b!6866031))

(declare-fun b!6866034 () Bool)

(declare-fun e!4139190 () Bool)

(declare-fun tp!1883872 () Bool)

(assert (=> b!6866034 (= e!4139190 tp!1883872)))

(declare-fun b!6866032 () Bool)

(assert (=> b!6866032 (= e!4139190 tp_is_empty!42641)))

(assert (=> b!6864966 (= tp!1883553 e!4139190)))

(declare-fun b!6866035 () Bool)

(declare-fun tp!1883868 () Bool)

(declare-fun tp!1883869 () Bool)

(assert (=> b!6866035 (= e!4139190 (and tp!1883868 tp!1883869))))

(declare-fun b!6866033 () Bool)

(declare-fun tp!1883870 () Bool)

(declare-fun tp!1883871 () Bool)

(assert (=> b!6866033 (= e!4139190 (and tp!1883870 tp!1883871))))

(assert (= (and b!6864966 (is-ElementMatch!16694 (regTwo!33900 (h!72705 (exprs!6578 setElem!47206))))) b!6866032))

(assert (= (and b!6864966 (is-Concat!25539 (regTwo!33900 (h!72705 (exprs!6578 setElem!47206))))) b!6866033))

(assert (= (and b!6864966 (is-Star!16694 (regTwo!33900 (h!72705 (exprs!6578 setElem!47206))))) b!6866034))

(assert (= (and b!6864966 (is-Union!16694 (regTwo!33900 (h!72705 (exprs!6578 setElem!47206))))) b!6866035))

(declare-fun b!6866038 () Bool)

(declare-fun e!4139191 () Bool)

(declare-fun tp!1883877 () Bool)

(assert (=> b!6866038 (= e!4139191 tp!1883877)))

(declare-fun b!6866036 () Bool)

(assert (=> b!6866036 (= e!4139191 tp_is_empty!42641)))

(assert (=> b!6864972 (= tp!1883561 e!4139191)))

(declare-fun b!6866039 () Bool)

(declare-fun tp!1883873 () Bool)

(declare-fun tp!1883874 () Bool)

(assert (=> b!6866039 (= e!4139191 (and tp!1883873 tp!1883874))))

(declare-fun b!6866037 () Bool)

(declare-fun tp!1883875 () Bool)

(declare-fun tp!1883876 () Bool)

(assert (=> b!6866037 (= e!4139191 (and tp!1883875 tp!1883876))))

(assert (= (and b!6864972 (is-ElementMatch!16694 (reg!17023 (reg!17023 (reg!17023 r!7292))))) b!6866036))

(assert (= (and b!6864972 (is-Concat!25539 (reg!17023 (reg!17023 (reg!17023 r!7292))))) b!6866037))

(assert (= (and b!6864972 (is-Star!16694 (reg!17023 (reg!17023 (reg!17023 r!7292))))) b!6866038))

(assert (= (and b!6864972 (is-Union!16694 (reg!17023 (reg!17023 (reg!17023 r!7292))))) b!6866039))

(declare-fun b!6866042 () Bool)

(declare-fun e!4139192 () Bool)

(declare-fun tp!1883882 () Bool)

(assert (=> b!6866042 (= e!4139192 tp!1883882)))

(declare-fun b!6866040 () Bool)

(assert (=> b!6866040 (= e!4139192 tp_is_empty!42641)))

(assert (=> b!6865011 (= tp!1883606 e!4139192)))

(declare-fun b!6866043 () Bool)

(declare-fun tp!1883878 () Bool)

(declare-fun tp!1883879 () Bool)

(assert (=> b!6866043 (= e!4139192 (and tp!1883878 tp!1883879))))

(declare-fun b!6866041 () Bool)

(declare-fun tp!1883880 () Bool)

(declare-fun tp!1883881 () Bool)

(assert (=> b!6866041 (= e!4139192 (and tp!1883880 tp!1883881))))

(assert (= (and b!6865011 (is-ElementMatch!16694 (regOne!33901 (regOne!33901 (regTwo!33900 r!7292))))) b!6866040))

(assert (= (and b!6865011 (is-Concat!25539 (regOne!33901 (regOne!33901 (regTwo!33900 r!7292))))) b!6866041))

(assert (= (and b!6865011 (is-Star!16694 (regOne!33901 (regOne!33901 (regTwo!33900 r!7292))))) b!6866042))

(assert (= (and b!6865011 (is-Union!16694 (regOne!33901 (regOne!33901 (regTwo!33900 r!7292))))) b!6866043))

(declare-fun b!6866046 () Bool)

(declare-fun e!4139193 () Bool)

(declare-fun tp!1883887 () Bool)

(assert (=> b!6866046 (= e!4139193 tp!1883887)))

(declare-fun b!6866044 () Bool)

(assert (=> b!6866044 (= e!4139193 tp_is_empty!42641)))

(assert (=> b!6865011 (= tp!1883607 e!4139193)))

(declare-fun b!6866047 () Bool)

(declare-fun tp!1883883 () Bool)

(declare-fun tp!1883884 () Bool)

(assert (=> b!6866047 (= e!4139193 (and tp!1883883 tp!1883884))))

(declare-fun b!6866045 () Bool)

(declare-fun tp!1883885 () Bool)

(declare-fun tp!1883886 () Bool)

(assert (=> b!6866045 (= e!4139193 (and tp!1883885 tp!1883886))))

(assert (= (and b!6865011 (is-ElementMatch!16694 (regTwo!33901 (regOne!33901 (regTwo!33900 r!7292))))) b!6866044))

(assert (= (and b!6865011 (is-Concat!25539 (regTwo!33901 (regOne!33901 (regTwo!33900 r!7292))))) b!6866045))

(assert (= (and b!6865011 (is-Star!16694 (regTwo!33901 (regOne!33901 (regTwo!33900 r!7292))))) b!6866046))

(assert (= (and b!6865011 (is-Union!16694 (regTwo!33901 (regOne!33901 (regTwo!33900 r!7292))))) b!6866047))

(declare-fun b!6866049 () Bool)

(declare-fun e!4139195 () Bool)

(declare-fun tp!1883888 () Bool)

(assert (=> b!6866049 (= e!4139195 tp!1883888)))

(declare-fun b!6866048 () Bool)

(declare-fun tp!1883889 () Bool)

(declare-fun e!4139194 () Bool)

(assert (=> b!6866048 (= e!4139194 (and (inv!84983 (h!72706 (t!380125 res!2800554))) e!4139195 tp!1883889))))

(assert (=> b!6864644 (= tp!1883497 e!4139194)))

(assert (= b!6866048 b!6866049))

(assert (= (and b!6864644 (is-Cons!66258 (t!380125 res!2800554))) b!6866048))

(declare-fun m!7598680 () Bool)

(assert (=> b!6866048 m!7598680))

(declare-fun b!6866052 () Bool)

(declare-fun e!4139196 () Bool)

(declare-fun tp!1883894 () Bool)

(assert (=> b!6866052 (= e!4139196 tp!1883894)))

(declare-fun b!6866050 () Bool)

(assert (=> b!6866050 (= e!4139196 tp_is_empty!42641)))

(assert (=> b!6865009 (= tp!1883608 e!4139196)))

(declare-fun b!6866053 () Bool)

(declare-fun tp!1883890 () Bool)

(declare-fun tp!1883891 () Bool)

(assert (=> b!6866053 (= e!4139196 (and tp!1883890 tp!1883891))))

(declare-fun b!6866051 () Bool)

(declare-fun tp!1883892 () Bool)

(declare-fun tp!1883893 () Bool)

(assert (=> b!6866051 (= e!4139196 (and tp!1883892 tp!1883893))))

(assert (= (and b!6865009 (is-ElementMatch!16694 (regOne!33900 (regOne!33901 (regTwo!33900 r!7292))))) b!6866050))

(assert (= (and b!6865009 (is-Concat!25539 (regOne!33900 (regOne!33901 (regTwo!33900 r!7292))))) b!6866051))

(assert (= (and b!6865009 (is-Star!16694 (regOne!33900 (regOne!33901 (regTwo!33900 r!7292))))) b!6866052))

(assert (= (and b!6865009 (is-Union!16694 (regOne!33900 (regOne!33901 (regTwo!33900 r!7292))))) b!6866053))

(declare-fun b!6866056 () Bool)

(declare-fun e!4139197 () Bool)

(declare-fun tp!1883899 () Bool)

(assert (=> b!6866056 (= e!4139197 tp!1883899)))

(declare-fun b!6866054 () Bool)

(assert (=> b!6866054 (= e!4139197 tp_is_empty!42641)))

(assert (=> b!6865009 (= tp!1883609 e!4139197)))

(declare-fun b!6866057 () Bool)

(declare-fun tp!1883895 () Bool)

(declare-fun tp!1883896 () Bool)

(assert (=> b!6866057 (= e!4139197 (and tp!1883895 tp!1883896))))

(declare-fun b!6866055 () Bool)

(declare-fun tp!1883897 () Bool)

(declare-fun tp!1883898 () Bool)

(assert (=> b!6866055 (= e!4139197 (and tp!1883897 tp!1883898))))

(assert (= (and b!6865009 (is-ElementMatch!16694 (regTwo!33900 (regOne!33901 (regTwo!33900 r!7292))))) b!6866054))

(assert (= (and b!6865009 (is-Concat!25539 (regTwo!33900 (regOne!33901 (regTwo!33900 r!7292))))) b!6866055))

(assert (= (and b!6865009 (is-Star!16694 (regTwo!33900 (regOne!33901 (regTwo!33900 r!7292))))) b!6866056))

(assert (= (and b!6865009 (is-Union!16694 (regTwo!33900 (regOne!33901 (regTwo!33900 r!7292))))) b!6866057))

(declare-fun b!6866060 () Bool)

(declare-fun e!4139198 () Bool)

(declare-fun tp!1883904 () Bool)

(assert (=> b!6866060 (= e!4139198 tp!1883904)))

(declare-fun b!6866058 () Bool)

(assert (=> b!6866058 (= e!4139198 tp_is_empty!42641)))

(assert (=> b!6864964 (= tp!1883545 e!4139198)))

(declare-fun b!6866061 () Bool)

(declare-fun tp!1883900 () Bool)

(declare-fun tp!1883901 () Bool)

(assert (=> b!6866061 (= e!4139198 (and tp!1883900 tp!1883901))))

(declare-fun b!6866059 () Bool)

(declare-fun tp!1883902 () Bool)

(declare-fun tp!1883903 () Bool)

(assert (=> b!6866059 (= e!4139198 (and tp!1883902 tp!1883903))))

(assert (= (and b!6864964 (is-ElementMatch!16694 (regOne!33901 (reg!17023 (regOne!33900 r!7292))))) b!6866058))

(assert (= (and b!6864964 (is-Concat!25539 (regOne!33901 (reg!17023 (regOne!33900 r!7292))))) b!6866059))

(assert (= (and b!6864964 (is-Star!16694 (regOne!33901 (reg!17023 (regOne!33900 r!7292))))) b!6866060))

(assert (= (and b!6864964 (is-Union!16694 (regOne!33901 (reg!17023 (regOne!33900 r!7292))))) b!6866061))

(declare-fun b!6866064 () Bool)

(declare-fun e!4139199 () Bool)

(declare-fun tp!1883909 () Bool)

(assert (=> b!6866064 (= e!4139199 tp!1883909)))

(declare-fun b!6866062 () Bool)

(assert (=> b!6866062 (= e!4139199 tp_is_empty!42641)))

(assert (=> b!6864964 (= tp!1883546 e!4139199)))

(declare-fun b!6866065 () Bool)

(declare-fun tp!1883905 () Bool)

(declare-fun tp!1883906 () Bool)

(assert (=> b!6866065 (= e!4139199 (and tp!1883905 tp!1883906))))

(declare-fun b!6866063 () Bool)

(declare-fun tp!1883907 () Bool)

(declare-fun tp!1883908 () Bool)

(assert (=> b!6866063 (= e!4139199 (and tp!1883907 tp!1883908))))

(assert (= (and b!6864964 (is-ElementMatch!16694 (regTwo!33901 (reg!17023 (regOne!33900 r!7292))))) b!6866062))

(assert (= (and b!6864964 (is-Concat!25539 (regTwo!33901 (reg!17023 (regOne!33900 r!7292))))) b!6866063))

(assert (= (and b!6864964 (is-Star!16694 (regTwo!33901 (reg!17023 (regOne!33900 r!7292))))) b!6866064))

(assert (= (and b!6864964 (is-Union!16694 (regTwo!33901 (reg!17023 (regOne!33900 r!7292))))) b!6866065))

(declare-fun b!6866068 () Bool)

(declare-fun e!4139200 () Bool)

(declare-fun tp!1883914 () Bool)

(assert (=> b!6866068 (= e!4139200 tp!1883914)))

(declare-fun b!6866066 () Bool)

(assert (=> b!6866066 (= e!4139200 tp_is_empty!42641)))

(assert (=> b!6865005 (= tp!1883603 e!4139200)))

(declare-fun b!6866069 () Bool)

(declare-fun tp!1883910 () Bool)

(declare-fun tp!1883911 () Bool)

(assert (=> b!6866069 (= e!4139200 (and tp!1883910 tp!1883911))))

(declare-fun b!6866067 () Bool)

(declare-fun tp!1883912 () Bool)

(declare-fun tp!1883913 () Bool)

(assert (=> b!6866067 (= e!4139200 (and tp!1883912 tp!1883913))))

(assert (= (and b!6865005 (is-ElementMatch!16694 (reg!17023 (regTwo!33900 (reg!17023 r!7292))))) b!6866066))

(assert (= (and b!6865005 (is-Concat!25539 (reg!17023 (regTwo!33900 (reg!17023 r!7292))))) b!6866067))

(assert (= (and b!6865005 (is-Star!16694 (reg!17023 (regTwo!33900 (reg!17023 r!7292))))) b!6866068))

(assert (= (and b!6865005 (is-Union!16694 (reg!17023 (regTwo!33900 (reg!17023 r!7292))))) b!6866069))

(declare-fun b!6866072 () Bool)

(declare-fun e!4139201 () Bool)

(declare-fun tp!1883919 () Bool)

(assert (=> b!6866072 (= e!4139201 tp!1883919)))

(declare-fun b!6866070 () Bool)

(assert (=> b!6866070 (= e!4139201 tp_is_empty!42641)))

(assert (=> b!6864955 (= tp!1883539 e!4139201)))

(declare-fun b!6866073 () Bool)

(declare-fun tp!1883915 () Bool)

(declare-fun tp!1883916 () Bool)

(assert (=> b!6866073 (= e!4139201 (and tp!1883915 tp!1883916))))

(declare-fun b!6866071 () Bool)

(declare-fun tp!1883917 () Bool)

(declare-fun tp!1883918 () Bool)

(assert (=> b!6866071 (= e!4139201 (and tp!1883917 tp!1883918))))

(assert (= (and b!6864955 (is-ElementMatch!16694 (reg!17023 (regOne!33901 (reg!17023 r!7292))))) b!6866070))

(assert (= (and b!6864955 (is-Concat!25539 (reg!17023 (regOne!33901 (reg!17023 r!7292))))) b!6866071))

(assert (= (and b!6864955 (is-Star!16694 (reg!17023 (regOne!33901 (reg!17023 r!7292))))) b!6866072))

(assert (= (and b!6864955 (is-Union!16694 (reg!17023 (regOne!33901 (reg!17023 r!7292))))) b!6866073))

(declare-fun b!6866076 () Bool)

(declare-fun e!4139202 () Bool)

(declare-fun tp!1883924 () Bool)

(assert (=> b!6866076 (= e!4139202 tp!1883924)))

(declare-fun b!6866074 () Bool)

(assert (=> b!6866074 (= e!4139202 tp_is_empty!42641)))

(assert (=> b!6864996 (= tp!1883591 e!4139202)))

(declare-fun b!6866077 () Bool)

(declare-fun tp!1883920 () Bool)

(declare-fun tp!1883921 () Bool)

(assert (=> b!6866077 (= e!4139202 (and tp!1883920 tp!1883921))))

(declare-fun b!6866075 () Bool)

(declare-fun tp!1883922 () Bool)

(declare-fun tp!1883923 () Bool)

(assert (=> b!6866075 (= e!4139202 (and tp!1883922 tp!1883923))))

(assert (= (and b!6864996 (is-ElementMatch!16694 (regOne!33900 (regTwo!33900 (regOne!33900 r!7292))))) b!6866074))

(assert (= (and b!6864996 (is-Concat!25539 (regOne!33900 (regTwo!33900 (regOne!33900 r!7292))))) b!6866075))

(assert (= (and b!6864996 (is-Star!16694 (regOne!33900 (regTwo!33900 (regOne!33900 r!7292))))) b!6866076))

(assert (= (and b!6864996 (is-Union!16694 (regOne!33900 (regTwo!33900 (regOne!33900 r!7292))))) b!6866077))

(declare-fun b!6866080 () Bool)

(declare-fun e!4139203 () Bool)

(declare-fun tp!1883929 () Bool)

(assert (=> b!6866080 (= e!4139203 tp!1883929)))

(declare-fun b!6866078 () Bool)

(assert (=> b!6866078 (= e!4139203 tp_is_empty!42641)))

(assert (=> b!6864996 (= tp!1883592 e!4139203)))

(declare-fun b!6866081 () Bool)

(declare-fun tp!1883925 () Bool)

(declare-fun tp!1883926 () Bool)

(assert (=> b!6866081 (= e!4139203 (and tp!1883925 tp!1883926))))

(declare-fun b!6866079 () Bool)

(declare-fun tp!1883927 () Bool)

(declare-fun tp!1883928 () Bool)

(assert (=> b!6866079 (= e!4139203 (and tp!1883927 tp!1883928))))

(assert (= (and b!6864996 (is-ElementMatch!16694 (regTwo!33900 (regTwo!33900 (regOne!33900 r!7292))))) b!6866078))

(assert (= (and b!6864996 (is-Concat!25539 (regTwo!33900 (regTwo!33900 (regOne!33900 r!7292))))) b!6866079))

(assert (= (and b!6864996 (is-Star!16694 (regTwo!33900 (regTwo!33900 (regOne!33900 r!7292))))) b!6866080))

(assert (= (and b!6864996 (is-Union!16694 (regTwo!33900 (regTwo!33900 (regOne!33900 r!7292))))) b!6866081))

(declare-fun b!6866083 () Bool)

(declare-fun e!4139205 () Bool)

(declare-fun tp!1883930 () Bool)

(assert (=> b!6866083 (= e!4139205 tp!1883930)))

(declare-fun e!4139204 () Bool)

(declare-fun tp!1883931 () Bool)

(declare-fun b!6866082 () Bool)

(assert (=> b!6866082 (= e!4139204 (and (inv!84983 (h!72706 (t!380125 res!2800644))) e!4139205 tp!1883931))))

(assert (=> b!6864895 (= tp!1883499 e!4139204)))

(assert (= b!6866082 b!6866083))

(assert (= (and b!6864895 (is-Cons!66258 (t!380125 res!2800644))) b!6866082))

(declare-fun m!7598682 () Bool)

(assert (=> b!6866082 m!7598682))

(declare-fun b!6866086 () Bool)

(declare-fun e!4139206 () Bool)

(declare-fun tp!1883936 () Bool)

(assert (=> b!6866086 (= e!4139206 tp!1883936)))

(declare-fun b!6866084 () Bool)

(assert (=> b!6866084 (= e!4139206 tp_is_empty!42641)))

(assert (=> b!6864946 (= tp!1883527 e!4139206)))

(declare-fun b!6866087 () Bool)

(declare-fun tp!1883932 () Bool)

(declare-fun tp!1883933 () Bool)

(assert (=> b!6866087 (= e!4139206 (and tp!1883932 tp!1883933))))

(declare-fun b!6866085 () Bool)

(declare-fun tp!1883934 () Bool)

(declare-fun tp!1883935 () Bool)

(assert (=> b!6866085 (= e!4139206 (and tp!1883934 tp!1883935))))

(assert (= (and b!6864946 (is-ElementMatch!16694 (regOne!33900 (regOne!33901 (regOne!33900 r!7292))))) b!6866084))

(assert (= (and b!6864946 (is-Concat!25539 (regOne!33900 (regOne!33901 (regOne!33900 r!7292))))) b!6866085))

(assert (= (and b!6864946 (is-Star!16694 (regOne!33900 (regOne!33901 (regOne!33900 r!7292))))) b!6866086))

(assert (= (and b!6864946 (is-Union!16694 (regOne!33900 (regOne!33901 (regOne!33900 r!7292))))) b!6866087))

(declare-fun b!6866090 () Bool)

(declare-fun e!4139207 () Bool)

(declare-fun tp!1883941 () Bool)

(assert (=> b!6866090 (= e!4139207 tp!1883941)))

(declare-fun b!6866088 () Bool)

(assert (=> b!6866088 (= e!4139207 tp_is_empty!42641)))

(assert (=> b!6864946 (= tp!1883528 e!4139207)))

(declare-fun b!6866091 () Bool)

(declare-fun tp!1883937 () Bool)

(declare-fun tp!1883938 () Bool)

(assert (=> b!6866091 (= e!4139207 (and tp!1883937 tp!1883938))))

(declare-fun b!6866089 () Bool)

(declare-fun tp!1883939 () Bool)

(declare-fun tp!1883940 () Bool)

(assert (=> b!6866089 (= e!4139207 (and tp!1883939 tp!1883940))))

(assert (= (and b!6864946 (is-ElementMatch!16694 (regTwo!33900 (regOne!33901 (regOne!33900 r!7292))))) b!6866088))

(assert (= (and b!6864946 (is-Concat!25539 (regTwo!33900 (regOne!33901 (regOne!33900 r!7292))))) b!6866089))

(assert (= (and b!6864946 (is-Star!16694 (regTwo!33900 (regOne!33901 (regOne!33900 r!7292))))) b!6866090))

(assert (= (and b!6864946 (is-Union!16694 (regTwo!33900 (regOne!33901 (regOne!33900 r!7292))))) b!6866091))

(declare-fun b!6866094 () Bool)

(declare-fun e!4139208 () Bool)

(declare-fun tp!1883946 () Bool)

(assert (=> b!6866094 (= e!4139208 tp!1883946)))

(declare-fun b!6866092 () Bool)

(assert (=> b!6866092 (= e!4139208 tp_is_empty!42641)))

(assert (=> b!6865035 (= tp!1883642 e!4139208)))

(declare-fun b!6866095 () Bool)

(declare-fun tp!1883942 () Bool)

(declare-fun tp!1883943 () Bool)

(assert (=> b!6866095 (= e!4139208 (and tp!1883942 tp!1883943))))

(declare-fun b!6866093 () Bool)

(declare-fun tp!1883944 () Bool)

(declare-fun tp!1883945 () Bool)

(assert (=> b!6866093 (= e!4139208 (and tp!1883944 tp!1883945))))

(assert (= (and b!6865035 (is-ElementMatch!16694 (reg!17023 (regOne!33900 (regOne!33901 r!7292))))) b!6866092))

(assert (= (and b!6865035 (is-Concat!25539 (reg!17023 (regOne!33900 (regOne!33901 r!7292))))) b!6866093))

(assert (= (and b!6865035 (is-Star!16694 (reg!17023 (regOne!33900 (regOne!33901 r!7292))))) b!6866094))

(assert (= (and b!6865035 (is-Union!16694 (reg!17023 (regOne!33900 (regOne!33901 r!7292))))) b!6866095))

(declare-fun b!6866098 () Bool)

(declare-fun e!4139209 () Bool)

(declare-fun tp!1883951 () Bool)

(assert (=> b!6866098 (= e!4139209 tp!1883951)))

(declare-fun b!6866096 () Bool)

(assert (=> b!6866096 (= e!4139209 tp_is_empty!42641)))

(assert (=> b!6864998 (= tp!1883589 e!4139209)))

(declare-fun b!6866099 () Bool)

(declare-fun tp!1883947 () Bool)

(declare-fun tp!1883948 () Bool)

(assert (=> b!6866099 (= e!4139209 (and tp!1883947 tp!1883948))))

(declare-fun b!6866097 () Bool)

(declare-fun tp!1883949 () Bool)

(declare-fun tp!1883950 () Bool)

(assert (=> b!6866097 (= e!4139209 (and tp!1883949 tp!1883950))))

(assert (= (and b!6864998 (is-ElementMatch!16694 (regOne!33901 (regTwo!33900 (regOne!33900 r!7292))))) b!6866096))

(assert (= (and b!6864998 (is-Concat!25539 (regOne!33901 (regTwo!33900 (regOne!33900 r!7292))))) b!6866097))

(assert (= (and b!6864998 (is-Star!16694 (regOne!33901 (regTwo!33900 (regOne!33900 r!7292))))) b!6866098))

(assert (= (and b!6864998 (is-Union!16694 (regOne!33901 (regTwo!33900 (regOne!33900 r!7292))))) b!6866099))

(declare-fun b!6866102 () Bool)

(declare-fun e!4139210 () Bool)

(declare-fun tp!1883956 () Bool)

(assert (=> b!6866102 (= e!4139210 tp!1883956)))

(declare-fun b!6866100 () Bool)

(assert (=> b!6866100 (= e!4139210 tp_is_empty!42641)))

(assert (=> b!6864998 (= tp!1883590 e!4139210)))

(declare-fun b!6866103 () Bool)

(declare-fun tp!1883952 () Bool)

(declare-fun tp!1883953 () Bool)

(assert (=> b!6866103 (= e!4139210 (and tp!1883952 tp!1883953))))

(declare-fun b!6866101 () Bool)

(declare-fun tp!1883954 () Bool)

(declare-fun tp!1883955 () Bool)

(assert (=> b!6866101 (= e!4139210 (and tp!1883954 tp!1883955))))

(assert (= (and b!6864998 (is-ElementMatch!16694 (regTwo!33901 (regTwo!33900 (regOne!33900 r!7292))))) b!6866100))

(assert (= (and b!6864998 (is-Concat!25539 (regTwo!33901 (regTwo!33900 (regOne!33900 r!7292))))) b!6866101))

(assert (= (and b!6864998 (is-Star!16694 (regTwo!33901 (regTwo!33900 (regOne!33900 r!7292))))) b!6866102))

(assert (= (and b!6864998 (is-Union!16694 (regTwo!33901 (regTwo!33900 (regOne!33900 r!7292))))) b!6866103))

(declare-fun b!6866106 () Bool)

(declare-fun e!4139211 () Bool)

(declare-fun tp!1883961 () Bool)

(assert (=> b!6866106 (= e!4139211 tp!1883961)))

(declare-fun b!6866104 () Bool)

(assert (=> b!6866104 (= e!4139211 tp_is_empty!42641)))

(assert (=> b!6864948 (= tp!1883525 e!4139211)))

(declare-fun b!6866107 () Bool)

(declare-fun tp!1883957 () Bool)

(declare-fun tp!1883958 () Bool)

(assert (=> b!6866107 (= e!4139211 (and tp!1883957 tp!1883958))))

(declare-fun b!6866105 () Bool)

(declare-fun tp!1883959 () Bool)

(declare-fun tp!1883960 () Bool)

(assert (=> b!6866105 (= e!4139211 (and tp!1883959 tp!1883960))))

(assert (= (and b!6864948 (is-ElementMatch!16694 (regOne!33901 (regOne!33901 (regOne!33900 r!7292))))) b!6866104))

(assert (= (and b!6864948 (is-Concat!25539 (regOne!33901 (regOne!33901 (regOne!33900 r!7292))))) b!6866105))

(assert (= (and b!6864948 (is-Star!16694 (regOne!33901 (regOne!33901 (regOne!33900 r!7292))))) b!6866106))

(assert (= (and b!6864948 (is-Union!16694 (regOne!33901 (regOne!33901 (regOne!33900 r!7292))))) b!6866107))

(declare-fun b!6866110 () Bool)

(declare-fun e!4139212 () Bool)

(declare-fun tp!1883966 () Bool)

(assert (=> b!6866110 (= e!4139212 tp!1883966)))

(declare-fun b!6866108 () Bool)

(assert (=> b!6866108 (= e!4139212 tp_is_empty!42641)))

(assert (=> b!6864948 (= tp!1883526 e!4139212)))

(declare-fun b!6866111 () Bool)

(declare-fun tp!1883962 () Bool)

(declare-fun tp!1883963 () Bool)

(assert (=> b!6866111 (= e!4139212 (and tp!1883962 tp!1883963))))

(declare-fun b!6866109 () Bool)

(declare-fun tp!1883964 () Bool)

(declare-fun tp!1883965 () Bool)

(assert (=> b!6866109 (= e!4139212 (and tp!1883964 tp!1883965))))

(assert (= (and b!6864948 (is-ElementMatch!16694 (regTwo!33901 (regOne!33901 (regOne!33900 r!7292))))) b!6866108))

(assert (= (and b!6864948 (is-Concat!25539 (regTwo!33901 (regOne!33901 (regOne!33900 r!7292))))) b!6866109))

(assert (= (and b!6864948 (is-Star!16694 (regTwo!33901 (regOne!33901 (regOne!33900 r!7292))))) b!6866110))

(assert (= (and b!6864948 (is-Union!16694 (regTwo!33901 (regOne!33901 (regOne!33900 r!7292))))) b!6866111))

(declare-fun b!6866114 () Bool)

(declare-fun e!4139213 () Bool)

(declare-fun tp!1883971 () Bool)

(assert (=> b!6866114 (= e!4139213 tp!1883971)))

(declare-fun b!6866112 () Bool)

(assert (=> b!6866112 (= e!4139213 tp_is_empty!42641)))

(assert (=> b!6864989 (= tp!1883583 e!4139213)))

(declare-fun b!6866115 () Bool)

(declare-fun tp!1883967 () Bool)

(declare-fun tp!1883968 () Bool)

(assert (=> b!6866115 (= e!4139213 (and tp!1883967 tp!1883968))))

(declare-fun b!6866113 () Bool)

(declare-fun tp!1883969 () Bool)

(declare-fun tp!1883970 () Bool)

(assert (=> b!6866113 (= e!4139213 (and tp!1883969 tp!1883970))))

(assert (= (and b!6864989 (is-ElementMatch!16694 (reg!17023 (reg!17023 (regTwo!33901 r!7292))))) b!6866112))

(assert (= (and b!6864989 (is-Concat!25539 (reg!17023 (reg!17023 (regTwo!33901 r!7292))))) b!6866113))

(assert (= (and b!6864989 (is-Star!16694 (reg!17023 (reg!17023 (regTwo!33901 r!7292))))) b!6866114))

(assert (= (and b!6864989 (is-Union!16694 (reg!17023 (reg!17023 (regTwo!33901 r!7292))))) b!6866115))

(declare-fun b!6866118 () Bool)

(declare-fun e!4139214 () Bool)

(declare-fun tp!1883976 () Bool)

(assert (=> b!6866118 (= e!4139214 tp!1883976)))

(declare-fun b!6866116 () Bool)

(assert (=> b!6866116 (= e!4139214 tp_is_empty!42641)))

(assert (=> b!6864939 (= tp!1883519 e!4139214)))

(declare-fun b!6866119 () Bool)

(declare-fun tp!1883972 () Bool)

(declare-fun tp!1883973 () Bool)

(assert (=> b!6866119 (= e!4139214 (and tp!1883972 tp!1883973))))

(declare-fun b!6866117 () Bool)

(declare-fun tp!1883974 () Bool)

(declare-fun tp!1883975 () Bool)

(assert (=> b!6866117 (= e!4139214 (and tp!1883974 tp!1883975))))

(assert (= (and b!6864939 (is-ElementMatch!16694 (reg!17023 (regOne!33900 (regTwo!33901 r!7292))))) b!6866116))

(assert (= (and b!6864939 (is-Concat!25539 (reg!17023 (regOne!33900 (regTwo!33901 r!7292))))) b!6866117))

(assert (= (and b!6864939 (is-Star!16694 (reg!17023 (regOne!33900 (regTwo!33901 r!7292))))) b!6866118))

(assert (= (and b!6864939 (is-Union!16694 (reg!17023 (regOne!33900 (regTwo!33901 r!7292))))) b!6866119))

(declare-fun b!6866122 () Bool)

(declare-fun e!4139215 () Bool)

(declare-fun tp!1883981 () Bool)

(assert (=> b!6866122 (= e!4139215 tp!1883981)))

(declare-fun b!6866120 () Bool)

(assert (=> b!6866120 (= e!4139215 tp_is_empty!42641)))

(assert (=> b!6865028 (= tp!1883631 e!4139215)))

(declare-fun b!6866123 () Bool)

(declare-fun tp!1883977 () Bool)

(declare-fun tp!1883978 () Bool)

(assert (=> b!6866123 (= e!4139215 (and tp!1883977 tp!1883978))))

(declare-fun b!6866121 () Bool)

(declare-fun tp!1883979 () Bool)

(declare-fun tp!1883980 () Bool)

(assert (=> b!6866121 (= e!4139215 (and tp!1883979 tp!1883980))))

(assert (= (and b!6865028 (is-ElementMatch!16694 (h!72705 (exprs!6578 setElem!47212)))) b!6866120))

(assert (= (and b!6865028 (is-Concat!25539 (h!72705 (exprs!6578 setElem!47212)))) b!6866121))

(assert (= (and b!6865028 (is-Star!16694 (h!72705 (exprs!6578 setElem!47212)))) b!6866122))

(assert (= (and b!6865028 (is-Union!16694 (h!72705 (exprs!6578 setElem!47212)))) b!6866123))

(declare-fun b!6866124 () Bool)

(declare-fun e!4139216 () Bool)

(declare-fun tp!1883982 () Bool)

(declare-fun tp!1883983 () Bool)

(assert (=> b!6866124 (= e!4139216 (and tp!1883982 tp!1883983))))

(assert (=> b!6865028 (= tp!1883632 e!4139216)))

(assert (= (and b!6865028 (is-Cons!66257 (t!380124 (exprs!6578 setElem!47212)))) b!6866124))

(declare-fun b!6866127 () Bool)

(declare-fun e!4139217 () Bool)

(declare-fun tp!1883988 () Bool)

(assert (=> b!6866127 (= e!4139217 tp!1883988)))

(declare-fun b!6866125 () Bool)

(assert (=> b!6866125 (= e!4139217 tp_is_empty!42641)))

(assert (=> b!6864930 (= tp!1883507 e!4139217)))

(declare-fun b!6866128 () Bool)

(declare-fun tp!1883984 () Bool)

(declare-fun tp!1883985 () Bool)

(assert (=> b!6866128 (= e!4139217 (and tp!1883984 tp!1883985))))

(declare-fun b!6866126 () Bool)

(declare-fun tp!1883986 () Bool)

(declare-fun tp!1883987 () Bool)

(assert (=> b!6866126 (= e!4139217 (and tp!1883986 tp!1883987))))

(assert (= (and b!6864930 (is-ElementMatch!16694 (regOne!33900 (regOne!33900 (regTwo!33900 r!7292))))) b!6866125))

(assert (= (and b!6864930 (is-Concat!25539 (regOne!33900 (regOne!33900 (regTwo!33900 r!7292))))) b!6866126))

(assert (= (and b!6864930 (is-Star!16694 (regOne!33900 (regOne!33900 (regTwo!33900 r!7292))))) b!6866127))

(assert (= (and b!6864930 (is-Union!16694 (regOne!33900 (regOne!33900 (regTwo!33900 r!7292))))) b!6866128))

(declare-fun b!6866131 () Bool)

(declare-fun e!4139218 () Bool)

(declare-fun tp!1883993 () Bool)

(assert (=> b!6866131 (= e!4139218 tp!1883993)))

(declare-fun b!6866129 () Bool)

(assert (=> b!6866129 (= e!4139218 tp_is_empty!42641)))

(assert (=> b!6864930 (= tp!1883508 e!4139218)))

(declare-fun b!6866132 () Bool)

(declare-fun tp!1883989 () Bool)

(declare-fun tp!1883990 () Bool)

(assert (=> b!6866132 (= e!4139218 (and tp!1883989 tp!1883990))))

(declare-fun b!6866130 () Bool)

(declare-fun tp!1883991 () Bool)

(declare-fun tp!1883992 () Bool)

(assert (=> b!6866130 (= e!4139218 (and tp!1883991 tp!1883992))))

(assert (= (and b!6864930 (is-ElementMatch!16694 (regTwo!33900 (regOne!33900 (regTwo!33900 r!7292))))) b!6866129))

(assert (= (and b!6864930 (is-Concat!25539 (regTwo!33900 (regOne!33900 (regTwo!33900 r!7292))))) b!6866130))

(assert (= (and b!6864930 (is-Star!16694 (regTwo!33900 (regOne!33900 (regTwo!33900 r!7292))))) b!6866131))

(assert (= (and b!6864930 (is-Union!16694 (regTwo!33900 (regOne!33900 (regTwo!33900 r!7292))))) b!6866132))

(declare-fun b!6866135 () Bool)

(declare-fun e!4139219 () Bool)

(declare-fun tp!1883998 () Bool)

(assert (=> b!6866135 (= e!4139219 tp!1883998)))

(declare-fun b!6866133 () Bool)

(assert (=> b!6866133 (= e!4139219 tp_is_empty!42641)))

(assert (=> b!6864980 (= tp!1883571 e!4139219)))

(declare-fun b!6866136 () Bool)

(declare-fun tp!1883994 () Bool)

(declare-fun tp!1883995 () Bool)

(assert (=> b!6866136 (= e!4139219 (and tp!1883994 tp!1883995))))

(declare-fun b!6866134 () Bool)

(declare-fun tp!1883996 () Bool)

(declare-fun tp!1883997 () Bool)

(assert (=> b!6866134 (= e!4139219 (and tp!1883996 tp!1883997))))

(assert (= (and b!6864980 (is-ElementMatch!16694 (regOne!33900 (regOne!33901 (regTwo!33901 r!7292))))) b!6866133))

(assert (= (and b!6864980 (is-Concat!25539 (regOne!33900 (regOne!33901 (regTwo!33901 r!7292))))) b!6866134))

(assert (= (and b!6864980 (is-Star!16694 (regOne!33900 (regOne!33901 (regTwo!33901 r!7292))))) b!6866135))

(assert (= (and b!6864980 (is-Union!16694 (regOne!33900 (regOne!33901 (regTwo!33901 r!7292))))) b!6866136))

(declare-fun b!6866139 () Bool)

(declare-fun e!4139220 () Bool)

(declare-fun tp!1884003 () Bool)

(assert (=> b!6866139 (= e!4139220 tp!1884003)))

(declare-fun b!6866137 () Bool)

(assert (=> b!6866137 (= e!4139220 tp_is_empty!42641)))

(assert (=> b!6864980 (= tp!1883572 e!4139220)))

(declare-fun b!6866140 () Bool)

(declare-fun tp!1883999 () Bool)

(declare-fun tp!1884000 () Bool)

(assert (=> b!6866140 (= e!4139220 (and tp!1883999 tp!1884000))))

(declare-fun b!6866138 () Bool)

(declare-fun tp!1884001 () Bool)

(declare-fun tp!1884002 () Bool)

(assert (=> b!6866138 (= e!4139220 (and tp!1884001 tp!1884002))))

(assert (= (and b!6864980 (is-ElementMatch!16694 (regTwo!33900 (regOne!33901 (regTwo!33901 r!7292))))) b!6866137))

(assert (= (and b!6864980 (is-Concat!25539 (regTwo!33900 (regOne!33901 (regTwo!33901 r!7292))))) b!6866138))

(assert (= (and b!6864980 (is-Star!16694 (regTwo!33900 (regOne!33901 (regTwo!33901 r!7292))))) b!6866139))

(assert (= (and b!6864980 (is-Union!16694 (regTwo!33900 (regOne!33901 (regTwo!33901 r!7292))))) b!6866140))

(declare-fun b!6866141 () Bool)

(declare-fun e!4139221 () Bool)

(declare-fun tp!1884004 () Bool)

(assert (=> b!6866141 (= e!4139221 (and tp_is_empty!42641 tp!1884004))))

(assert (=> b!6864928 (= tp!1883504 e!4139221)))

(assert (= (and b!6864928 (is-Cons!66259 (t!380126 (t!380126 (t!380126 s!2326))))) b!6866141))

(declare-fun b!6866144 () Bool)

(declare-fun e!4139222 () Bool)

(declare-fun tp!1884009 () Bool)

(assert (=> b!6866144 (= e!4139222 tp!1884009)))

(declare-fun b!6866142 () Bool)

(assert (=> b!6866142 (= e!4139222 tp_is_empty!42641)))

(assert (=> b!6864978 (= tp!1883567 e!4139222)))

(declare-fun b!6866145 () Bool)

(declare-fun tp!1884005 () Bool)

(declare-fun tp!1884006 () Bool)

(assert (=> b!6866145 (= e!4139222 (and tp!1884005 tp!1884006))))

(declare-fun b!6866143 () Bool)

(declare-fun tp!1884007 () Bool)

(declare-fun tp!1884008 () Bool)

(assert (=> b!6866143 (= e!4139222 (and tp!1884007 tp!1884008))))

(assert (= (and b!6864978 (is-ElementMatch!16694 (h!72705 (t!380124 (exprs!6578 (h!72706 zl!343)))))) b!6866142))

(assert (= (and b!6864978 (is-Concat!25539 (h!72705 (t!380124 (exprs!6578 (h!72706 zl!343)))))) b!6866143))

(assert (= (and b!6864978 (is-Star!16694 (h!72705 (t!380124 (exprs!6578 (h!72706 zl!343)))))) b!6866144))

(assert (= (and b!6864978 (is-Union!16694 (h!72705 (t!380124 (exprs!6578 (h!72706 zl!343)))))) b!6866145))

(declare-fun b!6866146 () Bool)

(declare-fun e!4139223 () Bool)

(declare-fun tp!1884010 () Bool)

(declare-fun tp!1884011 () Bool)

(assert (=> b!6866146 (= e!4139223 (and tp!1884010 tp!1884011))))

(assert (=> b!6864978 (= tp!1883568 e!4139223)))

(assert (= (and b!6864978 (is-Cons!66257 (t!380124 (t!380124 (exprs!6578 (h!72706 zl!343)))))) b!6866146))

(declare-fun b!6866149 () Bool)

(declare-fun e!4139224 () Bool)

(declare-fun tp!1884016 () Bool)

(assert (=> b!6866149 (= e!4139224 tp!1884016)))

(declare-fun b!6866147 () Bool)

(assert (=> b!6866147 (= e!4139224 tp_is_empty!42641)))

(assert (=> b!6865027 (= tp!1883626 e!4139224)))

(declare-fun b!6866150 () Bool)

(declare-fun tp!1884012 () Bool)

(declare-fun tp!1884013 () Bool)

(assert (=> b!6866150 (= e!4139224 (and tp!1884012 tp!1884013))))

(declare-fun b!6866148 () Bool)

(declare-fun tp!1884014 () Bool)

(declare-fun tp!1884015 () Bool)

(assert (=> b!6866148 (= e!4139224 (and tp!1884014 tp!1884015))))

(assert (= (and b!6865027 (is-ElementMatch!16694 (regOne!33901 (regTwo!33901 (regOne!33901 r!7292))))) b!6866147))

(assert (= (and b!6865027 (is-Concat!25539 (regOne!33901 (regTwo!33901 (regOne!33901 r!7292))))) b!6866148))

(assert (= (and b!6865027 (is-Star!16694 (regOne!33901 (regTwo!33901 (regOne!33901 r!7292))))) b!6866149))

(assert (= (and b!6865027 (is-Union!16694 (regOne!33901 (regTwo!33901 (regOne!33901 r!7292))))) b!6866150))

(declare-fun b!6866153 () Bool)

(declare-fun e!4139225 () Bool)

(declare-fun tp!1884021 () Bool)

(assert (=> b!6866153 (= e!4139225 tp!1884021)))

(declare-fun b!6866151 () Bool)

(assert (=> b!6866151 (= e!4139225 tp_is_empty!42641)))

(assert (=> b!6865027 (= tp!1883627 e!4139225)))

(declare-fun b!6866154 () Bool)

(declare-fun tp!1884017 () Bool)

(declare-fun tp!1884018 () Bool)

(assert (=> b!6866154 (= e!4139225 (and tp!1884017 tp!1884018))))

(declare-fun b!6866152 () Bool)

(declare-fun tp!1884019 () Bool)

(declare-fun tp!1884020 () Bool)

(assert (=> b!6866152 (= e!4139225 (and tp!1884019 tp!1884020))))

(assert (= (and b!6865027 (is-ElementMatch!16694 (regTwo!33901 (regTwo!33901 (regOne!33901 r!7292))))) b!6866151))

(assert (= (and b!6865027 (is-Concat!25539 (regTwo!33901 (regTwo!33901 (regOne!33901 r!7292))))) b!6866152))

(assert (= (and b!6865027 (is-Star!16694 (regTwo!33901 (regTwo!33901 (regOne!33901 r!7292))))) b!6866153))

(assert (= (and b!6865027 (is-Union!16694 (regTwo!33901 (regTwo!33901 (regOne!33901 r!7292))))) b!6866154))

(declare-fun b!6866157 () Bool)

(declare-fun e!4139226 () Bool)

(declare-fun tp!1884026 () Bool)

(assert (=> b!6866157 (= e!4139226 tp!1884026)))

(declare-fun b!6866155 () Bool)

(assert (=> b!6866155 (= e!4139226 tp_is_empty!42641)))

(assert (=> b!6865018 (= tp!1883620 e!4139226)))

(declare-fun b!6866158 () Bool)

(declare-fun tp!1884022 () Bool)

(declare-fun tp!1884023 () Bool)

(assert (=> b!6866158 (= e!4139226 (and tp!1884022 tp!1884023))))

(declare-fun b!6866156 () Bool)

(declare-fun tp!1884024 () Bool)

(declare-fun tp!1884025 () Bool)

(assert (=> b!6866156 (= e!4139226 (and tp!1884024 tp!1884025))))

(assert (= (and b!6865018 (is-ElementMatch!16694 (reg!17023 (reg!17023 (regTwo!33900 r!7292))))) b!6866155))

(assert (= (and b!6865018 (is-Concat!25539 (reg!17023 (reg!17023 (regTwo!33900 r!7292))))) b!6866156))

(assert (= (and b!6865018 (is-Star!16694 (reg!17023 (reg!17023 (regTwo!33900 r!7292))))) b!6866157))

(assert (= (and b!6865018 (is-Union!16694 (reg!17023 (reg!17023 (regTwo!33900 r!7292))))) b!6866158))

(declare-fun b!6866161 () Bool)

(declare-fun e!4139227 () Bool)

(declare-fun tp!1884031 () Bool)

(assert (=> b!6866161 (= e!4139227 tp!1884031)))

(declare-fun b!6866159 () Bool)

(assert (=> b!6866159 (= e!4139227 tp_is_empty!42641)))

(assert (=> b!6865025 (= tp!1883628 e!4139227)))

(declare-fun b!6866162 () Bool)

(declare-fun tp!1884027 () Bool)

(declare-fun tp!1884028 () Bool)

(assert (=> b!6866162 (= e!4139227 (and tp!1884027 tp!1884028))))

(declare-fun b!6866160 () Bool)

(declare-fun tp!1884029 () Bool)

(declare-fun tp!1884030 () Bool)

(assert (=> b!6866160 (= e!4139227 (and tp!1884029 tp!1884030))))

(assert (= (and b!6865025 (is-ElementMatch!16694 (regOne!33900 (regTwo!33901 (regOne!33901 r!7292))))) b!6866159))

(assert (= (and b!6865025 (is-Concat!25539 (regOne!33900 (regTwo!33901 (regOne!33901 r!7292))))) b!6866160))

(assert (= (and b!6865025 (is-Star!16694 (regOne!33900 (regTwo!33901 (regOne!33901 r!7292))))) b!6866161))

(assert (= (and b!6865025 (is-Union!16694 (regOne!33900 (regTwo!33901 (regOne!33901 r!7292))))) b!6866162))

(declare-fun b!6866165 () Bool)

(declare-fun e!4139228 () Bool)

(declare-fun tp!1884036 () Bool)

(assert (=> b!6866165 (= e!4139228 tp!1884036)))

(declare-fun b!6866163 () Bool)

(assert (=> b!6866163 (= e!4139228 tp_is_empty!42641)))

(assert (=> b!6865025 (= tp!1883629 e!4139228)))

(declare-fun b!6866166 () Bool)

(declare-fun tp!1884032 () Bool)

(declare-fun tp!1884033 () Bool)

(assert (=> b!6866166 (= e!4139228 (and tp!1884032 tp!1884033))))

(declare-fun b!6866164 () Bool)

(declare-fun tp!1884034 () Bool)

(declare-fun tp!1884035 () Bool)

(assert (=> b!6866164 (= e!4139228 (and tp!1884034 tp!1884035))))

(assert (= (and b!6865025 (is-ElementMatch!16694 (regTwo!33900 (regTwo!33901 (regOne!33901 r!7292))))) b!6866163))

(assert (= (and b!6865025 (is-Concat!25539 (regTwo!33900 (regTwo!33901 (regOne!33901 r!7292))))) b!6866164))

(assert (= (and b!6865025 (is-Star!16694 (regTwo!33900 (regTwo!33901 (regOne!33901 r!7292))))) b!6866165))

(assert (= (and b!6865025 (is-Union!16694 (regTwo!33900 (regTwo!33901 (regOne!33901 r!7292))))) b!6866166))

(declare-fun b!6866169 () Bool)

(declare-fun e!4139229 () Bool)

(declare-fun tp!1884041 () Bool)

(assert (=> b!6866169 (= e!4139229 tp!1884041)))

(declare-fun b!6866167 () Bool)

(assert (=> b!6866167 (= e!4139229 tp_is_empty!42641)))

(assert (=> b!6864962 (= tp!1883547 e!4139229)))

(declare-fun b!6866170 () Bool)

(declare-fun tp!1884037 () Bool)

(declare-fun tp!1884038 () Bool)

(assert (=> b!6866170 (= e!4139229 (and tp!1884037 tp!1884038))))

(declare-fun b!6866168 () Bool)

(declare-fun tp!1884039 () Bool)

(declare-fun tp!1884040 () Bool)

(assert (=> b!6866168 (= e!4139229 (and tp!1884039 tp!1884040))))

(assert (= (and b!6864962 (is-ElementMatch!16694 (regOne!33900 (reg!17023 (regOne!33900 r!7292))))) b!6866167))

(assert (= (and b!6864962 (is-Concat!25539 (regOne!33900 (reg!17023 (regOne!33900 r!7292))))) b!6866168))

(assert (= (and b!6864962 (is-Star!16694 (regOne!33900 (reg!17023 (regOne!33900 r!7292))))) b!6866169))

(assert (= (and b!6864962 (is-Union!16694 (regOne!33900 (reg!17023 (regOne!33900 r!7292))))) b!6866170))

(declare-fun b!6866173 () Bool)

(declare-fun e!4139230 () Bool)

(declare-fun tp!1884046 () Bool)

(assert (=> b!6866173 (= e!4139230 tp!1884046)))

(declare-fun b!6866171 () Bool)

(assert (=> b!6866171 (= e!4139230 tp_is_empty!42641)))

(assert (=> b!6864962 (= tp!1883548 e!4139230)))

(declare-fun b!6866174 () Bool)

(declare-fun tp!1884042 () Bool)

(declare-fun tp!1884043 () Bool)

(assert (=> b!6866174 (= e!4139230 (and tp!1884042 tp!1884043))))

(declare-fun b!6866172 () Bool)

(declare-fun tp!1884044 () Bool)

(declare-fun tp!1884045 () Bool)

(assert (=> b!6866172 (= e!4139230 (and tp!1884044 tp!1884045))))

(assert (= (and b!6864962 (is-ElementMatch!16694 (regTwo!33900 (reg!17023 (regOne!33900 r!7292))))) b!6866171))

(assert (= (and b!6864962 (is-Concat!25539 (regTwo!33900 (reg!17023 (regOne!33900 r!7292))))) b!6866172))

(assert (= (and b!6864962 (is-Star!16694 (regTwo!33900 (reg!17023 (regOne!33900 r!7292))))) b!6866173))

(assert (= (and b!6864962 (is-Union!16694 (regTwo!33900 (reg!17023 (regOne!33900 r!7292))))) b!6866174))

(declare-fun b!6866177 () Bool)

(declare-fun e!4139231 () Bool)

(declare-fun tp!1884051 () Bool)

(assert (=> b!6866177 (= e!4139231 tp!1884051)))

(declare-fun b!6866175 () Bool)

(assert (=> b!6866175 (= e!4139231 tp_is_empty!42641)))

(assert (=> b!6864992 (= tp!1883586 e!4139231)))

(declare-fun b!6866178 () Bool)

(declare-fun tp!1884047 () Bool)

(declare-fun tp!1884048 () Bool)

(assert (=> b!6866178 (= e!4139231 (and tp!1884047 tp!1884048))))

(declare-fun b!6866176 () Bool)

(declare-fun tp!1884049 () Bool)

(declare-fun tp!1884050 () Bool)

(assert (=> b!6866176 (= e!4139231 (and tp!1884049 tp!1884050))))

(assert (= (and b!6864992 (is-ElementMatch!16694 (regOne!33900 (regOne!33900 (regOne!33900 r!7292))))) b!6866175))

(assert (= (and b!6864992 (is-Concat!25539 (regOne!33900 (regOne!33900 (regOne!33900 r!7292))))) b!6866176))

(assert (= (and b!6864992 (is-Star!16694 (regOne!33900 (regOne!33900 (regOne!33900 r!7292))))) b!6866177))

(assert (= (and b!6864992 (is-Union!16694 (regOne!33900 (regOne!33900 (regOne!33900 r!7292))))) b!6866178))

(declare-fun b!6866181 () Bool)

(declare-fun e!4139232 () Bool)

(declare-fun tp!1884056 () Bool)

(assert (=> b!6866181 (= e!4139232 tp!1884056)))

(declare-fun b!6866179 () Bool)

(assert (=> b!6866179 (= e!4139232 tp_is_empty!42641)))

(assert (=> b!6864992 (= tp!1883587 e!4139232)))

(declare-fun b!6866182 () Bool)

(declare-fun tp!1884052 () Bool)

(declare-fun tp!1884053 () Bool)

(assert (=> b!6866182 (= e!4139232 (and tp!1884052 tp!1884053))))

(declare-fun b!6866180 () Bool)

(declare-fun tp!1884054 () Bool)

(declare-fun tp!1884055 () Bool)

(assert (=> b!6866180 (= e!4139232 (and tp!1884054 tp!1884055))))

(assert (= (and b!6864992 (is-ElementMatch!16694 (regTwo!33900 (regOne!33900 (regOne!33900 r!7292))))) b!6866179))

(assert (= (and b!6864992 (is-Concat!25539 (regTwo!33900 (regOne!33900 (regOne!33900 r!7292))))) b!6866180))

(assert (= (and b!6864992 (is-Star!16694 (regTwo!33900 (regOne!33900 (regOne!33900 r!7292))))) b!6866181))

(assert (= (and b!6864992 (is-Union!16694 (regTwo!33900 (regOne!33900 (regOne!33900 r!7292))))) b!6866182))

(declare-fun b!6866185 () Bool)

(declare-fun e!4139233 () Bool)

(declare-fun tp!1884061 () Bool)

(assert (=> b!6866185 (= e!4139233 tp!1884061)))

(declare-fun b!6866183 () Bool)

(assert (=> b!6866183 (= e!4139233 tp_is_empty!42641)))

(assert (=> b!6865040 (= tp!1883643 e!4139233)))

(declare-fun b!6866186 () Bool)

(declare-fun tp!1884057 () Bool)

(declare-fun tp!1884058 () Bool)

(assert (=> b!6866186 (= e!4139233 (and tp!1884057 tp!1884058))))

(declare-fun b!6866184 () Bool)

(declare-fun tp!1884059 () Bool)

(declare-fun tp!1884060 () Bool)

(assert (=> b!6866184 (= e!4139233 (and tp!1884059 tp!1884060))))

(assert (= (and b!6865040 (is-ElementMatch!16694 (regOne!33901 (regTwo!33900 (regOne!33901 r!7292))))) b!6866183))

(assert (= (and b!6865040 (is-Concat!25539 (regOne!33901 (regTwo!33900 (regOne!33901 r!7292))))) b!6866184))

(assert (= (and b!6865040 (is-Star!16694 (regOne!33901 (regTwo!33900 (regOne!33901 r!7292))))) b!6866185))

(assert (= (and b!6865040 (is-Union!16694 (regOne!33901 (regTwo!33900 (regOne!33901 r!7292))))) b!6866186))

(declare-fun b!6866189 () Bool)

(declare-fun e!4139234 () Bool)

(declare-fun tp!1884066 () Bool)

(assert (=> b!6866189 (= e!4139234 tp!1884066)))

(declare-fun b!6866187 () Bool)

(assert (=> b!6866187 (= e!4139234 tp_is_empty!42641)))

(assert (=> b!6865040 (= tp!1883644 e!4139234)))

(declare-fun b!6866190 () Bool)

(declare-fun tp!1884062 () Bool)

(declare-fun tp!1884063 () Bool)

(assert (=> b!6866190 (= e!4139234 (and tp!1884062 tp!1884063))))

(declare-fun b!6866188 () Bool)

(declare-fun tp!1884064 () Bool)

(declare-fun tp!1884065 () Bool)

(assert (=> b!6866188 (= e!4139234 (and tp!1884064 tp!1884065))))

(assert (= (and b!6865040 (is-ElementMatch!16694 (regTwo!33901 (regTwo!33900 (regOne!33901 r!7292))))) b!6866187))

(assert (= (and b!6865040 (is-Concat!25539 (regTwo!33901 (regTwo!33900 (regOne!33901 r!7292))))) b!6866188))

(assert (= (and b!6865040 (is-Star!16694 (regTwo!33901 (regTwo!33900 (regOne!33901 r!7292))))) b!6866189))

(assert (= (and b!6865040 (is-Union!16694 (regTwo!33901 (regTwo!33900 (regOne!33901 r!7292))))) b!6866190))

(declare-fun b!6866193 () Bool)

(declare-fun e!4139235 () Bool)

(declare-fun tp!1884071 () Bool)

(assert (=> b!6866193 (= e!4139235 tp!1884071)))

(declare-fun b!6866191 () Bool)

(assert (=> b!6866191 (= e!4139235 tp_is_empty!42641)))

(assert (=> b!6864942 (= tp!1883522 e!4139235)))

(declare-fun b!6866194 () Bool)

(declare-fun tp!1884067 () Bool)

(declare-fun tp!1884068 () Bool)

(assert (=> b!6866194 (= e!4139235 (and tp!1884067 tp!1884068))))

(declare-fun b!6866192 () Bool)

(declare-fun tp!1884069 () Bool)

(declare-fun tp!1884070 () Bool)

(assert (=> b!6866192 (= e!4139235 (and tp!1884069 tp!1884070))))

(assert (= (and b!6864942 (is-ElementMatch!16694 (regOne!33900 (regTwo!33900 (regTwo!33901 r!7292))))) b!6866191))

(assert (= (and b!6864942 (is-Concat!25539 (regOne!33900 (regTwo!33900 (regTwo!33901 r!7292))))) b!6866192))

(assert (= (and b!6864942 (is-Star!16694 (regOne!33900 (regTwo!33900 (regTwo!33901 r!7292))))) b!6866193))

(assert (= (and b!6864942 (is-Union!16694 (regOne!33900 (regTwo!33900 (regTwo!33901 r!7292))))) b!6866194))

(declare-fun b!6866197 () Bool)

(declare-fun e!4139236 () Bool)

(declare-fun tp!1884076 () Bool)

(assert (=> b!6866197 (= e!4139236 tp!1884076)))

(declare-fun b!6866195 () Bool)

(assert (=> b!6866195 (= e!4139236 tp_is_empty!42641)))

(assert (=> b!6864942 (= tp!1883523 e!4139236)))

(declare-fun b!6866198 () Bool)

(declare-fun tp!1884072 () Bool)

(declare-fun tp!1884073 () Bool)

(assert (=> b!6866198 (= e!4139236 (and tp!1884072 tp!1884073))))

(declare-fun b!6866196 () Bool)

(declare-fun tp!1884074 () Bool)

(declare-fun tp!1884075 () Bool)

(assert (=> b!6866196 (= e!4139236 (and tp!1884074 tp!1884075))))

(assert (= (and b!6864942 (is-ElementMatch!16694 (regTwo!33900 (regTwo!33900 (regTwo!33901 r!7292))))) b!6866195))

(assert (= (and b!6864942 (is-Concat!25539 (regTwo!33900 (regTwo!33900 (regTwo!33901 r!7292))))) b!6866196))

(assert (= (and b!6864942 (is-Star!16694 (regTwo!33900 (regTwo!33900 (regTwo!33901 r!7292))))) b!6866197))

(assert (= (and b!6864942 (is-Union!16694 (regTwo!33900 (regTwo!33900 (regTwo!33901 r!7292))))) b!6866198))

(declare-fun b!6866201 () Bool)

(declare-fun e!4139237 () Bool)

(declare-fun tp!1884081 () Bool)

(assert (=> b!6866201 (= e!4139237 tp!1884081)))

(declare-fun b!6866199 () Bool)

(assert (=> b!6866199 (= e!4139237 tp_is_empty!42641)))

(assert (=> b!6865031 (= tp!1883637 e!4139237)))

(declare-fun b!6866202 () Bool)

(declare-fun tp!1884077 () Bool)

(declare-fun tp!1884078 () Bool)

(assert (=> b!6866202 (= e!4139237 (and tp!1884077 tp!1884078))))

(declare-fun b!6866200 () Bool)

(declare-fun tp!1884079 () Bool)

(declare-fun tp!1884080 () Bool)

(assert (=> b!6866200 (= e!4139237 (and tp!1884079 tp!1884080))))

(assert (= (and b!6865031 (is-ElementMatch!16694 (reg!17023 (reg!17023 (regOne!33901 r!7292))))) b!6866199))

(assert (= (and b!6865031 (is-Concat!25539 (reg!17023 (reg!17023 (regOne!33901 r!7292))))) b!6866200))

(assert (= (and b!6865031 (is-Star!16694 (reg!17023 (reg!17023 (regOne!33901 r!7292))))) b!6866201))

(assert (= (and b!6865031 (is-Union!16694 (reg!17023 (reg!17023 (regOne!33901 r!7292))))) b!6866202))

(declare-fun b!6866205 () Bool)

(declare-fun e!4139238 () Bool)

(declare-fun tp!1884086 () Bool)

(assert (=> b!6866205 (= e!4139238 tp!1884086)))

(declare-fun b!6866203 () Bool)

(assert (=> b!6866203 (= e!4139238 tp_is_empty!42641)))

(assert (=> b!6864977 (= tp!1883562 e!4139238)))

(declare-fun b!6866206 () Bool)

(declare-fun tp!1884082 () Bool)

(declare-fun tp!1884083 () Bool)

(assert (=> b!6866206 (= e!4139238 (and tp!1884082 tp!1884083))))

(declare-fun b!6866204 () Bool)

(declare-fun tp!1884084 () Bool)

(declare-fun tp!1884085 () Bool)

(assert (=> b!6866204 (= e!4139238 (and tp!1884084 tp!1884085))))

(assert (= (and b!6864977 (is-ElementMatch!16694 (regOne!33901 (h!72705 (exprs!6578 (h!72706 zl!343)))))) b!6866203))

(assert (= (and b!6864977 (is-Concat!25539 (regOne!33901 (h!72705 (exprs!6578 (h!72706 zl!343)))))) b!6866204))

(assert (= (and b!6864977 (is-Star!16694 (regOne!33901 (h!72705 (exprs!6578 (h!72706 zl!343)))))) b!6866205))

(assert (= (and b!6864977 (is-Union!16694 (regOne!33901 (h!72705 (exprs!6578 (h!72706 zl!343)))))) b!6866206))

(declare-fun b!6866209 () Bool)

(declare-fun e!4139239 () Bool)

(declare-fun tp!1884091 () Bool)

(assert (=> b!6866209 (= e!4139239 tp!1884091)))

(declare-fun b!6866207 () Bool)

(assert (=> b!6866207 (= e!4139239 tp_is_empty!42641)))

(assert (=> b!6864977 (= tp!1883563 e!4139239)))

(declare-fun b!6866210 () Bool)

(declare-fun tp!1884087 () Bool)

(declare-fun tp!1884088 () Bool)

(assert (=> b!6866210 (= e!4139239 (and tp!1884087 tp!1884088))))

(declare-fun b!6866208 () Bool)

(declare-fun tp!1884089 () Bool)

(declare-fun tp!1884090 () Bool)

(assert (=> b!6866208 (= e!4139239 (and tp!1884089 tp!1884090))))

(assert (= (and b!6864977 (is-ElementMatch!16694 (regTwo!33901 (h!72705 (exprs!6578 (h!72706 zl!343)))))) b!6866207))

(assert (= (and b!6864977 (is-Concat!25539 (regTwo!33901 (h!72705 (exprs!6578 (h!72706 zl!343)))))) b!6866208))

(assert (= (and b!6864977 (is-Star!16694 (regTwo!33901 (h!72705 (exprs!6578 (h!72706 zl!343)))))) b!6866209))

(assert (= (and b!6864977 (is-Union!16694 (regTwo!33901 (h!72705 (exprs!6578 (h!72706 zl!343)))))) b!6866210))

(declare-fun b!6866213 () Bool)

(declare-fun e!4139240 () Bool)

(declare-fun tp!1884096 () Bool)

(assert (=> b!6866213 (= e!4139240 tp!1884096)))

(declare-fun b!6866211 () Bool)

(assert (=> b!6866211 (= e!4139240 tp_is_empty!42641)))

(assert (=> b!6865023 (= tp!1883621 e!4139240)))

(declare-fun b!6866214 () Bool)

(declare-fun tp!1884092 () Bool)

(declare-fun tp!1884093 () Bool)

(assert (=> b!6866214 (= e!4139240 (and tp!1884092 tp!1884093))))

(declare-fun b!6866212 () Bool)

(declare-fun tp!1884094 () Bool)

(declare-fun tp!1884095 () Bool)

(assert (=> b!6866212 (= e!4139240 (and tp!1884094 tp!1884095))))

(assert (= (and b!6865023 (is-ElementMatch!16694 (regOne!33901 (regOne!33901 (regOne!33901 r!7292))))) b!6866211))

(assert (= (and b!6865023 (is-Concat!25539 (regOne!33901 (regOne!33901 (regOne!33901 r!7292))))) b!6866212))

(assert (= (and b!6865023 (is-Star!16694 (regOne!33901 (regOne!33901 (regOne!33901 r!7292))))) b!6866213))

(assert (= (and b!6865023 (is-Union!16694 (regOne!33901 (regOne!33901 (regOne!33901 r!7292))))) b!6866214))

(declare-fun b!6866217 () Bool)

(declare-fun e!4139241 () Bool)

(declare-fun tp!1884101 () Bool)

(assert (=> b!6866217 (= e!4139241 tp!1884101)))

(declare-fun b!6866215 () Bool)

(assert (=> b!6866215 (= e!4139241 tp_is_empty!42641)))

(assert (=> b!6865023 (= tp!1883622 e!4139241)))

(declare-fun b!6866218 () Bool)

(declare-fun tp!1884097 () Bool)

(declare-fun tp!1884098 () Bool)

(assert (=> b!6866218 (= e!4139241 (and tp!1884097 tp!1884098))))

(declare-fun b!6866216 () Bool)

(declare-fun tp!1884099 () Bool)

(declare-fun tp!1884100 () Bool)

(assert (=> b!6866216 (= e!4139241 (and tp!1884099 tp!1884100))))

(assert (= (and b!6865023 (is-ElementMatch!16694 (regTwo!33901 (regOne!33901 (regOne!33901 r!7292))))) b!6866215))

(assert (= (and b!6865023 (is-Concat!25539 (regTwo!33901 (regOne!33901 (regOne!33901 r!7292))))) b!6866216))

(assert (= (and b!6865023 (is-Star!16694 (regTwo!33901 (regOne!33901 (regOne!33901 r!7292))))) b!6866217))

(assert (= (and b!6865023 (is-Union!16694 (regTwo!33901 (regOne!33901 (regOne!33901 r!7292))))) b!6866218))

(declare-fun b!6866220 () Bool)

(declare-fun e!4139243 () Bool)

(declare-fun tp!1884102 () Bool)

(assert (=> b!6866220 (= e!4139243 tp!1884102)))

(declare-fun tp!1884103 () Bool)

(declare-fun e!4139242 () Bool)

(declare-fun b!6866219 () Bool)

(assert (=> b!6866219 (= e!4139242 (and (inv!84983 (h!72706 (t!380125 (t!380125 (t!380125 zl!343))))) e!4139243 tp!1884103))))

(assert (=> b!6864926 (= tp!1883503 e!4139242)))

(assert (= b!6866219 b!6866220))

(assert (= (and b!6864926 (is-Cons!66258 (t!380125 (t!380125 (t!380125 zl!343))))) b!6866219))

(declare-fun m!7598684 () Bool)

(assert (=> b!6866219 m!7598684))

(declare-fun b!6866223 () Bool)

(declare-fun e!4139244 () Bool)

(declare-fun tp!1884108 () Bool)

(assert (=> b!6866223 (= e!4139244 tp!1884108)))

(declare-fun b!6866221 () Bool)

(assert (=> b!6866221 (= e!4139244 tp_is_empty!42641)))

(assert (=> b!6864975 (= tp!1883564 e!4139244)))

(declare-fun b!6866224 () Bool)

(declare-fun tp!1884104 () Bool)

(declare-fun tp!1884105 () Bool)

(assert (=> b!6866224 (= e!4139244 (and tp!1884104 tp!1884105))))

(declare-fun b!6866222 () Bool)

(declare-fun tp!1884106 () Bool)

(declare-fun tp!1884107 () Bool)

(assert (=> b!6866222 (= e!4139244 (and tp!1884106 tp!1884107))))

(assert (= (and b!6864975 (is-ElementMatch!16694 (regOne!33900 (h!72705 (exprs!6578 (h!72706 zl!343)))))) b!6866221))

(assert (= (and b!6864975 (is-Concat!25539 (regOne!33900 (h!72705 (exprs!6578 (h!72706 zl!343)))))) b!6866222))

(assert (= (and b!6864975 (is-Star!16694 (regOne!33900 (h!72705 (exprs!6578 (h!72706 zl!343)))))) b!6866223))

(assert (= (and b!6864975 (is-Union!16694 (regOne!33900 (h!72705 (exprs!6578 (h!72706 zl!343)))))) b!6866224))

(declare-fun b!6866227 () Bool)

(declare-fun e!4139245 () Bool)

(declare-fun tp!1884113 () Bool)

(assert (=> b!6866227 (= e!4139245 tp!1884113)))

(declare-fun b!6866225 () Bool)

(assert (=> b!6866225 (= e!4139245 tp_is_empty!42641)))

(assert (=> b!6864975 (= tp!1883565 e!4139245)))

(declare-fun b!6866228 () Bool)

(declare-fun tp!1884109 () Bool)

(declare-fun tp!1884110 () Bool)

(assert (=> b!6866228 (= e!4139245 (and tp!1884109 tp!1884110))))

(declare-fun b!6866226 () Bool)

(declare-fun tp!1884111 () Bool)

(declare-fun tp!1884112 () Bool)

(assert (=> b!6866226 (= e!4139245 (and tp!1884111 tp!1884112))))

(assert (= (and b!6864975 (is-ElementMatch!16694 (regTwo!33900 (h!72705 (exprs!6578 (h!72706 zl!343)))))) b!6866225))

(assert (= (and b!6864975 (is-Concat!25539 (regTwo!33900 (h!72705 (exprs!6578 (h!72706 zl!343)))))) b!6866226))

(assert (= (and b!6864975 (is-Star!16694 (regTwo!33900 (h!72705 (exprs!6578 (h!72706 zl!343)))))) b!6866227))

(assert (= (and b!6864975 (is-Union!16694 (regTwo!33900 (h!72705 (exprs!6578 (h!72706 zl!343)))))) b!6866228))

(declare-fun b!6866231 () Bool)

(declare-fun e!4139246 () Bool)

(declare-fun tp!1884118 () Bool)

(assert (=> b!6866231 (= e!4139246 tp!1884118)))

(declare-fun b!6866229 () Bool)

(assert (=> b!6866229 (= e!4139246 tp_is_empty!42641)))

(assert (=> b!6865014 (= tp!1883615 e!4139246)))

(declare-fun b!6866232 () Bool)

(declare-fun tp!1884114 () Bool)

(declare-fun tp!1884115 () Bool)

(assert (=> b!6866232 (= e!4139246 (and tp!1884114 tp!1884115))))

(declare-fun b!6866230 () Bool)

(declare-fun tp!1884116 () Bool)

(declare-fun tp!1884117 () Bool)

(assert (=> b!6866230 (= e!4139246 (and tp!1884116 tp!1884117))))

(assert (= (and b!6865014 (is-ElementMatch!16694 (reg!17023 (regTwo!33901 (regTwo!33900 r!7292))))) b!6866229))

(assert (= (and b!6865014 (is-Concat!25539 (reg!17023 (regTwo!33901 (regTwo!33900 r!7292))))) b!6866230))

(assert (= (and b!6865014 (is-Star!16694 (reg!17023 (regTwo!33901 (regTwo!33900 r!7292))))) b!6866231))

(assert (= (and b!6865014 (is-Union!16694 (reg!17023 (regTwo!33901 (regTwo!33900 r!7292))))) b!6866232))

(declare-fun b!6866233 () Bool)

(declare-fun e!4139247 () Bool)

(declare-fun tp!1884119 () Bool)

(declare-fun tp!1884120 () Bool)

(assert (=> b!6866233 (= e!4139247 (and tp!1884119 tp!1884120))))

(assert (=> b!6865007 (= tp!1883604 e!4139247)))

(assert (= (and b!6865007 (is-Cons!66257 (exprs!6578 setElem!47216))) b!6866233))

(declare-fun b!6866236 () Bool)

(declare-fun e!4139248 () Bool)

(declare-fun tp!1884125 () Bool)

(assert (=> b!6866236 (= e!4139248 tp!1884125)))

(declare-fun b!6866234 () Bool)

(assert (=> b!6866234 (= e!4139248 tp_is_empty!42641)))

(assert (=> b!6864960 (= tp!1883540 e!4139248)))

(declare-fun b!6866237 () Bool)

(declare-fun tp!1884121 () Bool)

(declare-fun tp!1884122 () Bool)

(assert (=> b!6866237 (= e!4139248 (and tp!1884121 tp!1884122))))

(declare-fun b!6866235 () Bool)

(declare-fun tp!1884123 () Bool)

(declare-fun tp!1884124 () Bool)

(assert (=> b!6866235 (= e!4139248 (and tp!1884123 tp!1884124))))

(assert (= (and b!6864960 (is-ElementMatch!16694 (regOne!33901 (regTwo!33901 (reg!17023 r!7292))))) b!6866234))

(assert (= (and b!6864960 (is-Concat!25539 (regOne!33901 (regTwo!33901 (reg!17023 r!7292))))) b!6866235))

(assert (= (and b!6864960 (is-Star!16694 (regOne!33901 (regTwo!33901 (reg!17023 r!7292))))) b!6866236))

(assert (= (and b!6864960 (is-Union!16694 (regOne!33901 (regTwo!33901 (reg!17023 r!7292))))) b!6866237))

(declare-fun b!6866240 () Bool)

(declare-fun e!4139249 () Bool)

(declare-fun tp!1884130 () Bool)

(assert (=> b!6866240 (= e!4139249 tp!1884130)))

(declare-fun b!6866238 () Bool)

(assert (=> b!6866238 (= e!4139249 tp_is_empty!42641)))

(assert (=> b!6864960 (= tp!1883541 e!4139249)))

(declare-fun b!6866241 () Bool)

(declare-fun tp!1884126 () Bool)

(declare-fun tp!1884127 () Bool)

(assert (=> b!6866241 (= e!4139249 (and tp!1884126 tp!1884127))))

(declare-fun b!6866239 () Bool)

(declare-fun tp!1884128 () Bool)

(declare-fun tp!1884129 () Bool)

(assert (=> b!6866239 (= e!4139249 (and tp!1884128 tp!1884129))))

(assert (= (and b!6864960 (is-ElementMatch!16694 (regTwo!33901 (regTwo!33901 (reg!17023 r!7292))))) b!6866238))

(assert (= (and b!6864960 (is-Concat!25539 (regTwo!33901 (regTwo!33901 (reg!17023 r!7292))))) b!6866239))

(assert (= (and b!6864960 (is-Star!16694 (regTwo!33901 (regTwo!33901 (reg!17023 r!7292))))) b!6866240))

(assert (= (and b!6864960 (is-Union!16694 (regTwo!33901 (regTwo!33901 (reg!17023 r!7292))))) b!6866241))

(declare-fun b!6866244 () Bool)

(declare-fun e!4139250 () Bool)

(declare-fun tp!1884135 () Bool)

(assert (=> b!6866244 (= e!4139250 tp!1884135)))

(declare-fun b!6866242 () Bool)

(assert (=> b!6866242 (= e!4139250 tp_is_empty!42641)))

(assert (=> b!6865001 (= tp!1883598 e!4139250)))

(declare-fun b!6866245 () Bool)

(declare-fun tp!1884131 () Bool)

(declare-fun tp!1884132 () Bool)

(assert (=> b!6866245 (= e!4139250 (and tp!1884131 tp!1884132))))

(declare-fun b!6866243 () Bool)

(declare-fun tp!1884133 () Bool)

(declare-fun tp!1884134 () Bool)

(assert (=> b!6866243 (= e!4139250 (and tp!1884133 tp!1884134))))

(assert (= (and b!6865001 (is-ElementMatch!16694 (reg!17023 (regOne!33900 (reg!17023 r!7292))))) b!6866242))

(assert (= (and b!6865001 (is-Concat!25539 (reg!17023 (regOne!33900 (reg!17023 r!7292))))) b!6866243))

(assert (= (and b!6865001 (is-Star!16694 (reg!17023 (regOne!33900 (reg!17023 r!7292))))) b!6866244))

(assert (= (and b!6865001 (is-Union!16694 (reg!17023 (regOne!33900 (reg!17023 r!7292))))) b!6866245))

(declare-fun b!6866248 () Bool)

(declare-fun e!4139251 () Bool)

(declare-fun tp!1884140 () Bool)

(assert (=> b!6866248 (= e!4139251 tp!1884140)))

(declare-fun b!6866246 () Bool)

(assert (=> b!6866246 (= e!4139251 tp_is_empty!42641)))

(assert (=> b!6864951 (= tp!1883534 e!4139251)))

(declare-fun b!6866249 () Bool)

(declare-fun tp!1884136 () Bool)

(declare-fun tp!1884137 () Bool)

(assert (=> b!6866249 (= e!4139251 (and tp!1884136 tp!1884137))))

(declare-fun b!6866247 () Bool)

(declare-fun tp!1884138 () Bool)

(declare-fun tp!1884139 () Bool)

(assert (=> b!6866247 (= e!4139251 (and tp!1884138 tp!1884139))))

(assert (= (and b!6864951 (is-ElementMatch!16694 (reg!17023 (regTwo!33901 (regOne!33900 r!7292))))) b!6866246))

(assert (= (and b!6864951 (is-Concat!25539 (reg!17023 (regTwo!33901 (regOne!33900 r!7292))))) b!6866247))

(assert (= (and b!6864951 (is-Star!16694 (reg!17023 (regTwo!33901 (regOne!33900 r!7292))))) b!6866248))

(assert (= (and b!6864951 (is-Union!16694 (reg!17023 (regTwo!33901 (regOne!33900 r!7292))))) b!6866249))

(declare-fun b!6866252 () Bool)

(declare-fun e!4139252 () Bool)

(declare-fun tp!1884145 () Bool)

(assert (=> b!6866252 (= e!4139252 tp!1884145)))

(declare-fun b!6866250 () Bool)

(assert (=> b!6866250 (= e!4139252 tp_is_empty!42641)))

(assert (=> b!6864994 (= tp!1883584 e!4139252)))

(declare-fun b!6866253 () Bool)

(declare-fun tp!1884141 () Bool)

(declare-fun tp!1884142 () Bool)

(assert (=> b!6866253 (= e!4139252 (and tp!1884141 tp!1884142))))

(declare-fun b!6866251 () Bool)

(declare-fun tp!1884143 () Bool)

(declare-fun tp!1884144 () Bool)

(assert (=> b!6866251 (= e!4139252 (and tp!1884143 tp!1884144))))

(assert (= (and b!6864994 (is-ElementMatch!16694 (regOne!33901 (regOne!33900 (regOne!33900 r!7292))))) b!6866250))

(assert (= (and b!6864994 (is-Concat!25539 (regOne!33901 (regOne!33900 (regOne!33900 r!7292))))) b!6866251))

(assert (= (and b!6864994 (is-Star!16694 (regOne!33901 (regOne!33900 (regOne!33900 r!7292))))) b!6866252))

(assert (= (and b!6864994 (is-Union!16694 (regOne!33901 (regOne!33900 (regOne!33900 r!7292))))) b!6866253))

(declare-fun b!6866256 () Bool)

(declare-fun e!4139253 () Bool)

(declare-fun tp!1884150 () Bool)

(assert (=> b!6866256 (= e!4139253 tp!1884150)))

(declare-fun b!6866254 () Bool)

(assert (=> b!6866254 (= e!4139253 tp_is_empty!42641)))

(assert (=> b!6864994 (= tp!1883585 e!4139253)))

(declare-fun b!6866257 () Bool)

(declare-fun tp!1884146 () Bool)

(declare-fun tp!1884147 () Bool)

(assert (=> b!6866257 (= e!4139253 (and tp!1884146 tp!1884147))))

(declare-fun b!6866255 () Bool)

(declare-fun tp!1884148 () Bool)

(declare-fun tp!1884149 () Bool)

(assert (=> b!6866255 (= e!4139253 (and tp!1884148 tp!1884149))))

(assert (= (and b!6864994 (is-ElementMatch!16694 (regTwo!33901 (regOne!33900 (regOne!33900 r!7292))))) b!6866254))

(assert (= (and b!6864994 (is-Concat!25539 (regTwo!33901 (regOne!33900 (regOne!33900 r!7292))))) b!6866255))

(assert (= (and b!6864994 (is-Star!16694 (regTwo!33901 (regOne!33900 (regOne!33900 r!7292))))) b!6866256))

(assert (= (and b!6864994 (is-Union!16694 (regTwo!33901 (regOne!33900 (regOne!33900 r!7292))))) b!6866257))

(declare-fun b!6866260 () Bool)

(declare-fun e!4139254 () Bool)

(declare-fun tp!1884155 () Bool)

(assert (=> b!6866260 (= e!4139254 tp!1884155)))

(declare-fun b!6866258 () Bool)

(assert (=> b!6866258 (= e!4139254 tp_is_empty!42641)))

(assert (=> b!6864944 (= tp!1883520 e!4139254)))

(declare-fun b!6866261 () Bool)

(declare-fun tp!1884151 () Bool)

(declare-fun tp!1884152 () Bool)

(assert (=> b!6866261 (= e!4139254 (and tp!1884151 tp!1884152))))

(declare-fun b!6866259 () Bool)

(declare-fun tp!1884153 () Bool)

(declare-fun tp!1884154 () Bool)

(assert (=> b!6866259 (= e!4139254 (and tp!1884153 tp!1884154))))

(assert (= (and b!6864944 (is-ElementMatch!16694 (regOne!33901 (regTwo!33900 (regTwo!33901 r!7292))))) b!6866258))

(assert (= (and b!6864944 (is-Concat!25539 (regOne!33901 (regTwo!33900 (regTwo!33901 r!7292))))) b!6866259))

(assert (= (and b!6864944 (is-Star!16694 (regOne!33901 (regTwo!33900 (regTwo!33901 r!7292))))) b!6866260))

(assert (= (and b!6864944 (is-Union!16694 (regOne!33901 (regTwo!33900 (regTwo!33901 r!7292))))) b!6866261))

(declare-fun b!6866264 () Bool)

(declare-fun e!4139255 () Bool)

(declare-fun tp!1884160 () Bool)

(assert (=> b!6866264 (= e!4139255 tp!1884160)))

(declare-fun b!6866262 () Bool)

(assert (=> b!6866262 (= e!4139255 tp_is_empty!42641)))

(assert (=> b!6864944 (= tp!1883521 e!4139255)))

(declare-fun b!6866265 () Bool)

(declare-fun tp!1884156 () Bool)

(declare-fun tp!1884157 () Bool)

(assert (=> b!6866265 (= e!4139255 (and tp!1884156 tp!1884157))))

(declare-fun b!6866263 () Bool)

(declare-fun tp!1884158 () Bool)

(declare-fun tp!1884159 () Bool)

(assert (=> b!6866263 (= e!4139255 (and tp!1884158 tp!1884159))))

(assert (= (and b!6864944 (is-ElementMatch!16694 (regTwo!33901 (regTwo!33900 (regTwo!33901 r!7292))))) b!6866262))

(assert (= (and b!6864944 (is-Concat!25539 (regTwo!33901 (regTwo!33900 (regTwo!33901 r!7292))))) b!6866263))

(assert (= (and b!6864944 (is-Star!16694 (regTwo!33901 (regTwo!33900 (regTwo!33901 r!7292))))) b!6866264))

(assert (= (and b!6864944 (is-Union!16694 (regTwo!33901 (regTwo!33900 (regTwo!33901 r!7292))))) b!6866265))

(declare-fun b!6866268 () Bool)

(declare-fun e!4139256 () Bool)

(declare-fun tp!1884165 () Bool)

(assert (=> b!6866268 (= e!4139256 tp!1884165)))

(declare-fun b!6866266 () Bool)

(assert (=> b!6866266 (= e!4139256 tp_is_empty!42641)))

(assert (=> b!6864985 (= tp!1883578 e!4139256)))

(declare-fun b!6866269 () Bool)

(declare-fun tp!1884161 () Bool)

(declare-fun tp!1884162 () Bool)

(assert (=> b!6866269 (= e!4139256 (and tp!1884161 tp!1884162))))

(declare-fun b!6866267 () Bool)

(declare-fun tp!1884163 () Bool)

(declare-fun tp!1884164 () Bool)

(assert (=> b!6866267 (= e!4139256 (and tp!1884163 tp!1884164))))

(assert (= (and b!6864985 (is-ElementMatch!16694 (reg!17023 (regTwo!33901 (regTwo!33901 r!7292))))) b!6866266))

(assert (= (and b!6864985 (is-Concat!25539 (reg!17023 (regTwo!33901 (regTwo!33901 r!7292))))) b!6866267))

(assert (= (and b!6864985 (is-Star!16694 (reg!17023 (regTwo!33901 (regTwo!33901 r!7292))))) b!6866268))

(assert (= (and b!6864985 (is-Union!16694 (reg!17023 (regTwo!33901 (regTwo!33901 r!7292))))) b!6866269))

(declare-fun b!6866272 () Bool)

(declare-fun e!4139257 () Bool)

(declare-fun tp!1884170 () Bool)

(assert (=> b!6866272 (= e!4139257 tp!1884170)))

(declare-fun b!6866270 () Bool)

(assert (=> b!6866270 (= e!4139257 tp_is_empty!42641)))

(assert (=> b!6864935 (= tp!1883514 e!4139257)))

(declare-fun b!6866273 () Bool)

(declare-fun tp!1884166 () Bool)

(declare-fun tp!1884167 () Bool)

(assert (=> b!6866273 (= e!4139257 (and tp!1884166 tp!1884167))))

(declare-fun b!6866271 () Bool)

(declare-fun tp!1884168 () Bool)

(declare-fun tp!1884169 () Bool)

(assert (=> b!6866271 (= e!4139257 (and tp!1884168 tp!1884169))))

(assert (= (and b!6864935 (is-ElementMatch!16694 (reg!17023 (regTwo!33900 (regTwo!33900 r!7292))))) b!6866270))

(assert (= (and b!6864935 (is-Concat!25539 (reg!17023 (regTwo!33900 (regTwo!33900 r!7292))))) b!6866271))

(assert (= (and b!6864935 (is-Star!16694 (reg!17023 (regTwo!33900 (regTwo!33900 r!7292))))) b!6866272))

(assert (= (and b!6864935 (is-Union!16694 (reg!17023 (regTwo!33900 (regTwo!33900 r!7292))))) b!6866273))

(declare-fun b!6866276 () Bool)

(declare-fun e!4139258 () Bool)

(declare-fun tp!1884175 () Bool)

(assert (=> b!6866276 (= e!4139258 tp!1884175)))

(declare-fun b!6866274 () Bool)

(assert (=> b!6866274 (= e!4139258 tp_is_empty!42641)))

(assert (=> b!6864958 (= tp!1883542 e!4139258)))

(declare-fun b!6866277 () Bool)

(declare-fun tp!1884171 () Bool)

(declare-fun tp!1884172 () Bool)

(assert (=> b!6866277 (= e!4139258 (and tp!1884171 tp!1884172))))

(declare-fun b!6866275 () Bool)

(declare-fun tp!1884173 () Bool)

(declare-fun tp!1884174 () Bool)

(assert (=> b!6866275 (= e!4139258 (and tp!1884173 tp!1884174))))

(assert (= (and b!6864958 (is-ElementMatch!16694 (regOne!33900 (regTwo!33901 (reg!17023 r!7292))))) b!6866274))

(assert (= (and b!6864958 (is-Concat!25539 (regOne!33900 (regTwo!33901 (reg!17023 r!7292))))) b!6866275))

(assert (= (and b!6864958 (is-Star!16694 (regOne!33900 (regTwo!33901 (reg!17023 r!7292))))) b!6866276))

(assert (= (and b!6864958 (is-Union!16694 (regOne!33900 (regTwo!33901 (reg!17023 r!7292))))) b!6866277))

(declare-fun b!6866280 () Bool)

(declare-fun e!4139259 () Bool)

(declare-fun tp!1884180 () Bool)

(assert (=> b!6866280 (= e!4139259 tp!1884180)))

(declare-fun b!6866278 () Bool)

(assert (=> b!6866278 (= e!4139259 tp_is_empty!42641)))

(assert (=> b!6864958 (= tp!1883543 e!4139259)))

(declare-fun b!6866281 () Bool)

(declare-fun tp!1884176 () Bool)

(declare-fun tp!1884177 () Bool)

(assert (=> b!6866281 (= e!4139259 (and tp!1884176 tp!1884177))))

(declare-fun b!6866279 () Bool)

(declare-fun tp!1884178 () Bool)

(declare-fun tp!1884179 () Bool)

(assert (=> b!6866279 (= e!4139259 (and tp!1884178 tp!1884179))))

(assert (= (and b!6864958 (is-ElementMatch!16694 (regTwo!33900 (regTwo!33901 (reg!17023 r!7292))))) b!6866278))

(assert (= (and b!6864958 (is-Concat!25539 (regTwo!33900 (regTwo!33901 (reg!17023 r!7292))))) b!6866279))

(assert (= (and b!6864958 (is-Star!16694 (regTwo!33900 (regTwo!33901 (reg!17023 r!7292))))) b!6866280))

(assert (= (and b!6864958 (is-Union!16694 (regTwo!33900 (regTwo!33901 (reg!17023 r!7292))))) b!6866281))

(declare-fun b!6866284 () Bool)

(declare-fun e!4139260 () Bool)

(declare-fun tp!1884185 () Bool)

(assert (=> b!6866284 (= e!4139260 tp!1884185)))

(declare-fun b!6866282 () Bool)

(assert (=> b!6866282 (= e!4139260 tp_is_empty!42641)))

(assert (=> b!6865038 (= tp!1883645 e!4139260)))

(declare-fun b!6866285 () Bool)

(declare-fun tp!1884181 () Bool)

(declare-fun tp!1884182 () Bool)

(assert (=> b!6866285 (= e!4139260 (and tp!1884181 tp!1884182))))

(declare-fun b!6866283 () Bool)

(declare-fun tp!1884183 () Bool)

(declare-fun tp!1884184 () Bool)

(assert (=> b!6866283 (= e!4139260 (and tp!1884183 tp!1884184))))

(assert (= (and b!6865038 (is-ElementMatch!16694 (regOne!33900 (regTwo!33900 (regOne!33901 r!7292))))) b!6866282))

(assert (= (and b!6865038 (is-Concat!25539 (regOne!33900 (regTwo!33900 (regOne!33901 r!7292))))) b!6866283))

(assert (= (and b!6865038 (is-Star!16694 (regOne!33900 (regTwo!33900 (regOne!33901 r!7292))))) b!6866284))

(assert (= (and b!6865038 (is-Union!16694 (regOne!33900 (regTwo!33900 (regOne!33901 r!7292))))) b!6866285))

(declare-fun b!6866288 () Bool)

(declare-fun e!4139261 () Bool)

(declare-fun tp!1884190 () Bool)

(assert (=> b!6866288 (= e!4139261 tp!1884190)))

(declare-fun b!6866286 () Bool)

(assert (=> b!6866286 (= e!4139261 tp_is_empty!42641)))

(assert (=> b!6865038 (= tp!1883646 e!4139261)))

(declare-fun b!6866289 () Bool)

(declare-fun tp!1884186 () Bool)

(declare-fun tp!1884187 () Bool)

(assert (=> b!6866289 (= e!4139261 (and tp!1884186 tp!1884187))))

(declare-fun b!6866287 () Bool)

(declare-fun tp!1884188 () Bool)

(declare-fun tp!1884189 () Bool)

(assert (=> b!6866287 (= e!4139261 (and tp!1884188 tp!1884189))))

(assert (= (and b!6865038 (is-ElementMatch!16694 (regTwo!33900 (regTwo!33900 (regOne!33901 r!7292))))) b!6866286))

(assert (= (and b!6865038 (is-Concat!25539 (regTwo!33900 (regTwo!33900 (regOne!33901 r!7292))))) b!6866287))

(assert (= (and b!6865038 (is-Star!16694 (regTwo!33900 (regTwo!33900 (regOne!33901 r!7292))))) b!6866288))

(assert (= (and b!6865038 (is-Union!16694 (regTwo!33900 (regTwo!33900 (regOne!33901 r!7292))))) b!6866289))

(declare-fun b!6866292 () Bool)

(declare-fun e!4139262 () Bool)

(declare-fun tp!1884195 () Bool)

(assert (=> b!6866292 (= e!4139262 tp!1884195)))

(declare-fun b!6866290 () Bool)

(assert (=> b!6866290 (= e!4139262 tp_is_empty!42641)))

(assert (=> b!6865021 (= tp!1883623 e!4139262)))

(declare-fun b!6866293 () Bool)

(declare-fun tp!1884191 () Bool)

(declare-fun tp!1884192 () Bool)

(assert (=> b!6866293 (= e!4139262 (and tp!1884191 tp!1884192))))

(declare-fun b!6866291 () Bool)

(declare-fun tp!1884193 () Bool)

(declare-fun tp!1884194 () Bool)

(assert (=> b!6866291 (= e!4139262 (and tp!1884193 tp!1884194))))

(assert (= (and b!6865021 (is-ElementMatch!16694 (regOne!33900 (regOne!33901 (regOne!33901 r!7292))))) b!6866290))

(assert (= (and b!6865021 (is-Concat!25539 (regOne!33900 (regOne!33901 (regOne!33901 r!7292))))) b!6866291))

(assert (= (and b!6865021 (is-Star!16694 (regOne!33900 (regOne!33901 (regOne!33901 r!7292))))) b!6866292))

(assert (= (and b!6865021 (is-Union!16694 (regOne!33900 (regOne!33901 (regOne!33901 r!7292))))) b!6866293))

(declare-fun b!6866296 () Bool)

(declare-fun e!4139263 () Bool)

(declare-fun tp!1884200 () Bool)

(assert (=> b!6866296 (= e!4139263 tp!1884200)))

(declare-fun b!6866294 () Bool)

(assert (=> b!6866294 (= e!4139263 tp_is_empty!42641)))

(assert (=> b!6865021 (= tp!1883624 e!4139263)))

(declare-fun b!6866297 () Bool)

(declare-fun tp!1884196 () Bool)

(declare-fun tp!1884197 () Bool)

(assert (=> b!6866297 (= e!4139263 (and tp!1884196 tp!1884197))))

(declare-fun b!6866295 () Bool)

(declare-fun tp!1884198 () Bool)

(declare-fun tp!1884199 () Bool)

(assert (=> b!6866295 (= e!4139263 (and tp!1884198 tp!1884199))))

(assert (= (and b!6865021 (is-ElementMatch!16694 (regTwo!33900 (regOne!33901 (regOne!33901 r!7292))))) b!6866294))

(assert (= (and b!6865021 (is-Concat!25539 (regTwo!33900 (regOne!33901 (regOne!33901 r!7292))))) b!6866295))

(assert (= (and b!6865021 (is-Star!16694 (regTwo!33900 (regOne!33901 (regOne!33901 r!7292))))) b!6866296))

(assert (= (and b!6865021 (is-Union!16694 (regTwo!33900 (regOne!33901 (regOne!33901 r!7292))))) b!6866297))

(declare-fun b!6866300 () Bool)

(declare-fun e!4139264 () Bool)

(declare-fun tp!1884205 () Bool)

(assert (=> b!6866300 (= e!4139264 tp!1884205)))

(declare-fun b!6866298 () Bool)

(assert (=> b!6866298 (= e!4139264 tp_is_empty!42641)))

(assert (=> b!6864967 (= tp!1883554 e!4139264)))

(declare-fun b!6866301 () Bool)

(declare-fun tp!1884201 () Bool)

(declare-fun tp!1884202 () Bool)

(assert (=> b!6866301 (= e!4139264 (and tp!1884201 tp!1884202))))

(declare-fun b!6866299 () Bool)

(declare-fun tp!1884203 () Bool)

(declare-fun tp!1884204 () Bool)

(assert (=> b!6866299 (= e!4139264 (and tp!1884203 tp!1884204))))

(assert (= (and b!6864967 (is-ElementMatch!16694 (reg!17023 (h!72705 (exprs!6578 setElem!47206))))) b!6866298))

(assert (= (and b!6864967 (is-Concat!25539 (reg!17023 (h!72705 (exprs!6578 setElem!47206))))) b!6866299))

(assert (= (and b!6864967 (is-Star!16694 (reg!17023 (h!72705 (exprs!6578 setElem!47206))))) b!6866300))

(assert (= (and b!6864967 (is-Union!16694 (reg!17023 (h!72705 (exprs!6578 setElem!47206))))) b!6866301))

(declare-fun b!6866304 () Bool)

(declare-fun e!4139265 () Bool)

(declare-fun tp!1884210 () Bool)

(assert (=> b!6866304 (= e!4139265 tp!1884210)))

(declare-fun b!6866302 () Bool)

(assert (=> b!6866302 (= e!4139265 tp_is_empty!42641)))

(assert (=> b!6865006 (= tp!1883599 e!4139265)))

(declare-fun b!6866305 () Bool)

(declare-fun tp!1884206 () Bool)

(declare-fun tp!1884207 () Bool)

(assert (=> b!6866305 (= e!4139265 (and tp!1884206 tp!1884207))))

(declare-fun b!6866303 () Bool)

(declare-fun tp!1884208 () Bool)

(declare-fun tp!1884209 () Bool)

(assert (=> b!6866303 (= e!4139265 (and tp!1884208 tp!1884209))))

(assert (= (and b!6865006 (is-ElementMatch!16694 (regOne!33901 (regTwo!33900 (reg!17023 r!7292))))) b!6866302))

(assert (= (and b!6865006 (is-Concat!25539 (regOne!33901 (regTwo!33900 (reg!17023 r!7292))))) b!6866303))

(assert (= (and b!6865006 (is-Star!16694 (regOne!33901 (regTwo!33900 (reg!17023 r!7292))))) b!6866304))

(assert (= (and b!6865006 (is-Union!16694 (regOne!33901 (regTwo!33900 (reg!17023 r!7292))))) b!6866305))

(declare-fun b!6866308 () Bool)

(declare-fun e!4139266 () Bool)

(declare-fun tp!1884215 () Bool)

(assert (=> b!6866308 (= e!4139266 tp!1884215)))

(declare-fun b!6866306 () Bool)

(assert (=> b!6866306 (= e!4139266 tp_is_empty!42641)))

(assert (=> b!6865006 (= tp!1883600 e!4139266)))

(declare-fun b!6866309 () Bool)

(declare-fun tp!1884211 () Bool)

(declare-fun tp!1884212 () Bool)

(assert (=> b!6866309 (= e!4139266 (and tp!1884211 tp!1884212))))

(declare-fun b!6866307 () Bool)

(declare-fun tp!1884213 () Bool)

(declare-fun tp!1884214 () Bool)

(assert (=> b!6866307 (= e!4139266 (and tp!1884213 tp!1884214))))

(assert (= (and b!6865006 (is-ElementMatch!16694 (regTwo!33901 (regTwo!33900 (reg!17023 r!7292))))) b!6866306))

(assert (= (and b!6865006 (is-Concat!25539 (regTwo!33901 (regTwo!33900 (reg!17023 r!7292))))) b!6866307))

(assert (= (and b!6865006 (is-Star!16694 (regTwo!33901 (regTwo!33900 (reg!17023 r!7292))))) b!6866308))

(assert (= (and b!6865006 (is-Union!16694 (regTwo!33901 (regTwo!33900 (reg!17023 r!7292))))) b!6866309))

(declare-fun b!6866312 () Bool)

(declare-fun e!4139267 () Bool)

(declare-fun tp!1884220 () Bool)

(assert (=> b!6866312 (= e!4139267 tp!1884220)))

(declare-fun b!6866310 () Bool)

(assert (=> b!6866310 (= e!4139267 tp_is_empty!42641)))

(assert (=> b!6864956 (= tp!1883535 e!4139267)))

(declare-fun b!6866313 () Bool)

(declare-fun tp!1884216 () Bool)

(declare-fun tp!1884217 () Bool)

(assert (=> b!6866313 (= e!4139267 (and tp!1884216 tp!1884217))))

(declare-fun b!6866311 () Bool)

(declare-fun tp!1884218 () Bool)

(declare-fun tp!1884219 () Bool)

(assert (=> b!6866311 (= e!4139267 (and tp!1884218 tp!1884219))))

(assert (= (and b!6864956 (is-ElementMatch!16694 (regOne!33901 (regOne!33901 (reg!17023 r!7292))))) b!6866310))

(assert (= (and b!6864956 (is-Concat!25539 (regOne!33901 (regOne!33901 (reg!17023 r!7292))))) b!6866311))

(assert (= (and b!6864956 (is-Star!16694 (regOne!33901 (regOne!33901 (reg!17023 r!7292))))) b!6866312))

(assert (= (and b!6864956 (is-Union!16694 (regOne!33901 (regOne!33901 (reg!17023 r!7292))))) b!6866313))

(declare-fun b!6866316 () Bool)

(declare-fun e!4139268 () Bool)

(declare-fun tp!1884225 () Bool)

(assert (=> b!6866316 (= e!4139268 tp!1884225)))

(declare-fun b!6866314 () Bool)

(assert (=> b!6866314 (= e!4139268 tp_is_empty!42641)))

(assert (=> b!6864956 (= tp!1883536 e!4139268)))

(declare-fun b!6866317 () Bool)

(declare-fun tp!1884221 () Bool)

(declare-fun tp!1884222 () Bool)

(assert (=> b!6866317 (= e!4139268 (and tp!1884221 tp!1884222))))

(declare-fun b!6866315 () Bool)

(declare-fun tp!1884223 () Bool)

(declare-fun tp!1884224 () Bool)

(assert (=> b!6866315 (= e!4139268 (and tp!1884223 tp!1884224))))

(assert (= (and b!6864956 (is-ElementMatch!16694 (regTwo!33901 (regOne!33901 (reg!17023 r!7292))))) b!6866314))

(assert (= (and b!6864956 (is-Concat!25539 (regTwo!33901 (regOne!33901 (reg!17023 r!7292))))) b!6866315))

(assert (= (and b!6864956 (is-Star!16694 (regTwo!33901 (regOne!33901 (reg!17023 r!7292))))) b!6866316))

(assert (= (and b!6864956 (is-Union!16694 (regTwo!33901 (regOne!33901 (reg!17023 r!7292))))) b!6866317))

(declare-fun b!6866320 () Bool)

(declare-fun e!4139269 () Bool)

(declare-fun tp!1884230 () Bool)

(assert (=> b!6866320 (= e!4139269 tp!1884230)))

(declare-fun b!6866318 () Bool)

(assert (=> b!6866318 (= e!4139269 tp_is_empty!42641)))

(assert (=> b!6864997 (= tp!1883593 e!4139269)))

(declare-fun b!6866321 () Bool)

(declare-fun tp!1884226 () Bool)

(declare-fun tp!1884227 () Bool)

(assert (=> b!6866321 (= e!4139269 (and tp!1884226 tp!1884227))))

(declare-fun b!6866319 () Bool)

(declare-fun tp!1884228 () Bool)

(declare-fun tp!1884229 () Bool)

(assert (=> b!6866319 (= e!4139269 (and tp!1884228 tp!1884229))))

(assert (= (and b!6864997 (is-ElementMatch!16694 (reg!17023 (regTwo!33900 (regOne!33900 r!7292))))) b!6866318))

(assert (= (and b!6864997 (is-Concat!25539 (reg!17023 (regTwo!33900 (regOne!33900 r!7292))))) b!6866319))

(assert (= (and b!6864997 (is-Star!16694 (reg!17023 (regTwo!33900 (regOne!33900 r!7292))))) b!6866320))

(assert (= (and b!6864997 (is-Union!16694 (reg!17023 (regTwo!33900 (regOne!33900 r!7292))))) b!6866321))

(declare-fun b!6866322 () Bool)

(declare-fun e!4139270 () Bool)

(declare-fun tp!1884231 () Bool)

(declare-fun tp!1884232 () Bool)

(assert (=> b!6866322 (= e!4139270 (and tp!1884231 tp!1884232))))

(assert (=> b!6864896 (= tp!1883498 e!4139270)))

(assert (= (and b!6864896 (is-Cons!66257 (exprs!6578 (h!72706 res!2800644)))) b!6866322))

(declare-fun b!6866325 () Bool)

(declare-fun e!4139271 () Bool)

(declare-fun tp!1884237 () Bool)

(assert (=> b!6866325 (= e!4139271 tp!1884237)))

(declare-fun b!6866323 () Bool)

(assert (=> b!6866323 (= e!4139271 tp_is_empty!42641)))

(assert (=> b!6864947 (= tp!1883529 e!4139271)))

(declare-fun b!6866326 () Bool)

(declare-fun tp!1884233 () Bool)

(declare-fun tp!1884234 () Bool)

(assert (=> b!6866326 (= e!4139271 (and tp!1884233 tp!1884234))))

(declare-fun b!6866324 () Bool)

(declare-fun tp!1884235 () Bool)

(declare-fun tp!1884236 () Bool)

(assert (=> b!6866324 (= e!4139271 (and tp!1884235 tp!1884236))))

(assert (= (and b!6864947 (is-ElementMatch!16694 (reg!17023 (regOne!33901 (regOne!33900 r!7292))))) b!6866323))

(assert (= (and b!6864947 (is-Concat!25539 (reg!17023 (regOne!33901 (regOne!33900 r!7292))))) b!6866324))

(assert (= (and b!6864947 (is-Star!16694 (reg!17023 (regOne!33901 (regOne!33900 r!7292))))) b!6866325))

(assert (= (and b!6864947 (is-Union!16694 (reg!17023 (regOne!33901 (regOne!33900 r!7292))))) b!6866326))

(declare-fun b!6866329 () Bool)

(declare-fun e!4139272 () Bool)

(declare-fun tp!1884242 () Bool)

(assert (=> b!6866329 (= e!4139272 tp!1884242)))

(declare-fun b!6866327 () Bool)

(assert (=> b!6866327 (= e!4139272 tp_is_empty!42641)))

(assert (=> b!6864988 (= tp!1883581 e!4139272)))

(declare-fun b!6866330 () Bool)

(declare-fun tp!1884238 () Bool)

(declare-fun tp!1884239 () Bool)

(assert (=> b!6866330 (= e!4139272 (and tp!1884238 tp!1884239))))

(declare-fun b!6866328 () Bool)

(declare-fun tp!1884240 () Bool)

(declare-fun tp!1884241 () Bool)

(assert (=> b!6866328 (= e!4139272 (and tp!1884240 tp!1884241))))

(assert (= (and b!6864988 (is-ElementMatch!16694 (regOne!33900 (reg!17023 (regTwo!33901 r!7292))))) b!6866327))

(assert (= (and b!6864988 (is-Concat!25539 (regOne!33900 (reg!17023 (regTwo!33901 r!7292))))) b!6866328))

(assert (= (and b!6864988 (is-Star!16694 (regOne!33900 (reg!17023 (regTwo!33901 r!7292))))) b!6866329))

(assert (= (and b!6864988 (is-Union!16694 (regOne!33900 (reg!17023 (regTwo!33901 r!7292))))) b!6866330))

(declare-fun b!6866333 () Bool)

(declare-fun e!4139273 () Bool)

(declare-fun tp!1884247 () Bool)

(assert (=> b!6866333 (= e!4139273 tp!1884247)))

(declare-fun b!6866331 () Bool)

(assert (=> b!6866331 (= e!4139273 tp_is_empty!42641)))

(assert (=> b!6864988 (= tp!1883582 e!4139273)))

(declare-fun b!6866334 () Bool)

(declare-fun tp!1884243 () Bool)

(declare-fun tp!1884244 () Bool)

(assert (=> b!6866334 (= e!4139273 (and tp!1884243 tp!1884244))))

(declare-fun b!6866332 () Bool)

(declare-fun tp!1884245 () Bool)

(declare-fun tp!1884246 () Bool)

(assert (=> b!6866332 (= e!4139273 (and tp!1884245 tp!1884246))))

(assert (= (and b!6864988 (is-ElementMatch!16694 (regTwo!33900 (reg!17023 (regTwo!33901 r!7292))))) b!6866331))

(assert (= (and b!6864988 (is-Concat!25539 (regTwo!33900 (reg!17023 (regTwo!33901 r!7292))))) b!6866332))

(assert (= (and b!6864988 (is-Star!16694 (regTwo!33900 (reg!17023 (regTwo!33901 r!7292))))) b!6866333))

(assert (= (and b!6864988 (is-Union!16694 (regTwo!33900 (reg!17023 (regTwo!33901 r!7292))))) b!6866334))

(declare-fun b!6866337 () Bool)

(declare-fun e!4139274 () Bool)

(declare-fun tp!1884252 () Bool)

(assert (=> b!6866337 (= e!4139274 tp!1884252)))

(declare-fun b!6866335 () Bool)

(assert (=> b!6866335 (= e!4139274 tp_is_empty!42641)))

(assert (=> b!6865036 (= tp!1883638 e!4139274)))

(declare-fun b!6866338 () Bool)

(declare-fun tp!1884248 () Bool)

(declare-fun tp!1884249 () Bool)

(assert (=> b!6866338 (= e!4139274 (and tp!1884248 tp!1884249))))

(declare-fun b!6866336 () Bool)

(declare-fun tp!1884250 () Bool)

(declare-fun tp!1884251 () Bool)

(assert (=> b!6866336 (= e!4139274 (and tp!1884250 tp!1884251))))

(assert (= (and b!6865036 (is-ElementMatch!16694 (regOne!33901 (regOne!33900 (regOne!33901 r!7292))))) b!6866335))

(assert (= (and b!6865036 (is-Concat!25539 (regOne!33901 (regOne!33900 (regOne!33901 r!7292))))) b!6866336))

(assert (= (and b!6865036 (is-Star!16694 (regOne!33901 (regOne!33900 (regOne!33901 r!7292))))) b!6866337))

(assert (= (and b!6865036 (is-Union!16694 (regOne!33901 (regOne!33900 (regOne!33901 r!7292))))) b!6866338))

(declare-fun b!6866341 () Bool)

(declare-fun e!4139275 () Bool)

(declare-fun tp!1884257 () Bool)

(assert (=> b!6866341 (= e!4139275 tp!1884257)))

(declare-fun b!6866339 () Bool)

(assert (=> b!6866339 (= e!4139275 tp_is_empty!42641)))

(assert (=> b!6865036 (= tp!1883639 e!4139275)))

(declare-fun b!6866342 () Bool)

(declare-fun tp!1884253 () Bool)

(declare-fun tp!1884254 () Bool)

(assert (=> b!6866342 (= e!4139275 (and tp!1884253 tp!1884254))))

(declare-fun b!6866340 () Bool)

(declare-fun tp!1884255 () Bool)

(declare-fun tp!1884256 () Bool)

(assert (=> b!6866340 (= e!4139275 (and tp!1884255 tp!1884256))))

(assert (= (and b!6865036 (is-ElementMatch!16694 (regTwo!33901 (regOne!33900 (regOne!33901 r!7292))))) b!6866339))

(assert (= (and b!6865036 (is-Concat!25539 (regTwo!33901 (regOne!33900 (regOne!33901 r!7292))))) b!6866340))

(assert (= (and b!6865036 (is-Star!16694 (regTwo!33901 (regOne!33900 (regOne!33901 r!7292))))) b!6866341))

(assert (= (and b!6865036 (is-Union!16694 (regTwo!33901 (regOne!33900 (regOne!33901 r!7292))))) b!6866342))

(declare-fun b!6866345 () Bool)

(declare-fun e!4139276 () Bool)

(declare-fun tp!1884262 () Bool)

(assert (=> b!6866345 (= e!4139276 tp!1884262)))

(declare-fun b!6866343 () Bool)

(assert (=> b!6866343 (= e!4139276 tp_is_empty!42641)))

(assert (=> b!6864938 (= tp!1883517 e!4139276)))

(declare-fun b!6866346 () Bool)

(declare-fun tp!1884258 () Bool)

(declare-fun tp!1884259 () Bool)

(assert (=> b!6866346 (= e!4139276 (and tp!1884258 tp!1884259))))

(declare-fun b!6866344 () Bool)

(declare-fun tp!1884260 () Bool)

(declare-fun tp!1884261 () Bool)

(assert (=> b!6866344 (= e!4139276 (and tp!1884260 tp!1884261))))

(assert (= (and b!6864938 (is-ElementMatch!16694 (regOne!33900 (regOne!33900 (regTwo!33901 r!7292))))) b!6866343))

(assert (= (and b!6864938 (is-Concat!25539 (regOne!33900 (regOne!33900 (regTwo!33901 r!7292))))) b!6866344))

(assert (= (and b!6864938 (is-Star!16694 (regOne!33900 (regOne!33900 (regTwo!33901 r!7292))))) b!6866345))

(assert (= (and b!6864938 (is-Union!16694 (regOne!33900 (regOne!33900 (regTwo!33901 r!7292))))) b!6866346))

(declare-fun b!6866349 () Bool)

(declare-fun e!4139277 () Bool)

(declare-fun tp!1884267 () Bool)

(assert (=> b!6866349 (= e!4139277 tp!1884267)))

(declare-fun b!6866347 () Bool)

(assert (=> b!6866347 (= e!4139277 tp_is_empty!42641)))

(assert (=> b!6864938 (= tp!1883518 e!4139277)))

(declare-fun b!6866350 () Bool)

(declare-fun tp!1884263 () Bool)

(declare-fun tp!1884264 () Bool)

(assert (=> b!6866350 (= e!4139277 (and tp!1884263 tp!1884264))))

(declare-fun b!6866348 () Bool)

(declare-fun tp!1884265 () Bool)

(declare-fun tp!1884266 () Bool)

(assert (=> b!6866348 (= e!4139277 (and tp!1884265 tp!1884266))))

(assert (= (and b!6864938 (is-ElementMatch!16694 (regTwo!33900 (regOne!33900 (regTwo!33901 r!7292))))) b!6866347))

(assert (= (and b!6864938 (is-Concat!25539 (regTwo!33900 (regOne!33900 (regTwo!33901 r!7292))))) b!6866348))

(assert (= (and b!6864938 (is-Star!16694 (regTwo!33900 (regOne!33900 (regTwo!33901 r!7292))))) b!6866349))

(assert (= (and b!6864938 (is-Union!16694 (regTwo!33900 (regOne!33900 (regTwo!33901 r!7292))))) b!6866350))

(declare-fun b!6866353 () Bool)

(declare-fun e!4139278 () Bool)

(declare-fun tp!1884272 () Bool)

(assert (=> b!6866353 (= e!4139278 tp!1884272)))

(declare-fun b!6866351 () Bool)

(assert (=> b!6866351 (= e!4139278 tp_is_empty!42641)))

(assert (=> b!6865034 (= tp!1883640 e!4139278)))

(declare-fun b!6866354 () Bool)

(declare-fun tp!1884268 () Bool)

(declare-fun tp!1884269 () Bool)

(assert (=> b!6866354 (= e!4139278 (and tp!1884268 tp!1884269))))

(declare-fun b!6866352 () Bool)

(declare-fun tp!1884270 () Bool)

(declare-fun tp!1884271 () Bool)

(assert (=> b!6866352 (= e!4139278 (and tp!1884270 tp!1884271))))

(assert (= (and b!6865034 (is-ElementMatch!16694 (regOne!33900 (regOne!33900 (regOne!33901 r!7292))))) b!6866351))

(assert (= (and b!6865034 (is-Concat!25539 (regOne!33900 (regOne!33900 (regOne!33901 r!7292))))) b!6866352))

(assert (= (and b!6865034 (is-Star!16694 (regOne!33900 (regOne!33900 (regOne!33901 r!7292))))) b!6866353))

(assert (= (and b!6865034 (is-Union!16694 (regOne!33900 (regOne!33900 (regOne!33901 r!7292))))) b!6866354))

(declare-fun b!6866357 () Bool)

(declare-fun e!4139279 () Bool)

(declare-fun tp!1884277 () Bool)

(assert (=> b!6866357 (= e!4139279 tp!1884277)))

(declare-fun b!6866355 () Bool)

(assert (=> b!6866355 (= e!4139279 tp_is_empty!42641)))

(assert (=> b!6865034 (= tp!1883641 e!4139279)))

(declare-fun b!6866358 () Bool)

(declare-fun tp!1884273 () Bool)

(declare-fun tp!1884274 () Bool)

(assert (=> b!6866358 (= e!4139279 (and tp!1884273 tp!1884274))))

(declare-fun b!6866356 () Bool)

(declare-fun tp!1884275 () Bool)

(declare-fun tp!1884276 () Bool)

(assert (=> b!6866356 (= e!4139279 (and tp!1884275 tp!1884276))))

(assert (= (and b!6865034 (is-ElementMatch!16694 (regTwo!33900 (regOne!33900 (regOne!33901 r!7292))))) b!6866355))

(assert (= (and b!6865034 (is-Concat!25539 (regTwo!33900 (regOne!33900 (regOne!33901 r!7292))))) b!6866356))

(assert (= (and b!6865034 (is-Star!16694 (regTwo!33900 (regOne!33900 (regOne!33901 r!7292))))) b!6866357))

(assert (= (and b!6865034 (is-Union!16694 (regTwo!33900 (regOne!33900 (regOne!33901 r!7292))))) b!6866358))

(declare-fun b!6866361 () Bool)

(declare-fun e!4139280 () Bool)

(declare-fun tp!1884282 () Bool)

(assert (=> b!6866361 (= e!4139280 tp!1884282)))

(declare-fun b!6866359 () Bool)

(assert (=> b!6866359 (= e!4139280 tp_is_empty!42641)))

(assert (=> b!6865019 (= tp!1883616 e!4139280)))

(declare-fun b!6866362 () Bool)

(declare-fun tp!1884278 () Bool)

(declare-fun tp!1884279 () Bool)

(assert (=> b!6866362 (= e!4139280 (and tp!1884278 tp!1884279))))

(declare-fun b!6866360 () Bool)

(declare-fun tp!1884280 () Bool)

(declare-fun tp!1884281 () Bool)

(assert (=> b!6866360 (= e!4139280 (and tp!1884280 tp!1884281))))

(assert (= (and b!6865019 (is-ElementMatch!16694 (regOne!33901 (reg!17023 (regTwo!33900 r!7292))))) b!6866359))

(assert (= (and b!6865019 (is-Concat!25539 (regOne!33901 (reg!17023 (regTwo!33900 r!7292))))) b!6866360))

(assert (= (and b!6865019 (is-Star!16694 (regOne!33901 (reg!17023 (regTwo!33900 r!7292))))) b!6866361))

(assert (= (and b!6865019 (is-Union!16694 (regOne!33901 (reg!17023 (regTwo!33900 r!7292))))) b!6866362))

(declare-fun b!6866365 () Bool)

(declare-fun e!4139281 () Bool)

(declare-fun tp!1884287 () Bool)

(assert (=> b!6866365 (= e!4139281 tp!1884287)))

(declare-fun b!6866363 () Bool)

(assert (=> b!6866363 (= e!4139281 tp_is_empty!42641)))

(assert (=> b!6865019 (= tp!1883617 e!4139281)))

(declare-fun b!6866366 () Bool)

(declare-fun tp!1884283 () Bool)

(declare-fun tp!1884284 () Bool)

(assert (=> b!6866366 (= e!4139281 (and tp!1884283 tp!1884284))))

(declare-fun b!6866364 () Bool)

(declare-fun tp!1884285 () Bool)

(declare-fun tp!1884286 () Bool)

(assert (=> b!6866364 (= e!4139281 (and tp!1884285 tp!1884286))))

(assert (= (and b!6865019 (is-ElementMatch!16694 (regTwo!33901 (reg!17023 (regTwo!33900 r!7292))))) b!6866363))

(assert (= (and b!6865019 (is-Concat!25539 (regTwo!33901 (reg!17023 (regTwo!33900 r!7292))))) b!6866364))

(assert (= (and b!6865019 (is-Star!16694 (regTwo!33901 (reg!17023 (regTwo!33900 r!7292))))) b!6866365))

(assert (= (and b!6865019 (is-Union!16694 (regTwo!33901 (reg!17023 (regTwo!33900 r!7292))))) b!6866366))

(declare-fun b!6866369 () Bool)

(declare-fun e!4139282 () Bool)

(declare-fun tp!1884292 () Bool)

(assert (=> b!6866369 (= e!4139282 tp!1884292)))

(declare-fun b!6866367 () Bool)

(assert (=> b!6866367 (= e!4139282 tp_is_empty!42641)))

(assert (=> b!6864971 (= tp!1883559 e!4139282)))

(declare-fun b!6866370 () Bool)

(declare-fun tp!1884288 () Bool)

(declare-fun tp!1884289 () Bool)

(assert (=> b!6866370 (= e!4139282 (and tp!1884288 tp!1884289))))

(declare-fun b!6866368 () Bool)

(declare-fun tp!1884290 () Bool)

(declare-fun tp!1884291 () Bool)

(assert (=> b!6866368 (= e!4139282 (and tp!1884290 tp!1884291))))

(assert (= (and b!6864971 (is-ElementMatch!16694 (regOne!33900 (reg!17023 (reg!17023 r!7292))))) b!6866367))

(assert (= (and b!6864971 (is-Concat!25539 (regOne!33900 (reg!17023 (reg!17023 r!7292))))) b!6866368))

(assert (= (and b!6864971 (is-Star!16694 (regOne!33900 (reg!17023 (reg!17023 r!7292))))) b!6866369))

(assert (= (and b!6864971 (is-Union!16694 (regOne!33900 (reg!17023 (reg!17023 r!7292))))) b!6866370))

(declare-fun b!6866373 () Bool)

(declare-fun e!4139283 () Bool)

(declare-fun tp!1884297 () Bool)

(assert (=> b!6866373 (= e!4139283 tp!1884297)))

(declare-fun b!6866371 () Bool)

(assert (=> b!6866371 (= e!4139283 tp_is_empty!42641)))

(assert (=> b!6864971 (= tp!1883560 e!4139283)))

(declare-fun b!6866374 () Bool)

(declare-fun tp!1884293 () Bool)

(declare-fun tp!1884294 () Bool)

(assert (=> b!6866374 (= e!4139283 (and tp!1884293 tp!1884294))))

(declare-fun b!6866372 () Bool)

(declare-fun tp!1884295 () Bool)

(declare-fun tp!1884296 () Bool)

(assert (=> b!6866372 (= e!4139283 (and tp!1884295 tp!1884296))))

(assert (= (and b!6864971 (is-ElementMatch!16694 (regTwo!33900 (reg!17023 (reg!17023 r!7292))))) b!6866371))

(assert (= (and b!6864971 (is-Concat!25539 (regTwo!33900 (reg!17023 (reg!17023 r!7292))))) b!6866372))

(assert (= (and b!6864971 (is-Star!16694 (regTwo!33900 (reg!17023 (reg!17023 r!7292))))) b!6866373))

(assert (= (and b!6864971 (is-Union!16694 (regTwo!33900 (reg!17023 (reg!17023 r!7292))))) b!6866374))

(declare-fun b!6866377 () Bool)

(declare-fun e!4139284 () Bool)

(declare-fun tp!1884302 () Bool)

(assert (=> b!6866377 (= e!4139284 tp!1884302)))

(declare-fun b!6866375 () Bool)

(assert (=> b!6866375 (= e!4139284 tp_is_empty!42641)))

(assert (=> b!6865010 (= tp!1883610 e!4139284)))

(declare-fun b!6866378 () Bool)

(declare-fun tp!1884298 () Bool)

(declare-fun tp!1884299 () Bool)

(assert (=> b!6866378 (= e!4139284 (and tp!1884298 tp!1884299))))

(declare-fun b!6866376 () Bool)

(declare-fun tp!1884300 () Bool)

(declare-fun tp!1884301 () Bool)

(assert (=> b!6866376 (= e!4139284 (and tp!1884300 tp!1884301))))

(assert (= (and b!6865010 (is-ElementMatch!16694 (reg!17023 (regOne!33901 (regTwo!33900 r!7292))))) b!6866375))

(assert (= (and b!6865010 (is-Concat!25539 (reg!17023 (regOne!33901 (regTwo!33900 r!7292))))) b!6866376))

(assert (= (and b!6865010 (is-Star!16694 (reg!17023 (regOne!33901 (regTwo!33900 r!7292))))) b!6866377))

(assert (= (and b!6865010 (is-Union!16694 (reg!17023 (regOne!33901 (regTwo!33900 r!7292))))) b!6866378))

(declare-fun b!6866381 () Bool)

(declare-fun e!4139285 () Bool)

(declare-fun tp!1884307 () Bool)

(assert (=> b!6866381 (= e!4139285 tp!1884307)))

(declare-fun b!6866379 () Bool)

(assert (=> b!6866379 (= e!4139285 tp_is_empty!42641)))

(assert (=> b!6864990 (= tp!1883579 e!4139285)))

(declare-fun b!6866382 () Bool)

(declare-fun tp!1884303 () Bool)

(declare-fun tp!1884304 () Bool)

(assert (=> b!6866382 (= e!4139285 (and tp!1884303 tp!1884304))))

(declare-fun b!6866380 () Bool)

(declare-fun tp!1884305 () Bool)

(declare-fun tp!1884306 () Bool)

(assert (=> b!6866380 (= e!4139285 (and tp!1884305 tp!1884306))))

(assert (= (and b!6864990 (is-ElementMatch!16694 (regOne!33901 (reg!17023 (regTwo!33901 r!7292))))) b!6866379))

(assert (= (and b!6864990 (is-Concat!25539 (regOne!33901 (reg!17023 (regTwo!33901 r!7292))))) b!6866380))

(assert (= (and b!6864990 (is-Star!16694 (regOne!33901 (reg!17023 (regTwo!33901 r!7292))))) b!6866381))

(assert (= (and b!6864990 (is-Union!16694 (regOne!33901 (reg!17023 (regTwo!33901 r!7292))))) b!6866382))

(declare-fun b!6866385 () Bool)

(declare-fun e!4139286 () Bool)

(declare-fun tp!1884312 () Bool)

(assert (=> b!6866385 (= e!4139286 tp!1884312)))

(declare-fun b!6866383 () Bool)

(assert (=> b!6866383 (= e!4139286 tp_is_empty!42641)))

(assert (=> b!6864990 (= tp!1883580 e!4139286)))

(declare-fun b!6866386 () Bool)

(declare-fun tp!1884308 () Bool)

(declare-fun tp!1884309 () Bool)

(assert (=> b!6866386 (= e!4139286 (and tp!1884308 tp!1884309))))

(declare-fun b!6866384 () Bool)

(declare-fun tp!1884310 () Bool)

(declare-fun tp!1884311 () Bool)

(assert (=> b!6866384 (= e!4139286 (and tp!1884310 tp!1884311))))

(assert (= (and b!6864990 (is-ElementMatch!16694 (regTwo!33901 (reg!17023 (regTwo!33901 r!7292))))) b!6866383))

(assert (= (and b!6864990 (is-Concat!25539 (regTwo!33901 (reg!17023 (regTwo!33901 r!7292))))) b!6866384))

(assert (= (and b!6864990 (is-Star!16694 (regTwo!33901 (reg!17023 (regTwo!33901 r!7292))))) b!6866385))

(assert (= (and b!6864990 (is-Union!16694 (regTwo!33901 (reg!17023 (regTwo!33901 r!7292))))) b!6866386))

(declare-fun b!6866389 () Bool)

(declare-fun e!4139287 () Bool)

(declare-fun tp!1884317 () Bool)

(assert (=> b!6866389 (= e!4139287 tp!1884317)))

(declare-fun b!6866387 () Bool)

(assert (=> b!6866387 (= e!4139287 tp_is_empty!42641)))

(assert (=> b!6864940 (= tp!1883515 e!4139287)))

(declare-fun b!6866390 () Bool)

(declare-fun tp!1884313 () Bool)

(declare-fun tp!1884314 () Bool)

(assert (=> b!6866390 (= e!4139287 (and tp!1884313 tp!1884314))))

(declare-fun b!6866388 () Bool)

(declare-fun tp!1884315 () Bool)

(declare-fun tp!1884316 () Bool)

(assert (=> b!6866388 (= e!4139287 (and tp!1884315 tp!1884316))))

(assert (= (and b!6864940 (is-ElementMatch!16694 (regOne!33901 (regOne!33900 (regTwo!33901 r!7292))))) b!6866387))

(assert (= (and b!6864940 (is-Concat!25539 (regOne!33901 (regOne!33900 (regTwo!33901 r!7292))))) b!6866388))

(assert (= (and b!6864940 (is-Star!16694 (regOne!33901 (regOne!33900 (regTwo!33901 r!7292))))) b!6866389))

(assert (= (and b!6864940 (is-Union!16694 (regOne!33901 (regOne!33900 (regTwo!33901 r!7292))))) b!6866390))

(declare-fun b!6866393 () Bool)

(declare-fun e!4139288 () Bool)

(declare-fun tp!1884322 () Bool)

(assert (=> b!6866393 (= e!4139288 tp!1884322)))

(declare-fun b!6866391 () Bool)

(assert (=> b!6866391 (= e!4139288 tp_is_empty!42641)))

(assert (=> b!6864940 (= tp!1883516 e!4139288)))

(declare-fun b!6866394 () Bool)

(declare-fun tp!1884318 () Bool)

(declare-fun tp!1884319 () Bool)

(assert (=> b!6866394 (= e!4139288 (and tp!1884318 tp!1884319))))

(declare-fun b!6866392 () Bool)

(declare-fun tp!1884320 () Bool)

(declare-fun tp!1884321 () Bool)

(assert (=> b!6866392 (= e!4139288 (and tp!1884320 tp!1884321))))

(assert (= (and b!6864940 (is-ElementMatch!16694 (regTwo!33901 (regOne!33900 (regTwo!33901 r!7292))))) b!6866391))

(assert (= (and b!6864940 (is-Concat!25539 (regTwo!33901 (regOne!33900 (regTwo!33901 r!7292))))) b!6866392))

(assert (= (and b!6864940 (is-Star!16694 (regTwo!33901 (regOne!33900 (regTwo!33901 r!7292))))) b!6866393))

(assert (= (and b!6864940 (is-Union!16694 (regTwo!33901 (regOne!33900 (regTwo!33901 r!7292))))) b!6866394))

(declare-fun b!6866397 () Bool)

(declare-fun e!4139289 () Bool)

(declare-fun tp!1884327 () Bool)

(assert (=> b!6866397 (= e!4139289 tp!1884327)))

(declare-fun b!6866395 () Bool)

(assert (=> b!6866395 (= e!4139289 tp_is_empty!42641)))

(assert (=> b!6864931 (= tp!1883509 e!4139289)))

(declare-fun b!6866398 () Bool)

(declare-fun tp!1884323 () Bool)

(declare-fun tp!1884324 () Bool)

(assert (=> b!6866398 (= e!4139289 (and tp!1884323 tp!1884324))))

(declare-fun b!6866396 () Bool)

(declare-fun tp!1884325 () Bool)

(declare-fun tp!1884326 () Bool)

(assert (=> b!6866396 (= e!4139289 (and tp!1884325 tp!1884326))))

(assert (= (and b!6864931 (is-ElementMatch!16694 (reg!17023 (regOne!33900 (regTwo!33900 r!7292))))) b!6866395))

(assert (= (and b!6864931 (is-Concat!25539 (reg!17023 (regOne!33900 (regTwo!33900 r!7292))))) b!6866396))

(assert (= (and b!6864931 (is-Star!16694 (reg!17023 (regOne!33900 (regTwo!33900 r!7292))))) b!6866397))

(assert (= (and b!6864931 (is-Union!16694 (reg!17023 (regOne!33900 (regTwo!33900 r!7292))))) b!6866398))

(declare-fun b!6866401 () Bool)

(declare-fun e!4139290 () Bool)

(declare-fun tp!1884332 () Bool)

(assert (=> b!6866401 (= e!4139290 tp!1884332)))

(declare-fun b!6866399 () Bool)

(assert (=> b!6866399 (= e!4139290 tp_is_empty!42641)))

(assert (=> b!6864981 (= tp!1883573 e!4139290)))

(declare-fun b!6866402 () Bool)

(declare-fun tp!1884328 () Bool)

(declare-fun tp!1884329 () Bool)

(assert (=> b!6866402 (= e!4139290 (and tp!1884328 tp!1884329))))

(declare-fun b!6866400 () Bool)

(declare-fun tp!1884330 () Bool)

(declare-fun tp!1884331 () Bool)

(assert (=> b!6866400 (= e!4139290 (and tp!1884330 tp!1884331))))

(assert (= (and b!6864981 (is-ElementMatch!16694 (reg!17023 (regOne!33901 (regTwo!33901 r!7292))))) b!6866399))

(assert (= (and b!6864981 (is-Concat!25539 (reg!17023 (regOne!33901 (regTwo!33901 r!7292))))) b!6866400))

(assert (= (and b!6864981 (is-Star!16694 (reg!17023 (regOne!33901 (regTwo!33901 r!7292))))) b!6866401))

(assert (= (and b!6864981 (is-Union!16694 (reg!17023 (regOne!33901 (regTwo!33901 r!7292))))) b!6866402))

(declare-fun b!6866405 () Bool)

(declare-fun e!4139291 () Bool)

(declare-fun tp!1884337 () Bool)

(assert (=> b!6866405 (= e!4139291 tp!1884337)))

(declare-fun b!6866403 () Bool)

(assert (=> b!6866403 (= e!4139291 tp_is_empty!42641)))

(assert (=> b!6864973 (= tp!1883557 e!4139291)))

(declare-fun b!6866406 () Bool)

(declare-fun tp!1884333 () Bool)

(declare-fun tp!1884334 () Bool)

(assert (=> b!6866406 (= e!4139291 (and tp!1884333 tp!1884334))))

(declare-fun b!6866404 () Bool)

(declare-fun tp!1884335 () Bool)

(declare-fun tp!1884336 () Bool)

(assert (=> b!6866404 (= e!4139291 (and tp!1884335 tp!1884336))))

(assert (= (and b!6864973 (is-ElementMatch!16694 (regOne!33901 (reg!17023 (reg!17023 r!7292))))) b!6866403))

(assert (= (and b!6864973 (is-Concat!25539 (regOne!33901 (reg!17023 (reg!17023 r!7292))))) b!6866404))

(assert (= (and b!6864973 (is-Star!16694 (regOne!33901 (reg!17023 (reg!17023 r!7292))))) b!6866405))

(assert (= (and b!6864973 (is-Union!16694 (regOne!33901 (reg!17023 (reg!17023 r!7292))))) b!6866406))

(declare-fun b!6866409 () Bool)

(declare-fun e!4139292 () Bool)

(declare-fun tp!1884342 () Bool)

(assert (=> b!6866409 (= e!4139292 tp!1884342)))

(declare-fun b!6866407 () Bool)

(assert (=> b!6866407 (= e!4139292 tp_is_empty!42641)))

(assert (=> b!6864973 (= tp!1883558 e!4139292)))

(declare-fun b!6866410 () Bool)

(declare-fun tp!1884338 () Bool)

(declare-fun tp!1884339 () Bool)

(assert (=> b!6866410 (= e!4139292 (and tp!1884338 tp!1884339))))

(declare-fun b!6866408 () Bool)

(declare-fun tp!1884340 () Bool)

(declare-fun tp!1884341 () Bool)

(assert (=> b!6866408 (= e!4139292 (and tp!1884340 tp!1884341))))

(assert (= (and b!6864973 (is-ElementMatch!16694 (regTwo!33901 (reg!17023 (reg!17023 r!7292))))) b!6866407))

(assert (= (and b!6864973 (is-Concat!25539 (regTwo!33901 (reg!17023 (reg!17023 r!7292))))) b!6866408))

(assert (= (and b!6864973 (is-Star!16694 (regTwo!33901 (reg!17023 (reg!17023 r!7292))))) b!6866409))

(assert (= (and b!6864973 (is-Union!16694 (regTwo!33901 (reg!17023 (reg!17023 r!7292))))) b!6866410))

(declare-fun b!6866411 () Bool)

(declare-fun e!4139293 () Bool)

(declare-fun tp!1884343 () Bool)

(declare-fun tp!1884344 () Bool)

(assert (=> b!6866411 (= e!4139293 (and tp!1884343 tp!1884344))))

(assert (=> b!6864645 (= tp!1883496 e!4139293)))

(assert (= (and b!6864645 (is-Cons!66257 (exprs!6578 (h!72706 res!2800554)))) b!6866411))

(declare-fun b!6866414 () Bool)

(declare-fun e!4139294 () Bool)

(declare-fun tp!1884349 () Bool)

(assert (=> b!6866414 (= e!4139294 tp!1884349)))

(declare-fun b!6866412 () Bool)

(assert (=> b!6866412 (= e!4139294 tp_is_empty!42641)))

(assert (=> b!6865017 (= tp!1883618 e!4139294)))

(declare-fun b!6866415 () Bool)

(declare-fun tp!1884345 () Bool)

(declare-fun tp!1884346 () Bool)

(assert (=> b!6866415 (= e!4139294 (and tp!1884345 tp!1884346))))

(declare-fun b!6866413 () Bool)

(declare-fun tp!1884347 () Bool)

(declare-fun tp!1884348 () Bool)

(assert (=> b!6866413 (= e!4139294 (and tp!1884347 tp!1884348))))

(assert (= (and b!6865017 (is-ElementMatch!16694 (regOne!33900 (reg!17023 (regTwo!33900 r!7292))))) b!6866412))

(assert (= (and b!6865017 (is-Concat!25539 (regOne!33900 (reg!17023 (regTwo!33900 r!7292))))) b!6866413))

(assert (= (and b!6865017 (is-Star!16694 (regOne!33900 (reg!17023 (regTwo!33900 r!7292))))) b!6866414))

(assert (= (and b!6865017 (is-Union!16694 (regOne!33900 (reg!17023 (regTwo!33900 r!7292))))) b!6866415))

(declare-fun b!6866418 () Bool)

(declare-fun e!4139295 () Bool)

(declare-fun tp!1884354 () Bool)

(assert (=> b!6866418 (= e!4139295 tp!1884354)))

(declare-fun b!6866416 () Bool)

(assert (=> b!6866416 (= e!4139295 tp_is_empty!42641)))

(assert (=> b!6865017 (= tp!1883619 e!4139295)))

(declare-fun b!6866419 () Bool)

(declare-fun tp!1884350 () Bool)

(declare-fun tp!1884351 () Bool)

(assert (=> b!6866419 (= e!4139295 (and tp!1884350 tp!1884351))))

(declare-fun b!6866417 () Bool)

(declare-fun tp!1884352 () Bool)

(declare-fun tp!1884353 () Bool)

(assert (=> b!6866417 (= e!4139295 (and tp!1884352 tp!1884353))))

(assert (= (and b!6865017 (is-ElementMatch!16694 (regTwo!33900 (reg!17023 (regTwo!33900 r!7292))))) b!6866416))

(assert (= (and b!6865017 (is-Concat!25539 (regTwo!33900 (reg!17023 (regTwo!33900 r!7292))))) b!6866417))

(assert (= (and b!6865017 (is-Star!16694 (regTwo!33900 (reg!17023 (regTwo!33900 r!7292))))) b!6866418))

(assert (= (and b!6865017 (is-Union!16694 (regTwo!33900 (reg!17023 (regTwo!33900 r!7292))))) b!6866419))

(declare-fun b!6866422 () Bool)

(declare-fun e!4139296 () Bool)

(declare-fun tp!1884359 () Bool)

(assert (=> b!6866422 (= e!4139296 tp!1884359)))

(declare-fun b!6866420 () Bool)

(assert (=> b!6866420 (= e!4139296 tp_is_empty!42641)))

(assert (=> b!6864963 (= tp!1883549 e!4139296)))

(declare-fun b!6866423 () Bool)

(declare-fun tp!1884355 () Bool)

(declare-fun tp!1884356 () Bool)

(assert (=> b!6866423 (= e!4139296 (and tp!1884355 tp!1884356))))

(declare-fun b!6866421 () Bool)

(declare-fun tp!1884357 () Bool)

(declare-fun tp!1884358 () Bool)

(assert (=> b!6866421 (= e!4139296 (and tp!1884357 tp!1884358))))

(assert (= (and b!6864963 (is-ElementMatch!16694 (reg!17023 (reg!17023 (regOne!33900 r!7292))))) b!6866420))

(assert (= (and b!6864963 (is-Concat!25539 (reg!17023 (reg!17023 (regOne!33900 r!7292))))) b!6866421))

(assert (= (and b!6864963 (is-Star!16694 (reg!17023 (reg!17023 (regOne!33900 r!7292))))) b!6866422))

(assert (= (and b!6864963 (is-Union!16694 (reg!17023 (reg!17023 (regOne!33900 r!7292))))) b!6866423))

(declare-fun b!6866426 () Bool)

(declare-fun e!4139297 () Bool)

(declare-fun tp!1884364 () Bool)

(assert (=> b!6866426 (= e!4139297 tp!1884364)))

(declare-fun b!6866424 () Bool)

(assert (=> b!6866424 (= e!4139297 tp_is_empty!42641)))

(assert (=> b!6865004 (= tp!1883601 e!4139297)))

(declare-fun b!6866427 () Bool)

(declare-fun tp!1884360 () Bool)

(declare-fun tp!1884361 () Bool)

(assert (=> b!6866427 (= e!4139297 (and tp!1884360 tp!1884361))))

(declare-fun b!6866425 () Bool)

(declare-fun tp!1884362 () Bool)

(declare-fun tp!1884363 () Bool)

(assert (=> b!6866425 (= e!4139297 (and tp!1884362 tp!1884363))))

(assert (= (and b!6865004 (is-ElementMatch!16694 (regOne!33900 (regTwo!33900 (reg!17023 r!7292))))) b!6866424))

(assert (= (and b!6865004 (is-Concat!25539 (regOne!33900 (regTwo!33900 (reg!17023 r!7292))))) b!6866425))

(assert (= (and b!6865004 (is-Star!16694 (regOne!33900 (regTwo!33900 (reg!17023 r!7292))))) b!6866426))

(assert (= (and b!6865004 (is-Union!16694 (regOne!33900 (regTwo!33900 (reg!17023 r!7292))))) b!6866427))

(declare-fun b!6866430 () Bool)

(declare-fun e!4139298 () Bool)

(declare-fun tp!1884369 () Bool)

(assert (=> b!6866430 (= e!4139298 tp!1884369)))

(declare-fun b!6866428 () Bool)

(assert (=> b!6866428 (= e!4139298 tp_is_empty!42641)))

(assert (=> b!6865004 (= tp!1883602 e!4139298)))

(declare-fun b!6866431 () Bool)

(declare-fun tp!1884365 () Bool)

(declare-fun tp!1884366 () Bool)

(assert (=> b!6866431 (= e!4139298 (and tp!1884365 tp!1884366))))

(declare-fun b!6866429 () Bool)

(declare-fun tp!1884367 () Bool)

(declare-fun tp!1884368 () Bool)

(assert (=> b!6866429 (= e!4139298 (and tp!1884367 tp!1884368))))

(assert (= (and b!6865004 (is-ElementMatch!16694 (regTwo!33900 (regTwo!33900 (reg!17023 r!7292))))) b!6866428))

(assert (= (and b!6865004 (is-Concat!25539 (regTwo!33900 (regTwo!33900 (reg!17023 r!7292))))) b!6866429))

(assert (= (and b!6865004 (is-Star!16694 (regTwo!33900 (regTwo!33900 (reg!17023 r!7292))))) b!6866430))

(assert (= (and b!6865004 (is-Union!16694 (regTwo!33900 (regTwo!33900 (reg!17023 r!7292))))) b!6866431))

(declare-fun b!6866434 () Bool)

(declare-fun e!4139299 () Bool)

(declare-fun tp!1884374 () Bool)

(assert (=> b!6866434 (= e!4139299 tp!1884374)))

(declare-fun b!6866432 () Bool)

(assert (=> b!6866432 (= e!4139299 tp_is_empty!42641)))

(assert (=> b!6864954 (= tp!1883537 e!4139299)))

(declare-fun b!6866435 () Bool)

(declare-fun tp!1884370 () Bool)

(declare-fun tp!1884371 () Bool)

(assert (=> b!6866435 (= e!4139299 (and tp!1884370 tp!1884371))))

(declare-fun b!6866433 () Bool)

(declare-fun tp!1884372 () Bool)

(declare-fun tp!1884373 () Bool)

(assert (=> b!6866433 (= e!4139299 (and tp!1884372 tp!1884373))))

(assert (= (and b!6864954 (is-ElementMatch!16694 (regOne!33900 (regOne!33901 (reg!17023 r!7292))))) b!6866432))

(assert (= (and b!6864954 (is-Concat!25539 (regOne!33900 (regOne!33901 (reg!17023 r!7292))))) b!6866433))

(assert (= (and b!6864954 (is-Star!16694 (regOne!33900 (regOne!33901 (reg!17023 r!7292))))) b!6866434))

(assert (= (and b!6864954 (is-Union!16694 (regOne!33900 (regOne!33901 (reg!17023 r!7292))))) b!6866435))

(declare-fun b!6866438 () Bool)

(declare-fun e!4139300 () Bool)

(declare-fun tp!1884379 () Bool)

(assert (=> b!6866438 (= e!4139300 tp!1884379)))

(declare-fun b!6866436 () Bool)

(assert (=> b!6866436 (= e!4139300 tp_is_empty!42641)))

(assert (=> b!6864954 (= tp!1883538 e!4139300)))

(declare-fun b!6866439 () Bool)

(declare-fun tp!1884375 () Bool)

(declare-fun tp!1884376 () Bool)

(assert (=> b!6866439 (= e!4139300 (and tp!1884375 tp!1884376))))

(declare-fun b!6866437 () Bool)

(declare-fun tp!1884377 () Bool)

(declare-fun tp!1884378 () Bool)

(assert (=> b!6866437 (= e!4139300 (and tp!1884377 tp!1884378))))

(assert (= (and b!6864954 (is-ElementMatch!16694 (regTwo!33900 (regOne!33901 (reg!17023 r!7292))))) b!6866436))

(assert (= (and b!6864954 (is-Concat!25539 (regTwo!33900 (regOne!33901 (reg!17023 r!7292))))) b!6866437))

(assert (= (and b!6864954 (is-Star!16694 (regTwo!33900 (regOne!33901 (reg!17023 r!7292))))) b!6866438))

(assert (= (and b!6864954 (is-Union!16694 (regTwo!33900 (regOne!33901 (reg!17023 r!7292))))) b!6866439))

(declare-fun b!6866442 () Bool)

(declare-fun e!4139301 () Bool)

(declare-fun tp!1884384 () Bool)

(assert (=> b!6866442 (= e!4139301 tp!1884384)))

(declare-fun b!6866440 () Bool)

(assert (=> b!6866440 (= e!4139301 tp_is_empty!42641)))

(assert (=> b!6865026 (= tp!1883630 e!4139301)))

(declare-fun b!6866443 () Bool)

(declare-fun tp!1884380 () Bool)

(declare-fun tp!1884381 () Bool)

(assert (=> b!6866443 (= e!4139301 (and tp!1884380 tp!1884381))))

(declare-fun b!6866441 () Bool)

(declare-fun tp!1884382 () Bool)

(declare-fun tp!1884383 () Bool)

(assert (=> b!6866441 (= e!4139301 (and tp!1884382 tp!1884383))))

(assert (= (and b!6865026 (is-ElementMatch!16694 (reg!17023 (regTwo!33901 (regOne!33901 r!7292))))) b!6866440))

(assert (= (and b!6865026 (is-Concat!25539 (reg!17023 (regTwo!33901 (regOne!33901 r!7292))))) b!6866441))

(assert (= (and b!6865026 (is-Star!16694 (reg!17023 (regTwo!33901 (regOne!33901 r!7292))))) b!6866442))

(assert (= (and b!6865026 (is-Union!16694 (reg!17023 (regTwo!33901 (regOne!33901 r!7292))))) b!6866443))

(declare-fun b!6866446 () Bool)

(declare-fun e!4139302 () Bool)

(declare-fun tp!1884389 () Bool)

(assert (=> b!6866446 (= e!4139302 tp!1884389)))

(declare-fun b!6866444 () Bool)

(assert (=> b!6866444 (= e!4139302 tp_is_empty!42641)))

(assert (=> b!6865015 (= tp!1883611 e!4139302)))

(declare-fun b!6866447 () Bool)

(declare-fun tp!1884385 () Bool)

(declare-fun tp!1884386 () Bool)

(assert (=> b!6866447 (= e!4139302 (and tp!1884385 tp!1884386))))

(declare-fun b!6866445 () Bool)

(declare-fun tp!1884387 () Bool)

(declare-fun tp!1884388 () Bool)

(assert (=> b!6866445 (= e!4139302 (and tp!1884387 tp!1884388))))

(assert (= (and b!6865015 (is-ElementMatch!16694 (regOne!33901 (regTwo!33901 (regTwo!33900 r!7292))))) b!6866444))

(assert (= (and b!6865015 (is-Concat!25539 (regOne!33901 (regTwo!33901 (regTwo!33900 r!7292))))) b!6866445))

(assert (= (and b!6865015 (is-Star!16694 (regOne!33901 (regTwo!33901 (regTwo!33900 r!7292))))) b!6866446))

(assert (= (and b!6865015 (is-Union!16694 (regOne!33901 (regTwo!33901 (regTwo!33900 r!7292))))) b!6866447))

(declare-fun b!6866450 () Bool)

(declare-fun e!4139303 () Bool)

(declare-fun tp!1884394 () Bool)

(assert (=> b!6866450 (= e!4139303 tp!1884394)))

(declare-fun b!6866448 () Bool)

(assert (=> b!6866448 (= e!4139303 tp_is_empty!42641)))

(assert (=> b!6865015 (= tp!1883612 e!4139303)))

(declare-fun b!6866451 () Bool)

(declare-fun tp!1884390 () Bool)

(declare-fun tp!1884391 () Bool)

(assert (=> b!6866451 (= e!4139303 (and tp!1884390 tp!1884391))))

(declare-fun b!6866449 () Bool)

(declare-fun tp!1884392 () Bool)

(declare-fun tp!1884393 () Bool)

(assert (=> b!6866449 (= e!4139303 (and tp!1884392 tp!1884393))))

(assert (= (and b!6865015 (is-ElementMatch!16694 (regTwo!33901 (regTwo!33901 (regTwo!33900 r!7292))))) b!6866448))

(assert (= (and b!6865015 (is-Concat!25539 (regTwo!33901 (regTwo!33901 (regTwo!33900 r!7292))))) b!6866449))

(assert (= (and b!6865015 (is-Star!16694 (regTwo!33901 (regTwo!33901 (regTwo!33900 r!7292))))) b!6866450))

(assert (= (and b!6865015 (is-Union!16694 (regTwo!33901 (regTwo!33901 (regTwo!33900 r!7292))))) b!6866451))

(declare-fun b!6866454 () Bool)

(declare-fun e!4139304 () Bool)

(declare-fun tp!1884399 () Bool)

(assert (=> b!6866454 (= e!4139304 tp!1884399)))

(declare-fun b!6866452 () Bool)

(assert (=> b!6866452 (= e!4139304 tp_is_empty!42641)))

(assert (=> b!6865002 (= tp!1883594 e!4139304)))

(declare-fun b!6866455 () Bool)

(declare-fun tp!1884395 () Bool)

(declare-fun tp!1884396 () Bool)

(assert (=> b!6866455 (= e!4139304 (and tp!1884395 tp!1884396))))

(declare-fun b!6866453 () Bool)

(declare-fun tp!1884397 () Bool)

(declare-fun tp!1884398 () Bool)

(assert (=> b!6866453 (= e!4139304 (and tp!1884397 tp!1884398))))

(assert (= (and b!6865002 (is-ElementMatch!16694 (regOne!33901 (regOne!33900 (reg!17023 r!7292))))) b!6866452))

(assert (= (and b!6865002 (is-Concat!25539 (regOne!33901 (regOne!33900 (reg!17023 r!7292))))) b!6866453))

(assert (= (and b!6865002 (is-Star!16694 (regOne!33901 (regOne!33900 (reg!17023 r!7292))))) b!6866454))

(assert (= (and b!6865002 (is-Union!16694 (regOne!33901 (regOne!33900 (reg!17023 r!7292))))) b!6866455))

(declare-fun b!6866458 () Bool)

(declare-fun e!4139305 () Bool)

(declare-fun tp!1884404 () Bool)

(assert (=> b!6866458 (= e!4139305 tp!1884404)))

(declare-fun b!6866456 () Bool)

(assert (=> b!6866456 (= e!4139305 tp_is_empty!42641)))

(assert (=> b!6865002 (= tp!1883595 e!4139305)))

(declare-fun b!6866459 () Bool)

(declare-fun tp!1884400 () Bool)

(declare-fun tp!1884401 () Bool)

(assert (=> b!6866459 (= e!4139305 (and tp!1884400 tp!1884401))))

(declare-fun b!6866457 () Bool)

(declare-fun tp!1884402 () Bool)

(declare-fun tp!1884403 () Bool)

(assert (=> b!6866457 (= e!4139305 (and tp!1884402 tp!1884403))))

(assert (= (and b!6865002 (is-ElementMatch!16694 (regTwo!33901 (regOne!33900 (reg!17023 r!7292))))) b!6866456))

(assert (= (and b!6865002 (is-Concat!25539 (regTwo!33901 (regOne!33900 (reg!17023 r!7292))))) b!6866457))

(assert (= (and b!6865002 (is-Star!16694 (regTwo!33901 (regOne!33900 (reg!17023 r!7292))))) b!6866458))

(assert (= (and b!6865002 (is-Union!16694 (regTwo!33901 (regOne!33900 (reg!17023 r!7292))))) b!6866459))

(declare-fun b!6866462 () Bool)

(declare-fun e!4139306 () Bool)

(declare-fun tp!1884409 () Bool)

(assert (=> b!6866462 (= e!4139306 tp!1884409)))

(declare-fun b!6866460 () Bool)

(assert (=> b!6866460 (= e!4139306 tp_is_empty!42641)))

(assert (=> b!6864952 (= tp!1883530 e!4139306)))

(declare-fun b!6866463 () Bool)

(declare-fun tp!1884405 () Bool)

(declare-fun tp!1884406 () Bool)

(assert (=> b!6866463 (= e!4139306 (and tp!1884405 tp!1884406))))

(declare-fun b!6866461 () Bool)

(declare-fun tp!1884407 () Bool)

(declare-fun tp!1884408 () Bool)

(assert (=> b!6866461 (= e!4139306 (and tp!1884407 tp!1884408))))

(assert (= (and b!6864952 (is-ElementMatch!16694 (regOne!33901 (regTwo!33901 (regOne!33900 r!7292))))) b!6866460))

(assert (= (and b!6864952 (is-Concat!25539 (regOne!33901 (regTwo!33901 (regOne!33900 r!7292))))) b!6866461))

(assert (= (and b!6864952 (is-Star!16694 (regOne!33901 (regTwo!33901 (regOne!33900 r!7292))))) b!6866462))

(assert (= (and b!6864952 (is-Union!16694 (regOne!33901 (regTwo!33901 (regOne!33900 r!7292))))) b!6866463))

(declare-fun b!6866466 () Bool)

(declare-fun e!4139307 () Bool)

(declare-fun tp!1884414 () Bool)

(assert (=> b!6866466 (= e!4139307 tp!1884414)))

(declare-fun b!6866464 () Bool)

(assert (=> b!6866464 (= e!4139307 tp_is_empty!42641)))

(assert (=> b!6864952 (= tp!1883531 e!4139307)))

(declare-fun b!6866467 () Bool)

(declare-fun tp!1884410 () Bool)

(declare-fun tp!1884411 () Bool)

(assert (=> b!6866467 (= e!4139307 (and tp!1884410 tp!1884411))))

(declare-fun b!6866465 () Bool)

(declare-fun tp!1884412 () Bool)

(declare-fun tp!1884413 () Bool)

(assert (=> b!6866465 (= e!4139307 (and tp!1884412 tp!1884413))))

(assert (= (and b!6864952 (is-ElementMatch!16694 (regTwo!33901 (regTwo!33901 (regOne!33900 r!7292))))) b!6866464))

(assert (= (and b!6864952 (is-Concat!25539 (regTwo!33901 (regTwo!33901 (regOne!33900 r!7292))))) b!6866465))

(assert (= (and b!6864952 (is-Star!16694 (regTwo!33901 (regTwo!33901 (regOne!33900 r!7292))))) b!6866466))

(assert (= (and b!6864952 (is-Union!16694 (regTwo!33901 (regTwo!33901 (regOne!33900 r!7292))))) b!6866467))

(declare-fun b!6866470 () Bool)

(declare-fun e!4139308 () Bool)

(declare-fun tp!1884419 () Bool)

(assert (=> b!6866470 (= e!4139308 tp!1884419)))

(declare-fun b!6866468 () Bool)

(assert (=> b!6866468 (= e!4139308 tp_is_empty!42641)))

(assert (=> b!6864993 (= tp!1883588 e!4139308)))

(declare-fun b!6866471 () Bool)

(declare-fun tp!1884415 () Bool)

(declare-fun tp!1884416 () Bool)

(assert (=> b!6866471 (= e!4139308 (and tp!1884415 tp!1884416))))

(declare-fun b!6866469 () Bool)

(declare-fun tp!1884417 () Bool)

(declare-fun tp!1884418 () Bool)

(assert (=> b!6866469 (= e!4139308 (and tp!1884417 tp!1884418))))

(assert (= (and b!6864993 (is-ElementMatch!16694 (reg!17023 (regOne!33900 (regOne!33900 r!7292))))) b!6866468))

(assert (= (and b!6864993 (is-Concat!25539 (reg!17023 (regOne!33900 (regOne!33900 r!7292))))) b!6866469))

(assert (= (and b!6864993 (is-Star!16694 (reg!17023 (regOne!33900 (regOne!33900 r!7292))))) b!6866470))

(assert (= (and b!6864993 (is-Union!16694 (reg!17023 (regOne!33900 (regOne!33900 r!7292))))) b!6866471))

(declare-fun b!6866474 () Bool)

(declare-fun e!4139309 () Bool)

(declare-fun tp!1884424 () Bool)

(assert (=> b!6866474 (= e!4139309 tp!1884424)))

(declare-fun b!6866472 () Bool)

(assert (=> b!6866472 (= e!4139309 tp_is_empty!42641)))

(assert (=> b!6864943 (= tp!1883524 e!4139309)))

(declare-fun b!6866475 () Bool)

(declare-fun tp!1884420 () Bool)

(declare-fun tp!1884421 () Bool)

(assert (=> b!6866475 (= e!4139309 (and tp!1884420 tp!1884421))))

(declare-fun b!6866473 () Bool)

(declare-fun tp!1884422 () Bool)

(declare-fun tp!1884423 () Bool)

(assert (=> b!6866473 (= e!4139309 (and tp!1884422 tp!1884423))))

(assert (= (and b!6864943 (is-ElementMatch!16694 (reg!17023 (regTwo!33900 (regTwo!33901 r!7292))))) b!6866472))

(assert (= (and b!6864943 (is-Concat!25539 (reg!17023 (regTwo!33900 (regTwo!33901 r!7292))))) b!6866473))

(assert (= (and b!6864943 (is-Star!16694 (reg!17023 (regTwo!33900 (regTwo!33901 r!7292))))) b!6866474))

(assert (= (and b!6864943 (is-Union!16694 (reg!17023 (regTwo!33900 (regTwo!33901 r!7292))))) b!6866475))

(declare-fun b!6866478 () Bool)

(declare-fun e!4139310 () Bool)

(declare-fun tp!1884429 () Bool)

(assert (=> b!6866478 (= e!4139310 tp!1884429)))

(declare-fun b!6866476 () Bool)

(assert (=> b!6866476 (= e!4139310 tp_is_empty!42641)))

(assert (=> b!6865000 (= tp!1883596 e!4139310)))

(declare-fun b!6866479 () Bool)

(declare-fun tp!1884425 () Bool)

(declare-fun tp!1884426 () Bool)

(assert (=> b!6866479 (= e!4139310 (and tp!1884425 tp!1884426))))

(declare-fun b!6866477 () Bool)

(declare-fun tp!1884427 () Bool)

(declare-fun tp!1884428 () Bool)

(assert (=> b!6866477 (= e!4139310 (and tp!1884427 tp!1884428))))

(assert (= (and b!6865000 (is-ElementMatch!16694 (regOne!33900 (regOne!33900 (reg!17023 r!7292))))) b!6866476))

(assert (= (and b!6865000 (is-Concat!25539 (regOne!33900 (regOne!33900 (reg!17023 r!7292))))) b!6866477))

(assert (= (and b!6865000 (is-Star!16694 (regOne!33900 (regOne!33900 (reg!17023 r!7292))))) b!6866478))

(assert (= (and b!6865000 (is-Union!16694 (regOne!33900 (regOne!33900 (reg!17023 r!7292))))) b!6866479))

(declare-fun b!6866482 () Bool)

(declare-fun e!4139311 () Bool)

(declare-fun tp!1884434 () Bool)

(assert (=> b!6866482 (= e!4139311 tp!1884434)))

(declare-fun b!6866480 () Bool)

(assert (=> b!6866480 (= e!4139311 tp_is_empty!42641)))

(assert (=> b!6865000 (= tp!1883597 e!4139311)))

(declare-fun b!6866483 () Bool)

(declare-fun tp!1884430 () Bool)

(declare-fun tp!1884431 () Bool)

(assert (=> b!6866483 (= e!4139311 (and tp!1884430 tp!1884431))))

(declare-fun b!6866481 () Bool)

(declare-fun tp!1884432 () Bool)

(declare-fun tp!1884433 () Bool)

(assert (=> b!6866481 (= e!4139311 (and tp!1884432 tp!1884433))))

(assert (= (and b!6865000 (is-ElementMatch!16694 (regTwo!33900 (regOne!33900 (reg!17023 r!7292))))) b!6866480))

(assert (= (and b!6865000 (is-Concat!25539 (regTwo!33900 (regOne!33900 (reg!17023 r!7292))))) b!6866481))

(assert (= (and b!6865000 (is-Star!16694 (regTwo!33900 (regOne!33900 (reg!17023 r!7292))))) b!6866482))

(assert (= (and b!6865000 (is-Union!16694 (regTwo!33900 (regOne!33900 (reg!17023 r!7292))))) b!6866483))

(declare-fun b!6866486 () Bool)

(declare-fun e!4139312 () Bool)

(declare-fun tp!1884439 () Bool)

(assert (=> b!6866486 (= e!4139312 tp!1884439)))

(declare-fun b!6866484 () Bool)

(assert (=> b!6866484 (= e!4139312 tp_is_empty!42641)))

(assert (=> b!6864950 (= tp!1883532 e!4139312)))

(declare-fun b!6866487 () Bool)

(declare-fun tp!1884435 () Bool)

(declare-fun tp!1884436 () Bool)

(assert (=> b!6866487 (= e!4139312 (and tp!1884435 tp!1884436))))

(declare-fun b!6866485 () Bool)

(declare-fun tp!1884437 () Bool)

(declare-fun tp!1884438 () Bool)

(assert (=> b!6866485 (= e!4139312 (and tp!1884437 tp!1884438))))

(assert (= (and b!6864950 (is-ElementMatch!16694 (regOne!33900 (regTwo!33901 (regOne!33900 r!7292))))) b!6866484))

(assert (= (and b!6864950 (is-Concat!25539 (regOne!33900 (regTwo!33901 (regOne!33900 r!7292))))) b!6866485))

(assert (= (and b!6864950 (is-Star!16694 (regOne!33900 (regTwo!33901 (regOne!33900 r!7292))))) b!6866486))

(assert (= (and b!6864950 (is-Union!16694 (regOne!33900 (regTwo!33901 (regOne!33900 r!7292))))) b!6866487))

(declare-fun b!6866490 () Bool)

(declare-fun e!4139313 () Bool)

(declare-fun tp!1884444 () Bool)

(assert (=> b!6866490 (= e!4139313 tp!1884444)))

(declare-fun b!6866488 () Bool)

(assert (=> b!6866488 (= e!4139313 tp_is_empty!42641)))

(assert (=> b!6864950 (= tp!1883533 e!4139313)))

(declare-fun b!6866491 () Bool)

(declare-fun tp!1884440 () Bool)

(declare-fun tp!1884441 () Bool)

(assert (=> b!6866491 (= e!4139313 (and tp!1884440 tp!1884441))))

(declare-fun b!6866489 () Bool)

(declare-fun tp!1884442 () Bool)

(declare-fun tp!1884443 () Bool)

(assert (=> b!6866489 (= e!4139313 (and tp!1884442 tp!1884443))))

(assert (= (and b!6864950 (is-ElementMatch!16694 (regTwo!33900 (regTwo!33901 (regOne!33900 r!7292))))) b!6866488))

(assert (= (and b!6864950 (is-Concat!25539 (regTwo!33900 (regTwo!33901 (regOne!33900 r!7292))))) b!6866489))

(assert (= (and b!6864950 (is-Star!16694 (regTwo!33900 (regTwo!33901 (regOne!33900 r!7292))))) b!6866490))

(assert (= (and b!6864950 (is-Union!16694 (regTwo!33900 (regTwo!33901 (regOne!33900 r!7292))))) b!6866491))

(declare-fun b!6866494 () Bool)

(declare-fun e!4139314 () Bool)

(declare-fun tp!1884449 () Bool)

(assert (=> b!6866494 (= e!4139314 tp!1884449)))

(declare-fun b!6866492 () Bool)

(assert (=> b!6866492 (= e!4139314 tp_is_empty!42641)))

(assert (=> b!6865039 (= tp!1883647 e!4139314)))

(declare-fun b!6866495 () Bool)

(declare-fun tp!1884445 () Bool)

(declare-fun tp!1884446 () Bool)

(assert (=> b!6866495 (= e!4139314 (and tp!1884445 tp!1884446))))

(declare-fun b!6866493 () Bool)

(declare-fun tp!1884447 () Bool)

(declare-fun tp!1884448 () Bool)

(assert (=> b!6866493 (= e!4139314 (and tp!1884447 tp!1884448))))

(assert (= (and b!6865039 (is-ElementMatch!16694 (reg!17023 (regTwo!33900 (regOne!33901 r!7292))))) b!6866492))

(assert (= (and b!6865039 (is-Concat!25539 (reg!17023 (regTwo!33900 (regOne!33901 r!7292))))) b!6866493))

(assert (= (and b!6865039 (is-Star!16694 (reg!17023 (regTwo!33900 (regOne!33901 r!7292))))) b!6866494))

(assert (= (and b!6865039 (is-Union!16694 (reg!17023 (regTwo!33900 (regOne!33901 r!7292))))) b!6866495))

(declare-fun b!6866498 () Bool)

(declare-fun e!4139315 () Bool)

(declare-fun tp!1884454 () Bool)

(assert (=> b!6866498 (= e!4139315 tp!1884454)))

(declare-fun b!6866496 () Bool)

(assert (=> b!6866496 (= e!4139315 tp_is_empty!42641)))

(assert (=> b!6865030 (= tp!1883635 e!4139315)))

(declare-fun b!6866499 () Bool)

(declare-fun tp!1884450 () Bool)

(declare-fun tp!1884451 () Bool)

(assert (=> b!6866499 (= e!4139315 (and tp!1884450 tp!1884451))))

(declare-fun b!6866497 () Bool)

(declare-fun tp!1884452 () Bool)

(declare-fun tp!1884453 () Bool)

(assert (=> b!6866497 (= e!4139315 (and tp!1884452 tp!1884453))))

(assert (= (and b!6865030 (is-ElementMatch!16694 (regOne!33900 (reg!17023 (regOne!33901 r!7292))))) b!6866496))

(assert (= (and b!6865030 (is-Concat!25539 (regOne!33900 (reg!17023 (regOne!33901 r!7292))))) b!6866497))

(assert (= (and b!6865030 (is-Star!16694 (regOne!33900 (reg!17023 (regOne!33901 r!7292))))) b!6866498))

(assert (= (and b!6865030 (is-Union!16694 (regOne!33900 (reg!17023 (regOne!33901 r!7292))))) b!6866499))

(declare-fun b!6866502 () Bool)

(declare-fun e!4139316 () Bool)

(declare-fun tp!1884459 () Bool)

(assert (=> b!6866502 (= e!4139316 tp!1884459)))

(declare-fun b!6866500 () Bool)

(assert (=> b!6866500 (= e!4139316 tp_is_empty!42641)))

(assert (=> b!6865030 (= tp!1883636 e!4139316)))

(declare-fun b!6866503 () Bool)

(declare-fun tp!1884455 () Bool)

(declare-fun tp!1884456 () Bool)

(assert (=> b!6866503 (= e!4139316 (and tp!1884455 tp!1884456))))

(declare-fun b!6866501 () Bool)

(declare-fun tp!1884457 () Bool)

(declare-fun tp!1884458 () Bool)

(assert (=> b!6866501 (= e!4139316 (and tp!1884457 tp!1884458))))

(assert (= (and b!6865030 (is-ElementMatch!16694 (regTwo!33900 (reg!17023 (regOne!33901 r!7292))))) b!6866500))

(assert (= (and b!6865030 (is-Concat!25539 (regTwo!33900 (reg!17023 (regOne!33901 r!7292))))) b!6866501))

(assert (= (and b!6865030 (is-Star!16694 (regTwo!33900 (reg!17023 (regOne!33901 r!7292))))) b!6866502))

(assert (= (and b!6865030 (is-Union!16694 (regTwo!33900 (reg!17023 (regOne!33901 r!7292))))) b!6866503))

(declare-fun b!6866504 () Bool)

(declare-fun e!4139317 () Bool)

(declare-fun tp!1884460 () Bool)

(declare-fun tp!1884461 () Bool)

(assert (=> b!6866504 (= e!4139317 (and tp!1884460 tp!1884461))))

(assert (=> b!6864927 (= tp!1883502 e!4139317)))

(assert (= (and b!6864927 (is-Cons!66257 (exprs!6578 (h!72706 (t!380125 (t!380125 zl!343)))))) b!6866504))

(declare-fun b!6866507 () Bool)

(declare-fun e!4139318 () Bool)

(declare-fun tp!1884466 () Bool)

(assert (=> b!6866507 (= e!4139318 tp!1884466)))

(declare-fun b!6866505 () Bool)

(assert (=> b!6866505 (= e!4139318 tp_is_empty!42641)))

(assert (=> b!6864976 (= tp!1883566 e!4139318)))

(declare-fun b!6866508 () Bool)

(declare-fun tp!1884462 () Bool)

(declare-fun tp!1884463 () Bool)

(assert (=> b!6866508 (= e!4139318 (and tp!1884462 tp!1884463))))

(declare-fun b!6866506 () Bool)

(declare-fun tp!1884464 () Bool)

(declare-fun tp!1884465 () Bool)

(assert (=> b!6866506 (= e!4139318 (and tp!1884464 tp!1884465))))

(assert (= (and b!6864976 (is-ElementMatch!16694 (reg!17023 (h!72705 (exprs!6578 (h!72706 zl!343)))))) b!6866505))

(assert (= (and b!6864976 (is-Concat!25539 (reg!17023 (h!72705 (exprs!6578 (h!72706 zl!343)))))) b!6866506))

(assert (= (and b!6864976 (is-Star!16694 (reg!17023 (h!72705 (exprs!6578 (h!72706 zl!343)))))) b!6866507))

(assert (= (and b!6864976 (is-Union!16694 (reg!17023 (h!72705 (exprs!6578 (h!72706 zl!343)))))) b!6866508))

(declare-fun b!6866511 () Bool)

(declare-fun e!4139319 () Bool)

(declare-fun tp!1884471 () Bool)

(assert (=> b!6866511 (= e!4139319 tp!1884471)))

(declare-fun b!6866509 () Bool)

(assert (=> b!6866509 (= e!4139319 tp_is_empty!42641)))

(assert (=> b!6864986 (= tp!1883574 e!4139319)))

(declare-fun b!6866512 () Bool)

(declare-fun tp!1884467 () Bool)

(declare-fun tp!1884468 () Bool)

(assert (=> b!6866512 (= e!4139319 (and tp!1884467 tp!1884468))))

(declare-fun b!6866510 () Bool)

(declare-fun tp!1884469 () Bool)

(declare-fun tp!1884470 () Bool)

(assert (=> b!6866510 (= e!4139319 (and tp!1884469 tp!1884470))))

(assert (= (and b!6864986 (is-ElementMatch!16694 (regOne!33901 (regTwo!33901 (regTwo!33901 r!7292))))) b!6866509))

(assert (= (and b!6864986 (is-Concat!25539 (regOne!33901 (regTwo!33901 (regTwo!33901 r!7292))))) b!6866510))

(assert (= (and b!6864986 (is-Star!16694 (regOne!33901 (regTwo!33901 (regTwo!33901 r!7292))))) b!6866511))

(assert (= (and b!6864986 (is-Union!16694 (regOne!33901 (regTwo!33901 (regTwo!33901 r!7292))))) b!6866512))

(declare-fun b!6866515 () Bool)

(declare-fun e!4139320 () Bool)

(declare-fun tp!1884476 () Bool)

(assert (=> b!6866515 (= e!4139320 tp!1884476)))

(declare-fun b!6866513 () Bool)

(assert (=> b!6866513 (= e!4139320 tp_is_empty!42641)))

(assert (=> b!6864986 (= tp!1883575 e!4139320)))

(declare-fun b!6866516 () Bool)

(declare-fun tp!1884472 () Bool)

(declare-fun tp!1884473 () Bool)

(assert (=> b!6866516 (= e!4139320 (and tp!1884472 tp!1884473))))

(declare-fun b!6866514 () Bool)

(declare-fun tp!1884474 () Bool)

(declare-fun tp!1884475 () Bool)

(assert (=> b!6866514 (= e!4139320 (and tp!1884474 tp!1884475))))

(assert (= (and b!6864986 (is-ElementMatch!16694 (regTwo!33901 (regTwo!33901 (regTwo!33901 r!7292))))) b!6866513))

(assert (= (and b!6864986 (is-Concat!25539 (regTwo!33901 (regTwo!33901 (regTwo!33901 r!7292))))) b!6866514))

(assert (= (and b!6864986 (is-Star!16694 (regTwo!33901 (regTwo!33901 (regTwo!33901 r!7292))))) b!6866515))

(assert (= (and b!6864986 (is-Union!16694 (regTwo!33901 (regTwo!33901 (regTwo!33901 r!7292))))) b!6866516))

(declare-fun b!6866519 () Bool)

(declare-fun e!4139321 () Bool)

(declare-fun tp!1884481 () Bool)

(assert (=> b!6866519 (= e!4139321 tp!1884481)))

(declare-fun b!6866517 () Bool)

(assert (=> b!6866517 (= e!4139321 tp_is_empty!42641)))

(assert (=> b!6864936 (= tp!1883510 e!4139321)))

(declare-fun b!6866520 () Bool)

(declare-fun tp!1884477 () Bool)

(declare-fun tp!1884478 () Bool)

(assert (=> b!6866520 (= e!4139321 (and tp!1884477 tp!1884478))))

(declare-fun b!6866518 () Bool)

(declare-fun tp!1884479 () Bool)

(declare-fun tp!1884480 () Bool)

(assert (=> b!6866518 (= e!4139321 (and tp!1884479 tp!1884480))))

(assert (= (and b!6864936 (is-ElementMatch!16694 (regOne!33901 (regTwo!33900 (regTwo!33900 r!7292))))) b!6866517))

(assert (= (and b!6864936 (is-Concat!25539 (regOne!33901 (regTwo!33900 (regTwo!33900 r!7292))))) b!6866518))

(assert (= (and b!6864936 (is-Star!16694 (regOne!33901 (regTwo!33900 (regTwo!33900 r!7292))))) b!6866519))

(assert (= (and b!6864936 (is-Union!16694 (regOne!33901 (regTwo!33900 (regTwo!33900 r!7292))))) b!6866520))

(declare-fun b!6866523 () Bool)

(declare-fun e!4139322 () Bool)

(declare-fun tp!1884486 () Bool)

(assert (=> b!6866523 (= e!4139322 tp!1884486)))

(declare-fun b!6866521 () Bool)

(assert (=> b!6866521 (= e!4139322 tp_is_empty!42641)))

(assert (=> b!6864936 (= tp!1883511 e!4139322)))

(declare-fun b!6866524 () Bool)

(declare-fun tp!1884482 () Bool)

(declare-fun tp!1884483 () Bool)

(assert (=> b!6866524 (= e!4139322 (and tp!1884482 tp!1884483))))

(declare-fun b!6866522 () Bool)

(declare-fun tp!1884484 () Bool)

(declare-fun tp!1884485 () Bool)

(assert (=> b!6866522 (= e!4139322 (and tp!1884484 tp!1884485))))

(assert (= (and b!6864936 (is-ElementMatch!16694 (regTwo!33901 (regTwo!33900 (regTwo!33900 r!7292))))) b!6866521))

(assert (= (and b!6864936 (is-Concat!25539 (regTwo!33901 (regTwo!33900 (regTwo!33900 r!7292))))) b!6866522))

(assert (= (and b!6864936 (is-Star!16694 (regTwo!33901 (regTwo!33900 (regTwo!33900 r!7292))))) b!6866523))

(assert (= (and b!6864936 (is-Union!16694 (regTwo!33901 (regTwo!33900 (regTwo!33900 r!7292))))) b!6866524))

(declare-fun b!6866527 () Bool)

(declare-fun e!4139323 () Bool)

(declare-fun tp!1884491 () Bool)

(assert (=> b!6866527 (= e!4139323 tp!1884491)))

(declare-fun b!6866525 () Bool)

(assert (=> b!6866525 (= e!4139323 tp_is_empty!42641)))

(assert (=> b!6864984 (= tp!1883576 e!4139323)))

(declare-fun b!6866528 () Bool)

(declare-fun tp!1884487 () Bool)

(declare-fun tp!1884488 () Bool)

(assert (=> b!6866528 (= e!4139323 (and tp!1884487 tp!1884488))))

(declare-fun b!6866526 () Bool)

(declare-fun tp!1884489 () Bool)

(declare-fun tp!1884490 () Bool)

(assert (=> b!6866526 (= e!4139323 (and tp!1884489 tp!1884490))))

(assert (= (and b!6864984 (is-ElementMatch!16694 (regOne!33900 (regTwo!33901 (regTwo!33901 r!7292))))) b!6866525))

(assert (= (and b!6864984 (is-Concat!25539 (regOne!33900 (regTwo!33901 (regTwo!33901 r!7292))))) b!6866526))

(assert (= (and b!6864984 (is-Star!16694 (regOne!33900 (regTwo!33901 (regTwo!33901 r!7292))))) b!6866527))

(assert (= (and b!6864984 (is-Union!16694 (regOne!33900 (regTwo!33901 (regTwo!33901 r!7292))))) b!6866528))

(declare-fun b!6866531 () Bool)

(declare-fun e!4139324 () Bool)

(declare-fun tp!1884496 () Bool)

(assert (=> b!6866531 (= e!4139324 tp!1884496)))

(declare-fun b!6866529 () Bool)

(assert (=> b!6866529 (= e!4139324 tp_is_empty!42641)))

(assert (=> b!6864984 (= tp!1883577 e!4139324)))

(declare-fun b!6866532 () Bool)

(declare-fun tp!1884492 () Bool)

(declare-fun tp!1884493 () Bool)

(assert (=> b!6866532 (= e!4139324 (and tp!1884492 tp!1884493))))

(declare-fun b!6866530 () Bool)

(declare-fun tp!1884494 () Bool)

(declare-fun tp!1884495 () Bool)

(assert (=> b!6866530 (= e!4139324 (and tp!1884494 tp!1884495))))

(assert (= (and b!6864984 (is-ElementMatch!16694 (regTwo!33900 (regTwo!33901 (regTwo!33901 r!7292))))) b!6866529))

(assert (= (and b!6864984 (is-Concat!25539 (regTwo!33900 (regTwo!33901 (regTwo!33901 r!7292))))) b!6866530))

(assert (= (and b!6864984 (is-Star!16694 (regTwo!33900 (regTwo!33901 (regTwo!33901 r!7292))))) b!6866531))

(assert (= (and b!6864984 (is-Union!16694 (regTwo!33900 (regTwo!33901 (regTwo!33901 r!7292))))) b!6866532))

(declare-fun b!6866535 () Bool)

(declare-fun e!4139325 () Bool)

(declare-fun tp!1884501 () Bool)

(assert (=> b!6866535 (= e!4139325 tp!1884501)))

(declare-fun b!6866533 () Bool)

(assert (=> b!6866533 (= e!4139325 tp_is_empty!42641)))

(assert (=> b!6865032 (= tp!1883633 e!4139325)))

(declare-fun b!6866536 () Bool)

(declare-fun tp!1884497 () Bool)

(declare-fun tp!1884498 () Bool)

(assert (=> b!6866536 (= e!4139325 (and tp!1884497 tp!1884498))))

(declare-fun b!6866534 () Bool)

(declare-fun tp!1884499 () Bool)

(declare-fun tp!1884500 () Bool)

(assert (=> b!6866534 (= e!4139325 (and tp!1884499 tp!1884500))))

(assert (= (and b!6865032 (is-ElementMatch!16694 (regOne!33901 (reg!17023 (regOne!33901 r!7292))))) b!6866533))

(assert (= (and b!6865032 (is-Concat!25539 (regOne!33901 (reg!17023 (regOne!33901 r!7292))))) b!6866534))

(assert (= (and b!6865032 (is-Star!16694 (regOne!33901 (reg!17023 (regOne!33901 r!7292))))) b!6866535))

(assert (= (and b!6865032 (is-Union!16694 (regOne!33901 (reg!17023 (regOne!33901 r!7292))))) b!6866536))

(declare-fun b!6866539 () Bool)

(declare-fun e!4139326 () Bool)

(declare-fun tp!1884506 () Bool)

(assert (=> b!6866539 (= e!4139326 tp!1884506)))

(declare-fun b!6866537 () Bool)

(assert (=> b!6866537 (= e!4139326 tp_is_empty!42641)))

(assert (=> b!6865032 (= tp!1883634 e!4139326)))

(declare-fun b!6866540 () Bool)

(declare-fun tp!1884502 () Bool)

(declare-fun tp!1884503 () Bool)

(assert (=> b!6866540 (= e!4139326 (and tp!1884502 tp!1884503))))

(declare-fun b!6866538 () Bool)

(declare-fun tp!1884504 () Bool)

(declare-fun tp!1884505 () Bool)

(assert (=> b!6866538 (= e!4139326 (and tp!1884504 tp!1884505))))

(assert (= (and b!6865032 (is-ElementMatch!16694 (regTwo!33901 (reg!17023 (regOne!33901 r!7292))))) b!6866537))

(assert (= (and b!6865032 (is-Concat!25539 (regTwo!33901 (reg!17023 (regOne!33901 r!7292))))) b!6866538))

(assert (= (and b!6865032 (is-Star!16694 (regTwo!33901 (reg!17023 (regOne!33901 r!7292))))) b!6866539))

(assert (= (and b!6865032 (is-Union!16694 (regTwo!33901 (reg!17023 (regOne!33901 r!7292))))) b!6866540))

(declare-fun b!6866543 () Bool)

(declare-fun e!4139327 () Bool)

(declare-fun tp!1884511 () Bool)

(assert (=> b!6866543 (= e!4139327 tp!1884511)))

(declare-fun b!6866541 () Bool)

(assert (=> b!6866541 (= e!4139327 tp_is_empty!42641)))

(assert (=> b!6864934 (= tp!1883512 e!4139327)))

(declare-fun b!6866544 () Bool)

(declare-fun tp!1884507 () Bool)

(declare-fun tp!1884508 () Bool)

(assert (=> b!6866544 (= e!4139327 (and tp!1884507 tp!1884508))))

(declare-fun b!6866542 () Bool)

(declare-fun tp!1884509 () Bool)

(declare-fun tp!1884510 () Bool)

(assert (=> b!6866542 (= e!4139327 (and tp!1884509 tp!1884510))))

(assert (= (and b!6864934 (is-ElementMatch!16694 (regOne!33900 (regTwo!33900 (regTwo!33900 r!7292))))) b!6866541))

(assert (= (and b!6864934 (is-Concat!25539 (regOne!33900 (regTwo!33900 (regTwo!33900 r!7292))))) b!6866542))

(assert (= (and b!6864934 (is-Star!16694 (regOne!33900 (regTwo!33900 (regTwo!33900 r!7292))))) b!6866543))

(assert (= (and b!6864934 (is-Union!16694 (regOne!33900 (regTwo!33900 (regTwo!33900 r!7292))))) b!6866544))

(declare-fun b!6866547 () Bool)

(declare-fun e!4139328 () Bool)

(declare-fun tp!1884516 () Bool)

(assert (=> b!6866547 (= e!4139328 tp!1884516)))

(declare-fun b!6866545 () Bool)

(assert (=> b!6866545 (= e!4139328 tp_is_empty!42641)))

(assert (=> b!6864934 (= tp!1883513 e!4139328)))

(declare-fun b!6866548 () Bool)

(declare-fun tp!1884512 () Bool)

(declare-fun tp!1884513 () Bool)

(assert (=> b!6866548 (= e!4139328 (and tp!1884512 tp!1884513))))

(declare-fun b!6866546 () Bool)

(declare-fun tp!1884514 () Bool)

(declare-fun tp!1884515 () Bool)

(assert (=> b!6866546 (= e!4139328 (and tp!1884514 tp!1884515))))

(assert (= (and b!6864934 (is-ElementMatch!16694 (regTwo!33900 (regTwo!33900 (regTwo!33900 r!7292))))) b!6866545))

(assert (= (and b!6864934 (is-Concat!25539 (regTwo!33900 (regTwo!33900 (regTwo!33900 r!7292))))) b!6866546))

(assert (= (and b!6864934 (is-Star!16694 (regTwo!33900 (regTwo!33900 (regTwo!33900 r!7292))))) b!6866547))

(assert (= (and b!6864934 (is-Union!16694 (regTwo!33900 (regTwo!33900 (regTwo!33900 r!7292))))) b!6866548))

(declare-fun b!6866551 () Bool)

(declare-fun e!4139329 () Bool)

(declare-fun tp!1884521 () Bool)

(assert (=> b!6866551 (= e!4139329 tp!1884521)))

(declare-fun b!6866549 () Bool)

(assert (=> b!6866549 (= e!4139329 tp_is_empty!42641)))

(assert (=> b!6864969 (= tp!1883555 e!4139329)))

(declare-fun b!6866552 () Bool)

(declare-fun tp!1884517 () Bool)

(declare-fun tp!1884518 () Bool)

(assert (=> b!6866552 (= e!4139329 (and tp!1884517 tp!1884518))))

(declare-fun b!6866550 () Bool)

(declare-fun tp!1884519 () Bool)

(declare-fun tp!1884520 () Bool)

(assert (=> b!6866550 (= e!4139329 (and tp!1884519 tp!1884520))))

(assert (= (and b!6864969 (is-ElementMatch!16694 (h!72705 (t!380124 (exprs!6578 setElem!47206))))) b!6866549))

(assert (= (and b!6864969 (is-Concat!25539 (h!72705 (t!380124 (exprs!6578 setElem!47206))))) b!6866550))

(assert (= (and b!6864969 (is-Star!16694 (h!72705 (t!380124 (exprs!6578 setElem!47206))))) b!6866551))

(assert (= (and b!6864969 (is-Union!16694 (h!72705 (t!380124 (exprs!6578 setElem!47206))))) b!6866552))

(declare-fun b!6866553 () Bool)

(declare-fun e!4139330 () Bool)

(declare-fun tp!1884522 () Bool)

(declare-fun tp!1884523 () Bool)

(assert (=> b!6866553 (= e!4139330 (and tp!1884522 tp!1884523))))

(assert (=> b!6864969 (= tp!1883556 e!4139330)))

(assert (= (and b!6864969 (is-Cons!66257 (t!380124 (t!380124 (exprs!6578 setElem!47206))))) b!6866553))

(declare-fun b_lambda!259631 () Bool)

(assert (= b_lambda!259621 (or d!2156551 b_lambda!259631)))

(declare-fun bs!1835281 () Bool)

(declare-fun d!2157101 () Bool)

(assert (= bs!1835281 (and d!2157101 d!2156551)))

(assert (=> bs!1835281 (= (dynLambda!26518 lambda!388440 (h!72705 (exprs!6578 setElem!47212))) (validRegex!8430 (h!72705 (exprs!6578 setElem!47212))))))

(declare-fun m!7598686 () Bool)

(assert (=> bs!1835281 m!7598686))

(assert (=> b!6865907 d!2157101))

(declare-fun b_lambda!259633 () Bool)

(assert (= b_lambda!259615 (or d!2156375 b_lambda!259633)))

(declare-fun bs!1835282 () Bool)

(declare-fun d!2157103 () Bool)

(assert (= bs!1835282 (and d!2157103 d!2156375)))

(assert (=> bs!1835282 (= (dynLambda!26518 lambda!388360 (h!72705 (t!380124 (exprs!6578 lt!2457736)))) (validRegex!8430 (h!72705 (t!380124 (exprs!6578 lt!2457736)))))))

(assert (=> bs!1835282 m!7597754))

(assert (=> b!6865841 d!2157103))

(declare-fun b_lambda!259635 () Bool)

(assert (= b_lambda!259605 (or b!6864011 b_lambda!259635)))

(declare-fun bs!1835283 () Bool)

(declare-fun d!2157105 () Bool)

(assert (= bs!1835283 (and d!2157105 b!6864011)))

(assert (=> bs!1835283 (= (dynLambda!26519 lambda!388339 lt!2457924) (matchZipper!2660 (set.insert lt!2457924 (as set.empty (Set Context!12156))) s!2326))))

(declare-fun m!7598688 () Bool)

(assert (=> bs!1835283 m!7598688))

(assert (=> bs!1835283 m!7598688))

(declare-fun m!7598690 () Bool)

(assert (=> bs!1835283 m!7598690))

(assert (=> d!2156961 d!2157105))

(declare-fun b_lambda!259637 () Bool)

(assert (= b_lambda!259617 (or d!2156577 b_lambda!259637)))

(declare-fun bs!1835284 () Bool)

(declare-fun d!2157107 () Bool)

(assert (= bs!1835284 (and d!2157107 d!2156577)))

(assert (=> bs!1835284 (= (dynLambda!26518 lambda!388443 (h!72705 (exprs!6578 lt!2457736))) (validRegex!8430 (h!72705 (exprs!6578 lt!2457736))))))

(assert (=> bs!1835284 m!7597320))

(assert (=> b!6865896 d!2157107))

(declare-fun b_lambda!259639 () Bool)

(assert (= b_lambda!259625 (or d!2156593 b_lambda!259639)))

(declare-fun bs!1835285 () Bool)

(declare-fun d!2157109 () Bool)

(assert (= bs!1835285 (and d!2157109 d!2156593)))

(assert (=> bs!1835285 (= (dynLambda!26519 lambda!388444 (h!72706 zl!343)) (not (dynLambda!26519 lambda!388366 (h!72706 zl!343))))))

(declare-fun b_lambda!259671 () Bool)

(assert (=> (not b_lambda!259671) (not bs!1835285)))

(declare-fun m!7598692 () Bool)

(assert (=> bs!1835285 m!7598692))

(assert (=> b!6865931 d!2157109))

(declare-fun b_lambda!259641 () Bool)

(assert (= b_lambda!259623 (or d!2156385 b_lambda!259641)))

(declare-fun bs!1835286 () Bool)

(declare-fun d!2157111 () Bool)

(assert (= bs!1835286 (and d!2157111 d!2156385)))

(assert (=> bs!1835286 (= (dynLambda!26518 lambda!388369 (h!72705 (t!380124 (exprs!6578 lt!2457736)))) (validRegex!8430 (h!72705 (t!380124 (exprs!6578 lt!2457736)))))))

(assert (=> bs!1835286 m!7597754))

(assert (=> b!6865919 d!2157111))

(declare-fun b_lambda!259643 () Bool)

(assert (= b_lambda!259619 (or d!2156613 b_lambda!259643)))

(declare-fun bs!1835287 () Bool)

(declare-fun d!2157113 () Bool)

(assert (= bs!1835287 (and d!2157113 d!2156613)))

(assert (=> bs!1835287 (= (dynLambda!26518 lambda!388449 (h!72705 lt!2457884)) (validRegex!8430 (h!72705 lt!2457884)))))

(declare-fun m!7598694 () Bool)

(assert (=> bs!1835287 m!7598694))

(assert (=> b!6865905 d!2157113))

(declare-fun b_lambda!259645 () Bool)

(assert (= b_lambda!259603 (or d!2156377 b_lambda!259645)))

(declare-fun bs!1835288 () Bool)

(declare-fun d!2157115 () Bool)

(assert (= bs!1835288 (and d!2157115 d!2156377)))

(assert (=> bs!1835288 (= (dynLambda!26519 lambda!388363 (h!72706 (t!380125 zl!343))) (not (dynLambda!26519 lambda!388339 (h!72706 (t!380125 zl!343)))))))

(declare-fun b_lambda!259673 () Bool)

(assert (=> (not b_lambda!259673) (not bs!1835288)))

(assert (=> bs!1835288 m!7597570))

(assert (=> b!6865685 d!2157115))

(declare-fun b_lambda!259647 () Bool)

(assert (= b_lambda!259591 (or d!2156397 b_lambda!259647)))

(declare-fun bs!1835289 () Bool)

(declare-fun d!2157117 () Bool)

(assert (= bs!1835289 (and d!2157117 d!2156397)))

(assert (=> bs!1835289 (= (dynLambda!26518 lambda!388377 (h!72705 (t!380124 lt!2457732))) (validRegex!8430 (h!72705 (t!380124 lt!2457732))))))

(declare-fun m!7598696 () Bool)

(assert (=> bs!1835289 m!7598696))

(assert (=> b!6865451 d!2157117))

(declare-fun b_lambda!259649 () Bool)

(assert (= b_lambda!259597 (or d!2156401 b_lambda!259649)))

(declare-fun bs!1835290 () Bool)

(declare-fun d!2157119 () Bool)

(assert (= bs!1835290 (and d!2157119 d!2156401)))

(assert (=> bs!1835290 (= (dynLambda!26518 lambda!388381 (h!72705 (t!380124 lt!2457803))) (validRegex!8430 (h!72705 (t!380124 lt!2457803))))))

(declare-fun m!7598698 () Bool)

(assert (=> bs!1835290 m!7598698))

(assert (=> b!6865563 d!2157119))

(declare-fun b_lambda!259651 () Bool)

(assert (= b_lambda!259599 (or d!2156437 b_lambda!259651)))

(declare-fun bs!1835291 () Bool)

(declare-fun d!2157121 () Bool)

(assert (= bs!1835291 (and d!2157121 d!2156437)))

(assert (=> bs!1835291 (= (dynLambda!26518 lambda!388397 (h!72705 (t!380124 (exprs!6578 setElem!47206)))) (validRegex!8430 (h!72705 (t!380124 (exprs!6578 setElem!47206)))))))

(declare-fun m!7598700 () Bool)

(assert (=> bs!1835291 m!7598700))

(assert (=> b!6865565 d!2157121))

(declare-fun b_lambda!259653 () Bool)

(assert (= b_lambda!259609 (or d!2156527 b_lambda!259653)))

(declare-fun bs!1835292 () Bool)

(declare-fun d!2157123 () Bool)

(assert (= bs!1835292 (and d!2157123 d!2156527)))

(assert (=> bs!1835292 (= (dynLambda!26518 lambda!388435 (h!72705 (unfocusZipperList!2111 zl!343))) (validRegex!8430 (h!72705 (unfocusZipperList!2111 zl!343))))))

(declare-fun m!7598702 () Bool)

(assert (=> bs!1835292 m!7598702))

(assert (=> b!6865787 d!2157123))

(declare-fun b_lambda!259655 () Bool)

(assert (= b_lambda!259613 (or d!2156489 b_lambda!259655)))

(declare-fun bs!1835293 () Bool)

(declare-fun d!2157125 () Bool)

(assert (= bs!1835293 (and d!2157125 d!2156489)))

(assert (=> bs!1835293 (= (dynLambda!26518 lambda!388426 (h!72705 (exprs!6578 (h!72706 (t!380125 zl!343))))) (validRegex!8430 (h!72705 (exprs!6578 (h!72706 (t!380125 zl!343))))))))

(declare-fun m!7598704 () Bool)

(assert (=> bs!1835293 m!7598704))

(assert (=> b!6865830 d!2157125))

(declare-fun b_lambda!259657 () Bool)

(assert (= b_lambda!259607 (or b!6864011 b_lambda!259657)))

(declare-fun bs!1835294 () Bool)

(declare-fun d!2157127 () Bool)

(assert (= bs!1835294 (and d!2157127 b!6864011)))

(assert (=> bs!1835294 (= (dynLambda!26519 lambda!388339 (h!72706 (t!380125 (t!380125 zl!343)))) (matchZipper!2660 (set.insert (h!72706 (t!380125 (t!380125 zl!343))) (as set.empty (Set Context!12156))) s!2326))))

(declare-fun m!7598706 () Bool)

(assert (=> bs!1835294 m!7598706))

(assert (=> bs!1835294 m!7598706))

(declare-fun m!7598708 () Bool)

(assert (=> bs!1835294 m!7598708))

(assert (=> b!6865719 d!2157127))

(declare-fun b_lambda!259659 () Bool)

(assert (= b_lambda!259629 (or b!6864001 b_lambda!259659)))

(declare-fun bs!1835295 () Bool)

(declare-fun d!2157129 () Bool)

(assert (= bs!1835295 (and d!2157129 b!6864001)))

(assert (=> bs!1835295 (= (dynLambda!26518 lambda!388340 (h!72705 (t!380124 (t!380124 (exprs!6578 lt!2457736))))) (validRegex!8430 (h!72705 (t!380124 (t!380124 (exprs!6578 lt!2457736))))))))

(declare-fun m!7598710 () Bool)

(assert (=> bs!1835295 m!7598710))

(assert (=> b!6865973 d!2157129))

(declare-fun b_lambda!259661 () Bool)

(assert (= b_lambda!259595 (or d!2156533 b_lambda!259661)))

(declare-fun bs!1835296 () Bool)

(declare-fun d!2157131 () Bool)

(assert (= bs!1835296 (and d!2157131 d!2156533)))

(assert (=> bs!1835296 (= (dynLambda!26518 lambda!388436 (h!72705 (t!380124 (exprs!6578 lt!2457736)))) (validRegex!8430 (h!72705 (t!380124 (exprs!6578 lt!2457736)))))))

(assert (=> bs!1835296 m!7597754))

(assert (=> b!6865541 d!2157131))

(declare-fun b_lambda!259663 () Bool)

(assert (= b_lambda!259601 (or d!2156493 b_lambda!259663)))

(declare-fun bs!1835297 () Bool)

(declare-fun d!2157133 () Bool)

(assert (= bs!1835297 (and d!2157133 d!2156493)))

(assert (=> bs!1835297 (= (dynLambda!26518 lambda!388427 (h!72705 lt!2457732)) (not (dynLambda!26518 lambda!388378 (h!72705 lt!2457732))))))

(declare-fun b_lambda!259675 () Bool)

(assert (=> (not b_lambda!259675) (not bs!1835297)))

(declare-fun m!7598712 () Bool)

(assert (=> bs!1835297 m!7598712))

(assert (=> b!6865607 d!2157133))

(declare-fun b_lambda!259665 () Bool)

(assert (= b_lambda!259627 (or d!2156611 b_lambda!259665)))

(declare-fun bs!1835298 () Bool)

(declare-fun d!2157135 () Bool)

(assert (= bs!1835298 (and d!2157135 d!2156611)))

(assert (=> bs!1835298 (= (dynLambda!26518 lambda!388448 (h!72705 (exprs!6578 (h!72706 zl!343)))) (validRegex!8430 (h!72705 (exprs!6578 (h!72706 zl!343)))))))

(assert (=> bs!1835298 m!7597752))

(assert (=> b!6865962 d!2157135))

(declare-fun b_lambda!259667 () Bool)

(assert (= b_lambda!259593 (or d!2156435 b_lambda!259667)))

(declare-fun bs!1835299 () Bool)

(declare-fun d!2157137 () Bool)

(assert (= bs!1835299 (and d!2157137 d!2156435)))

(assert (=> bs!1835299 (= (dynLambda!26518 lambda!388396 (h!72705 (t!380124 (exprs!6578 (h!72706 zl!343))))) (validRegex!8430 (h!72705 (t!380124 (exprs!6578 (h!72706 zl!343))))))))

(declare-fun m!7598714 () Bool)

(assert (=> bs!1835299 m!7598714))

(assert (=> b!6865512 d!2157137))

(declare-fun b_lambda!259669 () Bool)

(assert (= b_lambda!259611 (or d!2156395 b_lambda!259669)))

(declare-fun bs!1835300 () Bool)

(declare-fun d!2157139 () Bool)

(assert (= bs!1835300 (and d!2157139 d!2156395)))

(assert (=> bs!1835300 (= (dynLambda!26518 lambda!388372 (h!72705 (t!380124 lt!2457732))) (not (dynLambda!26518 lambda!388338 (h!72705 (t!380124 lt!2457732)))))))

(declare-fun b_lambda!259677 () Bool)

(assert (=> (not b_lambda!259677) (not bs!1835300)))

(declare-fun m!7598716 () Bool)

(assert (=> bs!1835300 m!7598716))

(assert (=> b!6865789 d!2157139))

(push 1)

(assert (not b!6866018))

(assert (not b!6866406))

(assert (not b!6866478))

(assert (not b!6866065))

(assert (not b!6865853))

(assert (not b!6866061))

(assert (not b!6865688))

(assert (not b!6866198))

(assert (not b!6866099))

(assert (not b!6866437))

(assert (not b!6866390))

(assert (not b!6865983))

(assert (not d!2156835))

(assert (not b!6866068))

(assert (not b!6866098))

(assert (not b!6866438))

(assert (not b!6866210))

(assert (not bs!1835289))

(assert (not b!6866067))

(assert (not d!2156971))

(assert (not b!6866453))

(assert (not d!2156973))

(assert (not b!6866205))

(assert (not b!6865999))

(assert (not b!6866493))

(assert (not b!6866237))

(assert (not bs!1835299))

(assert (not b!6866143))

(assert (not b!6866251))

(assert tp_is_empty!42641)

(assert (not b!6865788))

(assert (not b!6866110))

(assert (not b!6866077))

(assert (not b!6866276))

(assert (not b!6866056))

(assert (not b_lambda!259515))

(assert (not b!6866330))

(assert (not b!6866547))

(assert (not b!6865664))

(assert (not b!6866540))

(assert (not b!6866358))

(assert (not b!6866134))

(assert (not bm!625305))

(assert (not b!6866091))

(assert (not b!6865652))

(assert (not b!6866263))

(assert (not d!2157079))

(assert (not bm!625317))

(assert (not b!6866470))

(assert (not b_lambda!259475))

(assert (not b!6866255))

(assert (not b!6866373))

(assert (not b!6866531))

(assert (not b!6866212))

(assert (not b!6866394))

(assert (not b!6865485))

(assert (not b!6866485))

(assert (not b!6866477))

(assert (not b_lambda!259521))

(assert (not b!6866233))

(assert (not b!6866320))

(assert (not b!6866249))

(assert (not b!6866462))

(assert (not b_lambda!259587))

(assert (not b!6865452))

(assert (not b!6865467))

(assert (not b!6866292))

(assert (not b!6866162))

(assert (not b!6866049))

(assert (not b!6866455))

(assert (not b!6866307))

(assert (not b_lambda!259631))

(assert (not b!6866305))

(assert (not b!6866423))

(assert (not b!6866031))

(assert (not b!6866311))

(assert (not b!6866063))

(assert (not b!6865784))

(assert (not b!6865460))

(assert (not b!6866228))

(assert (not b!6866398))

(assert (not b!6866415))

(assert (not bs!1835290))

(assert (not b!6866144))

(assert (not b!6865566))

(assert (not bm!625283))

(assert (not b_lambda!259671))

(assert (not b!6865846))

(assert (not b!6866427))

(assert (not b!6866095))

(assert (not b!6866434))

(assert (not b!6866291))

(assert (not b!6865753))

(assert (not d!2156941))

(assert (not b!6865749))

(assert (not b!6866126))

(assert (not b!6866360))

(assert (not b!6866081))

(assert (not b!6866552))

(assert (not b!6866519))

(assert (not b!6866085))

(assert (not b!6866469))

(assert (not b!6865486))

(assert (not b!6866523))

(assert (not b!6866039))

(assert (not b!6866080))

(assert (not b!6866385))

(assert (not b!6866220))

(assert (not b!6866497))

(assert (not b!6866103))

(assert (not b_lambda!259473))

(assert (not b!6866260))

(assert (not b!6866152))

(assert (not b!6866010))

(assert (not b!6866504))

(assert (not b!6866539))

(assert (not b_lambda!259665))

(assert (not b!6866122))

(assert (not bm!625329))

(assert (not bm!625293))

(assert (not b!6866449))

(assert (not bm!625282))

(assert (not b!6866538))

(assert (not d!2156849))

(assert (not bm!625373))

(assert (not b!6866002))

(assert (not b!6866457))

(assert (not bm!625336))

(assert (not b!6866508))

(assert (not bm!625308))

(assert (not d!2156839))

(assert (not b!6865671))

(assert (not b!6865908))

(assert (not b_lambda!259589))

(assert (not b!6866340))

(assert (not bm!625376))

(assert (not b!6866257))

(assert (not b!6865715))

(assert (not bm!625386))

(assert (not b!6866328))

(assert (not b!6865704))

(assert (not bm!625313))

(assert (not b!6866487))

(assert (not b!6865651))

(assert (not b!6866006))

(assert (not b!6866194))

(assert (not b!6866035))

(assert (not bm!625378))

(assert (not bm!625351))

(assert (not b!6866283))

(assert (not b!6866072))

(assert (not b!6866514))

(assert (not b!6866414))

(assert (not bm!625286))

(assert (not b!6866101))

(assert (not bm!625319))

(assert (not b_lambda!259513))

(assert (not b!6866202))

(assert (not b!6866498))

(assert (not b!6866017))

(assert (not b!6865987))

(assert (not bm!625338))

(assert (not b!6866544))

(assert (not b!6865478))

(assert (not b!6866425))

(assert (not bm!625300))

(assert (not b!6866076))

(assert (not b!6865712))

(assert (not b!6866256))

(assert (not b!6865843))

(assert (not b!6865609))

(assert (not bm!625280))

(assert (not b!6866287))

(assert (not b!6865646))

(assert (not d!2156937))

(assert (not bm!625375))

(assert (not b!6865842))

(assert (not b!6866005))

(assert (not b!6866410))

(assert (not b!6866281))

(assert (not bm!625350))

(assert (not b!6866154))

(assert (not b!6866071))

(assert (not bm!625339))

(assert (not b!6866236))

(assert (not b_lambda!259517))

(assert (not b!6866000))

(assert (not b!6865638))

(assert (not b!6866397))

(assert (not b!6865805))

(assert (not d!2156871))

(assert (not b!6866082))

(assert (not b!6865820))

(assert (not b!6866474))

(assert (not b_lambda!259651))

(assert (not b!6866349))

(assert (not b!6866357))

(assert (not b!6866354))

(assert (not b!6866148))

(assert (not b!6866325))

(assert (not b!6865897))

(assert (not b!6865800))

(assert (not d!2156887))

(assert (not b!6866213))

(assert (not bm!625360))

(assert (not bm!625331))

(assert (not bm!625272))

(assert (not b!6865480))

(assert (not b!6866111))

(assert (not b!6866442))

(assert (not b!6865513))

(assert (not b!6866185))

(assert (not b!6865466))

(assert (not b!6866396))

(assert (not b!6866405))

(assert (not bs!1835295))

(assert (not bm!625288))

(assert (not b!6866168))

(assert (not b!6866057))

(assert (not b!6866240))

(assert (not b!6866380))

(assert (not b!6865542))

(assert (not bm!625328))

(assert (not b!6866441))

(assert (not b!6866338))

(assert (not b!6866135))

(assert (not b!6866471))

(assert (not d!2157037))

(assert (not b!6865490))

(assert (not b!6866392))

(assert (not b!6865587))

(assert (not b!6866300))

(assert (not b!6866418))

(assert (not b!6866419))

(assert (not b!6865755))

(assert (not b!6866131))

(assert (not b!6865501))

(assert (not b!6865468))

(assert (not b!6865592))

(assert (not b!6866382))

(assert (not bm!625361))

(assert (not b!6866431))

(assert (not b!6866401))

(assert (not b!6866264))

(assert (not b!6865475))

(assert (not b!6866303))

(assert (not bm!625303))

(assert (not b!6866196))

(assert (not b!6865630))

(assert (not b!6866140))

(assert (not b!6866109))

(assert (not b!6865575))

(assert (not b!6866230))

(assert (not b!6866064))

(assert (not b!6866459))

(assert (not bs!1835294))

(assert (not bm!625277))

(assert (not b!6866026))

(assert (not b!6866433))

(assert (not b!6866494))

(assert (not b_lambda!259667))

(assert (not b!6866426))

(assert (not b!6865920))

(assert (not b!6865718))

(assert (not d!2157033))

(assert (not b_lambda!259661))

(assert (not b!6865713))

(assert (not b!6865808))

(assert (not b!6866445))

(assert (not b!6866422))

(assert (not b_lambda!259635))

(assert (not b!6866029))

(assert (not bm!625365))

(assert (not b!6866404))

(assert (not b!6866186))

(assert (not b!6865589))

(assert (not b!6865959))

(assert (not b!6866304))

(assert (not b!6866079))

(assert (not bm!625276))

(assert (not bm!625357))

(assert (not b_lambda!259519))

(assert (not b_lambda!259531))

(assert (not bm!625294))

(assert (not b!6866271))

(assert (not d!2156995))

(assert (not b!6866042))

(assert (not b!6866543))

(assert (not b!6865491))

(assert (not b!6866369))

(assert (not b!6866222))

(assert (not bm!625356))

(assert (not b!6865614))

(assert (not b!6866518))

(assert (not b!6866376))

(assert (not b!6866337))

(assert (not bm!625326))

(assert (not d!2156919))

(assert (not b!6866027))

(assert (not b!6865970))

(assert (not b!6865737))

(assert (not bm!625333))

(assert (not b_lambda!259653))

(assert (not bm!625366))

(assert (not b!6865661))

(assert (not b!6865838))

(assert (not b!6865939))

(assert (not b!6866506))

(assert (not bm!625382))

(assert (not b!6866528))

(assert (not b!6865803))

(assert (not b!6866378))

(assert (not d!2156993))

(assert (not bm!625325))

(assert (not d!2157039))

(assert (not b!6865529))

(assert (not b!6865726))

(assert (not b!6866288))

(assert (not bm!625273))

(assert (not b!6866090))

(assert (not b!6866073))

(assert (not b!6866118))

(assert (not d!2156909))

(assert (not b!6866536))

(assert (not b!6866512))

(assert (not b!6866174))

(assert (not b!6865750))

(assert (not b!6865988))

(assert (not b_lambda!259675))

(assert (not b!6865831))

(assert (not b!6866089))

(assert (not b!6865610))

(assert (not b!6865932))

(assert (not b!6866127))

(assert (not b!6866341))

(assert (not b!6865702))

(assert (not b_lambda!259525))

(assert (not b!6866362))

(assert (not b!6866243))

(assert (not bm!625372))

(assert (not b!6865604))

(assert (not b!6865586))

(assert (not b!6866060))

(assert (not b!6866482))

(assert (not b!6866409))

(assert (not b!6866301))

(assert (not b!6866272))

(assert (not b!6866093))

(assert (not b!6866348))

(assert (not b!6866021))

(assert (not b!6866384))

(assert (not b!6865640))

(assert (not b!6865464))

(assert (not d!2156953))

(assert (not b!6866361))

(assert (not b!6866197))

(assert (not setNonEmpty!47218))

(assert (not b!6866501))

(assert (not b_lambda!259647))

(assert (not d!2156957))

(assert (not b!6866153))

(assert (not b!6865621))

(assert (not b!6865549))

(assert (not b!6865488))

(assert (not b!6866130))

(assert (not bm!625364))

(assert (not d!2156845))

(assert (not b!6865635))

(assert (not b_lambda!259645))

(assert (not b!6865992))

(assert (not b!6866119))

(assert (not b!6866507))

(assert (not b!6866295))

(assert (not bm!625341))

(assert (not b!6865806))

(assert (not bm!625337))

(assert (not b!6865906))

(assert (not b_lambda!259659))

(assert (not b!6865633))

(assert (not b!6866417))

(assert (not b!6865465))

(assert (not b!6866235))

(assert (not b!6865564))

(assert (not b!6866105))

(assert (not bm!625297))

(assert (not b!6866299))

(assert (not b!6866277))

(assert (not b_lambda!259649))

(assert (not b!6865984))

(assert (not b!6866227))

(assert (not b!6866510))

(assert (not d!2157067))

(assert (not b!6865596))

(assert (not b!6866086))

(assert (not d!2157025))

(assert (not b!6865708))

(assert (not b_lambda!259643))

(assert (not b!6865991))

(assert (not b!6866025))

(assert (not b_lambda!259533))

(assert (not b!6866146))

(assert (not b!6866188))

(assert (not b!6866322))

(assert (not b!6866551))

(assert (not b!6866503))

(assert (not d!2156829))

(assert (not b!6865509))

(assert (not b!6866502))

(assert (not b!6866149))

(assert (not bm!625269))

(assert (not bm!625320))

(assert (not b_lambda!259527))

(assert (not b!6866309))

(assert (not b_lambda!259477))

(assert (not d!2156889))

(assert (not b!6865894))

(assert (not b!6866009))

(assert (not b!6866245))

(assert (not bm!625379))

(assert (not b!6866161))

(assert (not b!6866467))

(assert (not b!6866158))

(assert (not b!6865772))

(assert (not b!6866408))

(assert (not b!6866165))

(assert (not b!6866520))

(assert (not b!6866515))

(assert (not b!6866319))

(assert (not b!6866279))

(assert (not b!6866386))

(assert (not b!6866069))

(assert (not bm!625271))

(assert (not b!6866059))

(assert (not b!6866377))

(assert (not b!6866372))

(assert (not b!6865590))

(assert (not bm!625306))

(assert (not bm!625314))

(assert (not b!6866550))

(assert (not b!6865717))

(assert (not b!6865561))

(assert (not b!6866241))

(assert (not b!6866181))

(assert (not b!6865989))

(assert (not bm!625291))

(assert (not b!6866204))

(assert (not b!6865995))

(assert (not b!6866020))

(assert (not bm!625299))

(assert (not b!6866430))

(assert (not b!6866128))

(assert (not bs!1835296))

(assert (not b!6866296))

(assert (not b!6866201))

(assert (not b!6865997))

(assert (not b!6865993))

(assert (not b_lambda!259663))

(assert (not b!6866365))

(assert (not b!6865482))

(assert (not b_lambda!259529))

(assert (not b!6865974))

(assert (not b!6866400))

(assert (not b!6866267))

(assert (not b!6865711))

(assert (not d!2157063))

(assert (not d!2156959))

(assert (not b!6866209))

(assert (not b!6866008))

(assert (not b!6866389))

(assert (not b!6866332))

(assert (not b!6866037))

(assert (not d!2156903))

(assert (not b!6866173))

(assert (not b_lambda!259677))

(assert (not bs!1835281))

(assert (not b!6866527))

(assert (not b!6866439))

(assert (not b!6866289))

(assert (not bm!625345))

(assert (not b!6865709))

(assert (not b!6865950))

(assert (not b!6866370))

(assert (not b!6866280))

(assert (not d!2156823))

(assert (not b!6866004))

(assert (not b!6866150))

(assert (not b!6866136))

(assert (not bs!1835298))

(assert (not b!6866001))

(assert (not bm!625342))

(assert (not b!6866313))

(assert (not b!6865943))

(assert (not b!6866043))

(assert (not b!6866193))

(assert (not b!6866381))

(assert (not b!6865700))

(assert (not b_lambda!259639))

(assert (not b!6866326))

(assert (not b!6865796))

(assert (not bm!625307))

(assert (not b!6865463))

(assert (not b!6866200))

(assert (not b!6866180))

(assert (not b!6866113))

(assert (not b!6866184))

(assert (not b!6865883))

(assert (not b!6866012))

(assert (not b!6866297))

(assert (not b!6866350))

(assert (not b!6866121))

(assert (not b!6866522))

(assert (not b!6866178))

(assert (not b!6866169))

(assert (not b!6866479))

(assert (not bs!1835286))

(assert (not bm!625322))

(assert (not d!2156961))

(assert (not b!6866244))

(assert (not b!6866047))

(assert (not b!6865682))

(assert (not b!6866450))

(assert (not d!2156833))

(assert (not b!6865649))

(assert (not bm!625332))

(assert (not bs!1835292))

(assert (not b!6866486))

(assert (not b!6866481))

(assert (not b!6866248))

(assert (not b!6866388))

(assert (not d!2156947))

(assert (not b!6866524))

(assert (not b!6866374))

(assert (not bs!1835284))

(assert (not b!6865754))

(assert (not b!6865497))

(assert (not b!6866157))

(assert (not b!6866285))

(assert (not b!6865827))

(assert (not b!6866321))

(assert (not b!6866463))

(assert (not b!6866315))

(assert (not d!2157031))

(assert (not bm!625323))

(assert (not b!6866265))

(assert (not bm!625296))

(assert (not b!6865695))

(assert (not b!6866156))

(assert (not b!6866216))

(assert (not b!6866342))

(assert (not bs!1835283))

(assert (not b!6865557))

(assert (not b!6865608))

(assert (not b!6866045))

(assert (not b!6866402))

(assert (not b!6866083))

(assert (not b!6866454))

(assert (not b!6866170))

(assert (not b!6866465))

(assert (not b!6865996))

(assert (not b!6866458))

(assert (not bm!625384))

(assert (not b!6866123))

(assert (not b!6866483))

(assert (not b!6866190))

(assert (not b!6866087))

(assert (not b!6866223))

(assert (not b!6865701))

(assert (not b!6866048))

(assert (not d!2157077))

(assert (not b!6866334))

(assert (not b!6866214))

(assert (not b!6866495))

(assert (not b!6866261))

(assert (not bm!625381))

(assert (not b!6866475))

(assert (not b!6866336))

(assert (not bm!625316))

(assert (not b!6865675))

(assert (not b!6866312))

(assert (not b!6866166))

(assert (not b_lambda!259673))

(assert (not bm!625387))

(assert (not b!6866106))

(assert (not b!6866138))

(assert (not b!6865917))

(assert (not bm!625279))

(assert (not b!6866269))

(assert (not d!2157009))

(assert (not bs!1835287))

(assert (not b!6866097))

(assert (not b!6866542))

(assert (not bm!625385))

(assert (not b!6866023))

(assert (not b!6866051))

(assert (not bs!1835291))

(assert (not b!6866145))

(assert (not b!6866192))

(assert (not d!2157029))

(assert (not b!6866259))

(assert (not b!6866284))

(assert (not b!6866164))

(assert (not b!6866115))

(assert (not b_lambda!259657))

(assert (not b!6866356))

(assert (not b!6865698))

(assert (not bm!625311))

(assert (not b!6866013))

(assert (not b!6865776))

(assert (not bm!625285))

(assert (not d!2156831))

(assert (not b!6865929))

(assert (not b!6866231))

(assert (not b!6866055))

(assert (not b!6866252))

(assert (not b!6866461))

(assert (not b!6865520))

(assert (not b!6866421))

(assert (not b!6866345))

(assert (not d!2156945))

(assert (not b!6866293))

(assert (not b!6865844))

(assert (not b!6866499))

(assert (not d!2157051))

(assert (not b!6865637))

(assert (not b!6866273))

(assert (not bm!625344))

(assert (not bs!1835293))

(assert (not b!6866141))

(assert (not b!6866253))

(assert (not b!6866489))

(assert (not d!2157017))

(assert (not b!6866333))

(assert (not b!6866217))

(assert (not b!6866530))

(assert (not b!6866247))

(assert (not b!6865703))

(assert (not b!6866490))

(assert (not b!6866411))

(assert (not d!2157013))

(assert (not b!6866268))

(assert (not bm!625367))

(assert (not b!6866224))

(assert (not b!6866316))

(assert (not b!6866446))

(assert (not d!2156841))

(assert (not b!6865748))

(assert (not b!6866353))

(assert (not b!6866182))

(assert (not b!6866532))

(assert (not b!6866034))

(assert (not b!6866139))

(assert (not b_lambda!259637))

(assert (not d!2156923))

(assert (not bm!625290))

(assert (not d!2157023))

(assert (not b_lambda!259669))

(assert (not b!6866124))

(assert (not b!6866172))

(assert (not b!6866041))

(assert (not b!6866473))

(assert (not b!6866232))

(assert (not b!6865752))

(assert (not b!6866317))

(assert (not b!6866366))

(assert (not d!2156917))

(assert (not b!6866176))

(assert (not d!2156861))

(assert (not b!6866435))

(assert (not bm!625289))

(assert (not b!6866346))

(assert (not b!6866368))

(assert (not b!6865942))

(assert (not b_lambda!259633))

(assert (not b!6866014))

(assert (not b!6866033))

(assert (not b!6865538))

(assert (not bm!625347))

(assert (not b!6866534))

(assert (not b!6866107))

(assert (not b!6866132))

(assert (not b!6865588))

(assert (not b!6866016))

(assert (not b!6866553))

(assert (not b!6866451))

(assert (not b!6865751))

(assert (not b!6866208))

(assert (not b!6866308))

(assert (not b!6866443))

(assert (not b!6865650))

(assert (not bm!625334))

(assert (not b!6866364))

(assert (not b!6866160))

(assert (not d!2156979))

(assert (not b!6865790))

(assert (not b!6866535))

(assert (not b!6865583))

(assert (not b!6866447))

(assert (not bm!625359))

(assert (not b!6866413))

(assert (not d!2156885))

(assert (not b!6866022))

(assert (not bm!625348))

(assert (not bm!625370))

(assert (not b!6866429))

(assert (not b!6866548))

(assert (not b!6865489))

(assert (not b!6866466))

(assert (not bs!1835282))

(assert (not b!6866546))

(assert (not b!6866177))

(assert (not b!6866329))

(assert (not b!6866114))

(assert (not b!6865454))

(assert (not b!6866516))

(assert (not b!6866526))

(assert (not b!6866511))

(assert (not b!6866226))

(assert (not b!6866491))

(assert (not b!6866206))

(assert (not b!6866393))

(assert (not b!6866218))

(assert (not b!6866324))

(assert (not b!6865612))

(assert (not b!6865591))

(assert (not b_lambda!259523))

(assert (not b!6866094))

(assert (not b!6865816))

(assert (not b_lambda!259655))

(assert (not b!6865963))

(assert (not b!6866030))

(assert (not b!6866038))

(assert (not b!6865484))

(assert (not b!6865479))

(assert (not bm!625274))

(assert (not d!2156813))

(assert (not b!6866075))

(assert (not b!6865699))

(assert (not d!2156955))

(assert (not b!6865686))

(assert (not b!6866275))

(assert (not b!6865845))

(assert (not b_lambda!259641))

(assert (not b!6866052))

(assert (not b!6866102))

(assert (not b!6866352))

(assert (not b!6866344))

(assert (not b!6866189))

(assert (not b!6866239))

(assert (not d!2156821))

(assert (not b!6866053))

(assert (not b!6865985))

(assert (not b!6866046))

(assert (not bm!625302))

(assert (not b!6866219))

(assert (not b!6866117))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

