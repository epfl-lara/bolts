; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!666696 () Bool)

(assert start!666696)

(declare-fun b!6943383 () Bool)

(assert (=> b!6943383 true))

(assert (=> b!6943383 true))

(assert (=> b!6943383 true))

(declare-fun lambda!395756 () Int)

(declare-fun lambda!395755 () Int)

(assert (=> b!6943383 (not (= lambda!395756 lambda!395755))))

(assert (=> b!6943383 true))

(assert (=> b!6943383 true))

(assert (=> b!6943383 true))

(declare-datatypes ((C!34214 0))(
  ( (C!34215 (val!26809 Int)) )
))
(declare-datatypes ((Regex!16972 0))(
  ( (ElementMatch!16972 (c!1288283 C!34214)) (Concat!25817 (regOne!34456 Regex!16972) (regTwo!34456 Regex!16972)) (EmptyExpr!16972) (Star!16972 (reg!17301 Regex!16972)) (EmptyLang!16972) (Union!16972 (regOne!34457 Regex!16972) (regTwo!34457 Regex!16972)) )
))
(declare-fun r1!6342 () Regex!16972)

(declare-fun r3!135 () Regex!16972)

(declare-fun lt!2476579 () Regex!16972)

(declare-datatypes ((List!66725 0))(
  ( (Nil!66601) (Cons!66601 (h!73049 C!34214) (t!380468 List!66725)) )
))
(declare-fun s!14361 () List!66725)

(declare-fun r2!6280 () Regex!16972)

(declare-fun lambda!395757 () Int)

(declare-datatypes ((tuple2!67658 0))(
  ( (tuple2!67659 (_1!37132 List!66725) (_2!37132 List!66725)) )
))
(declare-fun lt!2476595 () tuple2!67658)

(assert (=> b!6943383 (= (and (= (_2!37132 lt!2476595) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2476579)) (= lambda!395757 lambda!395755))))

(assert (=> b!6943383 (not (= lambda!395757 lambda!395756))))

(assert (=> b!6943383 true))

(assert (=> b!6943383 true))

(assert (=> b!6943383 true))

(declare-fun lambda!395758 () Int)

(assert (=> b!6943383 (not (= lambda!395758 lambda!395755))))

(assert (=> b!6943383 (= (and (= (_2!37132 lt!2476595) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2476579)) (= lambda!395758 lambda!395756))))

(assert (=> b!6943383 (not (= lambda!395758 lambda!395757))))

(assert (=> b!6943383 true))

(assert (=> b!6943383 true))

(assert (=> b!6943383 true))

(declare-fun lambda!395759 () Int)

(declare-fun lt!2476569 () List!66725)

(assert (=> b!6943383 (= (and (= lt!2476569 s!14361) (= r2!6280 lt!2476579)) (= lambda!395759 lambda!395755))))

(assert (=> b!6943383 (not (= lambda!395759 lambda!395756))))

(assert (=> b!6943383 (= (and (= lt!2476569 (_2!37132 lt!2476595)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395759 lambda!395757))))

(assert (=> b!6943383 (not (= lambda!395759 lambda!395758))))

(assert (=> b!6943383 true))

(assert (=> b!6943383 true))

(assert (=> b!6943383 true))

(declare-fun lambda!395760 () Int)

(assert (=> b!6943383 (= (and (= lt!2476569 s!14361) (= r2!6280 lt!2476579)) (= lambda!395760 lambda!395756))))

(assert (=> b!6943383 (not (= lambda!395760 lambda!395755))))

(assert (=> b!6943383 (not (= lambda!395760 lambda!395757))))

(assert (=> b!6943383 (= (and (= lt!2476569 (_2!37132 lt!2476595)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395760 lambda!395758))))

(assert (=> b!6943383 (not (= lambda!395760 lambda!395759))))

(assert (=> b!6943383 true))

(assert (=> b!6943383 true))

(assert (=> b!6943383 true))

(declare-fun lambda!395761 () Int)

(assert (=> b!6943383 (not (= lambda!395761 lambda!395756))))

(declare-fun lt!2476573 () Regex!16972)

(assert (=> b!6943383 (= (and (= lt!2476573 r1!6342) (= r3!135 lt!2476579)) (= lambda!395761 lambda!395755))))

(assert (=> b!6943383 (= (and (= s!14361 (_2!37132 lt!2476595)) (= lt!2476573 r2!6280)) (= lambda!395761 lambda!395757))))

(assert (=> b!6943383 (not (= lambda!395761 lambda!395758))))

(assert (=> b!6943383 (not (= lambda!395761 lambda!395760))))

(assert (=> b!6943383 (= (and (= s!14361 lt!2476569) (= lt!2476573 r1!6342) (= r3!135 r2!6280)) (= lambda!395761 lambda!395759))))

(assert (=> b!6943383 true))

(assert (=> b!6943383 true))

(assert (=> b!6943383 true))

(declare-fun bs!1856104 () Bool)

(declare-fun b!6943398 () Bool)

(assert (= bs!1856104 (and b!6943398 b!6943383)))

(declare-fun lambda!395762 () Int)

(assert (=> bs!1856104 (= (and (= r1!6342 lt!2476573) (= lt!2476579 r3!135)) (= lambda!395762 lambda!395761))))

(assert (=> bs!1856104 (not (= lambda!395762 lambda!395756))))

(assert (=> bs!1856104 (= lambda!395762 lambda!395755)))

(assert (=> bs!1856104 (= (and (= s!14361 (_2!37132 lt!2476595)) (= r1!6342 r2!6280) (= lt!2476579 r3!135)) (= lambda!395762 lambda!395757))))

(assert (=> bs!1856104 (not (= lambda!395762 lambda!395758))))

(assert (=> bs!1856104 (not (= lambda!395762 lambda!395760))))

(assert (=> bs!1856104 (= (and (= s!14361 lt!2476569) (= lt!2476579 r2!6280)) (= lambda!395762 lambda!395759))))

(assert (=> b!6943398 true))

(assert (=> b!6943398 true))

(assert (=> b!6943398 true))

(declare-fun b!6943382 () Bool)

(declare-fun e!4176726 () Bool)

(declare-fun tp!1913870 () Bool)

(declare-fun tp!1913871 () Bool)

(assert (=> b!6943382 (= e!4176726 (and tp!1913870 tp!1913871))))

(declare-datatypes ((Unit!160676 0))(
  ( (Unit!160677) )
))
(declare-fun e!4176721 () Unit!160676)

(declare-fun Unit!160678 () Unit!160676)

(assert (=> b!6943383 (= e!4176721 Unit!160678)))

(declare-fun lt!2476593 () Unit!160676)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2913 (Regex!16972 Regex!16972 List!66725) Unit!160676)

(assert (=> b!6943383 (= lt!2476593 (lemmaFindConcatSeparationEquivalentToExists!2913 r1!6342 lt!2476579 s!14361))))

(declare-fun Exists!3972 (Int) Bool)

(assert (=> b!6943383 (Exists!3972 lambda!395755)))

(declare-fun lt!2476594 () Unit!160676)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2433 (Regex!16972 Regex!16972 List!66725) Unit!160676)

(assert (=> b!6943383 (= lt!2476594 (lemmaExistCutMatchRandMatchRSpecEquivalent!2433 r1!6342 lt!2476579 s!14361))))

(assert (=> b!6943383 (= (Exists!3972 lambda!395755) (Exists!3972 lambda!395756))))

(declare-datatypes ((Option!16741 0))(
  ( (None!16740) (Some!16740 (v!53012 tuple2!67658)) )
))
(declare-fun lt!2476592 () Option!16741)

(declare-fun get!23395 (Option!16741) tuple2!67658)

(assert (=> b!6943383 (= lt!2476595 (get!23395 lt!2476592))))

(declare-fun lt!2476568 () Unit!160676)

(declare-fun mainMatchTheorem!4029 (Regex!16972 List!66725) Unit!160676)

(assert (=> b!6943383 (= lt!2476568 (mainMatchTheorem!4029 r1!6342 (_1!37132 lt!2476595)))))

(declare-fun matchR!9111 (Regex!16972 List!66725) Bool)

(declare-fun matchRSpec!4029 (Regex!16972 List!66725) Bool)

(assert (=> b!6943383 (= (matchR!9111 r1!6342 (_1!37132 lt!2476595)) (matchRSpec!4029 r1!6342 (_1!37132 lt!2476595)))))

(declare-fun lt!2476586 () Unit!160676)

(assert (=> b!6943383 (= lt!2476586 (mainMatchTheorem!4029 lt!2476579 (_2!37132 lt!2476595)))))

(assert (=> b!6943383 (= (matchR!9111 lt!2476579 (_2!37132 lt!2476595)) (matchRSpec!4029 lt!2476579 (_2!37132 lt!2476595)))))

(declare-fun lt!2476599 () Unit!160676)

(assert (=> b!6943383 (= lt!2476599 (lemmaFindConcatSeparationEquivalentToExists!2913 r2!6280 r3!135 (_2!37132 lt!2476595)))))

(declare-fun lt!2476589 () Option!16741)

(declare-fun findConcatSeparation!3155 (Regex!16972 Regex!16972 List!66725 List!66725 List!66725) Option!16741)

(assert (=> b!6943383 (= lt!2476589 (findConcatSeparation!3155 r2!6280 r3!135 Nil!66601 (_2!37132 lt!2476595) (_2!37132 lt!2476595)))))

(declare-fun isDefined!13442 (Option!16741) Bool)

(assert (=> b!6943383 (= (isDefined!13442 lt!2476589) (Exists!3972 lambda!395757))))

(declare-fun lt!2476583 () Unit!160676)

(assert (=> b!6943383 (= lt!2476583 (lemmaExistCutMatchRandMatchRSpecEquivalent!2433 r2!6280 r3!135 (_2!37132 lt!2476595)))))

(assert (=> b!6943383 (= (Exists!3972 lambda!395757) (Exists!3972 lambda!395758))))

(declare-fun lt!2476576 () tuple2!67658)

(assert (=> b!6943383 (= lt!2476576 (get!23395 lt!2476589))))

(declare-fun lt!2476580 () Unit!160676)

(assert (=> b!6943383 (= lt!2476580 (mainMatchTheorem!4029 r2!6280 (_1!37132 lt!2476576)))))

(assert (=> b!6943383 (= (matchR!9111 r2!6280 (_1!37132 lt!2476576)) (matchRSpec!4029 r2!6280 (_1!37132 lt!2476576)))))

(declare-fun lt!2476572 () Unit!160676)

(assert (=> b!6943383 (= lt!2476572 (mainMatchTheorem!4029 r3!135 (_2!37132 lt!2476576)))))

(assert (=> b!6943383 (= (matchR!9111 r3!135 (_2!37132 lt!2476576)) (matchRSpec!4029 r3!135 (_2!37132 lt!2476576)))))

(declare-fun lt!2476577 () Unit!160676)

(declare-fun lemmaConcatAssociativity!3053 (List!66725 List!66725 List!66725) Unit!160676)

(assert (=> b!6943383 (= lt!2476577 (lemmaConcatAssociativity!3053 (_1!37132 lt!2476595) (_1!37132 lt!2476576) (_2!37132 lt!2476576)))))

(declare-fun ++!15011 (List!66725 List!66725) List!66725)

(assert (=> b!6943383 (= lt!2476569 (++!15011 (_1!37132 lt!2476595) (_1!37132 lt!2476576)))))

(assert (=> b!6943383 (= (++!15011 lt!2476569 (_2!37132 lt!2476576)) (++!15011 (_1!37132 lt!2476595) (++!15011 (_1!37132 lt!2476576) (_2!37132 lt!2476576))))))

(declare-fun lt!2476582 () Unit!160676)

(assert (=> b!6943383 (= lt!2476582 (mainMatchTheorem!4029 lt!2476573 lt!2476569))))

(assert (=> b!6943383 (= (matchR!9111 lt!2476573 lt!2476569) (matchRSpec!4029 lt!2476573 lt!2476569))))

(declare-fun lt!2476587 () Unit!160676)

(assert (=> b!6943383 (= lt!2476587 (lemmaFindConcatSeparationEquivalentToExists!2913 r1!6342 r2!6280 lt!2476569))))

(declare-fun lt!2476590 () Bool)

(assert (=> b!6943383 (= lt!2476590 (isDefined!13442 (findConcatSeparation!3155 r1!6342 r2!6280 Nil!66601 lt!2476569 lt!2476569)))))

(assert (=> b!6943383 (= lt!2476590 (Exists!3972 lambda!395759))))

(declare-fun lt!2476596 () Unit!160676)

(assert (=> b!6943383 (= lt!2476596 (lemmaExistCutMatchRandMatchRSpecEquivalent!2433 r1!6342 r2!6280 lt!2476569))))

(assert (=> b!6943383 (= (Exists!3972 lambda!395759) (Exists!3972 lambda!395760))))

(declare-fun lt!2476571 () Unit!160676)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!115 (Regex!16972 Regex!16972 List!66725 List!66725 List!66725 List!66725 List!66725) Unit!160676)

(assert (=> b!6943383 (= lt!2476571 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!115 r1!6342 r2!6280 (_1!37132 lt!2476595) (_1!37132 lt!2476576) lt!2476569 Nil!66601 lt!2476569))))

(assert (=> b!6943383 lt!2476590))

(declare-fun lt!2476588 () Unit!160676)

(assert (=> b!6943383 (= lt!2476588 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!115 lt!2476573 r3!135 lt!2476569 (_2!37132 lt!2476576) s!14361 Nil!66601 s!14361))))

(assert (=> b!6943383 (isDefined!13442 (findConcatSeparation!3155 lt!2476573 r3!135 Nil!66601 s!14361 s!14361))))

(declare-fun lt!2476597 () Unit!160676)

(assert (=> b!6943383 (= lt!2476597 (lemmaFindConcatSeparationEquivalentToExists!2913 lt!2476573 r3!135 s!14361))))

(assert (=> b!6943383 (Exists!3972 lambda!395761)))

(declare-fun lt!2476574 () Unit!160676)

(assert (=> b!6943383 (= lt!2476574 (lemmaExistCutMatchRandMatchRSpecEquivalent!2433 lt!2476573 r3!135 s!14361))))

(assert (=> b!6943383 false))

(declare-fun b!6943384 () Bool)

(declare-fun e!4176723 () Bool)

(declare-fun tp_is_empty!43169 () Bool)

(assert (=> b!6943384 (= e!4176723 tp_is_empty!43169)))

(declare-fun b!6943385 () Bool)

(declare-fun tp!1913874 () Bool)

(declare-fun tp!1913863 () Bool)

(assert (=> b!6943385 (= e!4176726 (and tp!1913874 tp!1913863))))

(declare-fun b!6943386 () Bool)

(declare-fun e!4176725 () Bool)

(declare-fun tp!1913872 () Bool)

(declare-fun tp!1913861 () Bool)

(assert (=> b!6943386 (= e!4176725 (and tp!1913872 tp!1913861))))

(declare-fun b!6943387 () Bool)

(declare-fun tp!1913860 () Bool)

(assert (=> b!6943387 (= e!4176725 tp!1913860)))

(declare-fun b!6943388 () Bool)

(declare-fun res!2832456 () Bool)

(declare-fun e!4176724 () Bool)

(assert (=> b!6943388 (=> (not res!2832456) (not e!4176724))))

(declare-fun validRegex!8678 (Regex!16972) Bool)

(assert (=> b!6943388 (= res!2832456 (validRegex!8678 r3!135))))

(declare-fun b!6943389 () Bool)

(declare-fun tp!1913864 () Bool)

(assert (=> b!6943389 (= e!4176726 tp!1913864)))

(declare-fun b!6943390 () Bool)

(declare-fun tp!1913868 () Bool)

(declare-fun tp!1913862 () Bool)

(assert (=> b!6943390 (= e!4176723 (and tp!1913868 tp!1913862))))

(declare-fun b!6943391 () Bool)

(declare-fun e!4176722 () Bool)

(assert (=> b!6943391 (= e!4176724 (not e!4176722))))

(declare-fun res!2832457 () Bool)

(assert (=> b!6943391 (=> res!2832457 e!4176722)))

(declare-fun lt!2476578 () Bool)

(assert (=> b!6943391 (= res!2832457 lt!2476578)))

(declare-fun lt!2476584 () Regex!16972)

(assert (=> b!6943391 (= (matchR!9111 lt!2476584 s!14361) (matchRSpec!4029 lt!2476584 s!14361))))

(declare-fun lt!2476575 () Unit!160676)

(assert (=> b!6943391 (= lt!2476575 (mainMatchTheorem!4029 lt!2476584 s!14361))))

(declare-fun lt!2476585 () Regex!16972)

(assert (=> b!6943391 (= lt!2476578 (matchRSpec!4029 lt!2476585 s!14361))))

(assert (=> b!6943391 (= lt!2476578 (matchR!9111 lt!2476585 s!14361))))

(declare-fun lt!2476591 () Unit!160676)

(assert (=> b!6943391 (= lt!2476591 (mainMatchTheorem!4029 lt!2476585 s!14361))))

(assert (=> b!6943391 (= lt!2476584 (Concat!25817 r1!6342 lt!2476579))))

(assert (=> b!6943391 (= lt!2476579 (Concat!25817 r2!6280 r3!135))))

(assert (=> b!6943391 (= lt!2476585 (Concat!25817 lt!2476573 r3!135))))

(assert (=> b!6943391 (= lt!2476573 (Concat!25817 r1!6342 r2!6280))))

(declare-fun b!6943392 () Bool)

(assert (=> b!6943392 (= e!4176725 tp_is_empty!43169)))

(declare-fun res!2832458 () Bool)

(assert (=> start!666696 (=> (not res!2832458) (not e!4176724))))

(assert (=> start!666696 (= res!2832458 (validRegex!8678 r1!6342))))

(assert (=> start!666696 e!4176724))

(assert (=> start!666696 e!4176725))

(assert (=> start!666696 e!4176723))

(assert (=> start!666696 e!4176726))

(declare-fun e!4176727 () Bool)

(assert (=> start!666696 e!4176727))

(declare-fun b!6943393 () Bool)

(declare-fun tp!1913865 () Bool)

(declare-fun tp!1913873 () Bool)

(assert (=> b!6943393 (= e!4176725 (and tp!1913865 tp!1913873))))

(declare-fun b!6943394 () Bool)

(declare-fun res!2832455 () Bool)

(assert (=> b!6943394 (=> (not res!2832455) (not e!4176724))))

(assert (=> b!6943394 (= res!2832455 (validRegex!8678 r2!6280))))

(declare-fun b!6943395 () Bool)

(declare-fun tp!1913875 () Bool)

(declare-fun tp!1913869 () Bool)

(assert (=> b!6943395 (= e!4176723 (and tp!1913875 tp!1913869))))

(declare-fun b!6943396 () Bool)

(declare-fun tp!1913866 () Bool)

(assert (=> b!6943396 (= e!4176723 tp!1913866)))

(declare-fun b!6943397 () Bool)

(assert (=> b!6943397 (= e!4176726 tp_is_empty!43169)))

(assert (=> b!6943398 (= e!4176722 true)))

(declare-fun lt!2476598 () Bool)

(assert (=> b!6943398 (= lt!2476598 (Exists!3972 lambda!395762))))

(declare-fun lt!2476581 () Unit!160676)

(assert (=> b!6943398 (= lt!2476581 (lemmaFindConcatSeparationEquivalentToExists!2913 r1!6342 lt!2476579 s!14361))))

(declare-fun lt!2476570 () Unit!160676)

(assert (=> b!6943398 (= lt!2476570 e!4176721)))

(declare-fun c!1288282 () Bool)

(assert (=> b!6943398 (= c!1288282 lt!2476598)))

(assert (=> b!6943398 (= lt!2476598 (isDefined!13442 lt!2476592))))

(assert (=> b!6943398 (= lt!2476592 (findConcatSeparation!3155 r1!6342 lt!2476579 Nil!66601 s!14361 s!14361))))

(declare-fun b!6943399 () Bool)

(declare-fun Unit!160679 () Unit!160676)

(assert (=> b!6943399 (= e!4176721 Unit!160679)))

(declare-fun b!6943400 () Bool)

(declare-fun tp!1913867 () Bool)

(assert (=> b!6943400 (= e!4176727 (and tp_is_empty!43169 tp!1913867))))

(assert (= (and start!666696 res!2832458) b!6943394))

(assert (= (and b!6943394 res!2832455) b!6943388))

(assert (= (and b!6943388 res!2832456) b!6943391))

(assert (= (and b!6943391 (not res!2832457)) b!6943398))

(assert (= (and b!6943398 c!1288282) b!6943383))

(assert (= (and b!6943398 (not c!1288282)) b!6943399))

(assert (= (and start!666696 (is-ElementMatch!16972 r1!6342)) b!6943392))

(assert (= (and start!666696 (is-Concat!25817 r1!6342)) b!6943386))

(assert (= (and start!666696 (is-Star!16972 r1!6342)) b!6943387))

(assert (= (and start!666696 (is-Union!16972 r1!6342)) b!6943393))

(assert (= (and start!666696 (is-ElementMatch!16972 r2!6280)) b!6943384))

(assert (= (and start!666696 (is-Concat!25817 r2!6280)) b!6943390))

(assert (= (and start!666696 (is-Star!16972 r2!6280)) b!6943396))

(assert (= (and start!666696 (is-Union!16972 r2!6280)) b!6943395))

(assert (= (and start!666696 (is-ElementMatch!16972 r3!135)) b!6943397))

(assert (= (and start!666696 (is-Concat!25817 r3!135)) b!6943385))

(assert (= (and start!666696 (is-Star!16972 r3!135)) b!6943389))

(assert (= (and start!666696 (is-Union!16972 r3!135)) b!6943382))

(assert (= (and start!666696 (is-Cons!66601 s!14361)) b!6943400))

(declare-fun m!7648084 () Bool)

(assert (=> b!6943383 m!7648084))

(declare-fun m!7648086 () Bool)

(assert (=> b!6943383 m!7648086))

(declare-fun m!7648088 () Bool)

(assert (=> b!6943383 m!7648088))

(declare-fun m!7648090 () Bool)

(assert (=> b!6943383 m!7648090))

(declare-fun m!7648092 () Bool)

(assert (=> b!6943383 m!7648092))

(declare-fun m!7648094 () Bool)

(assert (=> b!6943383 m!7648094))

(declare-fun m!7648096 () Bool)

(assert (=> b!6943383 m!7648096))

(declare-fun m!7648098 () Bool)

(assert (=> b!6943383 m!7648098))

(assert (=> b!6943383 m!7648094))

(declare-fun m!7648100 () Bool)

(assert (=> b!6943383 m!7648100))

(declare-fun m!7648102 () Bool)

(assert (=> b!6943383 m!7648102))

(declare-fun m!7648104 () Bool)

(assert (=> b!6943383 m!7648104))

(assert (=> b!6943383 m!7648104))

(declare-fun m!7648106 () Bool)

(assert (=> b!6943383 m!7648106))

(declare-fun m!7648108 () Bool)

(assert (=> b!6943383 m!7648108))

(declare-fun m!7648110 () Bool)

(assert (=> b!6943383 m!7648110))

(declare-fun m!7648112 () Bool)

(assert (=> b!6943383 m!7648112))

(declare-fun m!7648114 () Bool)

(assert (=> b!6943383 m!7648114))

(declare-fun m!7648116 () Bool)

(assert (=> b!6943383 m!7648116))

(declare-fun m!7648118 () Bool)

(assert (=> b!6943383 m!7648118))

(declare-fun m!7648120 () Bool)

(assert (=> b!6943383 m!7648120))

(declare-fun m!7648122 () Bool)

(assert (=> b!6943383 m!7648122))

(declare-fun m!7648124 () Bool)

(assert (=> b!6943383 m!7648124))

(declare-fun m!7648126 () Bool)

(assert (=> b!6943383 m!7648126))

(declare-fun m!7648128 () Bool)

(assert (=> b!6943383 m!7648128))

(assert (=> b!6943383 m!7648112))

(declare-fun m!7648130 () Bool)

(assert (=> b!6943383 m!7648130))

(declare-fun m!7648132 () Bool)

(assert (=> b!6943383 m!7648132))

(declare-fun m!7648134 () Bool)

(assert (=> b!6943383 m!7648134))

(assert (=> b!6943383 m!7648126))

(declare-fun m!7648136 () Bool)

(assert (=> b!6943383 m!7648136))

(declare-fun m!7648138 () Bool)

(assert (=> b!6943383 m!7648138))

(declare-fun m!7648140 () Bool)

(assert (=> b!6943383 m!7648140))

(assert (=> b!6943383 m!7648118))

(declare-fun m!7648142 () Bool)

(assert (=> b!6943383 m!7648142))

(declare-fun m!7648144 () Bool)

(assert (=> b!6943383 m!7648144))

(declare-fun m!7648146 () Bool)

(assert (=> b!6943383 m!7648146))

(declare-fun m!7648148 () Bool)

(assert (=> b!6943383 m!7648148))

(declare-fun m!7648150 () Bool)

(assert (=> b!6943383 m!7648150))

(declare-fun m!7648152 () Bool)

(assert (=> b!6943383 m!7648152))

(declare-fun m!7648154 () Bool)

(assert (=> b!6943383 m!7648154))

(declare-fun m!7648156 () Bool)

(assert (=> b!6943383 m!7648156))

(declare-fun m!7648158 () Bool)

(assert (=> b!6943383 m!7648158))

(declare-fun m!7648160 () Bool)

(assert (=> b!6943383 m!7648160))

(declare-fun m!7648162 () Bool)

(assert (=> b!6943383 m!7648162))

(declare-fun m!7648164 () Bool)

(assert (=> b!6943383 m!7648164))

(declare-fun m!7648166 () Bool)

(assert (=> b!6943383 m!7648166))

(declare-fun m!7648168 () Bool)

(assert (=> b!6943383 m!7648168))

(declare-fun m!7648170 () Bool)

(assert (=> b!6943383 m!7648170))

(assert (=> b!6943383 m!7648096))

(declare-fun m!7648172 () Bool)

(assert (=> b!6943383 m!7648172))

(declare-fun m!7648174 () Bool)

(assert (=> b!6943398 m!7648174))

(assert (=> b!6943398 m!7648154))

(declare-fun m!7648176 () Bool)

(assert (=> b!6943398 m!7648176))

(declare-fun m!7648178 () Bool)

(assert (=> b!6943398 m!7648178))

(declare-fun m!7648180 () Bool)

(assert (=> start!666696 m!7648180))

(declare-fun m!7648182 () Bool)

(assert (=> b!6943394 m!7648182))

(declare-fun m!7648184 () Bool)

(assert (=> b!6943391 m!7648184))

(declare-fun m!7648186 () Bool)

(assert (=> b!6943391 m!7648186))

(declare-fun m!7648188 () Bool)

(assert (=> b!6943391 m!7648188))

(declare-fun m!7648190 () Bool)

(assert (=> b!6943391 m!7648190))

(declare-fun m!7648192 () Bool)

(assert (=> b!6943391 m!7648192))

(declare-fun m!7648194 () Bool)

(assert (=> b!6943391 m!7648194))

(declare-fun m!7648196 () Bool)

(assert (=> b!6943388 m!7648196))

(push 1)

(assert (not b!6943389))

(assert (not b!6943400))

(assert (not b!6943390))

(assert (not b!6943386))

(assert (not b!6943383))

(assert (not b!6943385))

(assert (not b!6943387))

(assert (not b!6943398))

(assert (not b!6943396))

(assert (not b!6943388))

(assert tp_is_empty!43169)

(assert (not b!6943393))

(assert (not b!6943395))

(assert (not b!6943382))

(assert (not b!6943391))

(assert (not b!6943394))

(assert (not start!666696))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

