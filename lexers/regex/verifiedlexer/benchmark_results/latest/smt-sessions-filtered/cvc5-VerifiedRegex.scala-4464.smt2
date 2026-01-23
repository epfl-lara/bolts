; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!237318 () Bool)

(assert start!237318)

(declare-fun call!148125 () Bool)

(declare-fun bm!148116 () Bool)

(declare-fun c!386296 () Bool)

(declare-datatypes ((C!14398 0))(
  ( (C!14399 (val!8441 Int)) )
))
(declare-datatypes ((List!28478 0))(
  ( (Nil!28380) (Cons!28380 (h!33781 C!14398) (t!208455 List!28478)) )
))
(declare-datatypes ((tuple2!28020 0))(
  ( (tuple2!28021 (_1!16551 List!28478) (_2!16551 List!28478)) )
))
(declare-datatypes ((Option!5621 0))(
  ( (None!5620) (Some!5620 (v!31028 tuple2!28020)) )
))
(declare-fun lt!875608 () Option!5621)

(declare-fun call!148124 () Option!5621)

(declare-fun isDefined!4447 (Option!5621) Bool)

(assert (=> bm!148116 (= call!148125 (isDefined!4447 (ite c!386296 call!148124 lt!875608)))))

(declare-fun b!2422787 () Bool)

(declare-datatypes ((Unit!41579 0))(
  ( (Unit!41580) )
))
(declare-fun e!1541306 () Unit!41579)

(declare-fun Unit!41581 () Unit!41579)

(assert (=> b!2422787 (= e!1541306 Unit!41581)))

(declare-fun b!2422788 () Bool)

(declare-fun e!1541299 () Bool)

(declare-fun e!1541298 () Bool)

(assert (=> b!2422788 (= e!1541299 (not e!1541298))))

(declare-fun res!1028978 () Bool)

(assert (=> b!2422788 (=> res!1028978 e!1541298)))

(declare-datatypes ((Regex!7120 0))(
  ( (ElementMatch!7120 (c!386297 C!14398)) (Concat!11756 (regOne!14752 Regex!7120) (regTwo!14752 Regex!7120)) (EmptyExpr!7120) (Star!7120 (reg!7449 Regex!7120)) (EmptyLang!7120) (Union!7120 (regOne!14753 Regex!7120) (regTwo!14753 Regex!7120)) )
))
(declare-fun r!13927 () Regex!7120)

(assert (=> b!2422788 (= res!1028978 (or (is-Concat!11756 r!13927) (is-EmptyExpr!7120 r!13927)))))

(declare-fun lt!875611 () Bool)

(declare-fun s!9460 () List!28478)

(declare-fun matchRSpec!969 (Regex!7120 List!28478) Bool)

(assert (=> b!2422788 (= lt!875611 (matchRSpec!969 r!13927 s!9460))))

(declare-fun matchR!3237 (Regex!7120 List!28478) Bool)

(assert (=> b!2422788 (= lt!875611 (matchR!3237 r!13927 s!9460))))

(declare-fun lt!875605 () Unit!41579)

(declare-fun mainMatchTheorem!969 (Regex!7120 List!28478) Unit!41579)

(assert (=> b!2422788 (= lt!875605 (mainMatchTheorem!969 r!13927 s!9460))))

(declare-fun res!1028975 () Bool)

(assert (=> start!237318 (=> (not res!1028975) (not e!1541299))))

(declare-datatypes ((List!28479 0))(
  ( (Nil!28381) (Cons!28381 (h!33782 Regex!7120) (t!208456 List!28479)) )
))
(declare-fun l!9164 () List!28479)

(declare-fun lambda!91250 () Int)

(declare-fun forall!5754 (List!28479 Int) Bool)

(assert (=> start!237318 (= res!1028975 (forall!5754 l!9164 lambda!91250))))

(assert (=> start!237318 e!1541299))

(declare-fun e!1541305 () Bool)

(assert (=> start!237318 e!1541305))

(declare-fun e!1541303 () Bool)

(assert (=> start!237318 e!1541303))

(declare-fun e!1541293 () Bool)

(assert (=> start!237318 e!1541293))

(declare-fun b!2422789 () Bool)

(declare-fun e!1541297 () Bool)

(assert (=> b!2422789 (= e!1541297 false)))

(declare-fun call!148123 () Bool)

(declare-fun bm!148117 () Bool)

(declare-fun lt!875610 () Regex!7120)

(declare-fun call!148122 () List!28478)

(declare-fun lt!875614 () Regex!7120)

(assert (=> bm!148117 (= call!148123 (matchR!3237 (ite c!386296 lt!875610 (Concat!11756 lt!875614 EmptyExpr!7120)) (ite c!386296 s!9460 call!148122)))))

(declare-fun b!2422790 () Bool)

(declare-fun e!1541295 () Unit!41579)

(declare-fun Unit!41582 () Unit!41579)

(assert (=> b!2422790 (= e!1541295 Unit!41582)))

(assert (=> b!2422790 (= lt!875608 call!148124)))

(declare-fun lt!875613 () Bool)

(assert (=> b!2422790 (= lt!875613 call!148125)))

(declare-fun c!386295 () Bool)

(assert (=> b!2422790 (= c!386295 lt!875613)))

(declare-fun lt!875601 () Unit!41579)

(assert (=> b!2422790 (= lt!875601 e!1541306)))

(declare-fun res!1028977 () Bool)

(assert (=> b!2422790 (= res!1028977 (not lt!875613))))

(declare-fun e!1541294 () Bool)

(assert (=> b!2422790 (=> (not res!1028977) (not e!1541294))))

(assert (=> b!2422790 e!1541294))

(declare-fun b!2422791 () Bool)

(declare-fun e!1541300 () Bool)

(declare-fun validRegex!2840 (Regex!7120) Bool)

(assert (=> b!2422791 (= e!1541300 (validRegex!2840 r!13927))))

(declare-fun b!2422792 () Bool)

(declare-fun res!1028973 () Bool)

(assert (=> b!2422792 (=> res!1028973 e!1541298)))

(declare-fun isEmpty!16406 (List!28479) Bool)

(assert (=> b!2422792 (= res!1028973 (isEmpty!16406 l!9164))))

(declare-fun b!2422793 () Bool)

(declare-fun e!1541304 () Bool)

(assert (=> b!2422793 (= e!1541304 e!1541300)))

(declare-fun res!1028981 () Bool)

(assert (=> b!2422793 (=> res!1028981 e!1541300)))

(declare-fun e!1541296 () Bool)

(assert (=> b!2422793 (= res!1028981 e!1541296)))

(declare-fun c!386294 () Bool)

(assert (=> b!2422793 (= c!386294 (is-Cons!28381 l!9164))))

(declare-fun lt!875602 () Unit!41579)

(assert (=> b!2422793 (= lt!875602 e!1541295)))

(assert (=> b!2422793 (= c!386296 (matchR!3237 lt!875614 s!9460))))

(declare-fun head!5452 (List!28479) Regex!7120)

(assert (=> b!2422793 (= lt!875614 (head!5452 l!9164))))

(declare-fun b!2422794 () Bool)

(declare-fun res!1028982 () Bool)

(assert (=> b!2422794 (=> res!1028982 e!1541300)))

(assert (=> b!2422794 (= res!1028982 (not (is-Cons!28381 l!9164)))))

(declare-fun b!2422795 () Bool)

(declare-fun e!1541307 () Bool)

(assert (=> b!2422795 (= e!1541307 call!148125)))

(declare-fun b!2422796 () Bool)

(declare-fun tp!769755 () Bool)

(declare-fun tp!769756 () Bool)

(assert (=> b!2422796 (= e!1541303 (and tp!769755 tp!769756))))

(declare-fun b!2422797 () Bool)

(declare-fun findConcatSeparation!729 (Regex!7120 Regex!7120 List!28478 List!28478 List!28478) Option!5621)

(declare-fun generalisedConcat!221 (List!28479) Regex!7120)

(assert (=> b!2422797 (= e!1541296 (not (= lt!875611 (isDefined!4447 (findConcatSeparation!729 (h!33782 l!9164) (generalisedConcat!221 (t!208456 l!9164)) Nil!28380 s!9460 s!9460)))))))

(declare-fun lt!875609 () Regex!7120)

(declare-fun bm!148118 () Bool)

(declare-fun call!148121 () Option!5621)

(assert (=> bm!148118 (= call!148121 (findConcatSeparation!729 lt!875614 (ite c!386296 EmptyExpr!7120 lt!875609) Nil!28380 s!9460 s!9460))))

(declare-fun b!2422798 () Bool)

(declare-fun isEmpty!16407 (List!28478) Bool)

(assert (=> b!2422798 (= e!1541296 (not (= lt!875611 (isEmpty!16407 s!9460))))))

(declare-fun bm!148119 () Bool)

(declare-fun lt!875607 () tuple2!28020)

(declare-fun ++!7041 (List!28478 List!28478) List!28478)

(assert (=> bm!148119 (= call!148122 (++!7041 (ite c!386296 s!9460 (_1!16551 lt!875607)) (ite c!386296 Nil!28380 (_2!16551 lt!875607))))))

(declare-fun b!2422799 () Bool)

(declare-fun tp!769754 () Bool)

(declare-fun tp!769752 () Bool)

(assert (=> b!2422799 (= e!1541303 (and tp!769754 tp!769752))))

(declare-fun b!2422800 () Bool)

(declare-fun call!148126 () Bool)

(assert (=> b!2422800 (= e!1541294 (not call!148126))))

(declare-fun b!2422801 () Bool)

(declare-fun tp!769753 () Bool)

(declare-fun tp!769751 () Bool)

(assert (=> b!2422801 (= e!1541305 (and tp!769753 tp!769751))))

(declare-fun b!2422802 () Bool)

(declare-fun tp_is_empty!11653 () Bool)

(declare-fun tp!769750 () Bool)

(assert (=> b!2422802 (= e!1541293 (and tp_is_empty!11653 tp!769750))))

(declare-fun b!2422803 () Bool)

(declare-fun tp!769757 () Bool)

(assert (=> b!2422803 (= e!1541303 tp!769757)))

(declare-fun b!2422804 () Bool)

(declare-fun res!1028980 () Bool)

(assert (=> b!2422804 (=> (not res!1028980) (not e!1541299))))

(assert (=> b!2422804 (= res!1028980 (= r!13927 (generalisedConcat!221 l!9164)))))

(declare-fun b!2422805 () Bool)

(declare-fun e!1541301 () Bool)

(assert (=> b!2422805 (= e!1541301 e!1541304)))

(declare-fun res!1028979 () Bool)

(assert (=> b!2422805 (=> res!1028979 e!1541304)))

(assert (=> b!2422805 (= res!1028979 (not (= lt!875609 EmptyExpr!7120)))))

(declare-fun lt!875603 () List!28479)

(assert (=> b!2422805 (= lt!875609 (generalisedConcat!221 lt!875603))))

(declare-fun b!2422806 () Bool)

(assert (=> b!2422806 (= e!1541298 e!1541301)))

(declare-fun res!1028984 () Bool)

(assert (=> b!2422806 (=> res!1028984 e!1541301)))

(assert (=> b!2422806 (= res!1028984 (not (isEmpty!16406 lt!875603)))))

(declare-fun tail!3724 (List!28479) List!28479)

(assert (=> b!2422806 (= lt!875603 (tail!3724 l!9164))))

(declare-fun b!2422807 () Bool)

(declare-fun e!1541302 () Bool)

(assert (=> b!2422807 (= e!1541302 call!148123)))

(declare-fun b!2422808 () Bool)

(declare-fun Unit!41583 () Unit!41579)

(assert (=> b!2422808 (= e!1541295 Unit!41583)))

(declare-fun lt!875612 () Unit!41579)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!95 (Regex!7120 Regex!7120 List!28478 List!28478) Unit!41579)

(assert (=> b!2422808 (= lt!875612 (lemmaTwoRegexMatchThenConcatMatchesConcatString!95 lt!875614 EmptyExpr!7120 s!9460 Nil!28380))))

(assert (=> b!2422808 (= lt!875610 (Concat!11756 lt!875614 EmptyExpr!7120))))

(declare-fun res!1028976 () Bool)

(assert (=> b!2422808 (= res!1028976 (matchR!3237 lt!875610 call!148122))))

(assert (=> b!2422808 (=> (not res!1028976) (not e!1541302))))

(assert (=> b!2422808 e!1541302))

(declare-fun lt!875604 () Unit!41579)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!69 (Regex!7120 Regex!7120 List!28478) Unit!41579)

(assert (=> b!2422808 (= lt!875604 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!69 lt!875614 EmptyExpr!7120 s!9460))))

(declare-fun res!1028974 () Bool)

(assert (=> b!2422808 (= res!1028974 call!148126)))

(assert (=> b!2422808 (=> (not res!1028974) (not e!1541307))))

(assert (=> b!2422808 e!1541307))

(declare-fun b!2422809 () Bool)

(assert (=> b!2422809 (= e!1541303 tp_is_empty!11653)))

(declare-fun bm!148120 () Bool)

(assert (=> bm!148120 (= call!148124 (findConcatSeparation!729 lt!875614 (ite c!386296 lt!875609 EmptyExpr!7120) Nil!28380 s!9460 s!9460))))

(declare-fun b!2422810 () Bool)

(assert (=> b!2422810 e!1541297))

(declare-fun res!1028983 () Bool)

(assert (=> b!2422810 (=> (not res!1028983) (not e!1541297))))

(assert (=> b!2422810 (= res!1028983 call!148123)))

(declare-fun lt!875606 () Unit!41579)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!69 (Regex!7120 Regex!7120 List!28478 List!28478 List!28478) Unit!41579)

(assert (=> b!2422810 (= lt!875606 (lemmaFindSeparationIsDefinedThenConcatMatches!69 lt!875614 EmptyExpr!7120 (_1!16551 lt!875607) (_2!16551 lt!875607) s!9460))))

(declare-fun get!8733 (Option!5621) tuple2!28020)

(assert (=> b!2422810 (= lt!875607 (get!8733 lt!875608))))

(declare-fun Unit!41584 () Unit!41579)

(assert (=> b!2422810 (= e!1541306 Unit!41584)))

(declare-fun bm!148121 () Bool)

(assert (=> bm!148121 (= call!148126 (isDefined!4447 call!148121))))

(assert (= (and start!237318 res!1028975) b!2422804))

(assert (= (and b!2422804 res!1028980) b!2422788))

(assert (= (and b!2422788 (not res!1028978)) b!2422792))

(assert (= (and b!2422792 (not res!1028973)) b!2422806))

(assert (= (and b!2422806 (not res!1028984)) b!2422805))

(assert (= (and b!2422805 (not res!1028979)) b!2422793))

(assert (= (and b!2422793 c!386296) b!2422808))

(assert (= (and b!2422793 (not c!386296)) b!2422790))

(assert (= (and b!2422808 res!1028976) b!2422807))

(assert (= (and b!2422808 res!1028974) b!2422795))

(assert (= (and b!2422790 c!386295) b!2422810))

(assert (= (and b!2422790 (not c!386295)) b!2422787))

(assert (= (and b!2422810 res!1028983) b!2422789))

(assert (= (and b!2422790 res!1028977) b!2422800))

(assert (= (or b!2422795 b!2422790) bm!148120))

(assert (= (or b!2422808 b!2422800) bm!148118))

(assert (= (or b!2422808 b!2422810) bm!148119))

(assert (= (or b!2422807 b!2422810) bm!148117))

(assert (= (or b!2422795 b!2422790) bm!148116))

(assert (= (or b!2422808 b!2422800) bm!148121))

(assert (= (and b!2422793 c!386294) b!2422797))

(assert (= (and b!2422793 (not c!386294)) b!2422798))

(assert (= (and b!2422793 (not res!1028981)) b!2422794))

(assert (= (and b!2422794 (not res!1028982)) b!2422791))

(assert (= (and start!237318 (is-Cons!28381 l!9164)) b!2422801))

(assert (= (and start!237318 (is-ElementMatch!7120 r!13927)) b!2422809))

(assert (= (and start!237318 (is-Concat!11756 r!13927)) b!2422796))

(assert (= (and start!237318 (is-Star!7120 r!13927)) b!2422803))

(assert (= (and start!237318 (is-Union!7120 r!13927)) b!2422799))

(assert (= (and start!237318 (is-Cons!28380 s!9460)) b!2422802))

(declare-fun m!2808897 () Bool)

(assert (=> bm!148116 m!2808897))

(declare-fun m!2808899 () Bool)

(assert (=> b!2422791 m!2808899))

(declare-fun m!2808901 () Bool)

(assert (=> b!2422798 m!2808901))

(declare-fun m!2808903 () Bool)

(assert (=> b!2422793 m!2808903))

(declare-fun m!2808905 () Bool)

(assert (=> b!2422793 m!2808905))

(declare-fun m!2808907 () Bool)

(assert (=> b!2422808 m!2808907))

(declare-fun m!2808909 () Bool)

(assert (=> b!2422808 m!2808909))

(declare-fun m!2808911 () Bool)

(assert (=> b!2422808 m!2808911))

(declare-fun m!2808913 () Bool)

(assert (=> b!2422804 m!2808913))

(declare-fun m!2808915 () Bool)

(assert (=> bm!148118 m!2808915))

(declare-fun m!2808917 () Bool)

(assert (=> b!2422810 m!2808917))

(declare-fun m!2808919 () Bool)

(assert (=> b!2422810 m!2808919))

(declare-fun m!2808921 () Bool)

(assert (=> b!2422805 m!2808921))

(declare-fun m!2808923 () Bool)

(assert (=> bm!148117 m!2808923))

(declare-fun m!2808925 () Bool)

(assert (=> b!2422792 m!2808925))

(declare-fun m!2808927 () Bool)

(assert (=> b!2422797 m!2808927))

(assert (=> b!2422797 m!2808927))

(declare-fun m!2808929 () Bool)

(assert (=> b!2422797 m!2808929))

(assert (=> b!2422797 m!2808929))

(declare-fun m!2808931 () Bool)

(assert (=> b!2422797 m!2808931))

(declare-fun m!2808933 () Bool)

(assert (=> bm!148120 m!2808933))

(declare-fun m!2808935 () Bool)

(assert (=> b!2422806 m!2808935))

(declare-fun m!2808937 () Bool)

(assert (=> b!2422806 m!2808937))

(declare-fun m!2808939 () Bool)

(assert (=> bm!148119 m!2808939))

(declare-fun m!2808941 () Bool)

(assert (=> bm!148121 m!2808941))

(declare-fun m!2808943 () Bool)

(assert (=> b!2422788 m!2808943))

(declare-fun m!2808945 () Bool)

(assert (=> b!2422788 m!2808945))

(declare-fun m!2808947 () Bool)

(assert (=> b!2422788 m!2808947))

(declare-fun m!2808949 () Bool)

(assert (=> start!237318 m!2808949))

(push 1)

(assert (not b!2422796))

(assert (not bm!148121))

(assert (not b!2422802))

(assert (not b!2422793))

(assert (not b!2422798))

(assert (not bm!148116))

(assert (not bm!148120))

(assert (not start!237318))

(assert (not bm!148118))

(assert (not b!2422810))

(assert (not b!2422808))

(assert (not b!2422804))

(assert (not b!2422788))

(assert (not b!2422791))

(assert (not b!2422801))

(assert (not b!2422799))

(assert (not b!2422806))

(assert (not bm!148119))

(assert (not bm!148117))

(assert (not b!2422803))

(assert (not b!2422797))

(assert (not b!2422805))

(assert (not b!2422792))

(assert tp_is_empty!11653)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!463791 () Bool)

(declare-fun d!702093 () Bool)

(assert (= bs!463791 (and d!702093 start!237318)))

(declare-fun lambda!91256 () Int)

(assert (=> bs!463791 (= lambda!91256 lambda!91250)))

(declare-fun b!2422903 () Bool)

(declare-fun e!1541370 () Bool)

(declare-fun e!1541366 () Bool)

(assert (=> b!2422903 (= e!1541370 e!1541366)))

(declare-fun c!386316 () Bool)

(assert (=> b!2422903 (= c!386316 (isEmpty!16406 (tail!3724 l!9164)))))

(declare-fun b!2422904 () Bool)

(declare-fun e!1541369 () Bool)

(assert (=> b!2422904 (= e!1541369 e!1541370)))

(declare-fun c!386319 () Bool)

(assert (=> b!2422904 (= c!386319 (isEmpty!16406 l!9164))))

(declare-fun b!2422905 () Bool)

(declare-fun e!1541368 () Regex!7120)

(assert (=> b!2422905 (= e!1541368 (Concat!11756 (h!33782 l!9164) (generalisedConcat!221 (t!208456 l!9164))))))

(declare-fun b!2422906 () Bool)

(declare-fun lt!875659 () Regex!7120)

(declare-fun isConcat!175 (Regex!7120) Bool)

(assert (=> b!2422906 (= e!1541366 (isConcat!175 lt!875659))))

(assert (=> d!702093 e!1541369))

(declare-fun res!1029026 () Bool)

(assert (=> d!702093 (=> (not res!1029026) (not e!1541369))))

(assert (=> d!702093 (= res!1029026 (validRegex!2840 lt!875659))))

(declare-fun e!1541365 () Regex!7120)

(assert (=> d!702093 (= lt!875659 e!1541365)))

(declare-fun c!386318 () Bool)

(declare-fun e!1541367 () Bool)

(assert (=> d!702093 (= c!386318 e!1541367)))

(declare-fun res!1029025 () Bool)

(assert (=> d!702093 (=> (not res!1029025) (not e!1541367))))

(assert (=> d!702093 (= res!1029025 (is-Cons!28381 l!9164))))

(assert (=> d!702093 (forall!5754 l!9164 lambda!91256)))

(assert (=> d!702093 (= (generalisedConcat!221 l!9164) lt!875659)))

(declare-fun b!2422907 () Bool)

(declare-fun isEmptyExpr!175 (Regex!7120) Bool)

(assert (=> b!2422907 (= e!1541370 (isEmptyExpr!175 lt!875659))))

(declare-fun b!2422908 () Bool)

(assert (=> b!2422908 (= e!1541366 (= lt!875659 (head!5452 l!9164)))))

(declare-fun b!2422909 () Bool)

(assert (=> b!2422909 (= e!1541365 e!1541368)))

(declare-fun c!386317 () Bool)

(assert (=> b!2422909 (= c!386317 (is-Cons!28381 l!9164))))

(declare-fun b!2422910 () Bool)

(assert (=> b!2422910 (= e!1541367 (isEmpty!16406 (t!208456 l!9164)))))

(declare-fun b!2422911 () Bool)

(assert (=> b!2422911 (= e!1541368 EmptyExpr!7120)))

(declare-fun b!2422912 () Bool)

(assert (=> b!2422912 (= e!1541365 (h!33782 l!9164))))

(assert (= (and d!702093 res!1029025) b!2422910))

(assert (= (and d!702093 c!386318) b!2422912))

(assert (= (and d!702093 (not c!386318)) b!2422909))

(assert (= (and b!2422909 c!386317) b!2422905))

(assert (= (and b!2422909 (not c!386317)) b!2422911))

(assert (= (and d!702093 res!1029026) b!2422904))

(assert (= (and b!2422904 c!386319) b!2422907))

(assert (= (and b!2422904 (not c!386319)) b!2422903))

(assert (= (and b!2422903 c!386316) b!2422908))

(assert (= (and b!2422903 (not c!386316)) b!2422906))

(declare-fun m!2809005 () Bool)

(assert (=> b!2422910 m!2809005))

(assert (=> b!2422908 m!2808905))

(assert (=> b!2422905 m!2808927))

(declare-fun m!2809007 () Bool)

(assert (=> d!702093 m!2809007))

(declare-fun m!2809009 () Bool)

(assert (=> d!702093 m!2809009))

(declare-fun m!2809011 () Bool)

(assert (=> b!2422906 m!2809011))

(assert (=> b!2422903 m!2808937))

(assert (=> b!2422903 m!2808937))

(declare-fun m!2809013 () Bool)

(assert (=> b!2422903 m!2809013))

(assert (=> b!2422904 m!2808925))

(declare-fun m!2809015 () Bool)

(assert (=> b!2422907 m!2809015))

(assert (=> b!2422804 d!702093))

(declare-fun b!2422941 () Bool)

(declare-fun res!1029049 () Bool)

(declare-fun e!1541385 () Bool)

(assert (=> b!2422941 (=> res!1029049 e!1541385)))

(assert (=> b!2422941 (= res!1029049 (not (is-ElementMatch!7120 lt!875614)))))

(declare-fun e!1541390 () Bool)

(assert (=> b!2422941 (= e!1541390 e!1541385)))

(declare-fun b!2422942 () Bool)

(declare-fun lt!875662 () Bool)

(assert (=> b!2422942 (= e!1541390 (not lt!875662))))

(declare-fun b!2422943 () Bool)

(declare-fun res!1029050 () Bool)

(declare-fun e!1541388 () Bool)

(assert (=> b!2422943 (=> (not res!1029050) (not e!1541388))))

(declare-fun call!148147 () Bool)

(assert (=> b!2422943 (= res!1029050 (not call!148147))))

(declare-fun b!2422944 () Bool)

(declare-fun e!1541391 () Bool)

(declare-fun derivativeStep!1812 (Regex!7120 C!14398) Regex!7120)

(declare-fun head!5454 (List!28478) C!14398)

(declare-fun tail!3726 (List!28478) List!28478)

(assert (=> b!2422944 (= e!1541391 (matchR!3237 (derivativeStep!1812 lt!875614 (head!5454 s!9460)) (tail!3726 s!9460)))))

(declare-fun b!2422945 () Bool)

(declare-fun e!1541386 () Bool)

(assert (=> b!2422945 (= e!1541386 (not (= (head!5454 s!9460) (c!386297 lt!875614))))))

(declare-fun b!2422946 () Bool)

(declare-fun nullable!2155 (Regex!7120) Bool)

(assert (=> b!2422946 (= e!1541391 (nullable!2155 lt!875614))))

(declare-fun b!2422947 () Bool)

(declare-fun e!1541389 () Bool)

(assert (=> b!2422947 (= e!1541389 e!1541390)))

(declare-fun c!386326 () Bool)

(assert (=> b!2422947 (= c!386326 (is-EmptyLang!7120 lt!875614))))

(declare-fun b!2422948 () Bool)

(assert (=> b!2422948 (= e!1541389 (= lt!875662 call!148147))))

(declare-fun b!2422949 () Bool)

(declare-fun res!1029045 () Bool)

(assert (=> b!2422949 (=> res!1029045 e!1541386)))

(assert (=> b!2422949 (= res!1029045 (not (isEmpty!16407 (tail!3726 s!9460))))))

(declare-fun b!2422950 () Bool)

(declare-fun e!1541387 () Bool)

(assert (=> b!2422950 (= e!1541387 e!1541386)))

(declare-fun res!1029043 () Bool)

(assert (=> b!2422950 (=> res!1029043 e!1541386)))

(assert (=> b!2422950 (= res!1029043 call!148147)))

(declare-fun d!702095 () Bool)

(assert (=> d!702095 e!1541389))

(declare-fun c!386328 () Bool)

(assert (=> d!702095 (= c!386328 (is-EmptyExpr!7120 lt!875614))))

(assert (=> d!702095 (= lt!875662 e!1541391)))

(declare-fun c!386327 () Bool)

(assert (=> d!702095 (= c!386327 (isEmpty!16407 s!9460))))

(assert (=> d!702095 (validRegex!2840 lt!875614)))

(assert (=> d!702095 (= (matchR!3237 lt!875614 s!9460) lt!875662)))

(declare-fun bm!148142 () Bool)

(assert (=> bm!148142 (= call!148147 (isEmpty!16407 s!9460))))

(declare-fun b!2422951 () Bool)

(declare-fun res!1029047 () Bool)

(assert (=> b!2422951 (=> (not res!1029047) (not e!1541388))))

(assert (=> b!2422951 (= res!1029047 (isEmpty!16407 (tail!3726 s!9460)))))

(declare-fun b!2422952 () Bool)

(assert (=> b!2422952 (= e!1541388 (= (head!5454 s!9460) (c!386297 lt!875614)))))

(declare-fun b!2422953 () Bool)

(assert (=> b!2422953 (= e!1541385 e!1541387)))

(declare-fun res!1029046 () Bool)

(assert (=> b!2422953 (=> (not res!1029046) (not e!1541387))))

(assert (=> b!2422953 (= res!1029046 (not lt!875662))))

(declare-fun b!2422954 () Bool)

(declare-fun res!1029044 () Bool)

(assert (=> b!2422954 (=> res!1029044 e!1541385)))

(assert (=> b!2422954 (= res!1029044 e!1541388)))

(declare-fun res!1029048 () Bool)

(assert (=> b!2422954 (=> (not res!1029048) (not e!1541388))))

(assert (=> b!2422954 (= res!1029048 lt!875662)))

(assert (= (and d!702095 c!386327) b!2422946))

(assert (= (and d!702095 (not c!386327)) b!2422944))

(assert (= (and d!702095 c!386328) b!2422948))

(assert (= (and d!702095 (not c!386328)) b!2422947))

(assert (= (and b!2422947 c!386326) b!2422942))

(assert (= (and b!2422947 (not c!386326)) b!2422941))

(assert (= (and b!2422941 (not res!1029049)) b!2422954))

(assert (= (and b!2422954 res!1029048) b!2422943))

(assert (= (and b!2422943 res!1029050) b!2422951))

(assert (= (and b!2422951 res!1029047) b!2422952))

(assert (= (and b!2422954 (not res!1029044)) b!2422953))

(assert (= (and b!2422953 res!1029046) b!2422950))

(assert (= (and b!2422950 (not res!1029043)) b!2422949))

(assert (= (and b!2422949 (not res!1029045)) b!2422945))

(assert (= (or b!2422948 b!2422943 b!2422950) bm!148142))

(assert (=> d!702095 m!2808901))

(declare-fun m!2809017 () Bool)

(assert (=> d!702095 m!2809017))

(declare-fun m!2809019 () Bool)

(assert (=> b!2422945 m!2809019))

(assert (=> bm!148142 m!2808901))

(declare-fun m!2809021 () Bool)

(assert (=> b!2422946 m!2809021))

(assert (=> b!2422952 m!2809019))

(assert (=> b!2422944 m!2809019))

(assert (=> b!2422944 m!2809019))

(declare-fun m!2809023 () Bool)

(assert (=> b!2422944 m!2809023))

(declare-fun m!2809025 () Bool)

(assert (=> b!2422944 m!2809025))

(assert (=> b!2422944 m!2809023))

(assert (=> b!2422944 m!2809025))

(declare-fun m!2809027 () Bool)

(assert (=> b!2422944 m!2809027))

(assert (=> b!2422951 m!2809025))

(assert (=> b!2422951 m!2809025))

(declare-fun m!2809029 () Bool)

(assert (=> b!2422951 m!2809029))

(assert (=> b!2422949 m!2809025))

(assert (=> b!2422949 m!2809025))

(assert (=> b!2422949 m!2809029))

(assert (=> b!2422793 d!702095))

(declare-fun d!702099 () Bool)

(assert (=> d!702099 (= (head!5452 l!9164) (h!33782 l!9164))))

(assert (=> b!2422793 d!702099))

(declare-fun d!702101 () Bool)

(assert (=> d!702101 (= (isEmpty!16406 l!9164) (is-Nil!28381 l!9164))))

(assert (=> b!2422792 d!702101))

(declare-fun d!702103 () Bool)

(assert (=> d!702103 (matchR!3237 (Concat!11756 lt!875614 EmptyExpr!7120) (++!7041 (_1!16551 lt!875607) (_2!16551 lt!875607)))))

(declare-fun lt!875668 () Unit!41579)

(declare-fun choose!14345 (Regex!7120 Regex!7120 List!28478 List!28478 List!28478) Unit!41579)

(assert (=> d!702103 (= lt!875668 (choose!14345 lt!875614 EmptyExpr!7120 (_1!16551 lt!875607) (_2!16551 lt!875607) s!9460))))

(assert (=> d!702103 (validRegex!2840 lt!875614)))

(assert (=> d!702103 (= (lemmaFindSeparationIsDefinedThenConcatMatches!69 lt!875614 EmptyExpr!7120 (_1!16551 lt!875607) (_2!16551 lt!875607) s!9460) lt!875668)))

(declare-fun bs!463793 () Bool)

(assert (= bs!463793 d!702103))

(declare-fun m!2809039 () Bool)

(assert (=> bs!463793 m!2809039))

(assert (=> bs!463793 m!2809039))

(declare-fun m!2809041 () Bool)

(assert (=> bs!463793 m!2809041))

(declare-fun m!2809043 () Bool)

(assert (=> bs!463793 m!2809043))

(assert (=> bs!463793 m!2809017))

(assert (=> b!2422810 d!702103))

(declare-fun d!702109 () Bool)

(assert (=> d!702109 (= (get!8733 lt!875608) (v!31028 lt!875608))))

(assert (=> b!2422810 d!702109))

(declare-fun d!702111 () Bool)

(declare-fun isEmpty!16410 (Option!5621) Bool)

(assert (=> d!702111 (= (isDefined!4447 call!148121) (not (isEmpty!16410 call!148121)))))

(declare-fun bs!463794 () Bool)

(assert (= bs!463794 d!702111))

(declare-fun m!2809045 () Bool)

(assert (=> bs!463794 m!2809045))

(assert (=> bm!148121 d!702111))

(declare-fun b!2423001 () Bool)

(declare-fun e!1541418 () Bool)

(declare-fun lt!875677 () Option!5621)

(assert (=> b!2423001 (= e!1541418 (not (isDefined!4447 lt!875677)))))

(declare-fun b!2423002 () Bool)

(declare-fun e!1541422 () Option!5621)

(assert (=> b!2423002 (= e!1541422 None!5620)))

(declare-fun b!2423003 () Bool)

(declare-fun lt!875675 () Unit!41579)

(declare-fun lt!875676 () Unit!41579)

(assert (=> b!2423003 (= lt!875675 lt!875676)))

(assert (=> b!2423003 (= (++!7041 (++!7041 Nil!28380 (Cons!28380 (h!33781 s!9460) Nil!28380)) (t!208455 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!667 (List!28478 C!14398 List!28478 List!28478) Unit!41579)

(assert (=> b!2423003 (= lt!875676 (lemmaMoveElementToOtherListKeepsConcatEq!667 Nil!28380 (h!33781 s!9460) (t!208455 s!9460) s!9460))))

(assert (=> b!2423003 (= e!1541422 (findConcatSeparation!729 lt!875614 (ite c!386296 lt!875609 EmptyExpr!7120) (++!7041 Nil!28380 (Cons!28380 (h!33781 s!9460) Nil!28380)) (t!208455 s!9460) s!9460))))

(declare-fun b!2423005 () Bool)

(declare-fun e!1541421 () Option!5621)

(assert (=> b!2423005 (= e!1541421 (Some!5620 (tuple2!28021 Nil!28380 s!9460)))))

(declare-fun b!2423006 () Bool)

(declare-fun res!1029073 () Bool)

(declare-fun e!1541419 () Bool)

(assert (=> b!2423006 (=> (not res!1029073) (not e!1541419))))

(assert (=> b!2423006 (= res!1029073 (matchR!3237 (ite c!386296 lt!875609 EmptyExpr!7120) (_2!16551 (get!8733 lt!875677))))))

(declare-fun b!2423007 () Bool)

(assert (=> b!2423007 (= e!1541421 e!1541422)))

(declare-fun c!386341 () Bool)

(assert (=> b!2423007 (= c!386341 (is-Nil!28380 s!9460))))

(declare-fun d!702113 () Bool)

(assert (=> d!702113 e!1541418))

(declare-fun res!1029075 () Bool)

(assert (=> d!702113 (=> res!1029075 e!1541418)))

(assert (=> d!702113 (= res!1029075 e!1541419)))

(declare-fun res!1029076 () Bool)

(assert (=> d!702113 (=> (not res!1029076) (not e!1541419))))

(assert (=> d!702113 (= res!1029076 (isDefined!4447 lt!875677))))

(assert (=> d!702113 (= lt!875677 e!1541421)))

(declare-fun c!386342 () Bool)

(declare-fun e!1541420 () Bool)

(assert (=> d!702113 (= c!386342 e!1541420)))

(declare-fun res!1029074 () Bool)

(assert (=> d!702113 (=> (not res!1029074) (not e!1541420))))

(assert (=> d!702113 (= res!1029074 (matchR!3237 lt!875614 Nil!28380))))

(assert (=> d!702113 (validRegex!2840 lt!875614)))

(assert (=> d!702113 (= (findConcatSeparation!729 lt!875614 (ite c!386296 lt!875609 EmptyExpr!7120) Nil!28380 s!9460 s!9460) lt!875677)))

(declare-fun b!2423004 () Bool)

(assert (=> b!2423004 (= e!1541419 (= (++!7041 (_1!16551 (get!8733 lt!875677)) (_2!16551 (get!8733 lt!875677))) s!9460))))

(declare-fun b!2423008 () Bool)

(assert (=> b!2423008 (= e!1541420 (matchR!3237 (ite c!386296 lt!875609 EmptyExpr!7120) s!9460))))

(declare-fun b!2423009 () Bool)

(declare-fun res!1029077 () Bool)

(assert (=> b!2423009 (=> (not res!1029077) (not e!1541419))))

(assert (=> b!2423009 (= res!1029077 (matchR!3237 lt!875614 (_1!16551 (get!8733 lt!875677))))))

(assert (= (and d!702113 res!1029074) b!2423008))

(assert (= (and d!702113 c!386342) b!2423005))

(assert (= (and d!702113 (not c!386342)) b!2423007))

(assert (= (and b!2423007 c!386341) b!2423002))

(assert (= (and b!2423007 (not c!386341)) b!2423003))

(assert (= (and d!702113 res!1029076) b!2423009))

(assert (= (and b!2423009 res!1029077) b!2423006))

(assert (= (and b!2423006 res!1029073) b!2423004))

(assert (= (and d!702113 (not res!1029075)) b!2423001))

(declare-fun m!2809047 () Bool)

(assert (=> b!2423009 m!2809047))

(declare-fun m!2809049 () Bool)

(assert (=> b!2423009 m!2809049))

(assert (=> b!2423006 m!2809047))

(declare-fun m!2809051 () Bool)

(assert (=> b!2423006 m!2809051))

(declare-fun m!2809053 () Bool)

(assert (=> b!2423001 m!2809053))

(assert (=> d!702113 m!2809053))

(declare-fun m!2809055 () Bool)

(assert (=> d!702113 m!2809055))

(assert (=> d!702113 m!2809017))

(declare-fun m!2809057 () Bool)

(assert (=> b!2423003 m!2809057))

(assert (=> b!2423003 m!2809057))

(declare-fun m!2809059 () Bool)

(assert (=> b!2423003 m!2809059))

(declare-fun m!2809061 () Bool)

(assert (=> b!2423003 m!2809061))

(assert (=> b!2423003 m!2809057))

(declare-fun m!2809063 () Bool)

(assert (=> b!2423003 m!2809063))

(assert (=> b!2423004 m!2809047))

(declare-fun m!2809065 () Bool)

(assert (=> b!2423004 m!2809065))

(declare-fun m!2809067 () Bool)

(assert (=> b!2423008 m!2809067))

(assert (=> bm!148120 d!702113))

(declare-fun b!2423032 () Bool)

(declare-fun e!1541440 () Bool)

(declare-fun call!148157 () Bool)

(assert (=> b!2423032 (= e!1541440 call!148157)))

(declare-fun b!2423033 () Bool)

(declare-fun e!1541439 () Bool)

(declare-fun call!148158 () Bool)

(assert (=> b!2423033 (= e!1541439 call!148158)))

(declare-fun b!2423034 () Bool)

(declare-fun e!1541444 () Bool)

(declare-fun e!1541445 () Bool)

(assert (=> b!2423034 (= e!1541444 e!1541445)))

(declare-fun c!386348 () Bool)

(assert (=> b!2423034 (= c!386348 (is-Star!7120 r!13927))))

(declare-fun bm!148151 () Bool)

(declare-fun call!148156 () Bool)

(assert (=> bm!148151 (= call!148157 call!148156)))

(declare-fun bm!148152 () Bool)

(declare-fun c!386347 () Bool)

(assert (=> bm!148152 (= call!148158 (validRegex!2840 (ite c!386347 (regTwo!14753 r!13927) (regOne!14752 r!13927))))))

(declare-fun b!2423035 () Bool)

(declare-fun e!1541443 () Bool)

(assert (=> b!2423035 (= e!1541443 e!1541440)))

(declare-fun res!1029092 () Bool)

(assert (=> b!2423035 (=> (not res!1029092) (not e!1541440))))

(assert (=> b!2423035 (= res!1029092 call!148158)))

(declare-fun b!2423036 () Bool)

(declare-fun e!1541442 () Bool)

(assert (=> b!2423036 (= e!1541445 e!1541442)))

(assert (=> b!2423036 (= c!386347 (is-Union!7120 r!13927))))

(declare-fun d!702115 () Bool)

(declare-fun res!1029096 () Bool)

(assert (=> d!702115 (=> res!1029096 e!1541444)))

(assert (=> d!702115 (= res!1029096 (is-ElementMatch!7120 r!13927))))

(assert (=> d!702115 (= (validRegex!2840 r!13927) e!1541444)))

(declare-fun b!2423037 () Bool)

(declare-fun e!1541441 () Bool)

(assert (=> b!2423037 (= e!1541441 call!148156)))

(declare-fun b!2423038 () Bool)

(declare-fun res!1029093 () Bool)

(assert (=> b!2423038 (=> res!1029093 e!1541443)))

(assert (=> b!2423038 (= res!1029093 (not (is-Concat!11756 r!13927)))))

(assert (=> b!2423038 (= e!1541442 e!1541443)))

(declare-fun b!2423039 () Bool)

(declare-fun res!1029094 () Bool)

(assert (=> b!2423039 (=> (not res!1029094) (not e!1541439))))

(assert (=> b!2423039 (= res!1029094 call!148157)))

(assert (=> b!2423039 (= e!1541442 e!1541439)))

(declare-fun bm!148153 () Bool)

(assert (=> bm!148153 (= call!148156 (validRegex!2840 (ite c!386348 (reg!7449 r!13927) (ite c!386347 (regOne!14753 r!13927) (regTwo!14752 r!13927)))))))

(declare-fun b!2423040 () Bool)

(assert (=> b!2423040 (= e!1541445 e!1541441)))

(declare-fun res!1029095 () Bool)

(assert (=> b!2423040 (= res!1029095 (not (nullable!2155 (reg!7449 r!13927))))))

(assert (=> b!2423040 (=> (not res!1029095) (not e!1541441))))

(assert (= (and d!702115 (not res!1029096)) b!2423034))

(assert (= (and b!2423034 c!386348) b!2423040))

(assert (= (and b!2423034 (not c!386348)) b!2423036))

(assert (= (and b!2423040 res!1029095) b!2423037))

(assert (= (and b!2423036 c!386347) b!2423039))

(assert (= (and b!2423036 (not c!386347)) b!2423038))

(assert (= (and b!2423039 res!1029094) b!2423033))

(assert (= (and b!2423038 (not res!1029093)) b!2423035))

(assert (= (and b!2423035 res!1029092) b!2423032))

(assert (= (or b!2423039 b!2423032) bm!148151))

(assert (= (or b!2423033 b!2423035) bm!148152))

(assert (= (or b!2423037 bm!148151) bm!148153))

(declare-fun m!2809069 () Bool)

(assert (=> bm!148152 m!2809069))

(declare-fun m!2809071 () Bool)

(assert (=> bm!148153 m!2809071))

(declare-fun m!2809073 () Bool)

(assert (=> b!2423040 m!2809073))

(assert (=> b!2422791 d!702115))

(declare-fun d!702117 () Bool)

(declare-fun e!1541450 () Bool)

(assert (=> d!702117 e!1541450))

(declare-fun res!1029102 () Bool)

(assert (=> d!702117 (=> (not res!1029102) (not e!1541450))))

(declare-fun lt!875680 () List!28478)

(declare-fun content!3906 (List!28478) (Set C!14398))

(assert (=> d!702117 (= res!1029102 (= (content!3906 lt!875680) (set.union (content!3906 (ite c!386296 s!9460 (_1!16551 lt!875607))) (content!3906 (ite c!386296 Nil!28380 (_2!16551 lt!875607))))))))

(declare-fun e!1541451 () List!28478)

(assert (=> d!702117 (= lt!875680 e!1541451)))

(declare-fun c!386351 () Bool)

(assert (=> d!702117 (= c!386351 (is-Nil!28380 (ite c!386296 s!9460 (_1!16551 lt!875607))))))

(assert (=> d!702117 (= (++!7041 (ite c!386296 s!9460 (_1!16551 lt!875607)) (ite c!386296 Nil!28380 (_2!16551 lt!875607))) lt!875680)))

(declare-fun b!2423051 () Bool)

(declare-fun res!1029101 () Bool)

(assert (=> b!2423051 (=> (not res!1029101) (not e!1541450))))

(declare-fun size!22244 (List!28478) Int)

(assert (=> b!2423051 (= res!1029101 (= (size!22244 lt!875680) (+ (size!22244 (ite c!386296 s!9460 (_1!16551 lt!875607))) (size!22244 (ite c!386296 Nil!28380 (_2!16551 lt!875607))))))))

(declare-fun b!2423049 () Bool)

(assert (=> b!2423049 (= e!1541451 (ite c!386296 Nil!28380 (_2!16551 lt!875607)))))

(declare-fun b!2423052 () Bool)

(assert (=> b!2423052 (= e!1541450 (or (not (= (ite c!386296 Nil!28380 (_2!16551 lt!875607)) Nil!28380)) (= lt!875680 (ite c!386296 s!9460 (_1!16551 lt!875607)))))))

(declare-fun b!2423050 () Bool)

(assert (=> b!2423050 (= e!1541451 (Cons!28380 (h!33781 (ite c!386296 s!9460 (_1!16551 lt!875607))) (++!7041 (t!208455 (ite c!386296 s!9460 (_1!16551 lt!875607))) (ite c!386296 Nil!28380 (_2!16551 lt!875607)))))))

(assert (= (and d!702117 c!386351) b!2423049))

(assert (= (and d!702117 (not c!386351)) b!2423050))

(assert (= (and d!702117 res!1029102) b!2423051))

(assert (= (and b!2423051 res!1029101) b!2423052))

(declare-fun m!2809075 () Bool)

(assert (=> d!702117 m!2809075))

(declare-fun m!2809077 () Bool)

(assert (=> d!702117 m!2809077))

(declare-fun m!2809079 () Bool)

(assert (=> d!702117 m!2809079))

(declare-fun m!2809081 () Bool)

(assert (=> b!2423051 m!2809081))

(declare-fun m!2809083 () Bool)

(assert (=> b!2423051 m!2809083))

(declare-fun m!2809085 () Bool)

(assert (=> b!2423051 m!2809085))

(declare-fun m!2809087 () Bool)

(assert (=> b!2423050 m!2809087))

(assert (=> bm!148119 d!702117))

(declare-fun b!2423053 () Bool)

(declare-fun res!1029109 () Bool)

(declare-fun e!1541452 () Bool)

(assert (=> b!2423053 (=> res!1029109 e!1541452)))

(assert (=> b!2423053 (= res!1029109 (not (is-ElementMatch!7120 (ite c!386296 lt!875610 (Concat!11756 lt!875614 EmptyExpr!7120)))))))

(declare-fun e!1541457 () Bool)

(assert (=> b!2423053 (= e!1541457 e!1541452)))

(declare-fun b!2423054 () Bool)

(declare-fun lt!875681 () Bool)

(assert (=> b!2423054 (= e!1541457 (not lt!875681))))

(declare-fun b!2423055 () Bool)

(declare-fun res!1029110 () Bool)

(declare-fun e!1541455 () Bool)

(assert (=> b!2423055 (=> (not res!1029110) (not e!1541455))))

(declare-fun call!148161 () Bool)

(assert (=> b!2423055 (= res!1029110 (not call!148161))))

(declare-fun b!2423056 () Bool)

(declare-fun e!1541458 () Bool)

(assert (=> b!2423056 (= e!1541458 (matchR!3237 (derivativeStep!1812 (ite c!386296 lt!875610 (Concat!11756 lt!875614 EmptyExpr!7120)) (head!5454 (ite c!386296 s!9460 call!148122))) (tail!3726 (ite c!386296 s!9460 call!148122))))))

(declare-fun e!1541453 () Bool)

(declare-fun b!2423057 () Bool)

(assert (=> b!2423057 (= e!1541453 (not (= (head!5454 (ite c!386296 s!9460 call!148122)) (c!386297 (ite c!386296 lt!875610 (Concat!11756 lt!875614 EmptyExpr!7120))))))))

(declare-fun b!2423058 () Bool)

(assert (=> b!2423058 (= e!1541458 (nullable!2155 (ite c!386296 lt!875610 (Concat!11756 lt!875614 EmptyExpr!7120))))))

(declare-fun b!2423059 () Bool)

(declare-fun e!1541456 () Bool)

(assert (=> b!2423059 (= e!1541456 e!1541457)))

(declare-fun c!386352 () Bool)

(assert (=> b!2423059 (= c!386352 (is-EmptyLang!7120 (ite c!386296 lt!875610 (Concat!11756 lt!875614 EmptyExpr!7120))))))

(declare-fun b!2423060 () Bool)

(assert (=> b!2423060 (= e!1541456 (= lt!875681 call!148161))))

(declare-fun b!2423061 () Bool)

(declare-fun res!1029105 () Bool)

(assert (=> b!2423061 (=> res!1029105 e!1541453)))

(assert (=> b!2423061 (= res!1029105 (not (isEmpty!16407 (tail!3726 (ite c!386296 s!9460 call!148122)))))))

(declare-fun b!2423062 () Bool)

(declare-fun e!1541454 () Bool)

(assert (=> b!2423062 (= e!1541454 e!1541453)))

(declare-fun res!1029103 () Bool)

(assert (=> b!2423062 (=> res!1029103 e!1541453)))

(assert (=> b!2423062 (= res!1029103 call!148161)))

(declare-fun d!702119 () Bool)

(assert (=> d!702119 e!1541456))

(declare-fun c!386354 () Bool)

(assert (=> d!702119 (= c!386354 (is-EmptyExpr!7120 (ite c!386296 lt!875610 (Concat!11756 lt!875614 EmptyExpr!7120))))))

(assert (=> d!702119 (= lt!875681 e!1541458)))

(declare-fun c!386353 () Bool)

(assert (=> d!702119 (= c!386353 (isEmpty!16407 (ite c!386296 s!9460 call!148122)))))

(assert (=> d!702119 (validRegex!2840 (ite c!386296 lt!875610 (Concat!11756 lt!875614 EmptyExpr!7120)))))

(assert (=> d!702119 (= (matchR!3237 (ite c!386296 lt!875610 (Concat!11756 lt!875614 EmptyExpr!7120)) (ite c!386296 s!9460 call!148122)) lt!875681)))

(declare-fun bm!148156 () Bool)

(assert (=> bm!148156 (= call!148161 (isEmpty!16407 (ite c!386296 s!9460 call!148122)))))

(declare-fun b!2423063 () Bool)

(declare-fun res!1029107 () Bool)

(assert (=> b!2423063 (=> (not res!1029107) (not e!1541455))))

(assert (=> b!2423063 (= res!1029107 (isEmpty!16407 (tail!3726 (ite c!386296 s!9460 call!148122))))))

(declare-fun b!2423064 () Bool)

(assert (=> b!2423064 (= e!1541455 (= (head!5454 (ite c!386296 s!9460 call!148122)) (c!386297 (ite c!386296 lt!875610 (Concat!11756 lt!875614 EmptyExpr!7120)))))))

(declare-fun b!2423065 () Bool)

(assert (=> b!2423065 (= e!1541452 e!1541454)))

(declare-fun res!1029106 () Bool)

(assert (=> b!2423065 (=> (not res!1029106) (not e!1541454))))

(assert (=> b!2423065 (= res!1029106 (not lt!875681))))

(declare-fun b!2423066 () Bool)

(declare-fun res!1029104 () Bool)

(assert (=> b!2423066 (=> res!1029104 e!1541452)))

(assert (=> b!2423066 (= res!1029104 e!1541455)))

(declare-fun res!1029108 () Bool)

(assert (=> b!2423066 (=> (not res!1029108) (not e!1541455))))

(assert (=> b!2423066 (= res!1029108 lt!875681)))

(assert (= (and d!702119 c!386353) b!2423058))

(assert (= (and d!702119 (not c!386353)) b!2423056))

(assert (= (and d!702119 c!386354) b!2423060))

(assert (= (and d!702119 (not c!386354)) b!2423059))

(assert (= (and b!2423059 c!386352) b!2423054))

(assert (= (and b!2423059 (not c!386352)) b!2423053))

(assert (= (and b!2423053 (not res!1029109)) b!2423066))

(assert (= (and b!2423066 res!1029108) b!2423055))

(assert (= (and b!2423055 res!1029110) b!2423063))

(assert (= (and b!2423063 res!1029107) b!2423064))

(assert (= (and b!2423066 (not res!1029104)) b!2423065))

(assert (= (and b!2423065 res!1029106) b!2423062))

(assert (= (and b!2423062 (not res!1029103)) b!2423061))

(assert (= (and b!2423061 (not res!1029105)) b!2423057))

(assert (= (or b!2423060 b!2423055 b!2423062) bm!148156))

(declare-fun m!2809089 () Bool)

(assert (=> d!702119 m!2809089))

(declare-fun m!2809091 () Bool)

(assert (=> d!702119 m!2809091))

(declare-fun m!2809093 () Bool)

(assert (=> b!2423057 m!2809093))

(assert (=> bm!148156 m!2809089))

(declare-fun m!2809095 () Bool)

(assert (=> b!2423058 m!2809095))

(assert (=> b!2423064 m!2809093))

(assert (=> b!2423056 m!2809093))

(assert (=> b!2423056 m!2809093))

(declare-fun m!2809097 () Bool)

(assert (=> b!2423056 m!2809097))

(declare-fun m!2809099 () Bool)

(assert (=> b!2423056 m!2809099))

(assert (=> b!2423056 m!2809097))

(assert (=> b!2423056 m!2809099))

(declare-fun m!2809101 () Bool)

(assert (=> b!2423056 m!2809101))

(assert (=> b!2423063 m!2809099))

(assert (=> b!2423063 m!2809099))

(declare-fun m!2809103 () Bool)

(assert (=> b!2423063 m!2809103))

(assert (=> b!2423061 m!2809099))

(assert (=> b!2423061 m!2809099))

(assert (=> b!2423061 m!2809103))

(assert (=> bm!148117 d!702119))

(declare-fun d!702121 () Bool)

(assert (=> d!702121 (matchR!3237 (Concat!11756 lt!875614 EmptyExpr!7120) (++!7041 s!9460 Nil!28380))))

(declare-fun lt!875684 () Unit!41579)

(declare-fun choose!14346 (Regex!7120 Regex!7120 List!28478 List!28478) Unit!41579)

(assert (=> d!702121 (= lt!875684 (choose!14346 lt!875614 EmptyExpr!7120 s!9460 Nil!28380))))

(declare-fun e!1541468 () Bool)

(assert (=> d!702121 e!1541468))

(declare-fun res!1029116 () Bool)

(assert (=> d!702121 (=> (not res!1029116) (not e!1541468))))

(assert (=> d!702121 (= res!1029116 (validRegex!2840 lt!875614))))

(assert (=> d!702121 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!95 lt!875614 EmptyExpr!7120 s!9460 Nil!28380) lt!875684)))

(declare-fun b!2423080 () Bool)

(assert (=> b!2423080 (= e!1541468 (validRegex!2840 EmptyExpr!7120))))

(assert (= (and d!702121 res!1029116) b!2423080))

(declare-fun m!2809105 () Bool)

(assert (=> d!702121 m!2809105))

(assert (=> d!702121 m!2809105))

(declare-fun m!2809107 () Bool)

(assert (=> d!702121 m!2809107))

(declare-fun m!2809109 () Bool)

(assert (=> d!702121 m!2809109))

(assert (=> d!702121 m!2809017))

(declare-fun m!2809111 () Bool)

(assert (=> b!2423080 m!2809111))

(assert (=> b!2422808 d!702121))

(declare-fun b!2423083 () Bool)

(declare-fun res!1029123 () Bool)

(declare-fun e!1541469 () Bool)

(assert (=> b!2423083 (=> res!1029123 e!1541469)))

(assert (=> b!2423083 (= res!1029123 (not (is-ElementMatch!7120 lt!875610)))))

(declare-fun e!1541474 () Bool)

(assert (=> b!2423083 (= e!1541474 e!1541469)))

(declare-fun b!2423084 () Bool)

(declare-fun lt!875685 () Bool)

(assert (=> b!2423084 (= e!1541474 (not lt!875685))))

(declare-fun b!2423085 () Bool)

(declare-fun res!1029124 () Bool)

(declare-fun e!1541472 () Bool)

(assert (=> b!2423085 (=> (not res!1029124) (not e!1541472))))

(declare-fun call!148164 () Bool)

(assert (=> b!2423085 (= res!1029124 (not call!148164))))

(declare-fun b!2423086 () Bool)

(declare-fun e!1541475 () Bool)

(assert (=> b!2423086 (= e!1541475 (matchR!3237 (derivativeStep!1812 lt!875610 (head!5454 call!148122)) (tail!3726 call!148122)))))

(declare-fun b!2423087 () Bool)

(declare-fun e!1541470 () Bool)

(assert (=> b!2423087 (= e!1541470 (not (= (head!5454 call!148122) (c!386297 lt!875610))))))

(declare-fun b!2423088 () Bool)

(assert (=> b!2423088 (= e!1541475 (nullable!2155 lt!875610))))

(declare-fun b!2423089 () Bool)

(declare-fun e!1541473 () Bool)

(assert (=> b!2423089 (= e!1541473 e!1541474)))

(declare-fun c!386359 () Bool)

(assert (=> b!2423089 (= c!386359 (is-EmptyLang!7120 lt!875610))))

(declare-fun b!2423090 () Bool)

(assert (=> b!2423090 (= e!1541473 (= lt!875685 call!148164))))

(declare-fun b!2423091 () Bool)

(declare-fun res!1029119 () Bool)

(assert (=> b!2423091 (=> res!1029119 e!1541470)))

(assert (=> b!2423091 (= res!1029119 (not (isEmpty!16407 (tail!3726 call!148122))))))

(declare-fun b!2423092 () Bool)

(declare-fun e!1541471 () Bool)

(assert (=> b!2423092 (= e!1541471 e!1541470)))

(declare-fun res!1029117 () Bool)

(assert (=> b!2423092 (=> res!1029117 e!1541470)))

(assert (=> b!2423092 (= res!1029117 call!148164)))

(declare-fun d!702123 () Bool)

(assert (=> d!702123 e!1541473))

(declare-fun c!386361 () Bool)

(assert (=> d!702123 (= c!386361 (is-EmptyExpr!7120 lt!875610))))

(assert (=> d!702123 (= lt!875685 e!1541475)))

(declare-fun c!386360 () Bool)

(assert (=> d!702123 (= c!386360 (isEmpty!16407 call!148122))))

(assert (=> d!702123 (validRegex!2840 lt!875610)))

(assert (=> d!702123 (= (matchR!3237 lt!875610 call!148122) lt!875685)))

(declare-fun bm!148159 () Bool)

(assert (=> bm!148159 (= call!148164 (isEmpty!16407 call!148122))))

(declare-fun b!2423093 () Bool)

(declare-fun res!1029121 () Bool)

(assert (=> b!2423093 (=> (not res!1029121) (not e!1541472))))

(assert (=> b!2423093 (= res!1029121 (isEmpty!16407 (tail!3726 call!148122)))))

(declare-fun b!2423094 () Bool)

(assert (=> b!2423094 (= e!1541472 (= (head!5454 call!148122) (c!386297 lt!875610)))))

(declare-fun b!2423095 () Bool)

(assert (=> b!2423095 (= e!1541469 e!1541471)))

(declare-fun res!1029120 () Bool)

(assert (=> b!2423095 (=> (not res!1029120) (not e!1541471))))

(assert (=> b!2423095 (= res!1029120 (not lt!875685))))

(declare-fun b!2423096 () Bool)

(declare-fun res!1029118 () Bool)

(assert (=> b!2423096 (=> res!1029118 e!1541469)))

(assert (=> b!2423096 (= res!1029118 e!1541472)))

(declare-fun res!1029122 () Bool)

(assert (=> b!2423096 (=> (not res!1029122) (not e!1541472))))

(assert (=> b!2423096 (= res!1029122 lt!875685)))

(assert (= (and d!702123 c!386360) b!2423088))

(assert (= (and d!702123 (not c!386360)) b!2423086))

(assert (= (and d!702123 c!386361) b!2423090))

(assert (= (and d!702123 (not c!386361)) b!2423089))

(assert (= (and b!2423089 c!386359) b!2423084))

(assert (= (and b!2423089 (not c!386359)) b!2423083))

(assert (= (and b!2423083 (not res!1029123)) b!2423096))

(assert (= (and b!2423096 res!1029122) b!2423085))

(assert (= (and b!2423085 res!1029124) b!2423093))

(assert (= (and b!2423093 res!1029121) b!2423094))

(assert (= (and b!2423096 (not res!1029118)) b!2423095))

(assert (= (and b!2423095 res!1029120) b!2423092))

(assert (= (and b!2423092 (not res!1029117)) b!2423091))

(assert (= (and b!2423091 (not res!1029119)) b!2423087))

(assert (= (or b!2423090 b!2423085 b!2423092) bm!148159))

(declare-fun m!2809113 () Bool)

(assert (=> d!702123 m!2809113))

(declare-fun m!2809115 () Bool)

(assert (=> d!702123 m!2809115))

(declare-fun m!2809117 () Bool)

(assert (=> b!2423087 m!2809117))

(assert (=> bm!148159 m!2809113))

(declare-fun m!2809119 () Bool)

(assert (=> b!2423088 m!2809119))

(assert (=> b!2423094 m!2809117))

(assert (=> b!2423086 m!2809117))

(assert (=> b!2423086 m!2809117))

(declare-fun m!2809121 () Bool)

(assert (=> b!2423086 m!2809121))

(declare-fun m!2809123 () Bool)

(assert (=> b!2423086 m!2809123))

(assert (=> b!2423086 m!2809121))

(assert (=> b!2423086 m!2809123))

(declare-fun m!2809125 () Bool)

(assert (=> b!2423086 m!2809125))

(assert (=> b!2423093 m!2809123))

(assert (=> b!2423093 m!2809123))

(declare-fun m!2809127 () Bool)

(assert (=> b!2423093 m!2809127))

(assert (=> b!2423091 m!2809123))

(assert (=> b!2423091 m!2809123))

(assert (=> b!2423091 m!2809127))

(assert (=> b!2422808 d!702123))

(declare-fun d!702125 () Bool)

(assert (=> d!702125 (isDefined!4447 (findConcatSeparation!729 lt!875614 EmptyExpr!7120 Nil!28380 s!9460 s!9460))))

(declare-fun lt!875688 () Unit!41579)

(declare-fun choose!14347 (Regex!7120 Regex!7120 List!28478) Unit!41579)

(assert (=> d!702125 (= lt!875688 (choose!14347 lt!875614 EmptyExpr!7120 s!9460))))

(assert (=> d!702125 (validRegex!2840 lt!875614)))

(assert (=> d!702125 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!69 lt!875614 EmptyExpr!7120 s!9460) lt!875688)))

(declare-fun bs!463796 () Bool)

(assert (= bs!463796 d!702125))

(declare-fun m!2809135 () Bool)

(assert (=> bs!463796 m!2809135))

(assert (=> bs!463796 m!2809135))

(declare-fun m!2809137 () Bool)

(assert (=> bs!463796 m!2809137))

(declare-fun m!2809139 () Bool)

(assert (=> bs!463796 m!2809139))

(assert (=> bs!463796 m!2809017))

(assert (=> b!2422808 d!702125))

(declare-fun d!702129 () Bool)

(assert (=> d!702129 (= (isEmpty!16407 s!9460) (is-Nil!28380 s!9460))))

(assert (=> b!2422798 d!702129))

(declare-fun d!702131 () Bool)

(assert (=> d!702131 (= (isEmpty!16406 lt!875603) (is-Nil!28381 lt!875603))))

(assert (=> b!2422806 d!702131))

(declare-fun d!702133 () Bool)

(assert (=> d!702133 (= (tail!3724 l!9164) (t!208456 l!9164))))

(assert (=> b!2422806 d!702133))

(declare-fun d!702135 () Bool)

(assert (=> d!702135 (= (isDefined!4447 (findConcatSeparation!729 (h!33782 l!9164) (generalisedConcat!221 (t!208456 l!9164)) Nil!28380 s!9460 s!9460)) (not (isEmpty!16410 (findConcatSeparation!729 (h!33782 l!9164) (generalisedConcat!221 (t!208456 l!9164)) Nil!28380 s!9460 s!9460))))))

(declare-fun bs!463797 () Bool)

(assert (= bs!463797 d!702135))

(assert (=> bs!463797 m!2808929))

(declare-fun m!2809141 () Bool)

(assert (=> bs!463797 m!2809141))

(assert (=> b!2422797 d!702135))

(declare-fun b!2423099 () Bool)

(declare-fun e!1541476 () Bool)

(declare-fun lt!875691 () Option!5621)

(assert (=> b!2423099 (= e!1541476 (not (isDefined!4447 lt!875691)))))

(declare-fun b!2423100 () Bool)

(declare-fun e!1541480 () Option!5621)

(assert (=> b!2423100 (= e!1541480 None!5620)))

(declare-fun b!2423101 () Bool)

(declare-fun lt!875689 () Unit!41579)

(declare-fun lt!875690 () Unit!41579)

(assert (=> b!2423101 (= lt!875689 lt!875690)))

(assert (=> b!2423101 (= (++!7041 (++!7041 Nil!28380 (Cons!28380 (h!33781 s!9460) Nil!28380)) (t!208455 s!9460)) s!9460)))

(assert (=> b!2423101 (= lt!875690 (lemmaMoveElementToOtherListKeepsConcatEq!667 Nil!28380 (h!33781 s!9460) (t!208455 s!9460) s!9460))))

(assert (=> b!2423101 (= e!1541480 (findConcatSeparation!729 (h!33782 l!9164) (generalisedConcat!221 (t!208456 l!9164)) (++!7041 Nil!28380 (Cons!28380 (h!33781 s!9460) Nil!28380)) (t!208455 s!9460) s!9460))))

(declare-fun b!2423103 () Bool)

(declare-fun e!1541479 () Option!5621)

(assert (=> b!2423103 (= e!1541479 (Some!5620 (tuple2!28021 Nil!28380 s!9460)))))

(declare-fun b!2423104 () Bool)

(declare-fun res!1029125 () Bool)

(declare-fun e!1541477 () Bool)

(assert (=> b!2423104 (=> (not res!1029125) (not e!1541477))))

(assert (=> b!2423104 (= res!1029125 (matchR!3237 (generalisedConcat!221 (t!208456 l!9164)) (_2!16551 (get!8733 lt!875691))))))

(declare-fun b!2423105 () Bool)

(assert (=> b!2423105 (= e!1541479 e!1541480)))

(declare-fun c!386362 () Bool)

(assert (=> b!2423105 (= c!386362 (is-Nil!28380 s!9460))))

(declare-fun d!702137 () Bool)

(assert (=> d!702137 e!1541476))

(declare-fun res!1029127 () Bool)

(assert (=> d!702137 (=> res!1029127 e!1541476)))

(assert (=> d!702137 (= res!1029127 e!1541477)))

(declare-fun res!1029128 () Bool)

(assert (=> d!702137 (=> (not res!1029128) (not e!1541477))))

(assert (=> d!702137 (= res!1029128 (isDefined!4447 lt!875691))))

(assert (=> d!702137 (= lt!875691 e!1541479)))

(declare-fun c!386363 () Bool)

(declare-fun e!1541478 () Bool)

(assert (=> d!702137 (= c!386363 e!1541478)))

(declare-fun res!1029126 () Bool)

(assert (=> d!702137 (=> (not res!1029126) (not e!1541478))))

(assert (=> d!702137 (= res!1029126 (matchR!3237 (h!33782 l!9164) Nil!28380))))

(assert (=> d!702137 (validRegex!2840 (h!33782 l!9164))))

(assert (=> d!702137 (= (findConcatSeparation!729 (h!33782 l!9164) (generalisedConcat!221 (t!208456 l!9164)) Nil!28380 s!9460 s!9460) lt!875691)))

(declare-fun b!2423102 () Bool)

(assert (=> b!2423102 (= e!1541477 (= (++!7041 (_1!16551 (get!8733 lt!875691)) (_2!16551 (get!8733 lt!875691))) s!9460))))

(declare-fun b!2423106 () Bool)

(assert (=> b!2423106 (= e!1541478 (matchR!3237 (generalisedConcat!221 (t!208456 l!9164)) s!9460))))

(declare-fun b!2423107 () Bool)

(declare-fun res!1029129 () Bool)

(assert (=> b!2423107 (=> (not res!1029129) (not e!1541477))))

(assert (=> b!2423107 (= res!1029129 (matchR!3237 (h!33782 l!9164) (_1!16551 (get!8733 lt!875691))))))

(assert (= (and d!702137 res!1029126) b!2423106))

(assert (= (and d!702137 c!386363) b!2423103))

(assert (= (and d!702137 (not c!386363)) b!2423105))

(assert (= (and b!2423105 c!386362) b!2423100))

(assert (= (and b!2423105 (not c!386362)) b!2423101))

(assert (= (and d!702137 res!1029128) b!2423107))

(assert (= (and b!2423107 res!1029129) b!2423104))

(assert (= (and b!2423104 res!1029125) b!2423102))

(assert (= (and d!702137 (not res!1029127)) b!2423099))

(declare-fun m!2809143 () Bool)

(assert (=> b!2423107 m!2809143))

(declare-fun m!2809145 () Bool)

(assert (=> b!2423107 m!2809145))

(assert (=> b!2423104 m!2809143))

(assert (=> b!2423104 m!2808927))

(declare-fun m!2809147 () Bool)

(assert (=> b!2423104 m!2809147))

(declare-fun m!2809149 () Bool)

(assert (=> b!2423099 m!2809149))

(assert (=> d!702137 m!2809149))

(declare-fun m!2809151 () Bool)

(assert (=> d!702137 m!2809151))

(declare-fun m!2809153 () Bool)

(assert (=> d!702137 m!2809153))

(assert (=> b!2423101 m!2809057))

(assert (=> b!2423101 m!2809057))

(assert (=> b!2423101 m!2809059))

(assert (=> b!2423101 m!2809061))

(assert (=> b!2423101 m!2808927))

(assert (=> b!2423101 m!2809057))

(declare-fun m!2809155 () Bool)

(assert (=> b!2423101 m!2809155))

(assert (=> b!2423102 m!2809143))

(declare-fun m!2809157 () Bool)

(assert (=> b!2423102 m!2809157))

(assert (=> b!2423106 m!2808927))

(declare-fun m!2809159 () Bool)

(assert (=> b!2423106 m!2809159))

(assert (=> b!2422797 d!702137))

(declare-fun bs!463798 () Bool)

(declare-fun d!702139 () Bool)

(assert (= bs!463798 (and d!702139 start!237318)))

(declare-fun lambda!91263 () Int)

(assert (=> bs!463798 (= lambda!91263 lambda!91250)))

(declare-fun bs!463799 () Bool)

(assert (= bs!463799 (and d!702139 d!702093)))

(assert (=> bs!463799 (= lambda!91263 lambda!91256)))

(declare-fun b!2423108 () Bool)

(declare-fun e!1541486 () Bool)

(declare-fun e!1541482 () Bool)

(assert (=> b!2423108 (= e!1541486 e!1541482)))

(declare-fun c!386364 () Bool)

(assert (=> b!2423108 (= c!386364 (isEmpty!16406 (tail!3724 (t!208456 l!9164))))))

(declare-fun b!2423109 () Bool)

(declare-fun e!1541485 () Bool)

(assert (=> b!2423109 (= e!1541485 e!1541486)))

(declare-fun c!386367 () Bool)

(assert (=> b!2423109 (= c!386367 (isEmpty!16406 (t!208456 l!9164)))))

(declare-fun b!2423110 () Bool)

(declare-fun e!1541484 () Regex!7120)

(assert (=> b!2423110 (= e!1541484 (Concat!11756 (h!33782 (t!208456 l!9164)) (generalisedConcat!221 (t!208456 (t!208456 l!9164)))))))

(declare-fun b!2423111 () Bool)

(declare-fun lt!875692 () Regex!7120)

(assert (=> b!2423111 (= e!1541482 (isConcat!175 lt!875692))))

(assert (=> d!702139 e!1541485))

(declare-fun res!1029131 () Bool)

(assert (=> d!702139 (=> (not res!1029131) (not e!1541485))))

(assert (=> d!702139 (= res!1029131 (validRegex!2840 lt!875692))))

(declare-fun e!1541481 () Regex!7120)

(assert (=> d!702139 (= lt!875692 e!1541481)))

(declare-fun c!386366 () Bool)

(declare-fun e!1541483 () Bool)

(assert (=> d!702139 (= c!386366 e!1541483)))

(declare-fun res!1029130 () Bool)

(assert (=> d!702139 (=> (not res!1029130) (not e!1541483))))

(assert (=> d!702139 (= res!1029130 (is-Cons!28381 (t!208456 l!9164)))))

(assert (=> d!702139 (forall!5754 (t!208456 l!9164) lambda!91263)))

(assert (=> d!702139 (= (generalisedConcat!221 (t!208456 l!9164)) lt!875692)))

(declare-fun b!2423112 () Bool)

(assert (=> b!2423112 (= e!1541486 (isEmptyExpr!175 lt!875692))))

(declare-fun b!2423113 () Bool)

(assert (=> b!2423113 (= e!1541482 (= lt!875692 (head!5452 (t!208456 l!9164))))))

(declare-fun b!2423114 () Bool)

(assert (=> b!2423114 (= e!1541481 e!1541484)))

(declare-fun c!386365 () Bool)

(assert (=> b!2423114 (= c!386365 (is-Cons!28381 (t!208456 l!9164)))))

(declare-fun b!2423115 () Bool)

(assert (=> b!2423115 (= e!1541483 (isEmpty!16406 (t!208456 (t!208456 l!9164))))))

(declare-fun b!2423116 () Bool)

(assert (=> b!2423116 (= e!1541484 EmptyExpr!7120)))

(declare-fun b!2423117 () Bool)

(assert (=> b!2423117 (= e!1541481 (h!33782 (t!208456 l!9164)))))

(assert (= (and d!702139 res!1029130) b!2423115))

(assert (= (and d!702139 c!386366) b!2423117))

(assert (= (and d!702139 (not c!386366)) b!2423114))

(assert (= (and b!2423114 c!386365) b!2423110))

(assert (= (and b!2423114 (not c!386365)) b!2423116))

(assert (= (and d!702139 res!1029131) b!2423109))

(assert (= (and b!2423109 c!386367) b!2423112))

(assert (= (and b!2423109 (not c!386367)) b!2423108))

(assert (= (and b!2423108 c!386364) b!2423113))

(assert (= (and b!2423108 (not c!386364)) b!2423111))

(declare-fun m!2809161 () Bool)

(assert (=> b!2423115 m!2809161))

(declare-fun m!2809163 () Bool)

(assert (=> b!2423113 m!2809163))

(declare-fun m!2809165 () Bool)

(assert (=> b!2423110 m!2809165))

(declare-fun m!2809167 () Bool)

(assert (=> d!702139 m!2809167))

(declare-fun m!2809169 () Bool)

(assert (=> d!702139 m!2809169))

(declare-fun m!2809171 () Bool)

(assert (=> b!2423111 m!2809171))

(declare-fun m!2809173 () Bool)

(assert (=> b!2423108 m!2809173))

(assert (=> b!2423108 m!2809173))

(declare-fun m!2809175 () Bool)

(assert (=> b!2423108 m!2809175))

(assert (=> b!2423109 m!2809005))

(declare-fun m!2809177 () Bool)

(assert (=> b!2423112 m!2809177))

(assert (=> b!2422797 d!702139))

(declare-fun b!2423118 () Bool)

(declare-fun e!1541487 () Bool)

(declare-fun lt!875695 () Option!5621)

(assert (=> b!2423118 (= e!1541487 (not (isDefined!4447 lt!875695)))))

(declare-fun b!2423119 () Bool)

(declare-fun e!1541491 () Option!5621)

(assert (=> b!2423119 (= e!1541491 None!5620)))

(declare-fun b!2423120 () Bool)

(declare-fun lt!875693 () Unit!41579)

(declare-fun lt!875694 () Unit!41579)

(assert (=> b!2423120 (= lt!875693 lt!875694)))

(assert (=> b!2423120 (= (++!7041 (++!7041 Nil!28380 (Cons!28380 (h!33781 s!9460) Nil!28380)) (t!208455 s!9460)) s!9460)))

(assert (=> b!2423120 (= lt!875694 (lemmaMoveElementToOtherListKeepsConcatEq!667 Nil!28380 (h!33781 s!9460) (t!208455 s!9460) s!9460))))

(assert (=> b!2423120 (= e!1541491 (findConcatSeparation!729 lt!875614 (ite c!386296 EmptyExpr!7120 lt!875609) (++!7041 Nil!28380 (Cons!28380 (h!33781 s!9460) Nil!28380)) (t!208455 s!9460) s!9460))))

(declare-fun b!2423122 () Bool)

(declare-fun e!1541490 () Option!5621)

(assert (=> b!2423122 (= e!1541490 (Some!5620 (tuple2!28021 Nil!28380 s!9460)))))

(declare-fun b!2423123 () Bool)

(declare-fun res!1029132 () Bool)

(declare-fun e!1541488 () Bool)

(assert (=> b!2423123 (=> (not res!1029132) (not e!1541488))))

(assert (=> b!2423123 (= res!1029132 (matchR!3237 (ite c!386296 EmptyExpr!7120 lt!875609) (_2!16551 (get!8733 lt!875695))))))

(declare-fun b!2423124 () Bool)

(assert (=> b!2423124 (= e!1541490 e!1541491)))

(declare-fun c!386368 () Bool)

(assert (=> b!2423124 (= c!386368 (is-Nil!28380 s!9460))))

(declare-fun d!702141 () Bool)

(assert (=> d!702141 e!1541487))

(declare-fun res!1029134 () Bool)

(assert (=> d!702141 (=> res!1029134 e!1541487)))

(assert (=> d!702141 (= res!1029134 e!1541488)))

(declare-fun res!1029135 () Bool)

(assert (=> d!702141 (=> (not res!1029135) (not e!1541488))))

(assert (=> d!702141 (= res!1029135 (isDefined!4447 lt!875695))))

(assert (=> d!702141 (= lt!875695 e!1541490)))

(declare-fun c!386369 () Bool)

(declare-fun e!1541489 () Bool)

(assert (=> d!702141 (= c!386369 e!1541489)))

(declare-fun res!1029133 () Bool)

(assert (=> d!702141 (=> (not res!1029133) (not e!1541489))))

(assert (=> d!702141 (= res!1029133 (matchR!3237 lt!875614 Nil!28380))))

(assert (=> d!702141 (validRegex!2840 lt!875614)))

(assert (=> d!702141 (= (findConcatSeparation!729 lt!875614 (ite c!386296 EmptyExpr!7120 lt!875609) Nil!28380 s!9460 s!9460) lt!875695)))

(declare-fun b!2423121 () Bool)

(assert (=> b!2423121 (= e!1541488 (= (++!7041 (_1!16551 (get!8733 lt!875695)) (_2!16551 (get!8733 lt!875695))) s!9460))))

(declare-fun b!2423125 () Bool)

(assert (=> b!2423125 (= e!1541489 (matchR!3237 (ite c!386296 EmptyExpr!7120 lt!875609) s!9460))))

(declare-fun b!2423126 () Bool)

(declare-fun res!1029136 () Bool)

(assert (=> b!2423126 (=> (not res!1029136) (not e!1541488))))

(assert (=> b!2423126 (= res!1029136 (matchR!3237 lt!875614 (_1!16551 (get!8733 lt!875695))))))

(assert (= (and d!702141 res!1029133) b!2423125))

(assert (= (and d!702141 c!386369) b!2423122))

(assert (= (and d!702141 (not c!386369)) b!2423124))

(assert (= (and b!2423124 c!386368) b!2423119))

(assert (= (and b!2423124 (not c!386368)) b!2423120))

(assert (= (and d!702141 res!1029135) b!2423126))

(assert (= (and b!2423126 res!1029136) b!2423123))

(assert (= (and b!2423123 res!1029132) b!2423121))

(assert (= (and d!702141 (not res!1029134)) b!2423118))

(declare-fun m!2809179 () Bool)

(assert (=> b!2423126 m!2809179))

(declare-fun m!2809181 () Bool)

(assert (=> b!2423126 m!2809181))

(assert (=> b!2423123 m!2809179))

(declare-fun m!2809183 () Bool)

(assert (=> b!2423123 m!2809183))

(declare-fun m!2809185 () Bool)

(assert (=> b!2423118 m!2809185))

(assert (=> d!702141 m!2809185))

(assert (=> d!702141 m!2809055))

(assert (=> d!702141 m!2809017))

(assert (=> b!2423120 m!2809057))

(assert (=> b!2423120 m!2809057))

(assert (=> b!2423120 m!2809059))

(assert (=> b!2423120 m!2809061))

(assert (=> b!2423120 m!2809057))

(declare-fun m!2809187 () Bool)

(assert (=> b!2423120 m!2809187))

(assert (=> b!2423121 m!2809179))

(declare-fun m!2809189 () Bool)

(assert (=> b!2423121 m!2809189))

(declare-fun m!2809191 () Bool)

(assert (=> b!2423125 m!2809191))

(assert (=> bm!148118 d!702141))

(declare-fun b!2423196 () Bool)

(assert (=> b!2423196 true))

(assert (=> b!2423196 true))

(declare-fun bs!463800 () Bool)

(declare-fun b!2423188 () Bool)

(assert (= bs!463800 (and b!2423188 b!2423196)))

(declare-fun lambda!91269 () Int)

(declare-fun lambda!91268 () Int)

(assert (=> bs!463800 (not (= lambda!91269 lambda!91268))))

(assert (=> b!2423188 true))

(assert (=> b!2423188 true))

(declare-fun b!2423187 () Bool)

(declare-fun c!386385 () Bool)

(assert (=> b!2423187 (= c!386385 (is-Union!7120 r!13927))))

(declare-fun e!1541525 () Bool)

(declare-fun e!1541529 () Bool)

(assert (=> b!2423187 (= e!1541525 e!1541529)))

(declare-fun e!1541527 () Bool)

(declare-fun call!148171 () Bool)

(assert (=> b!2423188 (= e!1541527 call!148171)))

(declare-fun b!2423189 () Bool)

(declare-fun e!1541530 () Bool)

(declare-fun call!148172 () Bool)

(assert (=> b!2423189 (= e!1541530 call!148172)))

(declare-fun b!2423190 () Bool)

(assert (=> b!2423190 (= e!1541529 e!1541527)))

(declare-fun c!386386 () Bool)

(assert (=> b!2423190 (= c!386386 (is-Star!7120 r!13927))))

(declare-fun bm!148166 () Bool)

(assert (=> bm!148166 (= call!148172 (isEmpty!16407 s!9460))))

(declare-fun b!2423191 () Bool)

(declare-fun res!1029171 () Bool)

(declare-fun e!1541528 () Bool)

(assert (=> b!2423191 (=> res!1029171 e!1541528)))

(assert (=> b!2423191 (= res!1029171 call!148172)))

(assert (=> b!2423191 (= e!1541527 e!1541528)))

(declare-fun d!702143 () Bool)

(declare-fun c!386384 () Bool)

(assert (=> d!702143 (= c!386384 (is-EmptyExpr!7120 r!13927))))

(assert (=> d!702143 (= (matchRSpec!969 r!13927 s!9460) e!1541530)))

(declare-fun b!2423192 () Bool)

(declare-fun c!386387 () Bool)

(assert (=> b!2423192 (= c!386387 (is-ElementMatch!7120 r!13927))))

(declare-fun e!1541524 () Bool)

(assert (=> b!2423192 (= e!1541524 e!1541525)))

(declare-fun b!2423193 () Bool)

(declare-fun e!1541526 () Bool)

(assert (=> b!2423193 (= e!1541526 (matchRSpec!969 (regTwo!14753 r!13927) s!9460))))

(declare-fun b!2423194 () Bool)

(assert (=> b!2423194 (= e!1541525 (= s!9460 (Cons!28380 (c!386297 r!13927) Nil!28380)))))

(declare-fun b!2423195 () Bool)

(assert (=> b!2423195 (= e!1541529 e!1541526)))

(declare-fun res!1029169 () Bool)

(assert (=> b!2423195 (= res!1029169 (matchRSpec!969 (regOne!14753 r!13927) s!9460))))

(assert (=> b!2423195 (=> res!1029169 e!1541526)))

(assert (=> b!2423196 (= e!1541528 call!148171)))

(declare-fun b!2423197 () Bool)

(assert (=> b!2423197 (= e!1541530 e!1541524)))

(declare-fun res!1029170 () Bool)

(assert (=> b!2423197 (= res!1029170 (not (is-EmptyLang!7120 r!13927)))))

(assert (=> b!2423197 (=> (not res!1029170) (not e!1541524))))

(declare-fun bm!148167 () Bool)

(declare-fun Exists!1160 (Int) Bool)

(assert (=> bm!148167 (= call!148171 (Exists!1160 (ite c!386386 lambda!91268 lambda!91269)))))

(assert (= (and d!702143 c!386384) b!2423189))

(assert (= (and d!702143 (not c!386384)) b!2423197))

(assert (= (and b!2423197 res!1029170) b!2423192))

(assert (= (and b!2423192 c!386387) b!2423194))

(assert (= (and b!2423192 (not c!386387)) b!2423187))

(assert (= (and b!2423187 c!386385) b!2423195))

(assert (= (and b!2423187 (not c!386385)) b!2423190))

(assert (= (and b!2423195 (not res!1029169)) b!2423193))

(assert (= (and b!2423190 c!386386) b!2423191))

(assert (= (and b!2423190 (not c!386386)) b!2423188))

(assert (= (and b!2423191 (not res!1029171)) b!2423196))

(assert (= (or b!2423196 b!2423188) bm!148167))

(assert (= (or b!2423189 b!2423191) bm!148166))

(assert (=> bm!148166 m!2808901))

(declare-fun m!2809193 () Bool)

(assert (=> b!2423193 m!2809193))

(declare-fun m!2809195 () Bool)

(assert (=> b!2423195 m!2809195))

(declare-fun m!2809197 () Bool)

(assert (=> bm!148167 m!2809197))

(assert (=> b!2422788 d!702143))

(declare-fun b!2423202 () Bool)

(declare-fun res!1029178 () Bool)

(declare-fun e!1541531 () Bool)

(assert (=> b!2423202 (=> res!1029178 e!1541531)))

(assert (=> b!2423202 (= res!1029178 (not (is-ElementMatch!7120 r!13927)))))

(declare-fun e!1541536 () Bool)

(assert (=> b!2423202 (= e!1541536 e!1541531)))

(declare-fun b!2423203 () Bool)

(declare-fun lt!875698 () Bool)

(assert (=> b!2423203 (= e!1541536 (not lt!875698))))

(declare-fun b!2423204 () Bool)

(declare-fun res!1029179 () Bool)

(declare-fun e!1541534 () Bool)

(assert (=> b!2423204 (=> (not res!1029179) (not e!1541534))))

(declare-fun call!148173 () Bool)

(assert (=> b!2423204 (= res!1029179 (not call!148173))))

(declare-fun b!2423205 () Bool)

(declare-fun e!1541537 () Bool)

(assert (=> b!2423205 (= e!1541537 (matchR!3237 (derivativeStep!1812 r!13927 (head!5454 s!9460)) (tail!3726 s!9460)))))

(declare-fun b!2423206 () Bool)

(declare-fun e!1541532 () Bool)

(assert (=> b!2423206 (= e!1541532 (not (= (head!5454 s!9460) (c!386297 r!13927))))))

(declare-fun b!2423207 () Bool)

(assert (=> b!2423207 (= e!1541537 (nullable!2155 r!13927))))

(declare-fun b!2423208 () Bool)

(declare-fun e!1541535 () Bool)

(assert (=> b!2423208 (= e!1541535 e!1541536)))

(declare-fun c!386388 () Bool)

(assert (=> b!2423208 (= c!386388 (is-EmptyLang!7120 r!13927))))

(declare-fun b!2423209 () Bool)

(assert (=> b!2423209 (= e!1541535 (= lt!875698 call!148173))))

(declare-fun b!2423210 () Bool)

(declare-fun res!1029174 () Bool)

(assert (=> b!2423210 (=> res!1029174 e!1541532)))

(assert (=> b!2423210 (= res!1029174 (not (isEmpty!16407 (tail!3726 s!9460))))))

(declare-fun b!2423211 () Bool)

(declare-fun e!1541533 () Bool)

(assert (=> b!2423211 (= e!1541533 e!1541532)))

(declare-fun res!1029172 () Bool)

(assert (=> b!2423211 (=> res!1029172 e!1541532)))

(assert (=> b!2423211 (= res!1029172 call!148173)))

(declare-fun d!702145 () Bool)

(assert (=> d!702145 e!1541535))

(declare-fun c!386390 () Bool)

(assert (=> d!702145 (= c!386390 (is-EmptyExpr!7120 r!13927))))

(assert (=> d!702145 (= lt!875698 e!1541537)))

(declare-fun c!386389 () Bool)

(assert (=> d!702145 (= c!386389 (isEmpty!16407 s!9460))))

(assert (=> d!702145 (validRegex!2840 r!13927)))

(assert (=> d!702145 (= (matchR!3237 r!13927 s!9460) lt!875698)))

(declare-fun bm!148168 () Bool)

(assert (=> bm!148168 (= call!148173 (isEmpty!16407 s!9460))))

(declare-fun b!2423212 () Bool)

(declare-fun res!1029176 () Bool)

(assert (=> b!2423212 (=> (not res!1029176) (not e!1541534))))

(assert (=> b!2423212 (= res!1029176 (isEmpty!16407 (tail!3726 s!9460)))))

(declare-fun b!2423213 () Bool)

(assert (=> b!2423213 (= e!1541534 (= (head!5454 s!9460) (c!386297 r!13927)))))

(declare-fun b!2423214 () Bool)

(assert (=> b!2423214 (= e!1541531 e!1541533)))

(declare-fun res!1029175 () Bool)

(assert (=> b!2423214 (=> (not res!1029175) (not e!1541533))))

(assert (=> b!2423214 (= res!1029175 (not lt!875698))))

(declare-fun b!2423215 () Bool)

(declare-fun res!1029173 () Bool)

(assert (=> b!2423215 (=> res!1029173 e!1541531)))

(assert (=> b!2423215 (= res!1029173 e!1541534)))

(declare-fun res!1029177 () Bool)

(assert (=> b!2423215 (=> (not res!1029177) (not e!1541534))))

(assert (=> b!2423215 (= res!1029177 lt!875698)))

(assert (= (and d!702145 c!386389) b!2423207))

(assert (= (and d!702145 (not c!386389)) b!2423205))

(assert (= (and d!702145 c!386390) b!2423209))

(assert (= (and d!702145 (not c!386390)) b!2423208))

(assert (= (and b!2423208 c!386388) b!2423203))

(assert (= (and b!2423208 (not c!386388)) b!2423202))

(assert (= (and b!2423202 (not res!1029178)) b!2423215))

(assert (= (and b!2423215 res!1029177) b!2423204))

(assert (= (and b!2423204 res!1029179) b!2423212))

(assert (= (and b!2423212 res!1029176) b!2423213))

(assert (= (and b!2423215 (not res!1029173)) b!2423214))

(assert (= (and b!2423214 res!1029175) b!2423211))

(assert (= (and b!2423211 (not res!1029172)) b!2423210))

(assert (= (and b!2423210 (not res!1029174)) b!2423206))

(assert (= (or b!2423209 b!2423204 b!2423211) bm!148168))

(assert (=> d!702145 m!2808901))

(assert (=> d!702145 m!2808899))

(assert (=> b!2423206 m!2809019))

(assert (=> bm!148168 m!2808901))

(declare-fun m!2809199 () Bool)

(assert (=> b!2423207 m!2809199))

(assert (=> b!2423213 m!2809019))

(assert (=> b!2423205 m!2809019))

(assert (=> b!2423205 m!2809019))

(declare-fun m!2809201 () Bool)

(assert (=> b!2423205 m!2809201))

(assert (=> b!2423205 m!2809025))

(assert (=> b!2423205 m!2809201))

(assert (=> b!2423205 m!2809025))

(declare-fun m!2809203 () Bool)

(assert (=> b!2423205 m!2809203))

(assert (=> b!2423212 m!2809025))

(assert (=> b!2423212 m!2809025))

(assert (=> b!2423212 m!2809029))

(assert (=> b!2423210 m!2809025))

(assert (=> b!2423210 m!2809025))

(assert (=> b!2423210 m!2809029))

(assert (=> b!2422788 d!702145))

(declare-fun d!702147 () Bool)

(assert (=> d!702147 (= (matchR!3237 r!13927 s!9460) (matchRSpec!969 r!13927 s!9460))))

(declare-fun lt!875702 () Unit!41579)

(declare-fun choose!14349 (Regex!7120 List!28478) Unit!41579)

(assert (=> d!702147 (= lt!875702 (choose!14349 r!13927 s!9460))))

(assert (=> d!702147 (validRegex!2840 r!13927)))

(assert (=> d!702147 (= (mainMatchTheorem!969 r!13927 s!9460) lt!875702)))

(declare-fun bs!463801 () Bool)

(assert (= bs!463801 d!702147))

(assert (=> bs!463801 m!2808945))

(assert (=> bs!463801 m!2808943))

(declare-fun m!2809217 () Bool)

(assert (=> bs!463801 m!2809217))

(assert (=> bs!463801 m!2808899))

(assert (=> b!2422788 d!702147))

(declare-fun d!702151 () Bool)

(declare-fun res!1029192 () Bool)

(declare-fun e!1541549 () Bool)

(assert (=> d!702151 (=> res!1029192 e!1541549)))

(assert (=> d!702151 (= res!1029192 (is-Nil!28381 l!9164))))

(assert (=> d!702151 (= (forall!5754 l!9164 lambda!91250) e!1541549)))

(declare-fun b!2423234 () Bool)

(declare-fun e!1541550 () Bool)

(assert (=> b!2423234 (= e!1541549 e!1541550)))

(declare-fun res!1029193 () Bool)

(assert (=> b!2423234 (=> (not res!1029193) (not e!1541550))))

(declare-fun dynLambda!12215 (Int Regex!7120) Bool)

(assert (=> b!2423234 (= res!1029193 (dynLambda!12215 lambda!91250 (h!33782 l!9164)))))

(declare-fun b!2423235 () Bool)

(assert (=> b!2423235 (= e!1541550 (forall!5754 (t!208456 l!9164) lambda!91250))))

(assert (= (and d!702151 (not res!1029192)) b!2423234))

(assert (= (and b!2423234 res!1029193) b!2423235))

(declare-fun b_lambda!74659 () Bool)

(assert (=> (not b_lambda!74659) (not b!2423234)))

(declare-fun m!2809219 () Bool)

(assert (=> b!2423234 m!2809219))

(declare-fun m!2809221 () Bool)

(assert (=> b!2423235 m!2809221))

(assert (=> start!237318 d!702151))

(declare-fun d!702153 () Bool)

(assert (=> d!702153 (= (isDefined!4447 (ite c!386296 call!148124 lt!875608)) (not (isEmpty!16410 (ite c!386296 call!148124 lt!875608))))))

(declare-fun bs!463802 () Bool)

(assert (= bs!463802 d!702153))

(declare-fun m!2809223 () Bool)

(assert (=> bs!463802 m!2809223))

(assert (=> bm!148116 d!702153))

(declare-fun bs!463803 () Bool)

(declare-fun d!702155 () Bool)

(assert (= bs!463803 (and d!702155 start!237318)))

(declare-fun lambda!91270 () Int)

(assert (=> bs!463803 (= lambda!91270 lambda!91250)))

(declare-fun bs!463804 () Bool)

(assert (= bs!463804 (and d!702155 d!702093)))

(assert (=> bs!463804 (= lambda!91270 lambda!91256)))

(declare-fun bs!463805 () Bool)

(assert (= bs!463805 (and d!702155 d!702139)))

(assert (=> bs!463805 (= lambda!91270 lambda!91263)))

(declare-fun b!2423236 () Bool)

(declare-fun e!1541556 () Bool)

(declare-fun e!1541552 () Bool)

(assert (=> b!2423236 (= e!1541556 e!1541552)))

(declare-fun c!386394 () Bool)

(assert (=> b!2423236 (= c!386394 (isEmpty!16406 (tail!3724 lt!875603)))))

(declare-fun b!2423237 () Bool)

(declare-fun e!1541555 () Bool)

(assert (=> b!2423237 (= e!1541555 e!1541556)))

(declare-fun c!386397 () Bool)

(assert (=> b!2423237 (= c!386397 (isEmpty!16406 lt!875603))))

(declare-fun b!2423238 () Bool)

(declare-fun e!1541554 () Regex!7120)

(assert (=> b!2423238 (= e!1541554 (Concat!11756 (h!33782 lt!875603) (generalisedConcat!221 (t!208456 lt!875603))))))

(declare-fun b!2423239 () Bool)

(declare-fun lt!875703 () Regex!7120)

(assert (=> b!2423239 (= e!1541552 (isConcat!175 lt!875703))))

(assert (=> d!702155 e!1541555))

(declare-fun res!1029195 () Bool)

(assert (=> d!702155 (=> (not res!1029195) (not e!1541555))))

(assert (=> d!702155 (= res!1029195 (validRegex!2840 lt!875703))))

(declare-fun e!1541551 () Regex!7120)

(assert (=> d!702155 (= lt!875703 e!1541551)))

(declare-fun c!386396 () Bool)

(declare-fun e!1541553 () Bool)

(assert (=> d!702155 (= c!386396 e!1541553)))

(declare-fun res!1029194 () Bool)

(assert (=> d!702155 (=> (not res!1029194) (not e!1541553))))

(assert (=> d!702155 (= res!1029194 (is-Cons!28381 lt!875603))))

(assert (=> d!702155 (forall!5754 lt!875603 lambda!91270)))

(assert (=> d!702155 (= (generalisedConcat!221 lt!875603) lt!875703)))

(declare-fun b!2423240 () Bool)

(assert (=> b!2423240 (= e!1541556 (isEmptyExpr!175 lt!875703))))

(declare-fun b!2423241 () Bool)

(assert (=> b!2423241 (= e!1541552 (= lt!875703 (head!5452 lt!875603)))))

(declare-fun b!2423242 () Bool)

(assert (=> b!2423242 (= e!1541551 e!1541554)))

(declare-fun c!386395 () Bool)

(assert (=> b!2423242 (= c!386395 (is-Cons!28381 lt!875603))))

(declare-fun b!2423243 () Bool)

(assert (=> b!2423243 (= e!1541553 (isEmpty!16406 (t!208456 lt!875603)))))

(declare-fun b!2423244 () Bool)

(assert (=> b!2423244 (= e!1541554 EmptyExpr!7120)))

(declare-fun b!2423245 () Bool)

(assert (=> b!2423245 (= e!1541551 (h!33782 lt!875603))))

(assert (= (and d!702155 res!1029194) b!2423243))

(assert (= (and d!702155 c!386396) b!2423245))

(assert (= (and d!702155 (not c!386396)) b!2423242))

(assert (= (and b!2423242 c!386395) b!2423238))

(assert (= (and b!2423242 (not c!386395)) b!2423244))

(assert (= (and d!702155 res!1029195) b!2423237))

(assert (= (and b!2423237 c!386397) b!2423240))

(assert (= (and b!2423237 (not c!386397)) b!2423236))

(assert (= (and b!2423236 c!386394) b!2423241))

(assert (= (and b!2423236 (not c!386394)) b!2423239))

(declare-fun m!2809225 () Bool)

(assert (=> b!2423243 m!2809225))

(declare-fun m!2809227 () Bool)

(assert (=> b!2423241 m!2809227))

(declare-fun m!2809229 () Bool)

(assert (=> b!2423238 m!2809229))

(declare-fun m!2809231 () Bool)

(assert (=> d!702155 m!2809231))

(declare-fun m!2809233 () Bool)

(assert (=> d!702155 m!2809233))

(declare-fun m!2809235 () Bool)

(assert (=> b!2423239 m!2809235))

(declare-fun m!2809237 () Bool)

(assert (=> b!2423236 m!2809237))

(assert (=> b!2423236 m!2809237))

(declare-fun m!2809239 () Bool)

(assert (=> b!2423236 m!2809239))

(assert (=> b!2423237 m!2808935))

(declare-fun m!2809241 () Bool)

(assert (=> b!2423240 m!2809241))

(assert (=> b!2422805 d!702155))

(declare-fun b!2423258 () Bool)

(declare-fun e!1541559 () Bool)

(declare-fun tp!769794 () Bool)

(assert (=> b!2423258 (= e!1541559 tp!769794)))

(declare-fun b!2423259 () Bool)

(declare-fun tp!769796 () Bool)

(declare-fun tp!769792 () Bool)

(assert (=> b!2423259 (= e!1541559 (and tp!769796 tp!769792))))

(declare-fun b!2423257 () Bool)

(declare-fun tp!769793 () Bool)

(declare-fun tp!769795 () Bool)

(assert (=> b!2423257 (= e!1541559 (and tp!769793 tp!769795))))

(assert (=> b!2422803 (= tp!769757 e!1541559)))

(declare-fun b!2423256 () Bool)

(assert (=> b!2423256 (= e!1541559 tp_is_empty!11653)))

(assert (= (and b!2422803 (is-ElementMatch!7120 (reg!7449 r!13927))) b!2423256))

(assert (= (and b!2422803 (is-Concat!11756 (reg!7449 r!13927))) b!2423257))

(assert (= (and b!2422803 (is-Star!7120 (reg!7449 r!13927))) b!2423258))

(assert (= (and b!2422803 (is-Union!7120 (reg!7449 r!13927))) b!2423259))

(declare-fun b!2423264 () Bool)

(declare-fun e!1541562 () Bool)

(declare-fun tp!769799 () Bool)

(assert (=> b!2423264 (= e!1541562 (and tp_is_empty!11653 tp!769799))))

(assert (=> b!2422802 (= tp!769750 e!1541562)))

(assert (= (and b!2422802 (is-Cons!28380 (t!208455 s!9460))) b!2423264))

(declare-fun b!2423267 () Bool)

(declare-fun e!1541563 () Bool)

(declare-fun tp!769802 () Bool)

(assert (=> b!2423267 (= e!1541563 tp!769802)))

(declare-fun b!2423268 () Bool)

(declare-fun tp!769804 () Bool)

(declare-fun tp!769800 () Bool)

(assert (=> b!2423268 (= e!1541563 (and tp!769804 tp!769800))))

(declare-fun b!2423266 () Bool)

(declare-fun tp!769801 () Bool)

(declare-fun tp!769803 () Bool)

(assert (=> b!2423266 (= e!1541563 (and tp!769801 tp!769803))))

(assert (=> b!2422801 (= tp!769753 e!1541563)))

(declare-fun b!2423265 () Bool)

(assert (=> b!2423265 (= e!1541563 tp_is_empty!11653)))

(assert (= (and b!2422801 (is-ElementMatch!7120 (h!33782 l!9164))) b!2423265))

(assert (= (and b!2422801 (is-Concat!11756 (h!33782 l!9164))) b!2423266))

(assert (= (and b!2422801 (is-Star!7120 (h!33782 l!9164))) b!2423267))

(assert (= (and b!2422801 (is-Union!7120 (h!33782 l!9164))) b!2423268))

(declare-fun b!2423273 () Bool)

(declare-fun e!1541566 () Bool)

(declare-fun tp!769809 () Bool)

(declare-fun tp!769810 () Bool)

(assert (=> b!2423273 (= e!1541566 (and tp!769809 tp!769810))))

(assert (=> b!2422801 (= tp!769751 e!1541566)))

(assert (= (and b!2422801 (is-Cons!28381 (t!208456 l!9164))) b!2423273))

(declare-fun b!2423276 () Bool)

(declare-fun e!1541567 () Bool)

(declare-fun tp!769813 () Bool)

(assert (=> b!2423276 (= e!1541567 tp!769813)))

(declare-fun b!2423277 () Bool)

(declare-fun tp!769815 () Bool)

(declare-fun tp!769811 () Bool)

(assert (=> b!2423277 (= e!1541567 (and tp!769815 tp!769811))))

(declare-fun b!2423275 () Bool)

(declare-fun tp!769812 () Bool)

(declare-fun tp!769814 () Bool)

(assert (=> b!2423275 (= e!1541567 (and tp!769812 tp!769814))))

(assert (=> b!2422796 (= tp!769755 e!1541567)))

(declare-fun b!2423274 () Bool)

(assert (=> b!2423274 (= e!1541567 tp_is_empty!11653)))

(assert (= (and b!2422796 (is-ElementMatch!7120 (regOne!14752 r!13927))) b!2423274))

(assert (= (and b!2422796 (is-Concat!11756 (regOne!14752 r!13927))) b!2423275))

(assert (= (and b!2422796 (is-Star!7120 (regOne!14752 r!13927))) b!2423276))

(assert (= (and b!2422796 (is-Union!7120 (regOne!14752 r!13927))) b!2423277))

(declare-fun b!2423280 () Bool)

(declare-fun e!1541568 () Bool)

(declare-fun tp!769818 () Bool)

(assert (=> b!2423280 (= e!1541568 tp!769818)))

(declare-fun b!2423281 () Bool)

(declare-fun tp!769820 () Bool)

(declare-fun tp!769816 () Bool)

(assert (=> b!2423281 (= e!1541568 (and tp!769820 tp!769816))))

(declare-fun b!2423279 () Bool)

(declare-fun tp!769817 () Bool)

(declare-fun tp!769819 () Bool)

(assert (=> b!2423279 (= e!1541568 (and tp!769817 tp!769819))))

(assert (=> b!2422796 (= tp!769756 e!1541568)))

(declare-fun b!2423278 () Bool)

(assert (=> b!2423278 (= e!1541568 tp_is_empty!11653)))

(assert (= (and b!2422796 (is-ElementMatch!7120 (regTwo!14752 r!13927))) b!2423278))

(assert (= (and b!2422796 (is-Concat!11756 (regTwo!14752 r!13927))) b!2423279))

(assert (= (and b!2422796 (is-Star!7120 (regTwo!14752 r!13927))) b!2423280))

(assert (= (and b!2422796 (is-Union!7120 (regTwo!14752 r!13927))) b!2423281))

(declare-fun b!2423284 () Bool)

(declare-fun e!1541569 () Bool)

(declare-fun tp!769823 () Bool)

(assert (=> b!2423284 (= e!1541569 tp!769823)))

(declare-fun b!2423285 () Bool)

(declare-fun tp!769825 () Bool)

(declare-fun tp!769821 () Bool)

(assert (=> b!2423285 (= e!1541569 (and tp!769825 tp!769821))))

(declare-fun b!2423283 () Bool)

(declare-fun tp!769822 () Bool)

(declare-fun tp!769824 () Bool)

(assert (=> b!2423283 (= e!1541569 (and tp!769822 tp!769824))))

(assert (=> b!2422799 (= tp!769754 e!1541569)))

(declare-fun b!2423282 () Bool)

(assert (=> b!2423282 (= e!1541569 tp_is_empty!11653)))

(assert (= (and b!2422799 (is-ElementMatch!7120 (regOne!14753 r!13927))) b!2423282))

(assert (= (and b!2422799 (is-Concat!11756 (regOne!14753 r!13927))) b!2423283))

(assert (= (and b!2422799 (is-Star!7120 (regOne!14753 r!13927))) b!2423284))

(assert (= (and b!2422799 (is-Union!7120 (regOne!14753 r!13927))) b!2423285))

(declare-fun b!2423288 () Bool)

(declare-fun e!1541570 () Bool)

(declare-fun tp!769828 () Bool)

(assert (=> b!2423288 (= e!1541570 tp!769828)))

(declare-fun b!2423289 () Bool)

(declare-fun tp!769830 () Bool)

(declare-fun tp!769826 () Bool)

(assert (=> b!2423289 (= e!1541570 (and tp!769830 tp!769826))))

(declare-fun b!2423287 () Bool)

(declare-fun tp!769827 () Bool)

(declare-fun tp!769829 () Bool)

(assert (=> b!2423287 (= e!1541570 (and tp!769827 tp!769829))))

(assert (=> b!2422799 (= tp!769752 e!1541570)))

(declare-fun b!2423286 () Bool)

(assert (=> b!2423286 (= e!1541570 tp_is_empty!11653)))

(assert (= (and b!2422799 (is-ElementMatch!7120 (regTwo!14753 r!13927))) b!2423286))

(assert (= (and b!2422799 (is-Concat!11756 (regTwo!14753 r!13927))) b!2423287))

(assert (= (and b!2422799 (is-Star!7120 (regTwo!14753 r!13927))) b!2423288))

(assert (= (and b!2422799 (is-Union!7120 (regTwo!14753 r!13927))) b!2423289))

(declare-fun b_lambda!74661 () Bool)

(assert (= b_lambda!74659 (or start!237318 b_lambda!74661)))

(declare-fun bs!463807 () Bool)

(declare-fun d!702159 () Bool)

(assert (= bs!463807 (and d!702159 start!237318)))

(assert (=> bs!463807 (= (dynLambda!12215 lambda!91250 (h!33782 l!9164)) (validRegex!2840 (h!33782 l!9164)))))

(assert (=> bs!463807 m!2809153))

(assert (=> b!2423234 d!702159))

(push 1)

(assert (not b!2423205))

(assert (not bm!148156))

(assert (not b!2423268))

(assert (not b!2423088))

(assert (not b!2423064))

(assert (not b!2423241))

(assert (not b!2423003))

(assert (not b!2423006))

(assert (not b!2423273))

(assert (not b!2423009))

(assert (not bm!148167))

(assert (not b!2422945))

(assert (not b!2423235))

(assert (not b!2422952))

(assert (not d!702103))

(assert (not d!702095))

(assert (not b!2423264))

(assert (not b!2423058))

(assert (not b!2423087))

(assert (not b!2422904))

(assert (not b!2423094))

(assert (not b!2423236))

(assert (not b!2423125))

(assert (not b!2423107))

(assert (not b!2423063))

(assert (not b!2422908))

(assert (not b!2422907))

(assert (not b!2423266))

(assert (not d!702141))

(assert (not b!2423243))

(assert (not b!2423276))

(assert (not d!702117))

(assert (not b!2423287))

(assert (not bm!148168))

(assert (not d!702119))

(assert (not b!2423210))

(assert (not b!2423239))

(assert (not b!2422949))

(assert (not bm!148166))

(assert (not b!2423061))

(assert (not b!2423275))

(assert (not b!2423109))

(assert (not b!2423113))

(assert (not b!2423050))

(assert (not b!2423126))

(assert (not d!702125))

(assert (not b!2423237))

(assert (not d!702153))

(assert (not b!2423057))

(assert (not d!702111))

(assert (not b!2423279))

(assert (not b!2423258))

(assert (not b!2423115))

(assert (not b!2422903))

(assert (not d!702145))

(assert (not bs!463807))

(assert (not b!2423008))

(assert (not b!2423091))

(assert (not b!2423206))

(assert (not b!2423212))

(assert (not d!702121))

(assert (not b!2423240))

(assert (not b!2423051))

(assert (not b!2422944))

(assert (not b!2423281))

(assert (not d!702139))

(assert (not b!2423040))

(assert (not d!702113))

(assert (not b!2423056))

(assert (not bm!148153))

(assert (not b!2423283))

(assert (not b!2423120))

(assert (not b!2423195))

(assert (not b!2423001))

(assert (not b!2423289))

(assert (not b!2423112))

(assert (not b!2423259))

(assert (not b!2423123))

(assert (not b!2423213))

(assert (not b!2423238))

(assert (not b!2423080))

(assert (not b!2423099))

(assert (not d!702147))

(assert (not b!2423118))

(assert (not b!2423106))

(assert (not b!2423104))

(assert (not d!702155))

(assert (not b!2423121))

(assert (not b!2423086))

(assert (not bm!148159))

(assert (not b!2423284))

(assert (not b!2423004))

(assert (not b!2423193))

(assert (not b!2423280))

(assert (not b!2423285))

(assert tp_is_empty!11653)

(assert (not d!702137))

(assert (not b_lambda!74661))

(assert (not b!2423267))

(assert (not bm!148152))

(assert (not d!702093))

(assert (not b!2422905))

(assert (not bm!148142))

(assert (not d!702135))

(assert (not b!2423288))

(assert (not b!2422910))

(assert (not b!2422906))

(assert (not b!2423093))

(assert (not b!2423111))

(assert (not b!2423102))

(assert (not b!2422951))

(assert (not b!2423257))

(assert (not b!2423108))

(assert (not b!2423101))

(assert (not d!702123))

(assert (not b!2423207))

(assert (not b!2422946))

(assert (not b!2423277))

(assert (not b!2423110))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

