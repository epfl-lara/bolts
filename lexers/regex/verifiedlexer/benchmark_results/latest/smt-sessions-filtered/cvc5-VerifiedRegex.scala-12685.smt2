; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!701322 () Bool)

(assert start!701322)

(declare-fun b!7230188 () Bool)

(declare-fun e!4334277 () Bool)

(declare-fun e!4334275 () Bool)

(assert (=> b!7230188 (= e!4334277 (not e!4334275))))

(declare-fun res!2933429 () Bool)

(assert (=> b!7230188 (=> res!2933429 e!4334275)))

(declare-datatypes ((C!37230 0))(
  ( (C!37231 (val!28563 Int)) )
))
(declare-datatypes ((Regex!18478 0))(
  ( (ElementMatch!18478 (c!1341330 C!37230)) (Concat!27323 (regOne!37468 Regex!18478) (regTwo!37468 Regex!18478)) (EmptyExpr!18478) (Star!18478 (reg!18807 Regex!18478)) (EmptyLang!18478) (Union!18478 (regOne!37469 Regex!18478) (regTwo!37469 Regex!18478)) )
))
(declare-datatypes ((List!70044 0))(
  ( (Nil!69920) (Cons!69920 (h!76368 Regex!18478) (t!384093 List!70044)) )
))
(declare-datatypes ((Context!14836 0))(
  ( (Context!14837 (exprs!7918 List!70044)) )
))
(declare-fun lt!2572823 () Context!14836)

(declare-fun ct2!328 () Context!14836)

(assert (=> b!7230188 (= res!2933429 (not (= lt!2572823 ct2!328)))))

(declare-datatypes ((Unit!163491 0))(
  ( (Unit!163492) )
))
(declare-fun lt!2572825 () Unit!163491)

(declare-fun lambda!439050 () Int)

(declare-fun ct1!232 () Context!14836)

(declare-fun lemmaConcatPreservesForall!1287 (List!70044 List!70044 Int) Unit!163491)

(assert (=> b!7230188 (= lt!2572825 (lemmaConcatPreservesForall!1287 (exprs!7918 ct1!232) (exprs!7918 ct2!328) lambda!439050))))

(declare-datatypes ((List!70045 0))(
  ( (Nil!69921) (Cons!69921 (h!76369 C!37230) (t!384094 List!70045)) )
))
(declare-fun s1!1971 () List!70045)

(declare-fun isEmpty!40312 (List!70045) Bool)

(assert (=> b!7230188 (isEmpty!40312 s1!1971)))

(declare-fun lt!2572820 () Unit!163491)

(declare-fun lt!2572826 () (Set Context!14836))

(declare-fun lemmaZipperOfEmptyContextMatchesEmptyString!45 ((Set Context!14836) List!70045) Unit!163491)

(assert (=> b!7230188 (= lt!2572820 (lemmaZipperOfEmptyContextMatchesEmptyString!45 lt!2572826 s1!1971))))

(declare-fun b!7230189 () Bool)

(declare-fun e!4334276 () Bool)

(assert (=> b!7230189 (= e!4334276 e!4334277)))

(declare-fun res!2933435 () Bool)

(assert (=> b!7230189 (=> (not res!2933435) (not e!4334277))))

(assert (=> b!7230189 (= res!2933435 (is-Nil!69920 (exprs!7918 ct1!232)))))

(declare-fun ++!16262 (List!70044 List!70044) List!70044)

(assert (=> b!7230189 (= lt!2572823 (Context!14837 (++!16262 (exprs!7918 ct1!232) (exprs!7918 ct2!328))))))

(declare-fun lt!2572824 () Unit!163491)

(assert (=> b!7230189 (= lt!2572824 (lemmaConcatPreservesForall!1287 (exprs!7918 ct1!232) (exprs!7918 ct2!328) lambda!439050))))

(declare-fun b!7230190 () Bool)

(declare-fun e!4334272 () Bool)

(declare-fun forall!17304 (List!70044 Int) Bool)

(assert (=> b!7230190 (= e!4334272 (forall!17304 (exprs!7918 ct2!328) lambda!439050))))

(declare-fun b!7230191 () Bool)

(declare-fun e!4334271 () Bool)

(assert (=> b!7230191 (= e!4334271 e!4334272)))

(declare-fun res!2933434 () Bool)

(assert (=> b!7230191 (=> res!2933434 e!4334272)))

(assert (=> b!7230191 (= res!2933434 (not (forall!17304 (exprs!7918 ct1!232) lambda!439050)))))

(declare-fun res!2933433 () Bool)

(assert (=> start!701322 (=> (not res!2933433) (not e!4334276))))

(declare-fun matchZipper!3388 ((Set Context!14836) List!70045) Bool)

(assert (=> start!701322 (= res!2933433 (matchZipper!3388 lt!2572826 s1!1971))))

(assert (=> start!701322 (= lt!2572826 (set.insert ct1!232 (as set.empty (Set Context!14836))))))

(assert (=> start!701322 e!4334276))

(declare-fun e!4334278 () Bool)

(declare-fun inv!89206 (Context!14836) Bool)

(assert (=> start!701322 (and (inv!89206 ct1!232) e!4334278)))

(declare-fun e!4334273 () Bool)

(assert (=> start!701322 e!4334273))

(declare-fun e!4334279 () Bool)

(assert (=> start!701322 e!4334279))

(declare-fun e!4334274 () Bool)

(assert (=> start!701322 (and (inv!89206 ct2!328) e!4334274)))

(declare-fun b!7230192 () Bool)

(declare-fun tp_is_empty!46421 () Bool)

(declare-fun tp!2033572 () Bool)

(assert (=> b!7230192 (= e!4334279 (and tp_is_empty!46421 tp!2033572))))

(declare-fun b!7230193 () Bool)

(declare-fun e!4334280 () Bool)

(assert (=> b!7230193 (= e!4334280 e!4334271)))

(declare-fun res!2933431 () Bool)

(assert (=> b!7230193 (=> res!2933431 e!4334271)))

(declare-fun lt!2572821 () List!70045)

(assert (=> b!7230193 (= res!2933431 (not (matchZipper!3388 (set.insert lt!2572823 (as set.empty (Set Context!14836))) lt!2572821)))))

(declare-fun lt!2572822 () Unit!163491)

(assert (=> b!7230193 (= lt!2572822 (lemmaConcatPreservesForall!1287 (exprs!7918 ct1!232) (exprs!7918 ct2!328) lambda!439050))))

(declare-fun b!7230194 () Bool)

(assert (=> b!7230194 (= e!4334275 e!4334280)))

(declare-fun res!2933432 () Bool)

(assert (=> b!7230194 (=> res!2933432 e!4334280)))

(declare-fun s2!1849 () List!70045)

(assert (=> b!7230194 (= res!2933432 (not (= lt!2572821 s2!1849)))))

(declare-fun ++!16263 (List!70045 List!70045) List!70045)

(assert (=> b!7230194 (= lt!2572821 (++!16263 s1!1971 s2!1849))))

(declare-fun b!7230195 () Bool)

(declare-fun tp!2033569 () Bool)

(assert (=> b!7230195 (= e!4334274 tp!2033569)))

(declare-fun b!7230196 () Bool)

(declare-fun res!2933430 () Bool)

(assert (=> b!7230196 (=> (not res!2933430) (not e!4334276))))

(assert (=> b!7230196 (= res!2933430 (matchZipper!3388 (set.insert ct2!328 (as set.empty (Set Context!14836))) s2!1849))))

(declare-fun b!7230197 () Bool)

(declare-fun tp!2033571 () Bool)

(assert (=> b!7230197 (= e!4334273 (and tp_is_empty!46421 tp!2033571))))

(declare-fun b!7230198 () Bool)

(declare-fun tp!2033570 () Bool)

(assert (=> b!7230198 (= e!4334278 tp!2033570)))

(assert (= (and start!701322 res!2933433) b!7230196))

(assert (= (and b!7230196 res!2933430) b!7230189))

(assert (= (and b!7230189 res!2933435) b!7230188))

(assert (= (and b!7230188 (not res!2933429)) b!7230194))

(assert (= (and b!7230194 (not res!2933432)) b!7230193))

(assert (= (and b!7230193 (not res!2933431)) b!7230191))

(assert (= (and b!7230191 (not res!2933434)) b!7230190))

(assert (= start!701322 b!7230198))

(assert (= (and start!701322 (is-Cons!69921 s1!1971)) b!7230197))

(assert (= (and start!701322 (is-Cons!69921 s2!1849)) b!7230192))

(assert (= start!701322 b!7230195))

(declare-fun m!7898394 () Bool)

(assert (=> b!7230189 m!7898394))

(declare-fun m!7898396 () Bool)

(assert (=> b!7230189 m!7898396))

(declare-fun m!7898398 () Bool)

(assert (=> start!701322 m!7898398))

(declare-fun m!7898400 () Bool)

(assert (=> start!701322 m!7898400))

(declare-fun m!7898402 () Bool)

(assert (=> start!701322 m!7898402))

(declare-fun m!7898404 () Bool)

(assert (=> start!701322 m!7898404))

(assert (=> b!7230188 m!7898396))

(declare-fun m!7898406 () Bool)

(assert (=> b!7230188 m!7898406))

(declare-fun m!7898408 () Bool)

(assert (=> b!7230188 m!7898408))

(declare-fun m!7898410 () Bool)

(assert (=> b!7230193 m!7898410))

(assert (=> b!7230193 m!7898410))

(declare-fun m!7898412 () Bool)

(assert (=> b!7230193 m!7898412))

(assert (=> b!7230193 m!7898396))

(declare-fun m!7898414 () Bool)

(assert (=> b!7230194 m!7898414))

(declare-fun m!7898416 () Bool)

(assert (=> b!7230196 m!7898416))

(assert (=> b!7230196 m!7898416))

(declare-fun m!7898418 () Bool)

(assert (=> b!7230196 m!7898418))

(declare-fun m!7898420 () Bool)

(assert (=> b!7230191 m!7898420))

(declare-fun m!7898422 () Bool)

(assert (=> b!7230190 m!7898422))

(push 1)

(assert (not b!7230195))

(assert (not b!7230196))

(assert (not b!7230193))

(assert tp_is_empty!46421)

(assert (not b!7230189))

(assert (not b!7230198))

(assert (not b!7230190))

(assert (not start!701322))

(assert (not b!7230191))

(assert (not b!7230188))

(assert (not b!7230194))

(assert (not b!7230192))

(assert (not b!7230197))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2245368 () Bool)

(declare-fun c!1341334 () Bool)

(assert (=> d!2245368 (= c!1341334 (isEmpty!40312 s1!1971))))

(declare-fun e!4334313 () Bool)

(assert (=> d!2245368 (= (matchZipper!3388 lt!2572826 s1!1971) e!4334313)))

(declare-fun b!7230236 () Bool)

(declare-fun nullableZipper!2801 ((Set Context!14836)) Bool)

(assert (=> b!7230236 (= e!4334313 (nullableZipper!2801 lt!2572826))))

(declare-fun b!7230237 () Bool)

(declare-fun derivationStepZipper!3270 ((Set Context!14836) C!37230) (Set Context!14836))

(declare-fun head!14787 (List!70045) C!37230)

(declare-fun tail!14102 (List!70045) List!70045)

(assert (=> b!7230237 (= e!4334313 (matchZipper!3388 (derivationStepZipper!3270 lt!2572826 (head!14787 s1!1971)) (tail!14102 s1!1971)))))

(assert (= (and d!2245368 c!1341334) b!7230236))

(assert (= (and d!2245368 (not c!1341334)) b!7230237))

(assert (=> d!2245368 m!7898406))

(declare-fun m!7898454 () Bool)

(assert (=> b!7230236 m!7898454))

(declare-fun m!7898456 () Bool)

(assert (=> b!7230237 m!7898456))

(assert (=> b!7230237 m!7898456))

(declare-fun m!7898458 () Bool)

(assert (=> b!7230237 m!7898458))

(declare-fun m!7898460 () Bool)

(assert (=> b!7230237 m!7898460))

(assert (=> b!7230237 m!7898458))

(assert (=> b!7230237 m!7898460))

(declare-fun m!7898462 () Bool)

(assert (=> b!7230237 m!7898462))

(assert (=> start!701322 d!2245368))

(declare-fun bs!1902379 () Bool)

(declare-fun d!2245372 () Bool)

(assert (= bs!1902379 (and d!2245372 b!7230189)))

(declare-fun lambda!439062 () Int)

(assert (=> bs!1902379 (= lambda!439062 lambda!439050)))

(assert (=> d!2245372 (= (inv!89206 ct1!232) (forall!17304 (exprs!7918 ct1!232) lambda!439062))))

(declare-fun bs!1902380 () Bool)

(assert (= bs!1902380 d!2245372))

(declare-fun m!7898464 () Bool)

(assert (=> bs!1902380 m!7898464))

(assert (=> start!701322 d!2245372))

(declare-fun bs!1902381 () Bool)

(declare-fun d!2245374 () Bool)

(assert (= bs!1902381 (and d!2245374 b!7230189)))

(declare-fun lambda!439063 () Int)

(assert (=> bs!1902381 (= lambda!439063 lambda!439050)))

(declare-fun bs!1902382 () Bool)

(assert (= bs!1902382 (and d!2245374 d!2245372)))

(assert (=> bs!1902382 (= lambda!439063 lambda!439062)))

(assert (=> d!2245374 (= (inv!89206 ct2!328) (forall!17304 (exprs!7918 ct2!328) lambda!439063))))

(declare-fun bs!1902383 () Bool)

(assert (= bs!1902383 d!2245374))

(declare-fun m!7898466 () Bool)

(assert (=> bs!1902383 m!7898466))

(assert (=> start!701322 d!2245374))

(declare-fun d!2245376 () Bool)

(declare-fun c!1341335 () Bool)

(assert (=> d!2245376 (= c!1341335 (isEmpty!40312 lt!2572821))))

(declare-fun e!4334314 () Bool)

(assert (=> d!2245376 (= (matchZipper!3388 (set.insert lt!2572823 (as set.empty (Set Context!14836))) lt!2572821) e!4334314)))

(declare-fun b!7230238 () Bool)

(assert (=> b!7230238 (= e!4334314 (nullableZipper!2801 (set.insert lt!2572823 (as set.empty (Set Context!14836)))))))

(declare-fun b!7230239 () Bool)

(assert (=> b!7230239 (= e!4334314 (matchZipper!3388 (derivationStepZipper!3270 (set.insert lt!2572823 (as set.empty (Set Context!14836))) (head!14787 lt!2572821)) (tail!14102 lt!2572821)))))

(assert (= (and d!2245376 c!1341335) b!7230238))

(assert (= (and d!2245376 (not c!1341335)) b!7230239))

(declare-fun m!7898468 () Bool)

(assert (=> d!2245376 m!7898468))

(assert (=> b!7230238 m!7898410))

(declare-fun m!7898470 () Bool)

(assert (=> b!7230238 m!7898470))

(declare-fun m!7898472 () Bool)

(assert (=> b!7230239 m!7898472))

(assert (=> b!7230239 m!7898410))

(assert (=> b!7230239 m!7898472))

(declare-fun m!7898474 () Bool)

(assert (=> b!7230239 m!7898474))

(declare-fun m!7898476 () Bool)

(assert (=> b!7230239 m!7898476))

(assert (=> b!7230239 m!7898474))

(assert (=> b!7230239 m!7898476))

(declare-fun m!7898478 () Bool)

(assert (=> b!7230239 m!7898478))

(assert (=> b!7230193 d!2245376))

(declare-fun d!2245378 () Bool)

(assert (=> d!2245378 (forall!17304 (++!16262 (exprs!7918 ct1!232) (exprs!7918 ct2!328)) lambda!439050)))

(declare-fun lt!2572852 () Unit!163491)

(declare-fun choose!55484 (List!70044 List!70044 Int) Unit!163491)

(assert (=> d!2245378 (= lt!2572852 (choose!55484 (exprs!7918 ct1!232) (exprs!7918 ct2!328) lambda!439050))))

(assert (=> d!2245378 (forall!17304 (exprs!7918 ct1!232) lambda!439050)))

(assert (=> d!2245378 (= (lemmaConcatPreservesForall!1287 (exprs!7918 ct1!232) (exprs!7918 ct2!328) lambda!439050) lt!2572852)))

(declare-fun bs!1902384 () Bool)

(assert (= bs!1902384 d!2245378))

(assert (=> bs!1902384 m!7898394))

(assert (=> bs!1902384 m!7898394))

(declare-fun m!7898480 () Bool)

(assert (=> bs!1902384 m!7898480))

(declare-fun m!7898482 () Bool)

(assert (=> bs!1902384 m!7898482))

(assert (=> bs!1902384 m!7898420))

(assert (=> b!7230193 d!2245378))

(declare-fun d!2245380 () Bool)

(declare-fun c!1341338 () Bool)

(assert (=> d!2245380 (= c!1341338 (isEmpty!40312 s2!1849))))

(declare-fun e!4334317 () Bool)

(assert (=> d!2245380 (= (matchZipper!3388 (set.insert ct2!328 (as set.empty (Set Context!14836))) s2!1849) e!4334317)))

(declare-fun b!7230244 () Bool)

(assert (=> b!7230244 (= e!4334317 (nullableZipper!2801 (set.insert ct2!328 (as set.empty (Set Context!14836)))))))

(declare-fun b!7230245 () Bool)

(assert (=> b!7230245 (= e!4334317 (matchZipper!3388 (derivationStepZipper!3270 (set.insert ct2!328 (as set.empty (Set Context!14836))) (head!14787 s2!1849)) (tail!14102 s2!1849)))))

(assert (= (and d!2245380 c!1341338) b!7230244))

(assert (= (and d!2245380 (not c!1341338)) b!7230245))

(declare-fun m!7898484 () Bool)

(assert (=> d!2245380 m!7898484))

(assert (=> b!7230244 m!7898416))

(declare-fun m!7898486 () Bool)

(assert (=> b!7230244 m!7898486))

(declare-fun m!7898488 () Bool)

(assert (=> b!7230245 m!7898488))

(assert (=> b!7230245 m!7898416))

(assert (=> b!7230245 m!7898488))

(declare-fun m!7898490 () Bool)

(assert (=> b!7230245 m!7898490))

(declare-fun m!7898492 () Bool)

(assert (=> b!7230245 m!7898492))

(assert (=> b!7230245 m!7898490))

(assert (=> b!7230245 m!7898492))

(declare-fun m!7898494 () Bool)

(assert (=> b!7230245 m!7898494))

(assert (=> b!7230196 d!2245380))

(declare-fun d!2245382 () Bool)

(declare-fun res!2933465 () Bool)

(declare-fun e!4334324 () Bool)

(assert (=> d!2245382 (=> res!2933465 e!4334324)))

(assert (=> d!2245382 (= res!2933465 (is-Nil!69920 (exprs!7918 ct1!232)))))

(assert (=> d!2245382 (= (forall!17304 (exprs!7918 ct1!232) lambda!439050) e!4334324)))

(declare-fun b!7230254 () Bool)

(declare-fun e!4334325 () Bool)

(assert (=> b!7230254 (= e!4334324 e!4334325)))

(declare-fun res!2933466 () Bool)

(assert (=> b!7230254 (=> (not res!2933466) (not e!4334325))))

(declare-fun dynLambda!28497 (Int Regex!18478) Bool)

(assert (=> b!7230254 (= res!2933466 (dynLambda!28497 lambda!439050 (h!76368 (exprs!7918 ct1!232))))))

(declare-fun b!7230255 () Bool)

(assert (=> b!7230255 (= e!4334325 (forall!17304 (t!384093 (exprs!7918 ct1!232)) lambda!439050))))

(assert (= (and d!2245382 (not res!2933465)) b!7230254))

(assert (= (and b!7230254 res!2933466) b!7230255))

(declare-fun b_lambda!277003 () Bool)

(assert (=> (not b_lambda!277003) (not b!7230254)))

(declare-fun m!7898496 () Bool)

(assert (=> b!7230254 m!7898496))

(declare-fun m!7898498 () Bool)

(assert (=> b!7230255 m!7898498))

(assert (=> b!7230191 d!2245382))

(declare-fun d!2245384 () Bool)

(declare-fun res!2933467 () Bool)

(declare-fun e!4334326 () Bool)

(assert (=> d!2245384 (=> res!2933467 e!4334326)))

(assert (=> d!2245384 (= res!2933467 (is-Nil!69920 (exprs!7918 ct2!328)))))

(assert (=> d!2245384 (= (forall!17304 (exprs!7918 ct2!328) lambda!439050) e!4334326)))

(declare-fun b!7230256 () Bool)

(declare-fun e!4334327 () Bool)

(assert (=> b!7230256 (= e!4334326 e!4334327)))

(declare-fun res!2933468 () Bool)

(assert (=> b!7230256 (=> (not res!2933468) (not e!4334327))))

(assert (=> b!7230256 (= res!2933468 (dynLambda!28497 lambda!439050 (h!76368 (exprs!7918 ct2!328))))))

(declare-fun b!7230257 () Bool)

(assert (=> b!7230257 (= e!4334327 (forall!17304 (t!384093 (exprs!7918 ct2!328)) lambda!439050))))

(assert (= (and d!2245384 (not res!2933467)) b!7230256))

(assert (= (and b!7230256 res!2933468) b!7230257))

(declare-fun b_lambda!277005 () Bool)

(assert (=> (not b_lambda!277005) (not b!7230256)))

(declare-fun m!7898500 () Bool)

(assert (=> b!7230256 m!7898500))

(declare-fun m!7898502 () Bool)

(assert (=> b!7230257 m!7898502))

(assert (=> b!7230190 d!2245384))

(assert (=> b!7230188 d!2245378))

(declare-fun d!2245386 () Bool)

(assert (=> d!2245386 (= (isEmpty!40312 s1!1971) (is-Nil!69921 s1!1971))))

(assert (=> b!7230188 d!2245386))

(declare-fun d!2245388 () Bool)

(assert (=> d!2245388 (= (matchZipper!3388 lt!2572826 s1!1971) (isEmpty!40312 s1!1971))))

(declare-fun lt!2572856 () Unit!163491)

(declare-fun choose!55485 ((Set Context!14836) List!70045) Unit!163491)

(assert (=> d!2245388 (= lt!2572856 (choose!55485 lt!2572826 s1!1971))))

(assert (=> d!2245388 (= lt!2572826 (set.singleton (Context!14837 Nil!69920)))))

(assert (=> d!2245388 (= (lemmaZipperOfEmptyContextMatchesEmptyString!45 lt!2572826 s1!1971) lt!2572856)))

(declare-fun bs!1902385 () Bool)

(assert (= bs!1902385 d!2245388))

(assert (=> bs!1902385 m!7898398))

(assert (=> bs!1902385 m!7898406))

(declare-fun m!7898518 () Bool)

(assert (=> bs!1902385 m!7898518))

(assert (=> b!7230188 d!2245388))

(declare-fun b!7230278 () Bool)

(declare-fun res!2933475 () Bool)

(declare-fun e!4334337 () Bool)

(assert (=> b!7230278 (=> (not res!2933475) (not e!4334337))))

(declare-fun lt!2572859 () List!70045)

(declare-fun size!41537 (List!70045) Int)

(assert (=> b!7230278 (= res!2933475 (= (size!41537 lt!2572859) (+ (size!41537 s1!1971) (size!41537 s2!1849))))))

(declare-fun d!2245392 () Bool)

(assert (=> d!2245392 e!4334337))

(declare-fun res!2933476 () Bool)

(assert (=> d!2245392 (=> (not res!2933476) (not e!4334337))))

(declare-fun content!14356 (List!70045) (Set C!37230))

(assert (=> d!2245392 (= res!2933476 (= (content!14356 lt!2572859) (set.union (content!14356 s1!1971) (content!14356 s2!1849))))))

(declare-fun e!4334338 () List!70045)

(assert (=> d!2245392 (= lt!2572859 e!4334338)))

(declare-fun c!1341345 () Bool)

(assert (=> d!2245392 (= c!1341345 (is-Nil!69921 s1!1971))))

(assert (=> d!2245392 (= (++!16263 s1!1971 s2!1849) lt!2572859)))

(declare-fun b!7230279 () Bool)

(assert (=> b!7230279 (= e!4334337 (or (not (= s2!1849 Nil!69921)) (= lt!2572859 s1!1971)))))

(declare-fun b!7230276 () Bool)

(assert (=> b!7230276 (= e!4334338 s2!1849)))

(declare-fun b!7230277 () Bool)

(assert (=> b!7230277 (= e!4334338 (Cons!69921 (h!76369 s1!1971) (++!16263 (t!384094 s1!1971) s2!1849)))))

(assert (= (and d!2245392 c!1341345) b!7230276))

(assert (= (and d!2245392 (not c!1341345)) b!7230277))

(assert (= (and d!2245392 res!2933476) b!7230278))

(assert (= (and b!7230278 res!2933475) b!7230279))

(declare-fun m!7898528 () Bool)

(assert (=> b!7230278 m!7898528))

(declare-fun m!7898532 () Bool)

(assert (=> b!7230278 m!7898532))

(declare-fun m!7898534 () Bool)

(assert (=> b!7230278 m!7898534))

(declare-fun m!7898536 () Bool)

(assert (=> d!2245392 m!7898536))

(declare-fun m!7898538 () Bool)

(assert (=> d!2245392 m!7898538))

(declare-fun m!7898540 () Bool)

(assert (=> d!2245392 m!7898540))

(declare-fun m!7898542 () Bool)

(assert (=> b!7230277 m!7898542))

(assert (=> b!7230194 d!2245392))

(declare-fun d!2245394 () Bool)

(declare-fun e!4334344 () Bool)

(assert (=> d!2245394 e!4334344))

(declare-fun res!2933482 () Bool)

(assert (=> d!2245394 (=> (not res!2933482) (not e!4334344))))

(declare-fun lt!2572865 () List!70044)

(declare-fun content!14357 (List!70044) (Set Regex!18478))

(assert (=> d!2245394 (= res!2933482 (= (content!14357 lt!2572865) (set.union (content!14357 (exprs!7918 ct1!232)) (content!14357 (exprs!7918 ct2!328)))))))

(declare-fun e!4334343 () List!70044)

(assert (=> d!2245394 (= lt!2572865 e!4334343)))

(declare-fun c!1341348 () Bool)

(assert (=> d!2245394 (= c!1341348 (is-Nil!69920 (exprs!7918 ct1!232)))))

(assert (=> d!2245394 (= (++!16262 (exprs!7918 ct1!232) (exprs!7918 ct2!328)) lt!2572865)))

(declare-fun b!7230289 () Bool)

(assert (=> b!7230289 (= e!4334343 (Cons!69920 (h!76368 (exprs!7918 ct1!232)) (++!16262 (t!384093 (exprs!7918 ct1!232)) (exprs!7918 ct2!328))))))

(declare-fun b!7230291 () Bool)

(assert (=> b!7230291 (= e!4334344 (or (not (= (exprs!7918 ct2!328) Nil!69920)) (= lt!2572865 (exprs!7918 ct1!232))))))

(declare-fun b!7230288 () Bool)

(assert (=> b!7230288 (= e!4334343 (exprs!7918 ct2!328))))

(declare-fun b!7230290 () Bool)

(declare-fun res!2933481 () Bool)

(assert (=> b!7230290 (=> (not res!2933481) (not e!4334344))))

(declare-fun size!41538 (List!70044) Int)

(assert (=> b!7230290 (= res!2933481 (= (size!41538 lt!2572865) (+ (size!41538 (exprs!7918 ct1!232)) (size!41538 (exprs!7918 ct2!328)))))))

(assert (= (and d!2245394 c!1341348) b!7230288))

(assert (= (and d!2245394 (not c!1341348)) b!7230289))

(assert (= (and d!2245394 res!2933482) b!7230290))

(assert (= (and b!7230290 res!2933481) b!7230291))

(declare-fun m!7898546 () Bool)

(assert (=> d!2245394 m!7898546))

(declare-fun m!7898548 () Bool)

(assert (=> d!2245394 m!7898548))

(declare-fun m!7898550 () Bool)

(assert (=> d!2245394 m!7898550))

(declare-fun m!7898552 () Bool)

(assert (=> b!7230289 m!7898552))

(declare-fun m!7898554 () Bool)

(assert (=> b!7230290 m!7898554))

(declare-fun m!7898556 () Bool)

(assert (=> b!7230290 m!7898556))

(declare-fun m!7898560 () Bool)

(assert (=> b!7230290 m!7898560))

(assert (=> b!7230189 d!2245394))

(assert (=> b!7230189 d!2245378))

(declare-fun b!7230296 () Bool)

(declare-fun e!4334347 () Bool)

(declare-fun tp!2033587 () Bool)

(assert (=> b!7230296 (= e!4334347 (and tp_is_empty!46421 tp!2033587))))

(assert (=> b!7230192 (= tp!2033572 e!4334347)))

(assert (= (and b!7230192 (is-Cons!69921 (t!384094 s2!1849))) b!7230296))

(declare-fun b!7230301 () Bool)

(declare-fun e!4334350 () Bool)

(declare-fun tp!2033592 () Bool)

(declare-fun tp!2033593 () Bool)

(assert (=> b!7230301 (= e!4334350 (and tp!2033592 tp!2033593))))

(assert (=> b!7230198 (= tp!2033570 e!4334350)))

(assert (= (and b!7230198 (is-Cons!69920 (exprs!7918 ct1!232))) b!7230301))

(declare-fun b!7230302 () Bool)

(declare-fun e!4334351 () Bool)

(declare-fun tp!2033594 () Bool)

(assert (=> b!7230302 (= e!4334351 (and tp_is_empty!46421 tp!2033594))))

(assert (=> b!7230197 (= tp!2033571 e!4334351)))

(assert (= (and b!7230197 (is-Cons!69921 (t!384094 s1!1971))) b!7230302))

(declare-fun b!7230303 () Bool)

(declare-fun e!4334352 () Bool)

(declare-fun tp!2033595 () Bool)

(declare-fun tp!2033596 () Bool)

(assert (=> b!7230303 (= e!4334352 (and tp!2033595 tp!2033596))))

(assert (=> b!7230195 (= tp!2033569 e!4334352)))

(assert (= (and b!7230195 (is-Cons!69920 (exprs!7918 ct2!328))) b!7230303))

(declare-fun b_lambda!277007 () Bool)

(assert (= b_lambda!277003 (or b!7230189 b_lambda!277007)))

(declare-fun bs!1902387 () Bool)

(declare-fun d!2245402 () Bool)

(assert (= bs!1902387 (and d!2245402 b!7230189)))

(declare-fun validRegex!9504 (Regex!18478) Bool)

(assert (=> bs!1902387 (= (dynLambda!28497 lambda!439050 (h!76368 (exprs!7918 ct1!232))) (validRegex!9504 (h!76368 (exprs!7918 ct1!232))))))

(declare-fun m!7898564 () Bool)

(assert (=> bs!1902387 m!7898564))

(assert (=> b!7230254 d!2245402))

(declare-fun b_lambda!277009 () Bool)

(assert (= b_lambda!277005 (or b!7230189 b_lambda!277009)))

(declare-fun bs!1902388 () Bool)

(declare-fun d!2245404 () Bool)

(assert (= bs!1902388 (and d!2245404 b!7230189)))

(assert (=> bs!1902388 (= (dynLambda!28497 lambda!439050 (h!76368 (exprs!7918 ct2!328))) (validRegex!9504 (h!76368 (exprs!7918 ct2!328))))))

(declare-fun m!7898566 () Bool)

(assert (=> bs!1902388 m!7898566))

(assert (=> b!7230256 d!2245404))

(push 1)

(assert (not b!7230255))

(assert (not b!7230303))

(assert (not d!2245372))

(assert (not d!2245368))

(assert (not bs!1902387))

(assert (not b!7230239))

(assert (not b_lambda!277007))

(assert (not d!2245392))

(assert (not b!7230278))

(assert (not b!7230237))

(assert (not d!2245376))

(assert (not b!7230245))

(assert (not d!2245388))

(assert (not b!7230257))

(assert (not b!7230296))

(assert (not d!2245374))

(assert tp_is_empty!46421)

(assert (not b!7230289))

(assert (not d!2245380))

(assert (not b!7230244))

(assert (not b!7230277))

(assert (not b!7230238))

(assert (not bs!1902388))

(assert (not b!7230302))

(assert (not b!7230301))

(assert (not b!7230290))

(assert (not b!7230236))

(assert (not b_lambda!277009))

(assert (not d!2245394))

(assert (not d!2245378))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

