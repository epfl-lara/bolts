; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!239138 () Bool)

(assert start!239138)

(declare-fun b!2447113 () Bool)

(assert (=> b!2447113 true))

(assert (=> b!2447113 true))

(declare-fun lambda!92739 () Int)

(declare-fun lambda!92738 () Int)

(assert (=> b!2447113 (not (= lambda!92739 lambda!92738))))

(assert (=> b!2447113 true))

(assert (=> b!2447113 true))

(declare-fun b!2447088 () Bool)

(declare-fun e!1553944 () Bool)

(declare-fun e!1553945 () Bool)

(assert (=> b!2447088 (= e!1553944 e!1553945)))

(declare-fun c!390544 () Bool)

(declare-datatypes ((C!14544 0))(
  ( (C!14545 (val!8514 Int)) )
))
(declare-datatypes ((Regex!7193 0))(
  ( (ElementMatch!7193 (c!390549 C!14544)) (Concat!11829 (regOne!14898 Regex!7193) (regTwo!14898 Regex!7193)) (EmptyExpr!7193) (Star!7193 (reg!7522 Regex!7193)) (EmptyLang!7193) (Union!7193 (regOne!14899 Regex!7193) (regTwo!14899 Regex!7193)) )
))
(declare-datatypes ((List!28622 0))(
  ( (Nil!28524) (Cons!28524 (h!33925 Regex!7193) (t!208599 List!28622)) )
))
(declare-fun l!9164 () List!28622)

(get-info :version)

(assert (=> b!2447088 (= c!390544 ((_ is Cons!28524) l!9164))))

(declare-fun b!2447089 () Bool)

(declare-fun e!1553948 () Bool)

(declare-fun tp!777284 () Bool)

(declare-fun tp!777289 () Bool)

(assert (=> b!2447089 (= e!1553948 (and tp!777284 tp!777289))))

(declare-fun res!1038486 () Bool)

(declare-fun e!1553939 () Bool)

(assert (=> start!239138 (=> (not res!1038486) (not e!1553939))))

(declare-fun lambda!92737 () Int)

(declare-fun forall!5827 (List!28622 Int) Bool)

(assert (=> start!239138 (= res!1038486 (forall!5827 l!9164 lambda!92737))))

(assert (=> start!239138 e!1553939))

(assert (=> start!239138 e!1553948))

(declare-fun e!1553947 () Bool)

(assert (=> start!239138 e!1553947))

(declare-fun e!1553942 () Bool)

(assert (=> start!239138 e!1553942))

(declare-fun b!2447090 () Bool)

(declare-fun e!1553940 () Bool)

(assert (=> b!2447090 (= e!1553939 (not e!1553940))))

(declare-fun res!1038484 () Bool)

(assert (=> b!2447090 (=> res!1038484 e!1553940)))

(declare-fun r!13927 () Regex!7193)

(assert (=> b!2447090 (= res!1038484 (not ((_ is Concat!11829) r!13927)))))

(declare-fun lt!879508 () Bool)

(declare-fun lt!879506 () Bool)

(assert (=> b!2447090 (= lt!879508 lt!879506)))

(declare-datatypes ((List!28623 0))(
  ( (Nil!28525) (Cons!28525 (h!33926 C!14544) (t!208600 List!28623)) )
))
(declare-fun s!9460 () List!28623)

(declare-fun matchRSpec!1040 (Regex!7193 List!28623) Bool)

(assert (=> b!2447090 (= lt!879506 (matchRSpec!1040 r!13927 s!9460))))

(declare-fun matchR!3308 (Regex!7193 List!28623) Bool)

(assert (=> b!2447090 (= lt!879508 (matchR!3308 r!13927 s!9460))))

(declare-datatypes ((Unit!41834 0))(
  ( (Unit!41835) )
))
(declare-fun lt!879500 () Unit!41834)

(declare-fun mainMatchTheorem!1040 (Regex!7193 List!28623) Unit!41834)

(assert (=> b!2447090 (= lt!879500 (mainMatchTheorem!1040 r!13927 s!9460))))

(declare-fun bm!150227 () Bool)

(declare-fun call!150239 () Regex!7193)

(declare-fun lt!879502 () List!28622)

(declare-fun generalisedConcat!294 (List!28622) Regex!7193)

(assert (=> bm!150227 (= call!150239 (generalisedConcat!294 lt!879502))))

(declare-fun b!2447091 () Bool)

(declare-fun res!1038488 () Bool)

(assert (=> b!2447091 (=> (not res!1038488) (not e!1553939))))

(assert (=> b!2447091 (= res!1038488 (= r!13927 (generalisedConcat!294 l!9164)))))

(declare-fun bm!150228 () Bool)

(declare-fun call!150240 () Bool)

(declare-fun call!150237 () Bool)

(assert (=> bm!150228 (= call!150240 call!150237)))

(declare-fun b!2447092 () Bool)

(assert (=> b!2447092 (= lt!879508 call!150237)))

(declare-fun e!1553950 () Unit!41834)

(declare-fun Unit!41836 () Unit!41834)

(assert (=> b!2447092 (= e!1553950 Unit!41836)))

(declare-fun b!2447093 () Bool)

(declare-fun e!1553937 () Unit!41834)

(assert (=> b!2447093 (= e!1553937 e!1553950)))

(declare-fun tail!3839 (List!28622) List!28622)

(assert (=> b!2447093 (= lt!879502 (tail!3839 l!9164))))

(declare-fun c!390543 () Bool)

(declare-fun isEmpty!16566 (List!28622) Bool)

(assert (=> b!2447093 (= c!390543 (isEmpty!16566 lt!879502))))

(declare-fun b!2447094 () Bool)

(declare-fun e!1553941 () Bool)

(declare-fun isEmpty!16567 (List!28623) Bool)

(assert (=> b!2447094 (= e!1553941 (not (= lt!879508 (isEmpty!16567 s!9460))))))

(declare-fun b!2447095 () Bool)

(declare-fun tp!777288 () Bool)

(declare-fun tp!777287 () Bool)

(assert (=> b!2447095 (= e!1553947 (and tp!777288 tp!777287))))

(declare-fun bm!150229 () Bool)

(declare-fun call!150232 () Regex!7193)

(assert (=> bm!150229 (= call!150232 call!150239)))

(declare-fun call!150241 () List!28623)

(declare-fun c!390547 () Bool)

(declare-fun bm!150230 () Bool)

(declare-datatypes ((tuple2!28142 0))(
  ( (tuple2!28143 (_1!16612 List!28623) (_2!16612 List!28623)) )
))
(declare-fun lt!879504 () tuple2!28142)

(declare-fun ++!7096 (List!28623 List!28623) List!28623)

(assert (=> bm!150230 (= call!150241 (++!7096 (ite c!390547 s!9460 (_1!16612 lt!879504)) (ite c!390547 Nil!28525 (_2!16612 lt!879504))))))

(declare-fun b!2447096 () Bool)

(declare-fun e!1553934 () Unit!41834)

(declare-fun Unit!41837 () Unit!41834)

(assert (=> b!2447096 (= e!1553934 Unit!41837)))

(declare-fun lt!879512 () Unit!41834)

(declare-fun lt!879510 () Regex!7193)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!124 (Regex!7193 Regex!7193 List!28623 List!28623) Unit!41834)

(assert (=> b!2447096 (= lt!879512 (lemmaTwoRegexMatchThenConcatMatchesConcatString!124 lt!879510 EmptyExpr!7193 s!9460 Nil!28525))))

(declare-fun lt!879509 () Regex!7193)

(assert (=> b!2447096 (= lt!879509 (Concat!11829 lt!879510 EmptyExpr!7193))))

(declare-fun res!1038490 () Bool)

(assert (=> b!2447096 (= res!1038490 (matchR!3308 lt!879509 call!150241))))

(declare-fun e!1553946 () Bool)

(assert (=> b!2447096 (=> (not res!1038490) (not e!1553946))))

(assert (=> b!2447096 e!1553946))

(declare-fun lt!879501 () Unit!41834)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!92 (Regex!7193 Regex!7193 List!28623) Unit!41834)

(assert (=> b!2447096 (= lt!879501 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!92 lt!879510 EmptyExpr!7193 s!9460))))

(declare-fun res!1038483 () Bool)

(declare-fun call!150235 () Bool)

(assert (=> b!2447096 (= res!1038483 call!150235)))

(declare-fun e!1553935 () Bool)

(assert (=> b!2447096 (=> (not res!1038483) (not e!1553935))))

(assert (=> b!2447096 e!1553935))

(declare-fun bm!150231 () Bool)

(declare-fun call!150233 () Bool)

(assert (=> bm!150231 (= call!150233 (matchR!3308 (ite c!390547 lt!879509 (Concat!11829 lt!879510 EmptyExpr!7193)) (ite c!390547 s!9460 call!150241)))))

(declare-fun b!2447097 () Bool)

(declare-fun e!1553936 () Bool)

(assert (=> b!2447097 e!1553936))

(declare-fun res!1038485 () Bool)

(assert (=> b!2447097 (=> (not res!1038485) (not e!1553936))))

(assert (=> b!2447097 (= res!1038485 call!150233)))

(declare-fun lt!879513 () Unit!41834)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!96 (Regex!7193 Regex!7193 List!28623 List!28623 List!28623) Unit!41834)

(assert (=> b!2447097 (= lt!879513 (lemmaFindSeparationIsDefinedThenConcatMatches!96 lt!879510 EmptyExpr!7193 (_1!16612 lt!879504) (_2!16612 lt!879504) s!9460))))

(declare-datatypes ((Option!5682 0))(
  ( (None!5681) (Some!5681 (v!31089 tuple2!28142)) )
))
(declare-fun lt!879514 () Option!5682)

(declare-fun get!8819 (Option!5682) tuple2!28142)

(assert (=> b!2447097 (= lt!879504 (get!8819 lt!879514))))

(declare-fun e!1553943 () Unit!41834)

(declare-fun Unit!41838 () Unit!41834)

(assert (=> b!2447097 (= e!1553943 Unit!41838)))

(declare-fun call!150236 () Option!5682)

(declare-fun bm!150232 () Bool)

(declare-fun call!150234 () Option!5682)

(declare-fun isDefined!4508 (Option!5682) Bool)

(assert (=> bm!150232 (= call!150237 (isDefined!4508 (ite c!390543 call!150236 call!150234)))))

(declare-fun b!2447098 () Bool)

(declare-fun Unit!41839 () Unit!41834)

(assert (=> b!2447098 (= e!1553943 Unit!41839)))

(declare-fun b!2447099 () Bool)

(declare-fun tp_is_empty!11799 () Bool)

(assert (=> b!2447099 (= e!1553947 tp_is_empty!11799)))

(declare-fun b!2447100 () Bool)

(declare-fun e!1553938 () Bool)

(assert (=> b!2447100 (= e!1553938 e!1553944)))

(declare-fun res!1038482 () Bool)

(assert (=> b!2447100 (=> res!1038482 e!1553944)))

(assert (=> b!2447100 (= res!1038482 e!1553941)))

(declare-fun c!390548 () Bool)

(assert (=> b!2447100 (= c!390548 ((_ is Cons!28524) l!9164))))

(declare-fun lt!879507 () Unit!41834)

(assert (=> b!2447100 (= lt!879507 e!1553937)))

(declare-fun c!390545 () Bool)

(assert (=> b!2447100 (= c!390545 (isEmpty!16566 l!9164))))

(declare-fun b!2447101 () Bool)

(declare-fun Unit!41840 () Unit!41834)

(assert (=> b!2447101 (= e!1553934 Unit!41840)))

(declare-fun call!150242 () Option!5682)

(assert (=> b!2447101 (= lt!879514 call!150242)))

(declare-fun lt!879499 () Bool)

(assert (=> b!2447101 (= lt!879499 call!150235)))

(declare-fun c!390546 () Bool)

(assert (=> b!2447101 (= c!390546 lt!879499)))

(declare-fun lt!879505 () Unit!41834)

(assert (=> b!2447101 (= lt!879505 e!1553943)))

(declare-fun res!1038489 () Bool)

(assert (=> b!2447101 (= res!1038489 (not lt!879499))))

(declare-fun e!1553949 () Bool)

(assert (=> b!2447101 (=> (not res!1038489) (not e!1553949))))

(assert (=> b!2447101 e!1553949))

(declare-fun bm!150233 () Bool)

(assert (=> bm!150233 (= call!150236 call!150234)))

(declare-fun b!2447102 () Bool)

(declare-fun findConcatSeparation!790 (Regex!7193 Regex!7193 List!28623 List!28623 List!28623) Option!5682)

(assert (=> b!2447102 (= e!1553941 (not (= lt!879508 (isDefined!4508 (findConcatSeparation!790 (h!33925 l!9164) (generalisedConcat!294 (t!208599 l!9164)) Nil!28525 s!9460 s!9460)))))))

(declare-fun b!2447103 () Bool)

(assert (=> b!2447103 (= e!1553945 (= lt!879508 (isDefined!4508 (findConcatSeparation!790 (h!33925 l!9164) (generalisedConcat!294 (t!208599 l!9164)) Nil!28525 s!9460 s!9460))))))

(declare-fun bm!150234 () Bool)

(declare-fun call!150238 () Regex!7193)

(declare-fun head!5566 (List!28622) Regex!7193)

(assert (=> bm!150234 (= call!150238 (head!5566 l!9164))))

(declare-fun bm!150235 () Bool)

(assert (=> bm!150235 (= call!150242 (findConcatSeparation!790 lt!879510 EmptyExpr!7193 Nil!28525 s!9460 s!9460))))

(declare-fun b!2447104 () Bool)

(declare-fun tp!777282 () Bool)

(declare-fun tp!777286 () Bool)

(assert (=> b!2447104 (= e!1553947 (and tp!777282 tp!777286))))

(declare-fun b!2447105 () Bool)

(assert (=> b!2447105 (= e!1553946 call!150233)))

(declare-fun bm!150236 () Bool)

(assert (=> bm!150236 (= call!150235 (isDefined!4508 (ite c!390547 call!150242 lt!879514)))))

(declare-fun bm!150237 () Bool)

(assert (=> bm!150237 (= call!150234 (findConcatSeparation!790 (ite c!390543 lt!879510 call!150238) (ite c!390543 call!150232 call!150239) Nil!28525 s!9460 s!9460))))

(declare-fun b!2447106 () Bool)

(assert (=> b!2447106 (= e!1553935 call!150240)))

(declare-fun b!2447107 () Bool)

(declare-fun tp!777283 () Bool)

(assert (=> b!2447107 (= e!1553942 (and tp_is_empty!11799 tp!777283))))

(declare-fun b!2447108 () Bool)

(declare-fun tp!777285 () Bool)

(assert (=> b!2447108 (= e!1553947 tp!777285)))

(declare-fun b!2447109 () Bool)

(assert (=> b!2447109 (= e!1553949 (not call!150240))))

(declare-fun b!2447110 () Bool)

(assert (=> b!2447110 (= e!1553936 false)))

(declare-fun b!2447111 () Bool)

(assert (=> b!2447111 (= lt!879508 (isDefined!4508 (findConcatSeparation!790 lt!879510 call!150239 Nil!28525 s!9460 s!9460)))))

(declare-fun lt!879497 () Unit!41834)

(assert (=> b!2447111 (= lt!879497 e!1553934)))

(assert (=> b!2447111 (= c!390547 (matchR!3308 lt!879510 s!9460))))

(assert (=> b!2447111 (= lt!879510 call!150238)))

(declare-fun Unit!41841 () Unit!41834)

(assert (=> b!2447111 (= e!1553950 Unit!41841)))

(declare-fun b!2447112 () Bool)

(declare-fun Unit!41842 () Unit!41834)

(assert (=> b!2447112 (= e!1553937 Unit!41842)))

(assert (=> b!2447112 false))

(assert (=> b!2447113 (= e!1553940 e!1553938)))

(declare-fun res!1038487 () Bool)

(assert (=> b!2447113 (=> res!1038487 e!1553938)))

(declare-fun lt!879503 () Bool)

(assert (=> b!2447113 (= res!1038487 (not (= lt!879506 lt!879503)))))

(declare-fun Exists!1229 (Int) Bool)

(assert (=> b!2447113 (= (Exists!1229 lambda!92738) (Exists!1229 lambda!92739))))

(declare-fun lt!879511 () Unit!41834)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!474 (Regex!7193 Regex!7193 List!28623) Unit!41834)

(assert (=> b!2447113 (= lt!879511 (lemmaExistCutMatchRandMatchRSpecEquivalent!474 (regOne!14898 r!13927) (regTwo!14898 r!13927) s!9460))))

(assert (=> b!2447113 (= lt!879503 (Exists!1229 lambda!92738))))

(assert (=> b!2447113 (= lt!879503 (isDefined!4508 (findConcatSeparation!790 (regOne!14898 r!13927) (regTwo!14898 r!13927) Nil!28525 s!9460 s!9460)))))

(declare-fun lt!879498 () Unit!41834)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!728 (Regex!7193 Regex!7193 List!28623) Unit!41834)

(assert (=> b!2447113 (= lt!879498 (lemmaFindConcatSeparationEquivalentToExists!728 (regOne!14898 r!13927) (regTwo!14898 r!13927) s!9460))))

(declare-fun b!2447114 () Bool)

(assert (=> b!2447114 (= e!1553945 (= lt!879508 (isEmpty!16567 s!9460)))))

(assert (= (and start!239138 res!1038486) b!2447091))

(assert (= (and b!2447091 res!1038488) b!2447090))

(assert (= (and b!2447090 (not res!1038484)) b!2447113))

(assert (= (and b!2447113 (not res!1038487)) b!2447100))

(assert (= (and b!2447100 c!390545) b!2447112))

(assert (= (and b!2447100 (not c!390545)) b!2447093))

(assert (= (and b!2447093 c!390543) b!2447111))

(assert (= (and b!2447093 (not c!390543)) b!2447092))

(assert (= (and b!2447111 c!390547) b!2447096))

(assert (= (and b!2447111 (not c!390547)) b!2447101))

(assert (= (and b!2447096 res!1038490) b!2447105))

(assert (= (and b!2447096 res!1038483) b!2447106))

(assert (= (and b!2447101 c!390546) b!2447097))

(assert (= (and b!2447101 (not c!390546)) b!2447098))

(assert (= (and b!2447097 res!1038485) b!2447110))

(assert (= (and b!2447101 res!1038489) b!2447109))

(assert (= (or b!2447096 b!2447101) bm!150235))

(assert (= (or b!2447096 b!2447097) bm!150230))

(assert (= (or b!2447106 b!2447109) bm!150229))

(assert (= (or b!2447105 b!2447097) bm!150231))

(assert (= (or b!2447096 b!2447101) bm!150236))

(assert (= (or b!2447106 b!2447109) bm!150233))

(assert (= (or b!2447106 b!2447109) bm!150228))

(assert (= (or b!2447111 b!2447092) bm!150234))

(assert (= (or bm!150229 b!2447111 b!2447092) bm!150227))

(assert (= (or bm!150233 b!2447092) bm!150237))

(assert (= (or bm!150228 b!2447092) bm!150232))

(assert (= (and b!2447100 c!390548) b!2447102))

(assert (= (and b!2447100 (not c!390548)) b!2447094))

(assert (= (and b!2447100 (not res!1038482)) b!2447088))

(assert (= (and b!2447088 c!390544) b!2447103))

(assert (= (and b!2447088 (not c!390544)) b!2447114))

(assert (= (and start!239138 ((_ is Cons!28524) l!9164)) b!2447089))

(assert (= (and start!239138 ((_ is ElementMatch!7193) r!13927)) b!2447099))

(assert (= (and start!239138 ((_ is Concat!11829) r!13927)) b!2447095))

(assert (= (and start!239138 ((_ is Star!7193) r!13927)) b!2447108))

(assert (= (and start!239138 ((_ is Union!7193) r!13927)) b!2447104))

(assert (= (and start!239138 ((_ is Cons!28525) s!9460)) b!2447107))

(declare-fun m!2822873 () Bool)

(assert (=> bm!150235 m!2822873))

(declare-fun m!2822875 () Bool)

(assert (=> bm!150227 m!2822875))

(declare-fun m!2822877 () Bool)

(assert (=> b!2447100 m!2822877))

(declare-fun m!2822879 () Bool)

(assert (=> bm!150232 m!2822879))

(declare-fun m!2822881 () Bool)

(assert (=> bm!150236 m!2822881))

(declare-fun m!2822883 () Bool)

(assert (=> b!2447094 m!2822883))

(declare-fun m!2822885 () Bool)

(assert (=> b!2447111 m!2822885))

(assert (=> b!2447111 m!2822885))

(declare-fun m!2822887 () Bool)

(assert (=> b!2447111 m!2822887))

(declare-fun m!2822889 () Bool)

(assert (=> b!2447111 m!2822889))

(declare-fun m!2822891 () Bool)

(assert (=> bm!150237 m!2822891))

(declare-fun m!2822893 () Bool)

(assert (=> b!2447102 m!2822893))

(assert (=> b!2447102 m!2822893))

(declare-fun m!2822895 () Bool)

(assert (=> b!2447102 m!2822895))

(assert (=> b!2447102 m!2822895))

(declare-fun m!2822897 () Bool)

(assert (=> b!2447102 m!2822897))

(declare-fun m!2822899 () Bool)

(assert (=> b!2447097 m!2822899))

(declare-fun m!2822901 () Bool)

(assert (=> b!2447097 m!2822901))

(assert (=> b!2447103 m!2822893))

(assert (=> b!2447103 m!2822893))

(assert (=> b!2447103 m!2822895))

(assert (=> b!2447103 m!2822895))

(assert (=> b!2447103 m!2822897))

(declare-fun m!2822903 () Bool)

(assert (=> b!2447096 m!2822903))

(declare-fun m!2822905 () Bool)

(assert (=> b!2447096 m!2822905))

(declare-fun m!2822907 () Bool)

(assert (=> b!2447096 m!2822907))

(declare-fun m!2822909 () Bool)

(assert (=> b!2447091 m!2822909))

(assert (=> b!2447114 m!2822883))

(declare-fun m!2822911 () Bool)

(assert (=> bm!150231 m!2822911))

(declare-fun m!2822913 () Bool)

(assert (=> b!2447090 m!2822913))

(declare-fun m!2822915 () Bool)

(assert (=> b!2447090 m!2822915))

(declare-fun m!2822917 () Bool)

(assert (=> b!2447090 m!2822917))

(declare-fun m!2822919 () Bool)

(assert (=> b!2447113 m!2822919))

(declare-fun m!2822921 () Bool)

(assert (=> b!2447113 m!2822921))

(declare-fun m!2822923 () Bool)

(assert (=> b!2447113 m!2822923))

(declare-fun m!2822925 () Bool)

(assert (=> b!2447113 m!2822925))

(declare-fun m!2822927 () Bool)

(assert (=> b!2447113 m!2822927))

(declare-fun m!2822929 () Bool)

(assert (=> b!2447113 m!2822929))

(assert (=> b!2447113 m!2822919))

(assert (=> b!2447113 m!2822929))

(declare-fun m!2822931 () Bool)

(assert (=> b!2447093 m!2822931))

(declare-fun m!2822933 () Bool)

(assert (=> b!2447093 m!2822933))

(declare-fun m!2822935 () Bool)

(assert (=> bm!150234 m!2822935))

(declare-fun m!2822937 () Bool)

(assert (=> start!239138 m!2822937))

(declare-fun m!2822939 () Bool)

(assert (=> bm!150230 m!2822939))

(check-sat (not b!2447102) (not b!2447095) tp_is_empty!11799 (not bm!150232) (not bm!150237) (not bm!150234) (not start!239138) (not b!2447090) (not bm!150235) (not b!2447103) (not bm!150231) (not b!2447089) (not b!2447097) (not b!2447094) (not b!2447114) (not b!2447104) (not b!2447096) (not b!2447093) (not bm!150227) (not b!2447111) (not b!2447091) (not bm!150230) (not b!2447113) (not b!2447108) (not b!2447107) (not bm!150236) (not b!2447100))
(check-sat)
