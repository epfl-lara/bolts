; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!667392 () Bool)

(assert start!667392)

(declare-fun b!6954364 () Bool)

(assert (=> b!6954364 true))

(assert (=> b!6954364 true))

(declare-fun b!6954362 () Bool)

(declare-fun e!4182042 () Bool)

(declare-fun tp!1917198 () Bool)

(declare-fun tp!1917202 () Bool)

(assert (=> b!6954362 (= e!4182042 (and tp!1917198 tp!1917202))))

(declare-fun b!6954363 () Bool)

(declare-fun e!4182043 () Bool)

(declare-fun lt!2478282 () Bool)

(declare-fun lt!2478285 () Bool)

(assert (=> b!6954363 (= e!4182043 (not (or (not lt!2478282) lt!2478285)))))

(declare-datatypes ((C!34362 0))(
  ( (C!34363 (val!26883 Int)) )
))
(declare-datatypes ((Regex!17046 0))(
  ( (ElementMatch!17046 (c!1289712 C!34362)) (Concat!25891 (regOne!34604 Regex!17046) (regTwo!34604 Regex!17046)) (EmptyExpr!17046) (Star!17046 (reg!17375 Regex!17046)) (EmptyLang!17046) (Union!17046 (regOne!34605 Regex!17046) (regTwo!34605 Regex!17046)) )
))
(declare-fun lt!2478280 () Regex!17046)

(declare-datatypes ((List!66799 0))(
  ( (Nil!66675) (Cons!66675 (h!73123 C!34362) (t!380542 List!66799)) )
))
(declare-datatypes ((tuple2!67798 0))(
  ( (tuple2!67799 (_1!37202 List!66799) (_2!37202 List!66799)) )
))
(declare-fun lt!2478281 () tuple2!67798)

(declare-fun matchRSpec!4073 (Regex!17046 List!66799) Bool)

(assert (=> b!6954363 (= lt!2478285 (matchRSpec!4073 lt!2478280 (_2!37202 lt!2478281)))))

(declare-fun matchR!9158 (Regex!17046 List!66799) Bool)

(assert (=> b!6954363 (= lt!2478285 (matchR!9158 lt!2478280 (_2!37202 lt!2478281)))))

(declare-datatypes ((Unit!160764 0))(
  ( (Unit!160765) )
))
(declare-fun lt!2478283 () Unit!160764)

(declare-fun mainMatchTheorem!4067 (Regex!17046 List!66799) Unit!160764)

(assert (=> b!6954363 (= lt!2478283 (mainMatchTheorem!4067 lt!2478280 (_2!37202 lt!2478281)))))

(declare-fun rInner!765 () Regex!17046)

(assert (=> b!6954363 (= lt!2478280 (Star!17046 rInner!765))))

(assert (=> b!6954363 (= lt!2478282 (matchRSpec!4073 rInner!765 (_1!37202 lt!2478281)))))

(assert (=> b!6954363 (= lt!2478282 (matchR!9158 rInner!765 (_1!37202 lt!2478281)))))

(declare-fun lt!2478284 () Unit!160764)

(assert (=> b!6954363 (= lt!2478284 (mainMatchTheorem!4067 rInner!765 (_1!37202 lt!2478281)))))

(declare-fun res!2837496 () Bool)

(declare-fun e!4182041 () Bool)

(assert (=> b!6954364 (=> (not res!2837496) (not e!4182041))))

(declare-fun lambda!396681 () Int)

(declare-fun Exists!4042 (Int) Bool)

(assert (=> b!6954364 (= res!2837496 (Exists!4042 lambda!396681))))

(declare-fun b!6954365 () Bool)

(declare-fun tp_is_empty!43317 () Bool)

(assert (=> b!6954365 (= e!4182042 tp_is_empty!43317)))

(declare-fun b!6954367 () Bool)

(declare-fun tp!1917203 () Bool)

(assert (=> b!6954367 (= e!4182042 tp!1917203)))

(declare-fun b!6954368 () Bool)

(assert (=> b!6954368 (= e!4182041 e!4182043)))

(declare-fun res!2837498 () Bool)

(assert (=> b!6954368 (=> (not res!2837498) (not e!4182043))))

(declare-fun s!10388 () List!66799)

(declare-fun ++!15077 (List!66799 List!66799) List!66799)

(assert (=> b!6954368 (= res!2837498 (= (++!15077 (_1!37202 lt!2478281) (_2!37202 lt!2478281)) s!10388))))

(declare-fun pickWitness!371 (Int) tuple2!67798)

(assert (=> b!6954368 (= lt!2478281 (pickWitness!371 lambda!396681))))

(declare-fun b!6954369 () Bool)

(declare-fun tp!1917201 () Bool)

(declare-fun tp!1917199 () Bool)

(assert (=> b!6954369 (= e!4182042 (and tp!1917201 tp!1917199))))

(declare-fun b!6954370 () Bool)

(declare-fun res!2837497 () Bool)

(assert (=> b!6954370 (=> (not res!2837497) (not e!4182041))))

(declare-fun nullable!6859 (Regex!17046) Bool)

(assert (=> b!6954370 (= res!2837497 (not (nullable!6859 rInner!765)))))

(declare-fun b!6954366 () Bool)

(declare-fun e!4182044 () Bool)

(declare-fun tp!1917200 () Bool)

(assert (=> b!6954366 (= e!4182044 (and tp_is_empty!43317 tp!1917200))))

(declare-fun res!2837495 () Bool)

(assert (=> start!667392 (=> (not res!2837495) (not e!4182041))))

(declare-fun validRegex!8752 (Regex!17046) Bool)

(assert (=> start!667392 (= res!2837495 (validRegex!8752 rInner!765))))

(assert (=> start!667392 e!4182041))

(assert (=> start!667392 e!4182042))

(assert (=> start!667392 e!4182044))

(assert (= (and start!667392 res!2837495) b!6954370))

(assert (= (and b!6954370 res!2837497) b!6954364))

(assert (= (and b!6954364 res!2837496) b!6954368))

(assert (= (and b!6954368 res!2837498) b!6954363))

(assert (= (and start!667392 (is-ElementMatch!17046 rInner!765)) b!6954365))

(assert (= (and start!667392 (is-Concat!25891 rInner!765)) b!6954369))

(assert (= (and start!667392 (is-Star!17046 rInner!765)) b!6954367))

(assert (= (and start!667392 (is-Union!17046 rInner!765)) b!6954362))

(assert (= (and start!667392 (is-Cons!66675 s!10388)) b!6954366))

(declare-fun m!7653604 () Bool)

(assert (=> b!6954368 m!7653604))

(declare-fun m!7653606 () Bool)

(assert (=> b!6954368 m!7653606))

(declare-fun m!7653608 () Bool)

(assert (=> start!667392 m!7653608))

(declare-fun m!7653610 () Bool)

(assert (=> b!6954364 m!7653610))

(declare-fun m!7653612 () Bool)

(assert (=> b!6954363 m!7653612))

(declare-fun m!7653614 () Bool)

(assert (=> b!6954363 m!7653614))

(declare-fun m!7653616 () Bool)

(assert (=> b!6954363 m!7653616))

(declare-fun m!7653618 () Bool)

(assert (=> b!6954363 m!7653618))

(declare-fun m!7653620 () Bool)

(assert (=> b!6954363 m!7653620))

(declare-fun m!7653622 () Bool)

(assert (=> b!6954363 m!7653622))

(declare-fun m!7653624 () Bool)

(assert (=> b!6954370 m!7653624))

(push 1)

(assert (not b!6954367))

(assert (not start!667392))

(assert (not b!6954370))

(assert (not b!6954366))

(assert tp_is_empty!43317)

(assert (not b!6954362))

(assert (not b!6954364))

(assert (not b!6954363))

(assert (not b!6954369))

(assert (not b!6954368))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun call!631563 () Bool)

(declare-fun bm!631557 () Bool)

(declare-fun c!1289718 () Bool)

(declare-fun c!1289719 () Bool)

(assert (=> bm!631557 (= call!631563 (validRegex!8752 (ite c!1289718 (reg!17375 rInner!765) (ite c!1289719 (regOne!34605 rInner!765) (regTwo!34604 rInner!765)))))))

(declare-fun b!6954432 () Bool)

(declare-fun e!4182078 () Bool)

(declare-fun e!4182077 () Bool)

(assert (=> b!6954432 (= e!4182078 e!4182077)))

(declare-fun res!2837530 () Bool)

(assert (=> b!6954432 (=> (not res!2837530) (not e!4182077))))

(declare-fun call!631564 () Bool)

(assert (=> b!6954432 (= res!2837530 call!631564)))

(declare-fun bm!631558 () Bool)

(assert (=> bm!631558 (= call!631564 (validRegex!8752 (ite c!1289719 (regTwo!34605 rInner!765) (regOne!34604 rInner!765))))))

(declare-fun b!6954433 () Bool)

(declare-fun e!4182079 () Bool)

(declare-fun e!4182080 () Bool)

(assert (=> b!6954433 (= e!4182079 e!4182080)))

(declare-fun res!2837529 () Bool)

(assert (=> b!6954433 (= res!2837529 (not (nullable!6859 (reg!17375 rInner!765))))))

(assert (=> b!6954433 (=> (not res!2837529) (not e!4182080))))

(declare-fun b!6954434 () Bool)

(declare-fun e!4182075 () Bool)

(assert (=> b!6954434 (= e!4182079 e!4182075)))

(assert (=> b!6954434 (= c!1289719 (is-Union!17046 rInner!765))))

(declare-fun b!6954435 () Bool)

(declare-fun res!2837532 () Bool)

(declare-fun e!4182081 () Bool)

(assert (=> b!6954435 (=> (not res!2837532) (not e!4182081))))

(declare-fun call!631562 () Bool)

(assert (=> b!6954435 (= res!2837532 call!631562)))

(assert (=> b!6954435 (= e!4182075 e!4182081)))

(declare-fun b!6954436 () Bool)

(assert (=> b!6954436 (= e!4182077 call!631562)))

(declare-fun b!6954438 () Bool)

(assert (=> b!6954438 (= e!4182081 call!631564)))

(declare-fun b!6954439 () Bool)

(declare-fun res!2837533 () Bool)

(assert (=> b!6954439 (=> res!2837533 e!4182078)))

(assert (=> b!6954439 (= res!2837533 (not (is-Concat!25891 rInner!765)))))

(assert (=> b!6954439 (= e!4182075 e!4182078)))

(declare-fun b!6954440 () Bool)

(assert (=> b!6954440 (= e!4182080 call!631563)))

(declare-fun bm!631559 () Bool)

(assert (=> bm!631559 (= call!631562 call!631563)))

(declare-fun d!2169387 () Bool)

(declare-fun res!2837531 () Bool)

(declare-fun e!4182076 () Bool)

(assert (=> d!2169387 (=> res!2837531 e!4182076)))

(assert (=> d!2169387 (= res!2837531 (is-ElementMatch!17046 rInner!765))))

(assert (=> d!2169387 (= (validRegex!8752 rInner!765) e!4182076)))

(declare-fun b!6954437 () Bool)

(assert (=> b!6954437 (= e!4182076 e!4182079)))

(assert (=> b!6954437 (= c!1289718 (is-Star!17046 rInner!765))))

(assert (= (and d!2169387 (not res!2837531)) b!6954437))

(assert (= (and b!6954437 c!1289718) b!6954433))

(assert (= (and b!6954437 (not c!1289718)) b!6954434))

(assert (= (and b!6954433 res!2837529) b!6954440))

(assert (= (and b!6954434 c!1289719) b!6954435))

(assert (= (and b!6954434 (not c!1289719)) b!6954439))

(assert (= (and b!6954435 res!2837532) b!6954438))

(assert (= (and b!6954439 (not res!2837533)) b!6954432))

(assert (= (and b!6954432 res!2837530) b!6954436))

(assert (= (or b!6954435 b!6954436) bm!631559))

(assert (= (or b!6954438 b!6954432) bm!631558))

(assert (= (or b!6954440 bm!631559) bm!631557))

(declare-fun m!7653648 () Bool)

(assert (=> bm!631557 m!7653648))

(declare-fun m!7653650 () Bool)

(assert (=> bm!631558 m!7653650))

(declare-fun m!7653652 () Bool)

(assert (=> b!6954433 m!7653652))

(assert (=> start!667392 d!2169387))

(declare-fun d!2169391 () Bool)

(declare-fun nullableFct!2571 (Regex!17046) Bool)

(assert (=> d!2169391 (= (nullable!6859 rInner!765) (nullableFct!2571 rInner!765))))

(declare-fun bs!1857904 () Bool)

(assert (= bs!1857904 d!2169391))

(declare-fun m!7653654 () Bool)

(assert (=> bs!1857904 m!7653654))

(assert (=> b!6954370 d!2169391))

(declare-fun b!6954450 () Bool)

(declare-fun e!4182086 () List!66799)

(assert (=> b!6954450 (= e!4182086 (Cons!66675 (h!73123 (_1!37202 lt!2478281)) (++!15077 (t!380542 (_1!37202 lt!2478281)) (_2!37202 lt!2478281))))))

(declare-fun b!6954452 () Bool)

(declare-fun e!4182087 () Bool)

(declare-fun lt!2478306 () List!66799)

(assert (=> b!6954452 (= e!4182087 (or (not (= (_2!37202 lt!2478281) Nil!66675)) (= lt!2478306 (_1!37202 lt!2478281))))))

(declare-fun d!2169393 () Bool)

(assert (=> d!2169393 e!4182087))

(declare-fun res!2837538 () Bool)

(assert (=> d!2169393 (=> (not res!2837538) (not e!4182087))))

(declare-fun content!13143 (List!66799) (Set C!34362))

(assert (=> d!2169393 (= res!2837538 (= (content!13143 lt!2478306) (set.union (content!13143 (_1!37202 lt!2478281)) (content!13143 (_2!37202 lt!2478281)))))))

(assert (=> d!2169393 (= lt!2478306 e!4182086)))

(declare-fun c!1289722 () Bool)

(assert (=> d!2169393 (= c!1289722 (is-Nil!66675 (_1!37202 lt!2478281)))))

(assert (=> d!2169393 (= (++!15077 (_1!37202 lt!2478281) (_2!37202 lt!2478281)) lt!2478306)))

(declare-fun b!6954449 () Bool)

(assert (=> b!6954449 (= e!4182086 (_2!37202 lt!2478281))))

(declare-fun b!6954451 () Bool)

(declare-fun res!2837539 () Bool)

(assert (=> b!6954451 (=> (not res!2837539) (not e!4182087))))

(declare-fun size!40840 (List!66799) Int)

(assert (=> b!6954451 (= res!2837539 (= (size!40840 lt!2478306) (+ (size!40840 (_1!37202 lt!2478281)) (size!40840 (_2!37202 lt!2478281)))))))

(assert (= (and d!2169393 c!1289722) b!6954449))

(assert (= (and d!2169393 (not c!1289722)) b!6954450))

(assert (= (and d!2169393 res!2837538) b!6954451))

(assert (= (and b!6954451 res!2837539) b!6954452))

(declare-fun m!7653660 () Bool)

(assert (=> b!6954450 m!7653660))

(declare-fun m!7653662 () Bool)

(assert (=> d!2169393 m!7653662))

(declare-fun m!7653664 () Bool)

(assert (=> d!2169393 m!7653664))

(declare-fun m!7653666 () Bool)

(assert (=> d!2169393 m!7653666))

(declare-fun m!7653668 () Bool)

(assert (=> b!6954451 m!7653668))

(declare-fun m!7653670 () Bool)

(assert (=> b!6954451 m!7653670))

(declare-fun m!7653672 () Bool)

(assert (=> b!6954451 m!7653672))

(assert (=> b!6954368 d!2169393))

(declare-fun d!2169399 () Bool)

(declare-fun lt!2478309 () tuple2!67798)

(declare-fun dynLambda!26588 (Int tuple2!67798) Bool)

(assert (=> d!2169399 (dynLambda!26588 lambda!396681 lt!2478309)))

(declare-fun choose!51823 (Int) tuple2!67798)

(assert (=> d!2169399 (= lt!2478309 (choose!51823 lambda!396681))))

(assert (=> d!2169399 (Exists!4042 lambda!396681)))

(assert (=> d!2169399 (= (pickWitness!371 lambda!396681) lt!2478309)))

(declare-fun b_lambda!260433 () Bool)

(assert (=> (not b_lambda!260433) (not d!2169399)))

(declare-fun bs!1857907 () Bool)

(assert (= bs!1857907 d!2169399))

(declare-fun m!7653674 () Bool)

(assert (=> bs!1857907 m!7653674))

(declare-fun m!7653676 () Bool)

(assert (=> bs!1857907 m!7653676))

(assert (=> bs!1857907 m!7653610))

(assert (=> b!6954368 d!2169399))

(declare-fun d!2169401 () Bool)

(assert (=> d!2169401 (= (matchR!9158 rInner!765 (_1!37202 lt!2478281)) (matchRSpec!4073 rInner!765 (_1!37202 lt!2478281)))))

(declare-fun lt!2478312 () Unit!160764)

(declare-fun choose!51824 (Regex!17046 List!66799) Unit!160764)

(assert (=> d!2169401 (= lt!2478312 (choose!51824 rInner!765 (_1!37202 lt!2478281)))))

(assert (=> d!2169401 (validRegex!8752 rInner!765)))

(assert (=> d!2169401 (= (mainMatchTheorem!4067 rInner!765 (_1!37202 lt!2478281)) lt!2478312)))

(declare-fun bs!1857908 () Bool)

(assert (= bs!1857908 d!2169401))

(assert (=> bs!1857908 m!7653620))

(assert (=> bs!1857908 m!7653618))

(declare-fun m!7653678 () Bool)

(assert (=> bs!1857908 m!7653678))

(assert (=> bs!1857908 m!7653608))

(assert (=> b!6954363 d!2169401))

(declare-fun bs!1857909 () Bool)

(declare-fun b!6954518 () Bool)

(assert (= bs!1857909 (and b!6954518 b!6954364)))

(declare-fun lambda!396691 () Int)

(assert (=> bs!1857909 (not (= lambda!396691 lambda!396681))))

(assert (=> b!6954518 true))

(assert (=> b!6954518 true))

(declare-fun bs!1857910 () Bool)

(declare-fun b!6954520 () Bool)

(assert (= bs!1857910 (and b!6954520 b!6954364)))

(declare-fun lambda!396692 () Int)

(assert (=> bs!1857910 (not (= lambda!396692 lambda!396681))))

(declare-fun bs!1857911 () Bool)

(assert (= bs!1857911 (and b!6954520 b!6954518)))

(assert (=> bs!1857911 (not (= lambda!396692 lambda!396691))))

(assert (=> b!6954520 true))

(assert (=> b!6954520 true))

(declare-fun b!6954512 () Bool)

(declare-fun e!4182128 () Bool)

(declare-fun e!4182131 () Bool)

(assert (=> b!6954512 (= e!4182128 e!4182131)))

(declare-fun res!2837571 () Bool)

(assert (=> b!6954512 (= res!2837571 (matchRSpec!4073 (regOne!34605 lt!2478280) (_2!37202 lt!2478281)))))

(assert (=> b!6954512 (=> res!2837571 e!4182131)))

(declare-fun b!6954514 () Bool)

(declare-fun e!4182127 () Bool)

(declare-fun e!4182130 () Bool)

(assert (=> b!6954514 (= e!4182127 e!4182130)))

(declare-fun res!2837573 () Bool)

(assert (=> b!6954514 (= res!2837573 (not (is-EmptyLang!17046 lt!2478280)))))

(assert (=> b!6954514 (=> (not res!2837573) (not e!4182130))))

(declare-fun b!6954515 () Bool)

(declare-fun c!1289737 () Bool)

(assert (=> b!6954515 (= c!1289737 (is-Union!17046 lt!2478280))))

(declare-fun e!4182133 () Bool)

(assert (=> b!6954515 (= e!4182133 e!4182128)))

(declare-fun b!6954516 () Bool)

(declare-fun e!4182132 () Bool)

(assert (=> b!6954516 (= e!4182128 e!4182132)))

(declare-fun c!1289739 () Bool)

(assert (=> b!6954516 (= c!1289739 (is-Star!17046 lt!2478280))))

(declare-fun b!6954517 () Bool)

(assert (=> b!6954517 (= e!4182131 (matchRSpec!4073 (regTwo!34605 lt!2478280) (_2!37202 lt!2478281)))))

(declare-fun bm!631573 () Bool)

(declare-fun call!631578 () Bool)

(declare-fun isEmpty!38913 (List!66799) Bool)

(assert (=> bm!631573 (= call!631578 (isEmpty!38913 (_2!37202 lt!2478281)))))

(declare-fun e!4182129 () Bool)

(declare-fun call!631579 () Bool)

(assert (=> b!6954518 (= e!4182129 call!631579)))

(declare-fun b!6954519 () Bool)

(declare-fun c!1289740 () Bool)

(assert (=> b!6954519 (= c!1289740 (is-ElementMatch!17046 lt!2478280))))

(assert (=> b!6954519 (= e!4182130 e!4182133)))

(declare-fun bm!631574 () Bool)

(assert (=> bm!631574 (= call!631579 (Exists!4042 (ite c!1289739 lambda!396691 lambda!396692)))))

(assert (=> b!6954520 (= e!4182132 call!631579)))

(declare-fun d!2169403 () Bool)

(declare-fun c!1289738 () Bool)

(assert (=> d!2169403 (= c!1289738 (is-EmptyExpr!17046 lt!2478280))))

(assert (=> d!2169403 (= (matchRSpec!4073 lt!2478280 (_2!37202 lt!2478281)) e!4182127)))

(declare-fun b!6954513 () Bool)

(declare-fun res!2837572 () Bool)

(assert (=> b!6954513 (=> res!2837572 e!4182129)))

(assert (=> b!6954513 (= res!2837572 call!631578)))

(assert (=> b!6954513 (= e!4182132 e!4182129)))

(declare-fun b!6954521 () Bool)

(assert (=> b!6954521 (= e!4182133 (= (_2!37202 lt!2478281) (Cons!66675 (c!1289712 lt!2478280) Nil!66675)))))

(declare-fun b!6954522 () Bool)

(assert (=> b!6954522 (= e!4182127 call!631578)))

(assert (= (and d!2169403 c!1289738) b!6954522))

(assert (= (and d!2169403 (not c!1289738)) b!6954514))

(assert (= (and b!6954514 res!2837573) b!6954519))

(assert (= (and b!6954519 c!1289740) b!6954521))

(assert (= (and b!6954519 (not c!1289740)) b!6954515))

(assert (= (and b!6954515 c!1289737) b!6954512))

(assert (= (and b!6954515 (not c!1289737)) b!6954516))

(assert (= (and b!6954512 (not res!2837571)) b!6954517))

(assert (= (and b!6954516 c!1289739) b!6954513))

(assert (= (and b!6954516 (not c!1289739)) b!6954520))

(assert (= (and b!6954513 (not res!2837572)) b!6954518))

(assert (= (or b!6954518 b!6954520) bm!631574))

(assert (= (or b!6954522 b!6954513) bm!631573))

(declare-fun m!7653686 () Bool)

(assert (=> b!6954512 m!7653686))

(declare-fun m!7653688 () Bool)

(assert (=> b!6954517 m!7653688))

(declare-fun m!7653690 () Bool)

(assert (=> bm!631573 m!7653690))

(declare-fun m!7653692 () Bool)

(assert (=> bm!631574 m!7653692))

(assert (=> b!6954363 d!2169403))

(declare-fun b!6954579 () Bool)

(declare-fun e!4182164 () Bool)

(declare-fun e!4182166 () Bool)

(assert (=> b!6954579 (= e!4182164 e!4182166)))

(declare-fun res!2837605 () Bool)

(assert (=> b!6954579 (=> (not res!2837605) (not e!4182166))))

(declare-fun lt!2478315 () Bool)

(assert (=> b!6954579 (= res!2837605 (not lt!2478315))))

(declare-fun b!6954580 () Bool)

(declare-fun e!4182167 () Bool)

(assert (=> b!6954580 (= e!4182167 (nullable!6859 rInner!765))))

(declare-fun b!6954581 () Bool)

(declare-fun res!2837602 () Bool)

(assert (=> b!6954581 (=> res!2837602 e!4182164)))

(declare-fun e!4182170 () Bool)

(assert (=> b!6954581 (= res!2837602 e!4182170)))

(declare-fun res!2837606 () Bool)

(assert (=> b!6954581 (=> (not res!2837606) (not e!4182170))))

(assert (=> b!6954581 (= res!2837606 lt!2478315)))

(declare-fun bm!631577 () Bool)

(declare-fun call!631582 () Bool)

(assert (=> bm!631577 (= call!631582 (isEmpty!38913 (_1!37202 lt!2478281)))))

(declare-fun b!6954582 () Bool)

(declare-fun e!4182165 () Bool)

(declare-fun head!13942 (List!66799) C!34362)

(assert (=> b!6954582 (= e!4182165 (not (= (head!13942 (_1!37202 lt!2478281)) (c!1289712 rInner!765))))))

(declare-fun b!6954583 () Bool)

(assert (=> b!6954583 (= e!4182170 (= (head!13942 (_1!37202 lt!2478281)) (c!1289712 rInner!765)))))

(declare-fun b!6954584 () Bool)

(declare-fun e!4182168 () Bool)

(assert (=> b!6954584 (= e!4182168 (not lt!2478315))))

(declare-fun b!6954585 () Bool)

(declare-fun res!2837609 () Bool)

(assert (=> b!6954585 (=> res!2837609 e!4182164)))

(assert (=> b!6954585 (= res!2837609 (not (is-ElementMatch!17046 rInner!765)))))

(assert (=> b!6954585 (= e!4182168 e!4182164)))

(declare-fun b!6954587 () Bool)

(declare-fun derivativeStep!5489 (Regex!17046 C!34362) Regex!17046)

(declare-fun tail!12994 (List!66799) List!66799)

(assert (=> b!6954587 (= e!4182167 (matchR!9158 (derivativeStep!5489 rInner!765 (head!13942 (_1!37202 lt!2478281))) (tail!12994 (_1!37202 lt!2478281))))))

(declare-fun b!6954588 () Bool)

(declare-fun res!2837608 () Bool)

(assert (=> b!6954588 (=> (not res!2837608) (not e!4182170))))

(assert (=> b!6954588 (= res!2837608 (isEmpty!38913 (tail!12994 (_1!37202 lt!2478281))))))

(declare-fun b!6954589 () Bool)

(declare-fun res!2837607 () Bool)

(assert (=> b!6954589 (=> res!2837607 e!4182165)))

(assert (=> b!6954589 (= res!2837607 (not (isEmpty!38913 (tail!12994 (_1!37202 lt!2478281)))))))

(declare-fun b!6954590 () Bool)

(declare-fun res!2837604 () Bool)

(assert (=> b!6954590 (=> (not res!2837604) (not e!4182170))))

(assert (=> b!6954590 (= res!2837604 (not call!631582))))

(declare-fun b!6954591 () Bool)

(declare-fun e!4182169 () Bool)

(assert (=> b!6954591 (= e!4182169 (= lt!2478315 call!631582))))

(declare-fun b!6954592 () Bool)

(assert (=> b!6954592 (= e!4182169 e!4182168)))

(declare-fun c!1289757 () Bool)

(assert (=> b!6954592 (= c!1289757 (is-EmptyLang!17046 rInner!765))))

(declare-fun d!2169407 () Bool)

(assert (=> d!2169407 e!4182169))

(declare-fun c!1289755 () Bool)

(assert (=> d!2169407 (= c!1289755 (is-EmptyExpr!17046 rInner!765))))

(assert (=> d!2169407 (= lt!2478315 e!4182167)))

(declare-fun c!1289756 () Bool)

(assert (=> d!2169407 (= c!1289756 (isEmpty!38913 (_1!37202 lt!2478281)))))

(assert (=> d!2169407 (validRegex!8752 rInner!765)))

(assert (=> d!2169407 (= (matchR!9158 rInner!765 (_1!37202 lt!2478281)) lt!2478315)))

(declare-fun b!6954586 () Bool)

(assert (=> b!6954586 (= e!4182166 e!4182165)))

(declare-fun res!2837603 () Bool)

(assert (=> b!6954586 (=> res!2837603 e!4182165)))

(assert (=> b!6954586 (= res!2837603 call!631582)))

(assert (= (and d!2169407 c!1289756) b!6954580))

(assert (= (and d!2169407 (not c!1289756)) b!6954587))

(assert (= (and d!2169407 c!1289755) b!6954591))

(assert (= (and d!2169407 (not c!1289755)) b!6954592))

(assert (= (and b!6954592 c!1289757) b!6954584))

(assert (= (and b!6954592 (not c!1289757)) b!6954585))

(assert (= (and b!6954585 (not res!2837609)) b!6954581))

(assert (= (and b!6954581 res!2837606) b!6954590))

(assert (= (and b!6954590 res!2837604) b!6954588))

(assert (= (and b!6954588 res!2837608) b!6954583))

(assert (= (and b!6954581 (not res!2837602)) b!6954579))

(assert (= (and b!6954579 res!2837605) b!6954586))

(assert (= (and b!6954586 (not res!2837603)) b!6954589))

(assert (= (and b!6954589 (not res!2837607)) b!6954582))

(assert (= (or b!6954591 b!6954586 b!6954590) bm!631577))

(declare-fun m!7653694 () Bool)

(assert (=> b!6954582 m!7653694))

(assert (=> b!6954587 m!7653694))

(assert (=> b!6954587 m!7653694))

(declare-fun m!7653696 () Bool)

(assert (=> b!6954587 m!7653696))

(declare-fun m!7653698 () Bool)

(assert (=> b!6954587 m!7653698))

(assert (=> b!6954587 m!7653696))

(assert (=> b!6954587 m!7653698))

(declare-fun m!7653700 () Bool)

(assert (=> b!6954587 m!7653700))

(assert (=> b!6954588 m!7653698))

(assert (=> b!6954588 m!7653698))

(declare-fun m!7653702 () Bool)

(assert (=> b!6954588 m!7653702))

(assert (=> b!6954589 m!7653698))

(assert (=> b!6954589 m!7653698))

(assert (=> b!6954589 m!7653702))

(declare-fun m!7653704 () Bool)

(assert (=> d!2169407 m!7653704))

(assert (=> d!2169407 m!7653608))

(assert (=> b!6954580 m!7653624))

(assert (=> bm!631577 m!7653704))

(assert (=> b!6954583 m!7653694))

(assert (=> b!6954363 d!2169407))

(declare-fun bs!1857912 () Bool)

(declare-fun b!6954599 () Bool)

(assert (= bs!1857912 (and b!6954599 b!6954364)))

(declare-fun lambda!396696 () Int)

(assert (=> bs!1857912 (not (= lambda!396696 lambda!396681))))

(declare-fun bs!1857913 () Bool)

(assert (= bs!1857913 (and b!6954599 b!6954518)))

(assert (=> bs!1857913 (= (and (= (_1!37202 lt!2478281) (_2!37202 lt!2478281)) (= (reg!17375 rInner!765) (reg!17375 lt!2478280)) (= rInner!765 lt!2478280)) (= lambda!396696 lambda!396691))))

(declare-fun bs!1857914 () Bool)

(assert (= bs!1857914 (and b!6954599 b!6954520)))

(assert (=> bs!1857914 (not (= lambda!396696 lambda!396692))))

(assert (=> b!6954599 true))

(assert (=> b!6954599 true))

(declare-fun bs!1857915 () Bool)

(declare-fun b!6954601 () Bool)

(assert (= bs!1857915 (and b!6954601 b!6954364)))

(declare-fun lambda!396698 () Int)

(assert (=> bs!1857915 (not (= lambda!396698 lambda!396681))))

(declare-fun bs!1857916 () Bool)

(assert (= bs!1857916 (and b!6954601 b!6954518)))

(assert (=> bs!1857916 (not (= lambda!396698 lambda!396691))))

(declare-fun bs!1857917 () Bool)

(assert (= bs!1857917 (and b!6954601 b!6954520)))

(assert (=> bs!1857917 (= (and (= (_1!37202 lt!2478281) (_2!37202 lt!2478281)) (= (regOne!34604 rInner!765) (regOne!34604 lt!2478280)) (= (regTwo!34604 rInner!765) (regTwo!34604 lt!2478280))) (= lambda!396698 lambda!396692))))

(declare-fun bs!1857918 () Bool)

(assert (= bs!1857918 (and b!6954601 b!6954599)))

(assert (=> bs!1857918 (not (= lambda!396698 lambda!396696))))

(assert (=> b!6954601 true))

(assert (=> b!6954601 true))

(declare-fun b!6954593 () Bool)

(declare-fun e!4182172 () Bool)

(declare-fun e!4182175 () Bool)

(assert (=> b!6954593 (= e!4182172 e!4182175)))

(declare-fun res!2837610 () Bool)

(assert (=> b!6954593 (= res!2837610 (matchRSpec!4073 (regOne!34605 rInner!765) (_1!37202 lt!2478281)))))

(assert (=> b!6954593 (=> res!2837610 e!4182175)))

(declare-fun b!6954595 () Bool)

(declare-fun e!4182171 () Bool)

(declare-fun e!4182174 () Bool)

(assert (=> b!6954595 (= e!4182171 e!4182174)))

(declare-fun res!2837612 () Bool)

(assert (=> b!6954595 (= res!2837612 (not (is-EmptyLang!17046 rInner!765)))))

(assert (=> b!6954595 (=> (not res!2837612) (not e!4182174))))

(declare-fun b!6954596 () Bool)

(declare-fun c!1289758 () Bool)

(assert (=> b!6954596 (= c!1289758 (is-Union!17046 rInner!765))))

(declare-fun e!4182177 () Bool)

(assert (=> b!6954596 (= e!4182177 e!4182172)))

(declare-fun b!6954597 () Bool)

(declare-fun e!4182176 () Bool)

(assert (=> b!6954597 (= e!4182172 e!4182176)))

(declare-fun c!1289760 () Bool)

(assert (=> b!6954597 (= c!1289760 (is-Star!17046 rInner!765))))

(declare-fun b!6954598 () Bool)

(assert (=> b!6954598 (= e!4182175 (matchRSpec!4073 (regTwo!34605 rInner!765) (_1!37202 lt!2478281)))))

(declare-fun bm!631578 () Bool)

(declare-fun call!631583 () Bool)

(assert (=> bm!631578 (= call!631583 (isEmpty!38913 (_1!37202 lt!2478281)))))

(declare-fun e!4182173 () Bool)

(declare-fun call!631584 () Bool)

(assert (=> b!6954599 (= e!4182173 call!631584)))

(declare-fun b!6954600 () Bool)

(declare-fun c!1289761 () Bool)

(assert (=> b!6954600 (= c!1289761 (is-ElementMatch!17046 rInner!765))))

(assert (=> b!6954600 (= e!4182174 e!4182177)))

(declare-fun bm!631579 () Bool)

(assert (=> bm!631579 (= call!631584 (Exists!4042 (ite c!1289760 lambda!396696 lambda!396698)))))

(assert (=> b!6954601 (= e!4182176 call!631584)))

(declare-fun d!2169409 () Bool)

(declare-fun c!1289759 () Bool)

(assert (=> d!2169409 (= c!1289759 (is-EmptyExpr!17046 rInner!765))))

(assert (=> d!2169409 (= (matchRSpec!4073 rInner!765 (_1!37202 lt!2478281)) e!4182171)))

(declare-fun b!6954594 () Bool)

(declare-fun res!2837611 () Bool)

(assert (=> b!6954594 (=> res!2837611 e!4182173)))

(assert (=> b!6954594 (= res!2837611 call!631583)))

(assert (=> b!6954594 (= e!4182176 e!4182173)))

(declare-fun b!6954602 () Bool)

(assert (=> b!6954602 (= e!4182177 (= (_1!37202 lt!2478281) (Cons!66675 (c!1289712 rInner!765) Nil!66675)))))

(declare-fun b!6954603 () Bool)

(assert (=> b!6954603 (= e!4182171 call!631583)))

(assert (= (and d!2169409 c!1289759) b!6954603))

(assert (= (and d!2169409 (not c!1289759)) b!6954595))

(assert (= (and b!6954595 res!2837612) b!6954600))

(assert (= (and b!6954600 c!1289761) b!6954602))

(assert (= (and b!6954600 (not c!1289761)) b!6954596))

(assert (= (and b!6954596 c!1289758) b!6954593))

(assert (= (and b!6954596 (not c!1289758)) b!6954597))

(assert (= (and b!6954593 (not res!2837610)) b!6954598))

(assert (= (and b!6954597 c!1289760) b!6954594))

(assert (= (and b!6954597 (not c!1289760)) b!6954601))

(assert (= (and b!6954594 (not res!2837611)) b!6954599))

(assert (= (or b!6954599 b!6954601) bm!631579))

(assert (= (or b!6954603 b!6954594) bm!631578))

(declare-fun m!7653706 () Bool)

(assert (=> b!6954593 m!7653706))

(declare-fun m!7653708 () Bool)

(assert (=> b!6954598 m!7653708))

(assert (=> bm!631578 m!7653704))

(declare-fun m!7653710 () Bool)

(assert (=> bm!631579 m!7653710))

(assert (=> b!6954363 d!2169409))

(declare-fun b!6954608 () Bool)

(declare-fun e!4182180 () Bool)

(declare-fun e!4182182 () Bool)

(assert (=> b!6954608 (= e!4182180 e!4182182)))

(declare-fun res!2837620 () Bool)

(assert (=> b!6954608 (=> (not res!2837620) (not e!4182182))))

(declare-fun lt!2478316 () Bool)

(assert (=> b!6954608 (= res!2837620 (not lt!2478316))))

(declare-fun b!6954609 () Bool)

(declare-fun e!4182183 () Bool)

(assert (=> b!6954609 (= e!4182183 (nullable!6859 lt!2478280))))

(declare-fun b!6954610 () Bool)

(declare-fun res!2837617 () Bool)

(assert (=> b!6954610 (=> res!2837617 e!4182180)))

(declare-fun e!4182186 () Bool)

(assert (=> b!6954610 (= res!2837617 e!4182186)))

(declare-fun res!2837621 () Bool)

(assert (=> b!6954610 (=> (not res!2837621) (not e!4182186))))

(assert (=> b!6954610 (= res!2837621 lt!2478316)))

(declare-fun bm!631580 () Bool)

(declare-fun call!631585 () Bool)

(assert (=> bm!631580 (= call!631585 (isEmpty!38913 (_2!37202 lt!2478281)))))

(declare-fun b!6954611 () Bool)

(declare-fun e!4182181 () Bool)

(assert (=> b!6954611 (= e!4182181 (not (= (head!13942 (_2!37202 lt!2478281)) (c!1289712 lt!2478280))))))

(declare-fun b!6954612 () Bool)

(assert (=> b!6954612 (= e!4182186 (= (head!13942 (_2!37202 lt!2478281)) (c!1289712 lt!2478280)))))

(declare-fun b!6954613 () Bool)

(declare-fun e!4182184 () Bool)

(assert (=> b!6954613 (= e!4182184 (not lt!2478316))))

(declare-fun b!6954614 () Bool)

(declare-fun res!2837624 () Bool)

(assert (=> b!6954614 (=> res!2837624 e!4182180)))

(assert (=> b!6954614 (= res!2837624 (not (is-ElementMatch!17046 lt!2478280)))))

(assert (=> b!6954614 (= e!4182184 e!4182180)))

(declare-fun b!6954616 () Bool)

(assert (=> b!6954616 (= e!4182183 (matchR!9158 (derivativeStep!5489 lt!2478280 (head!13942 (_2!37202 lt!2478281))) (tail!12994 (_2!37202 lt!2478281))))))

(declare-fun b!6954617 () Bool)

(declare-fun res!2837623 () Bool)

(assert (=> b!6954617 (=> (not res!2837623) (not e!4182186))))

(assert (=> b!6954617 (= res!2837623 (isEmpty!38913 (tail!12994 (_2!37202 lt!2478281))))))

(declare-fun b!6954618 () Bool)

(declare-fun res!2837622 () Bool)

(assert (=> b!6954618 (=> res!2837622 e!4182181)))

(assert (=> b!6954618 (= res!2837622 (not (isEmpty!38913 (tail!12994 (_2!37202 lt!2478281)))))))

(declare-fun b!6954619 () Bool)

(declare-fun res!2837619 () Bool)

(assert (=> b!6954619 (=> (not res!2837619) (not e!4182186))))

(assert (=> b!6954619 (= res!2837619 (not call!631585))))

(declare-fun b!6954620 () Bool)

(declare-fun e!4182185 () Bool)

(assert (=> b!6954620 (= e!4182185 (= lt!2478316 call!631585))))

(declare-fun b!6954621 () Bool)

(assert (=> b!6954621 (= e!4182185 e!4182184)))

(declare-fun c!1289764 () Bool)

(assert (=> b!6954621 (= c!1289764 (is-EmptyLang!17046 lt!2478280))))

(declare-fun d!2169411 () Bool)

(assert (=> d!2169411 e!4182185))

(declare-fun c!1289762 () Bool)

(assert (=> d!2169411 (= c!1289762 (is-EmptyExpr!17046 lt!2478280))))

(assert (=> d!2169411 (= lt!2478316 e!4182183)))

(declare-fun c!1289763 () Bool)

(assert (=> d!2169411 (= c!1289763 (isEmpty!38913 (_2!37202 lt!2478281)))))

(assert (=> d!2169411 (validRegex!8752 lt!2478280)))

(assert (=> d!2169411 (= (matchR!9158 lt!2478280 (_2!37202 lt!2478281)) lt!2478316)))

(declare-fun b!6954615 () Bool)

(assert (=> b!6954615 (= e!4182182 e!4182181)))

(declare-fun res!2837618 () Bool)

(assert (=> b!6954615 (=> res!2837618 e!4182181)))

(assert (=> b!6954615 (= res!2837618 call!631585)))

(assert (= (and d!2169411 c!1289763) b!6954609))

(assert (= (and d!2169411 (not c!1289763)) b!6954616))

(assert (= (and d!2169411 c!1289762) b!6954620))

(assert (= (and d!2169411 (not c!1289762)) b!6954621))

(assert (= (and b!6954621 c!1289764) b!6954613))

(assert (= (and b!6954621 (not c!1289764)) b!6954614))

(assert (= (and b!6954614 (not res!2837624)) b!6954610))

(assert (= (and b!6954610 res!2837621) b!6954619))

(assert (= (and b!6954619 res!2837619) b!6954617))

(assert (= (and b!6954617 res!2837623) b!6954612))

(assert (= (and b!6954610 (not res!2837617)) b!6954608))

(assert (= (and b!6954608 res!2837620) b!6954615))

(assert (= (and b!6954615 (not res!2837618)) b!6954618))

(assert (= (and b!6954618 (not res!2837622)) b!6954611))

(assert (= (or b!6954620 b!6954615 b!6954619) bm!631580))

(declare-fun m!7653712 () Bool)

(assert (=> b!6954611 m!7653712))

(assert (=> b!6954616 m!7653712))

(assert (=> b!6954616 m!7653712))

(declare-fun m!7653714 () Bool)

(assert (=> b!6954616 m!7653714))

(declare-fun m!7653716 () Bool)

(assert (=> b!6954616 m!7653716))

(assert (=> b!6954616 m!7653714))

(assert (=> b!6954616 m!7653716))

(declare-fun m!7653718 () Bool)

(assert (=> b!6954616 m!7653718))

(assert (=> b!6954617 m!7653716))

(assert (=> b!6954617 m!7653716))

(declare-fun m!7653720 () Bool)

(assert (=> b!6954617 m!7653720))

(assert (=> b!6954618 m!7653716))

(assert (=> b!6954618 m!7653716))

(assert (=> b!6954618 m!7653720))

(assert (=> d!2169411 m!7653690))

(declare-fun m!7653722 () Bool)

(assert (=> d!2169411 m!7653722))

(declare-fun m!7653724 () Bool)

(assert (=> b!6954609 m!7653724))

(assert (=> bm!631580 m!7653690))

(assert (=> b!6954612 m!7653712))

(assert (=> b!6954363 d!2169411))

(declare-fun d!2169413 () Bool)

(assert (=> d!2169413 (= (matchR!9158 lt!2478280 (_2!37202 lt!2478281)) (matchRSpec!4073 lt!2478280 (_2!37202 lt!2478281)))))

(declare-fun lt!2478317 () Unit!160764)

(assert (=> d!2169413 (= lt!2478317 (choose!51824 lt!2478280 (_2!37202 lt!2478281)))))

(assert (=> d!2169413 (validRegex!8752 lt!2478280)))

(assert (=> d!2169413 (= (mainMatchTheorem!4067 lt!2478280 (_2!37202 lt!2478281)) lt!2478317)))

(declare-fun bs!1857919 () Bool)

(assert (= bs!1857919 d!2169413))

(assert (=> bs!1857919 m!7653616))

(assert (=> bs!1857919 m!7653622))

(declare-fun m!7653726 () Bool)

(assert (=> bs!1857919 m!7653726))

(assert (=> bs!1857919 m!7653722))

(assert (=> b!6954363 d!2169413))

(declare-fun d!2169415 () Bool)

(declare-fun choose!51826 (Int) Bool)

(assert (=> d!2169415 (= (Exists!4042 lambda!396681) (choose!51826 lambda!396681))))

(declare-fun bs!1857920 () Bool)

(assert (= bs!1857920 d!2169415))

(declare-fun m!7653728 () Bool)

(assert (=> bs!1857920 m!7653728))

(assert (=> b!6954364 d!2169415))

(declare-fun b!6954633 () Bool)

(declare-fun e!4182189 () Bool)

(declare-fun tp!1917233 () Bool)

(declare-fun tp!1917232 () Bool)

(assert (=> b!6954633 (= e!4182189 (and tp!1917233 tp!1917232))))

(declare-fun b!6954635 () Bool)

(declare-fun tp!1917234 () Bool)

(declare-fun tp!1917235 () Bool)

(assert (=> b!6954635 (= e!4182189 (and tp!1917234 tp!1917235))))

(assert (=> b!6954367 (= tp!1917203 e!4182189)))

(declare-fun b!6954634 () Bool)

(declare-fun tp!1917236 () Bool)

(assert (=> b!6954634 (= e!4182189 tp!1917236)))

(declare-fun b!6954632 () Bool)

(assert (=> b!6954632 (= e!4182189 tp_is_empty!43317)))

(assert (= (and b!6954367 (is-ElementMatch!17046 (reg!17375 rInner!765))) b!6954632))

(assert (= (and b!6954367 (is-Concat!25891 (reg!17375 rInner!765))) b!6954633))

(assert (= (and b!6954367 (is-Star!17046 (reg!17375 rInner!765))) b!6954634))

(assert (= (and b!6954367 (is-Union!17046 (reg!17375 rInner!765))) b!6954635))

(declare-fun b!6954640 () Bool)

(declare-fun e!4182192 () Bool)

(declare-fun tp!1917239 () Bool)

(assert (=> b!6954640 (= e!4182192 (and tp_is_empty!43317 tp!1917239))))

(assert (=> b!6954366 (= tp!1917200 e!4182192)))

(assert (= (and b!6954366 (is-Cons!66675 (t!380542 s!10388))) b!6954640))

(declare-fun b!6954642 () Bool)

(declare-fun e!4182193 () Bool)

(declare-fun tp!1917241 () Bool)

(declare-fun tp!1917240 () Bool)

(assert (=> b!6954642 (= e!4182193 (and tp!1917241 tp!1917240))))

(declare-fun b!6954644 () Bool)

(declare-fun tp!1917242 () Bool)

(declare-fun tp!1917243 () Bool)

(assert (=> b!6954644 (= e!4182193 (and tp!1917242 tp!1917243))))

(assert (=> b!6954362 (= tp!1917198 e!4182193)))

(declare-fun b!6954643 () Bool)

(declare-fun tp!1917244 () Bool)

(assert (=> b!6954643 (= e!4182193 tp!1917244)))

(declare-fun b!6954641 () Bool)

(assert (=> b!6954641 (= e!4182193 tp_is_empty!43317)))

(assert (= (and b!6954362 (is-ElementMatch!17046 (regOne!34605 rInner!765))) b!6954641))

(assert (= (and b!6954362 (is-Concat!25891 (regOne!34605 rInner!765))) b!6954642))

(assert (= (and b!6954362 (is-Star!17046 (regOne!34605 rInner!765))) b!6954643))

(assert (= (and b!6954362 (is-Union!17046 (regOne!34605 rInner!765))) b!6954644))

(declare-fun b!6954646 () Bool)

(declare-fun e!4182194 () Bool)

(declare-fun tp!1917246 () Bool)

(declare-fun tp!1917245 () Bool)

(assert (=> b!6954646 (= e!4182194 (and tp!1917246 tp!1917245))))

(declare-fun b!6954648 () Bool)

(declare-fun tp!1917247 () Bool)

(declare-fun tp!1917248 () Bool)

(assert (=> b!6954648 (= e!4182194 (and tp!1917247 tp!1917248))))

(assert (=> b!6954362 (= tp!1917202 e!4182194)))

(declare-fun b!6954647 () Bool)

(declare-fun tp!1917249 () Bool)

(assert (=> b!6954647 (= e!4182194 tp!1917249)))

(declare-fun b!6954645 () Bool)

(assert (=> b!6954645 (= e!4182194 tp_is_empty!43317)))

(assert (= (and b!6954362 (is-ElementMatch!17046 (regTwo!34605 rInner!765))) b!6954645))

(assert (= (and b!6954362 (is-Concat!25891 (regTwo!34605 rInner!765))) b!6954646))

(assert (= (and b!6954362 (is-Star!17046 (regTwo!34605 rInner!765))) b!6954647))

(assert (= (and b!6954362 (is-Union!17046 (regTwo!34605 rInner!765))) b!6954648))

(declare-fun b!6954650 () Bool)

(declare-fun e!4182195 () Bool)

(declare-fun tp!1917251 () Bool)

(declare-fun tp!1917250 () Bool)

(assert (=> b!6954650 (= e!4182195 (and tp!1917251 tp!1917250))))

(declare-fun b!6954652 () Bool)

(declare-fun tp!1917252 () Bool)

(declare-fun tp!1917253 () Bool)

(assert (=> b!6954652 (= e!4182195 (and tp!1917252 tp!1917253))))

(assert (=> b!6954369 (= tp!1917201 e!4182195)))

(declare-fun b!6954651 () Bool)

(declare-fun tp!1917254 () Bool)

(assert (=> b!6954651 (= e!4182195 tp!1917254)))

(declare-fun b!6954649 () Bool)

(assert (=> b!6954649 (= e!4182195 tp_is_empty!43317)))

(assert (= (and b!6954369 (is-ElementMatch!17046 (regOne!34604 rInner!765))) b!6954649))

(assert (= (and b!6954369 (is-Concat!25891 (regOne!34604 rInner!765))) b!6954650))

(assert (= (and b!6954369 (is-Star!17046 (regOne!34604 rInner!765))) b!6954651))

(assert (= (and b!6954369 (is-Union!17046 (regOne!34604 rInner!765))) b!6954652))

(declare-fun b!6954654 () Bool)

(declare-fun e!4182196 () Bool)

(declare-fun tp!1917256 () Bool)

(declare-fun tp!1917255 () Bool)

(assert (=> b!6954654 (= e!4182196 (and tp!1917256 tp!1917255))))

(declare-fun b!6954656 () Bool)

(declare-fun tp!1917257 () Bool)

(declare-fun tp!1917258 () Bool)

(assert (=> b!6954656 (= e!4182196 (and tp!1917257 tp!1917258))))

(assert (=> b!6954369 (= tp!1917199 e!4182196)))

(declare-fun b!6954655 () Bool)

(declare-fun tp!1917259 () Bool)

(assert (=> b!6954655 (= e!4182196 tp!1917259)))

(declare-fun b!6954653 () Bool)

(assert (=> b!6954653 (= e!4182196 tp_is_empty!43317)))

(assert (= (and b!6954369 (is-ElementMatch!17046 (regTwo!34604 rInner!765))) b!6954653))

(assert (= (and b!6954369 (is-Concat!25891 (regTwo!34604 rInner!765))) b!6954654))

(assert (= (and b!6954369 (is-Star!17046 (regTwo!34604 rInner!765))) b!6954655))

(assert (= (and b!6954369 (is-Union!17046 (regTwo!34604 rInner!765))) b!6954656))

(declare-fun b_lambda!260435 () Bool)

(assert (= b_lambda!260433 (or b!6954364 b_lambda!260435)))

(declare-fun bs!1857921 () Bool)

(declare-fun d!2169417 () Bool)

(assert (= bs!1857921 (and d!2169417 b!6954364)))

(declare-fun res!2837625 () Bool)

(declare-fun e!4182197 () Bool)

(assert (=> bs!1857921 (=> (not res!2837625) (not e!4182197))))

(assert (=> bs!1857921 (= res!2837625 (= (++!15077 (_1!37202 lt!2478309) (_2!37202 lt!2478309)) s!10388))))

(assert (=> bs!1857921 (= (dynLambda!26588 lambda!396681 lt!2478309) e!4182197)))

(declare-fun b!6954657 () Bool)

(declare-fun res!2837626 () Bool)

(assert (=> b!6954657 (=> (not res!2837626) (not e!4182197))))

(assert (=> b!6954657 (= res!2837626 (matchR!9158 rInner!765 (_1!37202 lt!2478309)))))

(declare-fun b!6954658 () Bool)

(assert (=> b!6954658 (= e!4182197 (matchR!9158 (Star!17046 rInner!765) (_2!37202 lt!2478309)))))

(assert (= (and bs!1857921 res!2837625) b!6954657))

(assert (= (and b!6954657 res!2837626) b!6954658))

(declare-fun m!7653730 () Bool)

(assert (=> bs!1857921 m!7653730))

(declare-fun m!7653732 () Bool)

(assert (=> b!6954657 m!7653732))

(declare-fun m!7653734 () Bool)

(assert (=> b!6954658 m!7653734))

(assert (=> d!2169399 d!2169417))

(push 1)

(assert (not b!6954617))

(assert (not b!6954657))

(assert (not b!6954451))

(assert (not b!6954433))

(assert (not bm!631580))

(assert (not b!6954633))

(assert (not bm!631578))

(assert (not b!6954616))

(assert (not b!6954642))

(assert (not b!6954593))

(assert (not b!6954609))

(assert (not b!6954656))

(assert (not b!6954655))

(assert (not b!6954580))

(assert (not d!2169401))

(assert (not b!6954654))

(assert (not b!6954646))

(assert (not bm!631558))

(assert (not bm!631579))

(assert (not b!6954612))

(assert (not d!2169399))

(assert (not d!2169413))

(assert (not b!6954650))

(assert (not d!2169393))

(assert (not b!6954644))

(assert (not b!6954647))

(assert (not b!6954512))

(assert (not b!6954611))

(assert (not bm!631557))

(assert (not b!6954589))

(assert (not bs!1857921))

(assert (not b_lambda!260435))

(assert (not b!6954618))

(assert (not d!2169411))

(assert (not b!6954517))

(assert (not b!6954583))

(assert (not b!6954643))

(assert (not b!6954651))

(assert tp_is_empty!43317)

(assert (not d!2169391))

(assert (not b!6954652))

(assert (not bm!631577))

(assert (not b!6954582))

(assert (not b!6954640))

(assert (not bm!631574))

(assert (not b!6954635))

(assert (not b!6954450))

(assert (not b!6954588))

(assert (not d!2169407))

(assert (not d!2169415))

(assert (not b!6954634))

(assert (not bm!631573))

(assert (not b!6954648))

(assert (not b!6954658))

(assert (not b!6954587))

(assert (not b!6954598))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

