; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!236982 () Bool)

(assert start!236982)

(declare-fun b!2419089 () Bool)

(declare-fun e!1539222 () Bool)

(assert (=> b!2419089 (= e!1539222 false)))

(declare-fun b!2419090 () Bool)

(declare-fun e!1539227 () Bool)

(declare-fun call!147741 () Bool)

(assert (=> b!2419090 (= e!1539227 call!147741)))

(declare-fun b!2419091 () Bool)

(declare-fun e!1539229 () Bool)

(declare-fun e!1539223 () Bool)

(assert (=> b!2419091 (= e!1539229 e!1539223)))

(declare-fun res!1027368 () Bool)

(assert (=> b!2419091 (=> res!1027368 e!1539223)))

(declare-datatypes ((C!14378 0))(
  ( (C!14379 (val!8431 Int)) )
))
(declare-datatypes ((Regex!7110 0))(
  ( (ElementMatch!7110 (c!385572 C!14378)) (Concat!11746 (regOne!14732 Regex!7110) (regTwo!14732 Regex!7110)) (EmptyExpr!7110) (Star!7110 (reg!7439 Regex!7110)) (EmptyLang!7110) (Union!7110 (regOne!14733 Regex!7110) (regTwo!14733 Regex!7110)) )
))
(declare-datatypes ((List!28458 0))(
  ( (Nil!28360) (Cons!28360 (h!33761 Regex!7110) (t!208435 List!28458)) )
))
(declare-fun l!9164 () List!28458)

(assert (=> b!2419091 (= res!1027368 (not (is-Cons!28360 l!9164)))))

(declare-datatypes ((Unit!41519 0))(
  ( (Unit!41520) )
))
(declare-fun lt!874815 () Unit!41519)

(declare-fun e!1539221 () Unit!41519)

(assert (=> b!2419091 (= lt!874815 e!1539221)))

(declare-fun c!385571 () Bool)

(declare-fun lt!874814 () Regex!7110)

(declare-datatypes ((List!28459 0))(
  ( (Nil!28361) (Cons!28361 (h!33762 C!14378) (t!208436 List!28459)) )
))
(declare-fun s!9460 () List!28459)

(declare-fun matchR!3227 (Regex!7110 List!28459) Bool)

(assert (=> b!2419091 (= c!385571 (matchR!3227 lt!874814 s!9460))))

(declare-fun head!5432 (List!28458) Regex!7110)

(assert (=> b!2419091 (= lt!874814 (head!5432 l!9164))))

(declare-fun b!2419092 () Bool)

(declare-fun Unit!41521 () Unit!41519)

(assert (=> b!2419092 (= e!1539221 Unit!41521)))

(declare-fun lt!874821 () Unit!41519)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!85 (Regex!7110 Regex!7110 List!28459 List!28459) Unit!41519)

(assert (=> b!2419092 (= lt!874821 (lemmaTwoRegexMatchThenConcatMatchesConcatString!85 lt!874814 EmptyExpr!7110 s!9460 Nil!28361))))

(declare-fun lt!874820 () Regex!7110)

(assert (=> b!2419092 (= lt!874820 (Concat!11746 lt!874814 EmptyExpr!7110))))

(declare-fun res!1027366 () Bool)

(declare-fun call!147739 () List!28459)

(assert (=> b!2419092 (= res!1027366 (matchR!3227 lt!874820 call!147739))))

(assert (=> b!2419092 (=> (not res!1027366) (not e!1539227))))

(assert (=> b!2419092 e!1539227))

(declare-fun lt!874825 () Unit!41519)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!59 (Regex!7110 Regex!7110 List!28459) Unit!41519)

(assert (=> b!2419092 (= lt!874825 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!59 lt!874814 EmptyExpr!7110 s!9460))))

(declare-fun res!1027363 () Bool)

(declare-fun call!147740 () Bool)

(assert (=> b!2419092 (= res!1027363 call!147740)))

(declare-fun e!1539231 () Bool)

(assert (=> b!2419092 (=> (not res!1027363) (not e!1539231))))

(assert (=> b!2419092 e!1539231))

(declare-fun b!2419093 () Bool)

(declare-fun e!1539228 () Unit!41519)

(declare-fun Unit!41522 () Unit!41519)

(assert (=> b!2419093 (= e!1539228 Unit!41522)))

(declare-fun b!2419094 () Bool)

(declare-fun e!1539219 () Bool)

(declare-fun e!1539232 () Bool)

(assert (=> b!2419094 (= e!1539219 (not e!1539232))))

(declare-fun res!1027367 () Bool)

(assert (=> b!2419094 (=> res!1027367 e!1539232)))

(declare-fun r!13927 () Regex!7110)

(assert (=> b!2419094 (= res!1027367 (or (is-Concat!11746 r!13927) (is-EmptyExpr!7110 r!13927)))))

(declare-fun matchRSpec!959 (Regex!7110 List!28459) Bool)

(assert (=> b!2419094 (= (matchR!3227 r!13927 s!9460) (matchRSpec!959 r!13927 s!9460))))

(declare-fun lt!874819 () Unit!41519)

(declare-fun mainMatchTheorem!959 (Regex!7110 List!28459) Unit!41519)

(assert (=> b!2419094 (= lt!874819 (mainMatchTheorem!959 r!13927 s!9460))))

(declare-fun b!2419095 () Bool)

(declare-fun e!1539220 () Bool)

(assert (=> b!2419095 (= e!1539232 e!1539220)))

(declare-fun res!1027371 () Bool)

(assert (=> b!2419095 (=> res!1027371 e!1539220)))

(declare-fun lt!874822 () List!28458)

(declare-fun isEmpty!16376 (List!28458) Bool)

(assert (=> b!2419095 (= res!1027371 (not (isEmpty!16376 lt!874822)))))

(declare-fun tail!3704 (List!28458) List!28458)

(assert (=> b!2419095 (= lt!874822 (tail!3704 l!9164))))

(declare-fun bm!147732 () Bool)

(assert (=> bm!147732 (= call!147741 (matchR!3227 (ite c!385571 lt!874820 (Concat!11746 lt!874814 EmptyExpr!7110)) (ite c!385571 s!9460 call!147739)))))

(declare-fun b!2419097 () Bool)

(declare-fun res!1027373 () Bool)

(assert (=> b!2419097 (=> res!1027373 e!1539232)))

(assert (=> b!2419097 (= res!1027373 (isEmpty!16376 l!9164))))

(declare-fun b!2419098 () Bool)

(declare-fun e!1539230 () Bool)

(declare-fun tp_is_empty!11633 () Bool)

(declare-fun tp!769020 () Bool)

(assert (=> b!2419098 (= e!1539230 (and tp_is_empty!11633 tp!769020))))

(declare-fun bm!147733 () Bool)

(declare-fun lt!874813 () Regex!7110)

(declare-datatypes ((tuple2!28000 0))(
  ( (tuple2!28001 (_1!16541 List!28459) (_2!16541 List!28459)) )
))
(declare-datatypes ((Option!5611 0))(
  ( (None!5610) (Some!5610 (v!31018 tuple2!28000)) )
))
(declare-fun call!147742 () Option!5611)

(declare-fun findConcatSeparation!719 (Regex!7110 Regex!7110 List!28459 List!28459 List!28459) Option!5611)

(assert (=> bm!147733 (= call!147742 (findConcatSeparation!719 lt!874814 lt!874813 Nil!28361 s!9460 s!9460))))

(declare-fun b!2419099 () Bool)

(declare-fun e!1539226 () Bool)

(declare-fun tp!769025 () Bool)

(declare-fun tp!769022 () Bool)

(assert (=> b!2419099 (= e!1539226 (and tp!769025 tp!769022))))

(declare-fun bm!147734 () Bool)

(declare-fun call!147738 () Bool)

(declare-fun isDefined!4437 (Option!5611) Bool)

(assert (=> bm!147734 (= call!147738 (isDefined!4437 call!147742))))

(declare-fun b!2419100 () Bool)

(declare-fun lambda!91112 () Int)

(declare-fun forall!5744 (List!28458 Int) Bool)

(assert (=> b!2419100 (= e!1539223 (forall!5744 (t!208435 l!9164) lambda!91112))))

(declare-fun b!2419101 () Bool)

(declare-fun res!1027364 () Bool)

(assert (=> b!2419101 (=> (not res!1027364) (not e!1539219))))

(declare-fun generalisedConcat!211 (List!28458) Regex!7110)

(assert (=> b!2419101 (= res!1027364 (= r!13927 (generalisedConcat!211 l!9164)))))

(declare-fun bm!147735 () Bool)

(declare-fun call!147737 () Option!5611)

(assert (=> bm!147735 (= call!147737 (findConcatSeparation!719 lt!874814 EmptyExpr!7110 Nil!28361 s!9460 s!9460))))

(declare-fun b!2419102 () Bool)

(assert (=> b!2419102 e!1539222))

(declare-fun res!1027372 () Bool)

(assert (=> b!2419102 (=> (not res!1027372) (not e!1539222))))

(assert (=> b!2419102 (= res!1027372 call!147741)))

(declare-fun lt!874817 () tuple2!28000)

(declare-fun lt!874823 () Unit!41519)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!59 (Regex!7110 Regex!7110 List!28459 List!28459 List!28459) Unit!41519)

(assert (=> b!2419102 (= lt!874823 (lemmaFindSeparationIsDefinedThenConcatMatches!59 lt!874814 EmptyExpr!7110 (_1!16541 lt!874817) (_2!16541 lt!874817) s!9460))))

(declare-fun lt!874818 () Option!5611)

(declare-fun get!8718 (Option!5611) tuple2!28000)

(assert (=> b!2419102 (= lt!874817 (get!8718 lt!874818))))

(declare-fun Unit!41523 () Unit!41519)

(assert (=> b!2419102 (= e!1539228 Unit!41523)))

(declare-fun bm!147736 () Bool)

(declare-fun ++!7031 (List!28459 List!28459) List!28459)

(assert (=> bm!147736 (= call!147739 (++!7031 (ite c!385571 s!9460 (_1!16541 lt!874817)) (ite c!385571 Nil!28361 (_2!16541 lt!874817))))))

(declare-fun b!2419103 () Bool)

(assert (=> b!2419103 (= e!1539220 e!1539229)))

(declare-fun res!1027365 () Bool)

(assert (=> b!2419103 (=> res!1027365 e!1539229)))

(assert (=> b!2419103 (= res!1027365 (not (= lt!874813 EmptyExpr!7110)))))

(assert (=> b!2419103 (= lt!874813 (generalisedConcat!211 lt!874822))))

(declare-fun bm!147737 () Bool)

(assert (=> bm!147737 (= call!147740 (isDefined!4437 (ite c!385571 call!147737 lt!874818)))))

(declare-fun b!2419104 () Bool)

(declare-fun Unit!41524 () Unit!41519)

(assert (=> b!2419104 (= e!1539221 Unit!41524)))

(assert (=> b!2419104 (= lt!874818 call!147737)))

(declare-fun lt!874824 () Bool)

(assert (=> b!2419104 (= lt!874824 call!147740)))

(declare-fun c!385570 () Bool)

(assert (=> b!2419104 (= c!385570 lt!874824)))

(declare-fun lt!874816 () Unit!41519)

(assert (=> b!2419104 (= lt!874816 e!1539228)))

(declare-fun res!1027369 () Bool)

(assert (=> b!2419104 (= res!1027369 (not lt!874824))))

(declare-fun e!1539224 () Bool)

(assert (=> b!2419104 (=> (not res!1027369) (not e!1539224))))

(assert (=> b!2419104 e!1539224))

(declare-fun b!2419105 () Bool)

(assert (=> b!2419105 (= e!1539231 call!147738)))

(declare-fun b!2419106 () Bool)

(declare-fun e!1539225 () Bool)

(declare-fun tp!769023 () Bool)

(assert (=> b!2419106 (= e!1539225 tp!769023)))

(declare-fun b!2419107 () Bool)

(assert (=> b!2419107 (= e!1539225 tp_is_empty!11633)))

(declare-fun b!2419108 () Bool)

(assert (=> b!2419108 (= e!1539224 (not call!147738))))

(declare-fun b!2419109 () Bool)

(declare-fun tp!769024 () Bool)

(declare-fun tp!769026 () Bool)

(assert (=> b!2419109 (= e!1539225 (and tp!769024 tp!769026))))

(declare-fun b!2419096 () Bool)

(declare-fun tp!769021 () Bool)

(declare-fun tp!769027 () Bool)

(assert (=> b!2419096 (= e!1539225 (and tp!769021 tp!769027))))

(declare-fun res!1027370 () Bool)

(assert (=> start!236982 (=> (not res!1027370) (not e!1539219))))

(assert (=> start!236982 (= res!1027370 (forall!5744 l!9164 lambda!91112))))

(assert (=> start!236982 e!1539219))

(assert (=> start!236982 e!1539226))

(assert (=> start!236982 e!1539225))

(assert (=> start!236982 e!1539230))

(assert (= (and start!236982 res!1027370) b!2419101))

(assert (= (and b!2419101 res!1027364) b!2419094))

(assert (= (and b!2419094 (not res!1027367)) b!2419097))

(assert (= (and b!2419097 (not res!1027373)) b!2419095))

(assert (= (and b!2419095 (not res!1027371)) b!2419103))

(assert (= (and b!2419103 (not res!1027365)) b!2419091))

(assert (= (and b!2419091 c!385571) b!2419092))

(assert (= (and b!2419091 (not c!385571)) b!2419104))

(assert (= (and b!2419092 res!1027366) b!2419090))

(assert (= (and b!2419092 res!1027363) b!2419105))

(assert (= (and b!2419104 c!385570) b!2419102))

(assert (= (and b!2419104 (not c!385570)) b!2419093))

(assert (= (and b!2419102 res!1027372) b!2419089))

(assert (= (and b!2419104 res!1027369) b!2419108))

(assert (= (or b!2419105 b!2419108) bm!147733))

(assert (= (or b!2419092 b!2419102) bm!147736))

(assert (= (or b!2419092 b!2419104) bm!147735))

(assert (= (or b!2419092 b!2419104) bm!147737))

(assert (= (or b!2419090 b!2419102) bm!147732))

(assert (= (or b!2419105 b!2419108) bm!147734))

(assert (= (and b!2419091 (not res!1027368)) b!2419100))

(assert (= (and start!236982 (is-Cons!28360 l!9164)) b!2419099))

(assert (= (and start!236982 (is-ElementMatch!7110 r!13927)) b!2419107))

(assert (= (and start!236982 (is-Concat!11746 r!13927)) b!2419109))

(assert (= (and start!236982 (is-Star!7110 r!13927)) b!2419106))

(assert (= (and start!236982 (is-Union!7110 r!13927)) b!2419096))

(assert (= (and start!236982 (is-Cons!28361 s!9460)) b!2419098))

(declare-fun m!2806479 () Bool)

(assert (=> b!2419094 m!2806479))

(declare-fun m!2806481 () Bool)

(assert (=> b!2419094 m!2806481))

(declare-fun m!2806483 () Bool)

(assert (=> b!2419094 m!2806483))

(declare-fun m!2806485 () Bool)

(assert (=> start!236982 m!2806485))

(declare-fun m!2806487 () Bool)

(assert (=> b!2419095 m!2806487))

(declare-fun m!2806489 () Bool)

(assert (=> b!2419095 m!2806489))

(declare-fun m!2806491 () Bool)

(assert (=> b!2419091 m!2806491))

(declare-fun m!2806493 () Bool)

(assert (=> b!2419091 m!2806493))

(declare-fun m!2806495 () Bool)

(assert (=> b!2419100 m!2806495))

(declare-fun m!2806497 () Bool)

(assert (=> b!2419092 m!2806497))

(declare-fun m!2806499 () Bool)

(assert (=> b!2419092 m!2806499))

(declare-fun m!2806501 () Bool)

(assert (=> b!2419092 m!2806501))

(declare-fun m!2806503 () Bool)

(assert (=> b!2419102 m!2806503))

(declare-fun m!2806505 () Bool)

(assert (=> b!2419102 m!2806505))

(declare-fun m!2806507 () Bool)

(assert (=> bm!147734 m!2806507))

(declare-fun m!2806509 () Bool)

(assert (=> bm!147735 m!2806509))

(declare-fun m!2806511 () Bool)

(assert (=> bm!147732 m!2806511))

(declare-fun m!2806513 () Bool)

(assert (=> bm!147736 m!2806513))

(declare-fun m!2806515 () Bool)

(assert (=> bm!147733 m!2806515))

(declare-fun m!2806517 () Bool)

(assert (=> b!2419101 m!2806517))

(declare-fun m!2806519 () Bool)

(assert (=> b!2419103 m!2806519))

(declare-fun m!2806521 () Bool)

(assert (=> b!2419097 m!2806521))

(declare-fun m!2806523 () Bool)

(assert (=> bm!147737 m!2806523))

(push 1)

(assert (not b!2419103))

(assert (not b!2419098))

(assert (not b!2419092))

(assert (not b!2419109))

(assert (not bm!147733))

(assert (not b!2419096))

(assert (not bm!147736))

(assert (not b!2419100))

(assert (not b!2419095))

(assert (not b!2419091))

(assert (not bm!147732))

(assert (not bm!147734))

(assert (not bm!147735))

(assert (not b!2419102))

(assert (not b!2419099))

(assert (not b!2419094))

(assert (not b!2419097))

(assert (not b!2419106))

(assert (not b!2419101))

(assert tp_is_empty!11633)

(assert (not bm!147737))

(assert (not start!236982))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2419191 () Bool)

(declare-fun res!1027420 () Bool)

(declare-fun e!1539286 () Bool)

(assert (=> b!2419191 (=> (not res!1027420) (not e!1539286))))

(declare-fun lt!874871 () Option!5611)

(assert (=> b!2419191 (= res!1027420 (matchR!3227 lt!874813 (_2!16541 (get!8718 lt!874871))))))

(declare-fun b!2419192 () Bool)

(assert (=> b!2419192 (= e!1539286 (= (++!7031 (_1!16541 (get!8718 lt!874871)) (_2!16541 (get!8718 lt!874871))) s!9460))))

(declare-fun b!2419193 () Bool)

(declare-fun e!1539289 () Bool)

(assert (=> b!2419193 (= e!1539289 (not (isDefined!4437 lt!874871)))))

(declare-fun d!701580 () Bool)

(assert (=> d!701580 e!1539289))

(declare-fun res!1027417 () Bool)

(assert (=> d!701580 (=> res!1027417 e!1539289)))

(assert (=> d!701580 (= res!1027417 e!1539286)))

(declare-fun res!1027419 () Bool)

(assert (=> d!701580 (=> (not res!1027419) (not e!1539286))))

(assert (=> d!701580 (= res!1027419 (isDefined!4437 lt!874871))))

(declare-fun e!1539288 () Option!5611)

(assert (=> d!701580 (= lt!874871 e!1539288)))

(declare-fun c!385584 () Bool)

(declare-fun e!1539287 () Bool)

(assert (=> d!701580 (= c!385584 e!1539287)))

(declare-fun res!1027418 () Bool)

(assert (=> d!701580 (=> (not res!1027418) (not e!1539287))))

(assert (=> d!701580 (= res!1027418 (matchR!3227 lt!874814 Nil!28361))))

(declare-fun validRegex!2830 (Regex!7110) Bool)

(assert (=> d!701580 (validRegex!2830 lt!874814)))

(assert (=> d!701580 (= (findConcatSeparation!719 lt!874814 lt!874813 Nil!28361 s!9460 s!9460) lt!874871)))

(declare-fun b!2419194 () Bool)

(assert (=> b!2419194 (= e!1539288 (Some!5610 (tuple2!28001 Nil!28361 s!9460)))))

(declare-fun b!2419195 () Bool)

(declare-fun e!1539285 () Option!5611)

(assert (=> b!2419195 (= e!1539285 None!5610)))

(declare-fun b!2419196 () Bool)

(assert (=> b!2419196 (= e!1539288 e!1539285)))

(declare-fun c!385585 () Bool)

(assert (=> b!2419196 (= c!385585 (is-Nil!28361 s!9460))))

(declare-fun b!2419197 () Bool)

(declare-fun lt!874873 () Unit!41519)

(declare-fun lt!874872 () Unit!41519)

(assert (=> b!2419197 (= lt!874873 lt!874872)))

(assert (=> b!2419197 (= (++!7031 (++!7031 Nil!28361 (Cons!28361 (h!33762 s!9460) Nil!28361)) (t!208436 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!657 (List!28459 C!14378 List!28459 List!28459) Unit!41519)

(assert (=> b!2419197 (= lt!874872 (lemmaMoveElementToOtherListKeepsConcatEq!657 Nil!28361 (h!33762 s!9460) (t!208436 s!9460) s!9460))))

(assert (=> b!2419197 (= e!1539285 (findConcatSeparation!719 lt!874814 lt!874813 (++!7031 Nil!28361 (Cons!28361 (h!33762 s!9460) Nil!28361)) (t!208436 s!9460) s!9460))))

(declare-fun b!2419198 () Bool)

(assert (=> b!2419198 (= e!1539287 (matchR!3227 lt!874813 s!9460))))

(declare-fun b!2419199 () Bool)

(declare-fun res!1027421 () Bool)

(assert (=> b!2419199 (=> (not res!1027421) (not e!1539286))))

(assert (=> b!2419199 (= res!1027421 (matchR!3227 lt!874814 (_1!16541 (get!8718 lt!874871))))))

(assert (= (and d!701580 res!1027418) b!2419198))

(assert (= (and d!701580 c!385584) b!2419194))

(assert (= (and d!701580 (not c!385584)) b!2419196))

(assert (= (and b!2419196 c!385585) b!2419195))

(assert (= (and b!2419196 (not c!385585)) b!2419197))

(assert (= (and d!701580 res!1027419) b!2419199))

(assert (= (and b!2419199 res!1027421) b!2419191))

(assert (= (and b!2419191 res!1027420) b!2419192))

(assert (= (and d!701580 (not res!1027417)) b!2419193))

(declare-fun m!2806571 () Bool)

(assert (=> d!701580 m!2806571))

(declare-fun m!2806573 () Bool)

(assert (=> d!701580 m!2806573))

(declare-fun m!2806575 () Bool)

(assert (=> d!701580 m!2806575))

(declare-fun m!2806577 () Bool)

(assert (=> b!2419197 m!2806577))

(assert (=> b!2419197 m!2806577))

(declare-fun m!2806579 () Bool)

(assert (=> b!2419197 m!2806579))

(declare-fun m!2806581 () Bool)

(assert (=> b!2419197 m!2806581))

(assert (=> b!2419197 m!2806577))

(declare-fun m!2806583 () Bool)

(assert (=> b!2419197 m!2806583))

(declare-fun m!2806585 () Bool)

(assert (=> b!2419191 m!2806585))

(declare-fun m!2806587 () Bool)

(assert (=> b!2419191 m!2806587))

(declare-fun m!2806589 () Bool)

(assert (=> b!2419198 m!2806589))

(assert (=> b!2419193 m!2806571))

(assert (=> b!2419192 m!2806585))

(declare-fun m!2806591 () Bool)

(assert (=> b!2419192 m!2806591))

(assert (=> b!2419199 m!2806585))

(declare-fun m!2806593 () Bool)

(assert (=> b!2419199 m!2806593))

(assert (=> bm!147733 d!701580))

(declare-fun d!701584 () Bool)

(declare-fun isEmpty!16378 (Option!5611) Bool)

(assert (=> d!701584 (= (isDefined!4437 (ite c!385571 call!147737 lt!874818)) (not (isEmpty!16378 (ite c!385571 call!147737 lt!874818))))))

(declare-fun bs!463661 () Bool)

(assert (= bs!463661 d!701584))

(declare-fun m!2806595 () Bool)

(assert (=> bs!463661 m!2806595))

(assert (=> bm!147737 d!701584))

(declare-fun bm!147758 () Bool)

(declare-fun call!147763 () Bool)

(declare-fun isEmpty!16379 (List!28459) Bool)

(assert (=> bm!147758 (= call!147763 (isEmpty!16379 (ite c!385571 s!9460 call!147739)))))

(declare-fun b!2419240 () Bool)

(declare-fun e!1539314 () Bool)

(declare-fun lt!874879 () Bool)

(assert (=> b!2419240 (= e!1539314 (= lt!874879 call!147763))))

(declare-fun b!2419241 () Bool)

(declare-fun res!1027451 () Bool)

(declare-fun e!1539312 () Bool)

(assert (=> b!2419241 (=> res!1027451 e!1539312)))

(declare-fun e!1539310 () Bool)

(assert (=> b!2419241 (= res!1027451 e!1539310)))

(declare-fun res!1027447 () Bool)

(assert (=> b!2419241 (=> (not res!1027447) (not e!1539310))))

(assert (=> b!2419241 (= res!1027447 lt!874879)))

(declare-fun b!2419242 () Bool)

(declare-fun res!1027444 () Bool)

(assert (=> b!2419242 (=> (not res!1027444) (not e!1539310))))

(assert (=> b!2419242 (= res!1027444 (not call!147763))))

(declare-fun b!2419244 () Bool)

(declare-fun res!1027445 () Bool)

(declare-fun e!1539313 () Bool)

(assert (=> b!2419244 (=> res!1027445 e!1539313)))

(declare-fun tail!3706 (List!28459) List!28459)

(assert (=> b!2419244 (= res!1027445 (not (isEmpty!16379 (tail!3706 (ite c!385571 s!9460 call!147739)))))))

(declare-fun e!1539315 () Bool)

(declare-fun b!2419245 () Bool)

(declare-fun nullable!2145 (Regex!7110) Bool)

(assert (=> b!2419245 (= e!1539315 (nullable!2145 (ite c!385571 lt!874820 (Concat!11746 lt!874814 EmptyExpr!7110))))))

(declare-fun b!2419246 () Bool)

(declare-fun e!1539311 () Bool)

(assert (=> b!2419246 (= e!1539311 e!1539313)))

(declare-fun res!1027449 () Bool)

(assert (=> b!2419246 (=> res!1027449 e!1539313)))

(assert (=> b!2419246 (= res!1027449 call!147763)))

(declare-fun b!2419247 () Bool)

(declare-fun res!1027446 () Bool)

(assert (=> b!2419247 (=> (not res!1027446) (not e!1539310))))

(assert (=> b!2419247 (= res!1027446 (isEmpty!16379 (tail!3706 (ite c!385571 s!9460 call!147739))))))

(declare-fun b!2419248 () Bool)

(declare-fun res!1027450 () Bool)

(assert (=> b!2419248 (=> res!1027450 e!1539312)))

(assert (=> b!2419248 (= res!1027450 (not (is-ElementMatch!7110 (ite c!385571 lt!874820 (Concat!11746 lt!874814 EmptyExpr!7110)))))))

(declare-fun e!1539316 () Bool)

(assert (=> b!2419248 (= e!1539316 e!1539312)))

(declare-fun b!2419249 () Bool)

(assert (=> b!2419249 (= e!1539312 e!1539311)))

(declare-fun res!1027448 () Bool)

(assert (=> b!2419249 (=> (not res!1027448) (not e!1539311))))

(assert (=> b!2419249 (= res!1027448 (not lt!874879))))

(declare-fun b!2419243 () Bool)

(declare-fun derivativeStep!1802 (Regex!7110 C!14378) Regex!7110)

(declare-fun head!5434 (List!28459) C!14378)

(assert (=> b!2419243 (= e!1539315 (matchR!3227 (derivativeStep!1802 (ite c!385571 lt!874820 (Concat!11746 lt!874814 EmptyExpr!7110)) (head!5434 (ite c!385571 s!9460 call!147739))) (tail!3706 (ite c!385571 s!9460 call!147739))))))

(declare-fun d!701586 () Bool)

(assert (=> d!701586 e!1539314))

(declare-fun c!385597 () Bool)

(assert (=> d!701586 (= c!385597 (is-EmptyExpr!7110 (ite c!385571 lt!874820 (Concat!11746 lt!874814 EmptyExpr!7110))))))

(assert (=> d!701586 (= lt!874879 e!1539315)))

(declare-fun c!385596 () Bool)

(assert (=> d!701586 (= c!385596 (isEmpty!16379 (ite c!385571 s!9460 call!147739)))))

(assert (=> d!701586 (validRegex!2830 (ite c!385571 lt!874820 (Concat!11746 lt!874814 EmptyExpr!7110)))))

(assert (=> d!701586 (= (matchR!3227 (ite c!385571 lt!874820 (Concat!11746 lt!874814 EmptyExpr!7110)) (ite c!385571 s!9460 call!147739)) lt!874879)))

(declare-fun b!2419250 () Bool)

(assert (=> b!2419250 (= e!1539314 e!1539316)))

(declare-fun c!385595 () Bool)

(assert (=> b!2419250 (= c!385595 (is-EmptyLang!7110 (ite c!385571 lt!874820 (Concat!11746 lt!874814 EmptyExpr!7110))))))

(declare-fun b!2419251 () Bool)

(assert (=> b!2419251 (= e!1539313 (not (= (head!5434 (ite c!385571 s!9460 call!147739)) (c!385572 (ite c!385571 lt!874820 (Concat!11746 lt!874814 EmptyExpr!7110))))))))

(declare-fun b!2419252 () Bool)

(assert (=> b!2419252 (= e!1539316 (not lt!874879))))

(declare-fun b!2419253 () Bool)

(assert (=> b!2419253 (= e!1539310 (= (head!5434 (ite c!385571 s!9460 call!147739)) (c!385572 (ite c!385571 lt!874820 (Concat!11746 lt!874814 EmptyExpr!7110)))))))

(assert (= (and d!701586 c!385596) b!2419245))

(assert (= (and d!701586 (not c!385596)) b!2419243))

(assert (= (and d!701586 c!385597) b!2419240))

(assert (= (and d!701586 (not c!385597)) b!2419250))

(assert (= (and b!2419250 c!385595) b!2419252))

(assert (= (and b!2419250 (not c!385595)) b!2419248))

(assert (= (and b!2419248 (not res!1027450)) b!2419241))

(assert (= (and b!2419241 res!1027447) b!2419242))

(assert (= (and b!2419242 res!1027444) b!2419247))

(assert (= (and b!2419247 res!1027446) b!2419253))

(assert (= (and b!2419241 (not res!1027451)) b!2419249))

(assert (= (and b!2419249 res!1027448) b!2419246))

(assert (= (and b!2419246 (not res!1027449)) b!2419244))

(assert (= (and b!2419244 (not res!1027445)) b!2419251))

(assert (= (or b!2419240 b!2419242 b!2419246) bm!147758))

(declare-fun m!2806611 () Bool)

(assert (=> b!2419243 m!2806611))

(assert (=> b!2419243 m!2806611))

(declare-fun m!2806613 () Bool)

(assert (=> b!2419243 m!2806613))

(declare-fun m!2806615 () Bool)

(assert (=> b!2419243 m!2806615))

(assert (=> b!2419243 m!2806613))

(assert (=> b!2419243 m!2806615))

(declare-fun m!2806617 () Bool)

(assert (=> b!2419243 m!2806617))

(assert (=> b!2419247 m!2806615))

(assert (=> b!2419247 m!2806615))

(declare-fun m!2806619 () Bool)

(assert (=> b!2419247 m!2806619))

(declare-fun m!2806621 () Bool)

(assert (=> bm!147758 m!2806621))

(declare-fun m!2806623 () Bool)

(assert (=> b!2419245 m!2806623))

(assert (=> b!2419244 m!2806615))

(assert (=> b!2419244 m!2806615))

(assert (=> b!2419244 m!2806619))

(assert (=> b!2419251 m!2806611))

(assert (=> d!701586 m!2806621))

(declare-fun m!2806625 () Bool)

(assert (=> d!701586 m!2806625))

(assert (=> b!2419253 m!2806611))

(assert (=> bm!147732 d!701586))

(declare-fun bs!463662 () Bool)

(declare-fun d!701590 () Bool)

(assert (= bs!463662 (and d!701590 start!236982)))

(declare-fun lambda!91122 () Int)

(assert (=> bs!463662 (= lambda!91122 lambda!91112)))

(declare-fun b!2419294 () Bool)

(declare-fun e!1539342 () Bool)

(declare-fun e!1539344 () Bool)

(assert (=> b!2419294 (= e!1539342 e!1539344)))

(declare-fun c!385614 () Bool)

(assert (=> b!2419294 (= c!385614 (isEmpty!16376 (tail!3704 lt!874822)))))

(declare-fun b!2419295 () Bool)

(declare-fun e!1539345 () Regex!7110)

(assert (=> b!2419295 (= e!1539345 (Concat!11746 (h!33761 lt!874822) (generalisedConcat!211 (t!208435 lt!874822))))))

(declare-fun b!2419296 () Bool)

(declare-fun lt!874884 () Regex!7110)

(assert (=> b!2419296 (= e!1539344 (= lt!874884 (head!5432 lt!874822)))))

(declare-fun b!2419297 () Bool)

(declare-fun e!1539346 () Regex!7110)

(assert (=> b!2419297 (= e!1539346 e!1539345)))

(declare-fun c!385617 () Bool)

(assert (=> b!2419297 (= c!385617 (is-Cons!28360 lt!874822))))

(declare-fun b!2419298 () Bool)

(declare-fun isEmptyExpr!165 (Regex!7110) Bool)

(assert (=> b!2419298 (= e!1539342 (isEmptyExpr!165 lt!874884))))

(declare-fun b!2419300 () Bool)

(declare-fun e!1539343 () Bool)

(assert (=> b!2419300 (= e!1539343 (isEmpty!16376 (t!208435 lt!874822)))))

(declare-fun b!2419301 () Bool)

(declare-fun e!1539341 () Bool)

(assert (=> b!2419301 (= e!1539341 e!1539342)))

(declare-fun c!385616 () Bool)

(assert (=> b!2419301 (= c!385616 (isEmpty!16376 lt!874822))))

(declare-fun b!2419302 () Bool)

(assert (=> b!2419302 (= e!1539345 EmptyExpr!7110)))

(declare-fun b!2419303 () Bool)

(declare-fun isConcat!165 (Regex!7110) Bool)

(assert (=> b!2419303 (= e!1539344 (isConcat!165 lt!874884))))

(declare-fun b!2419299 () Bool)

(assert (=> b!2419299 (= e!1539346 (h!33761 lt!874822))))

(assert (=> d!701590 e!1539341))

(declare-fun res!1027460 () Bool)

(assert (=> d!701590 (=> (not res!1027460) (not e!1539341))))

(assert (=> d!701590 (= res!1027460 (validRegex!2830 lt!874884))))

(assert (=> d!701590 (= lt!874884 e!1539346)))

(declare-fun c!385615 () Bool)

(assert (=> d!701590 (= c!385615 e!1539343)))

(declare-fun res!1027461 () Bool)

(assert (=> d!701590 (=> (not res!1027461) (not e!1539343))))

(assert (=> d!701590 (= res!1027461 (is-Cons!28360 lt!874822))))

(assert (=> d!701590 (forall!5744 lt!874822 lambda!91122)))

(assert (=> d!701590 (= (generalisedConcat!211 lt!874822) lt!874884)))

(assert (= (and d!701590 res!1027461) b!2419300))

(assert (= (and d!701590 c!385615) b!2419299))

(assert (= (and d!701590 (not c!385615)) b!2419297))

(assert (= (and b!2419297 c!385617) b!2419295))

(assert (= (and b!2419297 (not c!385617)) b!2419302))

(assert (= (and d!701590 res!1027460) b!2419301))

(assert (= (and b!2419301 c!385616) b!2419298))

(assert (= (and b!2419301 (not c!385616)) b!2419294))

(assert (= (and b!2419294 c!385614) b!2419296))

(assert (= (and b!2419294 (not c!385614)) b!2419303))

(declare-fun m!2806627 () Bool)

(assert (=> b!2419296 m!2806627))

(declare-fun m!2806629 () Bool)

(assert (=> b!2419303 m!2806629))

(declare-fun m!2806631 () Bool)

(assert (=> b!2419295 m!2806631))

(declare-fun m!2806633 () Bool)

(assert (=> b!2419298 m!2806633))

(assert (=> b!2419301 m!2806487))

(declare-fun m!2806635 () Bool)

(assert (=> b!2419300 m!2806635))

(declare-fun m!2806637 () Bool)

(assert (=> d!701590 m!2806637))

(declare-fun m!2806639 () Bool)

(assert (=> d!701590 m!2806639))

(declare-fun m!2806641 () Bool)

(assert (=> b!2419294 m!2806641))

(assert (=> b!2419294 m!2806641))

(declare-fun m!2806643 () Bool)

(assert (=> b!2419294 m!2806643))

(assert (=> b!2419103 d!701590))

(declare-fun d!701592 () Bool)

(assert (=> d!701592 (= (isEmpty!16376 l!9164) (is-Nil!28360 l!9164))))

(assert (=> b!2419097 d!701592))

(declare-fun b!2419322 () Bool)

(declare-fun e!1539358 () List!28459)

(assert (=> b!2419322 (= e!1539358 (ite c!385571 Nil!28361 (_2!16541 lt!874817)))))

(declare-fun d!701594 () Bool)

(declare-fun e!1539357 () Bool)

(assert (=> d!701594 e!1539357))

(declare-fun res!1027469 () Bool)

(assert (=> d!701594 (=> (not res!1027469) (not e!1539357))))

(declare-fun lt!874888 () List!28459)

(declare-fun content!3896 (List!28459) (Set C!14378))

(assert (=> d!701594 (= res!1027469 (= (content!3896 lt!874888) (set.union (content!3896 (ite c!385571 s!9460 (_1!16541 lt!874817))) (content!3896 (ite c!385571 Nil!28361 (_2!16541 lt!874817))))))))

(assert (=> d!701594 (= lt!874888 e!1539358)))

(declare-fun c!385624 () Bool)

(assert (=> d!701594 (= c!385624 (is-Nil!28361 (ite c!385571 s!9460 (_1!16541 lt!874817))))))

(assert (=> d!701594 (= (++!7031 (ite c!385571 s!9460 (_1!16541 lt!874817)) (ite c!385571 Nil!28361 (_2!16541 lt!874817))) lt!874888)))

(declare-fun b!2419325 () Bool)

(assert (=> b!2419325 (= e!1539357 (or (not (= (ite c!385571 Nil!28361 (_2!16541 lt!874817)) Nil!28361)) (= lt!874888 (ite c!385571 s!9460 (_1!16541 lt!874817)))))))

(declare-fun b!2419323 () Bool)

(assert (=> b!2419323 (= e!1539358 (Cons!28361 (h!33762 (ite c!385571 s!9460 (_1!16541 lt!874817))) (++!7031 (t!208436 (ite c!385571 s!9460 (_1!16541 lt!874817))) (ite c!385571 Nil!28361 (_2!16541 lt!874817)))))))

(declare-fun b!2419324 () Bool)

(declare-fun res!1027468 () Bool)

(assert (=> b!2419324 (=> (not res!1027468) (not e!1539357))))

(declare-fun size!22234 (List!28459) Int)

(assert (=> b!2419324 (= res!1027468 (= (size!22234 lt!874888) (+ (size!22234 (ite c!385571 s!9460 (_1!16541 lt!874817))) (size!22234 (ite c!385571 Nil!28361 (_2!16541 lt!874817))))))))

(assert (= (and d!701594 c!385624) b!2419322))

(assert (= (and d!701594 (not c!385624)) b!2419323))

(assert (= (and d!701594 res!1027469) b!2419324))

(assert (= (and b!2419324 res!1027468) b!2419325))

(declare-fun m!2806645 () Bool)

(assert (=> d!701594 m!2806645))

(declare-fun m!2806647 () Bool)

(assert (=> d!701594 m!2806647))

(declare-fun m!2806649 () Bool)

(assert (=> d!701594 m!2806649))

(declare-fun m!2806651 () Bool)

(assert (=> b!2419323 m!2806651))

(declare-fun m!2806653 () Bool)

(assert (=> b!2419324 m!2806653))

(declare-fun m!2806655 () Bool)

(assert (=> b!2419324 m!2806655))

(declare-fun m!2806657 () Bool)

(assert (=> b!2419324 m!2806657))

(assert (=> bm!147736 d!701594))

(declare-fun b!2419326 () Bool)

(declare-fun res!1027473 () Bool)

(declare-fun e!1539360 () Bool)

(assert (=> b!2419326 (=> (not res!1027473) (not e!1539360))))

(declare-fun lt!874889 () Option!5611)

(assert (=> b!2419326 (= res!1027473 (matchR!3227 EmptyExpr!7110 (_2!16541 (get!8718 lt!874889))))))

(declare-fun b!2419327 () Bool)

(assert (=> b!2419327 (= e!1539360 (= (++!7031 (_1!16541 (get!8718 lt!874889)) (_2!16541 (get!8718 lt!874889))) s!9460))))

(declare-fun b!2419328 () Bool)

(declare-fun e!1539363 () Bool)

(assert (=> b!2419328 (= e!1539363 (not (isDefined!4437 lt!874889)))))

(declare-fun d!701596 () Bool)

(assert (=> d!701596 e!1539363))

(declare-fun res!1027470 () Bool)

(assert (=> d!701596 (=> res!1027470 e!1539363)))

(assert (=> d!701596 (= res!1027470 e!1539360)))

(declare-fun res!1027472 () Bool)

(assert (=> d!701596 (=> (not res!1027472) (not e!1539360))))

(assert (=> d!701596 (= res!1027472 (isDefined!4437 lt!874889))))

(declare-fun e!1539362 () Option!5611)

(assert (=> d!701596 (= lt!874889 e!1539362)))

(declare-fun c!385625 () Bool)

(declare-fun e!1539361 () Bool)

(assert (=> d!701596 (= c!385625 e!1539361)))

(declare-fun res!1027471 () Bool)

(assert (=> d!701596 (=> (not res!1027471) (not e!1539361))))

(assert (=> d!701596 (= res!1027471 (matchR!3227 lt!874814 Nil!28361))))

(assert (=> d!701596 (validRegex!2830 lt!874814)))

(assert (=> d!701596 (= (findConcatSeparation!719 lt!874814 EmptyExpr!7110 Nil!28361 s!9460 s!9460) lt!874889)))

(declare-fun b!2419329 () Bool)

(assert (=> b!2419329 (= e!1539362 (Some!5610 (tuple2!28001 Nil!28361 s!9460)))))

(declare-fun b!2419330 () Bool)

(declare-fun e!1539359 () Option!5611)

(assert (=> b!2419330 (= e!1539359 None!5610)))

(declare-fun b!2419331 () Bool)

(assert (=> b!2419331 (= e!1539362 e!1539359)))

(declare-fun c!385626 () Bool)

(assert (=> b!2419331 (= c!385626 (is-Nil!28361 s!9460))))

(declare-fun b!2419332 () Bool)

(declare-fun lt!874891 () Unit!41519)

(declare-fun lt!874890 () Unit!41519)

(assert (=> b!2419332 (= lt!874891 lt!874890)))

(assert (=> b!2419332 (= (++!7031 (++!7031 Nil!28361 (Cons!28361 (h!33762 s!9460) Nil!28361)) (t!208436 s!9460)) s!9460)))

(assert (=> b!2419332 (= lt!874890 (lemmaMoveElementToOtherListKeepsConcatEq!657 Nil!28361 (h!33762 s!9460) (t!208436 s!9460) s!9460))))

(assert (=> b!2419332 (= e!1539359 (findConcatSeparation!719 lt!874814 EmptyExpr!7110 (++!7031 Nil!28361 (Cons!28361 (h!33762 s!9460) Nil!28361)) (t!208436 s!9460) s!9460))))

(declare-fun b!2419333 () Bool)

(assert (=> b!2419333 (= e!1539361 (matchR!3227 EmptyExpr!7110 s!9460))))

(declare-fun b!2419334 () Bool)

(declare-fun res!1027474 () Bool)

(assert (=> b!2419334 (=> (not res!1027474) (not e!1539360))))

(assert (=> b!2419334 (= res!1027474 (matchR!3227 lt!874814 (_1!16541 (get!8718 lt!874889))))))

(assert (= (and d!701596 res!1027471) b!2419333))

(assert (= (and d!701596 c!385625) b!2419329))

(assert (= (and d!701596 (not c!385625)) b!2419331))

(assert (= (and b!2419331 c!385626) b!2419330))

(assert (= (and b!2419331 (not c!385626)) b!2419332))

(assert (= (and d!701596 res!1027472) b!2419334))

(assert (= (and b!2419334 res!1027474) b!2419326))

(assert (= (and b!2419326 res!1027473) b!2419327))

(assert (= (and d!701596 (not res!1027470)) b!2419328))

(declare-fun m!2806659 () Bool)

(assert (=> d!701596 m!2806659))

(assert (=> d!701596 m!2806573))

(assert (=> d!701596 m!2806575))

(assert (=> b!2419332 m!2806577))

(assert (=> b!2419332 m!2806577))

(assert (=> b!2419332 m!2806579))

(assert (=> b!2419332 m!2806581))

(assert (=> b!2419332 m!2806577))

(declare-fun m!2806663 () Bool)

(assert (=> b!2419332 m!2806663))

(declare-fun m!2806665 () Bool)

(assert (=> b!2419326 m!2806665))

(declare-fun m!2806669 () Bool)

(assert (=> b!2419326 m!2806669))

(declare-fun m!2806673 () Bool)

(assert (=> b!2419333 m!2806673))

(assert (=> b!2419328 m!2806659))

(assert (=> b!2419327 m!2806665))

(declare-fun m!2806677 () Bool)

(assert (=> b!2419327 m!2806677))

(assert (=> b!2419334 m!2806665))

(declare-fun m!2806681 () Bool)

(assert (=> b!2419334 m!2806681))

(assert (=> bm!147735 d!701596))

(declare-fun d!701598 () Bool)

(assert (=> d!701598 (= (isEmpty!16376 lt!874822) (is-Nil!28360 lt!874822))))

(assert (=> b!2419095 d!701598))

(declare-fun d!701600 () Bool)

(assert (=> d!701600 (= (tail!3704 l!9164) (t!208435 l!9164))))

(assert (=> b!2419095 d!701600))

(declare-fun d!701604 () Bool)

(assert (=> d!701604 (matchR!3227 (Concat!11746 lt!874814 EmptyExpr!7110) (++!7031 (_1!16541 lt!874817) (_2!16541 lt!874817)))))

(declare-fun lt!874895 () Unit!41519)

(declare-fun choose!14307 (Regex!7110 Regex!7110 List!28459 List!28459 List!28459) Unit!41519)

(assert (=> d!701604 (= lt!874895 (choose!14307 lt!874814 EmptyExpr!7110 (_1!16541 lt!874817) (_2!16541 lt!874817) s!9460))))

(assert (=> d!701604 (validRegex!2830 lt!874814)))

(assert (=> d!701604 (= (lemmaFindSeparationIsDefinedThenConcatMatches!59 lt!874814 EmptyExpr!7110 (_1!16541 lt!874817) (_2!16541 lt!874817) s!9460) lt!874895)))

(declare-fun bs!463666 () Bool)

(assert (= bs!463666 d!701604))

(declare-fun m!2806705 () Bool)

(assert (=> bs!463666 m!2806705))

(assert (=> bs!463666 m!2806705))

(declare-fun m!2806707 () Bool)

(assert (=> bs!463666 m!2806707))

(declare-fun m!2806709 () Bool)

(assert (=> bs!463666 m!2806709))

(assert (=> bs!463666 m!2806575))

(assert (=> b!2419102 d!701604))

(declare-fun d!701608 () Bool)

(assert (=> d!701608 (= (get!8718 lt!874818) (v!31018 lt!874818))))

(assert (=> b!2419102 d!701608))

(declare-fun bs!463667 () Bool)

(declare-fun d!701610 () Bool)

(assert (= bs!463667 (and d!701610 start!236982)))

(declare-fun lambda!91125 () Int)

(assert (=> bs!463667 (= lambda!91125 lambda!91112)))

(declare-fun bs!463668 () Bool)

(assert (= bs!463668 (and d!701610 d!701590)))

(assert (=> bs!463668 (= lambda!91125 lambda!91122)))

(declare-fun b!2419345 () Bool)

(declare-fun e!1539371 () Bool)

(declare-fun e!1539373 () Bool)

(assert (=> b!2419345 (= e!1539371 e!1539373)))

(declare-fun c!385631 () Bool)

(assert (=> b!2419345 (= c!385631 (isEmpty!16376 (tail!3704 l!9164)))))

(declare-fun b!2419346 () Bool)

(declare-fun e!1539374 () Regex!7110)

(assert (=> b!2419346 (= e!1539374 (Concat!11746 (h!33761 l!9164) (generalisedConcat!211 (t!208435 l!9164))))))

(declare-fun b!2419347 () Bool)

(declare-fun lt!874896 () Regex!7110)

(assert (=> b!2419347 (= e!1539373 (= lt!874896 (head!5432 l!9164)))))

(declare-fun b!2419348 () Bool)

(declare-fun e!1539375 () Regex!7110)

(assert (=> b!2419348 (= e!1539375 e!1539374)))

(declare-fun c!385634 () Bool)

(assert (=> b!2419348 (= c!385634 (is-Cons!28360 l!9164))))

(declare-fun b!2419349 () Bool)

(assert (=> b!2419349 (= e!1539371 (isEmptyExpr!165 lt!874896))))

(declare-fun b!2419351 () Bool)

(declare-fun e!1539372 () Bool)

(assert (=> b!2419351 (= e!1539372 (isEmpty!16376 (t!208435 l!9164)))))

(declare-fun b!2419352 () Bool)

(declare-fun e!1539370 () Bool)

(assert (=> b!2419352 (= e!1539370 e!1539371)))

(declare-fun c!385633 () Bool)

(assert (=> b!2419352 (= c!385633 (isEmpty!16376 l!9164))))

(declare-fun b!2419353 () Bool)

(assert (=> b!2419353 (= e!1539374 EmptyExpr!7110)))

(declare-fun b!2419354 () Bool)

(assert (=> b!2419354 (= e!1539373 (isConcat!165 lt!874896))))

(declare-fun b!2419350 () Bool)

(assert (=> b!2419350 (= e!1539375 (h!33761 l!9164))))

(assert (=> d!701610 e!1539370))

(declare-fun res!1027477 () Bool)

(assert (=> d!701610 (=> (not res!1027477) (not e!1539370))))

(assert (=> d!701610 (= res!1027477 (validRegex!2830 lt!874896))))

(assert (=> d!701610 (= lt!874896 e!1539375)))

(declare-fun c!385632 () Bool)

(assert (=> d!701610 (= c!385632 e!1539372)))

(declare-fun res!1027478 () Bool)

(assert (=> d!701610 (=> (not res!1027478) (not e!1539372))))

(assert (=> d!701610 (= res!1027478 (is-Cons!28360 l!9164))))

(assert (=> d!701610 (forall!5744 l!9164 lambda!91125)))

(assert (=> d!701610 (= (generalisedConcat!211 l!9164) lt!874896)))

(assert (= (and d!701610 res!1027478) b!2419351))

(assert (= (and d!701610 c!385632) b!2419350))

(assert (= (and d!701610 (not c!385632)) b!2419348))

(assert (= (and b!2419348 c!385634) b!2419346))

(assert (= (and b!2419348 (not c!385634)) b!2419353))

(assert (= (and d!701610 res!1027477) b!2419352))

(assert (= (and b!2419352 c!385633) b!2419349))

(assert (= (and b!2419352 (not c!385633)) b!2419345))

(assert (= (and b!2419345 c!385631) b!2419347))

(assert (= (and b!2419345 (not c!385631)) b!2419354))

(assert (=> b!2419347 m!2806493))

(declare-fun m!2806711 () Bool)

(assert (=> b!2419354 m!2806711))

(declare-fun m!2806713 () Bool)

(assert (=> b!2419346 m!2806713))

(declare-fun m!2806715 () Bool)

(assert (=> b!2419349 m!2806715))

(assert (=> b!2419352 m!2806521))

(declare-fun m!2806717 () Bool)

(assert (=> b!2419351 m!2806717))

(declare-fun m!2806719 () Bool)

(assert (=> d!701610 m!2806719))

(declare-fun m!2806721 () Bool)

(assert (=> d!701610 m!2806721))

(assert (=> b!2419345 m!2806489))

(assert (=> b!2419345 m!2806489))

(declare-fun m!2806723 () Bool)

(assert (=> b!2419345 m!2806723))

(assert (=> b!2419101 d!701610))

(declare-fun bm!147759 () Bool)

(declare-fun call!147764 () Bool)

(assert (=> bm!147759 (= call!147764 (isEmpty!16379 s!9460))))

(declare-fun b!2419355 () Bool)

(declare-fun e!1539380 () Bool)

(declare-fun lt!874897 () Bool)

(assert (=> b!2419355 (= e!1539380 (= lt!874897 call!147764))))

(declare-fun b!2419356 () Bool)

(declare-fun res!1027486 () Bool)

(declare-fun e!1539378 () Bool)

(assert (=> b!2419356 (=> res!1027486 e!1539378)))

(declare-fun e!1539376 () Bool)

(assert (=> b!2419356 (= res!1027486 e!1539376)))

(declare-fun res!1027482 () Bool)

(assert (=> b!2419356 (=> (not res!1027482) (not e!1539376))))

(assert (=> b!2419356 (= res!1027482 lt!874897)))

(declare-fun b!2419357 () Bool)

(declare-fun res!1027479 () Bool)

(assert (=> b!2419357 (=> (not res!1027479) (not e!1539376))))

(assert (=> b!2419357 (= res!1027479 (not call!147764))))

(declare-fun b!2419359 () Bool)

(declare-fun res!1027480 () Bool)

(declare-fun e!1539379 () Bool)

(assert (=> b!2419359 (=> res!1027480 e!1539379)))

(assert (=> b!2419359 (= res!1027480 (not (isEmpty!16379 (tail!3706 s!9460))))))

(declare-fun b!2419360 () Bool)

(declare-fun e!1539381 () Bool)

(assert (=> b!2419360 (= e!1539381 (nullable!2145 r!13927))))

(declare-fun b!2419361 () Bool)

(declare-fun e!1539377 () Bool)

(assert (=> b!2419361 (= e!1539377 e!1539379)))

(declare-fun res!1027484 () Bool)

(assert (=> b!2419361 (=> res!1027484 e!1539379)))

(assert (=> b!2419361 (= res!1027484 call!147764)))

(declare-fun b!2419362 () Bool)

(declare-fun res!1027481 () Bool)

(assert (=> b!2419362 (=> (not res!1027481) (not e!1539376))))

(assert (=> b!2419362 (= res!1027481 (isEmpty!16379 (tail!3706 s!9460)))))

(declare-fun b!2419363 () Bool)

(declare-fun res!1027485 () Bool)

(assert (=> b!2419363 (=> res!1027485 e!1539378)))

(assert (=> b!2419363 (= res!1027485 (not (is-ElementMatch!7110 r!13927)))))

(declare-fun e!1539382 () Bool)

(assert (=> b!2419363 (= e!1539382 e!1539378)))

(declare-fun b!2419364 () Bool)

(assert (=> b!2419364 (= e!1539378 e!1539377)))

(declare-fun res!1027483 () Bool)

(assert (=> b!2419364 (=> (not res!1027483) (not e!1539377))))

(assert (=> b!2419364 (= res!1027483 (not lt!874897))))

(declare-fun b!2419358 () Bool)

(assert (=> b!2419358 (= e!1539381 (matchR!3227 (derivativeStep!1802 r!13927 (head!5434 s!9460)) (tail!3706 s!9460)))))

(declare-fun d!701612 () Bool)

(assert (=> d!701612 e!1539380))

(declare-fun c!385637 () Bool)

(assert (=> d!701612 (= c!385637 (is-EmptyExpr!7110 r!13927))))

(assert (=> d!701612 (= lt!874897 e!1539381)))

(declare-fun c!385636 () Bool)

(assert (=> d!701612 (= c!385636 (isEmpty!16379 s!9460))))

(assert (=> d!701612 (validRegex!2830 r!13927)))

(assert (=> d!701612 (= (matchR!3227 r!13927 s!9460) lt!874897)))

(declare-fun b!2419365 () Bool)

(assert (=> b!2419365 (= e!1539380 e!1539382)))

(declare-fun c!385635 () Bool)

(assert (=> b!2419365 (= c!385635 (is-EmptyLang!7110 r!13927))))

(declare-fun b!2419366 () Bool)

(assert (=> b!2419366 (= e!1539379 (not (= (head!5434 s!9460) (c!385572 r!13927))))))

(declare-fun b!2419367 () Bool)

(assert (=> b!2419367 (= e!1539382 (not lt!874897))))

(declare-fun b!2419368 () Bool)

(assert (=> b!2419368 (= e!1539376 (= (head!5434 s!9460) (c!385572 r!13927)))))

(assert (= (and d!701612 c!385636) b!2419360))

(assert (= (and d!701612 (not c!385636)) b!2419358))

(assert (= (and d!701612 c!385637) b!2419355))

(assert (= (and d!701612 (not c!385637)) b!2419365))

(assert (= (and b!2419365 c!385635) b!2419367))

(assert (= (and b!2419365 (not c!385635)) b!2419363))

(assert (= (and b!2419363 (not res!1027485)) b!2419356))

(assert (= (and b!2419356 res!1027482) b!2419357))

(assert (= (and b!2419357 res!1027479) b!2419362))

(assert (= (and b!2419362 res!1027481) b!2419368))

(assert (= (and b!2419356 (not res!1027486)) b!2419364))

(assert (= (and b!2419364 res!1027483) b!2419361))

(assert (= (and b!2419361 (not res!1027484)) b!2419359))

(assert (= (and b!2419359 (not res!1027480)) b!2419366))

(assert (= (or b!2419355 b!2419357 b!2419361) bm!147759))

(declare-fun m!2806725 () Bool)

(assert (=> b!2419358 m!2806725))

(assert (=> b!2419358 m!2806725))

(declare-fun m!2806727 () Bool)

(assert (=> b!2419358 m!2806727))

(declare-fun m!2806729 () Bool)

(assert (=> b!2419358 m!2806729))

(assert (=> b!2419358 m!2806727))

(assert (=> b!2419358 m!2806729))

(declare-fun m!2806731 () Bool)

(assert (=> b!2419358 m!2806731))

(assert (=> b!2419362 m!2806729))

(assert (=> b!2419362 m!2806729))

(declare-fun m!2806733 () Bool)

(assert (=> b!2419362 m!2806733))

(declare-fun m!2806735 () Bool)

(assert (=> bm!147759 m!2806735))

(declare-fun m!2806737 () Bool)

(assert (=> b!2419360 m!2806737))

(assert (=> b!2419359 m!2806729))

(assert (=> b!2419359 m!2806729))

(assert (=> b!2419359 m!2806733))

(assert (=> b!2419366 m!2806725))

(assert (=> d!701612 m!2806735))

(declare-fun m!2806739 () Bool)

(assert (=> d!701612 m!2806739))

(assert (=> b!2419368 m!2806725))

(assert (=> b!2419094 d!701612))

(declare-fun b!2419411 () Bool)

(assert (=> b!2419411 true))

(assert (=> b!2419411 true))

(declare-fun bs!463669 () Bool)

(declare-fun b!2419402 () Bool)

(assert (= bs!463669 (and b!2419402 b!2419411)))

(declare-fun lambda!91131 () Int)

(declare-fun lambda!91130 () Int)

(assert (=> bs!463669 (not (= lambda!91131 lambda!91130))))

(assert (=> b!2419402 true))

(assert (=> b!2419402 true))

(declare-fun b!2419401 () Bool)

(declare-fun c!385647 () Bool)

(assert (=> b!2419401 (= c!385647 (is-ElementMatch!7110 r!13927))))

(declare-fun e!1539402 () Bool)

(declare-fun e!1539401 () Bool)

(assert (=> b!2419401 (= e!1539402 e!1539401)))

(declare-fun e!1539403 () Bool)

(declare-fun call!147769 () Bool)

(assert (=> b!2419402 (= e!1539403 call!147769)))

(declare-fun b!2419403 () Bool)

(declare-fun e!1539404 () Bool)

(declare-fun e!1539405 () Bool)

(assert (=> b!2419403 (= e!1539404 e!1539405)))

(declare-fun res!1027505 () Bool)

(assert (=> b!2419403 (= res!1027505 (matchRSpec!959 (regOne!14733 r!13927) s!9460))))

(assert (=> b!2419403 (=> res!1027505 e!1539405)))

(declare-fun b!2419404 () Bool)

(declare-fun res!1027504 () Bool)

(declare-fun e!1539407 () Bool)

(assert (=> b!2419404 (=> res!1027504 e!1539407)))

(declare-fun call!147770 () Bool)

(assert (=> b!2419404 (= res!1027504 call!147770)))

(assert (=> b!2419404 (= e!1539403 e!1539407)))

(declare-fun b!2419405 () Bool)

(declare-fun e!1539406 () Bool)

(assert (=> b!2419405 (= e!1539406 call!147770)))

(declare-fun bm!147764 () Bool)

(assert (=> bm!147764 (= call!147770 (isEmpty!16379 s!9460))))

(declare-fun b!2419406 () Bool)

(assert (=> b!2419406 (= e!1539404 e!1539403)))

(declare-fun c!385646 () Bool)

(assert (=> b!2419406 (= c!385646 (is-Star!7110 r!13927))))

(declare-fun b!2419407 () Bool)

(assert (=> b!2419407 (= e!1539406 e!1539402)))

(declare-fun res!1027503 () Bool)

(assert (=> b!2419407 (= res!1027503 (not (is-EmptyLang!7110 r!13927)))))

(assert (=> b!2419407 (=> (not res!1027503) (not e!1539402))))

(declare-fun d!701614 () Bool)

(declare-fun c!385649 () Bool)

(assert (=> d!701614 (= c!385649 (is-EmptyExpr!7110 r!13927))))

(assert (=> d!701614 (= (matchRSpec!959 r!13927 s!9460) e!1539406)))

(declare-fun bm!147765 () Bool)

(declare-fun Exists!1150 (Int) Bool)

(assert (=> bm!147765 (= call!147769 (Exists!1150 (ite c!385646 lambda!91130 lambda!91131)))))

(declare-fun b!2419408 () Bool)

(assert (=> b!2419408 (= e!1539405 (matchRSpec!959 (regTwo!14733 r!13927) s!9460))))

(declare-fun b!2419409 () Bool)

(assert (=> b!2419409 (= e!1539401 (= s!9460 (Cons!28361 (c!385572 r!13927) Nil!28361)))))

(declare-fun b!2419410 () Bool)

(declare-fun c!385648 () Bool)

(assert (=> b!2419410 (= c!385648 (is-Union!7110 r!13927))))

(assert (=> b!2419410 (= e!1539401 e!1539404)))

(assert (=> b!2419411 (= e!1539407 call!147769)))

(assert (= (and d!701614 c!385649) b!2419405))

(assert (= (and d!701614 (not c!385649)) b!2419407))

(assert (= (and b!2419407 res!1027503) b!2419401))

(assert (= (and b!2419401 c!385647) b!2419409))

(assert (= (and b!2419401 (not c!385647)) b!2419410))

(assert (= (and b!2419410 c!385648) b!2419403))

(assert (= (and b!2419410 (not c!385648)) b!2419406))

(assert (= (and b!2419403 (not res!1027505)) b!2419408))

(assert (= (and b!2419406 c!385646) b!2419404))

(assert (= (and b!2419406 (not c!385646)) b!2419402))

(assert (= (and b!2419404 (not res!1027504)) b!2419411))

(assert (= (or b!2419411 b!2419402) bm!147765))

(assert (= (or b!2419405 b!2419404) bm!147764))

(declare-fun m!2806741 () Bool)

(assert (=> b!2419403 m!2806741))

(assert (=> bm!147764 m!2806735))

(declare-fun m!2806743 () Bool)

(assert (=> bm!147765 m!2806743))

(declare-fun m!2806745 () Bool)

(assert (=> b!2419408 m!2806745))

(assert (=> b!2419094 d!701614))

(declare-fun d!701616 () Bool)

(assert (=> d!701616 (= (matchR!3227 r!13927 s!9460) (matchRSpec!959 r!13927 s!9460))))

(declare-fun lt!874906 () Unit!41519)

(declare-fun choose!14308 (Regex!7110 List!28459) Unit!41519)

(assert (=> d!701616 (= lt!874906 (choose!14308 r!13927 s!9460))))

(assert (=> d!701616 (validRegex!2830 r!13927)))

(assert (=> d!701616 (= (mainMatchTheorem!959 r!13927 s!9460) lt!874906)))

(declare-fun bs!463670 () Bool)

(assert (= bs!463670 d!701616))

(assert (=> bs!463670 m!2806479))

(assert (=> bs!463670 m!2806481))

(declare-fun m!2806747 () Bool)

(assert (=> bs!463670 m!2806747))

(assert (=> bs!463670 m!2806739))

(assert (=> b!2419094 d!701616))

(declare-fun d!701618 () Bool)

(assert (=> d!701618 (matchR!3227 (Concat!11746 lt!874814 EmptyExpr!7110) (++!7031 s!9460 Nil!28361))))

(declare-fun lt!874909 () Unit!41519)

(declare-fun choose!14309 (Regex!7110 Regex!7110 List!28459 List!28459) Unit!41519)

(assert (=> d!701618 (= lt!874909 (choose!14309 lt!874814 EmptyExpr!7110 s!9460 Nil!28361))))

(declare-fun e!1539420 () Bool)

(assert (=> d!701618 e!1539420))

(declare-fun res!1027518 () Bool)

(assert (=> d!701618 (=> (not res!1027518) (not e!1539420))))

(assert (=> d!701618 (= res!1027518 (validRegex!2830 lt!874814))))

(assert (=> d!701618 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!85 lt!874814 EmptyExpr!7110 s!9460 Nil!28361) lt!874909)))

(declare-fun b!2419436 () Bool)

(assert (=> b!2419436 (= e!1539420 (validRegex!2830 EmptyExpr!7110))))

(assert (= (and d!701618 res!1027518) b!2419436))

(declare-fun m!2806749 () Bool)

(assert (=> d!701618 m!2806749))

(assert (=> d!701618 m!2806749))

(declare-fun m!2806751 () Bool)

(assert (=> d!701618 m!2806751))

(declare-fun m!2806753 () Bool)

(assert (=> d!701618 m!2806753))

(assert (=> d!701618 m!2806575))

(declare-fun m!2806755 () Bool)

(assert (=> b!2419436 m!2806755))

(assert (=> b!2419092 d!701618))

(declare-fun bm!147766 () Bool)

(declare-fun call!147771 () Bool)

(assert (=> bm!147766 (= call!147771 (isEmpty!16379 call!147739))))

(declare-fun b!2419437 () Bool)

(declare-fun e!1539425 () Bool)

(declare-fun lt!874910 () Bool)

(assert (=> b!2419437 (= e!1539425 (= lt!874910 call!147771))))

(declare-fun b!2419438 () Bool)

(declare-fun res!1027526 () Bool)

(declare-fun e!1539423 () Bool)

(assert (=> b!2419438 (=> res!1027526 e!1539423)))

(declare-fun e!1539421 () Bool)

(assert (=> b!2419438 (= res!1027526 e!1539421)))

(declare-fun res!1027522 () Bool)

(assert (=> b!2419438 (=> (not res!1027522) (not e!1539421))))

(assert (=> b!2419438 (= res!1027522 lt!874910)))

(declare-fun b!2419439 () Bool)

(declare-fun res!1027519 () Bool)

(assert (=> b!2419439 (=> (not res!1027519) (not e!1539421))))

(assert (=> b!2419439 (= res!1027519 (not call!147771))))

(declare-fun b!2419441 () Bool)

(declare-fun res!1027520 () Bool)

(declare-fun e!1539424 () Bool)

(assert (=> b!2419441 (=> res!1027520 e!1539424)))

(assert (=> b!2419441 (= res!1027520 (not (isEmpty!16379 (tail!3706 call!147739))))))

(declare-fun b!2419442 () Bool)

(declare-fun e!1539426 () Bool)

(assert (=> b!2419442 (= e!1539426 (nullable!2145 lt!874820))))

(declare-fun b!2419443 () Bool)

(declare-fun e!1539422 () Bool)

(assert (=> b!2419443 (= e!1539422 e!1539424)))

(declare-fun res!1027524 () Bool)

(assert (=> b!2419443 (=> res!1027524 e!1539424)))

(assert (=> b!2419443 (= res!1027524 call!147771)))

(declare-fun b!2419444 () Bool)

(declare-fun res!1027521 () Bool)

(assert (=> b!2419444 (=> (not res!1027521) (not e!1539421))))

(assert (=> b!2419444 (= res!1027521 (isEmpty!16379 (tail!3706 call!147739)))))

(declare-fun b!2419445 () Bool)

(declare-fun res!1027525 () Bool)

(assert (=> b!2419445 (=> res!1027525 e!1539423)))

(assert (=> b!2419445 (= res!1027525 (not (is-ElementMatch!7110 lt!874820)))))

(declare-fun e!1539427 () Bool)

(assert (=> b!2419445 (= e!1539427 e!1539423)))

(declare-fun b!2419446 () Bool)

(assert (=> b!2419446 (= e!1539423 e!1539422)))

(declare-fun res!1027523 () Bool)

(assert (=> b!2419446 (=> (not res!1027523) (not e!1539422))))

(assert (=> b!2419446 (= res!1027523 (not lt!874910))))

(declare-fun b!2419440 () Bool)

(assert (=> b!2419440 (= e!1539426 (matchR!3227 (derivativeStep!1802 lt!874820 (head!5434 call!147739)) (tail!3706 call!147739)))))

(declare-fun d!701620 () Bool)

(assert (=> d!701620 e!1539425))

(declare-fun c!385656 () Bool)

(assert (=> d!701620 (= c!385656 (is-EmptyExpr!7110 lt!874820))))

(assert (=> d!701620 (= lt!874910 e!1539426)))

(declare-fun c!385655 () Bool)

(assert (=> d!701620 (= c!385655 (isEmpty!16379 call!147739))))

(assert (=> d!701620 (validRegex!2830 lt!874820)))

(assert (=> d!701620 (= (matchR!3227 lt!874820 call!147739) lt!874910)))

(declare-fun b!2419447 () Bool)

(assert (=> b!2419447 (= e!1539425 e!1539427)))

(declare-fun c!385654 () Bool)

(assert (=> b!2419447 (= c!385654 (is-EmptyLang!7110 lt!874820))))

(declare-fun b!2419448 () Bool)

(assert (=> b!2419448 (= e!1539424 (not (= (head!5434 call!147739) (c!385572 lt!874820))))))

(declare-fun b!2419449 () Bool)

(assert (=> b!2419449 (= e!1539427 (not lt!874910))))

(declare-fun b!2419450 () Bool)

(assert (=> b!2419450 (= e!1539421 (= (head!5434 call!147739) (c!385572 lt!874820)))))

(assert (= (and d!701620 c!385655) b!2419442))

(assert (= (and d!701620 (not c!385655)) b!2419440))

(assert (= (and d!701620 c!385656) b!2419437))

(assert (= (and d!701620 (not c!385656)) b!2419447))

(assert (= (and b!2419447 c!385654) b!2419449))

(assert (= (and b!2419447 (not c!385654)) b!2419445))

(assert (= (and b!2419445 (not res!1027525)) b!2419438))

(assert (= (and b!2419438 res!1027522) b!2419439))

(assert (= (and b!2419439 res!1027519) b!2419444))

(assert (= (and b!2419444 res!1027521) b!2419450))

(assert (= (and b!2419438 (not res!1027526)) b!2419446))

(assert (= (and b!2419446 res!1027523) b!2419443))

(assert (= (and b!2419443 (not res!1027524)) b!2419441))

(assert (= (and b!2419441 (not res!1027520)) b!2419448))

(assert (= (or b!2419437 b!2419439 b!2419443) bm!147766))

(declare-fun m!2806757 () Bool)

(assert (=> b!2419440 m!2806757))

(assert (=> b!2419440 m!2806757))

(declare-fun m!2806759 () Bool)

(assert (=> b!2419440 m!2806759))

(declare-fun m!2806761 () Bool)

(assert (=> b!2419440 m!2806761))

(assert (=> b!2419440 m!2806759))

(assert (=> b!2419440 m!2806761))

(declare-fun m!2806763 () Bool)

(assert (=> b!2419440 m!2806763))

(assert (=> b!2419444 m!2806761))

(assert (=> b!2419444 m!2806761))

(declare-fun m!2806765 () Bool)

(assert (=> b!2419444 m!2806765))

(declare-fun m!2806767 () Bool)

(assert (=> bm!147766 m!2806767))

(declare-fun m!2806769 () Bool)

(assert (=> b!2419442 m!2806769))

(assert (=> b!2419441 m!2806761))

(assert (=> b!2419441 m!2806761))

(assert (=> b!2419441 m!2806765))

(assert (=> b!2419448 m!2806757))

(assert (=> d!701620 m!2806767))

(declare-fun m!2806771 () Bool)

(assert (=> d!701620 m!2806771))

(assert (=> b!2419450 m!2806757))

(assert (=> b!2419092 d!701620))

(declare-fun d!701622 () Bool)

(assert (=> d!701622 (isDefined!4437 (findConcatSeparation!719 lt!874814 EmptyExpr!7110 Nil!28361 s!9460 s!9460))))

(declare-fun lt!874913 () Unit!41519)

(declare-fun choose!14310 (Regex!7110 Regex!7110 List!28459) Unit!41519)

(assert (=> d!701622 (= lt!874913 (choose!14310 lt!874814 EmptyExpr!7110 s!9460))))

(assert (=> d!701622 (validRegex!2830 lt!874814)))

(assert (=> d!701622 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!59 lt!874814 EmptyExpr!7110 s!9460) lt!874913)))

(declare-fun bs!463671 () Bool)

(assert (= bs!463671 d!701622))

(assert (=> bs!463671 m!2806509))

(assert (=> bs!463671 m!2806509))

(declare-fun m!2806773 () Bool)

(assert (=> bs!463671 m!2806773))

(declare-fun m!2806775 () Bool)

(assert (=> bs!463671 m!2806775))

(assert (=> bs!463671 m!2806575))

(assert (=> b!2419092 d!701622))

(declare-fun d!701624 () Bool)

(declare-fun res!1027536 () Bool)

(declare-fun e!1539437 () Bool)

(assert (=> d!701624 (=> res!1027536 e!1539437)))

(assert (=> d!701624 (= res!1027536 (is-Nil!28360 (t!208435 l!9164)))))

(assert (=> d!701624 (= (forall!5744 (t!208435 l!9164) lambda!91112) e!1539437)))

(declare-fun b!2419464 () Bool)

(declare-fun e!1539438 () Bool)

(assert (=> b!2419464 (= e!1539437 e!1539438)))

(declare-fun res!1027537 () Bool)

(assert (=> b!2419464 (=> (not res!1027537) (not e!1539438))))

(declare-fun dynLambda!12205 (Int Regex!7110) Bool)

(assert (=> b!2419464 (= res!1027537 (dynLambda!12205 lambda!91112 (h!33761 (t!208435 l!9164))))))

(declare-fun b!2419465 () Bool)

(assert (=> b!2419465 (= e!1539438 (forall!5744 (t!208435 (t!208435 l!9164)) lambda!91112))))

(assert (= (and d!701624 (not res!1027536)) b!2419464))

(assert (= (and b!2419464 res!1027537) b!2419465))

(declare-fun b_lambda!74611 () Bool)

(assert (=> (not b_lambda!74611) (not b!2419464)))

(declare-fun m!2806777 () Bool)

(assert (=> b!2419464 m!2806777))

(declare-fun m!2806779 () Bool)

(assert (=> b!2419465 m!2806779))

(assert (=> b!2419100 d!701624))

(declare-fun d!701626 () Bool)

(declare-fun res!1027538 () Bool)

(declare-fun e!1539439 () Bool)

(assert (=> d!701626 (=> res!1027538 e!1539439)))

(assert (=> d!701626 (= res!1027538 (is-Nil!28360 l!9164))))

(assert (=> d!701626 (= (forall!5744 l!9164 lambda!91112) e!1539439)))

(declare-fun b!2419466 () Bool)

(declare-fun e!1539440 () Bool)

(assert (=> b!2419466 (= e!1539439 e!1539440)))

(declare-fun res!1027539 () Bool)

(assert (=> b!2419466 (=> (not res!1027539) (not e!1539440))))

(assert (=> b!2419466 (= res!1027539 (dynLambda!12205 lambda!91112 (h!33761 l!9164)))))

(declare-fun b!2419467 () Bool)

(assert (=> b!2419467 (= e!1539440 (forall!5744 (t!208435 l!9164) lambda!91112))))

(assert (= (and d!701626 (not res!1027538)) b!2419466))

(assert (= (and b!2419466 res!1027539) b!2419467))

(declare-fun b_lambda!74613 () Bool)

(assert (=> (not b_lambda!74613) (not b!2419466)))

(declare-fun m!2806787 () Bool)

(assert (=> b!2419466 m!2806787))

(assert (=> b!2419467 m!2806495))

(assert (=> start!236982 d!701626))

(declare-fun bm!147767 () Bool)

(declare-fun call!147772 () Bool)

(assert (=> bm!147767 (= call!147772 (isEmpty!16379 s!9460))))

(declare-fun b!2419468 () Bool)

(declare-fun e!1539445 () Bool)

(declare-fun lt!874917 () Bool)

(assert (=> b!2419468 (= e!1539445 (= lt!874917 call!147772))))

(declare-fun b!2419469 () Bool)

(declare-fun res!1027547 () Bool)

(declare-fun e!1539443 () Bool)

(assert (=> b!2419469 (=> res!1027547 e!1539443)))

(declare-fun e!1539441 () Bool)

(assert (=> b!2419469 (= res!1027547 e!1539441)))

(declare-fun res!1027543 () Bool)

(assert (=> b!2419469 (=> (not res!1027543) (not e!1539441))))

(assert (=> b!2419469 (= res!1027543 lt!874917)))

(declare-fun b!2419470 () Bool)

(declare-fun res!1027540 () Bool)

(assert (=> b!2419470 (=> (not res!1027540) (not e!1539441))))

(assert (=> b!2419470 (= res!1027540 (not call!147772))))

(declare-fun b!2419472 () Bool)

(declare-fun res!1027541 () Bool)

(declare-fun e!1539444 () Bool)

(assert (=> b!2419472 (=> res!1027541 e!1539444)))

(assert (=> b!2419472 (= res!1027541 (not (isEmpty!16379 (tail!3706 s!9460))))))

(declare-fun b!2419473 () Bool)

(declare-fun e!1539446 () Bool)

(assert (=> b!2419473 (= e!1539446 (nullable!2145 lt!874814))))

(declare-fun b!2419474 () Bool)

(declare-fun e!1539442 () Bool)

(assert (=> b!2419474 (= e!1539442 e!1539444)))

(declare-fun res!1027545 () Bool)

(assert (=> b!2419474 (=> res!1027545 e!1539444)))

(assert (=> b!2419474 (= res!1027545 call!147772)))

(declare-fun b!2419475 () Bool)

(declare-fun res!1027542 () Bool)

(assert (=> b!2419475 (=> (not res!1027542) (not e!1539441))))

(assert (=> b!2419475 (= res!1027542 (isEmpty!16379 (tail!3706 s!9460)))))

(declare-fun b!2419476 () Bool)

(declare-fun res!1027546 () Bool)

(assert (=> b!2419476 (=> res!1027546 e!1539443)))

(assert (=> b!2419476 (= res!1027546 (not (is-ElementMatch!7110 lt!874814)))))

(declare-fun e!1539447 () Bool)

(assert (=> b!2419476 (= e!1539447 e!1539443)))

(declare-fun b!2419477 () Bool)

(assert (=> b!2419477 (= e!1539443 e!1539442)))

(declare-fun res!1027544 () Bool)

(assert (=> b!2419477 (=> (not res!1027544) (not e!1539442))))

(assert (=> b!2419477 (= res!1027544 (not lt!874917))))

(declare-fun b!2419471 () Bool)

(assert (=> b!2419471 (= e!1539446 (matchR!3227 (derivativeStep!1802 lt!874814 (head!5434 s!9460)) (tail!3706 s!9460)))))

(declare-fun d!701628 () Bool)

(assert (=> d!701628 e!1539445))

(declare-fun c!385661 () Bool)

(assert (=> d!701628 (= c!385661 (is-EmptyExpr!7110 lt!874814))))

(assert (=> d!701628 (= lt!874917 e!1539446)))

(declare-fun c!385660 () Bool)

(assert (=> d!701628 (= c!385660 (isEmpty!16379 s!9460))))

(assert (=> d!701628 (validRegex!2830 lt!874814)))

(assert (=> d!701628 (= (matchR!3227 lt!874814 s!9460) lt!874917)))

(declare-fun b!2419478 () Bool)

(assert (=> b!2419478 (= e!1539445 e!1539447)))

(declare-fun c!385659 () Bool)

(assert (=> b!2419478 (= c!385659 (is-EmptyLang!7110 lt!874814))))

(declare-fun b!2419479 () Bool)

(assert (=> b!2419479 (= e!1539444 (not (= (head!5434 s!9460) (c!385572 lt!874814))))))

(declare-fun b!2419480 () Bool)

(assert (=> b!2419480 (= e!1539447 (not lt!874917))))

(declare-fun b!2419481 () Bool)

(assert (=> b!2419481 (= e!1539441 (= (head!5434 s!9460) (c!385572 lt!874814)))))

(assert (= (and d!701628 c!385660) b!2419473))

(assert (= (and d!701628 (not c!385660)) b!2419471))

(assert (= (and d!701628 c!385661) b!2419468))

(assert (= (and d!701628 (not c!385661)) b!2419478))

(assert (= (and b!2419478 c!385659) b!2419480))

(assert (= (and b!2419478 (not c!385659)) b!2419476))

(assert (= (and b!2419476 (not res!1027546)) b!2419469))

(assert (= (and b!2419469 res!1027543) b!2419470))

(assert (= (and b!2419470 res!1027540) b!2419475))

(assert (= (and b!2419475 res!1027542) b!2419481))

(assert (= (and b!2419469 (not res!1027547)) b!2419477))

(assert (= (and b!2419477 res!1027544) b!2419474))

(assert (= (and b!2419474 (not res!1027545)) b!2419472))

(assert (= (and b!2419472 (not res!1027541)) b!2419479))

(assert (= (or b!2419468 b!2419470 b!2419474) bm!147767))

(assert (=> b!2419471 m!2806725))

(assert (=> b!2419471 m!2806725))

(declare-fun m!2806807 () Bool)

(assert (=> b!2419471 m!2806807))

(assert (=> b!2419471 m!2806729))

(assert (=> b!2419471 m!2806807))

(assert (=> b!2419471 m!2806729))

(declare-fun m!2806809 () Bool)

(assert (=> b!2419471 m!2806809))

(assert (=> b!2419475 m!2806729))

(assert (=> b!2419475 m!2806729))

(assert (=> b!2419475 m!2806733))

(assert (=> bm!147767 m!2806735))

(declare-fun m!2806811 () Bool)

(assert (=> b!2419473 m!2806811))

(assert (=> b!2419472 m!2806729))

(assert (=> b!2419472 m!2806729))

(assert (=> b!2419472 m!2806733))

(assert (=> b!2419479 m!2806725))

(assert (=> d!701628 m!2806735))

(assert (=> d!701628 m!2806575))

(assert (=> b!2419481 m!2806725))

(assert (=> b!2419091 d!701628))

(declare-fun d!701632 () Bool)

(assert (=> d!701632 (= (head!5432 l!9164) (h!33761 l!9164))))

(assert (=> b!2419091 d!701632))

(declare-fun d!701634 () Bool)

(assert (=> d!701634 (= (isDefined!4437 call!147742) (not (isEmpty!16378 call!147742)))))

(declare-fun bs!463672 () Bool)

(assert (= bs!463672 d!701634))

(declare-fun m!2806813 () Bool)

(assert (=> bs!463672 m!2806813))

(assert (=> bm!147734 d!701634))

(declare-fun b!2419495 () Bool)

(declare-fun e!1539450 () Bool)

(declare-fun tp!769064 () Bool)

(declare-fun tp!769066 () Bool)

(assert (=> b!2419495 (= e!1539450 (and tp!769064 tp!769066))))

(declare-fun b!2419493 () Bool)

(declare-fun tp!769065 () Bool)

(declare-fun tp!769062 () Bool)

(assert (=> b!2419493 (= e!1539450 (and tp!769065 tp!769062))))

(declare-fun b!2419494 () Bool)

(declare-fun tp!769063 () Bool)

(assert (=> b!2419494 (= e!1539450 tp!769063)))

(declare-fun b!2419492 () Bool)

(assert (=> b!2419492 (= e!1539450 tp_is_empty!11633)))

(assert (=> b!2419109 (= tp!769024 e!1539450)))

(assert (= (and b!2419109 (is-ElementMatch!7110 (regOne!14732 r!13927))) b!2419492))

(assert (= (and b!2419109 (is-Concat!11746 (regOne!14732 r!13927))) b!2419493))

(assert (= (and b!2419109 (is-Star!7110 (regOne!14732 r!13927))) b!2419494))

(assert (= (and b!2419109 (is-Union!7110 (regOne!14732 r!13927))) b!2419495))

(declare-fun b!2419499 () Bool)

(declare-fun e!1539451 () Bool)

(declare-fun tp!769069 () Bool)

(declare-fun tp!769071 () Bool)

(assert (=> b!2419499 (= e!1539451 (and tp!769069 tp!769071))))

(declare-fun b!2419497 () Bool)

(declare-fun tp!769070 () Bool)

(declare-fun tp!769067 () Bool)

(assert (=> b!2419497 (= e!1539451 (and tp!769070 tp!769067))))

(declare-fun b!2419498 () Bool)

(declare-fun tp!769068 () Bool)

(assert (=> b!2419498 (= e!1539451 tp!769068)))

(declare-fun b!2419496 () Bool)

(assert (=> b!2419496 (= e!1539451 tp_is_empty!11633)))

(assert (=> b!2419109 (= tp!769026 e!1539451)))

(assert (= (and b!2419109 (is-ElementMatch!7110 (regTwo!14732 r!13927))) b!2419496))

(assert (= (and b!2419109 (is-Concat!11746 (regTwo!14732 r!13927))) b!2419497))

(assert (= (and b!2419109 (is-Star!7110 (regTwo!14732 r!13927))) b!2419498))

(assert (= (and b!2419109 (is-Union!7110 (regTwo!14732 r!13927))) b!2419499))

(declare-fun b!2419504 () Bool)

(declare-fun e!1539454 () Bool)

(declare-fun tp!769074 () Bool)

(assert (=> b!2419504 (= e!1539454 (and tp_is_empty!11633 tp!769074))))

(assert (=> b!2419098 (= tp!769020 e!1539454)))

(assert (= (and b!2419098 (is-Cons!28361 (t!208436 s!9460))) b!2419504))

(declare-fun b!2419508 () Bool)

(declare-fun e!1539455 () Bool)

(declare-fun tp!769077 () Bool)

(declare-fun tp!769079 () Bool)

(assert (=> b!2419508 (= e!1539455 (and tp!769077 tp!769079))))

(declare-fun b!2419506 () Bool)

(declare-fun tp!769078 () Bool)

(declare-fun tp!769075 () Bool)

(assert (=> b!2419506 (= e!1539455 (and tp!769078 tp!769075))))

(declare-fun b!2419507 () Bool)

(declare-fun tp!769076 () Bool)

(assert (=> b!2419507 (= e!1539455 tp!769076)))

(declare-fun b!2419505 () Bool)

(assert (=> b!2419505 (= e!1539455 tp_is_empty!11633)))

(assert (=> b!2419099 (= tp!769025 e!1539455)))

(assert (= (and b!2419099 (is-ElementMatch!7110 (h!33761 l!9164))) b!2419505))

(assert (= (and b!2419099 (is-Concat!11746 (h!33761 l!9164))) b!2419506))

(assert (= (and b!2419099 (is-Star!7110 (h!33761 l!9164))) b!2419507))

(assert (= (and b!2419099 (is-Union!7110 (h!33761 l!9164))) b!2419508))

(declare-fun b!2419513 () Bool)

(declare-fun e!1539458 () Bool)

(declare-fun tp!769084 () Bool)

(declare-fun tp!769085 () Bool)

(assert (=> b!2419513 (= e!1539458 (and tp!769084 tp!769085))))

(assert (=> b!2419099 (= tp!769022 e!1539458)))

(assert (= (and b!2419099 (is-Cons!28360 (t!208435 l!9164))) b!2419513))

(declare-fun b!2419517 () Bool)

(declare-fun e!1539459 () Bool)

(declare-fun tp!769088 () Bool)

(declare-fun tp!769090 () Bool)

(assert (=> b!2419517 (= e!1539459 (and tp!769088 tp!769090))))

(declare-fun b!2419515 () Bool)

(declare-fun tp!769089 () Bool)

(declare-fun tp!769086 () Bool)

(assert (=> b!2419515 (= e!1539459 (and tp!769089 tp!769086))))

(declare-fun b!2419516 () Bool)

(declare-fun tp!769087 () Bool)

(assert (=> b!2419516 (= e!1539459 tp!769087)))

(declare-fun b!2419514 () Bool)

(assert (=> b!2419514 (= e!1539459 tp_is_empty!11633)))

(assert (=> b!2419106 (= tp!769023 e!1539459)))

(assert (= (and b!2419106 (is-ElementMatch!7110 (reg!7439 r!13927))) b!2419514))

(assert (= (and b!2419106 (is-Concat!11746 (reg!7439 r!13927))) b!2419515))

(assert (= (and b!2419106 (is-Star!7110 (reg!7439 r!13927))) b!2419516))

(assert (= (and b!2419106 (is-Union!7110 (reg!7439 r!13927))) b!2419517))

(declare-fun b!2419521 () Bool)

(declare-fun e!1539460 () Bool)

(declare-fun tp!769093 () Bool)

(declare-fun tp!769095 () Bool)

(assert (=> b!2419521 (= e!1539460 (and tp!769093 tp!769095))))

(declare-fun b!2419519 () Bool)

(declare-fun tp!769094 () Bool)

(declare-fun tp!769091 () Bool)

(assert (=> b!2419519 (= e!1539460 (and tp!769094 tp!769091))))

(declare-fun b!2419520 () Bool)

(declare-fun tp!769092 () Bool)

(assert (=> b!2419520 (= e!1539460 tp!769092)))

(declare-fun b!2419518 () Bool)

(assert (=> b!2419518 (= e!1539460 tp_is_empty!11633)))

(assert (=> b!2419096 (= tp!769021 e!1539460)))

(assert (= (and b!2419096 (is-ElementMatch!7110 (regOne!14733 r!13927))) b!2419518))

(assert (= (and b!2419096 (is-Concat!11746 (regOne!14733 r!13927))) b!2419519))

(assert (= (and b!2419096 (is-Star!7110 (regOne!14733 r!13927))) b!2419520))

(assert (= (and b!2419096 (is-Union!7110 (regOne!14733 r!13927))) b!2419521))

(declare-fun b!2419525 () Bool)

(declare-fun e!1539461 () Bool)

(declare-fun tp!769098 () Bool)

(declare-fun tp!769100 () Bool)

(assert (=> b!2419525 (= e!1539461 (and tp!769098 tp!769100))))

(declare-fun b!2419523 () Bool)

(declare-fun tp!769099 () Bool)

(declare-fun tp!769096 () Bool)

(assert (=> b!2419523 (= e!1539461 (and tp!769099 tp!769096))))

(declare-fun b!2419524 () Bool)

(declare-fun tp!769097 () Bool)

(assert (=> b!2419524 (= e!1539461 tp!769097)))

(declare-fun b!2419522 () Bool)

(assert (=> b!2419522 (= e!1539461 tp_is_empty!11633)))

(assert (=> b!2419096 (= tp!769027 e!1539461)))

(assert (= (and b!2419096 (is-ElementMatch!7110 (regTwo!14733 r!13927))) b!2419522))

(assert (= (and b!2419096 (is-Concat!11746 (regTwo!14733 r!13927))) b!2419523))

(assert (= (and b!2419096 (is-Star!7110 (regTwo!14733 r!13927))) b!2419524))

(assert (= (and b!2419096 (is-Union!7110 (regTwo!14733 r!13927))) b!2419525))

(declare-fun b_lambda!74615 () Bool)

(assert (= b_lambda!74611 (or start!236982 b_lambda!74615)))

(declare-fun bs!463674 () Bool)

(declare-fun d!701640 () Bool)

(assert (= bs!463674 (and d!701640 start!236982)))

(assert (=> bs!463674 (= (dynLambda!12205 lambda!91112 (h!33761 (t!208435 l!9164))) (validRegex!2830 (h!33761 (t!208435 l!9164))))))

(declare-fun m!2806817 () Bool)

(assert (=> bs!463674 m!2806817))

(assert (=> b!2419464 d!701640))

(declare-fun b_lambda!74617 () Bool)

(assert (= b_lambda!74613 (or start!236982 b_lambda!74617)))

(declare-fun bs!463675 () Bool)

(declare-fun d!701642 () Bool)

(assert (= bs!463675 (and d!701642 start!236982)))

(assert (=> bs!463675 (= (dynLambda!12205 lambda!91112 (h!33761 l!9164)) (validRegex!2830 (h!33761 l!9164)))))

(declare-fun m!2806819 () Bool)

(assert (=> bs!463675 m!2806819))

(assert (=> b!2419466 d!701642))

(push 1)

(assert (not b!2419323))

(assert (not b!2419493))

(assert (not b!2419334))

(assert (not b!2419294))

(assert (not b!2419513))

(assert (not b!2419506))

(assert (not d!701622))

(assert (not b!2419465))

(assert (not d!701610))

(assert (not b!2419499))

(assert (not b!2419408))

(assert (not d!701618))

(assert (not b!2419520))

(assert (not d!701596))

(assert (not bm!147759))

(assert (not b!2419332))

(assert (not b!2419326))

(assert (not b!2419515))

(assert (not b!2419247))

(assert (not b!2419298))

(assert (not b!2419191))

(assert (not b!2419521))

(assert (not b!2419525))

(assert (not d!701612))

(assert (not d!701628))

(assert (not b!2419333))

(assert (not b!2419498))

(assert (not b!2419448))

(assert (not b!2419524))

(assert (not b!2419450))

(assert (not d!701586))

(assert (not b!2419442))

(assert (not b!2419508))

(assert (not bs!463674))

(assert (not bm!147764))

(assert (not b!2419360))

(assert (not b!2419516))

(assert (not b!2419479))

(assert (not b!2419441))

(assert (not b!2419324))

(assert (not d!701616))

(assert (not b!2419300))

(assert (not b_lambda!74617))

(assert (not b!2419359))

(assert (not b!2419354))

(assert (not b!2419362))

(assert (not b_lambda!74615))

(assert (not b!2419517))

(assert (not b!2419472))

(assert (not b!2419328))

(assert (not b!2419303))

(assert (not b!2419473))

(assert (not b!2419523))

(assert (not b!2419349))

(assert (not b!2419403))

(assert (not d!701620))

(assert (not b!2419243))

(assert (not d!701590))

(assert (not d!701604))

(assert (not b!2419192))

(assert (not b!2419198))

(assert (not b!2419495))

(assert (not b!2419351))

(assert (not b!2419494))

(assert (not b!2419199))

(assert (not b!2419347))

(assert (not b!2419352))

(assert (not b!2419345))

(assert (not b!2419253))

(assert (not b!2419497))

(assert (not b!2419436))

(assert tp_is_empty!11633)

(assert (not b!2419467))

(assert (not b!2419245))

(assert (not b!2419368))

(assert (not b!2419475))

(assert (not b!2419296))

(assert (not d!701584))

(assert (not bm!147766))

(assert (not b!2419507))

(assert (not b!2419504))

(assert (not b!2419301))

(assert (not b!2419346))

(assert (not b!2419444))

(assert (not b!2419471))

(assert (not b!2419366))

(assert (not b!2419519))

(assert (not bm!147765))

(assert (not b!2419244))

(assert (not b!2419327))

(assert (not b!2419440))

(assert (not b!2419295))

(assert (not d!701580))

(assert (not bm!147758))

(assert (not b!2419251))

(assert (not b!2419481))

(assert (not bm!147767))

(assert (not b!2419197))

(assert (not bs!463675))

(assert (not d!701634))

(assert (not b!2419358))

(assert (not d!701594))

(assert (not b!2419193))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

