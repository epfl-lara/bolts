; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!662122 () Bool)

(assert start!662122)

(declare-fun b!6858314 () Bool)

(assert (=> b!6858314 true))

(declare-fun b!6858325 () Bool)

(assert (=> b!6858325 true))

(declare-fun bs!1833070 () Bool)

(declare-fun b!6858307 () Bool)

(assert (= bs!1833070 (and b!6858307 b!6858325)))

(declare-fun lambda!387784 () Int)

(declare-fun lambda!387783 () Int)

(assert (=> bs!1833070 (not (= lambda!387784 lambda!387783))))

(assert (=> b!6858307 true))

(declare-fun b!6858306 () Bool)

(declare-fun e!4135030 () Bool)

(declare-fun tp!1880718 () Bool)

(assert (=> b!6858306 (= e!4135030 tp!1880718)))

(declare-fun e!4135027 () Bool)

(declare-datatypes ((C!33638 0))(
  ( (C!33639 (val!26521 Int)) )
))
(declare-datatypes ((Regex!16684 0))(
  ( (ElementMatch!16684 (c!1276626 C!33638)) (Concat!25529 (regOne!33880 Regex!16684) (regTwo!33880 Regex!16684)) (EmptyExpr!16684) (Star!16684 (reg!17013 Regex!16684)) (EmptyLang!16684) (Union!16684 (regOne!33881 Regex!16684) (regTwo!33881 Regex!16684)) )
))
(declare-datatypes ((List!66351 0))(
  ( (Nil!66227) (Cons!66227 (h!72675 Regex!16684) (t!380094 List!66351)) )
))
(declare-datatypes ((Context!12136 0))(
  ( (Context!12137 (exprs!6568 List!66351)) )
))
(declare-fun z!1189 () (Set Context!12136))

(declare-datatypes ((List!66352 0))(
  ( (Nil!66228) (Cons!66228 (h!72676 C!33638) (t!380095 List!66352)) )
))
(declare-fun s!2326 () List!66352)

(declare-fun matchZipper!2650 ((Set Context!12136) List!66352) Bool)

(assert (=> b!6858307 (= e!4135027 (matchZipper!2650 z!1189 s!2326))))

(declare-datatypes ((List!66353 0))(
  ( (Nil!66229) (Cons!66229 (h!72677 Context!12136) (t!380096 List!66353)) )
))
(declare-fun zl!343 () List!66353)

(declare-fun content!12995 (List!66353) (Set Context!12136))

(assert (=> b!6858307 (matchZipper!2650 (content!12995 zl!343) s!2326)))

(declare-datatypes ((Unit!160119 0))(
  ( (Unit!160120) )
))
(declare-fun lt!2457045 () Unit!160119)

(declare-fun lemmaExistsMatchingContextThenMatchingString!21 (List!66353 List!66352) Unit!160119)

(assert (=> b!6858307 (= lt!2457045 (lemmaExistsMatchingContextThenMatchingString!21 zl!343 s!2326))))

(declare-fun exists!2798 ((Set Context!12136) Int) Bool)

(assert (=> b!6858307 (exists!2798 z!1189 lambda!387784)))

(declare-fun lt!2457042 () Context!12136)

(declare-fun lt!2457031 () Unit!160119)

(declare-fun lemmaContainsThenExists!74 ((Set Context!12136) Context!12136 Int) Unit!160119)

(assert (=> b!6858307 (= lt!2457031 (lemmaContainsThenExists!74 z!1189 lt!2457042 lambda!387784))))

(declare-fun lt!2457044 () (Set Context!12136))

(assert (=> b!6858307 (matchZipper!2650 lt!2457044 s!2326)))

(declare-fun lt!2457038 () List!66353)

(declare-fun lt!2457037 () Unit!160119)

(declare-fun lt!2457035 () Regex!16684)

(declare-fun theoremZipperRegexEquiv!960 ((Set Context!12136) List!66353 Regex!16684 List!66352) Unit!160119)

(assert (=> b!6858307 (= lt!2457037 (theoremZipperRegexEquiv!960 lt!2457044 lt!2457038 lt!2457035 s!2326))))

(assert (=> b!6858307 (= lt!2457044 (set.insert lt!2457042 (as set.empty (Set Context!12136))))))

(declare-fun b!6858308 () Bool)

(declare-fun e!4135029 () Bool)

(assert (=> b!6858308 (= e!4135029 e!4135027)))

(declare-fun res!2798537 () Bool)

(assert (=> b!6858308 (=> res!2798537 e!4135027)))

(declare-fun lt!2457032 () Int)

(declare-fun zipperDepthTotal!439 (List!66353) Int)

(assert (=> b!6858308 (= res!2798537 (<= lt!2457032 (zipperDepthTotal!439 lt!2457038)))))

(assert (=> b!6858308 (= lt!2457038 (Cons!66229 lt!2457042 Nil!66229))))

(declare-fun lt!2457040 () Int)

(assert (=> b!6858308 (< lt!2457040 lt!2457032)))

(assert (=> b!6858308 (= lt!2457032 (zipperDepthTotal!439 zl!343))))

(declare-fun contextDepthTotal!411 (Context!12136) Int)

(assert (=> b!6858308 (= lt!2457040 (contextDepthTotal!411 lt!2457042))))

(declare-fun lt!2457041 () Unit!160119)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!43 (List!66353 Context!12136) Unit!160119)

(assert (=> b!6858308 (= lt!2457041 (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!43 zl!343 lt!2457042))))

(declare-fun getWitness!963 (List!66353 Int) Context!12136)

(assert (=> b!6858308 (= lt!2457042 (getWitness!963 zl!343 lambda!387783))))

(declare-fun b!6858309 () Bool)

(declare-fun res!2798543 () Bool)

(declare-fun e!4135035 () Bool)

(assert (=> b!6858309 (=> res!2798543 e!4135035)))

(declare-fun lt!2457034 () List!66351)

(declare-fun lambda!387782 () Int)

(declare-fun exists!2799 (List!66351 Int) Bool)

(assert (=> b!6858309 (= res!2798543 (not (exists!2799 lt!2457034 lambda!387782)))))

(declare-fun b!6858310 () Bool)

(declare-fun res!2798541 () Bool)

(declare-fun e!4135034 () Bool)

(assert (=> b!6858310 (=> res!2798541 e!4135034)))

(assert (=> b!6858310 (= res!2798541 (or (not (is-Cons!66229 zl!343)) (is-Nil!66228 s!2326) (not (= zl!343 (Cons!66229 (h!72677 zl!343) (t!380096 zl!343))))))))

(declare-fun b!6858311 () Bool)

(declare-fun res!2798534 () Bool)

(declare-fun e!4135031 () Bool)

(assert (=> b!6858311 (=> res!2798534 e!4135031)))

(declare-fun validRegex!8420 (Regex!16684) Bool)

(assert (=> b!6858311 (= res!2798534 (not (validRegex!8420 lt!2457035)))))

(declare-fun setRes!47142 () Bool)

(declare-fun setNonEmpty!47142 () Bool)

(declare-fun e!4135032 () Bool)

(declare-fun tp!1880723 () Bool)

(declare-fun setElem!47142 () Context!12136)

(declare-fun inv!84958 (Context!12136) Bool)

(assert (=> setNonEmpty!47142 (= setRes!47142 (and tp!1880723 (inv!84958 setElem!47142) e!4135032))))

(declare-fun setRest!47142 () (Set Context!12136))

(assert (=> setNonEmpty!47142 (= z!1189 (set.union (set.insert setElem!47142 (as set.empty (Set Context!12136))) setRest!47142))))

(declare-fun b!6858312 () Bool)

(declare-fun tp!1880720 () Bool)

(declare-fun tp!1880716 () Bool)

(assert (=> b!6858312 (= e!4135030 (and tp!1880720 tp!1880716))))

(declare-fun b!6858313 () Bool)

(declare-fun res!2798542 () Bool)

(assert (=> b!6858313 (=> res!2798542 e!4135031)))

(declare-fun matchR!8867 (Regex!16684 List!66352) Bool)

(assert (=> b!6858313 (= res!2798542 (not (matchR!8867 lt!2457035 s!2326)))))

(declare-fun res!2798539 () Bool)

(declare-fun e!4135028 () Bool)

(assert (=> start!662122 (=> (not res!2798539) (not e!4135028))))

(declare-fun r!7292 () Regex!16684)

(assert (=> start!662122 (= res!2798539 (validRegex!8420 r!7292))))

(assert (=> start!662122 e!4135028))

(assert (=> start!662122 e!4135030))

(declare-fun condSetEmpty!47142 () Bool)

(assert (=> start!662122 (= condSetEmpty!47142 (= z!1189 (as set.empty (Set Context!12136))))))

(assert (=> start!662122 setRes!47142))

(declare-fun e!4135036 () Bool)

(assert (=> start!662122 e!4135036))

(declare-fun e!4135033 () Bool)

(assert (=> start!662122 e!4135033))

(assert (=> b!6858314 (= e!4135034 e!4135035)))

(declare-fun res!2798533 () Bool)

(assert (=> b!6858314 (=> res!2798533 e!4135035)))

(declare-fun lt!2457039 () Bool)

(assert (=> b!6858314 (= res!2798533 (not lt!2457039))))

(assert (=> b!6858314 (= lt!2457039 (exists!2799 lt!2457034 lambda!387782))))

(declare-fun lt!2457033 () Unit!160119)

(declare-fun matchRGenUnionSpec!323 (Regex!16684 List!66351 List!66352) Unit!160119)

(assert (=> b!6858314 (= lt!2457033 (matchRGenUnionSpec!323 r!7292 lt!2457034 s!2326))))

(declare-fun unfocusZipperList!2101 (List!66353) List!66351)

(assert (=> b!6858314 (= lt!2457034 (unfocusZipperList!2101 zl!343))))

(declare-fun b!6858315 () Bool)

(assert (=> b!6858315 (= e!4135028 (not e!4135034))))

(declare-fun res!2798538 () Bool)

(assert (=> b!6858315 (=> res!2798538 e!4135034)))

(declare-fun e!4135037 () Bool)

(assert (=> b!6858315 (= res!2798538 e!4135037)))

(declare-fun res!2798544 () Bool)

(assert (=> b!6858315 (=> (not res!2798544) (not e!4135037))))

(assert (=> b!6858315 (= res!2798544 (is-Cons!66229 zl!343))))

(declare-fun matchRSpec!3785 (Regex!16684 List!66352) Bool)

(assert (=> b!6858315 (= lt!2457039 (matchRSpec!3785 r!7292 s!2326))))

(assert (=> b!6858315 (= lt!2457039 (matchR!8867 r!7292 s!2326))))

(declare-fun lt!2457043 () Unit!160119)

(declare-fun mainMatchTheorem!3785 (Regex!16684 List!66352) Unit!160119)

(assert (=> b!6858315 (= lt!2457043 (mainMatchTheorem!3785 r!7292 s!2326))))

(declare-fun b!6858316 () Bool)

(assert (=> b!6858316 (= e!4135035 e!4135031)))

(declare-fun res!2798536 () Bool)

(assert (=> b!6858316 (=> res!2798536 e!4135031)))

(declare-fun contains!20342 (List!66351 Regex!16684) Bool)

(assert (=> b!6858316 (= res!2798536 (not (contains!20342 lt!2457034 lt!2457035)))))

(declare-fun getWitness!964 (List!66351 Int) Regex!16684)

(assert (=> b!6858316 (= lt!2457035 (getWitness!964 lt!2457034 lambda!387782))))

(declare-fun b!6858317 () Bool)

(declare-fun tp!1880719 () Bool)

(declare-fun e!4135038 () Bool)

(assert (=> b!6858317 (= e!4135036 (and (inv!84958 (h!72677 zl!343)) e!4135038 tp!1880719))))

(declare-fun b!6858318 () Bool)

(declare-fun isEmpty!38594 (List!66353) Bool)

(assert (=> b!6858318 (= e!4135037 (isEmpty!38594 (t!380096 zl!343)))))

(declare-fun b!6858319 () Bool)

(declare-fun res!2798535 () Bool)

(assert (=> b!6858319 (=> (not res!2798535) (not e!4135028))))

(declare-fun unfocusZipper!2426 (List!66353) Regex!16684)

(assert (=> b!6858319 (= res!2798535 (= r!7292 (unfocusZipper!2426 zl!343)))))

(declare-fun b!6858320 () Bool)

(declare-fun tp_is_empty!42621 () Bool)

(declare-fun tp!1880721 () Bool)

(assert (=> b!6858320 (= e!4135033 (and tp_is_empty!42621 tp!1880721))))

(declare-fun setIsEmpty!47142 () Bool)

(assert (=> setIsEmpty!47142 setRes!47142))

(declare-fun b!6858321 () Bool)

(declare-fun tp!1880724 () Bool)

(assert (=> b!6858321 (= e!4135032 tp!1880724)))

(declare-fun b!6858322 () Bool)

(declare-fun tp!1880717 () Bool)

(declare-fun tp!1880725 () Bool)

(assert (=> b!6858322 (= e!4135030 (and tp!1880717 tp!1880725))))

(declare-fun b!6858323 () Bool)

(declare-fun tp!1880722 () Bool)

(assert (=> b!6858323 (= e!4135038 tp!1880722)))

(declare-fun b!6858324 () Bool)

(declare-fun res!2798531 () Bool)

(assert (=> b!6858324 (=> res!2798531 e!4135034)))

(assert (=> b!6858324 (= res!2798531 (isEmpty!38594 (t!380096 zl!343)))))

(assert (=> b!6858325 (= e!4135031 e!4135029)))

(declare-fun res!2798540 () Bool)

(assert (=> b!6858325 (=> res!2798540 e!4135029)))

(declare-fun exists!2800 (List!66353 Int) Bool)

(assert (=> b!6858325 (= res!2798540 (not (exists!2800 zl!343 lambda!387783)))))

(assert (=> b!6858325 (exists!2800 zl!343 lambda!387783)))

(declare-fun lt!2457036 () Unit!160119)

(declare-fun lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!39 (List!66353 Regex!16684) Unit!160119)

(assert (=> b!6858325 (= lt!2457036 (lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!39 zl!343 lt!2457035))))

(declare-fun b!6858326 () Bool)

(assert (=> b!6858326 (= e!4135030 tp_is_empty!42621)))

(declare-fun b!6858327 () Bool)

(declare-fun res!2798532 () Bool)

(assert (=> b!6858327 (=> (not res!2798532) (not e!4135028))))

(declare-fun toList!10468 ((Set Context!12136)) List!66353)

(assert (=> b!6858327 (= res!2798532 (= (toList!10468 z!1189) zl!343))))

(assert (= (and start!662122 res!2798539) b!6858327))

(assert (= (and b!6858327 res!2798532) b!6858319))

(assert (= (and b!6858319 res!2798535) b!6858315))

(assert (= (and b!6858315 res!2798544) b!6858318))

(assert (= (and b!6858315 (not res!2798538)) b!6858310))

(assert (= (and b!6858310 (not res!2798541)) b!6858324))

(assert (= (and b!6858324 (not res!2798531)) b!6858314))

(assert (= (and b!6858314 (not res!2798533)) b!6858309))

(assert (= (and b!6858309 (not res!2798543)) b!6858316))

(assert (= (and b!6858316 (not res!2798536)) b!6858311))

(assert (= (and b!6858311 (not res!2798534)) b!6858313))

(assert (= (and b!6858313 (not res!2798542)) b!6858325))

(assert (= (and b!6858325 (not res!2798540)) b!6858308))

(assert (= (and b!6858308 (not res!2798537)) b!6858307))

(assert (= (and start!662122 (is-ElementMatch!16684 r!7292)) b!6858326))

(assert (= (and start!662122 (is-Concat!25529 r!7292)) b!6858312))

(assert (= (and start!662122 (is-Star!16684 r!7292)) b!6858306))

(assert (= (and start!662122 (is-Union!16684 r!7292)) b!6858322))

(assert (= (and start!662122 condSetEmpty!47142) setIsEmpty!47142))

(assert (= (and start!662122 (not condSetEmpty!47142)) setNonEmpty!47142))

(assert (= setNonEmpty!47142 b!6858321))

(assert (= b!6858317 b!6858323))

(assert (= (and start!662122 (is-Cons!66229 zl!343)) b!6858317))

(assert (= (and start!662122 (is-Cons!66228 s!2326)) b!6858320))

(declare-fun m!7593920 () Bool)

(assert (=> b!6858307 m!7593920))

(declare-fun m!7593922 () Bool)

(assert (=> b!6858307 m!7593922))

(declare-fun m!7593924 () Bool)

(assert (=> b!6858307 m!7593924))

(declare-fun m!7593926 () Bool)

(assert (=> b!6858307 m!7593926))

(declare-fun m!7593928 () Bool)

(assert (=> b!6858307 m!7593928))

(declare-fun m!7593930 () Bool)

(assert (=> b!6858307 m!7593930))

(assert (=> b!6858307 m!7593928))

(declare-fun m!7593932 () Bool)

(assert (=> b!6858307 m!7593932))

(declare-fun m!7593934 () Bool)

(assert (=> b!6858307 m!7593934))

(declare-fun m!7593936 () Bool)

(assert (=> b!6858307 m!7593936))

(declare-fun m!7593938 () Bool)

(assert (=> b!6858319 m!7593938))

(declare-fun m!7593940 () Bool)

(assert (=> b!6858324 m!7593940))

(declare-fun m!7593942 () Bool)

(assert (=> b!6858309 m!7593942))

(assert (=> b!6858314 m!7593942))

(declare-fun m!7593944 () Bool)

(assert (=> b!6858314 m!7593944))

(declare-fun m!7593946 () Bool)

(assert (=> b!6858314 m!7593946))

(declare-fun m!7593948 () Bool)

(assert (=> b!6858316 m!7593948))

(declare-fun m!7593950 () Bool)

(assert (=> b!6858316 m!7593950))

(assert (=> b!6858318 m!7593940))

(declare-fun m!7593952 () Bool)

(assert (=> b!6858315 m!7593952))

(declare-fun m!7593954 () Bool)

(assert (=> b!6858315 m!7593954))

(declare-fun m!7593956 () Bool)

(assert (=> b!6858315 m!7593956))

(declare-fun m!7593958 () Bool)

(assert (=> b!6858311 m!7593958))

(declare-fun m!7593960 () Bool)

(assert (=> b!6858325 m!7593960))

(assert (=> b!6858325 m!7593960))

(declare-fun m!7593962 () Bool)

(assert (=> b!6858325 m!7593962))

(declare-fun m!7593964 () Bool)

(assert (=> start!662122 m!7593964))

(declare-fun m!7593966 () Bool)

(assert (=> b!6858308 m!7593966))

(declare-fun m!7593968 () Bool)

(assert (=> b!6858308 m!7593968))

(declare-fun m!7593970 () Bool)

(assert (=> b!6858308 m!7593970))

(declare-fun m!7593972 () Bool)

(assert (=> b!6858308 m!7593972))

(declare-fun m!7593974 () Bool)

(assert (=> b!6858308 m!7593974))

(declare-fun m!7593976 () Bool)

(assert (=> b!6858317 m!7593976))

(declare-fun m!7593978 () Bool)

(assert (=> b!6858313 m!7593978))

(declare-fun m!7593980 () Bool)

(assert (=> b!6858327 m!7593980))

(declare-fun m!7593982 () Bool)

(assert (=> setNonEmpty!47142 m!7593982))

(push 1)

(assert (not b!6858314))

(assert (not b!6858308))

(assert (not b!6858323))

(assert (not b!6858313))

(assert (not b!6858324))

(assert (not b!6858316))

(assert (not b!6858315))

(assert (not start!662122))

(assert tp_is_empty!42621)

(assert (not b!6858325))

(assert (not b!6858321))

(assert (not b!6858319))

(assert (not b!6858318))

(assert (not b!6858311))

(assert (not b!6858307))

(assert (not setNonEmpty!47142))

(assert (not b!6858317))

(assert (not b!6858306))

(assert (not b!6858320))

(assert (not b!6858309))

(assert (not b!6858322))

(assert (not b!6858327))

(assert (not b!6858312))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6858440 () Bool)

(declare-fun res!2798611 () Bool)

(declare-fun e!4135097 () Bool)

(assert (=> b!6858440 (=> res!2798611 e!4135097)))

(declare-fun e!4135095 () Bool)

(assert (=> b!6858440 (= res!2798611 e!4135095)))

(declare-fun res!2798613 () Bool)

(assert (=> b!6858440 (=> (not res!2798613) (not e!4135095))))

(declare-fun lt!2457093 () Bool)

(assert (=> b!6858440 (= res!2798613 lt!2457093)))

(declare-fun b!6858441 () Bool)

(declare-fun res!2798612 () Bool)

(assert (=> b!6858441 (=> res!2798612 e!4135097)))

(assert (=> b!6858441 (= res!2798612 (not (is-ElementMatch!16684 lt!2457035)))))

(declare-fun e!4135101 () Bool)

(assert (=> b!6858441 (= e!4135101 e!4135097)))

(declare-fun b!6858442 () Bool)

(declare-fun res!2798616 () Bool)

(assert (=> b!6858442 (=> (not res!2798616) (not e!4135095))))

(declare-fun call!624726 () Bool)

(assert (=> b!6858442 (= res!2798616 (not call!624726))))

(declare-fun b!6858443 () Bool)

(declare-fun e!4135098 () Bool)

(assert (=> b!6858443 (= e!4135098 e!4135101)))

(declare-fun c!1276640 () Bool)

(assert (=> b!6858443 (= c!1276640 (is-EmptyLang!16684 lt!2457035))))

(declare-fun bm!624721 () Bool)

(declare-fun isEmpty!38596 (List!66352) Bool)

(assert (=> bm!624721 (= call!624726 (isEmpty!38596 s!2326))))

(declare-fun b!6858444 () Bool)

(assert (=> b!6858444 (= e!4135101 (not lt!2457093))))

(declare-fun b!6858445 () Bool)

(declare-fun res!2798614 () Bool)

(assert (=> b!6858445 (=> (not res!2798614) (not e!4135095))))

(declare-fun tail!12817 (List!66352) List!66352)

(assert (=> b!6858445 (= res!2798614 (isEmpty!38596 (tail!12817 s!2326)))))

(declare-fun b!6858446 () Bool)

(declare-fun e!4135099 () Bool)

(declare-fun derivativeStep!5328 (Regex!16684 C!33638) Regex!16684)

(declare-fun head!13748 (List!66352) C!33638)

(assert (=> b!6858446 (= e!4135099 (matchR!8867 (derivativeStep!5328 lt!2457035 (head!13748 s!2326)) (tail!12817 s!2326)))))

(declare-fun b!6858447 () Bool)

(declare-fun e!4135100 () Bool)

(assert (=> b!6858447 (= e!4135100 (not (= (head!13748 s!2326) (c!1276626 lt!2457035))))))

(declare-fun b!6858448 () Bool)

(declare-fun e!4135096 () Bool)

(assert (=> b!6858448 (= e!4135096 e!4135100)))

(declare-fun res!2798615 () Bool)

(assert (=> b!6858448 (=> res!2798615 e!4135100)))

(assert (=> b!6858448 (= res!2798615 call!624726)))

(declare-fun b!6858449 () Bool)

(assert (=> b!6858449 (= e!4135097 e!4135096)))

(declare-fun res!2798610 () Bool)

(assert (=> b!6858449 (=> (not res!2798610) (not e!4135096))))

(assert (=> b!6858449 (= res!2798610 (not lt!2457093))))

(declare-fun b!6858450 () Bool)

(assert (=> b!6858450 (= e!4135098 (= lt!2457093 call!624726))))

(declare-fun b!6858451 () Bool)

(declare-fun res!2798609 () Bool)

(assert (=> b!6858451 (=> res!2798609 e!4135100)))

(assert (=> b!6858451 (= res!2798609 (not (isEmpty!38596 (tail!12817 s!2326))))))

(declare-fun b!6858452 () Bool)

(declare-fun nullable!6645 (Regex!16684) Bool)

(assert (=> b!6858452 (= e!4135099 (nullable!6645 lt!2457035))))

(declare-fun d!2155132 () Bool)

(assert (=> d!2155132 e!4135098))

(declare-fun c!1276639 () Bool)

(assert (=> d!2155132 (= c!1276639 (is-EmptyExpr!16684 lt!2457035))))

(assert (=> d!2155132 (= lt!2457093 e!4135099)))

(declare-fun c!1276638 () Bool)

(assert (=> d!2155132 (= c!1276638 (isEmpty!38596 s!2326))))

(assert (=> d!2155132 (validRegex!8420 lt!2457035)))

(assert (=> d!2155132 (= (matchR!8867 lt!2457035 s!2326) lt!2457093)))

(declare-fun b!6858453 () Bool)

(assert (=> b!6858453 (= e!4135095 (= (head!13748 s!2326) (c!1276626 lt!2457035)))))

(assert (= (and d!2155132 c!1276638) b!6858452))

(assert (= (and d!2155132 (not c!1276638)) b!6858446))

(assert (= (and d!2155132 c!1276639) b!6858450))

(assert (= (and d!2155132 (not c!1276639)) b!6858443))

(assert (= (and b!6858443 c!1276640) b!6858444))

(assert (= (and b!6858443 (not c!1276640)) b!6858441))

(assert (= (and b!6858441 (not res!2798612)) b!6858440))

(assert (= (and b!6858440 res!2798613) b!6858442))

(assert (= (and b!6858442 res!2798616) b!6858445))

(assert (= (and b!6858445 res!2798614) b!6858453))

(assert (= (and b!6858440 (not res!2798611)) b!6858449))

(assert (= (and b!6858449 res!2798610) b!6858448))

(assert (= (and b!6858448 (not res!2798615)) b!6858451))

(assert (= (and b!6858451 (not res!2798609)) b!6858447))

(assert (= (or b!6858450 b!6858442 b!6858448) bm!624721))

(declare-fun m!7594048 () Bool)

(assert (=> d!2155132 m!7594048))

(assert (=> d!2155132 m!7593958))

(declare-fun m!7594050 () Bool)

(assert (=> b!6858451 m!7594050))

(assert (=> b!6858451 m!7594050))

(declare-fun m!7594052 () Bool)

(assert (=> b!6858451 m!7594052))

(declare-fun m!7594054 () Bool)

(assert (=> b!6858453 m!7594054))

(assert (=> bm!624721 m!7594048))

(assert (=> b!6858447 m!7594054))

(assert (=> b!6858446 m!7594054))

(assert (=> b!6858446 m!7594054))

(declare-fun m!7594056 () Bool)

(assert (=> b!6858446 m!7594056))

(assert (=> b!6858446 m!7594050))

(assert (=> b!6858446 m!7594056))

(assert (=> b!6858446 m!7594050))

(declare-fun m!7594058 () Bool)

(assert (=> b!6858446 m!7594058))

(assert (=> b!6858445 m!7594050))

(assert (=> b!6858445 m!7594050))

(assert (=> b!6858445 m!7594052))

(declare-fun m!7594060 () Bool)

(assert (=> b!6858452 m!7594060))

(assert (=> b!6858313 d!2155132))

(declare-fun d!2155136 () Bool)

(assert (=> d!2155136 (= (isEmpty!38594 (t!380096 zl!343)) (is-Nil!66229 (t!380096 zl!343)))))

(assert (=> b!6858324 d!2155136))

(declare-fun bs!1833072 () Bool)

(declare-fun d!2155138 () Bool)

(assert (= bs!1833072 (and d!2155138 b!6858314)))

(declare-fun lambda!387804 () Int)

(assert (=> bs!1833072 (not (= lambda!387804 lambda!387782))))

(assert (=> d!2155138 true))

(declare-fun order!27681 () Int)

(declare-fun dynLambda!26483 (Int Int) Int)

(assert (=> d!2155138 (< (dynLambda!26483 order!27681 lambda!387782) (dynLambda!26483 order!27681 lambda!387804))))

(declare-fun forall!15867 (List!66351 Int) Bool)

(assert (=> d!2155138 (= (exists!2799 lt!2457034 lambda!387782) (not (forall!15867 lt!2457034 lambda!387804)))))

(declare-fun bs!1833073 () Bool)

(assert (= bs!1833073 d!2155138))

(declare-fun m!7594062 () Bool)

(assert (=> bs!1833073 m!7594062))

(assert (=> b!6858314 d!2155138))

(declare-fun bs!1833074 () Bool)

(declare-fun d!2155140 () Bool)

(assert (= bs!1833074 (and d!2155140 b!6858314)))

(declare-fun lambda!387809 () Int)

(assert (=> bs!1833074 (not (= lambda!387809 lambda!387782))))

(declare-fun bs!1833075 () Bool)

(assert (= bs!1833075 (and d!2155140 d!2155138)))

(assert (=> bs!1833075 (not (= lambda!387809 lambda!387804))))

(declare-fun lambda!387810 () Int)

(assert (=> bs!1833074 (= lambda!387810 lambda!387782)))

(assert (=> bs!1833075 (not (= lambda!387810 lambda!387804))))

(declare-fun bs!1833076 () Bool)

(assert (= bs!1833076 d!2155140))

(assert (=> bs!1833076 (not (= lambda!387810 lambda!387809))))

(assert (=> d!2155140 true))

(assert (=> d!2155140 (= (matchR!8867 r!7292 s!2326) (exists!2799 lt!2457034 lambda!387810))))

(declare-fun lt!2457096 () Unit!160119)

(declare-fun choose!51096 (Regex!16684 List!66351 List!66352) Unit!160119)

(assert (=> d!2155140 (= lt!2457096 (choose!51096 r!7292 lt!2457034 s!2326))))

(assert (=> d!2155140 (forall!15867 lt!2457034 lambda!387809)))

(assert (=> d!2155140 (= (matchRGenUnionSpec!323 r!7292 lt!2457034 s!2326) lt!2457096)))

(assert (=> bs!1833076 m!7593954))

(declare-fun m!7594068 () Bool)

(assert (=> bs!1833076 m!7594068))

(declare-fun m!7594070 () Bool)

(assert (=> bs!1833076 m!7594070))

(declare-fun m!7594072 () Bool)

(assert (=> bs!1833076 m!7594072))

(assert (=> b!6858314 d!2155140))

(declare-fun bs!1833078 () Bool)

(declare-fun d!2155144 () Bool)

(assert (= bs!1833078 (and d!2155144 b!6858314)))

(declare-fun lambda!387813 () Int)

(assert (=> bs!1833078 (not (= lambda!387813 lambda!387782))))

(declare-fun bs!1833079 () Bool)

(assert (= bs!1833079 (and d!2155144 d!2155138)))

(assert (=> bs!1833079 (not (= lambda!387813 lambda!387804))))

(declare-fun bs!1833080 () Bool)

(assert (= bs!1833080 (and d!2155144 d!2155140)))

(assert (=> bs!1833080 (= lambda!387813 lambda!387809)))

(assert (=> bs!1833080 (not (= lambda!387813 lambda!387810))))

(declare-fun lt!2457102 () List!66351)

(assert (=> d!2155144 (forall!15867 lt!2457102 lambda!387813)))

(declare-fun e!4135110 () List!66351)

(assert (=> d!2155144 (= lt!2457102 e!4135110)))

(declare-fun c!1276646 () Bool)

(assert (=> d!2155144 (= c!1276646 (is-Cons!66229 zl!343))))

(assert (=> d!2155144 (= (unfocusZipperList!2101 zl!343) lt!2457102)))

(declare-fun b!6858468 () Bool)

(declare-fun generalisedConcat!2273 (List!66351) Regex!16684)

(assert (=> b!6858468 (= e!4135110 (Cons!66227 (generalisedConcat!2273 (exprs!6568 (h!72677 zl!343))) (unfocusZipperList!2101 (t!380096 zl!343))))))

(declare-fun b!6858469 () Bool)

(assert (=> b!6858469 (= e!4135110 Nil!66227)))

(assert (= (and d!2155144 c!1276646) b!6858468))

(assert (= (and d!2155144 (not c!1276646)) b!6858469))

(declare-fun m!7594078 () Bool)

(assert (=> d!2155144 m!7594078))

(declare-fun m!7594080 () Bool)

(assert (=> b!6858468 m!7594080))

(declare-fun m!7594082 () Bool)

(assert (=> b!6858468 m!7594082))

(assert (=> b!6858314 d!2155144))

(declare-fun b!6858511 () Bool)

(assert (=> b!6858511 true))

(assert (=> b!6858511 true))

(declare-fun bs!1833082 () Bool)

(declare-fun b!6858509 () Bool)

(assert (= bs!1833082 (and b!6858509 b!6858511)))

(declare-fun lambda!387819 () Int)

(declare-fun lambda!387818 () Int)

(assert (=> bs!1833082 (not (= lambda!387819 lambda!387818))))

(assert (=> b!6858509 true))

(assert (=> b!6858509 true))

(declare-fun b!6858502 () Bool)

(declare-fun c!1276655 () Bool)

(assert (=> b!6858502 (= c!1276655 (is-ElementMatch!16684 r!7292))))

(declare-fun e!4135131 () Bool)

(declare-fun e!4135134 () Bool)

(assert (=> b!6858502 (= e!4135131 e!4135134)))

(declare-fun b!6858503 () Bool)

(declare-fun res!2798635 () Bool)

(declare-fun e!4135133 () Bool)

(assert (=> b!6858503 (=> res!2798635 e!4135133)))

(declare-fun call!624731 () Bool)

(assert (=> b!6858503 (= res!2798635 call!624731)))

(declare-fun e!4135129 () Bool)

(assert (=> b!6858503 (= e!4135129 e!4135133)))

(declare-fun bm!624726 () Bool)

(assert (=> bm!624726 (= call!624731 (isEmpty!38596 s!2326))))

(declare-fun b!6858504 () Bool)

(declare-fun e!4135135 () Bool)

(assert (=> b!6858504 (= e!4135135 e!4135131)))

(declare-fun res!2798637 () Bool)

(assert (=> b!6858504 (= res!2798637 (not (is-EmptyLang!16684 r!7292)))))

(assert (=> b!6858504 (=> (not res!2798637) (not e!4135131))))

(declare-fun b!6858505 () Bool)

(declare-fun e!4135132 () Bool)

(declare-fun e!4135130 () Bool)

(assert (=> b!6858505 (= e!4135132 e!4135130)))

(declare-fun res!2798636 () Bool)

(assert (=> b!6858505 (= res!2798636 (matchRSpec!3785 (regOne!33881 r!7292) s!2326))))

(assert (=> b!6858505 (=> res!2798636 e!4135130)))

(declare-fun b!6858506 () Bool)

(assert (=> b!6858506 (= e!4135132 e!4135129)))

(declare-fun c!1276657 () Bool)

(assert (=> b!6858506 (= c!1276657 (is-Star!16684 r!7292))))

(declare-fun b!6858507 () Bool)

(declare-fun c!1276656 () Bool)

(assert (=> b!6858507 (= c!1276656 (is-Union!16684 r!7292))))

(assert (=> b!6858507 (= e!4135134 e!4135132)))

(declare-fun b!6858508 () Bool)

(assert (=> b!6858508 (= e!4135135 call!624731)))

(declare-fun call!624732 () Bool)

(assert (=> b!6858509 (= e!4135129 call!624732)))

(declare-fun b!6858510 () Bool)

(assert (=> b!6858510 (= e!4135134 (= s!2326 (Cons!66228 (c!1276626 r!7292) Nil!66228)))))

(assert (=> b!6858511 (= e!4135133 call!624732)))

(declare-fun b!6858512 () Bool)

(assert (=> b!6858512 (= e!4135130 (matchRSpec!3785 (regTwo!33881 r!7292) s!2326))))

(declare-fun d!2155148 () Bool)

(declare-fun c!1276658 () Bool)

(assert (=> d!2155148 (= c!1276658 (is-EmptyExpr!16684 r!7292))))

(assert (=> d!2155148 (= (matchRSpec!3785 r!7292 s!2326) e!4135135)))

(declare-fun bm!624727 () Bool)

(declare-fun Exists!3744 (Int) Bool)

(assert (=> bm!624727 (= call!624732 (Exists!3744 (ite c!1276657 lambda!387818 lambda!387819)))))

(assert (= (and d!2155148 c!1276658) b!6858508))

(assert (= (and d!2155148 (not c!1276658)) b!6858504))

(assert (= (and b!6858504 res!2798637) b!6858502))

(assert (= (and b!6858502 c!1276655) b!6858510))

(assert (= (and b!6858502 (not c!1276655)) b!6858507))

(assert (= (and b!6858507 c!1276656) b!6858505))

(assert (= (and b!6858507 (not c!1276656)) b!6858506))

(assert (= (and b!6858505 (not res!2798636)) b!6858512))

(assert (= (and b!6858506 c!1276657) b!6858503))

(assert (= (and b!6858506 (not c!1276657)) b!6858509))

(assert (= (and b!6858503 (not res!2798635)) b!6858511))

(assert (= (or b!6858511 b!6858509) bm!624727))

(assert (= (or b!6858508 b!6858503) bm!624726))

(assert (=> bm!624726 m!7594048))

(declare-fun m!7594086 () Bool)

(assert (=> b!6858505 m!7594086))

(declare-fun m!7594088 () Bool)

(assert (=> b!6858512 m!7594088))

(declare-fun m!7594090 () Bool)

(assert (=> bm!624727 m!7594090))

(assert (=> b!6858315 d!2155148))

(declare-fun b!6858521 () Bool)

(declare-fun res!2798640 () Bool)

(declare-fun e!4135140 () Bool)

(assert (=> b!6858521 (=> res!2798640 e!4135140)))

(declare-fun e!4135138 () Bool)

(assert (=> b!6858521 (= res!2798640 e!4135138)))

(declare-fun res!2798642 () Bool)

(assert (=> b!6858521 (=> (not res!2798642) (not e!4135138))))

(declare-fun lt!2457106 () Bool)

(assert (=> b!6858521 (= res!2798642 lt!2457106)))

(declare-fun b!6858522 () Bool)

(declare-fun res!2798641 () Bool)

(assert (=> b!6858522 (=> res!2798641 e!4135140)))

(assert (=> b!6858522 (= res!2798641 (not (is-ElementMatch!16684 r!7292)))))

(declare-fun e!4135144 () Bool)

(assert (=> b!6858522 (= e!4135144 e!4135140)))

(declare-fun b!6858523 () Bool)

(declare-fun res!2798645 () Bool)

(assert (=> b!6858523 (=> (not res!2798645) (not e!4135138))))

(declare-fun call!624733 () Bool)

(assert (=> b!6858523 (= res!2798645 (not call!624733))))

(declare-fun b!6858524 () Bool)

(declare-fun e!4135141 () Bool)

(assert (=> b!6858524 (= e!4135141 e!4135144)))

(declare-fun c!1276663 () Bool)

(assert (=> b!6858524 (= c!1276663 (is-EmptyLang!16684 r!7292))))

(declare-fun bm!624728 () Bool)

(assert (=> bm!624728 (= call!624733 (isEmpty!38596 s!2326))))

(declare-fun b!6858525 () Bool)

(assert (=> b!6858525 (= e!4135144 (not lt!2457106))))

(declare-fun b!6858526 () Bool)

(declare-fun res!2798643 () Bool)

(assert (=> b!6858526 (=> (not res!2798643) (not e!4135138))))

(assert (=> b!6858526 (= res!2798643 (isEmpty!38596 (tail!12817 s!2326)))))

(declare-fun b!6858527 () Bool)

(declare-fun e!4135142 () Bool)

(assert (=> b!6858527 (= e!4135142 (matchR!8867 (derivativeStep!5328 r!7292 (head!13748 s!2326)) (tail!12817 s!2326)))))

(declare-fun b!6858528 () Bool)

(declare-fun e!4135143 () Bool)

(assert (=> b!6858528 (= e!4135143 (not (= (head!13748 s!2326) (c!1276626 r!7292))))))

(declare-fun b!6858529 () Bool)

(declare-fun e!4135139 () Bool)

(assert (=> b!6858529 (= e!4135139 e!4135143)))

(declare-fun res!2798644 () Bool)

(assert (=> b!6858529 (=> res!2798644 e!4135143)))

(assert (=> b!6858529 (= res!2798644 call!624733)))

(declare-fun b!6858530 () Bool)

(assert (=> b!6858530 (= e!4135140 e!4135139)))

(declare-fun res!2798639 () Bool)

(assert (=> b!6858530 (=> (not res!2798639) (not e!4135139))))

(assert (=> b!6858530 (= res!2798639 (not lt!2457106))))

(declare-fun b!6858531 () Bool)

(assert (=> b!6858531 (= e!4135141 (= lt!2457106 call!624733))))

(declare-fun b!6858532 () Bool)

(declare-fun res!2798638 () Bool)

(assert (=> b!6858532 (=> res!2798638 e!4135143)))

(assert (=> b!6858532 (= res!2798638 (not (isEmpty!38596 (tail!12817 s!2326))))))

(declare-fun b!6858533 () Bool)

(assert (=> b!6858533 (= e!4135142 (nullable!6645 r!7292))))

(declare-fun d!2155152 () Bool)

(assert (=> d!2155152 e!4135141))

(declare-fun c!1276662 () Bool)

(assert (=> d!2155152 (= c!1276662 (is-EmptyExpr!16684 r!7292))))

(assert (=> d!2155152 (= lt!2457106 e!4135142)))

(declare-fun c!1276661 () Bool)

(assert (=> d!2155152 (= c!1276661 (isEmpty!38596 s!2326))))

(assert (=> d!2155152 (validRegex!8420 r!7292)))

(assert (=> d!2155152 (= (matchR!8867 r!7292 s!2326) lt!2457106)))

(declare-fun b!6858534 () Bool)

(assert (=> b!6858534 (= e!4135138 (= (head!13748 s!2326) (c!1276626 r!7292)))))

(assert (= (and d!2155152 c!1276661) b!6858533))

(assert (= (and d!2155152 (not c!1276661)) b!6858527))

(assert (= (and d!2155152 c!1276662) b!6858531))

(assert (= (and d!2155152 (not c!1276662)) b!6858524))

(assert (= (and b!6858524 c!1276663) b!6858525))

(assert (= (and b!6858524 (not c!1276663)) b!6858522))

(assert (= (and b!6858522 (not res!2798641)) b!6858521))

(assert (= (and b!6858521 res!2798642) b!6858523))

(assert (= (and b!6858523 res!2798645) b!6858526))

(assert (= (and b!6858526 res!2798643) b!6858534))

(assert (= (and b!6858521 (not res!2798640)) b!6858530))

(assert (= (and b!6858530 res!2798639) b!6858529))

(assert (= (and b!6858529 (not res!2798644)) b!6858532))

(assert (= (and b!6858532 (not res!2798638)) b!6858528))

(assert (= (or b!6858531 b!6858523 b!6858529) bm!624728))

(assert (=> d!2155152 m!7594048))

(assert (=> d!2155152 m!7593964))

(assert (=> b!6858532 m!7594050))

(assert (=> b!6858532 m!7594050))

(assert (=> b!6858532 m!7594052))

(assert (=> b!6858534 m!7594054))

(assert (=> bm!624728 m!7594048))

(assert (=> b!6858528 m!7594054))

(assert (=> b!6858527 m!7594054))

(assert (=> b!6858527 m!7594054))

(declare-fun m!7594092 () Bool)

(assert (=> b!6858527 m!7594092))

(assert (=> b!6858527 m!7594050))

(assert (=> b!6858527 m!7594092))

(assert (=> b!6858527 m!7594050))

(declare-fun m!7594094 () Bool)

(assert (=> b!6858527 m!7594094))

(assert (=> b!6858526 m!7594050))

(assert (=> b!6858526 m!7594050))

(assert (=> b!6858526 m!7594052))

(declare-fun m!7594096 () Bool)

(assert (=> b!6858533 m!7594096))

(assert (=> b!6858315 d!2155152))

(declare-fun d!2155154 () Bool)

(assert (=> d!2155154 (= (matchR!8867 r!7292 s!2326) (matchRSpec!3785 r!7292 s!2326))))

(declare-fun lt!2457109 () Unit!160119)

(declare-fun choose!51097 (Regex!16684 List!66352) Unit!160119)

(assert (=> d!2155154 (= lt!2457109 (choose!51097 r!7292 s!2326))))

(assert (=> d!2155154 (validRegex!8420 r!7292)))

(assert (=> d!2155154 (= (mainMatchTheorem!3785 r!7292 s!2326) lt!2457109)))

(declare-fun bs!1833083 () Bool)

(assert (= bs!1833083 d!2155154))

(assert (=> bs!1833083 m!7593954))

(assert (=> bs!1833083 m!7593952))

(declare-fun m!7594118 () Bool)

(assert (=> bs!1833083 m!7594118))

(assert (=> bs!1833083 m!7593964))

(assert (=> b!6858315 d!2155154))

(declare-fun d!2155160 () Bool)

(declare-fun res!2798660 () Bool)

(declare-fun e!4135167 () Bool)

(assert (=> d!2155160 (=> res!2798660 e!4135167)))

(assert (=> d!2155160 (= res!2798660 (is-ElementMatch!16684 r!7292))))

(assert (=> d!2155160 (= (validRegex!8420 r!7292) e!4135167)))

(declare-fun b!6858559 () Bool)

(declare-fun e!4135166 () Bool)

(declare-fun e!4135162 () Bool)

(assert (=> b!6858559 (= e!4135166 e!4135162)))

(declare-fun res!2798658 () Bool)

(assert (=> b!6858559 (= res!2798658 (not (nullable!6645 (reg!17013 r!7292))))))

(assert (=> b!6858559 (=> (not res!2798658) (not e!4135162))))

(declare-fun b!6858560 () Bool)

(declare-fun e!4135165 () Bool)

(assert (=> b!6858560 (= e!4135166 e!4135165)))

(declare-fun c!1276672 () Bool)

(assert (=> b!6858560 (= c!1276672 (is-Union!16684 r!7292))))

(declare-fun bm!624735 () Bool)

(declare-fun call!624741 () Bool)

(declare-fun c!1276671 () Bool)

(assert (=> bm!624735 (= call!624741 (validRegex!8420 (ite c!1276671 (reg!17013 r!7292) (ite c!1276672 (regOne!33881 r!7292) (regOne!33880 r!7292)))))))

(declare-fun b!6858561 () Bool)

(assert (=> b!6858561 (= e!4135162 call!624741)))

(declare-fun b!6858562 () Bool)

(assert (=> b!6858562 (= e!4135167 e!4135166)))

(assert (=> b!6858562 (= c!1276671 (is-Star!16684 r!7292))))

(declare-fun b!6858563 () Bool)

(declare-fun e!4135163 () Bool)

(declare-fun e!4135164 () Bool)

(assert (=> b!6858563 (= e!4135163 e!4135164)))

(declare-fun res!2798659 () Bool)

(assert (=> b!6858563 (=> (not res!2798659) (not e!4135164))))

(declare-fun call!624740 () Bool)

(assert (=> b!6858563 (= res!2798659 call!624740)))

(declare-fun b!6858564 () Bool)

(declare-fun res!2798657 () Bool)

(assert (=> b!6858564 (=> res!2798657 e!4135163)))

(assert (=> b!6858564 (= res!2798657 (not (is-Concat!25529 r!7292)))))

(assert (=> b!6858564 (= e!4135165 e!4135163)))

(declare-fun b!6858565 () Bool)

(declare-fun e!4135168 () Bool)

(declare-fun call!624742 () Bool)

(assert (=> b!6858565 (= e!4135168 call!624742)))

(declare-fun bm!624736 () Bool)

(assert (=> bm!624736 (= call!624742 (validRegex!8420 (ite c!1276672 (regTwo!33881 r!7292) (regTwo!33880 r!7292))))))

(declare-fun b!6858566 () Bool)

(declare-fun res!2798656 () Bool)

(assert (=> b!6858566 (=> (not res!2798656) (not e!4135168))))

(assert (=> b!6858566 (= res!2798656 call!624740)))

(assert (=> b!6858566 (= e!4135165 e!4135168)))

(declare-fun bm!624737 () Bool)

(assert (=> bm!624737 (= call!624740 call!624741)))

(declare-fun b!6858567 () Bool)

(assert (=> b!6858567 (= e!4135164 call!624742)))

(assert (= (and d!2155160 (not res!2798660)) b!6858562))

(assert (= (and b!6858562 c!1276671) b!6858559))

(assert (= (and b!6858562 (not c!1276671)) b!6858560))

(assert (= (and b!6858559 res!2798658) b!6858561))

(assert (= (and b!6858560 c!1276672) b!6858566))

(assert (= (and b!6858560 (not c!1276672)) b!6858564))

(assert (= (and b!6858566 res!2798656) b!6858565))

(assert (= (and b!6858564 (not res!2798657)) b!6858563))

(assert (= (and b!6858563 res!2798659) b!6858567))

(assert (= (or b!6858565 b!6858567) bm!624736))

(assert (= (or b!6858566 b!6858563) bm!624737))

(assert (= (or b!6858561 bm!624737) bm!624735))

(declare-fun m!7594124 () Bool)

(assert (=> b!6858559 m!7594124))

(declare-fun m!7594126 () Bool)

(assert (=> bm!624735 m!7594126))

(declare-fun m!7594128 () Bool)

(assert (=> bm!624736 m!7594128))

(assert (=> start!662122 d!2155160))

(declare-fun bs!1833084 () Bool)

(declare-fun d!2155164 () Bool)

(assert (= bs!1833084 (and d!2155164 b!6858325)))

(declare-fun lambda!387822 () Int)

(assert (=> bs!1833084 (not (= lambda!387822 lambda!387783))))

(declare-fun bs!1833085 () Bool)

(assert (= bs!1833085 (and d!2155164 b!6858307)))

(assert (=> bs!1833085 (not (= lambda!387822 lambda!387784))))

(assert (=> d!2155164 true))

(declare-fun order!27683 () Int)

(declare-fun dynLambda!26484 (Int Int) Int)

(assert (=> d!2155164 (< (dynLambda!26484 order!27683 lambda!387783) (dynLambda!26484 order!27683 lambda!387822))))

(declare-fun forall!15868 (List!66353 Int) Bool)

(assert (=> d!2155164 (= (exists!2800 zl!343 lambda!387783) (not (forall!15868 zl!343 lambda!387822)))))

(declare-fun bs!1833086 () Bool)

(assert (= bs!1833086 d!2155164))

(declare-fun m!7594130 () Bool)

(assert (=> bs!1833086 m!7594130))

(assert (=> b!6858325 d!2155164))

(declare-fun bs!1833087 () Bool)

(declare-fun d!2155166 () Bool)

(assert (= bs!1833087 (and d!2155166 b!6858325)))

(declare-fun lambda!387827 () Int)

(assert (=> bs!1833087 (= lambda!387827 lambda!387783)))

(declare-fun bs!1833088 () Bool)

(assert (= bs!1833088 (and d!2155166 b!6858307)))

(assert (=> bs!1833088 (not (= lambda!387827 lambda!387784))))

(declare-fun bs!1833089 () Bool)

(assert (= bs!1833089 (and d!2155166 d!2155164)))

(assert (=> bs!1833089 (not (= lambda!387827 lambda!387822))))

(assert (=> d!2155166 true))

(assert (=> d!2155166 (exists!2800 zl!343 lambda!387827)))

(declare-fun lt!2457115 () Unit!160119)

(declare-fun choose!51098 (List!66353 Regex!16684) Unit!160119)

(assert (=> d!2155166 (= lt!2457115 (choose!51098 zl!343 lt!2457035))))

(assert (=> d!2155166 (contains!20342 (unfocusZipperList!2101 zl!343) lt!2457035)))

(assert (=> d!2155166 (= (lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!39 zl!343 lt!2457035) lt!2457115)))

(declare-fun bs!1833091 () Bool)

(assert (= bs!1833091 d!2155166))

(declare-fun m!7594132 () Bool)

(assert (=> bs!1833091 m!7594132))

(declare-fun m!7594134 () Bool)

(assert (=> bs!1833091 m!7594134))

(assert (=> bs!1833091 m!7593946))

(assert (=> bs!1833091 m!7593946))

(declare-fun m!7594136 () Bool)

(assert (=> bs!1833091 m!7594136))

(assert (=> b!6858325 d!2155166))

(declare-fun d!2155168 () Bool)

(declare-fun lt!2457118 () Bool)

(declare-fun content!12997 (List!66351) (Set Regex!16684))

(assert (=> d!2155168 (= lt!2457118 (set.member lt!2457035 (content!12997 lt!2457034)))))

(declare-fun e!4135173 () Bool)

(assert (=> d!2155168 (= lt!2457118 e!4135173)))

(declare-fun res!2798665 () Bool)

(assert (=> d!2155168 (=> (not res!2798665) (not e!4135173))))

(assert (=> d!2155168 (= res!2798665 (is-Cons!66227 lt!2457034))))

(assert (=> d!2155168 (= (contains!20342 lt!2457034 lt!2457035) lt!2457118)))

(declare-fun b!6858574 () Bool)

(declare-fun e!4135174 () Bool)

(assert (=> b!6858574 (= e!4135173 e!4135174)))

(declare-fun res!2798666 () Bool)

(assert (=> b!6858574 (=> res!2798666 e!4135174)))

(assert (=> b!6858574 (= res!2798666 (= (h!72675 lt!2457034) lt!2457035))))

(declare-fun b!6858575 () Bool)

(assert (=> b!6858575 (= e!4135174 (contains!20342 (t!380094 lt!2457034) lt!2457035))))

(assert (= (and d!2155168 res!2798665) b!6858574))

(assert (= (and b!6858574 (not res!2798666)) b!6858575))

(declare-fun m!7594142 () Bool)

(assert (=> d!2155168 m!7594142))

(declare-fun m!7594144 () Bool)

(assert (=> d!2155168 m!7594144))

(declare-fun m!7594146 () Bool)

(assert (=> b!6858575 m!7594146))

(assert (=> b!6858316 d!2155168))

(declare-fun b!6858589 () Bool)

(declare-fun e!4135186 () Regex!16684)

(assert (=> b!6858589 (= e!4135186 (getWitness!964 (t!380094 lt!2457034) lambda!387782))))

(declare-fun b!6858590 () Bool)

(declare-fun e!4135183 () Bool)

(declare-fun lt!2457127 () Regex!16684)

(assert (=> b!6858590 (= e!4135183 (contains!20342 lt!2457034 lt!2457127))))

(declare-fun b!6858591 () Bool)

(declare-fun e!4135185 () Regex!16684)

(assert (=> b!6858591 (= e!4135185 (h!72675 lt!2457034))))

(declare-fun b!6858592 () Bool)

(declare-fun e!4135184 () Bool)

(declare-fun dynLambda!26485 (Int Regex!16684) Bool)

(assert (=> b!6858592 (= e!4135184 (dynLambda!26485 lambda!387782 (h!72675 lt!2457034)))))

(declare-fun b!6858593 () Bool)

(assert (=> b!6858593 (= e!4135185 e!4135186)))

(declare-fun c!1276681 () Bool)

(assert (=> b!6858593 (= c!1276681 (is-Cons!66227 lt!2457034))))

(declare-fun b!6858588 () Bool)

(declare-fun lt!2457126 () Unit!160119)

(declare-fun Unit!160123 () Unit!160119)

(assert (=> b!6858588 (= lt!2457126 Unit!160123)))

(assert (=> b!6858588 false))

(declare-fun head!13749 (List!66351) Regex!16684)

(assert (=> b!6858588 (= e!4135186 (head!13749 lt!2457034))))

(declare-fun d!2155172 () Bool)

(assert (=> d!2155172 e!4135183))

(declare-fun res!2798671 () Bool)

(assert (=> d!2155172 (=> (not res!2798671) (not e!4135183))))

(assert (=> d!2155172 (= res!2798671 (dynLambda!26485 lambda!387782 lt!2457127))))

(assert (=> d!2155172 (= lt!2457127 e!4135185)))

(declare-fun c!1276682 () Bool)

(assert (=> d!2155172 (= c!1276682 e!4135184)))

(declare-fun res!2798672 () Bool)

(assert (=> d!2155172 (=> (not res!2798672) (not e!4135184))))

(assert (=> d!2155172 (= res!2798672 (is-Cons!66227 lt!2457034))))

(assert (=> d!2155172 (exists!2799 lt!2457034 lambda!387782)))

(assert (=> d!2155172 (= (getWitness!964 lt!2457034 lambda!387782) lt!2457127)))

(assert (= (and d!2155172 res!2798672) b!6858592))

(assert (= (and d!2155172 c!1276682) b!6858591))

(assert (= (and d!2155172 (not c!1276682)) b!6858593))

(assert (= (and b!6858593 c!1276681) b!6858589))

(assert (= (and b!6858593 (not c!1276681)) b!6858588))

(assert (= (and d!2155172 res!2798671) b!6858590))

(declare-fun b_lambda!259107 () Bool)

(assert (=> (not b_lambda!259107) (not b!6858592)))

(declare-fun b_lambda!259109 () Bool)

(assert (=> (not b_lambda!259109) (not d!2155172)))

(declare-fun m!7594152 () Bool)

(assert (=> b!6858592 m!7594152))

(declare-fun m!7594154 () Bool)

(assert (=> b!6858588 m!7594154))

(declare-fun m!7594156 () Bool)

(assert (=> b!6858590 m!7594156))

(declare-fun m!7594158 () Bool)

(assert (=> b!6858589 m!7594158))

(declare-fun m!7594160 () Bool)

(assert (=> d!2155172 m!7594160))

(assert (=> d!2155172 m!7593942))

(assert (=> b!6858316 d!2155172))

(declare-fun bs!1833095 () Bool)

(declare-fun d!2155176 () Bool)

(assert (= bs!1833095 (and d!2155176 d!2155140)))

(declare-fun lambda!387831 () Int)

(assert (=> bs!1833095 (= lambda!387831 lambda!387809)))

(assert (=> bs!1833095 (not (= lambda!387831 lambda!387810))))

(declare-fun bs!1833096 () Bool)

(assert (= bs!1833096 (and d!2155176 d!2155138)))

(assert (=> bs!1833096 (not (= lambda!387831 lambda!387804))))

(declare-fun bs!1833097 () Bool)

(assert (= bs!1833097 (and d!2155176 d!2155144)))

(assert (=> bs!1833097 (= lambda!387831 lambda!387813)))

(declare-fun bs!1833099 () Bool)

(assert (= bs!1833099 (and d!2155176 b!6858314)))

(assert (=> bs!1833099 (not (= lambda!387831 lambda!387782))))

(assert (=> d!2155176 (= (inv!84958 (h!72677 zl!343)) (forall!15867 (exprs!6568 (h!72677 zl!343)) lambda!387831))))

(declare-fun bs!1833100 () Bool)

(assert (= bs!1833100 d!2155176))

(declare-fun m!7594166 () Bool)

(assert (=> bs!1833100 m!7594166))

(assert (=> b!6858317 d!2155176))

(declare-fun d!2155180 () Bool)

(declare-fun c!1276685 () Bool)

(assert (=> d!2155180 (= c!1276685 (is-Nil!66229 zl!343))))

(declare-fun e!4135189 () (Set Context!12136))

(assert (=> d!2155180 (= (content!12995 zl!343) e!4135189)))

(declare-fun b!6858598 () Bool)

(assert (=> b!6858598 (= e!4135189 (as set.empty (Set Context!12136)))))

(declare-fun b!6858599 () Bool)

(assert (=> b!6858599 (= e!4135189 (set.union (set.insert (h!72677 zl!343) (as set.empty (Set Context!12136))) (content!12995 (t!380096 zl!343))))))

(assert (= (and d!2155180 c!1276685) b!6858598))

(assert (= (and d!2155180 (not c!1276685)) b!6858599))

(declare-fun m!7594168 () Bool)

(assert (=> b!6858599 m!7594168))

(declare-fun m!7594170 () Bool)

(assert (=> b!6858599 m!7594170))

(assert (=> b!6858307 d!2155180))

(declare-fun d!2155182 () Bool)

(declare-fun lt!2457133 () Bool)

(assert (=> d!2155182 (= lt!2457133 (exists!2800 (toList!10468 z!1189) lambda!387784))))

(declare-fun choose!51099 ((Set Context!12136) Int) Bool)

(assert (=> d!2155182 (= lt!2457133 (choose!51099 z!1189 lambda!387784))))

(assert (=> d!2155182 (= (exists!2798 z!1189 lambda!387784) lt!2457133)))

(declare-fun bs!1833101 () Bool)

(assert (= bs!1833101 d!2155182))

(assert (=> bs!1833101 m!7593980))

(assert (=> bs!1833101 m!7593980))

(declare-fun m!7594172 () Bool)

(assert (=> bs!1833101 m!7594172))

(declare-fun m!7594174 () Bool)

(assert (=> bs!1833101 m!7594174))

(assert (=> b!6858307 d!2155182))

(declare-fun d!2155184 () Bool)

(declare-fun c!1276688 () Bool)

(assert (=> d!2155184 (= c!1276688 (isEmpty!38596 s!2326))))

(declare-fun e!4135192 () Bool)

(assert (=> d!2155184 (= (matchZipper!2650 z!1189 s!2326) e!4135192)))

(declare-fun b!6858606 () Bool)

(declare-fun nullableZipper!2359 ((Set Context!12136)) Bool)

(assert (=> b!6858606 (= e!4135192 (nullableZipper!2359 z!1189))))

(declare-fun b!6858607 () Bool)

(declare-fun derivationStepZipper!2606 ((Set Context!12136) C!33638) (Set Context!12136))

(assert (=> b!6858607 (= e!4135192 (matchZipper!2650 (derivationStepZipper!2606 z!1189 (head!13748 s!2326)) (tail!12817 s!2326)))))

(assert (= (and d!2155184 c!1276688) b!6858606))

(assert (= (and d!2155184 (not c!1276688)) b!6858607))

(assert (=> d!2155184 m!7594048))

(declare-fun m!7594178 () Bool)

(assert (=> b!6858606 m!7594178))

(assert (=> b!6858607 m!7594054))

(assert (=> b!6858607 m!7594054))

(declare-fun m!7594180 () Bool)

(assert (=> b!6858607 m!7594180))

(assert (=> b!6858607 m!7594050))

(assert (=> b!6858607 m!7594180))

(assert (=> b!6858607 m!7594050))

(declare-fun m!7594182 () Bool)

(assert (=> b!6858607 m!7594182))

(assert (=> b!6858307 d!2155184))

(declare-fun d!2155188 () Bool)

(assert (=> d!2155188 (= (matchR!8867 lt!2457035 s!2326) (matchZipper!2650 lt!2457044 s!2326))))

(declare-fun lt!2457138 () Unit!160119)

(declare-fun choose!51100 ((Set Context!12136) List!66353 Regex!16684 List!66352) Unit!160119)

(assert (=> d!2155188 (= lt!2457138 (choose!51100 lt!2457044 lt!2457038 lt!2457035 s!2326))))

(assert (=> d!2155188 (validRegex!8420 lt!2457035)))

(assert (=> d!2155188 (= (theoremZipperRegexEquiv!960 lt!2457044 lt!2457038 lt!2457035 s!2326) lt!2457138)))

(declare-fun bs!1833106 () Bool)

(assert (= bs!1833106 d!2155188))

(assert (=> bs!1833106 m!7593978))

(assert (=> bs!1833106 m!7593934))

(declare-fun m!7594184 () Bool)

(assert (=> bs!1833106 m!7594184))

(assert (=> bs!1833106 m!7593958))

(assert (=> b!6858307 d!2155188))

(declare-fun bs!1833112 () Bool)

(declare-fun d!2155190 () Bool)

(assert (= bs!1833112 (and d!2155190 b!6858325)))

(declare-fun lambda!387840 () Int)

(assert (=> bs!1833112 (not (= lambda!387840 lambda!387783))))

(declare-fun bs!1833113 () Bool)

(assert (= bs!1833113 (and d!2155190 b!6858307)))

(assert (=> bs!1833113 (= lambda!387840 lambda!387784)))

(declare-fun bs!1833114 () Bool)

(assert (= bs!1833114 (and d!2155190 d!2155164)))

(assert (=> bs!1833114 (not (= lambda!387840 lambda!387822))))

(declare-fun bs!1833115 () Bool)

(assert (= bs!1833115 (and d!2155190 d!2155166)))

(assert (=> bs!1833115 (not (= lambda!387840 lambda!387827))))

(assert (=> d!2155190 true))

(assert (=> d!2155190 (matchZipper!2650 (content!12995 zl!343) s!2326)))

(declare-fun lt!2457142 () Unit!160119)

(declare-fun choose!51101 (List!66353 List!66352) Unit!160119)

(assert (=> d!2155190 (= lt!2457142 (choose!51101 zl!343 s!2326))))

(assert (=> d!2155190 (exists!2800 zl!343 lambda!387840)))

(assert (=> d!2155190 (= (lemmaExistsMatchingContextThenMatchingString!21 zl!343 s!2326) lt!2457142)))

(declare-fun bs!1833116 () Bool)

(assert (= bs!1833116 d!2155190))

(assert (=> bs!1833116 m!7593928))

(assert (=> bs!1833116 m!7593928))

(assert (=> bs!1833116 m!7593930))

(declare-fun m!7594192 () Bool)

(assert (=> bs!1833116 m!7594192))

(declare-fun m!7594194 () Bool)

(assert (=> bs!1833116 m!7594194))

(assert (=> b!6858307 d!2155190))

(declare-fun d!2155194 () Bool)

(assert (=> d!2155194 (exists!2798 z!1189 lambda!387784)))

(declare-fun lt!2457145 () Unit!160119)

(declare-fun choose!51102 ((Set Context!12136) Context!12136 Int) Unit!160119)

(assert (=> d!2155194 (= lt!2457145 (choose!51102 z!1189 lt!2457042 lambda!387784))))

(assert (=> d!2155194 (set.member lt!2457042 z!1189)))

(assert (=> d!2155194 (= (lemmaContainsThenExists!74 z!1189 lt!2457042 lambda!387784) lt!2457145)))

(declare-fun bs!1833117 () Bool)

(assert (= bs!1833117 d!2155194))

(assert (=> bs!1833117 m!7593922))

(declare-fun m!7594196 () Bool)

(assert (=> bs!1833117 m!7594196))

(declare-fun m!7594198 () Bool)

(assert (=> bs!1833117 m!7594198))

(assert (=> b!6858307 d!2155194))

(declare-fun d!2155196 () Bool)

(declare-fun c!1276693 () Bool)

(assert (=> d!2155196 (= c!1276693 (isEmpty!38596 s!2326))))

(declare-fun e!4135194 () Bool)

(assert (=> d!2155196 (= (matchZipper!2650 lt!2457044 s!2326) e!4135194)))

(declare-fun b!6858608 () Bool)

(assert (=> b!6858608 (= e!4135194 (nullableZipper!2359 lt!2457044))))

(declare-fun b!6858609 () Bool)

(assert (=> b!6858609 (= e!4135194 (matchZipper!2650 (derivationStepZipper!2606 lt!2457044 (head!13748 s!2326)) (tail!12817 s!2326)))))

(assert (= (and d!2155196 c!1276693) b!6858608))

(assert (= (and d!2155196 (not c!1276693)) b!6858609))

(assert (=> d!2155196 m!7594048))

(declare-fun m!7594200 () Bool)

(assert (=> b!6858608 m!7594200))

(assert (=> b!6858609 m!7594054))

(assert (=> b!6858609 m!7594054))

(declare-fun m!7594202 () Bool)

(assert (=> b!6858609 m!7594202))

(assert (=> b!6858609 m!7594050))

(assert (=> b!6858609 m!7594202))

(assert (=> b!6858609 m!7594050))

(declare-fun m!7594204 () Bool)

(assert (=> b!6858609 m!7594204))

(assert (=> b!6858307 d!2155196))

(declare-fun d!2155198 () Bool)

(declare-fun c!1276694 () Bool)

(assert (=> d!2155198 (= c!1276694 (isEmpty!38596 s!2326))))

(declare-fun e!4135195 () Bool)

(assert (=> d!2155198 (= (matchZipper!2650 (content!12995 zl!343) s!2326) e!4135195)))

(declare-fun b!6858610 () Bool)

(assert (=> b!6858610 (= e!4135195 (nullableZipper!2359 (content!12995 zl!343)))))

(declare-fun b!6858611 () Bool)

(assert (=> b!6858611 (= e!4135195 (matchZipper!2650 (derivationStepZipper!2606 (content!12995 zl!343) (head!13748 s!2326)) (tail!12817 s!2326)))))

(assert (= (and d!2155198 c!1276694) b!6858610))

(assert (= (and d!2155198 (not c!1276694)) b!6858611))

(assert (=> d!2155198 m!7594048))

(assert (=> b!6858610 m!7593928))

(declare-fun m!7594206 () Bool)

(assert (=> b!6858610 m!7594206))

(assert (=> b!6858611 m!7594054))

(assert (=> b!6858611 m!7593928))

(assert (=> b!6858611 m!7594054))

(declare-fun m!7594208 () Bool)

(assert (=> b!6858611 m!7594208))

(assert (=> b!6858611 m!7594050))

(assert (=> b!6858611 m!7594208))

(assert (=> b!6858611 m!7594050))

(declare-fun m!7594210 () Bool)

(assert (=> b!6858611 m!7594210))

(assert (=> b!6858307 d!2155198))

(declare-fun d!2155200 () Bool)

(declare-fun lt!2457148 () Int)

(assert (=> d!2155200 (>= lt!2457148 0)))

(declare-fun e!4135198 () Int)

(assert (=> d!2155200 (= lt!2457148 e!4135198)))

(declare-fun c!1276697 () Bool)

(assert (=> d!2155200 (= c!1276697 (is-Cons!66229 lt!2457038))))

(assert (=> d!2155200 (= (zipperDepthTotal!439 lt!2457038) lt!2457148)))

(declare-fun b!6858616 () Bool)

(assert (=> b!6858616 (= e!4135198 (+ (contextDepthTotal!411 (h!72677 lt!2457038)) (zipperDepthTotal!439 (t!380096 lt!2457038))))))

(declare-fun b!6858617 () Bool)

(assert (=> b!6858617 (= e!4135198 0)))

(assert (= (and d!2155200 c!1276697) b!6858616))

(assert (= (and d!2155200 (not c!1276697)) b!6858617))

(declare-fun m!7594214 () Bool)

(assert (=> b!6858616 m!7594214))

(declare-fun m!7594216 () Bool)

(assert (=> b!6858616 m!7594216))

(assert (=> b!6858308 d!2155200))

(declare-fun d!2155204 () Bool)

(declare-fun lt!2457149 () Int)

(assert (=> d!2155204 (>= lt!2457149 0)))

(declare-fun e!4135199 () Int)

(assert (=> d!2155204 (= lt!2457149 e!4135199)))

(declare-fun c!1276698 () Bool)

(assert (=> d!2155204 (= c!1276698 (is-Cons!66229 zl!343))))

(assert (=> d!2155204 (= (zipperDepthTotal!439 zl!343) lt!2457149)))

(declare-fun b!6858618 () Bool)

(assert (=> b!6858618 (= e!4135199 (+ (contextDepthTotal!411 (h!72677 zl!343)) (zipperDepthTotal!439 (t!380096 zl!343))))))

(declare-fun b!6858619 () Bool)

(assert (=> b!6858619 (= e!4135199 0)))

(assert (= (and d!2155204 c!1276698) b!6858618))

(assert (= (and d!2155204 (not c!1276698)) b!6858619))

(declare-fun m!7594218 () Bool)

(assert (=> b!6858618 m!7594218))

(declare-fun m!7594220 () Bool)

(assert (=> b!6858618 m!7594220))

(assert (=> b!6858308 d!2155204))

(declare-fun d!2155206 () Bool)

(declare-fun lt!2457152 () Int)

(assert (=> d!2155206 (>= lt!2457152 0)))

(declare-fun e!4135204 () Int)

(assert (=> d!2155206 (= lt!2457152 e!4135204)))

(declare-fun c!1276702 () Bool)

(assert (=> d!2155206 (= c!1276702 (is-Cons!66227 (exprs!6568 lt!2457042)))))

(assert (=> d!2155206 (= (contextDepthTotal!411 lt!2457042) lt!2457152)))

(declare-fun b!6858628 () Bool)

(declare-fun regexDepthTotal!256 (Regex!16684) Int)

(assert (=> b!6858628 (= e!4135204 (+ (regexDepthTotal!256 (h!72675 (exprs!6568 lt!2457042))) (contextDepthTotal!411 (Context!12137 (t!380094 (exprs!6568 lt!2457042))))))))

(declare-fun b!6858629 () Bool)

(assert (=> b!6858629 (= e!4135204 1)))

(assert (= (and d!2155206 c!1276702) b!6858628))

(assert (= (and d!2155206 (not c!1276702)) b!6858629))

(declare-fun m!7594222 () Bool)

(assert (=> b!6858628 m!7594222))

(declare-fun m!7594224 () Bool)

(assert (=> b!6858628 m!7594224))

(assert (=> b!6858308 d!2155206))

(declare-fun b!6858656 () Bool)

(declare-fun e!4135225 () Bool)

(declare-fun lt!2457157 () Context!12136)

(declare-fun contains!20344 (List!66353 Context!12136) Bool)

(assert (=> b!6858656 (= e!4135225 (contains!20344 zl!343 lt!2457157))))

(declare-fun b!6858657 () Bool)

(declare-fun e!4135227 () Context!12136)

(declare-fun e!4135226 () Context!12136)

(assert (=> b!6858657 (= e!4135227 e!4135226)))

(declare-fun c!1276711 () Bool)

(assert (=> b!6858657 (= c!1276711 (is-Cons!66229 zl!343))))

(declare-fun b!6858658 () Bool)

(assert (=> b!6858658 (= e!4135227 (h!72677 zl!343))))

(declare-fun b!6858659 () Bool)

(assert (=> b!6858659 (= e!4135226 (getWitness!963 (t!380096 zl!343) lambda!387783))))

(declare-fun d!2155208 () Bool)

(assert (=> d!2155208 e!4135225))

(declare-fun res!2798688 () Bool)

(assert (=> d!2155208 (=> (not res!2798688) (not e!4135225))))

(declare-fun dynLambda!26486 (Int Context!12136) Bool)

(assert (=> d!2155208 (= res!2798688 (dynLambda!26486 lambda!387783 lt!2457157))))

(assert (=> d!2155208 (= lt!2457157 e!4135227)))

(declare-fun c!1276712 () Bool)

(declare-fun e!4135228 () Bool)

(assert (=> d!2155208 (= c!1276712 e!4135228)))

(declare-fun res!2798687 () Bool)

(assert (=> d!2155208 (=> (not res!2798687) (not e!4135228))))

(assert (=> d!2155208 (= res!2798687 (is-Cons!66229 zl!343))))

(assert (=> d!2155208 (exists!2800 zl!343 lambda!387783)))

(assert (=> d!2155208 (= (getWitness!963 zl!343 lambda!387783) lt!2457157)))

(declare-fun b!6858660 () Bool)

(declare-fun lt!2457158 () Unit!160119)

(declare-fun Unit!160124 () Unit!160119)

(assert (=> b!6858660 (= lt!2457158 Unit!160124)))

(assert (=> b!6858660 false))

(declare-fun head!13751 (List!66353) Context!12136)

(assert (=> b!6858660 (= e!4135226 (head!13751 zl!343))))

(declare-fun b!6858661 () Bool)

(assert (=> b!6858661 (= e!4135228 (dynLambda!26486 lambda!387783 (h!72677 zl!343)))))

(assert (= (and d!2155208 res!2798687) b!6858661))

(assert (= (and d!2155208 c!1276712) b!6858658))

(assert (= (and d!2155208 (not c!1276712)) b!6858657))

(assert (= (and b!6858657 c!1276711) b!6858659))

(assert (= (and b!6858657 (not c!1276711)) b!6858660))

(assert (= (and d!2155208 res!2798688) b!6858656))

(declare-fun b_lambda!259111 () Bool)

(assert (=> (not b_lambda!259111) (not d!2155208)))

(declare-fun b_lambda!259113 () Bool)

(assert (=> (not b_lambda!259113) (not b!6858661)))

(declare-fun m!7594226 () Bool)

(assert (=> b!6858656 m!7594226))

(declare-fun m!7594228 () Bool)

(assert (=> b!6858659 m!7594228))

(declare-fun m!7594230 () Bool)

(assert (=> d!2155208 m!7594230))

(assert (=> d!2155208 m!7593960))

(declare-fun m!7594232 () Bool)

(assert (=> b!6858660 m!7594232))

(declare-fun m!7594234 () Bool)

(assert (=> b!6858661 m!7594234))

(assert (=> b!6858308 d!2155208))

(declare-fun d!2155210 () Bool)

(assert (=> d!2155210 (< (contextDepthTotal!411 lt!2457042) (zipperDepthTotal!439 zl!343))))

(declare-fun lt!2457161 () Unit!160119)

(declare-fun choose!51105 (List!66353 Context!12136) Unit!160119)

(assert (=> d!2155210 (= lt!2457161 (choose!51105 zl!343 lt!2457042))))

(assert (=> d!2155210 (contains!20344 zl!343 lt!2457042)))

(assert (=> d!2155210 (= (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!43 zl!343 lt!2457042) lt!2457161)))

(declare-fun bs!1833120 () Bool)

(assert (= bs!1833120 d!2155210))

(assert (=> bs!1833120 m!7593970))

(assert (=> bs!1833120 m!7593966))

(declare-fun m!7594236 () Bool)

(assert (=> bs!1833120 m!7594236))

(declare-fun m!7594238 () Bool)

(assert (=> bs!1833120 m!7594238))

(assert (=> b!6858308 d!2155210))

(declare-fun d!2155212 () Bool)

(declare-fun e!4135238 () Bool)

(assert (=> d!2155212 e!4135238))

(declare-fun res!2798696 () Bool)

(assert (=> d!2155212 (=> (not res!2798696) (not e!4135238))))

(declare-fun lt!2457164 () List!66353)

(declare-fun noDuplicate!2448 (List!66353) Bool)

(assert (=> d!2155212 (= res!2798696 (noDuplicate!2448 lt!2457164))))

(declare-fun choose!51106 ((Set Context!12136)) List!66353)

(assert (=> d!2155212 (= lt!2457164 (choose!51106 z!1189))))

(assert (=> d!2155212 (= (toList!10468 z!1189) lt!2457164)))

(declare-fun b!6858673 () Bool)

(assert (=> b!6858673 (= e!4135238 (= (content!12995 lt!2457164) z!1189))))

(assert (= (and d!2155212 res!2798696) b!6858673))

(declare-fun m!7594240 () Bool)

(assert (=> d!2155212 m!7594240))

(declare-fun m!7594242 () Bool)

(assert (=> d!2155212 m!7594242))

(declare-fun m!7594244 () Bool)

(assert (=> b!6858673 m!7594244))

(assert (=> b!6858327 d!2155212))

(assert (=> b!6858318 d!2155136))

(declare-fun d!2155214 () Bool)

(declare-fun lt!2457167 () Regex!16684)

(assert (=> d!2155214 (validRegex!8420 lt!2457167)))

(declare-fun generalisedUnion!2520 (List!66351) Regex!16684)

(assert (=> d!2155214 (= lt!2457167 (generalisedUnion!2520 (unfocusZipperList!2101 zl!343)))))

(assert (=> d!2155214 (= (unfocusZipper!2426 zl!343) lt!2457167)))

(declare-fun bs!1833124 () Bool)

(assert (= bs!1833124 d!2155214))

(declare-fun m!7594254 () Bool)

(assert (=> bs!1833124 m!7594254))

(assert (=> bs!1833124 m!7593946))

(assert (=> bs!1833124 m!7593946))

(declare-fun m!7594256 () Bool)

(assert (=> bs!1833124 m!7594256))

(assert (=> b!6858319 d!2155214))

(assert (=> b!6858309 d!2155138))

(declare-fun d!2155220 () Bool)

(declare-fun res!2798701 () Bool)

(declare-fun e!4135244 () Bool)

(assert (=> d!2155220 (=> res!2798701 e!4135244)))

(assert (=> d!2155220 (= res!2798701 (is-ElementMatch!16684 lt!2457035))))

(assert (=> d!2155220 (= (validRegex!8420 lt!2457035) e!4135244)))

(declare-fun b!6858674 () Bool)

(declare-fun e!4135243 () Bool)

(declare-fun e!4135239 () Bool)

(assert (=> b!6858674 (= e!4135243 e!4135239)))

(declare-fun res!2798699 () Bool)

(assert (=> b!6858674 (= res!2798699 (not (nullable!6645 (reg!17013 lt!2457035))))))

(assert (=> b!6858674 (=> (not res!2798699) (not e!4135239))))

(declare-fun b!6858675 () Bool)

(declare-fun e!4135242 () Bool)

(assert (=> b!6858675 (= e!4135243 e!4135242)))

(declare-fun c!1276717 () Bool)

(assert (=> b!6858675 (= c!1276717 (is-Union!16684 lt!2457035))))

(declare-fun bm!624747 () Bool)

(declare-fun c!1276716 () Bool)

(declare-fun call!624753 () Bool)

(assert (=> bm!624747 (= call!624753 (validRegex!8420 (ite c!1276716 (reg!17013 lt!2457035) (ite c!1276717 (regOne!33881 lt!2457035) (regOne!33880 lt!2457035)))))))

(declare-fun b!6858676 () Bool)

(assert (=> b!6858676 (= e!4135239 call!624753)))

(declare-fun b!6858677 () Bool)

(assert (=> b!6858677 (= e!4135244 e!4135243)))

(assert (=> b!6858677 (= c!1276716 (is-Star!16684 lt!2457035))))

(declare-fun b!6858678 () Bool)

(declare-fun e!4135240 () Bool)

(declare-fun e!4135241 () Bool)

(assert (=> b!6858678 (= e!4135240 e!4135241)))

(declare-fun res!2798700 () Bool)

(assert (=> b!6858678 (=> (not res!2798700) (not e!4135241))))

(declare-fun call!624752 () Bool)

(assert (=> b!6858678 (= res!2798700 call!624752)))

(declare-fun b!6858679 () Bool)

(declare-fun res!2798698 () Bool)

(assert (=> b!6858679 (=> res!2798698 e!4135240)))

(assert (=> b!6858679 (= res!2798698 (not (is-Concat!25529 lt!2457035)))))

(assert (=> b!6858679 (= e!4135242 e!4135240)))

(declare-fun b!6858680 () Bool)

(declare-fun e!4135245 () Bool)

(declare-fun call!624754 () Bool)

(assert (=> b!6858680 (= e!4135245 call!624754)))

(declare-fun bm!624748 () Bool)

(assert (=> bm!624748 (= call!624754 (validRegex!8420 (ite c!1276717 (regTwo!33881 lt!2457035) (regTwo!33880 lt!2457035))))))

(declare-fun b!6858681 () Bool)

(declare-fun res!2798697 () Bool)

(assert (=> b!6858681 (=> (not res!2798697) (not e!4135245))))

(assert (=> b!6858681 (= res!2798697 call!624752)))

(assert (=> b!6858681 (= e!4135242 e!4135245)))

(declare-fun bm!624749 () Bool)

(assert (=> bm!624749 (= call!624752 call!624753)))

(declare-fun b!6858682 () Bool)

(assert (=> b!6858682 (= e!4135241 call!624754)))

(assert (= (and d!2155220 (not res!2798701)) b!6858677))

(assert (= (and b!6858677 c!1276716) b!6858674))

(assert (= (and b!6858677 (not c!1276716)) b!6858675))

(assert (= (and b!6858674 res!2798699) b!6858676))

(assert (= (and b!6858675 c!1276717) b!6858681))

(assert (= (and b!6858675 (not c!1276717)) b!6858679))

(assert (= (and b!6858681 res!2798697) b!6858680))

(assert (= (and b!6858679 (not res!2798698)) b!6858678))

(assert (= (and b!6858678 res!2798700) b!6858682))

(assert (= (or b!6858680 b!6858682) bm!624748))

(assert (= (or b!6858681 b!6858678) bm!624749))

(assert (= (or b!6858676 bm!624749) bm!624747))

(declare-fun m!7594258 () Bool)

(assert (=> b!6858674 m!7594258))

(declare-fun m!7594260 () Bool)

(assert (=> bm!624747 m!7594260))

(declare-fun m!7594262 () Bool)

(assert (=> bm!624748 m!7594262))

(assert (=> b!6858311 d!2155220))

(declare-fun bs!1833125 () Bool)

(declare-fun d!2155222 () Bool)

(assert (= bs!1833125 (and d!2155222 d!2155140)))

(declare-fun lambda!387845 () Int)

(assert (=> bs!1833125 (= lambda!387845 lambda!387809)))

(assert (=> bs!1833125 (not (= lambda!387845 lambda!387810))))

(declare-fun bs!1833126 () Bool)

(assert (= bs!1833126 (and d!2155222 d!2155138)))

(assert (=> bs!1833126 (not (= lambda!387845 lambda!387804))))

(declare-fun bs!1833127 () Bool)

(assert (= bs!1833127 (and d!2155222 d!2155176)))

(assert (=> bs!1833127 (= lambda!387845 lambda!387831)))

(declare-fun bs!1833128 () Bool)

(assert (= bs!1833128 (and d!2155222 d!2155144)))

(assert (=> bs!1833128 (= lambda!387845 lambda!387813)))

(declare-fun bs!1833129 () Bool)

(assert (= bs!1833129 (and d!2155222 b!6858314)))

(assert (=> bs!1833129 (not (= lambda!387845 lambda!387782))))

(assert (=> d!2155222 (= (inv!84958 setElem!47142) (forall!15867 (exprs!6568 setElem!47142) lambda!387845))))

(declare-fun bs!1833130 () Bool)

(assert (= bs!1833130 d!2155222))

(declare-fun m!7594264 () Bool)

(assert (=> bs!1833130 m!7594264))

(assert (=> setNonEmpty!47142 d!2155222))

(declare-fun b!6858694 () Bool)

(declare-fun e!4135248 () Bool)

(declare-fun tp!1880767 () Bool)

(declare-fun tp!1880769 () Bool)

(assert (=> b!6858694 (= e!4135248 (and tp!1880767 tp!1880769))))

(declare-fun b!6858695 () Bool)

(declare-fun tp!1880768 () Bool)

(assert (=> b!6858695 (= e!4135248 tp!1880768)))

(declare-fun b!6858693 () Bool)

(assert (=> b!6858693 (= e!4135248 tp_is_empty!42621)))

(declare-fun b!6858696 () Bool)

(declare-fun tp!1880770 () Bool)

(declare-fun tp!1880766 () Bool)

(assert (=> b!6858696 (= e!4135248 (and tp!1880770 tp!1880766))))

(assert (=> b!6858322 (= tp!1880717 e!4135248)))

(assert (= (and b!6858322 (is-ElementMatch!16684 (regOne!33881 r!7292))) b!6858693))

(assert (= (and b!6858322 (is-Concat!25529 (regOne!33881 r!7292))) b!6858694))

(assert (= (and b!6858322 (is-Star!16684 (regOne!33881 r!7292))) b!6858695))

(assert (= (and b!6858322 (is-Union!16684 (regOne!33881 r!7292))) b!6858696))

(declare-fun b!6858698 () Bool)

(declare-fun e!4135249 () Bool)

(declare-fun tp!1880772 () Bool)

(declare-fun tp!1880774 () Bool)

(assert (=> b!6858698 (= e!4135249 (and tp!1880772 tp!1880774))))

(declare-fun b!6858699 () Bool)

(declare-fun tp!1880773 () Bool)

(assert (=> b!6858699 (= e!4135249 tp!1880773)))

(declare-fun b!6858697 () Bool)

(assert (=> b!6858697 (= e!4135249 tp_is_empty!42621)))

(declare-fun b!6858700 () Bool)

(declare-fun tp!1880775 () Bool)

(declare-fun tp!1880771 () Bool)

(assert (=> b!6858700 (= e!4135249 (and tp!1880775 tp!1880771))))

(assert (=> b!6858322 (= tp!1880725 e!4135249)))

(assert (= (and b!6858322 (is-ElementMatch!16684 (regTwo!33881 r!7292))) b!6858697))

(assert (= (and b!6858322 (is-Concat!25529 (regTwo!33881 r!7292))) b!6858698))

(assert (= (and b!6858322 (is-Star!16684 (regTwo!33881 r!7292))) b!6858699))

(assert (= (and b!6858322 (is-Union!16684 (regTwo!33881 r!7292))) b!6858700))

(declare-fun b!6858702 () Bool)

(declare-fun e!4135250 () Bool)

(declare-fun tp!1880777 () Bool)

(declare-fun tp!1880779 () Bool)

(assert (=> b!6858702 (= e!4135250 (and tp!1880777 tp!1880779))))

(declare-fun b!6858703 () Bool)

(declare-fun tp!1880778 () Bool)

(assert (=> b!6858703 (= e!4135250 tp!1880778)))

(declare-fun b!6858701 () Bool)

(assert (=> b!6858701 (= e!4135250 tp_is_empty!42621)))

(declare-fun b!6858704 () Bool)

(declare-fun tp!1880780 () Bool)

(declare-fun tp!1880776 () Bool)

(assert (=> b!6858704 (= e!4135250 (and tp!1880780 tp!1880776))))

(assert (=> b!6858312 (= tp!1880720 e!4135250)))

(assert (= (and b!6858312 (is-ElementMatch!16684 (regOne!33880 r!7292))) b!6858701))

(assert (= (and b!6858312 (is-Concat!25529 (regOne!33880 r!7292))) b!6858702))

(assert (= (and b!6858312 (is-Star!16684 (regOne!33880 r!7292))) b!6858703))

(assert (= (and b!6858312 (is-Union!16684 (regOne!33880 r!7292))) b!6858704))

(declare-fun b!6858706 () Bool)

(declare-fun e!4135251 () Bool)

(declare-fun tp!1880782 () Bool)

(declare-fun tp!1880784 () Bool)

(assert (=> b!6858706 (= e!4135251 (and tp!1880782 tp!1880784))))

(declare-fun b!6858707 () Bool)

(declare-fun tp!1880783 () Bool)

(assert (=> b!6858707 (= e!4135251 tp!1880783)))

(declare-fun b!6858705 () Bool)

(assert (=> b!6858705 (= e!4135251 tp_is_empty!42621)))

(declare-fun b!6858708 () Bool)

(declare-fun tp!1880785 () Bool)

(declare-fun tp!1880781 () Bool)

(assert (=> b!6858708 (= e!4135251 (and tp!1880785 tp!1880781))))

(assert (=> b!6858312 (= tp!1880716 e!4135251)))

(assert (= (and b!6858312 (is-ElementMatch!16684 (regTwo!33880 r!7292))) b!6858705))

(assert (= (and b!6858312 (is-Concat!25529 (regTwo!33880 r!7292))) b!6858706))

(assert (= (and b!6858312 (is-Star!16684 (regTwo!33880 r!7292))) b!6858707))

(assert (= (and b!6858312 (is-Union!16684 (regTwo!33880 r!7292))) b!6858708))

(declare-fun b!6858715 () Bool)

(declare-fun e!4135254 () Bool)

(declare-fun tp!1880790 () Bool)

(declare-fun tp!1880791 () Bool)

(assert (=> b!6858715 (= e!4135254 (and tp!1880790 tp!1880791))))

(assert (=> b!6858323 (= tp!1880722 e!4135254)))

(assert (= (and b!6858323 (is-Cons!66227 (exprs!6568 (h!72677 zl!343)))) b!6858715))

(declare-fun b!6858720 () Bool)

(declare-fun e!4135257 () Bool)

(declare-fun tp!1880794 () Bool)

(assert (=> b!6858720 (= e!4135257 (and tp_is_empty!42621 tp!1880794))))

(assert (=> b!6858320 (= tp!1880721 e!4135257)))

(assert (= (and b!6858320 (is-Cons!66228 (t!380095 s!2326))) b!6858720))

(declare-fun b!6858722 () Bool)

(declare-fun e!4135258 () Bool)

(declare-fun tp!1880796 () Bool)

(declare-fun tp!1880798 () Bool)

(assert (=> b!6858722 (= e!4135258 (and tp!1880796 tp!1880798))))

(declare-fun b!6858723 () Bool)

(declare-fun tp!1880797 () Bool)

(assert (=> b!6858723 (= e!4135258 tp!1880797)))

(declare-fun b!6858721 () Bool)

(assert (=> b!6858721 (= e!4135258 tp_is_empty!42621)))

(declare-fun b!6858724 () Bool)

(declare-fun tp!1880799 () Bool)

(declare-fun tp!1880795 () Bool)

(assert (=> b!6858724 (= e!4135258 (and tp!1880799 tp!1880795))))

(assert (=> b!6858306 (= tp!1880718 e!4135258)))

(assert (= (and b!6858306 (is-ElementMatch!16684 (reg!17013 r!7292))) b!6858721))

(assert (= (and b!6858306 (is-Concat!25529 (reg!17013 r!7292))) b!6858722))

(assert (= (and b!6858306 (is-Star!16684 (reg!17013 r!7292))) b!6858723))

(assert (= (and b!6858306 (is-Union!16684 (reg!17013 r!7292))) b!6858724))

(declare-fun condSetEmpty!47148 () Bool)

(assert (=> setNonEmpty!47142 (= condSetEmpty!47148 (= setRest!47142 (as set.empty (Set Context!12136))))))

(declare-fun setRes!47148 () Bool)

(assert (=> setNonEmpty!47142 (= tp!1880723 setRes!47148)))

(declare-fun setIsEmpty!47148 () Bool)

(assert (=> setIsEmpty!47148 setRes!47148))

(declare-fun e!4135261 () Bool)

(declare-fun setNonEmpty!47148 () Bool)

(declare-fun tp!1880804 () Bool)

(declare-fun setElem!47148 () Context!12136)

(assert (=> setNonEmpty!47148 (= setRes!47148 (and tp!1880804 (inv!84958 setElem!47148) e!4135261))))

(declare-fun setRest!47148 () (Set Context!12136))

(assert (=> setNonEmpty!47148 (= setRest!47142 (set.union (set.insert setElem!47148 (as set.empty (Set Context!12136))) setRest!47148))))

(declare-fun b!6858729 () Bool)

(declare-fun tp!1880805 () Bool)

(assert (=> b!6858729 (= e!4135261 tp!1880805)))

(assert (= (and setNonEmpty!47142 condSetEmpty!47148) setIsEmpty!47148))

(assert (= (and setNonEmpty!47142 (not condSetEmpty!47148)) setNonEmpty!47148))

(assert (= setNonEmpty!47148 b!6858729))

(declare-fun m!7594268 () Bool)

(assert (=> setNonEmpty!47148 m!7594268))

(declare-fun b!6858737 () Bool)

(declare-fun e!4135267 () Bool)

(declare-fun tp!1880810 () Bool)

(assert (=> b!6858737 (= e!4135267 tp!1880810)))

(declare-fun e!4135266 () Bool)

(declare-fun b!6858736 () Bool)

(declare-fun tp!1880811 () Bool)

(assert (=> b!6858736 (= e!4135266 (and (inv!84958 (h!72677 (t!380096 zl!343))) e!4135267 tp!1880811))))

(assert (=> b!6858317 (= tp!1880719 e!4135266)))

(assert (= b!6858736 b!6858737))

(assert (= (and b!6858317 (is-Cons!66229 (t!380096 zl!343))) b!6858736))

(declare-fun m!7594270 () Bool)

(assert (=> b!6858736 m!7594270))

(declare-fun b!6858738 () Bool)

(declare-fun e!4135268 () Bool)

(declare-fun tp!1880812 () Bool)

(declare-fun tp!1880813 () Bool)

(assert (=> b!6858738 (= e!4135268 (and tp!1880812 tp!1880813))))

(assert (=> b!6858321 (= tp!1880724 e!4135268)))

(assert (= (and b!6858321 (is-Cons!66227 (exprs!6568 setElem!47142))) b!6858738))

(declare-fun b_lambda!259115 () Bool)

(assert (= b_lambda!259113 (or b!6858325 b_lambda!259115)))

(declare-fun bs!1833135 () Bool)

(declare-fun d!2155226 () Bool)

(assert (= bs!1833135 (and d!2155226 b!6858325)))

(assert (=> bs!1833135 (= (dynLambda!26486 lambda!387783 (h!72677 zl!343)) (= (generalisedConcat!2273 (exprs!6568 (h!72677 zl!343))) lt!2457035))))

(assert (=> bs!1833135 m!7594080))

(assert (=> b!6858661 d!2155226))

(declare-fun b_lambda!259117 () Bool)

(assert (= b_lambda!259109 (or b!6858314 b_lambda!259117)))

(declare-fun bs!1833136 () Bool)

(declare-fun d!2155228 () Bool)

(assert (= bs!1833136 (and d!2155228 b!6858314)))

(declare-fun res!2798702 () Bool)

(declare-fun e!4135269 () Bool)

(assert (=> bs!1833136 (=> (not res!2798702) (not e!4135269))))

(assert (=> bs!1833136 (= res!2798702 (validRegex!8420 lt!2457127))))

(assert (=> bs!1833136 (= (dynLambda!26485 lambda!387782 lt!2457127) e!4135269)))

(declare-fun b!6858739 () Bool)

(assert (=> b!6858739 (= e!4135269 (matchR!8867 lt!2457127 s!2326))))

(assert (= (and bs!1833136 res!2798702) b!6858739))

(declare-fun m!7594272 () Bool)

(assert (=> bs!1833136 m!7594272))

(declare-fun m!7594274 () Bool)

(assert (=> b!6858739 m!7594274))

(assert (=> d!2155172 d!2155228))

(declare-fun b_lambda!259119 () Bool)

(assert (= b_lambda!259111 (or b!6858325 b_lambda!259119)))

(declare-fun bs!1833137 () Bool)

(declare-fun d!2155230 () Bool)

(assert (= bs!1833137 (and d!2155230 b!6858325)))

(assert (=> bs!1833137 (= (dynLambda!26486 lambda!387783 lt!2457157) (= (generalisedConcat!2273 (exprs!6568 lt!2457157)) lt!2457035))))

(declare-fun m!7594276 () Bool)

(assert (=> bs!1833137 m!7594276))

(assert (=> d!2155208 d!2155230))

(declare-fun b_lambda!259121 () Bool)

(assert (= b_lambda!259107 (or b!6858314 b_lambda!259121)))

(declare-fun bs!1833138 () Bool)

(declare-fun d!2155232 () Bool)

(assert (= bs!1833138 (and d!2155232 b!6858314)))

(declare-fun res!2798703 () Bool)

(declare-fun e!4135270 () Bool)

(assert (=> bs!1833138 (=> (not res!2798703) (not e!4135270))))

(assert (=> bs!1833138 (= res!2798703 (validRegex!8420 (h!72675 lt!2457034)))))

(assert (=> bs!1833138 (= (dynLambda!26485 lambda!387782 (h!72675 lt!2457034)) e!4135270)))

(declare-fun b!6858740 () Bool)

(assert (=> b!6858740 (= e!4135270 (matchR!8867 (h!72675 lt!2457034) s!2326))))

(assert (= (and bs!1833138 res!2798703) b!6858740))

(declare-fun m!7594278 () Bool)

(assert (=> bs!1833138 m!7594278))

(declare-fun m!7594280 () Bool)

(assert (=> b!6858740 m!7594280))

(assert (=> b!6858592 d!2155232))

(push 1)

(assert (not b!6858723))

(assert (not b!6858468))

(assert (not d!2155166))

(assert (not d!2155214))

(assert (not bm!624748))

(assert (not b!6858695))

(assert (not d!2155212))

(assert (not d!2155140))

(assert (not b!6858628))

(assert (not b!6858512))

(assert (not b!6858533))

(assert (not d!2155190))

(assert (not d!2155182))

(assert (not d!2155138))

(assert (not b!6858453))

(assert (not bs!1833138))

(assert (not b!6858611))

(assert (not d!2155168))

(assert (not b!6858607))

(assert (not b!6858616))

(assert (not bm!624726))

(assert (not b!6858656))

(assert (not b_lambda!259121))

(assert (not b!6858715))

(assert (not b!6858446))

(assert (not d!2155188))

(assert (not b_lambda!259115))

(assert (not bs!1833137))

(assert (not b!6858739))

(assert (not b!6858706))

(assert (not b!6858526))

(assert (not b!6858606))

(assert (not d!2155176))

(assert (not b!6858698))

(assert (not b!6858447))

(assert (not b!6858707))

(assert (not bm!624735))

(assert (not d!2155164))

(assert (not b!6858708))

(assert (not bm!624721))

(assert (not b!6858609))

(assert (not b!6858608))

(assert (not b!6858618))

(assert (not bm!624736))

(assert (not b!6858729))

(assert (not bs!1833136))

(assert (not bm!624747))

(assert (not d!2155172))

(assert (not b!6858445))

(assert (not b!6858559))

(assert (not b!6858699))

(assert (not d!2155210))

(assert (not b_lambda!259119))

(assert (not b!6858599))

(assert (not b!6858694))

(assert (not b!6858722))

(assert (not b!6858527))

(assert (not b!6858534))

(assert (not b!6858740))

(assert (not b!6858674))

(assert (not b!6858703))

(assert (not b!6858738))

(assert (not d!2155132))

(assert (not b!6858720))

(assert (not b!6858452))

(assert (not d!2155196))

(assert (not b_lambda!259117))

(assert (not d!2155198))

(assert (not b!6858590))

(assert (not bs!1833135))

(assert (not b!6858528))

(assert (not d!2155144))

(assert (not b!6858505))

(assert (not b!6858610))

(assert (not d!2155184))

(assert (not b!6858724))

(assert tp_is_empty!42621)

(assert (not setNonEmpty!47148))

(assert (not b!6858532))

(assert (not d!2155208))

(assert (not b!6858660))

(assert (not b!6858673))

(assert (not d!2155154))

(assert (not b!6858696))

(assert (not d!2155152))

(assert (not b!6858737))

(assert (not d!2155194))

(assert (not b!6858704))

(assert (not d!2155222))

(assert (not b!6858575))

(assert (not b!6858451))

(assert (not b!6858702))

(assert (not b!6858589))

(assert (not b!6858736))

(assert (not b!6858659))

(assert (not bm!624727))

(assert (not b!6858588))

(assert (not bm!624728))

(assert (not b!6858700))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

