; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!705330 () Bool)

(assert start!705330)

(declare-fun b!7249075 () Bool)

(assert (=> b!7249075 true))

(declare-fun b!7249069 () Bool)

(declare-fun e!4346536 () Bool)

(declare-fun tp!2037172 () Bool)

(assert (=> b!7249069 (= e!4346536 tp!2037172)))

(declare-fun b!7249070 () Bool)

(declare-fun e!4346533 () Bool)

(declare-fun e!4346540 () Bool)

(assert (=> b!7249070 (= e!4346533 e!4346540)))

(declare-fun res!2940211 () Bool)

(assert (=> b!7249070 (=> res!2940211 e!4346540)))

(declare-datatypes ((C!37546 0))(
  ( (C!37547 (val!28721 Int)) )
))
(declare-datatypes ((Regex!18636 0))(
  ( (ElementMatch!18636 (c!1346894 C!37546)) (Concat!27481 (regOne!37784 Regex!18636) (regTwo!37784 Regex!18636)) (EmptyExpr!18636) (Star!18636 (reg!18965 Regex!18636)) (EmptyLang!18636) (Union!18636 (regOne!37785 Regex!18636) (regTwo!37785 Regex!18636)) )
))
(declare-datatypes ((List!70488 0))(
  ( (Nil!70364) (Cons!70364 (h!76812 Regex!18636) (t!384540 List!70488)) )
))
(declare-fun lt!2584164 () List!70488)

(declare-fun isEmpty!40522 (List!70488) Bool)

(assert (=> b!7249070 (= res!2940211 (isEmpty!40522 lt!2584164))))

(declare-fun lambda!443829 () Int)

(declare-datatypes ((Context!15152 0))(
  ( (Context!15153 (exprs!8076 List!70488)) )
))
(declare-fun ct1!232 () Context!15152)

(declare-datatypes ((Unit!163856 0))(
  ( (Unit!163857) )
))
(declare-fun lt!2584163 () Unit!163856)

(declare-fun ct2!328 () Context!15152)

(declare-fun lemmaConcatPreservesForall!1443 (List!70488 List!70488 Int) Unit!163856)

(assert (=> b!7249070 (= lt!2584163 (lemmaConcatPreservesForall!1443 (exprs!8076 ct1!232) (exprs!8076 ct2!328) lambda!443829))))

(declare-fun lt!2584162 () (Set Context!15152))

(declare-datatypes ((List!70489 0))(
  ( (Nil!70365) (Cons!70365 (h!76813 C!37546) (t!384541 List!70489)) )
))
(declare-fun s1!1971 () List!70489)

(declare-fun derivationStepZipperUp!2460 (Context!15152 C!37546) (Set Context!15152))

(assert (=> b!7249070 (= lt!2584162 (derivationStepZipperUp!2460 (Context!15153 lt!2584164) (h!76813 s1!1971)))))

(declare-fun lt!2584153 () Unit!163856)

(assert (=> b!7249070 (= lt!2584153 (lemmaConcatPreservesForall!1443 (exprs!8076 ct1!232) (exprs!8076 ct2!328) lambda!443829))))

(declare-fun lt!2584157 () (Set Context!15152))

(declare-fun derivationStepZipperDown!2630 (Regex!18636 Context!15152 C!37546) (Set Context!15152))

(declare-fun tail!14305 (List!70488) List!70488)

(assert (=> b!7249070 (= lt!2584157 (derivationStepZipperDown!2630 (h!76812 (exprs!8076 ct1!232)) (Context!15153 (tail!14305 (exprs!8076 ct1!232))) (h!76813 s1!1971)))))

(declare-fun b!7249071 () Bool)

(declare-fun e!4346539 () Bool)

(declare-fun tp_is_empty!46737 () Bool)

(declare-fun tp!2037171 () Bool)

(assert (=> b!7249071 (= e!4346539 (and tp_is_empty!46737 tp!2037171))))

(declare-fun b!7249072 () Bool)

(declare-fun e!4346532 () Bool)

(declare-fun e!4346535 () Bool)

(assert (=> b!7249072 (= e!4346532 e!4346535)))

(declare-fun res!2940210 () Bool)

(assert (=> b!7249072 (=> (not res!2940210) (not e!4346535))))

(assert (=> b!7249072 (= res!2940210 (and (not (is-Nil!70364 (exprs!8076 ct1!232))) (is-Cons!70365 s1!1971)))))

(declare-fun ++!16534 (List!70488 List!70488) List!70488)

(assert (=> b!7249072 (= lt!2584164 (++!16534 (exprs!8076 ct1!232) (exprs!8076 ct2!328)))))

(declare-fun lt!2584159 () Unit!163856)

(assert (=> b!7249072 (= lt!2584159 (lemmaConcatPreservesForall!1443 (exprs!8076 ct1!232) (exprs!8076 ct2!328) lambda!443829))))

(declare-fun b!7249073 () Bool)

(declare-fun inv!89601 (Context!15152) Bool)

(assert (=> b!7249073 (= e!4346540 (inv!89601 (Context!15153 (tail!14305 lt!2584164))))))

(declare-fun b!7249074 () Bool)

(declare-fun e!4346534 () Bool)

(declare-fun tp!2037173 () Bool)

(assert (=> b!7249074 (= e!4346534 tp!2037173)))

(declare-fun e!4346537 () Bool)

(declare-fun e!4346531 () Bool)

(assert (=> b!7249075 (= e!4346537 (not e!4346531))))

(declare-fun res!2940209 () Bool)

(assert (=> b!7249075 (=> res!2940209 e!4346531)))

(declare-fun lt!2584165 () (Set Context!15152))

(declare-fun lambda!443830 () Int)

(declare-fun exists!4350 ((Set Context!15152) Int) Bool)

(assert (=> b!7249075 (= res!2940209 (not (exists!4350 lt!2584165 lambda!443830)))))

(declare-datatypes ((List!70490 0))(
  ( (Nil!70366) (Cons!70366 (h!76814 Context!15152) (t!384542 List!70490)) )
))
(declare-fun lt!2584155 () List!70490)

(declare-fun exists!4351 (List!70490 Int) Bool)

(assert (=> b!7249075 (exists!4351 lt!2584155 lambda!443830)))

(declare-fun lt!2584154 () Unit!163856)

(declare-fun lemmaZipperMatchesExistsMatchingContext!739 (List!70490 List!70489) Unit!163856)

(assert (=> b!7249075 (= lt!2584154 (lemmaZipperMatchesExistsMatchingContext!739 lt!2584155 (t!384541 s1!1971)))))

(declare-fun toList!11465 ((Set Context!15152)) List!70490)

(assert (=> b!7249075 (= lt!2584155 (toList!11465 lt!2584165))))

(declare-fun b!7249076 () Bool)

(assert (=> b!7249076 (= e!4346531 e!4346533)))

(declare-fun res!2940207 () Bool)

(assert (=> b!7249076 (=> res!2940207 e!4346533)))

(assert (=> b!7249076 (= res!2940207 (isEmpty!40522 (exprs!8076 ct1!232)))))

(declare-fun lt!2584160 () (Set Context!15152))

(assert (=> b!7249076 (= lt!2584160 (derivationStepZipperUp!2460 ct1!232 (h!76813 s1!1971)))))

(declare-fun lt!2584156 () Context!15152)

(declare-fun lt!2584166 () Unit!163856)

(assert (=> b!7249076 (= lt!2584166 (lemmaConcatPreservesForall!1443 (exprs!8076 lt!2584156) (exprs!8076 ct2!328) lambda!443829))))

(declare-fun s2!1849 () List!70489)

(declare-fun matchZipper!3546 ((Set Context!15152) List!70489) Bool)

(declare-fun ++!16535 (List!70489 List!70489) List!70489)

(assert (=> b!7249076 (matchZipper!3546 (set.insert (Context!15153 (++!16534 (exprs!8076 lt!2584156) (exprs!8076 ct2!328))) (as set.empty (Set Context!15152))) (++!16535 (t!384541 s1!1971) s2!1849))))

(declare-fun lt!2584158 () Unit!163856)

(assert (=> b!7249076 (= lt!2584158 (lemmaConcatPreservesForall!1443 (exprs!8076 lt!2584156) (exprs!8076 ct2!328) lambda!443829))))

(declare-fun lt!2584152 () Unit!163856)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!381 (Context!15152 Context!15152 List!70489 List!70489) Unit!163856)

(assert (=> b!7249076 (= lt!2584152 (lemmaConcatenateContextMatchesConcatOfStrings!381 lt!2584156 ct2!328 (t!384541 s1!1971) s2!1849))))

(declare-fun getWitness!2188 ((Set Context!15152) Int) Context!15152)

(assert (=> b!7249076 (= lt!2584156 (getWitness!2188 lt!2584165 lambda!443830))))

(declare-fun res!2940208 () Bool)

(assert (=> start!705330 (=> (not res!2940208) (not e!4346532))))

(declare-fun lt!2584161 () (Set Context!15152))

(assert (=> start!705330 (= res!2940208 (matchZipper!3546 lt!2584161 s1!1971))))

(assert (=> start!705330 (= lt!2584161 (set.insert ct1!232 (as set.empty (Set Context!15152))))))

(assert (=> start!705330 e!4346532))

(assert (=> start!705330 (and (inv!89601 ct1!232) e!4346534)))

(assert (=> start!705330 e!4346539))

(declare-fun e!4346538 () Bool)

(assert (=> start!705330 e!4346538))

(assert (=> start!705330 (and (inv!89601 ct2!328) e!4346536)))

(declare-fun b!7249077 () Bool)

(assert (=> b!7249077 (= e!4346535 e!4346537)))

(declare-fun res!2940212 () Bool)

(assert (=> b!7249077 (=> (not res!2940212) (not e!4346537))))

(assert (=> b!7249077 (= res!2940212 (matchZipper!3546 lt!2584165 (t!384541 s1!1971)))))

(declare-fun derivationStepZipper!3414 ((Set Context!15152) C!37546) (Set Context!15152))

(assert (=> b!7249077 (= lt!2584165 (derivationStepZipper!3414 lt!2584161 (h!76813 s1!1971)))))

(declare-fun b!7249078 () Bool)

(declare-fun res!2940213 () Bool)

(assert (=> b!7249078 (=> (not res!2940213) (not e!4346532))))

(assert (=> b!7249078 (= res!2940213 (matchZipper!3546 (set.insert ct2!328 (as set.empty (Set Context!15152))) s2!1849))))

(declare-fun b!7249079 () Bool)

(declare-fun tp!2037174 () Bool)

(assert (=> b!7249079 (= e!4346538 (and tp_is_empty!46737 tp!2037174))))

(assert (= (and start!705330 res!2940208) b!7249078))

(assert (= (and b!7249078 res!2940213) b!7249072))

(assert (= (and b!7249072 res!2940210) b!7249077))

(assert (= (and b!7249077 res!2940212) b!7249075))

(assert (= (and b!7249075 (not res!2940209)) b!7249076))

(assert (= (and b!7249076 (not res!2940207)) b!7249070))

(assert (= (and b!7249070 (not res!2940211)) b!7249073))

(assert (= start!705330 b!7249074))

(assert (= (and start!705330 (is-Cons!70365 s1!1971)) b!7249071))

(assert (= (and start!705330 (is-Cons!70365 s2!1849)) b!7249079))

(assert (= start!705330 b!7249069))

(declare-fun m!7927202 () Bool)

(assert (=> b!7249073 m!7927202))

(declare-fun m!7927204 () Bool)

(assert (=> b!7249073 m!7927204))

(declare-fun m!7927206 () Bool)

(assert (=> b!7249072 m!7927206))

(declare-fun m!7927208 () Bool)

(assert (=> b!7249072 m!7927208))

(assert (=> b!7249070 m!7927208))

(assert (=> b!7249070 m!7927208))

(declare-fun m!7927210 () Bool)

(assert (=> b!7249070 m!7927210))

(declare-fun m!7927212 () Bool)

(assert (=> b!7249070 m!7927212))

(declare-fun m!7927214 () Bool)

(assert (=> b!7249070 m!7927214))

(declare-fun m!7927216 () Bool)

(assert (=> b!7249070 m!7927216))

(declare-fun m!7927218 () Bool)

(assert (=> b!7249078 m!7927218))

(assert (=> b!7249078 m!7927218))

(declare-fun m!7927220 () Bool)

(assert (=> b!7249078 m!7927220))

(declare-fun m!7927222 () Bool)

(assert (=> start!705330 m!7927222))

(declare-fun m!7927224 () Bool)

(assert (=> start!705330 m!7927224))

(declare-fun m!7927226 () Bool)

(assert (=> start!705330 m!7927226))

(declare-fun m!7927228 () Bool)

(assert (=> start!705330 m!7927228))

(declare-fun m!7927230 () Bool)

(assert (=> b!7249076 m!7927230))

(declare-fun m!7927232 () Bool)

(assert (=> b!7249076 m!7927232))

(declare-fun m!7927234 () Bool)

(assert (=> b!7249076 m!7927234))

(assert (=> b!7249076 m!7927234))

(declare-fun m!7927236 () Bool)

(assert (=> b!7249076 m!7927236))

(declare-fun m!7927238 () Bool)

(assert (=> b!7249076 m!7927238))

(declare-fun m!7927240 () Bool)

(assert (=> b!7249076 m!7927240))

(declare-fun m!7927242 () Bool)

(assert (=> b!7249076 m!7927242))

(declare-fun m!7927244 () Bool)

(assert (=> b!7249076 m!7927244))

(declare-fun m!7927246 () Bool)

(assert (=> b!7249076 m!7927246))

(assert (=> b!7249076 m!7927242))

(assert (=> b!7249076 m!7927236))

(declare-fun m!7927248 () Bool)

(assert (=> b!7249075 m!7927248))

(declare-fun m!7927250 () Bool)

(assert (=> b!7249075 m!7927250))

(declare-fun m!7927252 () Bool)

(assert (=> b!7249075 m!7927252))

(declare-fun m!7927254 () Bool)

(assert (=> b!7249075 m!7927254))

(declare-fun m!7927256 () Bool)

(assert (=> b!7249077 m!7927256))

(declare-fun m!7927258 () Bool)

(assert (=> b!7249077 m!7927258))

(push 1)

(assert (not b!7249070))

(assert (not b!7249076))

(assert (not b!7249069))

(assert tp_is_empty!46737)

(assert (not b!7249073))

(assert (not b!7249075))

(assert (not b!7249074))

(assert (not start!705330))

(assert (not b!7249078))

(assert (not b!7249077))

(assert (not b!7249072))

(assert (not b!7249071))

(assert (not b!7249079))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2252881 () Bool)

(declare-fun c!1346904 () Bool)

(declare-fun isEmpty!40524 (List!70489) Bool)

(assert (=> d!2252881 (= c!1346904 (isEmpty!40524 s2!1849))))

(declare-fun e!4346573 () Bool)

(assert (=> d!2252881 (= (matchZipper!3546 (set.insert ct2!328 (as set.empty (Set Context!15152))) s2!1849) e!4346573)))

(declare-fun b!7249121 () Bool)

(declare-fun nullableZipper!2907 ((Set Context!15152)) Bool)

(assert (=> b!7249121 (= e!4346573 (nullableZipper!2907 (set.insert ct2!328 (as set.empty (Set Context!15152)))))))

(declare-fun b!7249122 () Bool)

(declare-fun head!14896 (List!70489) C!37546)

(declare-fun tail!14307 (List!70489) List!70489)

(assert (=> b!7249122 (= e!4346573 (matchZipper!3546 (derivationStepZipper!3414 (set.insert ct2!328 (as set.empty (Set Context!15152))) (head!14896 s2!1849)) (tail!14307 s2!1849)))))

(assert (= (and d!2252881 c!1346904) b!7249121))

(assert (= (and d!2252881 (not c!1346904)) b!7249122))

(declare-fun m!7927318 () Bool)

(assert (=> d!2252881 m!7927318))

(assert (=> b!7249121 m!7927218))

(declare-fun m!7927320 () Bool)

(assert (=> b!7249121 m!7927320))

(declare-fun m!7927322 () Bool)

(assert (=> b!7249122 m!7927322))

(assert (=> b!7249122 m!7927218))

(assert (=> b!7249122 m!7927322))

(declare-fun m!7927324 () Bool)

(assert (=> b!7249122 m!7927324))

(declare-fun m!7927326 () Bool)

(assert (=> b!7249122 m!7927326))

(assert (=> b!7249122 m!7927324))

(assert (=> b!7249122 m!7927326))

(declare-fun m!7927328 () Bool)

(assert (=> b!7249122 m!7927328))

(assert (=> b!7249078 d!2252881))

(declare-fun bs!1905780 () Bool)

(declare-fun d!2252883 () Bool)

(assert (= bs!1905780 (and d!2252883 b!7249072)))

(declare-fun lambda!443851 () Int)

(assert (=> bs!1905780 (= lambda!443851 lambda!443829)))

(declare-fun forall!17480 (List!70488 Int) Bool)

(assert (=> d!2252883 (= (inv!89601 (Context!15153 (tail!14305 lt!2584164))) (forall!17480 (exprs!8076 (Context!15153 (tail!14305 lt!2584164))) lambda!443851))))

(declare-fun bs!1905781 () Bool)

(assert (= bs!1905781 d!2252883))

(declare-fun m!7927330 () Bool)

(assert (=> bs!1905781 m!7927330))

(assert (=> b!7249073 d!2252883))

(declare-fun d!2252885 () Bool)

(assert (=> d!2252885 (= (tail!14305 lt!2584164) (t!384540 lt!2584164))))

(assert (=> b!7249073 d!2252885))

(declare-fun b!7249133 () Bool)

(declare-fun res!2940239 () Bool)

(declare-fun e!4346578 () Bool)

(assert (=> b!7249133 (=> (not res!2940239) (not e!4346578))))

(declare-fun lt!2584214 () List!70488)

(declare-fun size!41703 (List!70488) Int)

(assert (=> b!7249133 (= res!2940239 (= (size!41703 lt!2584214) (+ (size!41703 (exprs!8076 ct1!232)) (size!41703 (exprs!8076 ct2!328)))))))

(declare-fun b!7249131 () Bool)

(declare-fun e!4346579 () List!70488)

(assert (=> b!7249131 (= e!4346579 (exprs!8076 ct2!328))))

(declare-fun b!7249132 () Bool)

(assert (=> b!7249132 (= e!4346579 (Cons!70364 (h!76812 (exprs!8076 ct1!232)) (++!16534 (t!384540 (exprs!8076 ct1!232)) (exprs!8076 ct2!328))))))

(declare-fun b!7249134 () Bool)

(assert (=> b!7249134 (= e!4346578 (or (not (= (exprs!8076 ct2!328) Nil!70364)) (= lt!2584214 (exprs!8076 ct1!232))))))

(declare-fun d!2252887 () Bool)

(assert (=> d!2252887 e!4346578))

(declare-fun res!2940240 () Bool)

(assert (=> d!2252887 (=> (not res!2940240) (not e!4346578))))

(declare-fun content!14591 (List!70488) (Set Regex!18636))

(assert (=> d!2252887 (= res!2940240 (= (content!14591 lt!2584214) (set.union (content!14591 (exprs!8076 ct1!232)) (content!14591 (exprs!8076 ct2!328)))))))

(assert (=> d!2252887 (= lt!2584214 e!4346579)))

(declare-fun c!1346907 () Bool)

(assert (=> d!2252887 (= c!1346907 (is-Nil!70364 (exprs!8076 ct1!232)))))

(assert (=> d!2252887 (= (++!16534 (exprs!8076 ct1!232) (exprs!8076 ct2!328)) lt!2584214)))

(assert (= (and d!2252887 c!1346907) b!7249131))

(assert (= (and d!2252887 (not c!1346907)) b!7249132))

(assert (= (and d!2252887 res!2940240) b!7249133))

(assert (= (and b!7249133 res!2940239) b!7249134))

(declare-fun m!7927332 () Bool)

(assert (=> b!7249133 m!7927332))

(declare-fun m!7927334 () Bool)

(assert (=> b!7249133 m!7927334))

(declare-fun m!7927336 () Bool)

(assert (=> b!7249133 m!7927336))

(declare-fun m!7927338 () Bool)

(assert (=> b!7249132 m!7927338))

(declare-fun m!7927340 () Bool)

(assert (=> d!2252887 m!7927340))

(declare-fun m!7927342 () Bool)

(assert (=> d!2252887 m!7927342))

(declare-fun m!7927344 () Bool)

(assert (=> d!2252887 m!7927344))

(assert (=> b!7249072 d!2252887))

(declare-fun d!2252889 () Bool)

(assert (=> d!2252889 (forall!17480 (++!16534 (exprs!8076 ct1!232) (exprs!8076 ct2!328)) lambda!443829)))

(declare-fun lt!2584217 () Unit!163856)

(declare-fun choose!55976 (List!70488 List!70488 Int) Unit!163856)

(assert (=> d!2252889 (= lt!2584217 (choose!55976 (exprs!8076 ct1!232) (exprs!8076 ct2!328) lambda!443829))))

(assert (=> d!2252889 (forall!17480 (exprs!8076 ct1!232) lambda!443829)))

(assert (=> d!2252889 (= (lemmaConcatPreservesForall!1443 (exprs!8076 ct1!232) (exprs!8076 ct2!328) lambda!443829) lt!2584217)))

(declare-fun bs!1905782 () Bool)

(assert (= bs!1905782 d!2252889))

(assert (=> bs!1905782 m!7927206))

(assert (=> bs!1905782 m!7927206))

(declare-fun m!7927346 () Bool)

(assert (=> bs!1905782 m!7927346))

(declare-fun m!7927348 () Bool)

(assert (=> bs!1905782 m!7927348))

(declare-fun m!7927350 () Bool)

(assert (=> bs!1905782 m!7927350))

(assert (=> b!7249072 d!2252889))

(declare-fun d!2252891 () Bool)

(declare-fun c!1346908 () Bool)

(assert (=> d!2252891 (= c!1346908 (isEmpty!40524 s1!1971))))

(declare-fun e!4346580 () Bool)

(assert (=> d!2252891 (= (matchZipper!3546 lt!2584161 s1!1971) e!4346580)))

(declare-fun b!7249135 () Bool)

(assert (=> b!7249135 (= e!4346580 (nullableZipper!2907 lt!2584161))))

(declare-fun b!7249136 () Bool)

(assert (=> b!7249136 (= e!4346580 (matchZipper!3546 (derivationStepZipper!3414 lt!2584161 (head!14896 s1!1971)) (tail!14307 s1!1971)))))

(assert (= (and d!2252891 c!1346908) b!7249135))

(assert (= (and d!2252891 (not c!1346908)) b!7249136))

(declare-fun m!7927352 () Bool)

(assert (=> d!2252891 m!7927352))

(declare-fun m!7927354 () Bool)

(assert (=> b!7249135 m!7927354))

(declare-fun m!7927356 () Bool)

(assert (=> b!7249136 m!7927356))

(assert (=> b!7249136 m!7927356))

(declare-fun m!7927358 () Bool)

(assert (=> b!7249136 m!7927358))

(declare-fun m!7927360 () Bool)

(assert (=> b!7249136 m!7927360))

(assert (=> b!7249136 m!7927358))

(assert (=> b!7249136 m!7927360))

(declare-fun m!7927362 () Bool)

(assert (=> b!7249136 m!7927362))

(assert (=> start!705330 d!2252891))

(declare-fun bs!1905783 () Bool)

(declare-fun d!2252893 () Bool)

(assert (= bs!1905783 (and d!2252893 b!7249072)))

(declare-fun lambda!443852 () Int)

(assert (=> bs!1905783 (= lambda!443852 lambda!443829)))

(declare-fun bs!1905784 () Bool)

(assert (= bs!1905784 (and d!2252893 d!2252883)))

(assert (=> bs!1905784 (= lambda!443852 lambda!443851)))

(assert (=> d!2252893 (= (inv!89601 ct1!232) (forall!17480 (exprs!8076 ct1!232) lambda!443852))))

(declare-fun bs!1905785 () Bool)

(assert (= bs!1905785 d!2252893))

(declare-fun m!7927364 () Bool)

(assert (=> bs!1905785 m!7927364))

(assert (=> start!705330 d!2252893))

(declare-fun bs!1905786 () Bool)

(declare-fun d!2252895 () Bool)

(assert (= bs!1905786 (and d!2252895 b!7249072)))

(declare-fun lambda!443853 () Int)

(assert (=> bs!1905786 (= lambda!443853 lambda!443829)))

(declare-fun bs!1905787 () Bool)

(assert (= bs!1905787 (and d!2252895 d!2252883)))

(assert (=> bs!1905787 (= lambda!443853 lambda!443851)))

(declare-fun bs!1905788 () Bool)

(assert (= bs!1905788 (and d!2252895 d!2252893)))

(assert (=> bs!1905788 (= lambda!443853 lambda!443852)))

(assert (=> d!2252895 (= (inv!89601 ct2!328) (forall!17480 (exprs!8076 ct2!328) lambda!443853))))

(declare-fun bs!1905789 () Bool)

(assert (= bs!1905789 d!2252895))

(declare-fun m!7927366 () Bool)

(assert (=> bs!1905789 m!7927366))

(assert (=> start!705330 d!2252895))

(declare-fun d!2252897 () Bool)

(declare-fun c!1346909 () Bool)

(assert (=> d!2252897 (= c!1346909 (isEmpty!40524 (t!384541 s1!1971)))))

(declare-fun e!4346581 () Bool)

(assert (=> d!2252897 (= (matchZipper!3546 lt!2584165 (t!384541 s1!1971)) e!4346581)))

(declare-fun b!7249137 () Bool)

(assert (=> b!7249137 (= e!4346581 (nullableZipper!2907 lt!2584165))))

(declare-fun b!7249138 () Bool)

(assert (=> b!7249138 (= e!4346581 (matchZipper!3546 (derivationStepZipper!3414 lt!2584165 (head!14896 (t!384541 s1!1971))) (tail!14307 (t!384541 s1!1971))))))

(assert (= (and d!2252897 c!1346909) b!7249137))

(assert (= (and d!2252897 (not c!1346909)) b!7249138))

(declare-fun m!7927368 () Bool)

(assert (=> d!2252897 m!7927368))

(declare-fun m!7927370 () Bool)

(assert (=> b!7249137 m!7927370))

(declare-fun m!7927372 () Bool)

(assert (=> b!7249138 m!7927372))

(assert (=> b!7249138 m!7927372))

(declare-fun m!7927374 () Bool)

(assert (=> b!7249138 m!7927374))

(declare-fun m!7927376 () Bool)

(assert (=> b!7249138 m!7927376))

(assert (=> b!7249138 m!7927374))

(assert (=> b!7249138 m!7927376))

(declare-fun m!7927378 () Bool)

(assert (=> b!7249138 m!7927378))

(assert (=> b!7249077 d!2252897))

(declare-fun d!2252899 () Bool)

(assert (=> d!2252899 true))

(declare-fun lambda!443856 () Int)

(declare-fun flatMap!2801 ((Set Context!15152) Int) (Set Context!15152))

(assert (=> d!2252899 (= (derivationStepZipper!3414 lt!2584161 (h!76813 s1!1971)) (flatMap!2801 lt!2584161 lambda!443856))))

(declare-fun bs!1905790 () Bool)

(assert (= bs!1905790 d!2252899))

(declare-fun m!7927380 () Bool)

(assert (=> bs!1905790 m!7927380))

(assert (=> b!7249077 d!2252899))

(declare-fun d!2252901 () Bool)

(assert (=> d!2252901 (forall!17480 (++!16534 (exprs!8076 lt!2584156) (exprs!8076 ct2!328)) lambda!443829)))

(declare-fun lt!2584218 () Unit!163856)

(assert (=> d!2252901 (= lt!2584218 (choose!55976 (exprs!8076 lt!2584156) (exprs!8076 ct2!328) lambda!443829))))

(assert (=> d!2252901 (forall!17480 (exprs!8076 lt!2584156) lambda!443829)))

(assert (=> d!2252901 (= (lemmaConcatPreservesForall!1443 (exprs!8076 lt!2584156) (exprs!8076 ct2!328) lambda!443829) lt!2584218)))

(declare-fun bs!1905791 () Bool)

(assert (= bs!1905791 d!2252901))

(assert (=> bs!1905791 m!7927232))

(assert (=> bs!1905791 m!7927232))

(declare-fun m!7927382 () Bool)

(assert (=> bs!1905791 m!7927382))

(declare-fun m!7927384 () Bool)

(assert (=> bs!1905791 m!7927384))

(declare-fun m!7927386 () Bool)

(assert (=> bs!1905791 m!7927386))

(assert (=> b!7249076 d!2252901))

(declare-fun d!2252903 () Bool)

(assert (=> d!2252903 (= (isEmpty!40522 (exprs!8076 ct1!232)) (is-Nil!70364 (exprs!8076 ct1!232)))))

(assert (=> b!7249076 d!2252903))

(declare-fun bs!1905792 () Bool)

(declare-fun d!2252905 () Bool)

(assert (= bs!1905792 (and d!2252905 b!7249072)))

(declare-fun lambda!443859 () Int)

(assert (=> bs!1905792 (= lambda!443859 lambda!443829)))

(declare-fun bs!1905793 () Bool)

(assert (= bs!1905793 (and d!2252905 d!2252883)))

(assert (=> bs!1905793 (= lambda!443859 lambda!443851)))

(declare-fun bs!1905794 () Bool)

(assert (= bs!1905794 (and d!2252905 d!2252893)))

(assert (=> bs!1905794 (= lambda!443859 lambda!443852)))

(declare-fun bs!1905795 () Bool)

(assert (= bs!1905795 (and d!2252905 d!2252895)))

(assert (=> bs!1905795 (= lambda!443859 lambda!443853)))

(assert (=> d!2252905 (matchZipper!3546 (set.insert (Context!15153 (++!16534 (exprs!8076 lt!2584156) (exprs!8076 ct2!328))) (as set.empty (Set Context!15152))) (++!16535 (t!384541 s1!1971) s2!1849))))

(declare-fun lt!2584224 () Unit!163856)

(assert (=> d!2252905 (= lt!2584224 (lemmaConcatPreservesForall!1443 (exprs!8076 lt!2584156) (exprs!8076 ct2!328) lambda!443859))))

(declare-fun lt!2584223 () Unit!163856)

(declare-fun choose!55977 (Context!15152 Context!15152 List!70489 List!70489) Unit!163856)

(assert (=> d!2252905 (= lt!2584223 (choose!55977 lt!2584156 ct2!328 (t!384541 s1!1971) s2!1849))))

(assert (=> d!2252905 (matchZipper!3546 (set.insert lt!2584156 (as set.empty (Set Context!15152))) (t!384541 s1!1971))))

(assert (=> d!2252905 (= (lemmaConcatenateContextMatchesConcatOfStrings!381 lt!2584156 ct2!328 (t!384541 s1!1971) s2!1849) lt!2584223)))

(declare-fun bs!1905796 () Bool)

(assert (= bs!1905796 d!2252905))

(declare-fun m!7927388 () Bool)

(assert (=> bs!1905796 m!7927388))

(assert (=> bs!1905796 m!7927234))

(assert (=> bs!1905796 m!7927388))

(declare-fun m!7927390 () Bool)

(assert (=> bs!1905796 m!7927390))

(assert (=> bs!1905796 m!7927236))

(assert (=> bs!1905796 m!7927232))

(assert (=> bs!1905796 m!7927234))

(assert (=> bs!1905796 m!7927236))

(assert (=> bs!1905796 m!7927238))

(declare-fun m!7927392 () Bool)

(assert (=> bs!1905796 m!7927392))

(declare-fun m!7927394 () Bool)

(assert (=> bs!1905796 m!7927394))

(assert (=> b!7249076 d!2252905))

(declare-fun d!2252907 () Bool)

(declare-fun e!4346584 () Bool)

(assert (=> d!2252907 e!4346584))

(declare-fun res!2940243 () Bool)

(assert (=> d!2252907 (=> (not res!2940243) (not e!4346584))))

(declare-fun lt!2584227 () Context!15152)

(declare-fun dynLambda!28721 (Int Context!15152) Bool)

(assert (=> d!2252907 (= res!2940243 (dynLambda!28721 lambda!443830 lt!2584227))))

(declare-fun getWitness!2190 (List!70490 Int) Context!15152)

(assert (=> d!2252907 (= lt!2584227 (getWitness!2190 (toList!11465 lt!2584165) lambda!443830))))

(assert (=> d!2252907 (exists!4350 lt!2584165 lambda!443830)))

(assert (=> d!2252907 (= (getWitness!2188 lt!2584165 lambda!443830) lt!2584227)))

(declare-fun b!7249143 () Bool)

(assert (=> b!7249143 (= e!4346584 (set.member lt!2584227 lt!2584165))))

(assert (= (and d!2252907 res!2940243) b!7249143))

(declare-fun b_lambda!278243 () Bool)

(assert (=> (not b_lambda!278243) (not d!2252907)))

(declare-fun m!7927396 () Bool)

(assert (=> d!2252907 m!7927396))

(assert (=> d!2252907 m!7927254))

(assert (=> d!2252907 m!7927254))

(declare-fun m!7927398 () Bool)

(assert (=> d!2252907 m!7927398))

(assert (=> d!2252907 m!7927248))

(declare-fun m!7927400 () Bool)

(assert (=> b!7249143 m!7927400))

(assert (=> b!7249076 d!2252907))

(declare-fun b!7249154 () Bool)

(declare-fun res!2940249 () Bool)

(declare-fun e!4346590 () Bool)

(assert (=> b!7249154 (=> (not res!2940249) (not e!4346590))))

(declare-fun lt!2584230 () List!70489)

(declare-fun size!41704 (List!70489) Int)

(assert (=> b!7249154 (= res!2940249 (= (size!41704 lt!2584230) (+ (size!41704 (t!384541 s1!1971)) (size!41704 s2!1849))))))

(declare-fun b!7249155 () Bool)

(assert (=> b!7249155 (= e!4346590 (or (not (= s2!1849 Nil!70365)) (= lt!2584230 (t!384541 s1!1971))))))

(declare-fun b!7249152 () Bool)

(declare-fun e!4346589 () List!70489)

(assert (=> b!7249152 (= e!4346589 s2!1849)))

(declare-fun b!7249153 () Bool)

(assert (=> b!7249153 (= e!4346589 (Cons!70365 (h!76813 (t!384541 s1!1971)) (++!16535 (t!384541 (t!384541 s1!1971)) s2!1849)))))

(declare-fun d!2252911 () Bool)

(assert (=> d!2252911 e!4346590))

(declare-fun res!2940248 () Bool)

(assert (=> d!2252911 (=> (not res!2940248) (not e!4346590))))

(declare-fun content!14592 (List!70489) (Set C!37546))

(assert (=> d!2252911 (= res!2940248 (= (content!14592 lt!2584230) (set.union (content!14592 (t!384541 s1!1971)) (content!14592 s2!1849))))))

(assert (=> d!2252911 (= lt!2584230 e!4346589)))

(declare-fun c!1346914 () Bool)

(assert (=> d!2252911 (= c!1346914 (is-Nil!70365 (t!384541 s1!1971)))))

(assert (=> d!2252911 (= (++!16535 (t!384541 s1!1971) s2!1849) lt!2584230)))

(assert (= (and d!2252911 c!1346914) b!7249152))

(assert (= (and d!2252911 (not c!1346914)) b!7249153))

(assert (= (and d!2252911 res!2940248) b!7249154))

(assert (= (and b!7249154 res!2940249) b!7249155))

(declare-fun m!7927402 () Bool)

(assert (=> b!7249154 m!7927402))

(declare-fun m!7927404 () Bool)

(assert (=> b!7249154 m!7927404))

(declare-fun m!7927406 () Bool)

(assert (=> b!7249154 m!7927406))

(declare-fun m!7927408 () Bool)

(assert (=> b!7249153 m!7927408))

(declare-fun m!7927410 () Bool)

(assert (=> d!2252911 m!7927410))

(declare-fun m!7927412 () Bool)

(assert (=> d!2252911 m!7927412))

(declare-fun m!7927414 () Bool)

(assert (=> d!2252911 m!7927414))

(assert (=> b!7249076 d!2252911))

(declare-fun d!2252913 () Bool)

(declare-fun c!1346922 () Bool)

(declare-fun e!4346603 () Bool)

(assert (=> d!2252913 (= c!1346922 e!4346603)))

(declare-fun res!2940256 () Bool)

(assert (=> d!2252913 (=> (not res!2940256) (not e!4346603))))

(assert (=> d!2252913 (= res!2940256 (is-Cons!70364 (exprs!8076 ct1!232)))))

(declare-fun e!4346602 () (Set Context!15152))

(assert (=> d!2252913 (= (derivationStepZipperUp!2460 ct1!232 (h!76813 s1!1971)) e!4346602)))

(declare-fun call!660141 () (Set Context!15152))

(declare-fun b!7249174 () Bool)

(assert (=> b!7249174 (= e!4346602 (set.union call!660141 (derivationStepZipperUp!2460 (Context!15153 (t!384540 (exprs!8076 ct1!232))) (h!76813 s1!1971))))))

(declare-fun b!7249175 () Bool)

(declare-fun e!4346601 () (Set Context!15152))

(assert (=> b!7249175 (= e!4346601 (as set.empty (Set Context!15152)))))

(declare-fun bm!660136 () Bool)

(assert (=> bm!660136 (= call!660141 (derivationStepZipperDown!2630 (h!76812 (exprs!8076 ct1!232)) (Context!15153 (t!384540 (exprs!8076 ct1!232))) (h!76813 s1!1971)))))

(declare-fun b!7249176 () Bool)

(assert (=> b!7249176 (= e!4346602 e!4346601)))

(declare-fun c!1346921 () Bool)

(assert (=> b!7249176 (= c!1346921 (is-Cons!70364 (exprs!8076 ct1!232)))))

(declare-fun b!7249177 () Bool)

(assert (=> b!7249177 (= e!4346601 call!660141)))

(declare-fun b!7249178 () Bool)

(declare-fun nullable!7898 (Regex!18636) Bool)

(assert (=> b!7249178 (= e!4346603 (nullable!7898 (h!76812 (exprs!8076 ct1!232))))))

(assert (= (and d!2252913 res!2940256) b!7249178))

(assert (= (and d!2252913 c!1346922) b!7249174))

(assert (= (and d!2252913 (not c!1346922)) b!7249176))

(assert (= (and b!7249176 c!1346921) b!7249177))

(assert (= (and b!7249176 (not c!1346921)) b!7249175))

(assert (= (or b!7249174 b!7249177) bm!660136))

(declare-fun m!7927416 () Bool)

(assert (=> b!7249174 m!7927416))

(declare-fun m!7927418 () Bool)

(assert (=> bm!660136 m!7927418))

(declare-fun m!7927420 () Bool)

(assert (=> b!7249178 m!7927420))

(assert (=> b!7249076 d!2252913))

(declare-fun d!2252915 () Bool)

(declare-fun c!1346923 () Bool)

(assert (=> d!2252915 (= c!1346923 (isEmpty!40524 (++!16535 (t!384541 s1!1971) s2!1849)))))

(declare-fun e!4346604 () Bool)

(assert (=> d!2252915 (= (matchZipper!3546 (set.insert (Context!15153 (++!16534 (exprs!8076 lt!2584156) (exprs!8076 ct2!328))) (as set.empty (Set Context!15152))) (++!16535 (t!384541 s1!1971) s2!1849)) e!4346604)))

(declare-fun b!7249179 () Bool)

(assert (=> b!7249179 (= e!4346604 (nullableZipper!2907 (set.insert (Context!15153 (++!16534 (exprs!8076 lt!2584156) (exprs!8076 ct2!328))) (as set.empty (Set Context!15152)))))))

(declare-fun b!7249180 () Bool)

(assert (=> b!7249180 (= e!4346604 (matchZipper!3546 (derivationStepZipper!3414 (set.insert (Context!15153 (++!16534 (exprs!8076 lt!2584156) (exprs!8076 ct2!328))) (as set.empty (Set Context!15152))) (head!14896 (++!16535 (t!384541 s1!1971) s2!1849))) (tail!14307 (++!16535 (t!384541 s1!1971) s2!1849))))))

(assert (= (and d!2252915 c!1346923) b!7249179))

(assert (= (and d!2252915 (not c!1346923)) b!7249180))

(assert (=> d!2252915 m!7927236))

(declare-fun m!7927422 () Bool)

(assert (=> d!2252915 m!7927422))

(assert (=> b!7249179 m!7927234))

(declare-fun m!7927424 () Bool)

(assert (=> b!7249179 m!7927424))

(assert (=> b!7249180 m!7927236))

(declare-fun m!7927426 () Bool)

(assert (=> b!7249180 m!7927426))

(assert (=> b!7249180 m!7927234))

(assert (=> b!7249180 m!7927426))

(declare-fun m!7927428 () Bool)

(assert (=> b!7249180 m!7927428))

(assert (=> b!7249180 m!7927236))

(declare-fun m!7927430 () Bool)

(assert (=> b!7249180 m!7927430))

(assert (=> b!7249180 m!7927428))

(assert (=> b!7249180 m!7927430))

(declare-fun m!7927432 () Bool)

(assert (=> b!7249180 m!7927432))

(assert (=> b!7249076 d!2252915))

(declare-fun b!7249183 () Bool)

(declare-fun res!2940257 () Bool)

(declare-fun e!4346605 () Bool)

(assert (=> b!7249183 (=> (not res!2940257) (not e!4346605))))

(declare-fun lt!2584233 () List!70488)

(assert (=> b!7249183 (= res!2940257 (= (size!41703 lt!2584233) (+ (size!41703 (exprs!8076 lt!2584156)) (size!41703 (exprs!8076 ct2!328)))))))

(declare-fun b!7249181 () Bool)

(declare-fun e!4346606 () List!70488)

(assert (=> b!7249181 (= e!4346606 (exprs!8076 ct2!328))))

(declare-fun b!7249182 () Bool)

(assert (=> b!7249182 (= e!4346606 (Cons!70364 (h!76812 (exprs!8076 lt!2584156)) (++!16534 (t!384540 (exprs!8076 lt!2584156)) (exprs!8076 ct2!328))))))

(declare-fun b!7249184 () Bool)

(assert (=> b!7249184 (= e!4346605 (or (not (= (exprs!8076 ct2!328) Nil!70364)) (= lt!2584233 (exprs!8076 lt!2584156))))))

(declare-fun d!2252917 () Bool)

(assert (=> d!2252917 e!4346605))

(declare-fun res!2940258 () Bool)

(assert (=> d!2252917 (=> (not res!2940258) (not e!4346605))))

(assert (=> d!2252917 (= res!2940258 (= (content!14591 lt!2584233) (set.union (content!14591 (exprs!8076 lt!2584156)) (content!14591 (exprs!8076 ct2!328)))))))

(assert (=> d!2252917 (= lt!2584233 e!4346606)))

(declare-fun c!1346924 () Bool)

(assert (=> d!2252917 (= c!1346924 (is-Nil!70364 (exprs!8076 lt!2584156)))))

(assert (=> d!2252917 (= (++!16534 (exprs!8076 lt!2584156) (exprs!8076 ct2!328)) lt!2584233)))

(assert (= (and d!2252917 c!1346924) b!7249181))

(assert (= (and d!2252917 (not c!1346924)) b!7249182))

(assert (= (and d!2252917 res!2940258) b!7249183))

(assert (= (and b!7249183 res!2940257) b!7249184))

(declare-fun m!7927434 () Bool)

(assert (=> b!7249183 m!7927434))

(declare-fun m!7927436 () Bool)

(assert (=> b!7249183 m!7927436))

(assert (=> b!7249183 m!7927336))

(declare-fun m!7927438 () Bool)

(assert (=> b!7249182 m!7927438))

(declare-fun m!7927440 () Bool)

(assert (=> d!2252917 m!7927440))

(declare-fun m!7927442 () Bool)

(assert (=> d!2252917 m!7927442))

(assert (=> d!2252917 m!7927344))

(assert (=> b!7249076 d!2252917))

(declare-fun d!2252919 () Bool)

(assert (=> d!2252919 (= (tail!14305 (exprs!8076 ct1!232)) (t!384540 (exprs!8076 ct1!232)))))

(assert (=> b!7249070 d!2252919))

(assert (=> b!7249070 d!2252889))

(declare-fun d!2252921 () Bool)

(declare-fun c!1346926 () Bool)

(declare-fun e!4346609 () Bool)

(assert (=> d!2252921 (= c!1346926 e!4346609)))

(declare-fun res!2940259 () Bool)

(assert (=> d!2252921 (=> (not res!2940259) (not e!4346609))))

(assert (=> d!2252921 (= res!2940259 (is-Cons!70364 (exprs!8076 (Context!15153 lt!2584164))))))

(declare-fun e!4346608 () (Set Context!15152))

(assert (=> d!2252921 (= (derivationStepZipperUp!2460 (Context!15153 lt!2584164) (h!76813 s1!1971)) e!4346608)))

(declare-fun b!7249185 () Bool)

(declare-fun call!660142 () (Set Context!15152))

(assert (=> b!7249185 (= e!4346608 (set.union call!660142 (derivationStepZipperUp!2460 (Context!15153 (t!384540 (exprs!8076 (Context!15153 lt!2584164)))) (h!76813 s1!1971))))))

(declare-fun b!7249186 () Bool)

(declare-fun e!4346607 () (Set Context!15152))

(assert (=> b!7249186 (= e!4346607 (as set.empty (Set Context!15152)))))

(declare-fun bm!660137 () Bool)

(assert (=> bm!660137 (= call!660142 (derivationStepZipperDown!2630 (h!76812 (exprs!8076 (Context!15153 lt!2584164))) (Context!15153 (t!384540 (exprs!8076 (Context!15153 lt!2584164)))) (h!76813 s1!1971)))))

(declare-fun b!7249187 () Bool)

(assert (=> b!7249187 (= e!4346608 e!4346607)))

(declare-fun c!1346925 () Bool)

(assert (=> b!7249187 (= c!1346925 (is-Cons!70364 (exprs!8076 (Context!15153 lt!2584164))))))

(declare-fun b!7249188 () Bool)

(assert (=> b!7249188 (= e!4346607 call!660142)))

(declare-fun b!7249189 () Bool)

(assert (=> b!7249189 (= e!4346609 (nullable!7898 (h!76812 (exprs!8076 (Context!15153 lt!2584164)))))))

(assert (= (and d!2252921 res!2940259) b!7249189))

(assert (= (and d!2252921 c!1346926) b!7249185))

(assert (= (and d!2252921 (not c!1346926)) b!7249187))

(assert (= (and b!7249187 c!1346925) b!7249188))

(assert (= (and b!7249187 (not c!1346925)) b!7249186))

(assert (= (or b!7249185 b!7249188) bm!660137))

(declare-fun m!7927444 () Bool)

(assert (=> b!7249185 m!7927444))

(declare-fun m!7927446 () Bool)

(assert (=> bm!660137 m!7927446))

(declare-fun m!7927448 () Bool)

(assert (=> b!7249189 m!7927448))

(assert (=> b!7249070 d!2252921))

(declare-fun d!2252923 () Bool)

(assert (=> d!2252923 (= (isEmpty!40522 lt!2584164) (is-Nil!70364 lt!2584164))))

(assert (=> b!7249070 d!2252923))

(declare-fun bm!660150 () Bool)

(declare-fun c!1346941 () Bool)

(declare-fun c!1346939 () Bool)

(declare-fun call!660155 () List!70488)

(declare-fun $colon$colon!2911 (List!70488 Regex!18636) List!70488)

(assert (=> bm!660150 (= call!660155 ($colon$colon!2911 (exprs!8076 (Context!15153 (tail!14305 (exprs!8076 ct1!232)))) (ite (or c!1346941 c!1346939) (regTwo!37784 (h!76812 (exprs!8076 ct1!232))) (h!76812 (exprs!8076 ct1!232)))))))

(declare-fun bm!660151 () Bool)

(declare-fun call!660156 () (Set Context!15152))

(declare-fun call!660160 () (Set Context!15152))

(assert (=> bm!660151 (= call!660156 call!660160)))

(declare-fun b!7249216 () Bool)

(declare-fun e!4346629 () (Set Context!15152))

(declare-fun call!660158 () (Set Context!15152))

(assert (=> b!7249216 (= e!4346629 call!660158)))

(declare-fun b!7249217 () Bool)

(declare-fun e!4346627 () Bool)

(assert (=> b!7249217 (= c!1346941 e!4346627)))

(declare-fun res!2940264 () Bool)

(assert (=> b!7249217 (=> (not res!2940264) (not e!4346627))))

(assert (=> b!7249217 (= res!2940264 (is-Concat!27481 (h!76812 (exprs!8076 ct1!232))))))

(declare-fun e!4346624 () (Set Context!15152))

(declare-fun e!4346628 () (Set Context!15152))

(assert (=> b!7249217 (= e!4346624 e!4346628)))

(declare-fun bm!660152 () Bool)

(declare-fun c!1346938 () Bool)

(declare-fun call!660159 () (Set Context!15152))

(assert (=> bm!660152 (= call!660159 (derivationStepZipperDown!2630 (ite c!1346938 (regOne!37785 (h!76812 (exprs!8076 ct1!232))) (regOne!37784 (h!76812 (exprs!8076 ct1!232)))) (ite c!1346938 (Context!15153 (tail!14305 (exprs!8076 ct1!232))) (Context!15153 call!660155)) (h!76813 s1!1971)))))

(declare-fun b!7249218 () Bool)

(assert (=> b!7249218 (= e!4346628 (set.union call!660159 call!660156))))

(declare-fun b!7249219 () Bool)

(declare-fun c!1346942 () Bool)

(assert (=> b!7249219 (= c!1346942 (is-Star!18636 (h!76812 (exprs!8076 ct1!232))))))

(declare-fun e!4346625 () (Set Context!15152))

(assert (=> b!7249219 (= e!4346625 e!4346629)))

(declare-fun b!7249220 () Bool)

(assert (=> b!7249220 (= e!4346627 (nullable!7898 (regOne!37784 (h!76812 (exprs!8076 ct1!232)))))))

(declare-fun b!7249221 () Bool)

(assert (=> b!7249221 (= e!4346624 (set.union call!660159 call!660160))))

(declare-fun b!7249222 () Bool)

(declare-fun e!4346626 () (Set Context!15152))

(assert (=> b!7249222 (= e!4346626 (set.insert (Context!15153 (tail!14305 (exprs!8076 ct1!232))) (as set.empty (Set Context!15152))))))

(declare-fun b!7249223 () Bool)

(assert (=> b!7249223 (= e!4346628 e!4346625)))

(assert (=> b!7249223 (= c!1346939 (is-Concat!27481 (h!76812 (exprs!8076 ct1!232))))))

(declare-fun call!660157 () List!70488)

(declare-fun bm!660154 () Bool)

(assert (=> bm!660154 (= call!660160 (derivationStepZipperDown!2630 (ite c!1346938 (regTwo!37785 (h!76812 (exprs!8076 ct1!232))) (ite c!1346941 (regTwo!37784 (h!76812 (exprs!8076 ct1!232))) (ite c!1346939 (regOne!37784 (h!76812 (exprs!8076 ct1!232))) (reg!18965 (h!76812 (exprs!8076 ct1!232)))))) (ite (or c!1346938 c!1346941) (Context!15153 (tail!14305 (exprs!8076 ct1!232))) (Context!15153 call!660157)) (h!76813 s1!1971)))))

(declare-fun b!7249224 () Bool)

(assert (=> b!7249224 (= e!4346626 e!4346624)))

(assert (=> b!7249224 (= c!1346938 (is-Union!18636 (h!76812 (exprs!8076 ct1!232))))))

(declare-fun bm!660155 () Bool)

(assert (=> bm!660155 (= call!660157 call!660155)))

(declare-fun b!7249225 () Bool)

(assert (=> b!7249225 (= e!4346629 (as set.empty (Set Context!15152)))))

(declare-fun b!7249226 () Bool)

(assert (=> b!7249226 (= e!4346625 call!660158)))

(declare-fun d!2252925 () Bool)

(declare-fun c!1346940 () Bool)

(assert (=> d!2252925 (= c!1346940 (and (is-ElementMatch!18636 (h!76812 (exprs!8076 ct1!232))) (= (c!1346894 (h!76812 (exprs!8076 ct1!232))) (h!76813 s1!1971))))))

(assert (=> d!2252925 (= (derivationStepZipperDown!2630 (h!76812 (exprs!8076 ct1!232)) (Context!15153 (tail!14305 (exprs!8076 ct1!232))) (h!76813 s1!1971)) e!4346626)))

(declare-fun bm!660153 () Bool)

(assert (=> bm!660153 (= call!660158 call!660156)))

(assert (= (and d!2252925 c!1346940) b!7249222))

(assert (= (and d!2252925 (not c!1346940)) b!7249224))

(assert (= (and b!7249224 c!1346938) b!7249221))

(assert (= (and b!7249224 (not c!1346938)) b!7249217))

(assert (= (and b!7249217 res!2940264) b!7249220))

(assert (= (and b!7249217 c!1346941) b!7249218))

(assert (= (and b!7249217 (not c!1346941)) b!7249223))

(assert (= (and b!7249223 c!1346939) b!7249226))

(assert (= (and b!7249223 (not c!1346939)) b!7249219))

(assert (= (and b!7249219 c!1346942) b!7249216))

(assert (= (and b!7249219 (not c!1346942)) b!7249225))

(assert (= (or b!7249226 b!7249216) bm!660155))

(assert (= (or b!7249226 b!7249216) bm!660153))

(assert (= (or b!7249218 bm!660155) bm!660150))

(assert (= (or b!7249218 bm!660153) bm!660151))

(assert (= (or b!7249221 bm!660151) bm!660154))

(assert (= (or b!7249221 b!7249218) bm!660152))

(declare-fun m!7927470 () Bool)

(assert (=> bm!660152 m!7927470))

(declare-fun m!7927472 () Bool)

(assert (=> b!7249222 m!7927472))

(declare-fun m!7927476 () Bool)

(assert (=> bm!660150 m!7927476))

(declare-fun m!7927480 () Bool)

(assert (=> b!7249220 m!7927480))

(declare-fun m!7927482 () Bool)

(assert (=> bm!660154 m!7927482))

(assert (=> b!7249070 d!2252925))

(declare-fun d!2252933 () Bool)

(declare-fun lt!2584243 () Bool)

(assert (=> d!2252933 (= lt!2584243 (exists!4351 (toList!11465 lt!2584165) lambda!443830))))

(declare-fun choose!55978 ((Set Context!15152) Int) Bool)

(assert (=> d!2252933 (= lt!2584243 (choose!55978 lt!2584165 lambda!443830))))

(assert (=> d!2252933 (= (exists!4350 lt!2584165 lambda!443830) lt!2584243)))

(declare-fun bs!1905799 () Bool)

(assert (= bs!1905799 d!2252933))

(assert (=> bs!1905799 m!7927254))

(assert (=> bs!1905799 m!7927254))

(declare-fun m!7927484 () Bool)

(assert (=> bs!1905799 m!7927484))

(declare-fun m!7927486 () Bool)

(assert (=> bs!1905799 m!7927486))

(assert (=> b!7249075 d!2252933))

(declare-fun bs!1905800 () Bool)

(declare-fun d!2252935 () Bool)

(assert (= bs!1905800 (and d!2252935 b!7249075)))

(declare-fun lambda!443865 () Int)

(assert (=> bs!1905800 (not (= lambda!443865 lambda!443830))))

(assert (=> d!2252935 true))

(declare-fun order!28967 () Int)

(declare-fun dynLambda!28722 (Int Int) Int)

(assert (=> d!2252935 (< (dynLambda!28722 order!28967 lambda!443830) (dynLambda!28722 order!28967 lambda!443865))))

(declare-fun forall!17481 (List!70490 Int) Bool)

(assert (=> d!2252935 (= (exists!4351 lt!2584155 lambda!443830) (not (forall!17481 lt!2584155 lambda!443865)))))

(declare-fun bs!1905801 () Bool)

(assert (= bs!1905801 d!2252935))

(declare-fun m!7927488 () Bool)

(assert (=> bs!1905801 m!7927488))

(assert (=> b!7249075 d!2252935))

(declare-fun bs!1905804 () Bool)

(declare-fun d!2252937 () Bool)

(assert (= bs!1905804 (and d!2252937 b!7249075)))

(declare-fun lambda!443868 () Int)

(assert (=> bs!1905804 (= lambda!443868 lambda!443830)))

(declare-fun bs!1905805 () Bool)

(assert (= bs!1905805 (and d!2252937 d!2252935)))

(assert (=> bs!1905805 (not (= lambda!443868 lambda!443865))))

(assert (=> d!2252937 true))

(assert (=> d!2252937 (exists!4351 lt!2584155 lambda!443868)))

(declare-fun lt!2584246 () Unit!163856)

(declare-fun choose!55979 (List!70490 List!70489) Unit!163856)

(assert (=> d!2252937 (= lt!2584246 (choose!55979 lt!2584155 (t!384541 s1!1971)))))

(declare-fun content!14593 (List!70490) (Set Context!15152))

(assert (=> d!2252937 (matchZipper!3546 (content!14593 lt!2584155) (t!384541 s1!1971))))

(assert (=> d!2252937 (= (lemmaZipperMatchesExistsMatchingContext!739 lt!2584155 (t!384541 s1!1971)) lt!2584246)))

(declare-fun bs!1905806 () Bool)

(assert (= bs!1905806 d!2252937))

(declare-fun m!7927492 () Bool)

(assert (=> bs!1905806 m!7927492))

(declare-fun m!7927494 () Bool)

(assert (=> bs!1905806 m!7927494))

(declare-fun m!7927496 () Bool)

(assert (=> bs!1905806 m!7927496))

(assert (=> bs!1905806 m!7927496))

(declare-fun m!7927498 () Bool)

(assert (=> bs!1905806 m!7927498))

(assert (=> b!7249075 d!2252937))

(declare-fun d!2252941 () Bool)

(declare-fun e!4346632 () Bool)

(assert (=> d!2252941 e!4346632))

(declare-fun res!2940267 () Bool)

(assert (=> d!2252941 (=> (not res!2940267) (not e!4346632))))

(declare-fun lt!2584249 () List!70490)

(declare-fun noDuplicate!2984 (List!70490) Bool)

(assert (=> d!2252941 (= res!2940267 (noDuplicate!2984 lt!2584249))))

(declare-fun choose!55980 ((Set Context!15152)) List!70490)

(assert (=> d!2252941 (= lt!2584249 (choose!55980 lt!2584165))))

(assert (=> d!2252941 (= (toList!11465 lt!2584165) lt!2584249)))

(declare-fun b!7249233 () Bool)

(assert (=> b!7249233 (= e!4346632 (= (content!14593 lt!2584249) lt!2584165))))

(assert (= (and d!2252941 res!2940267) b!7249233))

(declare-fun m!7927500 () Bool)

(assert (=> d!2252941 m!7927500))

(declare-fun m!7927502 () Bool)

(assert (=> d!2252941 m!7927502))

(declare-fun m!7927504 () Bool)

(assert (=> b!7249233 m!7927504))

(assert (=> b!7249075 d!2252941))

(declare-fun b!7249238 () Bool)

(declare-fun e!4346635 () Bool)

(declare-fun tp!2037189 () Bool)

(assert (=> b!7249238 (= e!4346635 (and tp_is_empty!46737 tp!2037189))))

(assert (=> b!7249071 (= tp!2037171 e!4346635)))

(assert (= (and b!7249071 (is-Cons!70365 (t!384541 s1!1971))) b!7249238))

(declare-fun b!7249243 () Bool)

(declare-fun e!4346638 () Bool)

(declare-fun tp!2037194 () Bool)

(declare-fun tp!2037195 () Bool)

(assert (=> b!7249243 (= e!4346638 (and tp!2037194 tp!2037195))))

(assert (=> b!7249074 (= tp!2037173 e!4346638)))

(assert (= (and b!7249074 (is-Cons!70364 (exprs!8076 ct1!232))) b!7249243))

(declare-fun b!7249244 () Bool)

(declare-fun e!4346639 () Bool)

(declare-fun tp!2037196 () Bool)

(declare-fun tp!2037197 () Bool)

(assert (=> b!7249244 (= e!4346639 (and tp!2037196 tp!2037197))))

(assert (=> b!7249069 (= tp!2037172 e!4346639)))

(assert (= (and b!7249069 (is-Cons!70364 (exprs!8076 ct2!328))) b!7249244))

(declare-fun b!7249245 () Bool)

(declare-fun e!4346640 () Bool)

(declare-fun tp!2037198 () Bool)

(assert (=> b!7249245 (= e!4346640 (and tp_is_empty!46737 tp!2037198))))

(assert (=> b!7249079 (= tp!2037174 e!4346640)))

(assert (= (and b!7249079 (is-Cons!70365 (t!384541 s2!1849))) b!7249245))

(declare-fun b_lambda!278245 () Bool)

(assert (= b_lambda!278243 (or b!7249075 b_lambda!278245)))

(declare-fun bs!1905807 () Bool)

(declare-fun d!2252943 () Bool)

(assert (= bs!1905807 (and d!2252943 b!7249075)))

(assert (=> bs!1905807 (= (dynLambda!28721 lambda!443830 lt!2584227) (matchZipper!3546 (set.insert lt!2584227 (as set.empty (Set Context!15152))) (t!384541 s1!1971)))))

(declare-fun m!7927506 () Bool)

(assert (=> bs!1905807 m!7927506))

(assert (=> bs!1905807 m!7927506))

(declare-fun m!7927508 () Bool)

(assert (=> bs!1905807 m!7927508))

(assert (=> d!2252907 d!2252943))

(push 1)

(assert (not d!2252891))

(assert (not d!2252889))

(assert (not d!2252899))

(assert (not bm!660137))

(assert (not bm!660150))

(assert (not b!7249133))

(assert (not bs!1905807))

(assert (not b!7249135))

(assert (not bm!660152))

(assert (not d!2252937))

(assert (not d!2252935))

(assert (not b!7249243))

(assert (not b!7249244))

(assert (not d!2252895))

(assert (not b!7249121))

(assert (not b!7249132))

(assert (not b!7249238))

(assert (not b!7249174))

(assert (not b!7249245))

(assert (not b_lambda!278245))

(assert (not b!7249153))

(assert (not b!7249182))

(assert (not d!2252905))

(assert (not b!7249183))

(assert (not d!2252917))

(assert (not d!2252881))

(assert (not b!7249136))

(assert tp_is_empty!46737)

(assert (not b!7249179))

(assert (not d!2252907))

(assert (not b!7249185))

(assert (not b!7249154))

(assert (not d!2252911))

(assert (not bm!660154))

(assert (not d!2252941))

(assert (not d!2252883))

(assert (not d!2252893))

(assert (not d!2252887))

(assert (not b!7249178))

(assert (not b!7249138))

(assert (not bm!660136))

(assert (not b!7249220))

(assert (not b!7249180))

(assert (not b!7249233))

(assert (not b!7249137))

(assert (not d!2252901))

(assert (not d!2252897))

(assert (not b!7249189))

(assert (not d!2252915))

(assert (not d!2252933))

(assert (not b!7249122))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2252989 () Bool)

(declare-fun c!1346983 () Bool)

(declare-fun e!4346701 () Bool)

(assert (=> d!2252989 (= c!1346983 e!4346701)))

(declare-fun res!2940289 () Bool)

(assert (=> d!2252989 (=> (not res!2940289) (not e!4346701))))

(assert (=> d!2252989 (= res!2940289 (is-Cons!70364 (exprs!8076 (Context!15153 (t!384540 (exprs!8076 ct1!232))))))))

(declare-fun e!4346700 () (Set Context!15152))

(assert (=> d!2252989 (= (derivationStepZipperUp!2460 (Context!15153 (t!384540 (exprs!8076 ct1!232))) (h!76813 s1!1971)) e!4346700)))

(declare-fun call!660183 () (Set Context!15152))

(declare-fun b!7249347 () Bool)

(assert (=> b!7249347 (= e!4346700 (set.union call!660183 (derivationStepZipperUp!2460 (Context!15153 (t!384540 (exprs!8076 (Context!15153 (t!384540 (exprs!8076 ct1!232)))))) (h!76813 s1!1971))))))

(declare-fun b!7249348 () Bool)

(declare-fun e!4346699 () (Set Context!15152))

(assert (=> b!7249348 (= e!4346699 (as set.empty (Set Context!15152)))))

(declare-fun bm!660178 () Bool)

(assert (=> bm!660178 (= call!660183 (derivationStepZipperDown!2630 (h!76812 (exprs!8076 (Context!15153 (t!384540 (exprs!8076 ct1!232))))) (Context!15153 (t!384540 (exprs!8076 (Context!15153 (t!384540 (exprs!8076 ct1!232)))))) (h!76813 s1!1971)))))

(declare-fun b!7249349 () Bool)

(assert (=> b!7249349 (= e!4346700 e!4346699)))

(declare-fun c!1346982 () Bool)

(assert (=> b!7249349 (= c!1346982 (is-Cons!70364 (exprs!8076 (Context!15153 (t!384540 (exprs!8076 ct1!232))))))))

(declare-fun b!7249350 () Bool)

(assert (=> b!7249350 (= e!4346699 call!660183)))

(declare-fun b!7249351 () Bool)

(assert (=> b!7249351 (= e!4346701 (nullable!7898 (h!76812 (exprs!8076 (Context!15153 (t!384540 (exprs!8076 ct1!232)))))))))

(assert (= (and d!2252989 res!2940289) b!7249351))

(assert (= (and d!2252989 c!1346983) b!7249347))

(assert (= (and d!2252989 (not c!1346983)) b!7249349))

(assert (= (and b!7249349 c!1346982) b!7249350))

(assert (= (and b!7249349 (not c!1346982)) b!7249348))

(assert (= (or b!7249347 b!7249350) bm!660178))

(declare-fun m!7927650 () Bool)

(assert (=> b!7249347 m!7927650))

(declare-fun m!7927652 () Bool)

(assert (=> bm!660178 m!7927652))

(declare-fun m!7927654 () Bool)

(assert (=> b!7249351 m!7927654))

(assert (=> b!7249174 d!2252989))

(declare-fun d!2252991 () Bool)

(declare-fun c!1346985 () Bool)

(declare-fun e!4346704 () Bool)

(assert (=> d!2252991 (= c!1346985 e!4346704)))

(declare-fun res!2940290 () Bool)

(assert (=> d!2252991 (=> (not res!2940290) (not e!4346704))))

(assert (=> d!2252991 (= res!2940290 (is-Cons!70364 (exprs!8076 (Context!15153 (t!384540 (exprs!8076 (Context!15153 lt!2584164)))))))))

(declare-fun e!4346703 () (Set Context!15152))

(assert (=> d!2252991 (= (derivationStepZipperUp!2460 (Context!15153 (t!384540 (exprs!8076 (Context!15153 lt!2584164)))) (h!76813 s1!1971)) e!4346703)))

(declare-fun call!660184 () (Set Context!15152))

(declare-fun b!7249352 () Bool)

(assert (=> b!7249352 (= e!4346703 (set.union call!660184 (derivationStepZipperUp!2460 (Context!15153 (t!384540 (exprs!8076 (Context!15153 (t!384540 (exprs!8076 (Context!15153 lt!2584164))))))) (h!76813 s1!1971))))))

(declare-fun b!7249353 () Bool)

(declare-fun e!4346702 () (Set Context!15152))

(assert (=> b!7249353 (= e!4346702 (as set.empty (Set Context!15152)))))

(declare-fun bm!660179 () Bool)

(assert (=> bm!660179 (= call!660184 (derivationStepZipperDown!2630 (h!76812 (exprs!8076 (Context!15153 (t!384540 (exprs!8076 (Context!15153 lt!2584164)))))) (Context!15153 (t!384540 (exprs!8076 (Context!15153 (t!384540 (exprs!8076 (Context!15153 lt!2584164))))))) (h!76813 s1!1971)))))

(declare-fun b!7249354 () Bool)

(assert (=> b!7249354 (= e!4346703 e!4346702)))

(declare-fun c!1346984 () Bool)

(assert (=> b!7249354 (= c!1346984 (is-Cons!70364 (exprs!8076 (Context!15153 (t!384540 (exprs!8076 (Context!15153 lt!2584164)))))))))

(declare-fun b!7249355 () Bool)

(assert (=> b!7249355 (= e!4346702 call!660184)))

(declare-fun b!7249356 () Bool)

(assert (=> b!7249356 (= e!4346704 (nullable!7898 (h!76812 (exprs!8076 (Context!15153 (t!384540 (exprs!8076 (Context!15153 lt!2584164))))))))))

(assert (= (and d!2252991 res!2940290) b!7249356))

(assert (= (and d!2252991 c!1346985) b!7249352))

(assert (= (and d!2252991 (not c!1346985)) b!7249354))

(assert (= (and b!7249354 c!1346984) b!7249355))

(assert (= (and b!7249354 (not c!1346984)) b!7249353))

(assert (= (or b!7249352 b!7249355) bm!660179))

(declare-fun m!7927656 () Bool)

(assert (=> b!7249352 m!7927656))

(declare-fun m!7927658 () Bool)

(assert (=> bm!660179 m!7927658))

(declare-fun m!7927660 () Bool)

(assert (=> b!7249356 m!7927660))

(assert (=> b!7249185 d!2252991))

(declare-fun bs!1905828 () Bool)

(declare-fun d!2252993 () Bool)

(assert (= bs!1905828 (and d!2252993 b!7249075)))

(declare-fun lambda!443885 () Int)

(assert (=> bs!1905828 (not (= lambda!443885 lambda!443830))))

(declare-fun bs!1905829 () Bool)

(assert (= bs!1905829 (and d!2252993 d!2252935)))

(assert (=> bs!1905829 (not (= lambda!443885 lambda!443865))))

(declare-fun bs!1905830 () Bool)

(assert (= bs!1905830 (and d!2252993 d!2252937)))

(assert (=> bs!1905830 (not (= lambda!443885 lambda!443868))))

(assert (=> d!2252993 (= (nullableZipper!2907 lt!2584161) (exists!4350 lt!2584161 lambda!443885))))

(declare-fun bs!1905831 () Bool)

(assert (= bs!1905831 d!2252993))

(declare-fun m!7927662 () Bool)

(assert (=> bs!1905831 m!7927662))

(assert (=> b!7249135 d!2252993))

(declare-fun bs!1905832 () Bool)

(declare-fun d!2252995 () Bool)

(assert (= bs!1905832 (and d!2252995 b!7249075)))

(declare-fun lambda!443886 () Int)

(assert (=> bs!1905832 (not (= lambda!443886 lambda!443830))))

(declare-fun bs!1905833 () Bool)

(assert (= bs!1905833 (and d!2252995 d!2252935)))

(assert (=> bs!1905833 (= (= lambda!443868 lambda!443830) (= lambda!443886 lambda!443865))))

(declare-fun bs!1905834 () Bool)

(assert (= bs!1905834 (and d!2252995 d!2252937)))

(assert (=> bs!1905834 (not (= lambda!443886 lambda!443868))))

(declare-fun bs!1905835 () Bool)

(assert (= bs!1905835 (and d!2252995 d!2252993)))

(assert (=> bs!1905835 (not (= lambda!443886 lambda!443885))))

(assert (=> d!2252995 true))

(assert (=> d!2252995 (< (dynLambda!28722 order!28967 lambda!443868) (dynLambda!28722 order!28967 lambda!443886))))

(assert (=> d!2252995 (= (exists!4351 lt!2584155 lambda!443868) (not (forall!17481 lt!2584155 lambda!443886)))))

(declare-fun bs!1905836 () Bool)

(assert (= bs!1905836 d!2252995))

(declare-fun m!7927664 () Bool)

(assert (=> bs!1905836 m!7927664))

(assert (=> d!2252937 d!2252995))

(declare-fun bs!1905837 () Bool)

(declare-fun d!2252997 () Bool)

(assert (= bs!1905837 (and d!2252997 d!2252993)))

(declare-fun lambda!443889 () Int)

(assert (=> bs!1905837 (not (= lambda!443889 lambda!443885))))

(declare-fun bs!1905838 () Bool)

(assert (= bs!1905838 (and d!2252997 d!2252937)))

(assert (=> bs!1905838 (= lambda!443889 lambda!443868)))

(declare-fun bs!1905839 () Bool)

(assert (= bs!1905839 (and d!2252997 d!2252935)))

(assert (=> bs!1905839 (not (= lambda!443889 lambda!443865))))

(declare-fun bs!1905840 () Bool)

(assert (= bs!1905840 (and d!2252997 d!2252995)))

(assert (=> bs!1905840 (not (= lambda!443889 lambda!443886))))

(declare-fun bs!1905841 () Bool)

(assert (= bs!1905841 (and d!2252997 b!7249075)))

(assert (=> bs!1905841 (= lambda!443889 lambda!443830)))

(assert (=> d!2252997 true))

(assert (=> d!2252997 (exists!4351 lt!2584155 lambda!443889)))

(assert (=> d!2252997 true))

(declare-fun _$60!1216 () Unit!163856)

(assert (=> d!2252997 (= (choose!55979 lt!2584155 (t!384541 s1!1971)) _$60!1216)))

(declare-fun bs!1905842 () Bool)

(assert (= bs!1905842 d!2252997))

(declare-fun m!7927666 () Bool)

(assert (=> bs!1905842 m!7927666))

(assert (=> d!2252937 d!2252997))

(declare-fun d!2252999 () Bool)

(declare-fun c!1346990 () Bool)

(assert (=> d!2252999 (= c!1346990 (isEmpty!40524 (t!384541 s1!1971)))))

(declare-fun e!4346705 () Bool)

(assert (=> d!2252999 (= (matchZipper!3546 (content!14593 lt!2584155) (t!384541 s1!1971)) e!4346705)))

(declare-fun b!7249357 () Bool)

(assert (=> b!7249357 (= e!4346705 (nullableZipper!2907 (content!14593 lt!2584155)))))

(declare-fun b!7249358 () Bool)

(assert (=> b!7249358 (= e!4346705 (matchZipper!3546 (derivationStepZipper!3414 (content!14593 lt!2584155) (head!14896 (t!384541 s1!1971))) (tail!14307 (t!384541 s1!1971))))))

(assert (= (and d!2252999 c!1346990) b!7249357))

(assert (= (and d!2252999 (not c!1346990)) b!7249358))

(assert (=> d!2252999 m!7927368))

(assert (=> b!7249357 m!7927496))

(declare-fun m!7927668 () Bool)

(assert (=> b!7249357 m!7927668))

(assert (=> b!7249358 m!7927372))

(assert (=> b!7249358 m!7927496))

(assert (=> b!7249358 m!7927372))

(declare-fun m!7927670 () Bool)

(assert (=> b!7249358 m!7927670))

(assert (=> b!7249358 m!7927376))

(assert (=> b!7249358 m!7927670))

(assert (=> b!7249358 m!7927376))

(declare-fun m!7927672 () Bool)

(assert (=> b!7249358 m!7927672))

(assert (=> d!2252937 d!2252999))

(declare-fun d!2253001 () Bool)

(declare-fun c!1346993 () Bool)

(assert (=> d!2253001 (= c!1346993 (is-Nil!70366 lt!2584155))))

(declare-fun e!4346708 () (Set Context!15152))

(assert (=> d!2253001 (= (content!14593 lt!2584155) e!4346708)))

(declare-fun b!7249363 () Bool)

(assert (=> b!7249363 (= e!4346708 (as set.empty (Set Context!15152)))))

(declare-fun b!7249364 () Bool)

(assert (=> b!7249364 (= e!4346708 (set.union (set.insert (h!76814 lt!2584155) (as set.empty (Set Context!15152))) (content!14593 (t!384542 lt!2584155))))))

(assert (= (and d!2253001 c!1346993) b!7249363))

(assert (= (and d!2253001 (not c!1346993)) b!7249364))

(declare-fun m!7927674 () Bool)

(assert (=> b!7249364 m!7927674))

(declare-fun m!7927676 () Bool)

(assert (=> b!7249364 m!7927676))

(assert (=> d!2252937 d!2253001))

(declare-fun c!1346997 () Bool)

(declare-fun c!1346995 () Bool)

(declare-fun bm!660180 () Bool)

(declare-fun call!660185 () List!70488)

(assert (=> bm!660180 (= call!660185 ($colon$colon!2911 (exprs!8076 (ite (or c!1346938 c!1346941) (Context!15153 (tail!14305 (exprs!8076 ct1!232))) (Context!15153 call!660157))) (ite (or c!1346997 c!1346995) (regTwo!37784 (ite c!1346938 (regTwo!37785 (h!76812 (exprs!8076 ct1!232))) (ite c!1346941 (regTwo!37784 (h!76812 (exprs!8076 ct1!232))) (ite c!1346939 (regOne!37784 (h!76812 (exprs!8076 ct1!232))) (reg!18965 (h!76812 (exprs!8076 ct1!232))))))) (ite c!1346938 (regTwo!37785 (h!76812 (exprs!8076 ct1!232))) (ite c!1346941 (regTwo!37784 (h!76812 (exprs!8076 ct1!232))) (ite c!1346939 (regOne!37784 (h!76812 (exprs!8076 ct1!232))) (reg!18965 (h!76812 (exprs!8076 ct1!232)))))))))))

(declare-fun bm!660181 () Bool)

(declare-fun call!660186 () (Set Context!15152))

(declare-fun call!660190 () (Set Context!15152))

(assert (=> bm!660181 (= call!660186 call!660190)))

(declare-fun b!7249365 () Bool)

(declare-fun e!4346714 () (Set Context!15152))

(declare-fun call!660188 () (Set Context!15152))

(assert (=> b!7249365 (= e!4346714 call!660188)))

(declare-fun b!7249366 () Bool)

(declare-fun e!4346712 () Bool)

(assert (=> b!7249366 (= c!1346997 e!4346712)))

(declare-fun res!2940291 () Bool)

(assert (=> b!7249366 (=> (not res!2940291) (not e!4346712))))

(assert (=> b!7249366 (= res!2940291 (is-Concat!27481 (ite c!1346938 (regTwo!37785 (h!76812 (exprs!8076 ct1!232))) (ite c!1346941 (regTwo!37784 (h!76812 (exprs!8076 ct1!232))) (ite c!1346939 (regOne!37784 (h!76812 (exprs!8076 ct1!232))) (reg!18965 (h!76812 (exprs!8076 ct1!232))))))))))

(declare-fun e!4346709 () (Set Context!15152))

(declare-fun e!4346713 () (Set Context!15152))

(assert (=> b!7249366 (= e!4346709 e!4346713)))

(declare-fun call!660189 () (Set Context!15152))

(declare-fun c!1346994 () Bool)

(declare-fun bm!660182 () Bool)

(assert (=> bm!660182 (= call!660189 (derivationStepZipperDown!2630 (ite c!1346994 (regOne!37785 (ite c!1346938 (regTwo!37785 (h!76812 (exprs!8076 ct1!232))) (ite c!1346941 (regTwo!37784 (h!76812 (exprs!8076 ct1!232))) (ite c!1346939 (regOne!37784 (h!76812 (exprs!8076 ct1!232))) (reg!18965 (h!76812 (exprs!8076 ct1!232))))))) (regOne!37784 (ite c!1346938 (regTwo!37785 (h!76812 (exprs!8076 ct1!232))) (ite c!1346941 (regTwo!37784 (h!76812 (exprs!8076 ct1!232))) (ite c!1346939 (regOne!37784 (h!76812 (exprs!8076 ct1!232))) (reg!18965 (h!76812 (exprs!8076 ct1!232)))))))) (ite c!1346994 (ite (or c!1346938 c!1346941) (Context!15153 (tail!14305 (exprs!8076 ct1!232))) (Context!15153 call!660157)) (Context!15153 call!660185)) (h!76813 s1!1971)))))

(declare-fun b!7249367 () Bool)

(assert (=> b!7249367 (= e!4346713 (set.union call!660189 call!660186))))

(declare-fun b!7249368 () Bool)

(declare-fun c!1346998 () Bool)

(assert (=> b!7249368 (= c!1346998 (is-Star!18636 (ite c!1346938 (regTwo!37785 (h!76812 (exprs!8076 ct1!232))) (ite c!1346941 (regTwo!37784 (h!76812 (exprs!8076 ct1!232))) (ite c!1346939 (regOne!37784 (h!76812 (exprs!8076 ct1!232))) (reg!18965 (h!76812 (exprs!8076 ct1!232))))))))))

(declare-fun e!4346710 () (Set Context!15152))

(assert (=> b!7249368 (= e!4346710 e!4346714)))

(declare-fun b!7249369 () Bool)

(assert (=> b!7249369 (= e!4346712 (nullable!7898 (regOne!37784 (ite c!1346938 (regTwo!37785 (h!76812 (exprs!8076 ct1!232))) (ite c!1346941 (regTwo!37784 (h!76812 (exprs!8076 ct1!232))) (ite c!1346939 (regOne!37784 (h!76812 (exprs!8076 ct1!232))) (reg!18965 (h!76812 (exprs!8076 ct1!232)))))))))))

(declare-fun b!7249370 () Bool)

(assert (=> b!7249370 (= e!4346709 (set.union call!660189 call!660190))))

(declare-fun b!7249371 () Bool)

(declare-fun e!4346711 () (Set Context!15152))

(assert (=> b!7249371 (= e!4346711 (set.insert (ite (or c!1346938 c!1346941) (Context!15153 (tail!14305 (exprs!8076 ct1!232))) (Context!15153 call!660157)) (as set.empty (Set Context!15152))))))

(declare-fun b!7249372 () Bool)

(assert (=> b!7249372 (= e!4346713 e!4346710)))

(assert (=> b!7249372 (= c!1346995 (is-Concat!27481 (ite c!1346938 (regTwo!37785 (h!76812 (exprs!8076 ct1!232))) (ite c!1346941 (regTwo!37784 (h!76812 (exprs!8076 ct1!232))) (ite c!1346939 (regOne!37784 (h!76812 (exprs!8076 ct1!232))) (reg!18965 (h!76812 (exprs!8076 ct1!232))))))))))

(declare-fun bm!660184 () Bool)

(declare-fun call!660187 () List!70488)

(assert (=> bm!660184 (= call!660190 (derivationStepZipperDown!2630 (ite c!1346994 (regTwo!37785 (ite c!1346938 (regTwo!37785 (h!76812 (exprs!8076 ct1!232))) (ite c!1346941 (regTwo!37784 (h!76812 (exprs!8076 ct1!232))) (ite c!1346939 (regOne!37784 (h!76812 (exprs!8076 ct1!232))) (reg!18965 (h!76812 (exprs!8076 ct1!232))))))) (ite c!1346997 (regTwo!37784 (ite c!1346938 (regTwo!37785 (h!76812 (exprs!8076 ct1!232))) (ite c!1346941 (regTwo!37784 (h!76812 (exprs!8076 ct1!232))) (ite c!1346939 (regOne!37784 (h!76812 (exprs!8076 ct1!232))) (reg!18965 (h!76812 (exprs!8076 ct1!232))))))) (ite c!1346995 (regOne!37784 (ite c!1346938 (regTwo!37785 (h!76812 (exprs!8076 ct1!232))) (ite c!1346941 (regTwo!37784 (h!76812 (exprs!8076 ct1!232))) (ite c!1346939 (regOne!37784 (h!76812 (exprs!8076 ct1!232))) (reg!18965 (h!76812 (exprs!8076 ct1!232))))))) (reg!18965 (ite c!1346938 (regTwo!37785 (h!76812 (exprs!8076 ct1!232))) (ite c!1346941 (regTwo!37784 (h!76812 (exprs!8076 ct1!232))) (ite c!1346939 (regOne!37784 (h!76812 (exprs!8076 ct1!232))) (reg!18965 (h!76812 (exprs!8076 ct1!232)))))))))) (ite (or c!1346994 c!1346997) (ite (or c!1346938 c!1346941) (Context!15153 (tail!14305 (exprs!8076 ct1!232))) (Context!15153 call!660157)) (Context!15153 call!660187)) (h!76813 s1!1971)))))

(declare-fun b!7249373 () Bool)

(assert (=> b!7249373 (= e!4346711 e!4346709)))

(assert (=> b!7249373 (= c!1346994 (is-Union!18636 (ite c!1346938 (regTwo!37785 (h!76812 (exprs!8076 ct1!232))) (ite c!1346941 (regTwo!37784 (h!76812 (exprs!8076 ct1!232))) (ite c!1346939 (regOne!37784 (h!76812 (exprs!8076 ct1!232))) (reg!18965 (h!76812 (exprs!8076 ct1!232))))))))))

(declare-fun bm!660185 () Bool)

(assert (=> bm!660185 (= call!660187 call!660185)))

(declare-fun b!7249374 () Bool)

(assert (=> b!7249374 (= e!4346714 (as set.empty (Set Context!15152)))))

(declare-fun b!7249375 () Bool)

(assert (=> b!7249375 (= e!4346710 call!660188)))

(declare-fun d!2253003 () Bool)

(declare-fun c!1346996 () Bool)

(assert (=> d!2253003 (= c!1346996 (and (is-ElementMatch!18636 (ite c!1346938 (regTwo!37785 (h!76812 (exprs!8076 ct1!232))) (ite c!1346941 (regTwo!37784 (h!76812 (exprs!8076 ct1!232))) (ite c!1346939 (regOne!37784 (h!76812 (exprs!8076 ct1!232))) (reg!18965 (h!76812 (exprs!8076 ct1!232))))))) (= (c!1346894 (ite c!1346938 (regTwo!37785 (h!76812 (exprs!8076 ct1!232))) (ite c!1346941 (regTwo!37784 (h!76812 (exprs!8076 ct1!232))) (ite c!1346939 (regOne!37784 (h!76812 (exprs!8076 ct1!232))) (reg!18965 (h!76812 (exprs!8076 ct1!232))))))) (h!76813 s1!1971))))))

(assert (=> d!2253003 (= (derivationStepZipperDown!2630 (ite c!1346938 (regTwo!37785 (h!76812 (exprs!8076 ct1!232))) (ite c!1346941 (regTwo!37784 (h!76812 (exprs!8076 ct1!232))) (ite c!1346939 (regOne!37784 (h!76812 (exprs!8076 ct1!232))) (reg!18965 (h!76812 (exprs!8076 ct1!232)))))) (ite (or c!1346938 c!1346941) (Context!15153 (tail!14305 (exprs!8076 ct1!232))) (Context!15153 call!660157)) (h!76813 s1!1971)) e!4346711)))

(declare-fun bm!660183 () Bool)

(assert (=> bm!660183 (= call!660188 call!660186)))

(assert (= (and d!2253003 c!1346996) b!7249371))

(assert (= (and d!2253003 (not c!1346996)) b!7249373))

(assert (= (and b!7249373 c!1346994) b!7249370))

(assert (= (and b!7249373 (not c!1346994)) b!7249366))

(assert (= (and b!7249366 res!2940291) b!7249369))

(assert (= (and b!7249366 c!1346997) b!7249367))

(assert (= (and b!7249366 (not c!1346997)) b!7249372))

(assert (= (and b!7249372 c!1346995) b!7249375))

(assert (= (and b!7249372 (not c!1346995)) b!7249368))

(assert (= (and b!7249368 c!1346998) b!7249365))

(assert (= (and b!7249368 (not c!1346998)) b!7249374))

(assert (= (or b!7249375 b!7249365) bm!660185))

(assert (= (or b!7249375 b!7249365) bm!660183))

(assert (= (or b!7249367 bm!660185) bm!660180))

(assert (= (or b!7249367 bm!660183) bm!660181))

(assert (= (or b!7249370 bm!660181) bm!660184))

(assert (= (or b!7249370 b!7249367) bm!660182))

(declare-fun m!7927678 () Bool)

(assert (=> bm!660182 m!7927678))

(declare-fun m!7927680 () Bool)

(assert (=> b!7249371 m!7927680))

(declare-fun m!7927682 () Bool)

(assert (=> bm!660180 m!7927682))

(declare-fun m!7927684 () Bool)

(assert (=> b!7249369 m!7927684))

(declare-fun m!7927686 () Bool)

(assert (=> bm!660184 m!7927686))

(assert (=> bm!660154 d!2253003))

(declare-fun b!7249378 () Bool)

(declare-fun res!2940292 () Bool)

(declare-fun e!4346715 () Bool)

(assert (=> b!7249378 (=> (not res!2940292) (not e!4346715))))

(declare-fun lt!2584270 () List!70488)

(assert (=> b!7249378 (= res!2940292 (= (size!41703 lt!2584270) (+ (size!41703 (t!384540 (exprs!8076 lt!2584156))) (size!41703 (exprs!8076 ct2!328)))))))

(declare-fun b!7249376 () Bool)

(declare-fun e!4346716 () List!70488)

(assert (=> b!7249376 (= e!4346716 (exprs!8076 ct2!328))))

(declare-fun b!7249377 () Bool)

(assert (=> b!7249377 (= e!4346716 (Cons!70364 (h!76812 (t!384540 (exprs!8076 lt!2584156))) (++!16534 (t!384540 (t!384540 (exprs!8076 lt!2584156))) (exprs!8076 ct2!328))))))

(declare-fun b!7249379 () Bool)

(assert (=> b!7249379 (= e!4346715 (or (not (= (exprs!8076 ct2!328) Nil!70364)) (= lt!2584270 (t!384540 (exprs!8076 lt!2584156)))))))

(declare-fun d!2253005 () Bool)

(assert (=> d!2253005 e!4346715))

(declare-fun res!2940293 () Bool)

(assert (=> d!2253005 (=> (not res!2940293) (not e!4346715))))

(assert (=> d!2253005 (= res!2940293 (= (content!14591 lt!2584270) (set.union (content!14591 (t!384540 (exprs!8076 lt!2584156))) (content!14591 (exprs!8076 ct2!328)))))))

(assert (=> d!2253005 (= lt!2584270 e!4346716)))

(declare-fun c!1346999 () Bool)

(assert (=> d!2253005 (= c!1346999 (is-Nil!70364 (t!384540 (exprs!8076 lt!2584156))))))

(assert (=> d!2253005 (= (++!16534 (t!384540 (exprs!8076 lt!2584156)) (exprs!8076 ct2!328)) lt!2584270)))

(assert (= (and d!2253005 c!1346999) b!7249376))

(assert (= (and d!2253005 (not c!1346999)) b!7249377))

(assert (= (and d!2253005 res!2940293) b!7249378))

(assert (= (and b!7249378 res!2940292) b!7249379))

(declare-fun m!7927688 () Bool)

(assert (=> b!7249378 m!7927688))

(declare-fun m!7927690 () Bool)

(assert (=> b!7249378 m!7927690))

(assert (=> b!7249378 m!7927336))

(declare-fun m!7927692 () Bool)

(assert (=> b!7249377 m!7927692))

(declare-fun m!7927694 () Bool)

(assert (=> d!2253005 m!7927694))

(declare-fun m!7927696 () Bool)

(assert (=> d!2253005 m!7927696))

(assert (=> d!2253005 m!7927344))

(assert (=> b!7249182 d!2253005))

(declare-fun d!2253007 () Bool)

(assert (=> d!2253007 (= (isEmpty!40524 s1!1971) (is-Nil!70365 s1!1971))))

(assert (=> d!2252891 d!2253007))

(declare-fun d!2253009 () Bool)

(declare-fun lt!2584273 () Int)

(assert (=> d!2253009 (>= lt!2584273 0)))

(declare-fun e!4346719 () Int)

(assert (=> d!2253009 (= lt!2584273 e!4346719)))

(declare-fun c!1347002 () Bool)

(assert (=> d!2253009 (= c!1347002 (is-Nil!70364 lt!2584233))))

(assert (=> d!2253009 (= (size!41703 lt!2584233) lt!2584273)))

(declare-fun b!7249384 () Bool)

(assert (=> b!7249384 (= e!4346719 0)))

(declare-fun b!7249385 () Bool)

(assert (=> b!7249385 (= e!4346719 (+ 1 (size!41703 (t!384540 lt!2584233))))))

(assert (= (and d!2253009 c!1347002) b!7249384))

(assert (= (and d!2253009 (not c!1347002)) b!7249385))

(declare-fun m!7927698 () Bool)

(assert (=> b!7249385 m!7927698))

(assert (=> b!7249183 d!2253009))

(declare-fun d!2253011 () Bool)

(declare-fun lt!2584274 () Int)

(assert (=> d!2253011 (>= lt!2584274 0)))

(declare-fun e!4346720 () Int)

(assert (=> d!2253011 (= lt!2584274 e!4346720)))

(declare-fun c!1347003 () Bool)

(assert (=> d!2253011 (= c!1347003 (is-Nil!70364 (exprs!8076 lt!2584156)))))

(assert (=> d!2253011 (= (size!41703 (exprs!8076 lt!2584156)) lt!2584274)))

(declare-fun b!7249386 () Bool)

(assert (=> b!7249386 (= e!4346720 0)))

(declare-fun b!7249387 () Bool)

(assert (=> b!7249387 (= e!4346720 (+ 1 (size!41703 (t!384540 (exprs!8076 lt!2584156)))))))

(assert (= (and d!2253011 c!1347003) b!7249386))

(assert (= (and d!2253011 (not c!1347003)) b!7249387))

(assert (=> b!7249387 m!7927690))

(assert (=> b!7249183 d!2253011))

(declare-fun d!2253013 () Bool)

(declare-fun lt!2584275 () Int)

(assert (=> d!2253013 (>= lt!2584275 0)))

(declare-fun e!4346721 () Int)

(assert (=> d!2253013 (= lt!2584275 e!4346721)))

(declare-fun c!1347004 () Bool)

(assert (=> d!2253013 (= c!1347004 (is-Nil!70364 (exprs!8076 ct2!328)))))

(assert (=> d!2253013 (= (size!41703 (exprs!8076 ct2!328)) lt!2584275)))

(declare-fun b!7249388 () Bool)

(assert (=> b!7249388 (= e!4346721 0)))

(declare-fun b!7249389 () Bool)

(assert (=> b!7249389 (= e!4346721 (+ 1 (size!41703 (t!384540 (exprs!8076 ct2!328)))))))

(assert (= (and d!2253013 c!1347004) b!7249388))

(assert (= (and d!2253013 (not c!1347004)) b!7249389))

(declare-fun m!7927700 () Bool)

(assert (=> b!7249389 m!7927700))

(assert (=> b!7249183 d!2253013))

(declare-fun d!2253015 () Bool)

(declare-fun c!1347005 () Bool)

(assert (=> d!2253015 (= c!1347005 (isEmpty!40524 (t!384541 s1!1971)))))

(declare-fun e!4346722 () Bool)

(assert (=> d!2253015 (= (matchZipper!3546 (set.insert lt!2584227 (as set.empty (Set Context!15152))) (t!384541 s1!1971)) e!4346722)))

(declare-fun b!7249390 () Bool)

(assert (=> b!7249390 (= e!4346722 (nullableZipper!2907 (set.insert lt!2584227 (as set.empty (Set Context!15152)))))))

(declare-fun b!7249391 () Bool)

(assert (=> b!7249391 (= e!4346722 (matchZipper!3546 (derivationStepZipper!3414 (set.insert lt!2584227 (as set.empty (Set Context!15152))) (head!14896 (t!384541 s1!1971))) (tail!14307 (t!384541 s1!1971))))))

(assert (= (and d!2253015 c!1347005) b!7249390))

(assert (= (and d!2253015 (not c!1347005)) b!7249391))

(assert (=> d!2253015 m!7927368))

(assert (=> b!7249390 m!7927506))

(declare-fun m!7927702 () Bool)

(assert (=> b!7249390 m!7927702))

(assert (=> b!7249391 m!7927372))

(assert (=> b!7249391 m!7927506))

(assert (=> b!7249391 m!7927372))

(declare-fun m!7927704 () Bool)

(assert (=> b!7249391 m!7927704))

(assert (=> b!7249391 m!7927376))

(assert (=> b!7249391 m!7927704))

(assert (=> b!7249391 m!7927376))

(declare-fun m!7927706 () Bool)

(assert (=> b!7249391 m!7927706))

(assert (=> bs!1905807 d!2253015))

(declare-fun d!2253017 () Bool)

(declare-fun res!2940298 () Bool)

(declare-fun e!4346727 () Bool)

(assert (=> d!2253017 (=> res!2940298 e!4346727)))

(assert (=> d!2253017 (= res!2940298 (is-Nil!70364 (exprs!8076 (Context!15153 (tail!14305 lt!2584164)))))))

(assert (=> d!2253017 (= (forall!17480 (exprs!8076 (Context!15153 (tail!14305 lt!2584164))) lambda!443851) e!4346727)))

(declare-fun b!7249396 () Bool)

(declare-fun e!4346728 () Bool)

(assert (=> b!7249396 (= e!4346727 e!4346728)))

(declare-fun res!2940299 () Bool)

(assert (=> b!7249396 (=> (not res!2940299) (not e!4346728))))

(declare-fun dynLambda!28725 (Int Regex!18636) Bool)

(assert (=> b!7249396 (= res!2940299 (dynLambda!28725 lambda!443851 (h!76812 (exprs!8076 (Context!15153 (tail!14305 lt!2584164))))))))

(declare-fun b!7249397 () Bool)

(assert (=> b!7249397 (= e!4346728 (forall!17480 (t!384540 (exprs!8076 (Context!15153 (tail!14305 lt!2584164)))) lambda!443851))))

(assert (= (and d!2253017 (not res!2940298)) b!7249396))

(assert (= (and b!7249396 res!2940299) b!7249397))

(declare-fun b_lambda!278251 () Bool)

(assert (=> (not b_lambda!278251) (not b!7249396)))

(declare-fun m!7927708 () Bool)

(assert (=> b!7249396 m!7927708))

(declare-fun m!7927710 () Bool)

(assert (=> b!7249397 m!7927710))

(assert (=> d!2252883 d!2253017))

(declare-fun d!2253019 () Bool)

(declare-fun c!1347006 () Bool)

(assert (=> d!2253019 (= c!1347006 (isEmpty!40524 (tail!14307 (++!16535 (t!384541 s1!1971) s2!1849))))))

(declare-fun e!4346729 () Bool)

(assert (=> d!2253019 (= (matchZipper!3546 (derivationStepZipper!3414 (set.insert (Context!15153 (++!16534 (exprs!8076 lt!2584156) (exprs!8076 ct2!328))) (as set.empty (Set Context!15152))) (head!14896 (++!16535 (t!384541 s1!1971) s2!1849))) (tail!14307 (++!16535 (t!384541 s1!1971) s2!1849))) e!4346729)))

(declare-fun b!7249398 () Bool)

(assert (=> b!7249398 (= e!4346729 (nullableZipper!2907 (derivationStepZipper!3414 (set.insert (Context!15153 (++!16534 (exprs!8076 lt!2584156) (exprs!8076 ct2!328))) (as set.empty (Set Context!15152))) (head!14896 (++!16535 (t!384541 s1!1971) s2!1849)))))))

(declare-fun b!7249399 () Bool)

(assert (=> b!7249399 (= e!4346729 (matchZipper!3546 (derivationStepZipper!3414 (derivationStepZipper!3414 (set.insert (Context!15153 (++!16534 (exprs!8076 lt!2584156) (exprs!8076 ct2!328))) (as set.empty (Set Context!15152))) (head!14896 (++!16535 (t!384541 s1!1971) s2!1849))) (head!14896 (tail!14307 (++!16535 (t!384541 s1!1971) s2!1849)))) (tail!14307 (tail!14307 (++!16535 (t!384541 s1!1971) s2!1849)))))))

(assert (= (and d!2253019 c!1347006) b!7249398))

(assert (= (and d!2253019 (not c!1347006)) b!7249399))

(assert (=> d!2253019 m!7927430))

(declare-fun m!7927712 () Bool)

(assert (=> d!2253019 m!7927712))

(assert (=> b!7249398 m!7927428))

(declare-fun m!7927714 () Bool)

(assert (=> b!7249398 m!7927714))

(assert (=> b!7249399 m!7927430))

(declare-fun m!7927716 () Bool)

(assert (=> b!7249399 m!7927716))

(assert (=> b!7249399 m!7927428))

(assert (=> b!7249399 m!7927716))

(declare-fun m!7927718 () Bool)

(assert (=> b!7249399 m!7927718))

(assert (=> b!7249399 m!7927430))

(declare-fun m!7927720 () Bool)

(assert (=> b!7249399 m!7927720))

(assert (=> b!7249399 m!7927718))

(assert (=> b!7249399 m!7927720))

(declare-fun m!7927722 () Bool)

(assert (=> b!7249399 m!7927722))

(assert (=> b!7249180 d!2253019))

(declare-fun bs!1905843 () Bool)

(declare-fun d!2253021 () Bool)

(assert (= bs!1905843 (and d!2253021 d!2252899)))

(declare-fun lambda!443890 () Int)

(assert (=> bs!1905843 (= (= (head!14896 (++!16535 (t!384541 s1!1971) s2!1849)) (h!76813 s1!1971)) (= lambda!443890 lambda!443856))))

(assert (=> d!2253021 true))

(assert (=> d!2253021 (= (derivationStepZipper!3414 (set.insert (Context!15153 (++!16534 (exprs!8076 lt!2584156) (exprs!8076 ct2!328))) (as set.empty (Set Context!15152))) (head!14896 (++!16535 (t!384541 s1!1971) s2!1849))) (flatMap!2801 (set.insert (Context!15153 (++!16534 (exprs!8076 lt!2584156) (exprs!8076 ct2!328))) (as set.empty (Set Context!15152))) lambda!443890))))

(declare-fun bs!1905844 () Bool)

(assert (= bs!1905844 d!2253021))

(assert (=> bs!1905844 m!7927234))

(declare-fun m!7927724 () Bool)

(assert (=> bs!1905844 m!7927724))

(assert (=> b!7249180 d!2253021))

(declare-fun d!2253023 () Bool)

(assert (=> d!2253023 (= (head!14896 (++!16535 (t!384541 s1!1971) s2!1849)) (h!76813 (++!16535 (t!384541 s1!1971) s2!1849)))))

(assert (=> b!7249180 d!2253023))

(declare-fun d!2253025 () Bool)

(assert (=> d!2253025 (= (tail!14307 (++!16535 (t!384541 s1!1971) s2!1849)) (t!384541 (++!16535 (t!384541 s1!1971) s2!1849)))))

(assert (=> b!7249180 d!2253025))

(declare-fun d!2253027 () Bool)

(declare-fun c!1347009 () Bool)

(assert (=> d!2253027 (= c!1347009 (is-Nil!70365 lt!2584230))))

(declare-fun e!4346732 () (Set C!37546))

(assert (=> d!2253027 (= (content!14592 lt!2584230) e!4346732)))

(declare-fun b!7249404 () Bool)

(assert (=> b!7249404 (= e!4346732 (as set.empty (Set C!37546)))))

(declare-fun b!7249405 () Bool)

(assert (=> b!7249405 (= e!4346732 (set.union (set.insert (h!76813 lt!2584230) (as set.empty (Set C!37546))) (content!14592 (t!384541 lt!2584230))))))

(assert (= (and d!2253027 c!1347009) b!7249404))

(assert (= (and d!2253027 (not c!1347009)) b!7249405))

(declare-fun m!7927726 () Bool)

(assert (=> b!7249405 m!7927726))

(declare-fun m!7927728 () Bool)

(assert (=> b!7249405 m!7927728))

(assert (=> d!2252911 d!2253027))

(declare-fun d!2253029 () Bool)

(declare-fun c!1347010 () Bool)

(assert (=> d!2253029 (= c!1347010 (is-Nil!70365 (t!384541 s1!1971)))))

(declare-fun e!4346733 () (Set C!37546))

(assert (=> d!2253029 (= (content!14592 (t!384541 s1!1971)) e!4346733)))

(declare-fun b!7249406 () Bool)

(assert (=> b!7249406 (= e!4346733 (as set.empty (Set C!37546)))))

(declare-fun b!7249407 () Bool)

(assert (=> b!7249407 (= e!4346733 (set.union (set.insert (h!76813 (t!384541 s1!1971)) (as set.empty (Set C!37546))) (content!14592 (t!384541 (t!384541 s1!1971)))))))

(assert (= (and d!2253029 c!1347010) b!7249406))

(assert (= (and d!2253029 (not c!1347010)) b!7249407))

(declare-fun m!7927730 () Bool)

(assert (=> b!7249407 m!7927730))

(declare-fun m!7927732 () Bool)

(assert (=> b!7249407 m!7927732))

(assert (=> d!2252911 d!2253029))

(declare-fun d!2253031 () Bool)

(declare-fun c!1347011 () Bool)

(assert (=> d!2253031 (= c!1347011 (is-Nil!70365 s2!1849))))

(declare-fun e!4346734 () (Set C!37546))

(assert (=> d!2253031 (= (content!14592 s2!1849) e!4346734)))

(declare-fun b!7249408 () Bool)

(assert (=> b!7249408 (= e!4346734 (as set.empty (Set C!37546)))))

(declare-fun b!7249409 () Bool)

(assert (=> b!7249409 (= e!4346734 (set.union (set.insert (h!76813 s2!1849) (as set.empty (Set C!37546))) (content!14592 (t!384541 s2!1849))))))

(assert (= (and d!2253031 c!1347011) b!7249408))

(assert (= (and d!2253031 (not c!1347011)) b!7249409))

(declare-fun m!7927734 () Bool)

(assert (=> b!7249409 m!7927734))

(declare-fun m!7927736 () Bool)

(assert (=> b!7249409 m!7927736))

(assert (=> d!2252911 d!2253031))

(declare-fun bs!1905845 () Bool)

(declare-fun d!2253033 () Bool)

(assert (= bs!1905845 (and d!2253033 d!2252993)))

(declare-fun lambda!443891 () Int)

(assert (=> bs!1905845 (= lambda!443891 lambda!443885)))

(declare-fun bs!1905846 () Bool)

(assert (= bs!1905846 (and d!2253033 d!2252937)))

(assert (=> bs!1905846 (not (= lambda!443891 lambda!443868))))

(declare-fun bs!1905847 () Bool)

(assert (= bs!1905847 (and d!2253033 d!2252935)))

(assert (=> bs!1905847 (not (= lambda!443891 lambda!443865))))

(declare-fun bs!1905848 () Bool)

(assert (= bs!1905848 (and d!2253033 d!2252995)))

(assert (=> bs!1905848 (not (= lambda!443891 lambda!443886))))

(declare-fun bs!1905849 () Bool)

(assert (= bs!1905849 (and d!2253033 d!2252997)))

(assert (=> bs!1905849 (not (= lambda!443891 lambda!443889))))

(declare-fun bs!1905850 () Bool)

(assert (= bs!1905850 (and d!2253033 b!7249075)))

(assert (=> bs!1905850 (not (= lambda!443891 lambda!443830))))

(assert (=> d!2253033 (= (nullableZipper!2907 (set.insert (Context!15153 (++!16534 (exprs!8076 lt!2584156) (exprs!8076 ct2!328))) (as set.empty (Set Context!15152)))) (exists!4350 (set.insert (Context!15153 (++!16534 (exprs!8076 lt!2584156) (exprs!8076 ct2!328))) (as set.empty (Set Context!15152))) lambda!443891))))

(declare-fun bs!1905851 () Bool)

(assert (= bs!1905851 d!2253033))

(assert (=> bs!1905851 m!7927234))

(declare-fun m!7927738 () Bool)

(assert (=> bs!1905851 m!7927738))

(assert (=> b!7249179 d!2253033))

(declare-fun d!2253035 () Bool)

(declare-fun res!2940300 () Bool)

(declare-fun e!4346735 () Bool)

(assert (=> d!2253035 (=> res!2940300 e!4346735)))

(assert (=> d!2253035 (= res!2940300 (is-Nil!70364 (++!16534 (exprs!8076 lt!2584156) (exprs!8076 ct2!328))))))

(assert (=> d!2253035 (= (forall!17480 (++!16534 (exprs!8076 lt!2584156) (exprs!8076 ct2!328)) lambda!443829) e!4346735)))

(declare-fun b!7249410 () Bool)

(declare-fun e!4346736 () Bool)

(assert (=> b!7249410 (= e!4346735 e!4346736)))

(declare-fun res!2940301 () Bool)

(assert (=> b!7249410 (=> (not res!2940301) (not e!4346736))))

(assert (=> b!7249410 (= res!2940301 (dynLambda!28725 lambda!443829 (h!76812 (++!16534 (exprs!8076 lt!2584156) (exprs!8076 ct2!328)))))))

(declare-fun b!7249411 () Bool)

(assert (=> b!7249411 (= e!4346736 (forall!17480 (t!384540 (++!16534 (exprs!8076 lt!2584156) (exprs!8076 ct2!328))) lambda!443829))))

(assert (= (and d!2253035 (not res!2940300)) b!7249410))

(assert (= (and b!7249410 res!2940301) b!7249411))

(declare-fun b_lambda!278253 () Bool)

(assert (=> (not b_lambda!278253) (not b!7249410)))

(declare-fun m!7927740 () Bool)

(assert (=> b!7249410 m!7927740))

(declare-fun m!7927742 () Bool)

(assert (=> b!7249411 m!7927742))

(assert (=> d!2252901 d!2253035))

(assert (=> d!2252901 d!2252917))

(declare-fun d!2253037 () Bool)

(assert (=> d!2253037 (forall!17480 (++!16534 (exprs!8076 lt!2584156) (exprs!8076 ct2!328)) lambda!443829)))

(assert (=> d!2253037 true))

(declare-fun _$78!752 () Unit!163856)

(assert (=> d!2253037 (= (choose!55976 (exprs!8076 lt!2584156) (exprs!8076 ct2!328) lambda!443829) _$78!752)))

(declare-fun bs!1905852 () Bool)

(assert (= bs!1905852 d!2253037))

(assert (=> bs!1905852 m!7927232))

(assert (=> bs!1905852 m!7927232))

(assert (=> bs!1905852 m!7927382))

(assert (=> d!2252901 d!2253037))

(declare-fun d!2253039 () Bool)

(declare-fun res!2940302 () Bool)

(declare-fun e!4346737 () Bool)

(assert (=> d!2253039 (=> res!2940302 e!4346737)))

(assert (=> d!2253039 (= res!2940302 (is-Nil!70364 (exprs!8076 lt!2584156)))))

(assert (=> d!2253039 (= (forall!17480 (exprs!8076 lt!2584156) lambda!443829) e!4346737)))

(declare-fun b!7249412 () Bool)

(declare-fun e!4346738 () Bool)

(assert (=> b!7249412 (= e!4346737 e!4346738)))

(declare-fun res!2940303 () Bool)

(assert (=> b!7249412 (=> (not res!2940303) (not e!4346738))))

(assert (=> b!7249412 (= res!2940303 (dynLambda!28725 lambda!443829 (h!76812 (exprs!8076 lt!2584156))))))

(declare-fun b!7249413 () Bool)

(assert (=> b!7249413 (= e!4346738 (forall!17480 (t!384540 (exprs!8076 lt!2584156)) lambda!443829))))

(assert (= (and d!2253039 (not res!2940302)) b!7249412))

(assert (= (and b!7249412 res!2940303) b!7249413))

(declare-fun b_lambda!278255 () Bool)

(assert (=> (not b_lambda!278255) (not b!7249412)))

(declare-fun m!7927744 () Bool)

(assert (=> b!7249412 m!7927744))

(declare-fun m!7927746 () Bool)

(assert (=> b!7249413 m!7927746))

(assert (=> d!2252901 d!2253039))

(declare-fun d!2253041 () Bool)

(declare-fun res!2940304 () Bool)

(declare-fun e!4346739 () Bool)

(assert (=> d!2253041 (=> res!2940304 e!4346739)))

(assert (=> d!2253041 (= res!2940304 (is-Nil!70364 (exprs!8076 ct1!232)))))

(assert (=> d!2253041 (= (forall!17480 (exprs!8076 ct1!232) lambda!443852) e!4346739)))

(declare-fun b!7249414 () Bool)

(declare-fun e!4346740 () Bool)

(assert (=> b!7249414 (= e!4346739 e!4346740)))

(declare-fun res!2940305 () Bool)

(assert (=> b!7249414 (=> (not res!2940305) (not e!4346740))))

(assert (=> b!7249414 (= res!2940305 (dynLambda!28725 lambda!443852 (h!76812 (exprs!8076 ct1!232))))))

(declare-fun b!7249415 () Bool)

(assert (=> b!7249415 (= e!4346740 (forall!17480 (t!384540 (exprs!8076 ct1!232)) lambda!443852))))

(assert (= (and d!2253041 (not res!2940304)) b!7249414))

(assert (= (and b!7249414 res!2940305) b!7249415))

(declare-fun b_lambda!278257 () Bool)

(assert (=> (not b_lambda!278257) (not b!7249414)))

(declare-fun m!7927748 () Bool)

(assert (=> b!7249414 m!7927748))

(declare-fun m!7927750 () Bool)

(assert (=> b!7249415 m!7927750))

(assert (=> d!2252893 d!2253041))

(declare-fun d!2253043 () Bool)

(declare-fun c!1347014 () Bool)

(assert (=> d!2253043 (= c!1347014 (is-Nil!70364 lt!2584214))))

(declare-fun e!4346743 () (Set Regex!18636))

(assert (=> d!2253043 (= (content!14591 lt!2584214) e!4346743)))

(declare-fun b!7249420 () Bool)

(assert (=> b!7249420 (= e!4346743 (as set.empty (Set Regex!18636)))))

(declare-fun b!7249421 () Bool)

(assert (=> b!7249421 (= e!4346743 (set.union (set.insert (h!76812 lt!2584214) (as set.empty (Set Regex!18636))) (content!14591 (t!384540 lt!2584214))))))

(assert (= (and d!2253043 c!1347014) b!7249420))

(assert (= (and d!2253043 (not c!1347014)) b!7249421))

(declare-fun m!7927752 () Bool)

(assert (=> b!7249421 m!7927752))

(declare-fun m!7927754 () Bool)

(assert (=> b!7249421 m!7927754))

(assert (=> d!2252887 d!2253043))

(declare-fun d!2253045 () Bool)

(declare-fun c!1347015 () Bool)

(assert (=> d!2253045 (= c!1347015 (is-Nil!70364 (exprs!8076 ct1!232)))))

(declare-fun e!4346744 () (Set Regex!18636))

(assert (=> d!2253045 (= (content!14591 (exprs!8076 ct1!232)) e!4346744)))

(declare-fun b!7249422 () Bool)

(assert (=> b!7249422 (= e!4346744 (as set.empty (Set Regex!18636)))))

(declare-fun b!7249423 () Bool)

(assert (=> b!7249423 (= e!4346744 (set.union (set.insert (h!76812 (exprs!8076 ct1!232)) (as set.empty (Set Regex!18636))) (content!14591 (t!384540 (exprs!8076 ct1!232)))))))

(assert (= (and d!2253045 c!1347015) b!7249422))

(assert (= (and d!2253045 (not c!1347015)) b!7249423))

(declare-fun m!7927756 () Bool)

(assert (=> b!7249423 m!7927756))

(declare-fun m!7927758 () Bool)

(assert (=> b!7249423 m!7927758))

(assert (=> d!2252887 d!2253045))

(declare-fun d!2253047 () Bool)

(declare-fun c!1347016 () Bool)

(assert (=> d!2253047 (= c!1347016 (is-Nil!70364 (exprs!8076 ct2!328)))))

(declare-fun e!4346745 () (Set Regex!18636))

(assert (=> d!2253047 (= (content!14591 (exprs!8076 ct2!328)) e!4346745)))

(declare-fun b!7249424 () Bool)

(assert (=> b!7249424 (= e!4346745 (as set.empty (Set Regex!18636)))))

(declare-fun b!7249425 () Bool)

(assert (=> b!7249425 (= e!4346745 (set.union (set.insert (h!76812 (exprs!8076 ct2!328)) (as set.empty (Set Regex!18636))) (content!14591 (t!384540 (exprs!8076 ct2!328)))))))

(assert (= (and d!2253047 c!1347016) b!7249424))

(assert (= (and d!2253047 (not c!1347016)) b!7249425))

(declare-fun m!7927760 () Bool)

(assert (=> b!7249425 m!7927760))

(declare-fun m!7927762 () Bool)

(assert (=> b!7249425 m!7927762))

(assert (=> d!2252887 d!2253047))

(declare-fun d!2253049 () Bool)

(declare-fun nullableFct!3098 (Regex!18636) Bool)

(assert (=> d!2253049 (= (nullable!7898 (regOne!37784 (h!76812 (exprs!8076 ct1!232)))) (nullableFct!3098 (regOne!37784 (h!76812 (exprs!8076 ct1!232)))))))

(declare-fun bs!1905853 () Bool)

(assert (= bs!1905853 d!2253049))

(declare-fun m!7927764 () Bool)

(assert (=> bs!1905853 m!7927764))

(assert (=> b!7249220 d!2253049))

(declare-fun d!2253051 () Bool)

(declare-fun c!1347017 () Bool)

(assert (=> d!2253051 (= c!1347017 (isEmpty!40524 (tail!14307 (t!384541 s1!1971))))))

(declare-fun e!4346746 () Bool)

(assert (=> d!2253051 (= (matchZipper!3546 (derivationStepZipper!3414 lt!2584165 (head!14896 (t!384541 s1!1971))) (tail!14307 (t!384541 s1!1971))) e!4346746)))

(declare-fun b!7249426 () Bool)

(assert (=> b!7249426 (= e!4346746 (nullableZipper!2907 (derivationStepZipper!3414 lt!2584165 (head!14896 (t!384541 s1!1971)))))))

(declare-fun b!7249427 () Bool)

(assert (=> b!7249427 (= e!4346746 (matchZipper!3546 (derivationStepZipper!3414 (derivationStepZipper!3414 lt!2584165 (head!14896 (t!384541 s1!1971))) (head!14896 (tail!14307 (t!384541 s1!1971)))) (tail!14307 (tail!14307 (t!384541 s1!1971)))))))

(assert (= (and d!2253051 c!1347017) b!7249426))

(assert (= (and d!2253051 (not c!1347017)) b!7249427))

(assert (=> d!2253051 m!7927376))

(declare-fun m!7927766 () Bool)

(assert (=> d!2253051 m!7927766))

(assert (=> b!7249426 m!7927374))

(declare-fun m!7927768 () Bool)

(assert (=> b!7249426 m!7927768))

(assert (=> b!7249427 m!7927376))

(declare-fun m!7927770 () Bool)

(assert (=> b!7249427 m!7927770))

(assert (=> b!7249427 m!7927374))

(assert (=> b!7249427 m!7927770))

(declare-fun m!7927772 () Bool)

(assert (=> b!7249427 m!7927772))

(assert (=> b!7249427 m!7927376))

(declare-fun m!7927774 () Bool)

(assert (=> b!7249427 m!7927774))

(assert (=> b!7249427 m!7927772))

(assert (=> b!7249427 m!7927774))

(declare-fun m!7927776 () Bool)

(assert (=> b!7249427 m!7927776))

(assert (=> b!7249138 d!2253051))

(declare-fun bs!1905854 () Bool)

(declare-fun d!2253053 () Bool)

(assert (= bs!1905854 (and d!2253053 d!2252899)))

(declare-fun lambda!443892 () Int)

(assert (=> bs!1905854 (= (= (head!14896 (t!384541 s1!1971)) (h!76813 s1!1971)) (= lambda!443892 lambda!443856))))

(declare-fun bs!1905855 () Bool)

(assert (= bs!1905855 (and d!2253053 d!2253021)))

(assert (=> bs!1905855 (= (= (head!14896 (t!384541 s1!1971)) (head!14896 (++!16535 (t!384541 s1!1971) s2!1849))) (= lambda!443892 lambda!443890))))

(assert (=> d!2253053 true))

(assert (=> d!2253053 (= (derivationStepZipper!3414 lt!2584165 (head!14896 (t!384541 s1!1971))) (flatMap!2801 lt!2584165 lambda!443892))))

(declare-fun bs!1905856 () Bool)

(assert (= bs!1905856 d!2253053))

(declare-fun m!7927778 () Bool)

(assert (=> bs!1905856 m!7927778))

(assert (=> b!7249138 d!2253053))

(declare-fun d!2253055 () Bool)

(assert (=> d!2253055 (= (head!14896 (t!384541 s1!1971)) (h!76813 (t!384541 s1!1971)))))

(assert (=> b!7249138 d!2253055))

(declare-fun d!2253057 () Bool)

(assert (=> d!2253057 (= (tail!14307 (t!384541 s1!1971)) (t!384541 (t!384541 s1!1971)))))

(assert (=> b!7249138 d!2253057))

(declare-fun bs!1905857 () Bool)

(declare-fun d!2253059 () Bool)

(assert (= bs!1905857 (and d!2253059 d!2252993)))

(declare-fun lambda!443893 () Int)

(assert (=> bs!1905857 (= lambda!443893 lambda!443885)))

(declare-fun bs!1905858 () Bool)

(assert (= bs!1905858 (and d!2253059 d!2252937)))

(assert (=> bs!1905858 (not (= lambda!443893 lambda!443868))))

(declare-fun bs!1905859 () Bool)

(assert (= bs!1905859 (and d!2253059 d!2252935)))

(assert (=> bs!1905859 (not (= lambda!443893 lambda!443865))))

(declare-fun bs!1905860 () Bool)

(assert (= bs!1905860 (and d!2253059 d!2252995)))

(assert (=> bs!1905860 (not (= lambda!443893 lambda!443886))))

(declare-fun bs!1905861 () Bool)

(assert (= bs!1905861 (and d!2253059 d!2252997)))

(assert (=> bs!1905861 (not (= lambda!443893 lambda!443889))))

(declare-fun bs!1905862 () Bool)

(assert (= bs!1905862 (and d!2253059 b!7249075)))

(assert (=> bs!1905862 (not (= lambda!443893 lambda!443830))))

(declare-fun bs!1905863 () Bool)

(assert (= bs!1905863 (and d!2253059 d!2253033)))

(assert (=> bs!1905863 (= lambda!443893 lambda!443891)))

(assert (=> d!2253059 (= (nullableZipper!2907 lt!2584165) (exists!4350 lt!2584165 lambda!443893))))

(declare-fun bs!1905864 () Bool)

(assert (= bs!1905864 d!2253059))

(declare-fun m!7927780 () Bool)

(assert (=> bs!1905864 m!7927780))

(assert (=> b!7249137 d!2253059))

(declare-fun d!2253061 () Bool)

(assert (=> d!2253061 (= (isEmpty!40524 (++!16535 (t!384541 s1!1971) s2!1849)) (is-Nil!70365 (++!16535 (t!384541 s1!1971) s2!1849)))))

(assert (=> d!2252915 d!2253061))

(declare-fun bs!1905865 () Bool)

(declare-fun d!2253063 () Bool)

(assert (= bs!1905865 (and d!2253063 d!2252893)))

(declare-fun lambda!443896 () Int)

(assert (=> bs!1905865 (= lambda!443896 lambda!443852)))

(declare-fun bs!1905866 () Bool)

(assert (= bs!1905866 (and d!2253063 d!2252905)))

(assert (=> bs!1905866 (= lambda!443896 lambda!443859)))

(declare-fun bs!1905867 () Bool)

(assert (= bs!1905867 (and d!2253063 d!2252895)))

(assert (=> bs!1905867 (= lambda!443896 lambda!443853)))

(declare-fun bs!1905868 () Bool)

(assert (= bs!1905868 (and d!2253063 b!7249072)))

(assert (=> bs!1905868 (= lambda!443896 lambda!443829)))

(declare-fun bs!1905869 () Bool)

(assert (= bs!1905869 (and d!2253063 d!2252883)))

(assert (=> bs!1905869 (= lambda!443896 lambda!443851)))

(assert (=> d!2253063 (matchZipper!3546 (set.insert (Context!15153 (++!16534 (exprs!8076 lt!2584156) (exprs!8076 ct2!328))) (as set.empty (Set Context!15152))) (++!16535 (t!384541 s1!1971) s2!1849))))

(declare-fun lt!2584278 () Unit!163856)

(assert (=> d!2253063 (= lt!2584278 (lemmaConcatPreservesForall!1443 (exprs!8076 lt!2584156) (exprs!8076 ct2!328) lambda!443896))))

(assert (=> d!2253063 true))

(declare-fun _$56!500 () Unit!163856)

(assert (=> d!2253063 (= (choose!55977 lt!2584156 ct2!328 (t!384541 s1!1971) s2!1849) _$56!500)))

(declare-fun bs!1905870 () Bool)

(assert (= bs!1905870 d!2253063))

(assert (=> bs!1905870 m!7927234))

(assert (=> bs!1905870 m!7927232))

(assert (=> bs!1905870 m!7927236))

(assert (=> bs!1905870 m!7927234))

(assert (=> bs!1905870 m!7927236))

(assert (=> bs!1905870 m!7927238))

(declare-fun m!7927782 () Bool)

(assert (=> bs!1905870 m!7927782))

(assert (=> d!2252905 d!2253063))

(assert (=> d!2252905 d!2252911))

(declare-fun d!2253065 () Bool)

(assert (=> d!2253065 (forall!17480 (++!16534 (exprs!8076 lt!2584156) (exprs!8076 ct2!328)) lambda!443859)))

(declare-fun lt!2584279 () Unit!163856)

(assert (=> d!2253065 (= lt!2584279 (choose!55976 (exprs!8076 lt!2584156) (exprs!8076 ct2!328) lambda!443859))))

(assert (=> d!2253065 (forall!17480 (exprs!8076 lt!2584156) lambda!443859)))

(assert (=> d!2253065 (= (lemmaConcatPreservesForall!1443 (exprs!8076 lt!2584156) (exprs!8076 ct2!328) lambda!443859) lt!2584279)))

(declare-fun bs!1905871 () Bool)

(assert (= bs!1905871 d!2253065))

(assert (=> bs!1905871 m!7927232))

(assert (=> bs!1905871 m!7927232))

(declare-fun m!7927784 () Bool)

(assert (=> bs!1905871 m!7927784))

(declare-fun m!7927786 () Bool)

(assert (=> bs!1905871 m!7927786))

(declare-fun m!7927788 () Bool)

(assert (=> bs!1905871 m!7927788))

(assert (=> d!2252905 d!2253065))

(declare-fun d!2253067 () Bool)

(declare-fun c!1347018 () Bool)

(assert (=> d!2253067 (= c!1347018 (isEmpty!40524 (t!384541 s1!1971)))))

(declare-fun e!4346747 () Bool)

(assert (=> d!2253067 (= (matchZipper!3546 (set.insert lt!2584156 (as set.empty (Set Context!15152))) (t!384541 s1!1971)) e!4346747)))

(declare-fun b!7249428 () Bool)

(assert (=> b!7249428 (= e!4346747 (nullableZipper!2907 (set.insert lt!2584156 (as set.empty (Set Context!15152)))))))

(declare-fun b!7249429 () Bool)

(assert (=> b!7249429 (= e!4346747 (matchZipper!3546 (derivationStepZipper!3414 (set.insert lt!2584156 (as set.empty (Set Context!15152))) (head!14896 (t!384541 s1!1971))) (tail!14307 (t!384541 s1!1971))))))

(assert (= (and d!2253067 c!1347018) b!7249428))

(assert (= (and d!2253067 (not c!1347018)) b!7249429))

(assert (=> d!2253067 m!7927368))

(assert (=> b!7249428 m!7927388))

(declare-fun m!7927790 () Bool)

(assert (=> b!7249428 m!7927790))

(assert (=> b!7249429 m!7927372))

(assert (=> b!7249429 m!7927388))

(assert (=> b!7249429 m!7927372))

(declare-fun m!7927792 () Bool)

(assert (=> b!7249429 m!7927792))

(assert (=> b!7249429 m!7927376))

(assert (=> b!7249429 m!7927792))

(assert (=> b!7249429 m!7927376))

(declare-fun m!7927794 () Bool)

(assert (=> b!7249429 m!7927794))

(assert (=> d!2252905 d!2253067))

(assert (=> d!2252905 d!2252915))

(assert (=> d!2252905 d!2252917))

(declare-fun call!660191 () List!70488)

(declare-fun bm!660186 () Bool)

(declare-fun c!1347020 () Bool)

(declare-fun c!1347022 () Bool)

(assert (=> bm!660186 (= call!660191 ($colon$colon!2911 (exprs!8076 (ite c!1346938 (Context!15153 (tail!14305 (exprs!8076 ct1!232))) (Context!15153 call!660155))) (ite (or c!1347022 c!1347020) (regTwo!37784 (ite c!1346938 (regOne!37785 (h!76812 (exprs!8076 ct1!232))) (regOne!37784 (h!76812 (exprs!8076 ct1!232))))) (ite c!1346938 (regOne!37785 (h!76812 (exprs!8076 ct1!232))) (regOne!37784 (h!76812 (exprs!8076 ct1!232)))))))))

(declare-fun bm!660187 () Bool)

(declare-fun call!660192 () (Set Context!15152))

(declare-fun call!660196 () (Set Context!15152))

(assert (=> bm!660187 (= call!660192 call!660196)))

(declare-fun b!7249430 () Bool)

(declare-fun e!4346753 () (Set Context!15152))

(declare-fun call!660194 () (Set Context!15152))

(assert (=> b!7249430 (= e!4346753 call!660194)))

(declare-fun b!7249431 () Bool)

(declare-fun e!4346751 () Bool)

(assert (=> b!7249431 (= c!1347022 e!4346751)))

(declare-fun res!2940306 () Bool)

(assert (=> b!7249431 (=> (not res!2940306) (not e!4346751))))

(assert (=> b!7249431 (= res!2940306 (is-Concat!27481 (ite c!1346938 (regOne!37785 (h!76812 (exprs!8076 ct1!232))) (regOne!37784 (h!76812 (exprs!8076 ct1!232))))))))

(declare-fun e!4346748 () (Set Context!15152))

(declare-fun e!4346752 () (Set Context!15152))

(assert (=> b!7249431 (= e!4346748 e!4346752)))

(declare-fun c!1347019 () Bool)

(declare-fun bm!660188 () Bool)

(declare-fun call!660195 () (Set Context!15152))

(assert (=> bm!660188 (= call!660195 (derivationStepZipperDown!2630 (ite c!1347019 (regOne!37785 (ite c!1346938 (regOne!37785 (h!76812 (exprs!8076 ct1!232))) (regOne!37784 (h!76812 (exprs!8076 ct1!232))))) (regOne!37784 (ite c!1346938 (regOne!37785 (h!76812 (exprs!8076 ct1!232))) (regOne!37784 (h!76812 (exprs!8076 ct1!232)))))) (ite c!1347019 (ite c!1346938 (Context!15153 (tail!14305 (exprs!8076 ct1!232))) (Context!15153 call!660155)) (Context!15153 call!660191)) (h!76813 s1!1971)))))

(declare-fun b!7249432 () Bool)

(assert (=> b!7249432 (= e!4346752 (set.union call!660195 call!660192))))

(declare-fun b!7249433 () Bool)

(declare-fun c!1347023 () Bool)

(assert (=> b!7249433 (= c!1347023 (is-Star!18636 (ite c!1346938 (regOne!37785 (h!76812 (exprs!8076 ct1!232))) (regOne!37784 (h!76812 (exprs!8076 ct1!232))))))))

(declare-fun e!4346749 () (Set Context!15152))

(assert (=> b!7249433 (= e!4346749 e!4346753)))

(declare-fun b!7249434 () Bool)

(assert (=> b!7249434 (= e!4346751 (nullable!7898 (regOne!37784 (ite c!1346938 (regOne!37785 (h!76812 (exprs!8076 ct1!232))) (regOne!37784 (h!76812 (exprs!8076 ct1!232)))))))))

(declare-fun b!7249435 () Bool)

(assert (=> b!7249435 (= e!4346748 (set.union call!660195 call!660196))))

(declare-fun b!7249436 () Bool)

(declare-fun e!4346750 () (Set Context!15152))

(assert (=> b!7249436 (= e!4346750 (set.insert (ite c!1346938 (Context!15153 (tail!14305 (exprs!8076 ct1!232))) (Context!15153 call!660155)) (as set.empty (Set Context!15152))))))

(declare-fun b!7249437 () Bool)

(assert (=> b!7249437 (= e!4346752 e!4346749)))

(assert (=> b!7249437 (= c!1347020 (is-Concat!27481 (ite c!1346938 (regOne!37785 (h!76812 (exprs!8076 ct1!232))) (regOne!37784 (h!76812 (exprs!8076 ct1!232))))))))

(declare-fun bm!660190 () Bool)

(declare-fun call!660193 () List!70488)

(assert (=> bm!660190 (= call!660196 (derivationStepZipperDown!2630 (ite c!1347019 (regTwo!37785 (ite c!1346938 (regOne!37785 (h!76812 (exprs!8076 ct1!232))) (regOne!37784 (h!76812 (exprs!8076 ct1!232))))) (ite c!1347022 (regTwo!37784 (ite c!1346938 (regOne!37785 (h!76812 (exprs!8076 ct1!232))) (regOne!37784 (h!76812 (exprs!8076 ct1!232))))) (ite c!1347020 (regOne!37784 (ite c!1346938 (regOne!37785 (h!76812 (exprs!8076 ct1!232))) (regOne!37784 (h!76812 (exprs!8076 ct1!232))))) (reg!18965 (ite c!1346938 (regOne!37785 (h!76812 (exprs!8076 ct1!232))) (regOne!37784 (h!76812 (exprs!8076 ct1!232)))))))) (ite (or c!1347019 c!1347022) (ite c!1346938 (Context!15153 (tail!14305 (exprs!8076 ct1!232))) (Context!15153 call!660155)) (Context!15153 call!660193)) (h!76813 s1!1971)))))

(declare-fun b!7249438 () Bool)

(assert (=> b!7249438 (= e!4346750 e!4346748)))

(assert (=> b!7249438 (= c!1347019 (is-Union!18636 (ite c!1346938 (regOne!37785 (h!76812 (exprs!8076 ct1!232))) (regOne!37784 (h!76812 (exprs!8076 ct1!232))))))))

(declare-fun bm!660191 () Bool)

(assert (=> bm!660191 (= call!660193 call!660191)))

(declare-fun b!7249439 () Bool)

(assert (=> b!7249439 (= e!4346753 (as set.empty (Set Context!15152)))))

(declare-fun b!7249440 () Bool)

(assert (=> b!7249440 (= e!4346749 call!660194)))

(declare-fun c!1347021 () Bool)

(declare-fun d!2253069 () Bool)

(assert (=> d!2253069 (= c!1347021 (and (is-ElementMatch!18636 (ite c!1346938 (regOne!37785 (h!76812 (exprs!8076 ct1!232))) (regOne!37784 (h!76812 (exprs!8076 ct1!232))))) (= (c!1346894 (ite c!1346938 (regOne!37785 (h!76812 (exprs!8076 ct1!232))) (regOne!37784 (h!76812 (exprs!8076 ct1!232))))) (h!76813 s1!1971))))))

(assert (=> d!2253069 (= (derivationStepZipperDown!2630 (ite c!1346938 (regOne!37785 (h!76812 (exprs!8076 ct1!232))) (regOne!37784 (h!76812 (exprs!8076 ct1!232)))) (ite c!1346938 (Context!15153 (tail!14305 (exprs!8076 ct1!232))) (Context!15153 call!660155)) (h!76813 s1!1971)) e!4346750)))

(declare-fun bm!660189 () Bool)

(assert (=> bm!660189 (= call!660194 call!660192)))

(assert (= (and d!2253069 c!1347021) b!7249436))

(assert (= (and d!2253069 (not c!1347021)) b!7249438))

(assert (= (and b!7249438 c!1347019) b!7249435))

(assert (= (and b!7249438 (not c!1347019)) b!7249431))

(assert (= (and b!7249431 res!2940306) b!7249434))

(assert (= (and b!7249431 c!1347022) b!7249432))

(assert (= (and b!7249431 (not c!1347022)) b!7249437))

(assert (= (and b!7249437 c!1347020) b!7249440))

(assert (= (and b!7249437 (not c!1347020)) b!7249433))

(assert (= (and b!7249433 c!1347023) b!7249430))

(assert (= (and b!7249433 (not c!1347023)) b!7249439))

(assert (= (or b!7249440 b!7249430) bm!660191))

(assert (= (or b!7249440 b!7249430) bm!660189))

(assert (= (or b!7249432 bm!660191) bm!660186))

(assert (= (or b!7249432 bm!660189) bm!660187))

(assert (= (or b!7249435 bm!660187) bm!660190))

(assert (= (or b!7249435 b!7249432) bm!660188))

(declare-fun m!7927796 () Bool)

(assert (=> bm!660188 m!7927796))

(declare-fun m!7927798 () Bool)

(assert (=> b!7249436 m!7927798))

(declare-fun m!7927800 () Bool)

(assert (=> bm!660186 m!7927800))

(declare-fun m!7927802 () Bool)

(assert (=> b!7249434 m!7927802))

(declare-fun m!7927804 () Bool)

(assert (=> bm!660190 m!7927804))

(assert (=> bm!660152 d!2253069))

(declare-fun d!2253071 () Bool)

(declare-fun c!1347024 () Bool)

(assert (=> d!2253071 (= c!1347024 (is-Nil!70364 lt!2584233))))

(declare-fun e!4346754 () (Set Regex!18636))

(assert (=> d!2253071 (= (content!14591 lt!2584233) e!4346754)))

(declare-fun b!7249441 () Bool)

(assert (=> b!7249441 (= e!4346754 (as set.empty (Set Regex!18636)))))

(declare-fun b!7249442 () Bool)

(assert (=> b!7249442 (= e!4346754 (set.union (set.insert (h!76812 lt!2584233) (as set.empty (Set Regex!18636))) (content!14591 (t!384540 lt!2584233))))))

(assert (= (and d!2253071 c!1347024) b!7249441))

(assert (= (and d!2253071 (not c!1347024)) b!7249442))

(declare-fun m!7927806 () Bool)

(assert (=> b!7249442 m!7927806))

(declare-fun m!7927808 () Bool)

(assert (=> b!7249442 m!7927808))

(assert (=> d!2252917 d!2253071))

(declare-fun d!2253073 () Bool)

(declare-fun c!1347025 () Bool)

(assert (=> d!2253073 (= c!1347025 (is-Nil!70364 (exprs!8076 lt!2584156)))))

(declare-fun e!4346755 () (Set Regex!18636))

(assert (=> d!2253073 (= (content!14591 (exprs!8076 lt!2584156)) e!4346755)))

(declare-fun b!7249443 () Bool)

(assert (=> b!7249443 (= e!4346755 (as set.empty (Set Regex!18636)))))

(declare-fun b!7249444 () Bool)

(assert (=> b!7249444 (= e!4346755 (set.union (set.insert (h!76812 (exprs!8076 lt!2584156)) (as set.empty (Set Regex!18636))) (content!14591 (t!384540 (exprs!8076 lt!2584156)))))))

(assert (= (and d!2253073 c!1347025) b!7249443))

(assert (= (and d!2253073 (not c!1347025)) b!7249444))

(declare-fun m!7927810 () Bool)

(assert (=> b!7249444 m!7927810))

(assert (=> b!7249444 m!7927696))

(assert (=> d!2252917 d!2253073))

(assert (=> d!2252917 d!2253047))

(declare-fun d!2253075 () Bool)

(assert (=> d!2253075 (= (isEmpty!40524 (t!384541 s1!1971)) (is-Nil!70365 (t!384541 s1!1971)))))

(assert (=> d!2252897 d!2253075))

(declare-fun d!2253077 () Bool)

(declare-fun res!2940311 () Bool)

(declare-fun e!4346760 () Bool)

(assert (=> d!2253077 (=> res!2940311 e!4346760)))

(assert (=> d!2253077 (= res!2940311 (is-Nil!70366 lt!2584249))))

(assert (=> d!2253077 (= (noDuplicate!2984 lt!2584249) e!4346760)))

(declare-fun b!7249449 () Bool)

(declare-fun e!4346761 () Bool)

(assert (=> b!7249449 (= e!4346760 e!4346761)))

(declare-fun res!2940312 () Bool)

(assert (=> b!7249449 (=> (not res!2940312) (not e!4346761))))

(declare-fun contains!20741 (List!70490 Context!15152) Bool)

(assert (=> b!7249449 (= res!2940312 (not (contains!20741 (t!384542 lt!2584249) (h!76814 lt!2584249))))))

(declare-fun b!7249450 () Bool)

(assert (=> b!7249450 (= e!4346761 (noDuplicate!2984 (t!384542 lt!2584249)))))

(assert (= (and d!2253077 (not res!2940311)) b!7249449))

(assert (= (and b!7249449 res!2940312) b!7249450))

(declare-fun m!7927812 () Bool)

(assert (=> b!7249449 m!7927812))

(declare-fun m!7927814 () Bool)

(assert (=> b!7249450 m!7927814))

(assert (=> d!2252941 d!2253077))

(declare-fun d!2253079 () Bool)

(declare-fun e!4346770 () Bool)

(assert (=> d!2253079 e!4346770))

(declare-fun res!2940317 () Bool)

(assert (=> d!2253079 (=> (not res!2940317) (not e!4346770))))

(declare-fun res!2940318 () List!70490)

(assert (=> d!2253079 (= res!2940317 (noDuplicate!2984 res!2940318))))

(declare-fun e!4346769 () Bool)

(assert (=> d!2253079 e!4346769))

(assert (=> d!2253079 (= (choose!55980 lt!2584165) res!2940318)))

(declare-fun b!7249458 () Bool)

(declare-fun e!4346768 () Bool)

(declare-fun tp!2037216 () Bool)

(assert (=> b!7249458 (= e!4346768 tp!2037216)))

(declare-fun b!7249457 () Bool)

(declare-fun tp!2037215 () Bool)

(assert (=> b!7249457 (= e!4346769 (and (inv!89601 (h!76814 res!2940318)) e!4346768 tp!2037215))))

(declare-fun b!7249459 () Bool)

(assert (=> b!7249459 (= e!4346770 (= (content!14593 res!2940318) lt!2584165))))

(assert (= b!7249457 b!7249458))

(assert (= (and d!2253079 (is-Cons!70366 res!2940318)) b!7249457))

(assert (= (and d!2253079 res!2940317) b!7249459))

(declare-fun m!7927816 () Bool)

(assert (=> d!2253079 m!7927816))

(declare-fun m!7927818 () Bool)

(assert (=> b!7249457 m!7927818))

(declare-fun m!7927820 () Bool)

(assert (=> b!7249459 m!7927820))

(assert (=> d!2252941 d!2253079))

(declare-fun d!2253081 () Bool)

(assert (=> d!2253081 (= (isEmpty!40524 s2!1849) (is-Nil!70365 s2!1849))))

(assert (=> d!2252881 d!2253081))

(declare-fun d!2253083 () Bool)

(assert (=> d!2253083 (= ($colon$colon!2911 (exprs!8076 (Context!15153 (tail!14305 (exprs!8076 ct1!232)))) (ite (or c!1346941 c!1346939) (regTwo!37784 (h!76812 (exprs!8076 ct1!232))) (h!76812 (exprs!8076 ct1!232)))) (Cons!70364 (ite (or c!1346941 c!1346939) (regTwo!37784 (h!76812 (exprs!8076 ct1!232))) (h!76812 (exprs!8076 ct1!232))) (exprs!8076 (Context!15153 (tail!14305 (exprs!8076 ct1!232))))))))

(assert (=> bm!660150 d!2253083))

(declare-fun d!2253085 () Bool)

(declare-fun lt!2584282 () Int)

(assert (=> d!2253085 (>= lt!2584282 0)))

(declare-fun e!4346773 () Int)

(assert (=> d!2253085 (= lt!2584282 e!4346773)))

(declare-fun c!1347028 () Bool)

(assert (=> d!2253085 (= c!1347028 (is-Nil!70365 lt!2584230))))

(assert (=> d!2253085 (= (size!41704 lt!2584230) lt!2584282)))

(declare-fun b!7249464 () Bool)

(assert (=> b!7249464 (= e!4346773 0)))

(declare-fun b!7249465 () Bool)

(assert (=> b!7249465 (= e!4346773 (+ 1 (size!41704 (t!384541 lt!2584230))))))

(assert (= (and d!2253085 c!1347028) b!7249464))

(assert (= (and d!2253085 (not c!1347028)) b!7249465))

(declare-fun m!7927822 () Bool)

(assert (=> b!7249465 m!7927822))

(assert (=> b!7249154 d!2253085))

(declare-fun d!2253087 () Bool)

(declare-fun lt!2584283 () Int)

(assert (=> d!2253087 (>= lt!2584283 0)))

(declare-fun e!4346774 () Int)

(assert (=> d!2253087 (= lt!2584283 e!4346774)))

(declare-fun c!1347029 () Bool)

(assert (=> d!2253087 (= c!1347029 (is-Nil!70365 (t!384541 s1!1971)))))

(assert (=> d!2253087 (= (size!41704 (t!384541 s1!1971)) lt!2584283)))

(declare-fun b!7249466 () Bool)

(assert (=> b!7249466 (= e!4346774 0)))

(declare-fun b!7249467 () Bool)

(assert (=> b!7249467 (= e!4346774 (+ 1 (size!41704 (t!384541 (t!384541 s1!1971)))))))

(assert (= (and d!2253087 c!1347029) b!7249466))

(assert (= (and d!2253087 (not c!1347029)) b!7249467))

(declare-fun m!7927824 () Bool)

(assert (=> b!7249467 m!7927824))

(assert (=> b!7249154 d!2253087))

(declare-fun d!2253089 () Bool)

(declare-fun lt!2584284 () Int)

(assert (=> d!2253089 (>= lt!2584284 0)))

(declare-fun e!4346775 () Int)

(assert (=> d!2253089 (= lt!2584284 e!4346775)))

(declare-fun c!1347030 () Bool)

(assert (=> d!2253089 (= c!1347030 (is-Nil!70365 s2!1849))))

(assert (=> d!2253089 (= (size!41704 s2!1849) lt!2584284)))

(declare-fun b!7249468 () Bool)

(assert (=> b!7249468 (= e!4346775 0)))

(declare-fun b!7249469 () Bool)

(assert (=> b!7249469 (= e!4346775 (+ 1 (size!41704 (t!384541 s2!1849))))))

(assert (= (and d!2253089 c!1347030) b!7249468))

(assert (= (and d!2253089 (not c!1347030)) b!7249469))

(declare-fun m!7927826 () Bool)

(assert (=> b!7249469 m!7927826))

(assert (=> b!7249154 d!2253089))

(declare-fun d!2253091 () Bool)

(declare-fun choose!55986 ((Set Context!15152) Int) (Set Context!15152))

(assert (=> d!2253091 (= (flatMap!2801 lt!2584161 lambda!443856) (choose!55986 lt!2584161 lambda!443856))))

(declare-fun bs!1905872 () Bool)

(assert (= bs!1905872 d!2253091))

(declare-fun m!7927828 () Bool)

(assert (=> bs!1905872 m!7927828))

(assert (=> d!2252899 d!2253091))

(declare-fun d!2253093 () Bool)

(declare-fun lt!2584285 () Int)

(assert (=> d!2253093 (>= lt!2584285 0)))

(declare-fun e!4346776 () Int)

(assert (=> d!2253093 (= lt!2584285 e!4346776)))

(declare-fun c!1347031 () Bool)

(assert (=> d!2253093 (= c!1347031 (is-Nil!70364 lt!2584214))))

(assert (=> d!2253093 (= (size!41703 lt!2584214) lt!2584285)))

(declare-fun b!7249470 () Bool)

(assert (=> b!7249470 (= e!4346776 0)))

(declare-fun b!7249471 () Bool)

(assert (=> b!7249471 (= e!4346776 (+ 1 (size!41703 (t!384540 lt!2584214))))))

(assert (= (and d!2253093 c!1347031) b!7249470))

(assert (= (and d!2253093 (not c!1347031)) b!7249471))

(declare-fun m!7927830 () Bool)

(assert (=> b!7249471 m!7927830))

(assert (=> b!7249133 d!2253093))

(declare-fun d!2253095 () Bool)

(declare-fun lt!2584286 () Int)

(assert (=> d!2253095 (>= lt!2584286 0)))

(declare-fun e!4346777 () Int)

(assert (=> d!2253095 (= lt!2584286 e!4346777)))

(declare-fun c!1347032 () Bool)

(assert (=> d!2253095 (= c!1347032 (is-Nil!70364 (exprs!8076 ct1!232)))))

(assert (=> d!2253095 (= (size!41703 (exprs!8076 ct1!232)) lt!2584286)))

(declare-fun b!7249472 () Bool)

(assert (=> b!7249472 (= e!4346777 0)))

(declare-fun b!7249473 () Bool)

(assert (=> b!7249473 (= e!4346777 (+ 1 (size!41703 (t!384540 (exprs!8076 ct1!232)))))))

(assert (= (and d!2253095 c!1347032) b!7249472))

(assert (= (and d!2253095 (not c!1347032)) b!7249473))

(declare-fun m!7927832 () Bool)

(assert (=> b!7249473 m!7927832))

(assert (=> b!7249133 d!2253095))

(assert (=> b!7249133 d!2253013))

(declare-fun d!2253097 () Bool)

(declare-fun e!4346789 () Bool)

(assert (=> d!2253097 e!4346789))

(declare-fun res!2940323 () Bool)

(assert (=> d!2253097 (=> (not res!2940323) (not e!4346789))))

(declare-fun lt!2584291 () Context!15152)

(assert (=> d!2253097 (= res!2940323 (dynLambda!28721 lambda!443830 lt!2584291))))

(declare-fun e!4346787 () Context!15152)

(assert (=> d!2253097 (= lt!2584291 e!4346787)))

(declare-fun c!1347037 () Bool)

(declare-fun e!4346788 () Bool)

(assert (=> d!2253097 (= c!1347037 e!4346788)))

(declare-fun res!2940324 () Bool)

(assert (=> d!2253097 (=> (not res!2940324) (not e!4346788))))

(assert (=> d!2253097 (= res!2940324 (is-Cons!70366 (toList!11465 lt!2584165)))))

(assert (=> d!2253097 (exists!4351 (toList!11465 lt!2584165) lambda!443830)))

(assert (=> d!2253097 (= (getWitness!2190 (toList!11465 lt!2584165) lambda!443830) lt!2584291)))

(declare-fun b!7249486 () Bool)

(assert (=> b!7249486 (= e!4346787 (h!76814 (toList!11465 lt!2584165)))))

(declare-fun b!7249487 () Bool)

(declare-fun e!4346786 () Context!15152)

(assert (=> b!7249487 (= e!4346786 (getWitness!2190 (t!384542 (toList!11465 lt!2584165)) lambda!443830))))

(declare-fun b!7249488 () Bool)

(declare-fun lt!2584292 () Unit!163856)

(declare-fun Unit!163860 () Unit!163856)

(assert (=> b!7249488 (= lt!2584292 Unit!163860)))

(assert (=> b!7249488 false))

(declare-fun head!14898 (List!70490) Context!15152)

(assert (=> b!7249488 (= e!4346786 (head!14898 (toList!11465 lt!2584165)))))

(declare-fun b!7249489 () Bool)

(assert (=> b!7249489 (= e!4346788 (dynLambda!28721 lambda!443830 (h!76814 (toList!11465 lt!2584165))))))

(declare-fun b!7249490 () Bool)

(assert (=> b!7249490 (= e!4346787 e!4346786)))

(declare-fun c!1347038 () Bool)

(assert (=> b!7249490 (= c!1347038 (is-Cons!70366 (toList!11465 lt!2584165)))))

(declare-fun b!7249491 () Bool)

(assert (=> b!7249491 (= e!4346789 (contains!20741 (toList!11465 lt!2584165) lt!2584291))))

(assert (= (and d!2253097 res!2940324) b!7249489))

(assert (= (and d!2253097 c!1347037) b!7249486))

(assert (= (and d!2253097 (not c!1347037)) b!7249490))

(assert (= (and b!7249490 c!1347038) b!7249487))

(assert (= (and b!7249490 (not c!1347038)) b!7249488))

(assert (= (and d!2253097 res!2940323) b!7249491))

(declare-fun b_lambda!278259 () Bool)

(assert (=> (not b_lambda!278259) (not d!2253097)))

(declare-fun b_lambda!278261 () Bool)

(assert (=> (not b_lambda!278261) (not b!7249489)))

(declare-fun m!7927834 () Bool)

(assert (=> d!2253097 m!7927834))

(assert (=> d!2253097 m!7927254))

(assert (=> d!2253097 m!7927484))

(declare-fun m!7927836 () Bool)

(assert (=> b!7249489 m!7927836))

(assert (=> b!7249491 m!7927254))

(declare-fun m!7927838 () Bool)

(assert (=> b!7249491 m!7927838))

(assert (=> b!7249488 m!7927254))

(declare-fun m!7927840 () Bool)

(assert (=> b!7249488 m!7927840))

(declare-fun m!7927842 () Bool)

(assert (=> b!7249487 m!7927842))

(assert (=> d!2252907 d!2253097))

(assert (=> d!2252907 d!2252941))

(assert (=> d!2252907 d!2252933))

(declare-fun b!7249494 () Bool)

(declare-fun res!2940326 () Bool)

(declare-fun e!4346791 () Bool)

(assert (=> b!7249494 (=> (not res!2940326) (not e!4346791))))

(declare-fun lt!2584293 () List!70489)

(assert (=> b!7249494 (= res!2940326 (= (size!41704 lt!2584293) (+ (size!41704 (t!384541 (t!384541 s1!1971))) (size!41704 s2!1849))))))

(declare-fun b!7249495 () Bool)

(assert (=> b!7249495 (= e!4346791 (or (not (= s2!1849 Nil!70365)) (= lt!2584293 (t!384541 (t!384541 s1!1971)))))))

(declare-fun b!7249492 () Bool)

(declare-fun e!4346790 () List!70489)

(assert (=> b!7249492 (= e!4346790 s2!1849)))

(declare-fun b!7249493 () Bool)

(assert (=> b!7249493 (= e!4346790 (Cons!70365 (h!76813 (t!384541 (t!384541 s1!1971))) (++!16535 (t!384541 (t!384541 (t!384541 s1!1971))) s2!1849)))))

(declare-fun d!2253099 () Bool)

(assert (=> d!2253099 e!4346791))

(declare-fun res!2940325 () Bool)

(assert (=> d!2253099 (=> (not res!2940325) (not e!4346791))))

(assert (=> d!2253099 (= res!2940325 (= (content!14592 lt!2584293) (set.union (content!14592 (t!384541 (t!384541 s1!1971))) (content!14592 s2!1849))))))

(assert (=> d!2253099 (= lt!2584293 e!4346790)))

(declare-fun c!1347039 () Bool)

(assert (=> d!2253099 (= c!1347039 (is-Nil!70365 (t!384541 (t!384541 s1!1971))))))

(assert (=> d!2253099 (= (++!16535 (t!384541 (t!384541 s1!1971)) s2!1849) lt!2584293)))

(assert (= (and d!2253099 c!1347039) b!7249492))

(assert (= (and d!2253099 (not c!1347039)) b!7249493))

(assert (= (and d!2253099 res!2940325) b!7249494))

(assert (= (and b!7249494 res!2940326) b!7249495))

(declare-fun m!7927844 () Bool)

(assert (=> b!7249494 m!7927844))

(assert (=> b!7249494 m!7927824))

(assert (=> b!7249494 m!7927406))

(declare-fun m!7927846 () Bool)

(assert (=> b!7249493 m!7927846))

(declare-fun m!7927848 () Bool)

(assert (=> d!2253099 m!7927848))

(assert (=> d!2253099 m!7927732))

(assert (=> d!2253099 m!7927414))

(assert (=> b!7249153 d!2253099))

(declare-fun d!2253101 () Bool)

(assert (=> d!2253101 (= (nullable!7898 (h!76812 (exprs!8076 ct1!232))) (nullableFct!3098 (h!76812 (exprs!8076 ct1!232))))))

(declare-fun bs!1905873 () Bool)

(assert (= bs!1905873 d!2253101))

(declare-fun m!7927850 () Bool)

(assert (=> bs!1905873 m!7927850))

(assert (=> b!7249178 d!2253101))

(declare-fun b!7249498 () Bool)

(declare-fun res!2940327 () Bool)

(declare-fun e!4346792 () Bool)

(assert (=> b!7249498 (=> (not res!2940327) (not e!4346792))))

(declare-fun lt!2584294 () List!70488)

(assert (=> b!7249498 (= res!2940327 (= (size!41703 lt!2584294) (+ (size!41703 (t!384540 (exprs!8076 ct1!232))) (size!41703 (exprs!8076 ct2!328)))))))

(declare-fun b!7249496 () Bool)

(declare-fun e!4346793 () List!70488)

(assert (=> b!7249496 (= e!4346793 (exprs!8076 ct2!328))))

(declare-fun b!7249497 () Bool)

(assert (=> b!7249497 (= e!4346793 (Cons!70364 (h!76812 (t!384540 (exprs!8076 ct1!232))) (++!16534 (t!384540 (t!384540 (exprs!8076 ct1!232))) (exprs!8076 ct2!328))))))

(declare-fun b!7249499 () Bool)

(assert (=> b!7249499 (= e!4346792 (or (not (= (exprs!8076 ct2!328) Nil!70364)) (= lt!2584294 (t!384540 (exprs!8076 ct1!232)))))))

(declare-fun d!2253103 () Bool)

(assert (=> d!2253103 e!4346792))

(declare-fun res!2940328 () Bool)

(assert (=> d!2253103 (=> (not res!2940328) (not e!4346792))))

(assert (=> d!2253103 (= res!2940328 (= (content!14591 lt!2584294) (set.union (content!14591 (t!384540 (exprs!8076 ct1!232))) (content!14591 (exprs!8076 ct2!328)))))))

(assert (=> d!2253103 (= lt!2584294 e!4346793)))

(declare-fun c!1347040 () Bool)

(assert (=> d!2253103 (= c!1347040 (is-Nil!70364 (t!384540 (exprs!8076 ct1!232))))))

(assert (=> d!2253103 (= (++!16534 (t!384540 (exprs!8076 ct1!232)) (exprs!8076 ct2!328)) lt!2584294)))

(assert (= (and d!2253103 c!1347040) b!7249496))

(assert (= (and d!2253103 (not c!1347040)) b!7249497))

(assert (= (and d!2253103 res!2940328) b!7249498))

(assert (= (and b!7249498 res!2940327) b!7249499))

(declare-fun m!7927852 () Bool)

(assert (=> b!7249498 m!7927852))

(assert (=> b!7249498 m!7927832))

(assert (=> b!7249498 m!7927336))

(declare-fun m!7927854 () Bool)

(assert (=> b!7249497 m!7927854))

(declare-fun m!7927856 () Bool)

(assert (=> d!2253103 m!7927856))

(assert (=> d!2253103 m!7927758))

(assert (=> d!2253103 m!7927344))

(assert (=> b!7249132 d!2253103))

(declare-fun d!2253105 () Bool)

(declare-fun c!1347041 () Bool)

(assert (=> d!2253105 (= c!1347041 (isEmpty!40524 (tail!14307 s2!1849)))))

(declare-fun e!4346794 () Bool)

(assert (=> d!2253105 (= (matchZipper!3546 (derivationStepZipper!3414 (set.insert ct2!328 (as set.empty (Set Context!15152))) (head!14896 s2!1849)) (tail!14307 s2!1849)) e!4346794)))

(declare-fun b!7249500 () Bool)

(assert (=> b!7249500 (= e!4346794 (nullableZipper!2907 (derivationStepZipper!3414 (set.insert ct2!328 (as set.empty (Set Context!15152))) (head!14896 s2!1849))))))

(declare-fun b!7249501 () Bool)

(assert (=> b!7249501 (= e!4346794 (matchZipper!3546 (derivationStepZipper!3414 (derivationStepZipper!3414 (set.insert ct2!328 (as set.empty (Set Context!15152))) (head!14896 s2!1849)) (head!14896 (tail!14307 s2!1849))) (tail!14307 (tail!14307 s2!1849))))))

(assert (= (and d!2253105 c!1347041) b!7249500))

(assert (= (and d!2253105 (not c!1347041)) b!7249501))

(assert (=> d!2253105 m!7927326))

(declare-fun m!7927858 () Bool)

(assert (=> d!2253105 m!7927858))

(assert (=> b!7249500 m!7927324))

(declare-fun m!7927860 () Bool)

(assert (=> b!7249500 m!7927860))

(assert (=> b!7249501 m!7927326))

(declare-fun m!7927862 () Bool)

(assert (=> b!7249501 m!7927862))

(assert (=> b!7249501 m!7927324))

(assert (=> b!7249501 m!7927862))

(declare-fun m!7927864 () Bool)

(assert (=> b!7249501 m!7927864))

(assert (=> b!7249501 m!7927326))

(declare-fun m!7927866 () Bool)

(assert (=> b!7249501 m!7927866))

(assert (=> b!7249501 m!7927864))

(assert (=> b!7249501 m!7927866))

(declare-fun m!7927868 () Bool)

(assert (=> b!7249501 m!7927868))

(assert (=> b!7249122 d!2253105))

(declare-fun bs!1905874 () Bool)

(declare-fun d!2253107 () Bool)

(assert (= bs!1905874 (and d!2253107 d!2252899)))

(declare-fun lambda!443897 () Int)

(assert (=> bs!1905874 (= (= (head!14896 s2!1849) (h!76813 s1!1971)) (= lambda!443897 lambda!443856))))

(declare-fun bs!1905875 () Bool)

(assert (= bs!1905875 (and d!2253107 d!2253021)))

(assert (=> bs!1905875 (= (= (head!14896 s2!1849) (head!14896 (++!16535 (t!384541 s1!1971) s2!1849))) (= lambda!443897 lambda!443890))))

(declare-fun bs!1905876 () Bool)

(assert (= bs!1905876 (and d!2253107 d!2253053)))

(assert (=> bs!1905876 (= (= (head!14896 s2!1849) (head!14896 (t!384541 s1!1971))) (= lambda!443897 lambda!443892))))

(assert (=> d!2253107 true))

(assert (=> d!2253107 (= (derivationStepZipper!3414 (set.insert ct2!328 (as set.empty (Set Context!15152))) (head!14896 s2!1849)) (flatMap!2801 (set.insert ct2!328 (as set.empty (Set Context!15152))) lambda!443897))))

(declare-fun bs!1905877 () Bool)

(assert (= bs!1905877 d!2253107))

(assert (=> bs!1905877 m!7927218))

(declare-fun m!7927870 () Bool)

(assert (=> bs!1905877 m!7927870))

(assert (=> b!7249122 d!2253107))

(declare-fun d!2253109 () Bool)

(assert (=> d!2253109 (= (head!14896 s2!1849) (h!76813 s2!1849))))

(assert (=> b!7249122 d!2253109))

(declare-fun d!2253111 () Bool)

(assert (=> d!2253111 (= (tail!14307 s2!1849) (t!384541 s2!1849))))

(assert (=> b!7249122 d!2253111))

(declare-fun d!2253113 () Bool)

(assert (=> d!2253113 (= (nullable!7898 (h!76812 (exprs!8076 (Context!15153 lt!2584164)))) (nullableFct!3098 (h!76812 (exprs!8076 (Context!15153 lt!2584164)))))))

(declare-fun bs!1905878 () Bool)

(assert (= bs!1905878 d!2253113))

(declare-fun m!7927872 () Bool)

(assert (=> bs!1905878 m!7927872))

(assert (=> b!7249189 d!2253113))

(declare-fun d!2253115 () Bool)

(declare-fun res!2940333 () Bool)

(declare-fun e!4346799 () Bool)

(assert (=> d!2253115 (=> res!2940333 e!4346799)))

(assert (=> d!2253115 (= res!2940333 (is-Nil!70366 lt!2584155))))

(assert (=> d!2253115 (= (forall!17481 lt!2584155 lambda!443865) e!4346799)))

(declare-fun b!7249506 () Bool)

(declare-fun e!4346800 () Bool)

(assert (=> b!7249506 (= e!4346799 e!4346800)))

(declare-fun res!2940334 () Bool)

(assert (=> b!7249506 (=> (not res!2940334) (not e!4346800))))

(assert (=> b!7249506 (= res!2940334 (dynLambda!28721 lambda!443865 (h!76814 lt!2584155)))))

(declare-fun b!7249507 () Bool)

(assert (=> b!7249507 (= e!4346800 (forall!17481 (t!384542 lt!2584155) lambda!443865))))

(assert (= (and d!2253115 (not res!2940333)) b!7249506))

(assert (= (and b!7249506 res!2940334) b!7249507))

(declare-fun b_lambda!278263 () Bool)

(assert (=> (not b_lambda!278263) (not b!7249506)))

(declare-fun m!7927874 () Bool)

(assert (=> b!7249506 m!7927874))

(declare-fun m!7927876 () Bool)

(assert (=> b!7249507 m!7927876))

(assert (=> d!2252935 d!2253115))

(declare-fun bs!1905879 () Bool)

(declare-fun d!2253117 () Bool)

(assert (= bs!1905879 (and d!2253117 d!2252993)))

(declare-fun lambda!443898 () Int)

(assert (=> bs!1905879 (= lambda!443898 lambda!443885)))

(declare-fun bs!1905880 () Bool)

(assert (= bs!1905880 (and d!2253117 d!2252937)))

(assert (=> bs!1905880 (not (= lambda!443898 lambda!443868))))

(declare-fun bs!1905881 () Bool)

(assert (= bs!1905881 (and d!2253117 d!2252935)))

(assert (=> bs!1905881 (not (= lambda!443898 lambda!443865))))

(declare-fun bs!1905882 () Bool)

(assert (= bs!1905882 (and d!2253117 d!2252995)))

(assert (=> bs!1905882 (not (= lambda!443898 lambda!443886))))

(declare-fun bs!1905883 () Bool)

(assert (= bs!1905883 (and d!2253117 d!2252997)))

(assert (=> bs!1905883 (not (= lambda!443898 lambda!443889))))

(declare-fun bs!1905884 () Bool)

(assert (= bs!1905884 (and d!2253117 b!7249075)))

(assert (=> bs!1905884 (not (= lambda!443898 lambda!443830))))

(declare-fun bs!1905885 () Bool)

(assert (= bs!1905885 (and d!2253117 d!2253033)))

(assert (=> bs!1905885 (= lambda!443898 lambda!443891)))

(declare-fun bs!1905886 () Bool)

(assert (= bs!1905886 (and d!2253117 d!2253059)))

(assert (=> bs!1905886 (= lambda!443898 lambda!443893)))

(assert (=> d!2253117 (= (nullableZipper!2907 (set.insert ct2!328 (as set.empty (Set Context!15152)))) (exists!4350 (set.insert ct2!328 (as set.empty (Set Context!15152))) lambda!443898))))

(declare-fun bs!1905887 () Bool)

(assert (= bs!1905887 d!2253117))

(assert (=> bs!1905887 m!7927218))

(declare-fun m!7927878 () Bool)

(assert (=> bs!1905887 m!7927878))

(assert (=> b!7249121 d!2253117))

(declare-fun call!660197 () List!70488)

(declare-fun bm!660192 () Bool)

(declare-fun c!1347045 () Bool)

(declare-fun c!1347043 () Bool)

(assert (=> bm!660192 (= call!660197 ($colon$colon!2911 (exprs!8076 (Context!15153 (t!384540 (exprs!8076 ct1!232)))) (ite (or c!1347045 c!1347043) (regTwo!37784 (h!76812 (exprs!8076 ct1!232))) (h!76812 (exprs!8076 ct1!232)))))))

(declare-fun bm!660193 () Bool)

(declare-fun call!660198 () (Set Context!15152))

(declare-fun call!660202 () (Set Context!15152))

(assert (=> bm!660193 (= call!660198 call!660202)))

(declare-fun b!7249508 () Bool)

(declare-fun e!4346806 () (Set Context!15152))

(declare-fun call!660200 () (Set Context!15152))

(assert (=> b!7249508 (= e!4346806 call!660200)))

(declare-fun b!7249509 () Bool)

(declare-fun e!4346804 () Bool)

(assert (=> b!7249509 (= c!1347045 e!4346804)))

(declare-fun res!2940335 () Bool)

(assert (=> b!7249509 (=> (not res!2940335) (not e!4346804))))

(assert (=> b!7249509 (= res!2940335 (is-Concat!27481 (h!76812 (exprs!8076 ct1!232))))))

(declare-fun e!4346801 () (Set Context!15152))

(declare-fun e!4346805 () (Set Context!15152))

(assert (=> b!7249509 (= e!4346801 e!4346805)))

(declare-fun bm!660194 () Bool)

(declare-fun c!1347042 () Bool)

(declare-fun call!660201 () (Set Context!15152))

(assert (=> bm!660194 (= call!660201 (derivationStepZipperDown!2630 (ite c!1347042 (regOne!37785 (h!76812 (exprs!8076 ct1!232))) (regOne!37784 (h!76812 (exprs!8076 ct1!232)))) (ite c!1347042 (Context!15153 (t!384540 (exprs!8076 ct1!232))) (Context!15153 call!660197)) (h!76813 s1!1971)))))

(declare-fun b!7249510 () Bool)

(assert (=> b!7249510 (= e!4346805 (set.union call!660201 call!660198))))

(declare-fun b!7249511 () Bool)

(declare-fun c!1347046 () Bool)

(assert (=> b!7249511 (= c!1347046 (is-Star!18636 (h!76812 (exprs!8076 ct1!232))))))

(declare-fun e!4346802 () (Set Context!15152))

(assert (=> b!7249511 (= e!4346802 e!4346806)))

(declare-fun b!7249512 () Bool)

(assert (=> b!7249512 (= e!4346804 (nullable!7898 (regOne!37784 (h!76812 (exprs!8076 ct1!232)))))))

(declare-fun b!7249513 () Bool)

(assert (=> b!7249513 (= e!4346801 (set.union call!660201 call!660202))))

(declare-fun b!7249514 () Bool)

(declare-fun e!4346803 () (Set Context!15152))

(assert (=> b!7249514 (= e!4346803 (set.insert (Context!15153 (t!384540 (exprs!8076 ct1!232))) (as set.empty (Set Context!15152))))))

(declare-fun b!7249515 () Bool)

(assert (=> b!7249515 (= e!4346805 e!4346802)))

(assert (=> b!7249515 (= c!1347043 (is-Concat!27481 (h!76812 (exprs!8076 ct1!232))))))

(declare-fun bm!660196 () Bool)

(declare-fun call!660199 () List!70488)

(assert (=> bm!660196 (= call!660202 (derivationStepZipperDown!2630 (ite c!1347042 (regTwo!37785 (h!76812 (exprs!8076 ct1!232))) (ite c!1347045 (regTwo!37784 (h!76812 (exprs!8076 ct1!232))) (ite c!1347043 (regOne!37784 (h!76812 (exprs!8076 ct1!232))) (reg!18965 (h!76812 (exprs!8076 ct1!232)))))) (ite (or c!1347042 c!1347045) (Context!15153 (t!384540 (exprs!8076 ct1!232))) (Context!15153 call!660199)) (h!76813 s1!1971)))))

(declare-fun b!7249516 () Bool)

(assert (=> b!7249516 (= e!4346803 e!4346801)))

(assert (=> b!7249516 (= c!1347042 (is-Union!18636 (h!76812 (exprs!8076 ct1!232))))))

(declare-fun bm!660197 () Bool)

(assert (=> bm!660197 (= call!660199 call!660197)))

(declare-fun b!7249517 () Bool)

(assert (=> b!7249517 (= e!4346806 (as set.empty (Set Context!15152)))))

(declare-fun b!7249518 () Bool)

(assert (=> b!7249518 (= e!4346802 call!660200)))

(declare-fun d!2253119 () Bool)

(declare-fun c!1347044 () Bool)

(assert (=> d!2253119 (= c!1347044 (and (is-ElementMatch!18636 (h!76812 (exprs!8076 ct1!232))) (= (c!1346894 (h!76812 (exprs!8076 ct1!232))) (h!76813 s1!1971))))))

(assert (=> d!2253119 (= (derivationStepZipperDown!2630 (h!76812 (exprs!8076 ct1!232)) (Context!15153 (t!384540 (exprs!8076 ct1!232))) (h!76813 s1!1971)) e!4346803)))

(declare-fun bm!660195 () Bool)

(assert (=> bm!660195 (= call!660200 call!660198)))

(assert (= (and d!2253119 c!1347044) b!7249514))

(assert (= (and d!2253119 (not c!1347044)) b!7249516))

(assert (= (and b!7249516 c!1347042) b!7249513))

(assert (= (and b!7249516 (not c!1347042)) b!7249509))

(assert (= (and b!7249509 res!2940335) b!7249512))

(assert (= (and b!7249509 c!1347045) b!7249510))

(assert (= (and b!7249509 (not c!1347045)) b!7249515))

(assert (= (and b!7249515 c!1347043) b!7249518))

(assert (= (and b!7249515 (not c!1347043)) b!7249511))

(assert (= (and b!7249511 c!1347046) b!7249508))

(assert (= (and b!7249511 (not c!1347046)) b!7249517))

(assert (= (or b!7249518 b!7249508) bm!660197))

(assert (= (or b!7249518 b!7249508) bm!660195))

(assert (= (or b!7249510 bm!660197) bm!660192))

(assert (= (or b!7249510 bm!660195) bm!660193))

(assert (= (or b!7249513 bm!660193) bm!660196))

(assert (= (or b!7249513 b!7249510) bm!660194))

(declare-fun m!7927880 () Bool)

(assert (=> bm!660194 m!7927880))

(declare-fun m!7927882 () Bool)

(assert (=> b!7249514 m!7927882))

(declare-fun m!7927884 () Bool)

(assert (=> bm!660192 m!7927884))

(assert (=> b!7249512 m!7927480))

(declare-fun m!7927886 () Bool)

(assert (=> bm!660196 m!7927886))

(assert (=> bm!660136 d!2253119))

(declare-fun d!2253121 () Bool)

(declare-fun c!1347047 () Bool)

(assert (=> d!2253121 (= c!1347047 (is-Nil!70366 lt!2584249))))

(declare-fun e!4346807 () (Set Context!15152))

(assert (=> d!2253121 (= (content!14593 lt!2584249) e!4346807)))

(declare-fun b!7249519 () Bool)

(assert (=> b!7249519 (= e!4346807 (as set.empty (Set Context!15152)))))

(declare-fun b!7249520 () Bool)

(assert (=> b!7249520 (= e!4346807 (set.union (set.insert (h!76814 lt!2584249) (as set.empty (Set Context!15152))) (content!14593 (t!384542 lt!2584249))))))

(assert (= (and d!2253121 c!1347047) b!7249519))

(assert (= (and d!2253121 (not c!1347047)) b!7249520))

(declare-fun m!7927888 () Bool)

(assert (=> b!7249520 m!7927888))

(declare-fun m!7927890 () Bool)

(assert (=> b!7249520 m!7927890))

(assert (=> b!7249233 d!2253121))

(declare-fun d!2253123 () Bool)

(declare-fun res!2940336 () Bool)

(declare-fun e!4346808 () Bool)

(assert (=> d!2253123 (=> res!2940336 e!4346808)))

(assert (=> d!2253123 (= res!2940336 (is-Nil!70364 (exprs!8076 ct2!328)))))

(assert (=> d!2253123 (= (forall!17480 (exprs!8076 ct2!328) lambda!443853) e!4346808)))

(declare-fun b!7249521 () Bool)

(declare-fun e!4346809 () Bool)

(assert (=> b!7249521 (= e!4346808 e!4346809)))

(declare-fun res!2940337 () Bool)

(assert (=> b!7249521 (=> (not res!2940337) (not e!4346809))))

(assert (=> b!7249521 (= res!2940337 (dynLambda!28725 lambda!443853 (h!76812 (exprs!8076 ct2!328))))))

(declare-fun b!7249522 () Bool)

(assert (=> b!7249522 (= e!4346809 (forall!17480 (t!384540 (exprs!8076 ct2!328)) lambda!443853))))

(assert (= (and d!2253123 (not res!2940336)) b!7249521))

(assert (= (and b!7249521 res!2940337) b!7249522))

(declare-fun b_lambda!278265 () Bool)

(assert (=> (not b_lambda!278265) (not b!7249521)))

(declare-fun m!7927892 () Bool)

(assert (=> b!7249521 m!7927892))

(declare-fun m!7927894 () Bool)

(assert (=> b!7249522 m!7927894))

(assert (=> d!2252895 d!2253123))

(declare-fun d!2253125 () Bool)

(declare-fun c!1347048 () Bool)

(assert (=> d!2253125 (= c!1347048 (isEmpty!40524 (tail!14307 s1!1971)))))

(declare-fun e!4346810 () Bool)

(assert (=> d!2253125 (= (matchZipper!3546 (derivationStepZipper!3414 lt!2584161 (head!14896 s1!1971)) (tail!14307 s1!1971)) e!4346810)))

(declare-fun b!7249523 () Bool)

(assert (=> b!7249523 (= e!4346810 (nullableZipper!2907 (derivationStepZipper!3414 lt!2584161 (head!14896 s1!1971))))))

(declare-fun b!7249524 () Bool)

(assert (=> b!7249524 (= e!4346810 (matchZipper!3546 (derivationStepZipper!3414 (derivationStepZipper!3414 lt!2584161 (head!14896 s1!1971)) (head!14896 (tail!14307 s1!1971))) (tail!14307 (tail!14307 s1!1971))))))

(assert (= (and d!2253125 c!1347048) b!7249523))

(assert (= (and d!2253125 (not c!1347048)) b!7249524))

(assert (=> d!2253125 m!7927360))

(declare-fun m!7927896 () Bool)

(assert (=> d!2253125 m!7927896))

(assert (=> b!7249523 m!7927358))

(declare-fun m!7927898 () Bool)

(assert (=> b!7249523 m!7927898))

(assert (=> b!7249524 m!7927360))

(declare-fun m!7927900 () Bool)

(assert (=> b!7249524 m!7927900))

(assert (=> b!7249524 m!7927358))

(assert (=> b!7249524 m!7927900))

(declare-fun m!7927902 () Bool)

(assert (=> b!7249524 m!7927902))

(assert (=> b!7249524 m!7927360))

(declare-fun m!7927904 () Bool)

(assert (=> b!7249524 m!7927904))

(assert (=> b!7249524 m!7927902))

(assert (=> b!7249524 m!7927904))

(declare-fun m!7927906 () Bool)

(assert (=> b!7249524 m!7927906))

(assert (=> b!7249136 d!2253125))

(declare-fun bs!1905888 () Bool)

(declare-fun d!2253127 () Bool)

(assert (= bs!1905888 (and d!2253127 d!2252899)))

(declare-fun lambda!443899 () Int)

(assert (=> bs!1905888 (= (= (head!14896 s1!1971) (h!76813 s1!1971)) (= lambda!443899 lambda!443856))))

(declare-fun bs!1905889 () Bool)

(assert (= bs!1905889 (and d!2253127 d!2253021)))

(assert (=> bs!1905889 (= (= (head!14896 s1!1971) (head!14896 (++!16535 (t!384541 s1!1971) s2!1849))) (= lambda!443899 lambda!443890))))

(declare-fun bs!1905890 () Bool)

(assert (= bs!1905890 (and d!2253127 d!2253053)))

(assert (=> bs!1905890 (= (= (head!14896 s1!1971) (head!14896 (t!384541 s1!1971))) (= lambda!443899 lambda!443892))))

(declare-fun bs!1905891 () Bool)

(assert (= bs!1905891 (and d!2253127 d!2253107)))

(assert (=> bs!1905891 (= (= (head!14896 s1!1971) (head!14896 s2!1849)) (= lambda!443899 lambda!443897))))

(assert (=> d!2253127 true))

(assert (=> d!2253127 (= (derivationStepZipper!3414 lt!2584161 (head!14896 s1!1971)) (flatMap!2801 lt!2584161 lambda!443899))))

(declare-fun bs!1905892 () Bool)

(assert (= bs!1905892 d!2253127))

(declare-fun m!7927908 () Bool)

(assert (=> bs!1905892 m!7927908))

(assert (=> b!7249136 d!2253127))

(declare-fun d!2253129 () Bool)

(assert (=> d!2253129 (= (head!14896 s1!1971) (h!76813 s1!1971))))

(assert (=> b!7249136 d!2253129))

(declare-fun d!2253131 () Bool)

(assert (=> d!2253131 (= (tail!14307 s1!1971) (t!384541 s1!1971))))

(assert (=> b!7249136 d!2253131))

(declare-fun d!2253133 () Bool)

(declare-fun res!2940338 () Bool)

(declare-fun e!4346811 () Bool)

(assert (=> d!2253133 (=> res!2940338 e!4346811)))

(assert (=> d!2253133 (= res!2940338 (is-Nil!70364 (++!16534 (exprs!8076 ct1!232) (exprs!8076 ct2!328))))))

(assert (=> d!2253133 (= (forall!17480 (++!16534 (exprs!8076 ct1!232) (exprs!8076 ct2!328)) lambda!443829) e!4346811)))

(declare-fun b!7249525 () Bool)

(declare-fun e!4346812 () Bool)

(assert (=> b!7249525 (= e!4346811 e!4346812)))

(declare-fun res!2940339 () Bool)

(assert (=> b!7249525 (=> (not res!2940339) (not e!4346812))))

(assert (=> b!7249525 (= res!2940339 (dynLambda!28725 lambda!443829 (h!76812 (++!16534 (exprs!8076 ct1!232) (exprs!8076 ct2!328)))))))

(declare-fun b!7249526 () Bool)

(assert (=> b!7249526 (= e!4346812 (forall!17480 (t!384540 (++!16534 (exprs!8076 ct1!232) (exprs!8076 ct2!328))) lambda!443829))))

(assert (= (and d!2253133 (not res!2940338)) b!7249525))

(assert (= (and b!7249525 res!2940339) b!7249526))

(declare-fun b_lambda!278267 () Bool)

(assert (=> (not b_lambda!278267) (not b!7249525)))

(declare-fun m!7927910 () Bool)

(assert (=> b!7249525 m!7927910))

(declare-fun m!7927912 () Bool)

(assert (=> b!7249526 m!7927912))

(assert (=> d!2252889 d!2253133))

(assert (=> d!2252889 d!2252887))

(declare-fun d!2253135 () Bool)

(assert (=> d!2253135 (forall!17480 (++!16534 (exprs!8076 ct1!232) (exprs!8076 ct2!328)) lambda!443829)))

(assert (=> d!2253135 true))

(declare-fun _$78!753 () Unit!163856)

(assert (=> d!2253135 (= (choose!55976 (exprs!8076 ct1!232) (exprs!8076 ct2!328) lambda!443829) _$78!753)))

(declare-fun bs!1905893 () Bool)

(assert (= bs!1905893 d!2253135))

(assert (=> bs!1905893 m!7927206))

(assert (=> bs!1905893 m!7927206))

(assert (=> bs!1905893 m!7927346))

(assert (=> d!2252889 d!2253135))

(declare-fun d!2253137 () Bool)

(declare-fun res!2940340 () Bool)

(declare-fun e!4346813 () Bool)

(assert (=> d!2253137 (=> res!2940340 e!4346813)))

(assert (=> d!2253137 (= res!2940340 (is-Nil!70364 (exprs!8076 ct1!232)))))

(assert (=> d!2253137 (= (forall!17480 (exprs!8076 ct1!232) lambda!443829) e!4346813)))

(declare-fun b!7249527 () Bool)

(declare-fun e!4346814 () Bool)

(assert (=> b!7249527 (= e!4346813 e!4346814)))

(declare-fun res!2940341 () Bool)

(assert (=> b!7249527 (=> (not res!2940341) (not e!4346814))))

(assert (=> b!7249527 (= res!2940341 (dynLambda!28725 lambda!443829 (h!76812 (exprs!8076 ct1!232))))))

(declare-fun b!7249528 () Bool)

(assert (=> b!7249528 (= e!4346814 (forall!17480 (t!384540 (exprs!8076 ct1!232)) lambda!443829))))

(assert (= (and d!2253137 (not res!2940340)) b!7249527))

(assert (= (and b!7249527 res!2940341) b!7249528))

(declare-fun b_lambda!278269 () Bool)

(assert (=> (not b_lambda!278269) (not b!7249527)))

(declare-fun m!7927914 () Bool)

(assert (=> b!7249527 m!7927914))

(declare-fun m!7927916 () Bool)

(assert (=> b!7249528 m!7927916))

(assert (=> d!2252889 d!2253137))

(declare-fun c!1347050 () Bool)

(declare-fun call!660203 () List!70488)

(declare-fun c!1347052 () Bool)

(declare-fun bm!660198 () Bool)

(assert (=> bm!660198 (= call!660203 ($colon$colon!2911 (exprs!8076 (Context!15153 (t!384540 (exprs!8076 (Context!15153 lt!2584164))))) (ite (or c!1347052 c!1347050) (regTwo!37784 (h!76812 (exprs!8076 (Context!15153 lt!2584164)))) (h!76812 (exprs!8076 (Context!15153 lt!2584164))))))))

(declare-fun bm!660199 () Bool)

(declare-fun call!660204 () (Set Context!15152))

(declare-fun call!660208 () (Set Context!15152))

(assert (=> bm!660199 (= call!660204 call!660208)))

(declare-fun b!7249529 () Bool)

(declare-fun e!4346820 () (Set Context!15152))

(declare-fun call!660206 () (Set Context!15152))

(assert (=> b!7249529 (= e!4346820 call!660206)))

(declare-fun b!7249530 () Bool)

(declare-fun e!4346818 () Bool)

(assert (=> b!7249530 (= c!1347052 e!4346818)))

(declare-fun res!2940342 () Bool)

(assert (=> b!7249530 (=> (not res!2940342) (not e!4346818))))

(assert (=> b!7249530 (= res!2940342 (is-Concat!27481 (h!76812 (exprs!8076 (Context!15153 lt!2584164)))))))

(declare-fun e!4346815 () (Set Context!15152))

(declare-fun e!4346819 () (Set Context!15152))

(assert (=> b!7249530 (= e!4346815 e!4346819)))

(declare-fun call!660207 () (Set Context!15152))

(declare-fun bm!660200 () Bool)

(declare-fun c!1347049 () Bool)

(assert (=> bm!660200 (= call!660207 (derivationStepZipperDown!2630 (ite c!1347049 (regOne!37785 (h!76812 (exprs!8076 (Context!15153 lt!2584164)))) (regOne!37784 (h!76812 (exprs!8076 (Context!15153 lt!2584164))))) (ite c!1347049 (Context!15153 (t!384540 (exprs!8076 (Context!15153 lt!2584164)))) (Context!15153 call!660203)) (h!76813 s1!1971)))))

(declare-fun b!7249531 () Bool)

(assert (=> b!7249531 (= e!4346819 (set.union call!660207 call!660204))))

(declare-fun b!7249532 () Bool)

(declare-fun c!1347053 () Bool)

(assert (=> b!7249532 (= c!1347053 (is-Star!18636 (h!76812 (exprs!8076 (Context!15153 lt!2584164)))))))

(declare-fun e!4346816 () (Set Context!15152))

(assert (=> b!7249532 (= e!4346816 e!4346820)))

(declare-fun b!7249533 () Bool)

(assert (=> b!7249533 (= e!4346818 (nullable!7898 (regOne!37784 (h!76812 (exprs!8076 (Context!15153 lt!2584164))))))))

(declare-fun b!7249534 () Bool)

(assert (=> b!7249534 (= e!4346815 (set.union call!660207 call!660208))))

(declare-fun b!7249535 () Bool)

(declare-fun e!4346817 () (Set Context!15152))

(assert (=> b!7249535 (= e!4346817 (set.insert (Context!15153 (t!384540 (exprs!8076 (Context!15153 lt!2584164)))) (as set.empty (Set Context!15152))))))

(declare-fun b!7249536 () Bool)

(assert (=> b!7249536 (= e!4346819 e!4346816)))

(assert (=> b!7249536 (= c!1347050 (is-Concat!27481 (h!76812 (exprs!8076 (Context!15153 lt!2584164)))))))

(declare-fun bm!660202 () Bool)

(declare-fun call!660205 () List!70488)

(assert (=> bm!660202 (= call!660208 (derivationStepZipperDown!2630 (ite c!1347049 (regTwo!37785 (h!76812 (exprs!8076 (Context!15153 lt!2584164)))) (ite c!1347052 (regTwo!37784 (h!76812 (exprs!8076 (Context!15153 lt!2584164)))) (ite c!1347050 (regOne!37784 (h!76812 (exprs!8076 (Context!15153 lt!2584164)))) (reg!18965 (h!76812 (exprs!8076 (Context!15153 lt!2584164))))))) (ite (or c!1347049 c!1347052) (Context!15153 (t!384540 (exprs!8076 (Context!15153 lt!2584164)))) (Context!15153 call!660205)) (h!76813 s1!1971)))))

(declare-fun b!7249537 () Bool)

(assert (=> b!7249537 (= e!4346817 e!4346815)))

(assert (=> b!7249537 (= c!1347049 (is-Union!18636 (h!76812 (exprs!8076 (Context!15153 lt!2584164)))))))

(declare-fun bm!660203 () Bool)

(assert (=> bm!660203 (= call!660205 call!660203)))

(declare-fun b!7249538 () Bool)

(assert (=> b!7249538 (= e!4346820 (as set.empty (Set Context!15152)))))

(declare-fun b!7249539 () Bool)

(assert (=> b!7249539 (= e!4346816 call!660206)))

(declare-fun d!2253139 () Bool)

(declare-fun c!1347051 () Bool)

(assert (=> d!2253139 (= c!1347051 (and (is-ElementMatch!18636 (h!76812 (exprs!8076 (Context!15153 lt!2584164)))) (= (c!1346894 (h!76812 (exprs!8076 (Context!15153 lt!2584164)))) (h!76813 s1!1971))))))

(assert (=> d!2253139 (= (derivationStepZipperDown!2630 (h!76812 (exprs!8076 (Context!15153 lt!2584164))) (Context!15153 (t!384540 (exprs!8076 (Context!15153 lt!2584164)))) (h!76813 s1!1971)) e!4346817)))

(declare-fun bm!660201 () Bool)

(assert (=> bm!660201 (= call!660206 call!660204)))

(assert (= (and d!2253139 c!1347051) b!7249535))

(assert (= (and d!2253139 (not c!1347051)) b!7249537))

(assert (= (and b!7249537 c!1347049) b!7249534))

(assert (= (and b!7249537 (not c!1347049)) b!7249530))

(assert (= (and b!7249530 res!2940342) b!7249533))

(assert (= (and b!7249530 c!1347052) b!7249531))

(assert (= (and b!7249530 (not c!1347052)) b!7249536))

(assert (= (and b!7249536 c!1347050) b!7249539))

(assert (= (and b!7249536 (not c!1347050)) b!7249532))

(assert (= (and b!7249532 c!1347053) b!7249529))

(assert (= (and b!7249532 (not c!1347053)) b!7249538))

(assert (= (or b!7249539 b!7249529) bm!660203))

(assert (= (or b!7249539 b!7249529) bm!660201))

(assert (= (or b!7249531 bm!660203) bm!660198))

(assert (= (or b!7249531 bm!660201) bm!660199))

(assert (= (or b!7249534 bm!660199) bm!660202))

(assert (= (or b!7249534 b!7249531) bm!660200))

(declare-fun m!7927918 () Bool)

(assert (=> bm!660200 m!7927918))

(declare-fun m!7927920 () Bool)

(assert (=> b!7249535 m!7927920))

(declare-fun m!7927922 () Bool)

(assert (=> bm!660198 m!7927922))

(declare-fun m!7927924 () Bool)

(assert (=> b!7249533 m!7927924))

(declare-fun m!7927926 () Bool)

(assert (=> bm!660202 m!7927926))

(assert (=> bm!660137 d!2253139))

(declare-fun bs!1905894 () Bool)

(declare-fun d!2253141 () Bool)

(assert (= bs!1905894 (and d!2253141 d!2252993)))

(declare-fun lambda!443900 () Int)

(assert (=> bs!1905894 (not (= lambda!443900 lambda!443885))))

(declare-fun bs!1905895 () Bool)

(assert (= bs!1905895 (and d!2253141 d!2252937)))

(assert (=> bs!1905895 (not (= lambda!443900 lambda!443868))))

(declare-fun bs!1905896 () Bool)

(assert (= bs!1905896 (and d!2253141 d!2252935)))

(assert (=> bs!1905896 (= lambda!443900 lambda!443865)))

(declare-fun bs!1905897 () Bool)

(assert (= bs!1905897 (and d!2253141 d!2252995)))

(assert (=> bs!1905897 (= (= lambda!443830 lambda!443868) (= lambda!443900 lambda!443886))))

(declare-fun bs!1905898 () Bool)

(assert (= bs!1905898 (and d!2253141 d!2252997)))

(assert (=> bs!1905898 (not (= lambda!443900 lambda!443889))))

(declare-fun bs!1905899 () Bool)

(assert (= bs!1905899 (and d!2253141 b!7249075)))

(assert (=> bs!1905899 (not (= lambda!443900 lambda!443830))))

(declare-fun bs!1905900 () Bool)

(assert (= bs!1905900 (and d!2253141 d!2253117)))

(assert (=> bs!1905900 (not (= lambda!443900 lambda!443898))))

(declare-fun bs!1905901 () Bool)

(assert (= bs!1905901 (and d!2253141 d!2253033)))

(assert (=> bs!1905901 (not (= lambda!443900 lambda!443891))))

(declare-fun bs!1905902 () Bool)

(assert (= bs!1905902 (and d!2253141 d!2253059)))

(assert (=> bs!1905902 (not (= lambda!443900 lambda!443893))))

(assert (=> d!2253141 true))

(assert (=> d!2253141 (< (dynLambda!28722 order!28967 lambda!443830) (dynLambda!28722 order!28967 lambda!443900))))

(assert (=> d!2253141 (= (exists!4351 (toList!11465 lt!2584165) lambda!443830) (not (forall!17481 (toList!11465 lt!2584165) lambda!443900)))))

(declare-fun bs!1905903 () Bool)

(assert (= bs!1905903 d!2253141))

(assert (=> bs!1905903 m!7927254))

(declare-fun m!7927928 () Bool)

(assert (=> bs!1905903 m!7927928))

(assert (=> d!2252933 d!2253141))

(assert (=> d!2252933 d!2252941))

(declare-fun d!2253143 () Bool)

(declare-fun res!2940345 () Bool)

(assert (=> d!2253143 (= res!2940345 (exists!4351 (toList!11465 lt!2584165) lambda!443830))))

(assert (=> d!2253143 true))

(assert (=> d!2253143 (= (choose!55978 lt!2584165 lambda!443830) res!2940345)))

(declare-fun bs!1905904 () Bool)

(assert (= bs!1905904 d!2253143))

(assert (=> bs!1905904 m!7927254))

(assert (=> bs!1905904 m!7927254))

(assert (=> bs!1905904 m!7927484))

(assert (=> d!2252933 d!2253143))

(declare-fun b!7249553 () Bool)

(declare-fun e!4346823 () Bool)

(declare-fun tp!2037229 () Bool)

(declare-fun tp!2037231 () Bool)

(assert (=> b!7249553 (= e!4346823 (and tp!2037229 tp!2037231))))

(declare-fun b!7249551 () Bool)

(declare-fun tp!2037227 () Bool)

(declare-fun tp!2037230 () Bool)

(assert (=> b!7249551 (= e!4346823 (and tp!2037227 tp!2037230))))

(assert (=> b!7249244 (= tp!2037196 e!4346823)))

(declare-fun b!7249552 () Bool)

(declare-fun tp!2037228 () Bool)

(assert (=> b!7249552 (= e!4346823 tp!2037228)))

(declare-fun b!7249550 () Bool)

(assert (=> b!7249550 (= e!4346823 tp_is_empty!46737)))

(assert (= (and b!7249244 (is-ElementMatch!18636 (h!76812 (exprs!8076 ct2!328)))) b!7249550))

(assert (= (and b!7249244 (is-Concat!27481 (h!76812 (exprs!8076 ct2!328)))) b!7249551))

(assert (= (and b!7249244 (is-Star!18636 (h!76812 (exprs!8076 ct2!328)))) b!7249552))

(assert (= (and b!7249244 (is-Union!18636 (h!76812 (exprs!8076 ct2!328)))) b!7249553))

(declare-fun b!7249554 () Bool)

(declare-fun e!4346824 () Bool)

(declare-fun tp!2037232 () Bool)

(declare-fun tp!2037233 () Bool)

(assert (=> b!7249554 (= e!4346824 (and tp!2037232 tp!2037233))))

(assert (=> b!7249244 (= tp!2037197 e!4346824)))

(assert (= (and b!7249244 (is-Cons!70364 (t!384540 (exprs!8076 ct2!328)))) b!7249554))

(declare-fun b!7249555 () Bool)

(declare-fun e!4346825 () Bool)

(declare-fun tp!2037234 () Bool)

(assert (=> b!7249555 (= e!4346825 (and tp_is_empty!46737 tp!2037234))))

(assert (=> b!7249245 (= tp!2037198 e!4346825)))

(assert (= (and b!7249245 (is-Cons!70365 (t!384541 (t!384541 s2!1849)))) b!7249555))

(declare-fun b!7249556 () Bool)

(declare-fun e!4346826 () Bool)

(declare-fun tp!2037235 () Bool)

(assert (=> b!7249556 (= e!4346826 (and tp_is_empty!46737 tp!2037235))))

(assert (=> b!7249238 (= tp!2037189 e!4346826)))

(assert (= (and b!7249238 (is-Cons!70365 (t!384541 (t!384541 s1!1971)))) b!7249556))

(declare-fun b!7249560 () Bool)

(declare-fun e!4346827 () Bool)

(declare-fun tp!2037238 () Bool)

(declare-fun tp!2037240 () Bool)

(assert (=> b!7249560 (= e!4346827 (and tp!2037238 tp!2037240))))

(declare-fun b!7249558 () Bool)

(declare-fun tp!2037236 () Bool)

(declare-fun tp!2037239 () Bool)

(assert (=> b!7249558 (= e!4346827 (and tp!2037236 tp!2037239))))

(assert (=> b!7249243 (= tp!2037194 e!4346827)))

(declare-fun b!7249559 () Bool)

(declare-fun tp!2037237 () Bool)

(assert (=> b!7249559 (= e!4346827 tp!2037237)))

(declare-fun b!7249557 () Bool)

(assert (=> b!7249557 (= e!4346827 tp_is_empty!46737)))

(assert (= (and b!7249243 (is-ElementMatch!18636 (h!76812 (exprs!8076 ct1!232)))) b!7249557))

(assert (= (and b!7249243 (is-Concat!27481 (h!76812 (exprs!8076 ct1!232)))) b!7249558))

(assert (= (and b!7249243 (is-Star!18636 (h!76812 (exprs!8076 ct1!232)))) b!7249559))

(assert (= (and b!7249243 (is-Union!18636 (h!76812 (exprs!8076 ct1!232)))) b!7249560))

(declare-fun b!7249561 () Bool)

(declare-fun e!4346828 () Bool)

(declare-fun tp!2037241 () Bool)

(declare-fun tp!2037242 () Bool)

(assert (=> b!7249561 (= e!4346828 (and tp!2037241 tp!2037242))))

(assert (=> b!7249243 (= tp!2037195 e!4346828)))

(assert (= (and b!7249243 (is-Cons!70364 (t!384540 (exprs!8076 ct1!232)))) b!7249561))

(declare-fun b_lambda!278271 () Bool)

(assert (= b_lambda!278265 (or d!2252895 b_lambda!278271)))

(declare-fun bs!1905905 () Bool)

(declare-fun d!2253145 () Bool)

(assert (= bs!1905905 (and d!2253145 d!2252895)))

(declare-fun validRegex!9540 (Regex!18636) Bool)

(assert (=> bs!1905905 (= (dynLambda!28725 lambda!443853 (h!76812 (exprs!8076 ct2!328))) (validRegex!9540 (h!76812 (exprs!8076 ct2!328))))))

(declare-fun m!7927930 () Bool)

(assert (=> bs!1905905 m!7927930))

(assert (=> b!7249521 d!2253145))

(declare-fun b_lambda!278273 () Bool)

(assert (= b_lambda!278269 (or b!7249072 b_lambda!278273)))

(declare-fun bs!1905906 () Bool)

(declare-fun d!2253147 () Bool)

(assert (= bs!1905906 (and d!2253147 b!7249072)))

(assert (=> bs!1905906 (= (dynLambda!28725 lambda!443829 (h!76812 (exprs!8076 ct1!232))) (validRegex!9540 (h!76812 (exprs!8076 ct1!232))))))

(declare-fun m!7927932 () Bool)

(assert (=> bs!1905906 m!7927932))

(assert (=> b!7249527 d!2253147))

(declare-fun b_lambda!278275 () Bool)

(assert (= b_lambda!278257 (or d!2252893 b_lambda!278275)))

(declare-fun bs!1905907 () Bool)

(declare-fun d!2253149 () Bool)

(assert (= bs!1905907 (and d!2253149 d!2252893)))

(assert (=> bs!1905907 (= (dynLambda!28725 lambda!443852 (h!76812 (exprs!8076 ct1!232))) (validRegex!9540 (h!76812 (exprs!8076 ct1!232))))))

(assert (=> bs!1905907 m!7927932))

(assert (=> b!7249414 d!2253149))

(declare-fun b_lambda!278277 () Bool)

(assert (= b_lambda!278263 (or d!2252935 b_lambda!278277)))

(declare-fun bs!1905908 () Bool)

(declare-fun d!2253151 () Bool)

(assert (= bs!1905908 (and d!2253151 d!2252935)))

(assert (=> bs!1905908 (= (dynLambda!28721 lambda!443865 (h!76814 lt!2584155)) (not (dynLambda!28721 lambda!443830 (h!76814 lt!2584155))))))

(declare-fun b_lambda!278291 () Bool)

(assert (=> (not b_lambda!278291) (not bs!1905908)))

(declare-fun m!7927934 () Bool)

(assert (=> bs!1905908 m!7927934))

(assert (=> b!7249506 d!2253151))

(declare-fun b_lambda!278279 () Bool)

(assert (= b_lambda!278253 (or b!7249072 b_lambda!278279)))

(declare-fun bs!1905909 () Bool)

(declare-fun d!2253153 () Bool)

(assert (= bs!1905909 (and d!2253153 b!7249072)))

(assert (=> bs!1905909 (= (dynLambda!28725 lambda!443829 (h!76812 (++!16534 (exprs!8076 lt!2584156) (exprs!8076 ct2!328)))) (validRegex!9540 (h!76812 (++!16534 (exprs!8076 lt!2584156) (exprs!8076 ct2!328)))))))

(declare-fun m!7927936 () Bool)

(assert (=> bs!1905909 m!7927936))

(assert (=> b!7249410 d!2253153))

(declare-fun b_lambda!278281 () Bool)

(assert (= b_lambda!278255 (or b!7249072 b_lambda!278281)))

(declare-fun bs!1905910 () Bool)

(declare-fun d!2253155 () Bool)

(assert (= bs!1905910 (and d!2253155 b!7249072)))

(assert (=> bs!1905910 (= (dynLambda!28725 lambda!443829 (h!76812 (exprs!8076 lt!2584156))) (validRegex!9540 (h!76812 (exprs!8076 lt!2584156))))))

(declare-fun m!7927938 () Bool)

(assert (=> bs!1905910 m!7927938))

(assert (=> b!7249412 d!2253155))

(declare-fun b_lambda!278283 () Bool)

(assert (= b_lambda!278267 (or b!7249072 b_lambda!278283)))

(declare-fun bs!1905911 () Bool)

(declare-fun d!2253157 () Bool)

(assert (= bs!1905911 (and d!2253157 b!7249072)))

(assert (=> bs!1905911 (= (dynLambda!28725 lambda!443829 (h!76812 (++!16534 (exprs!8076 ct1!232) (exprs!8076 ct2!328)))) (validRegex!9540 (h!76812 (++!16534 (exprs!8076 ct1!232) (exprs!8076 ct2!328)))))))

(declare-fun m!7927940 () Bool)

(assert (=> bs!1905911 m!7927940))

(assert (=> b!7249525 d!2253157))

(declare-fun b_lambda!278285 () Bool)

(assert (= b_lambda!278259 (or b!7249075 b_lambda!278285)))

(declare-fun bs!1905912 () Bool)

(declare-fun d!2253159 () Bool)

(assert (= bs!1905912 (and d!2253159 b!7249075)))

(assert (=> bs!1905912 (= (dynLambda!28721 lambda!443830 lt!2584291) (matchZipper!3546 (set.insert lt!2584291 (as set.empty (Set Context!15152))) (t!384541 s1!1971)))))

(declare-fun m!7927942 () Bool)

(assert (=> bs!1905912 m!7927942))

(assert (=> bs!1905912 m!7927942))

(declare-fun m!7927944 () Bool)

(assert (=> bs!1905912 m!7927944))

(assert (=> d!2253097 d!2253159))

(declare-fun b_lambda!278287 () Bool)

(assert (= b_lambda!278261 (or b!7249075 b_lambda!278287)))

(declare-fun bs!1905913 () Bool)

(declare-fun d!2253161 () Bool)

(assert (= bs!1905913 (and d!2253161 b!7249075)))

(assert (=> bs!1905913 (= (dynLambda!28721 lambda!443830 (h!76814 (toList!11465 lt!2584165))) (matchZipper!3546 (set.insert (h!76814 (toList!11465 lt!2584165)) (as set.empty (Set Context!15152))) (t!384541 s1!1971)))))

(declare-fun m!7927946 () Bool)

(assert (=> bs!1905913 m!7927946))

(assert (=> bs!1905913 m!7927946))

(declare-fun m!7927948 () Bool)

(assert (=> bs!1905913 m!7927948))

(assert (=> b!7249489 d!2253161))

(declare-fun b_lambda!278289 () Bool)

(assert (= b_lambda!278251 (or d!2252883 b_lambda!278289)))

(declare-fun bs!1905914 () Bool)

(declare-fun d!2253163 () Bool)

(assert (= bs!1905914 (and d!2253163 d!2252883)))

(assert (=> bs!1905914 (= (dynLambda!28725 lambda!443851 (h!76812 (exprs!8076 (Context!15153 (tail!14305 lt!2584164))))) (validRegex!9540 (h!76812 (exprs!8076 (Context!15153 (tail!14305 lt!2584164))))))))

(declare-fun m!7927950 () Bool)

(assert (=> bs!1905914 m!7927950))

(assert (=> b!7249396 d!2253163))

(push 1)

(assert (not b!7249407))

(assert (not b!7249364))

(assert (not d!2253067))

(assert (not d!2253107))

(assert (not b!7249428))

(assert (not b!7249561))

(assert (not b_lambda!278245))

(assert (not b_lambda!278283))

(assert (not d!2253105))

(assert (not b!7249427))

(assert (not b!7249465))

(assert (not d!2253059))

(assert (not d!2253099))

(assert (not b!7249458))

(assert (not b!7249387))

(assert (not b!7249498))

(assert (not bm!660196))

(assert (not bs!1905907))

(assert (not bm!660194))

(assert (not d!2253097))

(assert (not b!7249389))

(assert (not b!7249487))

(assert (not bs!1905910))

(assert (not bm!660188))

(assert (not b!7249553))

(assert (not bs!1905905))

(assert (not bm!660202))

(assert (not b!7249399))

(assert (not b!7249473))

(assert (not d!2253053))

(assert (not bm!660179))

(assert (not bs!1905906))

(assert (not b!7249425))

(assert (not d!2253005))

(assert (not d!2253113))

(assert (not bm!660192))

(assert (not b!7249347))

(assert (not bs!1905912))

(assert (not d!2253103))

(assert (not d!2253033))

(assert (not bm!660180))

(assert (not d!2252995))

(assert (not b!7249429))

(assert (not b!7249523))

(assert tp_is_empty!46737)

(assert (not b!7249351))

(assert (not b!7249357))

(assert (not b!7249488))

(assert (not bs!1905909))

(assert (not b!7249558))

(assert (not d!2252999))

(assert (not d!2253051))

(assert (not b_lambda!278291))

(assert (not b_lambda!278287))

(assert (not b!7249421))

(assert (not b_lambda!278275))

(assert (not b!7249520))

(assert (not b!7249450))

(assert (not b!7249526))

(assert (not b!7249507))

(assert (not b!7249491))

(assert (not d!2253141))

(assert (not b!7249467))

(assert (not bm!660186))

(assert (not b!7249471))

(assert (not b!7249533))

(assert (not b!7249377))

(assert (not b!7249554))

(assert (not bs!1905913))

(assert (not b!7249500))

(assert (not b!7249459))

(assert (not bm!660190))

(assert (not bm!660198))

(assert (not b_lambda!278289))

(assert (not b!7249391))

(assert (not bs!1905914))

(assert (not d!2253127))

(assert (not b!7249385))

(assert (not b!7249551))

(assert (not d!2253101))

(assert (not b!7249423))

(assert (not d!2253037))

(assert (not b!7249469))

(assert (not b!7249457))

(assert (not d!2253065))

(assert (not b!7249405))

(assert (not b!7249528))

(assert (not d!2253079))

(assert (not bs!1905911))

(assert (not b!7249356))

(assert (not b!7249369))

(assert (not d!2253091))

(assert (not d!2253049))

(assert (not b!7249522))

(assert (not b_lambda!278273))

(assert (not d!2253021))

(assert (not b_lambda!278281))

(assert (not b!7249352))

(assert (not b!7249415))

(assert (not d!2253117))

(assert (not bm!660184))

(assert (not bm!660182))

(assert (not b!7249390))

(assert (not d!2253015))

(assert (not b_lambda!278271))

(assert (not d!2252997))

(assert (not b!7249501))

(assert (not b!7249524))

(assert (not bm!660200))

(assert (not b!7249398))

(assert (not b_lambda!278285))

(assert (not b!7249552))

(assert (not b!7249426))

(assert (not b!7249409))

(assert (not d!2253125))

(assert (not b!7249378))

(assert (not b!7249556))

(assert (not b_lambda!278277))

(assert (not d!2253063))

(assert (not d!2253135))

(assert (not b!7249493))

(assert (not b!7249497))

(assert (not b!7249444))

(assert (not b!7249494))

(assert (not b!7249411))

(assert (not b_lambda!278279))

(assert (not b!7249434))

(assert (not d!2252993))

(assert (not b!7249413))

(assert (not b!7249449))

(assert (not b!7249397))

(assert (not b!7249358))

(assert (not b!7249512))

(assert (not d!2253143))

(assert (not b!7249442))

(assert (not d!2253019))

(assert (not b!7249555))

(assert (not b!7249560))

(assert (not bm!660178))

(assert (not b!7249559))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

