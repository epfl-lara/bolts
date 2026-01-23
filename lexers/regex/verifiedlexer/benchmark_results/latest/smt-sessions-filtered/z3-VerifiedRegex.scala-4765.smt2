; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!245620 () Bool)

(assert start!245620)

(declare-fun b!2519714 () Bool)

(declare-fun e!1595855 () Bool)

(declare-fun tp!805362 () Bool)

(declare-fun tp!805364 () Bool)

(assert (=> b!2519714 (= e!1595855 (and tp!805362 tp!805364))))

(declare-fun b!2519715 () Bool)

(declare-fun res!1064630 () Bool)

(declare-fun e!1595858 () Bool)

(assert (=> b!2519715 (=> res!1064630 e!1595858)))

(declare-datatypes ((C!15168 0))(
  ( (C!15169 (val!9236 Int)) )
))
(declare-datatypes ((Regex!7505 0))(
  ( (ElementMatch!7505 (c!401811 C!15168)) (Concat!12201 (regOne!15522 Regex!7505) (regTwo!15522 Regex!7505)) (EmptyExpr!7505) (Star!7505 (reg!7834 Regex!7505)) (EmptyLang!7505) (Union!7505 (regOne!15523 Regex!7505) (regTwo!15523 Regex!7505)) )
))
(declare-fun lt!899438 () Regex!7505)

(declare-datatypes ((List!29570 0))(
  ( (Nil!29470) (Cons!29470 (h!34890 C!15168) (t!211269 List!29570)) )
))
(declare-datatypes ((tuple2!29512 0))(
  ( (tuple2!29513 (_1!17298 List!29570) (_2!17298 List!29570)) )
))
(declare-fun lt!899442 () tuple2!29512)

(declare-fun matchR!3492 (Regex!7505 List!29570) Bool)

(assert (=> b!2519715 (= res!1064630 (not (matchR!3492 lt!899438 (_2!17298 lt!899442))))))

(declare-fun b!2519717 () Bool)

(declare-fun tp_is_empty!12865 () Bool)

(assert (=> b!2519717 (= e!1595855 tp_is_empty!12865)))

(declare-fun b!2519718 () Bool)

(declare-fun e!1595853 () Bool)

(declare-fun tp!805361 () Bool)

(assert (=> b!2519718 (= e!1595853 (and tp_is_empty!12865 tp!805361))))

(declare-fun b!2519719 () Bool)

(declare-fun tp!805366 () Bool)

(declare-fun tp!805363 () Bool)

(assert (=> b!2519719 (= e!1595855 (and tp!805366 tp!805363))))

(declare-fun b!2519720 () Bool)

(declare-fun r!27340 () Regex!7505)

(declare-fun c!14016 () C!15168)

(assert (=> b!2519720 (= e!1595858 (matchR!3492 (reg!7834 r!27340) (Cons!29470 c!14016 (_1!17298 lt!899442))))))

(declare-fun b!2519721 () Bool)

(declare-fun e!1595854 () Bool)

(declare-fun e!1595852 () Bool)

(assert (=> b!2519721 (= e!1595854 e!1595852)))

(declare-fun res!1064629 () Bool)

(assert (=> b!2519721 (=> (not res!1064629) (not e!1595852))))

(declare-fun lt!899440 () Regex!7505)

(declare-fun lt!899435 () Regex!7505)

(assert (=> b!2519721 (= res!1064629 (= lt!899435 (Concat!12201 lt!899440 lt!899438)))))

(assert (=> b!2519721 (= lt!899438 (Star!7505 (reg!7834 r!27340)))))

(declare-fun derivativeStep!2074 (Regex!7505 C!15168) Regex!7505)

(assert (=> b!2519721 (= lt!899440 (derivativeStep!2074 (reg!7834 r!27340) c!14016))))

(declare-fun b!2519722 () Bool)

(declare-fun e!1595856 () Bool)

(assert (=> b!2519722 (= e!1595856 e!1595854)))

(declare-fun res!1064634 () Bool)

(assert (=> b!2519722 (=> (not res!1064634) (not e!1595854))))

(declare-fun lt!899436 () Regex!7505)

(declare-fun nullable!2422 (Regex!7505) Bool)

(assert (=> b!2519722 (= res!1064634 (nullable!2422 lt!899436))))

(declare-fun tl!4068 () List!29570)

(declare-fun derivative!200 (Regex!7505 List!29570) Regex!7505)

(assert (=> b!2519722 (= lt!899436 (derivative!200 lt!899435 tl!4068))))

(assert (=> b!2519722 (= lt!899435 (derivativeStep!2074 r!27340 c!14016))))

(declare-fun b!2519723 () Bool)

(declare-fun e!1595857 () Bool)

(assert (=> b!2519723 (= e!1595857 e!1595858)))

(declare-fun res!1064631 () Bool)

(assert (=> b!2519723 (=> res!1064631 e!1595858)))

(declare-fun ++!7226 (List!29570 List!29570) List!29570)

(assert (=> b!2519723 (= res!1064631 (not (= (++!7226 (_1!17298 lt!899442) (_2!17298 lt!899442)) tl!4068)))))

(declare-datatypes ((Option!5876 0))(
  ( (None!5875) (Some!5875 (v!31808 tuple2!29512)) )
))
(declare-fun lt!899434 () Option!5876)

(declare-fun get!9207 (Option!5876) tuple2!29512)

(assert (=> b!2519723 (= lt!899442 (get!9207 lt!899434))))

(declare-fun isDefined!4698 (Option!5876) Bool)

(assert (=> b!2519723 (isDefined!4698 lt!899434)))

(declare-fun findConcatSeparation!898 (Regex!7505 Regex!7505 List!29570 List!29570 List!29570) Option!5876)

(assert (=> b!2519723 (= lt!899434 (findConcatSeparation!898 lt!899440 lt!899438 Nil!29470 tl!4068 tl!4068))))

(declare-datatypes ((Unit!43235 0))(
  ( (Unit!43236) )
))
(declare-fun lt!899439 () Unit!43235)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!180 (Regex!7505 Regex!7505 List!29570) Unit!43235)

(assert (=> b!2519723 (= lt!899439 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!180 lt!899440 lt!899438 tl!4068))))

(declare-fun b!2519724 () Bool)

(declare-fun res!1064632 () Bool)

(assert (=> b!2519724 (=> (not res!1064632) (not e!1595854))))

(get-info :version)

(assert (=> b!2519724 (= res!1064632 (and (not ((_ is EmptyExpr!7505) r!27340)) (not ((_ is EmptyLang!7505) r!27340)) (not ((_ is ElementMatch!7505) r!27340)) (not ((_ is Union!7505) r!27340)) ((_ is Star!7505) r!27340)))))

(declare-fun b!2519716 () Bool)

(declare-fun tp!805365 () Bool)

(assert (=> b!2519716 (= e!1595855 tp!805365)))

(declare-fun res!1064628 () Bool)

(assert (=> start!245620 (=> (not res!1064628) (not e!1595856))))

(declare-fun validRegex!3131 (Regex!7505) Bool)

(assert (=> start!245620 (= res!1064628 (validRegex!3131 r!27340))))

(assert (=> start!245620 e!1595856))

(assert (=> start!245620 e!1595855))

(assert (=> start!245620 tp_is_empty!12865))

(assert (=> start!245620 e!1595853))

(declare-fun b!2519725 () Bool)

(assert (=> b!2519725 (= e!1595852 (not e!1595857))))

(declare-fun res!1064627 () Bool)

(assert (=> b!2519725 (=> res!1064627 e!1595857)))

(declare-fun lt!899441 () Bool)

(assert (=> b!2519725 (= res!1064627 (not lt!899441))))

(assert (=> b!2519725 (= lt!899441 (matchR!3492 lt!899436 Nil!29470))))

(assert (=> b!2519725 (= lt!899441 (matchR!3492 lt!899435 tl!4068))))

(declare-fun lt!899437 () Unit!43235)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!138 (Regex!7505 List!29570) Unit!43235)

(assert (=> b!2519725 (= lt!899437 (lemmaMatchRIsSameAsWholeDerivativeAndNil!138 lt!899435 tl!4068))))

(declare-fun b!2519726 () Bool)

(declare-fun res!1064633 () Bool)

(assert (=> b!2519726 (=> (not res!1064633) (not e!1595852))))

(assert (=> b!2519726 (= res!1064633 (not (nullable!2422 (derivative!200 lt!899440 tl!4068))))))

(assert (= (and start!245620 res!1064628) b!2519722))

(assert (= (and b!2519722 res!1064634) b!2519724))

(assert (= (and b!2519724 res!1064632) b!2519721))

(assert (= (and b!2519721 res!1064629) b!2519726))

(assert (= (and b!2519726 res!1064633) b!2519725))

(assert (= (and b!2519725 (not res!1064627)) b!2519723))

(assert (= (and b!2519723 (not res!1064631)) b!2519715))

(assert (= (and b!2519715 (not res!1064630)) b!2519720))

(assert (= (and start!245620 ((_ is ElementMatch!7505) r!27340)) b!2519717))

(assert (= (and start!245620 ((_ is Concat!12201) r!27340)) b!2519714))

(assert (= (and start!245620 ((_ is Star!7505) r!27340)) b!2519716))

(assert (= (and start!245620 ((_ is Union!7505) r!27340)) b!2519719))

(assert (= (and start!245620 ((_ is Cons!29470) tl!4068)) b!2519718))

(declare-fun m!2874851 () Bool)

(assert (=> b!2519723 m!2874851))

(declare-fun m!2874853 () Bool)

(assert (=> b!2519723 m!2874853))

(declare-fun m!2874855 () Bool)

(assert (=> b!2519723 m!2874855))

(declare-fun m!2874857 () Bool)

(assert (=> b!2519723 m!2874857))

(declare-fun m!2874859 () Bool)

(assert (=> b!2519723 m!2874859))

(declare-fun m!2874861 () Bool)

(assert (=> b!2519722 m!2874861))

(declare-fun m!2874863 () Bool)

(assert (=> b!2519722 m!2874863))

(declare-fun m!2874865 () Bool)

(assert (=> b!2519722 m!2874865))

(declare-fun m!2874867 () Bool)

(assert (=> b!2519726 m!2874867))

(assert (=> b!2519726 m!2874867))

(declare-fun m!2874869 () Bool)

(assert (=> b!2519726 m!2874869))

(declare-fun m!2874871 () Bool)

(assert (=> b!2519725 m!2874871))

(declare-fun m!2874873 () Bool)

(assert (=> b!2519725 m!2874873))

(declare-fun m!2874875 () Bool)

(assert (=> b!2519725 m!2874875))

(declare-fun m!2874877 () Bool)

(assert (=> b!2519720 m!2874877))

(declare-fun m!2874879 () Bool)

(assert (=> start!245620 m!2874879))

(declare-fun m!2874881 () Bool)

(assert (=> b!2519715 m!2874881))

(declare-fun m!2874883 () Bool)

(assert (=> b!2519721 m!2874883))

(check-sat (not b!2519726) (not b!2519721) (not b!2519715) (not b!2519716) (not b!2519725) (not b!2519723) (not b!2519722) (not b!2519720) (not b!2519719) (not b!2519714) tp_is_empty!12865 (not start!245620) (not b!2519718))
(check-sat)
(get-model)

(declare-fun d!717810 () Bool)

(declare-fun nullableFct!663 (Regex!7505) Bool)

(assert (=> d!717810 (= (nullable!2422 (derivative!200 lt!899440 tl!4068)) (nullableFct!663 (derivative!200 lt!899440 tl!4068)))))

(declare-fun bs!468962 () Bool)

(assert (= bs!468962 d!717810))

(assert (=> bs!468962 m!2874867))

(declare-fun m!2874885 () Bool)

(assert (=> bs!468962 m!2874885))

(assert (=> b!2519726 d!717810))

(declare-fun d!717812 () Bool)

(declare-fun lt!899445 () Regex!7505)

(assert (=> d!717812 (validRegex!3131 lt!899445)))

(declare-fun e!1595861 () Regex!7505)

(assert (=> d!717812 (= lt!899445 e!1595861)))

(declare-fun c!401814 () Bool)

(assert (=> d!717812 (= c!401814 ((_ is Cons!29470) tl!4068))))

(assert (=> d!717812 (validRegex!3131 lt!899440)))

(assert (=> d!717812 (= (derivative!200 lt!899440 tl!4068) lt!899445)))

(declare-fun b!2519731 () Bool)

(assert (=> b!2519731 (= e!1595861 (derivative!200 (derivativeStep!2074 lt!899440 (h!34890 tl!4068)) (t!211269 tl!4068)))))

(declare-fun b!2519732 () Bool)

(assert (=> b!2519732 (= e!1595861 lt!899440)))

(assert (= (and d!717812 c!401814) b!2519731))

(assert (= (and d!717812 (not c!401814)) b!2519732))

(declare-fun m!2874887 () Bool)

(assert (=> d!717812 m!2874887))

(declare-fun m!2874889 () Bool)

(assert (=> d!717812 m!2874889))

(declare-fun m!2874891 () Bool)

(assert (=> b!2519731 m!2874891))

(assert (=> b!2519731 m!2874891))

(declare-fun m!2874893 () Bool)

(assert (=> b!2519731 m!2874893))

(assert (=> b!2519726 d!717812))

(declare-fun b!2519765 () Bool)

(declare-fun e!1595881 () Regex!7505)

(assert (=> b!2519765 (= e!1595881 (ite (= c!14016 (c!401811 (reg!7834 r!27340))) EmptyExpr!7505 EmptyLang!7505))))

(declare-fun e!1595880 () Regex!7505)

(declare-fun b!2519766 () Bool)

(declare-fun call!156950 () Regex!7505)

(declare-fun call!156952 () Regex!7505)

(assert (=> b!2519766 (= e!1595880 (Union!7505 (Concat!12201 call!156950 (regTwo!15522 (reg!7834 r!27340))) call!156952))))

(declare-fun c!401828 () Bool)

(declare-fun c!401829 () Bool)

(declare-fun bm!156945 () Bool)

(declare-fun call!156951 () Regex!7505)

(assert (=> bm!156945 (= call!156951 (derivativeStep!2074 (ite c!401829 (regTwo!15523 (reg!7834 r!27340)) (ite c!401828 (reg!7834 (reg!7834 r!27340)) (regOne!15522 (reg!7834 r!27340)))) c!14016))))

(declare-fun b!2519767 () Bool)

(declare-fun e!1595878 () Regex!7505)

(declare-fun call!156953 () Regex!7505)

(assert (=> b!2519767 (= e!1595878 (Concat!12201 call!156953 (reg!7834 r!27340)))))

(declare-fun b!2519768 () Bool)

(declare-fun e!1595882 () Regex!7505)

(assert (=> b!2519768 (= e!1595882 EmptyLang!7505)))

(declare-fun b!2519769 () Bool)

(assert (=> b!2519769 (= e!1595880 (Union!7505 (Concat!12201 call!156950 (regTwo!15522 (reg!7834 r!27340))) EmptyLang!7505))))

(declare-fun b!2519770 () Bool)

(assert (=> b!2519770 (= c!401829 ((_ is Union!7505) (reg!7834 r!27340)))))

(declare-fun e!1595879 () Regex!7505)

(assert (=> b!2519770 (= e!1595881 e!1595879)))

(declare-fun b!2519771 () Bool)

(assert (=> b!2519771 (= e!1595882 e!1595881)))

(declare-fun c!401832 () Bool)

(assert (=> b!2519771 (= c!401832 ((_ is ElementMatch!7505) (reg!7834 r!27340)))))

(declare-fun b!2519772 () Bool)

(declare-fun c!401831 () Bool)

(assert (=> b!2519772 (= c!401831 (nullable!2422 (regOne!15522 (reg!7834 r!27340))))))

(assert (=> b!2519772 (= e!1595878 e!1595880)))

(declare-fun b!2519773 () Bool)

(assert (=> b!2519773 (= e!1595879 (Union!7505 call!156952 call!156951))))

(declare-fun b!2519774 () Bool)

(assert (=> b!2519774 (= e!1595879 e!1595878)))

(assert (=> b!2519774 (= c!401828 ((_ is Star!7505) (reg!7834 r!27340)))))

(declare-fun bm!156946 () Bool)

(assert (=> bm!156946 (= call!156952 (derivativeStep!2074 (ite c!401829 (regOne!15523 (reg!7834 r!27340)) (regTwo!15522 (reg!7834 r!27340))) c!14016))))

(declare-fun d!717816 () Bool)

(declare-fun lt!899451 () Regex!7505)

(assert (=> d!717816 (validRegex!3131 lt!899451)))

(assert (=> d!717816 (= lt!899451 e!1595882)))

(declare-fun c!401830 () Bool)

(assert (=> d!717816 (= c!401830 (or ((_ is EmptyExpr!7505) (reg!7834 r!27340)) ((_ is EmptyLang!7505) (reg!7834 r!27340))))))

(assert (=> d!717816 (validRegex!3131 (reg!7834 r!27340))))

(assert (=> d!717816 (= (derivativeStep!2074 (reg!7834 r!27340) c!14016) lt!899451)))

(declare-fun bm!156947 () Bool)

(assert (=> bm!156947 (= call!156950 call!156953)))

(declare-fun bm!156948 () Bool)

(assert (=> bm!156948 (= call!156953 call!156951)))

(assert (= (and d!717816 c!401830) b!2519768))

(assert (= (and d!717816 (not c!401830)) b!2519771))

(assert (= (and b!2519771 c!401832) b!2519765))

(assert (= (and b!2519771 (not c!401832)) b!2519770))

(assert (= (and b!2519770 c!401829) b!2519773))

(assert (= (and b!2519770 (not c!401829)) b!2519774))

(assert (= (and b!2519774 c!401828) b!2519767))

(assert (= (and b!2519774 (not c!401828)) b!2519772))

(assert (= (and b!2519772 c!401831) b!2519766))

(assert (= (and b!2519772 (not c!401831)) b!2519769))

(assert (= (or b!2519766 b!2519769) bm!156947))

(assert (= (or b!2519767 bm!156947) bm!156948))

(assert (= (or b!2519773 bm!156948) bm!156945))

(assert (= (or b!2519773 b!2519766) bm!156946))

(declare-fun m!2874909 () Bool)

(assert (=> bm!156945 m!2874909))

(declare-fun m!2874911 () Bool)

(assert (=> b!2519772 m!2874911))

(declare-fun m!2874913 () Bool)

(assert (=> bm!156946 m!2874913))

(declare-fun m!2874915 () Bool)

(assert (=> d!717816 m!2874915))

(declare-fun m!2874917 () Bool)

(assert (=> d!717816 m!2874917))

(assert (=> b!2519721 d!717816))

(declare-fun d!717820 () Bool)

(declare-fun e!1595914 () Bool)

(assert (=> d!717820 e!1595914))

(declare-fun c!401847 () Bool)

(assert (=> d!717820 (= c!401847 ((_ is EmptyExpr!7505) lt!899436))))

(declare-fun lt!899463 () Bool)

(declare-fun e!1595916 () Bool)

(assert (=> d!717820 (= lt!899463 e!1595916)))

(declare-fun c!401845 () Bool)

(declare-fun isEmpty!16933 (List!29570) Bool)

(assert (=> d!717820 (= c!401845 (isEmpty!16933 Nil!29470))))

(assert (=> d!717820 (validRegex!3131 lt!899436)))

(assert (=> d!717820 (= (matchR!3492 lt!899436 Nil!29470) lt!899463)))

(declare-fun b!2519830 () Bool)

(declare-fun res!1064674 () Bool)

(declare-fun e!1595915 () Bool)

(assert (=> b!2519830 (=> res!1064674 e!1595915)))

(declare-fun tail!4031 (List!29570) List!29570)

(assert (=> b!2519830 (= res!1064674 (not (isEmpty!16933 (tail!4031 Nil!29470))))))

(declare-fun b!2519831 () Bool)

(declare-fun head!5754 (List!29570) C!15168)

(assert (=> b!2519831 (= e!1595916 (matchR!3492 (derivativeStep!2074 lt!899436 (head!5754 Nil!29470)) (tail!4031 Nil!29470)))))

(declare-fun b!2519832 () Bool)

(declare-fun res!1064672 () Bool)

(declare-fun e!1595918 () Bool)

(assert (=> b!2519832 (=> res!1064672 e!1595918)))

(assert (=> b!2519832 (= res!1064672 (not ((_ is ElementMatch!7505) lt!899436)))))

(declare-fun e!1595917 () Bool)

(assert (=> b!2519832 (= e!1595917 e!1595918)))

(declare-fun b!2519833 () Bool)

(declare-fun call!156956 () Bool)

(assert (=> b!2519833 (= e!1595914 (= lt!899463 call!156956))))

(declare-fun b!2519834 () Bool)

(assert (=> b!2519834 (= e!1595916 (nullable!2422 lt!899436))))

(declare-fun bm!156951 () Bool)

(assert (=> bm!156951 (= call!156956 (isEmpty!16933 Nil!29470))))

(declare-fun b!2519835 () Bool)

(declare-fun res!1064673 () Bool)

(declare-fun e!1595913 () Bool)

(assert (=> b!2519835 (=> (not res!1064673) (not e!1595913))))

(assert (=> b!2519835 (= res!1064673 (not call!156956))))

(declare-fun b!2519836 () Bool)

(declare-fun res!1064678 () Bool)

(assert (=> b!2519836 (=> (not res!1064678) (not e!1595913))))

(assert (=> b!2519836 (= res!1064678 (isEmpty!16933 (tail!4031 Nil!29470)))))

(declare-fun b!2519837 () Bool)

(declare-fun res!1064679 () Bool)

(assert (=> b!2519837 (=> res!1064679 e!1595918)))

(assert (=> b!2519837 (= res!1064679 e!1595913)))

(declare-fun res!1064677 () Bool)

(assert (=> b!2519837 (=> (not res!1064677) (not e!1595913))))

(assert (=> b!2519837 (= res!1064677 lt!899463)))

(declare-fun b!2519838 () Bool)

(assert (=> b!2519838 (= e!1595913 (= (head!5754 Nil!29470) (c!401811 lt!899436)))))

(declare-fun b!2519839 () Bool)

(declare-fun e!1595912 () Bool)

(assert (=> b!2519839 (= e!1595918 e!1595912)))

(declare-fun res!1064675 () Bool)

(assert (=> b!2519839 (=> (not res!1064675) (not e!1595912))))

(assert (=> b!2519839 (= res!1064675 (not lt!899463))))

(declare-fun b!2519840 () Bool)

(assert (=> b!2519840 (= e!1595912 e!1595915)))

(declare-fun res!1064676 () Bool)

(assert (=> b!2519840 (=> res!1064676 e!1595915)))

(assert (=> b!2519840 (= res!1064676 call!156956)))

(declare-fun b!2519841 () Bool)

(assert (=> b!2519841 (= e!1595915 (not (= (head!5754 Nil!29470) (c!401811 lt!899436))))))

(declare-fun b!2519842 () Bool)

(assert (=> b!2519842 (= e!1595917 (not lt!899463))))

(declare-fun b!2519843 () Bool)

(assert (=> b!2519843 (= e!1595914 e!1595917)))

(declare-fun c!401846 () Bool)

(assert (=> b!2519843 (= c!401846 ((_ is EmptyLang!7505) lt!899436))))

(assert (= (and d!717820 c!401845) b!2519834))

(assert (= (and d!717820 (not c!401845)) b!2519831))

(assert (= (and d!717820 c!401847) b!2519833))

(assert (= (and d!717820 (not c!401847)) b!2519843))

(assert (= (and b!2519843 c!401846) b!2519842))

(assert (= (and b!2519843 (not c!401846)) b!2519832))

(assert (= (and b!2519832 (not res!1064672)) b!2519837))

(assert (= (and b!2519837 res!1064677) b!2519835))

(assert (= (and b!2519835 res!1064673) b!2519836))

(assert (= (and b!2519836 res!1064678) b!2519838))

(assert (= (and b!2519837 (not res!1064679)) b!2519839))

(assert (= (and b!2519839 res!1064675) b!2519840))

(assert (= (and b!2519840 (not res!1064676)) b!2519830))

(assert (= (and b!2519830 (not res!1064674)) b!2519841))

(assert (= (or b!2519833 b!2519835 b!2519840) bm!156951))

(declare-fun m!2874945 () Bool)

(assert (=> d!717820 m!2874945))

(declare-fun m!2874947 () Bool)

(assert (=> d!717820 m!2874947))

(declare-fun m!2874949 () Bool)

(assert (=> b!2519838 m!2874949))

(assert (=> bm!156951 m!2874945))

(declare-fun m!2874951 () Bool)

(assert (=> b!2519836 m!2874951))

(assert (=> b!2519836 m!2874951))

(declare-fun m!2874953 () Bool)

(assert (=> b!2519836 m!2874953))

(assert (=> b!2519830 m!2874951))

(assert (=> b!2519830 m!2874951))

(assert (=> b!2519830 m!2874953))

(assert (=> b!2519831 m!2874949))

(assert (=> b!2519831 m!2874949))

(declare-fun m!2874955 () Bool)

(assert (=> b!2519831 m!2874955))

(assert (=> b!2519831 m!2874951))

(assert (=> b!2519831 m!2874955))

(assert (=> b!2519831 m!2874951))

(declare-fun m!2874957 () Bool)

(assert (=> b!2519831 m!2874957))

(assert (=> b!2519834 m!2874861))

(assert (=> b!2519841 m!2874949))

(assert (=> b!2519725 d!717820))

(declare-fun d!717826 () Bool)

(declare-fun e!1595921 () Bool)

(assert (=> d!717826 e!1595921))

(declare-fun c!401850 () Bool)

(assert (=> d!717826 (= c!401850 ((_ is EmptyExpr!7505) lt!899435))))

(declare-fun lt!899464 () Bool)

(declare-fun e!1595923 () Bool)

(assert (=> d!717826 (= lt!899464 e!1595923)))

(declare-fun c!401848 () Bool)

(assert (=> d!717826 (= c!401848 (isEmpty!16933 tl!4068))))

(assert (=> d!717826 (validRegex!3131 lt!899435)))

(assert (=> d!717826 (= (matchR!3492 lt!899435 tl!4068) lt!899464)))

(declare-fun b!2519844 () Bool)

(declare-fun res!1064682 () Bool)

(declare-fun e!1595922 () Bool)

(assert (=> b!2519844 (=> res!1064682 e!1595922)))

(assert (=> b!2519844 (= res!1064682 (not (isEmpty!16933 (tail!4031 tl!4068))))))

(declare-fun b!2519845 () Bool)

(assert (=> b!2519845 (= e!1595923 (matchR!3492 (derivativeStep!2074 lt!899435 (head!5754 tl!4068)) (tail!4031 tl!4068)))))

(declare-fun b!2519846 () Bool)

(declare-fun res!1064680 () Bool)

(declare-fun e!1595925 () Bool)

(assert (=> b!2519846 (=> res!1064680 e!1595925)))

(assert (=> b!2519846 (= res!1064680 (not ((_ is ElementMatch!7505) lt!899435)))))

(declare-fun e!1595924 () Bool)

(assert (=> b!2519846 (= e!1595924 e!1595925)))

(declare-fun b!2519847 () Bool)

(declare-fun call!156957 () Bool)

(assert (=> b!2519847 (= e!1595921 (= lt!899464 call!156957))))

(declare-fun b!2519848 () Bool)

(assert (=> b!2519848 (= e!1595923 (nullable!2422 lt!899435))))

(declare-fun bm!156952 () Bool)

(assert (=> bm!156952 (= call!156957 (isEmpty!16933 tl!4068))))

(declare-fun b!2519849 () Bool)

(declare-fun res!1064681 () Bool)

(declare-fun e!1595920 () Bool)

(assert (=> b!2519849 (=> (not res!1064681) (not e!1595920))))

(assert (=> b!2519849 (= res!1064681 (not call!156957))))

(declare-fun b!2519850 () Bool)

(declare-fun res!1064686 () Bool)

(assert (=> b!2519850 (=> (not res!1064686) (not e!1595920))))

(assert (=> b!2519850 (= res!1064686 (isEmpty!16933 (tail!4031 tl!4068)))))

(declare-fun b!2519851 () Bool)

(declare-fun res!1064687 () Bool)

(assert (=> b!2519851 (=> res!1064687 e!1595925)))

(assert (=> b!2519851 (= res!1064687 e!1595920)))

(declare-fun res!1064685 () Bool)

(assert (=> b!2519851 (=> (not res!1064685) (not e!1595920))))

(assert (=> b!2519851 (= res!1064685 lt!899464)))

(declare-fun b!2519852 () Bool)

(assert (=> b!2519852 (= e!1595920 (= (head!5754 tl!4068) (c!401811 lt!899435)))))

(declare-fun b!2519853 () Bool)

(declare-fun e!1595919 () Bool)

(assert (=> b!2519853 (= e!1595925 e!1595919)))

(declare-fun res!1064683 () Bool)

(assert (=> b!2519853 (=> (not res!1064683) (not e!1595919))))

(assert (=> b!2519853 (= res!1064683 (not lt!899464))))

(declare-fun b!2519854 () Bool)

(assert (=> b!2519854 (= e!1595919 e!1595922)))

(declare-fun res!1064684 () Bool)

(assert (=> b!2519854 (=> res!1064684 e!1595922)))

(assert (=> b!2519854 (= res!1064684 call!156957)))

(declare-fun b!2519855 () Bool)

(assert (=> b!2519855 (= e!1595922 (not (= (head!5754 tl!4068) (c!401811 lt!899435))))))

(declare-fun b!2519856 () Bool)

(assert (=> b!2519856 (= e!1595924 (not lt!899464))))

(declare-fun b!2519857 () Bool)

(assert (=> b!2519857 (= e!1595921 e!1595924)))

(declare-fun c!401849 () Bool)

(assert (=> b!2519857 (= c!401849 ((_ is EmptyLang!7505) lt!899435))))

(assert (= (and d!717826 c!401848) b!2519848))

(assert (= (and d!717826 (not c!401848)) b!2519845))

(assert (= (and d!717826 c!401850) b!2519847))

(assert (= (and d!717826 (not c!401850)) b!2519857))

(assert (= (and b!2519857 c!401849) b!2519856))

(assert (= (and b!2519857 (not c!401849)) b!2519846))

(assert (= (and b!2519846 (not res!1064680)) b!2519851))

(assert (= (and b!2519851 res!1064685) b!2519849))

(assert (= (and b!2519849 res!1064681) b!2519850))

(assert (= (and b!2519850 res!1064686) b!2519852))

(assert (= (and b!2519851 (not res!1064687)) b!2519853))

(assert (= (and b!2519853 res!1064683) b!2519854))

(assert (= (and b!2519854 (not res!1064684)) b!2519844))

(assert (= (and b!2519844 (not res!1064682)) b!2519855))

(assert (= (or b!2519847 b!2519849 b!2519854) bm!156952))

(declare-fun m!2874959 () Bool)

(assert (=> d!717826 m!2874959))

(declare-fun m!2874961 () Bool)

(assert (=> d!717826 m!2874961))

(declare-fun m!2874963 () Bool)

(assert (=> b!2519852 m!2874963))

(assert (=> bm!156952 m!2874959))

(declare-fun m!2874965 () Bool)

(assert (=> b!2519850 m!2874965))

(assert (=> b!2519850 m!2874965))

(declare-fun m!2874967 () Bool)

(assert (=> b!2519850 m!2874967))

(assert (=> b!2519844 m!2874965))

(assert (=> b!2519844 m!2874965))

(assert (=> b!2519844 m!2874967))

(assert (=> b!2519845 m!2874963))

(assert (=> b!2519845 m!2874963))

(declare-fun m!2874973 () Bool)

(assert (=> b!2519845 m!2874973))

(assert (=> b!2519845 m!2874965))

(assert (=> b!2519845 m!2874973))

(assert (=> b!2519845 m!2874965))

(declare-fun m!2874975 () Bool)

(assert (=> b!2519845 m!2874975))

(declare-fun m!2874977 () Bool)

(assert (=> b!2519848 m!2874977))

(assert (=> b!2519855 m!2874963))

(assert (=> b!2519725 d!717826))

(declare-fun d!717830 () Bool)

(assert (=> d!717830 (= (matchR!3492 lt!899435 tl!4068) (matchR!3492 (derivative!200 lt!899435 tl!4068) Nil!29470))))

(declare-fun lt!899470 () Unit!43235)

(declare-fun choose!14935 (Regex!7505 List!29570) Unit!43235)

(assert (=> d!717830 (= lt!899470 (choose!14935 lt!899435 tl!4068))))

(assert (=> d!717830 (validRegex!3131 lt!899435)))

(assert (=> d!717830 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!138 lt!899435 tl!4068) lt!899470)))

(declare-fun bs!468965 () Bool)

(assert (= bs!468965 d!717830))

(declare-fun m!2874979 () Bool)

(assert (=> bs!468965 m!2874979))

(assert (=> bs!468965 m!2874863))

(declare-fun m!2874981 () Bool)

(assert (=> bs!468965 m!2874981))

(assert (=> bs!468965 m!2874961))

(assert (=> bs!468965 m!2874873))

(assert (=> bs!468965 m!2874863))

(assert (=> b!2519725 d!717830))

(declare-fun d!717834 () Bool)

(declare-fun e!1595928 () Bool)

(assert (=> d!717834 e!1595928))

(declare-fun c!401853 () Bool)

(assert (=> d!717834 (= c!401853 ((_ is EmptyExpr!7505) (reg!7834 r!27340)))))

(declare-fun lt!899471 () Bool)

(declare-fun e!1595930 () Bool)

(assert (=> d!717834 (= lt!899471 e!1595930)))

(declare-fun c!401851 () Bool)

(assert (=> d!717834 (= c!401851 (isEmpty!16933 (Cons!29470 c!14016 (_1!17298 lt!899442))))))

(assert (=> d!717834 (validRegex!3131 (reg!7834 r!27340))))

(assert (=> d!717834 (= (matchR!3492 (reg!7834 r!27340) (Cons!29470 c!14016 (_1!17298 lt!899442))) lt!899471)))

(declare-fun b!2519858 () Bool)

(declare-fun res!1064690 () Bool)

(declare-fun e!1595929 () Bool)

(assert (=> b!2519858 (=> res!1064690 e!1595929)))

(assert (=> b!2519858 (= res!1064690 (not (isEmpty!16933 (tail!4031 (Cons!29470 c!14016 (_1!17298 lt!899442))))))))

(declare-fun b!2519859 () Bool)

(assert (=> b!2519859 (= e!1595930 (matchR!3492 (derivativeStep!2074 (reg!7834 r!27340) (head!5754 (Cons!29470 c!14016 (_1!17298 lt!899442)))) (tail!4031 (Cons!29470 c!14016 (_1!17298 lt!899442)))))))

(declare-fun b!2519860 () Bool)

(declare-fun res!1064688 () Bool)

(declare-fun e!1595932 () Bool)

(assert (=> b!2519860 (=> res!1064688 e!1595932)))

(assert (=> b!2519860 (= res!1064688 (not ((_ is ElementMatch!7505) (reg!7834 r!27340))))))

(declare-fun e!1595931 () Bool)

(assert (=> b!2519860 (= e!1595931 e!1595932)))

(declare-fun b!2519861 () Bool)

(declare-fun call!156958 () Bool)

(assert (=> b!2519861 (= e!1595928 (= lt!899471 call!156958))))

(declare-fun b!2519862 () Bool)

(assert (=> b!2519862 (= e!1595930 (nullable!2422 (reg!7834 r!27340)))))

(declare-fun bm!156953 () Bool)

(assert (=> bm!156953 (= call!156958 (isEmpty!16933 (Cons!29470 c!14016 (_1!17298 lt!899442))))))

(declare-fun b!2519863 () Bool)

(declare-fun res!1064689 () Bool)

(declare-fun e!1595927 () Bool)

(assert (=> b!2519863 (=> (not res!1064689) (not e!1595927))))

(assert (=> b!2519863 (= res!1064689 (not call!156958))))

(declare-fun b!2519864 () Bool)

(declare-fun res!1064694 () Bool)

(assert (=> b!2519864 (=> (not res!1064694) (not e!1595927))))

(assert (=> b!2519864 (= res!1064694 (isEmpty!16933 (tail!4031 (Cons!29470 c!14016 (_1!17298 lt!899442)))))))

(declare-fun b!2519865 () Bool)

(declare-fun res!1064695 () Bool)

(assert (=> b!2519865 (=> res!1064695 e!1595932)))

(assert (=> b!2519865 (= res!1064695 e!1595927)))

(declare-fun res!1064693 () Bool)

(assert (=> b!2519865 (=> (not res!1064693) (not e!1595927))))

(assert (=> b!2519865 (= res!1064693 lt!899471)))

(declare-fun b!2519866 () Bool)

(assert (=> b!2519866 (= e!1595927 (= (head!5754 (Cons!29470 c!14016 (_1!17298 lt!899442))) (c!401811 (reg!7834 r!27340))))))

(declare-fun b!2519867 () Bool)

(declare-fun e!1595926 () Bool)

(assert (=> b!2519867 (= e!1595932 e!1595926)))

(declare-fun res!1064691 () Bool)

(assert (=> b!2519867 (=> (not res!1064691) (not e!1595926))))

(assert (=> b!2519867 (= res!1064691 (not lt!899471))))

(declare-fun b!2519868 () Bool)

(assert (=> b!2519868 (= e!1595926 e!1595929)))

(declare-fun res!1064692 () Bool)

(assert (=> b!2519868 (=> res!1064692 e!1595929)))

(assert (=> b!2519868 (= res!1064692 call!156958)))

(declare-fun b!2519869 () Bool)

(assert (=> b!2519869 (= e!1595929 (not (= (head!5754 (Cons!29470 c!14016 (_1!17298 lt!899442))) (c!401811 (reg!7834 r!27340)))))))

(declare-fun b!2519870 () Bool)

(assert (=> b!2519870 (= e!1595931 (not lt!899471))))

(declare-fun b!2519871 () Bool)

(assert (=> b!2519871 (= e!1595928 e!1595931)))

(declare-fun c!401852 () Bool)

(assert (=> b!2519871 (= c!401852 ((_ is EmptyLang!7505) (reg!7834 r!27340)))))

(assert (= (and d!717834 c!401851) b!2519862))

(assert (= (and d!717834 (not c!401851)) b!2519859))

(assert (= (and d!717834 c!401853) b!2519861))

(assert (= (and d!717834 (not c!401853)) b!2519871))

(assert (= (and b!2519871 c!401852) b!2519870))

(assert (= (and b!2519871 (not c!401852)) b!2519860))

(assert (= (and b!2519860 (not res!1064688)) b!2519865))

(assert (= (and b!2519865 res!1064693) b!2519863))

(assert (= (and b!2519863 res!1064689) b!2519864))

(assert (= (and b!2519864 res!1064694) b!2519866))

(assert (= (and b!2519865 (not res!1064695)) b!2519867))

(assert (= (and b!2519867 res!1064691) b!2519868))

(assert (= (and b!2519868 (not res!1064692)) b!2519858))

(assert (= (and b!2519858 (not res!1064690)) b!2519869))

(assert (= (or b!2519861 b!2519863 b!2519868) bm!156953))

(declare-fun m!2874983 () Bool)

(assert (=> d!717834 m!2874983))

(assert (=> d!717834 m!2874917))

(declare-fun m!2874985 () Bool)

(assert (=> b!2519866 m!2874985))

(assert (=> bm!156953 m!2874983))

(declare-fun m!2874987 () Bool)

(assert (=> b!2519864 m!2874987))

(assert (=> b!2519864 m!2874987))

(declare-fun m!2874989 () Bool)

(assert (=> b!2519864 m!2874989))

(assert (=> b!2519858 m!2874987))

(assert (=> b!2519858 m!2874987))

(assert (=> b!2519858 m!2874989))

(assert (=> b!2519859 m!2874985))

(assert (=> b!2519859 m!2874985))

(declare-fun m!2874991 () Bool)

(assert (=> b!2519859 m!2874991))

(assert (=> b!2519859 m!2874987))

(assert (=> b!2519859 m!2874991))

(assert (=> b!2519859 m!2874987))

(declare-fun m!2874993 () Bool)

(assert (=> b!2519859 m!2874993))

(declare-fun m!2874995 () Bool)

(assert (=> b!2519862 m!2874995))

(assert (=> b!2519869 m!2874985))

(assert (=> b!2519720 d!717834))

(declare-fun d!717836 () Bool)

(declare-fun e!1595945 () Bool)

(assert (=> d!717836 e!1595945))

(declare-fun c!401866 () Bool)

(assert (=> d!717836 (= c!401866 ((_ is EmptyExpr!7505) lt!899438))))

(declare-fun lt!899474 () Bool)

(declare-fun e!1595947 () Bool)

(assert (=> d!717836 (= lt!899474 e!1595947)))

(declare-fun c!401864 () Bool)

(assert (=> d!717836 (= c!401864 (isEmpty!16933 (_2!17298 lt!899442)))))

(assert (=> d!717836 (validRegex!3131 lt!899438)))

(assert (=> d!717836 (= (matchR!3492 lt!899438 (_2!17298 lt!899442)) lt!899474)))

(declare-fun b!2519892 () Bool)

(declare-fun res!1064698 () Bool)

(declare-fun e!1595946 () Bool)

(assert (=> b!2519892 (=> res!1064698 e!1595946)))

(assert (=> b!2519892 (= res!1064698 (not (isEmpty!16933 (tail!4031 (_2!17298 lt!899442)))))))

(declare-fun b!2519893 () Bool)

(assert (=> b!2519893 (= e!1595947 (matchR!3492 (derivativeStep!2074 lt!899438 (head!5754 (_2!17298 lt!899442))) (tail!4031 (_2!17298 lt!899442))))))

(declare-fun b!2519894 () Bool)

(declare-fun res!1064696 () Bool)

(declare-fun e!1595949 () Bool)

(assert (=> b!2519894 (=> res!1064696 e!1595949)))

(assert (=> b!2519894 (= res!1064696 (not ((_ is ElementMatch!7505) lt!899438)))))

(declare-fun e!1595948 () Bool)

(assert (=> b!2519894 (= e!1595948 e!1595949)))

(declare-fun b!2519895 () Bool)

(declare-fun call!156961 () Bool)

(assert (=> b!2519895 (= e!1595945 (= lt!899474 call!156961))))

(declare-fun b!2519896 () Bool)

(assert (=> b!2519896 (= e!1595947 (nullable!2422 lt!899438))))

(declare-fun bm!156956 () Bool)

(assert (=> bm!156956 (= call!156961 (isEmpty!16933 (_2!17298 lt!899442)))))

(declare-fun b!2519897 () Bool)

(declare-fun res!1064697 () Bool)

(declare-fun e!1595944 () Bool)

(assert (=> b!2519897 (=> (not res!1064697) (not e!1595944))))

(assert (=> b!2519897 (= res!1064697 (not call!156961))))

(declare-fun b!2519898 () Bool)

(declare-fun res!1064702 () Bool)

(assert (=> b!2519898 (=> (not res!1064702) (not e!1595944))))

(assert (=> b!2519898 (= res!1064702 (isEmpty!16933 (tail!4031 (_2!17298 lt!899442))))))

(declare-fun b!2519899 () Bool)

(declare-fun res!1064703 () Bool)

(assert (=> b!2519899 (=> res!1064703 e!1595949)))

(assert (=> b!2519899 (= res!1064703 e!1595944)))

(declare-fun res!1064701 () Bool)

(assert (=> b!2519899 (=> (not res!1064701) (not e!1595944))))

(assert (=> b!2519899 (= res!1064701 lt!899474)))

(declare-fun b!2519900 () Bool)

(assert (=> b!2519900 (= e!1595944 (= (head!5754 (_2!17298 lt!899442)) (c!401811 lt!899438)))))

(declare-fun b!2519901 () Bool)

(declare-fun e!1595943 () Bool)

(assert (=> b!2519901 (= e!1595949 e!1595943)))

(declare-fun res!1064699 () Bool)

(assert (=> b!2519901 (=> (not res!1064699) (not e!1595943))))

(assert (=> b!2519901 (= res!1064699 (not lt!899474))))

(declare-fun b!2519902 () Bool)

(assert (=> b!2519902 (= e!1595943 e!1595946)))

(declare-fun res!1064700 () Bool)

(assert (=> b!2519902 (=> res!1064700 e!1595946)))

(assert (=> b!2519902 (= res!1064700 call!156961)))

(declare-fun b!2519903 () Bool)

(assert (=> b!2519903 (= e!1595946 (not (= (head!5754 (_2!17298 lt!899442)) (c!401811 lt!899438))))))

(declare-fun b!2519904 () Bool)

(assert (=> b!2519904 (= e!1595948 (not lt!899474))))

(declare-fun b!2519905 () Bool)

(assert (=> b!2519905 (= e!1595945 e!1595948)))

(declare-fun c!401865 () Bool)

(assert (=> b!2519905 (= c!401865 ((_ is EmptyLang!7505) lt!899438))))

(assert (= (and d!717836 c!401864) b!2519896))

(assert (= (and d!717836 (not c!401864)) b!2519893))

(assert (= (and d!717836 c!401866) b!2519895))

(assert (= (and d!717836 (not c!401866)) b!2519905))

(assert (= (and b!2519905 c!401865) b!2519904))

(assert (= (and b!2519905 (not c!401865)) b!2519894))

(assert (= (and b!2519894 (not res!1064696)) b!2519899))

(assert (= (and b!2519899 res!1064701) b!2519897))

(assert (= (and b!2519897 res!1064697) b!2519898))

(assert (= (and b!2519898 res!1064702) b!2519900))

(assert (= (and b!2519899 (not res!1064703)) b!2519901))

(assert (= (and b!2519901 res!1064699) b!2519902))

(assert (= (and b!2519902 (not res!1064700)) b!2519892))

(assert (= (and b!2519892 (not res!1064698)) b!2519903))

(assert (= (or b!2519895 b!2519897 b!2519902) bm!156956))

(declare-fun m!2874997 () Bool)

(assert (=> d!717836 m!2874997))

(declare-fun m!2874999 () Bool)

(assert (=> d!717836 m!2874999))

(declare-fun m!2875001 () Bool)

(assert (=> b!2519900 m!2875001))

(assert (=> bm!156956 m!2874997))

(declare-fun m!2875003 () Bool)

(assert (=> b!2519898 m!2875003))

(assert (=> b!2519898 m!2875003))

(declare-fun m!2875005 () Bool)

(assert (=> b!2519898 m!2875005))

(assert (=> b!2519892 m!2875003))

(assert (=> b!2519892 m!2875003))

(assert (=> b!2519892 m!2875005))

(assert (=> b!2519893 m!2875001))

(assert (=> b!2519893 m!2875001))

(declare-fun m!2875007 () Bool)

(assert (=> b!2519893 m!2875007))

(assert (=> b!2519893 m!2875003))

(assert (=> b!2519893 m!2875007))

(assert (=> b!2519893 m!2875003))

(declare-fun m!2875009 () Bool)

(assert (=> b!2519893 m!2875009))

(declare-fun m!2875011 () Bool)

(assert (=> b!2519896 m!2875011))

(assert (=> b!2519903 m!2875001))

(assert (=> b!2519715 d!717836))

(declare-fun d!717838 () Bool)

(assert (=> d!717838 (= (nullable!2422 lt!899436) (nullableFct!663 lt!899436))))

(declare-fun bs!468966 () Bool)

(assert (= bs!468966 d!717838))

(declare-fun m!2875013 () Bool)

(assert (=> bs!468966 m!2875013))

(assert (=> b!2519722 d!717838))

(declare-fun d!717840 () Bool)

(declare-fun lt!899475 () Regex!7505)

(assert (=> d!717840 (validRegex!3131 lt!899475)))

(declare-fun e!1595950 () Regex!7505)

(assert (=> d!717840 (= lt!899475 e!1595950)))

(declare-fun c!401867 () Bool)

(assert (=> d!717840 (= c!401867 ((_ is Cons!29470) tl!4068))))

(assert (=> d!717840 (validRegex!3131 lt!899435)))

(assert (=> d!717840 (= (derivative!200 lt!899435 tl!4068) lt!899475)))

(declare-fun b!2519906 () Bool)

(assert (=> b!2519906 (= e!1595950 (derivative!200 (derivativeStep!2074 lt!899435 (h!34890 tl!4068)) (t!211269 tl!4068)))))

(declare-fun b!2519907 () Bool)

(assert (=> b!2519907 (= e!1595950 lt!899435)))

(assert (= (and d!717840 c!401867) b!2519906))

(assert (= (and d!717840 (not c!401867)) b!2519907))

(declare-fun m!2875015 () Bool)

(assert (=> d!717840 m!2875015))

(assert (=> d!717840 m!2874961))

(declare-fun m!2875017 () Bool)

(assert (=> b!2519906 m!2875017))

(assert (=> b!2519906 m!2875017))

(declare-fun m!2875019 () Bool)

(assert (=> b!2519906 m!2875019))

(assert (=> b!2519722 d!717840))

(declare-fun b!2519908 () Bool)

(declare-fun e!1595954 () Regex!7505)

(assert (=> b!2519908 (= e!1595954 (ite (= c!14016 (c!401811 r!27340)) EmptyExpr!7505 EmptyLang!7505))))

(declare-fun call!156970 () Regex!7505)

(declare-fun b!2519909 () Bool)

(declare-fun e!1595953 () Regex!7505)

(declare-fun call!156968 () Regex!7505)

(assert (=> b!2519909 (= e!1595953 (Union!7505 (Concat!12201 call!156968 (regTwo!15522 r!27340)) call!156970))))

(declare-fun bm!156963 () Bool)

(declare-fun call!156969 () Regex!7505)

(declare-fun c!401869 () Bool)

(declare-fun c!401868 () Bool)

(assert (=> bm!156963 (= call!156969 (derivativeStep!2074 (ite c!401869 (regTwo!15523 r!27340) (ite c!401868 (reg!7834 r!27340) (regOne!15522 r!27340))) c!14016))))

(declare-fun b!2519910 () Bool)

(declare-fun e!1595951 () Regex!7505)

(declare-fun call!156971 () Regex!7505)

(assert (=> b!2519910 (= e!1595951 (Concat!12201 call!156971 r!27340))))

(declare-fun b!2519911 () Bool)

(declare-fun e!1595955 () Regex!7505)

(assert (=> b!2519911 (= e!1595955 EmptyLang!7505)))

(declare-fun b!2519912 () Bool)

(assert (=> b!2519912 (= e!1595953 (Union!7505 (Concat!12201 call!156968 (regTwo!15522 r!27340)) EmptyLang!7505))))

(declare-fun b!2519913 () Bool)

(assert (=> b!2519913 (= c!401869 ((_ is Union!7505) r!27340))))

(declare-fun e!1595952 () Regex!7505)

(assert (=> b!2519913 (= e!1595954 e!1595952)))

(declare-fun b!2519914 () Bool)

(assert (=> b!2519914 (= e!1595955 e!1595954)))

(declare-fun c!401872 () Bool)

(assert (=> b!2519914 (= c!401872 ((_ is ElementMatch!7505) r!27340))))

(declare-fun b!2519915 () Bool)

(declare-fun c!401871 () Bool)

(assert (=> b!2519915 (= c!401871 (nullable!2422 (regOne!15522 r!27340)))))

(assert (=> b!2519915 (= e!1595951 e!1595953)))

(declare-fun b!2519916 () Bool)

(assert (=> b!2519916 (= e!1595952 (Union!7505 call!156970 call!156969))))

(declare-fun b!2519917 () Bool)

(assert (=> b!2519917 (= e!1595952 e!1595951)))

(assert (=> b!2519917 (= c!401868 ((_ is Star!7505) r!27340))))

(declare-fun bm!156964 () Bool)

(assert (=> bm!156964 (= call!156970 (derivativeStep!2074 (ite c!401869 (regOne!15523 r!27340) (regTwo!15522 r!27340)) c!14016))))

(declare-fun d!717842 () Bool)

(declare-fun lt!899476 () Regex!7505)

(assert (=> d!717842 (validRegex!3131 lt!899476)))

(assert (=> d!717842 (= lt!899476 e!1595955)))

(declare-fun c!401870 () Bool)

(assert (=> d!717842 (= c!401870 (or ((_ is EmptyExpr!7505) r!27340) ((_ is EmptyLang!7505) r!27340)))))

(assert (=> d!717842 (validRegex!3131 r!27340)))

(assert (=> d!717842 (= (derivativeStep!2074 r!27340 c!14016) lt!899476)))

(declare-fun bm!156965 () Bool)

(assert (=> bm!156965 (= call!156968 call!156971)))

(declare-fun bm!156966 () Bool)

(assert (=> bm!156966 (= call!156971 call!156969)))

(assert (= (and d!717842 c!401870) b!2519911))

(assert (= (and d!717842 (not c!401870)) b!2519914))

(assert (= (and b!2519914 c!401872) b!2519908))

(assert (= (and b!2519914 (not c!401872)) b!2519913))

(assert (= (and b!2519913 c!401869) b!2519916))

(assert (= (and b!2519913 (not c!401869)) b!2519917))

(assert (= (and b!2519917 c!401868) b!2519910))

(assert (= (and b!2519917 (not c!401868)) b!2519915))

(assert (= (and b!2519915 c!401871) b!2519909))

(assert (= (and b!2519915 (not c!401871)) b!2519912))

(assert (= (or b!2519909 b!2519912) bm!156965))

(assert (= (or b!2519910 bm!156965) bm!156966))

(assert (= (or b!2519916 bm!156966) bm!156963))

(assert (= (or b!2519916 b!2519909) bm!156964))

(declare-fun m!2875021 () Bool)

(assert (=> bm!156963 m!2875021))

(declare-fun m!2875023 () Bool)

(assert (=> b!2519915 m!2875023))

(declare-fun m!2875025 () Bool)

(assert (=> bm!156964 m!2875025))

(declare-fun m!2875027 () Bool)

(assert (=> d!717842 m!2875027))

(assert (=> d!717842 m!2874879))

(assert (=> b!2519722 d!717842))

(declare-fun b!2519946 () Bool)

(declare-fun e!1595976 () Bool)

(declare-fun call!156982 () Bool)

(assert (=> b!2519946 (= e!1595976 call!156982)))

(declare-fun bm!156977 () Bool)

(declare-fun call!156983 () Bool)

(declare-fun c!401882 () Bool)

(assert (=> bm!156977 (= call!156983 (validRegex!3131 (ite c!401882 (regOne!15523 r!27340) (regTwo!15522 r!27340))))))

(declare-fun b!2519947 () Bool)

(declare-fun e!1595977 () Bool)

(assert (=> b!2519947 (= e!1595977 e!1595976)))

(declare-fun res!1064717 () Bool)

(assert (=> b!2519947 (= res!1064717 (not (nullable!2422 (reg!7834 r!27340))))))

(assert (=> b!2519947 (=> (not res!1064717) (not e!1595976))))

(declare-fun b!2519948 () Bool)

(declare-fun e!1595979 () Bool)

(assert (=> b!2519948 (= e!1595979 e!1595977)))

(declare-fun c!401883 () Bool)

(assert (=> b!2519948 (= c!401883 ((_ is Star!7505) r!27340))))

(declare-fun b!2519949 () Bool)

(declare-fun e!1595978 () Bool)

(assert (=> b!2519949 (= e!1595978 call!156983)))

(declare-fun d!717844 () Bool)

(declare-fun res!1064714 () Bool)

(assert (=> d!717844 (=> res!1064714 e!1595979)))

(assert (=> d!717844 (= res!1064714 ((_ is ElementMatch!7505) r!27340))))

(assert (=> d!717844 (= (validRegex!3131 r!27340) e!1595979)))

(declare-fun b!2519950 () Bool)

(declare-fun res!1064715 () Bool)

(declare-fun e!1595975 () Bool)

(assert (=> b!2519950 (=> (not res!1064715) (not e!1595975))))

(assert (=> b!2519950 (= res!1064715 call!156983)))

(declare-fun e!1595981 () Bool)

(assert (=> b!2519950 (= e!1595981 e!1595975)))

(declare-fun bm!156978 () Bool)

(assert (=> bm!156978 (= call!156982 (validRegex!3131 (ite c!401883 (reg!7834 r!27340) (ite c!401882 (regTwo!15523 r!27340) (regOne!15522 r!27340)))))))

(declare-fun b!2519951 () Bool)

(declare-fun call!156984 () Bool)

(assert (=> b!2519951 (= e!1595975 call!156984)))

(declare-fun bm!156979 () Bool)

(assert (=> bm!156979 (= call!156984 call!156982)))

(declare-fun b!2519952 () Bool)

(declare-fun res!1064716 () Bool)

(declare-fun e!1595980 () Bool)

(assert (=> b!2519952 (=> res!1064716 e!1595980)))

(assert (=> b!2519952 (= res!1064716 (not ((_ is Concat!12201) r!27340)))))

(assert (=> b!2519952 (= e!1595981 e!1595980)))

(declare-fun b!2519953 () Bool)

(assert (=> b!2519953 (= e!1595977 e!1595981)))

(assert (=> b!2519953 (= c!401882 ((_ is Union!7505) r!27340))))

(declare-fun b!2519954 () Bool)

(assert (=> b!2519954 (= e!1595980 e!1595978)))

(declare-fun res!1064718 () Bool)

(assert (=> b!2519954 (=> (not res!1064718) (not e!1595978))))

(assert (=> b!2519954 (= res!1064718 call!156984)))

(assert (= (and d!717844 (not res!1064714)) b!2519948))

(assert (= (and b!2519948 c!401883) b!2519947))

(assert (= (and b!2519948 (not c!401883)) b!2519953))

(assert (= (and b!2519947 res!1064717) b!2519946))

(assert (= (and b!2519953 c!401882) b!2519950))

(assert (= (and b!2519953 (not c!401882)) b!2519952))

(assert (= (and b!2519950 res!1064715) b!2519951))

(assert (= (and b!2519952 (not res!1064716)) b!2519954))

(assert (= (and b!2519954 res!1064718) b!2519949))

(assert (= (or b!2519950 b!2519949) bm!156977))

(assert (= (or b!2519951 b!2519954) bm!156979))

(assert (= (or b!2519946 bm!156979) bm!156978))

(declare-fun m!2875039 () Bool)

(assert (=> bm!156977 m!2875039))

(assert (=> b!2519947 m!2874995))

(declare-fun m!2875041 () Bool)

(assert (=> bm!156978 m!2875041))

(assert (=> start!245620 d!717844))

(declare-fun d!717848 () Bool)

(declare-fun e!1596007 () Bool)

(assert (=> d!717848 e!1596007))

(declare-fun res!1064747 () Bool)

(assert (=> d!717848 (=> (not res!1064747) (not e!1596007))))

(declare-fun lt!899483 () List!29570)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4034 (List!29570) (InoxSet C!15168))

(assert (=> d!717848 (= res!1064747 (= (content!4034 lt!899483) ((_ map or) (content!4034 (_1!17298 lt!899442)) (content!4034 (_2!17298 lt!899442)))))))

(declare-fun e!1596008 () List!29570)

(assert (=> d!717848 (= lt!899483 e!1596008)))

(declare-fun c!401895 () Bool)

(assert (=> d!717848 (= c!401895 ((_ is Nil!29470) (_1!17298 lt!899442)))))

(assert (=> d!717848 (= (++!7226 (_1!17298 lt!899442) (_2!17298 lt!899442)) lt!899483)))

(declare-fun b!2520006 () Bool)

(assert (=> b!2520006 (= e!1596008 (Cons!29470 (h!34890 (_1!17298 lt!899442)) (++!7226 (t!211269 (_1!17298 lt!899442)) (_2!17298 lt!899442))))))

(declare-fun b!2520008 () Bool)

(assert (=> b!2520008 (= e!1596007 (or (not (= (_2!17298 lt!899442) Nil!29470)) (= lt!899483 (_1!17298 lt!899442))))))

(declare-fun b!2520005 () Bool)

(assert (=> b!2520005 (= e!1596008 (_2!17298 lt!899442))))

(declare-fun b!2520007 () Bool)

(declare-fun res!1064748 () Bool)

(assert (=> b!2520007 (=> (not res!1064748) (not e!1596007))))

(declare-fun size!22916 (List!29570) Int)

(assert (=> b!2520007 (= res!1064748 (= (size!22916 lt!899483) (+ (size!22916 (_1!17298 lt!899442)) (size!22916 (_2!17298 lt!899442)))))))

(assert (= (and d!717848 c!401895) b!2520005))

(assert (= (and d!717848 (not c!401895)) b!2520006))

(assert (= (and d!717848 res!1064747) b!2520007))

(assert (= (and b!2520007 res!1064748) b!2520008))

(declare-fun m!2875043 () Bool)

(assert (=> d!717848 m!2875043))

(declare-fun m!2875045 () Bool)

(assert (=> d!717848 m!2875045))

(declare-fun m!2875047 () Bool)

(assert (=> d!717848 m!2875047))

(declare-fun m!2875049 () Bool)

(assert (=> b!2520006 m!2875049))

(declare-fun m!2875051 () Bool)

(assert (=> b!2520007 m!2875051))

(declare-fun m!2875053 () Bool)

(assert (=> b!2520007 m!2875053))

(declare-fun m!2875055 () Bool)

(assert (=> b!2520007 m!2875055))

(assert (=> b!2519723 d!717848))

(declare-fun b!2520149 () Bool)

(declare-fun e!1596082 () Bool)

(declare-fun lt!899502 () Option!5876)

(assert (=> b!2520149 (= e!1596082 (= (++!7226 (_1!17298 (get!9207 lt!899502)) (_2!17298 (get!9207 lt!899502))) tl!4068))))

(declare-fun b!2520150 () Bool)

(declare-fun e!1596080 () Option!5876)

(assert (=> b!2520150 (= e!1596080 (Some!5875 (tuple2!29513 Nil!29470 tl!4068)))))

(declare-fun d!717850 () Bool)

(declare-fun e!1596084 () Bool)

(assert (=> d!717850 e!1596084))

(declare-fun res!1064800 () Bool)

(assert (=> d!717850 (=> res!1064800 e!1596084)))

(assert (=> d!717850 (= res!1064800 e!1596082)))

(declare-fun res!1064799 () Bool)

(assert (=> d!717850 (=> (not res!1064799) (not e!1596082))))

(assert (=> d!717850 (= res!1064799 (isDefined!4698 lt!899502))))

(assert (=> d!717850 (= lt!899502 e!1596080)))

(declare-fun c!401924 () Bool)

(declare-fun e!1596083 () Bool)

(assert (=> d!717850 (= c!401924 e!1596083)))

(declare-fun res!1064798 () Bool)

(assert (=> d!717850 (=> (not res!1064798) (not e!1596083))))

(assert (=> d!717850 (= res!1064798 (matchR!3492 lt!899440 Nil!29470))))

(assert (=> d!717850 (validRegex!3131 lt!899440)))

(assert (=> d!717850 (= (findConcatSeparation!898 lt!899440 lt!899438 Nil!29470 tl!4068 tl!4068) lt!899502)))

(declare-fun b!2520151 () Bool)

(assert (=> b!2520151 (= e!1596083 (matchR!3492 lt!899438 tl!4068))))

(declare-fun b!2520152 () Bool)

(declare-fun res!1064802 () Bool)

(assert (=> b!2520152 (=> (not res!1064802) (not e!1596082))))

(assert (=> b!2520152 (= res!1064802 (matchR!3492 lt!899440 (_1!17298 (get!9207 lt!899502))))))

(declare-fun b!2520153 () Bool)

(declare-fun lt!899503 () Unit!43235)

(declare-fun lt!899501 () Unit!43235)

(assert (=> b!2520153 (= lt!899503 lt!899501)))

(assert (=> b!2520153 (= (++!7226 (++!7226 Nil!29470 (Cons!29470 (h!34890 tl!4068) Nil!29470)) (t!211269 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!767 (List!29570 C!15168 List!29570 List!29570) Unit!43235)

(assert (=> b!2520153 (= lt!899501 (lemmaMoveElementToOtherListKeepsConcatEq!767 Nil!29470 (h!34890 tl!4068) (t!211269 tl!4068) tl!4068))))

(declare-fun e!1596081 () Option!5876)

(assert (=> b!2520153 (= e!1596081 (findConcatSeparation!898 lt!899440 lt!899438 (++!7226 Nil!29470 (Cons!29470 (h!34890 tl!4068) Nil!29470)) (t!211269 tl!4068) tl!4068))))

(declare-fun b!2520154 () Bool)

(assert (=> b!2520154 (= e!1596080 e!1596081)))

(declare-fun c!401925 () Bool)

(assert (=> b!2520154 (= c!401925 ((_ is Nil!29470) tl!4068))))

(declare-fun b!2520155 () Bool)

(assert (=> b!2520155 (= e!1596081 None!5875)))

(declare-fun b!2520156 () Bool)

(assert (=> b!2520156 (= e!1596084 (not (isDefined!4698 lt!899502)))))

(declare-fun b!2520157 () Bool)

(declare-fun res!1064801 () Bool)

(assert (=> b!2520157 (=> (not res!1064801) (not e!1596082))))

(assert (=> b!2520157 (= res!1064801 (matchR!3492 lt!899438 (_2!17298 (get!9207 lt!899502))))))

(assert (= (and d!717850 res!1064798) b!2520151))

(assert (= (and d!717850 c!401924) b!2520150))

(assert (= (and d!717850 (not c!401924)) b!2520154))

(assert (= (and b!2520154 c!401925) b!2520155))

(assert (= (and b!2520154 (not c!401925)) b!2520153))

(assert (= (and d!717850 res!1064799) b!2520152))

(assert (= (and b!2520152 res!1064802) b!2520157))

(assert (= (and b!2520157 res!1064801) b!2520149))

(assert (= (and d!717850 (not res!1064800)) b!2520156))

(declare-fun m!2875149 () Bool)

(assert (=> b!2520156 m!2875149))

(assert (=> d!717850 m!2875149))

(declare-fun m!2875151 () Bool)

(assert (=> d!717850 m!2875151))

(assert (=> d!717850 m!2874889))

(declare-fun m!2875153 () Bool)

(assert (=> b!2520151 m!2875153))

(declare-fun m!2875155 () Bool)

(assert (=> b!2520149 m!2875155))

(declare-fun m!2875157 () Bool)

(assert (=> b!2520149 m!2875157))

(declare-fun m!2875159 () Bool)

(assert (=> b!2520153 m!2875159))

(assert (=> b!2520153 m!2875159))

(declare-fun m!2875161 () Bool)

(assert (=> b!2520153 m!2875161))

(declare-fun m!2875163 () Bool)

(assert (=> b!2520153 m!2875163))

(assert (=> b!2520153 m!2875159))

(declare-fun m!2875165 () Bool)

(assert (=> b!2520153 m!2875165))

(assert (=> b!2520152 m!2875155))

(declare-fun m!2875167 () Bool)

(assert (=> b!2520152 m!2875167))

(assert (=> b!2520157 m!2875155))

(declare-fun m!2875169 () Bool)

(assert (=> b!2520157 m!2875169))

(assert (=> b!2519723 d!717850))

(declare-fun d!717872 () Bool)

(declare-fun isEmpty!16934 (Option!5876) Bool)

(assert (=> d!717872 (= (isDefined!4698 lt!899434) (not (isEmpty!16934 lt!899434)))))

(declare-fun bs!468970 () Bool)

(assert (= bs!468970 d!717872))

(declare-fun m!2875171 () Bool)

(assert (=> bs!468970 m!2875171))

(assert (=> b!2519723 d!717872))

(declare-fun d!717874 () Bool)

(assert (=> d!717874 (= (get!9207 lt!899434) (v!31808 lt!899434))))

(assert (=> b!2519723 d!717874))

(declare-fun d!717876 () Bool)

(assert (=> d!717876 (isDefined!4698 (findConcatSeparation!898 lt!899440 lt!899438 Nil!29470 tl!4068 tl!4068))))

(declare-fun lt!899506 () Unit!43235)

(declare-fun choose!14936 (Regex!7505 Regex!7505 List!29570) Unit!43235)

(assert (=> d!717876 (= lt!899506 (choose!14936 lt!899440 lt!899438 tl!4068))))

(assert (=> d!717876 (validRegex!3131 lt!899440)))

(assert (=> d!717876 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!180 lt!899440 lt!899438 tl!4068) lt!899506)))

(declare-fun bs!468971 () Bool)

(assert (= bs!468971 d!717876))

(assert (=> bs!468971 m!2874855))

(assert (=> bs!468971 m!2874855))

(declare-fun m!2875173 () Bool)

(assert (=> bs!468971 m!2875173))

(declare-fun m!2875175 () Bool)

(assert (=> bs!468971 m!2875175))

(assert (=> bs!468971 m!2874889))

(assert (=> b!2519723 d!717876))

(declare-fun b!2520171 () Bool)

(declare-fun e!1596087 () Bool)

(declare-fun tp!805418 () Bool)

(declare-fun tp!805416 () Bool)

(assert (=> b!2520171 (= e!1596087 (and tp!805418 tp!805416))))

(declare-fun b!2520169 () Bool)

(declare-fun tp!805419 () Bool)

(declare-fun tp!805415 () Bool)

(assert (=> b!2520169 (= e!1596087 (and tp!805419 tp!805415))))

(declare-fun b!2520168 () Bool)

(assert (=> b!2520168 (= e!1596087 tp_is_empty!12865)))

(assert (=> b!2519716 (= tp!805365 e!1596087)))

(declare-fun b!2520170 () Bool)

(declare-fun tp!805417 () Bool)

(assert (=> b!2520170 (= e!1596087 tp!805417)))

(assert (= (and b!2519716 ((_ is ElementMatch!7505) (reg!7834 r!27340))) b!2520168))

(assert (= (and b!2519716 ((_ is Concat!12201) (reg!7834 r!27340))) b!2520169))

(assert (= (and b!2519716 ((_ is Star!7505) (reg!7834 r!27340))) b!2520170))

(assert (= (and b!2519716 ((_ is Union!7505) (reg!7834 r!27340))) b!2520171))

(declare-fun b!2520175 () Bool)

(declare-fun e!1596088 () Bool)

(declare-fun tp!805423 () Bool)

(declare-fun tp!805421 () Bool)

(assert (=> b!2520175 (= e!1596088 (and tp!805423 tp!805421))))

(declare-fun b!2520173 () Bool)

(declare-fun tp!805424 () Bool)

(declare-fun tp!805420 () Bool)

(assert (=> b!2520173 (= e!1596088 (and tp!805424 tp!805420))))

(declare-fun b!2520172 () Bool)

(assert (=> b!2520172 (= e!1596088 tp_is_empty!12865)))

(assert (=> b!2519714 (= tp!805362 e!1596088)))

(declare-fun b!2520174 () Bool)

(declare-fun tp!805422 () Bool)

(assert (=> b!2520174 (= e!1596088 tp!805422)))

(assert (= (and b!2519714 ((_ is ElementMatch!7505) (regOne!15522 r!27340))) b!2520172))

(assert (= (and b!2519714 ((_ is Concat!12201) (regOne!15522 r!27340))) b!2520173))

(assert (= (and b!2519714 ((_ is Star!7505) (regOne!15522 r!27340))) b!2520174))

(assert (= (and b!2519714 ((_ is Union!7505) (regOne!15522 r!27340))) b!2520175))

(declare-fun b!2520179 () Bool)

(declare-fun e!1596089 () Bool)

(declare-fun tp!805428 () Bool)

(declare-fun tp!805426 () Bool)

(assert (=> b!2520179 (= e!1596089 (and tp!805428 tp!805426))))

(declare-fun b!2520177 () Bool)

(declare-fun tp!805429 () Bool)

(declare-fun tp!805425 () Bool)

(assert (=> b!2520177 (= e!1596089 (and tp!805429 tp!805425))))

(declare-fun b!2520176 () Bool)

(assert (=> b!2520176 (= e!1596089 tp_is_empty!12865)))

(assert (=> b!2519714 (= tp!805364 e!1596089)))

(declare-fun b!2520178 () Bool)

(declare-fun tp!805427 () Bool)

(assert (=> b!2520178 (= e!1596089 tp!805427)))

(assert (= (and b!2519714 ((_ is ElementMatch!7505) (regTwo!15522 r!27340))) b!2520176))

(assert (= (and b!2519714 ((_ is Concat!12201) (regTwo!15522 r!27340))) b!2520177))

(assert (= (and b!2519714 ((_ is Star!7505) (regTwo!15522 r!27340))) b!2520178))

(assert (= (and b!2519714 ((_ is Union!7505) (regTwo!15522 r!27340))) b!2520179))

(declare-fun b!2520184 () Bool)

(declare-fun e!1596092 () Bool)

(declare-fun tp!805432 () Bool)

(assert (=> b!2520184 (= e!1596092 (and tp_is_empty!12865 tp!805432))))

(assert (=> b!2519718 (= tp!805361 e!1596092)))

(assert (= (and b!2519718 ((_ is Cons!29470) (t!211269 tl!4068))) b!2520184))

(declare-fun b!2520188 () Bool)

(declare-fun e!1596093 () Bool)

(declare-fun tp!805436 () Bool)

(declare-fun tp!805434 () Bool)

(assert (=> b!2520188 (= e!1596093 (and tp!805436 tp!805434))))

(declare-fun b!2520186 () Bool)

(declare-fun tp!805437 () Bool)

(declare-fun tp!805433 () Bool)

(assert (=> b!2520186 (= e!1596093 (and tp!805437 tp!805433))))

(declare-fun b!2520185 () Bool)

(assert (=> b!2520185 (= e!1596093 tp_is_empty!12865)))

(assert (=> b!2519719 (= tp!805366 e!1596093)))

(declare-fun b!2520187 () Bool)

(declare-fun tp!805435 () Bool)

(assert (=> b!2520187 (= e!1596093 tp!805435)))

(assert (= (and b!2519719 ((_ is ElementMatch!7505) (regOne!15523 r!27340))) b!2520185))

(assert (= (and b!2519719 ((_ is Concat!12201) (regOne!15523 r!27340))) b!2520186))

(assert (= (and b!2519719 ((_ is Star!7505) (regOne!15523 r!27340))) b!2520187))

(assert (= (and b!2519719 ((_ is Union!7505) (regOne!15523 r!27340))) b!2520188))

(declare-fun b!2520192 () Bool)

(declare-fun e!1596094 () Bool)

(declare-fun tp!805441 () Bool)

(declare-fun tp!805439 () Bool)

(assert (=> b!2520192 (= e!1596094 (and tp!805441 tp!805439))))

(declare-fun b!2520190 () Bool)

(declare-fun tp!805442 () Bool)

(declare-fun tp!805438 () Bool)

(assert (=> b!2520190 (= e!1596094 (and tp!805442 tp!805438))))

(declare-fun b!2520189 () Bool)

(assert (=> b!2520189 (= e!1596094 tp_is_empty!12865)))

(assert (=> b!2519719 (= tp!805363 e!1596094)))

(declare-fun b!2520191 () Bool)

(declare-fun tp!805440 () Bool)

(assert (=> b!2520191 (= e!1596094 tp!805440)))

(assert (= (and b!2519719 ((_ is ElementMatch!7505) (regTwo!15523 r!27340))) b!2520189))

(assert (= (and b!2519719 ((_ is Concat!12201) (regTwo!15523 r!27340))) b!2520190))

(assert (= (and b!2519719 ((_ is Star!7505) (regTwo!15523 r!27340))) b!2520191))

(assert (= (and b!2519719 ((_ is Union!7505) (regTwo!15523 r!27340))) b!2520192))

(check-sat (not b!2519772) (not d!717834) (not bm!156952) (not bm!156945) (not d!717820) (not d!717836) (not b!2520171) tp_is_empty!12865 (not d!717850) (not b!2520186) (not b!2519841) (not b!2519838) (not b!2519898) (not b!2519896) (not d!717876) (not d!717812) (not b!2519915) (not bm!156951) (not b!2519831) (not b!2519858) (not b!2520006) (not b!2519900) (not d!717810) (not bm!156946) (not b!2520151) (not d!717840) (not bm!156953) (not b!2519864) (not b!2520156) (not b!2519947) (not b!2519855) (not b!2519866) (not b!2520190) (not b!2519869) (not b!2520179) (not b!2519834) (not b!2520187) (not b!2520184) (not b!2520177) (not b!2519852) (not d!717816) (not b!2519892) (not b!2519859) (not b!2519836) (not b!2519845) (not b!2520178) (not b!2520157) (not b!2519731) (not d!717838) (not b!2520152) (not b!2519893) (not bm!156978) (not b!2519844) (not bm!156964) (not d!717830) (not b!2520153) (not bm!156956) (not b!2520192) (not bm!156963) (not bm!156977) (not b!2520149) (not b!2520188) (not b!2520170) (not b!2520169) (not b!2520174) (not b!2519850) (not b!2519830) (not b!2520175) (not d!717848) (not b!2519848) (not b!2519862) (not d!717872) (not b!2519906) (not d!717842) (not b!2520007) (not b!2520191) (not b!2520173) (not d!717826) (not b!2519903))
(check-sat)
(get-model)

(declare-fun d!717892 () Bool)

(assert (not d!717892))

(assert (=> b!2519841 d!717892))

(declare-fun d!717894 () Bool)

(assert (=> d!717894 (= (isEmpty!16933 tl!4068) ((_ is Nil!29470) tl!4068))))

(assert (=> bm!156952 d!717894))

(declare-fun b!2520236 () Bool)

(declare-fun e!1596120 () Bool)

(declare-fun call!157012 () Bool)

(assert (=> b!2520236 (= e!1596120 call!157012)))

(declare-fun call!157013 () Bool)

(declare-fun c!401941 () Bool)

(declare-fun bm!157007 () Bool)

(assert (=> bm!157007 (= call!157013 (validRegex!3131 (ite c!401941 (regOne!15523 (ite c!401882 (regOne!15523 r!27340) (regTwo!15522 r!27340))) (regTwo!15522 (ite c!401882 (regOne!15523 r!27340) (regTwo!15522 r!27340))))))))

(declare-fun b!2520237 () Bool)

(declare-fun e!1596121 () Bool)

(assert (=> b!2520237 (= e!1596121 e!1596120)))

(declare-fun res!1064819 () Bool)

(assert (=> b!2520237 (= res!1064819 (not (nullable!2422 (reg!7834 (ite c!401882 (regOne!15523 r!27340) (regTwo!15522 r!27340))))))))

(assert (=> b!2520237 (=> (not res!1064819) (not e!1596120))))

(declare-fun b!2520238 () Bool)

(declare-fun e!1596123 () Bool)

(assert (=> b!2520238 (= e!1596123 e!1596121)))

(declare-fun c!401942 () Bool)

(assert (=> b!2520238 (= c!401942 ((_ is Star!7505) (ite c!401882 (regOne!15523 r!27340) (regTwo!15522 r!27340))))))

(declare-fun b!2520239 () Bool)

(declare-fun e!1596122 () Bool)

(assert (=> b!2520239 (= e!1596122 call!157013)))

(declare-fun d!717902 () Bool)

(declare-fun res!1064816 () Bool)

(assert (=> d!717902 (=> res!1064816 e!1596123)))

(assert (=> d!717902 (= res!1064816 ((_ is ElementMatch!7505) (ite c!401882 (regOne!15523 r!27340) (regTwo!15522 r!27340))))))

(assert (=> d!717902 (= (validRegex!3131 (ite c!401882 (regOne!15523 r!27340) (regTwo!15522 r!27340))) e!1596123)))

(declare-fun b!2520240 () Bool)

(declare-fun res!1064817 () Bool)

(declare-fun e!1596119 () Bool)

(assert (=> b!2520240 (=> (not res!1064817) (not e!1596119))))

(assert (=> b!2520240 (= res!1064817 call!157013)))

(declare-fun e!1596125 () Bool)

(assert (=> b!2520240 (= e!1596125 e!1596119)))

(declare-fun bm!157008 () Bool)

(assert (=> bm!157008 (= call!157012 (validRegex!3131 (ite c!401942 (reg!7834 (ite c!401882 (regOne!15523 r!27340) (regTwo!15522 r!27340))) (ite c!401941 (regTwo!15523 (ite c!401882 (regOne!15523 r!27340) (regTwo!15522 r!27340))) (regOne!15522 (ite c!401882 (regOne!15523 r!27340) (regTwo!15522 r!27340)))))))))

(declare-fun b!2520241 () Bool)

(declare-fun call!157014 () Bool)

(assert (=> b!2520241 (= e!1596119 call!157014)))

(declare-fun bm!157009 () Bool)

(assert (=> bm!157009 (= call!157014 call!157012)))

(declare-fun b!2520242 () Bool)

(declare-fun res!1064818 () Bool)

(declare-fun e!1596124 () Bool)

(assert (=> b!2520242 (=> res!1064818 e!1596124)))

(assert (=> b!2520242 (= res!1064818 (not ((_ is Concat!12201) (ite c!401882 (regOne!15523 r!27340) (regTwo!15522 r!27340)))))))

(assert (=> b!2520242 (= e!1596125 e!1596124)))

(declare-fun b!2520243 () Bool)

(assert (=> b!2520243 (= e!1596121 e!1596125)))

(assert (=> b!2520243 (= c!401941 ((_ is Union!7505) (ite c!401882 (regOne!15523 r!27340) (regTwo!15522 r!27340))))))

(declare-fun b!2520244 () Bool)

(assert (=> b!2520244 (= e!1596124 e!1596122)))

(declare-fun res!1064820 () Bool)

(assert (=> b!2520244 (=> (not res!1064820) (not e!1596122))))

(assert (=> b!2520244 (= res!1064820 call!157014)))

(assert (= (and d!717902 (not res!1064816)) b!2520238))

(assert (= (and b!2520238 c!401942) b!2520237))

(assert (= (and b!2520238 (not c!401942)) b!2520243))

(assert (= (and b!2520237 res!1064819) b!2520236))

(assert (= (and b!2520243 c!401941) b!2520240))

(assert (= (and b!2520243 (not c!401941)) b!2520242))

(assert (= (and b!2520240 res!1064817) b!2520241))

(assert (= (and b!2520242 (not res!1064818)) b!2520244))

(assert (= (and b!2520244 res!1064820) b!2520239))

(assert (= (or b!2520240 b!2520239) bm!157007))

(assert (= (or b!2520241 b!2520244) bm!157009))

(assert (= (or b!2520236 bm!157009) bm!157008))

(declare-fun m!2875213 () Bool)

(assert (=> bm!157007 m!2875213))

(declare-fun m!2875215 () Bool)

(assert (=> b!2520237 m!2875215))

(declare-fun m!2875217 () Bool)

(assert (=> bm!157008 m!2875217))

(assert (=> bm!156977 d!717902))

(assert (=> d!717830 d!717826))

(declare-fun d!717906 () Bool)

(declare-fun e!1596128 () Bool)

(assert (=> d!717906 e!1596128))

(declare-fun c!401945 () Bool)

(assert (=> d!717906 (= c!401945 ((_ is EmptyExpr!7505) (derivative!200 lt!899435 tl!4068)))))

(declare-fun lt!899514 () Bool)

(declare-fun e!1596130 () Bool)

(assert (=> d!717906 (= lt!899514 e!1596130)))

(declare-fun c!401943 () Bool)

(assert (=> d!717906 (= c!401943 (isEmpty!16933 Nil!29470))))

(assert (=> d!717906 (validRegex!3131 (derivative!200 lt!899435 tl!4068))))

(assert (=> d!717906 (= (matchR!3492 (derivative!200 lt!899435 tl!4068) Nil!29470) lt!899514)))

(declare-fun b!2520245 () Bool)

(declare-fun res!1064823 () Bool)

(declare-fun e!1596129 () Bool)

(assert (=> b!2520245 (=> res!1064823 e!1596129)))

(assert (=> b!2520245 (= res!1064823 (not (isEmpty!16933 (tail!4031 Nil!29470))))))

(declare-fun b!2520246 () Bool)

(assert (=> b!2520246 (= e!1596130 (matchR!3492 (derivativeStep!2074 (derivative!200 lt!899435 tl!4068) (head!5754 Nil!29470)) (tail!4031 Nil!29470)))))

(declare-fun b!2520247 () Bool)

(declare-fun res!1064821 () Bool)

(declare-fun e!1596132 () Bool)

(assert (=> b!2520247 (=> res!1064821 e!1596132)))

(assert (=> b!2520247 (= res!1064821 (not ((_ is ElementMatch!7505) (derivative!200 lt!899435 tl!4068))))))

(declare-fun e!1596131 () Bool)

(assert (=> b!2520247 (= e!1596131 e!1596132)))

(declare-fun b!2520248 () Bool)

(declare-fun call!157015 () Bool)

(assert (=> b!2520248 (= e!1596128 (= lt!899514 call!157015))))

(declare-fun b!2520249 () Bool)

(assert (=> b!2520249 (= e!1596130 (nullable!2422 (derivative!200 lt!899435 tl!4068)))))

(declare-fun bm!157010 () Bool)

(assert (=> bm!157010 (= call!157015 (isEmpty!16933 Nil!29470))))

(declare-fun b!2520250 () Bool)

(declare-fun res!1064822 () Bool)

(declare-fun e!1596127 () Bool)

(assert (=> b!2520250 (=> (not res!1064822) (not e!1596127))))

(assert (=> b!2520250 (= res!1064822 (not call!157015))))

(declare-fun b!2520251 () Bool)

(declare-fun res!1064827 () Bool)

(assert (=> b!2520251 (=> (not res!1064827) (not e!1596127))))

(assert (=> b!2520251 (= res!1064827 (isEmpty!16933 (tail!4031 Nil!29470)))))

(declare-fun b!2520252 () Bool)

(declare-fun res!1064828 () Bool)

(assert (=> b!2520252 (=> res!1064828 e!1596132)))

(assert (=> b!2520252 (= res!1064828 e!1596127)))

(declare-fun res!1064826 () Bool)

(assert (=> b!2520252 (=> (not res!1064826) (not e!1596127))))

(assert (=> b!2520252 (= res!1064826 lt!899514)))

(declare-fun b!2520253 () Bool)

(assert (=> b!2520253 (= e!1596127 (= (head!5754 Nil!29470) (c!401811 (derivative!200 lt!899435 tl!4068))))))

(declare-fun b!2520254 () Bool)

(declare-fun e!1596126 () Bool)

(assert (=> b!2520254 (= e!1596132 e!1596126)))

(declare-fun res!1064824 () Bool)

(assert (=> b!2520254 (=> (not res!1064824) (not e!1596126))))

(assert (=> b!2520254 (= res!1064824 (not lt!899514))))

(declare-fun b!2520255 () Bool)

(assert (=> b!2520255 (= e!1596126 e!1596129)))

(declare-fun res!1064825 () Bool)

(assert (=> b!2520255 (=> res!1064825 e!1596129)))

(assert (=> b!2520255 (= res!1064825 call!157015)))

(declare-fun b!2520256 () Bool)

(assert (=> b!2520256 (= e!1596129 (not (= (head!5754 Nil!29470) (c!401811 (derivative!200 lt!899435 tl!4068)))))))

(declare-fun b!2520257 () Bool)

(assert (=> b!2520257 (= e!1596131 (not lt!899514))))

(declare-fun b!2520258 () Bool)

(assert (=> b!2520258 (= e!1596128 e!1596131)))

(declare-fun c!401944 () Bool)

(assert (=> b!2520258 (= c!401944 ((_ is EmptyLang!7505) (derivative!200 lt!899435 tl!4068)))))

(assert (= (and d!717906 c!401943) b!2520249))

(assert (= (and d!717906 (not c!401943)) b!2520246))

(assert (= (and d!717906 c!401945) b!2520248))

(assert (= (and d!717906 (not c!401945)) b!2520258))

(assert (= (and b!2520258 c!401944) b!2520257))

(assert (= (and b!2520258 (not c!401944)) b!2520247))

(assert (= (and b!2520247 (not res!1064821)) b!2520252))

(assert (= (and b!2520252 res!1064826) b!2520250))

(assert (= (and b!2520250 res!1064822) b!2520251))

(assert (= (and b!2520251 res!1064827) b!2520253))

(assert (= (and b!2520252 (not res!1064828)) b!2520254))

(assert (= (and b!2520254 res!1064824) b!2520255))

(assert (= (and b!2520255 (not res!1064825)) b!2520245))

(assert (= (and b!2520245 (not res!1064823)) b!2520256))

(assert (= (or b!2520248 b!2520250 b!2520255) bm!157010))

(assert (=> d!717906 m!2874945))

(assert (=> d!717906 m!2874863))

(declare-fun m!2875219 () Bool)

(assert (=> d!717906 m!2875219))

(assert (=> b!2520253 m!2874949))

(assert (=> bm!157010 m!2874945))

(assert (=> b!2520251 m!2874951))

(assert (=> b!2520251 m!2874951))

(assert (=> b!2520251 m!2874953))

(assert (=> b!2520245 m!2874951))

(assert (=> b!2520245 m!2874951))

(assert (=> b!2520245 m!2874953))

(assert (=> b!2520246 m!2874949))

(assert (=> b!2520246 m!2874863))

(assert (=> b!2520246 m!2874949))

(declare-fun m!2875221 () Bool)

(assert (=> b!2520246 m!2875221))

(assert (=> b!2520246 m!2874951))

(assert (=> b!2520246 m!2875221))

(assert (=> b!2520246 m!2874951))

(declare-fun m!2875223 () Bool)

(assert (=> b!2520246 m!2875223))

(assert (=> b!2520249 m!2874863))

(declare-fun m!2875225 () Bool)

(assert (=> b!2520249 m!2875225))

(assert (=> b!2520256 m!2874949))

(assert (=> d!717830 d!717906))

(declare-fun d!717908 () Bool)

(assert (=> d!717908 (= (matchR!3492 lt!899435 tl!4068) (matchR!3492 (derivative!200 lt!899435 tl!4068) Nil!29470))))

(assert (=> d!717908 true))

(declare-fun _$108!296 () Unit!43235)

(assert (=> d!717908 (= (choose!14935 lt!899435 tl!4068) _$108!296)))

(declare-fun bs!468973 () Bool)

(assert (= bs!468973 d!717908))

(assert (=> bs!468973 m!2874873))

(assert (=> bs!468973 m!2874863))

(assert (=> bs!468973 m!2874863))

(assert (=> bs!468973 m!2874981))

(assert (=> d!717830 d!717908))

(declare-fun b!2520280 () Bool)

(declare-fun e!1596152 () Bool)

(declare-fun call!157022 () Bool)

(assert (=> b!2520280 (= e!1596152 call!157022)))

(declare-fun bm!157017 () Bool)

(declare-fun call!157023 () Bool)

(declare-fun c!401949 () Bool)

(assert (=> bm!157017 (= call!157023 (validRegex!3131 (ite c!401949 (regOne!15523 lt!899435) (regTwo!15522 lt!899435))))))

(declare-fun b!2520281 () Bool)

(declare-fun e!1596153 () Bool)

(assert (=> b!2520281 (= e!1596153 e!1596152)))

(declare-fun res!1064847 () Bool)

(assert (=> b!2520281 (= res!1064847 (not (nullable!2422 (reg!7834 lt!899435))))))

(assert (=> b!2520281 (=> (not res!1064847) (not e!1596152))))

(declare-fun b!2520282 () Bool)

(declare-fun e!1596155 () Bool)

(assert (=> b!2520282 (= e!1596155 e!1596153)))

(declare-fun c!401950 () Bool)

(assert (=> b!2520282 (= c!401950 ((_ is Star!7505) lt!899435))))

(declare-fun b!2520283 () Bool)

(declare-fun e!1596154 () Bool)

(assert (=> b!2520283 (= e!1596154 call!157023)))

(declare-fun d!717910 () Bool)

(declare-fun res!1064844 () Bool)

(assert (=> d!717910 (=> res!1064844 e!1596155)))

(assert (=> d!717910 (= res!1064844 ((_ is ElementMatch!7505) lt!899435))))

(assert (=> d!717910 (= (validRegex!3131 lt!899435) e!1596155)))

(declare-fun b!2520284 () Bool)

(declare-fun res!1064845 () Bool)

(declare-fun e!1596151 () Bool)

(assert (=> b!2520284 (=> (not res!1064845) (not e!1596151))))

(assert (=> b!2520284 (= res!1064845 call!157023)))

(declare-fun e!1596157 () Bool)

(assert (=> b!2520284 (= e!1596157 e!1596151)))

(declare-fun bm!157018 () Bool)

(assert (=> bm!157018 (= call!157022 (validRegex!3131 (ite c!401950 (reg!7834 lt!899435) (ite c!401949 (regTwo!15523 lt!899435) (regOne!15522 lt!899435)))))))

(declare-fun b!2520285 () Bool)

(declare-fun call!157024 () Bool)

(assert (=> b!2520285 (= e!1596151 call!157024)))

(declare-fun bm!157019 () Bool)

(assert (=> bm!157019 (= call!157024 call!157022)))

(declare-fun b!2520286 () Bool)

(declare-fun res!1064846 () Bool)

(declare-fun e!1596156 () Bool)

(assert (=> b!2520286 (=> res!1064846 e!1596156)))

(assert (=> b!2520286 (= res!1064846 (not ((_ is Concat!12201) lt!899435)))))

(assert (=> b!2520286 (= e!1596157 e!1596156)))

(declare-fun b!2520287 () Bool)

(assert (=> b!2520287 (= e!1596153 e!1596157)))

(assert (=> b!2520287 (= c!401949 ((_ is Union!7505) lt!899435))))

(declare-fun b!2520288 () Bool)

(assert (=> b!2520288 (= e!1596156 e!1596154)))

(declare-fun res!1064848 () Bool)

(assert (=> b!2520288 (=> (not res!1064848) (not e!1596154))))

(assert (=> b!2520288 (= res!1064848 call!157024)))

(assert (= (and d!717910 (not res!1064844)) b!2520282))

(assert (= (and b!2520282 c!401950) b!2520281))

(assert (= (and b!2520282 (not c!401950)) b!2520287))

(assert (= (and b!2520281 res!1064847) b!2520280))

(assert (= (and b!2520287 c!401949) b!2520284))

(assert (= (and b!2520287 (not c!401949)) b!2520286))

(assert (= (and b!2520284 res!1064845) b!2520285))

(assert (= (and b!2520286 (not res!1064846)) b!2520288))

(assert (= (and b!2520288 res!1064848) b!2520283))

(assert (= (or b!2520284 b!2520283) bm!157017))

(assert (= (or b!2520285 b!2520288) bm!157019))

(assert (= (or b!2520280 bm!157019) bm!157018))

(declare-fun m!2875231 () Bool)

(assert (=> bm!157017 m!2875231))

(declare-fun m!2875233 () Bool)

(assert (=> b!2520281 m!2875233))

(declare-fun m!2875235 () Bool)

(assert (=> bm!157018 m!2875235))

(assert (=> d!717830 d!717910))

(assert (=> d!717830 d!717840))

(declare-fun d!717920 () Bool)

(assert (=> d!717920 (= (nullable!2422 (reg!7834 r!27340)) (nullableFct!663 (reg!7834 r!27340)))))

(declare-fun bs!468974 () Bool)

(assert (= bs!468974 d!717920))

(declare-fun m!2875237 () Bool)

(assert (=> bs!468974 m!2875237))

(assert (=> b!2519862 d!717920))

(declare-fun d!717922 () Bool)

(assert (=> d!717922 (= (head!5754 (_2!17298 lt!899442)) (h!34890 (_2!17298 lt!899442)))))

(assert (=> b!2519903 d!717922))

(declare-fun d!717926 () Bool)

(assert (=> d!717926 (= (isEmpty!16933 (tail!4031 tl!4068)) ((_ is Nil!29470) (tail!4031 tl!4068)))))

(assert (=> b!2519850 d!717926))

(declare-fun d!717928 () Bool)

(assert (=> d!717928 (= (tail!4031 tl!4068) (t!211269 tl!4068))))

(assert (=> b!2519850 d!717928))

(declare-fun d!717930 () Bool)

(assert (=> d!717930 (= (head!5754 tl!4068) (h!34890 tl!4068))))

(assert (=> b!2519852 d!717930))

(declare-fun d!717932 () Bool)

(declare-fun e!1596170 () Bool)

(assert (=> d!717932 e!1596170))

(declare-fun res!1064854 () Bool)

(assert (=> d!717932 (=> (not res!1064854) (not e!1596170))))

(declare-fun lt!899516 () List!29570)

(assert (=> d!717932 (= res!1064854 (= (content!4034 lt!899516) ((_ map or) (content!4034 (t!211269 (_1!17298 lt!899442))) (content!4034 (_2!17298 lt!899442)))))))

(declare-fun e!1596171 () List!29570)

(assert (=> d!717932 (= lt!899516 e!1596171)))

(declare-fun c!401958 () Bool)

(assert (=> d!717932 (= c!401958 ((_ is Nil!29470) (t!211269 (_1!17298 lt!899442))))))

(assert (=> d!717932 (= (++!7226 (t!211269 (_1!17298 lt!899442)) (_2!17298 lt!899442)) lt!899516)))

(declare-fun b!2520309 () Bool)

(assert (=> b!2520309 (= e!1596171 (Cons!29470 (h!34890 (t!211269 (_1!17298 lt!899442))) (++!7226 (t!211269 (t!211269 (_1!17298 lt!899442))) (_2!17298 lt!899442))))))

(declare-fun b!2520311 () Bool)

(assert (=> b!2520311 (= e!1596170 (or (not (= (_2!17298 lt!899442) Nil!29470)) (= lt!899516 (t!211269 (_1!17298 lt!899442)))))))

(declare-fun b!2520308 () Bool)

(assert (=> b!2520308 (= e!1596171 (_2!17298 lt!899442))))

(declare-fun b!2520310 () Bool)

(declare-fun res!1064855 () Bool)

(assert (=> b!2520310 (=> (not res!1064855) (not e!1596170))))

(assert (=> b!2520310 (= res!1064855 (= (size!22916 lt!899516) (+ (size!22916 (t!211269 (_1!17298 lt!899442))) (size!22916 (_2!17298 lt!899442)))))))

(assert (= (and d!717932 c!401958) b!2520308))

(assert (= (and d!717932 (not c!401958)) b!2520309))

(assert (= (and d!717932 res!1064854) b!2520310))

(assert (= (and b!2520310 res!1064855) b!2520311))

(declare-fun m!2875255 () Bool)

(assert (=> d!717932 m!2875255))

(declare-fun m!2875257 () Bool)

(assert (=> d!717932 m!2875257))

(assert (=> d!717932 m!2875047))

(declare-fun m!2875261 () Bool)

(assert (=> b!2520309 m!2875261))

(declare-fun m!2875263 () Bool)

(assert (=> b!2520310 m!2875263))

(declare-fun m!2875265 () Bool)

(assert (=> b!2520310 m!2875265))

(assert (=> b!2520310 m!2875055))

(assert (=> b!2520006 d!717932))

(declare-fun d!717944 () Bool)

(assert (not d!717944))

(assert (=> b!2519831 d!717944))

(declare-fun d!717946 () Bool)

(assert (not d!717946))

(assert (=> b!2519831 d!717946))

(assert (=> b!2519831 d!717892))

(declare-fun d!717948 () Bool)

(assert (not d!717948))

(assert (=> b!2519831 d!717948))

(declare-fun d!717950 () Bool)

(declare-fun e!1596181 () Bool)

(assert (=> d!717950 e!1596181))

(declare-fun c!401963 () Bool)

(assert (=> d!717950 (= c!401963 ((_ is EmptyExpr!7505) lt!899440))))

(declare-fun lt!899517 () Bool)

(declare-fun e!1596183 () Bool)

(assert (=> d!717950 (= lt!899517 e!1596183)))

(declare-fun c!401961 () Bool)

(assert (=> d!717950 (= c!401961 (isEmpty!16933 (_1!17298 (get!9207 lt!899502))))))

(assert (=> d!717950 (validRegex!3131 lt!899440)))

(assert (=> d!717950 (= (matchR!3492 lt!899440 (_1!17298 (get!9207 lt!899502))) lt!899517)))

(declare-fun b!2520321 () Bool)

(declare-fun res!1064863 () Bool)

(declare-fun e!1596182 () Bool)

(assert (=> b!2520321 (=> res!1064863 e!1596182)))

(assert (=> b!2520321 (= res!1064863 (not (isEmpty!16933 (tail!4031 (_1!17298 (get!9207 lt!899502))))))))

(declare-fun b!2520322 () Bool)

(assert (=> b!2520322 (= e!1596183 (matchR!3492 (derivativeStep!2074 lt!899440 (head!5754 (_1!17298 (get!9207 lt!899502)))) (tail!4031 (_1!17298 (get!9207 lt!899502)))))))

(declare-fun b!2520323 () Bool)

(declare-fun res!1064861 () Bool)

(declare-fun e!1596185 () Bool)

(assert (=> b!2520323 (=> res!1064861 e!1596185)))

(assert (=> b!2520323 (= res!1064861 (not ((_ is ElementMatch!7505) lt!899440)))))

(declare-fun e!1596184 () Bool)

(assert (=> b!2520323 (= e!1596184 e!1596185)))

(declare-fun b!2520324 () Bool)

(declare-fun call!157035 () Bool)

(assert (=> b!2520324 (= e!1596181 (= lt!899517 call!157035))))

(declare-fun b!2520325 () Bool)

(assert (=> b!2520325 (= e!1596183 (nullable!2422 lt!899440))))

(declare-fun bm!157030 () Bool)

(assert (=> bm!157030 (= call!157035 (isEmpty!16933 (_1!17298 (get!9207 lt!899502))))))

(declare-fun b!2520326 () Bool)

(declare-fun res!1064862 () Bool)

(declare-fun e!1596180 () Bool)

(assert (=> b!2520326 (=> (not res!1064862) (not e!1596180))))

(assert (=> b!2520326 (= res!1064862 (not call!157035))))

(declare-fun b!2520327 () Bool)

(declare-fun res!1064867 () Bool)

(assert (=> b!2520327 (=> (not res!1064867) (not e!1596180))))

(assert (=> b!2520327 (= res!1064867 (isEmpty!16933 (tail!4031 (_1!17298 (get!9207 lt!899502)))))))

(declare-fun b!2520328 () Bool)

(declare-fun res!1064868 () Bool)

(assert (=> b!2520328 (=> res!1064868 e!1596185)))

(assert (=> b!2520328 (= res!1064868 e!1596180)))

(declare-fun res!1064866 () Bool)

(assert (=> b!2520328 (=> (not res!1064866) (not e!1596180))))

(assert (=> b!2520328 (= res!1064866 lt!899517)))

(declare-fun b!2520329 () Bool)

(assert (=> b!2520329 (= e!1596180 (= (head!5754 (_1!17298 (get!9207 lt!899502))) (c!401811 lt!899440)))))

(declare-fun b!2520330 () Bool)

(declare-fun e!1596179 () Bool)

(assert (=> b!2520330 (= e!1596185 e!1596179)))

(declare-fun res!1064864 () Bool)

(assert (=> b!2520330 (=> (not res!1064864) (not e!1596179))))

(assert (=> b!2520330 (= res!1064864 (not lt!899517))))

(declare-fun b!2520331 () Bool)

(assert (=> b!2520331 (= e!1596179 e!1596182)))

(declare-fun res!1064865 () Bool)

(assert (=> b!2520331 (=> res!1064865 e!1596182)))

(assert (=> b!2520331 (= res!1064865 call!157035)))

(declare-fun b!2520332 () Bool)

(assert (=> b!2520332 (= e!1596182 (not (= (head!5754 (_1!17298 (get!9207 lt!899502))) (c!401811 lt!899440))))))

(declare-fun b!2520333 () Bool)

(assert (=> b!2520333 (= e!1596184 (not lt!899517))))

(declare-fun b!2520334 () Bool)

(assert (=> b!2520334 (= e!1596181 e!1596184)))

(declare-fun c!401962 () Bool)

(assert (=> b!2520334 (= c!401962 ((_ is EmptyLang!7505) lt!899440))))

(assert (= (and d!717950 c!401961) b!2520325))

(assert (= (and d!717950 (not c!401961)) b!2520322))

(assert (= (and d!717950 c!401963) b!2520324))

(assert (= (and d!717950 (not c!401963)) b!2520334))

(assert (= (and b!2520334 c!401962) b!2520333))

(assert (= (and b!2520334 (not c!401962)) b!2520323))

(assert (= (and b!2520323 (not res!1064861)) b!2520328))

(assert (= (and b!2520328 res!1064866) b!2520326))

(assert (= (and b!2520326 res!1064862) b!2520327))

(assert (= (and b!2520327 res!1064867) b!2520329))

(assert (= (and b!2520328 (not res!1064868)) b!2520330))

(assert (= (and b!2520330 res!1064864) b!2520331))

(assert (= (and b!2520331 (not res!1064865)) b!2520321))

(assert (= (and b!2520321 (not res!1064863)) b!2520332))

(assert (= (or b!2520324 b!2520326 b!2520331) bm!157030))

(declare-fun m!2875277 () Bool)

(assert (=> d!717950 m!2875277))

(assert (=> d!717950 m!2874889))

(declare-fun m!2875281 () Bool)

(assert (=> b!2520329 m!2875281))

(assert (=> bm!157030 m!2875277))

(declare-fun m!2875283 () Bool)

(assert (=> b!2520327 m!2875283))

(assert (=> b!2520327 m!2875283))

(declare-fun m!2875285 () Bool)

(assert (=> b!2520327 m!2875285))

(assert (=> b!2520321 m!2875283))

(assert (=> b!2520321 m!2875283))

(assert (=> b!2520321 m!2875285))

(assert (=> b!2520322 m!2875281))

(assert (=> b!2520322 m!2875281))

(declare-fun m!2875287 () Bool)

(assert (=> b!2520322 m!2875287))

(assert (=> b!2520322 m!2875283))

(assert (=> b!2520322 m!2875287))

(assert (=> b!2520322 m!2875283))

(declare-fun m!2875289 () Bool)

(assert (=> b!2520322 m!2875289))

(declare-fun m!2875291 () Bool)

(assert (=> b!2520325 m!2875291))

(assert (=> b!2520332 m!2875281))

(assert (=> b!2520152 d!717950))

(declare-fun d!717956 () Bool)

(assert (=> d!717956 (= (get!9207 lt!899502) (v!31808 lt!899502))))

(assert (=> b!2520152 d!717956))

(declare-fun d!717958 () Bool)

(assert (=> d!717958 (= (head!5754 (Cons!29470 c!14016 (_1!17298 lt!899442))) (h!34890 (Cons!29470 c!14016 (_1!17298 lt!899442))))))

(assert (=> b!2519869 d!717958))

(declare-fun b!2520353 () Bool)

(declare-fun e!1596201 () Bool)

(declare-fun call!157042 () Bool)

(assert (=> b!2520353 (= e!1596201 call!157042)))

(declare-fun bm!157037 () Bool)

(declare-fun call!157043 () Bool)

(declare-fun c!401968 () Bool)

(assert (=> bm!157037 (= call!157043 (validRegex!3131 (ite c!401968 (regOne!15523 lt!899476) (regTwo!15522 lt!899476))))))

(declare-fun b!2520354 () Bool)

(declare-fun e!1596202 () Bool)

(assert (=> b!2520354 (= e!1596202 e!1596201)))

(declare-fun res!1064882 () Bool)

(assert (=> b!2520354 (= res!1064882 (not (nullable!2422 (reg!7834 lt!899476))))))

(assert (=> b!2520354 (=> (not res!1064882) (not e!1596201))))

(declare-fun b!2520355 () Bool)

(declare-fun e!1596204 () Bool)

(assert (=> b!2520355 (= e!1596204 e!1596202)))

(declare-fun c!401969 () Bool)

(assert (=> b!2520355 (= c!401969 ((_ is Star!7505) lt!899476))))

(declare-fun b!2520356 () Bool)

(declare-fun e!1596203 () Bool)

(assert (=> b!2520356 (= e!1596203 call!157043)))

(declare-fun d!717960 () Bool)

(declare-fun res!1064879 () Bool)

(assert (=> d!717960 (=> res!1064879 e!1596204)))

(assert (=> d!717960 (= res!1064879 ((_ is ElementMatch!7505) lt!899476))))

(assert (=> d!717960 (= (validRegex!3131 lt!899476) e!1596204)))

(declare-fun b!2520357 () Bool)

(declare-fun res!1064880 () Bool)

(declare-fun e!1596200 () Bool)

(assert (=> b!2520357 (=> (not res!1064880) (not e!1596200))))

(assert (=> b!2520357 (= res!1064880 call!157043)))

(declare-fun e!1596206 () Bool)

(assert (=> b!2520357 (= e!1596206 e!1596200)))

(declare-fun bm!157038 () Bool)

(assert (=> bm!157038 (= call!157042 (validRegex!3131 (ite c!401969 (reg!7834 lt!899476) (ite c!401968 (regTwo!15523 lt!899476) (regOne!15522 lt!899476)))))))

(declare-fun b!2520358 () Bool)

(declare-fun call!157044 () Bool)

(assert (=> b!2520358 (= e!1596200 call!157044)))

(declare-fun bm!157039 () Bool)

(assert (=> bm!157039 (= call!157044 call!157042)))

(declare-fun b!2520359 () Bool)

(declare-fun res!1064881 () Bool)

(declare-fun e!1596205 () Bool)

(assert (=> b!2520359 (=> res!1064881 e!1596205)))

(assert (=> b!2520359 (= res!1064881 (not ((_ is Concat!12201) lt!899476)))))

(assert (=> b!2520359 (= e!1596206 e!1596205)))

(declare-fun b!2520360 () Bool)

(assert (=> b!2520360 (= e!1596202 e!1596206)))

(assert (=> b!2520360 (= c!401968 ((_ is Union!7505) lt!899476))))

(declare-fun b!2520361 () Bool)

(assert (=> b!2520361 (= e!1596205 e!1596203)))

(declare-fun res!1064883 () Bool)

(assert (=> b!2520361 (=> (not res!1064883) (not e!1596203))))

(assert (=> b!2520361 (= res!1064883 call!157044)))

(assert (= (and d!717960 (not res!1064879)) b!2520355))

(assert (= (and b!2520355 c!401969) b!2520354))

(assert (= (and b!2520355 (not c!401969)) b!2520360))

(assert (= (and b!2520354 res!1064882) b!2520353))

(assert (= (and b!2520360 c!401968) b!2520357))

(assert (= (and b!2520360 (not c!401968)) b!2520359))

(assert (= (and b!2520357 res!1064880) b!2520358))

(assert (= (and b!2520359 (not res!1064881)) b!2520361))

(assert (= (and b!2520361 res!1064883) b!2520356))

(assert (= (or b!2520357 b!2520356) bm!157037))

(assert (= (or b!2520358 b!2520361) bm!157039))

(assert (= (or b!2520353 bm!157039) bm!157038))

(declare-fun m!2875299 () Bool)

(assert (=> bm!157037 m!2875299))

(declare-fun m!2875301 () Bool)

(assert (=> b!2520354 m!2875301))

(declare-fun m!2875307 () Bool)

(assert (=> bm!157038 m!2875307))

(assert (=> d!717842 d!717960))

(assert (=> d!717842 d!717844))

(declare-fun d!717964 () Bool)

(assert (=> d!717964 (= (isDefined!4698 (findConcatSeparation!898 lt!899440 lt!899438 Nil!29470 tl!4068 tl!4068)) (not (isEmpty!16934 (findConcatSeparation!898 lt!899440 lt!899438 Nil!29470 tl!4068 tl!4068))))))

(declare-fun bs!468976 () Bool)

(assert (= bs!468976 d!717964))

(assert (=> bs!468976 m!2874855))

(declare-fun m!2875313 () Bool)

(assert (=> bs!468976 m!2875313))

(assert (=> d!717876 d!717964))

(assert (=> d!717876 d!717850))

(declare-fun d!717970 () Bool)

(assert (=> d!717970 (isDefined!4698 (findConcatSeparation!898 lt!899440 lt!899438 Nil!29470 tl!4068 tl!4068))))

(assert (=> d!717970 true))

(declare-fun _$122!304 () Unit!43235)

(assert (=> d!717970 (= (choose!14936 lt!899440 lt!899438 tl!4068) _$122!304)))

(declare-fun bs!468978 () Bool)

(assert (= bs!468978 d!717970))

(assert (=> bs!468978 m!2874855))

(assert (=> bs!468978 m!2874855))

(assert (=> bs!468978 m!2875173))

(assert (=> d!717876 d!717970))

(declare-fun b!2520409 () Bool)

(declare-fun e!1596234 () Bool)

(declare-fun call!157054 () Bool)

(assert (=> b!2520409 (= e!1596234 call!157054)))

(declare-fun bm!157049 () Bool)

(declare-fun call!157055 () Bool)

(declare-fun c!401983 () Bool)

(assert (=> bm!157049 (= call!157055 (validRegex!3131 (ite c!401983 (regOne!15523 lt!899440) (regTwo!15522 lt!899440))))))

(declare-fun b!2520410 () Bool)

(declare-fun e!1596235 () Bool)

(assert (=> b!2520410 (= e!1596235 e!1596234)))

(declare-fun res!1064908 () Bool)

(assert (=> b!2520410 (= res!1064908 (not (nullable!2422 (reg!7834 lt!899440))))))

(assert (=> b!2520410 (=> (not res!1064908) (not e!1596234))))

(declare-fun b!2520411 () Bool)

(declare-fun e!1596237 () Bool)

(assert (=> b!2520411 (= e!1596237 e!1596235)))

(declare-fun c!401984 () Bool)

(assert (=> b!2520411 (= c!401984 ((_ is Star!7505) lt!899440))))

(declare-fun b!2520412 () Bool)

(declare-fun e!1596236 () Bool)

(assert (=> b!2520412 (= e!1596236 call!157055)))

(declare-fun d!717988 () Bool)

(declare-fun res!1064905 () Bool)

(assert (=> d!717988 (=> res!1064905 e!1596237)))

(assert (=> d!717988 (= res!1064905 ((_ is ElementMatch!7505) lt!899440))))

(assert (=> d!717988 (= (validRegex!3131 lt!899440) e!1596237)))

(declare-fun b!2520413 () Bool)

(declare-fun res!1064906 () Bool)

(declare-fun e!1596233 () Bool)

(assert (=> b!2520413 (=> (not res!1064906) (not e!1596233))))

(assert (=> b!2520413 (= res!1064906 call!157055)))

(declare-fun e!1596239 () Bool)

(assert (=> b!2520413 (= e!1596239 e!1596233)))

(declare-fun bm!157050 () Bool)

(assert (=> bm!157050 (= call!157054 (validRegex!3131 (ite c!401984 (reg!7834 lt!899440) (ite c!401983 (regTwo!15523 lt!899440) (regOne!15522 lt!899440)))))))

(declare-fun b!2520414 () Bool)

(declare-fun call!157056 () Bool)

(assert (=> b!2520414 (= e!1596233 call!157056)))

(declare-fun bm!157051 () Bool)

(assert (=> bm!157051 (= call!157056 call!157054)))

(declare-fun b!2520415 () Bool)

(declare-fun res!1064907 () Bool)

(declare-fun e!1596238 () Bool)

(assert (=> b!2520415 (=> res!1064907 e!1596238)))

(assert (=> b!2520415 (= res!1064907 (not ((_ is Concat!12201) lt!899440)))))

(assert (=> b!2520415 (= e!1596239 e!1596238)))

(declare-fun b!2520416 () Bool)

(assert (=> b!2520416 (= e!1596235 e!1596239)))

(assert (=> b!2520416 (= c!401983 ((_ is Union!7505) lt!899440))))

(declare-fun b!2520417 () Bool)

(assert (=> b!2520417 (= e!1596238 e!1596236)))

(declare-fun res!1064909 () Bool)

(assert (=> b!2520417 (=> (not res!1064909) (not e!1596236))))

(assert (=> b!2520417 (= res!1064909 call!157056)))

(assert (= (and d!717988 (not res!1064905)) b!2520411))

(assert (= (and b!2520411 c!401984) b!2520410))

(assert (= (and b!2520411 (not c!401984)) b!2520416))

(assert (= (and b!2520410 res!1064908) b!2520409))

(assert (= (and b!2520416 c!401983) b!2520413))

(assert (= (and b!2520416 (not c!401983)) b!2520415))

(assert (= (and b!2520413 res!1064906) b!2520414))

(assert (= (and b!2520415 (not res!1064907)) b!2520417))

(assert (= (and b!2520417 res!1064909) b!2520412))

(assert (= (or b!2520413 b!2520412) bm!157049))

(assert (= (or b!2520414 b!2520417) bm!157051))

(assert (= (or b!2520409 bm!157051) bm!157050))

(declare-fun m!2875331 () Bool)

(assert (=> bm!157049 m!2875331))

(declare-fun m!2875333 () Bool)

(assert (=> b!2520410 m!2875333))

(declare-fun m!2875335 () Bool)

(assert (=> bm!157050 m!2875335))

(assert (=> d!717876 d!717988))

(declare-fun b!2520460 () Bool)

(declare-fun e!1596273 () Bool)

(declare-fun e!1596272 () Bool)

(assert (=> b!2520460 (= e!1596273 e!1596272)))

(declare-fun res!1064934 () Bool)

(assert (=> b!2520460 (=> res!1064934 e!1596272)))

(assert (=> b!2520460 (= res!1064934 ((_ is Star!7505) (derivative!200 lt!899440 tl!4068)))))

(declare-fun b!2520461 () Bool)

(declare-fun e!1596275 () Bool)

(declare-fun e!1596271 () Bool)

(assert (=> b!2520461 (= e!1596275 e!1596271)))

(declare-fun res!1064930 () Bool)

(declare-fun call!157068 () Bool)

(assert (=> b!2520461 (= res!1064930 call!157068)))

(assert (=> b!2520461 (=> res!1064930 e!1596271)))

(declare-fun d!717990 () Bool)

(declare-fun res!1064931 () Bool)

(declare-fun e!1596276 () Bool)

(assert (=> d!717990 (=> res!1064931 e!1596276)))

(assert (=> d!717990 (= res!1064931 ((_ is EmptyExpr!7505) (derivative!200 lt!899440 tl!4068)))))

(assert (=> d!717990 (= (nullableFct!663 (derivative!200 lt!899440 tl!4068)) e!1596276)))

(declare-fun b!2520462 () Bool)

(declare-fun e!1596274 () Bool)

(assert (=> b!2520462 (= e!1596275 e!1596274)))

(declare-fun res!1064933 () Bool)

(declare-fun call!157067 () Bool)

(assert (=> b!2520462 (= res!1064933 call!157067)))

(assert (=> b!2520462 (=> (not res!1064933) (not e!1596274))))

(declare-fun b!2520463 () Bool)

(assert (=> b!2520463 (= e!1596271 call!157067)))

(declare-fun b!2520464 () Bool)

(assert (=> b!2520464 (= e!1596272 e!1596275)))

(declare-fun c!401996 () Bool)

(assert (=> b!2520464 (= c!401996 ((_ is Union!7505) (derivative!200 lt!899440 tl!4068)))))

(declare-fun bm!157062 () Bool)

(assert (=> bm!157062 (= call!157067 (nullable!2422 (ite c!401996 (regTwo!15523 (derivative!200 lt!899440 tl!4068)) (regOne!15522 (derivative!200 lt!899440 tl!4068)))))))

(declare-fun b!2520465 () Bool)

(assert (=> b!2520465 (= e!1596276 e!1596273)))

(declare-fun res!1064932 () Bool)

(assert (=> b!2520465 (=> (not res!1064932) (not e!1596273))))

(assert (=> b!2520465 (= res!1064932 (and (not ((_ is EmptyLang!7505) (derivative!200 lt!899440 tl!4068))) (not ((_ is ElementMatch!7505) (derivative!200 lt!899440 tl!4068)))))))

(declare-fun b!2520466 () Bool)

(assert (=> b!2520466 (= e!1596274 call!157068)))

(declare-fun bm!157063 () Bool)

(assert (=> bm!157063 (= call!157068 (nullable!2422 (ite c!401996 (regOne!15523 (derivative!200 lt!899440 tl!4068)) (regTwo!15522 (derivative!200 lt!899440 tl!4068)))))))

(assert (= (and d!717990 (not res!1064931)) b!2520465))

(assert (= (and b!2520465 res!1064932) b!2520460))

(assert (= (and b!2520460 (not res!1064934)) b!2520464))

(assert (= (and b!2520464 c!401996) b!2520461))

(assert (= (and b!2520464 (not c!401996)) b!2520462))

(assert (= (and b!2520461 (not res!1064930)) b!2520463))

(assert (= (and b!2520462 res!1064933) b!2520466))

(assert (= (or b!2520463 b!2520462) bm!157062))

(assert (= (or b!2520461 b!2520466) bm!157063))

(declare-fun m!2875375 () Bool)

(assert (=> bm!157062 m!2875375))

(declare-fun m!2875377 () Bool)

(assert (=> bm!157063 m!2875377))

(assert (=> d!717810 d!717990))

(declare-fun d!718010 () Bool)

(declare-fun e!1596279 () Bool)

(assert (=> d!718010 e!1596279))

(declare-fun c!401999 () Bool)

(assert (=> d!718010 (= c!401999 ((_ is EmptyExpr!7505) (derivativeStep!2074 lt!899438 (head!5754 (_2!17298 lt!899442)))))))

(declare-fun lt!899521 () Bool)

(declare-fun e!1596281 () Bool)

(assert (=> d!718010 (= lt!899521 e!1596281)))

(declare-fun c!401997 () Bool)

(assert (=> d!718010 (= c!401997 (isEmpty!16933 (tail!4031 (_2!17298 lt!899442))))))

(assert (=> d!718010 (validRegex!3131 (derivativeStep!2074 lt!899438 (head!5754 (_2!17298 lt!899442))))))

(assert (=> d!718010 (= (matchR!3492 (derivativeStep!2074 lt!899438 (head!5754 (_2!17298 lt!899442))) (tail!4031 (_2!17298 lt!899442))) lt!899521)))

(declare-fun b!2520467 () Bool)

(declare-fun res!1064937 () Bool)

(declare-fun e!1596280 () Bool)

(assert (=> b!2520467 (=> res!1064937 e!1596280)))

(assert (=> b!2520467 (= res!1064937 (not (isEmpty!16933 (tail!4031 (tail!4031 (_2!17298 lt!899442))))))))

(declare-fun b!2520468 () Bool)

(assert (=> b!2520468 (= e!1596281 (matchR!3492 (derivativeStep!2074 (derivativeStep!2074 lt!899438 (head!5754 (_2!17298 lt!899442))) (head!5754 (tail!4031 (_2!17298 lt!899442)))) (tail!4031 (tail!4031 (_2!17298 lt!899442)))))))

(declare-fun b!2520469 () Bool)

(declare-fun res!1064935 () Bool)

(declare-fun e!1596283 () Bool)

(assert (=> b!2520469 (=> res!1064935 e!1596283)))

(assert (=> b!2520469 (= res!1064935 (not ((_ is ElementMatch!7505) (derivativeStep!2074 lt!899438 (head!5754 (_2!17298 lt!899442))))))))

(declare-fun e!1596282 () Bool)

(assert (=> b!2520469 (= e!1596282 e!1596283)))

(declare-fun b!2520470 () Bool)

(declare-fun call!157069 () Bool)

(assert (=> b!2520470 (= e!1596279 (= lt!899521 call!157069))))

(declare-fun b!2520471 () Bool)

(assert (=> b!2520471 (= e!1596281 (nullable!2422 (derivativeStep!2074 lt!899438 (head!5754 (_2!17298 lt!899442)))))))

(declare-fun bm!157064 () Bool)

(assert (=> bm!157064 (= call!157069 (isEmpty!16933 (tail!4031 (_2!17298 lt!899442))))))

(declare-fun b!2520472 () Bool)

(declare-fun res!1064936 () Bool)

(declare-fun e!1596278 () Bool)

(assert (=> b!2520472 (=> (not res!1064936) (not e!1596278))))

(assert (=> b!2520472 (= res!1064936 (not call!157069))))

(declare-fun b!2520473 () Bool)

(declare-fun res!1064941 () Bool)

(assert (=> b!2520473 (=> (not res!1064941) (not e!1596278))))

(assert (=> b!2520473 (= res!1064941 (isEmpty!16933 (tail!4031 (tail!4031 (_2!17298 lt!899442)))))))

(declare-fun b!2520474 () Bool)

(declare-fun res!1064942 () Bool)

(assert (=> b!2520474 (=> res!1064942 e!1596283)))

(assert (=> b!2520474 (= res!1064942 e!1596278)))

(declare-fun res!1064940 () Bool)

(assert (=> b!2520474 (=> (not res!1064940) (not e!1596278))))

(assert (=> b!2520474 (= res!1064940 lt!899521)))

(declare-fun b!2520475 () Bool)

(assert (=> b!2520475 (= e!1596278 (= (head!5754 (tail!4031 (_2!17298 lt!899442))) (c!401811 (derivativeStep!2074 lt!899438 (head!5754 (_2!17298 lt!899442))))))))

(declare-fun b!2520476 () Bool)

(declare-fun e!1596277 () Bool)

(assert (=> b!2520476 (= e!1596283 e!1596277)))

(declare-fun res!1064938 () Bool)

(assert (=> b!2520476 (=> (not res!1064938) (not e!1596277))))

(assert (=> b!2520476 (= res!1064938 (not lt!899521))))

(declare-fun b!2520477 () Bool)

(assert (=> b!2520477 (= e!1596277 e!1596280)))

(declare-fun res!1064939 () Bool)

(assert (=> b!2520477 (=> res!1064939 e!1596280)))

(assert (=> b!2520477 (= res!1064939 call!157069)))

(declare-fun b!2520478 () Bool)

(assert (=> b!2520478 (= e!1596280 (not (= (head!5754 (tail!4031 (_2!17298 lt!899442))) (c!401811 (derivativeStep!2074 lt!899438 (head!5754 (_2!17298 lt!899442)))))))))

(declare-fun b!2520479 () Bool)

(assert (=> b!2520479 (= e!1596282 (not lt!899521))))

(declare-fun b!2520480 () Bool)

(assert (=> b!2520480 (= e!1596279 e!1596282)))

(declare-fun c!401998 () Bool)

(assert (=> b!2520480 (= c!401998 ((_ is EmptyLang!7505) (derivativeStep!2074 lt!899438 (head!5754 (_2!17298 lt!899442)))))))

(assert (= (and d!718010 c!401997) b!2520471))

(assert (= (and d!718010 (not c!401997)) b!2520468))

(assert (= (and d!718010 c!401999) b!2520470))

(assert (= (and d!718010 (not c!401999)) b!2520480))

(assert (= (and b!2520480 c!401998) b!2520479))

(assert (= (and b!2520480 (not c!401998)) b!2520469))

(assert (= (and b!2520469 (not res!1064935)) b!2520474))

(assert (= (and b!2520474 res!1064940) b!2520472))

(assert (= (and b!2520472 res!1064936) b!2520473))

(assert (= (and b!2520473 res!1064941) b!2520475))

(assert (= (and b!2520474 (not res!1064942)) b!2520476))

(assert (= (and b!2520476 res!1064938) b!2520477))

(assert (= (and b!2520477 (not res!1064939)) b!2520467))

(assert (= (and b!2520467 (not res!1064937)) b!2520478))

(assert (= (or b!2520470 b!2520472 b!2520477) bm!157064))

(assert (=> d!718010 m!2875003))

(assert (=> d!718010 m!2875005))

(assert (=> d!718010 m!2875007))

(declare-fun m!2875385 () Bool)

(assert (=> d!718010 m!2875385))

(assert (=> b!2520475 m!2875003))

(declare-fun m!2875389 () Bool)

(assert (=> b!2520475 m!2875389))

(assert (=> bm!157064 m!2875003))

(assert (=> bm!157064 m!2875005))

(assert (=> b!2520473 m!2875003))

(declare-fun m!2875395 () Bool)

(assert (=> b!2520473 m!2875395))

(assert (=> b!2520473 m!2875395))

(declare-fun m!2875397 () Bool)

(assert (=> b!2520473 m!2875397))

(assert (=> b!2520467 m!2875003))

(assert (=> b!2520467 m!2875395))

(assert (=> b!2520467 m!2875395))

(assert (=> b!2520467 m!2875397))

(assert (=> b!2520468 m!2875003))

(assert (=> b!2520468 m!2875389))

(assert (=> b!2520468 m!2875007))

(assert (=> b!2520468 m!2875389))

(declare-fun m!2875401 () Bool)

(assert (=> b!2520468 m!2875401))

(assert (=> b!2520468 m!2875003))

(assert (=> b!2520468 m!2875395))

(assert (=> b!2520468 m!2875401))

(assert (=> b!2520468 m!2875395))

(declare-fun m!2875403 () Bool)

(assert (=> b!2520468 m!2875403))

(assert (=> b!2520471 m!2875007))

(declare-fun m!2875405 () Bool)

(assert (=> b!2520471 m!2875405))

(assert (=> b!2520478 m!2875003))

(assert (=> b!2520478 m!2875389))

(assert (=> b!2519893 d!718010))

(declare-fun b!2520497 () Bool)

(declare-fun e!1596295 () Regex!7505)

(assert (=> b!2520497 (= e!1596295 (ite (= (head!5754 (_2!17298 lt!899442)) (c!401811 lt!899438)) EmptyExpr!7505 EmptyLang!7505))))

(declare-fun b!2520498 () Bool)

(declare-fun call!157076 () Regex!7505)

(declare-fun e!1596294 () Regex!7505)

(declare-fun call!157074 () Regex!7505)

(assert (=> b!2520498 (= e!1596294 (Union!7505 (Concat!12201 call!157074 (regTwo!15522 lt!899438)) call!157076))))

(declare-fun c!402008 () Bool)

(declare-fun c!402007 () Bool)

(declare-fun bm!157069 () Bool)

(declare-fun call!157075 () Regex!7505)

(assert (=> bm!157069 (= call!157075 (derivativeStep!2074 (ite c!402008 (regTwo!15523 lt!899438) (ite c!402007 (reg!7834 lt!899438) (regOne!15522 lt!899438))) (head!5754 (_2!17298 lt!899442))))))

(declare-fun b!2520499 () Bool)

(declare-fun e!1596292 () Regex!7505)

(declare-fun call!157077 () Regex!7505)

(assert (=> b!2520499 (= e!1596292 (Concat!12201 call!157077 lt!899438))))

(declare-fun b!2520500 () Bool)

(declare-fun e!1596296 () Regex!7505)

(assert (=> b!2520500 (= e!1596296 EmptyLang!7505)))

(declare-fun b!2520501 () Bool)

(assert (=> b!2520501 (= e!1596294 (Union!7505 (Concat!12201 call!157074 (regTwo!15522 lt!899438)) EmptyLang!7505))))

(declare-fun b!2520502 () Bool)

(assert (=> b!2520502 (= c!402008 ((_ is Union!7505) lt!899438))))

(declare-fun e!1596293 () Regex!7505)

(assert (=> b!2520502 (= e!1596295 e!1596293)))

(declare-fun b!2520503 () Bool)

(assert (=> b!2520503 (= e!1596296 e!1596295)))

(declare-fun c!402011 () Bool)

(assert (=> b!2520503 (= c!402011 ((_ is ElementMatch!7505) lt!899438))))

(declare-fun b!2520504 () Bool)

(declare-fun c!402010 () Bool)

(assert (=> b!2520504 (= c!402010 (nullable!2422 (regOne!15522 lt!899438)))))

(assert (=> b!2520504 (= e!1596292 e!1596294)))

(declare-fun b!2520505 () Bool)

(assert (=> b!2520505 (= e!1596293 (Union!7505 call!157076 call!157075))))

(declare-fun b!2520506 () Bool)

(assert (=> b!2520506 (= e!1596293 e!1596292)))

(assert (=> b!2520506 (= c!402007 ((_ is Star!7505) lt!899438))))

(declare-fun bm!157070 () Bool)

(assert (=> bm!157070 (= call!157076 (derivativeStep!2074 (ite c!402008 (regOne!15523 lt!899438) (regTwo!15522 lt!899438)) (head!5754 (_2!17298 lt!899442))))))

(declare-fun d!718020 () Bool)

(declare-fun lt!899525 () Regex!7505)

(assert (=> d!718020 (validRegex!3131 lt!899525)))

(assert (=> d!718020 (= lt!899525 e!1596296)))

(declare-fun c!402009 () Bool)

(assert (=> d!718020 (= c!402009 (or ((_ is EmptyExpr!7505) lt!899438) ((_ is EmptyLang!7505) lt!899438)))))

(assert (=> d!718020 (validRegex!3131 lt!899438)))

(assert (=> d!718020 (= (derivativeStep!2074 lt!899438 (head!5754 (_2!17298 lt!899442))) lt!899525)))

(declare-fun bm!157071 () Bool)

(assert (=> bm!157071 (= call!157074 call!157077)))

(declare-fun bm!157072 () Bool)

(assert (=> bm!157072 (= call!157077 call!157075)))

(assert (= (and d!718020 c!402009) b!2520500))

(assert (= (and d!718020 (not c!402009)) b!2520503))

(assert (= (and b!2520503 c!402011) b!2520497))

(assert (= (and b!2520503 (not c!402011)) b!2520502))

(assert (= (and b!2520502 c!402008) b!2520505))

(assert (= (and b!2520502 (not c!402008)) b!2520506))

(assert (= (and b!2520506 c!402007) b!2520499))

(assert (= (and b!2520506 (not c!402007)) b!2520504))

(assert (= (and b!2520504 c!402010) b!2520498))

(assert (= (and b!2520504 (not c!402010)) b!2520501))

(assert (= (or b!2520498 b!2520501) bm!157071))

(assert (= (or b!2520499 bm!157071) bm!157072))

(assert (= (or b!2520505 bm!157072) bm!157069))

(assert (= (or b!2520505 b!2520498) bm!157070))

(assert (=> bm!157069 m!2875001))

(declare-fun m!2875415 () Bool)

(assert (=> bm!157069 m!2875415))

(declare-fun m!2875417 () Bool)

(assert (=> b!2520504 m!2875417))

(assert (=> bm!157070 m!2875001))

(declare-fun m!2875419 () Bool)

(assert (=> bm!157070 m!2875419))

(declare-fun m!2875421 () Bool)

(assert (=> d!718020 m!2875421))

(assert (=> d!718020 m!2874999))

(assert (=> b!2519893 d!718020))

(assert (=> b!2519893 d!717922))

(declare-fun d!718024 () Bool)

(assert (=> d!718024 (= (tail!4031 (_2!17298 lt!899442)) (t!211269 (_2!17298 lt!899442)))))

(assert (=> b!2519893 d!718024))

(declare-fun d!718026 () Bool)

(assert (=> d!718026 (= (isEmpty!16933 Nil!29470) true)))

(assert (=> bm!156951 d!718026))

(declare-fun d!718032 () Bool)

(assert (=> d!718032 (= (isDefined!4698 lt!899502) (not (isEmpty!16934 lt!899502)))))

(declare-fun bs!468981 () Bool)

(assert (= bs!468981 d!718032))

(declare-fun m!2875431 () Bool)

(assert (=> bs!468981 m!2875431))

(assert (=> b!2520156 d!718032))

(declare-fun d!718034 () Bool)

(assert (not d!718034))

(assert (=> b!2519836 d!718034))

(assert (=> b!2519836 d!717948))

(assert (=> b!2519844 d!717926))

(assert (=> b!2519844 d!717928))

(declare-fun b!2520525 () Bool)

(declare-fun e!1596317 () Regex!7505)

(assert (=> b!2520525 (= e!1596317 (ite (= c!14016 (c!401811 (ite c!401869 (regOne!15523 r!27340) (regTwo!15522 r!27340)))) EmptyExpr!7505 EmptyLang!7505))))

(declare-fun b!2520526 () Bool)

(declare-fun call!157087 () Regex!7505)

(declare-fun e!1596315 () Regex!7505)

(declare-fun call!157084 () Regex!7505)

(assert (=> b!2520526 (= e!1596315 (Union!7505 (Concat!12201 call!157084 (regTwo!15522 (ite c!401869 (regOne!15523 r!27340) (regTwo!15522 r!27340)))) call!157087))))

(declare-fun c!402017 () Bool)

(declare-fun bm!157079 () Bool)

(declare-fun c!402016 () Bool)

(declare-fun call!157085 () Regex!7505)

(assert (=> bm!157079 (= call!157085 (derivativeStep!2074 (ite c!402017 (regTwo!15523 (ite c!401869 (regOne!15523 r!27340) (regTwo!15522 r!27340))) (ite c!402016 (reg!7834 (ite c!401869 (regOne!15523 r!27340) (regTwo!15522 r!27340))) (regOne!15522 (ite c!401869 (regOne!15523 r!27340) (regTwo!15522 r!27340))))) c!14016))))

(declare-fun call!157088 () Regex!7505)

(declare-fun b!2520527 () Bool)

(declare-fun e!1596311 () Regex!7505)

(assert (=> b!2520527 (= e!1596311 (Concat!12201 call!157088 (ite c!401869 (regOne!15523 r!27340) (regTwo!15522 r!27340))))))

(declare-fun b!2520528 () Bool)

(declare-fun e!1596321 () Regex!7505)

(assert (=> b!2520528 (= e!1596321 EmptyLang!7505)))

(declare-fun b!2520530 () Bool)

(assert (=> b!2520530 (= e!1596315 (Union!7505 (Concat!12201 call!157084 (regTwo!15522 (ite c!401869 (regOne!15523 r!27340) (regTwo!15522 r!27340)))) EmptyLang!7505))))

(declare-fun b!2520532 () Bool)

(assert (=> b!2520532 (= c!402017 ((_ is Union!7505) (ite c!401869 (regOne!15523 r!27340) (regTwo!15522 r!27340))))))

(declare-fun e!1596313 () Regex!7505)

(assert (=> b!2520532 (= e!1596317 e!1596313)))

(declare-fun b!2520534 () Bool)

(assert (=> b!2520534 (= e!1596321 e!1596317)))

(declare-fun c!402021 () Bool)

(assert (=> b!2520534 (= c!402021 ((_ is ElementMatch!7505) (ite c!401869 (regOne!15523 r!27340) (regTwo!15522 r!27340))))))

(declare-fun b!2520536 () Bool)

(declare-fun c!402019 () Bool)

(assert (=> b!2520536 (= c!402019 (nullable!2422 (regOne!15522 (ite c!401869 (regOne!15523 r!27340) (regTwo!15522 r!27340)))))))

(assert (=> b!2520536 (= e!1596311 e!1596315)))

(declare-fun b!2520538 () Bool)

(assert (=> b!2520538 (= e!1596313 (Union!7505 call!157087 call!157085))))

(declare-fun b!2520540 () Bool)

(assert (=> b!2520540 (= e!1596313 e!1596311)))

(assert (=> b!2520540 (= c!402016 ((_ is Star!7505) (ite c!401869 (regOne!15523 r!27340) (regTwo!15522 r!27340))))))

(declare-fun bm!157080 () Bool)

(assert (=> bm!157080 (= call!157087 (derivativeStep!2074 (ite c!402017 (regOne!15523 (ite c!401869 (regOne!15523 r!27340) (regTwo!15522 r!27340))) (regTwo!15522 (ite c!401869 (regOne!15523 r!27340) (regTwo!15522 r!27340)))) c!14016))))

(declare-fun d!718036 () Bool)

(declare-fun lt!899526 () Regex!7505)

(assert (=> d!718036 (validRegex!3131 lt!899526)))

(assert (=> d!718036 (= lt!899526 e!1596321)))

(declare-fun c!402018 () Bool)

(assert (=> d!718036 (= c!402018 (or ((_ is EmptyExpr!7505) (ite c!401869 (regOne!15523 r!27340) (regTwo!15522 r!27340))) ((_ is EmptyLang!7505) (ite c!401869 (regOne!15523 r!27340) (regTwo!15522 r!27340)))))))

(assert (=> d!718036 (validRegex!3131 (ite c!401869 (regOne!15523 r!27340) (regTwo!15522 r!27340)))))

(assert (=> d!718036 (= (derivativeStep!2074 (ite c!401869 (regOne!15523 r!27340) (regTwo!15522 r!27340)) c!14016) lt!899526)))

(declare-fun bm!157081 () Bool)

(assert (=> bm!157081 (= call!157084 call!157088)))

(declare-fun bm!157082 () Bool)

(assert (=> bm!157082 (= call!157088 call!157085)))

(assert (= (and d!718036 c!402018) b!2520528))

(assert (= (and d!718036 (not c!402018)) b!2520534))

(assert (= (and b!2520534 c!402021) b!2520525))

(assert (= (and b!2520534 (not c!402021)) b!2520532))

(assert (= (and b!2520532 c!402017) b!2520538))

(assert (= (and b!2520532 (not c!402017)) b!2520540))

(assert (= (and b!2520540 c!402016) b!2520527))

(assert (= (and b!2520540 (not c!402016)) b!2520536))

(assert (= (and b!2520536 c!402019) b!2520526))

(assert (= (and b!2520536 (not c!402019)) b!2520530))

(assert (= (or b!2520526 b!2520530) bm!157081))

(assert (= (or b!2520527 bm!157081) bm!157082))

(assert (= (or b!2520538 bm!157082) bm!157079))

(assert (= (or b!2520538 b!2520526) bm!157080))

(declare-fun m!2875439 () Bool)

(assert (=> bm!157079 m!2875439))

(declare-fun m!2875441 () Bool)

(assert (=> b!2520536 m!2875441))

(declare-fun m!2875445 () Bool)

(assert (=> bm!157080 m!2875445))

(declare-fun m!2875447 () Bool)

(assert (=> d!718036 m!2875447))

(declare-fun m!2875451 () Bool)

(assert (=> d!718036 m!2875451))

(assert (=> bm!156964 d!718036))

(declare-fun d!718040 () Bool)

(assert (=> d!718040 (= (isEmpty!16933 (_2!17298 lt!899442)) ((_ is Nil!29470) (_2!17298 lt!899442)))))

(assert (=> bm!156956 d!718040))

(assert (=> b!2519838 d!717892))

(assert (=> d!717826 d!717894))

(assert (=> d!717826 d!717910))

(declare-fun d!718042 () Bool)

(declare-fun e!1596325 () Bool)

(assert (=> d!718042 e!1596325))

(declare-fun c!402026 () Bool)

(assert (=> d!718042 (= c!402026 ((_ is EmptyExpr!7505) (derivativeStep!2074 (reg!7834 r!27340) (head!5754 (Cons!29470 c!14016 (_1!17298 lt!899442))))))))

(declare-fun lt!899528 () Bool)

(declare-fun e!1596327 () Bool)

(assert (=> d!718042 (= lt!899528 e!1596327)))

(declare-fun c!402024 () Bool)

(assert (=> d!718042 (= c!402024 (isEmpty!16933 (tail!4031 (Cons!29470 c!14016 (_1!17298 lt!899442)))))))

(assert (=> d!718042 (validRegex!3131 (derivativeStep!2074 (reg!7834 r!27340) (head!5754 (Cons!29470 c!14016 (_1!17298 lt!899442)))))))

(assert (=> d!718042 (= (matchR!3492 (derivativeStep!2074 (reg!7834 r!27340) (head!5754 (Cons!29470 c!14016 (_1!17298 lt!899442)))) (tail!4031 (Cons!29470 c!14016 (_1!17298 lt!899442)))) lt!899528)))

(declare-fun b!2520549 () Bool)

(declare-fun res!1064965 () Bool)

(declare-fun e!1596326 () Bool)

(assert (=> b!2520549 (=> res!1064965 e!1596326)))

(assert (=> b!2520549 (= res!1064965 (not (isEmpty!16933 (tail!4031 (tail!4031 (Cons!29470 c!14016 (_1!17298 lt!899442)))))))))

(declare-fun b!2520550 () Bool)

(assert (=> b!2520550 (= e!1596327 (matchR!3492 (derivativeStep!2074 (derivativeStep!2074 (reg!7834 r!27340) (head!5754 (Cons!29470 c!14016 (_1!17298 lt!899442)))) (head!5754 (tail!4031 (Cons!29470 c!14016 (_1!17298 lt!899442))))) (tail!4031 (tail!4031 (Cons!29470 c!14016 (_1!17298 lt!899442))))))))

(declare-fun b!2520551 () Bool)

(declare-fun res!1064963 () Bool)

(declare-fun e!1596329 () Bool)

(assert (=> b!2520551 (=> res!1064963 e!1596329)))

(assert (=> b!2520551 (= res!1064963 (not ((_ is ElementMatch!7505) (derivativeStep!2074 (reg!7834 r!27340) (head!5754 (Cons!29470 c!14016 (_1!17298 lt!899442)))))))))

(declare-fun e!1596328 () Bool)

(assert (=> b!2520551 (= e!1596328 e!1596329)))

(declare-fun b!2520552 () Bool)

(declare-fun call!157089 () Bool)

(assert (=> b!2520552 (= e!1596325 (= lt!899528 call!157089))))

(declare-fun b!2520553 () Bool)

(assert (=> b!2520553 (= e!1596327 (nullable!2422 (derivativeStep!2074 (reg!7834 r!27340) (head!5754 (Cons!29470 c!14016 (_1!17298 lt!899442))))))))

(declare-fun bm!157084 () Bool)

(assert (=> bm!157084 (= call!157089 (isEmpty!16933 (tail!4031 (Cons!29470 c!14016 (_1!17298 lt!899442)))))))

(declare-fun b!2520554 () Bool)

(declare-fun res!1064964 () Bool)

(declare-fun e!1596324 () Bool)

(assert (=> b!2520554 (=> (not res!1064964) (not e!1596324))))

(assert (=> b!2520554 (= res!1064964 (not call!157089))))

(declare-fun b!2520555 () Bool)

(declare-fun res!1064969 () Bool)

(assert (=> b!2520555 (=> (not res!1064969) (not e!1596324))))

(assert (=> b!2520555 (= res!1064969 (isEmpty!16933 (tail!4031 (tail!4031 (Cons!29470 c!14016 (_1!17298 lt!899442))))))))

(declare-fun b!2520556 () Bool)

(declare-fun res!1064970 () Bool)

(assert (=> b!2520556 (=> res!1064970 e!1596329)))

(assert (=> b!2520556 (= res!1064970 e!1596324)))

(declare-fun res!1064968 () Bool)

(assert (=> b!2520556 (=> (not res!1064968) (not e!1596324))))

(assert (=> b!2520556 (= res!1064968 lt!899528)))

(declare-fun b!2520557 () Bool)

(assert (=> b!2520557 (= e!1596324 (= (head!5754 (tail!4031 (Cons!29470 c!14016 (_1!17298 lt!899442)))) (c!401811 (derivativeStep!2074 (reg!7834 r!27340) (head!5754 (Cons!29470 c!14016 (_1!17298 lt!899442)))))))))

(declare-fun b!2520558 () Bool)

(declare-fun e!1596323 () Bool)

(assert (=> b!2520558 (= e!1596329 e!1596323)))

(declare-fun res!1064966 () Bool)

(assert (=> b!2520558 (=> (not res!1064966) (not e!1596323))))

(assert (=> b!2520558 (= res!1064966 (not lt!899528))))

(declare-fun b!2520559 () Bool)

(assert (=> b!2520559 (= e!1596323 e!1596326)))

(declare-fun res!1064967 () Bool)

(assert (=> b!2520559 (=> res!1064967 e!1596326)))

(assert (=> b!2520559 (= res!1064967 call!157089)))

(declare-fun b!2520560 () Bool)

(assert (=> b!2520560 (= e!1596326 (not (= (head!5754 (tail!4031 (Cons!29470 c!14016 (_1!17298 lt!899442)))) (c!401811 (derivativeStep!2074 (reg!7834 r!27340) (head!5754 (Cons!29470 c!14016 (_1!17298 lt!899442))))))))))

(declare-fun b!2520561 () Bool)

(assert (=> b!2520561 (= e!1596328 (not lt!899528))))

(declare-fun b!2520562 () Bool)

(assert (=> b!2520562 (= e!1596325 e!1596328)))

(declare-fun c!402025 () Bool)

(assert (=> b!2520562 (= c!402025 ((_ is EmptyLang!7505) (derivativeStep!2074 (reg!7834 r!27340) (head!5754 (Cons!29470 c!14016 (_1!17298 lt!899442))))))))

(assert (= (and d!718042 c!402024) b!2520553))

(assert (= (and d!718042 (not c!402024)) b!2520550))

(assert (= (and d!718042 c!402026) b!2520552))

(assert (= (and d!718042 (not c!402026)) b!2520562))

(assert (= (and b!2520562 c!402025) b!2520561))

(assert (= (and b!2520562 (not c!402025)) b!2520551))

(assert (= (and b!2520551 (not res!1064963)) b!2520556))

(assert (= (and b!2520556 res!1064968) b!2520554))

(assert (= (and b!2520554 res!1064964) b!2520555))

(assert (= (and b!2520555 res!1064969) b!2520557))

(assert (= (and b!2520556 (not res!1064970)) b!2520558))

(assert (= (and b!2520558 res!1064966) b!2520559))

(assert (= (and b!2520559 (not res!1064967)) b!2520549))

(assert (= (and b!2520549 (not res!1064965)) b!2520560))

(assert (= (or b!2520552 b!2520554 b!2520559) bm!157084))

(assert (=> d!718042 m!2874987))

(assert (=> d!718042 m!2874989))

(assert (=> d!718042 m!2874991))

(declare-fun m!2875467 () Bool)

(assert (=> d!718042 m!2875467))

(assert (=> b!2520557 m!2874987))

(declare-fun m!2875471 () Bool)

(assert (=> b!2520557 m!2875471))

(assert (=> bm!157084 m!2874987))

(assert (=> bm!157084 m!2874989))

(assert (=> b!2520555 m!2874987))

(declare-fun m!2875473 () Bool)

(assert (=> b!2520555 m!2875473))

(assert (=> b!2520555 m!2875473))

(declare-fun m!2875475 () Bool)

(assert (=> b!2520555 m!2875475))

(assert (=> b!2520549 m!2874987))

(assert (=> b!2520549 m!2875473))

(assert (=> b!2520549 m!2875473))

(assert (=> b!2520549 m!2875475))

(assert (=> b!2520550 m!2874987))

(assert (=> b!2520550 m!2875471))

(assert (=> b!2520550 m!2874991))

(assert (=> b!2520550 m!2875471))

(declare-fun m!2875477 () Bool)

(assert (=> b!2520550 m!2875477))

(assert (=> b!2520550 m!2874987))

(assert (=> b!2520550 m!2875473))

(assert (=> b!2520550 m!2875477))

(assert (=> b!2520550 m!2875473))

(declare-fun m!2875487 () Bool)

(assert (=> b!2520550 m!2875487))

(assert (=> b!2520553 m!2874991))

(declare-fun m!2875489 () Bool)

(assert (=> b!2520553 m!2875489))

(assert (=> b!2520560 m!2874987))

(assert (=> b!2520560 m!2875471))

(assert (=> b!2519859 d!718042))

(declare-fun b!2520585 () Bool)

(declare-fun e!1596344 () Regex!7505)

(assert (=> b!2520585 (= e!1596344 (ite (= (head!5754 (Cons!29470 c!14016 (_1!17298 lt!899442))) (c!401811 (reg!7834 r!27340))) EmptyExpr!7505 EmptyLang!7505))))

(declare-fun call!157098 () Regex!7505)

(declare-fun e!1596343 () Regex!7505)

(declare-fun call!157100 () Regex!7505)

(declare-fun b!2520586 () Bool)

(assert (=> b!2520586 (= e!1596343 (Union!7505 (Concat!12201 call!157098 (regTwo!15522 (reg!7834 r!27340))) call!157100))))

(declare-fun c!402038 () Bool)

(declare-fun c!402039 () Bool)

(declare-fun call!157099 () Regex!7505)

(declare-fun bm!157093 () Bool)

(assert (=> bm!157093 (= call!157099 (derivativeStep!2074 (ite c!402039 (regTwo!15523 (reg!7834 r!27340)) (ite c!402038 (reg!7834 (reg!7834 r!27340)) (regOne!15522 (reg!7834 r!27340)))) (head!5754 (Cons!29470 c!14016 (_1!17298 lt!899442)))))))

(declare-fun b!2520587 () Bool)

(declare-fun e!1596341 () Regex!7505)

(declare-fun call!157101 () Regex!7505)

(assert (=> b!2520587 (= e!1596341 (Concat!12201 call!157101 (reg!7834 r!27340)))))

(declare-fun b!2520588 () Bool)

(declare-fun e!1596345 () Regex!7505)

(assert (=> b!2520588 (= e!1596345 EmptyLang!7505)))

(declare-fun b!2520589 () Bool)

(assert (=> b!2520589 (= e!1596343 (Union!7505 (Concat!12201 call!157098 (regTwo!15522 (reg!7834 r!27340))) EmptyLang!7505))))

(declare-fun b!2520590 () Bool)

(assert (=> b!2520590 (= c!402039 ((_ is Union!7505) (reg!7834 r!27340)))))

(declare-fun e!1596342 () Regex!7505)

(assert (=> b!2520590 (= e!1596344 e!1596342)))

(declare-fun b!2520591 () Bool)

(assert (=> b!2520591 (= e!1596345 e!1596344)))

(declare-fun c!402042 () Bool)

(assert (=> b!2520591 (= c!402042 ((_ is ElementMatch!7505) (reg!7834 r!27340)))))

(declare-fun b!2520592 () Bool)

(declare-fun c!402041 () Bool)

(assert (=> b!2520592 (= c!402041 (nullable!2422 (regOne!15522 (reg!7834 r!27340))))))

(assert (=> b!2520592 (= e!1596341 e!1596343)))

(declare-fun b!2520593 () Bool)

(assert (=> b!2520593 (= e!1596342 (Union!7505 call!157100 call!157099))))

(declare-fun b!2520594 () Bool)

(assert (=> b!2520594 (= e!1596342 e!1596341)))

(assert (=> b!2520594 (= c!402038 ((_ is Star!7505) (reg!7834 r!27340)))))

(declare-fun bm!157094 () Bool)

(assert (=> bm!157094 (= call!157100 (derivativeStep!2074 (ite c!402039 (regOne!15523 (reg!7834 r!27340)) (regTwo!15522 (reg!7834 r!27340))) (head!5754 (Cons!29470 c!14016 (_1!17298 lt!899442)))))))

(declare-fun d!718050 () Bool)

(declare-fun lt!899532 () Regex!7505)

(assert (=> d!718050 (validRegex!3131 lt!899532)))

(assert (=> d!718050 (= lt!899532 e!1596345)))

(declare-fun c!402040 () Bool)

(assert (=> d!718050 (= c!402040 (or ((_ is EmptyExpr!7505) (reg!7834 r!27340)) ((_ is EmptyLang!7505) (reg!7834 r!27340))))))

(assert (=> d!718050 (validRegex!3131 (reg!7834 r!27340))))

(assert (=> d!718050 (= (derivativeStep!2074 (reg!7834 r!27340) (head!5754 (Cons!29470 c!14016 (_1!17298 lt!899442)))) lt!899532)))

(declare-fun bm!157095 () Bool)

(assert (=> bm!157095 (= call!157098 call!157101)))

(declare-fun bm!157096 () Bool)

(assert (=> bm!157096 (= call!157101 call!157099)))

(assert (= (and d!718050 c!402040) b!2520588))

(assert (= (and d!718050 (not c!402040)) b!2520591))

(assert (= (and b!2520591 c!402042) b!2520585))

(assert (= (and b!2520591 (not c!402042)) b!2520590))

(assert (= (and b!2520590 c!402039) b!2520593))

(assert (= (and b!2520590 (not c!402039)) b!2520594))

(assert (= (and b!2520594 c!402038) b!2520587))

(assert (= (and b!2520594 (not c!402038)) b!2520592))

(assert (= (and b!2520592 c!402041) b!2520586))

(assert (= (and b!2520592 (not c!402041)) b!2520589))

(assert (= (or b!2520586 b!2520589) bm!157095))

(assert (= (or b!2520587 bm!157095) bm!157096))

(assert (= (or b!2520593 bm!157096) bm!157093))

(assert (= (or b!2520593 b!2520586) bm!157094))

(assert (=> bm!157093 m!2874985))

(declare-fun m!2875499 () Bool)

(assert (=> bm!157093 m!2875499))

(assert (=> b!2520592 m!2874911))

(assert (=> bm!157094 m!2874985))

(declare-fun m!2875501 () Bool)

(assert (=> bm!157094 m!2875501))

(declare-fun m!2875503 () Bool)

(assert (=> d!718050 m!2875503))

(assert (=> d!718050 m!2874917))

(assert (=> b!2519859 d!718050))

(assert (=> b!2519859 d!717958))

(declare-fun d!718054 () Bool)

(assert (=> d!718054 (= (tail!4031 (Cons!29470 c!14016 (_1!17298 lt!899442))) (t!211269 (Cons!29470 c!14016 (_1!17298 lt!899442))))))

(assert (=> b!2519859 d!718054))

(declare-fun b!2520604 () Bool)

(declare-fun e!1596354 () Bool)

(declare-fun call!157105 () Bool)

(assert (=> b!2520604 (= e!1596354 call!157105)))

(declare-fun bm!157100 () Bool)

(declare-fun call!157106 () Bool)

(declare-fun c!402045 () Bool)

(assert (=> bm!157100 (= call!157106 (validRegex!3131 (ite c!402045 (regOne!15523 lt!899475) (regTwo!15522 lt!899475))))))

(declare-fun b!2520605 () Bool)

(declare-fun e!1596355 () Bool)

(assert (=> b!2520605 (= e!1596355 e!1596354)))

(declare-fun res!1064979 () Bool)

(assert (=> b!2520605 (= res!1064979 (not (nullable!2422 (reg!7834 lt!899475))))))

(assert (=> b!2520605 (=> (not res!1064979) (not e!1596354))))

(declare-fun b!2520606 () Bool)

(declare-fun e!1596357 () Bool)

(assert (=> b!2520606 (= e!1596357 e!1596355)))

(declare-fun c!402046 () Bool)

(assert (=> b!2520606 (= c!402046 ((_ is Star!7505) lt!899475))))

(declare-fun b!2520607 () Bool)

(declare-fun e!1596356 () Bool)

(assert (=> b!2520607 (= e!1596356 call!157106)))

(declare-fun d!718056 () Bool)

(declare-fun res!1064976 () Bool)

(assert (=> d!718056 (=> res!1064976 e!1596357)))

(assert (=> d!718056 (= res!1064976 ((_ is ElementMatch!7505) lt!899475))))

(assert (=> d!718056 (= (validRegex!3131 lt!899475) e!1596357)))

(declare-fun b!2520608 () Bool)

(declare-fun res!1064977 () Bool)

(declare-fun e!1596353 () Bool)

(assert (=> b!2520608 (=> (not res!1064977) (not e!1596353))))

(assert (=> b!2520608 (= res!1064977 call!157106)))

(declare-fun e!1596359 () Bool)

(assert (=> b!2520608 (= e!1596359 e!1596353)))

(declare-fun bm!157101 () Bool)

(assert (=> bm!157101 (= call!157105 (validRegex!3131 (ite c!402046 (reg!7834 lt!899475) (ite c!402045 (regTwo!15523 lt!899475) (regOne!15522 lt!899475)))))))

(declare-fun b!2520609 () Bool)

(declare-fun call!157107 () Bool)

(assert (=> b!2520609 (= e!1596353 call!157107)))

(declare-fun bm!157102 () Bool)

(assert (=> bm!157102 (= call!157107 call!157105)))

(declare-fun b!2520610 () Bool)

(declare-fun res!1064978 () Bool)

(declare-fun e!1596358 () Bool)

(assert (=> b!2520610 (=> res!1064978 e!1596358)))

(assert (=> b!2520610 (= res!1064978 (not ((_ is Concat!12201) lt!899475)))))

(assert (=> b!2520610 (= e!1596359 e!1596358)))

(declare-fun b!2520611 () Bool)

(assert (=> b!2520611 (= e!1596355 e!1596359)))

(assert (=> b!2520611 (= c!402045 ((_ is Union!7505) lt!899475))))

(declare-fun b!2520612 () Bool)

(assert (=> b!2520612 (= e!1596358 e!1596356)))

(declare-fun res!1064980 () Bool)

(assert (=> b!2520612 (=> (not res!1064980) (not e!1596356))))

(assert (=> b!2520612 (= res!1064980 call!157107)))

(assert (= (and d!718056 (not res!1064976)) b!2520606))

(assert (= (and b!2520606 c!402046) b!2520605))

(assert (= (and b!2520606 (not c!402046)) b!2520611))

(assert (= (and b!2520605 res!1064979) b!2520604))

(assert (= (and b!2520611 c!402045) b!2520608))

(assert (= (and b!2520611 (not c!402045)) b!2520610))

(assert (= (and b!2520608 res!1064977) b!2520609))

(assert (= (and b!2520610 (not res!1064978)) b!2520612))

(assert (= (and b!2520612 res!1064980) b!2520607))

(assert (= (or b!2520608 b!2520607) bm!157100))

(assert (= (or b!2520609 b!2520612) bm!157102))

(assert (= (or b!2520604 bm!157102) bm!157101))

(declare-fun m!2875511 () Bool)

(assert (=> bm!157100 m!2875511))

(declare-fun m!2875513 () Bool)

(assert (=> b!2520605 m!2875513))

(declare-fun m!2875517 () Bool)

(assert (=> bm!157101 m!2875517))

(assert (=> d!717840 d!718056))

(assert (=> d!717840 d!717910))

(declare-fun d!718062 () Bool)

(assert (=> d!718062 (= (isEmpty!16934 lt!899434) (not ((_ is Some!5875) lt!899434)))))

(assert (=> d!717872 d!718062))

(declare-fun d!718064 () Bool)

(assert (=> d!718064 (= (nullable!2422 lt!899435) (nullableFct!663 lt!899435))))

(declare-fun bs!468983 () Bool)

(assert (= bs!468983 d!718064))

(declare-fun m!2875519 () Bool)

(assert (=> bs!468983 m!2875519))

(assert (=> b!2519848 d!718064))

(declare-fun b!2520613 () Bool)

(declare-fun e!1596361 () Bool)

(declare-fun call!157108 () Bool)

(assert (=> b!2520613 (= e!1596361 call!157108)))

(declare-fun bm!157103 () Bool)

(declare-fun call!157109 () Bool)

(declare-fun c!402047 () Bool)

(assert (=> bm!157103 (= call!157109 (validRegex!3131 (ite c!402047 (regOne!15523 lt!899445) (regTwo!15522 lt!899445))))))

(declare-fun b!2520614 () Bool)

(declare-fun e!1596362 () Bool)

(assert (=> b!2520614 (= e!1596362 e!1596361)))

(declare-fun res!1064984 () Bool)

(assert (=> b!2520614 (= res!1064984 (not (nullable!2422 (reg!7834 lt!899445))))))

(assert (=> b!2520614 (=> (not res!1064984) (not e!1596361))))

(declare-fun b!2520615 () Bool)

(declare-fun e!1596364 () Bool)

(assert (=> b!2520615 (= e!1596364 e!1596362)))

(declare-fun c!402048 () Bool)

(assert (=> b!2520615 (= c!402048 ((_ is Star!7505) lt!899445))))

(declare-fun b!2520616 () Bool)

(declare-fun e!1596363 () Bool)

(assert (=> b!2520616 (= e!1596363 call!157109)))

(declare-fun d!718066 () Bool)

(declare-fun res!1064981 () Bool)

(assert (=> d!718066 (=> res!1064981 e!1596364)))

(assert (=> d!718066 (= res!1064981 ((_ is ElementMatch!7505) lt!899445))))

(assert (=> d!718066 (= (validRegex!3131 lt!899445) e!1596364)))

(declare-fun b!2520617 () Bool)

(declare-fun res!1064982 () Bool)

(declare-fun e!1596360 () Bool)

(assert (=> b!2520617 (=> (not res!1064982) (not e!1596360))))

(assert (=> b!2520617 (= res!1064982 call!157109)))

(declare-fun e!1596366 () Bool)

(assert (=> b!2520617 (= e!1596366 e!1596360)))

(declare-fun bm!157104 () Bool)

(assert (=> bm!157104 (= call!157108 (validRegex!3131 (ite c!402048 (reg!7834 lt!899445) (ite c!402047 (regTwo!15523 lt!899445) (regOne!15522 lt!899445)))))))

(declare-fun b!2520618 () Bool)

(declare-fun call!157110 () Bool)

(assert (=> b!2520618 (= e!1596360 call!157110)))

(declare-fun bm!157105 () Bool)

(assert (=> bm!157105 (= call!157110 call!157108)))

(declare-fun b!2520619 () Bool)

(declare-fun res!1064983 () Bool)

(declare-fun e!1596365 () Bool)

(assert (=> b!2520619 (=> res!1064983 e!1596365)))

(assert (=> b!2520619 (= res!1064983 (not ((_ is Concat!12201) lt!899445)))))

(assert (=> b!2520619 (= e!1596366 e!1596365)))

(declare-fun b!2520620 () Bool)

(assert (=> b!2520620 (= e!1596362 e!1596366)))

(assert (=> b!2520620 (= c!402047 ((_ is Union!7505) lt!899445))))

(declare-fun b!2520621 () Bool)

(assert (=> b!2520621 (= e!1596365 e!1596363)))

(declare-fun res!1064985 () Bool)

(assert (=> b!2520621 (=> (not res!1064985) (not e!1596363))))

(assert (=> b!2520621 (= res!1064985 call!157110)))

(assert (= (and d!718066 (not res!1064981)) b!2520615))

(assert (= (and b!2520615 c!402048) b!2520614))

(assert (= (and b!2520615 (not c!402048)) b!2520620))

(assert (= (and b!2520614 res!1064984) b!2520613))

(assert (= (and b!2520620 c!402047) b!2520617))

(assert (= (and b!2520620 (not c!402047)) b!2520619))

(assert (= (and b!2520617 res!1064982) b!2520618))

(assert (= (and b!2520619 (not res!1064983)) b!2520621))

(assert (= (and b!2520621 res!1064985) b!2520616))

(assert (= (or b!2520617 b!2520616) bm!157103))

(assert (= (or b!2520618 b!2520621) bm!157105))

(assert (= (or b!2520613 bm!157105) bm!157104))

(declare-fun m!2875521 () Bool)

(assert (=> bm!157103 m!2875521))

(declare-fun m!2875523 () Bool)

(assert (=> b!2520614 m!2875523))

(declare-fun m!2875525 () Bool)

(assert (=> bm!157104 m!2875525))

(assert (=> d!717812 d!718066))

(assert (=> d!717812 d!717988))

(declare-fun d!718068 () Bool)

(assert (=> d!718068 (= (isEmpty!16933 (tail!4031 (_2!17298 lt!899442))) ((_ is Nil!29470) (tail!4031 (_2!17298 lt!899442))))))

(assert (=> b!2519898 d!718068))

(assert (=> b!2519898 d!718024))

(assert (=> b!2519900 d!717922))

(declare-fun b!2520622 () Bool)

(declare-fun e!1596370 () Regex!7505)

(assert (=> b!2520622 (= e!1596370 (ite (= c!14016 (c!401811 (ite c!401829 (regOne!15523 (reg!7834 r!27340)) (regTwo!15522 (reg!7834 r!27340))))) EmptyExpr!7505 EmptyLang!7505))))

(declare-fun call!157113 () Regex!7505)

(declare-fun e!1596369 () Regex!7505)

(declare-fun call!157111 () Regex!7505)

(declare-fun b!2520623 () Bool)

(assert (=> b!2520623 (= e!1596369 (Union!7505 (Concat!12201 call!157111 (regTwo!15522 (ite c!401829 (regOne!15523 (reg!7834 r!27340)) (regTwo!15522 (reg!7834 r!27340))))) call!157113))))

(declare-fun call!157112 () Regex!7505)

(declare-fun c!402050 () Bool)

(declare-fun bm!157106 () Bool)

(declare-fun c!402049 () Bool)

(assert (=> bm!157106 (= call!157112 (derivativeStep!2074 (ite c!402050 (regTwo!15523 (ite c!401829 (regOne!15523 (reg!7834 r!27340)) (regTwo!15522 (reg!7834 r!27340)))) (ite c!402049 (reg!7834 (ite c!401829 (regOne!15523 (reg!7834 r!27340)) (regTwo!15522 (reg!7834 r!27340)))) (regOne!15522 (ite c!401829 (regOne!15523 (reg!7834 r!27340)) (regTwo!15522 (reg!7834 r!27340)))))) c!14016))))

(declare-fun e!1596367 () Regex!7505)

(declare-fun call!157114 () Regex!7505)

(declare-fun b!2520624 () Bool)

(assert (=> b!2520624 (= e!1596367 (Concat!12201 call!157114 (ite c!401829 (regOne!15523 (reg!7834 r!27340)) (regTwo!15522 (reg!7834 r!27340)))))))

(declare-fun b!2520625 () Bool)

(declare-fun e!1596371 () Regex!7505)

(assert (=> b!2520625 (= e!1596371 EmptyLang!7505)))

(declare-fun b!2520626 () Bool)

(assert (=> b!2520626 (= e!1596369 (Union!7505 (Concat!12201 call!157111 (regTwo!15522 (ite c!401829 (regOne!15523 (reg!7834 r!27340)) (regTwo!15522 (reg!7834 r!27340))))) EmptyLang!7505))))

(declare-fun b!2520627 () Bool)

(assert (=> b!2520627 (= c!402050 ((_ is Union!7505) (ite c!401829 (regOne!15523 (reg!7834 r!27340)) (regTwo!15522 (reg!7834 r!27340)))))))

(declare-fun e!1596368 () Regex!7505)

(assert (=> b!2520627 (= e!1596370 e!1596368)))

(declare-fun b!2520628 () Bool)

(assert (=> b!2520628 (= e!1596371 e!1596370)))

(declare-fun c!402053 () Bool)

(assert (=> b!2520628 (= c!402053 ((_ is ElementMatch!7505) (ite c!401829 (regOne!15523 (reg!7834 r!27340)) (regTwo!15522 (reg!7834 r!27340)))))))

(declare-fun b!2520629 () Bool)

(declare-fun c!402052 () Bool)

(assert (=> b!2520629 (= c!402052 (nullable!2422 (regOne!15522 (ite c!401829 (regOne!15523 (reg!7834 r!27340)) (regTwo!15522 (reg!7834 r!27340))))))))

(assert (=> b!2520629 (= e!1596367 e!1596369)))

(declare-fun b!2520630 () Bool)

(assert (=> b!2520630 (= e!1596368 (Union!7505 call!157113 call!157112))))

(declare-fun b!2520631 () Bool)

(assert (=> b!2520631 (= e!1596368 e!1596367)))

(assert (=> b!2520631 (= c!402049 ((_ is Star!7505) (ite c!401829 (regOne!15523 (reg!7834 r!27340)) (regTwo!15522 (reg!7834 r!27340)))))))

(declare-fun bm!157107 () Bool)

(assert (=> bm!157107 (= call!157113 (derivativeStep!2074 (ite c!402050 (regOne!15523 (ite c!401829 (regOne!15523 (reg!7834 r!27340)) (regTwo!15522 (reg!7834 r!27340)))) (regTwo!15522 (ite c!401829 (regOne!15523 (reg!7834 r!27340)) (regTwo!15522 (reg!7834 r!27340))))) c!14016))))

(declare-fun d!718070 () Bool)

(declare-fun lt!899533 () Regex!7505)

(assert (=> d!718070 (validRegex!3131 lt!899533)))

(assert (=> d!718070 (= lt!899533 e!1596371)))

(declare-fun c!402051 () Bool)

(assert (=> d!718070 (= c!402051 (or ((_ is EmptyExpr!7505) (ite c!401829 (regOne!15523 (reg!7834 r!27340)) (regTwo!15522 (reg!7834 r!27340)))) ((_ is EmptyLang!7505) (ite c!401829 (regOne!15523 (reg!7834 r!27340)) (regTwo!15522 (reg!7834 r!27340))))))))

(assert (=> d!718070 (validRegex!3131 (ite c!401829 (regOne!15523 (reg!7834 r!27340)) (regTwo!15522 (reg!7834 r!27340))))))

(assert (=> d!718070 (= (derivativeStep!2074 (ite c!401829 (regOne!15523 (reg!7834 r!27340)) (regTwo!15522 (reg!7834 r!27340))) c!14016) lt!899533)))

(declare-fun bm!157108 () Bool)

(assert (=> bm!157108 (= call!157111 call!157114)))

(declare-fun bm!157109 () Bool)

(assert (=> bm!157109 (= call!157114 call!157112)))

(assert (= (and d!718070 c!402051) b!2520625))

(assert (= (and d!718070 (not c!402051)) b!2520628))

(assert (= (and b!2520628 c!402053) b!2520622))

(assert (= (and b!2520628 (not c!402053)) b!2520627))

(assert (= (and b!2520627 c!402050) b!2520630))

(assert (= (and b!2520627 (not c!402050)) b!2520631))

(assert (= (and b!2520631 c!402049) b!2520624))

(assert (= (and b!2520631 (not c!402049)) b!2520629))

(assert (= (and b!2520629 c!402052) b!2520623))

(assert (= (and b!2520629 (not c!402052)) b!2520626))

(assert (= (or b!2520623 b!2520626) bm!157108))

(assert (= (or b!2520624 bm!157108) bm!157109))

(assert (= (or b!2520630 bm!157109) bm!157106))

(assert (= (or b!2520630 b!2520623) bm!157107))

(declare-fun m!2875527 () Bool)

(assert (=> bm!157106 m!2875527))

(declare-fun m!2875529 () Bool)

(assert (=> b!2520629 m!2875529))

(declare-fun m!2875531 () Bool)

(assert (=> bm!157107 m!2875531))

(declare-fun m!2875533 () Bool)

(assert (=> d!718070 m!2875533))

(declare-fun m!2875535 () Bool)

(assert (=> d!718070 m!2875535))

(assert (=> bm!156946 d!718070))

(declare-fun d!718072 () Bool)

(assert (=> d!718072 (= (isEmpty!16933 (Cons!29470 c!14016 (_1!17298 lt!899442))) ((_ is Nil!29470) (Cons!29470 c!14016 (_1!17298 lt!899442))))))

(assert (=> bm!156953 d!718072))

(declare-fun d!718074 () Bool)

(declare-fun lt!899534 () Regex!7505)

(assert (=> d!718074 (validRegex!3131 lt!899534)))

(declare-fun e!1596372 () Regex!7505)

(assert (=> d!718074 (= lt!899534 e!1596372)))

(declare-fun c!402054 () Bool)

(assert (=> d!718074 (= c!402054 ((_ is Cons!29470) (t!211269 tl!4068)))))

(assert (=> d!718074 (validRegex!3131 (derivativeStep!2074 lt!899435 (h!34890 tl!4068)))))

(assert (=> d!718074 (= (derivative!200 (derivativeStep!2074 lt!899435 (h!34890 tl!4068)) (t!211269 tl!4068)) lt!899534)))

(declare-fun b!2520632 () Bool)

(assert (=> b!2520632 (= e!1596372 (derivative!200 (derivativeStep!2074 (derivativeStep!2074 lt!899435 (h!34890 tl!4068)) (h!34890 (t!211269 tl!4068))) (t!211269 (t!211269 tl!4068))))))

(declare-fun b!2520633 () Bool)

(assert (=> b!2520633 (= e!1596372 (derivativeStep!2074 lt!899435 (h!34890 tl!4068)))))

(assert (= (and d!718074 c!402054) b!2520632))

(assert (= (and d!718074 (not c!402054)) b!2520633))

(declare-fun m!2875537 () Bool)

(assert (=> d!718074 m!2875537))

(assert (=> d!718074 m!2875017))

(declare-fun m!2875539 () Bool)

(assert (=> d!718074 m!2875539))

(assert (=> b!2520632 m!2875017))

(declare-fun m!2875541 () Bool)

(assert (=> b!2520632 m!2875541))

(assert (=> b!2520632 m!2875541))

(declare-fun m!2875543 () Bool)

(assert (=> b!2520632 m!2875543))

(assert (=> b!2519906 d!718074))

(declare-fun b!2520634 () Bool)

(declare-fun e!1596376 () Regex!7505)

(assert (=> b!2520634 (= e!1596376 (ite (= (h!34890 tl!4068) (c!401811 lt!899435)) EmptyExpr!7505 EmptyLang!7505))))

(declare-fun call!157117 () Regex!7505)

(declare-fun e!1596375 () Regex!7505)

(declare-fun b!2520635 () Bool)

(declare-fun call!157115 () Regex!7505)

(assert (=> b!2520635 (= e!1596375 (Union!7505 (Concat!12201 call!157115 (regTwo!15522 lt!899435)) call!157117))))

(declare-fun bm!157110 () Bool)

(declare-fun call!157116 () Regex!7505)

(declare-fun c!402055 () Bool)

(declare-fun c!402056 () Bool)

(assert (=> bm!157110 (= call!157116 (derivativeStep!2074 (ite c!402056 (regTwo!15523 lt!899435) (ite c!402055 (reg!7834 lt!899435) (regOne!15522 lt!899435))) (h!34890 tl!4068)))))

(declare-fun b!2520636 () Bool)

(declare-fun e!1596373 () Regex!7505)

(declare-fun call!157118 () Regex!7505)

(assert (=> b!2520636 (= e!1596373 (Concat!12201 call!157118 lt!899435))))

(declare-fun b!2520637 () Bool)

(declare-fun e!1596377 () Regex!7505)

(assert (=> b!2520637 (= e!1596377 EmptyLang!7505)))

(declare-fun b!2520638 () Bool)

(assert (=> b!2520638 (= e!1596375 (Union!7505 (Concat!12201 call!157115 (regTwo!15522 lt!899435)) EmptyLang!7505))))

(declare-fun b!2520639 () Bool)

(assert (=> b!2520639 (= c!402056 ((_ is Union!7505) lt!899435))))

(declare-fun e!1596374 () Regex!7505)

(assert (=> b!2520639 (= e!1596376 e!1596374)))

(declare-fun b!2520640 () Bool)

(assert (=> b!2520640 (= e!1596377 e!1596376)))

(declare-fun c!402059 () Bool)

(assert (=> b!2520640 (= c!402059 ((_ is ElementMatch!7505) lt!899435))))

(declare-fun b!2520641 () Bool)

(declare-fun c!402058 () Bool)

(assert (=> b!2520641 (= c!402058 (nullable!2422 (regOne!15522 lt!899435)))))

(assert (=> b!2520641 (= e!1596373 e!1596375)))

(declare-fun b!2520642 () Bool)

(assert (=> b!2520642 (= e!1596374 (Union!7505 call!157117 call!157116))))

(declare-fun b!2520643 () Bool)

(assert (=> b!2520643 (= e!1596374 e!1596373)))

(assert (=> b!2520643 (= c!402055 ((_ is Star!7505) lt!899435))))

(declare-fun bm!157111 () Bool)

(assert (=> bm!157111 (= call!157117 (derivativeStep!2074 (ite c!402056 (regOne!15523 lt!899435) (regTwo!15522 lt!899435)) (h!34890 tl!4068)))))

(declare-fun d!718076 () Bool)

(declare-fun lt!899535 () Regex!7505)

(assert (=> d!718076 (validRegex!3131 lt!899535)))

(assert (=> d!718076 (= lt!899535 e!1596377)))

(declare-fun c!402057 () Bool)

(assert (=> d!718076 (= c!402057 (or ((_ is EmptyExpr!7505) lt!899435) ((_ is EmptyLang!7505) lt!899435)))))

(assert (=> d!718076 (validRegex!3131 lt!899435)))

(assert (=> d!718076 (= (derivativeStep!2074 lt!899435 (h!34890 tl!4068)) lt!899535)))

(declare-fun bm!157112 () Bool)

(assert (=> bm!157112 (= call!157115 call!157118)))

(declare-fun bm!157113 () Bool)

(assert (=> bm!157113 (= call!157118 call!157116)))

(assert (= (and d!718076 c!402057) b!2520637))

(assert (= (and d!718076 (not c!402057)) b!2520640))

(assert (= (and b!2520640 c!402059) b!2520634))

(assert (= (and b!2520640 (not c!402059)) b!2520639))

(assert (= (and b!2520639 c!402056) b!2520642))

(assert (= (and b!2520639 (not c!402056)) b!2520643))

(assert (= (and b!2520643 c!402055) b!2520636))

(assert (= (and b!2520643 (not c!402055)) b!2520641))

(assert (= (and b!2520641 c!402058) b!2520635))

(assert (= (and b!2520641 (not c!402058)) b!2520638))

(assert (= (or b!2520635 b!2520638) bm!157112))

(assert (= (or b!2520636 bm!157112) bm!157113))

(assert (= (or b!2520642 bm!157113) bm!157110))

(assert (= (or b!2520642 b!2520635) bm!157111))

(declare-fun m!2875545 () Bool)

(assert (=> bm!157110 m!2875545))

(declare-fun m!2875547 () Bool)

(assert (=> b!2520641 m!2875547))

(declare-fun m!2875549 () Bool)

(assert (=> bm!157111 m!2875549))

(declare-fun m!2875551 () Bool)

(assert (=> d!718076 m!2875551))

(assert (=> d!718076 m!2874961))

(assert (=> b!2519906 d!718076))

(assert (=> b!2519947 d!717920))

(assert (=> d!717850 d!718032))

(declare-fun d!718080 () Bool)

(declare-fun e!1596385 () Bool)

(assert (=> d!718080 e!1596385))

(declare-fun c!402067 () Bool)

(assert (=> d!718080 (= c!402067 ((_ is EmptyExpr!7505) lt!899440))))

(declare-fun lt!899537 () Bool)

(declare-fun e!1596387 () Bool)

(assert (=> d!718080 (= lt!899537 e!1596387)))

(declare-fun c!402065 () Bool)

(assert (=> d!718080 (= c!402065 (isEmpty!16933 Nil!29470))))

(assert (=> d!718080 (validRegex!3131 lt!899440)))

(assert (=> d!718080 (= (matchR!3492 lt!899440 Nil!29470) lt!899537)))

(declare-fun b!2520654 () Bool)

(declare-fun res!1064988 () Bool)

(declare-fun e!1596386 () Bool)

(assert (=> b!2520654 (=> res!1064988 e!1596386)))

(assert (=> b!2520654 (= res!1064988 (not (isEmpty!16933 (tail!4031 Nil!29470))))))

(declare-fun b!2520655 () Bool)

(assert (=> b!2520655 (= e!1596387 (matchR!3492 (derivativeStep!2074 lt!899440 (head!5754 Nil!29470)) (tail!4031 Nil!29470)))))

(declare-fun b!2520656 () Bool)

(declare-fun res!1064986 () Bool)

(declare-fun e!1596389 () Bool)

(assert (=> b!2520656 (=> res!1064986 e!1596389)))

(assert (=> b!2520656 (= res!1064986 (not ((_ is ElementMatch!7505) lt!899440)))))

(declare-fun e!1596388 () Bool)

(assert (=> b!2520656 (= e!1596388 e!1596389)))

(declare-fun b!2520657 () Bool)

(declare-fun call!157123 () Bool)

(assert (=> b!2520657 (= e!1596385 (= lt!899537 call!157123))))

(declare-fun b!2520658 () Bool)

(assert (=> b!2520658 (= e!1596387 (nullable!2422 lt!899440))))

(declare-fun bm!157118 () Bool)

(assert (=> bm!157118 (= call!157123 (isEmpty!16933 Nil!29470))))

(declare-fun b!2520659 () Bool)

(declare-fun res!1064987 () Bool)

(declare-fun e!1596384 () Bool)

(assert (=> b!2520659 (=> (not res!1064987) (not e!1596384))))

(assert (=> b!2520659 (= res!1064987 (not call!157123))))

(declare-fun b!2520660 () Bool)

(declare-fun res!1064992 () Bool)

(assert (=> b!2520660 (=> (not res!1064992) (not e!1596384))))

(assert (=> b!2520660 (= res!1064992 (isEmpty!16933 (tail!4031 Nil!29470)))))

(declare-fun b!2520661 () Bool)

(declare-fun res!1064993 () Bool)

(assert (=> b!2520661 (=> res!1064993 e!1596389)))

(assert (=> b!2520661 (= res!1064993 e!1596384)))

(declare-fun res!1064991 () Bool)

(assert (=> b!2520661 (=> (not res!1064991) (not e!1596384))))

(assert (=> b!2520661 (= res!1064991 lt!899537)))

(declare-fun b!2520662 () Bool)

(assert (=> b!2520662 (= e!1596384 (= (head!5754 Nil!29470) (c!401811 lt!899440)))))

(declare-fun b!2520663 () Bool)

(declare-fun e!1596383 () Bool)

(assert (=> b!2520663 (= e!1596389 e!1596383)))

(declare-fun res!1064989 () Bool)

(assert (=> b!2520663 (=> (not res!1064989) (not e!1596383))))

(assert (=> b!2520663 (= res!1064989 (not lt!899537))))

(declare-fun b!2520664 () Bool)

(assert (=> b!2520664 (= e!1596383 e!1596386)))

(declare-fun res!1064990 () Bool)

(assert (=> b!2520664 (=> res!1064990 e!1596386)))

(assert (=> b!2520664 (= res!1064990 call!157123)))

(declare-fun b!2520665 () Bool)

(assert (=> b!2520665 (= e!1596386 (not (= (head!5754 Nil!29470) (c!401811 lt!899440))))))

(declare-fun b!2520666 () Bool)

(assert (=> b!2520666 (= e!1596388 (not lt!899537))))

(declare-fun b!2520667 () Bool)

(assert (=> b!2520667 (= e!1596385 e!1596388)))

(declare-fun c!402066 () Bool)

(assert (=> b!2520667 (= c!402066 ((_ is EmptyLang!7505) lt!899440))))

(assert (= (and d!718080 c!402065) b!2520658))

(assert (= (and d!718080 (not c!402065)) b!2520655))

(assert (= (and d!718080 c!402067) b!2520657))

(assert (= (and d!718080 (not c!402067)) b!2520667))

(assert (= (and b!2520667 c!402066) b!2520666))

(assert (= (and b!2520667 (not c!402066)) b!2520656))

(assert (= (and b!2520656 (not res!1064986)) b!2520661))

(assert (= (and b!2520661 res!1064991) b!2520659))

(assert (= (and b!2520659 res!1064987) b!2520660))

(assert (= (and b!2520660 res!1064992) b!2520662))

(assert (= (and b!2520661 (not res!1064993)) b!2520663))

(assert (= (and b!2520663 res!1064989) b!2520664))

(assert (= (and b!2520664 (not res!1064990)) b!2520654))

(assert (= (and b!2520654 (not res!1064988)) b!2520665))

(assert (= (or b!2520657 b!2520659 b!2520664) bm!157118))

(assert (=> d!718080 m!2874945))

(assert (=> d!718080 m!2874889))

(assert (=> b!2520662 m!2874949))

(assert (=> bm!157118 m!2874945))

(assert (=> b!2520660 m!2874951))

(assert (=> b!2520660 m!2874951))

(assert (=> b!2520660 m!2874953))

(assert (=> b!2520654 m!2874951))

(assert (=> b!2520654 m!2874951))

(assert (=> b!2520654 m!2874953))

(assert (=> b!2520655 m!2874949))

(assert (=> b!2520655 m!2874949))

(declare-fun m!2875563 () Bool)

(assert (=> b!2520655 m!2875563))

(assert (=> b!2520655 m!2874951))

(assert (=> b!2520655 m!2875563))

(assert (=> b!2520655 m!2874951))

(declare-fun m!2875565 () Bool)

(assert (=> b!2520655 m!2875565))

(assert (=> b!2520658 m!2875291))

(assert (=> b!2520665 m!2874949))

(assert (=> d!717850 d!718080))

(assert (=> d!717850 d!717988))

(declare-fun d!718084 () Bool)

(assert (=> d!718084 (= (isEmpty!16933 (tail!4031 (Cons!29470 c!14016 (_1!17298 lt!899442)))) ((_ is Nil!29470) (tail!4031 (Cons!29470 c!14016 (_1!17298 lt!899442)))))))

(assert (=> b!2519864 d!718084))

(assert (=> b!2519864 d!718054))

(assert (=> b!2519866 d!717958))

(declare-fun d!718086 () Bool)

(declare-fun e!1596397 () Bool)

(assert (=> d!718086 e!1596397))

(declare-fun res!1065002 () Bool)

(assert (=> d!718086 (=> (not res!1065002) (not e!1596397))))

(declare-fun lt!899539 () List!29570)

(assert (=> d!718086 (= res!1065002 (= (content!4034 lt!899539) ((_ map or) (content!4034 (_1!17298 (get!9207 lt!899502))) (content!4034 (_2!17298 (get!9207 lt!899502))))))))

(declare-fun e!1596398 () List!29570)

(assert (=> d!718086 (= lt!899539 e!1596398)))

(declare-fun c!402071 () Bool)

(assert (=> d!718086 (= c!402071 ((_ is Nil!29470) (_1!17298 (get!9207 lt!899502))))))

(assert (=> d!718086 (= (++!7226 (_1!17298 (get!9207 lt!899502)) (_2!17298 (get!9207 lt!899502))) lt!899539)))

(declare-fun b!2520683 () Bool)

(assert (=> b!2520683 (= e!1596398 (Cons!29470 (h!34890 (_1!17298 (get!9207 lt!899502))) (++!7226 (t!211269 (_1!17298 (get!9207 lt!899502))) (_2!17298 (get!9207 lt!899502)))))))

(declare-fun b!2520685 () Bool)

(assert (=> b!2520685 (= e!1596397 (or (not (= (_2!17298 (get!9207 lt!899502)) Nil!29470)) (= lt!899539 (_1!17298 (get!9207 lt!899502)))))))

(declare-fun b!2520682 () Bool)

(assert (=> b!2520682 (= e!1596398 (_2!17298 (get!9207 lt!899502)))))

(declare-fun b!2520684 () Bool)

(declare-fun res!1065003 () Bool)

(assert (=> b!2520684 (=> (not res!1065003) (not e!1596397))))

(assert (=> b!2520684 (= res!1065003 (= (size!22916 lt!899539) (+ (size!22916 (_1!17298 (get!9207 lt!899502))) (size!22916 (_2!17298 (get!9207 lt!899502))))))))

(assert (= (and d!718086 c!402071) b!2520682))

(assert (= (and d!718086 (not c!402071)) b!2520683))

(assert (= (and d!718086 res!1065002) b!2520684))

(assert (= (and b!2520684 res!1065003) b!2520685))

(declare-fun m!2875575 () Bool)

(assert (=> d!718086 m!2875575))

(declare-fun m!2875579 () Bool)

(assert (=> d!718086 m!2875579))

(declare-fun m!2875583 () Bool)

(assert (=> d!718086 m!2875583))

(declare-fun m!2875585 () Bool)

(assert (=> b!2520683 m!2875585))

(declare-fun m!2875587 () Bool)

(assert (=> b!2520684 m!2875587))

(declare-fun m!2875589 () Bool)

(assert (=> b!2520684 m!2875589))

(declare-fun m!2875591 () Bool)

(assert (=> b!2520684 m!2875591))

(assert (=> b!2520149 d!718086))

(assert (=> b!2520149 d!717956))

(declare-fun b!2520686 () Bool)

(declare-fun e!1596400 () Bool)

(declare-fun call!157125 () Bool)

(assert (=> b!2520686 (= e!1596400 call!157125)))

(declare-fun bm!157120 () Bool)

(declare-fun call!157126 () Bool)

(declare-fun c!402072 () Bool)

(assert (=> bm!157120 (= call!157126 (validRegex!3131 (ite c!402072 (regOne!15523 (ite c!401883 (reg!7834 r!27340) (ite c!401882 (regTwo!15523 r!27340) (regOne!15522 r!27340)))) (regTwo!15522 (ite c!401883 (reg!7834 r!27340) (ite c!401882 (regTwo!15523 r!27340) (regOne!15522 r!27340)))))))))

(declare-fun b!2520687 () Bool)

(declare-fun e!1596401 () Bool)

(assert (=> b!2520687 (= e!1596401 e!1596400)))

(declare-fun res!1065007 () Bool)

(assert (=> b!2520687 (= res!1065007 (not (nullable!2422 (reg!7834 (ite c!401883 (reg!7834 r!27340) (ite c!401882 (regTwo!15523 r!27340) (regOne!15522 r!27340)))))))))

(assert (=> b!2520687 (=> (not res!1065007) (not e!1596400))))

(declare-fun b!2520688 () Bool)

(declare-fun e!1596403 () Bool)

(assert (=> b!2520688 (= e!1596403 e!1596401)))

(declare-fun c!402073 () Bool)

(assert (=> b!2520688 (= c!402073 ((_ is Star!7505) (ite c!401883 (reg!7834 r!27340) (ite c!401882 (regTwo!15523 r!27340) (regOne!15522 r!27340)))))))

(declare-fun b!2520689 () Bool)

(declare-fun e!1596402 () Bool)

(assert (=> b!2520689 (= e!1596402 call!157126)))

(declare-fun d!718088 () Bool)

(declare-fun res!1065004 () Bool)

(assert (=> d!718088 (=> res!1065004 e!1596403)))

(assert (=> d!718088 (= res!1065004 ((_ is ElementMatch!7505) (ite c!401883 (reg!7834 r!27340) (ite c!401882 (regTwo!15523 r!27340) (regOne!15522 r!27340)))))))

(assert (=> d!718088 (= (validRegex!3131 (ite c!401883 (reg!7834 r!27340) (ite c!401882 (regTwo!15523 r!27340) (regOne!15522 r!27340)))) e!1596403)))

(declare-fun b!2520690 () Bool)

(declare-fun res!1065005 () Bool)

(declare-fun e!1596399 () Bool)

(assert (=> b!2520690 (=> (not res!1065005) (not e!1596399))))

(assert (=> b!2520690 (= res!1065005 call!157126)))

(declare-fun e!1596405 () Bool)

(assert (=> b!2520690 (= e!1596405 e!1596399)))

(declare-fun bm!157121 () Bool)

(assert (=> bm!157121 (= call!157125 (validRegex!3131 (ite c!402073 (reg!7834 (ite c!401883 (reg!7834 r!27340) (ite c!401882 (regTwo!15523 r!27340) (regOne!15522 r!27340)))) (ite c!402072 (regTwo!15523 (ite c!401883 (reg!7834 r!27340) (ite c!401882 (regTwo!15523 r!27340) (regOne!15522 r!27340)))) (regOne!15522 (ite c!401883 (reg!7834 r!27340) (ite c!401882 (regTwo!15523 r!27340) (regOne!15522 r!27340))))))))))

(declare-fun b!2520691 () Bool)

(declare-fun call!157127 () Bool)

(assert (=> b!2520691 (= e!1596399 call!157127)))

(declare-fun bm!157122 () Bool)

(assert (=> bm!157122 (= call!157127 call!157125)))

(declare-fun b!2520692 () Bool)

(declare-fun res!1065006 () Bool)

(declare-fun e!1596404 () Bool)

(assert (=> b!2520692 (=> res!1065006 e!1596404)))

(assert (=> b!2520692 (= res!1065006 (not ((_ is Concat!12201) (ite c!401883 (reg!7834 r!27340) (ite c!401882 (regTwo!15523 r!27340) (regOne!15522 r!27340))))))))

(assert (=> b!2520692 (= e!1596405 e!1596404)))

(declare-fun b!2520693 () Bool)

(assert (=> b!2520693 (= e!1596401 e!1596405)))

(assert (=> b!2520693 (= c!402072 ((_ is Union!7505) (ite c!401883 (reg!7834 r!27340) (ite c!401882 (regTwo!15523 r!27340) (regOne!15522 r!27340)))))))

(declare-fun b!2520694 () Bool)

(assert (=> b!2520694 (= e!1596404 e!1596402)))

(declare-fun res!1065008 () Bool)

(assert (=> b!2520694 (=> (not res!1065008) (not e!1596402))))

(assert (=> b!2520694 (= res!1065008 call!157127)))

(assert (= (and d!718088 (not res!1065004)) b!2520688))

(assert (= (and b!2520688 c!402073) b!2520687))

(assert (= (and b!2520688 (not c!402073)) b!2520693))

(assert (= (and b!2520687 res!1065007) b!2520686))

(assert (= (and b!2520693 c!402072) b!2520690))

(assert (= (and b!2520693 (not c!402072)) b!2520692))

(assert (= (and b!2520690 res!1065005) b!2520691))

(assert (= (and b!2520692 (not res!1065006)) b!2520694))

(assert (= (and b!2520694 res!1065008) b!2520689))

(assert (= (or b!2520690 b!2520689) bm!157120))

(assert (= (or b!2520691 b!2520694) bm!157122))

(assert (= (or b!2520686 bm!157122) bm!157121))

(declare-fun m!2875593 () Bool)

(assert (=> bm!157120 m!2875593))

(declare-fun m!2875595 () Bool)

(assert (=> b!2520687 m!2875595))

(declare-fun m!2875597 () Bool)

(assert (=> bm!157121 m!2875597))

(assert (=> bm!156978 d!718088))

(assert (=> b!2519855 d!717930))

(declare-fun e!1596416 () Regex!7505)

(declare-fun b!2520709 () Bool)

(assert (=> b!2520709 (= e!1596416 (ite (= c!14016 (c!401811 (ite c!401869 (regTwo!15523 r!27340) (ite c!401868 (reg!7834 r!27340) (regOne!15522 r!27340))))) EmptyExpr!7505 EmptyLang!7505))))

(declare-fun call!157131 () Regex!7505)

(declare-fun call!157129 () Regex!7505)

(declare-fun b!2520710 () Bool)

(declare-fun e!1596415 () Regex!7505)

(assert (=> b!2520710 (= e!1596415 (Union!7505 (Concat!12201 call!157129 (regTwo!15522 (ite c!401869 (regTwo!15523 r!27340) (ite c!401868 (reg!7834 r!27340) (regOne!15522 r!27340))))) call!157131))))

(declare-fun c!402077 () Bool)

(declare-fun call!157130 () Regex!7505)

(declare-fun c!402078 () Bool)

(declare-fun bm!157124 () Bool)

(assert (=> bm!157124 (= call!157130 (derivativeStep!2074 (ite c!402078 (regTwo!15523 (ite c!401869 (regTwo!15523 r!27340) (ite c!401868 (reg!7834 r!27340) (regOne!15522 r!27340)))) (ite c!402077 (reg!7834 (ite c!401869 (regTwo!15523 r!27340) (ite c!401868 (reg!7834 r!27340) (regOne!15522 r!27340)))) (regOne!15522 (ite c!401869 (regTwo!15523 r!27340) (ite c!401868 (reg!7834 r!27340) (regOne!15522 r!27340)))))) c!14016))))

(declare-fun e!1596413 () Regex!7505)

(declare-fun call!157132 () Regex!7505)

(declare-fun b!2520711 () Bool)

(assert (=> b!2520711 (= e!1596413 (Concat!12201 call!157132 (ite c!401869 (regTwo!15523 r!27340) (ite c!401868 (reg!7834 r!27340) (regOne!15522 r!27340)))))))

(declare-fun b!2520712 () Bool)

(declare-fun e!1596417 () Regex!7505)

(assert (=> b!2520712 (= e!1596417 EmptyLang!7505)))

(declare-fun b!2520713 () Bool)

(assert (=> b!2520713 (= e!1596415 (Union!7505 (Concat!12201 call!157129 (regTwo!15522 (ite c!401869 (regTwo!15523 r!27340) (ite c!401868 (reg!7834 r!27340) (regOne!15522 r!27340))))) EmptyLang!7505))))

(declare-fun b!2520714 () Bool)

(assert (=> b!2520714 (= c!402078 ((_ is Union!7505) (ite c!401869 (regTwo!15523 r!27340) (ite c!401868 (reg!7834 r!27340) (regOne!15522 r!27340)))))))

(declare-fun e!1596414 () Regex!7505)

(assert (=> b!2520714 (= e!1596416 e!1596414)))

(declare-fun b!2520715 () Bool)

(assert (=> b!2520715 (= e!1596417 e!1596416)))

(declare-fun c!402081 () Bool)

(assert (=> b!2520715 (= c!402081 ((_ is ElementMatch!7505) (ite c!401869 (regTwo!15523 r!27340) (ite c!401868 (reg!7834 r!27340) (regOne!15522 r!27340)))))))

(declare-fun b!2520716 () Bool)

(declare-fun c!402080 () Bool)

(assert (=> b!2520716 (= c!402080 (nullable!2422 (regOne!15522 (ite c!401869 (regTwo!15523 r!27340) (ite c!401868 (reg!7834 r!27340) (regOne!15522 r!27340))))))))

(assert (=> b!2520716 (= e!1596413 e!1596415)))

(declare-fun b!2520717 () Bool)

(assert (=> b!2520717 (= e!1596414 (Union!7505 call!157131 call!157130))))

(declare-fun b!2520718 () Bool)

(assert (=> b!2520718 (= e!1596414 e!1596413)))

(assert (=> b!2520718 (= c!402077 ((_ is Star!7505) (ite c!401869 (regTwo!15523 r!27340) (ite c!401868 (reg!7834 r!27340) (regOne!15522 r!27340)))))))

(declare-fun bm!157125 () Bool)

(assert (=> bm!157125 (= call!157131 (derivativeStep!2074 (ite c!402078 (regOne!15523 (ite c!401869 (regTwo!15523 r!27340) (ite c!401868 (reg!7834 r!27340) (regOne!15522 r!27340)))) (regTwo!15522 (ite c!401869 (regTwo!15523 r!27340) (ite c!401868 (reg!7834 r!27340) (regOne!15522 r!27340))))) c!14016))))

(declare-fun d!718092 () Bool)

(declare-fun lt!899541 () Regex!7505)

(assert (=> d!718092 (validRegex!3131 lt!899541)))

(assert (=> d!718092 (= lt!899541 e!1596417)))

(declare-fun c!402079 () Bool)

(assert (=> d!718092 (= c!402079 (or ((_ is EmptyExpr!7505) (ite c!401869 (regTwo!15523 r!27340) (ite c!401868 (reg!7834 r!27340) (regOne!15522 r!27340)))) ((_ is EmptyLang!7505) (ite c!401869 (regTwo!15523 r!27340) (ite c!401868 (reg!7834 r!27340) (regOne!15522 r!27340))))))))

(assert (=> d!718092 (validRegex!3131 (ite c!401869 (regTwo!15523 r!27340) (ite c!401868 (reg!7834 r!27340) (regOne!15522 r!27340))))))

(assert (=> d!718092 (= (derivativeStep!2074 (ite c!401869 (regTwo!15523 r!27340) (ite c!401868 (reg!7834 r!27340) (regOne!15522 r!27340))) c!14016) lt!899541)))

(declare-fun bm!157126 () Bool)

(assert (=> bm!157126 (= call!157129 call!157132)))

(declare-fun bm!157127 () Bool)

(assert (=> bm!157127 (= call!157132 call!157130)))

(assert (= (and d!718092 c!402079) b!2520712))

(assert (= (and d!718092 (not c!402079)) b!2520715))

(assert (= (and b!2520715 c!402081) b!2520709))

(assert (= (and b!2520715 (not c!402081)) b!2520714))

(assert (= (and b!2520714 c!402078) b!2520717))

(assert (= (and b!2520714 (not c!402078)) b!2520718))

(assert (= (and b!2520718 c!402077) b!2520711))

(assert (= (and b!2520718 (not c!402077)) b!2520716))

(assert (= (and b!2520716 c!402080) b!2520710))

(assert (= (and b!2520716 (not c!402080)) b!2520713))

(assert (= (or b!2520710 b!2520713) bm!157126))

(assert (= (or b!2520711 bm!157126) bm!157127))

(assert (= (or b!2520717 bm!157127) bm!157124))

(assert (= (or b!2520717 b!2520710) bm!157125))

(declare-fun m!2875607 () Bool)

(assert (=> bm!157124 m!2875607))

(declare-fun m!2875609 () Bool)

(assert (=> b!2520716 m!2875609))

(declare-fun m!2875611 () Bool)

(assert (=> bm!157125 m!2875611))

(declare-fun m!2875613 () Bool)

(assert (=> d!718092 m!2875613))

(declare-fun m!2875615 () Bool)

(assert (=> d!718092 m!2875615))

(assert (=> bm!156963 d!718092))

(declare-fun d!718096 () Bool)

(declare-fun c!402084 () Bool)

(assert (=> d!718096 (= c!402084 ((_ is Nil!29470) lt!899483))))

(declare-fun e!1596420 () (InoxSet C!15168))

(assert (=> d!718096 (= (content!4034 lt!899483) e!1596420)))

(declare-fun b!2520723 () Bool)

(assert (=> b!2520723 (= e!1596420 ((as const (Array C!15168 Bool)) false))))

(declare-fun b!2520724 () Bool)

(assert (=> b!2520724 (= e!1596420 ((_ map or) (store ((as const (Array C!15168 Bool)) false) (h!34890 lt!899483) true) (content!4034 (t!211269 lt!899483))))))

(assert (= (and d!718096 c!402084) b!2520723))

(assert (= (and d!718096 (not c!402084)) b!2520724))

(declare-fun m!2875617 () Bool)

(assert (=> b!2520724 m!2875617))

(declare-fun m!2875619 () Bool)

(assert (=> b!2520724 m!2875619))

(assert (=> d!717848 d!718096))

(declare-fun d!718100 () Bool)

(declare-fun c!402088 () Bool)

(assert (=> d!718100 (= c!402088 ((_ is Nil!29470) (_1!17298 lt!899442)))))

(declare-fun e!1596428 () (InoxSet C!15168))

(assert (=> d!718100 (= (content!4034 (_1!17298 lt!899442)) e!1596428)))

(declare-fun b!2520739 () Bool)

(assert (=> b!2520739 (= e!1596428 ((as const (Array C!15168 Bool)) false))))

(declare-fun b!2520740 () Bool)

(assert (=> b!2520740 (= e!1596428 ((_ map or) (store ((as const (Array C!15168 Bool)) false) (h!34890 (_1!17298 lt!899442)) true) (content!4034 (t!211269 (_1!17298 lt!899442)))))))

(assert (= (and d!718100 c!402088) b!2520739))

(assert (= (and d!718100 (not c!402088)) b!2520740))

(declare-fun m!2875621 () Bool)

(assert (=> b!2520740 m!2875621))

(assert (=> b!2520740 m!2875257))

(assert (=> d!717848 d!718100))

(declare-fun d!718102 () Bool)

(declare-fun c!402089 () Bool)

(assert (=> d!718102 (= c!402089 ((_ is Nil!29470) (_2!17298 lt!899442)))))

(declare-fun e!1596429 () (InoxSet C!15168))

(assert (=> d!718102 (= (content!4034 (_2!17298 lt!899442)) e!1596429)))

(declare-fun b!2520741 () Bool)

(assert (=> b!2520741 (= e!1596429 ((as const (Array C!15168 Bool)) false))))

(declare-fun b!2520742 () Bool)

(assert (=> b!2520742 (= e!1596429 ((_ map or) (store ((as const (Array C!15168 Bool)) false) (h!34890 (_2!17298 lt!899442)) true) (content!4034 (t!211269 (_2!17298 lt!899442)))))))

(assert (= (and d!718102 c!402089) b!2520741))

(assert (= (and d!718102 (not c!402089)) b!2520742))

(declare-fun m!2875623 () Bool)

(assert (=> b!2520742 m!2875623))

(declare-fun m!2875625 () Bool)

(assert (=> b!2520742 m!2875625))

(assert (=> d!717848 d!718102))

(declare-fun d!718104 () Bool)

(declare-fun lt!899546 () Int)

(assert (=> d!718104 (>= lt!899546 0)))

(declare-fun e!1596437 () Int)

(assert (=> d!718104 (= lt!899546 e!1596437)))

(declare-fun c!402097 () Bool)

(assert (=> d!718104 (= c!402097 ((_ is Nil!29470) lt!899483))))

(assert (=> d!718104 (= (size!22916 lt!899483) lt!899546)))

(declare-fun b!2520757 () Bool)

(assert (=> b!2520757 (= e!1596437 0)))

(declare-fun b!2520758 () Bool)

(assert (=> b!2520758 (= e!1596437 (+ 1 (size!22916 (t!211269 lt!899483))))))

(assert (= (and d!718104 c!402097) b!2520757))

(assert (= (and d!718104 (not c!402097)) b!2520758))

(declare-fun m!2875647 () Bool)

(assert (=> b!2520758 m!2875647))

(assert (=> b!2520007 d!718104))

(declare-fun d!718110 () Bool)

(declare-fun lt!899548 () Int)

(assert (=> d!718110 (>= lt!899548 0)))

(declare-fun e!1596445 () Int)

(assert (=> d!718110 (= lt!899548 e!1596445)))

(declare-fun c!402101 () Bool)

(assert (=> d!718110 (= c!402101 ((_ is Nil!29470) (_1!17298 lt!899442)))))

(assert (=> d!718110 (= (size!22916 (_1!17298 lt!899442)) lt!899548)))

(declare-fun b!2520773 () Bool)

(assert (=> b!2520773 (= e!1596445 0)))

(declare-fun b!2520774 () Bool)

(assert (=> b!2520774 (= e!1596445 (+ 1 (size!22916 (t!211269 (_1!17298 lt!899442)))))))

(assert (= (and d!718110 c!402101) b!2520773))

(assert (= (and d!718110 (not c!402101)) b!2520774))

(assert (=> b!2520774 m!2875265))

(assert (=> b!2520007 d!718110))

(declare-fun d!718112 () Bool)

(declare-fun lt!899549 () Int)

(assert (=> d!718112 (>= lt!899549 0)))

(declare-fun e!1596446 () Int)

(assert (=> d!718112 (= lt!899549 e!1596446)))

(declare-fun c!402102 () Bool)

(assert (=> d!718112 (= c!402102 ((_ is Nil!29470) (_2!17298 lt!899442)))))

(assert (=> d!718112 (= (size!22916 (_2!17298 lt!899442)) lt!899549)))

(declare-fun b!2520775 () Bool)

(assert (=> b!2520775 (= e!1596446 0)))

(declare-fun b!2520776 () Bool)

(assert (=> b!2520776 (= e!1596446 (+ 1 (size!22916 (t!211269 (_2!17298 lt!899442)))))))

(assert (= (and d!718112 c!402102) b!2520775))

(assert (= (and d!718112 (not c!402102)) b!2520776))

(declare-fun m!2875649 () Bool)

(assert (=> b!2520776 m!2875649))

(assert (=> b!2520007 d!718112))

(assert (=> b!2519830 d!718034))

(assert (=> b!2519830 d!717948))

(declare-fun d!718114 () Bool)

(declare-fun e!1596449 () Bool)

(assert (=> d!718114 e!1596449))

(declare-fun c!402105 () Bool)

(assert (=> d!718114 (= c!402105 ((_ is EmptyExpr!7505) lt!899438))))

(declare-fun lt!899550 () Bool)

(declare-fun e!1596451 () Bool)

(assert (=> d!718114 (= lt!899550 e!1596451)))

(declare-fun c!402103 () Bool)

(assert (=> d!718114 (= c!402103 (isEmpty!16933 tl!4068))))

(assert (=> d!718114 (validRegex!3131 lt!899438)))

(assert (=> d!718114 (= (matchR!3492 lt!899438 tl!4068) lt!899550)))

(declare-fun b!2520777 () Bool)

(declare-fun res!1065035 () Bool)

(declare-fun e!1596450 () Bool)

(assert (=> b!2520777 (=> res!1065035 e!1596450)))

(assert (=> b!2520777 (= res!1065035 (not (isEmpty!16933 (tail!4031 tl!4068))))))

(declare-fun b!2520778 () Bool)

(assert (=> b!2520778 (= e!1596451 (matchR!3492 (derivativeStep!2074 lt!899438 (head!5754 tl!4068)) (tail!4031 tl!4068)))))

(declare-fun b!2520779 () Bool)

(declare-fun res!1065033 () Bool)

(declare-fun e!1596453 () Bool)

(assert (=> b!2520779 (=> res!1065033 e!1596453)))

(assert (=> b!2520779 (= res!1065033 (not ((_ is ElementMatch!7505) lt!899438)))))

(declare-fun e!1596452 () Bool)

(assert (=> b!2520779 (= e!1596452 e!1596453)))

(declare-fun b!2520780 () Bool)

(declare-fun call!157139 () Bool)

(assert (=> b!2520780 (= e!1596449 (= lt!899550 call!157139))))

(declare-fun b!2520781 () Bool)

(assert (=> b!2520781 (= e!1596451 (nullable!2422 lt!899438))))

(declare-fun bm!157134 () Bool)

(assert (=> bm!157134 (= call!157139 (isEmpty!16933 tl!4068))))

(declare-fun b!2520782 () Bool)

(declare-fun res!1065034 () Bool)

(declare-fun e!1596448 () Bool)

(assert (=> b!2520782 (=> (not res!1065034) (not e!1596448))))

(assert (=> b!2520782 (= res!1065034 (not call!157139))))

(declare-fun b!2520783 () Bool)

(declare-fun res!1065039 () Bool)

(assert (=> b!2520783 (=> (not res!1065039) (not e!1596448))))

(assert (=> b!2520783 (= res!1065039 (isEmpty!16933 (tail!4031 tl!4068)))))

(declare-fun b!2520784 () Bool)

(declare-fun res!1065040 () Bool)

(assert (=> b!2520784 (=> res!1065040 e!1596453)))

(assert (=> b!2520784 (= res!1065040 e!1596448)))

(declare-fun res!1065038 () Bool)

(assert (=> b!2520784 (=> (not res!1065038) (not e!1596448))))

(assert (=> b!2520784 (= res!1065038 lt!899550)))

(declare-fun b!2520785 () Bool)

(assert (=> b!2520785 (= e!1596448 (= (head!5754 tl!4068) (c!401811 lt!899438)))))

(declare-fun b!2520786 () Bool)

(declare-fun e!1596447 () Bool)

(assert (=> b!2520786 (= e!1596453 e!1596447)))

(declare-fun res!1065036 () Bool)

(assert (=> b!2520786 (=> (not res!1065036) (not e!1596447))))

(assert (=> b!2520786 (= res!1065036 (not lt!899550))))

(declare-fun b!2520787 () Bool)

(assert (=> b!2520787 (= e!1596447 e!1596450)))

(declare-fun res!1065037 () Bool)

(assert (=> b!2520787 (=> res!1065037 e!1596450)))

(assert (=> b!2520787 (= res!1065037 call!157139)))

(declare-fun b!2520788 () Bool)

(assert (=> b!2520788 (= e!1596450 (not (= (head!5754 tl!4068) (c!401811 lt!899438))))))

(declare-fun b!2520789 () Bool)

(assert (=> b!2520789 (= e!1596452 (not lt!899550))))

(declare-fun b!2520790 () Bool)

(assert (=> b!2520790 (= e!1596449 e!1596452)))

(declare-fun c!402104 () Bool)

(assert (=> b!2520790 (= c!402104 ((_ is EmptyLang!7505) lt!899438))))

(assert (= (and d!718114 c!402103) b!2520781))

(assert (= (and d!718114 (not c!402103)) b!2520778))

(assert (= (and d!718114 c!402105) b!2520780))

(assert (= (and d!718114 (not c!402105)) b!2520790))

(assert (= (and b!2520790 c!402104) b!2520789))

(assert (= (and b!2520790 (not c!402104)) b!2520779))

(assert (= (and b!2520779 (not res!1065033)) b!2520784))

(assert (= (and b!2520784 res!1065038) b!2520782))

(assert (= (and b!2520782 res!1065034) b!2520783))

(assert (= (and b!2520783 res!1065039) b!2520785))

(assert (= (and b!2520784 (not res!1065040)) b!2520786))

(assert (= (and b!2520786 res!1065036) b!2520787))

(assert (= (and b!2520787 (not res!1065037)) b!2520777))

(assert (= (and b!2520777 (not res!1065035)) b!2520788))

(assert (= (or b!2520780 b!2520782 b!2520787) bm!157134))

(assert (=> d!718114 m!2874959))

(assert (=> d!718114 m!2874999))

(assert (=> b!2520785 m!2874963))

(assert (=> bm!157134 m!2874959))

(assert (=> b!2520783 m!2874965))

(assert (=> b!2520783 m!2874965))

(assert (=> b!2520783 m!2874967))

(assert (=> b!2520777 m!2874965))

(assert (=> b!2520777 m!2874965))

(assert (=> b!2520777 m!2874967))

(assert (=> b!2520778 m!2874963))

(assert (=> b!2520778 m!2874963))

(declare-fun m!2875657 () Bool)

(assert (=> b!2520778 m!2875657))

(assert (=> b!2520778 m!2874965))

(assert (=> b!2520778 m!2875657))

(assert (=> b!2520778 m!2874965))

(declare-fun m!2875659 () Bool)

(assert (=> b!2520778 m!2875659))

(assert (=> b!2520781 m!2875011))

(assert (=> b!2520788 m!2874963))

(assert (=> b!2520151 d!718114))

(declare-fun d!718120 () Bool)

(declare-fun e!1596456 () Bool)

(assert (=> d!718120 e!1596456))

(declare-fun res!1065043 () Bool)

(assert (=> d!718120 (=> (not res!1065043) (not e!1596456))))

(declare-fun lt!899552 () List!29570)

(assert (=> d!718120 (= res!1065043 (= (content!4034 lt!899552) ((_ map or) (content!4034 (++!7226 Nil!29470 (Cons!29470 (h!34890 tl!4068) Nil!29470))) (content!4034 (t!211269 tl!4068)))))))

(declare-fun e!1596457 () List!29570)

(assert (=> d!718120 (= lt!899552 e!1596457)))

(declare-fun c!402107 () Bool)

(assert (=> d!718120 (= c!402107 ((_ is Nil!29470) (++!7226 Nil!29470 (Cons!29470 (h!34890 tl!4068) Nil!29470))))))

(assert (=> d!718120 (= (++!7226 (++!7226 Nil!29470 (Cons!29470 (h!34890 tl!4068) Nil!29470)) (t!211269 tl!4068)) lt!899552)))

(declare-fun b!2520796 () Bool)

(assert (=> b!2520796 (= e!1596457 (Cons!29470 (h!34890 (++!7226 Nil!29470 (Cons!29470 (h!34890 tl!4068) Nil!29470))) (++!7226 (t!211269 (++!7226 Nil!29470 (Cons!29470 (h!34890 tl!4068) Nil!29470))) (t!211269 tl!4068))))))

(declare-fun b!2520798 () Bool)

(assert (=> b!2520798 (= e!1596456 (or (not (= (t!211269 tl!4068) Nil!29470)) (= lt!899552 (++!7226 Nil!29470 (Cons!29470 (h!34890 tl!4068) Nil!29470)))))))

(declare-fun b!2520795 () Bool)

(assert (=> b!2520795 (= e!1596457 (t!211269 tl!4068))))

(declare-fun b!2520797 () Bool)

(declare-fun res!1065044 () Bool)

(assert (=> b!2520797 (=> (not res!1065044) (not e!1596456))))

(assert (=> b!2520797 (= res!1065044 (= (size!22916 lt!899552) (+ (size!22916 (++!7226 Nil!29470 (Cons!29470 (h!34890 tl!4068) Nil!29470))) (size!22916 (t!211269 tl!4068)))))))

(assert (= (and d!718120 c!402107) b!2520795))

(assert (= (and d!718120 (not c!402107)) b!2520796))

(assert (= (and d!718120 res!1065043) b!2520797))

(assert (= (and b!2520797 res!1065044) b!2520798))

(declare-fun m!2875675 () Bool)

(assert (=> d!718120 m!2875675))

(assert (=> d!718120 m!2875159))

(declare-fun m!2875677 () Bool)

(assert (=> d!718120 m!2875677))

(declare-fun m!2875679 () Bool)

(assert (=> d!718120 m!2875679))

(declare-fun m!2875681 () Bool)

(assert (=> b!2520796 m!2875681))

(declare-fun m!2875683 () Bool)

(assert (=> b!2520797 m!2875683))

(assert (=> b!2520797 m!2875159))

(declare-fun m!2875685 () Bool)

(assert (=> b!2520797 m!2875685))

(declare-fun m!2875687 () Bool)

(assert (=> b!2520797 m!2875687))

(assert (=> b!2520153 d!718120))

(declare-fun d!718124 () Bool)

(declare-fun e!1596460 () Bool)

(assert (=> d!718124 e!1596460))

(declare-fun res!1065047 () Bool)

(assert (=> d!718124 (=> (not res!1065047) (not e!1596460))))

(declare-fun lt!899554 () List!29570)

(assert (=> d!718124 (= res!1065047 (= (content!4034 lt!899554) ((_ map or) (content!4034 Nil!29470) (content!4034 (Cons!29470 (h!34890 tl!4068) Nil!29470)))))))

(declare-fun e!1596461 () List!29570)

(assert (=> d!718124 (= lt!899554 e!1596461)))

(declare-fun c!402109 () Bool)

(assert (=> d!718124 (= c!402109 ((_ is Nil!29470) Nil!29470))))

(assert (=> d!718124 (= (++!7226 Nil!29470 (Cons!29470 (h!34890 tl!4068) Nil!29470)) lt!899554)))

(declare-fun b!2520804 () Bool)

(assert (=> b!2520804 (= e!1596461 (Cons!29470 (h!34890 Nil!29470) (++!7226 (t!211269 Nil!29470) (Cons!29470 (h!34890 tl!4068) Nil!29470))))))

(declare-fun b!2520806 () Bool)

(assert (=> b!2520806 (= e!1596460 (or (not (= (Cons!29470 (h!34890 tl!4068) Nil!29470) Nil!29470)) (= lt!899554 Nil!29470)))))

(declare-fun b!2520803 () Bool)

(assert (=> b!2520803 (= e!1596461 (Cons!29470 (h!34890 tl!4068) Nil!29470))))

(declare-fun b!2520805 () Bool)

(declare-fun res!1065048 () Bool)

(assert (=> b!2520805 (=> (not res!1065048) (not e!1596460))))

(assert (=> b!2520805 (= res!1065048 (= (size!22916 lt!899554) (+ (size!22916 Nil!29470) (size!22916 (Cons!29470 (h!34890 tl!4068) Nil!29470)))))))

(assert (= (and d!718124 c!402109) b!2520803))

(assert (= (and d!718124 (not c!402109)) b!2520804))

(assert (= (and d!718124 res!1065047) b!2520805))

(assert (= (and b!2520805 res!1065048) b!2520806))

(declare-fun m!2875703 () Bool)

(assert (=> d!718124 m!2875703))

(declare-fun m!2875705 () Bool)

(assert (=> d!718124 m!2875705))

(declare-fun m!2875707 () Bool)

(assert (=> d!718124 m!2875707))

(declare-fun m!2875709 () Bool)

(assert (=> b!2520804 m!2875709))

(declare-fun m!2875711 () Bool)

(assert (=> b!2520805 m!2875711))

(declare-fun m!2875713 () Bool)

(assert (=> b!2520805 m!2875713))

(declare-fun m!2875715 () Bool)

(assert (=> b!2520805 m!2875715))

(assert (=> b!2520153 d!718124))

(declare-fun d!718128 () Bool)

(assert (=> d!718128 (= (++!7226 (++!7226 Nil!29470 (Cons!29470 (h!34890 tl!4068) Nil!29470)) (t!211269 tl!4068)) tl!4068)))

(declare-fun lt!899560 () Unit!43235)

(declare-fun choose!14937 (List!29570 C!15168 List!29570 List!29570) Unit!43235)

(assert (=> d!718128 (= lt!899560 (choose!14937 Nil!29470 (h!34890 tl!4068) (t!211269 tl!4068) tl!4068))))

(assert (=> d!718128 (= (++!7226 Nil!29470 (Cons!29470 (h!34890 tl!4068) (t!211269 tl!4068))) tl!4068)))

(assert (=> d!718128 (= (lemmaMoveElementToOtherListKeepsConcatEq!767 Nil!29470 (h!34890 tl!4068) (t!211269 tl!4068) tl!4068) lt!899560)))

(declare-fun bs!468988 () Bool)

(assert (= bs!468988 d!718128))

(assert (=> bs!468988 m!2875159))

(assert (=> bs!468988 m!2875159))

(assert (=> bs!468988 m!2875161))

(declare-fun m!2875721 () Bool)

(assert (=> bs!468988 m!2875721))

(declare-fun m!2875723 () Bool)

(assert (=> bs!468988 m!2875723))

(assert (=> b!2520153 d!718128))

(declare-fun b!2520816 () Bool)

(declare-fun e!1596469 () Bool)

(declare-fun lt!899565 () Option!5876)

(assert (=> b!2520816 (= e!1596469 (= (++!7226 (_1!17298 (get!9207 lt!899565)) (_2!17298 (get!9207 lt!899565))) tl!4068))))

(declare-fun b!2520817 () Bool)

(declare-fun e!1596467 () Option!5876)

(assert (=> b!2520817 (= e!1596467 (Some!5875 (tuple2!29513 (++!7226 Nil!29470 (Cons!29470 (h!34890 tl!4068) Nil!29470)) (t!211269 tl!4068))))))

(declare-fun d!718132 () Bool)

(declare-fun e!1596471 () Bool)

(assert (=> d!718132 e!1596471))

(declare-fun res!1065056 () Bool)

(assert (=> d!718132 (=> res!1065056 e!1596471)))

(assert (=> d!718132 (= res!1065056 e!1596469)))

(declare-fun res!1065055 () Bool)

(assert (=> d!718132 (=> (not res!1065055) (not e!1596469))))

(assert (=> d!718132 (= res!1065055 (isDefined!4698 lt!899565))))

(assert (=> d!718132 (= lt!899565 e!1596467)))

(declare-fun c!402112 () Bool)

(declare-fun e!1596470 () Bool)

(assert (=> d!718132 (= c!402112 e!1596470)))

(declare-fun res!1065054 () Bool)

(assert (=> d!718132 (=> (not res!1065054) (not e!1596470))))

(assert (=> d!718132 (= res!1065054 (matchR!3492 lt!899440 (++!7226 Nil!29470 (Cons!29470 (h!34890 tl!4068) Nil!29470))))))

(assert (=> d!718132 (validRegex!3131 lt!899440)))

(assert (=> d!718132 (= (findConcatSeparation!898 lt!899440 lt!899438 (++!7226 Nil!29470 (Cons!29470 (h!34890 tl!4068) Nil!29470)) (t!211269 tl!4068) tl!4068) lt!899565)))

(declare-fun b!2520818 () Bool)

(assert (=> b!2520818 (= e!1596470 (matchR!3492 lt!899438 (t!211269 tl!4068)))))

(declare-fun b!2520819 () Bool)

(declare-fun res!1065058 () Bool)

(assert (=> b!2520819 (=> (not res!1065058) (not e!1596469))))

(assert (=> b!2520819 (= res!1065058 (matchR!3492 lt!899440 (_1!17298 (get!9207 lt!899565))))))

(declare-fun b!2520820 () Bool)

(declare-fun lt!899566 () Unit!43235)

(declare-fun lt!899564 () Unit!43235)

(assert (=> b!2520820 (= lt!899566 lt!899564)))

(assert (=> b!2520820 (= (++!7226 (++!7226 (++!7226 Nil!29470 (Cons!29470 (h!34890 tl!4068) Nil!29470)) (Cons!29470 (h!34890 (t!211269 tl!4068)) Nil!29470)) (t!211269 (t!211269 tl!4068))) tl!4068)))

(assert (=> b!2520820 (= lt!899564 (lemmaMoveElementToOtherListKeepsConcatEq!767 (++!7226 Nil!29470 (Cons!29470 (h!34890 tl!4068) Nil!29470)) (h!34890 (t!211269 tl!4068)) (t!211269 (t!211269 tl!4068)) tl!4068))))

(declare-fun e!1596468 () Option!5876)

(assert (=> b!2520820 (= e!1596468 (findConcatSeparation!898 lt!899440 lt!899438 (++!7226 (++!7226 Nil!29470 (Cons!29470 (h!34890 tl!4068) Nil!29470)) (Cons!29470 (h!34890 (t!211269 tl!4068)) Nil!29470)) (t!211269 (t!211269 tl!4068)) tl!4068))))

(declare-fun b!2520821 () Bool)

(assert (=> b!2520821 (= e!1596467 e!1596468)))

(declare-fun c!402113 () Bool)

(assert (=> b!2520821 (= c!402113 ((_ is Nil!29470) (t!211269 tl!4068)))))

(declare-fun b!2520822 () Bool)

(assert (=> b!2520822 (= e!1596468 None!5875)))

(declare-fun b!2520823 () Bool)

(assert (=> b!2520823 (= e!1596471 (not (isDefined!4698 lt!899565)))))

(declare-fun b!2520824 () Bool)

(declare-fun res!1065057 () Bool)

(assert (=> b!2520824 (=> (not res!1065057) (not e!1596469))))

(assert (=> b!2520824 (= res!1065057 (matchR!3492 lt!899438 (_2!17298 (get!9207 lt!899565))))))

(assert (= (and d!718132 res!1065054) b!2520818))

(assert (= (and d!718132 c!402112) b!2520817))

(assert (= (and d!718132 (not c!402112)) b!2520821))

(assert (= (and b!2520821 c!402113) b!2520822))

(assert (= (and b!2520821 (not c!402113)) b!2520820))

(assert (= (and d!718132 res!1065055) b!2520819))

(assert (= (and b!2520819 res!1065058) b!2520824))

(assert (= (and b!2520824 res!1065057) b!2520816))

(assert (= (and d!718132 (not res!1065056)) b!2520823))

(declare-fun m!2875737 () Bool)

(assert (=> b!2520823 m!2875737))

(assert (=> d!718132 m!2875737))

(assert (=> d!718132 m!2875159))

(declare-fun m!2875739 () Bool)

(assert (=> d!718132 m!2875739))

(assert (=> d!718132 m!2874889))

(declare-fun m!2875743 () Bool)

(assert (=> b!2520818 m!2875743))

(declare-fun m!2875747 () Bool)

(assert (=> b!2520816 m!2875747))

(declare-fun m!2875749 () Bool)

(assert (=> b!2520816 m!2875749))

(assert (=> b!2520820 m!2875159))

(declare-fun m!2875753 () Bool)

(assert (=> b!2520820 m!2875753))

(assert (=> b!2520820 m!2875753))

(declare-fun m!2875757 () Bool)

(assert (=> b!2520820 m!2875757))

(assert (=> b!2520820 m!2875159))

(declare-fun m!2875761 () Bool)

(assert (=> b!2520820 m!2875761))

(assert (=> b!2520820 m!2875753))

(declare-fun m!2875763 () Bool)

(assert (=> b!2520820 m!2875763))

(assert (=> b!2520819 m!2875747))

(declare-fun m!2875765 () Bool)

(assert (=> b!2520819 m!2875765))

(assert (=> b!2520824 m!2875747))

(declare-fun m!2875767 () Bool)

(assert (=> b!2520824 m!2875767))

(assert (=> b!2520153 d!718132))

(declare-fun b!2520825 () Bool)

(declare-fun e!1596473 () Bool)

(declare-fun call!157140 () Bool)

(assert (=> b!2520825 (= e!1596473 call!157140)))

(declare-fun bm!157135 () Bool)

(declare-fun call!157141 () Bool)

(declare-fun c!402114 () Bool)

(assert (=> bm!157135 (= call!157141 (validRegex!3131 (ite c!402114 (regOne!15523 lt!899451) (regTwo!15522 lt!899451))))))

(declare-fun b!2520826 () Bool)

(declare-fun e!1596474 () Bool)

(assert (=> b!2520826 (= e!1596474 e!1596473)))

(declare-fun res!1065062 () Bool)

(assert (=> b!2520826 (= res!1065062 (not (nullable!2422 (reg!7834 lt!899451))))))

(assert (=> b!2520826 (=> (not res!1065062) (not e!1596473))))

(declare-fun b!2520827 () Bool)

(declare-fun e!1596476 () Bool)

(assert (=> b!2520827 (= e!1596476 e!1596474)))

(declare-fun c!402115 () Bool)

(assert (=> b!2520827 (= c!402115 ((_ is Star!7505) lt!899451))))

(declare-fun b!2520828 () Bool)

(declare-fun e!1596475 () Bool)

(assert (=> b!2520828 (= e!1596475 call!157141)))

(declare-fun d!718136 () Bool)

(declare-fun res!1065059 () Bool)

(assert (=> d!718136 (=> res!1065059 e!1596476)))

(assert (=> d!718136 (= res!1065059 ((_ is ElementMatch!7505) lt!899451))))

(assert (=> d!718136 (= (validRegex!3131 lt!899451) e!1596476)))

(declare-fun b!2520829 () Bool)

(declare-fun res!1065060 () Bool)

(declare-fun e!1596472 () Bool)

(assert (=> b!2520829 (=> (not res!1065060) (not e!1596472))))

(assert (=> b!2520829 (= res!1065060 call!157141)))

(declare-fun e!1596478 () Bool)

(assert (=> b!2520829 (= e!1596478 e!1596472)))

(declare-fun bm!157136 () Bool)

(assert (=> bm!157136 (= call!157140 (validRegex!3131 (ite c!402115 (reg!7834 lt!899451) (ite c!402114 (regTwo!15523 lt!899451) (regOne!15522 lt!899451)))))))

(declare-fun b!2520830 () Bool)

(declare-fun call!157142 () Bool)

(assert (=> b!2520830 (= e!1596472 call!157142)))

(declare-fun bm!157137 () Bool)

(assert (=> bm!157137 (= call!157142 call!157140)))

(declare-fun b!2520831 () Bool)

(declare-fun res!1065061 () Bool)

(declare-fun e!1596477 () Bool)

(assert (=> b!2520831 (=> res!1065061 e!1596477)))

(assert (=> b!2520831 (= res!1065061 (not ((_ is Concat!12201) lt!899451)))))

(assert (=> b!2520831 (= e!1596478 e!1596477)))

(declare-fun b!2520832 () Bool)

(assert (=> b!2520832 (= e!1596474 e!1596478)))

(assert (=> b!2520832 (= c!402114 ((_ is Union!7505) lt!899451))))

(declare-fun b!2520833 () Bool)

(assert (=> b!2520833 (= e!1596477 e!1596475)))

(declare-fun res!1065063 () Bool)

(assert (=> b!2520833 (=> (not res!1065063) (not e!1596475))))

(assert (=> b!2520833 (= res!1065063 call!157142)))

(assert (= (and d!718136 (not res!1065059)) b!2520827))

(assert (= (and b!2520827 c!402115) b!2520826))

(assert (= (and b!2520827 (not c!402115)) b!2520832))

(assert (= (and b!2520826 res!1065062) b!2520825))

(assert (= (and b!2520832 c!402114) b!2520829))

(assert (= (and b!2520832 (not c!402114)) b!2520831))

(assert (= (and b!2520829 res!1065060) b!2520830))

(assert (= (and b!2520831 (not res!1065061)) b!2520833))

(assert (= (and b!2520833 res!1065063) b!2520828))

(assert (= (or b!2520829 b!2520828) bm!157135))

(assert (= (or b!2520830 b!2520833) bm!157137))

(assert (= (or b!2520825 bm!157137) bm!157136))

(declare-fun m!2875769 () Bool)

(assert (=> bm!157135 m!2875769))

(declare-fun m!2875771 () Bool)

(assert (=> b!2520826 m!2875771))

(declare-fun m!2875773 () Bool)

(assert (=> bm!157136 m!2875773))

(assert (=> d!717816 d!718136))

(declare-fun b!2520841 () Bool)

(declare-fun e!1596486 () Bool)

(declare-fun call!157145 () Bool)

(assert (=> b!2520841 (= e!1596486 call!157145)))

(declare-fun bm!157140 () Bool)

(declare-fun call!157146 () Bool)

(declare-fun c!402117 () Bool)

(assert (=> bm!157140 (= call!157146 (validRegex!3131 (ite c!402117 (regOne!15523 (reg!7834 r!27340)) (regTwo!15522 (reg!7834 r!27340)))))))

(declare-fun b!2520842 () Bool)

(declare-fun e!1596487 () Bool)

(assert (=> b!2520842 (= e!1596487 e!1596486)))

(declare-fun res!1065072 () Bool)

(assert (=> b!2520842 (= res!1065072 (not (nullable!2422 (reg!7834 (reg!7834 r!27340)))))))

(assert (=> b!2520842 (=> (not res!1065072) (not e!1596486))))

(declare-fun b!2520843 () Bool)

(declare-fun e!1596489 () Bool)

(assert (=> b!2520843 (= e!1596489 e!1596487)))

(declare-fun c!402118 () Bool)

(assert (=> b!2520843 (= c!402118 ((_ is Star!7505) (reg!7834 r!27340)))))

(declare-fun b!2520844 () Bool)

(declare-fun e!1596488 () Bool)

(assert (=> b!2520844 (= e!1596488 call!157146)))

(declare-fun d!718140 () Bool)

(declare-fun res!1065069 () Bool)

(assert (=> d!718140 (=> res!1065069 e!1596489)))

(assert (=> d!718140 (= res!1065069 ((_ is ElementMatch!7505) (reg!7834 r!27340)))))

(assert (=> d!718140 (= (validRegex!3131 (reg!7834 r!27340)) e!1596489)))

(declare-fun b!2520845 () Bool)

(declare-fun res!1065070 () Bool)

(declare-fun e!1596485 () Bool)

(assert (=> b!2520845 (=> (not res!1065070) (not e!1596485))))

(assert (=> b!2520845 (= res!1065070 call!157146)))

(declare-fun e!1596491 () Bool)

(assert (=> b!2520845 (= e!1596491 e!1596485)))

(declare-fun bm!157141 () Bool)

(assert (=> bm!157141 (= call!157145 (validRegex!3131 (ite c!402118 (reg!7834 (reg!7834 r!27340)) (ite c!402117 (regTwo!15523 (reg!7834 r!27340)) (regOne!15522 (reg!7834 r!27340))))))))

(declare-fun b!2520846 () Bool)

(declare-fun call!157147 () Bool)

(assert (=> b!2520846 (= e!1596485 call!157147)))

(declare-fun bm!157142 () Bool)

(assert (=> bm!157142 (= call!157147 call!157145)))

(declare-fun b!2520847 () Bool)

(declare-fun res!1065071 () Bool)

(declare-fun e!1596490 () Bool)

(assert (=> b!2520847 (=> res!1065071 e!1596490)))

(assert (=> b!2520847 (= res!1065071 (not ((_ is Concat!12201) (reg!7834 r!27340))))))

(assert (=> b!2520847 (= e!1596491 e!1596490)))

(declare-fun b!2520848 () Bool)

(assert (=> b!2520848 (= e!1596487 e!1596491)))

(assert (=> b!2520848 (= c!402117 ((_ is Union!7505) (reg!7834 r!27340)))))

(declare-fun b!2520849 () Bool)

(assert (=> b!2520849 (= e!1596490 e!1596488)))

(declare-fun res!1065073 () Bool)

(assert (=> b!2520849 (=> (not res!1065073) (not e!1596488))))

(assert (=> b!2520849 (= res!1065073 call!157147)))

(assert (= (and d!718140 (not res!1065069)) b!2520843))

(assert (= (and b!2520843 c!402118) b!2520842))

(assert (= (and b!2520843 (not c!402118)) b!2520848))

(assert (= (and b!2520842 res!1065072) b!2520841))

(assert (= (and b!2520848 c!402117) b!2520845))

(assert (= (and b!2520848 (not c!402117)) b!2520847))

(assert (= (and b!2520845 res!1065070) b!2520846))

(assert (= (and b!2520847 (not res!1065071)) b!2520849))

(assert (= (and b!2520849 res!1065073) b!2520844))

(assert (= (or b!2520845 b!2520844) bm!157140))

(assert (= (or b!2520846 b!2520849) bm!157142))

(assert (= (or b!2520841 bm!157142) bm!157141))

(declare-fun m!2875779 () Bool)

(assert (=> bm!157140 m!2875779))

(declare-fun m!2875781 () Bool)

(assert (=> b!2520842 m!2875781))

(declare-fun m!2875783 () Bool)

(assert (=> bm!157141 m!2875783))

(assert (=> d!717816 d!718140))

(assert (=> b!2519892 d!718068))

(assert (=> b!2519892 d!718024))

(assert (=> b!2519834 d!717838))

(declare-fun e!1596500 () Regex!7505)

(declare-fun b!2520860 () Bool)

(assert (=> b!2520860 (= e!1596500 (ite (= c!14016 (c!401811 (ite c!401829 (regTwo!15523 (reg!7834 r!27340)) (ite c!401828 (reg!7834 (reg!7834 r!27340)) (regOne!15522 (reg!7834 r!27340)))))) EmptyExpr!7505 EmptyLang!7505))))

(declare-fun call!157152 () Regex!7505)

(declare-fun call!157154 () Regex!7505)

(declare-fun e!1596499 () Regex!7505)

(declare-fun b!2520861 () Bool)

(assert (=> b!2520861 (= e!1596499 (Union!7505 (Concat!12201 call!157152 (regTwo!15522 (ite c!401829 (regTwo!15523 (reg!7834 r!27340)) (ite c!401828 (reg!7834 (reg!7834 r!27340)) (regOne!15522 (reg!7834 r!27340)))))) call!157154))))

(declare-fun call!157153 () Regex!7505)

(declare-fun c!402125 () Bool)

(declare-fun c!402124 () Bool)

(declare-fun bm!157147 () Bool)

(assert (=> bm!157147 (= call!157153 (derivativeStep!2074 (ite c!402125 (regTwo!15523 (ite c!401829 (regTwo!15523 (reg!7834 r!27340)) (ite c!401828 (reg!7834 (reg!7834 r!27340)) (regOne!15522 (reg!7834 r!27340))))) (ite c!402124 (reg!7834 (ite c!401829 (regTwo!15523 (reg!7834 r!27340)) (ite c!401828 (reg!7834 (reg!7834 r!27340)) (regOne!15522 (reg!7834 r!27340))))) (regOne!15522 (ite c!401829 (regTwo!15523 (reg!7834 r!27340)) (ite c!401828 (reg!7834 (reg!7834 r!27340)) (regOne!15522 (reg!7834 r!27340))))))) c!14016))))

(declare-fun b!2520862 () Bool)

(declare-fun call!157155 () Regex!7505)

(declare-fun e!1596497 () Regex!7505)

(assert (=> b!2520862 (= e!1596497 (Concat!12201 call!157155 (ite c!401829 (regTwo!15523 (reg!7834 r!27340)) (ite c!401828 (reg!7834 (reg!7834 r!27340)) (regOne!15522 (reg!7834 r!27340))))))))

(declare-fun b!2520863 () Bool)

(declare-fun e!1596501 () Regex!7505)

(assert (=> b!2520863 (= e!1596501 EmptyLang!7505)))

(declare-fun b!2520864 () Bool)

(assert (=> b!2520864 (= e!1596499 (Union!7505 (Concat!12201 call!157152 (regTwo!15522 (ite c!401829 (regTwo!15523 (reg!7834 r!27340)) (ite c!401828 (reg!7834 (reg!7834 r!27340)) (regOne!15522 (reg!7834 r!27340)))))) EmptyLang!7505))))

(declare-fun b!2520865 () Bool)

(assert (=> b!2520865 (= c!402125 ((_ is Union!7505) (ite c!401829 (regTwo!15523 (reg!7834 r!27340)) (ite c!401828 (reg!7834 (reg!7834 r!27340)) (regOne!15522 (reg!7834 r!27340))))))))

(declare-fun e!1596498 () Regex!7505)

(assert (=> b!2520865 (= e!1596500 e!1596498)))

(declare-fun b!2520866 () Bool)

(assert (=> b!2520866 (= e!1596501 e!1596500)))

(declare-fun c!402128 () Bool)

(assert (=> b!2520866 (= c!402128 ((_ is ElementMatch!7505) (ite c!401829 (regTwo!15523 (reg!7834 r!27340)) (ite c!401828 (reg!7834 (reg!7834 r!27340)) (regOne!15522 (reg!7834 r!27340))))))))

(declare-fun c!402127 () Bool)

(declare-fun b!2520867 () Bool)

(assert (=> b!2520867 (= c!402127 (nullable!2422 (regOne!15522 (ite c!401829 (regTwo!15523 (reg!7834 r!27340)) (ite c!401828 (reg!7834 (reg!7834 r!27340)) (regOne!15522 (reg!7834 r!27340)))))))))

(assert (=> b!2520867 (= e!1596497 e!1596499)))

(declare-fun b!2520868 () Bool)

(assert (=> b!2520868 (= e!1596498 (Union!7505 call!157154 call!157153))))

(declare-fun b!2520869 () Bool)

(assert (=> b!2520869 (= e!1596498 e!1596497)))

(assert (=> b!2520869 (= c!402124 ((_ is Star!7505) (ite c!401829 (regTwo!15523 (reg!7834 r!27340)) (ite c!401828 (reg!7834 (reg!7834 r!27340)) (regOne!15522 (reg!7834 r!27340))))))))

(declare-fun bm!157148 () Bool)

(assert (=> bm!157148 (= call!157154 (derivativeStep!2074 (ite c!402125 (regOne!15523 (ite c!401829 (regTwo!15523 (reg!7834 r!27340)) (ite c!401828 (reg!7834 (reg!7834 r!27340)) (regOne!15522 (reg!7834 r!27340))))) (regTwo!15522 (ite c!401829 (regTwo!15523 (reg!7834 r!27340)) (ite c!401828 (reg!7834 (reg!7834 r!27340)) (regOne!15522 (reg!7834 r!27340)))))) c!14016))))

(declare-fun d!718144 () Bool)

(declare-fun lt!899568 () Regex!7505)

(assert (=> d!718144 (validRegex!3131 lt!899568)))

(assert (=> d!718144 (= lt!899568 e!1596501)))

(declare-fun c!402126 () Bool)

(assert (=> d!718144 (= c!402126 (or ((_ is EmptyExpr!7505) (ite c!401829 (regTwo!15523 (reg!7834 r!27340)) (ite c!401828 (reg!7834 (reg!7834 r!27340)) (regOne!15522 (reg!7834 r!27340))))) ((_ is EmptyLang!7505) (ite c!401829 (regTwo!15523 (reg!7834 r!27340)) (ite c!401828 (reg!7834 (reg!7834 r!27340)) (regOne!15522 (reg!7834 r!27340)))))))))

(assert (=> d!718144 (validRegex!3131 (ite c!401829 (regTwo!15523 (reg!7834 r!27340)) (ite c!401828 (reg!7834 (reg!7834 r!27340)) (regOne!15522 (reg!7834 r!27340)))))))

(assert (=> d!718144 (= (derivativeStep!2074 (ite c!401829 (regTwo!15523 (reg!7834 r!27340)) (ite c!401828 (reg!7834 (reg!7834 r!27340)) (regOne!15522 (reg!7834 r!27340)))) c!14016) lt!899568)))

(declare-fun bm!157149 () Bool)

(assert (=> bm!157149 (= call!157152 call!157155)))

(declare-fun bm!157150 () Bool)

(assert (=> bm!157150 (= call!157155 call!157153)))

(assert (= (and d!718144 c!402126) b!2520863))

(assert (= (and d!718144 (not c!402126)) b!2520866))

(assert (= (and b!2520866 c!402128) b!2520860))

(assert (= (and b!2520866 (not c!402128)) b!2520865))

(assert (= (and b!2520865 c!402125) b!2520868))

(assert (= (and b!2520865 (not c!402125)) b!2520869))

(assert (= (and b!2520869 c!402124) b!2520862))

(assert (= (and b!2520869 (not c!402124)) b!2520867))

(assert (= (and b!2520867 c!402127) b!2520861))

(assert (= (and b!2520867 (not c!402127)) b!2520864))

(assert (= (or b!2520861 b!2520864) bm!157149))

(assert (= (or b!2520862 bm!157149) bm!157150))

(assert (= (or b!2520868 bm!157150) bm!157147))

(assert (= (or b!2520868 b!2520861) bm!157148))

(declare-fun m!2875795 () Bool)

(assert (=> bm!157147 m!2875795))

(declare-fun m!2875801 () Bool)

(assert (=> b!2520867 m!2875801))

(declare-fun m!2875807 () Bool)

(assert (=> bm!157148 m!2875807))

(declare-fun m!2875811 () Bool)

(assert (=> d!718144 m!2875811))

(declare-fun m!2875815 () Bool)

(assert (=> d!718144 m!2875815))

(assert (=> bm!156945 d!718144))

(declare-fun b!2520874 () Bool)

(declare-fun e!1596506 () Bool)

(declare-fun e!1596505 () Bool)

(assert (=> b!2520874 (= e!1596506 e!1596505)))

(declare-fun res!1065080 () Bool)

(assert (=> b!2520874 (=> res!1065080 e!1596505)))

(assert (=> b!2520874 (= res!1065080 ((_ is Star!7505) lt!899436))))

(declare-fun b!2520875 () Bool)

(declare-fun e!1596508 () Bool)

(declare-fun e!1596504 () Bool)

(assert (=> b!2520875 (= e!1596508 e!1596504)))

(declare-fun res!1065076 () Bool)

(declare-fun call!157157 () Bool)

(assert (=> b!2520875 (= res!1065076 call!157157)))

(assert (=> b!2520875 (=> res!1065076 e!1596504)))

(declare-fun d!718148 () Bool)

(declare-fun res!1065077 () Bool)

(declare-fun e!1596509 () Bool)

(assert (=> d!718148 (=> res!1065077 e!1596509)))

(assert (=> d!718148 (= res!1065077 ((_ is EmptyExpr!7505) lt!899436))))

(assert (=> d!718148 (= (nullableFct!663 lt!899436) e!1596509)))

(declare-fun b!2520876 () Bool)

(declare-fun e!1596507 () Bool)

(assert (=> b!2520876 (= e!1596508 e!1596507)))

(declare-fun res!1065079 () Bool)

(declare-fun call!157156 () Bool)

(assert (=> b!2520876 (= res!1065079 call!157156)))

(assert (=> b!2520876 (=> (not res!1065079) (not e!1596507))))

(declare-fun b!2520877 () Bool)

(assert (=> b!2520877 (= e!1596504 call!157156)))

(declare-fun b!2520878 () Bool)

(assert (=> b!2520878 (= e!1596505 e!1596508)))

(declare-fun c!402130 () Bool)

(assert (=> b!2520878 (= c!402130 ((_ is Union!7505) lt!899436))))

(declare-fun bm!157151 () Bool)

(assert (=> bm!157151 (= call!157156 (nullable!2422 (ite c!402130 (regTwo!15523 lt!899436) (regOne!15522 lt!899436))))))

(declare-fun b!2520879 () Bool)

(assert (=> b!2520879 (= e!1596509 e!1596506)))

(declare-fun res!1065078 () Bool)

(assert (=> b!2520879 (=> (not res!1065078) (not e!1596506))))

(assert (=> b!2520879 (= res!1065078 (and (not ((_ is EmptyLang!7505) lt!899436)) (not ((_ is ElementMatch!7505) lt!899436))))))

(declare-fun b!2520880 () Bool)

(assert (=> b!2520880 (= e!1596507 call!157157)))

(declare-fun bm!157152 () Bool)

(assert (=> bm!157152 (= call!157157 (nullable!2422 (ite c!402130 (regOne!15523 lt!899436) (regTwo!15522 lt!899436))))))

(assert (= (and d!718148 (not res!1065077)) b!2520879))

(assert (= (and b!2520879 res!1065078) b!2520874))

(assert (= (and b!2520874 (not res!1065080)) b!2520878))

(assert (= (and b!2520878 c!402130) b!2520875))

(assert (= (and b!2520878 (not c!402130)) b!2520876))

(assert (= (and b!2520875 (not res!1065076)) b!2520877))

(assert (= (and b!2520876 res!1065079) b!2520880))

(assert (= (or b!2520877 b!2520876) bm!157151))

(assert (= (or b!2520875 b!2520880) bm!157152))

(declare-fun m!2875819 () Bool)

(assert (=> bm!157151 m!2875819))

(declare-fun m!2875821 () Bool)

(assert (=> bm!157152 m!2875821))

(assert (=> d!717838 d!718148))

(assert (=> d!717820 d!718026))

(declare-fun b!2520889 () Bool)

(declare-fun e!1596513 () Bool)

(declare-fun call!157158 () Bool)

(assert (=> b!2520889 (= e!1596513 call!157158)))

(declare-fun bm!157153 () Bool)

(declare-fun call!157159 () Bool)

(declare-fun c!402131 () Bool)

(assert (=> bm!157153 (= call!157159 (validRegex!3131 (ite c!402131 (regOne!15523 lt!899436) (regTwo!15522 lt!899436))))))

(declare-fun b!2520890 () Bool)

(declare-fun e!1596514 () Bool)

(assert (=> b!2520890 (= e!1596514 e!1596513)))

(declare-fun res!1065084 () Bool)

(assert (=> b!2520890 (= res!1065084 (not (nullable!2422 (reg!7834 lt!899436))))))

(assert (=> b!2520890 (=> (not res!1065084) (not e!1596513))))

(declare-fun b!2520891 () Bool)

(declare-fun e!1596516 () Bool)

(assert (=> b!2520891 (= e!1596516 e!1596514)))

(declare-fun c!402132 () Bool)

(assert (=> b!2520891 (= c!402132 ((_ is Star!7505) lt!899436))))

(declare-fun b!2520892 () Bool)

(declare-fun e!1596515 () Bool)

(assert (=> b!2520892 (= e!1596515 call!157159)))

(declare-fun d!718150 () Bool)

(declare-fun res!1065081 () Bool)

(assert (=> d!718150 (=> res!1065081 e!1596516)))

(assert (=> d!718150 (= res!1065081 ((_ is ElementMatch!7505) lt!899436))))

(assert (=> d!718150 (= (validRegex!3131 lt!899436) e!1596516)))

(declare-fun b!2520893 () Bool)

(declare-fun res!1065082 () Bool)

(declare-fun e!1596512 () Bool)

(assert (=> b!2520893 (=> (not res!1065082) (not e!1596512))))

(assert (=> b!2520893 (= res!1065082 call!157159)))

(declare-fun e!1596518 () Bool)

(assert (=> b!2520893 (= e!1596518 e!1596512)))

(declare-fun bm!157154 () Bool)

(assert (=> bm!157154 (= call!157158 (validRegex!3131 (ite c!402132 (reg!7834 lt!899436) (ite c!402131 (regTwo!15523 lt!899436) (regOne!15522 lt!899436)))))))

(declare-fun b!2520894 () Bool)

(declare-fun call!157160 () Bool)

(assert (=> b!2520894 (= e!1596512 call!157160)))

(declare-fun bm!157155 () Bool)

(assert (=> bm!157155 (= call!157160 call!157158)))

(declare-fun b!2520895 () Bool)

(declare-fun res!1065083 () Bool)

(declare-fun e!1596517 () Bool)

(assert (=> b!2520895 (=> res!1065083 e!1596517)))

(assert (=> b!2520895 (= res!1065083 (not ((_ is Concat!12201) lt!899436)))))

(assert (=> b!2520895 (= e!1596518 e!1596517)))

(declare-fun b!2520896 () Bool)

(assert (=> b!2520896 (= e!1596514 e!1596518)))

(assert (=> b!2520896 (= c!402131 ((_ is Union!7505) lt!899436))))

(declare-fun b!2520897 () Bool)

(assert (=> b!2520897 (= e!1596517 e!1596515)))

(declare-fun res!1065085 () Bool)

(assert (=> b!2520897 (=> (not res!1065085) (not e!1596515))))

(assert (=> b!2520897 (= res!1065085 call!157160)))

(assert (= (and d!718150 (not res!1065081)) b!2520891))

(assert (= (and b!2520891 c!402132) b!2520890))

(assert (= (and b!2520891 (not c!402132)) b!2520896))

(assert (= (and b!2520890 res!1065084) b!2520889))

(assert (= (and b!2520896 c!402131) b!2520893))

(assert (= (and b!2520896 (not c!402131)) b!2520895))

(assert (= (and b!2520893 res!1065082) b!2520894))

(assert (= (and b!2520895 (not res!1065083)) b!2520897))

(assert (= (and b!2520897 res!1065085) b!2520892))

(assert (= (or b!2520893 b!2520892) bm!157153))

(assert (= (or b!2520894 b!2520897) bm!157155))

(assert (= (or b!2520889 bm!157155) bm!157154))

(declare-fun m!2875823 () Bool)

(assert (=> bm!157153 m!2875823))

(declare-fun m!2875825 () Bool)

(assert (=> b!2520890 m!2875825))

(declare-fun m!2875827 () Bool)

(assert (=> bm!157154 m!2875827))

(assert (=> d!717820 d!718150))

(declare-fun d!718152 () Bool)

(declare-fun e!1596525 () Bool)

(assert (=> d!718152 e!1596525))

(declare-fun c!402135 () Bool)

(assert (=> d!718152 (= c!402135 ((_ is EmptyExpr!7505) lt!899438))))

(declare-fun lt!899570 () Bool)

(declare-fun e!1596527 () Bool)

(assert (=> d!718152 (= lt!899570 e!1596527)))

(declare-fun c!402133 () Bool)

(assert (=> d!718152 (= c!402133 (isEmpty!16933 (_2!17298 (get!9207 lt!899502))))))

(assert (=> d!718152 (validRegex!3131 lt!899438)))

(assert (=> d!718152 (= (matchR!3492 lt!899438 (_2!17298 (get!9207 lt!899502))) lt!899570)))

(declare-fun b!2520914 () Bool)

(declare-fun res!1065088 () Bool)

(declare-fun e!1596526 () Bool)

(assert (=> b!2520914 (=> res!1065088 e!1596526)))

(assert (=> b!2520914 (= res!1065088 (not (isEmpty!16933 (tail!4031 (_2!17298 (get!9207 lt!899502))))))))

(declare-fun b!2520915 () Bool)

(assert (=> b!2520915 (= e!1596527 (matchR!3492 (derivativeStep!2074 lt!899438 (head!5754 (_2!17298 (get!9207 lt!899502)))) (tail!4031 (_2!17298 (get!9207 lt!899502)))))))

(declare-fun b!2520916 () Bool)

(declare-fun res!1065086 () Bool)

(declare-fun e!1596529 () Bool)

(assert (=> b!2520916 (=> res!1065086 e!1596529)))

(assert (=> b!2520916 (= res!1065086 (not ((_ is ElementMatch!7505) lt!899438)))))

(declare-fun e!1596528 () Bool)

(assert (=> b!2520916 (= e!1596528 e!1596529)))

(declare-fun b!2520917 () Bool)

(declare-fun call!157161 () Bool)

(assert (=> b!2520917 (= e!1596525 (= lt!899570 call!157161))))

(declare-fun b!2520918 () Bool)

(assert (=> b!2520918 (= e!1596527 (nullable!2422 lt!899438))))

(declare-fun bm!157156 () Bool)

(assert (=> bm!157156 (= call!157161 (isEmpty!16933 (_2!17298 (get!9207 lt!899502))))))

(declare-fun b!2520919 () Bool)

(declare-fun res!1065087 () Bool)

(declare-fun e!1596524 () Bool)

(assert (=> b!2520919 (=> (not res!1065087) (not e!1596524))))

(assert (=> b!2520919 (= res!1065087 (not call!157161))))

(declare-fun b!2520920 () Bool)

(declare-fun res!1065092 () Bool)

(assert (=> b!2520920 (=> (not res!1065092) (not e!1596524))))

(assert (=> b!2520920 (= res!1065092 (isEmpty!16933 (tail!4031 (_2!17298 (get!9207 lt!899502)))))))

(declare-fun b!2520921 () Bool)

(declare-fun res!1065093 () Bool)

(assert (=> b!2520921 (=> res!1065093 e!1596529)))

(assert (=> b!2520921 (= res!1065093 e!1596524)))

(declare-fun res!1065091 () Bool)

(assert (=> b!2520921 (=> (not res!1065091) (not e!1596524))))

(assert (=> b!2520921 (= res!1065091 lt!899570)))

(declare-fun b!2520922 () Bool)

(assert (=> b!2520922 (= e!1596524 (= (head!5754 (_2!17298 (get!9207 lt!899502))) (c!401811 lt!899438)))))

(declare-fun b!2520923 () Bool)

(declare-fun e!1596523 () Bool)

(assert (=> b!2520923 (= e!1596529 e!1596523)))

(declare-fun res!1065089 () Bool)

(assert (=> b!2520923 (=> (not res!1065089) (not e!1596523))))

(assert (=> b!2520923 (= res!1065089 (not lt!899570))))

(declare-fun b!2520924 () Bool)

(assert (=> b!2520924 (= e!1596523 e!1596526)))

(declare-fun res!1065090 () Bool)

(assert (=> b!2520924 (=> res!1065090 e!1596526)))

(assert (=> b!2520924 (= res!1065090 call!157161)))

(declare-fun b!2520925 () Bool)

(assert (=> b!2520925 (= e!1596526 (not (= (head!5754 (_2!17298 (get!9207 lt!899502))) (c!401811 lt!899438))))))

(declare-fun b!2520926 () Bool)

(assert (=> b!2520926 (= e!1596528 (not lt!899570))))

(declare-fun b!2520927 () Bool)

(assert (=> b!2520927 (= e!1596525 e!1596528)))

(declare-fun c!402134 () Bool)

(assert (=> b!2520927 (= c!402134 ((_ is EmptyLang!7505) lt!899438))))

(assert (= (and d!718152 c!402133) b!2520918))

(assert (= (and d!718152 (not c!402133)) b!2520915))

(assert (= (and d!718152 c!402135) b!2520917))

(assert (= (and d!718152 (not c!402135)) b!2520927))

(assert (= (and b!2520927 c!402134) b!2520926))

(assert (= (and b!2520927 (not c!402134)) b!2520916))

(assert (= (and b!2520916 (not res!1065086)) b!2520921))

(assert (= (and b!2520921 res!1065091) b!2520919))

(assert (= (and b!2520919 res!1065087) b!2520920))

(assert (= (and b!2520920 res!1065092) b!2520922))

(assert (= (and b!2520921 (not res!1065093)) b!2520923))

(assert (= (and b!2520923 res!1065089) b!2520924))

(assert (= (and b!2520924 (not res!1065090)) b!2520914))

(assert (= (and b!2520914 (not res!1065088)) b!2520925))

(assert (= (or b!2520917 b!2520919 b!2520924) bm!157156))

(declare-fun m!2875829 () Bool)

(assert (=> d!718152 m!2875829))

(assert (=> d!718152 m!2874999))

(declare-fun m!2875831 () Bool)

(assert (=> b!2520922 m!2875831))

(assert (=> bm!157156 m!2875829))

(declare-fun m!2875833 () Bool)

(assert (=> b!2520920 m!2875833))

(assert (=> b!2520920 m!2875833))

(declare-fun m!2875835 () Bool)

(assert (=> b!2520920 m!2875835))

(assert (=> b!2520914 m!2875833))

(assert (=> b!2520914 m!2875833))

(assert (=> b!2520914 m!2875835))

(assert (=> b!2520915 m!2875831))

(assert (=> b!2520915 m!2875831))

(declare-fun m!2875837 () Bool)

(assert (=> b!2520915 m!2875837))

(assert (=> b!2520915 m!2875833))

(assert (=> b!2520915 m!2875837))

(assert (=> b!2520915 m!2875833))

(declare-fun m!2875839 () Bool)

(assert (=> b!2520915 m!2875839))

(assert (=> b!2520918 m!2875011))

(assert (=> b!2520925 m!2875831))

(assert (=> b!2520157 d!718152))

(assert (=> b!2520157 d!717956))

(declare-fun d!718154 () Bool)

(assert (=> d!718154 (= (nullable!2422 (regOne!15522 r!27340)) (nullableFct!663 (regOne!15522 r!27340)))))

(declare-fun bs!468989 () Bool)

(assert (= bs!468989 d!718154))

(declare-fun m!2875841 () Bool)

(assert (=> bs!468989 m!2875841))

(assert (=> b!2519915 d!718154))

(assert (=> d!717836 d!718040))

(declare-fun b!2520960 () Bool)

(declare-fun e!1596539 () Bool)

(declare-fun call!157162 () Bool)

(assert (=> b!2520960 (= e!1596539 call!157162)))

(declare-fun bm!157157 () Bool)

(declare-fun call!157163 () Bool)

(declare-fun c!402136 () Bool)

(assert (=> bm!157157 (= call!157163 (validRegex!3131 (ite c!402136 (regOne!15523 lt!899438) (regTwo!15522 lt!899438))))))

(declare-fun b!2520961 () Bool)

(declare-fun e!1596540 () Bool)

(assert (=> b!2520961 (= e!1596540 e!1596539)))

(declare-fun res!1065097 () Bool)

(assert (=> b!2520961 (= res!1065097 (not (nullable!2422 (reg!7834 lt!899438))))))

(assert (=> b!2520961 (=> (not res!1065097) (not e!1596539))))

(declare-fun b!2520964 () Bool)

(declare-fun e!1596542 () Bool)

(assert (=> b!2520964 (= e!1596542 e!1596540)))

(declare-fun c!402137 () Bool)

(assert (=> b!2520964 (= c!402137 ((_ is Star!7505) lt!899438))))

(declare-fun b!2520966 () Bool)

(declare-fun e!1596541 () Bool)

(assert (=> b!2520966 (= e!1596541 call!157163)))

(declare-fun d!718156 () Bool)

(declare-fun res!1065094 () Bool)

(assert (=> d!718156 (=> res!1065094 e!1596542)))

(assert (=> d!718156 (= res!1065094 ((_ is ElementMatch!7505) lt!899438))))

(assert (=> d!718156 (= (validRegex!3131 lt!899438) e!1596542)))

(declare-fun b!2520968 () Bool)

(declare-fun res!1065095 () Bool)

(declare-fun e!1596538 () Bool)

(assert (=> b!2520968 (=> (not res!1065095) (not e!1596538))))

(assert (=> b!2520968 (= res!1065095 call!157163)))

(declare-fun e!1596544 () Bool)

(assert (=> b!2520968 (= e!1596544 e!1596538)))

(declare-fun bm!157158 () Bool)

(assert (=> bm!157158 (= call!157162 (validRegex!3131 (ite c!402137 (reg!7834 lt!899438) (ite c!402136 (regTwo!15523 lt!899438) (regOne!15522 lt!899438)))))))

(declare-fun b!2520969 () Bool)

(declare-fun call!157164 () Bool)

(assert (=> b!2520969 (= e!1596538 call!157164)))

(declare-fun bm!157159 () Bool)

(assert (=> bm!157159 (= call!157164 call!157162)))

(declare-fun b!2520970 () Bool)

(declare-fun res!1065096 () Bool)

(declare-fun e!1596543 () Bool)

(assert (=> b!2520970 (=> res!1065096 e!1596543)))

(assert (=> b!2520970 (= res!1065096 (not ((_ is Concat!12201) lt!899438)))))

(assert (=> b!2520970 (= e!1596544 e!1596543)))

(declare-fun b!2520971 () Bool)

(assert (=> b!2520971 (= e!1596540 e!1596544)))

(assert (=> b!2520971 (= c!402136 ((_ is Union!7505) lt!899438))))

(declare-fun b!2520972 () Bool)

(assert (=> b!2520972 (= e!1596543 e!1596541)))

(declare-fun res!1065098 () Bool)

(assert (=> b!2520972 (=> (not res!1065098) (not e!1596541))))

(assert (=> b!2520972 (= res!1065098 call!157164)))

(assert (= (and d!718156 (not res!1065094)) b!2520964))

(assert (= (and b!2520964 c!402137) b!2520961))

(assert (= (and b!2520964 (not c!402137)) b!2520971))

(assert (= (and b!2520961 res!1065097) b!2520960))

(assert (= (and b!2520971 c!402136) b!2520968))

(assert (= (and b!2520971 (not c!402136)) b!2520970))

(assert (= (and b!2520968 res!1065095) b!2520969))

(assert (= (and b!2520970 (not res!1065096)) b!2520972))

(assert (= (and b!2520972 res!1065098) b!2520966))

(assert (= (or b!2520968 b!2520966) bm!157157))

(assert (= (or b!2520969 b!2520972) bm!157159))

(assert (= (or b!2520960 bm!157159) bm!157158))

(declare-fun m!2875843 () Bool)

(assert (=> bm!157157 m!2875843))

(declare-fun m!2875845 () Bool)

(assert (=> b!2520961 m!2875845))

(declare-fun m!2875847 () Bool)

(assert (=> bm!157158 m!2875847))

(assert (=> d!717836 d!718156))

(declare-fun d!718158 () Bool)

(assert (=> d!718158 (= (nullable!2422 lt!899438) (nullableFct!663 lt!899438))))

(declare-fun bs!468990 () Bool)

(assert (= bs!468990 d!718158))

(declare-fun m!2875849 () Bool)

(assert (=> bs!468990 m!2875849))

(assert (=> b!2519896 d!718158))

(declare-fun d!718160 () Bool)

(declare-fun lt!899571 () Regex!7505)

(assert (=> d!718160 (validRegex!3131 lt!899571)))

(declare-fun e!1596550 () Regex!7505)

(assert (=> d!718160 (= lt!899571 e!1596550)))

(declare-fun c!402138 () Bool)

(assert (=> d!718160 (= c!402138 ((_ is Cons!29470) (t!211269 tl!4068)))))

(assert (=> d!718160 (validRegex!3131 (derivativeStep!2074 lt!899440 (h!34890 tl!4068)))))

(assert (=> d!718160 (= (derivative!200 (derivativeStep!2074 lt!899440 (h!34890 tl!4068)) (t!211269 tl!4068)) lt!899571)))

(declare-fun b!2520989 () Bool)

(assert (=> b!2520989 (= e!1596550 (derivative!200 (derivativeStep!2074 (derivativeStep!2074 lt!899440 (h!34890 tl!4068)) (h!34890 (t!211269 tl!4068))) (t!211269 (t!211269 tl!4068))))))

(declare-fun b!2520990 () Bool)

(assert (=> b!2520990 (= e!1596550 (derivativeStep!2074 lt!899440 (h!34890 tl!4068)))))

(assert (= (and d!718160 c!402138) b!2520989))

(assert (= (and d!718160 (not c!402138)) b!2520990))

(declare-fun m!2875851 () Bool)

(assert (=> d!718160 m!2875851))

(assert (=> d!718160 m!2874891))

(declare-fun m!2875853 () Bool)

(assert (=> d!718160 m!2875853))

(assert (=> b!2520989 m!2874891))

(declare-fun m!2875855 () Bool)

(assert (=> b!2520989 m!2875855))

(assert (=> b!2520989 m!2875855))

(declare-fun m!2875857 () Bool)

(assert (=> b!2520989 m!2875857))

(assert (=> b!2519731 d!718160))

(declare-fun b!2520996 () Bool)

(declare-fun e!1596556 () Regex!7505)

(assert (=> b!2520996 (= e!1596556 (ite (= (h!34890 tl!4068) (c!401811 lt!899440)) EmptyExpr!7505 EmptyLang!7505))))

(declare-fun e!1596555 () Regex!7505)

(declare-fun call!157165 () Regex!7505)

(declare-fun call!157167 () Regex!7505)

(declare-fun b!2520997 () Bool)

(assert (=> b!2520997 (= e!1596555 (Union!7505 (Concat!12201 call!157165 (regTwo!15522 lt!899440)) call!157167))))

(declare-fun c!402140 () Bool)

(declare-fun call!157166 () Regex!7505)

(declare-fun bm!157160 () Bool)

(declare-fun c!402139 () Bool)

(assert (=> bm!157160 (= call!157166 (derivativeStep!2074 (ite c!402140 (regTwo!15523 lt!899440) (ite c!402139 (reg!7834 lt!899440) (regOne!15522 lt!899440))) (h!34890 tl!4068)))))

(declare-fun b!2520998 () Bool)

(declare-fun e!1596553 () Regex!7505)

(declare-fun call!157168 () Regex!7505)

(assert (=> b!2520998 (= e!1596553 (Concat!12201 call!157168 lt!899440))))

(declare-fun b!2520999 () Bool)

(declare-fun e!1596557 () Regex!7505)

(assert (=> b!2520999 (= e!1596557 EmptyLang!7505)))

(declare-fun b!2521000 () Bool)

(assert (=> b!2521000 (= e!1596555 (Union!7505 (Concat!12201 call!157165 (regTwo!15522 lt!899440)) EmptyLang!7505))))

(declare-fun b!2521001 () Bool)

(assert (=> b!2521001 (= c!402140 ((_ is Union!7505) lt!899440))))

(declare-fun e!1596554 () Regex!7505)

(assert (=> b!2521001 (= e!1596556 e!1596554)))

(declare-fun b!2521002 () Bool)

(assert (=> b!2521002 (= e!1596557 e!1596556)))

(declare-fun c!402143 () Bool)

(assert (=> b!2521002 (= c!402143 ((_ is ElementMatch!7505) lt!899440))))

(declare-fun b!2521003 () Bool)

(declare-fun c!402142 () Bool)

(assert (=> b!2521003 (= c!402142 (nullable!2422 (regOne!15522 lt!899440)))))

(assert (=> b!2521003 (= e!1596553 e!1596555)))

(declare-fun b!2521004 () Bool)

(assert (=> b!2521004 (= e!1596554 (Union!7505 call!157167 call!157166))))

(declare-fun b!2521005 () Bool)

(assert (=> b!2521005 (= e!1596554 e!1596553)))

(assert (=> b!2521005 (= c!402139 ((_ is Star!7505) lt!899440))))

(declare-fun bm!157161 () Bool)

(assert (=> bm!157161 (= call!157167 (derivativeStep!2074 (ite c!402140 (regOne!15523 lt!899440) (regTwo!15522 lt!899440)) (h!34890 tl!4068)))))

(declare-fun d!718162 () Bool)

(declare-fun lt!899572 () Regex!7505)

(assert (=> d!718162 (validRegex!3131 lt!899572)))

(assert (=> d!718162 (= lt!899572 e!1596557)))

(declare-fun c!402141 () Bool)

(assert (=> d!718162 (= c!402141 (or ((_ is EmptyExpr!7505) lt!899440) ((_ is EmptyLang!7505) lt!899440)))))

(assert (=> d!718162 (validRegex!3131 lt!899440)))

(assert (=> d!718162 (= (derivativeStep!2074 lt!899440 (h!34890 tl!4068)) lt!899572)))

(declare-fun bm!157162 () Bool)

(assert (=> bm!157162 (= call!157165 call!157168)))

(declare-fun bm!157163 () Bool)

(assert (=> bm!157163 (= call!157168 call!157166)))

(assert (= (and d!718162 c!402141) b!2520999))

(assert (= (and d!718162 (not c!402141)) b!2521002))

(assert (= (and b!2521002 c!402143) b!2520996))

(assert (= (and b!2521002 (not c!402143)) b!2521001))

(assert (= (and b!2521001 c!402140) b!2521004))

(assert (= (and b!2521001 (not c!402140)) b!2521005))

(assert (= (and b!2521005 c!402139) b!2520998))

(assert (= (and b!2521005 (not c!402139)) b!2521003))

(assert (= (and b!2521003 c!402142) b!2520997))

(assert (= (and b!2521003 (not c!402142)) b!2521000))

(assert (= (or b!2520997 b!2521000) bm!157162))

(assert (= (or b!2520998 bm!157162) bm!157163))

(assert (= (or b!2521004 bm!157163) bm!157160))

(assert (= (or b!2521004 b!2520997) bm!157161))

(declare-fun m!2875859 () Bool)

(assert (=> bm!157160 m!2875859))

(declare-fun m!2875861 () Bool)

(assert (=> b!2521003 m!2875861))

(declare-fun m!2875863 () Bool)

(assert (=> bm!157161 m!2875863))

(declare-fun m!2875865 () Bool)

(assert (=> d!718162 m!2875865))

(assert (=> d!718162 m!2874889))

(assert (=> b!2519731 d!718162))

(declare-fun d!718164 () Bool)

(assert (=> d!718164 (= (nullable!2422 (regOne!15522 (reg!7834 r!27340))) (nullableFct!663 (regOne!15522 (reg!7834 r!27340))))))

(declare-fun bs!468991 () Bool)

(assert (= bs!468991 d!718164))

(declare-fun m!2875867 () Bool)

(assert (=> bs!468991 m!2875867))

(assert (=> b!2519772 d!718164))

(declare-fun d!718166 () Bool)

(declare-fun e!1596565 () Bool)

(assert (=> d!718166 e!1596565))

(declare-fun c!402146 () Bool)

(assert (=> d!718166 (= c!402146 ((_ is EmptyExpr!7505) (derivativeStep!2074 lt!899435 (head!5754 tl!4068))))))

(declare-fun lt!899573 () Bool)

(declare-fun e!1596567 () Bool)

(assert (=> d!718166 (= lt!899573 e!1596567)))

(declare-fun c!402144 () Bool)

(assert (=> d!718166 (= c!402144 (isEmpty!16933 (tail!4031 tl!4068)))))

(assert (=> d!718166 (validRegex!3131 (derivativeStep!2074 lt!899435 (head!5754 tl!4068)))))

(assert (=> d!718166 (= (matchR!3492 (derivativeStep!2074 lt!899435 (head!5754 tl!4068)) (tail!4031 tl!4068)) lt!899573)))

(declare-fun b!2521026 () Bool)

(declare-fun res!1065101 () Bool)

(declare-fun e!1596566 () Bool)

(assert (=> b!2521026 (=> res!1065101 e!1596566)))

(assert (=> b!2521026 (= res!1065101 (not (isEmpty!16933 (tail!4031 (tail!4031 tl!4068)))))))

(declare-fun b!2521027 () Bool)

(assert (=> b!2521027 (= e!1596567 (matchR!3492 (derivativeStep!2074 (derivativeStep!2074 lt!899435 (head!5754 tl!4068)) (head!5754 (tail!4031 tl!4068))) (tail!4031 (tail!4031 tl!4068))))))

(declare-fun b!2521028 () Bool)

(declare-fun res!1065099 () Bool)

(declare-fun e!1596569 () Bool)

(assert (=> b!2521028 (=> res!1065099 e!1596569)))

(assert (=> b!2521028 (= res!1065099 (not ((_ is ElementMatch!7505) (derivativeStep!2074 lt!899435 (head!5754 tl!4068)))))))

(declare-fun e!1596568 () Bool)

(assert (=> b!2521028 (= e!1596568 e!1596569)))

(declare-fun b!2521029 () Bool)

(declare-fun call!157169 () Bool)

(assert (=> b!2521029 (= e!1596565 (= lt!899573 call!157169))))

(declare-fun b!2521030 () Bool)

(assert (=> b!2521030 (= e!1596567 (nullable!2422 (derivativeStep!2074 lt!899435 (head!5754 tl!4068))))))

(declare-fun bm!157164 () Bool)

(assert (=> bm!157164 (= call!157169 (isEmpty!16933 (tail!4031 tl!4068)))))

(declare-fun b!2521031 () Bool)

(declare-fun res!1065100 () Bool)

(declare-fun e!1596564 () Bool)

(assert (=> b!2521031 (=> (not res!1065100) (not e!1596564))))

(assert (=> b!2521031 (= res!1065100 (not call!157169))))

(declare-fun b!2521032 () Bool)

(declare-fun res!1065105 () Bool)

(assert (=> b!2521032 (=> (not res!1065105) (not e!1596564))))

(assert (=> b!2521032 (= res!1065105 (isEmpty!16933 (tail!4031 (tail!4031 tl!4068))))))

(declare-fun b!2521033 () Bool)

(declare-fun res!1065106 () Bool)

(assert (=> b!2521033 (=> res!1065106 e!1596569)))

(assert (=> b!2521033 (= res!1065106 e!1596564)))

(declare-fun res!1065104 () Bool)

(assert (=> b!2521033 (=> (not res!1065104) (not e!1596564))))

(assert (=> b!2521033 (= res!1065104 lt!899573)))

(declare-fun b!2521034 () Bool)

(assert (=> b!2521034 (= e!1596564 (= (head!5754 (tail!4031 tl!4068)) (c!401811 (derivativeStep!2074 lt!899435 (head!5754 tl!4068)))))))

(declare-fun b!2521035 () Bool)

(declare-fun e!1596563 () Bool)

(assert (=> b!2521035 (= e!1596569 e!1596563)))

(declare-fun res!1065102 () Bool)

(assert (=> b!2521035 (=> (not res!1065102) (not e!1596563))))

(assert (=> b!2521035 (= res!1065102 (not lt!899573))))

(declare-fun b!2521036 () Bool)

(assert (=> b!2521036 (= e!1596563 e!1596566)))

(declare-fun res!1065103 () Bool)

(assert (=> b!2521036 (=> res!1065103 e!1596566)))

(assert (=> b!2521036 (= res!1065103 call!157169)))

(declare-fun b!2521037 () Bool)

(assert (=> b!2521037 (= e!1596566 (not (= (head!5754 (tail!4031 tl!4068)) (c!401811 (derivativeStep!2074 lt!899435 (head!5754 tl!4068))))))))

(declare-fun b!2521038 () Bool)

(assert (=> b!2521038 (= e!1596568 (not lt!899573))))

(declare-fun b!2521039 () Bool)

(assert (=> b!2521039 (= e!1596565 e!1596568)))

(declare-fun c!402145 () Bool)

(assert (=> b!2521039 (= c!402145 ((_ is EmptyLang!7505) (derivativeStep!2074 lt!899435 (head!5754 tl!4068))))))

(assert (= (and d!718166 c!402144) b!2521030))

(assert (= (and d!718166 (not c!402144)) b!2521027))

(assert (= (and d!718166 c!402146) b!2521029))

(assert (= (and d!718166 (not c!402146)) b!2521039))

(assert (= (and b!2521039 c!402145) b!2521038))

(assert (= (and b!2521039 (not c!402145)) b!2521028))

(assert (= (and b!2521028 (not res!1065099)) b!2521033))

(assert (= (and b!2521033 res!1065104) b!2521031))

(assert (= (and b!2521031 res!1065100) b!2521032))

(assert (= (and b!2521032 res!1065105) b!2521034))

(assert (= (and b!2521033 (not res!1065106)) b!2521035))

(assert (= (and b!2521035 res!1065102) b!2521036))

(assert (= (and b!2521036 (not res!1065103)) b!2521026))

(assert (= (and b!2521026 (not res!1065101)) b!2521037))

(assert (= (or b!2521029 b!2521031 b!2521036) bm!157164))

(assert (=> d!718166 m!2874965))

(assert (=> d!718166 m!2874967))

(assert (=> d!718166 m!2874973))

(declare-fun m!2875869 () Bool)

(assert (=> d!718166 m!2875869))

(assert (=> b!2521034 m!2874965))

(declare-fun m!2875871 () Bool)

(assert (=> b!2521034 m!2875871))

(assert (=> bm!157164 m!2874965))

(assert (=> bm!157164 m!2874967))

(assert (=> b!2521032 m!2874965))

(declare-fun m!2875873 () Bool)

(assert (=> b!2521032 m!2875873))

(assert (=> b!2521032 m!2875873))

(declare-fun m!2875875 () Bool)

(assert (=> b!2521032 m!2875875))

(assert (=> b!2521026 m!2874965))

(assert (=> b!2521026 m!2875873))

(assert (=> b!2521026 m!2875873))

(assert (=> b!2521026 m!2875875))

(assert (=> b!2521027 m!2874965))

(assert (=> b!2521027 m!2875871))

(assert (=> b!2521027 m!2874973))

(assert (=> b!2521027 m!2875871))

(declare-fun m!2875877 () Bool)

(assert (=> b!2521027 m!2875877))

(assert (=> b!2521027 m!2874965))

(assert (=> b!2521027 m!2875873))

(assert (=> b!2521027 m!2875877))

(assert (=> b!2521027 m!2875873))

(declare-fun m!2875879 () Bool)

(assert (=> b!2521027 m!2875879))

(assert (=> b!2521030 m!2874973))

(declare-fun m!2875881 () Bool)

(assert (=> b!2521030 m!2875881))

(assert (=> b!2521037 m!2874965))

(assert (=> b!2521037 m!2875871))

(assert (=> b!2519845 d!718166))

(declare-fun b!2521040 () Bool)

(declare-fun e!1596573 () Regex!7505)

(assert (=> b!2521040 (= e!1596573 (ite (= (head!5754 tl!4068) (c!401811 lt!899435)) EmptyExpr!7505 EmptyLang!7505))))

(declare-fun call!157170 () Regex!7505)

(declare-fun b!2521041 () Bool)

(declare-fun call!157172 () Regex!7505)

(declare-fun e!1596572 () Regex!7505)

(assert (=> b!2521041 (= e!1596572 (Union!7505 (Concat!12201 call!157170 (regTwo!15522 lt!899435)) call!157172))))

(declare-fun bm!157165 () Bool)

(declare-fun call!157171 () Regex!7505)

(declare-fun c!402148 () Bool)

(declare-fun c!402147 () Bool)

(assert (=> bm!157165 (= call!157171 (derivativeStep!2074 (ite c!402148 (regTwo!15523 lt!899435) (ite c!402147 (reg!7834 lt!899435) (regOne!15522 lt!899435))) (head!5754 tl!4068)))))

(declare-fun b!2521042 () Bool)

(declare-fun e!1596570 () Regex!7505)

(declare-fun call!157173 () Regex!7505)

(assert (=> b!2521042 (= e!1596570 (Concat!12201 call!157173 lt!899435))))

(declare-fun b!2521043 () Bool)

(declare-fun e!1596574 () Regex!7505)

(assert (=> b!2521043 (= e!1596574 EmptyLang!7505)))

(declare-fun b!2521044 () Bool)

(assert (=> b!2521044 (= e!1596572 (Union!7505 (Concat!12201 call!157170 (regTwo!15522 lt!899435)) EmptyLang!7505))))

(declare-fun b!2521045 () Bool)

(assert (=> b!2521045 (= c!402148 ((_ is Union!7505) lt!899435))))

(declare-fun e!1596571 () Regex!7505)

(assert (=> b!2521045 (= e!1596573 e!1596571)))

(declare-fun b!2521046 () Bool)

(assert (=> b!2521046 (= e!1596574 e!1596573)))

(declare-fun c!402151 () Bool)

(assert (=> b!2521046 (= c!402151 ((_ is ElementMatch!7505) lt!899435))))

(declare-fun b!2521047 () Bool)

(declare-fun c!402150 () Bool)

(assert (=> b!2521047 (= c!402150 (nullable!2422 (regOne!15522 lt!899435)))))

(assert (=> b!2521047 (= e!1596570 e!1596572)))

(declare-fun b!2521048 () Bool)

(assert (=> b!2521048 (= e!1596571 (Union!7505 call!157172 call!157171))))

(declare-fun b!2521049 () Bool)

(assert (=> b!2521049 (= e!1596571 e!1596570)))

(assert (=> b!2521049 (= c!402147 ((_ is Star!7505) lt!899435))))

(declare-fun bm!157166 () Bool)

(assert (=> bm!157166 (= call!157172 (derivativeStep!2074 (ite c!402148 (regOne!15523 lt!899435) (regTwo!15522 lt!899435)) (head!5754 tl!4068)))))

(declare-fun d!718168 () Bool)

(declare-fun lt!899574 () Regex!7505)

(assert (=> d!718168 (validRegex!3131 lt!899574)))

(assert (=> d!718168 (= lt!899574 e!1596574)))

(declare-fun c!402149 () Bool)

(assert (=> d!718168 (= c!402149 (or ((_ is EmptyExpr!7505) lt!899435) ((_ is EmptyLang!7505) lt!899435)))))

(assert (=> d!718168 (validRegex!3131 lt!899435)))

(assert (=> d!718168 (= (derivativeStep!2074 lt!899435 (head!5754 tl!4068)) lt!899574)))

(declare-fun bm!157167 () Bool)

(assert (=> bm!157167 (= call!157170 call!157173)))

(declare-fun bm!157168 () Bool)

(assert (=> bm!157168 (= call!157173 call!157171)))

(assert (= (and d!718168 c!402149) b!2521043))

(assert (= (and d!718168 (not c!402149)) b!2521046))

(assert (= (and b!2521046 c!402151) b!2521040))

(assert (= (and b!2521046 (not c!402151)) b!2521045))

(assert (= (and b!2521045 c!402148) b!2521048))

(assert (= (and b!2521045 (not c!402148)) b!2521049))

(assert (= (and b!2521049 c!402147) b!2521042))

(assert (= (and b!2521049 (not c!402147)) b!2521047))

(assert (= (and b!2521047 c!402150) b!2521041))

(assert (= (and b!2521047 (not c!402150)) b!2521044))

(assert (= (or b!2521041 b!2521044) bm!157167))

(assert (= (or b!2521042 bm!157167) bm!157168))

(assert (= (or b!2521048 bm!157168) bm!157165))

(assert (= (or b!2521048 b!2521041) bm!157166))

(assert (=> bm!157165 m!2874963))

(declare-fun m!2875883 () Bool)

(assert (=> bm!157165 m!2875883))

(assert (=> b!2521047 m!2875547))

(assert (=> bm!157166 m!2874963))

(declare-fun m!2875885 () Bool)

(assert (=> bm!157166 m!2875885))

(declare-fun m!2875887 () Bool)

(assert (=> d!718168 m!2875887))

(assert (=> d!718168 m!2874961))

(assert (=> b!2519845 d!718168))

(assert (=> b!2519845 d!717930))

(assert (=> b!2519845 d!717928))

(assert (=> d!717834 d!718072))

(assert (=> d!717834 d!718140))

(assert (=> b!2519858 d!718084))

(assert (=> b!2519858 d!718054))

(declare-fun b!2521050 () Bool)

(declare-fun e!1596575 () Bool)

(declare-fun tp!805569 () Bool)

(assert (=> b!2521050 (= e!1596575 (and tp_is_empty!12865 tp!805569))))

(assert (=> b!2520184 (= tp!805432 e!1596575)))

(assert (= (and b!2520184 ((_ is Cons!29470) (t!211269 (t!211269 tl!4068)))) b!2521050))

(declare-fun b!2521054 () Bool)

(declare-fun e!1596576 () Bool)

(declare-fun tp!805573 () Bool)

(declare-fun tp!805571 () Bool)

(assert (=> b!2521054 (= e!1596576 (and tp!805573 tp!805571))))

(declare-fun b!2521052 () Bool)

(declare-fun tp!805574 () Bool)

(declare-fun tp!805570 () Bool)

(assert (=> b!2521052 (= e!1596576 (and tp!805574 tp!805570))))

(declare-fun b!2521051 () Bool)

(assert (=> b!2521051 (= e!1596576 tp_is_empty!12865)))

(assert (=> b!2520188 (= tp!805436 e!1596576)))

(declare-fun b!2521053 () Bool)

(declare-fun tp!805572 () Bool)

(assert (=> b!2521053 (= e!1596576 tp!805572)))

(assert (= (and b!2520188 ((_ is ElementMatch!7505) (regOne!15523 (regOne!15523 r!27340)))) b!2521051))

(assert (= (and b!2520188 ((_ is Concat!12201) (regOne!15523 (regOne!15523 r!27340)))) b!2521052))

(assert (= (and b!2520188 ((_ is Star!7505) (regOne!15523 (regOne!15523 r!27340)))) b!2521053))

(assert (= (and b!2520188 ((_ is Union!7505) (regOne!15523 (regOne!15523 r!27340)))) b!2521054))

(declare-fun b!2521058 () Bool)

(declare-fun e!1596577 () Bool)

(declare-fun tp!805578 () Bool)

(declare-fun tp!805576 () Bool)

(assert (=> b!2521058 (= e!1596577 (and tp!805578 tp!805576))))

(declare-fun b!2521056 () Bool)

(declare-fun tp!805579 () Bool)

(declare-fun tp!805575 () Bool)

(assert (=> b!2521056 (= e!1596577 (and tp!805579 tp!805575))))

(declare-fun b!2521055 () Bool)

(assert (=> b!2521055 (= e!1596577 tp_is_empty!12865)))

(assert (=> b!2520188 (= tp!805434 e!1596577)))

(declare-fun b!2521057 () Bool)

(declare-fun tp!805577 () Bool)

(assert (=> b!2521057 (= e!1596577 tp!805577)))

(assert (= (and b!2520188 ((_ is ElementMatch!7505) (regTwo!15523 (regOne!15523 r!27340)))) b!2521055))

(assert (= (and b!2520188 ((_ is Concat!12201) (regTwo!15523 (regOne!15523 r!27340)))) b!2521056))

(assert (= (and b!2520188 ((_ is Star!7505) (regTwo!15523 (regOne!15523 r!27340)))) b!2521057))

(assert (= (and b!2520188 ((_ is Union!7505) (regTwo!15523 (regOne!15523 r!27340)))) b!2521058))

(declare-fun b!2521062 () Bool)

(declare-fun e!1596578 () Bool)

(declare-fun tp!805583 () Bool)

(declare-fun tp!805581 () Bool)

(assert (=> b!2521062 (= e!1596578 (and tp!805583 tp!805581))))

(declare-fun b!2521060 () Bool)

(declare-fun tp!805584 () Bool)

(declare-fun tp!805580 () Bool)

(assert (=> b!2521060 (= e!1596578 (and tp!805584 tp!805580))))

(declare-fun b!2521059 () Bool)

(assert (=> b!2521059 (= e!1596578 tp_is_empty!12865)))

(assert (=> b!2520173 (= tp!805424 e!1596578)))

(declare-fun b!2521061 () Bool)

(declare-fun tp!805582 () Bool)

(assert (=> b!2521061 (= e!1596578 tp!805582)))

(assert (= (and b!2520173 ((_ is ElementMatch!7505) (regOne!15522 (regOne!15522 r!27340)))) b!2521059))

(assert (= (and b!2520173 ((_ is Concat!12201) (regOne!15522 (regOne!15522 r!27340)))) b!2521060))

(assert (= (and b!2520173 ((_ is Star!7505) (regOne!15522 (regOne!15522 r!27340)))) b!2521061))

(assert (= (and b!2520173 ((_ is Union!7505) (regOne!15522 (regOne!15522 r!27340)))) b!2521062))

(declare-fun b!2521066 () Bool)

(declare-fun e!1596579 () Bool)

(declare-fun tp!805588 () Bool)

(declare-fun tp!805586 () Bool)

(assert (=> b!2521066 (= e!1596579 (and tp!805588 tp!805586))))

(declare-fun b!2521064 () Bool)

(declare-fun tp!805589 () Bool)

(declare-fun tp!805585 () Bool)

(assert (=> b!2521064 (= e!1596579 (and tp!805589 tp!805585))))

(declare-fun b!2521063 () Bool)

(assert (=> b!2521063 (= e!1596579 tp_is_empty!12865)))

(assert (=> b!2520173 (= tp!805420 e!1596579)))

(declare-fun b!2521065 () Bool)

(declare-fun tp!805587 () Bool)

(assert (=> b!2521065 (= e!1596579 tp!805587)))

(assert (= (and b!2520173 ((_ is ElementMatch!7505) (regTwo!15522 (regOne!15522 r!27340)))) b!2521063))

(assert (= (and b!2520173 ((_ is Concat!12201) (regTwo!15522 (regOne!15522 r!27340)))) b!2521064))

(assert (= (and b!2520173 ((_ is Star!7505) (regTwo!15522 (regOne!15522 r!27340)))) b!2521065))

(assert (= (and b!2520173 ((_ is Union!7505) (regTwo!15522 (regOne!15522 r!27340)))) b!2521066))

(declare-fun b!2521070 () Bool)

(declare-fun e!1596580 () Bool)

(declare-fun tp!805593 () Bool)

(declare-fun tp!805591 () Bool)

(assert (=> b!2521070 (= e!1596580 (and tp!805593 tp!805591))))

(declare-fun b!2521068 () Bool)

(declare-fun tp!805594 () Bool)

(declare-fun tp!805590 () Bool)

(assert (=> b!2521068 (= e!1596580 (and tp!805594 tp!805590))))

(declare-fun b!2521067 () Bool)

(assert (=> b!2521067 (= e!1596580 tp_is_empty!12865)))

(assert (=> b!2520178 (= tp!805427 e!1596580)))

(declare-fun b!2521069 () Bool)

(declare-fun tp!805592 () Bool)

(assert (=> b!2521069 (= e!1596580 tp!805592)))

(assert (= (and b!2520178 ((_ is ElementMatch!7505) (reg!7834 (regTwo!15522 r!27340)))) b!2521067))

(assert (= (and b!2520178 ((_ is Concat!12201) (reg!7834 (regTwo!15522 r!27340)))) b!2521068))

(assert (= (and b!2520178 ((_ is Star!7505) (reg!7834 (regTwo!15522 r!27340)))) b!2521069))

(assert (= (and b!2520178 ((_ is Union!7505) (reg!7834 (regTwo!15522 r!27340)))) b!2521070))

(declare-fun b!2521074 () Bool)

(declare-fun e!1596581 () Bool)

(declare-fun tp!805598 () Bool)

(declare-fun tp!805596 () Bool)

(assert (=> b!2521074 (= e!1596581 (and tp!805598 tp!805596))))

(declare-fun b!2521072 () Bool)

(declare-fun tp!805599 () Bool)

(declare-fun tp!805595 () Bool)

(assert (=> b!2521072 (= e!1596581 (and tp!805599 tp!805595))))

(declare-fun b!2521071 () Bool)

(assert (=> b!2521071 (= e!1596581 tp_is_empty!12865)))

(assert (=> b!2520177 (= tp!805429 e!1596581)))

(declare-fun b!2521073 () Bool)

(declare-fun tp!805597 () Bool)

(assert (=> b!2521073 (= e!1596581 tp!805597)))

(assert (= (and b!2520177 ((_ is ElementMatch!7505) (regOne!15522 (regTwo!15522 r!27340)))) b!2521071))

(assert (= (and b!2520177 ((_ is Concat!12201) (regOne!15522 (regTwo!15522 r!27340)))) b!2521072))

(assert (= (and b!2520177 ((_ is Star!7505) (regOne!15522 (regTwo!15522 r!27340)))) b!2521073))

(assert (= (and b!2520177 ((_ is Union!7505) (regOne!15522 (regTwo!15522 r!27340)))) b!2521074))

(declare-fun b!2521078 () Bool)

(declare-fun e!1596582 () Bool)

(declare-fun tp!805603 () Bool)

(declare-fun tp!805601 () Bool)

(assert (=> b!2521078 (= e!1596582 (and tp!805603 tp!805601))))

(declare-fun b!2521076 () Bool)

(declare-fun tp!805604 () Bool)

(declare-fun tp!805600 () Bool)

(assert (=> b!2521076 (= e!1596582 (and tp!805604 tp!805600))))

(declare-fun b!2521075 () Bool)

(assert (=> b!2521075 (= e!1596582 tp_is_empty!12865)))

(assert (=> b!2520177 (= tp!805425 e!1596582)))

(declare-fun b!2521077 () Bool)

(declare-fun tp!805602 () Bool)

(assert (=> b!2521077 (= e!1596582 tp!805602)))

(assert (= (and b!2520177 ((_ is ElementMatch!7505) (regTwo!15522 (regTwo!15522 r!27340)))) b!2521075))

(assert (= (and b!2520177 ((_ is Concat!12201) (regTwo!15522 (regTwo!15522 r!27340)))) b!2521076))

(assert (= (and b!2520177 ((_ is Star!7505) (regTwo!15522 (regTwo!15522 r!27340)))) b!2521077))

(assert (= (and b!2520177 ((_ is Union!7505) (regTwo!15522 (regTwo!15522 r!27340)))) b!2521078))

(declare-fun b!2521082 () Bool)

(declare-fun e!1596583 () Bool)

(declare-fun tp!805608 () Bool)

(declare-fun tp!805606 () Bool)

(assert (=> b!2521082 (= e!1596583 (and tp!805608 tp!805606))))

(declare-fun b!2521080 () Bool)

(declare-fun tp!805609 () Bool)

(declare-fun tp!805605 () Bool)

(assert (=> b!2521080 (= e!1596583 (and tp!805609 tp!805605))))

(declare-fun b!2521079 () Bool)

(assert (=> b!2521079 (= e!1596583 tp_is_empty!12865)))

(assert (=> b!2520179 (= tp!805428 e!1596583)))

(declare-fun b!2521081 () Bool)

(declare-fun tp!805607 () Bool)

(assert (=> b!2521081 (= e!1596583 tp!805607)))

(assert (= (and b!2520179 ((_ is ElementMatch!7505) (regOne!15523 (regTwo!15522 r!27340)))) b!2521079))

(assert (= (and b!2520179 ((_ is Concat!12201) (regOne!15523 (regTwo!15522 r!27340)))) b!2521080))

(assert (= (and b!2520179 ((_ is Star!7505) (regOne!15523 (regTwo!15522 r!27340)))) b!2521081))

(assert (= (and b!2520179 ((_ is Union!7505) (regOne!15523 (regTwo!15522 r!27340)))) b!2521082))

(declare-fun b!2521086 () Bool)

(declare-fun e!1596584 () Bool)

(declare-fun tp!805613 () Bool)

(declare-fun tp!805611 () Bool)

(assert (=> b!2521086 (= e!1596584 (and tp!805613 tp!805611))))

(declare-fun b!2521084 () Bool)

(declare-fun tp!805614 () Bool)

(declare-fun tp!805610 () Bool)

(assert (=> b!2521084 (= e!1596584 (and tp!805614 tp!805610))))

(declare-fun b!2521083 () Bool)

(assert (=> b!2521083 (= e!1596584 tp_is_empty!12865)))

(assert (=> b!2520179 (= tp!805426 e!1596584)))

(declare-fun b!2521085 () Bool)

(declare-fun tp!805612 () Bool)

(assert (=> b!2521085 (= e!1596584 tp!805612)))

(assert (= (and b!2520179 ((_ is ElementMatch!7505) (regTwo!15523 (regTwo!15522 r!27340)))) b!2521083))

(assert (= (and b!2520179 ((_ is Concat!12201) (regTwo!15523 (regTwo!15522 r!27340)))) b!2521084))

(assert (= (and b!2520179 ((_ is Star!7505) (regTwo!15523 (regTwo!15522 r!27340)))) b!2521085))

(assert (= (and b!2520179 ((_ is Union!7505) (regTwo!15523 (regTwo!15522 r!27340)))) b!2521086))

(declare-fun b!2521090 () Bool)

(declare-fun e!1596585 () Bool)

(declare-fun tp!805618 () Bool)

(declare-fun tp!805616 () Bool)

(assert (=> b!2521090 (= e!1596585 (and tp!805618 tp!805616))))

(declare-fun b!2521088 () Bool)

(declare-fun tp!805619 () Bool)

(declare-fun tp!805615 () Bool)

(assert (=> b!2521088 (= e!1596585 (and tp!805619 tp!805615))))

(declare-fun b!2521087 () Bool)

(assert (=> b!2521087 (= e!1596585 tp_is_empty!12865)))

(assert (=> b!2520170 (= tp!805417 e!1596585)))

(declare-fun b!2521089 () Bool)

(declare-fun tp!805617 () Bool)

(assert (=> b!2521089 (= e!1596585 tp!805617)))

(assert (= (and b!2520170 ((_ is ElementMatch!7505) (reg!7834 (reg!7834 r!27340)))) b!2521087))

(assert (= (and b!2520170 ((_ is Concat!12201) (reg!7834 (reg!7834 r!27340)))) b!2521088))

(assert (= (and b!2520170 ((_ is Star!7505) (reg!7834 (reg!7834 r!27340)))) b!2521089))

(assert (= (and b!2520170 ((_ is Union!7505) (reg!7834 (reg!7834 r!27340)))) b!2521090))

(declare-fun b!2521094 () Bool)

(declare-fun e!1596586 () Bool)

(declare-fun tp!805623 () Bool)

(declare-fun tp!805621 () Bool)

(assert (=> b!2521094 (= e!1596586 (and tp!805623 tp!805621))))

(declare-fun b!2521092 () Bool)

(declare-fun tp!805624 () Bool)

(declare-fun tp!805620 () Bool)

(assert (=> b!2521092 (= e!1596586 (and tp!805624 tp!805620))))

(declare-fun b!2521091 () Bool)

(assert (=> b!2521091 (= e!1596586 tp_is_empty!12865)))

(assert (=> b!2520169 (= tp!805419 e!1596586)))

(declare-fun b!2521093 () Bool)

(declare-fun tp!805622 () Bool)

(assert (=> b!2521093 (= e!1596586 tp!805622)))

(assert (= (and b!2520169 ((_ is ElementMatch!7505) (regOne!15522 (reg!7834 r!27340)))) b!2521091))

(assert (= (and b!2520169 ((_ is Concat!12201) (regOne!15522 (reg!7834 r!27340)))) b!2521092))

(assert (= (and b!2520169 ((_ is Star!7505) (regOne!15522 (reg!7834 r!27340)))) b!2521093))

(assert (= (and b!2520169 ((_ is Union!7505) (regOne!15522 (reg!7834 r!27340)))) b!2521094))

(declare-fun b!2521098 () Bool)

(declare-fun e!1596587 () Bool)

(declare-fun tp!805628 () Bool)

(declare-fun tp!805626 () Bool)

(assert (=> b!2521098 (= e!1596587 (and tp!805628 tp!805626))))

(declare-fun b!2521096 () Bool)

(declare-fun tp!805629 () Bool)

(declare-fun tp!805625 () Bool)

(assert (=> b!2521096 (= e!1596587 (and tp!805629 tp!805625))))

(declare-fun b!2521095 () Bool)

(assert (=> b!2521095 (= e!1596587 tp_is_empty!12865)))

(assert (=> b!2520169 (= tp!805415 e!1596587)))

(declare-fun b!2521097 () Bool)

(declare-fun tp!805627 () Bool)

(assert (=> b!2521097 (= e!1596587 tp!805627)))

(assert (= (and b!2520169 ((_ is ElementMatch!7505) (regTwo!15522 (reg!7834 r!27340)))) b!2521095))

(assert (= (and b!2520169 ((_ is Concat!12201) (regTwo!15522 (reg!7834 r!27340)))) b!2521096))

(assert (= (and b!2520169 ((_ is Star!7505) (regTwo!15522 (reg!7834 r!27340)))) b!2521097))

(assert (= (and b!2520169 ((_ is Union!7505) (regTwo!15522 (reg!7834 r!27340)))) b!2521098))

(declare-fun b!2521102 () Bool)

(declare-fun e!1596588 () Bool)

(declare-fun tp!805633 () Bool)

(declare-fun tp!805631 () Bool)

(assert (=> b!2521102 (= e!1596588 (and tp!805633 tp!805631))))

(declare-fun b!2521100 () Bool)

(declare-fun tp!805634 () Bool)

(declare-fun tp!805630 () Bool)

(assert (=> b!2521100 (= e!1596588 (and tp!805634 tp!805630))))

(declare-fun b!2521099 () Bool)

(assert (=> b!2521099 (= e!1596588 tp_is_empty!12865)))

(assert (=> b!2520174 (= tp!805422 e!1596588)))

(declare-fun b!2521101 () Bool)

(declare-fun tp!805632 () Bool)

(assert (=> b!2521101 (= e!1596588 tp!805632)))

(assert (= (and b!2520174 ((_ is ElementMatch!7505) (reg!7834 (regOne!15522 r!27340)))) b!2521099))

(assert (= (and b!2520174 ((_ is Concat!12201) (reg!7834 (regOne!15522 r!27340)))) b!2521100))

(assert (= (and b!2520174 ((_ is Star!7505) (reg!7834 (regOne!15522 r!27340)))) b!2521101))

(assert (= (and b!2520174 ((_ is Union!7505) (reg!7834 (regOne!15522 r!27340)))) b!2521102))

(declare-fun b!2521106 () Bool)

(declare-fun e!1596589 () Bool)

(declare-fun tp!805638 () Bool)

(declare-fun tp!805636 () Bool)

(assert (=> b!2521106 (= e!1596589 (and tp!805638 tp!805636))))

(declare-fun b!2521104 () Bool)

(declare-fun tp!805639 () Bool)

(declare-fun tp!805635 () Bool)

(assert (=> b!2521104 (= e!1596589 (and tp!805639 tp!805635))))

(declare-fun b!2521103 () Bool)

(assert (=> b!2521103 (= e!1596589 tp_is_empty!12865)))

(assert (=> b!2520171 (= tp!805418 e!1596589)))

(declare-fun b!2521105 () Bool)

(declare-fun tp!805637 () Bool)

(assert (=> b!2521105 (= e!1596589 tp!805637)))

(assert (= (and b!2520171 ((_ is ElementMatch!7505) (regOne!15523 (reg!7834 r!27340)))) b!2521103))

(assert (= (and b!2520171 ((_ is Concat!12201) (regOne!15523 (reg!7834 r!27340)))) b!2521104))

(assert (= (and b!2520171 ((_ is Star!7505) (regOne!15523 (reg!7834 r!27340)))) b!2521105))

(assert (= (and b!2520171 ((_ is Union!7505) (regOne!15523 (reg!7834 r!27340)))) b!2521106))

(declare-fun b!2521110 () Bool)

(declare-fun e!1596590 () Bool)

(declare-fun tp!805643 () Bool)

(declare-fun tp!805641 () Bool)

(assert (=> b!2521110 (= e!1596590 (and tp!805643 tp!805641))))

(declare-fun b!2521108 () Bool)

(declare-fun tp!805644 () Bool)

(declare-fun tp!805640 () Bool)

(assert (=> b!2521108 (= e!1596590 (and tp!805644 tp!805640))))

(declare-fun b!2521107 () Bool)

(assert (=> b!2521107 (= e!1596590 tp_is_empty!12865)))

(assert (=> b!2520171 (= tp!805416 e!1596590)))

(declare-fun b!2521109 () Bool)

(declare-fun tp!805642 () Bool)

(assert (=> b!2521109 (= e!1596590 tp!805642)))

(assert (= (and b!2520171 ((_ is ElementMatch!7505) (regTwo!15523 (reg!7834 r!27340)))) b!2521107))

(assert (= (and b!2520171 ((_ is Concat!12201) (regTwo!15523 (reg!7834 r!27340)))) b!2521108))

(assert (= (and b!2520171 ((_ is Star!7505) (regTwo!15523 (reg!7834 r!27340)))) b!2521109))

(assert (= (and b!2520171 ((_ is Union!7505) (regTwo!15523 (reg!7834 r!27340)))) b!2521110))

(declare-fun b!2521114 () Bool)

(declare-fun e!1596591 () Bool)

(declare-fun tp!805648 () Bool)

(declare-fun tp!805646 () Bool)

(assert (=> b!2521114 (= e!1596591 (and tp!805648 tp!805646))))

(declare-fun b!2521112 () Bool)

(declare-fun tp!805649 () Bool)

(declare-fun tp!805645 () Bool)

(assert (=> b!2521112 (= e!1596591 (and tp!805649 tp!805645))))

(declare-fun b!2521111 () Bool)

(assert (=> b!2521111 (= e!1596591 tp_is_empty!12865)))

(assert (=> b!2520186 (= tp!805437 e!1596591)))

(declare-fun b!2521113 () Bool)

(declare-fun tp!805647 () Bool)

(assert (=> b!2521113 (= e!1596591 tp!805647)))

(assert (= (and b!2520186 ((_ is ElementMatch!7505) (regOne!15522 (regOne!15523 r!27340)))) b!2521111))

(assert (= (and b!2520186 ((_ is Concat!12201) (regOne!15522 (regOne!15523 r!27340)))) b!2521112))

(assert (= (and b!2520186 ((_ is Star!7505) (regOne!15522 (regOne!15523 r!27340)))) b!2521113))

(assert (= (and b!2520186 ((_ is Union!7505) (regOne!15522 (regOne!15523 r!27340)))) b!2521114))

(declare-fun b!2521118 () Bool)

(declare-fun e!1596592 () Bool)

(declare-fun tp!805653 () Bool)

(declare-fun tp!805651 () Bool)

(assert (=> b!2521118 (= e!1596592 (and tp!805653 tp!805651))))

(declare-fun b!2521116 () Bool)

(declare-fun tp!805654 () Bool)

(declare-fun tp!805650 () Bool)

(assert (=> b!2521116 (= e!1596592 (and tp!805654 tp!805650))))

(declare-fun b!2521115 () Bool)

(assert (=> b!2521115 (= e!1596592 tp_is_empty!12865)))

(assert (=> b!2520186 (= tp!805433 e!1596592)))

(declare-fun b!2521117 () Bool)

(declare-fun tp!805652 () Bool)

(assert (=> b!2521117 (= e!1596592 tp!805652)))

(assert (= (and b!2520186 ((_ is ElementMatch!7505) (regTwo!15522 (regOne!15523 r!27340)))) b!2521115))

(assert (= (and b!2520186 ((_ is Concat!12201) (regTwo!15522 (regOne!15523 r!27340)))) b!2521116))

(assert (= (and b!2520186 ((_ is Star!7505) (regTwo!15522 (regOne!15523 r!27340)))) b!2521117))

(assert (= (and b!2520186 ((_ is Union!7505) (regTwo!15522 (regOne!15523 r!27340)))) b!2521118))

(declare-fun b!2521122 () Bool)

(declare-fun e!1596593 () Bool)

(declare-fun tp!805658 () Bool)

(declare-fun tp!805656 () Bool)

(assert (=> b!2521122 (= e!1596593 (and tp!805658 tp!805656))))

(declare-fun b!2521120 () Bool)

(declare-fun tp!805659 () Bool)

(declare-fun tp!805655 () Bool)

(assert (=> b!2521120 (= e!1596593 (and tp!805659 tp!805655))))

(declare-fun b!2521119 () Bool)

(assert (=> b!2521119 (= e!1596593 tp_is_empty!12865)))

(assert (=> b!2520175 (= tp!805423 e!1596593)))

(declare-fun b!2521121 () Bool)

(declare-fun tp!805657 () Bool)

(assert (=> b!2521121 (= e!1596593 tp!805657)))

(assert (= (and b!2520175 ((_ is ElementMatch!7505) (regOne!15523 (regOne!15522 r!27340)))) b!2521119))

(assert (= (and b!2520175 ((_ is Concat!12201) (regOne!15523 (regOne!15522 r!27340)))) b!2521120))

(assert (= (and b!2520175 ((_ is Star!7505) (regOne!15523 (regOne!15522 r!27340)))) b!2521121))

(assert (= (and b!2520175 ((_ is Union!7505) (regOne!15523 (regOne!15522 r!27340)))) b!2521122))

(declare-fun b!2521126 () Bool)

(declare-fun e!1596594 () Bool)

(declare-fun tp!805663 () Bool)

(declare-fun tp!805661 () Bool)

(assert (=> b!2521126 (= e!1596594 (and tp!805663 tp!805661))))

(declare-fun b!2521124 () Bool)

(declare-fun tp!805664 () Bool)

(declare-fun tp!805660 () Bool)

(assert (=> b!2521124 (= e!1596594 (and tp!805664 tp!805660))))

(declare-fun b!2521123 () Bool)

(assert (=> b!2521123 (= e!1596594 tp_is_empty!12865)))

(assert (=> b!2520175 (= tp!805421 e!1596594)))

(declare-fun b!2521125 () Bool)

(declare-fun tp!805662 () Bool)

(assert (=> b!2521125 (= e!1596594 tp!805662)))

(assert (= (and b!2520175 ((_ is ElementMatch!7505) (regTwo!15523 (regOne!15522 r!27340)))) b!2521123))

(assert (= (and b!2520175 ((_ is Concat!12201) (regTwo!15523 (regOne!15522 r!27340)))) b!2521124))

(assert (= (and b!2520175 ((_ is Star!7505) (regTwo!15523 (regOne!15522 r!27340)))) b!2521125))

(assert (= (and b!2520175 ((_ is Union!7505) (regTwo!15523 (regOne!15522 r!27340)))) b!2521126))

(declare-fun b!2521130 () Bool)

(declare-fun e!1596595 () Bool)

(declare-fun tp!805668 () Bool)

(declare-fun tp!805666 () Bool)

(assert (=> b!2521130 (= e!1596595 (and tp!805668 tp!805666))))

(declare-fun b!2521128 () Bool)

(declare-fun tp!805669 () Bool)

(declare-fun tp!805665 () Bool)

(assert (=> b!2521128 (= e!1596595 (and tp!805669 tp!805665))))

(declare-fun b!2521127 () Bool)

(assert (=> b!2521127 (= e!1596595 tp_is_empty!12865)))

(assert (=> b!2520190 (= tp!805442 e!1596595)))

(declare-fun b!2521129 () Bool)

(declare-fun tp!805667 () Bool)

(assert (=> b!2521129 (= e!1596595 tp!805667)))

(assert (= (and b!2520190 ((_ is ElementMatch!7505) (regOne!15522 (regTwo!15523 r!27340)))) b!2521127))

(assert (= (and b!2520190 ((_ is Concat!12201) (regOne!15522 (regTwo!15523 r!27340)))) b!2521128))

(assert (= (and b!2520190 ((_ is Star!7505) (regOne!15522 (regTwo!15523 r!27340)))) b!2521129))

(assert (= (and b!2520190 ((_ is Union!7505) (regOne!15522 (regTwo!15523 r!27340)))) b!2521130))

(declare-fun b!2521134 () Bool)

(declare-fun e!1596596 () Bool)

(declare-fun tp!805673 () Bool)

(declare-fun tp!805671 () Bool)

(assert (=> b!2521134 (= e!1596596 (and tp!805673 tp!805671))))

(declare-fun b!2521132 () Bool)

(declare-fun tp!805674 () Bool)

(declare-fun tp!805670 () Bool)

(assert (=> b!2521132 (= e!1596596 (and tp!805674 tp!805670))))

(declare-fun b!2521131 () Bool)

(assert (=> b!2521131 (= e!1596596 tp_is_empty!12865)))

(assert (=> b!2520190 (= tp!805438 e!1596596)))

(declare-fun b!2521133 () Bool)

(declare-fun tp!805672 () Bool)

(assert (=> b!2521133 (= e!1596596 tp!805672)))

(assert (= (and b!2520190 ((_ is ElementMatch!7505) (regTwo!15522 (regTwo!15523 r!27340)))) b!2521131))

(assert (= (and b!2520190 ((_ is Concat!12201) (regTwo!15522 (regTwo!15523 r!27340)))) b!2521132))

(assert (= (and b!2520190 ((_ is Star!7505) (regTwo!15522 (regTwo!15523 r!27340)))) b!2521133))

(assert (= (and b!2520190 ((_ is Union!7505) (regTwo!15522 (regTwo!15523 r!27340)))) b!2521134))

(declare-fun b!2521138 () Bool)

(declare-fun e!1596597 () Bool)

(declare-fun tp!805678 () Bool)

(declare-fun tp!805676 () Bool)

(assert (=> b!2521138 (= e!1596597 (and tp!805678 tp!805676))))

(declare-fun b!2521136 () Bool)

(declare-fun tp!805679 () Bool)

(declare-fun tp!805675 () Bool)

(assert (=> b!2521136 (= e!1596597 (and tp!805679 tp!805675))))

(declare-fun b!2521135 () Bool)

(assert (=> b!2521135 (= e!1596597 tp_is_empty!12865)))

(assert (=> b!2520187 (= tp!805435 e!1596597)))

(declare-fun b!2521137 () Bool)

(declare-fun tp!805677 () Bool)

(assert (=> b!2521137 (= e!1596597 tp!805677)))

(assert (= (and b!2520187 ((_ is ElementMatch!7505) (reg!7834 (regOne!15523 r!27340)))) b!2521135))

(assert (= (and b!2520187 ((_ is Concat!12201) (reg!7834 (regOne!15523 r!27340)))) b!2521136))

(assert (= (and b!2520187 ((_ is Star!7505) (reg!7834 (regOne!15523 r!27340)))) b!2521137))

(assert (= (and b!2520187 ((_ is Union!7505) (reg!7834 (regOne!15523 r!27340)))) b!2521138))

(declare-fun b!2521142 () Bool)

(declare-fun e!1596598 () Bool)

(declare-fun tp!805683 () Bool)

(declare-fun tp!805681 () Bool)

(assert (=> b!2521142 (= e!1596598 (and tp!805683 tp!805681))))

(declare-fun b!2521140 () Bool)

(declare-fun tp!805684 () Bool)

(declare-fun tp!805680 () Bool)

(assert (=> b!2521140 (= e!1596598 (and tp!805684 tp!805680))))

(declare-fun b!2521139 () Bool)

(assert (=> b!2521139 (= e!1596598 tp_is_empty!12865)))

(assert (=> b!2520192 (= tp!805441 e!1596598)))

(declare-fun b!2521141 () Bool)

(declare-fun tp!805682 () Bool)

(assert (=> b!2521141 (= e!1596598 tp!805682)))

(assert (= (and b!2520192 ((_ is ElementMatch!7505) (regOne!15523 (regTwo!15523 r!27340)))) b!2521139))

(assert (= (and b!2520192 ((_ is Concat!12201) (regOne!15523 (regTwo!15523 r!27340)))) b!2521140))

(assert (= (and b!2520192 ((_ is Star!7505) (regOne!15523 (regTwo!15523 r!27340)))) b!2521141))

(assert (= (and b!2520192 ((_ is Union!7505) (regOne!15523 (regTwo!15523 r!27340)))) b!2521142))

(declare-fun b!2521146 () Bool)

(declare-fun e!1596599 () Bool)

(declare-fun tp!805688 () Bool)

(declare-fun tp!805686 () Bool)

(assert (=> b!2521146 (= e!1596599 (and tp!805688 tp!805686))))

(declare-fun b!2521144 () Bool)

(declare-fun tp!805689 () Bool)

(declare-fun tp!805685 () Bool)

(assert (=> b!2521144 (= e!1596599 (and tp!805689 tp!805685))))

(declare-fun b!2521143 () Bool)

(assert (=> b!2521143 (= e!1596599 tp_is_empty!12865)))

(assert (=> b!2520192 (= tp!805439 e!1596599)))

(declare-fun b!2521145 () Bool)

(declare-fun tp!805687 () Bool)

(assert (=> b!2521145 (= e!1596599 tp!805687)))

(assert (= (and b!2520192 ((_ is ElementMatch!7505) (regTwo!15523 (regTwo!15523 r!27340)))) b!2521143))

(assert (= (and b!2520192 ((_ is Concat!12201) (regTwo!15523 (regTwo!15523 r!27340)))) b!2521144))

(assert (= (and b!2520192 ((_ is Star!7505) (regTwo!15523 (regTwo!15523 r!27340)))) b!2521145))

(assert (= (and b!2520192 ((_ is Union!7505) (regTwo!15523 (regTwo!15523 r!27340)))) b!2521146))

(declare-fun b!2521150 () Bool)

(declare-fun e!1596600 () Bool)

(declare-fun tp!805693 () Bool)

(declare-fun tp!805691 () Bool)

(assert (=> b!2521150 (= e!1596600 (and tp!805693 tp!805691))))

(declare-fun b!2521148 () Bool)

(declare-fun tp!805694 () Bool)

(declare-fun tp!805690 () Bool)

(assert (=> b!2521148 (= e!1596600 (and tp!805694 tp!805690))))

(declare-fun b!2521147 () Bool)

(assert (=> b!2521147 (= e!1596600 tp_is_empty!12865)))

(assert (=> b!2520191 (= tp!805440 e!1596600)))

(declare-fun b!2521149 () Bool)

(declare-fun tp!805692 () Bool)

(assert (=> b!2521149 (= e!1596600 tp!805692)))

(assert (= (and b!2520191 ((_ is ElementMatch!7505) (reg!7834 (regTwo!15523 r!27340)))) b!2521147))

(assert (= (and b!2520191 ((_ is Concat!12201) (reg!7834 (regTwo!15523 r!27340)))) b!2521148))

(assert (= (and b!2520191 ((_ is Star!7505) (reg!7834 (regTwo!15523 r!27340)))) b!2521149))

(assert (= (and b!2520191 ((_ is Union!7505) (reg!7834 (regTwo!15523 r!27340)))) b!2521150))

(check-sat (not b!2521086) (not b!2520327) (not b!2520662) (not b!2521149) (not b!2520816) (not bm!157069) (not b!2521065) (not b!2520742) (not d!718120) (not bm!157050) (not b!2521122) (not d!718076) (not bm!157147) (not b!2521096) (not bm!157030) (not b!2520553) (not b!2520629) (not d!717970) (not b!2521080) (not b!2521132) (not b!2520842) (not bm!157148) (not b!2520329) (not bm!157156) (not b!2521093) (not b!2521053) (not b!2521082) (not bm!157100) (not b!2520823) (not d!718114) (not bm!157154) (not b!2520237) (not bm!157107) (not bm!157007) (not b!2520922) (not b!2521037) (not b!2521109) (not b!2520504) (not bm!157008) (not b!2521106) (not b!2521052) (not b!2520249) (not b!2521090) (not bm!157062) (not d!717964) (not d!718010) (not bm!157104) (not bm!157166) (not b!2520776) (not b!2521064) (not b!2520660) (not b!2520253) (not d!718162) (not d!718092) (not b!2521078) (not b!2520549) (not d!718042) (not bm!157063) (not bm!157101) (not b!2521146) (not b!2520281) (not b!2521128) (not d!718086) (not b!2520961) (not b!2521034) (not b!2520758) (not b!2520915) (not b!2521092) (not d!718128) (not b!2521141) (not b!2520614) (not b!2520322) (not b!2521032) (not b!2520473) (not d!718020) (not b!2521102) (not bm!157136) (not d!718160) (not b!2520468) (not b!2521114) (not b!2520804) (not b!2521121) (not d!718168) (not b!2521150) (not d!717920) (not b!2521094) (not b!2520805) (not b!2521125) (not bm!157164) (not b!2521098) (not b!2521077) (not b!2520724) (not b!2520778) (not b!2521134) (not b!2520410) (not b!2520658) (not b!2521069) (not bm!157037) (not d!718050) (not bm!157038) (not b!2521058) (not d!717908) (not b!2520550) (not b!2520914) (not b!2520716) (not b!2520687) (not b!2520246) (not b!2521126) (not bm!157064) (not d!718152) (not bm!157120) (not d!718074) (not b!2520796) (not d!717932) (not b!2521047) (not d!718132) (not bm!157160) (not bm!157018) (not b!2520665) (not d!718158) (not b!2521108) (not b!2521061) (not bm!157079) (not b!2521056) (not b!2521142) (not b!2521074) (not b!2520824) (not b!2520256) (not b!2520684) (not b!2521057) (not b!2521081) (not b!2521073) (not b!2520781) (not bm!157121) (not b!2520654) (not d!717950) (not b!2520560) (not b!2520325) (not b!2521144) (not b!2520536) (not b!2521054) (not bm!157151) (not b!2521112) (not bm!157141) (not b!2521100) (not b!2520818) (not b!2520557) (not b!2521070) (not bm!157084) (not b!2520890) (not d!718124) (not bm!157010) (not b!2520592) (not bm!157017) (not bm!157157) (not b!2521027) (not b!2521085) (not d!718064) (not bm!157070) (not bm!157135) (not b!2520467) (not b!2521124) (not b!2521062) (not b!2521117) (not bm!157140) (not bm!157153) (not b!2520354) (not b!2521118) (not bm!157134) (not b!2521120) (not b!2520989) (not b!2520332) (not b!2520641) (not b!2520632) (not b!2520471) (not b!2521145) (not b!2520245) (not b!2521050) (not b!2520920) (not b!2520655) (not b!2520918) (not bm!157080) (not b!2521105) (not b!2520310) (not b!2520826) (not b!2520820) (not b!2521089) (not bm!157106) (not b!2520475) (not d!718154) (not b!2521130) (not bm!157103) (not b!2521101) (not b!2520321) (not b!2520785) (not b!2521129) (not b!2521113) (not b!2521133) (not b!2520740) (not b!2521116) (not bm!157111) (not b!2520867) (not b!2520783) (not bm!157093) (not b!2520777) (not b!2520309) (not b!2520788) (not d!718166) (not d!718032) (not b!2521030) (not d!718070) (not bm!157094) (not b!2520797) (not b!2520605) (not b!2521104) (not b!2521097) (not b!2520925) (not d!717906) (not bm!157049) (not b!2521066) (not b!2520774) (not b!2521003) (not bm!157125) (not b!2520683) (not bm!157152) (not bm!157110) (not b!2521148) (not b!2520478) (not b!2521068) (not b!2521110) (not b!2521138) (not b!2521136) (not bm!157158) (not b!2521140) (not bm!157165) (not b!2521072) (not b!2520819) (not b!2521076) (not b!2521088) (not b!2521137) (not b!2521026) (not bm!157118) (not d!718080) (not bm!157124) (not b!2521060) (not b!2520555) (not d!718036) (not bm!157161) (not d!718164) (not b!2520251) tp_is_empty!12865 (not b!2521084) (not d!718144))
(check-sat)
