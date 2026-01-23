; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!727664 () Bool)

(assert start!727664)

(declare-fun res!3013118 () Bool)

(declare-fun e!4478457 () Bool)

(assert (=> start!727664 (=> (not res!3013118) (not e!4478457))))

(declare-datatypes ((C!39822 0))(
  ( (C!39823 (val!30331 Int)) )
))
(declare-datatypes ((Regex!19748 0))(
  ( (ElementMatch!19748 (c!1386946 C!39822)) (Concat!28593 (regOne!40008 Regex!19748) (regTwo!40008 Regex!19748)) (EmptyExpr!19748) (Star!19748 (reg!20077 Regex!19748)) (EmptyLang!19748) (Union!19748 (regOne!40009 Regex!19748) (regTwo!40009 Regex!19748)) )
))
(declare-datatypes ((List!72627 0))(
  ( (Nil!72503) (Cons!72503 (h!78951 Regex!19748) (t!387264 List!72627)) )
))
(declare-datatypes ((Context!17000 0))(
  ( (Context!17001 (exprs!9000 List!72627)) )
))
(declare-fun c!7091 () Context!17000)

(assert (=> start!727664 (= res!3013118 (is-Cons!72503 (exprs!9000 c!7091)))))

(assert (=> start!727664 e!4478457))

(declare-fun e!4478458 () Bool)

(declare-fun inv!92634 (Context!17000) Bool)

(assert (=> start!727664 (and (inv!92634 c!7091) e!4478458)))

(declare-fun b!7510452 () Bool)

(declare-fun res!3013119 () Bool)

(assert (=> b!7510452 (=> (not res!3013119) (not e!4478457))))

(declare-datatypes ((List!72628 0))(
  ( (Nil!72504) (Cons!72504 (h!78952 C!39822) (t!387265 List!72628)) )
))
(declare-datatypes ((Option!17245 0))(
  ( (None!17244) (Some!17244 (v!54379 List!72628)) )
))
(declare-fun getLanguageWitness!1082 (Regex!19748) Option!17245)

(assert (=> b!7510452 (= res!3013119 (is-Some!17244 (getLanguageWitness!1082 (h!78951 (exprs!9000 c!7091)))))))

(declare-fun b!7510453 () Bool)

(declare-fun size!42294 (List!72627) Int)

(assert (=> b!7510453 (= e!4478457 (>= (size!42294 (t!387264 (exprs!9000 c!7091))) (size!42294 (exprs!9000 c!7091))))))

(declare-fun b!7510454 () Bool)

(declare-fun tp!2180023 () Bool)

(assert (=> b!7510454 (= e!4478458 tp!2180023)))

(assert (= (and start!727664 res!3013118) b!7510452))

(assert (= (and b!7510452 res!3013119) b!7510453))

(assert (= start!727664 b!7510454))

(declare-fun m!8094130 () Bool)

(assert (=> start!727664 m!8094130))

(declare-fun m!8094132 () Bool)

(assert (=> b!7510452 m!8094132))

(declare-fun m!8094134 () Bool)

(assert (=> b!7510453 m!8094134))

(declare-fun m!8094136 () Bool)

(assert (=> b!7510453 m!8094136))

(push 1)

(assert (not b!7510452))

(assert (not b!7510453))

(assert (not start!727664))

(assert (not b!7510454))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7510496 () Bool)

(declare-fun c!1386967 () Bool)

(declare-fun lt!2637404 () Option!17245)

(assert (=> b!7510496 (= c!1386967 (is-Some!17244 lt!2637404))))

(declare-fun call!688943 () Option!17245)

(assert (=> b!7510496 (= lt!2637404 call!688943)))

(declare-fun e!4478485 () Option!17245)

(declare-fun e!4478486 () Option!17245)

(assert (=> b!7510496 (= e!4478485 e!4478486)))

(declare-fun b!7510497 () Bool)

(declare-fun e!4478484 () Option!17245)

(assert (=> b!7510497 (= e!4478484 (Some!17244 (Cons!72504 (c!1386946 (h!78951 (exprs!9000 c!7091))) Nil!72504)))))

(declare-fun bm!688938 () Bool)

(declare-fun c!1386969 () Bool)

(assert (=> bm!688938 (= call!688943 (getLanguageWitness!1082 (ite c!1386969 (regOne!40009 (h!78951 (exprs!9000 c!7091))) (regTwo!40008 (h!78951 (exprs!9000 c!7091))))))))

(declare-fun b!7510499 () Bool)

(declare-fun e!4478483 () Option!17245)

(assert (=> b!7510499 (= e!4478484 e!4478483)))

(declare-fun c!1386966 () Bool)

(assert (=> b!7510499 (= c!1386966 (is-Star!19748 (h!78951 (exprs!9000 c!7091))))))

(declare-fun b!7510500 () Bool)

(assert (=> b!7510500 (= e!4478485 None!17244)))

(declare-fun b!7510501 () Bool)

(declare-fun e!4478482 () Option!17245)

(declare-fun call!688944 () Option!17245)

(assert (=> b!7510501 (= e!4478482 call!688944)))

(declare-fun b!7510502 () Bool)

(declare-fun lt!2637405 () Option!17245)

(declare-fun ++!17354 (List!72628 List!72628) List!72628)

(assert (=> b!7510502 (= e!4478486 (Some!17244 (++!17354 (v!54379 lt!2637405) (v!54379 lt!2637404))))))

(declare-fun b!7510503 () Bool)

(declare-fun e!4478488 () Option!17245)

(assert (=> b!7510503 (= e!4478488 e!4478482)))

(declare-fun lt!2637406 () Option!17245)

(assert (=> b!7510503 (= lt!2637406 call!688943)))

(declare-fun c!1386968 () Bool)

(assert (=> b!7510503 (= c!1386968 (is-Some!17244 lt!2637406))))

(declare-fun d!2306316 () Bool)

(declare-fun c!1386965 () Bool)

(assert (=> d!2306316 (= c!1386965 (is-EmptyExpr!19748 (h!78951 (exprs!9000 c!7091))))))

(declare-fun e!4478487 () Option!17245)

(assert (=> d!2306316 (= (getLanguageWitness!1082 (h!78951 (exprs!9000 c!7091))) e!4478487)))

(declare-fun b!7510498 () Bool)

(assert (=> b!7510498 (= e!4478482 lt!2637406)))

(declare-fun b!7510504 () Bool)

(assert (=> b!7510504 (= c!1386969 (is-Union!19748 (h!78951 (exprs!9000 c!7091))))))

(assert (=> b!7510504 (= e!4478483 e!4478488)))

(declare-fun b!7510505 () Bool)

(assert (=> b!7510505 (= e!4478483 (Some!17244 Nil!72504))))

(declare-fun b!7510506 () Bool)

(declare-fun e!4478481 () Option!17245)

(assert (=> b!7510506 (= e!4478481 None!17244)))

(declare-fun b!7510507 () Bool)

(assert (=> b!7510507 (= e!4478487 (Some!17244 Nil!72504))))

(declare-fun b!7510508 () Bool)

(assert (=> b!7510508 (= e!4478487 e!4478481)))

(declare-fun c!1386964 () Bool)

(assert (=> b!7510508 (= c!1386964 (is-EmptyLang!19748 (h!78951 (exprs!9000 c!7091))))))

(declare-fun b!7510509 () Bool)

(declare-fun c!1386971 () Bool)

(assert (=> b!7510509 (= c!1386971 (is-ElementMatch!19748 (h!78951 (exprs!9000 c!7091))))))

(assert (=> b!7510509 (= e!4478481 e!4478484)))

(declare-fun bm!688939 () Bool)

(assert (=> bm!688939 (= call!688944 (getLanguageWitness!1082 (ite c!1386969 (regTwo!40009 (h!78951 (exprs!9000 c!7091))) (regOne!40008 (h!78951 (exprs!9000 c!7091))))))))

(declare-fun b!7510510 () Bool)

(assert (=> b!7510510 (= e!4478488 e!4478485)))

(assert (=> b!7510510 (= lt!2637405 call!688944)))

(declare-fun c!1386970 () Bool)

(assert (=> b!7510510 (= c!1386970 (is-Some!17244 lt!2637405))))

(declare-fun b!7510511 () Bool)

(assert (=> b!7510511 (= e!4478486 None!17244)))

(assert (= (and d!2306316 c!1386965) b!7510507))

(assert (= (and d!2306316 (not c!1386965)) b!7510508))

(assert (= (and b!7510508 c!1386964) b!7510506))

(assert (= (and b!7510508 (not c!1386964)) b!7510509))

(assert (= (and b!7510509 c!1386971) b!7510497))

(assert (= (and b!7510509 (not c!1386971)) b!7510499))

(assert (= (and b!7510499 c!1386966) b!7510505))

(assert (= (and b!7510499 (not c!1386966)) b!7510504))

(assert (= (and b!7510504 c!1386969) b!7510503))

(assert (= (and b!7510504 (not c!1386969)) b!7510510))

(assert (= (and b!7510503 c!1386968) b!7510498))

(assert (= (and b!7510503 (not c!1386968)) b!7510501))

(assert (= (and b!7510510 c!1386970) b!7510496))

(assert (= (and b!7510510 (not c!1386970)) b!7510500))

(assert (= (and b!7510496 c!1386967) b!7510502))

(assert (= (and b!7510496 (not c!1386967)) b!7510511))

(assert (= (or b!7510501 b!7510510) bm!688939))

(assert (= (or b!7510503 b!7510496) bm!688938))

(declare-fun m!8094146 () Bool)

(assert (=> bm!688938 m!8094146))

(declare-fun m!8094148 () Bool)

(assert (=> b!7510502 m!8094148))

(declare-fun m!8094150 () Bool)

(assert (=> bm!688939 m!8094150))

(assert (=> b!7510452 d!2306316))

(declare-fun d!2306320 () Bool)

(declare-fun lt!2637409 () Int)

(assert (=> d!2306320 (>= lt!2637409 0)))

(declare-fun e!4478491 () Int)

(assert (=> d!2306320 (= lt!2637409 e!4478491)))

(declare-fun c!1386974 () Bool)

(assert (=> d!2306320 (= c!1386974 (is-Nil!72503 (t!387264 (exprs!9000 c!7091))))))

(assert (=> d!2306320 (= (size!42294 (t!387264 (exprs!9000 c!7091))) lt!2637409)))

(declare-fun b!7510516 () Bool)

(assert (=> b!7510516 (= e!4478491 0)))

(declare-fun b!7510517 () Bool)

(assert (=> b!7510517 (= e!4478491 (+ 1 (size!42294 (t!387264 (t!387264 (exprs!9000 c!7091))))))))

(assert (= (and d!2306320 c!1386974) b!7510516))

(assert (= (and d!2306320 (not c!1386974)) b!7510517))

(declare-fun m!8094152 () Bool)

(assert (=> b!7510517 m!8094152))

(assert (=> b!7510453 d!2306320))

(declare-fun d!2306322 () Bool)

(declare-fun lt!2637410 () Int)

(assert (=> d!2306322 (>= lt!2637410 0)))

(declare-fun e!4478492 () Int)

(assert (=> d!2306322 (= lt!2637410 e!4478492)))

(declare-fun c!1386975 () Bool)

(assert (=> d!2306322 (= c!1386975 (is-Nil!72503 (exprs!9000 c!7091)))))

(assert (=> d!2306322 (= (size!42294 (exprs!9000 c!7091)) lt!2637410)))

(declare-fun b!7510518 () Bool)

(assert (=> b!7510518 (= e!4478492 0)))

(declare-fun b!7510519 () Bool)

(assert (=> b!7510519 (= e!4478492 (+ 1 (size!42294 (t!387264 (exprs!9000 c!7091)))))))

(assert (= (and d!2306322 c!1386975) b!7510518))

(assert (= (and d!2306322 (not c!1386975)) b!7510519))

(assert (=> b!7510519 m!8094134))

(assert (=> b!7510453 d!2306322))

(declare-fun d!2306324 () Bool)

(declare-fun lambda!466178 () Int)

(declare-fun forall!18376 (List!72627 Int) Bool)

(assert (=> d!2306324 (= (inv!92634 c!7091) (forall!18376 (exprs!9000 c!7091) lambda!466178))))

(declare-fun bs!1939130 () Bool)

(assert (= bs!1939130 d!2306324))

(declare-fun m!8094154 () Bool)

(assert (=> bs!1939130 m!8094154))

(assert (=> start!727664 d!2306324))

(declare-fun b!7510524 () Bool)

(declare-fun e!4478495 () Bool)

(declare-fun tp!2180031 () Bool)

(declare-fun tp!2180032 () Bool)

(assert (=> b!7510524 (= e!4478495 (and tp!2180031 tp!2180032))))

(assert (=> b!7510454 (= tp!2180023 e!4478495)))

(assert (= (and b!7510454 (is-Cons!72503 (exprs!9000 c!7091))) b!7510524))

(push 1)

(assert (not b!7510502))

(assert (not bm!688938))

(assert (not b!7510524))

(assert (not b!7510517))

(assert (not b!7510519))

(assert (not bm!688939))

(assert (not d!2306324))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

