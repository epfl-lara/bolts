; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!238916 () Bool)

(assert start!238916)

(declare-fun b!2444552 () Bool)

(assert (=> b!2444552 true))

(assert (=> b!2444552 true))

(declare-fun lambda!92502 () Int)

(declare-fun lambda!92501 () Int)

(assert (=> b!2444552 (not (= lambda!92502 lambda!92501))))

(assert (=> b!2444552 true))

(assert (=> b!2444552 true))

(declare-fun b!2444543 () Bool)

(declare-fun e!1552554 () Bool)

(declare-fun e!1552566 () Bool)

(assert (=> b!2444543 (= e!1552554 e!1552566)))

(declare-fun res!1037380 () Bool)

(assert (=> b!2444543 (=> res!1037380 e!1552566)))

(declare-datatypes ((C!14522 0))(
  ( (C!14523 (val!8503 Int)) )
))
(declare-datatypes ((Regex!7182 0))(
  ( (ElementMatch!7182 (c!390070 C!14522)) (Concat!11818 (regOne!14876 Regex!7182) (regTwo!14876 Regex!7182)) (EmptyExpr!7182) (Star!7182 (reg!7511 Regex!7182)) (EmptyLang!7182) (Union!7182 (regOne!14877 Regex!7182) (regTwo!14877 Regex!7182)) )
))
(declare-fun lt!878712 () Regex!7182)

(assert (=> b!2444543 (= res!1037380 (not (= lt!878712 EmptyExpr!7182)))))

(declare-datatypes ((List!28600 0))(
  ( (Nil!28502) (Cons!28502 (h!33903 Regex!7182) (t!208577 List!28600)) )
))
(declare-fun lt!878709 () List!28600)

(declare-fun generalisedConcat!283 (List!28600) Regex!7182)

(assert (=> b!2444543 (= lt!878712 (generalisedConcat!283 lt!878709))))

(declare-fun b!2444544 () Bool)

(declare-fun res!1037378 () Bool)

(declare-fun e!1552562 () Bool)

(assert (=> b!2444544 (=> res!1037378 e!1552562)))

(declare-fun l!9164 () List!28600)

(declare-fun isEmpty!16540 (List!28600) Bool)

(assert (=> b!2444544 (= res!1037378 (isEmpty!16540 l!9164))))

(declare-fun res!1037372 () Bool)

(declare-fun e!1552553 () Bool)

(assert (=> start!238916 (=> (not res!1037372) (not e!1552553))))

(declare-fun lambda!92500 () Int)

(declare-fun forall!5816 (List!28600 Int) Bool)

(assert (=> start!238916 (= res!1037372 (forall!5816 l!9164 lambda!92500))))

(assert (=> start!238916 e!1552553))

(declare-fun e!1552558 () Bool)

(assert (=> start!238916 e!1552558))

(declare-fun e!1552555 () Bool)

(assert (=> start!238916 e!1552555))

(declare-fun e!1552563 () Bool)

(assert (=> start!238916 e!1552563))

(declare-fun b!2444545 () Bool)

(declare-fun tp!776729 () Bool)

(declare-fun tp!776727 () Bool)

(assert (=> b!2444545 (= e!1552558 (and tp!776729 tp!776727))))

(declare-fun b!2444546 () Bool)

(declare-fun e!1552557 () Bool)

(declare-fun call!149893 () Bool)

(assert (=> b!2444546 (= e!1552557 (not call!149893))))

(declare-fun call!149891 () Bool)

(declare-fun bm!149884 () Bool)

(declare-datatypes ((List!28601 0))(
  ( (Nil!28503) (Cons!28503 (h!33904 C!14522) (t!208578 List!28601)) )
))
(declare-datatypes ((tuple2!28120 0))(
  ( (tuple2!28121 (_1!16601 List!28601) (_2!16601 List!28601)) )
))
(declare-datatypes ((Option!5671 0))(
  ( (None!5670) (Some!5670 (v!31078 tuple2!28120)) )
))
(declare-fun lt!878717 () Option!5671)

(declare-fun c!390069 () Bool)

(declare-fun call!149892 () Option!5671)

(declare-fun isDefined!4497 (Option!5671) Bool)

(assert (=> bm!149884 (= call!149891 (isDefined!4497 (ite c!390069 call!149892 lt!878717)))))

(declare-fun b!2444547 () Bool)

(declare-datatypes ((Unit!41755 0))(
  ( (Unit!41756) )
))
(declare-fun e!1552565 () Unit!41755)

(declare-fun Unit!41757 () Unit!41755)

(assert (=> b!2444547 (= e!1552565 Unit!41757)))

(declare-fun call!149890 () Option!5671)

(assert (=> b!2444547 (= lt!878717 call!149890)))

(declare-fun lt!878725 () Bool)

(assert (=> b!2444547 (= lt!878725 call!149891)))

(declare-fun c!390068 () Bool)

(assert (=> b!2444547 (= c!390068 lt!878725)))

(declare-fun lt!878715 () Unit!41755)

(declare-fun e!1552564 () Unit!41755)

(assert (=> b!2444547 (= lt!878715 e!1552564)))

(declare-fun res!1037376 () Bool)

(assert (=> b!2444547 (= res!1037376 (not lt!878725))))

(assert (=> b!2444547 (=> (not res!1037376) (not e!1552557))))

(assert (=> b!2444547 e!1552557))

(declare-fun b!2444548 () Bool)

(declare-fun e!1552561 () Bool)

(assert (=> b!2444548 (= e!1552561 call!149891)))

(declare-fun b!2444549 () Bool)

(declare-fun tp_is_empty!11777 () Bool)

(declare-fun tp!776731 () Bool)

(assert (=> b!2444549 (= e!1552563 (and tp_is_empty!11777 tp!776731))))

(declare-fun bm!149885 () Bool)

(declare-fun lt!878718 () Regex!7182)

(declare-fun s!9460 () List!28601)

(declare-fun findConcatSeparation!779 (Regex!7182 Regex!7182 List!28601 List!28601 List!28601) Option!5671)

(assert (=> bm!149885 (= call!149890 (findConcatSeparation!779 lt!878718 EmptyExpr!7182 Nil!28503 s!9460 s!9460))))

(declare-fun b!2444550 () Bool)

(declare-fun e!1552559 () Bool)

(assert (=> b!2444550 (= e!1552559 false)))

(declare-fun b!2444551 () Bool)

(assert (=> b!2444551 e!1552559))

(declare-fun res!1037371 () Bool)

(assert (=> b!2444551 (=> (not res!1037371) (not e!1552559))))

(declare-fun call!149889 () Bool)

(assert (=> b!2444551 (= res!1037371 call!149889)))

(declare-fun lt!878722 () Unit!41755)

(declare-fun lt!878726 () tuple2!28120)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!87 (Regex!7182 Regex!7182 List!28601 List!28601 List!28601) Unit!41755)

(assert (=> b!2444551 (= lt!878722 (lemmaFindSeparationIsDefinedThenConcatMatches!87 lt!878718 EmptyExpr!7182 (_1!16601 lt!878726) (_2!16601 lt!878726) s!9460))))

(declare-fun get!8803 (Option!5671) tuple2!28120)

(assert (=> b!2444551 (= lt!878726 (get!8803 lt!878717))))

(declare-fun Unit!41758 () Unit!41755)

(assert (=> b!2444551 (= e!1552564 Unit!41758)))

(declare-fun bm!149886 () Bool)

(assert (=> bm!149886 (= call!149892 (findConcatSeparation!779 lt!878718 lt!878712 Nil!28503 s!9460 s!9460))))

(declare-fun e!1552556 () Bool)

(assert (=> b!2444552 (= e!1552556 e!1552562)))

(declare-fun res!1037381 () Bool)

(assert (=> b!2444552 (=> res!1037381 e!1552562)))

(declare-fun lt!878723 () Bool)

(declare-fun lt!878710 () Bool)

(assert (=> b!2444552 (= res!1037381 (not (= lt!878723 lt!878710)))))

(declare-fun Exists!1218 (Int) Bool)

(assert (=> b!2444552 (= (Exists!1218 lambda!92501) (Exists!1218 lambda!92502))))

(declare-fun lt!878716 () Unit!41755)

(declare-fun r!13927 () Regex!7182)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!463 (Regex!7182 Regex!7182 List!28601) Unit!41755)

(assert (=> b!2444552 (= lt!878716 (lemmaExistCutMatchRandMatchRSpecEquivalent!463 (regOne!14876 r!13927) (regTwo!14876 r!13927) s!9460))))

(assert (=> b!2444552 (= lt!878710 (Exists!1218 lambda!92501))))

(assert (=> b!2444552 (= lt!878710 (isDefined!4497 (findConcatSeparation!779 (regOne!14876 r!13927) (regTwo!14876 r!13927) Nil!28503 s!9460 s!9460)))))

(declare-fun lt!878714 () Unit!41755)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!717 (Regex!7182 Regex!7182 List!28601) Unit!41755)

(assert (=> b!2444552 (= lt!878714 (lemmaFindConcatSeparationEquivalentToExists!717 (regOne!14876 r!13927) (regTwo!14876 r!13927) s!9460))))

(declare-fun b!2444553 () Bool)

(declare-fun Unit!41759 () Unit!41755)

(assert (=> b!2444553 (= e!1552565 Unit!41759)))

(declare-fun lt!878719 () Unit!41755)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!115 (Regex!7182 Regex!7182 List!28601 List!28601) Unit!41755)

(assert (=> b!2444553 (= lt!878719 (lemmaTwoRegexMatchThenConcatMatchesConcatString!115 lt!878718 EmptyExpr!7182 s!9460 Nil!28503))))

(declare-fun lt!878721 () Regex!7182)

(assert (=> b!2444553 (= lt!878721 (Concat!11818 lt!878718 EmptyExpr!7182))))

(declare-fun res!1037375 () Bool)

(declare-fun call!149894 () List!28601)

(declare-fun matchR!3297 (Regex!7182 List!28601) Bool)

(assert (=> b!2444553 (= res!1037375 (matchR!3297 lt!878721 call!149894))))

(declare-fun e!1552560 () Bool)

(assert (=> b!2444553 (=> (not res!1037375) (not e!1552560))))

(assert (=> b!2444553 e!1552560))

(declare-fun lt!878724 () Unit!41755)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!83 (Regex!7182 Regex!7182 List!28601) Unit!41755)

(assert (=> b!2444553 (= lt!878724 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!83 lt!878718 EmptyExpr!7182 s!9460))))

(declare-fun res!1037377 () Bool)

(assert (=> b!2444553 (= res!1037377 call!149893)))

(assert (=> b!2444553 (=> (not res!1037377) (not e!1552561))))

(assert (=> b!2444553 e!1552561))

(declare-fun b!2444554 () Bool)

(assert (=> b!2444554 (= e!1552560 call!149889)))

(declare-fun b!2444555 () Bool)

(assert (=> b!2444555 (= e!1552553 (not e!1552556))))

(declare-fun res!1037373 () Bool)

(assert (=> b!2444555 (=> res!1037373 e!1552556)))

(assert (=> b!2444555 (= res!1037373 (not (is-Concat!11818 r!13927)))))

(declare-fun lt!878711 () Bool)

(assert (=> b!2444555 (= lt!878711 lt!878723)))

(declare-fun matchRSpec!1029 (Regex!7182 List!28601) Bool)

(assert (=> b!2444555 (= lt!878723 (matchRSpec!1029 r!13927 s!9460))))

(assert (=> b!2444555 (= lt!878711 (matchR!3297 r!13927 s!9460))))

(declare-fun lt!878720 () Unit!41755)

(declare-fun mainMatchTheorem!1029 (Regex!7182 List!28601) Unit!41755)

(assert (=> b!2444555 (= lt!878720 (mainMatchTheorem!1029 r!13927 s!9460))))

(declare-fun b!2444556 () Bool)

(declare-fun tp!776726 () Bool)

(declare-fun tp!776724 () Bool)

(assert (=> b!2444556 (= e!1552555 (and tp!776726 tp!776724))))

(declare-fun b!2444557 () Bool)

(assert (=> b!2444557 (= e!1552555 tp_is_empty!11777)))

(declare-fun bm!149887 () Bool)

(assert (=> bm!149887 (= call!149893 (isDefined!4497 (ite c!390069 call!149890 call!149892)))))

(declare-fun bm!149888 () Bool)

(declare-fun ++!7085 (List!28601 List!28601) List!28601)

(assert (=> bm!149888 (= call!149894 (++!7085 (ite c!390069 s!9460 (_1!16601 lt!878726)) (ite c!390069 Nil!28503 (_2!16601 lt!878726))))))

(declare-fun bm!149889 () Bool)

(assert (=> bm!149889 (= call!149889 (matchR!3297 (ite c!390069 lt!878721 (Concat!11818 lt!878718 EmptyExpr!7182)) (ite c!390069 s!9460 call!149894)))))

(declare-fun b!2444558 () Bool)

(declare-fun tp!776730 () Bool)

(declare-fun tp!776725 () Bool)

(assert (=> b!2444558 (= e!1552555 (and tp!776730 tp!776725))))

(declare-fun b!2444559 () Bool)

(assert (=> b!2444559 (= e!1552566 (= lt!878711 (isDefined!4497 (findConcatSeparation!779 lt!878718 lt!878712 Nil!28503 s!9460 s!9460))))))

(declare-fun lt!878713 () Unit!41755)

(assert (=> b!2444559 (= lt!878713 e!1552565)))

(assert (=> b!2444559 (= c!390069 (matchR!3297 lt!878718 s!9460))))

(declare-fun head!5550 (List!28600) Regex!7182)

(assert (=> b!2444559 (= lt!878718 (head!5550 l!9164))))

(declare-fun b!2444560 () Bool)

(declare-fun Unit!41760 () Unit!41755)

(assert (=> b!2444560 (= e!1552564 Unit!41760)))

(declare-fun b!2444561 () Bool)

(declare-fun res!1037374 () Bool)

(assert (=> b!2444561 (=> (not res!1037374) (not e!1552553))))

(assert (=> b!2444561 (= res!1037374 (= r!13927 (generalisedConcat!283 l!9164)))))

(declare-fun b!2444562 () Bool)

(assert (=> b!2444562 (= e!1552562 e!1552554)))

(declare-fun res!1037379 () Bool)

(assert (=> b!2444562 (=> res!1037379 e!1552554)))

(assert (=> b!2444562 (= res!1037379 (not (isEmpty!16540 lt!878709)))))

(declare-fun tail!3823 (List!28600) List!28600)

(assert (=> b!2444562 (= lt!878709 (tail!3823 l!9164))))

(declare-fun b!2444563 () Bool)

(declare-fun tp!776728 () Bool)

(assert (=> b!2444563 (= e!1552555 tp!776728)))

(assert (= (and start!238916 res!1037372) b!2444561))

(assert (= (and b!2444561 res!1037374) b!2444555))

(assert (= (and b!2444555 (not res!1037373)) b!2444552))

(assert (= (and b!2444552 (not res!1037381)) b!2444544))

(assert (= (and b!2444544 (not res!1037378)) b!2444562))

(assert (= (and b!2444562 (not res!1037379)) b!2444543))

(assert (= (and b!2444543 (not res!1037380)) b!2444559))

(assert (= (and b!2444559 c!390069) b!2444553))

(assert (= (and b!2444559 (not c!390069)) b!2444547))

(assert (= (and b!2444553 res!1037375) b!2444554))

(assert (= (and b!2444553 res!1037377) b!2444548))

(assert (= (and b!2444547 c!390068) b!2444551))

(assert (= (and b!2444547 (not c!390068)) b!2444560))

(assert (= (and b!2444551 res!1037371) b!2444550))

(assert (= (and b!2444547 res!1037376) b!2444546))

(assert (= (or b!2444553 b!2444551) bm!149888))

(assert (= (or b!2444548 b!2444546) bm!149886))

(assert (= (or b!2444553 b!2444547) bm!149885))

(assert (= (or b!2444554 b!2444551) bm!149889))

(assert (= (or b!2444548 b!2444547) bm!149884))

(assert (= (or b!2444553 b!2444546) bm!149887))

(assert (= (and start!238916 (is-Cons!28502 l!9164)) b!2444545))

(assert (= (and start!238916 (is-ElementMatch!7182 r!13927)) b!2444557))

(assert (= (and start!238916 (is-Concat!11818 r!13927)) b!2444558))

(assert (= (and start!238916 (is-Star!7182 r!13927)) b!2444563))

(assert (= (and start!238916 (is-Union!7182 r!13927)) b!2444556))

(assert (= (and start!238916 (is-Cons!28503 s!9460)) b!2444549))

(declare-fun m!2821037 () Bool)

(assert (=> bm!149889 m!2821037))

(declare-fun m!2821039 () Bool)

(assert (=> b!2444559 m!2821039))

(assert (=> b!2444559 m!2821039))

(declare-fun m!2821041 () Bool)

(assert (=> b!2444559 m!2821041))

(declare-fun m!2821043 () Bool)

(assert (=> b!2444559 m!2821043))

(declare-fun m!2821045 () Bool)

(assert (=> b!2444559 m!2821045))

(declare-fun m!2821047 () Bool)

(assert (=> b!2444552 m!2821047))

(declare-fun m!2821049 () Bool)

(assert (=> b!2444552 m!2821049))

(declare-fun m!2821051 () Bool)

(assert (=> b!2444552 m!2821051))

(declare-fun m!2821053 () Bool)

(assert (=> b!2444552 m!2821053))

(declare-fun m!2821055 () Bool)

(assert (=> b!2444552 m!2821055))

(assert (=> b!2444552 m!2821051))

(assert (=> b!2444552 m!2821047))

(declare-fun m!2821057 () Bool)

(assert (=> b!2444552 m!2821057))

(declare-fun m!2821059 () Bool)

(assert (=> b!2444544 m!2821059))

(assert (=> bm!149886 m!2821039))

(declare-fun m!2821061 () Bool)

(assert (=> b!2444562 m!2821061))

(declare-fun m!2821063 () Bool)

(assert (=> b!2444562 m!2821063))

(declare-fun m!2821065 () Bool)

(assert (=> b!2444553 m!2821065))

(declare-fun m!2821067 () Bool)

(assert (=> b!2444553 m!2821067))

(declare-fun m!2821069 () Bool)

(assert (=> b!2444553 m!2821069))

(declare-fun m!2821071 () Bool)

(assert (=> b!2444555 m!2821071))

(declare-fun m!2821073 () Bool)

(assert (=> b!2444555 m!2821073))

(declare-fun m!2821075 () Bool)

(assert (=> b!2444555 m!2821075))

(declare-fun m!2821077 () Bool)

(assert (=> bm!149884 m!2821077))

(declare-fun m!2821079 () Bool)

(assert (=> b!2444561 m!2821079))

(declare-fun m!2821081 () Bool)

(assert (=> b!2444551 m!2821081))

(declare-fun m!2821083 () Bool)

(assert (=> b!2444551 m!2821083))

(declare-fun m!2821085 () Bool)

(assert (=> start!238916 m!2821085))

(declare-fun m!2821087 () Bool)

(assert (=> bm!149885 m!2821087))

(declare-fun m!2821089 () Bool)

(assert (=> bm!149887 m!2821089))

(declare-fun m!2821091 () Bool)

(assert (=> bm!149888 m!2821091))

(declare-fun m!2821093 () Bool)

(assert (=> b!2444543 m!2821093))

(push 1)

(assert (not bm!149889))

(assert tp_is_empty!11777)

(assert (not bm!149887))

(assert (not b!2444549))

(assert (not bm!149884))

(assert (not b!2444552))

(assert (not b!2444543))

(assert (not bm!149885))

(assert (not b!2444553))

(assert (not b!2444562))

(assert (not bm!149886))

(assert (not b!2444559))

(assert (not b!2444558))

(assert (not b!2444544))

(assert (not b!2444545))

(assert (not b!2444556))

(assert (not b!2444551))

(assert (not b!2444561))

(assert (not b!2444555))

(assert (not bm!149888))

(assert (not b!2444563))

(assert (not start!238916))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!705656 () Bool)

(declare-fun isEmpty!16542 (Option!5671) Bool)

(assert (=> d!705656 (= (isDefined!4497 (ite c!390069 call!149890 call!149892)) (not (isEmpty!16542 (ite c!390069 call!149890 call!149892))))))

(declare-fun bs!465273 () Bool)

(assert (= bs!465273 d!705656))

(declare-fun m!2821153 () Bool)

(assert (=> bs!465273 m!2821153))

(assert (=> bm!149887 d!705656))

(declare-fun d!705658 () Bool)

(assert (=> d!705658 (matchR!3297 (Concat!11818 lt!878718 EmptyExpr!7182) (++!7085 s!9460 Nil!28503))))

(declare-fun lt!878783 () Unit!41755)

(declare-fun choose!14486 (Regex!7182 Regex!7182 List!28601 List!28601) Unit!41755)

(assert (=> d!705658 (= lt!878783 (choose!14486 lt!878718 EmptyExpr!7182 s!9460 Nil!28503))))

(declare-fun e!1552617 () Bool)

(assert (=> d!705658 e!1552617))

(declare-fun res!1037429 () Bool)

(assert (=> d!705658 (=> (not res!1037429) (not e!1552617))))

(declare-fun validRegex!2890 (Regex!7182) Bool)

(assert (=> d!705658 (= res!1037429 (validRegex!2890 lt!878718))))

(assert (=> d!705658 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!115 lt!878718 EmptyExpr!7182 s!9460 Nil!28503) lt!878783)))

(declare-fun b!2444649 () Bool)

(assert (=> b!2444649 (= e!1552617 (validRegex!2890 EmptyExpr!7182))))

(assert (= (and d!705658 res!1037429) b!2444649))

(declare-fun m!2821155 () Bool)

(assert (=> d!705658 m!2821155))

(assert (=> d!705658 m!2821155))

(declare-fun m!2821157 () Bool)

(assert (=> d!705658 m!2821157))

(declare-fun m!2821159 () Bool)

(assert (=> d!705658 m!2821159))

(declare-fun m!2821161 () Bool)

(assert (=> d!705658 m!2821161))

(declare-fun m!2821163 () Bool)

(assert (=> b!2444649 m!2821163))

(assert (=> b!2444553 d!705658))

(declare-fun d!705660 () Bool)

(declare-fun e!1552635 () Bool)

(assert (=> d!705660 e!1552635))

(declare-fun c!390085 () Bool)

(assert (=> d!705660 (= c!390085 (is-EmptyExpr!7182 lt!878721))))

(declare-fun lt!878786 () Bool)

(declare-fun e!1552633 () Bool)

(assert (=> d!705660 (= lt!878786 e!1552633)))

(declare-fun c!390086 () Bool)

(declare-fun isEmpty!16543 (List!28601) Bool)

(assert (=> d!705660 (= c!390086 (isEmpty!16543 call!149894))))

(assert (=> d!705660 (validRegex!2890 lt!878721)))

(assert (=> d!705660 (= (matchR!3297 lt!878721 call!149894) lt!878786)))

(declare-fun b!2444678 () Bool)

(declare-fun e!1552637 () Bool)

(assert (=> b!2444678 (= e!1552635 e!1552637)))

(declare-fun c!390084 () Bool)

(assert (=> b!2444678 (= c!390084 (is-EmptyLang!7182 lt!878721))))

(declare-fun b!2444679 () Bool)

(declare-fun nullable!2199 (Regex!7182) Bool)

(assert (=> b!2444679 (= e!1552633 (nullable!2199 lt!878721))))

(declare-fun b!2444680 () Bool)

(declare-fun res!1037446 () Bool)

(declare-fun e!1552632 () Bool)

(assert (=> b!2444680 (=> (not res!1037446) (not e!1552632))))

(declare-fun call!149915 () Bool)

(assert (=> b!2444680 (= res!1037446 (not call!149915))))

(declare-fun b!2444681 () Bool)

(declare-fun e!1552638 () Bool)

(declare-fun e!1552636 () Bool)

(assert (=> b!2444681 (= e!1552638 e!1552636)))

(declare-fun res!1037447 () Bool)

(assert (=> b!2444681 (=> res!1037447 e!1552636)))

(assert (=> b!2444681 (= res!1037447 call!149915)))

(declare-fun b!2444682 () Bool)

(declare-fun e!1552634 () Bool)

(assert (=> b!2444682 (= e!1552634 e!1552638)))

(declare-fun res!1037452 () Bool)

(assert (=> b!2444682 (=> (not res!1037452) (not e!1552638))))

(assert (=> b!2444682 (= res!1037452 (not lt!878786))))

(declare-fun b!2444683 () Bool)

(declare-fun res!1037448 () Bool)

(assert (=> b!2444683 (=> res!1037448 e!1552636)))

(declare-fun tail!3825 (List!28601) List!28601)

(assert (=> b!2444683 (= res!1037448 (not (isEmpty!16543 (tail!3825 call!149894))))))

(declare-fun b!2444684 () Bool)

(declare-fun res!1037451 () Bool)

(assert (=> b!2444684 (=> (not res!1037451) (not e!1552632))))

(assert (=> b!2444684 (= res!1037451 (isEmpty!16543 (tail!3825 call!149894)))))

(declare-fun b!2444685 () Bool)

(declare-fun derivativeStep!1853 (Regex!7182 C!14522) Regex!7182)

(declare-fun head!5552 (List!28601) C!14522)

(assert (=> b!2444685 (= e!1552633 (matchR!3297 (derivativeStep!1853 lt!878721 (head!5552 call!149894)) (tail!3825 call!149894)))))

(declare-fun b!2444686 () Bool)

(assert (=> b!2444686 (= e!1552636 (not (= (head!5552 call!149894) (c!390070 lt!878721))))))

(declare-fun b!2444687 () Bool)

(declare-fun res!1037449 () Bool)

(assert (=> b!2444687 (=> res!1037449 e!1552634)))

(assert (=> b!2444687 (= res!1037449 e!1552632)))

(declare-fun res!1037453 () Bool)

(assert (=> b!2444687 (=> (not res!1037453) (not e!1552632))))

(assert (=> b!2444687 (= res!1037453 lt!878786)))

(declare-fun b!2444688 () Bool)

(assert (=> b!2444688 (= e!1552635 (= lt!878786 call!149915))))

(declare-fun b!2444689 () Bool)

(assert (=> b!2444689 (= e!1552632 (= (head!5552 call!149894) (c!390070 lt!878721)))))

(declare-fun bm!149910 () Bool)

(assert (=> bm!149910 (= call!149915 (isEmpty!16543 call!149894))))

(declare-fun b!2444690 () Bool)

(assert (=> b!2444690 (= e!1552637 (not lt!878786))))

(declare-fun b!2444691 () Bool)

(declare-fun res!1037450 () Bool)

(assert (=> b!2444691 (=> res!1037450 e!1552634)))

(assert (=> b!2444691 (= res!1037450 (not (is-ElementMatch!7182 lt!878721)))))

(assert (=> b!2444691 (= e!1552637 e!1552634)))

(assert (= (and d!705660 c!390086) b!2444679))

(assert (= (and d!705660 (not c!390086)) b!2444685))

(assert (= (and d!705660 c!390085) b!2444688))

(assert (= (and d!705660 (not c!390085)) b!2444678))

(assert (= (and b!2444678 c!390084) b!2444690))

(assert (= (and b!2444678 (not c!390084)) b!2444691))

(assert (= (and b!2444691 (not res!1037450)) b!2444687))

(assert (= (and b!2444687 res!1037453) b!2444680))

(assert (= (and b!2444680 res!1037446) b!2444684))

(assert (= (and b!2444684 res!1037451) b!2444689))

(assert (= (and b!2444687 (not res!1037449)) b!2444682))

(assert (= (and b!2444682 res!1037452) b!2444681))

(assert (= (and b!2444681 (not res!1037447)) b!2444683))

(assert (= (and b!2444683 (not res!1037448)) b!2444686))

(assert (= (or b!2444688 b!2444680 b!2444681) bm!149910))

(declare-fun m!2821165 () Bool)

(assert (=> d!705660 m!2821165))

(declare-fun m!2821167 () Bool)

(assert (=> d!705660 m!2821167))

(declare-fun m!2821169 () Bool)

(assert (=> b!2444686 m!2821169))

(declare-fun m!2821171 () Bool)

(assert (=> b!2444684 m!2821171))

(assert (=> b!2444684 m!2821171))

(declare-fun m!2821173 () Bool)

(assert (=> b!2444684 m!2821173))

(assert (=> b!2444689 m!2821169))

(assert (=> bm!149910 m!2821165))

(assert (=> b!2444685 m!2821169))

(assert (=> b!2444685 m!2821169))

(declare-fun m!2821175 () Bool)

(assert (=> b!2444685 m!2821175))

(assert (=> b!2444685 m!2821171))

(assert (=> b!2444685 m!2821175))

(assert (=> b!2444685 m!2821171))

(declare-fun m!2821177 () Bool)

(assert (=> b!2444685 m!2821177))

(assert (=> b!2444683 m!2821171))

(assert (=> b!2444683 m!2821171))

(assert (=> b!2444683 m!2821173))

(declare-fun m!2821179 () Bool)

(assert (=> b!2444679 m!2821179))

(assert (=> b!2444553 d!705660))

(declare-fun d!705662 () Bool)

(assert (=> d!705662 (isDefined!4497 (findConcatSeparation!779 lt!878718 EmptyExpr!7182 Nil!28503 s!9460 s!9460))))

(declare-fun lt!878789 () Unit!41755)

(declare-fun choose!14487 (Regex!7182 Regex!7182 List!28601) Unit!41755)

(assert (=> d!705662 (= lt!878789 (choose!14487 lt!878718 EmptyExpr!7182 s!9460))))

(assert (=> d!705662 (validRegex!2890 lt!878718)))

(assert (=> d!705662 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!83 lt!878718 EmptyExpr!7182 s!9460) lt!878789)))

(declare-fun bs!465274 () Bool)

(assert (= bs!465274 d!705662))

(assert (=> bs!465274 m!2821087))

(assert (=> bs!465274 m!2821087))

(declare-fun m!2821181 () Bool)

(assert (=> bs!465274 m!2821181))

(declare-fun m!2821183 () Bool)

(assert (=> bs!465274 m!2821183))

(assert (=> bs!465274 m!2821161))

(assert (=> b!2444553 d!705662))

(declare-fun bs!465275 () Bool)

(declare-fun d!705664 () Bool)

(assert (= bs!465275 (and d!705664 start!238916)))

(declare-fun lambda!92516 () Int)

(assert (=> bs!465275 (= lambda!92516 lambda!92500)))

(declare-fun b!2444712 () Bool)

(declare-fun e!1552656 () Bool)

(assert (=> b!2444712 (= e!1552656 (isEmpty!16540 (t!208577 l!9164)))))

(declare-fun e!1552655 () Bool)

(assert (=> d!705664 e!1552655))

(declare-fun res!1037458 () Bool)

(assert (=> d!705664 (=> (not res!1037458) (not e!1552655))))

(declare-fun lt!878792 () Regex!7182)

(assert (=> d!705664 (= res!1037458 (validRegex!2890 lt!878792))))

(declare-fun e!1552653 () Regex!7182)

(assert (=> d!705664 (= lt!878792 e!1552653)))

(declare-fun c!390097 () Bool)

(assert (=> d!705664 (= c!390097 e!1552656)))

(declare-fun res!1037459 () Bool)

(assert (=> d!705664 (=> (not res!1037459) (not e!1552656))))

(assert (=> d!705664 (= res!1037459 (is-Cons!28502 l!9164))))

(assert (=> d!705664 (forall!5816 l!9164 lambda!92516)))

(assert (=> d!705664 (= (generalisedConcat!283 l!9164) lt!878792)))

(declare-fun b!2444713 () Bool)

(declare-fun e!1552651 () Regex!7182)

(assert (=> b!2444713 (= e!1552653 e!1552651)))

(declare-fun c!390096 () Bool)

(assert (=> b!2444713 (= c!390096 (is-Cons!28502 l!9164))))

(declare-fun b!2444714 () Bool)

(declare-fun e!1552654 () Bool)

(assert (=> b!2444714 (= e!1552654 (= lt!878792 (head!5550 l!9164)))))

(declare-fun b!2444715 () Bool)

(declare-fun e!1552652 () Bool)

(assert (=> b!2444715 (= e!1552655 e!1552652)))

(declare-fun c!390095 () Bool)

(assert (=> b!2444715 (= c!390095 (isEmpty!16540 l!9164))))

(declare-fun b!2444716 () Bool)

(declare-fun isEmptyExpr!217 (Regex!7182) Bool)

(assert (=> b!2444716 (= e!1552652 (isEmptyExpr!217 lt!878792))))

(declare-fun b!2444717 () Bool)

(declare-fun isConcat!217 (Regex!7182) Bool)

(assert (=> b!2444717 (= e!1552654 (isConcat!217 lt!878792))))

(declare-fun b!2444718 () Bool)

(assert (=> b!2444718 (= e!1552651 (Concat!11818 (h!33903 l!9164) (generalisedConcat!283 (t!208577 l!9164))))))

(declare-fun b!2444719 () Bool)

(assert (=> b!2444719 (= e!1552651 EmptyExpr!7182)))

(declare-fun b!2444720 () Bool)

(assert (=> b!2444720 (= e!1552652 e!1552654)))

(declare-fun c!390098 () Bool)

(assert (=> b!2444720 (= c!390098 (isEmpty!16540 (tail!3823 l!9164)))))

(declare-fun b!2444721 () Bool)

(assert (=> b!2444721 (= e!1552653 (h!33903 l!9164))))

(assert (= (and d!705664 res!1037459) b!2444712))

(assert (= (and d!705664 c!390097) b!2444721))

(assert (= (and d!705664 (not c!390097)) b!2444713))

(assert (= (and b!2444713 c!390096) b!2444718))

(assert (= (and b!2444713 (not c!390096)) b!2444719))

(assert (= (and d!705664 res!1037458) b!2444715))

(assert (= (and b!2444715 c!390095) b!2444716))

(assert (= (and b!2444715 (not c!390095)) b!2444720))

(assert (= (and b!2444720 c!390098) b!2444714))

(assert (= (and b!2444720 (not c!390098)) b!2444717))

(declare-fun m!2821185 () Bool)

(assert (=> b!2444717 m!2821185))

(declare-fun m!2821187 () Bool)

(assert (=> b!2444718 m!2821187))

(assert (=> b!2444715 m!2821059))

(declare-fun m!2821189 () Bool)

(assert (=> d!705664 m!2821189))

(declare-fun m!2821191 () Bool)

(assert (=> d!705664 m!2821191))

(assert (=> b!2444720 m!2821063))

(assert (=> b!2444720 m!2821063))

(declare-fun m!2821193 () Bool)

(assert (=> b!2444720 m!2821193))

(declare-fun m!2821195 () Bool)

(assert (=> b!2444712 m!2821195))

(assert (=> b!2444714 m!2821045))

(declare-fun m!2821197 () Bool)

(assert (=> b!2444716 m!2821197))

(assert (=> b!2444561 d!705664))

(declare-fun d!705670 () Bool)

(assert (=> d!705670 (= (isEmpty!16540 lt!878709) (is-Nil!28502 lt!878709))))

(assert (=> b!2444562 d!705670))

(declare-fun d!705672 () Bool)

(assert (=> d!705672 (= (tail!3823 l!9164) (t!208577 l!9164))))

(assert (=> b!2444562 d!705672))

(declare-fun d!705674 () Bool)

(assert (=> d!705674 (= (isDefined!4497 (ite c!390069 call!149892 lt!878717)) (not (isEmpty!16542 (ite c!390069 call!149892 lt!878717))))))

(declare-fun bs!465276 () Bool)

(assert (= bs!465276 d!705674))

(declare-fun m!2821199 () Bool)

(assert (=> bs!465276 m!2821199))

(assert (=> bm!149884 d!705674))

(declare-fun bs!465279 () Bool)

(declare-fun b!2444759 () Bool)

(assert (= bs!465279 (and b!2444759 b!2444552)))

(declare-fun lambda!92521 () Int)

(assert (=> bs!465279 (not (= lambda!92521 lambda!92501))))

(assert (=> bs!465279 (not (= lambda!92521 lambda!92502))))

(assert (=> b!2444759 true))

(assert (=> b!2444759 true))

(declare-fun bs!465280 () Bool)

(declare-fun b!2444756 () Bool)

(assert (= bs!465280 (and b!2444756 b!2444552)))

(declare-fun lambda!92522 () Int)

(assert (=> bs!465280 (not (= lambda!92522 lambda!92501))))

(assert (=> bs!465280 (= lambda!92522 lambda!92502)))

(declare-fun bs!465281 () Bool)

(assert (= bs!465281 (and b!2444756 b!2444759)))

(assert (=> bs!465281 (not (= lambda!92522 lambda!92521))))

(assert (=> b!2444756 true))

(assert (=> b!2444756 true))

(declare-fun bm!149915 () Bool)

(declare-fun call!149920 () Bool)

(assert (=> bm!149915 (= call!149920 (isEmpty!16543 s!9460))))

(declare-fun d!705676 () Bool)

(declare-fun c!390109 () Bool)

(assert (=> d!705676 (= c!390109 (is-EmptyExpr!7182 r!13927))))

(declare-fun e!1552676 () Bool)

(assert (=> d!705676 (= (matchRSpec!1029 r!13927 s!9460) e!1552676)))

(declare-fun b!2444754 () Bool)

(declare-fun e!1552678 () Bool)

(assert (=> b!2444754 (= e!1552678 (matchRSpec!1029 (regTwo!14877 r!13927) s!9460))))

(declare-fun b!2444755 () Bool)

(declare-fun e!1552679 () Bool)

(assert (=> b!2444755 (= e!1552679 (= s!9460 (Cons!28503 (c!390070 r!13927) Nil!28503)))))

(declare-fun e!1552675 () Bool)

(declare-fun call!149921 () Bool)

(assert (=> b!2444756 (= e!1552675 call!149921)))

(declare-fun b!2444757 () Bool)

(assert (=> b!2444757 (= e!1552676 call!149920)))

(declare-fun b!2444758 () Bool)

(declare-fun c!390108 () Bool)

(assert (=> b!2444758 (= c!390108 (is-ElementMatch!7182 r!13927))))

(declare-fun e!1552677 () Bool)

(assert (=> b!2444758 (= e!1552677 e!1552679)))

(declare-fun e!1552681 () Bool)

(assert (=> b!2444759 (= e!1552681 call!149921)))

(declare-fun b!2444760 () Bool)

(declare-fun res!1037477 () Bool)

(assert (=> b!2444760 (=> res!1037477 e!1552681)))

(assert (=> b!2444760 (= res!1037477 call!149920)))

(assert (=> b!2444760 (= e!1552675 e!1552681)))

(declare-fun b!2444761 () Bool)

(declare-fun e!1552680 () Bool)

(assert (=> b!2444761 (= e!1552680 e!1552678)))

(declare-fun res!1037476 () Bool)

(assert (=> b!2444761 (= res!1037476 (matchRSpec!1029 (regOne!14877 r!13927) s!9460))))

(assert (=> b!2444761 (=> res!1037476 e!1552678)))

(declare-fun bm!149916 () Bool)

(declare-fun c!390107 () Bool)

(assert (=> bm!149916 (= call!149921 (Exists!1218 (ite c!390107 lambda!92521 lambda!92522)))))

(declare-fun b!2444762 () Bool)

(assert (=> b!2444762 (= e!1552680 e!1552675)))

(assert (=> b!2444762 (= c!390107 (is-Star!7182 r!13927))))

(declare-fun b!2444763 () Bool)

(assert (=> b!2444763 (= e!1552676 e!1552677)))

(declare-fun res!1037478 () Bool)

(assert (=> b!2444763 (= res!1037478 (not (is-EmptyLang!7182 r!13927)))))

(assert (=> b!2444763 (=> (not res!1037478) (not e!1552677))))

(declare-fun b!2444764 () Bool)

(declare-fun c!390110 () Bool)

(assert (=> b!2444764 (= c!390110 (is-Union!7182 r!13927))))

(assert (=> b!2444764 (= e!1552679 e!1552680)))

(assert (= (and d!705676 c!390109) b!2444757))

(assert (= (and d!705676 (not c!390109)) b!2444763))

(assert (= (and b!2444763 res!1037478) b!2444758))

(assert (= (and b!2444758 c!390108) b!2444755))

(assert (= (and b!2444758 (not c!390108)) b!2444764))

(assert (= (and b!2444764 c!390110) b!2444761))

(assert (= (and b!2444764 (not c!390110)) b!2444762))

(assert (= (and b!2444761 (not res!1037476)) b!2444754))

(assert (= (and b!2444762 c!390107) b!2444760))

(assert (= (and b!2444762 (not c!390107)) b!2444756))

(assert (= (and b!2444760 (not res!1037477)) b!2444759))

(assert (= (or b!2444759 b!2444756) bm!149916))

(assert (= (or b!2444757 b!2444760) bm!149915))

(declare-fun m!2821211 () Bool)

(assert (=> bm!149915 m!2821211))

(declare-fun m!2821213 () Bool)

(assert (=> b!2444754 m!2821213))

(declare-fun m!2821215 () Bool)

(assert (=> b!2444761 m!2821215))

(declare-fun m!2821217 () Bool)

(assert (=> bm!149916 m!2821217))

(assert (=> b!2444555 d!705676))

(declare-fun d!705684 () Bool)

(declare-fun e!1552685 () Bool)

(assert (=> d!705684 e!1552685))

(declare-fun c!390112 () Bool)

(assert (=> d!705684 (= c!390112 (is-EmptyExpr!7182 r!13927))))

(declare-fun lt!878796 () Bool)

(declare-fun e!1552683 () Bool)

(assert (=> d!705684 (= lt!878796 e!1552683)))

(declare-fun c!390113 () Bool)

(assert (=> d!705684 (= c!390113 (isEmpty!16543 s!9460))))

(assert (=> d!705684 (validRegex!2890 r!13927)))

(assert (=> d!705684 (= (matchR!3297 r!13927 s!9460) lt!878796)))

(declare-fun b!2444765 () Bool)

(declare-fun e!1552687 () Bool)

(assert (=> b!2444765 (= e!1552685 e!1552687)))

(declare-fun c!390111 () Bool)

(assert (=> b!2444765 (= c!390111 (is-EmptyLang!7182 r!13927))))

(declare-fun b!2444766 () Bool)

(assert (=> b!2444766 (= e!1552683 (nullable!2199 r!13927))))

(declare-fun b!2444767 () Bool)

(declare-fun res!1037479 () Bool)

(declare-fun e!1552682 () Bool)

(assert (=> b!2444767 (=> (not res!1037479) (not e!1552682))))

(declare-fun call!149922 () Bool)

(assert (=> b!2444767 (= res!1037479 (not call!149922))))

(declare-fun b!2444768 () Bool)

(declare-fun e!1552688 () Bool)

(declare-fun e!1552686 () Bool)

(assert (=> b!2444768 (= e!1552688 e!1552686)))

(declare-fun res!1037480 () Bool)

(assert (=> b!2444768 (=> res!1037480 e!1552686)))

(assert (=> b!2444768 (= res!1037480 call!149922)))

(declare-fun b!2444769 () Bool)

(declare-fun e!1552684 () Bool)

(assert (=> b!2444769 (= e!1552684 e!1552688)))

(declare-fun res!1037485 () Bool)

(assert (=> b!2444769 (=> (not res!1037485) (not e!1552688))))

(assert (=> b!2444769 (= res!1037485 (not lt!878796))))

(declare-fun b!2444770 () Bool)

(declare-fun res!1037481 () Bool)

(assert (=> b!2444770 (=> res!1037481 e!1552686)))

(assert (=> b!2444770 (= res!1037481 (not (isEmpty!16543 (tail!3825 s!9460))))))

(declare-fun b!2444771 () Bool)

(declare-fun res!1037484 () Bool)

(assert (=> b!2444771 (=> (not res!1037484) (not e!1552682))))

(assert (=> b!2444771 (= res!1037484 (isEmpty!16543 (tail!3825 s!9460)))))

(declare-fun b!2444772 () Bool)

(assert (=> b!2444772 (= e!1552683 (matchR!3297 (derivativeStep!1853 r!13927 (head!5552 s!9460)) (tail!3825 s!9460)))))

(declare-fun b!2444773 () Bool)

(assert (=> b!2444773 (= e!1552686 (not (= (head!5552 s!9460) (c!390070 r!13927))))))

(declare-fun b!2444774 () Bool)

(declare-fun res!1037482 () Bool)

(assert (=> b!2444774 (=> res!1037482 e!1552684)))

(assert (=> b!2444774 (= res!1037482 e!1552682)))

(declare-fun res!1037486 () Bool)

(assert (=> b!2444774 (=> (not res!1037486) (not e!1552682))))

(assert (=> b!2444774 (= res!1037486 lt!878796)))

(declare-fun b!2444775 () Bool)

(assert (=> b!2444775 (= e!1552685 (= lt!878796 call!149922))))

(declare-fun b!2444776 () Bool)

(assert (=> b!2444776 (= e!1552682 (= (head!5552 s!9460) (c!390070 r!13927)))))

(declare-fun bm!149917 () Bool)

(assert (=> bm!149917 (= call!149922 (isEmpty!16543 s!9460))))

(declare-fun b!2444777 () Bool)

(assert (=> b!2444777 (= e!1552687 (not lt!878796))))

(declare-fun b!2444778 () Bool)

(declare-fun res!1037483 () Bool)

(assert (=> b!2444778 (=> res!1037483 e!1552684)))

(assert (=> b!2444778 (= res!1037483 (not (is-ElementMatch!7182 r!13927)))))

(assert (=> b!2444778 (= e!1552687 e!1552684)))

(assert (= (and d!705684 c!390113) b!2444766))

(assert (= (and d!705684 (not c!390113)) b!2444772))

(assert (= (and d!705684 c!390112) b!2444775))

(assert (= (and d!705684 (not c!390112)) b!2444765))

(assert (= (and b!2444765 c!390111) b!2444777))

(assert (= (and b!2444765 (not c!390111)) b!2444778))

(assert (= (and b!2444778 (not res!1037483)) b!2444774))

(assert (= (and b!2444774 res!1037486) b!2444767))

(assert (= (and b!2444767 res!1037479) b!2444771))

(assert (= (and b!2444771 res!1037484) b!2444776))

(assert (= (and b!2444774 (not res!1037482)) b!2444769))

(assert (= (and b!2444769 res!1037485) b!2444768))

(assert (= (and b!2444768 (not res!1037480)) b!2444770))

(assert (= (and b!2444770 (not res!1037481)) b!2444773))

(assert (= (or b!2444775 b!2444767 b!2444768) bm!149917))

(assert (=> d!705684 m!2821211))

(declare-fun m!2821219 () Bool)

(assert (=> d!705684 m!2821219))

(declare-fun m!2821221 () Bool)

(assert (=> b!2444773 m!2821221))

(declare-fun m!2821223 () Bool)

(assert (=> b!2444771 m!2821223))

(assert (=> b!2444771 m!2821223))

(declare-fun m!2821225 () Bool)

(assert (=> b!2444771 m!2821225))

(assert (=> b!2444776 m!2821221))

(assert (=> bm!149917 m!2821211))

(assert (=> b!2444772 m!2821221))

(assert (=> b!2444772 m!2821221))

(declare-fun m!2821227 () Bool)

(assert (=> b!2444772 m!2821227))

(assert (=> b!2444772 m!2821223))

(assert (=> b!2444772 m!2821227))

(assert (=> b!2444772 m!2821223))

(declare-fun m!2821229 () Bool)

(assert (=> b!2444772 m!2821229))

(assert (=> b!2444770 m!2821223))

(assert (=> b!2444770 m!2821223))

(assert (=> b!2444770 m!2821225))

(declare-fun m!2821231 () Bool)

(assert (=> b!2444766 m!2821231))

(assert (=> b!2444555 d!705684))

(declare-fun d!705686 () Bool)

(assert (=> d!705686 (= (matchR!3297 r!13927 s!9460) (matchRSpec!1029 r!13927 s!9460))))

(declare-fun lt!878799 () Unit!41755)

(declare-fun choose!14488 (Regex!7182 List!28601) Unit!41755)

(assert (=> d!705686 (= lt!878799 (choose!14488 r!13927 s!9460))))

(assert (=> d!705686 (validRegex!2890 r!13927)))

(assert (=> d!705686 (= (mainMatchTheorem!1029 r!13927 s!9460) lt!878799)))

(declare-fun bs!465282 () Bool)

(assert (= bs!465282 d!705686))

(assert (=> bs!465282 m!2821073))

(assert (=> bs!465282 m!2821071))

(declare-fun m!2821233 () Bool)

(assert (=> bs!465282 m!2821233))

(assert (=> bs!465282 m!2821219))

(assert (=> b!2444555 d!705686))

(declare-fun bs!465283 () Bool)

(declare-fun d!705688 () Bool)

(assert (= bs!465283 (and d!705688 start!238916)))

(declare-fun lambda!92523 () Int)

(assert (=> bs!465283 (= lambda!92523 lambda!92500)))

(declare-fun bs!465284 () Bool)

(assert (= bs!465284 (and d!705688 d!705664)))

(assert (=> bs!465284 (= lambda!92523 lambda!92516)))

(declare-fun b!2444779 () Bool)

(declare-fun e!1552694 () Bool)

(assert (=> b!2444779 (= e!1552694 (isEmpty!16540 (t!208577 lt!878709)))))

(declare-fun e!1552693 () Bool)

(assert (=> d!705688 e!1552693))

(declare-fun res!1037487 () Bool)

(assert (=> d!705688 (=> (not res!1037487) (not e!1552693))))

(declare-fun lt!878800 () Regex!7182)

(assert (=> d!705688 (= res!1037487 (validRegex!2890 lt!878800))))

(declare-fun e!1552691 () Regex!7182)

(assert (=> d!705688 (= lt!878800 e!1552691)))

(declare-fun c!390116 () Bool)

(assert (=> d!705688 (= c!390116 e!1552694)))

(declare-fun res!1037488 () Bool)

(assert (=> d!705688 (=> (not res!1037488) (not e!1552694))))

(assert (=> d!705688 (= res!1037488 (is-Cons!28502 lt!878709))))

(assert (=> d!705688 (forall!5816 lt!878709 lambda!92523)))

(assert (=> d!705688 (= (generalisedConcat!283 lt!878709) lt!878800)))

(declare-fun b!2444780 () Bool)

(declare-fun e!1552689 () Regex!7182)

(assert (=> b!2444780 (= e!1552691 e!1552689)))

(declare-fun c!390115 () Bool)

(assert (=> b!2444780 (= c!390115 (is-Cons!28502 lt!878709))))

(declare-fun b!2444781 () Bool)

(declare-fun e!1552692 () Bool)

(assert (=> b!2444781 (= e!1552692 (= lt!878800 (head!5550 lt!878709)))))

(declare-fun b!2444782 () Bool)

(declare-fun e!1552690 () Bool)

(assert (=> b!2444782 (= e!1552693 e!1552690)))

(declare-fun c!390114 () Bool)

(assert (=> b!2444782 (= c!390114 (isEmpty!16540 lt!878709))))

(declare-fun b!2444783 () Bool)

(assert (=> b!2444783 (= e!1552690 (isEmptyExpr!217 lt!878800))))

(declare-fun b!2444784 () Bool)

(assert (=> b!2444784 (= e!1552692 (isConcat!217 lt!878800))))

(declare-fun b!2444785 () Bool)

(assert (=> b!2444785 (= e!1552689 (Concat!11818 (h!33903 lt!878709) (generalisedConcat!283 (t!208577 lt!878709))))))

(declare-fun b!2444786 () Bool)

(assert (=> b!2444786 (= e!1552689 EmptyExpr!7182)))

(declare-fun b!2444787 () Bool)

(assert (=> b!2444787 (= e!1552690 e!1552692)))

(declare-fun c!390117 () Bool)

(assert (=> b!2444787 (= c!390117 (isEmpty!16540 (tail!3823 lt!878709)))))

(declare-fun b!2444788 () Bool)

(assert (=> b!2444788 (= e!1552691 (h!33903 lt!878709))))

(assert (= (and d!705688 res!1037488) b!2444779))

(assert (= (and d!705688 c!390116) b!2444788))

(assert (= (and d!705688 (not c!390116)) b!2444780))

(assert (= (and b!2444780 c!390115) b!2444785))

(assert (= (and b!2444780 (not c!390115)) b!2444786))

(assert (= (and d!705688 res!1037487) b!2444782))

(assert (= (and b!2444782 c!390114) b!2444783))

(assert (= (and b!2444782 (not c!390114)) b!2444787))

(assert (= (and b!2444787 c!390117) b!2444781))

(assert (= (and b!2444787 (not c!390117)) b!2444784))

(declare-fun m!2821235 () Bool)

(assert (=> b!2444784 m!2821235))

(declare-fun m!2821237 () Bool)

(assert (=> b!2444785 m!2821237))

(assert (=> b!2444782 m!2821061))

(declare-fun m!2821239 () Bool)

(assert (=> d!705688 m!2821239))

(declare-fun m!2821241 () Bool)

(assert (=> d!705688 m!2821241))

(declare-fun m!2821243 () Bool)

(assert (=> b!2444787 m!2821243))

(assert (=> b!2444787 m!2821243))

(declare-fun m!2821245 () Bool)

(assert (=> b!2444787 m!2821245))

(declare-fun m!2821247 () Bool)

(assert (=> b!2444779 m!2821247))

(declare-fun m!2821249 () Bool)

(assert (=> b!2444781 m!2821249))

(declare-fun m!2821251 () Bool)

(assert (=> b!2444783 m!2821251))

(assert (=> b!2444543 d!705688))

(declare-fun b!2444825 () Bool)

(declare-fun e!1552715 () Option!5671)

(declare-fun e!1552717 () Option!5671)

(assert (=> b!2444825 (= e!1552715 e!1552717)))

(declare-fun c!390127 () Bool)

(assert (=> b!2444825 (= c!390127 (is-Nil!28503 s!9460))))

(declare-fun b!2444826 () Bool)

(declare-fun res!1037513 () Bool)

(declare-fun e!1552718 () Bool)

(assert (=> b!2444826 (=> (not res!1037513) (not e!1552718))))

(declare-fun lt!878813 () Option!5671)

(assert (=> b!2444826 (= res!1037513 (matchR!3297 lt!878712 (_2!16601 (get!8803 lt!878813))))))

(declare-fun b!2444827 () Bool)

(assert (=> b!2444827 (= e!1552718 (= (++!7085 (_1!16601 (get!8803 lt!878813)) (_2!16601 (get!8803 lt!878813))) s!9460))))

(declare-fun d!705690 () Bool)

(declare-fun e!1552719 () Bool)

(assert (=> d!705690 e!1552719))

(declare-fun res!1037510 () Bool)

(assert (=> d!705690 (=> res!1037510 e!1552719)))

(assert (=> d!705690 (= res!1037510 e!1552718)))

(declare-fun res!1037511 () Bool)

(assert (=> d!705690 (=> (not res!1037511) (not e!1552718))))

(assert (=> d!705690 (= res!1037511 (isDefined!4497 lt!878813))))

(assert (=> d!705690 (= lt!878813 e!1552715)))

(declare-fun c!390126 () Bool)

(declare-fun e!1552716 () Bool)

(assert (=> d!705690 (= c!390126 e!1552716)))

(declare-fun res!1037512 () Bool)

(assert (=> d!705690 (=> (not res!1037512) (not e!1552716))))

(assert (=> d!705690 (= res!1037512 (matchR!3297 lt!878718 Nil!28503))))

(assert (=> d!705690 (validRegex!2890 lt!878718)))

(assert (=> d!705690 (= (findConcatSeparation!779 lt!878718 lt!878712 Nil!28503 s!9460 s!9460) lt!878813)))

(declare-fun b!2444828 () Bool)

(declare-fun lt!878814 () Unit!41755)

(declare-fun lt!878815 () Unit!41755)

(assert (=> b!2444828 (= lt!878814 lt!878815)))

(assert (=> b!2444828 (= (++!7085 (++!7085 Nil!28503 (Cons!28503 (h!33904 s!9460) Nil!28503)) (t!208578 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!700 (List!28601 C!14522 List!28601 List!28601) Unit!41755)

(assert (=> b!2444828 (= lt!878815 (lemmaMoveElementToOtherListKeepsConcatEq!700 Nil!28503 (h!33904 s!9460) (t!208578 s!9460) s!9460))))

(assert (=> b!2444828 (= e!1552717 (findConcatSeparation!779 lt!878718 lt!878712 (++!7085 Nil!28503 (Cons!28503 (h!33904 s!9460) Nil!28503)) (t!208578 s!9460) s!9460))))

(declare-fun b!2444829 () Bool)

(assert (=> b!2444829 (= e!1552719 (not (isDefined!4497 lt!878813)))))

(declare-fun b!2444830 () Bool)

(declare-fun res!1037509 () Bool)

(assert (=> b!2444830 (=> (not res!1037509) (not e!1552718))))

(assert (=> b!2444830 (= res!1037509 (matchR!3297 lt!878718 (_1!16601 (get!8803 lt!878813))))))

(declare-fun b!2444831 () Bool)

(assert (=> b!2444831 (= e!1552716 (matchR!3297 lt!878712 s!9460))))

(declare-fun b!2444832 () Bool)

(assert (=> b!2444832 (= e!1552715 (Some!5670 (tuple2!28121 Nil!28503 s!9460)))))

(declare-fun b!2444833 () Bool)

(assert (=> b!2444833 (= e!1552717 None!5670)))

(assert (= (and d!705690 res!1037512) b!2444831))

(assert (= (and d!705690 c!390126) b!2444832))

(assert (= (and d!705690 (not c!390126)) b!2444825))

(assert (= (and b!2444825 c!390127) b!2444833))

(assert (= (and b!2444825 (not c!390127)) b!2444828))

(assert (= (and d!705690 res!1037511) b!2444830))

(assert (= (and b!2444830 res!1037509) b!2444826))

(assert (= (and b!2444826 res!1037513) b!2444827))

(assert (= (and d!705690 (not res!1037510)) b!2444829))

(declare-fun m!2821253 () Bool)

(assert (=> b!2444828 m!2821253))

(assert (=> b!2444828 m!2821253))

(declare-fun m!2821255 () Bool)

(assert (=> b!2444828 m!2821255))

(declare-fun m!2821257 () Bool)

(assert (=> b!2444828 m!2821257))

(assert (=> b!2444828 m!2821253))

(declare-fun m!2821259 () Bool)

(assert (=> b!2444828 m!2821259))

(declare-fun m!2821261 () Bool)

(assert (=> d!705690 m!2821261))

(declare-fun m!2821263 () Bool)

(assert (=> d!705690 m!2821263))

(assert (=> d!705690 m!2821161))

(declare-fun m!2821265 () Bool)

(assert (=> b!2444827 m!2821265))

(declare-fun m!2821267 () Bool)

(assert (=> b!2444827 m!2821267))

(assert (=> b!2444829 m!2821261))

(assert (=> b!2444830 m!2821265))

(declare-fun m!2821269 () Bool)

(assert (=> b!2444830 m!2821269))

(declare-fun m!2821271 () Bool)

(assert (=> b!2444831 m!2821271))

(assert (=> b!2444826 m!2821265))

(declare-fun m!2821273 () Bool)

(assert (=> b!2444826 m!2821273))

(assert (=> bm!149886 d!705690))

(declare-fun d!705692 () Bool)

(assert (=> d!705692 (= (isDefined!4497 (findConcatSeparation!779 lt!878718 lt!878712 Nil!28503 s!9460 s!9460)) (not (isEmpty!16542 (findConcatSeparation!779 lt!878718 lt!878712 Nil!28503 s!9460 s!9460))))))

(declare-fun bs!465285 () Bool)

(assert (= bs!465285 d!705692))

(assert (=> bs!465285 m!2821039))

(declare-fun m!2821275 () Bool)

(assert (=> bs!465285 m!2821275))

(assert (=> b!2444559 d!705692))

(assert (=> b!2444559 d!705690))

(declare-fun d!705694 () Bool)

(declare-fun e!1552723 () Bool)

(assert (=> d!705694 e!1552723))

(declare-fun c!390129 () Bool)

(assert (=> d!705694 (= c!390129 (is-EmptyExpr!7182 lt!878718))))

(declare-fun lt!878816 () Bool)

(declare-fun e!1552721 () Bool)

(assert (=> d!705694 (= lt!878816 e!1552721)))

(declare-fun c!390130 () Bool)

(assert (=> d!705694 (= c!390130 (isEmpty!16543 s!9460))))

(assert (=> d!705694 (validRegex!2890 lt!878718)))

(assert (=> d!705694 (= (matchR!3297 lt!878718 s!9460) lt!878816)))

(declare-fun b!2444834 () Bool)

(declare-fun e!1552725 () Bool)

(assert (=> b!2444834 (= e!1552723 e!1552725)))

(declare-fun c!390128 () Bool)

(assert (=> b!2444834 (= c!390128 (is-EmptyLang!7182 lt!878718))))

(declare-fun b!2444835 () Bool)

(assert (=> b!2444835 (= e!1552721 (nullable!2199 lt!878718))))

(declare-fun b!2444836 () Bool)

(declare-fun res!1037514 () Bool)

(declare-fun e!1552720 () Bool)

(assert (=> b!2444836 (=> (not res!1037514) (not e!1552720))))

(declare-fun call!149923 () Bool)

(assert (=> b!2444836 (= res!1037514 (not call!149923))))

(declare-fun b!2444837 () Bool)

(declare-fun e!1552726 () Bool)

(declare-fun e!1552724 () Bool)

(assert (=> b!2444837 (= e!1552726 e!1552724)))

(declare-fun res!1037515 () Bool)

(assert (=> b!2444837 (=> res!1037515 e!1552724)))

(assert (=> b!2444837 (= res!1037515 call!149923)))

(declare-fun b!2444838 () Bool)

(declare-fun e!1552722 () Bool)

(assert (=> b!2444838 (= e!1552722 e!1552726)))

(declare-fun res!1037520 () Bool)

(assert (=> b!2444838 (=> (not res!1037520) (not e!1552726))))

(assert (=> b!2444838 (= res!1037520 (not lt!878816))))

(declare-fun b!2444839 () Bool)

(declare-fun res!1037516 () Bool)

(assert (=> b!2444839 (=> res!1037516 e!1552724)))

(assert (=> b!2444839 (= res!1037516 (not (isEmpty!16543 (tail!3825 s!9460))))))

(declare-fun b!2444840 () Bool)

(declare-fun res!1037519 () Bool)

(assert (=> b!2444840 (=> (not res!1037519) (not e!1552720))))

(assert (=> b!2444840 (= res!1037519 (isEmpty!16543 (tail!3825 s!9460)))))

(declare-fun b!2444841 () Bool)

(assert (=> b!2444841 (= e!1552721 (matchR!3297 (derivativeStep!1853 lt!878718 (head!5552 s!9460)) (tail!3825 s!9460)))))

(declare-fun b!2444842 () Bool)

(assert (=> b!2444842 (= e!1552724 (not (= (head!5552 s!9460) (c!390070 lt!878718))))))

(declare-fun b!2444843 () Bool)

(declare-fun res!1037517 () Bool)

(assert (=> b!2444843 (=> res!1037517 e!1552722)))

(assert (=> b!2444843 (= res!1037517 e!1552720)))

(declare-fun res!1037521 () Bool)

(assert (=> b!2444843 (=> (not res!1037521) (not e!1552720))))

(assert (=> b!2444843 (= res!1037521 lt!878816)))

(declare-fun b!2444844 () Bool)

(assert (=> b!2444844 (= e!1552723 (= lt!878816 call!149923))))

(declare-fun b!2444845 () Bool)

(assert (=> b!2444845 (= e!1552720 (= (head!5552 s!9460) (c!390070 lt!878718)))))

(declare-fun bm!149918 () Bool)

(assert (=> bm!149918 (= call!149923 (isEmpty!16543 s!9460))))

(declare-fun b!2444846 () Bool)

(assert (=> b!2444846 (= e!1552725 (not lt!878816))))

(declare-fun b!2444847 () Bool)

(declare-fun res!1037518 () Bool)

(assert (=> b!2444847 (=> res!1037518 e!1552722)))

(assert (=> b!2444847 (= res!1037518 (not (is-ElementMatch!7182 lt!878718)))))

(assert (=> b!2444847 (= e!1552725 e!1552722)))

(assert (= (and d!705694 c!390130) b!2444835))

(assert (= (and d!705694 (not c!390130)) b!2444841))

(assert (= (and d!705694 c!390129) b!2444844))

(assert (= (and d!705694 (not c!390129)) b!2444834))

(assert (= (and b!2444834 c!390128) b!2444846))

(assert (= (and b!2444834 (not c!390128)) b!2444847))

(assert (= (and b!2444847 (not res!1037518)) b!2444843))

(assert (= (and b!2444843 res!1037521) b!2444836))

(assert (= (and b!2444836 res!1037514) b!2444840))

(assert (= (and b!2444840 res!1037519) b!2444845))

(assert (= (and b!2444843 (not res!1037517)) b!2444838))

(assert (= (and b!2444838 res!1037520) b!2444837))

(assert (= (and b!2444837 (not res!1037515)) b!2444839))

(assert (= (and b!2444839 (not res!1037516)) b!2444842))

(assert (= (or b!2444844 b!2444836 b!2444837) bm!149918))

(assert (=> d!705694 m!2821211))

(assert (=> d!705694 m!2821161))

(assert (=> b!2444842 m!2821221))

(assert (=> b!2444840 m!2821223))

(assert (=> b!2444840 m!2821223))

(assert (=> b!2444840 m!2821225))

(assert (=> b!2444845 m!2821221))

(assert (=> bm!149918 m!2821211))

(assert (=> b!2444841 m!2821221))

(assert (=> b!2444841 m!2821221))

(declare-fun m!2821277 () Bool)

(assert (=> b!2444841 m!2821277))

(assert (=> b!2444841 m!2821223))

(assert (=> b!2444841 m!2821277))

(assert (=> b!2444841 m!2821223))

(declare-fun m!2821279 () Bool)

(assert (=> b!2444841 m!2821279))

(assert (=> b!2444839 m!2821223))

(assert (=> b!2444839 m!2821223))

(assert (=> b!2444839 m!2821225))

(declare-fun m!2821281 () Bool)

(assert (=> b!2444835 m!2821281))

(assert (=> b!2444559 d!705694))

(declare-fun d!705696 () Bool)

(assert (=> d!705696 (= (head!5550 l!9164) (h!33903 l!9164))))

(assert (=> b!2444559 d!705696))

(declare-fun d!705698 () Bool)

(assert (=> d!705698 (= (isEmpty!16540 l!9164) (is-Nil!28502 l!9164))))

(assert (=> b!2444544 d!705698))

(declare-fun d!705700 () Bool)

(assert (=> d!705700 (= (isDefined!4497 (findConcatSeparation!779 (regOne!14876 r!13927) (regTwo!14876 r!13927) Nil!28503 s!9460 s!9460)) (not (isEmpty!16542 (findConcatSeparation!779 (regOne!14876 r!13927) (regTwo!14876 r!13927) Nil!28503 s!9460 s!9460))))))

(declare-fun bs!465286 () Bool)

(assert (= bs!465286 d!705700))

(assert (=> bs!465286 m!2821047))

(declare-fun m!2821283 () Bool)

(assert (=> bs!465286 m!2821283))

(assert (=> b!2444552 d!705700))

(declare-fun bs!465287 () Bool)

(declare-fun d!705702 () Bool)

(assert (= bs!465287 (and d!705702 b!2444552)))

(declare-fun lambda!92526 () Int)

(assert (=> bs!465287 (= lambda!92526 lambda!92501)))

(assert (=> bs!465287 (not (= lambda!92526 lambda!92502))))

(declare-fun bs!465288 () Bool)

(assert (= bs!465288 (and d!705702 b!2444759)))

(assert (=> bs!465288 (not (= lambda!92526 lambda!92521))))

(declare-fun bs!465289 () Bool)

(assert (= bs!465289 (and d!705702 b!2444756)))

(assert (=> bs!465289 (not (= lambda!92526 lambda!92522))))

(assert (=> d!705702 true))

(assert (=> d!705702 true))

(assert (=> d!705702 true))

(assert (=> d!705702 (= (isDefined!4497 (findConcatSeparation!779 (regOne!14876 r!13927) (regTwo!14876 r!13927) Nil!28503 s!9460 s!9460)) (Exists!1218 lambda!92526))))

(declare-fun lt!878822 () Unit!41755)

(declare-fun choose!14489 (Regex!7182 Regex!7182 List!28601) Unit!41755)

(assert (=> d!705702 (= lt!878822 (choose!14489 (regOne!14876 r!13927) (regTwo!14876 r!13927) s!9460))))

(assert (=> d!705702 (validRegex!2890 (regOne!14876 r!13927))))

(assert (=> d!705702 (= (lemmaFindConcatSeparationEquivalentToExists!717 (regOne!14876 r!13927) (regTwo!14876 r!13927) s!9460) lt!878822)))

(declare-fun bs!465290 () Bool)

(assert (= bs!465290 d!705702))

(declare-fun m!2821307 () Bool)

(assert (=> bs!465290 m!2821307))

(assert (=> bs!465290 m!2821047))

(assert (=> bs!465290 m!2821049))

(declare-fun m!2821309 () Bool)

(assert (=> bs!465290 m!2821309))

(declare-fun m!2821311 () Bool)

(assert (=> bs!465290 m!2821311))

(assert (=> bs!465290 m!2821047))

(assert (=> b!2444552 d!705702))

(declare-fun bs!465291 () Bool)

(declare-fun d!705706 () Bool)

(assert (= bs!465291 (and d!705706 b!2444756)))

(declare-fun lambda!92531 () Int)

(assert (=> bs!465291 (not (= lambda!92531 lambda!92522))))

(declare-fun bs!465292 () Bool)

(assert (= bs!465292 (and d!705706 b!2444552)))

(assert (=> bs!465292 (= lambda!92531 lambda!92501)))

(declare-fun bs!465293 () Bool)

(assert (= bs!465293 (and d!705706 d!705702)))

(assert (=> bs!465293 (= lambda!92531 lambda!92526)))

(declare-fun bs!465294 () Bool)

(assert (= bs!465294 (and d!705706 b!2444759)))

(assert (=> bs!465294 (not (= lambda!92531 lambda!92521))))

(assert (=> bs!465292 (not (= lambda!92531 lambda!92502))))

(assert (=> d!705706 true))

(assert (=> d!705706 true))

(assert (=> d!705706 true))

(declare-fun lambda!92532 () Int)

(assert (=> bs!465291 (= lambda!92532 lambda!92522)))

(declare-fun bs!465295 () Bool)

(assert (= bs!465295 d!705706))

(assert (=> bs!465295 (not (= lambda!92532 lambda!92531))))

(assert (=> bs!465292 (not (= lambda!92532 lambda!92501))))

(assert (=> bs!465293 (not (= lambda!92532 lambda!92526))))

(assert (=> bs!465294 (not (= lambda!92532 lambda!92521))))

(assert (=> bs!465292 (= lambda!92532 lambda!92502)))

(assert (=> d!705706 true))

(assert (=> d!705706 true))

(assert (=> d!705706 true))

(assert (=> d!705706 (= (Exists!1218 lambda!92531) (Exists!1218 lambda!92532))))

(declare-fun lt!878825 () Unit!41755)

(declare-fun choose!14490 (Regex!7182 Regex!7182 List!28601) Unit!41755)

(assert (=> d!705706 (= lt!878825 (choose!14490 (regOne!14876 r!13927) (regTwo!14876 r!13927) s!9460))))

(assert (=> d!705706 (validRegex!2890 (regOne!14876 r!13927))))

(assert (=> d!705706 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!463 (regOne!14876 r!13927) (regTwo!14876 r!13927) s!9460) lt!878825)))

(declare-fun m!2821313 () Bool)

(assert (=> bs!465295 m!2821313))

(declare-fun m!2821315 () Bool)

(assert (=> bs!465295 m!2821315))

(declare-fun m!2821317 () Bool)

(assert (=> bs!465295 m!2821317))

(assert (=> bs!465295 m!2821311))

(assert (=> b!2444552 d!705706))

(declare-fun d!705708 () Bool)

(declare-fun choose!14491 (Int) Bool)

(assert (=> d!705708 (= (Exists!1218 lambda!92502) (choose!14491 lambda!92502))))

(declare-fun bs!465296 () Bool)

(assert (= bs!465296 d!705708))

(declare-fun m!2821319 () Bool)

(assert (=> bs!465296 m!2821319))

(assert (=> b!2444552 d!705708))

(declare-fun d!705710 () Bool)

(assert (=> d!705710 (= (Exists!1218 lambda!92501) (choose!14491 lambda!92501))))

(declare-fun bs!465297 () Bool)

(assert (= bs!465297 d!705710))

(declare-fun m!2821321 () Bool)

(assert (=> bs!465297 m!2821321))

(assert (=> b!2444552 d!705710))

(declare-fun b!2444869 () Bool)

(declare-fun e!1552738 () Option!5671)

(declare-fun e!1552740 () Option!5671)

(assert (=> b!2444869 (= e!1552738 e!1552740)))

(declare-fun c!390134 () Bool)

(assert (=> b!2444869 (= c!390134 (is-Nil!28503 s!9460))))

(declare-fun b!2444870 () Bool)

(declare-fun res!1037543 () Bool)

(declare-fun e!1552741 () Bool)

(assert (=> b!2444870 (=> (not res!1037543) (not e!1552741))))

(declare-fun lt!878826 () Option!5671)

(assert (=> b!2444870 (= res!1037543 (matchR!3297 (regTwo!14876 r!13927) (_2!16601 (get!8803 lt!878826))))))

(declare-fun b!2444871 () Bool)

(assert (=> b!2444871 (= e!1552741 (= (++!7085 (_1!16601 (get!8803 lt!878826)) (_2!16601 (get!8803 lt!878826))) s!9460))))

(declare-fun d!705712 () Bool)

(declare-fun e!1552742 () Bool)

(assert (=> d!705712 e!1552742))

(declare-fun res!1037540 () Bool)

(assert (=> d!705712 (=> res!1037540 e!1552742)))

(assert (=> d!705712 (= res!1037540 e!1552741)))

(declare-fun res!1037541 () Bool)

(assert (=> d!705712 (=> (not res!1037541) (not e!1552741))))

(assert (=> d!705712 (= res!1037541 (isDefined!4497 lt!878826))))

(assert (=> d!705712 (= lt!878826 e!1552738)))

(declare-fun c!390133 () Bool)

(declare-fun e!1552739 () Bool)

(assert (=> d!705712 (= c!390133 e!1552739)))

(declare-fun res!1037542 () Bool)

(assert (=> d!705712 (=> (not res!1037542) (not e!1552739))))

(assert (=> d!705712 (= res!1037542 (matchR!3297 (regOne!14876 r!13927) Nil!28503))))

(assert (=> d!705712 (validRegex!2890 (regOne!14876 r!13927))))

(assert (=> d!705712 (= (findConcatSeparation!779 (regOne!14876 r!13927) (regTwo!14876 r!13927) Nil!28503 s!9460 s!9460) lt!878826)))

(declare-fun b!2444872 () Bool)

(declare-fun lt!878827 () Unit!41755)

(declare-fun lt!878828 () Unit!41755)

(assert (=> b!2444872 (= lt!878827 lt!878828)))

(assert (=> b!2444872 (= (++!7085 (++!7085 Nil!28503 (Cons!28503 (h!33904 s!9460) Nil!28503)) (t!208578 s!9460)) s!9460)))

(assert (=> b!2444872 (= lt!878828 (lemmaMoveElementToOtherListKeepsConcatEq!700 Nil!28503 (h!33904 s!9460) (t!208578 s!9460) s!9460))))

(assert (=> b!2444872 (= e!1552740 (findConcatSeparation!779 (regOne!14876 r!13927) (regTwo!14876 r!13927) (++!7085 Nil!28503 (Cons!28503 (h!33904 s!9460) Nil!28503)) (t!208578 s!9460) s!9460))))

(declare-fun b!2444873 () Bool)

(assert (=> b!2444873 (= e!1552742 (not (isDefined!4497 lt!878826)))))

(declare-fun b!2444874 () Bool)

(declare-fun res!1037539 () Bool)

(assert (=> b!2444874 (=> (not res!1037539) (not e!1552741))))

(assert (=> b!2444874 (= res!1037539 (matchR!3297 (regOne!14876 r!13927) (_1!16601 (get!8803 lt!878826))))))

(declare-fun b!2444875 () Bool)

(assert (=> b!2444875 (= e!1552739 (matchR!3297 (regTwo!14876 r!13927) s!9460))))

(declare-fun b!2444876 () Bool)

(assert (=> b!2444876 (= e!1552738 (Some!5670 (tuple2!28121 Nil!28503 s!9460)))))

(declare-fun b!2444877 () Bool)

(assert (=> b!2444877 (= e!1552740 None!5670)))

(assert (= (and d!705712 res!1037542) b!2444875))

(assert (= (and d!705712 c!390133) b!2444876))

(assert (= (and d!705712 (not c!390133)) b!2444869))

(assert (= (and b!2444869 c!390134) b!2444877))

(assert (= (and b!2444869 (not c!390134)) b!2444872))

(assert (= (and d!705712 res!1037541) b!2444874))

(assert (= (and b!2444874 res!1037539) b!2444870))

(assert (= (and b!2444870 res!1037543) b!2444871))

(assert (= (and d!705712 (not res!1037540)) b!2444873))

(assert (=> b!2444872 m!2821253))

(assert (=> b!2444872 m!2821253))

(assert (=> b!2444872 m!2821255))

(assert (=> b!2444872 m!2821257))

(assert (=> b!2444872 m!2821253))

(declare-fun m!2821323 () Bool)

(assert (=> b!2444872 m!2821323))

(declare-fun m!2821325 () Bool)

(assert (=> d!705712 m!2821325))

(declare-fun m!2821327 () Bool)

(assert (=> d!705712 m!2821327))

(assert (=> d!705712 m!2821311))

(declare-fun m!2821329 () Bool)

(assert (=> b!2444871 m!2821329))

(declare-fun m!2821331 () Bool)

(assert (=> b!2444871 m!2821331))

(assert (=> b!2444873 m!2821325))

(assert (=> b!2444874 m!2821329))

(declare-fun m!2821333 () Bool)

(assert (=> b!2444874 m!2821333))

(declare-fun m!2821335 () Bool)

(assert (=> b!2444875 m!2821335))

(assert (=> b!2444870 m!2821329))

(declare-fun m!2821337 () Bool)

(assert (=> b!2444870 m!2821337))

(assert (=> b!2444552 d!705712))

(declare-fun d!705714 () Bool)

(declare-fun res!1037564 () Bool)

(declare-fun e!1552761 () Bool)

(assert (=> d!705714 (=> res!1037564 e!1552761)))

(assert (=> d!705714 (= res!1037564 (is-Nil!28502 l!9164))))

(assert (=> d!705714 (= (forall!5816 l!9164 lambda!92500) e!1552761)))

(declare-fun b!2444910 () Bool)

(declare-fun e!1552762 () Bool)

(assert (=> b!2444910 (= e!1552761 e!1552762)))

(declare-fun res!1037565 () Bool)

(assert (=> b!2444910 (=> (not res!1037565) (not e!1552762))))

(declare-fun dynLambda!12257 (Int Regex!7182) Bool)

(assert (=> b!2444910 (= res!1037565 (dynLambda!12257 lambda!92500 (h!33903 l!9164)))))

(declare-fun b!2444911 () Bool)

(assert (=> b!2444911 (= e!1552762 (forall!5816 (t!208577 l!9164) lambda!92500))))

(assert (= (and d!705714 (not res!1037564)) b!2444910))

(assert (= (and b!2444910 res!1037565) b!2444911))

(declare-fun b_lambda!74991 () Bool)

(assert (=> (not b_lambda!74991) (not b!2444910)))

(declare-fun m!2821339 () Bool)

(assert (=> b!2444910 m!2821339))

(declare-fun m!2821341 () Bool)

(assert (=> b!2444911 m!2821341))

(assert (=> start!238916 d!705714))

(declare-fun b!2444912 () Bool)

(declare-fun e!1552763 () Option!5671)

(declare-fun e!1552765 () Option!5671)

(assert (=> b!2444912 (= e!1552763 e!1552765)))

(declare-fun c!390142 () Bool)

(assert (=> b!2444912 (= c!390142 (is-Nil!28503 s!9460))))

(declare-fun b!2444913 () Bool)

(declare-fun res!1037570 () Bool)

(declare-fun e!1552766 () Bool)

(assert (=> b!2444913 (=> (not res!1037570) (not e!1552766))))

(declare-fun lt!878831 () Option!5671)

(assert (=> b!2444913 (= res!1037570 (matchR!3297 EmptyExpr!7182 (_2!16601 (get!8803 lt!878831))))))

(declare-fun b!2444914 () Bool)

(assert (=> b!2444914 (= e!1552766 (= (++!7085 (_1!16601 (get!8803 lt!878831)) (_2!16601 (get!8803 lt!878831))) s!9460))))

(declare-fun d!705716 () Bool)

(declare-fun e!1552767 () Bool)

(assert (=> d!705716 e!1552767))

(declare-fun res!1037567 () Bool)

(assert (=> d!705716 (=> res!1037567 e!1552767)))

(assert (=> d!705716 (= res!1037567 e!1552766)))

(declare-fun res!1037568 () Bool)

(assert (=> d!705716 (=> (not res!1037568) (not e!1552766))))

(assert (=> d!705716 (= res!1037568 (isDefined!4497 lt!878831))))

(assert (=> d!705716 (= lt!878831 e!1552763)))

(declare-fun c!390141 () Bool)

(declare-fun e!1552764 () Bool)

(assert (=> d!705716 (= c!390141 e!1552764)))

(declare-fun res!1037569 () Bool)

(assert (=> d!705716 (=> (not res!1037569) (not e!1552764))))

(assert (=> d!705716 (= res!1037569 (matchR!3297 lt!878718 Nil!28503))))

(assert (=> d!705716 (validRegex!2890 lt!878718)))

(assert (=> d!705716 (= (findConcatSeparation!779 lt!878718 EmptyExpr!7182 Nil!28503 s!9460 s!9460) lt!878831)))

(declare-fun b!2444915 () Bool)

(declare-fun lt!878832 () Unit!41755)

(declare-fun lt!878833 () Unit!41755)

(assert (=> b!2444915 (= lt!878832 lt!878833)))

(assert (=> b!2444915 (= (++!7085 (++!7085 Nil!28503 (Cons!28503 (h!33904 s!9460) Nil!28503)) (t!208578 s!9460)) s!9460)))

(assert (=> b!2444915 (= lt!878833 (lemmaMoveElementToOtherListKeepsConcatEq!700 Nil!28503 (h!33904 s!9460) (t!208578 s!9460) s!9460))))

(assert (=> b!2444915 (= e!1552765 (findConcatSeparation!779 lt!878718 EmptyExpr!7182 (++!7085 Nil!28503 (Cons!28503 (h!33904 s!9460) Nil!28503)) (t!208578 s!9460) s!9460))))

(declare-fun b!2444916 () Bool)

(assert (=> b!2444916 (= e!1552767 (not (isDefined!4497 lt!878831)))))

(declare-fun b!2444917 () Bool)

(declare-fun res!1037566 () Bool)

(assert (=> b!2444917 (=> (not res!1037566) (not e!1552766))))

(assert (=> b!2444917 (= res!1037566 (matchR!3297 lt!878718 (_1!16601 (get!8803 lt!878831))))))

(declare-fun b!2444918 () Bool)

(assert (=> b!2444918 (= e!1552764 (matchR!3297 EmptyExpr!7182 s!9460))))

(declare-fun b!2444919 () Bool)

(assert (=> b!2444919 (= e!1552763 (Some!5670 (tuple2!28121 Nil!28503 s!9460)))))

(declare-fun b!2444920 () Bool)

(assert (=> b!2444920 (= e!1552765 None!5670)))

(assert (= (and d!705716 res!1037569) b!2444918))

(assert (= (and d!705716 c!390141) b!2444919))

(assert (= (and d!705716 (not c!390141)) b!2444912))

(assert (= (and b!2444912 c!390142) b!2444920))

(assert (= (and b!2444912 (not c!390142)) b!2444915))

(assert (= (and d!705716 res!1037568) b!2444917))

(assert (= (and b!2444917 res!1037566) b!2444913))

(assert (= (and b!2444913 res!1037570) b!2444914))

(assert (= (and d!705716 (not res!1037567)) b!2444916))

(assert (=> b!2444915 m!2821253))

(assert (=> b!2444915 m!2821253))

(assert (=> b!2444915 m!2821255))

(assert (=> b!2444915 m!2821257))

(assert (=> b!2444915 m!2821253))

(declare-fun m!2821343 () Bool)

(assert (=> b!2444915 m!2821343))

(declare-fun m!2821345 () Bool)

(assert (=> d!705716 m!2821345))

(assert (=> d!705716 m!2821263))

(assert (=> d!705716 m!2821161))

(declare-fun m!2821347 () Bool)

(assert (=> b!2444914 m!2821347))

(declare-fun m!2821349 () Bool)

(assert (=> b!2444914 m!2821349))

(assert (=> b!2444916 m!2821345))

(assert (=> b!2444917 m!2821347))

(declare-fun m!2821351 () Bool)

(assert (=> b!2444917 m!2821351))

(declare-fun m!2821353 () Bool)

(assert (=> b!2444918 m!2821353))

(assert (=> b!2444913 m!2821347))

(declare-fun m!2821355 () Bool)

(assert (=> b!2444913 m!2821355))

(assert (=> bm!149885 d!705716))

(declare-fun b!2444929 () Bool)

(declare-fun e!1552773 () List!28601)

(assert (=> b!2444929 (= e!1552773 (ite c!390069 Nil!28503 (_2!16601 lt!878726)))))

(declare-fun d!705718 () Bool)

(declare-fun e!1552772 () Bool)

(assert (=> d!705718 e!1552772))

(declare-fun res!1037576 () Bool)

(assert (=> d!705718 (=> (not res!1037576) (not e!1552772))))

(declare-fun lt!878836 () List!28601)

(declare-fun content!3925 (List!28601) (Set C!14522))

(assert (=> d!705718 (= res!1037576 (= (content!3925 lt!878836) (set.union (content!3925 (ite c!390069 s!9460 (_1!16601 lt!878726))) (content!3925 (ite c!390069 Nil!28503 (_2!16601 lt!878726))))))))

(assert (=> d!705718 (= lt!878836 e!1552773)))

(declare-fun c!390145 () Bool)

(assert (=> d!705718 (= c!390145 (is-Nil!28503 (ite c!390069 s!9460 (_1!16601 lt!878726))))))

(assert (=> d!705718 (= (++!7085 (ite c!390069 s!9460 (_1!16601 lt!878726)) (ite c!390069 Nil!28503 (_2!16601 lt!878726))) lt!878836)))

(declare-fun b!2444930 () Bool)

(assert (=> b!2444930 (= e!1552773 (Cons!28503 (h!33904 (ite c!390069 s!9460 (_1!16601 lt!878726))) (++!7085 (t!208578 (ite c!390069 s!9460 (_1!16601 lt!878726))) (ite c!390069 Nil!28503 (_2!16601 lt!878726)))))))

(declare-fun b!2444931 () Bool)

(declare-fun res!1037575 () Bool)

(assert (=> b!2444931 (=> (not res!1037575) (not e!1552772))))

(declare-fun size!22263 (List!28601) Int)

(assert (=> b!2444931 (= res!1037575 (= (size!22263 lt!878836) (+ (size!22263 (ite c!390069 s!9460 (_1!16601 lt!878726))) (size!22263 (ite c!390069 Nil!28503 (_2!16601 lt!878726))))))))

(declare-fun b!2444932 () Bool)

(assert (=> b!2444932 (= e!1552772 (or (not (= (ite c!390069 Nil!28503 (_2!16601 lt!878726)) Nil!28503)) (= lt!878836 (ite c!390069 s!9460 (_1!16601 lt!878726)))))))

(assert (= (and d!705718 c!390145) b!2444929))

(assert (= (and d!705718 (not c!390145)) b!2444930))

(assert (= (and d!705718 res!1037576) b!2444931))

(assert (= (and b!2444931 res!1037575) b!2444932))

(declare-fun m!2821357 () Bool)

(assert (=> d!705718 m!2821357))

(declare-fun m!2821359 () Bool)

(assert (=> d!705718 m!2821359))

(declare-fun m!2821361 () Bool)

(assert (=> d!705718 m!2821361))

(declare-fun m!2821363 () Bool)

(assert (=> b!2444930 m!2821363))

(declare-fun m!2821365 () Bool)

(assert (=> b!2444931 m!2821365))

(declare-fun m!2821367 () Bool)

(assert (=> b!2444931 m!2821367))

(declare-fun m!2821369 () Bool)

(assert (=> b!2444931 m!2821369))

(assert (=> bm!149888 d!705718))

(declare-fun d!705720 () Bool)

(declare-fun e!1552777 () Bool)

(assert (=> d!705720 e!1552777))

(declare-fun c!390147 () Bool)

(assert (=> d!705720 (= c!390147 (is-EmptyExpr!7182 (ite c!390069 lt!878721 (Concat!11818 lt!878718 EmptyExpr!7182))))))

(declare-fun lt!878837 () Bool)

(declare-fun e!1552775 () Bool)

(assert (=> d!705720 (= lt!878837 e!1552775)))

(declare-fun c!390148 () Bool)

(assert (=> d!705720 (= c!390148 (isEmpty!16543 (ite c!390069 s!9460 call!149894)))))

(assert (=> d!705720 (validRegex!2890 (ite c!390069 lt!878721 (Concat!11818 lt!878718 EmptyExpr!7182)))))

(assert (=> d!705720 (= (matchR!3297 (ite c!390069 lt!878721 (Concat!11818 lt!878718 EmptyExpr!7182)) (ite c!390069 s!9460 call!149894)) lt!878837)))

(declare-fun b!2444933 () Bool)

(declare-fun e!1552779 () Bool)

(assert (=> b!2444933 (= e!1552777 e!1552779)))

(declare-fun c!390146 () Bool)

(assert (=> b!2444933 (= c!390146 (is-EmptyLang!7182 (ite c!390069 lt!878721 (Concat!11818 lt!878718 EmptyExpr!7182))))))

(declare-fun b!2444934 () Bool)

(assert (=> b!2444934 (= e!1552775 (nullable!2199 (ite c!390069 lt!878721 (Concat!11818 lt!878718 EmptyExpr!7182))))))

(declare-fun b!2444935 () Bool)

(declare-fun res!1037577 () Bool)

(declare-fun e!1552774 () Bool)

(assert (=> b!2444935 (=> (not res!1037577) (not e!1552774))))

(declare-fun call!149926 () Bool)

(assert (=> b!2444935 (= res!1037577 (not call!149926))))

(declare-fun b!2444936 () Bool)

(declare-fun e!1552780 () Bool)

(declare-fun e!1552778 () Bool)

(assert (=> b!2444936 (= e!1552780 e!1552778)))

(declare-fun res!1037578 () Bool)

(assert (=> b!2444936 (=> res!1037578 e!1552778)))

(assert (=> b!2444936 (= res!1037578 call!149926)))

(declare-fun b!2444937 () Bool)

(declare-fun e!1552776 () Bool)

(assert (=> b!2444937 (= e!1552776 e!1552780)))

(declare-fun res!1037583 () Bool)

(assert (=> b!2444937 (=> (not res!1037583) (not e!1552780))))

(assert (=> b!2444937 (= res!1037583 (not lt!878837))))

(declare-fun b!2444938 () Bool)

(declare-fun res!1037579 () Bool)

(assert (=> b!2444938 (=> res!1037579 e!1552778)))

(assert (=> b!2444938 (= res!1037579 (not (isEmpty!16543 (tail!3825 (ite c!390069 s!9460 call!149894)))))))

(declare-fun b!2444939 () Bool)

(declare-fun res!1037582 () Bool)

(assert (=> b!2444939 (=> (not res!1037582) (not e!1552774))))

(assert (=> b!2444939 (= res!1037582 (isEmpty!16543 (tail!3825 (ite c!390069 s!9460 call!149894))))))

(declare-fun b!2444940 () Bool)

(assert (=> b!2444940 (= e!1552775 (matchR!3297 (derivativeStep!1853 (ite c!390069 lt!878721 (Concat!11818 lt!878718 EmptyExpr!7182)) (head!5552 (ite c!390069 s!9460 call!149894))) (tail!3825 (ite c!390069 s!9460 call!149894))))))

(declare-fun b!2444941 () Bool)

(assert (=> b!2444941 (= e!1552778 (not (= (head!5552 (ite c!390069 s!9460 call!149894)) (c!390070 (ite c!390069 lt!878721 (Concat!11818 lt!878718 EmptyExpr!7182))))))))

(declare-fun b!2444942 () Bool)

(declare-fun res!1037580 () Bool)

(assert (=> b!2444942 (=> res!1037580 e!1552776)))

(assert (=> b!2444942 (= res!1037580 e!1552774)))

(declare-fun res!1037584 () Bool)

(assert (=> b!2444942 (=> (not res!1037584) (not e!1552774))))

(assert (=> b!2444942 (= res!1037584 lt!878837)))

(declare-fun b!2444943 () Bool)

(assert (=> b!2444943 (= e!1552777 (= lt!878837 call!149926))))

(declare-fun b!2444944 () Bool)

(assert (=> b!2444944 (= e!1552774 (= (head!5552 (ite c!390069 s!9460 call!149894)) (c!390070 (ite c!390069 lt!878721 (Concat!11818 lt!878718 EmptyExpr!7182)))))))

(declare-fun bm!149921 () Bool)

(assert (=> bm!149921 (= call!149926 (isEmpty!16543 (ite c!390069 s!9460 call!149894)))))

(declare-fun b!2444945 () Bool)

(assert (=> b!2444945 (= e!1552779 (not lt!878837))))

(declare-fun b!2444946 () Bool)

(declare-fun res!1037581 () Bool)

(assert (=> b!2444946 (=> res!1037581 e!1552776)))

(assert (=> b!2444946 (= res!1037581 (not (is-ElementMatch!7182 (ite c!390069 lt!878721 (Concat!11818 lt!878718 EmptyExpr!7182)))))))

(assert (=> b!2444946 (= e!1552779 e!1552776)))

(assert (= (and d!705720 c!390148) b!2444934))

(assert (= (and d!705720 (not c!390148)) b!2444940))

(assert (= (and d!705720 c!390147) b!2444943))

(assert (= (and d!705720 (not c!390147)) b!2444933))

(assert (= (and b!2444933 c!390146) b!2444945))

(assert (= (and b!2444933 (not c!390146)) b!2444946))

(assert (= (and b!2444946 (not res!1037581)) b!2444942))

(assert (= (and b!2444942 res!1037584) b!2444935))

(assert (= (and b!2444935 res!1037577) b!2444939))

(assert (= (and b!2444939 res!1037582) b!2444944))

(assert (= (and b!2444942 (not res!1037580)) b!2444937))

(assert (= (and b!2444937 res!1037583) b!2444936))

(assert (= (and b!2444936 (not res!1037578)) b!2444938))

(assert (= (and b!2444938 (not res!1037579)) b!2444941))

(assert (= (or b!2444943 b!2444935 b!2444936) bm!149921))

(declare-fun m!2821371 () Bool)

(assert (=> d!705720 m!2821371))

(declare-fun m!2821373 () Bool)

(assert (=> d!705720 m!2821373))

(declare-fun m!2821375 () Bool)

(assert (=> b!2444941 m!2821375))

(declare-fun m!2821377 () Bool)

(assert (=> b!2444939 m!2821377))

(assert (=> b!2444939 m!2821377))

(declare-fun m!2821379 () Bool)

(assert (=> b!2444939 m!2821379))

(assert (=> b!2444944 m!2821375))

(assert (=> bm!149921 m!2821371))

(assert (=> b!2444940 m!2821375))

(assert (=> b!2444940 m!2821375))

(declare-fun m!2821381 () Bool)

(assert (=> b!2444940 m!2821381))

(assert (=> b!2444940 m!2821377))

(assert (=> b!2444940 m!2821381))

(assert (=> b!2444940 m!2821377))

(declare-fun m!2821383 () Bool)

(assert (=> b!2444940 m!2821383))

(assert (=> b!2444938 m!2821377))

(assert (=> b!2444938 m!2821377))

(assert (=> b!2444938 m!2821379))

(declare-fun m!2821385 () Bool)

(assert (=> b!2444934 m!2821385))

(assert (=> bm!149889 d!705720))

(declare-fun d!705722 () Bool)

(assert (=> d!705722 (matchR!3297 (Concat!11818 lt!878718 EmptyExpr!7182) (++!7085 (_1!16601 lt!878726) (_2!16601 lt!878726)))))

(declare-fun lt!878841 () Unit!41755)

(declare-fun choose!14493 (Regex!7182 Regex!7182 List!28601 List!28601 List!28601) Unit!41755)

(assert (=> d!705722 (= lt!878841 (choose!14493 lt!878718 EmptyExpr!7182 (_1!16601 lt!878726) (_2!16601 lt!878726) s!9460))))

(assert (=> d!705722 (validRegex!2890 lt!878718)))

(assert (=> d!705722 (= (lemmaFindSeparationIsDefinedThenConcatMatches!87 lt!878718 EmptyExpr!7182 (_1!16601 lt!878726) (_2!16601 lt!878726) s!9460) lt!878841)))

(declare-fun bs!465298 () Bool)

(assert (= bs!465298 d!705722))

(declare-fun m!2821387 () Bool)

(assert (=> bs!465298 m!2821387))

(assert (=> bs!465298 m!2821387))

(declare-fun m!2821389 () Bool)

(assert (=> bs!465298 m!2821389))

(declare-fun m!2821391 () Bool)

(assert (=> bs!465298 m!2821391))

(assert (=> bs!465298 m!2821161))

(assert (=> b!2444551 d!705722))

(declare-fun d!705724 () Bool)

(assert (=> d!705724 (= (get!8803 lt!878717) (v!31078 lt!878717))))

(assert (=> b!2444551 d!705724))

(declare-fun e!1552790 () Bool)

(assert (=> b!2444558 (= tp!776730 e!1552790)))

(declare-fun b!2444972 () Bool)

(declare-fun tp!776766 () Bool)

(declare-fun tp!776768 () Bool)

(assert (=> b!2444972 (= e!1552790 (and tp!776766 tp!776768))))

(declare-fun b!2444971 () Bool)

(assert (=> b!2444971 (= e!1552790 tp_is_empty!11777)))

(declare-fun b!2444974 () Bool)

(declare-fun tp!776769 () Bool)

(declare-fun tp!776767 () Bool)

(assert (=> b!2444974 (= e!1552790 (and tp!776769 tp!776767))))

(declare-fun b!2444973 () Bool)

(declare-fun tp!776770 () Bool)

(assert (=> b!2444973 (= e!1552790 tp!776770)))

(assert (= (and b!2444558 (is-ElementMatch!7182 (regOne!14876 r!13927))) b!2444971))

(assert (= (and b!2444558 (is-Concat!11818 (regOne!14876 r!13927))) b!2444972))

(assert (= (and b!2444558 (is-Star!7182 (regOne!14876 r!13927))) b!2444973))

(assert (= (and b!2444558 (is-Union!7182 (regOne!14876 r!13927))) b!2444974))

(declare-fun e!1552791 () Bool)

(assert (=> b!2444558 (= tp!776725 e!1552791)))

(declare-fun b!2444976 () Bool)

(declare-fun tp!776771 () Bool)

(declare-fun tp!776773 () Bool)

(assert (=> b!2444976 (= e!1552791 (and tp!776771 tp!776773))))

(declare-fun b!2444975 () Bool)

(assert (=> b!2444975 (= e!1552791 tp_is_empty!11777)))

(declare-fun b!2444978 () Bool)

(declare-fun tp!776774 () Bool)

(declare-fun tp!776772 () Bool)

(assert (=> b!2444978 (= e!1552791 (and tp!776774 tp!776772))))

(declare-fun b!2444977 () Bool)

(declare-fun tp!776775 () Bool)

(assert (=> b!2444977 (= e!1552791 tp!776775)))

(assert (= (and b!2444558 (is-ElementMatch!7182 (regTwo!14876 r!13927))) b!2444975))

(assert (= (and b!2444558 (is-Concat!11818 (regTwo!14876 r!13927))) b!2444976))

(assert (= (and b!2444558 (is-Star!7182 (regTwo!14876 r!13927))) b!2444977))

(assert (= (and b!2444558 (is-Union!7182 (regTwo!14876 r!13927))) b!2444978))

(declare-fun e!1552792 () Bool)

(assert (=> b!2444556 (= tp!776726 e!1552792)))

(declare-fun b!2444980 () Bool)

(declare-fun tp!776776 () Bool)

(declare-fun tp!776778 () Bool)

(assert (=> b!2444980 (= e!1552792 (and tp!776776 tp!776778))))

(declare-fun b!2444979 () Bool)

(assert (=> b!2444979 (= e!1552792 tp_is_empty!11777)))

(declare-fun b!2444982 () Bool)

(declare-fun tp!776779 () Bool)

(declare-fun tp!776777 () Bool)

(assert (=> b!2444982 (= e!1552792 (and tp!776779 tp!776777))))

(declare-fun b!2444981 () Bool)

(declare-fun tp!776780 () Bool)

(assert (=> b!2444981 (= e!1552792 tp!776780)))

(assert (= (and b!2444556 (is-ElementMatch!7182 (regOne!14877 r!13927))) b!2444979))

(assert (= (and b!2444556 (is-Concat!11818 (regOne!14877 r!13927))) b!2444980))

(assert (= (and b!2444556 (is-Star!7182 (regOne!14877 r!13927))) b!2444981))

(assert (= (and b!2444556 (is-Union!7182 (regOne!14877 r!13927))) b!2444982))

(declare-fun e!1552793 () Bool)

(assert (=> b!2444556 (= tp!776724 e!1552793)))

(declare-fun b!2444984 () Bool)

(declare-fun tp!776781 () Bool)

(declare-fun tp!776783 () Bool)

(assert (=> b!2444984 (= e!1552793 (and tp!776781 tp!776783))))

(declare-fun b!2444983 () Bool)

(assert (=> b!2444983 (= e!1552793 tp_is_empty!11777)))

(declare-fun b!2444986 () Bool)

(declare-fun tp!776784 () Bool)

(declare-fun tp!776782 () Bool)

(assert (=> b!2444986 (= e!1552793 (and tp!776784 tp!776782))))

(declare-fun b!2444985 () Bool)

(declare-fun tp!776785 () Bool)

(assert (=> b!2444985 (= e!1552793 tp!776785)))

(assert (= (and b!2444556 (is-ElementMatch!7182 (regTwo!14877 r!13927))) b!2444983))

(assert (= (and b!2444556 (is-Concat!11818 (regTwo!14877 r!13927))) b!2444984))

(assert (= (and b!2444556 (is-Star!7182 (regTwo!14877 r!13927))) b!2444985))

(assert (= (and b!2444556 (is-Union!7182 (regTwo!14877 r!13927))) b!2444986))

(declare-fun b!2444991 () Bool)

(declare-fun e!1552796 () Bool)

(declare-fun tp!776788 () Bool)

(assert (=> b!2444991 (= e!1552796 (and tp_is_empty!11777 tp!776788))))

(assert (=> b!2444549 (= tp!776731 e!1552796)))

(assert (= (and b!2444549 (is-Cons!28503 (t!208578 s!9460))) b!2444991))

(declare-fun e!1552797 () Bool)

(assert (=> b!2444545 (= tp!776729 e!1552797)))

(declare-fun b!2444993 () Bool)

(declare-fun tp!776789 () Bool)

(declare-fun tp!776791 () Bool)

(assert (=> b!2444993 (= e!1552797 (and tp!776789 tp!776791))))

(declare-fun b!2444992 () Bool)

(assert (=> b!2444992 (= e!1552797 tp_is_empty!11777)))

(declare-fun b!2444995 () Bool)

(declare-fun tp!776792 () Bool)

(declare-fun tp!776790 () Bool)

(assert (=> b!2444995 (= e!1552797 (and tp!776792 tp!776790))))

(declare-fun b!2444994 () Bool)

(declare-fun tp!776793 () Bool)

(assert (=> b!2444994 (= e!1552797 tp!776793)))

(assert (= (and b!2444545 (is-ElementMatch!7182 (h!33903 l!9164))) b!2444992))

(assert (= (and b!2444545 (is-Concat!11818 (h!33903 l!9164))) b!2444993))

(assert (= (and b!2444545 (is-Star!7182 (h!33903 l!9164))) b!2444994))

(assert (= (and b!2444545 (is-Union!7182 (h!33903 l!9164))) b!2444995))

(declare-fun b!2445000 () Bool)

(declare-fun e!1552800 () Bool)

(declare-fun tp!776798 () Bool)

(declare-fun tp!776799 () Bool)

(assert (=> b!2445000 (= e!1552800 (and tp!776798 tp!776799))))

(assert (=> b!2444545 (= tp!776727 e!1552800)))

(assert (= (and b!2444545 (is-Cons!28502 (t!208577 l!9164))) b!2445000))

(declare-fun e!1552801 () Bool)

(assert (=> b!2444563 (= tp!776728 e!1552801)))

(declare-fun b!2445002 () Bool)

(declare-fun tp!776800 () Bool)

(declare-fun tp!776802 () Bool)

(assert (=> b!2445002 (= e!1552801 (and tp!776800 tp!776802))))

(declare-fun b!2445001 () Bool)

(assert (=> b!2445001 (= e!1552801 tp_is_empty!11777)))

(declare-fun b!2445004 () Bool)

(declare-fun tp!776803 () Bool)

(declare-fun tp!776801 () Bool)

(assert (=> b!2445004 (= e!1552801 (and tp!776803 tp!776801))))

(declare-fun b!2445003 () Bool)

(declare-fun tp!776804 () Bool)

(assert (=> b!2445003 (= e!1552801 tp!776804)))

(assert (= (and b!2444563 (is-ElementMatch!7182 (reg!7511 r!13927))) b!2445001))

(assert (= (and b!2444563 (is-Concat!11818 (reg!7511 r!13927))) b!2445002))

(assert (= (and b!2444563 (is-Star!7182 (reg!7511 r!13927))) b!2445003))

(assert (= (and b!2444563 (is-Union!7182 (reg!7511 r!13927))) b!2445004))

(declare-fun b_lambda!74993 () Bool)

(assert (= b_lambda!74991 (or start!238916 b_lambda!74993)))

(declare-fun bs!465299 () Bool)

(declare-fun d!705730 () Bool)

(assert (= bs!465299 (and d!705730 start!238916)))

(assert (=> bs!465299 (= (dynLambda!12257 lambda!92500 (h!33903 l!9164)) (validRegex!2890 (h!33903 l!9164)))))

(declare-fun m!2821407 () Bool)

(assert (=> bs!465299 m!2821407))

(assert (=> b!2444910 d!705730))

(push 1)

(assert (not b!2444840))

(assert (not b!2444873))

(assert (not b!2444770))

(assert (not b!2444714))

(assert (not b!2444872))

(assert (not b!2444683))

(assert (not d!705720))

(assert (not b!2444931))

(assert (not d!705692))

(assert (not d!705712))

(assert (not b!2444773))

(assert (not d!705690))

(assert (not d!705674))

(assert (not b!2444720))

(assert (not b!2444831))

(assert (not bm!149910))

(assert (not d!705702))

(assert (not d!705708))

(assert (not d!705718))

(assert (not b!2444781))

(assert (not b!2444995))

(assert (not b!2444871))

(assert (not b!2444940))

(assert tp_is_empty!11777)

(assert (not bm!149918))

(assert (not b!2444918))

(assert (not b!2444649))

(assert (not b!2444985))

(assert (not b!2445000))

(assert (not b_lambda!74993))

(assert (not b!2444686))

(assert (not bs!465299))

(assert (not b!2444993))

(assert (not b!2444944))

(assert (not b!2444689))

(assert (not b!2444930))

(assert (not b!2444785))

(assert (not b!2444875))

(assert (not d!705664))

(assert (not b!2444874))

(assert (not bm!149921))

(assert (not d!705686))

(assert (not b!2444835))

(assert (not d!705658))

(assert (not bm!149915))

(assert (not b!2444976))

(assert (not d!705694))

(assert (not b!2444911))

(assert (not b!2444830))

(assert (not b!2444827))

(assert (not b!2444941))

(assert (not b!2444977))

(assert (not b!2444718))

(assert (not b!2444784))

(assert (not b!2444717))

(assert (not b!2444783))

(assert (not b!2444754))

(assert (not b!2444845))

(assert (not b!2444980))

(assert (not b!2444939))

(assert (not b!2444986))

(assert (not b!2445004))

(assert (not b!2444984))

(assert (not d!705656))

(assert (not d!705688))

(assert (not b!2444973))

(assert (not b!2444782))

(assert (not b!2444981))

(assert (not d!705660))

(assert (not b!2444772))

(assert (not d!705722))

(assert (not b!2444978))

(assert (not b!2444828))

(assert (not d!705706))

(assert (not d!705710))

(assert (not b!2445003))

(assert (not b!2444934))

(assert (not b!2444917))

(assert (not b!2444870))

(assert (not b!2444972))

(assert (not bm!149916))

(assert (not b!2444829))

(assert (not b!2444916))

(assert (not b!2444914))

(assert (not b!2444842))

(assert (not b!2444991))

(assert (not b!2444776))

(assert (not b!2444712))

(assert (not b!2444761))

(assert (not d!705684))

(assert (not b!2444779))

(assert (not bm!149917))

(assert (not d!705662))

(assert (not b!2444839))

(assert (not b!2444684))

(assert (not b!2444841))

(assert (not b!2444915))

(assert (not b!2444716))

(assert (not b!2444913))

(assert (not b!2445002))

(assert (not b!2444982))

(assert (not b!2444974))

(assert (not b!2444679))

(assert (not b!2444826))

(assert (not b!2444787))

(assert (not d!705700))

(assert (not d!705716))

(assert (not b!2444766))

(assert (not b!2444771))

(assert (not b!2444938))

(assert (not b!2444685))

(assert (not b!2444994))

(assert (not b!2444715))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

