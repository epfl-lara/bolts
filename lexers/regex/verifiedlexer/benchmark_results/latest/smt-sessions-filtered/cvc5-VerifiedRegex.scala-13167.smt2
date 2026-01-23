; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!718682 () Bool)

(assert start!718682)

(declare-fun res!2971483 () Bool)

(declare-fun e!4406842 () Bool)

(assert (=> start!718682 (=> (not res!2971483) (not e!4406842))))

(declare-datatypes ((C!38718 0))(
  ( (C!38719 (val!29719 Int)) )
))
(declare-datatypes ((Regex!19222 0))(
  ( (ElementMatch!19222 (c!1367600 C!38718)) (Concat!28067 (regOne!38956 Regex!19222) (regTwo!38956 Regex!19222)) (EmptyExpr!19222) (Star!19222 (reg!19551 Regex!19222)) (EmptyLang!19222) (Union!19222 (regOne!38957 Regex!19222) (regTwo!38957 Regex!19222)) )
))
(declare-fun r1!2370 () Regex!19222)

(declare-fun validRegex!9818 (Regex!19222) Bool)

(assert (=> start!718682 (= res!2971483 (validRegex!9818 r1!2370))))

(assert (=> start!718682 e!4406842))

(declare-fun tp_is_empty!48689 () Bool)

(assert (=> start!718682 tp_is_empty!48689))

(declare-datatypes ((List!71718 0))(
  ( (Nil!71594) (Cons!71594 (h!78042 Regex!19222) (t!386167 List!71718)) )
))
(declare-datatypes ((Context!16324 0))(
  ( (Context!16325 (exprs!8662 List!71718)) )
))
(declare-fun cWitness!61 () Context!16324)

(declare-fun e!4406841 () Bool)

(declare-fun inv!91396 (Context!16324) Bool)

(assert (=> start!718682 (and (inv!91396 cWitness!61) e!4406841)))

(declare-fun ct1!282 () Context!16324)

(declare-fun e!4406843 () Bool)

(assert (=> start!718682 (and (inv!91396 ct1!282) e!4406843)))

(declare-fun e!4406839 () Bool)

(assert (=> start!718682 e!4406839))

(declare-fun ct2!378 () Context!16324)

(declare-fun e!4406840 () Bool)

(assert (=> start!718682 (and (inv!91396 ct2!378) e!4406840)))

(declare-fun b!7360404 () Bool)

(assert (=> b!7360404 (= e!4406839 tp_is_empty!48689)))

(declare-fun b!7360405 () Bool)

(declare-fun res!2971484 () Bool)

(assert (=> b!7360405 (=> (not res!2971484) (not e!4406842))))

(declare-fun c!10362 () C!38718)

(declare-fun derivationStepZipperDown!3048 (Regex!19222 Context!16324 C!38718) (Set Context!16324))

(assert (=> b!7360405 (= res!2971484 (set.member cWitness!61 (derivationStepZipperDown!3048 r1!2370 ct1!282 c!10362)))))

(declare-fun b!7360406 () Bool)

(declare-fun tp!2091355 () Bool)

(assert (=> b!7360406 (= e!4406841 tp!2091355)))

(declare-fun b!7360407 () Bool)

(declare-fun tp!2091352 () Bool)

(assert (=> b!7360407 (= e!4406843 tp!2091352)))

(declare-fun b!7360408 () Bool)

(declare-fun tp!2091350 () Bool)

(assert (=> b!7360408 (= e!4406839 tp!2091350)))

(declare-fun b!7360409 () Bool)

(declare-fun tp!2091354 () Bool)

(assert (=> b!7360409 (= e!4406840 tp!2091354)))

(declare-fun b!7360410 () Bool)

(declare-fun tp!2091349 () Bool)

(declare-fun tp!2091351 () Bool)

(assert (=> b!7360410 (= e!4406839 (and tp!2091349 tp!2091351))))

(declare-fun b!7360411 () Bool)

(declare-fun ++!17038 (List!71718 List!71718) List!71718)

(assert (=> b!7360411 (= e!4406842 (not (inv!91396 (Context!16325 (++!17038 (exprs!8662 ct1!282) (exprs!8662 ct2!378))))))))

(declare-fun lambda!457280 () Int)

(declare-datatypes ((Unit!165393 0))(
  ( (Unit!165394) )
))
(declare-fun lt!2613754 () Unit!165393)

(declare-fun lemmaConcatPreservesForall!1895 (List!71718 List!71718 Int) Unit!165393)

(assert (=> b!7360411 (= lt!2613754 (lemmaConcatPreservesForall!1895 (exprs!8662 ct1!282) (exprs!8662 ct2!378) lambda!457280))))

(declare-fun b!7360412 () Bool)

(declare-fun tp!2091353 () Bool)

(declare-fun tp!2091348 () Bool)

(assert (=> b!7360412 (= e!4406839 (and tp!2091353 tp!2091348))))

(assert (= (and start!718682 res!2971483) b!7360405))

(assert (= (and b!7360405 res!2971484) b!7360411))

(assert (= start!718682 b!7360406))

(assert (= start!718682 b!7360407))

(assert (= (and start!718682 (is-ElementMatch!19222 r1!2370)) b!7360404))

(assert (= (and start!718682 (is-Concat!28067 r1!2370)) b!7360410))

(assert (= (and start!718682 (is-Star!19222 r1!2370)) b!7360408))

(assert (= (and start!718682 (is-Union!19222 r1!2370)) b!7360412))

(assert (= start!718682 b!7360409))

(declare-fun m!8018230 () Bool)

(assert (=> start!718682 m!8018230))

(declare-fun m!8018232 () Bool)

(assert (=> start!718682 m!8018232))

(declare-fun m!8018234 () Bool)

(assert (=> start!718682 m!8018234))

(declare-fun m!8018236 () Bool)

(assert (=> start!718682 m!8018236))

(declare-fun m!8018238 () Bool)

(assert (=> b!7360405 m!8018238))

(declare-fun m!8018240 () Bool)

(assert (=> b!7360405 m!8018240))

(declare-fun m!8018242 () Bool)

(assert (=> b!7360411 m!8018242))

(declare-fun m!8018244 () Bool)

(assert (=> b!7360411 m!8018244))

(declare-fun m!8018246 () Bool)

(assert (=> b!7360411 m!8018246))

(push 1)

(assert (not b!7360409))

(assert (not b!7360405))

(assert tp_is_empty!48689)

(assert (not b!7360410))

(assert (not b!7360408))

(assert (not b!7360411))

(assert (not b!7360407))

(assert (not start!718682))

(assert (not b!7360412))

(assert (not b!7360406))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7360458 () Bool)

(declare-fun e!4406877 () Bool)

(declare-fun call!674462 () Bool)

(assert (=> b!7360458 (= e!4406877 call!674462)))

(declare-fun b!7360459 () Bool)

(declare-fun e!4406874 () Bool)

(declare-fun call!674460 () Bool)

(assert (=> b!7360459 (= e!4406874 call!674460)))

(declare-fun b!7360460 () Bool)

(declare-fun res!2971505 () Bool)

(declare-fun e!4406875 () Bool)

(assert (=> b!7360460 (=> res!2971505 e!4406875)))

(assert (=> b!7360460 (= res!2971505 (not (is-Concat!28067 r1!2370)))))

(declare-fun e!4406873 () Bool)

(assert (=> b!7360460 (= e!4406873 e!4406875)))

(declare-fun b!7360461 () Bool)

(declare-fun res!2971503 () Bool)

(assert (=> b!7360461 (=> (not res!2971503) (not e!4406877))))

(declare-fun call!674461 () Bool)

(assert (=> b!7360461 (= res!2971503 call!674461)))

(assert (=> b!7360461 (= e!4406873 e!4406877)))

(declare-fun b!7360462 () Bool)

(declare-fun e!4406876 () Bool)

(declare-fun e!4406879 () Bool)

(assert (=> b!7360462 (= e!4406876 e!4406879)))

(declare-fun c!1367607 () Bool)

(assert (=> b!7360462 (= c!1367607 (is-Star!19222 r1!2370))))

(declare-fun bm!674455 () Bool)

(declare-fun c!1367606 () Bool)

(assert (=> bm!674455 (= call!674460 (validRegex!9818 (ite c!1367607 (reg!19551 r1!2370) (ite c!1367606 (regTwo!38957 r1!2370) (regOne!38956 r1!2370)))))))

(declare-fun d!2282070 () Bool)

(declare-fun res!2971502 () Bool)

(assert (=> d!2282070 (=> res!2971502 e!4406876)))

(assert (=> d!2282070 (= res!2971502 (is-ElementMatch!19222 r1!2370))))

(assert (=> d!2282070 (= (validRegex!9818 r1!2370) e!4406876)))

(declare-fun b!7360463 () Bool)

(declare-fun e!4406878 () Bool)

(assert (=> b!7360463 (= e!4406875 e!4406878)))

(declare-fun res!2971504 () Bool)

(assert (=> b!7360463 (=> (not res!2971504) (not e!4406878))))

(assert (=> b!7360463 (= res!2971504 call!674462)))

(declare-fun bm!674456 () Bool)

(assert (=> bm!674456 (= call!674462 call!674460)))

(declare-fun bm!674457 () Bool)

(assert (=> bm!674457 (= call!674461 (validRegex!9818 (ite c!1367606 (regOne!38957 r1!2370) (regTwo!38956 r1!2370))))))

(declare-fun b!7360464 () Bool)

(assert (=> b!7360464 (= e!4406879 e!4406874)))

(declare-fun res!2971501 () Bool)

(declare-fun nullable!8309 (Regex!19222) Bool)

(assert (=> b!7360464 (= res!2971501 (not (nullable!8309 (reg!19551 r1!2370))))))

(assert (=> b!7360464 (=> (not res!2971501) (not e!4406874))))

(declare-fun b!7360465 () Bool)

(assert (=> b!7360465 (= e!4406878 call!674461)))

(declare-fun b!7360466 () Bool)

(assert (=> b!7360466 (= e!4406879 e!4406873)))

(assert (=> b!7360466 (= c!1367606 (is-Union!19222 r1!2370))))

(assert (= (and d!2282070 (not res!2971502)) b!7360462))

(assert (= (and b!7360462 c!1367607) b!7360464))

(assert (= (and b!7360462 (not c!1367607)) b!7360466))

(assert (= (and b!7360464 res!2971501) b!7360459))

(assert (= (and b!7360466 c!1367606) b!7360461))

(assert (= (and b!7360466 (not c!1367606)) b!7360460))

(assert (= (and b!7360461 res!2971503) b!7360458))

(assert (= (and b!7360460 (not res!2971505)) b!7360463))

(assert (= (and b!7360463 res!2971504) b!7360465))

(assert (= (or b!7360461 b!7360465) bm!674457))

(assert (= (or b!7360458 b!7360463) bm!674456))

(assert (= (or b!7360459 bm!674456) bm!674455))

(declare-fun m!8018266 () Bool)

(assert (=> bm!674455 m!8018266))

(declare-fun m!8018268 () Bool)

(assert (=> bm!674457 m!8018268))

(declare-fun m!8018270 () Bool)

(assert (=> b!7360464 m!8018270))

(assert (=> start!718682 d!2282070))

(declare-fun bs!1920070 () Bool)

(declare-fun d!2282072 () Bool)

(assert (= bs!1920070 (and d!2282072 b!7360411)))

(declare-fun lambda!457286 () Int)

(assert (=> bs!1920070 (= lambda!457286 lambda!457280)))

(declare-fun forall!18038 (List!71718 Int) Bool)

(assert (=> d!2282072 (= (inv!91396 cWitness!61) (forall!18038 (exprs!8662 cWitness!61) lambda!457286))))

(declare-fun bs!1920071 () Bool)

(assert (= bs!1920071 d!2282072))

(declare-fun m!8018272 () Bool)

(assert (=> bs!1920071 m!8018272))

(assert (=> start!718682 d!2282072))

(declare-fun bs!1920072 () Bool)

(declare-fun d!2282074 () Bool)

(assert (= bs!1920072 (and d!2282074 b!7360411)))

(declare-fun lambda!457287 () Int)

(assert (=> bs!1920072 (= lambda!457287 lambda!457280)))

(declare-fun bs!1920073 () Bool)

(assert (= bs!1920073 (and d!2282074 d!2282072)))

(assert (=> bs!1920073 (= lambda!457287 lambda!457286)))

(assert (=> d!2282074 (= (inv!91396 ct1!282) (forall!18038 (exprs!8662 ct1!282) lambda!457287))))

(declare-fun bs!1920074 () Bool)

(assert (= bs!1920074 d!2282074))

(declare-fun m!8018274 () Bool)

(assert (=> bs!1920074 m!8018274))

(assert (=> start!718682 d!2282074))

(declare-fun bs!1920075 () Bool)

(declare-fun d!2282076 () Bool)

(assert (= bs!1920075 (and d!2282076 b!7360411)))

(declare-fun lambda!457288 () Int)

(assert (=> bs!1920075 (= lambda!457288 lambda!457280)))

(declare-fun bs!1920076 () Bool)

(assert (= bs!1920076 (and d!2282076 d!2282072)))

(assert (=> bs!1920076 (= lambda!457288 lambda!457286)))

(declare-fun bs!1920077 () Bool)

(assert (= bs!1920077 (and d!2282076 d!2282074)))

(assert (=> bs!1920077 (= lambda!457288 lambda!457287)))

(assert (=> d!2282076 (= (inv!91396 ct2!378) (forall!18038 (exprs!8662 ct2!378) lambda!457288))))

(declare-fun bs!1920078 () Bool)

(assert (= bs!1920078 d!2282076))

(declare-fun m!8018276 () Bool)

(assert (=> bs!1920078 m!8018276))

(assert (=> start!718682 d!2282076))

(declare-fun b!7360497 () Bool)

(declare-fun e!4406901 () (Set Context!16324))

(declare-fun call!674476 () (Set Context!16324))

(declare-fun call!674475 () (Set Context!16324))

(assert (=> b!7360497 (= e!4406901 (set.union call!674476 call!674475))))

(declare-fun bm!674470 () Bool)

(declare-fun call!674478 () (Set Context!16324))

(assert (=> bm!674470 (= call!674478 call!674476)))

(declare-fun bm!674471 () Bool)

(declare-fun call!674477 () List!71718)

(declare-fun call!674480 () List!71718)

(assert (=> bm!674471 (= call!674477 call!674480)))

(declare-fun b!7360498 () Bool)

(declare-fun e!4406897 () (Set Context!16324))

(assert (=> b!7360498 (= e!4406897 (set.union call!674475 call!674478))))

(declare-fun d!2282078 () Bool)

(declare-fun c!1367621 () Bool)

(assert (=> d!2282078 (= c!1367621 (and (is-ElementMatch!19222 r1!2370) (= (c!1367600 r1!2370) c!10362)))))

(declare-fun e!4406899 () (Set Context!16324))

(assert (=> d!2282078 (= (derivationStepZipperDown!3048 r1!2370 ct1!282 c!10362) e!4406899)))

(declare-fun c!1367620 () Bool)

(declare-fun c!1367624 () Bool)

(declare-fun bm!674472 () Bool)

(declare-fun $colon$colon!3214 (List!71718 Regex!19222) List!71718)

(assert (=> bm!674472 (= call!674480 ($colon$colon!3214 (exprs!8662 ct1!282) (ite (or c!1367620 c!1367624) (regTwo!38956 r1!2370) r1!2370)))))

(declare-fun b!7360499 () Bool)

(declare-fun e!4406896 () Bool)

(assert (=> b!7360499 (= c!1367620 e!4406896)))

(declare-fun res!2971512 () Bool)

(assert (=> b!7360499 (=> (not res!2971512) (not e!4406896))))

(assert (=> b!7360499 (= res!2971512 (is-Concat!28067 r1!2370))))

(assert (=> b!7360499 (= e!4406901 e!4406897)))

(declare-fun b!7360500 () Bool)

(assert (=> b!7360500 (= e!4406899 e!4406901)))

(declare-fun c!1367622 () Bool)

(assert (=> b!7360500 (= c!1367622 (is-Union!19222 r1!2370))))

(declare-fun b!7360501 () Bool)

(declare-fun e!4406900 () (Set Context!16324))

(declare-fun call!674479 () (Set Context!16324))

(assert (=> b!7360501 (= e!4406900 call!674479)))

(declare-fun bm!674473 () Bool)

(assert (=> bm!674473 (= call!674476 (derivationStepZipperDown!3048 (ite c!1367622 (regOne!38957 r1!2370) (ite c!1367620 (regTwo!38956 r1!2370) (ite c!1367624 (regOne!38956 r1!2370) (reg!19551 r1!2370)))) (ite (or c!1367622 c!1367620) ct1!282 (Context!16325 call!674477)) c!10362))))

(declare-fun b!7360502 () Bool)

(assert (=> b!7360502 (= e!4406896 (nullable!8309 (regOne!38956 r1!2370)))))

(declare-fun b!7360503 () Bool)

(declare-fun e!4406898 () (Set Context!16324))

(assert (=> b!7360503 (= e!4406898 (as set.empty (Set Context!16324)))))

(declare-fun b!7360504 () Bool)

(assert (=> b!7360504 (= e!4406899 (set.insert ct1!282 (as set.empty (Set Context!16324))))))

(declare-fun b!7360505 () Bool)

(assert (=> b!7360505 (= e!4406898 call!674479)))

(declare-fun b!7360506 () Bool)

(declare-fun c!1367623 () Bool)

(assert (=> b!7360506 (= c!1367623 (is-Star!19222 r1!2370))))

(assert (=> b!7360506 (= e!4406900 e!4406898)))

(declare-fun bm!674474 () Bool)

(assert (=> bm!674474 (= call!674475 (derivationStepZipperDown!3048 (ite c!1367622 (regTwo!38957 r1!2370) (regOne!38956 r1!2370)) (ite c!1367622 ct1!282 (Context!16325 call!674480)) c!10362))))

(declare-fun b!7360507 () Bool)

(assert (=> b!7360507 (= e!4406897 e!4406900)))

(assert (=> b!7360507 (= c!1367624 (is-Concat!28067 r1!2370))))

(declare-fun bm!674475 () Bool)

(assert (=> bm!674475 (= call!674479 call!674478)))

(assert (= (and d!2282078 c!1367621) b!7360504))

(assert (= (and d!2282078 (not c!1367621)) b!7360500))

(assert (= (and b!7360500 c!1367622) b!7360497))

(assert (= (and b!7360500 (not c!1367622)) b!7360499))

(assert (= (and b!7360499 res!2971512) b!7360502))

(assert (= (and b!7360499 c!1367620) b!7360498))

(assert (= (and b!7360499 (not c!1367620)) b!7360507))

(assert (= (and b!7360507 c!1367624) b!7360501))

(assert (= (and b!7360507 (not c!1367624)) b!7360506))

(assert (= (and b!7360506 c!1367623) b!7360505))

(assert (= (and b!7360506 (not c!1367623)) b!7360503))

(assert (= (or b!7360501 b!7360505) bm!674471))

(assert (= (or b!7360501 b!7360505) bm!674475))

(assert (= (or b!7360498 bm!674475) bm!674470))

(assert (= (or b!7360498 bm!674471) bm!674472))

(assert (= (or b!7360497 b!7360498) bm!674474))

(assert (= (or b!7360497 bm!674470) bm!674473))

(declare-fun m!8018280 () Bool)

(assert (=> bm!674473 m!8018280))

(declare-fun m!8018282 () Bool)

(assert (=> b!7360504 m!8018282))

(declare-fun m!8018284 () Bool)

(assert (=> b!7360502 m!8018284))

(declare-fun m!8018286 () Bool)

(assert (=> bm!674472 m!8018286))

(declare-fun m!8018288 () Bool)

(assert (=> bm!674474 m!8018288))

(assert (=> b!7360405 d!2282078))

(declare-fun bs!1920081 () Bool)

(declare-fun d!2282084 () Bool)

(assert (= bs!1920081 (and d!2282084 b!7360411)))

(declare-fun lambda!457292 () Int)

(assert (=> bs!1920081 (= lambda!457292 lambda!457280)))

(declare-fun bs!1920082 () Bool)

(assert (= bs!1920082 (and d!2282084 d!2282072)))

(assert (=> bs!1920082 (= lambda!457292 lambda!457286)))

(declare-fun bs!1920083 () Bool)

(assert (= bs!1920083 (and d!2282084 d!2282074)))

(assert (=> bs!1920083 (= lambda!457292 lambda!457287)))

(declare-fun bs!1920084 () Bool)

(assert (= bs!1920084 (and d!2282084 d!2282076)))

(assert (=> bs!1920084 (= lambda!457292 lambda!457288)))

(assert (=> d!2282084 (= (inv!91396 (Context!16325 (++!17038 (exprs!8662 ct1!282) (exprs!8662 ct2!378)))) (forall!18038 (exprs!8662 (Context!16325 (++!17038 (exprs!8662 ct1!282) (exprs!8662 ct2!378)))) lambda!457292))))

(declare-fun bs!1920085 () Bool)

(assert (= bs!1920085 d!2282084))

(declare-fun m!8018290 () Bool)

(assert (=> bs!1920085 m!8018290))

(assert (=> b!7360411 d!2282084))

(declare-fun b!7360520 () Bool)

(declare-fun e!4406909 () List!71718)

(assert (=> b!7360520 (= e!4406909 (exprs!8662 ct2!378))))

(declare-fun lt!2613763 () List!71718)

(declare-fun b!7360523 () Bool)

(declare-fun e!4406908 () Bool)

(assert (=> b!7360523 (= e!4406908 (or (not (= (exprs!8662 ct2!378) Nil!71594)) (= lt!2613763 (exprs!8662 ct1!282))))))

(declare-fun b!7360522 () Bool)

(declare-fun res!2971520 () Bool)

(assert (=> b!7360522 (=> (not res!2971520) (not e!4406908))))

(declare-fun size!42093 (List!71718) Int)

(assert (=> b!7360522 (= res!2971520 (= (size!42093 lt!2613763) (+ (size!42093 (exprs!8662 ct1!282)) (size!42093 (exprs!8662 ct2!378)))))))

(declare-fun d!2282086 () Bool)

(assert (=> d!2282086 e!4406908))

(declare-fun res!2971519 () Bool)

(assert (=> d!2282086 (=> (not res!2971519) (not e!4406908))))

(declare-fun content!15115 (List!71718) (Set Regex!19222))

(assert (=> d!2282086 (= res!2971519 (= (content!15115 lt!2613763) (set.union (content!15115 (exprs!8662 ct1!282)) (content!15115 (exprs!8662 ct2!378)))))))

(assert (=> d!2282086 (= lt!2613763 e!4406909)))

(declare-fun c!1367628 () Bool)

(assert (=> d!2282086 (= c!1367628 (is-Nil!71594 (exprs!8662 ct1!282)))))

(assert (=> d!2282086 (= (++!17038 (exprs!8662 ct1!282) (exprs!8662 ct2!378)) lt!2613763)))

(declare-fun b!7360521 () Bool)

(assert (=> b!7360521 (= e!4406909 (Cons!71594 (h!78042 (exprs!8662 ct1!282)) (++!17038 (t!386167 (exprs!8662 ct1!282)) (exprs!8662 ct2!378))))))

(assert (= (and d!2282086 c!1367628) b!7360520))

(assert (= (and d!2282086 (not c!1367628)) b!7360521))

(assert (= (and d!2282086 res!2971519) b!7360522))

(assert (= (and b!7360522 res!2971520) b!7360523))

(declare-fun m!8018306 () Bool)

(assert (=> b!7360522 m!8018306))

(declare-fun m!8018308 () Bool)

(assert (=> b!7360522 m!8018308))

(declare-fun m!8018310 () Bool)

(assert (=> b!7360522 m!8018310))

(declare-fun m!8018312 () Bool)

(assert (=> d!2282086 m!8018312))

(declare-fun m!8018314 () Bool)

(assert (=> d!2282086 m!8018314))

(declare-fun m!8018316 () Bool)

(assert (=> d!2282086 m!8018316))

(declare-fun m!8018318 () Bool)

(assert (=> b!7360521 m!8018318))

(assert (=> b!7360411 d!2282086))

(declare-fun d!2282090 () Bool)

(assert (=> d!2282090 (forall!18038 (++!17038 (exprs!8662 ct1!282) (exprs!8662 ct2!378)) lambda!457280)))

(declare-fun lt!2613769 () Unit!165393)

(declare-fun choose!57245 (List!71718 List!71718 Int) Unit!165393)

(assert (=> d!2282090 (= lt!2613769 (choose!57245 (exprs!8662 ct1!282) (exprs!8662 ct2!378) lambda!457280))))

(assert (=> d!2282090 (forall!18038 (exprs!8662 ct1!282) lambda!457280)))

(assert (=> d!2282090 (= (lemmaConcatPreservesForall!1895 (exprs!8662 ct1!282) (exprs!8662 ct2!378) lambda!457280) lt!2613769)))

(declare-fun bs!1920087 () Bool)

(assert (= bs!1920087 d!2282090))

(assert (=> bs!1920087 m!8018242))

(assert (=> bs!1920087 m!8018242))

(declare-fun m!8018326 () Bool)

(assert (=> bs!1920087 m!8018326))

(declare-fun m!8018328 () Bool)

(assert (=> bs!1920087 m!8018328))

(declare-fun m!8018330 () Bool)

(assert (=> bs!1920087 m!8018330))

(assert (=> b!7360411 d!2282090))

(declare-fun b!7360528 () Bool)

(declare-fun e!4406912 () Bool)

(declare-fun tp!2091384 () Bool)

(declare-fun tp!2091385 () Bool)

(assert (=> b!7360528 (= e!4406912 (and tp!2091384 tp!2091385))))

(assert (=> b!7360407 (= tp!2091352 e!4406912)))

(assert (= (and b!7360407 (is-Cons!71594 (exprs!8662 ct1!282))) b!7360528))

(declare-fun b!7360540 () Bool)

(declare-fun e!4406915 () Bool)

(declare-fun tp!2091400 () Bool)

(declare-fun tp!2091399 () Bool)

(assert (=> b!7360540 (= e!4406915 (and tp!2091400 tp!2091399))))

(assert (=> b!7360412 (= tp!2091353 e!4406915)))

(declare-fun b!7360539 () Bool)

(assert (=> b!7360539 (= e!4406915 tp_is_empty!48689)))

(declare-fun b!7360541 () Bool)

(declare-fun tp!2091397 () Bool)

(assert (=> b!7360541 (= e!4406915 tp!2091397)))

(declare-fun b!7360542 () Bool)

(declare-fun tp!2091398 () Bool)

(declare-fun tp!2091396 () Bool)

(assert (=> b!7360542 (= e!4406915 (and tp!2091398 tp!2091396))))

(assert (= (and b!7360412 (is-ElementMatch!19222 (regOne!38957 r1!2370))) b!7360539))

(assert (= (and b!7360412 (is-Concat!28067 (regOne!38957 r1!2370))) b!7360540))

(assert (= (and b!7360412 (is-Star!19222 (regOne!38957 r1!2370))) b!7360541))

(assert (= (and b!7360412 (is-Union!19222 (regOne!38957 r1!2370))) b!7360542))

(declare-fun b!7360544 () Bool)

(declare-fun e!4406916 () Bool)

(declare-fun tp!2091405 () Bool)

(declare-fun tp!2091404 () Bool)

(assert (=> b!7360544 (= e!4406916 (and tp!2091405 tp!2091404))))

(assert (=> b!7360412 (= tp!2091348 e!4406916)))

(declare-fun b!7360543 () Bool)

(assert (=> b!7360543 (= e!4406916 tp_is_empty!48689)))

(declare-fun b!7360545 () Bool)

(declare-fun tp!2091402 () Bool)

(assert (=> b!7360545 (= e!4406916 tp!2091402)))

(declare-fun b!7360546 () Bool)

(declare-fun tp!2091403 () Bool)

(declare-fun tp!2091401 () Bool)

(assert (=> b!7360546 (= e!4406916 (and tp!2091403 tp!2091401))))

(assert (= (and b!7360412 (is-ElementMatch!19222 (regTwo!38957 r1!2370))) b!7360543))

(assert (= (and b!7360412 (is-Concat!28067 (regTwo!38957 r1!2370))) b!7360544))

(assert (= (and b!7360412 (is-Star!19222 (regTwo!38957 r1!2370))) b!7360545))

(assert (= (and b!7360412 (is-Union!19222 (regTwo!38957 r1!2370))) b!7360546))

(declare-fun b!7360547 () Bool)

(declare-fun e!4406917 () Bool)

(declare-fun tp!2091406 () Bool)

(declare-fun tp!2091407 () Bool)

(assert (=> b!7360547 (= e!4406917 (and tp!2091406 tp!2091407))))

(assert (=> b!7360409 (= tp!2091354 e!4406917)))

(assert (= (and b!7360409 (is-Cons!71594 (exprs!8662 ct2!378))) b!7360547))

(declare-fun b!7360549 () Bool)

(declare-fun e!4406918 () Bool)

(declare-fun tp!2091412 () Bool)

(declare-fun tp!2091411 () Bool)

(assert (=> b!7360549 (= e!4406918 (and tp!2091412 tp!2091411))))

(assert (=> b!7360408 (= tp!2091350 e!4406918)))

(declare-fun b!7360548 () Bool)

(assert (=> b!7360548 (= e!4406918 tp_is_empty!48689)))

(declare-fun b!7360550 () Bool)

(declare-fun tp!2091409 () Bool)

(assert (=> b!7360550 (= e!4406918 tp!2091409)))

(declare-fun b!7360551 () Bool)

(declare-fun tp!2091410 () Bool)

(declare-fun tp!2091408 () Bool)

(assert (=> b!7360551 (= e!4406918 (and tp!2091410 tp!2091408))))

(assert (= (and b!7360408 (is-ElementMatch!19222 (reg!19551 r1!2370))) b!7360548))

(assert (= (and b!7360408 (is-Concat!28067 (reg!19551 r1!2370))) b!7360549))

(assert (= (and b!7360408 (is-Star!19222 (reg!19551 r1!2370))) b!7360550))

(assert (= (and b!7360408 (is-Union!19222 (reg!19551 r1!2370))) b!7360551))

(declare-fun b!7360553 () Bool)

(declare-fun e!4406919 () Bool)

(declare-fun tp!2091417 () Bool)

(declare-fun tp!2091416 () Bool)

(assert (=> b!7360553 (= e!4406919 (and tp!2091417 tp!2091416))))

(assert (=> b!7360410 (= tp!2091349 e!4406919)))

(declare-fun b!7360552 () Bool)

(assert (=> b!7360552 (= e!4406919 tp_is_empty!48689)))

(declare-fun b!7360554 () Bool)

(declare-fun tp!2091414 () Bool)

(assert (=> b!7360554 (= e!4406919 tp!2091414)))

(declare-fun b!7360555 () Bool)

(declare-fun tp!2091415 () Bool)

(declare-fun tp!2091413 () Bool)

(assert (=> b!7360555 (= e!4406919 (and tp!2091415 tp!2091413))))

(assert (= (and b!7360410 (is-ElementMatch!19222 (regOne!38956 r1!2370))) b!7360552))

(assert (= (and b!7360410 (is-Concat!28067 (regOne!38956 r1!2370))) b!7360553))

(assert (= (and b!7360410 (is-Star!19222 (regOne!38956 r1!2370))) b!7360554))

(assert (= (and b!7360410 (is-Union!19222 (regOne!38956 r1!2370))) b!7360555))

(declare-fun b!7360557 () Bool)

(declare-fun e!4406920 () Bool)

(declare-fun tp!2091422 () Bool)

(declare-fun tp!2091421 () Bool)

(assert (=> b!7360557 (= e!4406920 (and tp!2091422 tp!2091421))))

(assert (=> b!7360410 (= tp!2091351 e!4406920)))

(declare-fun b!7360556 () Bool)

(assert (=> b!7360556 (= e!4406920 tp_is_empty!48689)))

(declare-fun b!7360558 () Bool)

(declare-fun tp!2091419 () Bool)

(assert (=> b!7360558 (= e!4406920 tp!2091419)))

(declare-fun b!7360559 () Bool)

(declare-fun tp!2091420 () Bool)

(declare-fun tp!2091418 () Bool)

(assert (=> b!7360559 (= e!4406920 (and tp!2091420 tp!2091418))))

(assert (= (and b!7360410 (is-ElementMatch!19222 (regTwo!38956 r1!2370))) b!7360556))

(assert (= (and b!7360410 (is-Concat!28067 (regTwo!38956 r1!2370))) b!7360557))

(assert (= (and b!7360410 (is-Star!19222 (regTwo!38956 r1!2370))) b!7360558))

(assert (= (and b!7360410 (is-Union!19222 (regTwo!38956 r1!2370))) b!7360559))

(declare-fun b!7360560 () Bool)

(declare-fun e!4406921 () Bool)

(declare-fun tp!2091423 () Bool)

(declare-fun tp!2091424 () Bool)

(assert (=> b!7360560 (= e!4406921 (and tp!2091423 tp!2091424))))

(assert (=> b!7360406 (= tp!2091355 e!4406921)))

(assert (= (and b!7360406 (is-Cons!71594 (exprs!8662 cWitness!61))) b!7360560))

(push 1)

(assert (not b!7360560))

(assert (not d!2282072))

(assert (not bm!674472))

(assert (not b!7360521))

(assert (not bm!674457))

(assert (not bm!674474))

(assert (not d!2282076))

(assert (not b!7360522))

(assert (not d!2282084))

(assert (not b!7360544))

(assert (not b!7360550))

(assert (not b!7360464))

(assert (not b!7360557))

(assert tp_is_empty!48689)

(assert (not b!7360546))

(assert (not b!7360547))

(assert (not d!2282086))

(assert (not b!7360559))

(assert (not b!7360558))

(assert (not b!7360502))

(assert (not b!7360554))

(assert (not b!7360555))

(assert (not b!7360540))

(assert (not b!7360541))

(assert (not b!7360553))

(assert (not b!7360545))

(assert (not bm!674473))

(assert (not b!7360542))

(assert (not bm!674455))

(assert (not d!2282090))

(assert (not d!2282074))

(assert (not b!7360528))

(assert (not b!7360551))

(assert (not b!7360549))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

