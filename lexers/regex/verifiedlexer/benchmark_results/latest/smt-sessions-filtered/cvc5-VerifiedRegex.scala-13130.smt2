; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!717530 () Bool)

(assert start!717530)

(declare-fun b!7347388 () Bool)

(declare-fun res!2967507 () Bool)

(declare-fun e!4399434 () Bool)

(assert (=> b!7347388 (=> (not res!2967507) (not e!4399434))))

(declare-datatypes ((C!38570 0))(
  ( (C!38571 (val!29645 Int)) )
))
(declare-datatypes ((Regex!19148 0))(
  ( (ElementMatch!19148 (c!1364928 C!38570)) (Concat!27993 (regOne!38808 Regex!19148) (regTwo!38808 Regex!19148)) (EmptyExpr!19148) (Star!19148 (reg!19477 Regex!19148)) (EmptyLang!19148) (Union!19148 (regOne!38809 Regex!19148) (regTwo!38809 Regex!19148)) )
))
(declare-fun r1!2370 () Regex!19148)

(declare-fun nullable!8239 (Regex!19148) Bool)

(assert (=> b!7347388 (= res!2967507 (nullable!8239 (regOne!38808 r1!2370)))))

(declare-fun b!7347389 () Bool)

(declare-fun e!4399429 () Bool)

(declare-fun tp!2086705 () Bool)

(assert (=> b!7347389 (= e!4399429 tp!2086705)))

(declare-fun b!7347390 () Bool)

(declare-fun e!4399431 () Bool)

(declare-fun e!4399436 () Bool)

(assert (=> b!7347390 (= e!4399431 e!4399436)))

(declare-fun res!2967505 () Bool)

(assert (=> b!7347390 (=> (not res!2967505) (not e!4399436))))

(declare-datatypes ((List!71644 0))(
  ( (Nil!71520) (Cons!71520 (h!77968 Regex!19148) (t!386049 List!71644)) )
))
(declare-datatypes ((Context!16176 0))(
  ( (Context!16177 (exprs!8588 List!71644)) )
))
(declare-fun cWitness!61 () Context!16176)

(declare-fun lt!2611459 () (Set Context!16176))

(assert (=> b!7347390 (= res!2967505 (set.member cWitness!61 lt!2611459))))

(declare-fun c!10362 () C!38570)

(declare-fun ct1!282 () Context!16176)

(declare-fun derivationStepZipperDown!2974 (Regex!19148 Context!16176 C!38570) (Set Context!16176))

(assert (=> b!7347390 (= lt!2611459 (derivationStepZipperDown!2974 r1!2370 ct1!282 c!10362))))

(declare-fun b!7347391 () Bool)

(declare-fun e!4399433 () Bool)

(declare-fun tp_is_empty!48541 () Bool)

(assert (=> b!7347391 (= e!4399433 tp_is_empty!48541)))

(declare-fun b!7347392 () Bool)

(declare-fun e!4399430 () Bool)

(declare-fun tp!2086708 () Bool)

(assert (=> b!7347392 (= e!4399430 tp!2086708)))

(declare-fun b!7347393 () Bool)

(declare-fun e!4399432 () Bool)

(assert (=> b!7347393 (= e!4399434 e!4399432)))

(declare-fun res!2967501 () Bool)

(assert (=> b!7347393 (=> (not res!2967501) (not e!4399432))))

(declare-fun lt!2611456 () (Set Context!16176))

(assert (=> b!7347393 (= res!2967501 (= lt!2611459 (set.union lt!2611456 (derivationStepZipperDown!2974 (regTwo!38808 r1!2370) ct1!282 c!10362))))))

(declare-fun lt!2611461 () Context!16176)

(assert (=> b!7347393 (= lt!2611456 (derivationStepZipperDown!2974 (regOne!38808 r1!2370) lt!2611461 c!10362))))

(declare-fun lt!2611463 () List!71644)

(assert (=> b!7347393 (= lt!2611461 (Context!16177 lt!2611463))))

(declare-fun $colon$colon!3146 (List!71644 Regex!19148) List!71644)

(assert (=> b!7347393 (= lt!2611463 ($colon$colon!3146 (exprs!8588 ct1!282) (regTwo!38808 r1!2370)))))

(declare-fun b!7347394 () Bool)

(declare-fun tp!2086707 () Bool)

(declare-fun tp!2086703 () Bool)

(assert (=> b!7347394 (= e!4399433 (and tp!2086707 tp!2086703))))

(declare-fun b!7347395 () Bool)

(declare-fun tp!2086702 () Bool)

(declare-fun tp!2086704 () Bool)

(assert (=> b!7347395 (= e!4399433 (and tp!2086702 tp!2086704))))

(declare-fun res!2967503 () Bool)

(assert (=> start!717530 (=> (not res!2967503) (not e!4399431))))

(declare-fun validRegex!9744 (Regex!19148) Bool)

(assert (=> start!717530 (= res!2967503 (validRegex!9744 r1!2370))))

(assert (=> start!717530 e!4399431))

(assert (=> start!717530 tp_is_empty!48541))

(declare-fun inv!91211 (Context!16176) Bool)

(assert (=> start!717530 (and (inv!91211 cWitness!61) e!4399430)))

(declare-fun e!4399437 () Bool)

(assert (=> start!717530 (and (inv!91211 ct1!282) e!4399437)))

(assert (=> start!717530 e!4399433))

(declare-fun ct2!378 () Context!16176)

(assert (=> start!717530 (and (inv!91211 ct2!378) e!4399429)))

(declare-fun b!7347396 () Bool)

(declare-fun e!4399435 () Bool)

(assert (=> b!7347396 (= e!4399432 (not e!4399435))))

(declare-fun res!2967506 () Bool)

(assert (=> b!7347396 (=> res!2967506 e!4399435)))

(declare-fun lt!2611455 () Context!16176)

(declare-fun lt!2611458 () (Set Context!16176))

(assert (=> b!7347396 (= res!2967506 (not (set.member lt!2611455 lt!2611458)))))

(declare-datatypes ((Unit!165249 0))(
  ( (Unit!165250) )
))
(declare-fun lt!2611460 () Unit!165249)

(declare-fun lambda!456230 () Int)

(declare-fun lemmaConcatPreservesForall!1823 (List!71644 List!71644 Int) Unit!165249)

(assert (=> b!7347396 (= lt!2611460 (lemmaConcatPreservesForall!1823 (exprs!8588 cWitness!61) (exprs!8588 ct2!378) lambda!456230))))

(declare-fun ++!16966 (List!71644 List!71644) List!71644)

(assert (=> b!7347396 (set.member lt!2611455 (derivationStepZipperDown!2974 (regOne!38808 r1!2370) (Context!16177 (++!16966 lt!2611463 (exprs!8588 ct2!378))) c!10362))))

(assert (=> b!7347396 (= lt!2611455 (Context!16177 (++!16966 (exprs!8588 cWitness!61) (exprs!8588 ct2!378))))))

(declare-fun lt!2611457 () Unit!165249)

(assert (=> b!7347396 (= lt!2611457 (lemmaConcatPreservesForall!1823 lt!2611463 (exprs!8588 ct2!378) lambda!456230))))

(declare-fun lt!2611465 () Unit!165249)

(assert (=> b!7347396 (= lt!2611465 (lemmaConcatPreservesForall!1823 (exprs!8588 cWitness!61) (exprs!8588 ct2!378) lambda!456230))))

(declare-fun lt!2611464 () Unit!165249)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!75 (Regex!19148 Context!16176 Context!16176 Context!16176 C!38570) Unit!165249)

(assert (=> b!7347396 (= lt!2611464 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!75 (regOne!38808 r1!2370) lt!2611461 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7347397 () Bool)

(declare-fun res!2967504 () Bool)

(assert (=> b!7347397 (=> (not res!2967504) (not e!4399434))))

(assert (=> b!7347397 (= res!2967504 (validRegex!9744 (regTwo!38808 r1!2370)))))

(declare-fun b!7347398 () Bool)

(assert (=> b!7347398 (= e!4399436 e!4399434)))

(declare-fun res!2967509 () Bool)

(assert (=> b!7347398 (=> (not res!2967509) (not e!4399434))))

(assert (=> b!7347398 (= res!2967509 (and (or (not (is-ElementMatch!19148 r1!2370)) (not (= c!10362 (c!1364928 r1!2370)))) (not (is-Union!19148 r1!2370)) (is-Concat!27993 r1!2370)))))

(assert (=> b!7347398 (= lt!2611458 (derivationStepZipperDown!2974 r1!2370 (Context!16177 (++!16966 (exprs!8588 ct1!282) (exprs!8588 ct2!378))) c!10362))))

(declare-fun lt!2611462 () Unit!165249)

(assert (=> b!7347398 (= lt!2611462 (lemmaConcatPreservesForall!1823 (exprs!8588 ct1!282) (exprs!8588 ct2!378) lambda!456230))))

(declare-fun b!7347399 () Bool)

(declare-fun e!4399438 () Bool)

(declare-fun forall!17974 (List!71644 Int) Bool)

(assert (=> b!7347399 (= e!4399438 (forall!17974 (exprs!8588 ct2!378) lambda!456230))))

(declare-fun b!7347400 () Bool)

(declare-fun res!2967502 () Bool)

(assert (=> b!7347400 (=> (not res!2967502) (not e!4399432))))

(assert (=> b!7347400 (= res!2967502 (set.member cWitness!61 lt!2611456))))

(declare-fun b!7347401 () Bool)

(declare-fun tp!2086706 () Bool)

(assert (=> b!7347401 (= e!4399437 tp!2086706)))

(declare-fun b!7347402 () Bool)

(assert (=> b!7347402 (= e!4399435 e!4399438)))

(declare-fun res!2967508 () Bool)

(assert (=> b!7347402 (=> res!2967508 e!4399438)))

(assert (=> b!7347402 (= res!2967508 (not (forall!17974 (exprs!8588 ct1!282) lambda!456230)))))

(declare-fun lt!2611454 () Unit!165249)

(assert (=> b!7347402 (= lt!2611454 (lemmaConcatPreservesForall!1823 (exprs!8588 cWitness!61) (exprs!8588 ct2!378) lambda!456230))))

(declare-fun b!7347403 () Bool)

(declare-fun tp!2086709 () Bool)

(assert (=> b!7347403 (= e!4399433 tp!2086709)))

(assert (= (and start!717530 res!2967503) b!7347390))

(assert (= (and b!7347390 res!2967505) b!7347398))

(assert (= (and b!7347398 res!2967509) b!7347388))

(assert (= (and b!7347388 res!2967507) b!7347397))

(assert (= (and b!7347397 res!2967504) b!7347393))

(assert (= (and b!7347393 res!2967501) b!7347400))

(assert (= (and b!7347400 res!2967502) b!7347396))

(assert (= (and b!7347396 (not res!2967506)) b!7347402))

(assert (= (and b!7347402 (not res!2967508)) b!7347399))

(assert (= start!717530 b!7347392))

(assert (= start!717530 b!7347401))

(assert (= (and start!717530 (is-ElementMatch!19148 r1!2370)) b!7347391))

(assert (= (and start!717530 (is-Concat!27993 r1!2370)) b!7347395))

(assert (= (and start!717530 (is-Star!19148 r1!2370)) b!7347403))

(assert (= (and start!717530 (is-Union!19148 r1!2370)) b!7347394))

(assert (= start!717530 b!7347389))

(declare-fun m!8009466 () Bool)

(assert (=> b!7347393 m!8009466))

(declare-fun m!8009468 () Bool)

(assert (=> b!7347393 m!8009468))

(declare-fun m!8009470 () Bool)

(assert (=> b!7347393 m!8009470))

(declare-fun m!8009472 () Bool)

(assert (=> b!7347396 m!8009472))

(declare-fun m!8009474 () Bool)

(assert (=> b!7347396 m!8009474))

(declare-fun m!8009476 () Bool)

(assert (=> b!7347396 m!8009476))

(declare-fun m!8009478 () Bool)

(assert (=> b!7347396 m!8009478))

(declare-fun m!8009480 () Bool)

(assert (=> b!7347396 m!8009480))

(declare-fun m!8009482 () Bool)

(assert (=> b!7347396 m!8009482))

(assert (=> b!7347396 m!8009480))

(declare-fun m!8009484 () Bool)

(assert (=> b!7347396 m!8009484))

(declare-fun m!8009486 () Bool)

(assert (=> b!7347396 m!8009486))

(declare-fun m!8009488 () Bool)

(assert (=> b!7347397 m!8009488))

(declare-fun m!8009490 () Bool)

(assert (=> b!7347388 m!8009490))

(declare-fun m!8009492 () Bool)

(assert (=> b!7347390 m!8009492))

(declare-fun m!8009494 () Bool)

(assert (=> b!7347390 m!8009494))

(declare-fun m!8009496 () Bool)

(assert (=> b!7347398 m!8009496))

(declare-fun m!8009498 () Bool)

(assert (=> b!7347398 m!8009498))

(declare-fun m!8009500 () Bool)

(assert (=> b!7347398 m!8009500))

(declare-fun m!8009502 () Bool)

(assert (=> start!717530 m!8009502))

(declare-fun m!8009504 () Bool)

(assert (=> start!717530 m!8009504))

(declare-fun m!8009506 () Bool)

(assert (=> start!717530 m!8009506))

(declare-fun m!8009508 () Bool)

(assert (=> start!717530 m!8009508))

(declare-fun m!8009510 () Bool)

(assert (=> b!7347402 m!8009510))

(assert (=> b!7347402 m!8009480))

(declare-fun m!8009512 () Bool)

(assert (=> b!7347400 m!8009512))

(declare-fun m!8009514 () Bool)

(assert (=> b!7347399 m!8009514))

(push 1)

(assert (not b!7347398))

(assert (not b!7347389))

(assert (not b!7347393))

(assert (not b!7347399))

(assert (not b!7347390))

(assert (not b!7347388))

(assert (not b!7347402))

(assert (not b!7347401))

(assert (not b!7347403))

(assert (not b!7347395))

(assert (not b!7347394))

(assert (not b!7347392))

(assert (not b!7347396))

(assert tp_is_empty!48541)

(assert (not start!717530))

(assert (not b!7347397))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7347474 () Bool)

(declare-fun e!4399487 () Bool)

(declare-fun call!671550 () Bool)

(assert (=> b!7347474 (= e!4399487 call!671550)))

(declare-fun b!7347475 () Bool)

(declare-fun e!4399490 () Bool)

(declare-fun call!671552 () Bool)

(assert (=> b!7347475 (= e!4399490 call!671552)))

(declare-fun b!7347476 () Bool)

(declare-fun e!4399492 () Bool)

(declare-fun e!4399489 () Bool)

(assert (=> b!7347476 (= e!4399492 e!4399489)))

(declare-fun res!2967552 () Bool)

(assert (=> b!7347476 (= res!2967552 (not (nullable!8239 (reg!19477 r1!2370))))))

(assert (=> b!7347476 (=> (not res!2967552) (not e!4399489))))

(declare-fun bm!671545 () Bool)

(declare-fun call!671551 () Bool)

(assert (=> bm!671545 (= call!671552 call!671551)))

(declare-fun b!7347478 () Bool)

(declare-fun e!4399493 () Bool)

(assert (=> b!7347478 (= e!4399493 e!4399487)))

(declare-fun res!2967551 () Bool)

(assert (=> b!7347478 (=> (not res!2967551) (not e!4399487))))

(assert (=> b!7347478 (= res!2967551 call!671552)))

(declare-fun b!7347479 () Bool)

(declare-fun res!2967555 () Bool)

(assert (=> b!7347479 (=> (not res!2967555) (not e!4399490))))

(assert (=> b!7347479 (= res!2967555 call!671550)))

(declare-fun e!4399491 () Bool)

(assert (=> b!7347479 (= e!4399491 e!4399490)))

(declare-fun c!1364935 () Bool)

(declare-fun bm!671546 () Bool)

(declare-fun c!1364934 () Bool)

(assert (=> bm!671546 (= call!671551 (validRegex!9744 (ite c!1364934 (reg!19477 r1!2370) (ite c!1364935 (regTwo!38809 r1!2370) (regOne!38808 r1!2370)))))))

(declare-fun b!7347480 () Bool)

(declare-fun res!2967554 () Bool)

(assert (=> b!7347480 (=> res!2967554 e!4399493)))

(assert (=> b!7347480 (= res!2967554 (not (is-Concat!27993 r1!2370)))))

(assert (=> b!7347480 (= e!4399491 e!4399493)))

(declare-fun b!7347481 () Bool)

(assert (=> b!7347481 (= e!4399489 call!671551)))

(declare-fun bm!671547 () Bool)

(assert (=> bm!671547 (= call!671550 (validRegex!9744 (ite c!1364935 (regOne!38809 r1!2370) (regTwo!38808 r1!2370))))))

(declare-fun b!7347482 () Bool)

(assert (=> b!7347482 (= e!4399492 e!4399491)))

(assert (=> b!7347482 (= c!1364935 (is-Union!19148 r1!2370))))

(declare-fun d!2279893 () Bool)

(declare-fun res!2967553 () Bool)

(declare-fun e!4399488 () Bool)

(assert (=> d!2279893 (=> res!2967553 e!4399488)))

(assert (=> d!2279893 (= res!2967553 (is-ElementMatch!19148 r1!2370))))

(assert (=> d!2279893 (= (validRegex!9744 r1!2370) e!4399488)))

(declare-fun b!7347477 () Bool)

(assert (=> b!7347477 (= e!4399488 e!4399492)))

(assert (=> b!7347477 (= c!1364934 (is-Star!19148 r1!2370))))

(assert (= (and d!2279893 (not res!2967553)) b!7347477))

(assert (= (and b!7347477 c!1364934) b!7347476))

(assert (= (and b!7347477 (not c!1364934)) b!7347482))

(assert (= (and b!7347476 res!2967552) b!7347481))

(assert (= (and b!7347482 c!1364935) b!7347479))

(assert (= (and b!7347482 (not c!1364935)) b!7347480))

(assert (= (and b!7347479 res!2967555) b!7347475))

(assert (= (and b!7347480 (not res!2967554)) b!7347478))

(assert (= (and b!7347478 res!2967551) b!7347474))

(assert (= (or b!7347479 b!7347474) bm!671547))

(assert (= (or b!7347475 b!7347478) bm!671545))

(assert (= (or b!7347481 bm!671545) bm!671546))

(declare-fun m!8009566 () Bool)

(assert (=> b!7347476 m!8009566))

(declare-fun m!8009568 () Bool)

(assert (=> bm!671546 m!8009568))

(declare-fun m!8009570 () Bool)

(assert (=> bm!671547 m!8009570))

(assert (=> start!717530 d!2279893))

(declare-fun bs!1918986 () Bool)

(declare-fun d!2279897 () Bool)

(assert (= bs!1918986 (and d!2279897 b!7347398)))

(declare-fun lambda!456246 () Int)

(assert (=> bs!1918986 (= lambda!456246 lambda!456230)))

(assert (=> d!2279897 (= (inv!91211 cWitness!61) (forall!17974 (exprs!8588 cWitness!61) lambda!456246))))

(declare-fun bs!1918987 () Bool)

(assert (= bs!1918987 d!2279897))

(declare-fun m!8009576 () Bool)

(assert (=> bs!1918987 m!8009576))

(assert (=> start!717530 d!2279897))

(declare-fun bs!1918988 () Bool)

(declare-fun d!2279901 () Bool)

(assert (= bs!1918988 (and d!2279901 b!7347398)))

(declare-fun lambda!456247 () Int)

(assert (=> bs!1918988 (= lambda!456247 lambda!456230)))

(declare-fun bs!1918989 () Bool)

(assert (= bs!1918989 (and d!2279901 d!2279897)))

(assert (=> bs!1918989 (= lambda!456247 lambda!456246)))

(assert (=> d!2279901 (= (inv!91211 ct1!282) (forall!17974 (exprs!8588 ct1!282) lambda!456247))))

(declare-fun bs!1918990 () Bool)

(assert (= bs!1918990 d!2279901))

(declare-fun m!8009578 () Bool)

(assert (=> bs!1918990 m!8009578))

(assert (=> start!717530 d!2279901))

(declare-fun bs!1918991 () Bool)

(declare-fun d!2279903 () Bool)

(assert (= bs!1918991 (and d!2279903 b!7347398)))

(declare-fun lambda!456248 () Int)

(assert (=> bs!1918991 (= lambda!456248 lambda!456230)))

(declare-fun bs!1918992 () Bool)

(assert (= bs!1918992 (and d!2279903 d!2279897)))

(assert (=> bs!1918992 (= lambda!456248 lambda!456246)))

(declare-fun bs!1918993 () Bool)

(assert (= bs!1918993 (and d!2279903 d!2279901)))

(assert (=> bs!1918993 (= lambda!456248 lambda!456247)))

(assert (=> d!2279903 (= (inv!91211 ct2!378) (forall!17974 (exprs!8588 ct2!378) lambda!456248))))

(declare-fun bs!1918994 () Bool)

(assert (= bs!1918994 d!2279903))

(declare-fun m!8009580 () Bool)

(assert (=> bs!1918994 m!8009580))

(assert (=> start!717530 d!2279903))

(declare-fun d!2279905 () Bool)

(declare-fun res!2967562 () Bool)

(declare-fun e!4399500 () Bool)

(assert (=> d!2279905 (=> res!2967562 e!4399500)))

(assert (=> d!2279905 (= res!2967562 (is-Nil!71520 (exprs!8588 ct2!378)))))

(assert (=> d!2279905 (= (forall!17974 (exprs!8588 ct2!378) lambda!456230) e!4399500)))

(declare-fun b!7347489 () Bool)

(declare-fun e!4399501 () Bool)

(assert (=> b!7347489 (= e!4399500 e!4399501)))

(declare-fun res!2967563 () Bool)

(assert (=> b!7347489 (=> (not res!2967563) (not e!4399501))))

(declare-fun dynLambda!29479 (Int Regex!19148) Bool)

(assert (=> b!7347489 (= res!2967563 (dynLambda!29479 lambda!456230 (h!77968 (exprs!8588 ct2!378))))))

(declare-fun b!7347490 () Bool)

(assert (=> b!7347490 (= e!4399501 (forall!17974 (t!386049 (exprs!8588 ct2!378)) lambda!456230))))

(assert (= (and d!2279905 (not res!2967562)) b!7347489))

(assert (= (and b!7347489 res!2967563) b!7347490))

(declare-fun b_lambda!284037 () Bool)

(assert (=> (not b_lambda!284037) (not b!7347489)))

(declare-fun m!8009582 () Bool)

(assert (=> b!7347489 m!8009582))

(declare-fun m!8009584 () Bool)

(assert (=> b!7347490 m!8009584))

(assert (=> b!7347399 d!2279905))

(declare-fun b!7347517 () Bool)

(declare-fun c!1364950 () Bool)

(assert (=> b!7347517 (= c!1364950 (is-Star!19148 (regTwo!38808 r1!2370)))))

(declare-fun e!4399519 () (Set Context!16176))

(declare-fun e!4399517 () (Set Context!16176))

(assert (=> b!7347517 (= e!4399519 e!4399517)))

(declare-fun b!7347518 () Bool)

(declare-fun call!671565 () (Set Context!16176))

(assert (=> b!7347518 (= e!4399519 call!671565)))

(declare-fun bm!671560 () Bool)

(declare-fun call!671570 () (Set Context!16176))

(declare-fun call!671568 () (Set Context!16176))

(assert (=> bm!671560 (= call!671570 call!671568)))

(declare-fun b!7347520 () Bool)

(assert (=> b!7347520 (= e!4399517 (as set.empty (Set Context!16176)))))

(declare-fun b!7347521 () Bool)

(declare-fun e!4399520 () (Set Context!16176))

(assert (=> b!7347521 (= e!4399520 (set.insert ct1!282 (as set.empty (Set Context!16176))))))

(declare-fun b!7347522 () Bool)

(declare-fun e!4399514 () (Set Context!16176))

(assert (=> b!7347522 (= e!4399520 e!4399514)))

(declare-fun c!1364946 () Bool)

(assert (=> b!7347522 (= c!1364946 (is-Union!19148 (regTwo!38808 r1!2370)))))

(declare-fun b!7347523 () Bool)

(declare-fun e!4399516 () (Set Context!16176))

(assert (=> b!7347523 (= e!4399516 e!4399519)))

(declare-fun c!1364949 () Bool)

(assert (=> b!7347523 (= c!1364949 (is-Concat!27993 (regTwo!38808 r1!2370)))))

(declare-fun bm!671561 () Bool)

(declare-fun call!671566 () List!71644)

(declare-fun c!1364952 () Bool)

(assert (=> bm!671561 (= call!671566 ($colon$colon!3146 (exprs!8588 ct1!282) (ite (or c!1364952 c!1364949) (regTwo!38808 (regTwo!38808 r1!2370)) (regTwo!38808 r1!2370))))))

(declare-fun b!7347524 () Bool)

(declare-fun e!4399515 () Bool)

(assert (=> b!7347524 (= c!1364952 e!4399515)))

(declare-fun res!2967566 () Bool)

(assert (=> b!7347524 (=> (not res!2967566) (not e!4399515))))

(assert (=> b!7347524 (= res!2967566 (is-Concat!27993 (regTwo!38808 r1!2370)))))

(assert (=> b!7347524 (= e!4399514 e!4399516)))

(declare-fun call!671567 () (Set Context!16176))

(declare-fun bm!671562 () Bool)

(assert (=> bm!671562 (= call!671567 (derivationStepZipperDown!2974 (ite c!1364946 (regOne!38809 (regTwo!38808 r1!2370)) (regOne!38808 (regTwo!38808 r1!2370))) (ite c!1364946 ct1!282 (Context!16177 call!671566)) c!10362))))

(declare-fun bm!671563 () Bool)

(declare-fun call!671569 () List!71644)

(assert (=> bm!671563 (= call!671569 call!671566)))

(declare-fun b!7347525 () Bool)

(assert (=> b!7347525 (= e!4399517 call!671565)))

(declare-fun b!7347526 () Bool)

(assert (=> b!7347526 (= e!4399514 (set.union call!671567 call!671568))))

(declare-fun bm!671564 () Bool)

(assert (=> bm!671564 (= call!671568 (derivationStepZipperDown!2974 (ite c!1364946 (regTwo!38809 (regTwo!38808 r1!2370)) (ite c!1364952 (regTwo!38808 (regTwo!38808 r1!2370)) (ite c!1364949 (regOne!38808 (regTwo!38808 r1!2370)) (reg!19477 (regTwo!38808 r1!2370))))) (ite (or c!1364946 c!1364952) ct1!282 (Context!16177 call!671569)) c!10362))))

(declare-fun b!7347519 () Bool)

(assert (=> b!7347519 (= e!4399516 (set.union call!671567 call!671570))))

(declare-fun d!2279907 () Bool)

(declare-fun c!1364947 () Bool)

(assert (=> d!2279907 (= c!1364947 (and (is-ElementMatch!19148 (regTwo!38808 r1!2370)) (= (c!1364928 (regTwo!38808 r1!2370)) c!10362)))))

(assert (=> d!2279907 (= (derivationStepZipperDown!2974 (regTwo!38808 r1!2370) ct1!282 c!10362) e!4399520)))

(declare-fun bm!671565 () Bool)

(assert (=> bm!671565 (= call!671565 call!671570)))

(declare-fun b!7347527 () Bool)

(assert (=> b!7347527 (= e!4399515 (nullable!8239 (regOne!38808 (regTwo!38808 r1!2370))))))

(assert (= (and d!2279907 c!1364947) b!7347521))

(assert (= (and d!2279907 (not c!1364947)) b!7347522))

(assert (= (and b!7347522 c!1364946) b!7347526))

(assert (= (and b!7347522 (not c!1364946)) b!7347524))

(assert (= (and b!7347524 res!2967566) b!7347527))

(assert (= (and b!7347524 c!1364952) b!7347519))

(assert (= (and b!7347524 (not c!1364952)) b!7347523))

(assert (= (and b!7347523 c!1364949) b!7347518))

(assert (= (and b!7347523 (not c!1364949)) b!7347517))

(assert (= (and b!7347517 c!1364950) b!7347525))

(assert (= (and b!7347517 (not c!1364950)) b!7347520))

(assert (= (or b!7347518 b!7347525) bm!671563))

(assert (= (or b!7347518 b!7347525) bm!671565))

(assert (= (or b!7347519 bm!671565) bm!671560))

(assert (= (or b!7347519 bm!671563) bm!671561))

(assert (= (or b!7347526 bm!671560) bm!671564))

(assert (= (or b!7347526 b!7347519) bm!671562))

(declare-fun m!8009592 () Bool)

(assert (=> b!7347527 m!8009592))

(declare-fun m!8009594 () Bool)

(assert (=> bm!671562 m!8009594))

(declare-fun m!8009596 () Bool)

(assert (=> bm!671564 m!8009596))

(declare-fun m!8009598 () Bool)

(assert (=> b!7347521 m!8009598))

(declare-fun m!8009600 () Bool)

(assert (=> bm!671561 m!8009600))

(assert (=> b!7347393 d!2279907))

(declare-fun b!7347546 () Bool)

(declare-fun c!1364964 () Bool)

(assert (=> b!7347546 (= c!1364964 (is-Star!19148 (regOne!38808 r1!2370)))))

(declare-fun e!4399536 () (Set Context!16176))

(declare-fun e!4399535 () (Set Context!16176))

(assert (=> b!7347546 (= e!4399536 e!4399535)))

(declare-fun b!7347547 () Bool)

(declare-fun call!671571 () (Set Context!16176))

(assert (=> b!7347547 (= e!4399536 call!671571)))

(declare-fun bm!671566 () Bool)

(declare-fun call!671576 () (Set Context!16176))

(declare-fun call!671574 () (Set Context!16176))

(assert (=> bm!671566 (= call!671576 call!671574)))

(declare-fun b!7347549 () Bool)

(assert (=> b!7347549 (= e!4399535 (as set.empty (Set Context!16176)))))

(declare-fun b!7347550 () Bool)

(declare-fun e!4399537 () (Set Context!16176))

(assert (=> b!7347550 (= e!4399537 (set.insert lt!2611461 (as set.empty (Set Context!16176))))))

(declare-fun b!7347551 () Bool)

(declare-fun e!4399532 () (Set Context!16176))

(assert (=> b!7347551 (= e!4399537 e!4399532)))

(declare-fun c!1364961 () Bool)

(assert (=> b!7347551 (= c!1364961 (is-Union!19148 (regOne!38808 r1!2370)))))

(declare-fun b!7347552 () Bool)

(declare-fun e!4399534 () (Set Context!16176))

(assert (=> b!7347552 (= e!4399534 e!4399536)))

(declare-fun c!1364963 () Bool)

(assert (=> b!7347552 (= c!1364963 (is-Concat!27993 (regOne!38808 r1!2370)))))

(declare-fun c!1364965 () Bool)

(declare-fun bm!671567 () Bool)

(declare-fun call!671572 () List!71644)

(assert (=> bm!671567 (= call!671572 ($colon$colon!3146 (exprs!8588 lt!2611461) (ite (or c!1364965 c!1364963) (regTwo!38808 (regOne!38808 r1!2370)) (regOne!38808 r1!2370))))))

(declare-fun b!7347553 () Bool)

(declare-fun e!4399533 () Bool)

(assert (=> b!7347553 (= c!1364965 e!4399533)))

(declare-fun res!2967569 () Bool)

(assert (=> b!7347553 (=> (not res!2967569) (not e!4399533))))

(assert (=> b!7347553 (= res!2967569 (is-Concat!27993 (regOne!38808 r1!2370)))))

(assert (=> b!7347553 (= e!4399532 e!4399534)))

(declare-fun call!671573 () (Set Context!16176))

(declare-fun bm!671568 () Bool)

(assert (=> bm!671568 (= call!671573 (derivationStepZipperDown!2974 (ite c!1364961 (regOne!38809 (regOne!38808 r1!2370)) (regOne!38808 (regOne!38808 r1!2370))) (ite c!1364961 lt!2611461 (Context!16177 call!671572)) c!10362))))

(declare-fun bm!671569 () Bool)

(declare-fun call!671575 () List!71644)

(assert (=> bm!671569 (= call!671575 call!671572)))

(declare-fun b!7347554 () Bool)

(assert (=> b!7347554 (= e!4399535 call!671571)))

(declare-fun b!7347555 () Bool)

(assert (=> b!7347555 (= e!4399532 (set.union call!671573 call!671574))))

(declare-fun bm!671570 () Bool)

(assert (=> bm!671570 (= call!671574 (derivationStepZipperDown!2974 (ite c!1364961 (regTwo!38809 (regOne!38808 r1!2370)) (ite c!1364965 (regTwo!38808 (regOne!38808 r1!2370)) (ite c!1364963 (regOne!38808 (regOne!38808 r1!2370)) (reg!19477 (regOne!38808 r1!2370))))) (ite (or c!1364961 c!1364965) lt!2611461 (Context!16177 call!671575)) c!10362))))

(declare-fun b!7347548 () Bool)

(assert (=> b!7347548 (= e!4399534 (set.union call!671573 call!671576))))

(declare-fun d!2279911 () Bool)

(declare-fun c!1364962 () Bool)

(assert (=> d!2279911 (= c!1364962 (and (is-ElementMatch!19148 (regOne!38808 r1!2370)) (= (c!1364928 (regOne!38808 r1!2370)) c!10362)))))

(assert (=> d!2279911 (= (derivationStepZipperDown!2974 (regOne!38808 r1!2370) lt!2611461 c!10362) e!4399537)))

(declare-fun bm!671571 () Bool)

(assert (=> bm!671571 (= call!671571 call!671576)))

(declare-fun b!7347556 () Bool)

(assert (=> b!7347556 (= e!4399533 (nullable!8239 (regOne!38808 (regOne!38808 r1!2370))))))

(assert (= (and d!2279911 c!1364962) b!7347550))

(assert (= (and d!2279911 (not c!1364962)) b!7347551))

(assert (= (and b!7347551 c!1364961) b!7347555))

(assert (= (and b!7347551 (not c!1364961)) b!7347553))

(assert (= (and b!7347553 res!2967569) b!7347556))

(assert (= (and b!7347553 c!1364965) b!7347548))

(assert (= (and b!7347553 (not c!1364965)) b!7347552))

(assert (= (and b!7347552 c!1364963) b!7347547))

(assert (= (and b!7347552 (not c!1364963)) b!7347546))

(assert (= (and b!7347546 c!1364964) b!7347554))

(assert (= (and b!7347546 (not c!1364964)) b!7347549))

(assert (= (or b!7347547 b!7347554) bm!671569))

(assert (= (or b!7347547 b!7347554) bm!671571))

(assert (= (or b!7347548 bm!671571) bm!671566))

(assert (= (or b!7347548 bm!671569) bm!671567))

(assert (= (or b!7347555 bm!671566) bm!671570))

(assert (= (or b!7347555 b!7347548) bm!671568))

(declare-fun m!8009602 () Bool)

(assert (=> b!7347556 m!8009602))

(declare-fun m!8009604 () Bool)

(assert (=> bm!671568 m!8009604))

(declare-fun m!8009606 () Bool)

(assert (=> bm!671570 m!8009606))

(declare-fun m!8009608 () Bool)

(assert (=> b!7347550 m!8009608))

(declare-fun m!8009610 () Bool)

(assert (=> bm!671567 m!8009610))

(assert (=> b!7347393 d!2279911))

(declare-fun d!2279913 () Bool)

(assert (=> d!2279913 (= ($colon$colon!3146 (exprs!8588 ct1!282) (regTwo!38808 r1!2370)) (Cons!71520 (regTwo!38808 r1!2370) (exprs!8588 ct1!282)))))

(assert (=> b!7347393 d!2279913))

(declare-fun d!2279915 () Bool)

(declare-fun nullableFct!3278 (Regex!19148) Bool)

(assert (=> d!2279915 (= (nullable!8239 (regOne!38808 r1!2370)) (nullableFct!3278 (regOne!38808 r1!2370)))))

(declare-fun bs!1918996 () Bool)

(assert (= bs!1918996 d!2279915))

(declare-fun m!8009612 () Bool)

(assert (=> bs!1918996 m!8009612))

(assert (=> b!7347388 d!2279915))

(declare-fun b!7347557 () Bool)

(declare-fun c!1364969 () Bool)

(assert (=> b!7347557 (= c!1364969 (is-Star!19148 r1!2370))))

(declare-fun e!4399542 () (Set Context!16176))

(declare-fun e!4399541 () (Set Context!16176))

(assert (=> b!7347557 (= e!4399542 e!4399541)))

(declare-fun b!7347558 () Bool)

(declare-fun call!671581 () (Set Context!16176))

(assert (=> b!7347558 (= e!4399542 call!671581)))

(declare-fun bm!671576 () Bool)

(declare-fun call!671586 () (Set Context!16176))

(declare-fun call!671584 () (Set Context!16176))

(assert (=> bm!671576 (= call!671586 call!671584)))

(declare-fun b!7347560 () Bool)

(assert (=> b!7347560 (= e!4399541 (as set.empty (Set Context!16176)))))

(declare-fun b!7347561 () Bool)

(declare-fun e!4399543 () (Set Context!16176))

(assert (=> b!7347561 (= e!4399543 (set.insert (Context!16177 (++!16966 (exprs!8588 ct1!282) (exprs!8588 ct2!378))) (as set.empty (Set Context!16176))))))

(declare-fun b!7347562 () Bool)

(declare-fun e!4399538 () (Set Context!16176))

(assert (=> b!7347562 (= e!4399543 e!4399538)))

(declare-fun c!1364966 () Bool)

(assert (=> b!7347562 (= c!1364966 (is-Union!19148 r1!2370))))

(declare-fun b!7347563 () Bool)

(declare-fun e!4399540 () (Set Context!16176))

(assert (=> b!7347563 (= e!4399540 e!4399542)))

(declare-fun c!1364968 () Bool)

(assert (=> b!7347563 (= c!1364968 (is-Concat!27993 r1!2370))))

(declare-fun call!671582 () List!71644)

(declare-fun bm!671577 () Bool)

(declare-fun c!1364970 () Bool)

(assert (=> bm!671577 (= call!671582 ($colon$colon!3146 (exprs!8588 (Context!16177 (++!16966 (exprs!8588 ct1!282) (exprs!8588 ct2!378)))) (ite (or c!1364970 c!1364968) (regTwo!38808 r1!2370) r1!2370)))))

(declare-fun b!7347564 () Bool)

(declare-fun e!4399539 () Bool)

(assert (=> b!7347564 (= c!1364970 e!4399539)))

(declare-fun res!2967570 () Bool)

(assert (=> b!7347564 (=> (not res!2967570) (not e!4399539))))

(assert (=> b!7347564 (= res!2967570 (is-Concat!27993 r1!2370))))

(assert (=> b!7347564 (= e!4399538 e!4399540)))

(declare-fun bm!671578 () Bool)

(declare-fun call!671583 () (Set Context!16176))

(assert (=> bm!671578 (= call!671583 (derivationStepZipperDown!2974 (ite c!1364966 (regOne!38809 r1!2370) (regOne!38808 r1!2370)) (ite c!1364966 (Context!16177 (++!16966 (exprs!8588 ct1!282) (exprs!8588 ct2!378))) (Context!16177 call!671582)) c!10362))))

(declare-fun bm!671579 () Bool)

(declare-fun call!671585 () List!71644)

(assert (=> bm!671579 (= call!671585 call!671582)))

(declare-fun b!7347565 () Bool)

(assert (=> b!7347565 (= e!4399541 call!671581)))

(declare-fun b!7347566 () Bool)

(assert (=> b!7347566 (= e!4399538 (set.union call!671583 call!671584))))

(declare-fun bm!671580 () Bool)

(assert (=> bm!671580 (= call!671584 (derivationStepZipperDown!2974 (ite c!1364966 (regTwo!38809 r1!2370) (ite c!1364970 (regTwo!38808 r1!2370) (ite c!1364968 (regOne!38808 r1!2370) (reg!19477 r1!2370)))) (ite (or c!1364966 c!1364970) (Context!16177 (++!16966 (exprs!8588 ct1!282) (exprs!8588 ct2!378))) (Context!16177 call!671585)) c!10362))))

(declare-fun b!7347559 () Bool)

(assert (=> b!7347559 (= e!4399540 (set.union call!671583 call!671586))))

(declare-fun d!2279917 () Bool)

(declare-fun c!1364967 () Bool)

(assert (=> d!2279917 (= c!1364967 (and (is-ElementMatch!19148 r1!2370) (= (c!1364928 r1!2370) c!10362)))))

(assert (=> d!2279917 (= (derivationStepZipperDown!2974 r1!2370 (Context!16177 (++!16966 (exprs!8588 ct1!282) (exprs!8588 ct2!378))) c!10362) e!4399543)))

(declare-fun bm!671581 () Bool)

(assert (=> bm!671581 (= call!671581 call!671586)))

(declare-fun b!7347567 () Bool)

(assert (=> b!7347567 (= e!4399539 (nullable!8239 (regOne!38808 r1!2370)))))

(assert (= (and d!2279917 c!1364967) b!7347561))

(assert (= (and d!2279917 (not c!1364967)) b!7347562))

(assert (= (and b!7347562 c!1364966) b!7347566))

(assert (= (and b!7347562 (not c!1364966)) b!7347564))

(assert (= (and b!7347564 res!2967570) b!7347567))

(assert (= (and b!7347564 c!1364970) b!7347559))

(assert (= (and b!7347564 (not c!1364970)) b!7347563))

(assert (= (and b!7347563 c!1364968) b!7347558))

(assert (= (and b!7347563 (not c!1364968)) b!7347557))

(assert (= (and b!7347557 c!1364969) b!7347565))

(assert (= (and b!7347557 (not c!1364969)) b!7347560))

(assert (= (or b!7347558 b!7347565) bm!671579))

(assert (= (or b!7347558 b!7347565) bm!671581))

(assert (= (or b!7347559 bm!671581) bm!671576))

(assert (= (or b!7347559 bm!671579) bm!671577))

(assert (= (or b!7347566 bm!671576) bm!671580))

(assert (= (or b!7347566 b!7347559) bm!671578))

(assert (=> b!7347567 m!8009490))

(declare-fun m!8009614 () Bool)

(assert (=> bm!671578 m!8009614))

(declare-fun m!8009616 () Bool)

(assert (=> bm!671580 m!8009616))

(declare-fun m!8009618 () Bool)

(assert (=> b!7347561 m!8009618))

(declare-fun m!8009620 () Bool)

(assert (=> bm!671577 m!8009620))

(assert (=> b!7347398 d!2279917))

(declare-fun b!7347577 () Bool)

(declare-fun e!4399548 () List!71644)

(assert (=> b!7347577 (= e!4399548 (Cons!71520 (h!77968 (exprs!8588 ct1!282)) (++!16966 (t!386049 (exprs!8588 ct1!282)) (exprs!8588 ct2!378))))))

(declare-fun b!7347578 () Bool)

(declare-fun res!2967575 () Bool)

(declare-fun e!4399549 () Bool)

(assert (=> b!7347578 (=> (not res!2967575) (not e!4399549))))

(declare-fun lt!2611507 () List!71644)

(declare-fun size!42037 (List!71644) Int)

(assert (=> b!7347578 (= res!2967575 (= (size!42037 lt!2611507) (+ (size!42037 (exprs!8588 ct1!282)) (size!42037 (exprs!8588 ct2!378)))))))

(declare-fun b!7347579 () Bool)

(assert (=> b!7347579 (= e!4399549 (or (not (= (exprs!8588 ct2!378) Nil!71520)) (= lt!2611507 (exprs!8588 ct1!282))))))

(declare-fun b!7347576 () Bool)

(assert (=> b!7347576 (= e!4399548 (exprs!8588 ct2!378))))

(declare-fun d!2279919 () Bool)

(assert (=> d!2279919 e!4399549))

(declare-fun res!2967576 () Bool)

(assert (=> d!2279919 (=> (not res!2967576) (not e!4399549))))

(declare-fun content!15058 (List!71644) (Set Regex!19148))

(assert (=> d!2279919 (= res!2967576 (= (content!15058 lt!2611507) (set.union (content!15058 (exprs!8588 ct1!282)) (content!15058 (exprs!8588 ct2!378)))))))

(assert (=> d!2279919 (= lt!2611507 e!4399548)))

(declare-fun c!1364973 () Bool)

(assert (=> d!2279919 (= c!1364973 (is-Nil!71520 (exprs!8588 ct1!282)))))

(assert (=> d!2279919 (= (++!16966 (exprs!8588 ct1!282) (exprs!8588 ct2!378)) lt!2611507)))

(assert (= (and d!2279919 c!1364973) b!7347576))

(assert (= (and d!2279919 (not c!1364973)) b!7347577))

(assert (= (and d!2279919 res!2967576) b!7347578))

(assert (= (and b!7347578 res!2967575) b!7347579))

(declare-fun m!8009622 () Bool)

(assert (=> b!7347577 m!8009622))

(declare-fun m!8009624 () Bool)

(assert (=> b!7347578 m!8009624))

(declare-fun m!8009626 () Bool)

(assert (=> b!7347578 m!8009626))

(declare-fun m!8009628 () Bool)

(assert (=> b!7347578 m!8009628))

(declare-fun m!8009630 () Bool)

(assert (=> d!2279919 m!8009630))

(declare-fun m!8009632 () Bool)

(assert (=> d!2279919 m!8009632))

(declare-fun m!8009634 () Bool)

(assert (=> d!2279919 m!8009634))

(assert (=> b!7347398 d!2279919))

(declare-fun d!2279921 () Bool)

(assert (=> d!2279921 (forall!17974 (++!16966 (exprs!8588 ct1!282) (exprs!8588 ct2!378)) lambda!456230)))

(declare-fun lt!2611510 () Unit!165249)

(declare-fun choose!57152 (List!71644 List!71644 Int) Unit!165249)

(assert (=> d!2279921 (= lt!2611510 (choose!57152 (exprs!8588 ct1!282) (exprs!8588 ct2!378) lambda!456230))))

(assert (=> d!2279921 (forall!17974 (exprs!8588 ct1!282) lambda!456230)))

(assert (=> d!2279921 (= (lemmaConcatPreservesForall!1823 (exprs!8588 ct1!282) (exprs!8588 ct2!378) lambda!456230) lt!2611510)))

(declare-fun bs!1918997 () Bool)

(assert (= bs!1918997 d!2279921))

(assert (=> bs!1918997 m!8009496))

(assert (=> bs!1918997 m!8009496))

(declare-fun m!8009636 () Bool)

(assert (=> bs!1918997 m!8009636))

(declare-fun m!8009638 () Bool)

(assert (=> bs!1918997 m!8009638))

(assert (=> bs!1918997 m!8009510))

(assert (=> b!7347398 d!2279921))

(declare-fun b!7347580 () Bool)

(declare-fun e!4399550 () Bool)

(declare-fun call!671595 () Bool)

(assert (=> b!7347580 (= e!4399550 call!671595)))

(declare-fun b!7347581 () Bool)

(declare-fun e!4399553 () Bool)

(declare-fun call!671597 () Bool)

(assert (=> b!7347581 (= e!4399553 call!671597)))

(declare-fun b!7347582 () Bool)

(declare-fun e!4399555 () Bool)

(declare-fun e!4399552 () Bool)

(assert (=> b!7347582 (= e!4399555 e!4399552)))

(declare-fun res!2967578 () Bool)

(assert (=> b!7347582 (= res!2967578 (not (nullable!8239 (reg!19477 (regTwo!38808 r1!2370)))))))

(assert (=> b!7347582 (=> (not res!2967578) (not e!4399552))))

(declare-fun bm!671590 () Bool)

(declare-fun call!671596 () Bool)

(assert (=> bm!671590 (= call!671597 call!671596)))

(declare-fun b!7347584 () Bool)

(declare-fun e!4399556 () Bool)

(assert (=> b!7347584 (= e!4399556 e!4399550)))

(declare-fun res!2967577 () Bool)

(assert (=> b!7347584 (=> (not res!2967577) (not e!4399550))))

(assert (=> b!7347584 (= res!2967577 call!671597)))

(declare-fun b!7347585 () Bool)

(declare-fun res!2967581 () Bool)

(assert (=> b!7347585 (=> (not res!2967581) (not e!4399553))))

(assert (=> b!7347585 (= res!2967581 call!671595)))

(declare-fun e!4399554 () Bool)

(assert (=> b!7347585 (= e!4399554 e!4399553)))

(declare-fun c!1364974 () Bool)

(declare-fun bm!671591 () Bool)

(declare-fun c!1364975 () Bool)

(assert (=> bm!671591 (= call!671596 (validRegex!9744 (ite c!1364974 (reg!19477 (regTwo!38808 r1!2370)) (ite c!1364975 (regTwo!38809 (regTwo!38808 r1!2370)) (regOne!38808 (regTwo!38808 r1!2370))))))))

(declare-fun b!7347586 () Bool)

(declare-fun res!2967580 () Bool)

(assert (=> b!7347586 (=> res!2967580 e!4399556)))

(assert (=> b!7347586 (= res!2967580 (not (is-Concat!27993 (regTwo!38808 r1!2370))))))

(assert (=> b!7347586 (= e!4399554 e!4399556)))

(declare-fun b!7347587 () Bool)

(assert (=> b!7347587 (= e!4399552 call!671596)))

(declare-fun bm!671592 () Bool)

(assert (=> bm!671592 (= call!671595 (validRegex!9744 (ite c!1364975 (regOne!38809 (regTwo!38808 r1!2370)) (regTwo!38808 (regTwo!38808 r1!2370)))))))

(declare-fun b!7347588 () Bool)

(assert (=> b!7347588 (= e!4399555 e!4399554)))

(assert (=> b!7347588 (= c!1364975 (is-Union!19148 (regTwo!38808 r1!2370)))))

(declare-fun d!2279923 () Bool)

(declare-fun res!2967579 () Bool)

(declare-fun e!4399551 () Bool)

(assert (=> d!2279923 (=> res!2967579 e!4399551)))

(assert (=> d!2279923 (= res!2967579 (is-ElementMatch!19148 (regTwo!38808 r1!2370)))))

(assert (=> d!2279923 (= (validRegex!9744 (regTwo!38808 r1!2370)) e!4399551)))

(declare-fun b!7347583 () Bool)

(assert (=> b!7347583 (= e!4399551 e!4399555)))

(assert (=> b!7347583 (= c!1364974 (is-Star!19148 (regTwo!38808 r1!2370)))))

(assert (= (and d!2279923 (not res!2967579)) b!7347583))

(assert (= (and b!7347583 c!1364974) b!7347582))

(assert (= (and b!7347583 (not c!1364974)) b!7347588))

(assert (= (and b!7347582 res!2967578) b!7347587))

(assert (= (and b!7347588 c!1364975) b!7347585))

(assert (= (and b!7347588 (not c!1364975)) b!7347586))

(assert (= (and b!7347585 res!2967581) b!7347581))

(assert (= (and b!7347586 (not res!2967580)) b!7347584))

(assert (= (and b!7347584 res!2967577) b!7347580))

(assert (= (or b!7347585 b!7347580) bm!671592))

(assert (= (or b!7347581 b!7347584) bm!671590))

(assert (= (or b!7347587 bm!671590) bm!671591))

(declare-fun m!8009640 () Bool)

(assert (=> b!7347582 m!8009640))

(declare-fun m!8009642 () Bool)

(assert (=> bm!671591 m!8009642))

(declare-fun m!8009644 () Bool)

(assert (=> bm!671592 m!8009644))

(assert (=> b!7347397 d!2279923))

(declare-fun d!2279925 () Bool)

(declare-fun res!2967582 () Bool)

(declare-fun e!4399557 () Bool)

(assert (=> d!2279925 (=> res!2967582 e!4399557)))

(assert (=> d!2279925 (= res!2967582 (is-Nil!71520 (exprs!8588 ct1!282)))))

(assert (=> d!2279925 (= (forall!17974 (exprs!8588 ct1!282) lambda!456230) e!4399557)))

(declare-fun b!7347589 () Bool)

(declare-fun e!4399558 () Bool)

(assert (=> b!7347589 (= e!4399557 e!4399558)))

(declare-fun res!2967583 () Bool)

(assert (=> b!7347589 (=> (not res!2967583) (not e!4399558))))

(assert (=> b!7347589 (= res!2967583 (dynLambda!29479 lambda!456230 (h!77968 (exprs!8588 ct1!282))))))

(declare-fun b!7347590 () Bool)

(assert (=> b!7347590 (= e!4399558 (forall!17974 (t!386049 (exprs!8588 ct1!282)) lambda!456230))))

(assert (= (and d!2279925 (not res!2967582)) b!7347589))

(assert (= (and b!7347589 res!2967583) b!7347590))

(declare-fun b_lambda!284039 () Bool)

(assert (=> (not b_lambda!284039) (not b!7347589)))

(declare-fun m!8009646 () Bool)

(assert (=> b!7347589 m!8009646))

(declare-fun m!8009648 () Bool)

(assert (=> b!7347590 m!8009648))

(assert (=> b!7347402 d!2279925))

(declare-fun d!2279927 () Bool)

(assert (=> d!2279927 (forall!17974 (++!16966 (exprs!8588 cWitness!61) (exprs!8588 ct2!378)) lambda!456230)))

(declare-fun lt!2611511 () Unit!165249)

(assert (=> d!2279927 (= lt!2611511 (choose!57152 (exprs!8588 cWitness!61) (exprs!8588 ct2!378) lambda!456230))))

(assert (=> d!2279927 (forall!17974 (exprs!8588 cWitness!61) lambda!456230)))

(assert (=> d!2279927 (= (lemmaConcatPreservesForall!1823 (exprs!8588 cWitness!61) (exprs!8588 ct2!378) lambda!456230) lt!2611511)))

(declare-fun bs!1918998 () Bool)

(assert (= bs!1918998 d!2279927))

(assert (=> bs!1918998 m!8009482))

(assert (=> bs!1918998 m!8009482))

(declare-fun m!8009650 () Bool)

(assert (=> bs!1918998 m!8009650))

(declare-fun m!8009652 () Bool)

(assert (=> bs!1918998 m!8009652))

(declare-fun m!8009654 () Bool)

(assert (=> bs!1918998 m!8009654))

(assert (=> b!7347402 d!2279927))

(declare-fun b!7347592 () Bool)

(declare-fun e!4399559 () List!71644)

(assert (=> b!7347592 (= e!4399559 (Cons!71520 (h!77968 (exprs!8588 cWitness!61)) (++!16966 (t!386049 (exprs!8588 cWitness!61)) (exprs!8588 ct2!378))))))

(declare-fun b!7347593 () Bool)

(declare-fun res!2967584 () Bool)

(declare-fun e!4399560 () Bool)

(assert (=> b!7347593 (=> (not res!2967584) (not e!4399560))))

(declare-fun lt!2611512 () List!71644)

(assert (=> b!7347593 (= res!2967584 (= (size!42037 lt!2611512) (+ (size!42037 (exprs!8588 cWitness!61)) (size!42037 (exprs!8588 ct2!378)))))))

(declare-fun b!7347594 () Bool)

(assert (=> b!7347594 (= e!4399560 (or (not (= (exprs!8588 ct2!378) Nil!71520)) (= lt!2611512 (exprs!8588 cWitness!61))))))

(declare-fun b!7347591 () Bool)

(assert (=> b!7347591 (= e!4399559 (exprs!8588 ct2!378))))

(declare-fun d!2279929 () Bool)

(assert (=> d!2279929 e!4399560))

(declare-fun res!2967585 () Bool)

(assert (=> d!2279929 (=> (not res!2967585) (not e!4399560))))

(assert (=> d!2279929 (= res!2967585 (= (content!15058 lt!2611512) (set.union (content!15058 (exprs!8588 cWitness!61)) (content!15058 (exprs!8588 ct2!378)))))))

(assert (=> d!2279929 (= lt!2611512 e!4399559)))

(declare-fun c!1364976 () Bool)

(assert (=> d!2279929 (= c!1364976 (is-Nil!71520 (exprs!8588 cWitness!61)))))

(assert (=> d!2279929 (= (++!16966 (exprs!8588 cWitness!61) (exprs!8588 ct2!378)) lt!2611512)))

(assert (= (and d!2279929 c!1364976) b!7347591))

(assert (= (and d!2279929 (not c!1364976)) b!7347592))

(assert (= (and d!2279929 res!2967585) b!7347593))

(assert (= (and b!7347593 res!2967584) b!7347594))

(declare-fun m!8009656 () Bool)

(assert (=> b!7347592 m!8009656))

(declare-fun m!8009658 () Bool)

(assert (=> b!7347593 m!8009658))

(declare-fun m!8009660 () Bool)

(assert (=> b!7347593 m!8009660))

(assert (=> b!7347593 m!8009628))

(declare-fun m!8009662 () Bool)

(assert (=> d!2279929 m!8009662))

(declare-fun m!8009664 () Bool)

(assert (=> d!2279929 m!8009664))

(assert (=> d!2279929 m!8009634))

(assert (=> b!7347396 d!2279929))

(declare-fun d!2279931 () Bool)

(assert (=> d!2279931 (forall!17974 (++!16966 lt!2611463 (exprs!8588 ct2!378)) lambda!456230)))

(declare-fun lt!2611513 () Unit!165249)

(assert (=> d!2279931 (= lt!2611513 (choose!57152 lt!2611463 (exprs!8588 ct2!378) lambda!456230))))

(assert (=> d!2279931 (forall!17974 lt!2611463 lambda!456230)))

(assert (=> d!2279931 (= (lemmaConcatPreservesForall!1823 lt!2611463 (exprs!8588 ct2!378) lambda!456230) lt!2611513)))

(declare-fun bs!1918999 () Bool)

(assert (= bs!1918999 d!2279931))

(assert (=> bs!1918999 m!8009472))

(assert (=> bs!1918999 m!8009472))

(declare-fun m!8009666 () Bool)

(assert (=> bs!1918999 m!8009666))

(declare-fun m!8009668 () Bool)

(assert (=> bs!1918999 m!8009668))

(declare-fun m!8009670 () Bool)

(assert (=> bs!1918999 m!8009670))

(assert (=> b!7347396 d!2279931))

(declare-fun b!7347596 () Bool)

(declare-fun e!4399561 () List!71644)

(assert (=> b!7347596 (= e!4399561 (Cons!71520 (h!77968 lt!2611463) (++!16966 (t!386049 lt!2611463) (exprs!8588 ct2!378))))))

(declare-fun b!7347597 () Bool)

(declare-fun res!2967586 () Bool)

(declare-fun e!4399562 () Bool)

(assert (=> b!7347597 (=> (not res!2967586) (not e!4399562))))

(declare-fun lt!2611514 () List!71644)

(assert (=> b!7347597 (= res!2967586 (= (size!42037 lt!2611514) (+ (size!42037 lt!2611463) (size!42037 (exprs!8588 ct2!378)))))))

(declare-fun b!7347598 () Bool)

(assert (=> b!7347598 (= e!4399562 (or (not (= (exprs!8588 ct2!378) Nil!71520)) (= lt!2611514 lt!2611463)))))

(declare-fun b!7347595 () Bool)

(assert (=> b!7347595 (= e!4399561 (exprs!8588 ct2!378))))

(declare-fun d!2279933 () Bool)

(assert (=> d!2279933 e!4399562))

(declare-fun res!2967587 () Bool)

(assert (=> d!2279933 (=> (not res!2967587) (not e!4399562))))

(assert (=> d!2279933 (= res!2967587 (= (content!15058 lt!2611514) (set.union (content!15058 lt!2611463) (content!15058 (exprs!8588 ct2!378)))))))

(assert (=> d!2279933 (= lt!2611514 e!4399561)))

(declare-fun c!1364977 () Bool)

(assert (=> d!2279933 (= c!1364977 (is-Nil!71520 lt!2611463))))

(assert (=> d!2279933 (= (++!16966 lt!2611463 (exprs!8588 ct2!378)) lt!2611514)))

(assert (= (and d!2279933 c!1364977) b!7347595))

(assert (= (and d!2279933 (not c!1364977)) b!7347596))

(assert (= (and d!2279933 res!2967587) b!7347597))

(assert (= (and b!7347597 res!2967586) b!7347598))

(declare-fun m!8009672 () Bool)

(assert (=> b!7347596 m!8009672))

(declare-fun m!8009674 () Bool)

(assert (=> b!7347597 m!8009674))

(declare-fun m!8009676 () Bool)

(assert (=> b!7347597 m!8009676))

(assert (=> b!7347597 m!8009628))

(declare-fun m!8009678 () Bool)

(assert (=> d!2279933 m!8009678))

(declare-fun m!8009680 () Bool)

(assert (=> d!2279933 m!8009680))

(assert (=> d!2279933 m!8009634))

(assert (=> b!7347396 d!2279933))

(assert (=> b!7347396 d!2279927))

(declare-fun b!7347599 () Bool)

(declare-fun c!1364981 () Bool)

(assert (=> b!7347599 (= c!1364981 (is-Star!19148 (regOne!38808 r1!2370)))))

(declare-fun e!4399567 () (Set Context!16176))

(declare-fun e!4399566 () (Set Context!16176))

(assert (=> b!7347599 (= e!4399567 e!4399566)))

(declare-fun b!7347600 () Bool)

(declare-fun call!671598 () (Set Context!16176))

(assert (=> b!7347600 (= e!4399567 call!671598)))

(declare-fun bm!671593 () Bool)

(declare-fun call!671603 () (Set Context!16176))

(declare-fun call!671601 () (Set Context!16176))

(assert (=> bm!671593 (= call!671603 call!671601)))

(declare-fun b!7347602 () Bool)

(assert (=> b!7347602 (= e!4399566 (as set.empty (Set Context!16176)))))

(declare-fun b!7347603 () Bool)

(declare-fun e!4399568 () (Set Context!16176))

(assert (=> b!7347603 (= e!4399568 (set.insert (Context!16177 (++!16966 lt!2611463 (exprs!8588 ct2!378))) (as set.empty (Set Context!16176))))))

(declare-fun b!7347604 () Bool)

(declare-fun e!4399563 () (Set Context!16176))

(assert (=> b!7347604 (= e!4399568 e!4399563)))

(declare-fun c!1364978 () Bool)

(assert (=> b!7347604 (= c!1364978 (is-Union!19148 (regOne!38808 r1!2370)))))

(declare-fun b!7347605 () Bool)

(declare-fun e!4399565 () (Set Context!16176))

(assert (=> b!7347605 (= e!4399565 e!4399567)))

(declare-fun c!1364980 () Bool)

(assert (=> b!7347605 (= c!1364980 (is-Concat!27993 (regOne!38808 r1!2370)))))

(declare-fun call!671599 () List!71644)

(declare-fun bm!671594 () Bool)

(declare-fun c!1364982 () Bool)

(assert (=> bm!671594 (= call!671599 ($colon$colon!3146 (exprs!8588 (Context!16177 (++!16966 lt!2611463 (exprs!8588 ct2!378)))) (ite (or c!1364982 c!1364980) (regTwo!38808 (regOne!38808 r1!2370)) (regOne!38808 r1!2370))))))

(declare-fun b!7347606 () Bool)

(declare-fun e!4399564 () Bool)

(assert (=> b!7347606 (= c!1364982 e!4399564)))

(declare-fun res!2967588 () Bool)

(assert (=> b!7347606 (=> (not res!2967588) (not e!4399564))))

(assert (=> b!7347606 (= res!2967588 (is-Concat!27993 (regOne!38808 r1!2370)))))

(assert (=> b!7347606 (= e!4399563 e!4399565)))

(declare-fun call!671600 () (Set Context!16176))

(declare-fun bm!671595 () Bool)

(assert (=> bm!671595 (= call!671600 (derivationStepZipperDown!2974 (ite c!1364978 (regOne!38809 (regOne!38808 r1!2370)) (regOne!38808 (regOne!38808 r1!2370))) (ite c!1364978 (Context!16177 (++!16966 lt!2611463 (exprs!8588 ct2!378))) (Context!16177 call!671599)) c!10362))))

(declare-fun bm!671596 () Bool)

(declare-fun call!671602 () List!71644)

(assert (=> bm!671596 (= call!671602 call!671599)))

(declare-fun b!7347607 () Bool)

(assert (=> b!7347607 (= e!4399566 call!671598)))

(declare-fun b!7347608 () Bool)

(assert (=> b!7347608 (= e!4399563 (set.union call!671600 call!671601))))

(declare-fun bm!671597 () Bool)

(assert (=> bm!671597 (= call!671601 (derivationStepZipperDown!2974 (ite c!1364978 (regTwo!38809 (regOne!38808 r1!2370)) (ite c!1364982 (regTwo!38808 (regOne!38808 r1!2370)) (ite c!1364980 (regOne!38808 (regOne!38808 r1!2370)) (reg!19477 (regOne!38808 r1!2370))))) (ite (or c!1364978 c!1364982) (Context!16177 (++!16966 lt!2611463 (exprs!8588 ct2!378))) (Context!16177 call!671602)) c!10362))))

(declare-fun b!7347601 () Bool)

(assert (=> b!7347601 (= e!4399565 (set.union call!671600 call!671603))))

(declare-fun d!2279935 () Bool)

(declare-fun c!1364979 () Bool)

(assert (=> d!2279935 (= c!1364979 (and (is-ElementMatch!19148 (regOne!38808 r1!2370)) (= (c!1364928 (regOne!38808 r1!2370)) c!10362)))))

(assert (=> d!2279935 (= (derivationStepZipperDown!2974 (regOne!38808 r1!2370) (Context!16177 (++!16966 lt!2611463 (exprs!8588 ct2!378))) c!10362) e!4399568)))

(declare-fun bm!671598 () Bool)

(assert (=> bm!671598 (= call!671598 call!671603)))

(declare-fun b!7347609 () Bool)

(assert (=> b!7347609 (= e!4399564 (nullable!8239 (regOne!38808 (regOne!38808 r1!2370))))))

(assert (= (and d!2279935 c!1364979) b!7347603))

(assert (= (and d!2279935 (not c!1364979)) b!7347604))

(assert (= (and b!7347604 c!1364978) b!7347608))

(assert (= (and b!7347604 (not c!1364978)) b!7347606))

(assert (= (and b!7347606 res!2967588) b!7347609))

(assert (= (and b!7347606 c!1364982) b!7347601))

(assert (= (and b!7347606 (not c!1364982)) b!7347605))

(assert (= (and b!7347605 c!1364980) b!7347600))

(assert (= (and b!7347605 (not c!1364980)) b!7347599))

(assert (= (and b!7347599 c!1364981) b!7347607))

(assert (= (and b!7347599 (not c!1364981)) b!7347602))

(assert (= (or b!7347600 b!7347607) bm!671596))

(assert (= (or b!7347600 b!7347607) bm!671598))

(assert (= (or b!7347601 bm!671598) bm!671593))

(assert (= (or b!7347601 bm!671596) bm!671594))

(assert (= (or b!7347608 bm!671593) bm!671597))

(assert (= (or b!7347608 b!7347601) bm!671595))

(assert (=> b!7347609 m!8009602))

(declare-fun m!8009682 () Bool)

(assert (=> bm!671595 m!8009682))

(declare-fun m!8009684 () Bool)

(assert (=> bm!671597 m!8009684))

(declare-fun m!8009686 () Bool)

(assert (=> b!7347603 m!8009686))

(declare-fun m!8009688 () Bool)

(assert (=> bm!671594 m!8009688))

(assert (=> b!7347396 d!2279935))

(declare-fun bs!1919000 () Bool)

(declare-fun d!2279937 () Bool)

(assert (= bs!1919000 (and d!2279937 b!7347398)))

(declare-fun lambda!456253 () Int)

(assert (=> bs!1919000 (= lambda!456253 lambda!456230)))

(declare-fun bs!1919001 () Bool)

(assert (= bs!1919001 (and d!2279937 d!2279897)))

(assert (=> bs!1919001 (= lambda!456253 lambda!456246)))

(declare-fun bs!1919002 () Bool)

(assert (= bs!1919002 (and d!2279937 d!2279901)))

(assert (=> bs!1919002 (= lambda!456253 lambda!456247)))

(declare-fun bs!1919003 () Bool)

(assert (= bs!1919003 (and d!2279937 d!2279903)))

(assert (=> bs!1919003 (= lambda!456253 lambda!456248)))

(assert (=> d!2279937 (set.member (Context!16177 (++!16966 (exprs!8588 cWitness!61) (exprs!8588 ct2!378))) (derivationStepZipperDown!2974 (regOne!38808 r1!2370) (Context!16177 (++!16966 (exprs!8588 lt!2611461) (exprs!8588 ct2!378))) c!10362))))

(declare-fun lt!2611523 () Unit!165249)

(assert (=> d!2279937 (= lt!2611523 (lemmaConcatPreservesForall!1823 (exprs!8588 lt!2611461) (exprs!8588 ct2!378) lambda!456253))))

(declare-fun lt!2611522 () Unit!165249)

(assert (=> d!2279937 (= lt!2611522 (lemmaConcatPreservesForall!1823 (exprs!8588 cWitness!61) (exprs!8588 ct2!378) lambda!456253))))

(declare-fun lt!2611521 () Unit!165249)

(declare-fun choose!57154 (Regex!19148 Context!16176 Context!16176 Context!16176 C!38570) Unit!165249)

(assert (=> d!2279937 (= lt!2611521 (choose!57154 (regOne!38808 r1!2370) lt!2611461 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2279937 (validRegex!9744 (regOne!38808 r1!2370))))

(assert (=> d!2279937 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!75 (regOne!38808 r1!2370) lt!2611461 ct2!378 cWitness!61 c!10362) lt!2611521)))

(declare-fun bs!1919004 () Bool)

(assert (= bs!1919004 d!2279937))

(declare-fun m!8009706 () Bool)

(assert (=> bs!1919004 m!8009706))

(declare-fun m!8009710 () Bool)

(assert (=> bs!1919004 m!8009710))

(assert (=> bs!1919004 m!8009482))

(declare-fun m!8009714 () Bool)

(assert (=> bs!1919004 m!8009714))

(declare-fun m!8009716 () Bool)

(assert (=> bs!1919004 m!8009716))

(declare-fun m!8009718 () Bool)

(assert (=> bs!1919004 m!8009718))

(declare-fun m!8009720 () Bool)

(assert (=> bs!1919004 m!8009720))

(declare-fun m!8009724 () Bool)

(assert (=> bs!1919004 m!8009724))

(assert (=> b!7347396 d!2279937))

(declare-fun b!7347634 () Bool)

(declare-fun c!1364997 () Bool)

(assert (=> b!7347634 (= c!1364997 (is-Star!19148 r1!2370))))

(declare-fun e!4399587 () (Set Context!16176))

(declare-fun e!4399586 () (Set Context!16176))

(assert (=> b!7347634 (= e!4399587 e!4399586)))

(declare-fun b!7347635 () Bool)

(declare-fun call!671616 () (Set Context!16176))

(assert (=> b!7347635 (= e!4399587 call!671616)))

(declare-fun bm!671611 () Bool)

(declare-fun call!671621 () (Set Context!16176))

(declare-fun call!671619 () (Set Context!16176))

(assert (=> bm!671611 (= call!671621 call!671619)))

(declare-fun b!7347637 () Bool)

(assert (=> b!7347637 (= e!4399586 (as set.empty (Set Context!16176)))))

(declare-fun b!7347638 () Bool)

(declare-fun e!4399588 () (Set Context!16176))

(assert (=> b!7347638 (= e!4399588 (set.insert ct1!282 (as set.empty (Set Context!16176))))))

(declare-fun b!7347639 () Bool)

(declare-fun e!4399583 () (Set Context!16176))

(assert (=> b!7347639 (= e!4399588 e!4399583)))

(declare-fun c!1364994 () Bool)

(assert (=> b!7347639 (= c!1364994 (is-Union!19148 r1!2370))))

(declare-fun b!7347640 () Bool)

(declare-fun e!4399585 () (Set Context!16176))

(assert (=> b!7347640 (= e!4399585 e!4399587)))

(declare-fun c!1364996 () Bool)

(assert (=> b!7347640 (= c!1364996 (is-Concat!27993 r1!2370))))

(declare-fun bm!671612 () Bool)

(declare-fun c!1364998 () Bool)

(declare-fun call!671617 () List!71644)

(assert (=> bm!671612 (= call!671617 ($colon$colon!3146 (exprs!8588 ct1!282) (ite (or c!1364998 c!1364996) (regTwo!38808 r1!2370) r1!2370)))))

(declare-fun b!7347641 () Bool)

(declare-fun e!4399584 () Bool)

(assert (=> b!7347641 (= c!1364998 e!4399584)))

(declare-fun res!2967593 () Bool)

(assert (=> b!7347641 (=> (not res!2967593) (not e!4399584))))

(assert (=> b!7347641 (= res!2967593 (is-Concat!27993 r1!2370))))

(assert (=> b!7347641 (= e!4399583 e!4399585)))

(declare-fun call!671618 () (Set Context!16176))

(declare-fun bm!671613 () Bool)

(assert (=> bm!671613 (= call!671618 (derivationStepZipperDown!2974 (ite c!1364994 (regOne!38809 r1!2370) (regOne!38808 r1!2370)) (ite c!1364994 ct1!282 (Context!16177 call!671617)) c!10362))))

(declare-fun bm!671614 () Bool)

(declare-fun call!671620 () List!71644)

(assert (=> bm!671614 (= call!671620 call!671617)))

(declare-fun b!7347642 () Bool)

(assert (=> b!7347642 (= e!4399586 call!671616)))

(declare-fun b!7347643 () Bool)

(assert (=> b!7347643 (= e!4399583 (set.union call!671618 call!671619))))

(declare-fun bm!671615 () Bool)

(assert (=> bm!671615 (= call!671619 (derivationStepZipperDown!2974 (ite c!1364994 (regTwo!38809 r1!2370) (ite c!1364998 (regTwo!38808 r1!2370) (ite c!1364996 (regOne!38808 r1!2370) (reg!19477 r1!2370)))) (ite (or c!1364994 c!1364998) ct1!282 (Context!16177 call!671620)) c!10362))))

(declare-fun b!7347636 () Bool)

(assert (=> b!7347636 (= e!4399585 (set.union call!671618 call!671621))))

(declare-fun d!2279943 () Bool)

(declare-fun c!1364995 () Bool)

(assert (=> d!2279943 (= c!1364995 (and (is-ElementMatch!19148 r1!2370) (= (c!1364928 r1!2370) c!10362)))))

(assert (=> d!2279943 (= (derivationStepZipperDown!2974 r1!2370 ct1!282 c!10362) e!4399588)))

(declare-fun bm!671616 () Bool)

(assert (=> bm!671616 (= call!671616 call!671621)))

(declare-fun b!7347644 () Bool)

(assert (=> b!7347644 (= e!4399584 (nullable!8239 (regOne!38808 r1!2370)))))

(assert (= (and d!2279943 c!1364995) b!7347638))

(assert (= (and d!2279943 (not c!1364995)) b!7347639))

(assert (= (and b!7347639 c!1364994) b!7347643))

(assert (= (and b!7347639 (not c!1364994)) b!7347641))

(assert (= (and b!7347641 res!2967593) b!7347644))

(assert (= (and b!7347641 c!1364998) b!7347636))

(assert (= (and b!7347641 (not c!1364998)) b!7347640))

(assert (= (and b!7347640 c!1364996) b!7347635))

(assert (= (and b!7347640 (not c!1364996)) b!7347634))

(assert (= (and b!7347634 c!1364997) b!7347642))

(assert (= (and b!7347634 (not c!1364997)) b!7347637))

(assert (= (or b!7347635 b!7347642) bm!671614))

(assert (= (or b!7347635 b!7347642) bm!671616))

(assert (= (or b!7347636 bm!671616) bm!671611))

(assert (= (or b!7347636 bm!671614) bm!671612))

(assert (= (or b!7347643 bm!671611) bm!671615))

(assert (= (or b!7347643 b!7347636) bm!671613))

(assert (=> b!7347644 m!8009490))

(declare-fun m!8009726 () Bool)

(assert (=> bm!671613 m!8009726))

(declare-fun m!8009728 () Bool)

(assert (=> bm!671615 m!8009728))

(assert (=> b!7347638 m!8009598))

(declare-fun m!8009730 () Bool)

(assert (=> bm!671612 m!8009730))

(assert (=> b!7347390 d!2279943))

(declare-fun b!7347649 () Bool)

(declare-fun e!4399591 () Bool)

(declare-fun tp!2086738 () Bool)

(declare-fun tp!2086739 () Bool)

(assert (=> b!7347649 (= e!4399591 (and tp!2086738 tp!2086739))))

(assert (=> b!7347389 (= tp!2086705 e!4399591)))

(assert (= (and b!7347389 (is-Cons!71520 (exprs!8588 ct2!378))) b!7347649))

(declare-fun b!7347661 () Bool)

(declare-fun e!4399594 () Bool)

(declare-fun tp!2086750 () Bool)

(declare-fun tp!2086752 () Bool)

(assert (=> b!7347661 (= e!4399594 (and tp!2086750 tp!2086752))))

(declare-fun b!7347662 () Bool)

(declare-fun tp!2086751 () Bool)

(assert (=> b!7347662 (= e!4399594 tp!2086751)))

(declare-fun b!7347660 () Bool)

(assert (=> b!7347660 (= e!4399594 tp_is_empty!48541)))

(declare-fun b!7347663 () Bool)

(declare-fun tp!2086753 () Bool)

(declare-fun tp!2086754 () Bool)

(assert (=> b!7347663 (= e!4399594 (and tp!2086753 tp!2086754))))

(assert (=> b!7347394 (= tp!2086707 e!4399594)))

(assert (= (and b!7347394 (is-ElementMatch!19148 (regOne!38809 r1!2370))) b!7347660))

(assert (= (and b!7347394 (is-Concat!27993 (regOne!38809 r1!2370))) b!7347661))

(assert (= (and b!7347394 (is-Star!19148 (regOne!38809 r1!2370))) b!7347662))

(assert (= (and b!7347394 (is-Union!19148 (regOne!38809 r1!2370))) b!7347663))

(declare-fun b!7347665 () Bool)

(declare-fun e!4399595 () Bool)

(declare-fun tp!2086755 () Bool)

(declare-fun tp!2086757 () Bool)

(assert (=> b!7347665 (= e!4399595 (and tp!2086755 tp!2086757))))

(declare-fun b!7347666 () Bool)

(declare-fun tp!2086756 () Bool)

(assert (=> b!7347666 (= e!4399595 tp!2086756)))

(declare-fun b!7347664 () Bool)

(assert (=> b!7347664 (= e!4399595 tp_is_empty!48541)))

(declare-fun b!7347667 () Bool)

(declare-fun tp!2086758 () Bool)

(declare-fun tp!2086759 () Bool)

(assert (=> b!7347667 (= e!4399595 (and tp!2086758 tp!2086759))))

(assert (=> b!7347394 (= tp!2086703 e!4399595)))

(assert (= (and b!7347394 (is-ElementMatch!19148 (regTwo!38809 r1!2370))) b!7347664))

(assert (= (and b!7347394 (is-Concat!27993 (regTwo!38809 r1!2370))) b!7347665))

(assert (= (and b!7347394 (is-Star!19148 (regTwo!38809 r1!2370))) b!7347666))

(assert (= (and b!7347394 (is-Union!19148 (regTwo!38809 r1!2370))) b!7347667))

(declare-fun b!7347669 () Bool)

(declare-fun e!4399596 () Bool)

(declare-fun tp!2086760 () Bool)

(declare-fun tp!2086762 () Bool)

(assert (=> b!7347669 (= e!4399596 (and tp!2086760 tp!2086762))))

(declare-fun b!7347670 () Bool)

(declare-fun tp!2086761 () Bool)

(assert (=> b!7347670 (= e!4399596 tp!2086761)))

(declare-fun b!7347668 () Bool)

(assert (=> b!7347668 (= e!4399596 tp_is_empty!48541)))

(declare-fun b!7347671 () Bool)

(declare-fun tp!2086763 () Bool)

(declare-fun tp!2086764 () Bool)

(assert (=> b!7347671 (= e!4399596 (and tp!2086763 tp!2086764))))

(assert (=> b!7347403 (= tp!2086709 e!4399596)))

(assert (= (and b!7347403 (is-ElementMatch!19148 (reg!19477 r1!2370))) b!7347668))

(assert (= (and b!7347403 (is-Concat!27993 (reg!19477 r1!2370))) b!7347669))

(assert (= (and b!7347403 (is-Star!19148 (reg!19477 r1!2370))) b!7347670))

(assert (= (and b!7347403 (is-Union!19148 (reg!19477 r1!2370))) b!7347671))

(declare-fun b!7347672 () Bool)

(declare-fun e!4399597 () Bool)

(declare-fun tp!2086765 () Bool)

(declare-fun tp!2086766 () Bool)

(assert (=> b!7347672 (= e!4399597 (and tp!2086765 tp!2086766))))

(assert (=> b!7347392 (= tp!2086708 e!4399597)))

(assert (= (and b!7347392 (is-Cons!71520 (exprs!8588 cWitness!61))) b!7347672))

(declare-fun b!7347673 () Bool)

(declare-fun e!4399598 () Bool)

(declare-fun tp!2086767 () Bool)

(declare-fun tp!2086768 () Bool)

(assert (=> b!7347673 (= e!4399598 (and tp!2086767 tp!2086768))))

(assert (=> b!7347401 (= tp!2086706 e!4399598)))

(assert (= (and b!7347401 (is-Cons!71520 (exprs!8588 ct1!282))) b!7347673))

(declare-fun b!7347675 () Bool)

(declare-fun e!4399599 () Bool)

(declare-fun tp!2086769 () Bool)

(declare-fun tp!2086771 () Bool)

(assert (=> b!7347675 (= e!4399599 (and tp!2086769 tp!2086771))))

(declare-fun b!7347676 () Bool)

(declare-fun tp!2086770 () Bool)

(assert (=> b!7347676 (= e!4399599 tp!2086770)))

(declare-fun b!7347674 () Bool)

(assert (=> b!7347674 (= e!4399599 tp_is_empty!48541)))

(declare-fun b!7347677 () Bool)

(declare-fun tp!2086772 () Bool)

(declare-fun tp!2086773 () Bool)

(assert (=> b!7347677 (= e!4399599 (and tp!2086772 tp!2086773))))

(assert (=> b!7347395 (= tp!2086702 e!4399599)))

(assert (= (and b!7347395 (is-ElementMatch!19148 (regOne!38808 r1!2370))) b!7347674))

(assert (= (and b!7347395 (is-Concat!27993 (regOne!38808 r1!2370))) b!7347675))

(assert (= (and b!7347395 (is-Star!19148 (regOne!38808 r1!2370))) b!7347676))

(assert (= (and b!7347395 (is-Union!19148 (regOne!38808 r1!2370))) b!7347677))

(declare-fun b!7347679 () Bool)

(declare-fun e!4399600 () Bool)

(declare-fun tp!2086774 () Bool)

(declare-fun tp!2086776 () Bool)

(assert (=> b!7347679 (= e!4399600 (and tp!2086774 tp!2086776))))

(declare-fun b!7347680 () Bool)

(declare-fun tp!2086775 () Bool)

(assert (=> b!7347680 (= e!4399600 tp!2086775)))

(declare-fun b!7347678 () Bool)

(assert (=> b!7347678 (= e!4399600 tp_is_empty!48541)))

(declare-fun b!7347681 () Bool)

(declare-fun tp!2086777 () Bool)

(declare-fun tp!2086778 () Bool)

(assert (=> b!7347681 (= e!4399600 (and tp!2086777 tp!2086778))))

(assert (=> b!7347395 (= tp!2086704 e!4399600)))

(assert (= (and b!7347395 (is-ElementMatch!19148 (regTwo!38808 r1!2370))) b!7347678))

(assert (= (and b!7347395 (is-Concat!27993 (regTwo!38808 r1!2370))) b!7347679))

(assert (= (and b!7347395 (is-Star!19148 (regTwo!38808 r1!2370))) b!7347680))

(assert (= (and b!7347395 (is-Union!19148 (regTwo!38808 r1!2370))) b!7347681))

(declare-fun b_lambda!284043 () Bool)

(assert (= b_lambda!284037 (or b!7347398 b_lambda!284043)))

(declare-fun bs!1919005 () Bool)

(declare-fun d!2279947 () Bool)

(assert (= bs!1919005 (and d!2279947 b!7347398)))

(assert (=> bs!1919005 (= (dynLambda!29479 lambda!456230 (h!77968 (exprs!8588 ct2!378))) (validRegex!9744 (h!77968 (exprs!8588 ct2!378))))))

(declare-fun m!8009732 () Bool)

(assert (=> bs!1919005 m!8009732))

(assert (=> b!7347489 d!2279947))

(declare-fun b_lambda!284045 () Bool)

(assert (= b_lambda!284039 (or b!7347398 b_lambda!284045)))

(declare-fun bs!1919006 () Bool)

(declare-fun d!2279949 () Bool)

(assert (= bs!1919006 (and d!2279949 b!7347398)))

(assert (=> bs!1919006 (= (dynLambda!29479 lambda!456230 (h!77968 (exprs!8588 ct1!282))) (validRegex!9744 (h!77968 (exprs!8588 ct1!282))))))

(declare-fun m!8009734 () Bool)

(assert (=> bs!1919006 m!8009734))

(assert (=> b!7347589 d!2279949))

(push 1)

(assert (not b!7347673))

(assert (not b!7347649))

(assert (not bm!671568))

(assert (not b!7347676))

(assert (not bm!671613))

(assert (not bm!671580))

(assert (not b!7347671))

(assert (not b!7347670))

(assert (not b_lambda!284045))

(assert (not bs!1919006))

(assert (not b!7347644))

(assert (not d!2279931))

(assert (not b!7347672))

(assert (not b!7347582))

(assert (not bs!1919005))

(assert (not bm!671597))

(assert (not b!7347609))

(assert (not b!7347597))

(assert (not b!7347679))

(assert (not b!7347677))

(assert (not bm!671577))

(assert (not bm!671546))

(assert (not bm!671562))

(assert (not bm!671592))

(assert (not b!7347556))

(assert (not bm!671591))

(assert (not b_lambda!284043))

(assert (not bm!671612))

(assert (not bm!671615))

(assert (not bm!671567))

(assert (not d!2279903))

(assert (not bm!671578))

(assert (not d!2279921))

(assert (not b!7347663))

(assert (not b!7347661))

(assert (not b!7347590))

(assert (not b!7347476))

(assert (not bm!671561))

(assert (not d!2279901))

(assert (not d!2279897))

(assert (not bm!671564))

(assert (not b!7347577))

(assert (not b!7347578))

(assert (not b!7347667))

(assert (not bm!671547))

(assert (not b!7347567))

(assert (not d!2279915))

(assert (not bm!671594))

(assert (not d!2279929))

(assert tp_is_empty!48541)

(assert (not b!7347662))

(assert (not b!7347666))

(assert (not d!2279933))

(assert (not b!7347680))

(assert (not b!7347669))

(assert (not bm!671570))

(assert (not b!7347527))

(assert (not b!7347681))

(assert (not b!7347490))

(assert (not b!7347665))

(assert (not b!7347593))

(assert (not bm!671595))

(assert (not d!2279919))

(assert (not b!7347592))

(assert (not b!7347675))

(assert (not d!2279937))

(assert (not b!7347596))

(assert (not d!2279927))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

