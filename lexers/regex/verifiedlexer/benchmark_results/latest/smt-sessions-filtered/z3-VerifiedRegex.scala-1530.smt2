; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80466 () Bool)

(assert start!80466)

(declare-fun b!892744 () Bool)

(declare-fun e!584733 () Bool)

(declare-fun e!584735 () Bool)

(assert (=> b!892744 (= e!584733 e!584735)))

(declare-fun res!405840 () Bool)

(assert (=> b!892744 (=> res!405840 e!584735)))

(declare-fun lt!332739 () Bool)

(assert (=> b!892744 (= res!405840 lt!332739)))

(declare-fun e!584738 () Bool)

(assert (=> b!892744 e!584738))

(declare-fun res!405841 () Bool)

(assert (=> b!892744 (=> res!405841 e!584738)))

(assert (=> b!892744 (= res!405841 lt!332739)))

(declare-datatypes ((C!5208 0))(
  ( (C!5209 (val!2852 Int)) )
))
(declare-datatypes ((Regex!2319 0))(
  ( (ElementMatch!2319 (c!144518 C!5208)) (Concat!4152 (regOne!5150 Regex!2319) (regTwo!5150 Regex!2319)) (EmptyExpr!2319) (Star!2319 (reg!2648 Regex!2319)) (EmptyLang!2319) (Union!2319 (regOne!5151 Regex!2319) (regTwo!5151 Regex!2319)) )
))
(declare-fun r!15766 () Regex!2319)

(declare-datatypes ((List!9549 0))(
  ( (Nil!9533) (Cons!9533 (h!14934 C!5208) (t!100595 List!9549)) )
))
(declare-fun s!10566 () List!9549)

(declare-fun matchR!857 (Regex!2319 List!9549) Bool)

(assert (=> b!892744 (= lt!332739 (matchR!857 (regOne!5151 r!15766) s!10566))))

(declare-datatypes ((Unit!14217 0))(
  ( (Unit!14218) )
))
(declare-fun lt!332746 () Unit!14217)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!30 (Regex!2319 Regex!2319 List!9549) Unit!14217)

(assert (=> b!892744 (= lt!332746 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!30 (regOne!5151 r!15766) (regTwo!5151 r!15766) s!10566))))

(declare-fun b!892745 () Bool)

(declare-fun e!584736 () Bool)

(declare-fun tp!280859 () Bool)

(declare-fun tp!280864 () Bool)

(assert (=> b!892745 (= e!584736 (and tp!280859 tp!280864))))

(declare-fun b!892746 () Bool)

(declare-fun tp!280863 () Bool)

(declare-fun tp!280860 () Bool)

(assert (=> b!892746 (= e!584736 (and tp!280863 tp!280860))))

(declare-fun b!892747 () Bool)

(declare-fun tp_is_empty!4281 () Bool)

(assert (=> b!892747 (= e!584736 tp_is_empty!4281)))

(declare-fun b!892748 () Bool)

(assert (=> b!892748 (= e!584738 (matchR!857 (regTwo!5151 r!15766) s!10566))))

(declare-fun b!892749 () Bool)

(declare-fun e!584737 () Bool)

(assert (=> b!892749 (= e!584737 (not e!584733))))

(declare-fun res!405842 () Bool)

(assert (=> b!892749 (=> res!405842 e!584733)))

(declare-fun lt!332738 () Bool)

(get-info :version)

(assert (=> b!892749 (= res!405842 (or (not lt!332738) (and ((_ is Concat!4152) r!15766) ((_ is EmptyExpr!2319) (regOne!5150 r!15766))) (and ((_ is Concat!4152) r!15766) ((_ is EmptyExpr!2319) (regTwo!5150 r!15766))) ((_ is Concat!4152) r!15766) (not ((_ is Union!2319) r!15766))))))

(declare-fun matchRSpec!120 (Regex!2319 List!9549) Bool)

(assert (=> b!892749 (= lt!332738 (matchRSpec!120 r!15766 s!10566))))

(assert (=> b!892749 (= lt!332738 (matchR!857 r!15766 s!10566))))

(declare-fun lt!332747 () Unit!14217)

(declare-fun mainMatchTheorem!120 (Regex!2319 List!9549) Unit!14217)

(assert (=> b!892749 (= lt!332747 (mainMatchTheorem!120 r!15766 s!10566))))

(declare-fun b!892750 () Bool)

(declare-fun e!584739 () Bool)

(declare-fun tp!280861 () Bool)

(assert (=> b!892750 (= e!584739 (and tp_is_empty!4281 tp!280861))))

(declare-fun res!405844 () Bool)

(assert (=> start!80466 (=> (not res!405844) (not e!584737))))

(declare-fun validRegex!788 (Regex!2319) Bool)

(assert (=> start!80466 (= res!405844 (validRegex!788 r!15766))))

(assert (=> start!80466 e!584737))

(assert (=> start!80466 e!584736))

(assert (=> start!80466 e!584739))

(declare-fun b!892751 () Bool)

(declare-fun e!584734 () Bool)

(assert (=> b!892751 (= e!584735 e!584734)))

(declare-fun res!405843 () Bool)

(assert (=> b!892751 (=> res!405843 e!584734)))

(declare-fun lt!332742 () Bool)

(assert (=> b!892751 (= res!405843 (not lt!332742))))

(declare-fun lt!332745 () Bool)

(assert (=> b!892751 (= lt!332745 lt!332742)))

(declare-fun lt!332743 () Regex!2319)

(assert (=> b!892751 (= lt!332742 (matchR!857 lt!332743 s!10566))))

(assert (=> b!892751 (= lt!332745 (matchR!857 (regTwo!5151 r!15766) s!10566))))

(declare-fun removeUselessConcat!54 (Regex!2319) Regex!2319)

(assert (=> b!892751 (= lt!332743 (removeUselessConcat!54 (regTwo!5151 r!15766)))))

(declare-fun lt!332744 () Unit!14217)

(declare-fun lemmaRemoveUselessConcatSound!48 (Regex!2319 List!9549) Unit!14217)

(assert (=> b!892751 (= lt!332744 (lemmaRemoveUselessConcatSound!48 (regTwo!5151 r!15766) s!10566))))

(declare-fun b!892752 () Bool)

(declare-fun tp!280862 () Bool)

(assert (=> b!892752 (= e!584736 tp!280862)))

(declare-fun b!892753 () Bool)

(assert (=> b!892753 (= e!584734 (validRegex!788 (regTwo!5151 r!15766)))))

(declare-fun lt!332741 () Regex!2319)

(assert (=> b!892753 (matchR!857 (Union!2319 lt!332743 lt!332741) s!10566)))

(declare-fun lt!332740 () Unit!14217)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!6 (Regex!2319 Regex!2319 List!9549) Unit!14217)

(assert (=> b!892753 (= lt!332740 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!6 lt!332743 lt!332741 s!10566))))

(assert (=> b!892753 (= lt!332741 (removeUselessConcat!54 (regOne!5151 r!15766)))))

(assert (= (and start!80466 res!405844) b!892749))

(assert (= (and b!892749 (not res!405842)) b!892744))

(assert (= (and b!892744 (not res!405841)) b!892748))

(assert (= (and b!892744 (not res!405840)) b!892751))

(assert (= (and b!892751 (not res!405843)) b!892753))

(assert (= (and start!80466 ((_ is ElementMatch!2319) r!15766)) b!892747))

(assert (= (and start!80466 ((_ is Concat!4152) r!15766)) b!892745))

(assert (= (and start!80466 ((_ is Star!2319) r!15766)) b!892752))

(assert (= (and start!80466 ((_ is Union!2319) r!15766)) b!892746))

(assert (= (and start!80466 ((_ is Cons!9533) s!10566)) b!892750))

(declare-fun m!1134617 () Bool)

(assert (=> b!892749 m!1134617))

(declare-fun m!1134619 () Bool)

(assert (=> b!892749 m!1134619))

(declare-fun m!1134621 () Bool)

(assert (=> b!892749 m!1134621))

(declare-fun m!1134623 () Bool)

(assert (=> b!892748 m!1134623))

(declare-fun m!1134625 () Bool)

(assert (=> b!892744 m!1134625))

(declare-fun m!1134627 () Bool)

(assert (=> b!892744 m!1134627))

(declare-fun m!1134629 () Bool)

(assert (=> start!80466 m!1134629))

(declare-fun m!1134631 () Bool)

(assert (=> b!892753 m!1134631))

(declare-fun m!1134633 () Bool)

(assert (=> b!892753 m!1134633))

(declare-fun m!1134635 () Bool)

(assert (=> b!892753 m!1134635))

(declare-fun m!1134637 () Bool)

(assert (=> b!892753 m!1134637))

(declare-fun m!1134639 () Bool)

(assert (=> b!892751 m!1134639))

(assert (=> b!892751 m!1134623))

(declare-fun m!1134641 () Bool)

(assert (=> b!892751 m!1134641))

(declare-fun m!1134643 () Bool)

(assert (=> b!892751 m!1134643))

(check-sat (not b!892750) (not b!892752) (not b!892744) (not b!892749) (not start!80466) (not b!892753) (not b!892751) (not b!892745) (not b!892748) (not b!892746) tp_is_empty!4281)
(check-sat)
(get-model)

(declare-fun b!892790 () Bool)

(declare-fun res!405865 () Bool)

(declare-fun e!584764 () Bool)

(assert (=> b!892790 (=> res!405865 e!584764)))

(declare-fun e!584758 () Bool)

(assert (=> b!892790 (= res!405865 e!584758)))

(declare-fun res!405868 () Bool)

(assert (=> b!892790 (=> (not res!405868) (not e!584758))))

(declare-fun lt!332752 () Bool)

(assert (=> b!892790 (= res!405868 lt!332752)))

(declare-fun b!892791 () Bool)

(declare-fun res!405863 () Bool)

(assert (=> b!892791 (=> res!405863 e!584764)))

(assert (=> b!892791 (= res!405863 (not ((_ is ElementMatch!2319) lt!332743)))))

(declare-fun e!584760 () Bool)

(assert (=> b!892791 (= e!584760 e!584764)))

(declare-fun b!892792 () Bool)

(assert (=> b!892792 (= e!584760 (not lt!332752))))

(declare-fun b!892793 () Bool)

(declare-fun e!584756 () Bool)

(declare-fun derivativeStep!421 (Regex!2319 C!5208) Regex!2319)

(declare-fun head!1574 (List!9549) C!5208)

(declare-fun tail!1136 (List!9549) List!9549)

(assert (=> b!892793 (= e!584756 (matchR!857 (derivativeStep!421 lt!332743 (head!1574 s!10566)) (tail!1136 s!10566)))))

(declare-fun b!892794 () Bool)

(declare-fun e!584757 () Bool)

(declare-fun call!52840 () Bool)

(assert (=> b!892794 (= e!584757 (= lt!332752 call!52840))))

(declare-fun b!892795 () Bool)

(assert (=> b!892795 (= e!584758 (= (head!1574 s!10566) (c!144518 lt!332743)))))

(declare-fun b!892796 () Bool)

(declare-fun res!405866 () Bool)

(assert (=> b!892796 (=> (not res!405866) (not e!584758))))

(assert (=> b!892796 (= res!405866 (not call!52840))))

(declare-fun b!892797 () Bool)

(declare-fun e!584759 () Bool)

(declare-fun e!584763 () Bool)

(assert (=> b!892797 (= e!584759 e!584763)))

(declare-fun res!405862 () Bool)

(assert (=> b!892797 (=> res!405862 e!584763)))

(assert (=> b!892797 (= res!405862 call!52840)))

(declare-fun d!277499 () Bool)

(assert (=> d!277499 e!584757))

(declare-fun c!144527 () Bool)

(assert (=> d!277499 (= c!144527 ((_ is EmptyExpr!2319) lt!332743))))

(assert (=> d!277499 (= lt!332752 e!584756)))

(declare-fun c!144531 () Bool)

(declare-fun isEmpty!5731 (List!9549) Bool)

(assert (=> d!277499 (= c!144531 (isEmpty!5731 s!10566))))

(assert (=> d!277499 (validRegex!788 lt!332743)))

(assert (=> d!277499 (= (matchR!857 lt!332743 s!10566) lt!332752)))

(declare-fun b!892798 () Bool)

(assert (=> b!892798 (= e!584757 e!584760)))

(declare-fun c!144529 () Bool)

(assert (=> b!892798 (= c!144529 ((_ is EmptyLang!2319) lt!332743))))

(declare-fun b!892799 () Bool)

(assert (=> b!892799 (= e!584764 e!584759)))

(declare-fun res!405861 () Bool)

(assert (=> b!892799 (=> (not res!405861) (not e!584759))))

(assert (=> b!892799 (= res!405861 (not lt!332752))))

(declare-fun b!892800 () Bool)

(declare-fun res!405867 () Bool)

(assert (=> b!892800 (=> res!405867 e!584763)))

(assert (=> b!892800 (= res!405867 (not (isEmpty!5731 (tail!1136 s!10566))))))

(declare-fun b!892801 () Bool)

(declare-fun nullable!609 (Regex!2319) Bool)

(assert (=> b!892801 (= e!584756 (nullable!609 lt!332743))))

(declare-fun b!892802 () Bool)

(assert (=> b!892802 (= e!584763 (not (= (head!1574 s!10566) (c!144518 lt!332743))))))

(declare-fun b!892803 () Bool)

(declare-fun res!405864 () Bool)

(assert (=> b!892803 (=> (not res!405864) (not e!584758))))

(assert (=> b!892803 (= res!405864 (isEmpty!5731 (tail!1136 s!10566)))))

(declare-fun bm!52835 () Bool)

(assert (=> bm!52835 (= call!52840 (isEmpty!5731 s!10566))))

(assert (= (and d!277499 c!144531) b!892801))

(assert (= (and d!277499 (not c!144531)) b!892793))

(assert (= (and d!277499 c!144527) b!892794))

(assert (= (and d!277499 (not c!144527)) b!892798))

(assert (= (and b!892798 c!144529) b!892792))

(assert (= (and b!892798 (not c!144529)) b!892791))

(assert (= (and b!892791 (not res!405863)) b!892790))

(assert (= (and b!892790 res!405868) b!892796))

(assert (= (and b!892796 res!405866) b!892803))

(assert (= (and b!892803 res!405864) b!892795))

(assert (= (and b!892790 (not res!405865)) b!892799))

(assert (= (and b!892799 res!405861) b!892797))

(assert (= (and b!892797 (not res!405862)) b!892800))

(assert (= (and b!892800 (not res!405867)) b!892802))

(assert (= (or b!892794 b!892796 b!892797) bm!52835))

(declare-fun m!1134645 () Bool)

(assert (=> b!892801 m!1134645))

(declare-fun m!1134647 () Bool)

(assert (=> b!892793 m!1134647))

(assert (=> b!892793 m!1134647))

(declare-fun m!1134649 () Bool)

(assert (=> b!892793 m!1134649))

(declare-fun m!1134651 () Bool)

(assert (=> b!892793 m!1134651))

(assert (=> b!892793 m!1134649))

(assert (=> b!892793 m!1134651))

(declare-fun m!1134653 () Bool)

(assert (=> b!892793 m!1134653))

(assert (=> b!892802 m!1134647))

(declare-fun m!1134655 () Bool)

(assert (=> d!277499 m!1134655))

(declare-fun m!1134657 () Bool)

(assert (=> d!277499 m!1134657))

(assert (=> b!892803 m!1134651))

(assert (=> b!892803 m!1134651))

(declare-fun m!1134659 () Bool)

(assert (=> b!892803 m!1134659))

(assert (=> b!892795 m!1134647))

(assert (=> b!892800 m!1134651))

(assert (=> b!892800 m!1134651))

(assert (=> b!892800 m!1134659))

(assert (=> bm!52835 m!1134655))

(assert (=> b!892751 d!277499))

(declare-fun b!892824 () Bool)

(declare-fun res!405889 () Bool)

(declare-fun e!584781 () Bool)

(assert (=> b!892824 (=> res!405889 e!584781)))

(declare-fun e!584777 () Bool)

(assert (=> b!892824 (= res!405889 e!584777)))

(declare-fun res!405892 () Bool)

(assert (=> b!892824 (=> (not res!405892) (not e!584777))))

(declare-fun lt!332753 () Bool)

(assert (=> b!892824 (= res!405892 lt!332753)))

(declare-fun b!892825 () Bool)

(declare-fun res!405887 () Bool)

(assert (=> b!892825 (=> res!405887 e!584781)))

(assert (=> b!892825 (= res!405887 (not ((_ is ElementMatch!2319) (regTwo!5151 r!15766))))))

(declare-fun e!584779 () Bool)

(assert (=> b!892825 (= e!584779 e!584781)))

(declare-fun b!892826 () Bool)

(assert (=> b!892826 (= e!584779 (not lt!332753))))

(declare-fun b!892827 () Bool)

(declare-fun e!584775 () Bool)

(assert (=> b!892827 (= e!584775 (matchR!857 (derivativeStep!421 (regTwo!5151 r!15766) (head!1574 s!10566)) (tail!1136 s!10566)))))

(declare-fun b!892828 () Bool)

(declare-fun e!584776 () Bool)

(declare-fun call!52843 () Bool)

(assert (=> b!892828 (= e!584776 (= lt!332753 call!52843))))

(declare-fun b!892829 () Bool)

(assert (=> b!892829 (= e!584777 (= (head!1574 s!10566) (c!144518 (regTwo!5151 r!15766))))))

(declare-fun b!892830 () Bool)

(declare-fun res!405890 () Bool)

(assert (=> b!892830 (=> (not res!405890) (not e!584777))))

(assert (=> b!892830 (= res!405890 (not call!52843))))

(declare-fun b!892831 () Bool)

(declare-fun e!584778 () Bool)

(declare-fun e!584780 () Bool)

(assert (=> b!892831 (= e!584778 e!584780)))

(declare-fun res!405886 () Bool)

(assert (=> b!892831 (=> res!405886 e!584780)))

(assert (=> b!892831 (= res!405886 call!52843)))

(declare-fun d!277503 () Bool)

(assert (=> d!277503 e!584776))

(declare-fun c!144534 () Bool)

(assert (=> d!277503 (= c!144534 ((_ is EmptyExpr!2319) (regTwo!5151 r!15766)))))

(assert (=> d!277503 (= lt!332753 e!584775)))

(declare-fun c!144536 () Bool)

(assert (=> d!277503 (= c!144536 (isEmpty!5731 s!10566))))

(assert (=> d!277503 (validRegex!788 (regTwo!5151 r!15766))))

(assert (=> d!277503 (= (matchR!857 (regTwo!5151 r!15766) s!10566) lt!332753)))

(declare-fun b!892832 () Bool)

(assert (=> b!892832 (= e!584776 e!584779)))

(declare-fun c!144535 () Bool)

(assert (=> b!892832 (= c!144535 ((_ is EmptyLang!2319) (regTwo!5151 r!15766)))))

(declare-fun b!892833 () Bool)

(assert (=> b!892833 (= e!584781 e!584778)))

(declare-fun res!405885 () Bool)

(assert (=> b!892833 (=> (not res!405885) (not e!584778))))

(assert (=> b!892833 (= res!405885 (not lt!332753))))

(declare-fun b!892834 () Bool)

(declare-fun res!405891 () Bool)

(assert (=> b!892834 (=> res!405891 e!584780)))

(assert (=> b!892834 (= res!405891 (not (isEmpty!5731 (tail!1136 s!10566))))))

(declare-fun b!892835 () Bool)

(assert (=> b!892835 (= e!584775 (nullable!609 (regTwo!5151 r!15766)))))

(declare-fun b!892836 () Bool)

(assert (=> b!892836 (= e!584780 (not (= (head!1574 s!10566) (c!144518 (regTwo!5151 r!15766)))))))

(declare-fun b!892837 () Bool)

(declare-fun res!405888 () Bool)

(assert (=> b!892837 (=> (not res!405888) (not e!584777))))

(assert (=> b!892837 (= res!405888 (isEmpty!5731 (tail!1136 s!10566)))))

(declare-fun bm!52836 () Bool)

(assert (=> bm!52836 (= call!52843 (isEmpty!5731 s!10566))))

(assert (= (and d!277503 c!144536) b!892835))

(assert (= (and d!277503 (not c!144536)) b!892827))

(assert (= (and d!277503 c!144534) b!892828))

(assert (= (and d!277503 (not c!144534)) b!892832))

(assert (= (and b!892832 c!144535) b!892826))

(assert (= (and b!892832 (not c!144535)) b!892825))

(assert (= (and b!892825 (not res!405887)) b!892824))

(assert (= (and b!892824 res!405892) b!892830))

(assert (= (and b!892830 res!405890) b!892837))

(assert (= (and b!892837 res!405888) b!892829))

(assert (= (and b!892824 (not res!405889)) b!892833))

(assert (= (and b!892833 res!405885) b!892831))

(assert (= (and b!892831 (not res!405886)) b!892834))

(assert (= (and b!892834 (not res!405891)) b!892836))

(assert (= (or b!892828 b!892830 b!892831) bm!52836))

(declare-fun m!1134661 () Bool)

(assert (=> b!892835 m!1134661))

(assert (=> b!892827 m!1134647))

(assert (=> b!892827 m!1134647))

(declare-fun m!1134663 () Bool)

(assert (=> b!892827 m!1134663))

(assert (=> b!892827 m!1134651))

(assert (=> b!892827 m!1134663))

(assert (=> b!892827 m!1134651))

(declare-fun m!1134665 () Bool)

(assert (=> b!892827 m!1134665))

(assert (=> b!892836 m!1134647))

(assert (=> d!277503 m!1134655))

(assert (=> d!277503 m!1134631))

(assert (=> b!892837 m!1134651))

(assert (=> b!892837 m!1134651))

(assert (=> b!892837 m!1134659))

(assert (=> b!892829 m!1134647))

(assert (=> b!892834 m!1134651))

(assert (=> b!892834 m!1134651))

(assert (=> b!892834 m!1134659))

(assert (=> bm!52836 m!1134655))

(assert (=> b!892751 d!277503))

(declare-fun b!892892 () Bool)

(declare-fun e!584820 () Regex!2319)

(declare-fun call!52859 () Regex!2319)

(assert (=> b!892892 (= e!584820 (Star!2319 call!52859))))

(declare-fun b!892893 () Bool)

(declare-fun e!584817 () Regex!2319)

(declare-fun call!52856 () Regex!2319)

(assert (=> b!892893 (= e!584817 (Union!2319 call!52856 call!52859))))

(declare-fun b!892894 () Bool)

(declare-fun e!584818 () Regex!2319)

(declare-fun call!52858 () Regex!2319)

(assert (=> b!892894 (= e!584818 call!52858)))

(declare-fun b!892895 () Bool)

(assert (=> b!892895 (= e!584820 (regTwo!5151 r!15766))))

(declare-fun c!144554 () Bool)

(declare-fun bm!52850 () Bool)

(declare-fun c!144557 () Bool)

(declare-fun call!52855 () Regex!2319)

(assert (=> bm!52850 (= call!52855 (removeUselessConcat!54 (ite (or c!144554 c!144557) (regOne!5150 (regTwo!5151 r!15766)) (regOne!5151 (regTwo!5151 r!15766)))))))

(declare-fun bm!52851 () Bool)

(declare-fun call!52857 () Regex!2319)

(assert (=> bm!52851 (= call!52859 call!52857)))

(declare-fun bm!52852 () Bool)

(assert (=> bm!52852 (= call!52856 call!52855)))

(declare-fun b!892896 () Bool)

(declare-fun e!584816 () Regex!2319)

(assert (=> b!892896 (= e!584818 e!584816)))

(assert (=> b!892896 (= c!144554 (and ((_ is Concat!4152) (regTwo!5151 r!15766)) ((_ is EmptyExpr!2319) (regTwo!5150 (regTwo!5151 r!15766)))))))

(declare-fun b!892897 () Bool)

(assert (=> b!892897 (= c!144557 ((_ is Concat!4152) (regTwo!5151 r!15766)))))

(declare-fun e!584815 () Regex!2319)

(assert (=> b!892897 (= e!584816 e!584815)))

(declare-fun d!277505 () Bool)

(declare-fun e!584819 () Bool)

(assert (=> d!277505 e!584819))

(declare-fun res!405913 () Bool)

(assert (=> d!277505 (=> (not res!405913) (not e!584819))))

(declare-fun lt!332760 () Regex!2319)

(assert (=> d!277505 (= res!405913 (validRegex!788 lt!332760))))

(assert (=> d!277505 (= lt!332760 e!584818)))

(declare-fun c!144555 () Bool)

(assert (=> d!277505 (= c!144555 (and ((_ is Concat!4152) (regTwo!5151 r!15766)) ((_ is EmptyExpr!2319) (regOne!5150 (regTwo!5151 r!15766)))))))

(assert (=> d!277505 (validRegex!788 (regTwo!5151 r!15766))))

(assert (=> d!277505 (= (removeUselessConcat!54 (regTwo!5151 r!15766)) lt!332760)))

(declare-fun b!892898 () Bool)

(declare-fun c!144552 () Bool)

(assert (=> b!892898 (= c!144552 ((_ is Star!2319) (regTwo!5151 r!15766)))))

(assert (=> b!892898 (= e!584817 e!584820)))

(declare-fun b!892899 () Bool)

(assert (=> b!892899 (= e!584815 (Concat!4152 call!52856 call!52857))))

(declare-fun b!892900 () Bool)

(assert (=> b!892900 (= e!584816 call!52855)))

(declare-fun b!892901 () Bool)

(assert (=> b!892901 (= e!584819 (= (nullable!609 lt!332760) (nullable!609 (regTwo!5151 r!15766))))))

(declare-fun b!892902 () Bool)

(assert (=> b!892902 (= e!584815 e!584817)))

(declare-fun c!144558 () Bool)

(assert (=> b!892902 (= c!144558 ((_ is Union!2319) (regTwo!5151 r!15766)))))

(declare-fun bm!52853 () Bool)

(assert (=> bm!52853 (= call!52858 (removeUselessConcat!54 (ite (or c!144555 c!144557) (regTwo!5150 (regTwo!5151 r!15766)) (ite c!144558 (regTwo!5151 (regTwo!5151 r!15766)) (reg!2648 (regTwo!5151 r!15766))))))))

(declare-fun bm!52854 () Bool)

(assert (=> bm!52854 (= call!52857 call!52858)))

(assert (= (and d!277505 c!144555) b!892894))

(assert (= (and d!277505 (not c!144555)) b!892896))

(assert (= (and b!892896 c!144554) b!892900))

(assert (= (and b!892896 (not c!144554)) b!892897))

(assert (= (and b!892897 c!144557) b!892899))

(assert (= (and b!892897 (not c!144557)) b!892902))

(assert (= (and b!892902 c!144558) b!892893))

(assert (= (and b!892902 (not c!144558)) b!892898))

(assert (= (and b!892898 c!144552) b!892892))

(assert (= (and b!892898 (not c!144552)) b!892895))

(assert (= (or b!892893 b!892892) bm!52851))

(assert (= (or b!892899 bm!52851) bm!52854))

(assert (= (or b!892899 b!892893) bm!52852))

(assert (= (or b!892900 bm!52852) bm!52850))

(assert (= (or b!892894 bm!52854) bm!52853))

(assert (= (and d!277505 res!405913) b!892901))

(declare-fun m!1134685 () Bool)

(assert (=> bm!52850 m!1134685))

(declare-fun m!1134687 () Bool)

(assert (=> d!277505 m!1134687))

(assert (=> d!277505 m!1134631))

(declare-fun m!1134689 () Bool)

(assert (=> b!892901 m!1134689))

(assert (=> b!892901 m!1134661))

(declare-fun m!1134691 () Bool)

(assert (=> bm!52853 m!1134691))

(assert (=> b!892751 d!277505))

(declare-fun d!277511 () Bool)

(assert (=> d!277511 (= (matchR!857 (regTwo!5151 r!15766) s!10566) (matchR!857 (removeUselessConcat!54 (regTwo!5151 r!15766)) s!10566))))

(declare-fun lt!332764 () Unit!14217)

(declare-fun choose!5343 (Regex!2319 List!9549) Unit!14217)

(assert (=> d!277511 (= lt!332764 (choose!5343 (regTwo!5151 r!15766) s!10566))))

(assert (=> d!277511 (validRegex!788 (regTwo!5151 r!15766))))

(assert (=> d!277511 (= (lemmaRemoveUselessConcatSound!48 (regTwo!5151 r!15766) s!10566) lt!332764)))

(declare-fun bs!234861 () Bool)

(assert (= bs!234861 d!277511))

(assert (=> bs!234861 m!1134641))

(assert (=> bs!234861 m!1134631))

(declare-fun m!1134699 () Bool)

(assert (=> bs!234861 m!1134699))

(assert (=> bs!234861 m!1134623))

(assert (=> bs!234861 m!1134641))

(declare-fun m!1134701 () Bool)

(assert (=> bs!234861 m!1134701))

(assert (=> b!892751 d!277511))

(declare-fun b!892953 () Bool)

(declare-fun res!405949 () Bool)

(declare-fun e!584859 () Bool)

(assert (=> b!892953 (=> res!405949 e!584859)))

(assert (=> b!892953 (= res!405949 (not ((_ is Concat!4152) r!15766)))))

(declare-fun e!584863 () Bool)

(assert (=> b!892953 (= e!584863 e!584859)))

(declare-fun b!892954 () Bool)

(declare-fun e!584864 () Bool)

(declare-fun call!52876 () Bool)

(assert (=> b!892954 (= e!584864 call!52876)))

(declare-fun b!892955 () Bool)

(declare-fun e!584860 () Bool)

(assert (=> b!892955 (= e!584860 e!584864)))

(declare-fun res!405948 () Bool)

(assert (=> b!892955 (= res!405948 (not (nullable!609 (reg!2648 r!15766))))))

(assert (=> b!892955 (=> (not res!405948) (not e!584864))))

(declare-fun bm!52871 () Bool)

(declare-fun call!52877 () Bool)

(assert (=> bm!52871 (= call!52877 call!52876)))

(declare-fun b!892956 () Bool)

(declare-fun res!405946 () Bool)

(declare-fun e!584861 () Bool)

(assert (=> b!892956 (=> (not res!405946) (not e!584861))))

(declare-fun call!52878 () Bool)

(assert (=> b!892956 (= res!405946 call!52878)))

(assert (=> b!892956 (= e!584863 e!584861)))

(declare-fun bm!52872 () Bool)

(declare-fun c!144569 () Bool)

(assert (=> bm!52872 (= call!52878 (validRegex!788 (ite c!144569 (regOne!5151 r!15766) (regOne!5150 r!15766))))))

(declare-fun b!892957 () Bool)

(assert (=> b!892957 (= e!584860 e!584863)))

(assert (=> b!892957 (= c!144569 ((_ is Union!2319) r!15766))))

(declare-fun d!277515 () Bool)

(declare-fun res!405947 () Bool)

(declare-fun e!584858 () Bool)

(assert (=> d!277515 (=> res!405947 e!584858)))

(assert (=> d!277515 (= res!405947 ((_ is ElementMatch!2319) r!15766))))

(assert (=> d!277515 (= (validRegex!788 r!15766) e!584858)))

(declare-fun b!892958 () Bool)

(declare-fun e!584862 () Bool)

(assert (=> b!892958 (= e!584859 e!584862)))

(declare-fun res!405950 () Bool)

(assert (=> b!892958 (=> (not res!405950) (not e!584862))))

(assert (=> b!892958 (= res!405950 call!52878)))

(declare-fun b!892959 () Bool)

(assert (=> b!892959 (= e!584861 call!52877)))

(declare-fun bm!52873 () Bool)

(declare-fun c!144568 () Bool)

(assert (=> bm!52873 (= call!52876 (validRegex!788 (ite c!144568 (reg!2648 r!15766) (ite c!144569 (regTwo!5151 r!15766) (regTwo!5150 r!15766)))))))

(declare-fun b!892960 () Bool)

(assert (=> b!892960 (= e!584862 call!52877)))

(declare-fun b!892961 () Bool)

(assert (=> b!892961 (= e!584858 e!584860)))

(assert (=> b!892961 (= c!144568 ((_ is Star!2319) r!15766))))

(assert (= (and d!277515 (not res!405947)) b!892961))

(assert (= (and b!892961 c!144568) b!892955))

(assert (= (and b!892961 (not c!144568)) b!892957))

(assert (= (and b!892955 res!405948) b!892954))

(assert (= (and b!892957 c!144569) b!892956))

(assert (= (and b!892957 (not c!144569)) b!892953))

(assert (= (and b!892956 res!405946) b!892959))

(assert (= (and b!892953 (not res!405949)) b!892958))

(assert (= (and b!892958 res!405950) b!892960))

(assert (= (or b!892959 b!892960) bm!52871))

(assert (= (or b!892956 b!892958) bm!52872))

(assert (= (or b!892954 bm!52871) bm!52873))

(declare-fun m!1134717 () Bool)

(assert (=> b!892955 m!1134717))

(declare-fun m!1134719 () Bool)

(assert (=> bm!52872 m!1134719))

(declare-fun m!1134721 () Bool)

(assert (=> bm!52873 m!1134721))

(assert (=> start!80466 d!277515))

(declare-fun b!893172 () Bool)

(assert (=> b!893172 true))

(assert (=> b!893172 true))

(declare-fun bs!234865 () Bool)

(declare-fun b!893171 () Bool)

(assert (= bs!234865 (and b!893171 b!893172)))

(declare-fun lambda!27598 () Int)

(declare-fun lambda!27597 () Int)

(assert (=> bs!234865 (not (= lambda!27598 lambda!27597))))

(assert (=> b!893171 true))

(assert (=> b!893171 true))

(declare-fun e!584974 () Bool)

(declare-fun call!52915 () Bool)

(assert (=> b!893171 (= e!584974 call!52915)))

(declare-fun e!584972 () Bool)

(assert (=> b!893172 (= e!584972 call!52915)))

(declare-fun b!893173 () Bool)

(declare-fun c!144622 () Bool)

(assert (=> b!893173 (= c!144622 ((_ is ElementMatch!2319) r!15766))))

(declare-fun e!584971 () Bool)

(declare-fun e!584975 () Bool)

(assert (=> b!893173 (= e!584971 e!584975)))

(declare-fun b!893174 () Bool)

(declare-fun c!144623 () Bool)

(assert (=> b!893174 (= c!144623 ((_ is Union!2319) r!15766))))

(declare-fun e!584970 () Bool)

(assert (=> b!893174 (= e!584975 e!584970)))

(declare-fun b!893175 () Bool)

(declare-fun res!406019 () Bool)

(assert (=> b!893175 (=> res!406019 e!584972)))

(declare-fun call!52916 () Bool)

(assert (=> b!893175 (= res!406019 call!52916)))

(assert (=> b!893175 (= e!584974 e!584972)))

(declare-fun b!893176 () Bool)

(declare-fun e!584976 () Bool)

(assert (=> b!893176 (= e!584976 call!52916)))

(declare-fun b!893177 () Bool)

(assert (=> b!893177 (= e!584976 e!584971)))

(declare-fun res!406021 () Bool)

(assert (=> b!893177 (= res!406021 (not ((_ is EmptyLang!2319) r!15766)))))

(assert (=> b!893177 (=> (not res!406021) (not e!584971))))

(declare-fun c!144624 () Bool)

(declare-fun bm!52910 () Bool)

(declare-fun Exists!102 (Int) Bool)

(assert (=> bm!52910 (= call!52915 (Exists!102 (ite c!144624 lambda!27597 lambda!27598)))))

(declare-fun d!277521 () Bool)

(declare-fun c!144621 () Bool)

(assert (=> d!277521 (= c!144621 ((_ is EmptyExpr!2319) r!15766))))

(assert (=> d!277521 (= (matchRSpec!120 r!15766 s!10566) e!584976)))

(declare-fun b!893178 () Bool)

(assert (=> b!893178 (= e!584975 (= s!10566 (Cons!9533 (c!144518 r!15766) Nil!9533)))))

(declare-fun bm!52911 () Bool)

(assert (=> bm!52911 (= call!52916 (isEmpty!5731 s!10566))))

(declare-fun b!893179 () Bool)

(assert (=> b!893179 (= e!584970 e!584974)))

(assert (=> b!893179 (= c!144624 ((_ is Star!2319) r!15766))))

(declare-fun b!893180 () Bool)

(declare-fun e!584973 () Bool)

(assert (=> b!893180 (= e!584970 e!584973)))

(declare-fun res!406020 () Bool)

(assert (=> b!893180 (= res!406020 (matchRSpec!120 (regOne!5151 r!15766) s!10566))))

(assert (=> b!893180 (=> res!406020 e!584973)))

(declare-fun b!893181 () Bool)

(assert (=> b!893181 (= e!584973 (matchRSpec!120 (regTwo!5151 r!15766) s!10566))))

(assert (= (and d!277521 c!144621) b!893176))

(assert (= (and d!277521 (not c!144621)) b!893177))

(assert (= (and b!893177 res!406021) b!893173))

(assert (= (and b!893173 c!144622) b!893178))

(assert (= (and b!893173 (not c!144622)) b!893174))

(assert (= (and b!893174 c!144623) b!893180))

(assert (= (and b!893174 (not c!144623)) b!893179))

(assert (= (and b!893180 (not res!406020)) b!893181))

(assert (= (and b!893179 c!144624) b!893175))

(assert (= (and b!893179 (not c!144624)) b!893171))

(assert (= (and b!893175 (not res!406019)) b!893172))

(assert (= (or b!893172 b!893171) bm!52910))

(assert (= (or b!893176 b!893175) bm!52911))

(declare-fun m!1134775 () Bool)

(assert (=> bm!52910 m!1134775))

(assert (=> bm!52911 m!1134655))

(declare-fun m!1134777 () Bool)

(assert (=> b!893180 m!1134777))

(declare-fun m!1134779 () Bool)

(assert (=> b!893181 m!1134779))

(assert (=> b!892749 d!277521))

(declare-fun b!893186 () Bool)

(declare-fun res!406026 () Bool)

(declare-fun e!584983 () Bool)

(assert (=> b!893186 (=> res!406026 e!584983)))

(declare-fun e!584979 () Bool)

(assert (=> b!893186 (= res!406026 e!584979)))

(declare-fun res!406029 () Bool)

(assert (=> b!893186 (=> (not res!406029) (not e!584979))))

(declare-fun lt!332781 () Bool)

(assert (=> b!893186 (= res!406029 lt!332781)))

(declare-fun b!893187 () Bool)

(declare-fun res!406024 () Bool)

(assert (=> b!893187 (=> res!406024 e!584983)))

(assert (=> b!893187 (= res!406024 (not ((_ is ElementMatch!2319) r!15766)))))

(declare-fun e!584981 () Bool)

(assert (=> b!893187 (= e!584981 e!584983)))

(declare-fun b!893188 () Bool)

(assert (=> b!893188 (= e!584981 (not lt!332781))))

(declare-fun b!893189 () Bool)

(declare-fun e!584977 () Bool)

(assert (=> b!893189 (= e!584977 (matchR!857 (derivativeStep!421 r!15766 (head!1574 s!10566)) (tail!1136 s!10566)))))

(declare-fun b!893190 () Bool)

(declare-fun e!584978 () Bool)

(declare-fun call!52917 () Bool)

(assert (=> b!893190 (= e!584978 (= lt!332781 call!52917))))

(declare-fun b!893191 () Bool)

(assert (=> b!893191 (= e!584979 (= (head!1574 s!10566) (c!144518 r!15766)))))

(declare-fun b!893192 () Bool)

(declare-fun res!406027 () Bool)

(assert (=> b!893192 (=> (not res!406027) (not e!584979))))

(assert (=> b!893192 (= res!406027 (not call!52917))))

(declare-fun b!893193 () Bool)

(declare-fun e!584980 () Bool)

(declare-fun e!584982 () Bool)

(assert (=> b!893193 (= e!584980 e!584982)))

(declare-fun res!406023 () Bool)

(assert (=> b!893193 (=> res!406023 e!584982)))

(assert (=> b!893193 (= res!406023 call!52917)))

(declare-fun d!277539 () Bool)

(assert (=> d!277539 e!584978))

(declare-fun c!144625 () Bool)

(assert (=> d!277539 (= c!144625 ((_ is EmptyExpr!2319) r!15766))))

(assert (=> d!277539 (= lt!332781 e!584977)))

(declare-fun c!144627 () Bool)

(assert (=> d!277539 (= c!144627 (isEmpty!5731 s!10566))))

(assert (=> d!277539 (validRegex!788 r!15766)))

(assert (=> d!277539 (= (matchR!857 r!15766 s!10566) lt!332781)))

(declare-fun b!893194 () Bool)

(assert (=> b!893194 (= e!584978 e!584981)))

(declare-fun c!144626 () Bool)

(assert (=> b!893194 (= c!144626 ((_ is EmptyLang!2319) r!15766))))

(declare-fun b!893195 () Bool)

(assert (=> b!893195 (= e!584983 e!584980)))

(declare-fun res!406022 () Bool)

(assert (=> b!893195 (=> (not res!406022) (not e!584980))))

(assert (=> b!893195 (= res!406022 (not lt!332781))))

(declare-fun b!893196 () Bool)

(declare-fun res!406028 () Bool)

(assert (=> b!893196 (=> res!406028 e!584982)))

(assert (=> b!893196 (= res!406028 (not (isEmpty!5731 (tail!1136 s!10566))))))

(declare-fun b!893197 () Bool)

(assert (=> b!893197 (= e!584977 (nullable!609 r!15766))))

(declare-fun b!893198 () Bool)

(assert (=> b!893198 (= e!584982 (not (= (head!1574 s!10566) (c!144518 r!15766))))))

(declare-fun b!893199 () Bool)

(declare-fun res!406025 () Bool)

(assert (=> b!893199 (=> (not res!406025) (not e!584979))))

(assert (=> b!893199 (= res!406025 (isEmpty!5731 (tail!1136 s!10566)))))

(declare-fun bm!52912 () Bool)

(assert (=> bm!52912 (= call!52917 (isEmpty!5731 s!10566))))

(assert (= (and d!277539 c!144627) b!893197))

(assert (= (and d!277539 (not c!144627)) b!893189))

(assert (= (and d!277539 c!144625) b!893190))

(assert (= (and d!277539 (not c!144625)) b!893194))

(assert (= (and b!893194 c!144626) b!893188))

(assert (= (and b!893194 (not c!144626)) b!893187))

(assert (= (and b!893187 (not res!406024)) b!893186))

(assert (= (and b!893186 res!406029) b!893192))

(assert (= (and b!893192 res!406027) b!893199))

(assert (= (and b!893199 res!406025) b!893191))

(assert (= (and b!893186 (not res!406026)) b!893195))

(assert (= (and b!893195 res!406022) b!893193))

(assert (= (and b!893193 (not res!406023)) b!893196))

(assert (= (and b!893196 (not res!406028)) b!893198))

(assert (= (or b!893190 b!893192 b!893193) bm!52912))

(declare-fun m!1134781 () Bool)

(assert (=> b!893197 m!1134781))

(assert (=> b!893189 m!1134647))

(assert (=> b!893189 m!1134647))

(declare-fun m!1134783 () Bool)

(assert (=> b!893189 m!1134783))

(assert (=> b!893189 m!1134651))

(assert (=> b!893189 m!1134783))

(assert (=> b!893189 m!1134651))

(declare-fun m!1134785 () Bool)

(assert (=> b!893189 m!1134785))

(assert (=> b!893198 m!1134647))

(assert (=> d!277539 m!1134655))

(assert (=> d!277539 m!1134629))

(assert (=> b!893199 m!1134651))

(assert (=> b!893199 m!1134651))

(assert (=> b!893199 m!1134659))

(assert (=> b!893191 m!1134647))

(assert (=> b!893196 m!1134651))

(assert (=> b!893196 m!1134651))

(assert (=> b!893196 m!1134659))

(assert (=> bm!52912 m!1134655))

(assert (=> b!892749 d!277539))

(declare-fun d!277541 () Bool)

(assert (=> d!277541 (= (matchR!857 r!15766 s!10566) (matchRSpec!120 r!15766 s!10566))))

(declare-fun lt!332784 () Unit!14217)

(declare-fun choose!5345 (Regex!2319 List!9549) Unit!14217)

(assert (=> d!277541 (= lt!332784 (choose!5345 r!15766 s!10566))))

(assert (=> d!277541 (validRegex!788 r!15766)))

(assert (=> d!277541 (= (mainMatchTheorem!120 r!15766 s!10566) lt!332784)))

(declare-fun bs!234866 () Bool)

(assert (= bs!234866 d!277541))

(assert (=> bs!234866 m!1134619))

(assert (=> bs!234866 m!1134617))

(declare-fun m!1134787 () Bool)

(assert (=> bs!234866 m!1134787))

(assert (=> bs!234866 m!1134629))

(assert (=> b!892749 d!277541))

(declare-fun b!893200 () Bool)

(declare-fun res!406034 () Bool)

(declare-fun e!584990 () Bool)

(assert (=> b!893200 (=> res!406034 e!584990)))

(declare-fun e!584986 () Bool)

(assert (=> b!893200 (= res!406034 e!584986)))

(declare-fun res!406037 () Bool)

(assert (=> b!893200 (=> (not res!406037) (not e!584986))))

(declare-fun lt!332785 () Bool)

(assert (=> b!893200 (= res!406037 lt!332785)))

(declare-fun b!893201 () Bool)

(declare-fun res!406032 () Bool)

(assert (=> b!893201 (=> res!406032 e!584990)))

(assert (=> b!893201 (= res!406032 (not ((_ is ElementMatch!2319) (regOne!5151 r!15766))))))

(declare-fun e!584988 () Bool)

(assert (=> b!893201 (= e!584988 e!584990)))

(declare-fun b!893202 () Bool)

(assert (=> b!893202 (= e!584988 (not lt!332785))))

(declare-fun b!893203 () Bool)

(declare-fun e!584984 () Bool)

(assert (=> b!893203 (= e!584984 (matchR!857 (derivativeStep!421 (regOne!5151 r!15766) (head!1574 s!10566)) (tail!1136 s!10566)))))

(declare-fun b!893204 () Bool)

(declare-fun e!584985 () Bool)

(declare-fun call!52918 () Bool)

(assert (=> b!893204 (= e!584985 (= lt!332785 call!52918))))

(declare-fun b!893205 () Bool)

(assert (=> b!893205 (= e!584986 (= (head!1574 s!10566) (c!144518 (regOne!5151 r!15766))))))

(declare-fun b!893206 () Bool)

(declare-fun res!406035 () Bool)

(assert (=> b!893206 (=> (not res!406035) (not e!584986))))

(assert (=> b!893206 (= res!406035 (not call!52918))))

(declare-fun b!893207 () Bool)

(declare-fun e!584987 () Bool)

(declare-fun e!584989 () Bool)

(assert (=> b!893207 (= e!584987 e!584989)))

(declare-fun res!406031 () Bool)

(assert (=> b!893207 (=> res!406031 e!584989)))

(assert (=> b!893207 (= res!406031 call!52918)))

(declare-fun d!277543 () Bool)

(assert (=> d!277543 e!584985))

(declare-fun c!144628 () Bool)

(assert (=> d!277543 (= c!144628 ((_ is EmptyExpr!2319) (regOne!5151 r!15766)))))

(assert (=> d!277543 (= lt!332785 e!584984)))

(declare-fun c!144630 () Bool)

(assert (=> d!277543 (= c!144630 (isEmpty!5731 s!10566))))

(assert (=> d!277543 (validRegex!788 (regOne!5151 r!15766))))

(assert (=> d!277543 (= (matchR!857 (regOne!5151 r!15766) s!10566) lt!332785)))

(declare-fun b!893208 () Bool)

(assert (=> b!893208 (= e!584985 e!584988)))

(declare-fun c!144629 () Bool)

(assert (=> b!893208 (= c!144629 ((_ is EmptyLang!2319) (regOne!5151 r!15766)))))

(declare-fun b!893209 () Bool)

(assert (=> b!893209 (= e!584990 e!584987)))

(declare-fun res!406030 () Bool)

(assert (=> b!893209 (=> (not res!406030) (not e!584987))))

(assert (=> b!893209 (= res!406030 (not lt!332785))))

(declare-fun b!893210 () Bool)

(declare-fun res!406036 () Bool)

(assert (=> b!893210 (=> res!406036 e!584989)))

(assert (=> b!893210 (= res!406036 (not (isEmpty!5731 (tail!1136 s!10566))))))

(declare-fun b!893211 () Bool)

(assert (=> b!893211 (= e!584984 (nullable!609 (regOne!5151 r!15766)))))

(declare-fun b!893212 () Bool)

(assert (=> b!893212 (= e!584989 (not (= (head!1574 s!10566) (c!144518 (regOne!5151 r!15766)))))))

(declare-fun b!893213 () Bool)

(declare-fun res!406033 () Bool)

(assert (=> b!893213 (=> (not res!406033) (not e!584986))))

(assert (=> b!893213 (= res!406033 (isEmpty!5731 (tail!1136 s!10566)))))

(declare-fun bm!52913 () Bool)

(assert (=> bm!52913 (= call!52918 (isEmpty!5731 s!10566))))

(assert (= (and d!277543 c!144630) b!893211))

(assert (= (and d!277543 (not c!144630)) b!893203))

(assert (= (and d!277543 c!144628) b!893204))

(assert (= (and d!277543 (not c!144628)) b!893208))

(assert (= (and b!893208 c!144629) b!893202))

(assert (= (and b!893208 (not c!144629)) b!893201))

(assert (= (and b!893201 (not res!406032)) b!893200))

(assert (= (and b!893200 res!406037) b!893206))

(assert (= (and b!893206 res!406035) b!893213))

(assert (= (and b!893213 res!406033) b!893205))

(assert (= (and b!893200 (not res!406034)) b!893209))

(assert (= (and b!893209 res!406030) b!893207))

(assert (= (and b!893207 (not res!406031)) b!893210))

(assert (= (and b!893210 (not res!406036)) b!893212))

(assert (= (or b!893204 b!893206 b!893207) bm!52913))

(declare-fun m!1134789 () Bool)

(assert (=> b!893211 m!1134789))

(assert (=> b!893203 m!1134647))

(assert (=> b!893203 m!1134647))

(declare-fun m!1134791 () Bool)

(assert (=> b!893203 m!1134791))

(assert (=> b!893203 m!1134651))

(assert (=> b!893203 m!1134791))

(assert (=> b!893203 m!1134651))

(declare-fun m!1134793 () Bool)

(assert (=> b!893203 m!1134793))

(assert (=> b!893212 m!1134647))

(assert (=> d!277543 m!1134655))

(declare-fun m!1134795 () Bool)

(assert (=> d!277543 m!1134795))

(assert (=> b!893213 m!1134651))

(assert (=> b!893213 m!1134651))

(assert (=> b!893213 m!1134659))

(assert (=> b!893205 m!1134647))

(assert (=> b!893210 m!1134651))

(assert (=> b!893210 m!1134651))

(assert (=> b!893210 m!1134659))

(assert (=> bm!52913 m!1134655))

(assert (=> b!892744 d!277543))

(declare-fun d!277545 () Bool)

(declare-fun e!584995 () Bool)

(assert (=> d!277545 e!584995))

(declare-fun res!406042 () Bool)

(assert (=> d!277545 (=> res!406042 e!584995)))

(assert (=> d!277545 (= res!406042 (matchR!857 (regOne!5151 r!15766) s!10566))))

(declare-fun lt!332788 () Unit!14217)

(declare-fun choose!5346 (Regex!2319 Regex!2319 List!9549) Unit!14217)

(assert (=> d!277545 (= lt!332788 (choose!5346 (regOne!5151 r!15766) (regTwo!5151 r!15766) s!10566))))

(declare-fun e!584996 () Bool)

(assert (=> d!277545 e!584996))

(declare-fun res!406043 () Bool)

(assert (=> d!277545 (=> (not res!406043) (not e!584996))))

(assert (=> d!277545 (= res!406043 (validRegex!788 (regOne!5151 r!15766)))))

(assert (=> d!277545 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!30 (regOne!5151 r!15766) (regTwo!5151 r!15766) s!10566) lt!332788)))

(declare-fun b!893218 () Bool)

(assert (=> b!893218 (= e!584996 (validRegex!788 (regTwo!5151 r!15766)))))

(declare-fun b!893219 () Bool)

(assert (=> b!893219 (= e!584995 (matchR!857 (regTwo!5151 r!15766) s!10566))))

(assert (= (and d!277545 res!406043) b!893218))

(assert (= (and d!277545 (not res!406042)) b!893219))

(assert (=> d!277545 m!1134625))

(declare-fun m!1134797 () Bool)

(assert (=> d!277545 m!1134797))

(assert (=> d!277545 m!1134795))

(assert (=> b!893218 m!1134631))

(assert (=> b!893219 m!1134623))

(assert (=> b!892744 d!277545))

(declare-fun b!893220 () Bool)

(declare-fun res!406047 () Bool)

(declare-fun e!584998 () Bool)

(assert (=> b!893220 (=> res!406047 e!584998)))

(assert (=> b!893220 (= res!406047 (not ((_ is Concat!4152) (regTwo!5151 r!15766))))))

(declare-fun e!585002 () Bool)

(assert (=> b!893220 (= e!585002 e!584998)))

(declare-fun b!893221 () Bool)

(declare-fun e!585003 () Bool)

(declare-fun call!52919 () Bool)

(assert (=> b!893221 (= e!585003 call!52919)))

(declare-fun b!893222 () Bool)

(declare-fun e!584999 () Bool)

(assert (=> b!893222 (= e!584999 e!585003)))

(declare-fun res!406046 () Bool)

(assert (=> b!893222 (= res!406046 (not (nullable!609 (reg!2648 (regTwo!5151 r!15766)))))))

(assert (=> b!893222 (=> (not res!406046) (not e!585003))))

(declare-fun bm!52914 () Bool)

(declare-fun call!52920 () Bool)

(assert (=> bm!52914 (= call!52920 call!52919)))

(declare-fun b!893223 () Bool)

(declare-fun res!406044 () Bool)

(declare-fun e!585000 () Bool)

(assert (=> b!893223 (=> (not res!406044) (not e!585000))))

(declare-fun call!52921 () Bool)

(assert (=> b!893223 (= res!406044 call!52921)))

(assert (=> b!893223 (= e!585002 e!585000)))

(declare-fun bm!52915 () Bool)

(declare-fun c!144632 () Bool)

(assert (=> bm!52915 (= call!52921 (validRegex!788 (ite c!144632 (regOne!5151 (regTwo!5151 r!15766)) (regOne!5150 (regTwo!5151 r!15766)))))))

(declare-fun b!893224 () Bool)

(assert (=> b!893224 (= e!584999 e!585002)))

(assert (=> b!893224 (= c!144632 ((_ is Union!2319) (regTwo!5151 r!15766)))))

(declare-fun d!277547 () Bool)

(declare-fun res!406045 () Bool)

(declare-fun e!584997 () Bool)

(assert (=> d!277547 (=> res!406045 e!584997)))

(assert (=> d!277547 (= res!406045 ((_ is ElementMatch!2319) (regTwo!5151 r!15766)))))

(assert (=> d!277547 (= (validRegex!788 (regTwo!5151 r!15766)) e!584997)))

(declare-fun b!893225 () Bool)

(declare-fun e!585001 () Bool)

(assert (=> b!893225 (= e!584998 e!585001)))

(declare-fun res!406048 () Bool)

(assert (=> b!893225 (=> (not res!406048) (not e!585001))))

(assert (=> b!893225 (= res!406048 call!52921)))

(declare-fun b!893226 () Bool)

(assert (=> b!893226 (= e!585000 call!52920)))

(declare-fun c!144631 () Bool)

(declare-fun bm!52916 () Bool)

(assert (=> bm!52916 (= call!52919 (validRegex!788 (ite c!144631 (reg!2648 (regTwo!5151 r!15766)) (ite c!144632 (regTwo!5151 (regTwo!5151 r!15766)) (regTwo!5150 (regTwo!5151 r!15766))))))))

(declare-fun b!893227 () Bool)

(assert (=> b!893227 (= e!585001 call!52920)))

(declare-fun b!893228 () Bool)

(assert (=> b!893228 (= e!584997 e!584999)))

(assert (=> b!893228 (= c!144631 ((_ is Star!2319) (regTwo!5151 r!15766)))))

(assert (= (and d!277547 (not res!406045)) b!893228))

(assert (= (and b!893228 c!144631) b!893222))

(assert (= (and b!893228 (not c!144631)) b!893224))

(assert (= (and b!893222 res!406046) b!893221))

(assert (= (and b!893224 c!144632) b!893223))

(assert (= (and b!893224 (not c!144632)) b!893220))

(assert (= (and b!893223 res!406044) b!893226))

(assert (= (and b!893220 (not res!406047)) b!893225))

(assert (= (and b!893225 res!406048) b!893227))

(assert (= (or b!893226 b!893227) bm!52914))

(assert (= (or b!893223 b!893225) bm!52915))

(assert (= (or b!893221 bm!52914) bm!52916))

(declare-fun m!1134799 () Bool)

(assert (=> b!893222 m!1134799))

(declare-fun m!1134801 () Bool)

(assert (=> bm!52915 m!1134801))

(declare-fun m!1134803 () Bool)

(assert (=> bm!52916 m!1134803))

(assert (=> b!892753 d!277547))

(declare-fun b!893229 () Bool)

(declare-fun res!406053 () Bool)

(declare-fun e!585010 () Bool)

(assert (=> b!893229 (=> res!406053 e!585010)))

(declare-fun e!585006 () Bool)

(assert (=> b!893229 (= res!406053 e!585006)))

(declare-fun res!406056 () Bool)

(assert (=> b!893229 (=> (not res!406056) (not e!585006))))

(declare-fun lt!332789 () Bool)

(assert (=> b!893229 (= res!406056 lt!332789)))

(declare-fun b!893230 () Bool)

(declare-fun res!406051 () Bool)

(assert (=> b!893230 (=> res!406051 e!585010)))

(assert (=> b!893230 (= res!406051 (not ((_ is ElementMatch!2319) (Union!2319 lt!332743 lt!332741))))))

(declare-fun e!585008 () Bool)

(assert (=> b!893230 (= e!585008 e!585010)))

(declare-fun b!893231 () Bool)

(assert (=> b!893231 (= e!585008 (not lt!332789))))

(declare-fun b!893232 () Bool)

(declare-fun e!585004 () Bool)

(assert (=> b!893232 (= e!585004 (matchR!857 (derivativeStep!421 (Union!2319 lt!332743 lt!332741) (head!1574 s!10566)) (tail!1136 s!10566)))))

(declare-fun b!893233 () Bool)

(declare-fun e!585005 () Bool)

(declare-fun call!52922 () Bool)

(assert (=> b!893233 (= e!585005 (= lt!332789 call!52922))))

(declare-fun b!893234 () Bool)

(assert (=> b!893234 (= e!585006 (= (head!1574 s!10566) (c!144518 (Union!2319 lt!332743 lt!332741))))))

(declare-fun b!893235 () Bool)

(declare-fun res!406054 () Bool)

(assert (=> b!893235 (=> (not res!406054) (not e!585006))))

(assert (=> b!893235 (= res!406054 (not call!52922))))

(declare-fun b!893236 () Bool)

(declare-fun e!585007 () Bool)

(declare-fun e!585009 () Bool)

(assert (=> b!893236 (= e!585007 e!585009)))

(declare-fun res!406050 () Bool)

(assert (=> b!893236 (=> res!406050 e!585009)))

(assert (=> b!893236 (= res!406050 call!52922)))

(declare-fun d!277549 () Bool)

(assert (=> d!277549 e!585005))

(declare-fun c!144633 () Bool)

(assert (=> d!277549 (= c!144633 ((_ is EmptyExpr!2319) (Union!2319 lt!332743 lt!332741)))))

(assert (=> d!277549 (= lt!332789 e!585004)))

(declare-fun c!144635 () Bool)

(assert (=> d!277549 (= c!144635 (isEmpty!5731 s!10566))))

(assert (=> d!277549 (validRegex!788 (Union!2319 lt!332743 lt!332741))))

(assert (=> d!277549 (= (matchR!857 (Union!2319 lt!332743 lt!332741) s!10566) lt!332789)))

(declare-fun b!893237 () Bool)

(assert (=> b!893237 (= e!585005 e!585008)))

(declare-fun c!144634 () Bool)

(assert (=> b!893237 (= c!144634 ((_ is EmptyLang!2319) (Union!2319 lt!332743 lt!332741)))))

(declare-fun b!893238 () Bool)

(assert (=> b!893238 (= e!585010 e!585007)))

(declare-fun res!406049 () Bool)

(assert (=> b!893238 (=> (not res!406049) (not e!585007))))

(assert (=> b!893238 (= res!406049 (not lt!332789))))

(declare-fun b!893239 () Bool)

(declare-fun res!406055 () Bool)

(assert (=> b!893239 (=> res!406055 e!585009)))

(assert (=> b!893239 (= res!406055 (not (isEmpty!5731 (tail!1136 s!10566))))))

(declare-fun b!893240 () Bool)

(assert (=> b!893240 (= e!585004 (nullable!609 (Union!2319 lt!332743 lt!332741)))))

(declare-fun b!893241 () Bool)

(assert (=> b!893241 (= e!585009 (not (= (head!1574 s!10566) (c!144518 (Union!2319 lt!332743 lt!332741)))))))

(declare-fun b!893242 () Bool)

(declare-fun res!406052 () Bool)

(assert (=> b!893242 (=> (not res!406052) (not e!585006))))

(assert (=> b!893242 (= res!406052 (isEmpty!5731 (tail!1136 s!10566)))))

(declare-fun bm!52917 () Bool)

(assert (=> bm!52917 (= call!52922 (isEmpty!5731 s!10566))))

(assert (= (and d!277549 c!144635) b!893240))

(assert (= (and d!277549 (not c!144635)) b!893232))

(assert (= (and d!277549 c!144633) b!893233))

(assert (= (and d!277549 (not c!144633)) b!893237))

(assert (= (and b!893237 c!144634) b!893231))

(assert (= (and b!893237 (not c!144634)) b!893230))

(assert (= (and b!893230 (not res!406051)) b!893229))

(assert (= (and b!893229 res!406056) b!893235))

(assert (= (and b!893235 res!406054) b!893242))

(assert (= (and b!893242 res!406052) b!893234))

(assert (= (and b!893229 (not res!406053)) b!893238))

(assert (= (and b!893238 res!406049) b!893236))

(assert (= (and b!893236 (not res!406050)) b!893239))

(assert (= (and b!893239 (not res!406055)) b!893241))

(assert (= (or b!893233 b!893235 b!893236) bm!52917))

(declare-fun m!1134805 () Bool)

(assert (=> b!893240 m!1134805))

(assert (=> b!893232 m!1134647))

(assert (=> b!893232 m!1134647))

(declare-fun m!1134807 () Bool)

(assert (=> b!893232 m!1134807))

(assert (=> b!893232 m!1134651))

(assert (=> b!893232 m!1134807))

(assert (=> b!893232 m!1134651))

(declare-fun m!1134809 () Bool)

(assert (=> b!893232 m!1134809))

(assert (=> b!893241 m!1134647))

(assert (=> d!277549 m!1134655))

(declare-fun m!1134811 () Bool)

(assert (=> d!277549 m!1134811))

(assert (=> b!893242 m!1134651))

(assert (=> b!893242 m!1134651))

(assert (=> b!893242 m!1134659))

(assert (=> b!893234 m!1134647))

(assert (=> b!893239 m!1134651))

(assert (=> b!893239 m!1134651))

(assert (=> b!893239 m!1134659))

(assert (=> bm!52917 m!1134655))

(assert (=> b!892753 d!277549))

(declare-fun d!277551 () Bool)

(assert (=> d!277551 (matchR!857 (Union!2319 lt!332743 lt!332741) s!10566)))

(declare-fun lt!332792 () Unit!14217)

(declare-fun choose!5348 (Regex!2319 Regex!2319 List!9549) Unit!14217)

(assert (=> d!277551 (= lt!332792 (choose!5348 lt!332743 lt!332741 s!10566))))

(declare-fun e!585013 () Bool)

(assert (=> d!277551 e!585013))

(declare-fun res!406059 () Bool)

(assert (=> d!277551 (=> (not res!406059) (not e!585013))))

(assert (=> d!277551 (= res!406059 (validRegex!788 lt!332743))))

(assert (=> d!277551 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!6 lt!332743 lt!332741 s!10566) lt!332792)))

(declare-fun b!893245 () Bool)

(assert (=> b!893245 (= e!585013 (validRegex!788 lt!332741))))

(assert (= (and d!277551 res!406059) b!893245))

(assert (=> d!277551 m!1134633))

(declare-fun m!1134813 () Bool)

(assert (=> d!277551 m!1134813))

(assert (=> d!277551 m!1134657))

(declare-fun m!1134815 () Bool)

(assert (=> b!893245 m!1134815))

(assert (=> b!892753 d!277551))

(declare-fun b!893246 () Bool)

(declare-fun e!585019 () Regex!2319)

(declare-fun call!52927 () Regex!2319)

(assert (=> b!893246 (= e!585019 (Star!2319 call!52927))))

(declare-fun b!893247 () Bool)

(declare-fun e!585016 () Regex!2319)

(declare-fun call!52924 () Regex!2319)

(assert (=> b!893247 (= e!585016 (Union!2319 call!52924 call!52927))))

(declare-fun b!893248 () Bool)

(declare-fun e!585017 () Regex!2319)

(declare-fun call!52926 () Regex!2319)

(assert (=> b!893248 (= e!585017 call!52926)))

(declare-fun b!893249 () Bool)

(assert (=> b!893249 (= e!585019 (regOne!5151 r!15766))))

(declare-fun c!144639 () Bool)

(declare-fun bm!52918 () Bool)

(declare-fun c!144637 () Bool)

(declare-fun call!52923 () Regex!2319)

(assert (=> bm!52918 (= call!52923 (removeUselessConcat!54 (ite (or c!144637 c!144639) (regOne!5150 (regOne!5151 r!15766)) (regOne!5151 (regOne!5151 r!15766)))))))

(declare-fun bm!52919 () Bool)

(declare-fun call!52925 () Regex!2319)

(assert (=> bm!52919 (= call!52927 call!52925)))

(declare-fun bm!52920 () Bool)

(assert (=> bm!52920 (= call!52924 call!52923)))

(declare-fun b!893250 () Bool)

(declare-fun e!585015 () Regex!2319)

(assert (=> b!893250 (= e!585017 e!585015)))

(assert (=> b!893250 (= c!144637 (and ((_ is Concat!4152) (regOne!5151 r!15766)) ((_ is EmptyExpr!2319) (regTwo!5150 (regOne!5151 r!15766)))))))

(declare-fun b!893251 () Bool)

(assert (=> b!893251 (= c!144639 ((_ is Concat!4152) (regOne!5151 r!15766)))))

(declare-fun e!585014 () Regex!2319)

(assert (=> b!893251 (= e!585015 e!585014)))

(declare-fun d!277553 () Bool)

(declare-fun e!585018 () Bool)

(assert (=> d!277553 e!585018))

(declare-fun res!406060 () Bool)

(assert (=> d!277553 (=> (not res!406060) (not e!585018))))

(declare-fun lt!332793 () Regex!2319)

(assert (=> d!277553 (= res!406060 (validRegex!788 lt!332793))))

(assert (=> d!277553 (= lt!332793 e!585017)))

(declare-fun c!144638 () Bool)

(assert (=> d!277553 (= c!144638 (and ((_ is Concat!4152) (regOne!5151 r!15766)) ((_ is EmptyExpr!2319) (regOne!5150 (regOne!5151 r!15766)))))))

(assert (=> d!277553 (validRegex!788 (regOne!5151 r!15766))))

(assert (=> d!277553 (= (removeUselessConcat!54 (regOne!5151 r!15766)) lt!332793)))

(declare-fun b!893252 () Bool)

(declare-fun c!144636 () Bool)

(assert (=> b!893252 (= c!144636 ((_ is Star!2319) (regOne!5151 r!15766)))))

(assert (=> b!893252 (= e!585016 e!585019)))

(declare-fun b!893253 () Bool)

(assert (=> b!893253 (= e!585014 (Concat!4152 call!52924 call!52925))))

(declare-fun b!893254 () Bool)

(assert (=> b!893254 (= e!585015 call!52923)))

(declare-fun b!893255 () Bool)

(assert (=> b!893255 (= e!585018 (= (nullable!609 lt!332793) (nullable!609 (regOne!5151 r!15766))))))

(declare-fun b!893256 () Bool)

(assert (=> b!893256 (= e!585014 e!585016)))

(declare-fun c!144640 () Bool)

(assert (=> b!893256 (= c!144640 ((_ is Union!2319) (regOne!5151 r!15766)))))

(declare-fun bm!52921 () Bool)

(assert (=> bm!52921 (= call!52926 (removeUselessConcat!54 (ite (or c!144638 c!144639) (regTwo!5150 (regOne!5151 r!15766)) (ite c!144640 (regTwo!5151 (regOne!5151 r!15766)) (reg!2648 (regOne!5151 r!15766))))))))

(declare-fun bm!52922 () Bool)

(assert (=> bm!52922 (= call!52925 call!52926)))

(assert (= (and d!277553 c!144638) b!893248))

(assert (= (and d!277553 (not c!144638)) b!893250))

(assert (= (and b!893250 c!144637) b!893254))

(assert (= (and b!893250 (not c!144637)) b!893251))

(assert (= (and b!893251 c!144639) b!893253))

(assert (= (and b!893251 (not c!144639)) b!893256))

(assert (= (and b!893256 c!144640) b!893247))

(assert (= (and b!893256 (not c!144640)) b!893252))

(assert (= (and b!893252 c!144636) b!893246))

(assert (= (and b!893252 (not c!144636)) b!893249))

(assert (= (or b!893247 b!893246) bm!52919))

(assert (= (or b!893253 bm!52919) bm!52922))

(assert (= (or b!893253 b!893247) bm!52920))

(assert (= (or b!893254 bm!52920) bm!52918))

(assert (= (or b!893248 bm!52922) bm!52921))

(assert (= (and d!277553 res!406060) b!893255))

(declare-fun m!1134817 () Bool)

(assert (=> bm!52918 m!1134817))

(declare-fun m!1134819 () Bool)

(assert (=> d!277553 m!1134819))

(assert (=> d!277553 m!1134795))

(declare-fun m!1134821 () Bool)

(assert (=> b!893255 m!1134821))

(assert (=> b!893255 m!1134789))

(declare-fun m!1134823 () Bool)

(assert (=> bm!52921 m!1134823))

(assert (=> b!892753 d!277553))

(assert (=> b!892748 d!277503))

(declare-fun b!893270 () Bool)

(declare-fun e!585022 () Bool)

(declare-fun tp!280915 () Bool)

(declare-fun tp!280913 () Bool)

(assert (=> b!893270 (= e!585022 (and tp!280915 tp!280913))))

(declare-fun b!893269 () Bool)

(declare-fun tp!280916 () Bool)

(assert (=> b!893269 (= e!585022 tp!280916)))

(declare-fun b!893268 () Bool)

(declare-fun tp!280917 () Bool)

(declare-fun tp!280914 () Bool)

(assert (=> b!893268 (= e!585022 (and tp!280917 tp!280914))))

(declare-fun b!893267 () Bool)

(assert (=> b!893267 (= e!585022 tp_is_empty!4281)))

(assert (=> b!892746 (= tp!280863 e!585022)))

(assert (= (and b!892746 ((_ is ElementMatch!2319) (regOne!5151 r!15766))) b!893267))

(assert (= (and b!892746 ((_ is Concat!4152) (regOne!5151 r!15766))) b!893268))

(assert (= (and b!892746 ((_ is Star!2319) (regOne!5151 r!15766))) b!893269))

(assert (= (and b!892746 ((_ is Union!2319) (regOne!5151 r!15766))) b!893270))

(declare-fun b!893274 () Bool)

(declare-fun e!585023 () Bool)

(declare-fun tp!280920 () Bool)

(declare-fun tp!280918 () Bool)

(assert (=> b!893274 (= e!585023 (and tp!280920 tp!280918))))

(declare-fun b!893273 () Bool)

(declare-fun tp!280921 () Bool)

(assert (=> b!893273 (= e!585023 tp!280921)))

(declare-fun b!893272 () Bool)

(declare-fun tp!280922 () Bool)

(declare-fun tp!280919 () Bool)

(assert (=> b!893272 (= e!585023 (and tp!280922 tp!280919))))

(declare-fun b!893271 () Bool)

(assert (=> b!893271 (= e!585023 tp_is_empty!4281)))

(assert (=> b!892746 (= tp!280860 e!585023)))

(assert (= (and b!892746 ((_ is ElementMatch!2319) (regTwo!5151 r!15766))) b!893271))

(assert (= (and b!892746 ((_ is Concat!4152) (regTwo!5151 r!15766))) b!893272))

(assert (= (and b!892746 ((_ is Star!2319) (regTwo!5151 r!15766))) b!893273))

(assert (= (and b!892746 ((_ is Union!2319) (regTwo!5151 r!15766))) b!893274))

(declare-fun b!893278 () Bool)

(declare-fun e!585024 () Bool)

(declare-fun tp!280925 () Bool)

(declare-fun tp!280923 () Bool)

(assert (=> b!893278 (= e!585024 (and tp!280925 tp!280923))))

(declare-fun b!893277 () Bool)

(declare-fun tp!280926 () Bool)

(assert (=> b!893277 (= e!585024 tp!280926)))

(declare-fun b!893276 () Bool)

(declare-fun tp!280927 () Bool)

(declare-fun tp!280924 () Bool)

(assert (=> b!893276 (= e!585024 (and tp!280927 tp!280924))))

(declare-fun b!893275 () Bool)

(assert (=> b!893275 (= e!585024 tp_is_empty!4281)))

(assert (=> b!892752 (= tp!280862 e!585024)))

(assert (= (and b!892752 ((_ is ElementMatch!2319) (reg!2648 r!15766))) b!893275))

(assert (= (and b!892752 ((_ is Concat!4152) (reg!2648 r!15766))) b!893276))

(assert (= (and b!892752 ((_ is Star!2319) (reg!2648 r!15766))) b!893277))

(assert (= (and b!892752 ((_ is Union!2319) (reg!2648 r!15766))) b!893278))

(declare-fun b!893283 () Bool)

(declare-fun e!585027 () Bool)

(declare-fun tp!280930 () Bool)

(assert (=> b!893283 (= e!585027 (and tp_is_empty!4281 tp!280930))))

(assert (=> b!892750 (= tp!280861 e!585027)))

(assert (= (and b!892750 ((_ is Cons!9533) (t!100595 s!10566))) b!893283))

(declare-fun b!893287 () Bool)

(declare-fun e!585028 () Bool)

(declare-fun tp!280933 () Bool)

(declare-fun tp!280931 () Bool)

(assert (=> b!893287 (= e!585028 (and tp!280933 tp!280931))))

(declare-fun b!893286 () Bool)

(declare-fun tp!280934 () Bool)

(assert (=> b!893286 (= e!585028 tp!280934)))

(declare-fun b!893285 () Bool)

(declare-fun tp!280935 () Bool)

(declare-fun tp!280932 () Bool)

(assert (=> b!893285 (= e!585028 (and tp!280935 tp!280932))))

(declare-fun b!893284 () Bool)

(assert (=> b!893284 (= e!585028 tp_is_empty!4281)))

(assert (=> b!892745 (= tp!280859 e!585028)))

(assert (= (and b!892745 ((_ is ElementMatch!2319) (regOne!5150 r!15766))) b!893284))

(assert (= (and b!892745 ((_ is Concat!4152) (regOne!5150 r!15766))) b!893285))

(assert (= (and b!892745 ((_ is Star!2319) (regOne!5150 r!15766))) b!893286))

(assert (= (and b!892745 ((_ is Union!2319) (regOne!5150 r!15766))) b!893287))

(declare-fun b!893291 () Bool)

(declare-fun e!585029 () Bool)

(declare-fun tp!280938 () Bool)

(declare-fun tp!280936 () Bool)

(assert (=> b!893291 (= e!585029 (and tp!280938 tp!280936))))

(declare-fun b!893290 () Bool)

(declare-fun tp!280939 () Bool)

(assert (=> b!893290 (= e!585029 tp!280939)))

(declare-fun b!893289 () Bool)

(declare-fun tp!280940 () Bool)

(declare-fun tp!280937 () Bool)

(assert (=> b!893289 (= e!585029 (and tp!280940 tp!280937))))

(declare-fun b!893288 () Bool)

(assert (=> b!893288 (= e!585029 tp_is_empty!4281)))

(assert (=> b!892745 (= tp!280864 e!585029)))

(assert (= (and b!892745 ((_ is ElementMatch!2319) (regTwo!5150 r!15766))) b!893288))

(assert (= (and b!892745 ((_ is Concat!4152) (regTwo!5150 r!15766))) b!893289))

(assert (= (and b!892745 ((_ is Star!2319) (regTwo!5150 r!15766))) b!893290))

(assert (= (and b!892745 ((_ is Union!2319) (regTwo!5150 r!15766))) b!893291))

(check-sat (not b!893210) (not b!892955) (not b!893255) (not b!893196) (not d!277539) (not bm!52873) (not b!893276) (not b!893285) (not b!893290) (not bm!52836) (not b!892835) (not b!893189) (not bm!52915) (not b!893191) (not bm!52872) (not b!892795) (not d!277545) (not b!893240) (not b!893269) (not b!893197) (not b!893270) (not bm!52913) (not b!893245) (not b!893211) (not b!893273) (not b!893234) (not bm!52910) (not bm!52853) (not b!893272) (not bm!52916) (not b!893203) (not d!277541) (not b!893278) (not b!893274) (not d!277503) (not b!893277) (not bm!52917) (not b!893199) (not d!277551) (not b!892836) (not b!892901) (not b!893219) (not b!893205) (not bm!52921) (not b!893180) (not d!277543) (not b!893198) (not b!893268) (not b!892834) (not b!892837) (not b!893241) (not d!277553) (not b!893287) (not b!893213) (not b!893212) (not b!892802) (not b!892801) (not b!893232) (not d!277505) (not b!892829) (not bm!52850) (not d!277511) (not d!277549) (not b!893218) (not b!892803) (not b!892793) (not b!893242) (not b!893283) (not b!893181) (not b!893239) (not bm!52918) (not b!893222) (not bm!52835) (not bm!52911) (not b!893291) (not b!893289) tp_is_empty!4281 (not b!892800) (not b!893286) (not bm!52912) (not d!277499) (not b!892827))
(check-sat)
