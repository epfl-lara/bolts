; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!237530 () Bool)

(assert start!237530)

(declare-fun b!2425079 () Bool)

(declare-fun e!1542568 () Bool)

(declare-fun tp!770191 () Bool)

(declare-fun tp!770189 () Bool)

(assert (=> b!2425079 (= e!1542568 (and tp!770191 tp!770189))))

(declare-datatypes ((C!14410 0))(
  ( (C!14411 (val!8447 Int)) )
))
(declare-datatypes ((List!28490 0))(
  ( (Nil!28392) (Cons!28392 (h!33793 C!14410) (t!208467 List!28490)) )
))
(declare-fun s!9460 () List!28490)

(declare-fun call!148342 () List!28490)

(declare-fun c!386757 () Bool)

(declare-datatypes ((Regex!7126 0))(
  ( (ElementMatch!7126 (c!386759 C!14410)) (Concat!11762 (regOne!14764 Regex!7126) (regTwo!14764 Regex!7126)) (EmptyExpr!7126) (Star!7126 (reg!7455 Regex!7126)) (EmptyLang!7126) (Union!7126 (regOne!14765 Regex!7126) (regTwo!14765 Regex!7126)) )
))
(declare-fun lt!876111 () Regex!7126)

(declare-fun lt!876114 () Regex!7126)

(declare-fun call!148337 () Bool)

(declare-fun bm!148332 () Bool)

(declare-fun matchR!3243 (Regex!7126 List!28490) Bool)

(assert (=> bm!148332 (= call!148337 (matchR!3243 (ite c!386757 lt!876114 (Concat!11762 lt!876111 EmptyExpr!7126)) (ite c!386757 s!9460 call!148342)))))

(declare-fun b!2425080 () Bool)

(declare-fun e!1542566 () Bool)

(assert (=> b!2425080 e!1542566))

(declare-fun res!1029965 () Bool)

(assert (=> b!2425080 (=> (not res!1029965) (not e!1542566))))

(assert (=> b!2425080 (= res!1029965 call!148337)))

(declare-datatypes ((Unit!41615 0))(
  ( (Unit!41616) )
))
(declare-fun lt!876120 () Unit!41615)

(declare-datatypes ((tuple2!28032 0))(
  ( (tuple2!28033 (_1!16557 List!28490) (_2!16557 List!28490)) )
))
(declare-fun lt!876115 () tuple2!28032)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!75 (Regex!7126 Regex!7126 List!28490 List!28490 List!28490) Unit!41615)

(assert (=> b!2425080 (= lt!876120 (lemmaFindSeparationIsDefinedThenConcatMatches!75 lt!876111 EmptyExpr!7126 (_1!16557 lt!876115) (_2!16557 lt!876115) s!9460))))

(declare-datatypes ((Option!5627 0))(
  ( (None!5626) (Some!5626 (v!31034 tuple2!28032)) )
))
(declare-fun lt!876108 () Option!5627)

(declare-fun get!8742 (Option!5627) tuple2!28032)

(assert (=> b!2425080 (= lt!876115 (get!8742 lt!876108))))

(declare-fun e!1542567 () Unit!41615)

(declare-fun Unit!41617 () Unit!41615)

(assert (=> b!2425080 (= e!1542567 Unit!41617)))

(declare-fun b!2425081 () Bool)

(declare-fun e!1542561 () Bool)

(declare-fun e!1542564 () Bool)

(assert (=> b!2425081 (= e!1542561 e!1542564)))

(declare-fun res!1029969 () Bool)

(assert (=> b!2425081 (=> res!1029969 e!1542564)))

(declare-fun lt!876117 () Regex!7126)

(assert (=> b!2425081 (= res!1029969 (not (= lt!876117 EmptyExpr!7126)))))

(declare-datatypes ((List!28491 0))(
  ( (Nil!28393) (Cons!28393 (h!33794 Regex!7126) (t!208468 List!28491)) )
))
(declare-fun lt!876119 () List!28491)

(declare-fun generalisedConcat!227 (List!28491) Regex!7126)

(assert (=> b!2425081 (= lt!876117 (generalisedConcat!227 lt!876119))))

(declare-fun b!2425082 () Bool)

(declare-fun e!1542565 () Bool)

(declare-fun call!148338 () Bool)

(assert (=> b!2425082 (= e!1542565 call!148338)))

(declare-fun e!1542570 () Bool)

(declare-fun l!9164 () List!28491)

(declare-fun b!2425083 () Bool)

(declare-fun lt!876113 () Bool)

(declare-fun isDefined!4453 (Option!5627) Bool)

(declare-fun findConcatSeparation!735 (Regex!7126 Regex!7126 List!28490 List!28490 List!28490) Option!5627)

(assert (=> b!2425083 (= e!1542570 (not (= lt!876113 (isDefined!4453 (findConcatSeparation!735 (h!33794 l!9164) (generalisedConcat!227 (t!208468 l!9164)) Nil!28392 s!9460 s!9460)))))))

(declare-fun bm!148333 () Bool)

(declare-fun call!148339 () Option!5627)

(assert (=> bm!148333 (= call!148339 (findConcatSeparation!735 lt!876111 EmptyExpr!7126 Nil!28392 s!9460 s!9460))))

(declare-fun b!2425085 () Bool)

(declare-fun e!1542559 () Bool)

(assert (=> b!2425085 (= e!1542559 e!1542561)))

(declare-fun res!1029967 () Bool)

(assert (=> b!2425085 (=> res!1029967 e!1542561)))

(declare-fun isEmpty!16424 (List!28491) Bool)

(assert (=> b!2425085 (= res!1029967 (not (isEmpty!16424 lt!876119)))))

(declare-fun tail!3736 (List!28491) List!28491)

(assert (=> b!2425085 (= lt!876119 (tail!3736 l!9164))))

(declare-fun b!2425086 () Bool)

(declare-fun tp_is_empty!11665 () Bool)

(assert (=> b!2425086 (= e!1542568 tp_is_empty!11665)))

(declare-fun b!2425087 () Bool)

(declare-fun tp!770193 () Bool)

(declare-fun tp!770194 () Bool)

(assert (=> b!2425087 (= e!1542568 (and tp!770193 tp!770194))))

(declare-fun b!2425088 () Bool)

(declare-fun e!1542569 () Bool)

(declare-fun call!148340 () Bool)

(assert (=> b!2425088 (= e!1542569 (not call!148340))))

(declare-fun b!2425089 () Bool)

(declare-fun e!1542562 () Bool)

(assert (=> b!2425089 (= e!1542564 e!1542562)))

(declare-fun res!1029961 () Bool)

(assert (=> b!2425089 (=> res!1029961 e!1542562)))

(assert (=> b!2425089 (= res!1029961 e!1542570)))

(declare-fun c!386756 () Bool)

(assert (=> b!2425089 (= c!386756 (is-Cons!28393 l!9164))))

(declare-fun lt!876118 () Unit!41615)

(declare-fun e!1542560 () Unit!41615)

(assert (=> b!2425089 (= lt!876118 e!1542560)))

(assert (=> b!2425089 (= c!386757 (matchR!3243 lt!876111 s!9460))))

(declare-fun head!5464 (List!28491) Regex!7126)

(assert (=> b!2425089 (= lt!876111 (head!5464 l!9164))))

(declare-fun bm!148334 () Bool)

(declare-fun call!148341 () Option!5627)

(assert (=> bm!148334 (= call!148340 (isDefined!4453 (ite c!386757 call!148339 call!148341)))))

(declare-fun b!2425090 () Bool)

(declare-fun e!1542572 () Bool)

(declare-fun lt!876109 () Regex!7126)

(declare-fun validRegex!2846 (Regex!7126) Bool)

(assert (=> b!2425090 (= e!1542572 (validRegex!2846 lt!876109))))

(declare-fun bm!148335 () Bool)

(declare-fun ++!7047 (List!28490 List!28490) List!28490)

(assert (=> bm!148335 (= call!148342 (++!7047 (ite c!386757 s!9460 (_1!16557 lt!876115)) (ite c!386757 Nil!28392 (_2!16557 lt!876115))))))

(declare-fun b!2425091 () Bool)

(declare-fun Unit!41618 () Unit!41615)

(assert (=> b!2425091 (= e!1542560 Unit!41618)))

(declare-fun lt!876116 () Unit!41615)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!101 (Regex!7126 Regex!7126 List!28490 List!28490) Unit!41615)

(assert (=> b!2425091 (= lt!876116 (lemmaTwoRegexMatchThenConcatMatchesConcatString!101 lt!876111 EmptyExpr!7126 s!9460 Nil!28392))))

(assert (=> b!2425091 (= lt!876114 (Concat!11762 lt!876111 EmptyExpr!7126))))

(declare-fun res!1029960 () Bool)

(assert (=> b!2425091 (= res!1029960 (matchR!3243 lt!876114 call!148342))))

(declare-fun e!1542563 () Bool)

(assert (=> b!2425091 (=> (not res!1029960) (not e!1542563))))

(assert (=> b!2425091 e!1542563))

(declare-fun lt!876121 () Unit!41615)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!75 (Regex!7126 Regex!7126 List!28490) Unit!41615)

(assert (=> b!2425091 (= lt!876121 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!75 lt!876111 EmptyExpr!7126 s!9460))))

(declare-fun res!1029963 () Bool)

(assert (=> b!2425091 (= res!1029963 call!148340)))

(assert (=> b!2425091 (=> (not res!1029963) (not e!1542565))))

(assert (=> b!2425091 e!1542565))

(declare-fun b!2425092 () Bool)

(declare-fun tp!770190 () Bool)

(assert (=> b!2425092 (= e!1542568 tp!770190)))

(declare-fun b!2425093 () Bool)

(declare-fun e!1542571 () Bool)

(assert (=> b!2425093 (= e!1542571 (not e!1542559))))

(declare-fun res!1029966 () Bool)

(assert (=> b!2425093 (=> res!1029966 e!1542559)))

(declare-fun r!13927 () Regex!7126)

(assert (=> b!2425093 (= res!1029966 (or (is-Concat!11762 r!13927) (is-EmptyExpr!7126 r!13927)))))

(declare-fun matchRSpec!975 (Regex!7126 List!28490) Bool)

(assert (=> b!2425093 (= lt!876113 (matchRSpec!975 r!13927 s!9460))))

(assert (=> b!2425093 (= lt!876113 (matchR!3243 r!13927 s!9460))))

(declare-fun lt!876107 () Unit!41615)

(declare-fun mainMatchTheorem!975 (Regex!7126 List!28490) Unit!41615)

(assert (=> b!2425093 (= lt!876107 (mainMatchTheorem!975 r!13927 s!9460))))

(declare-fun bm!148336 () Bool)

(assert (=> bm!148336 (= call!148338 (isDefined!4453 (ite c!386757 call!148341 lt!876108)))))

(declare-fun b!2425094 () Bool)

(declare-fun res!1029964 () Bool)

(assert (=> b!2425094 (=> res!1029964 e!1542562)))

(assert (=> b!2425094 (= res!1029964 (not (is-Cons!28393 l!9164)))))

(declare-fun b!2425095 () Bool)

(declare-fun isEmpty!16425 (List!28490) Bool)

(assert (=> b!2425095 (= e!1542570 (not (= lt!876113 (isEmpty!16425 s!9460))))))

(declare-fun bm!148337 () Bool)

(assert (=> bm!148337 (= call!148341 (findConcatSeparation!735 lt!876111 lt!876117 Nil!28392 s!9460 s!9460))))

(declare-fun res!1029957 () Bool)

(assert (=> start!237530 (=> (not res!1029957) (not e!1542571))))

(declare-fun lambda!91338 () Int)

(declare-fun forall!5760 (List!28491 Int) Bool)

(assert (=> start!237530 (= res!1029957 (forall!5760 l!9164 lambda!91338))))

(assert (=> start!237530 e!1542571))

(declare-fun e!1542574 () Bool)

(assert (=> start!237530 e!1542574))

(assert (=> start!237530 e!1542568))

(declare-fun e!1542573 () Bool)

(assert (=> start!237530 e!1542573))

(declare-fun b!2425084 () Bool)

(assert (=> b!2425084 (= e!1542563 call!148337)))

(declare-fun b!2425096 () Bool)

(assert (=> b!2425096 (= e!1542566 false)))

(declare-fun b!2425097 () Bool)

(declare-fun tp!770195 () Bool)

(declare-fun tp!770192 () Bool)

(assert (=> b!2425097 (= e!1542574 (and tp!770195 tp!770192))))

(declare-fun b!2425098 () Bool)

(assert (=> b!2425098 (= e!1542562 e!1542572)))

(declare-fun res!1029968 () Bool)

(assert (=> b!2425098 (=> res!1029968 e!1542572)))

(assert (=> b!2425098 (= res!1029968 (not (validRegex!2846 (h!33794 l!9164))))))

(assert (=> b!2425098 (= lt!876109 (generalisedConcat!227 (t!208468 l!9164)))))

(declare-fun b!2425099 () Bool)

(declare-fun res!1029962 () Bool)

(assert (=> b!2425099 (=> res!1029962 e!1542559)))

(assert (=> b!2425099 (= res!1029962 (isEmpty!16424 l!9164))))

(declare-fun b!2425100 () Bool)

(declare-fun Unit!41619 () Unit!41615)

(assert (=> b!2425100 (= e!1542567 Unit!41619)))

(declare-fun b!2425101 () Bool)

(declare-fun Unit!41620 () Unit!41615)

(assert (=> b!2425101 (= e!1542560 Unit!41620)))

(assert (=> b!2425101 (= lt!876108 call!148339)))

(declare-fun lt!876110 () Bool)

(assert (=> b!2425101 (= lt!876110 call!148338)))

(declare-fun c!386758 () Bool)

(assert (=> b!2425101 (= c!386758 lt!876110)))

(declare-fun lt!876112 () Unit!41615)

(assert (=> b!2425101 (= lt!876112 e!1542567)))

(declare-fun res!1029958 () Bool)

(assert (=> b!2425101 (= res!1029958 (not lt!876110))))

(assert (=> b!2425101 (=> (not res!1029958) (not e!1542569))))

(assert (=> b!2425101 e!1542569))

(declare-fun b!2425102 () Bool)

(declare-fun tp!770188 () Bool)

(assert (=> b!2425102 (= e!1542573 (and tp_is_empty!11665 tp!770188))))

(declare-fun b!2425103 () Bool)

(declare-fun res!1029959 () Bool)

(assert (=> b!2425103 (=> (not res!1029959) (not e!1542571))))

(assert (=> b!2425103 (= res!1029959 (= r!13927 (generalisedConcat!227 l!9164)))))

(assert (= (and start!237530 res!1029957) b!2425103))

(assert (= (and b!2425103 res!1029959) b!2425093))

(assert (= (and b!2425093 (not res!1029966)) b!2425099))

(assert (= (and b!2425099 (not res!1029962)) b!2425085))

(assert (= (and b!2425085 (not res!1029967)) b!2425081))

(assert (= (and b!2425081 (not res!1029969)) b!2425089))

(assert (= (and b!2425089 c!386757) b!2425091))

(assert (= (and b!2425089 (not c!386757)) b!2425101))

(assert (= (and b!2425091 res!1029960) b!2425084))

(assert (= (and b!2425091 res!1029963) b!2425082))

(assert (= (and b!2425101 c!386758) b!2425080))

(assert (= (and b!2425101 (not c!386758)) b!2425100))

(assert (= (and b!2425080 res!1029965) b!2425096))

(assert (= (and b!2425101 res!1029958) b!2425088))

(assert (= (or b!2425091 b!2425080) bm!148335))

(assert (= (or b!2425082 b!2425088) bm!148337))

(assert (= (or b!2425091 b!2425101) bm!148333))

(assert (= (or b!2425084 b!2425080) bm!148332))

(assert (= (or b!2425082 b!2425101) bm!148336))

(assert (= (or b!2425091 b!2425088) bm!148334))

(assert (= (and b!2425089 c!386756) b!2425083))

(assert (= (and b!2425089 (not c!386756)) b!2425095))

(assert (= (and b!2425089 (not res!1029961)) b!2425094))

(assert (= (and b!2425094 (not res!1029964)) b!2425098))

(assert (= (and b!2425098 (not res!1029968)) b!2425090))

(assert (= (and start!237530 (is-Cons!28393 l!9164)) b!2425097))

(assert (= (and start!237530 (is-ElementMatch!7126 r!13927)) b!2425086))

(assert (= (and start!237530 (is-Concat!11762 r!13927)) b!2425079))

(assert (= (and start!237530 (is-Star!7126 r!13927)) b!2425092))

(assert (= (and start!237530 (is-Union!7126 r!13927)) b!2425087))

(assert (= (and start!237530 (is-Cons!28392 s!9460)) b!2425102))

(declare-fun m!2810487 () Bool)

(assert (=> b!2425093 m!2810487))

(declare-fun m!2810489 () Bool)

(assert (=> b!2425093 m!2810489))

(declare-fun m!2810491 () Bool)

(assert (=> b!2425093 m!2810491))

(declare-fun m!2810493 () Bool)

(assert (=> start!237530 m!2810493))

(declare-fun m!2810495 () Bool)

(assert (=> bm!148332 m!2810495))

(declare-fun m!2810497 () Bool)

(assert (=> b!2425099 m!2810497))

(declare-fun m!2810499 () Bool)

(assert (=> bm!148333 m!2810499))

(declare-fun m!2810501 () Bool)

(assert (=> b!2425098 m!2810501))

(declare-fun m!2810503 () Bool)

(assert (=> b!2425098 m!2810503))

(declare-fun m!2810505 () Bool)

(assert (=> b!2425080 m!2810505))

(declare-fun m!2810507 () Bool)

(assert (=> b!2425080 m!2810507))

(declare-fun m!2810509 () Bool)

(assert (=> bm!148336 m!2810509))

(declare-fun m!2810511 () Bool)

(assert (=> b!2425089 m!2810511))

(declare-fun m!2810513 () Bool)

(assert (=> b!2425089 m!2810513))

(declare-fun m!2810515 () Bool)

(assert (=> b!2425090 m!2810515))

(declare-fun m!2810517 () Bool)

(assert (=> b!2425095 m!2810517))

(declare-fun m!2810519 () Bool)

(assert (=> b!2425103 m!2810519))

(declare-fun m!2810521 () Bool)

(assert (=> bm!148335 m!2810521))

(declare-fun m!2810523 () Bool)

(assert (=> b!2425081 m!2810523))

(declare-fun m!2810525 () Bool)

(assert (=> b!2425091 m!2810525))

(declare-fun m!2810527 () Bool)

(assert (=> b!2425091 m!2810527))

(declare-fun m!2810529 () Bool)

(assert (=> b!2425091 m!2810529))

(declare-fun m!2810531 () Bool)

(assert (=> bm!148337 m!2810531))

(assert (=> b!2425083 m!2810503))

(assert (=> b!2425083 m!2810503))

(declare-fun m!2810533 () Bool)

(assert (=> b!2425083 m!2810533))

(assert (=> b!2425083 m!2810533))

(declare-fun m!2810535 () Bool)

(assert (=> b!2425083 m!2810535))

(declare-fun m!2810537 () Bool)

(assert (=> b!2425085 m!2810537))

(declare-fun m!2810539 () Bool)

(assert (=> b!2425085 m!2810539))

(declare-fun m!2810541 () Bool)

(assert (=> bm!148334 m!2810541))

(push 1)

(assert (not bm!148333))

(assert (not b!2425080))

(assert (not bm!148336))

(assert (not b!2425089))

(assert (not b!2425085))

(assert (not b!2425102))

(assert (not b!2425083))

(assert (not b!2425103))

(assert (not b!2425098))

(assert (not b!2425093))

(assert (not start!237530))

(assert (not b!2425091))

(assert (not bm!148335))

(assert (not b!2425079))

(assert (not b!2425097))

(assert (not bm!148334))

(assert (not b!2425099))

(assert (not b!2425081))

(assert (not b!2425092))

(assert (not b!2425087))

(assert (not b!2425095))

(assert (not bm!148337))

(assert (not bm!148332))

(assert tp_is_empty!11665)

(assert (not b!2425090))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2425197 () Bool)

(declare-fun e!1542637 () Option!5627)

(declare-fun e!1542633 () Option!5627)

(assert (=> b!2425197 (= e!1542637 e!1542633)))

(declare-fun c!386774 () Bool)

(assert (=> b!2425197 (= c!386774 (is-Nil!28392 s!9460))))

(declare-fun b!2425198 () Bool)

(declare-fun res!1030021 () Bool)

(declare-fun e!1542634 () Bool)

(assert (=> b!2425198 (=> (not res!1030021) (not e!1542634))))

(declare-fun lt!876173 () Option!5627)

(assert (=> b!2425198 (= res!1030021 (matchR!3243 EmptyExpr!7126 (_2!16557 (get!8742 lt!876173))))))

(declare-fun b!2425199 () Bool)

(declare-fun e!1542636 () Bool)

(assert (=> b!2425199 (= e!1542636 (matchR!3243 EmptyExpr!7126 s!9460))))

(declare-fun d!702436 () Bool)

(declare-fun e!1542635 () Bool)

(assert (=> d!702436 e!1542635))

(declare-fun res!1030019 () Bool)

(assert (=> d!702436 (=> res!1030019 e!1542635)))

(assert (=> d!702436 (= res!1030019 e!1542634)))

(declare-fun res!1030020 () Bool)

(assert (=> d!702436 (=> (not res!1030020) (not e!1542634))))

(assert (=> d!702436 (= res!1030020 (isDefined!4453 lt!876173))))

(assert (=> d!702436 (= lt!876173 e!1542637)))

(declare-fun c!386775 () Bool)

(assert (=> d!702436 (= c!386775 e!1542636)))

(declare-fun res!1030023 () Bool)

(assert (=> d!702436 (=> (not res!1030023) (not e!1542636))))

(assert (=> d!702436 (= res!1030023 (matchR!3243 lt!876111 Nil!28392))))

(assert (=> d!702436 (validRegex!2846 lt!876111)))

(assert (=> d!702436 (= (findConcatSeparation!735 lt!876111 EmptyExpr!7126 Nil!28392 s!9460 s!9460) lt!876173)))

(declare-fun b!2425200 () Bool)

(declare-fun lt!876174 () Unit!41615)

(declare-fun lt!876175 () Unit!41615)

(assert (=> b!2425200 (= lt!876174 lt!876175)))

(assert (=> b!2425200 (= (++!7047 (++!7047 Nil!28392 (Cons!28392 (h!33793 s!9460) Nil!28392)) (t!208467 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!673 (List!28490 C!14410 List!28490 List!28490) Unit!41615)

(assert (=> b!2425200 (= lt!876175 (lemmaMoveElementToOtherListKeepsConcatEq!673 Nil!28392 (h!33793 s!9460) (t!208467 s!9460) s!9460))))

(assert (=> b!2425200 (= e!1542633 (findConcatSeparation!735 lt!876111 EmptyExpr!7126 (++!7047 Nil!28392 (Cons!28392 (h!33793 s!9460) Nil!28392)) (t!208467 s!9460) s!9460))))

(declare-fun b!2425201 () Bool)

(assert (=> b!2425201 (= e!1542633 None!5626)))

(declare-fun b!2425202 () Bool)

(assert (=> b!2425202 (= e!1542634 (= (++!7047 (_1!16557 (get!8742 lt!876173)) (_2!16557 (get!8742 lt!876173))) s!9460))))

(declare-fun b!2425203 () Bool)

(assert (=> b!2425203 (= e!1542637 (Some!5626 (tuple2!28033 Nil!28392 s!9460)))))

(declare-fun b!2425204 () Bool)

(declare-fun res!1030022 () Bool)

(assert (=> b!2425204 (=> (not res!1030022) (not e!1542634))))

(assert (=> b!2425204 (= res!1030022 (matchR!3243 lt!876111 (_1!16557 (get!8742 lt!876173))))))

(declare-fun b!2425205 () Bool)

(assert (=> b!2425205 (= e!1542635 (not (isDefined!4453 lt!876173)))))

(assert (= (and d!702436 res!1030023) b!2425199))

(assert (= (and d!702436 c!386775) b!2425203))

(assert (= (and d!702436 (not c!386775)) b!2425197))

(assert (= (and b!2425197 c!386774) b!2425201))

(assert (= (and b!2425197 (not c!386774)) b!2425200))

(assert (= (and d!702436 res!1030020) b!2425204))

(assert (= (and b!2425204 res!1030022) b!2425198))

(assert (= (and b!2425198 res!1030021) b!2425202))

(assert (= (and d!702436 (not res!1030019)) b!2425205))

(declare-fun m!2810599 () Bool)

(assert (=> b!2425198 m!2810599))

(declare-fun m!2810601 () Bool)

(assert (=> b!2425198 m!2810601))

(declare-fun m!2810603 () Bool)

(assert (=> b!2425200 m!2810603))

(assert (=> b!2425200 m!2810603))

(declare-fun m!2810605 () Bool)

(assert (=> b!2425200 m!2810605))

(declare-fun m!2810607 () Bool)

(assert (=> b!2425200 m!2810607))

(assert (=> b!2425200 m!2810603))

(declare-fun m!2810609 () Bool)

(assert (=> b!2425200 m!2810609))

(assert (=> b!2425202 m!2810599))

(declare-fun m!2810611 () Bool)

(assert (=> b!2425202 m!2810611))

(declare-fun m!2810613 () Bool)

(assert (=> b!2425199 m!2810613))

(declare-fun m!2810615 () Bool)

(assert (=> b!2425205 m!2810615))

(assert (=> d!702436 m!2810615))

(declare-fun m!2810617 () Bool)

(assert (=> d!702436 m!2810617))

(declare-fun m!2810619 () Bool)

(assert (=> d!702436 m!2810619))

(assert (=> b!2425204 m!2810599))

(declare-fun m!2810621 () Bool)

(assert (=> b!2425204 m!2810621))

(assert (=> bm!148333 d!702436))

(declare-fun b!2425247 () Bool)

(assert (=> b!2425247 true))

(assert (=> b!2425247 true))

(declare-fun bs!463883 () Bool)

(declare-fun b!2425251 () Bool)

(assert (= bs!463883 (and b!2425251 b!2425247)))

(declare-fun lambda!91347 () Int)

(declare-fun lambda!91346 () Int)

(assert (=> bs!463883 (not (= lambda!91347 lambda!91346))))

(assert (=> b!2425251 true))

(assert (=> b!2425251 true))

(declare-fun call!148366 () Bool)

(declare-fun c!386785 () Bool)

(declare-fun bm!148360 () Bool)

(declare-fun Exists!1166 (Int) Bool)

(assert (=> bm!148360 (= call!148366 (Exists!1166 (ite c!386785 lambda!91346 lambda!91347)))))

(declare-fun bm!148361 () Bool)

(declare-fun call!148365 () Bool)

(assert (=> bm!148361 (= call!148365 (isEmpty!16425 s!9460))))

(declare-fun b!2425241 () Bool)

(declare-fun e!1542663 () Bool)

(declare-fun e!1542661 () Bool)

(assert (=> b!2425241 (= e!1542663 e!1542661)))

(declare-fun res!1030043 () Bool)

(assert (=> b!2425241 (= res!1030043 (matchRSpec!975 (regOne!14765 r!13927) s!9460))))

(assert (=> b!2425241 (=> res!1030043 e!1542661)))

(declare-fun b!2425242 () Bool)

(declare-fun e!1542665 () Bool)

(assert (=> b!2425242 (= e!1542663 e!1542665)))

(assert (=> b!2425242 (= c!386785 (is-Star!7126 r!13927))))

(declare-fun b!2425243 () Bool)

(declare-fun e!1542660 () Bool)

(assert (=> b!2425243 (= e!1542660 (= s!9460 (Cons!28392 (c!386759 r!13927) Nil!28392)))))

(declare-fun b!2425244 () Bool)

(assert (=> b!2425244 (= e!1542661 (matchRSpec!975 (regTwo!14765 r!13927) s!9460))))

(declare-fun b!2425245 () Bool)

(declare-fun e!1542659 () Bool)

(assert (=> b!2425245 (= e!1542659 call!148365)))

(declare-fun d!702440 () Bool)

(declare-fun c!386787 () Bool)

(assert (=> d!702440 (= c!386787 (is-EmptyExpr!7126 r!13927))))

(assert (=> d!702440 (= (matchRSpec!975 r!13927 s!9460) e!1542659)))

(declare-fun b!2425246 () Bool)

(declare-fun c!386786 () Bool)

(assert (=> b!2425246 (= c!386786 (is-ElementMatch!7126 r!13927))))

(declare-fun e!1542662 () Bool)

(assert (=> b!2425246 (= e!1542662 e!1542660)))

(declare-fun e!1542664 () Bool)

(assert (=> b!2425247 (= e!1542664 call!148366)))

(declare-fun b!2425248 () Bool)

(declare-fun res!1030045 () Bool)

(assert (=> b!2425248 (=> res!1030045 e!1542664)))

(assert (=> b!2425248 (= res!1030045 call!148365)))

(assert (=> b!2425248 (= e!1542665 e!1542664)))

(declare-fun b!2425249 () Bool)

(declare-fun c!386784 () Bool)

(assert (=> b!2425249 (= c!386784 (is-Union!7126 r!13927))))

(assert (=> b!2425249 (= e!1542660 e!1542663)))

(declare-fun b!2425250 () Bool)

(assert (=> b!2425250 (= e!1542659 e!1542662)))

(declare-fun res!1030044 () Bool)

(assert (=> b!2425250 (= res!1030044 (not (is-EmptyLang!7126 r!13927)))))

(assert (=> b!2425250 (=> (not res!1030044) (not e!1542662))))

(assert (=> b!2425251 (= e!1542665 call!148366)))

(assert (= (and d!702440 c!386787) b!2425245))

(assert (= (and d!702440 (not c!386787)) b!2425250))

(assert (= (and b!2425250 res!1030044) b!2425246))

(assert (= (and b!2425246 c!386786) b!2425243))

(assert (= (and b!2425246 (not c!386786)) b!2425249))

(assert (= (and b!2425249 c!386784) b!2425241))

(assert (= (and b!2425249 (not c!386784)) b!2425242))

(assert (= (and b!2425241 (not res!1030043)) b!2425244))

(assert (= (and b!2425242 c!386785) b!2425248))

(assert (= (and b!2425242 (not c!386785)) b!2425251))

(assert (= (and b!2425248 (not res!1030045)) b!2425247))

(assert (= (or b!2425247 b!2425251) bm!148360))

(assert (= (or b!2425245 b!2425248) bm!148361))

(declare-fun m!2810633 () Bool)

(assert (=> bm!148360 m!2810633))

(assert (=> bm!148361 m!2810517))

(declare-fun m!2810635 () Bool)

(assert (=> b!2425241 m!2810635))

(declare-fun m!2810637 () Bool)

(assert (=> b!2425244 m!2810637))

(assert (=> b!2425093 d!702440))

(declare-fun b!2425312 () Bool)

(declare-fun res!1030081 () Bool)

(declare-fun e!1542697 () Bool)

(assert (=> b!2425312 (=> res!1030081 e!1542697)))

(declare-fun tail!3738 (List!28490) List!28490)

(assert (=> b!2425312 (= res!1030081 (not (isEmpty!16425 (tail!3738 s!9460))))))

(declare-fun b!2425313 () Bool)

(declare-fun head!5466 (List!28490) C!14410)

(assert (=> b!2425313 (= e!1542697 (not (= (head!5466 s!9460) (c!386759 r!13927))))))

(declare-fun b!2425315 () Bool)

(declare-fun e!1542695 () Bool)

(declare-fun e!1542698 () Bool)

(assert (=> b!2425315 (= e!1542695 e!1542698)))

(declare-fun c!386800 () Bool)

(assert (=> b!2425315 (= c!386800 (is-EmptyLang!7126 r!13927))))

(declare-fun b!2425316 () Bool)

(declare-fun e!1542700 () Bool)

(declare-fun derivativeStep!1818 (Regex!7126 C!14410) Regex!7126)

(assert (=> b!2425316 (= e!1542700 (matchR!3243 (derivativeStep!1818 r!13927 (head!5466 s!9460)) (tail!3738 s!9460)))))

(declare-fun b!2425317 () Bool)

(declare-fun e!1542694 () Bool)

(assert (=> b!2425317 (= e!1542694 e!1542697)))

(declare-fun res!1030082 () Bool)

(assert (=> b!2425317 (=> res!1030082 e!1542697)))

(declare-fun call!148371 () Bool)

(assert (=> b!2425317 (= res!1030082 call!148371)))

(declare-fun b!2425318 () Bool)

(declare-fun res!1030079 () Bool)

(declare-fun e!1542699 () Bool)

(assert (=> b!2425318 (=> res!1030079 e!1542699)))

(declare-fun e!1542696 () Bool)

(assert (=> b!2425318 (= res!1030079 e!1542696)))

(declare-fun res!1030085 () Bool)

(assert (=> b!2425318 (=> (not res!1030085) (not e!1542696))))

(declare-fun lt!876183 () Bool)

(assert (=> b!2425318 (= res!1030085 lt!876183)))

(declare-fun b!2425319 () Bool)

(declare-fun res!1030080 () Bool)

(assert (=> b!2425319 (=> res!1030080 e!1542699)))

(assert (=> b!2425319 (= res!1030080 (not (is-ElementMatch!7126 r!13927)))))

(assert (=> b!2425319 (= e!1542698 e!1542699)))

(declare-fun b!2425320 () Bool)

(declare-fun res!1030083 () Bool)

(assert (=> b!2425320 (=> (not res!1030083) (not e!1542696))))

(assert (=> b!2425320 (= res!1030083 (not call!148371))))

(declare-fun bm!148366 () Bool)

(assert (=> bm!148366 (= call!148371 (isEmpty!16425 s!9460))))

(declare-fun b!2425321 () Bool)

(declare-fun res!1030078 () Bool)

(assert (=> b!2425321 (=> (not res!1030078) (not e!1542696))))

(assert (=> b!2425321 (= res!1030078 (isEmpty!16425 (tail!3738 s!9460)))))

(declare-fun b!2425322 () Bool)

(assert (=> b!2425322 (= e!1542698 (not lt!876183))))

(declare-fun b!2425323 () Bool)

(assert (=> b!2425323 (= e!1542695 (= lt!876183 call!148371))))

(declare-fun b!2425314 () Bool)

(declare-fun nullable!2161 (Regex!7126) Bool)

(assert (=> b!2425314 (= e!1542700 (nullable!2161 r!13927))))

(declare-fun d!702444 () Bool)

(assert (=> d!702444 e!1542695))

(declare-fun c!386802 () Bool)

(assert (=> d!702444 (= c!386802 (is-EmptyExpr!7126 r!13927))))

(assert (=> d!702444 (= lt!876183 e!1542700)))

(declare-fun c!386801 () Bool)

(assert (=> d!702444 (= c!386801 (isEmpty!16425 s!9460))))

(assert (=> d!702444 (validRegex!2846 r!13927)))

(assert (=> d!702444 (= (matchR!3243 r!13927 s!9460) lt!876183)))

(declare-fun b!2425324 () Bool)

(assert (=> b!2425324 (= e!1542696 (= (head!5466 s!9460) (c!386759 r!13927)))))

(declare-fun b!2425325 () Bool)

(assert (=> b!2425325 (= e!1542699 e!1542694)))

(declare-fun res!1030084 () Bool)

(assert (=> b!2425325 (=> (not res!1030084) (not e!1542694))))

(assert (=> b!2425325 (= res!1030084 (not lt!876183))))

(assert (= (and d!702444 c!386801) b!2425314))

(assert (= (and d!702444 (not c!386801)) b!2425316))

(assert (= (and d!702444 c!386802) b!2425323))

(assert (= (and d!702444 (not c!386802)) b!2425315))

(assert (= (and b!2425315 c!386800) b!2425322))

(assert (= (and b!2425315 (not c!386800)) b!2425319))

(assert (= (and b!2425319 (not res!1030080)) b!2425318))

(assert (= (and b!2425318 res!1030085) b!2425320))

(assert (= (and b!2425320 res!1030083) b!2425321))

(assert (= (and b!2425321 res!1030078) b!2425324))

(assert (= (and b!2425318 (not res!1030079)) b!2425325))

(assert (= (and b!2425325 res!1030084) b!2425317))

(assert (= (and b!2425317 (not res!1030082)) b!2425312))

(assert (= (and b!2425312 (not res!1030081)) b!2425313))

(assert (= (or b!2425323 b!2425317 b!2425320) bm!148366))

(assert (=> bm!148366 m!2810517))

(declare-fun m!2810639 () Bool)

(assert (=> b!2425316 m!2810639))

(assert (=> b!2425316 m!2810639))

(declare-fun m!2810641 () Bool)

(assert (=> b!2425316 m!2810641))

(declare-fun m!2810643 () Bool)

(assert (=> b!2425316 m!2810643))

(assert (=> b!2425316 m!2810641))

(assert (=> b!2425316 m!2810643))

(declare-fun m!2810645 () Bool)

(assert (=> b!2425316 m!2810645))

(assert (=> d!702444 m!2810517))

(declare-fun m!2810647 () Bool)

(assert (=> d!702444 m!2810647))

(assert (=> b!2425313 m!2810639))

(assert (=> b!2425324 m!2810639))

(assert (=> b!2425312 m!2810643))

(assert (=> b!2425312 m!2810643))

(declare-fun m!2810649 () Bool)

(assert (=> b!2425312 m!2810649))

(declare-fun m!2810651 () Bool)

(assert (=> b!2425314 m!2810651))

(assert (=> b!2425321 m!2810643))

(assert (=> b!2425321 m!2810643))

(assert (=> b!2425321 m!2810649))

(assert (=> b!2425093 d!702444))

(declare-fun d!702446 () Bool)

(assert (=> d!702446 (= (matchR!3243 r!13927 s!9460) (matchRSpec!975 r!13927 s!9460))))

(declare-fun lt!876187 () Unit!41615)

(declare-fun choose!14364 (Regex!7126 List!28490) Unit!41615)

(assert (=> d!702446 (= lt!876187 (choose!14364 r!13927 s!9460))))

(assert (=> d!702446 (validRegex!2846 r!13927)))

(assert (=> d!702446 (= (mainMatchTheorem!975 r!13927 s!9460) lt!876187)))

(declare-fun bs!463884 () Bool)

(assert (= bs!463884 d!702446))

(assert (=> bs!463884 m!2810489))

(assert (=> bs!463884 m!2810487))

(declare-fun m!2810653 () Bool)

(assert (=> bs!463884 m!2810653))

(assert (=> bs!463884 m!2810647))

(assert (=> b!2425093 d!702446))

(declare-fun d!702448 () Bool)

(assert (=> d!702448 (matchR!3243 (Concat!11762 lt!876111 EmptyExpr!7126) (++!7047 s!9460 Nil!28392))))

(declare-fun lt!876190 () Unit!41615)

(declare-fun choose!14365 (Regex!7126 Regex!7126 List!28490 List!28490) Unit!41615)

(assert (=> d!702448 (= lt!876190 (choose!14365 lt!876111 EmptyExpr!7126 s!9460 Nil!28392))))

(declare-fun e!1542710 () Bool)

(assert (=> d!702448 e!1542710))

(declare-fun res!1030096 () Bool)

(assert (=> d!702448 (=> (not res!1030096) (not e!1542710))))

(assert (=> d!702448 (= res!1030096 (validRegex!2846 lt!876111))))

(assert (=> d!702448 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!101 lt!876111 EmptyExpr!7126 s!9460 Nil!28392) lt!876190)))

(declare-fun b!2425342 () Bool)

(assert (=> b!2425342 (= e!1542710 (validRegex!2846 EmptyExpr!7126))))

(assert (= (and d!702448 res!1030096) b!2425342))

(declare-fun m!2810671 () Bool)

(assert (=> d!702448 m!2810671))

(assert (=> d!702448 m!2810671))

(declare-fun m!2810673 () Bool)

(assert (=> d!702448 m!2810673))

(declare-fun m!2810675 () Bool)

(assert (=> d!702448 m!2810675))

(assert (=> d!702448 m!2810619))

(declare-fun m!2810677 () Bool)

(assert (=> b!2425342 m!2810677))

(assert (=> b!2425091 d!702448))

(declare-fun b!2425343 () Bool)

(declare-fun res!1030100 () Bool)

(declare-fun e!1542714 () Bool)

(assert (=> b!2425343 (=> res!1030100 e!1542714)))

(assert (=> b!2425343 (= res!1030100 (not (isEmpty!16425 (tail!3738 call!148342))))))

(declare-fun b!2425344 () Bool)

(assert (=> b!2425344 (= e!1542714 (not (= (head!5466 call!148342) (c!386759 lt!876114))))))

(declare-fun b!2425346 () Bool)

(declare-fun e!1542712 () Bool)

(declare-fun e!1542715 () Bool)

(assert (=> b!2425346 (= e!1542712 e!1542715)))

(declare-fun c!386806 () Bool)

(assert (=> b!2425346 (= c!386806 (is-EmptyLang!7126 lt!876114))))

(declare-fun b!2425347 () Bool)

(declare-fun e!1542717 () Bool)

(assert (=> b!2425347 (= e!1542717 (matchR!3243 (derivativeStep!1818 lt!876114 (head!5466 call!148342)) (tail!3738 call!148342)))))

(declare-fun b!2425348 () Bool)

(declare-fun e!1542711 () Bool)

(assert (=> b!2425348 (= e!1542711 e!1542714)))

(declare-fun res!1030101 () Bool)

(assert (=> b!2425348 (=> res!1030101 e!1542714)))

(declare-fun call!148373 () Bool)

(assert (=> b!2425348 (= res!1030101 call!148373)))

(declare-fun b!2425349 () Bool)

(declare-fun res!1030098 () Bool)

(declare-fun e!1542716 () Bool)

(assert (=> b!2425349 (=> res!1030098 e!1542716)))

(declare-fun e!1542713 () Bool)

(assert (=> b!2425349 (= res!1030098 e!1542713)))

(declare-fun res!1030104 () Bool)

(assert (=> b!2425349 (=> (not res!1030104) (not e!1542713))))

(declare-fun lt!876191 () Bool)

(assert (=> b!2425349 (= res!1030104 lt!876191)))

(declare-fun b!2425350 () Bool)

(declare-fun res!1030099 () Bool)

(assert (=> b!2425350 (=> res!1030099 e!1542716)))

(assert (=> b!2425350 (= res!1030099 (not (is-ElementMatch!7126 lt!876114)))))

(assert (=> b!2425350 (= e!1542715 e!1542716)))

(declare-fun b!2425351 () Bool)

(declare-fun res!1030102 () Bool)

(assert (=> b!2425351 (=> (not res!1030102) (not e!1542713))))

(assert (=> b!2425351 (= res!1030102 (not call!148373))))

(declare-fun bm!148368 () Bool)

(assert (=> bm!148368 (= call!148373 (isEmpty!16425 call!148342))))

(declare-fun b!2425352 () Bool)

(declare-fun res!1030097 () Bool)

(assert (=> b!2425352 (=> (not res!1030097) (not e!1542713))))

(assert (=> b!2425352 (= res!1030097 (isEmpty!16425 (tail!3738 call!148342)))))

(declare-fun b!2425353 () Bool)

(assert (=> b!2425353 (= e!1542715 (not lt!876191))))

(declare-fun b!2425354 () Bool)

(assert (=> b!2425354 (= e!1542712 (= lt!876191 call!148373))))

(declare-fun b!2425345 () Bool)

(assert (=> b!2425345 (= e!1542717 (nullable!2161 lt!876114))))

(declare-fun d!702452 () Bool)

(assert (=> d!702452 e!1542712))

(declare-fun c!386808 () Bool)

(assert (=> d!702452 (= c!386808 (is-EmptyExpr!7126 lt!876114))))

(assert (=> d!702452 (= lt!876191 e!1542717)))

(declare-fun c!386807 () Bool)

(assert (=> d!702452 (= c!386807 (isEmpty!16425 call!148342))))

(assert (=> d!702452 (validRegex!2846 lt!876114)))

(assert (=> d!702452 (= (matchR!3243 lt!876114 call!148342) lt!876191)))

(declare-fun b!2425355 () Bool)

(assert (=> b!2425355 (= e!1542713 (= (head!5466 call!148342) (c!386759 lt!876114)))))

(declare-fun b!2425356 () Bool)

(assert (=> b!2425356 (= e!1542716 e!1542711)))

(declare-fun res!1030103 () Bool)

(assert (=> b!2425356 (=> (not res!1030103) (not e!1542711))))

(assert (=> b!2425356 (= res!1030103 (not lt!876191))))

(assert (= (and d!702452 c!386807) b!2425345))

(assert (= (and d!702452 (not c!386807)) b!2425347))

(assert (= (and d!702452 c!386808) b!2425354))

(assert (= (and d!702452 (not c!386808)) b!2425346))

(assert (= (and b!2425346 c!386806) b!2425353))

(assert (= (and b!2425346 (not c!386806)) b!2425350))

(assert (= (and b!2425350 (not res!1030099)) b!2425349))

(assert (= (and b!2425349 res!1030104) b!2425351))

(assert (= (and b!2425351 res!1030102) b!2425352))

(assert (= (and b!2425352 res!1030097) b!2425355))

(assert (= (and b!2425349 (not res!1030098)) b!2425356))

(assert (= (and b!2425356 res!1030103) b!2425348))

(assert (= (and b!2425348 (not res!1030101)) b!2425343))

(assert (= (and b!2425343 (not res!1030100)) b!2425344))

(assert (= (or b!2425354 b!2425348 b!2425351) bm!148368))

(declare-fun m!2810679 () Bool)

(assert (=> bm!148368 m!2810679))

(declare-fun m!2810681 () Bool)

(assert (=> b!2425347 m!2810681))

(assert (=> b!2425347 m!2810681))

(declare-fun m!2810683 () Bool)

(assert (=> b!2425347 m!2810683))

(declare-fun m!2810685 () Bool)

(assert (=> b!2425347 m!2810685))

(assert (=> b!2425347 m!2810683))

(assert (=> b!2425347 m!2810685))

(declare-fun m!2810687 () Bool)

(assert (=> b!2425347 m!2810687))

(assert (=> d!702452 m!2810679))

(declare-fun m!2810689 () Bool)

(assert (=> d!702452 m!2810689))

(assert (=> b!2425344 m!2810681))

(assert (=> b!2425355 m!2810681))

(assert (=> b!2425343 m!2810685))

(assert (=> b!2425343 m!2810685))

(declare-fun m!2810691 () Bool)

(assert (=> b!2425343 m!2810691))

(declare-fun m!2810693 () Bool)

(assert (=> b!2425345 m!2810693))

(assert (=> b!2425352 m!2810685))

(assert (=> b!2425352 m!2810685))

(assert (=> b!2425352 m!2810691))

(assert (=> b!2425091 d!702452))

(declare-fun d!702454 () Bool)

(assert (=> d!702454 (isDefined!4453 (findConcatSeparation!735 lt!876111 EmptyExpr!7126 Nil!28392 s!9460 s!9460))))

(declare-fun lt!876194 () Unit!41615)

(declare-fun choose!14366 (Regex!7126 Regex!7126 List!28490) Unit!41615)

(assert (=> d!702454 (= lt!876194 (choose!14366 lt!876111 EmptyExpr!7126 s!9460))))

(assert (=> d!702454 (validRegex!2846 lt!876111)))

(assert (=> d!702454 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!75 lt!876111 EmptyExpr!7126 s!9460) lt!876194)))

(declare-fun bs!463885 () Bool)

(assert (= bs!463885 d!702454))

(assert (=> bs!463885 m!2810499))

(assert (=> bs!463885 m!2810499))

(declare-fun m!2810695 () Bool)

(assert (=> bs!463885 m!2810695))

(declare-fun m!2810697 () Bool)

(assert (=> bs!463885 m!2810697))

(assert (=> bs!463885 m!2810619))

(assert (=> b!2425091 d!702454))

(declare-fun d!702456 () Bool)

(assert (=> d!702456 (= (isEmpty!16425 s!9460) (is-Nil!28392 s!9460))))

(assert (=> b!2425095 d!702456))

(declare-fun d!702458 () Bool)

(assert (=> d!702458 (= (isEmpty!16424 lt!876119) (is-Nil!28393 lt!876119))))

(assert (=> b!2425085 d!702458))

(declare-fun d!702460 () Bool)

(assert (=> d!702460 (= (tail!3736 l!9164) (t!208468 l!9164))))

(assert (=> b!2425085 d!702460))

(declare-fun d!702462 () Bool)

(declare-fun isEmpty!16428 (Option!5627) Bool)

(assert (=> d!702462 (= (isDefined!4453 (ite c!386757 call!148341 lt!876108)) (not (isEmpty!16428 (ite c!386757 call!148341 lt!876108))))))

(declare-fun bs!463886 () Bool)

(assert (= bs!463886 d!702462))

(declare-fun m!2810699 () Bool)

(assert (=> bs!463886 m!2810699))

(assert (=> bm!148336 d!702462))

(declare-fun bs!463888 () Bool)

(declare-fun d!702464 () Bool)

(assert (= bs!463888 (and d!702464 start!237530)))

(declare-fun lambda!91350 () Int)

(assert (=> bs!463888 (= lambda!91350 lambda!91338)))

(declare-fun b!2425383 () Bool)

(declare-fun e!1542738 () Bool)

(declare-fun lt!876200 () Regex!7126)

(assert (=> b!2425383 (= e!1542738 (= lt!876200 (head!5464 l!9164)))))

(declare-fun b!2425384 () Bool)

(declare-fun e!1542741 () Regex!7126)

(declare-fun e!1542737 () Regex!7126)

(assert (=> b!2425384 (= e!1542741 e!1542737)))

(declare-fun c!386819 () Bool)

(assert (=> b!2425384 (= c!386819 (is-Cons!28393 l!9164))))

(declare-fun e!1542740 () Bool)

(assert (=> d!702464 e!1542740))

(declare-fun res!1030115 () Bool)

(assert (=> d!702464 (=> (not res!1030115) (not e!1542740))))

(assert (=> d!702464 (= res!1030115 (validRegex!2846 lt!876200))))

(assert (=> d!702464 (= lt!876200 e!1542741)))

(declare-fun c!386820 () Bool)

(declare-fun e!1542739 () Bool)

(assert (=> d!702464 (= c!386820 e!1542739)))

(declare-fun res!1030116 () Bool)

(assert (=> d!702464 (=> (not res!1030116) (not e!1542739))))

(assert (=> d!702464 (= res!1030116 (is-Cons!28393 l!9164))))

(assert (=> d!702464 (forall!5760 l!9164 lambda!91350)))

(assert (=> d!702464 (= (generalisedConcat!227 l!9164) lt!876200)))

(declare-fun b!2425385 () Bool)

(assert (=> b!2425385 (= e!1542739 (isEmpty!16424 (t!208468 l!9164)))))

(declare-fun b!2425386 () Bool)

(assert (=> b!2425386 (= e!1542737 (Concat!11762 (h!33794 l!9164) (generalisedConcat!227 (t!208468 l!9164))))))

(declare-fun b!2425387 () Bool)

(declare-fun e!1542736 () Bool)

(assert (=> b!2425387 (= e!1542736 e!1542738)))

(declare-fun c!386817 () Bool)

(assert (=> b!2425387 (= c!386817 (isEmpty!16424 (tail!3736 l!9164)))))

(declare-fun b!2425388 () Bool)

(assert (=> b!2425388 (= e!1542737 EmptyExpr!7126)))

(declare-fun b!2425389 () Bool)

(declare-fun isEmptyExpr!181 (Regex!7126) Bool)

(assert (=> b!2425389 (= e!1542736 (isEmptyExpr!181 lt!876200))))

(declare-fun b!2425390 () Bool)

(declare-fun isConcat!181 (Regex!7126) Bool)

(assert (=> b!2425390 (= e!1542738 (isConcat!181 lt!876200))))

(declare-fun b!2425391 () Bool)

(assert (=> b!2425391 (= e!1542740 e!1542736)))

(declare-fun c!386818 () Bool)

(assert (=> b!2425391 (= c!386818 (isEmpty!16424 l!9164))))

(declare-fun b!2425392 () Bool)

(assert (=> b!2425392 (= e!1542741 (h!33794 l!9164))))

(assert (= (and d!702464 res!1030116) b!2425385))

(assert (= (and d!702464 c!386820) b!2425392))

(assert (= (and d!702464 (not c!386820)) b!2425384))

(assert (= (and b!2425384 c!386819) b!2425386))

(assert (= (and b!2425384 (not c!386819)) b!2425388))

(assert (= (and d!702464 res!1030115) b!2425391))

(assert (= (and b!2425391 c!386818) b!2425389))

(assert (= (and b!2425391 (not c!386818)) b!2425387))

(assert (= (and b!2425387 c!386817) b!2425383))

(assert (= (and b!2425387 (not c!386817)) b!2425390))

(assert (=> b!2425387 m!2810539))

(assert (=> b!2425387 m!2810539))

(declare-fun m!2810709 () Bool)

(assert (=> b!2425387 m!2810709))

(declare-fun m!2810711 () Bool)

(assert (=> b!2425389 m!2810711))

(assert (=> b!2425383 m!2810513))

(declare-fun m!2810713 () Bool)

(assert (=> b!2425390 m!2810713))

(declare-fun m!2810715 () Bool)

(assert (=> d!702464 m!2810715))

(declare-fun m!2810717 () Bool)

(assert (=> d!702464 m!2810717))

(assert (=> b!2425386 m!2810503))

(assert (=> b!2425391 m!2810497))

(declare-fun m!2810719 () Bool)

(assert (=> b!2425385 m!2810719))

(assert (=> b!2425103 d!702464))

(declare-fun b!2425393 () Bool)

(declare-fun res!1030120 () Bool)

(declare-fun e!1542745 () Bool)

(assert (=> b!2425393 (=> res!1030120 e!1542745)))

(assert (=> b!2425393 (= res!1030120 (not (isEmpty!16425 (tail!3738 s!9460))))))

(declare-fun b!2425394 () Bool)

(assert (=> b!2425394 (= e!1542745 (not (= (head!5466 s!9460) (c!386759 lt!876111))))))

(declare-fun b!2425396 () Bool)

(declare-fun e!1542743 () Bool)

(declare-fun e!1542746 () Bool)

(assert (=> b!2425396 (= e!1542743 e!1542746)))

(declare-fun c!386821 () Bool)

(assert (=> b!2425396 (= c!386821 (is-EmptyLang!7126 lt!876111))))

(declare-fun b!2425397 () Bool)

(declare-fun e!1542748 () Bool)

(assert (=> b!2425397 (= e!1542748 (matchR!3243 (derivativeStep!1818 lt!876111 (head!5466 s!9460)) (tail!3738 s!9460)))))

(declare-fun b!2425398 () Bool)

(declare-fun e!1542742 () Bool)

(assert (=> b!2425398 (= e!1542742 e!1542745)))

(declare-fun res!1030121 () Bool)

(assert (=> b!2425398 (=> res!1030121 e!1542745)))

(declare-fun call!148374 () Bool)

(assert (=> b!2425398 (= res!1030121 call!148374)))

(declare-fun b!2425399 () Bool)

(declare-fun res!1030118 () Bool)

(declare-fun e!1542747 () Bool)

(assert (=> b!2425399 (=> res!1030118 e!1542747)))

(declare-fun e!1542744 () Bool)

(assert (=> b!2425399 (= res!1030118 e!1542744)))

(declare-fun res!1030124 () Bool)

(assert (=> b!2425399 (=> (not res!1030124) (not e!1542744))))

(declare-fun lt!876201 () Bool)

(assert (=> b!2425399 (= res!1030124 lt!876201)))

(declare-fun b!2425400 () Bool)

(declare-fun res!1030119 () Bool)

(assert (=> b!2425400 (=> res!1030119 e!1542747)))

(assert (=> b!2425400 (= res!1030119 (not (is-ElementMatch!7126 lt!876111)))))

(assert (=> b!2425400 (= e!1542746 e!1542747)))

(declare-fun b!2425401 () Bool)

(declare-fun res!1030122 () Bool)

(assert (=> b!2425401 (=> (not res!1030122) (not e!1542744))))

(assert (=> b!2425401 (= res!1030122 (not call!148374))))

(declare-fun bm!148369 () Bool)

(assert (=> bm!148369 (= call!148374 (isEmpty!16425 s!9460))))

(declare-fun b!2425402 () Bool)

(declare-fun res!1030117 () Bool)

(assert (=> b!2425402 (=> (not res!1030117) (not e!1542744))))

(assert (=> b!2425402 (= res!1030117 (isEmpty!16425 (tail!3738 s!9460)))))

(declare-fun b!2425403 () Bool)

(assert (=> b!2425403 (= e!1542746 (not lt!876201))))

(declare-fun b!2425404 () Bool)

(assert (=> b!2425404 (= e!1542743 (= lt!876201 call!148374))))

(declare-fun b!2425395 () Bool)

(assert (=> b!2425395 (= e!1542748 (nullable!2161 lt!876111))))

(declare-fun d!702472 () Bool)

(assert (=> d!702472 e!1542743))

(declare-fun c!386823 () Bool)

(assert (=> d!702472 (= c!386823 (is-EmptyExpr!7126 lt!876111))))

(assert (=> d!702472 (= lt!876201 e!1542748)))

(declare-fun c!386822 () Bool)

(assert (=> d!702472 (= c!386822 (isEmpty!16425 s!9460))))

(assert (=> d!702472 (validRegex!2846 lt!876111)))

(assert (=> d!702472 (= (matchR!3243 lt!876111 s!9460) lt!876201)))

(declare-fun b!2425405 () Bool)

(assert (=> b!2425405 (= e!1542744 (= (head!5466 s!9460) (c!386759 lt!876111)))))

(declare-fun b!2425406 () Bool)

(assert (=> b!2425406 (= e!1542747 e!1542742)))

(declare-fun res!1030123 () Bool)

(assert (=> b!2425406 (=> (not res!1030123) (not e!1542742))))

(assert (=> b!2425406 (= res!1030123 (not lt!876201))))

(assert (= (and d!702472 c!386822) b!2425395))

(assert (= (and d!702472 (not c!386822)) b!2425397))

(assert (= (and d!702472 c!386823) b!2425404))

(assert (= (and d!702472 (not c!386823)) b!2425396))

(assert (= (and b!2425396 c!386821) b!2425403))

(assert (= (and b!2425396 (not c!386821)) b!2425400))

(assert (= (and b!2425400 (not res!1030119)) b!2425399))

(assert (= (and b!2425399 res!1030124) b!2425401))

(assert (= (and b!2425401 res!1030122) b!2425402))

(assert (= (and b!2425402 res!1030117) b!2425405))

(assert (= (and b!2425399 (not res!1030118)) b!2425406))

(assert (= (and b!2425406 res!1030123) b!2425398))

(assert (= (and b!2425398 (not res!1030121)) b!2425393))

(assert (= (and b!2425393 (not res!1030120)) b!2425394))

(assert (= (or b!2425404 b!2425398 b!2425401) bm!148369))

(assert (=> bm!148369 m!2810517))

(assert (=> b!2425397 m!2810639))

(assert (=> b!2425397 m!2810639))

(declare-fun m!2810721 () Bool)

(assert (=> b!2425397 m!2810721))

(assert (=> b!2425397 m!2810643))

(assert (=> b!2425397 m!2810721))

(assert (=> b!2425397 m!2810643))

(declare-fun m!2810723 () Bool)

(assert (=> b!2425397 m!2810723))

(assert (=> d!702472 m!2810517))

(assert (=> d!702472 m!2810619))

(assert (=> b!2425394 m!2810639))

(assert (=> b!2425405 m!2810639))

(assert (=> b!2425393 m!2810643))

(assert (=> b!2425393 m!2810643))

(assert (=> b!2425393 m!2810649))

(declare-fun m!2810725 () Bool)

(assert (=> b!2425395 m!2810725))

(assert (=> b!2425402 m!2810643))

(assert (=> b!2425402 m!2810643))

(assert (=> b!2425402 m!2810649))

(assert (=> b!2425089 d!702472))

(declare-fun d!702474 () Bool)

(assert (=> d!702474 (= (head!5464 l!9164) (h!33794 l!9164))))

(assert (=> b!2425089 d!702474))

(declare-fun d!702476 () Bool)

(assert (=> d!702476 (matchR!3243 (Concat!11762 lt!876111 EmptyExpr!7126) (++!7047 (_1!16557 lt!876115) (_2!16557 lt!876115)))))

(declare-fun lt!876204 () Unit!41615)

(declare-fun choose!14367 (Regex!7126 Regex!7126 List!28490 List!28490 List!28490) Unit!41615)

(assert (=> d!702476 (= lt!876204 (choose!14367 lt!876111 EmptyExpr!7126 (_1!16557 lt!876115) (_2!16557 lt!876115) s!9460))))

(assert (=> d!702476 (validRegex!2846 lt!876111)))

(assert (=> d!702476 (= (lemmaFindSeparationIsDefinedThenConcatMatches!75 lt!876111 EmptyExpr!7126 (_1!16557 lt!876115) (_2!16557 lt!876115) s!9460) lt!876204)))

(declare-fun bs!463889 () Bool)

(assert (= bs!463889 d!702476))

(declare-fun m!2810727 () Bool)

(assert (=> bs!463889 m!2810727))

(assert (=> bs!463889 m!2810727))

(declare-fun m!2810729 () Bool)

(assert (=> bs!463889 m!2810729))

(declare-fun m!2810731 () Bool)

(assert (=> bs!463889 m!2810731))

(assert (=> bs!463889 m!2810619))

(assert (=> b!2425080 d!702476))

(declare-fun d!702478 () Bool)

(assert (=> d!702478 (= (get!8742 lt!876108) (v!31034 lt!876108))))

(assert (=> b!2425080 d!702478))

(declare-fun d!702480 () Bool)

(assert (=> d!702480 (= (isDefined!4453 (ite c!386757 call!148339 call!148341)) (not (isEmpty!16428 (ite c!386757 call!148339 call!148341))))))

(declare-fun bs!463890 () Bool)

(assert (= bs!463890 d!702480))

(declare-fun m!2810733 () Bool)

(assert (=> bs!463890 m!2810733))

(assert (=> bm!148334 d!702480))

(declare-fun d!702482 () Bool)

(declare-fun res!1030129 () Bool)

(declare-fun e!1542753 () Bool)

(assert (=> d!702482 (=> res!1030129 e!1542753)))

(assert (=> d!702482 (= res!1030129 (is-Nil!28393 l!9164))))

(assert (=> d!702482 (= (forall!5760 l!9164 lambda!91338) e!1542753)))

(declare-fun b!2425411 () Bool)

(declare-fun e!1542754 () Bool)

(assert (=> b!2425411 (= e!1542753 e!1542754)))

(declare-fun res!1030130 () Bool)

(assert (=> b!2425411 (=> (not res!1030130) (not e!1542754))))

(declare-fun dynLambda!12220 (Int Regex!7126) Bool)

(assert (=> b!2425411 (= res!1030130 (dynLambda!12220 lambda!91338 (h!33794 l!9164)))))

(declare-fun b!2425412 () Bool)

(assert (=> b!2425412 (= e!1542754 (forall!5760 (t!208468 l!9164) lambda!91338))))

(assert (= (and d!702482 (not res!1030129)) b!2425411))

(assert (= (and b!2425411 res!1030130) b!2425412))

(declare-fun b_lambda!74693 () Bool)

(assert (=> (not b_lambda!74693) (not b!2425411)))

(declare-fun m!2810735 () Bool)

(assert (=> b!2425411 m!2810735))

(declare-fun m!2810737 () Bool)

(assert (=> b!2425412 m!2810737))

(assert (=> start!237530 d!702482))

(declare-fun b!2425413 () Bool)

(declare-fun e!1542759 () Option!5627)

(declare-fun e!1542755 () Option!5627)

(assert (=> b!2425413 (= e!1542759 e!1542755)))

(declare-fun c!386824 () Bool)

(assert (=> b!2425413 (= c!386824 (is-Nil!28392 s!9460))))

(declare-fun b!2425414 () Bool)

(declare-fun res!1030133 () Bool)

(declare-fun e!1542756 () Bool)

(assert (=> b!2425414 (=> (not res!1030133) (not e!1542756))))

(declare-fun lt!876205 () Option!5627)

(assert (=> b!2425414 (= res!1030133 (matchR!3243 lt!876117 (_2!16557 (get!8742 lt!876205))))))

(declare-fun b!2425415 () Bool)

(declare-fun e!1542758 () Bool)

(assert (=> b!2425415 (= e!1542758 (matchR!3243 lt!876117 s!9460))))

(declare-fun d!702484 () Bool)

(declare-fun e!1542757 () Bool)

(assert (=> d!702484 e!1542757))

(declare-fun res!1030131 () Bool)

(assert (=> d!702484 (=> res!1030131 e!1542757)))

(assert (=> d!702484 (= res!1030131 e!1542756)))

(declare-fun res!1030132 () Bool)

(assert (=> d!702484 (=> (not res!1030132) (not e!1542756))))

(assert (=> d!702484 (= res!1030132 (isDefined!4453 lt!876205))))

(assert (=> d!702484 (= lt!876205 e!1542759)))

(declare-fun c!386825 () Bool)

(assert (=> d!702484 (= c!386825 e!1542758)))

(declare-fun res!1030135 () Bool)

(assert (=> d!702484 (=> (not res!1030135) (not e!1542758))))

(assert (=> d!702484 (= res!1030135 (matchR!3243 lt!876111 Nil!28392))))

(assert (=> d!702484 (validRegex!2846 lt!876111)))

(assert (=> d!702484 (= (findConcatSeparation!735 lt!876111 lt!876117 Nil!28392 s!9460 s!9460) lt!876205)))

(declare-fun b!2425416 () Bool)

(declare-fun lt!876206 () Unit!41615)

(declare-fun lt!876207 () Unit!41615)

(assert (=> b!2425416 (= lt!876206 lt!876207)))

(assert (=> b!2425416 (= (++!7047 (++!7047 Nil!28392 (Cons!28392 (h!33793 s!9460) Nil!28392)) (t!208467 s!9460)) s!9460)))

(assert (=> b!2425416 (= lt!876207 (lemmaMoveElementToOtherListKeepsConcatEq!673 Nil!28392 (h!33793 s!9460) (t!208467 s!9460) s!9460))))

(assert (=> b!2425416 (= e!1542755 (findConcatSeparation!735 lt!876111 lt!876117 (++!7047 Nil!28392 (Cons!28392 (h!33793 s!9460) Nil!28392)) (t!208467 s!9460) s!9460))))

(declare-fun b!2425417 () Bool)

(assert (=> b!2425417 (= e!1542755 None!5626)))

(declare-fun b!2425418 () Bool)

(assert (=> b!2425418 (= e!1542756 (= (++!7047 (_1!16557 (get!8742 lt!876205)) (_2!16557 (get!8742 lt!876205))) s!9460))))

(declare-fun b!2425419 () Bool)

(assert (=> b!2425419 (= e!1542759 (Some!5626 (tuple2!28033 Nil!28392 s!9460)))))

(declare-fun b!2425420 () Bool)

(declare-fun res!1030134 () Bool)

(assert (=> b!2425420 (=> (not res!1030134) (not e!1542756))))

(assert (=> b!2425420 (= res!1030134 (matchR!3243 lt!876111 (_1!16557 (get!8742 lt!876205))))))

(declare-fun b!2425421 () Bool)

(assert (=> b!2425421 (= e!1542757 (not (isDefined!4453 lt!876205)))))

(assert (= (and d!702484 res!1030135) b!2425415))

(assert (= (and d!702484 c!386825) b!2425419))

(assert (= (and d!702484 (not c!386825)) b!2425413))

(assert (= (and b!2425413 c!386824) b!2425417))

(assert (= (and b!2425413 (not c!386824)) b!2425416))

(assert (= (and d!702484 res!1030132) b!2425420))

(assert (= (and b!2425420 res!1030134) b!2425414))

(assert (= (and b!2425414 res!1030133) b!2425418))

(assert (= (and d!702484 (not res!1030131)) b!2425421))

(declare-fun m!2810739 () Bool)

(assert (=> b!2425414 m!2810739))

(declare-fun m!2810741 () Bool)

(assert (=> b!2425414 m!2810741))

(assert (=> b!2425416 m!2810603))

(assert (=> b!2425416 m!2810603))

(assert (=> b!2425416 m!2810605))

(assert (=> b!2425416 m!2810607))

(assert (=> b!2425416 m!2810603))

(declare-fun m!2810743 () Bool)

(assert (=> b!2425416 m!2810743))

(assert (=> b!2425418 m!2810739))

(declare-fun m!2810745 () Bool)

(assert (=> b!2425418 m!2810745))

(declare-fun m!2810747 () Bool)

(assert (=> b!2425415 m!2810747))

(declare-fun m!2810749 () Bool)

(assert (=> b!2425421 m!2810749))

(assert (=> d!702484 m!2810749))

(assert (=> d!702484 m!2810617))

(assert (=> d!702484 m!2810619))

(assert (=> b!2425420 m!2810739))

(declare-fun m!2810751 () Bool)

(assert (=> b!2425420 m!2810751))

(assert (=> bm!148337 d!702484))

(declare-fun b!2425432 () Bool)

(declare-fun res!1030141 () Bool)

(declare-fun e!1542769 () Bool)

(assert (=> b!2425432 (=> res!1030141 e!1542769)))

(assert (=> b!2425432 (= res!1030141 (not (isEmpty!16425 (tail!3738 (ite c!386757 s!9460 call!148342)))))))

(declare-fun b!2425433 () Bool)

(assert (=> b!2425433 (= e!1542769 (not (= (head!5466 (ite c!386757 s!9460 call!148342)) (c!386759 (ite c!386757 lt!876114 (Concat!11762 lt!876111 EmptyExpr!7126))))))))

(declare-fun b!2425435 () Bool)

(declare-fun e!1542767 () Bool)

(declare-fun e!1542770 () Bool)

(assert (=> b!2425435 (= e!1542767 e!1542770)))

(declare-fun c!386830 () Bool)

(assert (=> b!2425435 (= c!386830 (is-EmptyLang!7126 (ite c!386757 lt!876114 (Concat!11762 lt!876111 EmptyExpr!7126))))))

(declare-fun b!2425436 () Bool)

(declare-fun e!1542772 () Bool)

(assert (=> b!2425436 (= e!1542772 (matchR!3243 (derivativeStep!1818 (ite c!386757 lt!876114 (Concat!11762 lt!876111 EmptyExpr!7126)) (head!5466 (ite c!386757 s!9460 call!148342))) (tail!3738 (ite c!386757 s!9460 call!148342))))))

(declare-fun b!2425437 () Bool)

(declare-fun e!1542766 () Bool)

(assert (=> b!2425437 (= e!1542766 e!1542769)))

(declare-fun res!1030142 () Bool)

(assert (=> b!2425437 (=> res!1030142 e!1542769)))

(declare-fun call!148375 () Bool)

(assert (=> b!2425437 (= res!1030142 call!148375)))

(declare-fun b!2425438 () Bool)

(declare-fun res!1030139 () Bool)

(declare-fun e!1542771 () Bool)

(assert (=> b!2425438 (=> res!1030139 e!1542771)))

(declare-fun e!1542768 () Bool)

(assert (=> b!2425438 (= res!1030139 e!1542768)))

(declare-fun res!1030145 () Bool)

(assert (=> b!2425438 (=> (not res!1030145) (not e!1542768))))

(declare-fun lt!876210 () Bool)

(assert (=> b!2425438 (= res!1030145 lt!876210)))

(declare-fun b!2425439 () Bool)

(declare-fun res!1030140 () Bool)

(assert (=> b!2425439 (=> res!1030140 e!1542771)))

(assert (=> b!2425439 (= res!1030140 (not (is-ElementMatch!7126 (ite c!386757 lt!876114 (Concat!11762 lt!876111 EmptyExpr!7126)))))))

(assert (=> b!2425439 (= e!1542770 e!1542771)))

(declare-fun b!2425440 () Bool)

(declare-fun res!1030143 () Bool)

(assert (=> b!2425440 (=> (not res!1030143) (not e!1542768))))

(assert (=> b!2425440 (= res!1030143 (not call!148375))))

(declare-fun bm!148370 () Bool)

(assert (=> bm!148370 (= call!148375 (isEmpty!16425 (ite c!386757 s!9460 call!148342)))))

(declare-fun b!2425441 () Bool)

(declare-fun res!1030138 () Bool)

(assert (=> b!2425441 (=> (not res!1030138) (not e!1542768))))

(assert (=> b!2425441 (= res!1030138 (isEmpty!16425 (tail!3738 (ite c!386757 s!9460 call!148342))))))

(declare-fun b!2425442 () Bool)

(assert (=> b!2425442 (= e!1542770 (not lt!876210))))

(declare-fun b!2425443 () Bool)

(assert (=> b!2425443 (= e!1542767 (= lt!876210 call!148375))))

(declare-fun b!2425434 () Bool)

(assert (=> b!2425434 (= e!1542772 (nullable!2161 (ite c!386757 lt!876114 (Concat!11762 lt!876111 EmptyExpr!7126))))))

(declare-fun d!702486 () Bool)

(assert (=> d!702486 e!1542767))

(declare-fun c!386832 () Bool)

(assert (=> d!702486 (= c!386832 (is-EmptyExpr!7126 (ite c!386757 lt!876114 (Concat!11762 lt!876111 EmptyExpr!7126))))))

(assert (=> d!702486 (= lt!876210 e!1542772)))

(declare-fun c!386831 () Bool)

(assert (=> d!702486 (= c!386831 (isEmpty!16425 (ite c!386757 s!9460 call!148342)))))

(assert (=> d!702486 (validRegex!2846 (ite c!386757 lt!876114 (Concat!11762 lt!876111 EmptyExpr!7126)))))

(assert (=> d!702486 (= (matchR!3243 (ite c!386757 lt!876114 (Concat!11762 lt!876111 EmptyExpr!7126)) (ite c!386757 s!9460 call!148342)) lt!876210)))

(declare-fun b!2425444 () Bool)

(assert (=> b!2425444 (= e!1542768 (= (head!5466 (ite c!386757 s!9460 call!148342)) (c!386759 (ite c!386757 lt!876114 (Concat!11762 lt!876111 EmptyExpr!7126)))))))

(declare-fun b!2425445 () Bool)

(assert (=> b!2425445 (= e!1542771 e!1542766)))

(declare-fun res!1030144 () Bool)

(assert (=> b!2425445 (=> (not res!1030144) (not e!1542766))))

(assert (=> b!2425445 (= res!1030144 (not lt!876210))))

(assert (= (and d!702486 c!386831) b!2425434))

(assert (= (and d!702486 (not c!386831)) b!2425436))

(assert (= (and d!702486 c!386832) b!2425443))

(assert (= (and d!702486 (not c!386832)) b!2425435))

(assert (= (and b!2425435 c!386830) b!2425442))

(assert (= (and b!2425435 (not c!386830)) b!2425439))

(assert (= (and b!2425439 (not res!1030140)) b!2425438))

(assert (= (and b!2425438 res!1030145) b!2425440))

(assert (= (and b!2425440 res!1030143) b!2425441))

(assert (= (and b!2425441 res!1030138) b!2425444))

(assert (= (and b!2425438 (not res!1030139)) b!2425445))

(assert (= (and b!2425445 res!1030144) b!2425437))

(assert (= (and b!2425437 (not res!1030142)) b!2425432))

(assert (= (and b!2425432 (not res!1030141)) b!2425433))

(assert (= (or b!2425443 b!2425437 b!2425440) bm!148370))

(declare-fun m!2810753 () Bool)

(assert (=> bm!148370 m!2810753))

(declare-fun m!2810755 () Bool)

(assert (=> b!2425436 m!2810755))

(assert (=> b!2425436 m!2810755))

(declare-fun m!2810757 () Bool)

(assert (=> b!2425436 m!2810757))

(declare-fun m!2810759 () Bool)

(assert (=> b!2425436 m!2810759))

(assert (=> b!2425436 m!2810757))

(assert (=> b!2425436 m!2810759))

(declare-fun m!2810761 () Bool)

(assert (=> b!2425436 m!2810761))

(assert (=> d!702486 m!2810753))

(declare-fun m!2810763 () Bool)

(assert (=> d!702486 m!2810763))

(assert (=> b!2425433 m!2810755))

(assert (=> b!2425444 m!2810755))

(assert (=> b!2425432 m!2810759))

(assert (=> b!2425432 m!2810759))

(declare-fun m!2810765 () Bool)

(assert (=> b!2425432 m!2810765))

(declare-fun m!2810767 () Bool)

(assert (=> b!2425434 m!2810767))

(assert (=> b!2425441 m!2810759))

(assert (=> b!2425441 m!2810759))

(assert (=> b!2425441 m!2810765))

(assert (=> bm!148332 d!702486))

(declare-fun b!2425466 () Bool)

(declare-fun res!1030152 () Bool)

(declare-fun e!1542783 () Bool)

(assert (=> b!2425466 (=> (not res!1030152) (not e!1542783))))

(declare-fun lt!876213 () List!28490)

(declare-fun size!22248 (List!28490) Int)

(assert (=> b!2425466 (= res!1030152 (= (size!22248 lt!876213) (+ (size!22248 (ite c!386757 s!9460 (_1!16557 lt!876115))) (size!22248 (ite c!386757 Nil!28392 (_2!16557 lt!876115))))))))

(declare-fun b!2425464 () Bool)

(declare-fun e!1542784 () List!28490)

(assert (=> b!2425464 (= e!1542784 (ite c!386757 Nil!28392 (_2!16557 lt!876115)))))

(declare-fun b!2425467 () Bool)

(assert (=> b!2425467 (= e!1542783 (or (not (= (ite c!386757 Nil!28392 (_2!16557 lt!876115)) Nil!28392)) (= lt!876213 (ite c!386757 s!9460 (_1!16557 lt!876115)))))))

(declare-fun b!2425465 () Bool)

(assert (=> b!2425465 (= e!1542784 (Cons!28392 (h!33793 (ite c!386757 s!9460 (_1!16557 lt!876115))) (++!7047 (t!208467 (ite c!386757 s!9460 (_1!16557 lt!876115))) (ite c!386757 Nil!28392 (_2!16557 lt!876115)))))))

(declare-fun d!702488 () Bool)

(assert (=> d!702488 e!1542783))

(declare-fun res!1030153 () Bool)

(assert (=> d!702488 (=> (not res!1030153) (not e!1542783))))

(declare-fun content!3910 (List!28490) (Set C!14410))

(assert (=> d!702488 (= res!1030153 (= (content!3910 lt!876213) (set.union (content!3910 (ite c!386757 s!9460 (_1!16557 lt!876115))) (content!3910 (ite c!386757 Nil!28392 (_2!16557 lt!876115))))))))

(assert (=> d!702488 (= lt!876213 e!1542784)))

(declare-fun c!386839 () Bool)

(assert (=> d!702488 (= c!386839 (is-Nil!28392 (ite c!386757 s!9460 (_1!16557 lt!876115))))))

(assert (=> d!702488 (= (++!7047 (ite c!386757 s!9460 (_1!16557 lt!876115)) (ite c!386757 Nil!28392 (_2!16557 lt!876115))) lt!876213)))

(assert (= (and d!702488 c!386839) b!2425464))

(assert (= (and d!702488 (not c!386839)) b!2425465))

(assert (= (and d!702488 res!1030153) b!2425466))

(assert (= (and b!2425466 res!1030152) b!2425467))

(declare-fun m!2810769 () Bool)

(assert (=> b!2425466 m!2810769))

(declare-fun m!2810771 () Bool)

(assert (=> b!2425466 m!2810771))

(declare-fun m!2810773 () Bool)

(assert (=> b!2425466 m!2810773))

(declare-fun m!2810775 () Bool)

(assert (=> b!2425465 m!2810775))

(declare-fun m!2810777 () Bool)

(assert (=> d!702488 m!2810777))

(declare-fun m!2810779 () Bool)

(assert (=> d!702488 m!2810779))

(declare-fun m!2810781 () Bool)

(assert (=> d!702488 m!2810781))

(assert (=> bm!148335 d!702488))

(declare-fun d!702490 () Bool)

(assert (=> d!702490 (= (isEmpty!16424 l!9164) (is-Nil!28393 l!9164))))

(assert (=> b!2425099 d!702490))

(declare-fun d!702492 () Bool)

(assert (=> d!702492 (= (isDefined!4453 (findConcatSeparation!735 (h!33794 l!9164) (generalisedConcat!227 (t!208468 l!9164)) Nil!28392 s!9460 s!9460)) (not (isEmpty!16428 (findConcatSeparation!735 (h!33794 l!9164) (generalisedConcat!227 (t!208468 l!9164)) Nil!28392 s!9460 s!9460))))))

(declare-fun bs!463891 () Bool)

(assert (= bs!463891 d!702492))

(assert (=> bs!463891 m!2810533))

(declare-fun m!2810783 () Bool)

(assert (=> bs!463891 m!2810783))

(assert (=> b!2425083 d!702492))

(declare-fun b!2425468 () Bool)

(declare-fun e!1542789 () Option!5627)

(declare-fun e!1542785 () Option!5627)

(assert (=> b!2425468 (= e!1542789 e!1542785)))

(declare-fun c!386840 () Bool)

(assert (=> b!2425468 (= c!386840 (is-Nil!28392 s!9460))))

(declare-fun b!2425469 () Bool)

(declare-fun res!1030156 () Bool)

(declare-fun e!1542786 () Bool)

(assert (=> b!2425469 (=> (not res!1030156) (not e!1542786))))

(declare-fun lt!876214 () Option!5627)

(assert (=> b!2425469 (= res!1030156 (matchR!3243 (generalisedConcat!227 (t!208468 l!9164)) (_2!16557 (get!8742 lt!876214))))))

(declare-fun b!2425470 () Bool)

(declare-fun e!1542788 () Bool)

(assert (=> b!2425470 (= e!1542788 (matchR!3243 (generalisedConcat!227 (t!208468 l!9164)) s!9460))))

(declare-fun d!702494 () Bool)

(declare-fun e!1542787 () Bool)

(assert (=> d!702494 e!1542787))

(declare-fun res!1030154 () Bool)

(assert (=> d!702494 (=> res!1030154 e!1542787)))

(assert (=> d!702494 (= res!1030154 e!1542786)))

(declare-fun res!1030155 () Bool)

(assert (=> d!702494 (=> (not res!1030155) (not e!1542786))))

(assert (=> d!702494 (= res!1030155 (isDefined!4453 lt!876214))))

(assert (=> d!702494 (= lt!876214 e!1542789)))

(declare-fun c!386841 () Bool)

(assert (=> d!702494 (= c!386841 e!1542788)))

(declare-fun res!1030158 () Bool)

(assert (=> d!702494 (=> (not res!1030158) (not e!1542788))))

(assert (=> d!702494 (= res!1030158 (matchR!3243 (h!33794 l!9164) Nil!28392))))

(assert (=> d!702494 (validRegex!2846 (h!33794 l!9164))))

(assert (=> d!702494 (= (findConcatSeparation!735 (h!33794 l!9164) (generalisedConcat!227 (t!208468 l!9164)) Nil!28392 s!9460 s!9460) lt!876214)))

(declare-fun b!2425471 () Bool)

(declare-fun lt!876215 () Unit!41615)

(declare-fun lt!876216 () Unit!41615)

(assert (=> b!2425471 (= lt!876215 lt!876216)))

(assert (=> b!2425471 (= (++!7047 (++!7047 Nil!28392 (Cons!28392 (h!33793 s!9460) Nil!28392)) (t!208467 s!9460)) s!9460)))

(assert (=> b!2425471 (= lt!876216 (lemmaMoveElementToOtherListKeepsConcatEq!673 Nil!28392 (h!33793 s!9460) (t!208467 s!9460) s!9460))))

(assert (=> b!2425471 (= e!1542785 (findConcatSeparation!735 (h!33794 l!9164) (generalisedConcat!227 (t!208468 l!9164)) (++!7047 Nil!28392 (Cons!28392 (h!33793 s!9460) Nil!28392)) (t!208467 s!9460) s!9460))))

(declare-fun b!2425472 () Bool)

(assert (=> b!2425472 (= e!1542785 None!5626)))

(declare-fun b!2425473 () Bool)

(assert (=> b!2425473 (= e!1542786 (= (++!7047 (_1!16557 (get!8742 lt!876214)) (_2!16557 (get!8742 lt!876214))) s!9460))))

(declare-fun b!2425474 () Bool)

(assert (=> b!2425474 (= e!1542789 (Some!5626 (tuple2!28033 Nil!28392 s!9460)))))

(declare-fun b!2425475 () Bool)

(declare-fun res!1030157 () Bool)

(assert (=> b!2425475 (=> (not res!1030157) (not e!1542786))))

(assert (=> b!2425475 (= res!1030157 (matchR!3243 (h!33794 l!9164) (_1!16557 (get!8742 lt!876214))))))

(declare-fun b!2425476 () Bool)

(assert (=> b!2425476 (= e!1542787 (not (isDefined!4453 lt!876214)))))

(assert (= (and d!702494 res!1030158) b!2425470))

(assert (= (and d!702494 c!386841) b!2425474))

(assert (= (and d!702494 (not c!386841)) b!2425468))

(assert (= (and b!2425468 c!386840) b!2425472))

(assert (= (and b!2425468 (not c!386840)) b!2425471))

(assert (= (and d!702494 res!1030155) b!2425475))

(assert (= (and b!2425475 res!1030157) b!2425469))

(assert (= (and b!2425469 res!1030156) b!2425473))

(assert (= (and d!702494 (not res!1030154)) b!2425476))

(declare-fun m!2810785 () Bool)

(assert (=> b!2425469 m!2810785))

(assert (=> b!2425469 m!2810503))

(declare-fun m!2810787 () Bool)

(assert (=> b!2425469 m!2810787))

(assert (=> b!2425471 m!2810603))

(assert (=> b!2425471 m!2810603))

(assert (=> b!2425471 m!2810605))

(assert (=> b!2425471 m!2810607))

(assert (=> b!2425471 m!2810503))

(assert (=> b!2425471 m!2810603))

(declare-fun m!2810789 () Bool)

(assert (=> b!2425471 m!2810789))

(assert (=> b!2425473 m!2810785))

(declare-fun m!2810791 () Bool)

(assert (=> b!2425473 m!2810791))

(assert (=> b!2425470 m!2810503))

(declare-fun m!2810793 () Bool)

(assert (=> b!2425470 m!2810793))

(declare-fun m!2810795 () Bool)

(assert (=> b!2425476 m!2810795))

(assert (=> d!702494 m!2810795))

(declare-fun m!2810797 () Bool)

(assert (=> d!702494 m!2810797))

(assert (=> d!702494 m!2810501))

(assert (=> b!2425475 m!2810785))

(declare-fun m!2810799 () Bool)

(assert (=> b!2425475 m!2810799))

(assert (=> b!2425083 d!702494))

(declare-fun bs!463893 () Bool)

(declare-fun d!702496 () Bool)

(assert (= bs!463893 (and d!702496 start!237530)))

(declare-fun lambda!91354 () Int)

(assert (=> bs!463893 (= lambda!91354 lambda!91338)))

(declare-fun bs!463894 () Bool)

(assert (= bs!463894 (and d!702496 d!702464)))

(assert (=> bs!463894 (= lambda!91354 lambda!91350)))

(declare-fun b!2425487 () Bool)

(declare-fun e!1542798 () Bool)

(declare-fun lt!876218 () Regex!7126)

(assert (=> b!2425487 (= e!1542798 (= lt!876218 (head!5464 (t!208468 l!9164))))))

(declare-fun b!2425488 () Bool)

(declare-fun e!1542801 () Regex!7126)

(declare-fun e!1542797 () Regex!7126)

(assert (=> b!2425488 (= e!1542801 e!1542797)))

(declare-fun c!386848 () Bool)

(assert (=> b!2425488 (= c!386848 (is-Cons!28393 (t!208468 l!9164)))))

(declare-fun e!1542800 () Bool)

(assert (=> d!702496 e!1542800))

(declare-fun res!1030161 () Bool)

(assert (=> d!702496 (=> (not res!1030161) (not e!1542800))))

(assert (=> d!702496 (= res!1030161 (validRegex!2846 lt!876218))))

(assert (=> d!702496 (= lt!876218 e!1542801)))

(declare-fun c!386849 () Bool)

(declare-fun e!1542799 () Bool)

(assert (=> d!702496 (= c!386849 e!1542799)))

(declare-fun res!1030162 () Bool)

(assert (=> d!702496 (=> (not res!1030162) (not e!1542799))))

(assert (=> d!702496 (= res!1030162 (is-Cons!28393 (t!208468 l!9164)))))

(assert (=> d!702496 (forall!5760 (t!208468 l!9164) lambda!91354)))

(assert (=> d!702496 (= (generalisedConcat!227 (t!208468 l!9164)) lt!876218)))

(declare-fun b!2425489 () Bool)

(assert (=> b!2425489 (= e!1542799 (isEmpty!16424 (t!208468 (t!208468 l!9164))))))

(declare-fun b!2425490 () Bool)

(assert (=> b!2425490 (= e!1542797 (Concat!11762 (h!33794 (t!208468 l!9164)) (generalisedConcat!227 (t!208468 (t!208468 l!9164)))))))

(declare-fun b!2425491 () Bool)

(declare-fun e!1542796 () Bool)

(assert (=> b!2425491 (= e!1542796 e!1542798)))

(declare-fun c!386846 () Bool)

(assert (=> b!2425491 (= c!386846 (isEmpty!16424 (tail!3736 (t!208468 l!9164))))))

(declare-fun b!2425492 () Bool)

(assert (=> b!2425492 (= e!1542797 EmptyExpr!7126)))

(declare-fun b!2425493 () Bool)

(assert (=> b!2425493 (= e!1542796 (isEmptyExpr!181 lt!876218))))

(declare-fun b!2425494 () Bool)

(assert (=> b!2425494 (= e!1542798 (isConcat!181 lt!876218))))

(declare-fun b!2425495 () Bool)

(assert (=> b!2425495 (= e!1542800 e!1542796)))

(declare-fun c!386847 () Bool)

(assert (=> b!2425495 (= c!386847 (isEmpty!16424 (t!208468 l!9164)))))

(declare-fun b!2425496 () Bool)

(assert (=> b!2425496 (= e!1542801 (h!33794 (t!208468 l!9164)))))

(assert (= (and d!702496 res!1030162) b!2425489))

(assert (= (and d!702496 c!386849) b!2425496))

(assert (= (and d!702496 (not c!386849)) b!2425488))

(assert (= (and b!2425488 c!386848) b!2425490))

(assert (= (and b!2425488 (not c!386848)) b!2425492))

(assert (= (and d!702496 res!1030161) b!2425495))

(assert (= (and b!2425495 c!386847) b!2425493))

(assert (= (and b!2425495 (not c!386847)) b!2425491))

(assert (= (and b!2425491 c!386846) b!2425487))

(assert (= (and b!2425491 (not c!386846)) b!2425494))

(declare-fun m!2810801 () Bool)

(assert (=> b!2425491 m!2810801))

(assert (=> b!2425491 m!2810801))

(declare-fun m!2810803 () Bool)

(assert (=> b!2425491 m!2810803))

(declare-fun m!2810805 () Bool)

(assert (=> b!2425493 m!2810805))

(declare-fun m!2810807 () Bool)

(assert (=> b!2425487 m!2810807))

(declare-fun m!2810809 () Bool)

(assert (=> b!2425494 m!2810809))

(declare-fun m!2810811 () Bool)

(assert (=> d!702496 m!2810811))

(declare-fun m!2810813 () Bool)

(assert (=> d!702496 m!2810813))

(declare-fun m!2810815 () Bool)

(assert (=> b!2425490 m!2810815))

(assert (=> b!2425495 m!2810719))

(declare-fun m!2810817 () Bool)

(assert (=> b!2425489 m!2810817))

(assert (=> b!2425083 d!702496))

(declare-fun bs!463895 () Bool)

(declare-fun d!702498 () Bool)

(assert (= bs!463895 (and d!702498 start!237530)))

(declare-fun lambda!91355 () Int)

(assert (=> bs!463895 (= lambda!91355 lambda!91338)))

(declare-fun bs!463896 () Bool)

(assert (= bs!463896 (and d!702498 d!702464)))

(assert (=> bs!463896 (= lambda!91355 lambda!91350)))

(declare-fun bs!463897 () Bool)

(assert (= bs!463897 (and d!702498 d!702496)))

(assert (=> bs!463897 (= lambda!91355 lambda!91354)))

(declare-fun b!2425497 () Bool)

(declare-fun e!1542804 () Bool)

(declare-fun lt!876219 () Regex!7126)

(assert (=> b!2425497 (= e!1542804 (= lt!876219 (head!5464 lt!876119)))))

(declare-fun b!2425498 () Bool)

(declare-fun e!1542807 () Regex!7126)

(declare-fun e!1542803 () Regex!7126)

(assert (=> b!2425498 (= e!1542807 e!1542803)))

(declare-fun c!386852 () Bool)

(assert (=> b!2425498 (= c!386852 (is-Cons!28393 lt!876119))))

(declare-fun e!1542806 () Bool)

(assert (=> d!702498 e!1542806))

(declare-fun res!1030163 () Bool)

(assert (=> d!702498 (=> (not res!1030163) (not e!1542806))))

(assert (=> d!702498 (= res!1030163 (validRegex!2846 lt!876219))))

(assert (=> d!702498 (= lt!876219 e!1542807)))

(declare-fun c!386853 () Bool)

(declare-fun e!1542805 () Bool)

(assert (=> d!702498 (= c!386853 e!1542805)))

(declare-fun res!1030164 () Bool)

(assert (=> d!702498 (=> (not res!1030164) (not e!1542805))))

(assert (=> d!702498 (= res!1030164 (is-Cons!28393 lt!876119))))

(assert (=> d!702498 (forall!5760 lt!876119 lambda!91355)))

(assert (=> d!702498 (= (generalisedConcat!227 lt!876119) lt!876219)))

(declare-fun b!2425499 () Bool)

(assert (=> b!2425499 (= e!1542805 (isEmpty!16424 (t!208468 lt!876119)))))

(declare-fun b!2425500 () Bool)

(assert (=> b!2425500 (= e!1542803 (Concat!11762 (h!33794 lt!876119) (generalisedConcat!227 (t!208468 lt!876119))))))

(declare-fun b!2425501 () Bool)

(declare-fun e!1542802 () Bool)

(assert (=> b!2425501 (= e!1542802 e!1542804)))

(declare-fun c!386850 () Bool)

(assert (=> b!2425501 (= c!386850 (isEmpty!16424 (tail!3736 lt!876119)))))

(declare-fun b!2425502 () Bool)

(assert (=> b!2425502 (= e!1542803 EmptyExpr!7126)))

(declare-fun b!2425503 () Bool)

(assert (=> b!2425503 (= e!1542802 (isEmptyExpr!181 lt!876219))))

(declare-fun b!2425504 () Bool)

(assert (=> b!2425504 (= e!1542804 (isConcat!181 lt!876219))))

(declare-fun b!2425505 () Bool)

(assert (=> b!2425505 (= e!1542806 e!1542802)))

(declare-fun c!386851 () Bool)

(assert (=> b!2425505 (= c!386851 (isEmpty!16424 lt!876119))))

(declare-fun b!2425506 () Bool)

(assert (=> b!2425506 (= e!1542807 (h!33794 lt!876119))))

(assert (= (and d!702498 res!1030164) b!2425499))

(assert (= (and d!702498 c!386853) b!2425506))

(assert (= (and d!702498 (not c!386853)) b!2425498))

(assert (= (and b!2425498 c!386852) b!2425500))

(assert (= (and b!2425498 (not c!386852)) b!2425502))

(assert (= (and d!702498 res!1030163) b!2425505))

(assert (= (and b!2425505 c!386851) b!2425503))

(assert (= (and b!2425505 (not c!386851)) b!2425501))

(assert (= (and b!2425501 c!386850) b!2425497))

(assert (= (and b!2425501 (not c!386850)) b!2425504))

(declare-fun m!2810837 () Bool)

(assert (=> b!2425501 m!2810837))

(assert (=> b!2425501 m!2810837))

(declare-fun m!2810839 () Bool)

(assert (=> b!2425501 m!2810839))

(declare-fun m!2810841 () Bool)

(assert (=> b!2425503 m!2810841))

(declare-fun m!2810843 () Bool)

(assert (=> b!2425497 m!2810843))

(declare-fun m!2810845 () Bool)

(assert (=> b!2425504 m!2810845))

(declare-fun m!2810847 () Bool)

(assert (=> d!702498 m!2810847))

(declare-fun m!2810849 () Bool)

(assert (=> d!702498 m!2810849))

(declare-fun m!2810851 () Bool)

(assert (=> b!2425500 m!2810851))

(assert (=> b!2425505 m!2810537))

(declare-fun m!2810853 () Bool)

(assert (=> b!2425499 m!2810853))

(assert (=> b!2425081 d!702498))

(declare-fun b!2425539 () Bool)

(declare-fun res!1030184 () Bool)

(declare-fun e!1542830 () Bool)

(assert (=> b!2425539 (=> res!1030184 e!1542830)))

(assert (=> b!2425539 (= res!1030184 (not (is-Concat!11762 lt!876109)))))

(declare-fun e!1542832 () Bool)

(assert (=> b!2425539 (= e!1542832 e!1542830)))

(declare-fun b!2425540 () Bool)

(declare-fun e!1542834 () Bool)

(declare-fun e!1542829 () Bool)

(assert (=> b!2425540 (= e!1542834 e!1542829)))

(declare-fun res!1030187 () Bool)

(assert (=> b!2425540 (= res!1030187 (not (nullable!2161 (reg!7455 lt!876109))))))

(assert (=> b!2425540 (=> (not res!1030187) (not e!1542829))))

(declare-fun b!2425541 () Bool)

(declare-fun res!1030185 () Bool)

(declare-fun e!1542835 () Bool)

(assert (=> b!2425541 (=> (not res!1030185) (not e!1542835))))

(declare-fun call!148385 () Bool)

(assert (=> b!2425541 (= res!1030185 call!148385)))

(assert (=> b!2425541 (= e!1542832 e!1542835)))

(declare-fun b!2425543 () Bool)

(declare-fun call!148383 () Bool)

(assert (=> b!2425543 (= e!1542835 call!148383)))

(declare-fun b!2425544 () Bool)

(declare-fun e!1542833 () Bool)

(assert (=> b!2425544 (= e!1542830 e!1542833)))

(declare-fun res!1030186 () Bool)

(assert (=> b!2425544 (=> (not res!1030186) (not e!1542833))))

(assert (=> b!2425544 (= res!1030186 call!148383)))

(declare-fun bm!148378 () Bool)

(declare-fun c!386862 () Bool)

(declare-fun call!148384 () Bool)

(declare-fun c!386861 () Bool)

(assert (=> bm!148378 (= call!148384 (validRegex!2846 (ite c!386861 (reg!7455 lt!876109) (ite c!386862 (regTwo!14765 lt!876109) (regOne!14764 lt!876109)))))))

(declare-fun b!2425545 () Bool)

(assert (=> b!2425545 (= e!1542829 call!148384)))

(declare-fun bm!148379 () Bool)

(assert (=> bm!148379 (= call!148385 (validRegex!2846 (ite c!386862 (regOne!14765 lt!876109) (regTwo!14764 lt!876109))))))

(declare-fun b!2425546 () Bool)

(assert (=> b!2425546 (= e!1542834 e!1542832)))

(assert (=> b!2425546 (= c!386862 (is-Union!7126 lt!876109))))

(declare-fun b!2425542 () Bool)

(assert (=> b!2425542 (= e!1542833 call!148385)))

(declare-fun d!702502 () Bool)

(declare-fun res!1030183 () Bool)

(declare-fun e!1542831 () Bool)

(assert (=> d!702502 (=> res!1030183 e!1542831)))

(assert (=> d!702502 (= res!1030183 (is-ElementMatch!7126 lt!876109))))

(assert (=> d!702502 (= (validRegex!2846 lt!876109) e!1542831)))

(declare-fun b!2425547 () Bool)

(assert (=> b!2425547 (= e!1542831 e!1542834)))

(assert (=> b!2425547 (= c!386861 (is-Star!7126 lt!876109))))

(declare-fun bm!148380 () Bool)

(assert (=> bm!148380 (= call!148383 call!148384)))

(assert (= (and d!702502 (not res!1030183)) b!2425547))

(assert (= (and b!2425547 c!386861) b!2425540))

(assert (= (and b!2425547 (not c!386861)) b!2425546))

(assert (= (and b!2425540 res!1030187) b!2425545))

(assert (= (and b!2425546 c!386862) b!2425541))

(assert (= (and b!2425546 (not c!386862)) b!2425539))

(assert (= (and b!2425541 res!1030185) b!2425543))

(assert (= (and b!2425539 (not res!1030184)) b!2425544))

(assert (= (and b!2425544 res!1030186) b!2425542))

(assert (= (or b!2425541 b!2425542) bm!148379))

(assert (= (or b!2425543 b!2425544) bm!148380))

(assert (= (or b!2425545 bm!148380) bm!148378))

(declare-fun m!2810873 () Bool)

(assert (=> b!2425540 m!2810873))

(declare-fun m!2810875 () Bool)

(assert (=> bm!148378 m!2810875))

(declare-fun m!2810877 () Bool)

(assert (=> bm!148379 m!2810877))

(assert (=> b!2425090 d!702502))

(declare-fun b!2425548 () Bool)

(declare-fun res!1030189 () Bool)

(declare-fun e!1542837 () Bool)

(assert (=> b!2425548 (=> res!1030189 e!1542837)))

(assert (=> b!2425548 (= res!1030189 (not (is-Concat!11762 (h!33794 l!9164))))))

(declare-fun e!1542839 () Bool)

(assert (=> b!2425548 (= e!1542839 e!1542837)))

(declare-fun b!2425549 () Bool)

(declare-fun e!1542841 () Bool)

(declare-fun e!1542836 () Bool)

(assert (=> b!2425549 (= e!1542841 e!1542836)))

(declare-fun res!1030192 () Bool)

(assert (=> b!2425549 (= res!1030192 (not (nullable!2161 (reg!7455 (h!33794 l!9164)))))))

(assert (=> b!2425549 (=> (not res!1030192) (not e!1542836))))

(declare-fun b!2425550 () Bool)

(declare-fun res!1030190 () Bool)

(declare-fun e!1542842 () Bool)

(assert (=> b!2425550 (=> (not res!1030190) (not e!1542842))))

(declare-fun call!148388 () Bool)

(assert (=> b!2425550 (= res!1030190 call!148388)))

(assert (=> b!2425550 (= e!1542839 e!1542842)))

(declare-fun b!2425552 () Bool)

(declare-fun call!148386 () Bool)

(assert (=> b!2425552 (= e!1542842 call!148386)))

(declare-fun b!2425553 () Bool)

(declare-fun e!1542840 () Bool)

(assert (=> b!2425553 (= e!1542837 e!1542840)))

(declare-fun res!1030191 () Bool)

(assert (=> b!2425553 (=> (not res!1030191) (not e!1542840))))

(assert (=> b!2425553 (= res!1030191 call!148386)))

(declare-fun c!386864 () Bool)

(declare-fun c!386863 () Bool)

(declare-fun call!148387 () Bool)

(declare-fun bm!148381 () Bool)

(assert (=> bm!148381 (= call!148387 (validRegex!2846 (ite c!386863 (reg!7455 (h!33794 l!9164)) (ite c!386864 (regTwo!14765 (h!33794 l!9164)) (regOne!14764 (h!33794 l!9164))))))))

(declare-fun b!2425554 () Bool)

(assert (=> b!2425554 (= e!1542836 call!148387)))

(declare-fun bm!148382 () Bool)

(assert (=> bm!148382 (= call!148388 (validRegex!2846 (ite c!386864 (regOne!14765 (h!33794 l!9164)) (regTwo!14764 (h!33794 l!9164)))))))

(declare-fun b!2425555 () Bool)

(assert (=> b!2425555 (= e!1542841 e!1542839)))

(assert (=> b!2425555 (= c!386864 (is-Union!7126 (h!33794 l!9164)))))

(declare-fun b!2425551 () Bool)

(assert (=> b!2425551 (= e!1542840 call!148388)))

(declare-fun d!702510 () Bool)

(declare-fun res!1030188 () Bool)

(declare-fun e!1542838 () Bool)

(assert (=> d!702510 (=> res!1030188 e!1542838)))

(assert (=> d!702510 (= res!1030188 (is-ElementMatch!7126 (h!33794 l!9164)))))

(assert (=> d!702510 (= (validRegex!2846 (h!33794 l!9164)) e!1542838)))

(declare-fun b!2425556 () Bool)

(assert (=> b!2425556 (= e!1542838 e!1542841)))

(assert (=> b!2425556 (= c!386863 (is-Star!7126 (h!33794 l!9164)))))

(declare-fun bm!148383 () Bool)

(assert (=> bm!148383 (= call!148386 call!148387)))

(assert (= (and d!702510 (not res!1030188)) b!2425556))

(assert (= (and b!2425556 c!386863) b!2425549))

(assert (= (and b!2425556 (not c!386863)) b!2425555))

(assert (= (and b!2425549 res!1030192) b!2425554))

(assert (= (and b!2425555 c!386864) b!2425550))

(assert (= (and b!2425555 (not c!386864)) b!2425548))

(assert (= (and b!2425550 res!1030190) b!2425552))

(assert (= (and b!2425548 (not res!1030189)) b!2425553))

(assert (= (and b!2425553 res!1030191) b!2425551))

(assert (= (or b!2425550 b!2425551) bm!148382))

(assert (= (or b!2425552 b!2425553) bm!148383))

(assert (= (or b!2425554 bm!148383) bm!148381))

(declare-fun m!2810879 () Bool)

(assert (=> b!2425549 m!2810879))

(declare-fun m!2810881 () Bool)

(assert (=> bm!148381 m!2810881))

(declare-fun m!2810883 () Bool)

(assert (=> bm!148382 m!2810883))

(assert (=> b!2425098 d!702510))

(assert (=> b!2425098 d!702496))

(declare-fun b!2425561 () Bool)

(declare-fun e!1542845 () Bool)

(declare-fun tp!770222 () Bool)

(assert (=> b!2425561 (= e!1542845 (and tp_is_empty!11665 tp!770222))))

(assert (=> b!2425102 (= tp!770188 e!1542845)))

(assert (= (and b!2425102 (is-Cons!28392 (t!208467 s!9460))) b!2425561))

(declare-fun e!1542848 () Bool)

(assert (=> b!2425079 (= tp!770191 e!1542848)))

(declare-fun b!2425573 () Bool)

(declare-fun tp!770236 () Bool)

(declare-fun tp!770233 () Bool)

(assert (=> b!2425573 (= e!1542848 (and tp!770236 tp!770233))))

(declare-fun b!2425572 () Bool)

(assert (=> b!2425572 (= e!1542848 tp_is_empty!11665)))

(declare-fun b!2425575 () Bool)

(declare-fun tp!770234 () Bool)

(declare-fun tp!770237 () Bool)

(assert (=> b!2425575 (= e!1542848 (and tp!770234 tp!770237))))

(declare-fun b!2425574 () Bool)

(declare-fun tp!770235 () Bool)

(assert (=> b!2425574 (= e!1542848 tp!770235)))

(assert (= (and b!2425079 (is-ElementMatch!7126 (regOne!14764 r!13927))) b!2425572))

(assert (= (and b!2425079 (is-Concat!11762 (regOne!14764 r!13927))) b!2425573))

(assert (= (and b!2425079 (is-Star!7126 (regOne!14764 r!13927))) b!2425574))

(assert (= (and b!2425079 (is-Union!7126 (regOne!14764 r!13927))) b!2425575))

(declare-fun e!1542849 () Bool)

(assert (=> b!2425079 (= tp!770189 e!1542849)))

(declare-fun b!2425577 () Bool)

(declare-fun tp!770241 () Bool)

(declare-fun tp!770238 () Bool)

(assert (=> b!2425577 (= e!1542849 (and tp!770241 tp!770238))))

(declare-fun b!2425576 () Bool)

(assert (=> b!2425576 (= e!1542849 tp_is_empty!11665)))

(declare-fun b!2425579 () Bool)

(declare-fun tp!770239 () Bool)

(declare-fun tp!770242 () Bool)

(assert (=> b!2425579 (= e!1542849 (and tp!770239 tp!770242))))

(declare-fun b!2425578 () Bool)

(declare-fun tp!770240 () Bool)

(assert (=> b!2425578 (= e!1542849 tp!770240)))

(assert (= (and b!2425079 (is-ElementMatch!7126 (regTwo!14764 r!13927))) b!2425576))

(assert (= (and b!2425079 (is-Concat!11762 (regTwo!14764 r!13927))) b!2425577))

(assert (= (and b!2425079 (is-Star!7126 (regTwo!14764 r!13927))) b!2425578))

(assert (= (and b!2425079 (is-Union!7126 (regTwo!14764 r!13927))) b!2425579))

(declare-fun e!1542850 () Bool)

(assert (=> b!2425092 (= tp!770190 e!1542850)))

(declare-fun b!2425581 () Bool)

(declare-fun tp!770246 () Bool)

(declare-fun tp!770243 () Bool)

(assert (=> b!2425581 (= e!1542850 (and tp!770246 tp!770243))))

(declare-fun b!2425580 () Bool)

(assert (=> b!2425580 (= e!1542850 tp_is_empty!11665)))

(declare-fun b!2425583 () Bool)

(declare-fun tp!770244 () Bool)

(declare-fun tp!770247 () Bool)

(assert (=> b!2425583 (= e!1542850 (and tp!770244 tp!770247))))

(declare-fun b!2425582 () Bool)

(declare-fun tp!770245 () Bool)

(assert (=> b!2425582 (= e!1542850 tp!770245)))

(assert (= (and b!2425092 (is-ElementMatch!7126 (reg!7455 r!13927))) b!2425580))

(assert (= (and b!2425092 (is-Concat!11762 (reg!7455 r!13927))) b!2425581))

(assert (= (and b!2425092 (is-Star!7126 (reg!7455 r!13927))) b!2425582))

(assert (= (and b!2425092 (is-Union!7126 (reg!7455 r!13927))) b!2425583))

(declare-fun e!1542851 () Bool)

(assert (=> b!2425087 (= tp!770193 e!1542851)))

(declare-fun b!2425585 () Bool)

(declare-fun tp!770251 () Bool)

(declare-fun tp!770248 () Bool)

(assert (=> b!2425585 (= e!1542851 (and tp!770251 tp!770248))))

(declare-fun b!2425584 () Bool)

(assert (=> b!2425584 (= e!1542851 tp_is_empty!11665)))

(declare-fun b!2425587 () Bool)

(declare-fun tp!770249 () Bool)

(declare-fun tp!770252 () Bool)

(assert (=> b!2425587 (= e!1542851 (and tp!770249 tp!770252))))

(declare-fun b!2425586 () Bool)

(declare-fun tp!770250 () Bool)

(assert (=> b!2425586 (= e!1542851 tp!770250)))

(assert (= (and b!2425087 (is-ElementMatch!7126 (regOne!14765 r!13927))) b!2425584))

(assert (= (and b!2425087 (is-Concat!11762 (regOne!14765 r!13927))) b!2425585))

(assert (= (and b!2425087 (is-Star!7126 (regOne!14765 r!13927))) b!2425586))

(assert (= (and b!2425087 (is-Union!7126 (regOne!14765 r!13927))) b!2425587))

(declare-fun e!1542852 () Bool)

(assert (=> b!2425087 (= tp!770194 e!1542852)))

(declare-fun b!2425589 () Bool)

(declare-fun tp!770256 () Bool)

(declare-fun tp!770253 () Bool)

(assert (=> b!2425589 (= e!1542852 (and tp!770256 tp!770253))))

(declare-fun b!2425588 () Bool)

(assert (=> b!2425588 (= e!1542852 tp_is_empty!11665)))

(declare-fun b!2425591 () Bool)

(declare-fun tp!770254 () Bool)

(declare-fun tp!770257 () Bool)

(assert (=> b!2425591 (= e!1542852 (and tp!770254 tp!770257))))

(declare-fun b!2425590 () Bool)

(declare-fun tp!770255 () Bool)

(assert (=> b!2425590 (= e!1542852 tp!770255)))

(assert (= (and b!2425087 (is-ElementMatch!7126 (regTwo!14765 r!13927))) b!2425588))

(assert (= (and b!2425087 (is-Concat!11762 (regTwo!14765 r!13927))) b!2425589))

(assert (= (and b!2425087 (is-Star!7126 (regTwo!14765 r!13927))) b!2425590))

(assert (= (and b!2425087 (is-Union!7126 (regTwo!14765 r!13927))) b!2425591))

(declare-fun e!1542853 () Bool)

(assert (=> b!2425097 (= tp!770195 e!1542853)))

(declare-fun b!2425593 () Bool)

(declare-fun tp!770261 () Bool)

(declare-fun tp!770258 () Bool)

(assert (=> b!2425593 (= e!1542853 (and tp!770261 tp!770258))))

(declare-fun b!2425592 () Bool)

(assert (=> b!2425592 (= e!1542853 tp_is_empty!11665)))

(declare-fun b!2425595 () Bool)

(declare-fun tp!770259 () Bool)

(declare-fun tp!770262 () Bool)

(assert (=> b!2425595 (= e!1542853 (and tp!770259 tp!770262))))

(declare-fun b!2425594 () Bool)

(declare-fun tp!770260 () Bool)

(assert (=> b!2425594 (= e!1542853 tp!770260)))

(assert (= (and b!2425097 (is-ElementMatch!7126 (h!33794 l!9164))) b!2425592))

(assert (= (and b!2425097 (is-Concat!11762 (h!33794 l!9164))) b!2425593))

(assert (= (and b!2425097 (is-Star!7126 (h!33794 l!9164))) b!2425594))

(assert (= (and b!2425097 (is-Union!7126 (h!33794 l!9164))) b!2425595))

(declare-fun b!2425600 () Bool)

(declare-fun e!1542856 () Bool)

(declare-fun tp!770267 () Bool)

(declare-fun tp!770268 () Bool)

(assert (=> b!2425600 (= e!1542856 (and tp!770267 tp!770268))))

(assert (=> b!2425097 (= tp!770192 e!1542856)))

(assert (= (and b!2425097 (is-Cons!28393 (t!208468 l!9164))) b!2425600))

(declare-fun b_lambda!74695 () Bool)

(assert (= b_lambda!74693 (or start!237530 b_lambda!74695)))

(declare-fun bs!463899 () Bool)

(declare-fun d!702512 () Bool)

(assert (= bs!463899 (and d!702512 start!237530)))

(assert (=> bs!463899 (= (dynLambda!12220 lambda!91338 (h!33794 l!9164)) (validRegex!2846 (h!33794 l!9164)))))

(assert (=> bs!463899 m!2810501))

(assert (=> b!2425411 d!702512))

(push 1)

(assert (not b!2425595))

(assert (not b!2425198))

(assert (not d!702464))

(assert (not b!2425505))

(assert (not b!2425416))

(assert (not b!2425504))

(assert (not b!2425583))

(assert (not d!702472))

(assert (not b!2425415))

(assert (not d!702488))

(assert (not d!702448))

(assert (not b!2425593))

(assert (not b!2425434))

(assert (not b!2425387))

(assert (not b!2425494))

(assert (not d!702446))

(assert (not b!2425540))

(assert (not b!2425436))

(assert (not b!2425574))

(assert (not b!2425395))

(assert (not b!2425321))

(assert (not b!2425497))

(assert (not b!2425433))

(assert (not b!2425444))

(assert (not b!2425418))

(assert (not b!2425589))

(assert (not b!2425420))

(assert (not b!2425204))

(assert (not b!2425577))

(assert (not b!2425600))

(assert (not b!2425487))

(assert (not b!2425573))

(assert (not d!702498))

(assert (not b!2425587))

(assert (not b!2425590))

(assert (not b!2425391))

(assert (not b!2425324))

(assert (not b!2425405))

(assert (not b!2425241))

(assert (not b!2425389))

(assert (not b!2425491))

(assert (not b!2425402))

(assert (not b!2425476))

(assert (not b!2425471))

(assert (not b!2425581))

(assert (not b!2425493))

(assert (not b!2425500))

(assert (not b!2425499))

(assert (not b!2425466))

(assert (not d!702492))

(assert (not d!702494))

(assert (not b!2425205))

(assert (not b!2425202))

(assert (not bs!463899))

(assert (not b!2425394))

(assert (not b!2425582))

(assert (not b!2425490))

(assert (not b!2425393))

(assert (not b!2425347))

(assert (not bm!148366))

(assert (not b!2425414))

(assert (not b!2425579))

(assert (not b!2425343))

(assert (not d!702476))

(assert (not d!702452))

(assert (not b!2425316))

(assert (not b!2425503))

(assert (not b!2425475))

(assert (not bm!148361))

(assert (not bm!148368))

(assert (not b!2425314))

(assert (not b!2425244))

(assert (not b!2425465))

(assert (not b!2425561))

(assert (not b_lambda!74695))

(assert (not b!2425594))

(assert (not b!2425385))

(assert (not b!2425412))

(assert (not bm!148370))

(assert (not b!2425489))

(assert tp_is_empty!11665)

(assert (not d!702436))

(assert (not b!2425501))

(assert (not b!2425585))

(assert (not d!702484))

(assert (not bm!148360))

(assert (not bm!148369))

(assert (not b!2425473))

(assert (not d!702496))

(assert (not b!2425397))

(assert (not b!2425578))

(assert (not bm!148382))

(assert (not b!2425383))

(assert (not d!702480))

(assert (not b!2425469))

(assert (not b!2425386))

(assert (not d!702486))

(assert (not b!2425355))

(assert (not b!2425345))

(assert (not b!2425344))

(assert (not b!2425586))

(assert (not b!2425575))

(assert (not d!702444))

(assert (not b!2425432))

(assert (not b!2425441))

(assert (not b!2425549))

(assert (not b!2425352))

(assert (not b!2425313))

(assert (not b!2425421))

(assert (not b!2425390))

(assert (not b!2425470))

(assert (not bm!148378))

(assert (not bm!148379))

(assert (not bm!148381))

(assert (not b!2425495))

(assert (not b!2425342))

(assert (not b!2425591))

(assert (not d!702462))

(assert (not b!2425199))

(assert (not b!2425200))

(assert (not b!2425312))

(assert (not d!702454))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

