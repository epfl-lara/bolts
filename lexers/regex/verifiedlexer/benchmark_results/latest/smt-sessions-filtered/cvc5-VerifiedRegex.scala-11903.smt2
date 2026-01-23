; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!667468 () Bool)

(assert start!667468)

(declare-fun b!6955387 () Bool)

(assert (=> b!6955387 true))

(assert (=> b!6955387 true))

(declare-fun bs!1857986 () Bool)

(declare-fun b!6955390 () Bool)

(assert (= bs!1857986 (and b!6955390 b!6955387)))

(declare-fun lambda!396758 () Int)

(declare-fun lambda!396757 () Int)

(assert (=> bs!1857986 (not (= lambda!396758 lambda!396757))))

(assert (=> b!6955390 true))

(assert (=> b!6955390 true))

(declare-fun b!6955382 () Bool)

(declare-fun e!4182532 () Bool)

(declare-fun tp!1917461 () Bool)

(declare-fun tp!1917462 () Bool)

(assert (=> b!6955382 (= e!4182532 (and tp!1917461 tp!1917462))))

(declare-fun b!6955383 () Bool)

(declare-fun e!4182530 () Bool)

(declare-fun lt!2478394 () Bool)

(assert (=> b!6955383 (= e!4182530 lt!2478394)))

(declare-fun b!6955384 () Bool)

(declare-fun tp_is_empty!43329 () Bool)

(assert (=> b!6955384 (= e!4182532 tp_is_empty!43329)))

(declare-fun b!6955385 () Bool)

(declare-fun e!4182529 () Bool)

(declare-fun tp!1917460 () Bool)

(assert (=> b!6955385 (= e!4182529 (and tp_is_empty!43329 tp!1917460))))

(declare-fun res!2837969 () Bool)

(declare-fun e!4182531 () Bool)

(assert (=> start!667468 (=> (not res!2837969) (not e!4182531))))

(declare-datatypes ((C!34374 0))(
  ( (C!34375 (val!26889 Int)) )
))
(declare-datatypes ((Regex!17052 0))(
  ( (ElementMatch!17052 (c!1289866 C!34374)) (Concat!25897 (regOne!34616 Regex!17052) (regTwo!34616 Regex!17052)) (EmptyExpr!17052) (Star!17052 (reg!17381 Regex!17052)) (EmptyLang!17052) (Union!17052 (regOne!34617 Regex!17052) (regTwo!34617 Regex!17052)) )
))
(declare-fun rInner!765 () Regex!17052)

(declare-fun validRegex!8758 (Regex!17052) Bool)

(assert (=> start!667468 (= res!2837969 (validRegex!8758 rInner!765))))

(assert (=> start!667468 e!4182531))

(assert (=> start!667468 e!4182532))

(assert (=> start!667468 e!4182529))

(declare-fun b!6955386 () Bool)

(declare-fun res!2837968 () Bool)

(assert (=> b!6955386 (=> (not res!2837968) (not e!4182531))))

(declare-fun nullable!6865 (Regex!17052) Bool)

(assert (=> b!6955386 (= res!2837968 (not (nullable!6865 rInner!765)))))

(declare-fun res!2837967 () Bool)

(assert (=> b!6955387 (=> (not res!2837967) (not e!4182531))))

(declare-fun Exists!4048 (Int) Bool)

(assert (=> b!6955387 (= res!2837967 (not (Exists!4048 lambda!396757)))))

(declare-fun b!6955388 () Bool)

(assert (=> b!6955388 (= e!4182531 (not e!4182530))))

(declare-fun res!2837965 () Bool)

(assert (=> b!6955388 (=> res!2837965 e!4182530)))

(declare-datatypes ((List!66805 0))(
  ( (Nil!66681) (Cons!66681 (h!73129 C!34374) (t!380548 List!66805)) )
))
(declare-datatypes ((tuple2!67806 0))(
  ( (tuple2!67807 (_1!37206 List!66805) (_2!37206 List!66805)) )
))
(declare-fun lt!2478397 () tuple2!67806)

(declare-fun s!10388 () List!66805)

(declare-fun ++!15081 (List!66805 List!66805) List!66805)

(assert (=> b!6955388 (= res!2837965 (not (= (++!15081 (_1!37206 lt!2478397) (_2!37206 lt!2478397)) s!10388)))))

(declare-fun lt!2478396 () Regex!17052)

(declare-fun matchR!9162 (Regex!17052 List!66805) Bool)

(declare-fun matchRSpec!4077 (Regex!17052 List!66805) Bool)

(assert (=> b!6955388 (= (matchR!9162 lt!2478396 (_2!37206 lt!2478397)) (matchRSpec!4077 lt!2478396 (_2!37206 lt!2478397)))))

(declare-datatypes ((Unit!160772 0))(
  ( (Unit!160773) )
))
(declare-fun lt!2478398 () Unit!160772)

(declare-fun mainMatchTheorem!4071 (Regex!17052 List!66805) Unit!160772)

(assert (=> b!6955388 (= lt!2478398 (mainMatchTheorem!4071 lt!2478396 (_2!37206 lt!2478397)))))

(assert (=> b!6955388 (= lt!2478396 (Star!17052 rInner!765))))

(assert (=> b!6955388 (= lt!2478394 (matchRSpec!4077 rInner!765 (_1!37206 lt!2478397)))))

(assert (=> b!6955388 (= lt!2478394 (matchR!9162 rInner!765 (_1!37206 lt!2478397)))))

(declare-fun lt!2478395 () Unit!160772)

(assert (=> b!6955388 (= lt!2478395 (mainMatchTheorem!4071 rInner!765 (_1!37206 lt!2478397)))))

(declare-fun pickWitness!375 (Int) tuple2!67806)

(assert (=> b!6955388 (= lt!2478397 (pickWitness!375 lambda!396758))))

(declare-fun b!6955389 () Bool)

(declare-fun tp!1917458 () Bool)

(declare-fun tp!1917463 () Bool)

(assert (=> b!6955389 (= e!4182532 (and tp!1917458 tp!1917463))))

(declare-fun res!2837970 () Bool)

(assert (=> b!6955390 (=> (not res!2837970) (not e!4182531))))

(assert (=> b!6955390 (= res!2837970 (Exists!4048 lambda!396758))))

(declare-fun b!6955391 () Bool)

(declare-fun tp!1917459 () Bool)

(assert (=> b!6955391 (= e!4182532 tp!1917459)))

(declare-fun b!6955392 () Bool)

(declare-fun res!2837966 () Bool)

(assert (=> b!6955392 (=> (not res!2837966) (not e!4182531))))

(assert (=> b!6955392 (= res!2837966 (not (Exists!4048 lambda!396757)))))

(assert (= (and start!667468 res!2837969) b!6955386))

(assert (= (and b!6955386 res!2837968) b!6955387))

(assert (= (and b!6955387 res!2837967) b!6955392))

(assert (= (and b!6955392 res!2837966) b!6955390))

(assert (= (and b!6955390 res!2837970) b!6955388))

(assert (= (and b!6955388 (not res!2837965)) b!6955383))

(assert (= (and start!667468 (is-ElementMatch!17052 rInner!765)) b!6955384))

(assert (= (and start!667468 (is-Concat!25897 rInner!765)) b!6955389))

(assert (= (and start!667468 (is-Star!17052 rInner!765)) b!6955391))

(assert (= (and start!667468 (is-Union!17052 rInner!765)) b!6955382))

(assert (= (and start!667468 (is-Cons!66681 s!10388)) b!6955385))

(declare-fun m!7654028 () Bool)

(assert (=> start!667468 m!7654028))

(declare-fun m!7654030 () Bool)

(assert (=> b!6955386 m!7654030))

(declare-fun m!7654032 () Bool)

(assert (=> b!6955390 m!7654032))

(declare-fun m!7654034 () Bool)

(assert (=> b!6955387 m!7654034))

(declare-fun m!7654036 () Bool)

(assert (=> b!6955388 m!7654036))

(declare-fun m!7654038 () Bool)

(assert (=> b!6955388 m!7654038))

(declare-fun m!7654040 () Bool)

(assert (=> b!6955388 m!7654040))

(declare-fun m!7654042 () Bool)

(assert (=> b!6955388 m!7654042))

(declare-fun m!7654044 () Bool)

(assert (=> b!6955388 m!7654044))

(declare-fun m!7654046 () Bool)

(assert (=> b!6955388 m!7654046))

(declare-fun m!7654048 () Bool)

(assert (=> b!6955388 m!7654048))

(declare-fun m!7654050 () Bool)

(assert (=> b!6955388 m!7654050))

(assert (=> b!6955392 m!7654034))

(push 1)

(assert tp_is_empty!43329)

(assert (not b!6955382))

(assert (not b!6955390))

(assert (not b!6955391))

(assert (not b!6955388))

(assert (not b!6955389))

(assert (not b!6955386))

(assert (not b!6955392))

(assert (not b!6955387))

(assert (not start!667468))

(assert (not b!6955385))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2169490 () Bool)

(declare-fun nullableFct!2575 (Regex!17052) Bool)

(assert (=> d!2169490 (= (nullable!6865 rInner!765) (nullableFct!2575 rInner!765))))

(declare-fun bs!1857988 () Bool)

(assert (= bs!1857988 d!2169490))

(declare-fun m!7654076 () Bool)

(assert (=> bs!1857988 m!7654076))

(assert (=> b!6955386 d!2169490))

(declare-fun b!6955472 () Bool)

(declare-fun e!4182572 () Bool)

(declare-fun call!631646 () Bool)

(assert (=> b!6955472 (= e!4182572 call!631646)))

(declare-fun b!6955473 () Bool)

(declare-fun res!2838020 () Bool)

(declare-fun e!4182570 () Bool)

(assert (=> b!6955473 (=> res!2838020 e!4182570)))

(assert (=> b!6955473 (= res!2838020 (not (is-Concat!25897 rInner!765)))))

(declare-fun e!4182569 () Bool)

(assert (=> b!6955473 (= e!4182569 e!4182570)))

(declare-fun bm!631641 () Bool)

(declare-fun c!1289873 () Bool)

(assert (=> bm!631641 (= call!631646 (validRegex!8758 (ite c!1289873 (regTwo!34617 rInner!765) (regOne!34616 rInner!765))))))

(declare-fun b!6955474 () Bool)

(declare-fun res!2838019 () Bool)

(assert (=> b!6955474 (=> (not res!2838019) (not e!4182572))))

(declare-fun call!631648 () Bool)

(assert (=> b!6955474 (= res!2838019 call!631648)))

(assert (=> b!6955474 (= e!4182569 e!4182572)))

(declare-fun b!6955475 () Bool)

(declare-fun e!4182568 () Bool)

(assert (=> b!6955475 (= e!4182568 e!4182569)))

(assert (=> b!6955475 (= c!1289873 (is-Union!17052 rInner!765))))

(declare-fun b!6955476 () Bool)

(declare-fun e!4182567 () Bool)

(assert (=> b!6955476 (= e!4182567 e!4182568)))

(declare-fun c!1289872 () Bool)

(assert (=> b!6955476 (= c!1289872 (is-Star!17052 rInner!765))))

(declare-fun call!631647 () Bool)

(declare-fun bm!631642 () Bool)

(assert (=> bm!631642 (= call!631647 (validRegex!8758 (ite c!1289872 (reg!17381 rInner!765) (ite c!1289873 (regOne!34617 rInner!765) (regTwo!34616 rInner!765)))))))

(declare-fun b!6955478 () Bool)

(declare-fun e!4182573 () Bool)

(assert (=> b!6955478 (= e!4182573 call!631647)))

(declare-fun bm!631643 () Bool)

(assert (=> bm!631643 (= call!631648 call!631647)))

(declare-fun b!6955479 () Bool)

(assert (=> b!6955479 (= e!4182568 e!4182573)))

(declare-fun res!2838021 () Bool)

(assert (=> b!6955479 (= res!2838021 (not (nullable!6865 (reg!17381 rInner!765))))))

(assert (=> b!6955479 (=> (not res!2838021) (not e!4182573))))

(declare-fun b!6955480 () Bool)

(declare-fun e!4182571 () Bool)

(assert (=> b!6955480 (= e!4182571 call!631648)))

(declare-fun b!6955477 () Bool)

(assert (=> b!6955477 (= e!4182570 e!4182571)))

(declare-fun res!2838022 () Bool)

(assert (=> b!6955477 (=> (not res!2838022) (not e!4182571))))

(assert (=> b!6955477 (= res!2838022 call!631646)))

(declare-fun d!2169492 () Bool)

(declare-fun res!2838023 () Bool)

(assert (=> d!2169492 (=> res!2838023 e!4182567)))

(assert (=> d!2169492 (= res!2838023 (is-ElementMatch!17052 rInner!765))))

(assert (=> d!2169492 (= (validRegex!8758 rInner!765) e!4182567)))

(assert (= (and d!2169492 (not res!2838023)) b!6955476))

(assert (= (and b!6955476 c!1289872) b!6955479))

(assert (= (and b!6955476 (not c!1289872)) b!6955475))

(assert (= (and b!6955479 res!2838021) b!6955478))

(assert (= (and b!6955475 c!1289873) b!6955474))

(assert (= (and b!6955475 (not c!1289873)) b!6955473))

(assert (= (and b!6955474 res!2838019) b!6955472))

(assert (= (and b!6955473 (not res!2838020)) b!6955477))

(assert (= (and b!6955477 res!2838022) b!6955480))

(assert (= (or b!6955474 b!6955480) bm!631643))

(assert (= (or b!6955472 b!6955477) bm!631641))

(assert (= (or b!6955478 bm!631643) bm!631642))

(declare-fun m!7654080 () Bool)

(assert (=> bm!631641 m!7654080))

(declare-fun m!7654082 () Bool)

(assert (=> bm!631642 m!7654082))

(declare-fun m!7654084 () Bool)

(assert (=> b!6955479 m!7654084))

(assert (=> start!667468 d!2169492))

(declare-fun d!2169498 () Bool)

(declare-fun choose!51834 (Int) Bool)

(assert (=> d!2169498 (= (Exists!4048 lambda!396758) (choose!51834 lambda!396758))))

(declare-fun bs!1857990 () Bool)

(assert (= bs!1857990 d!2169498))

(declare-fun m!7654086 () Bool)

(assert (=> bs!1857990 m!7654086))

(assert (=> b!6955390 d!2169498))

(declare-fun bs!1857993 () Bool)

(declare-fun b!6955523 () Bool)

(assert (= bs!1857993 (and b!6955523 b!6955387)))

(declare-fun lambda!396773 () Int)

(assert (=> bs!1857993 (not (= lambda!396773 lambda!396757))))

(declare-fun bs!1857994 () Bool)

(assert (= bs!1857994 (and b!6955523 b!6955390)))

(assert (=> bs!1857994 (= (and (= (_1!37206 lt!2478397) s!10388) (= (reg!17381 rInner!765) rInner!765) (= rInner!765 (Star!17052 rInner!765))) (= lambda!396773 lambda!396758))))

(assert (=> b!6955523 true))

(assert (=> b!6955523 true))

(declare-fun bs!1857995 () Bool)

(declare-fun b!6955515 () Bool)

(assert (= bs!1857995 (and b!6955515 b!6955387)))

(declare-fun lambda!396774 () Int)

(assert (=> bs!1857995 (not (= lambda!396774 lambda!396757))))

(declare-fun bs!1857996 () Bool)

(assert (= bs!1857996 (and b!6955515 b!6955390)))

(assert (=> bs!1857996 (not (= lambda!396774 lambda!396758))))

(declare-fun bs!1857997 () Bool)

(assert (= bs!1857997 (and b!6955515 b!6955523)))

(assert (=> bs!1857997 (not (= lambda!396774 lambda!396773))))

(assert (=> b!6955515 true))

(assert (=> b!6955515 true))

(declare-fun b!6955513 () Bool)

(declare-fun e!4182595 () Bool)

(declare-fun e!4182594 () Bool)

(assert (=> b!6955513 (= e!4182595 e!4182594)))

(declare-fun c!1289884 () Bool)

(assert (=> b!6955513 (= c!1289884 (is-Star!17052 rInner!765))))

(declare-fun b!6955514 () Bool)

(declare-fun e!4182592 () Bool)

(assert (=> b!6955514 (= e!4182592 (matchRSpec!4077 (regTwo!34617 rInner!765) (_1!37206 lt!2478397)))))

(declare-fun bm!631648 () Bool)

(declare-fun call!631654 () Bool)

(declare-fun isEmpty!38917 (List!66805) Bool)

(assert (=> bm!631648 (= call!631654 (isEmpty!38917 (_1!37206 lt!2478397)))))

(declare-fun d!2169500 () Bool)

(declare-fun c!1289882 () Bool)

(assert (=> d!2169500 (= c!1289882 (is-EmptyExpr!17052 rInner!765))))

(declare-fun e!4182596 () Bool)

(assert (=> d!2169500 (= (matchRSpec!4077 rInner!765 (_1!37206 lt!2478397)) e!4182596)))

(declare-fun call!631653 () Bool)

(assert (=> b!6955515 (= e!4182594 call!631653)))

(declare-fun b!6955516 () Bool)

(assert (=> b!6955516 (= e!4182596 call!631654)))

(declare-fun b!6955517 () Bool)

(assert (=> b!6955517 (= e!4182595 e!4182592)))

(declare-fun res!2838042 () Bool)

(assert (=> b!6955517 (= res!2838042 (matchRSpec!4077 (regOne!34617 rInner!765) (_1!37206 lt!2478397)))))

(assert (=> b!6955517 (=> res!2838042 e!4182592)))

(declare-fun b!6955518 () Bool)

(declare-fun c!1289885 () Bool)

(assert (=> b!6955518 (= c!1289885 (is-ElementMatch!17052 rInner!765))))

(declare-fun e!4182593 () Bool)

(declare-fun e!4182598 () Bool)

(assert (=> b!6955518 (= e!4182593 e!4182598)))

(declare-fun b!6955519 () Bool)

(declare-fun res!2838041 () Bool)

(declare-fun e!4182597 () Bool)

(assert (=> b!6955519 (=> res!2838041 e!4182597)))

(assert (=> b!6955519 (= res!2838041 call!631654)))

(assert (=> b!6955519 (= e!4182594 e!4182597)))

(declare-fun b!6955520 () Bool)

(assert (=> b!6955520 (= e!4182598 (= (_1!37206 lt!2478397) (Cons!66681 (c!1289866 rInner!765) Nil!66681)))))

(declare-fun b!6955521 () Bool)

(assert (=> b!6955521 (= e!4182596 e!4182593)))

(declare-fun res!2838040 () Bool)

(assert (=> b!6955521 (= res!2838040 (not (is-EmptyLang!17052 rInner!765)))))

(assert (=> b!6955521 (=> (not res!2838040) (not e!4182593))))

(declare-fun b!6955522 () Bool)

(declare-fun c!1289883 () Bool)

(assert (=> b!6955522 (= c!1289883 (is-Union!17052 rInner!765))))

(assert (=> b!6955522 (= e!4182598 e!4182595)))

(declare-fun bm!631649 () Bool)

(assert (=> bm!631649 (= call!631653 (Exists!4048 (ite c!1289884 lambda!396773 lambda!396774)))))

(assert (=> b!6955523 (= e!4182597 call!631653)))

(assert (= (and d!2169500 c!1289882) b!6955516))

(assert (= (and d!2169500 (not c!1289882)) b!6955521))

(assert (= (and b!6955521 res!2838040) b!6955518))

(assert (= (and b!6955518 c!1289885) b!6955520))

(assert (= (and b!6955518 (not c!1289885)) b!6955522))

(assert (= (and b!6955522 c!1289883) b!6955517))

(assert (= (and b!6955522 (not c!1289883)) b!6955513))

(assert (= (and b!6955517 (not res!2838042)) b!6955514))

(assert (= (and b!6955513 c!1289884) b!6955519))

(assert (= (and b!6955513 (not c!1289884)) b!6955515))

(assert (= (and b!6955519 (not res!2838041)) b!6955523))

(assert (= (or b!6955523 b!6955515) bm!631649))

(assert (= (or b!6955516 b!6955519) bm!631648))

(declare-fun m!7654092 () Bool)

(assert (=> b!6955514 m!7654092))

(declare-fun m!7654094 () Bool)

(assert (=> bm!631648 m!7654094))

(declare-fun m!7654096 () Bool)

(assert (=> b!6955517 m!7654096))

(declare-fun m!7654098 () Bool)

(assert (=> bm!631649 m!7654098))

(assert (=> b!6955388 d!2169500))

(declare-fun b!6955580 () Bool)

(declare-fun e!4182635 () Bool)

(declare-fun head!13946 (List!66805) C!34374)

(assert (=> b!6955580 (= e!4182635 (= (head!13946 (_2!37206 lt!2478397)) (c!1289866 lt!2478396)))))

(declare-fun b!6955581 () Bool)

(declare-fun e!4182630 () Bool)

(declare-fun e!4182634 () Bool)

(assert (=> b!6955581 (= e!4182630 e!4182634)))

(declare-fun c!1289902 () Bool)

(assert (=> b!6955581 (= c!1289902 (is-EmptyLang!17052 lt!2478396))))

(declare-fun b!6955582 () Bool)

(declare-fun res!2838071 () Bool)

(declare-fun e!4182633 () Bool)

(assert (=> b!6955582 (=> res!2838071 e!4182633)))

(assert (=> b!6955582 (= res!2838071 (not (is-ElementMatch!17052 lt!2478396)))))

(assert (=> b!6955582 (= e!4182634 e!4182633)))

(declare-fun b!6955583 () Bool)

(declare-fun e!4182631 () Bool)

(assert (=> b!6955583 (= e!4182633 e!4182631)))

(declare-fun res!2838076 () Bool)

(assert (=> b!6955583 (=> (not res!2838076) (not e!4182631))))

(declare-fun lt!2478419 () Bool)

(assert (=> b!6955583 (= res!2838076 (not lt!2478419))))

(declare-fun b!6955584 () Bool)

(assert (=> b!6955584 (= e!4182634 (not lt!2478419))))

(declare-fun b!6955585 () Bool)

(declare-fun res!2838073 () Bool)

(assert (=> b!6955585 (=> (not res!2838073) (not e!4182635))))

(declare-fun tail!12998 (List!66805) List!66805)

(assert (=> b!6955585 (= res!2838073 (isEmpty!38917 (tail!12998 (_2!37206 lt!2478397))))))

(declare-fun b!6955586 () Bool)

(declare-fun e!4182632 () Bool)

(assert (=> b!6955586 (= e!4182631 e!4182632)))

(declare-fun res!2838075 () Bool)

(assert (=> b!6955586 (=> res!2838075 e!4182632)))

(declare-fun call!631657 () Bool)

(assert (=> b!6955586 (= res!2838075 call!631657)))

(declare-fun b!6955587 () Bool)

(declare-fun res!2838077 () Bool)

(assert (=> b!6955587 (=> (not res!2838077) (not e!4182635))))

(assert (=> b!6955587 (= res!2838077 (not call!631657))))

(declare-fun b!6955588 () Bool)

(assert (=> b!6955588 (= e!4182632 (not (= (head!13946 (_2!37206 lt!2478397)) (c!1289866 lt!2478396))))))

(declare-fun b!6955589 () Bool)

(declare-fun res!2838074 () Bool)

(assert (=> b!6955589 (=> res!2838074 e!4182632)))

(assert (=> b!6955589 (= res!2838074 (not (isEmpty!38917 (tail!12998 (_2!37206 lt!2478397)))))))

(declare-fun b!6955590 () Bool)

(declare-fun e!4182629 () Bool)

(declare-fun derivativeStep!5493 (Regex!17052 C!34374) Regex!17052)

(assert (=> b!6955590 (= e!4182629 (matchR!9162 (derivativeStep!5493 lt!2478396 (head!13946 (_2!37206 lt!2478397))) (tail!12998 (_2!37206 lt!2478397))))))

(declare-fun b!6955591 () Bool)

(assert (=> b!6955591 (= e!4182630 (= lt!2478419 call!631657))))

(declare-fun b!6955592 () Bool)

(declare-fun res!2838072 () Bool)

(assert (=> b!6955592 (=> res!2838072 e!4182633)))

(assert (=> b!6955592 (= res!2838072 e!4182635)))

(declare-fun res!2838078 () Bool)

(assert (=> b!6955592 (=> (not res!2838078) (not e!4182635))))

(assert (=> b!6955592 (= res!2838078 lt!2478419)))

(declare-fun b!6955593 () Bool)

(assert (=> b!6955593 (= e!4182629 (nullable!6865 lt!2478396))))

(declare-fun bm!631652 () Bool)

(assert (=> bm!631652 (= call!631657 (isEmpty!38917 (_2!37206 lt!2478397)))))

(declare-fun d!2169506 () Bool)

(assert (=> d!2169506 e!4182630))

(declare-fun c!1289900 () Bool)

(assert (=> d!2169506 (= c!1289900 (is-EmptyExpr!17052 lt!2478396))))

(assert (=> d!2169506 (= lt!2478419 e!4182629)))

(declare-fun c!1289901 () Bool)

(assert (=> d!2169506 (= c!1289901 (isEmpty!38917 (_2!37206 lt!2478397)))))

(assert (=> d!2169506 (validRegex!8758 lt!2478396)))

(assert (=> d!2169506 (= (matchR!9162 lt!2478396 (_2!37206 lt!2478397)) lt!2478419)))

(assert (= (and d!2169506 c!1289901) b!6955593))

(assert (= (and d!2169506 (not c!1289901)) b!6955590))

(assert (= (and d!2169506 c!1289900) b!6955591))

(assert (= (and d!2169506 (not c!1289900)) b!6955581))

(assert (= (and b!6955581 c!1289902) b!6955584))

(assert (= (and b!6955581 (not c!1289902)) b!6955582))

(assert (= (and b!6955582 (not res!2838071)) b!6955592))

(assert (= (and b!6955592 res!2838078) b!6955587))

(assert (= (and b!6955587 res!2838077) b!6955585))

(assert (= (and b!6955585 res!2838073) b!6955580))

(assert (= (and b!6955592 (not res!2838072)) b!6955583))

(assert (= (and b!6955583 res!2838076) b!6955586))

(assert (= (and b!6955586 (not res!2838075)) b!6955589))

(assert (= (and b!6955589 (not res!2838074)) b!6955588))

(assert (= (or b!6955591 b!6955586 b!6955587) bm!631652))

(declare-fun m!7654100 () Bool)

(assert (=> b!6955593 m!7654100))

(declare-fun m!7654102 () Bool)

(assert (=> b!6955580 m!7654102))

(assert (=> b!6955588 m!7654102))

(declare-fun m!7654104 () Bool)

(assert (=> bm!631652 m!7654104))

(assert (=> b!6955590 m!7654102))

(assert (=> b!6955590 m!7654102))

(declare-fun m!7654106 () Bool)

(assert (=> b!6955590 m!7654106))

(declare-fun m!7654108 () Bool)

(assert (=> b!6955590 m!7654108))

(assert (=> b!6955590 m!7654106))

(assert (=> b!6955590 m!7654108))

(declare-fun m!7654110 () Bool)

(assert (=> b!6955590 m!7654110))

(assert (=> b!6955585 m!7654108))

(assert (=> b!6955585 m!7654108))

(declare-fun m!7654112 () Bool)

(assert (=> b!6955585 m!7654112))

(assert (=> d!2169506 m!7654104))

(declare-fun m!7654114 () Bool)

(assert (=> d!2169506 m!7654114))

(assert (=> b!6955589 m!7654108))

(assert (=> b!6955589 m!7654108))

(assert (=> b!6955589 m!7654112))

(assert (=> b!6955388 d!2169506))

(declare-fun d!2169508 () Bool)

(declare-fun lt!2478422 () tuple2!67806)

(declare-fun dynLambda!26592 (Int tuple2!67806) Bool)

(assert (=> d!2169508 (dynLambda!26592 lambda!396758 lt!2478422)))

(declare-fun choose!51835 (Int) tuple2!67806)

(assert (=> d!2169508 (= lt!2478422 (choose!51835 lambda!396758))))

(assert (=> d!2169508 (Exists!4048 lambda!396758)))

(assert (=> d!2169508 (= (pickWitness!375 lambda!396758) lt!2478422)))

(declare-fun b_lambda!260449 () Bool)

(assert (=> (not b_lambda!260449) (not d!2169508)))

(declare-fun bs!1857998 () Bool)

(assert (= bs!1857998 d!2169508))

(declare-fun m!7654116 () Bool)

(assert (=> bs!1857998 m!7654116))

(declare-fun m!7654118 () Bool)

(assert (=> bs!1857998 m!7654118))

(assert (=> bs!1857998 m!7654032))

(assert (=> b!6955388 d!2169508))

(declare-fun b!6955594 () Bool)

(declare-fun e!4182642 () Bool)

(assert (=> b!6955594 (= e!4182642 (= (head!13946 (_1!37206 lt!2478397)) (c!1289866 rInner!765)))))

(declare-fun b!6955595 () Bool)

(declare-fun e!4182637 () Bool)

(declare-fun e!4182641 () Bool)

(assert (=> b!6955595 (= e!4182637 e!4182641)))

(declare-fun c!1289905 () Bool)

(assert (=> b!6955595 (= c!1289905 (is-EmptyLang!17052 rInner!765))))

(declare-fun b!6955596 () Bool)

(declare-fun res!2838079 () Bool)

(declare-fun e!4182640 () Bool)

(assert (=> b!6955596 (=> res!2838079 e!4182640)))

(assert (=> b!6955596 (= res!2838079 (not (is-ElementMatch!17052 rInner!765)))))

(assert (=> b!6955596 (= e!4182641 e!4182640)))

(declare-fun b!6955597 () Bool)

(declare-fun e!4182638 () Bool)

(assert (=> b!6955597 (= e!4182640 e!4182638)))

(declare-fun res!2838084 () Bool)

(assert (=> b!6955597 (=> (not res!2838084) (not e!4182638))))

(declare-fun lt!2478423 () Bool)

(assert (=> b!6955597 (= res!2838084 (not lt!2478423))))

(declare-fun b!6955598 () Bool)

(assert (=> b!6955598 (= e!4182641 (not lt!2478423))))

(declare-fun b!6955599 () Bool)

(declare-fun res!2838081 () Bool)

(assert (=> b!6955599 (=> (not res!2838081) (not e!4182642))))

(assert (=> b!6955599 (= res!2838081 (isEmpty!38917 (tail!12998 (_1!37206 lt!2478397))))))

(declare-fun b!6955600 () Bool)

(declare-fun e!4182639 () Bool)

(assert (=> b!6955600 (= e!4182638 e!4182639)))

(declare-fun res!2838083 () Bool)

(assert (=> b!6955600 (=> res!2838083 e!4182639)))

(declare-fun call!631658 () Bool)

(assert (=> b!6955600 (= res!2838083 call!631658)))

(declare-fun b!6955601 () Bool)

(declare-fun res!2838085 () Bool)

(assert (=> b!6955601 (=> (not res!2838085) (not e!4182642))))

(assert (=> b!6955601 (= res!2838085 (not call!631658))))

(declare-fun b!6955602 () Bool)

(assert (=> b!6955602 (= e!4182639 (not (= (head!13946 (_1!37206 lt!2478397)) (c!1289866 rInner!765))))))

(declare-fun b!6955603 () Bool)

(declare-fun res!2838082 () Bool)

(assert (=> b!6955603 (=> res!2838082 e!4182639)))

(assert (=> b!6955603 (= res!2838082 (not (isEmpty!38917 (tail!12998 (_1!37206 lt!2478397)))))))

(declare-fun b!6955604 () Bool)

(declare-fun e!4182636 () Bool)

(assert (=> b!6955604 (= e!4182636 (matchR!9162 (derivativeStep!5493 rInner!765 (head!13946 (_1!37206 lt!2478397))) (tail!12998 (_1!37206 lt!2478397))))))

(declare-fun b!6955605 () Bool)

(assert (=> b!6955605 (= e!4182637 (= lt!2478423 call!631658))))

(declare-fun b!6955606 () Bool)

(declare-fun res!2838080 () Bool)

(assert (=> b!6955606 (=> res!2838080 e!4182640)))

(assert (=> b!6955606 (= res!2838080 e!4182642)))

(declare-fun res!2838086 () Bool)

(assert (=> b!6955606 (=> (not res!2838086) (not e!4182642))))

(assert (=> b!6955606 (= res!2838086 lt!2478423)))

(declare-fun b!6955607 () Bool)

(assert (=> b!6955607 (= e!4182636 (nullable!6865 rInner!765))))

(declare-fun bm!631653 () Bool)

(assert (=> bm!631653 (= call!631658 (isEmpty!38917 (_1!37206 lt!2478397)))))

(declare-fun d!2169510 () Bool)

(assert (=> d!2169510 e!4182637))

(declare-fun c!1289903 () Bool)

(assert (=> d!2169510 (= c!1289903 (is-EmptyExpr!17052 rInner!765))))

(assert (=> d!2169510 (= lt!2478423 e!4182636)))

(declare-fun c!1289904 () Bool)

(assert (=> d!2169510 (= c!1289904 (isEmpty!38917 (_1!37206 lt!2478397)))))

(assert (=> d!2169510 (validRegex!8758 rInner!765)))

(assert (=> d!2169510 (= (matchR!9162 rInner!765 (_1!37206 lt!2478397)) lt!2478423)))

(assert (= (and d!2169510 c!1289904) b!6955607))

(assert (= (and d!2169510 (not c!1289904)) b!6955604))

(assert (= (and d!2169510 c!1289903) b!6955605))

(assert (= (and d!2169510 (not c!1289903)) b!6955595))

(assert (= (and b!6955595 c!1289905) b!6955598))

(assert (= (and b!6955595 (not c!1289905)) b!6955596))

(assert (= (and b!6955596 (not res!2838079)) b!6955606))

(assert (= (and b!6955606 res!2838086) b!6955601))

(assert (= (and b!6955601 res!2838085) b!6955599))

(assert (= (and b!6955599 res!2838081) b!6955594))

(assert (= (and b!6955606 (not res!2838080)) b!6955597))

(assert (= (and b!6955597 res!2838084) b!6955600))

(assert (= (and b!6955600 (not res!2838083)) b!6955603))

(assert (= (and b!6955603 (not res!2838082)) b!6955602))

(assert (= (or b!6955605 b!6955600 b!6955601) bm!631653))

(assert (=> b!6955607 m!7654030))

(declare-fun m!7654120 () Bool)

(assert (=> b!6955594 m!7654120))

(assert (=> b!6955602 m!7654120))

(assert (=> bm!631653 m!7654094))

(assert (=> b!6955604 m!7654120))

(assert (=> b!6955604 m!7654120))

(declare-fun m!7654122 () Bool)

(assert (=> b!6955604 m!7654122))

(declare-fun m!7654124 () Bool)

(assert (=> b!6955604 m!7654124))

(assert (=> b!6955604 m!7654122))

(assert (=> b!6955604 m!7654124))

(declare-fun m!7654126 () Bool)

(assert (=> b!6955604 m!7654126))

(assert (=> b!6955599 m!7654124))

(assert (=> b!6955599 m!7654124))

(declare-fun m!7654128 () Bool)

(assert (=> b!6955599 m!7654128))

(assert (=> d!2169510 m!7654094))

(assert (=> d!2169510 m!7654028))

(assert (=> b!6955603 m!7654124))

(assert (=> b!6955603 m!7654124))

(assert (=> b!6955603 m!7654128))

(assert (=> b!6955388 d!2169510))

(declare-fun b!6955622 () Bool)

(declare-fun res!2838096 () Bool)

(declare-fun e!4182650 () Bool)

(assert (=> b!6955622 (=> (not res!2838096) (not e!4182650))))

(declare-fun lt!2478426 () List!66805)

(declare-fun size!40844 (List!66805) Int)

(assert (=> b!6955622 (= res!2838096 (= (size!40844 lt!2478426) (+ (size!40844 (_1!37206 lt!2478397)) (size!40844 (_2!37206 lt!2478397)))))))

(declare-fun d!2169512 () Bool)

(assert (=> d!2169512 e!4182650))

(declare-fun res!2838095 () Bool)

(assert (=> d!2169512 (=> (not res!2838095) (not e!4182650))))

(declare-fun content!13147 (List!66805) (Set C!34374))

(assert (=> d!2169512 (= res!2838095 (= (content!13147 lt!2478426) (set.union (content!13147 (_1!37206 lt!2478397)) (content!13147 (_2!37206 lt!2478397)))))))

(declare-fun e!4182649 () List!66805)

(assert (=> d!2169512 (= lt!2478426 e!4182649)))

(declare-fun c!1289908 () Bool)

(assert (=> d!2169512 (= c!1289908 (is-Nil!66681 (_1!37206 lt!2478397)))))

(assert (=> d!2169512 (= (++!15081 (_1!37206 lt!2478397) (_2!37206 lt!2478397)) lt!2478426)))

(declare-fun b!6955623 () Bool)

(assert (=> b!6955623 (= e!4182650 (or (not (= (_2!37206 lt!2478397) Nil!66681)) (= lt!2478426 (_1!37206 lt!2478397))))))

(declare-fun b!6955621 () Bool)

(assert (=> b!6955621 (= e!4182649 (Cons!66681 (h!73129 (_1!37206 lt!2478397)) (++!15081 (t!380548 (_1!37206 lt!2478397)) (_2!37206 lt!2478397))))))

(declare-fun b!6955620 () Bool)

(assert (=> b!6955620 (= e!4182649 (_2!37206 lt!2478397))))

(assert (= (and d!2169512 c!1289908) b!6955620))

(assert (= (and d!2169512 (not c!1289908)) b!6955621))

(assert (= (and d!2169512 res!2838095) b!6955622))

(assert (= (and b!6955622 res!2838096) b!6955623))

(declare-fun m!7654130 () Bool)

(assert (=> b!6955622 m!7654130))

(declare-fun m!7654132 () Bool)

(assert (=> b!6955622 m!7654132))

(declare-fun m!7654134 () Bool)

(assert (=> b!6955622 m!7654134))

(declare-fun m!7654136 () Bool)

(assert (=> d!2169512 m!7654136))

(declare-fun m!7654138 () Bool)

(assert (=> d!2169512 m!7654138))

(declare-fun m!7654140 () Bool)

(assert (=> d!2169512 m!7654140))

(declare-fun m!7654142 () Bool)

(assert (=> b!6955621 m!7654142))

(assert (=> b!6955388 d!2169512))

(declare-fun d!2169514 () Bool)

(assert (=> d!2169514 (= (matchR!9162 rInner!765 (_1!37206 lt!2478397)) (matchRSpec!4077 rInner!765 (_1!37206 lt!2478397)))))

(declare-fun lt!2478429 () Unit!160772)

(declare-fun choose!51836 (Regex!17052 List!66805) Unit!160772)

(assert (=> d!2169514 (= lt!2478429 (choose!51836 rInner!765 (_1!37206 lt!2478397)))))

(assert (=> d!2169514 (validRegex!8758 rInner!765)))

(assert (=> d!2169514 (= (mainMatchTheorem!4071 rInner!765 (_1!37206 lt!2478397)) lt!2478429)))

(declare-fun bs!1857999 () Bool)

(assert (= bs!1857999 d!2169514))

(assert (=> bs!1857999 m!7654050))

(assert (=> bs!1857999 m!7654046))

(declare-fun m!7654144 () Bool)

(assert (=> bs!1857999 m!7654144))

(assert (=> bs!1857999 m!7654028))

(assert (=> b!6955388 d!2169514))

(declare-fun bs!1858000 () Bool)

(declare-fun b!6955634 () Bool)

(assert (= bs!1858000 (and b!6955634 b!6955387)))

(declare-fun lambda!396779 () Int)

(assert (=> bs!1858000 (not (= lambda!396779 lambda!396757))))

(declare-fun bs!1858001 () Bool)

(assert (= bs!1858001 (and b!6955634 b!6955390)))

(assert (=> bs!1858001 (= (and (= (_2!37206 lt!2478397) s!10388) (= (reg!17381 lt!2478396) rInner!765) (= lt!2478396 (Star!17052 rInner!765))) (= lambda!396779 lambda!396758))))

(declare-fun bs!1858002 () Bool)

(assert (= bs!1858002 (and b!6955634 b!6955523)))

(assert (=> bs!1858002 (= (and (= (_2!37206 lt!2478397) (_1!37206 lt!2478397)) (= (reg!17381 lt!2478396) (reg!17381 rInner!765)) (= lt!2478396 rInner!765)) (= lambda!396779 lambda!396773))))

(declare-fun bs!1858003 () Bool)

(assert (= bs!1858003 (and b!6955634 b!6955515)))

(assert (=> bs!1858003 (not (= lambda!396779 lambda!396774))))

(assert (=> b!6955634 true))

(assert (=> b!6955634 true))

(declare-fun bs!1858004 () Bool)

(declare-fun b!6955626 () Bool)

(assert (= bs!1858004 (and b!6955626 b!6955515)))

(declare-fun lambda!396780 () Int)

(assert (=> bs!1858004 (= (and (= (_2!37206 lt!2478397) (_1!37206 lt!2478397)) (= (regOne!34616 lt!2478396) (regOne!34616 rInner!765)) (= (regTwo!34616 lt!2478396) (regTwo!34616 rInner!765))) (= lambda!396780 lambda!396774))))

(declare-fun bs!1858005 () Bool)

(assert (= bs!1858005 (and b!6955626 b!6955387)))

(assert (=> bs!1858005 (not (= lambda!396780 lambda!396757))))

(declare-fun bs!1858006 () Bool)

(assert (= bs!1858006 (and b!6955626 b!6955390)))

(assert (=> bs!1858006 (not (= lambda!396780 lambda!396758))))

(declare-fun bs!1858007 () Bool)

(assert (= bs!1858007 (and b!6955626 b!6955634)))

(assert (=> bs!1858007 (not (= lambda!396780 lambda!396779))))

(declare-fun bs!1858008 () Bool)

(assert (= bs!1858008 (and b!6955626 b!6955523)))

(assert (=> bs!1858008 (not (= lambda!396780 lambda!396773))))

(assert (=> b!6955626 true))

(assert (=> b!6955626 true))

(declare-fun b!6955624 () Bool)

(declare-fun e!4182654 () Bool)

(declare-fun e!4182653 () Bool)

(assert (=> b!6955624 (= e!4182654 e!4182653)))

(declare-fun c!1289911 () Bool)

(assert (=> b!6955624 (= c!1289911 (is-Star!17052 lt!2478396))))

(declare-fun b!6955625 () Bool)

(declare-fun e!4182651 () Bool)

(assert (=> b!6955625 (= e!4182651 (matchRSpec!4077 (regTwo!34617 lt!2478396) (_2!37206 lt!2478397)))))

(declare-fun bm!631658 () Bool)

(declare-fun call!631664 () Bool)

(assert (=> bm!631658 (= call!631664 (isEmpty!38917 (_2!37206 lt!2478397)))))

(declare-fun d!2169516 () Bool)

(declare-fun c!1289909 () Bool)

(assert (=> d!2169516 (= c!1289909 (is-EmptyExpr!17052 lt!2478396))))

(declare-fun e!4182655 () Bool)

(assert (=> d!2169516 (= (matchRSpec!4077 lt!2478396 (_2!37206 lt!2478397)) e!4182655)))

(declare-fun call!631663 () Bool)

(assert (=> b!6955626 (= e!4182653 call!631663)))

(declare-fun b!6955627 () Bool)

(assert (=> b!6955627 (= e!4182655 call!631664)))

(declare-fun b!6955628 () Bool)

(assert (=> b!6955628 (= e!4182654 e!4182651)))

(declare-fun res!2838099 () Bool)

(assert (=> b!6955628 (= res!2838099 (matchRSpec!4077 (regOne!34617 lt!2478396) (_2!37206 lt!2478397)))))

(assert (=> b!6955628 (=> res!2838099 e!4182651)))

(declare-fun b!6955629 () Bool)

(declare-fun c!1289912 () Bool)

(assert (=> b!6955629 (= c!1289912 (is-ElementMatch!17052 lt!2478396))))

(declare-fun e!4182652 () Bool)

(declare-fun e!4182657 () Bool)

(assert (=> b!6955629 (= e!4182652 e!4182657)))

(declare-fun b!6955630 () Bool)

(declare-fun res!2838098 () Bool)

(declare-fun e!4182656 () Bool)

(assert (=> b!6955630 (=> res!2838098 e!4182656)))

(assert (=> b!6955630 (= res!2838098 call!631664)))

(assert (=> b!6955630 (= e!4182653 e!4182656)))

(declare-fun b!6955631 () Bool)

(assert (=> b!6955631 (= e!4182657 (= (_2!37206 lt!2478397) (Cons!66681 (c!1289866 lt!2478396) Nil!66681)))))

(declare-fun b!6955632 () Bool)

(assert (=> b!6955632 (= e!4182655 e!4182652)))

(declare-fun res!2838097 () Bool)

(assert (=> b!6955632 (= res!2838097 (not (is-EmptyLang!17052 lt!2478396)))))

(assert (=> b!6955632 (=> (not res!2838097) (not e!4182652))))

(declare-fun b!6955633 () Bool)

(declare-fun c!1289910 () Bool)

(assert (=> b!6955633 (= c!1289910 (is-Union!17052 lt!2478396))))

(assert (=> b!6955633 (= e!4182657 e!4182654)))

(declare-fun bm!631659 () Bool)

(assert (=> bm!631659 (= call!631663 (Exists!4048 (ite c!1289911 lambda!396779 lambda!396780)))))

(assert (=> b!6955634 (= e!4182656 call!631663)))

(assert (= (and d!2169516 c!1289909) b!6955627))

(assert (= (and d!2169516 (not c!1289909)) b!6955632))

(assert (= (and b!6955632 res!2838097) b!6955629))

(assert (= (and b!6955629 c!1289912) b!6955631))

(assert (= (and b!6955629 (not c!1289912)) b!6955633))

(assert (= (and b!6955633 c!1289910) b!6955628))

(assert (= (and b!6955633 (not c!1289910)) b!6955624))

(assert (= (and b!6955628 (not res!2838099)) b!6955625))

(assert (= (and b!6955624 c!1289911) b!6955630))

(assert (= (and b!6955624 (not c!1289911)) b!6955626))

(assert (= (and b!6955630 (not res!2838098)) b!6955634))

(assert (= (or b!6955634 b!6955626) bm!631659))

(assert (= (or b!6955627 b!6955630) bm!631658))

(declare-fun m!7654146 () Bool)

(assert (=> b!6955625 m!7654146))

(assert (=> bm!631658 m!7654104))

(declare-fun m!7654148 () Bool)

(assert (=> b!6955628 m!7654148))

(declare-fun m!7654150 () Bool)

(assert (=> bm!631659 m!7654150))

(assert (=> b!6955388 d!2169516))

(declare-fun d!2169518 () Bool)

(assert (=> d!2169518 (= (matchR!9162 lt!2478396 (_2!37206 lt!2478397)) (matchRSpec!4077 lt!2478396 (_2!37206 lt!2478397)))))

(declare-fun lt!2478430 () Unit!160772)

(assert (=> d!2169518 (= lt!2478430 (choose!51836 lt!2478396 (_2!37206 lt!2478397)))))

(assert (=> d!2169518 (validRegex!8758 lt!2478396)))

(assert (=> d!2169518 (= (mainMatchTheorem!4071 lt!2478396 (_2!37206 lt!2478397)) lt!2478430)))

(declare-fun bs!1858009 () Bool)

(assert (= bs!1858009 d!2169518))

(assert (=> bs!1858009 m!7654040))

(assert (=> bs!1858009 m!7654048))

(declare-fun m!7654152 () Bool)

(assert (=> bs!1858009 m!7654152))

(assert (=> bs!1858009 m!7654114))

(assert (=> b!6955388 d!2169518))

(declare-fun d!2169520 () Bool)

(assert (=> d!2169520 (= (Exists!4048 lambda!396757) (choose!51834 lambda!396757))))

(declare-fun bs!1858010 () Bool)

(assert (= bs!1858010 d!2169520))

(declare-fun m!7654154 () Bool)

(assert (=> bs!1858010 m!7654154))

(assert (=> b!6955387 d!2169520))

(assert (=> b!6955392 d!2169520))

(declare-fun b!6955658 () Bool)

(declare-fun e!4182667 () Bool)

(declare-fun tp!1917492 () Bool)

(assert (=> b!6955658 (= e!4182667 tp!1917492)))

(declare-fun b!6955659 () Bool)

(declare-fun tp!1917496 () Bool)

(declare-fun tp!1917494 () Bool)

(assert (=> b!6955659 (= e!4182667 (and tp!1917496 tp!1917494))))

(declare-fun b!6955657 () Bool)

(declare-fun tp!1917493 () Bool)

(declare-fun tp!1917495 () Bool)

(assert (=> b!6955657 (= e!4182667 (and tp!1917493 tp!1917495))))

(assert (=> b!6955391 (= tp!1917459 e!4182667)))

(declare-fun b!6955656 () Bool)

(assert (=> b!6955656 (= e!4182667 tp_is_empty!43329)))

(assert (= (and b!6955391 (is-ElementMatch!17052 (reg!17381 rInner!765))) b!6955656))

(assert (= (and b!6955391 (is-Concat!25897 (reg!17381 rInner!765))) b!6955657))

(assert (= (and b!6955391 (is-Star!17052 (reg!17381 rInner!765))) b!6955658))

(assert (= (and b!6955391 (is-Union!17052 (reg!17381 rInner!765))) b!6955659))

(declare-fun b!6955664 () Bool)

(declare-fun e!4182670 () Bool)

(declare-fun tp!1917499 () Bool)

(assert (=> b!6955664 (= e!4182670 (and tp_is_empty!43329 tp!1917499))))

(assert (=> b!6955385 (= tp!1917460 e!4182670)))

(assert (= (and b!6955385 (is-Cons!66681 (t!380548 s!10388))) b!6955664))

(declare-fun b!6955667 () Bool)

(declare-fun e!4182671 () Bool)

(declare-fun tp!1917500 () Bool)

(assert (=> b!6955667 (= e!4182671 tp!1917500)))

(declare-fun b!6955668 () Bool)

(declare-fun tp!1917504 () Bool)

(declare-fun tp!1917502 () Bool)

(assert (=> b!6955668 (= e!4182671 (and tp!1917504 tp!1917502))))

(declare-fun b!6955666 () Bool)

(declare-fun tp!1917501 () Bool)

(declare-fun tp!1917503 () Bool)

(assert (=> b!6955666 (= e!4182671 (and tp!1917501 tp!1917503))))

(assert (=> b!6955389 (= tp!1917458 e!4182671)))

(declare-fun b!6955665 () Bool)

(assert (=> b!6955665 (= e!4182671 tp_is_empty!43329)))

(assert (= (and b!6955389 (is-ElementMatch!17052 (regOne!34616 rInner!765))) b!6955665))

(assert (= (and b!6955389 (is-Concat!25897 (regOne!34616 rInner!765))) b!6955666))

(assert (= (and b!6955389 (is-Star!17052 (regOne!34616 rInner!765))) b!6955667))

(assert (= (and b!6955389 (is-Union!17052 (regOne!34616 rInner!765))) b!6955668))

(declare-fun b!6955671 () Bool)

(declare-fun e!4182672 () Bool)

(declare-fun tp!1917505 () Bool)

(assert (=> b!6955671 (= e!4182672 tp!1917505)))

(declare-fun b!6955672 () Bool)

(declare-fun tp!1917509 () Bool)

(declare-fun tp!1917507 () Bool)

(assert (=> b!6955672 (= e!4182672 (and tp!1917509 tp!1917507))))

(declare-fun b!6955670 () Bool)

(declare-fun tp!1917506 () Bool)

(declare-fun tp!1917508 () Bool)

(assert (=> b!6955670 (= e!4182672 (and tp!1917506 tp!1917508))))

(assert (=> b!6955389 (= tp!1917463 e!4182672)))

(declare-fun b!6955669 () Bool)

(assert (=> b!6955669 (= e!4182672 tp_is_empty!43329)))

(assert (= (and b!6955389 (is-ElementMatch!17052 (regTwo!34616 rInner!765))) b!6955669))

(assert (= (and b!6955389 (is-Concat!25897 (regTwo!34616 rInner!765))) b!6955670))

(assert (= (and b!6955389 (is-Star!17052 (regTwo!34616 rInner!765))) b!6955671))

(assert (= (and b!6955389 (is-Union!17052 (regTwo!34616 rInner!765))) b!6955672))

(declare-fun b!6955675 () Bool)

(declare-fun e!4182673 () Bool)

(declare-fun tp!1917510 () Bool)

(assert (=> b!6955675 (= e!4182673 tp!1917510)))

(declare-fun b!6955676 () Bool)

(declare-fun tp!1917514 () Bool)

(declare-fun tp!1917512 () Bool)

(assert (=> b!6955676 (= e!4182673 (and tp!1917514 tp!1917512))))

(declare-fun b!6955674 () Bool)

(declare-fun tp!1917511 () Bool)

(declare-fun tp!1917513 () Bool)

(assert (=> b!6955674 (= e!4182673 (and tp!1917511 tp!1917513))))

(assert (=> b!6955382 (= tp!1917461 e!4182673)))

(declare-fun b!6955673 () Bool)

(assert (=> b!6955673 (= e!4182673 tp_is_empty!43329)))

(assert (= (and b!6955382 (is-ElementMatch!17052 (regOne!34617 rInner!765))) b!6955673))

(assert (= (and b!6955382 (is-Concat!25897 (regOne!34617 rInner!765))) b!6955674))

(assert (= (and b!6955382 (is-Star!17052 (regOne!34617 rInner!765))) b!6955675))

(assert (= (and b!6955382 (is-Union!17052 (regOne!34617 rInner!765))) b!6955676))

(declare-fun b!6955679 () Bool)

(declare-fun e!4182674 () Bool)

(declare-fun tp!1917515 () Bool)

(assert (=> b!6955679 (= e!4182674 tp!1917515)))

(declare-fun b!6955680 () Bool)

(declare-fun tp!1917519 () Bool)

(declare-fun tp!1917517 () Bool)

(assert (=> b!6955680 (= e!4182674 (and tp!1917519 tp!1917517))))

(declare-fun b!6955678 () Bool)

(declare-fun tp!1917516 () Bool)

(declare-fun tp!1917518 () Bool)

(assert (=> b!6955678 (= e!4182674 (and tp!1917516 tp!1917518))))

(assert (=> b!6955382 (= tp!1917462 e!4182674)))

(declare-fun b!6955677 () Bool)

(assert (=> b!6955677 (= e!4182674 tp_is_empty!43329)))

(assert (= (and b!6955382 (is-ElementMatch!17052 (regTwo!34617 rInner!765))) b!6955677))

(assert (= (and b!6955382 (is-Concat!25897 (regTwo!34617 rInner!765))) b!6955678))

(assert (= (and b!6955382 (is-Star!17052 (regTwo!34617 rInner!765))) b!6955679))

(assert (= (and b!6955382 (is-Union!17052 (regTwo!34617 rInner!765))) b!6955680))

(declare-fun b_lambda!260451 () Bool)

(assert (= b_lambda!260449 (or b!6955390 b_lambda!260451)))

(declare-fun bs!1858013 () Bool)

(declare-fun d!2169522 () Bool)

(assert (= bs!1858013 (and d!2169522 b!6955390)))

(declare-fun res!2838103 () Bool)

(declare-fun e!4182675 () Bool)

(assert (=> bs!1858013 (=> (not res!2838103) (not e!4182675))))

(assert (=> bs!1858013 (= res!2838103 (= (++!15081 (_1!37206 lt!2478422) (_2!37206 lt!2478422)) s!10388))))

(assert (=> bs!1858013 (= (dynLambda!26592 lambda!396758 lt!2478422) e!4182675)))

(declare-fun b!6955681 () Bool)

(declare-fun res!2838104 () Bool)

(assert (=> b!6955681 (=> (not res!2838104) (not e!4182675))))

(assert (=> b!6955681 (= res!2838104 (not (isEmpty!38917 (_1!37206 lt!2478422))))))

(declare-fun b!6955682 () Bool)

(declare-fun res!2838105 () Bool)

(assert (=> b!6955682 (=> (not res!2838105) (not e!4182675))))

(assert (=> b!6955682 (= res!2838105 (matchRSpec!4077 rInner!765 (_1!37206 lt!2478422)))))

(declare-fun b!6955683 () Bool)

(assert (=> b!6955683 (= e!4182675 (matchRSpec!4077 (Star!17052 rInner!765) (_2!37206 lt!2478422)))))

(assert (= (and bs!1858013 res!2838103) b!6955681))

(assert (= (and b!6955681 res!2838104) b!6955682))

(assert (= (and b!6955682 res!2838105) b!6955683))

(declare-fun m!7654156 () Bool)

(assert (=> bs!1858013 m!7654156))

(declare-fun m!7654158 () Bool)

(assert (=> b!6955681 m!7654158))

(declare-fun m!7654160 () Bool)

(assert (=> b!6955682 m!7654160))

(declare-fun m!7654162 () Bool)

(assert (=> b!6955683 m!7654162))

(assert (=> d!2169508 d!2169522))

(push 1)

(assert (not d!2169510))

(assert (not b!6955671))

(assert (not bm!631652))

(assert (not bm!631649))

(assert (not bm!631648))

(assert (not d!2169498))

(assert (not b!6955664))

(assert (not b!6955599))

(assert (not b!6955602))

(assert (not b!6955666))

(assert (not b!6955670))

(assert tp_is_empty!43329)

(assert (not bs!1858013))

(assert (not b!6955657))

(assert (not bm!631653))

(assert (not b!6955580))

(assert (not b!6955658))

(assert (not b!6955672))

(assert (not b!6955667))

(assert (not b!6955678))

(assert (not b!6955682))

(assert (not b!6955668))

(assert (not b!6955680))

(assert (not d!2169518))

(assert (not b!6955604))

(assert (not bm!631642))

(assert (not bm!631658))

(assert (not b!6955683))

(assert (not b!6955622))

(assert (not b!6955607))

(assert (not b!6955588))

(assert (not d!2169520))

(assert (not d!2169514))

(assert (not b!6955593))

(assert (not bm!631641))

(assert (not b!6955603))

(assert (not b!6955514))

(assert (not b!6955681))

(assert (not b!6955628))

(assert (not b!6955674))

(assert (not b!6955679))

(assert (not b!6955625))

(assert (not b!6955517))

(assert (not b!6955585))

(assert (not b!6955621))

(assert (not b!6955594))

(assert (not b!6955479))

(assert (not b!6955675))

(assert (not b!6955590))

(assert (not b!6955589))

(assert (not b!6955676))

(assert (not b!6955659))

(assert (not d!2169490))

(assert (not d!2169506))

(assert (not bm!631659))

(assert (not d!2169512))

(assert (not b_lambda!260451))

(assert (not d!2169508))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

