; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!549804 () Bool)

(assert start!549804)

(declare-fun b!5196244 () Bool)

(assert (=> b!5196244 true))

(assert (=> b!5196244 true))

(declare-fun lambda!260041 () Int)

(declare-fun lambda!260040 () Int)

(assert (=> b!5196244 (not (= lambda!260041 lambda!260040))))

(assert (=> b!5196244 true))

(assert (=> b!5196244 true))

(declare-fun b!5196252 () Bool)

(assert (=> b!5196252 true))

(declare-fun b!5196236 () Bool)

(declare-fun e!3236135 () Bool)

(declare-fun tp!1457749 () Bool)

(assert (=> b!5196236 (= e!3236135 tp!1457749)))

(declare-fun b!5196237 () Bool)

(declare-fun res!2207332 () Bool)

(declare-fun e!3236130 () Bool)

(assert (=> b!5196237 (=> (not res!2207332) (not e!3236130))))

(declare-datatypes ((C!29794 0))(
  ( (C!29795 (val!24599 Int)) )
))
(declare-datatypes ((Regex!14762 0))(
  ( (ElementMatch!14762 (c!895550 C!29794)) (Concat!23607 (regOne!30036 Regex!14762) (regTwo!30036 Regex!14762)) (EmptyExpr!14762) (Star!14762 (reg!15091 Regex!14762)) (EmptyLang!14762) (Union!14762 (regOne!30037 Regex!14762) (regTwo!30037 Regex!14762)) )
))
(declare-fun r!7292 () Regex!14762)

(declare-datatypes ((List!60585 0))(
  ( (Nil!60461) (Cons!60461 (h!66909 Regex!14762) (t!373738 List!60585)) )
))
(declare-datatypes ((Context!8292 0))(
  ( (Context!8293 (exprs!4646 List!60585)) )
))
(declare-datatypes ((List!60586 0))(
  ( (Nil!60462) (Cons!60462 (h!66910 Context!8292) (t!373739 List!60586)) )
))
(declare-fun zl!343 () List!60586)

(declare-fun unfocusZipper!504 (List!60586) Regex!14762)

(assert (=> b!5196237 (= res!2207332 (= r!7292 (unfocusZipper!504 zl!343)))))

(declare-fun b!5196238 () Bool)

(declare-fun e!3236129 () Bool)

(declare-fun tp!1457746 () Bool)

(declare-fun tp!1457750 () Bool)

(assert (=> b!5196238 (= e!3236129 (and tp!1457746 tp!1457750))))

(declare-fun b!5196239 () Bool)

(declare-fun tp_is_empty!38777 () Bool)

(assert (=> b!5196239 (= e!3236129 tp_is_empty!38777)))

(declare-fun b!5196240 () Bool)

(declare-fun res!2207331 () Bool)

(declare-fun e!3236132 () Bool)

(assert (=> b!5196240 (=> res!2207331 e!3236132)))

(declare-fun isEmpty!32376 (List!60585) Bool)

(assert (=> b!5196240 (= res!2207331 (not (isEmpty!32376 (t!373738 (exprs!4646 (h!66910 zl!343))))))))

(declare-fun b!5196241 () Bool)

(declare-fun res!2207335 () Bool)

(declare-fun e!3236136 () Bool)

(assert (=> b!5196241 (=> res!2207335 e!3236136)))

(declare-fun isEmpty!32377 (List!60586) Bool)

(assert (=> b!5196241 (= res!2207335 (not (isEmpty!32377 (t!373739 zl!343))))))

(declare-fun b!5196242 () Bool)

(assert (=> b!5196242 (= e!3236130 (not e!3236136))))

(declare-fun res!2207328 () Bool)

(assert (=> b!5196242 (=> res!2207328 e!3236136)))

(assert (=> b!5196242 (= res!2207328 (not (is-Cons!60462 zl!343)))))

(declare-fun lt!2139027 () Bool)

(declare-datatypes ((List!60587 0))(
  ( (Nil!60463) (Cons!60463 (h!66911 C!29794) (t!373740 List!60587)) )
))
(declare-fun s!2326 () List!60587)

(declare-fun matchRSpec!1865 (Regex!14762 List!60587) Bool)

(assert (=> b!5196242 (= lt!2139027 (matchRSpec!1865 r!7292 s!2326))))

(declare-fun matchR!6947 (Regex!14762 List!60587) Bool)

(assert (=> b!5196242 (= lt!2139027 (matchR!6947 r!7292 s!2326))))

(declare-datatypes ((Unit!152358 0))(
  ( (Unit!152359) )
))
(declare-fun lt!2139029 () Unit!152358)

(declare-fun mainMatchTheorem!1865 (Regex!14762 List!60587) Unit!152358)

(assert (=> b!5196242 (= lt!2139029 (mainMatchTheorem!1865 r!7292 s!2326))))

(declare-fun tp!1457748 () Bool)

(declare-fun b!5196243 () Bool)

(declare-fun e!3236131 () Bool)

(declare-fun inv!80153 (Context!8292) Bool)

(assert (=> b!5196243 (= e!3236131 (and (inv!80153 (h!66910 zl!343)) e!3236135 tp!1457748))))

(assert (=> b!5196244 (= e!3236136 e!3236132)))

(declare-fun res!2207329 () Bool)

(assert (=> b!5196244 (=> res!2207329 e!3236132)))

(declare-fun lt!2139028 () Bool)

(assert (=> b!5196244 (= res!2207329 (or (not (= lt!2139027 lt!2139028)) (is-Nil!60463 s!2326)))))

(declare-fun Exists!1943 (Int) Bool)

(assert (=> b!5196244 (= (Exists!1943 lambda!260040) (Exists!1943 lambda!260041))))

(declare-fun lt!2139023 () Unit!152358)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!597 (Regex!14762 Regex!14762 List!60587) Unit!152358)

(assert (=> b!5196244 (= lt!2139023 (lemmaExistCutMatchRandMatchRSpecEquivalent!597 (regOne!30036 r!7292) (regTwo!30036 r!7292) s!2326))))

(assert (=> b!5196244 (= lt!2139028 (Exists!1943 lambda!260040))))

(declare-datatypes ((tuple2!63922 0))(
  ( (tuple2!63923 (_1!35264 List!60587) (_2!35264 List!60587)) )
))
(declare-datatypes ((Option!14873 0))(
  ( (None!14872) (Some!14872 (v!50901 tuple2!63922)) )
))
(declare-fun isDefined!11576 (Option!14873) Bool)

(declare-fun findConcatSeparation!1287 (Regex!14762 Regex!14762 List!60587 List!60587 List!60587) Option!14873)

(assert (=> b!5196244 (= lt!2139028 (isDefined!11576 (findConcatSeparation!1287 (regOne!30036 r!7292) (regTwo!30036 r!7292) Nil!60463 s!2326 s!2326)))))

(declare-fun lt!2139033 () Unit!152358)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1051 (Regex!14762 Regex!14762 List!60587) Unit!152358)

(assert (=> b!5196244 (= lt!2139033 (lemmaFindConcatSeparationEquivalentToExists!1051 (regOne!30036 r!7292) (regTwo!30036 r!7292) s!2326))))

(declare-fun b!5196245 () Bool)

(declare-fun tp!1457744 () Bool)

(declare-fun tp!1457747 () Bool)

(assert (=> b!5196245 (= e!3236129 (and tp!1457744 tp!1457747))))

(declare-fun b!5196246 () Bool)

(declare-fun e!3236133 () Bool)

(declare-fun validRegex!6498 (Regex!14762) Bool)

(assert (=> b!5196246 (= e!3236133 (validRegex!6498 (regOne!30036 r!7292)))))

(declare-fun lambda!260042 () Int)

(declare-fun lt!2139025 () (Set Context!8292))

(declare-fun lt!2139019 () Context!8292)

(declare-fun flatMap!493 ((Set Context!8292) Int) (Set Context!8292))

(declare-fun derivationStepZipperUp!134 (Context!8292 C!29794) (Set Context!8292))

(assert (=> b!5196246 (= (flatMap!493 lt!2139025 lambda!260042) (derivationStepZipperUp!134 lt!2139019 (h!66911 s!2326)))))

(declare-fun lt!2139020 () Unit!152358)

(declare-fun lemmaFlatMapOnSingletonSet!25 ((Set Context!8292) Context!8292 Int) Unit!152358)

(assert (=> b!5196246 (= lt!2139020 (lemmaFlatMapOnSingletonSet!25 lt!2139025 lt!2139019 lambda!260042))))

(declare-fun lt!2139026 () (Set Context!8292))

(declare-fun lt!2139030 () Context!8292)

(assert (=> b!5196246 (= (flatMap!493 lt!2139026 lambda!260042) (derivationStepZipperUp!134 lt!2139030 (h!66911 s!2326)))))

(declare-fun lt!2139018 () Unit!152358)

(assert (=> b!5196246 (= lt!2139018 (lemmaFlatMapOnSingletonSet!25 lt!2139026 lt!2139030 lambda!260042))))

(declare-fun lt!2139024 () (Set Context!8292))

(assert (=> b!5196246 (= lt!2139024 (derivationStepZipperUp!134 lt!2139019 (h!66911 s!2326)))))

(declare-fun lt!2139031 () (Set Context!8292))

(assert (=> b!5196246 (= lt!2139031 (derivationStepZipperUp!134 lt!2139030 (h!66911 s!2326)))))

(assert (=> b!5196246 (= lt!2139025 (set.insert lt!2139019 (as set.empty (Set Context!8292))))))

(declare-fun lt!2139032 () List!60585)

(assert (=> b!5196246 (= lt!2139019 (Context!8293 lt!2139032))))

(assert (=> b!5196246 (= lt!2139026 (set.insert lt!2139030 (as set.empty (Set Context!8292))))))

(assert (=> b!5196246 (= lt!2139030 (Context!8293 (Cons!60461 (regOne!30036 r!7292) lt!2139032)))))

(assert (=> b!5196246 (= lt!2139032 (Cons!60461 (regTwo!30036 r!7292) Nil!60461))))

(declare-fun b!5196247 () Bool)

(declare-fun e!3236134 () Bool)

(declare-fun tp!1457745 () Bool)

(assert (=> b!5196247 (= e!3236134 tp!1457745)))

(declare-fun b!5196248 () Bool)

(declare-fun res!2207325 () Bool)

(assert (=> b!5196248 (=> res!2207325 e!3236136)))

(declare-fun generalisedConcat!431 (List!60585) Regex!14762)

(assert (=> b!5196248 (= res!2207325 (not (= r!7292 (generalisedConcat!431 (exprs!4646 (h!66910 zl!343))))))))

(declare-fun b!5196249 () Bool)

(declare-fun tp!1457742 () Bool)

(assert (=> b!5196249 (= e!3236129 tp!1457742)))

(declare-fun b!5196250 () Bool)

(declare-fun res!2207326 () Bool)

(assert (=> b!5196250 (=> res!2207326 e!3236136)))

(assert (=> b!5196250 (= res!2207326 (or (is-EmptyExpr!14762 r!7292) (is-EmptyLang!14762 r!7292) (is-ElementMatch!14762 r!7292) (is-Union!14762 r!7292) (not (is-Concat!23607 r!7292))))))

(declare-fun b!5196251 () Bool)

(declare-fun e!3236137 () Bool)

(declare-fun tp!1457751 () Bool)

(assert (=> b!5196251 (= e!3236137 (and tp_is_empty!38777 tp!1457751))))

(declare-fun e!3236128 () Bool)

(assert (=> b!5196252 (= e!3236128 e!3236133)))

(declare-fun res!2207337 () Bool)

(assert (=> b!5196252 (=> res!2207337 e!3236133)))

(declare-fun lt!2139021 () (Set Context!8292))

(declare-fun z!1189 () (Set Context!8292))

(declare-fun derivationStepZipper!1042 ((Set Context!8292) C!29794) (Set Context!8292))

(assert (=> b!5196252 (= res!2207337 (not (= (derivationStepZipper!1042 z!1189 (h!66911 s!2326)) lt!2139021)))))

(assert (=> b!5196252 (= (flatMap!493 z!1189 lambda!260042) (derivationStepZipperUp!134 (h!66910 zl!343) (h!66911 s!2326)))))

(declare-fun lt!2139022 () Unit!152358)

(assert (=> b!5196252 (= lt!2139022 (lemmaFlatMapOnSingletonSet!25 z!1189 (h!66910 zl!343) lambda!260042))))

(declare-fun b!5196253 () Bool)

(declare-fun res!2207327 () Bool)

(assert (=> b!5196253 (=> res!2207327 e!3236136)))

(declare-fun generalisedUnion!691 (List!60585) Regex!14762)

(declare-fun unfocusZipperList!204 (List!60586) List!60585)

(assert (=> b!5196253 (= res!2207327 (not (= r!7292 (generalisedUnion!691 (unfocusZipperList!204 zl!343)))))))

(declare-fun setElem!32899 () Context!8292)

(declare-fun setRes!32899 () Bool)

(declare-fun setNonEmpty!32899 () Bool)

(declare-fun tp!1457743 () Bool)

(assert (=> setNonEmpty!32899 (= setRes!32899 (and tp!1457743 (inv!80153 setElem!32899) e!3236134))))

(declare-fun setRest!32899 () (Set Context!8292))

(assert (=> setNonEmpty!32899 (= z!1189 (set.union (set.insert setElem!32899 (as set.empty (Set Context!8292))) setRest!32899))))

(declare-fun b!5196254 () Bool)

(declare-fun res!2207336 () Bool)

(assert (=> b!5196254 (=> res!2207336 e!3236136)))

(assert (=> b!5196254 (= res!2207336 (not (is-Cons!60461 (exprs!4646 (h!66910 zl!343)))))))

(declare-fun res!2207334 () Bool)

(assert (=> start!549804 (=> (not res!2207334) (not e!3236130))))

(assert (=> start!549804 (= res!2207334 (validRegex!6498 r!7292))))

(assert (=> start!549804 e!3236130))

(assert (=> start!549804 e!3236129))

(declare-fun condSetEmpty!32899 () Bool)

(assert (=> start!549804 (= condSetEmpty!32899 (= z!1189 (as set.empty (Set Context!8292))))))

(assert (=> start!549804 setRes!32899))

(assert (=> start!549804 e!3236131))

(assert (=> start!549804 e!3236137))

(declare-fun b!5196255 () Bool)

(assert (=> b!5196255 (= e!3236132 e!3236128)))

(declare-fun res!2207330 () Bool)

(assert (=> b!5196255 (=> res!2207330 e!3236128)))

(declare-fun lt!2139034 () (Set Context!8292))

(assert (=> b!5196255 (= res!2207330 (not (= lt!2139034 lt!2139021)))))

(declare-fun derivationStepZipperDown!211 (Regex!14762 Context!8292 C!29794) (Set Context!8292))

(assert (=> b!5196255 (= lt!2139021 (derivationStepZipperDown!211 r!7292 (Context!8293 Nil!60461) (h!66911 s!2326)))))

(assert (=> b!5196255 (= lt!2139034 (derivationStepZipperUp!134 (Context!8293 (Cons!60461 r!7292 Nil!60461)) (h!66911 s!2326)))))

(declare-fun b!5196256 () Bool)

(declare-fun res!2207333 () Bool)

(assert (=> b!5196256 (=> (not res!2207333) (not e!3236130))))

(declare-fun toList!8546 ((Set Context!8292)) List!60586)

(assert (=> b!5196256 (= res!2207333 (= (toList!8546 z!1189) zl!343))))

(declare-fun setIsEmpty!32899 () Bool)

(assert (=> setIsEmpty!32899 setRes!32899))

(assert (= (and start!549804 res!2207334) b!5196256))

(assert (= (and b!5196256 res!2207333) b!5196237))

(assert (= (and b!5196237 res!2207332) b!5196242))

(assert (= (and b!5196242 (not res!2207328)) b!5196241))

(assert (= (and b!5196241 (not res!2207335)) b!5196248))

(assert (= (and b!5196248 (not res!2207325)) b!5196254))

(assert (= (and b!5196254 (not res!2207336)) b!5196253))

(assert (= (and b!5196253 (not res!2207327)) b!5196250))

(assert (= (and b!5196250 (not res!2207326)) b!5196244))

(assert (= (and b!5196244 (not res!2207329)) b!5196240))

(assert (= (and b!5196240 (not res!2207331)) b!5196255))

(assert (= (and b!5196255 (not res!2207330)) b!5196252))

(assert (= (and b!5196252 (not res!2207337)) b!5196246))

(assert (= (and start!549804 (is-ElementMatch!14762 r!7292)) b!5196239))

(assert (= (and start!549804 (is-Concat!23607 r!7292)) b!5196245))

(assert (= (and start!549804 (is-Star!14762 r!7292)) b!5196249))

(assert (= (and start!549804 (is-Union!14762 r!7292)) b!5196238))

(assert (= (and start!549804 condSetEmpty!32899) setIsEmpty!32899))

(assert (= (and start!549804 (not condSetEmpty!32899)) setNonEmpty!32899))

(assert (= setNonEmpty!32899 b!5196247))

(assert (= b!5196243 b!5196236))

(assert (= (and start!549804 (is-Cons!60462 zl!343)) b!5196243))

(assert (= (and start!549804 (is-Cons!60463 s!2326)) b!5196251))

(declare-fun m!6250262 () Bool)

(assert (=> setNonEmpty!32899 m!6250262))

(declare-fun m!6250264 () Bool)

(assert (=> b!5196248 m!6250264))

(declare-fun m!6250266 () Bool)

(assert (=> b!5196241 m!6250266))

(declare-fun m!6250268 () Bool)

(assert (=> b!5196243 m!6250268))

(declare-fun m!6250270 () Bool)

(assert (=> b!5196240 m!6250270))

(declare-fun m!6250272 () Bool)

(assert (=> b!5196244 m!6250272))

(declare-fun m!6250274 () Bool)

(assert (=> b!5196244 m!6250274))

(declare-fun m!6250276 () Bool)

(assert (=> b!5196244 m!6250276))

(declare-fun m!6250278 () Bool)

(assert (=> b!5196244 m!6250278))

(assert (=> b!5196244 m!6250278))

(declare-fun m!6250280 () Bool)

(assert (=> b!5196244 m!6250280))

(assert (=> b!5196244 m!6250274))

(declare-fun m!6250282 () Bool)

(assert (=> b!5196244 m!6250282))

(declare-fun m!6250284 () Bool)

(assert (=> b!5196252 m!6250284))

(declare-fun m!6250286 () Bool)

(assert (=> b!5196252 m!6250286))

(declare-fun m!6250288 () Bool)

(assert (=> b!5196252 m!6250288))

(declare-fun m!6250290 () Bool)

(assert (=> b!5196252 m!6250290))

(declare-fun m!6250292 () Bool)

(assert (=> b!5196246 m!6250292))

(declare-fun m!6250294 () Bool)

(assert (=> b!5196246 m!6250294))

(declare-fun m!6250296 () Bool)

(assert (=> b!5196246 m!6250296))

(declare-fun m!6250298 () Bool)

(assert (=> b!5196246 m!6250298))

(declare-fun m!6250300 () Bool)

(assert (=> b!5196246 m!6250300))

(declare-fun m!6250302 () Bool)

(assert (=> b!5196246 m!6250302))

(declare-fun m!6250304 () Bool)

(assert (=> b!5196246 m!6250304))

(declare-fun m!6250306 () Bool)

(assert (=> b!5196246 m!6250306))

(declare-fun m!6250308 () Bool)

(assert (=> b!5196246 m!6250308))

(declare-fun m!6250310 () Bool)

(assert (=> b!5196256 m!6250310))

(declare-fun m!6250312 () Bool)

(assert (=> b!5196253 m!6250312))

(assert (=> b!5196253 m!6250312))

(declare-fun m!6250314 () Bool)

(assert (=> b!5196253 m!6250314))

(declare-fun m!6250316 () Bool)

(assert (=> b!5196237 m!6250316))

(declare-fun m!6250318 () Bool)

(assert (=> start!549804 m!6250318))

(declare-fun m!6250320 () Bool)

(assert (=> b!5196255 m!6250320))

(declare-fun m!6250322 () Bool)

(assert (=> b!5196255 m!6250322))

(declare-fun m!6250324 () Bool)

(assert (=> b!5196242 m!6250324))

(declare-fun m!6250326 () Bool)

(assert (=> b!5196242 m!6250326))

(declare-fun m!6250328 () Bool)

(assert (=> b!5196242 m!6250328))

(push 1)

(assert (not b!5196255))

(assert (not b!5196248))

(assert (not b!5196243))

(assert (not b!5196246))

(assert (not b!5196241))

(assert (not b!5196236))

(assert (not b!5196249))

(assert (not b!5196244))

(assert (not b!5196256))

(assert (not setNonEmpty!32899))

(assert (not b!5196242))

(assert (not b!5196252))

(assert (not b!5196237))

(assert (not b!5196240))

(assert (not b!5196253))

(assert (not b!5196238))

(assert (not b!5196245))

(assert tp_is_empty!38777)

(assert (not b!5196247))

(assert (not start!549804))

(assert (not b!5196251))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1208927 () Bool)

(declare-fun b!5196398 () Bool)

(assert (= bs!1208927 (and b!5196398 b!5196244)))

(declare-fun lambda!260065 () Int)

(assert (=> bs!1208927 (not (= lambda!260065 lambda!260040))))

(assert (=> bs!1208927 (not (= lambda!260065 lambda!260041))))

(assert (=> b!5196398 true))

(assert (=> b!5196398 true))

(declare-fun bs!1208928 () Bool)

(declare-fun b!5196389 () Bool)

(assert (= bs!1208928 (and b!5196389 b!5196244)))

(declare-fun lambda!260066 () Int)

(assert (=> bs!1208928 (not (= lambda!260066 lambda!260040))))

(assert (=> bs!1208928 (= lambda!260066 lambda!260041)))

(declare-fun bs!1208929 () Bool)

(assert (= bs!1208929 (and b!5196389 b!5196398)))

(assert (=> bs!1208929 (not (= lambda!260066 lambda!260065))))

(assert (=> b!5196389 true))

(assert (=> b!5196389 true))

(declare-fun b!5196388 () Bool)

(declare-fun e!3236204 () Bool)

(declare-fun call!365244 () Bool)

(assert (=> b!5196388 (= e!3236204 call!365244)))

(declare-fun e!3236198 () Bool)

(declare-fun call!365245 () Bool)

(assert (=> b!5196389 (= e!3236198 call!365245)))

(declare-fun b!5196391 () Bool)

(declare-fun e!3236203 () Bool)

(assert (=> b!5196391 (= e!3236203 (matchRSpec!1865 (regTwo!30037 r!7292) s!2326))))

(declare-fun b!5196392 () Bool)

(declare-fun e!3236202 () Bool)

(assert (=> b!5196392 (= e!3236202 e!3236203)))

(declare-fun res!2207409 () Bool)

(assert (=> b!5196392 (= res!2207409 (matchRSpec!1865 (regOne!30037 r!7292) s!2326))))

(assert (=> b!5196392 (=> res!2207409 e!3236203)))

(declare-fun b!5196393 () Bool)

(assert (=> b!5196393 (= e!3236202 e!3236198)))

(declare-fun c!895575 () Bool)

(assert (=> b!5196393 (= c!895575 (is-Star!14762 r!7292))))

(declare-fun b!5196394 () Bool)

(declare-fun e!3236200 () Bool)

(assert (=> b!5196394 (= e!3236200 (= s!2326 (Cons!60463 (c!895550 r!7292) Nil!60463)))))

(declare-fun b!5196395 () Bool)

(declare-fun e!3236201 () Bool)

(assert (=> b!5196395 (= e!3236204 e!3236201)))

(declare-fun res!2207407 () Bool)

(assert (=> b!5196395 (= res!2207407 (not (is-EmptyLang!14762 r!7292)))))

(assert (=> b!5196395 (=> (not res!2207407) (not e!3236201))))

(declare-fun bm!365239 () Bool)

(declare-fun isEmpty!32380 (List!60587) Bool)

(assert (=> bm!365239 (= call!365244 (isEmpty!32380 s!2326))))

(declare-fun b!5196396 () Bool)

(declare-fun c!895574 () Bool)

(assert (=> b!5196396 (= c!895574 (is-ElementMatch!14762 r!7292))))

(assert (=> b!5196396 (= e!3236201 e!3236200)))

(declare-fun b!5196397 () Bool)

(declare-fun res!2207408 () Bool)

(declare-fun e!3236199 () Bool)

(assert (=> b!5196397 (=> res!2207408 e!3236199)))

(assert (=> b!5196397 (= res!2207408 call!365244)))

(assert (=> b!5196397 (= e!3236198 e!3236199)))

(declare-fun b!5196390 () Bool)

(declare-fun c!895576 () Bool)

(assert (=> b!5196390 (= c!895576 (is-Union!14762 r!7292))))

(assert (=> b!5196390 (= e!3236200 e!3236202)))

(declare-fun d!1677179 () Bool)

(declare-fun c!895573 () Bool)

(assert (=> d!1677179 (= c!895573 (is-EmptyExpr!14762 r!7292))))

(assert (=> d!1677179 (= (matchRSpec!1865 r!7292 s!2326) e!3236204)))

(assert (=> b!5196398 (= e!3236199 call!365245)))

(declare-fun bm!365240 () Bool)

(assert (=> bm!365240 (= call!365245 (Exists!1943 (ite c!895575 lambda!260065 lambda!260066)))))

(assert (= (and d!1677179 c!895573) b!5196388))

(assert (= (and d!1677179 (not c!895573)) b!5196395))

(assert (= (and b!5196395 res!2207407) b!5196396))

(assert (= (and b!5196396 c!895574) b!5196394))

(assert (= (and b!5196396 (not c!895574)) b!5196390))

(assert (= (and b!5196390 c!895576) b!5196392))

(assert (= (and b!5196390 (not c!895576)) b!5196393))

(assert (= (and b!5196392 (not res!2207409)) b!5196391))

(assert (= (and b!5196393 c!895575) b!5196397))

(assert (= (and b!5196393 (not c!895575)) b!5196389))

(assert (= (and b!5196397 (not res!2207408)) b!5196398))

(assert (= (or b!5196398 b!5196389) bm!365240))

(assert (= (or b!5196388 b!5196397) bm!365239))

(declare-fun m!6250402 () Bool)

(assert (=> b!5196391 m!6250402))

(declare-fun m!6250404 () Bool)

(assert (=> b!5196392 m!6250404))

(declare-fun m!6250406 () Bool)

(assert (=> bm!365239 m!6250406))

(declare-fun m!6250408 () Bool)

(assert (=> bm!365240 m!6250408))

(assert (=> b!5196242 d!1677179))

(declare-fun b!5196432 () Bool)

(declare-fun e!3236227 () Bool)

(declare-fun e!3236224 () Bool)

(assert (=> b!5196432 (= e!3236227 e!3236224)))

(declare-fun c!895587 () Bool)

(assert (=> b!5196432 (= c!895587 (is-EmptyLang!14762 r!7292))))

(declare-fun b!5196433 () Bool)

(declare-fun res!2207433 () Bool)

(declare-fun e!3236223 () Bool)

(assert (=> b!5196433 (=> res!2207433 e!3236223)))

(assert (=> b!5196433 (= res!2207433 (not (is-ElementMatch!14762 r!7292)))))

(assert (=> b!5196433 (= e!3236224 e!3236223)))

(declare-fun b!5196434 () Bool)

(declare-fun e!3236226 () Bool)

(declare-fun head!11137 (List!60587) C!29794)

(assert (=> b!5196434 (= e!3236226 (not (= (head!11137 s!2326) (c!895550 r!7292))))))

(declare-fun b!5196436 () Bool)

(declare-fun e!3236222 () Bool)

(declare-fun nullable!4933 (Regex!14762) Bool)

(assert (=> b!5196436 (= e!3236222 (nullable!4933 r!7292))))

(declare-fun b!5196437 () Bool)

(declare-fun res!2207434 () Bool)

(assert (=> b!5196437 (=> res!2207434 e!3236223)))

(declare-fun e!3236228 () Bool)

(assert (=> b!5196437 (= res!2207434 e!3236228)))

(declare-fun res!2207431 () Bool)

(assert (=> b!5196437 (=> (not res!2207431) (not e!3236228))))

(declare-fun lt!2139091 () Bool)

(assert (=> b!5196437 (= res!2207431 lt!2139091)))

(declare-fun bm!365244 () Bool)

(declare-fun call!365249 () Bool)

(assert (=> bm!365244 (= call!365249 (isEmpty!32380 s!2326))))

(declare-fun b!5196438 () Bool)

(declare-fun res!2207430 () Bool)

(assert (=> b!5196438 (=> (not res!2207430) (not e!3236228))))

(declare-fun tail!10234 (List!60587) List!60587)

(assert (=> b!5196438 (= res!2207430 (isEmpty!32380 (tail!10234 s!2326)))))

(declare-fun b!5196439 () Bool)

(declare-fun res!2207427 () Bool)

(assert (=> b!5196439 (=> (not res!2207427) (not e!3236228))))

(assert (=> b!5196439 (= res!2207427 (not call!365249))))

(declare-fun b!5196440 () Bool)

(assert (=> b!5196440 (= e!3236227 (= lt!2139091 call!365249))))

(declare-fun b!5196441 () Bool)

(declare-fun e!3236225 () Bool)

(assert (=> b!5196441 (= e!3236225 e!3236226)))

(declare-fun res!2207429 () Bool)

(assert (=> b!5196441 (=> res!2207429 e!3236226)))

(assert (=> b!5196441 (= res!2207429 call!365249)))

(declare-fun b!5196442 () Bool)

(assert (=> b!5196442 (= e!3236228 (= (head!11137 s!2326) (c!895550 r!7292)))))

(declare-fun b!5196443 () Bool)

(assert (=> b!5196443 (= e!3236224 (not lt!2139091))))

(declare-fun b!5196444 () Bool)

(declare-fun derivativeStep!4031 (Regex!14762 C!29794) Regex!14762)

(assert (=> b!5196444 (= e!3236222 (matchR!6947 (derivativeStep!4031 r!7292 (head!11137 s!2326)) (tail!10234 s!2326)))))

(declare-fun b!5196445 () Bool)

(assert (=> b!5196445 (= e!3236223 e!3236225)))

(declare-fun res!2207428 () Bool)

(assert (=> b!5196445 (=> (not res!2207428) (not e!3236225))))

(assert (=> b!5196445 (= res!2207428 (not lt!2139091))))

(declare-fun d!1677185 () Bool)

(assert (=> d!1677185 e!3236227))

(declare-fun c!895586 () Bool)

(assert (=> d!1677185 (= c!895586 (is-EmptyExpr!14762 r!7292))))

(assert (=> d!1677185 (= lt!2139091 e!3236222)))

(declare-fun c!895585 () Bool)

(assert (=> d!1677185 (= c!895585 (isEmpty!32380 s!2326))))

(assert (=> d!1677185 (validRegex!6498 r!7292)))

(assert (=> d!1677185 (= (matchR!6947 r!7292 s!2326) lt!2139091)))

(declare-fun b!5196435 () Bool)

(declare-fun res!2207432 () Bool)

(assert (=> b!5196435 (=> res!2207432 e!3236226)))

(assert (=> b!5196435 (= res!2207432 (not (isEmpty!32380 (tail!10234 s!2326))))))

(assert (= (and d!1677185 c!895585) b!5196436))

(assert (= (and d!1677185 (not c!895585)) b!5196444))

(assert (= (and d!1677185 c!895586) b!5196440))

(assert (= (and d!1677185 (not c!895586)) b!5196432))

(assert (= (and b!5196432 c!895587) b!5196443))

(assert (= (and b!5196432 (not c!895587)) b!5196433))

(assert (= (and b!5196433 (not res!2207433)) b!5196437))

(assert (= (and b!5196437 res!2207431) b!5196439))

(assert (= (and b!5196439 res!2207427) b!5196438))

(assert (= (and b!5196438 res!2207430) b!5196442))

(assert (= (and b!5196437 (not res!2207434)) b!5196445))

(assert (= (and b!5196445 res!2207428) b!5196441))

(assert (= (and b!5196441 (not res!2207429)) b!5196435))

(assert (= (and b!5196435 (not res!2207432)) b!5196434))

(assert (= (or b!5196440 b!5196439 b!5196441) bm!365244))

(assert (=> d!1677185 m!6250406))

(assert (=> d!1677185 m!6250318))

(declare-fun m!6250422 () Bool)

(assert (=> b!5196442 m!6250422))

(assert (=> b!5196444 m!6250422))

(assert (=> b!5196444 m!6250422))

(declare-fun m!6250424 () Bool)

(assert (=> b!5196444 m!6250424))

(declare-fun m!6250426 () Bool)

(assert (=> b!5196444 m!6250426))

(assert (=> b!5196444 m!6250424))

(assert (=> b!5196444 m!6250426))

(declare-fun m!6250428 () Bool)

(assert (=> b!5196444 m!6250428))

(assert (=> b!5196438 m!6250426))

(assert (=> b!5196438 m!6250426))

(declare-fun m!6250430 () Bool)

(assert (=> b!5196438 m!6250430))

(declare-fun m!6250432 () Bool)

(assert (=> b!5196436 m!6250432))

(assert (=> b!5196434 m!6250422))

(assert (=> bm!365244 m!6250406))

(assert (=> b!5196435 m!6250426))

(assert (=> b!5196435 m!6250426))

(assert (=> b!5196435 m!6250430))

(assert (=> b!5196242 d!1677185))

(declare-fun d!1677191 () Bool)

(assert (=> d!1677191 (= (matchR!6947 r!7292 s!2326) (matchRSpec!1865 r!7292 s!2326))))

(declare-fun lt!2139094 () Unit!152358)

(declare-fun choose!38600 (Regex!14762 List!60587) Unit!152358)

(assert (=> d!1677191 (= lt!2139094 (choose!38600 r!7292 s!2326))))

(assert (=> d!1677191 (validRegex!6498 r!7292)))

(assert (=> d!1677191 (= (mainMatchTheorem!1865 r!7292 s!2326) lt!2139094)))

(declare-fun bs!1208931 () Bool)

(assert (= bs!1208931 d!1677191))

(assert (=> bs!1208931 m!6250326))

(assert (=> bs!1208931 m!6250324))

(declare-fun m!6250434 () Bool)

(assert (=> bs!1208931 m!6250434))

(assert (=> bs!1208931 m!6250318))

(assert (=> b!5196242 d!1677191))

(declare-fun b!5196486 () Bool)

(declare-fun e!3236253 () Bool)

(assert (=> b!5196486 (= e!3236253 (isEmpty!32376 (t!373738 (unfocusZipperList!204 zl!343))))))

(declare-fun b!5196487 () Bool)

(declare-fun e!3236258 () Bool)

(declare-fun e!3236254 () Bool)

(assert (=> b!5196487 (= e!3236258 e!3236254)))

(declare-fun c!895607 () Bool)

(assert (=> b!5196487 (= c!895607 (isEmpty!32376 (unfocusZipperList!204 zl!343)))))

(declare-fun d!1677193 () Bool)

(assert (=> d!1677193 e!3236258))

(declare-fun res!2207444 () Bool)

(assert (=> d!1677193 (=> (not res!2207444) (not e!3236258))))

(declare-fun lt!2139099 () Regex!14762)

(assert (=> d!1677193 (= res!2207444 (validRegex!6498 lt!2139099))))

(declare-fun e!3236257 () Regex!14762)

(assert (=> d!1677193 (= lt!2139099 e!3236257)))

(declare-fun c!895604 () Bool)

(assert (=> d!1677193 (= c!895604 e!3236253)))

(declare-fun res!2207443 () Bool)

(assert (=> d!1677193 (=> (not res!2207443) (not e!3236253))))

(assert (=> d!1677193 (= res!2207443 (is-Cons!60461 (unfocusZipperList!204 zl!343)))))

(declare-fun lambda!260071 () Int)

(declare-fun forall!14217 (List!60585 Int) Bool)

(assert (=> d!1677193 (forall!14217 (unfocusZipperList!204 zl!343) lambda!260071)))

(assert (=> d!1677193 (= (generalisedUnion!691 (unfocusZipperList!204 zl!343)) lt!2139099)))

(declare-fun b!5196488 () Bool)

(declare-fun isEmptyLang!754 (Regex!14762) Bool)

(assert (=> b!5196488 (= e!3236254 (isEmptyLang!754 lt!2139099))))

(declare-fun b!5196489 () Bool)

(declare-fun e!3236255 () Bool)

(assert (=> b!5196489 (= e!3236254 e!3236255)))

(declare-fun c!895605 () Bool)

(declare-fun tail!10235 (List!60585) List!60585)

(assert (=> b!5196489 (= c!895605 (isEmpty!32376 (tail!10235 (unfocusZipperList!204 zl!343))))))

(declare-fun b!5196490 () Bool)

(declare-fun isUnion!186 (Regex!14762) Bool)

(assert (=> b!5196490 (= e!3236255 (isUnion!186 lt!2139099))))

(declare-fun b!5196491 () Bool)

(declare-fun e!3236256 () Regex!14762)

(assert (=> b!5196491 (= e!3236256 (Union!14762 (h!66909 (unfocusZipperList!204 zl!343)) (generalisedUnion!691 (t!373738 (unfocusZipperList!204 zl!343)))))))

(declare-fun b!5196492 () Bool)

(declare-fun head!11138 (List!60585) Regex!14762)

(assert (=> b!5196492 (= e!3236255 (= lt!2139099 (head!11138 (unfocusZipperList!204 zl!343))))))

(declare-fun b!5196493 () Bool)

(assert (=> b!5196493 (= e!3236256 EmptyLang!14762)))

(declare-fun b!5196494 () Bool)

(assert (=> b!5196494 (= e!3236257 e!3236256)))

(declare-fun c!895606 () Bool)

(assert (=> b!5196494 (= c!895606 (is-Cons!60461 (unfocusZipperList!204 zl!343)))))

(declare-fun b!5196495 () Bool)

(assert (=> b!5196495 (= e!3236257 (h!66909 (unfocusZipperList!204 zl!343)))))

(assert (= (and d!1677193 res!2207443) b!5196486))

(assert (= (and d!1677193 c!895604) b!5196495))

(assert (= (and d!1677193 (not c!895604)) b!5196494))

(assert (= (and b!5196494 c!895606) b!5196491))

(assert (= (and b!5196494 (not c!895606)) b!5196493))

(assert (= (and d!1677193 res!2207444) b!5196487))

(assert (= (and b!5196487 c!895607) b!5196488))

(assert (= (and b!5196487 (not c!895607)) b!5196489))

(assert (= (and b!5196489 c!895605) b!5196492))

(assert (= (and b!5196489 (not c!895605)) b!5196490))

(assert (=> b!5196489 m!6250312))

(declare-fun m!6250436 () Bool)

(assert (=> b!5196489 m!6250436))

(assert (=> b!5196489 m!6250436))

(declare-fun m!6250438 () Bool)

(assert (=> b!5196489 m!6250438))

(declare-fun m!6250440 () Bool)

(assert (=> d!1677193 m!6250440))

(assert (=> d!1677193 m!6250312))

(declare-fun m!6250442 () Bool)

(assert (=> d!1677193 m!6250442))

(declare-fun m!6250444 () Bool)

(assert (=> b!5196488 m!6250444))

(assert (=> b!5196487 m!6250312))

(declare-fun m!6250446 () Bool)

(assert (=> b!5196487 m!6250446))

(assert (=> b!5196492 m!6250312))

(declare-fun m!6250448 () Bool)

(assert (=> b!5196492 m!6250448))

(declare-fun m!6250450 () Bool)

(assert (=> b!5196491 m!6250450))

(declare-fun m!6250452 () Bool)

(assert (=> b!5196486 m!6250452))

(declare-fun m!6250454 () Bool)

(assert (=> b!5196490 m!6250454))

(assert (=> b!5196253 d!1677193))

(declare-fun bs!1208932 () Bool)

(declare-fun d!1677195 () Bool)

(assert (= bs!1208932 (and d!1677195 d!1677193)))

(declare-fun lambda!260075 () Int)

(assert (=> bs!1208932 (= lambda!260075 lambda!260071)))

(declare-fun lt!2139103 () List!60585)

(assert (=> d!1677195 (forall!14217 lt!2139103 lambda!260075)))

(declare-fun e!3236267 () List!60585)

(assert (=> d!1677195 (= lt!2139103 e!3236267)))

(declare-fun c!895614 () Bool)

(assert (=> d!1677195 (= c!895614 (is-Cons!60462 zl!343))))

(assert (=> d!1677195 (= (unfocusZipperList!204 zl!343) lt!2139103)))

(declare-fun b!5196510 () Bool)

(assert (=> b!5196510 (= e!3236267 (Cons!60461 (generalisedConcat!431 (exprs!4646 (h!66910 zl!343))) (unfocusZipperList!204 (t!373739 zl!343))))))

(declare-fun b!5196511 () Bool)

(assert (=> b!5196511 (= e!3236267 Nil!60461)))

(assert (= (and d!1677195 c!895614) b!5196510))

(assert (= (and d!1677195 (not c!895614)) b!5196511))

(declare-fun m!6250476 () Bool)

(assert (=> d!1677195 m!6250476))

(assert (=> b!5196510 m!6250264))

(declare-fun m!6250478 () Bool)

(assert (=> b!5196510 m!6250478))

(assert (=> b!5196253 d!1677195))

(declare-fun d!1677199 () Bool)

(assert (=> d!1677199 (= (isEmpty!32377 (t!373739 zl!343)) (is-Nil!60462 (t!373739 zl!343)))))

(assert (=> b!5196241 d!1677199))

(declare-fun bs!1208933 () Bool)

(declare-fun d!1677201 () Bool)

(assert (= bs!1208933 (and d!1677201 b!5196252)))

(declare-fun lambda!260078 () Int)

(assert (=> bs!1208933 (= lambda!260078 lambda!260042)))

(assert (=> d!1677201 true))

(assert (=> d!1677201 (= (derivationStepZipper!1042 z!1189 (h!66911 s!2326)) (flatMap!493 z!1189 lambda!260078))))

(declare-fun bs!1208934 () Bool)

(assert (= bs!1208934 d!1677201))

(declare-fun m!6250480 () Bool)

(assert (=> bs!1208934 m!6250480))

(assert (=> b!5196252 d!1677201))

(declare-fun d!1677203 () Bool)

(declare-fun choose!38601 ((Set Context!8292) Int) (Set Context!8292))

(assert (=> d!1677203 (= (flatMap!493 z!1189 lambda!260042) (choose!38601 z!1189 lambda!260042))))

(declare-fun bs!1208935 () Bool)

(assert (= bs!1208935 d!1677203))

(declare-fun m!6250482 () Bool)

(assert (=> bs!1208935 m!6250482))

(assert (=> b!5196252 d!1677203))

(declare-fun call!365252 () (Set Context!8292))

(declare-fun e!3236278 () (Set Context!8292))

(declare-fun b!5196528 () Bool)

(assert (=> b!5196528 (= e!3236278 (set.union call!365252 (derivationStepZipperUp!134 (Context!8293 (t!373738 (exprs!4646 (h!66910 zl!343)))) (h!66911 s!2326))))))

(declare-fun d!1677205 () Bool)

(declare-fun c!895623 () Bool)

(declare-fun e!3236276 () Bool)

(assert (=> d!1677205 (= c!895623 e!3236276)))

(declare-fun res!2207449 () Bool)

(assert (=> d!1677205 (=> (not res!2207449) (not e!3236276))))

(assert (=> d!1677205 (= res!2207449 (is-Cons!60461 (exprs!4646 (h!66910 zl!343))))))

(assert (=> d!1677205 (= (derivationStepZipperUp!134 (h!66910 zl!343) (h!66911 s!2326)) e!3236278)))

(declare-fun b!5196529 () Bool)

(declare-fun e!3236277 () (Set Context!8292))

(assert (=> b!5196529 (= e!3236278 e!3236277)))

(declare-fun c!895624 () Bool)

(assert (=> b!5196529 (= c!895624 (is-Cons!60461 (exprs!4646 (h!66910 zl!343))))))

(declare-fun b!5196530 () Bool)

(assert (=> b!5196530 (= e!3236276 (nullable!4933 (h!66909 (exprs!4646 (h!66910 zl!343)))))))

(declare-fun bm!365247 () Bool)

(assert (=> bm!365247 (= call!365252 (derivationStepZipperDown!211 (h!66909 (exprs!4646 (h!66910 zl!343))) (Context!8293 (t!373738 (exprs!4646 (h!66910 zl!343)))) (h!66911 s!2326)))))

(declare-fun b!5196531 () Bool)

(assert (=> b!5196531 (= e!3236277 call!365252)))

(declare-fun b!5196532 () Bool)

(assert (=> b!5196532 (= e!3236277 (as set.empty (Set Context!8292)))))

(assert (= (and d!1677205 res!2207449) b!5196530))

(assert (= (and d!1677205 c!895623) b!5196528))

(assert (= (and d!1677205 (not c!895623)) b!5196529))

(assert (= (and b!5196529 c!895624) b!5196531))

(assert (= (and b!5196529 (not c!895624)) b!5196532))

(assert (= (or b!5196528 b!5196531) bm!365247))

(declare-fun m!6250484 () Bool)

(assert (=> b!5196528 m!6250484))

(declare-fun m!6250486 () Bool)

(assert (=> b!5196530 m!6250486))

(declare-fun m!6250488 () Bool)

(assert (=> bm!365247 m!6250488))

(assert (=> b!5196252 d!1677205))

(declare-fun d!1677207 () Bool)

(declare-fun dynLambda!23902 (Int Context!8292) (Set Context!8292))

(assert (=> d!1677207 (= (flatMap!493 z!1189 lambda!260042) (dynLambda!23902 lambda!260042 (h!66910 zl!343)))))

(declare-fun lt!2139109 () Unit!152358)

(declare-fun choose!38602 ((Set Context!8292) Context!8292 Int) Unit!152358)

(assert (=> d!1677207 (= lt!2139109 (choose!38602 z!1189 (h!66910 zl!343) lambda!260042))))

(assert (=> d!1677207 (= z!1189 (set.insert (h!66910 zl!343) (as set.empty (Set Context!8292))))))

(assert (=> d!1677207 (= (lemmaFlatMapOnSingletonSet!25 z!1189 (h!66910 zl!343) lambda!260042) lt!2139109)))

(declare-fun b_lambda!201207 () Bool)

(assert (=> (not b_lambda!201207) (not d!1677207)))

(declare-fun bs!1208937 () Bool)

(assert (= bs!1208937 d!1677207))

(assert (=> bs!1208937 m!6250286))

(declare-fun m!6250494 () Bool)

(assert (=> bs!1208937 m!6250494))

(declare-fun m!6250496 () Bool)

(assert (=> bs!1208937 m!6250496))

(declare-fun m!6250498 () Bool)

(assert (=> bs!1208937 m!6250498))

(assert (=> b!5196252 d!1677207))

(declare-fun b!5196579 () Bool)

(declare-fun e!3236310 () Bool)

(assert (=> b!5196579 (= e!3236310 (nullable!4933 (regOne!30036 r!7292)))))

(declare-fun b!5196580 () Bool)

(declare-fun e!3236307 () (Set Context!8292))

(declare-fun call!365270 () (Set Context!8292))

(assert (=> b!5196580 (= e!3236307 call!365270)))

(declare-fun bm!365260 () Bool)

(declare-fun c!895645 () Bool)

(declare-fun c!895648 () Bool)

(declare-fun c!895644 () Bool)

(declare-fun call!365266 () List!60585)

(declare-fun call!365265 () (Set Context!8292))

(assert (=> bm!365260 (= call!365265 (derivationStepZipperDown!211 (ite c!895648 (regOne!30037 r!7292) (ite c!895644 (regTwo!30036 r!7292) (ite c!895645 (regOne!30036 r!7292) (reg!15091 r!7292)))) (ite (or c!895648 c!895644) (Context!8293 Nil!60461) (Context!8293 call!365266)) (h!66911 s!2326)))))

(declare-fun b!5196581 () Bool)

(declare-fun e!3236306 () (Set Context!8292))

(assert (=> b!5196581 (= e!3236306 call!365270)))

(declare-fun bm!365262 () Bool)

(declare-fun call!365267 () List!60585)

(assert (=> bm!365262 (= call!365266 call!365267)))

(declare-fun b!5196582 () Bool)

(assert (=> b!5196582 (= e!3236307 (as set.empty (Set Context!8292)))))

(declare-fun b!5196583 () Bool)

(declare-fun e!3236311 () (Set Context!8292))

(declare-fun call!365269 () (Set Context!8292))

(declare-fun call!365268 () (Set Context!8292))

(assert (=> b!5196583 (= e!3236311 (set.union call!365269 call!365268))))

(declare-fun b!5196584 () Bool)

(assert (=> b!5196584 (= e!3236311 e!3236306)))

(assert (=> b!5196584 (= c!895645 (is-Concat!23607 r!7292))))

(declare-fun bm!365263 () Bool)

(declare-fun $colon$colon!1260 (List!60585 Regex!14762) List!60585)

(assert (=> bm!365263 (= call!365267 ($colon$colon!1260 (exprs!4646 (Context!8293 Nil!60461)) (ite (or c!895644 c!895645) (regTwo!30036 r!7292) r!7292)))))

(declare-fun b!5196585 () Bool)

(declare-fun e!3236309 () (Set Context!8292))

(assert (=> b!5196585 (= e!3236309 (set.insert (Context!8293 Nil!60461) (as set.empty (Set Context!8292))))))

(declare-fun b!5196586 () Bool)

(assert (=> b!5196586 (= c!895644 e!3236310)))

(declare-fun res!2207458 () Bool)

(assert (=> b!5196586 (=> (not res!2207458) (not e!3236310))))

(assert (=> b!5196586 (= res!2207458 (is-Concat!23607 r!7292))))

(declare-fun e!3236308 () (Set Context!8292))

(assert (=> b!5196586 (= e!3236308 e!3236311)))

(declare-fun bm!365264 () Bool)

(assert (=> bm!365264 (= call!365270 call!365268)))

(declare-fun bm!365265 () Bool)

(assert (=> bm!365265 (= call!365269 (derivationStepZipperDown!211 (ite c!895648 (regTwo!30037 r!7292) (regOne!30036 r!7292)) (ite c!895648 (Context!8293 Nil!60461) (Context!8293 call!365267)) (h!66911 s!2326)))))

(declare-fun b!5196587 () Bool)

(assert (=> b!5196587 (= e!3236308 (set.union call!365265 call!365269))))

(declare-fun d!1677211 () Bool)

(declare-fun c!895646 () Bool)

(assert (=> d!1677211 (= c!895646 (and (is-ElementMatch!14762 r!7292) (= (c!895550 r!7292) (h!66911 s!2326))))))

(assert (=> d!1677211 (= (derivationStepZipperDown!211 r!7292 (Context!8293 Nil!60461) (h!66911 s!2326)) e!3236309)))

(declare-fun bm!365261 () Bool)

(assert (=> bm!365261 (= call!365268 call!365265)))

(declare-fun b!5196588 () Bool)

(declare-fun c!895647 () Bool)

(assert (=> b!5196588 (= c!895647 (is-Star!14762 r!7292))))

(assert (=> b!5196588 (= e!3236306 e!3236307)))

(declare-fun b!5196589 () Bool)

(assert (=> b!5196589 (= e!3236309 e!3236308)))

(assert (=> b!5196589 (= c!895648 (is-Union!14762 r!7292))))

(assert (= (and d!1677211 c!895646) b!5196585))

(assert (= (and d!1677211 (not c!895646)) b!5196589))

(assert (= (and b!5196589 c!895648) b!5196587))

(assert (= (and b!5196589 (not c!895648)) b!5196586))

(assert (= (and b!5196586 res!2207458) b!5196579))

(assert (= (and b!5196586 c!895644) b!5196583))

(assert (= (and b!5196586 (not c!895644)) b!5196584))

(assert (= (and b!5196584 c!895645) b!5196581))

(assert (= (and b!5196584 (not c!895645)) b!5196588))

(assert (= (and b!5196588 c!895647) b!5196580))

(assert (= (and b!5196588 (not c!895647)) b!5196582))

(assert (= (or b!5196581 b!5196580) bm!365262))

(assert (= (or b!5196581 b!5196580) bm!365264))

(assert (= (or b!5196583 bm!365262) bm!365263))

(assert (= (or b!5196583 bm!365264) bm!365261))

(assert (= (or b!5196587 b!5196583) bm!365265))

(assert (= (or b!5196587 bm!365261) bm!365260))

(declare-fun m!6250500 () Bool)

(assert (=> b!5196585 m!6250500))

(declare-fun m!6250502 () Bool)

(assert (=> b!5196579 m!6250502))

(declare-fun m!6250504 () Bool)

(assert (=> bm!365260 m!6250504))

(declare-fun m!6250506 () Bool)

(assert (=> bm!365265 m!6250506))

(declare-fun m!6250508 () Bool)

(assert (=> bm!365263 m!6250508))

(assert (=> b!5196255 d!1677211))

(declare-fun call!365271 () (Set Context!8292))

(declare-fun b!5196590 () Bool)

(declare-fun e!3236314 () (Set Context!8292))

(assert (=> b!5196590 (= e!3236314 (set.union call!365271 (derivationStepZipperUp!134 (Context!8293 (t!373738 (exprs!4646 (Context!8293 (Cons!60461 r!7292 Nil!60461))))) (h!66911 s!2326))))))

(declare-fun d!1677213 () Bool)

(declare-fun c!895649 () Bool)

(declare-fun e!3236312 () Bool)

(assert (=> d!1677213 (= c!895649 e!3236312)))

(declare-fun res!2207459 () Bool)

(assert (=> d!1677213 (=> (not res!2207459) (not e!3236312))))

(assert (=> d!1677213 (= res!2207459 (is-Cons!60461 (exprs!4646 (Context!8293 (Cons!60461 r!7292 Nil!60461)))))))

(assert (=> d!1677213 (= (derivationStepZipperUp!134 (Context!8293 (Cons!60461 r!7292 Nil!60461)) (h!66911 s!2326)) e!3236314)))

(declare-fun b!5196591 () Bool)

(declare-fun e!3236313 () (Set Context!8292))

(assert (=> b!5196591 (= e!3236314 e!3236313)))

(declare-fun c!895650 () Bool)

(assert (=> b!5196591 (= c!895650 (is-Cons!60461 (exprs!4646 (Context!8293 (Cons!60461 r!7292 Nil!60461)))))))

(declare-fun b!5196592 () Bool)

(assert (=> b!5196592 (= e!3236312 (nullable!4933 (h!66909 (exprs!4646 (Context!8293 (Cons!60461 r!7292 Nil!60461))))))))

(declare-fun bm!365266 () Bool)

(assert (=> bm!365266 (= call!365271 (derivationStepZipperDown!211 (h!66909 (exprs!4646 (Context!8293 (Cons!60461 r!7292 Nil!60461)))) (Context!8293 (t!373738 (exprs!4646 (Context!8293 (Cons!60461 r!7292 Nil!60461))))) (h!66911 s!2326)))))

(declare-fun b!5196593 () Bool)

(assert (=> b!5196593 (= e!3236313 call!365271)))

(declare-fun b!5196594 () Bool)

(assert (=> b!5196594 (= e!3236313 (as set.empty (Set Context!8292)))))

(assert (= (and d!1677213 res!2207459) b!5196592))

(assert (= (and d!1677213 c!895649) b!5196590))

(assert (= (and d!1677213 (not c!895649)) b!5196591))

(assert (= (and b!5196591 c!895650) b!5196593))

(assert (= (and b!5196591 (not c!895650)) b!5196594))

(assert (= (or b!5196590 b!5196593) bm!365266))

(declare-fun m!6250510 () Bool)

(assert (=> b!5196590 m!6250510))

(declare-fun m!6250512 () Bool)

(assert (=> b!5196592 m!6250512))

(declare-fun m!6250514 () Bool)

(assert (=> bm!365266 m!6250514))

(assert (=> b!5196255 d!1677213))

(declare-fun bs!1208938 () Bool)

(declare-fun d!1677215 () Bool)

(assert (= bs!1208938 (and d!1677215 d!1677193)))

(declare-fun lambda!260086 () Int)

(assert (=> bs!1208938 (= lambda!260086 lambda!260071)))

(declare-fun bs!1208939 () Bool)

(assert (= bs!1208939 (and d!1677215 d!1677195)))

(assert (=> bs!1208939 (= lambda!260086 lambda!260075)))

(assert (=> d!1677215 (= (inv!80153 (h!66910 zl!343)) (forall!14217 (exprs!4646 (h!66910 zl!343)) lambda!260086))))

(declare-fun bs!1208940 () Bool)

(assert (= bs!1208940 d!1677215))

(declare-fun m!6250516 () Bool)

(assert (=> bs!1208940 m!6250516))

(assert (=> b!5196243 d!1677215))

(declare-fun bs!1208941 () Bool)

(declare-fun d!1677217 () Bool)

(assert (= bs!1208941 (and d!1677217 d!1677193)))

(declare-fun lambda!260087 () Int)

(assert (=> bs!1208941 (= lambda!260087 lambda!260071)))

(declare-fun bs!1208942 () Bool)

(assert (= bs!1208942 (and d!1677217 d!1677195)))

(assert (=> bs!1208942 (= lambda!260087 lambda!260075)))

(declare-fun bs!1208943 () Bool)

(assert (= bs!1208943 (and d!1677217 d!1677215)))

(assert (=> bs!1208943 (= lambda!260087 lambda!260086)))

(assert (=> d!1677217 (= (inv!80153 setElem!32899) (forall!14217 (exprs!4646 setElem!32899) lambda!260087))))

(declare-fun bs!1208944 () Bool)

(assert (= bs!1208944 d!1677217))

(declare-fun m!6250518 () Bool)

(assert (=> bs!1208944 m!6250518))

(assert (=> setNonEmpty!32899 d!1677217))

(declare-fun b!5196623 () Bool)

(declare-fun res!2207480 () Bool)

(declare-fun e!3236329 () Bool)

(assert (=> b!5196623 (=> (not res!2207480) (not e!3236329))))

(declare-fun lt!2139117 () Option!14873)

(declare-fun get!20775 (Option!14873) tuple2!63922)

(assert (=> b!5196623 (= res!2207480 (matchR!6947 (regOne!30036 r!7292) (_1!35264 (get!20775 lt!2139117))))))

(declare-fun b!5196624 () Bool)

(declare-fun ++!13188 (List!60587 List!60587) List!60587)

(assert (=> b!5196624 (= e!3236329 (= (++!13188 (_1!35264 (get!20775 lt!2139117)) (_2!35264 (get!20775 lt!2139117))) s!2326))))

(declare-fun b!5196625 () Bool)

(declare-fun e!3236332 () Option!14873)

(assert (=> b!5196625 (= e!3236332 None!14872)))

(declare-fun b!5196626 () Bool)

(declare-fun e!3236330 () Option!14873)

(assert (=> b!5196626 (= e!3236330 e!3236332)))

(declare-fun c!895655 () Bool)

(assert (=> b!5196626 (= c!895655 (is-Nil!60463 s!2326))))

(declare-fun d!1677219 () Bool)

(declare-fun e!3236333 () Bool)

(assert (=> d!1677219 e!3236333))

(declare-fun res!2207481 () Bool)

(assert (=> d!1677219 (=> res!2207481 e!3236333)))

(assert (=> d!1677219 (= res!2207481 e!3236329)))

(declare-fun res!2207483 () Bool)

(assert (=> d!1677219 (=> (not res!2207483) (not e!3236329))))

(assert (=> d!1677219 (= res!2207483 (isDefined!11576 lt!2139117))))

(assert (=> d!1677219 (= lt!2139117 e!3236330)))

(declare-fun c!895656 () Bool)

(declare-fun e!3236331 () Bool)

(assert (=> d!1677219 (= c!895656 e!3236331)))

(declare-fun res!2207484 () Bool)

(assert (=> d!1677219 (=> (not res!2207484) (not e!3236331))))

(assert (=> d!1677219 (= res!2207484 (matchR!6947 (regOne!30036 r!7292) Nil!60463))))

(assert (=> d!1677219 (validRegex!6498 (regOne!30036 r!7292))))

(assert (=> d!1677219 (= (findConcatSeparation!1287 (regOne!30036 r!7292) (regTwo!30036 r!7292) Nil!60463 s!2326 s!2326) lt!2139117)))

(declare-fun b!5196627 () Bool)

(declare-fun lt!2139118 () Unit!152358)

(declare-fun lt!2139116 () Unit!152358)

(assert (=> b!5196627 (= lt!2139118 lt!2139116)))

(assert (=> b!5196627 (= (++!13188 (++!13188 Nil!60463 (Cons!60463 (h!66911 s!2326) Nil!60463)) (t!373740 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1603 (List!60587 C!29794 List!60587 List!60587) Unit!152358)

(assert (=> b!5196627 (= lt!2139116 (lemmaMoveElementToOtherListKeepsConcatEq!1603 Nil!60463 (h!66911 s!2326) (t!373740 s!2326) s!2326))))

(assert (=> b!5196627 (= e!3236332 (findConcatSeparation!1287 (regOne!30036 r!7292) (regTwo!30036 r!7292) (++!13188 Nil!60463 (Cons!60463 (h!66911 s!2326) Nil!60463)) (t!373740 s!2326) s!2326))))

(declare-fun b!5196628 () Bool)

(declare-fun res!2207482 () Bool)

(assert (=> b!5196628 (=> (not res!2207482) (not e!3236329))))

(assert (=> b!5196628 (= res!2207482 (matchR!6947 (regTwo!30036 r!7292) (_2!35264 (get!20775 lt!2139117))))))

(declare-fun b!5196629 () Bool)

(assert (=> b!5196629 (= e!3236330 (Some!14872 (tuple2!63923 Nil!60463 s!2326)))))

(declare-fun b!5196630 () Bool)

(assert (=> b!5196630 (= e!3236331 (matchR!6947 (regTwo!30036 r!7292) s!2326))))

(declare-fun b!5196631 () Bool)

(assert (=> b!5196631 (= e!3236333 (not (isDefined!11576 lt!2139117)))))

(assert (= (and d!1677219 res!2207484) b!5196630))

(assert (= (and d!1677219 c!895656) b!5196629))

(assert (= (and d!1677219 (not c!895656)) b!5196626))

(assert (= (and b!5196626 c!895655) b!5196625))

(assert (= (and b!5196626 (not c!895655)) b!5196627))

(assert (= (and d!1677219 res!2207483) b!5196623))

(assert (= (and b!5196623 res!2207480) b!5196628))

(assert (= (and b!5196628 res!2207482) b!5196624))

(assert (= (and d!1677219 (not res!2207481)) b!5196631))

(declare-fun m!6250520 () Bool)

(assert (=> d!1677219 m!6250520))

(declare-fun m!6250522 () Bool)

(assert (=> d!1677219 m!6250522))

(assert (=> d!1677219 m!6250292))

(declare-fun m!6250524 () Bool)

(assert (=> b!5196627 m!6250524))

(assert (=> b!5196627 m!6250524))

(declare-fun m!6250526 () Bool)

(assert (=> b!5196627 m!6250526))

(declare-fun m!6250528 () Bool)

(assert (=> b!5196627 m!6250528))

(assert (=> b!5196627 m!6250524))

(declare-fun m!6250530 () Bool)

(assert (=> b!5196627 m!6250530))

(declare-fun m!6250532 () Bool)

(assert (=> b!5196628 m!6250532))

(declare-fun m!6250534 () Bool)

(assert (=> b!5196628 m!6250534))

(assert (=> b!5196623 m!6250532))

(declare-fun m!6250536 () Bool)

(assert (=> b!5196623 m!6250536))

(assert (=> b!5196624 m!6250532))

(declare-fun m!6250538 () Bool)

(assert (=> b!5196624 m!6250538))

(declare-fun m!6250540 () Bool)

(assert (=> b!5196630 m!6250540))

(assert (=> b!5196631 m!6250520))

(assert (=> b!5196244 d!1677219))

(declare-fun d!1677221 () Bool)

(declare-fun choose!38604 (Int) Bool)

(assert (=> d!1677221 (= (Exists!1943 lambda!260040) (choose!38604 lambda!260040))))

(declare-fun bs!1208945 () Bool)

(assert (= bs!1208945 d!1677221))

(declare-fun m!6250542 () Bool)

(assert (=> bs!1208945 m!6250542))

(assert (=> b!5196244 d!1677221))

(declare-fun d!1677223 () Bool)

(assert (=> d!1677223 (= (Exists!1943 lambda!260041) (choose!38604 lambda!260041))))

(declare-fun bs!1208946 () Bool)

(assert (= bs!1208946 d!1677223))

(declare-fun m!6250544 () Bool)

(assert (=> bs!1208946 m!6250544))

(assert (=> b!5196244 d!1677223))

(declare-fun bs!1208950 () Bool)

(declare-fun d!1677225 () Bool)

(assert (= bs!1208950 (and d!1677225 b!5196244)))

(declare-fun lambda!260094 () Int)

(assert (=> bs!1208950 (= lambda!260094 lambda!260040)))

(assert (=> bs!1208950 (not (= lambda!260094 lambda!260041))))

(declare-fun bs!1208951 () Bool)

(assert (= bs!1208951 (and d!1677225 b!5196398)))

(assert (=> bs!1208951 (not (= lambda!260094 lambda!260065))))

(declare-fun bs!1208952 () Bool)

(assert (= bs!1208952 (and d!1677225 b!5196389)))

(assert (=> bs!1208952 (not (= lambda!260094 lambda!260066))))

(assert (=> d!1677225 true))

(assert (=> d!1677225 true))

(assert (=> d!1677225 true))

(assert (=> d!1677225 (= (isDefined!11576 (findConcatSeparation!1287 (regOne!30036 r!7292) (regTwo!30036 r!7292) Nil!60463 s!2326 s!2326)) (Exists!1943 lambda!260094))))

(declare-fun lt!2139121 () Unit!152358)

(declare-fun choose!38605 (Regex!14762 Regex!14762 List!60587) Unit!152358)

(assert (=> d!1677225 (= lt!2139121 (choose!38605 (regOne!30036 r!7292) (regTwo!30036 r!7292) s!2326))))

(assert (=> d!1677225 (validRegex!6498 (regOne!30036 r!7292))))

(assert (=> d!1677225 (= (lemmaFindConcatSeparationEquivalentToExists!1051 (regOne!30036 r!7292) (regTwo!30036 r!7292) s!2326) lt!2139121)))

(declare-fun bs!1208953 () Bool)

(assert (= bs!1208953 d!1677225))

(assert (=> bs!1208953 m!6250274))

(assert (=> bs!1208953 m!6250274))

(assert (=> bs!1208953 m!6250276))

(assert (=> bs!1208953 m!6250292))

(declare-fun m!6250554 () Bool)

(assert (=> bs!1208953 m!6250554))

(declare-fun m!6250556 () Bool)

(assert (=> bs!1208953 m!6250556))

(assert (=> b!5196244 d!1677225))

(declare-fun bs!1208954 () Bool)

(declare-fun d!1677229 () Bool)

(assert (= bs!1208954 (and d!1677229 d!1677225)))

(declare-fun lambda!260099 () Int)

(assert (=> bs!1208954 (= lambda!260099 lambda!260094)))

(declare-fun bs!1208955 () Bool)

(assert (= bs!1208955 (and d!1677229 b!5196398)))

(assert (=> bs!1208955 (not (= lambda!260099 lambda!260065))))

(declare-fun bs!1208956 () Bool)

(assert (= bs!1208956 (and d!1677229 b!5196389)))

(assert (=> bs!1208956 (not (= lambda!260099 lambda!260066))))

(declare-fun bs!1208957 () Bool)

(assert (= bs!1208957 (and d!1677229 b!5196244)))

(assert (=> bs!1208957 (= lambda!260099 lambda!260040)))

(assert (=> bs!1208957 (not (= lambda!260099 lambda!260041))))

(assert (=> d!1677229 true))

(assert (=> d!1677229 true))

(assert (=> d!1677229 true))

(declare-fun bs!1208958 () Bool)

(assert (= bs!1208958 d!1677229))

(declare-fun lambda!260100 () Int)

(assert (=> bs!1208958 (not (= lambda!260100 lambda!260099))))

(assert (=> bs!1208954 (not (= lambda!260100 lambda!260094))))

(assert (=> bs!1208955 (not (= lambda!260100 lambda!260065))))

(assert (=> bs!1208956 (= lambda!260100 lambda!260066)))

(assert (=> bs!1208957 (not (= lambda!260100 lambda!260040))))

(assert (=> bs!1208957 (= lambda!260100 lambda!260041)))

(assert (=> d!1677229 true))

(assert (=> d!1677229 true))

(assert (=> d!1677229 true))

(assert (=> d!1677229 (= (Exists!1943 lambda!260099) (Exists!1943 lambda!260100))))

(declare-fun lt!2139126 () Unit!152358)

(declare-fun choose!38607 (Regex!14762 Regex!14762 List!60587) Unit!152358)

(assert (=> d!1677229 (= lt!2139126 (choose!38607 (regOne!30036 r!7292) (regTwo!30036 r!7292) s!2326))))

(assert (=> d!1677229 (validRegex!6498 (regOne!30036 r!7292))))

(assert (=> d!1677229 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!597 (regOne!30036 r!7292) (regTwo!30036 r!7292) s!2326) lt!2139126)))

(declare-fun m!6250558 () Bool)

(assert (=> bs!1208958 m!6250558))

(declare-fun m!6250560 () Bool)

(assert (=> bs!1208958 m!6250560))

(declare-fun m!6250562 () Bool)

(assert (=> bs!1208958 m!6250562))

(assert (=> bs!1208958 m!6250292))

(assert (=> b!5196244 d!1677229))

(declare-fun d!1677231 () Bool)

(declare-fun isEmpty!32381 (Option!14873) Bool)

(assert (=> d!1677231 (= (isDefined!11576 (findConcatSeparation!1287 (regOne!30036 r!7292) (regTwo!30036 r!7292) Nil!60463 s!2326 s!2326)) (not (isEmpty!32381 (findConcatSeparation!1287 (regOne!30036 r!7292) (regTwo!30036 r!7292) Nil!60463 s!2326 s!2326))))))

(declare-fun bs!1208959 () Bool)

(assert (= bs!1208959 d!1677231))

(assert (=> bs!1208959 m!6250274))

(declare-fun m!6250564 () Bool)

(assert (=> bs!1208959 m!6250564))

(assert (=> b!5196244 d!1677231))

(declare-fun d!1677233 () Bool)

(declare-fun lt!2139129 () Regex!14762)

(assert (=> d!1677233 (validRegex!6498 lt!2139129)))

(assert (=> d!1677233 (= lt!2139129 (generalisedUnion!691 (unfocusZipperList!204 zl!343)))))

(assert (=> d!1677233 (= (unfocusZipper!504 zl!343) lt!2139129)))

(declare-fun bs!1208960 () Bool)

(assert (= bs!1208960 d!1677233))

(declare-fun m!6250566 () Bool)

(assert (=> bs!1208960 m!6250566))

(assert (=> bs!1208960 m!6250312))

(assert (=> bs!1208960 m!6250312))

(assert (=> bs!1208960 m!6250314))

(assert (=> b!5196237 d!1677233))

(declare-fun bs!1208961 () Bool)

(declare-fun d!1677235 () Bool)

(assert (= bs!1208961 (and d!1677235 d!1677193)))

(declare-fun lambda!260103 () Int)

(assert (=> bs!1208961 (= lambda!260103 lambda!260071)))

(declare-fun bs!1208962 () Bool)

(assert (= bs!1208962 (and d!1677235 d!1677195)))

(assert (=> bs!1208962 (= lambda!260103 lambda!260075)))

(declare-fun bs!1208963 () Bool)

(assert (= bs!1208963 (and d!1677235 d!1677215)))

(assert (=> bs!1208963 (= lambda!260103 lambda!260086)))

(declare-fun bs!1208964 () Bool)

(assert (= bs!1208964 (and d!1677235 d!1677217)))

(assert (=> bs!1208964 (= lambda!260103 lambda!260087)))

(declare-fun b!5196717 () Bool)

(declare-fun e!3236384 () Bool)

(declare-fun lt!2139133 () Regex!14762)

(declare-fun isConcat!268 (Regex!14762) Bool)

(assert (=> b!5196717 (= e!3236384 (isConcat!268 lt!2139133))))

(declare-fun b!5196718 () Bool)

(assert (=> b!5196718 (= e!3236384 (= lt!2139133 (head!11138 (exprs!4646 (h!66910 zl!343)))))))

(declare-fun b!5196719 () Bool)

(declare-fun e!3236380 () Bool)

(declare-fun isEmptyExpr!745 (Regex!14762) Bool)

(assert (=> b!5196719 (= e!3236380 (isEmptyExpr!745 lt!2139133))))

(declare-fun b!5196720 () Bool)

(assert (=> b!5196720 (= e!3236380 e!3236384)))

(declare-fun c!895681 () Bool)

(assert (=> b!5196720 (= c!895681 (isEmpty!32376 (tail!10235 (exprs!4646 (h!66910 zl!343)))))))

(declare-fun b!5196721 () Bool)

(declare-fun e!3236382 () Regex!14762)

(declare-fun e!3236385 () Regex!14762)

(assert (=> b!5196721 (= e!3236382 e!3236385)))

(declare-fun c!895680 () Bool)

(assert (=> b!5196721 (= c!895680 (is-Cons!60461 (exprs!4646 (h!66910 zl!343))))))

(declare-fun b!5196722 () Bool)

(assert (=> b!5196722 (= e!3236382 (h!66909 (exprs!4646 (h!66910 zl!343))))))

(declare-fun b!5196723 () Bool)

(assert (=> b!5196723 (= e!3236385 EmptyExpr!14762)))

(declare-fun b!5196724 () Bool)

(assert (=> b!5196724 (= e!3236385 (Concat!23607 (h!66909 (exprs!4646 (h!66910 zl!343))) (generalisedConcat!431 (t!373738 (exprs!4646 (h!66910 zl!343))))))))

(declare-fun b!5196726 () Bool)

(declare-fun e!3236383 () Bool)

(assert (=> b!5196726 (= e!3236383 (isEmpty!32376 (t!373738 (exprs!4646 (h!66910 zl!343)))))))

(declare-fun b!5196725 () Bool)

(declare-fun e!3236381 () Bool)

(assert (=> b!5196725 (= e!3236381 e!3236380)))

(declare-fun c!895678 () Bool)

(assert (=> b!5196725 (= c!895678 (isEmpty!32376 (exprs!4646 (h!66910 zl!343))))))

(assert (=> d!1677235 e!3236381))

(declare-fun res!2207529 () Bool)

(assert (=> d!1677235 (=> (not res!2207529) (not e!3236381))))

(assert (=> d!1677235 (= res!2207529 (validRegex!6498 lt!2139133))))

(assert (=> d!1677235 (= lt!2139133 e!3236382)))

(declare-fun c!895679 () Bool)

(assert (=> d!1677235 (= c!895679 e!3236383)))

(declare-fun res!2207528 () Bool)

(assert (=> d!1677235 (=> (not res!2207528) (not e!3236383))))

(assert (=> d!1677235 (= res!2207528 (is-Cons!60461 (exprs!4646 (h!66910 zl!343))))))

(assert (=> d!1677235 (forall!14217 (exprs!4646 (h!66910 zl!343)) lambda!260103)))

(assert (=> d!1677235 (= (generalisedConcat!431 (exprs!4646 (h!66910 zl!343))) lt!2139133)))

(assert (= (and d!1677235 res!2207528) b!5196726))

(assert (= (and d!1677235 c!895679) b!5196722))

(assert (= (and d!1677235 (not c!895679)) b!5196721))

(assert (= (and b!5196721 c!895680) b!5196724))

(assert (= (and b!5196721 (not c!895680)) b!5196723))

(assert (= (and d!1677235 res!2207529) b!5196725))

(assert (= (and b!5196725 c!895678) b!5196719))

(assert (= (and b!5196725 (not c!895678)) b!5196720))

(assert (= (and b!5196720 c!895681) b!5196718))

(assert (= (and b!5196720 (not c!895681)) b!5196717))

(declare-fun m!6250580 () Bool)

(assert (=> b!5196718 m!6250580))

(declare-fun m!6250582 () Bool)

(assert (=> b!5196725 m!6250582))

(declare-fun m!6250584 () Bool)

(assert (=> b!5196724 m!6250584))

(assert (=> b!5196726 m!6250270))

(declare-fun m!6250586 () Bool)

(assert (=> b!5196720 m!6250586))

(assert (=> b!5196720 m!6250586))

(declare-fun m!6250588 () Bool)

(assert (=> b!5196720 m!6250588))

(declare-fun m!6250590 () Bool)

(assert (=> b!5196719 m!6250590))

(declare-fun m!6250592 () Bool)

(assert (=> b!5196717 m!6250592))

(declare-fun m!6250594 () Bool)

(assert (=> d!1677235 m!6250594))

(declare-fun m!6250596 () Bool)

(assert (=> d!1677235 m!6250596))

(assert (=> b!5196248 d!1677235))

(declare-fun call!365281 () (Set Context!8292))

(declare-fun b!5196727 () Bool)

(declare-fun e!3236388 () (Set Context!8292))

(assert (=> b!5196727 (= e!3236388 (set.union call!365281 (derivationStepZipperUp!134 (Context!8293 (t!373738 (exprs!4646 lt!2139030))) (h!66911 s!2326))))))

(declare-fun d!1677239 () Bool)

(declare-fun c!895682 () Bool)

(declare-fun e!3236386 () Bool)

(assert (=> d!1677239 (= c!895682 e!3236386)))

(declare-fun res!2207530 () Bool)

(assert (=> d!1677239 (=> (not res!2207530) (not e!3236386))))

(assert (=> d!1677239 (= res!2207530 (is-Cons!60461 (exprs!4646 lt!2139030)))))

(assert (=> d!1677239 (= (derivationStepZipperUp!134 lt!2139030 (h!66911 s!2326)) e!3236388)))

(declare-fun b!5196728 () Bool)

(declare-fun e!3236387 () (Set Context!8292))

(assert (=> b!5196728 (= e!3236388 e!3236387)))

(declare-fun c!895683 () Bool)

(assert (=> b!5196728 (= c!895683 (is-Cons!60461 (exprs!4646 lt!2139030)))))

(declare-fun b!5196729 () Bool)

(assert (=> b!5196729 (= e!3236386 (nullable!4933 (h!66909 (exprs!4646 lt!2139030))))))

(declare-fun bm!365276 () Bool)

(assert (=> bm!365276 (= call!365281 (derivationStepZipperDown!211 (h!66909 (exprs!4646 lt!2139030)) (Context!8293 (t!373738 (exprs!4646 lt!2139030))) (h!66911 s!2326)))))

(declare-fun b!5196730 () Bool)

(assert (=> b!5196730 (= e!3236387 call!365281)))

(declare-fun b!5196731 () Bool)

(assert (=> b!5196731 (= e!3236387 (as set.empty (Set Context!8292)))))

(assert (= (and d!1677239 res!2207530) b!5196729))

(assert (= (and d!1677239 c!895682) b!5196727))

(assert (= (and d!1677239 (not c!895682)) b!5196728))

(assert (= (and b!5196728 c!895683) b!5196730))

(assert (= (and b!5196728 (not c!895683)) b!5196731))

(assert (= (or b!5196727 b!5196730) bm!365276))

(declare-fun m!6250598 () Bool)

(assert (=> b!5196727 m!6250598))

(declare-fun m!6250600 () Bool)

(assert (=> b!5196729 m!6250600))

(declare-fun m!6250602 () Bool)

(assert (=> bm!365276 m!6250602))

(assert (=> b!5196246 d!1677239))

(declare-fun d!1677241 () Bool)

(assert (=> d!1677241 (= (flatMap!493 lt!2139025 lambda!260042) (choose!38601 lt!2139025 lambda!260042))))

(declare-fun bs!1208965 () Bool)

(assert (= bs!1208965 d!1677241))

(declare-fun m!6250604 () Bool)

(assert (=> bs!1208965 m!6250604))

(assert (=> b!5196246 d!1677241))

(declare-fun d!1677243 () Bool)

(assert (=> d!1677243 (= (flatMap!493 lt!2139026 lambda!260042) (choose!38601 lt!2139026 lambda!260042))))

(declare-fun bs!1208966 () Bool)

(assert (= bs!1208966 d!1677243))

(declare-fun m!6250606 () Bool)

(assert (=> bs!1208966 m!6250606))

(assert (=> b!5196246 d!1677243))

(declare-fun call!365282 () (Set Context!8292))

(declare-fun e!3236391 () (Set Context!8292))

(declare-fun b!5196732 () Bool)

(assert (=> b!5196732 (= e!3236391 (set.union call!365282 (derivationStepZipperUp!134 (Context!8293 (t!373738 (exprs!4646 lt!2139019))) (h!66911 s!2326))))))

(declare-fun d!1677245 () Bool)

(declare-fun c!895684 () Bool)

(declare-fun e!3236389 () Bool)

(assert (=> d!1677245 (= c!895684 e!3236389)))

(declare-fun res!2207531 () Bool)

(assert (=> d!1677245 (=> (not res!2207531) (not e!3236389))))

(assert (=> d!1677245 (= res!2207531 (is-Cons!60461 (exprs!4646 lt!2139019)))))

(assert (=> d!1677245 (= (derivationStepZipperUp!134 lt!2139019 (h!66911 s!2326)) e!3236391)))

(declare-fun b!5196733 () Bool)

(declare-fun e!3236390 () (Set Context!8292))

(assert (=> b!5196733 (= e!3236391 e!3236390)))

(declare-fun c!895685 () Bool)

(assert (=> b!5196733 (= c!895685 (is-Cons!60461 (exprs!4646 lt!2139019)))))

(declare-fun b!5196734 () Bool)

(assert (=> b!5196734 (= e!3236389 (nullable!4933 (h!66909 (exprs!4646 lt!2139019))))))

(declare-fun bm!365277 () Bool)

(assert (=> bm!365277 (= call!365282 (derivationStepZipperDown!211 (h!66909 (exprs!4646 lt!2139019)) (Context!8293 (t!373738 (exprs!4646 lt!2139019))) (h!66911 s!2326)))))

(declare-fun b!5196735 () Bool)

(assert (=> b!5196735 (= e!3236390 call!365282)))

(declare-fun b!5196736 () Bool)

(assert (=> b!5196736 (= e!3236390 (as set.empty (Set Context!8292)))))

(assert (= (and d!1677245 res!2207531) b!5196734))

(assert (= (and d!1677245 c!895684) b!5196732))

(assert (= (and d!1677245 (not c!895684)) b!5196733))

(assert (= (and b!5196733 c!895685) b!5196735))

(assert (= (and b!5196733 (not c!895685)) b!5196736))

(assert (= (or b!5196732 b!5196735) bm!365277))

(declare-fun m!6250610 () Bool)

(assert (=> b!5196732 m!6250610))

(declare-fun m!6250612 () Bool)

(assert (=> b!5196734 m!6250612))

(declare-fun m!6250614 () Bool)

(assert (=> bm!365277 m!6250614))

(assert (=> b!5196246 d!1677245))

(declare-fun d!1677249 () Bool)

(assert (=> d!1677249 (= (flatMap!493 lt!2139025 lambda!260042) (dynLambda!23902 lambda!260042 lt!2139019))))

(declare-fun lt!2139137 () Unit!152358)

(assert (=> d!1677249 (= lt!2139137 (choose!38602 lt!2139025 lt!2139019 lambda!260042))))

(assert (=> d!1677249 (= lt!2139025 (set.insert lt!2139019 (as set.empty (Set Context!8292))))))

(assert (=> d!1677249 (= (lemmaFlatMapOnSingletonSet!25 lt!2139025 lt!2139019 lambda!260042) lt!2139137)))

(declare-fun b_lambda!201209 () Bool)

(assert (=> (not b_lambda!201209) (not d!1677249)))

(declare-fun bs!1208968 () Bool)

(assert (= bs!1208968 d!1677249))

(assert (=> bs!1208968 m!6250308))

(declare-fun m!6250616 () Bool)

(assert (=> bs!1208968 m!6250616))

(declare-fun m!6250618 () Bool)

(assert (=> bs!1208968 m!6250618))

(assert (=> bs!1208968 m!6250302))

(assert (=> b!5196246 d!1677249))

(declare-fun b!5196755 () Bool)

(declare-fun e!3236409 () Bool)

(declare-fun e!3236410 () Bool)

(assert (=> b!5196755 (= e!3236409 e!3236410)))

(declare-fun c!895690 () Bool)

(assert (=> b!5196755 (= c!895690 (is-Star!14762 (regOne!30036 r!7292)))))

(declare-fun bm!365284 () Bool)

(declare-fun call!365290 () Bool)

(declare-fun c!895691 () Bool)

(assert (=> bm!365284 (= call!365290 (validRegex!6498 (ite c!895691 (regOne!30037 (regOne!30036 r!7292)) (regOne!30036 (regOne!30036 r!7292)))))))

(declare-fun b!5196756 () Bool)

(declare-fun e!3236407 () Bool)

(declare-fun call!365289 () Bool)

(assert (=> b!5196756 (= e!3236407 call!365289)))

(declare-fun b!5196757 () Bool)

(declare-fun e!3236412 () Bool)

(declare-fun e!3236408 () Bool)

(assert (=> b!5196757 (= e!3236412 e!3236408)))

(declare-fun res!2207543 () Bool)

(assert (=> b!5196757 (=> (not res!2207543) (not e!3236408))))

(assert (=> b!5196757 (= res!2207543 call!365290)))

(declare-fun b!5196758 () Bool)

(assert (=> b!5196758 (= e!3236410 e!3236407)))

(declare-fun res!2207546 () Bool)

(assert (=> b!5196758 (= res!2207546 (not (nullable!4933 (reg!15091 (regOne!30036 r!7292)))))))

(assert (=> b!5196758 (=> (not res!2207546) (not e!3236407))))

(declare-fun bm!365285 () Bool)

(declare-fun call!365291 () Bool)

(assert (=> bm!365285 (= call!365291 call!365289)))

(declare-fun b!5196759 () Bool)

(assert (=> b!5196759 (= e!3236408 call!365291)))

(declare-fun bm!365286 () Bool)

(assert (=> bm!365286 (= call!365289 (validRegex!6498 (ite c!895690 (reg!15091 (regOne!30036 r!7292)) (ite c!895691 (regTwo!30037 (regOne!30036 r!7292)) (regTwo!30036 (regOne!30036 r!7292))))))))

(declare-fun d!1677251 () Bool)

(declare-fun res!2207545 () Bool)

(assert (=> d!1677251 (=> res!2207545 e!3236409)))

(assert (=> d!1677251 (= res!2207545 (is-ElementMatch!14762 (regOne!30036 r!7292)))))

(assert (=> d!1677251 (= (validRegex!6498 (regOne!30036 r!7292)) e!3236409)))

(declare-fun b!5196760 () Bool)

(declare-fun res!2207544 () Bool)

(declare-fun e!3236411 () Bool)

(assert (=> b!5196760 (=> (not res!2207544) (not e!3236411))))

(assert (=> b!5196760 (= res!2207544 call!365290)))

(declare-fun e!3236406 () Bool)

(assert (=> b!5196760 (= e!3236406 e!3236411)))

(declare-fun b!5196761 () Bool)

(assert (=> b!5196761 (= e!3236411 call!365291)))

(declare-fun b!5196762 () Bool)

(declare-fun res!2207542 () Bool)

(assert (=> b!5196762 (=> res!2207542 e!3236412)))

(assert (=> b!5196762 (= res!2207542 (not (is-Concat!23607 (regOne!30036 r!7292))))))

(assert (=> b!5196762 (= e!3236406 e!3236412)))

(declare-fun b!5196763 () Bool)

(assert (=> b!5196763 (= e!3236410 e!3236406)))

(assert (=> b!5196763 (= c!895691 (is-Union!14762 (regOne!30036 r!7292)))))

(assert (= (and d!1677251 (not res!2207545)) b!5196755))

(assert (= (and b!5196755 c!895690) b!5196758))

(assert (= (and b!5196755 (not c!895690)) b!5196763))

(assert (= (and b!5196758 res!2207546) b!5196756))

(assert (= (and b!5196763 c!895691) b!5196760))

(assert (= (and b!5196763 (not c!895691)) b!5196762))

(assert (= (and b!5196760 res!2207544) b!5196761))

(assert (= (and b!5196762 (not res!2207542)) b!5196757))

(assert (= (and b!5196757 res!2207543) b!5196759))

(assert (= (or b!5196761 b!5196759) bm!365285))

(assert (= (or b!5196760 b!5196757) bm!365284))

(assert (= (or b!5196756 bm!365285) bm!365286))

(declare-fun m!6250620 () Bool)

(assert (=> bm!365284 m!6250620))

(declare-fun m!6250622 () Bool)

(assert (=> b!5196758 m!6250622))

(declare-fun m!6250624 () Bool)

(assert (=> bm!365286 m!6250624))

(assert (=> b!5196246 d!1677251))

(declare-fun d!1677253 () Bool)

(assert (=> d!1677253 (= (flatMap!493 lt!2139026 lambda!260042) (dynLambda!23902 lambda!260042 lt!2139030))))

(declare-fun lt!2139138 () Unit!152358)

(assert (=> d!1677253 (= lt!2139138 (choose!38602 lt!2139026 lt!2139030 lambda!260042))))

(assert (=> d!1677253 (= lt!2139026 (set.insert lt!2139030 (as set.empty (Set Context!8292))))))

(assert (=> d!1677253 (= (lemmaFlatMapOnSingletonSet!25 lt!2139026 lt!2139030 lambda!260042) lt!2139138)))

(declare-fun b_lambda!201211 () Bool)

(assert (=> (not b_lambda!201211) (not d!1677253)))

(declare-fun bs!1208969 () Bool)

(assert (= bs!1208969 d!1677253))

(assert (=> bs!1208969 m!6250298))

(declare-fun m!6250626 () Bool)

(assert (=> bs!1208969 m!6250626))

(declare-fun m!6250628 () Bool)

(assert (=> bs!1208969 m!6250628))

(assert (=> bs!1208969 m!6250300))

(assert (=> b!5196246 d!1677253))

(declare-fun d!1677255 () Bool)

(declare-fun e!3236427 () Bool)

(assert (=> d!1677255 e!3236427))

(declare-fun res!2207551 () Bool)

(assert (=> d!1677255 (=> (not res!2207551) (not e!3236427))))

(declare-fun lt!2139141 () List!60586)

(declare-fun noDuplicate!1164 (List!60586) Bool)

(assert (=> d!1677255 (= res!2207551 (noDuplicate!1164 lt!2139141))))

(declare-fun choose!38608 ((Set Context!8292)) List!60586)

(assert (=> d!1677255 (= lt!2139141 (choose!38608 z!1189))))

(assert (=> d!1677255 (= (toList!8546 z!1189) lt!2139141)))

(declare-fun b!5196788 () Bool)

(declare-fun content!10702 (List!60586) (Set Context!8292))

(assert (=> b!5196788 (= e!3236427 (= (content!10702 lt!2139141) z!1189))))

(assert (= (and d!1677255 res!2207551) b!5196788))

(declare-fun m!6250630 () Bool)

(assert (=> d!1677255 m!6250630))

(declare-fun m!6250632 () Bool)

(assert (=> d!1677255 m!6250632))

(declare-fun m!6250634 () Bool)

(assert (=> b!5196788 m!6250634))

(assert (=> b!5196256 d!1677255))

(declare-fun d!1677257 () Bool)

(assert (=> d!1677257 (= (isEmpty!32376 (t!373738 (exprs!4646 (h!66910 zl!343)))) (is-Nil!60461 (t!373738 (exprs!4646 (h!66910 zl!343)))))))

(assert (=> b!5196240 d!1677257))

(declare-fun b!5196789 () Bool)

(declare-fun e!3236431 () Bool)

(declare-fun e!3236432 () Bool)

(assert (=> b!5196789 (= e!3236431 e!3236432)))

(declare-fun c!895702 () Bool)

(assert (=> b!5196789 (= c!895702 (is-Star!14762 r!7292))))

(declare-fun bm!365289 () Bool)

(declare-fun call!365295 () Bool)

(declare-fun c!895703 () Bool)

(assert (=> bm!365289 (= call!365295 (validRegex!6498 (ite c!895703 (regOne!30037 r!7292) (regOne!30036 r!7292))))))

(declare-fun b!5196790 () Bool)

(declare-fun e!3236429 () Bool)

(declare-fun call!365294 () Bool)

(assert (=> b!5196790 (= e!3236429 call!365294)))

(declare-fun b!5196791 () Bool)

(declare-fun e!3236434 () Bool)

(declare-fun e!3236430 () Bool)

(assert (=> b!5196791 (= e!3236434 e!3236430)))

(declare-fun res!2207553 () Bool)

(assert (=> b!5196791 (=> (not res!2207553) (not e!3236430))))

(assert (=> b!5196791 (= res!2207553 call!365295)))

(declare-fun b!5196792 () Bool)

(assert (=> b!5196792 (= e!3236432 e!3236429)))

(declare-fun res!2207556 () Bool)

(assert (=> b!5196792 (= res!2207556 (not (nullable!4933 (reg!15091 r!7292))))))

(assert (=> b!5196792 (=> (not res!2207556) (not e!3236429))))

(declare-fun bm!365290 () Bool)

(declare-fun call!365296 () Bool)

(assert (=> bm!365290 (= call!365296 call!365294)))

(declare-fun b!5196793 () Bool)

(assert (=> b!5196793 (= e!3236430 call!365296)))

(declare-fun bm!365291 () Bool)

(assert (=> bm!365291 (= call!365294 (validRegex!6498 (ite c!895702 (reg!15091 r!7292) (ite c!895703 (regTwo!30037 r!7292) (regTwo!30036 r!7292)))))))

(declare-fun d!1677259 () Bool)

(declare-fun res!2207555 () Bool)

(assert (=> d!1677259 (=> res!2207555 e!3236431)))

(assert (=> d!1677259 (= res!2207555 (is-ElementMatch!14762 r!7292))))

(assert (=> d!1677259 (= (validRegex!6498 r!7292) e!3236431)))

(declare-fun b!5196794 () Bool)

(declare-fun res!2207554 () Bool)

(declare-fun e!3236433 () Bool)

(assert (=> b!5196794 (=> (not res!2207554) (not e!3236433))))

(assert (=> b!5196794 (= res!2207554 call!365295)))

(declare-fun e!3236428 () Bool)

(assert (=> b!5196794 (= e!3236428 e!3236433)))

(declare-fun b!5196795 () Bool)

(assert (=> b!5196795 (= e!3236433 call!365296)))

(declare-fun b!5196796 () Bool)

(declare-fun res!2207552 () Bool)

(assert (=> b!5196796 (=> res!2207552 e!3236434)))

(assert (=> b!5196796 (= res!2207552 (not (is-Concat!23607 r!7292)))))

(assert (=> b!5196796 (= e!3236428 e!3236434)))

(declare-fun b!5196797 () Bool)

(assert (=> b!5196797 (= e!3236432 e!3236428)))

(assert (=> b!5196797 (= c!895703 (is-Union!14762 r!7292))))

(assert (= (and d!1677259 (not res!2207555)) b!5196789))

(assert (= (and b!5196789 c!895702) b!5196792))

(assert (= (and b!5196789 (not c!895702)) b!5196797))

(assert (= (and b!5196792 res!2207556) b!5196790))

(assert (= (and b!5196797 c!895703) b!5196794))

(assert (= (and b!5196797 (not c!895703)) b!5196796))

(assert (= (and b!5196794 res!2207554) b!5196795))

(assert (= (and b!5196796 (not res!2207552)) b!5196791))

(assert (= (and b!5196791 res!2207553) b!5196793))

(assert (= (or b!5196795 b!5196793) bm!365290))

(assert (= (or b!5196794 b!5196791) bm!365289))

(assert (= (or b!5196790 bm!365290) bm!365291))

(declare-fun m!6250636 () Bool)

(assert (=> bm!365289 m!6250636))

(declare-fun m!6250638 () Bool)

(assert (=> b!5196792 m!6250638))

(declare-fun m!6250640 () Bool)

(assert (=> bm!365291 m!6250640))

(assert (=> start!549804 d!1677259))

(declare-fun b!5196802 () Bool)

(declare-fun e!3236437 () Bool)

(declare-fun tp!1457786 () Bool)

(declare-fun tp!1457787 () Bool)

(assert (=> b!5196802 (= e!3236437 (and tp!1457786 tp!1457787))))

(assert (=> b!5196247 (= tp!1457745 e!3236437)))

(assert (= (and b!5196247 (is-Cons!60461 (exprs!4646 setElem!32899))) b!5196802))

(declare-fun b!5196807 () Bool)

(declare-fun e!3236440 () Bool)

(declare-fun tp!1457790 () Bool)

(assert (=> b!5196807 (= e!3236440 (and tp_is_empty!38777 tp!1457790))))

(assert (=> b!5196251 (= tp!1457751 e!3236440)))

(assert (= (and b!5196251 (is-Cons!60463 (t!373740 s!2326))) b!5196807))

(declare-fun b!5196808 () Bool)

(declare-fun e!3236441 () Bool)

(declare-fun tp!1457791 () Bool)

(declare-fun tp!1457792 () Bool)

(assert (=> b!5196808 (= e!3236441 (and tp!1457791 tp!1457792))))

(assert (=> b!5196236 (= tp!1457749 e!3236441)))

(assert (= (and b!5196236 (is-Cons!60461 (exprs!4646 (h!66910 zl!343)))) b!5196808))

(declare-fun b!5196822 () Bool)

(declare-fun e!3236444 () Bool)

(declare-fun tp!1457803 () Bool)

(declare-fun tp!1457806 () Bool)

(assert (=> b!5196822 (= e!3236444 (and tp!1457803 tp!1457806))))

(declare-fun b!5196819 () Bool)

(assert (=> b!5196819 (= e!3236444 tp_is_empty!38777)))

(declare-fun b!5196820 () Bool)

(declare-fun tp!1457804 () Bool)

(declare-fun tp!1457807 () Bool)

(assert (=> b!5196820 (= e!3236444 (and tp!1457804 tp!1457807))))

(assert (=> b!5196245 (= tp!1457744 e!3236444)))

(declare-fun b!5196821 () Bool)

(declare-fun tp!1457805 () Bool)

(assert (=> b!5196821 (= e!3236444 tp!1457805)))

(assert (= (and b!5196245 (is-ElementMatch!14762 (regOne!30036 r!7292))) b!5196819))

(assert (= (and b!5196245 (is-Concat!23607 (regOne!30036 r!7292))) b!5196820))

(assert (= (and b!5196245 (is-Star!14762 (regOne!30036 r!7292))) b!5196821))

(assert (= (and b!5196245 (is-Union!14762 (regOne!30036 r!7292))) b!5196822))

(declare-fun b!5196826 () Bool)

(declare-fun e!3236445 () Bool)

(declare-fun tp!1457808 () Bool)

(declare-fun tp!1457811 () Bool)

(assert (=> b!5196826 (= e!3236445 (and tp!1457808 tp!1457811))))

(declare-fun b!5196823 () Bool)

(assert (=> b!5196823 (= e!3236445 tp_is_empty!38777)))

(declare-fun b!5196824 () Bool)

(declare-fun tp!1457809 () Bool)

(declare-fun tp!1457812 () Bool)

(assert (=> b!5196824 (= e!3236445 (and tp!1457809 tp!1457812))))

(assert (=> b!5196245 (= tp!1457747 e!3236445)))

(declare-fun b!5196825 () Bool)

(declare-fun tp!1457810 () Bool)

(assert (=> b!5196825 (= e!3236445 tp!1457810)))

(assert (= (and b!5196245 (is-ElementMatch!14762 (regTwo!30036 r!7292))) b!5196823))

(assert (= (and b!5196245 (is-Concat!23607 (regTwo!30036 r!7292))) b!5196824))

(assert (= (and b!5196245 (is-Star!14762 (regTwo!30036 r!7292))) b!5196825))

(assert (= (and b!5196245 (is-Union!14762 (regTwo!30036 r!7292))) b!5196826))

(declare-fun b!5196834 () Bool)

(declare-fun e!3236451 () Bool)

(declare-fun tp!1457817 () Bool)

(assert (=> b!5196834 (= e!3236451 tp!1457817)))

(declare-fun tp!1457818 () Bool)

(declare-fun e!3236450 () Bool)

(declare-fun b!5196833 () Bool)

(assert (=> b!5196833 (= e!3236450 (and (inv!80153 (h!66910 (t!373739 zl!343))) e!3236451 tp!1457818))))

(assert (=> b!5196243 (= tp!1457748 e!3236450)))

(assert (= b!5196833 b!5196834))

(assert (= (and b!5196243 (is-Cons!60462 (t!373739 zl!343))) b!5196833))

(declare-fun m!6250642 () Bool)

(assert (=> b!5196833 m!6250642))

(declare-fun b!5196838 () Bool)

(declare-fun e!3236452 () Bool)

(declare-fun tp!1457819 () Bool)

(declare-fun tp!1457822 () Bool)

(assert (=> b!5196838 (= e!3236452 (and tp!1457819 tp!1457822))))

(declare-fun b!5196835 () Bool)

(assert (=> b!5196835 (= e!3236452 tp_is_empty!38777)))

(declare-fun b!5196836 () Bool)

(declare-fun tp!1457820 () Bool)

(declare-fun tp!1457823 () Bool)

(assert (=> b!5196836 (= e!3236452 (and tp!1457820 tp!1457823))))

(assert (=> b!5196238 (= tp!1457746 e!3236452)))

(declare-fun b!5196837 () Bool)

(declare-fun tp!1457821 () Bool)

(assert (=> b!5196837 (= e!3236452 tp!1457821)))

(assert (= (and b!5196238 (is-ElementMatch!14762 (regOne!30037 r!7292))) b!5196835))

(assert (= (and b!5196238 (is-Concat!23607 (regOne!30037 r!7292))) b!5196836))

(assert (= (and b!5196238 (is-Star!14762 (regOne!30037 r!7292))) b!5196837))

(assert (= (and b!5196238 (is-Union!14762 (regOne!30037 r!7292))) b!5196838))

(declare-fun b!5196842 () Bool)

(declare-fun e!3236453 () Bool)

(declare-fun tp!1457824 () Bool)

(declare-fun tp!1457827 () Bool)

(assert (=> b!5196842 (= e!3236453 (and tp!1457824 tp!1457827))))

(declare-fun b!5196839 () Bool)

(assert (=> b!5196839 (= e!3236453 tp_is_empty!38777)))

(declare-fun b!5196840 () Bool)

(declare-fun tp!1457825 () Bool)

(declare-fun tp!1457828 () Bool)

(assert (=> b!5196840 (= e!3236453 (and tp!1457825 tp!1457828))))

(assert (=> b!5196238 (= tp!1457750 e!3236453)))

(declare-fun b!5196841 () Bool)

(declare-fun tp!1457826 () Bool)

(assert (=> b!5196841 (= e!3236453 tp!1457826)))

(assert (= (and b!5196238 (is-ElementMatch!14762 (regTwo!30037 r!7292))) b!5196839))

(assert (= (and b!5196238 (is-Concat!23607 (regTwo!30037 r!7292))) b!5196840))

(assert (= (and b!5196238 (is-Star!14762 (regTwo!30037 r!7292))) b!5196841))

(assert (= (and b!5196238 (is-Union!14762 (regTwo!30037 r!7292))) b!5196842))

(declare-fun condSetEmpty!32905 () Bool)

(assert (=> setNonEmpty!32899 (= condSetEmpty!32905 (= setRest!32899 (as set.empty (Set Context!8292))))))

(declare-fun setRes!32905 () Bool)

(assert (=> setNonEmpty!32899 (= tp!1457743 setRes!32905)))

(declare-fun setIsEmpty!32905 () Bool)

(assert (=> setIsEmpty!32905 setRes!32905))

(declare-fun e!3236456 () Bool)

(declare-fun setElem!32905 () Context!8292)

(declare-fun tp!1457833 () Bool)

(declare-fun setNonEmpty!32905 () Bool)

(assert (=> setNonEmpty!32905 (= setRes!32905 (and tp!1457833 (inv!80153 setElem!32905) e!3236456))))

(declare-fun setRest!32905 () (Set Context!8292))

(assert (=> setNonEmpty!32905 (= setRest!32899 (set.union (set.insert setElem!32905 (as set.empty (Set Context!8292))) setRest!32905))))

(declare-fun b!5196847 () Bool)

(declare-fun tp!1457834 () Bool)

(assert (=> b!5196847 (= e!3236456 tp!1457834)))

(assert (= (and setNonEmpty!32899 condSetEmpty!32905) setIsEmpty!32905))

(assert (= (and setNonEmpty!32899 (not condSetEmpty!32905)) setNonEmpty!32905))

(assert (= setNonEmpty!32905 b!5196847))

(declare-fun m!6250644 () Bool)

(assert (=> setNonEmpty!32905 m!6250644))

(declare-fun b!5196851 () Bool)

(declare-fun e!3236457 () Bool)

(declare-fun tp!1457835 () Bool)

(declare-fun tp!1457838 () Bool)

(assert (=> b!5196851 (= e!3236457 (and tp!1457835 tp!1457838))))

(declare-fun b!5196848 () Bool)

(assert (=> b!5196848 (= e!3236457 tp_is_empty!38777)))

(declare-fun b!5196849 () Bool)

(declare-fun tp!1457836 () Bool)

(declare-fun tp!1457839 () Bool)

(assert (=> b!5196849 (= e!3236457 (and tp!1457836 tp!1457839))))

(assert (=> b!5196249 (= tp!1457742 e!3236457)))

(declare-fun b!5196850 () Bool)

(declare-fun tp!1457837 () Bool)

(assert (=> b!5196850 (= e!3236457 tp!1457837)))

(assert (= (and b!5196249 (is-ElementMatch!14762 (reg!15091 r!7292))) b!5196848))

(assert (= (and b!5196249 (is-Concat!23607 (reg!15091 r!7292))) b!5196849))

(assert (= (and b!5196249 (is-Star!14762 (reg!15091 r!7292))) b!5196850))

(assert (= (and b!5196249 (is-Union!14762 (reg!15091 r!7292))) b!5196851))

(declare-fun b_lambda!201213 () Bool)

(assert (= b_lambda!201207 (or b!5196252 b_lambda!201213)))

(declare-fun bs!1208970 () Bool)

(declare-fun d!1677261 () Bool)

(assert (= bs!1208970 (and d!1677261 b!5196252)))

(assert (=> bs!1208970 (= (dynLambda!23902 lambda!260042 (h!66910 zl!343)) (derivationStepZipperUp!134 (h!66910 zl!343) (h!66911 s!2326)))))

(assert (=> bs!1208970 m!6250288))

(assert (=> d!1677207 d!1677261))

(declare-fun b_lambda!201215 () Bool)

(assert (= b_lambda!201209 (or b!5196252 b_lambda!201215)))

(declare-fun bs!1208971 () Bool)

(declare-fun d!1677263 () Bool)

(assert (= bs!1208971 (and d!1677263 b!5196252)))

(assert (=> bs!1208971 (= (dynLambda!23902 lambda!260042 lt!2139019) (derivationStepZipperUp!134 lt!2139019 (h!66911 s!2326)))))

(assert (=> bs!1208971 m!6250296))

(assert (=> d!1677249 d!1677263))

(declare-fun b_lambda!201217 () Bool)

(assert (= b_lambda!201211 (or b!5196252 b_lambda!201217)))

(declare-fun bs!1208972 () Bool)

(declare-fun d!1677265 () Bool)

(assert (= bs!1208972 (and d!1677265 b!5196252)))

(assert (=> bs!1208972 (= (dynLambda!23902 lambda!260042 lt!2139030) (derivationStepZipperUp!134 lt!2139030 (h!66911 s!2326)))))

(assert (=> bs!1208972 m!6250304))

(assert (=> d!1677253 d!1677265))

(push 1)

(assert (not d!1677195))

(assert (not d!1677243))

(assert (not b!5196732))

(assert (not b!5196442))

(assert (not b!5196592))

(assert (not b!5196436))

(assert (not b!5196847))

(assert (not bm!365286))

(assert (not d!1677185))

(assert (not bm!365265))

(assert (not b!5196758))

(assert (not b!5196630))

(assert (not b!5196530))

(assert (not b!5196487))

(assert (not b!5196734))

(assert (not b!5196792))

(assert (not b!5196824))

(assert (not bm!365239))

(assert (not b!5196486))

(assert (not d!1677253))

(assert (not bm!365289))

(assert (not d!1677191))

(assert (not b!5196851))

(assert (not b!5196850))

(assert (not d!1677193))

(assert (not b!5196579))

(assert (not d!1677231))

(assert (not b!5196489))

(assert (not bs!1208970))

(assert (not d!1677221))

(assert (not b!5196490))

(assert (not b!5196725))

(assert (not b!5196631))

(assert (not d!1677235))

(assert (not d!1677217))

(assert (not b!5196820))

(assert (not bm!365240))

(assert (not b!5196808))

(assert (not b!5196724))

(assert (not bs!1208971))

(assert (not b!5196510))

(assert (not b!5196438))

(assert (not b!5196492))

(assert (not bm!365260))

(assert (not bm!365277))

(assert (not d!1677223))

(assert (not bm!365276))

(assert (not d!1677207))

(assert (not b!5196623))

(assert (not bs!1208972))

(assert (not bm!365244))

(assert (not d!1677233))

(assert (not b!5196491))

(assert (not bm!365263))

(assert (not b!5196833))

(assert (not b!5196807))

(assert (not b!5196821))

(assert (not b!5196822))

(assert (not b!5196849))

(assert (not b!5196627))

(assert (not d!1677215))

(assert (not d!1677203))

(assert (not b!5196488))

(assert (not b!5196841))

(assert (not b!5196834))

(assert (not b!5196392))

(assert (not d!1677241))

(assert (not bm!365284))

(assert (not b!5196718))

(assert (not b!5196838))

(assert (not b!5196528))

(assert (not b!5196842))

(assert (not d!1677229))

(assert (not d!1677249))

(assert (not b!5196391))

(assert (not b!5196624))

(assert (not b!5196788))

(assert (not b!5196434))

(assert (not b!5196590))

(assert (not d!1677201))

(assert (not b_lambda!201217))

(assert (not bm!365247))

(assert (not b!5196720))

(assert (not b!5196825))

(assert (not b!5196729))

(assert (not b!5196628))

(assert (not b!5196444))

(assert (not b!5196726))

(assert (not b!5196719))

(assert (not b!5196836))

(assert (not d!1677255))

(assert (not d!1677225))

(assert (not b!5196840))

(assert (not b_lambda!201215))

(assert (not bm!365291))

(assert tp_is_empty!38777)

(assert (not bm!365266))

(assert (not b!5196727))

(assert (not b!5196717))

(assert (not b!5196802))

(assert (not b!5196837))

(assert (not d!1677219))

(assert (not b!5196435))

(assert (not b_lambda!201213))

(assert (not b!5196826))

(assert (not setNonEmpty!32905))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

