; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!247276 () Bool)

(assert start!247276)

(declare-fun b!2548714 () Bool)

(declare-fun e!1610830 () Bool)

(declare-fun tp_is_empty!13041 () Bool)

(assert (=> b!2548714 (= e!1610830 tp_is_empty!13041)))

(declare-fun b!2548715 () Bool)

(declare-fun res!1073807 () Bool)

(declare-fun e!1610829 () Bool)

(assert (=> b!2548715 (=> (not res!1073807) (not e!1610829))))

(declare-datatypes ((C!15344 0))(
  ( (C!15345 (val!9324 Int)) )
))
(declare-datatypes ((Regex!7593 0))(
  ( (ElementMatch!7593 (c!408453 C!15344)) (Concat!12289 (regOne!15698 Regex!7593) (regTwo!15698 Regex!7593)) (EmptyExpr!7593) (Star!7593 (reg!7922 Regex!7593)) (EmptyLang!7593) (Union!7593 (regOne!15699 Regex!7593) (regTwo!15699 Regex!7593)) )
))
(declare-fun lt!903132 () Regex!7593)

(declare-datatypes ((List!29658 0))(
  ( (Nil!29558) (Cons!29558 (h!34978 C!15344) (t!211357 List!29658)) )
))
(declare-fun tl!4068 () List!29658)

(declare-fun nullable!2510 (Regex!7593) Bool)

(declare-fun derivative!288 (Regex!7593 List!29658) Regex!7593)

(assert (=> b!2548715 (= res!1073807 (not (nullable!2510 (derivative!288 lt!903132 tl!4068))))))

(declare-fun b!2548716 () Bool)

(declare-fun tp!813290 () Bool)

(declare-fun tp!813289 () Bool)

(assert (=> b!2548716 (= e!1610830 (and tp!813290 tp!813289))))

(declare-fun b!2548717 () Bool)

(declare-fun res!1073801 () Bool)

(declare-fun e!1610832 () Bool)

(assert (=> b!2548717 (=> res!1073801 e!1610832)))

(declare-datatypes ((tuple2!29568 0))(
  ( (tuple2!29569 (_1!17326 List!29658) (_2!17326 List!29658)) )
))
(declare-fun lt!903129 () tuple2!29568)

(declare-fun r!27340 () Regex!7593)

(declare-fun c!14016 () C!15344)

(declare-fun matchR!3540 (Regex!7593 List!29658) Bool)

(assert (=> b!2548717 (= res!1073801 (not (matchR!3540 (reg!7922 r!27340) (Cons!29558 c!14016 (_1!17326 lt!903129)))))))

(declare-fun b!2548718 () Bool)

(declare-fun e!1610825 () Bool)

(declare-fun e!1610826 () Bool)

(assert (=> b!2548718 (= e!1610825 e!1610826)))

(declare-fun res!1073808 () Bool)

(assert (=> b!2548718 (=> (not res!1073808) (not e!1610826))))

(declare-fun lt!903121 () Regex!7593)

(assert (=> b!2548718 (= res!1073808 (nullable!2510 lt!903121))))

(declare-fun lt!903124 () Regex!7593)

(assert (=> b!2548718 (= lt!903121 (derivative!288 lt!903124 tl!4068))))

(declare-fun derivativeStep!2162 (Regex!7593 C!15344) Regex!7593)

(assert (=> b!2548718 (= lt!903124 (derivativeStep!2162 r!27340 c!14016))))

(declare-fun b!2548719 () Bool)

(declare-fun e!1610828 () Bool)

(declare-fun contains!5303 (List!29658 C!15344) Bool)

(declare-fun firstChars!94 (Regex!7593) List!29658)

(assert (=> b!2548719 (= e!1610828 (contains!5303 (firstChars!94 r!27340) c!14016))))

(assert (=> b!2548719 (contains!5303 (firstChars!94 (reg!7922 r!27340)) c!14016)))

(declare-datatypes ((Unit!43375 0))(
  ( (Unit!43376) )
))
(declare-fun lt!903126 () Unit!43375)

(declare-fun lemmaDerivAfterDerivStepIsNullableThenFirstCharsContainsHead!10 (Regex!7593 C!15344 List!29658) Unit!43375)

(assert (=> b!2548719 (= lt!903126 (lemmaDerivAfterDerivStepIsNullableThenFirstCharsContainsHead!10 (reg!7922 r!27340) c!14016 (_1!17326 lt!903129)))))

(declare-fun res!1073805 () Bool)

(assert (=> start!247276 (=> (not res!1073805) (not e!1610825))))

(declare-fun validRegex!3219 (Regex!7593) Bool)

(assert (=> start!247276 (= res!1073805 (validRegex!3219 r!27340))))

(assert (=> start!247276 e!1610825))

(assert (=> start!247276 e!1610830))

(assert (=> start!247276 tp_is_empty!13041))

(declare-fun e!1610831 () Bool)

(assert (=> start!247276 e!1610831))

(declare-fun b!2548720 () Bool)

(declare-fun res!1073812 () Bool)

(assert (=> b!2548720 (=> res!1073812 e!1610828)))

(declare-fun lt!903127 () Regex!7593)

(assert (=> b!2548720 (= res!1073812 (not (nullable!2510 lt!903127)))))

(declare-fun b!2548721 () Bool)

(declare-fun res!1073811 () Bool)

(assert (=> b!2548721 (=> (not res!1073811) (not e!1610826))))

(get-info :version)

(assert (=> b!2548721 (= res!1073811 (and (not ((_ is EmptyExpr!7593) r!27340)) (not ((_ is EmptyLang!7593) r!27340)) (not ((_ is ElementMatch!7593) r!27340)) (not ((_ is Union!7593) r!27340)) ((_ is Star!7593) r!27340)))))

(declare-fun b!2548722 () Bool)

(declare-fun tp!813287 () Bool)

(assert (=> b!2548722 (= e!1610830 tp!813287)))

(declare-fun b!2548723 () Bool)

(declare-fun res!1073803 () Bool)

(assert (=> b!2548723 (=> res!1073803 e!1610832)))

(declare-fun lt!903130 () Regex!7593)

(assert (=> b!2548723 (= res!1073803 (not (matchR!3540 lt!903130 (_2!17326 lt!903129))))))

(declare-fun b!2548724 () Bool)

(declare-fun res!1073809 () Bool)

(assert (=> b!2548724 (=> res!1073809 e!1610832)))

(assert (=> b!2548724 (= res!1073809 (not (matchR!3540 lt!903132 (_1!17326 lt!903129))))))

(declare-fun b!2548725 () Bool)

(assert (=> b!2548725 (= e!1610832 e!1610828)))

(declare-fun res!1073806 () Bool)

(assert (=> b!2548725 (=> res!1073806 e!1610828)))

(assert (=> b!2548725 (= res!1073806 (not (validRegex!3219 (reg!7922 r!27340))))))

(assert (=> b!2548725 (matchR!3540 lt!903127 Nil!29558)))

(assert (=> b!2548725 (= lt!903127 (derivative!288 lt!903132 (_1!17326 lt!903129)))))

(declare-fun lt!903123 () Unit!43375)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!186 (Regex!7593 List!29658) Unit!43375)

(assert (=> b!2548725 (= lt!903123 (lemmaMatchRIsSameAsWholeDerivativeAndNil!186 lt!903132 (_1!17326 lt!903129)))))

(declare-fun b!2548726 () Bool)

(assert (=> b!2548726 (= e!1610826 e!1610829)))

(declare-fun res!1073810 () Bool)

(assert (=> b!2548726 (=> (not res!1073810) (not e!1610829))))

(assert (=> b!2548726 (= res!1073810 (= lt!903124 (Concat!12289 lt!903132 lt!903130)))))

(assert (=> b!2548726 (= lt!903130 (Star!7593 (reg!7922 r!27340)))))

(assert (=> b!2548726 (= lt!903132 (derivativeStep!2162 (reg!7922 r!27340) c!14016))))

(declare-fun b!2548727 () Bool)

(declare-fun tp!813285 () Bool)

(declare-fun tp!813286 () Bool)

(assert (=> b!2548727 (= e!1610830 (and tp!813285 tp!813286))))

(declare-fun b!2548728 () Bool)

(declare-fun e!1610827 () Bool)

(assert (=> b!2548728 (= e!1610827 e!1610832)))

(declare-fun res!1073804 () Bool)

(assert (=> b!2548728 (=> res!1073804 e!1610832)))

(declare-fun ++!7260 (List!29658 List!29658) List!29658)

(assert (=> b!2548728 (= res!1073804 (not (= (++!7260 (_1!17326 lt!903129) (_2!17326 lt!903129)) tl!4068)))))

(declare-datatypes ((Option!5904 0))(
  ( (None!5903) (Some!5903 (v!31842 tuple2!29568)) )
))
(declare-fun lt!903125 () Option!5904)

(declare-fun get!9279 (Option!5904) tuple2!29568)

(assert (=> b!2548728 (= lt!903129 (get!9279 lt!903125))))

(declare-fun isDefined!4726 (Option!5904) Bool)

(assert (=> b!2548728 (isDefined!4726 lt!903125)))

(declare-fun findConcatSeparation!926 (Regex!7593 Regex!7593 List!29658 List!29658 List!29658) Option!5904)

(assert (=> b!2548728 (= lt!903125 (findConcatSeparation!926 lt!903132 lt!903130 Nil!29558 tl!4068 tl!4068))))

(declare-fun lt!903131 () Unit!43375)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!208 (Regex!7593 Regex!7593 List!29658) Unit!43375)

(assert (=> b!2548728 (= lt!903131 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!208 lt!903132 lt!903130 tl!4068))))

(declare-fun b!2548729 () Bool)

(declare-fun tp!813288 () Bool)

(assert (=> b!2548729 (= e!1610831 (and tp_is_empty!13041 tp!813288))))

(declare-fun b!2548730 () Bool)

(assert (=> b!2548730 (= e!1610829 (not e!1610827))))

(declare-fun res!1073802 () Bool)

(assert (=> b!2548730 (=> res!1073802 e!1610827)))

(declare-fun lt!903122 () Bool)

(assert (=> b!2548730 (= res!1073802 (not lt!903122))))

(assert (=> b!2548730 (= lt!903122 (matchR!3540 lt!903121 Nil!29558))))

(assert (=> b!2548730 (= lt!903122 (matchR!3540 lt!903124 tl!4068))))

(declare-fun lt!903128 () Unit!43375)

(assert (=> b!2548730 (= lt!903128 (lemmaMatchRIsSameAsWholeDerivativeAndNil!186 lt!903124 tl!4068))))

(assert (= (and start!247276 res!1073805) b!2548718))

(assert (= (and b!2548718 res!1073808) b!2548721))

(assert (= (and b!2548721 res!1073811) b!2548726))

(assert (= (and b!2548726 res!1073810) b!2548715))

(assert (= (and b!2548715 res!1073807) b!2548730))

(assert (= (and b!2548730 (not res!1073802)) b!2548728))

(assert (= (and b!2548728 (not res!1073804)) b!2548723))

(assert (= (and b!2548723 (not res!1073803)) b!2548717))

(assert (= (and b!2548717 (not res!1073801)) b!2548724))

(assert (= (and b!2548724 (not res!1073809)) b!2548725))

(assert (= (and b!2548725 (not res!1073806)) b!2548720))

(assert (= (and b!2548720 (not res!1073812)) b!2548719))

(assert (= (and start!247276 ((_ is ElementMatch!7593) r!27340)) b!2548714))

(assert (= (and start!247276 ((_ is Concat!12289) r!27340)) b!2548716))

(assert (= (and start!247276 ((_ is Star!7593) r!27340)) b!2548722))

(assert (= (and start!247276 ((_ is Union!7593) r!27340)) b!2548727))

(assert (= (and start!247276 ((_ is Cons!29558) tl!4068)) b!2548729))

(declare-fun m!2892821 () Bool)

(assert (=> b!2548719 m!2892821))

(declare-fun m!2892823 () Bool)

(assert (=> b!2548719 m!2892823))

(assert (=> b!2548719 m!2892821))

(declare-fun m!2892825 () Bool)

(assert (=> b!2548719 m!2892825))

(declare-fun m!2892827 () Bool)

(assert (=> b!2548719 m!2892827))

(declare-fun m!2892829 () Bool)

(assert (=> b!2548719 m!2892829))

(assert (=> b!2548719 m!2892825))

(declare-fun m!2892831 () Bool)

(assert (=> b!2548724 m!2892831))

(declare-fun m!2892833 () Bool)

(assert (=> b!2548720 m!2892833))

(declare-fun m!2892835 () Bool)

(assert (=> start!247276 m!2892835))

(declare-fun m!2892837 () Bool)

(assert (=> b!2548717 m!2892837))

(declare-fun m!2892839 () Bool)

(assert (=> b!2548715 m!2892839))

(assert (=> b!2548715 m!2892839))

(declare-fun m!2892841 () Bool)

(assert (=> b!2548715 m!2892841))

(declare-fun m!2892843 () Bool)

(assert (=> b!2548725 m!2892843))

(declare-fun m!2892845 () Bool)

(assert (=> b!2548725 m!2892845))

(declare-fun m!2892847 () Bool)

(assert (=> b!2548725 m!2892847))

(declare-fun m!2892849 () Bool)

(assert (=> b!2548725 m!2892849))

(declare-fun m!2892851 () Bool)

(assert (=> b!2548723 m!2892851))

(declare-fun m!2892853 () Bool)

(assert (=> b!2548718 m!2892853))

(declare-fun m!2892855 () Bool)

(assert (=> b!2548718 m!2892855))

(declare-fun m!2892857 () Bool)

(assert (=> b!2548718 m!2892857))

(declare-fun m!2892859 () Bool)

(assert (=> b!2548726 m!2892859))

(declare-fun m!2892861 () Bool)

(assert (=> b!2548730 m!2892861))

(declare-fun m!2892863 () Bool)

(assert (=> b!2548730 m!2892863))

(declare-fun m!2892865 () Bool)

(assert (=> b!2548730 m!2892865))

(declare-fun m!2892867 () Bool)

(assert (=> b!2548728 m!2892867))

(declare-fun m!2892869 () Bool)

(assert (=> b!2548728 m!2892869))

(declare-fun m!2892871 () Bool)

(assert (=> b!2548728 m!2892871))

(declare-fun m!2892873 () Bool)

(assert (=> b!2548728 m!2892873))

(declare-fun m!2892875 () Bool)

(assert (=> b!2548728 m!2892875))

(check-sat (not b!2548715) (not b!2548729) (not b!2548724) (not b!2548719) (not b!2548722) (not b!2548725) (not b!2548723) tp_is_empty!13041 (not b!2548726) (not start!247276) (not b!2548727) (not b!2548728) (not b!2548718) (not b!2548716) (not b!2548717) (not b!2548720) (not b!2548730))
(check-sat)
(get-model)

(declare-fun b!2548775 () Bool)

(declare-fun res!1073837 () Bool)

(declare-fun e!1610861 () Bool)

(assert (=> b!2548775 (=> (not res!1073837) (not e!1610861))))

(declare-fun isEmpty!17007 (List!29658) Bool)

(declare-fun tail!4077 (List!29658) List!29658)

(assert (=> b!2548775 (= res!1073837 (isEmpty!17007 (tail!4077 (Cons!29558 c!14016 (_1!17326 lt!903129)))))))

(declare-fun b!2548776 () Bool)

(declare-fun e!1610857 () Bool)

(declare-fun head!5802 (List!29658) C!15344)

(assert (=> b!2548776 (= e!1610857 (matchR!3540 (derivativeStep!2162 (reg!7922 r!27340) (head!5802 (Cons!29558 c!14016 (_1!17326 lt!903129)))) (tail!4077 (Cons!29558 c!14016 (_1!17326 lt!903129)))))))

(declare-fun b!2548777 () Bool)

(declare-fun e!1610859 () Bool)

(declare-fun lt!903147 () Bool)

(assert (=> b!2548777 (= e!1610859 (not lt!903147))))

(declare-fun b!2548778 () Bool)

(declare-fun e!1610862 () Bool)

(declare-fun e!1610860 () Bool)

(assert (=> b!2548778 (= e!1610862 e!1610860)))

(declare-fun res!1073835 () Bool)

(assert (=> b!2548778 (=> (not res!1073835) (not e!1610860))))

(assert (=> b!2548778 (= res!1073835 (not lt!903147))))

(declare-fun b!2548779 () Bool)

(declare-fun res!1073834 () Bool)

(assert (=> b!2548779 (=> res!1073834 e!1610862)))

(assert (=> b!2548779 (= res!1073834 (not ((_ is ElementMatch!7593) (reg!7922 r!27340))))))

(assert (=> b!2548779 (= e!1610859 e!1610862)))

(declare-fun bm!161923 () Bool)

(declare-fun call!161928 () Bool)

(assert (=> bm!161923 (= call!161928 (isEmpty!17007 (Cons!29558 c!14016 (_1!17326 lt!903129))))))

(declare-fun b!2548780 () Bool)

(declare-fun res!1073833 () Bool)

(declare-fun e!1610858 () Bool)

(assert (=> b!2548780 (=> res!1073833 e!1610858)))

(assert (=> b!2548780 (= res!1073833 (not (isEmpty!17007 (tail!4077 (Cons!29558 c!14016 (_1!17326 lt!903129))))))))

(declare-fun b!2548781 () Bool)

(assert (=> b!2548781 (= e!1610861 (= (head!5802 (Cons!29558 c!14016 (_1!17326 lt!903129))) (c!408453 (reg!7922 r!27340))))))

(declare-fun b!2548782 () Bool)

(declare-fun res!1073831 () Bool)

(assert (=> b!2548782 (=> res!1073831 e!1610862)))

(assert (=> b!2548782 (= res!1073831 e!1610861)))

(declare-fun res!1073838 () Bool)

(assert (=> b!2548782 (=> (not res!1073838) (not e!1610861))))

(assert (=> b!2548782 (= res!1073838 lt!903147)))

(declare-fun d!722970 () Bool)

(declare-fun e!1610856 () Bool)

(assert (=> d!722970 e!1610856))

(declare-fun c!408469 () Bool)

(assert (=> d!722970 (= c!408469 ((_ is EmptyExpr!7593) (reg!7922 r!27340)))))

(assert (=> d!722970 (= lt!903147 e!1610857)))

(declare-fun c!408467 () Bool)

(assert (=> d!722970 (= c!408467 (isEmpty!17007 (Cons!29558 c!14016 (_1!17326 lt!903129))))))

(assert (=> d!722970 (validRegex!3219 (reg!7922 r!27340))))

(assert (=> d!722970 (= (matchR!3540 (reg!7922 r!27340) (Cons!29558 c!14016 (_1!17326 lt!903129))) lt!903147)))

(declare-fun b!2548783 () Bool)

(assert (=> b!2548783 (= e!1610856 e!1610859)))

(declare-fun c!408468 () Bool)

(assert (=> b!2548783 (= c!408468 ((_ is EmptyLang!7593) (reg!7922 r!27340)))))

(declare-fun b!2548784 () Bool)

(assert (=> b!2548784 (= e!1610856 (= lt!903147 call!161928))))

(declare-fun b!2548785 () Bool)

(assert (=> b!2548785 (= e!1610858 (not (= (head!5802 (Cons!29558 c!14016 (_1!17326 lt!903129))) (c!408453 (reg!7922 r!27340)))))))

(declare-fun b!2548786 () Bool)

(assert (=> b!2548786 (= e!1610857 (nullable!2510 (reg!7922 r!27340)))))

(declare-fun b!2548787 () Bool)

(assert (=> b!2548787 (= e!1610860 e!1610858)))

(declare-fun res!1073836 () Bool)

(assert (=> b!2548787 (=> res!1073836 e!1610858)))

(assert (=> b!2548787 (= res!1073836 call!161928)))

(declare-fun b!2548788 () Bool)

(declare-fun res!1073832 () Bool)

(assert (=> b!2548788 (=> (not res!1073832) (not e!1610861))))

(assert (=> b!2548788 (= res!1073832 (not call!161928))))

(assert (= (and d!722970 c!408467) b!2548786))

(assert (= (and d!722970 (not c!408467)) b!2548776))

(assert (= (and d!722970 c!408469) b!2548784))

(assert (= (and d!722970 (not c!408469)) b!2548783))

(assert (= (and b!2548783 c!408468) b!2548777))

(assert (= (and b!2548783 (not c!408468)) b!2548779))

(assert (= (and b!2548779 (not res!1073834)) b!2548782))

(assert (= (and b!2548782 res!1073838) b!2548788))

(assert (= (and b!2548788 res!1073832) b!2548775))

(assert (= (and b!2548775 res!1073837) b!2548781))

(assert (= (and b!2548782 (not res!1073831)) b!2548778))

(assert (= (and b!2548778 res!1073835) b!2548787))

(assert (= (and b!2548787 (not res!1073836)) b!2548780))

(assert (= (and b!2548780 (not res!1073833)) b!2548785))

(assert (= (or b!2548784 b!2548787 b!2548788) bm!161923))

(declare-fun m!2892891 () Bool)

(assert (=> b!2548786 m!2892891))

(declare-fun m!2892893 () Bool)

(assert (=> b!2548776 m!2892893))

(assert (=> b!2548776 m!2892893))

(declare-fun m!2892895 () Bool)

(assert (=> b!2548776 m!2892895))

(declare-fun m!2892897 () Bool)

(assert (=> b!2548776 m!2892897))

(assert (=> b!2548776 m!2892895))

(assert (=> b!2548776 m!2892897))

(declare-fun m!2892899 () Bool)

(assert (=> b!2548776 m!2892899))

(declare-fun m!2892901 () Bool)

(assert (=> bm!161923 m!2892901))

(assert (=> b!2548780 m!2892897))

(assert (=> b!2548780 m!2892897))

(declare-fun m!2892903 () Bool)

(assert (=> b!2548780 m!2892903))

(assert (=> d!722970 m!2892901))

(assert (=> d!722970 m!2892843))

(assert (=> b!2548775 m!2892897))

(assert (=> b!2548775 m!2892897))

(assert (=> b!2548775 m!2892903))

(assert (=> b!2548785 m!2892893))

(assert (=> b!2548781 m!2892893))

(assert (=> b!2548717 d!722970))

(declare-fun d!722982 () Bool)

(assert (=> d!722982 (isDefined!4726 (findConcatSeparation!926 lt!903132 lt!903130 Nil!29558 tl!4068 tl!4068))))

(declare-fun lt!903156 () Unit!43375)

(declare-fun choose!15052 (Regex!7593 Regex!7593 List!29658) Unit!43375)

(assert (=> d!722982 (= lt!903156 (choose!15052 lt!903132 lt!903130 tl!4068))))

(assert (=> d!722982 (validRegex!3219 lt!903132)))

(assert (=> d!722982 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!208 lt!903132 lt!903130 tl!4068) lt!903156)))

(declare-fun bs!469573 () Bool)

(assert (= bs!469573 d!722982))

(assert (=> bs!469573 m!2892869))

(assert (=> bs!469573 m!2892869))

(declare-fun m!2892943 () Bool)

(assert (=> bs!469573 m!2892943))

(declare-fun m!2892945 () Bool)

(assert (=> bs!469573 m!2892945))

(declare-fun m!2892947 () Bool)

(assert (=> bs!469573 m!2892947))

(assert (=> b!2548728 d!722982))

(declare-fun b!2548863 () Bool)

(declare-fun e!1610903 () List!29658)

(assert (=> b!2548863 (= e!1610903 (Cons!29558 (h!34978 (_1!17326 lt!903129)) (++!7260 (t!211357 (_1!17326 lt!903129)) (_2!17326 lt!903129))))))

(declare-fun d!722990 () Bool)

(declare-fun e!1610904 () Bool)

(assert (=> d!722990 e!1610904))

(declare-fun res!1073868 () Bool)

(assert (=> d!722990 (=> (not res!1073868) (not e!1610904))))

(declare-fun lt!903162 () List!29658)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4066 (List!29658) (InoxSet C!15344))

(assert (=> d!722990 (= res!1073868 (= (content!4066 lt!903162) ((_ map or) (content!4066 (_1!17326 lt!903129)) (content!4066 (_2!17326 lt!903129)))))))

(assert (=> d!722990 (= lt!903162 e!1610903)))

(declare-fun c!408492 () Bool)

(assert (=> d!722990 (= c!408492 ((_ is Nil!29558) (_1!17326 lt!903129)))))

(assert (=> d!722990 (= (++!7260 (_1!17326 lt!903129) (_2!17326 lt!903129)) lt!903162)))

(declare-fun b!2548865 () Bool)

(assert (=> b!2548865 (= e!1610904 (or (not (= (_2!17326 lt!903129) Nil!29558)) (= lt!903162 (_1!17326 lt!903129))))))

(declare-fun b!2548862 () Bool)

(assert (=> b!2548862 (= e!1610903 (_2!17326 lt!903129))))

(declare-fun b!2548864 () Bool)

(declare-fun res!1073869 () Bool)

(assert (=> b!2548864 (=> (not res!1073869) (not e!1610904))))

(declare-fun size!22946 (List!29658) Int)

(assert (=> b!2548864 (= res!1073869 (= (size!22946 lt!903162) (+ (size!22946 (_1!17326 lt!903129)) (size!22946 (_2!17326 lt!903129)))))))

(assert (= (and d!722990 c!408492) b!2548862))

(assert (= (and d!722990 (not c!408492)) b!2548863))

(assert (= (and d!722990 res!1073868) b!2548864))

(assert (= (and b!2548864 res!1073869) b!2548865))

(declare-fun m!2892963 () Bool)

(assert (=> b!2548863 m!2892963))

(declare-fun m!2892967 () Bool)

(assert (=> d!722990 m!2892967))

(declare-fun m!2892973 () Bool)

(assert (=> d!722990 m!2892973))

(declare-fun m!2892977 () Bool)

(assert (=> d!722990 m!2892977))

(declare-fun m!2892979 () Bool)

(assert (=> b!2548864 m!2892979))

(declare-fun m!2892981 () Bool)

(assert (=> b!2548864 m!2892981))

(declare-fun m!2892983 () Bool)

(assert (=> b!2548864 m!2892983))

(assert (=> b!2548728 d!722990))

(declare-fun d!722998 () Bool)

(declare-fun isEmpty!17008 (Option!5904) Bool)

(assert (=> d!722998 (= (isDefined!4726 lt!903125) (not (isEmpty!17008 lt!903125)))))

(declare-fun bs!469574 () Bool)

(assert (= bs!469574 d!722998))

(declare-fun m!2892985 () Bool)

(assert (=> bs!469574 m!2892985))

(assert (=> b!2548728 d!722998))

(declare-fun b!2549021 () Bool)

(declare-fun e!1610995 () Bool)

(declare-fun lt!903184 () Option!5904)

(assert (=> b!2549021 (= e!1610995 (= (++!7260 (_1!17326 (get!9279 lt!903184)) (_2!17326 (get!9279 lt!903184))) tl!4068))))

(declare-fun b!2549022 () Bool)

(declare-fun e!1610996 () Bool)

(assert (=> b!2549022 (= e!1610996 (matchR!3540 lt!903130 tl!4068))))

(declare-fun b!2549023 () Bool)

(declare-fun e!1610994 () Option!5904)

(declare-fun e!1610993 () Option!5904)

(assert (=> b!2549023 (= e!1610994 e!1610993)))

(declare-fun c!408542 () Bool)

(assert (=> b!2549023 (= c!408542 ((_ is Nil!29558) tl!4068))))

(declare-fun b!2549024 () Bool)

(declare-fun lt!903183 () Unit!43375)

(declare-fun lt!903182 () Unit!43375)

(assert (=> b!2549024 (= lt!903183 lt!903182)))

(assert (=> b!2549024 (= (++!7260 (++!7260 Nil!29558 (Cons!29558 (h!34978 tl!4068) Nil!29558)) (t!211357 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!793 (List!29658 C!15344 List!29658 List!29658) Unit!43375)

(assert (=> b!2549024 (= lt!903182 (lemmaMoveElementToOtherListKeepsConcatEq!793 Nil!29558 (h!34978 tl!4068) (t!211357 tl!4068) tl!4068))))

(assert (=> b!2549024 (= e!1610993 (findConcatSeparation!926 lt!903132 lt!903130 (++!7260 Nil!29558 (Cons!29558 (h!34978 tl!4068) Nil!29558)) (t!211357 tl!4068) tl!4068))))

(declare-fun b!2549025 () Bool)

(declare-fun e!1610992 () Bool)

(assert (=> b!2549025 (= e!1610992 (not (isDefined!4726 lt!903184)))))

(declare-fun b!2549026 () Bool)

(declare-fun res!1073932 () Bool)

(assert (=> b!2549026 (=> (not res!1073932) (not e!1610995))))

(assert (=> b!2549026 (= res!1073932 (matchR!3540 lt!903130 (_2!17326 (get!9279 lt!903184))))))

(declare-fun b!2549027 () Bool)

(declare-fun res!1073930 () Bool)

(assert (=> b!2549027 (=> (not res!1073930) (not e!1610995))))

(assert (=> b!2549027 (= res!1073930 (matchR!3540 lt!903132 (_1!17326 (get!9279 lt!903184))))))

(declare-fun d!723000 () Bool)

(assert (=> d!723000 e!1610992))

(declare-fun res!1073929 () Bool)

(assert (=> d!723000 (=> res!1073929 e!1610992)))

(assert (=> d!723000 (= res!1073929 e!1610995)))

(declare-fun res!1073931 () Bool)

(assert (=> d!723000 (=> (not res!1073931) (not e!1610995))))

(assert (=> d!723000 (= res!1073931 (isDefined!4726 lt!903184))))

(assert (=> d!723000 (= lt!903184 e!1610994)))

(declare-fun c!408543 () Bool)

(assert (=> d!723000 (= c!408543 e!1610996)))

(declare-fun res!1073933 () Bool)

(assert (=> d!723000 (=> (not res!1073933) (not e!1610996))))

(assert (=> d!723000 (= res!1073933 (matchR!3540 lt!903132 Nil!29558))))

(assert (=> d!723000 (validRegex!3219 lt!903132)))

(assert (=> d!723000 (= (findConcatSeparation!926 lt!903132 lt!903130 Nil!29558 tl!4068 tl!4068) lt!903184)))

(declare-fun b!2549028 () Bool)

(assert (=> b!2549028 (= e!1610994 (Some!5903 (tuple2!29569 Nil!29558 tl!4068)))))

(declare-fun b!2549029 () Bool)

(assert (=> b!2549029 (= e!1610993 None!5903)))

(assert (= (and d!723000 res!1073933) b!2549022))

(assert (= (and d!723000 c!408543) b!2549028))

(assert (= (and d!723000 (not c!408543)) b!2549023))

(assert (= (and b!2549023 c!408542) b!2549029))

(assert (= (and b!2549023 (not c!408542)) b!2549024))

(assert (= (and d!723000 res!1073931) b!2549027))

(assert (= (and b!2549027 res!1073930) b!2549026))

(assert (= (and b!2549026 res!1073932) b!2549021))

(assert (= (and d!723000 (not res!1073929)) b!2549025))

(declare-fun m!2893073 () Bool)

(assert (=> b!2549021 m!2893073))

(declare-fun m!2893075 () Bool)

(assert (=> b!2549021 m!2893075))

(assert (=> b!2549026 m!2893073))

(declare-fun m!2893077 () Bool)

(assert (=> b!2549026 m!2893077))

(declare-fun m!2893079 () Bool)

(assert (=> b!2549024 m!2893079))

(assert (=> b!2549024 m!2893079))

(declare-fun m!2893081 () Bool)

(assert (=> b!2549024 m!2893081))

(declare-fun m!2893083 () Bool)

(assert (=> b!2549024 m!2893083))

(assert (=> b!2549024 m!2893079))

(declare-fun m!2893085 () Bool)

(assert (=> b!2549024 m!2893085))

(declare-fun m!2893087 () Bool)

(assert (=> d!723000 m!2893087))

(declare-fun m!2893089 () Bool)

(assert (=> d!723000 m!2893089))

(assert (=> d!723000 m!2892947))

(assert (=> b!2549027 m!2893073))

(declare-fun m!2893091 () Bool)

(assert (=> b!2549027 m!2893091))

(assert (=> b!2549025 m!2893087))

(declare-fun m!2893093 () Bool)

(assert (=> b!2549022 m!2893093))

(assert (=> b!2548728 d!723000))

(declare-fun d!723024 () Bool)

(assert (=> d!723024 (= (get!9279 lt!903125) (v!31842 lt!903125))))

(assert (=> b!2548728 d!723024))

(declare-fun d!723030 () Bool)

(declare-fun nullableFct!735 (Regex!7593) Bool)

(assert (=> d!723030 (= (nullable!2510 lt!903121) (nullableFct!735 lt!903121))))

(declare-fun bs!469579 () Bool)

(assert (= bs!469579 d!723030))

(declare-fun m!2893107 () Bool)

(assert (=> bs!469579 m!2893107))

(assert (=> b!2548718 d!723030))

(declare-fun d!723034 () Bool)

(declare-fun lt!903196 () Regex!7593)

(assert (=> d!723034 (validRegex!3219 lt!903196)))

(declare-fun e!1611045 () Regex!7593)

(assert (=> d!723034 (= lt!903196 e!1611045)))

(declare-fun c!408561 () Bool)

(assert (=> d!723034 (= c!408561 ((_ is Cons!29558) tl!4068))))

(assert (=> d!723034 (validRegex!3219 lt!903124)))

(assert (=> d!723034 (= (derivative!288 lt!903124 tl!4068) lt!903196)))

(declare-fun b!2549136 () Bool)

(assert (=> b!2549136 (= e!1611045 (derivative!288 (derivativeStep!2162 lt!903124 (h!34978 tl!4068)) (t!211357 tl!4068)))))

(declare-fun b!2549137 () Bool)

(assert (=> b!2549137 (= e!1611045 lt!903124)))

(assert (= (and d!723034 c!408561) b!2549136))

(assert (= (and d!723034 (not c!408561)) b!2549137))

(declare-fun m!2893145 () Bool)

(assert (=> d!723034 m!2893145))

(declare-fun m!2893147 () Bool)

(assert (=> d!723034 m!2893147))

(declare-fun m!2893149 () Bool)

(assert (=> b!2549136 m!2893149))

(assert (=> b!2549136 m!2893149))

(declare-fun m!2893151 () Bool)

(assert (=> b!2549136 m!2893151))

(assert (=> b!2548718 d!723034))

(declare-fun b!2549158 () Bool)

(declare-fun e!1611058 () Regex!7593)

(declare-fun call!161994 () Regex!7593)

(assert (=> b!2549158 (= e!1611058 (Concat!12289 call!161994 r!27340))))

(declare-fun call!161995 () Regex!7593)

(declare-fun bm!161988 () Bool)

(declare-fun c!408573 () Bool)

(assert (=> bm!161988 (= call!161995 (derivativeStep!2162 (ite c!408573 (regTwo!15699 r!27340) (regTwo!15698 r!27340)) c!14016))))

(declare-fun b!2549159 () Bool)

(declare-fun e!1611057 () Regex!7593)

(declare-fun call!161996 () Regex!7593)

(assert (=> b!2549159 (= e!1611057 (Union!7593 call!161996 call!161995))))

(declare-fun b!2549160 () Bool)

(assert (=> b!2549160 (= c!408573 ((_ is Union!7593) r!27340))))

(declare-fun e!1611059 () Regex!7593)

(assert (=> b!2549160 (= e!1611059 e!1611057)))

(declare-fun d!723042 () Bool)

(declare-fun lt!903199 () Regex!7593)

(assert (=> d!723042 (validRegex!3219 lt!903199)))

(declare-fun e!1611060 () Regex!7593)

(assert (=> d!723042 (= lt!903199 e!1611060)))

(declare-fun c!408576 () Bool)

(assert (=> d!723042 (= c!408576 (or ((_ is EmptyExpr!7593) r!27340) ((_ is EmptyLang!7593) r!27340)))))

(assert (=> d!723042 (validRegex!3219 r!27340)))

(assert (=> d!723042 (= (derivativeStep!2162 r!27340 c!14016) lt!903199)))

(declare-fun b!2549161 () Bool)

(assert (=> b!2549161 (= e!1611060 EmptyLang!7593)))

(declare-fun b!2549162 () Bool)

(declare-fun e!1611056 () Regex!7593)

(declare-fun call!161993 () Regex!7593)

(assert (=> b!2549162 (= e!1611056 (Union!7593 (Concat!12289 call!161993 (regTwo!15698 r!27340)) EmptyLang!7593))))

(declare-fun b!2549163 () Bool)

(assert (=> b!2549163 (= e!1611056 (Union!7593 (Concat!12289 call!161993 (regTwo!15698 r!27340)) call!161995))))

(declare-fun b!2549164 () Bool)

(assert (=> b!2549164 (= e!1611059 (ite (= c!14016 (c!408453 r!27340)) EmptyExpr!7593 EmptyLang!7593))))

(declare-fun bm!161989 () Bool)

(declare-fun c!408574 () Bool)

(assert (=> bm!161989 (= call!161996 (derivativeStep!2162 (ite c!408573 (regOne!15699 r!27340) (ite c!408574 (reg!7922 r!27340) (regOne!15698 r!27340))) c!14016))))

(declare-fun b!2549165 () Bool)

(assert (=> b!2549165 (= e!1611057 e!1611058)))

(assert (=> b!2549165 (= c!408574 ((_ is Star!7593) r!27340))))

(declare-fun b!2549166 () Bool)

(assert (=> b!2549166 (= e!1611060 e!1611059)))

(declare-fun c!408575 () Bool)

(assert (=> b!2549166 (= c!408575 ((_ is ElementMatch!7593) r!27340))))

(declare-fun bm!161990 () Bool)

(assert (=> bm!161990 (= call!161993 call!161994)))

(declare-fun bm!161991 () Bool)

(assert (=> bm!161991 (= call!161994 call!161996)))

(declare-fun b!2549167 () Bool)

(declare-fun c!408572 () Bool)

(assert (=> b!2549167 (= c!408572 (nullable!2510 (regOne!15698 r!27340)))))

(assert (=> b!2549167 (= e!1611058 e!1611056)))

(assert (= (and d!723042 c!408576) b!2549161))

(assert (= (and d!723042 (not c!408576)) b!2549166))

(assert (= (and b!2549166 c!408575) b!2549164))

(assert (= (and b!2549166 (not c!408575)) b!2549160))

(assert (= (and b!2549160 c!408573) b!2549159))

(assert (= (and b!2549160 (not c!408573)) b!2549165))

(assert (= (and b!2549165 c!408574) b!2549158))

(assert (= (and b!2549165 (not c!408574)) b!2549167))

(assert (= (and b!2549167 c!408572) b!2549163))

(assert (= (and b!2549167 (not c!408572)) b!2549162))

(assert (= (or b!2549163 b!2549162) bm!161990))

(assert (= (or b!2549158 bm!161990) bm!161991))

(assert (= (or b!2549159 b!2549163) bm!161988))

(assert (= (or b!2549159 bm!161991) bm!161989))

(declare-fun m!2893153 () Bool)

(assert (=> bm!161988 m!2893153))

(declare-fun m!2893155 () Bool)

(assert (=> d!723042 m!2893155))

(assert (=> d!723042 m!2892835))

(declare-fun m!2893157 () Bool)

(assert (=> bm!161989 m!2893157))

(declare-fun m!2893159 () Bool)

(assert (=> b!2549167 m!2893159))

(assert (=> b!2548718 d!723042))

(declare-fun b!2549168 () Bool)

(declare-fun res!1073977 () Bool)

(declare-fun e!1611066 () Bool)

(assert (=> b!2549168 (=> (not res!1073977) (not e!1611066))))

(assert (=> b!2549168 (= res!1073977 (isEmpty!17007 (tail!4077 (_1!17326 lt!903129))))))

(declare-fun b!2549169 () Bool)

(declare-fun e!1611062 () Bool)

(assert (=> b!2549169 (= e!1611062 (matchR!3540 (derivativeStep!2162 lt!903132 (head!5802 (_1!17326 lt!903129))) (tail!4077 (_1!17326 lt!903129))))))

(declare-fun b!2549170 () Bool)

(declare-fun e!1611064 () Bool)

(declare-fun lt!903200 () Bool)

(assert (=> b!2549170 (= e!1611064 (not lt!903200))))

(declare-fun b!2549171 () Bool)

(declare-fun e!1611067 () Bool)

(declare-fun e!1611065 () Bool)

(assert (=> b!2549171 (= e!1611067 e!1611065)))

(declare-fun res!1073975 () Bool)

(assert (=> b!2549171 (=> (not res!1073975) (not e!1611065))))

(assert (=> b!2549171 (= res!1073975 (not lt!903200))))

(declare-fun b!2549172 () Bool)

(declare-fun res!1073974 () Bool)

(assert (=> b!2549172 (=> res!1073974 e!1611067)))

(assert (=> b!2549172 (= res!1073974 (not ((_ is ElementMatch!7593) lt!903132)))))

(assert (=> b!2549172 (= e!1611064 e!1611067)))

(declare-fun bm!161992 () Bool)

(declare-fun call!161997 () Bool)

(assert (=> bm!161992 (= call!161997 (isEmpty!17007 (_1!17326 lt!903129)))))

(declare-fun b!2549173 () Bool)

(declare-fun res!1073973 () Bool)

(declare-fun e!1611063 () Bool)

(assert (=> b!2549173 (=> res!1073973 e!1611063)))

(assert (=> b!2549173 (= res!1073973 (not (isEmpty!17007 (tail!4077 (_1!17326 lt!903129)))))))

(declare-fun b!2549174 () Bool)

(assert (=> b!2549174 (= e!1611066 (= (head!5802 (_1!17326 lt!903129)) (c!408453 lt!903132)))))

(declare-fun b!2549175 () Bool)

(declare-fun res!1073971 () Bool)

(assert (=> b!2549175 (=> res!1073971 e!1611067)))

(assert (=> b!2549175 (= res!1073971 e!1611066)))

(declare-fun res!1073978 () Bool)

(assert (=> b!2549175 (=> (not res!1073978) (not e!1611066))))

(assert (=> b!2549175 (= res!1073978 lt!903200)))

(declare-fun d!723044 () Bool)

(declare-fun e!1611061 () Bool)

(assert (=> d!723044 e!1611061))

(declare-fun c!408579 () Bool)

(assert (=> d!723044 (= c!408579 ((_ is EmptyExpr!7593) lt!903132))))

(assert (=> d!723044 (= lt!903200 e!1611062)))

(declare-fun c!408577 () Bool)

(assert (=> d!723044 (= c!408577 (isEmpty!17007 (_1!17326 lt!903129)))))

(assert (=> d!723044 (validRegex!3219 lt!903132)))

(assert (=> d!723044 (= (matchR!3540 lt!903132 (_1!17326 lt!903129)) lt!903200)))

(declare-fun b!2549176 () Bool)

(assert (=> b!2549176 (= e!1611061 e!1611064)))

(declare-fun c!408578 () Bool)

(assert (=> b!2549176 (= c!408578 ((_ is EmptyLang!7593) lt!903132))))

(declare-fun b!2549177 () Bool)

(assert (=> b!2549177 (= e!1611061 (= lt!903200 call!161997))))

(declare-fun b!2549178 () Bool)

(assert (=> b!2549178 (= e!1611063 (not (= (head!5802 (_1!17326 lt!903129)) (c!408453 lt!903132))))))

(declare-fun b!2549179 () Bool)

(assert (=> b!2549179 (= e!1611062 (nullable!2510 lt!903132))))

(declare-fun b!2549180 () Bool)

(assert (=> b!2549180 (= e!1611065 e!1611063)))

(declare-fun res!1073976 () Bool)

(assert (=> b!2549180 (=> res!1073976 e!1611063)))

(assert (=> b!2549180 (= res!1073976 call!161997)))

(declare-fun b!2549181 () Bool)

(declare-fun res!1073972 () Bool)

(assert (=> b!2549181 (=> (not res!1073972) (not e!1611066))))

(assert (=> b!2549181 (= res!1073972 (not call!161997))))

(assert (= (and d!723044 c!408577) b!2549179))

(assert (= (and d!723044 (not c!408577)) b!2549169))

(assert (= (and d!723044 c!408579) b!2549177))

(assert (= (and d!723044 (not c!408579)) b!2549176))

(assert (= (and b!2549176 c!408578) b!2549170))

(assert (= (and b!2549176 (not c!408578)) b!2549172))

(assert (= (and b!2549172 (not res!1073974)) b!2549175))

(assert (= (and b!2549175 res!1073978) b!2549181))

(assert (= (and b!2549181 res!1073972) b!2549168))

(assert (= (and b!2549168 res!1073977) b!2549174))

(assert (= (and b!2549175 (not res!1073971)) b!2549171))

(assert (= (and b!2549171 res!1073975) b!2549180))

(assert (= (and b!2549180 (not res!1073976)) b!2549173))

(assert (= (and b!2549173 (not res!1073973)) b!2549178))

(assert (= (or b!2549177 b!2549180 b!2549181) bm!161992))

(declare-fun m!2893161 () Bool)

(assert (=> b!2549179 m!2893161))

(declare-fun m!2893163 () Bool)

(assert (=> b!2549169 m!2893163))

(assert (=> b!2549169 m!2893163))

(declare-fun m!2893165 () Bool)

(assert (=> b!2549169 m!2893165))

(declare-fun m!2893167 () Bool)

(assert (=> b!2549169 m!2893167))

(assert (=> b!2549169 m!2893165))

(assert (=> b!2549169 m!2893167))

(declare-fun m!2893169 () Bool)

(assert (=> b!2549169 m!2893169))

(declare-fun m!2893171 () Bool)

(assert (=> bm!161992 m!2893171))

(assert (=> b!2549173 m!2893167))

(assert (=> b!2549173 m!2893167))

(declare-fun m!2893173 () Bool)

(assert (=> b!2549173 m!2893173))

(assert (=> d!723044 m!2893171))

(assert (=> d!723044 m!2892947))

(assert (=> b!2549168 m!2893167))

(assert (=> b!2549168 m!2893167))

(assert (=> b!2549168 m!2893173))

(assert (=> b!2549178 m!2893163))

(assert (=> b!2549174 m!2893163))

(assert (=> b!2548724 d!723044))

(declare-fun b!2549200 () Bool)

(declare-fun e!1611088 () Bool)

(declare-fun e!1611083 () Bool)

(assert (=> b!2549200 (= e!1611088 e!1611083)))

(declare-fun c!408585 () Bool)

(assert (=> b!2549200 (= c!408585 ((_ is Union!7593) (reg!7922 r!27340)))))

(declare-fun d!723046 () Bool)

(declare-fun res!1073989 () Bool)

(declare-fun e!1611087 () Bool)

(assert (=> d!723046 (=> res!1073989 e!1611087)))

(assert (=> d!723046 (= res!1073989 ((_ is ElementMatch!7593) (reg!7922 r!27340)))))

(assert (=> d!723046 (= (validRegex!3219 (reg!7922 r!27340)) e!1611087)))

(declare-fun b!2549201 () Bool)

(assert (=> b!2549201 (= e!1611087 e!1611088)))

(declare-fun c!408584 () Bool)

(assert (=> b!2549201 (= c!408584 ((_ is Star!7593) (reg!7922 r!27340)))))

(declare-fun b!2549202 () Bool)

(declare-fun e!1611082 () Bool)

(declare-fun call!162006 () Bool)

(assert (=> b!2549202 (= e!1611082 call!162006)))

(declare-fun b!2549203 () Bool)

(declare-fun e!1611084 () Bool)

(assert (=> b!2549203 (= e!1611088 e!1611084)))

(declare-fun res!1073991 () Bool)

(assert (=> b!2549203 (= res!1073991 (not (nullable!2510 (reg!7922 (reg!7922 r!27340)))))))

(assert (=> b!2549203 (=> (not res!1073991) (not e!1611084))))

(declare-fun b!2549204 () Bool)

(declare-fun e!1611086 () Bool)

(declare-fun call!162004 () Bool)

(assert (=> b!2549204 (= e!1611086 call!162004)))

(declare-fun bm!161999 () Bool)

(declare-fun call!162005 () Bool)

(assert (=> bm!161999 (= call!162005 (validRegex!3219 (ite c!408584 (reg!7922 (reg!7922 r!27340)) (ite c!408585 (regOne!15699 (reg!7922 r!27340)) (regTwo!15698 (reg!7922 r!27340))))))))

(declare-fun bm!162000 () Bool)

(assert (=> bm!162000 (= call!162006 (validRegex!3219 (ite c!408585 (regTwo!15699 (reg!7922 r!27340)) (regOne!15698 (reg!7922 r!27340)))))))

(declare-fun b!2549205 () Bool)

(declare-fun res!1073992 () Bool)

(assert (=> b!2549205 (=> (not res!1073992) (not e!1611082))))

(assert (=> b!2549205 (= res!1073992 call!162004)))

(assert (=> b!2549205 (= e!1611083 e!1611082)))

(declare-fun bm!162001 () Bool)

(assert (=> bm!162001 (= call!162004 call!162005)))

(declare-fun b!2549206 () Bool)

(assert (=> b!2549206 (= e!1611084 call!162005)))

(declare-fun b!2549207 () Bool)

(declare-fun res!1073990 () Bool)

(declare-fun e!1611085 () Bool)

(assert (=> b!2549207 (=> res!1073990 e!1611085)))

(assert (=> b!2549207 (= res!1073990 (not ((_ is Concat!12289) (reg!7922 r!27340))))))

(assert (=> b!2549207 (= e!1611083 e!1611085)))

(declare-fun b!2549208 () Bool)

(assert (=> b!2549208 (= e!1611085 e!1611086)))

(declare-fun res!1073993 () Bool)

(assert (=> b!2549208 (=> (not res!1073993) (not e!1611086))))

(assert (=> b!2549208 (= res!1073993 call!162006)))

(assert (= (and d!723046 (not res!1073989)) b!2549201))

(assert (= (and b!2549201 c!408584) b!2549203))

(assert (= (and b!2549201 (not c!408584)) b!2549200))

(assert (= (and b!2549203 res!1073991) b!2549206))

(assert (= (and b!2549200 c!408585) b!2549205))

(assert (= (and b!2549200 (not c!408585)) b!2549207))

(assert (= (and b!2549205 res!1073992) b!2549202))

(assert (= (and b!2549207 (not res!1073990)) b!2549208))

(assert (= (and b!2549208 res!1073993) b!2549204))

(assert (= (or b!2549205 b!2549204) bm!162001))

(assert (= (or b!2549202 b!2549208) bm!162000))

(assert (= (or b!2549206 bm!162001) bm!161999))

(declare-fun m!2893175 () Bool)

(assert (=> b!2549203 m!2893175))

(declare-fun m!2893177 () Bool)

(assert (=> bm!161999 m!2893177))

(declare-fun m!2893179 () Bool)

(assert (=> bm!162000 m!2893179))

(assert (=> b!2548725 d!723046))

(declare-fun b!2549209 () Bool)

(declare-fun res!1074000 () Bool)

(declare-fun e!1611094 () Bool)

(assert (=> b!2549209 (=> (not res!1074000) (not e!1611094))))

(assert (=> b!2549209 (= res!1074000 (isEmpty!17007 (tail!4077 Nil!29558)))))

(declare-fun b!2549210 () Bool)

(declare-fun e!1611090 () Bool)

(assert (=> b!2549210 (= e!1611090 (matchR!3540 (derivativeStep!2162 lt!903127 (head!5802 Nil!29558)) (tail!4077 Nil!29558)))))

(declare-fun b!2549211 () Bool)

(declare-fun e!1611092 () Bool)

(declare-fun lt!903201 () Bool)

(assert (=> b!2549211 (= e!1611092 (not lt!903201))))

(declare-fun b!2549212 () Bool)

(declare-fun e!1611095 () Bool)

(declare-fun e!1611093 () Bool)

(assert (=> b!2549212 (= e!1611095 e!1611093)))

(declare-fun res!1073998 () Bool)

(assert (=> b!2549212 (=> (not res!1073998) (not e!1611093))))

(assert (=> b!2549212 (= res!1073998 (not lt!903201))))

(declare-fun b!2549213 () Bool)

(declare-fun res!1073997 () Bool)

(assert (=> b!2549213 (=> res!1073997 e!1611095)))

(assert (=> b!2549213 (= res!1073997 (not ((_ is ElementMatch!7593) lt!903127)))))

(assert (=> b!2549213 (= e!1611092 e!1611095)))

(declare-fun bm!162002 () Bool)

(declare-fun call!162007 () Bool)

(assert (=> bm!162002 (= call!162007 (isEmpty!17007 Nil!29558))))

(declare-fun b!2549214 () Bool)

(declare-fun res!1073996 () Bool)

(declare-fun e!1611091 () Bool)

(assert (=> b!2549214 (=> res!1073996 e!1611091)))

(assert (=> b!2549214 (= res!1073996 (not (isEmpty!17007 (tail!4077 Nil!29558))))))

(declare-fun b!2549215 () Bool)

(assert (=> b!2549215 (= e!1611094 (= (head!5802 Nil!29558) (c!408453 lt!903127)))))

(declare-fun b!2549216 () Bool)

(declare-fun res!1073994 () Bool)

(assert (=> b!2549216 (=> res!1073994 e!1611095)))

(assert (=> b!2549216 (= res!1073994 e!1611094)))

(declare-fun res!1074001 () Bool)

(assert (=> b!2549216 (=> (not res!1074001) (not e!1611094))))

(assert (=> b!2549216 (= res!1074001 lt!903201)))

(declare-fun d!723048 () Bool)

(declare-fun e!1611089 () Bool)

(assert (=> d!723048 e!1611089))

(declare-fun c!408588 () Bool)

(assert (=> d!723048 (= c!408588 ((_ is EmptyExpr!7593) lt!903127))))

(assert (=> d!723048 (= lt!903201 e!1611090)))

(declare-fun c!408586 () Bool)

(assert (=> d!723048 (= c!408586 (isEmpty!17007 Nil!29558))))

(assert (=> d!723048 (validRegex!3219 lt!903127)))

(assert (=> d!723048 (= (matchR!3540 lt!903127 Nil!29558) lt!903201)))

(declare-fun b!2549217 () Bool)

(assert (=> b!2549217 (= e!1611089 e!1611092)))

(declare-fun c!408587 () Bool)

(assert (=> b!2549217 (= c!408587 ((_ is EmptyLang!7593) lt!903127))))

(declare-fun b!2549218 () Bool)

(assert (=> b!2549218 (= e!1611089 (= lt!903201 call!162007))))

(declare-fun b!2549219 () Bool)

(assert (=> b!2549219 (= e!1611091 (not (= (head!5802 Nil!29558) (c!408453 lt!903127))))))

(declare-fun b!2549220 () Bool)

(assert (=> b!2549220 (= e!1611090 (nullable!2510 lt!903127))))

(declare-fun b!2549221 () Bool)

(assert (=> b!2549221 (= e!1611093 e!1611091)))

(declare-fun res!1073999 () Bool)

(assert (=> b!2549221 (=> res!1073999 e!1611091)))

(assert (=> b!2549221 (= res!1073999 call!162007)))

(declare-fun b!2549222 () Bool)

(declare-fun res!1073995 () Bool)

(assert (=> b!2549222 (=> (not res!1073995) (not e!1611094))))

(assert (=> b!2549222 (= res!1073995 (not call!162007))))

(assert (= (and d!723048 c!408586) b!2549220))

(assert (= (and d!723048 (not c!408586)) b!2549210))

(assert (= (and d!723048 c!408588) b!2549218))

(assert (= (and d!723048 (not c!408588)) b!2549217))

(assert (= (and b!2549217 c!408587) b!2549211))

(assert (= (and b!2549217 (not c!408587)) b!2549213))

(assert (= (and b!2549213 (not res!1073997)) b!2549216))

(assert (= (and b!2549216 res!1074001) b!2549222))

(assert (= (and b!2549222 res!1073995) b!2549209))

(assert (= (and b!2549209 res!1074000) b!2549215))

(assert (= (and b!2549216 (not res!1073994)) b!2549212))

(assert (= (and b!2549212 res!1073998) b!2549221))

(assert (= (and b!2549221 (not res!1073999)) b!2549214))

(assert (= (and b!2549214 (not res!1073996)) b!2549219))

(assert (= (or b!2549218 b!2549221 b!2549222) bm!162002))

(assert (=> b!2549220 m!2892833))

(declare-fun m!2893181 () Bool)

(assert (=> b!2549210 m!2893181))

(assert (=> b!2549210 m!2893181))

(declare-fun m!2893183 () Bool)

(assert (=> b!2549210 m!2893183))

(declare-fun m!2893185 () Bool)

(assert (=> b!2549210 m!2893185))

(assert (=> b!2549210 m!2893183))

(assert (=> b!2549210 m!2893185))

(declare-fun m!2893187 () Bool)

(assert (=> b!2549210 m!2893187))

(declare-fun m!2893189 () Bool)

(assert (=> bm!162002 m!2893189))

(assert (=> b!2549214 m!2893185))

(assert (=> b!2549214 m!2893185))

(declare-fun m!2893191 () Bool)

(assert (=> b!2549214 m!2893191))

(assert (=> d!723048 m!2893189))

(declare-fun m!2893193 () Bool)

(assert (=> d!723048 m!2893193))

(assert (=> b!2549209 m!2893185))

(assert (=> b!2549209 m!2893185))

(assert (=> b!2549209 m!2893191))

(assert (=> b!2549219 m!2893181))

(assert (=> b!2549215 m!2893181))

(assert (=> b!2548725 d!723048))

(declare-fun d!723050 () Bool)

(declare-fun lt!903202 () Regex!7593)

(assert (=> d!723050 (validRegex!3219 lt!903202)))

(declare-fun e!1611096 () Regex!7593)

(assert (=> d!723050 (= lt!903202 e!1611096)))

(declare-fun c!408589 () Bool)

(assert (=> d!723050 (= c!408589 ((_ is Cons!29558) (_1!17326 lt!903129)))))

(assert (=> d!723050 (validRegex!3219 lt!903132)))

(assert (=> d!723050 (= (derivative!288 lt!903132 (_1!17326 lt!903129)) lt!903202)))

(declare-fun b!2549223 () Bool)

(assert (=> b!2549223 (= e!1611096 (derivative!288 (derivativeStep!2162 lt!903132 (h!34978 (_1!17326 lt!903129))) (t!211357 (_1!17326 lt!903129))))))

(declare-fun b!2549224 () Bool)

(assert (=> b!2549224 (= e!1611096 lt!903132)))

(assert (= (and d!723050 c!408589) b!2549223))

(assert (= (and d!723050 (not c!408589)) b!2549224))

(declare-fun m!2893195 () Bool)

(assert (=> d!723050 m!2893195))

(assert (=> d!723050 m!2892947))

(declare-fun m!2893197 () Bool)

(assert (=> b!2549223 m!2893197))

(assert (=> b!2549223 m!2893197))

(declare-fun m!2893199 () Bool)

(assert (=> b!2549223 m!2893199))

(assert (=> b!2548725 d!723050))

(declare-fun d!723052 () Bool)

(assert (=> d!723052 (= (matchR!3540 lt!903132 (_1!17326 lt!903129)) (matchR!3540 (derivative!288 lt!903132 (_1!17326 lt!903129)) Nil!29558))))

(declare-fun lt!903205 () Unit!43375)

(declare-fun choose!15054 (Regex!7593 List!29658) Unit!43375)

(assert (=> d!723052 (= lt!903205 (choose!15054 lt!903132 (_1!17326 lt!903129)))))

(assert (=> d!723052 (validRegex!3219 lt!903132)))

(assert (=> d!723052 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!186 lt!903132 (_1!17326 lt!903129)) lt!903205)))

(declare-fun bs!469581 () Bool)

(assert (= bs!469581 d!723052))

(assert (=> bs!469581 m!2892847))

(assert (=> bs!469581 m!2892847))

(declare-fun m!2893201 () Bool)

(assert (=> bs!469581 m!2893201))

(assert (=> bs!469581 m!2892947))

(assert (=> bs!469581 m!2892831))

(declare-fun m!2893203 () Bool)

(assert (=> bs!469581 m!2893203))

(assert (=> b!2548725 d!723052))

(declare-fun d!723054 () Bool)

(assert (=> d!723054 (= (nullable!2510 (derivative!288 lt!903132 tl!4068)) (nullableFct!735 (derivative!288 lt!903132 tl!4068)))))

(declare-fun bs!469582 () Bool)

(assert (= bs!469582 d!723054))

(assert (=> bs!469582 m!2892839))

(declare-fun m!2893205 () Bool)

(assert (=> bs!469582 m!2893205))

(assert (=> b!2548715 d!723054))

(declare-fun d!723056 () Bool)

(declare-fun lt!903206 () Regex!7593)

(assert (=> d!723056 (validRegex!3219 lt!903206)))

(declare-fun e!1611097 () Regex!7593)

(assert (=> d!723056 (= lt!903206 e!1611097)))

(declare-fun c!408590 () Bool)

(assert (=> d!723056 (= c!408590 ((_ is Cons!29558) tl!4068))))

(assert (=> d!723056 (validRegex!3219 lt!903132)))

(assert (=> d!723056 (= (derivative!288 lt!903132 tl!4068) lt!903206)))

(declare-fun b!2549225 () Bool)

(assert (=> b!2549225 (= e!1611097 (derivative!288 (derivativeStep!2162 lt!903132 (h!34978 tl!4068)) (t!211357 tl!4068)))))

(declare-fun b!2549226 () Bool)

(assert (=> b!2549226 (= e!1611097 lt!903132)))

(assert (= (and d!723056 c!408590) b!2549225))

(assert (= (and d!723056 (not c!408590)) b!2549226))

(declare-fun m!2893207 () Bool)

(assert (=> d!723056 m!2893207))

(assert (=> d!723056 m!2892947))

(declare-fun m!2893209 () Bool)

(assert (=> b!2549225 m!2893209))

(assert (=> b!2549225 m!2893209))

(declare-fun m!2893211 () Bool)

(assert (=> b!2549225 m!2893211))

(assert (=> b!2548715 d!723056))

(declare-fun b!2549227 () Bool)

(declare-fun e!1611100 () Regex!7593)

(declare-fun call!162009 () Regex!7593)

(assert (=> b!2549227 (= e!1611100 (Concat!12289 call!162009 (reg!7922 r!27340)))))

(declare-fun bm!162003 () Bool)

(declare-fun call!162010 () Regex!7593)

(declare-fun c!408592 () Bool)

(assert (=> bm!162003 (= call!162010 (derivativeStep!2162 (ite c!408592 (regTwo!15699 (reg!7922 r!27340)) (regTwo!15698 (reg!7922 r!27340))) c!14016))))

(declare-fun b!2549228 () Bool)

(declare-fun e!1611099 () Regex!7593)

(declare-fun call!162011 () Regex!7593)

(assert (=> b!2549228 (= e!1611099 (Union!7593 call!162011 call!162010))))

(declare-fun b!2549229 () Bool)

(assert (=> b!2549229 (= c!408592 ((_ is Union!7593) (reg!7922 r!27340)))))

(declare-fun e!1611101 () Regex!7593)

(assert (=> b!2549229 (= e!1611101 e!1611099)))

(declare-fun d!723058 () Bool)

(declare-fun lt!903207 () Regex!7593)

(assert (=> d!723058 (validRegex!3219 lt!903207)))

(declare-fun e!1611102 () Regex!7593)

(assert (=> d!723058 (= lt!903207 e!1611102)))

(declare-fun c!408595 () Bool)

(assert (=> d!723058 (= c!408595 (or ((_ is EmptyExpr!7593) (reg!7922 r!27340)) ((_ is EmptyLang!7593) (reg!7922 r!27340))))))

(assert (=> d!723058 (validRegex!3219 (reg!7922 r!27340))))

(assert (=> d!723058 (= (derivativeStep!2162 (reg!7922 r!27340) c!14016) lt!903207)))

(declare-fun b!2549230 () Bool)

(assert (=> b!2549230 (= e!1611102 EmptyLang!7593)))

(declare-fun b!2549231 () Bool)

(declare-fun e!1611098 () Regex!7593)

(declare-fun call!162008 () Regex!7593)

(assert (=> b!2549231 (= e!1611098 (Union!7593 (Concat!12289 call!162008 (regTwo!15698 (reg!7922 r!27340))) EmptyLang!7593))))

(declare-fun b!2549232 () Bool)

(assert (=> b!2549232 (= e!1611098 (Union!7593 (Concat!12289 call!162008 (regTwo!15698 (reg!7922 r!27340))) call!162010))))

(declare-fun b!2549233 () Bool)

(assert (=> b!2549233 (= e!1611101 (ite (= c!14016 (c!408453 (reg!7922 r!27340))) EmptyExpr!7593 EmptyLang!7593))))

(declare-fun bm!162004 () Bool)

(declare-fun c!408593 () Bool)

(assert (=> bm!162004 (= call!162011 (derivativeStep!2162 (ite c!408592 (regOne!15699 (reg!7922 r!27340)) (ite c!408593 (reg!7922 (reg!7922 r!27340)) (regOne!15698 (reg!7922 r!27340)))) c!14016))))

(declare-fun b!2549234 () Bool)

(assert (=> b!2549234 (= e!1611099 e!1611100)))

(assert (=> b!2549234 (= c!408593 ((_ is Star!7593) (reg!7922 r!27340)))))

(declare-fun b!2549235 () Bool)

(assert (=> b!2549235 (= e!1611102 e!1611101)))

(declare-fun c!408594 () Bool)

(assert (=> b!2549235 (= c!408594 ((_ is ElementMatch!7593) (reg!7922 r!27340)))))

(declare-fun bm!162005 () Bool)

(assert (=> bm!162005 (= call!162008 call!162009)))

(declare-fun bm!162006 () Bool)

(assert (=> bm!162006 (= call!162009 call!162011)))

(declare-fun b!2549236 () Bool)

(declare-fun c!408591 () Bool)

(assert (=> b!2549236 (= c!408591 (nullable!2510 (regOne!15698 (reg!7922 r!27340))))))

(assert (=> b!2549236 (= e!1611100 e!1611098)))

(assert (= (and d!723058 c!408595) b!2549230))

(assert (= (and d!723058 (not c!408595)) b!2549235))

(assert (= (and b!2549235 c!408594) b!2549233))

(assert (= (and b!2549235 (not c!408594)) b!2549229))

(assert (= (and b!2549229 c!408592) b!2549228))

(assert (= (and b!2549229 (not c!408592)) b!2549234))

(assert (= (and b!2549234 c!408593) b!2549227))

(assert (= (and b!2549234 (not c!408593)) b!2549236))

(assert (= (and b!2549236 c!408591) b!2549232))

(assert (= (and b!2549236 (not c!408591)) b!2549231))

(assert (= (or b!2549232 b!2549231) bm!162005))

(assert (= (or b!2549227 bm!162005) bm!162006))

(assert (= (or b!2549228 b!2549232) bm!162003))

(assert (= (or b!2549228 bm!162006) bm!162004))

(declare-fun m!2893213 () Bool)

(assert (=> bm!162003 m!2893213))

(declare-fun m!2893215 () Bool)

(assert (=> d!723058 m!2893215))

(assert (=> d!723058 m!2892843))

(declare-fun m!2893217 () Bool)

(assert (=> bm!162004 m!2893217))

(declare-fun m!2893219 () Bool)

(assert (=> b!2549236 m!2893219))

(assert (=> b!2548726 d!723058))

(declare-fun b!2549237 () Bool)

(declare-fun e!1611109 () Bool)

(declare-fun e!1611104 () Bool)

(assert (=> b!2549237 (= e!1611109 e!1611104)))

(declare-fun c!408597 () Bool)

(assert (=> b!2549237 (= c!408597 ((_ is Union!7593) r!27340))))

(declare-fun d!723060 () Bool)

(declare-fun res!1074002 () Bool)

(declare-fun e!1611108 () Bool)

(assert (=> d!723060 (=> res!1074002 e!1611108)))

(assert (=> d!723060 (= res!1074002 ((_ is ElementMatch!7593) r!27340))))

(assert (=> d!723060 (= (validRegex!3219 r!27340) e!1611108)))

(declare-fun b!2549238 () Bool)

(assert (=> b!2549238 (= e!1611108 e!1611109)))

(declare-fun c!408596 () Bool)

(assert (=> b!2549238 (= c!408596 ((_ is Star!7593) r!27340))))

(declare-fun b!2549239 () Bool)

(declare-fun e!1611103 () Bool)

(declare-fun call!162014 () Bool)

(assert (=> b!2549239 (= e!1611103 call!162014)))

(declare-fun b!2549240 () Bool)

(declare-fun e!1611105 () Bool)

(assert (=> b!2549240 (= e!1611109 e!1611105)))

(declare-fun res!1074004 () Bool)

(assert (=> b!2549240 (= res!1074004 (not (nullable!2510 (reg!7922 r!27340))))))

(assert (=> b!2549240 (=> (not res!1074004) (not e!1611105))))

(declare-fun b!2549241 () Bool)

(declare-fun e!1611107 () Bool)

(declare-fun call!162012 () Bool)

(assert (=> b!2549241 (= e!1611107 call!162012)))

(declare-fun bm!162007 () Bool)

(declare-fun call!162013 () Bool)

(assert (=> bm!162007 (= call!162013 (validRegex!3219 (ite c!408596 (reg!7922 r!27340) (ite c!408597 (regOne!15699 r!27340) (regTwo!15698 r!27340)))))))

(declare-fun bm!162008 () Bool)

(assert (=> bm!162008 (= call!162014 (validRegex!3219 (ite c!408597 (regTwo!15699 r!27340) (regOne!15698 r!27340))))))

(declare-fun b!2549242 () Bool)

(declare-fun res!1074005 () Bool)

(assert (=> b!2549242 (=> (not res!1074005) (not e!1611103))))

(assert (=> b!2549242 (= res!1074005 call!162012)))

(assert (=> b!2549242 (= e!1611104 e!1611103)))

(declare-fun bm!162009 () Bool)

(assert (=> bm!162009 (= call!162012 call!162013)))

(declare-fun b!2549243 () Bool)

(assert (=> b!2549243 (= e!1611105 call!162013)))

(declare-fun b!2549244 () Bool)

(declare-fun res!1074003 () Bool)

(declare-fun e!1611106 () Bool)

(assert (=> b!2549244 (=> res!1074003 e!1611106)))

(assert (=> b!2549244 (= res!1074003 (not ((_ is Concat!12289) r!27340)))))

(assert (=> b!2549244 (= e!1611104 e!1611106)))

(declare-fun b!2549245 () Bool)

(assert (=> b!2549245 (= e!1611106 e!1611107)))

(declare-fun res!1074006 () Bool)

(assert (=> b!2549245 (=> (not res!1074006) (not e!1611107))))

(assert (=> b!2549245 (= res!1074006 call!162014)))

(assert (= (and d!723060 (not res!1074002)) b!2549238))

(assert (= (and b!2549238 c!408596) b!2549240))

(assert (= (and b!2549238 (not c!408596)) b!2549237))

(assert (= (and b!2549240 res!1074004) b!2549243))

(assert (= (and b!2549237 c!408597) b!2549242))

(assert (= (and b!2549237 (not c!408597)) b!2549244))

(assert (= (and b!2549242 res!1074005) b!2549239))

(assert (= (and b!2549244 (not res!1074003)) b!2549245))

(assert (= (and b!2549245 res!1074006) b!2549241))

(assert (= (or b!2549242 b!2549241) bm!162009))

(assert (= (or b!2549239 b!2549245) bm!162008))

(assert (= (or b!2549243 bm!162009) bm!162007))

(assert (=> b!2549240 m!2892891))

(declare-fun m!2893221 () Bool)

(assert (=> bm!162007 m!2893221))

(declare-fun m!2893223 () Bool)

(assert (=> bm!162008 m!2893223))

(assert (=> start!247276 d!723060))

(declare-fun b!2549246 () Bool)

(declare-fun res!1074013 () Bool)

(declare-fun e!1611115 () Bool)

(assert (=> b!2549246 (=> (not res!1074013) (not e!1611115))))

(assert (=> b!2549246 (= res!1074013 (isEmpty!17007 (tail!4077 (_2!17326 lt!903129))))))

(declare-fun b!2549247 () Bool)

(declare-fun e!1611111 () Bool)

(assert (=> b!2549247 (= e!1611111 (matchR!3540 (derivativeStep!2162 lt!903130 (head!5802 (_2!17326 lt!903129))) (tail!4077 (_2!17326 lt!903129))))))

(declare-fun b!2549248 () Bool)

(declare-fun e!1611113 () Bool)

(declare-fun lt!903208 () Bool)

(assert (=> b!2549248 (= e!1611113 (not lt!903208))))

(declare-fun b!2549249 () Bool)

(declare-fun e!1611116 () Bool)

(declare-fun e!1611114 () Bool)

(assert (=> b!2549249 (= e!1611116 e!1611114)))

(declare-fun res!1074011 () Bool)

(assert (=> b!2549249 (=> (not res!1074011) (not e!1611114))))

(assert (=> b!2549249 (= res!1074011 (not lt!903208))))

(declare-fun b!2549250 () Bool)

(declare-fun res!1074010 () Bool)

(assert (=> b!2549250 (=> res!1074010 e!1611116)))

(assert (=> b!2549250 (= res!1074010 (not ((_ is ElementMatch!7593) lt!903130)))))

(assert (=> b!2549250 (= e!1611113 e!1611116)))

(declare-fun bm!162010 () Bool)

(declare-fun call!162015 () Bool)

(assert (=> bm!162010 (= call!162015 (isEmpty!17007 (_2!17326 lt!903129)))))

(declare-fun b!2549251 () Bool)

(declare-fun res!1074009 () Bool)

(declare-fun e!1611112 () Bool)

(assert (=> b!2549251 (=> res!1074009 e!1611112)))

(assert (=> b!2549251 (= res!1074009 (not (isEmpty!17007 (tail!4077 (_2!17326 lt!903129)))))))

(declare-fun b!2549252 () Bool)

(assert (=> b!2549252 (= e!1611115 (= (head!5802 (_2!17326 lt!903129)) (c!408453 lt!903130)))))

(declare-fun b!2549253 () Bool)

(declare-fun res!1074007 () Bool)

(assert (=> b!2549253 (=> res!1074007 e!1611116)))

(assert (=> b!2549253 (= res!1074007 e!1611115)))

(declare-fun res!1074014 () Bool)

(assert (=> b!2549253 (=> (not res!1074014) (not e!1611115))))

(assert (=> b!2549253 (= res!1074014 lt!903208)))

(declare-fun d!723062 () Bool)

(declare-fun e!1611110 () Bool)

(assert (=> d!723062 e!1611110))

(declare-fun c!408600 () Bool)

(assert (=> d!723062 (= c!408600 ((_ is EmptyExpr!7593) lt!903130))))

(assert (=> d!723062 (= lt!903208 e!1611111)))

(declare-fun c!408598 () Bool)

(assert (=> d!723062 (= c!408598 (isEmpty!17007 (_2!17326 lt!903129)))))

(assert (=> d!723062 (validRegex!3219 lt!903130)))

(assert (=> d!723062 (= (matchR!3540 lt!903130 (_2!17326 lt!903129)) lt!903208)))

(declare-fun b!2549254 () Bool)

(assert (=> b!2549254 (= e!1611110 e!1611113)))

(declare-fun c!408599 () Bool)

(assert (=> b!2549254 (= c!408599 ((_ is EmptyLang!7593) lt!903130))))

(declare-fun b!2549255 () Bool)

(assert (=> b!2549255 (= e!1611110 (= lt!903208 call!162015))))

(declare-fun b!2549256 () Bool)

(assert (=> b!2549256 (= e!1611112 (not (= (head!5802 (_2!17326 lt!903129)) (c!408453 lt!903130))))))

(declare-fun b!2549257 () Bool)

(assert (=> b!2549257 (= e!1611111 (nullable!2510 lt!903130))))

(declare-fun b!2549258 () Bool)

(assert (=> b!2549258 (= e!1611114 e!1611112)))

(declare-fun res!1074012 () Bool)

(assert (=> b!2549258 (=> res!1074012 e!1611112)))

(assert (=> b!2549258 (= res!1074012 call!162015)))

(declare-fun b!2549259 () Bool)

(declare-fun res!1074008 () Bool)

(assert (=> b!2549259 (=> (not res!1074008) (not e!1611115))))

(assert (=> b!2549259 (= res!1074008 (not call!162015))))

(assert (= (and d!723062 c!408598) b!2549257))

(assert (= (and d!723062 (not c!408598)) b!2549247))

(assert (= (and d!723062 c!408600) b!2549255))

(assert (= (and d!723062 (not c!408600)) b!2549254))

(assert (= (and b!2549254 c!408599) b!2549248))

(assert (= (and b!2549254 (not c!408599)) b!2549250))

(assert (= (and b!2549250 (not res!1074010)) b!2549253))

(assert (= (and b!2549253 res!1074014) b!2549259))

(assert (= (and b!2549259 res!1074008) b!2549246))

(assert (= (and b!2549246 res!1074013) b!2549252))

(assert (= (and b!2549253 (not res!1074007)) b!2549249))

(assert (= (and b!2549249 res!1074011) b!2549258))

(assert (= (and b!2549258 (not res!1074012)) b!2549251))

(assert (= (and b!2549251 (not res!1074009)) b!2549256))

(assert (= (or b!2549255 b!2549258 b!2549259) bm!162010))

(declare-fun m!2893225 () Bool)

(assert (=> b!2549257 m!2893225))

(declare-fun m!2893227 () Bool)

(assert (=> b!2549247 m!2893227))

(assert (=> b!2549247 m!2893227))

(declare-fun m!2893229 () Bool)

(assert (=> b!2549247 m!2893229))

(declare-fun m!2893231 () Bool)

(assert (=> b!2549247 m!2893231))

(assert (=> b!2549247 m!2893229))

(assert (=> b!2549247 m!2893231))

(declare-fun m!2893233 () Bool)

(assert (=> b!2549247 m!2893233))

(declare-fun m!2893235 () Bool)

(assert (=> bm!162010 m!2893235))

(assert (=> b!2549251 m!2893231))

(assert (=> b!2549251 m!2893231))

(declare-fun m!2893237 () Bool)

(assert (=> b!2549251 m!2893237))

(assert (=> d!723062 m!2893235))

(declare-fun m!2893239 () Bool)

(assert (=> d!723062 m!2893239))

(assert (=> b!2549246 m!2893231))

(assert (=> b!2549246 m!2893231))

(assert (=> b!2549246 m!2893237))

(assert (=> b!2549256 m!2893227))

(assert (=> b!2549252 m!2893227))

(assert (=> b!2548723 d!723062))

(declare-fun b!2549280 () Bool)

(declare-fun e!1611130 () List!29658)

(declare-fun e!1611127 () List!29658)

(assert (=> b!2549280 (= e!1611130 e!1611127)))

(declare-fun c!408611 () Bool)

(assert (=> b!2549280 (= c!408611 ((_ is ElementMatch!7593) r!27340))))

(declare-fun b!2549281 () Bool)

(declare-fun e!1611131 () List!29658)

(declare-fun call!162026 () List!29658)

(assert (=> b!2549281 (= e!1611131 call!162026)))

(declare-fun b!2549282 () Bool)

(assert (=> b!2549282 (= e!1611130 Nil!29558)))

(declare-fun b!2549283 () Bool)

(declare-fun c!408614 () Bool)

(assert (=> b!2549283 (= c!408614 (nullable!2510 (regOne!15698 r!27340)))))

(declare-fun e!1611129 () List!29658)

(assert (=> b!2549283 (= e!1611129 e!1611131)))

(declare-fun b!2549284 () Bool)

(assert (=> b!2549284 (= e!1611127 (Cons!29558 (c!408453 r!27340) Nil!29558))))

(declare-fun b!2549285 () Bool)

(declare-fun e!1611128 () List!29658)

(declare-fun call!162027 () List!29658)

(assert (=> b!2549285 (= e!1611128 call!162027)))

(declare-fun b!2549286 () Bool)

(assert (=> b!2549286 (= e!1611128 e!1611129)))

(declare-fun c!408615 () Bool)

(assert (=> b!2549286 (= c!408615 ((_ is Union!7593) r!27340))))

(declare-fun call!162029 () List!29658)

(declare-fun call!162028 () List!29658)

(declare-fun bm!162022 () Bool)

(declare-fun call!162030 () List!29658)

(assert (=> bm!162022 (= call!162026 (++!7260 (ite c!408615 call!162028 call!162030) (ite c!408615 call!162030 call!162029)))))

(declare-fun b!2549287 () Bool)

(declare-fun c!408613 () Bool)

(assert (=> b!2549287 (= c!408613 ((_ is Star!7593) r!27340))))

(assert (=> b!2549287 (= e!1611127 e!1611128)))

(declare-fun bm!162023 () Bool)

(assert (=> bm!162023 (= call!162028 call!162027)))

(declare-fun d!723064 () Bool)

(declare-fun c!408612 () Bool)

(assert (=> d!723064 (= c!408612 (or ((_ is EmptyExpr!7593) r!27340) ((_ is EmptyLang!7593) r!27340)))))

(assert (=> d!723064 (= (firstChars!94 r!27340) e!1611130)))

(declare-fun bm!162021 () Bool)

(assert (=> bm!162021 (= call!162029 call!162028)))

(declare-fun bm!162024 () Bool)

(assert (=> bm!162024 (= call!162027 (firstChars!94 (ite c!408613 (reg!7922 r!27340) (ite c!408615 (regOne!15699 r!27340) (ite c!408614 (regTwo!15698 r!27340) (regOne!15698 r!27340))))))))

(declare-fun b!2549288 () Bool)

(assert (=> b!2549288 (= e!1611131 call!162029)))

(declare-fun b!2549289 () Bool)

(assert (=> b!2549289 (= e!1611129 call!162026)))

(declare-fun bm!162025 () Bool)

(assert (=> bm!162025 (= call!162030 (firstChars!94 (ite c!408615 (regTwo!15699 r!27340) (regOne!15698 r!27340))))))

(assert (= (and d!723064 c!408612) b!2549282))

(assert (= (and d!723064 (not c!408612)) b!2549280))

(assert (= (and b!2549280 c!408611) b!2549284))

(assert (= (and b!2549280 (not c!408611)) b!2549287))

(assert (= (and b!2549287 c!408613) b!2549285))

(assert (= (and b!2549287 (not c!408613)) b!2549286))

(assert (= (and b!2549286 c!408615) b!2549289))

(assert (= (and b!2549286 (not c!408615)) b!2549283))

(assert (= (and b!2549283 c!408614) b!2549281))

(assert (= (and b!2549283 (not c!408614)) b!2549288))

(assert (= (or b!2549281 b!2549288) bm!162021))

(assert (= (or b!2549289 bm!162021) bm!162023))

(assert (= (or b!2549289 b!2549281) bm!162025))

(assert (= (or b!2549289 b!2549281) bm!162022))

(assert (= (or b!2549285 bm!162023) bm!162024))

(assert (=> b!2549283 m!2893159))

(declare-fun m!2893241 () Bool)

(assert (=> bm!162022 m!2893241))

(declare-fun m!2893243 () Bool)

(assert (=> bm!162024 m!2893243))

(declare-fun m!2893245 () Bool)

(assert (=> bm!162025 m!2893245))

(assert (=> b!2548719 d!723064))

(declare-fun d!723066 () Bool)

(declare-fun lt!903211 () Bool)

(assert (=> d!723066 (= lt!903211 (select (content!4066 (firstChars!94 (reg!7922 r!27340))) c!14016))))

(declare-fun e!1611137 () Bool)

(assert (=> d!723066 (= lt!903211 e!1611137)))

(declare-fun res!1074020 () Bool)

(assert (=> d!723066 (=> (not res!1074020) (not e!1611137))))

(assert (=> d!723066 (= res!1074020 ((_ is Cons!29558) (firstChars!94 (reg!7922 r!27340))))))

(assert (=> d!723066 (= (contains!5303 (firstChars!94 (reg!7922 r!27340)) c!14016) lt!903211)))

(declare-fun b!2549294 () Bool)

(declare-fun e!1611136 () Bool)

(assert (=> b!2549294 (= e!1611137 e!1611136)))

(declare-fun res!1074019 () Bool)

(assert (=> b!2549294 (=> res!1074019 e!1611136)))

(assert (=> b!2549294 (= res!1074019 (= (h!34978 (firstChars!94 (reg!7922 r!27340))) c!14016))))

(declare-fun b!2549295 () Bool)

(assert (=> b!2549295 (= e!1611136 (contains!5303 (t!211357 (firstChars!94 (reg!7922 r!27340))) c!14016))))

(assert (= (and d!723066 res!1074020) b!2549294))

(assert (= (and b!2549294 (not res!1074019)) b!2549295))

(assert (=> d!723066 m!2892821))

(declare-fun m!2893247 () Bool)

(assert (=> d!723066 m!2893247))

(declare-fun m!2893249 () Bool)

(assert (=> d!723066 m!2893249))

(declare-fun m!2893251 () Bool)

(assert (=> b!2549295 m!2893251))

(assert (=> b!2548719 d!723066))

(declare-fun b!2549296 () Bool)

(declare-fun e!1611141 () List!29658)

(declare-fun e!1611138 () List!29658)

(assert (=> b!2549296 (= e!1611141 e!1611138)))

(declare-fun c!408616 () Bool)

(assert (=> b!2549296 (= c!408616 ((_ is ElementMatch!7593) (reg!7922 r!27340)))))

(declare-fun b!2549297 () Bool)

(declare-fun e!1611142 () List!29658)

(declare-fun call!162031 () List!29658)

(assert (=> b!2549297 (= e!1611142 call!162031)))

(declare-fun b!2549298 () Bool)

(assert (=> b!2549298 (= e!1611141 Nil!29558)))

(declare-fun b!2549299 () Bool)

(declare-fun c!408619 () Bool)

(assert (=> b!2549299 (= c!408619 (nullable!2510 (regOne!15698 (reg!7922 r!27340))))))

(declare-fun e!1611140 () List!29658)

(assert (=> b!2549299 (= e!1611140 e!1611142)))

(declare-fun b!2549300 () Bool)

(assert (=> b!2549300 (= e!1611138 (Cons!29558 (c!408453 (reg!7922 r!27340)) Nil!29558))))

(declare-fun b!2549301 () Bool)

(declare-fun e!1611139 () List!29658)

(declare-fun call!162032 () List!29658)

(assert (=> b!2549301 (= e!1611139 call!162032)))

(declare-fun b!2549302 () Bool)

(assert (=> b!2549302 (= e!1611139 e!1611140)))

(declare-fun c!408620 () Bool)

(assert (=> b!2549302 (= c!408620 ((_ is Union!7593) (reg!7922 r!27340)))))

(declare-fun call!162034 () List!29658)

(declare-fun call!162035 () List!29658)

(declare-fun bm!162027 () Bool)

(declare-fun call!162033 () List!29658)

(assert (=> bm!162027 (= call!162031 (++!7260 (ite c!408620 call!162033 call!162035) (ite c!408620 call!162035 call!162034)))))

(declare-fun b!2549303 () Bool)

(declare-fun c!408618 () Bool)

(assert (=> b!2549303 (= c!408618 ((_ is Star!7593) (reg!7922 r!27340)))))

(assert (=> b!2549303 (= e!1611138 e!1611139)))

(declare-fun bm!162028 () Bool)

(assert (=> bm!162028 (= call!162033 call!162032)))

(declare-fun d!723068 () Bool)

(declare-fun c!408617 () Bool)

(assert (=> d!723068 (= c!408617 (or ((_ is EmptyExpr!7593) (reg!7922 r!27340)) ((_ is EmptyLang!7593) (reg!7922 r!27340))))))

(assert (=> d!723068 (= (firstChars!94 (reg!7922 r!27340)) e!1611141)))

(declare-fun bm!162026 () Bool)

(assert (=> bm!162026 (= call!162034 call!162033)))

(declare-fun bm!162029 () Bool)

(assert (=> bm!162029 (= call!162032 (firstChars!94 (ite c!408618 (reg!7922 (reg!7922 r!27340)) (ite c!408620 (regOne!15699 (reg!7922 r!27340)) (ite c!408619 (regTwo!15698 (reg!7922 r!27340)) (regOne!15698 (reg!7922 r!27340)))))))))

(declare-fun b!2549304 () Bool)

(assert (=> b!2549304 (= e!1611142 call!162034)))

(declare-fun b!2549305 () Bool)

(assert (=> b!2549305 (= e!1611140 call!162031)))

(declare-fun bm!162030 () Bool)

(assert (=> bm!162030 (= call!162035 (firstChars!94 (ite c!408620 (regTwo!15699 (reg!7922 r!27340)) (regOne!15698 (reg!7922 r!27340)))))))

(assert (= (and d!723068 c!408617) b!2549298))

(assert (= (and d!723068 (not c!408617)) b!2549296))

(assert (= (and b!2549296 c!408616) b!2549300))

(assert (= (and b!2549296 (not c!408616)) b!2549303))

(assert (= (and b!2549303 c!408618) b!2549301))

(assert (= (and b!2549303 (not c!408618)) b!2549302))

(assert (= (and b!2549302 c!408620) b!2549305))

(assert (= (and b!2549302 (not c!408620)) b!2549299))

(assert (= (and b!2549299 c!408619) b!2549297))

(assert (= (and b!2549299 (not c!408619)) b!2549304))

(assert (= (or b!2549297 b!2549304) bm!162026))

(assert (= (or b!2549305 bm!162026) bm!162028))

(assert (= (or b!2549305 b!2549297) bm!162030))

(assert (= (or b!2549305 b!2549297) bm!162027))

(assert (= (or b!2549301 bm!162028) bm!162029))

(assert (=> b!2549299 m!2893219))

(declare-fun m!2893253 () Bool)

(assert (=> bm!162027 m!2893253))

(declare-fun m!2893255 () Bool)

(assert (=> bm!162029 m!2893255))

(declare-fun m!2893257 () Bool)

(assert (=> bm!162030 m!2893257))

(assert (=> b!2548719 d!723068))

(declare-fun d!723070 () Bool)

(assert (=> d!723070 (contains!5303 (firstChars!94 (reg!7922 r!27340)) c!14016)))

(declare-fun lt!903214 () Unit!43375)

(declare-fun choose!15055 (Regex!7593 C!15344 List!29658) Unit!43375)

(assert (=> d!723070 (= lt!903214 (choose!15055 (reg!7922 r!27340) c!14016 (_1!17326 lt!903129)))))

(assert (=> d!723070 (validRegex!3219 (reg!7922 r!27340))))

(assert (=> d!723070 (= (lemmaDerivAfterDerivStepIsNullableThenFirstCharsContainsHead!10 (reg!7922 r!27340) c!14016 (_1!17326 lt!903129)) lt!903214)))

(declare-fun bs!469583 () Bool)

(assert (= bs!469583 d!723070))

(assert (=> bs!469583 m!2892821))

(assert (=> bs!469583 m!2892821))

(assert (=> bs!469583 m!2892823))

(declare-fun m!2893259 () Bool)

(assert (=> bs!469583 m!2893259))

(assert (=> bs!469583 m!2892843))

(assert (=> b!2548719 d!723070))

(declare-fun d!723072 () Bool)

(declare-fun lt!903215 () Bool)

(assert (=> d!723072 (= lt!903215 (select (content!4066 (firstChars!94 r!27340)) c!14016))))

(declare-fun e!1611144 () Bool)

(assert (=> d!723072 (= lt!903215 e!1611144)))

(declare-fun res!1074022 () Bool)

(assert (=> d!723072 (=> (not res!1074022) (not e!1611144))))

(assert (=> d!723072 (= res!1074022 ((_ is Cons!29558) (firstChars!94 r!27340)))))

(assert (=> d!723072 (= (contains!5303 (firstChars!94 r!27340) c!14016) lt!903215)))

(declare-fun b!2549306 () Bool)

(declare-fun e!1611143 () Bool)

(assert (=> b!2549306 (= e!1611144 e!1611143)))

(declare-fun res!1074021 () Bool)

(assert (=> b!2549306 (=> res!1074021 e!1611143)))

(assert (=> b!2549306 (= res!1074021 (= (h!34978 (firstChars!94 r!27340)) c!14016))))

(declare-fun b!2549307 () Bool)

(assert (=> b!2549307 (= e!1611143 (contains!5303 (t!211357 (firstChars!94 r!27340)) c!14016))))

(assert (= (and d!723072 res!1074022) b!2549306))

(assert (= (and b!2549306 (not res!1074021)) b!2549307))

(assert (=> d!723072 m!2892825))

(declare-fun m!2893261 () Bool)

(assert (=> d!723072 m!2893261))

(declare-fun m!2893263 () Bool)

(assert (=> d!723072 m!2893263))

(declare-fun m!2893265 () Bool)

(assert (=> b!2549307 m!2893265))

(assert (=> b!2548719 d!723072))

(declare-fun b!2549308 () Bool)

(declare-fun res!1074029 () Bool)

(declare-fun e!1611150 () Bool)

(assert (=> b!2549308 (=> (not res!1074029) (not e!1611150))))

(assert (=> b!2549308 (= res!1074029 (isEmpty!17007 (tail!4077 Nil!29558)))))

(declare-fun b!2549309 () Bool)

(declare-fun e!1611146 () Bool)

(assert (=> b!2549309 (= e!1611146 (matchR!3540 (derivativeStep!2162 lt!903121 (head!5802 Nil!29558)) (tail!4077 Nil!29558)))))

(declare-fun b!2549310 () Bool)

(declare-fun e!1611148 () Bool)

(declare-fun lt!903216 () Bool)

(assert (=> b!2549310 (= e!1611148 (not lt!903216))))

(declare-fun b!2549311 () Bool)

(declare-fun e!1611151 () Bool)

(declare-fun e!1611149 () Bool)

(assert (=> b!2549311 (= e!1611151 e!1611149)))

(declare-fun res!1074027 () Bool)

(assert (=> b!2549311 (=> (not res!1074027) (not e!1611149))))

(assert (=> b!2549311 (= res!1074027 (not lt!903216))))

(declare-fun b!2549312 () Bool)

(declare-fun res!1074026 () Bool)

(assert (=> b!2549312 (=> res!1074026 e!1611151)))

(assert (=> b!2549312 (= res!1074026 (not ((_ is ElementMatch!7593) lt!903121)))))

(assert (=> b!2549312 (= e!1611148 e!1611151)))

(declare-fun bm!162031 () Bool)

(declare-fun call!162036 () Bool)

(assert (=> bm!162031 (= call!162036 (isEmpty!17007 Nil!29558))))

(declare-fun b!2549313 () Bool)

(declare-fun res!1074025 () Bool)

(declare-fun e!1611147 () Bool)

(assert (=> b!2549313 (=> res!1074025 e!1611147)))

(assert (=> b!2549313 (= res!1074025 (not (isEmpty!17007 (tail!4077 Nil!29558))))))

(declare-fun b!2549314 () Bool)

(assert (=> b!2549314 (= e!1611150 (= (head!5802 Nil!29558) (c!408453 lt!903121)))))

(declare-fun b!2549315 () Bool)

(declare-fun res!1074023 () Bool)

(assert (=> b!2549315 (=> res!1074023 e!1611151)))

(assert (=> b!2549315 (= res!1074023 e!1611150)))

(declare-fun res!1074030 () Bool)

(assert (=> b!2549315 (=> (not res!1074030) (not e!1611150))))

(assert (=> b!2549315 (= res!1074030 lt!903216)))

(declare-fun d!723074 () Bool)

(declare-fun e!1611145 () Bool)

(assert (=> d!723074 e!1611145))

(declare-fun c!408624 () Bool)

(assert (=> d!723074 (= c!408624 ((_ is EmptyExpr!7593) lt!903121))))

(assert (=> d!723074 (= lt!903216 e!1611146)))

(declare-fun c!408622 () Bool)

(assert (=> d!723074 (= c!408622 (isEmpty!17007 Nil!29558))))

(assert (=> d!723074 (validRegex!3219 lt!903121)))

(assert (=> d!723074 (= (matchR!3540 lt!903121 Nil!29558) lt!903216)))

(declare-fun b!2549316 () Bool)

(assert (=> b!2549316 (= e!1611145 e!1611148)))

(declare-fun c!408623 () Bool)

(assert (=> b!2549316 (= c!408623 ((_ is EmptyLang!7593) lt!903121))))

(declare-fun b!2549317 () Bool)

(assert (=> b!2549317 (= e!1611145 (= lt!903216 call!162036))))

(declare-fun b!2549318 () Bool)

(assert (=> b!2549318 (= e!1611147 (not (= (head!5802 Nil!29558) (c!408453 lt!903121))))))

(declare-fun b!2549319 () Bool)

(assert (=> b!2549319 (= e!1611146 (nullable!2510 lt!903121))))

(declare-fun b!2549320 () Bool)

(assert (=> b!2549320 (= e!1611149 e!1611147)))

(declare-fun res!1074028 () Bool)

(assert (=> b!2549320 (=> res!1074028 e!1611147)))

(assert (=> b!2549320 (= res!1074028 call!162036)))

(declare-fun b!2549321 () Bool)

(declare-fun res!1074024 () Bool)

(assert (=> b!2549321 (=> (not res!1074024) (not e!1611150))))

(assert (=> b!2549321 (= res!1074024 (not call!162036))))

(assert (= (and d!723074 c!408622) b!2549319))

(assert (= (and d!723074 (not c!408622)) b!2549309))

(assert (= (and d!723074 c!408624) b!2549317))

(assert (= (and d!723074 (not c!408624)) b!2549316))

(assert (= (and b!2549316 c!408623) b!2549310))

(assert (= (and b!2549316 (not c!408623)) b!2549312))

(assert (= (and b!2549312 (not res!1074026)) b!2549315))

(assert (= (and b!2549315 res!1074030) b!2549321))

(assert (= (and b!2549321 res!1074024) b!2549308))

(assert (= (and b!2549308 res!1074029) b!2549314))

(assert (= (and b!2549315 (not res!1074023)) b!2549311))

(assert (= (and b!2549311 res!1074027) b!2549320))

(assert (= (and b!2549320 (not res!1074028)) b!2549313))

(assert (= (and b!2549313 (not res!1074025)) b!2549318))

(assert (= (or b!2549317 b!2549320 b!2549321) bm!162031))

(assert (=> b!2549319 m!2892853))

(assert (=> b!2549309 m!2893181))

(assert (=> b!2549309 m!2893181))

(declare-fun m!2893267 () Bool)

(assert (=> b!2549309 m!2893267))

(assert (=> b!2549309 m!2893185))

(assert (=> b!2549309 m!2893267))

(assert (=> b!2549309 m!2893185))

(declare-fun m!2893269 () Bool)

(assert (=> b!2549309 m!2893269))

(assert (=> bm!162031 m!2893189))

(assert (=> b!2549313 m!2893185))

(assert (=> b!2549313 m!2893185))

(assert (=> b!2549313 m!2893191))

(assert (=> d!723074 m!2893189))

(declare-fun m!2893271 () Bool)

(assert (=> d!723074 m!2893271))

(assert (=> b!2549308 m!2893185))

(assert (=> b!2549308 m!2893185))

(assert (=> b!2549308 m!2893191))

(assert (=> b!2549318 m!2893181))

(assert (=> b!2549314 m!2893181))

(assert (=> b!2548730 d!723074))

(declare-fun b!2549322 () Bool)

(declare-fun res!1074037 () Bool)

(declare-fun e!1611157 () Bool)

(assert (=> b!2549322 (=> (not res!1074037) (not e!1611157))))

(assert (=> b!2549322 (= res!1074037 (isEmpty!17007 (tail!4077 tl!4068)))))

(declare-fun b!2549323 () Bool)

(declare-fun e!1611153 () Bool)

(assert (=> b!2549323 (= e!1611153 (matchR!3540 (derivativeStep!2162 lt!903124 (head!5802 tl!4068)) (tail!4077 tl!4068)))))

(declare-fun b!2549324 () Bool)

(declare-fun e!1611155 () Bool)

(declare-fun lt!903217 () Bool)

(assert (=> b!2549324 (= e!1611155 (not lt!903217))))

(declare-fun b!2549325 () Bool)

(declare-fun e!1611158 () Bool)

(declare-fun e!1611156 () Bool)

(assert (=> b!2549325 (= e!1611158 e!1611156)))

(declare-fun res!1074035 () Bool)

(assert (=> b!2549325 (=> (not res!1074035) (not e!1611156))))

(assert (=> b!2549325 (= res!1074035 (not lt!903217))))

(declare-fun b!2549326 () Bool)

(declare-fun res!1074034 () Bool)

(assert (=> b!2549326 (=> res!1074034 e!1611158)))

(assert (=> b!2549326 (= res!1074034 (not ((_ is ElementMatch!7593) lt!903124)))))

(assert (=> b!2549326 (= e!1611155 e!1611158)))

(declare-fun bm!162032 () Bool)

(declare-fun call!162037 () Bool)

(assert (=> bm!162032 (= call!162037 (isEmpty!17007 tl!4068))))

(declare-fun b!2549327 () Bool)

(declare-fun res!1074033 () Bool)

(declare-fun e!1611154 () Bool)

(assert (=> b!2549327 (=> res!1074033 e!1611154)))

(assert (=> b!2549327 (= res!1074033 (not (isEmpty!17007 (tail!4077 tl!4068))))))

(declare-fun b!2549328 () Bool)

(assert (=> b!2549328 (= e!1611157 (= (head!5802 tl!4068) (c!408453 lt!903124)))))

(declare-fun b!2549329 () Bool)

(declare-fun res!1074031 () Bool)

(assert (=> b!2549329 (=> res!1074031 e!1611158)))

(assert (=> b!2549329 (= res!1074031 e!1611157)))

(declare-fun res!1074038 () Bool)

(assert (=> b!2549329 (=> (not res!1074038) (not e!1611157))))

(assert (=> b!2549329 (= res!1074038 lt!903217)))

(declare-fun d!723076 () Bool)

(declare-fun e!1611152 () Bool)

(assert (=> d!723076 e!1611152))

(declare-fun c!408627 () Bool)

(assert (=> d!723076 (= c!408627 ((_ is EmptyExpr!7593) lt!903124))))

(assert (=> d!723076 (= lt!903217 e!1611153)))

(declare-fun c!408625 () Bool)

(assert (=> d!723076 (= c!408625 (isEmpty!17007 tl!4068))))

(assert (=> d!723076 (validRegex!3219 lt!903124)))

(assert (=> d!723076 (= (matchR!3540 lt!903124 tl!4068) lt!903217)))

(declare-fun b!2549330 () Bool)

(assert (=> b!2549330 (= e!1611152 e!1611155)))

(declare-fun c!408626 () Bool)

(assert (=> b!2549330 (= c!408626 ((_ is EmptyLang!7593) lt!903124))))

(declare-fun b!2549331 () Bool)

(assert (=> b!2549331 (= e!1611152 (= lt!903217 call!162037))))

(declare-fun b!2549332 () Bool)

(assert (=> b!2549332 (= e!1611154 (not (= (head!5802 tl!4068) (c!408453 lt!903124))))))

(declare-fun b!2549333 () Bool)

(assert (=> b!2549333 (= e!1611153 (nullable!2510 lt!903124))))

(declare-fun b!2549334 () Bool)

(assert (=> b!2549334 (= e!1611156 e!1611154)))

(declare-fun res!1074036 () Bool)

(assert (=> b!2549334 (=> res!1074036 e!1611154)))

(assert (=> b!2549334 (= res!1074036 call!162037)))

(declare-fun b!2549335 () Bool)

(declare-fun res!1074032 () Bool)

(assert (=> b!2549335 (=> (not res!1074032) (not e!1611157))))

(assert (=> b!2549335 (= res!1074032 (not call!162037))))

(assert (= (and d!723076 c!408625) b!2549333))

(assert (= (and d!723076 (not c!408625)) b!2549323))

(assert (= (and d!723076 c!408627) b!2549331))

(assert (= (and d!723076 (not c!408627)) b!2549330))

(assert (= (and b!2549330 c!408626) b!2549324))

(assert (= (and b!2549330 (not c!408626)) b!2549326))

(assert (= (and b!2549326 (not res!1074034)) b!2549329))

(assert (= (and b!2549329 res!1074038) b!2549335))

(assert (= (and b!2549335 res!1074032) b!2549322))

(assert (= (and b!2549322 res!1074037) b!2549328))

(assert (= (and b!2549329 (not res!1074031)) b!2549325))

(assert (= (and b!2549325 res!1074035) b!2549334))

(assert (= (and b!2549334 (not res!1074036)) b!2549327))

(assert (= (and b!2549327 (not res!1074033)) b!2549332))

(assert (= (or b!2549331 b!2549334 b!2549335) bm!162032))

(declare-fun m!2893273 () Bool)

(assert (=> b!2549333 m!2893273))

(declare-fun m!2893275 () Bool)

(assert (=> b!2549323 m!2893275))

(assert (=> b!2549323 m!2893275))

(declare-fun m!2893277 () Bool)

(assert (=> b!2549323 m!2893277))

(declare-fun m!2893279 () Bool)

(assert (=> b!2549323 m!2893279))

(assert (=> b!2549323 m!2893277))

(assert (=> b!2549323 m!2893279))

(declare-fun m!2893281 () Bool)

(assert (=> b!2549323 m!2893281))

(declare-fun m!2893283 () Bool)

(assert (=> bm!162032 m!2893283))

(assert (=> b!2549327 m!2893279))

(assert (=> b!2549327 m!2893279))

(declare-fun m!2893285 () Bool)

(assert (=> b!2549327 m!2893285))

(assert (=> d!723076 m!2893283))

(assert (=> d!723076 m!2893147))

(assert (=> b!2549322 m!2893279))

(assert (=> b!2549322 m!2893279))

(assert (=> b!2549322 m!2893285))

(assert (=> b!2549332 m!2893275))

(assert (=> b!2549328 m!2893275))

(assert (=> b!2548730 d!723076))

(declare-fun d!723078 () Bool)

(assert (=> d!723078 (= (matchR!3540 lt!903124 tl!4068) (matchR!3540 (derivative!288 lt!903124 tl!4068) Nil!29558))))

(declare-fun lt!903218 () Unit!43375)

(assert (=> d!723078 (= lt!903218 (choose!15054 lt!903124 tl!4068))))

(assert (=> d!723078 (validRegex!3219 lt!903124)))

(assert (=> d!723078 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!186 lt!903124 tl!4068) lt!903218)))

(declare-fun bs!469584 () Bool)

(assert (= bs!469584 d!723078))

(assert (=> bs!469584 m!2892855))

(assert (=> bs!469584 m!2892855))

(declare-fun m!2893287 () Bool)

(assert (=> bs!469584 m!2893287))

(assert (=> bs!469584 m!2893147))

(assert (=> bs!469584 m!2892863))

(declare-fun m!2893289 () Bool)

(assert (=> bs!469584 m!2893289))

(assert (=> b!2548730 d!723078))

(declare-fun d!723080 () Bool)

(assert (=> d!723080 (= (nullable!2510 lt!903127) (nullableFct!735 lt!903127))))

(declare-fun bs!469585 () Bool)

(assert (= bs!469585 d!723080))

(declare-fun m!2893291 () Bool)

(assert (=> bs!469585 m!2893291))

(assert (=> b!2548720 d!723080))

(declare-fun e!1611161 () Bool)

(assert (=> b!2548716 (= tp!813290 e!1611161)))

(declare-fun b!2549347 () Bool)

(declare-fun tp!813342 () Bool)

(declare-fun tp!813343 () Bool)

(assert (=> b!2549347 (= e!1611161 (and tp!813342 tp!813343))))

(declare-fun b!2549348 () Bool)

(declare-fun tp!813339 () Bool)

(assert (=> b!2549348 (= e!1611161 tp!813339)))

(declare-fun b!2549346 () Bool)

(assert (=> b!2549346 (= e!1611161 tp_is_empty!13041)))

(declare-fun b!2549349 () Bool)

(declare-fun tp!813340 () Bool)

(declare-fun tp!813341 () Bool)

(assert (=> b!2549349 (= e!1611161 (and tp!813340 tp!813341))))

(assert (= (and b!2548716 ((_ is ElementMatch!7593) (regOne!15698 r!27340))) b!2549346))

(assert (= (and b!2548716 ((_ is Concat!12289) (regOne!15698 r!27340))) b!2549347))

(assert (= (and b!2548716 ((_ is Star!7593) (regOne!15698 r!27340))) b!2549348))

(assert (= (and b!2548716 ((_ is Union!7593) (regOne!15698 r!27340))) b!2549349))

(declare-fun e!1611162 () Bool)

(assert (=> b!2548716 (= tp!813289 e!1611162)))

(declare-fun b!2549351 () Bool)

(declare-fun tp!813347 () Bool)

(declare-fun tp!813348 () Bool)

(assert (=> b!2549351 (= e!1611162 (and tp!813347 tp!813348))))

(declare-fun b!2549352 () Bool)

(declare-fun tp!813344 () Bool)

(assert (=> b!2549352 (= e!1611162 tp!813344)))

(declare-fun b!2549350 () Bool)

(assert (=> b!2549350 (= e!1611162 tp_is_empty!13041)))

(declare-fun b!2549353 () Bool)

(declare-fun tp!813345 () Bool)

(declare-fun tp!813346 () Bool)

(assert (=> b!2549353 (= e!1611162 (and tp!813345 tp!813346))))

(assert (= (and b!2548716 ((_ is ElementMatch!7593) (regTwo!15698 r!27340))) b!2549350))

(assert (= (and b!2548716 ((_ is Concat!12289) (regTwo!15698 r!27340))) b!2549351))

(assert (= (and b!2548716 ((_ is Star!7593) (regTwo!15698 r!27340))) b!2549352))

(assert (= (and b!2548716 ((_ is Union!7593) (regTwo!15698 r!27340))) b!2549353))

(declare-fun e!1611163 () Bool)

(assert (=> b!2548727 (= tp!813285 e!1611163)))

(declare-fun b!2549355 () Bool)

(declare-fun tp!813352 () Bool)

(declare-fun tp!813353 () Bool)

(assert (=> b!2549355 (= e!1611163 (and tp!813352 tp!813353))))

(declare-fun b!2549356 () Bool)

(declare-fun tp!813349 () Bool)

(assert (=> b!2549356 (= e!1611163 tp!813349)))

(declare-fun b!2549354 () Bool)

(assert (=> b!2549354 (= e!1611163 tp_is_empty!13041)))

(declare-fun b!2549357 () Bool)

(declare-fun tp!813350 () Bool)

(declare-fun tp!813351 () Bool)

(assert (=> b!2549357 (= e!1611163 (and tp!813350 tp!813351))))

(assert (= (and b!2548727 ((_ is ElementMatch!7593) (regOne!15699 r!27340))) b!2549354))

(assert (= (and b!2548727 ((_ is Concat!12289) (regOne!15699 r!27340))) b!2549355))

(assert (= (and b!2548727 ((_ is Star!7593) (regOne!15699 r!27340))) b!2549356))

(assert (= (and b!2548727 ((_ is Union!7593) (regOne!15699 r!27340))) b!2549357))

(declare-fun e!1611164 () Bool)

(assert (=> b!2548727 (= tp!813286 e!1611164)))

(declare-fun b!2549359 () Bool)

(declare-fun tp!813357 () Bool)

(declare-fun tp!813358 () Bool)

(assert (=> b!2549359 (= e!1611164 (and tp!813357 tp!813358))))

(declare-fun b!2549360 () Bool)

(declare-fun tp!813354 () Bool)

(assert (=> b!2549360 (= e!1611164 tp!813354)))

(declare-fun b!2549358 () Bool)

(assert (=> b!2549358 (= e!1611164 tp_is_empty!13041)))

(declare-fun b!2549361 () Bool)

(declare-fun tp!813355 () Bool)

(declare-fun tp!813356 () Bool)

(assert (=> b!2549361 (= e!1611164 (and tp!813355 tp!813356))))

(assert (= (and b!2548727 ((_ is ElementMatch!7593) (regTwo!15699 r!27340))) b!2549358))

(assert (= (and b!2548727 ((_ is Concat!12289) (regTwo!15699 r!27340))) b!2549359))

(assert (= (and b!2548727 ((_ is Star!7593) (regTwo!15699 r!27340))) b!2549360))

(assert (= (and b!2548727 ((_ is Union!7593) (regTwo!15699 r!27340))) b!2549361))

(declare-fun e!1611165 () Bool)

(assert (=> b!2548722 (= tp!813287 e!1611165)))

(declare-fun b!2549363 () Bool)

(declare-fun tp!813362 () Bool)

(declare-fun tp!813363 () Bool)

(assert (=> b!2549363 (= e!1611165 (and tp!813362 tp!813363))))

(declare-fun b!2549364 () Bool)

(declare-fun tp!813359 () Bool)

(assert (=> b!2549364 (= e!1611165 tp!813359)))

(declare-fun b!2549362 () Bool)

(assert (=> b!2549362 (= e!1611165 tp_is_empty!13041)))

(declare-fun b!2549365 () Bool)

(declare-fun tp!813360 () Bool)

(declare-fun tp!813361 () Bool)

(assert (=> b!2549365 (= e!1611165 (and tp!813360 tp!813361))))

(assert (= (and b!2548722 ((_ is ElementMatch!7593) (reg!7922 r!27340))) b!2549362))

(assert (= (and b!2548722 ((_ is Concat!12289) (reg!7922 r!27340))) b!2549363))

(assert (= (and b!2548722 ((_ is Star!7593) (reg!7922 r!27340))) b!2549364))

(assert (= (and b!2548722 ((_ is Union!7593) (reg!7922 r!27340))) b!2549365))

(declare-fun b!2549370 () Bool)

(declare-fun e!1611168 () Bool)

(declare-fun tp!813366 () Bool)

(assert (=> b!2549370 (= e!1611168 (and tp_is_empty!13041 tp!813366))))

(assert (=> b!2548729 (= tp!813288 e!1611168)))

(assert (= (and b!2548729 ((_ is Cons!29558) (t!211357 tl!4068))) b!2549370))

(check-sat (not b!2549283) (not b!2548780) (not d!722998) (not d!723070) (not b!2549203) (not b!2549169) (not d!723050) (not b!2549178) (not bm!162032) (not b!2548776) (not b!2549363) (not bm!162027) (not bm!162022) (not b!2549318) (not b!2549327) (not d!723072) (not bm!161999) (not b!2549026) (not bm!162002) (not b!2549168) (not bm!162024) (not b!2549328) (not b!2549360) (not b!2549173) (not b!2549179) (not b!2549022) (not b!2549299) (not bm!162025) (not d!723044) (not b!2549219) (not b!2549215) (not b!2549319) (not b!2549024) (not b!2549349) (not b!2549256) (not d!722970) (not d!723054) (not b!2549223) (not d!723080) (not b!2549333) (not b!2549251) (not b!2549348) (not d!723034) (not d!723076) (not b!2549167) (not b!2548775) (not bm!161989) (not b!2549365) (not b!2549214) (not b!2549247) (not b!2549309) (not bm!162003) (not b!2549323) (not b!2549351) (not d!723000) (not bm!162008) (not d!723056) (not b!2549364) (not b!2549025) (not bm!162000) (not b!2549307) tp_is_empty!13041 (not b!2549220) (not bm!162010) (not b!2548785) (not bm!162007) (not b!2549361) (not b!2549027) (not b!2549236) (not b!2548786) (not b!2549246) (not b!2549352) (not b!2549357) (not b!2549295) (not d!723030) (not d!723066) (not b!2549322) (not b!2549313) (not b!2549353) (not d!722982) (not b!2549021) (not b!2549370) (not b!2549332) (not b!2549210) (not d!723074) (not b!2549240) (not b!2549252) (not d!722990) (not bm!162004) (not b!2549174) (not b!2549209) (not b!2549355) (not b!2548864) (not d!723042) (not bm!162029) (not bm!162030) (not b!2548863) (not b!2549356) (not b!2549136) (not d!723052) (not bm!161988) (not b!2549257) (not b!2549308) (not b!2549225) (not b!2548781) (not bm!162031) (not b!2549314) (not bm!161923) (not d!723058) (not d!723062) (not d!723048) (not d!723078) (not bm!161992) (not b!2549359) (not b!2549347))
(check-sat)
