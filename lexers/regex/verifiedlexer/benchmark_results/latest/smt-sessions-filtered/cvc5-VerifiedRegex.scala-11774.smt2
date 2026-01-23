; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!664100 () Bool)

(assert start!664100)

(declare-fun b!6886639 () Bool)

(assert (=> b!6886639 true))

(assert (=> b!6886639 true))

(assert (=> b!6886639 true))

(declare-fun lambda!390116 () Int)

(declare-fun lambda!390115 () Int)

(assert (=> b!6886639 (not (= lambda!390116 lambda!390115))))

(assert (=> b!6886639 true))

(assert (=> b!6886639 true))

(assert (=> b!6886639 true))

(declare-fun bs!1838636 () Bool)

(declare-fun b!6886638 () Bool)

(assert (= bs!1838636 (and b!6886638 b!6886639)))

(declare-datatypes ((C!33858 0))(
  ( (C!33859 (val!26631 Int)) )
))
(declare-datatypes ((List!66551 0))(
  ( (Nil!66427) (Cons!66427 (h!72875 C!33858) (t!380294 List!66551)) )
))
(declare-datatypes ((tuple2!67334 0))(
  ( (tuple2!67335 (_1!36970 List!66551) (_2!36970 List!66551)) )
))
(declare-fun lt!2461471 () tuple2!67334)

(declare-datatypes ((Regex!16794 0))(
  ( (ElementMatch!16794 (c!1280626 C!33858)) (Concat!25639 (regOne!34100 Regex!16794) (regTwo!34100 Regex!16794)) (EmptyExpr!16794) (Star!16794 (reg!17123 Regex!16794)) (EmptyLang!16794) (Union!16794 (regOne!34101 Regex!16794) (regTwo!34101 Regex!16794)) )
))
(declare-fun r1!6342 () Regex!16794)

(declare-fun lambda!390117 () Int)

(declare-fun r3!135 () Regex!16794)

(declare-fun lt!2461482 () Regex!16794)

(declare-fun s!14361 () List!66551)

(declare-fun r2!6280 () Regex!16794)

(assert (=> bs!1838636 (= (and (= (_1!36970 lt!2461471) s!14361) (= r1!6342 lt!2461482) (= r2!6280 r3!135)) (= lambda!390117 lambda!390115))))

(assert (=> bs!1838636 (not (= lambda!390117 lambda!390116))))

(assert (=> b!6886638 true))

(assert (=> b!6886638 true))

(assert (=> b!6886638 true))

(declare-fun lambda!390118 () Int)

(assert (=> bs!1838636 (not (= lambda!390118 lambda!390115))))

(assert (=> bs!1838636 (= (and (= (_1!36970 lt!2461471) s!14361) (= r1!6342 lt!2461482) (= r2!6280 r3!135)) (= lambda!390118 lambda!390116))))

(assert (=> b!6886638 (not (= lambda!390118 lambda!390117))))

(assert (=> b!6886638 true))

(assert (=> b!6886638 true))

(assert (=> b!6886638 true))

(declare-fun bs!1838637 () Bool)

(declare-fun b!6886631 () Bool)

(assert (= bs!1838637 (and b!6886631 b!6886639)))

(declare-fun lt!2461474 () List!66551)

(declare-fun lambda!390119 () Int)

(assert (=> bs!1838637 (= (and (= lt!2461474 s!14361) (= r2!6280 lt!2461482)) (= lambda!390119 lambda!390115))))

(assert (=> bs!1838637 (not (= lambda!390119 lambda!390116))))

(declare-fun bs!1838638 () Bool)

(assert (= bs!1838638 (and b!6886631 b!6886638)))

(assert (=> bs!1838638 (= (and (= lt!2461474 (_1!36970 lt!2461471)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!390119 lambda!390117))))

(assert (=> bs!1838638 (not (= lambda!390119 lambda!390118))))

(assert (=> b!6886631 true))

(assert (=> b!6886631 true))

(assert (=> b!6886631 true))

(declare-fun lambda!390120 () Int)

(assert (=> bs!1838637 (= (and (= lt!2461474 s!14361) (= r2!6280 lt!2461482)) (= lambda!390120 lambda!390116))))

(assert (=> bs!1838638 (not (= lambda!390120 lambda!390117))))

(assert (=> bs!1838638 (= (and (= lt!2461474 (_1!36970 lt!2461471)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!390120 lambda!390118))))

(assert (=> bs!1838637 (not (= lambda!390120 lambda!390115))))

(assert (=> b!6886631 (not (= lambda!390120 lambda!390119))))

(assert (=> b!6886631 true))

(assert (=> b!6886631 true))

(assert (=> b!6886631 true))

(declare-fun b!6886620 () Bool)

(declare-fun e!4149177 () Bool)

(declare-fun tp_is_empty!42813 () Bool)

(assert (=> b!6886620 (= e!4149177 tp_is_empty!42813)))

(declare-fun b!6886621 () Bool)

(declare-fun e!4149175 () Bool)

(declare-fun tp!1894688 () Bool)

(assert (=> b!6886621 (= e!4149175 tp!1894688)))

(declare-fun b!6886622 () Bool)

(declare-fun e!4149178 () Bool)

(declare-fun tp!1894689 () Bool)

(assert (=> b!6886622 (= e!4149178 (and tp_is_empty!42813 tp!1894689))))

(declare-fun b!6886623 () Bool)

(assert (=> b!6886623 (= e!4149175 tp_is_empty!42813)))

(declare-fun b!6886624 () Bool)

(declare-fun e!4149179 () Bool)

(declare-fun e!4149173 () Bool)

(assert (=> b!6886624 (= e!4149179 e!4149173)))

(declare-fun res!2807489 () Bool)

(assert (=> b!6886624 (=> res!2807489 e!4149173)))

(declare-fun lt!2461484 () tuple2!67334)

(declare-fun ++!14873 (List!66551 List!66551) List!66551)

(assert (=> b!6886624 (= res!2807489 (not (= (++!14873 (++!14873 (_1!36970 lt!2461484) (_2!36970 lt!2461484)) (_2!36970 lt!2461471)) s!14361)))))

(declare-fun matchRSpec!3857 (Regex!16794 List!66551) Bool)

(assert (=> b!6886624 (matchRSpec!3857 r2!6280 (_2!36970 lt!2461484))))

(declare-datatypes ((Unit!160308 0))(
  ( (Unit!160309) )
))
(declare-fun lt!2461494 () Unit!160308)

(declare-fun mainMatchTheorem!3857 (Regex!16794 List!66551) Unit!160308)

(assert (=> b!6886624 (= lt!2461494 (mainMatchTheorem!3857 r2!6280 (_2!36970 lt!2461484)))))

(assert (=> b!6886624 (matchRSpec!3857 r1!6342 (_1!36970 lt!2461484))))

(declare-fun lt!2461487 () Unit!160308)

(assert (=> b!6886624 (= lt!2461487 (mainMatchTheorem!3857 r1!6342 (_1!36970 lt!2461484)))))

(declare-fun res!2807486 () Bool)

(declare-fun e!4149176 () Bool)

(assert (=> start!664100 (=> (not res!2807486) (not e!4149176))))

(declare-fun validRegex!8502 (Regex!16794) Bool)

(assert (=> start!664100 (= res!2807486 (validRegex!8502 r1!6342))))

(assert (=> start!664100 e!4149176))

(declare-fun e!4149172 () Bool)

(assert (=> start!664100 e!4149172))

(assert (=> start!664100 e!4149175))

(assert (=> start!664100 e!4149177))

(assert (=> start!664100 e!4149178))

(declare-fun b!6886625 () Bool)

(declare-fun tp!1894686 () Bool)

(declare-fun tp!1894681 () Bool)

(assert (=> b!6886625 (= e!4149172 (and tp!1894686 tp!1894681))))

(declare-fun b!6886626 () Bool)

(declare-fun res!2807485 () Bool)

(assert (=> b!6886626 (=> (not res!2807485) (not e!4149176))))

(assert (=> b!6886626 (= res!2807485 (validRegex!8502 r3!135))))

(declare-fun b!6886627 () Bool)

(declare-fun e!4149171 () Bool)

(assert (=> b!6886627 (= e!4149176 (not e!4149171))))

(declare-fun res!2807490 () Bool)

(assert (=> b!6886627 (=> res!2807490 e!4149171)))

(declare-fun lt!2461486 () Bool)

(assert (=> b!6886627 (= res!2807490 (not lt!2461486))))

(declare-fun lt!2461476 () Regex!16794)

(declare-fun matchR!8939 (Regex!16794 List!66551) Bool)

(assert (=> b!6886627 (= (matchR!8939 lt!2461476 s!14361) (matchRSpec!3857 lt!2461476 s!14361))))

(declare-fun lt!2461472 () Unit!160308)

(assert (=> b!6886627 (= lt!2461472 (mainMatchTheorem!3857 lt!2461476 s!14361))))

(declare-fun lt!2461493 () Regex!16794)

(assert (=> b!6886627 (= lt!2461486 (matchRSpec!3857 lt!2461493 s!14361))))

(assert (=> b!6886627 (= lt!2461486 (matchR!8939 lt!2461493 s!14361))))

(declare-fun lt!2461488 () Unit!160308)

(assert (=> b!6886627 (= lt!2461488 (mainMatchTheorem!3857 lt!2461493 s!14361))))

(declare-fun lt!2461480 () Regex!16794)

(assert (=> b!6886627 (= lt!2461476 (Concat!25639 r1!6342 lt!2461480))))

(assert (=> b!6886627 (= lt!2461480 (Concat!25639 r2!6280 r3!135))))

(assert (=> b!6886627 (= lt!2461493 (Concat!25639 lt!2461482 r3!135))))

(assert (=> b!6886627 (= lt!2461482 (Concat!25639 r1!6342 r2!6280))))

(declare-fun b!6886628 () Bool)

(declare-fun tp!1894695 () Bool)

(declare-fun tp!1894693 () Bool)

(assert (=> b!6886628 (= e!4149177 (and tp!1894695 tp!1894693))))

(declare-fun b!6886629 () Bool)

(declare-fun tp!1894690 () Bool)

(assert (=> b!6886629 (= e!4149172 tp!1894690)))

(declare-fun b!6886630 () Bool)

(declare-fun tp!1894683 () Bool)

(declare-fun tp!1894685 () Bool)

(assert (=> b!6886630 (= e!4149172 (and tp!1894683 tp!1894685))))

(assert (=> b!6886631 (= e!4149173 (validRegex!8502 lt!2461480))))

(declare-fun lt!2461478 () Bool)

(assert (=> b!6886631 lt!2461478))

(declare-fun lt!2461491 () Unit!160308)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!41 (Regex!16794 Regex!16794 List!66551 List!66551 List!66551 List!66551 List!66551) Unit!160308)

(assert (=> b!6886631 (= lt!2461491 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!41 r2!6280 r3!135 (_2!36970 lt!2461484) (_2!36970 lt!2461471) lt!2461474 Nil!66427 lt!2461474))))

(declare-fun Exists!3806 (Int) Bool)

(assert (=> b!6886631 (= (Exists!3806 lambda!390119) (Exists!3806 lambda!390120))))

(declare-fun lt!2461489 () Unit!160308)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2285 (Regex!16794 Regex!16794 List!66551) Unit!160308)

(assert (=> b!6886631 (= lt!2461489 (lemmaExistCutMatchRandMatchRSpecEquivalent!2285 r2!6280 r3!135 lt!2461474))))

(assert (=> b!6886631 (= lt!2461478 (Exists!3806 lambda!390119))))

(declare-datatypes ((Option!16579 0))(
  ( (None!16578) (Some!16578 (v!52850 tuple2!67334)) )
))
(declare-fun isDefined!13282 (Option!16579) Bool)

(declare-fun findConcatSeparation!2993 (Regex!16794 Regex!16794 List!66551 List!66551 List!66551) Option!16579)

(assert (=> b!6886631 (= lt!2461478 (isDefined!13282 (findConcatSeparation!2993 r2!6280 r3!135 Nil!66427 lt!2461474 lt!2461474)))))

(declare-fun lt!2461492 () Unit!160308)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2757 (Regex!16794 Regex!16794 List!66551) Unit!160308)

(assert (=> b!6886631 (= lt!2461492 (lemmaFindConcatSeparationEquivalentToExists!2757 r2!6280 r3!135 lt!2461474))))

(assert (=> b!6886631 (= (matchR!8939 lt!2461480 lt!2461474) (matchRSpec!3857 lt!2461480 lt!2461474))))

(declare-fun lt!2461485 () Unit!160308)

(assert (=> b!6886631 (= lt!2461485 (mainMatchTheorem!3857 lt!2461480 lt!2461474))))

(assert (=> b!6886631 (= lt!2461474 (++!14873 (_2!36970 lt!2461484) (_2!36970 lt!2461471)))))

(declare-fun b!6886632 () Bool)

(declare-fun res!2807483 () Bool)

(assert (=> b!6886632 (=> (not res!2807483) (not e!4149176))))

(assert (=> b!6886632 (= res!2807483 (validRegex!8502 r2!6280))))

(declare-fun b!6886633 () Bool)

(declare-fun res!2807487 () Bool)

(assert (=> b!6886633 (=> res!2807487 e!4149179)))

(assert (=> b!6886633 (= res!2807487 (not (matchR!8939 r2!6280 (_2!36970 lt!2461484))))))

(declare-fun b!6886634 () Bool)

(assert (=> b!6886634 (= e!4149172 tp_is_empty!42813)))

(declare-fun b!6886635 () Bool)

(declare-fun tp!1894691 () Bool)

(declare-fun tp!1894684 () Bool)

(assert (=> b!6886635 (= e!4149175 (and tp!1894691 tp!1894684))))

(declare-fun b!6886636 () Bool)

(declare-fun tp!1894694 () Bool)

(declare-fun tp!1894682 () Bool)

(assert (=> b!6886636 (= e!4149177 (and tp!1894694 tp!1894682))))

(declare-fun b!6886637 () Bool)

(declare-fun tp!1894680 () Bool)

(declare-fun tp!1894687 () Bool)

(assert (=> b!6886637 (= e!4149175 (and tp!1894680 tp!1894687))))

(declare-fun e!4149174 () Bool)

(assert (=> b!6886638 (= e!4149174 e!4149179)))

(declare-fun res!2807484 () Bool)

(assert (=> b!6886638 (=> res!2807484 e!4149179)))

(assert (=> b!6886638 (= res!2807484 (not (matchR!8939 r1!6342 (_1!36970 lt!2461484))))))

(declare-fun lt!2461475 () Option!16579)

(declare-fun get!23154 (Option!16579) tuple2!67334)

(assert (=> b!6886638 (= lt!2461484 (get!23154 lt!2461475))))

(assert (=> b!6886638 (= (Exists!3806 lambda!390117) (Exists!3806 lambda!390118))))

(declare-fun lt!2461473 () Unit!160308)

(assert (=> b!6886638 (= lt!2461473 (lemmaExistCutMatchRandMatchRSpecEquivalent!2285 r1!6342 r2!6280 (_1!36970 lt!2461471)))))

(assert (=> b!6886638 (= (isDefined!13282 lt!2461475) (Exists!3806 lambda!390117))))

(assert (=> b!6886638 (= lt!2461475 (findConcatSeparation!2993 r1!6342 r2!6280 Nil!66427 (_1!36970 lt!2461471) (_1!36970 lt!2461471)))))

(declare-fun lt!2461483 () Unit!160308)

(assert (=> b!6886638 (= lt!2461483 (lemmaFindConcatSeparationEquivalentToExists!2757 r1!6342 r2!6280 (_1!36970 lt!2461471)))))

(assert (=> b!6886639 (= e!4149171 e!4149174)))

(declare-fun res!2807491 () Bool)

(assert (=> b!6886639 (=> res!2807491 e!4149174)))

(declare-fun lt!2461481 () Bool)

(assert (=> b!6886639 (= res!2807491 (not lt!2461481))))

(assert (=> b!6886639 (= lt!2461481 (matchRSpec!3857 lt!2461482 (_1!36970 lt!2461471)))))

(assert (=> b!6886639 (= lt!2461481 (matchR!8939 lt!2461482 (_1!36970 lt!2461471)))))

(declare-fun lt!2461470 () Unit!160308)

(assert (=> b!6886639 (= lt!2461470 (mainMatchTheorem!3857 lt!2461482 (_1!36970 lt!2461471)))))

(declare-fun lt!2461477 () Option!16579)

(assert (=> b!6886639 (= lt!2461471 (get!23154 lt!2461477))))

(assert (=> b!6886639 (= (Exists!3806 lambda!390115) (Exists!3806 lambda!390116))))

(declare-fun lt!2461490 () Unit!160308)

(assert (=> b!6886639 (= lt!2461490 (lemmaExistCutMatchRandMatchRSpecEquivalent!2285 lt!2461482 r3!135 s!14361))))

(assert (=> b!6886639 (= (isDefined!13282 lt!2461477) (Exists!3806 lambda!390115))))

(assert (=> b!6886639 (= lt!2461477 (findConcatSeparation!2993 lt!2461482 r3!135 Nil!66427 s!14361 s!14361))))

(declare-fun lt!2461479 () Unit!160308)

(assert (=> b!6886639 (= lt!2461479 (lemmaFindConcatSeparationEquivalentToExists!2757 lt!2461482 r3!135 s!14361))))

(declare-fun b!6886640 () Bool)

(declare-fun tp!1894692 () Bool)

(assert (=> b!6886640 (= e!4149177 tp!1894692)))

(declare-fun b!6886641 () Bool)

(declare-fun res!2807488 () Bool)

(assert (=> b!6886641 (=> res!2807488 e!4149174)))

(assert (=> b!6886641 (= res!2807488 (not (matchR!8939 r3!135 (_2!36970 lt!2461471))))))

(assert (= (and start!664100 res!2807486) b!6886632))

(assert (= (and b!6886632 res!2807483) b!6886626))

(assert (= (and b!6886626 res!2807485) b!6886627))

(assert (= (and b!6886627 (not res!2807490)) b!6886639))

(assert (= (and b!6886639 (not res!2807491)) b!6886641))

(assert (= (and b!6886641 (not res!2807488)) b!6886638))

(assert (= (and b!6886638 (not res!2807484)) b!6886633))

(assert (= (and b!6886633 (not res!2807487)) b!6886624))

(assert (= (and b!6886624 (not res!2807489)) b!6886631))

(assert (= (and start!664100 (is-ElementMatch!16794 r1!6342)) b!6886634))

(assert (= (and start!664100 (is-Concat!25639 r1!6342)) b!6886625))

(assert (= (and start!664100 (is-Star!16794 r1!6342)) b!6886629))

(assert (= (and start!664100 (is-Union!16794 r1!6342)) b!6886630))

(assert (= (and start!664100 (is-ElementMatch!16794 r2!6280)) b!6886623))

(assert (= (and start!664100 (is-Concat!25639 r2!6280)) b!6886635))

(assert (= (and start!664100 (is-Star!16794 r2!6280)) b!6886621))

(assert (= (and start!664100 (is-Union!16794 r2!6280)) b!6886637))

(assert (= (and start!664100 (is-ElementMatch!16794 r3!135)) b!6886620))

(assert (= (and start!664100 (is-Concat!25639 r3!135)) b!6886636))

(assert (= (and start!664100 (is-Star!16794 r3!135)) b!6886640))

(assert (= (and start!664100 (is-Union!16794 r3!135)) b!6886628))

(assert (= (and start!664100 (is-Cons!66427 s!14361)) b!6886622))

(declare-fun m!7609452 () Bool)

(assert (=> b!6886638 m!7609452))

(declare-fun m!7609454 () Bool)

(assert (=> b!6886638 m!7609454))

(declare-fun m!7609456 () Bool)

(assert (=> b!6886638 m!7609456))

(declare-fun m!7609458 () Bool)

(assert (=> b!6886638 m!7609458))

(declare-fun m!7609460 () Bool)

(assert (=> b!6886638 m!7609460))

(declare-fun m!7609462 () Bool)

(assert (=> b!6886638 m!7609462))

(declare-fun m!7609464 () Bool)

(assert (=> b!6886638 m!7609464))

(assert (=> b!6886638 m!7609456))

(declare-fun m!7609466 () Bool)

(assert (=> b!6886638 m!7609466))

(declare-fun m!7609468 () Bool)

(assert (=> b!6886627 m!7609468))

(declare-fun m!7609470 () Bool)

(assert (=> b!6886627 m!7609470))

(declare-fun m!7609472 () Bool)

(assert (=> b!6886627 m!7609472))

(declare-fun m!7609474 () Bool)

(assert (=> b!6886627 m!7609474))

(declare-fun m!7609476 () Bool)

(assert (=> b!6886627 m!7609476))

(declare-fun m!7609478 () Bool)

(assert (=> b!6886627 m!7609478))

(declare-fun m!7609480 () Bool)

(assert (=> start!664100 m!7609480))

(declare-fun m!7609482 () Bool)

(assert (=> b!6886626 m!7609482))

(declare-fun m!7609484 () Bool)

(assert (=> b!6886632 m!7609484))

(declare-fun m!7609486 () Bool)

(assert (=> b!6886624 m!7609486))

(declare-fun m!7609488 () Bool)

(assert (=> b!6886624 m!7609488))

(declare-fun m!7609490 () Bool)

(assert (=> b!6886624 m!7609490))

(declare-fun m!7609492 () Bool)

(assert (=> b!6886624 m!7609492))

(assert (=> b!6886624 m!7609490))

(declare-fun m!7609494 () Bool)

(assert (=> b!6886624 m!7609494))

(declare-fun m!7609496 () Bool)

(assert (=> b!6886624 m!7609496))

(declare-fun m!7609498 () Bool)

(assert (=> b!6886631 m!7609498))

(declare-fun m!7609500 () Bool)

(assert (=> b!6886631 m!7609500))

(declare-fun m!7609502 () Bool)

(assert (=> b!6886631 m!7609502))

(declare-fun m!7609504 () Bool)

(assert (=> b!6886631 m!7609504))

(declare-fun m!7609506 () Bool)

(assert (=> b!6886631 m!7609506))

(assert (=> b!6886631 m!7609498))

(declare-fun m!7609508 () Bool)

(assert (=> b!6886631 m!7609508))

(declare-fun m!7609510 () Bool)

(assert (=> b!6886631 m!7609510))

(declare-fun m!7609512 () Bool)

(assert (=> b!6886631 m!7609512))

(declare-fun m!7609514 () Bool)

(assert (=> b!6886631 m!7609514))

(declare-fun m!7609516 () Bool)

(assert (=> b!6886631 m!7609516))

(declare-fun m!7609518 () Bool)

(assert (=> b!6886631 m!7609518))

(declare-fun m!7609520 () Bool)

(assert (=> b!6886631 m!7609520))

(assert (=> b!6886631 m!7609502))

(declare-fun m!7609522 () Bool)

(assert (=> b!6886639 m!7609522))

(declare-fun m!7609524 () Bool)

(assert (=> b!6886639 m!7609524))

(declare-fun m!7609526 () Bool)

(assert (=> b!6886639 m!7609526))

(declare-fun m!7609528 () Bool)

(assert (=> b!6886639 m!7609528))

(declare-fun m!7609530 () Bool)

(assert (=> b!6886639 m!7609530))

(declare-fun m!7609532 () Bool)

(assert (=> b!6886639 m!7609532))

(declare-fun m!7609534 () Bool)

(assert (=> b!6886639 m!7609534))

(assert (=> b!6886639 m!7609530))

(declare-fun m!7609536 () Bool)

(assert (=> b!6886639 m!7609536))

(declare-fun m!7609538 () Bool)

(assert (=> b!6886639 m!7609538))

(declare-fun m!7609540 () Bool)

(assert (=> b!6886639 m!7609540))

(declare-fun m!7609542 () Bool)

(assert (=> b!6886641 m!7609542))

(declare-fun m!7609544 () Bool)

(assert (=> b!6886633 m!7609544))

(push 1)

(assert (not b!6886629))

(assert (not b!6886624))

(assert (not b!6886627))

(assert (not b!6886640))

(assert (not b!6886637))

(assert (not b!6886635))

(assert (not b!6886632))

(assert (not b!6886621))

(assert (not b!6886633))

(assert (not b!6886626))

(assert (not b!6886625))

(assert (not b!6886641))

(assert (not b!6886631))

(assert (not b!6886630))

(assert (not b!6886622))

(assert (not b!6886638))

(assert tp_is_empty!42813)

(assert (not start!664100))

(assert (not b!6886639))

(assert (not b!6886636))

(assert (not b!6886628))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2160453 () Bool)

(declare-fun isEmpty!38684 (Option!16579) Bool)

(assert (=> d!2160453 (= (isDefined!13282 (findConcatSeparation!2993 r2!6280 r3!135 Nil!66427 lt!2461474 lt!2461474)) (not (isEmpty!38684 (findConcatSeparation!2993 r2!6280 r3!135 Nil!66427 lt!2461474 lt!2461474))))))

(declare-fun bs!1838642 () Bool)

(assert (= bs!1838642 d!2160453))

(assert (=> bs!1838642 m!7609498))

(declare-fun m!7609640 () Bool)

(assert (=> bs!1838642 m!7609640))

(assert (=> b!6886631 d!2160453))

(declare-fun d!2160455 () Bool)

(declare-fun choose!51282 (Int) Bool)

(assert (=> d!2160455 (= (Exists!3806 lambda!390119) (choose!51282 lambda!390119))))

(declare-fun bs!1838643 () Bool)

(assert (= bs!1838643 d!2160455))

(declare-fun m!7609642 () Bool)

(assert (=> bs!1838643 m!7609642))

(assert (=> b!6886631 d!2160455))

(declare-fun bm!626733 () Bool)

(declare-fun call!626738 () Bool)

(declare-fun c!1280632 () Bool)

(assert (=> bm!626733 (= call!626738 (validRegex!8502 (ite c!1280632 (regTwo!34101 lt!2461480) (regOne!34100 lt!2461480))))))

(declare-fun bm!626734 () Bool)

(declare-fun call!626739 () Bool)

(declare-fun call!626740 () Bool)

(assert (=> bm!626734 (= call!626739 call!626740)))

(declare-fun b!6886774 () Bool)

(declare-fun e!4149239 () Bool)

(declare-fun e!4149244 () Bool)

(assert (=> b!6886774 (= e!4149239 e!4149244)))

(declare-fun res!2807568 () Bool)

(declare-fun nullable!6683 (Regex!16794) Bool)

(assert (=> b!6886774 (= res!2807568 (not (nullable!6683 (reg!17123 lt!2461480))))))

(assert (=> b!6886774 (=> (not res!2807568) (not e!4149244))))

(declare-fun d!2160457 () Bool)

(declare-fun res!2807566 () Bool)

(declare-fun e!4149241 () Bool)

(assert (=> d!2160457 (=> res!2807566 e!4149241)))

(assert (=> d!2160457 (= res!2807566 (is-ElementMatch!16794 lt!2461480))))

(assert (=> d!2160457 (= (validRegex!8502 lt!2461480) e!4149241)))

(declare-fun b!6886775 () Bool)

(declare-fun e!4149242 () Bool)

(assert (=> b!6886775 (= e!4149242 call!626739)))

(declare-fun b!6886776 () Bool)

(declare-fun res!2807569 () Bool)

(declare-fun e!4149245 () Bool)

(assert (=> b!6886776 (=> res!2807569 e!4149245)))

(assert (=> b!6886776 (= res!2807569 (not (is-Concat!25639 lt!2461480)))))

(declare-fun e!4149240 () Bool)

(assert (=> b!6886776 (= e!4149240 e!4149245)))

(declare-fun bm!626735 () Bool)

(declare-fun c!1280633 () Bool)

(assert (=> bm!626735 (= call!626740 (validRegex!8502 (ite c!1280633 (reg!17123 lt!2461480) (ite c!1280632 (regOne!34101 lt!2461480) (regTwo!34100 lt!2461480)))))))

(declare-fun b!6886777 () Bool)

(declare-fun e!4149243 () Bool)

(assert (=> b!6886777 (= e!4149243 call!626738)))

(declare-fun b!6886778 () Bool)

(assert (=> b!6886778 (= e!4149239 e!4149240)))

(assert (=> b!6886778 (= c!1280632 (is-Union!16794 lt!2461480))))

(declare-fun b!6886779 () Bool)

(assert (=> b!6886779 (= e!4149244 call!626740)))

(declare-fun b!6886780 () Bool)

(assert (=> b!6886780 (= e!4149245 e!4149242)))

(declare-fun res!2807565 () Bool)

(assert (=> b!6886780 (=> (not res!2807565) (not e!4149242))))

(assert (=> b!6886780 (= res!2807565 call!626738)))

(declare-fun b!6886781 () Bool)

(assert (=> b!6886781 (= e!4149241 e!4149239)))

(assert (=> b!6886781 (= c!1280633 (is-Star!16794 lt!2461480))))

(declare-fun b!6886782 () Bool)

(declare-fun res!2807567 () Bool)

(assert (=> b!6886782 (=> (not res!2807567) (not e!4149243))))

(assert (=> b!6886782 (= res!2807567 call!626739)))

(assert (=> b!6886782 (= e!4149240 e!4149243)))

(assert (= (and d!2160457 (not res!2807566)) b!6886781))

(assert (= (and b!6886781 c!1280633) b!6886774))

(assert (= (and b!6886781 (not c!1280633)) b!6886778))

(assert (= (and b!6886774 res!2807568) b!6886779))

(assert (= (and b!6886778 c!1280632) b!6886782))

(assert (= (and b!6886778 (not c!1280632)) b!6886776))

(assert (= (and b!6886782 res!2807567) b!6886777))

(assert (= (and b!6886776 (not res!2807569)) b!6886780))

(assert (= (and b!6886780 res!2807565) b!6886775))

(assert (= (or b!6886782 b!6886775) bm!626734))

(assert (= (or b!6886777 b!6886780) bm!626733))

(assert (= (or b!6886779 bm!626734) bm!626735))

(declare-fun m!7609644 () Bool)

(assert (=> bm!626733 m!7609644))

(declare-fun m!7609646 () Bool)

(assert (=> b!6886774 m!7609646))

(declare-fun m!7609648 () Bool)

(assert (=> bm!626735 m!7609648))

(assert (=> b!6886631 d!2160457))

(declare-fun b!6886801 () Bool)

(declare-fun res!2807582 () Bool)

(declare-fun e!4149256 () Bool)

(assert (=> b!6886801 (=> (not res!2807582) (not e!4149256))))

(declare-fun lt!2461577 () Option!16579)

(assert (=> b!6886801 (= res!2807582 (matchR!8939 r3!135 (_2!36970 (get!23154 lt!2461577))))))

(declare-fun b!6886802 () Bool)

(declare-fun res!2807580 () Bool)

(assert (=> b!6886802 (=> (not res!2807580) (not e!4149256))))

(assert (=> b!6886802 (= res!2807580 (matchR!8939 r2!6280 (_1!36970 (get!23154 lt!2461577))))))

(declare-fun b!6886803 () Bool)

(declare-fun e!4149257 () Option!16579)

(declare-fun e!4149260 () Option!16579)

(assert (=> b!6886803 (= e!4149257 e!4149260)))

(declare-fun c!1280638 () Bool)

(assert (=> b!6886803 (= c!1280638 (is-Nil!66427 lt!2461474))))

(declare-fun d!2160459 () Bool)

(declare-fun e!4149258 () Bool)

(assert (=> d!2160459 e!4149258))

(declare-fun res!2807583 () Bool)

(assert (=> d!2160459 (=> res!2807583 e!4149258)))

(assert (=> d!2160459 (= res!2807583 e!4149256)))

(declare-fun res!2807581 () Bool)

(assert (=> d!2160459 (=> (not res!2807581) (not e!4149256))))

(assert (=> d!2160459 (= res!2807581 (isDefined!13282 lt!2461577))))

(assert (=> d!2160459 (= lt!2461577 e!4149257)))

(declare-fun c!1280639 () Bool)

(declare-fun e!4149259 () Bool)

(assert (=> d!2160459 (= c!1280639 e!4149259)))

(declare-fun res!2807584 () Bool)

(assert (=> d!2160459 (=> (not res!2807584) (not e!4149259))))

(assert (=> d!2160459 (= res!2807584 (matchR!8939 r2!6280 Nil!66427))))

(assert (=> d!2160459 (validRegex!8502 r2!6280)))

(assert (=> d!2160459 (= (findConcatSeparation!2993 r2!6280 r3!135 Nil!66427 lt!2461474 lt!2461474) lt!2461577)))

(declare-fun b!6886804 () Bool)

(assert (=> b!6886804 (= e!4149257 (Some!16578 (tuple2!67335 Nil!66427 lt!2461474)))))

(declare-fun b!6886805 () Bool)

(declare-fun lt!2461578 () Unit!160308)

(declare-fun lt!2461576 () Unit!160308)

(assert (=> b!6886805 (= lt!2461578 lt!2461576)))

(assert (=> b!6886805 (= (++!14873 (++!14873 Nil!66427 (Cons!66427 (h!72875 lt!2461474) Nil!66427)) (t!380294 lt!2461474)) lt!2461474)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2774 (List!66551 C!33858 List!66551 List!66551) Unit!160308)

(assert (=> b!6886805 (= lt!2461576 (lemmaMoveElementToOtherListKeepsConcatEq!2774 Nil!66427 (h!72875 lt!2461474) (t!380294 lt!2461474) lt!2461474))))

(assert (=> b!6886805 (= e!4149260 (findConcatSeparation!2993 r2!6280 r3!135 (++!14873 Nil!66427 (Cons!66427 (h!72875 lt!2461474) Nil!66427)) (t!380294 lt!2461474) lt!2461474))))

(declare-fun b!6886806 () Bool)

(assert (=> b!6886806 (= e!4149260 None!16578)))

(declare-fun b!6886807 () Bool)

(assert (=> b!6886807 (= e!4149258 (not (isDefined!13282 lt!2461577)))))

(declare-fun b!6886808 () Bool)

(assert (=> b!6886808 (= e!4149259 (matchR!8939 r3!135 lt!2461474))))

(declare-fun b!6886809 () Bool)

(assert (=> b!6886809 (= e!4149256 (= (++!14873 (_1!36970 (get!23154 lt!2461577)) (_2!36970 (get!23154 lt!2461577))) lt!2461474))))

(assert (= (and d!2160459 res!2807584) b!6886808))

(assert (= (and d!2160459 c!1280639) b!6886804))

(assert (= (and d!2160459 (not c!1280639)) b!6886803))

(assert (= (and b!6886803 c!1280638) b!6886806))

(assert (= (and b!6886803 (not c!1280638)) b!6886805))

(assert (= (and d!2160459 res!2807581) b!6886802))

(assert (= (and b!6886802 res!2807580) b!6886801))

(assert (= (and b!6886801 res!2807582) b!6886809))

(assert (= (and d!2160459 (not res!2807583)) b!6886807))

(declare-fun m!7609650 () Bool)

(assert (=> d!2160459 m!7609650))

(declare-fun m!7609652 () Bool)

(assert (=> d!2160459 m!7609652))

(assert (=> d!2160459 m!7609484))

(declare-fun m!7609654 () Bool)

(assert (=> b!6886801 m!7609654))

(declare-fun m!7609656 () Bool)

(assert (=> b!6886801 m!7609656))

(assert (=> b!6886802 m!7609654))

(declare-fun m!7609658 () Bool)

(assert (=> b!6886802 m!7609658))

(assert (=> b!6886807 m!7609650))

(assert (=> b!6886809 m!7609654))

(declare-fun m!7609660 () Bool)

(assert (=> b!6886809 m!7609660))

(declare-fun m!7609662 () Bool)

(assert (=> b!6886808 m!7609662))

(declare-fun m!7609664 () Bool)

(assert (=> b!6886805 m!7609664))

(assert (=> b!6886805 m!7609664))

(declare-fun m!7609666 () Bool)

(assert (=> b!6886805 m!7609666))

(declare-fun m!7609668 () Bool)

(assert (=> b!6886805 m!7609668))

(assert (=> b!6886805 m!7609664))

(declare-fun m!7609670 () Bool)

(assert (=> b!6886805 m!7609670))

(assert (=> b!6886631 d!2160459))

(declare-fun d!2160461 () Bool)

(assert (=> d!2160461 (= (Exists!3806 lambda!390120) (choose!51282 lambda!390120))))

(declare-fun bs!1838644 () Bool)

(assert (= bs!1838644 d!2160461))

(declare-fun m!7609672 () Bool)

(assert (=> bs!1838644 m!7609672))

(assert (=> b!6886631 d!2160461))

(declare-fun d!2160463 () Bool)

(assert (=> d!2160463 (isDefined!13282 (findConcatSeparation!2993 r2!6280 r3!135 Nil!66427 lt!2461474 lt!2461474))))

(declare-fun lt!2461581 () Unit!160308)

(declare-fun choose!51283 (Regex!16794 Regex!16794 List!66551 List!66551 List!66551 List!66551 List!66551) Unit!160308)

(assert (=> d!2160463 (= lt!2461581 (choose!51283 r2!6280 r3!135 (_2!36970 lt!2461484) (_2!36970 lt!2461471) lt!2461474 Nil!66427 lt!2461474))))

(assert (=> d!2160463 (validRegex!8502 r2!6280)))

(assert (=> d!2160463 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!41 r2!6280 r3!135 (_2!36970 lt!2461484) (_2!36970 lt!2461471) lt!2461474 Nil!66427 lt!2461474) lt!2461581)))

(declare-fun bs!1838645 () Bool)

(assert (= bs!1838645 d!2160463))

(assert (=> bs!1838645 m!7609498))

(assert (=> bs!1838645 m!7609498))

(assert (=> bs!1838645 m!7609508))

(declare-fun m!7609674 () Bool)

(assert (=> bs!1838645 m!7609674))

(assert (=> bs!1838645 m!7609484))

(assert (=> b!6886631 d!2160463))

(declare-fun bs!1838646 () Bool)

(declare-fun d!2160467 () Bool)

(assert (= bs!1838646 (and d!2160467 b!6886639)))

(declare-fun lambda!390147 () Int)

(assert (=> bs!1838646 (not (= lambda!390147 lambda!390116))))

(declare-fun bs!1838647 () Bool)

(assert (= bs!1838647 (and d!2160467 b!6886638)))

(assert (=> bs!1838647 (not (= lambda!390147 lambda!390118))))

(assert (=> bs!1838646 (= (and (= lt!2461474 s!14361) (= r2!6280 lt!2461482)) (= lambda!390147 lambda!390115))))

(declare-fun bs!1838648 () Bool)

(assert (= bs!1838648 (and d!2160467 b!6886631)))

(assert (=> bs!1838648 (= lambda!390147 lambda!390119)))

(assert (=> bs!1838647 (= (and (= lt!2461474 (_1!36970 lt!2461471)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!390147 lambda!390117))))

(assert (=> bs!1838648 (not (= lambda!390147 lambda!390120))))

(assert (=> d!2160467 true))

(assert (=> d!2160467 true))

(assert (=> d!2160467 true))

(assert (=> d!2160467 (= (isDefined!13282 (findConcatSeparation!2993 r2!6280 r3!135 Nil!66427 lt!2461474 lt!2461474)) (Exists!3806 lambda!390147))))

(declare-fun lt!2461584 () Unit!160308)

(declare-fun choose!51284 (Regex!16794 Regex!16794 List!66551) Unit!160308)

(assert (=> d!2160467 (= lt!2461584 (choose!51284 r2!6280 r3!135 lt!2461474))))

(assert (=> d!2160467 (validRegex!8502 r2!6280)))

(assert (=> d!2160467 (= (lemmaFindConcatSeparationEquivalentToExists!2757 r2!6280 r3!135 lt!2461474) lt!2461584)))

(declare-fun bs!1838649 () Bool)

(assert (= bs!1838649 d!2160467))

(assert (=> bs!1838649 m!7609498))

(assert (=> bs!1838649 m!7609484))

(assert (=> bs!1838649 m!7609498))

(assert (=> bs!1838649 m!7609508))

(declare-fun m!7609676 () Bool)

(assert (=> bs!1838649 m!7609676))

(declare-fun m!7609678 () Bool)

(assert (=> bs!1838649 m!7609678))

(assert (=> b!6886631 d!2160467))

(declare-fun bs!1838650 () Bool)

(declare-fun d!2160469 () Bool)

(assert (= bs!1838650 (and d!2160469 b!6886639)))

(declare-fun lambda!390152 () Int)

(assert (=> bs!1838650 (not (= lambda!390152 lambda!390116))))

(declare-fun bs!1838651 () Bool)

(assert (= bs!1838651 (and d!2160469 d!2160467)))

(assert (=> bs!1838651 (= lambda!390152 lambda!390147)))

(declare-fun bs!1838652 () Bool)

(assert (= bs!1838652 (and d!2160469 b!6886638)))

(assert (=> bs!1838652 (not (= lambda!390152 lambda!390118))))

(assert (=> bs!1838650 (= (and (= lt!2461474 s!14361) (= r2!6280 lt!2461482)) (= lambda!390152 lambda!390115))))

(declare-fun bs!1838653 () Bool)

(assert (= bs!1838653 (and d!2160469 b!6886631)))

(assert (=> bs!1838653 (= lambda!390152 lambda!390119)))

(assert (=> bs!1838652 (= (and (= lt!2461474 (_1!36970 lt!2461471)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!390152 lambda!390117))))

(assert (=> bs!1838653 (not (= lambda!390152 lambda!390120))))

(assert (=> d!2160469 true))

(assert (=> d!2160469 true))

(assert (=> d!2160469 true))

(declare-fun lambda!390153 () Int)

(assert (=> bs!1838650 (= (and (= lt!2461474 s!14361) (= r2!6280 lt!2461482)) (= lambda!390153 lambda!390116))))

(declare-fun bs!1838654 () Bool)

(assert (= bs!1838654 d!2160469))

(assert (=> bs!1838654 (not (= lambda!390153 lambda!390152))))

(assert (=> bs!1838651 (not (= lambda!390153 lambda!390147))))

(assert (=> bs!1838652 (= (and (= lt!2461474 (_1!36970 lt!2461471)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!390153 lambda!390118))))

(assert (=> bs!1838650 (not (= lambda!390153 lambda!390115))))

(assert (=> bs!1838653 (not (= lambda!390153 lambda!390119))))

(assert (=> bs!1838652 (not (= lambda!390153 lambda!390117))))

(assert (=> bs!1838653 (= lambda!390153 lambda!390120)))

(assert (=> d!2160469 true))

(assert (=> d!2160469 true))

(assert (=> d!2160469 true))

(assert (=> d!2160469 (= (Exists!3806 lambda!390152) (Exists!3806 lambda!390153))))

(declare-fun lt!2461587 () Unit!160308)

(declare-fun choose!51285 (Regex!16794 Regex!16794 List!66551) Unit!160308)

(assert (=> d!2160469 (= lt!2461587 (choose!51285 r2!6280 r3!135 lt!2461474))))

(assert (=> d!2160469 (validRegex!8502 r2!6280)))

(assert (=> d!2160469 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2285 r2!6280 r3!135 lt!2461474) lt!2461587)))

(declare-fun m!7609686 () Bool)

(assert (=> bs!1838654 m!7609686))

(declare-fun m!7609688 () Bool)

(assert (=> bs!1838654 m!7609688))

(declare-fun m!7609690 () Bool)

(assert (=> bs!1838654 m!7609690))

(assert (=> bs!1838654 m!7609484))

(assert (=> b!6886631 d!2160469))

(declare-fun b!6886858 () Bool)

(declare-fun e!4149293 () List!66551)

(assert (=> b!6886858 (= e!4149293 (Cons!66427 (h!72875 (_2!36970 lt!2461484)) (++!14873 (t!380294 (_2!36970 lt!2461484)) (_2!36970 lt!2461471))))))

(declare-fun d!2160473 () Bool)

(declare-fun e!4149292 () Bool)

(assert (=> d!2160473 e!4149292))

(declare-fun res!2807616 () Bool)

(assert (=> d!2160473 (=> (not res!2807616) (not e!4149292))))

(declare-fun lt!2461590 () List!66551)

(declare-fun content!13045 (List!66551) (Set C!33858))

(assert (=> d!2160473 (= res!2807616 (= (content!13045 lt!2461590) (set.union (content!13045 (_2!36970 lt!2461484)) (content!13045 (_2!36970 lt!2461471)))))))

(assert (=> d!2160473 (= lt!2461590 e!4149293)))

(declare-fun c!1280648 () Bool)

(assert (=> d!2160473 (= c!1280648 (is-Nil!66427 (_2!36970 lt!2461484)))))

(assert (=> d!2160473 (= (++!14873 (_2!36970 lt!2461484) (_2!36970 lt!2461471)) lt!2461590)))

(declare-fun b!6886860 () Bool)

(assert (=> b!6886860 (= e!4149292 (or (not (= (_2!36970 lt!2461471) Nil!66427)) (= lt!2461590 (_2!36970 lt!2461484))))))

(declare-fun b!6886859 () Bool)

(declare-fun res!2807617 () Bool)

(assert (=> b!6886859 (=> (not res!2807617) (not e!4149292))))

(declare-fun size!40742 (List!66551) Int)

(assert (=> b!6886859 (= res!2807617 (= (size!40742 lt!2461590) (+ (size!40742 (_2!36970 lt!2461484)) (size!40742 (_2!36970 lt!2461471)))))))

(declare-fun b!6886857 () Bool)

(assert (=> b!6886857 (= e!4149293 (_2!36970 lt!2461471))))

(assert (= (and d!2160473 c!1280648) b!6886857))

(assert (= (and d!2160473 (not c!1280648)) b!6886858))

(assert (= (and d!2160473 res!2807616) b!6886859))

(assert (= (and b!6886859 res!2807617) b!6886860))

(declare-fun m!7609692 () Bool)

(assert (=> b!6886858 m!7609692))

(declare-fun m!7609694 () Bool)

(assert (=> d!2160473 m!7609694))

(declare-fun m!7609696 () Bool)

(assert (=> d!2160473 m!7609696))

(declare-fun m!7609698 () Bool)

(assert (=> d!2160473 m!7609698))

(declare-fun m!7609700 () Bool)

(assert (=> b!6886859 m!7609700))

(declare-fun m!7609702 () Bool)

(assert (=> b!6886859 m!7609702))

(declare-fun m!7609704 () Bool)

(assert (=> b!6886859 m!7609704))

(assert (=> b!6886631 d!2160473))

(declare-fun b!6886894 () Bool)

(declare-fun e!4149310 () Bool)

(declare-fun e!4149314 () Bool)

(assert (=> b!6886894 (= e!4149310 e!4149314)))

(declare-fun res!2807644 () Bool)

(assert (=> b!6886894 (=> res!2807644 e!4149314)))

(declare-fun call!626752 () Bool)

(assert (=> b!6886894 (= res!2807644 call!626752)))

(declare-fun b!6886895 () Bool)

(declare-fun res!2807638 () Bool)

(declare-fun e!4149311 () Bool)

(assert (=> b!6886895 (=> res!2807638 e!4149311)))

(declare-fun e!4149316 () Bool)

(assert (=> b!6886895 (= res!2807638 e!4149316)))

(declare-fun res!2807641 () Bool)

(assert (=> b!6886895 (=> (not res!2807641) (not e!4149316))))

(declare-fun lt!2461596 () Bool)

(assert (=> b!6886895 (= res!2807641 lt!2461596)))

(declare-fun bm!626747 () Bool)

(declare-fun isEmpty!38685 (List!66551) Bool)

(assert (=> bm!626747 (= call!626752 (isEmpty!38685 lt!2461474))))

(declare-fun b!6886896 () Bool)

(declare-fun res!2807645 () Bool)

(assert (=> b!6886896 (=> (not res!2807645) (not e!4149316))))

(assert (=> b!6886896 (= res!2807645 (not call!626752))))

(declare-fun b!6886897 () Bool)

(declare-fun res!2807640 () Bool)

(assert (=> b!6886897 (=> (not res!2807640) (not e!4149316))))

(declare-fun tail!12867 (List!66551) List!66551)

(assert (=> b!6886897 (= res!2807640 (isEmpty!38685 (tail!12867 lt!2461474)))))

(declare-fun b!6886898 () Bool)

(declare-fun e!4149313 () Bool)

(assert (=> b!6886898 (= e!4149313 (nullable!6683 lt!2461480))))

(declare-fun b!6886899 () Bool)

(declare-fun res!2807639 () Bool)

(assert (=> b!6886899 (=> res!2807639 e!4149311)))

(assert (=> b!6886899 (= res!2807639 (not (is-ElementMatch!16794 lt!2461480)))))

(declare-fun e!4149312 () Bool)

(assert (=> b!6886899 (= e!4149312 e!4149311)))

(declare-fun b!6886900 () Bool)

(declare-fun e!4149315 () Bool)

(assert (=> b!6886900 (= e!4149315 (= lt!2461596 call!626752))))

(declare-fun b!6886901 () Bool)

(declare-fun derivativeStep!5362 (Regex!16794 C!33858) Regex!16794)

(declare-fun head!13815 (List!66551) C!33858)

(assert (=> b!6886901 (= e!4149313 (matchR!8939 (derivativeStep!5362 lt!2461480 (head!13815 lt!2461474)) (tail!12867 lt!2461474)))))

(declare-fun b!6886902 () Bool)

(declare-fun res!2807642 () Bool)

(assert (=> b!6886902 (=> res!2807642 e!4149314)))

(assert (=> b!6886902 (= res!2807642 (not (isEmpty!38685 (tail!12867 lt!2461474))))))

(declare-fun b!6886903 () Bool)

(assert (=> b!6886903 (= e!4149312 (not lt!2461596))))

(declare-fun b!6886904 () Bool)

(assert (=> b!6886904 (= e!4149314 (not (= (head!13815 lt!2461474) (c!1280626 lt!2461480))))))

(declare-fun b!6886893 () Bool)

(assert (=> b!6886893 (= e!4149316 (= (head!13815 lt!2461474) (c!1280626 lt!2461480)))))

(declare-fun d!2160475 () Bool)

(assert (=> d!2160475 e!4149315))

(declare-fun c!1280655 () Bool)

(assert (=> d!2160475 (= c!1280655 (is-EmptyExpr!16794 lt!2461480))))

(assert (=> d!2160475 (= lt!2461596 e!4149313)))

(declare-fun c!1280657 () Bool)

(assert (=> d!2160475 (= c!1280657 (isEmpty!38685 lt!2461474))))

(assert (=> d!2160475 (validRegex!8502 lt!2461480)))

(assert (=> d!2160475 (= (matchR!8939 lt!2461480 lt!2461474) lt!2461596)))

(declare-fun b!6886905 () Bool)

(assert (=> b!6886905 (= e!4149311 e!4149310)))

(declare-fun res!2807643 () Bool)

(assert (=> b!6886905 (=> (not res!2807643) (not e!4149310))))

(assert (=> b!6886905 (= res!2807643 (not lt!2461596))))

(declare-fun b!6886906 () Bool)

(assert (=> b!6886906 (= e!4149315 e!4149312)))

(declare-fun c!1280656 () Bool)

(assert (=> b!6886906 (= c!1280656 (is-EmptyLang!16794 lt!2461480))))

(assert (= (and d!2160475 c!1280657) b!6886898))

(assert (= (and d!2160475 (not c!1280657)) b!6886901))

(assert (= (and d!2160475 c!1280655) b!6886900))

(assert (= (and d!2160475 (not c!1280655)) b!6886906))

(assert (= (and b!6886906 c!1280656) b!6886903))

(assert (= (and b!6886906 (not c!1280656)) b!6886899))

(assert (= (and b!6886899 (not res!2807639)) b!6886895))

(assert (= (and b!6886895 res!2807641) b!6886896))

(assert (= (and b!6886896 res!2807645) b!6886897))

(assert (= (and b!6886897 res!2807640) b!6886893))

(assert (= (and b!6886895 (not res!2807638)) b!6886905))

(assert (= (and b!6886905 res!2807643) b!6886894))

(assert (= (and b!6886894 (not res!2807644)) b!6886902))

(assert (= (and b!6886902 (not res!2807642)) b!6886904))

(assert (= (or b!6886900 b!6886894 b!6886896) bm!626747))

(declare-fun m!7609712 () Bool)

(assert (=> b!6886904 m!7609712))

(declare-fun m!7609714 () Bool)

(assert (=> b!6886902 m!7609714))

(assert (=> b!6886902 m!7609714))

(declare-fun m!7609716 () Bool)

(assert (=> b!6886902 m!7609716))

(declare-fun m!7609718 () Bool)

(assert (=> b!6886898 m!7609718))

(assert (=> b!6886901 m!7609712))

(assert (=> b!6886901 m!7609712))

(declare-fun m!7609720 () Bool)

(assert (=> b!6886901 m!7609720))

(assert (=> b!6886901 m!7609714))

(assert (=> b!6886901 m!7609720))

(assert (=> b!6886901 m!7609714))

(declare-fun m!7609722 () Bool)

(assert (=> b!6886901 m!7609722))

(declare-fun m!7609724 () Bool)

(assert (=> bm!626747 m!7609724))

(assert (=> d!2160475 m!7609724))

(assert (=> d!2160475 m!7609504))

(assert (=> b!6886897 m!7609714))

(assert (=> b!6886897 m!7609714))

(assert (=> b!6886897 m!7609716))

(assert (=> b!6886893 m!7609712))

(assert (=> b!6886631 d!2160475))

(declare-fun bs!1838661 () Bool)

(declare-fun b!6886949 () Bool)

(assert (= bs!1838661 (and b!6886949 b!6886639)))

(declare-fun lambda!390161 () Int)

(assert (=> bs!1838661 (not (= lambda!390161 lambda!390116))))

(declare-fun bs!1838662 () Bool)

(assert (= bs!1838662 (and b!6886949 d!2160469)))

(assert (=> bs!1838662 (not (= lambda!390161 lambda!390152))))

(declare-fun bs!1838663 () Bool)

(assert (= bs!1838663 (and b!6886949 d!2160467)))

(assert (=> bs!1838663 (not (= lambda!390161 lambda!390147))))

(declare-fun bs!1838664 () Bool)

(assert (= bs!1838664 (and b!6886949 b!6886638)))

(assert (=> bs!1838664 (not (= lambda!390161 lambda!390118))))

(assert (=> bs!1838661 (not (= lambda!390161 lambda!390115))))

(assert (=> bs!1838662 (not (= lambda!390161 lambda!390153))))

(declare-fun bs!1838665 () Bool)

(assert (= bs!1838665 (and b!6886949 b!6886631)))

(assert (=> bs!1838665 (not (= lambda!390161 lambda!390119))))

(assert (=> bs!1838664 (not (= lambda!390161 lambda!390117))))

(assert (=> bs!1838665 (not (= lambda!390161 lambda!390120))))

(assert (=> b!6886949 true))

(assert (=> b!6886949 true))

(declare-fun bs!1838666 () Bool)

(declare-fun b!6886939 () Bool)

(assert (= bs!1838666 (and b!6886939 b!6886639)))

(declare-fun lambda!390162 () Int)

(assert (=> bs!1838666 (= (and (= lt!2461474 s!14361) (= (regOne!34100 lt!2461480) lt!2461482) (= (regTwo!34100 lt!2461480) r3!135)) (= lambda!390162 lambda!390116))))

(declare-fun bs!1838667 () Bool)

(assert (= bs!1838667 (and b!6886939 b!6886949)))

(assert (=> bs!1838667 (not (= lambda!390162 lambda!390161))))

(declare-fun bs!1838668 () Bool)

(assert (= bs!1838668 (and b!6886939 d!2160469)))

(assert (=> bs!1838668 (not (= lambda!390162 lambda!390152))))

(declare-fun bs!1838669 () Bool)

(assert (= bs!1838669 (and b!6886939 d!2160467)))

(assert (=> bs!1838669 (not (= lambda!390162 lambda!390147))))

(declare-fun bs!1838670 () Bool)

(assert (= bs!1838670 (and b!6886939 b!6886638)))

(assert (=> bs!1838670 (= (and (= lt!2461474 (_1!36970 lt!2461471)) (= (regOne!34100 lt!2461480) r1!6342) (= (regTwo!34100 lt!2461480) r2!6280)) (= lambda!390162 lambda!390118))))

(assert (=> bs!1838666 (not (= lambda!390162 lambda!390115))))

(assert (=> bs!1838668 (= (and (= (regOne!34100 lt!2461480) r2!6280) (= (regTwo!34100 lt!2461480) r3!135)) (= lambda!390162 lambda!390153))))

(declare-fun bs!1838671 () Bool)

(assert (= bs!1838671 (and b!6886939 b!6886631)))

(assert (=> bs!1838671 (not (= lambda!390162 lambda!390119))))

(assert (=> bs!1838670 (not (= lambda!390162 lambda!390117))))

(assert (=> bs!1838671 (= (and (= (regOne!34100 lt!2461480) r2!6280) (= (regTwo!34100 lt!2461480) r3!135)) (= lambda!390162 lambda!390120))))

(assert (=> b!6886939 true))

(assert (=> b!6886939 true))

(declare-fun e!4149336 () Bool)

(declare-fun call!626757 () Bool)

(assert (=> b!6886939 (= e!4149336 call!626757)))

(declare-fun d!2160479 () Bool)

(declare-fun c!1280668 () Bool)

(assert (=> d!2160479 (= c!1280668 (is-EmptyExpr!16794 lt!2461480))))

(declare-fun e!4149338 () Bool)

(assert (=> d!2160479 (= (matchRSpec!3857 lt!2461480 lt!2461474) e!4149338)))

(declare-fun b!6886940 () Bool)

(declare-fun e!4149337 () Bool)

(assert (=> b!6886940 (= e!4149337 e!4149336)))

(declare-fun c!1280669 () Bool)

(assert (=> b!6886940 (= c!1280669 (is-Star!16794 lt!2461480))))

(declare-fun bm!626752 () Bool)

(declare-fun call!626758 () Bool)

(assert (=> bm!626752 (= call!626758 (isEmpty!38685 lt!2461474))))

(declare-fun bm!626753 () Bool)

(assert (=> bm!626753 (= call!626757 (Exists!3806 (ite c!1280669 lambda!390161 lambda!390162)))))

(declare-fun b!6886941 () Bool)

(declare-fun c!1280666 () Bool)

(assert (=> b!6886941 (= c!1280666 (is-Union!16794 lt!2461480))))

(declare-fun e!4149335 () Bool)

(assert (=> b!6886941 (= e!4149335 e!4149337)))

(declare-fun b!6886942 () Bool)

(declare-fun e!4149341 () Bool)

(assert (=> b!6886942 (= e!4149338 e!4149341)))

(declare-fun res!2807664 () Bool)

(assert (=> b!6886942 (= res!2807664 (not (is-EmptyLang!16794 lt!2461480)))))

(assert (=> b!6886942 (=> (not res!2807664) (not e!4149341))))

(declare-fun b!6886943 () Bool)

(assert (=> b!6886943 (= e!4149335 (= lt!2461474 (Cons!66427 (c!1280626 lt!2461480) Nil!66427)))))

(declare-fun b!6886944 () Bool)

(declare-fun c!1280667 () Bool)

(assert (=> b!6886944 (= c!1280667 (is-ElementMatch!16794 lt!2461480))))

(assert (=> b!6886944 (= e!4149341 e!4149335)))

(declare-fun b!6886945 () Bool)

(assert (=> b!6886945 (= e!4149338 call!626758)))

(declare-fun b!6886946 () Bool)

(declare-fun e!4149339 () Bool)

(assert (=> b!6886946 (= e!4149337 e!4149339)))

(declare-fun res!2807663 () Bool)

(assert (=> b!6886946 (= res!2807663 (matchRSpec!3857 (regOne!34101 lt!2461480) lt!2461474))))

(assert (=> b!6886946 (=> res!2807663 e!4149339)))

(declare-fun b!6886947 () Bool)

(declare-fun res!2807662 () Bool)

(declare-fun e!4149340 () Bool)

(assert (=> b!6886947 (=> res!2807662 e!4149340)))

(assert (=> b!6886947 (= res!2807662 call!626758)))

(assert (=> b!6886947 (= e!4149336 e!4149340)))

(declare-fun b!6886948 () Bool)

(assert (=> b!6886948 (= e!4149339 (matchRSpec!3857 (regTwo!34101 lt!2461480) lt!2461474))))

(assert (=> b!6886949 (= e!4149340 call!626757)))

(assert (= (and d!2160479 c!1280668) b!6886945))

(assert (= (and d!2160479 (not c!1280668)) b!6886942))

(assert (= (and b!6886942 res!2807664) b!6886944))

(assert (= (and b!6886944 c!1280667) b!6886943))

(assert (= (and b!6886944 (not c!1280667)) b!6886941))

(assert (= (and b!6886941 c!1280666) b!6886946))

(assert (= (and b!6886941 (not c!1280666)) b!6886940))

(assert (= (and b!6886946 (not res!2807663)) b!6886948))

(assert (= (and b!6886940 c!1280669) b!6886947))

(assert (= (and b!6886940 (not c!1280669)) b!6886939))

(assert (= (and b!6886947 (not res!2807662)) b!6886949))

(assert (= (or b!6886949 b!6886939) bm!626753))

(assert (= (or b!6886945 b!6886947) bm!626752))

(assert (=> bm!626752 m!7609724))

(declare-fun m!7609730 () Bool)

(assert (=> bm!626753 m!7609730))

(declare-fun m!7609732 () Bool)

(assert (=> b!6886946 m!7609732))

(declare-fun m!7609734 () Bool)

(assert (=> b!6886948 m!7609734))

(assert (=> b!6886631 d!2160479))

(declare-fun d!2160487 () Bool)

(assert (=> d!2160487 (= (matchR!8939 lt!2461480 lt!2461474) (matchRSpec!3857 lt!2461480 lt!2461474))))

(declare-fun lt!2461601 () Unit!160308)

(declare-fun choose!51286 (Regex!16794 List!66551) Unit!160308)

(assert (=> d!2160487 (= lt!2461601 (choose!51286 lt!2461480 lt!2461474))))

(assert (=> d!2160487 (validRegex!8502 lt!2461480)))

(assert (=> d!2160487 (= (mainMatchTheorem!3857 lt!2461480 lt!2461474) lt!2461601)))

(declare-fun bs!1838672 () Bool)

(assert (= bs!1838672 d!2160487))

(assert (=> bs!1838672 m!7609500))

(assert (=> bs!1838672 m!7609510))

(declare-fun m!7609736 () Bool)

(assert (=> bs!1838672 m!7609736))

(assert (=> bs!1838672 m!7609504))

(assert (=> b!6886631 d!2160487))

(declare-fun bm!626756 () Bool)

(declare-fun call!626761 () Bool)

(declare-fun c!1280676 () Bool)

(assert (=> bm!626756 (= call!626761 (validRegex!8502 (ite c!1280676 (regTwo!34101 r3!135) (regOne!34100 r3!135))))))

(declare-fun bm!626757 () Bool)

(declare-fun call!626762 () Bool)

(declare-fun call!626763 () Bool)

(assert (=> bm!626757 (= call!626762 call!626763)))

(declare-fun b!6886978 () Bool)

(declare-fun e!4149356 () Bool)

(declare-fun e!4149361 () Bool)

(assert (=> b!6886978 (= e!4149356 e!4149361)))

(declare-fun res!2807684 () Bool)

(assert (=> b!6886978 (= res!2807684 (not (nullable!6683 (reg!17123 r3!135))))))

(assert (=> b!6886978 (=> (not res!2807684) (not e!4149361))))

(declare-fun d!2160489 () Bool)

(declare-fun res!2807682 () Bool)

(declare-fun e!4149358 () Bool)

(assert (=> d!2160489 (=> res!2807682 e!4149358)))

(assert (=> d!2160489 (= res!2807682 (is-ElementMatch!16794 r3!135))))

(assert (=> d!2160489 (= (validRegex!8502 r3!135) e!4149358)))

(declare-fun b!6886979 () Bool)

(declare-fun e!4149359 () Bool)

(assert (=> b!6886979 (= e!4149359 call!626762)))

(declare-fun b!6886980 () Bool)

(declare-fun res!2807685 () Bool)

(declare-fun e!4149362 () Bool)

(assert (=> b!6886980 (=> res!2807685 e!4149362)))

(assert (=> b!6886980 (= res!2807685 (not (is-Concat!25639 r3!135)))))

(declare-fun e!4149357 () Bool)

(assert (=> b!6886980 (= e!4149357 e!4149362)))

(declare-fun c!1280677 () Bool)

(declare-fun bm!626758 () Bool)

(assert (=> bm!626758 (= call!626763 (validRegex!8502 (ite c!1280677 (reg!17123 r3!135) (ite c!1280676 (regOne!34101 r3!135) (regTwo!34100 r3!135)))))))

(declare-fun b!6886981 () Bool)

(declare-fun e!4149360 () Bool)

(assert (=> b!6886981 (= e!4149360 call!626761)))

(declare-fun b!6886982 () Bool)

(assert (=> b!6886982 (= e!4149356 e!4149357)))

(assert (=> b!6886982 (= c!1280676 (is-Union!16794 r3!135))))

(declare-fun b!6886983 () Bool)

(assert (=> b!6886983 (= e!4149361 call!626763)))

(declare-fun b!6886984 () Bool)

(assert (=> b!6886984 (= e!4149362 e!4149359)))

(declare-fun res!2807681 () Bool)

(assert (=> b!6886984 (=> (not res!2807681) (not e!4149359))))

(assert (=> b!6886984 (= res!2807681 call!626761)))

(declare-fun b!6886985 () Bool)

(assert (=> b!6886985 (= e!4149358 e!4149356)))

(assert (=> b!6886985 (= c!1280677 (is-Star!16794 r3!135))))

(declare-fun b!6886986 () Bool)

(declare-fun res!2807683 () Bool)

(assert (=> b!6886986 (=> (not res!2807683) (not e!4149360))))

(assert (=> b!6886986 (= res!2807683 call!626762)))

(assert (=> b!6886986 (= e!4149357 e!4149360)))

(assert (= (and d!2160489 (not res!2807682)) b!6886985))

(assert (= (and b!6886985 c!1280677) b!6886978))

(assert (= (and b!6886985 (not c!1280677)) b!6886982))

(assert (= (and b!6886978 res!2807684) b!6886983))

(assert (= (and b!6886982 c!1280676) b!6886986))

(assert (= (and b!6886982 (not c!1280676)) b!6886980))

(assert (= (and b!6886986 res!2807683) b!6886981))

(assert (= (and b!6886980 (not res!2807685)) b!6886984))

(assert (= (and b!6886984 res!2807681) b!6886979))

(assert (= (or b!6886986 b!6886979) bm!626757))

(assert (= (or b!6886981 b!6886984) bm!626756))

(assert (= (or b!6886983 bm!626757) bm!626758))

(declare-fun m!7609738 () Bool)

(assert (=> bm!626756 m!7609738))

(declare-fun m!7609740 () Bool)

(assert (=> b!6886978 m!7609740))

(declare-fun m!7609742 () Bool)

(assert (=> bm!626758 m!7609742))

(assert (=> b!6886626 d!2160489))

(declare-fun bm!626759 () Bool)

(declare-fun call!626764 () Bool)

(declare-fun c!1280678 () Bool)

(assert (=> bm!626759 (= call!626764 (validRegex!8502 (ite c!1280678 (regTwo!34101 r2!6280) (regOne!34100 r2!6280))))))

(declare-fun bm!626760 () Bool)

(declare-fun call!626765 () Bool)

(declare-fun call!626766 () Bool)

(assert (=> bm!626760 (= call!626765 call!626766)))

(declare-fun b!6886987 () Bool)

(declare-fun e!4149363 () Bool)

(declare-fun e!4149368 () Bool)

(assert (=> b!6886987 (= e!4149363 e!4149368)))

(declare-fun res!2807689 () Bool)

(assert (=> b!6886987 (= res!2807689 (not (nullable!6683 (reg!17123 r2!6280))))))

(assert (=> b!6886987 (=> (not res!2807689) (not e!4149368))))

(declare-fun d!2160491 () Bool)

(declare-fun res!2807687 () Bool)

(declare-fun e!4149365 () Bool)

(assert (=> d!2160491 (=> res!2807687 e!4149365)))

(assert (=> d!2160491 (= res!2807687 (is-ElementMatch!16794 r2!6280))))

(assert (=> d!2160491 (= (validRegex!8502 r2!6280) e!4149365)))

(declare-fun b!6886988 () Bool)

(declare-fun e!4149366 () Bool)

(assert (=> b!6886988 (= e!4149366 call!626765)))

(declare-fun b!6886989 () Bool)

(declare-fun res!2807690 () Bool)

(declare-fun e!4149369 () Bool)

(assert (=> b!6886989 (=> res!2807690 e!4149369)))

(assert (=> b!6886989 (= res!2807690 (not (is-Concat!25639 r2!6280)))))

(declare-fun e!4149364 () Bool)

(assert (=> b!6886989 (= e!4149364 e!4149369)))

(declare-fun bm!626761 () Bool)

(declare-fun c!1280679 () Bool)

(assert (=> bm!626761 (= call!626766 (validRegex!8502 (ite c!1280679 (reg!17123 r2!6280) (ite c!1280678 (regOne!34101 r2!6280) (regTwo!34100 r2!6280)))))))

(declare-fun b!6886990 () Bool)

(declare-fun e!4149367 () Bool)

(assert (=> b!6886990 (= e!4149367 call!626764)))

(declare-fun b!6886991 () Bool)

(assert (=> b!6886991 (= e!4149363 e!4149364)))

(assert (=> b!6886991 (= c!1280678 (is-Union!16794 r2!6280))))

(declare-fun b!6886992 () Bool)

(assert (=> b!6886992 (= e!4149368 call!626766)))

(declare-fun b!6886993 () Bool)

(assert (=> b!6886993 (= e!4149369 e!4149366)))

(declare-fun res!2807686 () Bool)

(assert (=> b!6886993 (=> (not res!2807686) (not e!4149366))))

(assert (=> b!6886993 (= res!2807686 call!626764)))

(declare-fun b!6886994 () Bool)

(assert (=> b!6886994 (= e!4149365 e!4149363)))

(assert (=> b!6886994 (= c!1280679 (is-Star!16794 r2!6280))))

(declare-fun b!6886995 () Bool)

(declare-fun res!2807688 () Bool)

(assert (=> b!6886995 (=> (not res!2807688) (not e!4149367))))

(assert (=> b!6886995 (= res!2807688 call!626765)))

(assert (=> b!6886995 (= e!4149364 e!4149367)))

(assert (= (and d!2160491 (not res!2807687)) b!6886994))

(assert (= (and b!6886994 c!1280679) b!6886987))

(assert (= (and b!6886994 (not c!1280679)) b!6886991))

(assert (= (and b!6886987 res!2807689) b!6886992))

(assert (= (and b!6886991 c!1280678) b!6886995))

(assert (= (and b!6886991 (not c!1280678)) b!6886989))

(assert (= (and b!6886995 res!2807688) b!6886990))

(assert (= (and b!6886989 (not res!2807690)) b!6886993))

(assert (= (and b!6886993 res!2807686) b!6886988))

(assert (= (or b!6886995 b!6886988) bm!626760))

(assert (= (or b!6886990 b!6886993) bm!626759))

(assert (= (or b!6886992 bm!626760) bm!626761))

(declare-fun m!7609744 () Bool)

(assert (=> bm!626759 m!7609744))

(declare-fun m!7609746 () Bool)

(assert (=> b!6886987 m!7609746))

(declare-fun m!7609748 () Bool)

(assert (=> bm!626761 m!7609748))

(assert (=> b!6886632 d!2160491))

(declare-fun bs!1838673 () Bool)

(declare-fun b!6887006 () Bool)

(assert (= bs!1838673 (and b!6887006 b!6886639)))

(declare-fun lambda!390163 () Int)

(assert (=> bs!1838673 (not (= lambda!390163 lambda!390116))))

(declare-fun bs!1838674 () Bool)

(assert (= bs!1838674 (and b!6887006 d!2160469)))

(assert (=> bs!1838674 (not (= lambda!390163 lambda!390152))))

(declare-fun bs!1838675 () Bool)

(assert (= bs!1838675 (and b!6887006 d!2160467)))

(assert (=> bs!1838675 (not (= lambda!390163 lambda!390147))))

(declare-fun bs!1838676 () Bool)

(assert (= bs!1838676 (and b!6887006 b!6886638)))

(assert (=> bs!1838676 (not (= lambda!390163 lambda!390118))))

(assert (=> bs!1838673 (not (= lambda!390163 lambda!390115))))

(assert (=> bs!1838674 (not (= lambda!390163 lambda!390153))))

(declare-fun bs!1838677 () Bool)

(assert (= bs!1838677 (and b!6887006 b!6886631)))

(assert (=> bs!1838677 (not (= lambda!390163 lambda!390119))))

(declare-fun bs!1838678 () Bool)

(assert (= bs!1838678 (and b!6887006 b!6886939)))

(assert (=> bs!1838678 (not (= lambda!390163 lambda!390162))))

(declare-fun bs!1838679 () Bool)

(assert (= bs!1838679 (and b!6887006 b!6886949)))

(assert (=> bs!1838679 (= (and (= s!14361 lt!2461474) (= (reg!17123 lt!2461493) (reg!17123 lt!2461480)) (= lt!2461493 lt!2461480)) (= lambda!390163 lambda!390161))))

(assert (=> bs!1838676 (not (= lambda!390163 lambda!390117))))

(assert (=> bs!1838677 (not (= lambda!390163 lambda!390120))))

(assert (=> b!6887006 true))

(assert (=> b!6887006 true))

(declare-fun bs!1838680 () Bool)

(declare-fun b!6886996 () Bool)

(assert (= bs!1838680 (and b!6886996 b!6886639)))

(declare-fun lambda!390164 () Int)

(assert (=> bs!1838680 (= (and (= (regOne!34100 lt!2461493) lt!2461482) (= (regTwo!34100 lt!2461493) r3!135)) (= lambda!390164 lambda!390116))))

(declare-fun bs!1838681 () Bool)

(assert (= bs!1838681 (and b!6886996 d!2160469)))

(assert (=> bs!1838681 (not (= lambda!390164 lambda!390152))))

(declare-fun bs!1838682 () Bool)

(assert (= bs!1838682 (and b!6886996 d!2160467)))

(assert (=> bs!1838682 (not (= lambda!390164 lambda!390147))))

(assert (=> bs!1838680 (not (= lambda!390164 lambda!390115))))

(assert (=> bs!1838681 (= (and (= s!14361 lt!2461474) (= (regOne!34100 lt!2461493) r2!6280) (= (regTwo!34100 lt!2461493) r3!135)) (= lambda!390164 lambda!390153))))

(declare-fun bs!1838683 () Bool)

(assert (= bs!1838683 (and b!6886996 b!6886631)))

(assert (=> bs!1838683 (not (= lambda!390164 lambda!390119))))

(declare-fun bs!1838684 () Bool)

(assert (= bs!1838684 (and b!6886996 b!6886939)))

(assert (=> bs!1838684 (= (and (= s!14361 lt!2461474) (= (regOne!34100 lt!2461493) (regOne!34100 lt!2461480)) (= (regTwo!34100 lt!2461493) (regTwo!34100 lt!2461480))) (= lambda!390164 lambda!390162))))

(declare-fun bs!1838685 () Bool)

(assert (= bs!1838685 (and b!6886996 b!6886949)))

(assert (=> bs!1838685 (not (= lambda!390164 lambda!390161))))

(declare-fun bs!1838686 () Bool)

(assert (= bs!1838686 (and b!6886996 b!6886638)))

(assert (=> bs!1838686 (not (= lambda!390164 lambda!390117))))

(assert (=> bs!1838683 (= (and (= s!14361 lt!2461474) (= (regOne!34100 lt!2461493) r2!6280) (= (regTwo!34100 lt!2461493) r3!135)) (= lambda!390164 lambda!390120))))

(declare-fun bs!1838687 () Bool)

(assert (= bs!1838687 (and b!6886996 b!6887006)))

(assert (=> bs!1838687 (not (= lambda!390164 lambda!390163))))

(assert (=> bs!1838686 (= (and (= s!14361 (_1!36970 lt!2461471)) (= (regOne!34100 lt!2461493) r1!6342) (= (regTwo!34100 lt!2461493) r2!6280)) (= lambda!390164 lambda!390118))))

(assert (=> b!6886996 true))

(assert (=> b!6886996 true))

(declare-fun e!4149371 () Bool)

(declare-fun call!626767 () Bool)

(assert (=> b!6886996 (= e!4149371 call!626767)))

(declare-fun d!2160493 () Bool)

(declare-fun c!1280682 () Bool)

(assert (=> d!2160493 (= c!1280682 (is-EmptyExpr!16794 lt!2461493))))

(declare-fun e!4149373 () Bool)

(assert (=> d!2160493 (= (matchRSpec!3857 lt!2461493 s!14361) e!4149373)))

(declare-fun b!6886997 () Bool)

(declare-fun e!4149372 () Bool)

(assert (=> b!6886997 (= e!4149372 e!4149371)))

(declare-fun c!1280683 () Bool)

(assert (=> b!6886997 (= c!1280683 (is-Star!16794 lt!2461493))))

(declare-fun bm!626762 () Bool)

(declare-fun call!626768 () Bool)

(assert (=> bm!626762 (= call!626768 (isEmpty!38685 s!14361))))

(declare-fun bm!626763 () Bool)

(assert (=> bm!626763 (= call!626767 (Exists!3806 (ite c!1280683 lambda!390163 lambda!390164)))))

(declare-fun b!6886998 () Bool)

(declare-fun c!1280680 () Bool)

(assert (=> b!6886998 (= c!1280680 (is-Union!16794 lt!2461493))))

(declare-fun e!4149370 () Bool)

(assert (=> b!6886998 (= e!4149370 e!4149372)))

(declare-fun b!6886999 () Bool)

(declare-fun e!4149376 () Bool)

(assert (=> b!6886999 (= e!4149373 e!4149376)))

(declare-fun res!2807693 () Bool)

(assert (=> b!6886999 (= res!2807693 (not (is-EmptyLang!16794 lt!2461493)))))

(assert (=> b!6886999 (=> (not res!2807693) (not e!4149376))))

(declare-fun b!6887000 () Bool)

(assert (=> b!6887000 (= e!4149370 (= s!14361 (Cons!66427 (c!1280626 lt!2461493) Nil!66427)))))

(declare-fun b!6887001 () Bool)

(declare-fun c!1280681 () Bool)

(assert (=> b!6887001 (= c!1280681 (is-ElementMatch!16794 lt!2461493))))

(assert (=> b!6887001 (= e!4149376 e!4149370)))

(declare-fun b!6887002 () Bool)

(assert (=> b!6887002 (= e!4149373 call!626768)))

(declare-fun b!6887003 () Bool)

(declare-fun e!4149374 () Bool)

(assert (=> b!6887003 (= e!4149372 e!4149374)))

(declare-fun res!2807692 () Bool)

(assert (=> b!6887003 (= res!2807692 (matchRSpec!3857 (regOne!34101 lt!2461493) s!14361))))

(assert (=> b!6887003 (=> res!2807692 e!4149374)))

(declare-fun b!6887004 () Bool)

(declare-fun res!2807691 () Bool)

(declare-fun e!4149375 () Bool)

(assert (=> b!6887004 (=> res!2807691 e!4149375)))

(assert (=> b!6887004 (= res!2807691 call!626768)))

(assert (=> b!6887004 (= e!4149371 e!4149375)))

(declare-fun b!6887005 () Bool)

(assert (=> b!6887005 (= e!4149374 (matchRSpec!3857 (regTwo!34101 lt!2461493) s!14361))))

(assert (=> b!6887006 (= e!4149375 call!626767)))

(assert (= (and d!2160493 c!1280682) b!6887002))

(assert (= (and d!2160493 (not c!1280682)) b!6886999))

(assert (= (and b!6886999 res!2807693) b!6887001))

(assert (= (and b!6887001 c!1280681) b!6887000))

(assert (= (and b!6887001 (not c!1280681)) b!6886998))

(assert (= (and b!6886998 c!1280680) b!6887003))

(assert (= (and b!6886998 (not c!1280680)) b!6886997))

(assert (= (and b!6887003 (not res!2807692)) b!6887005))

(assert (= (and b!6886997 c!1280683) b!6887004))

(assert (= (and b!6886997 (not c!1280683)) b!6886996))

(assert (= (and b!6887004 (not res!2807691)) b!6887006))

(assert (= (or b!6887006 b!6886996) bm!626763))

(assert (= (or b!6887002 b!6887004) bm!626762))

(declare-fun m!7609750 () Bool)

(assert (=> bm!626762 m!7609750))

(declare-fun m!7609752 () Bool)

(assert (=> bm!626763 m!7609752))

(declare-fun m!7609754 () Bool)

(assert (=> b!6887003 m!7609754))

(declare-fun m!7609756 () Bool)

(assert (=> b!6887005 m!7609756))

(assert (=> b!6886627 d!2160493))

(declare-fun b!6887022 () Bool)

(declare-fun e!4149384 () Bool)

(declare-fun e!4149388 () Bool)

(assert (=> b!6887022 (= e!4149384 e!4149388)))

(declare-fun res!2807708 () Bool)

(assert (=> b!6887022 (=> res!2807708 e!4149388)))

(declare-fun call!626770 () Bool)

(assert (=> b!6887022 (= res!2807708 call!626770)))

(declare-fun b!6887023 () Bool)

(declare-fun res!2807702 () Bool)

(declare-fun e!4149385 () Bool)

(assert (=> b!6887023 (=> res!2807702 e!4149385)))

(declare-fun e!4149390 () Bool)

(assert (=> b!6887023 (= res!2807702 e!4149390)))

(declare-fun res!2807705 () Bool)

(assert (=> b!6887023 (=> (not res!2807705) (not e!4149390))))

(declare-fun lt!2461603 () Bool)

(assert (=> b!6887023 (= res!2807705 lt!2461603)))

(declare-fun bm!626765 () Bool)

(assert (=> bm!626765 (= call!626770 (isEmpty!38685 s!14361))))

(declare-fun b!6887024 () Bool)

(declare-fun res!2807709 () Bool)

(assert (=> b!6887024 (=> (not res!2807709) (not e!4149390))))

(assert (=> b!6887024 (= res!2807709 (not call!626770))))

(declare-fun b!6887025 () Bool)

(declare-fun res!2807704 () Bool)

(assert (=> b!6887025 (=> (not res!2807704) (not e!4149390))))

(assert (=> b!6887025 (= res!2807704 (isEmpty!38685 (tail!12867 s!14361)))))

(declare-fun b!6887026 () Bool)

(declare-fun e!4149387 () Bool)

(assert (=> b!6887026 (= e!4149387 (nullable!6683 lt!2461476))))

(declare-fun b!6887027 () Bool)

(declare-fun res!2807703 () Bool)

(assert (=> b!6887027 (=> res!2807703 e!4149385)))

(assert (=> b!6887027 (= res!2807703 (not (is-ElementMatch!16794 lt!2461476)))))

(declare-fun e!4149386 () Bool)

(assert (=> b!6887027 (= e!4149386 e!4149385)))

(declare-fun b!6887028 () Bool)

(declare-fun e!4149389 () Bool)

(assert (=> b!6887028 (= e!4149389 (= lt!2461603 call!626770))))

(declare-fun b!6887029 () Bool)

(assert (=> b!6887029 (= e!4149387 (matchR!8939 (derivativeStep!5362 lt!2461476 (head!13815 s!14361)) (tail!12867 s!14361)))))

(declare-fun b!6887030 () Bool)

(declare-fun res!2807706 () Bool)

(assert (=> b!6887030 (=> res!2807706 e!4149388)))

(assert (=> b!6887030 (= res!2807706 (not (isEmpty!38685 (tail!12867 s!14361))))))

(declare-fun b!6887031 () Bool)

(assert (=> b!6887031 (= e!4149386 (not lt!2461603))))

(declare-fun b!6887032 () Bool)

(assert (=> b!6887032 (= e!4149388 (not (= (head!13815 s!14361) (c!1280626 lt!2461476))))))

(declare-fun b!6887021 () Bool)

(assert (=> b!6887021 (= e!4149390 (= (head!13815 s!14361) (c!1280626 lt!2461476)))))

(declare-fun d!2160495 () Bool)

(assert (=> d!2160495 e!4149389))

(declare-fun c!1280687 () Bool)

(assert (=> d!2160495 (= c!1280687 (is-EmptyExpr!16794 lt!2461476))))

(assert (=> d!2160495 (= lt!2461603 e!4149387)))

(declare-fun c!1280689 () Bool)

(assert (=> d!2160495 (= c!1280689 (isEmpty!38685 s!14361))))

(assert (=> d!2160495 (validRegex!8502 lt!2461476)))

(assert (=> d!2160495 (= (matchR!8939 lt!2461476 s!14361) lt!2461603)))

(declare-fun b!6887033 () Bool)

(assert (=> b!6887033 (= e!4149385 e!4149384)))

(declare-fun res!2807707 () Bool)

(assert (=> b!6887033 (=> (not res!2807707) (not e!4149384))))

(assert (=> b!6887033 (= res!2807707 (not lt!2461603))))

(declare-fun b!6887034 () Bool)

(assert (=> b!6887034 (= e!4149389 e!4149386)))

(declare-fun c!1280688 () Bool)

(assert (=> b!6887034 (= c!1280688 (is-EmptyLang!16794 lt!2461476))))

(assert (= (and d!2160495 c!1280689) b!6887026))

(assert (= (and d!2160495 (not c!1280689)) b!6887029))

(assert (= (and d!2160495 c!1280687) b!6887028))

(assert (= (and d!2160495 (not c!1280687)) b!6887034))

(assert (= (and b!6887034 c!1280688) b!6887031))

(assert (= (and b!6887034 (not c!1280688)) b!6887027))

(assert (= (and b!6887027 (not res!2807703)) b!6887023))

(assert (= (and b!6887023 res!2807705) b!6887024))

(assert (= (and b!6887024 res!2807709) b!6887025))

(assert (= (and b!6887025 res!2807704) b!6887021))

(assert (= (and b!6887023 (not res!2807702)) b!6887033))

(assert (= (and b!6887033 res!2807707) b!6887022))

(assert (= (and b!6887022 (not res!2807708)) b!6887030))

(assert (= (and b!6887030 (not res!2807706)) b!6887032))

(assert (= (or b!6887028 b!6887022 b!6887024) bm!626765))

(declare-fun m!7609772 () Bool)

(assert (=> b!6887032 m!7609772))

(declare-fun m!7609774 () Bool)

(assert (=> b!6887030 m!7609774))

(assert (=> b!6887030 m!7609774))

(declare-fun m!7609776 () Bool)

(assert (=> b!6887030 m!7609776))

(declare-fun m!7609778 () Bool)

(assert (=> b!6887026 m!7609778))

(assert (=> b!6887029 m!7609772))

(assert (=> b!6887029 m!7609772))

(declare-fun m!7609780 () Bool)

(assert (=> b!6887029 m!7609780))

(assert (=> b!6887029 m!7609774))

(assert (=> b!6887029 m!7609780))

(assert (=> b!6887029 m!7609774))

(declare-fun m!7609782 () Bool)

(assert (=> b!6887029 m!7609782))

(assert (=> bm!626765 m!7609750))

(assert (=> d!2160495 m!7609750))

(declare-fun m!7609784 () Bool)

(assert (=> d!2160495 m!7609784))

(assert (=> b!6887025 m!7609774))

(assert (=> b!6887025 m!7609774))

(assert (=> b!6887025 m!7609776))

(assert (=> b!6887021 m!7609772))

(assert (=> b!6886627 d!2160495))

(declare-fun d!2160499 () Bool)

(assert (=> d!2160499 (= (matchR!8939 lt!2461476 s!14361) (matchRSpec!3857 lt!2461476 s!14361))))

(declare-fun lt!2461604 () Unit!160308)

(assert (=> d!2160499 (= lt!2461604 (choose!51286 lt!2461476 s!14361))))

(assert (=> d!2160499 (validRegex!8502 lt!2461476)))

(assert (=> d!2160499 (= (mainMatchTheorem!3857 lt!2461476 s!14361) lt!2461604)))

(declare-fun bs!1838688 () Bool)

(assert (= bs!1838688 d!2160499))

(assert (=> bs!1838688 m!7609472))

(assert (=> bs!1838688 m!7609470))

(declare-fun m!7609786 () Bool)

(assert (=> bs!1838688 m!7609786))

(assert (=> bs!1838688 m!7609784))

(assert (=> b!6886627 d!2160499))

(declare-fun d!2160501 () Bool)

(assert (=> d!2160501 (= (matchR!8939 lt!2461493 s!14361) (matchRSpec!3857 lt!2461493 s!14361))))

(declare-fun lt!2461605 () Unit!160308)

(assert (=> d!2160501 (= lt!2461605 (choose!51286 lt!2461493 s!14361))))

(assert (=> d!2160501 (validRegex!8502 lt!2461493)))

(assert (=> d!2160501 (= (mainMatchTheorem!3857 lt!2461493 s!14361) lt!2461605)))

(declare-fun bs!1838689 () Bool)

(assert (= bs!1838689 d!2160501))

(assert (=> bs!1838689 m!7609478))

(assert (=> bs!1838689 m!7609468))

(declare-fun m!7609788 () Bool)

(assert (=> bs!1838689 m!7609788))

(declare-fun m!7609790 () Bool)

(assert (=> bs!1838689 m!7609790))

(assert (=> b!6886627 d!2160501))

(declare-fun b!6887036 () Bool)

(declare-fun e!4149391 () Bool)

(declare-fun e!4149395 () Bool)

(assert (=> b!6887036 (= e!4149391 e!4149395)))

(declare-fun res!2807716 () Bool)

(assert (=> b!6887036 (=> res!2807716 e!4149395)))

(declare-fun call!626771 () Bool)

(assert (=> b!6887036 (= res!2807716 call!626771)))

(declare-fun b!6887037 () Bool)

(declare-fun res!2807710 () Bool)

(declare-fun e!4149392 () Bool)

(assert (=> b!6887037 (=> res!2807710 e!4149392)))

(declare-fun e!4149397 () Bool)

(assert (=> b!6887037 (= res!2807710 e!4149397)))

(declare-fun res!2807713 () Bool)

(assert (=> b!6887037 (=> (not res!2807713) (not e!4149397))))

(declare-fun lt!2461606 () Bool)

(assert (=> b!6887037 (= res!2807713 lt!2461606)))

(declare-fun bm!626766 () Bool)

(assert (=> bm!626766 (= call!626771 (isEmpty!38685 s!14361))))

(declare-fun b!6887038 () Bool)

(declare-fun res!2807717 () Bool)

(assert (=> b!6887038 (=> (not res!2807717) (not e!4149397))))

(assert (=> b!6887038 (= res!2807717 (not call!626771))))

(declare-fun b!6887039 () Bool)

(declare-fun res!2807712 () Bool)

(assert (=> b!6887039 (=> (not res!2807712) (not e!4149397))))

(assert (=> b!6887039 (= res!2807712 (isEmpty!38685 (tail!12867 s!14361)))))

(declare-fun b!6887040 () Bool)

(declare-fun e!4149394 () Bool)

(assert (=> b!6887040 (= e!4149394 (nullable!6683 lt!2461493))))

(declare-fun b!6887041 () Bool)

(declare-fun res!2807711 () Bool)

(assert (=> b!6887041 (=> res!2807711 e!4149392)))

(assert (=> b!6887041 (= res!2807711 (not (is-ElementMatch!16794 lt!2461493)))))

(declare-fun e!4149393 () Bool)

(assert (=> b!6887041 (= e!4149393 e!4149392)))

(declare-fun b!6887042 () Bool)

(declare-fun e!4149396 () Bool)

(assert (=> b!6887042 (= e!4149396 (= lt!2461606 call!626771))))

(declare-fun b!6887043 () Bool)

(assert (=> b!6887043 (= e!4149394 (matchR!8939 (derivativeStep!5362 lt!2461493 (head!13815 s!14361)) (tail!12867 s!14361)))))

(declare-fun b!6887044 () Bool)

(declare-fun res!2807714 () Bool)

(assert (=> b!6887044 (=> res!2807714 e!4149395)))

(assert (=> b!6887044 (= res!2807714 (not (isEmpty!38685 (tail!12867 s!14361))))))

(declare-fun b!6887045 () Bool)

(assert (=> b!6887045 (= e!4149393 (not lt!2461606))))

(declare-fun b!6887046 () Bool)

(assert (=> b!6887046 (= e!4149395 (not (= (head!13815 s!14361) (c!1280626 lt!2461493))))))

(declare-fun b!6887035 () Bool)

(assert (=> b!6887035 (= e!4149397 (= (head!13815 s!14361) (c!1280626 lt!2461493)))))

(declare-fun d!2160503 () Bool)

(assert (=> d!2160503 e!4149396))

(declare-fun c!1280690 () Bool)

(assert (=> d!2160503 (= c!1280690 (is-EmptyExpr!16794 lt!2461493))))

(assert (=> d!2160503 (= lt!2461606 e!4149394)))

(declare-fun c!1280692 () Bool)

(assert (=> d!2160503 (= c!1280692 (isEmpty!38685 s!14361))))

(assert (=> d!2160503 (validRegex!8502 lt!2461493)))

(assert (=> d!2160503 (= (matchR!8939 lt!2461493 s!14361) lt!2461606)))

(declare-fun b!6887047 () Bool)

(assert (=> b!6887047 (= e!4149392 e!4149391)))

(declare-fun res!2807715 () Bool)

(assert (=> b!6887047 (=> (not res!2807715) (not e!4149391))))

(assert (=> b!6887047 (= res!2807715 (not lt!2461606))))

(declare-fun b!6887048 () Bool)

(assert (=> b!6887048 (= e!4149396 e!4149393)))

(declare-fun c!1280691 () Bool)

(assert (=> b!6887048 (= c!1280691 (is-EmptyLang!16794 lt!2461493))))

(assert (= (and d!2160503 c!1280692) b!6887040))

(assert (= (and d!2160503 (not c!1280692)) b!6887043))

(assert (= (and d!2160503 c!1280690) b!6887042))

(assert (= (and d!2160503 (not c!1280690)) b!6887048))

(assert (= (and b!6887048 c!1280691) b!6887045))

(assert (= (and b!6887048 (not c!1280691)) b!6887041))

(assert (= (and b!6887041 (not res!2807711)) b!6887037))

(assert (= (and b!6887037 res!2807713) b!6887038))

(assert (= (and b!6887038 res!2807717) b!6887039))

(assert (= (and b!6887039 res!2807712) b!6887035))

(assert (= (and b!6887037 (not res!2807710)) b!6887047))

(assert (= (and b!6887047 res!2807715) b!6887036))

(assert (= (and b!6887036 (not res!2807716)) b!6887044))

(assert (= (and b!6887044 (not res!2807714)) b!6887046))

(assert (= (or b!6887042 b!6887036 b!6887038) bm!626766))

(assert (=> b!6887046 m!7609772))

(assert (=> b!6887044 m!7609774))

(assert (=> b!6887044 m!7609774))

(assert (=> b!6887044 m!7609776))

(declare-fun m!7609794 () Bool)

(assert (=> b!6887040 m!7609794))

(assert (=> b!6887043 m!7609772))

(assert (=> b!6887043 m!7609772))

(declare-fun m!7609796 () Bool)

(assert (=> b!6887043 m!7609796))

(assert (=> b!6887043 m!7609774))

(assert (=> b!6887043 m!7609796))

(assert (=> b!6887043 m!7609774))

(declare-fun m!7609798 () Bool)

(assert (=> b!6887043 m!7609798))

(assert (=> bm!626766 m!7609750))

(assert (=> d!2160503 m!7609750))

(assert (=> d!2160503 m!7609790))

(assert (=> b!6887039 m!7609774))

(assert (=> b!6887039 m!7609774))

(assert (=> b!6887039 m!7609776))

(assert (=> b!6887035 m!7609772))

(assert (=> b!6886627 d!2160503))

(declare-fun bs!1838691 () Bool)

(declare-fun b!6887059 () Bool)

(assert (= bs!1838691 (and b!6887059 b!6886639)))

(declare-fun lambda!390165 () Int)

(assert (=> bs!1838691 (not (= lambda!390165 lambda!390116))))

(declare-fun bs!1838692 () Bool)

(assert (= bs!1838692 (and b!6887059 d!2160469)))

(assert (=> bs!1838692 (not (= lambda!390165 lambda!390152))))

(declare-fun bs!1838693 () Bool)

(assert (= bs!1838693 (and b!6887059 d!2160467)))

(assert (=> bs!1838693 (not (= lambda!390165 lambda!390147))))

(assert (=> bs!1838691 (not (= lambda!390165 lambda!390115))))

(assert (=> bs!1838692 (not (= lambda!390165 lambda!390153))))

(declare-fun bs!1838694 () Bool)

(assert (= bs!1838694 (and b!6887059 b!6886996)))

(assert (=> bs!1838694 (not (= lambda!390165 lambda!390164))))

(declare-fun bs!1838695 () Bool)

(assert (= bs!1838695 (and b!6887059 b!6886631)))

(assert (=> bs!1838695 (not (= lambda!390165 lambda!390119))))

(declare-fun bs!1838696 () Bool)

(assert (= bs!1838696 (and b!6887059 b!6886939)))

(assert (=> bs!1838696 (not (= lambda!390165 lambda!390162))))

(declare-fun bs!1838697 () Bool)

(assert (= bs!1838697 (and b!6887059 b!6886949)))

(assert (=> bs!1838697 (= (and (= s!14361 lt!2461474) (= (reg!17123 lt!2461476) (reg!17123 lt!2461480)) (= lt!2461476 lt!2461480)) (= lambda!390165 lambda!390161))))

(declare-fun bs!1838698 () Bool)

(assert (= bs!1838698 (and b!6887059 b!6886638)))

(assert (=> bs!1838698 (not (= lambda!390165 lambda!390117))))

(assert (=> bs!1838695 (not (= lambda!390165 lambda!390120))))

(declare-fun bs!1838699 () Bool)

(assert (= bs!1838699 (and b!6887059 b!6887006)))

(assert (=> bs!1838699 (= (and (= (reg!17123 lt!2461476) (reg!17123 lt!2461493)) (= lt!2461476 lt!2461493)) (= lambda!390165 lambda!390163))))

(assert (=> bs!1838698 (not (= lambda!390165 lambda!390118))))

(assert (=> b!6887059 true))

(assert (=> b!6887059 true))

(declare-fun bs!1838700 () Bool)

(declare-fun b!6887049 () Bool)

(assert (= bs!1838700 (and b!6887049 b!6886639)))

(declare-fun lambda!390166 () Int)

(assert (=> bs!1838700 (= (and (= (regOne!34100 lt!2461476) lt!2461482) (= (regTwo!34100 lt!2461476) r3!135)) (= lambda!390166 lambda!390116))))

(declare-fun bs!1838701 () Bool)

(assert (= bs!1838701 (and b!6887049 d!2160469)))

(assert (=> bs!1838701 (not (= lambda!390166 lambda!390152))))

(declare-fun bs!1838702 () Bool)

(assert (= bs!1838702 (and b!6887049 d!2160467)))

(assert (=> bs!1838702 (not (= lambda!390166 lambda!390147))))

(declare-fun bs!1838703 () Bool)

(assert (= bs!1838703 (and b!6887049 b!6887059)))

(assert (=> bs!1838703 (not (= lambda!390166 lambda!390165))))

(assert (=> bs!1838700 (not (= lambda!390166 lambda!390115))))

(assert (=> bs!1838701 (= (and (= s!14361 lt!2461474) (= (regOne!34100 lt!2461476) r2!6280) (= (regTwo!34100 lt!2461476) r3!135)) (= lambda!390166 lambda!390153))))

(declare-fun bs!1838704 () Bool)

(assert (= bs!1838704 (and b!6887049 b!6886996)))

(assert (=> bs!1838704 (= (and (= (regOne!34100 lt!2461476) (regOne!34100 lt!2461493)) (= (regTwo!34100 lt!2461476) (regTwo!34100 lt!2461493))) (= lambda!390166 lambda!390164))))

(declare-fun bs!1838705 () Bool)

(assert (= bs!1838705 (and b!6887049 b!6886631)))

(assert (=> bs!1838705 (not (= lambda!390166 lambda!390119))))

(declare-fun bs!1838706 () Bool)

(assert (= bs!1838706 (and b!6887049 b!6886939)))

(assert (=> bs!1838706 (= (and (= s!14361 lt!2461474) (= (regOne!34100 lt!2461476) (regOne!34100 lt!2461480)) (= (regTwo!34100 lt!2461476) (regTwo!34100 lt!2461480))) (= lambda!390166 lambda!390162))))

(declare-fun bs!1838707 () Bool)

(assert (= bs!1838707 (and b!6887049 b!6886949)))

(assert (=> bs!1838707 (not (= lambda!390166 lambda!390161))))

(declare-fun bs!1838708 () Bool)

(assert (= bs!1838708 (and b!6887049 b!6886638)))

(assert (=> bs!1838708 (not (= lambda!390166 lambda!390117))))

(assert (=> bs!1838705 (= (and (= s!14361 lt!2461474) (= (regOne!34100 lt!2461476) r2!6280) (= (regTwo!34100 lt!2461476) r3!135)) (= lambda!390166 lambda!390120))))

(declare-fun bs!1838709 () Bool)

(assert (= bs!1838709 (and b!6887049 b!6887006)))

(assert (=> bs!1838709 (not (= lambda!390166 lambda!390163))))

(assert (=> bs!1838708 (= (and (= s!14361 (_1!36970 lt!2461471)) (= (regOne!34100 lt!2461476) r1!6342) (= (regTwo!34100 lt!2461476) r2!6280)) (= lambda!390166 lambda!390118))))

(assert (=> b!6887049 true))

(assert (=> b!6887049 true))

(declare-fun e!4149399 () Bool)

(declare-fun call!626772 () Bool)

(assert (=> b!6887049 (= e!4149399 call!626772)))

(declare-fun d!2160507 () Bool)

(declare-fun c!1280695 () Bool)

(assert (=> d!2160507 (= c!1280695 (is-EmptyExpr!16794 lt!2461476))))

(declare-fun e!4149401 () Bool)

(assert (=> d!2160507 (= (matchRSpec!3857 lt!2461476 s!14361) e!4149401)))

(declare-fun b!6887050 () Bool)

(declare-fun e!4149400 () Bool)

(assert (=> b!6887050 (= e!4149400 e!4149399)))

(declare-fun c!1280696 () Bool)

(assert (=> b!6887050 (= c!1280696 (is-Star!16794 lt!2461476))))

(declare-fun bm!626767 () Bool)

(declare-fun call!626773 () Bool)

(assert (=> bm!626767 (= call!626773 (isEmpty!38685 s!14361))))

(declare-fun bm!626768 () Bool)

(assert (=> bm!626768 (= call!626772 (Exists!3806 (ite c!1280696 lambda!390165 lambda!390166)))))

(declare-fun b!6887051 () Bool)

(declare-fun c!1280693 () Bool)

(assert (=> b!6887051 (= c!1280693 (is-Union!16794 lt!2461476))))

(declare-fun e!4149398 () Bool)

(assert (=> b!6887051 (= e!4149398 e!4149400)))

(declare-fun b!6887052 () Bool)

(declare-fun e!4149404 () Bool)

(assert (=> b!6887052 (= e!4149401 e!4149404)))

(declare-fun res!2807720 () Bool)

(assert (=> b!6887052 (= res!2807720 (not (is-EmptyLang!16794 lt!2461476)))))

(assert (=> b!6887052 (=> (not res!2807720) (not e!4149404))))

(declare-fun b!6887053 () Bool)

(assert (=> b!6887053 (= e!4149398 (= s!14361 (Cons!66427 (c!1280626 lt!2461476) Nil!66427)))))

(declare-fun b!6887054 () Bool)

(declare-fun c!1280694 () Bool)

(assert (=> b!6887054 (= c!1280694 (is-ElementMatch!16794 lt!2461476))))

(assert (=> b!6887054 (= e!4149404 e!4149398)))

(declare-fun b!6887055 () Bool)

(assert (=> b!6887055 (= e!4149401 call!626773)))

(declare-fun b!6887056 () Bool)

(declare-fun e!4149402 () Bool)

(assert (=> b!6887056 (= e!4149400 e!4149402)))

(declare-fun res!2807719 () Bool)

(assert (=> b!6887056 (= res!2807719 (matchRSpec!3857 (regOne!34101 lt!2461476) s!14361))))

(assert (=> b!6887056 (=> res!2807719 e!4149402)))

(declare-fun b!6887057 () Bool)

(declare-fun res!2807718 () Bool)

(declare-fun e!4149403 () Bool)

(assert (=> b!6887057 (=> res!2807718 e!4149403)))

(assert (=> b!6887057 (= res!2807718 call!626773)))

(assert (=> b!6887057 (= e!4149399 e!4149403)))

(declare-fun b!6887058 () Bool)

(assert (=> b!6887058 (= e!4149402 (matchRSpec!3857 (regTwo!34101 lt!2461476) s!14361))))

(assert (=> b!6887059 (= e!4149403 call!626772)))

(assert (= (and d!2160507 c!1280695) b!6887055))

(assert (= (and d!2160507 (not c!1280695)) b!6887052))

(assert (= (and b!6887052 res!2807720) b!6887054))

(assert (= (and b!6887054 c!1280694) b!6887053))

(assert (= (and b!6887054 (not c!1280694)) b!6887051))

(assert (= (and b!6887051 c!1280693) b!6887056))

(assert (= (and b!6887051 (not c!1280693)) b!6887050))

(assert (= (and b!6887056 (not res!2807719)) b!6887058))

(assert (= (and b!6887050 c!1280696) b!6887057))

(assert (= (and b!6887050 (not c!1280696)) b!6887049))

(assert (= (and b!6887057 (not res!2807718)) b!6887059))

(assert (= (or b!6887059 b!6887049) bm!626768))

(assert (= (or b!6887055 b!6887057) bm!626767))

(assert (=> bm!626767 m!7609750))

(declare-fun m!7609800 () Bool)

(assert (=> bm!626768 m!7609800))

(declare-fun m!7609802 () Bool)

(assert (=> b!6887056 m!7609802))

(declare-fun m!7609804 () Bool)

(assert (=> b!6887058 m!7609804))

(assert (=> b!6886627 d!2160507))

(declare-fun b!6887060 () Bool)

(declare-fun res!2807723 () Bool)

(declare-fun e!4149405 () Bool)

(assert (=> b!6887060 (=> (not res!2807723) (not e!4149405))))

(declare-fun lt!2461608 () Option!16579)

(assert (=> b!6887060 (= res!2807723 (matchR!8939 r2!6280 (_2!36970 (get!23154 lt!2461608))))))

(declare-fun b!6887061 () Bool)

(declare-fun res!2807721 () Bool)

(assert (=> b!6887061 (=> (not res!2807721) (not e!4149405))))

(assert (=> b!6887061 (= res!2807721 (matchR!8939 r1!6342 (_1!36970 (get!23154 lt!2461608))))))

(declare-fun b!6887062 () Bool)

(declare-fun e!4149406 () Option!16579)

(declare-fun e!4149409 () Option!16579)

(assert (=> b!6887062 (= e!4149406 e!4149409)))

(declare-fun c!1280697 () Bool)

(assert (=> b!6887062 (= c!1280697 (is-Nil!66427 (_1!36970 lt!2461471)))))

(declare-fun d!2160509 () Bool)

(declare-fun e!4149407 () Bool)

(assert (=> d!2160509 e!4149407))

(declare-fun res!2807724 () Bool)

(assert (=> d!2160509 (=> res!2807724 e!4149407)))

(assert (=> d!2160509 (= res!2807724 e!4149405)))

(declare-fun res!2807722 () Bool)

(assert (=> d!2160509 (=> (not res!2807722) (not e!4149405))))

(assert (=> d!2160509 (= res!2807722 (isDefined!13282 lt!2461608))))

(assert (=> d!2160509 (= lt!2461608 e!4149406)))

(declare-fun c!1280698 () Bool)

(declare-fun e!4149408 () Bool)

(assert (=> d!2160509 (= c!1280698 e!4149408)))

(declare-fun res!2807725 () Bool)

(assert (=> d!2160509 (=> (not res!2807725) (not e!4149408))))

(assert (=> d!2160509 (= res!2807725 (matchR!8939 r1!6342 Nil!66427))))

(assert (=> d!2160509 (validRegex!8502 r1!6342)))

(assert (=> d!2160509 (= (findConcatSeparation!2993 r1!6342 r2!6280 Nil!66427 (_1!36970 lt!2461471) (_1!36970 lt!2461471)) lt!2461608)))

(declare-fun b!6887063 () Bool)

(assert (=> b!6887063 (= e!4149406 (Some!16578 (tuple2!67335 Nil!66427 (_1!36970 lt!2461471))))))

(declare-fun b!6887064 () Bool)

(declare-fun lt!2461609 () Unit!160308)

(declare-fun lt!2461607 () Unit!160308)

(assert (=> b!6887064 (= lt!2461609 lt!2461607)))

(assert (=> b!6887064 (= (++!14873 (++!14873 Nil!66427 (Cons!66427 (h!72875 (_1!36970 lt!2461471)) Nil!66427)) (t!380294 (_1!36970 lt!2461471))) (_1!36970 lt!2461471))))

(assert (=> b!6887064 (= lt!2461607 (lemmaMoveElementToOtherListKeepsConcatEq!2774 Nil!66427 (h!72875 (_1!36970 lt!2461471)) (t!380294 (_1!36970 lt!2461471)) (_1!36970 lt!2461471)))))

(assert (=> b!6887064 (= e!4149409 (findConcatSeparation!2993 r1!6342 r2!6280 (++!14873 Nil!66427 (Cons!66427 (h!72875 (_1!36970 lt!2461471)) Nil!66427)) (t!380294 (_1!36970 lt!2461471)) (_1!36970 lt!2461471)))))

(declare-fun b!6887065 () Bool)

(assert (=> b!6887065 (= e!4149409 None!16578)))

(declare-fun b!6887066 () Bool)

(assert (=> b!6887066 (= e!4149407 (not (isDefined!13282 lt!2461608)))))

(declare-fun b!6887067 () Bool)

(assert (=> b!6887067 (= e!4149408 (matchR!8939 r2!6280 (_1!36970 lt!2461471)))))

(declare-fun b!6887068 () Bool)

(assert (=> b!6887068 (= e!4149405 (= (++!14873 (_1!36970 (get!23154 lt!2461608)) (_2!36970 (get!23154 lt!2461608))) (_1!36970 lt!2461471)))))

(assert (= (and d!2160509 res!2807725) b!6887067))

(assert (= (and d!2160509 c!1280698) b!6887063))

(assert (= (and d!2160509 (not c!1280698)) b!6887062))

(assert (= (and b!6887062 c!1280697) b!6887065))

(assert (= (and b!6887062 (not c!1280697)) b!6887064))

(assert (= (and d!2160509 res!2807722) b!6887061))

(assert (= (and b!6887061 res!2807721) b!6887060))

(assert (= (and b!6887060 res!2807723) b!6887068))

(assert (= (and d!2160509 (not res!2807724)) b!6887066))

(declare-fun m!7609806 () Bool)

(assert (=> d!2160509 m!7609806))

(declare-fun m!7609808 () Bool)

(assert (=> d!2160509 m!7609808))

(assert (=> d!2160509 m!7609480))

(declare-fun m!7609810 () Bool)

(assert (=> b!6887060 m!7609810))

(declare-fun m!7609812 () Bool)

(assert (=> b!6887060 m!7609812))

(assert (=> b!6887061 m!7609810))

(declare-fun m!7609814 () Bool)

(assert (=> b!6887061 m!7609814))

(assert (=> b!6887066 m!7609806))

(assert (=> b!6887068 m!7609810))

(declare-fun m!7609816 () Bool)

(assert (=> b!6887068 m!7609816))

(declare-fun m!7609818 () Bool)

(assert (=> b!6887067 m!7609818))

(declare-fun m!7609820 () Bool)

(assert (=> b!6887064 m!7609820))

(assert (=> b!6887064 m!7609820))

(declare-fun m!7609822 () Bool)

(assert (=> b!6887064 m!7609822))

(declare-fun m!7609824 () Bool)

(assert (=> b!6887064 m!7609824))

(assert (=> b!6887064 m!7609820))

(declare-fun m!7609826 () Bool)

(assert (=> b!6887064 m!7609826))

(assert (=> b!6886638 d!2160509))

(declare-fun d!2160511 () Bool)

(assert (=> d!2160511 (= (isDefined!13282 lt!2461475) (not (isEmpty!38684 lt!2461475)))))

(declare-fun bs!1838710 () Bool)

(assert (= bs!1838710 d!2160511))

(declare-fun m!7609828 () Bool)

(assert (=> bs!1838710 m!7609828))

(assert (=> b!6886638 d!2160511))

(declare-fun bs!1838711 () Bool)

(declare-fun d!2160513 () Bool)

(assert (= bs!1838711 (and d!2160513 b!6886639)))

(declare-fun lambda!390167 () Int)

(assert (=> bs!1838711 (not (= lambda!390167 lambda!390116))))

(declare-fun bs!1838712 () Bool)

(assert (= bs!1838712 (and d!2160513 d!2160469)))

(assert (=> bs!1838712 (= (and (= (_1!36970 lt!2461471) lt!2461474) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!390167 lambda!390152))))

(declare-fun bs!1838713 () Bool)

(assert (= bs!1838713 (and d!2160513 d!2160467)))

(assert (=> bs!1838713 (= (and (= (_1!36970 lt!2461471) lt!2461474) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!390167 lambda!390147))))

(declare-fun bs!1838714 () Bool)

(assert (= bs!1838714 (and d!2160513 b!6887049)))

(assert (=> bs!1838714 (not (= lambda!390167 lambda!390166))))

(declare-fun bs!1838715 () Bool)

(assert (= bs!1838715 (and d!2160513 b!6887059)))

(assert (=> bs!1838715 (not (= lambda!390167 lambda!390165))))

(assert (=> bs!1838711 (= (and (= (_1!36970 lt!2461471) s!14361) (= r1!6342 lt!2461482) (= r2!6280 r3!135)) (= lambda!390167 lambda!390115))))

(assert (=> bs!1838712 (not (= lambda!390167 lambda!390153))))

(declare-fun bs!1838716 () Bool)

(assert (= bs!1838716 (and d!2160513 b!6886996)))

(assert (=> bs!1838716 (not (= lambda!390167 lambda!390164))))

(declare-fun bs!1838717 () Bool)

(assert (= bs!1838717 (and d!2160513 b!6886631)))

(assert (=> bs!1838717 (= (and (= (_1!36970 lt!2461471) lt!2461474) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!390167 lambda!390119))))

(declare-fun bs!1838718 () Bool)

(assert (= bs!1838718 (and d!2160513 b!6886939)))

(assert (=> bs!1838718 (not (= lambda!390167 lambda!390162))))

(declare-fun bs!1838719 () Bool)

(assert (= bs!1838719 (and d!2160513 b!6886949)))

(assert (=> bs!1838719 (not (= lambda!390167 lambda!390161))))

(declare-fun bs!1838720 () Bool)

(assert (= bs!1838720 (and d!2160513 b!6886638)))

(assert (=> bs!1838720 (= lambda!390167 lambda!390117)))

(assert (=> bs!1838717 (not (= lambda!390167 lambda!390120))))

(declare-fun bs!1838721 () Bool)

(assert (= bs!1838721 (and d!2160513 b!6887006)))

(assert (=> bs!1838721 (not (= lambda!390167 lambda!390163))))

(assert (=> bs!1838720 (not (= lambda!390167 lambda!390118))))

(assert (=> d!2160513 true))

(assert (=> d!2160513 true))

(assert (=> d!2160513 true))

(assert (=> d!2160513 (= (isDefined!13282 (findConcatSeparation!2993 r1!6342 r2!6280 Nil!66427 (_1!36970 lt!2461471) (_1!36970 lt!2461471))) (Exists!3806 lambda!390167))))

(declare-fun lt!2461610 () Unit!160308)

(assert (=> d!2160513 (= lt!2461610 (choose!51284 r1!6342 r2!6280 (_1!36970 lt!2461471)))))

(assert (=> d!2160513 (validRegex!8502 r1!6342)))

(assert (=> d!2160513 (= (lemmaFindConcatSeparationEquivalentToExists!2757 r1!6342 r2!6280 (_1!36970 lt!2461471)) lt!2461610)))

(declare-fun bs!1838722 () Bool)

(assert (= bs!1838722 d!2160513))

(assert (=> bs!1838722 m!7609452))

(assert (=> bs!1838722 m!7609480))

(assert (=> bs!1838722 m!7609452))

(declare-fun m!7609830 () Bool)

(assert (=> bs!1838722 m!7609830))

(declare-fun m!7609832 () Bool)

(assert (=> bs!1838722 m!7609832))

(declare-fun m!7609834 () Bool)

(assert (=> bs!1838722 m!7609834))

(assert (=> b!6886638 d!2160513))

(declare-fun d!2160515 () Bool)

(assert (=> d!2160515 (= (get!23154 lt!2461475) (v!52850 lt!2461475))))

(assert (=> b!6886638 d!2160515))

(declare-fun d!2160517 () Bool)

(assert (=> d!2160517 (= (Exists!3806 lambda!390118) (choose!51282 lambda!390118))))

(declare-fun bs!1838723 () Bool)

(assert (= bs!1838723 d!2160517))

(declare-fun m!7609836 () Bool)

(assert (=> bs!1838723 m!7609836))

(assert (=> b!6886638 d!2160517))

(declare-fun b!6887070 () Bool)

(declare-fun e!4149410 () Bool)

(declare-fun e!4149414 () Bool)

(assert (=> b!6887070 (= e!4149410 e!4149414)))

(declare-fun res!2807732 () Bool)

(assert (=> b!6887070 (=> res!2807732 e!4149414)))

(declare-fun call!626774 () Bool)

(assert (=> b!6887070 (= res!2807732 call!626774)))

(declare-fun b!6887071 () Bool)

(declare-fun res!2807726 () Bool)

(declare-fun e!4149411 () Bool)

(assert (=> b!6887071 (=> res!2807726 e!4149411)))

(declare-fun e!4149416 () Bool)

(assert (=> b!6887071 (= res!2807726 e!4149416)))

(declare-fun res!2807729 () Bool)

(assert (=> b!6887071 (=> (not res!2807729) (not e!4149416))))

(declare-fun lt!2461611 () Bool)

(assert (=> b!6887071 (= res!2807729 lt!2461611)))

(declare-fun bm!626769 () Bool)

(assert (=> bm!626769 (= call!626774 (isEmpty!38685 (_1!36970 lt!2461484)))))

(declare-fun b!6887072 () Bool)

(declare-fun res!2807733 () Bool)

(assert (=> b!6887072 (=> (not res!2807733) (not e!4149416))))

(assert (=> b!6887072 (= res!2807733 (not call!626774))))

(declare-fun b!6887073 () Bool)

(declare-fun res!2807728 () Bool)

(assert (=> b!6887073 (=> (not res!2807728) (not e!4149416))))

(assert (=> b!6887073 (= res!2807728 (isEmpty!38685 (tail!12867 (_1!36970 lt!2461484))))))

(declare-fun b!6887074 () Bool)

(declare-fun e!4149413 () Bool)

(assert (=> b!6887074 (= e!4149413 (nullable!6683 r1!6342))))

(declare-fun b!6887075 () Bool)

(declare-fun res!2807727 () Bool)

(assert (=> b!6887075 (=> res!2807727 e!4149411)))

(assert (=> b!6887075 (= res!2807727 (not (is-ElementMatch!16794 r1!6342)))))

(declare-fun e!4149412 () Bool)

(assert (=> b!6887075 (= e!4149412 e!4149411)))

(declare-fun b!6887076 () Bool)

(declare-fun e!4149415 () Bool)

(assert (=> b!6887076 (= e!4149415 (= lt!2461611 call!626774))))

(declare-fun b!6887077 () Bool)

(assert (=> b!6887077 (= e!4149413 (matchR!8939 (derivativeStep!5362 r1!6342 (head!13815 (_1!36970 lt!2461484))) (tail!12867 (_1!36970 lt!2461484))))))

(declare-fun b!6887078 () Bool)

(declare-fun res!2807730 () Bool)

(assert (=> b!6887078 (=> res!2807730 e!4149414)))

(assert (=> b!6887078 (= res!2807730 (not (isEmpty!38685 (tail!12867 (_1!36970 lt!2461484)))))))

(declare-fun b!6887079 () Bool)

(assert (=> b!6887079 (= e!4149412 (not lt!2461611))))

(declare-fun b!6887080 () Bool)

(assert (=> b!6887080 (= e!4149414 (not (= (head!13815 (_1!36970 lt!2461484)) (c!1280626 r1!6342))))))

(declare-fun b!6887069 () Bool)

(assert (=> b!6887069 (= e!4149416 (= (head!13815 (_1!36970 lt!2461484)) (c!1280626 r1!6342)))))

(declare-fun d!2160519 () Bool)

(assert (=> d!2160519 e!4149415))

(declare-fun c!1280699 () Bool)

(assert (=> d!2160519 (= c!1280699 (is-EmptyExpr!16794 r1!6342))))

(assert (=> d!2160519 (= lt!2461611 e!4149413)))

(declare-fun c!1280701 () Bool)

(assert (=> d!2160519 (= c!1280701 (isEmpty!38685 (_1!36970 lt!2461484)))))

(assert (=> d!2160519 (validRegex!8502 r1!6342)))

(assert (=> d!2160519 (= (matchR!8939 r1!6342 (_1!36970 lt!2461484)) lt!2461611)))

(declare-fun b!6887081 () Bool)

(assert (=> b!6887081 (= e!4149411 e!4149410)))

(declare-fun res!2807731 () Bool)

(assert (=> b!6887081 (=> (not res!2807731) (not e!4149410))))

(assert (=> b!6887081 (= res!2807731 (not lt!2461611))))

(declare-fun b!6887082 () Bool)

(assert (=> b!6887082 (= e!4149415 e!4149412)))

(declare-fun c!1280700 () Bool)

(assert (=> b!6887082 (= c!1280700 (is-EmptyLang!16794 r1!6342))))

(assert (= (and d!2160519 c!1280701) b!6887074))

(assert (= (and d!2160519 (not c!1280701)) b!6887077))

(assert (= (and d!2160519 c!1280699) b!6887076))

(assert (= (and d!2160519 (not c!1280699)) b!6887082))

(assert (= (and b!6887082 c!1280700) b!6887079))

(assert (= (and b!6887082 (not c!1280700)) b!6887075))

(assert (= (and b!6887075 (not res!2807727)) b!6887071))

(assert (= (and b!6887071 res!2807729) b!6887072))

(assert (= (and b!6887072 res!2807733) b!6887073))

(assert (= (and b!6887073 res!2807728) b!6887069))

(assert (= (and b!6887071 (not res!2807726)) b!6887081))

(assert (= (and b!6887081 res!2807731) b!6887070))

(assert (= (and b!6887070 (not res!2807732)) b!6887078))

(assert (= (and b!6887078 (not res!2807730)) b!6887080))

(assert (= (or b!6887076 b!6887070 b!6887072) bm!626769))

(declare-fun m!7609838 () Bool)

(assert (=> b!6887080 m!7609838))

(declare-fun m!7609840 () Bool)

(assert (=> b!6887078 m!7609840))

(assert (=> b!6887078 m!7609840))

(declare-fun m!7609842 () Bool)

(assert (=> b!6887078 m!7609842))

(declare-fun m!7609844 () Bool)

(assert (=> b!6887074 m!7609844))

(assert (=> b!6887077 m!7609838))

(assert (=> b!6887077 m!7609838))

(declare-fun m!7609846 () Bool)

(assert (=> b!6887077 m!7609846))

(assert (=> b!6887077 m!7609840))

(assert (=> b!6887077 m!7609846))

(assert (=> b!6887077 m!7609840))

(declare-fun m!7609848 () Bool)

(assert (=> b!6887077 m!7609848))

(declare-fun m!7609850 () Bool)

(assert (=> bm!626769 m!7609850))

(assert (=> d!2160519 m!7609850))

(assert (=> d!2160519 m!7609480))

(assert (=> b!6887073 m!7609840))

(assert (=> b!6887073 m!7609840))

(assert (=> b!6887073 m!7609842))

(assert (=> b!6887069 m!7609838))

(assert (=> b!6886638 d!2160519))

(declare-fun bs!1838724 () Bool)

(declare-fun d!2160521 () Bool)

(assert (= bs!1838724 (and d!2160521 d!2160469)))

(declare-fun lambda!390168 () Int)

(assert (=> bs!1838724 (= (and (= (_1!36970 lt!2461471) lt!2461474) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!390168 lambda!390152))))

(declare-fun bs!1838725 () Bool)

(assert (= bs!1838725 (and d!2160521 d!2160467)))

(assert (=> bs!1838725 (= (and (= (_1!36970 lt!2461471) lt!2461474) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!390168 lambda!390147))))

(declare-fun bs!1838726 () Bool)

(assert (= bs!1838726 (and d!2160521 b!6887049)))

(assert (=> bs!1838726 (not (= lambda!390168 lambda!390166))))

(declare-fun bs!1838727 () Bool)

(assert (= bs!1838727 (and d!2160521 b!6887059)))

(assert (=> bs!1838727 (not (= lambda!390168 lambda!390165))))

(declare-fun bs!1838728 () Bool)

(assert (= bs!1838728 (and d!2160521 b!6886639)))

(assert (=> bs!1838728 (= (and (= (_1!36970 lt!2461471) s!14361) (= r1!6342 lt!2461482) (= r2!6280 r3!135)) (= lambda!390168 lambda!390115))))

(assert (=> bs!1838724 (not (= lambda!390168 lambda!390153))))

(declare-fun bs!1838729 () Bool)

(assert (= bs!1838729 (and d!2160521 b!6886996)))

(assert (=> bs!1838729 (not (= lambda!390168 lambda!390164))))

(declare-fun bs!1838730 () Bool)

(assert (= bs!1838730 (and d!2160521 b!6886631)))

(assert (=> bs!1838730 (= (and (= (_1!36970 lt!2461471) lt!2461474) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!390168 lambda!390119))))

(assert (=> bs!1838728 (not (= lambda!390168 lambda!390116))))

(declare-fun bs!1838731 () Bool)

(assert (= bs!1838731 (and d!2160521 d!2160513)))

(assert (=> bs!1838731 (= lambda!390168 lambda!390167)))

(declare-fun bs!1838732 () Bool)

(assert (= bs!1838732 (and d!2160521 b!6886939)))

(assert (=> bs!1838732 (not (= lambda!390168 lambda!390162))))

(declare-fun bs!1838733 () Bool)

(assert (= bs!1838733 (and d!2160521 b!6886949)))

(assert (=> bs!1838733 (not (= lambda!390168 lambda!390161))))

(declare-fun bs!1838734 () Bool)

(assert (= bs!1838734 (and d!2160521 b!6886638)))

(assert (=> bs!1838734 (= lambda!390168 lambda!390117)))

(assert (=> bs!1838730 (not (= lambda!390168 lambda!390120))))

(declare-fun bs!1838735 () Bool)

(assert (= bs!1838735 (and d!2160521 b!6887006)))

(assert (=> bs!1838735 (not (= lambda!390168 lambda!390163))))

(assert (=> bs!1838734 (not (= lambda!390168 lambda!390118))))

(assert (=> d!2160521 true))

(assert (=> d!2160521 true))

(assert (=> d!2160521 true))

(declare-fun lambda!390169 () Int)

(assert (=> bs!1838724 (not (= lambda!390169 lambda!390152))))

(assert (=> bs!1838725 (not (= lambda!390169 lambda!390147))))

(assert (=> bs!1838726 (= (and (= (_1!36970 lt!2461471) s!14361) (= r1!6342 (regOne!34100 lt!2461476)) (= r2!6280 (regTwo!34100 lt!2461476))) (= lambda!390169 lambda!390166))))

(assert (=> bs!1838727 (not (= lambda!390169 lambda!390165))))

(declare-fun bs!1838736 () Bool)

(assert (= bs!1838736 d!2160521))

(assert (=> bs!1838736 (not (= lambda!390169 lambda!390168))))

(assert (=> bs!1838728 (not (= lambda!390169 lambda!390115))))

(assert (=> bs!1838724 (= (and (= (_1!36970 lt!2461471) lt!2461474) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!390169 lambda!390153))))

(assert (=> bs!1838729 (= (and (= (_1!36970 lt!2461471) s!14361) (= r1!6342 (regOne!34100 lt!2461493)) (= r2!6280 (regTwo!34100 lt!2461493))) (= lambda!390169 lambda!390164))))

(assert (=> bs!1838730 (not (= lambda!390169 lambda!390119))))

(assert (=> bs!1838728 (= (and (= (_1!36970 lt!2461471) s!14361) (= r1!6342 lt!2461482) (= r2!6280 r3!135)) (= lambda!390169 lambda!390116))))

(assert (=> bs!1838731 (not (= lambda!390169 lambda!390167))))

(assert (=> bs!1838732 (= (and (= (_1!36970 lt!2461471) lt!2461474) (= r1!6342 (regOne!34100 lt!2461480)) (= r2!6280 (regTwo!34100 lt!2461480))) (= lambda!390169 lambda!390162))))

(assert (=> bs!1838733 (not (= lambda!390169 lambda!390161))))

(assert (=> bs!1838734 (not (= lambda!390169 lambda!390117))))

(assert (=> bs!1838730 (= (and (= (_1!36970 lt!2461471) lt!2461474) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!390169 lambda!390120))))

(assert (=> bs!1838735 (not (= lambda!390169 lambda!390163))))

(assert (=> bs!1838734 (= lambda!390169 lambda!390118)))

(assert (=> d!2160521 true))

(assert (=> d!2160521 true))

(assert (=> d!2160521 true))

(assert (=> d!2160521 (= (Exists!3806 lambda!390168) (Exists!3806 lambda!390169))))

(declare-fun lt!2461612 () Unit!160308)

(assert (=> d!2160521 (= lt!2461612 (choose!51285 r1!6342 r2!6280 (_1!36970 lt!2461471)))))

(assert (=> d!2160521 (validRegex!8502 r1!6342)))

(assert (=> d!2160521 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2285 r1!6342 r2!6280 (_1!36970 lt!2461471)) lt!2461612)))

(declare-fun m!7609852 () Bool)

(assert (=> bs!1838736 m!7609852))

(declare-fun m!7609854 () Bool)

(assert (=> bs!1838736 m!7609854))

(declare-fun m!7609856 () Bool)

(assert (=> bs!1838736 m!7609856))

(assert (=> bs!1838736 m!7609480))

(assert (=> b!6886638 d!2160521))

(declare-fun d!2160523 () Bool)

(assert (=> d!2160523 (= (Exists!3806 lambda!390117) (choose!51282 lambda!390117))))

(declare-fun bs!1838737 () Bool)

(assert (= bs!1838737 d!2160523))

(declare-fun m!7609858 () Bool)

(assert (=> bs!1838737 m!7609858))

(assert (=> b!6886638 d!2160523))

(declare-fun b!6887084 () Bool)

(declare-fun e!4149417 () Bool)

(declare-fun e!4149421 () Bool)

(assert (=> b!6887084 (= e!4149417 e!4149421)))

(declare-fun res!2807740 () Bool)

(assert (=> b!6887084 (=> res!2807740 e!4149421)))

(declare-fun call!626775 () Bool)

(assert (=> b!6887084 (= res!2807740 call!626775)))

(declare-fun b!6887085 () Bool)

(declare-fun res!2807734 () Bool)

(declare-fun e!4149418 () Bool)

(assert (=> b!6887085 (=> res!2807734 e!4149418)))

(declare-fun e!4149423 () Bool)

(assert (=> b!6887085 (= res!2807734 e!4149423)))

(declare-fun res!2807737 () Bool)

(assert (=> b!6887085 (=> (not res!2807737) (not e!4149423))))

(declare-fun lt!2461613 () Bool)

(assert (=> b!6887085 (= res!2807737 lt!2461613)))

(declare-fun bm!626770 () Bool)

(assert (=> bm!626770 (= call!626775 (isEmpty!38685 (_2!36970 lt!2461484)))))

(declare-fun b!6887086 () Bool)

(declare-fun res!2807741 () Bool)

(assert (=> b!6887086 (=> (not res!2807741) (not e!4149423))))

(assert (=> b!6887086 (= res!2807741 (not call!626775))))

(declare-fun b!6887087 () Bool)

(declare-fun res!2807736 () Bool)

(assert (=> b!6887087 (=> (not res!2807736) (not e!4149423))))

(assert (=> b!6887087 (= res!2807736 (isEmpty!38685 (tail!12867 (_2!36970 lt!2461484))))))

(declare-fun b!6887088 () Bool)

(declare-fun e!4149420 () Bool)

(assert (=> b!6887088 (= e!4149420 (nullable!6683 r2!6280))))

(declare-fun b!6887089 () Bool)

(declare-fun res!2807735 () Bool)

(assert (=> b!6887089 (=> res!2807735 e!4149418)))

(assert (=> b!6887089 (= res!2807735 (not (is-ElementMatch!16794 r2!6280)))))

(declare-fun e!4149419 () Bool)

(assert (=> b!6887089 (= e!4149419 e!4149418)))

(declare-fun b!6887090 () Bool)

(declare-fun e!4149422 () Bool)

(assert (=> b!6887090 (= e!4149422 (= lt!2461613 call!626775))))

(declare-fun b!6887091 () Bool)

(assert (=> b!6887091 (= e!4149420 (matchR!8939 (derivativeStep!5362 r2!6280 (head!13815 (_2!36970 lt!2461484))) (tail!12867 (_2!36970 lt!2461484))))))

(declare-fun b!6887092 () Bool)

(declare-fun res!2807738 () Bool)

(assert (=> b!6887092 (=> res!2807738 e!4149421)))

(assert (=> b!6887092 (= res!2807738 (not (isEmpty!38685 (tail!12867 (_2!36970 lt!2461484)))))))

(declare-fun b!6887093 () Bool)

(assert (=> b!6887093 (= e!4149419 (not lt!2461613))))

(declare-fun b!6887094 () Bool)

(assert (=> b!6887094 (= e!4149421 (not (= (head!13815 (_2!36970 lt!2461484)) (c!1280626 r2!6280))))))

(declare-fun b!6887083 () Bool)

(assert (=> b!6887083 (= e!4149423 (= (head!13815 (_2!36970 lt!2461484)) (c!1280626 r2!6280)))))

(declare-fun d!2160525 () Bool)

(assert (=> d!2160525 e!4149422))

(declare-fun c!1280702 () Bool)

(assert (=> d!2160525 (= c!1280702 (is-EmptyExpr!16794 r2!6280))))

(assert (=> d!2160525 (= lt!2461613 e!4149420)))

(declare-fun c!1280704 () Bool)

(assert (=> d!2160525 (= c!1280704 (isEmpty!38685 (_2!36970 lt!2461484)))))

(assert (=> d!2160525 (validRegex!8502 r2!6280)))

(assert (=> d!2160525 (= (matchR!8939 r2!6280 (_2!36970 lt!2461484)) lt!2461613)))

(declare-fun b!6887095 () Bool)

(assert (=> b!6887095 (= e!4149418 e!4149417)))

(declare-fun res!2807739 () Bool)

(assert (=> b!6887095 (=> (not res!2807739) (not e!4149417))))

(assert (=> b!6887095 (= res!2807739 (not lt!2461613))))

(declare-fun b!6887096 () Bool)

(assert (=> b!6887096 (= e!4149422 e!4149419)))

(declare-fun c!1280703 () Bool)

(assert (=> b!6887096 (= c!1280703 (is-EmptyLang!16794 r2!6280))))

(assert (= (and d!2160525 c!1280704) b!6887088))

(assert (= (and d!2160525 (not c!1280704)) b!6887091))

(assert (= (and d!2160525 c!1280702) b!6887090))

(assert (= (and d!2160525 (not c!1280702)) b!6887096))

(assert (= (and b!6887096 c!1280703) b!6887093))

(assert (= (and b!6887096 (not c!1280703)) b!6887089))

(assert (= (and b!6887089 (not res!2807735)) b!6887085))

(assert (= (and b!6887085 res!2807737) b!6887086))

(assert (= (and b!6887086 res!2807741) b!6887087))

(assert (= (and b!6887087 res!2807736) b!6887083))

(assert (= (and b!6887085 (not res!2807734)) b!6887095))

(assert (= (and b!6887095 res!2807739) b!6887084))

(assert (= (and b!6887084 (not res!2807740)) b!6887092))

(assert (= (and b!6887092 (not res!2807738)) b!6887094))

(assert (= (or b!6887090 b!6887084 b!6887086) bm!626770))

(declare-fun m!7609860 () Bool)

(assert (=> b!6887094 m!7609860))

(declare-fun m!7609862 () Bool)

(assert (=> b!6887092 m!7609862))

(assert (=> b!6887092 m!7609862))

(declare-fun m!7609864 () Bool)

(assert (=> b!6887092 m!7609864))

(declare-fun m!7609866 () Bool)

(assert (=> b!6887088 m!7609866))

(assert (=> b!6887091 m!7609860))

(assert (=> b!6887091 m!7609860))

(declare-fun m!7609868 () Bool)

(assert (=> b!6887091 m!7609868))

(assert (=> b!6887091 m!7609862))

(assert (=> b!6887091 m!7609868))

(assert (=> b!6887091 m!7609862))

(declare-fun m!7609870 () Bool)

(assert (=> b!6887091 m!7609870))

(declare-fun m!7609872 () Bool)

(assert (=> bm!626770 m!7609872))

(assert (=> d!2160525 m!7609872))

(assert (=> d!2160525 m!7609484))

(assert (=> b!6887087 m!7609862))

(assert (=> b!6887087 m!7609862))

(assert (=> b!6887087 m!7609864))

(assert (=> b!6887083 m!7609860))

(assert (=> b!6886633 d!2160525))

(declare-fun bs!1838738 () Bool)

(declare-fun d!2160527 () Bool)

(assert (= bs!1838738 (and d!2160527 d!2160469)))

(declare-fun lambda!390170 () Int)

(assert (=> bs!1838738 (= (and (= s!14361 lt!2461474) (= lt!2461482 r2!6280)) (= lambda!390170 lambda!390152))))

(declare-fun bs!1838739 () Bool)

(assert (= bs!1838739 (and d!2160527 d!2160467)))

(assert (=> bs!1838739 (= (and (= s!14361 lt!2461474) (= lt!2461482 r2!6280)) (= lambda!390170 lambda!390147))))

(declare-fun bs!1838740 () Bool)

(assert (= bs!1838740 (and d!2160527 b!6887049)))

(assert (=> bs!1838740 (not (= lambda!390170 lambda!390166))))

(declare-fun bs!1838741 () Bool)

(assert (= bs!1838741 (and d!2160527 b!6887059)))

(assert (=> bs!1838741 (not (= lambda!390170 lambda!390165))))

(declare-fun bs!1838742 () Bool)

(assert (= bs!1838742 (and d!2160527 d!2160521)))

(assert (=> bs!1838742 (= (and (= s!14361 (_1!36970 lt!2461471)) (= lt!2461482 r1!6342) (= r3!135 r2!6280)) (= lambda!390170 lambda!390168))))

(declare-fun bs!1838743 () Bool)

(assert (= bs!1838743 (and d!2160527 b!6886639)))

(assert (=> bs!1838743 (= lambda!390170 lambda!390115)))

(assert (=> bs!1838738 (not (= lambda!390170 lambda!390153))))

(declare-fun bs!1838744 () Bool)

(assert (= bs!1838744 (and d!2160527 b!6886996)))

(assert (=> bs!1838744 (not (= lambda!390170 lambda!390164))))

(declare-fun bs!1838745 () Bool)

(assert (= bs!1838745 (and d!2160527 b!6886631)))

(assert (=> bs!1838745 (= (and (= s!14361 lt!2461474) (= lt!2461482 r2!6280)) (= lambda!390170 lambda!390119))))

(assert (=> bs!1838742 (not (= lambda!390170 lambda!390169))))

(assert (=> bs!1838743 (not (= lambda!390170 lambda!390116))))

(declare-fun bs!1838746 () Bool)

(assert (= bs!1838746 (and d!2160527 d!2160513)))

(assert (=> bs!1838746 (= (and (= s!14361 (_1!36970 lt!2461471)) (= lt!2461482 r1!6342) (= r3!135 r2!6280)) (= lambda!390170 lambda!390167))))

(declare-fun bs!1838747 () Bool)

(assert (= bs!1838747 (and d!2160527 b!6886939)))

(assert (=> bs!1838747 (not (= lambda!390170 lambda!390162))))

(declare-fun bs!1838748 () Bool)

(assert (= bs!1838748 (and d!2160527 b!6886949)))

(assert (=> bs!1838748 (not (= lambda!390170 lambda!390161))))

(declare-fun bs!1838749 () Bool)

(assert (= bs!1838749 (and d!2160527 b!6886638)))

(assert (=> bs!1838749 (= (and (= s!14361 (_1!36970 lt!2461471)) (= lt!2461482 r1!6342) (= r3!135 r2!6280)) (= lambda!390170 lambda!390117))))

(assert (=> bs!1838745 (not (= lambda!390170 lambda!390120))))

(declare-fun bs!1838750 () Bool)

(assert (= bs!1838750 (and d!2160527 b!6887006)))

(assert (=> bs!1838750 (not (= lambda!390170 lambda!390163))))

(assert (=> bs!1838749 (not (= lambda!390170 lambda!390118))))

(assert (=> d!2160527 true))

(assert (=> d!2160527 true))

(assert (=> d!2160527 true))

(declare-fun lambda!390171 () Int)

(assert (=> bs!1838738 (not (= lambda!390171 lambda!390152))))

(assert (=> bs!1838739 (not (= lambda!390171 lambda!390147))))

(assert (=> bs!1838740 (= (and (= lt!2461482 (regOne!34100 lt!2461476)) (= r3!135 (regTwo!34100 lt!2461476))) (= lambda!390171 lambda!390166))))

(assert (=> bs!1838741 (not (= lambda!390171 lambda!390165))))

(assert (=> bs!1838742 (not (= lambda!390171 lambda!390168))))

(declare-fun bs!1838751 () Bool)

(assert (= bs!1838751 d!2160527))

(assert (=> bs!1838751 (not (= lambda!390171 lambda!390170))))

(assert (=> bs!1838743 (not (= lambda!390171 lambda!390115))))

(assert (=> bs!1838738 (= (and (= s!14361 lt!2461474) (= lt!2461482 r2!6280)) (= lambda!390171 lambda!390153))))

(assert (=> bs!1838744 (= (and (= lt!2461482 (regOne!34100 lt!2461493)) (= r3!135 (regTwo!34100 lt!2461493))) (= lambda!390171 lambda!390164))))

(assert (=> bs!1838745 (not (= lambda!390171 lambda!390119))))

(assert (=> bs!1838742 (= (and (= s!14361 (_1!36970 lt!2461471)) (= lt!2461482 r1!6342) (= r3!135 r2!6280)) (= lambda!390171 lambda!390169))))

(assert (=> bs!1838743 (= lambda!390171 lambda!390116)))

(assert (=> bs!1838746 (not (= lambda!390171 lambda!390167))))

(assert (=> bs!1838747 (= (and (= s!14361 lt!2461474) (= lt!2461482 (regOne!34100 lt!2461480)) (= r3!135 (regTwo!34100 lt!2461480))) (= lambda!390171 lambda!390162))))

(assert (=> bs!1838748 (not (= lambda!390171 lambda!390161))))

(assert (=> bs!1838749 (not (= lambda!390171 lambda!390117))))

(assert (=> bs!1838745 (= (and (= s!14361 lt!2461474) (= lt!2461482 r2!6280)) (= lambda!390171 lambda!390120))))

(assert (=> bs!1838750 (not (= lambda!390171 lambda!390163))))

(assert (=> bs!1838749 (= (and (= s!14361 (_1!36970 lt!2461471)) (= lt!2461482 r1!6342) (= r3!135 r2!6280)) (= lambda!390171 lambda!390118))))

(assert (=> d!2160527 true))

(assert (=> d!2160527 true))

(assert (=> d!2160527 true))

(assert (=> d!2160527 (= (Exists!3806 lambda!390170) (Exists!3806 lambda!390171))))

(declare-fun lt!2461614 () Unit!160308)

(assert (=> d!2160527 (= lt!2461614 (choose!51285 lt!2461482 r3!135 s!14361))))

(assert (=> d!2160527 (validRegex!8502 lt!2461482)))

(assert (=> d!2160527 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2285 lt!2461482 r3!135 s!14361) lt!2461614)))

(declare-fun m!7609874 () Bool)

(assert (=> bs!1838751 m!7609874))

(declare-fun m!7609876 () Bool)

(assert (=> bs!1838751 m!7609876))

(declare-fun m!7609878 () Bool)

(assert (=> bs!1838751 m!7609878))

(declare-fun m!7609880 () Bool)

(assert (=> bs!1838751 m!7609880))

(assert (=> b!6886639 d!2160527))

(declare-fun b!6887115 () Bool)

(declare-fun res!2807754 () Bool)

(declare-fun e!4149434 () Bool)

(assert (=> b!6887115 (=> (not res!2807754) (not e!4149434))))

(declare-fun lt!2461622 () Option!16579)

(assert (=> b!6887115 (= res!2807754 (matchR!8939 r3!135 (_2!36970 (get!23154 lt!2461622))))))

(declare-fun b!6887116 () Bool)

(declare-fun res!2807752 () Bool)

(assert (=> b!6887116 (=> (not res!2807752) (not e!4149434))))

(assert (=> b!6887116 (= res!2807752 (matchR!8939 lt!2461482 (_1!36970 (get!23154 lt!2461622))))))

(declare-fun b!6887117 () Bool)

(declare-fun e!4149435 () Option!16579)

(declare-fun e!4149438 () Option!16579)

(assert (=> b!6887117 (= e!4149435 e!4149438)))

(declare-fun c!1280709 () Bool)

(assert (=> b!6887117 (= c!1280709 (is-Nil!66427 s!14361))))

(declare-fun d!2160529 () Bool)

(declare-fun e!4149436 () Bool)

(assert (=> d!2160529 e!4149436))

(declare-fun res!2807755 () Bool)

(assert (=> d!2160529 (=> res!2807755 e!4149436)))

(assert (=> d!2160529 (= res!2807755 e!4149434)))

(declare-fun res!2807753 () Bool)

(assert (=> d!2160529 (=> (not res!2807753) (not e!4149434))))

(assert (=> d!2160529 (= res!2807753 (isDefined!13282 lt!2461622))))

(assert (=> d!2160529 (= lt!2461622 e!4149435)))

(declare-fun c!1280710 () Bool)

(declare-fun e!4149437 () Bool)

(assert (=> d!2160529 (= c!1280710 e!4149437)))

(declare-fun res!2807756 () Bool)

(assert (=> d!2160529 (=> (not res!2807756) (not e!4149437))))

(assert (=> d!2160529 (= res!2807756 (matchR!8939 lt!2461482 Nil!66427))))

(assert (=> d!2160529 (validRegex!8502 lt!2461482)))

(assert (=> d!2160529 (= (findConcatSeparation!2993 lt!2461482 r3!135 Nil!66427 s!14361 s!14361) lt!2461622)))

(declare-fun b!6887118 () Bool)

(assert (=> b!6887118 (= e!4149435 (Some!16578 (tuple2!67335 Nil!66427 s!14361)))))

(declare-fun b!6887119 () Bool)

(declare-fun lt!2461623 () Unit!160308)

(declare-fun lt!2461621 () Unit!160308)

(assert (=> b!6887119 (= lt!2461623 lt!2461621)))

(assert (=> b!6887119 (= (++!14873 (++!14873 Nil!66427 (Cons!66427 (h!72875 s!14361) Nil!66427)) (t!380294 s!14361)) s!14361)))

(assert (=> b!6887119 (= lt!2461621 (lemmaMoveElementToOtherListKeepsConcatEq!2774 Nil!66427 (h!72875 s!14361) (t!380294 s!14361) s!14361))))

(assert (=> b!6887119 (= e!4149438 (findConcatSeparation!2993 lt!2461482 r3!135 (++!14873 Nil!66427 (Cons!66427 (h!72875 s!14361) Nil!66427)) (t!380294 s!14361) s!14361))))

(declare-fun b!6887120 () Bool)

(assert (=> b!6887120 (= e!4149438 None!16578)))

(declare-fun b!6887121 () Bool)

(assert (=> b!6887121 (= e!4149436 (not (isDefined!13282 lt!2461622)))))

(declare-fun b!6887122 () Bool)

(assert (=> b!6887122 (= e!4149437 (matchR!8939 r3!135 s!14361))))

(declare-fun b!6887123 () Bool)

(assert (=> b!6887123 (= e!4149434 (= (++!14873 (_1!36970 (get!23154 lt!2461622)) (_2!36970 (get!23154 lt!2461622))) s!14361))))

(assert (= (and d!2160529 res!2807756) b!6887122))

(assert (= (and d!2160529 c!1280710) b!6887118))

(assert (= (and d!2160529 (not c!1280710)) b!6887117))

(assert (= (and b!6887117 c!1280709) b!6887120))

(assert (= (and b!6887117 (not c!1280709)) b!6887119))

(assert (= (and d!2160529 res!2807753) b!6887116))

(assert (= (and b!6887116 res!2807752) b!6887115))

(assert (= (and b!6887115 res!2807754) b!6887123))

(assert (= (and d!2160529 (not res!2807755)) b!6887121))

(declare-fun m!7609882 () Bool)

(assert (=> d!2160529 m!7609882))

(declare-fun m!7609884 () Bool)

(assert (=> d!2160529 m!7609884))

(assert (=> d!2160529 m!7609880))

(declare-fun m!7609886 () Bool)

(assert (=> b!6887115 m!7609886))

(declare-fun m!7609888 () Bool)

(assert (=> b!6887115 m!7609888))

(assert (=> b!6887116 m!7609886))

(declare-fun m!7609890 () Bool)

(assert (=> b!6887116 m!7609890))

(assert (=> b!6887121 m!7609882))

(assert (=> b!6887123 m!7609886))

(declare-fun m!7609892 () Bool)

(assert (=> b!6887123 m!7609892))

(declare-fun m!7609894 () Bool)

(assert (=> b!6887122 m!7609894))

(declare-fun m!7609896 () Bool)

(assert (=> b!6887119 m!7609896))

(assert (=> b!6887119 m!7609896))

(declare-fun m!7609898 () Bool)

(assert (=> b!6887119 m!7609898))

(declare-fun m!7609900 () Bool)

(assert (=> b!6887119 m!7609900))

(assert (=> b!6887119 m!7609896))

(declare-fun m!7609902 () Bool)

(assert (=> b!6887119 m!7609902))

(assert (=> b!6886639 d!2160529))

(declare-fun d!2160531 () Bool)

(assert (=> d!2160531 (= (Exists!3806 lambda!390116) (choose!51282 lambda!390116))))

(declare-fun bs!1838752 () Bool)

(assert (= bs!1838752 d!2160531))

(declare-fun m!7609904 () Bool)

(assert (=> bs!1838752 m!7609904))

(assert (=> b!6886639 d!2160531))

(declare-fun b!6887125 () Bool)

(declare-fun e!4149439 () Bool)

(declare-fun e!4149443 () Bool)

(assert (=> b!6887125 (= e!4149439 e!4149443)))

(declare-fun res!2807763 () Bool)

(assert (=> b!6887125 (=> res!2807763 e!4149443)))

(declare-fun call!626776 () Bool)

(assert (=> b!6887125 (= res!2807763 call!626776)))

(declare-fun b!6887126 () Bool)

(declare-fun res!2807757 () Bool)

(declare-fun e!4149440 () Bool)

(assert (=> b!6887126 (=> res!2807757 e!4149440)))

(declare-fun e!4149445 () Bool)

(assert (=> b!6887126 (= res!2807757 e!4149445)))

(declare-fun res!2807760 () Bool)

(assert (=> b!6887126 (=> (not res!2807760) (not e!4149445))))

(declare-fun lt!2461624 () Bool)

(assert (=> b!6887126 (= res!2807760 lt!2461624)))

(declare-fun bm!626771 () Bool)

(assert (=> bm!626771 (= call!626776 (isEmpty!38685 (_1!36970 lt!2461471)))))

(declare-fun b!6887127 () Bool)

(declare-fun res!2807764 () Bool)

(assert (=> b!6887127 (=> (not res!2807764) (not e!4149445))))

(assert (=> b!6887127 (= res!2807764 (not call!626776))))

(declare-fun b!6887128 () Bool)

(declare-fun res!2807759 () Bool)

(assert (=> b!6887128 (=> (not res!2807759) (not e!4149445))))

(assert (=> b!6887128 (= res!2807759 (isEmpty!38685 (tail!12867 (_1!36970 lt!2461471))))))

(declare-fun b!6887129 () Bool)

(declare-fun e!4149442 () Bool)

(assert (=> b!6887129 (= e!4149442 (nullable!6683 lt!2461482))))

(declare-fun b!6887130 () Bool)

(declare-fun res!2807758 () Bool)

(assert (=> b!6887130 (=> res!2807758 e!4149440)))

(assert (=> b!6887130 (= res!2807758 (not (is-ElementMatch!16794 lt!2461482)))))

(declare-fun e!4149441 () Bool)

(assert (=> b!6887130 (= e!4149441 e!4149440)))

(declare-fun b!6887131 () Bool)

(declare-fun e!4149444 () Bool)

(assert (=> b!6887131 (= e!4149444 (= lt!2461624 call!626776))))

(declare-fun b!6887132 () Bool)

(assert (=> b!6887132 (= e!4149442 (matchR!8939 (derivativeStep!5362 lt!2461482 (head!13815 (_1!36970 lt!2461471))) (tail!12867 (_1!36970 lt!2461471))))))

(declare-fun b!6887133 () Bool)

(declare-fun res!2807761 () Bool)

(assert (=> b!6887133 (=> res!2807761 e!4149443)))

(assert (=> b!6887133 (= res!2807761 (not (isEmpty!38685 (tail!12867 (_1!36970 lt!2461471)))))))

(declare-fun b!6887134 () Bool)

(assert (=> b!6887134 (= e!4149441 (not lt!2461624))))

(declare-fun b!6887135 () Bool)

(assert (=> b!6887135 (= e!4149443 (not (= (head!13815 (_1!36970 lt!2461471)) (c!1280626 lt!2461482))))))

(declare-fun b!6887124 () Bool)

(assert (=> b!6887124 (= e!4149445 (= (head!13815 (_1!36970 lt!2461471)) (c!1280626 lt!2461482)))))

(declare-fun d!2160533 () Bool)

(assert (=> d!2160533 e!4149444))

(declare-fun c!1280711 () Bool)

(assert (=> d!2160533 (= c!1280711 (is-EmptyExpr!16794 lt!2461482))))

(assert (=> d!2160533 (= lt!2461624 e!4149442)))

(declare-fun c!1280713 () Bool)

(assert (=> d!2160533 (= c!1280713 (isEmpty!38685 (_1!36970 lt!2461471)))))

(assert (=> d!2160533 (validRegex!8502 lt!2461482)))

(assert (=> d!2160533 (= (matchR!8939 lt!2461482 (_1!36970 lt!2461471)) lt!2461624)))

(declare-fun b!6887136 () Bool)

(assert (=> b!6887136 (= e!4149440 e!4149439)))

(declare-fun res!2807762 () Bool)

(assert (=> b!6887136 (=> (not res!2807762) (not e!4149439))))

(assert (=> b!6887136 (= res!2807762 (not lt!2461624))))

(declare-fun b!6887137 () Bool)

(assert (=> b!6887137 (= e!4149444 e!4149441)))

(declare-fun c!1280712 () Bool)

(assert (=> b!6887137 (= c!1280712 (is-EmptyLang!16794 lt!2461482))))

(assert (= (and d!2160533 c!1280713) b!6887129))

(assert (= (and d!2160533 (not c!1280713)) b!6887132))

(assert (= (and d!2160533 c!1280711) b!6887131))

(assert (= (and d!2160533 (not c!1280711)) b!6887137))

(assert (= (and b!6887137 c!1280712) b!6887134))

(assert (= (and b!6887137 (not c!1280712)) b!6887130))

(assert (= (and b!6887130 (not res!2807758)) b!6887126))

(assert (= (and b!6887126 res!2807760) b!6887127))

(assert (= (and b!6887127 res!2807764) b!6887128))

(assert (= (and b!6887128 res!2807759) b!6887124))

(assert (= (and b!6887126 (not res!2807757)) b!6887136))

(assert (= (and b!6887136 res!2807762) b!6887125))

(assert (= (and b!6887125 (not res!2807763)) b!6887133))

(assert (= (and b!6887133 (not res!2807761)) b!6887135))

(assert (= (or b!6887131 b!6887125 b!6887127) bm!626771))

(declare-fun m!7609906 () Bool)

(assert (=> b!6887135 m!7609906))

(declare-fun m!7609908 () Bool)

(assert (=> b!6887133 m!7609908))

(assert (=> b!6887133 m!7609908))

(declare-fun m!7609910 () Bool)

(assert (=> b!6887133 m!7609910))

(declare-fun m!7609912 () Bool)

(assert (=> b!6887129 m!7609912))

(assert (=> b!6887132 m!7609906))

(assert (=> b!6887132 m!7609906))

(declare-fun m!7609914 () Bool)

(assert (=> b!6887132 m!7609914))

(assert (=> b!6887132 m!7609908))

(assert (=> b!6887132 m!7609914))

(assert (=> b!6887132 m!7609908))

(declare-fun m!7609916 () Bool)

(assert (=> b!6887132 m!7609916))

(declare-fun m!7609918 () Bool)

(assert (=> bm!626771 m!7609918))

(assert (=> d!2160533 m!7609918))

(assert (=> d!2160533 m!7609880))

(assert (=> b!6887128 m!7609908))

(assert (=> b!6887128 m!7609908))

(assert (=> b!6887128 m!7609910))

(assert (=> b!6887124 m!7609906))

(assert (=> b!6886639 d!2160533))

(declare-fun bs!1838753 () Bool)

(declare-fun b!6887148 () Bool)

(assert (= bs!1838753 (and b!6887148 d!2160469)))

(declare-fun lambda!390172 () Int)

(assert (=> bs!1838753 (not (= lambda!390172 lambda!390152))))

(declare-fun bs!1838754 () Bool)

(assert (= bs!1838754 (and b!6887148 d!2160467)))

(assert (=> bs!1838754 (not (= lambda!390172 lambda!390147))))

(declare-fun bs!1838755 () Bool)

(assert (= bs!1838755 (and b!6887148 b!6887049)))

(assert (=> bs!1838755 (not (= lambda!390172 lambda!390166))))

(declare-fun bs!1838756 () Bool)

(assert (= bs!1838756 (and b!6887148 b!6887059)))

(assert (=> bs!1838756 (= (and (= (_1!36970 lt!2461471) s!14361) (= (reg!17123 lt!2461482) (reg!17123 lt!2461476)) (= lt!2461482 lt!2461476)) (= lambda!390172 lambda!390165))))

(declare-fun bs!1838757 () Bool)

(assert (= bs!1838757 (and b!6887148 d!2160521)))

(assert (=> bs!1838757 (not (= lambda!390172 lambda!390168))))

(declare-fun bs!1838758 () Bool)

(assert (= bs!1838758 (and b!6887148 d!2160527)))

(assert (=> bs!1838758 (not (= lambda!390172 lambda!390170))))

(declare-fun bs!1838759 () Bool)

(assert (= bs!1838759 (and b!6887148 b!6886639)))

(assert (=> bs!1838759 (not (= lambda!390172 lambda!390115))))

(assert (=> bs!1838753 (not (= lambda!390172 lambda!390153))))

(declare-fun bs!1838760 () Bool)

(assert (= bs!1838760 (and b!6887148 b!6886996)))

(assert (=> bs!1838760 (not (= lambda!390172 lambda!390164))))

(declare-fun bs!1838761 () Bool)

(assert (= bs!1838761 (and b!6887148 b!6886631)))

(assert (=> bs!1838761 (not (= lambda!390172 lambda!390119))))

(assert (=> bs!1838757 (not (= lambda!390172 lambda!390169))))

(assert (=> bs!1838758 (not (= lambda!390172 lambda!390171))))

(assert (=> bs!1838759 (not (= lambda!390172 lambda!390116))))

(declare-fun bs!1838762 () Bool)

(assert (= bs!1838762 (and b!6887148 d!2160513)))

(assert (=> bs!1838762 (not (= lambda!390172 lambda!390167))))

(declare-fun bs!1838763 () Bool)

(assert (= bs!1838763 (and b!6887148 b!6886939)))

(assert (=> bs!1838763 (not (= lambda!390172 lambda!390162))))

(declare-fun bs!1838764 () Bool)

(assert (= bs!1838764 (and b!6887148 b!6886949)))

(assert (=> bs!1838764 (= (and (= (_1!36970 lt!2461471) lt!2461474) (= (reg!17123 lt!2461482) (reg!17123 lt!2461480)) (= lt!2461482 lt!2461480)) (= lambda!390172 lambda!390161))))

(declare-fun bs!1838765 () Bool)

(assert (= bs!1838765 (and b!6887148 b!6886638)))

(assert (=> bs!1838765 (not (= lambda!390172 lambda!390117))))

(assert (=> bs!1838761 (not (= lambda!390172 lambda!390120))))

(declare-fun bs!1838766 () Bool)

(assert (= bs!1838766 (and b!6887148 b!6887006)))

(assert (=> bs!1838766 (= (and (= (_1!36970 lt!2461471) s!14361) (= (reg!17123 lt!2461482) (reg!17123 lt!2461493)) (= lt!2461482 lt!2461493)) (= lambda!390172 lambda!390163))))

(assert (=> bs!1838765 (not (= lambda!390172 lambda!390118))))

(assert (=> b!6887148 true))

(assert (=> b!6887148 true))

(declare-fun bs!1838767 () Bool)

(declare-fun b!6887138 () Bool)

(assert (= bs!1838767 (and b!6887138 d!2160469)))

(declare-fun lambda!390173 () Int)

(assert (=> bs!1838767 (not (= lambda!390173 lambda!390152))))

(declare-fun bs!1838768 () Bool)

(assert (= bs!1838768 (and b!6887138 d!2160467)))

(assert (=> bs!1838768 (not (= lambda!390173 lambda!390147))))

(declare-fun bs!1838769 () Bool)

(assert (= bs!1838769 (and b!6887138 b!6887049)))

(assert (=> bs!1838769 (= (and (= (_1!36970 lt!2461471) s!14361) (= (regOne!34100 lt!2461482) (regOne!34100 lt!2461476)) (= (regTwo!34100 lt!2461482) (regTwo!34100 lt!2461476))) (= lambda!390173 lambda!390166))))

(declare-fun bs!1838770 () Bool)

(assert (= bs!1838770 (and b!6887138 b!6887059)))

(assert (=> bs!1838770 (not (= lambda!390173 lambda!390165))))

(declare-fun bs!1838771 () Bool)

(assert (= bs!1838771 (and b!6887138 d!2160521)))

(assert (=> bs!1838771 (not (= lambda!390173 lambda!390168))))

(declare-fun bs!1838772 () Bool)

(assert (= bs!1838772 (and b!6887138 d!2160527)))

(assert (=> bs!1838772 (not (= lambda!390173 lambda!390170))))

(declare-fun bs!1838773 () Bool)

(assert (= bs!1838773 (and b!6887138 b!6886639)))

(assert (=> bs!1838773 (not (= lambda!390173 lambda!390115))))

(assert (=> bs!1838767 (= (and (= (_1!36970 lt!2461471) lt!2461474) (= (regOne!34100 lt!2461482) r2!6280) (= (regTwo!34100 lt!2461482) r3!135)) (= lambda!390173 lambda!390153))))

(declare-fun bs!1838774 () Bool)

(assert (= bs!1838774 (and b!6887138 b!6886996)))

(assert (=> bs!1838774 (= (and (= (_1!36970 lt!2461471) s!14361) (= (regOne!34100 lt!2461482) (regOne!34100 lt!2461493)) (= (regTwo!34100 lt!2461482) (regTwo!34100 lt!2461493))) (= lambda!390173 lambda!390164))))

(assert (=> bs!1838771 (= (and (= (regOne!34100 lt!2461482) r1!6342) (= (regTwo!34100 lt!2461482) r2!6280)) (= lambda!390173 lambda!390169))))

(assert (=> bs!1838772 (= (and (= (_1!36970 lt!2461471) s!14361) (= (regOne!34100 lt!2461482) lt!2461482) (= (regTwo!34100 lt!2461482) r3!135)) (= lambda!390173 lambda!390171))))

(assert (=> bs!1838773 (= (and (= (_1!36970 lt!2461471) s!14361) (= (regOne!34100 lt!2461482) lt!2461482) (= (regTwo!34100 lt!2461482) r3!135)) (= lambda!390173 lambda!390116))))

(declare-fun bs!1838775 () Bool)

(assert (= bs!1838775 (and b!6887138 d!2160513)))

(assert (=> bs!1838775 (not (= lambda!390173 lambda!390167))))

(declare-fun bs!1838776 () Bool)

(assert (= bs!1838776 (and b!6887138 b!6886939)))

(assert (=> bs!1838776 (= (and (= (_1!36970 lt!2461471) lt!2461474) (= (regOne!34100 lt!2461482) (regOne!34100 lt!2461480)) (= (regTwo!34100 lt!2461482) (regTwo!34100 lt!2461480))) (= lambda!390173 lambda!390162))))

(declare-fun bs!1838777 () Bool)

(assert (= bs!1838777 (and b!6887138 b!6886949)))

(assert (=> bs!1838777 (not (= lambda!390173 lambda!390161))))

(declare-fun bs!1838778 () Bool)

(assert (= bs!1838778 (and b!6887138 b!6886638)))

(assert (=> bs!1838778 (not (= lambda!390173 lambda!390117))))

(declare-fun bs!1838779 () Bool)

(assert (= bs!1838779 (and b!6887138 b!6886631)))

(assert (=> bs!1838779 (= (and (= (_1!36970 lt!2461471) lt!2461474) (= (regOne!34100 lt!2461482) r2!6280) (= (regTwo!34100 lt!2461482) r3!135)) (= lambda!390173 lambda!390120))))

(declare-fun bs!1838780 () Bool)

(assert (= bs!1838780 (and b!6887138 b!6887006)))

(assert (=> bs!1838780 (not (= lambda!390173 lambda!390163))))

(assert (=> bs!1838778 (= (and (= (regOne!34100 lt!2461482) r1!6342) (= (regTwo!34100 lt!2461482) r2!6280)) (= lambda!390173 lambda!390118))))

(declare-fun bs!1838781 () Bool)

(assert (= bs!1838781 (and b!6887138 b!6887148)))

(assert (=> bs!1838781 (not (= lambda!390173 lambda!390172))))

(assert (=> bs!1838779 (not (= lambda!390173 lambda!390119))))

(assert (=> b!6887138 true))

(assert (=> b!6887138 true))

(declare-fun e!4149447 () Bool)

(declare-fun call!626777 () Bool)

(assert (=> b!6887138 (= e!4149447 call!626777)))

(declare-fun d!2160535 () Bool)

(declare-fun c!1280716 () Bool)

(assert (=> d!2160535 (= c!1280716 (is-EmptyExpr!16794 lt!2461482))))

(declare-fun e!4149449 () Bool)

(assert (=> d!2160535 (= (matchRSpec!3857 lt!2461482 (_1!36970 lt!2461471)) e!4149449)))

(declare-fun b!6887139 () Bool)

(declare-fun e!4149448 () Bool)

(assert (=> b!6887139 (= e!4149448 e!4149447)))

(declare-fun c!1280717 () Bool)

(assert (=> b!6887139 (= c!1280717 (is-Star!16794 lt!2461482))))

(declare-fun bm!626772 () Bool)

(declare-fun call!626778 () Bool)

(assert (=> bm!626772 (= call!626778 (isEmpty!38685 (_1!36970 lt!2461471)))))

(declare-fun bm!626773 () Bool)

(assert (=> bm!626773 (= call!626777 (Exists!3806 (ite c!1280717 lambda!390172 lambda!390173)))))

(declare-fun b!6887140 () Bool)

(declare-fun c!1280714 () Bool)

(assert (=> b!6887140 (= c!1280714 (is-Union!16794 lt!2461482))))

(declare-fun e!4149446 () Bool)

(assert (=> b!6887140 (= e!4149446 e!4149448)))

(declare-fun b!6887141 () Bool)

(declare-fun e!4149452 () Bool)

(assert (=> b!6887141 (= e!4149449 e!4149452)))

(declare-fun res!2807767 () Bool)

(assert (=> b!6887141 (= res!2807767 (not (is-EmptyLang!16794 lt!2461482)))))

(assert (=> b!6887141 (=> (not res!2807767) (not e!4149452))))

(declare-fun b!6887142 () Bool)

(assert (=> b!6887142 (= e!4149446 (= (_1!36970 lt!2461471) (Cons!66427 (c!1280626 lt!2461482) Nil!66427)))))

(declare-fun b!6887143 () Bool)

(declare-fun c!1280715 () Bool)

(assert (=> b!6887143 (= c!1280715 (is-ElementMatch!16794 lt!2461482))))

(assert (=> b!6887143 (= e!4149452 e!4149446)))

(declare-fun b!6887144 () Bool)

(assert (=> b!6887144 (= e!4149449 call!626778)))

(declare-fun b!6887145 () Bool)

(declare-fun e!4149450 () Bool)

(assert (=> b!6887145 (= e!4149448 e!4149450)))

(declare-fun res!2807766 () Bool)

(assert (=> b!6887145 (= res!2807766 (matchRSpec!3857 (regOne!34101 lt!2461482) (_1!36970 lt!2461471)))))

(assert (=> b!6887145 (=> res!2807766 e!4149450)))

(declare-fun b!6887146 () Bool)

(declare-fun res!2807765 () Bool)

(declare-fun e!4149451 () Bool)

(assert (=> b!6887146 (=> res!2807765 e!4149451)))

(assert (=> b!6887146 (= res!2807765 call!626778)))

(assert (=> b!6887146 (= e!4149447 e!4149451)))

(declare-fun b!6887147 () Bool)

(assert (=> b!6887147 (= e!4149450 (matchRSpec!3857 (regTwo!34101 lt!2461482) (_1!36970 lt!2461471)))))

(assert (=> b!6887148 (= e!4149451 call!626777)))

(assert (= (and d!2160535 c!1280716) b!6887144))

(assert (= (and d!2160535 (not c!1280716)) b!6887141))

(assert (= (and b!6887141 res!2807767) b!6887143))

(assert (= (and b!6887143 c!1280715) b!6887142))

(assert (= (and b!6887143 (not c!1280715)) b!6887140))

(assert (= (and b!6887140 c!1280714) b!6887145))

(assert (= (and b!6887140 (not c!1280714)) b!6887139))

(assert (= (and b!6887145 (not res!2807766)) b!6887147))

(assert (= (and b!6887139 c!1280717) b!6887146))

(assert (= (and b!6887139 (not c!1280717)) b!6887138))

(assert (= (and b!6887146 (not res!2807765)) b!6887148))

(assert (= (or b!6887148 b!6887138) bm!626773))

(assert (= (or b!6887144 b!6887146) bm!626772))

(assert (=> bm!626772 m!7609918))

(declare-fun m!7609942 () Bool)

(assert (=> bm!626773 m!7609942))

(declare-fun m!7609944 () Bool)

(assert (=> b!6887145 m!7609944))

(declare-fun m!7609946 () Bool)

(assert (=> b!6887147 m!7609946))

(assert (=> b!6886639 d!2160535))

(declare-fun d!2160539 () Bool)

(assert (=> d!2160539 (= (Exists!3806 lambda!390115) (choose!51282 lambda!390115))))

(declare-fun bs!1838782 () Bool)

(assert (= bs!1838782 d!2160539))

(declare-fun m!7609948 () Bool)

(assert (=> bs!1838782 m!7609948))

(assert (=> b!6886639 d!2160539))

(declare-fun d!2160541 () Bool)

(assert (=> d!2160541 (= (matchR!8939 lt!2461482 (_1!36970 lt!2461471)) (matchRSpec!3857 lt!2461482 (_1!36970 lt!2461471)))))

(declare-fun lt!2461628 () Unit!160308)

(assert (=> d!2160541 (= lt!2461628 (choose!51286 lt!2461482 (_1!36970 lt!2461471)))))

(assert (=> d!2160541 (validRegex!8502 lt!2461482)))

(assert (=> d!2160541 (= (mainMatchTheorem!3857 lt!2461482 (_1!36970 lt!2461471)) lt!2461628)))

(declare-fun bs!1838783 () Bool)

(assert (= bs!1838783 d!2160541))

(assert (=> bs!1838783 m!7609526))

(assert (=> bs!1838783 m!7609536))

(declare-fun m!7609950 () Bool)

(assert (=> bs!1838783 m!7609950))

(assert (=> bs!1838783 m!7609880))

(assert (=> b!6886639 d!2160541))

(declare-fun d!2160543 () Bool)

(assert (=> d!2160543 (= (isDefined!13282 lt!2461477) (not (isEmpty!38684 lt!2461477)))))

(declare-fun bs!1838784 () Bool)

(assert (= bs!1838784 d!2160543))

(declare-fun m!7609952 () Bool)

(assert (=> bs!1838784 m!7609952))

(assert (=> b!6886639 d!2160543))

(declare-fun d!2160545 () Bool)

(assert (=> d!2160545 (= (get!23154 lt!2461477) (v!52850 lt!2461477))))

(assert (=> b!6886639 d!2160545))

(declare-fun bs!1838785 () Bool)

(declare-fun d!2160547 () Bool)

(assert (= bs!1838785 (and d!2160547 d!2160469)))

(declare-fun lambda!390174 () Int)

(assert (=> bs!1838785 (= (and (= s!14361 lt!2461474) (= lt!2461482 r2!6280)) (= lambda!390174 lambda!390152))))

(declare-fun bs!1838786 () Bool)

(assert (= bs!1838786 (and d!2160547 d!2160467)))

(assert (=> bs!1838786 (= (and (= s!14361 lt!2461474) (= lt!2461482 r2!6280)) (= lambda!390174 lambda!390147))))

(declare-fun bs!1838787 () Bool)

(assert (= bs!1838787 (and d!2160547 b!6887049)))

(assert (=> bs!1838787 (not (= lambda!390174 lambda!390166))))

(declare-fun bs!1838788 () Bool)

(assert (= bs!1838788 (and d!2160547 b!6887059)))

(assert (=> bs!1838788 (not (= lambda!390174 lambda!390165))))

(declare-fun bs!1838789 () Bool)

(assert (= bs!1838789 (and d!2160547 d!2160521)))

(assert (=> bs!1838789 (= (and (= s!14361 (_1!36970 lt!2461471)) (= lt!2461482 r1!6342) (= r3!135 r2!6280)) (= lambda!390174 lambda!390168))))

(declare-fun bs!1838790 () Bool)

(assert (= bs!1838790 (and d!2160547 d!2160527)))

(assert (=> bs!1838790 (= lambda!390174 lambda!390170)))

(declare-fun bs!1838791 () Bool)

(assert (= bs!1838791 (and d!2160547 b!6886639)))

(assert (=> bs!1838791 (= lambda!390174 lambda!390115)))

(assert (=> bs!1838785 (not (= lambda!390174 lambda!390153))))

(declare-fun bs!1838792 () Bool)

(assert (= bs!1838792 (and d!2160547 b!6886996)))

(assert (=> bs!1838792 (not (= lambda!390174 lambda!390164))))

(assert (=> bs!1838789 (not (= lambda!390174 lambda!390169))))

(assert (=> bs!1838790 (not (= lambda!390174 lambda!390171))))

(assert (=> bs!1838791 (not (= lambda!390174 lambda!390116))))

(declare-fun bs!1838793 () Bool)

(assert (= bs!1838793 (and d!2160547 d!2160513)))

(assert (=> bs!1838793 (= (and (= s!14361 (_1!36970 lt!2461471)) (= lt!2461482 r1!6342) (= r3!135 r2!6280)) (= lambda!390174 lambda!390167))))

(declare-fun bs!1838794 () Bool)

(assert (= bs!1838794 (and d!2160547 b!6886939)))

(assert (=> bs!1838794 (not (= lambda!390174 lambda!390162))))

(declare-fun bs!1838795 () Bool)

(assert (= bs!1838795 (and d!2160547 b!6886949)))

(assert (=> bs!1838795 (not (= lambda!390174 lambda!390161))))

(declare-fun bs!1838796 () Bool)

(assert (= bs!1838796 (and d!2160547 b!6886638)))

(assert (=> bs!1838796 (= (and (= s!14361 (_1!36970 lt!2461471)) (= lt!2461482 r1!6342) (= r3!135 r2!6280)) (= lambda!390174 lambda!390117))))

(declare-fun bs!1838797 () Bool)

(assert (= bs!1838797 (and d!2160547 b!6886631)))

(assert (=> bs!1838797 (not (= lambda!390174 lambda!390120))))

(declare-fun bs!1838798 () Bool)

(assert (= bs!1838798 (and d!2160547 b!6887006)))

(assert (=> bs!1838798 (not (= lambda!390174 lambda!390163))))

(assert (=> bs!1838796 (not (= lambda!390174 lambda!390118))))

(declare-fun bs!1838799 () Bool)

(assert (= bs!1838799 (and d!2160547 b!6887138)))

(assert (=> bs!1838799 (not (= lambda!390174 lambda!390173))))

(declare-fun bs!1838800 () Bool)

(assert (= bs!1838800 (and d!2160547 b!6887148)))

(assert (=> bs!1838800 (not (= lambda!390174 lambda!390172))))

(assert (=> bs!1838797 (= (and (= s!14361 lt!2461474) (= lt!2461482 r2!6280)) (= lambda!390174 lambda!390119))))

(assert (=> d!2160547 true))

(assert (=> d!2160547 true))

(assert (=> d!2160547 true))

(assert (=> d!2160547 (= (isDefined!13282 (findConcatSeparation!2993 lt!2461482 r3!135 Nil!66427 s!14361 s!14361)) (Exists!3806 lambda!390174))))

(declare-fun lt!2461629 () Unit!160308)

(assert (=> d!2160547 (= lt!2461629 (choose!51284 lt!2461482 r3!135 s!14361))))

(assert (=> d!2160547 (validRegex!8502 lt!2461482)))

(assert (=> d!2160547 (= (lemmaFindConcatSeparationEquivalentToExists!2757 lt!2461482 r3!135 s!14361) lt!2461629)))

(declare-fun bs!1838801 () Bool)

(assert (= bs!1838801 d!2160547))

(assert (=> bs!1838801 m!7609532))

(assert (=> bs!1838801 m!7609880))

(assert (=> bs!1838801 m!7609532))

(declare-fun m!7609954 () Bool)

(assert (=> bs!1838801 m!7609954))

(declare-fun m!7609956 () Bool)

(assert (=> bs!1838801 m!7609956))

(declare-fun m!7609958 () Bool)

(assert (=> bs!1838801 m!7609958))

(assert (=> b!6886639 d!2160547))

(declare-fun bm!626774 () Bool)

(declare-fun call!626779 () Bool)

(declare-fun c!1280720 () Bool)

(assert (=> bm!626774 (= call!626779 (validRegex!8502 (ite c!1280720 (regTwo!34101 r1!6342) (regOne!34100 r1!6342))))))

(declare-fun bm!626775 () Bool)

(declare-fun call!626780 () Bool)

(declare-fun call!626781 () Bool)

(assert (=> bm!626775 (= call!626780 call!626781)))

(declare-fun b!6887158 () Bool)

(declare-fun e!4149458 () Bool)

(declare-fun e!4149463 () Bool)

(assert (=> b!6887158 (= e!4149458 e!4149463)))

(declare-fun res!2807776 () Bool)

(assert (=> b!6887158 (= res!2807776 (not (nullable!6683 (reg!17123 r1!6342))))))

(assert (=> b!6887158 (=> (not res!2807776) (not e!4149463))))

(declare-fun d!2160549 () Bool)

(declare-fun res!2807774 () Bool)

(declare-fun e!4149460 () Bool)

(assert (=> d!2160549 (=> res!2807774 e!4149460)))

(assert (=> d!2160549 (= res!2807774 (is-ElementMatch!16794 r1!6342))))

(assert (=> d!2160549 (= (validRegex!8502 r1!6342) e!4149460)))

(declare-fun b!6887159 () Bool)

(declare-fun e!4149461 () Bool)

(assert (=> b!6887159 (= e!4149461 call!626780)))

(declare-fun b!6887160 () Bool)

(declare-fun res!2807777 () Bool)

(declare-fun e!4149464 () Bool)

(assert (=> b!6887160 (=> res!2807777 e!4149464)))

(assert (=> b!6887160 (= res!2807777 (not (is-Concat!25639 r1!6342)))))

(declare-fun e!4149459 () Bool)

(assert (=> b!6887160 (= e!4149459 e!4149464)))

(declare-fun c!1280721 () Bool)

(declare-fun bm!626776 () Bool)

(assert (=> bm!626776 (= call!626781 (validRegex!8502 (ite c!1280721 (reg!17123 r1!6342) (ite c!1280720 (regOne!34101 r1!6342) (regTwo!34100 r1!6342)))))))

(declare-fun b!6887161 () Bool)

(declare-fun e!4149462 () Bool)

(assert (=> b!6887161 (= e!4149462 call!626779)))

(declare-fun b!6887162 () Bool)

(assert (=> b!6887162 (= e!4149458 e!4149459)))

(assert (=> b!6887162 (= c!1280720 (is-Union!16794 r1!6342))))

(declare-fun b!6887163 () Bool)

(assert (=> b!6887163 (= e!4149463 call!626781)))

(declare-fun b!6887164 () Bool)

(assert (=> b!6887164 (= e!4149464 e!4149461)))

(declare-fun res!2807773 () Bool)

(assert (=> b!6887164 (=> (not res!2807773) (not e!4149461))))

(assert (=> b!6887164 (= res!2807773 call!626779)))

(declare-fun b!6887165 () Bool)

(assert (=> b!6887165 (= e!4149460 e!4149458)))

(assert (=> b!6887165 (= c!1280721 (is-Star!16794 r1!6342))))

(declare-fun b!6887166 () Bool)

(declare-fun res!2807775 () Bool)

(assert (=> b!6887166 (=> (not res!2807775) (not e!4149462))))

(assert (=> b!6887166 (= res!2807775 call!626780)))

(assert (=> b!6887166 (= e!4149459 e!4149462)))

(assert (= (and d!2160549 (not res!2807774)) b!6887165))

(assert (= (and b!6887165 c!1280721) b!6887158))

(assert (= (and b!6887165 (not c!1280721)) b!6887162))

(assert (= (and b!6887158 res!2807776) b!6887163))

(assert (= (and b!6887162 c!1280720) b!6887166))

(assert (= (and b!6887162 (not c!1280720)) b!6887160))

(assert (= (and b!6887166 res!2807775) b!6887161))

(assert (= (and b!6887160 (not res!2807777)) b!6887164))

(assert (= (and b!6887164 res!2807773) b!6887159))

(assert (= (or b!6887166 b!6887159) bm!626775))

(assert (= (or b!6887161 b!6887164) bm!626774))

(assert (= (or b!6887163 bm!626775) bm!626776))

(declare-fun m!7609960 () Bool)

(assert (=> bm!626774 m!7609960))

(declare-fun m!7609962 () Bool)

(assert (=> b!6887158 m!7609962))

(declare-fun m!7609964 () Bool)

(assert (=> bm!626776 m!7609964))

(assert (=> start!664100 d!2160549))

(declare-fun b!6887168 () Bool)

(declare-fun e!4149466 () List!66551)

(assert (=> b!6887168 (= e!4149466 (Cons!66427 (h!72875 (++!14873 (_1!36970 lt!2461484) (_2!36970 lt!2461484))) (++!14873 (t!380294 (++!14873 (_1!36970 lt!2461484) (_2!36970 lt!2461484))) (_2!36970 lt!2461471))))))

(declare-fun d!2160551 () Bool)

(declare-fun e!4149465 () Bool)

(assert (=> d!2160551 e!4149465))

(declare-fun res!2807778 () Bool)

(assert (=> d!2160551 (=> (not res!2807778) (not e!4149465))))

(declare-fun lt!2461630 () List!66551)

(assert (=> d!2160551 (= res!2807778 (= (content!13045 lt!2461630) (set.union (content!13045 (++!14873 (_1!36970 lt!2461484) (_2!36970 lt!2461484))) (content!13045 (_2!36970 lt!2461471)))))))

(assert (=> d!2160551 (= lt!2461630 e!4149466)))

(declare-fun c!1280722 () Bool)

(assert (=> d!2160551 (= c!1280722 (is-Nil!66427 (++!14873 (_1!36970 lt!2461484) (_2!36970 lt!2461484))))))

(assert (=> d!2160551 (= (++!14873 (++!14873 (_1!36970 lt!2461484) (_2!36970 lt!2461484)) (_2!36970 lt!2461471)) lt!2461630)))

(declare-fun b!6887170 () Bool)

(assert (=> b!6887170 (= e!4149465 (or (not (= (_2!36970 lt!2461471) Nil!66427)) (= lt!2461630 (++!14873 (_1!36970 lt!2461484) (_2!36970 lt!2461484)))))))

(declare-fun b!6887169 () Bool)

(declare-fun res!2807779 () Bool)

(assert (=> b!6887169 (=> (not res!2807779) (not e!4149465))))

(assert (=> b!6887169 (= res!2807779 (= (size!40742 lt!2461630) (+ (size!40742 (++!14873 (_1!36970 lt!2461484) (_2!36970 lt!2461484))) (size!40742 (_2!36970 lt!2461471)))))))

(declare-fun b!6887167 () Bool)

(assert (=> b!6887167 (= e!4149466 (_2!36970 lt!2461471))))

(assert (= (and d!2160551 c!1280722) b!6887167))

(assert (= (and d!2160551 (not c!1280722)) b!6887168))

(assert (= (and d!2160551 res!2807778) b!6887169))

(assert (= (and b!6887169 res!2807779) b!6887170))

(declare-fun m!7609966 () Bool)

(assert (=> b!6887168 m!7609966))

(declare-fun m!7609968 () Bool)

(assert (=> d!2160551 m!7609968))

(assert (=> d!2160551 m!7609490))

(declare-fun m!7609970 () Bool)

(assert (=> d!2160551 m!7609970))

(assert (=> d!2160551 m!7609698))

(declare-fun m!7609972 () Bool)

(assert (=> b!6887169 m!7609972))

(assert (=> b!6887169 m!7609490))

(declare-fun m!7609974 () Bool)

(assert (=> b!6887169 m!7609974))

(assert (=> b!6887169 m!7609704))

(assert (=> b!6886624 d!2160551))

(declare-fun d!2160553 () Bool)

(assert (=> d!2160553 (= (matchR!8939 r2!6280 (_2!36970 lt!2461484)) (matchRSpec!3857 r2!6280 (_2!36970 lt!2461484)))))

(declare-fun lt!2461631 () Unit!160308)

(assert (=> d!2160553 (= lt!2461631 (choose!51286 r2!6280 (_2!36970 lt!2461484)))))

(assert (=> d!2160553 (validRegex!8502 r2!6280)))

(assert (=> d!2160553 (= (mainMatchTheorem!3857 r2!6280 (_2!36970 lt!2461484)) lt!2461631)))

(declare-fun bs!1838802 () Bool)

(assert (= bs!1838802 d!2160553))

(assert (=> bs!1838802 m!7609544))

(assert (=> bs!1838802 m!7609496))

(declare-fun m!7609976 () Bool)

(assert (=> bs!1838802 m!7609976))

(assert (=> bs!1838802 m!7609484))

(assert (=> b!6886624 d!2160553))

(declare-fun bs!1838803 () Bool)

(declare-fun b!6887181 () Bool)

(assert (= bs!1838803 (and b!6887181 d!2160469)))

(declare-fun lambda!390175 () Int)

(assert (=> bs!1838803 (not (= lambda!390175 lambda!390152))))

(declare-fun bs!1838804 () Bool)

(assert (= bs!1838804 (and b!6887181 d!2160467)))

(assert (=> bs!1838804 (not (= lambda!390175 lambda!390147))))

(declare-fun bs!1838805 () Bool)

(assert (= bs!1838805 (and b!6887181 b!6887049)))

(assert (=> bs!1838805 (not (= lambda!390175 lambda!390166))))

(declare-fun bs!1838806 () Bool)

(assert (= bs!1838806 (and b!6887181 b!6887059)))

(assert (=> bs!1838806 (= (and (= (_1!36970 lt!2461484) s!14361) (= (reg!17123 r1!6342) (reg!17123 lt!2461476)) (= r1!6342 lt!2461476)) (= lambda!390175 lambda!390165))))

(declare-fun bs!1838807 () Bool)

(assert (= bs!1838807 (and b!6887181 d!2160521)))

(assert (=> bs!1838807 (not (= lambda!390175 lambda!390168))))

(declare-fun bs!1838808 () Bool)

(assert (= bs!1838808 (and b!6887181 d!2160527)))

(assert (=> bs!1838808 (not (= lambda!390175 lambda!390170))))

(declare-fun bs!1838809 () Bool)

(assert (= bs!1838809 (and b!6887181 b!6886639)))

(assert (=> bs!1838809 (not (= lambda!390175 lambda!390115))))

(assert (=> bs!1838803 (not (= lambda!390175 lambda!390153))))

(declare-fun bs!1838810 () Bool)

(assert (= bs!1838810 (and b!6887181 b!6886996)))

(assert (=> bs!1838810 (not (= lambda!390175 lambda!390164))))

(assert (=> bs!1838807 (not (= lambda!390175 lambda!390169))))

(assert (=> bs!1838808 (not (= lambda!390175 lambda!390171))))

(assert (=> bs!1838809 (not (= lambda!390175 lambda!390116))))

(declare-fun bs!1838811 () Bool)

(assert (= bs!1838811 (and b!6887181 d!2160513)))

(assert (=> bs!1838811 (not (= lambda!390175 lambda!390167))))

(declare-fun bs!1838812 () Bool)

(assert (= bs!1838812 (and b!6887181 b!6886939)))

(assert (=> bs!1838812 (not (= lambda!390175 lambda!390162))))

(declare-fun bs!1838813 () Bool)

(assert (= bs!1838813 (and b!6887181 b!6886949)))

(assert (=> bs!1838813 (= (and (= (_1!36970 lt!2461484) lt!2461474) (= (reg!17123 r1!6342) (reg!17123 lt!2461480)) (= r1!6342 lt!2461480)) (= lambda!390175 lambda!390161))))

(declare-fun bs!1838814 () Bool)

(assert (= bs!1838814 (and b!6887181 d!2160547)))

(assert (=> bs!1838814 (not (= lambda!390175 lambda!390174))))

(declare-fun bs!1838815 () Bool)

(assert (= bs!1838815 (and b!6887181 b!6886638)))

(assert (=> bs!1838815 (not (= lambda!390175 lambda!390117))))

(declare-fun bs!1838816 () Bool)

(assert (= bs!1838816 (and b!6887181 b!6886631)))

(assert (=> bs!1838816 (not (= lambda!390175 lambda!390120))))

(declare-fun bs!1838817 () Bool)

(assert (= bs!1838817 (and b!6887181 b!6887006)))

(assert (=> bs!1838817 (= (and (= (_1!36970 lt!2461484) s!14361) (= (reg!17123 r1!6342) (reg!17123 lt!2461493)) (= r1!6342 lt!2461493)) (= lambda!390175 lambda!390163))))

(assert (=> bs!1838815 (not (= lambda!390175 lambda!390118))))

(declare-fun bs!1838818 () Bool)

(assert (= bs!1838818 (and b!6887181 b!6887138)))

(assert (=> bs!1838818 (not (= lambda!390175 lambda!390173))))

(declare-fun bs!1838819 () Bool)

(assert (= bs!1838819 (and b!6887181 b!6887148)))

(assert (=> bs!1838819 (= (and (= (_1!36970 lt!2461484) (_1!36970 lt!2461471)) (= (reg!17123 r1!6342) (reg!17123 lt!2461482)) (= r1!6342 lt!2461482)) (= lambda!390175 lambda!390172))))

(assert (=> bs!1838816 (not (= lambda!390175 lambda!390119))))

(assert (=> b!6887181 true))

(assert (=> b!6887181 true))

(declare-fun bs!1838820 () Bool)

(declare-fun b!6887171 () Bool)

(assert (= bs!1838820 (and b!6887171 d!2160469)))

(declare-fun lambda!390176 () Int)

(assert (=> bs!1838820 (not (= lambda!390176 lambda!390152))))

(declare-fun bs!1838821 () Bool)

(assert (= bs!1838821 (and b!6887171 d!2160467)))

(assert (=> bs!1838821 (not (= lambda!390176 lambda!390147))))

(declare-fun bs!1838822 () Bool)

(assert (= bs!1838822 (and b!6887171 b!6887049)))

(assert (=> bs!1838822 (= (and (= (_1!36970 lt!2461484) s!14361) (= (regOne!34100 r1!6342) (regOne!34100 lt!2461476)) (= (regTwo!34100 r1!6342) (regTwo!34100 lt!2461476))) (= lambda!390176 lambda!390166))))

(declare-fun bs!1838823 () Bool)

(assert (= bs!1838823 (and b!6887171 b!6887059)))

(assert (=> bs!1838823 (not (= lambda!390176 lambda!390165))))

(declare-fun bs!1838824 () Bool)

(assert (= bs!1838824 (and b!6887171 d!2160521)))

(assert (=> bs!1838824 (not (= lambda!390176 lambda!390168))))

(declare-fun bs!1838825 () Bool)

(assert (= bs!1838825 (and b!6887171 d!2160527)))

(assert (=> bs!1838825 (not (= lambda!390176 lambda!390170))))

(declare-fun bs!1838826 () Bool)

(assert (= bs!1838826 (and b!6887171 b!6886639)))

(assert (=> bs!1838826 (not (= lambda!390176 lambda!390115))))

(assert (=> bs!1838820 (= (and (= (_1!36970 lt!2461484) lt!2461474) (= (regOne!34100 r1!6342) r2!6280) (= (regTwo!34100 r1!6342) r3!135)) (= lambda!390176 lambda!390153))))

(declare-fun bs!1838827 () Bool)

(assert (= bs!1838827 (and b!6887171 b!6886996)))

(assert (=> bs!1838827 (= (and (= (_1!36970 lt!2461484) s!14361) (= (regOne!34100 r1!6342) (regOne!34100 lt!2461493)) (= (regTwo!34100 r1!6342) (regTwo!34100 lt!2461493))) (= lambda!390176 lambda!390164))))

(assert (=> bs!1838824 (= (and (= (_1!36970 lt!2461484) (_1!36970 lt!2461471)) (= (regOne!34100 r1!6342) r1!6342) (= (regTwo!34100 r1!6342) r2!6280)) (= lambda!390176 lambda!390169))))

(assert (=> bs!1838826 (= (and (= (_1!36970 lt!2461484) s!14361) (= (regOne!34100 r1!6342) lt!2461482) (= (regTwo!34100 r1!6342) r3!135)) (= lambda!390176 lambda!390116))))

(declare-fun bs!1838828 () Bool)

(assert (= bs!1838828 (and b!6887171 d!2160513)))

(assert (=> bs!1838828 (not (= lambda!390176 lambda!390167))))

(declare-fun bs!1838829 () Bool)

(assert (= bs!1838829 (and b!6887171 b!6886939)))

(assert (=> bs!1838829 (= (and (= (_1!36970 lt!2461484) lt!2461474) (= (regOne!34100 r1!6342) (regOne!34100 lt!2461480)) (= (regTwo!34100 r1!6342) (regTwo!34100 lt!2461480))) (= lambda!390176 lambda!390162))))

(declare-fun bs!1838830 () Bool)

(assert (= bs!1838830 (and b!6887171 b!6886949)))

(assert (=> bs!1838830 (not (= lambda!390176 lambda!390161))))

(declare-fun bs!1838831 () Bool)

(assert (= bs!1838831 (and b!6887171 d!2160547)))

(assert (=> bs!1838831 (not (= lambda!390176 lambda!390174))))

(declare-fun bs!1838832 () Bool)

(assert (= bs!1838832 (and b!6887171 b!6886638)))

(assert (=> bs!1838832 (not (= lambda!390176 lambda!390117))))

(declare-fun bs!1838833 () Bool)

(assert (= bs!1838833 (and b!6887171 b!6886631)))

(assert (=> bs!1838833 (= (and (= (_1!36970 lt!2461484) lt!2461474) (= (regOne!34100 r1!6342) r2!6280) (= (regTwo!34100 r1!6342) r3!135)) (= lambda!390176 lambda!390120))))

(declare-fun bs!1838834 () Bool)

(assert (= bs!1838834 (and b!6887171 b!6887006)))

(assert (=> bs!1838834 (not (= lambda!390176 lambda!390163))))

(assert (=> bs!1838832 (= (and (= (_1!36970 lt!2461484) (_1!36970 lt!2461471)) (= (regOne!34100 r1!6342) r1!6342) (= (regTwo!34100 r1!6342) r2!6280)) (= lambda!390176 lambda!390118))))

(declare-fun bs!1838835 () Bool)

(assert (= bs!1838835 (and b!6887171 b!6887138)))

(assert (=> bs!1838835 (= (and (= (_1!36970 lt!2461484) (_1!36970 lt!2461471)) (= (regOne!34100 r1!6342) (regOne!34100 lt!2461482)) (= (regTwo!34100 r1!6342) (regTwo!34100 lt!2461482))) (= lambda!390176 lambda!390173))))

(declare-fun bs!1838836 () Bool)

(assert (= bs!1838836 (and b!6887171 b!6887148)))

(assert (=> bs!1838836 (not (= lambda!390176 lambda!390172))))

(assert (=> bs!1838833 (not (= lambda!390176 lambda!390119))))

(assert (=> bs!1838825 (= (and (= (_1!36970 lt!2461484) s!14361) (= (regOne!34100 r1!6342) lt!2461482) (= (regTwo!34100 r1!6342) r3!135)) (= lambda!390176 lambda!390171))))

(declare-fun bs!1838837 () Bool)

(assert (= bs!1838837 (and b!6887171 b!6887181)))

(assert (=> bs!1838837 (not (= lambda!390176 lambda!390175))))

(assert (=> b!6887171 true))

(assert (=> b!6887171 true))

(declare-fun e!4149468 () Bool)

(declare-fun call!626782 () Bool)

(assert (=> b!6887171 (= e!4149468 call!626782)))

(declare-fun d!2160555 () Bool)

(declare-fun c!1280725 () Bool)

(assert (=> d!2160555 (= c!1280725 (is-EmptyExpr!16794 r1!6342))))

(declare-fun e!4149470 () Bool)

(assert (=> d!2160555 (= (matchRSpec!3857 r1!6342 (_1!36970 lt!2461484)) e!4149470)))

(declare-fun b!6887172 () Bool)

(declare-fun e!4149469 () Bool)

(assert (=> b!6887172 (= e!4149469 e!4149468)))

(declare-fun c!1280726 () Bool)

(assert (=> b!6887172 (= c!1280726 (is-Star!16794 r1!6342))))

(declare-fun bm!626777 () Bool)

(declare-fun call!626783 () Bool)

(assert (=> bm!626777 (= call!626783 (isEmpty!38685 (_1!36970 lt!2461484)))))

(declare-fun bm!626778 () Bool)

(assert (=> bm!626778 (= call!626782 (Exists!3806 (ite c!1280726 lambda!390175 lambda!390176)))))

(declare-fun b!6887173 () Bool)

(declare-fun c!1280723 () Bool)

(assert (=> b!6887173 (= c!1280723 (is-Union!16794 r1!6342))))

(declare-fun e!4149467 () Bool)

(assert (=> b!6887173 (= e!4149467 e!4149469)))

(declare-fun b!6887174 () Bool)

(declare-fun e!4149473 () Bool)

(assert (=> b!6887174 (= e!4149470 e!4149473)))

(declare-fun res!2807782 () Bool)

(assert (=> b!6887174 (= res!2807782 (not (is-EmptyLang!16794 r1!6342)))))

(assert (=> b!6887174 (=> (not res!2807782) (not e!4149473))))

(declare-fun b!6887175 () Bool)

(assert (=> b!6887175 (= e!4149467 (= (_1!36970 lt!2461484) (Cons!66427 (c!1280626 r1!6342) Nil!66427)))))

(declare-fun b!6887176 () Bool)

(declare-fun c!1280724 () Bool)

(assert (=> b!6887176 (= c!1280724 (is-ElementMatch!16794 r1!6342))))

(assert (=> b!6887176 (= e!4149473 e!4149467)))

(declare-fun b!6887177 () Bool)

(assert (=> b!6887177 (= e!4149470 call!626783)))

(declare-fun b!6887178 () Bool)

(declare-fun e!4149471 () Bool)

(assert (=> b!6887178 (= e!4149469 e!4149471)))

(declare-fun res!2807781 () Bool)

(assert (=> b!6887178 (= res!2807781 (matchRSpec!3857 (regOne!34101 r1!6342) (_1!36970 lt!2461484)))))

(assert (=> b!6887178 (=> res!2807781 e!4149471)))

(declare-fun b!6887179 () Bool)

(declare-fun res!2807780 () Bool)

(declare-fun e!4149472 () Bool)

(assert (=> b!6887179 (=> res!2807780 e!4149472)))

(assert (=> b!6887179 (= res!2807780 call!626783)))

(assert (=> b!6887179 (= e!4149468 e!4149472)))

(declare-fun b!6887180 () Bool)

(assert (=> b!6887180 (= e!4149471 (matchRSpec!3857 (regTwo!34101 r1!6342) (_1!36970 lt!2461484)))))

(assert (=> b!6887181 (= e!4149472 call!626782)))

(assert (= (and d!2160555 c!1280725) b!6887177))

(assert (= (and d!2160555 (not c!1280725)) b!6887174))

(assert (= (and b!6887174 res!2807782) b!6887176))

(assert (= (and b!6887176 c!1280724) b!6887175))

(assert (= (and b!6887176 (not c!1280724)) b!6887173))

(assert (= (and b!6887173 c!1280723) b!6887178))

(assert (= (and b!6887173 (not c!1280723)) b!6887172))

(assert (= (and b!6887178 (not res!2807781)) b!6887180))

(assert (= (and b!6887172 c!1280726) b!6887179))

(assert (= (and b!6887172 (not c!1280726)) b!6887171))

(assert (= (and b!6887179 (not res!2807780)) b!6887181))

(assert (= (or b!6887181 b!6887171) bm!626778))

(assert (= (or b!6887177 b!6887179) bm!626777))

(assert (=> bm!626777 m!7609850))

(declare-fun m!7609978 () Bool)

(assert (=> bm!626778 m!7609978))

(declare-fun m!7609980 () Bool)

(assert (=> b!6887178 m!7609980))

(declare-fun m!7609982 () Bool)

(assert (=> b!6887180 m!7609982))

(assert (=> b!6886624 d!2160555))

(declare-fun d!2160557 () Bool)

(assert (=> d!2160557 (= (matchR!8939 r1!6342 (_1!36970 lt!2461484)) (matchRSpec!3857 r1!6342 (_1!36970 lt!2461484)))))

(declare-fun lt!2461634 () Unit!160308)

(assert (=> d!2160557 (= lt!2461634 (choose!51286 r1!6342 (_1!36970 lt!2461484)))))

(assert (=> d!2160557 (validRegex!8502 r1!6342)))

(assert (=> d!2160557 (= (mainMatchTheorem!3857 r1!6342 (_1!36970 lt!2461484)) lt!2461634)))

(declare-fun bs!1838838 () Bool)

(assert (= bs!1838838 d!2160557))

(assert (=> bs!1838838 m!7609454))

(assert (=> bs!1838838 m!7609488))

(declare-fun m!7609984 () Bool)

(assert (=> bs!1838838 m!7609984))

(assert (=> bs!1838838 m!7609480))

(assert (=> b!6886624 d!2160557))

(declare-fun bs!1838839 () Bool)

(declare-fun b!6887196 () Bool)

(assert (= bs!1838839 (and b!6887196 d!2160469)))

(declare-fun lambda!390181 () Int)

(assert (=> bs!1838839 (not (= lambda!390181 lambda!390152))))

(declare-fun bs!1838840 () Bool)

(assert (= bs!1838840 (and b!6887196 d!2160467)))

(assert (=> bs!1838840 (not (= lambda!390181 lambda!390147))))

(declare-fun bs!1838841 () Bool)

(assert (= bs!1838841 (and b!6887196 b!6887049)))

(assert (=> bs!1838841 (not (= lambda!390181 lambda!390166))))

(declare-fun bs!1838842 () Bool)

(assert (= bs!1838842 (and b!6887196 b!6887059)))

(assert (=> bs!1838842 (= (and (= (_2!36970 lt!2461484) s!14361) (= (reg!17123 r2!6280) (reg!17123 lt!2461476)) (= r2!6280 lt!2461476)) (= lambda!390181 lambda!390165))))

(declare-fun bs!1838843 () Bool)

(assert (= bs!1838843 (and b!6887196 d!2160521)))

(assert (=> bs!1838843 (not (= lambda!390181 lambda!390168))))

(declare-fun bs!1838844 () Bool)

(assert (= bs!1838844 (and b!6887196 d!2160527)))

(assert (=> bs!1838844 (not (= lambda!390181 lambda!390170))))

(declare-fun bs!1838845 () Bool)

(assert (= bs!1838845 (and b!6887196 b!6886639)))

(assert (=> bs!1838845 (not (= lambda!390181 lambda!390115))))

(assert (=> bs!1838839 (not (= lambda!390181 lambda!390153))))

(declare-fun bs!1838846 () Bool)

(assert (= bs!1838846 (and b!6887196 b!6886996)))

(assert (=> bs!1838846 (not (= lambda!390181 lambda!390164))))

(assert (=> bs!1838843 (not (= lambda!390181 lambda!390169))))

(assert (=> bs!1838845 (not (= lambda!390181 lambda!390116))))

(declare-fun bs!1838847 () Bool)

(assert (= bs!1838847 (and b!6887196 d!2160513)))

(assert (=> bs!1838847 (not (= lambda!390181 lambda!390167))))

(declare-fun bs!1838848 () Bool)

(assert (= bs!1838848 (and b!6887196 b!6886939)))

(assert (=> bs!1838848 (not (= lambda!390181 lambda!390162))))

(declare-fun bs!1838849 () Bool)

(assert (= bs!1838849 (and b!6887196 b!6886949)))

(assert (=> bs!1838849 (= (and (= (_2!36970 lt!2461484) lt!2461474) (= (reg!17123 r2!6280) (reg!17123 lt!2461480)) (= r2!6280 lt!2461480)) (= lambda!390181 lambda!390161))))

(declare-fun bs!1838850 () Bool)

(assert (= bs!1838850 (and b!6887196 d!2160547)))

(assert (=> bs!1838850 (not (= lambda!390181 lambda!390174))))

(declare-fun bs!1838851 () Bool)

(assert (= bs!1838851 (and b!6887196 b!6886638)))

(assert (=> bs!1838851 (not (= lambda!390181 lambda!390117))))

(declare-fun bs!1838852 () Bool)

(assert (= bs!1838852 (and b!6887196 b!6886631)))

(assert (=> bs!1838852 (not (= lambda!390181 lambda!390120))))

(declare-fun bs!1838853 () Bool)

(assert (= bs!1838853 (and b!6887196 b!6887006)))

(assert (=> bs!1838853 (= (and (= (_2!36970 lt!2461484) s!14361) (= (reg!17123 r2!6280) (reg!17123 lt!2461493)) (= r2!6280 lt!2461493)) (= lambda!390181 lambda!390163))))

(assert (=> bs!1838851 (not (= lambda!390181 lambda!390118))))

(declare-fun bs!1838854 () Bool)

(assert (= bs!1838854 (and b!6887196 b!6887138)))

(assert (=> bs!1838854 (not (= lambda!390181 lambda!390173))))

(declare-fun bs!1838855 () Bool)

(assert (= bs!1838855 (and b!6887196 b!6887148)))

(assert (=> bs!1838855 (= (and (= (_2!36970 lt!2461484) (_1!36970 lt!2461471)) (= (reg!17123 r2!6280) (reg!17123 lt!2461482)) (= r2!6280 lt!2461482)) (= lambda!390181 lambda!390172))))

(assert (=> bs!1838852 (not (= lambda!390181 lambda!390119))))

(declare-fun bs!1838856 () Bool)

(assert (= bs!1838856 (and b!6887196 b!6887171)))

(assert (=> bs!1838856 (not (= lambda!390181 lambda!390176))))

(assert (=> bs!1838844 (not (= lambda!390181 lambda!390171))))

(declare-fun bs!1838857 () Bool)

(assert (= bs!1838857 (and b!6887196 b!6887181)))

(assert (=> bs!1838857 (= (and (= (_2!36970 lt!2461484) (_1!36970 lt!2461484)) (= (reg!17123 r2!6280) (reg!17123 r1!6342)) (= r2!6280 r1!6342)) (= lambda!390181 lambda!390175))))

(assert (=> b!6887196 true))

(assert (=> b!6887196 true))

(declare-fun bs!1838859 () Bool)

(declare-fun b!6887186 () Bool)

(assert (= bs!1838859 (and b!6887186 d!2160469)))

(declare-fun lambda!390183 () Int)

(assert (=> bs!1838859 (not (= lambda!390183 lambda!390152))))

(declare-fun bs!1838860 () Bool)

(assert (= bs!1838860 (and b!6887186 d!2160467)))

(assert (=> bs!1838860 (not (= lambda!390183 lambda!390147))))

(declare-fun bs!1838861 () Bool)

(assert (= bs!1838861 (and b!6887186 b!6887049)))

(assert (=> bs!1838861 (= (and (= (_2!36970 lt!2461484) s!14361) (= (regOne!34100 r2!6280) (regOne!34100 lt!2461476)) (= (regTwo!34100 r2!6280) (regTwo!34100 lt!2461476))) (= lambda!390183 lambda!390166))))

(declare-fun bs!1838862 () Bool)

(assert (= bs!1838862 (and b!6887186 b!6887059)))

(assert (=> bs!1838862 (not (= lambda!390183 lambda!390165))))

(declare-fun bs!1838864 () Bool)

(assert (= bs!1838864 (and b!6887186 d!2160521)))

(assert (=> bs!1838864 (not (= lambda!390183 lambda!390168))))

(declare-fun bs!1838865 () Bool)

(assert (= bs!1838865 (and b!6887186 d!2160527)))

(assert (=> bs!1838865 (not (= lambda!390183 lambda!390170))))

(declare-fun bs!1838867 () Bool)

(assert (= bs!1838867 (and b!6887186 b!6886639)))

(assert (=> bs!1838867 (not (= lambda!390183 lambda!390115))))

(assert (=> bs!1838859 (= (and (= (_2!36970 lt!2461484) lt!2461474) (= (regOne!34100 r2!6280) r2!6280) (= (regTwo!34100 r2!6280) r3!135)) (= lambda!390183 lambda!390153))))

(declare-fun bs!1838868 () Bool)

(assert (= bs!1838868 (and b!6887186 b!6886996)))

(assert (=> bs!1838868 (= (and (= (_2!36970 lt!2461484) s!14361) (= (regOne!34100 r2!6280) (regOne!34100 lt!2461493)) (= (regTwo!34100 r2!6280) (regTwo!34100 lt!2461493))) (= lambda!390183 lambda!390164))))

(assert (=> bs!1838864 (= (and (= (_2!36970 lt!2461484) (_1!36970 lt!2461471)) (= (regOne!34100 r2!6280) r1!6342) (= (regTwo!34100 r2!6280) r2!6280)) (= lambda!390183 lambda!390169))))

(assert (=> bs!1838867 (= (and (= (_2!36970 lt!2461484) s!14361) (= (regOne!34100 r2!6280) lt!2461482) (= (regTwo!34100 r2!6280) r3!135)) (= lambda!390183 lambda!390116))))

(declare-fun bs!1838869 () Bool)

(assert (= bs!1838869 (and b!6887186 d!2160513)))

(assert (=> bs!1838869 (not (= lambda!390183 lambda!390167))))

(declare-fun bs!1838871 () Bool)

(assert (= bs!1838871 (and b!6887186 b!6886939)))

(assert (=> bs!1838871 (= (and (= (_2!36970 lt!2461484) lt!2461474) (= (regOne!34100 r2!6280) (regOne!34100 lt!2461480)) (= (regTwo!34100 r2!6280) (regTwo!34100 lt!2461480))) (= lambda!390183 lambda!390162))))

(declare-fun bs!1838872 () Bool)

(assert (= bs!1838872 (and b!6887186 b!6886949)))

(assert (=> bs!1838872 (not (= lambda!390183 lambda!390161))))

(declare-fun bs!1838873 () Bool)

(assert (= bs!1838873 (and b!6887186 d!2160547)))

(assert (=> bs!1838873 (not (= lambda!390183 lambda!390174))))

(declare-fun bs!1838874 () Bool)

(assert (= bs!1838874 (and b!6887186 b!6886638)))

(assert (=> bs!1838874 (not (= lambda!390183 lambda!390117))))

(declare-fun bs!1838875 () Bool)

(assert (= bs!1838875 (and b!6887186 b!6886631)))

(assert (=> bs!1838875 (= (and (= (_2!36970 lt!2461484) lt!2461474) (= (regOne!34100 r2!6280) r2!6280) (= (regTwo!34100 r2!6280) r3!135)) (= lambda!390183 lambda!390120))))

(declare-fun bs!1838876 () Bool)

(assert (= bs!1838876 (and b!6887186 b!6887196)))

(assert (=> bs!1838876 (not (= lambda!390183 lambda!390181))))

(declare-fun bs!1838877 () Bool)

(assert (= bs!1838877 (and b!6887186 b!6887006)))

(assert (=> bs!1838877 (not (= lambda!390183 lambda!390163))))

(assert (=> bs!1838874 (= (and (= (_2!36970 lt!2461484) (_1!36970 lt!2461471)) (= (regOne!34100 r2!6280) r1!6342) (= (regTwo!34100 r2!6280) r2!6280)) (= lambda!390183 lambda!390118))))

(declare-fun bs!1838878 () Bool)

(assert (= bs!1838878 (and b!6887186 b!6887138)))

(assert (=> bs!1838878 (= (and (= (_2!36970 lt!2461484) (_1!36970 lt!2461471)) (= (regOne!34100 r2!6280) (regOne!34100 lt!2461482)) (= (regTwo!34100 r2!6280) (regTwo!34100 lt!2461482))) (= lambda!390183 lambda!390173))))

(declare-fun bs!1838879 () Bool)

(assert (= bs!1838879 (and b!6887186 b!6887148)))

(assert (=> bs!1838879 (not (= lambda!390183 lambda!390172))))

(assert (=> bs!1838875 (not (= lambda!390183 lambda!390119))))

(declare-fun bs!1838880 () Bool)

(assert (= bs!1838880 (and b!6887186 b!6887171)))

(assert (=> bs!1838880 (= (and (= (_2!36970 lt!2461484) (_1!36970 lt!2461484)) (= (regOne!34100 r2!6280) (regOne!34100 r1!6342)) (= (regTwo!34100 r2!6280) (regTwo!34100 r1!6342))) (= lambda!390183 lambda!390176))))

(assert (=> bs!1838865 (= (and (= (_2!36970 lt!2461484) s!14361) (= (regOne!34100 r2!6280) lt!2461482) (= (regTwo!34100 r2!6280) r3!135)) (= lambda!390183 lambda!390171))))

(declare-fun bs!1838881 () Bool)

(assert (= bs!1838881 (and b!6887186 b!6887181)))

(assert (=> bs!1838881 (not (= lambda!390183 lambda!390175))))

(assert (=> b!6887186 true))

(assert (=> b!6887186 true))

(declare-fun e!4149477 () Bool)

(declare-fun call!626784 () Bool)

(assert (=> b!6887186 (= e!4149477 call!626784)))

(declare-fun d!2160559 () Bool)

(declare-fun c!1280729 () Bool)

(assert (=> d!2160559 (= c!1280729 (is-EmptyExpr!16794 r2!6280))))

(declare-fun e!4149479 () Bool)

(assert (=> d!2160559 (= (matchRSpec!3857 r2!6280 (_2!36970 lt!2461484)) e!4149479)))

(declare-fun b!6887187 () Bool)

(declare-fun e!4149478 () Bool)

(assert (=> b!6887187 (= e!4149478 e!4149477)))

(declare-fun c!1280730 () Bool)

(assert (=> b!6887187 (= c!1280730 (is-Star!16794 r2!6280))))

(declare-fun bm!626779 () Bool)

(declare-fun call!626785 () Bool)

(assert (=> bm!626779 (= call!626785 (isEmpty!38685 (_2!36970 lt!2461484)))))

(declare-fun bm!626780 () Bool)

(assert (=> bm!626780 (= call!626784 (Exists!3806 (ite c!1280730 lambda!390181 lambda!390183)))))

(declare-fun b!6887188 () Bool)

(declare-fun c!1280727 () Bool)

(assert (=> b!6887188 (= c!1280727 (is-Union!16794 r2!6280))))

(declare-fun e!4149476 () Bool)

(assert (=> b!6887188 (= e!4149476 e!4149478)))

(declare-fun b!6887189 () Bool)

(declare-fun e!4149482 () Bool)

(assert (=> b!6887189 (= e!4149479 e!4149482)))

(declare-fun res!2807789 () Bool)

(assert (=> b!6887189 (= res!2807789 (not (is-EmptyLang!16794 r2!6280)))))

(assert (=> b!6887189 (=> (not res!2807789) (not e!4149482))))

(declare-fun b!6887190 () Bool)

(assert (=> b!6887190 (= e!4149476 (= (_2!36970 lt!2461484) (Cons!66427 (c!1280626 r2!6280) Nil!66427)))))

(declare-fun b!6887191 () Bool)

(declare-fun c!1280728 () Bool)

(assert (=> b!6887191 (= c!1280728 (is-ElementMatch!16794 r2!6280))))

(assert (=> b!6887191 (= e!4149482 e!4149476)))

(declare-fun b!6887192 () Bool)

(assert (=> b!6887192 (= e!4149479 call!626785)))

(declare-fun b!6887193 () Bool)

(declare-fun e!4149480 () Bool)

(assert (=> b!6887193 (= e!4149478 e!4149480)))

(declare-fun res!2807788 () Bool)

(assert (=> b!6887193 (= res!2807788 (matchRSpec!3857 (regOne!34101 r2!6280) (_2!36970 lt!2461484)))))

(assert (=> b!6887193 (=> res!2807788 e!4149480)))

(declare-fun b!6887194 () Bool)

(declare-fun res!2807787 () Bool)

(declare-fun e!4149481 () Bool)

(assert (=> b!6887194 (=> res!2807787 e!4149481)))

(assert (=> b!6887194 (= res!2807787 call!626785)))

(assert (=> b!6887194 (= e!4149477 e!4149481)))

(declare-fun b!6887195 () Bool)

(assert (=> b!6887195 (= e!4149480 (matchRSpec!3857 (regTwo!34101 r2!6280) (_2!36970 lt!2461484)))))

(assert (=> b!6887196 (= e!4149481 call!626784)))

(assert (= (and d!2160559 c!1280729) b!6887192))

(assert (= (and d!2160559 (not c!1280729)) b!6887189))

(assert (= (and b!6887189 res!2807789) b!6887191))

(assert (= (and b!6887191 c!1280728) b!6887190))

(assert (= (and b!6887191 (not c!1280728)) b!6887188))

(assert (= (and b!6887188 c!1280727) b!6887193))

(assert (= (and b!6887188 (not c!1280727)) b!6887187))

(assert (= (and b!6887193 (not res!2807788)) b!6887195))

(assert (= (and b!6887187 c!1280730) b!6887194))

(assert (= (and b!6887187 (not c!1280730)) b!6887186))

(assert (= (and b!6887194 (not res!2807787)) b!6887196))

(assert (= (or b!6887196 b!6887186) bm!626780))

(assert (= (or b!6887192 b!6887194) bm!626779))

(assert (=> bm!626779 m!7609872))

(declare-fun m!7609986 () Bool)

(assert (=> bm!626780 m!7609986))

(declare-fun m!7609988 () Bool)

(assert (=> b!6887193 m!7609988))

(declare-fun m!7609990 () Bool)

(assert (=> b!6887195 m!7609990))

(assert (=> b!6886624 d!2160559))

(declare-fun b!6887202 () Bool)

(declare-fun e!4149486 () List!66551)

(assert (=> b!6887202 (= e!4149486 (Cons!66427 (h!72875 (_1!36970 lt!2461484)) (++!14873 (t!380294 (_1!36970 lt!2461484)) (_2!36970 lt!2461484))))))

(declare-fun d!2160561 () Bool)

(declare-fun e!4149485 () Bool)

(assert (=> d!2160561 e!4149485))

(declare-fun res!2807794 () Bool)

(assert (=> d!2160561 (=> (not res!2807794) (not e!4149485))))

(declare-fun lt!2461636 () List!66551)

(assert (=> d!2160561 (= res!2807794 (= (content!13045 lt!2461636) (set.union (content!13045 (_1!36970 lt!2461484)) (content!13045 (_2!36970 lt!2461484)))))))

(assert (=> d!2160561 (= lt!2461636 e!4149486)))

(declare-fun c!1280731 () Bool)

(assert (=> d!2160561 (= c!1280731 (is-Nil!66427 (_1!36970 lt!2461484)))))

(assert (=> d!2160561 (= (++!14873 (_1!36970 lt!2461484) (_2!36970 lt!2461484)) lt!2461636)))

(declare-fun b!6887204 () Bool)

(assert (=> b!6887204 (= e!4149485 (or (not (= (_2!36970 lt!2461484) Nil!66427)) (= lt!2461636 (_1!36970 lt!2461484))))))

(declare-fun b!6887203 () Bool)

(declare-fun res!2807795 () Bool)

(assert (=> b!6887203 (=> (not res!2807795) (not e!4149485))))

(assert (=> b!6887203 (= res!2807795 (= (size!40742 lt!2461636) (+ (size!40742 (_1!36970 lt!2461484)) (size!40742 (_2!36970 lt!2461484)))))))

(declare-fun b!6887201 () Bool)

(assert (=> b!6887201 (= e!4149486 (_2!36970 lt!2461484))))

(assert (= (and d!2160561 c!1280731) b!6887201))

(assert (= (and d!2160561 (not c!1280731)) b!6887202))

(assert (= (and d!2160561 res!2807794) b!6887203))

(assert (= (and b!6887203 res!2807795) b!6887204))

(declare-fun m!7609992 () Bool)

(assert (=> b!6887202 m!7609992))

(declare-fun m!7609994 () Bool)

(assert (=> d!2160561 m!7609994))

(declare-fun m!7609996 () Bool)

(assert (=> d!2160561 m!7609996))

(assert (=> d!2160561 m!7609696))

(declare-fun m!7609998 () Bool)

(assert (=> b!6887203 m!7609998))

(declare-fun m!7610000 () Bool)

(assert (=> b!6887203 m!7610000))

(assert (=> b!6887203 m!7609702))

(assert (=> b!6886624 d!2160561))

(declare-fun b!6887206 () Bool)

(declare-fun e!4149487 () Bool)

(declare-fun e!4149491 () Bool)

(assert (=> b!6887206 (= e!4149487 e!4149491)))

(declare-fun res!2807802 () Bool)

(assert (=> b!6887206 (=> res!2807802 e!4149491)))

(declare-fun call!626786 () Bool)

(assert (=> b!6887206 (= res!2807802 call!626786)))

(declare-fun b!6887207 () Bool)

(declare-fun res!2807796 () Bool)

(declare-fun e!4149488 () Bool)

(assert (=> b!6887207 (=> res!2807796 e!4149488)))

(declare-fun e!4149493 () Bool)

(assert (=> b!6887207 (= res!2807796 e!4149493)))

(declare-fun res!2807799 () Bool)

(assert (=> b!6887207 (=> (not res!2807799) (not e!4149493))))

(declare-fun lt!2461637 () Bool)

(assert (=> b!6887207 (= res!2807799 lt!2461637)))

(declare-fun bm!626781 () Bool)

(assert (=> bm!626781 (= call!626786 (isEmpty!38685 (_2!36970 lt!2461471)))))

(declare-fun b!6887208 () Bool)

(declare-fun res!2807803 () Bool)

(assert (=> b!6887208 (=> (not res!2807803) (not e!4149493))))

(assert (=> b!6887208 (= res!2807803 (not call!626786))))

(declare-fun b!6887209 () Bool)

(declare-fun res!2807798 () Bool)

(assert (=> b!6887209 (=> (not res!2807798) (not e!4149493))))

(assert (=> b!6887209 (= res!2807798 (isEmpty!38685 (tail!12867 (_2!36970 lt!2461471))))))

(declare-fun b!6887210 () Bool)

(declare-fun e!4149490 () Bool)

(assert (=> b!6887210 (= e!4149490 (nullable!6683 r3!135))))

(declare-fun b!6887211 () Bool)

(declare-fun res!2807797 () Bool)

(assert (=> b!6887211 (=> res!2807797 e!4149488)))

(assert (=> b!6887211 (= res!2807797 (not (is-ElementMatch!16794 r3!135)))))

(declare-fun e!4149489 () Bool)

(assert (=> b!6887211 (= e!4149489 e!4149488)))

(declare-fun b!6887212 () Bool)

(declare-fun e!4149492 () Bool)

(assert (=> b!6887212 (= e!4149492 (= lt!2461637 call!626786))))

(declare-fun b!6887213 () Bool)

(assert (=> b!6887213 (= e!4149490 (matchR!8939 (derivativeStep!5362 r3!135 (head!13815 (_2!36970 lt!2461471))) (tail!12867 (_2!36970 lt!2461471))))))

(declare-fun b!6887214 () Bool)

(declare-fun res!2807800 () Bool)

(assert (=> b!6887214 (=> res!2807800 e!4149491)))

(assert (=> b!6887214 (= res!2807800 (not (isEmpty!38685 (tail!12867 (_2!36970 lt!2461471)))))))

(declare-fun b!6887215 () Bool)

(assert (=> b!6887215 (= e!4149489 (not lt!2461637))))

(declare-fun b!6887216 () Bool)

(assert (=> b!6887216 (= e!4149491 (not (= (head!13815 (_2!36970 lt!2461471)) (c!1280626 r3!135))))))

(declare-fun b!6887205 () Bool)

(assert (=> b!6887205 (= e!4149493 (= (head!13815 (_2!36970 lt!2461471)) (c!1280626 r3!135)))))

(declare-fun d!2160563 () Bool)

(assert (=> d!2160563 e!4149492))

(declare-fun c!1280732 () Bool)

(assert (=> d!2160563 (= c!1280732 (is-EmptyExpr!16794 r3!135))))

(assert (=> d!2160563 (= lt!2461637 e!4149490)))

(declare-fun c!1280734 () Bool)

(assert (=> d!2160563 (= c!1280734 (isEmpty!38685 (_2!36970 lt!2461471)))))

(assert (=> d!2160563 (validRegex!8502 r3!135)))

(assert (=> d!2160563 (= (matchR!8939 r3!135 (_2!36970 lt!2461471)) lt!2461637)))

(declare-fun b!6887217 () Bool)

(assert (=> b!6887217 (= e!4149488 e!4149487)))

(declare-fun res!2807801 () Bool)

(assert (=> b!6887217 (=> (not res!2807801) (not e!4149487))))

(assert (=> b!6887217 (= res!2807801 (not lt!2461637))))

(declare-fun b!6887218 () Bool)

(assert (=> b!6887218 (= e!4149492 e!4149489)))

(declare-fun c!1280733 () Bool)

(assert (=> b!6887218 (= c!1280733 (is-EmptyLang!16794 r3!135))))

(assert (= (and d!2160563 c!1280734) b!6887210))

(assert (= (and d!2160563 (not c!1280734)) b!6887213))

(assert (= (and d!2160563 c!1280732) b!6887212))

(assert (= (and d!2160563 (not c!1280732)) b!6887218))

(assert (= (and b!6887218 c!1280733) b!6887215))

(assert (= (and b!6887218 (not c!1280733)) b!6887211))

(assert (= (and b!6887211 (not res!2807797)) b!6887207))

(assert (= (and b!6887207 res!2807799) b!6887208))

(assert (= (and b!6887208 res!2807803) b!6887209))

(assert (= (and b!6887209 res!2807798) b!6887205))

(assert (= (and b!6887207 (not res!2807796)) b!6887217))

(assert (= (and b!6887217 res!2807801) b!6887206))

(assert (= (and b!6887206 (not res!2807802)) b!6887214))

(assert (= (and b!6887214 (not res!2807800)) b!6887216))

(assert (= (or b!6887212 b!6887206 b!6887208) bm!626781))

(declare-fun m!7610008 () Bool)

(assert (=> b!6887216 m!7610008))

(declare-fun m!7610010 () Bool)

(assert (=> b!6887214 m!7610010))

(assert (=> b!6887214 m!7610010))

(declare-fun m!7610012 () Bool)

(assert (=> b!6887214 m!7610012))

(declare-fun m!7610014 () Bool)

(assert (=> b!6887210 m!7610014))

(assert (=> b!6887213 m!7610008))

(assert (=> b!6887213 m!7610008))

(declare-fun m!7610016 () Bool)

(assert (=> b!6887213 m!7610016))

(assert (=> b!6887213 m!7610010))

(assert (=> b!6887213 m!7610016))

(assert (=> b!6887213 m!7610010))

(declare-fun m!7610018 () Bool)

(assert (=> b!6887213 m!7610018))

(declare-fun m!7610020 () Bool)

(assert (=> bm!626781 m!7610020))

(assert (=> d!2160563 m!7610020))

(assert (=> d!2160563 m!7609482))

(assert (=> b!6887209 m!7610010))

(assert (=> b!6887209 m!7610010))

(assert (=> b!6887209 m!7610012))

(assert (=> b!6887205 m!7610008))

(assert (=> b!6886641 d!2160563))

(declare-fun b!6887253 () Bool)

(declare-fun e!4149510 () Bool)

(declare-fun tp!1894757 () Bool)

(declare-fun tp!1894758 () Bool)

(assert (=> b!6887253 (= e!4149510 (and tp!1894757 tp!1894758))))

(assert (=> b!6886636 (= tp!1894694 e!4149510)))

(declare-fun b!6887254 () Bool)

(declare-fun tp!1894754 () Bool)

(assert (=> b!6887254 (= e!4149510 tp!1894754)))

(declare-fun b!6887255 () Bool)

(declare-fun tp!1894755 () Bool)

(declare-fun tp!1894756 () Bool)

(assert (=> b!6887255 (= e!4149510 (and tp!1894755 tp!1894756))))

(declare-fun b!6887252 () Bool)

(assert (=> b!6887252 (= e!4149510 tp_is_empty!42813)))

(assert (= (and b!6886636 (is-ElementMatch!16794 (regOne!34100 r3!135))) b!6887252))

(assert (= (and b!6886636 (is-Concat!25639 (regOne!34100 r3!135))) b!6887253))

(assert (= (and b!6886636 (is-Star!16794 (regOne!34100 r3!135))) b!6887254))

(assert (= (and b!6886636 (is-Union!16794 (regOne!34100 r3!135))) b!6887255))

(declare-fun b!6887257 () Bool)

(declare-fun e!4149511 () Bool)

(declare-fun tp!1894762 () Bool)

(declare-fun tp!1894763 () Bool)

(assert (=> b!6887257 (= e!4149511 (and tp!1894762 tp!1894763))))

(assert (=> b!6886636 (= tp!1894682 e!4149511)))

(declare-fun b!6887258 () Bool)

(declare-fun tp!1894759 () Bool)

(assert (=> b!6887258 (= e!4149511 tp!1894759)))

(declare-fun b!6887259 () Bool)

(declare-fun tp!1894760 () Bool)

(declare-fun tp!1894761 () Bool)

(assert (=> b!6887259 (= e!4149511 (and tp!1894760 tp!1894761))))

(declare-fun b!6887256 () Bool)

(assert (=> b!6887256 (= e!4149511 tp_is_empty!42813)))

(assert (= (and b!6886636 (is-ElementMatch!16794 (regTwo!34100 r3!135))) b!6887256))

(assert (= (and b!6886636 (is-Concat!25639 (regTwo!34100 r3!135))) b!6887257))

(assert (= (and b!6886636 (is-Star!16794 (regTwo!34100 r3!135))) b!6887258))

(assert (= (and b!6886636 (is-Union!16794 (regTwo!34100 r3!135))) b!6887259))

(declare-fun b!6887261 () Bool)

(declare-fun e!4149512 () Bool)

(declare-fun tp!1894767 () Bool)

(declare-fun tp!1894768 () Bool)

(assert (=> b!6887261 (= e!4149512 (and tp!1894767 tp!1894768))))

(assert (=> b!6886621 (= tp!1894688 e!4149512)))

(declare-fun b!6887262 () Bool)

(declare-fun tp!1894764 () Bool)

(assert (=> b!6887262 (= e!4149512 tp!1894764)))

(declare-fun b!6887263 () Bool)

(declare-fun tp!1894765 () Bool)

(declare-fun tp!1894766 () Bool)

(assert (=> b!6887263 (= e!4149512 (and tp!1894765 tp!1894766))))

(declare-fun b!6887260 () Bool)

(assert (=> b!6887260 (= e!4149512 tp_is_empty!42813)))

(assert (= (and b!6886621 (is-ElementMatch!16794 (reg!17123 r2!6280))) b!6887260))

(assert (= (and b!6886621 (is-Concat!25639 (reg!17123 r2!6280))) b!6887261))

(assert (= (and b!6886621 (is-Star!16794 (reg!17123 r2!6280))) b!6887262))

(assert (= (and b!6886621 (is-Union!16794 (reg!17123 r2!6280))) b!6887263))

(declare-fun b!6887265 () Bool)

(declare-fun e!4149513 () Bool)

(declare-fun tp!1894772 () Bool)

(declare-fun tp!1894773 () Bool)

(assert (=> b!6887265 (= e!4149513 (and tp!1894772 tp!1894773))))

(assert (=> b!6886637 (= tp!1894680 e!4149513)))

(declare-fun b!6887266 () Bool)

(declare-fun tp!1894769 () Bool)

(assert (=> b!6887266 (= e!4149513 tp!1894769)))

(declare-fun b!6887267 () Bool)

(declare-fun tp!1894770 () Bool)

(declare-fun tp!1894771 () Bool)

(assert (=> b!6887267 (= e!4149513 (and tp!1894770 tp!1894771))))

(declare-fun b!6887264 () Bool)

(assert (=> b!6887264 (= e!4149513 tp_is_empty!42813)))

(assert (= (and b!6886637 (is-ElementMatch!16794 (regOne!34101 r2!6280))) b!6887264))

(assert (= (and b!6886637 (is-Concat!25639 (regOne!34101 r2!6280))) b!6887265))

(assert (= (and b!6886637 (is-Star!16794 (regOne!34101 r2!6280))) b!6887266))

(assert (= (and b!6886637 (is-Union!16794 (regOne!34101 r2!6280))) b!6887267))

(declare-fun b!6887269 () Bool)

(declare-fun e!4149514 () Bool)

(declare-fun tp!1894777 () Bool)

(declare-fun tp!1894778 () Bool)

(assert (=> b!6887269 (= e!4149514 (and tp!1894777 tp!1894778))))

(assert (=> b!6886637 (= tp!1894687 e!4149514)))

(declare-fun b!6887270 () Bool)

(declare-fun tp!1894774 () Bool)

(assert (=> b!6887270 (= e!4149514 tp!1894774)))

(declare-fun b!6887271 () Bool)

(declare-fun tp!1894775 () Bool)

(declare-fun tp!1894776 () Bool)

(assert (=> b!6887271 (= e!4149514 (and tp!1894775 tp!1894776))))

(declare-fun b!6887268 () Bool)

(assert (=> b!6887268 (= e!4149514 tp_is_empty!42813)))

(assert (= (and b!6886637 (is-ElementMatch!16794 (regTwo!34101 r2!6280))) b!6887268))

(assert (= (and b!6886637 (is-Concat!25639 (regTwo!34101 r2!6280))) b!6887269))

(assert (= (and b!6886637 (is-Star!16794 (regTwo!34101 r2!6280))) b!6887270))

(assert (= (and b!6886637 (is-Union!16794 (regTwo!34101 r2!6280))) b!6887271))

(declare-fun b!6887276 () Bool)

(declare-fun e!4149517 () Bool)

(declare-fun tp!1894781 () Bool)

(assert (=> b!6887276 (= e!4149517 (and tp_is_empty!42813 tp!1894781))))

(assert (=> b!6886622 (= tp!1894689 e!4149517)))

(assert (= (and b!6886622 (is-Cons!66427 (t!380294 s!14361))) b!6887276))

(declare-fun b!6887278 () Bool)

(declare-fun e!4149518 () Bool)

(declare-fun tp!1894785 () Bool)

(declare-fun tp!1894786 () Bool)

(assert (=> b!6887278 (= e!4149518 (and tp!1894785 tp!1894786))))

(assert (=> b!6886628 (= tp!1894695 e!4149518)))

(declare-fun b!6887279 () Bool)

(declare-fun tp!1894782 () Bool)

(assert (=> b!6887279 (= e!4149518 tp!1894782)))

(declare-fun b!6887280 () Bool)

(declare-fun tp!1894783 () Bool)

(declare-fun tp!1894784 () Bool)

(assert (=> b!6887280 (= e!4149518 (and tp!1894783 tp!1894784))))

(declare-fun b!6887277 () Bool)

(assert (=> b!6887277 (= e!4149518 tp_is_empty!42813)))

(assert (= (and b!6886628 (is-ElementMatch!16794 (regOne!34101 r3!135))) b!6887277))

(assert (= (and b!6886628 (is-Concat!25639 (regOne!34101 r3!135))) b!6887278))

(assert (= (and b!6886628 (is-Star!16794 (regOne!34101 r3!135))) b!6887279))

(assert (= (and b!6886628 (is-Union!16794 (regOne!34101 r3!135))) b!6887280))

(declare-fun b!6887282 () Bool)

(declare-fun e!4149519 () Bool)

(declare-fun tp!1894790 () Bool)

(declare-fun tp!1894791 () Bool)

(assert (=> b!6887282 (= e!4149519 (and tp!1894790 tp!1894791))))

(assert (=> b!6886628 (= tp!1894693 e!4149519)))

(declare-fun b!6887283 () Bool)

(declare-fun tp!1894787 () Bool)

(assert (=> b!6887283 (= e!4149519 tp!1894787)))

(declare-fun b!6887284 () Bool)

(declare-fun tp!1894788 () Bool)

(declare-fun tp!1894789 () Bool)

(assert (=> b!6887284 (= e!4149519 (and tp!1894788 tp!1894789))))

(declare-fun b!6887281 () Bool)

(assert (=> b!6887281 (= e!4149519 tp_is_empty!42813)))

(assert (= (and b!6886628 (is-ElementMatch!16794 (regTwo!34101 r3!135))) b!6887281))

(assert (= (and b!6886628 (is-Concat!25639 (regTwo!34101 r3!135))) b!6887282))

(assert (= (and b!6886628 (is-Star!16794 (regTwo!34101 r3!135))) b!6887283))

(assert (= (and b!6886628 (is-Union!16794 (regTwo!34101 r3!135))) b!6887284))

(declare-fun b!6887291 () Bool)

(declare-fun e!4149527 () Bool)

(declare-fun tp!1894795 () Bool)

(declare-fun tp!1894796 () Bool)

(assert (=> b!6887291 (= e!4149527 (and tp!1894795 tp!1894796))))

(assert (=> b!6886629 (= tp!1894690 e!4149527)))

(declare-fun b!6887293 () Bool)

(declare-fun tp!1894792 () Bool)

(assert (=> b!6887293 (= e!4149527 tp!1894792)))

(declare-fun b!6887295 () Bool)

(declare-fun tp!1894793 () Bool)

(declare-fun tp!1894794 () Bool)

(assert (=> b!6887295 (= e!4149527 (and tp!1894793 tp!1894794))))

(declare-fun b!6887289 () Bool)

(assert (=> b!6887289 (= e!4149527 tp_is_empty!42813)))

(assert (= (and b!6886629 (is-ElementMatch!16794 (reg!17123 r1!6342))) b!6887289))

(assert (= (and b!6886629 (is-Concat!25639 (reg!17123 r1!6342))) b!6887291))

(assert (= (and b!6886629 (is-Star!16794 (reg!17123 r1!6342))) b!6887293))

(assert (= (and b!6886629 (is-Union!16794 (reg!17123 r1!6342))) b!6887295))

(declare-fun b!6887304 () Bool)

(declare-fun e!4149528 () Bool)

(declare-fun tp!1894800 () Bool)

(declare-fun tp!1894801 () Bool)

(assert (=> b!6887304 (= e!4149528 (and tp!1894800 tp!1894801))))

(assert (=> b!6886640 (= tp!1894692 e!4149528)))

(declare-fun b!6887305 () Bool)

(declare-fun tp!1894797 () Bool)

(assert (=> b!6887305 (= e!4149528 tp!1894797)))

(declare-fun b!6887306 () Bool)

(declare-fun tp!1894798 () Bool)

(declare-fun tp!1894799 () Bool)

(assert (=> b!6887306 (= e!4149528 (and tp!1894798 tp!1894799))))

(declare-fun b!6887303 () Bool)

(assert (=> b!6887303 (= e!4149528 tp_is_empty!42813)))

(assert (= (and b!6886640 (is-ElementMatch!16794 (reg!17123 r3!135))) b!6887303))

(assert (= (and b!6886640 (is-Concat!25639 (reg!17123 r3!135))) b!6887304))

(assert (= (and b!6886640 (is-Star!16794 (reg!17123 r3!135))) b!6887305))

(assert (= (and b!6886640 (is-Union!16794 (reg!17123 r3!135))) b!6887306))

(declare-fun b!6887308 () Bool)

(declare-fun e!4149529 () Bool)

(declare-fun tp!1894805 () Bool)

(declare-fun tp!1894806 () Bool)

(assert (=> b!6887308 (= e!4149529 (and tp!1894805 tp!1894806))))

(assert (=> b!6886635 (= tp!1894691 e!4149529)))

(declare-fun b!6887309 () Bool)

(declare-fun tp!1894802 () Bool)

(assert (=> b!6887309 (= e!4149529 tp!1894802)))

(declare-fun b!6887310 () Bool)

(declare-fun tp!1894803 () Bool)

(declare-fun tp!1894804 () Bool)

(assert (=> b!6887310 (= e!4149529 (and tp!1894803 tp!1894804))))

(declare-fun b!6887307 () Bool)

(assert (=> b!6887307 (= e!4149529 tp_is_empty!42813)))

(assert (= (and b!6886635 (is-ElementMatch!16794 (regOne!34100 r2!6280))) b!6887307))

(assert (= (and b!6886635 (is-Concat!25639 (regOne!34100 r2!6280))) b!6887308))

(assert (= (and b!6886635 (is-Star!16794 (regOne!34100 r2!6280))) b!6887309))

(assert (= (and b!6886635 (is-Union!16794 (regOne!34100 r2!6280))) b!6887310))

(declare-fun b!6887312 () Bool)

(declare-fun e!4149530 () Bool)

(declare-fun tp!1894810 () Bool)

(declare-fun tp!1894811 () Bool)

(assert (=> b!6887312 (= e!4149530 (and tp!1894810 tp!1894811))))

(assert (=> b!6886635 (= tp!1894684 e!4149530)))

(declare-fun b!6887313 () Bool)

(declare-fun tp!1894807 () Bool)

(assert (=> b!6887313 (= e!4149530 tp!1894807)))

(declare-fun b!6887314 () Bool)

(declare-fun tp!1894808 () Bool)

(declare-fun tp!1894809 () Bool)

(assert (=> b!6887314 (= e!4149530 (and tp!1894808 tp!1894809))))

(declare-fun b!6887311 () Bool)

(assert (=> b!6887311 (= e!4149530 tp_is_empty!42813)))

(assert (= (and b!6886635 (is-ElementMatch!16794 (regTwo!34100 r2!6280))) b!6887311))

(assert (= (and b!6886635 (is-Concat!25639 (regTwo!34100 r2!6280))) b!6887312))

(assert (= (and b!6886635 (is-Star!16794 (regTwo!34100 r2!6280))) b!6887313))

(assert (= (and b!6886635 (is-Union!16794 (regTwo!34100 r2!6280))) b!6887314))

(declare-fun b!6887316 () Bool)

(declare-fun e!4149531 () Bool)

(declare-fun tp!1894815 () Bool)

(declare-fun tp!1894816 () Bool)

(assert (=> b!6887316 (= e!4149531 (and tp!1894815 tp!1894816))))

(assert (=> b!6886630 (= tp!1894683 e!4149531)))

(declare-fun b!6887317 () Bool)

(declare-fun tp!1894812 () Bool)

(assert (=> b!6887317 (= e!4149531 tp!1894812)))

(declare-fun b!6887318 () Bool)

(declare-fun tp!1894813 () Bool)

(declare-fun tp!1894814 () Bool)

(assert (=> b!6887318 (= e!4149531 (and tp!1894813 tp!1894814))))

(declare-fun b!6887315 () Bool)

(assert (=> b!6887315 (= e!4149531 tp_is_empty!42813)))

(assert (= (and b!6886630 (is-ElementMatch!16794 (regOne!34101 r1!6342))) b!6887315))

(assert (= (and b!6886630 (is-Concat!25639 (regOne!34101 r1!6342))) b!6887316))

(assert (= (and b!6886630 (is-Star!16794 (regOne!34101 r1!6342))) b!6887317))

(assert (= (and b!6886630 (is-Union!16794 (regOne!34101 r1!6342))) b!6887318))

(declare-fun b!6887320 () Bool)

(declare-fun e!4149532 () Bool)

(declare-fun tp!1894820 () Bool)

(declare-fun tp!1894821 () Bool)

(assert (=> b!6887320 (= e!4149532 (and tp!1894820 tp!1894821))))

(assert (=> b!6886630 (= tp!1894685 e!4149532)))

(declare-fun b!6887321 () Bool)

(declare-fun tp!1894817 () Bool)

(assert (=> b!6887321 (= e!4149532 tp!1894817)))

(declare-fun b!6887322 () Bool)

(declare-fun tp!1894818 () Bool)

(declare-fun tp!1894819 () Bool)

(assert (=> b!6887322 (= e!4149532 (and tp!1894818 tp!1894819))))

(declare-fun b!6887319 () Bool)

(assert (=> b!6887319 (= e!4149532 tp_is_empty!42813)))

(assert (= (and b!6886630 (is-ElementMatch!16794 (regTwo!34101 r1!6342))) b!6887319))

(assert (= (and b!6886630 (is-Concat!25639 (regTwo!34101 r1!6342))) b!6887320))

(assert (= (and b!6886630 (is-Star!16794 (regTwo!34101 r1!6342))) b!6887321))

(assert (= (and b!6886630 (is-Union!16794 (regTwo!34101 r1!6342))) b!6887322))

(declare-fun b!6887324 () Bool)

(declare-fun e!4149533 () Bool)

(declare-fun tp!1894825 () Bool)

(declare-fun tp!1894826 () Bool)

(assert (=> b!6887324 (= e!4149533 (and tp!1894825 tp!1894826))))

(assert (=> b!6886625 (= tp!1894686 e!4149533)))

(declare-fun b!6887325 () Bool)

(declare-fun tp!1894822 () Bool)

(assert (=> b!6887325 (= e!4149533 tp!1894822)))

(declare-fun b!6887326 () Bool)

(declare-fun tp!1894823 () Bool)

(declare-fun tp!1894824 () Bool)

(assert (=> b!6887326 (= e!4149533 (and tp!1894823 tp!1894824))))

(declare-fun b!6887323 () Bool)

(assert (=> b!6887323 (= e!4149533 tp_is_empty!42813)))

(assert (= (and b!6886625 (is-ElementMatch!16794 (regOne!34100 r1!6342))) b!6887323))

(assert (= (and b!6886625 (is-Concat!25639 (regOne!34100 r1!6342))) b!6887324))

(assert (= (and b!6886625 (is-Star!16794 (regOne!34100 r1!6342))) b!6887325))

(assert (= (and b!6886625 (is-Union!16794 (regOne!34100 r1!6342))) b!6887326))

(declare-fun b!6887328 () Bool)

(declare-fun e!4149534 () Bool)

(declare-fun tp!1894830 () Bool)

(declare-fun tp!1894831 () Bool)

(assert (=> b!6887328 (= e!4149534 (and tp!1894830 tp!1894831))))

(assert (=> b!6886625 (= tp!1894681 e!4149534)))

(declare-fun b!6887329 () Bool)

(declare-fun tp!1894827 () Bool)

(assert (=> b!6887329 (= e!4149534 tp!1894827)))

(declare-fun b!6887330 () Bool)

(declare-fun tp!1894828 () Bool)

(declare-fun tp!1894829 () Bool)

(assert (=> b!6887330 (= e!4149534 (and tp!1894828 tp!1894829))))

(declare-fun b!6887327 () Bool)

(assert (=> b!6887327 (= e!4149534 tp_is_empty!42813)))

(assert (= (and b!6886625 (is-ElementMatch!16794 (regTwo!34100 r1!6342))) b!6887327))

(assert (= (and b!6886625 (is-Concat!25639 (regTwo!34100 r1!6342))) b!6887328))

(assert (= (and b!6886625 (is-Star!16794 (regTwo!34100 r1!6342))) b!6887329))

(assert (= (and b!6886625 (is-Union!16794 (regTwo!34100 r1!6342))) b!6887330))

(push 1)

(assert (not b!6886805))

(assert (not b!6887128))

(assert (not b!6886809))

(assert (not b!6887077))

(assert (not b!6887266))

(assert (not b!6887169))

(assert (not b!6887193))

(assert (not b!6887135))

(assert (not bm!626778))

(assert (not b!6887119))

(assert (not b!6887039))

(assert (not bm!626767))

(assert (not d!2160517))

(assert (not d!2160557))

(assert (not b!6887035))

(assert (not b!6886948))

(assert (not b!6886978))

(assert (not d!2160539))

(assert (not bm!626770))

(assert (not b!6887180))

(assert (not b!6887321))

(assert (not bm!626776))

(assert (not b!6887269))

(assert (not b!6887121))

(assert (not bm!626777))

(assert (not b!6886807))

(assert (not b!6887074))

(assert (not d!2160513))

(assert (not bm!626772))

(assert (not bm!626758))

(assert (not bm!626780))

(assert (not b!6887329))

(assert (not b!6887003))

(assert (not bm!626759))

(assert (not d!2160525))

(assert (not b!6887066))

(assert (not b!6887284))

(assert (not bm!626763))

(assert (not b!6887203))

(assert (not b!6886898))

(assert (not b!6887309))

(assert (not bm!626756))

(assert (not b!6887330))

(assert (not b!6886859))

(assert (not b!6887145))

(assert (not bm!626761))

(assert (not bm!626753))

(assert (not b!6887295))

(assert (not d!2160503))

(assert (not d!2160475))

(assert (not b!6887313))

(assert (not d!2160529))

(assert (not bm!626781))

(assert (not d!2160563))

(assert (not b!6887261))

(assert (not b!6887021))

(assert (not bm!626771))

(assert (not b!6887325))

(assert (not b!6887078))

(assert (not b!6887029))

(assert (not b!6887308))

(assert (not d!2160455))

(assert (not b!6887083))

(assert (not b!6887318))

(assert (not b!6887278))

(assert (not b!6887133))

(assert (not bm!626774))

(assert (not b!6887129))

(assert (not b!6887115))

(assert (not b!6887305))

(assert (not d!2160541))

(assert (not bm!626779))

(assert (not b!6887116))

(assert (not b!6887254))

(assert (not d!2160495))

(assert (not b!6887306))

(assert (not b!6886802))

(assert (not b!6887132))

(assert (not d!2160509))

(assert (not b!6886987))

(assert (not d!2160499))

(assert (not d!2160553))

(assert (not b!6887202))

(assert (not b!6887324))

(assert (not b!6886774))

(assert (not b!6886858))

(assert (not d!2160533))

(assert (not b!6886808))

(assert (not b!6887271))

(assert (not b!6887257))

(assert (not b!6887030))

(assert (not b!6887210))

(assert (not b!6887316))

(assert (not bm!626769))

(assert (not b!6886902))

(assert (not b!6886946))

(assert (not b!6887263))

(assert (not b!6887317))

(assert (not b!6887043))

(assert (not b!6887069))

(assert (not b!6886801))

(assert (not b!6887205))

(assert (not d!2160459))

(assert (not b!6887068))

(assert (not b!6887088))

(assert (not d!2160531))

(assert (not b!6887320))

(assert (not bm!626768))

(assert (not b!6887282))

(assert (not b!6887122))

(assert (not b!6887276))

(assert (not d!2160487))

(assert (not d!2160561))

(assert (not b!6887158))

(assert (not b!6887025))

(assert (not b!6887322))

(assert (not d!2160511))

(assert (not b!6887005))

(assert (not b!6887094))

(assert (not b!6887326))

(assert (not d!2160551))

(assert (not b!6887258))

(assert (not b!6887124))

(assert (not b!6887061))

(assert (not b!6887064))

(assert (not b!6887270))

(assert (not b!6887056))

(assert (not d!2160469))

(assert (not bm!626773))

(assert (not b!6887265))

(assert (not b!6887279))

(assert (not b!6887087))

(assert (not b!6887040))

(assert (not b!6887209))

(assert (not d!2160501))

(assert (not b!6887304))

(assert (not b!6887291))

(assert (not b!6887262))

(assert (not b!6887123))

(assert (not b!6887032))

(assert (not d!2160519))

(assert (not b!6887091))

(assert (not d!2160453))

(assert (not b!6887259))

(assert (not b!6887067))

(assert (not b!6886904))

(assert (not b!6886901))

(assert (not b!6887046))

(assert (not d!2160461))

(assert (not b!6887195))

(assert (not d!2160543))

(assert (not b!6887092))

(assert (not d!2160473))

(assert (not d!2160521))

(assert (not d!2160463))

(assert (not b!6887267))

(assert (not b!6886893))

(assert (not b!6887214))

(assert (not b!6887147))

(assert (not b!6887255))

(assert (not d!2160527))

(assert (not bm!626733))

(assert (not b!6887060))

(assert (not b!6887168))

(assert (not b!6887283))

(assert (not bm!626762))

(assert (not b!6887026))

(assert (not b!6887058))

(assert (not d!2160467))

(assert (not b!6887213))

(assert (not b!6887216))

(assert (not b!6887253))

(assert (not bm!626752))

(assert (not bm!626747))

(assert (not b!6887293))

(assert (not b!6887310))

(assert (not bm!626735))

(assert (not d!2160523))

(assert (not b!6887328))

(assert (not b!6887044))

(assert (not bm!626766))

(assert (not d!2160547))

(assert (not b!6886897))

(assert (not bm!626765))

(assert (not b!6887073))

(assert (not b!6887178))

(assert (not b!6887280))

(assert tp_is_empty!42813)

(assert (not b!6887312))

(assert (not b!6887314))

(assert (not b!6887080))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

