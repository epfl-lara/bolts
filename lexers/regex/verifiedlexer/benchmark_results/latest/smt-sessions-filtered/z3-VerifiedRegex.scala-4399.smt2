; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!234004 () Bool)

(assert start!234004)

(declare-fun b!2384712 () Bool)

(assert (=> b!2384712 true))

(assert (=> b!2384712 true))

(declare-fun lambda!88991 () Int)

(declare-fun lambda!88990 () Int)

(assert (=> b!2384712 (not (= lambda!88991 lambda!88990))))

(assert (=> b!2384712 true))

(assert (=> b!2384712 true))

(declare-fun e!1520717 () Bool)

(declare-fun e!1520721 () Bool)

(assert (=> b!2384712 (= e!1520717 e!1520721)))

(declare-fun res!1012935 () Bool)

(assert (=> b!2384712 (=> res!1012935 e!1520721)))

(declare-fun lt!869201 () Bool)

(declare-fun lt!869196 () Bool)

(assert (=> b!2384712 (= res!1012935 (not (= lt!869201 lt!869196)))))

(declare-fun Exists!1053 (Int) Bool)

(assert (=> b!2384712 (= (Exists!1053 lambda!88990) (Exists!1053 lambda!88991))))

(declare-datatypes ((Unit!41081 0))(
  ( (Unit!41082) )
))
(declare-fun lt!869205 () Unit!41081)

(declare-datatypes ((C!14140 0))(
  ( (C!14141 (val!8312 Int)) )
))
(declare-datatypes ((Regex!6991 0))(
  ( (ElementMatch!6991 (c!379189 C!14140)) (Concat!11627 (regOne!14494 Regex!6991) (regTwo!14494 Regex!6991)) (EmptyExpr!6991) (Star!6991 (reg!7320 Regex!6991)) (EmptyLang!6991) (Union!6991 (regOne!14495 Regex!6991) (regTwo!14495 Regex!6991)) )
))
(declare-fun r!13927 () Regex!6991)

(declare-datatypes ((List!28220 0))(
  ( (Nil!28122) (Cons!28122 (h!33523 C!14140) (t!208197 List!28220)) )
))
(declare-fun s!9460 () List!28220)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!392 (Regex!6991 Regex!6991 List!28220) Unit!41081)

(assert (=> b!2384712 (= lt!869205 (lemmaExistCutMatchRandMatchRSpecEquivalent!392 (regOne!14494 r!13927) (regTwo!14494 r!13927) s!9460))))

(assert (=> b!2384712 (= lt!869196 (Exists!1053 lambda!88990))))

(declare-datatypes ((tuple2!27846 0))(
  ( (tuple2!27847 (_1!16464 List!28220) (_2!16464 List!28220)) )
))
(declare-datatypes ((Option!5534 0))(
  ( (None!5533) (Some!5533 (v!30941 tuple2!27846)) )
))
(declare-fun isDefined!4362 (Option!5534) Bool)

(declare-fun findConcatSeparation!642 (Regex!6991 Regex!6991 List!28220 List!28220 List!28220) Option!5534)

(assert (=> b!2384712 (= lt!869196 (isDefined!4362 (findConcatSeparation!642 (regOne!14494 r!13927) (regTwo!14494 r!13927) Nil!28122 s!9460 s!9460)))))

(declare-fun lt!869204 () Unit!41081)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!642 (Regex!6991 Regex!6991 List!28220) Unit!41081)

(assert (=> b!2384712 (= lt!869204 (lemmaFindConcatSeparationEquivalentToExists!642 (regOne!14494 r!13927) (regTwo!14494 r!13927) s!9460))))

(declare-fun b!2384713 () Bool)

(declare-fun e!1520715 () Unit!41081)

(declare-fun Unit!41083 () Unit!41081)

(assert (=> b!2384713 (= e!1520715 Unit!41083)))

(declare-fun b!2384715 () Bool)

(declare-fun e!1520720 () Unit!41081)

(declare-fun Unit!41084 () Unit!41081)

(assert (=> b!2384715 (= e!1520720 Unit!41084)))

(declare-fun lt!869195 () Option!5534)

(declare-fun call!145006 () Option!5534)

(assert (=> b!2384715 (= lt!869195 call!145006)))

(declare-fun lt!869203 () Bool)

(declare-fun call!145008 () Bool)

(assert (=> b!2384715 (= lt!869203 call!145008)))

(declare-fun c!379188 () Bool)

(assert (=> b!2384715 (= c!379188 lt!869203)))

(declare-fun lt!869193 () Unit!41081)

(assert (=> b!2384715 (= lt!869193 e!1520715)))

(declare-fun res!1012942 () Bool)

(assert (=> b!2384715 (= res!1012942 (not lt!869203))))

(declare-fun e!1520718 () Bool)

(assert (=> b!2384715 (=> (not res!1012942) (not e!1520718))))

(assert (=> b!2384715 e!1520718))

(declare-fun c!379187 () Bool)

(declare-fun call!145010 () Bool)

(declare-fun lt!869208 () Regex!6991)

(declare-fun lt!869207 () Regex!6991)

(declare-fun call!145007 () List!28220)

(declare-fun bm!145000 () Bool)

(declare-fun matchR!3108 (Regex!6991 List!28220) Bool)

(assert (=> bm!145000 (= call!145010 (matchR!3108 (ite c!379187 lt!869207 (Concat!11627 lt!869208 EmptyExpr!6991)) (ite c!379187 s!9460 call!145007)))))

(declare-fun bm!145001 () Bool)

(declare-fun call!145009 () Option!5534)

(declare-fun lt!869200 () Regex!6991)

(assert (=> bm!145001 (= call!145009 (findConcatSeparation!642 lt!869208 lt!869200 Nil!28122 s!9460 s!9460))))

(declare-fun b!2384716 () Bool)

(declare-fun call!145005 () Bool)

(assert (=> b!2384716 (= e!1520718 (not call!145005))))

(declare-fun lt!869199 () tuple2!27846)

(declare-fun bm!145002 () Bool)

(declare-fun ++!6946 (List!28220 List!28220) List!28220)

(assert (=> bm!145002 (= call!145007 (++!6946 (ite c!379187 s!9460 (_1!16464 lt!869199)) (ite c!379187 Nil!28122 (_2!16464 lt!869199))))))

(declare-fun b!2384717 () Bool)

(declare-fun e!1520708 () Bool)

(declare-fun tp!760774 () Bool)

(declare-fun tp!760781 () Bool)

(assert (=> b!2384717 (= e!1520708 (and tp!760774 tp!760781))))

(declare-fun b!2384718 () Bool)

(declare-fun e!1520716 () Bool)

(assert (=> b!2384718 e!1520716))

(declare-fun res!1012938 () Bool)

(assert (=> b!2384718 (=> (not res!1012938) (not e!1520716))))

(assert (=> b!2384718 (= res!1012938 call!145010)))

(declare-fun lt!869194 () Unit!41081)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!22 (Regex!6991 Regex!6991 List!28220 List!28220 List!28220) Unit!41081)

(assert (=> b!2384718 (= lt!869194 (lemmaFindSeparationIsDefinedThenConcatMatches!22 lt!869208 EmptyExpr!6991 (_1!16464 lt!869199) (_2!16464 lt!869199) s!9460))))

(declare-fun get!8585 (Option!5534) tuple2!27846)

(assert (=> b!2384718 (= lt!869199 (get!8585 lt!869195))))

(declare-fun Unit!41085 () Unit!41081)

(assert (=> b!2384718 (= e!1520715 Unit!41085)))

(declare-fun b!2384719 () Bool)

(declare-fun e!1520709 () Bool)

(declare-fun e!1520722 () Bool)

(assert (=> b!2384719 (= e!1520709 e!1520722)))

(declare-fun res!1012944 () Bool)

(assert (=> b!2384719 (=> res!1012944 e!1520722)))

(assert (=> b!2384719 (= res!1012944 (not (= lt!869200 EmptyExpr!6991)))))

(declare-datatypes ((List!28221 0))(
  ( (Nil!28123) (Cons!28123 (h!33524 Regex!6991) (t!208198 List!28221)) )
))
(declare-fun lt!869198 () List!28221)

(declare-fun generalisedConcat!92 (List!28221) Regex!6991)

(assert (=> b!2384719 (= lt!869200 (generalisedConcat!92 lt!869198))))

(declare-fun b!2384720 () Bool)

(declare-fun Unit!41086 () Unit!41081)

(assert (=> b!2384720 (= e!1520720 Unit!41086)))

(declare-fun lt!869206 () Unit!41081)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!40 (Regex!6991 Regex!6991 List!28220 List!28220) Unit!41081)

(assert (=> b!2384720 (= lt!869206 (lemmaTwoRegexMatchThenConcatMatchesConcatString!40 lt!869208 EmptyExpr!6991 s!9460 Nil!28122))))

(assert (=> b!2384720 (= lt!869207 (Concat!11627 lt!869208 EmptyExpr!6991))))

(declare-fun res!1012937 () Bool)

(assert (=> b!2384720 (= res!1012937 (matchR!3108 lt!869207 call!145007))))

(declare-fun e!1520710 () Bool)

(assert (=> b!2384720 (=> (not res!1012937) (not e!1520710))))

(assert (=> b!2384720 e!1520710))

(declare-fun lt!869209 () Unit!41081)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!22 (Regex!6991 Regex!6991 List!28220) Unit!41081)

(assert (=> b!2384720 (= lt!869209 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!22 lt!869208 EmptyExpr!6991 s!9460))))

(declare-fun res!1012943 () Bool)

(assert (=> b!2384720 (= res!1012943 call!145008)))

(declare-fun e!1520713 () Bool)

(assert (=> b!2384720 (=> (not res!1012943) (not e!1520713))))

(assert (=> b!2384720 e!1520713))

(declare-fun res!1012936 () Bool)

(declare-fun e!1520711 () Bool)

(assert (=> start!234004 (=> (not res!1012936) (not e!1520711))))

(declare-fun l!9164 () List!28221)

(declare-fun lambda!88989 () Int)

(declare-fun forall!5625 (List!28221 Int) Bool)

(assert (=> start!234004 (= res!1012936 (forall!5625 l!9164 lambda!88989))))

(assert (=> start!234004 e!1520711))

(declare-fun e!1520714 () Bool)

(assert (=> start!234004 e!1520714))

(assert (=> start!234004 e!1520708))

(declare-fun e!1520712 () Bool)

(assert (=> start!234004 e!1520712))

(declare-fun b!2384714 () Bool)

(declare-fun e!1520719 () Bool)

(assert (=> b!2384714 (= e!1520722 e!1520719)))

(declare-fun res!1012932 () Bool)

(assert (=> b!2384714 (=> res!1012932 e!1520719)))

(declare-fun validRegex!2716 (Regex!6991) Bool)

(assert (=> b!2384714 (= res!1012932 (not (validRegex!2716 lt!869208)))))

(declare-fun lt!869202 () Unit!41081)

(assert (=> b!2384714 (= lt!869202 e!1520720)))

(assert (=> b!2384714 (= c!379187 (matchR!3108 lt!869208 s!9460))))

(declare-fun head!5214 (List!28221) Regex!6991)

(assert (=> b!2384714 (= lt!869208 (head!5214 l!9164))))

(declare-fun bm!145003 () Bool)

(assert (=> bm!145003 (= call!145005 (isDefined!4362 call!145009))))

(declare-fun b!2384721 () Bool)

(declare-fun res!1012941 () Bool)

(assert (=> b!2384721 (=> res!1012941 e!1520719)))

(assert (=> b!2384721 (= res!1012941 (not (validRegex!2716 lt!869200)))))

(declare-fun bm!145004 () Bool)

(assert (=> bm!145004 (= call!145008 (isDefined!4362 (ite c!379187 call!145006 lt!869195)))))

(declare-fun b!2384722 () Bool)

(declare-fun res!1012933 () Bool)

(assert (=> b!2384722 (=> (not res!1012933) (not e!1520711))))

(assert (=> b!2384722 (= res!1012933 (= r!13927 (generalisedConcat!92 l!9164)))))

(declare-fun b!2384723 () Bool)

(declare-fun tp_is_empty!11395 () Bool)

(declare-fun tp!760776 () Bool)

(assert (=> b!2384723 (= e!1520712 (and tp_is_empty!11395 tp!760776))))

(declare-fun b!2384724 () Bool)

(assert (=> b!2384724 (= e!1520721 e!1520709)))

(declare-fun res!1012939 () Bool)

(assert (=> b!2384724 (=> res!1012939 e!1520709)))

(declare-fun isEmpty!16081 (List!28221) Bool)

(assert (=> b!2384724 (= res!1012939 (not (isEmpty!16081 lt!869198)))))

(declare-fun tail!3484 (List!28221) List!28221)

(assert (=> b!2384724 (= lt!869198 (tail!3484 l!9164))))

(declare-fun b!2384725 () Bool)

(assert (=> b!2384725 (= e!1520711 (not e!1520717))))

(declare-fun res!1012940 () Bool)

(assert (=> b!2384725 (=> res!1012940 e!1520717)))

(get-info :version)

(assert (=> b!2384725 (= res!1012940 (not ((_ is Concat!11627) r!13927)))))

(declare-fun lt!869210 () Bool)

(assert (=> b!2384725 (= lt!869210 lt!869201)))

(declare-fun matchRSpec!840 (Regex!6991 List!28220) Bool)

(assert (=> b!2384725 (= lt!869201 (matchRSpec!840 r!13927 s!9460))))

(assert (=> b!2384725 (= lt!869210 (matchR!3108 r!13927 s!9460))))

(declare-fun lt!869197 () Unit!41081)

(declare-fun mainMatchTheorem!840 (Regex!6991 List!28220) Unit!41081)

(assert (=> b!2384725 (= lt!869197 (mainMatchTheorem!840 r!13927 s!9460))))

(declare-fun b!2384726 () Bool)

(assert (=> b!2384726 (= e!1520708 tp_is_empty!11395)))

(declare-fun b!2384727 () Bool)

(assert (=> b!2384727 (= e!1520713 call!145005)))

(declare-fun b!2384728 () Bool)

(declare-fun tp!760775 () Bool)

(declare-fun tp!760778 () Bool)

(assert (=> b!2384728 (= e!1520714 (and tp!760775 tp!760778))))

(declare-fun bm!145005 () Bool)

(assert (=> bm!145005 (= call!145006 (findConcatSeparation!642 lt!869208 EmptyExpr!6991 Nil!28122 s!9460 s!9460))))

(declare-fun b!2384729 () Bool)

(assert (=> b!2384729 (= e!1520719 (= (++!6946 Nil!28122 s!9460) s!9460))))

(declare-fun b!2384730 () Bool)

(assert (=> b!2384730 (= e!1520716 false)))

(declare-fun b!2384731 () Bool)

(declare-fun tp!760777 () Bool)

(declare-fun tp!760779 () Bool)

(assert (=> b!2384731 (= e!1520708 (and tp!760777 tp!760779))))

(declare-fun b!2384732 () Bool)

(declare-fun res!1012934 () Bool)

(assert (=> b!2384732 (=> res!1012934 e!1520721)))

(assert (=> b!2384732 (= res!1012934 (isEmpty!16081 l!9164))))

(declare-fun b!2384733 () Bool)

(assert (=> b!2384733 (= e!1520710 call!145010)))

(declare-fun b!2384734 () Bool)

(declare-fun tp!760780 () Bool)

(assert (=> b!2384734 (= e!1520708 tp!760780)))

(assert (= (and start!234004 res!1012936) b!2384722))

(assert (= (and b!2384722 res!1012933) b!2384725))

(assert (= (and b!2384725 (not res!1012940)) b!2384712))

(assert (= (and b!2384712 (not res!1012935)) b!2384732))

(assert (= (and b!2384732 (not res!1012934)) b!2384724))

(assert (= (and b!2384724 (not res!1012939)) b!2384719))

(assert (= (and b!2384719 (not res!1012944)) b!2384714))

(assert (= (and b!2384714 c!379187) b!2384720))

(assert (= (and b!2384714 (not c!379187)) b!2384715))

(assert (= (and b!2384720 res!1012937) b!2384733))

(assert (= (and b!2384720 res!1012943) b!2384727))

(assert (= (and b!2384715 c!379188) b!2384718))

(assert (= (and b!2384715 (not c!379188)) b!2384713))

(assert (= (and b!2384718 res!1012938) b!2384730))

(assert (= (and b!2384715 res!1012942) b!2384716))

(assert (= (or b!2384720 b!2384718) bm!145002))

(assert (= (or b!2384727 b!2384716) bm!145001))

(assert (= (or b!2384720 b!2384715) bm!145005))

(assert (= (or b!2384720 b!2384715) bm!145004))

(assert (= (or b!2384733 b!2384718) bm!145000))

(assert (= (or b!2384727 b!2384716) bm!145003))

(assert (= (and b!2384714 (not res!1012932)) b!2384721))

(assert (= (and b!2384721 (not res!1012941)) b!2384729))

(assert (= (and start!234004 ((_ is Cons!28123) l!9164)) b!2384728))

(assert (= (and start!234004 ((_ is ElementMatch!6991) r!13927)) b!2384726))

(assert (= (and start!234004 ((_ is Concat!11627) r!13927)) b!2384731))

(assert (= (and start!234004 ((_ is Star!6991) r!13927)) b!2384734))

(assert (= (and start!234004 ((_ is Union!6991) r!13927)) b!2384717))

(assert (= (and start!234004 ((_ is Cons!28122) s!9460)) b!2384723))

(declare-fun m!2787327 () Bool)

(assert (=> b!2384724 m!2787327))

(declare-fun m!2787329 () Bool)

(assert (=> b!2384724 m!2787329))

(declare-fun m!2787331 () Bool)

(assert (=> bm!145002 m!2787331))

(declare-fun m!2787333 () Bool)

(assert (=> b!2384718 m!2787333))

(declare-fun m!2787335 () Bool)

(assert (=> b!2384718 m!2787335))

(declare-fun m!2787337 () Bool)

(assert (=> bm!145000 m!2787337))

(declare-fun m!2787339 () Bool)

(assert (=> start!234004 m!2787339))

(declare-fun m!2787341 () Bool)

(assert (=> b!2384720 m!2787341))

(declare-fun m!2787343 () Bool)

(assert (=> b!2384720 m!2787343))

(declare-fun m!2787345 () Bool)

(assert (=> b!2384720 m!2787345))

(declare-fun m!2787347 () Bool)

(assert (=> bm!145004 m!2787347))

(declare-fun m!2787349 () Bool)

(assert (=> b!2384712 m!2787349))

(declare-fun m!2787351 () Bool)

(assert (=> b!2384712 m!2787351))

(declare-fun m!2787353 () Bool)

(assert (=> b!2384712 m!2787353))

(assert (=> b!2384712 m!2787349))

(declare-fun m!2787355 () Bool)

(assert (=> b!2384712 m!2787355))

(declare-fun m!2787357 () Bool)

(assert (=> b!2384712 m!2787357))

(declare-fun m!2787359 () Bool)

(assert (=> b!2384712 m!2787359))

(assert (=> b!2384712 m!2787355))

(declare-fun m!2787361 () Bool)

(assert (=> b!2384721 m!2787361))

(declare-fun m!2787363 () Bool)

(assert (=> bm!145003 m!2787363))

(declare-fun m!2787365 () Bool)

(assert (=> bm!145001 m!2787365))

(declare-fun m!2787367 () Bool)

(assert (=> b!2384725 m!2787367))

(declare-fun m!2787369 () Bool)

(assert (=> b!2384725 m!2787369))

(declare-fun m!2787371 () Bool)

(assert (=> b!2384725 m!2787371))

(declare-fun m!2787373 () Bool)

(assert (=> b!2384719 m!2787373))

(declare-fun m!2787375 () Bool)

(assert (=> b!2384729 m!2787375))

(declare-fun m!2787377 () Bool)

(assert (=> b!2384732 m!2787377))

(declare-fun m!2787379 () Bool)

(assert (=> b!2384714 m!2787379))

(declare-fun m!2787381 () Bool)

(assert (=> b!2384714 m!2787381))

(declare-fun m!2787383 () Bool)

(assert (=> b!2384714 m!2787383))

(declare-fun m!2787385 () Bool)

(assert (=> bm!145005 m!2787385))

(declare-fun m!2787387 () Bool)

(assert (=> b!2384722 m!2787387))

(check-sat (not b!2384724) (not b!2384718) tp_is_empty!11395 (not b!2384731) (not b!2384732) (not b!2384728) (not bm!145000) (not bm!145001) (not bm!145002) (not bm!145004) (not bm!145005) (not b!2384714) (not b!2384717) (not b!2384734) (not b!2384712) (not b!2384721) (not start!234004) (not b!2384722) (not b!2384723) (not b!2384719) (not b!2384725) (not b!2384720) (not b!2384729) (not bm!145003))
(check-sat)
(get-model)

(declare-fun d!697280 () Bool)

(assert (=> d!697280 (= (isEmpty!16081 lt!869198) ((_ is Nil!28123) lt!869198))))

(assert (=> b!2384724 d!697280))

(declare-fun d!697282 () Bool)

(assert (=> d!697282 (= (tail!3484 l!9164) (t!208198 l!9164))))

(assert (=> b!2384724 d!697282))

(declare-fun d!697284 () Bool)

(declare-fun e!1520742 () Bool)

(assert (=> d!697284 e!1520742))

(declare-fun res!1012959 () Bool)

(assert (=> d!697284 (=> (not res!1012959) (not e!1520742))))

(declare-fun lt!869213 () List!28220)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3838 (List!28220) (InoxSet C!14140))

(assert (=> d!697284 (= res!1012959 (= (content!3838 lt!869213) ((_ map or) (content!3838 (ite c!379187 s!9460 (_1!16464 lt!869199))) (content!3838 (ite c!379187 Nil!28122 (_2!16464 lt!869199))))))))

(declare-fun e!1520741 () List!28220)

(assert (=> d!697284 (= lt!869213 e!1520741)))

(declare-fun c!379196 () Bool)

(assert (=> d!697284 (= c!379196 ((_ is Nil!28122) (ite c!379187 s!9460 (_1!16464 lt!869199))))))

(assert (=> d!697284 (= (++!6946 (ite c!379187 s!9460 (_1!16464 lt!869199)) (ite c!379187 Nil!28122 (_2!16464 lt!869199))) lt!869213)))

(declare-fun b!2384766 () Bool)

(assert (=> b!2384766 (= e!1520741 (Cons!28122 (h!33523 (ite c!379187 s!9460 (_1!16464 lt!869199))) (++!6946 (t!208197 (ite c!379187 s!9460 (_1!16464 lt!869199))) (ite c!379187 Nil!28122 (_2!16464 lt!869199)))))))

(declare-fun b!2384765 () Bool)

(assert (=> b!2384765 (= e!1520741 (ite c!379187 Nil!28122 (_2!16464 lt!869199)))))

(declare-fun b!2384768 () Bool)

(assert (=> b!2384768 (= e!1520742 (or (not (= (ite c!379187 Nil!28122 (_2!16464 lt!869199)) Nil!28122)) (= lt!869213 (ite c!379187 s!9460 (_1!16464 lt!869199)))))))

(declare-fun b!2384767 () Bool)

(declare-fun res!1012960 () Bool)

(assert (=> b!2384767 (=> (not res!1012960) (not e!1520742))))

(declare-fun size!22176 (List!28220) Int)

(assert (=> b!2384767 (= res!1012960 (= (size!22176 lt!869213) (+ (size!22176 (ite c!379187 s!9460 (_1!16464 lt!869199))) (size!22176 (ite c!379187 Nil!28122 (_2!16464 lt!869199))))))))

(assert (= (and d!697284 c!379196) b!2384765))

(assert (= (and d!697284 (not c!379196)) b!2384766))

(assert (= (and d!697284 res!1012959) b!2384767))

(assert (= (and b!2384767 res!1012960) b!2384768))

(declare-fun m!2787389 () Bool)

(assert (=> d!697284 m!2787389))

(declare-fun m!2787391 () Bool)

(assert (=> d!697284 m!2787391))

(declare-fun m!2787393 () Bool)

(assert (=> d!697284 m!2787393))

(declare-fun m!2787395 () Bool)

(assert (=> b!2384766 m!2787395))

(declare-fun m!2787397 () Bool)

(assert (=> b!2384767 m!2787397))

(declare-fun m!2787399 () Bool)

(assert (=> b!2384767 m!2787399))

(declare-fun m!2787401 () Bool)

(assert (=> b!2384767 m!2787401))

(assert (=> bm!145002 d!697284))

(declare-fun bs!462115 () Bool)

(declare-fun b!2384889 () Bool)

(assert (= bs!462115 (and b!2384889 b!2384712)))

(declare-fun lambda!88996 () Int)

(assert (=> bs!462115 (not (= lambda!88996 lambda!88990))))

(assert (=> bs!462115 (not (= lambda!88996 lambda!88991))))

(assert (=> b!2384889 true))

(assert (=> b!2384889 true))

(declare-fun bs!462116 () Bool)

(declare-fun b!2384887 () Bool)

(assert (= bs!462116 (and b!2384887 b!2384712)))

(declare-fun lambda!88997 () Int)

(assert (=> bs!462116 (not (= lambda!88997 lambda!88990))))

(assert (=> bs!462116 (= lambda!88997 lambda!88991)))

(declare-fun bs!462117 () Bool)

(assert (= bs!462117 (and b!2384887 b!2384889)))

(assert (=> bs!462117 (not (= lambda!88997 lambda!88996))))

(assert (=> b!2384887 true))

(assert (=> b!2384887 true))

(declare-fun b!2384879 () Bool)

(declare-fun e!1520805 () Bool)

(declare-fun call!145028 () Bool)

(assert (=> b!2384879 (= e!1520805 call!145028)))

(declare-fun b!2384880 () Bool)

(declare-fun e!1520809 () Bool)

(assert (=> b!2384880 (= e!1520809 (= s!9460 (Cons!28122 (c!379189 r!13927) Nil!28122)))))

(declare-fun b!2384881 () Bool)

(declare-fun e!1520807 () Bool)

(declare-fun e!1520810 () Bool)

(assert (=> b!2384881 (= e!1520807 e!1520810)))

(declare-fun res!1013021 () Bool)

(assert (=> b!2384881 (= res!1013021 (matchRSpec!840 (regOne!14495 r!13927) s!9460))))

(assert (=> b!2384881 (=> res!1013021 e!1520810)))

(declare-fun b!2384882 () Bool)

(declare-fun e!1520804 () Bool)

(assert (=> b!2384882 (= e!1520807 e!1520804)))

(declare-fun c!379222 () Bool)

(assert (=> b!2384882 (= c!379222 ((_ is Star!6991) r!13927))))

(declare-fun b!2384883 () Bool)

(declare-fun c!379223 () Bool)

(assert (=> b!2384883 (= c!379223 ((_ is ElementMatch!6991) r!13927))))

(declare-fun e!1520808 () Bool)

(assert (=> b!2384883 (= e!1520808 e!1520809)))

(declare-fun bm!145022 () Bool)

(declare-fun isEmpty!16083 (List!28220) Bool)

(assert (=> bm!145022 (= call!145028 (isEmpty!16083 s!9460))))

(declare-fun b!2384885 () Bool)

(declare-fun c!379224 () Bool)

(assert (=> b!2384885 (= c!379224 ((_ is Union!6991) r!13927))))

(assert (=> b!2384885 (= e!1520809 e!1520807)))

(declare-fun b!2384886 () Bool)

(assert (=> b!2384886 (= e!1520805 e!1520808)))

(declare-fun res!1013022 () Bool)

(assert (=> b!2384886 (= res!1013022 (not ((_ is EmptyLang!6991) r!13927)))))

(assert (=> b!2384886 (=> (not res!1013022) (not e!1520808))))

(declare-fun d!697288 () Bool)

(declare-fun c!379225 () Bool)

(assert (=> d!697288 (= c!379225 ((_ is EmptyExpr!6991) r!13927))))

(assert (=> d!697288 (= (matchRSpec!840 r!13927 s!9460) e!1520805)))

(declare-fun b!2384884 () Bool)

(declare-fun res!1013023 () Bool)

(declare-fun e!1520806 () Bool)

(assert (=> b!2384884 (=> res!1013023 e!1520806)))

(assert (=> b!2384884 (= res!1013023 call!145028)))

(assert (=> b!2384884 (= e!1520804 e!1520806)))

(declare-fun call!145027 () Bool)

(assert (=> b!2384887 (= e!1520804 call!145027)))

(declare-fun b!2384888 () Bool)

(assert (=> b!2384888 (= e!1520810 (matchRSpec!840 (regTwo!14495 r!13927) s!9460))))

(assert (=> b!2384889 (= e!1520806 call!145027)))

(declare-fun bm!145023 () Bool)

(assert (=> bm!145023 (= call!145027 (Exists!1053 (ite c!379222 lambda!88996 lambda!88997)))))

(assert (= (and d!697288 c!379225) b!2384879))

(assert (= (and d!697288 (not c!379225)) b!2384886))

(assert (= (and b!2384886 res!1013022) b!2384883))

(assert (= (and b!2384883 c!379223) b!2384880))

(assert (= (and b!2384883 (not c!379223)) b!2384885))

(assert (= (and b!2384885 c!379224) b!2384881))

(assert (= (and b!2384885 (not c!379224)) b!2384882))

(assert (= (and b!2384881 (not res!1013021)) b!2384888))

(assert (= (and b!2384882 c!379222) b!2384884))

(assert (= (and b!2384882 (not c!379222)) b!2384887))

(assert (= (and b!2384884 (not res!1013023)) b!2384889))

(assert (= (or b!2384889 b!2384887) bm!145023))

(assert (= (or b!2384879 b!2384884) bm!145022))

(declare-fun m!2787471 () Bool)

(assert (=> b!2384881 m!2787471))

(declare-fun m!2787473 () Bool)

(assert (=> bm!145022 m!2787473))

(declare-fun m!2787475 () Bool)

(assert (=> b!2384888 m!2787475))

(declare-fun m!2787477 () Bool)

(assert (=> bm!145023 m!2787477))

(assert (=> b!2384725 d!697288))

(declare-fun b!2385016 () Bool)

(declare-fun res!1013089 () Bool)

(declare-fun e!1520893 () Bool)

(assert (=> b!2385016 (=> (not res!1013089) (not e!1520893))))

(declare-fun tail!3486 (List!28220) List!28220)

(assert (=> b!2385016 (= res!1013089 (isEmpty!16083 (tail!3486 s!9460)))))

(declare-fun b!2385017 () Bool)

(declare-fun e!1520887 () Bool)

(declare-fun head!5216 (List!28220) C!14140)

(assert (=> b!2385017 (= e!1520887 (not (= (head!5216 s!9460) (c!379189 r!13927))))))

(declare-fun b!2385018 () Bool)

(declare-fun res!1013085 () Bool)

(assert (=> b!2385018 (=> res!1013085 e!1520887)))

(assert (=> b!2385018 (= res!1013085 (not (isEmpty!16083 (tail!3486 s!9460))))))

(declare-fun b!2385019 () Bool)

(declare-fun e!1520888 () Bool)

(declare-fun nullable!2041 (Regex!6991) Bool)

(assert (=> b!2385019 (= e!1520888 (nullable!2041 r!13927))))

(declare-fun b!2385020 () Bool)

(declare-fun res!1013083 () Bool)

(assert (=> b!2385020 (=> (not res!1013083) (not e!1520893))))

(declare-fun call!145036 () Bool)

(assert (=> b!2385020 (= res!1013083 (not call!145036))))

(declare-fun b!2385021 () Bool)

(assert (=> b!2385021 (= e!1520893 (= (head!5216 s!9460) (c!379189 r!13927)))))

(declare-fun b!2385022 () Bool)

(declare-fun e!1520889 () Bool)

(assert (=> b!2385022 (= e!1520889 e!1520887)))

(declare-fun res!1013087 () Bool)

(assert (=> b!2385022 (=> res!1013087 e!1520887)))

(assert (=> b!2385022 (= res!1013087 call!145036)))

(declare-fun bm!145031 () Bool)

(assert (=> bm!145031 (= call!145036 (isEmpty!16083 s!9460))))

(declare-fun b!2385023 () Bool)

(declare-fun res!1013086 () Bool)

(declare-fun e!1520891 () Bool)

(assert (=> b!2385023 (=> res!1013086 e!1520891)))

(assert (=> b!2385023 (= res!1013086 e!1520893)))

(declare-fun res!1013088 () Bool)

(assert (=> b!2385023 (=> (not res!1013088) (not e!1520893))))

(declare-fun lt!869242 () Bool)

(assert (=> b!2385023 (= res!1013088 lt!869242)))

(declare-fun b!2385024 () Bool)

(declare-fun res!1013082 () Bool)

(assert (=> b!2385024 (=> res!1013082 e!1520891)))

(assert (=> b!2385024 (= res!1013082 (not ((_ is ElementMatch!6991) r!13927)))))

(declare-fun e!1520892 () Bool)

(assert (=> b!2385024 (= e!1520892 e!1520891)))

(declare-fun b!2385025 () Bool)

(assert (=> b!2385025 (= e!1520892 (not lt!869242))))

(declare-fun b!2385026 () Bool)

(declare-fun e!1520890 () Bool)

(assert (=> b!2385026 (= e!1520890 e!1520892)))

(declare-fun c!379262 () Bool)

(assert (=> b!2385026 (= c!379262 ((_ is EmptyLang!6991) r!13927))))

(declare-fun b!2385027 () Bool)

(assert (=> b!2385027 (= e!1520890 (= lt!869242 call!145036))))

(declare-fun d!697306 () Bool)

(assert (=> d!697306 e!1520890))

(declare-fun c!379260 () Bool)

(assert (=> d!697306 (= c!379260 ((_ is EmptyExpr!6991) r!13927))))

(assert (=> d!697306 (= lt!869242 e!1520888)))

(declare-fun c!379261 () Bool)

(assert (=> d!697306 (= c!379261 (isEmpty!16083 s!9460))))

(assert (=> d!697306 (validRegex!2716 r!13927)))

(assert (=> d!697306 (= (matchR!3108 r!13927 s!9460) lt!869242)))

(declare-fun b!2385028 () Bool)

(assert (=> b!2385028 (= e!1520891 e!1520889)))

(declare-fun res!1013084 () Bool)

(assert (=> b!2385028 (=> (not res!1013084) (not e!1520889))))

(assert (=> b!2385028 (= res!1013084 (not lt!869242))))

(declare-fun b!2385029 () Bool)

(declare-fun derivativeStep!1699 (Regex!6991 C!14140) Regex!6991)

(assert (=> b!2385029 (= e!1520888 (matchR!3108 (derivativeStep!1699 r!13927 (head!5216 s!9460)) (tail!3486 s!9460)))))

(assert (= (and d!697306 c!379261) b!2385019))

(assert (= (and d!697306 (not c!379261)) b!2385029))

(assert (= (and d!697306 c!379260) b!2385027))

(assert (= (and d!697306 (not c!379260)) b!2385026))

(assert (= (and b!2385026 c!379262) b!2385025))

(assert (= (and b!2385026 (not c!379262)) b!2385024))

(assert (= (and b!2385024 (not res!1013082)) b!2385023))

(assert (= (and b!2385023 res!1013088) b!2385020))

(assert (= (and b!2385020 res!1013083) b!2385016))

(assert (= (and b!2385016 res!1013089) b!2385021))

(assert (= (and b!2385023 (not res!1013086)) b!2385028))

(assert (= (and b!2385028 res!1013084) b!2385022))

(assert (= (and b!2385022 (not res!1013087)) b!2385018))

(assert (= (and b!2385018 (not res!1013085)) b!2385017))

(assert (= (or b!2385027 b!2385020 b!2385022) bm!145031))

(assert (=> bm!145031 m!2787473))

(declare-fun m!2787529 () Bool)

(assert (=> b!2385029 m!2787529))

(assert (=> b!2385029 m!2787529))

(declare-fun m!2787531 () Bool)

(assert (=> b!2385029 m!2787531))

(declare-fun m!2787533 () Bool)

(assert (=> b!2385029 m!2787533))

(assert (=> b!2385029 m!2787531))

(assert (=> b!2385029 m!2787533))

(declare-fun m!2787535 () Bool)

(assert (=> b!2385029 m!2787535))

(assert (=> b!2385018 m!2787533))

(assert (=> b!2385018 m!2787533))

(declare-fun m!2787537 () Bool)

(assert (=> b!2385018 m!2787537))

(assert (=> b!2385016 m!2787533))

(assert (=> b!2385016 m!2787533))

(assert (=> b!2385016 m!2787537))

(assert (=> b!2385021 m!2787529))

(assert (=> d!697306 m!2787473))

(declare-fun m!2787539 () Bool)

(assert (=> d!697306 m!2787539))

(assert (=> b!2385017 m!2787529))

(declare-fun m!2787541 () Bool)

(assert (=> b!2385019 m!2787541))

(assert (=> b!2384725 d!697306))

(declare-fun d!697326 () Bool)

(assert (=> d!697326 (= (matchR!3108 r!13927 s!9460) (matchRSpec!840 r!13927 s!9460))))

(declare-fun lt!869245 () Unit!41081)

(declare-fun choose!13989 (Regex!6991 List!28220) Unit!41081)

(assert (=> d!697326 (= lt!869245 (choose!13989 r!13927 s!9460))))

(assert (=> d!697326 (validRegex!2716 r!13927)))

(assert (=> d!697326 (= (mainMatchTheorem!840 r!13927 s!9460) lt!869245)))

(declare-fun bs!462125 () Bool)

(assert (= bs!462125 d!697326))

(assert (=> bs!462125 m!2787369))

(assert (=> bs!462125 m!2787367))

(declare-fun m!2787543 () Bool)

(assert (=> bs!462125 m!2787543))

(assert (=> bs!462125 m!2787539))

(assert (=> b!2384725 d!697326))

(declare-fun d!697328 () Bool)

(declare-fun isEmpty!16085 (Option!5534) Bool)

(assert (=> d!697328 (= (isDefined!4362 (findConcatSeparation!642 (regOne!14494 r!13927) (regTwo!14494 r!13927) Nil!28122 s!9460 s!9460)) (not (isEmpty!16085 (findConcatSeparation!642 (regOne!14494 r!13927) (regTwo!14494 r!13927) Nil!28122 s!9460 s!9460))))))

(declare-fun bs!462126 () Bool)

(assert (= bs!462126 d!697328))

(assert (=> bs!462126 m!2787349))

(declare-fun m!2787559 () Bool)

(assert (=> bs!462126 m!2787559))

(assert (=> b!2384712 d!697328))

(declare-fun d!697334 () Bool)

(declare-fun choose!13990 (Int) Bool)

(assert (=> d!697334 (= (Exists!1053 lambda!88991) (choose!13990 lambda!88991))))

(declare-fun bs!462127 () Bool)

(assert (= bs!462127 d!697334))

(declare-fun m!2787561 () Bool)

(assert (=> bs!462127 m!2787561))

(assert (=> b!2384712 d!697334))

(declare-fun bs!462135 () Bool)

(declare-fun d!697336 () Bool)

(assert (= bs!462135 (and d!697336 b!2384712)))

(declare-fun lambda!89012 () Int)

(assert (=> bs!462135 (= lambda!89012 lambda!88990)))

(assert (=> bs!462135 (not (= lambda!89012 lambda!88991))))

(declare-fun bs!462136 () Bool)

(assert (= bs!462136 (and d!697336 b!2384889)))

(assert (=> bs!462136 (not (= lambda!89012 lambda!88996))))

(declare-fun bs!462137 () Bool)

(assert (= bs!462137 (and d!697336 b!2384887)))

(assert (=> bs!462137 (not (= lambda!89012 lambda!88997))))

(assert (=> d!697336 true))

(assert (=> d!697336 true))

(assert (=> d!697336 true))

(assert (=> d!697336 (= (isDefined!4362 (findConcatSeparation!642 (regOne!14494 r!13927) (regTwo!14494 r!13927) Nil!28122 s!9460 s!9460)) (Exists!1053 lambda!89012))))

(declare-fun lt!869258 () Unit!41081)

(declare-fun choose!13991 (Regex!6991 Regex!6991 List!28220) Unit!41081)

(assert (=> d!697336 (= lt!869258 (choose!13991 (regOne!14494 r!13927) (regTwo!14494 r!13927) s!9460))))

(assert (=> d!697336 (validRegex!2716 (regOne!14494 r!13927))))

(assert (=> d!697336 (= (lemmaFindConcatSeparationEquivalentToExists!642 (regOne!14494 r!13927) (regTwo!14494 r!13927) s!9460) lt!869258)))

(declare-fun bs!462138 () Bool)

(assert (= bs!462138 d!697336))

(declare-fun m!2787589 () Bool)

(assert (=> bs!462138 m!2787589))

(assert (=> bs!462138 m!2787349))

(assert (=> bs!462138 m!2787351))

(declare-fun m!2787591 () Bool)

(assert (=> bs!462138 m!2787591))

(declare-fun m!2787593 () Bool)

(assert (=> bs!462138 m!2787593))

(assert (=> bs!462138 m!2787349))

(assert (=> b!2384712 d!697336))

(declare-fun bs!462149 () Bool)

(declare-fun d!697348 () Bool)

(assert (= bs!462149 (and d!697348 b!2384889)))

(declare-fun lambda!89024 () Int)

(assert (=> bs!462149 (not (= lambda!89024 lambda!88996))))

(declare-fun bs!462150 () Bool)

(assert (= bs!462150 (and d!697348 b!2384712)))

(assert (=> bs!462150 (= lambda!89024 lambda!88990)))

(assert (=> bs!462150 (not (= lambda!89024 lambda!88991))))

(declare-fun bs!462151 () Bool)

(assert (= bs!462151 (and d!697348 d!697336)))

(assert (=> bs!462151 (= lambda!89024 lambda!89012)))

(declare-fun bs!462152 () Bool)

(assert (= bs!462152 (and d!697348 b!2384887)))

(assert (=> bs!462152 (not (= lambda!89024 lambda!88997))))

(assert (=> d!697348 true))

(assert (=> d!697348 true))

(assert (=> d!697348 true))

(declare-fun lambda!89025 () Int)

(assert (=> bs!462149 (not (= lambda!89025 lambda!88996))))

(assert (=> bs!462150 (not (= lambda!89025 lambda!88990))))

(declare-fun bs!462153 () Bool)

(assert (= bs!462153 d!697348))

(assert (=> bs!462153 (not (= lambda!89025 lambda!89024))))

(assert (=> bs!462150 (= lambda!89025 lambda!88991)))

(assert (=> bs!462151 (not (= lambda!89025 lambda!89012))))

(assert (=> bs!462152 (= lambda!89025 lambda!88997)))

(assert (=> d!697348 true))

(assert (=> d!697348 true))

(assert (=> d!697348 true))

(assert (=> d!697348 (= (Exists!1053 lambda!89024) (Exists!1053 lambda!89025))))

(declare-fun lt!869272 () Unit!41081)

(declare-fun choose!13993 (Regex!6991 Regex!6991 List!28220) Unit!41081)

(assert (=> d!697348 (= lt!869272 (choose!13993 (regOne!14494 r!13927) (regTwo!14494 r!13927) s!9460))))

(assert (=> d!697348 (validRegex!2716 (regOne!14494 r!13927))))

(assert (=> d!697348 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!392 (regOne!14494 r!13927) (regTwo!14494 r!13927) s!9460) lt!869272)))

(declare-fun m!2787669 () Bool)

(assert (=> bs!462153 m!2787669))

(declare-fun m!2787671 () Bool)

(assert (=> bs!462153 m!2787671))

(declare-fun m!2787673 () Bool)

(assert (=> bs!462153 m!2787673))

(assert (=> bs!462153 m!2787591))

(assert (=> b!2384712 d!697348))

(declare-fun b!2385195 () Bool)

(declare-fun res!1013166 () Bool)

(declare-fun e!1520973 () Bool)

(assert (=> b!2385195 (=> (not res!1013166) (not e!1520973))))

(declare-fun lt!869279 () Option!5534)

(assert (=> b!2385195 (= res!1013166 (matchR!3108 (regOne!14494 r!13927) (_1!16464 (get!8585 lt!869279))))))

(declare-fun b!2385196 () Bool)

(declare-fun e!1520974 () Option!5534)

(declare-fun e!1520975 () Option!5534)

(assert (=> b!2385196 (= e!1520974 e!1520975)))

(declare-fun c!379287 () Bool)

(assert (=> b!2385196 (= c!379287 ((_ is Nil!28122) s!9460))))

(declare-fun b!2385197 () Bool)

(declare-fun lt!869280 () Unit!41081)

(declare-fun lt!869281 () Unit!41081)

(assert (=> b!2385197 (= lt!869280 lt!869281)))

(assert (=> b!2385197 (= (++!6946 (++!6946 Nil!28122 (Cons!28122 (h!33523 s!9460) Nil!28122)) (t!208197 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!588 (List!28220 C!14140 List!28220 List!28220) Unit!41081)

(assert (=> b!2385197 (= lt!869281 (lemmaMoveElementToOtherListKeepsConcatEq!588 Nil!28122 (h!33523 s!9460) (t!208197 s!9460) s!9460))))

(assert (=> b!2385197 (= e!1520975 (findConcatSeparation!642 (regOne!14494 r!13927) (regTwo!14494 r!13927) (++!6946 Nil!28122 (Cons!28122 (h!33523 s!9460) Nil!28122)) (t!208197 s!9460) s!9460))))

(declare-fun b!2385198 () Bool)

(declare-fun e!1520972 () Bool)

(assert (=> b!2385198 (= e!1520972 (not (isDefined!4362 lt!869279)))))

(declare-fun b!2385199 () Bool)

(assert (=> b!2385199 (= e!1520974 (Some!5533 (tuple2!27847 Nil!28122 s!9460)))))

(declare-fun b!2385200 () Bool)

(declare-fun res!1013169 () Bool)

(assert (=> b!2385200 (=> (not res!1013169) (not e!1520973))))

(assert (=> b!2385200 (= res!1013169 (matchR!3108 (regTwo!14494 r!13927) (_2!16464 (get!8585 lt!869279))))))

(declare-fun b!2385201 () Bool)

(declare-fun e!1520976 () Bool)

(assert (=> b!2385201 (= e!1520976 (matchR!3108 (regTwo!14494 r!13927) s!9460))))

(declare-fun b!2385202 () Bool)

(assert (=> b!2385202 (= e!1520973 (= (++!6946 (_1!16464 (get!8585 lt!869279)) (_2!16464 (get!8585 lt!869279))) s!9460))))

(declare-fun b!2385203 () Bool)

(assert (=> b!2385203 (= e!1520975 None!5533)))

(declare-fun d!697364 () Bool)

(assert (=> d!697364 e!1520972))

(declare-fun res!1013167 () Bool)

(assert (=> d!697364 (=> res!1013167 e!1520972)))

(assert (=> d!697364 (= res!1013167 e!1520973)))

(declare-fun res!1013165 () Bool)

(assert (=> d!697364 (=> (not res!1013165) (not e!1520973))))

(assert (=> d!697364 (= res!1013165 (isDefined!4362 lt!869279))))

(assert (=> d!697364 (= lt!869279 e!1520974)))

(declare-fun c!379286 () Bool)

(assert (=> d!697364 (= c!379286 e!1520976)))

(declare-fun res!1013168 () Bool)

(assert (=> d!697364 (=> (not res!1013168) (not e!1520976))))

(assert (=> d!697364 (= res!1013168 (matchR!3108 (regOne!14494 r!13927) Nil!28122))))

(assert (=> d!697364 (validRegex!2716 (regOne!14494 r!13927))))

(assert (=> d!697364 (= (findConcatSeparation!642 (regOne!14494 r!13927) (regTwo!14494 r!13927) Nil!28122 s!9460 s!9460) lt!869279)))

(assert (= (and d!697364 res!1013168) b!2385201))

(assert (= (and d!697364 c!379286) b!2385199))

(assert (= (and d!697364 (not c!379286)) b!2385196))

(assert (= (and b!2385196 c!379287) b!2385203))

(assert (= (and b!2385196 (not c!379287)) b!2385197))

(assert (= (and d!697364 res!1013165) b!2385195))

(assert (= (and b!2385195 res!1013166) b!2385200))

(assert (= (and b!2385200 res!1013169) b!2385202))

(assert (= (and d!697364 (not res!1013167)) b!2385198))

(declare-fun m!2787675 () Bool)

(assert (=> b!2385197 m!2787675))

(assert (=> b!2385197 m!2787675))

(declare-fun m!2787677 () Bool)

(assert (=> b!2385197 m!2787677))

(declare-fun m!2787679 () Bool)

(assert (=> b!2385197 m!2787679))

(assert (=> b!2385197 m!2787675))

(declare-fun m!2787681 () Bool)

(assert (=> b!2385197 m!2787681))

(declare-fun m!2787683 () Bool)

(assert (=> b!2385198 m!2787683))

(declare-fun m!2787685 () Bool)

(assert (=> b!2385200 m!2787685))

(declare-fun m!2787687 () Bool)

(assert (=> b!2385200 m!2787687))

(declare-fun m!2787689 () Bool)

(assert (=> b!2385201 m!2787689))

(assert (=> b!2385195 m!2787685))

(declare-fun m!2787691 () Bool)

(assert (=> b!2385195 m!2787691))

(assert (=> d!697364 m!2787683))

(declare-fun m!2787693 () Bool)

(assert (=> d!697364 m!2787693))

(assert (=> d!697364 m!2787591))

(assert (=> b!2385202 m!2787685))

(declare-fun m!2787695 () Bool)

(assert (=> b!2385202 m!2787695))

(assert (=> b!2384712 d!697364))

(declare-fun d!697366 () Bool)

(assert (=> d!697366 (= (Exists!1053 lambda!88990) (choose!13990 lambda!88990))))

(declare-fun bs!462154 () Bool)

(assert (= bs!462154 d!697366))

(declare-fun m!2787697 () Bool)

(assert (=> bs!462154 m!2787697))

(assert (=> b!2384712 d!697366))

(declare-fun d!697368 () Bool)

(assert (=> d!697368 (matchR!3108 (Concat!11627 lt!869208 EmptyExpr!6991) (++!6946 s!9460 Nil!28122))))

(declare-fun lt!869284 () Unit!41081)

(declare-fun choose!13996 (Regex!6991 Regex!6991 List!28220 List!28220) Unit!41081)

(assert (=> d!697368 (= lt!869284 (choose!13996 lt!869208 EmptyExpr!6991 s!9460 Nil!28122))))

(declare-fun e!1520979 () Bool)

(assert (=> d!697368 e!1520979))

(declare-fun res!1013172 () Bool)

(assert (=> d!697368 (=> (not res!1013172) (not e!1520979))))

(assert (=> d!697368 (= res!1013172 (validRegex!2716 lt!869208))))

(assert (=> d!697368 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!40 lt!869208 EmptyExpr!6991 s!9460 Nil!28122) lt!869284)))

(declare-fun b!2385206 () Bool)

(assert (=> b!2385206 (= e!1520979 (validRegex!2716 EmptyExpr!6991))))

(assert (= (and d!697368 res!1013172) b!2385206))

(declare-fun m!2787699 () Bool)

(assert (=> d!697368 m!2787699))

(assert (=> d!697368 m!2787699))

(declare-fun m!2787701 () Bool)

(assert (=> d!697368 m!2787701))

(declare-fun m!2787703 () Bool)

(assert (=> d!697368 m!2787703))

(assert (=> d!697368 m!2787379))

(declare-fun m!2787705 () Bool)

(assert (=> b!2385206 m!2787705))

(assert (=> b!2384720 d!697368))

(declare-fun b!2385207 () Bool)

(declare-fun res!1013180 () Bool)

(declare-fun e!1520986 () Bool)

(assert (=> b!2385207 (=> (not res!1013180) (not e!1520986))))

(assert (=> b!2385207 (= res!1013180 (isEmpty!16083 (tail!3486 call!145007)))))

(declare-fun b!2385208 () Bool)

(declare-fun e!1520980 () Bool)

(assert (=> b!2385208 (= e!1520980 (not (= (head!5216 call!145007) (c!379189 lt!869207))))))

(declare-fun b!2385209 () Bool)

(declare-fun res!1013176 () Bool)

(assert (=> b!2385209 (=> res!1013176 e!1520980)))

(assert (=> b!2385209 (= res!1013176 (not (isEmpty!16083 (tail!3486 call!145007))))))

(declare-fun b!2385210 () Bool)

(declare-fun e!1520981 () Bool)

(assert (=> b!2385210 (= e!1520981 (nullable!2041 lt!869207))))

(declare-fun b!2385211 () Bool)

(declare-fun res!1013174 () Bool)

(assert (=> b!2385211 (=> (not res!1013174) (not e!1520986))))

(declare-fun call!145044 () Bool)

(assert (=> b!2385211 (= res!1013174 (not call!145044))))

(declare-fun b!2385212 () Bool)

(assert (=> b!2385212 (= e!1520986 (= (head!5216 call!145007) (c!379189 lt!869207)))))

(declare-fun b!2385213 () Bool)

(declare-fun e!1520982 () Bool)

(assert (=> b!2385213 (= e!1520982 e!1520980)))

(declare-fun res!1013178 () Bool)

(assert (=> b!2385213 (=> res!1013178 e!1520980)))

(assert (=> b!2385213 (= res!1013178 call!145044)))

(declare-fun bm!145039 () Bool)

(assert (=> bm!145039 (= call!145044 (isEmpty!16083 call!145007))))

(declare-fun b!2385214 () Bool)

(declare-fun res!1013177 () Bool)

(declare-fun e!1520984 () Bool)

(assert (=> b!2385214 (=> res!1013177 e!1520984)))

(assert (=> b!2385214 (= res!1013177 e!1520986)))

(declare-fun res!1013179 () Bool)

(assert (=> b!2385214 (=> (not res!1013179) (not e!1520986))))

(declare-fun lt!869285 () Bool)

(assert (=> b!2385214 (= res!1013179 lt!869285)))

(declare-fun b!2385215 () Bool)

(declare-fun res!1013173 () Bool)

(assert (=> b!2385215 (=> res!1013173 e!1520984)))

(assert (=> b!2385215 (= res!1013173 (not ((_ is ElementMatch!6991) lt!869207)))))

(declare-fun e!1520985 () Bool)

(assert (=> b!2385215 (= e!1520985 e!1520984)))

(declare-fun b!2385216 () Bool)

(assert (=> b!2385216 (= e!1520985 (not lt!869285))))

(declare-fun b!2385217 () Bool)

(declare-fun e!1520983 () Bool)

(assert (=> b!2385217 (= e!1520983 e!1520985)))

(declare-fun c!379290 () Bool)

(assert (=> b!2385217 (= c!379290 ((_ is EmptyLang!6991) lt!869207))))

(declare-fun b!2385218 () Bool)

(assert (=> b!2385218 (= e!1520983 (= lt!869285 call!145044))))

(declare-fun d!697370 () Bool)

(assert (=> d!697370 e!1520983))

(declare-fun c!379288 () Bool)

(assert (=> d!697370 (= c!379288 ((_ is EmptyExpr!6991) lt!869207))))

(assert (=> d!697370 (= lt!869285 e!1520981)))

(declare-fun c!379289 () Bool)

(assert (=> d!697370 (= c!379289 (isEmpty!16083 call!145007))))

(assert (=> d!697370 (validRegex!2716 lt!869207)))

(assert (=> d!697370 (= (matchR!3108 lt!869207 call!145007) lt!869285)))

(declare-fun b!2385219 () Bool)

(assert (=> b!2385219 (= e!1520984 e!1520982)))

(declare-fun res!1013175 () Bool)

(assert (=> b!2385219 (=> (not res!1013175) (not e!1520982))))

(assert (=> b!2385219 (= res!1013175 (not lt!869285))))

(declare-fun b!2385220 () Bool)

(assert (=> b!2385220 (= e!1520981 (matchR!3108 (derivativeStep!1699 lt!869207 (head!5216 call!145007)) (tail!3486 call!145007)))))

(assert (= (and d!697370 c!379289) b!2385210))

(assert (= (and d!697370 (not c!379289)) b!2385220))

(assert (= (and d!697370 c!379288) b!2385218))

(assert (= (and d!697370 (not c!379288)) b!2385217))

(assert (= (and b!2385217 c!379290) b!2385216))

(assert (= (and b!2385217 (not c!379290)) b!2385215))

(assert (= (and b!2385215 (not res!1013173)) b!2385214))

(assert (= (and b!2385214 res!1013179) b!2385211))

(assert (= (and b!2385211 res!1013174) b!2385207))

(assert (= (and b!2385207 res!1013180) b!2385212))

(assert (= (and b!2385214 (not res!1013177)) b!2385219))

(assert (= (and b!2385219 res!1013175) b!2385213))

(assert (= (and b!2385213 (not res!1013178)) b!2385209))

(assert (= (and b!2385209 (not res!1013176)) b!2385208))

(assert (= (or b!2385218 b!2385211 b!2385213) bm!145039))

(declare-fun m!2787707 () Bool)

(assert (=> bm!145039 m!2787707))

(declare-fun m!2787709 () Bool)

(assert (=> b!2385220 m!2787709))

(assert (=> b!2385220 m!2787709))

(declare-fun m!2787711 () Bool)

(assert (=> b!2385220 m!2787711))

(declare-fun m!2787713 () Bool)

(assert (=> b!2385220 m!2787713))

(assert (=> b!2385220 m!2787711))

(assert (=> b!2385220 m!2787713))

(declare-fun m!2787715 () Bool)

(assert (=> b!2385220 m!2787715))

(assert (=> b!2385209 m!2787713))

(assert (=> b!2385209 m!2787713))

(declare-fun m!2787717 () Bool)

(assert (=> b!2385209 m!2787717))

(assert (=> b!2385207 m!2787713))

(assert (=> b!2385207 m!2787713))

(assert (=> b!2385207 m!2787717))

(assert (=> b!2385212 m!2787709))

(assert (=> d!697370 m!2787707))

(declare-fun m!2787719 () Bool)

(assert (=> d!697370 m!2787719))

(assert (=> b!2385208 m!2787709))

(declare-fun m!2787721 () Bool)

(assert (=> b!2385210 m!2787721))

(assert (=> b!2384720 d!697370))

(declare-fun d!697372 () Bool)

(assert (=> d!697372 (isDefined!4362 (findConcatSeparation!642 lt!869208 EmptyExpr!6991 Nil!28122 s!9460 s!9460))))

(declare-fun lt!869288 () Unit!41081)

(declare-fun choose!13998 (Regex!6991 Regex!6991 List!28220) Unit!41081)

(assert (=> d!697372 (= lt!869288 (choose!13998 lt!869208 EmptyExpr!6991 s!9460))))

(assert (=> d!697372 (validRegex!2716 lt!869208)))

(assert (=> d!697372 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!22 lt!869208 EmptyExpr!6991 s!9460) lt!869288)))

(declare-fun bs!462155 () Bool)

(assert (= bs!462155 d!697372))

(assert (=> bs!462155 m!2787385))

(assert (=> bs!462155 m!2787385))

(declare-fun m!2787723 () Bool)

(assert (=> bs!462155 m!2787723))

(declare-fun m!2787725 () Bool)

(assert (=> bs!462155 m!2787725))

(assert (=> bs!462155 m!2787379))

(assert (=> b!2384720 d!697372))

(declare-fun b!2385221 () Bool)

(declare-fun res!1013182 () Bool)

(declare-fun e!1520988 () Bool)

(assert (=> b!2385221 (=> (not res!1013182) (not e!1520988))))

(declare-fun lt!869289 () Option!5534)

(assert (=> b!2385221 (= res!1013182 (matchR!3108 lt!869208 (_1!16464 (get!8585 lt!869289))))))

(declare-fun b!2385222 () Bool)

(declare-fun e!1520989 () Option!5534)

(declare-fun e!1520990 () Option!5534)

(assert (=> b!2385222 (= e!1520989 e!1520990)))

(declare-fun c!379292 () Bool)

(assert (=> b!2385222 (= c!379292 ((_ is Nil!28122) s!9460))))

(declare-fun b!2385223 () Bool)

(declare-fun lt!869290 () Unit!41081)

(declare-fun lt!869291 () Unit!41081)

(assert (=> b!2385223 (= lt!869290 lt!869291)))

(assert (=> b!2385223 (= (++!6946 (++!6946 Nil!28122 (Cons!28122 (h!33523 s!9460) Nil!28122)) (t!208197 s!9460)) s!9460)))

(assert (=> b!2385223 (= lt!869291 (lemmaMoveElementToOtherListKeepsConcatEq!588 Nil!28122 (h!33523 s!9460) (t!208197 s!9460) s!9460))))

(assert (=> b!2385223 (= e!1520990 (findConcatSeparation!642 lt!869208 EmptyExpr!6991 (++!6946 Nil!28122 (Cons!28122 (h!33523 s!9460) Nil!28122)) (t!208197 s!9460) s!9460))))

(declare-fun b!2385224 () Bool)

(declare-fun e!1520987 () Bool)

(assert (=> b!2385224 (= e!1520987 (not (isDefined!4362 lt!869289)))))

(declare-fun b!2385225 () Bool)

(assert (=> b!2385225 (= e!1520989 (Some!5533 (tuple2!27847 Nil!28122 s!9460)))))

(declare-fun b!2385226 () Bool)

(declare-fun res!1013185 () Bool)

(assert (=> b!2385226 (=> (not res!1013185) (not e!1520988))))

(assert (=> b!2385226 (= res!1013185 (matchR!3108 EmptyExpr!6991 (_2!16464 (get!8585 lt!869289))))))

(declare-fun b!2385227 () Bool)

(declare-fun e!1520991 () Bool)

(assert (=> b!2385227 (= e!1520991 (matchR!3108 EmptyExpr!6991 s!9460))))

(declare-fun b!2385228 () Bool)

(assert (=> b!2385228 (= e!1520988 (= (++!6946 (_1!16464 (get!8585 lt!869289)) (_2!16464 (get!8585 lt!869289))) s!9460))))

(declare-fun b!2385229 () Bool)

(assert (=> b!2385229 (= e!1520990 None!5533)))

(declare-fun d!697374 () Bool)

(assert (=> d!697374 e!1520987))

(declare-fun res!1013183 () Bool)

(assert (=> d!697374 (=> res!1013183 e!1520987)))

(assert (=> d!697374 (= res!1013183 e!1520988)))

(declare-fun res!1013181 () Bool)

(assert (=> d!697374 (=> (not res!1013181) (not e!1520988))))

(assert (=> d!697374 (= res!1013181 (isDefined!4362 lt!869289))))

(assert (=> d!697374 (= lt!869289 e!1520989)))

(declare-fun c!379291 () Bool)

(assert (=> d!697374 (= c!379291 e!1520991)))

(declare-fun res!1013184 () Bool)

(assert (=> d!697374 (=> (not res!1013184) (not e!1520991))))

(assert (=> d!697374 (= res!1013184 (matchR!3108 lt!869208 Nil!28122))))

(assert (=> d!697374 (validRegex!2716 lt!869208)))

(assert (=> d!697374 (= (findConcatSeparation!642 lt!869208 EmptyExpr!6991 Nil!28122 s!9460 s!9460) lt!869289)))

(assert (= (and d!697374 res!1013184) b!2385227))

(assert (= (and d!697374 c!379291) b!2385225))

(assert (= (and d!697374 (not c!379291)) b!2385222))

(assert (= (and b!2385222 c!379292) b!2385229))

(assert (= (and b!2385222 (not c!379292)) b!2385223))

(assert (= (and d!697374 res!1013181) b!2385221))

(assert (= (and b!2385221 res!1013182) b!2385226))

(assert (= (and b!2385226 res!1013185) b!2385228))

(assert (= (and d!697374 (not res!1013183)) b!2385224))

(assert (=> b!2385223 m!2787675))

(assert (=> b!2385223 m!2787675))

(assert (=> b!2385223 m!2787677))

(assert (=> b!2385223 m!2787679))

(assert (=> b!2385223 m!2787675))

(declare-fun m!2787727 () Bool)

(assert (=> b!2385223 m!2787727))

(declare-fun m!2787729 () Bool)

(assert (=> b!2385224 m!2787729))

(declare-fun m!2787731 () Bool)

(assert (=> b!2385226 m!2787731))

(declare-fun m!2787733 () Bool)

(assert (=> b!2385226 m!2787733))

(declare-fun m!2787735 () Bool)

(assert (=> b!2385227 m!2787735))

(assert (=> b!2385221 m!2787731))

(declare-fun m!2787737 () Bool)

(assert (=> b!2385221 m!2787737))

(assert (=> d!697374 m!2787729))

(declare-fun m!2787739 () Bool)

(assert (=> d!697374 m!2787739))

(assert (=> d!697374 m!2787379))

(assert (=> b!2385228 m!2787731))

(declare-fun m!2787741 () Bool)

(assert (=> b!2385228 m!2787741))

(assert (=> bm!145005 d!697374))

(declare-fun d!697376 () Bool)

(assert (=> d!697376 (matchR!3108 (Concat!11627 lt!869208 EmptyExpr!6991) (++!6946 (_1!16464 lt!869199) (_2!16464 lt!869199)))))

(declare-fun lt!869294 () Unit!41081)

(declare-fun choose!13999 (Regex!6991 Regex!6991 List!28220 List!28220 List!28220) Unit!41081)

(assert (=> d!697376 (= lt!869294 (choose!13999 lt!869208 EmptyExpr!6991 (_1!16464 lt!869199) (_2!16464 lt!869199) s!9460))))

(assert (=> d!697376 (validRegex!2716 lt!869208)))

(assert (=> d!697376 (= (lemmaFindSeparationIsDefinedThenConcatMatches!22 lt!869208 EmptyExpr!6991 (_1!16464 lt!869199) (_2!16464 lt!869199) s!9460) lt!869294)))

(declare-fun bs!462156 () Bool)

(assert (= bs!462156 d!697376))

(declare-fun m!2787743 () Bool)

(assert (=> bs!462156 m!2787743))

(assert (=> bs!462156 m!2787743))

(declare-fun m!2787745 () Bool)

(assert (=> bs!462156 m!2787745))

(declare-fun m!2787747 () Bool)

(assert (=> bs!462156 m!2787747))

(assert (=> bs!462156 m!2787379))

(assert (=> b!2384718 d!697376))

(declare-fun d!697378 () Bool)

(assert (=> d!697378 (= (get!8585 lt!869195) (v!30941 lt!869195))))

(assert (=> b!2384718 d!697378))

(declare-fun d!697380 () Bool)

(declare-fun res!1013190 () Bool)

(declare-fun e!1520996 () Bool)

(assert (=> d!697380 (=> res!1013190 e!1520996)))

(assert (=> d!697380 (= res!1013190 ((_ is Nil!28123) l!9164))))

(assert (=> d!697380 (= (forall!5625 l!9164 lambda!88989) e!1520996)))

(declare-fun b!2385234 () Bool)

(declare-fun e!1520997 () Bool)

(assert (=> b!2385234 (= e!1520996 e!1520997)))

(declare-fun res!1013191 () Bool)

(assert (=> b!2385234 (=> (not res!1013191) (not e!1520997))))

(declare-fun dynLambda!12108 (Int Regex!6991) Bool)

(assert (=> b!2385234 (= res!1013191 (dynLambda!12108 lambda!88989 (h!33524 l!9164)))))

(declare-fun b!2385235 () Bool)

(assert (=> b!2385235 (= e!1520997 (forall!5625 (t!208198 l!9164) lambda!88989))))

(assert (= (and d!697380 (not res!1013190)) b!2385234))

(assert (= (and b!2385234 res!1013191) b!2385235))

(declare-fun b_lambda!74111 () Bool)

(assert (=> (not b_lambda!74111) (not b!2385234)))

(declare-fun m!2787749 () Bool)

(assert (=> b!2385234 m!2787749))

(declare-fun m!2787751 () Bool)

(assert (=> b!2385235 m!2787751))

(assert (=> start!234004 d!697380))

(declare-fun bs!462157 () Bool)

(declare-fun d!697382 () Bool)

(assert (= bs!462157 (and d!697382 start!234004)))

(declare-fun lambda!89028 () Int)

(assert (=> bs!462157 (= lambda!89028 lambda!88989)))

(declare-fun b!2385256 () Bool)

(declare-fun e!1521013 () Regex!6991)

(assert (=> b!2385256 (= e!1521013 (Concat!11627 (h!33524 lt!869198) (generalisedConcat!92 (t!208198 lt!869198))))))

(declare-fun b!2385257 () Bool)

(declare-fun e!1521012 () Bool)

(declare-fun e!1521014 () Bool)

(assert (=> b!2385257 (= e!1521012 e!1521014)))

(declare-fun c!379304 () Bool)

(assert (=> b!2385257 (= c!379304 (isEmpty!16081 lt!869198))))

(declare-fun b!2385259 () Bool)

(declare-fun e!1521015 () Bool)

(assert (=> b!2385259 (= e!1521014 e!1521015)))

(declare-fun c!379301 () Bool)

(assert (=> b!2385259 (= c!379301 (isEmpty!16081 (tail!3484 lt!869198)))))

(declare-fun b!2385260 () Bool)

(declare-fun lt!869297 () Regex!6991)

(declare-fun isEmptyExpr!61 (Regex!6991) Bool)

(assert (=> b!2385260 (= e!1521014 (isEmptyExpr!61 lt!869297))))

(declare-fun b!2385261 () Bool)

(assert (=> b!2385261 (= e!1521015 (= lt!869297 (head!5214 lt!869198)))))

(declare-fun b!2385262 () Bool)

(declare-fun e!1521011 () Regex!6991)

(assert (=> b!2385262 (= e!1521011 (h!33524 lt!869198))))

(declare-fun b!2385263 () Bool)

(declare-fun e!1521010 () Bool)

(assert (=> b!2385263 (= e!1521010 (isEmpty!16081 (t!208198 lt!869198)))))

(declare-fun b!2385264 () Bool)

(assert (=> b!2385264 (= e!1521013 EmptyExpr!6991)))

(declare-fun b!2385265 () Bool)

(assert (=> b!2385265 (= e!1521011 e!1521013)))

(declare-fun c!379302 () Bool)

(assert (=> b!2385265 (= c!379302 ((_ is Cons!28123) lt!869198))))

(declare-fun b!2385258 () Bool)

(declare-fun isConcat!61 (Regex!6991) Bool)

(assert (=> b!2385258 (= e!1521015 (isConcat!61 lt!869297))))

(assert (=> d!697382 e!1521012))

(declare-fun res!1013196 () Bool)

(assert (=> d!697382 (=> (not res!1013196) (not e!1521012))))

(assert (=> d!697382 (= res!1013196 (validRegex!2716 lt!869297))))

(assert (=> d!697382 (= lt!869297 e!1521011)))

(declare-fun c!379303 () Bool)

(assert (=> d!697382 (= c!379303 e!1521010)))

(declare-fun res!1013197 () Bool)

(assert (=> d!697382 (=> (not res!1013197) (not e!1521010))))

(assert (=> d!697382 (= res!1013197 ((_ is Cons!28123) lt!869198))))

(assert (=> d!697382 (forall!5625 lt!869198 lambda!89028)))

(assert (=> d!697382 (= (generalisedConcat!92 lt!869198) lt!869297)))

(assert (= (and d!697382 res!1013197) b!2385263))

(assert (= (and d!697382 c!379303) b!2385262))

(assert (= (and d!697382 (not c!379303)) b!2385265))

(assert (= (and b!2385265 c!379302) b!2385256))

(assert (= (and b!2385265 (not c!379302)) b!2385264))

(assert (= (and d!697382 res!1013196) b!2385257))

(assert (= (and b!2385257 c!379304) b!2385260))

(assert (= (and b!2385257 (not c!379304)) b!2385259))

(assert (= (and b!2385259 c!379301) b!2385261))

(assert (= (and b!2385259 (not c!379301)) b!2385258))

(declare-fun m!2787753 () Bool)

(assert (=> b!2385260 m!2787753))

(declare-fun m!2787755 () Bool)

(assert (=> b!2385261 m!2787755))

(declare-fun m!2787757 () Bool)

(assert (=> d!697382 m!2787757))

(declare-fun m!2787759 () Bool)

(assert (=> d!697382 m!2787759))

(declare-fun m!2787761 () Bool)

(assert (=> b!2385263 m!2787761))

(declare-fun m!2787763 () Bool)

(assert (=> b!2385259 m!2787763))

(assert (=> b!2385259 m!2787763))

(declare-fun m!2787765 () Bool)

(assert (=> b!2385259 m!2787765))

(declare-fun m!2787767 () Bool)

(assert (=> b!2385256 m!2787767))

(declare-fun m!2787769 () Bool)

(assert (=> b!2385258 m!2787769))

(assert (=> b!2385257 m!2787327))

(assert (=> b!2384719 d!697382))

(declare-fun bm!145046 () Bool)

(declare-fun call!145052 () Bool)

(declare-fun call!145053 () Bool)

(assert (=> bm!145046 (= call!145052 call!145053)))

(declare-fun b!2385284 () Bool)

(declare-fun res!1013208 () Bool)

(declare-fun e!1521035 () Bool)

(assert (=> b!2385284 (=> (not res!1013208) (not e!1521035))))

(assert (=> b!2385284 (= res!1013208 call!145052)))

(declare-fun e!1521034 () Bool)

(assert (=> b!2385284 (= e!1521034 e!1521035)))

(declare-fun d!697384 () Bool)

(declare-fun res!1013210 () Bool)

(declare-fun e!1521032 () Bool)

(assert (=> d!697384 (=> res!1013210 e!1521032)))

(assert (=> d!697384 (= res!1013210 ((_ is ElementMatch!6991) lt!869200))))

(assert (=> d!697384 (= (validRegex!2716 lt!869200) e!1521032)))

(declare-fun b!2385285 () Bool)

(declare-fun e!1521031 () Bool)

(declare-fun e!1521033 () Bool)

(assert (=> b!2385285 (= e!1521031 e!1521033)))

(declare-fun res!1013211 () Bool)

(assert (=> b!2385285 (= res!1013211 (not (nullable!2041 (reg!7320 lt!869200))))))

(assert (=> b!2385285 (=> (not res!1013211) (not e!1521033))))

(declare-fun b!2385286 () Bool)

(declare-fun e!1521030 () Bool)

(declare-fun e!1521036 () Bool)

(assert (=> b!2385286 (= e!1521030 e!1521036)))

(declare-fun res!1013212 () Bool)

(assert (=> b!2385286 (=> (not res!1013212) (not e!1521036))))

(declare-fun call!145051 () Bool)

(assert (=> b!2385286 (= res!1013212 call!145051)))

(declare-fun b!2385287 () Bool)

(assert (=> b!2385287 (= e!1521035 call!145051)))

(declare-fun b!2385288 () Bool)

(assert (=> b!2385288 (= e!1521031 e!1521034)))

(declare-fun c!379310 () Bool)

(assert (=> b!2385288 (= c!379310 ((_ is Union!6991) lt!869200))))

(declare-fun c!379309 () Bool)

(declare-fun bm!145047 () Bool)

(assert (=> bm!145047 (= call!145053 (validRegex!2716 (ite c!379309 (reg!7320 lt!869200) (ite c!379310 (regOne!14495 lt!869200) (regTwo!14494 lt!869200)))))))

(declare-fun b!2385289 () Bool)

(declare-fun res!1013209 () Bool)

(assert (=> b!2385289 (=> res!1013209 e!1521030)))

(assert (=> b!2385289 (= res!1013209 (not ((_ is Concat!11627) lt!869200)))))

(assert (=> b!2385289 (= e!1521034 e!1521030)))

(declare-fun bm!145048 () Bool)

(assert (=> bm!145048 (= call!145051 (validRegex!2716 (ite c!379310 (regTwo!14495 lt!869200) (regOne!14494 lt!869200))))))

(declare-fun b!2385290 () Bool)

(assert (=> b!2385290 (= e!1521032 e!1521031)))

(assert (=> b!2385290 (= c!379309 ((_ is Star!6991) lt!869200))))

(declare-fun b!2385291 () Bool)

(assert (=> b!2385291 (= e!1521033 call!145053)))

(declare-fun b!2385292 () Bool)

(assert (=> b!2385292 (= e!1521036 call!145052)))

(assert (= (and d!697384 (not res!1013210)) b!2385290))

(assert (= (and b!2385290 c!379309) b!2385285))

(assert (= (and b!2385290 (not c!379309)) b!2385288))

(assert (= (and b!2385285 res!1013211) b!2385291))

(assert (= (and b!2385288 c!379310) b!2385284))

(assert (= (and b!2385288 (not c!379310)) b!2385289))

(assert (= (and b!2385284 res!1013208) b!2385287))

(assert (= (and b!2385289 (not res!1013209)) b!2385286))

(assert (= (and b!2385286 res!1013212) b!2385292))

(assert (= (or b!2385284 b!2385292) bm!145046))

(assert (= (or b!2385287 b!2385286) bm!145048))

(assert (= (or b!2385291 bm!145046) bm!145047))

(declare-fun m!2787771 () Bool)

(assert (=> b!2385285 m!2787771))

(declare-fun m!2787773 () Bool)

(assert (=> bm!145047 m!2787773))

(declare-fun m!2787775 () Bool)

(assert (=> bm!145048 m!2787775))

(assert (=> b!2384721 d!697384))

(declare-fun d!697386 () Bool)

(assert (=> d!697386 (= (isDefined!4362 (ite c!379187 call!145006 lt!869195)) (not (isEmpty!16085 (ite c!379187 call!145006 lt!869195))))))

(declare-fun bs!462158 () Bool)

(assert (= bs!462158 d!697386))

(declare-fun m!2787777 () Bool)

(assert (=> bs!462158 m!2787777))

(assert (=> bm!145004 d!697386))

(declare-fun d!697388 () Bool)

(assert (=> d!697388 (= (isDefined!4362 call!145009) (not (isEmpty!16085 call!145009)))))

(declare-fun bs!462159 () Bool)

(assert (= bs!462159 d!697388))

(declare-fun m!2787779 () Bool)

(assert (=> bs!462159 m!2787779))

(assert (=> bm!145003 d!697388))

(declare-fun d!697390 () Bool)

(declare-fun e!1521038 () Bool)

(assert (=> d!697390 e!1521038))

(declare-fun res!1013213 () Bool)

(assert (=> d!697390 (=> (not res!1013213) (not e!1521038))))

(declare-fun lt!869298 () List!28220)

(assert (=> d!697390 (= res!1013213 (= (content!3838 lt!869298) ((_ map or) (content!3838 Nil!28122) (content!3838 s!9460))))))

(declare-fun e!1521037 () List!28220)

(assert (=> d!697390 (= lt!869298 e!1521037)))

(declare-fun c!379311 () Bool)

(assert (=> d!697390 (= c!379311 ((_ is Nil!28122) Nil!28122))))

(assert (=> d!697390 (= (++!6946 Nil!28122 s!9460) lt!869298)))

(declare-fun b!2385294 () Bool)

(assert (=> b!2385294 (= e!1521037 (Cons!28122 (h!33523 Nil!28122) (++!6946 (t!208197 Nil!28122) s!9460)))))

(declare-fun b!2385293 () Bool)

(assert (=> b!2385293 (= e!1521037 s!9460)))

(declare-fun b!2385296 () Bool)

(assert (=> b!2385296 (= e!1521038 (or (not (= s!9460 Nil!28122)) (= lt!869298 Nil!28122)))))

(declare-fun b!2385295 () Bool)

(declare-fun res!1013214 () Bool)

(assert (=> b!2385295 (=> (not res!1013214) (not e!1521038))))

(assert (=> b!2385295 (= res!1013214 (= (size!22176 lt!869298) (+ (size!22176 Nil!28122) (size!22176 s!9460))))))

(assert (= (and d!697390 c!379311) b!2385293))

(assert (= (and d!697390 (not c!379311)) b!2385294))

(assert (= (and d!697390 res!1013213) b!2385295))

(assert (= (and b!2385295 res!1013214) b!2385296))

(declare-fun m!2787781 () Bool)

(assert (=> d!697390 m!2787781))

(declare-fun m!2787783 () Bool)

(assert (=> d!697390 m!2787783))

(declare-fun m!2787785 () Bool)

(assert (=> d!697390 m!2787785))

(declare-fun m!2787787 () Bool)

(assert (=> b!2385294 m!2787787))

(declare-fun m!2787789 () Bool)

(assert (=> b!2385295 m!2787789))

(declare-fun m!2787791 () Bool)

(assert (=> b!2385295 m!2787791))

(declare-fun m!2787793 () Bool)

(assert (=> b!2385295 m!2787793))

(assert (=> b!2384729 d!697390))

(declare-fun bm!145049 () Bool)

(declare-fun call!145055 () Bool)

(declare-fun call!145056 () Bool)

(assert (=> bm!145049 (= call!145055 call!145056)))

(declare-fun b!2385297 () Bool)

(declare-fun res!1013215 () Bool)

(declare-fun e!1521044 () Bool)

(assert (=> b!2385297 (=> (not res!1013215) (not e!1521044))))

(assert (=> b!2385297 (= res!1013215 call!145055)))

(declare-fun e!1521043 () Bool)

(assert (=> b!2385297 (= e!1521043 e!1521044)))

(declare-fun d!697392 () Bool)

(declare-fun res!1013217 () Bool)

(declare-fun e!1521041 () Bool)

(assert (=> d!697392 (=> res!1013217 e!1521041)))

(assert (=> d!697392 (= res!1013217 ((_ is ElementMatch!6991) lt!869208))))

(assert (=> d!697392 (= (validRegex!2716 lt!869208) e!1521041)))

(declare-fun b!2385298 () Bool)

(declare-fun e!1521040 () Bool)

(declare-fun e!1521042 () Bool)

(assert (=> b!2385298 (= e!1521040 e!1521042)))

(declare-fun res!1013218 () Bool)

(assert (=> b!2385298 (= res!1013218 (not (nullable!2041 (reg!7320 lt!869208))))))

(assert (=> b!2385298 (=> (not res!1013218) (not e!1521042))))

(declare-fun b!2385299 () Bool)

(declare-fun e!1521039 () Bool)

(declare-fun e!1521045 () Bool)

(assert (=> b!2385299 (= e!1521039 e!1521045)))

(declare-fun res!1013219 () Bool)

(assert (=> b!2385299 (=> (not res!1013219) (not e!1521045))))

(declare-fun call!145054 () Bool)

(assert (=> b!2385299 (= res!1013219 call!145054)))

(declare-fun b!2385300 () Bool)

(assert (=> b!2385300 (= e!1521044 call!145054)))

(declare-fun b!2385301 () Bool)

(assert (=> b!2385301 (= e!1521040 e!1521043)))

(declare-fun c!379313 () Bool)

(assert (=> b!2385301 (= c!379313 ((_ is Union!6991) lt!869208))))

(declare-fun c!379312 () Bool)

(declare-fun bm!145050 () Bool)

(assert (=> bm!145050 (= call!145056 (validRegex!2716 (ite c!379312 (reg!7320 lt!869208) (ite c!379313 (regOne!14495 lt!869208) (regTwo!14494 lt!869208)))))))

(declare-fun b!2385302 () Bool)

(declare-fun res!1013216 () Bool)

(assert (=> b!2385302 (=> res!1013216 e!1521039)))

(assert (=> b!2385302 (= res!1013216 (not ((_ is Concat!11627) lt!869208)))))

(assert (=> b!2385302 (= e!1521043 e!1521039)))

(declare-fun bm!145051 () Bool)

(assert (=> bm!145051 (= call!145054 (validRegex!2716 (ite c!379313 (regTwo!14495 lt!869208) (regOne!14494 lt!869208))))))

(declare-fun b!2385303 () Bool)

(assert (=> b!2385303 (= e!1521041 e!1521040)))

(assert (=> b!2385303 (= c!379312 ((_ is Star!6991) lt!869208))))

(declare-fun b!2385304 () Bool)

(assert (=> b!2385304 (= e!1521042 call!145056)))

(declare-fun b!2385305 () Bool)

(assert (=> b!2385305 (= e!1521045 call!145055)))

(assert (= (and d!697392 (not res!1013217)) b!2385303))

(assert (= (and b!2385303 c!379312) b!2385298))

(assert (= (and b!2385303 (not c!379312)) b!2385301))

(assert (= (and b!2385298 res!1013218) b!2385304))

(assert (= (and b!2385301 c!379313) b!2385297))

(assert (= (and b!2385301 (not c!379313)) b!2385302))

(assert (= (and b!2385297 res!1013215) b!2385300))

(assert (= (and b!2385302 (not res!1013216)) b!2385299))

(assert (= (and b!2385299 res!1013219) b!2385305))

(assert (= (or b!2385297 b!2385305) bm!145049))

(assert (= (or b!2385300 b!2385299) bm!145051))

(assert (= (or b!2385304 bm!145049) bm!145050))

(declare-fun m!2787795 () Bool)

(assert (=> b!2385298 m!2787795))

(declare-fun m!2787797 () Bool)

(assert (=> bm!145050 m!2787797))

(declare-fun m!2787799 () Bool)

(assert (=> bm!145051 m!2787799))

(assert (=> b!2384714 d!697392))

(declare-fun b!2385306 () Bool)

(declare-fun res!1013227 () Bool)

(declare-fun e!1521052 () Bool)

(assert (=> b!2385306 (=> (not res!1013227) (not e!1521052))))

(assert (=> b!2385306 (= res!1013227 (isEmpty!16083 (tail!3486 s!9460)))))

(declare-fun b!2385307 () Bool)

(declare-fun e!1521046 () Bool)

(assert (=> b!2385307 (= e!1521046 (not (= (head!5216 s!9460) (c!379189 lt!869208))))))

(declare-fun b!2385308 () Bool)

(declare-fun res!1013223 () Bool)

(assert (=> b!2385308 (=> res!1013223 e!1521046)))

(assert (=> b!2385308 (= res!1013223 (not (isEmpty!16083 (tail!3486 s!9460))))))

(declare-fun b!2385309 () Bool)

(declare-fun e!1521047 () Bool)

(assert (=> b!2385309 (= e!1521047 (nullable!2041 lt!869208))))

(declare-fun b!2385310 () Bool)

(declare-fun res!1013221 () Bool)

(assert (=> b!2385310 (=> (not res!1013221) (not e!1521052))))

(declare-fun call!145057 () Bool)

(assert (=> b!2385310 (= res!1013221 (not call!145057))))

(declare-fun b!2385311 () Bool)

(assert (=> b!2385311 (= e!1521052 (= (head!5216 s!9460) (c!379189 lt!869208)))))

(declare-fun b!2385312 () Bool)

(declare-fun e!1521048 () Bool)

(assert (=> b!2385312 (= e!1521048 e!1521046)))

(declare-fun res!1013225 () Bool)

(assert (=> b!2385312 (=> res!1013225 e!1521046)))

(assert (=> b!2385312 (= res!1013225 call!145057)))

(declare-fun bm!145052 () Bool)

(assert (=> bm!145052 (= call!145057 (isEmpty!16083 s!9460))))

(declare-fun b!2385313 () Bool)

(declare-fun res!1013224 () Bool)

(declare-fun e!1521050 () Bool)

(assert (=> b!2385313 (=> res!1013224 e!1521050)))

(assert (=> b!2385313 (= res!1013224 e!1521052)))

(declare-fun res!1013226 () Bool)

(assert (=> b!2385313 (=> (not res!1013226) (not e!1521052))))

(declare-fun lt!869299 () Bool)

(assert (=> b!2385313 (= res!1013226 lt!869299)))

(declare-fun b!2385314 () Bool)

(declare-fun res!1013220 () Bool)

(assert (=> b!2385314 (=> res!1013220 e!1521050)))

(assert (=> b!2385314 (= res!1013220 (not ((_ is ElementMatch!6991) lt!869208)))))

(declare-fun e!1521051 () Bool)

(assert (=> b!2385314 (= e!1521051 e!1521050)))

(declare-fun b!2385315 () Bool)

(assert (=> b!2385315 (= e!1521051 (not lt!869299))))

(declare-fun b!2385316 () Bool)

(declare-fun e!1521049 () Bool)

(assert (=> b!2385316 (= e!1521049 e!1521051)))

(declare-fun c!379316 () Bool)

(assert (=> b!2385316 (= c!379316 ((_ is EmptyLang!6991) lt!869208))))

(declare-fun b!2385317 () Bool)

(assert (=> b!2385317 (= e!1521049 (= lt!869299 call!145057))))

(declare-fun d!697394 () Bool)

(assert (=> d!697394 e!1521049))

(declare-fun c!379314 () Bool)

(assert (=> d!697394 (= c!379314 ((_ is EmptyExpr!6991) lt!869208))))

(assert (=> d!697394 (= lt!869299 e!1521047)))

(declare-fun c!379315 () Bool)

(assert (=> d!697394 (= c!379315 (isEmpty!16083 s!9460))))

(assert (=> d!697394 (validRegex!2716 lt!869208)))

(assert (=> d!697394 (= (matchR!3108 lt!869208 s!9460) lt!869299)))

(declare-fun b!2385318 () Bool)

(assert (=> b!2385318 (= e!1521050 e!1521048)))

(declare-fun res!1013222 () Bool)

(assert (=> b!2385318 (=> (not res!1013222) (not e!1521048))))

(assert (=> b!2385318 (= res!1013222 (not lt!869299))))

(declare-fun b!2385319 () Bool)

(assert (=> b!2385319 (= e!1521047 (matchR!3108 (derivativeStep!1699 lt!869208 (head!5216 s!9460)) (tail!3486 s!9460)))))

(assert (= (and d!697394 c!379315) b!2385309))

(assert (= (and d!697394 (not c!379315)) b!2385319))

(assert (= (and d!697394 c!379314) b!2385317))

(assert (= (and d!697394 (not c!379314)) b!2385316))

(assert (= (and b!2385316 c!379316) b!2385315))

(assert (= (and b!2385316 (not c!379316)) b!2385314))

(assert (= (and b!2385314 (not res!1013220)) b!2385313))

(assert (= (and b!2385313 res!1013226) b!2385310))

(assert (= (and b!2385310 res!1013221) b!2385306))

(assert (= (and b!2385306 res!1013227) b!2385311))

(assert (= (and b!2385313 (not res!1013224)) b!2385318))

(assert (= (and b!2385318 res!1013222) b!2385312))

(assert (= (and b!2385312 (not res!1013225)) b!2385308))

(assert (= (and b!2385308 (not res!1013223)) b!2385307))

(assert (= (or b!2385317 b!2385310 b!2385312) bm!145052))

(assert (=> bm!145052 m!2787473))

(assert (=> b!2385319 m!2787529))

(assert (=> b!2385319 m!2787529))

(declare-fun m!2787801 () Bool)

(assert (=> b!2385319 m!2787801))

(assert (=> b!2385319 m!2787533))

(assert (=> b!2385319 m!2787801))

(assert (=> b!2385319 m!2787533))

(declare-fun m!2787803 () Bool)

(assert (=> b!2385319 m!2787803))

(assert (=> b!2385308 m!2787533))

(assert (=> b!2385308 m!2787533))

(assert (=> b!2385308 m!2787537))

(assert (=> b!2385306 m!2787533))

(assert (=> b!2385306 m!2787533))

(assert (=> b!2385306 m!2787537))

(assert (=> b!2385311 m!2787529))

(assert (=> d!697394 m!2787473))

(assert (=> d!697394 m!2787379))

(assert (=> b!2385307 m!2787529))

(declare-fun m!2787805 () Bool)

(assert (=> b!2385309 m!2787805))

(assert (=> b!2384714 d!697394))

(declare-fun d!697396 () Bool)

(assert (=> d!697396 (= (head!5214 l!9164) (h!33524 l!9164))))

(assert (=> b!2384714 d!697396))

(declare-fun b!2385320 () Bool)

(declare-fun res!1013229 () Bool)

(declare-fun e!1521054 () Bool)

(assert (=> b!2385320 (=> (not res!1013229) (not e!1521054))))

(declare-fun lt!869300 () Option!5534)

(assert (=> b!2385320 (= res!1013229 (matchR!3108 lt!869208 (_1!16464 (get!8585 lt!869300))))))

(declare-fun b!2385321 () Bool)

(declare-fun e!1521055 () Option!5534)

(declare-fun e!1521056 () Option!5534)

(assert (=> b!2385321 (= e!1521055 e!1521056)))

(declare-fun c!379318 () Bool)

(assert (=> b!2385321 (= c!379318 ((_ is Nil!28122) s!9460))))

(declare-fun b!2385322 () Bool)

(declare-fun lt!869301 () Unit!41081)

(declare-fun lt!869302 () Unit!41081)

(assert (=> b!2385322 (= lt!869301 lt!869302)))

(assert (=> b!2385322 (= (++!6946 (++!6946 Nil!28122 (Cons!28122 (h!33523 s!9460) Nil!28122)) (t!208197 s!9460)) s!9460)))

(assert (=> b!2385322 (= lt!869302 (lemmaMoveElementToOtherListKeepsConcatEq!588 Nil!28122 (h!33523 s!9460) (t!208197 s!9460) s!9460))))

(assert (=> b!2385322 (= e!1521056 (findConcatSeparation!642 lt!869208 lt!869200 (++!6946 Nil!28122 (Cons!28122 (h!33523 s!9460) Nil!28122)) (t!208197 s!9460) s!9460))))

(declare-fun b!2385323 () Bool)

(declare-fun e!1521053 () Bool)

(assert (=> b!2385323 (= e!1521053 (not (isDefined!4362 lt!869300)))))

(declare-fun b!2385324 () Bool)

(assert (=> b!2385324 (= e!1521055 (Some!5533 (tuple2!27847 Nil!28122 s!9460)))))

(declare-fun b!2385325 () Bool)

(declare-fun res!1013232 () Bool)

(assert (=> b!2385325 (=> (not res!1013232) (not e!1521054))))

(assert (=> b!2385325 (= res!1013232 (matchR!3108 lt!869200 (_2!16464 (get!8585 lt!869300))))))

(declare-fun b!2385326 () Bool)

(declare-fun e!1521057 () Bool)

(assert (=> b!2385326 (= e!1521057 (matchR!3108 lt!869200 s!9460))))

(declare-fun b!2385327 () Bool)

(assert (=> b!2385327 (= e!1521054 (= (++!6946 (_1!16464 (get!8585 lt!869300)) (_2!16464 (get!8585 lt!869300))) s!9460))))

(declare-fun b!2385328 () Bool)

(assert (=> b!2385328 (= e!1521056 None!5533)))

(declare-fun d!697398 () Bool)

(assert (=> d!697398 e!1521053))

(declare-fun res!1013230 () Bool)

(assert (=> d!697398 (=> res!1013230 e!1521053)))

(assert (=> d!697398 (= res!1013230 e!1521054)))

(declare-fun res!1013228 () Bool)

(assert (=> d!697398 (=> (not res!1013228) (not e!1521054))))

(assert (=> d!697398 (= res!1013228 (isDefined!4362 lt!869300))))

(assert (=> d!697398 (= lt!869300 e!1521055)))

(declare-fun c!379317 () Bool)

(assert (=> d!697398 (= c!379317 e!1521057)))

(declare-fun res!1013231 () Bool)

(assert (=> d!697398 (=> (not res!1013231) (not e!1521057))))

(assert (=> d!697398 (= res!1013231 (matchR!3108 lt!869208 Nil!28122))))

(assert (=> d!697398 (validRegex!2716 lt!869208)))

(assert (=> d!697398 (= (findConcatSeparation!642 lt!869208 lt!869200 Nil!28122 s!9460 s!9460) lt!869300)))

(assert (= (and d!697398 res!1013231) b!2385326))

(assert (= (and d!697398 c!379317) b!2385324))

(assert (= (and d!697398 (not c!379317)) b!2385321))

(assert (= (and b!2385321 c!379318) b!2385328))

(assert (= (and b!2385321 (not c!379318)) b!2385322))

(assert (= (and d!697398 res!1013228) b!2385320))

(assert (= (and b!2385320 res!1013229) b!2385325))

(assert (= (and b!2385325 res!1013232) b!2385327))

(assert (= (and d!697398 (not res!1013230)) b!2385323))

(assert (=> b!2385322 m!2787675))

(assert (=> b!2385322 m!2787675))

(assert (=> b!2385322 m!2787677))

(assert (=> b!2385322 m!2787679))

(assert (=> b!2385322 m!2787675))

(declare-fun m!2787807 () Bool)

(assert (=> b!2385322 m!2787807))

(declare-fun m!2787809 () Bool)

(assert (=> b!2385323 m!2787809))

(declare-fun m!2787811 () Bool)

(assert (=> b!2385325 m!2787811))

(declare-fun m!2787813 () Bool)

(assert (=> b!2385325 m!2787813))

(declare-fun m!2787815 () Bool)

(assert (=> b!2385326 m!2787815))

(assert (=> b!2385320 m!2787811))

(declare-fun m!2787817 () Bool)

(assert (=> b!2385320 m!2787817))

(assert (=> d!697398 m!2787809))

(assert (=> d!697398 m!2787739))

(assert (=> d!697398 m!2787379))

(assert (=> b!2385327 m!2787811))

(declare-fun m!2787819 () Bool)

(assert (=> b!2385327 m!2787819))

(assert (=> bm!145001 d!697398))

(declare-fun b!2385329 () Bool)

(declare-fun res!1013240 () Bool)

(declare-fun e!1521064 () Bool)

(assert (=> b!2385329 (=> (not res!1013240) (not e!1521064))))

(assert (=> b!2385329 (= res!1013240 (isEmpty!16083 (tail!3486 (ite c!379187 s!9460 call!145007))))))

(declare-fun b!2385330 () Bool)

(declare-fun e!1521058 () Bool)

(assert (=> b!2385330 (= e!1521058 (not (= (head!5216 (ite c!379187 s!9460 call!145007)) (c!379189 (ite c!379187 lt!869207 (Concat!11627 lt!869208 EmptyExpr!6991))))))))

(declare-fun b!2385331 () Bool)

(declare-fun res!1013236 () Bool)

(assert (=> b!2385331 (=> res!1013236 e!1521058)))

(assert (=> b!2385331 (= res!1013236 (not (isEmpty!16083 (tail!3486 (ite c!379187 s!9460 call!145007)))))))

(declare-fun e!1521059 () Bool)

(declare-fun b!2385332 () Bool)

(assert (=> b!2385332 (= e!1521059 (nullable!2041 (ite c!379187 lt!869207 (Concat!11627 lt!869208 EmptyExpr!6991))))))

(declare-fun b!2385333 () Bool)

(declare-fun res!1013234 () Bool)

(assert (=> b!2385333 (=> (not res!1013234) (not e!1521064))))

(declare-fun call!145058 () Bool)

(assert (=> b!2385333 (= res!1013234 (not call!145058))))

(declare-fun b!2385334 () Bool)

(assert (=> b!2385334 (= e!1521064 (= (head!5216 (ite c!379187 s!9460 call!145007)) (c!379189 (ite c!379187 lt!869207 (Concat!11627 lt!869208 EmptyExpr!6991)))))))

(declare-fun b!2385335 () Bool)

(declare-fun e!1521060 () Bool)

(assert (=> b!2385335 (= e!1521060 e!1521058)))

(declare-fun res!1013238 () Bool)

(assert (=> b!2385335 (=> res!1013238 e!1521058)))

(assert (=> b!2385335 (= res!1013238 call!145058)))

(declare-fun bm!145053 () Bool)

(assert (=> bm!145053 (= call!145058 (isEmpty!16083 (ite c!379187 s!9460 call!145007)))))

(declare-fun b!2385336 () Bool)

(declare-fun res!1013237 () Bool)

(declare-fun e!1521062 () Bool)

(assert (=> b!2385336 (=> res!1013237 e!1521062)))

(assert (=> b!2385336 (= res!1013237 e!1521064)))

(declare-fun res!1013239 () Bool)

(assert (=> b!2385336 (=> (not res!1013239) (not e!1521064))))

(declare-fun lt!869303 () Bool)

(assert (=> b!2385336 (= res!1013239 lt!869303)))

(declare-fun b!2385337 () Bool)

(declare-fun res!1013233 () Bool)

(assert (=> b!2385337 (=> res!1013233 e!1521062)))

(assert (=> b!2385337 (= res!1013233 (not ((_ is ElementMatch!6991) (ite c!379187 lt!869207 (Concat!11627 lt!869208 EmptyExpr!6991)))))))

(declare-fun e!1521063 () Bool)

(assert (=> b!2385337 (= e!1521063 e!1521062)))

(declare-fun b!2385338 () Bool)

(assert (=> b!2385338 (= e!1521063 (not lt!869303))))

(declare-fun b!2385339 () Bool)

(declare-fun e!1521061 () Bool)

(assert (=> b!2385339 (= e!1521061 e!1521063)))

(declare-fun c!379321 () Bool)

(assert (=> b!2385339 (= c!379321 ((_ is EmptyLang!6991) (ite c!379187 lt!869207 (Concat!11627 lt!869208 EmptyExpr!6991))))))

(declare-fun b!2385340 () Bool)

(assert (=> b!2385340 (= e!1521061 (= lt!869303 call!145058))))

(declare-fun d!697400 () Bool)

(assert (=> d!697400 e!1521061))

(declare-fun c!379319 () Bool)

(assert (=> d!697400 (= c!379319 ((_ is EmptyExpr!6991) (ite c!379187 lt!869207 (Concat!11627 lt!869208 EmptyExpr!6991))))))

(assert (=> d!697400 (= lt!869303 e!1521059)))

(declare-fun c!379320 () Bool)

(assert (=> d!697400 (= c!379320 (isEmpty!16083 (ite c!379187 s!9460 call!145007)))))

(assert (=> d!697400 (validRegex!2716 (ite c!379187 lt!869207 (Concat!11627 lt!869208 EmptyExpr!6991)))))

(assert (=> d!697400 (= (matchR!3108 (ite c!379187 lt!869207 (Concat!11627 lt!869208 EmptyExpr!6991)) (ite c!379187 s!9460 call!145007)) lt!869303)))

(declare-fun b!2385341 () Bool)

(assert (=> b!2385341 (= e!1521062 e!1521060)))

(declare-fun res!1013235 () Bool)

(assert (=> b!2385341 (=> (not res!1013235) (not e!1521060))))

(assert (=> b!2385341 (= res!1013235 (not lt!869303))))

(declare-fun b!2385342 () Bool)

(assert (=> b!2385342 (= e!1521059 (matchR!3108 (derivativeStep!1699 (ite c!379187 lt!869207 (Concat!11627 lt!869208 EmptyExpr!6991)) (head!5216 (ite c!379187 s!9460 call!145007))) (tail!3486 (ite c!379187 s!9460 call!145007))))))

(assert (= (and d!697400 c!379320) b!2385332))

(assert (= (and d!697400 (not c!379320)) b!2385342))

(assert (= (and d!697400 c!379319) b!2385340))

(assert (= (and d!697400 (not c!379319)) b!2385339))

(assert (= (and b!2385339 c!379321) b!2385338))

(assert (= (and b!2385339 (not c!379321)) b!2385337))

(assert (= (and b!2385337 (not res!1013233)) b!2385336))

(assert (= (and b!2385336 res!1013239) b!2385333))

(assert (= (and b!2385333 res!1013234) b!2385329))

(assert (= (and b!2385329 res!1013240) b!2385334))

(assert (= (and b!2385336 (not res!1013237)) b!2385341))

(assert (= (and b!2385341 res!1013235) b!2385335))

(assert (= (and b!2385335 (not res!1013238)) b!2385331))

(assert (= (and b!2385331 (not res!1013236)) b!2385330))

(assert (= (or b!2385340 b!2385333 b!2385335) bm!145053))

(declare-fun m!2787821 () Bool)

(assert (=> bm!145053 m!2787821))

(declare-fun m!2787823 () Bool)

(assert (=> b!2385342 m!2787823))

(assert (=> b!2385342 m!2787823))

(declare-fun m!2787825 () Bool)

(assert (=> b!2385342 m!2787825))

(declare-fun m!2787827 () Bool)

(assert (=> b!2385342 m!2787827))

(assert (=> b!2385342 m!2787825))

(assert (=> b!2385342 m!2787827))

(declare-fun m!2787829 () Bool)

(assert (=> b!2385342 m!2787829))

(assert (=> b!2385331 m!2787827))

(assert (=> b!2385331 m!2787827))

(declare-fun m!2787831 () Bool)

(assert (=> b!2385331 m!2787831))

(assert (=> b!2385329 m!2787827))

(assert (=> b!2385329 m!2787827))

(assert (=> b!2385329 m!2787831))

(assert (=> b!2385334 m!2787823))

(assert (=> d!697400 m!2787821))

(declare-fun m!2787833 () Bool)

(assert (=> d!697400 m!2787833))

(assert (=> b!2385330 m!2787823))

(declare-fun m!2787835 () Bool)

(assert (=> b!2385332 m!2787835))

(assert (=> bm!145000 d!697400))

(declare-fun bs!462160 () Bool)

(declare-fun d!697402 () Bool)

(assert (= bs!462160 (and d!697402 start!234004)))

(declare-fun lambda!89029 () Int)

(assert (=> bs!462160 (= lambda!89029 lambda!88989)))

(declare-fun bs!462161 () Bool)

(assert (= bs!462161 (and d!697402 d!697382)))

(assert (=> bs!462161 (= lambda!89029 lambda!89028)))

(declare-fun b!2385343 () Bool)

(declare-fun e!1521068 () Regex!6991)

(assert (=> b!2385343 (= e!1521068 (Concat!11627 (h!33524 l!9164) (generalisedConcat!92 (t!208198 l!9164))))))

(declare-fun b!2385344 () Bool)

(declare-fun e!1521067 () Bool)

(declare-fun e!1521069 () Bool)

(assert (=> b!2385344 (= e!1521067 e!1521069)))

(declare-fun c!379325 () Bool)

(assert (=> b!2385344 (= c!379325 (isEmpty!16081 l!9164))))

(declare-fun b!2385346 () Bool)

(declare-fun e!1521070 () Bool)

(assert (=> b!2385346 (= e!1521069 e!1521070)))

(declare-fun c!379322 () Bool)

(assert (=> b!2385346 (= c!379322 (isEmpty!16081 (tail!3484 l!9164)))))

(declare-fun b!2385347 () Bool)

(declare-fun lt!869304 () Regex!6991)

(assert (=> b!2385347 (= e!1521069 (isEmptyExpr!61 lt!869304))))

(declare-fun b!2385348 () Bool)

(assert (=> b!2385348 (= e!1521070 (= lt!869304 (head!5214 l!9164)))))

(declare-fun b!2385349 () Bool)

(declare-fun e!1521066 () Regex!6991)

(assert (=> b!2385349 (= e!1521066 (h!33524 l!9164))))

(declare-fun b!2385350 () Bool)

(declare-fun e!1521065 () Bool)

(assert (=> b!2385350 (= e!1521065 (isEmpty!16081 (t!208198 l!9164)))))

(declare-fun b!2385351 () Bool)

(assert (=> b!2385351 (= e!1521068 EmptyExpr!6991)))

(declare-fun b!2385352 () Bool)

(assert (=> b!2385352 (= e!1521066 e!1521068)))

(declare-fun c!379323 () Bool)

(assert (=> b!2385352 (= c!379323 ((_ is Cons!28123) l!9164))))

(declare-fun b!2385345 () Bool)

(assert (=> b!2385345 (= e!1521070 (isConcat!61 lt!869304))))

(assert (=> d!697402 e!1521067))

(declare-fun res!1013241 () Bool)

(assert (=> d!697402 (=> (not res!1013241) (not e!1521067))))

(assert (=> d!697402 (= res!1013241 (validRegex!2716 lt!869304))))

(assert (=> d!697402 (= lt!869304 e!1521066)))

(declare-fun c!379324 () Bool)

(assert (=> d!697402 (= c!379324 e!1521065)))

(declare-fun res!1013242 () Bool)

(assert (=> d!697402 (=> (not res!1013242) (not e!1521065))))

(assert (=> d!697402 (= res!1013242 ((_ is Cons!28123) l!9164))))

(assert (=> d!697402 (forall!5625 l!9164 lambda!89029)))

(assert (=> d!697402 (= (generalisedConcat!92 l!9164) lt!869304)))

(assert (= (and d!697402 res!1013242) b!2385350))

(assert (= (and d!697402 c!379324) b!2385349))

(assert (= (and d!697402 (not c!379324)) b!2385352))

(assert (= (and b!2385352 c!379323) b!2385343))

(assert (= (and b!2385352 (not c!379323)) b!2385351))

(assert (= (and d!697402 res!1013241) b!2385344))

(assert (= (and b!2385344 c!379325) b!2385347))

(assert (= (and b!2385344 (not c!379325)) b!2385346))

(assert (= (and b!2385346 c!379322) b!2385348))

(assert (= (and b!2385346 (not c!379322)) b!2385345))

(declare-fun m!2787837 () Bool)

(assert (=> b!2385347 m!2787837))

(assert (=> b!2385348 m!2787383))

(declare-fun m!2787839 () Bool)

(assert (=> d!697402 m!2787839))

(declare-fun m!2787841 () Bool)

(assert (=> d!697402 m!2787841))

(declare-fun m!2787843 () Bool)

(assert (=> b!2385350 m!2787843))

(assert (=> b!2385346 m!2787329))

(assert (=> b!2385346 m!2787329))

(declare-fun m!2787845 () Bool)

(assert (=> b!2385346 m!2787845))

(declare-fun m!2787847 () Bool)

(assert (=> b!2385343 m!2787847))

(declare-fun m!2787849 () Bool)

(assert (=> b!2385345 m!2787849))

(assert (=> b!2385344 m!2787377))

(assert (=> b!2384722 d!697402))

(declare-fun d!697404 () Bool)

(assert (=> d!697404 (= (isEmpty!16081 l!9164) ((_ is Nil!28123) l!9164))))

(assert (=> b!2384732 d!697404))

(declare-fun e!1521073 () Bool)

(assert (=> b!2384717 (= tp!760774 e!1521073)))

(declare-fun b!2385364 () Bool)

(declare-fun tp!760841 () Bool)

(declare-fun tp!760842 () Bool)

(assert (=> b!2385364 (= e!1521073 (and tp!760841 tp!760842))))

(declare-fun b!2385363 () Bool)

(assert (=> b!2385363 (= e!1521073 tp_is_empty!11395)))

(declare-fun b!2385365 () Bool)

(declare-fun tp!760843 () Bool)

(assert (=> b!2385365 (= e!1521073 tp!760843)))

(declare-fun b!2385366 () Bool)

(declare-fun tp!760845 () Bool)

(declare-fun tp!760844 () Bool)

(assert (=> b!2385366 (= e!1521073 (and tp!760845 tp!760844))))

(assert (= (and b!2384717 ((_ is ElementMatch!6991) (regOne!14495 r!13927))) b!2385363))

(assert (= (and b!2384717 ((_ is Concat!11627) (regOne!14495 r!13927))) b!2385364))

(assert (= (and b!2384717 ((_ is Star!6991) (regOne!14495 r!13927))) b!2385365))

(assert (= (and b!2384717 ((_ is Union!6991) (regOne!14495 r!13927))) b!2385366))

(declare-fun e!1521074 () Bool)

(assert (=> b!2384717 (= tp!760781 e!1521074)))

(declare-fun b!2385368 () Bool)

(declare-fun tp!760846 () Bool)

(declare-fun tp!760847 () Bool)

(assert (=> b!2385368 (= e!1521074 (and tp!760846 tp!760847))))

(declare-fun b!2385367 () Bool)

(assert (=> b!2385367 (= e!1521074 tp_is_empty!11395)))

(declare-fun b!2385369 () Bool)

(declare-fun tp!760848 () Bool)

(assert (=> b!2385369 (= e!1521074 tp!760848)))

(declare-fun b!2385370 () Bool)

(declare-fun tp!760850 () Bool)

(declare-fun tp!760849 () Bool)

(assert (=> b!2385370 (= e!1521074 (and tp!760850 tp!760849))))

(assert (= (and b!2384717 ((_ is ElementMatch!6991) (regTwo!14495 r!13927))) b!2385367))

(assert (= (and b!2384717 ((_ is Concat!11627) (regTwo!14495 r!13927))) b!2385368))

(assert (= (and b!2384717 ((_ is Star!6991) (regTwo!14495 r!13927))) b!2385369))

(assert (= (and b!2384717 ((_ is Union!6991) (regTwo!14495 r!13927))) b!2385370))

(declare-fun e!1521075 () Bool)

(assert (=> b!2384734 (= tp!760780 e!1521075)))

(declare-fun b!2385372 () Bool)

(declare-fun tp!760851 () Bool)

(declare-fun tp!760852 () Bool)

(assert (=> b!2385372 (= e!1521075 (and tp!760851 tp!760852))))

(declare-fun b!2385371 () Bool)

(assert (=> b!2385371 (= e!1521075 tp_is_empty!11395)))

(declare-fun b!2385373 () Bool)

(declare-fun tp!760853 () Bool)

(assert (=> b!2385373 (= e!1521075 tp!760853)))

(declare-fun b!2385374 () Bool)

(declare-fun tp!760855 () Bool)

(declare-fun tp!760854 () Bool)

(assert (=> b!2385374 (= e!1521075 (and tp!760855 tp!760854))))

(assert (= (and b!2384734 ((_ is ElementMatch!6991) (reg!7320 r!13927))) b!2385371))

(assert (= (and b!2384734 ((_ is Concat!11627) (reg!7320 r!13927))) b!2385372))

(assert (= (and b!2384734 ((_ is Star!6991) (reg!7320 r!13927))) b!2385373))

(assert (= (and b!2384734 ((_ is Union!6991) (reg!7320 r!13927))) b!2385374))

(declare-fun e!1521076 () Bool)

(assert (=> b!2384728 (= tp!760775 e!1521076)))

(declare-fun b!2385376 () Bool)

(declare-fun tp!760856 () Bool)

(declare-fun tp!760857 () Bool)

(assert (=> b!2385376 (= e!1521076 (and tp!760856 tp!760857))))

(declare-fun b!2385375 () Bool)

(assert (=> b!2385375 (= e!1521076 tp_is_empty!11395)))

(declare-fun b!2385377 () Bool)

(declare-fun tp!760858 () Bool)

(assert (=> b!2385377 (= e!1521076 tp!760858)))

(declare-fun b!2385378 () Bool)

(declare-fun tp!760860 () Bool)

(declare-fun tp!760859 () Bool)

(assert (=> b!2385378 (= e!1521076 (and tp!760860 tp!760859))))

(assert (= (and b!2384728 ((_ is ElementMatch!6991) (h!33524 l!9164))) b!2385375))

(assert (= (and b!2384728 ((_ is Concat!11627) (h!33524 l!9164))) b!2385376))

(assert (= (and b!2384728 ((_ is Star!6991) (h!33524 l!9164))) b!2385377))

(assert (= (and b!2384728 ((_ is Union!6991) (h!33524 l!9164))) b!2385378))

(declare-fun b!2385383 () Bool)

(declare-fun e!1521079 () Bool)

(declare-fun tp!760865 () Bool)

(declare-fun tp!760866 () Bool)

(assert (=> b!2385383 (= e!1521079 (and tp!760865 tp!760866))))

(assert (=> b!2384728 (= tp!760778 e!1521079)))

(assert (= (and b!2384728 ((_ is Cons!28123) (t!208198 l!9164))) b!2385383))

(declare-fun b!2385388 () Bool)

(declare-fun e!1521082 () Bool)

(declare-fun tp!760869 () Bool)

(assert (=> b!2385388 (= e!1521082 (and tp_is_empty!11395 tp!760869))))

(assert (=> b!2384723 (= tp!760776 e!1521082)))

(assert (= (and b!2384723 ((_ is Cons!28122) (t!208197 s!9460))) b!2385388))

(declare-fun e!1521083 () Bool)

(assert (=> b!2384731 (= tp!760777 e!1521083)))

(declare-fun b!2385390 () Bool)

(declare-fun tp!760870 () Bool)

(declare-fun tp!760871 () Bool)

(assert (=> b!2385390 (= e!1521083 (and tp!760870 tp!760871))))

(declare-fun b!2385389 () Bool)

(assert (=> b!2385389 (= e!1521083 tp_is_empty!11395)))

(declare-fun b!2385391 () Bool)

(declare-fun tp!760872 () Bool)

(assert (=> b!2385391 (= e!1521083 tp!760872)))

(declare-fun b!2385392 () Bool)

(declare-fun tp!760874 () Bool)

(declare-fun tp!760873 () Bool)

(assert (=> b!2385392 (= e!1521083 (and tp!760874 tp!760873))))

(assert (= (and b!2384731 ((_ is ElementMatch!6991) (regOne!14494 r!13927))) b!2385389))

(assert (= (and b!2384731 ((_ is Concat!11627) (regOne!14494 r!13927))) b!2385390))

(assert (= (and b!2384731 ((_ is Star!6991) (regOne!14494 r!13927))) b!2385391))

(assert (= (and b!2384731 ((_ is Union!6991) (regOne!14494 r!13927))) b!2385392))

(declare-fun e!1521084 () Bool)

(assert (=> b!2384731 (= tp!760779 e!1521084)))

(declare-fun b!2385394 () Bool)

(declare-fun tp!760875 () Bool)

(declare-fun tp!760876 () Bool)

(assert (=> b!2385394 (= e!1521084 (and tp!760875 tp!760876))))

(declare-fun b!2385393 () Bool)

(assert (=> b!2385393 (= e!1521084 tp_is_empty!11395)))

(declare-fun b!2385395 () Bool)

(declare-fun tp!760877 () Bool)

(assert (=> b!2385395 (= e!1521084 tp!760877)))

(declare-fun b!2385396 () Bool)

(declare-fun tp!760879 () Bool)

(declare-fun tp!760878 () Bool)

(assert (=> b!2385396 (= e!1521084 (and tp!760879 tp!760878))))

(assert (= (and b!2384731 ((_ is ElementMatch!6991) (regTwo!14494 r!13927))) b!2385393))

(assert (= (and b!2384731 ((_ is Concat!11627) (regTwo!14494 r!13927))) b!2385394))

(assert (= (and b!2384731 ((_ is Star!6991) (regTwo!14494 r!13927))) b!2385395))

(assert (= (and b!2384731 ((_ is Union!6991) (regTwo!14494 r!13927))) b!2385396))

(declare-fun b_lambda!74113 () Bool)

(assert (= b_lambda!74111 (or start!234004 b_lambda!74113)))

(declare-fun bs!462162 () Bool)

(declare-fun d!697406 () Bool)

(assert (= bs!462162 (and d!697406 start!234004)))

(assert (=> bs!462162 (= (dynLambda!12108 lambda!88989 (h!33524 l!9164)) (validRegex!2716 (h!33524 l!9164)))))

(declare-fun m!2787851 () Bool)

(assert (=> bs!462162 m!2787851))

(assert (=> b!2385234 d!697406))

(check-sat (not d!697370) (not b!2385347) (not b!2385322) (not b!2385345) (not d!697398) (not b!2385227) (not b!2385259) (not bs!462162) (not b!2385365) (not b!2385319) (not b!2384766) (not b!2385260) (not b!2385383) (not b!2385224) (not d!697374) (not b!2385208) (not b!2385209) (not b!2385207) (not d!697402) (not b!2384767) (not b!2385377) (not b!2385258) (not b!2385350) (not b!2385326) (not d!697334) (not b!2385226) (not bm!145023) (not bm!145047) (not d!697366) tp_is_empty!11395 (not b!2385327) (not d!697326) (not b!2385390) (not b!2385392) (not d!697388) (not b!2385019) (not b!2385388) (not b!2385221) (not b!2385330) (not b!2385344) (not d!697372) (not b!2385212) (not b!2385368) (not d!697364) (not b!2385200) (not bm!145052) (not b!2385206) (not b!2385018) (not b!2385331) (not b!2385228) (not b!2385307) (not bm!145053) (not b!2385366) (not b!2385346) (not bm!145050) (not b!2385257) (not b!2385256) (not b!2385309) (not d!697368) (not b!2385308) (not b!2385372) (not d!697394) (not b!2385369) (not b!2385376) (not bm!145051) (not b!2385202) (not b!2385320) (not b!2385396) (not b!2385017) (not b!2385210) (not bm!145039) (not b!2385261) (not b!2385374) (not b!2384881) (not b!2385378) (not d!697328) (not d!697382) (not b!2385325) (not d!697284) (not b!2385306) (not b!2385295) (not b!2385197) (not b!2385195) (not b!2385370) (not b!2385198) (not b!2385391) (not b!2385323) (not b!2385332) (not b!2385298) (not b!2385235) (not b!2385201) (not bm!145022) (not b!2385342) (not d!697386) (not b!2384888) (not b!2385394) (not b!2385016) (not b!2385223) (not d!697306) (not b!2385343) (not b!2385373) (not d!697348) (not b!2385348) (not bm!145031) (not b!2385395) (not b_lambda!74113) (not d!697400) (not b!2385329) (not b!2385263) (not b!2385334) (not d!697390) (not b!2385364) (not d!697336) (not b!2385311) (not d!697376) (not b!2385294) (not b!2385220) (not b!2385029) (not b!2385285) (not bm!145048) (not b!2385021))
(check-sat)
