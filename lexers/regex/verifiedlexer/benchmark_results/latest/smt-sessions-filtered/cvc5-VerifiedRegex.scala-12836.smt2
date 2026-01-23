; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!709024 () Bool)

(assert start!709024)

(declare-fun b!7268088 () Bool)

(assert (=> b!7268088 true))

(declare-fun b!7268080 () Bool)

(declare-fun e!4358470 () Bool)

(declare-fun tp!2040746 () Bool)

(assert (=> b!7268080 (= e!4358470 tp!2040746)))

(declare-fun b!7268081 () Bool)

(declare-fun res!2946515 () Bool)

(declare-fun e!4358468 () Bool)

(assert (=> b!7268081 (=> res!2946515 e!4358468)))

(declare-datatypes ((C!37834 0))(
  ( (C!37835 (val!28865 Int)) )
))
(declare-datatypes ((Regex!18780 0))(
  ( (ElementMatch!18780 (c!1352616 C!37834)) (Concat!27625 (regOne!38072 Regex!18780) (regTwo!38072 Regex!18780)) (EmptyExpr!18780) (Star!18780 (reg!19109 Regex!18780)) (EmptyLang!18780) (Union!18780 (regOne!38073 Regex!18780) (regTwo!38073 Regex!18780)) )
))
(declare-datatypes ((List!70875 0))(
  ( (Nil!70751) (Cons!70751 (h!77199 Regex!18780) (t!384945 List!70875)) )
))
(declare-datatypes ((Context!15440 0))(
  ( (Context!15441 (exprs!8220 List!70875)) )
))
(declare-fun ct1!250 () Context!15440)

(declare-datatypes ((List!70876 0))(
  ( (Nil!70752) (Cons!70752 (h!77200 C!37834) (t!384946 List!70876)) )
))
(declare-fun s!7854 () List!70876)

(declare-fun lt!2593252 () Context!15440)

(declare-fun lt!2593254 () (Set Context!15440))

(declare-fun derivationStepZipperDown!2714 (Regex!18780 Context!15440 C!37834) (Set Context!15440))

(declare-fun derivationStepZipperUp!2550 (Context!15440 C!37834) (Set Context!15440))

(assert (=> b!7268081 (= res!2946515 (not (= lt!2593254 (set.union (derivationStepZipperDown!2714 (h!77199 (exprs!8220 ct1!250)) lt!2593252 (h!77200 s!7854)) (derivationStepZipperUp!2550 lt!2593252 (h!77200 s!7854))))))))

(declare-fun b!7268082 () Bool)

(declare-fun e!4358467 () Bool)

(declare-fun tp_is_empty!47025 () Bool)

(declare-fun tp!2040747 () Bool)

(assert (=> b!7268082 (= e!4358467 (and tp_is_empty!47025 tp!2040747))))

(declare-fun b!7268083 () Bool)

(declare-fun e!4358469 () Bool)

(declare-fun lt!2593250 () List!70875)

(declare-fun lambda!447866 () Int)

(declare-fun forall!17611 (List!70875 Int) Bool)

(assert (=> b!7268083 (= e!4358469 (forall!17611 lt!2593250 lambda!447866))))

(declare-datatypes ((Unit!164178 0))(
  ( (Unit!164179) )
))
(declare-fun lt!2593247 () Unit!164178)

(declare-fun ct2!346 () Context!15440)

(declare-fun lemmaConcatPreservesForall!1537 (List!70875 List!70875 Int) Unit!164178)

(assert (=> b!7268083 (= lt!2593247 (lemmaConcatPreservesForall!1537 lt!2593250 (exprs!8220 ct2!346) lambda!447866))))

(declare-fun lt!2593244 () Unit!164178)

(assert (=> b!7268083 (= lt!2593244 (lemmaConcatPreservesForall!1537 lt!2593250 (exprs!8220 ct2!346) lambda!447866))))

(declare-fun lt!2593256 () Context!15440)

(declare-fun matchZipper!3684 ((Set Context!15440) List!70876) Bool)

(assert (=> b!7268083 (matchZipper!3684 (set.insert lt!2593256 (as set.empty (Set Context!15440))) s!7854)))

(declare-fun lt!2593260 () Unit!164178)

(assert (=> b!7268083 (= lt!2593260 (lemmaConcatPreservesForall!1537 lt!2593250 (exprs!8220 ct2!346) lambda!447866))))

(declare-fun lt!2593258 () Unit!164178)

(declare-fun lemmaPrependingNullableCtxStillMatches!17 (Context!15440 Context!15440 List!70876) Unit!164178)

(assert (=> b!7268083 (= lt!2593258 (lemmaPrependingNullableCtxStillMatches!17 lt!2593252 ct2!346 s!7854))))

(declare-fun b!7268084 () Bool)

(declare-fun e!4358466 () Bool)

(assert (=> b!7268084 (= e!4358466 e!4358468)))

(declare-fun res!2946510 () Bool)

(assert (=> b!7268084 (=> res!2946510 e!4358468)))

(declare-fun nullable!7980 (Regex!18780) Bool)

(assert (=> b!7268084 (= res!2946510 (not (nullable!7980 (h!77199 (exprs!8220 ct1!250)))))))

(assert (=> b!7268084 (= lt!2593254 (derivationStepZipperUp!2550 ct1!250 (h!77200 s!7854)))))

(assert (=> b!7268084 (= lt!2593252 (Context!15441 lt!2593250))))

(declare-fun tail!14466 (List!70875) List!70875)

(assert (=> b!7268084 (= lt!2593250 (tail!14466 (exprs!8220 ct1!250)))))

(declare-fun b!7268085 () Bool)

(declare-fun res!2946511 () Bool)

(declare-fun e!4358464 () Bool)

(assert (=> b!7268085 (=> (not res!2946511) (not e!4358464))))

(assert (=> b!7268085 (= res!2946511 (is-Cons!70752 s!7854))))

(declare-fun b!7268086 () Bool)

(declare-fun res!2946518 () Bool)

(assert (=> b!7268086 (=> res!2946518 e!4358466)))

(assert (=> b!7268086 (= res!2946518 (not (is-Cons!70751 (exprs!8220 ct1!250))))))

(declare-fun b!7268087 () Bool)

(assert (=> b!7268087 (= e!4358468 e!4358469)))

(declare-fun res!2946517 () Bool)

(assert (=> b!7268087 (=> res!2946517 e!4358469)))

(declare-fun lt!2593257 () (Set Context!15440))

(assert (=> b!7268087 (= res!2946517 (not (= lt!2593257 (set.union (derivationStepZipperDown!2714 (h!77199 (exprs!8220 ct1!250)) lt!2593256 (h!77200 s!7854)) (derivationStepZipperUp!2550 lt!2593256 (h!77200 s!7854))))))))

(declare-fun ++!16680 (List!70875 List!70875) List!70875)

(assert (=> b!7268087 (= lt!2593256 (Context!15441 (++!16680 lt!2593250 (exprs!8220 ct2!346))))))

(declare-fun lt!2593263 () Unit!164178)

(assert (=> b!7268087 (= lt!2593263 (lemmaConcatPreservesForall!1537 lt!2593250 (exprs!8220 ct2!346) lambda!447866))))

(declare-fun lt!2593246 () Unit!164178)

(assert (=> b!7268087 (= lt!2593246 (lemmaConcatPreservesForall!1537 lt!2593250 (exprs!8220 ct2!346) lambda!447866))))

(declare-fun b!7268089 () Bool)

(declare-fun res!2946513 () Bool)

(assert (=> b!7268089 (=> (not res!2946513) (not e!4358464))))

(declare-fun nullableContext!270 (Context!15440) Bool)

(assert (=> b!7268089 (= res!2946513 (nullableContext!270 ct1!250))))

(declare-fun b!7268090 () Bool)

(declare-fun res!2946516 () Bool)

(assert (=> b!7268090 (=> res!2946516 e!4358466)))

(declare-fun isEmpty!40679 (List!70875) Bool)

(assert (=> b!7268090 (= res!2946516 (isEmpty!40679 (exprs!8220 ct1!250)))))

(declare-fun b!7268091 () Bool)

(declare-fun e!4358465 () Bool)

(declare-fun tp!2040745 () Bool)

(assert (=> b!7268091 (= e!4358465 tp!2040745)))

(declare-fun res!2946512 () Bool)

(assert (=> start!709024 (=> (not res!2946512) (not e!4358464))))

(assert (=> start!709024 (= res!2946512 (matchZipper!3684 (set.insert ct2!346 (as set.empty (Set Context!15440))) s!7854))))

(assert (=> start!709024 e!4358464))

(declare-fun inv!89961 (Context!15440) Bool)

(assert (=> start!709024 (and (inv!89961 ct2!346) e!4358465)))

(assert (=> start!709024 e!4358467))

(assert (=> start!709024 (and (inv!89961 ct1!250) e!4358470)))

(assert (=> b!7268088 (= e!4358464 (not e!4358466))))

(declare-fun res!2946514 () Bool)

(assert (=> b!7268088 (=> res!2946514 e!4358466)))

(declare-fun lt!2593253 () (Set Context!15440))

(declare-fun derivationStepZipper!3520 ((Set Context!15440) C!37834) (Set Context!15440))

(assert (=> b!7268088 (= res!2946514 (not (= lt!2593257 (derivationStepZipper!3520 lt!2593253 (h!77200 s!7854)))))))

(declare-fun lt!2593245 () Unit!164178)

(assert (=> b!7268088 (= lt!2593245 (lemmaConcatPreservesForall!1537 (exprs!8220 ct1!250) (exprs!8220 ct2!346) lambda!447866))))

(declare-fun lt!2593249 () Context!15440)

(declare-fun lambda!447867 () Int)

(declare-fun flatMap!2893 ((Set Context!15440) Int) (Set Context!15440))

(assert (=> b!7268088 (= (flatMap!2893 lt!2593253 lambda!447867) (derivationStepZipperUp!2550 lt!2593249 (h!77200 s!7854)))))

(declare-fun lt!2593261 () Unit!164178)

(declare-fun lemmaFlatMapOnSingletonSet!2293 ((Set Context!15440) Context!15440 Int) Unit!164178)

(assert (=> b!7268088 (= lt!2593261 (lemmaFlatMapOnSingletonSet!2293 lt!2593253 lt!2593249 lambda!447867))))

(assert (=> b!7268088 (= lt!2593253 (set.insert lt!2593249 (as set.empty (Set Context!15440))))))

(declare-fun lt!2593251 () Unit!164178)

(assert (=> b!7268088 (= lt!2593251 (lemmaConcatPreservesForall!1537 (exprs!8220 ct1!250) (exprs!8220 ct2!346) lambda!447866))))

(declare-fun lt!2593255 () Unit!164178)

(assert (=> b!7268088 (= lt!2593255 (lemmaConcatPreservesForall!1537 (exprs!8220 ct1!250) (exprs!8220 ct2!346) lambda!447866))))

(declare-fun lt!2593259 () (Set Context!15440))

(assert (=> b!7268088 (= (flatMap!2893 lt!2593259 lambda!447867) (derivationStepZipperUp!2550 ct1!250 (h!77200 s!7854)))))

(declare-fun lt!2593248 () Unit!164178)

(assert (=> b!7268088 (= lt!2593248 (lemmaFlatMapOnSingletonSet!2293 lt!2593259 ct1!250 lambda!447867))))

(assert (=> b!7268088 (= lt!2593259 (set.insert ct1!250 (as set.empty (Set Context!15440))))))

(assert (=> b!7268088 (= lt!2593257 (derivationStepZipperUp!2550 lt!2593249 (h!77200 s!7854)))))

(assert (=> b!7268088 (= lt!2593249 (Context!15441 (++!16680 (exprs!8220 ct1!250) (exprs!8220 ct2!346))))))

(declare-fun lt!2593262 () Unit!164178)

(assert (=> b!7268088 (= lt!2593262 (lemmaConcatPreservesForall!1537 (exprs!8220 ct1!250) (exprs!8220 ct2!346) lambda!447866))))

(assert (= (and start!709024 res!2946512) b!7268089))

(assert (= (and b!7268089 res!2946513) b!7268085))

(assert (= (and b!7268085 res!2946511) b!7268088))

(assert (= (and b!7268088 (not res!2946514)) b!7268086))

(assert (= (and b!7268086 (not res!2946518)) b!7268090))

(assert (= (and b!7268090 (not res!2946516)) b!7268084))

(assert (= (and b!7268084 (not res!2946510)) b!7268081))

(assert (= (and b!7268081 (not res!2946515)) b!7268087))

(assert (= (and b!7268087 (not res!2946517)) b!7268083))

(assert (= start!709024 b!7268091))

(assert (= (and start!709024 (is-Cons!70752 s!7854)) b!7268082))

(assert (= start!709024 b!7268080))

(declare-fun m!7953030 () Bool)

(assert (=> b!7268088 m!7953030))

(declare-fun m!7953032 () Bool)

(assert (=> b!7268088 m!7953032))

(declare-fun m!7953034 () Bool)

(assert (=> b!7268088 m!7953034))

(declare-fun m!7953036 () Bool)

(assert (=> b!7268088 m!7953036))

(declare-fun m!7953038 () Bool)

(assert (=> b!7268088 m!7953038))

(declare-fun m!7953040 () Bool)

(assert (=> b!7268088 m!7953040))

(assert (=> b!7268088 m!7953032))

(declare-fun m!7953042 () Bool)

(assert (=> b!7268088 m!7953042))

(declare-fun m!7953044 () Bool)

(assert (=> b!7268088 m!7953044))

(declare-fun m!7953046 () Bool)

(assert (=> b!7268088 m!7953046))

(declare-fun m!7953048 () Bool)

(assert (=> b!7268088 m!7953048))

(assert (=> b!7268088 m!7953032))

(assert (=> b!7268088 m!7953032))

(declare-fun m!7953050 () Bool)

(assert (=> b!7268088 m!7953050))

(declare-fun m!7953052 () Bool)

(assert (=> b!7268084 m!7953052))

(assert (=> b!7268084 m!7953036))

(declare-fun m!7953054 () Bool)

(assert (=> b!7268084 m!7953054))

(declare-fun m!7953056 () Bool)

(assert (=> start!709024 m!7953056))

(assert (=> start!709024 m!7953056))

(declare-fun m!7953058 () Bool)

(assert (=> start!709024 m!7953058))

(declare-fun m!7953060 () Bool)

(assert (=> start!709024 m!7953060))

(declare-fun m!7953062 () Bool)

(assert (=> start!709024 m!7953062))

(declare-fun m!7953064 () Bool)

(assert (=> b!7268087 m!7953064))

(declare-fun m!7953066 () Bool)

(assert (=> b!7268087 m!7953066))

(declare-fun m!7953068 () Bool)

(assert (=> b!7268087 m!7953068))

(declare-fun m!7953070 () Bool)

(assert (=> b!7268087 m!7953070))

(assert (=> b!7268087 m!7953064))

(declare-fun m!7953072 () Bool)

(assert (=> b!7268090 m!7953072))

(declare-fun m!7953074 () Bool)

(assert (=> b!7268081 m!7953074))

(declare-fun m!7953076 () Bool)

(assert (=> b!7268081 m!7953076))

(declare-fun m!7953078 () Bool)

(assert (=> b!7268089 m!7953078))

(declare-fun m!7953080 () Bool)

(assert (=> b!7268083 m!7953080))

(declare-fun m!7953082 () Bool)

(assert (=> b!7268083 m!7953082))

(declare-fun m!7953084 () Bool)

(assert (=> b!7268083 m!7953084))

(declare-fun m!7953086 () Bool)

(assert (=> b!7268083 m!7953086))

(assert (=> b!7268083 m!7953064))

(assert (=> b!7268083 m!7953080))

(assert (=> b!7268083 m!7953064))

(assert (=> b!7268083 m!7953064))

(push 1)

(assert (not b!7268082))

(assert (not b!7268091))

(assert (not b!7268090))

(assert tp_is_empty!47025)

(assert (not b!7268080))

(assert (not b!7268081))

(assert (not b!7268087))

(assert (not b!7268089))

(assert (not b!7268084))

(assert (not start!709024))

(assert (not b!7268083))

(assert (not b!7268088))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2261513 () Bool)

(declare-fun nullableFct!3142 (Regex!18780) Bool)

(assert (=> d!2261513 (= (nullable!7980 (h!77199 (exprs!8220 ct1!250))) (nullableFct!3142 (h!77199 (exprs!8220 ct1!250))))))

(declare-fun bs!1910575 () Bool)

(assert (= bs!1910575 d!2261513))

(declare-fun m!7953146 () Bool)

(assert (=> bs!1910575 m!7953146))

(assert (=> b!7268084 d!2261513))

(declare-fun d!2261515 () Bool)

(declare-fun c!1352626 () Bool)

(declare-fun e!4358498 () Bool)

(assert (=> d!2261515 (= c!1352626 e!4358498)))

(declare-fun res!2946548 () Bool)

(assert (=> d!2261515 (=> (not res!2946548) (not e!4358498))))

(assert (=> d!2261515 (= res!2946548 (is-Cons!70751 (exprs!8220 ct1!250)))))

(declare-fun e!4358499 () (Set Context!15440))

(assert (=> d!2261515 (= (derivationStepZipperUp!2550 ct1!250 (h!77200 s!7854)) e!4358499)))

(declare-fun b!7268142 () Bool)

(declare-fun e!4358500 () (Set Context!15440))

(assert (=> b!7268142 (= e!4358499 e!4358500)))

(declare-fun c!1352627 () Bool)

(assert (=> b!7268142 (= c!1352627 (is-Cons!70751 (exprs!8220 ct1!250)))))

(declare-fun b!7268143 () Bool)

(declare-fun call!662624 () (Set Context!15440))

(assert (=> b!7268143 (= e!4358500 call!662624)))

(declare-fun b!7268144 () Bool)

(assert (=> b!7268144 (= e!4358499 (set.union call!662624 (derivationStepZipperUp!2550 (Context!15441 (t!384945 (exprs!8220 ct1!250))) (h!77200 s!7854))))))

(declare-fun bm!662619 () Bool)

(assert (=> bm!662619 (= call!662624 (derivationStepZipperDown!2714 (h!77199 (exprs!8220 ct1!250)) (Context!15441 (t!384945 (exprs!8220 ct1!250))) (h!77200 s!7854)))))

(declare-fun b!7268145 () Bool)

(assert (=> b!7268145 (= e!4358498 (nullable!7980 (h!77199 (exprs!8220 ct1!250))))))

(declare-fun b!7268146 () Bool)

(assert (=> b!7268146 (= e!4358500 (as set.empty (Set Context!15440)))))

(assert (= (and d!2261515 res!2946548) b!7268145))

(assert (= (and d!2261515 c!1352626) b!7268144))

(assert (= (and d!2261515 (not c!1352626)) b!7268142))

(assert (= (and b!7268142 c!1352627) b!7268143))

(assert (= (and b!7268142 (not c!1352627)) b!7268146))

(assert (= (or b!7268144 b!7268143) bm!662619))

(declare-fun m!7953148 () Bool)

(assert (=> b!7268144 m!7953148))

(declare-fun m!7953150 () Bool)

(assert (=> bm!662619 m!7953150))

(assert (=> b!7268145 m!7953052))

(assert (=> b!7268084 d!2261515))

(declare-fun d!2261517 () Bool)

(assert (=> d!2261517 (= (tail!14466 (exprs!8220 ct1!250)) (t!384945 (exprs!8220 ct1!250)))))

(assert (=> b!7268084 d!2261517))

(declare-fun bs!1910576 () Bool)

(declare-fun d!2261521 () Bool)

(assert (= bs!1910576 (and d!2261521 b!7268088)))

(declare-fun lambda!447896 () Int)

(assert (=> bs!1910576 (not (= lambda!447896 lambda!447866))))

(assert (=> d!2261521 (= (nullableContext!270 ct1!250) (forall!17611 (exprs!8220 ct1!250) lambda!447896))))

(declare-fun bs!1910577 () Bool)

(assert (= bs!1910577 d!2261521))

(declare-fun m!7953152 () Bool)

(assert (=> bs!1910577 m!7953152))

(assert (=> b!7268089 d!2261521))

(declare-fun d!2261523 () Bool)

(declare-fun c!1352631 () Bool)

(declare-fun isEmpty!40681 (List!70876) Bool)

(assert (=> d!2261523 (= c!1352631 (isEmpty!40681 s!7854))))

(declare-fun e!4358503 () Bool)

(assert (=> d!2261523 (= (matchZipper!3684 (set.insert lt!2593256 (as set.empty (Set Context!15440))) s!7854) e!4358503)))

(declare-fun b!7268151 () Bool)

(declare-fun nullableZipper!2989 ((Set Context!15440)) Bool)

(assert (=> b!7268151 (= e!4358503 (nullableZipper!2989 (set.insert lt!2593256 (as set.empty (Set Context!15440)))))))

(declare-fun b!7268152 () Bool)

(declare-fun head!14987 (List!70876) C!37834)

(declare-fun tail!14468 (List!70876) List!70876)

(assert (=> b!7268152 (= e!4358503 (matchZipper!3684 (derivationStepZipper!3520 (set.insert lt!2593256 (as set.empty (Set Context!15440))) (head!14987 s!7854)) (tail!14468 s!7854)))))

(assert (= (and d!2261523 c!1352631) b!7268151))

(assert (= (and d!2261523 (not c!1352631)) b!7268152))

(declare-fun m!7953156 () Bool)

(assert (=> d!2261523 m!7953156))

(assert (=> b!7268151 m!7953080))

(declare-fun m!7953158 () Bool)

(assert (=> b!7268151 m!7953158))

(declare-fun m!7953160 () Bool)

(assert (=> b!7268152 m!7953160))

(assert (=> b!7268152 m!7953080))

(assert (=> b!7268152 m!7953160))

(declare-fun m!7953162 () Bool)

(assert (=> b!7268152 m!7953162))

(declare-fun m!7953164 () Bool)

(assert (=> b!7268152 m!7953164))

(assert (=> b!7268152 m!7953162))

(assert (=> b!7268152 m!7953164))

(declare-fun m!7953166 () Bool)

(assert (=> b!7268152 m!7953166))

(assert (=> b!7268083 d!2261523))

(declare-fun d!2261527 () Bool)

(assert (=> d!2261527 (forall!17611 (++!16680 lt!2593250 (exprs!8220 ct2!346)) lambda!447866)))

(declare-fun lt!2593326 () Unit!164178)

(declare-fun choose!56349 (List!70875 List!70875 Int) Unit!164178)

(assert (=> d!2261527 (= lt!2593326 (choose!56349 lt!2593250 (exprs!8220 ct2!346) lambda!447866))))

(assert (=> d!2261527 (forall!17611 lt!2593250 lambda!447866)))

(assert (=> d!2261527 (= (lemmaConcatPreservesForall!1537 lt!2593250 (exprs!8220 ct2!346) lambda!447866) lt!2593326)))

(declare-fun bs!1910579 () Bool)

(assert (= bs!1910579 d!2261527))

(assert (=> bs!1910579 m!7953070))

(assert (=> bs!1910579 m!7953070))

(declare-fun m!7953168 () Bool)

(assert (=> bs!1910579 m!7953168))

(declare-fun m!7953170 () Bool)

(assert (=> bs!1910579 m!7953170))

(assert (=> bs!1910579 m!7953086))

(assert (=> b!7268083 d!2261527))

(declare-fun d!2261529 () Bool)

(declare-fun res!2946555 () Bool)

(declare-fun e!4358514 () Bool)

(assert (=> d!2261529 (=> res!2946555 e!4358514)))

(assert (=> d!2261529 (= res!2946555 (is-Nil!70751 lt!2593250))))

(assert (=> d!2261529 (= (forall!17611 lt!2593250 lambda!447866) e!4358514)))

(declare-fun b!7268167 () Bool)

(declare-fun e!4358515 () Bool)

(assert (=> b!7268167 (= e!4358514 e!4358515)))

(declare-fun res!2946556 () Bool)

(assert (=> b!7268167 (=> (not res!2946556) (not e!4358515))))

(declare-fun dynLambda!28904 (Int Regex!18780) Bool)

(assert (=> b!7268167 (= res!2946556 (dynLambda!28904 lambda!447866 (h!77199 lt!2593250)))))

(declare-fun b!7268168 () Bool)

(assert (=> b!7268168 (= e!4358515 (forall!17611 (t!384945 lt!2593250) lambda!447866))))

(assert (= (and d!2261529 (not res!2946555)) b!7268167))

(assert (= (and b!7268167 res!2946556) b!7268168))

(declare-fun b_lambda!279989 () Bool)

(assert (=> (not b_lambda!279989) (not b!7268167)))

(declare-fun m!7953172 () Bool)

(assert (=> b!7268167 m!7953172))

(declare-fun m!7953174 () Bool)

(assert (=> b!7268168 m!7953174))

(assert (=> b!7268083 d!2261529))

(declare-fun bs!1910580 () Bool)

(declare-fun d!2261531 () Bool)

(assert (= bs!1910580 (and d!2261531 b!7268088)))

(declare-fun lambda!447899 () Int)

(assert (=> bs!1910580 (= lambda!447899 lambda!447866)))

(declare-fun bs!1910581 () Bool)

(assert (= bs!1910581 (and d!2261531 d!2261521)))

(assert (=> bs!1910581 (not (= lambda!447899 lambda!447896))))

(assert (=> d!2261531 (matchZipper!3684 (set.insert (Context!15441 (++!16680 (exprs!8220 lt!2593252) (exprs!8220 ct2!346))) (as set.empty (Set Context!15440))) s!7854)))

(declare-fun lt!2593332 () Unit!164178)

(assert (=> d!2261531 (= lt!2593332 (lemmaConcatPreservesForall!1537 (exprs!8220 lt!2593252) (exprs!8220 ct2!346) lambda!447899))))

(declare-fun lt!2593331 () Unit!164178)

(declare-fun choose!56350 (Context!15440 Context!15440 List!70876) Unit!164178)

(assert (=> d!2261531 (= lt!2593331 (choose!56350 lt!2593252 ct2!346 s!7854))))

(assert (=> d!2261531 (matchZipper!3684 (set.insert ct2!346 (as set.empty (Set Context!15440))) s!7854)))

(assert (=> d!2261531 (= (lemmaPrependingNullableCtxStillMatches!17 lt!2593252 ct2!346 s!7854) lt!2593331)))

(declare-fun bs!1910582 () Bool)

(assert (= bs!1910582 d!2261531))

(declare-fun m!7953180 () Bool)

(assert (=> bs!1910582 m!7953180))

(assert (=> bs!1910582 m!7953056))

(declare-fun m!7953182 () Bool)

(assert (=> bs!1910582 m!7953182))

(declare-fun m!7953184 () Bool)

(assert (=> bs!1910582 m!7953184))

(assert (=> bs!1910582 m!7953056))

(assert (=> bs!1910582 m!7953058))

(assert (=> bs!1910582 m!7953184))

(declare-fun m!7953186 () Bool)

(assert (=> bs!1910582 m!7953186))

(declare-fun m!7953188 () Bool)

(assert (=> bs!1910582 m!7953188))

(assert (=> b!7268083 d!2261531))

(declare-fun d!2261537 () Bool)

(declare-fun choose!56351 ((Set Context!15440) Int) (Set Context!15440))

(assert (=> d!2261537 (= (flatMap!2893 lt!2593259 lambda!447867) (choose!56351 lt!2593259 lambda!447867))))

(declare-fun bs!1910583 () Bool)

(assert (= bs!1910583 d!2261537))

(declare-fun m!7953190 () Bool)

(assert (=> bs!1910583 m!7953190))

(assert (=> b!7268088 d!2261537))

(assert (=> b!7268088 d!2261515))

(declare-fun d!2261539 () Bool)

(declare-fun dynLambda!28905 (Int Context!15440) (Set Context!15440))

(assert (=> d!2261539 (= (flatMap!2893 lt!2593259 lambda!447867) (dynLambda!28905 lambda!447867 ct1!250))))

(declare-fun lt!2593338 () Unit!164178)

(declare-fun choose!56352 ((Set Context!15440) Context!15440 Int) Unit!164178)

(assert (=> d!2261539 (= lt!2593338 (choose!56352 lt!2593259 ct1!250 lambda!447867))))

(assert (=> d!2261539 (= lt!2593259 (set.insert ct1!250 (as set.empty (Set Context!15440))))))

(assert (=> d!2261539 (= (lemmaFlatMapOnSingletonSet!2293 lt!2593259 ct1!250 lambda!447867) lt!2593338)))

(declare-fun b_lambda!279991 () Bool)

(assert (=> (not b_lambda!279991) (not d!2261539)))

(declare-fun bs!1910585 () Bool)

(assert (= bs!1910585 d!2261539))

(assert (=> bs!1910585 m!7953046))

(declare-fun m!7953196 () Bool)

(assert (=> bs!1910585 m!7953196))

(declare-fun m!7953198 () Bool)

(assert (=> bs!1910585 m!7953198))

(assert (=> bs!1910585 m!7953050))

(assert (=> b!7268088 d!2261539))

(declare-fun b!7268190 () Bool)

(declare-fun res!2946568 () Bool)

(declare-fun e!4358530 () Bool)

(assert (=> b!7268190 (=> (not res!2946568) (not e!4358530))))

(declare-fun lt!2593341 () List!70875)

(declare-fun size!41809 (List!70875) Int)

(assert (=> b!7268190 (= res!2946568 (= (size!41809 lt!2593341) (+ (size!41809 (exprs!8220 ct1!250)) (size!41809 (exprs!8220 ct2!346)))))))

(declare-fun b!7268188 () Bool)

(declare-fun e!4358529 () List!70875)

(assert (=> b!7268188 (= e!4358529 (exprs!8220 ct2!346))))

(declare-fun b!7268191 () Bool)

(assert (=> b!7268191 (= e!4358530 (or (not (= (exprs!8220 ct2!346) Nil!70751)) (= lt!2593341 (exprs!8220 ct1!250))))))

(declare-fun d!2261543 () Bool)

(assert (=> d!2261543 e!4358530))

(declare-fun res!2946569 () Bool)

(assert (=> d!2261543 (=> (not res!2946569) (not e!4358530))))

(declare-fun content!14761 (List!70875) (Set Regex!18780))

(assert (=> d!2261543 (= res!2946569 (= (content!14761 lt!2593341) (set.union (content!14761 (exprs!8220 ct1!250)) (content!14761 (exprs!8220 ct2!346)))))))

(assert (=> d!2261543 (= lt!2593341 e!4358529)))

(declare-fun c!1352640 () Bool)

(assert (=> d!2261543 (= c!1352640 (is-Nil!70751 (exprs!8220 ct1!250)))))

(assert (=> d!2261543 (= (++!16680 (exprs!8220 ct1!250) (exprs!8220 ct2!346)) lt!2593341)))

(declare-fun b!7268189 () Bool)

(assert (=> b!7268189 (= e!4358529 (Cons!70751 (h!77199 (exprs!8220 ct1!250)) (++!16680 (t!384945 (exprs!8220 ct1!250)) (exprs!8220 ct2!346))))))

(assert (= (and d!2261543 c!1352640) b!7268188))

(assert (= (and d!2261543 (not c!1352640)) b!7268189))

(assert (= (and d!2261543 res!2946569) b!7268190))

(assert (= (and b!7268190 res!2946568) b!7268191))

(declare-fun m!7953204 () Bool)

(assert (=> b!7268190 m!7953204))

(declare-fun m!7953206 () Bool)

(assert (=> b!7268190 m!7953206))

(declare-fun m!7953208 () Bool)

(assert (=> b!7268190 m!7953208))

(declare-fun m!7953210 () Bool)

(assert (=> d!2261543 m!7953210))

(declare-fun m!7953212 () Bool)

(assert (=> d!2261543 m!7953212))

(declare-fun m!7953214 () Bool)

(assert (=> d!2261543 m!7953214))

(declare-fun m!7953216 () Bool)

(assert (=> b!7268189 m!7953216))

(assert (=> b!7268088 d!2261543))

(declare-fun bs!1910586 () Bool)

(declare-fun d!2261547 () Bool)

(assert (= bs!1910586 (and d!2261547 b!7268088)))

(declare-fun lambda!447902 () Int)

(assert (=> bs!1910586 (= lambda!447902 lambda!447867)))

(assert (=> d!2261547 true))

(assert (=> d!2261547 (= (derivationStepZipper!3520 lt!2593253 (h!77200 s!7854)) (flatMap!2893 lt!2593253 lambda!447902))))

(declare-fun bs!1910587 () Bool)

(assert (= bs!1910587 d!2261547))

(declare-fun m!7953218 () Bool)

(assert (=> bs!1910587 m!7953218))

(assert (=> b!7268088 d!2261547))

(declare-fun d!2261549 () Bool)

(assert (=> d!2261549 (forall!17611 (++!16680 (exprs!8220 ct1!250) (exprs!8220 ct2!346)) lambda!447866)))

(declare-fun lt!2593342 () Unit!164178)

(assert (=> d!2261549 (= lt!2593342 (choose!56349 (exprs!8220 ct1!250) (exprs!8220 ct2!346) lambda!447866))))

(assert (=> d!2261549 (forall!17611 (exprs!8220 ct1!250) lambda!447866)))

(assert (=> d!2261549 (= (lemmaConcatPreservesForall!1537 (exprs!8220 ct1!250) (exprs!8220 ct2!346) lambda!447866) lt!2593342)))

(declare-fun bs!1910588 () Bool)

(assert (= bs!1910588 d!2261549))

(assert (=> bs!1910588 m!7953042))

(assert (=> bs!1910588 m!7953042))

(declare-fun m!7953220 () Bool)

(assert (=> bs!1910588 m!7953220))

(declare-fun m!7953222 () Bool)

(assert (=> bs!1910588 m!7953222))

(declare-fun m!7953224 () Bool)

(assert (=> bs!1910588 m!7953224))

(assert (=> b!7268088 d!2261549))

(declare-fun d!2261551 () Bool)

(assert (=> d!2261551 (= (flatMap!2893 lt!2593253 lambda!447867) (dynLambda!28905 lambda!447867 lt!2593249))))

(declare-fun lt!2593343 () Unit!164178)

(assert (=> d!2261551 (= lt!2593343 (choose!56352 lt!2593253 lt!2593249 lambda!447867))))

(assert (=> d!2261551 (= lt!2593253 (set.insert lt!2593249 (as set.empty (Set Context!15440))))))

(assert (=> d!2261551 (= (lemmaFlatMapOnSingletonSet!2293 lt!2593253 lt!2593249 lambda!447867) lt!2593343)))

(declare-fun b_lambda!279995 () Bool)

(assert (=> (not b_lambda!279995) (not d!2261551)))

(declare-fun bs!1910589 () Bool)

(assert (= bs!1910589 d!2261551))

(assert (=> bs!1910589 m!7953044))

(declare-fun m!7953226 () Bool)

(assert (=> bs!1910589 m!7953226))

(declare-fun m!7953228 () Bool)

(assert (=> bs!1910589 m!7953228))

(assert (=> bs!1910589 m!7953040))

(assert (=> b!7268088 d!2261551))

(declare-fun d!2261553 () Bool)

(assert (=> d!2261553 (= (flatMap!2893 lt!2593253 lambda!447867) (choose!56351 lt!2593253 lambda!447867))))

(declare-fun bs!1910590 () Bool)

(assert (= bs!1910590 d!2261553))

(declare-fun m!7953230 () Bool)

(assert (=> bs!1910590 m!7953230))

(assert (=> b!7268088 d!2261553))

(declare-fun d!2261555 () Bool)

(declare-fun c!1352643 () Bool)

(declare-fun e!4358531 () Bool)

(assert (=> d!2261555 (= c!1352643 e!4358531)))

(declare-fun res!2946570 () Bool)

(assert (=> d!2261555 (=> (not res!2946570) (not e!4358531))))

(assert (=> d!2261555 (= res!2946570 (is-Cons!70751 (exprs!8220 lt!2593249)))))

(declare-fun e!4358532 () (Set Context!15440))

(assert (=> d!2261555 (= (derivationStepZipperUp!2550 lt!2593249 (h!77200 s!7854)) e!4358532)))

(declare-fun b!7268194 () Bool)

(declare-fun e!4358533 () (Set Context!15440))

(assert (=> b!7268194 (= e!4358532 e!4358533)))

(declare-fun c!1352644 () Bool)

(assert (=> b!7268194 (= c!1352644 (is-Cons!70751 (exprs!8220 lt!2593249)))))

(declare-fun b!7268195 () Bool)

(declare-fun call!662628 () (Set Context!15440))

(assert (=> b!7268195 (= e!4358533 call!662628)))

(declare-fun b!7268196 () Bool)

(assert (=> b!7268196 (= e!4358532 (set.union call!662628 (derivationStepZipperUp!2550 (Context!15441 (t!384945 (exprs!8220 lt!2593249))) (h!77200 s!7854))))))

(declare-fun bm!662623 () Bool)

(assert (=> bm!662623 (= call!662628 (derivationStepZipperDown!2714 (h!77199 (exprs!8220 lt!2593249)) (Context!15441 (t!384945 (exprs!8220 lt!2593249))) (h!77200 s!7854)))))

(declare-fun b!7268197 () Bool)

(assert (=> b!7268197 (= e!4358531 (nullable!7980 (h!77199 (exprs!8220 lt!2593249))))))

(declare-fun b!7268198 () Bool)

(assert (=> b!7268198 (= e!4358533 (as set.empty (Set Context!15440)))))

(assert (= (and d!2261555 res!2946570) b!7268197))

(assert (= (and d!2261555 c!1352643) b!7268196))

(assert (= (and d!2261555 (not c!1352643)) b!7268194))

(assert (= (and b!7268194 c!1352644) b!7268195))

(assert (= (and b!7268194 (not c!1352644)) b!7268198))

(assert (= (or b!7268196 b!7268195) bm!662623))

(declare-fun m!7953232 () Bool)

(assert (=> b!7268196 m!7953232))

(declare-fun m!7953234 () Bool)

(assert (=> bm!662623 m!7953234))

(declare-fun m!7953236 () Bool)

(assert (=> b!7268197 m!7953236))

(assert (=> b!7268088 d!2261555))

(declare-fun d!2261557 () Bool)

(declare-fun c!1352645 () Bool)

(declare-fun e!4358534 () Bool)

(assert (=> d!2261557 (= c!1352645 e!4358534)))

(declare-fun res!2946571 () Bool)

(assert (=> d!2261557 (=> (not res!2946571) (not e!4358534))))

(assert (=> d!2261557 (= res!2946571 (is-Cons!70751 (exprs!8220 lt!2593256)))))

(declare-fun e!4358535 () (Set Context!15440))

(assert (=> d!2261557 (= (derivationStepZipperUp!2550 lt!2593256 (h!77200 s!7854)) e!4358535)))

(declare-fun b!7268199 () Bool)

(declare-fun e!4358536 () (Set Context!15440))

(assert (=> b!7268199 (= e!4358535 e!4358536)))

(declare-fun c!1352646 () Bool)

(assert (=> b!7268199 (= c!1352646 (is-Cons!70751 (exprs!8220 lt!2593256)))))

(declare-fun b!7268200 () Bool)

(declare-fun call!662629 () (Set Context!15440))

(assert (=> b!7268200 (= e!4358536 call!662629)))

(declare-fun b!7268201 () Bool)

(assert (=> b!7268201 (= e!4358535 (set.union call!662629 (derivationStepZipperUp!2550 (Context!15441 (t!384945 (exprs!8220 lt!2593256))) (h!77200 s!7854))))))

(declare-fun bm!662624 () Bool)

(assert (=> bm!662624 (= call!662629 (derivationStepZipperDown!2714 (h!77199 (exprs!8220 lt!2593256)) (Context!15441 (t!384945 (exprs!8220 lt!2593256))) (h!77200 s!7854)))))

(declare-fun b!7268202 () Bool)

(assert (=> b!7268202 (= e!4358534 (nullable!7980 (h!77199 (exprs!8220 lt!2593256))))))

(declare-fun b!7268203 () Bool)

(assert (=> b!7268203 (= e!4358536 (as set.empty (Set Context!15440)))))

(assert (= (and d!2261557 res!2946571) b!7268202))

(assert (= (and d!2261557 c!1352645) b!7268201))

(assert (= (and d!2261557 (not c!1352645)) b!7268199))

(assert (= (and b!7268199 c!1352646) b!7268200))

(assert (= (and b!7268199 (not c!1352646)) b!7268203))

(assert (= (or b!7268201 b!7268200) bm!662624))

(declare-fun m!7953238 () Bool)

(assert (=> b!7268201 m!7953238))

(declare-fun m!7953240 () Bool)

(assert (=> bm!662624 m!7953240))

(declare-fun m!7953242 () Bool)

(assert (=> b!7268202 m!7953242))

(assert (=> b!7268087 d!2261557))

(declare-fun b!7268206 () Bool)

(declare-fun res!2946572 () Bool)

(declare-fun e!4358538 () Bool)

(assert (=> b!7268206 (=> (not res!2946572) (not e!4358538))))

(declare-fun lt!2593344 () List!70875)

(assert (=> b!7268206 (= res!2946572 (= (size!41809 lt!2593344) (+ (size!41809 lt!2593250) (size!41809 (exprs!8220 ct2!346)))))))

(declare-fun b!7268204 () Bool)

(declare-fun e!4358537 () List!70875)

(assert (=> b!7268204 (= e!4358537 (exprs!8220 ct2!346))))

(declare-fun b!7268207 () Bool)

(assert (=> b!7268207 (= e!4358538 (or (not (= (exprs!8220 ct2!346) Nil!70751)) (= lt!2593344 lt!2593250)))))

(declare-fun d!2261559 () Bool)

(assert (=> d!2261559 e!4358538))

(declare-fun res!2946573 () Bool)

(assert (=> d!2261559 (=> (not res!2946573) (not e!4358538))))

(assert (=> d!2261559 (= res!2946573 (= (content!14761 lt!2593344) (set.union (content!14761 lt!2593250) (content!14761 (exprs!8220 ct2!346)))))))

(assert (=> d!2261559 (= lt!2593344 e!4358537)))

(declare-fun c!1352647 () Bool)

(assert (=> d!2261559 (= c!1352647 (is-Nil!70751 lt!2593250))))

(assert (=> d!2261559 (= (++!16680 lt!2593250 (exprs!8220 ct2!346)) lt!2593344)))

(declare-fun b!7268205 () Bool)

(assert (=> b!7268205 (= e!4358537 (Cons!70751 (h!77199 lt!2593250) (++!16680 (t!384945 lt!2593250) (exprs!8220 ct2!346))))))

(assert (= (and d!2261559 c!1352647) b!7268204))

(assert (= (and d!2261559 (not c!1352647)) b!7268205))

(assert (= (and d!2261559 res!2946573) b!7268206))

(assert (= (and b!7268206 res!2946572) b!7268207))

(declare-fun m!7953244 () Bool)

(assert (=> b!7268206 m!7953244))

(declare-fun m!7953246 () Bool)

(assert (=> b!7268206 m!7953246))

(assert (=> b!7268206 m!7953208))

(declare-fun m!7953248 () Bool)

(assert (=> d!2261559 m!7953248))

(declare-fun m!7953250 () Bool)

(assert (=> d!2261559 m!7953250))

(assert (=> d!2261559 m!7953214))

(declare-fun m!7953252 () Bool)

(assert (=> b!7268205 m!7953252))

(assert (=> b!7268087 d!2261559))

(declare-fun bm!662637 () Bool)

(declare-fun call!662644 () (Set Context!15440))

(declare-fun call!662643 () (Set Context!15440))

(assert (=> bm!662637 (= call!662644 call!662643)))

(declare-fun b!7268230 () Bool)

(declare-fun e!4358553 () (Set Context!15440))

(declare-fun call!662645 () (Set Context!15440))

(assert (=> b!7268230 (= e!4358553 call!662645)))

(declare-fun b!7268231 () Bool)

(declare-fun c!1352661 () Bool)

(declare-fun e!4358551 () Bool)

(assert (=> b!7268231 (= c!1352661 e!4358551)))

(declare-fun res!2946576 () Bool)

(assert (=> b!7268231 (=> (not res!2946576) (not e!4358551))))

(assert (=> b!7268231 (= res!2946576 (is-Concat!27625 (h!77199 (exprs!8220 ct1!250))))))

(declare-fun e!4358554 () (Set Context!15440))

(declare-fun e!4358552 () (Set Context!15440))

(assert (=> b!7268231 (= e!4358554 e!4358552)))

(declare-fun bm!662638 () Bool)

(declare-fun c!1352659 () Bool)

(declare-fun call!662642 () List!70875)

(declare-fun $colon$colon!2957 (List!70875 Regex!18780) List!70875)

(assert (=> bm!662638 (= call!662642 ($colon$colon!2957 (exprs!8220 lt!2593256) (ite (or c!1352661 c!1352659) (regTwo!38072 (h!77199 (exprs!8220 ct1!250))) (h!77199 (exprs!8220 ct1!250)))))))

(declare-fun bm!662639 () Bool)

(declare-fun call!662647 () List!70875)

(assert (=> bm!662639 (= call!662647 call!662642)))

(declare-fun b!7268232 () Bool)

(declare-fun call!662646 () (Set Context!15440))

(assert (=> b!7268232 (= e!4358554 (set.union call!662643 call!662646))))

(declare-fun bm!662640 () Bool)

(assert (=> bm!662640 (= call!662645 call!662644)))

(declare-fun b!7268233 () Bool)

(declare-fun c!1352662 () Bool)

(assert (=> b!7268233 (= c!1352662 (is-Star!18780 (h!77199 (exprs!8220 ct1!250))))))

(declare-fun e!4358555 () (Set Context!15440))

(assert (=> b!7268233 (= e!4358555 e!4358553)))

(declare-fun b!7268234 () Bool)

(assert (=> b!7268234 (= e!4358551 (nullable!7980 (regOne!38072 (h!77199 (exprs!8220 ct1!250)))))))

(declare-fun b!7268235 () Bool)

(assert (=> b!7268235 (= e!4358555 call!662645)))

(declare-fun c!1352660 () Bool)

(declare-fun bm!662641 () Bool)

(assert (=> bm!662641 (= call!662646 (derivationStepZipperDown!2714 (ite c!1352660 (regTwo!38073 (h!77199 (exprs!8220 ct1!250))) (regOne!38072 (h!77199 (exprs!8220 ct1!250)))) (ite c!1352660 lt!2593256 (Context!15441 call!662642)) (h!77200 s!7854)))))

(declare-fun d!2261561 () Bool)

(declare-fun c!1352658 () Bool)

(assert (=> d!2261561 (= c!1352658 (and (is-ElementMatch!18780 (h!77199 (exprs!8220 ct1!250))) (= (c!1352616 (h!77199 (exprs!8220 ct1!250))) (h!77200 s!7854))))))

(declare-fun e!4358556 () (Set Context!15440))

(assert (=> d!2261561 (= (derivationStepZipperDown!2714 (h!77199 (exprs!8220 ct1!250)) lt!2593256 (h!77200 s!7854)) e!4358556)))

(declare-fun b!7268236 () Bool)

(assert (=> b!7268236 (= e!4358556 e!4358554)))

(assert (=> b!7268236 (= c!1352660 (is-Union!18780 (h!77199 (exprs!8220 ct1!250))))))

(declare-fun b!7268237 () Bool)

(assert (=> b!7268237 (= e!4358552 e!4358555)))

(assert (=> b!7268237 (= c!1352659 (is-Concat!27625 (h!77199 (exprs!8220 ct1!250))))))

(declare-fun b!7268238 () Bool)

(assert (=> b!7268238 (= e!4358556 (set.insert lt!2593256 (as set.empty (Set Context!15440))))))

(declare-fun bm!662642 () Bool)

(assert (=> bm!662642 (= call!662643 (derivationStepZipperDown!2714 (ite c!1352660 (regOne!38073 (h!77199 (exprs!8220 ct1!250))) (ite c!1352661 (regTwo!38072 (h!77199 (exprs!8220 ct1!250))) (ite c!1352659 (regOne!38072 (h!77199 (exprs!8220 ct1!250))) (reg!19109 (h!77199 (exprs!8220 ct1!250)))))) (ite (or c!1352660 c!1352661) lt!2593256 (Context!15441 call!662647)) (h!77200 s!7854)))))

(declare-fun b!7268239 () Bool)

(assert (=> b!7268239 (= e!4358552 (set.union call!662646 call!662644))))

(declare-fun b!7268240 () Bool)

(assert (=> b!7268240 (= e!4358553 (as set.empty (Set Context!15440)))))

(assert (= (and d!2261561 c!1352658) b!7268238))

(assert (= (and d!2261561 (not c!1352658)) b!7268236))

(assert (= (and b!7268236 c!1352660) b!7268232))

(assert (= (and b!7268236 (not c!1352660)) b!7268231))

(assert (= (and b!7268231 res!2946576) b!7268234))

(assert (= (and b!7268231 c!1352661) b!7268239))

(assert (= (and b!7268231 (not c!1352661)) b!7268237))

(assert (= (and b!7268237 c!1352659) b!7268235))

(assert (= (and b!7268237 (not c!1352659)) b!7268233))

(assert (= (and b!7268233 c!1352662) b!7268230))

(assert (= (and b!7268233 (not c!1352662)) b!7268240))

(assert (= (or b!7268235 b!7268230) bm!662639))

(assert (= (or b!7268235 b!7268230) bm!662640))

(assert (= (or b!7268239 bm!662639) bm!662638))

(assert (= (or b!7268239 bm!662640) bm!662637))

(assert (= (or b!7268232 bm!662637) bm!662642))

(assert (= (or b!7268232 b!7268239) bm!662641))

(declare-fun m!7953254 () Bool)

(assert (=> bm!662638 m!7953254))

(declare-fun m!7953256 () Bool)

(assert (=> b!7268234 m!7953256))

(declare-fun m!7953258 () Bool)

(assert (=> bm!662641 m!7953258))

(declare-fun m!7953260 () Bool)

(assert (=> bm!662642 m!7953260))

(assert (=> b!7268238 m!7953080))

(assert (=> b!7268087 d!2261561))

(assert (=> b!7268087 d!2261527))

(declare-fun bm!662643 () Bool)

(declare-fun call!662650 () (Set Context!15440))

(declare-fun call!662649 () (Set Context!15440))

(assert (=> bm!662643 (= call!662650 call!662649)))

(declare-fun b!7268241 () Bool)

(declare-fun e!4358559 () (Set Context!15440))

(declare-fun call!662651 () (Set Context!15440))

(assert (=> b!7268241 (= e!4358559 call!662651)))

(declare-fun b!7268242 () Bool)

(declare-fun c!1352666 () Bool)

(declare-fun e!4358557 () Bool)

(assert (=> b!7268242 (= c!1352666 e!4358557)))

(declare-fun res!2946577 () Bool)

(assert (=> b!7268242 (=> (not res!2946577) (not e!4358557))))

(assert (=> b!7268242 (= res!2946577 (is-Concat!27625 (h!77199 (exprs!8220 ct1!250))))))

(declare-fun e!4358560 () (Set Context!15440))

(declare-fun e!4358558 () (Set Context!15440))

(assert (=> b!7268242 (= e!4358560 e!4358558)))

(declare-fun call!662648 () List!70875)

(declare-fun bm!662644 () Bool)

(declare-fun c!1352664 () Bool)

(assert (=> bm!662644 (= call!662648 ($colon$colon!2957 (exprs!8220 lt!2593252) (ite (or c!1352666 c!1352664) (regTwo!38072 (h!77199 (exprs!8220 ct1!250))) (h!77199 (exprs!8220 ct1!250)))))))

(declare-fun bm!662645 () Bool)

(declare-fun call!662653 () List!70875)

(assert (=> bm!662645 (= call!662653 call!662648)))

(declare-fun b!7268243 () Bool)

(declare-fun call!662652 () (Set Context!15440))

(assert (=> b!7268243 (= e!4358560 (set.union call!662649 call!662652))))

(declare-fun bm!662646 () Bool)

(assert (=> bm!662646 (= call!662651 call!662650)))

(declare-fun b!7268244 () Bool)

(declare-fun c!1352667 () Bool)

(assert (=> b!7268244 (= c!1352667 (is-Star!18780 (h!77199 (exprs!8220 ct1!250))))))

(declare-fun e!4358561 () (Set Context!15440))

(assert (=> b!7268244 (= e!4358561 e!4358559)))

(declare-fun b!7268245 () Bool)

(assert (=> b!7268245 (= e!4358557 (nullable!7980 (regOne!38072 (h!77199 (exprs!8220 ct1!250)))))))

(declare-fun b!7268246 () Bool)

(assert (=> b!7268246 (= e!4358561 call!662651)))

(declare-fun bm!662647 () Bool)

(declare-fun c!1352665 () Bool)

(assert (=> bm!662647 (= call!662652 (derivationStepZipperDown!2714 (ite c!1352665 (regTwo!38073 (h!77199 (exprs!8220 ct1!250))) (regOne!38072 (h!77199 (exprs!8220 ct1!250)))) (ite c!1352665 lt!2593252 (Context!15441 call!662648)) (h!77200 s!7854)))))

(declare-fun d!2261563 () Bool)

(declare-fun c!1352663 () Bool)

(assert (=> d!2261563 (= c!1352663 (and (is-ElementMatch!18780 (h!77199 (exprs!8220 ct1!250))) (= (c!1352616 (h!77199 (exprs!8220 ct1!250))) (h!77200 s!7854))))))

(declare-fun e!4358562 () (Set Context!15440))

(assert (=> d!2261563 (= (derivationStepZipperDown!2714 (h!77199 (exprs!8220 ct1!250)) lt!2593252 (h!77200 s!7854)) e!4358562)))

(declare-fun b!7268247 () Bool)

(assert (=> b!7268247 (= e!4358562 e!4358560)))

(assert (=> b!7268247 (= c!1352665 (is-Union!18780 (h!77199 (exprs!8220 ct1!250))))))

(declare-fun b!7268248 () Bool)

(assert (=> b!7268248 (= e!4358558 e!4358561)))

(assert (=> b!7268248 (= c!1352664 (is-Concat!27625 (h!77199 (exprs!8220 ct1!250))))))

(declare-fun b!7268249 () Bool)

(assert (=> b!7268249 (= e!4358562 (set.insert lt!2593252 (as set.empty (Set Context!15440))))))

(declare-fun bm!662648 () Bool)

(assert (=> bm!662648 (= call!662649 (derivationStepZipperDown!2714 (ite c!1352665 (regOne!38073 (h!77199 (exprs!8220 ct1!250))) (ite c!1352666 (regTwo!38072 (h!77199 (exprs!8220 ct1!250))) (ite c!1352664 (regOne!38072 (h!77199 (exprs!8220 ct1!250))) (reg!19109 (h!77199 (exprs!8220 ct1!250)))))) (ite (or c!1352665 c!1352666) lt!2593252 (Context!15441 call!662653)) (h!77200 s!7854)))))

(declare-fun b!7268250 () Bool)

(assert (=> b!7268250 (= e!4358558 (set.union call!662652 call!662650))))

(declare-fun b!7268251 () Bool)

(assert (=> b!7268251 (= e!4358559 (as set.empty (Set Context!15440)))))

(assert (= (and d!2261563 c!1352663) b!7268249))

(assert (= (and d!2261563 (not c!1352663)) b!7268247))

(assert (= (and b!7268247 c!1352665) b!7268243))

(assert (= (and b!7268247 (not c!1352665)) b!7268242))

(assert (= (and b!7268242 res!2946577) b!7268245))

(assert (= (and b!7268242 c!1352666) b!7268250))

(assert (= (and b!7268242 (not c!1352666)) b!7268248))

(assert (= (and b!7268248 c!1352664) b!7268246))

(assert (= (and b!7268248 (not c!1352664)) b!7268244))

(assert (= (and b!7268244 c!1352667) b!7268241))

(assert (= (and b!7268244 (not c!1352667)) b!7268251))

(assert (= (or b!7268246 b!7268241) bm!662645))

(assert (= (or b!7268246 b!7268241) bm!662646))

(assert (= (or b!7268250 bm!662645) bm!662644))

(assert (= (or b!7268250 bm!662646) bm!662643))

(assert (= (or b!7268243 bm!662643) bm!662648))

(assert (= (or b!7268243 b!7268250) bm!662647))

(declare-fun m!7953272 () Bool)

(assert (=> bm!662644 m!7953272))

(assert (=> b!7268245 m!7953256))

(declare-fun m!7953274 () Bool)

(assert (=> bm!662647 m!7953274))

(declare-fun m!7953276 () Bool)

(assert (=> bm!662648 m!7953276))

(declare-fun m!7953278 () Bool)

(assert (=> b!7268249 m!7953278))

(assert (=> b!7268081 d!2261563))

(declare-fun d!2261567 () Bool)

(declare-fun c!1352668 () Bool)

(declare-fun e!4358563 () Bool)

(assert (=> d!2261567 (= c!1352668 e!4358563)))

(declare-fun res!2946578 () Bool)

(assert (=> d!2261567 (=> (not res!2946578) (not e!4358563))))

(assert (=> d!2261567 (= res!2946578 (is-Cons!70751 (exprs!8220 lt!2593252)))))

(declare-fun e!4358564 () (Set Context!15440))

(assert (=> d!2261567 (= (derivationStepZipperUp!2550 lt!2593252 (h!77200 s!7854)) e!4358564)))

(declare-fun b!7268252 () Bool)

(declare-fun e!4358565 () (Set Context!15440))

(assert (=> b!7268252 (= e!4358564 e!4358565)))

(declare-fun c!1352669 () Bool)

(assert (=> b!7268252 (= c!1352669 (is-Cons!70751 (exprs!8220 lt!2593252)))))

(declare-fun b!7268253 () Bool)

(declare-fun call!662654 () (Set Context!15440))

(assert (=> b!7268253 (= e!4358565 call!662654)))

(declare-fun b!7268254 () Bool)

(assert (=> b!7268254 (= e!4358564 (set.union call!662654 (derivationStepZipperUp!2550 (Context!15441 (t!384945 (exprs!8220 lt!2593252))) (h!77200 s!7854))))))

(declare-fun bm!662649 () Bool)

(assert (=> bm!662649 (= call!662654 (derivationStepZipperDown!2714 (h!77199 (exprs!8220 lt!2593252)) (Context!15441 (t!384945 (exprs!8220 lt!2593252))) (h!77200 s!7854)))))

(declare-fun b!7268255 () Bool)

(assert (=> b!7268255 (= e!4358563 (nullable!7980 (h!77199 (exprs!8220 lt!2593252))))))

(declare-fun b!7268256 () Bool)

(assert (=> b!7268256 (= e!4358565 (as set.empty (Set Context!15440)))))

(assert (= (and d!2261567 res!2946578) b!7268255))

(assert (= (and d!2261567 c!1352668) b!7268254))

(assert (= (and d!2261567 (not c!1352668)) b!7268252))

(assert (= (and b!7268252 c!1352669) b!7268253))

(assert (= (and b!7268252 (not c!1352669)) b!7268256))

(assert (= (or b!7268254 b!7268253) bm!662649))

(declare-fun m!7953280 () Bool)

(assert (=> b!7268254 m!7953280))

(declare-fun m!7953282 () Bool)

(assert (=> bm!662649 m!7953282))

(declare-fun m!7953284 () Bool)

(assert (=> b!7268255 m!7953284))

(assert (=> b!7268081 d!2261567))

(declare-fun d!2261569 () Bool)

(declare-fun c!1352670 () Bool)

(assert (=> d!2261569 (= c!1352670 (isEmpty!40681 s!7854))))

(declare-fun e!4358566 () Bool)

(assert (=> d!2261569 (= (matchZipper!3684 (set.insert ct2!346 (as set.empty (Set Context!15440))) s!7854) e!4358566)))

(declare-fun b!7268257 () Bool)

(assert (=> b!7268257 (= e!4358566 (nullableZipper!2989 (set.insert ct2!346 (as set.empty (Set Context!15440)))))))

(declare-fun b!7268258 () Bool)

(assert (=> b!7268258 (= e!4358566 (matchZipper!3684 (derivationStepZipper!3520 (set.insert ct2!346 (as set.empty (Set Context!15440))) (head!14987 s!7854)) (tail!14468 s!7854)))))

(assert (= (and d!2261569 c!1352670) b!7268257))

(assert (= (and d!2261569 (not c!1352670)) b!7268258))

(assert (=> d!2261569 m!7953156))

(assert (=> b!7268257 m!7953056))

(declare-fun m!7953286 () Bool)

(assert (=> b!7268257 m!7953286))

(assert (=> b!7268258 m!7953160))

(assert (=> b!7268258 m!7953056))

(assert (=> b!7268258 m!7953160))

(declare-fun m!7953288 () Bool)

(assert (=> b!7268258 m!7953288))

(assert (=> b!7268258 m!7953164))

(assert (=> b!7268258 m!7953288))

(assert (=> b!7268258 m!7953164))

(declare-fun m!7953290 () Bool)

(assert (=> b!7268258 m!7953290))

(assert (=> start!709024 d!2261569))

(declare-fun bs!1910593 () Bool)

(declare-fun d!2261571 () Bool)

(assert (= bs!1910593 (and d!2261571 b!7268088)))

(declare-fun lambda!447908 () Int)

(assert (=> bs!1910593 (= lambda!447908 lambda!447866)))

(declare-fun bs!1910594 () Bool)

(assert (= bs!1910594 (and d!2261571 d!2261521)))

(assert (=> bs!1910594 (not (= lambda!447908 lambda!447896))))

(declare-fun bs!1910595 () Bool)

(assert (= bs!1910595 (and d!2261571 d!2261531)))

(assert (=> bs!1910595 (= lambda!447908 lambda!447899)))

(assert (=> d!2261571 (= (inv!89961 ct2!346) (forall!17611 (exprs!8220 ct2!346) lambda!447908))))

(declare-fun bs!1910596 () Bool)

(assert (= bs!1910596 d!2261571))

(declare-fun m!7953292 () Bool)

(assert (=> bs!1910596 m!7953292))

(assert (=> start!709024 d!2261571))

(declare-fun bs!1910597 () Bool)

(declare-fun d!2261573 () Bool)

(assert (= bs!1910597 (and d!2261573 b!7268088)))

(declare-fun lambda!447909 () Int)

(assert (=> bs!1910597 (= lambda!447909 lambda!447866)))

(declare-fun bs!1910598 () Bool)

(assert (= bs!1910598 (and d!2261573 d!2261521)))

(assert (=> bs!1910598 (not (= lambda!447909 lambda!447896))))

(declare-fun bs!1910599 () Bool)

(assert (= bs!1910599 (and d!2261573 d!2261531)))

(assert (=> bs!1910599 (= lambda!447909 lambda!447899)))

(declare-fun bs!1910600 () Bool)

(assert (= bs!1910600 (and d!2261573 d!2261571)))

(assert (=> bs!1910600 (= lambda!447909 lambda!447908)))

(assert (=> d!2261573 (= (inv!89961 ct1!250) (forall!17611 (exprs!8220 ct1!250) lambda!447909))))

(declare-fun bs!1910601 () Bool)

(assert (= bs!1910601 d!2261573))

(declare-fun m!7953294 () Bool)

(assert (=> bs!1910601 m!7953294))

(assert (=> start!709024 d!2261573))

(declare-fun d!2261575 () Bool)

(assert (=> d!2261575 (= (isEmpty!40679 (exprs!8220 ct1!250)) (is-Nil!70751 (exprs!8220 ct1!250)))))

(assert (=> b!7268090 d!2261575))

(declare-fun b!7268263 () Bool)

(declare-fun e!4358569 () Bool)

(declare-fun tp!2040759 () Bool)

(assert (=> b!7268263 (= e!4358569 (and tp_is_empty!47025 tp!2040759))))

(assert (=> b!7268082 (= tp!2040747 e!4358569)))

(assert (= (and b!7268082 (is-Cons!70752 (t!384946 s!7854))) b!7268263))

(declare-fun b!7268268 () Bool)

(declare-fun e!4358572 () Bool)

(declare-fun tp!2040764 () Bool)

(declare-fun tp!2040765 () Bool)

(assert (=> b!7268268 (= e!4358572 (and tp!2040764 tp!2040765))))

(assert (=> b!7268091 (= tp!2040745 e!4358572)))

(assert (= (and b!7268091 (is-Cons!70751 (exprs!8220 ct2!346))) b!7268268))

(declare-fun b!7268269 () Bool)

(declare-fun e!4358573 () Bool)

(declare-fun tp!2040766 () Bool)

(declare-fun tp!2040767 () Bool)

(assert (=> b!7268269 (= e!4358573 (and tp!2040766 tp!2040767))))

(assert (=> b!7268080 (= tp!2040746 e!4358573)))

(assert (= (and b!7268080 (is-Cons!70751 (exprs!8220 ct1!250))) b!7268269))

(declare-fun b_lambda!279997 () Bool)

(assert (= b_lambda!279991 (or b!7268088 b_lambda!279997)))

(declare-fun bs!1910602 () Bool)

(declare-fun d!2261577 () Bool)

(assert (= bs!1910602 (and d!2261577 b!7268088)))

(assert (=> bs!1910602 (= (dynLambda!28905 lambda!447867 ct1!250) (derivationStepZipperUp!2550 ct1!250 (h!77200 s!7854)))))

(assert (=> bs!1910602 m!7953036))

(assert (=> d!2261539 d!2261577))

(declare-fun b_lambda!279999 () Bool)

(assert (= b_lambda!279989 (or b!7268088 b_lambda!279999)))

(declare-fun bs!1910603 () Bool)

(declare-fun d!2261579 () Bool)

(assert (= bs!1910603 (and d!2261579 b!7268088)))

(declare-fun validRegex!9577 (Regex!18780) Bool)

(assert (=> bs!1910603 (= (dynLambda!28904 lambda!447866 (h!77199 lt!2593250)) (validRegex!9577 (h!77199 lt!2593250)))))

(declare-fun m!7953296 () Bool)

(assert (=> bs!1910603 m!7953296))

(assert (=> b!7268167 d!2261579))

(declare-fun b_lambda!280001 () Bool)

(assert (= b_lambda!279995 (or b!7268088 b_lambda!280001)))

(declare-fun bs!1910604 () Bool)

(declare-fun d!2261581 () Bool)

(assert (= bs!1910604 (and d!2261581 b!7268088)))

(assert (=> bs!1910604 (= (dynLambda!28905 lambda!447867 lt!2593249) (derivationStepZipperUp!2550 lt!2593249 (h!77200 s!7854)))))

(assert (=> bs!1910604 m!7953030))

(assert (=> d!2261551 d!2261581))

(push 1)

(assert (not b_lambda!280001))

(assert (not d!2261521))

(assert (not b!7268205))

(assert (not b!7268201))

(assert (not d!2261531))

(assert (not d!2261513))

(assert (not b!7268234))

(assert (not bm!662641))

(assert (not d!2261551))

(assert (not bs!1910604))

(assert (not b!7268145))

(assert (not bm!662648))

(assert (not bm!662619))

(assert tp_is_empty!47025)

(assert (not b!7268168))

(assert (not b!7268245))

(assert (not b!7268258))

(assert (not d!2261547))

(assert (not d!2261527))

(assert (not b!7268144))

(assert (not bm!662642))

(assert (not b!7268206))

(assert (not b!7268254))

(assert (not b!7268197))

(assert (not bm!662649))

(assert (not d!2261571))

(assert (not d!2261569))

(assert (not d!2261539))

(assert (not b!7268202))

(assert (not b_lambda!279999))

(assert (not b!7268152))

(assert (not bs!1910603))

(assert (not b_lambda!279997))

(assert (not b!7268268))

(assert (not bs!1910602))

(assert (not bm!662644))

(assert (not b!7268269))

(assert (not d!2261549))

(assert (not d!2261573))

(assert (not bm!662624))

(assert (not bm!662638))

(assert (not b!7268255))

(assert (not b!7268257))

(assert (not d!2261537))

(assert (not b!7268263))

(assert (not d!2261559))

(assert (not b!7268151))

(assert (not d!2261543))

(assert (not bm!662623))

(assert (not b!7268189))

(assert (not b!7268190))

(assert (not d!2261523))

(assert (not bm!662647))

(assert (not d!2261553))

(assert (not b!7268196))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

