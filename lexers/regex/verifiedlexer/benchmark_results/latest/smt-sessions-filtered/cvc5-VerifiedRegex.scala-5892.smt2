; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!288486 () Bool)

(assert start!288486)

(declare-fun b!2986677 () Bool)

(assert (=> b!2986677 true))

(assert (=> b!2986677 true))

(assert (=> b!2986677 true))

(declare-fun lambda!111522 () Int)

(declare-fun lambda!111521 () Int)

(assert (=> b!2986677 (not (= lambda!111522 lambda!111521))))

(assert (=> b!2986677 true))

(assert (=> b!2986677 true))

(assert (=> b!2986677 true))

(declare-fun b!2986674 () Bool)

(declare-fun e!1877888 () Bool)

(declare-fun tp_is_empty!16231 () Bool)

(declare-fun tp!950171 () Bool)

(assert (=> b!2986674 (= e!1877888 (and tp_is_empty!16231 tp!950171))))

(declare-fun b!2986675 () Bool)

(declare-fun e!1877887 () Bool)

(declare-fun tp!950174 () Bool)

(assert (=> b!2986675 (= e!1877887 tp!950174)))

(declare-fun b!2986676 () Bool)

(declare-fun res!1231751 () Bool)

(declare-fun e!1877886 () Bool)

(assert (=> b!2986676 (=> res!1231751 e!1877886)))

(declare-datatypes ((C!18854 0))(
  ( (C!18855 (val!11463 Int)) )
))
(declare-datatypes ((List!35199 0))(
  ( (Nil!35075) (Cons!35075 (h!40495 C!18854) (t!234264 List!35199)) )
))
(declare-fun s!11993 () List!35199)

(declare-fun isEmpty!19334 (List!35199) Bool)

(assert (=> b!2986676 (= res!1231751 (isEmpty!19334 s!11993))))

(declare-fun lt!1039553 () Bool)

(assert (=> b!2986677 (= e!1877886 lt!1039553)))

(declare-fun Exists!1607 (Int) Bool)

(assert (=> b!2986677 (= (Exists!1607 lambda!111521) (Exists!1607 lambda!111522))))

(declare-datatypes ((Unit!49071 0))(
  ( (Unit!49072) )
))
(declare-fun lt!1039550 () Unit!49071)

(declare-datatypes ((Regex!9334 0))(
  ( (ElementMatch!9334 (c!490734 C!18854)) (Concat!14655 (regOne!19180 Regex!9334) (regTwo!19180 Regex!9334)) (EmptyExpr!9334) (Star!9334 (reg!9663 Regex!9334)) (EmptyLang!9334) (Union!9334 (regOne!19181 Regex!9334) (regTwo!19181 Regex!9334)) )
))
(declare-fun r!17423 () Regex!9334)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!283 (Regex!9334 List!35199) Unit!49071)

(assert (=> b!2986677 (= lt!1039550 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!283 (reg!9663 r!17423) s!11993))))

(assert (=> b!2986677 (= lt!1039553 (Exists!1607 lambda!111521))))

(declare-fun lt!1039552 () Regex!9334)

(declare-datatypes ((tuple2!33986 0))(
  ( (tuple2!33987 (_1!20125 List!35199) (_2!20125 List!35199)) )
))
(declare-datatypes ((Option!6725 0))(
  ( (None!6724) (Some!6724 (v!34858 tuple2!33986)) )
))
(declare-fun isDefined!5276 (Option!6725) Bool)

(declare-fun findConcatSeparation!1119 (Regex!9334 Regex!9334 List!35199 List!35199 List!35199) Option!6725)

(assert (=> b!2986677 (= lt!1039553 (isDefined!5276 (findConcatSeparation!1119 (reg!9663 r!17423) lt!1039552 Nil!35075 s!11993 s!11993)))))

(declare-fun lt!1039549 () Unit!49071)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!897 (Regex!9334 Regex!9334 List!35199) Unit!49071)

(assert (=> b!2986677 (= lt!1039549 (lemmaFindConcatSeparationEquivalentToExists!897 (reg!9663 r!17423) lt!1039552 s!11993))))

(assert (=> b!2986677 (= lt!1039552 (Star!9334 (reg!9663 r!17423)))))

(declare-fun b!2986678 () Bool)

(assert (=> b!2986678 (= e!1877887 tp_is_empty!16231)))

(declare-fun b!2986679 () Bool)

(declare-fun e!1877889 () Bool)

(assert (=> b!2986679 (= e!1877889 (not e!1877886))))

(declare-fun res!1231753 () Bool)

(assert (=> b!2986679 (=> res!1231753 e!1877886)))

(declare-fun lt!1039554 () Bool)

(assert (=> b!2986679 (= res!1231753 (or (not lt!1039554) (is-Concat!14655 r!17423) (is-Union!9334 r!17423) (not (is-Star!9334 r!17423))))))

(declare-fun matchRSpec!1471 (Regex!9334 List!35199) Bool)

(assert (=> b!2986679 (= lt!1039554 (matchRSpec!1471 r!17423 s!11993))))

(declare-fun matchR!4216 (Regex!9334 List!35199) Bool)

(assert (=> b!2986679 (= lt!1039554 (matchR!4216 r!17423 s!11993))))

(declare-fun lt!1039551 () Unit!49071)

(declare-fun mainMatchTheorem!1471 (Regex!9334 List!35199) Unit!49071)

(assert (=> b!2986679 (= lt!1039551 (mainMatchTheorem!1471 r!17423 s!11993))))

(declare-fun b!2986680 () Bool)

(declare-fun tp!950175 () Bool)

(declare-fun tp!950173 () Bool)

(assert (=> b!2986680 (= e!1877887 (and tp!950175 tp!950173))))

(declare-fun b!2986681 () Bool)

(declare-fun tp!950172 () Bool)

(declare-fun tp!950170 () Bool)

(assert (=> b!2986681 (= e!1877887 (and tp!950172 tp!950170))))

(declare-fun res!1231752 () Bool)

(assert (=> start!288486 (=> (not res!1231752) (not e!1877889))))

(declare-fun validRegex!4067 (Regex!9334) Bool)

(assert (=> start!288486 (= res!1231752 (validRegex!4067 r!17423))))

(assert (=> start!288486 e!1877889))

(assert (=> start!288486 e!1877887))

(assert (=> start!288486 e!1877888))

(assert (= (and start!288486 res!1231752) b!2986679))

(assert (= (and b!2986679 (not res!1231753)) b!2986676))

(assert (= (and b!2986676 (not res!1231751)) b!2986677))

(assert (= (and start!288486 (is-ElementMatch!9334 r!17423)) b!2986678))

(assert (= (and start!288486 (is-Concat!14655 r!17423)) b!2986681))

(assert (= (and start!288486 (is-Star!9334 r!17423)) b!2986675))

(assert (= (and start!288486 (is-Union!9334 r!17423)) b!2986680))

(assert (= (and start!288486 (is-Cons!35075 s!11993)) b!2986674))

(declare-fun m!3345121 () Bool)

(assert (=> b!2986676 m!3345121))

(declare-fun m!3345123 () Bool)

(assert (=> b!2986677 m!3345123))

(declare-fun m!3345125 () Bool)

(assert (=> b!2986677 m!3345125))

(declare-fun m!3345127 () Bool)

(assert (=> b!2986677 m!3345127))

(assert (=> b!2986677 m!3345123))

(declare-fun m!3345129 () Bool)

(assert (=> b!2986677 m!3345129))

(declare-fun m!3345131 () Bool)

(assert (=> b!2986677 m!3345131))

(assert (=> b!2986677 m!3345125))

(declare-fun m!3345133 () Bool)

(assert (=> b!2986677 m!3345133))

(declare-fun m!3345135 () Bool)

(assert (=> b!2986679 m!3345135))

(declare-fun m!3345137 () Bool)

(assert (=> b!2986679 m!3345137))

(declare-fun m!3345139 () Bool)

(assert (=> b!2986679 m!3345139))

(declare-fun m!3345141 () Bool)

(assert (=> start!288486 m!3345141))

(push 1)

(assert (not b!2986675))

(assert (not b!2986677))

(assert (not b!2986680))

(assert (not b!2986676))

(assert (not b!2986679))

(assert (not b!2986674))

(assert (not start!288486))

(assert tp_is_empty!16231)

(assert (not b!2986681))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!527445 () Bool)

(declare-fun b!2986769 () Bool)

(assert (= bs!527445 (and b!2986769 b!2986677)))

(declare-fun lambda!111535 () Int)

(assert (=> bs!527445 (not (= lambda!111535 lambda!111521))))

(assert (=> bs!527445 (= (= r!17423 lt!1039552) (= lambda!111535 lambda!111522))))

(assert (=> b!2986769 true))

(assert (=> b!2986769 true))

(declare-fun bs!527446 () Bool)

(declare-fun b!2986765 () Bool)

(assert (= bs!527446 (and b!2986765 b!2986677)))

(declare-fun lambda!111536 () Int)

(assert (=> bs!527446 (not (= lambda!111536 lambda!111521))))

(assert (=> bs!527446 (not (= lambda!111536 lambda!111522))))

(declare-fun bs!527447 () Bool)

(assert (= bs!527447 (and b!2986765 b!2986769)))

(assert (=> bs!527447 (not (= lambda!111536 lambda!111535))))

(assert (=> b!2986765 true))

(assert (=> b!2986765 true))

(declare-fun b!2986760 () Bool)

(declare-fun e!1877926 () Bool)

(declare-fun call!199675 () Bool)

(assert (=> b!2986760 (= e!1877926 call!199675)))

(declare-fun b!2986761 () Bool)

(declare-fun c!490746 () Bool)

(assert (=> b!2986761 (= c!490746 (is-Union!9334 r!17423))))

(declare-fun e!1877932 () Bool)

(declare-fun e!1877929 () Bool)

(assert (=> b!2986761 (= e!1877932 e!1877929)))

(declare-fun b!2986762 () Bool)

(declare-fun c!490747 () Bool)

(assert (=> b!2986762 (= c!490747 (is-ElementMatch!9334 r!17423))))

(declare-fun e!1877927 () Bool)

(assert (=> b!2986762 (= e!1877927 e!1877932)))

(declare-fun b!2986763 () Bool)

(declare-fun e!1877930 () Bool)

(assert (=> b!2986763 (= e!1877929 e!1877930)))

(declare-fun c!490745 () Bool)

(assert (=> b!2986763 (= c!490745 (is-Star!9334 r!17423))))

(declare-fun call!199676 () Bool)

(declare-fun bm!199670 () Bool)

(assert (=> bm!199670 (= call!199676 (Exists!1607 (ite c!490745 lambda!111535 lambda!111536)))))

(assert (=> b!2986765 (= e!1877930 call!199676)))

(declare-fun b!2986766 () Bool)

(assert (=> b!2986766 (= e!1877932 (= s!11993 (Cons!35075 (c!490734 r!17423) Nil!35075)))))

(declare-fun b!2986767 () Bool)

(declare-fun e!1877928 () Bool)

(assert (=> b!2986767 (= e!1877928 (matchRSpec!1471 (regTwo!19181 r!17423) s!11993))))

(declare-fun b!2986768 () Bool)

(assert (=> b!2986768 (= e!1877929 e!1877928)))

(declare-fun res!1231795 () Bool)

(assert (=> b!2986768 (= res!1231795 (matchRSpec!1471 (regOne!19181 r!17423) s!11993))))

(assert (=> b!2986768 (=> res!1231795 e!1877928)))

(declare-fun e!1877931 () Bool)

(assert (=> b!2986769 (= e!1877931 call!199676)))

(declare-fun d!844123 () Bool)

(declare-fun c!490744 () Bool)

(assert (=> d!844123 (= c!490744 (is-EmptyExpr!9334 r!17423))))

(assert (=> d!844123 (= (matchRSpec!1471 r!17423 s!11993) e!1877926)))

(declare-fun b!2986764 () Bool)

(declare-fun res!1231794 () Bool)

(assert (=> b!2986764 (=> res!1231794 e!1877931)))

(assert (=> b!2986764 (= res!1231794 call!199675)))

(assert (=> b!2986764 (= e!1877930 e!1877931)))

(declare-fun b!2986770 () Bool)

(assert (=> b!2986770 (= e!1877926 e!1877927)))

(declare-fun res!1231793 () Bool)

(assert (=> b!2986770 (= res!1231793 (not (is-EmptyLang!9334 r!17423)))))

(assert (=> b!2986770 (=> (not res!1231793) (not e!1877927))))

(declare-fun bm!199671 () Bool)

(assert (=> bm!199671 (= call!199675 (isEmpty!19334 s!11993))))

(assert (= (and d!844123 c!490744) b!2986760))

(assert (= (and d!844123 (not c!490744)) b!2986770))

(assert (= (and b!2986770 res!1231793) b!2986762))

(assert (= (and b!2986762 c!490747) b!2986766))

(assert (= (and b!2986762 (not c!490747)) b!2986761))

(assert (= (and b!2986761 c!490746) b!2986768))

(assert (= (and b!2986761 (not c!490746)) b!2986763))

(assert (= (and b!2986768 (not res!1231795)) b!2986767))

(assert (= (and b!2986763 c!490745) b!2986764))

(assert (= (and b!2986763 (not c!490745)) b!2986765))

(assert (= (and b!2986764 (not res!1231794)) b!2986769))

(assert (= (or b!2986769 b!2986765) bm!199670))

(assert (= (or b!2986760 b!2986764) bm!199671))

(declare-fun m!3345167 () Bool)

(assert (=> bm!199670 m!3345167))

(declare-fun m!3345169 () Bool)

(assert (=> b!2986767 m!3345169))

(declare-fun m!3345171 () Bool)

(assert (=> b!2986768 m!3345171))

(assert (=> bm!199671 m!3345121))

(assert (=> b!2986679 d!844123))

(declare-fun b!2986803 () Bool)

(declare-fun e!1877954 () Bool)

(declare-fun e!1877955 () Bool)

(assert (=> b!2986803 (= e!1877954 e!1877955)))

(declare-fun c!490756 () Bool)

(assert (=> b!2986803 (= c!490756 (is-EmptyLang!9334 r!17423))))

(declare-fun d!844129 () Bool)

(assert (=> d!844129 e!1877954))

(declare-fun c!490755 () Bool)

(assert (=> d!844129 (= c!490755 (is-EmptyExpr!9334 r!17423))))

(declare-fun lt!1039577 () Bool)

(declare-fun e!1877950 () Bool)

(assert (=> d!844129 (= lt!1039577 e!1877950)))

(declare-fun c!490754 () Bool)

(assert (=> d!844129 (= c!490754 (isEmpty!19334 s!11993))))

(assert (=> d!844129 (validRegex!4067 r!17423)))

(assert (=> d!844129 (= (matchR!4216 r!17423 s!11993) lt!1039577)))

(declare-fun b!2986804 () Bool)

(declare-fun derivativeStep!2604 (Regex!9334 C!18854) Regex!9334)

(declare-fun head!6663 (List!35199) C!18854)

(declare-fun tail!4889 (List!35199) List!35199)

(assert (=> b!2986804 (= e!1877950 (matchR!4216 (derivativeStep!2604 r!17423 (head!6663 s!11993)) (tail!4889 s!11993)))))

(declare-fun b!2986805 () Bool)

(declare-fun call!199679 () Bool)

(assert (=> b!2986805 (= e!1877954 (= lt!1039577 call!199679))))

(declare-fun b!2986806 () Bool)

(declare-fun res!1231816 () Bool)

(declare-fun e!1877952 () Bool)

(assert (=> b!2986806 (=> res!1231816 e!1877952)))

(declare-fun e!1877951 () Bool)

(assert (=> b!2986806 (= res!1231816 e!1877951)))

(declare-fun res!1231820 () Bool)

(assert (=> b!2986806 (=> (not res!1231820) (not e!1877951))))

(assert (=> b!2986806 (= res!1231820 lt!1039577)))

(declare-fun b!2986807 () Bool)

(declare-fun e!1877949 () Bool)

(declare-fun e!1877953 () Bool)

(assert (=> b!2986807 (= e!1877949 e!1877953)))

(declare-fun res!1231821 () Bool)

(assert (=> b!2986807 (=> res!1231821 e!1877953)))

(assert (=> b!2986807 (= res!1231821 call!199679)))

(declare-fun b!2986808 () Bool)

(assert (=> b!2986808 (= e!1877955 (not lt!1039577))))

(declare-fun b!2986809 () Bool)

(assert (=> b!2986809 (= e!1877953 (not (= (head!6663 s!11993) (c!490734 r!17423))))))

(declare-fun b!2986810 () Bool)

(declare-fun res!1231819 () Bool)

(assert (=> b!2986810 (=> res!1231819 e!1877953)))

(assert (=> b!2986810 (= res!1231819 (not (isEmpty!19334 (tail!4889 s!11993))))))

(declare-fun b!2986811 () Bool)

(declare-fun res!1231818 () Bool)

(assert (=> b!2986811 (=> (not res!1231818) (not e!1877951))))

(assert (=> b!2986811 (= res!1231818 (not call!199679))))

(declare-fun bm!199674 () Bool)

(assert (=> bm!199674 (= call!199679 (isEmpty!19334 s!11993))))

(declare-fun b!2986812 () Bool)

(declare-fun res!1231822 () Bool)

(assert (=> b!2986812 (=> res!1231822 e!1877952)))

(assert (=> b!2986812 (= res!1231822 (not (is-ElementMatch!9334 r!17423)))))

(assert (=> b!2986812 (= e!1877955 e!1877952)))

(declare-fun b!2986813 () Bool)

(declare-fun nullable!3005 (Regex!9334) Bool)

(assert (=> b!2986813 (= e!1877950 (nullable!3005 r!17423))))

(declare-fun b!2986814 () Bool)

(assert (=> b!2986814 (= e!1877951 (= (head!6663 s!11993) (c!490734 r!17423)))))

(declare-fun b!2986815 () Bool)

(assert (=> b!2986815 (= e!1877952 e!1877949)))

(declare-fun res!1231817 () Bool)

(assert (=> b!2986815 (=> (not res!1231817) (not e!1877949))))

(assert (=> b!2986815 (= res!1231817 (not lt!1039577))))

(declare-fun b!2986816 () Bool)

(declare-fun res!1231823 () Bool)

(assert (=> b!2986816 (=> (not res!1231823) (not e!1877951))))

(assert (=> b!2986816 (= res!1231823 (isEmpty!19334 (tail!4889 s!11993)))))

(assert (= (and d!844129 c!490754) b!2986813))

(assert (= (and d!844129 (not c!490754)) b!2986804))

(assert (= (and d!844129 c!490755) b!2986805))

(assert (= (and d!844129 (not c!490755)) b!2986803))

(assert (= (and b!2986803 c!490756) b!2986808))

(assert (= (and b!2986803 (not c!490756)) b!2986812))

(assert (= (and b!2986812 (not res!1231822)) b!2986806))

(assert (= (and b!2986806 res!1231820) b!2986811))

(assert (= (and b!2986811 res!1231818) b!2986816))

(assert (= (and b!2986816 res!1231823) b!2986814))

(assert (= (and b!2986806 (not res!1231816)) b!2986815))

(assert (= (and b!2986815 res!1231817) b!2986807))

(assert (= (and b!2986807 (not res!1231821)) b!2986810))

(assert (= (and b!2986810 (not res!1231819)) b!2986809))

(assert (= (or b!2986805 b!2986807 b!2986811) bm!199674))

(declare-fun m!3345173 () Bool)

(assert (=> b!2986816 m!3345173))

(assert (=> b!2986816 m!3345173))

(declare-fun m!3345175 () Bool)

(assert (=> b!2986816 m!3345175))

(declare-fun m!3345177 () Bool)

(assert (=> b!2986809 m!3345177))

(assert (=> b!2986814 m!3345177))

(assert (=> bm!199674 m!3345121))

(declare-fun m!3345179 () Bool)

(assert (=> b!2986813 m!3345179))

(assert (=> b!2986810 m!3345173))

(assert (=> b!2986810 m!3345173))

(assert (=> b!2986810 m!3345175))

(assert (=> b!2986804 m!3345177))

(assert (=> b!2986804 m!3345177))

(declare-fun m!3345181 () Bool)

(assert (=> b!2986804 m!3345181))

(assert (=> b!2986804 m!3345173))

(assert (=> b!2986804 m!3345181))

(assert (=> b!2986804 m!3345173))

(declare-fun m!3345183 () Bool)

(assert (=> b!2986804 m!3345183))

(assert (=> d!844129 m!3345121))

(assert (=> d!844129 m!3345141))

(assert (=> b!2986679 d!844129))

(declare-fun d!844131 () Bool)

(assert (=> d!844131 (= (matchR!4216 r!17423 s!11993) (matchRSpec!1471 r!17423 s!11993))))

(declare-fun lt!1039581 () Unit!49071)

(declare-fun choose!17702 (Regex!9334 List!35199) Unit!49071)

(assert (=> d!844131 (= lt!1039581 (choose!17702 r!17423 s!11993))))

(assert (=> d!844131 (validRegex!4067 r!17423)))

(assert (=> d!844131 (= (mainMatchTheorem!1471 r!17423 s!11993) lt!1039581)))

(declare-fun bs!527450 () Bool)

(assert (= bs!527450 d!844131))

(assert (=> bs!527450 m!3345137))

(assert (=> bs!527450 m!3345135))

(declare-fun m!3345191 () Bool)

(assert (=> bs!527450 m!3345191))

(assert (=> bs!527450 m!3345141))

(assert (=> b!2986679 d!844131))

(declare-fun b!2986835 () Bool)

(declare-fun e!1877971 () Bool)

(declare-fun e!1877975 () Bool)

(assert (=> b!2986835 (= e!1877971 e!1877975)))

(declare-fun res!1231838 () Bool)

(assert (=> b!2986835 (=> (not res!1231838) (not e!1877975))))

(declare-fun call!199686 () Bool)

(assert (=> b!2986835 (= res!1231838 call!199686)))

(declare-fun b!2986836 () Bool)

(declare-fun res!1231835 () Bool)

(assert (=> b!2986836 (=> res!1231835 e!1877971)))

(assert (=> b!2986836 (= res!1231835 (not (is-Concat!14655 r!17423)))))

(declare-fun e!1877972 () Bool)

(assert (=> b!2986836 (= e!1877972 e!1877971)))

(declare-fun call!199687 () Bool)

(declare-fun bm!199681 () Bool)

(declare-fun c!490761 () Bool)

(declare-fun c!490762 () Bool)

(assert (=> bm!199681 (= call!199687 (validRegex!4067 (ite c!490761 (reg!9663 r!17423) (ite c!490762 (regOne!19181 r!17423) (regTwo!19180 r!17423)))))))

(declare-fun b!2986837 () Bool)

(declare-fun e!1877974 () Bool)

(declare-fun e!1877973 () Bool)

(assert (=> b!2986837 (= e!1877974 e!1877973)))

(declare-fun res!1231834 () Bool)

(assert (=> b!2986837 (= res!1231834 (not (nullable!3005 (reg!9663 r!17423))))))

(assert (=> b!2986837 (=> (not res!1231834) (not e!1877973))))

(declare-fun b!2986838 () Bool)

(assert (=> b!2986838 (= e!1877974 e!1877972)))

(assert (=> b!2986838 (= c!490762 (is-Union!9334 r!17423))))

(declare-fun bm!199682 () Bool)

(assert (=> bm!199682 (= call!199686 (validRegex!4067 (ite c!490762 (regTwo!19181 r!17423) (regOne!19180 r!17423))))))

(declare-fun b!2986839 () Bool)

(declare-fun e!1877976 () Bool)

(assert (=> b!2986839 (= e!1877976 e!1877974)))

(assert (=> b!2986839 (= c!490761 (is-Star!9334 r!17423))))

(declare-fun b!2986840 () Bool)

(declare-fun e!1877970 () Bool)

(assert (=> b!2986840 (= e!1877970 call!199686)))

(declare-fun b!2986841 () Bool)

(declare-fun call!199688 () Bool)

(assert (=> b!2986841 (= e!1877975 call!199688)))

(declare-fun bm!199683 () Bool)

(assert (=> bm!199683 (= call!199688 call!199687)))

(declare-fun b!2986842 () Bool)

(assert (=> b!2986842 (= e!1877973 call!199687)))

(declare-fun d!844135 () Bool)

(declare-fun res!1231836 () Bool)

(assert (=> d!844135 (=> res!1231836 e!1877976)))

(assert (=> d!844135 (= res!1231836 (is-ElementMatch!9334 r!17423))))

(assert (=> d!844135 (= (validRegex!4067 r!17423) e!1877976)))

(declare-fun b!2986843 () Bool)

(declare-fun res!1231837 () Bool)

(assert (=> b!2986843 (=> (not res!1231837) (not e!1877970))))

(assert (=> b!2986843 (= res!1231837 call!199688)))

(assert (=> b!2986843 (= e!1877972 e!1877970)))

(assert (= (and d!844135 (not res!1231836)) b!2986839))

(assert (= (and b!2986839 c!490761) b!2986837))

(assert (= (and b!2986839 (not c!490761)) b!2986838))

(assert (= (and b!2986837 res!1231834) b!2986842))

(assert (= (and b!2986838 c!490762) b!2986843))

(assert (= (and b!2986838 (not c!490762)) b!2986836))

(assert (= (and b!2986843 res!1231837) b!2986840))

(assert (= (and b!2986836 (not res!1231835)) b!2986835))

(assert (= (and b!2986835 res!1231838) b!2986841))

(assert (= (or b!2986843 b!2986841) bm!199683))

(assert (= (or b!2986840 b!2986835) bm!199682))

(assert (= (or b!2986842 bm!199683) bm!199681))

(declare-fun m!3345193 () Bool)

(assert (=> bm!199681 m!3345193))

(declare-fun m!3345195 () Bool)

(assert (=> b!2986837 m!3345195))

(declare-fun m!3345197 () Bool)

(assert (=> bm!199682 m!3345197))

(assert (=> start!288486 d!844135))

(declare-fun d!844137 () Bool)

(assert (=> d!844137 (= (isEmpty!19334 s!11993) (is-Nil!35075 s!11993))))

(assert (=> b!2986676 d!844137))

(declare-fun bs!527451 () Bool)

(declare-fun d!844139 () Bool)

(assert (= bs!527451 (and d!844139 b!2986677)))

(declare-fun lambda!111542 () Int)

(assert (=> bs!527451 (= lambda!111542 lambda!111521)))

(assert (=> bs!527451 (not (= lambda!111542 lambda!111522))))

(declare-fun bs!527452 () Bool)

(assert (= bs!527452 (and d!844139 b!2986769)))

(assert (=> bs!527452 (not (= lambda!111542 lambda!111535))))

(declare-fun bs!527453 () Bool)

(assert (= bs!527453 (and d!844139 b!2986765)))

(assert (=> bs!527453 (not (= lambda!111542 lambda!111536))))

(assert (=> d!844139 true))

(assert (=> d!844139 true))

(assert (=> d!844139 true))

(assert (=> d!844139 (= (isDefined!5276 (findConcatSeparation!1119 (reg!9663 r!17423) lt!1039552 Nil!35075 s!11993 s!11993)) (Exists!1607 lambda!111542))))

(declare-fun lt!1039586 () Unit!49071)

(declare-fun choose!17703 (Regex!9334 Regex!9334 List!35199) Unit!49071)

(assert (=> d!844139 (= lt!1039586 (choose!17703 (reg!9663 r!17423) lt!1039552 s!11993))))

(assert (=> d!844139 (validRegex!4067 (reg!9663 r!17423))))

(assert (=> d!844139 (= (lemmaFindConcatSeparationEquivalentToExists!897 (reg!9663 r!17423) lt!1039552 s!11993) lt!1039586)))

(declare-fun bs!527454 () Bool)

(assert (= bs!527454 d!844139))

(assert (=> bs!527454 m!3345125))

(assert (=> bs!527454 m!3345133))

(assert (=> bs!527454 m!3345125))

(declare-fun m!3345199 () Bool)

(assert (=> bs!527454 m!3345199))

(declare-fun m!3345201 () Bool)

(assert (=> bs!527454 m!3345201))

(declare-fun m!3345203 () Bool)

(assert (=> bs!527454 m!3345203))

(assert (=> b!2986677 d!844139))

(declare-fun bs!527455 () Bool)

(declare-fun d!844141 () Bool)

(assert (= bs!527455 (and d!844141 b!2986765)))

(declare-fun lambda!111551 () Int)

(assert (=> bs!527455 (not (= lambda!111551 lambda!111536))))

(declare-fun bs!527456 () Bool)

(assert (= bs!527456 (and d!844141 b!2986677)))

(assert (=> bs!527456 (= (= (Star!9334 (reg!9663 r!17423)) lt!1039552) (= lambda!111551 lambda!111521))))

(assert (=> bs!527456 (not (= lambda!111551 lambda!111522))))

(declare-fun bs!527457 () Bool)

(assert (= bs!527457 (and d!844141 b!2986769)))

(assert (=> bs!527457 (not (= lambda!111551 lambda!111535))))

(declare-fun bs!527458 () Bool)

(assert (= bs!527458 (and d!844141 d!844139)))

(assert (=> bs!527458 (= (= (Star!9334 (reg!9663 r!17423)) lt!1039552) (= lambda!111551 lambda!111542))))

(assert (=> d!844141 true))

(assert (=> d!844141 true))

(declare-fun lambda!111553 () Int)

(assert (=> bs!527455 (not (= lambda!111553 lambda!111536))))

(declare-fun bs!527460 () Bool)

(assert (= bs!527460 d!844141))

(assert (=> bs!527460 (not (= lambda!111553 lambda!111551))))

(assert (=> bs!527456 (not (= lambda!111553 lambda!111521))))

(assert (=> bs!527456 (= (= (Star!9334 (reg!9663 r!17423)) lt!1039552) (= lambda!111553 lambda!111522))))

(assert (=> bs!527457 (= (= (Star!9334 (reg!9663 r!17423)) r!17423) (= lambda!111553 lambda!111535))))

(assert (=> bs!527458 (not (= lambda!111553 lambda!111542))))

(assert (=> d!844141 true))

(assert (=> d!844141 true))

(assert (=> d!844141 (= (Exists!1607 lambda!111551) (Exists!1607 lambda!111553))))

(declare-fun lt!1039589 () Unit!49071)

(declare-fun choose!17704 (Regex!9334 List!35199) Unit!49071)

(assert (=> d!844141 (= lt!1039589 (choose!17704 (reg!9663 r!17423) s!11993))))

(assert (=> d!844141 (validRegex!4067 (reg!9663 r!17423))))

(assert (=> d!844141 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!283 (reg!9663 r!17423) s!11993) lt!1039589)))

(declare-fun m!3345205 () Bool)

(assert (=> bs!527460 m!3345205))

(declare-fun m!3345207 () Bool)

(assert (=> bs!527460 m!3345207))

(declare-fun m!3345209 () Bool)

(assert (=> bs!527460 m!3345209))

(assert (=> bs!527460 m!3345203))

(assert (=> b!2986677 d!844141))

(declare-fun d!844143 () Bool)

(declare-fun choose!17705 (Int) Bool)

(assert (=> d!844143 (= (Exists!1607 lambda!111521) (choose!17705 lambda!111521))))

(declare-fun bs!527462 () Bool)

(assert (= bs!527462 d!844143))

(declare-fun m!3345211 () Bool)

(assert (=> bs!527462 m!3345211))

(assert (=> b!2986677 d!844143))

(declare-fun d!844145 () Bool)

(declare-fun isEmpty!19336 (Option!6725) Bool)

(assert (=> d!844145 (= (isDefined!5276 (findConcatSeparation!1119 (reg!9663 r!17423) lt!1039552 Nil!35075 s!11993 s!11993)) (not (isEmpty!19336 (findConcatSeparation!1119 (reg!9663 r!17423) lt!1039552 Nil!35075 s!11993 s!11993))))))

(declare-fun bs!527463 () Bool)

(assert (= bs!527463 d!844145))

(assert (=> bs!527463 m!3345125))

(declare-fun m!3345213 () Bool)

(assert (=> bs!527463 m!3345213))

(assert (=> b!2986677 d!844145))

(declare-fun d!844147 () Bool)

(assert (=> d!844147 (= (Exists!1607 lambda!111522) (choose!17705 lambda!111522))))

(declare-fun bs!527464 () Bool)

(assert (= bs!527464 d!844147))

(declare-fun m!3345215 () Bool)

(assert (=> bs!527464 m!3345215))

(assert (=> b!2986677 d!844147))

(declare-fun d!844149 () Bool)

(declare-fun e!1877998 () Bool)

(assert (=> d!844149 e!1877998))

(declare-fun res!1231877 () Bool)

(assert (=> d!844149 (=> res!1231877 e!1877998)))

(declare-fun e!1877997 () Bool)

(assert (=> d!844149 (= res!1231877 e!1877997)))

(declare-fun res!1231876 () Bool)

(assert (=> d!844149 (=> (not res!1231876) (not e!1877997))))

(declare-fun lt!1039598 () Option!6725)

(assert (=> d!844149 (= res!1231876 (isDefined!5276 lt!1039598))))

(declare-fun e!1877999 () Option!6725)

(assert (=> d!844149 (= lt!1039598 e!1877999)))

(declare-fun c!490767 () Bool)

(declare-fun e!1878000 () Bool)

(assert (=> d!844149 (= c!490767 e!1878000)))

(declare-fun res!1231873 () Bool)

(assert (=> d!844149 (=> (not res!1231873) (not e!1878000))))

(assert (=> d!844149 (= res!1231873 (matchR!4216 (reg!9663 r!17423) Nil!35075))))

(assert (=> d!844149 (validRegex!4067 (reg!9663 r!17423))))

(assert (=> d!844149 (= (findConcatSeparation!1119 (reg!9663 r!17423) lt!1039552 Nil!35075 s!11993 s!11993) lt!1039598)))

(declare-fun b!2986886 () Bool)

(assert (=> b!2986886 (= e!1878000 (matchR!4216 lt!1039552 s!11993))))

(declare-fun b!2986887 () Bool)

(declare-fun ++!8379 (List!35199 List!35199) List!35199)

(declare-fun get!10860 (Option!6725) tuple2!33986)

(assert (=> b!2986887 (= e!1877997 (= (++!8379 (_1!20125 (get!10860 lt!1039598)) (_2!20125 (get!10860 lt!1039598))) s!11993))))

(declare-fun b!2986888 () Bool)

(declare-fun res!1231875 () Bool)

(assert (=> b!2986888 (=> (not res!1231875) (not e!1877997))))

(assert (=> b!2986888 (= res!1231875 (matchR!4216 (reg!9663 r!17423) (_1!20125 (get!10860 lt!1039598))))))

(declare-fun b!2986889 () Bool)

(declare-fun res!1231874 () Bool)

(assert (=> b!2986889 (=> (not res!1231874) (not e!1877997))))

(assert (=> b!2986889 (= res!1231874 (matchR!4216 lt!1039552 (_2!20125 (get!10860 lt!1039598))))))

(declare-fun b!2986890 () Bool)

(declare-fun lt!1039599 () Unit!49071)

(declare-fun lt!1039597 () Unit!49071)

(assert (=> b!2986890 (= lt!1039599 lt!1039597)))

(assert (=> b!2986890 (= (++!8379 (++!8379 Nil!35075 (Cons!35075 (h!40495 s!11993) Nil!35075)) (t!234264 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!994 (List!35199 C!18854 List!35199 List!35199) Unit!49071)

(assert (=> b!2986890 (= lt!1039597 (lemmaMoveElementToOtherListKeepsConcatEq!994 Nil!35075 (h!40495 s!11993) (t!234264 s!11993) s!11993))))

(declare-fun e!1878001 () Option!6725)

(assert (=> b!2986890 (= e!1878001 (findConcatSeparation!1119 (reg!9663 r!17423) lt!1039552 (++!8379 Nil!35075 (Cons!35075 (h!40495 s!11993) Nil!35075)) (t!234264 s!11993) s!11993))))

(declare-fun b!2986891 () Bool)

(assert (=> b!2986891 (= e!1877998 (not (isDefined!5276 lt!1039598)))))

(declare-fun b!2986892 () Bool)

(assert (=> b!2986892 (= e!1878001 None!6724)))

(declare-fun b!2986893 () Bool)

(assert (=> b!2986893 (= e!1877999 (Some!6724 (tuple2!33987 Nil!35075 s!11993)))))

(declare-fun b!2986894 () Bool)

(assert (=> b!2986894 (= e!1877999 e!1878001)))

(declare-fun c!490768 () Bool)

(assert (=> b!2986894 (= c!490768 (is-Nil!35075 s!11993))))

(assert (= (and d!844149 res!1231873) b!2986886))

(assert (= (and d!844149 c!490767) b!2986893))

(assert (= (and d!844149 (not c!490767)) b!2986894))

(assert (= (and b!2986894 c!490768) b!2986892))

(assert (= (and b!2986894 (not c!490768)) b!2986890))

(assert (= (and d!844149 res!1231876) b!2986888))

(assert (= (and b!2986888 res!1231875) b!2986889))

(assert (= (and b!2986889 res!1231874) b!2986887))

(assert (= (and d!844149 (not res!1231877)) b!2986891))

(declare-fun m!3345227 () Bool)

(assert (=> b!2986890 m!3345227))

(assert (=> b!2986890 m!3345227))

(declare-fun m!3345229 () Bool)

(assert (=> b!2986890 m!3345229))

(declare-fun m!3345231 () Bool)

(assert (=> b!2986890 m!3345231))

(assert (=> b!2986890 m!3345227))

(declare-fun m!3345233 () Bool)

(assert (=> b!2986890 m!3345233))

(declare-fun m!3345235 () Bool)

(assert (=> b!2986889 m!3345235))

(declare-fun m!3345237 () Bool)

(assert (=> b!2986889 m!3345237))

(declare-fun m!3345239 () Bool)

(assert (=> d!844149 m!3345239))

(declare-fun m!3345241 () Bool)

(assert (=> d!844149 m!3345241))

(assert (=> d!844149 m!3345203))

(declare-fun m!3345243 () Bool)

(assert (=> b!2986886 m!3345243))

(assert (=> b!2986891 m!3345239))

(assert (=> b!2986888 m!3345235))

(declare-fun m!3345245 () Bool)

(assert (=> b!2986888 m!3345245))

(assert (=> b!2986887 m!3345235))

(declare-fun m!3345247 () Bool)

(assert (=> b!2986887 m!3345247))

(assert (=> b!2986677 d!844149))

(declare-fun b!2986908 () Bool)

(declare-fun e!1878004 () Bool)

(declare-fun tp!950207 () Bool)

(declare-fun tp!950206 () Bool)

(assert (=> b!2986908 (= e!1878004 (and tp!950207 tp!950206))))

(assert (=> b!2986680 (= tp!950175 e!1878004)))

(declare-fun b!2986906 () Bool)

(declare-fun tp!950204 () Bool)

(declare-fun tp!950205 () Bool)

(assert (=> b!2986906 (= e!1878004 (and tp!950204 tp!950205))))

(declare-fun b!2986905 () Bool)

(assert (=> b!2986905 (= e!1878004 tp_is_empty!16231)))

(declare-fun b!2986907 () Bool)

(declare-fun tp!950208 () Bool)

(assert (=> b!2986907 (= e!1878004 tp!950208)))

(assert (= (and b!2986680 (is-ElementMatch!9334 (regOne!19181 r!17423))) b!2986905))

(assert (= (and b!2986680 (is-Concat!14655 (regOne!19181 r!17423))) b!2986906))

(assert (= (and b!2986680 (is-Star!9334 (regOne!19181 r!17423))) b!2986907))

(assert (= (and b!2986680 (is-Union!9334 (regOne!19181 r!17423))) b!2986908))

(declare-fun b!2986912 () Bool)

(declare-fun e!1878005 () Bool)

(declare-fun tp!950212 () Bool)

(declare-fun tp!950211 () Bool)

(assert (=> b!2986912 (= e!1878005 (and tp!950212 tp!950211))))

(assert (=> b!2986680 (= tp!950173 e!1878005)))

(declare-fun b!2986910 () Bool)

(declare-fun tp!950209 () Bool)

(declare-fun tp!950210 () Bool)

(assert (=> b!2986910 (= e!1878005 (and tp!950209 tp!950210))))

(declare-fun b!2986909 () Bool)

(assert (=> b!2986909 (= e!1878005 tp_is_empty!16231)))

(declare-fun b!2986911 () Bool)

(declare-fun tp!950213 () Bool)

(assert (=> b!2986911 (= e!1878005 tp!950213)))

(assert (= (and b!2986680 (is-ElementMatch!9334 (regTwo!19181 r!17423))) b!2986909))

(assert (= (and b!2986680 (is-Concat!14655 (regTwo!19181 r!17423))) b!2986910))

(assert (= (and b!2986680 (is-Star!9334 (regTwo!19181 r!17423))) b!2986911))

(assert (= (and b!2986680 (is-Union!9334 (regTwo!19181 r!17423))) b!2986912))

(declare-fun b!2986916 () Bool)

(declare-fun e!1878006 () Bool)

(declare-fun tp!950217 () Bool)

(declare-fun tp!950216 () Bool)

(assert (=> b!2986916 (= e!1878006 (and tp!950217 tp!950216))))

(assert (=> b!2986675 (= tp!950174 e!1878006)))

(declare-fun b!2986914 () Bool)

(declare-fun tp!950214 () Bool)

(declare-fun tp!950215 () Bool)

(assert (=> b!2986914 (= e!1878006 (and tp!950214 tp!950215))))

(declare-fun b!2986913 () Bool)

(assert (=> b!2986913 (= e!1878006 tp_is_empty!16231)))

(declare-fun b!2986915 () Bool)

(declare-fun tp!950218 () Bool)

(assert (=> b!2986915 (= e!1878006 tp!950218)))

(assert (= (and b!2986675 (is-ElementMatch!9334 (reg!9663 r!17423))) b!2986913))

(assert (= (and b!2986675 (is-Concat!14655 (reg!9663 r!17423))) b!2986914))

(assert (= (and b!2986675 (is-Star!9334 (reg!9663 r!17423))) b!2986915))

(assert (= (and b!2986675 (is-Union!9334 (reg!9663 r!17423))) b!2986916))

(declare-fun b!2986920 () Bool)

(declare-fun e!1878007 () Bool)

(declare-fun tp!950222 () Bool)

(declare-fun tp!950221 () Bool)

(assert (=> b!2986920 (= e!1878007 (and tp!950222 tp!950221))))

(assert (=> b!2986681 (= tp!950172 e!1878007)))

(declare-fun b!2986918 () Bool)

(declare-fun tp!950219 () Bool)

(declare-fun tp!950220 () Bool)

(assert (=> b!2986918 (= e!1878007 (and tp!950219 tp!950220))))

(declare-fun b!2986917 () Bool)

(assert (=> b!2986917 (= e!1878007 tp_is_empty!16231)))

(declare-fun b!2986919 () Bool)

(declare-fun tp!950223 () Bool)

(assert (=> b!2986919 (= e!1878007 tp!950223)))

(assert (= (and b!2986681 (is-ElementMatch!9334 (regOne!19180 r!17423))) b!2986917))

(assert (= (and b!2986681 (is-Concat!14655 (regOne!19180 r!17423))) b!2986918))

(assert (= (and b!2986681 (is-Star!9334 (regOne!19180 r!17423))) b!2986919))

(assert (= (and b!2986681 (is-Union!9334 (regOne!19180 r!17423))) b!2986920))

(declare-fun b!2986924 () Bool)

(declare-fun e!1878008 () Bool)

(declare-fun tp!950227 () Bool)

(declare-fun tp!950226 () Bool)

(assert (=> b!2986924 (= e!1878008 (and tp!950227 tp!950226))))

(assert (=> b!2986681 (= tp!950170 e!1878008)))

(declare-fun b!2986922 () Bool)

(declare-fun tp!950224 () Bool)

(declare-fun tp!950225 () Bool)

(assert (=> b!2986922 (= e!1878008 (and tp!950224 tp!950225))))

(declare-fun b!2986921 () Bool)

(assert (=> b!2986921 (= e!1878008 tp_is_empty!16231)))

(declare-fun b!2986923 () Bool)

(declare-fun tp!950228 () Bool)

(assert (=> b!2986923 (= e!1878008 tp!950228)))

(assert (= (and b!2986681 (is-ElementMatch!9334 (regTwo!19180 r!17423))) b!2986921))

(assert (= (and b!2986681 (is-Concat!14655 (regTwo!19180 r!17423))) b!2986922))

(assert (= (and b!2986681 (is-Star!9334 (regTwo!19180 r!17423))) b!2986923))

(assert (= (and b!2986681 (is-Union!9334 (regTwo!19180 r!17423))) b!2986924))

(declare-fun b!2986929 () Bool)

(declare-fun e!1878011 () Bool)

(declare-fun tp!950231 () Bool)

(assert (=> b!2986929 (= e!1878011 (and tp_is_empty!16231 tp!950231))))

(assert (=> b!2986674 (= tp!950171 e!1878011)))

(assert (= (and b!2986674 (is-Cons!35075 (t!234264 s!11993))) b!2986929))

(push 1)

(assert (not d!844131))

(assert (not d!844129))

(assert (not b!2986919))

(assert (not b!2986912))

(assert (not b!2986886))

(assert (not d!844141))

(assert (not bm!199670))

(assert (not b!2986923))

(assert (not b!2986916))

(assert (not bm!199681))

(assert tp_is_empty!16231)

(assert (not b!2986915))

(assert (not d!844143))

(assert (not b!2986816))

(assert (not d!844139))

(assert (not b!2986907))

(assert (not b!2986814))

(assert (not bm!199671))

(assert (not bm!199682))

(assert (not b!2986810))

(assert (not b!2986804))

(assert (not b!2986920))

(assert (not b!2986809))

(assert (not b!2986908))

(assert (not b!2986889))

(assert (not b!2986914))

(assert (not b!2986887))

(assert (not b!2986767))

(assert (not bm!199674))

(assert (not d!844145))

(assert (not b!2986924))

(assert (not b!2986929))

(assert (not b!2986837))

(assert (not b!2986922))

(assert (not b!2986918))

(assert (not b!2986910))

(assert (not b!2986890))

(assert (not b!2986768))

(assert (not d!844147))

(assert (not b!2986906))

(assert (not b!2986891))

(assert (not b!2986813))

(assert (not d!844149))

(assert (not b!2986888))

(assert (not b!2986911))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

