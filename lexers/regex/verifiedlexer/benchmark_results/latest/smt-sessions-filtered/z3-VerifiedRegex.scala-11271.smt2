; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!592788 () Bool)

(assert start!592788)

(declare-fun b!5772932 () Bool)

(assert (=> b!5772932 true))

(assert (=> b!5772932 true))

(declare-fun lambda!314342 () Int)

(declare-fun lambda!314341 () Int)

(assert (=> b!5772932 (not (= lambda!314342 lambda!314341))))

(assert (=> b!5772932 true))

(assert (=> b!5772932 true))

(declare-fun b!5772949 () Bool)

(assert (=> b!5772949 true))

(declare-fun bs!1354282 () Bool)

(declare-fun b!5772937 () Bool)

(assert (= bs!1354282 (and b!5772937 b!5772932)))

(declare-datatypes ((C!31848 0))(
  ( (C!31849 (val!25626 Int)) )
))
(declare-datatypes ((Regex!15789 0))(
  ( (ElementMatch!15789 (c!1020912 C!31848)) (Concat!24634 (regOne!32090 Regex!15789) (regTwo!32090 Regex!15789)) (EmptyExpr!15789) (Star!15789 (reg!16118 Regex!15789)) (EmptyLang!15789) (Union!15789 (regOne!32091 Regex!15789) (regTwo!32091 Regex!15789)) )
))
(declare-fun r!7292 () Regex!15789)

(declare-fun lambda!314344 () Int)

(declare-fun lt!2293835 () Regex!15789)

(assert (=> bs!1354282 (= (and (= (regOne!32090 (regOne!32090 r!7292)) (regOne!32090 r!7292)) (= lt!2293835 (regTwo!32090 r!7292))) (= lambda!314344 lambda!314341))))

(assert (=> bs!1354282 (not (= lambda!314344 lambda!314342))))

(assert (=> b!5772937 true))

(assert (=> b!5772937 true))

(assert (=> b!5772937 true))

(declare-fun lambda!314345 () Int)

(assert (=> bs!1354282 (not (= lambda!314345 lambda!314341))))

(assert (=> bs!1354282 (= (and (= (regOne!32090 (regOne!32090 r!7292)) (regOne!32090 r!7292)) (= lt!2293835 (regTwo!32090 r!7292))) (= lambda!314345 lambda!314342))))

(assert (=> b!5772937 (not (= lambda!314345 lambda!314344))))

(assert (=> b!5772937 true))

(assert (=> b!5772937 true))

(assert (=> b!5772937 true))

(declare-fun lambda!314346 () Int)

(declare-fun lt!2293776 () Regex!15789)

(assert (=> bs!1354282 (= (and (= (regTwo!32090 (regOne!32090 r!7292)) (regOne!32090 r!7292)) (= lt!2293776 (regTwo!32090 r!7292))) (= lambda!314346 lambda!314341))))

(assert (=> bs!1354282 (not (= lambda!314346 lambda!314342))))

(assert (=> b!5772937 (= (and (= (regTwo!32090 (regOne!32090 r!7292)) (regOne!32090 (regOne!32090 r!7292))) (= lt!2293776 lt!2293835)) (= lambda!314346 lambda!314344))))

(assert (=> b!5772937 (not (= lambda!314346 lambda!314345))))

(assert (=> b!5772937 true))

(assert (=> b!5772937 true))

(assert (=> b!5772937 true))

(declare-fun lambda!314347 () Int)

(assert (=> bs!1354282 (= (and (= (regTwo!32090 (regOne!32090 r!7292)) (regOne!32090 r!7292)) (= lt!2293776 (regTwo!32090 r!7292))) (= lambda!314347 lambda!314342))))

(assert (=> b!5772937 (not (= lambda!314347 lambda!314344))))

(assert (=> b!5772937 (not (= lambda!314347 lambda!314346))))

(assert (=> b!5772937 (= (and (= (regTwo!32090 (regOne!32090 r!7292)) (regOne!32090 (regOne!32090 r!7292))) (= lt!2293776 lt!2293835)) (= lambda!314347 lambda!314345))))

(assert (=> bs!1354282 (not (= lambda!314347 lambda!314341))))

(assert (=> b!5772937 true))

(assert (=> b!5772937 true))

(assert (=> b!5772937 true))

(declare-fun bs!1354283 () Bool)

(declare-fun b!5772964 () Bool)

(assert (= bs!1354283 (and b!5772964 b!5772932)))

(declare-fun lambda!314348 () Int)

(assert (=> bs!1354283 (not (= lambda!314348 lambda!314342))))

(declare-fun bs!1354284 () Bool)

(assert (= bs!1354284 (and b!5772964 b!5772937)))

(declare-fun lt!2293831 () Regex!15789)

(assert (=> bs!1354284 (= (= lt!2293831 lt!2293835) (= lambda!314348 lambda!314344))))

(assert (=> bs!1354284 (= (and (= (regOne!32090 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292))) (= lt!2293831 lt!2293776)) (= lambda!314348 lambda!314346))))

(assert (=> bs!1354284 (not (= lambda!314348 lambda!314345))))

(assert (=> bs!1354284 (not (= lambda!314348 lambda!314347))))

(assert (=> bs!1354283 (= (and (= (regOne!32090 (regOne!32090 r!7292)) (regOne!32090 r!7292)) (= lt!2293831 (regTwo!32090 r!7292))) (= lambda!314348 lambda!314341))))

(assert (=> b!5772964 true))

(assert (=> b!5772964 true))

(assert (=> b!5772964 true))

(declare-fun lambda!314349 () Int)

(assert (=> bs!1354283 (= (and (= (regOne!32090 (regOne!32090 r!7292)) (regOne!32090 r!7292)) (= lt!2293831 (regTwo!32090 r!7292))) (= lambda!314349 lambda!314342))))

(assert (=> bs!1354284 (not (= lambda!314349 lambda!314344))))

(assert (=> bs!1354284 (not (= lambda!314349 lambda!314346))))

(assert (=> bs!1354284 (= (= lt!2293831 lt!2293835) (= lambda!314349 lambda!314345))))

(assert (=> b!5772964 (not (= lambda!314349 lambda!314348))))

(assert (=> bs!1354284 (= (and (= (regOne!32090 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292))) (= lt!2293831 lt!2293776)) (= lambda!314349 lambda!314347))))

(assert (=> bs!1354283 (not (= lambda!314349 lambda!314341))))

(assert (=> b!5772964 true))

(assert (=> b!5772964 true))

(assert (=> b!5772964 true))

(declare-fun lambda!314350 () Int)

(assert (=> bs!1354283 (not (= lambda!314350 lambda!314342))))

(declare-fun lt!2293738 () Regex!15789)

(assert (=> bs!1354284 (= (and (= (regTwo!32090 (regOne!32090 r!7292)) (regOne!32090 (regOne!32090 r!7292))) (= lt!2293738 lt!2293835)) (= lambda!314350 lambda!314344))))

(assert (=> bs!1354284 (not (= lambda!314350 lambda!314345))))

(assert (=> b!5772964 (= (and (= (regTwo!32090 (regOne!32090 r!7292)) (regOne!32090 (regOne!32090 r!7292))) (= lt!2293738 lt!2293831)) (= lambda!314350 lambda!314348))))

(assert (=> b!5772964 (not (= lambda!314350 lambda!314349))))

(assert (=> bs!1354284 (= (= lt!2293738 lt!2293776) (= lambda!314350 lambda!314346))))

(assert (=> bs!1354284 (not (= lambda!314350 lambda!314347))))

(assert (=> bs!1354283 (= (and (= (regTwo!32090 (regOne!32090 r!7292)) (regOne!32090 r!7292)) (= lt!2293738 (regTwo!32090 r!7292))) (= lambda!314350 lambda!314341))))

(assert (=> b!5772964 true))

(assert (=> b!5772964 true))

(assert (=> b!5772964 true))

(declare-fun lambda!314351 () Int)

(assert (=> bs!1354283 (= (and (= (regTwo!32090 (regOne!32090 r!7292)) (regOne!32090 r!7292)) (= lt!2293738 (regTwo!32090 r!7292))) (= lambda!314351 lambda!314342))))

(assert (=> bs!1354284 (not (= lambda!314351 lambda!314344))))

(assert (=> b!5772964 (not (= lambda!314351 lambda!314350))))

(assert (=> bs!1354284 (= (and (= (regTwo!32090 (regOne!32090 r!7292)) (regOne!32090 (regOne!32090 r!7292))) (= lt!2293738 lt!2293835)) (= lambda!314351 lambda!314345))))

(assert (=> b!5772964 (not (= lambda!314351 lambda!314348))))

(assert (=> b!5772964 (= (and (= (regTwo!32090 (regOne!32090 r!7292)) (regOne!32090 (regOne!32090 r!7292))) (= lt!2293738 lt!2293831)) (= lambda!314351 lambda!314349))))

(assert (=> bs!1354284 (not (= lambda!314351 lambda!314346))))

(assert (=> bs!1354284 (= (= lt!2293738 lt!2293776) (= lambda!314351 lambda!314347))))

(assert (=> bs!1354283 (not (= lambda!314351 lambda!314341))))

(assert (=> b!5772964 true))

(assert (=> b!5772964 true))

(assert (=> b!5772964 true))

(declare-fun bs!1354285 () Bool)

(declare-fun b!5772956 () Bool)

(assert (= bs!1354285 (and b!5772956 b!5772932)))

(declare-fun lambda!314352 () Int)

(assert (=> bs!1354285 (not (= lambda!314352 lambda!314342))))

(declare-fun bs!1354286 () Bool)

(assert (= bs!1354286 (and b!5772956 b!5772937)))

(declare-fun lt!2293701 () Regex!15789)

(assert (=> bs!1354286 (= (and (= lt!2293701 (regOne!32090 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293835)) (= lambda!314352 lambda!314344))))

(declare-fun bs!1354287 () Bool)

(assert (= bs!1354287 (and b!5772956 b!5772964)))

(assert (=> bs!1354287 (= (and (= lt!2293701 (regTwo!32090 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293738)) (= lambda!314352 lambda!314350))))

(assert (=> bs!1354286 (not (= lambda!314352 lambda!314345))))

(assert (=> bs!1354287 (= (and (= lt!2293701 (regOne!32090 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293831)) (= lambda!314352 lambda!314348))))

(assert (=> bs!1354287 (not (= lambda!314352 lambda!314351))))

(assert (=> bs!1354287 (not (= lambda!314352 lambda!314349))))

(assert (=> bs!1354286 (= (and (= lt!2293701 (regTwo!32090 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293776)) (= lambda!314352 lambda!314346))))

(assert (=> bs!1354286 (not (= lambda!314352 lambda!314347))))

(assert (=> bs!1354285 (= (= lt!2293701 (regOne!32090 r!7292)) (= lambda!314352 lambda!314341))))

(assert (=> b!5772956 true))

(assert (=> b!5772956 true))

(assert (=> b!5772956 true))

(declare-fun lambda!314353 () Int)

(assert (=> bs!1354285 (= (= lt!2293701 (regOne!32090 r!7292)) (= lambda!314353 lambda!314342))))

(assert (=> bs!1354286 (not (= lambda!314353 lambda!314344))))

(assert (=> bs!1354287 (not (= lambda!314353 lambda!314350))))

(assert (=> bs!1354286 (= (and (= lt!2293701 (regOne!32090 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293835)) (= lambda!314353 lambda!314345))))

(assert (=> bs!1354287 (not (= lambda!314353 lambda!314348))))

(assert (=> bs!1354287 (= (and (= lt!2293701 (regTwo!32090 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293738)) (= lambda!314353 lambda!314351))))

(assert (=> b!5772956 (not (= lambda!314353 lambda!314352))))

(assert (=> bs!1354287 (= (and (= lt!2293701 (regOne!32090 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293831)) (= lambda!314353 lambda!314349))))

(assert (=> bs!1354286 (not (= lambda!314353 lambda!314346))))

(assert (=> bs!1354286 (= (and (= lt!2293701 (regTwo!32090 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293776)) (= lambda!314353 lambda!314347))))

(assert (=> bs!1354285 (not (= lambda!314353 lambda!314341))))

(assert (=> b!5772956 true))

(assert (=> b!5772956 true))

(assert (=> b!5772956 true))

(declare-fun bs!1354288 () Bool)

(declare-fun b!5772969 () Bool)

(assert (= bs!1354288 (and b!5772969 b!5772932)))

(declare-fun lambda!314354 () Int)

(assert (=> bs!1354288 (not (= lambda!314354 lambda!314342))))

(declare-fun bs!1354289 () Bool)

(assert (= bs!1354289 (and b!5772969 b!5772937)))

(declare-datatypes ((List!63666 0))(
  ( (Nil!63542) (Cons!63542 (h!69990 C!31848) (t!377004 List!63666)) )
))
(declare-fun s!2326 () List!63666)

(declare-datatypes ((tuple2!65772 0))(
  ( (tuple2!65773 (_1!36189 List!63666) (_2!36189 List!63666)) )
))
(declare-fun lt!2293843 () tuple2!65772)

(assert (=> bs!1354289 (= (and (= (_1!36189 lt!2293843) s!2326) (= (reg!16118 (regOne!32090 r!7292)) (regOne!32090 (regOne!32090 r!7292))) (= lt!2293701 lt!2293835)) (= lambda!314354 lambda!314344))))

(declare-fun bs!1354290 () Bool)

(assert (= bs!1354290 (and b!5772969 b!5772964)))

(assert (=> bs!1354290 (= (and (= (_1!36189 lt!2293843) s!2326) (= (reg!16118 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292))) (= lt!2293701 lt!2293738)) (= lambda!314354 lambda!314350))))

(assert (=> bs!1354290 (= (and (= (_1!36189 lt!2293843) s!2326) (= (reg!16118 (regOne!32090 r!7292)) (regOne!32090 (regOne!32090 r!7292))) (= lt!2293701 lt!2293831)) (= lambda!314354 lambda!314348))))

(assert (=> bs!1354290 (not (= lambda!314354 lambda!314351))))

(declare-fun bs!1354291 () Bool)

(assert (= bs!1354291 (and b!5772969 b!5772956)))

(assert (=> bs!1354291 (= (and (= (_1!36189 lt!2293843) s!2326) (= (reg!16118 (regOne!32090 r!7292)) lt!2293701) (= lt!2293701 (regTwo!32090 r!7292))) (= lambda!314354 lambda!314352))))

(assert (=> bs!1354290 (not (= lambda!314354 lambda!314349))))

(assert (=> bs!1354289 (= (and (= (_1!36189 lt!2293843) s!2326) (= (reg!16118 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292))) (= lt!2293701 lt!2293776)) (= lambda!314354 lambda!314346))))

(assert (=> bs!1354289 (not (= lambda!314354 lambda!314345))))

(assert (=> bs!1354291 (not (= lambda!314354 lambda!314353))))

(assert (=> bs!1354289 (not (= lambda!314354 lambda!314347))))

(assert (=> bs!1354288 (= (and (= (_1!36189 lt!2293843) s!2326) (= (reg!16118 (regOne!32090 r!7292)) (regOne!32090 r!7292)) (= lt!2293701 (regTwo!32090 r!7292))) (= lambda!314354 lambda!314341))))

(assert (=> b!5772969 true))

(assert (=> b!5772969 true))

(assert (=> b!5772969 true))

(declare-fun lambda!314355 () Int)

(assert (=> bs!1354288 (not (= lambda!314355 lambda!314342))))

(assert (=> bs!1354289 (not (= lambda!314355 lambda!314344))))

(assert (=> bs!1354290 (not (= lambda!314355 lambda!314350))))

(assert (=> bs!1354290 (not (= lambda!314355 lambda!314348))))

(assert (=> bs!1354290 (not (= lambda!314355 lambda!314351))))

(assert (=> bs!1354291 (not (= lambda!314355 lambda!314352))))

(assert (=> b!5772969 (not (= lambda!314355 lambda!314354))))

(assert (=> bs!1354290 (not (= lambda!314355 lambda!314349))))

(assert (=> bs!1354289 (not (= lambda!314355 lambda!314346))))

(assert (=> bs!1354289 (not (= lambda!314355 lambda!314345))))

(assert (=> bs!1354291 (not (= lambda!314355 lambda!314353))))

(assert (=> bs!1354289 (not (= lambda!314355 lambda!314347))))

(assert (=> bs!1354288 (not (= lambda!314355 lambda!314341))))

(assert (=> b!5772969 true))

(assert (=> b!5772969 true))

(assert (=> b!5772969 true))

(declare-fun lambda!314356 () Int)

(assert (=> bs!1354288 (= (and (= (_1!36189 lt!2293843) s!2326) (= (reg!16118 (regOne!32090 r!7292)) (regOne!32090 r!7292)) (= lt!2293701 (regTwo!32090 r!7292))) (= lambda!314356 lambda!314342))))

(assert (=> bs!1354289 (not (= lambda!314356 lambda!314344))))

(assert (=> bs!1354290 (not (= lambda!314356 lambda!314350))))

(assert (=> bs!1354290 (not (= lambda!314356 lambda!314348))))

(assert (=> bs!1354290 (= (and (= (_1!36189 lt!2293843) s!2326) (= (reg!16118 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292))) (= lt!2293701 lt!2293738)) (= lambda!314356 lambda!314351))))

(assert (=> bs!1354291 (not (= lambda!314356 lambda!314352))))

(assert (=> b!5772969 (not (= lambda!314356 lambda!314354))))

(assert (=> b!5772969 (not (= lambda!314356 lambda!314355))))

(assert (=> bs!1354290 (= (and (= (_1!36189 lt!2293843) s!2326) (= (reg!16118 (regOne!32090 r!7292)) (regOne!32090 (regOne!32090 r!7292))) (= lt!2293701 lt!2293831)) (= lambda!314356 lambda!314349))))

(assert (=> bs!1354289 (not (= lambda!314356 lambda!314346))))

(assert (=> bs!1354289 (= (and (= (_1!36189 lt!2293843) s!2326) (= (reg!16118 (regOne!32090 r!7292)) (regOne!32090 (regOne!32090 r!7292))) (= lt!2293701 lt!2293835)) (= lambda!314356 lambda!314345))))

(assert (=> bs!1354291 (= (and (= (_1!36189 lt!2293843) s!2326) (= (reg!16118 (regOne!32090 r!7292)) lt!2293701) (= lt!2293701 (regTwo!32090 r!7292))) (= lambda!314356 lambda!314353))))

(assert (=> bs!1354289 (= (and (= (_1!36189 lt!2293843) s!2326) (= (reg!16118 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292))) (= lt!2293701 lt!2293776)) (= lambda!314356 lambda!314347))))

(assert (=> bs!1354288 (not (= lambda!314356 lambda!314341))))

(assert (=> b!5772969 true))

(assert (=> b!5772969 true))

(assert (=> b!5772969 true))

(declare-fun b!5772936 () Bool)

(assert (=> b!5772936 true))

(declare-fun bs!1354292 () Bool)

(assert (= bs!1354292 (and b!5772936 b!5772969)))

(declare-fun lambda!314359 () Int)

(declare-fun lambda!314357 () Int)

(assert (=> bs!1354292 (= lambda!314359 lambda!314357)))

(declare-fun bs!1354293 () Bool)

(assert (= bs!1354293 (and b!5772936 b!5772932)))

(declare-fun lambda!314360 () Int)

(assert (=> bs!1354293 (not (= lambda!314360 lambda!314342))))

(declare-fun bs!1354294 () Bool)

(assert (= bs!1354294 (and b!5772936 b!5772937)))

(declare-fun lt!2293787 () Regex!15789)

(assert (=> bs!1354294 (= (and (= lt!2293787 (regOne!32090 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293835)) (= lambda!314360 lambda!314344))))

(declare-fun bs!1354295 () Bool)

(assert (= bs!1354295 (and b!5772936 b!5772964)))

(assert (=> bs!1354295 (= (and (= lt!2293787 (regTwo!32090 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293738)) (= lambda!314360 lambda!314350))))

(assert (=> bs!1354295 (= (and (= lt!2293787 (regOne!32090 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293831)) (= lambda!314360 lambda!314348))))

(assert (=> bs!1354295 (not (= lambda!314360 lambda!314351))))

(declare-fun bs!1354296 () Bool)

(assert (= bs!1354296 (and b!5772936 b!5772956)))

(assert (=> bs!1354296 (= (= lt!2293787 lt!2293701) (= lambda!314360 lambda!314352))))

(assert (=> bs!1354292 (= (and (= s!2326 (_1!36189 lt!2293843)) (= lt!2293787 (reg!16118 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293701)) (= lambda!314360 lambda!314354))))

(assert (=> bs!1354292 (not (= lambda!314360 lambda!314355))))

(assert (=> bs!1354292 (not (= lambda!314360 lambda!314356))))

(assert (=> bs!1354295 (not (= lambda!314360 lambda!314349))))

(assert (=> bs!1354294 (= (and (= lt!2293787 (regTwo!32090 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293776)) (= lambda!314360 lambda!314346))))

(assert (=> bs!1354294 (not (= lambda!314360 lambda!314345))))

(assert (=> bs!1354296 (not (= lambda!314360 lambda!314353))))

(assert (=> bs!1354294 (not (= lambda!314360 lambda!314347))))

(assert (=> bs!1354293 (= (= lt!2293787 (regOne!32090 r!7292)) (= lambda!314360 lambda!314341))))

(assert (=> b!5772936 true))

(assert (=> b!5772936 true))

(assert (=> b!5772936 true))

(declare-fun lambda!314361 () Int)

(assert (=> bs!1354293 (= (= lt!2293787 (regOne!32090 r!7292)) (= lambda!314361 lambda!314342))))

(assert (=> b!5772936 (not (= lambda!314361 lambda!314360))))

(assert (=> bs!1354294 (not (= lambda!314361 lambda!314344))))

(assert (=> bs!1354295 (not (= lambda!314361 lambda!314350))))

(assert (=> bs!1354295 (not (= lambda!314361 lambda!314348))))

(assert (=> bs!1354295 (= (and (= lt!2293787 (regTwo!32090 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293738)) (= lambda!314361 lambda!314351))))

(assert (=> bs!1354296 (not (= lambda!314361 lambda!314352))))

(assert (=> bs!1354292 (not (= lambda!314361 lambda!314354))))

(assert (=> bs!1354292 (not (= lambda!314361 lambda!314355))))

(assert (=> bs!1354292 (= (and (= s!2326 (_1!36189 lt!2293843)) (= lt!2293787 (reg!16118 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293701)) (= lambda!314361 lambda!314356))))

(assert (=> bs!1354295 (= (and (= lt!2293787 (regOne!32090 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293831)) (= lambda!314361 lambda!314349))))

(assert (=> bs!1354294 (not (= lambda!314361 lambda!314346))))

(assert (=> bs!1354294 (= (and (= lt!2293787 (regOne!32090 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293835)) (= lambda!314361 lambda!314345))))

(assert (=> bs!1354296 (= (= lt!2293787 lt!2293701) (= lambda!314361 lambda!314353))))

(assert (=> bs!1354294 (= (and (= lt!2293787 (regTwo!32090 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293776)) (= lambda!314361 lambda!314347))))

(assert (=> bs!1354293 (not (= lambda!314361 lambda!314341))))

(assert (=> b!5772936 true))

(assert (=> b!5772936 true))

(assert (=> b!5772936 true))

(declare-fun lambda!314362 () Int)

(assert (=> bs!1354293 (not (= lambda!314362 lambda!314342))))

(declare-fun lt!2293718 () tuple2!65772)

(assert (=> b!5772936 (= (and (= (_1!36189 lt!2293718) s!2326) (= (reg!16118 (regOne!32090 r!7292)) lt!2293787) (= lt!2293701 (regTwo!32090 r!7292))) (= lambda!314362 lambda!314360))))

(assert (=> bs!1354294 (= (and (= (_1!36189 lt!2293718) s!2326) (= (reg!16118 (regOne!32090 r!7292)) (regOne!32090 (regOne!32090 r!7292))) (= lt!2293701 lt!2293835)) (= lambda!314362 lambda!314344))))

(assert (=> bs!1354295 (= (and (= (_1!36189 lt!2293718) s!2326) (= (reg!16118 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292))) (= lt!2293701 lt!2293738)) (= lambda!314362 lambda!314350))))

(assert (=> b!5772936 (not (= lambda!314362 lambda!314361))))

(assert (=> bs!1354295 (= (and (= (_1!36189 lt!2293718) s!2326) (= (reg!16118 (regOne!32090 r!7292)) (regOne!32090 (regOne!32090 r!7292))) (= lt!2293701 lt!2293831)) (= lambda!314362 lambda!314348))))

(assert (=> bs!1354295 (not (= lambda!314362 lambda!314351))))

(assert (=> bs!1354296 (= (and (= (_1!36189 lt!2293718) s!2326) (= (reg!16118 (regOne!32090 r!7292)) lt!2293701) (= lt!2293701 (regTwo!32090 r!7292))) (= lambda!314362 lambda!314352))))

(assert (=> bs!1354292 (= (= (_1!36189 lt!2293718) (_1!36189 lt!2293843)) (= lambda!314362 lambda!314354))))

(assert (=> bs!1354292 (not (= lambda!314362 lambda!314355))))

(assert (=> bs!1354292 (not (= lambda!314362 lambda!314356))))

(assert (=> bs!1354295 (not (= lambda!314362 lambda!314349))))

(assert (=> bs!1354294 (= (and (= (_1!36189 lt!2293718) s!2326) (= (reg!16118 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292))) (= lt!2293701 lt!2293776)) (= lambda!314362 lambda!314346))))

(assert (=> bs!1354294 (not (= lambda!314362 lambda!314345))))

(assert (=> bs!1354296 (not (= lambda!314362 lambda!314353))))

(assert (=> bs!1354294 (not (= lambda!314362 lambda!314347))))

(assert (=> bs!1354293 (= (and (= (_1!36189 lt!2293718) s!2326) (= (reg!16118 (regOne!32090 r!7292)) (regOne!32090 r!7292)) (= lt!2293701 (regTwo!32090 r!7292))) (= lambda!314362 lambda!314341))))

(assert (=> b!5772936 true))

(assert (=> b!5772936 true))

(assert (=> b!5772936 true))

(declare-fun lambda!314363 () Int)

(assert (=> bs!1354293 (= (and (= (_1!36189 lt!2293718) s!2326) (= (reg!16118 (regOne!32090 r!7292)) (regOne!32090 r!7292)) (= lt!2293701 (regTwo!32090 r!7292))) (= lambda!314363 lambda!314342))))

(assert (=> b!5772936 (not (= lambda!314363 lambda!314360))))

(assert (=> bs!1354294 (not (= lambda!314363 lambda!314344))))

(assert (=> bs!1354295 (not (= lambda!314363 lambda!314350))))

(assert (=> b!5772936 (= (and (= (_1!36189 lt!2293718) s!2326) (= (reg!16118 (regOne!32090 r!7292)) lt!2293787) (= lt!2293701 (regTwo!32090 r!7292))) (= lambda!314363 lambda!314361))))

(assert (=> bs!1354295 (not (= lambda!314363 lambda!314348))))

(assert (=> b!5772936 (not (= lambda!314363 lambda!314362))))

(assert (=> bs!1354295 (= (and (= (_1!36189 lt!2293718) s!2326) (= (reg!16118 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292))) (= lt!2293701 lt!2293738)) (= lambda!314363 lambda!314351))))

(assert (=> bs!1354296 (not (= lambda!314363 lambda!314352))))

(assert (=> bs!1354292 (not (= lambda!314363 lambda!314354))))

(assert (=> bs!1354292 (not (= lambda!314363 lambda!314355))))

(assert (=> bs!1354292 (= (= (_1!36189 lt!2293718) (_1!36189 lt!2293843)) (= lambda!314363 lambda!314356))))

(assert (=> bs!1354295 (= (and (= (_1!36189 lt!2293718) s!2326) (= (reg!16118 (regOne!32090 r!7292)) (regOne!32090 (regOne!32090 r!7292))) (= lt!2293701 lt!2293831)) (= lambda!314363 lambda!314349))))

(assert (=> bs!1354294 (not (= lambda!314363 lambda!314346))))

(assert (=> bs!1354294 (= (and (= (_1!36189 lt!2293718) s!2326) (= (reg!16118 (regOne!32090 r!7292)) (regOne!32090 (regOne!32090 r!7292))) (= lt!2293701 lt!2293835)) (= lambda!314363 lambda!314345))))

(assert (=> bs!1354296 (= (and (= (_1!36189 lt!2293718) s!2326) (= (reg!16118 (regOne!32090 r!7292)) lt!2293701) (= lt!2293701 (regTwo!32090 r!7292))) (= lambda!314363 lambda!314353))))

(assert (=> bs!1354294 (= (and (= (_1!36189 lt!2293718) s!2326) (= (reg!16118 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292))) (= lt!2293701 lt!2293776)) (= lambda!314363 lambda!314347))))

(assert (=> bs!1354293 (not (= lambda!314363 lambda!314341))))

(assert (=> b!5772936 true))

(assert (=> b!5772936 true))

(assert (=> b!5772936 true))

(declare-fun lambda!314364 () Int)

(assert (=> bs!1354293 (not (= lambda!314364 lambda!314342))))

(assert (=> b!5772936 (not (= lambda!314364 lambda!314360))))

(assert (=> bs!1354294 (not (= lambda!314364 lambda!314344))))

(assert (=> bs!1354295 (not (= lambda!314364 lambda!314350))))

(assert (=> b!5772936 (not (= lambda!314364 lambda!314363))))

(assert (=> b!5772936 (not (= lambda!314364 lambda!314361))))

(assert (=> bs!1354295 (not (= lambda!314364 lambda!314348))))

(assert (=> b!5772936 (not (= lambda!314364 lambda!314362))))

(assert (=> bs!1354295 (not (= lambda!314364 lambda!314351))))

(assert (=> bs!1354296 (not (= lambda!314364 lambda!314352))))

(assert (=> bs!1354292 (not (= lambda!314364 lambda!314354))))

(assert (=> bs!1354292 (= (= (_1!36189 lt!2293718) (_1!36189 lt!2293843)) (= lambda!314364 lambda!314355))))

(assert (=> bs!1354292 (not (= lambda!314364 lambda!314356))))

(assert (=> bs!1354295 (not (= lambda!314364 lambda!314349))))

(assert (=> bs!1354294 (not (= lambda!314364 lambda!314346))))

(assert (=> bs!1354294 (not (= lambda!314364 lambda!314345))))

(assert (=> bs!1354296 (not (= lambda!314364 lambda!314353))))

(assert (=> bs!1354294 (not (= lambda!314364 lambda!314347))))

(assert (=> bs!1354293 (not (= lambda!314364 lambda!314341))))

(assert (=> b!5772936 true))

(assert (=> b!5772936 true))

(assert (=> b!5772936 true))

(declare-fun bs!1354297 () Bool)

(declare-fun b!5772950 () Bool)

(assert (= bs!1354297 (and b!5772950 b!5772936)))

(declare-fun lambda!314365 () Int)

(assert (=> bs!1354297 (not (= lambda!314365 lambda!314364))))

(declare-fun bs!1354298 () Bool)

(assert (= bs!1354298 (and b!5772950 b!5772932)))

(assert (=> bs!1354298 (not (= lambda!314365 lambda!314342))))

(assert (=> bs!1354297 (= (and (= Nil!63542 s!2326) (= (reg!16118 (regOne!32090 r!7292)) lt!2293787) (= lt!2293701 (regTwo!32090 r!7292))) (= lambda!314365 lambda!314360))))

(declare-fun bs!1354299 () Bool)

(assert (= bs!1354299 (and b!5772950 b!5772937)))

(assert (=> bs!1354299 (= (and (= Nil!63542 s!2326) (= (reg!16118 (regOne!32090 r!7292)) (regOne!32090 (regOne!32090 r!7292))) (= lt!2293701 lt!2293835)) (= lambda!314365 lambda!314344))))

(declare-fun bs!1354300 () Bool)

(assert (= bs!1354300 (and b!5772950 b!5772964)))

(assert (=> bs!1354300 (= (and (= Nil!63542 s!2326) (= (reg!16118 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292))) (= lt!2293701 lt!2293738)) (= lambda!314365 lambda!314350))))

(assert (=> bs!1354297 (not (= lambda!314365 lambda!314363))))

(assert (=> bs!1354297 (not (= lambda!314365 lambda!314361))))

(assert (=> bs!1354300 (= (and (= Nil!63542 s!2326) (= (reg!16118 (regOne!32090 r!7292)) (regOne!32090 (regOne!32090 r!7292))) (= lt!2293701 lt!2293831)) (= lambda!314365 lambda!314348))))

(assert (=> bs!1354297 (= (= Nil!63542 (_1!36189 lt!2293718)) (= lambda!314365 lambda!314362))))

(assert (=> bs!1354300 (not (= lambda!314365 lambda!314351))))

(declare-fun bs!1354301 () Bool)

(assert (= bs!1354301 (and b!5772950 b!5772956)))

(assert (=> bs!1354301 (= (and (= Nil!63542 s!2326) (= (reg!16118 (regOne!32090 r!7292)) lt!2293701) (= lt!2293701 (regTwo!32090 r!7292))) (= lambda!314365 lambda!314352))))

(declare-fun bs!1354302 () Bool)

(assert (= bs!1354302 (and b!5772950 b!5772969)))

(assert (=> bs!1354302 (= (= Nil!63542 (_1!36189 lt!2293843)) (= lambda!314365 lambda!314354))))

(assert (=> bs!1354302 (not (= lambda!314365 lambda!314355))))

(assert (=> bs!1354302 (not (= lambda!314365 lambda!314356))))

(assert (=> bs!1354300 (not (= lambda!314365 lambda!314349))))

(assert (=> bs!1354299 (= (and (= Nil!63542 s!2326) (= (reg!16118 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292))) (= lt!2293701 lt!2293776)) (= lambda!314365 lambda!314346))))

(assert (=> bs!1354299 (not (= lambda!314365 lambda!314345))))

(assert (=> bs!1354301 (not (= lambda!314365 lambda!314353))))

(assert (=> bs!1354299 (not (= lambda!314365 lambda!314347))))

(assert (=> bs!1354298 (= (and (= Nil!63542 s!2326) (= (reg!16118 (regOne!32090 r!7292)) (regOne!32090 r!7292)) (= lt!2293701 (regTwo!32090 r!7292))) (= lambda!314365 lambda!314341))))

(assert (=> b!5772950 true))

(assert (=> b!5772950 true))

(declare-fun lambda!314366 () Int)

(assert (=> bs!1354297 (not (= lambda!314366 lambda!314364))))

(assert (=> bs!1354298 (= (and (= Nil!63542 s!2326) (= (reg!16118 (regOne!32090 r!7292)) (regOne!32090 r!7292)) (= lt!2293701 (regTwo!32090 r!7292))) (= lambda!314366 lambda!314342))))

(assert (=> bs!1354297 (not (= lambda!314366 lambda!314360))))

(assert (=> bs!1354299 (not (= lambda!314366 lambda!314344))))

(assert (=> bs!1354300 (not (= lambda!314366 lambda!314350))))

(assert (=> b!5772950 (not (= lambda!314366 lambda!314365))))

(assert (=> bs!1354297 (= (= Nil!63542 (_1!36189 lt!2293718)) (= lambda!314366 lambda!314363))))

(assert (=> bs!1354297 (= (and (= Nil!63542 s!2326) (= (reg!16118 (regOne!32090 r!7292)) lt!2293787) (= lt!2293701 (regTwo!32090 r!7292))) (= lambda!314366 lambda!314361))))

(assert (=> bs!1354300 (not (= lambda!314366 lambda!314348))))

(assert (=> bs!1354297 (not (= lambda!314366 lambda!314362))))

(assert (=> bs!1354300 (= (and (= Nil!63542 s!2326) (= (reg!16118 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292))) (= lt!2293701 lt!2293738)) (= lambda!314366 lambda!314351))))

(assert (=> bs!1354301 (not (= lambda!314366 lambda!314352))))

(assert (=> bs!1354302 (not (= lambda!314366 lambda!314354))))

(assert (=> bs!1354302 (not (= lambda!314366 lambda!314355))))

(assert (=> bs!1354302 (= (= Nil!63542 (_1!36189 lt!2293843)) (= lambda!314366 lambda!314356))))

(assert (=> bs!1354300 (= (and (= Nil!63542 s!2326) (= (reg!16118 (regOne!32090 r!7292)) (regOne!32090 (regOne!32090 r!7292))) (= lt!2293701 lt!2293831)) (= lambda!314366 lambda!314349))))

(assert (=> bs!1354299 (not (= lambda!314366 lambda!314346))))

(assert (=> bs!1354299 (= (and (= Nil!63542 s!2326) (= (reg!16118 (regOne!32090 r!7292)) (regOne!32090 (regOne!32090 r!7292))) (= lt!2293701 lt!2293835)) (= lambda!314366 lambda!314345))))

(assert (=> bs!1354301 (= (and (= Nil!63542 s!2326) (= (reg!16118 (regOne!32090 r!7292)) lt!2293701) (= lt!2293701 (regTwo!32090 r!7292))) (= lambda!314366 lambda!314353))))

(assert (=> bs!1354299 (= (and (= Nil!63542 s!2326) (= (reg!16118 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292))) (= lt!2293701 lt!2293776)) (= lambda!314366 lambda!314347))))

(assert (=> bs!1354298 (not (= lambda!314366 lambda!314341))))

(assert (=> b!5772950 true))

(assert (=> b!5772950 true))

(declare-fun lambda!314367 () Int)

(assert (=> bs!1354297 (= (= Nil!63542 (_1!36189 lt!2293718)) (= lambda!314367 lambda!314364))))

(assert (=> bs!1354298 (not (= lambda!314367 lambda!314342))))

(assert (=> bs!1354297 (not (= lambda!314367 lambda!314360))))

(assert (=> bs!1354299 (not (= lambda!314367 lambda!314344))))

(assert (=> bs!1354300 (not (= lambda!314367 lambda!314350))))

(assert (=> b!5772950 (not (= lambda!314367 lambda!314365))))

(assert (=> bs!1354297 (not (= lambda!314367 lambda!314361))))

(assert (=> bs!1354300 (not (= lambda!314367 lambda!314348))))

(assert (=> bs!1354297 (not (= lambda!314367 lambda!314362))))

(assert (=> bs!1354300 (not (= lambda!314367 lambda!314351))))

(assert (=> bs!1354301 (not (= lambda!314367 lambda!314352))))

(assert (=> bs!1354302 (not (= lambda!314367 lambda!314354))))

(assert (=> bs!1354302 (= (= Nil!63542 (_1!36189 lt!2293843)) (= lambda!314367 lambda!314355))))

(assert (=> bs!1354302 (not (= lambda!314367 lambda!314356))))

(assert (=> bs!1354300 (not (= lambda!314367 lambda!314349))))

(assert (=> bs!1354299 (not (= lambda!314367 lambda!314346))))

(assert (=> bs!1354299 (not (= lambda!314367 lambda!314345))))

(assert (=> bs!1354301 (not (= lambda!314367 lambda!314353))))

(assert (=> b!5772950 (not (= lambda!314367 lambda!314366))))

(assert (=> bs!1354297 (not (= lambda!314367 lambda!314363))))

(assert (=> bs!1354299 (not (= lambda!314367 lambda!314347))))

(assert (=> bs!1354298 (not (= lambda!314367 lambda!314341))))

(assert (=> b!5772950 true))

(assert (=> b!5772950 true))

(declare-fun bm!446915 () Bool)

(declare-fun call!447103 () Bool)

(declare-fun call!446944 () Bool)

(assert (=> bm!446915 (= call!447103 call!446944)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!63667 0))(
  ( (Nil!63543) (Cons!63543 (h!69991 Regex!15789) (t!377005 List!63667)) )
))
(declare-datatypes ((Context!10346 0))(
  ( (Context!10347 (exprs!5673 List!63667)) )
))
(declare-fun lt!2293761 () (InoxSet Context!10346))

(declare-fun c!1020902 () Bool)

(declare-fun lt!2293798 () (InoxSet Context!10346))

(declare-fun c!1020905 () Bool)

(declare-fun lt!2293747 () (InoxSet Context!10346))

(declare-fun lt!2293777 () (InoxSet Context!10346))

(declare-fun bm!446916 () Bool)

(declare-fun call!446963 () Bool)

(declare-fun matchZipper!1927 ((InoxSet Context!10346) List!63666) Bool)

(assert (=> bm!446916 (= call!446963 (matchZipper!1927 (ite c!1020905 lt!2293798 (ite c!1020902 ((_ map or) lt!2293777 lt!2293761) lt!2293747)) (t!377004 s!2326)))))

(declare-fun bm!446917 () Bool)

(declare-fun call!446994 () Bool)

(declare-fun call!447013 () Bool)

(assert (=> bm!446917 (= call!446994 call!447013)))

(declare-fun e!3546362 () Bool)

(declare-fun e!3546386 () Bool)

(assert (=> b!5772932 (= e!3546362 e!3546386)))

(declare-fun res!2436678 () Bool)

(assert (=> b!5772932 (=> res!2436678 e!3546386)))

(declare-fun lt!2293862 () Bool)

(declare-fun lt!2293765 () Bool)

(get-info :version)

(assert (=> b!5772932 (= res!2436678 (or (not (= lt!2293862 lt!2293765)) ((_ is Nil!63542) s!2326)))))

(declare-fun Exists!2889 (Int) Bool)

(assert (=> b!5772932 (= (Exists!2889 lambda!314341) (Exists!2889 lambda!314342))))

(declare-datatypes ((Unit!156778 0))(
  ( (Unit!156779) )
))
(declare-fun lt!2293712 () Unit!156778)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1518 (Regex!15789 Regex!15789 List!63666) Unit!156778)

(assert (=> b!5772932 (= lt!2293712 (lemmaExistCutMatchRandMatchRSpecEquivalent!1518 (regOne!32090 r!7292) (regTwo!32090 r!7292) s!2326))))

(assert (=> b!5772932 (= lt!2293765 (Exists!2889 lambda!314341))))

(declare-datatypes ((Option!15798 0))(
  ( (None!15797) (Some!15797 (v!51856 tuple2!65772)) )
))
(declare-fun isDefined!12501 (Option!15798) Bool)

(declare-fun findConcatSeparation!2212 (Regex!15789 Regex!15789 List!63666 List!63666 List!63666) Option!15798)

(assert (=> b!5772932 (= lt!2293765 (isDefined!12501 (findConcatSeparation!2212 (regOne!32090 r!7292) (regTwo!32090 r!7292) Nil!63542 s!2326 s!2326)))))

(declare-fun lt!2293822 () Unit!156778)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1976 (Regex!15789 Regex!15789 List!63666) Unit!156778)

(assert (=> b!5772932 (= lt!2293822 (lemmaFindConcatSeparationEquivalentToExists!1976 (regOne!32090 r!7292) (regTwo!32090 r!7292) s!2326))))

(declare-fun b!5772933 () Bool)

(declare-fun e!3546375 () Unit!156778)

(declare-fun Unit!156780 () Unit!156778)

(assert (=> b!5772933 (= e!3546375 Unit!156780)))

(declare-fun lt!2293829 () (InoxSet Context!10346))

(declare-fun lt!2293899 () Context!10346)

(assert (=> b!5772933 (= lt!2293829 (store ((as const (Array Context!10346 Bool)) false) lt!2293899 true))))

(declare-fun lt!2293834 () Unit!156778)

(declare-fun call!447033 () Unit!156778)

(assert (=> b!5772933 (= lt!2293834 call!447033)))

(declare-fun call!447049 () (InoxSet Context!10346))

(declare-fun call!447117 () (InoxSet Context!10346))

(assert (=> b!5772933 (= call!447049 call!447117)))

(declare-fun lt!2293892 () Regex!15789)

(declare-fun call!446947 () Regex!15789)

(assert (=> b!5772933 (= lt!2293892 call!446947)))

(declare-fun lt!2293877 () Unit!156778)

(declare-fun call!446982 () Unit!156778)

(assert (=> b!5772933 (= lt!2293877 call!446982)))

(declare-fun res!2436670 () Bool)

(declare-fun call!446928 () Bool)

(declare-fun call!447122 () Bool)

(assert (=> b!5772933 (= res!2436670 (= call!446928 call!447122))))

(declare-fun e!3546379 () Bool)

(assert (=> b!5772933 (=> (not res!2436670) (not e!3546379))))

(assert (=> b!5772933 e!3546379))

(declare-fun bm!446918 () Bool)

(declare-fun call!447098 () Unit!156778)

(declare-fun call!447091 () Unit!156778)

(assert (=> bm!446918 (= call!447098 call!447091)))

(declare-fun b!5772934 () Bool)

(declare-fun e!3546360 () Bool)

(declare-fun tp!1594494 () Bool)

(assert (=> b!5772934 (= e!3546360 tp!1594494)))

(declare-fun bm!446919 () Bool)

(declare-fun call!447017 () Bool)

(declare-fun call!447027 () Bool)

(assert (=> bm!446919 (= call!447017 call!447027)))

(declare-fun bm!446920 () Bool)

(declare-fun call!447084 () Bool)

(declare-fun call!447119 () Bool)

(assert (=> bm!446920 (= call!447084 call!447119)))

(declare-fun e!3546383 () Bool)

(declare-datatypes ((List!63668 0))(
  ( (Nil!63544) (Cons!63544 (h!69992 Context!10346) (t!377006 List!63668)) )
))
(declare-fun zl!343 () List!63668)

(declare-fun tp!1594490 () Bool)

(declare-fun b!5772935 () Bool)

(declare-fun inv!82719 (Context!10346) Bool)

(assert (=> b!5772935 (= e!3546383 (and (inv!82719 (h!69992 zl!343)) e!3546360 tp!1594490))))

(declare-fun bm!446921 () Bool)

(declare-fun call!447012 () Unit!156778)

(declare-fun call!447043 () Unit!156778)

(assert (=> bm!446921 (= call!447012 call!447043)))

(declare-fun bm!446922 () Bool)

(declare-fun call!447036 () Bool)

(declare-fun call!447100 () Bool)

(assert (=> bm!446922 (= call!447036 call!447100)))

(declare-fun bm!446923 () Bool)

(declare-fun call!447075 () Bool)

(declare-fun call!446959 () Bool)

(assert (=> bm!446923 (= call!447075 call!446959)))

(declare-fun bm!446924 () Bool)

(declare-fun call!447005 () Unit!156778)

(declare-fun call!446991 () Unit!156778)

(assert (=> bm!446924 (= call!447005 call!446991)))

(declare-fun bm!446925 () Bool)

(declare-fun call!446955 () Unit!156778)

(declare-fun call!446984 () Unit!156778)

(assert (=> bm!446925 (= call!446955 call!446984)))

(declare-fun bm!446926 () Bool)

(declare-fun call!446941 () Bool)

(declare-fun call!447108 () Bool)

(assert (=> bm!446926 (= call!446941 call!447108)))

(declare-fun bm!446927 () Bool)

(declare-fun call!447037 () Bool)

(declare-fun lt!2293846 () List!63666)

(declare-fun lt!2293743 () Regex!15789)

(declare-fun c!1020907 () Bool)

(declare-fun matchR!7974 (Regex!15789 List!63666) Bool)

(assert (=> bm!446927 (= call!447037 (matchR!7974 (ite c!1020907 lt!2293743 lt!2293701) (ite c!1020907 s!2326 lt!2293846)))))

(declare-fun e!3546385 () Bool)

(assert (=> b!5772936 e!3546385))

(declare-fun res!2436650 () Bool)

(assert (=> b!5772936 (=> (not res!2436650) (not e!3546385))))

(declare-fun call!446933 () Bool)

(assert (=> b!5772936 (= res!2436650 call!446933)))

(declare-fun lt!2293759 () Unit!156778)

(declare-fun call!446957 () Unit!156778)

(assert (=> b!5772936 (= lt!2293759 call!446957)))

(assert (=> b!5772936 call!447037))

(declare-fun lt!2293742 () Unit!156778)

(declare-fun call!446949 () Unit!156778)

(assert (=> b!5772936 (= lt!2293742 call!446949)))

(declare-fun lt!2293740 () List!63666)

(declare-fun call!446926 () List!63666)

(assert (=> b!5772936 (= lt!2293740 call!446926)))

(declare-fun call!447000 () List!63666)

(assert (=> b!5772936 (= lt!2293740 call!447000)))

(declare-fun lt!2293853 () List!63666)

(declare-fun call!447092 () List!63666)

(assert (=> b!5772936 (= lt!2293853 call!447092)))

(declare-fun call!446939 () List!63666)

(assert (=> b!5772936 (= lt!2293846 call!446939)))

(declare-fun lt!2293746 () Unit!156778)

(declare-fun call!446979 () Unit!156778)

(assert (=> b!5772936 (= lt!2293746 call!446979)))

(declare-fun lt!2293729 () tuple2!65772)

(declare-fun lt!2293880 () Option!15798)

(declare-fun get!21929 (Option!15798) tuple2!65772)

(assert (=> b!5772936 (= lt!2293729 (get!21929 lt!2293880))))

(declare-fun call!447112 () Bool)

(assert (=> b!5772936 (= call!447112 call!447017)))

(declare-fun lt!2293739 () Unit!156778)

(declare-fun call!447070 () Unit!156778)

(assert (=> b!5772936 (= lt!2293739 call!447070)))

(declare-fun call!447064 () Bool)

(declare-fun call!446927 () Bool)

(assert (=> b!5772936 (= call!447064 call!446927)))

(declare-fun lt!2293732 () Unit!156778)

(declare-fun call!447118 () Unit!156778)

(assert (=> b!5772936 (= lt!2293732 call!447118)))

(declare-fun call!447083 () Bool)

(declare-fun call!446956 () Bool)

(assert (=> b!5772936 (= call!447083 call!446956)))

(declare-fun call!447044 () Option!15798)

(assert (=> b!5772936 (= lt!2293880 call!447044)))

(declare-fun lt!2293870 () Unit!156778)

(declare-fun call!446931 () Unit!156778)

(assert (=> b!5772936 (= lt!2293870 call!446931)))

(declare-fun call!447042 () Bool)

(declare-fun call!447031 () Bool)

(assert (=> b!5772936 (= call!447042 call!447031)))

(declare-fun lt!2293785 () Unit!156778)

(declare-fun call!446948 () Unit!156778)

(assert (=> b!5772936 (= lt!2293785 call!446948)))

(declare-fun call!447002 () tuple2!65772)

(assert (=> b!5772936 (= lt!2293718 call!447002)))

(declare-fun call!447089 () Bool)

(assert (=> b!5772936 (= call!447089 call!447036)))

(declare-fun lt!2293731 () Unit!156778)

(declare-fun call!447052 () Unit!156778)

(assert (=> b!5772936 (= lt!2293731 call!447052)))

(declare-fun call!447063 () Bool)

(declare-fun call!447072 () Bool)

(assert (=> b!5772936 (= call!447063 call!447072)))

(declare-fun lt!2293789 () Option!15798)

(declare-fun call!447034 () Option!15798)

(assert (=> b!5772936 (= lt!2293789 call!447034)))

(declare-fun lt!2293854 () Unit!156778)

(declare-fun call!447076 () Unit!156778)

(assert (=> b!5772936 (= lt!2293854 call!447076)))

(declare-fun call!447110 () Bool)

(assert (=> b!5772936 call!447110))

(declare-fun lt!2293744 () Unit!156778)

(declare-fun call!447109 () Unit!156778)

(assert (=> b!5772936 (= lt!2293744 call!447109)))

(declare-fun call!446964 () Bool)

(assert (=> b!5772936 call!446964))

(declare-fun lt!2293736 () Regex!15789)

(assert (=> b!5772936 (= lt!2293736 (Concat!24634 lt!2293787 (regTwo!32090 r!7292)))))

(assert (=> b!5772936 (= lt!2293787 (Concat!24634 (reg!16118 (regOne!32090 r!7292)) lt!2293701))))

(declare-fun lt!2293722 () Unit!156778)

(declare-fun call!447124 () Unit!156778)

(assert (=> b!5772936 (= lt!2293722 call!447124)))

(declare-fun e!3546369 () Bool)

(assert (=> b!5772936 e!3546369))

(declare-fun res!2436679 () Bool)

(assert (=> b!5772936 (=> (not res!2436679) (not e!3546369))))

(declare-fun call!447087 () Bool)

(assert (=> b!5772936 (= res!2436679 call!447087)))

(declare-fun lt!2293735 () Unit!156778)

(declare-fun call!447074 () Unit!156778)

(assert (=> b!5772936 (= lt!2293735 call!447074)))

(declare-fun call!447038 () Bool)

(declare-fun call!447045 () Bool)

(assert (=> b!5772936 (= call!447038 call!447045)))

(declare-fun lt!2293826 () Unit!156778)

(declare-fun call!447048 () Unit!156778)

(assert (=> b!5772936 (= lt!2293826 call!447048)))

(declare-fun call!447088 () Bool)

(declare-fun call!446996 () Bool)

(assert (=> b!5772936 (= call!447088 call!446996)))

(declare-fun lt!2293872 () Unit!156778)

(declare-fun call!446975 () Unit!156778)

(assert (=> b!5772936 (= lt!2293872 call!446975)))

(declare-fun call!447021 () Bool)

(assert (=> b!5772936 call!447021))

(declare-fun lt!2293726 () List!63666)

(declare-fun call!446970 () List!63666)

(assert (=> b!5772936 (= lt!2293726 call!446970)))

(declare-fun lt!2293833 () List!63667)

(declare-fun call!447096 () List!63667)

(assert (=> b!5772936 (= lt!2293833 call!447096)))

(declare-fun lt!2293703 () Unit!156778)

(declare-fun call!446943 () Unit!156778)

(assert (=> b!5772936 (= lt!2293703 call!446943)))

(declare-fun lt!2293868 () Unit!156778)

(declare-fun call!447015 () Unit!156778)

(assert (=> b!5772936 (= lt!2293868 call!447015)))

(declare-fun lt!2293851 () tuple2!65772)

(declare-fun call!447029 () tuple2!65772)

(assert (=> b!5772936 (= lt!2293851 call!447029)))

(declare-fun call!446988 () Bool)

(assert (=> b!5772936 call!446988))

(declare-fun lt!2293702 () (InoxSet Context!10346))

(declare-fun lt!2293748 () Option!15798)

(declare-fun lt!2293860 () (InoxSet Context!10346))

(declare-fun findConcatSeparationZippers!142 ((InoxSet Context!10346) (InoxSet Context!10346) List!63666 List!63666 List!63666) Option!15798)

(assert (=> b!5772936 (= lt!2293748 (findConcatSeparationZippers!142 lt!2293860 lt!2293702 Nil!63542 s!2326 s!2326))))

(declare-fun lt!2293814 () Context!10346)

(declare-fun lt!2293816 () Unit!156778)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!142 ((InoxSet Context!10346) Context!10346 List!63666) Unit!156778)

(assert (=> b!5772936 (= lt!2293816 (lemmaConcatZipperMatchesStringThenFindConcatDefined!142 lt!2293860 lt!2293814 s!2326))))

(declare-fun lambda!314358 () Int)

(declare-fun map!14570 ((InoxSet Context!10346) Int) (InoxSet Context!10346))

(assert (=> b!5772936 (= (map!14570 lt!2293860 lambda!314358) (store ((as const (Array Context!10346 Bool)) false) (Context!10347 call!447096) true))))

(declare-fun lt!2293795 () Unit!156778)

(declare-fun call!447007 () Unit!156778)

(assert (=> b!5772936 (= lt!2293795 call!447007)))

(declare-fun lt!2293775 () Context!10346)

(declare-fun lt!2293878 () Unit!156778)

(declare-fun lemmaMapOnSingletonSet!150 ((InoxSet Context!10346) Context!10346 Int) Unit!156778)

(assert (=> b!5772936 (= lt!2293878 (lemmaMapOnSingletonSet!150 lt!2293860 lt!2293775 lambda!314358))))

(declare-fun e!3546380 () Unit!156778)

(declare-fun Unit!156781 () Unit!156778)

(assert (=> b!5772936 (= e!3546380 Unit!156781)))

(declare-fun bm!446928 () Bool)

(declare-fun call!446922 () Bool)

(assert (=> bm!446928 (= call!447119 call!446922)))

(declare-fun e!3546395 () Unit!156778)

(declare-fun Unit!156782 () Unit!156778)

(assert (=> b!5772937 (= e!3546395 Unit!156782)))

(declare-fun lt!2293824 () List!63667)

(assert (=> b!5772937 (= lt!2293824 (Cons!63543 (regTwo!32090 (regOne!32090 r!7292)) (t!377005 (exprs!5673 (h!69992 zl!343)))))))

(declare-fun lt!2293792 () Context!10346)

(assert (=> b!5772937 (= lt!2293792 (Context!10347 lt!2293824))))

(declare-fun lt!2293874 () (InoxSet Context!10346))

(declare-fun call!447066 () (InoxSet Context!10346))

(assert (=> b!5772937 (= lt!2293874 call!447066)))

(declare-fun call!447125 () (InoxSet Context!10346))

(assert (=> b!5772937 (= lt!2293747 call!447125)))

(declare-fun lt!2293858 () Unit!156778)

(declare-fun call!446925 () Unit!156778)

(assert (=> b!5772937 (= lt!2293858 call!446925)))

(declare-fun lt!2293819 () Bool)

(declare-fun call!447115 () Bool)

(assert (=> b!5772937 (= lt!2293819 call!447115)))

(declare-fun res!2436663 () Bool)

(assert (=> b!5772937 (= res!2436663 lt!2293819)))

(declare-fun e!3546382 () Bool)

(assert (=> b!5772937 (=> res!2436663 e!3546382)))

(declare-fun call!446999 () Bool)

(assert (=> b!5772937 (= call!446999 e!3546382)))

(declare-fun lt!2293797 () List!63667)

(assert (=> b!5772937 (= lt!2293797 (Cons!63543 (regOne!32090 (regOne!32090 r!7292)) lt!2293824))))

(declare-fun lt!2293863 () Context!10346)

(assert (=> b!5772937 (= lt!2293863 (Context!10347 lt!2293797))))

(declare-fun lt!2293772 () (InoxSet Context!10346))

(assert (=> b!5772937 (= lt!2293772 (store ((as const (Array Context!10346 Bool)) false) lt!2293863 true))))

(declare-fun lt!2293894 () (InoxSet Context!10346))

(assert (=> b!5772937 (= lt!2293894 (store ((as const (Array Context!10346 Bool)) false) lt!2293792 true))))

(declare-fun lt!2293760 () (InoxSet Context!10346))

(declare-fun call!446951 () (InoxSet Context!10346))

(assert (=> b!5772937 (= lt!2293760 call!446951)))

(declare-fun lt!2293876 () Unit!156778)

(declare-fun call!447069 () Unit!156778)

(assert (=> b!5772937 (= lt!2293876 call!447069)))

(declare-fun call!447067 () (InoxSet Context!10346))

(assert (=> b!5772937 (= call!447067 call!446951)))

(declare-fun lt!2293888 () (InoxSet Context!10346))

(declare-fun call!447093 () (InoxSet Context!10346))

(assert (=> b!5772937 (= lt!2293888 call!447093)))

(declare-fun lt!2293808 () Unit!156778)

(declare-fun call!447047 () Unit!156778)

(assert (=> b!5772937 (= lt!2293808 call!447047)))

(declare-fun call!447028 () (InoxSet Context!10346))

(assert (=> b!5772937 (= call!447028 call!447093)))

(declare-fun lt!2293713 () Unit!156778)

(declare-fun call!447071 () Unit!156778)

(assert (=> b!5772937 (= lt!2293713 call!447071)))

(declare-fun res!2436652 () Bool)

(assert (=> b!5772937 (= res!2436652 lt!2293819)))

(declare-fun e!3546392 () Bool)

(assert (=> b!5772937 (=> res!2436652 e!3546392)))

(declare-fun call!446921 () Bool)

(assert (=> b!5772937 (= call!446921 e!3546392)))

(declare-fun call!447024 () Regex!15789)

(assert (=> b!5772937 (= lt!2293743 call!447024)))

(declare-fun lt!2293895 () Unit!156778)

(declare-fun call!446992 () Unit!156778)

(assert (=> b!5772937 (= lt!2293895 call!446992)))

(declare-fun lt!2293773 () Bool)

(assert (=> b!5772937 (= lt!2293773 call!447037)))

(declare-fun call!446923 () Bool)

(assert (=> b!5772937 (= lt!2293773 call!446923)))

(declare-fun call!447008 () Regex!15789)

(assert (=> b!5772937 (= lt!2293835 call!447008)))

(declare-fun lt!2293891 () Unit!156778)

(declare-fun call!447022 () Unit!156778)

(assert (=> b!5772937 (= lt!2293891 call!447022)))

(declare-fun lt!2293756 () Bool)

(declare-fun call!447020 () Bool)

(assert (=> b!5772937 (= lt!2293756 call!447020)))

(assert (=> b!5772937 (= lt!2293756 call!447119)))

(declare-fun lt!2293762 () Unit!156778)

(assert (=> b!5772937 (= lt!2293762 call!447091)))

(declare-fun call!447082 () Bool)

(assert (=> b!5772937 (= lt!2293773 call!447082)))

(declare-fun lt!2293842 () Unit!156778)

(declare-fun call!446935 () Unit!156778)

(assert (=> b!5772937 (= lt!2293842 call!446935)))

(assert (=> b!5772937 (= call!446959 call!446944)))

(declare-fun lt!2293751 () Unit!156778)

(declare-fun call!446942 () Unit!156778)

(assert (=> b!5772937 (= lt!2293751 call!446942)))

(declare-fun call!446971 () Bool)

(declare-fun call!447085 () Bool)

(assert (=> b!5772937 (= call!446971 call!447085)))

(declare-fun lt!2293717 () Unit!156778)

(assert (=> b!5772937 (= lt!2293717 call!447005)))

(declare-fun call!446965 () Bool)

(assert (=> b!5772937 (= lt!2293756 call!446965)))

(declare-fun call!447113 () Regex!15789)

(assert (=> b!5772937 (= lt!2293776 call!447113)))

(declare-fun lt!2293801 () Unit!156778)

(declare-fun call!447102 () Unit!156778)

(assert (=> b!5772937 (= lt!2293801 call!447102)))

(declare-fun call!446953 () Bool)

(declare-fun call!447097 () Bool)

(assert (=> b!5772937 (= call!446953 call!447097)))

(declare-fun lt!2293782 () Unit!156778)

(declare-fun call!446967 () Unit!156778)

(assert (=> b!5772937 (= lt!2293782 call!446967)))

(declare-fun call!446987 () Bool)

(declare-fun call!447106 () Bool)

(assert (=> b!5772937 (= call!446987 call!447106)))

(declare-fun lt!2293820 () Unit!156778)

(declare-fun call!446989 () Unit!156778)

(assert (=> b!5772937 (= lt!2293820 call!446989)))

(declare-fun res!2436665 () Bool)

(declare-fun call!447099 () Bool)

(declare-fun call!447040 () Bool)

(assert (=> b!5772937 (= res!2436665 (= call!447099 call!447040))))

(declare-fun e!3546388 () Bool)

(assert (=> b!5772937 (=> (not res!2436665) (not e!3546388))))

(assert (=> b!5772937 e!3546388))

(declare-fun bm!446929 () Bool)

(declare-fun call!447094 () Bool)

(assert (=> bm!446929 (= call!447094 call!446965)))

(declare-fun bm!446930 () Bool)

(declare-fun call!446954 () Unit!156778)

(assert (=> bm!446930 (= call!446954 call!447043)))

(declare-fun bm!446931 () Bool)

(declare-fun call!447001 () Bool)

(assert (=> bm!446931 (= call!447064 call!447001)))

(declare-fun bm!446932 () Bool)

(declare-fun call!446930 () Bool)

(declare-fun call!447055 () Bool)

(assert (=> bm!446932 (= call!446930 call!447055)))

(declare-fun bm!446933 () Bool)

(declare-fun call!447060 () Regex!15789)

(declare-fun call!446973 () Regex!15789)

(assert (=> bm!446933 (= call!447060 call!446973)))

(declare-fun bm!446934 () Bool)

(declare-fun call!446936 () Bool)

(assert (=> bm!446934 (= call!447042 call!446936)))

(declare-fun bm!446935 () Bool)

(declare-fun call!447004 () Unit!156778)

(declare-fun call!446966 () Unit!156778)

(assert (=> bm!446935 (= call!447004 call!446966)))

(declare-fun c!1020910 () Bool)

(declare-fun bm!446936 () Bool)

(declare-fun call!447062 () Option!15798)

(declare-fun call!447019 () Option!15798)

(assert (=> bm!446936 (= call!446953 (isDefined!12501 (ite c!1020907 call!447019 (ite c!1020910 call!447062 lt!2293880))))))

(declare-fun bm!446937 () Bool)

(assert (=> bm!446937 (= call!447043 call!447005)))

(declare-fun c!1020903 () Bool)

(declare-fun lt!2293864 () tuple2!65772)

(declare-fun bm!446938 () Bool)

(declare-fun ++!14006 (List!63666 List!63666) List!63666)

(assert (=> bm!446938 (= call!446926 (++!14006 (ite c!1020903 (_2!36189 lt!2293864) (_1!36189 lt!2293729)) (ite c!1020903 (_2!36189 lt!2293843) lt!2293853)))))

(declare-fun b!5772938 () Bool)

(declare-fun e!3546384 () Bool)

(declare-fun tp_is_empty!40831 () Bool)

(declare-fun tp!1594486 () Bool)

(assert (=> b!5772938 (= e!3546384 (and tp_is_empty!40831 tp!1594486))))

(declare-fun b!5772939 () Bool)

(declare-fun e!3546356 () Unit!156778)

(declare-fun Unit!156783 () Unit!156778)

(assert (=> b!5772939 (= e!3546356 Unit!156783)))

(assert (=> b!5772939 (= lt!2293701 (regOne!32090 r!7292))))

(declare-fun lt!2293757 () List!63667)

(assert (=> b!5772939 (= lt!2293757 (Cons!63543 lt!2293701 (t!377005 (exprs!5673 (h!69992 zl!343)))))))

(declare-fun lt!2293900 () Context!10346)

(assert (=> b!5772939 (= lt!2293900 (Context!10347 (Cons!63543 (reg!16118 (regOne!32090 r!7292)) lt!2293757)))))

(declare-fun lt!2293763 () (InoxSet Context!10346))

(assert (=> b!5772939 (= lt!2293763 (store ((as const (Array Context!10346 Bool)) false) lt!2293900 true))))

(declare-fun lt!2293884 () (InoxSet Context!10346))

(declare-fun call!447053 () (InoxSet Context!10346))

(assert (=> b!5772939 (= lt!2293884 call!447053)))

(declare-fun lambda!314343 () Int)

(declare-fun lt!2293749 () Unit!156778)

(declare-fun lemmaFlatMapOnSingletonSet!934 ((InoxSet Context!10346) Context!10346 Int) Unit!156778)

(assert (=> b!5772939 (= lt!2293749 (lemmaFlatMapOnSingletonSet!934 lt!2293763 lt!2293900 lambda!314343))))

(declare-fun call!446983 () (InoxSet Context!10346))

(assert (=> b!5772939 (= call!446983 call!447053)))

(assert (=> b!5772939 (= lt!2293814 (Context!10347 lt!2293757))))

(declare-fun lt!2293768 () (InoxSet Context!10346))

(declare-fun call!447046 () (InoxSet Context!10346))

(assert (=> b!5772939 (= lt!2293768 call!447046)))

(declare-fun lt!2293804 () Regex!15789)

(assert (=> b!5772939 (= lt!2293804 (Concat!24634 lt!2293701 (regTwo!32090 r!7292)))))

(declare-fun lt!2293710 () Regex!15789)

(assert (=> b!5772939 (= lt!2293710 (Concat!24634 (reg!16118 (regOne!32090 r!7292)) lt!2293804))))

(declare-fun lt!2293745 () List!63667)

(assert (=> b!5772939 (= lt!2293745 (Cons!63543 (reg!16118 (regOne!32090 r!7292)) Nil!63543))))

(assert (=> b!5772939 (= lt!2293775 (Context!10347 lt!2293745))))

(assert (=> b!5772939 (= lt!2293860 (store ((as const (Array Context!10346 Bool)) false) lt!2293775 true))))

(assert (=> b!5772939 (= lt!2293702 (store ((as const (Array Context!10346 Bool)) false) lt!2293814 true))))

(declare-fun lt!2293780 () (InoxSet Context!10346))

(declare-fun call!446986 () (InoxSet Context!10346))

(assert (=> b!5772939 (= lt!2293780 call!446986)))

(declare-fun lt!2293707 () (InoxSet Context!10346))

(declare-fun derivationStepZipperUp!1057 (Context!10346 C!31848) (InoxSet Context!10346))

(assert (=> b!5772939 (= lt!2293707 (derivationStepZipperUp!1057 lt!2293814 (h!69990 s!2326)))))

(declare-fun lt!2293796 () Unit!156778)

(declare-fun call!447032 () Unit!156778)

(assert (=> b!5772939 (= lt!2293796 call!447032)))

(declare-fun call!447018 () (InoxSet Context!10346))

(assert (=> b!5772939 (= call!447018 call!446986)))

(declare-fun lt!2293720 () Unit!156778)

(declare-fun call!447105 () Unit!156778)

(assert (=> b!5772939 (= lt!2293720 call!447105)))

(assert (=> b!5772939 (= call!447028 (derivationStepZipperUp!1057 lt!2293814 (h!69990 s!2326)))))

(declare-fun lt!2293812 () Unit!156778)

(declare-fun call!447081 () Unit!156778)

(assert (=> b!5772939 (= lt!2293812 call!447081)))

(declare-fun lt!2293893 () Bool)

(declare-fun call!446968 () Bool)

(assert (=> b!5772939 (= lt!2293893 call!446968)))

(declare-fun res!2436668 () Bool)

(declare-fun call!446960 () Bool)

(assert (=> b!5772939 (= res!2436668 (= lt!2293893 call!446960))))

(declare-fun e!3546389 () Bool)

(assert (=> b!5772939 (=> (not res!2436668) (not e!3546389))))

(assert (=> b!5772939 e!3546389))

(assert (=> b!5772939 (= c!1020903 lt!2293862)))

(declare-fun lt!2293754 () Unit!156778)

(declare-fun e!3546363 () Unit!156778)

(assert (=> b!5772939 (= lt!2293754 e!3546363)))

(assert (=> b!5772939 (= lt!2293862 call!446994)))

(declare-fun bm!446939 () Bool)

(declare-fun call!447058 () Unit!156778)

(assert (=> bm!446939 (= call!446931 call!447058)))

(declare-fun bm!446940 () Bool)

(declare-fun call!446985 () Option!15798)

(assert (=> bm!446940 (= call!447044 call!446985)))

(declare-fun bm!446941 () Bool)

(assert (=> bm!446941 (= call!447031 call!447055)))

(declare-fun b!5772940 () Bool)

(declare-fun e!3546374 () Bool)

(assert (=> b!5772940 (= e!3546374 lt!2293893)))

(declare-fun bm!446942 () Bool)

(declare-fun lt!2293886 () Context!10346)

(declare-fun lt!2293786 () (InoxSet Context!10346))

(assert (=> bm!446942 (= call!447105 (lemmaFlatMapOnSingletonSet!934 (ite c!1020902 lt!2293786 lt!2293702) (ite c!1020902 lt!2293886 lt!2293814) (ite c!1020902 lambda!314343 lambda!314343)))))

(declare-fun bm!446943 () Bool)

(declare-fun call!446978 () Bool)

(declare-fun call!447111 () Bool)

(assert (=> bm!446943 (= call!446978 call!447111)))

(declare-fun bm!446944 () Bool)

(declare-fun call!447078 () Bool)

(assert (=> bm!446944 (= call!447001 call!447078)))

(declare-fun lt!2293857 () Option!15798)

(declare-fun bm!446945 () Bool)

(assert (=> bm!446945 (= call!447002 (get!21929 (ite c!1020903 lt!2293857 lt!2293789)))))

(declare-fun c!1020906 () Bool)

(declare-fun bm!446946 () Bool)

(declare-fun lt!2293818 () (InoxSet Context!10346))

(declare-fun lt!2293774 () (InoxSet Context!10346))

(declare-fun call!447073 () Bool)

(declare-fun z!1189 () (InoxSet Context!10346))

(declare-fun c!1020908 () Bool)

(assert (=> bm!446946 (= call!447073 (matchZipper!1927 (ite c!1020902 lt!2293774 (ite c!1020907 lt!2293888 (ite c!1020908 z!1189 (ite c!1020906 ((_ map or) lt!2293818 lt!2293761) z!1189)))) (ite c!1020902 s!2326 (ite c!1020907 (t!377004 s!2326) (ite c!1020908 s!2326 (ite c!1020906 (t!377004 s!2326) s!2326))))))))

(declare-fun b!5772941 () Bool)

(declare-fun e!3546377 () Bool)

(assert (=> b!5772941 (= e!3546377 tp_is_empty!40831)))

(declare-fun bm!446947 () Bool)

(declare-fun lt!2293882 () Context!10346)

(declare-fun call!446990 () (InoxSet Context!10346))

(assert (=> bm!446947 (= call!446990 (derivationStepZipperUp!1057 (ite c!1020902 lt!2293882 (ite c!1020907 lt!2293792 lt!2293899)) (h!69990 s!2326)))))

(declare-fun bm!446948 () Bool)

(declare-fun call!447054 () Bool)

(declare-fun call!447090 () Bool)

(assert (=> bm!446948 (= call!447054 call!447090)))

(declare-fun bm!446949 () Bool)

(assert (=> bm!446949 (= call!447092 (++!14006 (ite c!1020903 (_1!36189 lt!2293864) (_2!36189 lt!2293729)) (ite c!1020903 (_2!36189 lt!2293864) (_2!36189 lt!2293718))))))

(declare-fun bm!446950 () Bool)

(assert (=> bm!446950 (= call!446968 call!447099)))

(declare-fun bm!446951 () Bool)

(declare-fun call!447101 () Bool)

(assert (=> bm!446951 (= call!446927 call!447101)))

(declare-fun lt!2293875 () Regex!15789)

(declare-fun call!446969 () Bool)

(declare-fun bm!446952 () Bool)

(declare-fun matchRSpec!2892 (Regex!15789 List!63666) Bool)

(assert (=> bm!446952 (= call!446969 (matchRSpec!2892 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736)) (ite c!1020902 s!2326 (ite c!1020903 (_1!36189 lt!2293843) s!2326))))))

(declare-fun bm!446953 () Bool)

(declare-fun c!1020900 () Bool)

(assert (=> bm!446953 (= call!446944 (Exists!2889 (ite c!1020907 lambda!314344 (ite c!1020910 lambda!314350 (ite c!1020903 lambda!314354 (ite c!1020900 lambda!314361 lambda!314365))))))))

(declare-fun bm!446954 () Bool)

(declare-fun call!447121 () Unit!156778)

(assert (=> bm!446954 (= call!447070 call!447121)))

(declare-fun bm!446955 () Bool)

(declare-fun lt!2293706 () Regex!15789)

(declare-fun mainMatchTheorem!2892 (Regex!15789 List!63666) Unit!156778)

(assert (=> bm!446955 (= call!446991 (mainMatchTheorem!2892 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293835 (ite c!1020908 (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293736 lt!2293701)) (regTwo!32090 r!7292)))) (ite (or c!1020902 c!1020907) s!2326 (ite c!1020908 (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 s!2326 Nil!63542)) s!2326))))))

(declare-fun b!5772942 () Bool)

(declare-fun res!2436671 () Bool)

(assert (=> b!5772942 (=> res!2436671 e!3546362)))

(declare-fun generalisedConcat!1404 (List!63667) Regex!15789)

(assert (=> b!5772942 (= res!2436671 (not (= r!7292 (generalisedConcat!1404 (exprs!5673 (h!69992 zl!343))))))))

(declare-fun bm!446956 () Bool)

(declare-fun call!447023 () Bool)

(assert (=> bm!446956 (= call!447087 call!447023)))

(declare-fun b!5772943 () Bool)

(declare-fun e!3546368 () Bool)

(assert (=> b!5772943 (= e!3546368 false)))

(declare-fun bm!446957 () Bool)

(assert (=> bm!446957 (= call!446942 (lemmaExistCutMatchRandMatchRSpecEquivalent!1518 (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))) (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293738 lt!2293701)) (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718)))))))

(declare-fun bm!446958 () Bool)

(declare-fun lt!2293711 () (InoxSet Context!10346))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!814 ((InoxSet Context!10346) (InoxSet Context!10346) List!63666) Unit!156778)

(assert (=> bm!446958 (= call!447071 (lemmaZipperConcatMatchesSameAsBothZippers!814 (ite c!1020902 lt!2293777 lt!2293874) (ite c!1020902 lt!2293711 lt!2293888) (t!377004 s!2326)))))

(declare-fun bm!446959 () Bool)

(assert (=> bm!446959 (= call!447081 call!447098)))

(declare-fun bm!446960 () Bool)

(declare-fun call!447056 () Bool)

(declare-fun lt!2293716 () List!63666)

(declare-fun lt!2293730 () Regex!15789)

(declare-fun c!1020911 () Bool)

(assert (=> bm!446960 (= call!447056 (matchR!7974 (ite c!1020902 lt!2293730 (ite c!1020903 (ite c!1020911 lt!2293892 lt!2293804) (ite c!1020900 (reg!16118 (regOne!32090 r!7292)) lt!2293701))) (ite c!1020902 s!2326 (ite c!1020903 (ite c!1020911 s!2326 lt!2293716) (ite c!1020900 (_1!36189 lt!2293851) Nil!63542)))))))

(declare-fun bm!446961 () Bool)

(assert (=> bm!446961 (= call!447033 call!447047)))

(declare-fun bm!446962 () Bool)

(assert (=> bm!446962 (= call!447008 (generalisedConcat!1404 (ite c!1020907 lt!2293824 (t!377005 (exprs!5673 (h!69992 zl!343))))))))

(declare-fun bm!446963 () Bool)

(declare-fun lt!2293725 () Context!10346)

(declare-fun lt!2293771 () (InoxSet Context!10346))

(declare-fun lt!2293823 () (InoxSet Context!10346))

(assert (=> bm!446963 (= call!447069 (lemmaFlatMapOnSingletonSet!934 (ite c!1020907 lt!2293772 (ite c!1020910 lt!2293771 (ite c!1020908 lt!2293860 lt!2293823))) (ite c!1020907 lt!2293863 (ite c!1020910 lt!2293725 (ite c!1020908 lt!2293775 lt!2293899))) (ite c!1020907 lambda!314343 (ite c!1020910 lambda!314343 (ite c!1020908 lambda!314343 lambda!314343)))))))

(declare-fun bm!446964 () Bool)

(declare-fun call!446946 () Unit!156778)

(assert (=> bm!446964 (= call!447047 call!446946)))

(declare-fun bm!446965 () Bool)

(declare-fun call!447016 () Bool)

(assert (=> bm!446965 (= call!447020 call!447016)))

(declare-fun bm!446966 () Bool)

(declare-fun call!446958 () Bool)

(assert (=> bm!446966 (= call!446958 call!447085)))

(declare-fun bm!446967 () Bool)

(assert (=> bm!446967 (= call!446921 (matchZipper!1927 (ite c!1020902 lt!2293761 ((_ map or) lt!2293874 lt!2293888)) (t!377004 s!2326)))))

(declare-fun bm!446968 () Bool)

(declare-fun call!446997 () Bool)

(assert (=> bm!446968 (= call!446997 call!447054)))

(declare-fun bm!446969 () Bool)

(declare-fun call!446976 () Bool)

(assert (=> bm!446969 (= call!446976 call!446963)))

(declare-fun b!5772944 () Bool)

(declare-fun e!3546370 () Unit!156778)

(declare-fun Unit!156784 () Unit!156778)

(assert (=> b!5772944 (= e!3546370 Unit!156784)))

(assert (=> b!5772944 (= lt!2293798 (store ((as const (Array Context!10346 Bool)) false) lt!2293899 true))))

(declare-fun lt!2293790 () Regex!15789)

(assert (=> b!5772944 (= lt!2293790 call!446973)))

(declare-fun lt!2293799 () Unit!156778)

(assert (=> b!5772944 (= lt!2293799 call!446984)))

(declare-fun call!447086 () Bool)

(assert (=> b!5772944 (= call!447086 call!446963)))

(declare-fun b!5772945 () Bool)

(assert (=> b!5772945 (= c!1020908 ((_ is Star!15789) (regOne!32090 r!7292)))))

(declare-fun e!3546357 () Unit!156778)

(assert (=> b!5772945 (= e!3546357 e!3546356)))

(declare-fun bm!446970 () Bool)

(declare-fun call!446929 () (InoxSet Context!10346))

(assert (=> bm!446970 (= call!447049 call!446929)))

(declare-fun bm!446971 () Bool)

(assert (=> bm!446971 (= call!447101 (Exists!2889 (ite c!1020910 lambda!314348 (ite c!1020903 lambda!314355 lambda!314363))))))

(declare-fun bm!446972 () Bool)

(declare-fun call!446977 () Bool)

(declare-fun call!447116 () Bool)

(assert (=> bm!446972 (= call!446977 call!447116)))

(declare-fun bm!446973 () Bool)

(declare-fun call!447079 () Bool)

(declare-fun call!446972 () Bool)

(assert (=> bm!446973 (= call!447079 call!446972)))

(declare-fun bm!446974 () Bool)

(assert (=> bm!446974 (= call!446986 (derivationStepZipperUp!1057 (ite c!1020908 lt!2293775 lt!2293899) (h!69990 s!2326)))))

(declare-fun bm!446975 () Bool)

(assert (=> bm!446975 (= call!447021 call!446978)))

(declare-fun setRes!38799 () Bool)

(declare-fun tp!1594491 () Bool)

(declare-fun setNonEmpty!38799 () Bool)

(declare-fun setElem!38799 () Context!10346)

(declare-fun e!3546376 () Bool)

(assert (=> setNonEmpty!38799 (= setRes!38799 (and tp!1594491 (inv!82719 setElem!38799) e!3546376))))

(declare-fun setRest!38799 () (InoxSet Context!10346))

(assert (=> setNonEmpty!38799 (= z!1189 ((_ map or) (store ((as const (Array Context!10346 Bool)) false) setElem!38799 true) setRest!38799))))

(declare-fun bm!446976 () Bool)

(assert (=> bm!446976 (= call!447117 call!447093)))

(declare-fun lt!2293699 () List!63667)

(declare-fun call!447011 () Regex!15789)

(declare-fun lt!2293704 () List!63667)

(declare-fun bm!446977 () Bool)

(assert (=> bm!446977 (= call!447011 (generalisedConcat!1404 (ite c!1020902 lt!2293699 (ite c!1020907 lt!2293797 lt!2293704))))))

(declare-fun bm!446978 () Bool)

(declare-fun call!447061 () (InoxSet Context!10346))

(assert (=> bm!446978 (= call!447067 call!447061)))

(declare-fun bm!446979 () Bool)

(assert (=> bm!446979 (= call!447110 call!446969)))

(declare-fun bm!446980 () Bool)

(declare-fun call!447068 () Unit!156778)

(assert (=> bm!446980 (= call!447068 call!446942)))

(declare-fun bm!446981 () Bool)

(assert (=> bm!446981 (= call!447093 call!446990)))

(declare-fun b!5772946 () Bool)

(declare-fun e!3546367 () Unit!156778)

(declare-fun Unit!156785 () Unit!156778)

(assert (=> b!5772946 (= e!3546367 Unit!156785)))

(declare-fun lt!2293714 () Unit!156778)

(assert (=> b!5772946 (= lt!2293714 (lemmaZipperConcatMatchesSameAsBothZippers!814 lt!2293818 lt!2293761 (t!377004 s!2326)))))

(declare-fun res!2436664 () Bool)

(assert (=> b!5772946 (= res!2436664 (matchZipper!1927 lt!2293818 (t!377004 s!2326)))))

(declare-fun e!3546361 () Bool)

(assert (=> b!5772946 (=> res!2436664 e!3546361)))

(assert (=> b!5772946 (= (matchZipper!1927 ((_ map or) lt!2293818 lt!2293761) (t!377004 s!2326)) e!3546361)))

(declare-fun lt!2293889 () Option!15798)

(declare-fun bm!446982 () Bool)

(assert (=> bm!446982 (= call!447063 (isDefined!12501 (ite c!1020903 lt!2293889 lt!2293789)))))

(declare-fun lt!2293793 () List!63666)

(declare-fun bm!446983 () Bool)

(assert (=> bm!446983 (= call!446970 (++!14006 (ite c!1020903 lt!2293793 (_1!36189 lt!2293851)) (ite c!1020903 (_2!36189 lt!2293843) (_2!36189 lt!2293851))))))

(declare-fun bm!446984 () Bool)

(declare-fun flatMap!1402 ((InoxSet Context!10346) Int) (InoxSet Context!10346))

(assert (=> bm!446984 (= call!447061 (flatMap!1402 (ite c!1020902 lt!2293786 (ite c!1020907 lt!2293772 (ite c!1020908 lt!2293860 lt!2293823))) (ite c!1020902 lambda!314343 (ite c!1020907 lambda!314343 (ite c!1020908 lambda!314343 lambda!314343)))))))

(declare-fun bm!446985 () Bool)

(declare-fun call!447095 () Bool)

(assert (=> bm!446985 (= call!447095 call!446968)))

(declare-fun bm!446986 () Bool)

(declare-fun call!447025 () Regex!15789)

(assert (=> bm!446986 (= call!446947 call!447025)))

(declare-fun bm!446987 () Bool)

(declare-fun call!446924 () Bool)

(declare-fun lt!2293836 () Regex!15789)

(assert (=> bm!446987 (= call!446924 (matchR!7974 (ite c!1020910 (Concat!24634 (regOne!32090 r!7292) lt!2293738) (ite c!1020903 (reg!16118 (regOne!32090 r!7292)) (ite c!1020900 lt!2293710 lt!2293836))) (ite c!1020910 s!2326 (ite c!1020903 (_1!36189 lt!2293864) (ite c!1020900 lt!2293726 s!2326)))))))

(declare-fun bm!446988 () Bool)

(declare-fun call!447123 () Unit!156778)

(assert (=> bm!446988 (= call!447091 call!447123)))

(declare-fun bm!446989 () Bool)

(declare-fun call!447035 () Bool)

(declare-fun call!446980 () Bool)

(assert (=> bm!446989 (= call!447035 call!446980)))

(declare-fun b!5772947 () Bool)

(declare-fun e!3546366 () Unit!156778)

(declare-fun Unit!156786 () Unit!156778)

(assert (=> b!5772947 (= e!3546366 Unit!156786)))

(declare-fun lt!2293802 () Unit!156778)

(assert (=> b!5772947 (= lt!2293802 (lemmaZipperConcatMatchesSameAsBothZippers!814 lt!2293777 lt!2293761 (t!377004 s!2326)))))

(declare-fun res!2436659 () Bool)

(declare-fun lt!2293866 () Bool)

(assert (=> b!5772947 (= res!2436659 lt!2293866)))

(declare-fun e!3546394 () Bool)

(assert (=> b!5772947 (=> res!2436659 e!3546394)))

(assert (=> b!5772947 (= call!446976 e!3546394)))

(declare-fun bm!446990 () Bool)

(declare-fun call!447009 () Bool)

(assert (=> bm!446990 (= call!447009 call!446994)))

(declare-fun b!5772948 () Bool)

(declare-fun e!3546359 () Bool)

(assert (=> b!5772948 (= c!1020907 e!3546359)))

(declare-fun res!2436661 () Bool)

(assert (=> b!5772948 (=> (not res!2436661) (not e!3546359))))

(assert (=> b!5772948 (= res!2436661 ((_ is Concat!24634) (regOne!32090 r!7292)))))

(declare-fun e!3546372 () Unit!156778)

(assert (=> b!5772948 (= e!3546372 e!3546395)))

(declare-fun e!3546364 () Bool)

(assert (=> b!5772949 (= e!3546386 e!3546364)))

(declare-fun res!2436655 () Bool)

(assert (=> b!5772949 (=> res!2436655 e!3546364)))

(declare-fun lt!2293700 () (InoxSet Context!10346))

(declare-fun derivationStepZipper!1864 ((InoxSet Context!10346) C!31848) (InoxSet Context!10346))

(assert (=> b!5772949 (= res!2436655 (not (= lt!2293761 (derivationStepZipper!1864 lt!2293700 (h!69990 s!2326)))))))

(assert (=> b!5772949 (= (flatMap!1402 lt!2293700 lambda!314343) (derivationStepZipperUp!1057 lt!2293899 (h!69990 s!2326)))))

(declare-fun lt!2293728 () Unit!156778)

(assert (=> b!5772949 (= lt!2293728 (lemmaFlatMapOnSingletonSet!934 lt!2293700 lt!2293899 lambda!314343))))

(assert (=> b!5772949 (= lt!2293700 (store ((as const (Array Context!10346 Bool)) false) lt!2293899 true))))

(declare-fun lt!2293805 () Unit!156778)

(assert (=> b!5772949 (= lt!2293805 e!3546370)))

(assert (=> b!5772949 (= c!1020905 (and ((_ is ElementMatch!15789) (regOne!32090 r!7292)) (= (c!1020912 (regOne!32090 r!7292)) (h!69990 s!2326))))))

(declare-fun lt!2293885 () Unit!156778)

(assert (=> b!5772949 (= lt!2293885 e!3546367)))

(declare-fun c!1020901 () Bool)

(declare-fun nullable!5821 (Regex!15789) Bool)

(assert (=> b!5772949 (= c!1020901 (nullable!5821 (h!69991 (exprs!5673 (h!69992 zl!343)))))))

(assert (=> b!5772949 (= (flatMap!1402 z!1189 lambda!314343) (derivationStepZipperUp!1057 (h!69992 zl!343) (h!69990 s!2326)))))

(declare-fun lt!2293705 () Unit!156778)

(assert (=> b!5772949 (= lt!2293705 (lemmaFlatMapOnSingletonSet!934 z!1189 (h!69992 zl!343) lambda!314343))))

(assert (=> b!5772949 (= lt!2293761 (derivationStepZipperUp!1057 lt!2293899 (h!69990 s!2326)))))

(declare-fun derivationStepZipperDown!1131 (Regex!15789 Context!10346 C!31848) (InoxSet Context!10346))

(assert (=> b!5772949 (= lt!2293818 (derivationStepZipperDown!1131 (h!69991 (exprs!5673 (h!69992 zl!343))) lt!2293899 (h!69990 s!2326)))))

(assert (=> b!5772949 (= lt!2293899 (Context!10347 (t!377005 (exprs!5673 (h!69992 zl!343)))))))

(declare-fun lt!2293811 () (InoxSet Context!10346))

(assert (=> b!5772949 (= lt!2293811 (derivationStepZipperUp!1057 (Context!10347 (Cons!63543 (h!69991 (exprs!5673 (h!69992 zl!343))) (t!377005 (exprs!5673 (h!69992 zl!343))))) (h!69990 s!2326)))))

(declare-fun bm!446991 () Bool)

(assert (=> bm!446991 (= call!446967 (lemmaExistCutMatchRandMatchRSpecEquivalent!1518 (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292)))))) (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293831 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542)))))

(declare-fun bm!446992 () Bool)

(assert (=> bm!446992 (= call!447022 call!446955)))

(declare-fun bm!446993 () Bool)

(declare-fun call!446920 () Bool)

(assert (=> bm!446993 (= call!446999 call!446920)))

(declare-fun bm!446994 () Bool)

(assert (=> bm!446994 (= call!447058 call!446935)))

(declare-fun bm!446995 () Bool)

(assert (=> bm!446995 (= call!447111 (matchZipper!1927 (ite (or c!1020902 c!1020907) z!1189 (ite c!1020908 (store ((as const (Array Context!10346 Bool)) false) (Context!10347 lt!2293833) true) z!1189)) (ite (or c!1020902 c!1020907) s!2326 (ite c!1020908 lt!2293726 s!2326))))))

(assert (=> b!5772950 e!3546368))

(declare-fun res!2436667 () Bool)

(assert (=> b!5772950 (=> (not res!2436667) (not e!3546368))))

(assert (=> b!5772950 (= res!2436667 call!446933)))

(declare-fun lt!2293844 () Unit!156778)

(assert (=> b!5772950 (= lt!2293844 call!446957)))

(assert (=> b!5772950 (= call!447112 call!447064)))

(declare-fun lt!2293752 () Unit!156778)

(assert (=> b!5772950 (= lt!2293752 call!447070)))

(assert (=> b!5772950 (= call!447089 call!447072)))

(declare-fun lt!2293832 () Unit!156778)

(assert (=> b!5772950 (= lt!2293832 call!447052)))

(assert (=> b!5772950 (= call!446988 call!447036)))

(declare-fun lt!2293766 () Unit!156778)

(assert (=> b!5772950 (= lt!2293766 call!447076)))

(assert (=> b!5772950 (= call!447088 call!447031)))

(declare-fun lt!2293817 () Unit!156778)

(assert (=> b!5772950 (= lt!2293817 call!447109)))

(assert (=> b!5772950 (= call!447087 call!447045)))

(declare-fun lt!2293897 () Unit!156778)

(assert (=> b!5772950 (= lt!2293897 call!447048)))

(assert (=> b!5772950 (= lt!2293836 call!446947)))

(assert (=> b!5772950 (= call!447049 call!447117)))

(declare-fun lt!2293784 () Unit!156778)

(assert (=> b!5772950 (= lt!2293784 call!447033)))

(declare-fun lt!2293719 () (InoxSet Context!10346))

(assert (=> b!5772950 (= lt!2293719 (store ((as const (Array Context!10346 Bool)) false) lt!2293899 true))))

(declare-fun Unit!156787 () Unit!156778)

(assert (=> b!5772950 (= e!3546380 Unit!156787)))

(declare-fun bm!446996 () Bool)

(declare-fun call!447057 () Bool)

(assert (=> bm!446996 (= call!447040 call!447057)))

(declare-fun call!446961 () Unit!156778)

(declare-fun bm!446997 () Bool)

(assert (=> bm!446997 (= call!446961 (lemmaZipperConcatMatchesSameAsBothZippers!814 (ite c!1020902 lt!2293711 (ite c!1020907 lt!2293874 lt!2293818)) (ite c!1020902 lt!2293761 (ite c!1020907 lt!2293747 lt!2293761)) (t!377004 s!2326)))))

(declare-fun bm!446998 () Bool)

(assert (=> bm!446998 (= call!447124 call!446989)))

(declare-fun b!5772951 () Bool)

(declare-fun e!3546387 () Bool)

(assert (=> b!5772951 (= e!3546387 call!446921)))

(declare-fun bm!446999 () Bool)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!154 (Context!10346 Context!10346 List!63666 List!63666) Unit!156778)

(assert (=> bm!446999 (= call!447015 (lemmaConcatenateContextMatchesConcatOfStrings!154 lt!2293775 lt!2293814 (ite c!1020903 (_1!36189 lt!2293864) (_1!36189 lt!2293851)) (ite c!1020903 lt!2293716 (_2!36189 lt!2293851))))))

(declare-fun bm!447000 () Bool)

(assert (=> bm!447000 (= call!446975 call!446992)))

(declare-fun b!5772952 () Bool)

(assert (=> b!5772952 (= e!3546370 e!3546372)))

(assert (=> b!5772952 (= c!1020902 ((_ is Union!15789) (regOne!32090 r!7292)))))

(declare-fun bm!447001 () Bool)

(assert (=> bm!447001 (= call!447125 (derivationStepZipperDown!1131 (ite c!1020902 (regTwo!32091 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292))) lt!2293899 (h!69990 s!2326)))))

(declare-fun b!5772953 () Bool)

(declare-fun call!446932 () Bool)

(assert (=> b!5772953 (= e!3546379 call!446932)))

(declare-fun bm!447002 () Bool)

(declare-fun call!446940 () Unit!156778)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!294 (Regex!15789 Regex!15789 List!63666 List!63666) Unit!156778)

(assert (=> bm!447002 (= call!446940 (lemmaTwoRegexMatchThenConcatMatchesConcatString!294 (ite c!1020903 (reg!16118 (regOne!32090 r!7292)) lt!2293701) (ite c!1020903 lt!2293804 (regTwo!32090 r!7292)) (ite c!1020903 (_1!36189 lt!2293864) (ite c!1020900 lt!2293846 Nil!63542)) (ite c!1020903 lt!2293716 (ite c!1020900 (_2!36189 lt!2293718) s!2326))))))

(declare-fun bm!447003 () Bool)

(declare-fun call!447059 () Bool)

(assert (=> bm!447003 (= call!447059 (matchR!7974 (ite c!1020902 lt!2293875 (ite c!1020907 (Concat!24634 (Concat!24634 (regOne!32090 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292))) lt!2293776) (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))) s!2326))))

(declare-fun bm!447004 () Bool)

(declare-fun call!447107 () Bool)

(assert (=> bm!447004 (= call!446933 call!447107)))

(declare-fun bm!447005 () Bool)

(declare-fun call!447120 () Unit!156778)

(declare-fun call!446945 () Unit!156778)

(assert (=> bm!447005 (= call!447120 call!446945)))

(declare-fun bm!447006 () Bool)

(assert (=> bm!447006 (= call!446929 (flatMap!1402 (ite c!1020910 lt!2293771 (ite c!1020903 lt!2293829 lt!2293719)) (ite c!1020910 lambda!314343 (ite c!1020903 lambda!314343 lambda!314343))))))

(declare-fun bm!447007 () Bool)

(assert (=> bm!447007 (= call!447113 call!447060)))

(declare-fun b!5772954 () Bool)

(declare-fun lt!2293803 () Bool)

(assert (=> b!5772954 (not lt!2293803)))

(declare-fun lt!2293767 () Unit!156778)

(declare-fun e!3546358 () Unit!156778)

(assert (=> b!5772954 (= lt!2293767 e!3546358)))

(declare-fun c!1020904 () Bool)

(assert (=> b!5772954 (= c!1020904 lt!2293803)))

(assert (=> b!5772954 (= lt!2293803 call!447009)))

(declare-fun Unit!156788 () Unit!156778)

(assert (=> b!5772954 (= e!3546363 Unit!156788)))

(declare-fun bm!447008 () Bool)

(declare-fun call!446995 () Bool)

(assert (=> bm!447008 (= call!446965 call!446995)))

(declare-fun bm!447009 () Bool)

(assert (=> bm!447009 (= call!446972 call!447084)))

(declare-fun bm!447010 () Bool)

(declare-fun call!447030 () Unit!156778)

(assert (=> bm!447010 (= call!447032 call!447030)))

(declare-fun lt!2293781 () Regex!15789)

(declare-fun lt!2293896 () Regex!15789)

(declare-fun bm!447011 () Bool)

(declare-fun lt!2293845 () Regex!15789)

(declare-fun theoremZipperRegexEquiv!683 ((InoxSet Context!10346) List!63668 Regex!15789 List!63666) Unit!156778)

(assert (=> bm!447011 (= call!446984 (theoremZipperRegexEquiv!683 (ite c!1020905 lt!2293798 (ite c!1020902 lt!2293774 (ite c!1020907 lt!2293894 (ite c!1020910 lt!2293771 (ite c!1020908 (ite (or c!1020903 c!1020900) lt!2293702 lt!2293719) lt!2293823))))) (ite c!1020905 (Cons!63544 lt!2293899 Nil!63544) (ite c!1020902 (Cons!63544 lt!2293882 Nil!63544) (ite c!1020907 (Cons!63544 lt!2293792 Nil!63544) (ite c!1020910 (Cons!63544 lt!2293725 Nil!63544) (ite (and c!1020908 (or c!1020903 c!1020900)) (Cons!63544 lt!2293814 Nil!63544) (Cons!63544 lt!2293899 Nil!63544)))))) (ite c!1020905 lt!2293790 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293896 (ite c!1020908 (ite (or c!1020903 c!1020900) lt!2293804 lt!2293836) lt!2293781))))) (ite c!1020905 (t!377004 s!2326) (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020903 lt!2293716 (ite c!1020900 (_2!36189 lt!2293851) s!2326)) s!2326)))))))

(declare-fun call!447039 () Unit!156778)

(declare-fun bm!447012 () Bool)

(assert (=> bm!447012 (= call!447039 (mainMatchTheorem!2892 (ite c!1020902 lt!2293730 (ite c!1020910 lt!2293896 lt!2293787)) (ite (or c!1020902 c!1020910) s!2326 (_1!36189 lt!2293718))))))

(declare-fun bm!447013 () Bool)

(assert (=> bm!447013 (= call!447102 (lemmaFindConcatSeparationEquivalentToExists!1976 (ite (or c!1020907 c!1020910) (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292))))) (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293738 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542)))))

(declare-fun bm!447014 () Bool)

(declare-fun lemmaStarApp!106 (Regex!15789 List!63666 List!63666) Unit!156778)

(assert (=> bm!447014 (= call!446949 (lemmaStarApp!106 (reg!16118 (regOne!32090 r!7292)) (ite c!1020903 (_1!36189 lt!2293864) (_1!36189 lt!2293729)) (ite c!1020903 (_2!36189 lt!2293864) (_2!36189 lt!2293729))))))

(declare-fun bm!447015 () Bool)

(declare-fun lemmaConcatPreservesForall!324 (List!63667 List!63667 Int) Unit!156778)

(assert (=> bm!447015 (= call!446943 (lemmaConcatPreservesForall!324 lt!2293745 lt!2293757 (ite c!1020903 lambda!314357 lambda!314359)))))

(declare-fun b!5772955 () Bool)

(assert (=> b!5772955 (= e!3546392 call!447013)))

(declare-fun bm!447016 () Bool)

(assert (=> bm!447016 (= call!446932 call!447009)))

(declare-fun bm!447017 () Bool)

(assert (=> bm!447017 (= call!446957 call!446940)))

(declare-fun bm!447018 () Bool)

(assert (=> bm!447018 (= call!447046 call!447066)))

(assert (=> b!5772956 call!447009))

(declare-fun lt!2293827 () Unit!156778)

(assert (=> b!5772956 (= lt!2293827 e!3546375)))

(declare-fun isEmpty!35440 (List!63666) Bool)

(assert (=> b!5772956 (= c!1020911 (isEmpty!35440 (_1!36189 lt!2293843)))))

(assert (=> b!5772956 (= lt!2293843 call!447029)))

(assert (=> b!5772956 (= call!446956 call!446958)))

(declare-fun lt!2293883 () Unit!156778)

(assert (=> b!5772956 (= lt!2293883 call!447004)))

(assert (=> b!5772956 (= call!447063 call!447001)))

(assert (=> b!5772956 (= lt!2293889 call!447034)))

(declare-fun lt!2293887 () Unit!156778)

(assert (=> b!5772956 (= lt!2293887 call!447120)))

(declare-fun Unit!156789 () Unit!156778)

(assert (=> b!5772956 (= e!3546363 Unit!156789)))

(declare-fun bm!447019 () Bool)

(declare-fun call!447050 () Bool)

(assert (=> bm!447019 (= call!446956 call!447050)))

(declare-fun bm!447020 () Bool)

(declare-fun call!446981 () Unit!156778)

(declare-fun call!447051 () Unit!156778)

(assert (=> bm!447020 (= call!446981 call!447051)))

(declare-fun bm!447021 () Bool)

(declare-fun call!447104 () Bool)

(assert (=> bm!447021 (= call!447072 call!447104)))

(declare-fun bm!447022 () Bool)

(assert (=> bm!447022 (= call!447085 (Exists!2889 (ite c!1020907 lambda!314345 (ite c!1020903 lambda!314353 (ite c!1020900 lambda!314360 lambda!314365)))))))

(declare-fun b!5772957 () Bool)

(declare-fun Unit!156790 () Unit!156778)

(assert (=> b!5772957 (= e!3546366 Unit!156790)))

(declare-fun bm!447023 () Bool)

(declare-fun call!447026 () Bool)

(assert (=> bm!447023 (= call!447026 call!447056)))

(declare-fun bm!447024 () Bool)

(declare-fun call!447114 () Bool)

(assert (=> bm!447024 (= call!447114 (matchZipper!1927 (ite c!1020902 lt!2293786 (ite c!1020907 lt!2293772 (ite c!1020908 (ite c!1020903 (ite c!1020911 lt!2293829 lt!2293702) lt!2293818) lt!2293823))) (ite (or c!1020902 c!1020907) s!2326 (ite c!1020908 (ite c!1020903 (ite c!1020911 s!2326 lt!2293716) (t!377004 s!2326)) s!2326))))))

(declare-fun bm!447025 () Bool)

(assert (=> bm!447025 (= call!447083 call!446953)))

(declare-fun bm!447026 () Bool)

(assert (=> bm!447026 (= call!447118 call!447068)))

(declare-fun b!5772958 () Bool)

(declare-fun regexDepth!242 (Regex!15789) Int)

(assert (=> b!5772958 (= e!3546364 (>= (regexDepth!242 r!7292) (regexDepth!242 (generalisedConcat!1404 (t!377005 (exprs!5673 (h!69992 zl!343)))))))))

(declare-fun bm!447027 () Bool)

(declare-fun call!446937 () (InoxSet Context!10346))

(assert (=> bm!447027 (= call!446937 (derivationStepZipperUp!1057 (ite c!1020902 lt!2293886 (ite c!1020907 lt!2293863 (ite c!1020910 lt!2293725 lt!2293900))) (h!69990 s!2326)))))

(declare-fun b!5772959 () Bool)

(declare-fun Unit!156791 () Unit!156778)

(assert (=> b!5772959 (= e!3546358 Unit!156791)))

(declare-fun bm!447028 () Bool)

(assert (=> bm!447028 (= call!447122 call!447035)))

(declare-fun b!5772960 () Bool)

(declare-fun tp!1594487 () Bool)

(assert (=> b!5772960 (= e!3546377 tp!1594487)))

(declare-fun b!5772961 () Bool)

(declare-fun e!3546393 () Bool)

(assert (=> b!5772961 (= e!3546393 (not e!3546362))))

(declare-fun res!2436676 () Bool)

(assert (=> b!5772961 (=> res!2436676 e!3546362)))

(assert (=> b!5772961 (= res!2436676 (not ((_ is Cons!63544) zl!343)))))

(declare-fun lt!2293807 () Bool)

(assert (=> b!5772961 (= lt!2293862 lt!2293807)))

(assert (=> b!5772961 (= lt!2293807 (matchRSpec!2892 r!7292 s!2326))))

(assert (=> b!5772961 (= lt!2293862 (matchR!7974 r!7292 s!2326))))

(declare-fun lt!2293709 () Unit!156778)

(assert (=> b!5772961 (= lt!2293709 (mainMatchTheorem!2892 r!7292 s!2326))))

(declare-fun b!5772962 () Bool)

(declare-fun res!2436672 () Bool)

(assert (=> b!5772962 (=> res!2436672 e!3546362)))

(declare-fun generalisedUnion!1652 (List!63667) Regex!15789)

(declare-fun unfocusZipperList!1217 (List!63668) List!63667)

(assert (=> b!5772962 (= res!2436672 (not (= r!7292 (generalisedUnion!1652 (unfocusZipperList!1217 zl!343)))))))

(declare-fun bm!447029 () Bool)

(assert (=> bm!447029 (= call!447019 (findConcatSeparation!2212 (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 lt!2293787))) (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293831 (regTwo!32090 r!7292))) Nil!63542 s!2326 s!2326))))

(declare-fun bm!447030 () Bool)

(assert (=> bm!447030 (= call!447115 (matchZipper!1927 (ite c!1020902 ((_ map or) lt!2293711 lt!2293761) lt!2293874) (t!377004 s!2326)))))

(declare-fun bm!447031 () Bool)

(assert (=> bm!447031 (= call!447057 (matchR!7974 (ite c!1020902 lt!2293706 (ite c!1020907 (Concat!24634 (regOne!32090 (regOne!32090 r!7292)) (Concat!24634 (regTwo!32090 (regOne!32090 r!7292)) lt!2293776)) (ite c!1020910 lt!2293896 (ite c!1020908 (ite c!1020903 lt!2293701 lt!2293787) lt!2293781)))) (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020903 lt!2293793 (_1!36189 lt!2293718)) s!2326))))))

(declare-fun b!5772963 () Bool)

(declare-fun e!3546390 () Bool)

(assert (=> b!5772963 e!3546390))

(declare-fun res!2436654 () Bool)

(assert (=> b!5772963 (=> (not res!2436654) (not e!3546390))))

(declare-fun lt!2293856 () Bool)

(assert (=> b!5772963 (= res!2436654 (= lt!2293856 call!446969))))

(declare-fun lt!2293778 () Unit!156778)

(assert (=> b!5772963 (= lt!2293778 (mainMatchTheorem!2892 lt!2293875 s!2326))))

(declare-fun lt!2293791 () Bool)

(declare-fun call!446962 () Bool)

(assert (=> b!5772963 (= lt!2293791 call!446962)))

(declare-fun lt!2293698 () Unit!156778)

(assert (=> b!5772963 (= lt!2293698 call!446991)))

(assert (=> b!5772963 (= lt!2293856 lt!2293791)))

(assert (=> b!5772963 (= lt!2293791 call!447057)))

(assert (=> b!5772963 (= lt!2293856 call!447059)))

(assert (=> b!5772963 (= lt!2293706 (Union!15789 (Concat!24634 (regOne!32091 (regOne!32090 r!7292)) (regTwo!32090 r!7292)) (Concat!24634 (regTwo!32091 (regOne!32090 r!7292)) (regTwo!32090 r!7292))))))

(assert (=> b!5772963 (= lt!2293875 (Concat!24634 (regOne!32090 r!7292) (regTwo!32090 r!7292)))))

(declare-fun lt!2293788 () Unit!156778)

(declare-fun lemmaConcatDistributesInUnion!48 (Regex!15789 Regex!15789 Regex!15789 List!63666) Unit!156778)

(assert (=> b!5772963 (= lt!2293788 (lemmaConcatDistributesInUnion!48 (regOne!32091 (regOne!32090 r!7292)) (regTwo!32091 (regOne!32090 r!7292)) (regTwo!32090 r!7292) s!2326))))

(declare-fun lt!2293741 () Bool)

(assert (=> b!5772963 (= lt!2293741 (matchRSpec!2892 lt!2293730 s!2326))))

(declare-fun lt!2293794 () Unit!156778)

(assert (=> b!5772963 (= lt!2293794 call!447039)))

(declare-fun lt!2293721 () Bool)

(assert (=> b!5772963 (= lt!2293721 call!446995)))

(declare-fun lt!2293723 () Unit!156778)

(assert (=> b!5772963 (= lt!2293723 call!447123)))

(assert (=> b!5772963 (= lt!2293741 call!447114)))

(assert (=> b!5772963 (= lt!2293741 call!447056)))

(declare-fun lt!2293806 () Unit!156778)

(declare-fun call!446950 () Unit!156778)

(assert (=> b!5772963 (= lt!2293806 call!446950)))

(assert (=> b!5772963 (= lt!2293730 call!447011)))

(assert (=> b!5772963 (= lt!2293721 call!447073)))

(assert (=> b!5772963 (= lt!2293721 call!447016)))

(declare-fun lt!2293755 () Unit!156778)

(assert (=> b!5772963 (= lt!2293755 call!446955)))

(assert (=> b!5772963 (= lt!2293845 call!447060)))

(declare-fun lt!2293753 () Unit!156778)

(declare-fun e!3546391 () Unit!156778)

(assert (=> b!5772963 (= lt!2293753 e!3546391)))

(declare-fun c!1020899 () Bool)

(assert (=> b!5772963 (= c!1020899 (nullable!5821 (regTwo!32091 (regOne!32090 r!7292))))))

(assert (=> b!5772963 (= call!447061 call!446937)))

(declare-fun lt!2293828 () Unit!156778)

(assert (=> b!5772963 (= lt!2293828 call!447105)))

(declare-fun lt!2293783 () (InoxSet Context!10346))

(assert (=> b!5772963 (= lt!2293783 call!446937)))

(declare-fun lt!2293865 () Unit!156778)

(assert (=> b!5772963 (= lt!2293865 e!3546366)))

(declare-fun c!1020909 () Bool)

(declare-fun call!447041 () Bool)

(assert (=> b!5772963 (= c!1020909 call!447041)))

(assert (=> b!5772963 (= call!446983 call!446990)))

(declare-fun lt!2293869 () Unit!156778)

(assert (=> b!5772963 (= lt!2293869 call!446946)))

(declare-fun lt!2293881 () (InoxSet Context!10346))

(assert (=> b!5772963 (= lt!2293881 call!446990)))

(assert (=> b!5772963 (= lt!2293786 (store ((as const (Array Context!10346 Bool)) false) lt!2293886 true))))

(assert (=> b!5772963 (= lt!2293886 (Context!10347 lt!2293699))))

(assert (=> b!5772963 (= lt!2293699 (Cons!63543 (regTwo!32091 (regOne!32090 r!7292)) (t!377005 (exprs!5673 (h!69992 zl!343)))))))

(assert (=> b!5772963 (= lt!2293774 (store ((as const (Array Context!10346 Bool)) false) lt!2293882 true))))

(declare-fun lt!2293809 () List!63667)

(assert (=> b!5772963 (= lt!2293882 (Context!10347 lt!2293809))))

(assert (=> b!5772963 (= lt!2293809 (Cons!63543 (regOne!32091 (regOne!32090 r!7292)) (t!377005 (exprs!5673 (h!69992 zl!343)))))))

(declare-fun e!3546381 () Bool)

(assert (=> b!5772963 (= call!446920 e!3546381)))

(declare-fun res!2436669 () Bool)

(assert (=> b!5772963 (=> res!2436669 e!3546381)))

(assert (=> b!5772963 (= res!2436669 lt!2293866)))

(assert (=> b!5772963 (= lt!2293866 (matchZipper!1927 lt!2293777 (t!377004 s!2326)))))

(declare-fun lt!2293737 () Unit!156778)

(assert (=> b!5772963 (= lt!2293737 call!447071)))

(assert (=> b!5772963 (= lt!2293711 call!447125)))

(declare-fun call!447003 () (InoxSet Context!10346))

(assert (=> b!5772963 (= lt!2293777 call!447003)))

(declare-fun Unit!156792 () Unit!156778)

(assert (=> b!5772963 (= e!3546372 Unit!156792)))

(declare-fun bm!447032 () Bool)

(assert (=> bm!447032 (= call!447123 (mainMatchTheorem!2892 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293831 (ite c!1020908 lt!2293710 (regOne!32090 r!7292))))) s!2326))))

(declare-fun e!3546373 () Bool)

(assert (=> b!5772964 e!3546373))

(declare-fun res!2436653 () Bool)

(assert (=> b!5772964 (=> (not res!2436653) (not e!3546373))))

(assert (=> b!5772964 (= res!2436653 (= call!446924 call!447090))))

(declare-fun lt!2293769 () Unit!156778)

(assert (=> b!5772964 (= lt!2293769 call!447124)))

(assert (=> b!5772964 (= call!447108 call!447027)))

(declare-fun lt!2293890 () Unit!156778)

(assert (=> b!5772964 (= lt!2293890 call!447068)))

(assert (=> b!5772964 (= call!447083 call!447103)))

(declare-fun lt!2293750 () Unit!156778)

(assert (=> b!5772964 (= lt!2293750 call!446945)))

(assert (=> b!5772964 (= lt!2293738 call!447008)))

(assert (=> b!5772964 (= call!447038 call!447094)))

(declare-fun lt!2293847 () Unit!156778)

(assert (=> b!5772964 (= lt!2293847 call!447098)))

(assert (=> b!5772964 (= call!447101 call!447078)))

(declare-fun lt!2293849 () Unit!156778)

(assert (=> b!5772964 (= lt!2293849 call!446966)))

(assert (=> b!5772964 (= call!447075 call!447050)))

(declare-fun lt!2293779 () Unit!156778)

(assert (=> b!5772964 (= lt!2293779 call!447058)))

(assert (=> b!5772964 (= lt!2293831 call!447024)))

(declare-fun lt!2293879 () Bool)

(declare-fun call!447010 () Bool)

(assert (=> b!5772964 (= lt!2293879 call!447010)))

(declare-fun lt!2293839 () Unit!156778)

(assert (=> b!5772964 (= lt!2293839 call!446948)))

(assert (=> b!5772964 (= lt!2293879 call!447084)))

(declare-fun call!446934 () Bool)

(assert (=> b!5772964 (= lt!2293879 call!446934)))

(declare-fun lt!2293770 () Unit!156778)

(assert (=> b!5772964 (= lt!2293770 call!447051)))

(declare-fun call!446974 () Regex!15789)

(assert (=> b!5772964 (= lt!2293896 call!446974)))

(assert (=> b!5772964 (= call!446929 call!447053)))

(declare-fun lt!2293815 () Unit!156778)

(assert (=> b!5772964 (= lt!2293815 call!447030)))

(declare-fun lt!2293715 () (InoxSet Context!10346))

(assert (=> b!5772964 (= lt!2293715 call!447053)))

(assert (=> b!5772964 (= lt!2293771 (store ((as const (Array Context!10346 Bool)) false) lt!2293725 true))))

(declare-fun lt!2293898 () List!63667)

(assert (=> b!5772964 (= lt!2293725 (Context!10347 lt!2293898))))

(assert (=> b!5772964 (= lt!2293898 (Cons!63543 (regOne!32090 (regOne!32090 r!7292)) lt!2293704))))

(declare-fun lt!2293708 () (InoxSet Context!10346))

(assert (=> b!5772964 (= lt!2293708 call!447046)))

(assert (=> b!5772964 (= lt!2293704 (Cons!63543 (regTwo!32090 (regOne!32090 r!7292)) (t!377005 (exprs!5673 (h!69992 zl!343)))))))

(declare-fun Unit!156793 () Unit!156778)

(assert (=> b!5772964 (= e!3546357 Unit!156793)))

(declare-fun bm!447033 () Bool)

(declare-fun call!447077 () Option!15798)

(assert (=> bm!447033 (= call!447034 call!447077)))

(declare-fun bm!447034 () Bool)

(declare-fun call!447080 () Unit!156778)

(assert (=> bm!447034 (= call!447080 call!446981)))

(declare-fun bm!447035 () Bool)

(assert (=> bm!447035 (= call!447024 call!447011)))

(declare-fun bm!447036 () Bool)

(assert (=> bm!447036 (= call!446934 call!447040)))

(declare-fun b!5772965 () Bool)

(declare-fun Unit!156794 () Unit!156778)

(assert (=> b!5772965 (= e!3546391 Unit!156794)))

(declare-fun lt!2293867 () Unit!156778)

(assert (=> b!5772965 (= lt!2293867 call!446961)))

(declare-fun res!2436675 () Bool)

(assert (=> b!5772965 (= res!2436675 call!446922)))

(assert (=> b!5772965 (=> res!2436675 e!3546387)))

(assert (=> b!5772965 (= call!447115 e!3546387)))

(declare-fun bm!447037 () Bool)

(declare-fun lemmaConcatAssociativity!2898 (List!63666 List!63666 List!63666) Unit!156778)

(assert (=> bm!447037 (= call!446979 (lemmaConcatAssociativity!2898 (ite c!1020903 (_1!36189 lt!2293864) (_1!36189 lt!2293729)) (ite c!1020903 (_2!36189 lt!2293864) (_2!36189 lt!2293729)) (ite c!1020903 (_2!36189 lt!2293843) (_2!36189 lt!2293718))))))

(declare-fun bm!447038 () Bool)

(assert (=> bm!447038 (= call!447055 call!447094)))

(declare-fun lt!2293825 () List!63666)

(declare-fun bm!447039 () Bool)

(assert (=> bm!447039 (= call!447090 (matchR!7974 (ite c!1020910 (Concat!24634 (regOne!32090 (regOne!32090 r!7292)) (Concat!24634 (regTwo!32090 (regOne!32090 r!7292)) lt!2293738)) (ite c!1020908 (ite c!1020903 lt!2293710 lt!2293804) (regOne!32090 r!7292))) (ite c!1020910 s!2326 (ite c!1020908 (ite c!1020903 lt!2293825 (ite c!1020900 lt!2293740 call!447000)) s!2326))))))

(declare-fun b!5772966 () Bool)

(declare-fun res!2436662 () Bool)

(assert (=> b!5772966 (=> (not res!2436662) (not e!3546393))))

(declare-fun unfocusZipper!1531 (List!63668) Regex!15789)

(assert (=> b!5772966 (= res!2436662 (= r!7292 (unfocusZipper!1531 zl!343)))))

(declare-fun bm!447040 () Bool)

(assert (=> bm!447040 (= call!446980 call!446923)))

(declare-fun call!446993 () Option!15798)

(declare-fun bm!447041 () Bool)

(assert (=> bm!447041 (= call!446993 (findConcatSeparation!2212 (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))) (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293738 lt!2293701)) Nil!63542 (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542))) (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542)))))))

(declare-fun bm!447042 () Bool)

(assert (=> bm!447042 (= call!447048 call!447080)))

(declare-fun b!5772967 () Bool)

(declare-fun Unit!156795 () Unit!156778)

(assert (=> b!5772967 (= e!3546391 Unit!156795)))

(declare-fun b!5772968 () Bool)

(declare-fun e!3546365 () Unit!156778)

(assert (=> b!5772968 (= e!3546356 e!3546365)))

(assert (=> b!5772968 (= c!1020906 ((_ is EmptyExpr!15789) (regOne!32090 r!7292)))))

(declare-fun bm!447043 () Bool)

(assert (=> bm!447043 (= call!447041 (nullable!5821 (ite c!1020902 (regOne!32091 (regOne!32090 r!7292)) (regOne!32090 (regOne!32090 r!7292)))))))

(declare-fun Unit!156796 () Unit!156778)

(assert (=> b!5772969 (= e!3546375 Unit!156796)))

(declare-fun lt!2293830 () Unit!156778)

(assert (=> b!5772969 (= lt!2293830 call!446954)))

(assert (=> b!5772969 (= call!446964 call!447110)))

(declare-fun lt!2293837 () Unit!156778)

(assert (=> b!5772969 (= lt!2293837 call!446931)))

(assert (=> b!5772969 (= lt!2293857 call!446985)))

(declare-fun call!447006 () Bool)

(assert (=> b!5772969 (= call!447006 call!447100)))

(declare-fun lt!2293840 () Unit!156778)

(assert (=> b!5772969 (= lt!2293840 call!447121)))

(assert (=> b!5772969 (= call!446941 call!446927)))

(declare-fun lt!2293724 () Unit!156778)

(assert (=> b!5772969 (= lt!2293724 call!447118)))

(assert (=> b!5772969 (= call!447104 call!447017)))

(assert (=> b!5772969 (= lt!2293864 call!447002)))

(declare-fun lt!2293733 () Unit!156778)

(assert (=> b!5772969 (= lt!2293733 call!446979)))

(assert (=> b!5772969 (= lt!2293793 call!447092)))

(assert (=> b!5772969 (= lt!2293716 call!446926)))

(declare-fun lt!2293848 () List!63666)

(assert (=> b!5772969 (= lt!2293848 call!446970)))

(assert (=> b!5772969 (= lt!2293825 call!446939)))

(assert (=> b!5772969 (= lt!2293848 lt!2293825)))

(declare-fun lt!2293852 () Unit!156778)

(assert (=> b!5772969 (= lt!2293852 call!446949)))

(assert (=> b!5772969 call!447042))

(declare-fun lt!2293810 () Unit!156778)

(assert (=> b!5772969 (= lt!2293810 call!447074)))

(assert (=> b!5772969 call!446928))

(declare-fun lt!2293813 () Unit!156778)

(assert (=> b!5772969 (= lt!2293813 call!446982)))

(assert (=> b!5772969 (= call!447023 call!447079)))

(declare-fun lt!2293859 () Unit!156778)

(assert (=> b!5772969 (= lt!2293859 call!447080)))

(assert (=> b!5772969 call!447122))

(declare-fun lt!2293841 () Unit!156778)

(assert (=> b!5772969 (= lt!2293841 call!447015)))

(declare-fun lt!2293758 () Unit!156778)

(assert (=> b!5772969 (= lt!2293758 call!447007)))

(assert (=> b!5772969 call!446996))

(declare-fun lt!2293861 () Unit!156778)

(assert (=> b!5772969 (= lt!2293861 call!446940)))

(declare-fun res!2436666 () Bool)

(assert (=> b!5772969 (= res!2436666 call!447107)))

(assert (=> b!5772969 (=> (not res!2436666) (not e!3546374))))

(assert (=> b!5772969 e!3546374))

(declare-fun lt!2293838 () Unit!156778)

(assert (=> b!5772969 (= lt!2293838 call!446943)))

(assert (=> b!5772969 call!446932))

(declare-fun setIsEmpty!38799 () Bool)

(assert (=> setIsEmpty!38799 setRes!38799))

(declare-fun bm!447044 () Bool)

(assert (=> bm!447044 (= call!447038 call!447020)))

(declare-fun bm!447045 () Bool)

(assert (=> bm!447045 (= call!446982 call!446975)))

(declare-fun bm!447046 () Bool)

(assert (=> bm!447046 (= call!447016 call!447086)))

(declare-fun bm!447047 () Bool)

(declare-fun call!447014 () Bool)

(assert (=> bm!447047 (= call!447014 call!446960)))

(declare-fun b!5772970 () Bool)

(assert (=> b!5772970 (= e!3546388 (= lt!2293862 call!446978))))

(declare-fun bm!447048 () Bool)

(assert (=> bm!447048 (= call!447025 call!446974)))

(declare-fun bm!447049 () Bool)

(assert (=> bm!447049 (= call!447100 call!447103)))

(declare-fun b!5772971 () Bool)

(declare-fun res!2436677 () Bool)

(assert (=> b!5772971 (=> (not res!2436677) (not e!3546393))))

(declare-fun toList!9573 ((InoxSet Context!10346)) List!63668)

(assert (=> b!5772971 (= res!2436677 (= (toList!9573 z!1189) zl!343))))

(declare-fun bm!447050 () Bool)

(assert (=> bm!447050 (= call!447082 call!446962)))

(declare-fun b!5772972 () Bool)

(assert (=> b!5772972 (= e!3546382 call!446976)))

(declare-fun bm!447051 () Bool)

(assert (=> bm!447051 (= call!446987 (Exists!2889 (ite c!1020907 lambda!314346 (ite c!1020910 lambda!314351 (ite c!1020903 lambda!314356 lambda!314364)))))))

(declare-fun b!5772973 () Bool)

(assert (=> b!5772973 (= e!3546395 e!3546357)))

(assert (=> b!5772973 (= c!1020910 ((_ is Concat!24634) (regOne!32090 r!7292)))))

(declare-fun bm!447052 () Bool)

(assert (=> bm!447052 (= call!446936 call!446934)))

(declare-fun bm!447053 () Bool)

(assert (=> bm!447053 (= call!447099 call!447059)))

(declare-fun bm!447054 () Bool)

(declare-fun lemmaConcatAssociative!108 (Regex!15789 Regex!15789 Regex!15789 List!63666) Unit!156778)

(assert (=> bm!447054 (= call!446989 (lemmaConcatAssociative!108 (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292))) (ite (or c!1020907 c!1020910) (regTwo!32090 (regOne!32090 r!7292)) lt!2293701) (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293738 (regTwo!32090 r!7292))) s!2326))))

(declare-fun bm!447055 () Bool)

(assert (=> bm!447055 (= call!446996 call!446977)))

(declare-fun bm!447056 () Bool)

(assert (=> bm!447056 (= call!447051 call!447022)))

(declare-fun b!5772974 () Bool)

(declare-fun res!2436658 () Bool)

(assert (=> b!5772974 (=> res!2436658 e!3546362)))

(assert (=> b!5772974 (= res!2436658 (or ((_ is EmptyExpr!15789) r!7292) ((_ is EmptyLang!15789) r!7292) ((_ is ElementMatch!15789) r!7292) ((_ is Union!15789) r!7292) (not ((_ is Concat!24634) r!7292))))))

(declare-fun bm!447057 () Bool)

(assert (=> bm!447057 (= call!447097 (Exists!2889 (ite c!1020907 lambda!314346 (ite c!1020910 lambda!314349 (ite c!1020903 lambda!314352 (ite c!1020900 lambda!314362 lambda!314367))))))))

(declare-fun bm!447058 () Bool)

(assert (=> bm!447058 (= call!447076 call!447120)))

(declare-fun bm!447059 () Bool)

(assert (=> bm!447059 (= call!446948 call!447039)))

(declare-fun bm!447060 () Bool)

(assert (=> bm!447060 (= call!446922 (matchZipper!1927 (ite c!1020902 lt!2293711 (ite c!1020907 lt!2293894 (ite c!1020910 lt!2293771 (ite c!1020908 (ite c!1020903 lt!2293860 (ite c!1020900 lt!2293702 lt!2293719)) lt!2293818)))) (ite c!1020902 (t!377004 s!2326) (ite (or c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020903 (_1!36189 lt!2293864) (ite c!1020900 (_2!36189 lt!2293851) s!2326)) (t!377004 s!2326))))))))

(declare-fun bm!447061 () Bool)

(assert (=> bm!447061 (= call!447104 (Exists!2889 (ite c!1020903 lambda!314354 (ite c!1020900 lambda!314360 lambda!314366))))))

(declare-fun bm!447062 () Bool)

(assert (=> bm!447062 (= call!447086 (matchR!7974 (ite c!1020905 lt!2293790 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 lt!2293804)))) (ite c!1020905 (t!377004 s!2326) (ite (or c!1020902 c!1020907 c!1020910) s!2326 (_2!36189 lt!2293851)))))))

(declare-fun bm!447063 () Bool)

(assert (=> bm!447063 (= call!446962 (matchRSpec!2892 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292))))) s!2326))))

(declare-fun bm!447064 () Bool)

(assert (=> bm!447064 (= call!446973 (generalisedConcat!1404 (ite c!1020905 (t!377005 (exprs!5673 (h!69992 zl!343))) (ite c!1020902 lt!2293809 (ite c!1020907 (t!377005 (exprs!5673 (h!69992 zl!343))) (ite c!1020910 lt!2293898 (t!377005 (exprs!5673 (h!69992 zl!343)))))))))))

(declare-fun bm!447065 () Bool)

(assert (=> bm!447065 (= call!447112 call!446941)))

(declare-fun b!5772975 () Bool)

(declare-fun e!3546371 () Bool)

(assert (=> b!5772975 e!3546371))

(declare-fun res!2436657 () Bool)

(assert (=> b!5772975 (=> (not res!2436657) (not e!3546371))))

(assert (=> b!5772975 (= res!2436657 (= call!446936 call!446980))))

(declare-fun lt!2293764 () Unit!156778)

(assert (=> b!5772975 (= lt!2293764 call!446981)))

(assert (=> b!5772975 (= lt!2293781 call!447025)))

(declare-fun call!446952 () Bool)

(declare-fun call!446938 () Bool)

(assert (=> b!5772975 (= call!446952 call!446938)))

(declare-fun lt!2293855 () Unit!156778)

(assert (=> b!5772975 (= lt!2293855 call!446925)))

(assert (=> b!5772975 (= call!447018 call!446986)))

(declare-fun lt!2293727 () Unit!156778)

(assert (=> b!5772975 (= lt!2293727 call!447032)))

(assert (=> b!5772975 (= lt!2293823 (store ((as const (Array Context!10346 Bool)) false) lt!2293899 true))))

(assert (=> b!5772975 (= call!447095 call!447014)))

(declare-fun lt!2293871 () Unit!156778)

(assert (=> b!5772975 (= lt!2293871 call!447012)))

(assert (=> b!5772975 (= call!446997 call!446930)))

(declare-fun lt!2293850 () Unit!156778)

(declare-fun call!446998 () Unit!156778)

(assert (=> b!5772975 (= lt!2293850 call!446998)))

(assert (=> b!5772975 (not call!446972)))

(declare-fun lt!2293734 () Unit!156778)

(declare-fun call!447065 () Unit!156778)

(assert (=> b!5772975 (= lt!2293734 call!447065)))

(declare-fun Unit!156797 () Unit!156778)

(assert (=> b!5772975 (= e!3546365 Unit!156797)))

(declare-fun bm!447066 () Bool)

(assert (=> bm!447066 (= call!447029 (get!21929 (ite c!1020903 lt!2293889 lt!2293748)))))

(declare-fun bm!447067 () Bool)

(assert (=> bm!447067 (= call!447116 call!446999)))

(declare-fun bm!447068 () Bool)

(assert (=> bm!447068 (= call!447030 call!447069)))

(declare-fun b!5772976 () Bool)

(declare-fun tp!1594485 () Bool)

(declare-fun tp!1594489 () Bool)

(assert (=> b!5772976 (= e!3546377 (and tp!1594485 tp!1594489))))

(declare-fun bm!447069 () Bool)

(assert (=> bm!447069 (= call!447003 (derivationStepZipperDown!1131 (ite c!1020902 (regOne!32091 (regOne!32090 r!7292)) (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))) (ite c!1020902 lt!2293899 (ite c!1020907 lt!2293792 (ite c!1020910 (Context!10347 lt!2293704) lt!2293814))) (h!69990 s!2326)))))

(declare-fun bm!447070 () Bool)

(assert (=> bm!447070 (= call!446985 call!447062)))

(declare-fun bm!447071 () Bool)

(assert (=> bm!447071 (= call!446946 (lemmaFlatMapOnSingletonSet!934 (ite c!1020902 lt!2293774 (ite c!1020907 lt!2293894 (ite c!1020903 lt!2293829 lt!2293719))) (ite c!1020902 lt!2293882 (ite c!1020907 lt!2293792 lt!2293899)) (ite c!1020902 lambda!314343 (ite c!1020907 lambda!314343 (ite c!1020903 lambda!314343 lambda!314343)))))))

(declare-fun bm!447072 () Bool)

(assert (=> bm!447072 (= call!447006 call!447075)))

(declare-fun bm!447073 () Bool)

(assert (=> bm!447073 (= call!447013 call!447073)))

(declare-fun bm!447074 () Bool)

(assert (=> bm!447074 (= call!447108 call!446971)))

(declare-fun b!5772977 () Bool)

(assert (=> b!5772977 (= e!3546394 call!446921)))

(declare-fun bm!447075 () Bool)

(assert (=> bm!447075 (= call!447000 (++!14006 (ite c!1020900 lt!2293846 Nil!63542) (ite c!1020900 (_2!36189 lt!2293718) s!2326)))))

(declare-fun bm!447076 () Bool)

(assert (=> bm!447076 (= call!446938 call!446977)))

(declare-fun bm!447077 () Bool)

(assert (=> bm!447077 (= call!447007 (lemmaConcatPreservesForall!324 lt!2293745 lt!2293757 (ite c!1020903 lambda!314357 lambda!314359)))))

(declare-fun bm!447078 () Bool)

(assert (=> bm!447078 (= call!447023 call!446924)))

(declare-fun bm!447079 () Bool)

(assert (=> bm!447079 (= call!447045 call!447079)))

(declare-fun bm!447080 () Bool)

(assert (=> bm!447080 (= call!447089 call!446958)))

(declare-fun bm!447081 () Bool)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!570 (Regex!15789 List!63666) Unit!156778)

(assert (=> bm!447081 (= call!447121 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!570 (reg!16118 (regOne!32090 r!7292)) (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542))))))

(declare-fun bm!447082 () Bool)

(assert (=> bm!447082 (= call!446945 call!447102)))

(declare-fun bm!447083 () Bool)

(assert (=> bm!447083 (= call!446959 (isDefined!12501 (ite c!1020907 call!446993 (ite c!1020910 call!447077 (ite c!1020903 lt!2293857 (ite c!1020900 lt!2293748 call!447044))))))))

(declare-fun bm!447084 () Bool)

(assert (=> bm!447084 (= call!447078 call!447097)))

(declare-fun b!5772978 () Bool)

(declare-fun tp!1594492 () Bool)

(assert (=> b!5772978 (= e!3546376 tp!1594492)))

(declare-fun bm!447085 () Bool)

(assert (=> bm!447085 (= call!446951 call!446937)))

(declare-fun bm!447086 () Bool)

(assert (=> bm!447086 (= call!446960 call!447010)))

(declare-fun bm!447087 () Bool)

(assert (=> bm!447087 (= call!446925 call!446961)))

(declare-fun bm!447088 () Bool)

(assert (=> bm!447088 (= call!447062 call!446993)))

(declare-fun bm!447089 () Bool)

(assert (=> bm!447089 (= call!446998 call!447081)))

(declare-fun bm!447090 () Bool)

(assert (=> bm!447090 (= call!447050 call!447106)))

(declare-fun bm!447091 () Bool)

(assert (=> bm!447091 (= call!446992 call!446950)))

(declare-fun bm!447092 () Bool)

(assert (=> bm!447092 (= call!446983 (flatMap!1402 (ite c!1020902 lt!2293774 lt!2293763) (ite c!1020902 lambda!314343 lambda!314343)))))

(declare-fun bm!447093 () Bool)

(assert (=> bm!447093 (= call!446928 call!447026)))

(declare-fun b!5772979 () Bool)

(assert (=> b!5772979 (= e!3546390 (= lt!2293862 call!447111))))

(declare-fun b!5772980 () Bool)

(assert (=> b!5772980 (= e!3546389 (or (not lt!2293862) lt!2293807))))

(declare-fun b!5772981 () Bool)

(assert (=> b!5772981 (= e!3546385 false)))

(declare-fun bm!447094 () Bool)

(assert (=> bm!447094 (= call!447074 (lemmaTwoRegexMatchThenConcatMatchesConcatString!294 (ite c!1020903 lt!2293701 (reg!16118 (regOne!32090 r!7292))) (ite c!1020903 (regTwo!32090 r!7292) lt!2293804) (ite c!1020903 (_2!36189 lt!2293864) (_1!36189 lt!2293851)) (ite c!1020903 (_2!36189 lt!2293843) (_2!36189 lt!2293851))))))

(declare-fun b!5772982 () Bool)

(assert (=> b!5772982 (= e!3546381 call!446922)))

(declare-fun bm!447095 () Bool)

(assert (=> bm!447095 (= call!446988 call!447006)))

(declare-fun bm!447096 () Bool)

(assert (=> bm!447096 (= call!447107 call!447054)))

(declare-fun bm!447097 () Bool)

(assert (=> bm!447097 (= call!446923 call!447114)))

(declare-fun bm!447098 () Bool)

(assert (=> bm!447098 (= call!446971 (Exists!2889 (ite c!1020907 lambda!314344 (ite c!1020910 lambda!314350 (ite c!1020903 lambda!314354 (ite c!1020900 lambda!314362 lambda!314365))))))))

(declare-fun bm!447099 () Bool)

(assert (=> bm!447099 (= call!446952 call!446994)))

(declare-fun res!2436651 () Bool)

(assert (=> start!592788 (=> (not res!2436651) (not e!3546393))))

(declare-fun validRegex!7525 (Regex!15789) Bool)

(assert (=> start!592788 (= res!2436651 (validRegex!7525 r!7292))))

(assert (=> start!592788 e!3546393))

(assert (=> start!592788 e!3546377))

(declare-fun condSetEmpty!38799 () Bool)

(assert (=> start!592788 (= condSetEmpty!38799 (= z!1189 ((as const (Array Context!10346 Bool)) false)))))

(assert (=> start!592788 setRes!38799))

(assert (=> start!592788 e!3546383))

(assert (=> start!592788 e!3546384))

(declare-fun b!5772983 () Bool)

(declare-fun res!2436674 () Bool)

(assert (=> b!5772983 (=> res!2436674 e!3546362)))

(declare-fun isEmpty!35441 (List!63668) Bool)

(assert (=> b!5772983 (= res!2436674 (not (isEmpty!35441 (t!377006 zl!343))))))

(declare-fun bm!447100 () Bool)

(assert (=> bm!447100 (= call!446935 (lemmaFindConcatSeparationEquivalentToExists!1976 (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292))) (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 lt!2293701)) (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718)))))))

(declare-fun bm!447101 () Bool)

(assert (=> bm!447101 (= call!447077 call!447019)))

(declare-fun bm!447102 () Bool)

(assert (=> bm!447102 (= call!447106 (Exists!2889 (ite c!1020907 lambda!314347 (ite c!1020910 lambda!314348 (ite c!1020903 lambda!314352 lambda!314362)))))))

(declare-fun bm!447103 () Bool)

(assert (=> bm!447103 (= call!446995 (matchRSpec!2892 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292))))) (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020900 (_1!36189 lt!2293718) Nil!63542) s!2326))))))

(declare-fun b!5772984 () Bool)

(assert (=> b!5772984 (= e!3546359 call!447041)))

(declare-fun b!5772985 () Bool)

(assert (=> b!5772985 (= e!3546373 (= lt!2293862 call!447116))))

(declare-fun bm!447104 () Bool)

(assert (=> bm!447104 (= call!446920 (matchZipper!1927 (ite c!1020902 ((_ map or) lt!2293777 lt!2293711) (ite c!1020907 ((_ map or) lt!2293874 lt!2293747) (ite c!1020910 z!1189 (ite c!1020908 (ite c!1020903 (store ((as const (Array Context!10346 Bool)) false) (Context!10347 call!447096) true) lt!2293860) (ite c!1020906 lt!2293761 lt!2293818))))) (ite (or c!1020902 c!1020907) (t!377004 s!2326) (ite c!1020910 s!2326 (ite c!1020908 (ite c!1020903 lt!2293825 (_1!36189 lt!2293851)) (t!377004 s!2326))))))))

(declare-fun b!5772986 () Bool)

(declare-fun res!2436656 () Bool)

(assert (=> b!5772986 (=> res!2436656 e!3546386)))

(declare-fun isEmpty!35442 (List!63667) Bool)

(assert (=> b!5772986 (= res!2436656 (isEmpty!35442 (t!377005 (exprs!5673 (h!69992 zl!343)))))))

(declare-fun b!5772987 () Bool)

(assert (=> b!5772987 (= e!3546371 (= lt!2293862 call!447021))))

(declare-fun bm!447105 () Bool)

(assert (=> bm!447105 (= call!446974 call!447113)))

(declare-fun bm!447106 () Bool)

(assert (=> bm!447106 (= call!447053 call!446951)))

(declare-fun b!5772988 () Bool)

(declare-fun tp!1594493 () Bool)

(declare-fun tp!1594488 () Bool)

(assert (=> b!5772988 (= e!3546377 (and tp!1594493 tp!1594488))))

(declare-fun bm!447107 () Bool)

(assert (=> bm!447107 (= call!447109 call!446954)))

(declare-fun bm!447108 () Bool)

(assert (=> bm!447108 (= call!447028 (flatMap!1402 (ite c!1020907 lt!2293894 lt!2293702) (ite c!1020907 lambda!314343 lambda!314343)))))

(declare-fun b!5772989 () Bool)

(declare-fun Unit!156798 () Unit!156778)

(assert (=> b!5772989 (= e!3546367 Unit!156798)))

(declare-fun bm!447109 () Bool)

(assert (=> bm!447109 (= call!447052 call!447004)))

(declare-fun b!5772990 () Bool)

(assert (=> b!5772990 (= e!3546358 e!3546380)))

(assert (=> b!5772990 (= c!1020900 call!447035)))

(declare-fun bm!447110 () Bool)

(declare-fun ++!14007 (List!63667 List!63667) List!63667)

(assert (=> bm!447110 (= call!447096 (++!14007 lt!2293745 lt!2293757))))

(declare-fun bm!447111 () Bool)

(assert (=> bm!447111 (= call!446964 (matchR!7974 (ite c!1020903 lt!2293701 lt!2293736) (ite c!1020903 (_1!36189 lt!2293843) s!2326)))))

(declare-fun bm!447112 () Bool)

(declare-fun lemmaEmptyZipperMatchesNothing!74 ((InoxSet Context!10346) List!63666) Unit!156778)

(assert (=> bm!447112 (= call!447065 (lemmaEmptyZipperMatchesNothing!74 lt!2293818 (t!377004 s!2326)))))

(declare-fun bm!447113 () Bool)

(assert (=> bm!447113 (= call!446950 (theoremZipperRegexEquiv!683 (ite c!1020902 lt!2293786 (ite c!1020907 lt!2293772 (ite (and c!1020903 c!1020911) lt!2293829 lt!2293860))) (ite c!1020902 (Cons!63544 lt!2293886 Nil!63544) (ite c!1020907 (Cons!63544 lt!2293863 Nil!63544) (ite (and c!1020903 c!1020911) (Cons!63544 lt!2293899 Nil!63544) (Cons!63544 lt!2293775 Nil!63544)))) (ite c!1020902 lt!2293730 (ite c!1020907 lt!2293743 (ite (and c!1020903 c!1020911) lt!2293892 (reg!16118 (regOne!32090 r!7292))))) (ite (or c!1020902 c!1020907) s!2326 (ite c!1020903 (ite c!1020911 s!2326 (_1!36189 lt!2293864)) (_1!36189 lt!2293851)))))))

(declare-fun b!5772991 () Bool)

(declare-fun e!3546378 () Bool)

(assert (=> b!5772991 e!3546378))

(declare-fun res!2436673 () Bool)

(assert (=> b!5772991 (=> (not res!2436673) (not e!3546378))))

(assert (=> b!5772991 (= res!2436673 (= call!447095 call!447014))))

(declare-fun lt!2293821 () Unit!156778)

(assert (=> b!5772991 (= lt!2293821 call!447012)))

(assert (=> b!5772991 (= call!446997 call!446930)))

(declare-fun lt!2293800 () Unit!156778)

(assert (=> b!5772991 (= lt!2293800 call!446998)))

(assert (=> b!5772991 (not call!446938)))

(declare-fun lt!2293873 () Unit!156778)

(assert (=> b!5772991 (= lt!2293873 call!447065)))

(declare-fun Unit!156799 () Unit!156778)

(assert (=> b!5772991 (= e!3546365 Unit!156799)))

(declare-fun bm!447114 () Bool)

(assert (=> bm!447114 (= call!447088 call!447026)))

(declare-fun bm!447115 () Bool)

(assert (=> bm!447115 (= call!447027 call!446987)))

(declare-fun b!5772992 () Bool)

(assert (=> b!5772992 (= e!3546378 (= lt!2293862 call!446952))))

(declare-fun bm!447116 () Bool)

(assert (=> bm!447116 (= call!447010 call!447082)))

(declare-fun b!5772993 () Bool)

(assert (=> b!5772993 (= e!3546361 (matchZipper!1927 lt!2293761 (t!377004 s!2326)))))

(declare-fun b!5772994 () Bool)

(assert (=> b!5772994 (= e!3546369 lt!2293893)))

(declare-fun bm!447117 () Bool)

(assert (=> bm!447117 (= call!446939 (++!14006 (ite c!1020903 (_1!36189 lt!2293864) (_1!36189 lt!2293729)) (ite c!1020903 lt!2293716 (_2!36189 lt!2293729))))))

(declare-fun bm!447118 () Bool)

(assert (=> bm!447118 (= call!447018 call!447067)))

(declare-fun b!5772995 () Bool)

(declare-fun res!2436660 () Bool)

(assert (=> b!5772995 (=> res!2436660 e!3546362)))

(assert (=> b!5772995 (= res!2436660 (not ((_ is Cons!63543) (exprs!5673 (h!69992 zl!343)))))))

(declare-fun bm!447119 () Bool)

(assert (=> bm!447119 (= call!447066 call!447003)))

(declare-fun bm!447120 () Bool)

(assert (=> bm!447120 (= call!446966 call!446967)))

(assert (= (and start!592788 res!2436651) b!5772971))

(assert (= (and b!5772971 res!2436677) b!5772966))

(assert (= (and b!5772966 res!2436662) b!5772961))

(assert (= (and b!5772961 (not res!2436676)) b!5772983))

(assert (= (and b!5772983 (not res!2436674)) b!5772942))

(assert (= (and b!5772942 (not res!2436671)) b!5772995))

(assert (= (and b!5772995 (not res!2436660)) b!5772962))

(assert (= (and b!5772962 (not res!2436672)) b!5772974))

(assert (= (and b!5772974 (not res!2436658)) b!5772932))

(assert (= (and b!5772932 (not res!2436678)) b!5772986))

(assert (= (and b!5772986 (not res!2436656)) b!5772949))

(assert (= (and b!5772949 c!1020901) b!5772946))

(assert (= (and b!5772949 (not c!1020901)) b!5772989))

(assert (= (and b!5772946 (not res!2436664)) b!5772993))

(assert (= (and b!5772949 c!1020905) b!5772944))

(assert (= (and b!5772949 (not c!1020905)) b!5772952))

(assert (= (and b!5772952 c!1020902) b!5772963))

(assert (= (and b!5772952 (not c!1020902)) b!5772948))

(assert (= (and b!5772963 (not res!2436669)) b!5772982))

(assert (= (and b!5772963 c!1020909) b!5772947))

(assert (= (and b!5772963 (not c!1020909)) b!5772957))

(assert (= (and b!5772947 (not res!2436659)) b!5772977))

(assert (= (and b!5772963 c!1020899) b!5772965))

(assert (= (and b!5772963 (not c!1020899)) b!5772967))

(assert (= (and b!5772965 (not res!2436675)) b!5772951))

(assert (= (and b!5772963 res!2436654) b!5772979))

(assert (= (and b!5772948 res!2436661) b!5772984))

(assert (= (and b!5772948 c!1020907) b!5772937))

(assert (= (and b!5772948 (not c!1020907)) b!5772973))

(assert (= (and b!5772937 (not res!2436663)) b!5772972))

(assert (= (and b!5772937 (not res!2436652)) b!5772955))

(assert (= (and b!5772937 res!2436665) b!5772970))

(assert (= (and b!5772973 c!1020910) b!5772964))

(assert (= (and b!5772973 (not c!1020910)) b!5772945))

(assert (= (and b!5772964 res!2436653) b!5772985))

(assert (= (and b!5772945 c!1020908) b!5772939))

(assert (= (and b!5772945 (not c!1020908)) b!5772968))

(assert (= (and b!5772939 res!2436668) b!5772980))

(assert (= (and b!5772939 c!1020903) b!5772956))

(assert (= (and b!5772939 (not c!1020903)) b!5772954))

(assert (= (and b!5772956 c!1020911) b!5772933))

(assert (= (and b!5772956 (not c!1020911)) b!5772969))

(assert (= (and b!5772933 res!2436670) b!5772953))

(assert (= (and b!5772969 res!2436666) b!5772940))

(assert (= (or b!5772933 b!5772969) bm!447093))

(assert (= (or b!5772933 b!5772969) bm!447045))

(assert (= (or b!5772953 b!5772969) bm!447016))

(assert (= (or b!5772933 b!5772969) bm!447028))

(assert (= (and b!5772954 c!1020904) b!5772990))

(assert (= (and b!5772954 (not c!1020904)) b!5772959))

(assert (= (and b!5772990 c!1020900) b!5772936))

(assert (= (and b!5772990 (not c!1020900)) b!5772950))

(assert (= (and b!5772936 res!2436679) b!5772994))

(assert (= (and b!5772936 res!2436650) b!5772981))

(assert (= (and b!5772950 res!2436667) b!5772943))

(assert (= (or b!5772936 b!5772950) bm!447017))

(assert (= (or b!5772936 b!5772950) bm!447107))

(assert (= (or b!5772936 b!5772950) bm!447042))

(assert (= (or b!5772936 b!5772950) bm!447109))

(assert (= (or b!5772936 b!5772950) bm!447079))

(assert (= (or b!5772936 b!5772950) bm!446941))

(assert (= (or b!5772936 b!5772950) bm!446931))

(assert (= (or b!5772936 b!5772950) bm!447065))

(assert (= (or b!5772936 b!5772950) bm!446922))

(assert (= (or b!5772936 b!5772950) bm!447080))

(assert (= (or b!5772936 b!5772950) bm!446956))

(assert (= (or b!5772936 b!5772950) bm!447114))

(assert (= (or b!5772936 b!5772950) bm!446954))

(assert (= (or b!5772936 b!5772950) bm!446940))

(assert (= (or b!5772936 b!5772950) bm!447058))

(assert (= (or b!5772936 b!5772950) bm!447021))

(assert (= (or b!5772936 b!5772950) bm!447075))

(assert (= (or b!5772936 b!5772950) bm!447095))

(assert (= (or b!5772936 b!5772950) bm!447004))

(assert (= (or b!5772969 bm!447004) bm!447096))

(assert (= (or b!5772969 b!5772936) bm!446945))

(assert (= (or b!5772956 bm!446931) bm!446944))

(assert (= (or bm!447016 b!5772956 b!5772954) bm!446990))

(assert (= (or bm!447093 bm!447114) bm!447023))

(assert (= (or b!5772969 bm!447065) bm!446926))

(assert (= (or b!5772969 b!5772936) bm!446939))

(assert (= (or b!5772969 b!5772936) bm!447111))

(assert (= (or b!5772956 b!5772936) bm!447033))

(assert (= (or b!5772969 b!5772936) bm!446919))

(assert (= (or b!5772956 b!5772936) bm!446982))

(assert (= (or b!5772969 b!5772936) bm!447117))

(assert (= (or b!5772969 bm!446956) bm!447078))

(assert (= (or b!5772933 b!5772950) bm!446976))

(assert (= (or b!5772969 b!5772936) bm!447014))

(assert (= (or b!5772969 b!5772936) bm!446999))

(assert (= (or b!5772969 bm!446922) bm!447049))

(assert (= (or b!5772933 b!5772950) bm!446970))

(assert (= (or b!5772969 bm!446954) bm!447081))

(assert (= (or b!5772969 b!5772936) bm!447094))

(assert (= (or b!5772956 b!5772936) bm!447066))

(assert (= (or bm!447045 b!5772936) bm!447000))

(assert (= (or b!5772969 b!5772936) bm!447037))

(assert (= (or b!5772969 bm!447042) bm!447034))

(assert (= (or b!5772969 b!5772936) bm!447077))

(assert (= (or b!5772969 b!5772936) bm!446951))

(assert (= (or b!5772969 b!5772936) bm!446938))

(assert (= (or b!5772969 b!5772936) bm!446983))

(assert (= (or b!5772969 b!5772936) bm!447015))

(assert (= (or b!5772956 bm!447058) bm!447005))

(assert (= (or bm!447028 b!5772990) bm!446989))

(assert (= (or b!5772969 b!5772936) bm!447026))

(assert (= (or b!5772956 bm!447109) bm!446935))

(assert (= (or b!5772956 bm!447080) bm!446966))

(assert (= (or b!5772969 bm!447079) bm!446973))

(assert (= (or b!5772933 b!5772950) bm!446986))

(assert (= (or b!5772969 bm!447107) bm!446930))

(assert (= (or b!5772969 b!5772936) bm!446979))

(assert (= (or b!5772933 b!5772950) bm!446961))

(assert (= (or b!5772969 bm!447095) bm!447072))

(assert (= (or b!5772969 b!5772936) bm!447110))

(assert (= (or b!5772969 b!5772936) bm!446934))

(assert (= (or b!5772969 bm!447017) bm!447002))

(assert (= (or b!5772969 bm!446940) bm!447070))

(assert (= (or b!5772969 b!5772936) bm!446949))

(assert (= (or b!5772956 b!5772936) bm!447019))

(assert (= (or b!5772969 bm!447021) bm!447061))

(assert (= (or b!5772969 b!5772936) bm!447055))

(assert (= (and b!5772968 c!1020906) b!5772975))

(assert (= (and b!5772968 (not c!1020906)) b!5772991))

(assert (= (and b!5772975 res!2436657) b!5772987))

(assert (= (and b!5772991 res!2436673) b!5772992))

(assert (= (or b!5772975 b!5772991) bm!446921))

(assert (= (or b!5772975 b!5772991) bm!447047))

(assert (= (or b!5772975 b!5772991) bm!446932))

(assert (= (or b!5772975 b!5772991) bm!447076))

(assert (= (or b!5772975 b!5772991) bm!446968))

(assert (= (or b!5772975 b!5772991) bm!447112))

(assert (= (or b!5772975 b!5772991) bm!446985))

(assert (= (or b!5772975 b!5772991) bm!447089))

(assert (= (or b!5772975 b!5772992) bm!447099))

(assert (= (or bm!447096 bm!446968) bm!446948))

(assert (= (or b!5772939 bm!447089) bm!446959))

(assert (= (or bm!446973 b!5772975) bm!447009))

(assert (= (or bm!447055 bm!447076) bm!446972))

(assert (= (or b!5772939 b!5772975) bm!447010))

(assert (= (or b!5772939 b!5772975) bm!447118))

(assert (= (or bm!446930 bm!446921) bm!446937))

(assert (= (or b!5772939 bm!447047) bm!447086))

(assert (= (or bm!446986 b!5772975) bm!447048))

(assert (= (or b!5772939 bm!446985) bm!446950))

(assert (= (or b!5772939 b!5772975) bm!446974))

(assert (= (or b!5772939 bm!446990 bm!447099) bm!446917))

(assert (= (or bm!446989 b!5772975) bm!447040))

(assert (= (or bm!446934 b!5772975) bm!447052))

(assert (= (or bm!446941 bm!446932) bm!447038))

(assert (= (or b!5772936 b!5772987) bm!446975))

(assert (= (or bm!447034 b!5772975) bm!447020))

(assert (= (or b!5772964 bm!446970) bm!447006))

(assert (= (or b!5772964 bm!446951) bm!446971))

(assert (= (or b!5772964 bm!447049) bm!446915))

(assert (= (or b!5772964 b!5772936) bm!447044))

(assert (= (or b!5772964 bm!446948) bm!447039))

(assert (= (or b!5772964 bm!447033) bm!447101))

(assert (= (or b!5772964 bm!447038) bm!446929))

(assert (= (or b!5772985 bm!446972) bm!447067))

(assert (= (or b!5772964 b!5772939) bm!447106))

(assert (= (or b!5772964 bm!447078) bm!446987))

(assert (= (or b!5772964 bm!447026) bm!446980))

(assert (= (or b!5772964 bm!447086) bm!447116))

(assert (= (or b!5772964 bm!447005) bm!447082))

(assert (= (or b!5772964 bm!446944) bm!447084))

(assert (= (or b!5772964 bm!447009) bm!446920))

(assert (= (or b!5772964 bm!447048) bm!447105))

(assert (= (or b!5772964 bm!446935) bm!447120))

(assert (= (or b!5772964 b!5772939) bm!447018))

(assert (= (or b!5772964 bm!447020) bm!447056))

(assert (= (or b!5772964 bm!447070) bm!447088))

(assert (= (or b!5772964 bm!446926) bm!447074))

(assert (= (or b!5772964 bm!447010) bm!447068))

(assert (= (or b!5772964 b!5772936) bm!447059))

(assert (= (or b!5772964 bm!446919) bm!447115))

(assert (= (or b!5772964 bm!447019) bm!447090))

(assert (= (or b!5772964 b!5772936) bm!446998))

(assert (= (or b!5772964 bm!447052) bm!447036))

(assert (= (or b!5772964 bm!446959) bm!446918))

(assert (= (or b!5772964 bm!446939) bm!446994))

(assert (= (or b!5772964 bm!447072) bm!446923))

(assert (= (or b!5772964 b!5772936) bm!447025))

(assert (= (or b!5772937 b!5772939) bm!447108))

(assert (= (or b!5772937 bm!446920) bm!446928))

(assert (= (or b!5772937 b!5772936) bm!446927))

(assert (= (or b!5772937 bm!447067) bm!446993))

(assert (= (or b!5772970 bm!446975) bm!446943))

(assert (= (or b!5772937 bm!447044) bm!446965))

(assert (= (or b!5772937 bm!447068) bm!446963))

(assert (= (or b!5772937 b!5772964) bm!446962))

(assert (= (or b!5772937 bm!447090) bm!447102))

(assert (= (or b!5772937 bm!447105) bm!447007))

(assert (= (or b!5772937 bm!447088) bm!447041))

(assert (= (or b!5772937 bm!447101) bm!447029))

(assert (= (or b!5772937 bm!447000) bm!447091))

(assert (= (or b!5772937 bm!446980) bm!446957))

(assert (= (or b!5772937 bm!447106) bm!447085))

(assert (= (or b!5772937 b!5772975) bm!447087))

(assert (= (or b!5772937 bm!447040) bm!447097))

(assert (= (or b!5772937 bm!446918) bm!446988))

(assert (= (or b!5772937 bm!447084) bm!447057))

(assert (= (or b!5772937 bm!446929) bm!447008))

(assert (= (or b!5772937 bm!447074) bm!447098))

(assert (= (or b!5772937 bm!447120) bm!446991))

(assert (= (or b!5772937 bm!446994) bm!447100))

(assert (= (or b!5772937 bm!446998) bm!447054))

(assert (= (or b!5772937 bm!447115) bm!447051))

(assert (= (or b!5772937 bm!447036) bm!446996))

(assert (= (or b!5772937 bm!447116) bm!447050))

(assert (= (or b!5772937 bm!446976) bm!446981))

(assert (= (or b!5772937 b!5772964) bm!447035))

(assert (= (or b!5772937 bm!446937) bm!446924))

(assert (= (or b!5772937 bm!447082) bm!447013))

(assert (= (or b!5772937 bm!446915) bm!446953))

(assert (= (or b!5772937 bm!447018) bm!447119))

(assert (= (or b!5772937 bm!447118) bm!446978))

(assert (= (or b!5772937 bm!447056) bm!446992))

(assert (= (or b!5772937 bm!446966) bm!447022))

(assert (= (or b!5772955 bm!446917) bm!447073))

(assert (= (or b!5772937 bm!446961) bm!446964))

(assert (= (or b!5772937 bm!446950) bm!447053))

(assert (= (or b!5772937 bm!447025) bm!446936))

(assert (= (or b!5772937 bm!446923) bm!447083))

(assert (= (or b!5772965 b!5772937) bm!447030))

(assert (= (or b!5772963 bm!446993) bm!447104))

(assert (= (or b!5772951 b!5772977 b!5772937) bm!446967))

(assert (= (or b!5772963 bm!447085) bm!447027))

(assert (= (or b!5772963 bm!447073) bm!446946))

(assert (= (or b!5772963 bm!447023) bm!446960))

(assert (= (or b!5772963 bm!447059) bm!447012))

(assert (= (or b!5772963 bm!446981) bm!446947))

(assert (= (or b!5772963 b!5772939) bm!446942))

(assert (= (or b!5772963 b!5772939) bm!447092))

(assert (= (or b!5772963 bm!447035) bm!446977))

(assert (= (or b!5772963 bm!446979) bm!446952))

(assert (= (or b!5772963 bm!446978) bm!446984))

(assert (= (or b!5772963 bm!446965) bm!447046))

(assert (= (or b!5772963 bm!447007) bm!446933))

(assert (= (or b!5772963 bm!447053) bm!447003))

(assert (= (or b!5772979 bm!446943) bm!446995))

(assert (= (or b!5772963 bm!446992) bm!446925))

(assert (= (or b!5772963 bm!447050) bm!447063))

(assert (= (or b!5772963 b!5772937) bm!446958))

(assert (= (or b!5772947 b!5772972) bm!446969))

(assert (= (or b!5772963 b!5772984) bm!447043))

(assert (= (or b!5772963 bm!446988) bm!447032))

(assert (= (or b!5772965 bm!447087) bm!446997))

(assert (= (or b!5772963 b!5772937) bm!447001))

(assert (= (or b!5772963 bm!447119) bm!447069))

(assert (= (or b!5772963 bm!446964) bm!447071))

(assert (= (or b!5772963 bm!446924) bm!446955))

(assert (= (or b!5772963 bm!447008) bm!447103))

(assert (= (or b!5772963 bm!446996) bm!447031))

(assert (= (or b!5772963 bm!447097) bm!447024))

(assert (= (or b!5772963 bm!447091) bm!447113))

(assert (= (or b!5772965 b!5772982 bm!446928) bm!447060))

(assert (= (or b!5772944 bm!447046) bm!447062))

(assert (= (or b!5772944 bm!446933) bm!447064))

(assert (= (or b!5772944 bm!446925) bm!447011))

(assert (= (or b!5772944 bm!446969) bm!446916))

(assert (= (and b!5772949 (not res!2436655)) b!5772958))

(assert (= (and start!592788 ((_ is ElementMatch!15789) r!7292)) b!5772941))

(assert (= (and start!592788 ((_ is Concat!24634) r!7292)) b!5772988))

(assert (= (and start!592788 ((_ is Star!15789) r!7292)) b!5772960))

(assert (= (and start!592788 ((_ is Union!15789) r!7292)) b!5772976))

(assert (= (and start!592788 condSetEmpty!38799) setIsEmpty!38799))

(assert (= (and start!592788 (not condSetEmpty!38799)) setNonEmpty!38799))

(assert (= setNonEmpty!38799 b!5772978))

(assert (= b!5772935 b!5772934))

(assert (= (and start!592788 ((_ is Cons!63544) zl!343)) b!5772935))

(assert (= (and start!592788 ((_ is Cons!63542) s!2326)) b!5772938))

(declare-fun m!6717670 () Bool)

(assert (=> b!5772932 m!6717670))

(declare-fun m!6717672 () Bool)

(assert (=> b!5772932 m!6717672))

(declare-fun m!6717674 () Bool)

(assert (=> b!5772932 m!6717674))

(declare-fun m!6717676 () Bool)

(assert (=> b!5772932 m!6717676))

(assert (=> b!5772932 m!6717676))

(declare-fun m!6717678 () Bool)

(assert (=> b!5772932 m!6717678))

(assert (=> b!5772932 m!6717670))

(declare-fun m!6717680 () Bool)

(assert (=> b!5772932 m!6717680))

(declare-fun m!6717682 () Bool)

(assert (=> bm!446967 m!6717682))

(declare-fun m!6717684 () Bool)

(assert (=> bm!447111 m!6717684))

(declare-fun m!6717686 () Bool)

(assert (=> b!5772958 m!6717686))

(declare-fun m!6717688 () Bool)

(assert (=> b!5772958 m!6717688))

(assert (=> b!5772958 m!6717688))

(declare-fun m!6717690 () Bool)

(assert (=> b!5772958 m!6717690))

(declare-fun m!6717692 () Bool)

(assert (=> bm!447022 m!6717692))

(declare-fun m!6717694 () Bool)

(assert (=> b!5772961 m!6717694))

(declare-fun m!6717696 () Bool)

(assert (=> b!5772961 m!6717696))

(declare-fun m!6717698 () Bool)

(assert (=> b!5772961 m!6717698))

(declare-fun m!6717700 () Bool)

(assert (=> bm!447060 m!6717700))

(declare-fun m!6717702 () Bool)

(assert (=> bm!447061 m!6717702))

(declare-fun m!6717704 () Bool)

(assert (=> b!5772939 m!6717704))

(declare-fun m!6717706 () Bool)

(assert (=> b!5772939 m!6717706))

(declare-fun m!6717708 () Bool)

(assert (=> b!5772939 m!6717708))

(declare-fun m!6717710 () Bool)

(assert (=> b!5772939 m!6717710))

(declare-fun m!6717712 () Bool)

(assert (=> b!5772939 m!6717712))

(declare-fun m!6717714 () Bool)

(assert (=> bm!447043 m!6717714))

(declare-fun m!6717716 () Bool)

(assert (=> bm!447030 m!6717716))

(declare-fun m!6717718 () Bool)

(assert (=> bm!447029 m!6717718))

(declare-fun m!6717720 () Bool)

(assert (=> bm!447102 m!6717720))

(declare-fun m!6717722 () Bool)

(assert (=> b!5772949 m!6717722))

(declare-fun m!6717724 () Bool)

(assert (=> b!5772949 m!6717724))

(declare-fun m!6717726 () Bool)

(assert (=> b!5772949 m!6717726))

(declare-fun m!6717728 () Bool)

(assert (=> b!5772949 m!6717728))

(declare-fun m!6717730 () Bool)

(assert (=> b!5772949 m!6717730))

(declare-fun m!6717732 () Bool)

(assert (=> b!5772949 m!6717732))

(declare-fun m!6717734 () Bool)

(assert (=> b!5772949 m!6717734))

(declare-fun m!6717736 () Bool)

(assert (=> b!5772949 m!6717736))

(declare-fun m!6717738 () Bool)

(assert (=> b!5772949 m!6717738))

(declare-fun m!6717740 () Bool)

(assert (=> b!5772949 m!6717740))

(declare-fun m!6717742 () Bool)

(assert (=> b!5772949 m!6717742))

(declare-fun m!6717744 () Bool)

(assert (=> b!5772942 m!6717744))

(declare-fun m!6717746 () Bool)

(assert (=> bm!447039 m!6717746))

(declare-fun m!6717748 () Bool)

(assert (=> bm!446971 m!6717748))

(declare-fun m!6717750 () Bool)

(assert (=> b!5772983 m!6717750))

(declare-fun m!6717752 () Bool)

(assert (=> bm!446977 m!6717752))

(declare-fun m!6717754 () Bool)

(assert (=> bm!446947 m!6717754))

(declare-fun m!6717756 () Bool)

(assert (=> bm!447100 m!6717756))

(declare-fun m!6717758 () Bool)

(assert (=> bm!447041 m!6717758))

(declare-fun m!6717760 () Bool)

(assert (=> b!5772947 m!6717760))

(declare-fun m!6717762 () Bool)

(assert (=> bm!447108 m!6717762))

(declare-fun m!6717764 () Bool)

(assert (=> bm!446960 m!6717764))

(declare-fun m!6717766 () Bool)

(assert (=> bm!446942 m!6717766))

(declare-fun m!6717768 () Bool)

(assert (=> bm!446957 m!6717768))

(declare-fun m!6717770 () Bool)

(assert (=> b!5772964 m!6717770))

(declare-fun m!6717772 () Bool)

(assert (=> bm!447063 m!6717772))

(declare-fun m!6717774 () Bool)

(assert (=> bm!446987 m!6717774))

(declare-fun m!6717776 () Bool)

(assert (=> bm!446927 m!6717776))

(declare-fun m!6717778 () Bool)

(assert (=> b!5772971 m!6717778))

(declare-fun m!6717780 () Bool)

(assert (=> bm!446938 m!6717780))

(declare-fun m!6717782 () Bool)

(assert (=> bm!446955 m!6717782))

(declare-fun m!6717784 () Bool)

(assert (=> bm!447006 m!6717784))

(declare-fun m!6717786 () Bool)

(assert (=> bm!446974 m!6717786))

(declare-fun m!6717788 () Bool)

(assert (=> bm!447075 m!6717788))

(declare-fun m!6717790 () Bool)

(assert (=> bm!447092 m!6717790))

(declare-fun m!6717792 () Bool)

(assert (=> bm!447071 m!6717792))

(declare-fun m!6717794 () Bool)

(assert (=> bm!447012 m!6717794))

(declare-fun m!6717796 () Bool)

(assert (=> bm!447081 m!6717796))

(assert (=> b!5772950 m!6717724))

(declare-fun m!6717798 () Bool)

(assert (=> bm!447027 m!6717798))

(declare-fun m!6717800 () Bool)

(assert (=> b!5772962 m!6717800))

(assert (=> b!5772962 m!6717800))

(declare-fun m!6717802 () Bool)

(assert (=> b!5772962 m!6717802))

(declare-fun m!6717804 () Bool)

(assert (=> bm!447014 m!6717804))

(declare-fun m!6717806 () Bool)

(assert (=> bm!446995 m!6717806))

(declare-fun m!6717808 () Bool)

(assert (=> bm!446995 m!6717808))

(declare-fun m!6717810 () Bool)

(assert (=> start!592788 m!6717810))

(declare-fun m!6717812 () Bool)

(assert (=> bm!447077 m!6717812))

(assert (=> bm!447015 m!6717812))

(declare-fun m!6717814 () Bool)

(assert (=> bm!446984 m!6717814))

(declare-fun m!6717816 () Bool)

(assert (=> bm!446991 m!6717816))

(declare-fun m!6717818 () Bool)

(assert (=> setNonEmpty!38799 m!6717818))

(declare-fun m!6717820 () Bool)

(assert (=> b!5772956 m!6717820))

(declare-fun m!6717822 () Bool)

(assert (=> b!5772937 m!6717822))

(declare-fun m!6717824 () Bool)

(assert (=> b!5772937 m!6717824))

(declare-fun m!6717826 () Bool)

(assert (=> bm!447110 m!6717826))

(declare-fun m!6717828 () Bool)

(assert (=> bm!446952 m!6717828))

(declare-fun m!6717830 () Bool)

(assert (=> bm!446953 m!6717830))

(declare-fun m!6717832 () Bool)

(assert (=> bm!447064 m!6717832))

(declare-fun m!6717834 () Bool)

(assert (=> bm!447054 m!6717834))

(declare-fun m!6717836 () Bool)

(assert (=> b!5772946 m!6717836))

(declare-fun m!6717838 () Bool)

(assert (=> b!5772946 m!6717838))

(declare-fun m!6717840 () Bool)

(assert (=> b!5772946 m!6717840))

(declare-fun m!6717842 () Bool)

(assert (=> bm!446949 m!6717842))

(declare-fun m!6717844 () Bool)

(assert (=> bm!447051 m!6717844))

(declare-fun m!6717846 () Bool)

(assert (=> bm!447066 m!6717846))

(declare-fun m!6717848 () Bool)

(assert (=> bm!446936 m!6717848))

(declare-fun m!6717850 () Bool)

(assert (=> bm!446916 m!6717850))

(declare-fun m!6717852 () Bool)

(assert (=> b!5772966 m!6717852))

(declare-fun m!6717854 () Bool)

(assert (=> bm!446999 m!6717854))

(declare-fun m!6717856 () Bool)

(assert (=> bm!447032 m!6717856))

(declare-fun m!6717858 () Bool)

(assert (=> bm!447104 m!6717858))

(declare-fun m!6717860 () Bool)

(assert (=> bm!447104 m!6717860))

(declare-fun m!6717862 () Bool)

(assert (=> bm!447103 m!6717862))

(declare-fun m!6717864 () Bool)

(assert (=> b!5772935 m!6717864))

(declare-fun m!6717866 () Bool)

(assert (=> bm!446983 m!6717866))

(declare-fun m!6717868 () Bool)

(assert (=> bm!447117 m!6717868))

(declare-fun m!6717870 () Bool)

(assert (=> bm!447003 m!6717870))

(declare-fun m!6717872 () Bool)

(assert (=> bm!447094 m!6717872))

(declare-fun m!6717874 () Bool)

(assert (=> b!5772963 m!6717874))

(declare-fun m!6717876 () Bool)

(assert (=> b!5772963 m!6717876))

(declare-fun m!6717878 () Bool)

(assert (=> b!5772963 m!6717878))

(declare-fun m!6717880 () Bool)

(assert (=> b!5772963 m!6717880))

(declare-fun m!6717882 () Bool)

(assert (=> b!5772963 m!6717882))

(declare-fun m!6717884 () Bool)

(assert (=> b!5772963 m!6717884))

(declare-fun m!6717886 () Bool)

(assert (=> b!5772963 m!6717886))

(declare-fun m!6717888 () Bool)

(assert (=> bm!447002 m!6717888))

(declare-fun m!6717890 () Bool)

(assert (=> bm!447013 m!6717890))

(declare-fun m!6717892 () Bool)

(assert (=> bm!446982 m!6717892))

(declare-fun m!6717894 () Bool)

(assert (=> bm!446945 m!6717894))

(declare-fun m!6717896 () Bool)

(assert (=> bm!447037 m!6717896))

(declare-fun m!6717898 () Bool)

(assert (=> bm!446962 m!6717898))

(declare-fun m!6717900 () Bool)

(assert (=> bm!446997 m!6717900))

(assert (=> b!5772933 m!6717724))

(declare-fun m!6717902 () Bool)

(assert (=> bm!447083 m!6717902))

(declare-fun m!6717904 () Bool)

(assert (=> bm!447069 m!6717904))

(declare-fun m!6717906 () Bool)

(assert (=> bm!446958 m!6717906))

(declare-fun m!6717908 () Bool)

(assert (=> b!5772986 m!6717908))

(declare-fun m!6717910 () Bool)

(assert (=> b!5772993 m!6717910))

(declare-fun m!6717912 () Bool)

(assert (=> bm!447098 m!6717912))

(declare-fun m!6717914 () Bool)

(assert (=> bm!447001 m!6717914))

(declare-fun m!6717916 () Bool)

(assert (=> b!5772936 m!6717916))

(declare-fun m!6717918 () Bool)

(assert (=> b!5772936 m!6717918))

(assert (=> b!5772936 m!6717858))

(declare-fun m!6717920 () Bool)

(assert (=> b!5772936 m!6717920))

(declare-fun m!6717922 () Bool)

(assert (=> b!5772936 m!6717922))

(declare-fun m!6717924 () Bool)

(assert (=> b!5772936 m!6717924))

(declare-fun m!6717926 () Bool)

(assert (=> bm!447112 m!6717926))

(assert (=> b!5772975 m!6717724))

(assert (=> b!5772944 m!6717724))

(declare-fun m!6717928 () Bool)

(assert (=> bm!447062 m!6717928))

(declare-fun m!6717930 () Bool)

(assert (=> bm!447113 m!6717930))

(declare-fun m!6717932 () Bool)

(assert (=> bm!447011 m!6717932))

(declare-fun m!6717934 () Bool)

(assert (=> bm!447024 m!6717934))

(declare-fun m!6717936 () Bool)

(assert (=> bm!447031 m!6717936))

(declare-fun m!6717938 () Bool)

(assert (=> bm!446963 m!6717938))

(declare-fun m!6717940 () Bool)

(assert (=> bm!446946 m!6717940))

(declare-fun m!6717942 () Bool)

(assert (=> bm!447057 m!6717942))

(check-sat (not bm!447081) (not setNonEmpty!38799) (not bm!447111) (not bm!446991) (not b!5772934) (not bm!446995) (not bm!446963) (not bm!447112) (not bm!447003) (not bm!446946) (not bm!447006) (not bm!446977) (not b!5772966) (not bm!447077) (not bm!447104) (not b!5772986) (not start!592788) (not bm!447043) (not bm!447041) tp_is_empty!40831 (not bm!447001) (not bm!447011) (not bm!447032) (not bm!446949) (not b!5772961) (not bm!447002) (not bm!446983) (not bm!447098) (not b!5772958) (not bm!446962) (not bm!447027) (not bm!447062) (not bm!447054) (not bm!447092) (not bm!447029) (not bm!446957) (not bm!446936) (not b!5772963) (not bm!446997) (not bm!447094) (not bm!446982) (not bm!446984) (not b!5772978) (not b!5772936) (not bm!446955) (not bm!447108) (not bm!446927) (not bm!447117) (not bm!447100) (not bm!447013) (not bm!446945) (not bm!447075) (not bm!447069) (not bm!447066) (not bm!446967) (not bm!447031) (not bm!446958) (not bm!447113) (not bm!447083) (not bm!447071) (not bm!447030) (not bm!447064) (not b!5772935) (not b!5772956) (not bm!447061) (not bm!446971) (not b!5772932) (not b!5772946) (not bm!446938) (not b!5772988) (not bm!447012) (not bm!447057) (not bm!446947) (not b!5772938) (not bm!446953) (not b!5772947) (not bm!447051) (not b!5772993) (not bm!446916) (not bm!447060) (not b!5772942) (not b!5772939) (not bm!447103) (not bm!447037) (not bm!446960) (not bm!447102) (not b!5772949) (not bm!447024) (not b!5772971) (not bm!446999) (not b!5772962) (not bm!447063) (not bm!447014) (not bm!447039) (not bm!446987) (not bm!447022) (not b!5772983) (not bm!446942) (not bm!446952) (not b!5772976) (not b!5772960) (not bm!447110) (not bm!447015) (not bm!446974))
(check-sat)
(get-model)

(declare-fun d!1817832 () Bool)

(declare-fun dynLambda!24872 (Int Context!10346) (InoxSet Context!10346))

(assert (=> d!1817832 (= (flatMap!1402 (ite c!1020902 lt!2293774 (ite c!1020907 lt!2293894 (ite c!1020903 lt!2293829 lt!2293719))) (ite c!1020902 lambda!314343 (ite c!1020907 lambda!314343 (ite c!1020903 lambda!314343 lambda!314343)))) (dynLambda!24872 (ite c!1020902 lambda!314343 (ite c!1020907 lambda!314343 (ite c!1020903 lambda!314343 lambda!314343))) (ite c!1020902 lt!2293882 (ite c!1020907 lt!2293792 lt!2293899))))))

(declare-fun lt!2293903 () Unit!156778)

(declare-fun choose!43818 ((InoxSet Context!10346) Context!10346 Int) Unit!156778)

(assert (=> d!1817832 (= lt!2293903 (choose!43818 (ite c!1020902 lt!2293774 (ite c!1020907 lt!2293894 (ite c!1020903 lt!2293829 lt!2293719))) (ite c!1020902 lt!2293882 (ite c!1020907 lt!2293792 lt!2293899)) (ite c!1020902 lambda!314343 (ite c!1020907 lambda!314343 (ite c!1020903 lambda!314343 lambda!314343)))))))

(assert (=> d!1817832 (= (ite c!1020902 lt!2293774 (ite c!1020907 lt!2293894 (ite c!1020903 lt!2293829 lt!2293719))) (store ((as const (Array Context!10346 Bool)) false) (ite c!1020902 lt!2293882 (ite c!1020907 lt!2293792 lt!2293899)) true))))

(assert (=> d!1817832 (= (lemmaFlatMapOnSingletonSet!934 (ite c!1020902 lt!2293774 (ite c!1020907 lt!2293894 (ite c!1020903 lt!2293829 lt!2293719))) (ite c!1020902 lt!2293882 (ite c!1020907 lt!2293792 lt!2293899)) (ite c!1020902 lambda!314343 (ite c!1020907 lambda!314343 (ite c!1020903 lambda!314343 lambda!314343)))) lt!2293903)))

(declare-fun b_lambda!217795 () Bool)

(assert (=> (not b_lambda!217795) (not d!1817832)))

(declare-fun bs!1354303 () Bool)

(assert (= bs!1354303 d!1817832))

(declare-fun m!6717944 () Bool)

(assert (=> bs!1354303 m!6717944))

(declare-fun m!6717946 () Bool)

(assert (=> bs!1354303 m!6717946))

(declare-fun m!6717948 () Bool)

(assert (=> bs!1354303 m!6717948))

(declare-fun m!6717950 () Bool)

(assert (=> bs!1354303 m!6717950))

(assert (=> bm!447071 d!1817832))

(declare-fun d!1817834 () Bool)

(declare-fun c!1020915 () Bool)

(assert (=> d!1817834 (= c!1020915 (isEmpty!35440 (ite (or c!1020902 c!1020907) (t!377004 s!2326) (ite c!1020910 s!2326 (ite c!1020908 (ite c!1020903 lt!2293825 (_1!36189 lt!2293851)) (t!377004 s!2326))))))))

(declare-fun e!3546398 () Bool)

(assert (=> d!1817834 (= (matchZipper!1927 (ite c!1020902 ((_ map or) lt!2293777 lt!2293711) (ite c!1020907 ((_ map or) lt!2293874 lt!2293747) (ite c!1020910 z!1189 (ite c!1020908 (ite c!1020903 (store ((as const (Array Context!10346 Bool)) false) (Context!10347 call!447096) true) lt!2293860) (ite c!1020906 lt!2293761 lt!2293818))))) (ite (or c!1020902 c!1020907) (t!377004 s!2326) (ite c!1020910 s!2326 (ite c!1020908 (ite c!1020903 lt!2293825 (_1!36189 lt!2293851)) (t!377004 s!2326))))) e!3546398)))

(declare-fun b!5773010 () Bool)

(declare-fun nullableZipper!1711 ((InoxSet Context!10346)) Bool)

(assert (=> b!5773010 (= e!3546398 (nullableZipper!1711 (ite c!1020902 ((_ map or) lt!2293777 lt!2293711) (ite c!1020907 ((_ map or) lt!2293874 lt!2293747) (ite c!1020910 z!1189 (ite c!1020908 (ite c!1020903 (store ((as const (Array Context!10346 Bool)) false) (Context!10347 call!447096) true) lt!2293860) (ite c!1020906 lt!2293761 lt!2293818)))))))))

(declare-fun b!5773011 () Bool)

(declare-fun head!12204 (List!63666) C!31848)

(declare-fun tail!11299 (List!63666) List!63666)

(assert (=> b!5773011 (= e!3546398 (matchZipper!1927 (derivationStepZipper!1864 (ite c!1020902 ((_ map or) lt!2293777 lt!2293711) (ite c!1020907 ((_ map or) lt!2293874 lt!2293747) (ite c!1020910 z!1189 (ite c!1020908 (ite c!1020903 (store ((as const (Array Context!10346 Bool)) false) (Context!10347 call!447096) true) lt!2293860) (ite c!1020906 lt!2293761 lt!2293818))))) (head!12204 (ite (or c!1020902 c!1020907) (t!377004 s!2326) (ite c!1020910 s!2326 (ite c!1020908 (ite c!1020903 lt!2293825 (_1!36189 lt!2293851)) (t!377004 s!2326)))))) (tail!11299 (ite (or c!1020902 c!1020907) (t!377004 s!2326) (ite c!1020910 s!2326 (ite c!1020908 (ite c!1020903 lt!2293825 (_1!36189 lt!2293851)) (t!377004 s!2326)))))))))

(assert (= (and d!1817834 c!1020915) b!5773010))

(assert (= (and d!1817834 (not c!1020915)) b!5773011))

(declare-fun m!6717952 () Bool)

(assert (=> d!1817834 m!6717952))

(declare-fun m!6717954 () Bool)

(assert (=> b!5773010 m!6717954))

(declare-fun m!6717956 () Bool)

(assert (=> b!5773011 m!6717956))

(assert (=> b!5773011 m!6717956))

(declare-fun m!6717958 () Bool)

(assert (=> b!5773011 m!6717958))

(declare-fun m!6717960 () Bool)

(assert (=> b!5773011 m!6717960))

(assert (=> b!5773011 m!6717958))

(assert (=> b!5773011 m!6717960))

(declare-fun m!6717962 () Bool)

(assert (=> b!5773011 m!6717962))

(assert (=> bm!447104 d!1817834))

(declare-fun bs!1354304 () Bool)

(declare-fun d!1817836 () Bool)

(assert (= bs!1354304 (and d!1817836 b!5772969)))

(declare-fun lambda!314370 () Int)

(assert (=> bs!1354304 (= lambda!314370 lambda!314357)))

(declare-fun bs!1354305 () Bool)

(assert (= bs!1354305 (and d!1817836 b!5772936)))

(assert (=> bs!1354305 (= lambda!314370 lambda!314359)))

(declare-fun b!5773032 () Bool)

(declare-fun e!3546413 () Bool)

(declare-fun lt!2293906 () Regex!15789)

(declare-fun isEmptyExpr!1270 (Regex!15789) Bool)

(assert (=> b!5773032 (= e!3546413 (isEmptyExpr!1270 lt!2293906))))

(declare-fun b!5773033 () Bool)

(declare-fun e!3546411 () Bool)

(assert (=> b!5773033 (= e!3546411 (isEmpty!35442 (t!377005 (ite c!1020902 lt!2293699 (ite c!1020907 lt!2293797 lt!2293704)))))))

(declare-fun b!5773034 () Bool)

(declare-fun e!3546416 () Bool)

(declare-fun head!12205 (List!63667) Regex!15789)

(assert (=> b!5773034 (= e!3546416 (= lt!2293906 (head!12205 (ite c!1020902 lt!2293699 (ite c!1020907 lt!2293797 lt!2293704)))))))

(declare-fun b!5773035 () Bool)

(declare-fun e!3546412 () Regex!15789)

(assert (=> b!5773035 (= e!3546412 EmptyExpr!15789)))

(declare-fun b!5773036 () Bool)

(declare-fun e!3546414 () Bool)

(assert (=> b!5773036 (= e!3546414 e!3546413)))

(declare-fun c!1020926 () Bool)

(assert (=> b!5773036 (= c!1020926 (isEmpty!35442 (ite c!1020902 lt!2293699 (ite c!1020907 lt!2293797 lt!2293704))))))

(declare-fun b!5773037 () Bool)

(assert (=> b!5773037 (= e!3546413 e!3546416)))

(declare-fun c!1020927 () Bool)

(declare-fun tail!11300 (List!63667) List!63667)

(assert (=> b!5773037 (= c!1020927 (isEmpty!35442 (tail!11300 (ite c!1020902 lt!2293699 (ite c!1020907 lt!2293797 lt!2293704)))))))

(assert (=> d!1817836 e!3546414))

(declare-fun res!2436686 () Bool)

(assert (=> d!1817836 (=> (not res!2436686) (not e!3546414))))

(assert (=> d!1817836 (= res!2436686 (validRegex!7525 lt!2293906))))

(declare-fun e!3546415 () Regex!15789)

(assert (=> d!1817836 (= lt!2293906 e!3546415)))

(declare-fun c!1020924 () Bool)

(assert (=> d!1817836 (= c!1020924 e!3546411)))

(declare-fun res!2436685 () Bool)

(assert (=> d!1817836 (=> (not res!2436685) (not e!3546411))))

(assert (=> d!1817836 (= res!2436685 ((_ is Cons!63543) (ite c!1020902 lt!2293699 (ite c!1020907 lt!2293797 lt!2293704))))))

(declare-fun forall!14902 (List!63667 Int) Bool)

(assert (=> d!1817836 (forall!14902 (ite c!1020902 lt!2293699 (ite c!1020907 lt!2293797 lt!2293704)) lambda!314370)))

(assert (=> d!1817836 (= (generalisedConcat!1404 (ite c!1020902 lt!2293699 (ite c!1020907 lt!2293797 lt!2293704))) lt!2293906)))

(declare-fun b!5773038 () Bool)

(assert (=> b!5773038 (= e!3546415 e!3546412)))

(declare-fun c!1020925 () Bool)

(assert (=> b!5773038 (= c!1020925 ((_ is Cons!63543) (ite c!1020902 lt!2293699 (ite c!1020907 lt!2293797 lt!2293704))))))

(declare-fun b!5773039 () Bool)

(declare-fun isConcat!793 (Regex!15789) Bool)

(assert (=> b!5773039 (= e!3546416 (isConcat!793 lt!2293906))))

(declare-fun b!5773040 () Bool)

(assert (=> b!5773040 (= e!3546412 (Concat!24634 (h!69991 (ite c!1020902 lt!2293699 (ite c!1020907 lt!2293797 lt!2293704))) (generalisedConcat!1404 (t!377005 (ite c!1020902 lt!2293699 (ite c!1020907 lt!2293797 lt!2293704))))))))

(declare-fun b!5773041 () Bool)

(assert (=> b!5773041 (= e!3546415 (h!69991 (ite c!1020902 lt!2293699 (ite c!1020907 lt!2293797 lt!2293704))))))

(assert (= (and d!1817836 res!2436685) b!5773033))

(assert (= (and d!1817836 c!1020924) b!5773041))

(assert (= (and d!1817836 (not c!1020924)) b!5773038))

(assert (= (and b!5773038 c!1020925) b!5773040))

(assert (= (and b!5773038 (not c!1020925)) b!5773035))

(assert (= (and d!1817836 res!2436686) b!5773036))

(assert (= (and b!5773036 c!1020926) b!5773032))

(assert (= (and b!5773036 (not c!1020926)) b!5773037))

(assert (= (and b!5773037 c!1020927) b!5773034))

(assert (= (and b!5773037 (not c!1020927)) b!5773039))

(declare-fun m!6717964 () Bool)

(assert (=> b!5773036 m!6717964))

(declare-fun m!6717966 () Bool)

(assert (=> b!5773033 m!6717966))

(declare-fun m!6717968 () Bool)

(assert (=> b!5773037 m!6717968))

(assert (=> b!5773037 m!6717968))

(declare-fun m!6717970 () Bool)

(assert (=> b!5773037 m!6717970))

(declare-fun m!6717972 () Bool)

(assert (=> b!5773032 m!6717972))

(declare-fun m!6717974 () Bool)

(assert (=> b!5773034 m!6717974))

(declare-fun m!6717976 () Bool)

(assert (=> d!1817836 m!6717976))

(declare-fun m!6717978 () Bool)

(assert (=> d!1817836 m!6717978))

(declare-fun m!6717980 () Bool)

(assert (=> b!5773039 m!6717980))

(declare-fun m!6717982 () Bool)

(assert (=> b!5773040 m!6717982))

(assert (=> bm!446977 d!1817836))

(declare-fun d!1817838 () Bool)

(assert (=> d!1817838 (= (flatMap!1402 lt!2293700 lambda!314343) (dynLambda!24872 lambda!314343 lt!2293899))))

(declare-fun lt!2293907 () Unit!156778)

(assert (=> d!1817838 (= lt!2293907 (choose!43818 lt!2293700 lt!2293899 lambda!314343))))

(assert (=> d!1817838 (= lt!2293700 (store ((as const (Array Context!10346 Bool)) false) lt!2293899 true))))

(assert (=> d!1817838 (= (lemmaFlatMapOnSingletonSet!934 lt!2293700 lt!2293899 lambda!314343) lt!2293907)))

(declare-fun b_lambda!217797 () Bool)

(assert (=> (not b_lambda!217797) (not d!1817838)))

(declare-fun bs!1354306 () Bool)

(assert (= bs!1354306 d!1817838))

(assert (=> bs!1354306 m!6717734))

(declare-fun m!6717984 () Bool)

(assert (=> bs!1354306 m!6717984))

(declare-fun m!6717986 () Bool)

(assert (=> bs!1354306 m!6717986))

(assert (=> bs!1354306 m!6717724))

(assert (=> b!5772949 d!1817838))

(declare-fun b!5773052 () Bool)

(declare-fun e!3546425 () (InoxSet Context!10346))

(declare-fun call!447128 () (InoxSet Context!10346))

(assert (=> b!5773052 (= e!3546425 call!447128)))

(declare-fun e!3546424 () (InoxSet Context!10346))

(declare-fun b!5773053 () Bool)

(assert (=> b!5773053 (= e!3546424 ((_ map or) call!447128 (derivationStepZipperUp!1057 (Context!10347 (t!377005 (exprs!5673 lt!2293899))) (h!69990 s!2326))))))

(declare-fun d!1817840 () Bool)

(declare-fun c!1020933 () Bool)

(declare-fun e!3546423 () Bool)

(assert (=> d!1817840 (= c!1020933 e!3546423)))

(declare-fun res!2436689 () Bool)

(assert (=> d!1817840 (=> (not res!2436689) (not e!3546423))))

(assert (=> d!1817840 (= res!2436689 ((_ is Cons!63543) (exprs!5673 lt!2293899)))))

(assert (=> d!1817840 (= (derivationStepZipperUp!1057 lt!2293899 (h!69990 s!2326)) e!3546424)))

(declare-fun b!5773054 () Bool)

(assert (=> b!5773054 (= e!3546424 e!3546425)))

(declare-fun c!1020932 () Bool)

(assert (=> b!5773054 (= c!1020932 ((_ is Cons!63543) (exprs!5673 lt!2293899)))))

(declare-fun b!5773055 () Bool)

(assert (=> b!5773055 (= e!3546423 (nullable!5821 (h!69991 (exprs!5673 lt!2293899))))))

(declare-fun b!5773056 () Bool)

(assert (=> b!5773056 (= e!3546425 ((as const (Array Context!10346 Bool)) false))))

(declare-fun bm!447123 () Bool)

(assert (=> bm!447123 (= call!447128 (derivationStepZipperDown!1131 (h!69991 (exprs!5673 lt!2293899)) (Context!10347 (t!377005 (exprs!5673 lt!2293899))) (h!69990 s!2326)))))

(assert (= (and d!1817840 res!2436689) b!5773055))

(assert (= (and d!1817840 c!1020933) b!5773053))

(assert (= (and d!1817840 (not c!1020933)) b!5773054))

(assert (= (and b!5773054 c!1020932) b!5773052))

(assert (= (and b!5773054 (not c!1020932)) b!5773056))

(assert (= (or b!5773053 b!5773052) bm!447123))

(declare-fun m!6717988 () Bool)

(assert (=> b!5773053 m!6717988))

(declare-fun m!6717990 () Bool)

(assert (=> b!5773055 m!6717990))

(declare-fun m!6717992 () Bool)

(assert (=> bm!447123 m!6717992))

(assert (=> b!5772949 d!1817840))

(declare-fun b!5773079 () Bool)

(declare-fun e!3546439 () (InoxSet Context!10346))

(declare-fun e!3546443 () (InoxSet Context!10346))

(assert (=> b!5773079 (= e!3546439 e!3546443)))

(declare-fun c!1020947 () Bool)

(assert (=> b!5773079 (= c!1020947 ((_ is Union!15789) (h!69991 (exprs!5673 (h!69992 zl!343)))))))

(declare-fun bm!447136 () Bool)

(declare-fun call!447142 () (InoxSet Context!10346))

(declare-fun call!447145 () (InoxSet Context!10346))

(assert (=> bm!447136 (= call!447142 call!447145)))

(declare-fun b!5773080 () Bool)

(declare-fun e!3546440 () (InoxSet Context!10346))

(declare-fun call!447143 () (InoxSet Context!10346))

(assert (=> b!5773080 (= e!3546440 ((_ map or) call!447143 call!447145))))

(declare-fun bm!447137 () Bool)

(declare-fun call!447146 () (InoxSet Context!10346))

(assert (=> bm!447137 (= call!447145 call!447146)))

(declare-fun b!5773081 () Bool)

(declare-fun e!3546441 () (InoxSet Context!10346))

(assert (=> b!5773081 (= e!3546441 ((as const (Array Context!10346 Bool)) false))))

(declare-fun b!5773082 () Bool)

(declare-fun c!1020948 () Bool)

(declare-fun e!3546442 () Bool)

(assert (=> b!5773082 (= c!1020948 e!3546442)))

(declare-fun res!2436693 () Bool)

(assert (=> b!5773082 (=> (not res!2436693) (not e!3546442))))

(assert (=> b!5773082 (= res!2436693 ((_ is Concat!24634) (h!69991 (exprs!5673 (h!69992 zl!343)))))))

(assert (=> b!5773082 (= e!3546443 e!3546440)))

(declare-fun c!1020946 () Bool)

(declare-fun bm!447138 () Bool)

(declare-fun call!447141 () List!63667)

(assert (=> bm!447138 (= call!447146 (derivationStepZipperDown!1131 (ite c!1020947 (regOne!32091 (h!69991 (exprs!5673 (h!69992 zl!343)))) (ite c!1020948 (regTwo!32090 (h!69991 (exprs!5673 (h!69992 zl!343)))) (ite c!1020946 (regOne!32090 (h!69991 (exprs!5673 (h!69992 zl!343)))) (reg!16118 (h!69991 (exprs!5673 (h!69992 zl!343))))))) (ite (or c!1020947 c!1020948) lt!2293899 (Context!10347 call!447141)) (h!69990 s!2326)))))

(declare-fun b!5773083 () Bool)

(declare-fun e!3546438 () (InoxSet Context!10346))

(assert (=> b!5773083 (= e!3546438 call!447142)))

(declare-fun bm!447139 () Bool)

(declare-fun call!447144 () List!63667)

(declare-fun $colon$colon!1779 (List!63667 Regex!15789) List!63667)

(assert (=> bm!447139 (= call!447144 ($colon$colon!1779 (exprs!5673 lt!2293899) (ite (or c!1020948 c!1020946) (regTwo!32090 (h!69991 (exprs!5673 (h!69992 zl!343)))) (h!69991 (exprs!5673 (h!69992 zl!343))))))))

(declare-fun b!5773084 () Bool)

(assert (=> b!5773084 (= e!3546441 call!447142)))

(declare-fun b!5773085 () Bool)

(assert (=> b!5773085 (= e!3546439 (store ((as const (Array Context!10346 Bool)) false) lt!2293899 true))))

(declare-fun b!5773086 () Bool)

(declare-fun c!1020945 () Bool)

(assert (=> b!5773086 (= c!1020945 ((_ is Star!15789) (h!69991 (exprs!5673 (h!69992 zl!343)))))))

(assert (=> b!5773086 (= e!3546438 e!3546441)))

(declare-fun b!5773087 () Bool)

(assert (=> b!5773087 (= e!3546440 e!3546438)))

(assert (=> b!5773087 (= c!1020946 ((_ is Concat!24634) (h!69991 (exprs!5673 (h!69992 zl!343)))))))

(declare-fun b!5773088 () Bool)

(assert (=> b!5773088 (= e!3546442 (nullable!5821 (regOne!32090 (h!69991 (exprs!5673 (h!69992 zl!343))))))))

(declare-fun bm!447141 () Bool)

(assert (=> bm!447141 (= call!447141 call!447144)))

(declare-fun b!5773089 () Bool)

(assert (=> b!5773089 (= e!3546443 ((_ map or) call!447146 call!447143))))

(declare-fun bm!447140 () Bool)

(assert (=> bm!447140 (= call!447143 (derivationStepZipperDown!1131 (ite c!1020947 (regTwo!32091 (h!69991 (exprs!5673 (h!69992 zl!343)))) (regOne!32090 (h!69991 (exprs!5673 (h!69992 zl!343))))) (ite c!1020947 lt!2293899 (Context!10347 call!447144)) (h!69990 s!2326)))))

(declare-fun d!1817842 () Bool)

(declare-fun c!1020944 () Bool)

(assert (=> d!1817842 (= c!1020944 (and ((_ is ElementMatch!15789) (h!69991 (exprs!5673 (h!69992 zl!343)))) (= (c!1020912 (h!69991 (exprs!5673 (h!69992 zl!343)))) (h!69990 s!2326))))))

(assert (=> d!1817842 (= (derivationStepZipperDown!1131 (h!69991 (exprs!5673 (h!69992 zl!343))) lt!2293899 (h!69990 s!2326)) e!3546439)))

(assert (= (and d!1817842 c!1020944) b!5773085))

(assert (= (and d!1817842 (not c!1020944)) b!5773079))

(assert (= (and b!5773079 c!1020947) b!5773089))

(assert (= (and b!5773079 (not c!1020947)) b!5773082))

(assert (= (and b!5773082 res!2436693) b!5773088))

(assert (= (and b!5773082 c!1020948) b!5773080))

(assert (= (and b!5773082 (not c!1020948)) b!5773087))

(assert (= (and b!5773087 c!1020946) b!5773083))

(assert (= (and b!5773087 (not c!1020946)) b!5773086))

(assert (= (and b!5773086 c!1020945) b!5773084))

(assert (= (and b!5773086 (not c!1020945)) b!5773081))

(assert (= (or b!5773083 b!5773084) bm!447141))

(assert (= (or b!5773083 b!5773084) bm!447136))

(assert (= (or b!5773080 bm!447141) bm!447139))

(assert (= (or b!5773080 bm!447136) bm!447137))

(assert (= (or b!5773089 b!5773080) bm!447140))

(assert (= (or b!5773089 bm!447137) bm!447138))

(declare-fun m!6717994 () Bool)

(assert (=> bm!447138 m!6717994))

(declare-fun m!6717996 () Bool)

(assert (=> bm!447139 m!6717996))

(assert (=> b!5773085 m!6717724))

(declare-fun m!6717998 () Bool)

(assert (=> b!5773088 m!6717998))

(declare-fun m!6718000 () Bool)

(assert (=> bm!447140 m!6718000))

(assert (=> b!5772949 d!1817842))

(declare-fun b!5773090 () Bool)

(declare-fun e!3546446 () (InoxSet Context!10346))

(declare-fun call!447147 () (InoxSet Context!10346))

(assert (=> b!5773090 (= e!3546446 call!447147)))

(declare-fun e!3546445 () (InoxSet Context!10346))

(declare-fun b!5773091 () Bool)

(assert (=> b!5773091 (= e!3546445 ((_ map or) call!447147 (derivationStepZipperUp!1057 (Context!10347 (t!377005 (exprs!5673 (Context!10347 (Cons!63543 (h!69991 (exprs!5673 (h!69992 zl!343))) (t!377005 (exprs!5673 (h!69992 zl!343)))))))) (h!69990 s!2326))))))

(declare-fun d!1817844 () Bool)

(declare-fun c!1020950 () Bool)

(declare-fun e!3546444 () Bool)

(assert (=> d!1817844 (= c!1020950 e!3546444)))

(declare-fun res!2436694 () Bool)

(assert (=> d!1817844 (=> (not res!2436694) (not e!3546444))))

(assert (=> d!1817844 (= res!2436694 ((_ is Cons!63543) (exprs!5673 (Context!10347 (Cons!63543 (h!69991 (exprs!5673 (h!69992 zl!343))) (t!377005 (exprs!5673 (h!69992 zl!343))))))))))

(assert (=> d!1817844 (= (derivationStepZipperUp!1057 (Context!10347 (Cons!63543 (h!69991 (exprs!5673 (h!69992 zl!343))) (t!377005 (exprs!5673 (h!69992 zl!343))))) (h!69990 s!2326)) e!3546445)))

(declare-fun b!5773092 () Bool)

(assert (=> b!5773092 (= e!3546445 e!3546446)))

(declare-fun c!1020949 () Bool)

(assert (=> b!5773092 (= c!1020949 ((_ is Cons!63543) (exprs!5673 (Context!10347 (Cons!63543 (h!69991 (exprs!5673 (h!69992 zl!343))) (t!377005 (exprs!5673 (h!69992 zl!343))))))))))

(declare-fun b!5773093 () Bool)

(assert (=> b!5773093 (= e!3546444 (nullable!5821 (h!69991 (exprs!5673 (Context!10347 (Cons!63543 (h!69991 (exprs!5673 (h!69992 zl!343))) (t!377005 (exprs!5673 (h!69992 zl!343)))))))))))

(declare-fun b!5773094 () Bool)

(assert (=> b!5773094 (= e!3546446 ((as const (Array Context!10346 Bool)) false))))

(declare-fun bm!447142 () Bool)

(assert (=> bm!447142 (= call!447147 (derivationStepZipperDown!1131 (h!69991 (exprs!5673 (Context!10347 (Cons!63543 (h!69991 (exprs!5673 (h!69992 zl!343))) (t!377005 (exprs!5673 (h!69992 zl!343))))))) (Context!10347 (t!377005 (exprs!5673 (Context!10347 (Cons!63543 (h!69991 (exprs!5673 (h!69992 zl!343))) (t!377005 (exprs!5673 (h!69992 zl!343)))))))) (h!69990 s!2326)))))

(assert (= (and d!1817844 res!2436694) b!5773093))

(assert (= (and d!1817844 c!1020950) b!5773091))

(assert (= (and d!1817844 (not c!1020950)) b!5773092))

(assert (= (and b!5773092 c!1020949) b!5773090))

(assert (= (and b!5773092 (not c!1020949)) b!5773094))

(assert (= (or b!5773091 b!5773090) bm!447142))

(declare-fun m!6718002 () Bool)

(assert (=> b!5773091 m!6718002))

(declare-fun m!6718004 () Bool)

(assert (=> b!5773093 m!6718004))

(declare-fun m!6718006 () Bool)

(assert (=> bm!447142 m!6718006))

(assert (=> b!5772949 d!1817844))

(declare-fun d!1817846 () Bool)

(declare-fun choose!43819 ((InoxSet Context!10346) Int) (InoxSet Context!10346))

(assert (=> d!1817846 (= (flatMap!1402 z!1189 lambda!314343) (choose!43819 z!1189 lambda!314343))))

(declare-fun bs!1354307 () Bool)

(assert (= bs!1354307 d!1817846))

(declare-fun m!6718008 () Bool)

(assert (=> bs!1354307 m!6718008))

(assert (=> b!5772949 d!1817846))

(declare-fun b!5773095 () Bool)

(declare-fun e!3546449 () (InoxSet Context!10346))

(declare-fun call!447148 () (InoxSet Context!10346))

(assert (=> b!5773095 (= e!3546449 call!447148)))

(declare-fun e!3546448 () (InoxSet Context!10346))

(declare-fun b!5773096 () Bool)

(assert (=> b!5773096 (= e!3546448 ((_ map or) call!447148 (derivationStepZipperUp!1057 (Context!10347 (t!377005 (exprs!5673 (h!69992 zl!343)))) (h!69990 s!2326))))))

(declare-fun d!1817848 () Bool)

(declare-fun c!1020952 () Bool)

(declare-fun e!3546447 () Bool)

(assert (=> d!1817848 (= c!1020952 e!3546447)))

(declare-fun res!2436695 () Bool)

(assert (=> d!1817848 (=> (not res!2436695) (not e!3546447))))

(assert (=> d!1817848 (= res!2436695 ((_ is Cons!63543) (exprs!5673 (h!69992 zl!343))))))

(assert (=> d!1817848 (= (derivationStepZipperUp!1057 (h!69992 zl!343) (h!69990 s!2326)) e!3546448)))

(declare-fun b!5773097 () Bool)

(assert (=> b!5773097 (= e!3546448 e!3546449)))

(declare-fun c!1020951 () Bool)

(assert (=> b!5773097 (= c!1020951 ((_ is Cons!63543) (exprs!5673 (h!69992 zl!343))))))

(declare-fun b!5773098 () Bool)

(assert (=> b!5773098 (= e!3546447 (nullable!5821 (h!69991 (exprs!5673 (h!69992 zl!343)))))))

(declare-fun b!5773099 () Bool)

(assert (=> b!5773099 (= e!3546449 ((as const (Array Context!10346 Bool)) false))))

(declare-fun bm!447143 () Bool)

(assert (=> bm!447143 (= call!447148 (derivationStepZipperDown!1131 (h!69991 (exprs!5673 (h!69992 zl!343))) (Context!10347 (t!377005 (exprs!5673 (h!69992 zl!343)))) (h!69990 s!2326)))))

(assert (= (and d!1817848 res!2436695) b!5773098))

(assert (= (and d!1817848 c!1020952) b!5773096))

(assert (= (and d!1817848 (not c!1020952)) b!5773097))

(assert (= (and b!5773097 c!1020951) b!5773095))

(assert (= (and b!5773097 (not c!1020951)) b!5773099))

(assert (= (or b!5773096 b!5773095) bm!447143))

(declare-fun m!6718010 () Bool)

(assert (=> b!5773096 m!6718010))

(assert (=> b!5773098 m!6717732))

(declare-fun m!6718012 () Bool)

(assert (=> bm!447143 m!6718012))

(assert (=> b!5772949 d!1817848))

(declare-fun d!1817850 () Bool)

(assert (=> d!1817850 (= (flatMap!1402 lt!2293700 lambda!314343) (choose!43819 lt!2293700 lambda!314343))))

(declare-fun bs!1354308 () Bool)

(assert (= bs!1354308 d!1817850))

(declare-fun m!6718014 () Bool)

(assert (=> bs!1354308 m!6718014))

(assert (=> b!5772949 d!1817850))

(declare-fun bs!1354309 () Bool)

(declare-fun d!1817852 () Bool)

(assert (= bs!1354309 (and d!1817852 b!5772949)))

(declare-fun lambda!314373 () Int)

(assert (=> bs!1354309 (= lambda!314373 lambda!314343)))

(assert (=> d!1817852 true))

(assert (=> d!1817852 (= (derivationStepZipper!1864 lt!2293700 (h!69990 s!2326)) (flatMap!1402 lt!2293700 lambda!314373))))

(declare-fun bs!1354310 () Bool)

(assert (= bs!1354310 d!1817852))

(declare-fun m!6718016 () Bool)

(assert (=> bs!1354310 m!6718016))

(assert (=> b!5772949 d!1817852))

(declare-fun d!1817856 () Bool)

(assert (=> d!1817856 (= (flatMap!1402 z!1189 lambda!314343) (dynLambda!24872 lambda!314343 (h!69992 zl!343)))))

(declare-fun lt!2293908 () Unit!156778)

(assert (=> d!1817856 (= lt!2293908 (choose!43818 z!1189 (h!69992 zl!343) lambda!314343))))

(assert (=> d!1817856 (= z!1189 (store ((as const (Array Context!10346 Bool)) false) (h!69992 zl!343) true))))

(assert (=> d!1817856 (= (lemmaFlatMapOnSingletonSet!934 z!1189 (h!69992 zl!343) lambda!314343) lt!2293908)))

(declare-fun b_lambda!217799 () Bool)

(assert (=> (not b_lambda!217799) (not d!1817856)))

(declare-fun bs!1354311 () Bool)

(assert (= bs!1354311 d!1817856))

(assert (=> bs!1354311 m!6717728))

(declare-fun m!6718018 () Bool)

(assert (=> bs!1354311 m!6718018))

(declare-fun m!6718020 () Bool)

(assert (=> bs!1354311 m!6718020))

(declare-fun m!6718022 () Bool)

(assert (=> bs!1354311 m!6718022))

(assert (=> b!5772949 d!1817856))

(declare-fun d!1817858 () Bool)

(declare-fun nullableFct!1857 (Regex!15789) Bool)

(assert (=> d!1817858 (= (nullable!5821 (h!69991 (exprs!5673 (h!69992 zl!343)))) (nullableFct!1857 (h!69991 (exprs!5673 (h!69992 zl!343)))))))

(declare-fun bs!1354312 () Bool)

(assert (= bs!1354312 d!1817858))

(declare-fun m!6718024 () Bool)

(assert (=> bs!1354312 m!6718024))

(assert (=> b!5772949 d!1817858))

(declare-fun c!1020955 () Bool)

(declare-fun d!1817860 () Bool)

(assert (=> d!1817860 (= c!1020955 (isEmpty!35440 (ite (or c!1020902 c!1020907) s!2326 (ite c!1020908 (ite c!1020903 (ite c!1020911 s!2326 lt!2293716) (t!377004 s!2326)) s!2326))))))

(declare-fun e!3546450 () Bool)

(assert (=> d!1817860 (= (matchZipper!1927 (ite c!1020902 lt!2293786 (ite c!1020907 lt!2293772 (ite c!1020908 (ite c!1020903 (ite c!1020911 lt!2293829 lt!2293702) lt!2293818) lt!2293823))) (ite (or c!1020902 c!1020907) s!2326 (ite c!1020908 (ite c!1020903 (ite c!1020911 s!2326 lt!2293716) (t!377004 s!2326)) s!2326))) e!3546450)))

(declare-fun b!5773102 () Bool)

(assert (=> b!5773102 (= e!3546450 (nullableZipper!1711 (ite c!1020902 lt!2293786 (ite c!1020907 lt!2293772 (ite c!1020908 (ite c!1020903 (ite c!1020911 lt!2293829 lt!2293702) lt!2293818) lt!2293823)))))))

(declare-fun b!5773103 () Bool)

(assert (=> b!5773103 (= e!3546450 (matchZipper!1927 (derivationStepZipper!1864 (ite c!1020902 lt!2293786 (ite c!1020907 lt!2293772 (ite c!1020908 (ite c!1020903 (ite c!1020911 lt!2293829 lt!2293702) lt!2293818) lt!2293823))) (head!12204 (ite (or c!1020902 c!1020907) s!2326 (ite c!1020908 (ite c!1020903 (ite c!1020911 s!2326 lt!2293716) (t!377004 s!2326)) s!2326)))) (tail!11299 (ite (or c!1020902 c!1020907) s!2326 (ite c!1020908 (ite c!1020903 (ite c!1020911 s!2326 lt!2293716) (t!377004 s!2326)) s!2326)))))))

(assert (= (and d!1817860 c!1020955) b!5773102))

(assert (= (and d!1817860 (not c!1020955)) b!5773103))

(declare-fun m!6718026 () Bool)

(assert (=> d!1817860 m!6718026))

(declare-fun m!6718028 () Bool)

(assert (=> b!5773102 m!6718028))

(declare-fun m!6718030 () Bool)

(assert (=> b!5773103 m!6718030))

(assert (=> b!5773103 m!6718030))

(declare-fun m!6718032 () Bool)

(assert (=> b!5773103 m!6718032))

(declare-fun m!6718034 () Bool)

(assert (=> b!5773103 m!6718034))

(assert (=> b!5773103 m!6718032))

(assert (=> b!5773103 m!6718034))

(declare-fun m!6718036 () Bool)

(assert (=> b!5773103 m!6718036))

(assert (=> bm!447024 d!1817860))

(declare-fun d!1817862 () Bool)

(assert (=> d!1817862 (= (++!14006 (++!14006 (ite c!1020903 (_1!36189 lt!2293864) (_1!36189 lt!2293729)) (ite c!1020903 (_2!36189 lt!2293864) (_2!36189 lt!2293729))) (ite c!1020903 (_2!36189 lt!2293843) (_2!36189 lt!2293718))) (++!14006 (ite c!1020903 (_1!36189 lt!2293864) (_1!36189 lt!2293729)) (++!14006 (ite c!1020903 (_2!36189 lt!2293864) (_2!36189 lt!2293729)) (ite c!1020903 (_2!36189 lt!2293843) (_2!36189 lt!2293718)))))))

(declare-fun lt!2293911 () Unit!156778)

(declare-fun choose!43820 (List!63666 List!63666 List!63666) Unit!156778)

(assert (=> d!1817862 (= lt!2293911 (choose!43820 (ite c!1020903 (_1!36189 lt!2293864) (_1!36189 lt!2293729)) (ite c!1020903 (_2!36189 lt!2293864) (_2!36189 lt!2293729)) (ite c!1020903 (_2!36189 lt!2293843) (_2!36189 lt!2293718))))))

(assert (=> d!1817862 (= (lemmaConcatAssociativity!2898 (ite c!1020903 (_1!36189 lt!2293864) (_1!36189 lt!2293729)) (ite c!1020903 (_2!36189 lt!2293864) (_2!36189 lt!2293729)) (ite c!1020903 (_2!36189 lt!2293843) (_2!36189 lt!2293718))) lt!2293911)))

(declare-fun bs!1354313 () Bool)

(assert (= bs!1354313 d!1817862))

(declare-fun m!6718038 () Bool)

(assert (=> bs!1354313 m!6718038))

(declare-fun m!6718040 () Bool)

(assert (=> bs!1354313 m!6718040))

(declare-fun m!6718042 () Bool)

(assert (=> bs!1354313 m!6718042))

(declare-fun m!6718044 () Bool)

(assert (=> bs!1354313 m!6718044))

(declare-fun m!6718046 () Bool)

(assert (=> bs!1354313 m!6718046))

(assert (=> bs!1354313 m!6718042))

(assert (=> bs!1354313 m!6718038))

(assert (=> bm!447037 d!1817862))

(declare-fun d!1817864 () Bool)

(declare-fun choose!43821 (Int) Bool)

(assert (=> d!1817864 (= (Exists!2889 (ite c!1020907 lambda!314347 (ite c!1020910 lambda!314348 (ite c!1020903 lambda!314352 lambda!314362)))) (choose!43821 (ite c!1020907 lambda!314347 (ite c!1020910 lambda!314348 (ite c!1020903 lambda!314352 lambda!314362)))))))

(declare-fun bs!1354314 () Bool)

(assert (= bs!1354314 d!1817864))

(declare-fun m!6718048 () Bool)

(assert (=> bs!1354314 m!6718048))

(assert (=> bm!447102 d!1817864))

(declare-fun d!1817866 () Bool)

(assert (=> d!1817866 (= (flatMap!1402 (ite c!1020907 lt!2293772 (ite c!1020910 lt!2293771 (ite c!1020908 lt!2293860 lt!2293823))) (ite c!1020907 lambda!314343 (ite c!1020910 lambda!314343 (ite c!1020908 lambda!314343 lambda!314343)))) (dynLambda!24872 (ite c!1020907 lambda!314343 (ite c!1020910 lambda!314343 (ite c!1020908 lambda!314343 lambda!314343))) (ite c!1020907 lt!2293863 (ite c!1020910 lt!2293725 (ite c!1020908 lt!2293775 lt!2293899)))))))

(declare-fun lt!2293912 () Unit!156778)

(assert (=> d!1817866 (= lt!2293912 (choose!43818 (ite c!1020907 lt!2293772 (ite c!1020910 lt!2293771 (ite c!1020908 lt!2293860 lt!2293823))) (ite c!1020907 lt!2293863 (ite c!1020910 lt!2293725 (ite c!1020908 lt!2293775 lt!2293899))) (ite c!1020907 lambda!314343 (ite c!1020910 lambda!314343 (ite c!1020908 lambda!314343 lambda!314343)))))))

(assert (=> d!1817866 (= (ite c!1020907 lt!2293772 (ite c!1020910 lt!2293771 (ite c!1020908 lt!2293860 lt!2293823))) (store ((as const (Array Context!10346 Bool)) false) (ite c!1020907 lt!2293863 (ite c!1020910 lt!2293725 (ite c!1020908 lt!2293775 lt!2293899))) true))))

(assert (=> d!1817866 (= (lemmaFlatMapOnSingletonSet!934 (ite c!1020907 lt!2293772 (ite c!1020910 lt!2293771 (ite c!1020908 lt!2293860 lt!2293823))) (ite c!1020907 lt!2293863 (ite c!1020910 lt!2293725 (ite c!1020908 lt!2293775 lt!2293899))) (ite c!1020907 lambda!314343 (ite c!1020910 lambda!314343 (ite c!1020908 lambda!314343 lambda!314343)))) lt!2293912)))

(declare-fun b_lambda!217801 () Bool)

(assert (=> (not b_lambda!217801) (not d!1817866)))

(declare-fun bs!1354315 () Bool)

(assert (= bs!1354315 d!1817866))

(declare-fun m!6718050 () Bool)

(assert (=> bs!1354315 m!6718050))

(declare-fun m!6718052 () Bool)

(assert (=> bs!1354315 m!6718052))

(declare-fun m!6718054 () Bool)

(assert (=> bs!1354315 m!6718054))

(declare-fun m!6718056 () Bool)

(assert (=> bs!1354315 m!6718056))

(assert (=> bm!446963 d!1817866))

(declare-fun d!1817868 () Bool)

(assert (=> d!1817868 (= (get!21929 (ite c!1020903 lt!2293857 lt!2293789)) (v!51856 (ite c!1020903 lt!2293857 lt!2293789)))))

(assert (=> bm!446945 d!1817868))

(declare-fun b!5773160 () Bool)

(declare-fun e!3546479 () Bool)

(assert (=> b!5773160 (= e!3546479 (nullable!5821 (ite c!1020902 lt!2293875 (ite c!1020907 (Concat!24634 (Concat!24634 (regOne!32090 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292))) lt!2293776) (ite c!1020908 lt!2293710 (regTwo!32090 r!7292))))))))

(declare-fun e!3546482 () Bool)

(declare-fun b!5773161 () Bool)

(assert (=> b!5773161 (= e!3546482 (= (head!12204 s!2326) (c!1020912 (ite c!1020902 lt!2293875 (ite c!1020907 (Concat!24634 (Concat!24634 (regOne!32090 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292))) lt!2293776) (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))))))

(declare-fun bm!447148 () Bool)

(declare-fun call!447153 () Bool)

(assert (=> bm!447148 (= call!447153 (isEmpty!35440 s!2326))))

(declare-fun b!5773162 () Bool)

(declare-fun e!3546481 () Bool)

(declare-fun e!3546483 () Bool)

(assert (=> b!5773162 (= e!3546481 e!3546483)))

(declare-fun c!1020970 () Bool)

(assert (=> b!5773162 (= c!1020970 ((_ is EmptyLang!15789) (ite c!1020902 lt!2293875 (ite c!1020907 (Concat!24634 (Concat!24634 (regOne!32090 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292))) lt!2293776) (ite c!1020908 lt!2293710 (regTwo!32090 r!7292))))))))

(declare-fun b!5773163 () Bool)

(declare-fun res!2436728 () Bool)

(assert (=> b!5773163 (=> (not res!2436728) (not e!3546482))))

(assert (=> b!5773163 (= res!2436728 (not call!447153))))

(declare-fun e!3546484 () Bool)

(declare-fun b!5773164 () Bool)

(assert (=> b!5773164 (= e!3546484 (not (= (head!12204 s!2326) (c!1020912 (ite c!1020902 lt!2293875 (ite c!1020907 (Concat!24634 (Concat!24634 (regOne!32090 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292))) lt!2293776) (ite c!1020908 lt!2293710 (regTwo!32090 r!7292))))))))))

(declare-fun b!5773165 () Bool)

(declare-fun res!2436733 () Bool)

(assert (=> b!5773165 (=> (not res!2436733) (not e!3546482))))

(assert (=> b!5773165 (= res!2436733 (isEmpty!35440 (tail!11299 s!2326)))))

(declare-fun b!5773166 () Bool)

(declare-fun res!2436735 () Bool)

(declare-fun e!3546485 () Bool)

(assert (=> b!5773166 (=> res!2436735 e!3546485)))

(assert (=> b!5773166 (= res!2436735 (not ((_ is ElementMatch!15789) (ite c!1020902 lt!2293875 (ite c!1020907 (Concat!24634 (Concat!24634 (regOne!32090 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292))) lt!2293776) (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))))))

(assert (=> b!5773166 (= e!3546483 e!3546485)))

(declare-fun b!5773167 () Bool)

(declare-fun lt!2293917 () Bool)

(assert (=> b!5773167 (= e!3546481 (= lt!2293917 call!447153))))

(declare-fun b!5773168 () Bool)

(declare-fun derivativeStep!4565 (Regex!15789 C!31848) Regex!15789)

(assert (=> b!5773168 (= e!3546479 (matchR!7974 (derivativeStep!4565 (ite c!1020902 lt!2293875 (ite c!1020907 (Concat!24634 (Concat!24634 (regOne!32090 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292))) lt!2293776) (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))) (head!12204 s!2326)) (tail!11299 s!2326)))))

(declare-fun d!1817870 () Bool)

(assert (=> d!1817870 e!3546481))

(declare-fun c!1020968 () Bool)

(assert (=> d!1817870 (= c!1020968 ((_ is EmptyExpr!15789) (ite c!1020902 lt!2293875 (ite c!1020907 (Concat!24634 (Concat!24634 (regOne!32090 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292))) lt!2293776) (ite c!1020908 lt!2293710 (regTwo!32090 r!7292))))))))

(assert (=> d!1817870 (= lt!2293917 e!3546479)))

(declare-fun c!1020969 () Bool)

(assert (=> d!1817870 (= c!1020969 (isEmpty!35440 s!2326))))

(assert (=> d!1817870 (validRegex!7525 (ite c!1020902 lt!2293875 (ite c!1020907 (Concat!24634 (Concat!24634 (regOne!32090 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292))) lt!2293776) (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))))

(assert (=> d!1817870 (= (matchR!7974 (ite c!1020902 lt!2293875 (ite c!1020907 (Concat!24634 (Concat!24634 (regOne!32090 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292))) lt!2293776) (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))) s!2326) lt!2293917)))

(declare-fun b!5773169 () Bool)

(assert (=> b!5773169 (= e!3546483 (not lt!2293917))))

(declare-fun b!5773170 () Bool)

(declare-fun e!3546480 () Bool)

(assert (=> b!5773170 (= e!3546480 e!3546484)))

(declare-fun res!2436730 () Bool)

(assert (=> b!5773170 (=> res!2436730 e!3546484)))

(assert (=> b!5773170 (= res!2436730 call!447153)))

(declare-fun b!5773171 () Bool)

(declare-fun res!2436731 () Bool)

(assert (=> b!5773171 (=> res!2436731 e!3546484)))

(assert (=> b!5773171 (= res!2436731 (not (isEmpty!35440 (tail!11299 s!2326))))))

(declare-fun b!5773172 () Bool)

(assert (=> b!5773172 (= e!3546485 e!3546480)))

(declare-fun res!2436734 () Bool)

(assert (=> b!5773172 (=> (not res!2436734) (not e!3546480))))

(assert (=> b!5773172 (= res!2436734 (not lt!2293917))))

(declare-fun b!5773173 () Bool)

(declare-fun res!2436732 () Bool)

(assert (=> b!5773173 (=> res!2436732 e!3546485)))

(assert (=> b!5773173 (= res!2436732 e!3546482)))

(declare-fun res!2436729 () Bool)

(assert (=> b!5773173 (=> (not res!2436729) (not e!3546482))))

(assert (=> b!5773173 (= res!2436729 lt!2293917)))

(assert (= (and d!1817870 c!1020969) b!5773160))

(assert (= (and d!1817870 (not c!1020969)) b!5773168))

(assert (= (and d!1817870 c!1020968) b!5773167))

(assert (= (and d!1817870 (not c!1020968)) b!5773162))

(assert (= (and b!5773162 c!1020970) b!5773169))

(assert (= (and b!5773162 (not c!1020970)) b!5773166))

(assert (= (and b!5773166 (not res!2436735)) b!5773173))

(assert (= (and b!5773173 res!2436729) b!5773163))

(assert (= (and b!5773163 res!2436728) b!5773165))

(assert (= (and b!5773165 res!2436733) b!5773161))

(assert (= (and b!5773173 (not res!2436732)) b!5773172))

(assert (= (and b!5773172 res!2436734) b!5773170))

(assert (= (and b!5773170 (not res!2436730)) b!5773171))

(assert (= (and b!5773171 (not res!2436731)) b!5773164))

(assert (= (or b!5773167 b!5773163 b!5773170) bm!447148))

(declare-fun m!6718058 () Bool)

(assert (=> b!5773164 m!6718058))

(declare-fun m!6718060 () Bool)

(assert (=> b!5773160 m!6718060))

(assert (=> b!5773168 m!6718058))

(assert (=> b!5773168 m!6718058))

(declare-fun m!6718062 () Bool)

(assert (=> b!5773168 m!6718062))

(declare-fun m!6718064 () Bool)

(assert (=> b!5773168 m!6718064))

(assert (=> b!5773168 m!6718062))

(assert (=> b!5773168 m!6718064))

(declare-fun m!6718066 () Bool)

(assert (=> b!5773168 m!6718066))

(declare-fun m!6718068 () Bool)

(assert (=> d!1817870 m!6718068))

(declare-fun m!6718070 () Bool)

(assert (=> d!1817870 m!6718070))

(assert (=> b!5773171 m!6718064))

(assert (=> b!5773171 m!6718064))

(declare-fun m!6718072 () Bool)

(assert (=> b!5773171 m!6718072))

(assert (=> b!5773165 m!6718064))

(assert (=> b!5773165 m!6718064))

(assert (=> b!5773165 m!6718072))

(assert (=> bm!447148 m!6718068))

(assert (=> b!5773161 m!6718058))

(assert (=> bm!447003 d!1817870))

(declare-fun d!1817872 () Bool)

(declare-fun isEmpty!35443 (Option!15798) Bool)

(assert (=> d!1817872 (= (isDefined!12501 (ite c!1020907 call!446993 (ite c!1020910 call!447077 (ite c!1020903 lt!2293857 (ite c!1020900 lt!2293748 call!447044))))) (not (isEmpty!35443 (ite c!1020907 call!446993 (ite c!1020910 call!447077 (ite c!1020903 lt!2293857 (ite c!1020900 lt!2293748 call!447044)))))))))

(declare-fun bs!1354316 () Bool)

(assert (= bs!1354316 d!1817872))

(declare-fun m!6718074 () Bool)

(assert (=> bs!1354316 m!6718074))

(assert (=> bm!447083 d!1817872))

(declare-fun d!1817874 () Bool)

(assert (=> d!1817874 (not (matchZipper!1927 lt!2293818 (t!377004 s!2326)))))

(declare-fun lt!2293921 () Unit!156778)

(declare-fun choose!43822 ((InoxSet Context!10346) List!63666) Unit!156778)

(assert (=> d!1817874 (= lt!2293921 (choose!43822 lt!2293818 (t!377004 s!2326)))))

(assert (=> d!1817874 (= lt!2293818 ((as const (Array Context!10346 Bool)) false))))

(assert (=> d!1817874 (= (lemmaEmptyZipperMatchesNothing!74 lt!2293818 (t!377004 s!2326)) lt!2293921)))

(declare-fun bs!1354317 () Bool)

(assert (= bs!1354317 d!1817874))

(assert (=> bs!1354317 m!6717838))

(declare-fun m!6718092 () Bool)

(assert (=> bs!1354317 m!6718092))

(assert (=> bm!447112 d!1817874))

(declare-fun d!1817878 () Bool)

(declare-fun c!1020974 () Bool)

(assert (=> d!1817878 (= c!1020974 (isEmpty!35440 (t!377004 s!2326)))))

(declare-fun e!3546493 () Bool)

(assert (=> d!1817878 (= (matchZipper!1927 (ite c!1020902 lt!2293761 ((_ map or) lt!2293874 lt!2293888)) (t!377004 s!2326)) e!3546493)))

(declare-fun b!5773188 () Bool)

(assert (=> b!5773188 (= e!3546493 (nullableZipper!1711 (ite c!1020902 lt!2293761 ((_ map or) lt!2293874 lt!2293888))))))

(declare-fun b!5773189 () Bool)

(assert (=> b!5773189 (= e!3546493 (matchZipper!1927 (derivationStepZipper!1864 (ite c!1020902 lt!2293761 ((_ map or) lt!2293874 lt!2293888)) (head!12204 (t!377004 s!2326))) (tail!11299 (t!377004 s!2326))))))

(assert (= (and d!1817878 c!1020974) b!5773188))

(assert (= (and d!1817878 (not c!1020974)) b!5773189))

(declare-fun m!6718094 () Bool)

(assert (=> d!1817878 m!6718094))

(declare-fun m!6718096 () Bool)

(assert (=> b!5773188 m!6718096))

(declare-fun m!6718098 () Bool)

(assert (=> b!5773189 m!6718098))

(assert (=> b!5773189 m!6718098))

(declare-fun m!6718100 () Bool)

(assert (=> b!5773189 m!6718100))

(declare-fun m!6718102 () Bool)

(assert (=> b!5773189 m!6718102))

(assert (=> b!5773189 m!6718100))

(assert (=> b!5773189 m!6718102))

(declare-fun m!6718104 () Bool)

(assert (=> b!5773189 m!6718104))

(assert (=> bm!446967 d!1817878))

(declare-fun d!1817882 () Bool)

(declare-fun c!1020975 () Bool)

(assert (=> d!1817882 (= c!1020975 (isEmpty!35440 (t!377004 s!2326)))))

(declare-fun e!3546494 () Bool)

(assert (=> d!1817882 (= (matchZipper!1927 (ite c!1020905 lt!2293798 (ite c!1020902 ((_ map or) lt!2293777 lt!2293761) lt!2293747)) (t!377004 s!2326)) e!3546494)))

(declare-fun b!5773190 () Bool)

(assert (=> b!5773190 (= e!3546494 (nullableZipper!1711 (ite c!1020905 lt!2293798 (ite c!1020902 ((_ map or) lt!2293777 lt!2293761) lt!2293747))))))

(declare-fun b!5773191 () Bool)

(assert (=> b!5773191 (= e!3546494 (matchZipper!1927 (derivationStepZipper!1864 (ite c!1020905 lt!2293798 (ite c!1020902 ((_ map or) lt!2293777 lt!2293761) lt!2293747)) (head!12204 (t!377004 s!2326))) (tail!11299 (t!377004 s!2326))))))

(assert (= (and d!1817882 c!1020975) b!5773190))

(assert (= (and d!1817882 (not c!1020975)) b!5773191))

(assert (=> d!1817882 m!6718094))

(declare-fun m!6718106 () Bool)

(assert (=> b!5773190 m!6718106))

(assert (=> b!5773191 m!6718098))

(assert (=> b!5773191 m!6718098))

(declare-fun m!6718108 () Bool)

(assert (=> b!5773191 m!6718108))

(assert (=> b!5773191 m!6718102))

(assert (=> b!5773191 m!6718108))

(assert (=> b!5773191 m!6718102))

(declare-fun m!6718110 () Bool)

(assert (=> b!5773191 m!6718110))

(assert (=> bm!446916 d!1817882))

(declare-fun d!1817884 () Bool)

(declare-fun c!1020976 () Bool)

(assert (=> d!1817884 (= c!1020976 (isEmpty!35440 (t!377004 s!2326)))))

(declare-fun e!3546495 () Bool)

(assert (=> d!1817884 (= (matchZipper!1927 lt!2293777 (t!377004 s!2326)) e!3546495)))

(declare-fun b!5773192 () Bool)

(assert (=> b!5773192 (= e!3546495 (nullableZipper!1711 lt!2293777))))

(declare-fun b!5773193 () Bool)

(assert (=> b!5773193 (= e!3546495 (matchZipper!1927 (derivationStepZipper!1864 lt!2293777 (head!12204 (t!377004 s!2326))) (tail!11299 (t!377004 s!2326))))))

(assert (= (and d!1817884 c!1020976) b!5773192))

(assert (= (and d!1817884 (not c!1020976)) b!5773193))

(assert (=> d!1817884 m!6718094))

(declare-fun m!6718112 () Bool)

(assert (=> b!5773192 m!6718112))

(assert (=> b!5773193 m!6718098))

(assert (=> b!5773193 m!6718098))

(declare-fun m!6718114 () Bool)

(assert (=> b!5773193 m!6718114))

(assert (=> b!5773193 m!6718102))

(assert (=> b!5773193 m!6718114))

(assert (=> b!5773193 m!6718102))

(declare-fun m!6718116 () Bool)

(assert (=> b!5773193 m!6718116))

(assert (=> b!5772963 d!1817884))

(declare-fun d!1817886 () Bool)

(assert (=> d!1817886 (= (matchR!7974 (Concat!24634 (Union!15789 (regOne!32091 (regOne!32090 r!7292)) (regTwo!32091 (regOne!32090 r!7292))) (regTwo!32090 r!7292)) s!2326) (matchR!7974 (Union!15789 (Concat!24634 (regOne!32091 (regOne!32090 r!7292)) (regTwo!32090 r!7292)) (Concat!24634 (regTwo!32091 (regOne!32090 r!7292)) (regTwo!32090 r!7292))) s!2326))))

(declare-fun lt!2293924 () Unit!156778)

(declare-fun choose!43823 (Regex!15789 Regex!15789 Regex!15789 List!63666) Unit!156778)

(assert (=> d!1817886 (= lt!2293924 (choose!43823 (regOne!32091 (regOne!32090 r!7292)) (regTwo!32091 (regOne!32090 r!7292)) (regTwo!32090 r!7292) s!2326))))

(assert (=> d!1817886 (validRegex!7525 (regOne!32091 (regOne!32090 r!7292)))))

(assert (=> d!1817886 (= (lemmaConcatDistributesInUnion!48 (regOne!32091 (regOne!32090 r!7292)) (regTwo!32091 (regOne!32090 r!7292)) (regTwo!32090 r!7292) s!2326) lt!2293924)))

(declare-fun bs!1354318 () Bool)

(assert (= bs!1354318 d!1817886))

(declare-fun m!6718118 () Bool)

(assert (=> bs!1354318 m!6718118))

(declare-fun m!6718120 () Bool)

(assert (=> bs!1354318 m!6718120))

(declare-fun m!6718122 () Bool)

(assert (=> bs!1354318 m!6718122))

(declare-fun m!6718124 () Bool)

(assert (=> bs!1354318 m!6718124))

(assert (=> b!5772963 d!1817886))

(declare-fun d!1817888 () Bool)

(assert (=> d!1817888 (= (nullable!5821 (regTwo!32091 (regOne!32090 r!7292))) (nullableFct!1857 (regTwo!32091 (regOne!32090 r!7292))))))

(declare-fun bs!1354319 () Bool)

(assert (= bs!1354319 d!1817888))

(declare-fun m!6718126 () Bool)

(assert (=> bs!1354319 m!6718126))

(assert (=> b!5772963 d!1817888))

(declare-fun bs!1354320 () Bool)

(declare-fun b!5773263 () Bool)

(assert (= bs!1354320 (and b!5773263 b!5772936)))

(declare-fun lambda!314380 () Int)

(assert (=> bs!1354320 (= (and (= s!2326 (_1!36189 lt!2293718)) (= (reg!16118 lt!2293730) (reg!16118 (regOne!32090 r!7292))) (= lt!2293730 lt!2293701)) (= lambda!314380 lambda!314364))))

(declare-fun bs!1354321 () Bool)

(assert (= bs!1354321 (and b!5773263 b!5772932)))

(assert (=> bs!1354321 (not (= lambda!314380 lambda!314342))))

(assert (=> bs!1354320 (not (= lambda!314380 lambda!314360))))

(declare-fun bs!1354322 () Bool)

(assert (= bs!1354322 (and b!5773263 b!5772937)))

(assert (=> bs!1354322 (not (= lambda!314380 lambda!314344))))

(declare-fun bs!1354323 () Bool)

(assert (= bs!1354323 (and b!5773263 b!5772964)))

(assert (=> bs!1354323 (not (= lambda!314380 lambda!314350))))

(declare-fun bs!1354324 () Bool)

(assert (= bs!1354324 (and b!5773263 b!5772950)))

(assert (=> bs!1354324 (not (= lambda!314380 lambda!314365))))

(assert (=> bs!1354324 (= (and (= s!2326 Nil!63542) (= (reg!16118 lt!2293730) (reg!16118 (regOne!32090 r!7292))) (= lt!2293730 lt!2293701)) (= lambda!314380 lambda!314367))))

(assert (=> bs!1354320 (not (= lambda!314380 lambda!314361))))

(assert (=> bs!1354323 (not (= lambda!314380 lambda!314348))))

(assert (=> bs!1354320 (not (= lambda!314380 lambda!314362))))

(assert (=> bs!1354323 (not (= lambda!314380 lambda!314351))))

(declare-fun bs!1354325 () Bool)

(assert (= bs!1354325 (and b!5773263 b!5772956)))

(assert (=> bs!1354325 (not (= lambda!314380 lambda!314352))))

(declare-fun bs!1354326 () Bool)

(assert (= bs!1354326 (and b!5773263 b!5772969)))

(assert (=> bs!1354326 (not (= lambda!314380 lambda!314354))))

(assert (=> bs!1354326 (= (and (= s!2326 (_1!36189 lt!2293843)) (= (reg!16118 lt!2293730) (reg!16118 (regOne!32090 r!7292))) (= lt!2293730 lt!2293701)) (= lambda!314380 lambda!314355))))

(assert (=> bs!1354326 (not (= lambda!314380 lambda!314356))))

(assert (=> bs!1354323 (not (= lambda!314380 lambda!314349))))

(assert (=> bs!1354322 (not (= lambda!314380 lambda!314346))))

(assert (=> bs!1354322 (not (= lambda!314380 lambda!314345))))

(assert (=> bs!1354325 (not (= lambda!314380 lambda!314353))))

(assert (=> bs!1354324 (not (= lambda!314380 lambda!314366))))

(assert (=> bs!1354320 (not (= lambda!314380 lambda!314363))))

(assert (=> bs!1354322 (not (= lambda!314380 lambda!314347))))

(assert (=> bs!1354321 (not (= lambda!314380 lambda!314341))))

(assert (=> b!5773263 true))

(assert (=> b!5773263 true))

(declare-fun bs!1354327 () Bool)

(declare-fun b!5773255 () Bool)

(assert (= bs!1354327 (and b!5773255 b!5772936)))

(declare-fun lambda!314383 () Int)

(assert (=> bs!1354327 (not (= lambda!314383 lambda!314364))))

(declare-fun bs!1354328 () Bool)

(assert (= bs!1354328 (and b!5773255 b!5772932)))

(assert (=> bs!1354328 (= (and (= (regOne!32090 lt!2293730) (regOne!32090 r!7292)) (= (regTwo!32090 lt!2293730) (regTwo!32090 r!7292))) (= lambda!314383 lambda!314342))))

(assert (=> bs!1354327 (not (= lambda!314383 lambda!314360))))

(declare-fun bs!1354329 () Bool)

(assert (= bs!1354329 (and b!5773255 b!5772937)))

(assert (=> bs!1354329 (not (= lambda!314383 lambda!314344))))

(declare-fun bs!1354330 () Bool)

(assert (= bs!1354330 (and b!5773255 b!5772964)))

(assert (=> bs!1354330 (not (= lambda!314383 lambda!314350))))

(declare-fun bs!1354331 () Bool)

(assert (= bs!1354331 (and b!5773255 b!5773263)))

(assert (=> bs!1354331 (not (= lambda!314383 lambda!314380))))

(declare-fun bs!1354332 () Bool)

(assert (= bs!1354332 (and b!5773255 b!5772950)))

(assert (=> bs!1354332 (not (= lambda!314383 lambda!314365))))

(assert (=> bs!1354332 (not (= lambda!314383 lambda!314367))))

(assert (=> bs!1354327 (= (and (= (regOne!32090 lt!2293730) lt!2293787) (= (regTwo!32090 lt!2293730) (regTwo!32090 r!7292))) (= lambda!314383 lambda!314361))))

(assert (=> bs!1354330 (not (= lambda!314383 lambda!314348))))

(assert (=> bs!1354327 (not (= lambda!314383 lambda!314362))))

(assert (=> bs!1354330 (= (and (= (regOne!32090 lt!2293730) (regTwo!32090 (regOne!32090 r!7292))) (= (regTwo!32090 lt!2293730) lt!2293738)) (= lambda!314383 lambda!314351))))

(declare-fun bs!1354333 () Bool)

(assert (= bs!1354333 (and b!5773255 b!5772956)))

(assert (=> bs!1354333 (not (= lambda!314383 lambda!314352))))

(declare-fun bs!1354334 () Bool)

(assert (= bs!1354334 (and b!5773255 b!5772969)))

(assert (=> bs!1354334 (not (= lambda!314383 lambda!314354))))

(assert (=> bs!1354334 (not (= lambda!314383 lambda!314355))))

(assert (=> bs!1354334 (= (and (= s!2326 (_1!36189 lt!2293843)) (= (regOne!32090 lt!2293730) (reg!16118 (regOne!32090 r!7292))) (= (regTwo!32090 lt!2293730) lt!2293701)) (= lambda!314383 lambda!314356))))

(assert (=> bs!1354330 (= (and (= (regOne!32090 lt!2293730) (regOne!32090 (regOne!32090 r!7292))) (= (regTwo!32090 lt!2293730) lt!2293831)) (= lambda!314383 lambda!314349))))

(assert (=> bs!1354329 (not (= lambda!314383 lambda!314346))))

(assert (=> bs!1354329 (= (and (= (regOne!32090 lt!2293730) (regOne!32090 (regOne!32090 r!7292))) (= (regTwo!32090 lt!2293730) lt!2293835)) (= lambda!314383 lambda!314345))))

(assert (=> bs!1354333 (= (and (= (regOne!32090 lt!2293730) lt!2293701) (= (regTwo!32090 lt!2293730) (regTwo!32090 r!7292))) (= lambda!314383 lambda!314353))))

(assert (=> bs!1354332 (= (and (= s!2326 Nil!63542) (= (regOne!32090 lt!2293730) (reg!16118 (regOne!32090 r!7292))) (= (regTwo!32090 lt!2293730) lt!2293701)) (= lambda!314383 lambda!314366))))

(assert (=> bs!1354327 (= (and (= s!2326 (_1!36189 lt!2293718)) (= (regOne!32090 lt!2293730) (reg!16118 (regOne!32090 r!7292))) (= (regTwo!32090 lt!2293730) lt!2293701)) (= lambda!314383 lambda!314363))))

(assert (=> bs!1354329 (= (and (= (regOne!32090 lt!2293730) (regTwo!32090 (regOne!32090 r!7292))) (= (regTwo!32090 lt!2293730) lt!2293776)) (= lambda!314383 lambda!314347))))

(assert (=> bs!1354328 (not (= lambda!314383 lambda!314341))))

(assert (=> b!5773255 true))

(assert (=> b!5773255 true))

(declare-fun b!5773254 () Bool)

(declare-fun c!1020994 () Bool)

(assert (=> b!5773254 (= c!1020994 ((_ is ElementMatch!15789) lt!2293730))))

(declare-fun e!3546530 () Bool)

(declare-fun e!3546534 () Bool)

(assert (=> b!5773254 (= e!3546530 e!3546534)))

(declare-fun e!3546532 () Bool)

(declare-fun call!447160 () Bool)

(assert (=> b!5773255 (= e!3546532 call!447160)))

(declare-fun c!1020993 () Bool)

(declare-fun bm!447154 () Bool)

(assert (=> bm!447154 (= call!447160 (Exists!2889 (ite c!1020993 lambda!314380 lambda!314383)))))

(declare-fun b!5773256 () Bool)

(declare-fun e!3546533 () Bool)

(assert (=> b!5773256 (= e!3546533 e!3546530)))

(declare-fun res!2436774 () Bool)

(assert (=> b!5773256 (= res!2436774 (not ((_ is EmptyLang!15789) lt!2293730)))))

(assert (=> b!5773256 (=> (not res!2436774) (not e!3546530))))

(declare-fun b!5773257 () Bool)

(assert (=> b!5773257 (= e!3546534 (= s!2326 (Cons!63542 (c!1020912 lt!2293730) Nil!63542)))))

(declare-fun b!5773258 () Bool)

(declare-fun c!1020995 () Bool)

(assert (=> b!5773258 (= c!1020995 ((_ is Union!15789) lt!2293730))))

(declare-fun e!3546531 () Bool)

(assert (=> b!5773258 (= e!3546534 e!3546531)))

(declare-fun d!1817890 () Bool)

(declare-fun c!1020996 () Bool)

(assert (=> d!1817890 (= c!1020996 ((_ is EmptyExpr!15789) lt!2293730))))

(assert (=> d!1817890 (= (matchRSpec!2892 lt!2293730 s!2326) e!3546533)))

(declare-fun bm!447155 () Bool)

(declare-fun call!447159 () Bool)

(assert (=> bm!447155 (= call!447159 (isEmpty!35440 s!2326))))

(declare-fun b!5773259 () Bool)

(declare-fun e!3546536 () Bool)

(assert (=> b!5773259 (= e!3546531 e!3546536)))

(declare-fun res!2436772 () Bool)

(assert (=> b!5773259 (= res!2436772 (matchRSpec!2892 (regOne!32091 lt!2293730) s!2326))))

(assert (=> b!5773259 (=> res!2436772 e!3546536)))

(declare-fun b!5773260 () Bool)

(declare-fun res!2436773 () Bool)

(declare-fun e!3546535 () Bool)

(assert (=> b!5773260 (=> res!2436773 e!3546535)))

(assert (=> b!5773260 (= res!2436773 call!447159)))

(assert (=> b!5773260 (= e!3546532 e!3546535)))

(declare-fun b!5773261 () Bool)

(assert (=> b!5773261 (= e!3546536 (matchRSpec!2892 (regTwo!32091 lt!2293730) s!2326))))

(declare-fun b!5773262 () Bool)

(assert (=> b!5773262 (= e!3546531 e!3546532)))

(assert (=> b!5773262 (= c!1020993 ((_ is Star!15789) lt!2293730))))

(assert (=> b!5773263 (= e!3546535 call!447160)))

(declare-fun b!5773264 () Bool)

(assert (=> b!5773264 (= e!3546533 call!447159)))

(assert (= (and d!1817890 c!1020996) b!5773264))

(assert (= (and d!1817890 (not c!1020996)) b!5773256))

(assert (= (and b!5773256 res!2436774) b!5773254))

(assert (= (and b!5773254 c!1020994) b!5773257))

(assert (= (and b!5773254 (not c!1020994)) b!5773258))

(assert (= (and b!5773258 c!1020995) b!5773259))

(assert (= (and b!5773258 (not c!1020995)) b!5773262))

(assert (= (and b!5773259 (not res!2436772)) b!5773261))

(assert (= (and b!5773262 c!1020993) b!5773260))

(assert (= (and b!5773262 (not c!1020993)) b!5773255))

(assert (= (and b!5773260 (not res!2436773)) b!5773263))

(assert (= (or b!5773263 b!5773255) bm!447154))

(assert (= (or b!5773264 b!5773260) bm!447155))

(declare-fun m!6718128 () Bool)

(assert (=> bm!447154 m!6718128))

(assert (=> bm!447155 m!6718068))

(declare-fun m!6718130 () Bool)

(assert (=> b!5773259 m!6718130))

(declare-fun m!6718132 () Bool)

(assert (=> b!5773261 m!6718132))

(assert (=> b!5772963 d!1817890))

(declare-fun d!1817892 () Bool)

(assert (=> d!1817892 (= (matchR!7974 lt!2293875 s!2326) (matchRSpec!2892 lt!2293875 s!2326))))

(declare-fun lt!2293927 () Unit!156778)

(declare-fun choose!43824 (Regex!15789 List!63666) Unit!156778)

(assert (=> d!1817892 (= lt!2293927 (choose!43824 lt!2293875 s!2326))))

(assert (=> d!1817892 (validRegex!7525 lt!2293875)))

(assert (=> d!1817892 (= (mainMatchTheorem!2892 lt!2293875 s!2326) lt!2293927)))

(declare-fun bs!1354335 () Bool)

(assert (= bs!1354335 d!1817892))

(declare-fun m!6718134 () Bool)

(assert (=> bs!1354335 m!6718134))

(declare-fun m!6718136 () Bool)

(assert (=> bs!1354335 m!6718136))

(declare-fun m!6718138 () Bool)

(assert (=> bs!1354335 m!6718138))

(declare-fun m!6718140 () Bool)

(assert (=> bs!1354335 m!6718140))

(assert (=> b!5772963 d!1817892))

(declare-fun d!1817894 () Bool)

(assert (=> d!1817894 (= (Exists!2889 (ite c!1020903 lambda!314354 (ite c!1020900 lambda!314360 lambda!314366))) (choose!43821 (ite c!1020903 lambda!314354 (ite c!1020900 lambda!314360 lambda!314366))))))

(declare-fun bs!1354336 () Bool)

(assert (= bs!1354336 d!1817894))

(declare-fun m!6718142 () Bool)

(assert (=> bs!1354336 m!6718142))

(assert (=> bm!447061 d!1817894))

(declare-fun bs!1354337 () Bool)

(declare-fun b!5773278 () Bool)

(assert (= bs!1354337 (and b!5773278 b!5772936)))

(declare-fun lambda!314384 () Int)

(assert (=> bs!1354337 (= (and (= (ite c!1020902 s!2326 (ite c!1020903 (_1!36189 lt!2293843) s!2326)) (_1!36189 lt!2293718)) (= (reg!16118 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736))) (reg!16118 (regOne!32090 r!7292))) (= (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736)) lt!2293701)) (= lambda!314384 lambda!314364))))

(declare-fun bs!1354338 () Bool)

(assert (= bs!1354338 (and b!5773278 b!5772932)))

(assert (=> bs!1354338 (not (= lambda!314384 lambda!314342))))

(assert (=> bs!1354337 (not (= lambda!314384 lambda!314360))))

(declare-fun bs!1354339 () Bool)

(assert (= bs!1354339 (and b!5773278 b!5772937)))

(assert (=> bs!1354339 (not (= lambda!314384 lambda!314344))))

(declare-fun bs!1354340 () Bool)

(assert (= bs!1354340 (and b!5773278 b!5772964)))

(assert (=> bs!1354340 (not (= lambda!314384 lambda!314350))))

(declare-fun bs!1354341 () Bool)

(assert (= bs!1354341 (and b!5773278 b!5773263)))

(assert (=> bs!1354341 (= (and (= (ite c!1020902 s!2326 (ite c!1020903 (_1!36189 lt!2293843) s!2326)) s!2326) (= (reg!16118 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736))) (reg!16118 lt!2293730)) (= (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736)) lt!2293730)) (= lambda!314384 lambda!314380))))

(declare-fun bs!1354342 () Bool)

(assert (= bs!1354342 (and b!5773278 b!5772950)))

(assert (=> bs!1354342 (= (and (= (ite c!1020902 s!2326 (ite c!1020903 (_1!36189 lt!2293843) s!2326)) Nil!63542) (= (reg!16118 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736))) (reg!16118 (regOne!32090 r!7292))) (= (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736)) lt!2293701)) (= lambda!314384 lambda!314367))))

(assert (=> bs!1354337 (not (= lambda!314384 lambda!314361))))

(assert (=> bs!1354340 (not (= lambda!314384 lambda!314348))))

(assert (=> bs!1354337 (not (= lambda!314384 lambda!314362))))

(assert (=> bs!1354340 (not (= lambda!314384 lambda!314351))))

(declare-fun bs!1354343 () Bool)

(assert (= bs!1354343 (and b!5773278 b!5772956)))

(assert (=> bs!1354343 (not (= lambda!314384 lambda!314352))))

(declare-fun bs!1354344 () Bool)

(assert (= bs!1354344 (and b!5773278 b!5772969)))

(assert (=> bs!1354344 (not (= lambda!314384 lambda!314354))))

(assert (=> bs!1354344 (= (and (= (ite c!1020902 s!2326 (ite c!1020903 (_1!36189 lt!2293843) s!2326)) (_1!36189 lt!2293843)) (= (reg!16118 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736))) (reg!16118 (regOne!32090 r!7292))) (= (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736)) lt!2293701)) (= lambda!314384 lambda!314355))))

(assert (=> bs!1354344 (not (= lambda!314384 lambda!314356))))

(assert (=> bs!1354340 (not (= lambda!314384 lambda!314349))))

(assert (=> bs!1354339 (not (= lambda!314384 lambda!314346))))

(declare-fun bs!1354345 () Bool)

(assert (= bs!1354345 (and b!5773278 b!5773255)))

(assert (=> bs!1354345 (not (= lambda!314384 lambda!314383))))

(assert (=> bs!1354342 (not (= lambda!314384 lambda!314365))))

(assert (=> bs!1354339 (not (= lambda!314384 lambda!314345))))

(assert (=> bs!1354343 (not (= lambda!314384 lambda!314353))))

(assert (=> bs!1354342 (not (= lambda!314384 lambda!314366))))

(assert (=> bs!1354337 (not (= lambda!314384 lambda!314363))))

(assert (=> bs!1354339 (not (= lambda!314384 lambda!314347))))

(assert (=> bs!1354338 (not (= lambda!314384 lambda!314341))))

(assert (=> b!5773278 true))

(assert (=> b!5773278 true))

(declare-fun bs!1354349 () Bool)

(declare-fun b!5773270 () Bool)

(assert (= bs!1354349 (and b!5773270 b!5772936)))

(declare-fun lambda!314386 () Int)

(assert (=> bs!1354349 (not (= lambda!314386 lambda!314364))))

(declare-fun bs!1354350 () Bool)

(assert (= bs!1354350 (and b!5773270 b!5772932)))

(assert (=> bs!1354350 (= (and (= (ite c!1020902 s!2326 (ite c!1020903 (_1!36189 lt!2293843) s!2326)) s!2326) (= (regOne!32090 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736))) (regOne!32090 r!7292)) (= (regTwo!32090 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736))) (regTwo!32090 r!7292))) (= lambda!314386 lambda!314342))))

(assert (=> bs!1354349 (not (= lambda!314386 lambda!314360))))

(declare-fun bs!1354351 () Bool)

(assert (= bs!1354351 (and b!5773270 b!5772964)))

(assert (=> bs!1354351 (not (= lambda!314386 lambda!314350))))

(declare-fun bs!1354353 () Bool)

(assert (= bs!1354353 (and b!5773270 b!5773263)))

(assert (=> bs!1354353 (not (= lambda!314386 lambda!314380))))

(declare-fun bs!1354354 () Bool)

(assert (= bs!1354354 (and b!5773270 b!5772950)))

(assert (=> bs!1354354 (not (= lambda!314386 lambda!314367))))

(assert (=> bs!1354349 (= (and (= (ite c!1020902 s!2326 (ite c!1020903 (_1!36189 lt!2293843) s!2326)) s!2326) (= (regOne!32090 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736))) lt!2293787) (= (regTwo!32090 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736))) (regTwo!32090 r!7292))) (= lambda!314386 lambda!314361))))

(assert (=> bs!1354351 (not (= lambda!314386 lambda!314348))))

(assert (=> bs!1354349 (not (= lambda!314386 lambda!314362))))

(assert (=> bs!1354351 (= (and (= (ite c!1020902 s!2326 (ite c!1020903 (_1!36189 lt!2293843) s!2326)) s!2326) (= (regOne!32090 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736))) (regTwo!32090 (regOne!32090 r!7292))) (= (regTwo!32090 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736))) lt!2293738)) (= lambda!314386 lambda!314351))))

(declare-fun bs!1354356 () Bool)

(assert (= bs!1354356 (and b!5773270 b!5772956)))

(assert (=> bs!1354356 (not (= lambda!314386 lambda!314352))))

(declare-fun bs!1354357 () Bool)

(assert (= bs!1354357 (and b!5773270 b!5772969)))

(assert (=> bs!1354357 (not (= lambda!314386 lambda!314354))))

(assert (=> bs!1354357 (not (= lambda!314386 lambda!314355))))

(assert (=> bs!1354357 (= (and (= (ite c!1020902 s!2326 (ite c!1020903 (_1!36189 lt!2293843) s!2326)) (_1!36189 lt!2293843)) (= (regOne!32090 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736))) (reg!16118 (regOne!32090 r!7292))) (= (regTwo!32090 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736))) lt!2293701)) (= lambda!314386 lambda!314356))))

(declare-fun bs!1354359 () Bool)

(assert (= bs!1354359 (and b!5773270 b!5772937)))

(assert (=> bs!1354359 (not (= lambda!314386 lambda!314344))))

(declare-fun bs!1354360 () Bool)

(assert (= bs!1354360 (and b!5773270 b!5773278)))

(assert (=> bs!1354360 (not (= lambda!314386 lambda!314384))))

(assert (=> bs!1354351 (= (and (= (ite c!1020902 s!2326 (ite c!1020903 (_1!36189 lt!2293843) s!2326)) s!2326) (= (regOne!32090 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736))) (regOne!32090 (regOne!32090 r!7292))) (= (regTwo!32090 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736))) lt!2293831)) (= lambda!314386 lambda!314349))))

(assert (=> bs!1354359 (not (= lambda!314386 lambda!314346))))

(declare-fun bs!1354361 () Bool)

(assert (= bs!1354361 (and b!5773270 b!5773255)))

(assert (=> bs!1354361 (= (and (= (ite c!1020902 s!2326 (ite c!1020903 (_1!36189 lt!2293843) s!2326)) s!2326) (= (regOne!32090 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736))) (regOne!32090 lt!2293730)) (= (regTwo!32090 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736))) (regTwo!32090 lt!2293730))) (= lambda!314386 lambda!314383))))

(assert (=> bs!1354354 (not (= lambda!314386 lambda!314365))))

(assert (=> bs!1354359 (= (and (= (ite c!1020902 s!2326 (ite c!1020903 (_1!36189 lt!2293843) s!2326)) s!2326) (= (regOne!32090 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736))) (regOne!32090 (regOne!32090 r!7292))) (= (regTwo!32090 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736))) lt!2293835)) (= lambda!314386 lambda!314345))))

(assert (=> bs!1354356 (= (and (= (ite c!1020902 s!2326 (ite c!1020903 (_1!36189 lt!2293843) s!2326)) s!2326) (= (regOne!32090 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736))) lt!2293701) (= (regTwo!32090 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736))) (regTwo!32090 r!7292))) (= lambda!314386 lambda!314353))))

(assert (=> bs!1354354 (= (and (= (ite c!1020902 s!2326 (ite c!1020903 (_1!36189 lt!2293843) s!2326)) Nil!63542) (= (regOne!32090 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736))) (reg!16118 (regOne!32090 r!7292))) (= (regTwo!32090 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736))) lt!2293701)) (= lambda!314386 lambda!314366))))

(assert (=> bs!1354349 (= (and (= (ite c!1020902 s!2326 (ite c!1020903 (_1!36189 lt!2293843) s!2326)) (_1!36189 lt!2293718)) (= (regOne!32090 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736))) (reg!16118 (regOne!32090 r!7292))) (= (regTwo!32090 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736))) lt!2293701)) (= lambda!314386 lambda!314363))))

(assert (=> bs!1354359 (= (and (= (ite c!1020902 s!2326 (ite c!1020903 (_1!36189 lt!2293843) s!2326)) s!2326) (= (regOne!32090 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736))) (regTwo!32090 (regOne!32090 r!7292))) (= (regTwo!32090 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736))) lt!2293776)) (= lambda!314386 lambda!314347))))

(assert (=> bs!1354350 (not (= lambda!314386 lambda!314341))))

(assert (=> b!5773270 true))

(assert (=> b!5773270 true))

(declare-fun c!1020998 () Bool)

(declare-fun b!5773269 () Bool)

(assert (=> b!5773269 (= c!1020998 ((_ is ElementMatch!15789) (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736))))))

(declare-fun e!3546539 () Bool)

(declare-fun e!3546543 () Bool)

(assert (=> b!5773269 (= e!3546539 e!3546543)))

(declare-fun e!3546541 () Bool)

(declare-fun call!447166 () Bool)

(assert (=> b!5773270 (= e!3546541 call!447166)))

(declare-fun c!1020997 () Bool)

(declare-fun bm!447160 () Bool)

(assert (=> bm!447160 (= call!447166 (Exists!2889 (ite c!1020997 lambda!314384 lambda!314386)))))

(declare-fun b!5773271 () Bool)

(declare-fun e!3546542 () Bool)

(assert (=> b!5773271 (= e!3546542 e!3546539)))

(declare-fun res!2436781 () Bool)

(assert (=> b!5773271 (= res!2436781 (not ((_ is EmptyLang!15789) (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736)))))))

(assert (=> b!5773271 (=> (not res!2436781) (not e!3546539))))

(declare-fun b!5773272 () Bool)

(assert (=> b!5773272 (= e!3546543 (= (ite c!1020902 s!2326 (ite c!1020903 (_1!36189 lt!2293843) s!2326)) (Cons!63542 (c!1020912 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736))) Nil!63542)))))

(declare-fun b!5773273 () Bool)

(declare-fun c!1020999 () Bool)

(assert (=> b!5773273 (= c!1020999 ((_ is Union!15789) (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736))))))

(declare-fun e!3546540 () Bool)

(assert (=> b!5773273 (= e!3546543 e!3546540)))

(declare-fun d!1817896 () Bool)

(declare-fun c!1021000 () Bool)

(assert (=> d!1817896 (= c!1021000 ((_ is EmptyExpr!15789) (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736))))))

(assert (=> d!1817896 (= (matchRSpec!2892 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736)) (ite c!1020902 s!2326 (ite c!1020903 (_1!36189 lt!2293843) s!2326))) e!3546542)))

(declare-fun call!447165 () Bool)

(declare-fun bm!447161 () Bool)

(assert (=> bm!447161 (= call!447165 (isEmpty!35440 (ite c!1020902 s!2326 (ite c!1020903 (_1!36189 lt!2293843) s!2326))))))

(declare-fun b!5773274 () Bool)

(declare-fun e!3546545 () Bool)

(assert (=> b!5773274 (= e!3546540 e!3546545)))

(declare-fun res!2436779 () Bool)

(assert (=> b!5773274 (= res!2436779 (matchRSpec!2892 (regOne!32091 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736))) (ite c!1020902 s!2326 (ite c!1020903 (_1!36189 lt!2293843) s!2326))))))

(assert (=> b!5773274 (=> res!2436779 e!3546545)))

(declare-fun b!5773275 () Bool)

(declare-fun res!2436780 () Bool)

(declare-fun e!3546544 () Bool)

(assert (=> b!5773275 (=> res!2436780 e!3546544)))

(assert (=> b!5773275 (= res!2436780 call!447165)))

(assert (=> b!5773275 (= e!3546541 e!3546544)))

(declare-fun b!5773276 () Bool)

(assert (=> b!5773276 (= e!3546545 (matchRSpec!2892 (regTwo!32091 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736))) (ite c!1020902 s!2326 (ite c!1020903 (_1!36189 lt!2293843) s!2326))))))

(declare-fun b!5773277 () Bool)

(assert (=> b!5773277 (= e!3546540 e!3546541)))

(assert (=> b!5773277 (= c!1020997 ((_ is Star!15789) (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736))))))

(assert (=> b!5773278 (= e!3546544 call!447166)))

(declare-fun b!5773279 () Bool)

(assert (=> b!5773279 (= e!3546542 call!447165)))

(assert (= (and d!1817896 c!1021000) b!5773279))

(assert (= (and d!1817896 (not c!1021000)) b!5773271))

(assert (= (and b!5773271 res!2436781) b!5773269))

(assert (= (and b!5773269 c!1020998) b!5773272))

(assert (= (and b!5773269 (not c!1020998)) b!5773273))

(assert (= (and b!5773273 c!1020999) b!5773274))

(assert (= (and b!5773273 (not c!1020999)) b!5773277))

(assert (= (and b!5773274 (not res!2436779)) b!5773276))

(assert (= (and b!5773277 c!1020997) b!5773275))

(assert (= (and b!5773277 (not c!1020997)) b!5773270))

(assert (= (and b!5773275 (not res!2436780)) b!5773278))

(assert (= (or b!5773278 b!5773270) bm!447160))

(assert (= (or b!5773279 b!5773275) bm!447161))

(declare-fun m!6718144 () Bool)

(assert (=> bm!447160 m!6718144))

(declare-fun m!6718146 () Bool)

(assert (=> bm!447161 m!6718146))

(declare-fun m!6718148 () Bool)

(assert (=> b!5773274 m!6718148))

(declare-fun m!6718150 () Bool)

(assert (=> b!5773276 m!6718150))

(assert (=> bm!446952 d!1817896))

(declare-fun d!1817898 () Bool)

(assert (=> d!1817898 (forall!14902 (++!14007 lt!2293745 lt!2293757) (ite c!1020903 lambda!314357 lambda!314359))))

(declare-fun lt!2293930 () Unit!156778)

(declare-fun choose!43827 (List!63667 List!63667 Int) Unit!156778)

(assert (=> d!1817898 (= lt!2293930 (choose!43827 lt!2293745 lt!2293757 (ite c!1020903 lambda!314357 lambda!314359)))))

(assert (=> d!1817898 (forall!14902 lt!2293745 (ite c!1020903 lambda!314357 lambda!314359))))

(assert (=> d!1817898 (= (lemmaConcatPreservesForall!324 lt!2293745 lt!2293757 (ite c!1020903 lambda!314357 lambda!314359)) lt!2293930)))

(declare-fun bs!1354365 () Bool)

(assert (= bs!1354365 d!1817898))

(assert (=> bs!1354365 m!6717826))

(assert (=> bs!1354365 m!6717826))

(declare-fun m!6718152 () Bool)

(assert (=> bs!1354365 m!6718152))

(declare-fun m!6718154 () Bool)

(assert (=> bs!1354365 m!6718154))

(declare-fun m!6718156 () Bool)

(assert (=> bs!1354365 m!6718156))

(assert (=> bm!447015 d!1817898))

(declare-fun bs!1354372 () Bool)

(declare-fun d!1817900 () Bool)

(assert (= bs!1354372 (and d!1817900 b!5772969)))

(declare-fun lambda!314390 () Int)

(assert (=> bs!1354372 (= lambda!314390 lambda!314357)))

(declare-fun bs!1354373 () Bool)

(assert (= bs!1354373 (and d!1817900 b!5772936)))

(assert (=> bs!1354373 (= lambda!314390 lambda!314359)))

(declare-fun bs!1354374 () Bool)

(assert (= bs!1354374 (and d!1817900 d!1817836)))

(assert (=> bs!1354374 (= lambda!314390 lambda!314370)))

(declare-fun b!5773325 () Bool)

(declare-fun e!3546572 () Regex!15789)

(assert (=> b!5773325 (= e!3546572 (h!69991 (unfocusZipperList!1217 zl!343)))))

(declare-fun b!5773326 () Bool)

(declare-fun e!3546574 () Regex!15789)

(assert (=> b!5773326 (= e!3546574 (Union!15789 (h!69991 (unfocusZipperList!1217 zl!343)) (generalisedUnion!1652 (t!377005 (unfocusZipperList!1217 zl!343)))))))

(declare-fun b!5773327 () Bool)

(declare-fun e!3546575 () Bool)

(declare-fun lt!2293934 () Regex!15789)

(declare-fun isUnion!709 (Regex!15789) Bool)

(assert (=> b!5773327 (= e!3546575 (isUnion!709 lt!2293934))))

(declare-fun b!5773328 () Bool)

(declare-fun e!3546573 () Bool)

(declare-fun e!3546577 () Bool)

(assert (=> b!5773328 (= e!3546573 e!3546577)))

(declare-fun c!1021017 () Bool)

(assert (=> b!5773328 (= c!1021017 (isEmpty!35442 (unfocusZipperList!1217 zl!343)))))

(assert (=> d!1817900 e!3546573))

(declare-fun res!2436798 () Bool)

(assert (=> d!1817900 (=> (not res!2436798) (not e!3546573))))

(assert (=> d!1817900 (= res!2436798 (validRegex!7525 lt!2293934))))

(assert (=> d!1817900 (= lt!2293934 e!3546572)))

(declare-fun c!1021019 () Bool)

(declare-fun e!3546576 () Bool)

(assert (=> d!1817900 (= c!1021019 e!3546576)))

(declare-fun res!2436797 () Bool)

(assert (=> d!1817900 (=> (not res!2436797) (not e!3546576))))

(assert (=> d!1817900 (= res!2436797 ((_ is Cons!63543) (unfocusZipperList!1217 zl!343)))))

(assert (=> d!1817900 (forall!14902 (unfocusZipperList!1217 zl!343) lambda!314390)))

(assert (=> d!1817900 (= (generalisedUnion!1652 (unfocusZipperList!1217 zl!343)) lt!2293934)))

(declare-fun b!5773329 () Bool)

(assert (=> b!5773329 (= e!3546572 e!3546574)))

(declare-fun c!1021016 () Bool)

(assert (=> b!5773329 (= c!1021016 ((_ is Cons!63543) (unfocusZipperList!1217 zl!343)))))

(declare-fun b!5773330 () Bool)

(assert (=> b!5773330 (= e!3546575 (= lt!2293934 (head!12205 (unfocusZipperList!1217 zl!343))))))

(declare-fun b!5773331 () Bool)

(assert (=> b!5773331 (= e!3546576 (isEmpty!35442 (t!377005 (unfocusZipperList!1217 zl!343))))))

(declare-fun b!5773332 () Bool)

(assert (=> b!5773332 (= e!3546577 e!3546575)))

(declare-fun c!1021018 () Bool)

(assert (=> b!5773332 (= c!1021018 (isEmpty!35442 (tail!11300 (unfocusZipperList!1217 zl!343))))))

(declare-fun b!5773333 () Bool)

(assert (=> b!5773333 (= e!3546574 EmptyLang!15789)))

(declare-fun b!5773334 () Bool)

(declare-fun isEmptyLang!1279 (Regex!15789) Bool)

(assert (=> b!5773334 (= e!3546577 (isEmptyLang!1279 lt!2293934))))

(assert (= (and d!1817900 res!2436797) b!5773331))

(assert (= (and d!1817900 c!1021019) b!5773325))

(assert (= (and d!1817900 (not c!1021019)) b!5773329))

(assert (= (and b!5773329 c!1021016) b!5773326))

(assert (= (and b!5773329 (not c!1021016)) b!5773333))

(assert (= (and d!1817900 res!2436798) b!5773328))

(assert (= (and b!5773328 c!1021017) b!5773334))

(assert (= (and b!5773328 (not c!1021017)) b!5773332))

(assert (= (and b!5773332 c!1021018) b!5773330))

(assert (= (and b!5773332 (not c!1021018)) b!5773327))

(assert (=> b!5773328 m!6717800))

(declare-fun m!6718178 () Bool)

(assert (=> b!5773328 m!6718178))

(assert (=> b!5773330 m!6717800))

(declare-fun m!6718180 () Bool)

(assert (=> b!5773330 m!6718180))

(declare-fun m!6718182 () Bool)

(assert (=> b!5773331 m!6718182))

(declare-fun m!6718184 () Bool)

(assert (=> b!5773327 m!6718184))

(declare-fun m!6718186 () Bool)

(assert (=> b!5773326 m!6718186))

(declare-fun m!6718188 () Bool)

(assert (=> d!1817900 m!6718188))

(assert (=> d!1817900 m!6717800))

(declare-fun m!6718190 () Bool)

(assert (=> d!1817900 m!6718190))

(assert (=> b!5773332 m!6717800))

(declare-fun m!6718192 () Bool)

(assert (=> b!5773332 m!6718192))

(assert (=> b!5773332 m!6718192))

(declare-fun m!6718194 () Bool)

(assert (=> b!5773332 m!6718194))

(declare-fun m!6718196 () Bool)

(assert (=> b!5773334 m!6718196))

(assert (=> b!5772962 d!1817900))

(declare-fun bs!1354375 () Bool)

(declare-fun d!1817906 () Bool)

(assert (= bs!1354375 (and d!1817906 b!5772969)))

(declare-fun lambda!314393 () Int)

(assert (=> bs!1354375 (= lambda!314393 lambda!314357)))

(declare-fun bs!1354376 () Bool)

(assert (= bs!1354376 (and d!1817906 b!5772936)))

(assert (=> bs!1354376 (= lambda!314393 lambda!314359)))

(declare-fun bs!1354377 () Bool)

(assert (= bs!1354377 (and d!1817906 d!1817836)))

(assert (=> bs!1354377 (= lambda!314393 lambda!314370)))

(declare-fun bs!1354378 () Bool)

(assert (= bs!1354378 (and d!1817906 d!1817900)))

(assert (=> bs!1354378 (= lambda!314393 lambda!314390)))

(declare-fun lt!2293937 () List!63667)

(assert (=> d!1817906 (forall!14902 lt!2293937 lambda!314393)))

(declare-fun e!3546580 () List!63667)

(assert (=> d!1817906 (= lt!2293937 e!3546580)))

(declare-fun c!1021022 () Bool)

(assert (=> d!1817906 (= c!1021022 ((_ is Cons!63544) zl!343))))

(assert (=> d!1817906 (= (unfocusZipperList!1217 zl!343) lt!2293937)))

(declare-fun b!5773339 () Bool)

(assert (=> b!5773339 (= e!3546580 (Cons!63543 (generalisedConcat!1404 (exprs!5673 (h!69992 zl!343))) (unfocusZipperList!1217 (t!377006 zl!343))))))

(declare-fun b!5773340 () Bool)

(assert (=> b!5773340 (= e!3546580 Nil!63543)))

(assert (= (and d!1817906 c!1021022) b!5773339))

(assert (= (and d!1817906 (not c!1021022)) b!5773340))

(declare-fun m!6718198 () Bool)

(assert (=> d!1817906 m!6718198))

(assert (=> b!5773339 m!6717744))

(declare-fun m!6718200 () Bool)

(assert (=> b!5773339 m!6718200))

(assert (=> b!5772962 d!1817906))

(declare-fun d!1817908 () Bool)

(assert (=> d!1817908 (= (nullable!5821 (ite c!1020902 (regOne!32091 (regOne!32090 r!7292)) (regOne!32090 (regOne!32090 r!7292)))) (nullableFct!1857 (ite c!1020902 (regOne!32091 (regOne!32090 r!7292)) (regOne!32090 (regOne!32090 r!7292)))))))

(declare-fun bs!1354379 () Bool)

(assert (= bs!1354379 d!1817908))

(declare-fun m!6718202 () Bool)

(assert (=> bs!1354379 m!6718202))

(assert (=> bm!447043 d!1817908))

(declare-fun d!1817910 () Bool)

(assert (=> d!1817910 (= (Exists!2889 (ite c!1020907 lambda!314346 (ite c!1020910 lambda!314349 (ite c!1020903 lambda!314352 (ite c!1020900 lambda!314362 lambda!314367))))) (choose!43821 (ite c!1020907 lambda!314346 (ite c!1020910 lambda!314349 (ite c!1020903 lambda!314352 (ite c!1020900 lambda!314362 lambda!314367))))))))

(declare-fun bs!1354380 () Bool)

(assert (= bs!1354380 d!1817910))

(declare-fun m!6718204 () Bool)

(assert (=> bs!1354380 m!6718204))

(assert (=> bm!447057 d!1817910))

(declare-fun d!1817912 () Bool)

(declare-fun e!3546585 () Bool)

(assert (=> d!1817912 e!3546585))

(declare-fun res!2436803 () Bool)

(assert (=> d!1817912 (=> (not res!2436803) (not e!3546585))))

(declare-fun lt!2293943 () List!63666)

(declare-fun content!11606 (List!63666) (InoxSet C!31848))

(assert (=> d!1817912 (= res!2436803 (= (content!11606 lt!2293943) ((_ map or) (content!11606 (ite c!1020900 lt!2293846 Nil!63542)) (content!11606 (ite c!1020900 (_2!36189 lt!2293718) s!2326)))))))

(declare-fun e!3546586 () List!63666)

(assert (=> d!1817912 (= lt!2293943 e!3546586)))

(declare-fun c!1021025 () Bool)

(assert (=> d!1817912 (= c!1021025 ((_ is Nil!63542) (ite c!1020900 lt!2293846 Nil!63542)))))

(assert (=> d!1817912 (= (++!14006 (ite c!1020900 lt!2293846 Nil!63542) (ite c!1020900 (_2!36189 lt!2293718) s!2326)) lt!2293943)))

(declare-fun b!5773352 () Bool)

(assert (=> b!5773352 (= e!3546585 (or (not (= (ite c!1020900 (_2!36189 lt!2293718) s!2326) Nil!63542)) (= lt!2293943 (ite c!1020900 lt!2293846 Nil!63542))))))

(declare-fun b!5773351 () Bool)

(declare-fun res!2436804 () Bool)

(assert (=> b!5773351 (=> (not res!2436804) (not e!3546585))))

(declare-fun size!40082 (List!63666) Int)

(assert (=> b!5773351 (= res!2436804 (= (size!40082 lt!2293943) (+ (size!40082 (ite c!1020900 lt!2293846 Nil!63542)) (size!40082 (ite c!1020900 (_2!36189 lt!2293718) s!2326)))))))

(declare-fun b!5773349 () Bool)

(assert (=> b!5773349 (= e!3546586 (ite c!1020900 (_2!36189 lt!2293718) s!2326))))

(declare-fun b!5773350 () Bool)

(assert (=> b!5773350 (= e!3546586 (Cons!63542 (h!69990 (ite c!1020900 lt!2293846 Nil!63542)) (++!14006 (t!377004 (ite c!1020900 lt!2293846 Nil!63542)) (ite c!1020900 (_2!36189 lt!2293718) s!2326))))))

(assert (= (and d!1817912 c!1021025) b!5773349))

(assert (= (and d!1817912 (not c!1021025)) b!5773350))

(assert (= (and d!1817912 res!2436803) b!5773351))

(assert (= (and b!5773351 res!2436804) b!5773352))

(declare-fun m!6718210 () Bool)

(assert (=> d!1817912 m!6718210))

(declare-fun m!6718212 () Bool)

(assert (=> d!1817912 m!6718212))

(declare-fun m!6718214 () Bool)

(assert (=> d!1817912 m!6718214))

(declare-fun m!6718216 () Bool)

(assert (=> b!5773351 m!6718216))

(declare-fun m!6718218 () Bool)

(assert (=> b!5773351 m!6718218))

(declare-fun m!6718220 () Bool)

(assert (=> b!5773351 m!6718220))

(declare-fun m!6718222 () Bool)

(assert (=> b!5773350 m!6718222))

(assert (=> bm!447075 d!1817912))

(declare-fun bs!1354383 () Bool)

(declare-fun d!1817918 () Bool)

(assert (= bs!1354383 (and d!1817918 d!1817836)))

(declare-fun lambda!314394 () Int)

(assert (=> bs!1354383 (= lambda!314394 lambda!314370)))

(declare-fun bs!1354384 () Bool)

(assert (= bs!1354384 (and d!1817918 b!5772936)))

(assert (=> bs!1354384 (= lambda!314394 lambda!314359)))

(declare-fun bs!1354385 () Bool)

(assert (= bs!1354385 (and d!1817918 b!5772969)))

(assert (=> bs!1354385 (= lambda!314394 lambda!314357)))

(declare-fun bs!1354386 () Bool)

(assert (= bs!1354386 (and d!1817918 d!1817900)))

(assert (=> bs!1354386 (= lambda!314394 lambda!314390)))

(declare-fun bs!1354387 () Bool)

(assert (= bs!1354387 (and d!1817918 d!1817906)))

(assert (=> bs!1354387 (= lambda!314394 lambda!314393)))

(declare-fun b!5773353 () Bool)

(declare-fun e!3546589 () Bool)

(declare-fun lt!2293944 () Regex!15789)

(assert (=> b!5773353 (= e!3546589 (isEmptyExpr!1270 lt!2293944))))

(declare-fun b!5773354 () Bool)

(declare-fun e!3546587 () Bool)

(assert (=> b!5773354 (= e!3546587 (isEmpty!35442 (t!377005 (exprs!5673 (h!69992 zl!343)))))))

(declare-fun b!5773355 () Bool)

(declare-fun e!3546592 () Bool)

(assert (=> b!5773355 (= e!3546592 (= lt!2293944 (head!12205 (exprs!5673 (h!69992 zl!343)))))))

(declare-fun b!5773356 () Bool)

(declare-fun e!3546588 () Regex!15789)

(assert (=> b!5773356 (= e!3546588 EmptyExpr!15789)))

(declare-fun b!5773357 () Bool)

(declare-fun e!3546590 () Bool)

(assert (=> b!5773357 (= e!3546590 e!3546589)))

(declare-fun c!1021028 () Bool)

(assert (=> b!5773357 (= c!1021028 (isEmpty!35442 (exprs!5673 (h!69992 zl!343))))))

(declare-fun b!5773358 () Bool)

(assert (=> b!5773358 (= e!3546589 e!3546592)))

(declare-fun c!1021029 () Bool)

(assert (=> b!5773358 (= c!1021029 (isEmpty!35442 (tail!11300 (exprs!5673 (h!69992 zl!343)))))))

(assert (=> d!1817918 e!3546590))

(declare-fun res!2436806 () Bool)

(assert (=> d!1817918 (=> (not res!2436806) (not e!3546590))))

(assert (=> d!1817918 (= res!2436806 (validRegex!7525 lt!2293944))))

(declare-fun e!3546591 () Regex!15789)

(assert (=> d!1817918 (= lt!2293944 e!3546591)))

(declare-fun c!1021026 () Bool)

(assert (=> d!1817918 (= c!1021026 e!3546587)))

(declare-fun res!2436805 () Bool)

(assert (=> d!1817918 (=> (not res!2436805) (not e!3546587))))

(assert (=> d!1817918 (= res!2436805 ((_ is Cons!63543) (exprs!5673 (h!69992 zl!343))))))

(assert (=> d!1817918 (forall!14902 (exprs!5673 (h!69992 zl!343)) lambda!314394)))

(assert (=> d!1817918 (= (generalisedConcat!1404 (exprs!5673 (h!69992 zl!343))) lt!2293944)))

(declare-fun b!5773359 () Bool)

(assert (=> b!5773359 (= e!3546591 e!3546588)))

(declare-fun c!1021027 () Bool)

(assert (=> b!5773359 (= c!1021027 ((_ is Cons!63543) (exprs!5673 (h!69992 zl!343))))))

(declare-fun b!5773360 () Bool)

(assert (=> b!5773360 (= e!3546592 (isConcat!793 lt!2293944))))

(declare-fun b!5773361 () Bool)

(assert (=> b!5773361 (= e!3546588 (Concat!24634 (h!69991 (exprs!5673 (h!69992 zl!343))) (generalisedConcat!1404 (t!377005 (exprs!5673 (h!69992 zl!343))))))))

(declare-fun b!5773362 () Bool)

(assert (=> b!5773362 (= e!3546591 (h!69991 (exprs!5673 (h!69992 zl!343))))))

(assert (= (and d!1817918 res!2436805) b!5773354))

(assert (= (and d!1817918 c!1021026) b!5773362))

(assert (= (and d!1817918 (not c!1021026)) b!5773359))

(assert (= (and b!5773359 c!1021027) b!5773361))

(assert (= (and b!5773359 (not c!1021027)) b!5773356))

(assert (= (and d!1817918 res!2436806) b!5773357))

(assert (= (and b!5773357 c!1021028) b!5773353))

(assert (= (and b!5773357 (not c!1021028)) b!5773358))

(assert (= (and b!5773358 c!1021029) b!5773355))

(assert (= (and b!5773358 (not c!1021029)) b!5773360))

(declare-fun m!6718224 () Bool)

(assert (=> b!5773357 m!6718224))

(assert (=> b!5773354 m!6717908))

(declare-fun m!6718226 () Bool)

(assert (=> b!5773358 m!6718226))

(assert (=> b!5773358 m!6718226))

(declare-fun m!6718228 () Bool)

(assert (=> b!5773358 m!6718228))

(declare-fun m!6718230 () Bool)

(assert (=> b!5773353 m!6718230))

(declare-fun m!6718232 () Bool)

(assert (=> b!5773355 m!6718232))

(declare-fun m!6718234 () Bool)

(assert (=> d!1817918 m!6718234))

(declare-fun m!6718236 () Bool)

(assert (=> d!1817918 m!6718236))

(declare-fun m!6718238 () Bool)

(assert (=> b!5773360 m!6718238))

(assert (=> b!5773361 m!6717688))

(assert (=> b!5772942 d!1817918))

(declare-fun bs!1354388 () Bool)

(declare-fun d!1817920 () Bool)

(assert (= bs!1354388 (and d!1817920 d!1817836)))

(declare-fun lambda!314397 () Int)

(assert (=> bs!1354388 (= lambda!314397 lambda!314370)))

(declare-fun bs!1354389 () Bool)

(assert (= bs!1354389 (and d!1817920 b!5772936)))

(assert (=> bs!1354389 (= lambda!314397 lambda!314359)))

(declare-fun bs!1354390 () Bool)

(assert (= bs!1354390 (and d!1817920 b!5772969)))

(assert (=> bs!1354390 (= lambda!314397 lambda!314357)))

(declare-fun bs!1354391 () Bool)

(assert (= bs!1354391 (and d!1817920 d!1817906)))

(assert (=> bs!1354391 (= lambda!314397 lambda!314393)))

(declare-fun bs!1354392 () Bool)

(assert (= bs!1354392 (and d!1817920 d!1817918)))

(assert (=> bs!1354392 (= lambda!314397 lambda!314394)))

(declare-fun bs!1354393 () Bool)

(assert (= bs!1354393 (and d!1817920 d!1817900)))

(assert (=> bs!1354393 (= lambda!314397 lambda!314390)))

(assert (=> d!1817920 (= (inv!82719 (h!69992 zl!343)) (forall!14902 (exprs!5673 (h!69992 zl!343)) lambda!314397))))

(declare-fun bs!1354394 () Bool)

(assert (= bs!1354394 d!1817920))

(declare-fun m!6718240 () Bool)

(assert (=> bs!1354394 m!6718240))

(assert (=> b!5772935 d!1817920))

(declare-fun d!1817922 () Bool)

(declare-fun c!1021030 () Bool)

(assert (=> d!1817922 (= c!1021030 (isEmpty!35440 (ite (or c!1020902 c!1020907) s!2326 (ite c!1020908 lt!2293726 s!2326))))))

(declare-fun e!3546593 () Bool)

(assert (=> d!1817922 (= (matchZipper!1927 (ite (or c!1020902 c!1020907) z!1189 (ite c!1020908 (store ((as const (Array Context!10346 Bool)) false) (Context!10347 lt!2293833) true) z!1189)) (ite (or c!1020902 c!1020907) s!2326 (ite c!1020908 lt!2293726 s!2326))) e!3546593)))

(declare-fun b!5773363 () Bool)

(assert (=> b!5773363 (= e!3546593 (nullableZipper!1711 (ite (or c!1020902 c!1020907) z!1189 (ite c!1020908 (store ((as const (Array Context!10346 Bool)) false) (Context!10347 lt!2293833) true) z!1189))))))

(declare-fun b!5773364 () Bool)

(assert (=> b!5773364 (= e!3546593 (matchZipper!1927 (derivationStepZipper!1864 (ite (or c!1020902 c!1020907) z!1189 (ite c!1020908 (store ((as const (Array Context!10346 Bool)) false) (Context!10347 lt!2293833) true) z!1189)) (head!12204 (ite (or c!1020902 c!1020907) s!2326 (ite c!1020908 lt!2293726 s!2326)))) (tail!11299 (ite (or c!1020902 c!1020907) s!2326 (ite c!1020908 lt!2293726 s!2326)))))))

(assert (= (and d!1817922 c!1021030) b!5773363))

(assert (= (and d!1817922 (not c!1021030)) b!5773364))

(declare-fun m!6718242 () Bool)

(assert (=> d!1817922 m!6718242))

(declare-fun m!6718244 () Bool)

(assert (=> b!5773363 m!6718244))

(declare-fun m!6718246 () Bool)

(assert (=> b!5773364 m!6718246))

(assert (=> b!5773364 m!6718246))

(declare-fun m!6718248 () Bool)

(assert (=> b!5773364 m!6718248))

(declare-fun m!6718250 () Bool)

(assert (=> b!5773364 m!6718250))

(assert (=> b!5773364 m!6718248))

(assert (=> b!5773364 m!6718250))

(declare-fun m!6718252 () Bool)

(assert (=> b!5773364 m!6718252))

(assert (=> bm!446995 d!1817922))

(declare-fun d!1817924 () Bool)

(assert (=> d!1817924 (= (matchR!7974 (ite c!1020905 lt!2293790 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293896 (ite c!1020908 (ite (or c!1020903 c!1020900) lt!2293804 lt!2293836) lt!2293781))))) (ite c!1020905 (t!377004 s!2326) (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020903 lt!2293716 (ite c!1020900 (_2!36189 lt!2293851) s!2326)) s!2326)))) (matchZipper!1927 (ite c!1020905 lt!2293798 (ite c!1020902 lt!2293774 (ite c!1020907 lt!2293894 (ite c!1020910 lt!2293771 (ite c!1020908 (ite (or c!1020903 c!1020900) lt!2293702 lt!2293719) lt!2293823))))) (ite c!1020905 (t!377004 s!2326) (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020903 lt!2293716 (ite c!1020900 (_2!36189 lt!2293851) s!2326)) s!2326)))))))

(declare-fun lt!2293949 () Unit!156778)

(declare-fun choose!43828 ((InoxSet Context!10346) List!63668 Regex!15789 List!63666) Unit!156778)

(assert (=> d!1817924 (= lt!2293949 (choose!43828 (ite c!1020905 lt!2293798 (ite c!1020902 lt!2293774 (ite c!1020907 lt!2293894 (ite c!1020910 lt!2293771 (ite c!1020908 (ite (or c!1020903 c!1020900) lt!2293702 lt!2293719) lt!2293823))))) (ite c!1020905 (Cons!63544 lt!2293899 Nil!63544) (ite c!1020902 (Cons!63544 lt!2293882 Nil!63544) (ite c!1020907 (Cons!63544 lt!2293792 Nil!63544) (ite c!1020910 (Cons!63544 lt!2293725 Nil!63544) (ite (and c!1020908 (or c!1020903 c!1020900)) (Cons!63544 lt!2293814 Nil!63544) (Cons!63544 lt!2293899 Nil!63544)))))) (ite c!1020905 lt!2293790 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293896 (ite c!1020908 (ite (or c!1020903 c!1020900) lt!2293804 lt!2293836) lt!2293781))))) (ite c!1020905 (t!377004 s!2326) (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020903 lt!2293716 (ite c!1020900 (_2!36189 lt!2293851) s!2326)) s!2326)))))))

(assert (=> d!1817924 (validRegex!7525 (ite c!1020905 lt!2293790 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293896 (ite c!1020908 (ite (or c!1020903 c!1020900) lt!2293804 lt!2293836) lt!2293781))))))))

(assert (=> d!1817924 (= (theoremZipperRegexEquiv!683 (ite c!1020905 lt!2293798 (ite c!1020902 lt!2293774 (ite c!1020907 lt!2293894 (ite c!1020910 lt!2293771 (ite c!1020908 (ite (or c!1020903 c!1020900) lt!2293702 lt!2293719) lt!2293823))))) (ite c!1020905 (Cons!63544 lt!2293899 Nil!63544) (ite c!1020902 (Cons!63544 lt!2293882 Nil!63544) (ite c!1020907 (Cons!63544 lt!2293792 Nil!63544) (ite c!1020910 (Cons!63544 lt!2293725 Nil!63544) (ite (and c!1020908 (or c!1020903 c!1020900)) (Cons!63544 lt!2293814 Nil!63544) (Cons!63544 lt!2293899 Nil!63544)))))) (ite c!1020905 lt!2293790 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293896 (ite c!1020908 (ite (or c!1020903 c!1020900) lt!2293804 lt!2293836) lt!2293781))))) (ite c!1020905 (t!377004 s!2326) (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020903 lt!2293716 (ite c!1020900 (_2!36189 lt!2293851) s!2326)) s!2326)))) lt!2293949)))

(declare-fun bs!1354395 () Bool)

(assert (= bs!1354395 d!1817924))

(declare-fun m!6718254 () Bool)

(assert (=> bs!1354395 m!6718254))

(declare-fun m!6718256 () Bool)

(assert (=> bs!1354395 m!6718256))

(declare-fun m!6718258 () Bool)

(assert (=> bs!1354395 m!6718258))

(declare-fun m!6718260 () Bool)

(assert (=> bs!1354395 m!6718260))

(assert (=> bm!447011 d!1817924))

(declare-fun b!5773435 () Bool)

(declare-fun lt!2293961 () Unit!156778)

(declare-fun lt!2293962 () Unit!156778)

(assert (=> b!5773435 (= lt!2293961 lt!2293962)))

(assert (=> b!5773435 (= (++!14006 (++!14006 Nil!63542 (Cons!63542 (h!69990 (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542)))) Nil!63542)) (t!377004 (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542))))) (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542))))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2115 (List!63666 C!31848 List!63666 List!63666) Unit!156778)

(assert (=> b!5773435 (= lt!2293962 (lemmaMoveElementToOtherListKeepsConcatEq!2115 Nil!63542 (h!69990 (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542)))) (t!377004 (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542)))) (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542)))))))

(declare-fun e!3546637 () Option!15798)

(assert (=> b!5773435 (= e!3546637 (findConcatSeparation!2212 (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))) (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293738 lt!2293701)) (++!14006 Nil!63542 (Cons!63542 (h!69990 (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542)))) Nil!63542)) (t!377004 (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542)))) (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542)))))))

(declare-fun b!5773436 () Bool)

(declare-fun res!2436839 () Bool)

(declare-fun e!3546634 () Bool)

(assert (=> b!5773436 (=> (not res!2436839) (not e!3546634))))

(declare-fun lt!2293960 () Option!15798)

(assert (=> b!5773436 (= res!2436839 (matchR!7974 (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))) (_1!36189 (get!21929 lt!2293960))))))

(declare-fun b!5773437 () Bool)

(declare-fun e!3546635 () Option!15798)

(assert (=> b!5773437 (= e!3546635 e!3546637)))

(declare-fun c!1021053 () Bool)

(assert (=> b!5773437 (= c!1021053 ((_ is Nil!63542) (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542)))))))

(declare-fun b!5773439 () Bool)

(assert (=> b!5773439 (= e!3546634 (= (++!14006 (_1!36189 (get!21929 lt!2293960)) (_2!36189 (get!21929 lt!2293960))) (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542)))))))

(declare-fun b!5773440 () Bool)

(declare-fun e!3546633 () Bool)

(assert (=> b!5773440 (= e!3546633 (not (isDefined!12501 lt!2293960)))))

(declare-fun b!5773441 () Bool)

(declare-fun e!3546636 () Bool)

(assert (=> b!5773441 (= e!3546636 (matchR!7974 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293738 lt!2293701)) (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542)))))))

(declare-fun b!5773442 () Bool)

(assert (=> b!5773442 (= e!3546637 None!15797)))

(declare-fun b!5773443 () Bool)

(assert (=> b!5773443 (= e!3546635 (Some!15797 (tuple2!65773 Nil!63542 (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542))))))))

(declare-fun b!5773438 () Bool)

(declare-fun res!2436835 () Bool)

(assert (=> b!5773438 (=> (not res!2436835) (not e!3546634))))

(assert (=> b!5773438 (= res!2436835 (matchR!7974 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293738 lt!2293701)) (_2!36189 (get!21929 lt!2293960))))))

(declare-fun d!1817926 () Bool)

(assert (=> d!1817926 e!3546633))

(declare-fun res!2436838 () Bool)

(assert (=> d!1817926 (=> res!2436838 e!3546633)))

(assert (=> d!1817926 (= res!2436838 e!3546634)))

(declare-fun res!2436836 () Bool)

(assert (=> d!1817926 (=> (not res!2436836) (not e!3546634))))

(assert (=> d!1817926 (= res!2436836 (isDefined!12501 lt!2293960))))

(assert (=> d!1817926 (= lt!2293960 e!3546635)))

(declare-fun c!1021052 () Bool)

(assert (=> d!1817926 (= c!1021052 e!3546636)))

(declare-fun res!2436837 () Bool)

(assert (=> d!1817926 (=> (not res!2436837) (not e!3546636))))

(assert (=> d!1817926 (= res!2436837 (matchR!7974 (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))) Nil!63542))))

(assert (=> d!1817926 (validRegex!7525 (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))))))

(assert (=> d!1817926 (= (findConcatSeparation!2212 (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))) (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293738 lt!2293701)) Nil!63542 (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542))) (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542)))) lt!2293960)))

(assert (= (and d!1817926 res!2436837) b!5773441))

(assert (= (and d!1817926 c!1021052) b!5773443))

(assert (= (and d!1817926 (not c!1021052)) b!5773437))

(assert (= (and b!5773437 c!1021053) b!5773442))

(assert (= (and b!5773437 (not c!1021053)) b!5773435))

(assert (= (and d!1817926 res!2436836) b!5773436))

(assert (= (and b!5773436 res!2436839) b!5773438))

(assert (= (and b!5773438 res!2436835) b!5773439))

(assert (= (and d!1817926 (not res!2436838)) b!5773440))

(declare-fun m!6718290 () Bool)

(assert (=> b!5773435 m!6718290))

(assert (=> b!5773435 m!6718290))

(declare-fun m!6718292 () Bool)

(assert (=> b!5773435 m!6718292))

(declare-fun m!6718296 () Bool)

(assert (=> b!5773435 m!6718296))

(assert (=> b!5773435 m!6718290))

(declare-fun m!6718304 () Bool)

(assert (=> b!5773435 m!6718304))

(declare-fun m!6718308 () Bool)

(assert (=> b!5773440 m!6718308))

(assert (=> d!1817926 m!6718308))

(declare-fun m!6718312 () Bool)

(assert (=> d!1817926 m!6718312))

(declare-fun m!6718316 () Bool)

(assert (=> d!1817926 m!6718316))

(declare-fun m!6718318 () Bool)

(assert (=> b!5773441 m!6718318))

(declare-fun m!6718320 () Bool)

(assert (=> b!5773436 m!6718320))

(declare-fun m!6718322 () Bool)

(assert (=> b!5773436 m!6718322))

(assert (=> b!5773438 m!6718320))

(declare-fun m!6718324 () Bool)

(assert (=> b!5773438 m!6718324))

(assert (=> b!5773439 m!6718320))

(declare-fun m!6718326 () Bool)

(assert (=> b!5773439 m!6718326))

(assert (=> bm!447041 d!1817926))

(declare-fun d!1817934 () Bool)

(assert (=> d!1817934 (= (matchR!7974 (Concat!24634 (Concat!24634 (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292))) (ite (or c!1020907 c!1020910) (regTwo!32090 (regOne!32090 r!7292)) lt!2293701)) (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293738 (regTwo!32090 r!7292)))) s!2326) (matchR!7974 (Concat!24634 (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292))) (Concat!24634 (ite (or c!1020907 c!1020910) (regTwo!32090 (regOne!32090 r!7292)) lt!2293701) (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293738 (regTwo!32090 r!7292))))) s!2326))))

(declare-fun lt!2293967 () Unit!156778)

(declare-fun choose!43829 (Regex!15789 Regex!15789 Regex!15789 List!63666) Unit!156778)

(assert (=> d!1817934 (= lt!2293967 (choose!43829 (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292))) (ite (or c!1020907 c!1020910) (regTwo!32090 (regOne!32090 r!7292)) lt!2293701) (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293738 (regTwo!32090 r!7292))) s!2326))))

(declare-fun e!3546642 () Bool)

(assert (=> d!1817934 e!3546642))

(declare-fun res!2436846 () Bool)

(assert (=> d!1817934 (=> (not res!2436846) (not e!3546642))))

(assert (=> d!1817934 (= res!2436846 (validRegex!7525 (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))))))

(assert (=> d!1817934 (= (lemmaConcatAssociative!108 (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292))) (ite (or c!1020907 c!1020910) (regTwo!32090 (regOne!32090 r!7292)) lt!2293701) (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293738 (regTwo!32090 r!7292))) s!2326) lt!2293967)))

(declare-fun b!5773452 () Bool)

(declare-fun res!2436847 () Bool)

(assert (=> b!5773452 (=> (not res!2436847) (not e!3546642))))

(assert (=> b!5773452 (= res!2436847 (validRegex!7525 (ite (or c!1020907 c!1020910) (regTwo!32090 (regOne!32090 r!7292)) lt!2293701)))))

(declare-fun b!5773453 () Bool)

(assert (=> b!5773453 (= e!3546642 (validRegex!7525 (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293738 (regTwo!32090 r!7292)))))))

(assert (= (and d!1817934 res!2436846) b!5773452))

(assert (= (and b!5773452 res!2436847) b!5773453))

(declare-fun m!6718340 () Bool)

(assert (=> d!1817934 m!6718340))

(declare-fun m!6718342 () Bool)

(assert (=> d!1817934 m!6718342))

(declare-fun m!6718344 () Bool)

(assert (=> d!1817934 m!6718344))

(declare-fun m!6718346 () Bool)

(assert (=> d!1817934 m!6718346))

(declare-fun m!6718348 () Bool)

(assert (=> b!5773452 m!6718348))

(declare-fun m!6718350 () Bool)

(assert (=> b!5773453 m!6718350))

(assert (=> bm!447054 d!1817934))

(declare-fun d!1817944 () Bool)

(assert (=> d!1817944 (= (isEmpty!35442 (t!377005 (exprs!5673 (h!69992 zl!343)))) ((_ is Nil!63543) (t!377005 (exprs!5673 (h!69992 zl!343)))))))

(assert (=> b!5772986 d!1817944))

(declare-fun d!1817946 () Bool)

(declare-fun e!3546643 () Bool)

(assert (=> d!1817946 e!3546643))

(declare-fun res!2436848 () Bool)

(assert (=> d!1817946 (=> (not res!2436848) (not e!3546643))))

(declare-fun lt!2293968 () List!63666)

(assert (=> d!1817946 (= res!2436848 (= (content!11606 lt!2293968) ((_ map or) (content!11606 (ite c!1020903 (_1!36189 lt!2293864) (_1!36189 lt!2293729))) (content!11606 (ite c!1020903 lt!2293716 (_2!36189 lt!2293729))))))))

(declare-fun e!3546644 () List!63666)

(assert (=> d!1817946 (= lt!2293968 e!3546644)))

(declare-fun c!1021055 () Bool)

(assert (=> d!1817946 (= c!1021055 ((_ is Nil!63542) (ite c!1020903 (_1!36189 lt!2293864) (_1!36189 lt!2293729))))))

(assert (=> d!1817946 (= (++!14006 (ite c!1020903 (_1!36189 lt!2293864) (_1!36189 lt!2293729)) (ite c!1020903 lt!2293716 (_2!36189 lt!2293729))) lt!2293968)))

(declare-fun b!5773457 () Bool)

(assert (=> b!5773457 (= e!3546643 (or (not (= (ite c!1020903 lt!2293716 (_2!36189 lt!2293729)) Nil!63542)) (= lt!2293968 (ite c!1020903 (_1!36189 lt!2293864) (_1!36189 lt!2293729)))))))

(declare-fun b!5773456 () Bool)

(declare-fun res!2436849 () Bool)

(assert (=> b!5773456 (=> (not res!2436849) (not e!3546643))))

(assert (=> b!5773456 (= res!2436849 (= (size!40082 lt!2293968) (+ (size!40082 (ite c!1020903 (_1!36189 lt!2293864) (_1!36189 lt!2293729))) (size!40082 (ite c!1020903 lt!2293716 (_2!36189 lt!2293729))))))))

(declare-fun b!5773454 () Bool)

(assert (=> b!5773454 (= e!3546644 (ite c!1020903 lt!2293716 (_2!36189 lt!2293729)))))

(declare-fun b!5773455 () Bool)

(assert (=> b!5773455 (= e!3546644 (Cons!63542 (h!69990 (ite c!1020903 (_1!36189 lt!2293864) (_1!36189 lt!2293729))) (++!14006 (t!377004 (ite c!1020903 (_1!36189 lt!2293864) (_1!36189 lt!2293729))) (ite c!1020903 lt!2293716 (_2!36189 lt!2293729)))))))

(assert (= (and d!1817946 c!1021055) b!5773454))

(assert (= (and d!1817946 (not c!1021055)) b!5773455))

(assert (= (and d!1817946 res!2436848) b!5773456))

(assert (= (and b!5773456 res!2436849) b!5773457))

(declare-fun m!6718352 () Bool)

(assert (=> d!1817946 m!6718352))

(declare-fun m!6718354 () Bool)

(assert (=> d!1817946 m!6718354))

(declare-fun m!6718356 () Bool)

(assert (=> d!1817946 m!6718356))

(declare-fun m!6718358 () Bool)

(assert (=> b!5773456 m!6718358))

(declare-fun m!6718360 () Bool)

(assert (=> b!5773456 m!6718360))

(declare-fun m!6718362 () Bool)

(assert (=> b!5773456 m!6718362))

(declare-fun m!6718364 () Bool)

(assert (=> b!5773455 m!6718364))

(assert (=> bm!447117 d!1817946))

(declare-fun e!3546653 () Bool)

(declare-fun d!1817948 () Bool)

(assert (=> d!1817948 (= (matchZipper!1927 ((_ map or) (ite c!1020902 lt!2293777 lt!2293874) (ite c!1020902 lt!2293711 lt!2293888)) (t!377004 s!2326)) e!3546653)))

(declare-fun res!2436854 () Bool)

(assert (=> d!1817948 (=> res!2436854 e!3546653)))

(assert (=> d!1817948 (= res!2436854 (matchZipper!1927 (ite c!1020902 lt!2293777 lt!2293874) (t!377004 s!2326)))))

(declare-fun lt!2293971 () Unit!156778)

(declare-fun choose!43831 ((InoxSet Context!10346) (InoxSet Context!10346) List!63666) Unit!156778)

(assert (=> d!1817948 (= lt!2293971 (choose!43831 (ite c!1020902 lt!2293777 lt!2293874) (ite c!1020902 lt!2293711 lt!2293888) (t!377004 s!2326)))))

(assert (=> d!1817948 (= (lemmaZipperConcatMatchesSameAsBothZippers!814 (ite c!1020902 lt!2293777 lt!2293874) (ite c!1020902 lt!2293711 lt!2293888) (t!377004 s!2326)) lt!2293971)))

(declare-fun b!5773470 () Bool)

(assert (=> b!5773470 (= e!3546653 (matchZipper!1927 (ite c!1020902 lt!2293711 lt!2293888) (t!377004 s!2326)))))

(assert (= (and d!1817948 (not res!2436854)) b!5773470))

(declare-fun m!6718366 () Bool)

(assert (=> d!1817948 m!6718366))

(declare-fun m!6718368 () Bool)

(assert (=> d!1817948 m!6718368))

(declare-fun m!6718370 () Bool)

(assert (=> d!1817948 m!6718370))

(declare-fun m!6718372 () Bool)

(assert (=> b!5773470 m!6718372))

(assert (=> bm!446958 d!1817948))

(declare-fun bs!1354402 () Bool)

(declare-fun d!1817950 () Bool)

(assert (= bs!1354402 (and d!1817950 b!5772936)))

(declare-fun lambda!314409 () Int)

(assert (=> bs!1354402 (not (= lambda!314409 lambda!314364))))

(declare-fun bs!1354403 () Bool)

(assert (= bs!1354403 (and d!1817950 b!5772932)))

(assert (=> bs!1354403 (not (= lambda!314409 lambda!314342))))

(assert (=> bs!1354402 (= (and (= (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542) s!2326) (= (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292)))))) lt!2293787) (= (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293831 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) (regTwo!32090 r!7292))) (= lambda!314409 lambda!314360))))

(declare-fun bs!1354404 () Bool)

(assert (= bs!1354404 (and d!1817950 b!5772964)))

(assert (=> bs!1354404 (= (and (= (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542) s!2326) (= (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292)))))) (regTwo!32090 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293831 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) lt!2293738)) (= lambda!314409 lambda!314350))))

(declare-fun bs!1354405 () Bool)

(assert (= bs!1354405 (and d!1817950 b!5773263)))

(assert (=> bs!1354405 (not (= lambda!314409 lambda!314380))))

(declare-fun bs!1354406 () Bool)

(assert (= bs!1354406 (and d!1817950 b!5772950)))

(assert (=> bs!1354406 (not (= lambda!314409 lambda!314367))))

(assert (=> bs!1354402 (not (= lambda!314409 lambda!314361))))

(assert (=> bs!1354404 (= (and (= (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542) s!2326) (= (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292)))))) (regOne!32090 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293831 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) lt!2293831)) (= lambda!314409 lambda!314348))))

(assert (=> bs!1354402 (= (and (= (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542) (_1!36189 lt!2293718)) (= (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292)))))) (reg!16118 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293831 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) lt!2293701)) (= lambda!314409 lambda!314362))))

(assert (=> bs!1354404 (not (= lambda!314409 lambda!314351))))

(declare-fun bs!1354407 () Bool)

(assert (= bs!1354407 (and d!1817950 b!5772956)))

(assert (=> bs!1354407 (= (and (= (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542) s!2326) (= (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292)))))) lt!2293701) (= (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293831 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) (regTwo!32090 r!7292))) (= lambda!314409 lambda!314352))))

(declare-fun bs!1354408 () Bool)

(assert (= bs!1354408 (and d!1817950 b!5772969)))

(assert (=> bs!1354408 (= (and (= (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542) (_1!36189 lt!2293843)) (= (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292)))))) (reg!16118 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293831 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) lt!2293701)) (= lambda!314409 lambda!314354))))

(declare-fun bs!1354409 () Bool)

(assert (= bs!1354409 (and d!1817950 b!5773270)))

(assert (=> bs!1354409 (not (= lambda!314409 lambda!314386))))

(assert (=> bs!1354408 (not (= lambda!314409 lambda!314355))))

(assert (=> bs!1354408 (not (= lambda!314409 lambda!314356))))

(declare-fun bs!1354411 () Bool)

(assert (= bs!1354411 (and d!1817950 b!5772937)))

(assert (=> bs!1354411 (= (and (= (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542) s!2326) (= (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292)))))) (regOne!32090 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293831 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) lt!2293835)) (= lambda!314409 lambda!314344))))

(declare-fun bs!1354413 () Bool)

(assert (= bs!1354413 (and d!1817950 b!5773278)))

(assert (=> bs!1354413 (not (= lambda!314409 lambda!314384))))

(assert (=> bs!1354404 (not (= lambda!314409 lambda!314349))))

(assert (=> bs!1354411 (= (and (= (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542) s!2326) (= (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292)))))) (regTwo!32090 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293831 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) lt!2293776)) (= lambda!314409 lambda!314346))))

(declare-fun bs!1354416 () Bool)

(assert (= bs!1354416 (and d!1817950 b!5773255)))

(assert (=> bs!1354416 (not (= lambda!314409 lambda!314383))))

(assert (=> bs!1354406 (= (and (= (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542) Nil!63542) (= (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292)))))) (reg!16118 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293831 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) lt!2293701)) (= lambda!314409 lambda!314365))))

(assert (=> bs!1354411 (not (= lambda!314409 lambda!314345))))

(assert (=> bs!1354407 (not (= lambda!314409 lambda!314353))))

(assert (=> bs!1354406 (not (= lambda!314409 lambda!314366))))

(assert (=> bs!1354402 (not (= lambda!314409 lambda!314363))))

(assert (=> bs!1354411 (not (= lambda!314409 lambda!314347))))

(assert (=> bs!1354403 (= (and (= (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542) s!2326) (= (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292)))))) (regOne!32090 r!7292)) (= (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293831 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) (regTwo!32090 r!7292))) (= lambda!314409 lambda!314341))))

(assert (=> d!1817950 true))

(assert (=> d!1817950 true))

(assert (=> d!1817950 true))

(declare-fun lambda!314411 () Int)

(assert (=> bs!1354402 (not (= lambda!314411 lambda!314364))))

(assert (=> bs!1354403 (= (and (= (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542) s!2326) (= (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292)))))) (regOne!32090 r!7292)) (= (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293831 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) (regTwo!32090 r!7292))) (= lambda!314411 lambda!314342))))

(assert (=> bs!1354402 (not (= lambda!314411 lambda!314360))))

(assert (=> bs!1354404 (not (= lambda!314411 lambda!314350))))

(assert (=> bs!1354405 (not (= lambda!314411 lambda!314380))))

(assert (=> bs!1354406 (not (= lambda!314411 lambda!314367))))

(assert (=> bs!1354402 (= (and (= (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542) s!2326) (= (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292)))))) lt!2293787) (= (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293831 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) (regTwo!32090 r!7292))) (= lambda!314411 lambda!314361))))

(assert (=> bs!1354404 (not (= lambda!314411 lambda!314348))))

(assert (=> bs!1354402 (not (= lambda!314411 lambda!314362))))

(assert (=> bs!1354404 (= (and (= (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542) s!2326) (= (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292)))))) (regTwo!32090 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293831 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) lt!2293738)) (= lambda!314411 lambda!314351))))

(assert (=> bs!1354408 (not (= lambda!314411 lambda!314354))))

(assert (=> bs!1354409 (= (and (= (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542) (ite c!1020902 s!2326 (ite c!1020903 (_1!36189 lt!2293843) s!2326))) (= (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292)))))) (regOne!32090 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736)))) (= (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293831 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) (regTwo!32090 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736))))) (= lambda!314411 lambda!314386))))

(assert (=> bs!1354408 (not (= lambda!314411 lambda!314355))))

(assert (=> bs!1354408 (= (and (= (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542) (_1!36189 lt!2293843)) (= (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292)))))) (reg!16118 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293831 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) lt!2293701)) (= lambda!314411 lambda!314356))))

(assert (=> bs!1354411 (not (= lambda!314411 lambda!314344))))

(assert (=> bs!1354413 (not (= lambda!314411 lambda!314384))))

(assert (=> bs!1354404 (= (and (= (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542) s!2326) (= (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292)))))) (regOne!32090 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293831 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) lt!2293831)) (= lambda!314411 lambda!314349))))

(assert (=> bs!1354411 (not (= lambda!314411 lambda!314346))))

(assert (=> bs!1354416 (= (and (= (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542) s!2326) (= (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292)))))) (regOne!32090 lt!2293730)) (= (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293831 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) (regTwo!32090 lt!2293730))) (= lambda!314411 lambda!314383))))

(assert (=> bs!1354406 (not (= lambda!314411 lambda!314365))))

(assert (=> bs!1354411 (= (and (= (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542) s!2326) (= (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292)))))) (regOne!32090 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293831 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) lt!2293835)) (= lambda!314411 lambda!314345))))

(assert (=> bs!1354407 (= (and (= (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542) s!2326) (= (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292)))))) lt!2293701) (= (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293831 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) (regTwo!32090 r!7292))) (= lambda!314411 lambda!314353))))

(assert (=> bs!1354406 (= (and (= (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542) Nil!63542) (= (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292)))))) (reg!16118 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293831 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) lt!2293701)) (= lambda!314411 lambda!314366))))

(assert (=> bs!1354402 (= (and (= (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542) (_1!36189 lt!2293718)) (= (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292)))))) (reg!16118 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293831 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) lt!2293701)) (= lambda!314411 lambda!314363))))

(assert (=> bs!1354411 (= (and (= (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542) s!2326) (= (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292)))))) (regTwo!32090 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293831 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) lt!2293776)) (= lambda!314411 lambda!314347))))

(assert (=> bs!1354403 (not (= lambda!314411 lambda!314341))))

(declare-fun bs!1354422 () Bool)

(assert (= bs!1354422 d!1817950))

(assert (=> bs!1354422 (not (= lambda!314411 lambda!314409))))

(assert (=> bs!1354407 (not (= lambda!314411 lambda!314352))))

(assert (=> d!1817950 true))

(assert (=> d!1817950 true))

(assert (=> d!1817950 true))

(assert (=> d!1817950 (= (Exists!2889 lambda!314409) (Exists!2889 lambda!314411))))

(declare-fun lt!2293978 () Unit!156778)

(declare-fun choose!43832 (Regex!15789 Regex!15789 List!63666) Unit!156778)

(assert (=> d!1817950 (= lt!2293978 (choose!43832 (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292)))))) (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293831 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542)))))

(assert (=> d!1817950 (validRegex!7525 (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292)))))))))

(assert (=> d!1817950 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1518 (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292)))))) (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293831 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542)) lt!2293978)))

(declare-fun m!6718402 () Bool)

(assert (=> bs!1354422 m!6718402))

(declare-fun m!6718404 () Bool)

(assert (=> bs!1354422 m!6718404))

(declare-fun m!6718406 () Bool)

(assert (=> bs!1354422 m!6718406))

(declare-fun m!6718408 () Bool)

(assert (=> bs!1354422 m!6718408))

(assert (=> bm!446991 d!1817950))

(declare-fun d!1817958 () Bool)

(assert (=> d!1817958 (= (Exists!2889 (ite c!1020907 lambda!314346 (ite c!1020910 lambda!314351 (ite c!1020903 lambda!314356 lambda!314364)))) (choose!43821 (ite c!1020907 lambda!314346 (ite c!1020910 lambda!314351 (ite c!1020903 lambda!314356 lambda!314364)))))))

(declare-fun bs!1354424 () Bool)

(assert (= bs!1354424 d!1817958))

(declare-fun m!6718410 () Bool)

(assert (=> bs!1354424 m!6718410))

(assert (=> bm!447051 d!1817958))

(declare-fun bs!1354425 () Bool)

(declare-fun b!5773505 () Bool)

(assert (= bs!1354425 (and b!5773505 b!5772936)))

(declare-fun lambda!314413 () Int)

(assert (=> bs!1354425 (= (and (= (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020900 (_1!36189 lt!2293718) Nil!63542) s!2326)) (_1!36189 lt!2293718)) (= (reg!16118 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))) (reg!16118 (regOne!32090 r!7292))) (= (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292))))) lt!2293701)) (= lambda!314413 lambda!314364))))

(declare-fun bs!1354427 () Bool)

(assert (= bs!1354427 (and b!5773505 b!5772932)))

(assert (=> bs!1354427 (not (= lambda!314413 lambda!314342))))

(assert (=> bs!1354425 (not (= lambda!314413 lambda!314360))))

(declare-fun bs!1354430 () Bool)

(assert (= bs!1354430 (and b!5773505 b!5772964)))

(assert (=> bs!1354430 (not (= lambda!314413 lambda!314350))))

(declare-fun bs!1354431 () Bool)

(assert (= bs!1354431 (and b!5773505 b!5773263)))

(assert (=> bs!1354431 (= (and (= (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020900 (_1!36189 lt!2293718) Nil!63542) s!2326)) s!2326) (= (reg!16118 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))) (reg!16118 lt!2293730)) (= (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292))))) lt!2293730)) (= lambda!314413 lambda!314380))))

(declare-fun bs!1354432 () Bool)

(assert (= bs!1354432 (and b!5773505 b!5772950)))

(assert (=> bs!1354432 (= (and (= (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020900 (_1!36189 lt!2293718) Nil!63542) s!2326)) Nil!63542) (= (reg!16118 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))) (reg!16118 (regOne!32090 r!7292))) (= (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292))))) lt!2293701)) (= lambda!314413 lambda!314367))))

(assert (=> bs!1354425 (not (= lambda!314413 lambda!314361))))

(assert (=> bs!1354425 (not (= lambda!314413 lambda!314362))))

(assert (=> bs!1354430 (not (= lambda!314413 lambda!314351))))

(declare-fun bs!1354433 () Bool)

(assert (= bs!1354433 (and b!5773505 b!5772969)))

(assert (=> bs!1354433 (not (= lambda!314413 lambda!314354))))

(declare-fun bs!1354434 () Bool)

(assert (= bs!1354434 (and b!5773505 b!5773270)))

(assert (=> bs!1354434 (not (= lambda!314413 lambda!314386))))

(assert (=> bs!1354433 (= (and (= (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020900 (_1!36189 lt!2293718) Nil!63542) s!2326)) (_1!36189 lt!2293843)) (= (reg!16118 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))) (reg!16118 (regOne!32090 r!7292))) (= (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292))))) lt!2293701)) (= lambda!314413 lambda!314355))))

(assert (=> bs!1354433 (not (= lambda!314413 lambda!314356))))

(declare-fun bs!1354435 () Bool)

(assert (= bs!1354435 (and b!5773505 b!5772937)))

(assert (=> bs!1354435 (not (= lambda!314413 lambda!314344))))

(declare-fun bs!1354436 () Bool)

(assert (= bs!1354436 (and b!5773505 b!5773278)))

(assert (=> bs!1354436 (= (and (= (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020900 (_1!36189 lt!2293718) Nil!63542) s!2326)) (ite c!1020902 s!2326 (ite c!1020903 (_1!36189 lt!2293843) s!2326))) (= (reg!16118 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))) (reg!16118 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736)))) (= (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292))))) (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736)))) (= lambda!314413 lambda!314384))))

(assert (=> bs!1354430 (not (= lambda!314413 lambda!314349))))

(assert (=> bs!1354435 (not (= lambda!314413 lambda!314346))))

(declare-fun bs!1354437 () Bool)

(assert (= bs!1354437 (and b!5773505 b!5773255)))

(assert (=> bs!1354437 (not (= lambda!314413 lambda!314383))))

(assert (=> bs!1354432 (not (= lambda!314413 lambda!314365))))

(assert (=> bs!1354435 (not (= lambda!314413 lambda!314345))))

(declare-fun bs!1354438 () Bool)

(assert (= bs!1354438 (and b!5773505 b!5772956)))

(assert (=> bs!1354438 (not (= lambda!314413 lambda!314353))))

(assert (=> bs!1354432 (not (= lambda!314413 lambda!314366))))

(assert (=> bs!1354425 (not (= lambda!314413 lambda!314363))))

(assert (=> bs!1354430 (not (= lambda!314413 lambda!314348))))

(declare-fun bs!1354439 () Bool)

(assert (= bs!1354439 (and b!5773505 d!1817950)))

(assert (=> bs!1354439 (not (= lambda!314413 lambda!314411))))

(assert (=> bs!1354435 (not (= lambda!314413 lambda!314347))))

(assert (=> bs!1354427 (not (= lambda!314413 lambda!314341))))

(assert (=> bs!1354439 (not (= lambda!314413 lambda!314409))))

(assert (=> bs!1354438 (not (= lambda!314413 lambda!314352))))

(assert (=> b!5773505 true))

(assert (=> b!5773505 true))

(declare-fun bs!1354440 () Bool)

(declare-fun b!5773497 () Bool)

(assert (= bs!1354440 (and b!5773497 b!5772936)))

(declare-fun lambda!314415 () Int)

(assert (=> bs!1354440 (not (= lambda!314415 lambda!314364))))

(declare-fun bs!1354441 () Bool)

(assert (= bs!1354441 (and b!5773497 b!5772932)))

(assert (=> bs!1354441 (= (and (= (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020900 (_1!36189 lt!2293718) Nil!63542) s!2326)) s!2326) (= (regOne!32090 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))) (regOne!32090 r!7292)) (= (regTwo!32090 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))) (regTwo!32090 r!7292))) (= lambda!314415 lambda!314342))))

(assert (=> bs!1354440 (not (= lambda!314415 lambda!314360))))

(declare-fun bs!1354442 () Bool)

(assert (= bs!1354442 (and b!5773497 b!5772964)))

(assert (=> bs!1354442 (not (= lambda!314415 lambda!314350))))

(declare-fun bs!1354443 () Bool)

(assert (= bs!1354443 (and b!5773497 b!5773263)))

(assert (=> bs!1354443 (not (= lambda!314415 lambda!314380))))

(declare-fun bs!1354444 () Bool)

(assert (= bs!1354444 (and b!5773497 b!5772950)))

(assert (=> bs!1354444 (not (= lambda!314415 lambda!314367))))

(declare-fun bs!1354445 () Bool)

(assert (= bs!1354445 (and b!5773497 b!5773505)))

(assert (=> bs!1354445 (not (= lambda!314415 lambda!314413))))

(assert (=> bs!1354440 (= (and (= (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020900 (_1!36189 lt!2293718) Nil!63542) s!2326)) s!2326) (= (regOne!32090 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))) lt!2293787) (= (regTwo!32090 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))) (regTwo!32090 r!7292))) (= lambda!314415 lambda!314361))))

(assert (=> bs!1354440 (not (= lambda!314415 lambda!314362))))

(assert (=> bs!1354442 (= (and (= (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020900 (_1!36189 lt!2293718) Nil!63542) s!2326)) s!2326) (= (regOne!32090 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))) (regTwo!32090 (regOne!32090 r!7292))) (= (regTwo!32090 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))) lt!2293738)) (= lambda!314415 lambda!314351))))

(declare-fun bs!1354446 () Bool)

(assert (= bs!1354446 (and b!5773497 b!5772969)))

(assert (=> bs!1354446 (not (= lambda!314415 lambda!314354))))

(declare-fun bs!1354447 () Bool)

(assert (= bs!1354447 (and b!5773497 b!5773270)))

(assert (=> bs!1354447 (= (and (= (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020900 (_1!36189 lt!2293718) Nil!63542) s!2326)) (ite c!1020902 s!2326 (ite c!1020903 (_1!36189 lt!2293843) s!2326))) (= (regOne!32090 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))) (regOne!32090 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736)))) (= (regTwo!32090 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))) (regTwo!32090 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736))))) (= lambda!314415 lambda!314386))))

(assert (=> bs!1354446 (not (= lambda!314415 lambda!314355))))

(assert (=> bs!1354446 (= (and (= (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020900 (_1!36189 lt!2293718) Nil!63542) s!2326)) (_1!36189 lt!2293843)) (= (regOne!32090 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))) (reg!16118 (regOne!32090 r!7292))) (= (regTwo!32090 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))) lt!2293701)) (= lambda!314415 lambda!314356))))

(declare-fun bs!1354448 () Bool)

(assert (= bs!1354448 (and b!5773497 b!5772937)))

(assert (=> bs!1354448 (not (= lambda!314415 lambda!314344))))

(declare-fun bs!1354449 () Bool)

(assert (= bs!1354449 (and b!5773497 b!5773278)))

(assert (=> bs!1354449 (not (= lambda!314415 lambda!314384))))

(assert (=> bs!1354442 (= (and (= (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020900 (_1!36189 lt!2293718) Nil!63542) s!2326)) s!2326) (= (regOne!32090 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))) (regOne!32090 (regOne!32090 r!7292))) (= (regTwo!32090 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))) lt!2293831)) (= lambda!314415 lambda!314349))))

(assert (=> bs!1354448 (not (= lambda!314415 lambda!314346))))

(declare-fun bs!1354450 () Bool)

(assert (= bs!1354450 (and b!5773497 b!5773255)))

(assert (=> bs!1354450 (= (and (= (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020900 (_1!36189 lt!2293718) Nil!63542) s!2326)) s!2326) (= (regOne!32090 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))) (regOne!32090 lt!2293730)) (= (regTwo!32090 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))) (regTwo!32090 lt!2293730))) (= lambda!314415 lambda!314383))))

(assert (=> bs!1354444 (not (= lambda!314415 lambda!314365))))

(assert (=> bs!1354448 (= (and (= (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020900 (_1!36189 lt!2293718) Nil!63542) s!2326)) s!2326) (= (regOne!32090 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))) (regOne!32090 (regOne!32090 r!7292))) (= (regTwo!32090 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))) lt!2293835)) (= lambda!314415 lambda!314345))))

(declare-fun bs!1354451 () Bool)

(assert (= bs!1354451 (and b!5773497 b!5772956)))

(assert (=> bs!1354451 (= (and (= (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020900 (_1!36189 lt!2293718) Nil!63542) s!2326)) s!2326) (= (regOne!32090 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))) lt!2293701) (= (regTwo!32090 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))) (regTwo!32090 r!7292))) (= lambda!314415 lambda!314353))))

(assert (=> bs!1354444 (= (and (= (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020900 (_1!36189 lt!2293718) Nil!63542) s!2326)) Nil!63542) (= (regOne!32090 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))) (reg!16118 (regOne!32090 r!7292))) (= (regTwo!32090 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))) lt!2293701)) (= lambda!314415 lambda!314366))))

(assert (=> bs!1354440 (= (and (= (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020900 (_1!36189 lt!2293718) Nil!63542) s!2326)) (_1!36189 lt!2293718)) (= (regOne!32090 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))) (reg!16118 (regOne!32090 r!7292))) (= (regTwo!32090 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))) lt!2293701)) (= lambda!314415 lambda!314363))))

(assert (=> bs!1354442 (not (= lambda!314415 lambda!314348))))

(declare-fun bs!1354452 () Bool)

(assert (= bs!1354452 (and b!5773497 d!1817950)))

(assert (=> bs!1354452 (= (and (= (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020900 (_1!36189 lt!2293718) Nil!63542) s!2326)) (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542)) (= (regOne!32090 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))) (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292))))))) (= (regTwo!32090 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))) (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293831 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))))) (= lambda!314415 lambda!314411))))

(assert (=> bs!1354448 (= (and (= (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020900 (_1!36189 lt!2293718) Nil!63542) s!2326)) s!2326) (= (regOne!32090 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))) (regTwo!32090 (regOne!32090 r!7292))) (= (regTwo!32090 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))) lt!2293776)) (= lambda!314415 lambda!314347))))

(assert (=> bs!1354441 (not (= lambda!314415 lambda!314341))))

(assert (=> bs!1354452 (not (= lambda!314415 lambda!314409))))

(assert (=> bs!1354451 (not (= lambda!314415 lambda!314352))))

(assert (=> b!5773497 true))

(assert (=> b!5773497 true))

(declare-fun b!5773496 () Bool)

(declare-fun c!1021064 () Bool)

(assert (=> b!5773496 (= c!1021064 ((_ is ElementMatch!15789) (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))))))

(declare-fun e!3546667 () Bool)

(declare-fun e!3546671 () Bool)

(assert (=> b!5773496 (= e!3546667 e!3546671)))

(declare-fun e!3546669 () Bool)

(declare-fun call!447175 () Bool)

(assert (=> b!5773497 (= e!3546669 call!447175)))

(declare-fun c!1021063 () Bool)

(declare-fun bm!447169 () Bool)

(assert (=> bm!447169 (= call!447175 (Exists!2889 (ite c!1021063 lambda!314413 lambda!314415)))))

(declare-fun b!5773498 () Bool)

(declare-fun e!3546670 () Bool)

(assert (=> b!5773498 (= e!3546670 e!3546667)))

(declare-fun res!2436876 () Bool)

(assert (=> b!5773498 (= res!2436876 (not ((_ is EmptyLang!15789) (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292))))))))))

(assert (=> b!5773498 (=> (not res!2436876) (not e!3546667))))

(declare-fun b!5773499 () Bool)

(assert (=> b!5773499 (= e!3546671 (= (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020900 (_1!36189 lt!2293718) Nil!63542) s!2326)) (Cons!63542 (c!1020912 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))) Nil!63542)))))

(declare-fun c!1021065 () Bool)

(declare-fun b!5773500 () Bool)

(assert (=> b!5773500 (= c!1021065 ((_ is Union!15789) (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))))))

(declare-fun e!3546668 () Bool)

(assert (=> b!5773500 (= e!3546671 e!3546668)))

(declare-fun c!1021066 () Bool)

(declare-fun d!1817960 () Bool)

(assert (=> d!1817960 (= c!1021066 ((_ is EmptyExpr!15789) (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))))))

(assert (=> d!1817960 (= (matchRSpec!2892 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292))))) (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020900 (_1!36189 lt!2293718) Nil!63542) s!2326))) e!3546670)))

(declare-fun bm!447170 () Bool)

(declare-fun call!447174 () Bool)

(assert (=> bm!447170 (= call!447174 (isEmpty!35440 (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020900 (_1!36189 lt!2293718) Nil!63542) s!2326))))))

(declare-fun b!5773501 () Bool)

(declare-fun e!3546673 () Bool)

(assert (=> b!5773501 (= e!3546668 e!3546673)))

(declare-fun res!2436874 () Bool)

(assert (=> b!5773501 (= res!2436874 (matchRSpec!2892 (regOne!32091 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))) (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020900 (_1!36189 lt!2293718) Nil!63542) s!2326))))))

(assert (=> b!5773501 (=> res!2436874 e!3546673)))

(declare-fun b!5773502 () Bool)

(declare-fun res!2436875 () Bool)

(declare-fun e!3546672 () Bool)

(assert (=> b!5773502 (=> res!2436875 e!3546672)))

(assert (=> b!5773502 (= res!2436875 call!447174)))

(assert (=> b!5773502 (= e!3546669 e!3546672)))

(declare-fun b!5773503 () Bool)

(assert (=> b!5773503 (= e!3546673 (matchRSpec!2892 (regTwo!32091 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))) (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020900 (_1!36189 lt!2293718) Nil!63542) s!2326))))))

(declare-fun b!5773504 () Bool)

(assert (=> b!5773504 (= e!3546668 e!3546669)))

(assert (=> b!5773504 (= c!1021063 ((_ is Star!15789) (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))))))

(assert (=> b!5773505 (= e!3546672 call!447175)))

(declare-fun b!5773506 () Bool)

(assert (=> b!5773506 (= e!3546670 call!447174)))

(assert (= (and d!1817960 c!1021066) b!5773506))

(assert (= (and d!1817960 (not c!1021066)) b!5773498))

(assert (= (and b!5773498 res!2436876) b!5773496))

(assert (= (and b!5773496 c!1021064) b!5773499))

(assert (= (and b!5773496 (not c!1021064)) b!5773500))

(assert (= (and b!5773500 c!1021065) b!5773501))

(assert (= (and b!5773500 (not c!1021065)) b!5773504))

(assert (= (and b!5773501 (not res!2436874)) b!5773503))

(assert (= (and b!5773504 c!1021063) b!5773502))

(assert (= (and b!5773504 (not c!1021063)) b!5773497))

(assert (= (and b!5773502 (not res!2436875)) b!5773505))

(assert (= (or b!5773505 b!5773497) bm!447169))

(assert (= (or b!5773506 b!5773502) bm!447170))

(declare-fun m!6718440 () Bool)

(assert (=> bm!447169 m!6718440))

(declare-fun m!6718442 () Bool)

(assert (=> bm!447170 m!6718442))

(declare-fun m!6718444 () Bool)

(assert (=> b!5773501 m!6718444))

(declare-fun m!6718446 () Bool)

(assert (=> b!5773503 m!6718446))

(assert (=> bm!447103 d!1817960))

(declare-fun bs!1354453 () Bool)

(declare-fun d!1817966 () Bool)

(assert (= bs!1354453 (and d!1817966 d!1817836)))

(declare-fun lambda!314416 () Int)

(assert (=> bs!1354453 (= lambda!314416 lambda!314370)))

(declare-fun bs!1354454 () Bool)

(assert (= bs!1354454 (and d!1817966 d!1817920)))

(assert (=> bs!1354454 (= lambda!314416 lambda!314397)))

(declare-fun bs!1354455 () Bool)

(assert (= bs!1354455 (and d!1817966 b!5772936)))

(assert (=> bs!1354455 (= lambda!314416 lambda!314359)))

(declare-fun bs!1354456 () Bool)

(assert (= bs!1354456 (and d!1817966 b!5772969)))

(assert (=> bs!1354456 (= lambda!314416 lambda!314357)))

(declare-fun bs!1354457 () Bool)

(assert (= bs!1354457 (and d!1817966 d!1817906)))

(assert (=> bs!1354457 (= lambda!314416 lambda!314393)))

(declare-fun bs!1354458 () Bool)

(assert (= bs!1354458 (and d!1817966 d!1817918)))

(assert (=> bs!1354458 (= lambda!314416 lambda!314394)))

(declare-fun bs!1354459 () Bool)

(assert (= bs!1354459 (and d!1817966 d!1817900)))

(assert (=> bs!1354459 (= lambda!314416 lambda!314390)))

(declare-fun b!5773517 () Bool)

(declare-fun e!3546682 () Bool)

(declare-fun lt!2293981 () Regex!15789)

(assert (=> b!5773517 (= e!3546682 (isEmptyExpr!1270 lt!2293981))))

(declare-fun e!3546680 () Bool)

(declare-fun b!5773518 () Bool)

(assert (=> b!5773518 (= e!3546680 (isEmpty!35442 (t!377005 (ite c!1020907 lt!2293824 (t!377005 (exprs!5673 (h!69992 zl!343)))))))))

(declare-fun b!5773519 () Bool)

(declare-fun e!3546685 () Bool)

(assert (=> b!5773519 (= e!3546685 (= lt!2293981 (head!12205 (ite c!1020907 lt!2293824 (t!377005 (exprs!5673 (h!69992 zl!343)))))))))

(declare-fun b!5773520 () Bool)

(declare-fun e!3546681 () Regex!15789)

(assert (=> b!5773520 (= e!3546681 EmptyExpr!15789)))

(declare-fun b!5773521 () Bool)

(declare-fun e!3546683 () Bool)

(assert (=> b!5773521 (= e!3546683 e!3546682)))

(declare-fun c!1021073 () Bool)

(assert (=> b!5773521 (= c!1021073 (isEmpty!35442 (ite c!1020907 lt!2293824 (t!377005 (exprs!5673 (h!69992 zl!343))))))))

(declare-fun b!5773522 () Bool)

(assert (=> b!5773522 (= e!3546682 e!3546685)))

(declare-fun c!1021074 () Bool)

(assert (=> b!5773522 (= c!1021074 (isEmpty!35442 (tail!11300 (ite c!1020907 lt!2293824 (t!377005 (exprs!5673 (h!69992 zl!343)))))))))

(assert (=> d!1817966 e!3546683))

(declare-fun res!2436880 () Bool)

(assert (=> d!1817966 (=> (not res!2436880) (not e!3546683))))

(assert (=> d!1817966 (= res!2436880 (validRegex!7525 lt!2293981))))

(declare-fun e!3546684 () Regex!15789)

(assert (=> d!1817966 (= lt!2293981 e!3546684)))

(declare-fun c!1021071 () Bool)

(assert (=> d!1817966 (= c!1021071 e!3546680)))

(declare-fun res!2436879 () Bool)

(assert (=> d!1817966 (=> (not res!2436879) (not e!3546680))))

(assert (=> d!1817966 (= res!2436879 ((_ is Cons!63543) (ite c!1020907 lt!2293824 (t!377005 (exprs!5673 (h!69992 zl!343))))))))

(assert (=> d!1817966 (forall!14902 (ite c!1020907 lt!2293824 (t!377005 (exprs!5673 (h!69992 zl!343)))) lambda!314416)))

(assert (=> d!1817966 (= (generalisedConcat!1404 (ite c!1020907 lt!2293824 (t!377005 (exprs!5673 (h!69992 zl!343))))) lt!2293981)))

(declare-fun b!5773523 () Bool)

(assert (=> b!5773523 (= e!3546684 e!3546681)))

(declare-fun c!1021072 () Bool)

(assert (=> b!5773523 (= c!1021072 ((_ is Cons!63543) (ite c!1020907 lt!2293824 (t!377005 (exprs!5673 (h!69992 zl!343))))))))

(declare-fun b!5773524 () Bool)

(assert (=> b!5773524 (= e!3546685 (isConcat!793 lt!2293981))))

(declare-fun b!5773525 () Bool)

(assert (=> b!5773525 (= e!3546681 (Concat!24634 (h!69991 (ite c!1020907 lt!2293824 (t!377005 (exprs!5673 (h!69992 zl!343))))) (generalisedConcat!1404 (t!377005 (ite c!1020907 lt!2293824 (t!377005 (exprs!5673 (h!69992 zl!343))))))))))

(declare-fun b!5773526 () Bool)

(assert (=> b!5773526 (= e!3546684 (h!69991 (ite c!1020907 lt!2293824 (t!377005 (exprs!5673 (h!69992 zl!343))))))))

(assert (= (and d!1817966 res!2436879) b!5773518))

(assert (= (and d!1817966 c!1021071) b!5773526))

(assert (= (and d!1817966 (not c!1021071)) b!5773523))

(assert (= (and b!5773523 c!1021072) b!5773525))

(assert (= (and b!5773523 (not c!1021072)) b!5773520))

(assert (= (and d!1817966 res!2436880) b!5773521))

(assert (= (and b!5773521 c!1021073) b!5773517))

(assert (= (and b!5773521 (not c!1021073)) b!5773522))

(assert (= (and b!5773522 c!1021074) b!5773519))

(assert (= (and b!5773522 (not c!1021074)) b!5773524))

(declare-fun m!6718448 () Bool)

(assert (=> b!5773521 m!6718448))

(declare-fun m!6718450 () Bool)

(assert (=> b!5773518 m!6718450))

(declare-fun m!6718452 () Bool)

(assert (=> b!5773522 m!6718452))

(assert (=> b!5773522 m!6718452))

(declare-fun m!6718454 () Bool)

(assert (=> b!5773522 m!6718454))

(declare-fun m!6718456 () Bool)

(assert (=> b!5773517 m!6718456))

(declare-fun m!6718458 () Bool)

(assert (=> b!5773519 m!6718458))

(declare-fun m!6718460 () Bool)

(assert (=> d!1817966 m!6718460))

(declare-fun m!6718462 () Bool)

(assert (=> d!1817966 m!6718462))

(declare-fun m!6718464 () Bool)

(assert (=> b!5773524 m!6718464))

(declare-fun m!6718466 () Bool)

(assert (=> b!5773525 m!6718466))

(assert (=> bm!446962 d!1817966))

(declare-fun b!5773572 () Bool)

(declare-fun e!3546713 () Bool)

(declare-fun lt!2294000 () Option!15798)

(assert (=> b!5773572 (= e!3546713 (not (isDefined!12501 lt!2294000)))))

(declare-fun b!5773573 () Bool)

(declare-fun res!2436906 () Bool)

(declare-fun e!3546711 () Bool)

(assert (=> b!5773573 (=> (not res!2436906) (not e!3546711))))

(assert (=> b!5773573 (= res!2436906 (matchZipper!1927 lt!2293702 (_2!36189 (get!21929 lt!2294000))))))

(declare-fun d!1817968 () Bool)

(assert (=> d!1817968 e!3546713))

(declare-fun res!2436910 () Bool)

(assert (=> d!1817968 (=> res!2436910 e!3546713)))

(assert (=> d!1817968 (= res!2436910 e!3546711)))

(declare-fun res!2436908 () Bool)

(assert (=> d!1817968 (=> (not res!2436908) (not e!3546711))))

(assert (=> d!1817968 (= res!2436908 (isDefined!12501 lt!2294000))))

(declare-fun e!3546712 () Option!15798)

(assert (=> d!1817968 (= lt!2294000 e!3546712)))

(declare-fun c!1021086 () Bool)

(declare-fun e!3546714 () Bool)

(assert (=> d!1817968 (= c!1021086 e!3546714)))

(declare-fun res!2436907 () Bool)

(assert (=> d!1817968 (=> (not res!2436907) (not e!3546714))))

(assert (=> d!1817968 (= res!2436907 (matchZipper!1927 lt!2293860 Nil!63542))))

(assert (=> d!1817968 (= (++!14006 Nil!63542 s!2326) s!2326)))

(assert (=> d!1817968 (= (findConcatSeparationZippers!142 lt!2293860 lt!2293702 Nil!63542 s!2326 s!2326) lt!2294000)))

(declare-fun b!5773574 () Bool)

(declare-fun e!3546715 () Option!15798)

(assert (=> b!5773574 (= e!3546715 None!15797)))

(declare-fun b!5773575 () Bool)

(declare-fun lt!2293999 () Unit!156778)

(declare-fun lt!2293998 () Unit!156778)

(assert (=> b!5773575 (= lt!2293999 lt!2293998)))

(assert (=> b!5773575 (= (++!14006 (++!14006 Nil!63542 (Cons!63542 (h!69990 s!2326) Nil!63542)) (t!377004 s!2326)) s!2326)))

(assert (=> b!5773575 (= lt!2293998 (lemmaMoveElementToOtherListKeepsConcatEq!2115 Nil!63542 (h!69990 s!2326) (t!377004 s!2326) s!2326))))

(assert (=> b!5773575 (= e!3546715 (findConcatSeparationZippers!142 lt!2293860 lt!2293702 (++!14006 Nil!63542 (Cons!63542 (h!69990 s!2326) Nil!63542)) (t!377004 s!2326) s!2326))))

(declare-fun b!5773576 () Bool)

(assert (=> b!5773576 (= e!3546711 (= (++!14006 (_1!36189 (get!21929 lt!2294000)) (_2!36189 (get!21929 lt!2294000))) s!2326))))

(declare-fun b!5773577 () Bool)

(assert (=> b!5773577 (= e!3546712 (Some!15797 (tuple2!65773 Nil!63542 s!2326)))))

(declare-fun b!5773578 () Bool)

(assert (=> b!5773578 (= e!3546712 e!3546715)))

(declare-fun c!1021085 () Bool)

(assert (=> b!5773578 (= c!1021085 ((_ is Nil!63542) s!2326))))

(declare-fun b!5773579 () Bool)

(assert (=> b!5773579 (= e!3546714 (matchZipper!1927 lt!2293702 s!2326))))

(declare-fun b!5773580 () Bool)

(declare-fun res!2436909 () Bool)

(assert (=> b!5773580 (=> (not res!2436909) (not e!3546711))))

(assert (=> b!5773580 (= res!2436909 (matchZipper!1927 lt!2293860 (_1!36189 (get!21929 lt!2294000))))))

(assert (= (and d!1817968 res!2436907) b!5773579))

(assert (= (and d!1817968 c!1021086) b!5773577))

(assert (= (and d!1817968 (not c!1021086)) b!5773578))

(assert (= (and b!5773578 c!1021085) b!5773574))

(assert (= (and b!5773578 (not c!1021085)) b!5773575))

(assert (= (and d!1817968 res!2436908) b!5773580))

(assert (= (and b!5773580 res!2436909) b!5773573))

(assert (= (and b!5773573 res!2436906) b!5773576))

(assert (= (and d!1817968 (not res!2436910)) b!5773572))

(declare-fun m!6718494 () Bool)

(assert (=> b!5773572 m!6718494))

(declare-fun m!6718496 () Bool)

(assert (=> b!5773580 m!6718496))

(declare-fun m!6718498 () Bool)

(assert (=> b!5773580 m!6718498))

(assert (=> b!5773573 m!6718496))

(declare-fun m!6718500 () Bool)

(assert (=> b!5773573 m!6718500))

(assert (=> b!5773576 m!6718496))

(declare-fun m!6718502 () Bool)

(assert (=> b!5773576 m!6718502))

(declare-fun m!6718504 () Bool)

(assert (=> b!5773579 m!6718504))

(assert (=> d!1817968 m!6718494))

(declare-fun m!6718506 () Bool)

(assert (=> d!1817968 m!6718506))

(declare-fun m!6718508 () Bool)

(assert (=> d!1817968 m!6718508))

(declare-fun m!6718510 () Bool)

(assert (=> b!5773575 m!6718510))

(assert (=> b!5773575 m!6718510))

(declare-fun m!6718512 () Bool)

(assert (=> b!5773575 m!6718512))

(declare-fun m!6718516 () Bool)

(assert (=> b!5773575 m!6718516))

(assert (=> b!5773575 m!6718510))

(declare-fun m!6718524 () Bool)

(assert (=> b!5773575 m!6718524))

(assert (=> b!5772936 d!1817968))

(declare-fun d!1817976 () Bool)

(assert (=> d!1817976 (isDefined!12501 (findConcatSeparationZippers!142 lt!2293860 (store ((as const (Array Context!10346 Bool)) false) lt!2293814 true) Nil!63542 s!2326 s!2326))))

(declare-fun lt!2294003 () Unit!156778)

(declare-fun choose!43833 ((InoxSet Context!10346) Context!10346 List!63666) Unit!156778)

(assert (=> d!1817976 (= lt!2294003 (choose!43833 lt!2293860 lt!2293814 s!2326))))

(declare-fun appendTo!131 ((InoxSet Context!10346) Context!10346) (InoxSet Context!10346))

(assert (=> d!1817976 (matchZipper!1927 (appendTo!131 lt!2293860 lt!2293814) s!2326)))

(assert (=> d!1817976 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!142 lt!2293860 lt!2293814 s!2326) lt!2294003)))

(declare-fun bs!1354494 () Bool)

(assert (= bs!1354494 d!1817976))

(assert (=> bs!1354494 m!6717712))

(declare-fun m!6718526 () Bool)

(assert (=> bs!1354494 m!6718526))

(declare-fun m!6718528 () Bool)

(assert (=> bs!1354494 m!6718528))

(declare-fun m!6718530 () Bool)

(assert (=> bs!1354494 m!6718530))

(assert (=> bs!1354494 m!6718528))

(declare-fun m!6718532 () Bool)

(assert (=> bs!1354494 m!6718532))

(declare-fun m!6718534 () Bool)

(assert (=> bs!1354494 m!6718534))

(assert (=> bs!1354494 m!6717712))

(assert (=> bs!1354494 m!6718532))

(assert (=> b!5772936 d!1817976))

(declare-fun d!1817978 () Bool)

(assert (=> d!1817978 (= (get!21929 lt!2293880) (v!51856 lt!2293880))))

(assert (=> b!5772936 d!1817978))

(declare-fun d!1817980 () Bool)

(declare-fun dynLambda!24873 (Int Context!10346) Context!10346)

(assert (=> d!1817980 (= (map!14570 lt!2293860 lambda!314358) (store ((as const (Array Context!10346 Bool)) false) (dynLambda!24873 lambda!314358 lt!2293775) true))))

(declare-fun lt!2294006 () Unit!156778)

(declare-fun choose!43834 ((InoxSet Context!10346) Context!10346 Int) Unit!156778)

(assert (=> d!1817980 (= lt!2294006 (choose!43834 lt!2293860 lt!2293775 lambda!314358))))

(assert (=> d!1817980 (= lt!2293860 (store ((as const (Array Context!10346 Bool)) false) lt!2293775 true))))

(assert (=> d!1817980 (= (lemmaMapOnSingletonSet!150 lt!2293860 lt!2293775 lambda!314358) lt!2294006)))

(declare-fun b_lambda!217803 () Bool)

(assert (=> (not b_lambda!217803) (not d!1817980)))

(declare-fun bs!1354500 () Bool)

(assert (= bs!1354500 d!1817980))

(declare-fun m!6718540 () Bool)

(assert (=> bs!1354500 m!6718540))

(assert (=> bs!1354500 m!6717924))

(assert (=> bs!1354500 m!6718540))

(declare-fun m!6718544 () Bool)

(assert (=> bs!1354500 m!6718544))

(assert (=> bs!1354500 m!6717710))

(declare-fun m!6718546 () Bool)

(assert (=> bs!1354500 m!6718546))

(assert (=> b!5772936 d!1817980))

(declare-fun d!1817984 () Bool)

(declare-fun choose!43835 ((InoxSet Context!10346) Int) (InoxSet Context!10346))

(assert (=> d!1817984 (= (map!14570 lt!2293860 lambda!314358) (choose!43835 lt!2293860 lambda!314358))))

(declare-fun bs!1354507 () Bool)

(assert (= bs!1354507 d!1817984))

(declare-fun m!6718550 () Bool)

(assert (=> bs!1354507 m!6718550))

(assert (=> b!5772936 d!1817984))

(declare-fun e!3546723 () Bool)

(declare-fun d!1817988 () Bool)

(assert (=> d!1817988 (= (matchZipper!1927 ((_ map or) lt!2293777 lt!2293761) (t!377004 s!2326)) e!3546723)))

(declare-fun res!2436914 () Bool)

(assert (=> d!1817988 (=> res!2436914 e!3546723)))

(assert (=> d!1817988 (= res!2436914 (matchZipper!1927 lt!2293777 (t!377004 s!2326)))))

(declare-fun lt!2294007 () Unit!156778)

(assert (=> d!1817988 (= lt!2294007 (choose!43831 lt!2293777 lt!2293761 (t!377004 s!2326)))))

(assert (=> d!1817988 (= (lemmaZipperConcatMatchesSameAsBothZippers!814 lt!2293777 lt!2293761 (t!377004 s!2326)) lt!2294007)))

(declare-fun b!5773592 () Bool)

(assert (=> b!5773592 (= e!3546723 (matchZipper!1927 lt!2293761 (t!377004 s!2326)))))

(assert (= (and d!1817988 (not res!2436914)) b!5773592))

(declare-fun m!6718554 () Bool)

(assert (=> d!1817988 m!6718554))

(assert (=> d!1817988 m!6717886))

(declare-fun m!6718556 () Bool)

(assert (=> d!1817988 m!6718556))

(assert (=> b!5773592 m!6717910))

(assert (=> b!5772947 d!1817988))

(declare-fun d!1817992 () Bool)

(assert (=> d!1817992 (= (Exists!2889 (ite c!1020907 lambda!314345 (ite c!1020903 lambda!314353 (ite c!1020900 lambda!314360 lambda!314365)))) (choose!43821 (ite c!1020907 lambda!314345 (ite c!1020903 lambda!314353 (ite c!1020900 lambda!314360 lambda!314365)))))))

(declare-fun bs!1354509 () Bool)

(assert (= bs!1354509 d!1817992))

(declare-fun m!6718558 () Bool)

(assert (=> bs!1354509 m!6718558))

(assert (=> bm!447022 d!1817992))

(declare-fun d!1817994 () Bool)

(assert (=> d!1817994 (= (isEmpty!35441 (t!377006 zl!343)) ((_ is Nil!63544) (t!377006 zl!343)))))

(assert (=> b!5772983 d!1817994))

(declare-fun d!1817998 () Bool)

(assert (=> d!1817998 (= (matchR!7974 (ite c!1020902 lt!2293730 (ite c!1020907 lt!2293743 (ite (and c!1020903 c!1020911) lt!2293892 (reg!16118 (regOne!32090 r!7292))))) (ite (or c!1020902 c!1020907) s!2326 (ite c!1020903 (ite c!1020911 s!2326 (_1!36189 lt!2293864)) (_1!36189 lt!2293851)))) (matchZipper!1927 (ite c!1020902 lt!2293786 (ite c!1020907 lt!2293772 (ite (and c!1020903 c!1020911) lt!2293829 lt!2293860))) (ite (or c!1020902 c!1020907) s!2326 (ite c!1020903 (ite c!1020911 s!2326 (_1!36189 lt!2293864)) (_1!36189 lt!2293851)))))))

(declare-fun lt!2294009 () Unit!156778)

(assert (=> d!1817998 (= lt!2294009 (choose!43828 (ite c!1020902 lt!2293786 (ite c!1020907 lt!2293772 (ite (and c!1020903 c!1020911) lt!2293829 lt!2293860))) (ite c!1020902 (Cons!63544 lt!2293886 Nil!63544) (ite c!1020907 (Cons!63544 lt!2293863 Nil!63544) (ite (and c!1020903 c!1020911) (Cons!63544 lt!2293899 Nil!63544) (Cons!63544 lt!2293775 Nil!63544)))) (ite c!1020902 lt!2293730 (ite c!1020907 lt!2293743 (ite (and c!1020903 c!1020911) lt!2293892 (reg!16118 (regOne!32090 r!7292))))) (ite (or c!1020902 c!1020907) s!2326 (ite c!1020903 (ite c!1020911 s!2326 (_1!36189 lt!2293864)) (_1!36189 lt!2293851)))))))

(assert (=> d!1817998 (validRegex!7525 (ite c!1020902 lt!2293730 (ite c!1020907 lt!2293743 (ite (and c!1020903 c!1020911) lt!2293892 (reg!16118 (regOne!32090 r!7292))))))))

(assert (=> d!1817998 (= (theoremZipperRegexEquiv!683 (ite c!1020902 lt!2293786 (ite c!1020907 lt!2293772 (ite (and c!1020903 c!1020911) lt!2293829 lt!2293860))) (ite c!1020902 (Cons!63544 lt!2293886 Nil!63544) (ite c!1020907 (Cons!63544 lt!2293863 Nil!63544) (ite (and c!1020903 c!1020911) (Cons!63544 lt!2293899 Nil!63544) (Cons!63544 lt!2293775 Nil!63544)))) (ite c!1020902 lt!2293730 (ite c!1020907 lt!2293743 (ite (and c!1020903 c!1020911) lt!2293892 (reg!16118 (regOne!32090 r!7292))))) (ite (or c!1020902 c!1020907) s!2326 (ite c!1020903 (ite c!1020911 s!2326 (_1!36189 lt!2293864)) (_1!36189 lt!2293851)))) lt!2294009)))

(declare-fun bs!1354511 () Bool)

(assert (= bs!1354511 d!1817998))

(declare-fun m!6718562 () Bool)

(assert (=> bs!1354511 m!6718562))

(declare-fun m!6718566 () Bool)

(assert (=> bs!1354511 m!6718566))

(declare-fun m!6718572 () Bool)

(assert (=> bs!1354511 m!6718572))

(declare-fun m!6718576 () Bool)

(assert (=> bs!1354511 m!6718576))

(assert (=> bm!447113 d!1817998))

(declare-fun b!5773607 () Bool)

(declare-fun e!3546733 () (InoxSet Context!10346))

(declare-fun call!447179 () (InoxSet Context!10346))

(assert (=> b!5773607 (= e!3546733 call!447179)))

(declare-fun e!3546732 () (InoxSet Context!10346))

(declare-fun b!5773608 () Bool)

(assert (=> b!5773608 (= e!3546732 ((_ map or) call!447179 (derivationStepZipperUp!1057 (Context!10347 (t!377005 (exprs!5673 (ite c!1020902 lt!2293882 (ite c!1020907 lt!2293792 lt!2293899))))) (h!69990 s!2326))))))

(declare-fun d!1818000 () Bool)

(declare-fun c!1021095 () Bool)

(declare-fun e!3546731 () Bool)

(assert (=> d!1818000 (= c!1021095 e!3546731)))

(declare-fun res!2436923 () Bool)

(assert (=> d!1818000 (=> (not res!2436923) (not e!3546731))))

(assert (=> d!1818000 (= res!2436923 ((_ is Cons!63543) (exprs!5673 (ite c!1020902 lt!2293882 (ite c!1020907 lt!2293792 lt!2293899)))))))

(assert (=> d!1818000 (= (derivationStepZipperUp!1057 (ite c!1020902 lt!2293882 (ite c!1020907 lt!2293792 lt!2293899)) (h!69990 s!2326)) e!3546732)))

(declare-fun b!5773609 () Bool)

(assert (=> b!5773609 (= e!3546732 e!3546733)))

(declare-fun c!1021094 () Bool)

(assert (=> b!5773609 (= c!1021094 ((_ is Cons!63543) (exprs!5673 (ite c!1020902 lt!2293882 (ite c!1020907 lt!2293792 lt!2293899)))))))

(declare-fun b!5773610 () Bool)

(assert (=> b!5773610 (= e!3546731 (nullable!5821 (h!69991 (exprs!5673 (ite c!1020902 lt!2293882 (ite c!1020907 lt!2293792 lt!2293899))))))))

(declare-fun b!5773611 () Bool)

(assert (=> b!5773611 (= e!3546733 ((as const (Array Context!10346 Bool)) false))))

(declare-fun bm!447174 () Bool)

(assert (=> bm!447174 (= call!447179 (derivationStepZipperDown!1131 (h!69991 (exprs!5673 (ite c!1020902 lt!2293882 (ite c!1020907 lt!2293792 lt!2293899)))) (Context!10347 (t!377005 (exprs!5673 (ite c!1020902 lt!2293882 (ite c!1020907 lt!2293792 lt!2293899))))) (h!69990 s!2326)))))

(assert (= (and d!1818000 res!2436923) b!5773610))

(assert (= (and d!1818000 c!1021095) b!5773608))

(assert (= (and d!1818000 (not c!1021095)) b!5773609))

(assert (= (and b!5773609 c!1021094) b!5773607))

(assert (= (and b!5773609 (not c!1021094)) b!5773611))

(assert (= (or b!5773608 b!5773607) bm!447174))

(declare-fun m!6718586 () Bool)

(assert (=> b!5773608 m!6718586))

(declare-fun m!6718588 () Bool)

(assert (=> b!5773610 m!6718588))

(declare-fun m!6718590 () Bool)

(assert (=> bm!447174 m!6718590))

(assert (=> bm!446947 d!1818000))

(declare-fun b!5773612 () Bool)

(declare-fun e!3546735 () (InoxSet Context!10346))

(declare-fun e!3546739 () (InoxSet Context!10346))

(assert (=> b!5773612 (= e!3546735 e!3546739)))

(declare-fun c!1021099 () Bool)

(assert (=> b!5773612 (= c!1021099 ((_ is Union!15789) (ite c!1020902 (regTwo!32091 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292)))))))

(declare-fun bm!447175 () Bool)

(declare-fun call!447181 () (InoxSet Context!10346))

(declare-fun call!447184 () (InoxSet Context!10346))

(assert (=> bm!447175 (= call!447181 call!447184)))

(declare-fun b!5773613 () Bool)

(declare-fun e!3546736 () (InoxSet Context!10346))

(declare-fun call!447182 () (InoxSet Context!10346))

(assert (=> b!5773613 (= e!3546736 ((_ map or) call!447182 call!447184))))

(declare-fun bm!447176 () Bool)

(declare-fun call!447185 () (InoxSet Context!10346))

(assert (=> bm!447176 (= call!447184 call!447185)))

(declare-fun b!5773614 () Bool)

(declare-fun e!3546737 () (InoxSet Context!10346))

(assert (=> b!5773614 (= e!3546737 ((as const (Array Context!10346 Bool)) false))))

(declare-fun b!5773615 () Bool)

(declare-fun c!1021100 () Bool)

(declare-fun e!3546738 () Bool)

(assert (=> b!5773615 (= c!1021100 e!3546738)))

(declare-fun res!2436924 () Bool)

(assert (=> b!5773615 (=> (not res!2436924) (not e!3546738))))

(assert (=> b!5773615 (= res!2436924 ((_ is Concat!24634) (ite c!1020902 (regTwo!32091 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292)))))))

(assert (=> b!5773615 (= e!3546739 e!3546736)))

(declare-fun bm!447177 () Bool)

(declare-fun c!1021098 () Bool)

(declare-fun call!447180 () List!63667)

(assert (=> bm!447177 (= call!447185 (derivationStepZipperDown!1131 (ite c!1021099 (regOne!32091 (ite c!1020902 (regTwo!32091 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292)))) (ite c!1021100 (regTwo!32090 (ite c!1020902 (regTwo!32091 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292)))) (ite c!1021098 (regOne!32090 (ite c!1020902 (regTwo!32091 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292)))) (reg!16118 (ite c!1020902 (regTwo!32091 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292))))))) (ite (or c!1021099 c!1021100) lt!2293899 (Context!10347 call!447180)) (h!69990 s!2326)))))

(declare-fun b!5773616 () Bool)

(declare-fun e!3546734 () (InoxSet Context!10346))

(assert (=> b!5773616 (= e!3546734 call!447181)))

(declare-fun call!447183 () List!63667)

(declare-fun bm!447178 () Bool)

(assert (=> bm!447178 (= call!447183 ($colon$colon!1779 (exprs!5673 lt!2293899) (ite (or c!1021100 c!1021098) (regTwo!32090 (ite c!1020902 (regTwo!32091 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292)))) (ite c!1020902 (regTwo!32091 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292))))))))

(declare-fun b!5773617 () Bool)

(assert (=> b!5773617 (= e!3546737 call!447181)))

(declare-fun b!5773618 () Bool)

(assert (=> b!5773618 (= e!3546735 (store ((as const (Array Context!10346 Bool)) false) lt!2293899 true))))

(declare-fun b!5773619 () Bool)

(declare-fun c!1021097 () Bool)

(assert (=> b!5773619 (= c!1021097 ((_ is Star!15789) (ite c!1020902 (regTwo!32091 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292)))))))

(assert (=> b!5773619 (= e!3546734 e!3546737)))

(declare-fun b!5773620 () Bool)

(assert (=> b!5773620 (= e!3546736 e!3546734)))

(assert (=> b!5773620 (= c!1021098 ((_ is Concat!24634) (ite c!1020902 (regTwo!32091 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292)))))))

(declare-fun b!5773621 () Bool)

(assert (=> b!5773621 (= e!3546738 (nullable!5821 (regOne!32090 (ite c!1020902 (regTwo!32091 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292))))))))

(declare-fun bm!447180 () Bool)

(assert (=> bm!447180 (= call!447180 call!447183)))

(declare-fun b!5773622 () Bool)

(assert (=> b!5773622 (= e!3546739 ((_ map or) call!447185 call!447182))))

(declare-fun bm!447179 () Bool)

(assert (=> bm!447179 (= call!447182 (derivationStepZipperDown!1131 (ite c!1021099 (regTwo!32091 (ite c!1020902 (regTwo!32091 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292)))) (regOne!32090 (ite c!1020902 (regTwo!32091 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292))))) (ite c!1021099 lt!2293899 (Context!10347 call!447183)) (h!69990 s!2326)))))

(declare-fun d!1818004 () Bool)

(declare-fun c!1021096 () Bool)

(assert (=> d!1818004 (= c!1021096 (and ((_ is ElementMatch!15789) (ite c!1020902 (regTwo!32091 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292)))) (= (c!1020912 (ite c!1020902 (regTwo!32091 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292)))) (h!69990 s!2326))))))

(assert (=> d!1818004 (= (derivationStepZipperDown!1131 (ite c!1020902 (regTwo!32091 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292))) lt!2293899 (h!69990 s!2326)) e!3546735)))

(assert (= (and d!1818004 c!1021096) b!5773618))

(assert (= (and d!1818004 (not c!1021096)) b!5773612))

(assert (= (and b!5773612 c!1021099) b!5773622))

(assert (= (and b!5773612 (not c!1021099)) b!5773615))

(assert (= (and b!5773615 res!2436924) b!5773621))

(assert (= (and b!5773615 c!1021100) b!5773613))

(assert (= (and b!5773615 (not c!1021100)) b!5773620))

(assert (= (and b!5773620 c!1021098) b!5773616))

(assert (= (and b!5773620 (not c!1021098)) b!5773619))

(assert (= (and b!5773619 c!1021097) b!5773617))

(assert (= (and b!5773619 (not c!1021097)) b!5773614))

(assert (= (or b!5773616 b!5773617) bm!447180))

(assert (= (or b!5773616 b!5773617) bm!447175))

(assert (= (or b!5773613 bm!447180) bm!447178))

(assert (= (or b!5773613 bm!447175) bm!447176))

(assert (= (or b!5773622 b!5773613) bm!447179))

(assert (= (or b!5773622 bm!447176) bm!447177))

(declare-fun m!6718592 () Bool)

(assert (=> bm!447177 m!6718592))

(declare-fun m!6718594 () Bool)

(assert (=> bm!447178 m!6718594))

(assert (=> b!5773618 m!6717724))

(declare-fun m!6718596 () Bool)

(assert (=> b!5773621 m!6718596))

(declare-fun m!6718598 () Bool)

(assert (=> bm!447179 m!6718598))

(assert (=> bm!447001 d!1818004))

(declare-fun d!1818006 () Bool)

(assert (=> d!1818006 (= (isEmpty!35440 (_1!36189 lt!2293843)) ((_ is Nil!63542) (_1!36189 lt!2293843)))))

(assert (=> b!5772956 d!1818006))

(declare-fun d!1818008 () Bool)

(assert (=> d!1818008 (= (matchR!7974 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293831 (ite c!1020908 lt!2293710 (regOne!32090 r!7292))))) s!2326) (matchRSpec!2892 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293831 (ite c!1020908 lt!2293710 (regOne!32090 r!7292))))) s!2326))))

(declare-fun lt!2294010 () Unit!156778)

(assert (=> d!1818008 (= lt!2294010 (choose!43824 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293831 (ite c!1020908 lt!2293710 (regOne!32090 r!7292))))) s!2326))))

(assert (=> d!1818008 (validRegex!7525 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293831 (ite c!1020908 lt!2293710 (regOne!32090 r!7292))))))))

(assert (=> d!1818008 (= (mainMatchTheorem!2892 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293831 (ite c!1020908 lt!2293710 (regOne!32090 r!7292))))) s!2326) lt!2294010)))

(declare-fun bs!1354512 () Bool)

(assert (= bs!1354512 d!1818008))

(declare-fun m!6718600 () Bool)

(assert (=> bs!1354512 m!6718600))

(declare-fun m!6718602 () Bool)

(assert (=> bs!1354512 m!6718602))

(declare-fun m!6718604 () Bool)

(assert (=> bs!1354512 m!6718604))

(declare-fun m!6718606 () Bool)

(assert (=> bs!1354512 m!6718606))

(assert (=> bm!447032 d!1818008))

(declare-fun b!5773623 () Bool)

(declare-fun e!3546740 () Bool)

(assert (=> b!5773623 (= e!3546740 (nullable!5821 (ite c!1020905 lt!2293790 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 lt!2293804))))))))

(declare-fun b!5773624 () Bool)

(declare-fun e!3546743 () Bool)

(assert (=> b!5773624 (= e!3546743 (= (head!12204 (ite c!1020905 (t!377004 s!2326) (ite (or c!1020902 c!1020907 c!1020910) s!2326 (_2!36189 lt!2293851)))) (c!1020912 (ite c!1020905 lt!2293790 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 lt!2293804)))))))))

(declare-fun bm!447181 () Bool)

(declare-fun call!447186 () Bool)

(assert (=> bm!447181 (= call!447186 (isEmpty!35440 (ite c!1020905 (t!377004 s!2326) (ite (or c!1020902 c!1020907 c!1020910) s!2326 (_2!36189 lt!2293851)))))))

(declare-fun b!5773625 () Bool)

(declare-fun e!3546742 () Bool)

(declare-fun e!3546744 () Bool)

(assert (=> b!5773625 (= e!3546742 e!3546744)))

(declare-fun c!1021103 () Bool)

(assert (=> b!5773625 (= c!1021103 ((_ is EmptyLang!15789) (ite c!1020905 lt!2293790 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 lt!2293804))))))))

(declare-fun b!5773626 () Bool)

(declare-fun res!2436925 () Bool)

(assert (=> b!5773626 (=> (not res!2436925) (not e!3546743))))

(assert (=> b!5773626 (= res!2436925 (not call!447186))))

(declare-fun b!5773627 () Bool)

(declare-fun e!3546745 () Bool)

(assert (=> b!5773627 (= e!3546745 (not (= (head!12204 (ite c!1020905 (t!377004 s!2326) (ite (or c!1020902 c!1020907 c!1020910) s!2326 (_2!36189 lt!2293851)))) (c!1020912 (ite c!1020905 lt!2293790 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 lt!2293804))))))))))

(declare-fun b!5773628 () Bool)

(declare-fun res!2436930 () Bool)

(assert (=> b!5773628 (=> (not res!2436930) (not e!3546743))))

(assert (=> b!5773628 (= res!2436930 (isEmpty!35440 (tail!11299 (ite c!1020905 (t!377004 s!2326) (ite (or c!1020902 c!1020907 c!1020910) s!2326 (_2!36189 lt!2293851))))))))

(declare-fun b!5773629 () Bool)

(declare-fun res!2436932 () Bool)

(declare-fun e!3546746 () Bool)

(assert (=> b!5773629 (=> res!2436932 e!3546746)))

(assert (=> b!5773629 (= res!2436932 (not ((_ is ElementMatch!15789) (ite c!1020905 lt!2293790 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 lt!2293804)))))))))

(assert (=> b!5773629 (= e!3546744 e!3546746)))

(declare-fun b!5773630 () Bool)

(declare-fun lt!2294011 () Bool)

(assert (=> b!5773630 (= e!3546742 (= lt!2294011 call!447186))))

(declare-fun b!5773631 () Bool)

(assert (=> b!5773631 (= e!3546740 (matchR!7974 (derivativeStep!4565 (ite c!1020905 lt!2293790 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 lt!2293804)))) (head!12204 (ite c!1020905 (t!377004 s!2326) (ite (or c!1020902 c!1020907 c!1020910) s!2326 (_2!36189 lt!2293851))))) (tail!11299 (ite c!1020905 (t!377004 s!2326) (ite (or c!1020902 c!1020907 c!1020910) s!2326 (_2!36189 lt!2293851))))))))

(declare-fun d!1818010 () Bool)

(assert (=> d!1818010 e!3546742))

(declare-fun c!1021101 () Bool)

(assert (=> d!1818010 (= c!1021101 ((_ is EmptyExpr!15789) (ite c!1020905 lt!2293790 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 lt!2293804))))))))

(assert (=> d!1818010 (= lt!2294011 e!3546740)))

(declare-fun c!1021102 () Bool)

(assert (=> d!1818010 (= c!1021102 (isEmpty!35440 (ite c!1020905 (t!377004 s!2326) (ite (or c!1020902 c!1020907 c!1020910) s!2326 (_2!36189 lt!2293851)))))))

(assert (=> d!1818010 (validRegex!7525 (ite c!1020905 lt!2293790 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 lt!2293804)))))))

(assert (=> d!1818010 (= (matchR!7974 (ite c!1020905 lt!2293790 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 lt!2293804)))) (ite c!1020905 (t!377004 s!2326) (ite (or c!1020902 c!1020907 c!1020910) s!2326 (_2!36189 lt!2293851)))) lt!2294011)))

(declare-fun b!5773632 () Bool)

(assert (=> b!5773632 (= e!3546744 (not lt!2294011))))

(declare-fun b!5773633 () Bool)

(declare-fun e!3546741 () Bool)

(assert (=> b!5773633 (= e!3546741 e!3546745)))

(declare-fun res!2436927 () Bool)

(assert (=> b!5773633 (=> res!2436927 e!3546745)))

(assert (=> b!5773633 (= res!2436927 call!447186)))

(declare-fun b!5773634 () Bool)

(declare-fun res!2436928 () Bool)

(assert (=> b!5773634 (=> res!2436928 e!3546745)))

(assert (=> b!5773634 (= res!2436928 (not (isEmpty!35440 (tail!11299 (ite c!1020905 (t!377004 s!2326) (ite (or c!1020902 c!1020907 c!1020910) s!2326 (_2!36189 lt!2293851)))))))))

(declare-fun b!5773635 () Bool)

(assert (=> b!5773635 (= e!3546746 e!3546741)))

(declare-fun res!2436931 () Bool)

(assert (=> b!5773635 (=> (not res!2436931) (not e!3546741))))

(assert (=> b!5773635 (= res!2436931 (not lt!2294011))))

(declare-fun b!5773636 () Bool)

(declare-fun res!2436929 () Bool)

(assert (=> b!5773636 (=> res!2436929 e!3546746)))

(assert (=> b!5773636 (= res!2436929 e!3546743)))

(declare-fun res!2436926 () Bool)

(assert (=> b!5773636 (=> (not res!2436926) (not e!3546743))))

(assert (=> b!5773636 (= res!2436926 lt!2294011)))

(assert (= (and d!1818010 c!1021102) b!5773623))

(assert (= (and d!1818010 (not c!1021102)) b!5773631))

(assert (= (and d!1818010 c!1021101) b!5773630))

(assert (= (and d!1818010 (not c!1021101)) b!5773625))

(assert (= (and b!5773625 c!1021103) b!5773632))

(assert (= (and b!5773625 (not c!1021103)) b!5773629))

(assert (= (and b!5773629 (not res!2436932)) b!5773636))

(assert (= (and b!5773636 res!2436926) b!5773626))

(assert (= (and b!5773626 res!2436925) b!5773628))

(assert (= (and b!5773628 res!2436930) b!5773624))

(assert (= (and b!5773636 (not res!2436929)) b!5773635))

(assert (= (and b!5773635 res!2436931) b!5773633))

(assert (= (and b!5773633 (not res!2436927)) b!5773634))

(assert (= (and b!5773634 (not res!2436928)) b!5773627))

(assert (= (or b!5773630 b!5773626 b!5773633) bm!447181))

(declare-fun m!6718608 () Bool)

(assert (=> b!5773627 m!6718608))

(declare-fun m!6718610 () Bool)

(assert (=> b!5773623 m!6718610))

(assert (=> b!5773631 m!6718608))

(assert (=> b!5773631 m!6718608))

(declare-fun m!6718612 () Bool)

(assert (=> b!5773631 m!6718612))

(declare-fun m!6718614 () Bool)

(assert (=> b!5773631 m!6718614))

(assert (=> b!5773631 m!6718612))

(assert (=> b!5773631 m!6718614))

(declare-fun m!6718616 () Bool)

(assert (=> b!5773631 m!6718616))

(declare-fun m!6718618 () Bool)

(assert (=> d!1818010 m!6718618))

(declare-fun m!6718620 () Bool)

(assert (=> d!1818010 m!6718620))

(assert (=> b!5773634 m!6718614))

(assert (=> b!5773634 m!6718614))

(declare-fun m!6718622 () Bool)

(assert (=> b!5773634 m!6718622))

(assert (=> b!5773628 m!6718614))

(assert (=> b!5773628 m!6718614))

(assert (=> b!5773628 m!6718622))

(assert (=> bm!447181 m!6718618))

(assert (=> b!5773624 m!6718608))

(assert (=> bm!447062 d!1818010))

(declare-fun b!5773659 () Bool)

(declare-fun lt!2294013 () Unit!156778)

(declare-fun lt!2294014 () Unit!156778)

(assert (=> b!5773659 (= lt!2294013 lt!2294014)))

(assert (=> b!5773659 (= (++!14006 (++!14006 Nil!63542 (Cons!63542 (h!69990 s!2326) Nil!63542)) (t!377004 s!2326)) s!2326)))

(assert (=> b!5773659 (= lt!2294014 (lemmaMoveElementToOtherListKeepsConcatEq!2115 Nil!63542 (h!69990 s!2326) (t!377004 s!2326) s!2326))))

(declare-fun e!3546763 () Option!15798)

(assert (=> b!5773659 (= e!3546763 (findConcatSeparation!2212 (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 lt!2293787))) (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293831 (regTwo!32090 r!7292))) (++!14006 Nil!63542 (Cons!63542 (h!69990 s!2326) Nil!63542)) (t!377004 s!2326) s!2326))))

(declare-fun b!5773660 () Bool)

(declare-fun res!2436939 () Bool)

(declare-fun e!3546760 () Bool)

(assert (=> b!5773660 (=> (not res!2436939) (not e!3546760))))

(declare-fun lt!2294012 () Option!15798)

(assert (=> b!5773660 (= res!2436939 (matchR!7974 (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 lt!2293787))) (_1!36189 (get!21929 lt!2294012))))))

(declare-fun b!5773661 () Bool)

(declare-fun e!3546761 () Option!15798)

(assert (=> b!5773661 (= e!3546761 e!3546763)))

(declare-fun c!1021115 () Bool)

(assert (=> b!5773661 (= c!1021115 ((_ is Nil!63542) s!2326))))

(declare-fun b!5773663 () Bool)

(assert (=> b!5773663 (= e!3546760 (= (++!14006 (_1!36189 (get!21929 lt!2294012)) (_2!36189 (get!21929 lt!2294012))) s!2326))))

(declare-fun b!5773664 () Bool)

(declare-fun e!3546759 () Bool)

(assert (=> b!5773664 (= e!3546759 (not (isDefined!12501 lt!2294012)))))

(declare-fun e!3546762 () Bool)

(declare-fun b!5773665 () Bool)

(assert (=> b!5773665 (= e!3546762 (matchR!7974 (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293831 (regTwo!32090 r!7292))) s!2326))))

(declare-fun b!5773666 () Bool)

(assert (=> b!5773666 (= e!3546763 None!15797)))

(declare-fun b!5773667 () Bool)

(assert (=> b!5773667 (= e!3546761 (Some!15797 (tuple2!65773 Nil!63542 s!2326)))))

(declare-fun b!5773662 () Bool)

(declare-fun res!2436935 () Bool)

(assert (=> b!5773662 (=> (not res!2436935) (not e!3546760))))

(assert (=> b!5773662 (= res!2436935 (matchR!7974 (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293831 (regTwo!32090 r!7292))) (_2!36189 (get!21929 lt!2294012))))))

(declare-fun d!1818012 () Bool)

(assert (=> d!1818012 e!3546759))

(declare-fun res!2436938 () Bool)

(assert (=> d!1818012 (=> res!2436938 e!3546759)))

(assert (=> d!1818012 (= res!2436938 e!3546760)))

(declare-fun res!2436936 () Bool)

(assert (=> d!1818012 (=> (not res!2436936) (not e!3546760))))

(assert (=> d!1818012 (= res!2436936 (isDefined!12501 lt!2294012))))

(assert (=> d!1818012 (= lt!2294012 e!3546761)))

(declare-fun c!1021114 () Bool)

(assert (=> d!1818012 (= c!1021114 e!3546762)))

(declare-fun res!2436937 () Bool)

(assert (=> d!1818012 (=> (not res!2436937) (not e!3546762))))

(assert (=> d!1818012 (= res!2436937 (matchR!7974 (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 lt!2293787))) Nil!63542))))

(assert (=> d!1818012 (validRegex!7525 (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 lt!2293787))))))

(assert (=> d!1818012 (= (findConcatSeparation!2212 (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 lt!2293787))) (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293831 (regTwo!32090 r!7292))) Nil!63542 s!2326 s!2326) lt!2294012)))

(assert (= (and d!1818012 res!2436937) b!5773665))

(assert (= (and d!1818012 c!1021114) b!5773667))

(assert (= (and d!1818012 (not c!1021114)) b!5773661))

(assert (= (and b!5773661 c!1021115) b!5773666))

(assert (= (and b!5773661 (not c!1021115)) b!5773659))

(assert (= (and d!1818012 res!2436936) b!5773660))

(assert (= (and b!5773660 res!2436939) b!5773662))

(assert (= (and b!5773662 res!2436935) b!5773663))

(assert (= (and d!1818012 (not res!2436938)) b!5773664))

(assert (=> b!5773659 m!6718510))

(assert (=> b!5773659 m!6718510))

(assert (=> b!5773659 m!6718512))

(assert (=> b!5773659 m!6718516))

(assert (=> b!5773659 m!6718510))

(declare-fun m!6718624 () Bool)

(assert (=> b!5773659 m!6718624))

(declare-fun m!6718626 () Bool)

(assert (=> b!5773664 m!6718626))

(assert (=> d!1818012 m!6718626))

(declare-fun m!6718628 () Bool)

(assert (=> d!1818012 m!6718628))

(declare-fun m!6718630 () Bool)

(assert (=> d!1818012 m!6718630))

(declare-fun m!6718632 () Bool)

(assert (=> b!5773665 m!6718632))

(declare-fun m!6718634 () Bool)

(assert (=> b!5773660 m!6718634))

(declare-fun m!6718636 () Bool)

(assert (=> b!5773660 m!6718636))

(assert (=> b!5773662 m!6718634))

(declare-fun m!6718638 () Bool)

(assert (=> b!5773662 m!6718638))

(assert (=> b!5773663 m!6718634))

(declare-fun m!6718640 () Bool)

(assert (=> b!5773663 m!6718640))

(assert (=> bm!447029 d!1818012))

(declare-fun d!1818014 () Bool)

(assert (=> d!1818014 (= (matchR!7974 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293835 (ite c!1020908 (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293736 lt!2293701)) (regTwo!32090 r!7292)))) (ite (or c!1020902 c!1020907) s!2326 (ite c!1020908 (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 s!2326 Nil!63542)) s!2326))) (matchRSpec!2892 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293835 (ite c!1020908 (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293736 lt!2293701)) (regTwo!32090 r!7292)))) (ite (or c!1020902 c!1020907) s!2326 (ite c!1020908 (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 s!2326 Nil!63542)) s!2326))))))

(declare-fun lt!2294015 () Unit!156778)

(assert (=> d!1818014 (= lt!2294015 (choose!43824 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293835 (ite c!1020908 (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293736 lt!2293701)) (regTwo!32090 r!7292)))) (ite (or c!1020902 c!1020907) s!2326 (ite c!1020908 (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 s!2326 Nil!63542)) s!2326))))))

(assert (=> d!1818014 (validRegex!7525 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293835 (ite c!1020908 (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293736 lt!2293701)) (regTwo!32090 r!7292)))))))

(assert (=> d!1818014 (= (mainMatchTheorem!2892 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293835 (ite c!1020908 (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293736 lt!2293701)) (regTwo!32090 r!7292)))) (ite (or c!1020902 c!1020907) s!2326 (ite c!1020908 (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 s!2326 Nil!63542)) s!2326))) lt!2294015)))

(declare-fun bs!1354513 () Bool)

(assert (= bs!1354513 d!1818014))

(declare-fun m!6718642 () Bool)

(assert (=> bs!1354513 m!6718642))

(declare-fun m!6718644 () Bool)

(assert (=> bs!1354513 m!6718644))

(declare-fun m!6718646 () Bool)

(assert (=> bs!1354513 m!6718646))

(declare-fun m!6718648 () Bool)

(assert (=> bs!1354513 m!6718648))

(assert (=> bm!446955 d!1818014))

(declare-fun d!1818016 () Bool)

(declare-fun e!3546764 () Bool)

(assert (=> d!1818016 e!3546764))

(declare-fun res!2436940 () Bool)

(assert (=> d!1818016 (=> (not res!2436940) (not e!3546764))))

(declare-fun lt!2294016 () List!63666)

(assert (=> d!1818016 (= res!2436940 (= (content!11606 lt!2294016) ((_ map or) (content!11606 (ite c!1020903 (_2!36189 lt!2293864) (_1!36189 lt!2293729))) (content!11606 (ite c!1020903 (_2!36189 lt!2293843) lt!2293853)))))))

(declare-fun e!3546765 () List!63666)

(assert (=> d!1818016 (= lt!2294016 e!3546765)))

(declare-fun c!1021116 () Bool)

(assert (=> d!1818016 (= c!1021116 ((_ is Nil!63542) (ite c!1020903 (_2!36189 lt!2293864) (_1!36189 lt!2293729))))))

(assert (=> d!1818016 (= (++!14006 (ite c!1020903 (_2!36189 lt!2293864) (_1!36189 lt!2293729)) (ite c!1020903 (_2!36189 lt!2293843) lt!2293853)) lt!2294016)))

(declare-fun b!5773671 () Bool)

(assert (=> b!5773671 (= e!3546764 (or (not (= (ite c!1020903 (_2!36189 lt!2293843) lt!2293853) Nil!63542)) (= lt!2294016 (ite c!1020903 (_2!36189 lt!2293864) (_1!36189 lt!2293729)))))))

(declare-fun b!5773670 () Bool)

(declare-fun res!2436941 () Bool)

(assert (=> b!5773670 (=> (not res!2436941) (not e!3546764))))

(assert (=> b!5773670 (= res!2436941 (= (size!40082 lt!2294016) (+ (size!40082 (ite c!1020903 (_2!36189 lt!2293864) (_1!36189 lt!2293729))) (size!40082 (ite c!1020903 (_2!36189 lt!2293843) lt!2293853)))))))

(declare-fun b!5773668 () Bool)

(assert (=> b!5773668 (= e!3546765 (ite c!1020903 (_2!36189 lt!2293843) lt!2293853))))

(declare-fun b!5773669 () Bool)

(assert (=> b!5773669 (= e!3546765 (Cons!63542 (h!69990 (ite c!1020903 (_2!36189 lt!2293864) (_1!36189 lt!2293729))) (++!14006 (t!377004 (ite c!1020903 (_2!36189 lt!2293864) (_1!36189 lt!2293729))) (ite c!1020903 (_2!36189 lt!2293843) lt!2293853))))))

(assert (= (and d!1818016 c!1021116) b!5773668))

(assert (= (and d!1818016 (not c!1021116)) b!5773669))

(assert (= (and d!1818016 res!2436940) b!5773670))

(assert (= (and b!5773670 res!2436941) b!5773671))

(declare-fun m!6718650 () Bool)

(assert (=> d!1818016 m!6718650))

(declare-fun m!6718652 () Bool)

(assert (=> d!1818016 m!6718652))

(declare-fun m!6718654 () Bool)

(assert (=> d!1818016 m!6718654))

(declare-fun m!6718656 () Bool)

(assert (=> b!5773670 m!6718656))

(declare-fun m!6718658 () Bool)

(assert (=> b!5773670 m!6718658))

(declare-fun m!6718660 () Bool)

(assert (=> b!5773670 m!6718660))

(declare-fun m!6718662 () Bool)

(assert (=> b!5773669 m!6718662))

(assert (=> bm!446938 d!1818016))

(declare-fun d!1818018 () Bool)

(assert (=> d!1818018 (= (matchR!7974 (ite c!1020902 lt!2293730 (ite c!1020910 lt!2293896 lt!2293787)) (ite (or c!1020902 c!1020910) s!2326 (_1!36189 lt!2293718))) (matchRSpec!2892 (ite c!1020902 lt!2293730 (ite c!1020910 lt!2293896 lt!2293787)) (ite (or c!1020902 c!1020910) s!2326 (_1!36189 lt!2293718))))))

(declare-fun lt!2294017 () Unit!156778)

(assert (=> d!1818018 (= lt!2294017 (choose!43824 (ite c!1020902 lt!2293730 (ite c!1020910 lt!2293896 lt!2293787)) (ite (or c!1020902 c!1020910) s!2326 (_1!36189 lt!2293718))))))

(assert (=> d!1818018 (validRegex!7525 (ite c!1020902 lt!2293730 (ite c!1020910 lt!2293896 lt!2293787)))))

(assert (=> d!1818018 (= (mainMatchTheorem!2892 (ite c!1020902 lt!2293730 (ite c!1020910 lt!2293896 lt!2293787)) (ite (or c!1020902 c!1020910) s!2326 (_1!36189 lt!2293718))) lt!2294017)))

(declare-fun bs!1354514 () Bool)

(assert (= bs!1354514 d!1818018))

(declare-fun m!6718664 () Bool)

(assert (=> bs!1354514 m!6718664))

(declare-fun m!6718666 () Bool)

(assert (=> bs!1354514 m!6718666))

(declare-fun m!6718668 () Bool)

(assert (=> bs!1354514 m!6718668))

(declare-fun m!6718670 () Bool)

(assert (=> bs!1354514 m!6718670))

(assert (=> bm!447012 d!1818018))

(declare-fun d!1818020 () Bool)

(assert (=> d!1818020 (= (flatMap!1402 (ite c!1020902 lt!2293774 lt!2293763) (ite c!1020902 lambda!314343 lambda!314343)) (choose!43819 (ite c!1020902 lt!2293774 lt!2293763) (ite c!1020902 lambda!314343 lambda!314343)))))

(declare-fun bs!1354515 () Bool)

(assert (= bs!1354515 d!1818020))

(declare-fun m!6718672 () Bool)

(assert (=> bs!1354515 m!6718672))

(assert (=> bm!447092 d!1818020))

(declare-fun bs!1354516 () Bool)

(declare-fun d!1818022 () Bool)

(assert (= bs!1354516 (and d!1818022 d!1817836)))

(declare-fun lambda!314425 () Int)

(assert (=> bs!1354516 (= lambda!314425 lambda!314370)))

(declare-fun bs!1354517 () Bool)

(assert (= bs!1354517 (and d!1818022 b!5772936)))

(assert (=> bs!1354517 (= lambda!314425 lambda!314359)))

(declare-fun bs!1354518 () Bool)

(assert (= bs!1354518 (and d!1818022 b!5772969)))

(assert (=> bs!1354518 (= lambda!314425 lambda!314357)))

(declare-fun bs!1354519 () Bool)

(assert (= bs!1354519 (and d!1818022 d!1817906)))

(assert (=> bs!1354519 (= lambda!314425 lambda!314393)))

(declare-fun bs!1354520 () Bool)

(assert (= bs!1354520 (and d!1818022 d!1817966)))

(assert (=> bs!1354520 (= lambda!314425 lambda!314416)))

(declare-fun bs!1354521 () Bool)

(assert (= bs!1354521 (and d!1818022 d!1817920)))

(assert (=> bs!1354521 (= lambda!314425 lambda!314397)))

(declare-fun bs!1354522 () Bool)

(assert (= bs!1354522 (and d!1818022 d!1817918)))

(assert (=> bs!1354522 (= lambda!314425 lambda!314394)))

(declare-fun bs!1354523 () Bool)

(assert (= bs!1354523 (and d!1818022 d!1817900)))

(assert (=> bs!1354523 (= lambda!314425 lambda!314390)))

(assert (=> d!1818022 (= (inv!82719 setElem!38799) (forall!14902 (exprs!5673 setElem!38799) lambda!314425))))

(declare-fun bs!1354524 () Bool)

(assert (= bs!1354524 d!1818022))

(declare-fun m!6718674 () Bool)

(assert (=> bs!1354524 m!6718674))

(assert (=> setNonEmpty!38799 d!1818022))

(declare-fun bs!1354525 () Bool)

(declare-fun d!1818024 () Bool)

(assert (= bs!1354525 (and d!1818024 b!5772936)))

(declare-fun lambda!314426 () Int)

(assert (=> bs!1354525 (not (= lambda!314426 lambda!314364))))

(declare-fun bs!1354526 () Bool)

(assert (= bs!1354526 (and d!1818024 b!5772932)))

(assert (=> bs!1354526 (not (= lambda!314426 lambda!314342))))

(assert (=> bs!1354525 (= (and (= (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718))) s!2326) (= (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))) lt!2293787) (= (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293738 lt!2293701)) (regTwo!32090 r!7292))) (= lambda!314426 lambda!314360))))

(declare-fun bs!1354527 () Bool)

(assert (= bs!1354527 (and d!1818024 b!5772964)))

(assert (=> bs!1354527 (= (and (= (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718))) s!2326) (= (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))) (regTwo!32090 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293738 lt!2293701)) lt!2293738)) (= lambda!314426 lambda!314350))))

(declare-fun bs!1354528 () Bool)

(assert (= bs!1354528 (and d!1818024 b!5773263)))

(assert (=> bs!1354528 (not (= lambda!314426 lambda!314380))))

(declare-fun bs!1354529 () Bool)

(assert (= bs!1354529 (and d!1818024 b!5772950)))

(assert (=> bs!1354529 (not (= lambda!314426 lambda!314367))))

(declare-fun bs!1354530 () Bool)

(assert (= bs!1354530 (and d!1818024 b!5773505)))

(assert (=> bs!1354530 (not (= lambda!314426 lambda!314413))))

(assert (=> bs!1354525 (not (= lambda!314426 lambda!314361))))

(assert (=> bs!1354525 (= (and (= (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718))) (_1!36189 lt!2293718)) (= (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))) (reg!16118 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293738 lt!2293701)) lt!2293701)) (= lambda!314426 lambda!314362))))

(assert (=> bs!1354527 (not (= lambda!314426 lambda!314351))))

(declare-fun bs!1354531 () Bool)

(assert (= bs!1354531 (and d!1818024 b!5773497)))

(assert (=> bs!1354531 (not (= lambda!314426 lambda!314415))))

(declare-fun bs!1354532 () Bool)

(assert (= bs!1354532 (and d!1818024 b!5772969)))

(assert (=> bs!1354532 (= (and (= (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718))) (_1!36189 lt!2293843)) (= (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))) (reg!16118 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293738 lt!2293701)) lt!2293701)) (= lambda!314426 lambda!314354))))

(declare-fun bs!1354533 () Bool)

(assert (= bs!1354533 (and d!1818024 b!5773270)))

(assert (=> bs!1354533 (not (= lambda!314426 lambda!314386))))

(assert (=> bs!1354532 (not (= lambda!314426 lambda!314355))))

(assert (=> bs!1354532 (not (= lambda!314426 lambda!314356))))

(declare-fun bs!1354534 () Bool)

(assert (= bs!1354534 (and d!1818024 b!5772937)))

(assert (=> bs!1354534 (= (and (= (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718))) s!2326) (= (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))) (regOne!32090 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293738 lt!2293701)) lt!2293835)) (= lambda!314426 lambda!314344))))

(declare-fun bs!1354535 () Bool)

(assert (= bs!1354535 (and d!1818024 b!5773278)))

(assert (=> bs!1354535 (not (= lambda!314426 lambda!314384))))

(assert (=> bs!1354527 (not (= lambda!314426 lambda!314349))))

(assert (=> bs!1354534 (= (and (= (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718))) s!2326) (= (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))) (regTwo!32090 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293738 lt!2293701)) lt!2293776)) (= lambda!314426 lambda!314346))))

(declare-fun bs!1354536 () Bool)

(assert (= bs!1354536 (and d!1818024 b!5773255)))

(assert (=> bs!1354536 (not (= lambda!314426 lambda!314383))))

(assert (=> bs!1354529 (= (and (= (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718))) Nil!63542) (= (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))) (reg!16118 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293738 lt!2293701)) lt!2293701)) (= lambda!314426 lambda!314365))))

(assert (=> bs!1354534 (not (= lambda!314426 lambda!314345))))

(declare-fun bs!1354537 () Bool)

(assert (= bs!1354537 (and d!1818024 b!5772956)))

(assert (=> bs!1354537 (not (= lambda!314426 lambda!314353))))

(assert (=> bs!1354529 (not (= lambda!314426 lambda!314366))))

(assert (=> bs!1354525 (not (= lambda!314426 lambda!314363))))

(assert (=> bs!1354527 (= (and (= (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718))) s!2326) (= (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))) (regOne!32090 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293738 lt!2293701)) lt!2293831)) (= lambda!314426 lambda!314348))))

(declare-fun bs!1354538 () Bool)

(assert (= bs!1354538 (and d!1818024 d!1817950)))

(assert (=> bs!1354538 (not (= lambda!314426 lambda!314411))))

(assert (=> bs!1354534 (not (= lambda!314426 lambda!314347))))

(assert (=> bs!1354526 (= (and (= (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718))) s!2326) (= (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))) (regOne!32090 r!7292)) (= (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293738 lt!2293701)) (regTwo!32090 r!7292))) (= lambda!314426 lambda!314341))))

(assert (=> bs!1354538 (= (and (= (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718))) (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542)) (= (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))) (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292))))))) (= (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293738 lt!2293701)) (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293831 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))))) (= lambda!314426 lambda!314409))))

(assert (=> bs!1354537 (= (and (= (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718))) s!2326) (= (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))) lt!2293701) (= (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293738 lt!2293701)) (regTwo!32090 r!7292))) (= lambda!314426 lambda!314352))))

(assert (=> d!1818024 true))

(assert (=> d!1818024 true))

(assert (=> d!1818024 true))

(declare-fun lambda!314427 () Int)

(assert (=> bs!1354525 (not (= lambda!314427 lambda!314364))))

(assert (=> bs!1354526 (= (and (= (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718))) s!2326) (= (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))) (regOne!32090 r!7292)) (= (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293738 lt!2293701)) (regTwo!32090 r!7292))) (= lambda!314427 lambda!314342))))

(assert (=> bs!1354525 (not (= lambda!314427 lambda!314360))))

(assert (=> bs!1354527 (not (= lambda!314427 lambda!314350))))

(assert (=> bs!1354528 (not (= lambda!314427 lambda!314380))))

(assert (=> bs!1354529 (not (= lambda!314427 lambda!314367))))

(assert (=> bs!1354530 (not (= lambda!314427 lambda!314413))))

(assert (=> bs!1354525 (= (and (= (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718))) s!2326) (= (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))) lt!2293787) (= (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293738 lt!2293701)) (regTwo!32090 r!7292))) (= lambda!314427 lambda!314361))))

(assert (=> bs!1354525 (not (= lambda!314427 lambda!314362))))

(assert (=> bs!1354527 (= (and (= (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718))) s!2326) (= (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))) (regTwo!32090 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293738 lt!2293701)) lt!2293738)) (= lambda!314427 lambda!314351))))

(assert (=> bs!1354531 (= (and (= (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718))) (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020900 (_1!36189 lt!2293718) Nil!63542) s!2326))) (= (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))) (regOne!32090 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292))))))) (= (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293738 lt!2293701)) (regTwo!32090 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))))) (= lambda!314427 lambda!314415))))

(assert (=> bs!1354532 (not (= lambda!314427 lambda!314354))))

(assert (=> bs!1354533 (= (and (= (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718))) (ite c!1020902 s!2326 (ite c!1020903 (_1!36189 lt!2293843) s!2326))) (= (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))) (regOne!32090 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736)))) (= (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293738 lt!2293701)) (regTwo!32090 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736))))) (= lambda!314427 lambda!314386))))

(assert (=> bs!1354532 (not (= lambda!314427 lambda!314355))))

(assert (=> bs!1354532 (= (and (= (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718))) (_1!36189 lt!2293843)) (= (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))) (reg!16118 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293738 lt!2293701)) lt!2293701)) (= lambda!314427 lambda!314356))))

(assert (=> bs!1354534 (not (= lambda!314427 lambda!314344))))

(assert (=> bs!1354535 (not (= lambda!314427 lambda!314384))))

(assert (=> bs!1354527 (= (and (= (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718))) s!2326) (= (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))) (regOne!32090 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293738 lt!2293701)) lt!2293831)) (= lambda!314427 lambda!314349))))

(assert (=> bs!1354534 (not (= lambda!314427 lambda!314346))))

(assert (=> bs!1354536 (= (and (= (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718))) s!2326) (= (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))) (regOne!32090 lt!2293730)) (= (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293738 lt!2293701)) (regTwo!32090 lt!2293730))) (= lambda!314427 lambda!314383))))

(assert (=> bs!1354529 (not (= lambda!314427 lambda!314365))))

(assert (=> bs!1354534 (= (and (= (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718))) s!2326) (= (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))) (regOne!32090 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293738 lt!2293701)) lt!2293835)) (= lambda!314427 lambda!314345))))

(assert (=> bs!1354537 (= (and (= (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718))) s!2326) (= (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))) lt!2293701) (= (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293738 lt!2293701)) (regTwo!32090 r!7292))) (= lambda!314427 lambda!314353))))

(assert (=> bs!1354529 (= (and (= (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718))) Nil!63542) (= (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))) (reg!16118 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293738 lt!2293701)) lt!2293701)) (= lambda!314427 lambda!314366))))

(assert (=> bs!1354525 (= (and (= (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718))) (_1!36189 lt!2293718)) (= (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))) (reg!16118 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293738 lt!2293701)) lt!2293701)) (= lambda!314427 lambda!314363))))

(assert (=> bs!1354527 (not (= lambda!314427 lambda!314348))))

(declare-fun bs!1354540 () Bool)

(assert (= bs!1354540 d!1818024))

(assert (=> bs!1354540 (not (= lambda!314427 lambda!314426))))

(assert (=> bs!1354538 (= (and (= (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718))) (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542)) (= (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))) (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292))))))) (= (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293738 lt!2293701)) (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293831 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))))) (= lambda!314427 lambda!314411))))

(assert (=> bs!1354534 (= (and (= (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718))) s!2326) (= (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))) (regTwo!32090 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293738 lt!2293701)) lt!2293776)) (= lambda!314427 lambda!314347))))

(assert (=> bs!1354526 (not (= lambda!314427 lambda!314341))))

(assert (=> bs!1354538 (not (= lambda!314427 lambda!314409))))

(assert (=> bs!1354537 (not (= lambda!314427 lambda!314352))))

(assert (=> d!1818024 true))

(assert (=> d!1818024 true))

(assert (=> d!1818024 true))

(assert (=> d!1818024 (= (Exists!2889 lambda!314426) (Exists!2889 lambda!314427))))

(declare-fun lt!2294018 () Unit!156778)

(assert (=> d!1818024 (= lt!2294018 (choose!43832 (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))) (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293738 lt!2293701)) (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718)))))))

(assert (=> d!1818024 (validRegex!7525 (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))))))

(assert (=> d!1818024 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1518 (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))) (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293738 lt!2293701)) (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718)))) lt!2294018)))

(declare-fun m!6718694 () Bool)

(assert (=> bs!1354540 m!6718694))

(declare-fun m!6718696 () Bool)

(assert (=> bs!1354540 m!6718696))

(declare-fun m!6718698 () Bool)

(assert (=> bs!1354540 m!6718698))

(assert (=> bs!1354540 m!6718316))

(assert (=> bm!446957 d!1818024))

(declare-fun b!5773683 () Bool)

(declare-fun e!3546772 () Bool)

(assert (=> b!5773683 (= e!3546772 (nullable!5821 (ite c!1020910 (Concat!24634 (regOne!32090 (regOne!32090 r!7292)) (Concat!24634 (regTwo!32090 (regOne!32090 r!7292)) lt!2293738)) (ite c!1020908 (ite c!1020903 lt!2293710 lt!2293804) (regOne!32090 r!7292)))))))

(declare-fun e!3546775 () Bool)

(declare-fun b!5773684 () Bool)

(assert (=> b!5773684 (= e!3546775 (= (head!12204 (ite c!1020910 s!2326 (ite c!1020908 (ite c!1020903 lt!2293825 (ite c!1020900 lt!2293740 call!447000)) s!2326))) (c!1020912 (ite c!1020910 (Concat!24634 (regOne!32090 (regOne!32090 r!7292)) (Concat!24634 (regTwo!32090 (regOne!32090 r!7292)) lt!2293738)) (ite c!1020908 (ite c!1020903 lt!2293710 lt!2293804) (regOne!32090 r!7292))))))))

(declare-fun bm!447200 () Bool)

(declare-fun call!447205 () Bool)

(assert (=> bm!447200 (= call!447205 (isEmpty!35440 (ite c!1020910 s!2326 (ite c!1020908 (ite c!1020903 lt!2293825 (ite c!1020900 lt!2293740 call!447000)) s!2326))))))

(declare-fun b!5773685 () Bool)

(declare-fun e!3546774 () Bool)

(declare-fun e!3546776 () Bool)

(assert (=> b!5773685 (= e!3546774 e!3546776)))

(declare-fun c!1021124 () Bool)

(assert (=> b!5773685 (= c!1021124 ((_ is EmptyLang!15789) (ite c!1020910 (Concat!24634 (regOne!32090 (regOne!32090 r!7292)) (Concat!24634 (regTwo!32090 (regOne!32090 r!7292)) lt!2293738)) (ite c!1020908 (ite c!1020903 lt!2293710 lt!2293804) (regOne!32090 r!7292)))))))

(declare-fun b!5773686 () Bool)

(declare-fun res!2436943 () Bool)

(assert (=> b!5773686 (=> (not res!2436943) (not e!3546775))))

(assert (=> b!5773686 (= res!2436943 (not call!447205))))

(declare-fun b!5773687 () Bool)

(declare-fun e!3546777 () Bool)

(assert (=> b!5773687 (= e!3546777 (not (= (head!12204 (ite c!1020910 s!2326 (ite c!1020908 (ite c!1020903 lt!2293825 (ite c!1020900 lt!2293740 call!447000)) s!2326))) (c!1020912 (ite c!1020910 (Concat!24634 (regOne!32090 (regOne!32090 r!7292)) (Concat!24634 (regTwo!32090 (regOne!32090 r!7292)) lt!2293738)) (ite c!1020908 (ite c!1020903 lt!2293710 lt!2293804) (regOne!32090 r!7292)))))))))

(declare-fun b!5773688 () Bool)

(declare-fun res!2436948 () Bool)

(assert (=> b!5773688 (=> (not res!2436948) (not e!3546775))))

(assert (=> b!5773688 (= res!2436948 (isEmpty!35440 (tail!11299 (ite c!1020910 s!2326 (ite c!1020908 (ite c!1020903 lt!2293825 (ite c!1020900 lt!2293740 call!447000)) s!2326)))))))

(declare-fun b!5773689 () Bool)

(declare-fun res!2436950 () Bool)

(declare-fun e!3546778 () Bool)

(assert (=> b!5773689 (=> res!2436950 e!3546778)))

(assert (=> b!5773689 (= res!2436950 (not ((_ is ElementMatch!15789) (ite c!1020910 (Concat!24634 (regOne!32090 (regOne!32090 r!7292)) (Concat!24634 (regTwo!32090 (regOne!32090 r!7292)) lt!2293738)) (ite c!1020908 (ite c!1020903 lt!2293710 lt!2293804) (regOne!32090 r!7292))))))))

(assert (=> b!5773689 (= e!3546776 e!3546778)))

(declare-fun b!5773690 () Bool)

(declare-fun lt!2294025 () Bool)

(assert (=> b!5773690 (= e!3546774 (= lt!2294025 call!447205))))

(declare-fun b!5773691 () Bool)

(assert (=> b!5773691 (= e!3546772 (matchR!7974 (derivativeStep!4565 (ite c!1020910 (Concat!24634 (regOne!32090 (regOne!32090 r!7292)) (Concat!24634 (regTwo!32090 (regOne!32090 r!7292)) lt!2293738)) (ite c!1020908 (ite c!1020903 lt!2293710 lt!2293804) (regOne!32090 r!7292))) (head!12204 (ite c!1020910 s!2326 (ite c!1020908 (ite c!1020903 lt!2293825 (ite c!1020900 lt!2293740 call!447000)) s!2326)))) (tail!11299 (ite c!1020910 s!2326 (ite c!1020908 (ite c!1020903 lt!2293825 (ite c!1020900 lt!2293740 call!447000)) s!2326)))))))

(declare-fun d!1818032 () Bool)

(assert (=> d!1818032 e!3546774))

(declare-fun c!1021122 () Bool)

(assert (=> d!1818032 (= c!1021122 ((_ is EmptyExpr!15789) (ite c!1020910 (Concat!24634 (regOne!32090 (regOne!32090 r!7292)) (Concat!24634 (regTwo!32090 (regOne!32090 r!7292)) lt!2293738)) (ite c!1020908 (ite c!1020903 lt!2293710 lt!2293804) (regOne!32090 r!7292)))))))

(assert (=> d!1818032 (= lt!2294025 e!3546772)))

(declare-fun c!1021123 () Bool)

(assert (=> d!1818032 (= c!1021123 (isEmpty!35440 (ite c!1020910 s!2326 (ite c!1020908 (ite c!1020903 lt!2293825 (ite c!1020900 lt!2293740 call!447000)) s!2326))))))

(assert (=> d!1818032 (validRegex!7525 (ite c!1020910 (Concat!24634 (regOne!32090 (regOne!32090 r!7292)) (Concat!24634 (regTwo!32090 (regOne!32090 r!7292)) lt!2293738)) (ite c!1020908 (ite c!1020903 lt!2293710 lt!2293804) (regOne!32090 r!7292))))))

(assert (=> d!1818032 (= (matchR!7974 (ite c!1020910 (Concat!24634 (regOne!32090 (regOne!32090 r!7292)) (Concat!24634 (regTwo!32090 (regOne!32090 r!7292)) lt!2293738)) (ite c!1020908 (ite c!1020903 lt!2293710 lt!2293804) (regOne!32090 r!7292))) (ite c!1020910 s!2326 (ite c!1020908 (ite c!1020903 lt!2293825 (ite c!1020900 lt!2293740 call!447000)) s!2326))) lt!2294025)))

(declare-fun b!5773692 () Bool)

(assert (=> b!5773692 (= e!3546776 (not lt!2294025))))

(declare-fun b!5773693 () Bool)

(declare-fun e!3546773 () Bool)

(assert (=> b!5773693 (= e!3546773 e!3546777)))

(declare-fun res!2436945 () Bool)

(assert (=> b!5773693 (=> res!2436945 e!3546777)))

(assert (=> b!5773693 (= res!2436945 call!447205)))

(declare-fun b!5773694 () Bool)

(declare-fun res!2436946 () Bool)

(assert (=> b!5773694 (=> res!2436946 e!3546777)))

(assert (=> b!5773694 (= res!2436946 (not (isEmpty!35440 (tail!11299 (ite c!1020910 s!2326 (ite c!1020908 (ite c!1020903 lt!2293825 (ite c!1020900 lt!2293740 call!447000)) s!2326))))))))

(declare-fun b!5773695 () Bool)

(assert (=> b!5773695 (= e!3546778 e!3546773)))

(declare-fun res!2436949 () Bool)

(assert (=> b!5773695 (=> (not res!2436949) (not e!3546773))))

(assert (=> b!5773695 (= res!2436949 (not lt!2294025))))

(declare-fun b!5773696 () Bool)

(declare-fun res!2436947 () Bool)

(assert (=> b!5773696 (=> res!2436947 e!3546778)))

(assert (=> b!5773696 (= res!2436947 e!3546775)))

(declare-fun res!2436944 () Bool)

(assert (=> b!5773696 (=> (not res!2436944) (not e!3546775))))

(assert (=> b!5773696 (= res!2436944 lt!2294025)))

(assert (= (and d!1818032 c!1021123) b!5773683))

(assert (= (and d!1818032 (not c!1021123)) b!5773691))

(assert (= (and d!1818032 c!1021122) b!5773690))

(assert (= (and d!1818032 (not c!1021122)) b!5773685))

(assert (= (and b!5773685 c!1021124) b!5773692))

(assert (= (and b!5773685 (not c!1021124)) b!5773689))

(assert (= (and b!5773689 (not res!2436950)) b!5773696))

(assert (= (and b!5773696 res!2436944) b!5773686))

(assert (= (and b!5773686 res!2436943) b!5773688))

(assert (= (and b!5773688 res!2436948) b!5773684))

(assert (= (and b!5773696 (not res!2436947)) b!5773695))

(assert (= (and b!5773695 res!2436949) b!5773693))

(assert (= (and b!5773693 (not res!2436945)) b!5773694))

(assert (= (and b!5773694 (not res!2436946)) b!5773687))

(assert (= (or b!5773690 b!5773686 b!5773693) bm!447200))

(declare-fun m!6718712 () Bool)

(assert (=> b!5773687 m!6718712))

(declare-fun m!6718714 () Bool)

(assert (=> b!5773683 m!6718714))

(assert (=> b!5773691 m!6718712))

(assert (=> b!5773691 m!6718712))

(declare-fun m!6718716 () Bool)

(assert (=> b!5773691 m!6718716))

(declare-fun m!6718718 () Bool)

(assert (=> b!5773691 m!6718718))

(assert (=> b!5773691 m!6718716))

(assert (=> b!5773691 m!6718718))

(declare-fun m!6718720 () Bool)

(assert (=> b!5773691 m!6718720))

(declare-fun m!6718722 () Bool)

(assert (=> d!1818032 m!6718722))

(declare-fun m!6718724 () Bool)

(assert (=> d!1818032 m!6718724))

(assert (=> b!5773694 m!6718718))

(assert (=> b!5773694 m!6718718))

(declare-fun m!6718726 () Bool)

(assert (=> b!5773694 m!6718726))

(assert (=> b!5773688 m!6718718))

(assert (=> b!5773688 m!6718718))

(assert (=> b!5773688 m!6718726))

(assert (=> bm!447200 m!6718722))

(assert (=> b!5773684 m!6718712))

(assert (=> bm!447039 d!1818032))

(declare-fun b!5773697 () Bool)

(declare-fun e!3546780 () (InoxSet Context!10346))

(declare-fun e!3546784 () (InoxSet Context!10346))

(assert (=> b!5773697 (= e!3546780 e!3546784)))

(declare-fun c!1021128 () Bool)

(assert (=> b!5773697 (= c!1021128 ((_ is Union!15789) (ite c!1020902 (regOne!32091 (regOne!32090 r!7292)) (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292))))))))

(declare-fun bm!447201 () Bool)

(declare-fun call!447207 () (InoxSet Context!10346))

(declare-fun call!447210 () (InoxSet Context!10346))

(assert (=> bm!447201 (= call!447207 call!447210)))

(declare-fun b!5773698 () Bool)

(declare-fun e!3546781 () (InoxSet Context!10346))

(declare-fun call!447208 () (InoxSet Context!10346))

(assert (=> b!5773698 (= e!3546781 ((_ map or) call!447208 call!447210))))

(declare-fun bm!447202 () Bool)

(declare-fun call!447211 () (InoxSet Context!10346))

(assert (=> bm!447202 (= call!447210 call!447211)))

(declare-fun b!5773699 () Bool)

(declare-fun e!3546782 () (InoxSet Context!10346))

(assert (=> b!5773699 (= e!3546782 ((as const (Array Context!10346 Bool)) false))))

(declare-fun b!5773700 () Bool)

(declare-fun c!1021129 () Bool)

(declare-fun e!3546783 () Bool)

(assert (=> b!5773700 (= c!1021129 e!3546783)))

(declare-fun res!2436951 () Bool)

(assert (=> b!5773700 (=> (not res!2436951) (not e!3546783))))

(assert (=> b!5773700 (= res!2436951 ((_ is Concat!24634) (ite c!1020902 (regOne!32091 (regOne!32090 r!7292)) (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292))))))))

(assert (=> b!5773700 (= e!3546784 e!3546781)))

(declare-fun bm!447203 () Bool)

(declare-fun call!447206 () List!63667)

(declare-fun c!1021127 () Bool)

(assert (=> bm!447203 (= call!447211 (derivationStepZipperDown!1131 (ite c!1021128 (regOne!32091 (ite c!1020902 (regOne!32091 (regOne!32090 r!7292)) (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292))))) (ite c!1021129 (regTwo!32090 (ite c!1020902 (regOne!32091 (regOne!32090 r!7292)) (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292))))) (ite c!1021127 (regOne!32090 (ite c!1020902 (regOne!32091 (regOne!32090 r!7292)) (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292))))) (reg!16118 (ite c!1020902 (regOne!32091 (regOne!32090 r!7292)) (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))))))) (ite (or c!1021128 c!1021129) (ite c!1020902 lt!2293899 (ite c!1020907 lt!2293792 (ite c!1020910 (Context!10347 lt!2293704) lt!2293814))) (Context!10347 call!447206)) (h!69990 s!2326)))))

(declare-fun b!5773701 () Bool)

(declare-fun e!3546779 () (InoxSet Context!10346))

(assert (=> b!5773701 (= e!3546779 call!447207)))

(declare-fun bm!447204 () Bool)

(declare-fun call!447209 () List!63667)

(assert (=> bm!447204 (= call!447209 ($colon$colon!1779 (exprs!5673 (ite c!1020902 lt!2293899 (ite c!1020907 lt!2293792 (ite c!1020910 (Context!10347 lt!2293704) lt!2293814)))) (ite (or c!1021129 c!1021127) (regTwo!32090 (ite c!1020902 (regOne!32091 (regOne!32090 r!7292)) (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292))))) (ite c!1020902 (regOne!32091 (regOne!32090 r!7292)) (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))))))))

(declare-fun b!5773702 () Bool)

(assert (=> b!5773702 (= e!3546782 call!447207)))

(declare-fun b!5773703 () Bool)

(assert (=> b!5773703 (= e!3546780 (store ((as const (Array Context!10346 Bool)) false) (ite c!1020902 lt!2293899 (ite c!1020907 lt!2293792 (ite c!1020910 (Context!10347 lt!2293704) lt!2293814))) true))))

(declare-fun c!1021126 () Bool)

(declare-fun b!5773704 () Bool)

(assert (=> b!5773704 (= c!1021126 ((_ is Star!15789) (ite c!1020902 (regOne!32091 (regOne!32090 r!7292)) (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292))))))))

(assert (=> b!5773704 (= e!3546779 e!3546782)))

(declare-fun b!5773705 () Bool)

(assert (=> b!5773705 (= e!3546781 e!3546779)))

(assert (=> b!5773705 (= c!1021127 ((_ is Concat!24634) (ite c!1020902 (regOne!32091 (regOne!32090 r!7292)) (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292))))))))

(declare-fun b!5773706 () Bool)

(assert (=> b!5773706 (= e!3546783 (nullable!5821 (regOne!32090 (ite c!1020902 (regOne!32091 (regOne!32090 r!7292)) (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))))))))

(declare-fun bm!447206 () Bool)

(assert (=> bm!447206 (= call!447206 call!447209)))

(declare-fun b!5773707 () Bool)

(assert (=> b!5773707 (= e!3546784 ((_ map or) call!447211 call!447208))))

(declare-fun bm!447205 () Bool)

(assert (=> bm!447205 (= call!447208 (derivationStepZipperDown!1131 (ite c!1021128 (regTwo!32091 (ite c!1020902 (regOne!32091 (regOne!32090 r!7292)) (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292))))) (regOne!32090 (ite c!1020902 (regOne!32091 (regOne!32090 r!7292)) (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))))) (ite c!1021128 (ite c!1020902 lt!2293899 (ite c!1020907 lt!2293792 (ite c!1020910 (Context!10347 lt!2293704) lt!2293814))) (Context!10347 call!447209)) (h!69990 s!2326)))))

(declare-fun d!1818040 () Bool)

(declare-fun c!1021125 () Bool)

(assert (=> d!1818040 (= c!1021125 (and ((_ is ElementMatch!15789) (ite c!1020902 (regOne!32091 (regOne!32090 r!7292)) (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292))))) (= (c!1020912 (ite c!1020902 (regOne!32091 (regOne!32090 r!7292)) (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292))))) (h!69990 s!2326))))))

(assert (=> d!1818040 (= (derivationStepZipperDown!1131 (ite c!1020902 (regOne!32091 (regOne!32090 r!7292)) (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))) (ite c!1020902 lt!2293899 (ite c!1020907 lt!2293792 (ite c!1020910 (Context!10347 lt!2293704) lt!2293814))) (h!69990 s!2326)) e!3546780)))

(assert (= (and d!1818040 c!1021125) b!5773703))

(assert (= (and d!1818040 (not c!1021125)) b!5773697))

(assert (= (and b!5773697 c!1021128) b!5773707))

(assert (= (and b!5773697 (not c!1021128)) b!5773700))

(assert (= (and b!5773700 res!2436951) b!5773706))

(assert (= (and b!5773700 c!1021129) b!5773698))

(assert (= (and b!5773700 (not c!1021129)) b!5773705))

(assert (= (and b!5773705 c!1021127) b!5773701))

(assert (= (and b!5773705 (not c!1021127)) b!5773704))

(assert (= (and b!5773704 c!1021126) b!5773702))

(assert (= (and b!5773704 (not c!1021126)) b!5773699))

(assert (= (or b!5773701 b!5773702) bm!447206))

(assert (= (or b!5773701 b!5773702) bm!447201))

(assert (= (or b!5773698 bm!447206) bm!447204))

(assert (= (or b!5773698 bm!447201) bm!447202))

(assert (= (or b!5773707 b!5773698) bm!447205))

(assert (= (or b!5773707 bm!447202) bm!447203))

(declare-fun m!6718728 () Bool)

(assert (=> bm!447203 m!6718728))

(declare-fun m!6718730 () Bool)

(assert (=> bm!447204 m!6718730))

(declare-fun m!6718732 () Bool)

(assert (=> b!5773703 m!6718732))

(declare-fun m!6718734 () Bool)

(assert (=> b!5773706 m!6718734))

(declare-fun m!6718736 () Bool)

(assert (=> bm!447205 m!6718736))

(assert (=> bm!447069 d!1818040))

(declare-fun b!5773708 () Bool)

(declare-fun e!3546785 () Bool)

(assert (=> b!5773708 (= e!3546785 (nullable!5821 (ite c!1020907 lt!2293743 lt!2293701)))))

(declare-fun e!3546788 () Bool)

(declare-fun b!5773709 () Bool)

(assert (=> b!5773709 (= e!3546788 (= (head!12204 (ite c!1020907 s!2326 lt!2293846)) (c!1020912 (ite c!1020907 lt!2293743 lt!2293701))))))

(declare-fun call!447212 () Bool)

(declare-fun bm!447207 () Bool)

(assert (=> bm!447207 (= call!447212 (isEmpty!35440 (ite c!1020907 s!2326 lt!2293846)))))

(declare-fun b!5773710 () Bool)

(declare-fun e!3546787 () Bool)

(declare-fun e!3546789 () Bool)

(assert (=> b!5773710 (= e!3546787 e!3546789)))

(declare-fun c!1021132 () Bool)

(assert (=> b!5773710 (= c!1021132 ((_ is EmptyLang!15789) (ite c!1020907 lt!2293743 lt!2293701)))))

(declare-fun b!5773711 () Bool)

(declare-fun res!2436952 () Bool)

(assert (=> b!5773711 (=> (not res!2436952) (not e!3546788))))

(assert (=> b!5773711 (= res!2436952 (not call!447212))))

(declare-fun b!5773712 () Bool)

(declare-fun e!3546790 () Bool)

(assert (=> b!5773712 (= e!3546790 (not (= (head!12204 (ite c!1020907 s!2326 lt!2293846)) (c!1020912 (ite c!1020907 lt!2293743 lt!2293701)))))))

(declare-fun b!5773713 () Bool)

(declare-fun res!2436957 () Bool)

(assert (=> b!5773713 (=> (not res!2436957) (not e!3546788))))

(assert (=> b!5773713 (= res!2436957 (isEmpty!35440 (tail!11299 (ite c!1020907 s!2326 lt!2293846))))))

(declare-fun b!5773714 () Bool)

(declare-fun res!2436959 () Bool)

(declare-fun e!3546791 () Bool)

(assert (=> b!5773714 (=> res!2436959 e!3546791)))

(assert (=> b!5773714 (= res!2436959 (not ((_ is ElementMatch!15789) (ite c!1020907 lt!2293743 lt!2293701))))))

(assert (=> b!5773714 (= e!3546789 e!3546791)))

(declare-fun b!5773715 () Bool)

(declare-fun lt!2294027 () Bool)

(assert (=> b!5773715 (= e!3546787 (= lt!2294027 call!447212))))

(declare-fun b!5773716 () Bool)

(assert (=> b!5773716 (= e!3546785 (matchR!7974 (derivativeStep!4565 (ite c!1020907 lt!2293743 lt!2293701) (head!12204 (ite c!1020907 s!2326 lt!2293846))) (tail!11299 (ite c!1020907 s!2326 lt!2293846))))))

(declare-fun d!1818042 () Bool)

(assert (=> d!1818042 e!3546787))

(declare-fun c!1021130 () Bool)

(assert (=> d!1818042 (= c!1021130 ((_ is EmptyExpr!15789) (ite c!1020907 lt!2293743 lt!2293701)))))

(assert (=> d!1818042 (= lt!2294027 e!3546785)))

(declare-fun c!1021131 () Bool)

(assert (=> d!1818042 (= c!1021131 (isEmpty!35440 (ite c!1020907 s!2326 lt!2293846)))))

(assert (=> d!1818042 (validRegex!7525 (ite c!1020907 lt!2293743 lt!2293701))))

(assert (=> d!1818042 (= (matchR!7974 (ite c!1020907 lt!2293743 lt!2293701) (ite c!1020907 s!2326 lt!2293846)) lt!2294027)))

(declare-fun b!5773717 () Bool)

(assert (=> b!5773717 (= e!3546789 (not lt!2294027))))

(declare-fun b!5773718 () Bool)

(declare-fun e!3546786 () Bool)

(assert (=> b!5773718 (= e!3546786 e!3546790)))

(declare-fun res!2436954 () Bool)

(assert (=> b!5773718 (=> res!2436954 e!3546790)))

(assert (=> b!5773718 (= res!2436954 call!447212)))

(declare-fun b!5773719 () Bool)

(declare-fun res!2436955 () Bool)

(assert (=> b!5773719 (=> res!2436955 e!3546790)))

(assert (=> b!5773719 (= res!2436955 (not (isEmpty!35440 (tail!11299 (ite c!1020907 s!2326 lt!2293846)))))))

(declare-fun b!5773720 () Bool)

(assert (=> b!5773720 (= e!3546791 e!3546786)))

(declare-fun res!2436958 () Bool)

(assert (=> b!5773720 (=> (not res!2436958) (not e!3546786))))

(assert (=> b!5773720 (= res!2436958 (not lt!2294027))))

(declare-fun b!5773721 () Bool)

(declare-fun res!2436956 () Bool)

(assert (=> b!5773721 (=> res!2436956 e!3546791)))

(assert (=> b!5773721 (= res!2436956 e!3546788)))

(declare-fun res!2436953 () Bool)

(assert (=> b!5773721 (=> (not res!2436953) (not e!3546788))))

(assert (=> b!5773721 (= res!2436953 lt!2294027)))

(assert (= (and d!1818042 c!1021131) b!5773708))

(assert (= (and d!1818042 (not c!1021131)) b!5773716))

(assert (= (and d!1818042 c!1021130) b!5773715))

(assert (= (and d!1818042 (not c!1021130)) b!5773710))

(assert (= (and b!5773710 c!1021132) b!5773717))

(assert (= (and b!5773710 (not c!1021132)) b!5773714))

(assert (= (and b!5773714 (not res!2436959)) b!5773721))

(assert (= (and b!5773721 res!2436953) b!5773711))

(assert (= (and b!5773711 res!2436952) b!5773713))

(assert (= (and b!5773713 res!2436957) b!5773709))

(assert (= (and b!5773721 (not res!2436956)) b!5773720))

(assert (= (and b!5773720 res!2436958) b!5773718))

(assert (= (and b!5773718 (not res!2436954)) b!5773719))

(assert (= (and b!5773719 (not res!2436955)) b!5773712))

(assert (= (or b!5773715 b!5773711 b!5773718) bm!447207))

(declare-fun m!6718738 () Bool)

(assert (=> b!5773712 m!6718738))

(declare-fun m!6718740 () Bool)

(assert (=> b!5773708 m!6718740))

(assert (=> b!5773716 m!6718738))

(assert (=> b!5773716 m!6718738))

(declare-fun m!6718742 () Bool)

(assert (=> b!5773716 m!6718742))

(declare-fun m!6718744 () Bool)

(assert (=> b!5773716 m!6718744))

(assert (=> b!5773716 m!6718742))

(assert (=> b!5773716 m!6718744))

(declare-fun m!6718746 () Bool)

(assert (=> b!5773716 m!6718746))

(declare-fun m!6718748 () Bool)

(assert (=> d!1818042 m!6718748))

(declare-fun m!6718750 () Bool)

(assert (=> d!1818042 m!6718750))

(assert (=> b!5773719 m!6718744))

(assert (=> b!5773719 m!6718744))

(declare-fun m!6718752 () Bool)

(assert (=> b!5773719 m!6718752))

(assert (=> b!5773713 m!6718744))

(assert (=> b!5773713 m!6718744))

(assert (=> b!5773713 m!6718752))

(assert (=> bm!447207 m!6718748))

(assert (=> b!5773709 m!6718738))

(assert (=> bm!446927 d!1818042))

(declare-fun d!1818044 () Bool)

(declare-fun e!3546797 () Bool)

(assert (=> d!1818044 e!3546797))

(declare-fun res!2436962 () Bool)

(assert (=> d!1818044 (=> (not res!2436962) (not e!3546797))))

(declare-fun lt!2294030 () List!63668)

(declare-fun noDuplicate!1691 (List!63668) Bool)

(assert (=> d!1818044 (= res!2436962 (noDuplicate!1691 lt!2294030))))

(declare-fun choose!43839 ((InoxSet Context!10346)) List!63668)

(assert (=> d!1818044 (= lt!2294030 (choose!43839 z!1189))))

(assert (=> d!1818044 (= (toList!9573 z!1189) lt!2294030)))

(declare-fun b!5773730 () Bool)

(declare-fun content!11608 (List!63668) (InoxSet Context!10346))

(assert (=> b!5773730 (= e!3546797 (= (content!11608 lt!2294030) z!1189))))

(assert (= (and d!1818044 res!2436962) b!5773730))

(declare-fun m!6718766 () Bool)

(assert (=> d!1818044 m!6718766))

(declare-fun m!6718768 () Bool)

(assert (=> d!1818044 m!6718768))

(declare-fun m!6718770 () Bool)

(assert (=> b!5773730 m!6718770))

(assert (=> b!5772971 d!1818044))

(declare-fun d!1818048 () Bool)

(assert (=> d!1818048 (= (get!21929 (ite c!1020903 lt!2293889 lt!2293748)) (v!51856 (ite c!1020903 lt!2293889 lt!2293748)))))

(assert (=> bm!447066 d!1818048))

(declare-fun bs!1354552 () Bool)

(declare-fun d!1818050 () Bool)

(assert (= bs!1354552 (and d!1818050 b!5772936)))

(declare-fun lambda!314433 () Int)

(assert (=> bs!1354552 (not (= lambda!314433 lambda!314364))))

(declare-fun bs!1354553 () Bool)

(assert (= bs!1354553 (and d!1818050 b!5772932)))

(assert (=> bs!1354553 (not (= lambda!314433 lambda!314342))))

(assert (=> bs!1354552 (= (and (= (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718))) s!2326) (= (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292))) lt!2293787) (= (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 lt!2293701)) (regTwo!32090 r!7292))) (= lambda!314433 lambda!314360))))

(declare-fun bs!1354555 () Bool)

(assert (= bs!1354555 (and d!1818050 d!1818024)))

(assert (=> bs!1354555 (not (= lambda!314433 lambda!314427))))

(declare-fun bs!1354556 () Bool)

(assert (= bs!1354556 (and d!1818050 b!5772964)))

(assert (=> bs!1354556 (= (and (= (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718))) s!2326) (= (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292))) (regTwo!32090 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 lt!2293701)) lt!2293738)) (= lambda!314433 lambda!314350))))

(declare-fun bs!1354558 () Bool)

(assert (= bs!1354558 (and d!1818050 b!5773263)))

(assert (=> bs!1354558 (not (= lambda!314433 lambda!314380))))

(declare-fun bs!1354559 () Bool)

(assert (= bs!1354559 (and d!1818050 b!5772950)))

(assert (=> bs!1354559 (not (= lambda!314433 lambda!314367))))

(declare-fun bs!1354560 () Bool)

(assert (= bs!1354560 (and d!1818050 b!5773505)))

(assert (=> bs!1354560 (not (= lambda!314433 lambda!314413))))

(assert (=> bs!1354552 (not (= lambda!314433 lambda!314361))))

(assert (=> bs!1354552 (= (and (= (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718))) (_1!36189 lt!2293718)) (= (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292))) (reg!16118 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 lt!2293701)) lt!2293701)) (= lambda!314433 lambda!314362))))

(assert (=> bs!1354556 (not (= lambda!314433 lambda!314351))))

(declare-fun bs!1354563 () Bool)

(assert (= bs!1354563 (and d!1818050 b!5773497)))

(assert (=> bs!1354563 (not (= lambda!314433 lambda!314415))))

(declare-fun bs!1354564 () Bool)

(assert (= bs!1354564 (and d!1818050 b!5772969)))

(assert (=> bs!1354564 (= (and (= (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718))) (_1!36189 lt!2293843)) (= (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292))) (reg!16118 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 lt!2293701)) lt!2293701)) (= lambda!314433 lambda!314354))))

(declare-fun bs!1354566 () Bool)

(assert (= bs!1354566 (and d!1818050 b!5773270)))

(assert (=> bs!1354566 (not (= lambda!314433 lambda!314386))))

(assert (=> bs!1354564 (not (= lambda!314433 lambda!314355))))

(assert (=> bs!1354564 (not (= lambda!314433 lambda!314356))))

(declare-fun bs!1354567 () Bool)

(assert (= bs!1354567 (and d!1818050 b!5772937)))

(assert (=> bs!1354567 (= (and (= (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718))) s!2326) (= (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292))) (regOne!32090 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 lt!2293701)) lt!2293835)) (= lambda!314433 lambda!314344))))

(declare-fun bs!1354568 () Bool)

(assert (= bs!1354568 (and d!1818050 b!5773278)))

(assert (=> bs!1354568 (not (= lambda!314433 lambda!314384))))

(assert (=> bs!1354556 (not (= lambda!314433 lambda!314349))))

(assert (=> bs!1354567 (= (and (= (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718))) s!2326) (= (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292))) (regTwo!32090 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 lt!2293701)) lt!2293776)) (= lambda!314433 lambda!314346))))

(declare-fun bs!1354569 () Bool)

(assert (= bs!1354569 (and d!1818050 b!5773255)))

(assert (=> bs!1354569 (not (= lambda!314433 lambda!314383))))

(assert (=> bs!1354559 (= (and (= (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718))) Nil!63542) (= (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292))) (reg!16118 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 lt!2293701)) lt!2293701)) (= lambda!314433 lambda!314365))))

(assert (=> bs!1354567 (not (= lambda!314433 lambda!314345))))

(declare-fun bs!1354571 () Bool)

(assert (= bs!1354571 (and d!1818050 b!5772956)))

(assert (=> bs!1354571 (not (= lambda!314433 lambda!314353))))

(assert (=> bs!1354559 (not (= lambda!314433 lambda!314366))))

(assert (=> bs!1354552 (not (= lambda!314433 lambda!314363))))

(assert (=> bs!1354556 (= (and (= (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718))) s!2326) (= (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292))) (regOne!32090 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 lt!2293701)) lt!2293831)) (= lambda!314433 lambda!314348))))

(assert (=> bs!1354555 (= (and (= (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292))) (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292))))) (= (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 lt!2293701)) (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293738 lt!2293701)))) (= lambda!314433 lambda!314426))))

(declare-fun bs!1354572 () Bool)

(assert (= bs!1354572 (and d!1818050 d!1817950)))

(assert (=> bs!1354572 (not (= lambda!314433 lambda!314411))))

(assert (=> bs!1354567 (not (= lambda!314433 lambda!314347))))

(assert (=> bs!1354553 (= (and (= (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718))) s!2326) (= (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292))) (regOne!32090 r!7292)) (= (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 lt!2293701)) (regTwo!32090 r!7292))) (= lambda!314433 lambda!314341))))

(assert (=> bs!1354572 (= (and (= (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718))) (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542)) (= (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292))) (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292))))))) (= (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 lt!2293701)) (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293831 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))))) (= lambda!314433 lambda!314409))))

(assert (=> bs!1354571 (= (and (= (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718))) s!2326) (= (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292))) lt!2293701) (= (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 lt!2293701)) (regTwo!32090 r!7292))) (= lambda!314433 lambda!314352))))

(assert (=> d!1818050 true))

(assert (=> d!1818050 true))

(assert (=> d!1818050 true))

(assert (=> d!1818050 (= (isDefined!12501 (findConcatSeparation!2212 (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292))) (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 lt!2293701)) Nil!63542 (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718))) (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718))))) (Exists!2889 lambda!314433))))

(declare-fun lt!2294036 () Unit!156778)

(declare-fun choose!43840 (Regex!15789 Regex!15789 List!63666) Unit!156778)

(assert (=> d!1818050 (= lt!2294036 (choose!43840 (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292))) (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 lt!2293701)) (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718)))))))

(assert (=> d!1818050 (validRegex!7525 (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292))))))

(assert (=> d!1818050 (= (lemmaFindConcatSeparationEquivalentToExists!1976 (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292))) (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 lt!2293701)) (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718)))) lt!2294036)))

(declare-fun bs!1354573 () Bool)

(assert (= bs!1354573 d!1818050))

(declare-fun m!6718782 () Bool)

(assert (=> bs!1354573 m!6718782))

(declare-fun m!6718784 () Bool)

(assert (=> bs!1354573 m!6718784))

(declare-fun m!6718786 () Bool)

(assert (=> bs!1354573 m!6718786))

(assert (=> bs!1354573 m!6718346))

(assert (=> bs!1354573 m!6718782))

(declare-fun m!6718788 () Bool)

(assert (=> bs!1354573 m!6718788))

(assert (=> bm!447100 d!1818050))

(declare-fun d!1818054 () Bool)

(assert (=> d!1818054 (= (isDefined!12501 (ite c!1020903 lt!2293889 lt!2293789)) (not (isEmpty!35443 (ite c!1020903 lt!2293889 lt!2293789))))))

(declare-fun bs!1354574 () Bool)

(assert (= bs!1354574 d!1818054))

(declare-fun m!6718790 () Bool)

(assert (=> bs!1354574 m!6718790))

(assert (=> bm!446982 d!1818054))

(declare-fun b!5773739 () Bool)

(declare-fun e!3546802 () Bool)

(assert (=> b!5773739 (= e!3546802 (nullable!5821 (ite c!1020910 (Concat!24634 (regOne!32090 r!7292) lt!2293738) (ite c!1020903 (reg!16118 (regOne!32090 r!7292)) (ite c!1020900 lt!2293710 lt!2293836)))))))

(declare-fun e!3546805 () Bool)

(declare-fun b!5773740 () Bool)

(assert (=> b!5773740 (= e!3546805 (= (head!12204 (ite c!1020910 s!2326 (ite c!1020903 (_1!36189 lt!2293864) (ite c!1020900 lt!2293726 s!2326)))) (c!1020912 (ite c!1020910 (Concat!24634 (regOne!32090 r!7292) lt!2293738) (ite c!1020903 (reg!16118 (regOne!32090 r!7292)) (ite c!1020900 lt!2293710 lt!2293836))))))))

(declare-fun call!447213 () Bool)

(declare-fun bm!447208 () Bool)

(assert (=> bm!447208 (= call!447213 (isEmpty!35440 (ite c!1020910 s!2326 (ite c!1020903 (_1!36189 lt!2293864) (ite c!1020900 lt!2293726 s!2326)))))))

(declare-fun b!5773741 () Bool)

(declare-fun e!3546804 () Bool)

(declare-fun e!3546806 () Bool)

(assert (=> b!5773741 (= e!3546804 e!3546806)))

(declare-fun c!1021138 () Bool)

(assert (=> b!5773741 (= c!1021138 ((_ is EmptyLang!15789) (ite c!1020910 (Concat!24634 (regOne!32090 r!7292) lt!2293738) (ite c!1020903 (reg!16118 (regOne!32090 r!7292)) (ite c!1020900 lt!2293710 lt!2293836)))))))

(declare-fun b!5773742 () Bool)

(declare-fun res!2436971 () Bool)

(assert (=> b!5773742 (=> (not res!2436971) (not e!3546805))))

(assert (=> b!5773742 (= res!2436971 (not call!447213))))

(declare-fun b!5773743 () Bool)

(declare-fun e!3546807 () Bool)

(assert (=> b!5773743 (= e!3546807 (not (= (head!12204 (ite c!1020910 s!2326 (ite c!1020903 (_1!36189 lt!2293864) (ite c!1020900 lt!2293726 s!2326)))) (c!1020912 (ite c!1020910 (Concat!24634 (regOne!32090 r!7292) lt!2293738) (ite c!1020903 (reg!16118 (regOne!32090 r!7292)) (ite c!1020900 lt!2293710 lt!2293836)))))))))

(declare-fun b!5773744 () Bool)

(declare-fun res!2436976 () Bool)

(assert (=> b!5773744 (=> (not res!2436976) (not e!3546805))))

(assert (=> b!5773744 (= res!2436976 (isEmpty!35440 (tail!11299 (ite c!1020910 s!2326 (ite c!1020903 (_1!36189 lt!2293864) (ite c!1020900 lt!2293726 s!2326))))))))

(declare-fun b!5773745 () Bool)

(declare-fun res!2436978 () Bool)

(declare-fun e!3546808 () Bool)

(assert (=> b!5773745 (=> res!2436978 e!3546808)))

(assert (=> b!5773745 (= res!2436978 (not ((_ is ElementMatch!15789) (ite c!1020910 (Concat!24634 (regOne!32090 r!7292) lt!2293738) (ite c!1020903 (reg!16118 (regOne!32090 r!7292)) (ite c!1020900 lt!2293710 lt!2293836))))))))

(assert (=> b!5773745 (= e!3546806 e!3546808)))

(declare-fun b!5773746 () Bool)

(declare-fun lt!2294037 () Bool)

(assert (=> b!5773746 (= e!3546804 (= lt!2294037 call!447213))))

(declare-fun b!5773747 () Bool)

(assert (=> b!5773747 (= e!3546802 (matchR!7974 (derivativeStep!4565 (ite c!1020910 (Concat!24634 (regOne!32090 r!7292) lt!2293738) (ite c!1020903 (reg!16118 (regOne!32090 r!7292)) (ite c!1020900 lt!2293710 lt!2293836))) (head!12204 (ite c!1020910 s!2326 (ite c!1020903 (_1!36189 lt!2293864) (ite c!1020900 lt!2293726 s!2326))))) (tail!11299 (ite c!1020910 s!2326 (ite c!1020903 (_1!36189 lt!2293864) (ite c!1020900 lt!2293726 s!2326))))))))

(declare-fun d!1818056 () Bool)

(assert (=> d!1818056 e!3546804))

(declare-fun c!1021136 () Bool)

(assert (=> d!1818056 (= c!1021136 ((_ is EmptyExpr!15789) (ite c!1020910 (Concat!24634 (regOne!32090 r!7292) lt!2293738) (ite c!1020903 (reg!16118 (regOne!32090 r!7292)) (ite c!1020900 lt!2293710 lt!2293836)))))))

(assert (=> d!1818056 (= lt!2294037 e!3546802)))

(declare-fun c!1021137 () Bool)

(assert (=> d!1818056 (= c!1021137 (isEmpty!35440 (ite c!1020910 s!2326 (ite c!1020903 (_1!36189 lt!2293864) (ite c!1020900 lt!2293726 s!2326)))))))

(assert (=> d!1818056 (validRegex!7525 (ite c!1020910 (Concat!24634 (regOne!32090 r!7292) lt!2293738) (ite c!1020903 (reg!16118 (regOne!32090 r!7292)) (ite c!1020900 lt!2293710 lt!2293836))))))

(assert (=> d!1818056 (= (matchR!7974 (ite c!1020910 (Concat!24634 (regOne!32090 r!7292) lt!2293738) (ite c!1020903 (reg!16118 (regOne!32090 r!7292)) (ite c!1020900 lt!2293710 lt!2293836))) (ite c!1020910 s!2326 (ite c!1020903 (_1!36189 lt!2293864) (ite c!1020900 lt!2293726 s!2326)))) lt!2294037)))

(declare-fun b!5773748 () Bool)

(assert (=> b!5773748 (= e!3546806 (not lt!2294037))))

(declare-fun b!5773749 () Bool)

(declare-fun e!3546803 () Bool)

(assert (=> b!5773749 (= e!3546803 e!3546807)))

(declare-fun res!2436973 () Bool)

(assert (=> b!5773749 (=> res!2436973 e!3546807)))

(assert (=> b!5773749 (= res!2436973 call!447213)))

(declare-fun b!5773750 () Bool)

(declare-fun res!2436974 () Bool)

(assert (=> b!5773750 (=> res!2436974 e!3546807)))

(assert (=> b!5773750 (= res!2436974 (not (isEmpty!35440 (tail!11299 (ite c!1020910 s!2326 (ite c!1020903 (_1!36189 lt!2293864) (ite c!1020900 lt!2293726 s!2326)))))))))

(declare-fun b!5773751 () Bool)

(assert (=> b!5773751 (= e!3546808 e!3546803)))

(declare-fun res!2436977 () Bool)

(assert (=> b!5773751 (=> (not res!2436977) (not e!3546803))))

(assert (=> b!5773751 (= res!2436977 (not lt!2294037))))

(declare-fun b!5773752 () Bool)

(declare-fun res!2436975 () Bool)

(assert (=> b!5773752 (=> res!2436975 e!3546808)))

(assert (=> b!5773752 (= res!2436975 e!3546805)))

(declare-fun res!2436972 () Bool)

(assert (=> b!5773752 (=> (not res!2436972) (not e!3546805))))

(assert (=> b!5773752 (= res!2436972 lt!2294037)))

(assert (= (and d!1818056 c!1021137) b!5773739))

(assert (= (and d!1818056 (not c!1021137)) b!5773747))

(assert (= (and d!1818056 c!1021136) b!5773746))

(assert (= (and d!1818056 (not c!1021136)) b!5773741))

(assert (= (and b!5773741 c!1021138) b!5773748))

(assert (= (and b!5773741 (not c!1021138)) b!5773745))

(assert (= (and b!5773745 (not res!2436978)) b!5773752))

(assert (= (and b!5773752 res!2436972) b!5773742))

(assert (= (and b!5773742 res!2436971) b!5773744))

(assert (= (and b!5773744 res!2436976) b!5773740))

(assert (= (and b!5773752 (not res!2436975)) b!5773751))

(assert (= (and b!5773751 res!2436977) b!5773749))

(assert (= (and b!5773749 (not res!2436973)) b!5773750))

(assert (= (and b!5773750 (not res!2436974)) b!5773743))

(assert (= (or b!5773746 b!5773742 b!5773749) bm!447208))

(declare-fun m!6718792 () Bool)

(assert (=> b!5773743 m!6718792))

(declare-fun m!6718794 () Bool)

(assert (=> b!5773739 m!6718794))

(assert (=> b!5773747 m!6718792))

(assert (=> b!5773747 m!6718792))

(declare-fun m!6718796 () Bool)

(assert (=> b!5773747 m!6718796))

(declare-fun m!6718798 () Bool)

(assert (=> b!5773747 m!6718798))

(assert (=> b!5773747 m!6718796))

(assert (=> b!5773747 m!6718798))

(declare-fun m!6718800 () Bool)

(assert (=> b!5773747 m!6718800))

(declare-fun m!6718802 () Bool)

(assert (=> d!1818056 m!6718802))

(declare-fun m!6718804 () Bool)

(assert (=> d!1818056 m!6718804))

(assert (=> b!5773750 m!6718798))

(assert (=> b!5773750 m!6718798))

(declare-fun m!6718806 () Bool)

(assert (=> b!5773750 m!6718806))

(assert (=> b!5773744 m!6718798))

(assert (=> b!5773744 m!6718798))

(assert (=> b!5773744 m!6718806))

(assert (=> bm!447208 m!6718802))

(assert (=> b!5773740 m!6718792))

(assert (=> bm!446987 d!1818056))

(declare-fun bs!1354575 () Bool)

(declare-fun b!5773764 () Bool)

(assert (= bs!1354575 (and b!5773764 b!5772936)))

(declare-fun lambda!314434 () Int)

(assert (=> bs!1354575 (= (and (= s!2326 (_1!36189 lt!2293718)) (= (reg!16118 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))) (reg!16118 (regOne!32090 r!7292))) (= (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292))))) lt!2293701)) (= lambda!314434 lambda!314364))))

(declare-fun bs!1354576 () Bool)

(assert (= bs!1354576 (and b!5773764 b!5772932)))

(assert (=> bs!1354576 (not (= lambda!314434 lambda!314342))))

(assert (=> bs!1354575 (not (= lambda!314434 lambda!314360))))

(declare-fun bs!1354577 () Bool)

(assert (= bs!1354577 (and b!5773764 d!1818024)))

(assert (=> bs!1354577 (not (= lambda!314434 lambda!314427))))

(declare-fun bs!1354578 () Bool)

(assert (= bs!1354578 (and b!5773764 b!5772964)))

(assert (=> bs!1354578 (not (= lambda!314434 lambda!314350))))

(declare-fun bs!1354579 () Bool)

(assert (= bs!1354579 (and b!5773764 b!5773263)))

(assert (=> bs!1354579 (= (and (= (reg!16118 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))) (reg!16118 lt!2293730)) (= (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292))))) lt!2293730)) (= lambda!314434 lambda!314380))))

(declare-fun bs!1354580 () Bool)

(assert (= bs!1354580 (and b!5773764 b!5772950)))

(assert (=> bs!1354580 (= (and (= s!2326 Nil!63542) (= (reg!16118 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))) (reg!16118 (regOne!32090 r!7292))) (= (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292))))) lt!2293701)) (= lambda!314434 lambda!314367))))

(declare-fun bs!1354581 () Bool)

(assert (= bs!1354581 (and b!5773764 b!5773505)))

(assert (=> bs!1354581 (= (and (= s!2326 (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020900 (_1!36189 lt!2293718) Nil!63542) s!2326))) (= (reg!16118 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))) (reg!16118 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292))))))) (= (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292))))) (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292))))))) (= lambda!314434 lambda!314413))))

(assert (=> bs!1354575 (not (= lambda!314434 lambda!314361))))

(assert (=> bs!1354575 (not (= lambda!314434 lambda!314362))))

(assert (=> bs!1354578 (not (= lambda!314434 lambda!314351))))

(declare-fun bs!1354582 () Bool)

(assert (= bs!1354582 (and b!5773764 b!5773497)))

(assert (=> bs!1354582 (not (= lambda!314434 lambda!314415))))

(declare-fun bs!1354583 () Bool)

(assert (= bs!1354583 (and b!5773764 b!5772969)))

(assert (=> bs!1354583 (not (= lambda!314434 lambda!314354))))

(assert (=> bs!1354583 (= (and (= s!2326 (_1!36189 lt!2293843)) (= (reg!16118 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))) (reg!16118 (regOne!32090 r!7292))) (= (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292))))) lt!2293701)) (= lambda!314434 lambda!314355))))

(assert (=> bs!1354583 (not (= lambda!314434 lambda!314356))))

(declare-fun bs!1354584 () Bool)

(assert (= bs!1354584 (and b!5773764 b!5772937)))

(assert (=> bs!1354584 (not (= lambda!314434 lambda!314344))))

(declare-fun bs!1354585 () Bool)

(assert (= bs!1354585 (and b!5773764 b!5773278)))

(assert (=> bs!1354585 (= (and (= s!2326 (ite c!1020902 s!2326 (ite c!1020903 (_1!36189 lt!2293843) s!2326))) (= (reg!16118 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))) (reg!16118 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736)))) (= (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292))))) (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736)))) (= lambda!314434 lambda!314384))))

(assert (=> bs!1354578 (not (= lambda!314434 lambda!314349))))

(assert (=> bs!1354584 (not (= lambda!314434 lambda!314346))))

(declare-fun bs!1354586 () Bool)

(assert (= bs!1354586 (and b!5773764 b!5773255)))

(assert (=> bs!1354586 (not (= lambda!314434 lambda!314383))))

(assert (=> bs!1354580 (not (= lambda!314434 lambda!314365))))

(assert (=> bs!1354584 (not (= lambda!314434 lambda!314345))))

(declare-fun bs!1354587 () Bool)

(assert (= bs!1354587 (and b!5773764 b!5772956)))

(assert (=> bs!1354587 (not (= lambda!314434 lambda!314353))))

(assert (=> bs!1354580 (not (= lambda!314434 lambda!314366))))

(assert (=> bs!1354575 (not (= lambda!314434 lambda!314363))))

(assert (=> bs!1354578 (not (= lambda!314434 lambda!314348))))

(assert (=> bs!1354577 (not (= lambda!314434 lambda!314426))))

(declare-fun bs!1354588 () Bool)

(assert (= bs!1354588 (and b!5773764 d!1817950)))

(assert (=> bs!1354588 (not (= lambda!314434 lambda!314411))))

(assert (=> bs!1354584 (not (= lambda!314434 lambda!314347))))

(assert (=> bs!1354576 (not (= lambda!314434 lambda!314341))))

(assert (=> bs!1354588 (not (= lambda!314434 lambda!314409))))

(assert (=> bs!1354587 (not (= lambda!314434 lambda!314352))))

(declare-fun bs!1354589 () Bool)

(assert (= bs!1354589 (and b!5773764 d!1818050)))

(assert (=> bs!1354589 (not (= lambda!314434 lambda!314433))))

(declare-fun bs!1354590 () Bool)

(assert (= bs!1354590 (and b!5773764 b!5773270)))

(assert (=> bs!1354590 (not (= lambda!314434 lambda!314386))))

(assert (=> b!5773764 true))

(assert (=> b!5773764 true))

(declare-fun bs!1354591 () Bool)

(declare-fun b!5773756 () Bool)

(assert (= bs!1354591 (and b!5773756 b!5772936)))

(declare-fun lambda!314435 () Int)

(assert (=> bs!1354591 (not (= lambda!314435 lambda!314364))))

(declare-fun bs!1354592 () Bool)

(assert (= bs!1354592 (and b!5773756 b!5772932)))

(assert (=> bs!1354592 (= (and (= (regOne!32090 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))) (regOne!32090 r!7292)) (= (regTwo!32090 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))) (regTwo!32090 r!7292))) (= lambda!314435 lambda!314342))))

(assert (=> bs!1354591 (not (= lambda!314435 lambda!314360))))

(declare-fun bs!1354593 () Bool)

(assert (= bs!1354593 (and b!5773756 d!1818024)))

(assert (=> bs!1354593 (= (and (= s!2326 (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718)))) (= (regOne!32090 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))) (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292))))) (= (regTwo!32090 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))) (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293738 lt!2293701)))) (= lambda!314435 lambda!314427))))

(declare-fun bs!1354594 () Bool)

(assert (= bs!1354594 (and b!5773756 b!5772964)))

(assert (=> bs!1354594 (not (= lambda!314435 lambda!314350))))

(declare-fun bs!1354595 () Bool)

(assert (= bs!1354595 (and b!5773756 b!5773263)))

(assert (=> bs!1354595 (not (= lambda!314435 lambda!314380))))

(declare-fun bs!1354596 () Bool)

(assert (= bs!1354596 (and b!5773756 b!5772950)))

(assert (=> bs!1354596 (not (= lambda!314435 lambda!314367))))

(declare-fun bs!1354597 () Bool)

(assert (= bs!1354597 (and b!5773756 b!5773505)))

(assert (=> bs!1354597 (not (= lambda!314435 lambda!314413))))

(assert (=> bs!1354591 (= (and (= (regOne!32090 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))) lt!2293787) (= (regTwo!32090 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))) (regTwo!32090 r!7292))) (= lambda!314435 lambda!314361))))

(declare-fun bs!1354598 () Bool)

(assert (= bs!1354598 (and b!5773756 b!5773764)))

(assert (=> bs!1354598 (not (= lambda!314435 lambda!314434))))

(assert (=> bs!1354591 (not (= lambda!314435 lambda!314362))))

(assert (=> bs!1354594 (= (and (= (regOne!32090 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))) (regTwo!32090 (regOne!32090 r!7292))) (= (regTwo!32090 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))) lt!2293738)) (= lambda!314435 lambda!314351))))

(declare-fun bs!1354599 () Bool)

(assert (= bs!1354599 (and b!5773756 b!5773497)))

(assert (=> bs!1354599 (= (and (= s!2326 (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020900 (_1!36189 lt!2293718) Nil!63542) s!2326))) (= (regOne!32090 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))) (regOne!32090 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292))))))) (= (regTwo!32090 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))) (regTwo!32090 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))))) (= lambda!314435 lambda!314415))))

(declare-fun bs!1354600 () Bool)

(assert (= bs!1354600 (and b!5773756 b!5772969)))

(assert (=> bs!1354600 (not (= lambda!314435 lambda!314354))))

(assert (=> bs!1354600 (not (= lambda!314435 lambda!314355))))

(assert (=> bs!1354600 (= (and (= s!2326 (_1!36189 lt!2293843)) (= (regOne!32090 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))) (reg!16118 (regOne!32090 r!7292))) (= (regTwo!32090 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))) lt!2293701)) (= lambda!314435 lambda!314356))))

(declare-fun bs!1354601 () Bool)

(assert (= bs!1354601 (and b!5773756 b!5772937)))

(assert (=> bs!1354601 (not (= lambda!314435 lambda!314344))))

(declare-fun bs!1354602 () Bool)

(assert (= bs!1354602 (and b!5773756 b!5773278)))

(assert (=> bs!1354602 (not (= lambda!314435 lambda!314384))))

(assert (=> bs!1354594 (= (and (= (regOne!32090 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))) (regOne!32090 (regOne!32090 r!7292))) (= (regTwo!32090 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))) lt!2293831)) (= lambda!314435 lambda!314349))))

(assert (=> bs!1354601 (not (= lambda!314435 lambda!314346))))

(declare-fun bs!1354603 () Bool)

(assert (= bs!1354603 (and b!5773756 b!5773255)))

(assert (=> bs!1354603 (= (and (= (regOne!32090 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))) (regOne!32090 lt!2293730)) (= (regTwo!32090 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))) (regTwo!32090 lt!2293730))) (= lambda!314435 lambda!314383))))

(assert (=> bs!1354596 (not (= lambda!314435 lambda!314365))))

(assert (=> bs!1354601 (= (and (= (regOne!32090 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))) (regOne!32090 (regOne!32090 r!7292))) (= (regTwo!32090 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))) lt!2293835)) (= lambda!314435 lambda!314345))))

(declare-fun bs!1354604 () Bool)

(assert (= bs!1354604 (and b!5773756 b!5772956)))

(assert (=> bs!1354604 (= (and (= (regOne!32090 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))) lt!2293701) (= (regTwo!32090 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))) (regTwo!32090 r!7292))) (= lambda!314435 lambda!314353))))

(assert (=> bs!1354596 (= (and (= s!2326 Nil!63542) (= (regOne!32090 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))) (reg!16118 (regOne!32090 r!7292))) (= (regTwo!32090 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))) lt!2293701)) (= lambda!314435 lambda!314366))))

(assert (=> bs!1354591 (= (and (= s!2326 (_1!36189 lt!2293718)) (= (regOne!32090 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))) (reg!16118 (regOne!32090 r!7292))) (= (regTwo!32090 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))) lt!2293701)) (= lambda!314435 lambda!314363))))

(assert (=> bs!1354594 (not (= lambda!314435 lambda!314348))))

(assert (=> bs!1354593 (not (= lambda!314435 lambda!314426))))

(declare-fun bs!1354605 () Bool)

(assert (= bs!1354605 (and b!5773756 d!1817950)))

(assert (=> bs!1354605 (= (and (= s!2326 (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542)) (= (regOne!32090 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))) (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292))))))) (= (regTwo!32090 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))) (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293831 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))))) (= lambda!314435 lambda!314411))))

(assert (=> bs!1354601 (= (and (= (regOne!32090 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))) (regTwo!32090 (regOne!32090 r!7292))) (= (regTwo!32090 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))) lt!2293776)) (= lambda!314435 lambda!314347))))

(assert (=> bs!1354592 (not (= lambda!314435 lambda!314341))))

(assert (=> bs!1354605 (not (= lambda!314435 lambda!314409))))

(assert (=> bs!1354604 (not (= lambda!314435 lambda!314352))))

(declare-fun bs!1354606 () Bool)

(assert (= bs!1354606 (and b!5773756 d!1818050)))

(assert (=> bs!1354606 (not (= lambda!314435 lambda!314433))))

(declare-fun bs!1354607 () Bool)

(assert (= bs!1354607 (and b!5773756 b!5773270)))

(assert (=> bs!1354607 (= (and (= s!2326 (ite c!1020902 s!2326 (ite c!1020903 (_1!36189 lt!2293843) s!2326))) (= (regOne!32090 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))) (regOne!32090 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736)))) (= (regTwo!32090 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))) (regTwo!32090 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736))))) (= lambda!314435 lambda!314386))))

(assert (=> b!5773756 true))

(assert (=> b!5773756 true))

(declare-fun b!5773755 () Bool)

(declare-fun c!1021140 () Bool)

(assert (=> b!5773755 (= c!1021140 ((_ is ElementMatch!15789) (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))))))

(declare-fun e!3546811 () Bool)

(declare-fun e!3546815 () Bool)

(assert (=> b!5773755 (= e!3546811 e!3546815)))

(declare-fun e!3546813 () Bool)

(declare-fun call!447215 () Bool)

(assert (=> b!5773756 (= e!3546813 call!447215)))

(declare-fun c!1021139 () Bool)

(declare-fun bm!447209 () Bool)

(assert (=> bm!447209 (= call!447215 (Exists!2889 (ite c!1021139 lambda!314434 lambda!314435)))))

(declare-fun b!5773757 () Bool)

(declare-fun e!3546814 () Bool)

(assert (=> b!5773757 (= e!3546814 e!3546811)))

(declare-fun res!2436983 () Bool)

(assert (=> b!5773757 (= res!2436983 (not ((_ is EmptyLang!15789) (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292))))))))))

(assert (=> b!5773757 (=> (not res!2436983) (not e!3546811))))

(declare-fun b!5773758 () Bool)

(assert (=> b!5773758 (= e!3546815 (= s!2326 (Cons!63542 (c!1020912 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))) Nil!63542)))))

(declare-fun c!1021141 () Bool)

(declare-fun b!5773759 () Bool)

(assert (=> b!5773759 (= c!1021141 ((_ is Union!15789) (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))))))

(declare-fun e!3546812 () Bool)

(assert (=> b!5773759 (= e!3546815 e!3546812)))

(declare-fun c!1021142 () Bool)

(declare-fun d!1818058 () Bool)

(assert (=> d!1818058 (= c!1021142 ((_ is EmptyExpr!15789) (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))))))

(assert (=> d!1818058 (= (matchRSpec!2892 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292))))) s!2326) e!3546814)))

(declare-fun bm!447210 () Bool)

(declare-fun call!447214 () Bool)

(assert (=> bm!447210 (= call!447214 (isEmpty!35440 s!2326))))

(declare-fun b!5773760 () Bool)

(declare-fun e!3546817 () Bool)

(assert (=> b!5773760 (= e!3546812 e!3546817)))

(declare-fun res!2436981 () Bool)

(assert (=> b!5773760 (= res!2436981 (matchRSpec!2892 (regOne!32091 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))) s!2326))))

(assert (=> b!5773760 (=> res!2436981 e!3546817)))

(declare-fun b!5773761 () Bool)

(declare-fun res!2436982 () Bool)

(declare-fun e!3546816 () Bool)

(assert (=> b!5773761 (=> res!2436982 e!3546816)))

(assert (=> b!5773761 (= res!2436982 call!447214)))

(assert (=> b!5773761 (= e!3546813 e!3546816)))

(declare-fun b!5773762 () Bool)

(assert (=> b!5773762 (= e!3546817 (matchRSpec!2892 (regTwo!32091 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))) s!2326))))

(declare-fun b!5773763 () Bool)

(assert (=> b!5773763 (= e!3546812 e!3546813)))

(assert (=> b!5773763 (= c!1021139 ((_ is Star!15789) (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))))))

(assert (=> b!5773764 (= e!3546816 call!447215)))

(declare-fun b!5773765 () Bool)

(assert (=> b!5773765 (= e!3546814 call!447214)))

(assert (= (and d!1818058 c!1021142) b!5773765))

(assert (= (and d!1818058 (not c!1021142)) b!5773757))

(assert (= (and b!5773757 res!2436983) b!5773755))

(assert (= (and b!5773755 c!1021140) b!5773758))

(assert (= (and b!5773755 (not c!1021140)) b!5773759))

(assert (= (and b!5773759 c!1021141) b!5773760))

(assert (= (and b!5773759 (not c!1021141)) b!5773763))

(assert (= (and b!5773760 (not res!2436981)) b!5773762))

(assert (= (and b!5773763 c!1021139) b!5773761))

(assert (= (and b!5773763 (not c!1021139)) b!5773756))

(assert (= (and b!5773761 (not res!2436982)) b!5773764))

(assert (= (or b!5773764 b!5773756) bm!447209))

(assert (= (or b!5773765 b!5773761) bm!447210))

(declare-fun m!6718840 () Bool)

(assert (=> bm!447209 m!6718840))

(assert (=> bm!447210 m!6718068))

(declare-fun m!6718842 () Bool)

(assert (=> b!5773760 m!6718842))

(declare-fun m!6718844 () Bool)

(assert (=> b!5773762 m!6718844))

(assert (=> bm!447063 d!1818058))

(declare-fun bs!1354623 () Bool)

(declare-fun d!1818064 () Bool)

(assert (= bs!1354623 (and d!1818064 b!5772936)))

(declare-fun lambda!314442 () Int)

(assert (=> bs!1354623 (not (= lambda!314442 lambda!314364))))

(declare-fun bs!1354624 () Bool)

(assert (= bs!1354624 (and d!1818064 b!5772932)))

(assert (=> bs!1354624 (not (= lambda!314442 lambda!314342))))

(assert (=> bs!1354623 (= (and (= (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542)) s!2326) (= (reg!16118 (regOne!32090 r!7292)) lt!2293787) (= (Star!15789 (reg!16118 (regOne!32090 r!7292))) (regTwo!32090 r!7292))) (= lambda!314442 lambda!314360))))

(declare-fun bs!1354626 () Bool)

(assert (= bs!1354626 (and d!1818064 d!1818024)))

(assert (=> bs!1354626 (not (= lambda!314442 lambda!314427))))

(declare-fun bs!1354627 () Bool)

(assert (= bs!1354627 (and d!1818064 b!5772964)))

(assert (=> bs!1354627 (= (and (= (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542)) s!2326) (= (reg!16118 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292))) (= (Star!15789 (reg!16118 (regOne!32090 r!7292))) lt!2293738)) (= lambda!314442 lambda!314350))))

(declare-fun bs!1354629 () Bool)

(assert (= bs!1354629 (and d!1818064 b!5773263)))

(assert (=> bs!1354629 (not (= lambda!314442 lambda!314380))))

(declare-fun bs!1354631 () Bool)

(assert (= bs!1354631 (and d!1818064 b!5773505)))

(assert (=> bs!1354631 (not (= lambda!314442 lambda!314413))))

(assert (=> bs!1354623 (not (= lambda!314442 lambda!314361))))

(declare-fun bs!1354634 () Bool)

(assert (= bs!1354634 (and d!1818064 b!5773764)))

(assert (=> bs!1354634 (not (= lambda!314442 lambda!314434))))

(assert (=> bs!1354623 (= (and (= (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542)) (_1!36189 lt!2293718)) (= (Star!15789 (reg!16118 (regOne!32090 r!7292))) lt!2293701)) (= lambda!314442 lambda!314362))))

(assert (=> bs!1354627 (not (= lambda!314442 lambda!314351))))

(declare-fun bs!1354636 () Bool)

(assert (= bs!1354636 (and d!1818064 b!5773497)))

(assert (=> bs!1354636 (not (= lambda!314442 lambda!314415))))

(declare-fun bs!1354638 () Bool)

(assert (= bs!1354638 (and d!1818064 b!5772969)))

(assert (=> bs!1354638 (= (and (= (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542)) (_1!36189 lt!2293843)) (= (Star!15789 (reg!16118 (regOne!32090 r!7292))) lt!2293701)) (= lambda!314442 lambda!314354))))

(assert (=> bs!1354638 (not (= lambda!314442 lambda!314355))))

(assert (=> bs!1354638 (not (= lambda!314442 lambda!314356))))

(declare-fun bs!1354640 () Bool)

(assert (= bs!1354640 (and d!1818064 b!5772937)))

(assert (=> bs!1354640 (= (and (= (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542)) s!2326) (= (reg!16118 (regOne!32090 r!7292)) (regOne!32090 (regOne!32090 r!7292))) (= (Star!15789 (reg!16118 (regOne!32090 r!7292))) lt!2293835)) (= lambda!314442 lambda!314344))))

(declare-fun bs!1354642 () Bool)

(assert (= bs!1354642 (and d!1818064 b!5773278)))

(assert (=> bs!1354642 (not (= lambda!314442 lambda!314384))))

(assert (=> bs!1354627 (not (= lambda!314442 lambda!314349))))

(assert (=> bs!1354640 (= (and (= (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542)) s!2326) (= (reg!16118 (regOne!32090 r!7292)) (regTwo!32090 (regOne!32090 r!7292))) (= (Star!15789 (reg!16118 (regOne!32090 r!7292))) lt!2293776)) (= lambda!314442 lambda!314346))))

(declare-fun bs!1354643 () Bool)

(assert (= bs!1354643 (and d!1818064 b!5773255)))

(assert (=> bs!1354643 (not (= lambda!314442 lambda!314383))))

(declare-fun bs!1354645 () Bool)

(assert (= bs!1354645 (and d!1818064 b!5772950)))

(assert (=> bs!1354645 (= (and (= (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542)) Nil!63542) (= (Star!15789 (reg!16118 (regOne!32090 r!7292))) lt!2293701)) (= lambda!314442 lambda!314365))))

(declare-fun bs!1354646 () Bool)

(assert (= bs!1354646 (and d!1818064 b!5773756)))

(assert (=> bs!1354646 (not (= lambda!314442 lambda!314435))))

(assert (=> bs!1354645 (not (= lambda!314442 lambda!314367))))

(assert (=> bs!1354640 (not (= lambda!314442 lambda!314345))))

(declare-fun bs!1354648 () Bool)

(assert (= bs!1354648 (and d!1818064 b!5772956)))

(assert (=> bs!1354648 (not (= lambda!314442 lambda!314353))))

(assert (=> bs!1354645 (not (= lambda!314442 lambda!314366))))

(assert (=> bs!1354623 (not (= lambda!314442 lambda!314363))))

(assert (=> bs!1354627 (= (and (= (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542)) s!2326) (= (reg!16118 (regOne!32090 r!7292)) (regOne!32090 (regOne!32090 r!7292))) (= (Star!15789 (reg!16118 (regOne!32090 r!7292))) lt!2293831)) (= lambda!314442 lambda!314348))))

(assert (=> bs!1354626 (= (and (= (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542)) (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718)))) (= (reg!16118 (regOne!32090 r!7292)) (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292))))) (= (Star!15789 (reg!16118 (regOne!32090 r!7292))) (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293738 lt!2293701)))) (= lambda!314442 lambda!314426))))

(declare-fun bs!1354651 () Bool)

(assert (= bs!1354651 (and d!1818064 d!1817950)))

(assert (=> bs!1354651 (not (= lambda!314442 lambda!314411))))

(assert (=> bs!1354640 (not (= lambda!314442 lambda!314347))))

(assert (=> bs!1354624 (= (and (= (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542)) s!2326) (= (reg!16118 (regOne!32090 r!7292)) (regOne!32090 r!7292)) (= (Star!15789 (reg!16118 (regOne!32090 r!7292))) (regTwo!32090 r!7292))) (= lambda!314442 lambda!314341))))

(assert (=> bs!1354651 (= (and (= (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542)) (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542)) (= (reg!16118 (regOne!32090 r!7292)) (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292))))))) (= (Star!15789 (reg!16118 (regOne!32090 r!7292))) (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293831 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))))) (= lambda!314442 lambda!314409))))

(assert (=> bs!1354648 (= (and (= (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542)) s!2326) (= (reg!16118 (regOne!32090 r!7292)) lt!2293701) (= (Star!15789 (reg!16118 (regOne!32090 r!7292))) (regTwo!32090 r!7292))) (= lambda!314442 lambda!314352))))

(declare-fun bs!1354653 () Bool)

(assert (= bs!1354653 (and d!1818064 d!1818050)))

(assert (=> bs!1354653 (= (and (= (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542)) (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718)))) (= (reg!16118 (regOne!32090 r!7292)) (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))) (= (Star!15789 (reg!16118 (regOne!32090 r!7292))) (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 lt!2293701)))) (= lambda!314442 lambda!314433))))

(declare-fun bs!1354654 () Bool)

(assert (= bs!1354654 (and d!1818064 b!5773270)))

(assert (=> bs!1354654 (not (= lambda!314442 lambda!314386))))

(assert (=> d!1818064 true))

(assert (=> d!1818064 true))

(declare-fun lambda!314444 () Int)

(assert (=> bs!1354623 (= (and (= (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542)) (_1!36189 lt!2293718)) (= (Star!15789 (reg!16118 (regOne!32090 r!7292))) lt!2293701)) (= lambda!314444 lambda!314364))))

(assert (=> bs!1354624 (not (= lambda!314444 lambda!314342))))

(declare-fun bs!1354656 () Bool)

(assert (= bs!1354656 d!1818064))

(assert (=> bs!1354656 (not (= lambda!314444 lambda!314442))))

(assert (=> bs!1354623 (not (= lambda!314444 lambda!314360))))

(assert (=> bs!1354626 (not (= lambda!314444 lambda!314427))))

(assert (=> bs!1354627 (not (= lambda!314444 lambda!314350))))

(assert (=> bs!1354629 (= (and (= (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542)) s!2326) (= (reg!16118 (regOne!32090 r!7292)) (reg!16118 lt!2293730)) (= (Star!15789 (reg!16118 (regOne!32090 r!7292))) lt!2293730)) (= lambda!314444 lambda!314380))))

(assert (=> bs!1354631 (= (and (= (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542)) (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020900 (_1!36189 lt!2293718) Nil!63542) s!2326))) (= (reg!16118 (regOne!32090 r!7292)) (reg!16118 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292))))))) (= (Star!15789 (reg!16118 (regOne!32090 r!7292))) (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292))))))) (= lambda!314444 lambda!314413))))

(assert (=> bs!1354623 (not (= lambda!314444 lambda!314361))))

(assert (=> bs!1354634 (= (and (= (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542)) s!2326) (= (reg!16118 (regOne!32090 r!7292)) (reg!16118 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292))))))) (= (Star!15789 (reg!16118 (regOne!32090 r!7292))) (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292))))))) (= lambda!314444 lambda!314434))))

(assert (=> bs!1354623 (not (= lambda!314444 lambda!314362))))

(assert (=> bs!1354627 (not (= lambda!314444 lambda!314351))))

(assert (=> bs!1354636 (not (= lambda!314444 lambda!314415))))

(assert (=> bs!1354638 (not (= lambda!314444 lambda!314354))))

(assert (=> bs!1354638 (= (and (= (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542)) (_1!36189 lt!2293843)) (= (Star!15789 (reg!16118 (regOne!32090 r!7292))) lt!2293701)) (= lambda!314444 lambda!314355))))

(assert (=> bs!1354638 (not (= lambda!314444 lambda!314356))))

(assert (=> bs!1354640 (not (= lambda!314444 lambda!314344))))

(assert (=> bs!1354642 (= (and (= (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542)) (ite c!1020902 s!2326 (ite c!1020903 (_1!36189 lt!2293843) s!2326))) (= (reg!16118 (regOne!32090 r!7292)) (reg!16118 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736)))) (= (Star!15789 (reg!16118 (regOne!32090 r!7292))) (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736)))) (= lambda!314444 lambda!314384))))

(assert (=> bs!1354627 (not (= lambda!314444 lambda!314349))))

(assert (=> bs!1354640 (not (= lambda!314444 lambda!314346))))

(assert (=> bs!1354643 (not (= lambda!314444 lambda!314383))))

(assert (=> bs!1354645 (not (= lambda!314444 lambda!314365))))

(assert (=> bs!1354646 (not (= lambda!314444 lambda!314435))))

(assert (=> bs!1354645 (= (and (= (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542)) Nil!63542) (= (Star!15789 (reg!16118 (regOne!32090 r!7292))) lt!2293701)) (= lambda!314444 lambda!314367))))

(assert (=> bs!1354640 (not (= lambda!314444 lambda!314345))))

(assert (=> bs!1354648 (not (= lambda!314444 lambda!314353))))

(assert (=> bs!1354645 (not (= lambda!314444 lambda!314366))))

(assert (=> bs!1354623 (not (= lambda!314444 lambda!314363))))

(assert (=> bs!1354627 (not (= lambda!314444 lambda!314348))))

(assert (=> bs!1354626 (not (= lambda!314444 lambda!314426))))

(assert (=> bs!1354651 (not (= lambda!314444 lambda!314411))))

(assert (=> bs!1354640 (not (= lambda!314444 lambda!314347))))

(assert (=> bs!1354624 (not (= lambda!314444 lambda!314341))))

(assert (=> bs!1354651 (not (= lambda!314444 lambda!314409))))

(assert (=> bs!1354648 (not (= lambda!314444 lambda!314352))))

(assert (=> bs!1354653 (not (= lambda!314444 lambda!314433))))

(assert (=> bs!1354654 (not (= lambda!314444 lambda!314386))))

(assert (=> d!1818064 true))

(assert (=> d!1818064 true))

(assert (=> d!1818064 (= (Exists!2889 lambda!314442) (Exists!2889 lambda!314444))))

(declare-fun lt!2294052 () Unit!156778)

(declare-fun choose!43845 (Regex!15789 List!63666) Unit!156778)

(assert (=> d!1818064 (= lt!2294052 (choose!43845 (reg!16118 (regOne!32090 r!7292)) (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542))))))

(assert (=> d!1818064 (validRegex!7525 (reg!16118 (regOne!32090 r!7292)))))

(assert (=> d!1818064 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!570 (reg!16118 (regOne!32090 r!7292)) (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542))) lt!2294052)))

(declare-fun m!6718908 () Bool)

(assert (=> bs!1354656 m!6718908))

(declare-fun m!6718910 () Bool)

(assert (=> bs!1354656 m!6718910))

(declare-fun m!6718912 () Bool)

(assert (=> bs!1354656 m!6718912))

(declare-fun m!6718914 () Bool)

(assert (=> bs!1354656 m!6718914))

(assert (=> bm!447081 d!1818064))

(declare-fun b!5773894 () Bool)

(declare-fun e!3546892 () List!63667)

(assert (=> b!5773894 (= e!3546892 (Cons!63543 (h!69991 lt!2293745) (++!14007 (t!377005 lt!2293745) lt!2293757)))))

(declare-fun lt!2294058 () List!63667)

(declare-fun e!3546891 () Bool)

(declare-fun b!5773896 () Bool)

(assert (=> b!5773896 (= e!3546891 (or (not (= lt!2293757 Nil!63543)) (= lt!2294058 lt!2293745)))))

(declare-fun d!1818078 () Bool)

(assert (=> d!1818078 e!3546891))

(declare-fun res!2437024 () Bool)

(assert (=> d!1818078 (=> (not res!2437024) (not e!3546891))))

(declare-fun content!11609 (List!63667) (InoxSet Regex!15789))

(assert (=> d!1818078 (= res!2437024 (= (content!11609 lt!2294058) ((_ map or) (content!11609 lt!2293745) (content!11609 lt!2293757))))))

(assert (=> d!1818078 (= lt!2294058 e!3546892)))

(declare-fun c!1021187 () Bool)

(assert (=> d!1818078 (= c!1021187 ((_ is Nil!63543) lt!2293745))))

(assert (=> d!1818078 (= (++!14007 lt!2293745 lt!2293757) lt!2294058)))

(declare-fun b!5773893 () Bool)

(assert (=> b!5773893 (= e!3546892 lt!2293757)))

(declare-fun b!5773895 () Bool)

(declare-fun res!2437023 () Bool)

(assert (=> b!5773895 (=> (not res!2437023) (not e!3546891))))

(declare-fun size!40084 (List!63667) Int)

(assert (=> b!5773895 (= res!2437023 (= (size!40084 lt!2294058) (+ (size!40084 lt!2293745) (size!40084 lt!2293757))))))

(assert (= (and d!1818078 c!1021187) b!5773893))

(assert (= (and d!1818078 (not c!1021187)) b!5773894))

(assert (= (and d!1818078 res!2437024) b!5773895))

(assert (= (and b!5773895 res!2437023) b!5773896))

(declare-fun m!6718934 () Bool)

(assert (=> b!5773894 m!6718934))

(declare-fun m!6718936 () Bool)

(assert (=> d!1818078 m!6718936))

(declare-fun m!6718938 () Bool)

(assert (=> d!1818078 m!6718938))

(declare-fun m!6718940 () Bool)

(assert (=> d!1818078 m!6718940))

(declare-fun m!6718942 () Bool)

(assert (=> b!5773895 m!6718942))

(declare-fun m!6718944 () Bool)

(assert (=> b!5773895 m!6718944))

(declare-fun m!6718946 () Bool)

(assert (=> b!5773895 m!6718946))

(assert (=> bm!447110 d!1818078))

(declare-fun b!5773911 () Bool)

(declare-fun lt!2294061 () Unit!156778)

(declare-fun lt!2294062 () Unit!156778)

(assert (=> b!5773911 (= lt!2294061 lt!2294062)))

(assert (=> b!5773911 (= (++!14006 (++!14006 Nil!63542 (Cons!63542 (h!69990 s!2326) Nil!63542)) (t!377004 s!2326)) s!2326)))

(assert (=> b!5773911 (= lt!2294062 (lemmaMoveElementToOtherListKeepsConcatEq!2115 Nil!63542 (h!69990 s!2326) (t!377004 s!2326) s!2326))))

(declare-fun e!3546904 () Option!15798)

(assert (=> b!5773911 (= e!3546904 (findConcatSeparation!2212 (regOne!32090 r!7292) (regTwo!32090 r!7292) (++!14006 Nil!63542 (Cons!63542 (h!69990 s!2326) Nil!63542)) (t!377004 s!2326) s!2326))))

(declare-fun b!5773912 () Bool)

(declare-fun res!2437037 () Bool)

(declare-fun e!3546901 () Bool)

(assert (=> b!5773912 (=> (not res!2437037) (not e!3546901))))

(declare-fun lt!2294060 () Option!15798)

(assert (=> b!5773912 (= res!2437037 (matchR!7974 (regOne!32090 r!7292) (_1!36189 (get!21929 lt!2294060))))))

(declare-fun b!5773913 () Bool)

(declare-fun e!3546902 () Option!15798)

(assert (=> b!5773913 (= e!3546902 e!3546904)))

(declare-fun c!1021192 () Bool)

(assert (=> b!5773913 (= c!1021192 ((_ is Nil!63542) s!2326))))

(declare-fun b!5773915 () Bool)

(assert (=> b!5773915 (= e!3546901 (= (++!14006 (_1!36189 (get!21929 lt!2294060)) (_2!36189 (get!21929 lt!2294060))) s!2326))))

(declare-fun b!5773916 () Bool)

(declare-fun e!3546900 () Bool)

(assert (=> b!5773916 (= e!3546900 (not (isDefined!12501 lt!2294060)))))

(declare-fun b!5773917 () Bool)

(declare-fun e!3546903 () Bool)

(assert (=> b!5773917 (= e!3546903 (matchR!7974 (regTwo!32090 r!7292) s!2326))))

(declare-fun b!5773918 () Bool)

(assert (=> b!5773918 (= e!3546904 None!15797)))

(declare-fun b!5773919 () Bool)

(assert (=> b!5773919 (= e!3546902 (Some!15797 (tuple2!65773 Nil!63542 s!2326)))))

(declare-fun b!5773914 () Bool)

(declare-fun res!2437033 () Bool)

(assert (=> b!5773914 (=> (not res!2437033) (not e!3546901))))

(assert (=> b!5773914 (= res!2437033 (matchR!7974 (regTwo!32090 r!7292) (_2!36189 (get!21929 lt!2294060))))))

(declare-fun d!1818088 () Bool)

(assert (=> d!1818088 e!3546900))

(declare-fun res!2437036 () Bool)

(assert (=> d!1818088 (=> res!2437036 e!3546900)))

(assert (=> d!1818088 (= res!2437036 e!3546901)))

(declare-fun res!2437034 () Bool)

(assert (=> d!1818088 (=> (not res!2437034) (not e!3546901))))

(assert (=> d!1818088 (= res!2437034 (isDefined!12501 lt!2294060))))

(assert (=> d!1818088 (= lt!2294060 e!3546902)))

(declare-fun c!1021191 () Bool)

(assert (=> d!1818088 (= c!1021191 e!3546903)))

(declare-fun res!2437035 () Bool)

(assert (=> d!1818088 (=> (not res!2437035) (not e!3546903))))

(assert (=> d!1818088 (= res!2437035 (matchR!7974 (regOne!32090 r!7292) Nil!63542))))

(assert (=> d!1818088 (validRegex!7525 (regOne!32090 r!7292))))

(assert (=> d!1818088 (= (findConcatSeparation!2212 (regOne!32090 r!7292) (regTwo!32090 r!7292) Nil!63542 s!2326 s!2326) lt!2294060)))

(assert (= (and d!1818088 res!2437035) b!5773917))

(assert (= (and d!1818088 c!1021191) b!5773919))

(assert (= (and d!1818088 (not c!1021191)) b!5773913))

(assert (= (and b!5773913 c!1021192) b!5773918))

(assert (= (and b!5773913 (not c!1021192)) b!5773911))

(assert (= (and d!1818088 res!2437034) b!5773912))

(assert (= (and b!5773912 res!2437037) b!5773914))

(assert (= (and b!5773914 res!2437033) b!5773915))

(assert (= (and d!1818088 (not res!2437036)) b!5773916))

(assert (=> b!5773911 m!6718510))

(assert (=> b!5773911 m!6718510))

(assert (=> b!5773911 m!6718512))

(assert (=> b!5773911 m!6718516))

(assert (=> b!5773911 m!6718510))

(declare-fun m!6718956 () Bool)

(assert (=> b!5773911 m!6718956))

(declare-fun m!6718958 () Bool)

(assert (=> b!5773916 m!6718958))

(assert (=> d!1818088 m!6718958))

(declare-fun m!6718960 () Bool)

(assert (=> d!1818088 m!6718960))

(declare-fun m!6718962 () Bool)

(assert (=> d!1818088 m!6718962))

(declare-fun m!6718964 () Bool)

(assert (=> b!5773917 m!6718964))

(declare-fun m!6718966 () Bool)

(assert (=> b!5773912 m!6718966))

(declare-fun m!6718968 () Bool)

(assert (=> b!5773912 m!6718968))

(assert (=> b!5773914 m!6718966))

(declare-fun m!6718970 () Bool)

(assert (=> b!5773914 m!6718970))

(assert (=> b!5773915 m!6718966))

(declare-fun m!6718972 () Bool)

(assert (=> b!5773915 m!6718972))

(assert (=> b!5772932 d!1818088))

(declare-fun d!1818092 () Bool)

(assert (=> d!1818092 (= (Exists!2889 lambda!314341) (choose!43821 lambda!314341))))

(declare-fun bs!1354674 () Bool)

(assert (= bs!1354674 d!1818092))

(declare-fun m!6718974 () Bool)

(assert (=> bs!1354674 m!6718974))

(assert (=> b!5772932 d!1818092))

(declare-fun d!1818094 () Bool)

(assert (=> d!1818094 (= (Exists!2889 lambda!314342) (choose!43821 lambda!314342))))

(declare-fun bs!1354675 () Bool)

(assert (= bs!1354675 d!1818094))

(declare-fun m!6718976 () Bool)

(assert (=> bs!1354675 m!6718976))

(assert (=> b!5772932 d!1818094))

(declare-fun bs!1354676 () Bool)

(declare-fun d!1818096 () Bool)

(assert (= bs!1354676 (and d!1818096 b!5772936)))

(declare-fun lambda!314446 () Int)

(assert (=> bs!1354676 (not (= lambda!314446 lambda!314364))))

(declare-fun bs!1354677 () Bool)

(assert (= bs!1354677 (and d!1818096 b!5772932)))

(assert (=> bs!1354677 (not (= lambda!314446 lambda!314342))))

(declare-fun bs!1354678 () Bool)

(assert (= bs!1354678 (and d!1818096 d!1818064)))

(assert (=> bs!1354678 (= (and (= s!2326 (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542))) (= (regOne!32090 r!7292) (reg!16118 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) (Star!15789 (reg!16118 (regOne!32090 r!7292))))) (= lambda!314446 lambda!314442))))

(assert (=> bs!1354676 (= (= (regOne!32090 r!7292) lt!2293787) (= lambda!314446 lambda!314360))))

(declare-fun bs!1354679 () Bool)

(assert (= bs!1354679 (and d!1818096 b!5772964)))

(assert (=> bs!1354679 (= (and (= (regOne!32090 r!7292) (regTwo!32090 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293738)) (= lambda!314446 lambda!314350))))

(declare-fun bs!1354680 () Bool)

(assert (= bs!1354680 (and d!1818096 b!5773263)))

(assert (=> bs!1354680 (not (= lambda!314446 lambda!314380))))

(declare-fun bs!1354682 () Bool)

(assert (= bs!1354682 (and d!1818096 b!5773505)))

(assert (=> bs!1354682 (not (= lambda!314446 lambda!314413))))

(assert (=> bs!1354676 (not (= lambda!314446 lambda!314361))))

(declare-fun bs!1354683 () Bool)

(assert (= bs!1354683 (and d!1818096 b!5773764)))

(assert (=> bs!1354683 (not (= lambda!314446 lambda!314434))))

(assert (=> bs!1354676 (= (and (= s!2326 (_1!36189 lt!2293718)) (= (regOne!32090 r!7292) (reg!16118 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293701)) (= lambda!314446 lambda!314362))))

(assert (=> bs!1354679 (not (= lambda!314446 lambda!314351))))

(declare-fun bs!1354684 () Bool)

(assert (= bs!1354684 (and d!1818096 b!5773497)))

(assert (=> bs!1354684 (not (= lambda!314446 lambda!314415))))

(declare-fun bs!1354685 () Bool)

(assert (= bs!1354685 (and d!1818096 b!5772969)))

(assert (=> bs!1354685 (= (and (= s!2326 (_1!36189 lt!2293843)) (= (regOne!32090 r!7292) (reg!16118 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293701)) (= lambda!314446 lambda!314354))))

(assert (=> bs!1354685 (not (= lambda!314446 lambda!314355))))

(assert (=> bs!1354685 (not (= lambda!314446 lambda!314356))))

(assert (=> bs!1354678 (not (= lambda!314446 lambda!314444))))

(declare-fun bs!1354686 () Bool)

(assert (= bs!1354686 (and d!1818096 d!1818024)))

(assert (=> bs!1354686 (not (= lambda!314446 lambda!314427))))

(declare-fun bs!1354687 () Bool)

(assert (= bs!1354687 (and d!1818096 b!5772937)))

(assert (=> bs!1354687 (= (and (= (regOne!32090 r!7292) (regOne!32090 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293835)) (= lambda!314446 lambda!314344))))

(declare-fun bs!1354688 () Bool)

(assert (= bs!1354688 (and d!1818096 b!5773278)))

(assert (=> bs!1354688 (not (= lambda!314446 lambda!314384))))

(assert (=> bs!1354679 (not (= lambda!314446 lambda!314349))))

(assert (=> bs!1354687 (= (and (= (regOne!32090 r!7292) (regTwo!32090 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293776)) (= lambda!314446 lambda!314346))))

(declare-fun bs!1354689 () Bool)

(assert (= bs!1354689 (and d!1818096 b!5773255)))

(assert (=> bs!1354689 (not (= lambda!314446 lambda!314383))))

(declare-fun bs!1354690 () Bool)

(assert (= bs!1354690 (and d!1818096 b!5772950)))

(assert (=> bs!1354690 (= (and (= s!2326 Nil!63542) (= (regOne!32090 r!7292) (reg!16118 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293701)) (= lambda!314446 lambda!314365))))

(declare-fun bs!1354691 () Bool)

(assert (= bs!1354691 (and d!1818096 b!5773756)))

(assert (=> bs!1354691 (not (= lambda!314446 lambda!314435))))

(assert (=> bs!1354690 (not (= lambda!314446 lambda!314367))))

(assert (=> bs!1354687 (not (= lambda!314446 lambda!314345))))

(declare-fun bs!1354692 () Bool)

(assert (= bs!1354692 (and d!1818096 b!5772956)))

(assert (=> bs!1354692 (not (= lambda!314446 lambda!314353))))

(assert (=> bs!1354690 (not (= lambda!314446 lambda!314366))))

(assert (=> bs!1354676 (not (= lambda!314446 lambda!314363))))

(assert (=> bs!1354679 (= (and (= (regOne!32090 r!7292) (regOne!32090 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293831)) (= lambda!314446 lambda!314348))))

(assert (=> bs!1354686 (= (and (= s!2326 (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718)))) (= (regOne!32090 r!7292) (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292))))) (= (regTwo!32090 r!7292) (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293738 lt!2293701)))) (= lambda!314446 lambda!314426))))

(declare-fun bs!1354693 () Bool)

(assert (= bs!1354693 (and d!1818096 d!1817950)))

(assert (=> bs!1354693 (not (= lambda!314446 lambda!314411))))

(assert (=> bs!1354687 (not (= lambda!314446 lambda!314347))))

(assert (=> bs!1354677 (= lambda!314446 lambda!314341)))

(assert (=> bs!1354693 (= (and (= s!2326 (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542)) (= (regOne!32090 r!7292) (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292))))))) (= (regTwo!32090 r!7292) (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293831 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))))) (= lambda!314446 lambda!314409))))

(assert (=> bs!1354692 (= (= (regOne!32090 r!7292) lt!2293701) (= lambda!314446 lambda!314352))))

(declare-fun bs!1354694 () Bool)

(assert (= bs!1354694 (and d!1818096 d!1818050)))

(assert (=> bs!1354694 (= (and (= s!2326 (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718)))) (= (regOne!32090 r!7292) (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))) (= (regTwo!32090 r!7292) (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 lt!2293701)))) (= lambda!314446 lambda!314433))))

(declare-fun bs!1354695 () Bool)

(assert (= bs!1354695 (and d!1818096 b!5773270)))

(assert (=> bs!1354695 (not (= lambda!314446 lambda!314386))))

(assert (=> d!1818096 true))

(assert (=> d!1818096 true))

(assert (=> d!1818096 true))

(assert (=> d!1818096 (= (isDefined!12501 (findConcatSeparation!2212 (regOne!32090 r!7292) (regTwo!32090 r!7292) Nil!63542 s!2326 s!2326)) (Exists!2889 lambda!314446))))

(declare-fun lt!2294063 () Unit!156778)

(assert (=> d!1818096 (= lt!2294063 (choose!43840 (regOne!32090 r!7292) (regTwo!32090 r!7292) s!2326))))

(assert (=> d!1818096 (validRegex!7525 (regOne!32090 r!7292))))

(assert (=> d!1818096 (= (lemmaFindConcatSeparationEquivalentToExists!1976 (regOne!32090 r!7292) (regTwo!32090 r!7292) s!2326) lt!2294063)))

(declare-fun bs!1354696 () Bool)

(assert (= bs!1354696 d!1818096))

(assert (=> bs!1354696 m!6717670))

(assert (=> bs!1354696 m!6717672))

(declare-fun m!6719014 () Bool)

(assert (=> bs!1354696 m!6719014))

(assert (=> bs!1354696 m!6718962))

(assert (=> bs!1354696 m!6717670))

(declare-fun m!6719016 () Bool)

(assert (=> bs!1354696 m!6719016))

(assert (=> b!5772932 d!1818096))

(declare-fun bs!1354697 () Bool)

(declare-fun d!1818104 () Bool)

(assert (= bs!1354697 (and d!1818104 b!5772936)))

(declare-fun lambda!314447 () Int)

(assert (=> bs!1354697 (not (= lambda!314447 lambda!314364))))

(declare-fun bs!1354698 () Bool)

(assert (= bs!1354698 (and d!1818104 b!5772932)))

(assert (=> bs!1354698 (not (= lambda!314447 lambda!314342))))

(declare-fun bs!1354699 () Bool)

(assert (= bs!1354699 (and d!1818104 d!1818064)))

(assert (=> bs!1354699 (= (and (= s!2326 (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542))) (= (regOne!32090 r!7292) (reg!16118 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) (Star!15789 (reg!16118 (regOne!32090 r!7292))))) (= lambda!314447 lambda!314442))))

(assert (=> bs!1354697 (= (= (regOne!32090 r!7292) lt!2293787) (= lambda!314447 lambda!314360))))

(declare-fun bs!1354700 () Bool)

(assert (= bs!1354700 (and d!1818104 b!5772964)))

(assert (=> bs!1354700 (= (and (= (regOne!32090 r!7292) (regTwo!32090 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293738)) (= lambda!314447 lambda!314350))))

(declare-fun bs!1354701 () Bool)

(assert (= bs!1354701 (and d!1818104 b!5773263)))

(assert (=> bs!1354701 (not (= lambda!314447 lambda!314380))))

(declare-fun bs!1354702 () Bool)

(assert (= bs!1354702 (and d!1818104 b!5773505)))

(assert (=> bs!1354702 (not (= lambda!314447 lambda!314413))))

(assert (=> bs!1354697 (not (= lambda!314447 lambda!314361))))

(declare-fun bs!1354703 () Bool)

(assert (= bs!1354703 (and d!1818104 b!5773764)))

(assert (=> bs!1354703 (not (= lambda!314447 lambda!314434))))

(assert (=> bs!1354697 (= (and (= s!2326 (_1!36189 lt!2293718)) (= (regOne!32090 r!7292) (reg!16118 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293701)) (= lambda!314447 lambda!314362))))

(assert (=> bs!1354700 (not (= lambda!314447 lambda!314351))))

(declare-fun bs!1354704 () Bool)

(assert (= bs!1354704 (and d!1818104 b!5773497)))

(assert (=> bs!1354704 (not (= lambda!314447 lambda!314415))))

(declare-fun bs!1354705 () Bool)

(assert (= bs!1354705 (and d!1818104 b!5772969)))

(assert (=> bs!1354705 (= (and (= s!2326 (_1!36189 lt!2293843)) (= (regOne!32090 r!7292) (reg!16118 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293701)) (= lambda!314447 lambda!314354))))

(assert (=> bs!1354705 (not (= lambda!314447 lambda!314355))))

(assert (=> bs!1354705 (not (= lambda!314447 lambda!314356))))

(assert (=> bs!1354699 (not (= lambda!314447 lambda!314444))))

(declare-fun bs!1354706 () Bool)

(assert (= bs!1354706 (and d!1818104 d!1818024)))

(assert (=> bs!1354706 (not (= lambda!314447 lambda!314427))))

(declare-fun bs!1354707 () Bool)

(assert (= bs!1354707 (and d!1818104 b!5772937)))

(assert (=> bs!1354707 (= (and (= (regOne!32090 r!7292) (regOne!32090 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293835)) (= lambda!314447 lambda!314344))))

(declare-fun bs!1354708 () Bool)

(assert (= bs!1354708 (and d!1818104 b!5773278)))

(assert (=> bs!1354708 (not (= lambda!314447 lambda!314384))))

(assert (=> bs!1354700 (not (= lambda!314447 lambda!314349))))

(assert (=> bs!1354707 (= (and (= (regOne!32090 r!7292) (regTwo!32090 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293776)) (= lambda!314447 lambda!314346))))

(declare-fun bs!1354709 () Bool)

(assert (= bs!1354709 (and d!1818104 b!5773255)))

(assert (=> bs!1354709 (not (= lambda!314447 lambda!314383))))

(declare-fun bs!1354710 () Bool)

(assert (= bs!1354710 (and d!1818104 b!5772950)))

(assert (=> bs!1354710 (= (and (= s!2326 Nil!63542) (= (regOne!32090 r!7292) (reg!16118 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293701)) (= lambda!314447 lambda!314365))))

(declare-fun bs!1354711 () Bool)

(assert (= bs!1354711 (and d!1818104 b!5773756)))

(assert (=> bs!1354711 (not (= lambda!314447 lambda!314435))))

(assert (=> bs!1354710 (not (= lambda!314447 lambda!314367))))

(assert (=> bs!1354707 (not (= lambda!314447 lambda!314345))))

(declare-fun bs!1354712 () Bool)

(assert (= bs!1354712 (and d!1818104 b!5772956)))

(assert (=> bs!1354712 (not (= lambda!314447 lambda!314353))))

(assert (=> bs!1354710 (not (= lambda!314447 lambda!314366))))

(assert (=> bs!1354697 (not (= lambda!314447 lambda!314363))))

(assert (=> bs!1354700 (= (and (= (regOne!32090 r!7292) (regOne!32090 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293831)) (= lambda!314447 lambda!314348))))

(assert (=> bs!1354706 (= (and (= s!2326 (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718)))) (= (regOne!32090 r!7292) (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292))))) (= (regTwo!32090 r!7292) (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293738 lt!2293701)))) (= lambda!314447 lambda!314426))))

(declare-fun bs!1354713 () Bool)

(assert (= bs!1354713 (and d!1818104 d!1817950)))

(assert (=> bs!1354713 (not (= lambda!314447 lambda!314411))))

(assert (=> bs!1354707 (not (= lambda!314447 lambda!314347))))

(assert (=> bs!1354698 (= lambda!314447 lambda!314341)))

(declare-fun bs!1354714 () Bool)

(assert (= bs!1354714 (and d!1818104 d!1818096)))

(assert (=> bs!1354714 (= lambda!314447 lambda!314446)))

(assert (=> bs!1354713 (= (and (= s!2326 (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542)) (= (regOne!32090 r!7292) (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292))))))) (= (regTwo!32090 r!7292) (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293831 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))))) (= lambda!314447 lambda!314409))))

(assert (=> bs!1354712 (= (= (regOne!32090 r!7292) lt!2293701) (= lambda!314447 lambda!314352))))

(declare-fun bs!1354715 () Bool)

(assert (= bs!1354715 (and d!1818104 d!1818050)))

(assert (=> bs!1354715 (= (and (= s!2326 (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718)))) (= (regOne!32090 r!7292) (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))) (= (regTwo!32090 r!7292) (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 lt!2293701)))) (= lambda!314447 lambda!314433))))

(declare-fun bs!1354716 () Bool)

(assert (= bs!1354716 (and d!1818104 b!5773270)))

(assert (=> bs!1354716 (not (= lambda!314447 lambda!314386))))

(assert (=> d!1818104 true))

(assert (=> d!1818104 true))

(assert (=> d!1818104 true))

(declare-fun lambda!314448 () Int)

(assert (=> bs!1354697 (not (= lambda!314448 lambda!314364))))

(assert (=> bs!1354698 (= lambda!314448 lambda!314342)))

(assert (=> bs!1354699 (not (= lambda!314448 lambda!314442))))

(assert (=> bs!1354697 (not (= lambda!314448 lambda!314360))))

(assert (=> bs!1354700 (not (= lambda!314448 lambda!314350))))

(assert (=> bs!1354701 (not (= lambda!314448 lambda!314380))))

(assert (=> bs!1354702 (not (= lambda!314448 lambda!314413))))

(assert (=> bs!1354697 (= (= (regOne!32090 r!7292) lt!2293787) (= lambda!314448 lambda!314361))))

(assert (=> bs!1354703 (not (= lambda!314448 lambda!314434))))

(assert (=> bs!1354697 (not (= lambda!314448 lambda!314362))))

(assert (=> bs!1354700 (= (and (= (regOne!32090 r!7292) (regTwo!32090 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293738)) (= lambda!314448 lambda!314351))))

(assert (=> bs!1354704 (= (and (= s!2326 (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020900 (_1!36189 lt!2293718) Nil!63542) s!2326))) (= (regOne!32090 r!7292) (regOne!32090 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292))))))) (= (regTwo!32090 r!7292) (regTwo!32090 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))))) (= lambda!314448 lambda!314415))))

(assert (=> bs!1354705 (not (= lambda!314448 lambda!314354))))

(assert (=> bs!1354705 (not (= lambda!314448 lambda!314355))))

(assert (=> bs!1354705 (= (and (= s!2326 (_1!36189 lt!2293843)) (= (regOne!32090 r!7292) (reg!16118 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293701)) (= lambda!314448 lambda!314356))))

(assert (=> bs!1354699 (not (= lambda!314448 lambda!314444))))

(assert (=> bs!1354706 (= (and (= s!2326 (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718)))) (= (regOne!32090 r!7292) (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292))))) (= (regTwo!32090 r!7292) (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293738 lt!2293701)))) (= lambda!314448 lambda!314427))))

(assert (=> bs!1354707 (not (= lambda!314448 lambda!314344))))

(assert (=> bs!1354708 (not (= lambda!314448 lambda!314384))))

(assert (=> bs!1354700 (= (and (= (regOne!32090 r!7292) (regOne!32090 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293831)) (= lambda!314448 lambda!314349))))

(assert (=> bs!1354707 (not (= lambda!314448 lambda!314346))))

(assert (=> bs!1354709 (= (and (= (regOne!32090 r!7292) (regOne!32090 lt!2293730)) (= (regTwo!32090 r!7292) (regTwo!32090 lt!2293730))) (= lambda!314448 lambda!314383))))

(assert (=> bs!1354710 (not (= lambda!314448 lambda!314365))))

(assert (=> bs!1354711 (= (and (= (regOne!32090 r!7292) (regOne!32090 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292))))))) (= (regTwo!32090 r!7292) (regTwo!32090 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))))) (= lambda!314448 lambda!314435))))

(assert (=> bs!1354710 (not (= lambda!314448 lambda!314367))))

(assert (=> bs!1354707 (= (and (= (regOne!32090 r!7292) (regOne!32090 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293835)) (= lambda!314448 lambda!314345))))

(assert (=> bs!1354712 (= (= (regOne!32090 r!7292) lt!2293701) (= lambda!314448 lambda!314353))))

(assert (=> bs!1354710 (= (and (= s!2326 Nil!63542) (= (regOne!32090 r!7292) (reg!16118 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293701)) (= lambda!314448 lambda!314366))))

(assert (=> bs!1354697 (= (and (= s!2326 (_1!36189 lt!2293718)) (= (regOne!32090 r!7292) (reg!16118 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293701)) (= lambda!314448 lambda!314363))))

(declare-fun bs!1354717 () Bool)

(assert (= bs!1354717 d!1818104))

(assert (=> bs!1354717 (not (= lambda!314448 lambda!314447))))

(assert (=> bs!1354700 (not (= lambda!314448 lambda!314348))))

(assert (=> bs!1354706 (not (= lambda!314448 lambda!314426))))

(assert (=> bs!1354713 (= (and (= s!2326 (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542)) (= (regOne!32090 r!7292) (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292))))))) (= (regTwo!32090 r!7292) (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293831 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))))) (= lambda!314448 lambda!314411))))

(assert (=> bs!1354707 (= (and (= (regOne!32090 r!7292) (regTwo!32090 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293776)) (= lambda!314448 lambda!314347))))

(assert (=> bs!1354698 (not (= lambda!314448 lambda!314341))))

(assert (=> bs!1354714 (not (= lambda!314448 lambda!314446))))

(assert (=> bs!1354713 (not (= lambda!314448 lambda!314409))))

(assert (=> bs!1354712 (not (= lambda!314448 lambda!314352))))

(assert (=> bs!1354715 (not (= lambda!314448 lambda!314433))))

(assert (=> bs!1354716 (= (and (= s!2326 (ite c!1020902 s!2326 (ite c!1020903 (_1!36189 lt!2293843) s!2326))) (= (regOne!32090 r!7292) (regOne!32090 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736)))) (= (regTwo!32090 r!7292) (regTwo!32090 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736))))) (= lambda!314448 lambda!314386))))

(assert (=> d!1818104 true))

(assert (=> d!1818104 true))

(assert (=> d!1818104 true))

(assert (=> d!1818104 (= (Exists!2889 lambda!314447) (Exists!2889 lambda!314448))))

(declare-fun lt!2294069 () Unit!156778)

(assert (=> d!1818104 (= lt!2294069 (choose!43832 (regOne!32090 r!7292) (regTwo!32090 r!7292) s!2326))))

(assert (=> d!1818104 (validRegex!7525 (regOne!32090 r!7292))))

(assert (=> d!1818104 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1518 (regOne!32090 r!7292) (regTwo!32090 r!7292) s!2326) lt!2294069)))

(declare-fun m!6719018 () Bool)

(assert (=> bs!1354717 m!6719018))

(declare-fun m!6719020 () Bool)

(assert (=> bs!1354717 m!6719020))

(declare-fun m!6719022 () Bool)

(assert (=> bs!1354717 m!6719022))

(assert (=> bs!1354717 m!6718962))

(assert (=> b!5772932 d!1818104))

(declare-fun d!1818106 () Bool)

(assert (=> d!1818106 (= (isDefined!12501 (findConcatSeparation!2212 (regOne!32090 r!7292) (regTwo!32090 r!7292) Nil!63542 s!2326 s!2326)) (not (isEmpty!35443 (findConcatSeparation!2212 (regOne!32090 r!7292) (regTwo!32090 r!7292) Nil!63542 s!2326 s!2326))))))

(declare-fun bs!1354718 () Bool)

(assert (= bs!1354718 d!1818106))

(assert (=> bs!1354718 m!6717670))

(declare-fun m!6719024 () Bool)

(assert (=> bs!1354718 m!6719024))

(assert (=> b!5772932 d!1818106))

(declare-fun d!1818108 () Bool)

(declare-fun e!3546924 () Bool)

(assert (=> d!1818108 e!3546924))

(declare-fun res!2437058 () Bool)

(assert (=> d!1818108 (=> (not res!2437058) (not e!3546924))))

(declare-fun lt!2294076 () List!63666)

(assert (=> d!1818108 (= res!2437058 (= (content!11606 lt!2294076) ((_ map or) (content!11606 (ite c!1020903 lt!2293793 (_1!36189 lt!2293851))) (content!11606 (ite c!1020903 (_2!36189 lt!2293843) (_2!36189 lt!2293851))))))))

(declare-fun e!3546925 () List!63666)

(assert (=> d!1818108 (= lt!2294076 e!3546925)))

(declare-fun c!1021201 () Bool)

(assert (=> d!1818108 (= c!1021201 ((_ is Nil!63542) (ite c!1020903 lt!2293793 (_1!36189 lt!2293851))))))

(assert (=> d!1818108 (= (++!14006 (ite c!1020903 lt!2293793 (_1!36189 lt!2293851)) (ite c!1020903 (_2!36189 lt!2293843) (_2!36189 lt!2293851))) lt!2294076)))

(declare-fun b!5773959 () Bool)

(assert (=> b!5773959 (= e!3546924 (or (not (= (ite c!1020903 (_2!36189 lt!2293843) (_2!36189 lt!2293851)) Nil!63542)) (= lt!2294076 (ite c!1020903 lt!2293793 (_1!36189 lt!2293851)))))))

(declare-fun b!5773958 () Bool)

(declare-fun res!2437059 () Bool)

(assert (=> b!5773958 (=> (not res!2437059) (not e!3546924))))

(assert (=> b!5773958 (= res!2437059 (= (size!40082 lt!2294076) (+ (size!40082 (ite c!1020903 lt!2293793 (_1!36189 lt!2293851))) (size!40082 (ite c!1020903 (_2!36189 lt!2293843) (_2!36189 lt!2293851))))))))

(declare-fun b!5773956 () Bool)

(assert (=> b!5773956 (= e!3546925 (ite c!1020903 (_2!36189 lt!2293843) (_2!36189 lt!2293851)))))

(declare-fun b!5773957 () Bool)

(assert (=> b!5773957 (= e!3546925 (Cons!63542 (h!69990 (ite c!1020903 lt!2293793 (_1!36189 lt!2293851))) (++!14006 (t!377004 (ite c!1020903 lt!2293793 (_1!36189 lt!2293851))) (ite c!1020903 (_2!36189 lt!2293843) (_2!36189 lt!2293851)))))))

(assert (= (and d!1818108 c!1021201) b!5773956))

(assert (= (and d!1818108 (not c!1021201)) b!5773957))

(assert (= (and d!1818108 res!2437058) b!5773958))

(assert (= (and b!5773958 res!2437059) b!5773959))

(declare-fun m!6719026 () Bool)

(assert (=> d!1818108 m!6719026))

(declare-fun m!6719028 () Bool)

(assert (=> d!1818108 m!6719028))

(declare-fun m!6719030 () Bool)

(assert (=> d!1818108 m!6719030))

(declare-fun m!6719032 () Bool)

(assert (=> b!5773958 m!6719032))

(declare-fun m!6719034 () Bool)

(assert (=> b!5773958 m!6719034))

(declare-fun m!6719036 () Bool)

(assert (=> b!5773958 m!6719036))

(declare-fun m!6719038 () Bool)

(assert (=> b!5773957 m!6719038))

(assert (=> bm!446983 d!1818108))

(declare-fun bs!1354719 () Bool)

(declare-fun d!1818110 () Bool)

(assert (= bs!1354719 (and d!1818110 d!1817836)))

(declare-fun lambda!314451 () Int)

(assert (=> bs!1354719 (= lambda!314451 lambda!314370)))

(declare-fun bs!1354720 () Bool)

(assert (= bs!1354720 (and d!1818110 b!5772936)))

(assert (=> bs!1354720 (= lambda!314451 lambda!314359)))

(declare-fun bs!1354721 () Bool)

(assert (= bs!1354721 (and d!1818110 d!1818022)))

(assert (=> bs!1354721 (= lambda!314451 lambda!314425)))

(declare-fun bs!1354722 () Bool)

(assert (= bs!1354722 (and d!1818110 b!5772969)))

(assert (=> bs!1354722 (= lambda!314451 lambda!314357)))

(declare-fun bs!1354723 () Bool)

(assert (= bs!1354723 (and d!1818110 d!1817906)))

(assert (=> bs!1354723 (= lambda!314451 lambda!314393)))

(declare-fun bs!1354724 () Bool)

(assert (= bs!1354724 (and d!1818110 d!1817966)))

(assert (=> bs!1354724 (= lambda!314451 lambda!314416)))

(declare-fun bs!1354725 () Bool)

(assert (= bs!1354725 (and d!1818110 d!1817920)))

(assert (=> bs!1354725 (= lambda!314451 lambda!314397)))

(declare-fun bs!1354726 () Bool)

(assert (= bs!1354726 (and d!1818110 d!1817918)))

(assert (=> bs!1354726 (= lambda!314451 lambda!314394)))

(declare-fun bs!1354727 () Bool)

(assert (= bs!1354727 (and d!1818110 d!1817900)))

(assert (=> bs!1354727 (= lambda!314451 lambda!314390)))

(assert (=> d!1818110 (matchZipper!1927 (store ((as const (Array Context!10346 Bool)) false) (Context!10347 (++!14007 (exprs!5673 lt!2293775) (exprs!5673 lt!2293814))) true) (++!14006 (ite c!1020903 (_1!36189 lt!2293864) (_1!36189 lt!2293851)) (ite c!1020903 lt!2293716 (_2!36189 lt!2293851))))))

(declare-fun lt!2294085 () Unit!156778)

(assert (=> d!1818110 (= lt!2294085 (lemmaConcatPreservesForall!324 (exprs!5673 lt!2293775) (exprs!5673 lt!2293814) lambda!314451))))

(declare-fun lt!2294084 () Unit!156778)

(declare-fun choose!43847 (Context!10346 Context!10346 List!63666 List!63666) Unit!156778)

(assert (=> d!1818110 (= lt!2294084 (choose!43847 lt!2293775 lt!2293814 (ite c!1020903 (_1!36189 lt!2293864) (_1!36189 lt!2293851)) (ite c!1020903 lt!2293716 (_2!36189 lt!2293851))))))

(assert (=> d!1818110 (matchZipper!1927 (store ((as const (Array Context!10346 Bool)) false) lt!2293775 true) (ite c!1020903 (_1!36189 lt!2293864) (_1!36189 lt!2293851)))))

(assert (=> d!1818110 (= (lemmaConcatenateContextMatchesConcatOfStrings!154 lt!2293775 lt!2293814 (ite c!1020903 (_1!36189 lt!2293864) (_1!36189 lt!2293851)) (ite c!1020903 lt!2293716 (_2!36189 lt!2293851))) lt!2294084)))

(declare-fun bs!1354728 () Bool)

(assert (= bs!1354728 d!1818110))

(declare-fun m!6719064 () Bool)

(assert (=> bs!1354728 m!6719064))

(assert (=> bs!1354728 m!6717710))

(declare-fun m!6719066 () Bool)

(assert (=> bs!1354728 m!6719066))

(declare-fun m!6719068 () Bool)

(assert (=> bs!1354728 m!6719068))

(assert (=> bs!1354728 m!6717710))

(declare-fun m!6719070 () Bool)

(assert (=> bs!1354728 m!6719070))

(declare-fun m!6719072 () Bool)

(assert (=> bs!1354728 m!6719072))

(declare-fun m!6719074 () Bool)

(assert (=> bs!1354728 m!6719074))

(assert (=> bs!1354728 m!6719070))

(assert (=> bs!1354728 m!6719068))

(declare-fun m!6719076 () Bool)

(assert (=> bs!1354728 m!6719076))

(assert (=> bm!446999 d!1818110))

(declare-fun d!1818114 () Bool)

(declare-fun c!1021204 () Bool)

(assert (=> d!1818114 (= c!1021204 (isEmpty!35440 (t!377004 s!2326)))))

(declare-fun e!3546931 () Bool)

(assert (=> d!1818114 (= (matchZipper!1927 (ite c!1020902 ((_ map or) lt!2293711 lt!2293761) lt!2293874) (t!377004 s!2326)) e!3546931)))

(declare-fun b!5773969 () Bool)

(assert (=> b!5773969 (= e!3546931 (nullableZipper!1711 (ite c!1020902 ((_ map or) lt!2293711 lt!2293761) lt!2293874)))))

(declare-fun b!5773970 () Bool)

(assert (=> b!5773970 (= e!3546931 (matchZipper!1927 (derivationStepZipper!1864 (ite c!1020902 ((_ map or) lt!2293711 lt!2293761) lt!2293874) (head!12204 (t!377004 s!2326))) (tail!11299 (t!377004 s!2326))))))

(assert (= (and d!1818114 c!1021204) b!5773969))

(assert (= (and d!1818114 (not c!1021204)) b!5773970))

(assert (=> d!1818114 m!6718094))

(declare-fun m!6719078 () Bool)

(assert (=> b!5773969 m!6719078))

(assert (=> b!5773970 m!6718098))

(assert (=> b!5773970 m!6718098))

(declare-fun m!6719080 () Bool)

(assert (=> b!5773970 m!6719080))

(assert (=> b!5773970 m!6718102))

(assert (=> b!5773970 m!6719080))

(assert (=> b!5773970 m!6718102))

(declare-fun m!6719082 () Bool)

(assert (=> b!5773970 m!6719082))

(assert (=> bm!447030 d!1818114))

(assert (=> bm!447077 d!1817898))

(declare-fun d!1818116 () Bool)

(assert (=> d!1818116 (matchR!7974 (Concat!24634 (ite c!1020903 lt!2293701 (reg!16118 (regOne!32090 r!7292))) (ite c!1020903 (regTwo!32090 r!7292) lt!2293804)) (++!14006 (ite c!1020903 (_2!36189 lt!2293864) (_1!36189 lt!2293851)) (ite c!1020903 (_2!36189 lt!2293843) (_2!36189 lt!2293851))))))

(declare-fun lt!2294093 () Unit!156778)

(declare-fun choose!43850 (Regex!15789 Regex!15789 List!63666 List!63666) Unit!156778)

(assert (=> d!1818116 (= lt!2294093 (choose!43850 (ite c!1020903 lt!2293701 (reg!16118 (regOne!32090 r!7292))) (ite c!1020903 (regTwo!32090 r!7292) lt!2293804) (ite c!1020903 (_2!36189 lt!2293864) (_1!36189 lt!2293851)) (ite c!1020903 (_2!36189 lt!2293843) (_2!36189 lt!2293851))))))

(declare-fun e!3546947 () Bool)

(assert (=> d!1818116 e!3546947))

(declare-fun res!2437078 () Bool)

(assert (=> d!1818116 (=> (not res!2437078) (not e!3546947))))

(assert (=> d!1818116 (= res!2437078 (validRegex!7525 (ite c!1020903 lt!2293701 (reg!16118 (regOne!32090 r!7292)))))))

(assert (=> d!1818116 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!294 (ite c!1020903 lt!2293701 (reg!16118 (regOne!32090 r!7292))) (ite c!1020903 (regTwo!32090 r!7292) lt!2293804) (ite c!1020903 (_2!36189 lt!2293864) (_1!36189 lt!2293851)) (ite c!1020903 (_2!36189 lt!2293843) (_2!36189 lt!2293851))) lt!2294093)))

(declare-fun b!5773998 () Bool)

(assert (=> b!5773998 (= e!3546947 (validRegex!7525 (ite c!1020903 (regTwo!32090 r!7292) lt!2293804)))))

(assert (= (and d!1818116 res!2437078) b!5773998))

(declare-fun m!6719128 () Bool)

(assert (=> d!1818116 m!6719128))

(assert (=> d!1818116 m!6719128))

(declare-fun m!6719130 () Bool)

(assert (=> d!1818116 m!6719130))

(declare-fun m!6719132 () Bool)

(assert (=> d!1818116 m!6719132))

(declare-fun m!6719134 () Bool)

(assert (=> d!1818116 m!6719134))

(declare-fun m!6719136 () Bool)

(assert (=> b!5773998 m!6719136))

(assert (=> bm!447094 d!1818116))

(declare-fun d!1818130 () Bool)

(assert (=> d!1818130 (= (flatMap!1402 (ite c!1020907 lt!2293894 lt!2293702) (ite c!1020907 lambda!314343 lambda!314343)) (choose!43819 (ite c!1020907 lt!2293894 lt!2293702) (ite c!1020907 lambda!314343 lambda!314343)))))

(declare-fun bs!1354731 () Bool)

(assert (= bs!1354731 d!1818130))

(declare-fun m!6719138 () Bool)

(assert (=> bs!1354731 m!6719138))

(assert (=> bm!447108 d!1818130))

(declare-fun d!1818132 () Bool)

(assert (=> d!1818132 (= (Exists!2889 (ite c!1020910 lambda!314348 (ite c!1020903 lambda!314355 lambda!314363))) (choose!43821 (ite c!1020910 lambda!314348 (ite c!1020903 lambda!314355 lambda!314363))))))

(declare-fun bs!1354732 () Bool)

(assert (= bs!1354732 d!1818132))

(declare-fun m!6719148 () Bool)

(assert (=> bs!1354732 m!6719148))

(assert (=> bm!446971 d!1818132))

(declare-fun bs!1354733 () Bool)

(declare-fun d!1818134 () Bool)

(assert (= bs!1354733 (and d!1818134 b!5772936)))

(declare-fun lambda!314452 () Int)

(assert (=> bs!1354733 (not (= lambda!314452 lambda!314364))))

(declare-fun bs!1354734 () Bool)

(assert (= bs!1354734 (and d!1818134 b!5772932)))

(assert (=> bs!1354734 (not (= lambda!314452 lambda!314342))))

(declare-fun bs!1354735 () Bool)

(assert (= bs!1354735 (and d!1818134 d!1818064)))

(assert (=> bs!1354735 (= (and (= (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542) (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542))) (= (ite (or c!1020907 c!1020910) (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292))))) (reg!16118 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293738 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) (Star!15789 (reg!16118 (regOne!32090 r!7292))))) (= lambda!314452 lambda!314442))))

(assert (=> bs!1354733 (= (and (= (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542) s!2326) (= (ite (or c!1020907 c!1020910) (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292))))) lt!2293787) (= (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293738 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) (regTwo!32090 r!7292))) (= lambda!314452 lambda!314360))))

(declare-fun bs!1354736 () Bool)

(assert (= bs!1354736 (and d!1818134 d!1818104)))

(assert (=> bs!1354736 (not (= lambda!314452 lambda!314448))))

(declare-fun bs!1354737 () Bool)

(assert (= bs!1354737 (and d!1818134 b!5772964)))

(assert (=> bs!1354737 (= (and (= (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542) s!2326) (= (ite (or c!1020907 c!1020910) (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292))))) (regTwo!32090 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293738 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) lt!2293738)) (= lambda!314452 lambda!314350))))

(declare-fun bs!1354738 () Bool)

(assert (= bs!1354738 (and d!1818134 b!5773263)))

(assert (=> bs!1354738 (not (= lambda!314452 lambda!314380))))

(declare-fun bs!1354739 () Bool)

(assert (= bs!1354739 (and d!1818134 b!5773505)))

(assert (=> bs!1354739 (not (= lambda!314452 lambda!314413))))

(assert (=> bs!1354733 (not (= lambda!314452 lambda!314361))))

(declare-fun bs!1354740 () Bool)

(assert (= bs!1354740 (and d!1818134 b!5773764)))

(assert (=> bs!1354740 (not (= lambda!314452 lambda!314434))))

(assert (=> bs!1354733 (= (and (= (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542) (_1!36189 lt!2293718)) (= (ite (or c!1020907 c!1020910) (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292))))) (reg!16118 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293738 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) lt!2293701)) (= lambda!314452 lambda!314362))))

(assert (=> bs!1354737 (not (= lambda!314452 lambda!314351))))

(declare-fun bs!1354741 () Bool)

(assert (= bs!1354741 (and d!1818134 b!5773497)))

(assert (=> bs!1354741 (not (= lambda!314452 lambda!314415))))

(declare-fun bs!1354742 () Bool)

(assert (= bs!1354742 (and d!1818134 b!5772969)))

(assert (=> bs!1354742 (= (and (= (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542) (_1!36189 lt!2293843)) (= (ite (or c!1020907 c!1020910) (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292))))) (reg!16118 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293738 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) lt!2293701)) (= lambda!314452 lambda!314354))))

(assert (=> bs!1354742 (not (= lambda!314452 lambda!314355))))

(assert (=> bs!1354742 (not (= lambda!314452 lambda!314356))))

(assert (=> bs!1354735 (not (= lambda!314452 lambda!314444))))

(declare-fun bs!1354743 () Bool)

(assert (= bs!1354743 (and d!1818134 d!1818024)))

(assert (=> bs!1354743 (not (= lambda!314452 lambda!314427))))

(declare-fun bs!1354744 () Bool)

(assert (= bs!1354744 (and d!1818134 b!5772937)))

(assert (=> bs!1354744 (= (and (= (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542) s!2326) (= (ite (or c!1020907 c!1020910) (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292))))) (regOne!32090 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293738 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) lt!2293835)) (= lambda!314452 lambda!314344))))

(declare-fun bs!1354745 () Bool)

(assert (= bs!1354745 (and d!1818134 b!5773278)))

(assert (=> bs!1354745 (not (= lambda!314452 lambda!314384))))

(assert (=> bs!1354737 (not (= lambda!314452 lambda!314349))))

(assert (=> bs!1354744 (= (and (= (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542) s!2326) (= (ite (or c!1020907 c!1020910) (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292))))) (regTwo!32090 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293738 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) lt!2293776)) (= lambda!314452 lambda!314346))))

(declare-fun bs!1354746 () Bool)

(assert (= bs!1354746 (and d!1818134 b!5773255)))

(assert (=> bs!1354746 (not (= lambda!314452 lambda!314383))))

(declare-fun bs!1354747 () Bool)

(assert (= bs!1354747 (and d!1818134 b!5772950)))

(assert (=> bs!1354747 (= (and (= (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542) Nil!63542) (= (ite (or c!1020907 c!1020910) (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292))))) (reg!16118 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293738 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) lt!2293701)) (= lambda!314452 lambda!314365))))

(declare-fun bs!1354748 () Bool)

(assert (= bs!1354748 (and d!1818134 b!5773756)))

(assert (=> bs!1354748 (not (= lambda!314452 lambda!314435))))

(assert (=> bs!1354747 (not (= lambda!314452 lambda!314367))))

(assert (=> bs!1354744 (not (= lambda!314452 lambda!314345))))

(declare-fun bs!1354749 () Bool)

(assert (= bs!1354749 (and d!1818134 b!5772956)))

(assert (=> bs!1354749 (not (= lambda!314452 lambda!314353))))

(assert (=> bs!1354747 (not (= lambda!314452 lambda!314366))))

(assert (=> bs!1354733 (not (= lambda!314452 lambda!314363))))

(assert (=> bs!1354736 (= (and (= (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542) s!2326) (= (ite (or c!1020907 c!1020910) (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292))))) (regOne!32090 r!7292)) (= (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293738 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) (regTwo!32090 r!7292))) (= lambda!314452 lambda!314447))))

(assert (=> bs!1354737 (= (and (= (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542) s!2326) (= (ite (or c!1020907 c!1020910) (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292))))) (regOne!32090 (regOne!32090 r!7292))) (= (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293738 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) lt!2293831)) (= lambda!314452 lambda!314348))))

(assert (=> bs!1354743 (= (and (= (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542) (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718)))) (= (ite (or c!1020907 c!1020910) (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292))))) (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292))))) (= (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293738 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293738 lt!2293701)))) (= lambda!314452 lambda!314426))))

(declare-fun bs!1354750 () Bool)

(assert (= bs!1354750 (and d!1818134 d!1817950)))

(assert (=> bs!1354750 (not (= lambda!314452 lambda!314411))))

(assert (=> bs!1354744 (not (= lambda!314452 lambda!314347))))

(assert (=> bs!1354734 (= (and (= (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542) s!2326) (= (ite (or c!1020907 c!1020910) (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292))))) (regOne!32090 r!7292)) (= (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293738 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) (regTwo!32090 r!7292))) (= lambda!314452 lambda!314341))))

(declare-fun bs!1354751 () Bool)

(assert (= bs!1354751 (and d!1818134 d!1818096)))

(assert (=> bs!1354751 (= (and (= (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542) s!2326) (= (ite (or c!1020907 c!1020910) (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292))))) (regOne!32090 r!7292)) (= (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293738 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) (regTwo!32090 r!7292))) (= lambda!314452 lambda!314446))))

(assert (=> bs!1354750 (= (and (= (ite (or c!1020907 c!1020910) (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292))))) (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292))))))) (= (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293738 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293831 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))))) (= lambda!314452 lambda!314409))))

(assert (=> bs!1354749 (= (and (= (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542) s!2326) (= (ite (or c!1020907 c!1020910) (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292))))) lt!2293701) (= (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293738 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) (regTwo!32090 r!7292))) (= lambda!314452 lambda!314352))))

(declare-fun bs!1354752 () Bool)

(assert (= bs!1354752 (and d!1818134 d!1818050)))

(assert (=> bs!1354752 (= (and (= (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542) (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718)))) (= (ite (or c!1020907 c!1020910) (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292))))) (ite (or c!1020907 c!1020910) (regOne!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292)))) (= (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293738 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 lt!2293701)))) (= lambda!314452 lambda!314433))))

(declare-fun bs!1354753 () Bool)

(assert (= bs!1354753 (and d!1818134 b!5773270)))

(assert (=> bs!1354753 (not (= lambda!314452 lambda!314386))))

(assert (=> d!1818134 true))

(assert (=> d!1818134 true))

(assert (=> d!1818134 true))

(assert (=> d!1818134 (= (isDefined!12501 (findConcatSeparation!2212 (ite (or c!1020907 c!1020910) (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292))))) (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293738 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) Nil!63542 (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542) (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542))) (Exists!2889 lambda!314452))))

(declare-fun lt!2294094 () Unit!156778)

(assert (=> d!1818134 (= lt!2294094 (choose!43840 (ite (or c!1020907 c!1020910) (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292))))) (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293738 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542)))))

(assert (=> d!1818134 (validRegex!7525 (ite (or c!1020907 c!1020910) (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292))))))))

(assert (=> d!1818134 (= (lemmaFindConcatSeparationEquivalentToExists!1976 (ite (or c!1020907 c!1020910) (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292))))) (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293738 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))) (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542)) lt!2294094)))

(declare-fun bs!1354754 () Bool)

(assert (= bs!1354754 d!1818134))

(declare-fun m!6719158 () Bool)

(assert (=> bs!1354754 m!6719158))

(declare-fun m!6719160 () Bool)

(assert (=> bs!1354754 m!6719160))

(declare-fun m!6719162 () Bool)

(assert (=> bs!1354754 m!6719162))

(declare-fun m!6719164 () Bool)

(assert (=> bs!1354754 m!6719164))

(assert (=> bs!1354754 m!6719158))

(declare-fun m!6719166 () Bool)

(assert (=> bs!1354754 m!6719166))

(assert (=> bm!447013 d!1818134))

(declare-fun b!5774043 () Bool)

(declare-fun e!3546978 () Bool)

(declare-fun e!3546981 () Bool)

(assert (=> b!5774043 (= e!3546978 e!3546981)))

(declare-fun c!1021230 () Bool)

(assert (=> b!5774043 (= c!1021230 ((_ is Union!15789) r!7292))))

(declare-fun b!5774044 () Bool)

(declare-fun e!3546974 () Bool)

(assert (=> b!5774044 (= e!3546981 e!3546974)))

(declare-fun res!2437097 () Bool)

(declare-fun lt!2294100 () Int)

(declare-fun call!447268 () Int)

(assert (=> b!5774044 (= res!2437097 (> lt!2294100 call!447268))))

(assert (=> b!5774044 (=> (not res!2437097) (not e!3546974))))

(declare-fun bm!447259 () Bool)

(declare-fun call!447266 () Int)

(declare-fun c!1021228 () Bool)

(assert (=> bm!447259 (= call!447266 (regexDepth!242 (ite c!1021228 (regTwo!32091 r!7292) (regOne!32090 r!7292))))))

(declare-fun bm!447260 () Bool)

(declare-fun call!447269 () Int)

(declare-fun call!447267 () Int)

(assert (=> bm!447260 (= call!447269 call!447267)))

(declare-fun b!5774045 () Bool)

(declare-fun e!3546979 () Int)

(declare-fun call!447265 () Int)

(assert (=> b!5774045 (= e!3546979 (+ 1 call!447265))))

(declare-fun b!5774046 () Bool)

(declare-fun e!3546976 () Int)

(assert (=> b!5774046 (= e!3546976 e!3546979)))

(declare-fun c!1021231 () Bool)

(assert (=> b!5774046 (= c!1021231 ((_ is Star!15789) r!7292))))

(declare-fun bm!447261 () Bool)

(declare-fun call!447270 () Int)

(assert (=> bm!447261 (= call!447270 call!447265)))

(declare-fun bm!447262 () Bool)

(assert (=> bm!447262 (= call!447265 (regexDepth!242 (ite c!1021231 (reg!16118 r!7292) (ite c!1021228 (regOne!32091 r!7292) (regTwo!32090 r!7292)))))))

(declare-fun b!5774047 () Bool)

(declare-fun e!3546975 () Bool)

(assert (=> b!5774047 (= e!3546975 (= lt!2294100 1))))

(declare-fun b!5774048 () Bool)

(assert (=> b!5774048 (= e!3546974 (> lt!2294100 call!447267))))

(declare-fun b!5774049 () Bool)

(declare-fun e!3546973 () Int)

(declare-fun e!3546977 () Int)

(assert (=> b!5774049 (= e!3546973 e!3546977)))

(declare-fun c!1021229 () Bool)

(assert (=> b!5774049 (= c!1021229 ((_ is Concat!24634) r!7292))))

(declare-fun d!1818138 () Bool)

(assert (=> d!1818138 e!3546978))

(declare-fun res!2437096 () Bool)

(assert (=> d!1818138 (=> (not res!2437096) (not e!3546978))))

(assert (=> d!1818138 (= res!2437096 (> lt!2294100 0))))

(assert (=> d!1818138 (= lt!2294100 e!3546976)))

(declare-fun c!1021232 () Bool)

(assert (=> d!1818138 (= c!1021232 ((_ is ElementMatch!15789) r!7292))))

(assert (=> d!1818138 (= (regexDepth!242 r!7292) lt!2294100)))

(declare-fun bm!447263 () Bool)

(assert (=> bm!447263 (= call!447268 (regexDepth!242 (ite c!1021230 (regOne!32091 r!7292) (regTwo!32090 r!7292))))))

(declare-fun b!5774050 () Bool)

(declare-fun call!447264 () Int)

(assert (=> b!5774050 (= e!3546977 (+ 1 call!447264))))

(declare-fun b!5774051 () Bool)

(declare-fun e!3546980 () Bool)

(assert (=> b!5774051 (= e!3546980 (> lt!2294100 call!447268))))

(declare-fun b!5774052 () Bool)

(assert (=> b!5774052 (= e!3546977 1)))

(declare-fun b!5774053 () Bool)

(assert (=> b!5774053 (= e!3546976 1)))

(declare-fun bm!447264 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!447264 (= call!447264 (maxBigInt!0 (ite c!1021228 call!447270 call!447266) (ite c!1021228 call!447266 call!447270)))))

(declare-fun b!5774054 () Bool)

(assert (=> b!5774054 (= c!1021228 ((_ is Union!15789) r!7292))))

(assert (=> b!5774054 (= e!3546979 e!3546973)))

(declare-fun b!5774055 () Bool)

(assert (=> b!5774055 (= e!3546973 (+ 1 call!447264))))

(declare-fun b!5774056 () Bool)

(assert (=> b!5774056 (= e!3546975 (> lt!2294100 call!447269))))

(declare-fun b!5774057 () Bool)

(declare-fun c!1021227 () Bool)

(assert (=> b!5774057 (= c!1021227 ((_ is Star!15789) r!7292))))

(declare-fun e!3546972 () Bool)

(assert (=> b!5774057 (= e!3546972 e!3546975)))

(declare-fun c!1021226 () Bool)

(declare-fun bm!447265 () Bool)

(assert (=> bm!447265 (= call!447267 (regexDepth!242 (ite c!1021230 (regTwo!32091 r!7292) (ite c!1021226 (regOne!32090 r!7292) (reg!16118 r!7292)))))))

(declare-fun b!5774058 () Bool)

(declare-fun res!2437095 () Bool)

(assert (=> b!5774058 (=> (not res!2437095) (not e!3546980))))

(assert (=> b!5774058 (= res!2437095 (> lt!2294100 call!447269))))

(assert (=> b!5774058 (= e!3546972 e!3546980)))

(declare-fun b!5774059 () Bool)

(assert (=> b!5774059 (= e!3546981 e!3546972)))

(assert (=> b!5774059 (= c!1021226 ((_ is Concat!24634) r!7292))))

(assert (= (and d!1818138 c!1021232) b!5774053))

(assert (= (and d!1818138 (not c!1021232)) b!5774046))

(assert (= (and b!5774046 c!1021231) b!5774045))

(assert (= (and b!5774046 (not c!1021231)) b!5774054))

(assert (= (and b!5774054 c!1021228) b!5774055))

(assert (= (and b!5774054 (not c!1021228)) b!5774049))

(assert (= (and b!5774049 c!1021229) b!5774050))

(assert (= (and b!5774049 (not c!1021229)) b!5774052))

(assert (= (or b!5774055 b!5774050) bm!447259))

(assert (= (or b!5774055 b!5774050) bm!447261))

(assert (= (or b!5774055 b!5774050) bm!447264))

(assert (= (or b!5774045 bm!447261) bm!447262))

(assert (= (and d!1818138 res!2437096) b!5774043))

(assert (= (and b!5774043 c!1021230) b!5774044))

(assert (= (and b!5774043 (not c!1021230)) b!5774059))

(assert (= (and b!5774044 res!2437097) b!5774048))

(assert (= (and b!5774059 c!1021226) b!5774058))

(assert (= (and b!5774059 (not c!1021226)) b!5774057))

(assert (= (and b!5774058 res!2437095) b!5774051))

(assert (= (and b!5774057 c!1021227) b!5774056))

(assert (= (and b!5774057 (not c!1021227)) b!5774047))

(assert (= (or b!5774058 b!5774056) bm!447260))

(assert (= (or b!5774048 bm!447260) bm!447265))

(assert (= (or b!5774044 b!5774051) bm!447263))

(declare-fun m!6719168 () Bool)

(assert (=> bm!447265 m!6719168))

(declare-fun m!6719170 () Bool)

(assert (=> bm!447263 m!6719170))

(declare-fun m!6719172 () Bool)

(assert (=> bm!447262 m!6719172))

(declare-fun m!6719174 () Bool)

(assert (=> bm!447259 m!6719174))

(declare-fun m!6719176 () Bool)

(assert (=> bm!447264 m!6719176))

(assert (=> b!5772958 d!1818138))

(declare-fun b!5774060 () Bool)

(declare-fun e!3546988 () Bool)

(declare-fun e!3546991 () Bool)

(assert (=> b!5774060 (= e!3546988 e!3546991)))

(declare-fun c!1021237 () Bool)

(assert (=> b!5774060 (= c!1021237 ((_ is Union!15789) (generalisedConcat!1404 (t!377005 (exprs!5673 (h!69992 zl!343))))))))

(declare-fun b!5774061 () Bool)

(declare-fun e!3546984 () Bool)

(assert (=> b!5774061 (= e!3546991 e!3546984)))

(declare-fun res!2437100 () Bool)

(declare-fun lt!2294101 () Int)

(declare-fun call!447275 () Int)

(assert (=> b!5774061 (= res!2437100 (> lt!2294101 call!447275))))

(assert (=> b!5774061 (=> (not res!2437100) (not e!3546984))))

(declare-fun bm!447266 () Bool)

(declare-fun call!447273 () Int)

(declare-fun c!1021235 () Bool)

(assert (=> bm!447266 (= call!447273 (regexDepth!242 (ite c!1021235 (regTwo!32091 (generalisedConcat!1404 (t!377005 (exprs!5673 (h!69992 zl!343))))) (regOne!32090 (generalisedConcat!1404 (t!377005 (exprs!5673 (h!69992 zl!343))))))))))

(declare-fun bm!447267 () Bool)

(declare-fun call!447276 () Int)

(declare-fun call!447274 () Int)

(assert (=> bm!447267 (= call!447276 call!447274)))

(declare-fun b!5774062 () Bool)

(declare-fun e!3546989 () Int)

(declare-fun call!447272 () Int)

(assert (=> b!5774062 (= e!3546989 (+ 1 call!447272))))

(declare-fun b!5774063 () Bool)

(declare-fun e!3546986 () Int)

(assert (=> b!5774063 (= e!3546986 e!3546989)))

(declare-fun c!1021238 () Bool)

(assert (=> b!5774063 (= c!1021238 ((_ is Star!15789) (generalisedConcat!1404 (t!377005 (exprs!5673 (h!69992 zl!343))))))))

(declare-fun bm!447268 () Bool)

(declare-fun call!447277 () Int)

(assert (=> bm!447268 (= call!447277 call!447272)))

(declare-fun bm!447269 () Bool)

(assert (=> bm!447269 (= call!447272 (regexDepth!242 (ite c!1021238 (reg!16118 (generalisedConcat!1404 (t!377005 (exprs!5673 (h!69992 zl!343))))) (ite c!1021235 (regOne!32091 (generalisedConcat!1404 (t!377005 (exprs!5673 (h!69992 zl!343))))) (regTwo!32090 (generalisedConcat!1404 (t!377005 (exprs!5673 (h!69992 zl!343)))))))))))

(declare-fun b!5774064 () Bool)

(declare-fun e!3546985 () Bool)

(assert (=> b!5774064 (= e!3546985 (= lt!2294101 1))))

(declare-fun b!5774065 () Bool)

(assert (=> b!5774065 (= e!3546984 (> lt!2294101 call!447274))))

(declare-fun b!5774066 () Bool)

(declare-fun e!3546983 () Int)

(declare-fun e!3546987 () Int)

(assert (=> b!5774066 (= e!3546983 e!3546987)))

(declare-fun c!1021236 () Bool)

(assert (=> b!5774066 (= c!1021236 ((_ is Concat!24634) (generalisedConcat!1404 (t!377005 (exprs!5673 (h!69992 zl!343))))))))

(declare-fun d!1818140 () Bool)

(assert (=> d!1818140 e!3546988))

(declare-fun res!2437099 () Bool)

(assert (=> d!1818140 (=> (not res!2437099) (not e!3546988))))

(assert (=> d!1818140 (= res!2437099 (> lt!2294101 0))))

(assert (=> d!1818140 (= lt!2294101 e!3546986)))

(declare-fun c!1021239 () Bool)

(assert (=> d!1818140 (= c!1021239 ((_ is ElementMatch!15789) (generalisedConcat!1404 (t!377005 (exprs!5673 (h!69992 zl!343))))))))

(assert (=> d!1818140 (= (regexDepth!242 (generalisedConcat!1404 (t!377005 (exprs!5673 (h!69992 zl!343))))) lt!2294101)))

(declare-fun bm!447270 () Bool)

(assert (=> bm!447270 (= call!447275 (regexDepth!242 (ite c!1021237 (regOne!32091 (generalisedConcat!1404 (t!377005 (exprs!5673 (h!69992 zl!343))))) (regTwo!32090 (generalisedConcat!1404 (t!377005 (exprs!5673 (h!69992 zl!343))))))))))

(declare-fun b!5774067 () Bool)

(declare-fun call!447271 () Int)

(assert (=> b!5774067 (= e!3546987 (+ 1 call!447271))))

(declare-fun b!5774068 () Bool)

(declare-fun e!3546990 () Bool)

(assert (=> b!5774068 (= e!3546990 (> lt!2294101 call!447275))))

(declare-fun b!5774069 () Bool)

(assert (=> b!5774069 (= e!3546987 1)))

(declare-fun b!5774070 () Bool)

(assert (=> b!5774070 (= e!3546986 1)))

(declare-fun bm!447271 () Bool)

(assert (=> bm!447271 (= call!447271 (maxBigInt!0 (ite c!1021235 call!447277 call!447273) (ite c!1021235 call!447273 call!447277)))))

(declare-fun b!5774071 () Bool)

(assert (=> b!5774071 (= c!1021235 ((_ is Union!15789) (generalisedConcat!1404 (t!377005 (exprs!5673 (h!69992 zl!343))))))))

(assert (=> b!5774071 (= e!3546989 e!3546983)))

(declare-fun b!5774072 () Bool)

(assert (=> b!5774072 (= e!3546983 (+ 1 call!447271))))

(declare-fun b!5774073 () Bool)

(assert (=> b!5774073 (= e!3546985 (> lt!2294101 call!447276))))

(declare-fun b!5774074 () Bool)

(declare-fun c!1021234 () Bool)

(assert (=> b!5774074 (= c!1021234 ((_ is Star!15789) (generalisedConcat!1404 (t!377005 (exprs!5673 (h!69992 zl!343))))))))

(declare-fun e!3546982 () Bool)

(assert (=> b!5774074 (= e!3546982 e!3546985)))

(declare-fun c!1021233 () Bool)

(declare-fun bm!447272 () Bool)

(assert (=> bm!447272 (= call!447274 (regexDepth!242 (ite c!1021237 (regTwo!32091 (generalisedConcat!1404 (t!377005 (exprs!5673 (h!69992 zl!343))))) (ite c!1021233 (regOne!32090 (generalisedConcat!1404 (t!377005 (exprs!5673 (h!69992 zl!343))))) (reg!16118 (generalisedConcat!1404 (t!377005 (exprs!5673 (h!69992 zl!343)))))))))))

(declare-fun b!5774075 () Bool)

(declare-fun res!2437098 () Bool)

(assert (=> b!5774075 (=> (not res!2437098) (not e!3546990))))

(assert (=> b!5774075 (= res!2437098 (> lt!2294101 call!447276))))

(assert (=> b!5774075 (= e!3546982 e!3546990)))

(declare-fun b!5774076 () Bool)

(assert (=> b!5774076 (= e!3546991 e!3546982)))

(assert (=> b!5774076 (= c!1021233 ((_ is Concat!24634) (generalisedConcat!1404 (t!377005 (exprs!5673 (h!69992 zl!343))))))))

(assert (= (and d!1818140 c!1021239) b!5774070))

(assert (= (and d!1818140 (not c!1021239)) b!5774063))

(assert (= (and b!5774063 c!1021238) b!5774062))

(assert (= (and b!5774063 (not c!1021238)) b!5774071))

(assert (= (and b!5774071 c!1021235) b!5774072))

(assert (= (and b!5774071 (not c!1021235)) b!5774066))

(assert (= (and b!5774066 c!1021236) b!5774067))

(assert (= (and b!5774066 (not c!1021236)) b!5774069))

(assert (= (or b!5774072 b!5774067) bm!447266))

(assert (= (or b!5774072 b!5774067) bm!447268))

(assert (= (or b!5774072 b!5774067) bm!447271))

(assert (= (or b!5774062 bm!447268) bm!447269))

(assert (= (and d!1818140 res!2437099) b!5774060))

(assert (= (and b!5774060 c!1021237) b!5774061))

(assert (= (and b!5774060 (not c!1021237)) b!5774076))

(assert (= (and b!5774061 res!2437100) b!5774065))

(assert (= (and b!5774076 c!1021233) b!5774075))

(assert (= (and b!5774076 (not c!1021233)) b!5774074))

(assert (= (and b!5774075 res!2437098) b!5774068))

(assert (= (and b!5774074 c!1021234) b!5774073))

(assert (= (and b!5774074 (not c!1021234)) b!5774064))

(assert (= (or b!5774075 b!5774073) bm!447267))

(assert (= (or b!5774065 bm!447267) bm!447272))

(assert (= (or b!5774061 b!5774068) bm!447270))

(declare-fun m!6719180 () Bool)

(assert (=> bm!447272 m!6719180))

(declare-fun m!6719186 () Bool)

(assert (=> bm!447270 m!6719186))

(declare-fun m!6719190 () Bool)

(assert (=> bm!447269 m!6719190))

(declare-fun m!6719192 () Bool)

(assert (=> bm!447266 m!6719192))

(declare-fun m!6719194 () Bool)

(assert (=> bm!447271 m!6719194))

(assert (=> b!5772958 d!1818140))

(declare-fun bs!1354773 () Bool)

(declare-fun d!1818144 () Bool)

(assert (= bs!1354773 (and d!1818144 d!1817836)))

(declare-fun lambda!314459 () Int)

(assert (=> bs!1354773 (= lambda!314459 lambda!314370)))

(declare-fun bs!1354774 () Bool)

(assert (= bs!1354774 (and d!1818144 d!1818110)))

(assert (=> bs!1354774 (= lambda!314459 lambda!314451)))

(declare-fun bs!1354775 () Bool)

(assert (= bs!1354775 (and d!1818144 b!5772936)))

(assert (=> bs!1354775 (= lambda!314459 lambda!314359)))

(declare-fun bs!1354776 () Bool)

(assert (= bs!1354776 (and d!1818144 d!1818022)))

(assert (=> bs!1354776 (= lambda!314459 lambda!314425)))

(declare-fun bs!1354777 () Bool)

(assert (= bs!1354777 (and d!1818144 b!5772969)))

(assert (=> bs!1354777 (= lambda!314459 lambda!314357)))

(declare-fun bs!1354778 () Bool)

(assert (= bs!1354778 (and d!1818144 d!1817906)))

(assert (=> bs!1354778 (= lambda!314459 lambda!314393)))

(declare-fun bs!1354779 () Bool)

(assert (= bs!1354779 (and d!1818144 d!1817966)))

(assert (=> bs!1354779 (= lambda!314459 lambda!314416)))

(declare-fun bs!1354780 () Bool)

(assert (= bs!1354780 (and d!1818144 d!1817920)))

(assert (=> bs!1354780 (= lambda!314459 lambda!314397)))

(declare-fun bs!1354781 () Bool)

(assert (= bs!1354781 (and d!1818144 d!1817918)))

(assert (=> bs!1354781 (= lambda!314459 lambda!314394)))

(declare-fun bs!1354782 () Bool)

(assert (= bs!1354782 (and d!1818144 d!1817900)))

(assert (=> bs!1354782 (= lambda!314459 lambda!314390)))

(declare-fun b!5774077 () Bool)

(declare-fun e!3546994 () Bool)

(declare-fun lt!2294103 () Regex!15789)

(assert (=> b!5774077 (= e!3546994 (isEmptyExpr!1270 lt!2294103))))

(declare-fun b!5774078 () Bool)

(declare-fun e!3546992 () Bool)

(assert (=> b!5774078 (= e!3546992 (isEmpty!35442 (t!377005 (t!377005 (exprs!5673 (h!69992 zl!343))))))))

(declare-fun b!5774079 () Bool)

(declare-fun e!3546997 () Bool)

(assert (=> b!5774079 (= e!3546997 (= lt!2294103 (head!12205 (t!377005 (exprs!5673 (h!69992 zl!343))))))))

(declare-fun b!5774080 () Bool)

(declare-fun e!3546993 () Regex!15789)

(assert (=> b!5774080 (= e!3546993 EmptyExpr!15789)))

(declare-fun b!5774081 () Bool)

(declare-fun e!3546995 () Bool)

(assert (=> b!5774081 (= e!3546995 e!3546994)))

(declare-fun c!1021242 () Bool)

(assert (=> b!5774081 (= c!1021242 (isEmpty!35442 (t!377005 (exprs!5673 (h!69992 zl!343)))))))

(declare-fun b!5774082 () Bool)

(assert (=> b!5774082 (= e!3546994 e!3546997)))

(declare-fun c!1021243 () Bool)

(assert (=> b!5774082 (= c!1021243 (isEmpty!35442 (tail!11300 (t!377005 (exprs!5673 (h!69992 zl!343))))))))

(assert (=> d!1818144 e!3546995))

(declare-fun res!2437102 () Bool)

(assert (=> d!1818144 (=> (not res!2437102) (not e!3546995))))

(assert (=> d!1818144 (= res!2437102 (validRegex!7525 lt!2294103))))

(declare-fun e!3546996 () Regex!15789)

(assert (=> d!1818144 (= lt!2294103 e!3546996)))

(declare-fun c!1021240 () Bool)

(assert (=> d!1818144 (= c!1021240 e!3546992)))

(declare-fun res!2437101 () Bool)

(assert (=> d!1818144 (=> (not res!2437101) (not e!3546992))))

(assert (=> d!1818144 (= res!2437101 ((_ is Cons!63543) (t!377005 (exprs!5673 (h!69992 zl!343)))))))

(assert (=> d!1818144 (forall!14902 (t!377005 (exprs!5673 (h!69992 zl!343))) lambda!314459)))

(assert (=> d!1818144 (= (generalisedConcat!1404 (t!377005 (exprs!5673 (h!69992 zl!343)))) lt!2294103)))

(declare-fun b!5774083 () Bool)

(assert (=> b!5774083 (= e!3546996 e!3546993)))

(declare-fun c!1021241 () Bool)

(assert (=> b!5774083 (= c!1021241 ((_ is Cons!63543) (t!377005 (exprs!5673 (h!69992 zl!343)))))))

(declare-fun b!5774084 () Bool)

(assert (=> b!5774084 (= e!3546997 (isConcat!793 lt!2294103))))

(declare-fun b!5774085 () Bool)

(assert (=> b!5774085 (= e!3546993 (Concat!24634 (h!69991 (t!377005 (exprs!5673 (h!69992 zl!343)))) (generalisedConcat!1404 (t!377005 (t!377005 (exprs!5673 (h!69992 zl!343)))))))))

(declare-fun b!5774086 () Bool)

(assert (=> b!5774086 (= e!3546996 (h!69991 (t!377005 (exprs!5673 (h!69992 zl!343)))))))

(assert (= (and d!1818144 res!2437101) b!5774078))

(assert (= (and d!1818144 c!1021240) b!5774086))

(assert (= (and d!1818144 (not c!1021240)) b!5774083))

(assert (= (and b!5774083 c!1021241) b!5774085))

(assert (= (and b!5774083 (not c!1021241)) b!5774080))

(assert (= (and d!1818144 res!2437102) b!5774081))

(assert (= (and b!5774081 c!1021242) b!5774077))

(assert (= (and b!5774081 (not c!1021242)) b!5774082))

(assert (= (and b!5774082 c!1021243) b!5774079))

(assert (= (and b!5774082 (not c!1021243)) b!5774084))

(assert (=> b!5774081 m!6717908))

(declare-fun m!6719210 () Bool)

(assert (=> b!5774078 m!6719210))

(declare-fun m!6719212 () Bool)

(assert (=> b!5774082 m!6719212))

(assert (=> b!5774082 m!6719212))

(declare-fun m!6719214 () Bool)

(assert (=> b!5774082 m!6719214))

(declare-fun m!6719216 () Bool)

(assert (=> b!5774077 m!6719216))

(declare-fun m!6719218 () Bool)

(assert (=> b!5774079 m!6719218))

(declare-fun m!6719220 () Bool)

(assert (=> d!1818144 m!6719220))

(declare-fun m!6719222 () Bool)

(assert (=> d!1818144 m!6719222))

(declare-fun m!6719224 () Bool)

(assert (=> b!5774084 m!6719224))

(declare-fun m!6719226 () Bool)

(assert (=> b!5774085 m!6719226))

(assert (=> b!5772958 d!1818144))

(declare-fun d!1818152 () Bool)

(declare-fun lt!2294106 () Regex!15789)

(assert (=> d!1818152 (validRegex!7525 lt!2294106)))

(assert (=> d!1818152 (= lt!2294106 (generalisedUnion!1652 (unfocusZipperList!1217 zl!343)))))

(assert (=> d!1818152 (= (unfocusZipper!1531 zl!343) lt!2294106)))

(declare-fun bs!1354784 () Bool)

(assert (= bs!1354784 d!1818152))

(declare-fun m!6719228 () Bool)

(assert (=> bs!1354784 m!6719228))

(assert (=> bs!1354784 m!6717800))

(assert (=> bs!1354784 m!6717800))

(assert (=> bs!1354784 m!6717802))

(assert (=> b!5772966 d!1818152))

(declare-fun d!1818154 () Bool)

(declare-fun c!1021245 () Bool)

(assert (=> d!1818154 (= c!1021245 (isEmpty!35440 (t!377004 s!2326)))))

(declare-fun e!3546999 () Bool)

(assert (=> d!1818154 (= (matchZipper!1927 lt!2293761 (t!377004 s!2326)) e!3546999)))

(declare-fun b!5774089 () Bool)

(assert (=> b!5774089 (= e!3546999 (nullableZipper!1711 lt!2293761))))

(declare-fun b!5774090 () Bool)

(assert (=> b!5774090 (= e!3546999 (matchZipper!1927 (derivationStepZipper!1864 lt!2293761 (head!12204 (t!377004 s!2326))) (tail!11299 (t!377004 s!2326))))))

(assert (= (and d!1818154 c!1021245) b!5774089))

(assert (= (and d!1818154 (not c!1021245)) b!5774090))

(assert (=> d!1818154 m!6718094))

(declare-fun m!6719230 () Bool)

(assert (=> b!5774089 m!6719230))

(assert (=> b!5774090 m!6718098))

(assert (=> b!5774090 m!6718098))

(declare-fun m!6719232 () Bool)

(assert (=> b!5774090 m!6719232))

(assert (=> b!5774090 m!6718102))

(assert (=> b!5774090 m!6719232))

(assert (=> b!5774090 m!6718102))

(declare-fun m!6719234 () Bool)

(assert (=> b!5774090 m!6719234))

(assert (=> b!5772993 d!1818154))

(declare-fun b!5774122 () Bool)

(declare-fun e!3547027 () Bool)

(declare-fun call!447287 () Bool)

(assert (=> b!5774122 (= e!3547027 call!447287)))

(declare-fun b!5774123 () Bool)

(declare-fun e!3547024 () Bool)

(declare-fun call!447286 () Bool)

(assert (=> b!5774123 (= e!3547024 call!447286)))

(declare-fun b!5774124 () Bool)

(declare-fun res!2437117 () Bool)

(declare-fun e!3547026 () Bool)

(assert (=> b!5774124 (=> (not res!2437117) (not e!3547026))))

(declare-fun call!447288 () Bool)

(assert (=> b!5774124 (= res!2437117 call!447288)))

(declare-fun e!3547025 () Bool)

(assert (=> b!5774124 (= e!3547025 e!3547026)))

(declare-fun b!5774125 () Bool)

(declare-fun e!3547022 () Bool)

(assert (=> b!5774125 (= e!3547022 e!3547025)))

(declare-fun c!1021255 () Bool)

(assert (=> b!5774125 (= c!1021255 ((_ is Union!15789) r!7292))))

(declare-fun bm!447281 () Bool)

(assert (=> bm!447281 (= call!447286 call!447287)))

(declare-fun d!1818156 () Bool)

(declare-fun res!2437119 () Bool)

(declare-fun e!3547023 () Bool)

(assert (=> d!1818156 (=> res!2437119 e!3547023)))

(assert (=> d!1818156 (= res!2437119 ((_ is ElementMatch!15789) r!7292))))

(assert (=> d!1818156 (= (validRegex!7525 r!7292) e!3547023)))

(declare-fun b!5774121 () Bool)

(assert (=> b!5774121 (= e!3547022 e!3547027)))

(declare-fun res!2437118 () Bool)

(assert (=> b!5774121 (= res!2437118 (not (nullable!5821 (reg!16118 r!7292))))))

(assert (=> b!5774121 (=> (not res!2437118) (not e!3547027))))

(declare-fun bm!447282 () Bool)

(assert (=> bm!447282 (= call!447288 (validRegex!7525 (ite c!1021255 (regOne!32091 r!7292) (regOne!32090 r!7292))))))

(declare-fun b!5774126 () Bool)

(declare-fun e!3547028 () Bool)

(assert (=> b!5774126 (= e!3547028 e!3547024)))

(declare-fun res!2437120 () Bool)

(assert (=> b!5774126 (=> (not res!2437120) (not e!3547024))))

(assert (=> b!5774126 (= res!2437120 call!447288)))

(declare-fun bm!447283 () Bool)

(declare-fun c!1021254 () Bool)

(assert (=> bm!447283 (= call!447287 (validRegex!7525 (ite c!1021254 (reg!16118 r!7292) (ite c!1021255 (regTwo!32091 r!7292) (regTwo!32090 r!7292)))))))

(declare-fun b!5774127 () Bool)

(assert (=> b!5774127 (= e!3547023 e!3547022)))

(assert (=> b!5774127 (= c!1021254 ((_ is Star!15789) r!7292))))

(declare-fun b!5774128 () Bool)

(declare-fun res!2437121 () Bool)

(assert (=> b!5774128 (=> res!2437121 e!3547028)))

(assert (=> b!5774128 (= res!2437121 (not ((_ is Concat!24634) r!7292)))))

(assert (=> b!5774128 (= e!3547025 e!3547028)))

(declare-fun b!5774129 () Bool)

(assert (=> b!5774129 (= e!3547026 call!447286)))

(assert (= (and d!1818156 (not res!2437119)) b!5774127))

(assert (= (and b!5774127 c!1021254) b!5774121))

(assert (= (and b!5774127 (not c!1021254)) b!5774125))

(assert (= (and b!5774121 res!2437118) b!5774122))

(assert (= (and b!5774125 c!1021255) b!5774124))

(assert (= (and b!5774125 (not c!1021255)) b!5774128))

(assert (= (and b!5774124 res!2437117) b!5774129))

(assert (= (and b!5774128 (not res!2437121)) b!5774126))

(assert (= (and b!5774126 res!2437120) b!5774123))

(assert (= (or b!5774129 b!5774123) bm!447281))

(assert (= (or b!5774124 b!5774126) bm!447282))

(assert (= (or b!5774122 bm!447281) bm!447283))

(declare-fun m!6719252 () Bool)

(assert (=> b!5774121 m!6719252))

(declare-fun m!6719254 () Bool)

(assert (=> bm!447282 m!6719254))

(declare-fun m!6719256 () Bool)

(assert (=> bm!447283 m!6719256))

(assert (=> start!592788 d!1818156))

(declare-fun e!3547029 () Bool)

(declare-fun b!5774130 () Bool)

(assert (=> b!5774130 (= e!3547029 (nullable!5821 (ite c!1020902 lt!2293730 (ite c!1020903 (ite c!1020911 lt!2293892 lt!2293804) (ite c!1020900 (reg!16118 (regOne!32090 r!7292)) lt!2293701)))))))

(declare-fun e!3547032 () Bool)

(declare-fun b!5774131 () Bool)

(assert (=> b!5774131 (= e!3547032 (= (head!12204 (ite c!1020902 s!2326 (ite c!1020903 (ite c!1020911 s!2326 lt!2293716) (ite c!1020900 (_1!36189 lt!2293851) Nil!63542)))) (c!1020912 (ite c!1020902 lt!2293730 (ite c!1020903 (ite c!1020911 lt!2293892 lt!2293804) (ite c!1020900 (reg!16118 (regOne!32090 r!7292)) lt!2293701))))))))

(declare-fun call!447289 () Bool)

(declare-fun bm!447284 () Bool)

(assert (=> bm!447284 (= call!447289 (isEmpty!35440 (ite c!1020902 s!2326 (ite c!1020903 (ite c!1020911 s!2326 lt!2293716) (ite c!1020900 (_1!36189 lt!2293851) Nil!63542)))))))

(declare-fun b!5774132 () Bool)

(declare-fun e!3547031 () Bool)

(declare-fun e!3547033 () Bool)

(assert (=> b!5774132 (= e!3547031 e!3547033)))

(declare-fun c!1021258 () Bool)

(assert (=> b!5774132 (= c!1021258 ((_ is EmptyLang!15789) (ite c!1020902 lt!2293730 (ite c!1020903 (ite c!1020911 lt!2293892 lt!2293804) (ite c!1020900 (reg!16118 (regOne!32090 r!7292)) lt!2293701)))))))

(declare-fun b!5774133 () Bool)

(declare-fun res!2437122 () Bool)

(assert (=> b!5774133 (=> (not res!2437122) (not e!3547032))))

(assert (=> b!5774133 (= res!2437122 (not call!447289))))

(declare-fun e!3547034 () Bool)

(declare-fun b!5774134 () Bool)

(assert (=> b!5774134 (= e!3547034 (not (= (head!12204 (ite c!1020902 s!2326 (ite c!1020903 (ite c!1020911 s!2326 lt!2293716) (ite c!1020900 (_1!36189 lt!2293851) Nil!63542)))) (c!1020912 (ite c!1020902 lt!2293730 (ite c!1020903 (ite c!1020911 lt!2293892 lt!2293804) (ite c!1020900 (reg!16118 (regOne!32090 r!7292)) lt!2293701)))))))))

(declare-fun b!5774135 () Bool)

(declare-fun res!2437127 () Bool)

(assert (=> b!5774135 (=> (not res!2437127) (not e!3547032))))

(assert (=> b!5774135 (= res!2437127 (isEmpty!35440 (tail!11299 (ite c!1020902 s!2326 (ite c!1020903 (ite c!1020911 s!2326 lt!2293716) (ite c!1020900 (_1!36189 lt!2293851) Nil!63542))))))))

(declare-fun b!5774136 () Bool)

(declare-fun res!2437129 () Bool)

(declare-fun e!3547035 () Bool)

(assert (=> b!5774136 (=> res!2437129 e!3547035)))

(assert (=> b!5774136 (= res!2437129 (not ((_ is ElementMatch!15789) (ite c!1020902 lt!2293730 (ite c!1020903 (ite c!1020911 lt!2293892 lt!2293804) (ite c!1020900 (reg!16118 (regOne!32090 r!7292)) lt!2293701))))))))

(assert (=> b!5774136 (= e!3547033 e!3547035)))

(declare-fun b!5774137 () Bool)

(declare-fun lt!2294111 () Bool)

(assert (=> b!5774137 (= e!3547031 (= lt!2294111 call!447289))))

(declare-fun b!5774138 () Bool)

(assert (=> b!5774138 (= e!3547029 (matchR!7974 (derivativeStep!4565 (ite c!1020902 lt!2293730 (ite c!1020903 (ite c!1020911 lt!2293892 lt!2293804) (ite c!1020900 (reg!16118 (regOne!32090 r!7292)) lt!2293701))) (head!12204 (ite c!1020902 s!2326 (ite c!1020903 (ite c!1020911 s!2326 lt!2293716) (ite c!1020900 (_1!36189 lt!2293851) Nil!63542))))) (tail!11299 (ite c!1020902 s!2326 (ite c!1020903 (ite c!1020911 s!2326 lt!2293716) (ite c!1020900 (_1!36189 lt!2293851) Nil!63542))))))))

(declare-fun d!1818162 () Bool)

(assert (=> d!1818162 e!3547031))

(declare-fun c!1021256 () Bool)

(assert (=> d!1818162 (= c!1021256 ((_ is EmptyExpr!15789) (ite c!1020902 lt!2293730 (ite c!1020903 (ite c!1020911 lt!2293892 lt!2293804) (ite c!1020900 (reg!16118 (regOne!32090 r!7292)) lt!2293701)))))))

(assert (=> d!1818162 (= lt!2294111 e!3547029)))

(declare-fun c!1021257 () Bool)

(assert (=> d!1818162 (= c!1021257 (isEmpty!35440 (ite c!1020902 s!2326 (ite c!1020903 (ite c!1020911 s!2326 lt!2293716) (ite c!1020900 (_1!36189 lt!2293851) Nil!63542)))))))

(assert (=> d!1818162 (validRegex!7525 (ite c!1020902 lt!2293730 (ite c!1020903 (ite c!1020911 lt!2293892 lt!2293804) (ite c!1020900 (reg!16118 (regOne!32090 r!7292)) lt!2293701))))))

(assert (=> d!1818162 (= (matchR!7974 (ite c!1020902 lt!2293730 (ite c!1020903 (ite c!1020911 lt!2293892 lt!2293804) (ite c!1020900 (reg!16118 (regOne!32090 r!7292)) lt!2293701))) (ite c!1020902 s!2326 (ite c!1020903 (ite c!1020911 s!2326 lt!2293716) (ite c!1020900 (_1!36189 lt!2293851) Nil!63542)))) lt!2294111)))

(declare-fun b!5774139 () Bool)

(assert (=> b!5774139 (= e!3547033 (not lt!2294111))))

(declare-fun b!5774140 () Bool)

(declare-fun e!3547030 () Bool)

(assert (=> b!5774140 (= e!3547030 e!3547034)))

(declare-fun res!2437124 () Bool)

(assert (=> b!5774140 (=> res!2437124 e!3547034)))

(assert (=> b!5774140 (= res!2437124 call!447289)))

(declare-fun b!5774141 () Bool)

(declare-fun res!2437125 () Bool)

(assert (=> b!5774141 (=> res!2437125 e!3547034)))

(assert (=> b!5774141 (= res!2437125 (not (isEmpty!35440 (tail!11299 (ite c!1020902 s!2326 (ite c!1020903 (ite c!1020911 s!2326 lt!2293716) (ite c!1020900 (_1!36189 lt!2293851) Nil!63542)))))))))

(declare-fun b!5774142 () Bool)

(assert (=> b!5774142 (= e!3547035 e!3547030)))

(declare-fun res!2437128 () Bool)

(assert (=> b!5774142 (=> (not res!2437128) (not e!3547030))))

(assert (=> b!5774142 (= res!2437128 (not lt!2294111))))

(declare-fun b!5774143 () Bool)

(declare-fun res!2437126 () Bool)

(assert (=> b!5774143 (=> res!2437126 e!3547035)))

(assert (=> b!5774143 (= res!2437126 e!3547032)))

(declare-fun res!2437123 () Bool)

(assert (=> b!5774143 (=> (not res!2437123) (not e!3547032))))

(assert (=> b!5774143 (= res!2437123 lt!2294111)))

(assert (= (and d!1818162 c!1021257) b!5774130))

(assert (= (and d!1818162 (not c!1021257)) b!5774138))

(assert (= (and d!1818162 c!1021256) b!5774137))

(assert (= (and d!1818162 (not c!1021256)) b!5774132))

(assert (= (and b!5774132 c!1021258) b!5774139))

(assert (= (and b!5774132 (not c!1021258)) b!5774136))

(assert (= (and b!5774136 (not res!2437129)) b!5774143))

(assert (= (and b!5774143 res!2437123) b!5774133))

(assert (= (and b!5774133 res!2437122) b!5774135))

(assert (= (and b!5774135 res!2437127) b!5774131))

(assert (= (and b!5774143 (not res!2437126)) b!5774142))

(assert (= (and b!5774142 res!2437128) b!5774140))

(assert (= (and b!5774140 (not res!2437124)) b!5774141))

(assert (= (and b!5774141 (not res!2437125)) b!5774134))

(assert (= (or b!5774137 b!5774133 b!5774140) bm!447284))

(declare-fun m!6719258 () Bool)

(assert (=> b!5774134 m!6719258))

(declare-fun m!6719260 () Bool)

(assert (=> b!5774130 m!6719260))

(assert (=> b!5774138 m!6719258))

(assert (=> b!5774138 m!6719258))

(declare-fun m!6719262 () Bool)

(assert (=> b!5774138 m!6719262))

(declare-fun m!6719264 () Bool)

(assert (=> b!5774138 m!6719264))

(assert (=> b!5774138 m!6719262))

(assert (=> b!5774138 m!6719264))

(declare-fun m!6719266 () Bool)

(assert (=> b!5774138 m!6719266))

(declare-fun m!6719268 () Bool)

(assert (=> d!1818162 m!6719268))

(declare-fun m!6719270 () Bool)

(assert (=> d!1818162 m!6719270))

(assert (=> b!5774141 m!6719264))

(assert (=> b!5774141 m!6719264))

(declare-fun m!6719272 () Bool)

(assert (=> b!5774141 m!6719272))

(assert (=> b!5774135 m!6719264))

(assert (=> b!5774135 m!6719264))

(assert (=> b!5774135 m!6719272))

(assert (=> bm!447284 m!6719268))

(assert (=> b!5774131 m!6719258))

(assert (=> bm!446960 d!1818162))

(declare-fun d!1818164 () Bool)

(assert (=> d!1818164 (= (flatMap!1402 (ite c!1020902 lt!2293786 lt!2293702) (ite c!1020902 lambda!314343 lambda!314343)) (dynLambda!24872 (ite c!1020902 lambda!314343 lambda!314343) (ite c!1020902 lt!2293886 lt!2293814)))))

(declare-fun lt!2294112 () Unit!156778)

(assert (=> d!1818164 (= lt!2294112 (choose!43818 (ite c!1020902 lt!2293786 lt!2293702) (ite c!1020902 lt!2293886 lt!2293814) (ite c!1020902 lambda!314343 lambda!314343)))))

(assert (=> d!1818164 (= (ite c!1020902 lt!2293786 lt!2293702) (store ((as const (Array Context!10346 Bool)) false) (ite c!1020902 lt!2293886 lt!2293814) true))))

(assert (=> d!1818164 (= (lemmaFlatMapOnSingletonSet!934 (ite c!1020902 lt!2293786 lt!2293702) (ite c!1020902 lt!2293886 lt!2293814) (ite c!1020902 lambda!314343 lambda!314343)) lt!2294112)))

(declare-fun b_lambda!217811 () Bool)

(assert (=> (not b_lambda!217811) (not d!1818164)))

(declare-fun bs!1354811 () Bool)

(assert (= bs!1354811 d!1818164))

(declare-fun m!6719274 () Bool)

(assert (=> bs!1354811 m!6719274))

(declare-fun m!6719276 () Bool)

(assert (=> bs!1354811 m!6719276))

(declare-fun m!6719278 () Bool)

(assert (=> bs!1354811 m!6719278))

(declare-fun m!6719280 () Bool)

(assert (=> bs!1354811 m!6719280))

(assert (=> bm!446942 d!1818164))

(declare-fun d!1818166 () Bool)

(assert (=> d!1818166 (= (flatMap!1402 (ite c!1020910 lt!2293771 (ite c!1020903 lt!2293829 lt!2293719)) (ite c!1020910 lambda!314343 (ite c!1020903 lambda!314343 lambda!314343))) (choose!43819 (ite c!1020910 lt!2293771 (ite c!1020903 lt!2293829 lt!2293719)) (ite c!1020910 lambda!314343 (ite c!1020903 lambda!314343 lambda!314343))))))

(declare-fun bs!1354814 () Bool)

(assert (= bs!1354814 d!1818166))

(declare-fun m!6719282 () Bool)

(assert (=> bs!1354814 m!6719282))

(assert (=> bm!447006 d!1818166))

(declare-fun d!1818168 () Bool)

(declare-fun e!3547036 () Bool)

(assert (=> d!1818168 (= (matchZipper!1927 ((_ map or) lt!2293818 lt!2293761) (t!377004 s!2326)) e!3547036)))

(declare-fun res!2437130 () Bool)

(assert (=> d!1818168 (=> res!2437130 e!3547036)))

(assert (=> d!1818168 (= res!2437130 (matchZipper!1927 lt!2293818 (t!377004 s!2326)))))

(declare-fun lt!2294113 () Unit!156778)

(assert (=> d!1818168 (= lt!2294113 (choose!43831 lt!2293818 lt!2293761 (t!377004 s!2326)))))

(assert (=> d!1818168 (= (lemmaZipperConcatMatchesSameAsBothZippers!814 lt!2293818 lt!2293761 (t!377004 s!2326)) lt!2294113)))

(declare-fun b!5774144 () Bool)

(assert (=> b!5774144 (= e!3547036 (matchZipper!1927 lt!2293761 (t!377004 s!2326)))))

(assert (= (and d!1818168 (not res!2437130)) b!5774144))

(assert (=> d!1818168 m!6717840))

(assert (=> d!1818168 m!6717838))

(declare-fun m!6719284 () Bool)

(assert (=> d!1818168 m!6719284))

(assert (=> b!5774144 m!6717910))

(assert (=> b!5772946 d!1818168))

(declare-fun d!1818170 () Bool)

(declare-fun c!1021259 () Bool)

(assert (=> d!1818170 (= c!1021259 (isEmpty!35440 (t!377004 s!2326)))))

(declare-fun e!3547037 () Bool)

(assert (=> d!1818170 (= (matchZipper!1927 lt!2293818 (t!377004 s!2326)) e!3547037)))

(declare-fun b!5774145 () Bool)

(assert (=> b!5774145 (= e!3547037 (nullableZipper!1711 lt!2293818))))

(declare-fun b!5774146 () Bool)

(assert (=> b!5774146 (= e!3547037 (matchZipper!1927 (derivationStepZipper!1864 lt!2293818 (head!12204 (t!377004 s!2326))) (tail!11299 (t!377004 s!2326))))))

(assert (= (and d!1818170 c!1021259) b!5774145))

(assert (= (and d!1818170 (not c!1021259)) b!5774146))

(assert (=> d!1818170 m!6718094))

(declare-fun m!6719286 () Bool)

(assert (=> b!5774145 m!6719286))

(assert (=> b!5774146 m!6718098))

(assert (=> b!5774146 m!6718098))

(declare-fun m!6719288 () Bool)

(assert (=> b!5774146 m!6719288))

(assert (=> b!5774146 m!6718102))

(assert (=> b!5774146 m!6719288))

(assert (=> b!5774146 m!6718102))

(declare-fun m!6719290 () Bool)

(assert (=> b!5774146 m!6719290))

(assert (=> b!5772946 d!1818170))

(declare-fun d!1818172 () Bool)

(declare-fun c!1021260 () Bool)

(assert (=> d!1818172 (= c!1021260 (isEmpty!35440 (t!377004 s!2326)))))

(declare-fun e!3547038 () Bool)

(assert (=> d!1818172 (= (matchZipper!1927 ((_ map or) lt!2293818 lt!2293761) (t!377004 s!2326)) e!3547038)))

(declare-fun b!5774147 () Bool)

(assert (=> b!5774147 (= e!3547038 (nullableZipper!1711 ((_ map or) lt!2293818 lt!2293761)))))

(declare-fun b!5774148 () Bool)

(assert (=> b!5774148 (= e!3547038 (matchZipper!1927 (derivationStepZipper!1864 ((_ map or) lt!2293818 lt!2293761) (head!12204 (t!377004 s!2326))) (tail!11299 (t!377004 s!2326))))))

(assert (= (and d!1818172 c!1021260) b!5774147))

(assert (= (and d!1818172 (not c!1021260)) b!5774148))

(assert (=> d!1818172 m!6718094))

(declare-fun m!6719292 () Bool)

(assert (=> b!5774147 m!6719292))

(assert (=> b!5774148 m!6718098))

(assert (=> b!5774148 m!6718098))

(declare-fun m!6719294 () Bool)

(assert (=> b!5774148 m!6719294))

(assert (=> b!5774148 m!6718102))

(assert (=> b!5774148 m!6719294))

(assert (=> b!5774148 m!6718102))

(declare-fun m!6719296 () Bool)

(assert (=> b!5774148 m!6719296))

(assert (=> b!5772946 d!1818172))

(declare-fun d!1818174 () Bool)

(declare-fun c!1021261 () Bool)

(assert (=> d!1818174 (= c!1021261 (isEmpty!35440 (ite c!1020902 s!2326 (ite c!1020907 (t!377004 s!2326) (ite c!1020908 s!2326 (ite c!1020906 (t!377004 s!2326) s!2326))))))))

(declare-fun e!3547039 () Bool)

(assert (=> d!1818174 (= (matchZipper!1927 (ite c!1020902 lt!2293774 (ite c!1020907 lt!2293888 (ite c!1020908 z!1189 (ite c!1020906 ((_ map or) lt!2293818 lt!2293761) z!1189)))) (ite c!1020902 s!2326 (ite c!1020907 (t!377004 s!2326) (ite c!1020908 s!2326 (ite c!1020906 (t!377004 s!2326) s!2326))))) e!3547039)))

(declare-fun b!5774149 () Bool)

(assert (=> b!5774149 (= e!3547039 (nullableZipper!1711 (ite c!1020902 lt!2293774 (ite c!1020907 lt!2293888 (ite c!1020908 z!1189 (ite c!1020906 ((_ map or) lt!2293818 lt!2293761) z!1189))))))))

(declare-fun b!5774150 () Bool)

(assert (=> b!5774150 (= e!3547039 (matchZipper!1927 (derivationStepZipper!1864 (ite c!1020902 lt!2293774 (ite c!1020907 lt!2293888 (ite c!1020908 z!1189 (ite c!1020906 ((_ map or) lt!2293818 lt!2293761) z!1189)))) (head!12204 (ite c!1020902 s!2326 (ite c!1020907 (t!377004 s!2326) (ite c!1020908 s!2326 (ite c!1020906 (t!377004 s!2326) s!2326)))))) (tail!11299 (ite c!1020902 s!2326 (ite c!1020907 (t!377004 s!2326) (ite c!1020908 s!2326 (ite c!1020906 (t!377004 s!2326) s!2326)))))))))

(assert (= (and d!1818174 c!1021261) b!5774149))

(assert (= (and d!1818174 (not c!1021261)) b!5774150))

(declare-fun m!6719298 () Bool)

(assert (=> d!1818174 m!6719298))

(declare-fun m!6719300 () Bool)

(assert (=> b!5774149 m!6719300))

(declare-fun m!6719302 () Bool)

(assert (=> b!5774150 m!6719302))

(assert (=> b!5774150 m!6719302))

(declare-fun m!6719304 () Bool)

(assert (=> b!5774150 m!6719304))

(declare-fun m!6719306 () Bool)

(assert (=> b!5774150 m!6719306))

(assert (=> b!5774150 m!6719304))

(assert (=> b!5774150 m!6719306))

(declare-fun m!6719308 () Bool)

(assert (=> b!5774150 m!6719308))

(assert (=> bm!446946 d!1818174))

(declare-fun d!1818176 () Bool)

(assert (=> d!1818176 (matchR!7974 (Concat!24634 (ite c!1020903 (reg!16118 (regOne!32090 r!7292)) lt!2293701) (ite c!1020903 lt!2293804 (regTwo!32090 r!7292))) (++!14006 (ite c!1020903 (_1!36189 lt!2293864) (ite c!1020900 lt!2293846 Nil!63542)) (ite c!1020903 lt!2293716 (ite c!1020900 (_2!36189 lt!2293718) s!2326))))))

(declare-fun lt!2294114 () Unit!156778)

(assert (=> d!1818176 (= lt!2294114 (choose!43850 (ite c!1020903 (reg!16118 (regOne!32090 r!7292)) lt!2293701) (ite c!1020903 lt!2293804 (regTwo!32090 r!7292)) (ite c!1020903 (_1!36189 lt!2293864) (ite c!1020900 lt!2293846 Nil!63542)) (ite c!1020903 lt!2293716 (ite c!1020900 (_2!36189 lt!2293718) s!2326))))))

(declare-fun e!3547040 () Bool)

(assert (=> d!1818176 e!3547040))

(declare-fun res!2437131 () Bool)

(assert (=> d!1818176 (=> (not res!2437131) (not e!3547040))))

(assert (=> d!1818176 (= res!2437131 (validRegex!7525 (ite c!1020903 (reg!16118 (regOne!32090 r!7292)) lt!2293701)))))

(assert (=> d!1818176 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!294 (ite c!1020903 (reg!16118 (regOne!32090 r!7292)) lt!2293701) (ite c!1020903 lt!2293804 (regTwo!32090 r!7292)) (ite c!1020903 (_1!36189 lt!2293864) (ite c!1020900 lt!2293846 Nil!63542)) (ite c!1020903 lt!2293716 (ite c!1020900 (_2!36189 lt!2293718) s!2326))) lt!2294114)))

(declare-fun b!5774151 () Bool)

(assert (=> b!5774151 (= e!3547040 (validRegex!7525 (ite c!1020903 lt!2293804 (regTwo!32090 r!7292))))))

(assert (= (and d!1818176 res!2437131) b!5774151))

(declare-fun m!6719310 () Bool)

(assert (=> d!1818176 m!6719310))

(assert (=> d!1818176 m!6719310))

(declare-fun m!6719312 () Bool)

(assert (=> d!1818176 m!6719312))

(declare-fun m!6719314 () Bool)

(assert (=> d!1818176 m!6719314))

(declare-fun m!6719316 () Bool)

(assert (=> d!1818176 m!6719316))

(declare-fun m!6719318 () Bool)

(assert (=> b!5774151 m!6719318))

(assert (=> bm!447002 d!1818176))

(declare-fun bs!1354823 () Bool)

(declare-fun d!1818178 () Bool)

(assert (= bs!1354823 (and d!1818178 d!1817836)))

(declare-fun lambda!314462 () Int)

(assert (=> bs!1354823 (= lambda!314462 lambda!314370)))

(declare-fun bs!1354824 () Bool)

(assert (= bs!1354824 (and d!1818178 d!1818144)))

(assert (=> bs!1354824 (= lambda!314462 lambda!314459)))

(declare-fun bs!1354825 () Bool)

(assert (= bs!1354825 (and d!1818178 d!1818110)))

(assert (=> bs!1354825 (= lambda!314462 lambda!314451)))

(declare-fun bs!1354826 () Bool)

(assert (= bs!1354826 (and d!1818178 b!5772936)))

(assert (=> bs!1354826 (= lambda!314462 lambda!314359)))

(declare-fun bs!1354827 () Bool)

(assert (= bs!1354827 (and d!1818178 d!1818022)))

(assert (=> bs!1354827 (= lambda!314462 lambda!314425)))

(declare-fun bs!1354829 () Bool)

(assert (= bs!1354829 (and d!1818178 b!5772969)))

(assert (=> bs!1354829 (= lambda!314462 lambda!314357)))

(declare-fun bs!1354830 () Bool)

(assert (= bs!1354830 (and d!1818178 d!1817906)))

(assert (=> bs!1354830 (= lambda!314462 lambda!314393)))

(declare-fun bs!1354831 () Bool)

(assert (= bs!1354831 (and d!1818178 d!1817966)))

(assert (=> bs!1354831 (= lambda!314462 lambda!314416)))

(declare-fun bs!1354833 () Bool)

(assert (= bs!1354833 (and d!1818178 d!1817920)))

(assert (=> bs!1354833 (= lambda!314462 lambda!314397)))

(declare-fun bs!1354834 () Bool)

(assert (= bs!1354834 (and d!1818178 d!1817918)))

(assert (=> bs!1354834 (= lambda!314462 lambda!314394)))

(declare-fun bs!1354835 () Bool)

(assert (= bs!1354835 (and d!1818178 d!1817900)))

(assert (=> bs!1354835 (= lambda!314462 lambda!314390)))

(declare-fun b!5774152 () Bool)

(declare-fun e!3547043 () Bool)

(declare-fun lt!2294115 () Regex!15789)

(assert (=> b!5774152 (= e!3547043 (isEmptyExpr!1270 lt!2294115))))

(declare-fun e!3547041 () Bool)

(declare-fun b!5774153 () Bool)

(assert (=> b!5774153 (= e!3547041 (isEmpty!35442 (t!377005 (ite c!1020905 (t!377005 (exprs!5673 (h!69992 zl!343))) (ite c!1020902 lt!2293809 (ite c!1020907 (t!377005 (exprs!5673 (h!69992 zl!343))) (ite c!1020910 lt!2293898 (t!377005 (exprs!5673 (h!69992 zl!343))))))))))))

(declare-fun b!5774154 () Bool)

(declare-fun e!3547046 () Bool)

(assert (=> b!5774154 (= e!3547046 (= lt!2294115 (head!12205 (ite c!1020905 (t!377005 (exprs!5673 (h!69992 zl!343))) (ite c!1020902 lt!2293809 (ite c!1020907 (t!377005 (exprs!5673 (h!69992 zl!343))) (ite c!1020910 lt!2293898 (t!377005 (exprs!5673 (h!69992 zl!343))))))))))))

(declare-fun b!5774155 () Bool)

(declare-fun e!3547042 () Regex!15789)

(assert (=> b!5774155 (= e!3547042 EmptyExpr!15789)))

(declare-fun b!5774156 () Bool)

(declare-fun e!3547044 () Bool)

(assert (=> b!5774156 (= e!3547044 e!3547043)))

(declare-fun c!1021264 () Bool)

(assert (=> b!5774156 (= c!1021264 (isEmpty!35442 (ite c!1020905 (t!377005 (exprs!5673 (h!69992 zl!343))) (ite c!1020902 lt!2293809 (ite c!1020907 (t!377005 (exprs!5673 (h!69992 zl!343))) (ite c!1020910 lt!2293898 (t!377005 (exprs!5673 (h!69992 zl!343)))))))))))

(declare-fun b!5774157 () Bool)

(assert (=> b!5774157 (= e!3547043 e!3547046)))

(declare-fun c!1021265 () Bool)

(assert (=> b!5774157 (= c!1021265 (isEmpty!35442 (tail!11300 (ite c!1020905 (t!377005 (exprs!5673 (h!69992 zl!343))) (ite c!1020902 lt!2293809 (ite c!1020907 (t!377005 (exprs!5673 (h!69992 zl!343))) (ite c!1020910 lt!2293898 (t!377005 (exprs!5673 (h!69992 zl!343))))))))))))

(assert (=> d!1818178 e!3547044))

(declare-fun res!2437133 () Bool)

(assert (=> d!1818178 (=> (not res!2437133) (not e!3547044))))

(assert (=> d!1818178 (= res!2437133 (validRegex!7525 lt!2294115))))

(declare-fun e!3547045 () Regex!15789)

(assert (=> d!1818178 (= lt!2294115 e!3547045)))

(declare-fun c!1021262 () Bool)

(assert (=> d!1818178 (= c!1021262 e!3547041)))

(declare-fun res!2437132 () Bool)

(assert (=> d!1818178 (=> (not res!2437132) (not e!3547041))))

(assert (=> d!1818178 (= res!2437132 ((_ is Cons!63543) (ite c!1020905 (t!377005 (exprs!5673 (h!69992 zl!343))) (ite c!1020902 lt!2293809 (ite c!1020907 (t!377005 (exprs!5673 (h!69992 zl!343))) (ite c!1020910 lt!2293898 (t!377005 (exprs!5673 (h!69992 zl!343)))))))))))

(assert (=> d!1818178 (forall!14902 (ite c!1020905 (t!377005 (exprs!5673 (h!69992 zl!343))) (ite c!1020902 lt!2293809 (ite c!1020907 (t!377005 (exprs!5673 (h!69992 zl!343))) (ite c!1020910 lt!2293898 (t!377005 (exprs!5673 (h!69992 zl!343))))))) lambda!314462)))

(assert (=> d!1818178 (= (generalisedConcat!1404 (ite c!1020905 (t!377005 (exprs!5673 (h!69992 zl!343))) (ite c!1020902 lt!2293809 (ite c!1020907 (t!377005 (exprs!5673 (h!69992 zl!343))) (ite c!1020910 lt!2293898 (t!377005 (exprs!5673 (h!69992 zl!343)))))))) lt!2294115)))

(declare-fun b!5774158 () Bool)

(assert (=> b!5774158 (= e!3547045 e!3547042)))

(declare-fun c!1021263 () Bool)

(assert (=> b!5774158 (= c!1021263 ((_ is Cons!63543) (ite c!1020905 (t!377005 (exprs!5673 (h!69992 zl!343))) (ite c!1020902 lt!2293809 (ite c!1020907 (t!377005 (exprs!5673 (h!69992 zl!343))) (ite c!1020910 lt!2293898 (t!377005 (exprs!5673 (h!69992 zl!343)))))))))))

(declare-fun b!5774159 () Bool)

(assert (=> b!5774159 (= e!3547046 (isConcat!793 lt!2294115))))

(declare-fun b!5774160 () Bool)

(assert (=> b!5774160 (= e!3547042 (Concat!24634 (h!69991 (ite c!1020905 (t!377005 (exprs!5673 (h!69992 zl!343))) (ite c!1020902 lt!2293809 (ite c!1020907 (t!377005 (exprs!5673 (h!69992 zl!343))) (ite c!1020910 lt!2293898 (t!377005 (exprs!5673 (h!69992 zl!343)))))))) (generalisedConcat!1404 (t!377005 (ite c!1020905 (t!377005 (exprs!5673 (h!69992 zl!343))) (ite c!1020902 lt!2293809 (ite c!1020907 (t!377005 (exprs!5673 (h!69992 zl!343))) (ite c!1020910 lt!2293898 (t!377005 (exprs!5673 (h!69992 zl!343)))))))))))))

(declare-fun b!5774161 () Bool)

(assert (=> b!5774161 (= e!3547045 (h!69991 (ite c!1020905 (t!377005 (exprs!5673 (h!69992 zl!343))) (ite c!1020902 lt!2293809 (ite c!1020907 (t!377005 (exprs!5673 (h!69992 zl!343))) (ite c!1020910 lt!2293898 (t!377005 (exprs!5673 (h!69992 zl!343)))))))))))

(assert (= (and d!1818178 res!2437132) b!5774153))

(assert (= (and d!1818178 c!1021262) b!5774161))

(assert (= (and d!1818178 (not c!1021262)) b!5774158))

(assert (= (and b!5774158 c!1021263) b!5774160))

(assert (= (and b!5774158 (not c!1021263)) b!5774155))

(assert (= (and d!1818178 res!2437133) b!5774156))

(assert (= (and b!5774156 c!1021264) b!5774152))

(assert (= (and b!5774156 (not c!1021264)) b!5774157))

(assert (= (and b!5774157 c!1021265) b!5774154))

(assert (= (and b!5774157 (not c!1021265)) b!5774159))

(declare-fun m!6719346 () Bool)

(assert (=> b!5774156 m!6719346))

(declare-fun m!6719348 () Bool)

(assert (=> b!5774153 m!6719348))

(declare-fun m!6719352 () Bool)

(assert (=> b!5774157 m!6719352))

(assert (=> b!5774157 m!6719352))

(declare-fun m!6719354 () Bool)

(assert (=> b!5774157 m!6719354))

(declare-fun m!6719356 () Bool)

(assert (=> b!5774152 m!6719356))

(declare-fun m!6719358 () Bool)

(assert (=> b!5774154 m!6719358))

(declare-fun m!6719360 () Bool)

(assert (=> d!1818178 m!6719360))

(declare-fun m!6719362 () Bool)

(assert (=> d!1818178 m!6719362))

(declare-fun m!6719364 () Bool)

(assert (=> b!5774159 m!6719364))

(declare-fun m!6719366 () Bool)

(assert (=> b!5774160 m!6719366))

(assert (=> bm!447064 d!1818178))

(declare-fun d!1818188 () Bool)

(assert (=> d!1818188 (= (Exists!2889 (ite c!1020907 lambda!314344 (ite c!1020910 lambda!314350 (ite c!1020903 lambda!314354 (ite c!1020900 lambda!314362 lambda!314365))))) (choose!43821 (ite c!1020907 lambda!314344 (ite c!1020910 lambda!314350 (ite c!1020903 lambda!314354 (ite c!1020900 lambda!314362 lambda!314365))))))))

(declare-fun bs!1354836 () Bool)

(assert (= bs!1354836 d!1818188))

(declare-fun m!6719368 () Bool)

(assert (=> bs!1354836 m!6719368))

(assert (=> bm!447098 d!1818188))

(declare-fun e!3547048 () Bool)

(declare-fun b!5774164 () Bool)

(assert (=> b!5774164 (= e!3547048 (nullable!5821 (ite c!1020903 lt!2293701 lt!2293736)))))

(declare-fun b!5774165 () Bool)

(declare-fun e!3547051 () Bool)

(assert (=> b!5774165 (= e!3547051 (= (head!12204 (ite c!1020903 (_1!36189 lt!2293843) s!2326)) (c!1020912 (ite c!1020903 lt!2293701 lt!2293736))))))

(declare-fun call!447290 () Bool)

(declare-fun bm!447285 () Bool)

(assert (=> bm!447285 (= call!447290 (isEmpty!35440 (ite c!1020903 (_1!36189 lt!2293843) s!2326)))))

(declare-fun b!5774166 () Bool)

(declare-fun e!3547050 () Bool)

(declare-fun e!3547052 () Bool)

(assert (=> b!5774166 (= e!3547050 e!3547052)))

(declare-fun c!1021269 () Bool)

(assert (=> b!5774166 (= c!1021269 ((_ is EmptyLang!15789) (ite c!1020903 lt!2293701 lt!2293736)))))

(declare-fun b!5774167 () Bool)

(declare-fun res!2437134 () Bool)

(assert (=> b!5774167 (=> (not res!2437134) (not e!3547051))))

(assert (=> b!5774167 (= res!2437134 (not call!447290))))

(declare-fun b!5774168 () Bool)

(declare-fun e!3547053 () Bool)

(assert (=> b!5774168 (= e!3547053 (not (= (head!12204 (ite c!1020903 (_1!36189 lt!2293843) s!2326)) (c!1020912 (ite c!1020903 lt!2293701 lt!2293736)))))))

(declare-fun b!5774169 () Bool)

(declare-fun res!2437139 () Bool)

(assert (=> b!5774169 (=> (not res!2437139) (not e!3547051))))

(assert (=> b!5774169 (= res!2437139 (isEmpty!35440 (tail!11299 (ite c!1020903 (_1!36189 lt!2293843) s!2326))))))

(declare-fun b!5774170 () Bool)

(declare-fun res!2437141 () Bool)

(declare-fun e!3547054 () Bool)

(assert (=> b!5774170 (=> res!2437141 e!3547054)))

(assert (=> b!5774170 (= res!2437141 (not ((_ is ElementMatch!15789) (ite c!1020903 lt!2293701 lt!2293736))))))

(assert (=> b!5774170 (= e!3547052 e!3547054)))

(declare-fun b!5774171 () Bool)

(declare-fun lt!2294117 () Bool)

(assert (=> b!5774171 (= e!3547050 (= lt!2294117 call!447290))))

(declare-fun b!5774172 () Bool)

(assert (=> b!5774172 (= e!3547048 (matchR!7974 (derivativeStep!4565 (ite c!1020903 lt!2293701 lt!2293736) (head!12204 (ite c!1020903 (_1!36189 lt!2293843) s!2326))) (tail!11299 (ite c!1020903 (_1!36189 lt!2293843) s!2326))))))

(declare-fun d!1818190 () Bool)

(assert (=> d!1818190 e!3547050))

(declare-fun c!1021267 () Bool)

(assert (=> d!1818190 (= c!1021267 ((_ is EmptyExpr!15789) (ite c!1020903 lt!2293701 lt!2293736)))))

(assert (=> d!1818190 (= lt!2294117 e!3547048)))

(declare-fun c!1021268 () Bool)

(assert (=> d!1818190 (= c!1021268 (isEmpty!35440 (ite c!1020903 (_1!36189 lt!2293843) s!2326)))))

(assert (=> d!1818190 (validRegex!7525 (ite c!1020903 lt!2293701 lt!2293736))))

(assert (=> d!1818190 (= (matchR!7974 (ite c!1020903 lt!2293701 lt!2293736) (ite c!1020903 (_1!36189 lt!2293843) s!2326)) lt!2294117)))

(declare-fun b!5774173 () Bool)

(assert (=> b!5774173 (= e!3547052 (not lt!2294117))))

(declare-fun b!5774174 () Bool)

(declare-fun e!3547049 () Bool)

(assert (=> b!5774174 (= e!3547049 e!3547053)))

(declare-fun res!2437136 () Bool)

(assert (=> b!5774174 (=> res!2437136 e!3547053)))

(assert (=> b!5774174 (= res!2437136 call!447290)))

(declare-fun b!5774175 () Bool)

(declare-fun res!2437137 () Bool)

(assert (=> b!5774175 (=> res!2437137 e!3547053)))

(assert (=> b!5774175 (= res!2437137 (not (isEmpty!35440 (tail!11299 (ite c!1020903 (_1!36189 lt!2293843) s!2326)))))))

(declare-fun b!5774176 () Bool)

(assert (=> b!5774176 (= e!3547054 e!3547049)))

(declare-fun res!2437140 () Bool)

(assert (=> b!5774176 (=> (not res!2437140) (not e!3547049))))

(assert (=> b!5774176 (= res!2437140 (not lt!2294117))))

(declare-fun b!5774177 () Bool)

(declare-fun res!2437138 () Bool)

(assert (=> b!5774177 (=> res!2437138 e!3547054)))

(assert (=> b!5774177 (= res!2437138 e!3547051)))

(declare-fun res!2437135 () Bool)

(assert (=> b!5774177 (=> (not res!2437135) (not e!3547051))))

(assert (=> b!5774177 (= res!2437135 lt!2294117)))

(assert (= (and d!1818190 c!1021268) b!5774164))

(assert (= (and d!1818190 (not c!1021268)) b!5774172))

(assert (= (and d!1818190 c!1021267) b!5774171))

(assert (= (and d!1818190 (not c!1021267)) b!5774166))

(assert (= (and b!5774166 c!1021269) b!5774173))

(assert (= (and b!5774166 (not c!1021269)) b!5774170))

(assert (= (and b!5774170 (not res!2437141)) b!5774177))

(assert (= (and b!5774177 res!2437135) b!5774167))

(assert (= (and b!5774167 res!2437134) b!5774169))

(assert (= (and b!5774169 res!2437139) b!5774165))

(assert (= (and b!5774177 (not res!2437138)) b!5774176))

(assert (= (and b!5774176 res!2437140) b!5774174))

(assert (= (and b!5774174 (not res!2437136)) b!5774175))

(assert (= (and b!5774175 (not res!2437137)) b!5774168))

(assert (= (or b!5774171 b!5774167 b!5774174) bm!447285))

(declare-fun m!6719370 () Bool)

(assert (=> b!5774168 m!6719370))

(declare-fun m!6719372 () Bool)

(assert (=> b!5774164 m!6719372))

(assert (=> b!5774172 m!6719370))

(assert (=> b!5774172 m!6719370))

(declare-fun m!6719374 () Bool)

(assert (=> b!5774172 m!6719374))

(declare-fun m!6719376 () Bool)

(assert (=> b!5774172 m!6719376))

(assert (=> b!5774172 m!6719374))

(assert (=> b!5774172 m!6719376))

(declare-fun m!6719378 () Bool)

(assert (=> b!5774172 m!6719378))

(declare-fun m!6719380 () Bool)

(assert (=> d!1818190 m!6719380))

(declare-fun m!6719382 () Bool)

(assert (=> d!1818190 m!6719382))

(assert (=> b!5774175 m!6719376))

(assert (=> b!5774175 m!6719376))

(declare-fun m!6719384 () Bool)

(assert (=> b!5774175 m!6719384))

(assert (=> b!5774169 m!6719376))

(assert (=> b!5774169 m!6719376))

(assert (=> b!5774169 m!6719384))

(assert (=> bm!447285 m!6719380))

(assert (=> b!5774165 m!6719370))

(assert (=> bm!447111 d!1818190))

(declare-fun d!1818192 () Bool)

(declare-fun e!3547055 () Bool)

(assert (=> d!1818192 e!3547055))

(declare-fun res!2437142 () Bool)

(assert (=> d!1818192 (=> (not res!2437142) (not e!3547055))))

(declare-fun lt!2294118 () List!63666)

(assert (=> d!1818192 (= res!2437142 (= (content!11606 lt!2294118) ((_ map or) (content!11606 (ite c!1020903 (_1!36189 lt!2293864) (_2!36189 lt!2293729))) (content!11606 (ite c!1020903 (_2!36189 lt!2293864) (_2!36189 lt!2293718))))))))

(declare-fun e!3547056 () List!63666)

(assert (=> d!1818192 (= lt!2294118 e!3547056)))

(declare-fun c!1021270 () Bool)

(assert (=> d!1818192 (= c!1021270 ((_ is Nil!63542) (ite c!1020903 (_1!36189 lt!2293864) (_2!36189 lt!2293729))))))

(assert (=> d!1818192 (= (++!14006 (ite c!1020903 (_1!36189 lt!2293864) (_2!36189 lt!2293729)) (ite c!1020903 (_2!36189 lt!2293864) (_2!36189 lt!2293718))) lt!2294118)))

(declare-fun b!5774181 () Bool)

(assert (=> b!5774181 (= e!3547055 (or (not (= (ite c!1020903 (_2!36189 lt!2293864) (_2!36189 lt!2293718)) Nil!63542)) (= lt!2294118 (ite c!1020903 (_1!36189 lt!2293864) (_2!36189 lt!2293729)))))))

(declare-fun b!5774180 () Bool)

(declare-fun res!2437143 () Bool)

(assert (=> b!5774180 (=> (not res!2437143) (not e!3547055))))

(assert (=> b!5774180 (= res!2437143 (= (size!40082 lt!2294118) (+ (size!40082 (ite c!1020903 (_1!36189 lt!2293864) (_2!36189 lt!2293729))) (size!40082 (ite c!1020903 (_2!36189 lt!2293864) (_2!36189 lt!2293718))))))))

(declare-fun b!5774178 () Bool)

(assert (=> b!5774178 (= e!3547056 (ite c!1020903 (_2!36189 lt!2293864) (_2!36189 lt!2293718)))))

(declare-fun b!5774179 () Bool)

(assert (=> b!5774179 (= e!3547056 (Cons!63542 (h!69990 (ite c!1020903 (_1!36189 lt!2293864) (_2!36189 lt!2293729))) (++!14006 (t!377004 (ite c!1020903 (_1!36189 lt!2293864) (_2!36189 lt!2293729))) (ite c!1020903 (_2!36189 lt!2293864) (_2!36189 lt!2293718)))))))

(assert (= (and d!1818192 c!1021270) b!5774178))

(assert (= (and d!1818192 (not c!1021270)) b!5774179))

(assert (= (and d!1818192 res!2437142) b!5774180))

(assert (= (and b!5774180 res!2437143) b!5774181))

(declare-fun m!6719386 () Bool)

(assert (=> d!1818192 m!6719386))

(declare-fun m!6719388 () Bool)

(assert (=> d!1818192 m!6719388))

(declare-fun m!6719390 () Bool)

(assert (=> d!1818192 m!6719390))

(declare-fun m!6719392 () Bool)

(assert (=> b!5774180 m!6719392))

(declare-fun m!6719394 () Bool)

(assert (=> b!5774180 m!6719394))

(declare-fun m!6719396 () Bool)

(assert (=> b!5774180 m!6719396))

(declare-fun m!6719398 () Bool)

(assert (=> b!5774179 m!6719398))

(assert (=> bm!446949 d!1818192))

(declare-fun d!1818194 () Bool)

(assert (=> d!1818194 (= (flatMap!1402 (ite c!1020902 lt!2293786 (ite c!1020907 lt!2293772 (ite c!1020908 lt!2293860 lt!2293823))) (ite c!1020902 lambda!314343 (ite c!1020907 lambda!314343 (ite c!1020908 lambda!314343 lambda!314343)))) (choose!43819 (ite c!1020902 lt!2293786 (ite c!1020907 lt!2293772 (ite c!1020908 lt!2293860 lt!2293823))) (ite c!1020902 lambda!314343 (ite c!1020907 lambda!314343 (ite c!1020908 lambda!314343 lambda!314343)))))))

(declare-fun bs!1354837 () Bool)

(assert (= bs!1354837 d!1818194))

(declare-fun m!6719400 () Bool)

(assert (=> bs!1354837 m!6719400))

(assert (=> bm!446984 d!1818194))

(declare-fun e!3547061 () Bool)

(declare-fun b!5774188 () Bool)

(assert (=> b!5774188 (= e!3547061 (nullable!5821 (ite c!1020902 lt!2293706 (ite c!1020907 (Concat!24634 (regOne!32090 (regOne!32090 r!7292)) (Concat!24634 (regTwo!32090 (regOne!32090 r!7292)) lt!2293776)) (ite c!1020910 lt!2293896 (ite c!1020908 (ite c!1020903 lt!2293701 lt!2293787) lt!2293781))))))))

(declare-fun e!3547064 () Bool)

(declare-fun b!5774189 () Bool)

(assert (=> b!5774189 (= e!3547064 (= (head!12204 (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020903 lt!2293793 (_1!36189 lt!2293718)) s!2326))) (c!1020912 (ite c!1020902 lt!2293706 (ite c!1020907 (Concat!24634 (regOne!32090 (regOne!32090 r!7292)) (Concat!24634 (regTwo!32090 (regOne!32090 r!7292)) lt!2293776)) (ite c!1020910 lt!2293896 (ite c!1020908 (ite c!1020903 lt!2293701 lt!2293787) lt!2293781)))))))))

(declare-fun bm!447286 () Bool)

(declare-fun call!447291 () Bool)

(assert (=> bm!447286 (= call!447291 (isEmpty!35440 (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020903 lt!2293793 (_1!36189 lt!2293718)) s!2326))))))

(declare-fun b!5774190 () Bool)

(declare-fun e!3547063 () Bool)

(declare-fun e!3547065 () Bool)

(assert (=> b!5774190 (= e!3547063 e!3547065)))

(declare-fun c!1021275 () Bool)

(assert (=> b!5774190 (= c!1021275 ((_ is EmptyLang!15789) (ite c!1020902 lt!2293706 (ite c!1020907 (Concat!24634 (regOne!32090 (regOne!32090 r!7292)) (Concat!24634 (regTwo!32090 (regOne!32090 r!7292)) lt!2293776)) (ite c!1020910 lt!2293896 (ite c!1020908 (ite c!1020903 lt!2293701 lt!2293787) lt!2293781))))))))

(declare-fun b!5774191 () Bool)

(declare-fun res!2437146 () Bool)

(assert (=> b!5774191 (=> (not res!2437146) (not e!3547064))))

(assert (=> b!5774191 (= res!2437146 (not call!447291))))

(declare-fun b!5774192 () Bool)

(declare-fun e!3547066 () Bool)

(assert (=> b!5774192 (= e!3547066 (not (= (head!12204 (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020903 lt!2293793 (_1!36189 lt!2293718)) s!2326))) (c!1020912 (ite c!1020902 lt!2293706 (ite c!1020907 (Concat!24634 (regOne!32090 (regOne!32090 r!7292)) (Concat!24634 (regTwo!32090 (regOne!32090 r!7292)) lt!2293776)) (ite c!1020910 lt!2293896 (ite c!1020908 (ite c!1020903 lt!2293701 lt!2293787) lt!2293781))))))))))

(declare-fun b!5774193 () Bool)

(declare-fun res!2437151 () Bool)

(assert (=> b!5774193 (=> (not res!2437151) (not e!3547064))))

(assert (=> b!5774193 (= res!2437151 (isEmpty!35440 (tail!11299 (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020903 lt!2293793 (_1!36189 lt!2293718)) s!2326)))))))

(declare-fun b!5774194 () Bool)

(declare-fun res!2437153 () Bool)

(declare-fun e!3547067 () Bool)

(assert (=> b!5774194 (=> res!2437153 e!3547067)))

(assert (=> b!5774194 (= res!2437153 (not ((_ is ElementMatch!15789) (ite c!1020902 lt!2293706 (ite c!1020907 (Concat!24634 (regOne!32090 (regOne!32090 r!7292)) (Concat!24634 (regTwo!32090 (regOne!32090 r!7292)) lt!2293776)) (ite c!1020910 lt!2293896 (ite c!1020908 (ite c!1020903 lt!2293701 lt!2293787) lt!2293781)))))))))

(assert (=> b!5774194 (= e!3547065 e!3547067)))

(declare-fun b!5774195 () Bool)

(declare-fun lt!2294121 () Bool)

(assert (=> b!5774195 (= e!3547063 (= lt!2294121 call!447291))))

(declare-fun b!5774196 () Bool)

(assert (=> b!5774196 (= e!3547061 (matchR!7974 (derivativeStep!4565 (ite c!1020902 lt!2293706 (ite c!1020907 (Concat!24634 (regOne!32090 (regOne!32090 r!7292)) (Concat!24634 (regTwo!32090 (regOne!32090 r!7292)) lt!2293776)) (ite c!1020910 lt!2293896 (ite c!1020908 (ite c!1020903 lt!2293701 lt!2293787) lt!2293781)))) (head!12204 (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020903 lt!2293793 (_1!36189 lt!2293718)) s!2326)))) (tail!11299 (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020903 lt!2293793 (_1!36189 lt!2293718)) s!2326)))))))

(declare-fun d!1818196 () Bool)

(assert (=> d!1818196 e!3547063))

(declare-fun c!1021273 () Bool)

(assert (=> d!1818196 (= c!1021273 ((_ is EmptyExpr!15789) (ite c!1020902 lt!2293706 (ite c!1020907 (Concat!24634 (regOne!32090 (regOne!32090 r!7292)) (Concat!24634 (regTwo!32090 (regOne!32090 r!7292)) lt!2293776)) (ite c!1020910 lt!2293896 (ite c!1020908 (ite c!1020903 lt!2293701 lt!2293787) lt!2293781))))))))

(assert (=> d!1818196 (= lt!2294121 e!3547061)))

(declare-fun c!1021274 () Bool)

(assert (=> d!1818196 (= c!1021274 (isEmpty!35440 (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020903 lt!2293793 (_1!36189 lt!2293718)) s!2326))))))

(assert (=> d!1818196 (validRegex!7525 (ite c!1020902 lt!2293706 (ite c!1020907 (Concat!24634 (regOne!32090 (regOne!32090 r!7292)) (Concat!24634 (regTwo!32090 (regOne!32090 r!7292)) lt!2293776)) (ite c!1020910 lt!2293896 (ite c!1020908 (ite c!1020903 lt!2293701 lt!2293787) lt!2293781)))))))

(assert (=> d!1818196 (= (matchR!7974 (ite c!1020902 lt!2293706 (ite c!1020907 (Concat!24634 (regOne!32090 (regOne!32090 r!7292)) (Concat!24634 (regTwo!32090 (regOne!32090 r!7292)) lt!2293776)) (ite c!1020910 lt!2293896 (ite c!1020908 (ite c!1020903 lt!2293701 lt!2293787) lt!2293781)))) (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020903 lt!2293793 (_1!36189 lt!2293718)) s!2326))) lt!2294121)))

(declare-fun b!5774197 () Bool)

(assert (=> b!5774197 (= e!3547065 (not lt!2294121))))

(declare-fun b!5774198 () Bool)

(declare-fun e!3547062 () Bool)

(assert (=> b!5774198 (= e!3547062 e!3547066)))

(declare-fun res!2437148 () Bool)

(assert (=> b!5774198 (=> res!2437148 e!3547066)))

(assert (=> b!5774198 (= res!2437148 call!447291)))

(declare-fun b!5774199 () Bool)

(declare-fun res!2437149 () Bool)

(assert (=> b!5774199 (=> res!2437149 e!3547066)))

(assert (=> b!5774199 (= res!2437149 (not (isEmpty!35440 (tail!11299 (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020903 lt!2293793 (_1!36189 lt!2293718)) s!2326))))))))

(declare-fun b!5774200 () Bool)

(assert (=> b!5774200 (= e!3547067 e!3547062)))

(declare-fun res!2437152 () Bool)

(assert (=> b!5774200 (=> (not res!2437152) (not e!3547062))))

(assert (=> b!5774200 (= res!2437152 (not lt!2294121))))

(declare-fun b!5774201 () Bool)

(declare-fun res!2437150 () Bool)

(assert (=> b!5774201 (=> res!2437150 e!3547067)))

(assert (=> b!5774201 (= res!2437150 e!3547064)))

(declare-fun res!2437147 () Bool)

(assert (=> b!5774201 (=> (not res!2437147) (not e!3547064))))

(assert (=> b!5774201 (= res!2437147 lt!2294121)))

(assert (= (and d!1818196 c!1021274) b!5774188))

(assert (= (and d!1818196 (not c!1021274)) b!5774196))

(assert (= (and d!1818196 c!1021273) b!5774195))

(assert (= (and d!1818196 (not c!1021273)) b!5774190))

(assert (= (and b!5774190 c!1021275) b!5774197))

(assert (= (and b!5774190 (not c!1021275)) b!5774194))

(assert (= (and b!5774194 (not res!2437153)) b!5774201))

(assert (= (and b!5774201 res!2437147) b!5774191))

(assert (= (and b!5774191 res!2437146) b!5774193))

(assert (= (and b!5774193 res!2437151) b!5774189))

(assert (= (and b!5774201 (not res!2437150)) b!5774200))

(assert (= (and b!5774200 res!2437152) b!5774198))

(assert (= (and b!5774198 (not res!2437148)) b!5774199))

(assert (= (and b!5774199 (not res!2437149)) b!5774192))

(assert (= (or b!5774195 b!5774191 b!5774198) bm!447286))

(declare-fun m!6719402 () Bool)

(assert (=> b!5774192 m!6719402))

(declare-fun m!6719404 () Bool)

(assert (=> b!5774188 m!6719404))

(assert (=> b!5774196 m!6719402))

(assert (=> b!5774196 m!6719402))

(declare-fun m!6719406 () Bool)

(assert (=> b!5774196 m!6719406))

(declare-fun m!6719408 () Bool)

(assert (=> b!5774196 m!6719408))

(assert (=> b!5774196 m!6719406))

(assert (=> b!5774196 m!6719408))

(declare-fun m!6719410 () Bool)

(assert (=> b!5774196 m!6719410))

(declare-fun m!6719412 () Bool)

(assert (=> d!1818196 m!6719412))

(declare-fun m!6719414 () Bool)

(assert (=> d!1818196 m!6719414))

(assert (=> b!5774199 m!6719408))

(assert (=> b!5774199 m!6719408))

(declare-fun m!6719416 () Bool)

(assert (=> b!5774199 m!6719416))

(assert (=> b!5774193 m!6719408))

(assert (=> b!5774193 m!6719408))

(assert (=> b!5774193 m!6719416))

(assert (=> bm!447286 m!6719412))

(assert (=> b!5774189 m!6719402))

(assert (=> bm!447031 d!1818196))

(declare-fun d!1818198 () Bool)

(declare-fun c!1021277 () Bool)

(assert (=> d!1818198 (= c!1021277 (isEmpty!35440 (ite c!1020902 (t!377004 s!2326) (ite (or c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020903 (_1!36189 lt!2293864) (ite c!1020900 (_2!36189 lt!2293851) s!2326)) (t!377004 s!2326))))))))

(declare-fun e!3547070 () Bool)

(assert (=> d!1818198 (= (matchZipper!1927 (ite c!1020902 lt!2293711 (ite c!1020907 lt!2293894 (ite c!1020910 lt!2293771 (ite c!1020908 (ite c!1020903 lt!2293860 (ite c!1020900 lt!2293702 lt!2293719)) lt!2293818)))) (ite c!1020902 (t!377004 s!2326) (ite (or c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020903 (_1!36189 lt!2293864) (ite c!1020900 (_2!36189 lt!2293851) s!2326)) (t!377004 s!2326))))) e!3547070)))

(declare-fun b!5774208 () Bool)

(assert (=> b!5774208 (= e!3547070 (nullableZipper!1711 (ite c!1020902 lt!2293711 (ite c!1020907 lt!2293894 (ite c!1020910 lt!2293771 (ite c!1020908 (ite c!1020903 lt!2293860 (ite c!1020900 lt!2293702 lt!2293719)) lt!2293818))))))))

(declare-fun b!5774209 () Bool)

(assert (=> b!5774209 (= e!3547070 (matchZipper!1927 (derivationStepZipper!1864 (ite c!1020902 lt!2293711 (ite c!1020907 lt!2293894 (ite c!1020910 lt!2293771 (ite c!1020908 (ite c!1020903 lt!2293860 (ite c!1020900 lt!2293702 lt!2293719)) lt!2293818)))) (head!12204 (ite c!1020902 (t!377004 s!2326) (ite (or c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020903 (_1!36189 lt!2293864) (ite c!1020900 (_2!36189 lt!2293851) s!2326)) (t!377004 s!2326)))))) (tail!11299 (ite c!1020902 (t!377004 s!2326) (ite (or c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020903 (_1!36189 lt!2293864) (ite c!1020900 (_2!36189 lt!2293851) s!2326)) (t!377004 s!2326)))))))))

(assert (= (and d!1818198 c!1021277) b!5774208))

(assert (= (and d!1818198 (not c!1021277)) b!5774209))

(declare-fun m!6719422 () Bool)

(assert (=> d!1818198 m!6719422))

(declare-fun m!6719428 () Bool)

(assert (=> b!5774208 m!6719428))

(declare-fun m!6719434 () Bool)

(assert (=> b!5774209 m!6719434))

(assert (=> b!5774209 m!6719434))

(declare-fun m!6719438 () Bool)

(assert (=> b!5774209 m!6719438))

(declare-fun m!6719440 () Bool)

(assert (=> b!5774209 m!6719440))

(assert (=> b!5774209 m!6719438))

(assert (=> b!5774209 m!6719440))

(declare-fun m!6719442 () Bool)

(assert (=> b!5774209 m!6719442))

(assert (=> bm!447060 d!1818198))

(declare-fun d!1818202 () Bool)

(assert (=> d!1818202 (= (Exists!2889 (ite c!1020907 lambda!314344 (ite c!1020910 lambda!314350 (ite c!1020903 lambda!314354 (ite c!1020900 lambda!314361 lambda!314365))))) (choose!43821 (ite c!1020907 lambda!314344 (ite c!1020910 lambda!314350 (ite c!1020903 lambda!314354 (ite c!1020900 lambda!314361 lambda!314365))))))))

(declare-fun bs!1354838 () Bool)

(assert (= bs!1354838 d!1818202))

(declare-fun m!6719444 () Bool)

(assert (=> bs!1354838 m!6719444))

(assert (=> bm!446953 d!1818202))

(declare-fun d!1818204 () Bool)

(assert (=> d!1818204 (= (isDefined!12501 (ite c!1020907 call!447019 (ite c!1020910 call!447062 lt!2293880))) (not (isEmpty!35443 (ite c!1020907 call!447019 (ite c!1020910 call!447062 lt!2293880)))))))

(declare-fun bs!1354839 () Bool)

(assert (= bs!1354839 d!1818204))

(declare-fun m!6719446 () Bool)

(assert (=> bs!1354839 m!6719446))

(assert (=> bm!446936 d!1818204))

(declare-fun e!3547074 () Bool)

(declare-fun d!1818206 () Bool)

(assert (=> d!1818206 (= (matchZipper!1927 ((_ map or) (ite c!1020902 lt!2293711 (ite c!1020907 lt!2293874 lt!2293818)) (ite c!1020902 lt!2293761 (ite c!1020907 lt!2293747 lt!2293761))) (t!377004 s!2326)) e!3547074)))

(declare-fun res!2437159 () Bool)

(assert (=> d!1818206 (=> res!2437159 e!3547074)))

(assert (=> d!1818206 (= res!2437159 (matchZipper!1927 (ite c!1020902 lt!2293711 (ite c!1020907 lt!2293874 lt!2293818)) (t!377004 s!2326)))))

(declare-fun lt!2294123 () Unit!156778)

(assert (=> d!1818206 (= lt!2294123 (choose!43831 (ite c!1020902 lt!2293711 (ite c!1020907 lt!2293874 lt!2293818)) (ite c!1020902 lt!2293761 (ite c!1020907 lt!2293747 lt!2293761)) (t!377004 s!2326)))))

(assert (=> d!1818206 (= (lemmaZipperConcatMatchesSameAsBothZippers!814 (ite c!1020902 lt!2293711 (ite c!1020907 lt!2293874 lt!2293818)) (ite c!1020902 lt!2293761 (ite c!1020907 lt!2293747 lt!2293761)) (t!377004 s!2326)) lt!2294123)))

(declare-fun b!5774215 () Bool)

(assert (=> b!5774215 (= e!3547074 (matchZipper!1927 (ite c!1020902 lt!2293761 (ite c!1020907 lt!2293747 lt!2293761)) (t!377004 s!2326)))))

(assert (= (and d!1818206 (not res!2437159)) b!5774215))

(declare-fun m!6719454 () Bool)

(assert (=> d!1818206 m!6719454))

(declare-fun m!6719456 () Bool)

(assert (=> d!1818206 m!6719456))

(declare-fun m!6719458 () Bool)

(assert (=> d!1818206 m!6719458))

(declare-fun m!6719460 () Bool)

(assert (=> b!5774215 m!6719460))

(assert (=> bm!446997 d!1818206))

(declare-fun d!1818210 () Bool)

(assert (=> d!1818210 (matchR!7974 (Star!15789 (reg!16118 (regOne!32090 r!7292))) (++!14006 (ite c!1020903 (_1!36189 lt!2293864) (_1!36189 lt!2293729)) (ite c!1020903 (_2!36189 lt!2293864) (_2!36189 lt!2293729))))))

(declare-fun lt!2294128 () Unit!156778)

(declare-fun choose!43857 (Regex!15789 List!63666 List!63666) Unit!156778)

(assert (=> d!1818210 (= lt!2294128 (choose!43857 (reg!16118 (regOne!32090 r!7292)) (ite c!1020903 (_1!36189 lt!2293864) (_1!36189 lt!2293729)) (ite c!1020903 (_2!36189 lt!2293864) (_2!36189 lt!2293729))))))

(assert (=> d!1818210 (validRegex!7525 (Star!15789 (reg!16118 (regOne!32090 r!7292))))))

(assert (=> d!1818210 (= (lemmaStarApp!106 (reg!16118 (regOne!32090 r!7292)) (ite c!1020903 (_1!36189 lt!2293864) (_1!36189 lt!2293729)) (ite c!1020903 (_2!36189 lt!2293864) (_2!36189 lt!2293729))) lt!2294128)))

(declare-fun bs!1354840 () Bool)

(assert (= bs!1354840 d!1818210))

(assert (=> bs!1354840 m!6718042))

(assert (=> bs!1354840 m!6718042))

(declare-fun m!6719474 () Bool)

(assert (=> bs!1354840 m!6719474))

(declare-fun m!6719476 () Bool)

(assert (=> bs!1354840 m!6719476))

(declare-fun m!6719478 () Bool)

(assert (=> bs!1354840 m!6719478))

(assert (=> bm!447014 d!1818210))

(declare-fun bs!1354841 () Bool)

(declare-fun b!5774229 () Bool)

(assert (= bs!1354841 (and b!5774229 b!5772936)))

(declare-fun lambda!314463 () Int)

(assert (=> bs!1354841 (= (and (= s!2326 (_1!36189 lt!2293718)) (= (reg!16118 r!7292) (reg!16118 (regOne!32090 r!7292))) (= r!7292 lt!2293701)) (= lambda!314463 lambda!314364))))

(declare-fun bs!1354842 () Bool)

(assert (= bs!1354842 (and b!5774229 b!5772932)))

(assert (=> bs!1354842 (not (= lambda!314463 lambda!314342))))

(declare-fun bs!1354843 () Bool)

(assert (= bs!1354843 (and b!5774229 d!1818064)))

(assert (=> bs!1354843 (not (= lambda!314463 lambda!314442))))

(assert (=> bs!1354841 (not (= lambda!314463 lambda!314360))))

(declare-fun bs!1354844 () Bool)

(assert (= bs!1354844 (and b!5774229 d!1818104)))

(assert (=> bs!1354844 (not (= lambda!314463 lambda!314448))))

(declare-fun bs!1354845 () Bool)

(assert (= bs!1354845 (and b!5774229 b!5772964)))

(assert (=> bs!1354845 (not (= lambda!314463 lambda!314350))))

(declare-fun bs!1354846 () Bool)

(assert (= bs!1354846 (and b!5774229 b!5773263)))

(assert (=> bs!1354846 (= (and (= (reg!16118 r!7292) (reg!16118 lt!2293730)) (= r!7292 lt!2293730)) (= lambda!314463 lambda!314380))))

(declare-fun bs!1354847 () Bool)

(assert (= bs!1354847 (and b!5774229 b!5773505)))

(assert (=> bs!1354847 (= (and (= s!2326 (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020900 (_1!36189 lt!2293718) Nil!63542) s!2326))) (= (reg!16118 r!7292) (reg!16118 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292))))))) (= r!7292 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292))))))) (= lambda!314463 lambda!314413))))

(assert (=> bs!1354841 (not (= lambda!314463 lambda!314361))))

(declare-fun bs!1354848 () Bool)

(assert (= bs!1354848 (and b!5774229 b!5773764)))

(assert (=> bs!1354848 (= (and (= (reg!16118 r!7292) (reg!16118 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292))))))) (= r!7292 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292))))))) (= lambda!314463 lambda!314434))))

(assert (=> bs!1354841 (not (= lambda!314463 lambda!314362))))

(assert (=> bs!1354845 (not (= lambda!314463 lambda!314351))))

(declare-fun bs!1354849 () Bool)

(assert (= bs!1354849 (and b!5774229 b!5773497)))

(assert (=> bs!1354849 (not (= lambda!314463 lambda!314415))))

(declare-fun bs!1354850 () Bool)

(assert (= bs!1354850 (and b!5774229 b!5772969)))

(assert (=> bs!1354850 (not (= lambda!314463 lambda!314354))))

(assert (=> bs!1354850 (= (and (= s!2326 (_1!36189 lt!2293843)) (= (reg!16118 r!7292) (reg!16118 (regOne!32090 r!7292))) (= r!7292 lt!2293701)) (= lambda!314463 lambda!314355))))

(assert (=> bs!1354850 (not (= lambda!314463 lambda!314356))))

(assert (=> bs!1354843 (= (and (= s!2326 (ite c!1020903 (_1!36189 lt!2293843) (ite c!1020900 (_1!36189 lt!2293718) Nil!63542))) (= (reg!16118 r!7292) (reg!16118 (regOne!32090 r!7292))) (= r!7292 (Star!15789 (reg!16118 (regOne!32090 r!7292))))) (= lambda!314463 lambda!314444))))

(declare-fun bs!1354851 () Bool)

(assert (= bs!1354851 (and b!5774229 d!1818024)))

(assert (=> bs!1354851 (not (= lambda!314463 lambda!314427))))

(declare-fun bs!1354852 () Bool)

(assert (= bs!1354852 (and b!5774229 b!5772937)))

(assert (=> bs!1354852 (not (= lambda!314463 lambda!314344))))

(declare-fun bs!1354853 () Bool)

(assert (= bs!1354853 (and b!5774229 b!5773278)))

(assert (=> bs!1354853 (= (and (= s!2326 (ite c!1020902 s!2326 (ite c!1020903 (_1!36189 lt!2293843) s!2326))) (= (reg!16118 r!7292) (reg!16118 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736)))) (= r!7292 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736)))) (= lambda!314463 lambda!314384))))

(assert (=> bs!1354845 (not (= lambda!314463 lambda!314349))))

(assert (=> bs!1354852 (not (= lambda!314463 lambda!314346))))

(declare-fun bs!1354854 () Bool)

(assert (= bs!1354854 (and b!5774229 b!5773255)))

(assert (=> bs!1354854 (not (= lambda!314463 lambda!314383))))

(declare-fun bs!1354855 () Bool)

(assert (= bs!1354855 (and b!5774229 b!5772950)))

(assert (=> bs!1354855 (not (= lambda!314463 lambda!314365))))

(declare-fun bs!1354856 () Bool)

(assert (= bs!1354856 (and b!5774229 b!5773756)))

(assert (=> bs!1354856 (not (= lambda!314463 lambda!314435))))

(assert (=> bs!1354855 (= (and (= s!2326 Nil!63542) (= (reg!16118 r!7292) (reg!16118 (regOne!32090 r!7292))) (= r!7292 lt!2293701)) (= lambda!314463 lambda!314367))))

(assert (=> bs!1354852 (not (= lambda!314463 lambda!314345))))

(declare-fun bs!1354857 () Bool)

(assert (= bs!1354857 (and b!5774229 b!5772956)))

(assert (=> bs!1354857 (not (= lambda!314463 lambda!314353))))

(assert (=> bs!1354855 (not (= lambda!314463 lambda!314366))))

(declare-fun bs!1354858 () Bool)

(assert (= bs!1354858 (and b!5774229 d!1818134)))

(assert (=> bs!1354858 (not (= lambda!314463 lambda!314452))))

(assert (=> bs!1354841 (not (= lambda!314463 lambda!314363))))

(assert (=> bs!1354844 (not (= lambda!314463 lambda!314447))))

(assert (=> bs!1354845 (not (= lambda!314463 lambda!314348))))

(assert (=> bs!1354851 (not (= lambda!314463 lambda!314426))))

(declare-fun bs!1354859 () Bool)

(assert (= bs!1354859 (and b!5774229 d!1817950)))

(assert (=> bs!1354859 (not (= lambda!314463 lambda!314411))))

(assert (=> bs!1354852 (not (= lambda!314463 lambda!314347))))

(assert (=> bs!1354842 (not (= lambda!314463 lambda!314341))))

(declare-fun bs!1354860 () Bool)

(assert (= bs!1354860 (and b!5774229 d!1818096)))

(assert (=> bs!1354860 (not (= lambda!314463 lambda!314446))))

(assert (=> bs!1354859 (not (= lambda!314463 lambda!314409))))

(assert (=> bs!1354857 (not (= lambda!314463 lambda!314352))))

(declare-fun bs!1354861 () Bool)

(assert (= bs!1354861 (and b!5774229 d!1818050)))

(assert (=> bs!1354861 (not (= lambda!314463 lambda!314433))))

(declare-fun bs!1354862 () Bool)

(assert (= bs!1354862 (and b!5774229 b!5773270)))

(assert (=> bs!1354862 (not (= lambda!314463 lambda!314386))))

(assert (=> b!5774229 true))

(assert (=> b!5774229 true))

(declare-fun bs!1354863 () Bool)

(declare-fun b!5774221 () Bool)

(assert (= bs!1354863 (and b!5774221 b!5772936)))

(declare-fun lambda!314464 () Int)

(assert (=> bs!1354863 (not (= lambda!314464 lambda!314364))))

(declare-fun bs!1354864 () Bool)

(assert (= bs!1354864 (and b!5774221 b!5772932)))

(assert (=> bs!1354864 (= lambda!314464 lambda!314342)))

(declare-fun bs!1354865 () Bool)

(assert (= bs!1354865 (and b!5774221 d!1818064)))

(assert (=> bs!1354865 (not (= lambda!314464 lambda!314442))))

(assert (=> bs!1354863 (not (= lambda!314464 lambda!314360))))

(declare-fun bs!1354866 () Bool)

(assert (= bs!1354866 (and b!5774221 d!1818104)))

(assert (=> bs!1354866 (= lambda!314464 lambda!314448)))

(declare-fun bs!1354867 () Bool)

(assert (= bs!1354867 (and b!5774221 b!5772964)))

(assert (=> bs!1354867 (not (= lambda!314464 lambda!314350))))

(declare-fun bs!1354869 () Bool)

(assert (= bs!1354869 (and b!5774221 b!5773263)))

(assert (=> bs!1354869 (not (= lambda!314464 lambda!314380))))

(declare-fun bs!1354871 () Bool)

(assert (= bs!1354871 (and b!5774221 b!5773505)))

(assert (=> bs!1354871 (not (= lambda!314464 lambda!314413))))

(assert (=> bs!1354863 (= (= (regOne!32090 r!7292) lt!2293787) (= lambda!314464 lambda!314361))))

(declare-fun bs!1354875 () Bool)

(assert (= bs!1354875 (and b!5774221 b!5773764)))

(assert (=> bs!1354875 (not (= lambda!314464 lambda!314434))))

(assert (=> bs!1354863 (not (= lambda!314464 lambda!314362))))

(assert (=> bs!1354867 (= (and (= (regOne!32090 r!7292) (regTwo!32090 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293738)) (= lambda!314464 lambda!314351))))

(declare-fun bs!1354879 () Bool)

(assert (= bs!1354879 (and b!5774221 b!5772969)))

(assert (=> bs!1354879 (not (= lambda!314464 lambda!314354))))

(assert (=> bs!1354879 (not (= lambda!314464 lambda!314355))))

(assert (=> bs!1354879 (= (and (= s!2326 (_1!36189 lt!2293843)) (= (regOne!32090 r!7292) (reg!16118 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293701)) (= lambda!314464 lambda!314356))))

(assert (=> bs!1354865 (not (= lambda!314464 lambda!314444))))

(declare-fun bs!1354880 () Bool)

(assert (= bs!1354880 (and b!5774221 d!1818024)))

(assert (=> bs!1354880 (= (and (= s!2326 (ite (or c!1020907 c!1020910) s!2326 (ite c!1020903 (_1!36189 lt!2293843) (_1!36189 lt!2293718)))) (= (regOne!32090 r!7292) (ite c!1020907 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020910 (regTwo!32090 (regOne!32090 r!7292)) (reg!16118 (regOne!32090 r!7292))))) (= (regTwo!32090 r!7292) (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293738 lt!2293701)))) (= lambda!314464 lambda!314427))))

(declare-fun bs!1354881 () Bool)

(assert (= bs!1354881 (and b!5774221 b!5772937)))

(assert (=> bs!1354881 (not (= lambda!314464 lambda!314344))))

(declare-fun bs!1354882 () Bool)

(assert (= bs!1354882 (and b!5774221 b!5773278)))

(assert (=> bs!1354882 (not (= lambda!314464 lambda!314384))))

(assert (=> bs!1354867 (= (and (= (regOne!32090 r!7292) (regOne!32090 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293831)) (= lambda!314464 lambda!314349))))

(assert (=> bs!1354881 (not (= lambda!314464 lambda!314346))))

(declare-fun bs!1354883 () Bool)

(assert (= bs!1354883 (and b!5774221 b!5773255)))

(assert (=> bs!1354883 (= (and (= (regOne!32090 r!7292) (regOne!32090 lt!2293730)) (= (regTwo!32090 r!7292) (regTwo!32090 lt!2293730))) (= lambda!314464 lambda!314383))))

(declare-fun bs!1354884 () Bool)

(assert (= bs!1354884 (and b!5774221 b!5772950)))

(assert (=> bs!1354884 (not (= lambda!314464 lambda!314365))))

(declare-fun bs!1354885 () Bool)

(assert (= bs!1354885 (and b!5774221 b!5773756)))

(assert (=> bs!1354885 (= (and (= (regOne!32090 r!7292) (regOne!32090 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292))))))) (= (regTwo!32090 r!7292) (regTwo!32090 (ite c!1020902 lt!2293706 (ite c!1020907 lt!2293743 (ite c!1020910 lt!2293896 (ite c!1020908 lt!2293710 (regTwo!32090 r!7292)))))))) (= lambda!314464 lambda!314435))))

(assert (=> bs!1354884 (not (= lambda!314464 lambda!314367))))

(assert (=> bs!1354881 (= (and (= (regOne!32090 r!7292) (regOne!32090 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293835)) (= lambda!314464 lambda!314345))))

(declare-fun bs!1354886 () Bool)

(assert (= bs!1354886 (and b!5774221 b!5772956)))

(assert (=> bs!1354886 (= (= (regOne!32090 r!7292) lt!2293701) (= lambda!314464 lambda!314353))))

(assert (=> bs!1354884 (= (and (= s!2326 Nil!63542) (= (regOne!32090 r!7292) (reg!16118 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293701)) (= lambda!314464 lambda!314366))))

(declare-fun bs!1354887 () Bool)

(assert (= bs!1354887 (and b!5774221 d!1818134)))

(assert (=> bs!1354887 (not (= lambda!314464 lambda!314452))))

(assert (=> bs!1354863 (= (and (= s!2326 (_1!36189 lt!2293718)) (= (regOne!32090 r!7292) (reg!16118 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293701)) (= lambda!314464 lambda!314363))))

(assert (=> bs!1354866 (not (= lambda!314464 lambda!314447))))

(assert (=> bs!1354867 (not (= lambda!314464 lambda!314348))))

(assert (=> bs!1354880 (not (= lambda!314464 lambda!314426))))

(declare-fun bs!1354888 () Bool)

(assert (= bs!1354888 (and b!5774221 d!1817950)))

(assert (=> bs!1354888 (= (and (= s!2326 (ite (or c!1020907 c!1020910 c!1020903 c!1020900) s!2326 Nil!63542)) (= (regOne!32090 r!7292) (ite c!1020907 (regTwo!32090 (regOne!32090 r!7292)) (ite c!1020910 (regOne!32090 (regOne!32090 r!7292)) (ite c!1020903 lt!2293701 (ite c!1020900 lt!2293787 (reg!16118 (regOne!32090 r!7292))))))) (= (regTwo!32090 r!7292) (ite c!1020907 lt!2293776 (ite c!1020910 lt!2293831 (ite (or c!1020903 c!1020900) (regTwo!32090 r!7292) lt!2293701))))) (= lambda!314464 lambda!314411))))

(assert (=> bs!1354881 (= (and (= (regOne!32090 r!7292) (regTwo!32090 (regOne!32090 r!7292))) (= (regTwo!32090 r!7292) lt!2293776)) (= lambda!314464 lambda!314347))))

(assert (=> bs!1354864 (not (= lambda!314464 lambda!314341))))

(declare-fun bs!1354889 () Bool)

(assert (= bs!1354889 (and b!5774221 b!5773497)))

(assert (=> bs!1354889 (= (and (= s!2326 (ite (or c!1020902 c!1020907 c!1020910) s!2326 (ite c!1020908 (ite c!1020900 (_1!36189 lt!2293718) Nil!63542) s!2326))) (= (regOne!32090 r!7292) (regOne!32090 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292))))))) (= (regTwo!32090 r!7292) (regTwo!32090 (ite c!1020902 lt!2293845 (ite c!1020907 lt!2293835 (ite c!1020910 lt!2293831 (ite c!1020908 (ite c!1020900 lt!2293787 lt!2293701) (regOne!32090 r!7292)))))))) (= lambda!314464 lambda!314415))))

(declare-fun bs!1354891 () Bool)

(assert (= bs!1354891 (and b!5774221 b!5774229)))

(assert (=> bs!1354891 (not (= lambda!314464 lambda!314463))))

(declare-fun bs!1354892 () Bool)

(assert (= bs!1354892 (and b!5774221 d!1818096)))

(assert (=> bs!1354892 (not (= lambda!314464 lambda!314446))))

(assert (=> bs!1354888 (not (= lambda!314464 lambda!314409))))

(assert (=> bs!1354886 (not (= lambda!314464 lambda!314352))))

(declare-fun bs!1354893 () Bool)

(assert (= bs!1354893 (and b!5774221 d!1818050)))

(assert (=> bs!1354893 (not (= lambda!314464 lambda!314433))))

(declare-fun bs!1354894 () Bool)

(assert (= bs!1354894 (and b!5774221 b!5773270)))

(assert (=> bs!1354894 (= (and (= s!2326 (ite c!1020902 s!2326 (ite c!1020903 (_1!36189 lt!2293843) s!2326))) (= (regOne!32090 r!7292) (regOne!32090 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736)))) (= (regTwo!32090 r!7292) (regTwo!32090 (ite c!1020902 lt!2293875 (ite c!1020903 lt!2293701 lt!2293736))))) (= lambda!314464 lambda!314386))))

(assert (=> b!5774221 true))

(assert (=> b!5774221 true))

(declare-fun b!5774220 () Bool)

(declare-fun c!1021282 () Bool)

(assert (=> b!5774220 (= c!1021282 ((_ is ElementMatch!15789) r!7292))))

(declare-fun e!3547078 () Bool)

(declare-fun e!3547082 () Bool)

(assert (=> b!5774220 (= e!3547078 e!3547082)))

(declare-fun e!3547080 () Bool)

(declare-fun call!447294 () Bool)

(assert (=> b!5774221 (= e!3547080 call!447294)))

(declare-fun c!1021281 () Bool)

(declare-fun bm!447288 () Bool)

(assert (=> bm!447288 (= call!447294 (Exists!2889 (ite c!1021281 lambda!314463 lambda!314464)))))

(declare-fun b!5774222 () Bool)

(declare-fun e!3547081 () Bool)

(assert (=> b!5774222 (= e!3547081 e!3547078)))

(declare-fun res!2437164 () Bool)

(assert (=> b!5774222 (= res!2437164 (not ((_ is EmptyLang!15789) r!7292)))))

(assert (=> b!5774222 (=> (not res!2437164) (not e!3547078))))

(declare-fun b!5774223 () Bool)

(assert (=> b!5774223 (= e!3547082 (= s!2326 (Cons!63542 (c!1020912 r!7292) Nil!63542)))))

(declare-fun b!5774224 () Bool)

(declare-fun c!1021283 () Bool)

(assert (=> b!5774224 (= c!1021283 ((_ is Union!15789) r!7292))))

(declare-fun e!3547079 () Bool)

(assert (=> b!5774224 (= e!3547082 e!3547079)))

(declare-fun d!1818214 () Bool)

(declare-fun c!1021284 () Bool)

(assert (=> d!1818214 (= c!1021284 ((_ is EmptyExpr!15789) r!7292))))

(assert (=> d!1818214 (= (matchRSpec!2892 r!7292 s!2326) e!3547081)))

(declare-fun bm!447289 () Bool)

(declare-fun call!447293 () Bool)

(assert (=> bm!447289 (= call!447293 (isEmpty!35440 s!2326))))

(declare-fun b!5774225 () Bool)

(declare-fun e!3547084 () Bool)

(assert (=> b!5774225 (= e!3547079 e!3547084)))

(declare-fun res!2437162 () Bool)

(assert (=> b!5774225 (= res!2437162 (matchRSpec!2892 (regOne!32091 r!7292) s!2326))))

(assert (=> b!5774225 (=> res!2437162 e!3547084)))

(declare-fun b!5774226 () Bool)

(declare-fun res!2437163 () Bool)

(declare-fun e!3547083 () Bool)

(assert (=> b!5774226 (=> res!2437163 e!3547083)))

(assert (=> b!5774226 (= res!2437163 call!447293)))

(assert (=> b!5774226 (= e!3547080 e!3547083)))

(declare-fun b!5774227 () Bool)

(assert (=> b!5774227 (= e!3547084 (matchRSpec!2892 (regTwo!32091 r!7292) s!2326))))

(declare-fun b!5774228 () Bool)

(assert (=> b!5774228 (= e!3547079 e!3547080)))

(assert (=> b!5774228 (= c!1021281 ((_ is Star!15789) r!7292))))

(assert (=> b!5774229 (= e!3547083 call!447294)))

(declare-fun b!5774230 () Bool)

(assert (=> b!5774230 (= e!3547081 call!447293)))

(assert (= (and d!1818214 c!1021284) b!5774230))

(assert (= (and d!1818214 (not c!1021284)) b!5774222))

(assert (= (and b!5774222 res!2437164) b!5774220))

(assert (= (and b!5774220 c!1021282) b!5774223))

(assert (= (and b!5774220 (not c!1021282)) b!5774224))

(assert (= (and b!5774224 c!1021283) b!5774225))

(assert (= (and b!5774224 (not c!1021283)) b!5774228))

(assert (= (and b!5774225 (not res!2437162)) b!5774227))

(assert (= (and b!5774228 c!1021281) b!5774226))

(assert (= (and b!5774228 (not c!1021281)) b!5774221))

(assert (= (and b!5774226 (not res!2437163)) b!5774229))

(assert (= (or b!5774229 b!5774221) bm!447288))

(assert (= (or b!5774230 b!5774226) bm!447289))

(declare-fun m!6719518 () Bool)

(assert (=> bm!447288 m!6719518))

(assert (=> bm!447289 m!6718068))

(declare-fun m!6719520 () Bool)

(assert (=> b!5774225 m!6719520))

(declare-fun m!6719522 () Bool)

(assert (=> b!5774227 m!6719522))

(assert (=> b!5772961 d!1818214))

(declare-fun b!5774269 () Bool)

(declare-fun e!3547113 () Bool)

(assert (=> b!5774269 (= e!3547113 (nullable!5821 r!7292))))

(declare-fun b!5774270 () Bool)

(declare-fun e!3547116 () Bool)

(assert (=> b!5774270 (= e!3547116 (= (head!12204 s!2326) (c!1020912 r!7292)))))

(declare-fun bm!447299 () Bool)

(declare-fun call!447304 () Bool)

(assert (=> bm!447299 (= call!447304 (isEmpty!35440 s!2326))))

(declare-fun b!5774271 () Bool)

(declare-fun e!3547115 () Bool)

(declare-fun e!3547117 () Bool)

(assert (=> b!5774271 (= e!3547115 e!3547117)))

(declare-fun c!1021297 () Bool)

(assert (=> b!5774271 (= c!1021297 ((_ is EmptyLang!15789) r!7292))))

(declare-fun b!5774272 () Bool)

(declare-fun res!2437183 () Bool)

(assert (=> b!5774272 (=> (not res!2437183) (not e!3547116))))

(assert (=> b!5774272 (= res!2437183 (not call!447304))))

(declare-fun b!5774273 () Bool)

(declare-fun e!3547118 () Bool)

(assert (=> b!5774273 (= e!3547118 (not (= (head!12204 s!2326) (c!1020912 r!7292))))))

(declare-fun b!5774274 () Bool)

(declare-fun res!2437188 () Bool)

(assert (=> b!5774274 (=> (not res!2437188) (not e!3547116))))

(assert (=> b!5774274 (= res!2437188 (isEmpty!35440 (tail!11299 s!2326)))))

(declare-fun b!5774275 () Bool)

(declare-fun res!2437190 () Bool)

(declare-fun e!3547119 () Bool)

(assert (=> b!5774275 (=> res!2437190 e!3547119)))

(assert (=> b!5774275 (= res!2437190 (not ((_ is ElementMatch!15789) r!7292)))))

(assert (=> b!5774275 (= e!3547117 e!3547119)))

(declare-fun b!5774276 () Bool)

(declare-fun lt!2294134 () Bool)

(assert (=> b!5774276 (= e!3547115 (= lt!2294134 call!447304))))

(declare-fun b!5774277 () Bool)

(assert (=> b!5774277 (= e!3547113 (matchR!7974 (derivativeStep!4565 r!7292 (head!12204 s!2326)) (tail!11299 s!2326)))))

(declare-fun d!1818224 () Bool)

(assert (=> d!1818224 e!3547115))

(declare-fun c!1021295 () Bool)

(assert (=> d!1818224 (= c!1021295 ((_ is EmptyExpr!15789) r!7292))))

(assert (=> d!1818224 (= lt!2294134 e!3547113)))

(declare-fun c!1021296 () Bool)

(assert (=> d!1818224 (= c!1021296 (isEmpty!35440 s!2326))))

(assert (=> d!1818224 (validRegex!7525 r!7292)))

(assert (=> d!1818224 (= (matchR!7974 r!7292 s!2326) lt!2294134)))

(declare-fun b!5774278 () Bool)

(assert (=> b!5774278 (= e!3547117 (not lt!2294134))))

(declare-fun b!5774279 () Bool)

(declare-fun e!3547114 () Bool)

(assert (=> b!5774279 (= e!3547114 e!3547118)))

(declare-fun res!2437185 () Bool)

(assert (=> b!5774279 (=> res!2437185 e!3547118)))

(assert (=> b!5774279 (= res!2437185 call!447304)))

(declare-fun b!5774280 () Bool)

(declare-fun res!2437186 () Bool)

(assert (=> b!5774280 (=> res!2437186 e!3547118)))

(assert (=> b!5774280 (= res!2437186 (not (isEmpty!35440 (tail!11299 s!2326))))))

(declare-fun b!5774281 () Bool)

(assert (=> b!5774281 (= e!3547119 e!3547114)))

(declare-fun res!2437189 () Bool)

(assert (=> b!5774281 (=> (not res!2437189) (not e!3547114))))

(assert (=> b!5774281 (= res!2437189 (not lt!2294134))))

(declare-fun b!5774282 () Bool)

(declare-fun res!2437187 () Bool)

(assert (=> b!5774282 (=> res!2437187 e!3547119)))

(assert (=> b!5774282 (= res!2437187 e!3547116)))

(declare-fun res!2437184 () Bool)

(assert (=> b!5774282 (=> (not res!2437184) (not e!3547116))))

(assert (=> b!5774282 (= res!2437184 lt!2294134)))

(assert (= (and d!1818224 c!1021296) b!5774269))

(assert (= (and d!1818224 (not c!1021296)) b!5774277))

(assert (= (and d!1818224 c!1021295) b!5774276))

(assert (= (and d!1818224 (not c!1021295)) b!5774271))

(assert (= (and b!5774271 c!1021297) b!5774278))

(assert (= (and b!5774271 (not c!1021297)) b!5774275))

(assert (= (and b!5774275 (not res!2437190)) b!5774282))

(assert (= (and b!5774282 res!2437184) b!5774272))

(assert (= (and b!5774272 res!2437183) b!5774274))

(assert (= (and b!5774274 res!2437188) b!5774270))

(assert (= (and b!5774282 (not res!2437187)) b!5774281))

(assert (= (and b!5774281 res!2437189) b!5774279))

(assert (= (and b!5774279 (not res!2437185)) b!5774280))

(assert (= (and b!5774280 (not res!2437186)) b!5774273))

(assert (= (or b!5774276 b!5774272 b!5774279) bm!447299))

(assert (=> b!5774273 m!6718058))

(declare-fun m!6719524 () Bool)

(assert (=> b!5774269 m!6719524))

(assert (=> b!5774277 m!6718058))

(assert (=> b!5774277 m!6718058))

(declare-fun m!6719526 () Bool)

(assert (=> b!5774277 m!6719526))

(assert (=> b!5774277 m!6718064))

(assert (=> b!5774277 m!6719526))

(assert (=> b!5774277 m!6718064))

(declare-fun m!6719528 () Bool)

(assert (=> b!5774277 m!6719528))

(assert (=> d!1818224 m!6718068))

(assert (=> d!1818224 m!6717810))

(assert (=> b!5774280 m!6718064))

(assert (=> b!5774280 m!6718064))

(assert (=> b!5774280 m!6718072))

(assert (=> b!5774274 m!6718064))

(assert (=> b!5774274 m!6718064))

(assert (=> b!5774274 m!6718072))

(assert (=> bm!447299 m!6718068))

(assert (=> b!5774270 m!6718058))

(assert (=> b!5772961 d!1818224))

(declare-fun d!1818226 () Bool)

(assert (=> d!1818226 (= (matchR!7974 r!7292 s!2326) (matchRSpec!2892 r!7292 s!2326))))

(declare-fun lt!2294135 () Unit!156778)

(assert (=> d!1818226 (= lt!2294135 (choose!43824 r!7292 s!2326))))

(assert (=> d!1818226 (validRegex!7525 r!7292)))

(assert (=> d!1818226 (= (mainMatchTheorem!2892 r!7292 s!2326) lt!2294135)))

(declare-fun bs!1354895 () Bool)

(assert (= bs!1354895 d!1818226))

(assert (=> bs!1354895 m!6717696))

(assert (=> bs!1354895 m!6717694))

(declare-fun m!6719530 () Bool)

(assert (=> bs!1354895 m!6719530))

(assert (=> bs!1354895 m!6717810))

(assert (=> b!5772961 d!1818226))

(declare-fun b!5774283 () Bool)

(declare-fun e!3547122 () (InoxSet Context!10346))

(declare-fun call!447305 () (InoxSet Context!10346))

(assert (=> b!5774283 (= e!3547122 call!447305)))

(declare-fun e!3547121 () (InoxSet Context!10346))

(declare-fun b!5774284 () Bool)

(assert (=> b!5774284 (= e!3547121 ((_ map or) call!447305 (derivationStepZipperUp!1057 (Context!10347 (t!377005 (exprs!5673 (ite c!1020908 lt!2293775 lt!2293899)))) (h!69990 s!2326))))))

(declare-fun d!1818228 () Bool)

(declare-fun c!1021299 () Bool)

(declare-fun e!3547120 () Bool)

(assert (=> d!1818228 (= c!1021299 e!3547120)))

(declare-fun res!2437191 () Bool)

(assert (=> d!1818228 (=> (not res!2437191) (not e!3547120))))

(assert (=> d!1818228 (= res!2437191 ((_ is Cons!63543) (exprs!5673 (ite c!1020908 lt!2293775 lt!2293899))))))

(assert (=> d!1818228 (= (derivationStepZipperUp!1057 (ite c!1020908 lt!2293775 lt!2293899) (h!69990 s!2326)) e!3547121)))

(declare-fun b!5774285 () Bool)

(assert (=> b!5774285 (= e!3547121 e!3547122)))

(declare-fun c!1021298 () Bool)

(assert (=> b!5774285 (= c!1021298 ((_ is Cons!63543) (exprs!5673 (ite c!1020908 lt!2293775 lt!2293899))))))

(declare-fun b!5774286 () Bool)

(assert (=> b!5774286 (= e!3547120 (nullable!5821 (h!69991 (exprs!5673 (ite c!1020908 lt!2293775 lt!2293899)))))))

(declare-fun b!5774287 () Bool)

(assert (=> b!5774287 (= e!3547122 ((as const (Array Context!10346 Bool)) false))))

(declare-fun bm!447300 () Bool)

(assert (=> bm!447300 (= call!447305 (derivationStepZipperDown!1131 (h!69991 (exprs!5673 (ite c!1020908 lt!2293775 lt!2293899))) (Context!10347 (t!377005 (exprs!5673 (ite c!1020908 lt!2293775 lt!2293899)))) (h!69990 s!2326)))))

(assert (= (and d!1818228 res!2437191) b!5774286))

(assert (= (and d!1818228 c!1021299) b!5774284))

(assert (= (and d!1818228 (not c!1021299)) b!5774285))

(assert (= (and b!5774285 c!1021298) b!5774283))

(assert (= (and b!5774285 (not c!1021298)) b!5774287))

(assert (= (or b!5774284 b!5774283) bm!447300))

(declare-fun m!6719532 () Bool)

(assert (=> b!5774284 m!6719532))

(declare-fun m!6719534 () Bool)

(assert (=> b!5774286 m!6719534))

(declare-fun m!6719536 () Bool)

(assert (=> bm!447300 m!6719536))

(assert (=> bm!446974 d!1818228))

(declare-fun d!1818230 () Bool)

(assert (=> d!1818230 (= (flatMap!1402 lt!2293763 lambda!314343) (dynLambda!24872 lambda!314343 lt!2293900))))

(declare-fun lt!2294138 () Unit!156778)

(assert (=> d!1818230 (= lt!2294138 (choose!43818 lt!2293763 lt!2293900 lambda!314343))))

(assert (=> d!1818230 (= lt!2293763 (store ((as const (Array Context!10346 Bool)) false) lt!2293900 true))))

(assert (=> d!1818230 (= (lemmaFlatMapOnSingletonSet!934 lt!2293763 lt!2293900 lambda!314343) lt!2294138)))

(declare-fun b_lambda!217813 () Bool)

(assert (=> (not b_lambda!217813) (not d!1818230)))

(declare-fun bs!1354896 () Bool)

(assert (= bs!1354896 d!1818230))

(declare-fun m!6719538 () Bool)

(assert (=> bs!1354896 m!6719538))

(declare-fun m!6719540 () Bool)

(assert (=> bs!1354896 m!6719540))

(declare-fun m!6719542 () Bool)

(assert (=> bs!1354896 m!6719542))

(assert (=> bs!1354896 m!6717708))

(assert (=> b!5772939 d!1818230))

(declare-fun b!5774292 () Bool)

(declare-fun e!3547127 () (InoxSet Context!10346))

(declare-fun call!447306 () (InoxSet Context!10346))

(assert (=> b!5774292 (= e!3547127 call!447306)))

(declare-fun e!3547126 () (InoxSet Context!10346))

(declare-fun b!5774293 () Bool)

(assert (=> b!5774293 (= e!3547126 ((_ map or) call!447306 (derivationStepZipperUp!1057 (Context!10347 (t!377005 (exprs!5673 lt!2293814))) (h!69990 s!2326))))))

(declare-fun d!1818232 () Bool)

(declare-fun c!1021301 () Bool)

(declare-fun e!3547125 () Bool)

(assert (=> d!1818232 (= c!1021301 e!3547125)))

(declare-fun res!2437196 () Bool)

(assert (=> d!1818232 (=> (not res!2437196) (not e!3547125))))

(assert (=> d!1818232 (= res!2437196 ((_ is Cons!63543) (exprs!5673 lt!2293814)))))

(assert (=> d!1818232 (= (derivationStepZipperUp!1057 lt!2293814 (h!69990 s!2326)) e!3547126)))

(declare-fun b!5774294 () Bool)

(assert (=> b!5774294 (= e!3547126 e!3547127)))

(declare-fun c!1021300 () Bool)

(assert (=> b!5774294 (= c!1021300 ((_ is Cons!63543) (exprs!5673 lt!2293814)))))

(declare-fun b!5774295 () Bool)

(assert (=> b!5774295 (= e!3547125 (nullable!5821 (h!69991 (exprs!5673 lt!2293814))))))

(declare-fun b!5774296 () Bool)

(assert (=> b!5774296 (= e!3547127 ((as const (Array Context!10346 Bool)) false))))

(declare-fun bm!447301 () Bool)

(assert (=> bm!447301 (= call!447306 (derivationStepZipperDown!1131 (h!69991 (exprs!5673 lt!2293814)) (Context!10347 (t!377005 (exprs!5673 lt!2293814))) (h!69990 s!2326)))))

(assert (= (and d!1818232 res!2437196) b!5774295))

(assert (= (and d!1818232 c!1021301) b!5774293))

(assert (= (and d!1818232 (not c!1021301)) b!5774294))

(assert (= (and b!5774294 c!1021300) b!5774292))

(assert (= (and b!5774294 (not c!1021300)) b!5774296))

(assert (= (or b!5774293 b!5774292) bm!447301))

(declare-fun m!6719544 () Bool)

(assert (=> b!5774293 m!6719544))

(declare-fun m!6719546 () Bool)

(assert (=> b!5774295 m!6719546))

(declare-fun m!6719548 () Bool)

(assert (=> bm!447301 m!6719548))

(assert (=> b!5772939 d!1818232))

(declare-fun b!5774299 () Bool)

(declare-fun e!3547131 () (InoxSet Context!10346))

(declare-fun call!447307 () (InoxSet Context!10346))

(assert (=> b!5774299 (= e!3547131 call!447307)))

(declare-fun e!3547130 () (InoxSet Context!10346))

(declare-fun b!5774300 () Bool)

(assert (=> b!5774300 (= e!3547130 ((_ map or) call!447307 (derivationStepZipperUp!1057 (Context!10347 (t!377005 (exprs!5673 (ite c!1020902 lt!2293886 (ite c!1020907 lt!2293863 (ite c!1020910 lt!2293725 lt!2293900)))))) (h!69990 s!2326))))))

(declare-fun d!1818234 () Bool)

(declare-fun c!1021303 () Bool)

(declare-fun e!3547129 () Bool)

(assert (=> d!1818234 (= c!1021303 e!3547129)))

(declare-fun res!2437199 () Bool)

(assert (=> d!1818234 (=> (not res!2437199) (not e!3547129))))

(assert (=> d!1818234 (= res!2437199 ((_ is Cons!63543) (exprs!5673 (ite c!1020902 lt!2293886 (ite c!1020907 lt!2293863 (ite c!1020910 lt!2293725 lt!2293900))))))))

(assert (=> d!1818234 (= (derivationStepZipperUp!1057 (ite c!1020902 lt!2293886 (ite c!1020907 lt!2293863 (ite c!1020910 lt!2293725 lt!2293900))) (h!69990 s!2326)) e!3547130)))

(declare-fun b!5774301 () Bool)

(assert (=> b!5774301 (= e!3547130 e!3547131)))

(declare-fun c!1021302 () Bool)

(assert (=> b!5774301 (= c!1021302 ((_ is Cons!63543) (exprs!5673 (ite c!1020902 lt!2293886 (ite c!1020907 lt!2293863 (ite c!1020910 lt!2293725 lt!2293900))))))))

(declare-fun b!5774302 () Bool)

(assert (=> b!5774302 (= e!3547129 (nullable!5821 (h!69991 (exprs!5673 (ite c!1020902 lt!2293886 (ite c!1020907 lt!2293863 (ite c!1020910 lt!2293725 lt!2293900)))))))))

(declare-fun b!5774303 () Bool)

(assert (=> b!5774303 (= e!3547131 ((as const (Array Context!10346 Bool)) false))))

(declare-fun bm!447302 () Bool)

(assert (=> bm!447302 (= call!447307 (derivationStepZipperDown!1131 (h!69991 (exprs!5673 (ite c!1020902 lt!2293886 (ite c!1020907 lt!2293863 (ite c!1020910 lt!2293725 lt!2293900))))) (Context!10347 (t!377005 (exprs!5673 (ite c!1020902 lt!2293886 (ite c!1020907 lt!2293863 (ite c!1020910 lt!2293725 lt!2293900)))))) (h!69990 s!2326)))))

(assert (= (and d!1818234 res!2437199) b!5774302))

(assert (= (and d!1818234 c!1021303) b!5774300))

(assert (= (and d!1818234 (not c!1021303)) b!5774301))

(assert (= (and b!5774301 c!1021302) b!5774299))

(assert (= (and b!5774301 (not c!1021302)) b!5774303))

(assert (= (or b!5774300 b!5774299) bm!447302))

(declare-fun m!6719552 () Bool)

(assert (=> b!5774300 m!6719552))

(declare-fun m!6719554 () Bool)

(assert (=> b!5774302 m!6719554))

(declare-fun m!6719558 () Bool)

(assert (=> bm!447302 m!6719558))

(assert (=> bm!447027 d!1818234))

(declare-fun b!5774308 () Bool)

(declare-fun e!3547134 () Bool)

(declare-fun tp!1594499 () Bool)

(declare-fun tp!1594500 () Bool)

(assert (=> b!5774308 (= e!3547134 (and tp!1594499 tp!1594500))))

(assert (=> b!5772978 (= tp!1594492 e!3547134)))

(assert (= (and b!5772978 ((_ is Cons!63543) (exprs!5673 setElem!38799))) b!5774308))

(declare-fun b!5774319 () Bool)

(declare-fun e!3547137 () Bool)

(assert (=> b!5774319 (= e!3547137 tp_is_empty!40831)))

(declare-fun b!5774322 () Bool)

(declare-fun tp!1594515 () Bool)

(declare-fun tp!1594513 () Bool)

(assert (=> b!5774322 (= e!3547137 (and tp!1594515 tp!1594513))))

(assert (=> b!5772988 (= tp!1594493 e!3547137)))

(declare-fun b!5774320 () Bool)

(declare-fun tp!1594511 () Bool)

(declare-fun tp!1594514 () Bool)

(assert (=> b!5774320 (= e!3547137 (and tp!1594511 tp!1594514))))

(declare-fun b!5774321 () Bool)

(declare-fun tp!1594512 () Bool)

(assert (=> b!5774321 (= e!3547137 tp!1594512)))

(assert (= (and b!5772988 ((_ is ElementMatch!15789) (regOne!32090 r!7292))) b!5774319))

(assert (= (and b!5772988 ((_ is Concat!24634) (regOne!32090 r!7292))) b!5774320))

(assert (= (and b!5772988 ((_ is Star!15789) (regOne!32090 r!7292))) b!5774321))

(assert (= (and b!5772988 ((_ is Union!15789) (regOne!32090 r!7292))) b!5774322))

(declare-fun b!5774323 () Bool)

(declare-fun e!3547138 () Bool)

(assert (=> b!5774323 (= e!3547138 tp_is_empty!40831)))

(declare-fun b!5774326 () Bool)

(declare-fun tp!1594520 () Bool)

(declare-fun tp!1594518 () Bool)

(assert (=> b!5774326 (= e!3547138 (and tp!1594520 tp!1594518))))

(assert (=> b!5772988 (= tp!1594488 e!3547138)))

(declare-fun b!5774324 () Bool)

(declare-fun tp!1594516 () Bool)

(declare-fun tp!1594519 () Bool)

(assert (=> b!5774324 (= e!3547138 (and tp!1594516 tp!1594519))))

(declare-fun b!5774325 () Bool)

(declare-fun tp!1594517 () Bool)

(assert (=> b!5774325 (= e!3547138 tp!1594517)))

(assert (= (and b!5772988 ((_ is ElementMatch!15789) (regTwo!32090 r!7292))) b!5774323))

(assert (= (and b!5772988 ((_ is Concat!24634) (regTwo!32090 r!7292))) b!5774324))

(assert (= (and b!5772988 ((_ is Star!15789) (regTwo!32090 r!7292))) b!5774325))

(assert (= (and b!5772988 ((_ is Union!15789) (regTwo!32090 r!7292))) b!5774326))

(declare-fun b!5774327 () Bool)

(declare-fun e!3547139 () Bool)

(assert (=> b!5774327 (= e!3547139 tp_is_empty!40831)))

(declare-fun b!5774330 () Bool)

(declare-fun tp!1594525 () Bool)

(declare-fun tp!1594523 () Bool)

(assert (=> b!5774330 (= e!3547139 (and tp!1594525 tp!1594523))))

(assert (=> b!5772960 (= tp!1594487 e!3547139)))

(declare-fun b!5774328 () Bool)

(declare-fun tp!1594521 () Bool)

(declare-fun tp!1594524 () Bool)

(assert (=> b!5774328 (= e!3547139 (and tp!1594521 tp!1594524))))

(declare-fun b!5774329 () Bool)

(declare-fun tp!1594522 () Bool)

(assert (=> b!5774329 (= e!3547139 tp!1594522)))

(assert (= (and b!5772960 ((_ is ElementMatch!15789) (reg!16118 r!7292))) b!5774327))

(assert (= (and b!5772960 ((_ is Concat!24634) (reg!16118 r!7292))) b!5774328))

(assert (= (and b!5772960 ((_ is Star!15789) (reg!16118 r!7292))) b!5774329))

(assert (= (and b!5772960 ((_ is Union!15789) (reg!16118 r!7292))) b!5774330))

(declare-fun b!5774335 () Bool)

(declare-fun e!3547142 () Bool)

(declare-fun tp!1594528 () Bool)

(assert (=> b!5774335 (= e!3547142 (and tp_is_empty!40831 tp!1594528))))

(assert (=> b!5772938 (= tp!1594486 e!3547142)))

(assert (= (and b!5772938 ((_ is Cons!63542) (t!377004 s!2326))) b!5774335))

(declare-fun b!5774348 () Bool)

(declare-fun e!3547151 () Bool)

(declare-fun tp!1594533 () Bool)

(assert (=> b!5774348 (= e!3547151 tp!1594533)))

(declare-fun tp!1594534 () Bool)

(declare-fun b!5774347 () Bool)

(declare-fun e!3547150 () Bool)

(assert (=> b!5774347 (= e!3547150 (and (inv!82719 (h!69992 (t!377006 zl!343))) e!3547151 tp!1594534))))

(assert (=> b!5772935 (= tp!1594490 e!3547150)))

(assert (= b!5774347 b!5774348))

(assert (= (and b!5772935 ((_ is Cons!63544) (t!377006 zl!343))) b!5774347))

(declare-fun m!6719582 () Bool)

(assert (=> b!5774347 m!6719582))

(declare-fun b!5774349 () Bool)

(declare-fun e!3547152 () Bool)

(assert (=> b!5774349 (= e!3547152 tp_is_empty!40831)))

(declare-fun b!5774352 () Bool)

(declare-fun tp!1594539 () Bool)

(declare-fun tp!1594537 () Bool)

(assert (=> b!5774352 (= e!3547152 (and tp!1594539 tp!1594537))))

(assert (=> b!5772976 (= tp!1594485 e!3547152)))

(declare-fun b!5774350 () Bool)

(declare-fun tp!1594535 () Bool)

(declare-fun tp!1594538 () Bool)

(assert (=> b!5774350 (= e!3547152 (and tp!1594535 tp!1594538))))

(declare-fun b!5774351 () Bool)

(declare-fun tp!1594536 () Bool)

(assert (=> b!5774351 (= e!3547152 tp!1594536)))

(assert (= (and b!5772976 ((_ is ElementMatch!15789) (regOne!32091 r!7292))) b!5774349))

(assert (= (and b!5772976 ((_ is Concat!24634) (regOne!32091 r!7292))) b!5774350))

(assert (= (and b!5772976 ((_ is Star!15789) (regOne!32091 r!7292))) b!5774351))

(assert (= (and b!5772976 ((_ is Union!15789) (regOne!32091 r!7292))) b!5774352))

(declare-fun b!5774353 () Bool)

(declare-fun e!3547153 () Bool)

(assert (=> b!5774353 (= e!3547153 tp_is_empty!40831)))

(declare-fun b!5774356 () Bool)

(declare-fun tp!1594544 () Bool)

(declare-fun tp!1594542 () Bool)

(assert (=> b!5774356 (= e!3547153 (and tp!1594544 tp!1594542))))

(assert (=> b!5772976 (= tp!1594489 e!3547153)))

(declare-fun b!5774354 () Bool)

(declare-fun tp!1594540 () Bool)

(declare-fun tp!1594543 () Bool)

(assert (=> b!5774354 (= e!3547153 (and tp!1594540 tp!1594543))))

(declare-fun b!5774355 () Bool)

(declare-fun tp!1594541 () Bool)

(assert (=> b!5774355 (= e!3547153 tp!1594541)))

(assert (= (and b!5772976 ((_ is ElementMatch!15789) (regTwo!32091 r!7292))) b!5774353))

(assert (= (and b!5772976 ((_ is Concat!24634) (regTwo!32091 r!7292))) b!5774354))

(assert (= (and b!5772976 ((_ is Star!15789) (regTwo!32091 r!7292))) b!5774355))

(assert (= (and b!5772976 ((_ is Union!15789) (regTwo!32091 r!7292))) b!5774356))

(declare-fun condSetEmpty!38802 () Bool)

(assert (=> setNonEmpty!38799 (= condSetEmpty!38802 (= setRest!38799 ((as const (Array Context!10346 Bool)) false)))))

(declare-fun setRes!38802 () Bool)

(assert (=> setNonEmpty!38799 (= tp!1594491 setRes!38802)))

(declare-fun setIsEmpty!38802 () Bool)

(assert (=> setIsEmpty!38802 setRes!38802))

(declare-fun tp!1594550 () Bool)

(declare-fun setElem!38802 () Context!10346)

(declare-fun e!3547156 () Bool)

(declare-fun setNonEmpty!38802 () Bool)

(assert (=> setNonEmpty!38802 (= setRes!38802 (and tp!1594550 (inv!82719 setElem!38802) e!3547156))))

(declare-fun setRest!38802 () (InoxSet Context!10346))

(assert (=> setNonEmpty!38802 (= setRest!38799 ((_ map or) (store ((as const (Array Context!10346 Bool)) false) setElem!38802 true) setRest!38802))))

(declare-fun b!5774361 () Bool)

(declare-fun tp!1594549 () Bool)

(assert (=> b!5774361 (= e!3547156 tp!1594549)))

(assert (= (and setNonEmpty!38799 condSetEmpty!38802) setIsEmpty!38802))

(assert (= (and setNonEmpty!38799 (not condSetEmpty!38802)) setNonEmpty!38802))

(assert (= setNonEmpty!38802 b!5774361))

(declare-fun m!6719600 () Bool)

(assert (=> setNonEmpty!38802 m!6719600))

(declare-fun b!5774362 () Bool)

(declare-fun e!3547157 () Bool)

(declare-fun tp!1594551 () Bool)

(declare-fun tp!1594552 () Bool)

(assert (=> b!5774362 (= e!3547157 (and tp!1594551 tp!1594552))))

(assert (=> b!5772934 (= tp!1594494 e!3547157)))

(assert (= (and b!5772934 ((_ is Cons!63543) (exprs!5673 (h!69992 zl!343)))) b!5774362))

(declare-fun b_lambda!217819 () Bool)

(assert (= b_lambda!217797 (or b!5772949 b_lambda!217819)))

(declare-fun bs!1354904 () Bool)

(declare-fun d!1818254 () Bool)

(assert (= bs!1354904 (and d!1818254 b!5772949)))

(assert (=> bs!1354904 (= (dynLambda!24872 lambda!314343 lt!2293899) (derivationStepZipperUp!1057 lt!2293899 (h!69990 s!2326)))))

(assert (=> bs!1354904 m!6717742))

(assert (=> d!1817838 d!1818254))

(declare-fun b_lambda!217821 () Bool)

(assert (= b_lambda!217813 (or b!5772949 b_lambda!217821)))

(declare-fun bs!1354905 () Bool)

(declare-fun d!1818256 () Bool)

(assert (= bs!1354905 (and d!1818256 b!5772949)))

(assert (=> bs!1354905 (= (dynLambda!24872 lambda!314343 lt!2293900) (derivationStepZipperUp!1057 lt!2293900 (h!69990 s!2326)))))

(declare-fun m!6719602 () Bool)

(assert (=> bs!1354905 m!6719602))

(assert (=> d!1818230 d!1818256))

(declare-fun b_lambda!217823 () Bool)

(assert (= b_lambda!217803 (or b!5772936 b_lambda!217823)))

(declare-fun bs!1354906 () Bool)

(declare-fun d!1818258 () Bool)

(assert (= bs!1354906 (and d!1818258 b!5772936)))

(declare-fun lt!2294145 () Unit!156778)

(assert (=> bs!1354906 (= lt!2294145 (lemmaConcatPreservesForall!324 (exprs!5673 lt!2293775) lt!2293757 lambda!314359))))

(assert (=> bs!1354906 (= (dynLambda!24873 lambda!314358 lt!2293775) (Context!10347 (++!14007 (exprs!5673 lt!2293775) lt!2293757)))))

(declare-fun m!6719604 () Bool)

(assert (=> bs!1354906 m!6719604))

(declare-fun m!6719606 () Bool)

(assert (=> bs!1354906 m!6719606))

(assert (=> d!1817980 d!1818258))

(declare-fun b_lambda!217825 () Bool)

(assert (= b_lambda!217799 (or b!5772949 b_lambda!217825)))

(declare-fun bs!1354907 () Bool)

(declare-fun d!1818260 () Bool)

(assert (= bs!1354907 (and d!1818260 b!5772949)))

(assert (=> bs!1354907 (= (dynLambda!24872 lambda!314343 (h!69992 zl!343)) (derivationStepZipperUp!1057 (h!69992 zl!343) (h!69990 s!2326)))))

(assert (=> bs!1354907 m!6717726))

(assert (=> d!1817856 d!1818260))

(check-sat (not b!5773914) (not b!5773331) (not bm!447204) (not b!5774172) (not b!5774356) (not bm!447283) (not b!5773102) (not bm!447200) (not b!5773579) (not b!5773610) (not b!5773093) (not d!1818172) (not b!5774179) (not d!1818194) (not d!1817992) (not bm!447209) (not b!5773165) (not b!5773684) (not b!5773439) (not b!5773330) (not b!5774150) (not d!1818130) (not d!1817860) (not d!1818170) (not d!1817912) (not b!5774084) (not b!5774146) (not d!1818042) (not bm!447265) (not b!5774089) (not bs!1354906) (not d!1817894) (not b!5773669) (not d!1818134) (not b!5773687) (not d!1817900) (not b!5773525) (not bm!447263) (not b!5773916) (not b!5773360) (not d!1818064) (not b!5773039) (not b!5773663) (not d!1817950) (not b!5774329) (not b!5773739) (not setNonEmpty!38802) (not b!5773351) (not d!1817998) (not b!5773517) (not b!5774078) (not b!5774322) (not d!1817988) (not d!1818018) (not b!5774308) (not b!5773575) (not b!5773193) (not d!1817926) (not bm!447286) (not b!5774324) (not b!5773353) (not b!5773332) tp_is_empty!40831 (not b!5774196) (not d!1818020) (not b!5773435) (not b_lambda!217821) (not b!5773747) (not b!5773713) (not d!1818114) (not b!5774300) (not b!5773037) (not bm!447205) (not bm!447203) (not b!5773055) (not b!5773706) (not b!5774227) (not d!1818008) (not b!5773259) (not b!5773915) (not b!5773363) (not d!1818176) (not d!1818178) (not b!5774138) (not d!1817864) (not d!1818044) (not b!5773354) (not b!5773010) (not bs!1354904) (not b!5774165) (not b!5773730) (not d!1818192) (not b!5773503) (not b!5773518) (not b!5774277) (not b!5774160) (not d!1818202) (not b!5774156) (not bm!447272) (not bm!447174) (not b!5774328) (not b!5773091) (not d!1818230) (not b!5773171) (not bm!447181) (not d!1818056) (not b!5773688) (not d!1818132) (not b!5773573) (not b!5773631) (not d!1817922) (not d!1817984) (not d!1817924) (not b!5774295) (not d!1818012) (not b!5774286) (not b!5773716) (not b!5774135) (not bm!447282) (not bs!1354905) (not b!5774164) (not b!5774147) (not d!1817980) (not b!5773957) (not b!5774330) (not b!5774154) (not b!5773912) (not d!1818092) (not b!5774350) (not d!1818204) (not b!5773662) (not b!5773438) (not d!1818022) (not b_lambda!217795) (not b!5773339) (not bm!447284) (not b!5773326) (not b!5773456) (not bm!447288) (not b!5773334) (not bs!1354907) (not b!5773470) (not d!1818078) (not d!1817910) (not b!5774199) (not d!1817834) (not b!5774159) (not b!5773592) (not b!5773762) (not b!5773276) (not b!5773623) (not b!5774335) (not bm!447178) (not d!1818032) (not b_lambda!217819) (not b!5774130) (not b!5774148) (not b!5773440) (not bm!447270) (not b!5773691) (not bm!447300) (not b!5773608) (not b!5773501) (not d!1818190) (not d!1818224) (not d!1818152) (not d!1817884) (not b!5774082) (not d!1817878) (not bm!447208) (not b!5774302) (not b!5774361) (not b!5774192) (not bm!447155) (not b!5773917) (not b_lambda!217825) (not d!1818094) (not bm!447170) (not d!1818054) (not bm!447139) (not bm!447301) (not b!5773160) (not b!5773164) (not bm!447264) (not b!5773189) (not b!5774151) (not b!5773327) (not d!1818198) (not b!5773357) (not b!5774320) (not d!1818116) (not bm!447138) (not d!1817852) (not b!5773683) (not b!5773452) (not b!5773719) (not b!5773053) (not b_lambda!217823) (not b!5773624) (not b!5773350) (not b!5773521) (not d!1817858) (not b!5774225) (not b!5774152) (not d!1818154) (not b!5774362) (not b!5774145) (not b!5773364) (not b!5774273) (not d!1818088) (not d!1817882) (not b!5774090) (not b!5774157) (not b!5773576) (not d!1818188) (not b!5773190) (not b!5773621) (not d!1817966) (not b!5774280) (not b!5773958) (not d!1817850) (not b!5774348) (not b!5773969) (not d!1818166) (not b!5774134) (not d!1818014) (not b!5773760) (not b!5773894) (not bm!447289) (not d!1818210) (not b!5773743) (not b!5774193) (not d!1817874) (not bm!447169) (not d!1817892) (not b!5774325) (not b!5774168) (not b!5773168) (not b!5774355) (not bm!447266) (not b!5774169) (not b!5773191) (not d!1817934) (not bm!447285) (not b!5773188) (not b!5774284) (not d!1817870) (not bm!447123) (not bm!447143) (not b!5773455) (not d!1818174) (not d!1817946) (not b!5774077) (not b_lambda!217801) (not b!5773659) (not d!1818096) (not b!5773040) (not b!5773033) (not b!5773664) (not bm!447140) (not d!1817908) (not b!5773634) (not b!5773032) (not d!1817886) (not b!5773011) (not b!5773328) (not b!5773712) (not d!1818110) (not b!5774215) (not bm!447210) (not bm!447269) (not d!1818024) (not d!1818168) (not d!1818106) (not b!5774121) (not d!1817872) (not b!5774351) (not b!5774293) (not b!5773034) (not b!5773911) (not d!1817918) (not b!5774354) (not b!5773355) (not b!5773572) (not bm!447154) (not b!5774321) (not b!5773627) (not bm!447148) (not d!1818164) (not d!1817976) (not b!5774153) (not b!5773098) (not d!1817948) (not bm!447142) (not b!5773436) (not d!1817906) (not b!5773261) (not b!5773970) (not d!1817846) (not b!5774189) (not bm!447302) (not b!5774079) (not b!5773998) (not d!1818196) (not d!1817888) (not bm!447161) (not b!5774269) (not d!1817836) (not bm!447179) (not d!1818108) (not b!5773161) (not b!5774188) (not b!5773453) (not bm!447299) (not b!5774352) (not bm!447177) (not b!5773524) (not d!1818050) (not d!1818016) (not b!5773103) (not b!5773096) (not b!5773358) (not b!5774081) (not b!5774131) (not b!5773670) (not b!5773708) (not b!5774085) (not b!5773740) (not d!1817832) (not b!5773628) (not d!1817898) (not b!5773522) (not b!5773361) (not d!1818206) (not b!5773441) (not d!1818104) (not b!5773192) (not d!1817862) (not b!5774180) (not d!1818010) (not b!5774141) (not d!1817866) (not bm!447207) (not b!5773274) (not b!5773088) (not b_lambda!217811) (not b!5773036) (not bm!447262) (not b!5774347) (not d!1817838) (not b!5774270) (not d!1818226) (not b!5773895) (not b!5774144) (not bm!447271) (not bm!447259) (not d!1818162) (not b!5773694) (not b!5774209) (not b!5773744) (not b!5773750) (not b!5773519) (not b!5773660) (not b!5774274) (not b!5773709) (not b!5773665) (not b!5774175) (not d!1817920) (not b!5774149) (not b!5773580) (not b!5774326) (not d!1817968) (not d!1817856) (not d!1817958) (not bm!447160) (not d!1818144) (not b!5774208))
(check-sat)
