; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83422 () Bool)

(assert start!83422)

(declare-fun c!151675 () Bool)

(declare-datatypes ((C!5652 0))(
  ( (C!5653 (val!3074 Int)) )
))
(declare-datatypes ((List!9771 0))(
  ( (Nil!9755) (Cons!9755 (h!15156 C!5652) (t!100817 List!9771)) )
))
(declare-fun s!10566 () List!9771)

(declare-datatypes ((Regex!2541 0))(
  ( (ElementMatch!2541 (c!151676 C!5652)) (Concat!4374 (regOne!5594 Regex!2541) (regTwo!5594 Regex!2541)) (EmptyExpr!2541) (Star!2541 (reg!2870 Regex!2541)) (EmptyLang!2541) (Union!2541 (regOne!5595 Regex!2541) (regTwo!5595 Regex!2541)) )
))
(declare-fun r!15766 () Regex!2541)

(declare-fun bm!57639 () Bool)

(declare-datatypes ((Unit!14701 0))(
  ( (Unit!14702) )
))
(declare-fun call!57644 () Unit!14701)

(declare-fun lemmaRemoveUselessConcatSound!126 (Regex!2541 List!9771) Unit!14701)

(assert (=> bm!57639 (= call!57644 (lemmaRemoveUselessConcatSound!126 (ite c!151675 (regOne!5595 r!15766) (regTwo!5595 r!15766)) s!10566))))

(declare-fun b!932809 () Bool)

(declare-fun e!606133 () Bool)

(declare-fun tp!289491 () Bool)

(assert (=> b!932809 (= e!606133 tp!289491)))

(declare-fun bm!57640 () Bool)

(declare-fun lt!340756 () Regex!2541)

(declare-fun call!57646 () Bool)

(declare-fun matchR!1079 (Regex!2541 List!9771) Bool)

(assert (=> bm!57640 (= call!57646 (matchR!1079 (ite c!151675 (regOne!5595 r!15766) lt!340756) s!10566))))

(declare-fun bm!57641 () Bool)

(declare-fun call!57647 () Unit!14701)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!18 (Regex!2541 Regex!2541 List!9771) Unit!14701)

(assert (=> bm!57641 (= call!57647 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!18 (ite c!151675 (regOne!5595 r!15766) (regTwo!5595 r!15766)) (ite c!151675 (regTwo!5595 r!15766) (regOne!5595 r!15766)) s!10566))))

(declare-fun b!932810 () Bool)

(declare-fun e!606130 () Bool)

(assert (=> b!932810 (= e!606130 (matchR!1079 lt!340756 s!10566))))

(declare-fun b!932811 () Bool)

(declare-fun e!606128 () Unit!14701)

(declare-fun lt!340749 () Unit!14701)

(assert (=> b!932811 (= e!606128 lt!340749)))

(declare-fun lt!340747 () Unit!14701)

(assert (=> b!932811 (= lt!340747 call!57644)))

(assert (=> b!932811 call!57646))

(assert (=> b!932811 (= lt!340749 call!57647)))

(declare-fun call!57645 () Bool)

(assert (=> b!932811 call!57645))

(declare-fun b!932812 () Bool)

(declare-fun e!606127 () Bool)

(declare-fun e!606129 () Bool)

(assert (=> b!932812 (= e!606127 e!606129)))

(declare-fun res!423654 () Bool)

(assert (=> b!932812 (=> res!423654 e!606129)))

(declare-fun lt!340757 () Regex!2541)

(assert (=> b!932812 (= res!423654 (not (matchR!1079 lt!340757 s!10566)))))

(declare-fun lt!340751 () Regex!2541)

(assert (=> b!932812 (= lt!340757 (Union!2541 lt!340751 lt!340756))))

(declare-fun removeUselessConcat!216 (Regex!2541) Regex!2541)

(assert (=> b!932812 (= lt!340756 (removeUselessConcat!216 (regTwo!5595 r!15766)))))

(assert (=> b!932812 (= lt!340751 (removeUselessConcat!216 (regOne!5595 r!15766)))))

(declare-fun bm!57642 () Bool)

(assert (=> bm!57642 (= call!57645 (matchR!1079 (ite c!151675 (Union!2541 (regOne!5595 r!15766) (regTwo!5595 r!15766)) (regTwo!5595 r!15766)) s!10566))))

(declare-fun b!932814 () Bool)

(declare-fun lt!340746 () Unit!14701)

(assert (=> b!932814 (= e!606128 lt!340746)))

(declare-fun lt!340750 () Unit!14701)

(assert (=> b!932814 (= lt!340750 call!57644)))

(assert (=> b!932814 (= call!57645 call!57646)))

(declare-fun lt!340754 () Unit!14701)

(assert (=> b!932814 (= lt!340754 call!57647)))

(assert (=> b!932814 (matchR!1079 (Union!2541 (regTwo!5595 r!15766) (regOne!5595 r!15766)) s!10566)))

(declare-fun lemmaReversedUnionAcceptsSameString!6 (Regex!2541 Regex!2541 List!9771) Unit!14701)

(assert (=> b!932814 (= lt!340746 (lemmaReversedUnionAcceptsSameString!6 (regTwo!5595 r!15766) (regOne!5595 r!15766) s!10566))))

(assert (=> b!932814 (matchR!1079 (Union!2541 (regOne!5595 r!15766) (regTwo!5595 r!15766)) s!10566)))

(declare-fun b!932815 () Bool)

(declare-fun e!606132 () Bool)

(assert (=> b!932815 (= e!606132 (not e!606127))))

(declare-fun res!423653 () Bool)

(assert (=> b!932815 (=> res!423653 e!606127)))

(declare-fun lt!340753 () Bool)

(get-info :version)

(assert (=> b!932815 (= res!423653 (or lt!340753 (and ((_ is Concat!4374) r!15766) ((_ is EmptyExpr!2541) (regOne!5594 r!15766))) (and ((_ is Concat!4374) r!15766) ((_ is EmptyExpr!2541) (regTwo!5594 r!15766))) ((_ is Concat!4374) r!15766) (not ((_ is Union!2541) r!15766))))))

(declare-fun matchRSpec!342 (Regex!2541 List!9771) Bool)

(assert (=> b!932815 (= lt!340753 (matchRSpec!342 r!15766 s!10566))))

(assert (=> b!932815 (= lt!340753 (matchR!1079 r!15766 s!10566))))

(declare-fun lt!340755 () Unit!14701)

(declare-fun mainMatchTheorem!342 (Regex!2541 List!9771) Unit!14701)

(assert (=> b!932815 (= lt!340755 (mainMatchTheorem!342 r!15766 s!10566))))

(declare-fun b!932816 () Bool)

(declare-fun tp!289495 () Bool)

(declare-fun tp!289493 () Bool)

(assert (=> b!932816 (= e!606133 (and tp!289495 tp!289493))))

(declare-fun b!932817 () Bool)

(declare-fun tp_is_empty!4725 () Bool)

(assert (=> b!932817 (= e!606133 tp_is_empty!4725)))

(declare-fun b!932813 () Bool)

(declare-fun tp!289492 () Bool)

(declare-fun tp!289496 () Bool)

(assert (=> b!932813 (= e!606133 (and tp!289492 tp!289496))))

(declare-fun res!423651 () Bool)

(assert (=> start!83422 (=> (not res!423651) (not e!606132))))

(declare-fun validRegex!1010 (Regex!2541) Bool)

(assert (=> start!83422 (= res!423651 (validRegex!1010 r!15766))))

(assert (=> start!83422 e!606132))

(assert (=> start!83422 e!606133))

(declare-fun e!606131 () Bool)

(assert (=> start!83422 e!606131))

(declare-fun b!932818 () Bool)

(assert (=> b!932818 (= e!606129 true)))

(declare-fun lt!340748 () Unit!14701)

(assert (=> b!932818 (= lt!340748 e!606128)))

(declare-fun lt!340752 () Bool)

(assert (=> b!932818 (= c!151675 lt!340752)))

(assert (=> b!932818 e!606130))

(declare-fun res!423652 () Bool)

(assert (=> b!932818 (=> res!423652 e!606130)))

(assert (=> b!932818 (= res!423652 lt!340752)))

(assert (=> b!932818 (= lt!340752 (matchR!1079 lt!340751 s!10566))))

(declare-fun lt!340745 () Unit!14701)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!58 (Regex!2541 Regex!2541 List!9771) Unit!14701)

(assert (=> b!932818 (= lt!340745 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!58 lt!340751 lt!340756 s!10566))))

(assert (=> b!932818 (matchRSpec!342 lt!340757 s!10566)))

(declare-fun lt!340744 () Unit!14701)

(assert (=> b!932818 (= lt!340744 (mainMatchTheorem!342 lt!340757 s!10566))))

(declare-fun b!932819 () Bool)

(declare-fun tp!289494 () Bool)

(assert (=> b!932819 (= e!606131 (and tp_is_empty!4725 tp!289494))))

(assert (= (and start!83422 res!423651) b!932815))

(assert (= (and b!932815 (not res!423653)) b!932812))

(assert (= (and b!932812 (not res!423654)) b!932818))

(assert (= (and b!932818 (not res!423652)) b!932810))

(assert (= (and b!932818 c!151675) b!932811))

(assert (= (and b!932818 (not c!151675)) b!932814))

(assert (= (or b!932811 b!932814) bm!57639))

(assert (= (or b!932811 b!932814) bm!57641))

(assert (= (or b!932811 b!932814) bm!57640))

(assert (= (or b!932811 b!932814) bm!57642))

(assert (= (and start!83422 ((_ is ElementMatch!2541) r!15766)) b!932817))

(assert (= (and start!83422 ((_ is Concat!4374) r!15766)) b!932813))

(assert (= (and start!83422 ((_ is Star!2541) r!15766)) b!932809))

(assert (= (and start!83422 ((_ is Union!2541) r!15766)) b!932816))

(assert (= (and start!83422 ((_ is Cons!9755) s!10566)) b!932819))

(declare-fun m!1154091 () Bool)

(assert (=> bm!57639 m!1154091))

(declare-fun m!1154093 () Bool)

(assert (=> b!932810 m!1154093))

(declare-fun m!1154095 () Bool)

(assert (=> bm!57641 m!1154095))

(declare-fun m!1154097 () Bool)

(assert (=> bm!57642 m!1154097))

(declare-fun m!1154099 () Bool)

(assert (=> b!932815 m!1154099))

(declare-fun m!1154101 () Bool)

(assert (=> b!932815 m!1154101))

(declare-fun m!1154103 () Bool)

(assert (=> b!932815 m!1154103))

(declare-fun m!1154105 () Bool)

(assert (=> b!932814 m!1154105))

(declare-fun m!1154107 () Bool)

(assert (=> b!932814 m!1154107))

(declare-fun m!1154109 () Bool)

(assert (=> b!932814 m!1154109))

(declare-fun m!1154111 () Bool)

(assert (=> bm!57640 m!1154111))

(declare-fun m!1154113 () Bool)

(assert (=> start!83422 m!1154113))

(declare-fun m!1154115 () Bool)

(assert (=> b!932818 m!1154115))

(declare-fun m!1154117 () Bool)

(assert (=> b!932818 m!1154117))

(declare-fun m!1154119 () Bool)

(assert (=> b!932818 m!1154119))

(declare-fun m!1154121 () Bool)

(assert (=> b!932818 m!1154121))

(declare-fun m!1154123 () Bool)

(assert (=> b!932812 m!1154123))

(declare-fun m!1154125 () Bool)

(assert (=> b!932812 m!1154125))

(declare-fun m!1154127 () Bool)

(assert (=> b!932812 m!1154127))

(check-sat (not b!932812) (not b!932815) (not b!932810) (not b!932819) (not b!932809) (not b!932818) (not bm!57642) (not bm!57639) (not start!83422) (not b!932813) (not bm!57641) (not b!932814) (not bm!57640) (not b!932816) tp_is_empty!4725)
(check-sat)
